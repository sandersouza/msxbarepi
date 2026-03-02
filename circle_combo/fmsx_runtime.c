#include "fmsx_runtime.h"

#include "../third_party/fmsx/fMSX/MSX.h"
#include "../third_party/fmsx/Z80/Z80.h"
#include "../third_party/fmsx/EMULib/Sound.h"
#include "fmsx_virtual_fs.h"
#include <stdio.h>
#include <string.h>

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
extern uint8_t DiskROMLoaded;
extern void fmsx_cpu_set_turbo_percent(unsigned percent);
extern unsigned fmsx_video_get_latest(const u16 **pixels, unsigned *width, unsigned *height);
extern const char *ROMName[];
extern uint8_t *ROMData[];
extern uint8_t ROMMask[];
extern uint8_t ROMType[];
extern uint8_t *MemMap[4][4][8];
extern uint8_t *EmptyRAM;
extern const char *DSKName[];
extern FDIDisk FDD[];
extern void fmsx_video_set_overscan(boolean enabled);

static TFmsxRuntimeStatus g_fmsx_status = { FALSE, FALSE, 0u, 0, 0 };
static char g_cartridge_path[2][192] = {{0}};
static char g_disk_path[2][192] = {{0}};
static volatile unsigned g_load_diag_stage = 0u;
static const unsigned kFmsxAudioRate = 48000u;
static unsigned g_boot_warmup_frames_remaining = 0u;
static boolean g_boot_forced_turbo = FALSE;
static unsigned g_refresh_hz = 60u;
static boolean g_disk_rom_enabled = TRUE;
static unsigned g_boot_mode = (COMBO_FMSX_BOOT_PROFILE > 2) ? 0u : (unsigned) COMBO_FMSX_BOOT_PROFILE;
static unsigned g_active_boot_mode = (COMBO_FMSX_BOOT_PROFILE > 2) ? 0u : (unsigned) COMBO_FMSX_BOOT_PROFILE;
static unsigned g_model_profile = FMSX_MODEL_PROFILE_MSX1;
static boolean g_use_embedded_bios = FALSE;
static unsigned g_z80_turbo_mode = 0u;
static boolean g_scc_cart_enabled = TRUE;
static unsigned g_cart_mapper_override[2] = {
    (unsigned) COMBO_FMSX_CARTA_MAPPER,
    (unsigned) COMBO_FMSX_CARTB_MAPPER
};

static unsigned fmsx_runtime_clamp_mapper_override(unsigned mapper_or_255)
{
    return (mapper_or_255 <= MAP_GUESS || mapper_or_255 == 255u) ? mapper_or_255 : 255u;
}

static void fmsx_runtime_reset_rom_load_report(unsigned slot_index, TFmsxRomLoadReport *report)
{
    if (report == 0)
    {
        return;
    }

    report->success = FALSE;
    report->slot_index = slot_index;
    report->attempts = 0u;
    report->selected_mapper = 255u;
    report->effective_mapper = 255u;
    report->error = FMSX_ROM_ERR_UNKNOWN;
    report->pages_loaded = 0;
}

static void fmsx_runtime_set_rom_load_error(TFmsxRomLoadReport *report, TFmsxRomLoadError error)
{
    if (report != 0)
    {
        report->success = FALSE;
        report->error = error;
    }
}

typedef enum {
    FMSX_ROM_PROBE_OK = 0,
    FMSX_ROM_PROBE_OPEN_FAIL = 1,
    FMSX_ROM_PROBE_INVALID_SIGNATURE = 2
} TFmsxRomProbeResult;

