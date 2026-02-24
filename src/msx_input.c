#include "msx_input.h"

#include "usb_hid.h"
#include "msx_input_backend.h"

/* Reference for keyboard matrix/keycodes and joystick bits:
 * - third_party/fmsx/fMSX/MSX.h (KeyState[], KBD_*, JST_*)
 */
#include "MSX.h"

/*
 * MSX input aggregation layer.
 *
 * Purpose:
 * - decouple fMSX callbacks (Joystick/keyboard matrix) from transport (USB HID)
 * - provide a stable per-frame polling hook
 * - expose a raw HID submission API for future Circle USB/HID bridge integration
 */

#define MSX_INPUT_MAX_ACTIVE_KEYS 24u

static uint16_t g_joystick_bits;
static uint8_t g_active_keys[MSX_INPUT_MAX_ACTIVE_KEYS];
static uint8_t g_active_key_count;

static usb_hid_keyboard_report_t g_pending_report;
static uint32_t g_pending_seq;
static uint32_t g_applied_seq;
static uint32_t g_loop_stage_code;
static uint32_t g_loop_counter;
static uint8_t g_runtime_enabled;

static int hid_has_key(const uint8_t keys[6], uint8_t code)
{
    for (unsigned i = 0; i < 6u; ++i) {
        if (keys[i] == code) {
            return 1;
        }
    }
    return 0;
}

static uint16_t hid_report_to_joystick_bits(uint8_t modifiers, const uint8_t keys[6])
{
    uint16_t j = 0u;

    /* arrows or WASD */
    if (hid_has_key(keys, 0x52u) || hid_has_key(keys, 0x1Au)) j |= JST_UP;    /* Up / W */
    if (hid_has_key(keys, 0x51u) || hid_has_key(keys, 0x16u)) j |= JST_DOWN;  /* Down / S */
    if (hid_has_key(keys, 0x50u) || hid_has_key(keys, 0x04u)) j |= JST_LEFT;  /* Left / A */
    if (hid_has_key(keys, 0x4Fu) || hid_has_key(keys, 0x07u)) j |= JST_RIGHT; /* Right / D */

    /* Fire buttons */
    if (hid_has_key(keys, 0x2Cu) || hid_has_key(keys, 0x1Du) || (modifiers & 0x11u)) j |= JST_FIREA; /* Space/Z/Ctrl */
    if (hid_has_key(keys, 0x1Bu) || hid_has_key(keys, 0x28u) || (modifiers & 0x22u)) j |= JST_FIREB; /* X/Enter/Shift */

    return j;
}

static int hid_usage_to_msx_key(uint8_t usage)
{
    if (usage >= 0x04u && usage <= 0x1Du) {
        return 'a' + (int)(usage - 0x04u);
    }

    switch (usage) {
    case 0x1Eu: return '1';
    case 0x1Fu: return '2';
    case 0x20u: return '3';
    case 0x21u: return '4';
    case 0x22u: return '5';
    case 0x23u: return '6';
    case 0x24u: return '7';
    case 0x25u: return '8';
    case 0x26u: return '9';
    case 0x27u: return '0';

    case 0x28u: return KBD_ENTER;
    case 0x29u: return KBD_ESCAPE;
    case 0x2Au: return KBD_BS;
    case 0x2Bu: return KBD_TAB;
    case 0x2Cu: return KBD_SPACE;
    case 0x2Du: return '-';
    case 0x2Eu: return '=';
    case 0x2Fu: return '[';
    case 0x30u: return ']';
    case 0x31u: return '\\';
    case 0x33u: return ';';
    case 0x34u: return '\'';
    case 0x36u: return ',';
    case 0x37u: return '.';
    case 0x38u: return '/';
    case 0x39u: return KBD_CAPSLOCK;

    case 0x3Au: return KBD_F1;
    case 0x3Bu: return KBD_F2;
    case 0x3Cu: return KBD_F3;
    case 0x3Du: return KBD_F4;
    case 0x3Eu: return KBD_F5;

    case 0x49u: return KBD_INSERT;
    case 0x4Au: return KBD_HOME;
    case 0x4Cu: return KBD_DELETE;
    case 0x4Fu: return KBD_RIGHT;
    case 0x50u: return KBD_LEFT;
    case 0x51u: return KBD_DOWN;
    case 0x52u: return KBD_UP;

    case 0x53u: return KBD_NUMPAD0;
    case 0x54u: return KBD_NUMPAD1;
    case 0x55u: return KBD_NUMPAD2;
    case 0x56u: return KBD_NUMPAD3;
    case 0x57u: return KBD_NUMPAD4;
    case 0x58u: return KBD_NUMPAD5;
    case 0x59u: return KBD_NUMPAD6;
    case 0x5Au: return KBD_NUMPAD7;
    case 0x5Bu: return KBD_NUMPAD8;
    case 0x5Cu: return KBD_NUMPAD9;
    case 0x62u: return KBD_NUMPAD0; /* keypad 0 on some receivers can alias oddly; keep minimal */

    default:
        return -1;
    }
}

