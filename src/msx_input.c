#include "msx_input.h"

#include "usb_hid.h"
#include "usb_host.h"

/*
 * MSX input aggregation layer.
 *
 * Purpose:
 * - decouple fMSX callbacks (Joystick/keyboard matrix) from transport (USB HID)
 * - provide a stable per-frame polling hook
 *
 * Current phase (M1.2 start):
 * - plumbing only; returns neutral input
 */

static uint16_t g_joystick_bits;
static int g_runtime_enabled = 1;
static unsigned g_loop_stage;
static unsigned g_loop_counter;

void msx_input_init(void)
{
    g_joystick_bits = 0u;
    usb_host_init();
    usb_hid_init();
}

void msx_input_poll(void)
{
    usb_host_poll();
    usb_hid_poll();

    /* TODO(M1.2):
     * - map HID keyboard/gamepad to MSX keyboard matrix and joystick bits
     * - expose modifiers (Shift/Ctrl/Graph) and autorepeat policy
     */
}

uint16_t msx_input_joystick_bits(void)
{
    return g_joystick_bits;
}

uint16_t msx_input_debug_joystick_bits(void)
{
    return g_joystick_bits;
}

void msx_input_set_runtime_enabled(int enabled)
{
    g_runtime_enabled = enabled ? 1 : 0;
    (void)g_runtime_enabled;
}

int msx_input_runtime_enabled(void)
{
    return g_runtime_enabled;
}

void msx_input_set_loop_debug(unsigned stage, unsigned frame_mod)
{
    g_loop_stage = stage;
    g_loop_counter = frame_mod;
}

unsigned msx_input_debug_loop_stage(void) { return g_loop_stage; }
unsigned msx_input_debug_loop_counter(void) { return g_loop_counter; }
unsigned msx_input_debug_pending_seq(void) { return 0u; }
unsigned msx_input_debug_applied_seq(void) { return 0u; }
