#ifndef MSX_INPUT_H
#define MSX_INPUT_H

#include <stdint.h>

typedef struct {
    uint16_t joystick_bits;
    uint8_t active_key_count;
    uint8_t pending_modifiers;
    uint8_t pending_key0;
    uint8_t reserved0;
    uint32_t pending_seq;
    uint32_t applied_seq;
    uint8_t provider_ready;
    uint8_t provider_failed;
    uint8_t keyboard_bound;
    uint8_t reserved1;
    uint8_t bridge_key0;
    uint8_t bridge_modifiers;
    uint16_t bridge_joystick_bits;
    uint32_t bridge_sequence;
    uint32_t provider_polls;
    uint32_t provider_stage_code;
    uint32_t backend_polls;
    uint32_t loop_stage_code;
    uint32_t loop_counter;
} msx_input_debug_t;

void msx_input_init(void);
void msx_input_poll(void);
void msx_input_set_runtime_enabled(int enabled);
int msx_input_runtime_enabled(void);
void msx_input_set_loop_debug(uint32_t stage_code, uint32_t counter);
uint32_t msx_input_debug_loop_stage(void);
uint32_t msx_input_debug_loop_counter(void);
uint32_t msx_input_debug_pending_seq(void);
uint32_t msx_input_debug_applied_seq(void);
uint16_t msx_input_debug_joystick_bits(void);

/* fMSX Joystick() bitmask (JST_* from MSX.h). */
uint16_t msx_input_joystick_bits(void);

/*
 * Submit a HID boot keyboard report (raw, 8-byte report split as modifiers + 6 key slots).
 * Intended for future Circle USB/HID bridge integration (C/C++ boundary) and tests.
 */
void msx_input_submit_hid_boot_report(uint8_t modifiers, const uint8_t keys[6]);
void msx_input_get_debug(msx_input_debug_t *out_dbg);
void msx_input_get_debug_min(msx_input_debug_t *out_dbg);

#endif
