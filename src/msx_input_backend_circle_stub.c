#include "msx_input_backend.h"
#include "msx_hid_bridge.h"
#include "circle_input_provider.h"

/* Circle-backed input backend (bridge transport side).
 * The Circle runtime provider feeds msx_hid_bridge via raw HID callbacks.
 */

static uint32_t g_last_seq;
static uint32_t g_poll_counter;
static uint32_t g_delay_counter;
static uint32_t g_provider_calls;

void msx_input_backend_init(void)
{
    g_last_seq = 0u;
    g_poll_counter = 0u;
    g_delay_counter = 0u;
    g_provider_calls = 0u;
    msx_hid_bridge_init();
#ifdef MSXBARE_CIRCLE_INPUT_RUNTIME
    /* Lazy init in poll() to keep boot path short and isolate failures. */
#else
    /* No runtime provider linked in this build (bridge remains injectable externally). */
#endif
}

void msx_input_backend_poll(void)
{
    ++g_poll_counter;
#ifdef MSXBARE_CIRCLE_INPUT_RUNTIME
#ifndef MSXBARE_CIRCLE_INPUT_RUNTIME_DELAY_POLLS
#define MSXBARE_CIRCLE_INPUT_RUNTIME_DELAY_POLLS 0u
#endif
#ifndef MSXBARE_CIRCLE_INPUT_RUNTIME_POLL_DIV
#define MSXBARE_CIRCLE_INPUT_RUNTIME_POLL_DIV 1u
#endif
    if (g_delay_counter < (uint32_t)MSXBARE_CIRCLE_INPUT_RUNTIME_DELAY_POLLS) {
        ++g_delay_counter;
        return;
    }
    if ((g_provider_calls % (uint32_t)MSXBARE_CIRCLE_INPUT_RUNTIME_POLL_DIV) == 0u) {
        circle_input_provider_poll();
    }
    ++g_provider_calls;
#endif
}

int msx_input_backend_read_hid_boot_report(usb_hid_keyboard_report_t *out_report)
{
    msx_hid_bridge_state_t st;

    if (!out_report) {
        return 0;
    }

    msx_hid_bridge_get_state(&st);
    if (st.sequence == g_last_seq) {
        return 0;
    }

    out_report->modifiers = st.modifiers;
    for (unsigned i = 0; i < 6u; ++i) {
        out_report->keys[i] = st.keys[i];
    }
    g_last_seq = st.sequence;
    return 1;
}

void msx_input_backend_get_debug(msx_input_backend_debug_t *out_dbg)
{
    msx_hid_bridge_state_t st;
    circle_input_provider_debug_t pd;
    if (!out_dbg) return;
    msx_hid_bridge_get_state(&st);
    circle_input_provider_get_debug(&pd);
    out_dbg->provider_ready = (uint8_t)(pd.ready ? 1u : 0u);
    out_dbg->provider_failed = (uint8_t)(pd.failed ? 1u : 0u);
    out_dbg->keyboard_bound = (uint8_t)(pd.kbd_bound ? 1u : 0u);
    out_dbg->reserved0 = 0u;
    out_dbg->key0 = st.keys[0];
    out_dbg->modifiers = st.modifiers;
    out_dbg->joystick_bits = st.joystick_bits;
    out_dbg->bridge_sequence = st.sequence;
    out_dbg->provider_polls = pd.poll_count;
    out_dbg->provider_stage_code = pd.stage_code;
    out_dbg->backend_polls = g_poll_counter;
}

uint32_t msx_input_backend_debug_backend_polls(void)
{
    return g_poll_counter;
}