static void push_unique_key(uint8_t *keys, uint8_t *count, uint8_t k)
{
    if (!keys || !count) {
        return;
    }
    for (unsigned i = 0; i < *count; ++i) {
        if (keys[i] == k) {
            return;
        }
    }
    if (*count < MSX_INPUT_MAX_ACTIVE_KEYS) {
        keys[*count] = k;
        *count = (uint8_t)(*count + 1u);
    }
}

static void build_msx_key_list(uint8_t modifiers, const uint8_t hid_keys[6], uint8_t *out_keys, uint8_t *out_count)
{
    uint8_t count = 0u;

    if (!out_keys || !out_count) {
        return;
    }

    if (modifiers & 0x22u) { /* left/right shift */
        push_unique_key(out_keys, &count, (uint8_t)KBD_SHIFT);
    }
    if (modifiers & 0x11u) { /* left/right ctrl */
        push_unique_key(out_keys, &count, (uint8_t)KBD_CONTROL);
    }
    if (modifiers & 0x44u) { /* left/right alt -> GRAPH */
        push_unique_key(out_keys, &count, (uint8_t)KBD_GRAPH);
    }

    for (unsigned i = 0; i < 6u; ++i) {
        int mk;
        uint8_t usage = hid_keys[i];
        if (usage == 0u || usage == 1u) { /* empty / error roll-over */
            continue;
        }
        mk = hid_usage_to_msx_key(usage);
        if (mk >= 0 && mk <= 136) {
            push_unique_key(out_keys, &count, (uint8_t)mk);
        }
    }

    *out_count = count;
}

static void apply_keyboard_state_from_report(uint8_t modifiers, const uint8_t hid_keys[6])
{
    uint8_t new_keys[MSX_INPUT_MAX_ACTIVE_KEYS];
    uint8_t new_count = 0u;

    build_msx_key_list(modifiers, hid_keys, new_keys, &new_count);

    /* Release old keys first, then set new keys. */
    for (unsigned i = 0; i < g_active_key_count; ++i) {
        KBD_RES(g_active_keys[i]);
    }

    for (unsigned i = 0; i < new_count; ++i) {
        KBD_SET(new_keys[i]);
    }

    for (unsigned i = 0; i < new_count; ++i) {
        g_active_keys[i] = new_keys[i];
    }
    g_active_key_count = new_count;

    g_joystick_bits = hid_report_to_joystick_bits(modifiers, hid_keys);
}

void msx_input_submit_hid_boot_report(uint8_t modifiers, const uint8_t keys[6])
{
    g_pending_report.modifiers = modifiers;
    for (unsigned i = 0; i < 6u; ++i) {
        g_pending_report.keys[i] = keys ? keys[i] : 0u;
    }
    ++g_pending_seq;
}

void msx_input_get_debug_min(msx_input_debug_t *out_dbg)
{
    if (!out_dbg) return;
    out_dbg->joystick_bits = g_joystick_bits;
    out_dbg->active_key_count = g_active_key_count;
    out_dbg->pending_modifiers = g_pending_report.modifiers;
    out_dbg->pending_key0 = g_pending_report.keys[0];
    out_dbg->reserved0 = 0u;
    out_dbg->pending_seq = g_pending_seq;
    out_dbg->applied_seq = g_applied_seq;
    out_dbg->provider_ready = 0u;
    out_dbg->provider_failed = 0u;
    out_dbg->keyboard_bound = 0u;
    out_dbg->reserved1 = 0u;
    out_dbg->bridge_key0 = 0u;
    out_dbg->bridge_modifiers = 0u;
    out_dbg->bridge_joystick_bits = 0u;
    out_dbg->bridge_sequence = 0u;
    out_dbg->provider_polls = 0u;
    out_dbg->provider_stage_code = 0u;
    out_dbg->backend_polls = 0u;
    out_dbg->loop_stage_code = g_loop_stage_code;
    out_dbg->loop_counter = g_loop_counter;
}

