#ifndef MSX_INPUT_H
#define MSX_INPUT_H

#include <stdint.h>

void msx_input_init(void);
void msx_input_poll(void);
void msx_input_set_runtime_enabled(int enabled);

/* fMSX Joystick() bitmask (JST_* from MSX.h). */
uint16_t msx_input_joystick_bits(void);
uint16_t msx_input_debug_joystick_bits(void);
int msx_input_runtime_enabled(void);
unsigned msx_input_debug_applied_seq(void);
unsigned msx_input_debug_pending_seq(void);
unsigned msx_input_debug_loop_counter(void);
unsigned msx_input_debug_loop_stage(void);
void msx_input_set_loop_debug(unsigned stage, unsigned frame_mod);

#endif