static TFmsxRomProbeResult fmsx_runtime_probe_rom_file(const char *path)
{
    RFILE *f = rfopen(path, "rb");
    if (!f)
    {
        return FMSX_ROM_PROBE_OPEN_FAIL;
    }

    int64_t len_bytes = 0;
    int c2 = 0;
    if (!rfseek(f, 0, SEEK_END))
    {
        len_bytes = rftell(f);
    }
    else
    {
        /* Same fallback strategy used in LoadCart() for non-seekable streams. */
        for (len_bytes = 0; (c2 = rfread(EmptyRAM, 1, 0x4000, f)) == 0x4000; len_bytes += c2) { }
        if (c2 > 0)
        {
            len_bytes += c2;
        }
        memset(EmptyRAM, NORAM, 0x4000);
    }
    filestream_rewind(f);

    int c1 = rfgetc(f);
    c2 = rfgetc(f);
    if ((c1 != 'A' || c2 != 'B') && rfseek(f, 0x4000, SEEK_SET) >= 0)
    {
        c1 = rfgetc(f);
        c2 = rfgetc(f);
    }
    if ((c1 != 'A' || c2 != 'B') && len_bytes >= 0x4000 && rfseek(f, len_bytes - 0x4000, SEEK_SET) >= 0)
    {
        c1 = rfgetc(f);
        c2 = rfgetc(f);
    }

    rfclose(f);
    return (c1 == 'A' && c2 == 'B') ? FMSX_ROM_PROBE_OK : FMSX_ROM_PROBE_INVALID_SIGNATURE;
}

static boolean fmsx_runtime_find_slot_map(unsigned slot, unsigned *out_ps, unsigned *out_ss)
{
    /* Must match fMSX CartMap in MSX.c */
    static const uint8_t kCartMap[4][4] = {
        { 255u, 3u, 4u, 5u },
        { 0u,   0u, 0u, 0u },
        { 1u,   1u, 1u, 1u },
        { 2u, 255u, 255u, 255u }
    };

    for (unsigned ps = 0u; ps < 4u; ++ps)
    {
        for (unsigned ss = 0u; ss < 4u; ++ss)
        {
            if (kCartMap[ps][ss] == slot)
            {
                if (out_ps != 0) *out_ps = ps;
                if (out_ss != 0) *out_ss = ss;
                return TRUE;
            }
        }
    }
    return FALSE;
}

static void fmsx_runtime_force_disk_rom_off_mapping(void)
{
    /*
     * fMSX may keep DiskROM mapped even when MSX_PATCHBDOS is toggled off.
     * Enforce OFF policy by unmapping slot 3:1 pages 2-3 explicitly.
     */
    MemMap[3][1][2] = EmptyRAM;
    MemMap[3][1][3] = EmptyRAM;
    DiskROMLoaded = 0u;
    Mode &= ~MSX_PATCHBDOS;
}

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

static void fmsx_runtime_apply_startup_mapper_policy(int *startup_mode)
{
    if (startup_mode == 0)
    {
        return;
    }

    unsigned map_a = fmsx_runtime_clamp_mapper_override(g_cart_mapper_override[0]);
    unsigned map_b = fmsx_runtime_clamp_mapper_override(g_cart_mapper_override[1]);

    *startup_mode &= ~MSX_MAPPERA;
    *startup_mode &= ~MSX_MAPPERB;
    *startup_mode &= ~MSX_GUESSA;
    *startup_mode &= ~MSX_GUESSB;

    if (map_a == 255u)
    {
#if COMBO_FMSX_CART_GUESS
        *startup_mode |= MSX_GUESSA;
#endif
    }
    else
    {
        *startup_mode |= (int) ((map_a & 0x0Fu) << 8);
    }

    if (map_b == 255u)
    {
#if COMBO_FMSX_CART_GUESS
        *startup_mode |= MSX_GUESSB;
#endif
    }
    else
    {
        *startup_mode |= (int) ((map_b & 0x0Fu) << 12);
    }
}

