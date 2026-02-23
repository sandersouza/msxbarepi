#include "fmsx_frontend.h"

#include "framebuffer.h"
#include "platform.h"
#include "console.h"
#include "uart.h"
#include "audio_pcm.h"
#include "audio_out.h"

#include "MSX.h"
#include "EMULib.h"
#include "Sound.h"

#include <stdint.h>
#include <stdlib.h>
#include <string.h>

extern retro_log_printf_t log_cb;
extern AY8910 PSG;

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
static uint8_t audio_backend_started;
static uint8_t audio_mixer_inited;
static uint8_t audio_mixer_deferred;

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

#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
static uint8_t hdbg_seen_q60;
static uint8_t hdbg_seen_q300;
static uint8_t hdbg_seen_q600;
static uint8_t hdbg_seen_img_nonzero;

static void bootdbg_puts(const char *s) {
    console_puts(s);
    uart_puts(s);
}
#ifdef MSXBARE_AUDIO_HDMI_OVERLAY_ONLY
#define HDBG(MSG) do {} while (0)
#else
#define HDBG(MSG) bootdbg_puts(MSG)
#endif
#else
#define HDBG(MSG) do {} while (0)
#endif

#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
static uint8_t debug_image_sample_nonzero(void) {
    if (!image_buffer) {
        return 0u;
    }
    /* Sparse sampling to avoid scanning full frame in debug path. */
    static const uint16_t idxs[] = {
        0, 1, 2,
        WIDTH * 8 + 8,
        WIDTH * 16 + 16,
        WIDTH * 32 + 32,
        WIDTH * 64 + 64,
        WIDTH * 96 + 96,
        WIDTH * 128 + 128,
        WIDTH * 160 + 160,
        WIDTH * 200 + 200,
        (WIDTH * HEIGHT) / 2,
        (WIDTH * HEIGHT) - 1
    };
    for (unsigned i = 0; i < (unsigned)(sizeof(idxs) / sizeof(idxs[0])); ++i) {
        if (image_buffer[idxs[i]] != 0u) {
            return 1u;
        }
    }
    return 0u;
}
#endif

#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
static void hdbg_overlay_render(void)
{
    char line1[] = "HDMI D1:N R1:N DU:N         ";
    char line2[] = "LOOP Q60:N Q300:N Q600:N    ";
    uint32_t af = audio_out_debug_flags();
    const uint32_t ox = 64u;
    const uint32_t oy = 16u;

    if (af & AUDIO_OUT_DBG_HDMI_D1) line1[8]  = 'Y';
    if (af & AUDIO_OUT_DBG_HDMI_R1) line1[13] = 'Y';
    if (af & AUDIO_OUT_DBG_HDMI_DU) line1[18] = 'Y';

    if (hdbg_seen_q60)  line2[10] = 'Y';
    if (hdbg_seen_q300) line2[17] = 'Y';
    if (hdbg_seen_q600) line2[24] = 'Y';

    /* Opaque box away from the left edge to avoid TV overscan clipping. */
    framebuffer_fill_rect(ox, oy, 8u * 30u, 16u, 0x00000000u);
    framebuffer_draw_text_at(ox, oy, line1);
    framebuffer_draw_text_at(ox, oy + 8u, line2);
}
#endif

int fmsx_frontend_init(void) {
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
    HDBG("[H] fa\n");
#endif
    image_buffer = (uint16_t *)malloc(sizeof(uint16_t) * WIDTH * HEIGHT);
    if (!image_buffer) {
        return 0;
    }
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
    HDBG("[H] fi\n");
#endif

    for (int i = 0; i < 80; i++) SetColor((uint8_t)i, 0, 0, 0);
    for (int i = 0; i < 256; i++) {
        BPal[i] = PIXEL(((i >> 2) & 0x07) * 255 / 7, ((i >> 5) & 0x07) * 255 / 7, (i & 0x03) * 255 / 3);
    }

    audio_sample_accum = 0;
    audio_samples_per_sec = 48000u;
#if defined(MSXBARE_ENABLE_AUDIO)
    audio_pcm_init(audio_samples_per_sec, 1u);
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
    HDBG("[H] fp\n");
#endif
#endif
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
    HDBG("[H] fs\n");
#endif
#if defined(MSXBARE_AUDIO_BACKEND_HDMI)
    /* Nao inicializa mixer no boot path do preset HDMI test; faz depois de StartMSX(). */
    audio_mixer_inited = 0u;
    audio_mixer_deferred = 1u;
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
    HDBG("[H] fd\n");
#endif
#else
    if (InitSound(audio_samples_per_sec)) {
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
        bootdbg_puts("[hdmi-audio-test] fe: snd ok\n");
        bootdbg_puts("[hdmi-audio-test] fe: ch begin\n");
#endif
        /* PSG (AY8910) usa os primeiros canais do mixer do fMSX/EMULib. */
        SetChannels(255, (1 << AY8910_CHANNELS) - 1);
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
        bootdbg_puts("[hdmi-audio-test] fe: ch ok\n");
#endif
        audio_mixer_inited = 1u;
#ifdef MSXBARE_DEBUG_LOGS
        platform_log("[dbg] Audio PSG pipeline inicializado (PCM sink em memoria).\n");
#endif
    } else {
        audio_mixer_inited = 0u;
#ifdef MSXBARE_DEBUG_LOGS
        platform_log("[dbg] Audio PSG pipeline: InitSound falhou.\n");
#endif
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
        bootdbg_puts("[hdmi-audio-test] fe: snd fail\n");
#endif
    }
    audio_mixer_deferred = 0u;
#endif
    audio_backend_started = 0u;
    boot_fast_mode_enabled = 1;
    pace_next_tick = 0;
    pace_ticks_hz = 0;
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
    HDBG("[H] fe\n");
#endif
    return 1;
}

