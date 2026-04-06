#include "fmsx_runtime.h"

#include "../third_party/fmsx/fMSX/MSX.h"
#include "../third_party/fmsx/EMULib/EMULib.h"
#include "../third_party/fmsx/EMULib/FDIDisk.h"
#include "../third_party/fmsx/EMULib/Floppy.h"
#include "../third_party/fmsx/EMULib/MCF.h"
#include "../third_party/fmsx/libretro.h"
#include "fmsx_compat/Sound.h"
#include "fmsx_compat/string.h"

retro_log_printf_t log_cb = 0;
extern void msxbare_uart_write(const char *text);
extern uint32_t FmsxVDPRegWriteCount[64];
extern uint32_t FmsxVDPStatusReadCount[16];
extern uint32_t FmsxVDPS2HelperReadCount[7];
extern uint16_t FmsxVDPS2CallerPC[16];
extern uint32_t FmsxVDPS2CallerCount[16];
extern uint32_t FmsxVDPS2CallerOverflowCount;
extern uint32_t FmsxVDPS2Bit0SetCount;
extern uint32_t FmsxVDPS2Bit1SetCount;
extern uint32_t FmsxVDPS2Bit6SetCount;
extern uint32_t FmsxVDPS2Bit0RiseCount;
extern uint32_t FmsxVDPS2Bit0FallCount;
extern uint32_t FmsxVDPS2Bit1RiseCount;
extern uint32_t FmsxVDPS2Bit1FallCount;
extern uint32_t FmsxVDPS2Bit6RiseCount;
extern uint32_t FmsxVDPS2Bit6FallCount;
extern uint32_t FmsxVDPStatus0Read7A66Count;
extern uint32_t FmsxVDPStatus0Read7A66Bit5Count;
extern uint32_t FmsxVDPStatus0Read7A68Count;
extern uint32_t FmsxVDPStatus0Read7A68Bit5Count;
extern uint32_t FmsxVDPPort99ReadCount;
extern uint16_t FmsxVDPRegLastWritePC[64];
extern uint16_t FmsxVDPRegLastWriteLine[64];
extern uint32_t FmsxVDPRegLastWriteFrame[64];
extern uint8_t FmsxVDPRegLastWritePort[64];
extern uint8_t FmsxVDPRegLastWriteOld[64];
extern uint8_t FmsxVDPRegLastWriteNew[64];
extern uint8_t FmsxVDPLineR9Latched;
extern uint8_t FmsxVDPLineR25Latched;
extern uint8_t FmsxVDPLineR26Latched;
extern uint8_t FmsxVDPLineR27Latched;

#define BORDER 8
#define WIDTH  (256 + (BORDER << 1))
#define HEIGHT (212 + (BORDER << 1))
#define MAX_HEIGHT      (256 + BORDER)
#define MAX_SCANLINE    (PALVideo ? 255 : 242)
#define PIXEL(R,G,B) ((uint16_t)(((31 * (R) / 255) << 11) | ((63 * (G) / 255) << 5) | (31 * (B) / 255)))

#define HIRES_OFF 0
#define HIRES_INTERLACED 1
#define HIRES_PROGRESSIVE 2

/*
 * Libretro selects this from the `fmsx_hires` frontend option. Baremetal has
 * no equivalent toggle yet, and leaving the default at OFF suppresses the
 * interlaced/odd-even presentation path entirely even when the VDP requests it.
 * Keep high-res output enabled by default so MSX2+/V9958 screens can exercise
 * the same display path that blueMSX exposes.
 */
static int g_hires_mode = HIRES_INTERLACED;
static int g_overscan = 0;
static unsigned g_frame_number = 0;

#define HiResMode           (InterlaceON && g_hires_mode != HIRES_OFF)
#define InterlacedMode      (g_hires_mode == HIRES_INTERLACED)
#define OverscanMode        (g_overscan)
/*
 * V9958 odd/even page display follows S#2 bit1, not the host frame counter.
 * BlueMSX/openMSX interpret EO as active when bit1=0 and R#9 bit2 is set.
 */
#define OddPage             (FlipEvenOdd ? ((VDPStatus[2] & 0x02u) ? 0u : 1u) : 0u)

static uint16_t g_image_buffer[(WIDTH << 1) * (HEIGHT << 1)];
static unsigned g_image_buffer_width = WIDTH;
static unsigned g_image_buffer_height = HEIGHT;
static volatile unsigned g_video_seq = 0;
static unsigned g_bootlogo_trace_frames = 0;
static unsigned g_bootlogo_trace_seen = 0;
static unsigned g_bootlogo_trace_vdp_base = 0u;
static uint32_t g_bootlogo_trace_w9_base = 0u;
static uint32_t g_bootlogo_trace_w25_base = 0u;
static uint32_t g_bootlogo_trace_w26_base = 0u;
static uint32_t g_bootlogo_trace_w27_base = 0u;
static uint32_t g_bootlogo_trace_s2_base = 0u;
static uint32_t g_bootlogo_trace_s7_base = 0u;
static uint32_t g_bootlogo_trace_s2h_base[7];
static uint32_t g_bootlogo_trace_s2caller_base[16];
static uint32_t g_bootlogo_trace_s2caller_overflow_base = 0u;
static uint32_t g_bootlogo_trace_s2b0_base = 0u;
static uint32_t g_bootlogo_trace_s2b1_base = 0u;
static uint32_t g_bootlogo_trace_s2b6_base = 0u;
static uint32_t g_bootlogo_trace_s2e0u_base = 0u;
static uint32_t g_bootlogo_trace_s2e0d_base = 0u;
static uint32_t g_bootlogo_trace_s2e1u_base = 0u;
static uint32_t g_bootlogo_trace_s2e1d_base = 0u;
static uint32_t g_bootlogo_trace_s2e6u_base = 0u;
static uint32_t g_bootlogo_trace_s2e6d_base = 0u;
static uint32_t g_bootlogo_trace_s066_base = 0u;
static uint32_t g_bootlogo_trace_s066b5_base = 0u;
static uint32_t g_bootlogo_trace_s068_base = 0u;
static uint32_t g_bootlogo_trace_s068b5_base = 0u;
static uint32_t g_bootlogo_trace_p99_base = 0u;
static uint64_t g_bootlogo_trace_start_us = 0u;
static uint64_t g_bootlogo_trace_prev_us = 0u;
static uint32_t g_bootlogo_trace_prev_w26 = 0u;
static uint32_t g_bootlogo_trace_prev_w27 = 0u;
static uint64_t g_bootlogo_trace_dt_sum_ms = 0u;
static unsigned g_bootlogo_trace_dt_count = 0u;
static unsigned g_bootlogo_trace_dt_max_ms = 0u;
static unsigned g_bootlogo_trace_ce_hits = 0u;
static unsigned g_bootlogo_trace_tr_hits = 0u;
static uint16_t g_bootlogo_trace_last_log_pc26 = 0u;
static uint16_t g_bootlogo_trace_last_log_pc27 = 0u;
static uint8_t g_bootlogo_trace_last_log_port26 = 0u;
static uint8_t g_bootlogo_trace_last_log_port27 = 0u;
extern uint32_t FmsxVDPFrameCounter;
extern unsigned long long msxbare_monotonic_time_us(void);

static uint16_t XPal[80];
static uint16_t BPal[256];
static uint16_t XPal0;
static int PaletteFrozen = 0;
static int g_video_tables_ready = 0;

#define XBuf g_image_buffer
#define WBuf g_image_buffer
int LastScanline;

#include "fmsx_local/CommonMux.h"

#undef ColorSprites

typedef struct
{
    int horizontal_pos;
    uint8_t color_attr;
    uint16_t pattern;
    uint8_t pixels;
    uint8_t scale;
} TFmsxWideSpriteAttr;

static uint8_t g_fmsx_wide_cc_mask = 0u;
static uint8_t g_fmsx_wide_cc_check_mask = 0u;
static uint32_t g_fmsx_wide_cc_frame = ~0u;

static void fmsx_wide_sprite_line_clear(uint8_t *zbuf)
{
    memset(zbuf,0,384u);
}

static uint8_t fmsx_wide_sprite_collision_gate(int pos)
{
    return (uint8_t)((pos >= 32) && (pos < 288));
}

