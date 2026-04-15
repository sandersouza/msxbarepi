#ifndef MSXBARE_BACKEND_MSX_MODULES_FMSX_FMSX_V9990_H
#define MSXBARE_BACKEND_MSX_MODULES_FMSX_FMSX_V9990_H

#include <circle/types.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

#define FMSX_V9990_PORT_BASE 0x60u
#define FMSX_V9990_PORT_COUNT 0x10u
#define FMSX_V9990_VRAM_BYTES (512u * 1024u)

typedef struct {
    const uint16_t *pixels;
    unsigned width;
    unsigned height;
    unsigned logical_width;
    unsigned logical_height;
    unsigned pitch_pixels;
    unsigned sequence;
    boolean hires_mode;
    boolean interlaced_mode;
    boolean woven_hires;
    boolean field_parity_odd;
    boolean active;
} TFmsxV9990VideoFrame;

void fmsx_v9990_power_on(void);
void fmsx_v9990_reset(void);
void fmsx_v9990_set_enabled(boolean enabled);
boolean fmsx_v9990_get_enabled(void);
boolean fmsx_v9990_in_port(uint8_t port, uint8_t *value);
boolean fmsx_v9990_out_port(uint8_t port, uint8_t value);
void fmsx_v9990_begin_frame(void);
void fmsx_v9990_render_frame(unsigned sequence);
void fmsx_v9990_get_video_frame(TFmsxV9990VideoFrame *frame);
unsigned fmsx_v9990_save_state(void *dst, unsigned capacity);
unsigned fmsx_v9990_load_state(const void *src, unsigned size);

#ifdef __cplusplus
}
#endif

#endif
