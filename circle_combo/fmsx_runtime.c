#include "fmsx_runtime.h"

#include "../third_party/fmsx/fMSX/MSX.h"
#include "../third_party/fmsx/Z80/Z80.h"
#include "../third_party/fmsx/EMULib/Sound.h"
#include "fmsx_virtual_fs.h"

#ifndef COMBO_FMSX_AUDIO
#define COMBO_FMSX_AUDIO 1
#endif

#ifndef COMBO_FMSX_MSX1_TEXT80
#define COMBO_FMSX_MSX1_TEXT80 1
#endif

#ifndef COMBO_FMSX_CART_GUESS
#define COMBO_FMSX_CART_GUESS 1
#endif

#ifndef COMBO_FMSX_CARTA_MAPPER
#define COMBO_FMSX_CARTA_MAPPER 255
#endif

#ifndef COMBO_FMSX_CARTB_MAPPER
#define COMBO_FMSX_CARTB_MAPPER 255
#endif

#ifndef COMBO_FMSX_RAMMAPPER_KB
#define COMBO_FMSX_RAMMAPPER_KB 256
#endif

#ifndef COMBO_FMSX_MEGARAM_ENABLED
#define COMBO_FMSX_MEGARAM_ENABLED 1
#endif

#ifndef COMBO_FMSX_BOOT_PROFILE
#define COMBO_FMSX_BOOT_PROFILE 0
#endif

#ifndef COMBO_FMSX_FAST_CUTOFF_FRAMES_MSX1
#define COMBO_FMSX_FAST_CUTOFF_FRAMES_MSX1 150u
#endif

#ifndef COMBO_FMSX_FAST_CUTOFF_FRAMES_MSX2
#define COMBO_FMSX_FAST_CUTOFF_FRAMES_MSX2 150u
#endif

#ifndef COMBO_FMSX_FAST_CUTOFF_FRAMES_MSX2P
#define COMBO_FMSX_FAST_CUTOFF_FRAMES_MSX2P 150u
#endif

#if (COMBO_FMSX_RAMMAPPER_KB == 64)
#define COMBO_FMSX_RAMMAPPER_PAGES 4
#elif (COMBO_FMSX_RAMMAPPER_KB == 256)
#define COMBO_FMSX_RAMMAPPER_PAGES 16
#elif (COMBO_FMSX_RAMMAPPER_KB == 512)
#define COMBO_FMSX_RAMMAPPER_PAGES 32
#elif (COMBO_FMSX_RAMMAPPER_KB == 1024)
#define COMBO_FMSX_RAMMAPPER_PAGES 64
#else
#error "COMBO_FMSX_RAMMAPPER_KB must be 64, 256, 512, or 1024"
#endif

extern Z80 CPU;
extern int ScanLine;
extern uint8_t UPeriod;
extern int Mode;
extern int RAMPages;
extern int VRAMPages;
extern void fmsx_cpu_set_turbo_percent(unsigned percent);
extern unsigned fmsx_video_get_latest(const u16 **pixels, unsigned *width, unsigned *height);
extern const char *ROMName[];
extern uint8_t *ROMData[];
extern const char *DSKName[];
extern FDIDisk FDD[];
extern void fmsx_video_set_overscan(boolean enabled);

static TFmsxRuntimeStatus g_fmsx_status = { FALSE, FALSE, 0u, 0, 0 };
static char g_cartridge_path[2][192] = {{0}};
static volatile unsigned g_load_diag_stage = 0u;
static const unsigned kFmsxAudioRate = 48000u;
static unsigned g_boot_warmup_frames_remaining = 0u;
static boolean g_boot_forced_turbo = FALSE;
static unsigned g_refresh_hz = 60u;
static unsigned g_boot_mode = (COMBO_FMSX_BOOT_PROFILE > 2) ? 0u : (unsigned) COMBO_FMSX_BOOT_PROFILE;
static unsigned g_model_profile = FMSX_MODEL_PROFILE_MSX1;
static boolean g_use_embedded_bios = FALSE;
static unsigned g_z80_turbo_mode = 0u;
static boolean g_scc_cart_enabled = TRUE;