static void fmsx_latch_color_sprites_line_wide(uint8_t Y,uint8_t *ZBuf)
{
    static const uint8_t SprHeights[4] = { 8u,16u,16u,32u };
    TFmsxWideSpriteAttr visible[32];
    uint8_t collision_buf[384];
    uint8_t *AT;
    unsigned visible_count = 0u;
    const uint8_t OH = SprHeights[VDP[1]&0x03u];
    const uint8_t IH = SprHeights[VDP[1]&0x02u];
    const uint8_t scale = (OH>IH)? 2u:1u;
    const uint8_t all_sprites = OPTION(MSX_ALLSPRITE)? 1u:0u;
    const uint8_t solid_color0 = SolidColor0 ? 1u:0u;
    const uint8_t scr6 = (ScrMode==6) ? 1u:0u;
    const uint8_t logical_y = (uint8_t)(Y + FMSX_RENDER_VSCROLL);
    unsigned sprite;
    int collision = 0;

    fmsx_wide_sprite_line_clear(ZBuf);
    memset(collision_buf,0,sizeof(collision_buf));

    if(SpritesOFF || !FMSX_SCREEN_ON || (VDPStatus[2]&0x40u)) return;

    if(g_fmsx_wide_cc_frame != FmsxVDPFrameCounter)
    {
        g_fmsx_wide_cc_frame = FmsxVDPFrameCounter;
        g_fmsx_wide_cc_mask = g_fmsx_wide_cc_check_mask;
        g_fmsx_wide_cc_check_mask = 0xF0u;
    }

    AT = SprTab;
    for(sprite=0u;sprite<32u;++sprite,AT+=4)
    {
        int sprite_line;
        uint8_t color_attr;
        uint8_t pattern_index;
        uint8_t *pattern_ptr;
        TFmsxWideSpriteAttr *dst;

        if(AT[0]==216u) break;

        sprite_line = ((logical_y-AT[0])&0xFFu)/(int)scale;
        if((sprite_line<0)||(sprite_line>=(int)IH)) continue;

        if(visible_count>=8u && !all_sprites) break;

        color_attr = SprTab[-0x0200 + (int)(sprite<<4) + sprite_line];
        if(color_attr&0x40u)
        {
            if(visible_count==0u) continue;
            color_attr &= (uint8_t)g_fmsx_wide_cc_mask;
        }
        else if((color_attr&0x0Fu) || solid_color0)
        {
            g_fmsx_wide_cc_check_mask = 0xFFu;
        }

        pattern_index = (IH>8u)? (AT[2]&0xFCu):AT[2];
        pattern_ptr = SprGen + (((int)pattern_index)<<3) + sprite_line;

        dst = &visible[visible_count++];
        dst->horizontal_pos = (int)AT[1] + 24 - ((color_attr>>2)&0x20);
        if(IH>8u) dst->horizontal_pos += 8;
        dst->color_attr = color_attr;
        dst->pixels = IH;
        dst->scale = scale;
        if(IH>8u)
            dst->pattern = (uint16_t)(((uint16_t)pattern_ptr[0]<<8) | pattern_ptr[16]);
        else
            dst->pattern = (uint16_t)((uint16_t)pattern_ptr[0] << 8);
    }

    while(visible_count>0u)
    {
        unsigned idx = visible_count - 1u;
        TFmsxWideSpriteAttr *attr = &visible[idx];
        uint8_t color;
        uint16_t pattern;
        int offset;

        if(scr6)
            color = (uint8_t)(((attr->color_attr & 0x0Cu) << 2) | ((attr->color_attr & 0x03u) << 1) | (solid_color0 ? 0x09u : 0x00u));
        else
            color = (uint8_t)(((attr->color_attr & 0x0Fu) << 1) | (solid_color0 ? 0x01u : 0x00u));

        if(color)
        {
            pattern = attr->pattern;
            offset = (int)(attr->scale * 15u);

            if(attr->color_attr & 0x60u)
            {
                while(pattern)
                {
                    if(pattern & 1u)
                    {
                        const int pos = attr->horizontal_pos + offset;
                        if((pos >= 0) && (pos < 384)) ZBuf[pos] = color;
                        if((attr->scale > 1u) && (pos + 1 < 384) && (pos + 1 >= 0)) ZBuf[pos + 1] = color;
                    }
                    offset -= (attr->scale > 1u) ? 2 : 1;
                    pattern >>= 1;
                }
            }
            else
            {
                while(pattern)
                {
                    if(pattern & 1u)
                    {
                        const int pos = attr->horizontal_pos + offset;
                        if((pos >= 0) && (pos < 384))
                        {
                            ZBuf[pos] = color;
                            collision |= collision_buf[pos];
                            collision_buf[pos] = fmsx_wide_sprite_collision_gate(pos);
                        }
                        if(attr->scale > 1u)
                        {
                            const int pos2 = pos + 1;
                            if((pos2 >= 0) && (pos2 < 384))
                            {
                                ZBuf[pos2] = color;
                                collision |= collision_buf[pos2];
                                collision_buf[pos2] = fmsx_wide_sprite_collision_gate(pos2);
                            }
                        }
                    }
                    offset -= (attr->scale > 1u) ? 2 : 1;
                    pattern >>= 1;
                }
            }
        }

        while(idx+1u<visible_count && (visible[idx+1u].color_attr&0x40u))
        {
            TFmsxWideSpriteAttr *cc = &visible[idx+1u];
            uint8_t cc_color;
            uint16_t cc_pattern;
            int cc_offset;
            if(scr6)
                cc_color = (uint8_t)(((cc->color_attr & 0x0Cu) << 2) | ((cc->color_attr & 0x03u) << 1) | (solid_color0 ? 0x09u : 0x00u));
            else
                cc_color = (uint8_t)(((cc->color_attr & 0x0Fu) << 1) | (solid_color0 ? 0x01u : 0x00u));
            if(cc_color)
            {
                cc_pattern = cc->pattern;
                cc_offset = (int)(cc->scale * 15u);
                while(cc_pattern)
                {
                    if(cc_pattern & 1u)
                    {
                        const int pos = cc->horizontal_pos + cc_offset;
                        if((pos >= 0) && (pos < 384)) ZBuf[pos] |= cc_color;
                        if((cc->scale > 1u) && (pos + 1 >= 0) && (pos + 1 < 384)) ZBuf[pos + 1] |= cc_color;
                    }
                    cc_offset -= (cc->scale > 1u) ? 2 : 1;
                    cc_pattern >>= 1;
                }
            }
            ++idx;
        }

        visible_count = idx;
    }

    if(collision && !(VDPStatus[0] & 0x20u))
    {
        unsigned x_col;
        const uint16_t y_col = (uint16_t)(logical_y + 8u);

        for(x_col = 0u; x_col < 256u && !collision_buf[x_col + 32u]; ++x_col) {}

        x_col += 12u;
        VDPStatus[0] |= 0x20u;
        VDPStatus[3] = (uint8_t)(x_col & 0xFFu);
        VDPStatus[4] = (uint8_t)(x_col >> 8);
        VDPStatus[5] = (uint8_t)(y_col & 0xFFu);
        VDPStatus[6] = (uint8_t)(y_col >> 8);
    }
}

void FmsxLatchColorSpritesLine(uint8_t Y,uint8_t *ZBuf)
{
    if((ScrMode==6)||(ScrMode==7))
        fmsx_latch_color_sprites_line_wide(Y,ZBuf);
    else
        ColorSprites(Y,ZBuf);
}

static volatile u8 g_bridge_bits = 0;
static uint8_t g_sram_disk_blob[(64 * 1024) + 1];
uint8_t *sram_disk_ptr = &g_sram_disk_blob[1];

#define FMSX_AUDIO_RING_SAMPLES (48000u * 2u)
#define FMSX_AUDIO_RATE 48000u
#define FMSX_AUDIO_MAX_LATENCY_SAMPLES 6000u
#define FMSX_AUDIO_MAX_TRIM_PER_PULL   800u
static int16_t g_audio_ring[FMSX_AUDIO_RING_SAMPLES];
static volatile unsigned g_audio_wpos = 0;
static volatile unsigned g_audio_rpos = 0;
static volatile unsigned g_audio_write_calls = 0;
static volatile unsigned g_audio_samples_written = 0;
static volatile unsigned g_audio_samples_pulled = 0;
static volatile unsigned g_audio_drop_count = 0;
static volatile unsigned g_audio_overwrite_samples = 0;
static volatile unsigned g_audio_trim_events = 0;
static volatile unsigned g_audio_trim_samples = 0;
static volatile unsigned g_audio_short_pulls = 0;
static volatile unsigned g_audio_underrun_samples = 0;
static volatile unsigned g_audio_source_peak = 0;
static volatile unsigned g_audio_source_nonzero = 0;
static volatile unsigned g_audio_ring_peak = 0;
static volatile unsigned g_audio_last_pull_requested = 0;
static volatile unsigned g_audio_last_pull_returned = 0;
static volatile unsigned g_audio_last_level_before_pull = 0;
static volatile unsigned g_audio_last_level_after_pull = 0;
static volatile unsigned g_audio_last_trim_samples = 0;
static unsigned g_audio_frame_rendered_samples = 0u;
static volatile unsigned g_audio_last_sync_rendered_samples = 0u;
static volatile unsigned g_audio_last_render_batch = 0u;
static volatile unsigned g_audio_max_render_batch = 0u;
static uint64_t g_audio_cycle_carry = 0u;
static uint64_t g_audio_last_cycle_stamp = 0u;
static volatile unsigned g_kbd_last_hid = 0;
static volatile unsigned g_kbd_last_msx = 0;
typedef struct
{
    u8 modifiers;
    unsigned char raw_keys[6];
} TFmsxQueuedKeyboardReport;

enum
{
    FMSX_KBD_RUNTIME_QUEUE_CAPACITY = 64u
};

static volatile unsigned g_kbd_runtime_write_seq = 0u;
static volatile unsigned g_kbd_runtime_read_seq = 0u;
static volatile unsigned g_kbd_runtime_dropped = 0u;
static TFmsxQueuedKeyboardReport g_kbd_runtime_queue[FMSX_KBD_RUNTIME_QUEUE_CAPACITY];
static uint8_t g_kbd_stable_state[16] =
{
    0xFFu, 0xFFu, 0xFFu, 0xFFu,
    0xFFu, 0xFFu, 0xFFu, 0xFFu,
    0xFFu, 0xFFu, 0xFFu, 0xFFu,
    0xFFu, 0xFFu, 0xFFu, 0xFFu
};
static uint8_t g_kbd_candidate_state[16] =
{
    0xFFu, 0xFFu, 0xFFu, 0xFFu,
    0xFFu, 0xFFu, 0xFFu, 0xFFu,
    0xFFu, 0xFFu, 0xFFu, 0xFFu,
    0xFFu, 0xFFu, 0xFFu, 0xFFu
};
static uint8_t g_kbd_candidate_seen = 0u;

static void fmsx_keyboard_press_code(uint8_t matrix[16], unsigned code);
static void fmsx_keyboard_build_desired_state(u8 modifiers, const unsigned char raw_keys[6], uint8_t desired_state[16]);
static unsigned fmsx_keyboard_report_last_msx_code(const unsigned char raw_keys[6], unsigned *last_hid);
static int fmsx_keyboard_code_is_new_press(const uint8_t desired_state[16], const uint8_t stable_state[16], unsigned code);
static int fmsx_keyboard_change_has_gameplay_press(const uint8_t desired_state[16], const uint8_t stable_state[16]);
static unsigned fmsx_code_from_hid(u8 hid);
static void fmsx_keyboard_canonicalize_raw(unsigned char raw_keys[6]);
static int fmsx_keyboard_report_equals(u8 modifiers_a, const unsigned char raw_a[6],
                                       u8 modifiers_b, const unsigned char raw_b[6]);

static int fmsx_keyboard_change_has_new_press(const uint8_t desired_state[16], const uint8_t stable_state[16])
{
    for (unsigned i = 0u; i < 16u; ++i)
    {
        const uint8_t press_mask = (uint8_t) (stable_state[i] & (uint8_t) ~desired_state[i]); /* 1->0 */
        if (press_mask != 0u)
        {
            return 1;
        }
    }
    return 0;
}

static int fmsx_keyboard_change_has_release(const uint8_t desired_state[16], const uint8_t stable_state[16])
{
    for (unsigned i = 0u; i < 16u; ++i)
    {
        const uint8_t release_mask = (uint8_t) (desired_state[i] & (uint8_t) ~stable_state[i]); /* 0->1 */
        if (release_mask != 0u)
        {
            return 1;
        }
    }
    return 0;
}

static void fmsx_uart_put_uint(unsigned value)
{
    char buffer[10];
    unsigned i = 0u;

    if (value == 0u)
    {
        msxbare_uart_write("0");
        return;
    }

    while (value && i < sizeof(buffer))
    {
        buffer[i++] = (char) ('0' + (value % 10u));
        value /= 10u;
    }

    while (i > 0u)
    {
        char out[2];
        out[0] = buffer[--i];
        out[1] = '\0';
        msxbare_uart_write(out);
    }
}

