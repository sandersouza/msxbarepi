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
extern uint8_t DiskROMLoaded;
extern void fmsx_cpu_set_turbo_percent(unsigned percent);
extern unsigned fmsx_video_get_latest(const u16 **pixels, unsigned *width, unsigned *height);
extern const char *ROMName[];
extern uint8_t *ROMData[];
extern uint8_t ROMMask[];
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
static unsigned g_active_model_profile = FMSX_MODEL_PROFILE_MSX1;
static boolean g_use_embedded_bios = FALSE;
static unsigned g_z80_turbo_mode = 0u;
static boolean g_scc_cart_enabled = TRUE;

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

static int fmsx_runtime_machine_mode_bits_for_profile(unsigned profile)
{
    switch (profile)
    {
    case FMSX_MODEL_PROFILE_MSX2:  return MSX_MSX2;
    case FMSX_MODEL_PROFILE_MSX2P: return MSX_MSX2P;
    case FMSX_MODEL_PROFILE_MSX1:
    default: return MSX_MSX1;
    }
}

static int fmsx_runtime_machine_mode_bits(void)
{
    return fmsx_runtime_machine_mode_bits_for_profile(g_model_profile);
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
    g_active_boot_mode = g_boot_mode;
    g_fmsx_status.initialized = TRUE;
    g_fmsx_status.running = FALSE;
    g_fmsx_status.frames = 0u;
    g_fmsx_status.last_pc = 0;
    g_fmsx_status.last_error = 0;

    const int base_mode = (fmsx_runtime_effective_refresh_hz() == 50u ? MSX_PAL : MSX_NTSC) | MSX_JOY1;
    int startup_mode = fmsx_runtime_machine_mode_bits() | base_mode;
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
    const unsigned requested_model_profile = g_model_profile;
    unsigned started_model_profile = requested_model_profile;
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

    if (!started && requested_model_profile != FMSX_MODEL_PROFILE_MSX1)
    {
        /*
         * Safety fallback: when MSX2/MSX2+ BIOS set is unavailable/corrupted,
         * retry as MSX1 instead of leaving the emulator dead at boot/reset.
         */
        TrashMSX();
        started_model_profile = FMSX_MODEL_PROFILE_MSX1;
        startup_mode = fmsx_runtime_machine_mode_bits_for_profile(FMSX_MODEL_PROFILE_MSX1) | base_mode;
        g_use_embedded_bios = game_mode ? TRUE : FALSE;
        fmsx_runtime_set_load_diag(2103u); /* fallback retry as MSX1 */
        started = StartMSX(startup_mode, COMBO_FMSX_RAMMAPPER_PAGES, 2) ? TRUE : FALSE;
        fmsx_runtime_set_load_diag(started ? 2104u : 9104u); /* fallback result */
        g_use_embedded_bios = FALSE;
    }

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
    g_active_model_profile = started_model_profile;

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

unsigned fmsx_runtime_get_active_model_profile(void)
{
    return g_active_model_profile;
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
