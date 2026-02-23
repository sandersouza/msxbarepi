#ifndef MSX_CORE_H
#define MSX_CORE_H

#include <stdint.h>

int msx_core_init(const uint8_t *rom_data, uint32_t rom_size);
void msx_core_run(void);

#endif