static void fmsx_uart_put_uint3(unsigned value)
{
    char out[4];
    out[0] = (char) ('0' + ((value / 100u) % 10u));
    out[1] = (char) ('0' + ((value / 10u) % 10u));
    out[2] = (char) ('0' + (value % 10u));
    out[3] = '\0';
    msxbare_uart_write(out);
}

static void fmsx_uart_put_hex8(unsigned value)
{
    static const char hex[] = "0123456789ABCDEF";
    char out[3];
    out[0] = hex[(value >> 4u) & 0x0Fu];
    out[1] = hex[value & 0x0Fu];
    out[2] = '\0';
    msxbare_uart_write(out);
}

static void fmsx_uart_put_hex16(unsigned value)
{
    static const char hex[] = "0123456789ABCDEF";
    char out[5];
    out[0] = hex[(value >> 12u) & 0x0Fu];
    out[1] = hex[(value >> 8u) & 0x0Fu];
    out[2] = hex[(value >> 4u) & 0x0Fu];
    out[3] = hex[value & 0x0Fu];
    out[4] = '\0';
    msxbare_uart_write(out);
}

static uint16_t fmsx_uart_linear_bootlogo_pc(uint16_t pc)
{
    /*
     * Keep the UART interpretation conservative: only project the standard
     * 0x4000..0x7FFF slot window back into a linear 16KB ROM offset. Raw PCs
     * remain the source of truth; the linear form is only an offline hint when
     * the bytes still map directly to a ROM image.
     */
    if ((pc >= 0x4000u) && (pc < 0x8000u))
    {
        return (uint16_t)(pc - 0x4000u);
    }
    return pc;
}

static void fmsx_uart_put_bootlogo_pc_bytes(uint16_t pc)
{
    for (unsigned i = 0u; i < 4u; ++i)
    {
        if (i != 0u)
        {
            msxbare_uart_write(".");
        }
        fmsx_uart_put_hex8(RdZ80((uint16_t) (pc + i)) & 0xFFu);
    }
}

static void fmsx_uart_trace_bootlogo_s2_callers(void)
{
    unsigned top_idx[4] = { 0xFFFFFFFFu, 0xFFFFFFFFu, 0xFFFFFFFFu, 0xFFFFFFFFu };
    unsigned top_count[4] = { 0u, 0u, 0u, 0u };
    unsigned i, j;

    for (i = 0u; i < 16u; ++i)
    {
        const unsigned delta = (unsigned) (FmsxVDPS2CallerCount[i] - g_bootlogo_trace_s2caller_base[i]);
        if (delta == 0u)
        {
            continue;
        }

        for (j = 0u; j < 4u; ++j)
        {
            if (delta > top_count[j])
            {
                unsigned k;
                for (k = 3u; k > j; --k)
                {
                    top_count[k] = top_count[k - 1u];
                    top_idx[k] = top_idx[k - 1u];
                }
                top_count[j] = delta;
                top_idx[j] = i;
                break;
            }
        }
    }

    for (i = 0u; i < 4u; ++i)
    {
        msxbare_uart_write(" C");
        fmsx_uart_put_uint(i);
        msxbare_uart_write(":");
        if (top_idx[i] == 0xFFFFFFFFu)
        {
            fmsx_uart_put_hex16(0u);
            msxbare_uart_write("/");
            fmsx_uart_put_uint(0u);
        }
        else
        {
            fmsx_uart_put_hex16(FmsxVDPS2CallerPC[top_idx[i]] & 0xFFFFu);
            msxbare_uart_write("/");
            fmsx_uart_put_uint(top_count[i] > 999u ? 999u : top_count[i]);
        }
    }

    msxbare_uart_write(" CO:");
    {
        const unsigned overflow = (unsigned) (FmsxVDPS2CallerOverflowCount - g_bootlogo_trace_s2caller_overflow_base);
        fmsx_uart_put_uint(overflow > 999u ? 999u : overflow);
    }
}

static void fmsx_uart_trace_bootlogo_s2_caller_bytes(void)
{
    unsigned top_idx[3] = { 0xFFFFFFFFu, 0xFFFFFFFFu, 0xFFFFFFFFu };
    unsigned top_count[3] = { 0u, 0u, 0u };
    unsigned i, j;

    for (i = 0u; i < 16u; ++i)
    {
        const unsigned delta = (unsigned) (FmsxVDPS2CallerCount[i] - g_bootlogo_trace_s2caller_base[i]);
        if (delta == 0u)
        {
            continue;
        }

        for (j = 0u; j < 3u; ++j)
        {
            if (delta > top_count[j])
            {
                unsigned k;
                for (k = 2u; k > j; --k)
                {
                    top_count[k] = top_count[k - 1u];
                    top_idx[k] = top_idx[k - 1u];
                }
                top_count[j] = delta;
                top_idx[j] = i;
                break;
            }
        }
    }

    msxbare_uart_write("BL238C");
    for (i = 0u; i < 3u; ++i)
    {
        msxbare_uart_write(" C");
        fmsx_uart_put_uint(i);
        msxbare_uart_write("R:");
        if (top_idx[i] == 0xFFFFFFFFu)
        {
            fmsx_uart_put_hex16(0u);
            msxbare_uart_write(" L:");
            fmsx_uart_put_hex16(0u);
            msxbare_uart_write(" B:");
            fmsx_uart_put_bootlogo_pc_bytes(0u);
        }
        else
        {
            const uint16_t raw_pc = FmsxVDPS2CallerPC[top_idx[i]] & 0xFFFFu;
            fmsx_uart_put_hex16(raw_pc);
            msxbare_uart_write(" L:");
            fmsx_uart_put_hex16(fmsx_uart_linear_bootlogo_pc(raw_pc));
            msxbare_uart_write(" B:");
            fmsx_uart_put_bootlogo_pc_bytes(raw_pc);
        }
    }
    msxbare_uart_write("\n");
}

static void fmsx_uart_trace_bootlogo_reg_init(unsigned reg)
{
    msxbare_uart_write(" R");
    fmsx_uart_put_uint(reg > 99u ? 99u : reg);
    msxbare_uart_write(":");
    fmsx_uart_put_hex8(VDP[reg] & 0xFFu);
    msxbare_uart_write(" A:");
    fmsx_uart_put_uint(FmsxVDPRegWriteCount[reg] > 999u ? 999u : (unsigned) FmsxVDPRegWriteCount[reg]);
    msxbare_uart_write(" P:");
    fmsx_uart_put_hex8(FmsxVDPRegLastWritePort[reg] & 0xFFu);
    msxbare_uart_write(" PC:");
    fmsx_uart_put_hex16(FmsxVDPRegLastWritePC[reg] & 0xFFFFu);
    msxbare_uart_write(" L:");
    fmsx_uart_put_hex16(fmsx_uart_linear_bootlogo_pc(FmsxVDPRegLastWritePC[reg] & 0xFFFFu));
    msxbare_uart_write(" SL:");
    fmsx_uart_put_uint(FmsxVDPRegLastWriteLine[reg] > 999u ? 999u : FmsxVDPRegLastWriteLine[reg]);
    msxbare_uart_write(" O:");
    fmsx_uart_put_hex8(FmsxVDPRegLastWriteOld[reg] & 0xFFu);
    msxbare_uart_write(" V:");
    fmsx_uart_put_hex8(FmsxVDPRegLastWriteNew[reg] & 0xFFu);
}

