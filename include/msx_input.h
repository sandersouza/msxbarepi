#ifndef MSX_INPUT_H
#define MSX_INPUT_H

#include <stdint.h>

void msx_input_init(void);
void msx_input_poll(void);

/* fMSX Joystick() bitmask (JST_* from MSX.h). */
uint16_t msx_input_joystick_bits(void);

#endif