static unsigned fmsx_runtime_fast_cutoff_frames(void)
{
    switch (g_model_profile)
    {
    case FMSX_MODEL_PROFILE_MSX2:  return COMBO_FMSX_FAST_CUTOFF_FRAMES_MSX2;
    case FMSX_MODEL_PROFILE_MSX2P: return COMBO_FMSX_FAST_CUTOFF_FRAMES_MSX2P;
    case FMSX_MODEL_PROFILE_MSX1:
    default: return COMBO_FMSX_FAST_CUTOFF_FRAMES_MSX1;
    }
}

static boolean fmsx_runtime_is_fast_like_boot(void)
{
    return (g_boot_mode == 1u || g_boot_mode == 2u) ? TRUE : FALSE;
}

static unsigned fmsx_runtime_boot_warmup_frames(void)
{
    if (fmsx_runtime_is_fast_like_boot())
    {
        /* FAST/GAME share the same model-dependent cutoff. */
        return fmsx_runtime_fast_cutoff_frames();
    }
    return 0u; /* NORM */
}

static unsigned fmsx_runtime_boot_burst_steps(void)
{
    switch (g_boot_mode)
    {
    case 1u: return 4u; /* FAST */
    case 2u: return 4u; /* GAME follows FAST profile */
    default: return 1u; /* NORM */
    }
}

static unsigned fmsx_runtime_effective_refresh_hz(void)
{
    return (g_refresh_hz == 50u) ? 50u : 60u;
}

static unsigned fmsx_runtime_z80_turbo_percent(void)
{
    switch (g_z80_turbo_mode)
    {
    case 1u: return 150u; /* PAN */
    case 2u: return 224u; /* MAX */
    default: return 100u; /* DES */
    }
}

static void fmsx_runtime_apply_game_boot_override(void)
{
    /* GAME now mirrors FAST boot behavior; no PC override needed. */
}

static void fmsx_runtime_apply_audio_channels(void)
{
#if COMBO_FMSX_AUDIO
    unsigned mask = (1u << SND_CHANNELS) - 1u;
    if (!g_scc_cart_enabled)
    {
        const unsigned scc_mask = ((1u << SCC_CHANNELS) - 1u) << FIRST_SCC_CHANNEL;
        mask &= ~scc_mask;
    }
    SetChannels(150, mask);
#endif
}