static void fmsx_uart_trace_bootlogo_frame(unsigned present_frame)
{
    const uint64_t now_us = (uint64_t) msxbare_monotonic_time_us();
    const unsigned delta_ms = g_bootlogo_trace_prev_us != 0u
        ? (unsigned) ((now_us - g_bootlogo_trace_prev_us) / 1000u)
        : 0u;
    const unsigned ce = (VDPStatus[2] & 0x01u) ? 1u : 0u;
    const unsigned tr = (VDPStatus[2] & 0x80u) ? 1u : 0u;
    const unsigned w9 = (unsigned) (FmsxVDPRegWriteCount[9] - g_bootlogo_trace_w9_base);
    const unsigned w25 = (unsigned) (FmsxVDPRegWriteCount[25] - g_bootlogo_trace_w25_base);
    const unsigned w26 = (unsigned) (FmsxVDPRegWriteCount[26] - g_bootlogo_trace_w26_base);
    const unsigned w27 = (unsigned) (FmsxVDPRegWriteCount[27] - g_bootlogo_trace_w27_base);
    const unsigned s2 = (unsigned) (FmsxVDPStatusReadCount[2] - g_bootlogo_trace_s2_base);
    const unsigned s7 = (unsigned) (FmsxVDPStatusReadCount[7] - g_bootlogo_trace_s7_base);
    const unsigned p99 = (unsigned) (FmsxVDPPort99ReadCount - g_bootlogo_trace_p99_base);
    const unsigned w26_step = w26 >= g_bootlogo_trace_prev_w26 ? (w26 - g_bootlogo_trace_prev_w26) : 0u;
    const unsigned w27_step = w27 >= g_bootlogo_trace_prev_w27 ? (w27 - g_bootlogo_trace_prev_w27) : 0u;

    g_bootlogo_trace_prev_us = now_us;
    if (present_frame > 1u)
    {
        g_bootlogo_trace_dt_sum_ms += delta_ms;
        g_bootlogo_trace_dt_count++;
        if (delta_ms > g_bootlogo_trace_dt_max_ms)
        {
            g_bootlogo_trace_dt_max_ms = delta_ms;
        }
    }
    if (ce) g_bootlogo_trace_ce_hits++;
    if (tr) g_bootlogo_trace_tr_hits++;

    if (present_frame == 1u)
    {
        msxbare_uart_write("BL238I");
        fmsx_uart_trace_bootlogo_reg_init(9u);
        fmsx_uart_trace_bootlogo_reg_init(25u);
        fmsx_uart_trace_bootlogo_reg_init(26u);
        fmsx_uart_trace_bootlogo_reg_init(27u);
        msxbare_uart_write("\n");
    }

    if (w26_step != 0u || w27_step != 0u)
    {
        const unsigned wr26_frame = (unsigned) FmsxVDPRegLastWriteFrame[26];
        const unsigned wr27_frame = (unsigned) FmsxVDPRegLastWriteFrame[27];
        const unsigned wr26_vf = wr26_frame >= g_bootlogo_trace_vdp_base
            ? (wr26_frame - g_bootlogo_trace_vdp_base + 1u)
            : 0u;
        const unsigned wr27_vf = wr27_frame >= g_bootlogo_trace_vdp_base
            ? (wr27_frame - g_bootlogo_trace_vdp_base + 1u)
            : 0u;
        const int origin_changed =
            (FmsxVDPRegLastWritePort[26] != g_bootlogo_trace_last_log_port26) ||
            (FmsxVDPRegLastWritePort[27] != g_bootlogo_trace_last_log_port27) ||
            (FmsxVDPRegLastWritePC[26] != g_bootlogo_trace_last_log_pc26) ||
            (FmsxVDPRegLastWritePC[27] != g_bootlogo_trace_last_log_pc27);

        if (origin_changed)
        {
            msxbare_uart_write("BL238R F:");
            fmsx_uart_put_uint3(present_frame);
            msxbare_uart_write(" D26:");
            fmsx_uart_put_uint(w26_step > 999u ? 999u : w26_step);
            msxbare_uart_write(" P26:");
            fmsx_uart_put_hex8(FmsxVDPRegLastWritePort[26] & 0xFFu);
            msxbare_uart_write(" PC26:");
            fmsx_uart_put_hex16(FmsxVDPRegLastWritePC[26] & 0xFFFFu);
            msxbare_uart_write(" L26:");
            fmsx_uart_put_hex16(fmsx_uart_linear_bootlogo_pc(FmsxVDPRegLastWritePC[26] & 0xFFFFu));
            msxbare_uart_write(" SL26:");
            fmsx_uart_put_uint(FmsxVDPRegLastWriteLine[26] > 999u ? 999u : FmsxVDPRegLastWriteLine[26]);
            msxbare_uart_write(" VF26:");
            fmsx_uart_put_uint3(wr26_vf > 999u ? 999u : wr26_vf);
            msxbare_uart_write(" O26:");
            fmsx_uart_put_hex8(FmsxVDPRegLastWriteOld[26] & 0xFFu);
            msxbare_uart_write(" V26:");
            fmsx_uart_put_hex8(FmsxVDPRegLastWriteNew[26] & 0xFFu);
            msxbare_uart_write(" D27:");
            fmsx_uart_put_uint(w27_step > 999u ? 999u : w27_step);
            msxbare_uart_write(" P27:");
            fmsx_uart_put_hex8(FmsxVDPRegLastWritePort[27] & 0xFFu);
            msxbare_uart_write(" PC27:");
            fmsx_uart_put_hex16(FmsxVDPRegLastWritePC[27] & 0xFFFFu);
            msxbare_uart_write(" L27:");
            fmsx_uart_put_hex16(fmsx_uart_linear_bootlogo_pc(FmsxVDPRegLastWritePC[27] & 0xFFFFu));
            msxbare_uart_write(" SL27:");
            fmsx_uart_put_uint(FmsxVDPRegLastWriteLine[27] > 999u ? 999u : FmsxVDPRegLastWriteLine[27]);
            msxbare_uart_write(" VF27:");
            fmsx_uart_put_uint3(wr27_vf > 999u ? 999u : wr27_vf);
            msxbare_uart_write(" O27:");
            fmsx_uart_put_hex8(FmsxVDPRegLastWriteOld[27] & 0xFFu);
            msxbare_uart_write(" V27:");
            fmsx_uart_put_hex8(FmsxVDPRegLastWriteNew[27] & 0xFFu);
            msxbare_uart_write("\n");

            g_bootlogo_trace_last_log_port26 = FmsxVDPRegLastWritePort[26];
            g_bootlogo_trace_last_log_port27 = FmsxVDPRegLastWritePort[27];
            g_bootlogo_trace_last_log_pc26 = FmsxVDPRegLastWritePC[26];
            g_bootlogo_trace_last_log_pc27 = FmsxVDPRegLastWritePC[27];
        }
    }

    g_bootlogo_trace_prev_w26 = w26;
    g_bootlogo_trace_prev_w27 = w27;

    if (present_frame == 96u || (present_frame > 96u && (present_frame % 256u) == 0u))
    {
        const unsigned avg_dt = g_bootlogo_trace_dt_count != 0u
            ? (unsigned) (g_bootlogo_trace_dt_sum_ms / g_bootlogo_trace_dt_count)
            : 0u;
        const unsigned s2_10d8 = (unsigned) (FmsxVDPS2HelperReadCount[0] - g_bootlogo_trace_s2h_base[0]);
        const unsigned s2_10e1 = (unsigned) (FmsxVDPS2HelperReadCount[1] - g_bootlogo_trace_s2h_base[1]);
        const unsigned s2_363d = (unsigned) (FmsxVDPS2HelperReadCount[2] - g_bootlogo_trace_s2h_base[2]);
        const unsigned s2_3646 = (unsigned) (FmsxVDPS2HelperReadCount[3] - g_bootlogo_trace_s2h_base[3]);
        const unsigned s2_2be6 = (unsigned) (FmsxVDPS2HelperReadCount[4] - g_bootlogo_trace_s2h_base[4]);
        const unsigned s2_2279 = (unsigned) (FmsxVDPS2HelperReadCount[5] - g_bootlogo_trace_s2h_base[5]);
        const unsigned s2_other = (unsigned) (FmsxVDPS2HelperReadCount[6] - g_bootlogo_trace_s2h_base[6]);
        const unsigned s2_b0 = (unsigned) (FmsxVDPS2Bit0SetCount - g_bootlogo_trace_s2b0_base);
        const unsigned s2_b1 = (unsigned) (FmsxVDPS2Bit1SetCount - g_bootlogo_trace_s2b1_base);
        const unsigned s2_b6 = (unsigned) (FmsxVDPS2Bit6SetCount - g_bootlogo_trace_s2b6_base);
        const unsigned s2_e0u = (unsigned) (FmsxVDPS2Bit0RiseCount - g_bootlogo_trace_s2e0u_base);
        const unsigned s2_e0d = (unsigned) (FmsxVDPS2Bit0FallCount - g_bootlogo_trace_s2e0d_base);
        const unsigned s2_e1u = (unsigned) (FmsxVDPS2Bit1RiseCount - g_bootlogo_trace_s2e1u_base);
        const unsigned s2_e1d = (unsigned) (FmsxVDPS2Bit1FallCount - g_bootlogo_trace_s2e1d_base);
        const unsigned s2_e6u = (unsigned) (FmsxVDPS2Bit6RiseCount - g_bootlogo_trace_s2e6u_base);
        const unsigned s2_e6d = (unsigned) (FmsxVDPS2Bit6FallCount - g_bootlogo_trace_s2e6d_base);
        const unsigned s066 = (unsigned) (FmsxVDPStatus0Read7A66Count - g_bootlogo_trace_s066_base);
        const unsigned s066b5 = (unsigned) (FmsxVDPStatus0Read7A66Bit5Count - g_bootlogo_trace_s066b5_base);
        const unsigned s068 = (unsigned) (FmsxVDPStatus0Read7A68Count - g_bootlogo_trace_s068_base);
        const unsigned s068b5 = (unsigned) (FmsxVDPStatus0Read7A68Bit5Count - g_bootlogo_trace_s068b5_base);
        msxbare_uart_write((present_frame == 96u) ? "BL238S F:" : "BL238P F:");
        fmsx_uart_put_uint3(present_frame);
        msxbare_uart_write(" AVG:");
        fmsx_uart_put_uint3(avg_dt > 999u ? 999u : avg_dt);
        msxbare_uart_write(" MAX:");
        fmsx_uart_put_uint3(g_bootlogo_trace_dt_max_ms > 999u ? 999u : g_bootlogo_trace_dt_max_ms);
        msxbare_uart_write(" CE:");
        fmsx_uart_put_uint(g_bootlogo_trace_ce_hits > 999u ? 999u : g_bootlogo_trace_ce_hits);
        msxbare_uart_write(" TR:");
        fmsx_uart_put_uint(g_bootlogo_trace_tr_hits > 999u ? 999u : g_bootlogo_trace_tr_hits);
        msxbare_uart_write(" R9:");
        fmsx_uart_put_hex8(VDP[9] & 0xFFu);
        msxbare_uart_write(" R25:");
        fmsx_uart_put_hex8(VDP[25] & 0xFFu);
        msxbare_uart_write(" R26:");
        fmsx_uart_put_hex8(VDP[26] & 0xFFu);
        msxbare_uart_write(" R27:");
        fmsx_uart_put_hex8(VDP[27] & 0xFFu);
        msxbare_uart_write(" W26:");
        fmsx_uart_put_uint(w26 > 999u ? 999u : w26);
        msxbare_uart_write(" W27:");
        fmsx_uart_put_uint(w27 > 999u ? 999u : w27);
        msxbare_uart_write(" S2:");
        fmsx_uart_put_uint(s2 > 999u ? 999u : s2);
        msxbare_uart_write(" S7:");
        fmsx_uart_put_uint(s7 > 999u ? 999u : s7);
        msxbare_uart_write(" P99:");
        fmsx_uart_put_uint(p99 > 999u ? 999u : p99);
        msxbare_uart_write(" H10L:");
        fmsx_uart_put_uint(s2_10d8 > 999u ? 999u : s2_10d8);
        msxbare_uart_write(" H10H:");
        fmsx_uart_put_uint(s2_10e1 > 999u ? 999u : s2_10e1);
        msxbare_uart_write(" H36H:");
        fmsx_uart_put_uint(s2_363d > 999u ? 999u : s2_363d);
        msxbare_uart_write(" H36L:");
        fmsx_uart_put_uint(s2_3646 > 999u ? 999u : s2_3646);
        msxbare_uart_write(" H2BE:");
        fmsx_uart_put_uint(s2_2be6 > 999u ? 999u : s2_2be6);
        msxbare_uart_write(" H227:");
        fmsx_uart_put_uint(s2_2279 > 999u ? 999u : s2_2279);
        msxbare_uart_write(" HOTH:");
        fmsx_uart_put_uint(s2_other > 999u ? 999u : s2_other);
        msxbare_uart_write(" B0:");
        fmsx_uart_put_uint(s2_b0 > 999u ? 999u : s2_b0);
        msxbare_uart_write(" B1:");
        fmsx_uart_put_uint(s2_b1 > 999u ? 999u : s2_b1);
        msxbare_uart_write(" B6:");
        fmsx_uart_put_uint(s2_b6 > 999u ? 999u : s2_b6);
        msxbare_uart_write(" E0:");
        fmsx_uart_put_uint(s2_e0u > 999u ? 999u : s2_e0u);
        msxbare_uart_write("/");
        fmsx_uart_put_uint(s2_e0d > 999u ? 999u : s2_e0d);
        msxbare_uart_write(" E1:");
        fmsx_uart_put_uint(s2_e1u > 999u ? 999u : s2_e1u);
        msxbare_uart_write("/");
        fmsx_uart_put_uint(s2_e1d > 999u ? 999u : s2_e1d);
        msxbare_uart_write(" E6:");
        fmsx_uart_put_uint(s2_e6u > 999u ? 999u : s2_e6u);
        msxbare_uart_write("/");
        fmsx_uart_put_uint(s2_e6d > 999u ? 999u : s2_e6d);
        msxbare_uart_write(" S66:");
        fmsx_uart_put_uint(s066 > 999u ? 999u : s066);
        msxbare_uart_write("/");
        fmsx_uart_put_uint(s066b5 > 999u ? 999u : s066b5);
        msxbare_uart_write(" S68:");
        fmsx_uart_put_uint(s068 > 999u ? 999u : s068);
        msxbare_uart_write("/");
        fmsx_uart_put_uint(s068b5 > 999u ? 999u : s068b5);
        fmsx_uart_trace_bootlogo_s2_callers();
        msxbare_uart_write("\n");
        fmsx_uart_trace_bootlogo_s2_caller_bytes();
    }
}