void msx_input_get_debug(msx_input_debug_t *out_dbg)
{
    msx_input_backend_debug_t bd;
    if (!out_dbg) return;
    msx_input_backend_get_debug(&bd);
    out_dbg->joystick_bits = g_joystick_bits;
    out_dbg->active_key_count = g_active_key_count;
    out_dbg->pending_modifiers = g_pending_report.modifiers;
    out_dbg->pending_key0 = g_pending_report.keys[0];
    out_dbg->reserved0 = 0u;
    out_dbg->pending_seq = g_pending_seq;
    out_dbg->applied_seq = g_applied_seq;
    out_dbg->provider_ready = bd.provider_ready;
    out_dbg->provider_failed = bd.provider_failed;
    out_dbg->keyboard_bound = bd.keyboard_bound;
    out_dbg->reserved1 = 0u;
    out_dbg->bridge_key0 = bd.key0;
    out_dbg->bridge_modifiers = bd.modifiers;
    out_dbg->bridge_joystick_bits = bd.joystick_bits;
    out_dbg->bridge_sequence = bd.bridge_sequence;
    out_dbg->provider_polls = bd.provider_polls;
    out_dbg->provider_stage_code = bd.provider_stage_code;
    out_dbg->backend_polls = bd.backend_polls;
    out_dbg->loop_stage_code = g_loop_stage_code;
    out_dbg->loop_counter = g_loop_counter;
}

void msx_input_init(void)
{
    g_joystick_bits = 0u;
    g_active_key_count = 0u;
    g_pending_report.modifiers = 0u;
    for (unsigned i = 0; i < 6u; ++i) {
        g_active_keys[i] = 0u;
        g_pending_report.keys[i] = 0u;
    }
    g_pending_seq = 0u;
    g_applied_seq = 0u;
    g_loop_stage_code = 0u;
    g_loop_counter = 0u;
#if defined(MSXBARE_INPUT_BACKEND_CIRCLE) && defined(MSXBARE_CIRCLE_INPUT_RUNTIME)
    g_runtime_enabled = 0u;
#else
    g_runtime_enabled = 1u;
#endif

    msx_input_backend_init();
}

void msx_input_set_runtime_enabled(int enabled)
{
    g_runtime_enabled = enabled ? 1u : 0u;
}

int msx_input_runtime_enabled(void)
{
    return g_runtime_enabled ? 1 : 0;
}

void msx_input_set_loop_debug(uint32_t stage_code, uint32_t counter)
{
    g_loop_stage_code = stage_code;
    g_loop_counter = counter;
}

uint32_t msx_input_debug_loop_stage(void) { return g_loop_stage_code; }
uint32_t msx_input_debug_loop_counter(void) { return g_loop_counter; }
uint32_t msx_input_debug_pending_seq(void) { return g_pending_seq; }
uint32_t msx_input_debug_applied_seq(void) { return g_applied_seq; }
uint16_t msx_input_debug_joystick_bits(void) { return g_joystick_bits; }

void msx_input_poll(void)
{
    usb_hid_keyboard_report_t report;

    if (!g_runtime_enabled) {
        return;
    }

    msx_input_backend_poll();

    if (msx_input_backend_read_hid_boot_report(&report)) {
        msx_input_submit_hid_boot_report(report.modifiers, report.keys);
    }

    if (g_applied_seq != g_pending_seq) {
        apply_keyboard_state_from_report(g_pending_report.modifiers, g_pending_report.keys);
        g_applied_seq = g_pending_seq;
    }

    /* TODO(M1.2):
     * - map gamepad HID to joystick #2 / optional #1 profile
     * - expose more MSX-specific keys (STOP/SELECT/COUNTRY) and repeat policy
     */
}

uint16_t msx_input_joystick_bits(void)
{
    return g_joystick_bits;
}