static boolean fmsx_runtime_start(boolean boot_basic)
{
    fmsx_runtime_set_load_diag(2100u); /* runtime_start begin */
    g_fmsx_status.initialized = TRUE;
    g_fmsx_status.running = FALSE;
    g_fmsx_status.frames = 0u;
    g_fmsx_status.last_pc = 0;
    g_fmsx_status.last_error = 0;

    int startup_mode = MSX_MSX1 | (fmsx_runtime_effective_refresh_hz() == 50u ? MSX_PAL : MSX_NTSC) | MSX_JOY1;
#if COMBO_FMSX_MSX1_TEXT80
    startup_mode |= MSX_FIXEDFONT;
#endif
#if !COMBO_FMSX_MEGARAM_ENABLED
    startup_mode |= MSX_NO_MEGARAM;
#endif
#if COMBO_FMSX_CART_GUESS
    startup_mode |= MSX_GUESSA | MSX_GUESSB;
#endif
#if (COMBO_FMSX_CARTA_MAPPER != 255)
    startup_mode &= ~MSX_MAPPERA;
    startup_mode |= (COMBO_FMSX_CARTA_MAPPER & 0x0F) << 8;
    startup_mode &= ~MSX_GUESSA;
#endif
#if (COMBO_FMSX_CARTB_MAPPER != 255)
    startup_mode &= ~MSX_MAPPERB;
    startup_mode |= (COMBO_FMSX_CARTB_MAPPER & 0x0F) << 12;
    startup_mode &= ~MSX_GUESSB;
#endif

    const boolean game_mode = (g_boot_mode == 2u) ? TRUE : FALSE;
    const char *saved_carta = 0;
    const char *saved_cartb = 0;
    if (boot_basic)
    {
        saved_carta = ROMName[0];
        saved_cartb = ROMName[1];
        ROMName[0] = 0;
        ROMName[1] = 0;
    }

    g_use_embedded_bios = game_mode ? TRUE : FALSE;
    fmsx_runtime_set_load_diag(2101u); /* before StartMSX */
    boolean started = StartMSX(startup_mode, COMBO_FMSX_RAMMAPPER_PAGES, 2) ? TRUE : FALSE;
    fmsx_runtime_set_load_diag(started ? 2102u : 9102u); /* after StartMSX */
    g_use_embedded_bios = FALSE;

    if (boot_basic)
    {
        ROMName[0] = saved_carta;
        ROMName[1] = saved_cartb;
    }

    if (!started)
    {
        g_fmsx_status.last_error = 1;
        return FALSE;
    }

    UPeriod = 100;
    g_boot_warmup_frames_remaining = fmsx_runtime_boot_warmup_frames();
    g_boot_forced_turbo = (g_boot_warmup_frames_remaining > 0u);
    if (g_boot_forced_turbo)
    {
        /* FAST/GAME force MAX turbo only during bootstrap warmup window. */
        fmsx_cpu_set_turbo_percent(224u);
    }
    else
    {
        fmsx_cpu_set_turbo_percent(fmsx_runtime_z80_turbo_percent());
    }
    fmsx_runtime_apply_game_boot_override();

#if COMBO_FMSX_AUDIO
    InitSound(kFmsxAudioRate);
    fmsx_runtime_apply_audio_channels();
#endif

    g_fmsx_status.running = TRUE;
    return TRUE;
}

#if (COMBO_FMSX_BOOT_PROFILE < 0) || (COMBO_FMSX_BOOT_PROFILE > 2)
#error "COMBO_FMSX_BOOT_PROFILE must be 0 (normal), 1 (fast), or 2 (game)"
#endif

#if (COMBO_FMSX_CARTA_MAPPER != 255) && ((COMBO_FMSX_CARTA_MAPPER < 0) || (COMBO_FMSX_CARTA_MAPPER > 8))
#error "COMBO_FMSX_CARTA_MAPPER must be 0..8 or 255 (auto/default)"
#endif

#if (COMBO_FMSX_CARTB_MAPPER != 255) && ((COMBO_FMSX_CARTB_MAPPER < 0) || (COMBO_FMSX_CARTB_MAPPER > 8))
#error "COMBO_FMSX_CARTB_MAPPER must be 0..8 or 255 (auto/default)"
#endif

boolean fmsx_runtime_init(void)
{
    if (g_fmsx_status.initialized)
    {
        return g_fmsx_status.running;
    }
    return fmsx_runtime_start(FALSE);
}

boolean fmsx_runtime_reboot_basic(void)
{
    if (g_fmsx_status.running)
    {
        TrashMSX();
    }

    g_fmsx_status.initialized = FALSE;
    g_fmsx_status.running = FALSE;
    return fmsx_runtime_start(TRUE);
}

boolean fmsx_runtime_hard_reset(void)
{
    if (!g_fmsx_status.running)
    {
        return FALSE;
    }
    fmsx_runtime_set_load_diag(2201u); /* hard_reset before TrashMSX */
    /*
     * Use a full restart instead of ResetMSX() so boot-mode policy is always reapplied:
     * - NORM/FAST prefer MSX.ROM from initramfs and fallback to embedded C-BIOS only if missing.
     * - GAME mirrors FAST startup but forces embedded C-BIOS for MSX.ROM.
     */
    TrashMSX();
    fmsx_runtime_set_load_diag(2202u); /* hard_reset after TrashMSX */
    g_fmsx_status.initialized = FALSE;
    g_fmsx_status.running = FALSE;
    const boolean ok = fmsx_runtime_start(FALSE);
    fmsx_runtime_set_load_diag(ok ? 2203u : 9203u);
    return ok;
}