static unsigned fmsx_audio_ring_level_current(void)
{
    if (g_audio_wpos >= g_audio_rpos)
    {
        return g_audio_wpos - g_audio_rpos;
    }
    return (FMSX_AUDIO_RING_SAMPLES - g_audio_rpos) + g_audio_wpos;
}

static void fmsx_keyboard_clear_all(void)
{
    for (unsigned i = 0; i < 16u; ++i)
    {
        KeyState[i] = 0xFFu;
    }
}

static unsigned fmsx_runtime_keyboard_queue_oldest_seq(void)
{
    const unsigned write_seq = g_kbd_runtime_write_seq;
    return (write_seq > FMSX_KBD_RUNTIME_QUEUE_CAPACITY)
        ? (write_seq - FMSX_KBD_RUNTIME_QUEUE_CAPACITY)
        : 0u;
}

static void fmsx_runtime_keyboard_queue_push(u8 modifiers, const unsigned char raw_keys[6])
{
    unsigned char canonical_raw[6];
    for (unsigned i = 0u; i < 6u; ++i)
    {
        canonical_raw[i] = raw_keys ? raw_keys[i] : 0u;
    }
    fmsx_keyboard_canonicalize_raw(canonical_raw);

    const unsigned write_seq_before = g_kbd_runtime_write_seq;
    const unsigned read_seq_before = g_kbd_runtime_read_seq;

    if (write_seq_before > read_seq_before)
    {
        const unsigned newest_seq = write_seq_before - 1u;
        const unsigned newest_slot = newest_seq % FMSX_KBD_RUNTIME_QUEUE_CAPACITY;
        if (fmsx_keyboard_report_equals(modifiers, canonical_raw,
                                        g_kbd_runtime_queue[newest_slot].modifiers,
                                        g_kbd_runtime_queue[newest_slot].raw_keys))
        {
            return;
        }
    }
    const unsigned write_seq = g_kbd_runtime_write_seq;
    const unsigned slot = write_seq % FMSX_KBD_RUNTIME_QUEUE_CAPACITY;

    g_kbd_runtime_queue[slot].modifiers = modifiers;
    for (unsigned i = 0u; i < 6u; ++i)
    {
        g_kbd_runtime_queue[slot].raw_keys[i] = canonical_raw[i];
    }

    g_kbd_runtime_write_seq = write_seq + 1u;

    const unsigned oldest_seq = fmsx_runtime_keyboard_queue_oldest_seq();
    if (g_kbd_runtime_read_seq < oldest_seq)
    {
        g_kbd_runtime_dropped += oldest_seq - g_kbd_runtime_read_seq;
        g_kbd_runtime_read_seq = oldest_seq;
    }

}

static void fmsx_runtime_apply_keyboard_raw(u8 modifiers, const unsigned char raw_keys[6])
{
    uint8_t desired_state[16];
    for (unsigned i = 0; i < 16u; ++i)
    {
        desired_state[i] = 0xFFu;
    }

    if (modifiers & 0x22u)
    {
        fmsx_keyboard_press_code(desired_state, KBD_SHIFT);
    }
    if (modifiers & 0x11u)
    {
        fmsx_keyboard_press_code(desired_state, KBD_CONTROL);
    }
    if (modifiers & 0x44u)
    {
        fmsx_keyboard_press_code(desired_state, KBD_GRAPH);
    }

    if (raw_keys)
    {
        for (unsigned i = 0u; i < 6u; ++i)
        {
            const u8 hid = raw_keys[i];
            if (hid == 0u)
            {
                continue;
            }

            const unsigned code = fmsx_code_from_hid(hid);
            if (code != 0u)
            {
                fmsx_keyboard_press_code(desired_state, code);
                g_kbd_last_hid = hid;
                g_kbd_last_msx = code;
            }
        }
    }

    /*
     * Keyboard stabilization policy:
     * - Release transitions are applied immediately (avoid stuck keys/repeat).
     * - Pure press-only transitions require one confirmation report to suppress
     *   occasional one-report USB glitches.
     */
    if (memcmp(desired_state, g_kbd_stable_state, sizeof desired_state) == 0)
    {
        g_kbd_candidate_seen = 0u;
    }
    else
    {
        const int has_press = fmsx_keyboard_change_has_new_press(desired_state, g_kbd_stable_state);
        const int has_release = fmsx_keyboard_change_has_release(desired_state, g_kbd_stable_state);
        const int press_only = has_press && !has_release;

        if (!press_only)
        {
            memcpy(g_kbd_stable_state, desired_state, sizeof desired_state);
            g_kbd_candidate_seen = 0u;
        }
        else if (memcmp(desired_state, g_kbd_candidate_state, sizeof desired_state) == 0 && g_kbd_candidate_seen != 0u)
        {
            memcpy(g_kbd_stable_state, desired_state, sizeof desired_state);
            g_kbd_candidate_seen = 0u;
        }
        else
        {
            memcpy(g_kbd_candidate_state, desired_state, sizeof desired_state);
            g_kbd_candidate_seen = 1u;
        }
    }
    memcpy((void *) KeyState, g_kbd_stable_state, sizeof g_kbd_stable_state);
}

void fmsx_runtime_keyboard_reset_pipeline(void)
{
    g_kbd_runtime_write_seq = 0u;
    g_kbd_runtime_read_seq = 0u;
    g_kbd_runtime_dropped = 0u;
    g_kbd_candidate_seen = 0u;
    for (unsigned i = 0u; i < 16u; ++i)
    {
        g_kbd_stable_state[i] = 0xFFu;
        g_kbd_candidate_state[i] = 0xFFu;
    }
    for (unsigned i = 0u; i < FMSX_KBD_RUNTIME_QUEUE_CAPACITY; ++i)
    {
        g_kbd_runtime_queue[i].modifiers = 0u;
        for (unsigned j = 0u; j < 6u; ++j)
        {
            g_kbd_runtime_queue[i].raw_keys[j] = 0u;
        }
    }
    fmsx_keyboard_clear_all();
}

static void fmsx_keyboard_press_code(uint8_t matrix[16], unsigned code)
{
    if (code <= 0x88u)
    {
        matrix[Keys[code][0]] &= (uint8_t) ~Keys[code][1];
    }
}

static void fmsx_keyboard_build_desired_state(u8 modifiers, const unsigned char raw_keys[6], uint8_t desired_state[16])
{
    for (unsigned i = 0u; i < 16u; ++i)
    {
        desired_state[i] = 0xFFu;
    }

    if (modifiers & 0x22u)
    {
        fmsx_keyboard_press_code(desired_state, KBD_SHIFT);
    }
    if (modifiers & 0x11u)
    {
        fmsx_keyboard_press_code(desired_state, KBD_CONTROL);
    }
    if (modifiers & 0x44u)
    {
        fmsx_keyboard_press_code(desired_state, KBD_GRAPH);
    }

    if (raw_keys)
    {
        for (unsigned i = 0u; i < 6u; ++i)
        {
            const unsigned code = fmsx_code_from_hid(raw_keys[i]);
            if (code != 0u)
            {
                fmsx_keyboard_press_code(desired_state, code);
            }
        }
    }
}

static unsigned fmsx_keyboard_report_last_msx_code(const unsigned char raw_keys[6], unsigned *last_hid)
{
    unsigned found_hid = 0u;
    unsigned found_msx = 0u;

    if (raw_keys)
    {
        for (unsigned i = 0u; i < 6u; ++i)
        {
            const u8 hid = raw_keys[i];
            const unsigned code = fmsx_code_from_hid(hid);
            if (code != 0u)
            {
                found_hid = hid;
                found_msx = code;
            }
        }
    }

    if (last_hid)
    {
        *last_hid = found_hid;
    }
    return found_msx;
}

static int fmsx_keyboard_code_is_new_press(const uint8_t desired_state[16], const uint8_t stable_state[16], unsigned code)
{
    if (code > 0x88u)
    {
        return 0;
    }

    const unsigned row = Keys[code][0];
    const uint8_t mask = (uint8_t) Keys[code][1];
    return ((stable_state[row] & mask) != 0u) && ((desired_state[row] & mask) == 0u);
}

static int fmsx_keyboard_change_has_gameplay_press(const uint8_t desired_state[16], const uint8_t stable_state[16])
{
    static const unsigned kGameplayCodes[] =
    {
        KBD_LEFT, KBD_UP, KBD_RIGHT, KBD_DOWN,
        KBD_SHIFT, KBD_CONTROL, KBD_GRAPH, KBD_SPACE
    };

    for (unsigned i = 0u; i < sizeof(kGameplayCodes) / sizeof(kGameplayCodes[0]); ++i)
    {
        if (fmsx_keyboard_code_is_new_press(desired_state, stable_state, kGameplayCodes[i]))
        {
            return 1;
        }
    }
    return 0;
}

static void fmsx_keyboard_canonicalize_raw(unsigned char raw_keys[6])
{
    if (raw_keys == 0)
    {
        return;
    }

    unsigned n = 0u;
    unsigned char compact[6];
    for (unsigned i = 0u; i < 6u; ++i)
    {
        const unsigned char key = raw_keys[i];
        if (key != 0u)
        {
            compact[n++] = key;
        }
    }

    for (unsigned i = 0u; i < n; ++i)
    {
        for (unsigned j = i + 1u; j < n; ++j)
        {
            if (compact[j] < compact[i])
            {
                const unsigned char tmp = compact[i];
                compact[i] = compact[j];
                compact[j] = tmp;
            }
        }
    }

    for (unsigned i = 0u; i < n; ++i)
    {
        raw_keys[i] = compact[i];
    }
    for (unsigned i = n; i < 6u; ++i)
    {
        raw_keys[i] = 0u;
    }
}

static int fmsx_keyboard_report_equals(u8 modifiers_a, const unsigned char raw_a[6],
                                       u8 modifiers_b, const unsigned char raw_b[6])
{
    if (modifiers_a != modifiers_b)
    {
        return 0;
    }

    for (unsigned i = 0u; i < 6u; ++i)
    {
        const unsigned char a = raw_a ? raw_a[i] : 0u;
        const unsigned char b = raw_b ? raw_b[i] : 0u;
        if (a != b)
        {
            return 0;
        }
    }

    return 1;
}

