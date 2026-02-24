#include "msx_input_backend.h"

#include "usb_host.h"
#include "usb_hid.h"

/* Transport backend (current): custom USB host + HID scaffolds.
 * Future step: alternate implementation backed by Circle USB/HID bridge.
 */

void msx_input_backend_init(void)
{
    usb_host_init();
    usb_hid_init();
}

void msx_input_backend_poll(void)
{
    usb_host_poll();
    usb_hid_poll();
}

int msx_input_backend_read_hid_boot_report(usb_hid_keyboard_report_t *out_report)
{
    return usb_hid_keyboard_read_report(out_report);
}

void msx_input_backend_get_debug(msx_input_backend_debug_t *out_dbg)
{
    if (!out_dbg) return;
    out_dbg->provider_ready = 0u;
    out_dbg->provider_failed = 0u;
    out_dbg->keyboard_bound = 0u;
    out_dbg->reserved0 = 0u;
    out_dbg->key0 = 0u;
    out_dbg->modifiers = 0u;
    out_dbg->joystick_bits = 0u;
    out_dbg->bridge_sequence = 0u;
    out_dbg->provider_polls = 0u;
    out_dbg->provider_stage_code = 0u;
    out_dbg->backend_polls = 0u;
}

uint32_t msx_input_backend_debug_backend_polls(void)
{
    return 0u;
}