boolean fmsx_runtime_step_frame(void)
{
    if (!g_fmsx_status.running)
    {
        return FALSE;
    }

    unsigned steps = 1u;
    if (g_boot_warmup_frames_remaining > 0u)
    {
        steps = fmsx_runtime_boot_burst_steps();
        if (steps == 0u)
        {
            steps = 1u;
        }
        if (steps > g_boot_warmup_frames_remaining)
        {
            steps = g_boot_warmup_frames_remaining;
        }
    }

    for (unsigned i = 0; i < steps; ++i)
    {
        ScanLine = 261;
        g_fmsx_status.last_pc = (int) RunZ80(&CPU);
        g_fmsx_status.frames++;
        if (g_boot_warmup_frames_remaining > 0u)
        {
            g_boot_warmup_frames_remaining--;
            if (g_boot_warmup_frames_remaining == 0u && g_boot_forced_turbo)
            {
                g_boot_forced_turbo = FALSE;
                fmsx_cpu_set_turbo_percent(fmsx_runtime_z80_turbo_percent());
            }
        }
    }

#if COMBO_FMSX_AUDIO
    if (g_boot_warmup_frames_remaining == 0u)
    {
        RenderAndPlayAudio(kFmsxAudioRate / fmsx_runtime_effective_refresh_hz());
    }
#endif
    return TRUE;
}

void fmsx_runtime_shutdown(void)
{
    if (g_fmsx_status.running)
    {
        TrashMSX();
    }

    g_fmsx_status.running = FALSE;
}

boolean fmsx_runtime_save_state(void *dst, unsigned capacity, unsigned *saved_size)
{
    if (saved_size != 0)
    {
        *saved_size = 0u;
    }
    if (!g_fmsx_status.running || dst == 0 || capacity == 0u)
    {
        return FALSE;
    }

    const unsigned bytes = SaveState((unsigned char *) dst, capacity);
    if (saved_size != 0)
    {
        *saved_size = bytes;
    }
    return (bytes > 0u && bytes <= capacity) ? TRUE : FALSE;
}

boolean fmsx_runtime_load_state(const void *src, unsigned size)
{
    if (!g_fmsx_status.running || src == 0 || size == 0u)
    {
        return FALSE;
    }

    const unsigned consumed = LoadState((unsigned char *) src, size);
    if (consumed == 0u || consumed > size)
    {
        return FALSE;
    }

    g_boot_warmup_frames_remaining = 0u;
    g_boot_forced_turbo = FALSE;
    fmsx_cpu_set_turbo_percent(fmsx_runtime_z80_turbo_percent());
    fmsx_runtime_apply_audio_channels();
    g_fmsx_status.last_pc = (int) CPU.PC.W;
    return TRUE;
}

void fmsx_runtime_set_overscan(boolean enabled)
{
    fmsx_video_set_overscan(enabled);
}

void fmsx_runtime_set_refresh_hz(unsigned hz)
{
    g_refresh_hz = (hz == 50u) ? 50u : 60u;
    if (g_fmsx_status.running)
    {
        const int new_mode = (Mode & ~MSX_VIDEO) | (g_refresh_hz == 50u ? MSX_PAL : MSX_NTSC);
        ResetMSX(new_mode, RAMPages, VRAMPages);
        fmsx_cpu_set_turbo_percent(fmsx_runtime_z80_turbo_percent());
        fmsx_runtime_apply_audio_channels();
    }
}

void fmsx_runtime_set_boot_mode(unsigned mode)
{
    if (mode > 2u)
    {
        mode = 0u;
    }
    g_boot_mode = mode;
}

unsigned fmsx_runtime_get_boot_mode(void)
{
    return g_boot_mode;
}