static unsigned fmsx_code_from_hid(u8 hid)
{
    if (hid >= 0x04u && hid <= 0x1Du)
    {
        return (unsigned) ('a' + (hid - 0x04u));
    }

    if (hid >= 0x1Eu && hid <= 0x26u)
    {
        return (unsigned) ('1' + (hid - 0x1Eu));
    }

    if (hid == 0x27u) return (unsigned) '0';
    if (hid == 0x28u) return KBD_ENTER;
    if (hid == 0x29u) return KBD_ESCAPE;
    if (hid == 0x2Au) return KBD_BS;
    if (hid == 0x2Bu) return KBD_TAB;
    if (hid == 0x2Cu) return KBD_SPACE;
    if (hid == 0x2Du) return (unsigned) '-';
    if (hid == 0x2Eu) return (unsigned) '=';
    if (hid == 0x2Fu) return (unsigned) '[';
    if (hid == 0x30u) return (unsigned) ']';
    if (hid == 0x31u) return (unsigned) '\\';
    if (hid == 0x32u) return KBD_COUNTRY;
    if (hid == 0x33u) return (unsigned) ';';
    if (hid == 0x34u) return (unsigned) '\'';
    if (hid == 0x35u) return (unsigned) '`';
    if (hid == 0x36u) return (unsigned) ',';
    if (hid == 0x37u) return (unsigned) '.';
    if (hid == 0x38u) return (unsigned) '/';
    if (hid == 0x39u) return KBD_CAPSLOCK;
    if (hid == 0x3Au) return KBD_F1;
    if (hid == 0x3Bu) return KBD_F2;
    if (hid == 0x3Cu) return KBD_F3;
    if (hid == 0x3Du) return KBD_F4;
    if (hid == 0x3Eu) return KBD_F5;
    if (hid == 0x48u) return KBD_STOP;
    if (hid == 0x49u) return KBD_INSERT;
    if (hid == 0x4Au) return KBD_HOME;
    if (hid == 0x4Bu) return KBD_DEAD;
    if (hid == 0x4Cu) return KBD_DELETE;
    if (hid == 0x4Du) return KBD_SELECT;
    if (hid == 0x4Eu) return KBD_COUNTRY;
    if (hid == 0x4Fu) return KBD_RIGHT;
    if (hid == 0x50u) return KBD_LEFT;
    if (hid == 0x51u) return KBD_DOWN;
    if (hid == 0x52u) return KBD_UP;
    if (hid == 0x54u) return KBD_NUMDIV;
    if (hid == 0x55u) return KBD_NUMMUL;
    if (hid == 0x56u) return KBD_NUMMINUS;
    if (hid == 0x57u) return KBD_NUMPLUS;
    if (hid == 0x58u) return KBD_NUMCOMMA;
    if (hid == 0x59u) return KBD_NUMPAD1;
    if (hid == 0x5Au) return KBD_NUMPAD2;
    if (hid == 0x5Bu) return KBD_NUMPAD3;
    if (hid == 0x5Cu) return KBD_NUMPAD4;
    if (hid == 0x5Du) return KBD_NUMPAD5;
    if (hid == 0x5Eu) return KBD_NUMPAD6;
    if (hid == 0x5Fu) return KBD_NUMPAD7;
    if (hid == 0x60u) return KBD_NUMPAD8;
    if (hid == 0x61u) return KBD_NUMPAD9;
    if (hid == 0x62u) return KBD_NUMPAD0;
    if (hid == 0x63u) return KBD_NUMDOT;
    if (hid == 0x64u) return KBD_COUNTRY;

    return 0u;
}

static void ensure_video_tables(void)
{
    if (g_video_tables_ready)
    {
        return;
    }

    for (unsigned i = 0; i < 256; ++i)
    {
        BPal[i] = PIXEL(((i >> 2) & 0x07) * 255 / 7,
                        ((i >> 5) & 0x07) * 255 / 7,
                        (i & 0x03) * 255 / 3);
    }

    g_video_tables_ready = 1;
}

static void set_image_buffer_size(uint8_t screen_mode)
{
    g_image_buffer_height = (LastScanline < HEIGHT || !OverscanMode) ? HEIGHT : (unsigned) (LastScanline + 1);

    if ((screen_mode == 6) || (screen_mode == 7) || (screen_mode == MAXSCREEN + 1))
    {
        g_image_buffer_width = WIDTH << 1;
    }
    else
    {
        g_image_buffer_width = WIDTH;
    }

    if (g_frame_number == 0u)
    {
        g_image_buffer_height = HEIGHT;
    }
    else if (HiResMode)
    {
        g_image_buffer_height <<= 1;
    }
}

unsigned fmsx_video_get_latest(const u16 **pixels, unsigned *width, unsigned *height)
{
    if (pixels)
    {
        *pixels = g_image_buffer;
    }
    if (width)
    {
        *width = g_image_buffer_width;
    }
    if (height)
    {
        *height = g_image_buffer_height;
    }

    return g_video_seq;
}

void fmsx_runtime_set_joystick_bits(u8 bridge_bits)
{
    g_bridge_bits = bridge_bits;
}

void fmsx_video_set_overscan(boolean enabled)
{
    g_overscan = enabled ? 1 : 0;
}

void fmsx_runtime_set_keyboard_raw(u8 modifiers, const unsigned char raw_keys[6])
{
    fmsx_runtime_keyboard_queue_push(modifiers, raw_keys);
}

void fmsx_runtime_keyboard_drain_step(void)
{
    const unsigned write_seq = g_kbd_runtime_write_seq;
    const unsigned oldest_seq = fmsx_runtime_keyboard_queue_oldest_seq();
    unsigned read_seq = g_kbd_runtime_read_seq;

    if (read_seq < oldest_seq)
    {
        g_kbd_runtime_dropped += oldest_seq - read_seq;
        read_seq = oldest_seq;
        g_kbd_runtime_read_seq = read_seq;
    }

    if (read_seq >= write_seq)
    {
        return;
    }

    const unsigned slot = read_seq % FMSX_KBD_RUNTIME_QUEUE_CAPACITY;
    g_kbd_runtime_read_seq = read_seq + 1u;
    fmsx_runtime_apply_keyboard_raw(g_kbd_runtime_queue[slot].modifiers,
                                    g_kbd_runtime_queue[slot].raw_keys);
}

unsigned int Joystick(void)
{
    unsigned int j = 0;

    if (g_bridge_bits & (1u << 3)) j |= JST_UP;
    if (g_bridge_bits & (1u << 2)) j |= JST_DOWN;
    if (g_bridge_bits & (1u << 1)) j |= JST_LEFT;
    if (g_bridge_bits & (1u << 0)) j |= JST_RIGHT;
    if (g_bridge_bits & (1u << 4)) j |= JST_FIREA;
    if (g_bridge_bits & (1u << 5)) j |= JST_FIREB;

    return j;
}

unsigned int Mouse(uint8_t N)
{
    (void) N;
    return 0;
}

uint8_t DiskPresent(uint8_t ID)
{
    (void) ID;
    return 0;
}

uint8_t DiskRead(uint8_t ID, uint8_t *Buf, int N)
{
    (void) ID;
    (void) Buf;
    (void) N;
    return 0;
}

uint8_t DiskWrite(uint8_t ID, const uint8_t *Buf, int N)
{
    (void) ID;
    (void) Buf;
    (void) N;
    return 0;
}

void PlayAllSound(int uSec)
{
    (void) uSec;
    fmsx_audio_render_to_cpu_now();
}

void fmsx_audio_begin_frame_render_accounting(void)
{
    g_audio_frame_rendered_samples = 0u;
}

unsigned fmsx_audio_end_frame_render_accounting(void)
{
    const unsigned samples = g_audio_frame_rendered_samples;
    g_audio_frame_rendered_samples = 0u;
    return samples;
}

void fmsx_audio_render_to_cpu_now(void)
{
    const uint64_t now = fmsx_audio_cpu_cycles_now();
    const uint64_t cpu_hz = (uint64_t) fmsx_audio_effective_cpu_clock_hz();

    if (!fmsx_runtime_audio_render_enabled())
    {
        g_audio_last_sync_rendered_samples = 0u;
        g_audio_last_render_batch = 0u;
        return;
    }

    if (now < g_audio_last_cycle_stamp)
    {
        g_audio_last_cycle_stamp = now;
        g_audio_cycle_carry = 0u;
        g_audio_last_sync_rendered_samples = 0u;
        g_audio_last_render_batch = 0u;
        return;
    }

    g_audio_cycle_carry += (now - g_audio_last_cycle_stamp) * (uint64_t) FMSX_AUDIO_RATE;
    g_audio_last_cycle_stamp = now;
    g_audio_last_sync_rendered_samples = 0u;
    g_audio_last_render_batch = 0u;

    if (g_audio_cycle_carry >= cpu_hz)
    {
        const unsigned samples = (unsigned) (g_audio_cycle_carry / cpu_hz);
        g_audio_cycle_carry %= cpu_hz;
        if (samples != 0u)
        {
            RenderAndPlayAudio(samples);
            g_audio_frame_rendered_samples += samples;
            g_audio_last_sync_rendered_samples = samples;
            g_audio_last_render_batch = samples;
            if (samples > g_audio_max_render_batch)
            {
                g_audio_max_render_batch = samples;
            }
        }
    }
}

void fmsx_audio_reset_stream_timing(void)
{
    g_audio_cycle_carry = 0u;
    g_audio_last_cycle_stamp = 0u;
    g_audio_wpos = 0u;
    g_audio_rpos = 0u;
    g_audio_ring_peak = 0u;
    g_audio_last_pull_requested = 0u;
    g_audio_last_pull_returned = 0u;
    g_audio_last_level_before_pull = 0u;
    g_audio_last_level_after_pull = 0u;
    g_audio_last_trim_samples = 0u;
    g_audio_last_sync_rendered_samples = 0u;
    g_audio_last_render_batch = 0u;
    g_audio_max_render_batch = 0u;
    g_audio_frame_rendered_samples = 0u;
}

void fmsx_audio_reanchor_stream_timing(void)
{
    g_audio_cycle_carry = 0u;
    g_audio_last_cycle_stamp = fmsx_audio_cpu_cycles_now();
    g_audio_last_trim_samples = 0u;
    g_audio_last_sync_rendered_samples = 0u;
    g_audio_last_render_batch = 0u;
    g_audio_max_render_batch = 0u;
    g_audio_frame_rendered_samples = 0u;
}

unsigned fmsx_audio_last_sync_rendered_samples(void)
{
    return g_audio_last_sync_rendered_samples;
}

