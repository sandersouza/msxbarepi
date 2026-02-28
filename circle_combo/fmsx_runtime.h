#ifndef MSXBARE_CIRCLE_COMBO_FMSX_RUNTIME_H
#define MSXBARE_CIRCLE_COMBO_FMSX_RUNTIME_H

#include <stdint.h>
#include <circle/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    boolean initialized;
    boolean running;
    unsigned long frames;
    int last_pc;
    int last_error;
} TFmsxRuntimeStatus;

typedef struct {
    unsigned write_calls;
    unsigned samples_written;
    unsigned samples_pulled;
    unsigned ring_level;
    unsigned drop_count;
    unsigned source_peak;
    unsigned source_nonzero;
} TFmsxAudioStats;

typedef struct {
    unsigned last_hid;
    unsigned last_msx;
} TFmsxKeyboardDebug;

boolean fmsx_runtime_init(void);
boolean fmsx_runtime_reboot_basic(void);
boolean fmsx_runtime_hard_reset(void);
boolean fmsx_runtime_step_frame(void);
void fmsx_runtime_shutdown(void);
void fmsx_runtime_set_joystick_bits(u8 bridge_bits);
void fmsx_runtime_set_keyboard_raw(u8 modifiers, const unsigned char raw_keys[6]);
void fmsx_runtime_set_overscan(boolean enabled);
void fmsx_runtime_set_refresh_hz(unsigned hz);
void fmsx_runtime_set_z80_turbo_mode(unsigned mode);
unsigned fmsx_runtime_get_z80_turbo_mode(void);
TFmsxRuntimeStatus fmsx_runtime_get_status(void);
unsigned fmsx_runtime_get_video_frame(const u16 **pixels, unsigned *width, unsigned *height);
unsigned fmsx_audio_pull_samples(int16_t *dst, unsigned max_samples);
void fmsx_audio_get_stats(TFmsxAudioStats *stats);
void fmsx_keyboard_get_debug(TFmsxKeyboardDebug *stats);

#ifdef __cplusplus
}
#endif

#endif
