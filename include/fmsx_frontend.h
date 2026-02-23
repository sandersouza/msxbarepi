#ifndef FMSX_FRONTEND_H
#define FMSX_FRONTEND_H

#include <stdint.h>

int fmsx_frontend_init(void);
void fmsx_frontend_shutdown(void);
void fmsx_frontend_set_raw_rom(const uint8_t *data, uint32_t size);
void fmsx_frontend_set_boot_fast_mode(int enabled);
void fmsx_frontend_audio_late_init(void);

#endif