unsigned fmsx_audio_pull_samples(int16_t *dst, unsigned max_samples)
{
    unsigned count = 0;

    if (dst == 0 || max_samples == 0)
    {
        return 0;
    }

    unsigned level = fmsx_audio_ring_level_current();
    g_audio_last_pull_requested = max_samples;
    g_audio_last_level_before_pull = level;
    g_audio_last_trim_samples = 0u;
    if (level > FMSX_AUDIO_MAX_LATENCY_SAMPLES)
    {
        unsigned drop = level - FMSX_AUDIO_MAX_LATENCY_SAMPLES;
        if (drop > FMSX_AUDIO_MAX_TRIM_PER_PULL)
        {
            drop = FMSX_AUDIO_MAX_TRIM_PER_PULL;
        }
        g_audio_rpos = (g_audio_rpos + drop) % FMSX_AUDIO_RING_SAMPLES;
        g_audio_trim_events++;
        g_audio_trim_samples += drop;
        g_audio_last_trim_samples = drop;
        g_audio_drop_count += drop;
    }

    while (count < max_samples)
    {
        const unsigned rpos = g_audio_rpos;
        if (rpos == g_audio_wpos)
        {
            break;
        }

        dst[count++] = g_audio_ring[rpos];
        g_audio_rpos = (rpos + 1u) % FMSX_AUDIO_RING_SAMPLES;
    }

    g_audio_samples_pulled += count;
    g_audio_last_pull_returned = count;
    if (count < max_samples)
    {
        g_audio_short_pulls++;
        g_audio_underrun_samples += (max_samples - count);
    }
    g_audio_last_level_after_pull = fmsx_audio_ring_level_current();
    return count;
}

void fmsx_audio_get_stats(TFmsxAudioStats *stats)
{
    if (stats == 0)
    {
        return;
    }

    stats->write_calls = g_audio_write_calls;
    stats->samples_written = g_audio_samples_written;
    stats->samples_pulled = g_audio_samples_pulled;
    stats->ring_peak = g_audio_ring_peak;
    stats->drop_count = g_audio_drop_count;
    stats->overwrite_samples = g_audio_overwrite_samples;
    stats->trim_events = g_audio_trim_events;
    stats->trim_samples = g_audio_trim_samples;
    stats->short_pulls = g_audio_short_pulls;
    stats->underrun_samples = g_audio_underrun_samples;
    stats->source_peak = g_audio_source_peak;
    stats->source_nonzero = g_audio_source_nonzero;
    stats->last_pull_requested = g_audio_last_pull_requested;
    stats->last_pull_returned = g_audio_last_pull_returned;
    stats->last_level_before_pull = g_audio_last_level_before_pull;
    stats->last_level_after_pull = g_audio_last_level_after_pull;
    stats->last_trim_samples = g_audio_last_trim_samples;
    stats->last_render_batch = g_audio_last_render_batch;
    stats->max_render_batch = g_audio_max_render_batch;
    stats->ring_level = fmsx_audio_ring_level_current();
}

void fmsx_keyboard_get_debug(TFmsxKeyboardDebug *stats)
{
    if (!stats)
    {
        return;
    }

    stats->last_hid = g_kbd_last_hid;
    stats->last_msx = g_kbd_last_msx;
    stats->runtime_queued = g_kbd_runtime_write_seq - g_kbd_runtime_read_seq;
    stats->runtime_high_water = 0u;
    stats->runtime_dropped = g_kbd_runtime_dropped;
    stats->candidate_created = 0u;
    stats->candidate_promoted = 0u;
    stats->candidate_discarded = 0u;
    stats->immediate_releases = 0u;
    stats->immediate_gameplay_presses = 0u;
}

void SetColor(uint8_t N, uint8_t R, uint8_t G, uint8_t B)
{
    ensure_video_tables();

    if (PaletteFrozen && N < 16)
    {
        return;
    }

    if (N)
    {
        XPal[N] = PIXEL(R, G, B);
    }
    else
    {
        XPal0 = PIXEL(R, G, B);
    }
}

