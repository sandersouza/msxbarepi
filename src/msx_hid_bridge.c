#include "msx_hid_bridge.h"

/* fMSX-compatible joystick bit layout (reference: third_party/fmsx/fMSX/MSX.h) */
#define JST_UP      0x01u
#define JST_DOWN    0x02u
#define JST_LEFT    0x04u
#define JST_RIGHT   0x08u
#define JST_FIREA   0x10u
#define JST_FIREB   0x20u

static msx_hid_bridge_state_t g_state;

static int has_key(const uint8_t keys[6], uint8_t code)
{
    for (unsigned i = 0; i < 6u; ++i) {
        if (keys[i] == code) {
            return 1;
        }
    }
    return 0;
}

static uint16_t map_joystick_bits(uint8_t modifiers, const uint8_t keys[6])
{
    uint16_t j = 0u;

    if (has_key(keys, 0x52u) || has_key(keys, 0x1Au)) j |= JST_UP;    /* Up / W */
    if (has_key(keys, 0x51u) || has_key(keys, 0x16u)) j |= JST_DOWN;  /* Down / S */
    if (has_key(keys, 0x50u) || has_key(keys, 0x04u)) j |= JST_LEFT;  /* Left / A */
    if (has_key(keys, 0x4Fu) || has_key(keys, 0x07u)) j |= JST_RIGHT; /* Right / D */

    if (has_key(keys, 0x2Cu) || has_key(keys, 0x1Du) || (modifiers & 0x11u)) j |= JST_FIREA; /* Space/Z/Ctrl */
    if (has_key(keys, 0x1Bu) || has_key(keys, 0x28u) || (modifiers & 0x22u)) j |= JST_FIREB; /* X/Enter/Shift */

    return j;
}

void msx_hid_bridge_init(void)
{
    g_state.modifiers = 0u;
    for (unsigned i = 0; i < 6u; ++i) {
        g_state.keys[i] = 0u;
    }
    g_state.joystick_bits = 0u;
    g_state.sequence = 0u;
}

void msx_hid_bridge_update_raw(uint8_t modifiers, const uint8_t keys[6])
{
    g_state.modifiers = modifiers;
    for (unsigned i = 0; i < 6u; ++i) {
        g_state.keys[i] = keys ? keys[i] : 0u;
    }
    g_state.joystick_bits = map_joystick_bits(modifiers, g_state.keys);
    ++g_state.sequence;
}

void msx_hid_bridge_get_state(msx_hid_bridge_state_t *out_state)
{
    if (!out_state) {
        return;
    }

    out_state->modifiers = g_state.modifiers;
    for (unsigned i = 0; i < 6u; ++i) {
        out_state->keys[i] = g_state.keys[i];
    }
    out_state->joystick_bits = g_state.joystick_bits;
    out_state->sequence = g_state.sequence;
}