void fmsx_frontend_audio_late_init(void) {
#if defined(MSXBARE_ENABLE_AUDIO)
    if (!audio_mixer_deferred || audio_mixer_inited || audio_samples_per_sec == 0u) {
        return;
    }
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
    HDBG("[H] ls\n");
#endif
    if (InitSound(audio_samples_per_sec)) {
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
        HDBG("[H] lr\n");
        HDBG("[H] lc\n");
#endif
        SetChannels(255, (1 << AY8910_CHANNELS) - 1);
#if defined(MSXBARE_AUDIO_BACKEND_HDMI)
        /* audio-hdmi-test skips ResetMSX audio reset to avoid boot-path crash.
         * Do PSG reset here, after mixer init is ready. */
        Reset8910(&PSG, PSG_CLOCK, FIRST_AY8910_CHANNEL);
        Sync8910(&PSG, AY8910_SYNC);
#endif
        audio_mixer_inited = 1u;
        audio_mixer_deferred = 0u;
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
        HDBG("[H] lk\n");
        HDBG("[H] lo\n");
#endif
    } else {
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
        HDBG("[H] lf\n");
#endif
    }
#endif
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
    if (!audio_backend_started && audio_samples_per_sec != 0u) {
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
        HDBG("[H] a1\n");
#endif
        audio_out_init(audio_samples_per_sec);
        audio_backend_started = 1u;
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
        HDBG("[H] a2\n");
#endif
    }
    if (fps == 0u || audio_samples_per_sec == 0u || !audio_mixer_inited) {
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
        static uint8_t logged_skip_nomixer;
        if (!logged_skip_nomixer) {
            HDBG("[H] a3\n");
            logged_skip_nomixer = 1u;
        }
#endif
        return;
    }
    audio_sample_accum += audio_samples_per_sec;
    samples = audio_sample_accum / fps;
    audio_sample_accum %= fps;
    if (samples != 0u) {
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
        static uint8_t logged_render_begin;
        if (!logged_render_begin) {
            HDBG("[H] a4\n");
            logged_render_begin = 1u;
        }
#endif
        (void)RenderAndPlayAudio(samples);
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
        static uint8_t logged_render_ok;
        if (!logged_render_ok) {
            HDBG("[H] a5\n");
            logged_render_ok = 1u;
        }
#endif
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
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
    if (frame_number == 1u) HDBG("[H] q2\n");
    if (frame_number == 2u) HDBG("[H] q3\n");
    if (frame_number == 9u) HDBG("[H] q10\n");
    if (frame_number == 29u) HDBG("[H] q30\n");
    if (frame_number == 59u) {
        HDBG("[H] q60\n");
        hdbg_seen_q60 = 1u;
        if (debug_image_sample_nonzero()) {
            hdbg_seen_img_nonzero = 1u;
        }
    }
    if (frame_number == 299u) {
        HDBG("[H] q300\n");
        hdbg_seen_q300 = 1u;
        if (debug_image_sample_nonzero()) {
            hdbg_seen_img_nonzero = 1u;
        }
    }
    if (frame_number == 599u) {
        HDBG("[H] q600\n");
        hdbg_seen_q600 = 1u;
        if (debug_image_sample_nonzero()) {
            hdbg_seen_img_nonzero = 1u;
        }
    }
#endif
#ifdef MSXBARE_DEBUG_LOGS
    static int logged = 0;
    if (!logged) {
        platform_log("[dbg] PutImage() primeiro frame.\n");
        logged = 1;
    }
#endif
    if ((frame_number % present_div) == 0u) {
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
        {
            static uint8_t logged_blit1;
            if (!logged_blit1) {
                HDBG("[H] b1\n");
                logged_blit1 = 1u;
            }
        }
#endif
#if !defined(MSXBARE_AUDIO_HDMI_BOOT_DEBUG_NOBLIT)
        framebuffer_blit_rgb565(image_buffer, WIDTH, HEIGHT, MSXBARE_LETTERBOX_RGB);
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
        hdbg_overlay_render();
#endif
#endif
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
        {
            static uint8_t logged_blit2;
            if (!logged_blit2) {
                HDBG("[H] b2\n");
                logged_blit2 = 1u;
            }
        }
#endif
    }
    audio_step_frame();
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
    {
        static uint8_t logged_service1;
        if (!logged_service1) {
            HDBG("[H] s1\n");
            logged_service1 = 1u;
        }
    }
#endif
    audio_out_service();
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
    {
        static uint8_t logged_service2;
        if (!logged_service2) {
            HDBG("[H] s2\n");
            logged_service2 = 1u;
        }
    }
#endif
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
    {
        static uint8_t logged_pace1;
        if (!logged_pace1) {
            HDBG("[H] p1\n");
            logged_pace1 = 1u;
        }
    }
#endif
    pace_frame();
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
    {
        static uint8_t logged_pace2;
        if (!logged_pace2) {
            HDBG("[H] p2\n");
            logged_pace2 = 1u;
        }
    }
#endif
    frame_number++;
#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
    {
        static uint8_t logged_pace3;
        if (!logged_pace3) {
            HDBG("[H] p3\n");
            logged_pace3 = 1u;
        }
    }
#endif
}