void PutImage(void)
{
    const int bootlogo_active = (ScrMode == 6) && ((VDP[25] & 0x03u) == 0x03u);

    ensure_video_tables();
    set_image_buffer_size(ScrMode);

    if (bootlogo_active)
    {
        if (!g_bootlogo_trace_seen)
        {
            g_bootlogo_trace_vdp_base = (unsigned) FmsxVDPFrameCounter;
            g_bootlogo_trace_w9_base = FmsxVDPRegWriteCount[9];
            g_bootlogo_trace_w25_base = FmsxVDPRegWriteCount[25];
            g_bootlogo_trace_w26_base = FmsxVDPRegWriteCount[26];
            g_bootlogo_trace_w27_base = FmsxVDPRegWriteCount[27];
            g_bootlogo_trace_s2_base = FmsxVDPStatusReadCount[2];
            g_bootlogo_trace_s7_base = FmsxVDPStatusReadCount[7];
            g_bootlogo_trace_s2h_base[0] = FmsxVDPS2HelperReadCount[0];
            g_bootlogo_trace_s2h_base[1] = FmsxVDPS2HelperReadCount[1];
            g_bootlogo_trace_s2h_base[2] = FmsxVDPS2HelperReadCount[2];
            g_bootlogo_trace_s2h_base[3] = FmsxVDPS2HelperReadCount[3];
            g_bootlogo_trace_s2h_base[4] = FmsxVDPS2HelperReadCount[4];
            g_bootlogo_trace_s2h_base[5] = FmsxVDPS2HelperReadCount[5];
            g_bootlogo_trace_s2h_base[6] = FmsxVDPS2HelperReadCount[6];
            g_bootlogo_trace_s2b0_base = FmsxVDPS2Bit0SetCount;
            g_bootlogo_trace_s2b1_base = FmsxVDPS2Bit1SetCount;
            g_bootlogo_trace_s2b6_base = FmsxVDPS2Bit6SetCount;
            g_bootlogo_trace_s2e0u_base = FmsxVDPS2Bit0RiseCount;
            g_bootlogo_trace_s2e0d_base = FmsxVDPS2Bit0FallCount;
            g_bootlogo_trace_s2e1u_base = FmsxVDPS2Bit1RiseCount;
            g_bootlogo_trace_s2e1d_base = FmsxVDPS2Bit1FallCount;
            g_bootlogo_trace_s2e6u_base = FmsxVDPS2Bit6RiseCount;
            g_bootlogo_trace_s2e6d_base = FmsxVDPS2Bit6FallCount;
            g_bootlogo_trace_s066_base = FmsxVDPStatus0Read7A66Count;
            g_bootlogo_trace_s066b5_base = FmsxVDPStatus0Read7A66Bit5Count;
            g_bootlogo_trace_s068_base = FmsxVDPStatus0Read7A68Count;
            g_bootlogo_trace_s068b5_base = FmsxVDPStatus0Read7A68Bit5Count;
            for (unsigned i = 0u; i < 16u; ++i)
            {
                g_bootlogo_trace_s2caller_base[i] = FmsxVDPS2CallerCount[i];
            }
            g_bootlogo_trace_s2caller_overflow_base = FmsxVDPS2CallerOverflowCount;
            g_bootlogo_trace_p99_base = FmsxVDPPort99ReadCount;
            g_bootlogo_trace_prev_w26 = 0u;
            g_bootlogo_trace_prev_w27 = 0u;
            g_bootlogo_trace_dt_sum_ms = 0u;
            g_bootlogo_trace_dt_count = 0u;
            g_bootlogo_trace_dt_max_ms = 0u;
            g_bootlogo_trace_ce_hits = 0u;
            g_bootlogo_trace_tr_hits = 0u;
            g_bootlogo_trace_last_log_pc26 = 0u;
            g_bootlogo_trace_last_log_pc27 = 0u;
            g_bootlogo_trace_last_log_port26 = 0u;
            g_bootlogo_trace_last_log_port27 = 0u;
            g_bootlogo_trace_start_us = (uint64_t) msxbare_monotonic_time_us();
            g_bootlogo_trace_prev_us = 0u;
        }
        g_bootlogo_trace_seen = 1u;
        {
            const unsigned present_frame = g_bootlogo_trace_frames + 1u;
            fmsx_uart_trace_bootlogo_frame(present_frame);
        }
        g_bootlogo_trace_frames++;
    }
    else if (g_bootlogo_trace_seen)
    {
        const unsigned avg_dt = g_bootlogo_trace_dt_count != 0u
            ? (unsigned) (g_bootlogo_trace_dt_sum_ms / g_bootlogo_trace_dt_count)
            : 0u;
        const unsigned w26 = (unsigned) (FmsxVDPRegWriteCount[26] - g_bootlogo_trace_w26_base);
        const unsigned w27 = (unsigned) (FmsxVDPRegWriteCount[27] - g_bootlogo_trace_w27_base);
        const unsigned s2 = (unsigned) (FmsxVDPStatusReadCount[2] - g_bootlogo_trace_s2_base);
        const unsigned s7 = (unsigned) (FmsxVDPStatusReadCount[7] - g_bootlogo_trace_s7_base);
        const unsigned s2_10d8 = (unsigned) (FmsxVDPS2HelperReadCount[0] - g_bootlogo_trace_s2h_base[0]);
        const unsigned s2_10e1 = (unsigned) (FmsxVDPS2HelperReadCount[1] - g_bootlogo_trace_s2h_base[1]);
        const unsigned s2_363d = (unsigned) (FmsxVDPS2HelperReadCount[2] - g_bootlogo_trace_s2h_base[2]);
        const unsigned s2_3646 = (unsigned) (FmsxVDPS2HelperReadCount[3] - g_bootlogo_trace_s2h_base[3]);
        const unsigned s2_2be6 = (unsigned) (FmsxVDPS2HelperReadCount[4] - g_bootlogo_trace_s2h_base[4]);
        const unsigned s2_2279 = (unsigned) (FmsxVDPS2HelperReadCount[5] - g_bootlogo_trace_s2h_base[5]);
        const unsigned s2_other = (unsigned) (FmsxVDPS2HelperReadCount[6] - g_bootlogo_trace_s2h_base[6]);
        const unsigned s2_b0 = (unsigned) (FmsxVDPS2Bit0SetCount - g_bootlogo_trace_s2b0_base);
        const unsigned s2_b1 = (unsigned) (FmsxVDPS2Bit1SetCount - g_bootlogo_trace_s2b1_base);
        const unsigned s2_b6 = (unsigned) (FmsxVDPS2Bit6SetCount - g_bootlogo_trace_s2b6_base);
        const unsigned s2_e0u = (unsigned) (FmsxVDPS2Bit0RiseCount - g_bootlogo_trace_s2e0u_base);
        const unsigned s2_e0d = (unsigned) (FmsxVDPS2Bit0FallCount - g_bootlogo_trace_s2e0d_base);
        const unsigned s2_e1u = (unsigned) (FmsxVDPS2Bit1RiseCount - g_bootlogo_trace_s2e1u_base);
        const unsigned s2_e1d = (unsigned) (FmsxVDPS2Bit1FallCount - g_bootlogo_trace_s2e1d_base);
        const unsigned s2_e6u = (unsigned) (FmsxVDPS2Bit6RiseCount - g_bootlogo_trace_s2e6u_base);
        const unsigned s2_e6d = (unsigned) (FmsxVDPS2Bit6FallCount - g_bootlogo_trace_s2e6d_base);
        const unsigned s066 = (unsigned) (FmsxVDPStatus0Read7A66Count - g_bootlogo_trace_s066_base);
        const unsigned s066b5 = (unsigned) (FmsxVDPStatus0Read7A66Bit5Count - g_bootlogo_trace_s066b5_base);
        const unsigned s068 = (unsigned) (FmsxVDPStatus0Read7A68Count - g_bootlogo_trace_s068_base);
        const unsigned s068b5 = (unsigned) (FmsxVDPStatus0Read7A68Bit5Count - g_bootlogo_trace_s068b5_base);
        const unsigned p99 = (unsigned) (FmsxVDPPort99ReadCount - g_bootlogo_trace_p99_base);

        msxbare_uart_write("BL238E F:");
        fmsx_uart_put_uint(g_bootlogo_trace_frames > 999u ? 999u : g_bootlogo_trace_frames);
        msxbare_uart_write(" AVG:");
        fmsx_uart_put_uint3(avg_dt > 999u ? 999u : avg_dt);
        msxbare_uart_write(" MAX:");
        fmsx_uart_put_uint3(g_bootlogo_trace_dt_max_ms > 999u ? 999u : g_bootlogo_trace_dt_max_ms);
        msxbare_uart_write(" CE:");
        fmsx_uart_put_uint(g_bootlogo_trace_ce_hits > 999u ? 999u : g_bootlogo_trace_ce_hits);
        msxbare_uart_write(" TR:");
        fmsx_uart_put_uint(g_bootlogo_trace_tr_hits > 999u ? 999u : g_bootlogo_trace_tr_hits);
        msxbare_uart_write(" R9:");
        fmsx_uart_put_hex8(VDP[9] & 0xFFu);
        msxbare_uart_write(" R25:");
        fmsx_uart_put_hex8(VDP[25] & 0xFFu);
        msxbare_uart_write(" R26:");
        fmsx_uart_put_hex8(VDP[26] & 0xFFu);
        msxbare_uart_write(" R27:");
        fmsx_uart_put_hex8(VDP[27] & 0xFFu);
        msxbare_uart_write(" W26:");
        fmsx_uart_put_uint(w26 > 999u ? 999u : w26);
        msxbare_uart_write(" W27:");
        fmsx_uart_put_uint(w27 > 999u ? 999u : w27);
        msxbare_uart_write(" S2:");
        fmsx_uart_put_uint(s2 > 999u ? 999u : s2);
        msxbare_uart_write(" S7:");
        fmsx_uart_put_uint(s7 > 999u ? 999u : s7);
        msxbare_uart_write(" P99:");
        fmsx_uart_put_uint(p99 > 999u ? 999u : p99);
        msxbare_uart_write(" H10L:");
        fmsx_uart_put_uint(s2_10d8 > 999u ? 999u : s2_10d8);
        msxbare_uart_write(" H10H:");
        fmsx_uart_put_uint(s2_10e1 > 999u ? 999u : s2_10e1);
        msxbare_uart_write(" H36H:");
        fmsx_uart_put_uint(s2_363d > 999u ? 999u : s2_363d);
        msxbare_uart_write(" H36L:");
        fmsx_uart_put_uint(s2_3646 > 999u ? 999u : s2_3646);
        msxbare_uart_write(" H2BE:");
        fmsx_uart_put_uint(s2_2be6 > 999u ? 999u : s2_2be6);
        msxbare_uart_write(" H227:");
        fmsx_uart_put_uint(s2_2279 > 999u ? 999u : s2_2279);
        msxbare_uart_write(" HOTH:");
        fmsx_uart_put_uint(s2_other > 999u ? 999u : s2_other);
        msxbare_uart_write(" B0:");
        fmsx_uart_put_uint(s2_b0 > 999u ? 999u : s2_b0);
        msxbare_uart_write(" B1:");
        fmsx_uart_put_uint(s2_b1 > 999u ? 999u : s2_b1);
        msxbare_uart_write(" B6:");
        fmsx_uart_put_uint(s2_b6 > 999u ? 999u : s2_b6);
        msxbare_uart_write(" E0:");
        fmsx_uart_put_uint(s2_e0u > 999u ? 999u : s2_e0u);
        msxbare_uart_write("/");
        fmsx_uart_put_uint(s2_e0d > 999u ? 999u : s2_e0d);
        msxbare_uart_write(" E1:");
        fmsx_uart_put_uint(s2_e1u > 999u ? 999u : s2_e1u);
        msxbare_uart_write("/");
        fmsx_uart_put_uint(s2_e1d > 999u ? 999u : s2_e1d);
        msxbare_uart_write(" E6:");
        fmsx_uart_put_uint(s2_e6u > 999u ? 999u : s2_e6u);
        msxbare_uart_write("/");
        fmsx_uart_put_uint(s2_e6d > 999u ? 999u : s2_e6d);
        msxbare_uart_write(" S66:");
        fmsx_uart_put_uint(s066 > 999u ? 999u : s066);
        msxbare_uart_write("/");
        fmsx_uart_put_uint(s066b5 > 999u ? 999u : s066b5);
        msxbare_uart_write(" S68:");
        fmsx_uart_put_uint(s068 > 999u ? 999u : s068);
        msxbare_uart_write("/");
        fmsx_uart_put_uint(s068b5 > 999u ? 999u : s068b5);
        fmsx_uart_trace_bootlogo_s2_callers();
        msxbare_uart_write("\n");
        fmsx_uart_trace_bootlogo_s2_caller_bytes();

        g_bootlogo_trace_seen = 0u;
        g_bootlogo_trace_frames = 0u;
        g_bootlogo_trace_vdp_base = 0u;
        g_bootlogo_trace_w9_base = 0u;
        g_bootlogo_trace_w25_base = 0u;
        g_bootlogo_trace_w26_base = 0u;
        g_bootlogo_trace_w27_base = 0u;
        g_bootlogo_trace_s2_base = 0u;
        g_bootlogo_trace_s7_base = 0u;
        g_bootlogo_trace_s2h_base[0] = 0u;
        g_bootlogo_trace_s2h_base[1] = 0u;
        g_bootlogo_trace_s2h_base[2] = 0u;
        g_bootlogo_trace_s2h_base[3] = 0u;
        g_bootlogo_trace_s2h_base[4] = 0u;
        g_bootlogo_trace_s2h_base[5] = 0u;
        g_bootlogo_trace_s2h_base[6] = 0u;
        g_bootlogo_trace_s2b0_base = 0u;
        g_bootlogo_trace_s2b1_base = 0u;
        g_bootlogo_trace_s2b6_base = 0u;
        g_bootlogo_trace_s2e0u_base = 0u;
        g_bootlogo_trace_s2e0d_base = 0u;
        g_bootlogo_trace_s2e1u_base = 0u;
        g_bootlogo_trace_s2e1d_base = 0u;
        g_bootlogo_trace_s2e6u_base = 0u;
        g_bootlogo_trace_s2e6d_base = 0u;
        g_bootlogo_trace_s066_base = 0u;
        g_bootlogo_trace_s066b5_base = 0u;
        g_bootlogo_trace_s068_base = 0u;
        g_bootlogo_trace_s068b5_base = 0u;
        for (unsigned i = 0u; i < 16u; ++i)
        {
            g_bootlogo_trace_s2caller_base[i] = 0u;
        }
        g_bootlogo_trace_s2caller_overflow_base = 0u;
        g_bootlogo_trace_p99_base = 0u;
        g_bootlogo_trace_prev_w26 = 0u;
        g_bootlogo_trace_prev_w27 = 0u;
        g_bootlogo_trace_dt_sum_ms = 0u;
        g_bootlogo_trace_dt_count = 0u;
        g_bootlogo_trace_dt_max_ms = 0u;
        g_bootlogo_trace_ce_hits = 0u;
        g_bootlogo_trace_tr_hits = 0u;
        g_bootlogo_trace_last_log_pc26 = 0u;
        g_bootlogo_trace_last_log_pc27 = 0u;
        g_bootlogo_trace_last_log_port26 = 0u;
        g_bootlogo_trace_last_log_port27 = 0u;
        g_bootlogo_trace_start_us = 0u;
        g_bootlogo_trace_prev_us = 0u;
    }

    g_frame_number++;
    g_video_seq++;
}

unsigned int WriteAudio(int16_t *Data, unsigned int Length)
{
    unsigned i;
    unsigned peak = 0;
    unsigned nonzero = 0;

    g_audio_write_calls++;

    if (Data == 0 || Length == 0)
    {
        return 0;
    }

    for (i = 0; i < Length; ++i)
    {
        const int sample = (int) Data[i];
        const unsigned abs_sample = sample >= 0 ? (unsigned) sample : (unsigned) (-sample);
        if (abs_sample > peak)
        {
            peak = abs_sample;
        }
        if (sample != 0)
        {
            nonzero++;
        }

        const unsigned wpos = g_audio_wpos;
        const unsigned next = (wpos + 1u) % FMSX_AUDIO_RING_SAMPLES;

        if (next == g_audio_rpos)
        {
            g_audio_rpos = (g_audio_rpos + 1u) % FMSX_AUDIO_RING_SAMPLES;
            g_audio_overwrite_samples++;
            g_audio_drop_count++;
        }

        g_audio_ring[wpos] = Data[i];
        g_audio_wpos = next;
    }

    g_audio_source_peak = peak;
    g_audio_source_nonzero = nonzero;
    g_audio_samples_written += i;
    {
        const unsigned level = fmsx_audio_ring_level_current();
        if (level > g_audio_ring_peak)
        {
            g_audio_ring_peak = level;
        }
    }
    return i;
}

uint8_t *DSKLoad(const char *Name, uint8_t *Dsk, const char *Label)
{
    (void) Name;
    (void) Dsk;
    (void) Label;
    return 0;
}

uint8_t *DSKCreate(uint8_t *Dsk, const char *Label)
{
    (void) Dsk;
    (void) Label;
    return 0;
}

int LoadFileMCF(const char *Name, MCFEntry *Cheats, int MaxCheats)
{
    (void) Name;
    (void) Cheats;
    (void) MaxCheats;
    return 0;
}
