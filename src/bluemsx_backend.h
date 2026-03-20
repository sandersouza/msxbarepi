#ifndef MSXBARE_CIRCLE_MSXBARE_BLUEMSX_BACKEND_H
#define MSXBARE_CIRCLE_MSXBARE_BLUEMSX_BACKEND_H

#include "emulator_backend.h"

#ifdef __cplusplus
extern "C" {
#endif

boolean bluemsx_backend_init(int *out_error_code);
boolean bluemsx_backend_reset(void);
boolean bluemsx_backend_step_frame(void);
void bluemsx_backend_shutdown(void);
unsigned bluemsx_backend_video_frame(const u16 **pixels, unsigned *width, unsigned *height);
unsigned bluemsx_backend_audio_pull(int16_t *dst, unsigned max_samples);
void bluemsx_backend_input_push_joystick(u8 bridge_bits);
void bluemsx_backend_input_push_keyboard(u8 modifiers, const unsigned char raw_keys[6]);
boolean bluemsx_backend_media_load_cartridge(unsigned slot_index, const char *path);
boolean bluemsx_backend_media_load_disk(unsigned drive_index, const char *path);
EmulatorBackendRuntimeStatus bluemsx_backend_get_status(void);

#ifdef __cplusplus
}
#endif

#endif
