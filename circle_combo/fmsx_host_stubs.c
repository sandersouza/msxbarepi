#include "fmsx_runtime.h"

#include "../third_party/fmsx/fMSX/MSX.h"
#include "../third_party/fmsx/EMULib/EMULib.h"
#include "../third_party/fmsx/EMULib/FDIDisk.h"
#include "../third_party/fmsx/EMULib/Floppy.h"
#include "../third_party/fmsx/EMULib/MCF.h"
#include "../third_party/fmsx/libretro.h"
#include "fmsx_compat/string.h"

retro_log_printf_t log_cb = 0;

#define BORDER 8
#define WIDTH  (256 + (BORDER << 1))
#define HEIGHT (212 + (BORDER << 1))
#define MAX_HEIGHT      (256 + BORDER)
#define MAX_SCANLINE    (PALVideo ? 255 : 242)
#define PIXEL(R,G,B) ((uint16_t)(((31 * (R) / 255) << 11) | ((63 * (G) / 255) << 5) | (31 * (B) / 255)))

#define HIRES_OFF 0
#define HIRES_INTERLACED 1
#define HIRES_PROGRESSIVE 2

static int g_hires_mode = HIRES_OFF;
static int g_overscan = 0;
static unsigned g_frame_number = 0;

#define HiResMode           (InterlaceON && g_hires_mode != HIRES_OFF)
#define InterlacedMode      (g_hires_mode == HIRES_INTERLACED)
#define OverscanMode        (g_overscan)
#define OddPage             (g_frame_number & 1u)

static uint16_t g_image_buffer[(WIDTH << 1) * (HEIGHT << 1)];
static unsigned g_image_buffer_width = WIDTH;
static unsigned g_image_buffer_height = HEIGHT;
static volatile unsigned g_video_seq = 0;

static uint16_t XPal[80];
static uint16_t BPal[256];
static uint16_t XPal0;
static int PaletteFrozen = 0;
static int g_video_tables_ready = 0;

#define XBuf g_image_buffer
#define WBuf g_image_buffer
int LastScanline;

#include "../third_party/fmsx/fMSX/CommonMux.h"

static volatile u8 g_bridge_bits = 0;
static uint8_t g_sram_disk_blob[(64 * 1024) + 1];
uint8_t *sram_disk_ptr = &g_sram_disk_blob[1];

#define FMSX_AUDIO_RING_SAMPLES (48000u * 2u)
#define FMSX_AUDIO_MAX_LATENCY_SAMPLES 6000u
#define FMSX_AUDIO_MAX_TRIM_PER_PULL   800u
static int16_t g_audio_ring[FMSX_AUDIO_RING_SAMPLES];
static volatile unsigned g_audio_wpos = 0;
static volatile unsigned g_audio_rpos = 0;
static volatile unsigned g_audio_write_calls = 0;
static volatile unsigned g_audio_samples_written = 0;
static volatile unsigned g_audio_samples_pulled = 0;
static volatile unsigned g_audio_drop_count = 0;
static volatile unsigned g_audio_source_peak = 0;
static volatile unsigned g_audio_source_nonzero = 0;
static volatile unsigned g_kbd_last_hid = 0;
static volatile unsigned g_kbd_last_msx = 0;

static void fmsx_keyboard_clear_all(void)
{
    for (unsigned i = 0; i < 16u; ++i)
    {
        KeyState[i] = 0xFFu;
    }
}

static void fmsx_keyboard_press_code(unsigned code)
{
    if (code <= 0x88u)
    {
        KBD_SET(code);
    }
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

void fmsx_runtime_set_keyboard_raw(u8 modifiers, const unsigned char raw_keys[6])
{
    fmsx_keyboard_clear_all();

    if (modifiers & 0x22u)
    {
        fmsx_keyboard_press_code(KBD_SHIFT);
    }
    if (modifiers & 0x11u)
    {
        fmsx_keyboard_press_code(KBD_CONTROL);
    }
    if (modifiers & 0x44u)
    {
        fmsx_keyboard_press_code(KBD_GRAPH);
    }

    if (!raw_keys)
    {
        return;
    }

    for (unsigned i = 0; i < 6u; ++i)
    {
        const u8 hid = raw_keys[i];
        if (hid == 0u)
        {
            continue;
        }

        const unsigned code = fmsx_code_from_hid(hid);
        if (code != 0u)
        {
            fmsx_keyboard_press_code(code);
            g_kbd_last_hid = hid;
            g_kbd_last_msx = code;
        }
    }
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
}

unsigned fmsx_audio_pull_samples(int16_t *dst, unsigned max_samples)
{
    unsigned count = 0;

    if (dst == 0 || max_samples == 0)
    {
        return 0;
    }

    unsigned level = g_audio_wpos >= g_audio_rpos
        ? (g_audio_wpos - g_audio_rpos)
        : ((FMSX_AUDIO_RING_SAMPLES - g_audio_rpos) + g_audio_wpos);
    if (level > FMSX_AUDIO_MAX_LATENCY_SAMPLES)
    {
        unsigned drop = level - FMSX_AUDIO_MAX_LATENCY_SAMPLES;
        if (drop > FMSX_AUDIO_MAX_TRIM_PER_PULL)
        {
            drop = FMSX_AUDIO_MAX_TRIM_PER_PULL;
        }
        g_audio_rpos = (g_audio_rpos + drop) % FMSX_AUDIO_RING_SAMPLES;
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
    stats->drop_count = g_audio_drop_count;
    stats->source_peak = g_audio_source_peak;
    stats->source_nonzero = g_audio_source_nonzero;
    if (g_audio_wpos >= g_audio_rpos)
    {
        stats->ring_level = g_audio_wpos - g_audio_rpos;
    }
    else
    {
        stats->ring_level = (FMSX_AUDIO_RING_SAMPLES - g_audio_rpos) + g_audio_wpos;
    }
}

void fmsx_keyboard_get_debug(TFmsxKeyboardDebug *stats)
{
    if (!stats)
    {
        return;
    }

    stats->last_hid = g_kbd_last_hid;
    stats->last_msx = g_kbd_last_msx;
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
    ensure_video_tables();
    set_image_buffer_size(ScrMode);
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
            g_audio_drop_count++;
        }

        g_audio_ring[wpos] = Data[i];
        g_audio_wpos = next;
    }

    g_audio_source_peak = peak;
    g_audio_source_nonzero = nonzero;
    g_audio_samples_written += i;
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
