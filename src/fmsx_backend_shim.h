#ifndef MSXBARE_CIRCLE_MSXBARE_FMSX_BACKEND_SHIM_H
#define MSXBARE_CIRCLE_MSXBARE_FMSX_BACKEND_SHIM_H

#include "emulator_backend.h"

#ifdef __cplusplus
extern "C" {
#endif

boolean fmsx_backend_shim_init(int *out_error_code);
boolean fmsx_backend_shim_reset(void);
boolean fmsx_backend_shim_step_frame(void);
void fmsx_backend_shim_shutdown(void);
unsigned fmsx_backend_shim_video_frame(const u16 **pixels, unsigned *width, unsigned *height);
unsigned fmsx_backend_shim_audio_pull(int16_t *dst, unsigned max_samples);
void fmsx_backend_shim_input_push_joystick(u8 bridge_bits);
void fmsx_backend_shim_input_push_keyboard(u8 modifiers, const unsigned char raw_keys[6]);
boolean fmsx_backend_shim_media_load_cartridge(unsigned slot_index, const char *path);
boolean fmsx_backend_shim_media_load_disk(unsigned drive_index, const char *path);
EmulatorBackendRuntimeStatus fmsx_backend_shim_get_status(void);

#ifdef __cplusplus
}
#endif

#endif
