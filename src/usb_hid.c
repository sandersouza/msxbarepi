#include "usb_hid.h"

/*
 * HID scaffold for M1.2.
 *
 * Reference sources (Circle, conceptual):
 * - third_party/circle/include/circle/usb/usbhid.h
 * - third_party/circle/include/circle/usb/usbhiddevice.h
 * - third_party/circle/include/circle/usb/usbkeyboard.h
 * - third_party/circle/lib/usb/usbhiddevice.cpp
 * - third_party/circle/lib/usb/usbkeyboard.cpp
 *
 * Current phase: parser queue/report plumbing only (stub).
 */

static usb_hid_keyboard_report_t g_last_report;
static uint8_t g_has_report;

void usb_hid_init(void)
{
    g_last_report.modifiers = 0u;
    for (unsigned i = 0; i < 6u; ++i) {
        g_last_report.keys[i] = 0u;
    }
    g_has_report = 0u;
}

void usb_hid_poll(void)
{
    /* TODO(M1.2): consume interrupt IN transfers and decode HID boot reports. */
}

int usb_hid_keyboard_has_report(void)
{
    return g_has_report ? 1 : 0;
}

int usb_hid_keyboard_read_report(usb_hid_keyboard_report_t *out_report)
{
    if (!g_has_report || !out_report) {
        return 0;
    }
    *out_report = g_last_report;
    g_has_report = 0u;
    return 1;
}
