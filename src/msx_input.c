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