void fmsx_runtime_set_model_profile(unsigned profile)
{
    if (profile > FMSX_MODEL_PROFILE_MSX2P)
    {
        profile = FMSX_MODEL_PROFILE_MSX1;
    }
    g_model_profile = profile;
}

unsigned fmsx_runtime_get_model_profile(void)
{
    return g_model_profile;
}

boolean fmsx_runtime_use_embedded_bios(void)
{
    return g_use_embedded_bios ? TRUE : FALSE;
}

void fmsx_runtime_notify_media_probe(void)
{
    /* Disabled by strategy: FAST cutoff is now frame-based (F:300). */
}

void fmsx_runtime_set_z80_turbo_mode(unsigned mode)
{
    if (mode > 2u)
    {
        mode = 0u;
    }
    g_z80_turbo_mode = mode;
    if (!g_boot_forced_turbo)
    {
        fmsx_cpu_set_turbo_percent(fmsx_runtime_z80_turbo_percent());
    }
}

unsigned fmsx_runtime_get_z80_turbo_mode(void)
{
    return g_z80_turbo_mode;
}

void fmsx_runtime_set_scc_cart_enabled(boolean enabled)
{
    g_scc_cart_enabled = enabled ? TRUE : FALSE;
    fmsx_runtime_apply_audio_channels();
}

boolean fmsx_runtime_get_scc_cart_enabled(void)
{
    return g_scc_cart_enabled;
}

const char *fmsx_runtime_get_cartridge_name(unsigned slot_index)
{
    if (slot_index > 1u)
    {
        return 0;
    }
    if (ROMData[slot_index] == 0)
    {
        return 0;
    }
    return ROMName[slot_index];
}

const char *fmsx_runtime_get_disk_name(unsigned drive_index)
{
    if (drive_index > 1u)
    {
        return 0;
    }
    if (FDD[drive_index].Data == 0)
    {
        return 0;
    }
    return DSKName[drive_index];
}

boolean fmsx_runtime_set_cartridge_path(unsigned slot_index, const char *path)
{
    if (slot_index > 1u)
    {
        return FALSE;
    }

    if (path == 0 || path[0] == '\0')
    {
        g_cartridge_path[slot_index][0] = '\0';
        ROMName[slot_index] = 0;
        return TRUE;
    }

    unsigned n = 0u;
    while (path[n] != '\0' && n + 1u < sizeof(g_cartridge_path[slot_index]))
    {
        g_cartridge_path[slot_index][n] = path[n];
        ++n;
    }
    g_cartridge_path[slot_index][n] = '\0';

    if (path[n] != '\0')
    {
        return FALSE;
    }

    ROMName[slot_index] = g_cartridge_path[slot_index];
    return TRUE;
}

boolean fmsx_runtime_load_cartridge(unsigned slot_index, const char *path)
{
    if (slot_index > 1u || path == 0 || path[0] == '\0' || !g_fmsx_status.running)
    {
        return FALSE;
    }

    if (!fmsx_runtime_set_cartridge_path(slot_index, path))
    {
        return FALSE;
    }

    fmsx_runtime_set_load_diag(2301u); /* before LoadCart */
    const int pages = LoadCart(path, (int) slot_index, ROMGUESS((int) slot_index) | ROMTYPE((int) slot_index));
    if (pages <= 0)
    {
        fmsx_runtime_set_load_diag(9301u); /* LoadCart failed */
        return FALSE;
    }
    fmsx_runtime_set_load_diag(2302u); /* LoadCart ok */
    g_fmsx_status.last_pc = (int) CPU.PC.W;
    return TRUE;
}

void fmsx_runtime_set_load_diag(unsigned stage)
{
    g_load_diag_stage = stage;
}

unsigned fmsx_runtime_get_load_diag(void)
{
    return g_load_diag_stage;
}

TFmsxRuntimeStatus fmsx_runtime_get_status(void)
{
    return g_fmsx_status;
}

unsigned fmsx_runtime_get_video_frame(const u16 **pixels, unsigned *width, unsigned *height)
{
    return fmsx_video_get_latest(pixels, width, height);
}
