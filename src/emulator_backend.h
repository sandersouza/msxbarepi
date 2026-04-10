#ifndef MSXBARE_CIRCLE_MSXBARE_EMULATOR_BACKEND_H
#define MSXBARE_CIRCLE_MSXBARE_EMULATOR_BACKEND_H

#include <stdint.h>
#include <circle/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    EMULATOR_BACKEND_KIND_FMSX = 0,
    EMULATOR_BACKEND_KIND_BLUEMSX = 1
} EmulatorBackendKind;

typedef struct {
    boolean initialized;
    boolean running;
    unsigned long frames;
    int last_pc;
    int last_error;
} EmulatorBackendRuntimeStatus;

typedef struct {
    unsigned logical_width;
    unsigned logical_height;
    boolean hires_mode;
    boolean interlaced_mode;
    boolean woven_hires;
    boolean field_parity_odd;
} EmulatorBackendVideoPresentation;

typedef struct {
    EmulatorBackendKind active_backend;
    const char *active_backend_name;
    boolean init_attempted;
    boolean available;
    int init_error_code;
} EmulatorBackendInfo;

enum {
    EMULATOR_BACKEND_INIT_OK = 0,
    EMULATOR_BACKEND_INIT_ERR_FMSX = 1,
    EMULATOR_BACKEND_INIT_ERR_BLUEMSX_STUB = 1001
};

boolean emulator_backend_init(void);
boolean emulator_backend_reset(void);
boolean emulator_backend_step_frame(void);
void emulator_backend_shutdown(void);
unsigned emulator_backend_video_frame(const u16 **pixels, unsigned *width, unsigned *height);
void emulator_backend_get_video_presentation(EmulatorBackendVideoPresentation *presentation);
unsigned emulator_backend_audio_pull(int16_t *dst, unsigned max_samples);
void emulator_backend_input_push_joystick(u8 bridge_bits);
void emulator_backend_input_push_keyboard(u8 modifiers, const unsigned char raw_keys[6]);
boolean emulator_backend_media_load_cartridge(unsigned slot_index, const char *path);
boolean emulator_backend_media_load_disk(unsigned drive_index, const char *path);
EmulatorBackendRuntimeStatus emulator_backend_get_status(void);
EmulatorBackendInfo emulator_backend_get_info(void);
EmulatorBackendKind emulator_backend_selected_kind(void);
const char *emulator_backend_name(EmulatorBackendKind kind);

#ifdef __cplusplus
}
#endif

#endif