static boolean fmsx_runtime_start(boolean boot_basic)
{
    fmsx_runtime_set_load_diag(2100u); /* runtime_start begin */
    g_active_boot_mode = g_boot_mode;
    g_fmsx_status.initialized = TRUE;
    g_fmsx_status.running = FALSE;
    g_fmsx_status.frames = 0u;
    g_fmsx_status.last_pc = 0;
    g_fmsx_status.last_error = 0;

    int startup_mode = MSX_MSX1 | (fmsx_runtime_effective_refresh_hz() == 50u ? MSX_PAL : MSX_NTSC) | MSX_JOY1;
    if (g_disk_rom_enabled)
    {
        /*
         * Keep DISK.ROM loaded but without BDOS patch hooks.
         * We still force a PATCHBDOS transition so ResetMSX() reloads DISK.ROM
         * deterministically, then leaves hooks disabled (WD1793 path).
         */
        startup_mode &= ~MSX_PATCHBDOS;
        Mode |= MSX_PATCHBDOS;
    }
    else
    {
        /*
         * Force opposite transition when Disk ROM is OFF as well, so the
         * disable path is applied deterministically.
         */
        Mode |= MSX_PATCHBDOS;
    }
#if COMBO_FMSX_MSX1_TEXT80
    startup_mode |= MSX_FIXEDFONT;
#endif
#if !COMBO_FMSX_MEGARAM_ENABLED
    startup_mode |= MSX_NO_MEGARAM;
#endif
    fmsx_runtime_apply_startup_mapper_policy(&startup_mode);

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

    if (!g_disk_rom_enabled)
    {
        fmsx_runtime_force_disk_rom_off_mapping();
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
    char saved_disk_path[2][192];
    for (unsigned i = 0u; i < 2u; ++i)
    {
        unsigned n = 0u;
        while (n + 1u < sizeof(saved_disk_path[i]) && g_disk_path[i][n] != '\0')
        {
            saved_disk_path[i][n] = g_disk_path[i][n];
            ++n;
        }
        saved_disk_path[i][n] = '\0';
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
    /* Restore drive paths before StartMSX so disk boot can happen during BIOS startup. */
    for (unsigned i = 0u; i < 2u; ++i)
    {
        if (saved_disk_path[i][0] != '\0')
        {
            (void) fmsx_runtime_set_disk_path(i, saved_disk_path[i]);
        }
        else
        {
            (void) fmsx_runtime_set_disk_path(i, 0);
        }
    }
    boolean ok = fmsx_runtime_start(FALSE);
    if (ok)
    {
        /*
         * Defensive restore: if any drive did not come back mounted after StartMSX,
         * reload it now to guarantee persistence across menu hard-reset.
         */
        for (unsigned i = 0u; i < 2u; ++i)
        {
            if (saved_disk_path[i][0] == '\0')
            {
                continue;
            }
            if (FDD[i].Data == 0 || DSKName[i] == 0)
            {
                if (!fmsx_runtime_load_disk(i, saved_disk_path[i]))
                {
                    ok = FALSE;
                    break;
                }
            }
        }
    }
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
}

void fmsx_runtime_set_disk_rom_enabled(boolean enabled)
{
    const boolean desired = enabled ? TRUE : FALSE;
    if (g_disk_rom_enabled == desired)
    {
        if (!desired && g_fmsx_status.running)
        {
            fmsx_runtime_force_disk_rom_off_mapping();
        }
        return;
    }
    g_disk_rom_enabled = desired;
    if (!g_fmsx_status.running)
    {
        return;
    }

    int new_mode = Mode & ~MSX_PATCHBDOS;
    if (g_disk_rom_enabled)
    {
        /* Force transition so ResetMSX() reloads DISK.ROM with hooks disabled. */
        Mode |= MSX_PATCHBDOS;
        new_mode = Mode & ~MSX_PATCHBDOS;
    }
    (void) ResetMSX(new_mode, RAMPages, VRAMPages);
    if (!g_disk_rom_enabled)
    {
        fmsx_runtime_force_disk_rom_off_mapping();
    }
}

boolean fmsx_runtime_get_disk_rom_enabled(void)
{
    return g_disk_rom_enabled ? TRUE : FALSE;
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

unsigned fmsx_runtime_get_active_boot_mode(void)
{
    return g_active_boot_mode;
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
    return g_cartridge_path[slot_index][0] != '\0' ? g_cartridge_path[slot_index] : ROMName[slot_index];
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
    return g_disk_path[drive_index][0] != '\0' ? g_disk_path[drive_index] : DSKName[drive_index];
}

const char *fmsx_runtime_get_cartridge_path(unsigned slot_index)
{
    if (slot_index > 1u)
    {
        return 0;
    }
    return g_cartridge_path[slot_index][0] != '\0' ? g_cartridge_path[slot_index] : 0;
}

const char *fmsx_runtime_get_disk_path(unsigned drive_index)
{
    if (drive_index > 1u)
    {
        return 0;
    }
    return g_disk_path[drive_index][0] != '\0' ? g_disk_path[drive_index] : 0;
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

void fmsx_runtime_set_cartridge_mapper_override(unsigned slot_index, unsigned mapper_or_255)
{
    if (slot_index > 1u)
    {
        return;
    }
    g_cart_mapper_override[slot_index] = fmsx_runtime_clamp_mapper_override(mapper_or_255);
}

unsigned fmsx_runtime_get_cartridge_mapper_override(unsigned slot_index)
{
    if (slot_index > 1u)
    {
        return 255u;
    }
    return fmsx_runtime_clamp_mapper_override(g_cart_mapper_override[slot_index]);
}

boolean fmsx_runtime_set_disk_path(unsigned drive_index, const char *path)
{
    if (drive_index > 1u)
    {
        return FALSE;
    }

    if (path == 0 || path[0] == '\0')
    {
        g_disk_path[drive_index][0] = '\0';
        DSKName[drive_index] = 0;
        return TRUE;
    }

    unsigned n = 0u;
    while (path[n] != '\0' && n + 1u < sizeof(g_disk_path[drive_index]))
    {
        g_disk_path[drive_index][n] = path[n];
        ++n;
    }
    g_disk_path[drive_index][n] = '\0';

    if (path[n] != '\0')
    {
        return FALSE;
    }

    DSKName[drive_index] = g_disk_path[drive_index];
    return TRUE;
}

boolean fmsx_runtime_load_cartridge_ex(unsigned slot_index, const char *path, TFmsxRomLoadReport *report)
{
    static const unsigned kMapperFallbackChain[] = {
        MAP_GUESS, MAP_KONAMI5, MAP_KONAMI4, MAP_ASCII8, MAP_ASCII16, MAP_GEN8, MAP_GEN16
    };

    fmsx_runtime_reset_rom_load_report(slot_index, report);

    if (slot_index > 1u || path == 0 || path[0] == '\0')
    {
        fmsx_runtime_set_rom_load_error(report, FMSX_ROM_ERR_INVALID_ARGS);
        return FALSE;
    }
    if (!g_fmsx_status.running)
    {
        fmsx_runtime_set_rom_load_error(report, FMSX_ROM_ERR_NOT_RUNNING);
        return FALSE;
    }

    unsigned path_len = 0u;
    while (path[path_len] != '\0' && path_len + 1u < sizeof(g_cartridge_path[slot_index]))
    {
        ++path_len;
    }
    if (path[path_len] != '\0')
    {
        fmsx_runtime_set_rom_load_error(report, FMSX_ROM_ERR_INVALID_ARGS);
        return FALSE;
    }

    const TFmsxRomProbeResult probe = fmsx_runtime_probe_rom_file(path);
    if (probe == FMSX_ROM_PROBE_OPEN_FAIL)
    {
        fmsx_runtime_set_load_diag(9301u); /* open fail */
        fmsx_runtime_set_rom_load_error(report, FMSX_ROM_ERR_OPEN_FAIL);
        return FALSE;
    }
    if (probe == FMSX_ROM_PROBE_INVALID_SIGNATURE)
    {
        fmsx_runtime_set_load_diag(9302u); /* invalid signature */
        fmsx_runtime_set_rom_load_error(report, FMSX_ROM_ERR_INVALID_SIGNATURE);
        return FALSE;
    }

    unsigned mapper_candidates[sizeof(kMapperFallbackChain) / sizeof(kMapperFallbackChain[0])];
    unsigned mapper_count = 0u;
    const unsigned mapper_override = fmsx_runtime_get_cartridge_mapper_override(slot_index);
    if (mapper_override == 255u)
    {
        for (unsigned i = 0u; i < (sizeof(kMapperFallbackChain) / sizeof(kMapperFallbackChain[0])); ++i)
        {
            mapper_candidates[mapper_count++] = kMapperFallbackChain[i];
        }
    }
    else
    {
        mapper_candidates[mapper_count++] = mapper_override;
    }

    char prev_path[sizeof(g_cartridge_path[0])];
    unsigned prev_len = 0u;
    while (prev_len + 1u < sizeof(prev_path) && g_cartridge_path[slot_index][prev_len] != '\0')
    {
        prev_path[prev_len] = g_cartridge_path[slot_index][prev_len];
        ++prev_len;
    }
    prev_path[prev_len] = '\0';
    const boolean prev_has_custom_path = (prev_path[0] != '\0') ? TRUE : FALSE;
    const boolean prev_had_rom = (ROMData[slot_index] != 0) ? TRUE : FALSE;
    const uint8_t prev_rom_type = ROMType[slot_index];
    const char *prev_rom_name_ptr = ROMName[slot_index];

    char prev_restore_name[sizeof(g_cartridge_path[0])];
    prev_restore_name[0] = '\0';
    if (!prev_has_custom_path && prev_rom_name_ptr != 0)
    {
        unsigned n = 0u;
        while (prev_rom_name_ptr[n] != '\0' && n + 1u < sizeof(prev_restore_name))
        {
            prev_restore_name[n] = prev_rom_name_ptr[n];
            ++n;
        }
        prev_restore_name[n] = '\0';
    }

    fmsx_runtime_set_load_diag(2301u); /* load cart begin */
    for (unsigned i = 0u; i < mapper_count; ++i)
    {
        const unsigned mapper = mapper_candidates[i];
        if (report != 0)
        {
            report->attempts = i + 1u;
            report->selected_mapper = (mapper == MAP_GUESS) ? 255u : mapper;
        }
        fmsx_runtime_set_load_diag(2310u + (i + 1u)); /* load attempt #N */
        const int pages = LoadCart(path, (int) slot_index, (int) mapper);
        if (pages > 0)
        {
            if (!fmsx_runtime_set_cartridge_path(slot_index, path))
            {
                fmsx_runtime_set_load_diag(9305u); /* path apply failed */
                fmsx_runtime_set_rom_load_error(report, FMSX_ROM_ERR_UNKNOWN);
                return FALSE;
            }
            if (report != 0)
            {
                report->success = TRUE;
                report->effective_mapper = ROMType[slot_index];
                report->error = FMSX_ROM_OK;
                report->pages_loaded = pages;
            }
            fmsx_runtime_set_load_diag(2302u); /* load cart ok */
            g_fmsx_status.last_pc = (int) CPU.PC.W;
            return TRUE;
        }
        if (i + 1u < mapper_count)
        {
            fmsx_runtime_set_load_diag(2320u + (i + 1u)); /* fallback next mapper */
        }
    }

    fmsx_runtime_set_load_diag(9303u); /* all mappers failed */
    fmsx_runtime_set_rom_load_error(
        report,
        (mapper_override == 255u) ? FMSX_ROM_ERR_UNSUPPORTED_MAPPER : FMSX_ROM_ERR_LOAD_FAIL
    );

    boolean restore_ok = TRUE;
    if (prev_had_rom)
    {
        const char *restore_name = prev_has_custom_path ? prev_path : prev_restore_name;
        if (restore_name == 0 || restore_name[0] == '\0')
        {
            restore_ok = FALSE;
        }
        else
        {
            int restore_type = (prev_rom_type <= MAP_GUESS) ? (int) prev_rom_type : (int) MAP_GUESS;
            if (LoadCart(restore_name, (int) slot_index, restore_type) <= 0)
            {
                restore_ok = FALSE;
            }
        }
    }

    if (prev_has_custom_path)
    {
        if (!fmsx_runtime_set_cartridge_path(slot_index, prev_path))
        {
            restore_ok = FALSE;
        }
    }
    else
    {
        g_cartridge_path[slot_index][0] = '\0';
        ROMName[slot_index] = prev_rom_name_ptr;
    }

    if (!restore_ok)
    {
        fmsx_runtime_set_load_diag(9304u); /* restore previous failed */
        fmsx_runtime_set_rom_load_error(report, FMSX_ROM_ERR_RESTORE_PREV_FAIL);
    }
    return FALSE;
}

boolean fmsx_runtime_load_cartridge(unsigned slot_index, const char *path)
{
    return fmsx_runtime_load_cartridge_ex(slot_index, path, 0);
}

boolean fmsx_runtime_load_disk(unsigned drive_index, const char *path)
{
    if (drive_index > 1u || path == 0 || path[0] == '\0' || !g_fmsx_status.running)
    {
        return FALSE;
    }

    char old_path[192];
    unsigned old_n = 0u;
    while (old_n + 1u < sizeof(old_path) && g_disk_path[drive_index][old_n] != '\0')
    {
        old_path[old_n] = g_disk_path[drive_index][old_n];
        ++old_n;
    }
    old_path[old_n] = '\0';

    if (!fmsx_runtime_set_disk_path(drive_index, path))
    {
        return FALSE;
    }

    fmsx_runtime_set_load_diag(2401u); /* before ChangeDisk */
    if (!ChangeDisk((uint8_t) drive_index, DSKName[drive_index]))
    {
        fmsx_runtime_set_load_diag(9401u); /* ChangeDisk failed */
        (void) fmsx_runtime_set_disk_path(drive_index, old_path[0] != '\0' ? old_path : 0);
        if (old_path[0] != '\0')
        {
            (void) ChangeDisk((uint8_t) drive_index, DSKName[drive_index]);
        }
        return FALSE;
    }
    if (FDD[drive_index].Data == 0
     || FDD[drive_index].Tracks <= 0
     || FDD[drive_index].Sectors <= 0
     || FDD[drive_index].SecSize <= 0)
    {
        fmsx_runtime_set_load_diag(9402u); /* geometry invalid */
        (void) ChangeDisk((uint8_t) drive_index, 0);
        (void) fmsx_runtime_set_disk_path(drive_index, old_path[0] != '\0' ? old_path : 0);
        if (old_path[0] != '\0')
        {
            (void) ChangeDisk((uint8_t) drive_index, DSKName[drive_index]);
        }
        return FALSE;
    }

    fmsx_runtime_set_load_diag(2402u); /* ChangeDisk ok */
    g_fmsx_status.last_pc = (int) CPU.PC.W;
    return TRUE;
}

boolean fmsx_runtime_unload_cartridge(unsigned slot_index)
{
    if (slot_index > 1u || !g_fmsx_status.running)
    {
        return FALSE;
    }
    unsigned ps = 0u;
    unsigned ss = 0u;
    if (!fmsx_runtime_find_slot_map(slot_index, &ps, &ss))
    {
        return FALSE;
    }

    ROMMask[slot_index] = 0;
    ROMName[slot_index] = 0;
    g_cartridge_path[slot_index][0] = '\0';
    for (unsigned page = 0u; page < 8u; ++page)
    {
        MemMap[ps][ss][page] = EmptyRAM;
    }

    g_fmsx_status.last_pc = (int) CPU.PC.W;
    return TRUE;
}

boolean fmsx_runtime_unload_disk(unsigned drive_index)
{
    if (drive_index > 1u || !g_fmsx_status.running)
    {
        return FALSE;
    }

    if (!ChangeDisk((uint8_t) drive_index, 0))
    {
        return FALSE;
    }

    DSKName[drive_index] = 0;
    g_disk_path[drive_index][0] = '\0';
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
