#include "fmsx_frontend.h"

#include "framebuffer.h"
#include "platform.h"
#include "console.h"
#include "uart.h"
#include "audio_pcm.h"
#include "audio_out.h"
#include "msx_input.h"
#include "msx_input_backend.h"
#include "circle_input_provider.h"

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

#ifndef MSXBARE_DEBUG_TOP_STRIP_PX
#define MSXBARE_DEBUG_TOP_STRIP_PX 0u
#endif

#ifndef MSXBARE_CIRCLE_INPUT_TEXT_MODE_DEBUG
#define MSXBARE_CIRCLE_INPUT_TEXT_MODE_DEBUG 0
#endif

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

#ifdef MSXBARE_CIRCLE_INPUT_OVERLAY_DEBUG
#ifndef MSXBARE_CDBG_FLUSH_DIV_MASK
#define MSXBARE_CDBG_FLUSH_DIV_MASK 63u
#endif
static void cdbg_overlay_render(void)
{
    static char l0[] = "TXTDBG OS:00";
    static uint8_t cdbg_os = 0u;
    static uint32_t cdbg_flush_div = 0u;
    static uint32_t cdbg_redraw_div = 0u;
    static char l1[] = "CI R:N F:N K:N S:00 G:N B:000 P:0000 LP:00/000";
    static char l2[] = "EV Q:000000 E:000000 K0:00 M:00";
    static char l3[] = "JY BJ:0000 MJ:0000";
    static const char hex[] = "0123456789ABCDEF";
    const uint32_t text_x = 64u;
    const uint32_t text_y = 64u;
    const uint32_t panel_x = 56u;
    const uint32_t panel_y = 56u;
    const uint32_t panel_w = 520u;
    const uint32_t panel_h = 40u;
    uint32_t v;

    uint32_t dbg_loop_counter;
    uint32_t dbg_loop_stage;
    uint32_t dbg_applied;
    uint32_t dbg_pending;
    uint16_t dbg_joy;
    uint32_t dbg_bp;
    uint32_t dbg_pp;
    uint32_t dbg_ps;
    uint32_t dbg_pr;
    uint32_t dbg_pf;
    uint32_t dbg_pk;

    cdbg_os = 0x01u;
    if ((cdbg_redraw_div++ & 15u) != 0u) {
        return;
    }
    dbg_loop_counter = msx_input_debug_loop_counter();
    dbg_loop_stage = msx_input_debug_loop_stage();
    dbg_applied = msx_input_debug_applied_seq();
    dbg_pending = msx_input_debug_pending_seq();
    dbg_joy = msx_input_debug_joystick_bits();
    dbg_bp = msx_input_backend_debug_backend_polls();
    dbg_pp = circle_input_provider_debug_polls();
    dbg_ps = circle_input_provider_debug_stage();
    dbg_pr = circle_input_provider_debug_ready();
    dbg_pf = circle_input_provider_debug_failed();
    dbg_pk = circle_input_provider_debug_kbd_bound();

    cdbg_os = 0x02u;
#if MSXBARE_CIRCLE_INPUT_TEXT_MODE_DEBUG
    framebuffer_fill_rect(0u, 0u, (uint32_t)MSXBARE_FB_WIDTH, (uint32_t)MSXBARE_FB_HEIGHT, 0x00000000u);
#else
    framebuffer_fill_rect(panel_x, panel_y, panel_w, panel_h, 0x00000000u);
#endif

    l1[5]  = dbg_pr ? 'Y' : 'N';
    l1[9]  = dbg_pf ? 'Y' : 'N';
    l1[13] = dbg_pk ? 'Y' : 'N';
    l1[17] = hex[(dbg_ps >> 4) & 0x0Fu];
    l1[18] = hex[dbg_ps & 0x0Fu];
    l1[22] = msx_input_runtime_enabled() ? 'Y' : 'N';
    v = dbg_bp % 1000u;
    l1[26] = (char)('0' + ((v / 100u) % 10u));
    l1[27] = (char)('0' + ((v / 10u) % 10u));
    l1[28] = (char)('0' + (v % 10u));
    v = dbg_pp % 10000u;
    l1[32] = (char)('0' + ((v / 1000u) % 10u));
    l1[33] = (char)('0' + ((v / 100u) % 10u));
    l1[34] = (char)('0' + ((v / 10u) % 10u));
    l1[35] = (char)('0' + (v % 10u));

    l1[40] = hex[(dbg_loop_stage >> 4) & 0x0Fu];
    l1[41] = hex[dbg_loop_stage & 0x0Fu];
    v = dbg_loop_counter % 1000u;
    l1[43] = (char)('0' + ((v / 100u) % 10u));
    l1[44] = (char)('0' + ((v / 10u) % 10u));
    l1[45] = (char)('0' + (v % 10u));

    v = dbg_applied % 1000000u;
    l2[5]  = (char)('0' + ((v / 100000u) % 10u));
    l2[6]  = (char)('0' + ((v / 10000u) % 10u));
    l2[7]  = (char)('0' + ((v / 1000u) % 10u));
    l2[8]  = (char)('0' + ((v / 100u) % 10u));
    l2[9]  = (char)('0' + ((v / 10u) % 10u));
    l2[10] = (char)('0' + (v % 10u));
    v = 0u % 1000000u;
    l2[14] = (char)('0' + ((v / 100000u) % 10u));
    l2[15] = (char)('0' + ((v / 10000u) % 10u));
    l2[16] = (char)('0' + ((v / 1000u) % 10u));
    l2[17] = (char)('0' + ((v / 100u) % 10u));
    l2[18] = (char)('0' + ((v / 10u) % 10u));
    l2[19] = (char)('0' + (v % 10u));
    l2[24] = hex[(0u >> 4) & 0x0Fu];
    l2[25] = hex[0u & 0x0Fu];
    l2[29] = hex[(0u >> 4) & 0x0Fu];
    l2[30] = hex[0u & 0x0Fu];

    l3[6]  = hex[(0u >> 12) & 0x0Fu];
    l3[7]  = hex[(0u >> 8) & 0x0Fu];
    l3[8]  = hex[(0u >> 4) & 0x0Fu];
    l3[9]  = hex[0u & 0x0Fu];
    l3[14] = hex[(dbg_joy >> 12) & 0x0Fu];
    l3[15] = hex[(dbg_joy >> 8) & 0x0Fu];
    l3[16] = hex[(dbg_joy >> 4) & 0x0Fu];
    l3[17] = hex[dbg_joy & 0x0Fu];

    cdbg_os = 0x03u;
    l0[10] = hex[(cdbg_os >> 4) & 0x0Fu];
    l0[11] = hex[cdbg_os & 0x0Fu];
    framebuffer_set_text_colors(0x00FFFFFFu, 0x00000000u);
    framebuffer_draw_text_at(text_x, text_y + 0u, l0);
    framebuffer_draw_text_at(text_x, text_y + 8u, l1);
    framebuffer_draw_text_at(text_x, text_y + 16u, l2);
    framebuffer_draw_text_at(text_x, text_y + 24u, l3);
    cdbg_os = 0x04u; l0[10] = hex[(cdbg_os >> 4) & 0x0Fu]; l0[11] = hex[cdbg_os & 0x0Fu];
    framebuffer_draw_text_at(text_x, text_y + 0u, l0);
#if MSXBARE_CIRCLE_INPUT_TEXT_MODE_DEBUG
    cdbg_os = 0x05u; l0[10] = hex[(cdbg_os >> 4) & 0x0Fu]; l0[11] = hex[cdbg_os & 0x0Fu];
    framebuffer_draw_text_at(text_x, text_y + 0u, l0);
    if ((cdbg_flush_div++ & (uint32_t)MSXBARE_CDBG_FLUSH_DIV_MASK) == 0u) {
        framebuffer_flush_rect(0u, 0u, 640u, 160u);
    }
#else
    cdbg_os = 0x05u; l0[10] = hex[(cdbg_os >> 4) & 0x0Fu]; l0[11] = hex[cdbg_os & 0x0Fu];
    framebuffer_draw_text_at(text_x, text_y + 0u, l0);
    if ((cdbg_flush_div++ & (uint32_t)MSXBARE_CDBG_FLUSH_DIV_MASK) == 0u) {
        framebuffer_flush_rect(panel_x, panel_y, panel_w, panel_h);
    }
#endif
    cdbg_os = 0x06u; l0[10] = hex[(cdbg_os >> 4) & 0x0Fu]; l0[11] = hex[cdbg_os & 0x0Fu];
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
        msx_input_set_loop_debug(0x22u, frame_number);
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

unsigned int Joystick(void) { return (unsigned int)msx_input_joystick_bits(); }
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
    msx_input_set_loop_debug(0x01u, frame_number);
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
        msx_input_set_loop_debug(0x10u, frame_number);
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
        msx_input_set_loop_debug(0x11u, frame_number);
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
#ifdef MSXBARE_CIRCLE_INPUT_OVERLAY_DEBUG
        msx_input_set_loop_debug(0x12u, frame_number);
        cdbg_overlay_render();
        msx_input_set_loop_debug(0x16u, frame_number);
#endif
    }
    msx_input_set_loop_debug(0x20u, frame_number);
    audio_step_frame();
    msx_input_poll();
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
    msx_input_set_loop_debug(0x23u, frame_number);
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
    msx_input_set_loop_debug(0x24u, frame_number);
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
