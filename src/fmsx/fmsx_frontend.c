#include "fmsx_frontend.h"

#include "framebuffer.h"
#include "platform.h"
#include "audio_pcm.h"
#include "audio_out.h"

#include "MSX.h"
#include "EMULib.h"
#include "Sound.h"

#include <stdint.h>
#include <stdlib.h>
#include <string.h>

extern retro_log_printf_t log_cb;

#ifndef MSXBARE_FRAME_SKIP
#define MSXBARE_FRAME_SKIP 0
#endif

#ifndef MSXBARE_BOOT_FRAME_SKIP
#define MSXBARE_BOOT_FRAME_SKIP 0
#endif

#ifndef MSXBARE_BOOT_FRAME_COUNT
#define MSXBARE_BOOT_FRAME_COUNT 0
#endif

#ifndef MSXBARE_LETTERBOX_RGB
#define MSXBARE_LETTERBOX_RGB 0x00000000u
#endif

#ifndef MSXBARE_ENABLE_FRAME_PACING
#define MSXBARE_ENABLE_FRAME_PACING 1
#endif

#define BORDER 8
#define WIDTH  (256 + (BORDER << 1))
#define HEIGHT (212 + (BORDER << 1))
#define MAX_HEIGHT (256 + BORDER)
#define MAX_SCANLINE (PALVideo ? 255 : 242)

#define PIXEL(R,G,B) (uint16_t)((((31 * (R)) / 255) << 11) | (((63 * (G)) / 255) << 5) | ((31 * (B)) / 255))

static uint16_t *image_buffer;
static uint16_t XPal[80];
static uint16_t BPal[256];
static uint16_t XPal0;
static uint32_t frame_number;
static uint64_t pace_next_tick;
static uint64_t pace_ticks_hz;
static uint32_t audio_sample_accum;
static uint32_t audio_samples_per_sec;

int LastScanline;

uint8_t *sram_disk_ptr = 0;

#define HiResMode      0
#define InterlacedMode 0
#define OverscanMode   0
#define OddPage        (frame_number & 1u)

#define XBuf image_buffer
#define WBuf image_buffer
#include "CommonMux.h"

static const uint8_t *raw_rom;
static uint32_t raw_rom_size;
static uint8_t boot_fast_mode_enabled = 1;

int fmsx_frontend_init(void) {
    image_buffer = (uint16_t *)malloc(sizeof(uint16_t) * WIDTH * HEIGHT);
    if (!image_buffer) {
        return 0;
    }

    for (int i = 0; i < 80; i++) SetColor((uint8_t)i, 0, 0, 0);
    for (int i = 0; i < 256; i++) {
        BPal[i] = PIXEL(((i >> 2) & 0x07) * 255 / 7, ((i >> 5) & 0x07) * 255 / 7, (i & 0x03) * 255 / 3);
    }

    audio_sample_accum = 0;
    audio_samples_per_sec = 48000u;
#if defined(MSXBARE_ENABLE_AUDIO)
    audio_pcm_init(audio_samples_per_sec, 1u);
    audio_out_init(audio_samples_per_sec);
    if (InitSound(audio_samples_per_sec)) {
        /* PSG (AY8910) usa os primeiros canais do mixer do fMSX/EMULib. */
        SetChannels(255, (1 << AY8910_CHANNELS) - 1);
#ifdef MSXBARE_DEBUG_LOGS
        platform_log("[dbg] Audio PSG pipeline inicializado (PCM sink em memoria).\n");
#endif
    } else {
#ifdef MSXBARE_DEBUG_LOGS
        platform_log("[dbg] Audio PSG pipeline: InitSound falhou.\n");
#endif
    }
#endif
    boot_fast_mode_enabled = 1;
    pace_next_tick = 0;
    pace_ticks_hz = 0;
    return 1;
}

void fmsx_frontend_shutdown(void) {
    if (image_buffer) {
        free(image_buffer);
        image_buffer = 0;
    }
#if defined(MSXBARE_ENABLE_AUDIO)
    audio_out_shutdown();
#endif
}

void fmsx_frontend_set_raw_rom(const uint8_t *data, uint32_t size) {
    raw_rom = data;
    raw_rom_size = size;
    (void)raw_rom;
    (void)raw_rom_size;
}

