#ifndef MSX_INPUT_BACKEND_H
#define MSX_INPUT_BACKEND_H

#include "usb_hid.h"
#include <stdint.h>

typedef struct {
    uint8_t provider_ready;
    uint8_t provider_failed;
    uint8_t keyboard_bound;
    uint8_t reserved0;
    uint8_t key0;
    uint8_t modifiers;
    uint16_t joystick_bits;
    uint32_t bridge_sequence;
    uint32_t provider_polls;
    uint32_t provider_stage_code;
    uint32_t backend_polls;
} msx_input_backend_debug_t;

void msx_input_backend_init(void);
void msx_input_backend_poll(void);
int msx_input_backend_read_hid_boot_report(usb_hid_keyboard_report_t *out_report);
void msx_input_backend_get_debug(msx_input_backend_debug_t *out_dbg);
uint32_t msx_input_backend_debug_backend_polls(void);

#endif