void fmsx_frontend_set_boot_fast_mode(int enabled) {
    uint8_t old = boot_fast_mode_enabled;
    boot_fast_mode_enabled = enabled ? 1u : 0u;
    if (old && !boot_fast_mode_enabled) {
        /* Reinicia pacing ao sair do fast boot para evitar "catch-up" artificial. */
        pace_next_tick = 0;
    }
}

static void pace_frame(void) {
#if MSXBARE_ENABLE_FRAME_PACING
    /* MSX1: 50Hz em PAL, 60Hz em NTSC. */
    uint32_t fps = PALVideo ? 50u : 60u;
    uint64_t now;
    uint64_t step;

    if (fps == 0u) {
        return;
    }

    if (pace_ticks_hz == 0u) {
        pace_ticks_hz = platform_ticks_hz();
        if (pace_ticks_hz == 0u) {
            return;
        }
    }

    step = pace_ticks_hz / (uint64_t)fps;
    if (step == 0u) {
        return;
    }

    now = platform_ticks_now();
    if (pace_next_tick == 0u) {
        pace_next_tick = now + step;
        return;
    }

    /* Se estivermos muito atrasados (ex.: boot fast mode acabou), resincroniza. */
    if (now > pace_next_tick + (pace_ticks_hz / 4u)) {
        pace_next_tick = now + step;
        return;
    }

    while ((int64_t)(pace_next_tick - now) > 0) {
        audio_out_service();
        now = platform_ticks_now();
    }

    pace_next_tick += step;
#endif
}

static void audio_step_frame(void) {
#if defined(MSXBARE_ENABLE_AUDIO)
    uint32_t fps = PALVideo ? 50u : 60u;
    uint32_t samples;
    if (fps == 0u || audio_samples_per_sec == 0u) {
        return;
    }
    audio_sample_accum += audio_samples_per_sec;
    samples = audio_sample_accum / fps;
    audio_sample_accum %= fps;
    if (samples != 0u) {
        (void)RenderAndPlayAudio(samples);
    }
#endif
}

void SetColor(uint8_t N, uint8_t R, uint8_t G, uint8_t B) {
    if (N) XPal[N] = PIXEL(R, G, B);
    else XPal0 = PIXEL(R, G, B);
}

unsigned int Joystick(void) { return 0; }
unsigned int Mouse(uint8_t N) { (void)N; return 0; }
uint8_t DiskPresent(uint8_t ID) { (void)ID; return 0; }
uint8_t DiskRead(uint8_t ID, uint8_t *Buf, int N) { (void)ID; (void)Buf; (void)N; return 0; }
uint8_t DiskWrite(uint8_t ID, const uint8_t *Buf, int N) { (void)ID; (void)Buf; (void)N; return 0; }
void PlayAllSound(int uSec) { (void)uSec; }
unsigned int WriteAudio(int16_t *Data, unsigned int Length) {
#if defined(MSXBARE_ENABLE_AUDIO)
    static int logged_audio_write = 0;
    if (!logged_audio_write && Length) {
#ifdef MSXBARE_DEBUG_LOGS
        platform_log("[audio] WriteAudio recebeu amostras do core.\n");
#endif
        logged_audio_write = 1;
    }
    return audio_pcm_write_interleaved_s16(Data, Length);
#else
    (void)Data;
    return Length;
#endif
}

void PutImage(void) {
    uint32_t base_skip = (uint32_t)MSXBARE_FRAME_SKIP;
    uint32_t boot_skip = (uint32_t)MSXBARE_BOOT_FRAME_SKIP;
    uint32_t present_skip = base_skip;
    uint32_t present_div;

    if (boot_fast_mode_enabled &&
        (uint32_t)MSXBARE_BOOT_FRAME_COUNT != 0u &&
        frame_number < (uint32_t)MSXBARE_BOOT_FRAME_COUNT) {
        if (boot_skip > present_skip) {
            present_skip = boot_skip;
        }
    }

    present_div = present_skip + 1u;
#ifdef MSXBARE_DEBUG_LOGS
    static int logged = 0;
    if (!logged) {
        platform_log("[dbg] PutImage() primeiro frame.\n");
        logged = 1;
    }
#endif
    if ((frame_number % present_div) == 0u) {
        framebuffer_blit_rgb565(image_buffer, WIDTH, HEIGHT, MSXBARE_LETTERBOX_RGB);
    }
    audio_step_frame();
    audio_out_service();
    pace_frame();
    frame_number++;
}
