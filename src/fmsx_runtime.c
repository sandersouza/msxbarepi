#include "fmsx_runtime.h"

#include "../third_party/fmsx/fMSX/MSX.h"
#include "../third_party/fmsx/Z80/Z80.h"
#include "Sound.h"
#include "fmsx_audio_layout.h"
#include "fmsx_compat/stdio.h"
#include "fmsx_virtual_fs.h"
#include "fmsx_initramfs.h"
#include <ctype.h>
#include <string.h>

#ifndef MSXBARE_FMSX_FAST_CUTOFF_FRAMES_MSX1
#define MSXBARE_FMSX_FAST_CUTOFF_FRAMES_MSX1 154u
#endif

#ifndef MSXBARE_FMSX_FAST_CUTOFF_FRAMES_MSX2
#define MSXBARE_FMSX_FAST_CUTOFF_FRAMES_MSX2 150u
#endif

#ifndef MSXBARE_FMSX_FAST_CUTOFF_FRAMES_MSX2P
#define MSXBARE_FMSX_FAST_CUTOFF_FRAMES_MSX2P 150u
#endif

#ifndef MSXBARE_FMSX_GAME_FAST_FORWARD_FRAMES_MSX2
#define MSXBARE_FMSX_GAME_FAST_FORWARD_FRAMES_MSX2 279u
#endif

#ifndef MSXBARE_FMSX_GAME_FAST_FORWARD_FRAMES_MSX2P
#define MSXBARE_FMSX_GAME_FAST_FORWARD_FRAMES_MSX2P 279u
#endif

#ifndef MSXBARE_FMSX_GAME_FAST_FORWARD_STEPS_MSX2
#define MSXBARE_FMSX_GAME_FAST_FORWARD_STEPS_MSX2 6u
#endif

#ifndef MSXBARE_FMSX_GAME_FAST_FORWARD_STEPS_MSX2P
#define MSXBARE_FMSX_GAME_FAST_FORWARD_STEPS_MSX2P 6u
#endif

#ifndef MSXBARE_FMSX_Z80_SLICES_PER_FRAME_MAX
#define MSXBARE_FMSX_Z80_SLICES_PER_FRAME_MAX 4096u
#endif

#ifndef MSXBARE_FMSX_GAME_VIDEO_SKIP_FRAMES_MSX2
#define MSXBARE_FMSX_GAME_VIDEO_SKIP_FRAMES_MSX2 192u
#endif

#ifndef MSXBARE_FMSX_GAME_VIDEO_SKIP_FRAMES_MSX2P
#define MSXBARE_FMSX_GAME_VIDEO_SKIP_FRAMES_MSX2P 0u
#endif

#ifndef MSXBARE_ENABLE_DEBUG_OVERLAY
#define MSXBARE_ENABLE_DEBUG_OVERLAY 0
#endif

extern Z80 CPU;
extern int ScanLine;
extern uint8_t UPeriod;
extern int Mode;
extern int MasterSwitch;
extern int HPeriod;
extern int VPeriod;
extern int RAMPages;
extern int VRAMPages;
extern uint8_t DiskROMLoaded;
extern uint8_t FmsxMSX2PKanjiBasicLoaded;
extern uint8_t *FmsxMSX2PKanjiBasicBase;
extern uint8_t FmsxMSX2PMSXJELoaded;
extern uint8_t *FmsxMSX2PMSXJEBase;
extern uint32_t FmsxP1Select31Count;
extern uint32_t FmsxP1Select03Count;
extern uint32_t FmsxRTCReadCount;
extern uint32_t FmsxRTCWriteCount;
extern uint8_t FmsxRTCLastReg;
extern uint8_t FmsxRTCLastMode;
extern uint32_t FmsxVDPFrameCounter;
extern uint8_t FmsxVDPLinePhase;
extern uint8_t EnWrite[4];
extern uint32_t FmsxIE1EventCount;
extern uint32_t FmsxIE1AckCount;
extern uint32_t FmsxIE1ArmedCount;
extern uint32_t FmsxIE1FiredHBlankCount;
extern uint32_t FmsxVDPPort99ReadCount;
extern uint32_t FmsxVDPPort99WriteCount;
extern uint32_t FmsxVDPPort9BWriteCount;
extern uint8_t FmsxVDPPort9BLastReg17Before;
extern uint8_t FmsxVDPPort9BLastTarget;
extern uint8_t FmsxVDPPort9BLastReg17After;
extern uint8_t FmsxVDPPort9BLastValue;
extern uint8_t FmsxVDPLastStatusReadReg;
extern uint8_t FmsxVDPLastStatusReadValue;
extern uint8_t FmsxVDPLastPort99Op;
extern uint8_t FmsxVDPLastPort99Value;
extern uint8_t FmsxVDPLastPort99ALatch;
extern uint8_t FmsxVDPLastPort99VKey;
extern uint8_t FmsxVDPLastPort99R15;
extern uint16_t FmsxVDPLastPort99PC;
extern uint32_t FmsxVDPRegWriteCount[64];
extern uint32_t FmsxVDPStatusReadCount[16];
extern uint32_t FmsxKanjiReadCount;
extern uint32_t FmsxKanjiAddrWriteCount;
extern uint32_t FmsxKanjiNullReadCount;
extern uint8_t PSL[4];
extern uint8_t PSLReg;
extern uint8_t SSL[4];
extern uint8_t ScrMode;
extern uint8_t VDP[64];
extern uint8_t VDPStatus[16];
extern AY8910 PSG;
extern YM2413 OPLL;
extern uint8_t fmsx_vdp_get_status1_live(void);
extern uint8_t fmsx_vdp_get_status2_live(void);
extern uint8_t fmsx_vdp_get_ie1_target_line(void);
extern int fmsx_vdp_get_ie1_target_delta(void);
extern uint8_t fmsx_vdp_get_effective_odd_page(void);
extern uint8_t fmsx_vdp_get_render_page(void);
extern void fmsx_vdp_trace_get_view(const TFmsxVDPTraceEvent **events, unsigned *capacity, unsigned *count, unsigned *head, unsigned *dropped);
extern void fmsx_kmg_trace_get_view(const TFmsxKmgTraceEvent **events, unsigned *capacity, unsigned *count, unsigned *head, unsigned *dropped);
extern void fmsx_scc_trace_get_view(const TFmsxSCCTraceEvent **events, unsigned *capacity, unsigned *count, unsigned *head, unsigned *dropped);
extern void fmsx_audio_port_trace_get_view(const TFmsxAudioPortTraceEvent **events, unsigned *capacity, unsigned *count, unsigned *head, unsigned *dropped);
extern void fmsx_cpu_set_turbo_percent(unsigned percent);
extern unsigned fmsx_video_get_latest(const u16 **pixels, unsigned *width, unsigned *height);
extern const char *ROMName[];
extern uint8_t *ROMData[];
extern uint8_t ROMMapper[][4];
extern uint8_t ROMMask[];
extern uint8_t ROMType[];
extern uint8_t FmsxCartMapperLockedType[];
extern uint8_t FmsxCartMapperTypeSource[];
extern uint8_t FmsxCartLastClassifiedSlot;
extern uint8_t FmsxCartLastClassifiedType;
extern uint8_t FmsxCartLastClassifiedSource;
extern uint8_t FmsxManbow2FlashLastOp;
extern uint8_t FmsxManbow2FlashLastSlot;
extern uint8_t FmsxManbow2FlashLastValue;
extern uint8_t FmsxManbow2FlashLastReadValue;
extern uint8_t FmsxManbow2FlashLastState;
extern uint8_t FmsxManbow2FlashLastMode;
extern uint16_t FmsxManbow2FlashLastAddr;
extern uint32_t FmsxManbow2FlashLastOffset;
extern uint32_t FmsxManbow2FlashProgramCount;
extern uint32_t FmsxManbow2FlashEraseCount;
extern uint32_t FmsxManbow2FlashReadCount;
extern uint8_t *MemMap[4][4][8];
extern uint8_t *EmptyRAM;
extern uint8_t *Kanji;
extern uint8_t *FmsxKanjiBase;
extern uint8_t *RAM[8];
extern const char *DSKName[];
extern FDIDisk FDD[];
extern WD1793 FDC;
extern int CheatCount;
extern CheatCode CheatCodes[MAXCHEATS];
extern int ApplyCheats(void);
extern void fmsx_video_set_overscan(boolean enabled);
extern void fmsx_local_ym2413_set_layer_gain_pct(unsigned pct);
extern unsigned fmsx_local_ym2413_get_layer_gain_pct(void);
extern void fmsx_local_ym2413_refresh(YM2413 *D);
extern unsigned FmsxTurboPercent;
extern int g_fmsx_quit_after_vblank;
extern void fmsx_audio_begin_frame_render_accounting(void);
extern unsigned fmsx_audio_end_frame_render_accounting(void);
extern void fmsx_runtime_keyboard_reset_pipeline(void);
extern uint64_t msxbare_monotonic_time_us(void);

static TFmsxRuntimeStatus g_fmsx_status = { FALSE, FALSE, 0u, 0, 0 };
static TFmsxFramePerfStats g_frame_perf_stats = { 0 };
static char g_cartridge_path[2][192] = {{0}};
static char g_disk_path[2][192] = {{0}};
static volatile unsigned g_load_diag_stage = 0u;
static const unsigned kFmsxAudioRate = 48000u;
static unsigned g_boot_warmup_frames_remaining = 0u;
static boolean g_boot_forced_turbo = FALSE;
static unsigned g_boot_video_gate_frames_remaining = 0u;
static boolean g_disk_rom_enabled = TRUE;
static boolean g_kanji_rom_enabled = TRUE;
static unsigned g_boot_mode = 0u;
static unsigned g_active_boot_mode = 0u;
static unsigned g_model_profile = FMSX_MODEL_PROFILE_MSX1;
static unsigned g_active_model_profile = FMSX_MODEL_PROFILE_MSX1;
static unsigned g_rammapper_kb = 256u;
unsigned g_fmsx_megaram_kb = 0u;
static boolean g_use_embedded_bios = FALSE;
static unsigned g_z80_turbo_mode = 0u;
static boolean g_panasonic_turbo_enabled = FALSE;
static boolean g_fm_music_enabled = TRUE;
static boolean g_scc_plus_enabled = TRUE;
static boolean g_scc_dual_cart_enabled = FALSE;
static boolean g_audio_layer1_muted = FALSE; /* PSG + noise */
static boolean g_audio_layer2_muted = FALSE; /* FM */
static boolean g_audio_layer3_muted = FALSE; /* SCC */
static unsigned g_fm_layer_gain_pct = 100u;
static unsigned g_refresh_hz = 60u;
static boolean g_frame_perf_telemetry_enabled = MSXBARE_ENABLE_DEBUG_OVERLAY ? TRUE : FALSE;
int g_fmsx_fmpac_enabled = 1;
uint8_t g_fmsx_scc_internal_slot = 0xFFu;
uint8_t g_fmsx_scc_dual_slot = 0xFFu;
static unsigned g_vdp_prev_ce = 0u;
static unsigned g_vdp_cmd_starts = 0u;
static unsigned g_vdp_copy_starts = 0u;
static unsigned g_game_master_sequence = 0u;

typedef struct
{
    boolean active;
    const TGameMasterPoke *pokes;
    unsigned poke_count;
    boolean has_value_override;
    uint16_t value_override;
    unsigned sequence;
} TFmsxGameMasterSlot;

typedef struct
{
    boolean used;
    uint16_t address;
    uint8_t size_bits;
    uint16_t orig_value;
} TFmsxGameMasterRecord;

static TFmsxGameMasterSlot g_game_master_slots[GAMEMASTER_MAX_CHEATS];
static TFmsxGameMasterRecord g_game_master_records[GAMEMASTER_MAX_POKES];

static void fmsx_runtime_apply_msx2p_kanji_mappings(void)
{
    if (!MODEL(MSX_MSX2P))
    {
        return;
    }

    if (g_kanji_rom_enabled && FmsxMSX2PMSXJEBase != 0)
    {
        MemMap[0][3][0] = FmsxMSX2PMSXJEBase;
        MemMap[0][3][1] = FmsxMSX2PMSXJEBase + 0x2000;
        MemMap[0][3][2] = FmsxMSX2PMSXJEBase + 0x4000;
        MemMap[0][3][3] = FmsxMSX2PMSXJEBase + 0x6000;
        MemMap[0][3][4] = FmsxMSX2PMSXJEBase + 0x8000;
        MemMap[0][3][5] = FmsxMSX2PMSXJEBase + 0xA000;
        MemMap[0][3][6] = FmsxMSX2PMSXJEBase + 0xC000;
        MemMap[0][3][7] = FmsxMSX2PMSXJEBase + 0xE000;
        FmsxMSX2PMSXJELoaded = 1u;
    }
    else
    {
        MemMap[0][3][0] = EmptyRAM;
        MemMap[0][3][1] = EmptyRAM;
        MemMap[0][3][2] = EmptyRAM;
        MemMap[0][3][3] = EmptyRAM;
        MemMap[0][3][4] = EmptyRAM;
        MemMap[0][3][5] = EmptyRAM;
        MemMap[0][3][6] = EmptyRAM;
        MemMap[0][3][7] = EmptyRAM;
        FmsxMSX2PMSXJELoaded = 0u;
    }

    if (g_kanji_rom_enabled && FmsxMSX2PKanjiBasicBase != 0)
    {
        MemMap[3][1][2] = FmsxMSX2PKanjiBasicBase;
        MemMap[3][1][3] = FmsxMSX2PKanjiBasicBase + 0x2000;
        MemMap[3][1][4] = FmsxMSX2PKanjiBasicBase + 0x4000;
        MemMap[3][1][5] = FmsxMSX2PKanjiBasicBase + 0x6000;
        FmsxMSX2PKanjiBasicLoaded = 1u;
    }
    else
    {
        MemMap[3][1][2] = EmptyRAM;
        MemMap[3][1][3] = EmptyRAM;
        MemMap[3][1][4] = EmptyRAM;
        MemMap[3][1][5] = EmptyRAM;
        FmsxMSX2PKanjiBasicLoaded = 0u;
    }
}

static boolean fmsx_runtime_apply_kanji_rom_enabled(void)
{
    Kanji = (g_kanji_rom_enabled && FmsxKanjiBase != 0) ? FmsxKanjiBase : 0;
    fmsx_runtime_apply_msx2p_kanji_mappings();
    return Kanji != 0 ? TRUE : FALSE;
}

static boolean fmsx_runtime_disk_rom_effective(unsigned model_profile)
{
    (void) model_profile;
    return g_disk_rom_enabled ? TRUE : FALSE;
}

static void fmsx_runtime_reset_vdp_diag_counters(void)
{
    g_vdp_prev_ce = 0u;
    g_vdp_cmd_starts = 0u;
    g_vdp_copy_starts = 0u;
}

static unsigned fmsx_runtime_clamp_perf_us(uint64_t elapsed_us)
{
    return (unsigned) (elapsed_us > 9999u ? 9999u : elapsed_us);
}

static unsigned fmsx_runtime_clamp_rammapper_kb(unsigned kb)
{
    switch (kb)
    {
    case 512u:
    case 1024u:
        return kb;
    case 256u:
    default:
        return 256u;
    }
}

static unsigned fmsx_runtime_rammapper_pages(void)
{
    switch (g_rammapper_kb)
    {
    case 512u:  return 32u;
    case 1024u: return 64u;
    case 256u:
    default:    return 16u;
    }
}

static unsigned fmsx_runtime_clamp_megaram_kb(unsigned kb)
{
    switch (kb)
    {
    case 0u:
    case 256u:
    case 512u:
    case 1024u:
        return kb;
    default:
        return 0u;
    }
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

static boolean fmsx_runtime_slot_has_user_cartridge(unsigned slot_index)
{
    if (slot_index > 1u)
    {
        return FALSE;
    }
    return (ROMData[slot_index] != 0)
        || (g_cartridge_path[slot_index][0] != '\0')
        || (ROMName[slot_index] != 0);
}

static unsigned fmsx_runtime_pick_internal_scc_slot(void)
{
    static const uint8_t kPreferredSlots[] = { 5u, 4u, 3u, 2u };

    for (unsigned i = 0u; i < sizeof(kPreferredSlots) / sizeof(kPreferredSlots[0]); ++i)
    {
        const unsigned slot = kPreferredSlots[i];
        if (slot < MAXSLOTS && ROMData[slot] == 0)
        {
            return slot;
        }
    }
    return 0xFFu;
}

static void fmsx_runtime_refresh_scc_virtual_slots(void)
{
    g_fmsx_scc_internal_slot = 0xFFu;
    g_fmsx_scc_dual_slot = 0xFFu;

    if (g_scc_plus_enabled)
    {
        const unsigned slot = fmsx_runtime_pick_internal_scc_slot();
        if (slot < MAXSLOTS)
        {
            g_fmsx_scc_internal_slot = (uint8_t) slot;
        }
    }

    if (g_scc_dual_cart_enabled)
    {
        if (fmsx_runtime_slot_has_user_cartridge(1u))
        {
            g_scc_dual_cart_enabled = FALSE;
        }
        else
        {
            g_fmsx_scc_dual_slot = 1u;
        }
    }
}

static int fmsx_runtime_game_master_is_owned_text(const uint8_t text[14])
{
    return text[0] == 'G' && text[1] == 'M' && text[2] == ':';
}

static void fmsx_runtime_game_master_format_text(CheatCode *code, unsigned address)
{
    if (code == 0)
    {
        return;
    }
    snprintf((char *) code->Text, sizeof(code->Text), "GM:%04X", address & 0xFFFFu);
}

static int fmsx_runtime_game_master_find_code_index(unsigned address)
{
    const uint32_t cheat_addr = 0x01000000u | (address & 0xFFFFu);

    for (int i = 0; i < CheatCount; ++i)
    {
        if (CheatCodes[i].Addr == cheat_addr && fmsx_runtime_game_master_is_owned_text(CheatCodes[i].Text))
        {
            return i;
        }
    }
    return -1;
}

static void fmsx_runtime_game_master_remove_code_index(int index)
{
    if (index < 0 || index >= CheatCount)
    {
        return;
    }
    for (int i = index; i + 1 < CheatCount; ++i)
    {
        CheatCodes[i] = CheatCodes[i + 1];
    }
    --CheatCount;
}

static boolean fmsx_runtime_game_master_read_orig(uint16_t address, uint8_t size_bits, uint16_t *orig_value)
{
    if (orig_value == 0)
    {
        return FALSE;
    }
    if (size_bits == 16u)
    {
        return fmsx_runtime_peek16(address, orig_value);
    }
    if (size_bits == 8u)
    {
        uint8_t value8 = 0u;
        if (!fmsx_runtime_peek8(address, &value8))
        {
            return FALSE;
        }
        *orig_value = value8;
        return TRUE;
    }
    return FALSE;
}

static boolean fmsx_runtime_game_master_write_value(uint16_t address, uint8_t size_bits, uint16_t value)
{
    const unsigned page = ((unsigned) address) >> 13;
    const unsigned offset = ((unsigned) address) & 0x1FFFu;

    if (size_bits != 8u && size_bits != 16u)
    {
        return FALSE;
    }

    if (page < 8u && RAM[page] != 0)
    {
        RAM[page][offset] = (uint8_t) (value & 0x00FFu);
    }
    WrZ80(address, (uint8_t) (value & 0x00FFu));
    if (size_bits == 16u)
    {
        const uint16_t hi_address = (uint16_t) (address + 1u);
        const unsigned hi_page = ((unsigned) hi_address) >> 13;
        const unsigned hi_offset = ((unsigned) hi_address) & 0x1FFFu;
        if (hi_page < 8u && RAM[hi_page] != 0)
        {
            RAM[hi_page][hi_offset] = (uint8_t) (value >> 8);
        }
        WrZ80(hi_address, (uint8_t) (value >> 8));
    }

    if (size_bits == 16u)
    {
        uint16_t verify16 = 0u;
        return fmsx_runtime_peek16(address, &verify16) && verify16 == value;
    }
    else
    {
        uint8_t verify8 = 0u;
        return fmsx_runtime_peek8(address, &verify8) && verify8 == (uint8_t) (value & 0x00FFu);
    }
}

static void fmsx_runtime_game_master_clear_tables(void)
{
    memset(g_game_master_slots, 0, sizeof(g_game_master_slots));
    memset(g_game_master_records, 0, sizeof(g_game_master_records));
    g_game_master_sequence = 0u;
}

static int fmsx_runtime_game_master_find_slot(const TGameMasterPoke *pokes, unsigned poke_count)
{
    for (unsigned i = 0u; i < GAMEMASTER_MAX_CHEATS; ++i)
    {
        if (g_game_master_slots[i].active
            && g_game_master_slots[i].pokes == pokes
            && g_game_master_slots[i].poke_count == poke_count)
        {
            return (int) i;
        }
    }
    return -1;
}

static int fmsx_runtime_game_master_find_or_alloc_slot(const TGameMasterPoke *pokes, unsigned poke_count)
{
    int free_index = -1;

    for (unsigned i = 0u; i < GAMEMASTER_MAX_CHEATS; ++i)
    {
        if (g_game_master_slots[i].active
            && g_game_master_slots[i].pokes == pokes
            && g_game_master_slots[i].poke_count == poke_count)
        {
            return (int) i;
        }
        if (free_index < 0 && !g_game_master_slots[i].active)
        {
            free_index = (int) i;
        }
    }
    return free_index;
}

static const TGameMasterPoke *fmsx_runtime_game_master_effective_poke(const TFmsxGameMasterSlot *slot, unsigned poke_index)
{
    static TGameMasterPoke override_poke;

    if (slot == 0 || !slot->active || slot->pokes == 0 || poke_index >= slot->poke_count)
    {
        return 0;
    }
    if (slot->has_value_override && slot->poke_count == 1u && poke_index == 0u)
    {
        override_poke = slot->pokes[0];
        override_poke.value = (override_poke.size_bits == 8u)
            ? (uint16_t) (slot->value_override & 0x00FFu)
            : slot->value_override;
        return &override_poke;
    }
    return &slot->pokes[poke_index];
}

static int fmsx_runtime_game_master_find_record(uint16_t address, uint8_t size_bits)
{
    for (unsigned i = 0u; i < GAMEMASTER_MAX_POKES; ++i)
    {
        if (g_game_master_records[i].used
            && g_game_master_records[i].address == address
            && g_game_master_records[i].size_bits == size_bits)
        {
            return (int) i;
        }
    }
    return -1;
}

static int fmsx_runtime_game_master_find_or_alloc_record(uint16_t address, uint8_t size_bits)
{
    int free_index = -1;

    for (unsigned i = 0u; i < GAMEMASTER_MAX_POKES; ++i)
    {
        if (g_game_master_records[i].used
            && g_game_master_records[i].address == address
            && g_game_master_records[i].size_bits == size_bits)
        {
            return (int) i;
        }
        if (free_index < 0 && !g_game_master_records[i].used)
        {
            free_index = (int) i;
        }
    }
    return free_index;
}

static boolean fmsx_runtime_game_master_ensure_records(const TGameMasterPoke *pokes,
                                                       unsigned poke_count,
                                                       boolean has_value_override,
                                                       uint16_t value_override)
{
    for (unsigned i = 0u; i < poke_count; ++i)
    {
        TGameMasterPoke effective = pokes[i];
        int record_index;

        if (has_value_override && poke_count == 1u && i == 0u)
        {
            effective.value = (effective.size_bits == 8u)
                ? (uint16_t) (value_override & 0x00FFu)
                : value_override;
        }
        if (effective.size_bits != 8u && effective.size_bits != 16u)
        {
            return FALSE;
        }

        record_index = fmsx_runtime_game_master_find_or_alloc_record(effective.address, effective.size_bits);
        if (record_index < 0)
        {
            return FALSE;
        }
        if (!g_game_master_records[record_index].used)
        {
            uint16_t orig_value = 0u;
            if (!fmsx_runtime_game_master_read_orig(effective.address, effective.size_bits, &orig_value))
            {
                return FALSE;
            }
            g_game_master_records[record_index].used = TRUE;
            g_game_master_records[record_index].address = effective.address;
            g_game_master_records[record_index].size_bits = effective.size_bits;
            g_game_master_records[record_index].orig_value = orig_value;
        }
    }
    return TRUE;
}

static boolean fmsx_runtime_game_master_commit(void)
{
    Cheats(CHTS_OFF);

    for (unsigned record_index = 0u; record_index < GAMEMASTER_MAX_POKES; ++record_index)
    {
        TFmsxGameMasterRecord *record = &g_game_master_records[record_index];
        const TGameMasterPoke *winner = 0;
        unsigned winner_sequence = 0u;

        if (!record->used)
        {
            continue;
        }

        for (unsigned slot_index = 0u; slot_index < GAMEMASTER_MAX_CHEATS; ++slot_index)
        {
            const TFmsxGameMasterSlot *slot = &g_game_master_slots[slot_index];
            if (!slot->active)
            {
                continue;
            }
            for (unsigned poke_index = 0u; poke_index < slot->poke_count; ++poke_index)
            {
                const TGameMasterPoke *poke = fmsx_runtime_game_master_effective_poke(slot, poke_index);
                if (poke != 0
                    && poke->address == record->address
                    && poke->size_bits == record->size_bits
                    && slot->sequence >= winner_sequence)
                {
                    winner = poke;
                    winner_sequence = slot->sequence;
                }
            }
        }

        if (winner != 0)
        {
            int code_index = fmsx_runtime_game_master_find_code_index(record->address);
            CheatCode *code = 0;

            if (code_index >= 0)
            {
                code = &CheatCodes[code_index];
            }
            else
            {
                if (CheatCount >= MAXCHEATS)
                {
                    Cheats(CHTS_ON);
                    (void) ApplyCheats();
                    return FALSE;
                }
                code = &CheatCodes[CheatCount++];
                code->Addr = 0x01000000u | (unsigned) record->address;
                code->Orig = record->orig_value;
                fmsx_runtime_game_master_format_text(code, record->address);
            }

            code->Addr = 0x01000000u | (unsigned) record->address;
            code->Orig = record->orig_value;
            code->Data = winner->value;
            code->Size = (winner->size_bits == 16u) ? 2u : 1u;
            fmsx_runtime_game_master_format_text(code, record->address);

            if (!fmsx_runtime_game_master_write_value(record->address, winner->size_bits, winner->value))
            {
                Cheats(CHTS_ON);
                (void) ApplyCheats();
                return FALSE;
            }
        }
        else
        {
            const int code_index = fmsx_runtime_game_master_find_code_index(record->address);
            (void) fmsx_runtime_game_master_write_value(record->address, record->size_bits, record->orig_value);
            if (code_index >= 0)
            {
                fmsx_runtime_game_master_remove_code_index(code_index);
            }
            memset(record, 0, sizeof(*record));
        }
    }

    Cheats(CHTS_ON);
    (void) ApplyCheats();
    return TRUE;
}

static unsigned fmsx_runtime_disk_subslot(void)
{
    return MODEL(MSX_MSX2P) ? 2u : 1u;
}

static void fmsx_runtime_force_disk_rom_off_mapping(void)
{
    const unsigned disk_subslot = fmsx_runtime_disk_subslot();
    /*
     * fMSX may keep DiskROM mapped even when MSX_PATCHBDOS is toggled off.
     * Enforce OFF policy by unmapping slot 3:<disk_subslot> pages 2-3 explicitly.
     */
    if (!(MODEL(MSX_MSX2P) && FmsxMSX2PKanjiBasicLoaded && disk_subslot == 1u))
    {
        MemMap[3][disk_subslot][2] = EmptyRAM;
        MemMap[3][disk_subslot][3] = EmptyRAM;
    }
    DiskROMLoaded = 0u;
    Mode &= ~MSX_PATCHBDOS;
}

static unsigned fmsx_runtime_fast_cutoff_frames(void)
{
    switch (g_model_profile)
    {
    case FMSX_MODEL_PROFILE_MSX2:  return MSXBARE_FMSX_FAST_CUTOFF_FRAMES_MSX2;
    case FMSX_MODEL_PROFILE_MSX2P: return MSXBARE_FMSX_FAST_CUTOFF_FRAMES_MSX2P;
    case FMSX_MODEL_PROFILE_MSX1:
    default: return MSXBARE_FMSX_FAST_CUTOFF_FRAMES_MSX1;
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
    if (g_boot_mode == 2u)
    {
        switch (g_model_profile)
        {
        case FMSX_MODEL_PROFILE_MSX2:
            return MSXBARE_FMSX_GAME_FAST_FORWARD_FRAMES_MSX2;
        case FMSX_MODEL_PROFILE_MSX2P:
            return MSXBARE_FMSX_GAME_FAST_FORWARD_FRAMES_MSX2P;
        case FMSX_MODEL_PROFILE_MSX1:
        default:
            break;
        }
    }

    if (fmsx_runtime_is_fast_like_boot())
    {
        /* FAST/GAME share the same model-dependent cutoff. */
        return fmsx_runtime_fast_cutoff_frames();
    }
    return 0u; /* NORM */
}

static unsigned fmsx_runtime_boot_video_gate_frames(boolean game_mode)
{
    if (!game_mode)
    {
        return 0u;
    }
    switch (g_model_profile)
    {
    case FMSX_MODEL_PROFILE_MSX2:
        return MSXBARE_FMSX_GAME_VIDEO_SKIP_FRAMES_MSX2;
    case FMSX_MODEL_PROFILE_MSX2P:
        return MSXBARE_FMSX_GAME_VIDEO_SKIP_FRAMES_MSX2P;
    case FMSX_MODEL_PROFILE_MSX1:
        /* In GAME on MSX1, hide all boot rendering until FAST cutoff frame. */
        return fmsx_runtime_fast_cutoff_frames();
    default:
        return 0u;
    }
}

static unsigned fmsx_runtime_boot_burst_steps(void)
{
    /* Keep MSX2/MSX2+ safer during BIOS boot to avoid lockups at logo screen. */
    const unsigned burst_default = (g_model_profile == FMSX_MODEL_PROFILE_MSX1) ? 4u : 2u;
    if (g_boot_mode == 2u)
    {
        switch (g_model_profile)
        {
        case FMSX_MODEL_PROFILE_MSX2:
            return MSXBARE_FMSX_GAME_FAST_FORWARD_STEPS_MSX2;
        case FMSX_MODEL_PROFILE_MSX2P:
            return MSXBARE_FMSX_GAME_FAST_FORWARD_STEPS_MSX2P;
        case FMSX_MODEL_PROFILE_MSX1:
        default:
            return burst_default;
        }
    }

    switch (g_boot_mode)
    {
    case 1u: return burst_default; /* FAST */
    case 2u: return burst_default; /* GAME on MSX1 follows FAST profile */
    default: return 1u; /* NORM */
    }
}

static unsigned fmsx_runtime_boot_forced_turbo_percent(void)
{
    /* MSX2/MSX2+ firmwares are more timing-sensitive during early boot. */
    if (g_model_profile == FMSX_MODEL_PROFILE_MSX1)
    {
        return 200u; /* MAX */
    }
    return 150u; /* PAN-like */
}

static unsigned fmsx_runtime_effective_refresh_hz(void)
{
    if (PALVideo)
    {
        return 50u;
    }
    return g_refresh_hz == 50u ? 50u : 60u;
}

static unsigned fmsx_runtime_z80_turbo_percent(void)
{
    switch (g_z80_turbo_mode)
    {
    case 1u: return 150u; /* PAN */
    case 2u: return 200u; /* MAX */
    default: return 100u; /* DES */
    }
}

static unsigned fmsx_runtime_effective_turbo_percent(void)
{
    unsigned percent = fmsx_runtime_z80_turbo_percent();
    if (g_panasonic_turbo_enabled && percent < 150u)
    {
        percent = 150u;
    }
    return percent;
}

static uint64_t fmsx_runtime_frame_interval_us_exact_internal(void)
{
    const uint64_t cpu_hz = (uint64_t) fmsx_runtime_get_base_cpu_clock_hz();
    const uint64_t frame_cycles = (uint64_t) (unsigned) ((PALVideo ? VPERIOD_PAL : VPERIOD_NTSC) / 6);

    if (cpu_hz == 0u || frame_cycles == 0u)
    {
        const unsigned refresh_hz = fmsx_runtime_effective_refresh_hz();
        return refresh_hz == 50u ? 20000u : 16667u;
    }

    return ((frame_cycles * 1000000ull) + (cpu_hz / 2ull)) / cpu_hz;
}

static void fmsx_runtime_apply_turbo_percent(unsigned percent)
{
    fmsx_cpu_set_turbo_percent(percent);
    fmsx_audio_reanchor_stream_timing();
}

static void fmsx_runtime_apply_game_boot_override(void)
{
    /* GAME now mirrors FAST boot behavior; no PC override needed. */
}

static void fmsx_runtime_apply_audio_channels(void)
{
    unsigned mask = (1u << SND_CHANNELS) - 1u;
    const unsigned psg_mask = ((1u << AY8910_CHANNELS) - 1u) << FIRST_AY8910_CHANNEL;
    const unsigned fm_mask = ((1u << YM2413_CHANNELS) - 1u) << FIRST_YM2413_CHANNEL;
    const unsigned scc_mask = ((1u << FMSX_TOTAL_SCC_CHANNELS) - 1u) << FIRST_SCC_CHANNEL;
    if (!g_fm_music_enabled)
    {
        mask &= ~fm_mask;
    }
    if (g_audio_layer1_muted)
    {
        mask &= ~psg_mask;
    }
    if (g_audio_layer2_muted)
    {
        mask &= ~fm_mask;
    }
    if (g_audio_layer3_muted)
    {
        mask &= ~scc_mask;
    }
    if (!g_audio_layer1_muted)
    {
        mask |= psg_mask;
    }
    SetChannels(150, mask);
}

static boolean fmsx_runtime_start(boolean boot_basic)
{
    fmsx_runtime_set_load_diag(2100u); /* runtime_start begin */
    fmsx_runtime_game_master_clear_tables();
    fmsx_runtime_reset_frame_perf_stats_window();
    g_boot_video_gate_frames_remaining = 0u;
    g_active_boot_mode = g_boot_mode;
    g_fmsx_fmpac_enabled = g_fm_music_enabled ? 1 : 0;
    fmsx_local_ym2413_set_layer_gain_pct(g_fm_layer_gain_pct);
    g_fmsx_status.initialized = TRUE;
    g_fmsx_status.running = FALSE;
    g_fmsx_status.frames = 0u;
    g_fmsx_status.last_pc = 0;
    g_fmsx_status.last_error = 0;
    const boolean game_mode = (g_boot_mode == 2u) ? TRUE : FALSE;
    const unsigned requested_model_profile = g_model_profile;
    /* Keep frame-step cadence aligned to full VBlank window for all models. */
    g_fmsx_quit_after_vblank = 1;
    const boolean disk_rom_effective = fmsx_runtime_disk_rom_effective(requested_model_profile);
    const unsigned startup_refresh_hz = fmsx_runtime_effective_refresh_hz();
    const int base_mode = (startup_refresh_hz == 50u ? MSX_PAL : MSX_NTSC) | MSX_JOY1;
    int startup_mode = fmsx_runtime_machine_mode_bits() | base_mode;
    startup_mode &= ~MSX_PATCHBDOS;
    if (disk_rom_effective)
    {
        /*
         * Keep DISK.ROM loaded but without BDOS patch hooks.
         * We still force a PATCHBDOS transition so ResetMSX() reloads DISK.ROM
         * deterministically, then leaves hooks disabled (WD1793 path).
         */
        Mode |= MSX_PATCHBDOS;
    }
    else
    {
        /*
         * Keep PATCHBDOS cleared when DiskROM policy is OFF.
         */
        Mode &= ~MSX_PATCHBDOS;
    }
    if (g_fmsx_megaram_kb == 0u)
    {
        startup_mode |= MSX_NO_MEGARAM;
    }
    startup_mode |= MSX_GUESSA | MSX_GUESSB;
    /* Keep internal fMSX autofire disabled. Project handles input explicitly. */
    startup_mode &= ~(MSX_AUTOSPACE | MSX_AUTOFIREA | MSX_AUTOFIREB);

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

    g_use_embedded_bios = FALSE;
    fmsx_runtime_refresh_scc_virtual_slots();
    fmsx_runtime_set_load_diag(2101u); /* before StartMSX */
    boolean started = StartMSX(startup_mode, fmsx_runtime_rammapper_pages(), 2) ? TRUE : FALSE;
    fmsx_runtime_set_load_diag(started ? 2102u : 9102u); /* after StartMSX */
    g_use_embedded_bios = FALSE;

    if (!started && game_mode && requested_model_profile == FMSX_MODEL_PROFILE_MSX1)
    {
        /*
         * GAME on MSX1 prefers external BIOS first.
         * Only if startup fails do we retry forcing embedded C-BIOS.
         */
        TrashMSX();
        g_use_embedded_bios = TRUE;
        fmsx_runtime_refresh_scc_virtual_slots();
        fmsx_runtime_set_load_diag(2107u); /* MSX1 GAME retry with forced embedded BIOS */
        started = StartMSX(startup_mode, fmsx_runtime_rammapper_pages(), 2) ? TRUE : FALSE;
        fmsx_runtime_set_load_diag(started ? 2108u : 9108u); /* forced BIOS retry result */
        g_use_embedded_bios = FALSE;
    }

    if (!started && requested_model_profile != FMSX_MODEL_PROFILE_MSX1)
    {
        /*
         * If MSX2/MSX2+ startup fails with boot-minimal mount, try once more
         * after mounting the remaining initramfs files (e.g. KANJI/SUBROM aliases).
         */
        const unsigned mounted_more = fmsx_initramfs_mount_remaining();
        if (mounted_more > 0u)
        {
            TrashMSX();
            g_use_embedded_bios = FALSE;
            fmsx_runtime_refresh_scc_virtual_slots();
            fmsx_runtime_set_load_diag(2105u); /* retry after full initramfs mount */
            started = StartMSX(startup_mode, fmsx_runtime_rammapper_pages(), 2) ? TRUE : FALSE;
            fmsx_runtime_set_load_diag(started ? 2106u : 9106u); /* retry result */
            g_use_embedded_bios = FALSE;
        }
    }

    if (!started && requested_model_profile != FMSX_MODEL_PROFILE_MSX1)
    {
        /*
         * Safety fallback: when MSX2/MSX2+ BIOS set is unavailable/corrupted,
         * retry as MSX1 instead of leaving the emulator dead at boot/reset.
         */
        TrashMSX();
        started_model_profile = FMSX_MODEL_PROFILE_MSX1;
        startup_mode = fmsx_runtime_machine_mode_bits_for_profile(FMSX_MODEL_PROFILE_MSX1) | base_mode;
        g_use_embedded_bios = FALSE;
        fmsx_runtime_refresh_scc_virtual_slots();
        fmsx_runtime_set_load_diag(2103u); /* fallback retry as MSX1 */
        started = StartMSX(startup_mode, fmsx_runtime_rammapper_pages(), 2) ? TRUE : FALSE;
        fmsx_runtime_set_load_diag(started ? 2104u : 9104u); /* fallback result */
        g_use_embedded_bios = FALSE;
        if (!started && game_mode)
        {
            /*
             * If GAME fallback to MSX1 still fails, try once forcing C-BIOS.
             */
            TrashMSX();
            g_use_embedded_bios = TRUE;
            fmsx_runtime_refresh_scc_virtual_slots();
            fmsx_runtime_set_load_diag(2109u); /* MSX2->MSX1 fallback retry forced embedded BIOS */
            started = StartMSX(startup_mode, fmsx_runtime_rammapper_pages(), 2) ? TRUE : FALSE;
            fmsx_runtime_set_load_diag(started ? 2110u : 9110u); /* forced BIOS fallback result */
            g_use_embedded_bios = FALSE;
        }
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
    Mode &= ~(MSX_AUTOSPACE | MSX_AUTOFIREA | MSX_AUTOFIREB);
    g_active_model_profile = started_model_profile;
    g_fmsx_quit_after_vblank = 1;
    fmsx_runtime_refresh_scc_virtual_slots();

    if (!fmsx_runtime_disk_rom_effective(started_model_profile))
    {
        fmsx_runtime_force_disk_rom_off_mapping();
    }

    UPeriod = 100;
    g_boot_warmup_frames_remaining = fmsx_runtime_boot_warmup_frames();
    g_boot_video_gate_frames_remaining = fmsx_runtime_boot_video_gate_frames(game_mode);
    g_boot_forced_turbo = (g_boot_warmup_frames_remaining > 0u);
    if (g_boot_forced_turbo)
    {
        /* FAST/GAME force model-safe turbo only during bootstrap warmup window. */
        fmsx_runtime_apply_turbo_percent(fmsx_runtime_boot_forced_turbo_percent());
    }
    else
    {
        fmsx_runtime_apply_turbo_percent(fmsx_runtime_effective_turbo_percent());
    }
    fmsx_runtime_apply_game_boot_override();

    InitSound(kFmsxAudioRate);
    fmsx_runtime_keyboard_reset_pipeline();
    fmsx_runtime_apply_audio_channels();
    fmsx_runtime_apply_kanji_rom_enabled();
    fmsx_local_ym2413_refresh(&OPLL);

    g_fmsx_status.running = TRUE;
    fmsx_runtime_reset_vdp_diag_counters();
    return TRUE;
}

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
        fmsx_runtime_reset_game_master_session();
        TrashMSX();
    }

    g_fmsx_status.initialized = FALSE;
    g_fmsx_status.running = FALSE;
    return fmsx_runtime_start(TRUE);
}

boolean fmsx_runtime_menu_reset(void)
{
    if (!g_fmsx_status.running)
    {
        return FALSE;
    }

    fmsx_runtime_reset_game_master_session();

    const boolean disk_rom_effective = fmsx_runtime_disk_rom_effective(g_active_model_profile);
    int new_mode = Mode & ~MSX_PATCHBDOS;
    if (disk_rom_effective)
    {
        /* Keep behavior aligned with disk-ROM toggle path. */
        Mode |= MSX_PATCHBDOS;
        new_mode = Mode & ~MSX_PATCHBDOS;
    }
    else
    {
        Mode &= ~MSX_PATCHBDOS;
        new_mode = Mode & ~MSX_PATCHBDOS;
    }

    (void) ResetMSX(new_mode, RAMPages, VRAMPages);
    if (!disk_rom_effective)
    {
        fmsx_runtime_force_disk_rom_off_mapping();
    }
    (void) fmsx_runtime_apply_kanji_rom_enabled();

    g_boot_warmup_frames_remaining = 0u;
    g_boot_forced_turbo = FALSE;
    g_boot_video_gate_frames_remaining = 0u;
    fmsx_runtime_keyboard_reset_pipeline();
    fmsx_runtime_reset_vdp_diag_counters();
    fmsx_runtime_apply_turbo_percent(fmsx_runtime_effective_turbo_percent());
    fmsx_runtime_apply_audio_channels();
    fmsx_local_ym2413_refresh(&OPLL);
    g_fmsx_status.last_pc = (int) CPU.PC.W;
    return TRUE;
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
    fmsx_runtime_reset_game_master_session();
    fmsx_runtime_set_load_diag(2201u); /* hard_reset before TrashMSX */
    /*
     * Use a full restart instead of ResetMSX() so boot-mode policy is always reapplied:
     * - NORM/FAST prefer MSX.ROM from initramfs and fallback to embedded C-BIOS only if missing.
     * - GAME now also prefers external BIOS first and only forces C-BIOS on startup fallback.
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
    const boolean perf_enabled = g_frame_perf_telemetry_enabled ? TRUE : FALSE;
    unsigned frames_done = 0u;
    unsigned call_peak_slices = 0u;
    uint64_t call_z80_us = 0u;
    uint64_t call_audio_us = 0u;
    unsigned call_audio_samples = 0u;
    unsigned call_frame_misses = 0u;
    for (unsigned i = 0; i < steps; ++i)
    {
        const unsigned seq_before = fmsx_video_get_latest(0, 0, 0);
        const boolean audio_enabled_this_frame = fmsx_runtime_audio_render_enabled();
        unsigned slices = 0u;
        boolean frame_done = FALSE;
        const uint64_t z80_start_us = perf_enabled ? msxbare_monotonic_time_us() : 0u;

        fmsx_audio_begin_frame_render_accounting();

        if (g_boot_warmup_frames_remaining > 0u)
        {
            /* During FAST/GAME warmup, keep deterministic frame-step entry. */
            ScanLine = 261;
        }

        while (slices < MSXBARE_FMSX_Z80_SLICES_PER_FRAME_MAX)
        {
            g_fmsx_status.last_pc = (int) RunZ80(&CPU);
            ++slices;

            if (fmsx_video_get_latest(0, 0, 0) != seq_before)
            {
                frame_done = TRUE;
                break;
            }
        }
        if (perf_enabled)
        {
            call_z80_us += msxbare_monotonic_time_us() - z80_start_us;
            if (slices > call_peak_slices)
            {
                call_peak_slices = slices;
            }
        }

        if (!frame_done)
        {
            /*
             * Avoid a hard spin if a frame is not produced. Keep runtime alive
             * and surface the anomaly through last_error.
             */
            g_fmsx_status.last_error = 2;
            if (perf_enabled && call_frame_misses < 999u)
            {
                call_frame_misses++;
            }
            break;
        }

        ++frames_done;
        ++g_fmsx_status.frames;

        if (audio_enabled_this_frame && (fmsx_audio_end_frame_render_accounting() == 0u))
        {
            const uint64_t cpu_hz = (uint64_t) fmsx_runtime_get_base_cpu_clock_hz();
            const uint64_t frame_cycles = (uint64_t) (unsigned) ((PALVideo ? VPERIOD_PAL : VPERIOD_NTSC) / 6);
            unsigned samples_per_frame;

            if (cpu_hz != 0u && frame_cycles != 0u)
            {
                samples_per_frame = (unsigned) (((frame_cycles * (uint64_t) kFmsxAudioRate) + (cpu_hz / 2ull)) / cpu_hz);
            }
            else
            {
                samples_per_frame = kFmsxAudioRate / fmsx_runtime_effective_refresh_hz();
            }
            if (perf_enabled)
            {
                const uint64_t audio_start_us = msxbare_monotonic_time_us();
                RenderAndPlayAudio(samples_per_frame);
                call_audio_us += msxbare_monotonic_time_us() - audio_start_us;
                call_audio_samples = call_audio_samples > (9999u - samples_per_frame)
                    ? 9999u
                    : (call_audio_samples + samples_per_frame);
            }
            else
            {
                RenderAndPlayAudio(samples_per_frame);
            }
        }

        if (g_boot_warmup_frames_remaining > 0u)
        {
            g_boot_warmup_frames_remaining--;
            if (g_boot_warmup_frames_remaining == 0u && g_boot_forced_turbo)
            {
                g_boot_forced_turbo = FALSE;
                fmsx_runtime_apply_turbo_percent(fmsx_runtime_effective_turbo_percent());
            }
        }
        if (g_boot_video_gate_frames_remaining > 0u)
        {
            g_boot_video_gate_frames_remaining--;
        }
    }

    if (perf_enabled)
    {
        const unsigned z80_us = fmsx_runtime_clamp_perf_us(call_z80_us);
        const unsigned audio_us = fmsx_runtime_clamp_perf_us(call_audio_us);
        g_frame_perf_stats.last_steps = steps;
        g_frame_perf_stats.last_frames_done = frames_done;
        g_frame_perf_stats.last_slices = call_peak_slices;
        if (call_peak_slices > g_frame_perf_stats.peak_slices)
        {
            g_frame_perf_stats.peak_slices = call_peak_slices;
        }
        g_frame_perf_stats.last_z80_us = z80_us;
        if (z80_us > g_frame_perf_stats.peak_z80_us)
        {
            g_frame_perf_stats.peak_z80_us = z80_us;
        }
        g_frame_perf_stats.last_audio_us = audio_us;
        if (audio_us > g_frame_perf_stats.peak_audio_us)
        {
            g_frame_perf_stats.peak_audio_us = audio_us;
        }
        g_frame_perf_stats.last_audio_samples = call_audio_samples;
        if (call_audio_samples > g_frame_perf_stats.peak_audio_samples)
        {
            g_frame_perf_stats.peak_audio_samples = call_audio_samples;
        }
        g_frame_perf_stats.frame_miss_count =
            (g_frame_perf_stats.frame_miss_count > (999u - call_frame_misses))
                ? 999u
                : (g_frame_perf_stats.frame_miss_count + call_frame_misses);
    }

    return TRUE;
}

void fmsx_runtime_shutdown(void)
{
    fmsx_runtime_reset_frame_perf_stats_window();
    if (g_fmsx_status.running)
    {
        fmsx_runtime_reset_game_master_session();
        TrashMSX();
    }

    g_fmsx_status.running = FALSE;
    g_boot_video_gate_frames_remaining = 0u;
    fmsx_runtime_keyboard_reset_pipeline();
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

    fmsx_runtime_reset_game_master_session();

    const unsigned consumed = LoadState((unsigned char *) src, size);
    if (consumed == 0u || consumed > size)
    {
        return FALSE;
    }

    g_boot_warmup_frames_remaining = 0u;
    g_boot_forced_turbo = FALSE;
    g_boot_video_gate_frames_remaining = 0u;
    fmsx_runtime_keyboard_reset_pipeline();
    fmsx_runtime_reset_vdp_diag_counters();
    fmsx_runtime_reset_frame_perf_stats_window();
    fmsx_runtime_apply_turbo_percent(fmsx_runtime_effective_turbo_percent());
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
    const unsigned clamped = (hz == 50u) ? 50u : 60u;
    if (g_refresh_hz == clamped)
    {
        return;
    }
    g_refresh_hz = clamped;
    fmsx_audio_reanchor_stream_timing();
}

unsigned fmsx_runtime_get_refresh_hz(void)
{
    return fmsx_runtime_effective_refresh_hz();
}

unsigned fmsx_runtime_get_z80_turbo_percent(void)
{
    return fmsx_runtime_effective_turbo_percent();
}

uint64_t fmsx_runtime_get_frame_interval_us_exact(void)
{
    return fmsx_runtime_frame_interval_us_exact_internal();
}

unsigned fmsx_runtime_get_base_cpu_clock_hz(void)
{
    return 3579545u;
}

boolean fmsx_runtime_audio_render_enabled(void)
{
    return (g_fmsx_status.running && (g_boot_warmup_frames_remaining == 0u)) ? TRUE : FALSE;
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

    const boolean disk_rom_effective = fmsx_runtime_disk_rom_effective(g_active_model_profile);
    int new_mode = Mode & ~MSX_PATCHBDOS;
    if (disk_rom_effective)
    {
        /* Force transition so ResetMSX() reloads DISK.ROM with hooks disabled. */
        Mode |= MSX_PATCHBDOS;
        new_mode = Mode & ~MSX_PATCHBDOS;
    }
    else
    {
        Mode &= ~MSX_PATCHBDOS;
        new_mode = Mode & ~MSX_PATCHBDOS;
    }
    (void) ResetMSX(new_mode, RAMPages, VRAMPages);
    if (!disk_rom_effective)
    {
        fmsx_runtime_force_disk_rom_off_mapping();
    }
    (void) fmsx_runtime_apply_kanji_rom_enabled();
}

boolean fmsx_runtime_get_disk_rom_enabled(void)
{
    return g_disk_rom_enabled ? TRUE : FALSE;
}

void fmsx_runtime_set_kanji_rom_enabled(boolean enabled)
{
    g_kanji_rom_enabled = enabled ? TRUE : FALSE;
    if (g_fmsx_status.running)
    {
        (void) fmsx_runtime_apply_kanji_rom_enabled();
    }
}

boolean fmsx_runtime_get_kanji_rom_enabled(void)
{
    return Kanji != 0 ? TRUE : FALSE;
}

boolean fmsx_runtime_get_kanji_rom_available(void)
{
    return FmsxKanjiBase != 0 ? TRUE : FALSE;
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

void fmsx_runtime_set_rammapper_kb(unsigned kb)
{
    g_rammapper_kb = fmsx_runtime_clamp_rammapper_kb(kb);
}

unsigned fmsx_runtime_get_rammapper_kb(void)
{
    return g_rammapper_kb;
}

void fmsx_runtime_set_megaram_kb(unsigned kb)
{
    g_fmsx_megaram_kb = fmsx_runtime_clamp_megaram_kb(kb);
}

unsigned fmsx_runtime_get_megaram_kb(void)
{
    return g_fmsx_megaram_kb;
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
    if (g_z80_turbo_mode == mode)
    {
        return;
    }
    g_z80_turbo_mode = mode;
    if (!g_boot_forced_turbo)
    {
        fmsx_runtime_apply_turbo_percent(fmsx_runtime_effective_turbo_percent());
    }
}

unsigned fmsx_runtime_get_z80_turbo_mode(void)
{
    return g_z80_turbo_mode;
}

void fmsx_runtime_set_panasonic_turbo_enabled(boolean enabled)
{
    const boolean desired = enabled ? TRUE : FALSE;
    if (g_panasonic_turbo_enabled == desired)
    {
        return;
    }
    g_panasonic_turbo_enabled = desired;
    if (!g_boot_forced_turbo)
    {
        fmsx_runtime_apply_turbo_percent(fmsx_runtime_effective_turbo_percent());
    }
}

boolean fmsx_runtime_get_panasonic_turbo_enabled(void)
{
    return g_panasonic_turbo_enabled ? TRUE : FALSE;
}

void fmsx_runtime_set_scc_plus_enabled(boolean enabled)
{
    g_scc_plus_enabled = enabled ? TRUE : FALSE;
    fmsx_runtime_refresh_scc_virtual_slots();
}

boolean fmsx_runtime_get_scc_plus_enabled(void)
{
    return g_scc_plus_enabled;
}

boolean fmsx_runtime_set_scc_dual_cart_enabled(boolean enabled)
{
    const boolean value = enabled ? TRUE : FALSE;
    if (value && !fmsx_runtime_get_scc_dual_cart_available())
    {
        g_scc_dual_cart_enabled = FALSE;
        fmsx_runtime_refresh_scc_virtual_slots();
        return FALSE;
    }

    g_scc_dual_cart_enabled = value;
    fmsx_runtime_refresh_scc_virtual_slots();
    return TRUE;
}

boolean fmsx_runtime_get_scc_dual_cart_enabled(void)
{
    return g_scc_dual_cart_enabled;
}

boolean fmsx_runtime_get_scc_dual_cart_available(void)
{
    return fmsx_runtime_slot_has_user_cartridge(1u) ? FALSE : TRUE;
}

unsigned fmsx_runtime_get_scc_plus_internal_slot(void)
{
    return (g_fmsx_scc_internal_slot < MAXSLOTS) ? (unsigned) g_fmsx_scc_internal_slot : 0xFFu;
}

unsigned fmsx_runtime_get_scc_plus_dual_slot(void)
{
    return (g_fmsx_scc_dual_slot < MAXSLOTS) ? (unsigned) g_fmsx_scc_dual_slot : 0xFFu;
}

void fmsx_runtime_set_scc_cart_enabled(boolean enabled)
{
    fmsx_runtime_set_scc_plus_enabled(enabled);
}

boolean fmsx_runtime_get_scc_cart_enabled(void)
{
    return fmsx_runtime_get_scc_plus_enabled();
}

void fmsx_runtime_set_fm_music_enabled(boolean enabled)
{
    g_fm_music_enabled = enabled ? TRUE : FALSE;
    g_fmsx_fmpac_enabled = g_fm_music_enabled ? 1 : 0;
    fmsx_runtime_apply_audio_channels();
    fmsx_local_ym2413_refresh(&OPLL);
}

boolean fmsx_runtime_get_fm_music_enabled(void)
{
    return g_fm_music_enabled;
}

void fmsx_runtime_set_fm_layer_gain_pct(unsigned pct)
{
    if (pct > 100u)
    {
        pct = 100u;
    }
    g_fm_layer_gain_pct = pct;
    fmsx_local_ym2413_set_layer_gain_pct(g_fm_layer_gain_pct);
    fmsx_local_ym2413_refresh(&OPLL);
}

unsigned fmsx_runtime_get_fm_layer_gain_pct(void)
{
    g_fm_layer_gain_pct = fmsx_local_ym2413_get_layer_gain_pct();
    return g_fm_layer_gain_pct;
}

void fmsx_runtime_set_audio_layer_muted(unsigned layer_index, boolean muted)
{
    const boolean value = muted ? TRUE : FALSE;
    switch (layer_index)
    {
    case 1u: g_audio_layer1_muted = value; break;
    case 2u: g_audio_layer2_muted = value; break;
    case 3u: g_audio_layer3_muted = value; break;
    default: return;
    }
    fmsx_runtime_apply_audio_channels();
}

boolean fmsx_runtime_get_audio_layer_muted(unsigned layer_index)
{
    switch (layer_index)
    {
    case 1u: return g_audio_layer1_muted;
    case 2u: return g_audio_layer2_muted;
    case 3u: return g_audio_layer3_muted;
    default: return FALSE;
    }
}

unsigned fmsx_runtime_get_psg_mixer_reg7(void)
{
    return (unsigned) PSG.R[7];
}

unsigned fmsx_runtime_get_master_switch(void)
{
    return (unsigned) MasterSwitch;
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
        fmsx_runtime_refresh_scc_virtual_slots();
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
    fmsx_runtime_refresh_scc_virtual_slots();
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

    fmsx_runtime_reset_game_master_session();

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
    fmsx_runtime_refresh_scc_virtual_slots();
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
    fmsx_runtime_reset_game_master_session();
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

    fmsx_runtime_refresh_scc_virtual_slots();
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

void fmsx_runtime_reset_game_master_session(void)
{
    if (g_fmsx_status.initialized && g_fmsx_status.running)
    {
        Cheats(CHTS_OFF);
        for (unsigned i = 0u; i < GAMEMASTER_MAX_POKES; ++i)
        {
            if (g_game_master_records[i].used)
            {
                (void) fmsx_runtime_game_master_write_value(g_game_master_records[i].address,
                                                            g_game_master_records[i].size_bits,
                                                            g_game_master_records[i].orig_value);
            }
        }

        for (int i = CheatCount - 1; i >= 0; --i)
        {
            if (fmsx_runtime_game_master_is_owned_text(CheatCodes[i].Text))
            {
                fmsx_runtime_game_master_remove_code_index(i);
            }
        }
        Cheats(CHTS_ON);
        (void) ApplyCheats();
    }

    fmsx_runtime_game_master_clear_tables();
}

boolean fmsx_runtime_apply_game_master_cheat(const TGameMasterPoke *pokes, unsigned poke_count)
{
    return fmsx_runtime_set_game_master_cheat_enabled(pokes, poke_count, TRUE);
}

boolean fmsx_runtime_set_game_master_cheat_value(const TGameMasterPoke *pokes, unsigned poke_count, uint16_t value)
{
    int slot_index;

    if (!g_fmsx_status.initialized || !g_fmsx_status.running || pokes == 0 || poke_count != 1u)
    {
        return FALSE;
    }
    if (pokes[0].size_bits != 8u && pokes[0].size_bits != 16u)
    {
        return FALSE;
    }
    if (!fmsx_runtime_game_master_ensure_records(pokes, poke_count, TRUE, value))
    {
        return FALSE;
    }

    slot_index = fmsx_runtime_game_master_find_or_alloc_slot(pokes, poke_count);
    if (slot_index < 0)
    {
        return FALSE;
    }

    g_game_master_slots[slot_index].active = TRUE;
    g_game_master_slots[slot_index].pokes = pokes;
    g_game_master_slots[slot_index].poke_count = poke_count;
    g_game_master_slots[slot_index].has_value_override = TRUE;
    g_game_master_slots[slot_index].value_override = (pokes[0].size_bits == 8u)
        ? (uint16_t) (value & 0x00FFu)
        : value;
    g_game_master_slots[slot_index].sequence = ++g_game_master_sequence;

    return fmsx_runtime_game_master_commit();
}

boolean fmsx_runtime_is_game_master_cheat_active(const TGameMasterPoke *pokes, unsigned poke_count)
{
    if (!g_fmsx_status.initialized || !g_fmsx_status.running || pokes == 0 || poke_count == 0u)
    {
        return FALSE;
    }

    for (unsigned i = 0u; i < poke_count; ++i)
    {
        const TGameMasterPoke *poke = &pokes[i];
        if (poke->size_bits == 16u)
        {
            uint16_t current16 = 0u;
            if (!fmsx_runtime_peek16(poke->address, &current16) || current16 != poke->value)
            {
                return FALSE;
            }
        }
        else if (poke->size_bits == 8u)
        {
            uint8_t current8 = 0u;
            if (!fmsx_runtime_peek8(poke->address, &current8) || current8 != (uint8_t) (poke->value & 0x00FFu))
            {
                return FALSE;
            }
        }
        else
        {
            return FALSE;
        }
    }

    return TRUE;
}

boolean fmsx_runtime_set_game_master_cheat_enabled(const TGameMasterPoke *pokes, unsigned poke_count, boolean enabled)
{
    int slot_index = -1;

    if (!g_fmsx_status.initialized || !g_fmsx_status.running || pokes == 0 || poke_count == 0u || poke_count > GAMEMASTER_MAX_POKES)
    {
        return FALSE;
    }

    if (!enabled)
    {
        slot_index = fmsx_runtime_game_master_find_slot(pokes, poke_count);
        if (slot_index < 0)
        {
            return TRUE;
        }
        memset(&g_game_master_slots[slot_index], 0, sizeof(g_game_master_slots[slot_index]));
        return fmsx_runtime_game_master_commit();
    }

    for (unsigned i = 0u; i < poke_count; ++i)
    {
        if (pokes[i].size_bits != 8u && pokes[i].size_bits != 16u)
        {
            return FALSE;
        }
    }
    if (!fmsx_runtime_game_master_ensure_records(pokes, poke_count, FALSE, 0u))
    {
        return FALSE;
    }

    slot_index = fmsx_runtime_game_master_find_or_alloc_slot(pokes, poke_count);
    if (slot_index < 0)
    {
        return FALSE;
    }

    g_game_master_slots[slot_index].active = TRUE;
    g_game_master_slots[slot_index].pokes = pokes;
    g_game_master_slots[slot_index].poke_count = poke_count;
    g_game_master_slots[slot_index].has_value_override = FALSE;
    g_game_master_slots[slot_index].value_override = 0u;
    g_game_master_slots[slot_index].sequence = ++g_game_master_sequence;

    return fmsx_runtime_game_master_commit();
}

boolean fmsx_runtime_peek8(uint16_t address, uint8_t *value)
{
    const unsigned page = ((unsigned) address) >> 13;
    const unsigned offset = ((unsigned) address) & 0x1FFFu;

    if (!g_fmsx_status.initialized || !g_fmsx_status.running || value == 0)
    {
        return FALSE;
    }

    *value = (page < 8u && RAM[page] != 0) ? RAM[page][offset] : RdZ80(address);
    return TRUE;
}

boolean fmsx_runtime_peek16(uint16_t address, uint16_t *value)
{
    uint8_t lo = 0u;
    uint8_t hi = 0u;

    if (value == 0)
    {
        return FALSE;
    }
    if (!fmsx_runtime_peek8(address, &lo) || !fmsx_runtime_peek8((uint16_t) (address + 1u), &hi))
    {
        return FALSE;
    }

    *value = (uint16_t) ((uint16_t) lo | ((uint16_t) hi << 8));
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

void fmsx_runtime_set_frame_perf_telemetry_enabled(boolean enabled)
{
    g_frame_perf_telemetry_enabled = enabled ? TRUE : FALSE;
    memset(&g_frame_perf_stats, 0, sizeof(g_frame_perf_stats));
}

void fmsx_runtime_get_frame_perf_stats(TFmsxFramePerfStats *stats)
{
    if (stats == 0)
    {
        return;
    }

    *stats = g_frame_perf_stats;
}

void fmsx_runtime_reset_frame_perf_stats_window(void)
{
    memset(&g_frame_perf_stats, 0, sizeof(g_frame_perf_stats));
}

TFmsxRuntimeStatus fmsx_runtime_get_status(void)
{
    return g_fmsx_status;
}

void fmsx_runtime_get_timing_debug(TFmsxTimingDebug *stats)
{
    unsigned ce;
    unsigned cmd;
    unsigned copy_cmd;
    TFmsxKeyboardDebug keyboard_stats = {0};
    const uint8_t live_status1 = fmsx_vdp_get_status1_live();
    const uint8_t live_status2 = fmsx_vdp_get_status2_live();

    if (stats == 0)
    {
        return;
    }

    stats->h_period = (HPeriod > 0) ? (unsigned) HPeriod : 0u;
    stats->v_period = (VPeriod > 0) ? (unsigned) VPeriod : 0u;
    stats->i_period = (CPU.IPeriod > 0) ? (unsigned) CPU.IPeriod : 0u;
    stats->scanline = (ScanLine >= 0) ? (unsigned) ScanLine : 0u;
    stats->pal_video = PALVideo ? 1u : 0u;
    stats->lines_212 = ScanLines212 ? 1u : 0u;
    stats->turbo_percent = fmsx_runtime_effective_turbo_percent();
    stats->scr_mode = (unsigned) ScrMode;
    stats->reg2 = (unsigned) VDP[2];
    stats->reg25 = (unsigned) VDP[25];
    stats->reg26 = (unsigned) VDP[26];
    stats->reg27 = (unsigned) VDP[27];
    stats->reg17 = (unsigned) VDP[17];
    stats->reg19 = (unsigned) VDP[19];
    stats->reg1 = (unsigned) VDP[1];
    stats->reg7 = (unsigned) VDP[7];
    stats->status8 = (unsigned) VDPStatus[8];
    stats->status9 = (unsigned) VDPStatus[9];
    stats->last_status_read_reg = (unsigned) FmsxVDPLastStatusReadReg;
    stats->last_status_read_value = (unsigned) FmsxVDPLastStatusReadValue;
    stats->last_port99_op = (unsigned) FmsxVDPLastPort99Op;
    stats->last_port99_value = (unsigned) FmsxVDPLastPort99Value;
    stats->last_port99_alatch = (unsigned) FmsxVDPLastPort99ALatch;
    stats->last_port99_vkey = (unsigned) FmsxVDPLastPort99VKey;
    stats->last_port99_r15 = (unsigned) FmsxVDPLastPort99R15;
    stats->last_port99_pc = (unsigned) FmsxVDPLastPort99PC;
    stats->screen_on = (VDP[1] & 0x40u) ? 1u : 0u;
    stats->ie0_enabled = (VDP[1] & 0x20u) ? 1u : 0u;
    stats->vblank_flag = (VDPStatus[0] & 0x80u) ? 1u : 0u;
    stats->ie1_enabled = (VDP[0] & 0x10u) ? 1u : 0u;
    stats->ie1_flag = (live_status1 & 0x01u) ? 1u : 0u;
    stats->status2_hr = (live_status2 & 0x20u) ? 1u : 0u;
    stats->status2_vr = (live_status2 & 0x40u) ? 1u : 0u;
    stats->line_phase = FmsxVDPLinePhase ? 1u : 0u;
    stats->ie1_target_line = (unsigned) fmsx_vdp_get_ie1_target_line();
    stats->ie1_target_delta = fmsx_vdp_get_ie1_target_delta();
    stats->effective_odd_page = fmsx_vdp_get_effective_odd_page() ? 1u : 0u;
    stats->render_page = (unsigned) fmsx_vdp_get_render_page();
    stats->msx2p_kanji_basic = FmsxMSX2PKanjiBasicLoaded ? 1u : 0u;
    stats->msx2p_kanji_basic_map_ok =
        (FmsxMSX2PKanjiBasicBase != 0 &&
         MemMap[3][1][2] == FmsxMSX2PKanjiBasicBase &&
         MemMap[3][1][3] == (FmsxMSX2PKanjiBasicBase + 0x2000)) ? 1u : 0u;
    stats->msx2p_kanji_basic_selected_p1 = (PSL[1] == 3u && SSL[1] == 1u) ? 1u : 0u;
    stats->msx2p_kanji_basic_seen_p1 = (FmsxP1Select31Count > 0u) ? 1u : 0u;
    stats->p1_ps = (unsigned) PSL[1];
    stats->p1_ss = (unsigned) SSL[1];
    stats->disk_rom_enabled = g_disk_rom_enabled ? 1u : 0u;
    stats->disk_rom_loaded = DiskROMLoaded ? 1u : 0u;
    stats->msx2p_msxje_loaded = FmsxMSX2PMSXJELoaded ? 1u : 0u;
    stats->msx2p_msxje_selected_p1 = (PSL[1] == 0u && SSL[1] == 3u) ? 1u : 0u;
    stats->msx2p_msxje_seen_p1 = (FmsxP1Select03Count > 0u) ? 1u : 0u;
    stats->rtc_reads = (unsigned) FmsxRTCReadCount;
    stats->rtc_writes = (unsigned) FmsxRTCWriteCount;
    stats->rtc_last_reg = (unsigned) FmsxRTCLastReg;
    stats->rtc_mode = (unsigned) (FmsxRTCLastMode & 0x0Fu);
    stats->slot_reg = (unsigned) PSLReg;
    stats->p1_write_enabled = EnWrite[1] ? 1u : 0u;
    stats->hscroll = (unsigned) HScroll;
    stats->hscroll512 = HScroll512 ? 1u : 0u;
    stats->multipage_enabled = ((VDP[25] & 0x01u) && (VDP[2] & 0x20u)) ? 1u : 0u;
    stats->display_page = (unsigned) ((VDP[2] >> 5) & 0x03u);
    {
        unsigned page_slot = 0xFFu;
        unsigned page_lo = 0xFFu;
        unsigned page_hi = 0xFFu;

        if (PSL[1] == 1u) page_slot = 0u;
        else if (PSL[1] == 2u) page_slot = 1u;
        else if (PSL[1] == 3u && SSL[1] <= 3u) page_slot = 2u + SSL[1];
        if (page_slot < MAXSLOTS && ROMData[page_slot] != 0 && ROMMask[page_slot] != 0)
        {
            page_lo = ROMMapper[page_slot][0];
            page_hi = ROMMapper[page_slot][1];
        }
        stats->cart_slot_p1 = page_slot;
        stats->cart_bank_p1_lo = page_lo;
        stats->cart_bank_p1_hi = page_hi;
        stats->cart_type_p1 = (page_slot < MAXSLOTS) ? (unsigned) ROMType[page_slot] : 0xFFu;
        stats->cart_type_source_p1 = (page_slot < MAXSLOTS) ? (unsigned) FmsxCartMapperTypeSource[page_slot] : 0u;

        page_slot = 0xFFu;
        page_lo = 0xFFu;
        page_hi = 0xFFu;
        if (PSL[2] == 1u) page_slot = 0u;
        else if (PSL[2] == 2u) page_slot = 1u;
        else if (PSL[2] == 3u && SSL[2] <= 3u) page_slot = 2u + SSL[2];
        if (page_slot < MAXSLOTS && ROMData[page_slot] != 0 && ROMMask[page_slot] != 0)
        {
            page_lo = ROMMapper[page_slot][2];
            page_hi = ROMMapper[page_slot][3];
        }
        stats->cart_slot_p2 = page_slot;
        stats->cart_bank_p2_lo = page_lo;
        stats->cart_bank_p2_hi = page_hi;
    }
    stats->cart_last_type_slot = (unsigned) FmsxCartLastClassifiedSlot;
    stats->cart_last_type_value = (unsigned) FmsxCartLastClassifiedType;
    stats->cart_last_type_source = (unsigned) FmsxCartLastClassifiedSource;
    cmd = (unsigned) ((VDP[46] >> 4) & 0x0Fu);
    ce = (live_status2 & 0x01u) ? 1u : 0u;
    copy_cmd = (cmd == 0x09u || cmd == 0x0Du || cmd == 0x0Eu) ? 1u : 0u;
    if (ce && !g_vdp_prev_ce)
    {
        ++g_vdp_cmd_starts;
        if (copy_cmd)
        {
            ++g_vdp_copy_starts;
        }
    }
    g_vdp_prev_ce = ce;
    stats->vdp_cmd = cmd;
    stats->vdp_ce = ce;
    stats->vdp_tr = (live_status2 & 0x80u) ? 1u : 0u;
    stats->vdp_cmd_starts = g_vdp_cmd_starts;
    stats->vdp_copy_starts = g_vdp_copy_starts;
    stats->mode_yjk = ModeYJK ? 1u : 0u;
    stats->mode_yae = ModeYAE ? 1u : 0u;
    stats->ie1_events = (unsigned) FmsxIE1EventCount;
    stats->ie1_acks = (unsigned) FmsxIE1AckCount;
    stats->ie1_armed = (unsigned) FmsxIE1ArmedCount;
    stats->ie1_fired_hblank = (unsigned) FmsxIE1FiredHBlankCount;
    /* VDP trace: per-frame delta (activity since last call, not cumulative) */
    {
        static uint32_t s_r9 = 0u, s_r15 = 0u, s_r18 = 0u, s_r19 = 0u;
        static uint32_t s_r25 = 0u, s_r26 = 0u, s_r27 = 0u;
        static uint32_t s_s0 = 0u, s_s1 = 0u, s_s2 = 0u;
        static uint32_t s_p99r = 0u, s_p99w = 0u, s_p9b = 0u;
#define VDP_DELTA(field, counter, snap) do { \
    uint32_t _cur = (counter); \
    (field) = (unsigned)(_cur - (snap)); \
    (snap) = _cur; \
} while(0)
        VDP_DELTA(stats->vdp_r9_writes,    FmsxVDPRegWriteCount[9],    s_r9);
        VDP_DELTA(stats->vdp_r15_writes,   FmsxVDPRegWriteCount[15],   s_r15);
        VDP_DELTA(stats->vdp_r18_writes,   FmsxVDPRegWriteCount[18],   s_r18);
        VDP_DELTA(stats->vdp_r19_writes,   FmsxVDPRegWriteCount[19],   s_r19);
        VDP_DELTA(stats->vdp_r25_writes,   FmsxVDPRegWriteCount[25],   s_r25);
        VDP_DELTA(stats->vdp_r26_writes,   FmsxVDPRegWriteCount[26],   s_r26);
        VDP_DELTA(stats->vdp_r27_writes,   FmsxVDPRegWriteCount[27],   s_r27);
        VDP_DELTA(stats->vdp_s0_reads,     FmsxVDPStatusReadCount[0],  s_s0);
        VDP_DELTA(stats->vdp_s1_reads,     FmsxVDPStatusReadCount[1],  s_s1);
        VDP_DELTA(stats->vdp_s2_reads,     FmsxVDPStatusReadCount[2],  s_s2);
        VDP_DELTA(stats->vdp_port99_reads, FmsxVDPPort99ReadCount,      s_p99r);
        VDP_DELTA(stats->vdp_port99_writes,FmsxVDPPort99WriteCount,     s_p99w);
        VDP_DELTA(stats->vdp_port9b_writes,FmsxVDPPort9BWriteCount,     s_p9b);
#undef VDP_DELTA
    }
    stats->vdp_port9b_last_reg17_before = (unsigned) FmsxVDPPort9BLastReg17Before;
    stats->vdp_port9b_last_target = (unsigned) FmsxVDPPort9BLastTarget;
    stats->vdp_port9b_last_reg17_after = (unsigned) FmsxVDPPort9BLastReg17After;
    stats->vdp_port9b_last_value = (unsigned) FmsxVDPPort9BLastValue;
    {
        TFmsxVDPTraceView trace_view;
        const TFmsxVDPTraceEvent *last_event = 0;

        fmsx_runtime_get_vdp_trace_view(&trace_view);
        if (trace_view.events != 0 && trace_view.count > 0u && trace_view.capacity > 0u)
        {
            const unsigned last_index = (trace_view.head + trace_view.capacity - 1u) % trace_view.capacity;
            last_event = &trace_view.events[last_index];
        }

        stats->trace_last_event_type = last_event != 0 ? (unsigned) last_event->event_type : 0u;
        stats->trace_last_window = last_event != 0 ? (unsigned) last_event->capture_window : 0u;
        stats->trace_last_pc = last_event != 0 ? (unsigned) last_event->pc : 0u;
        stats->trace_last_scanline = last_event != 0 ? (unsigned) last_event->scanline : 0u;
        stats->trace_last_line_phase = last_event != 0 ? (unsigned) last_event->line_phase : 0u;
        stats->trace_last_reg1 = last_event != 0 ? (unsigned) last_event->reg1 : 0u;
        stats->trace_last_reg23 = last_event != 0 ? (unsigned) last_event->reg23 : 0u;
        stats->trace_last_status2 = last_event != 0 ? (unsigned) last_event->status2 : 0u;
        stats->trace_last_bank_p1_lo = last_event != 0 ? (unsigned) last_event->cart_bank_p1_lo : 0u;
        stats->trace_last_bank_p2_lo = last_event != 0 ? (unsigned) last_event->cart_bank_p2_lo : 0u;
    }
    stats->flash_last_op = (unsigned) FmsxManbow2FlashLastOp;
    stats->flash_last_slot = (unsigned) FmsxManbow2FlashLastSlot;
    stats->flash_last_addr = (unsigned) FmsxManbow2FlashLastAddr;
    stats->flash_last_offset = (unsigned) FmsxManbow2FlashLastOffset;
    stats->flash_last_value = (unsigned) FmsxManbow2FlashLastValue;
    stats->flash_last_read_value = (unsigned) FmsxManbow2FlashLastReadValue;
    stats->flash_last_state = (unsigned) FmsxManbow2FlashLastState;
    stats->flash_last_mode = (unsigned) FmsxManbow2FlashLastMode;
    stats->flash_program_count = (unsigned) FmsxManbow2FlashProgramCount;
    stats->flash_erase_count = (unsigned) FmsxManbow2FlashEraseCount;
    stats->flash_read_count = (unsigned) FmsxManbow2FlashReadCount;
    stats->kanji_available = (Kanji != 0) ? 1u : 0u;
    stats->kanji_reads = (unsigned) FmsxKanjiReadCount;
    stats->kanji_addr_writes = (unsigned) FmsxKanjiAddrWriteCount;
    stats->kanji_null_reads = (unsigned) FmsxKanjiNullReadCount;
    stats->fdc_status = (unsigned) FDC.R[0];
    stats->fdc_track_reg = (unsigned) FDC.R[1];
    stats->fdc_sector_reg = (unsigned) FDC.R[2];
    stats->fdc_drive = (unsigned) FDC.Drive;
    stats->fdc_side = (unsigned) FDC.Side;
    stats->fdc_irq = (unsigned) FDC.IRQ;
    stats->fdc_wait = (unsigned) FDC.Wait;
    fmsx_keyboard_get_debug(&keyboard_stats);
    stats->kbd_runtime_queued = keyboard_stats.runtime_queued;
    stats->kbd_runtime_high_water = keyboard_stats.runtime_high_water;
    stats->kbd_runtime_dropped = keyboard_stats.runtime_dropped;
    stats->kbd_candidate_created = keyboard_stats.candidate_created;
    stats->kbd_candidate_promoted = keyboard_stats.candidate_promoted;
    stats->kbd_candidate_discarded = keyboard_stats.candidate_discarded;
    stats->kbd_immediate_releases = keyboard_stats.immediate_releases;
    stats->kbd_immediate_gameplay_presses = keyboard_stats.immediate_gameplay_presses;
}

void fmsx_runtime_get_vdp_trace_view(TFmsxVDPTraceView *view)
{
    if (view == 0)
    {
        return;
    }

    view->events = 0;
    view->capacity = 0u;
    view->count = 0u;
    view->head = 0u;
    view->dropped = 0u;
    fmsx_vdp_trace_get_view(&view->events, &view->capacity, &view->count, &view->head, &view->dropped);
}

void fmsx_runtime_get_scc_trace_view(TFmsxSCCTraceView *view)
{
    if (view == 0)
    {
        return;
    }

    view->events = 0;
    view->capacity = 0u;
    view->count = 0u;
    view->head = 0u;
    view->dropped = 0u;
    fmsx_scc_trace_get_view(&view->events, &view->capacity, &view->count, &view->head, &view->dropped);
}

void fmsx_runtime_get_audio_port_trace_view(TFmsxAudioPortTraceView *view)
{
    if (view == 0)
    {
        return;
    }

    view->events = 0;
    view->capacity = 0u;
    view->count = 0u;
    view->head = 0u;
    view->dropped = 0u;
    fmsx_audio_port_trace_get_view(&view->events, &view->capacity, &view->count, &view->head, &view->dropped);
}

void fmsx_runtime_get_kmg_trace_view(TFmsxKmgTraceView *view)
{
    if (view == 0)
    {
        return;
    }

    view->events = 0;
    view->capacity = 0u;
    view->count = 0u;
    view->head = 0u;
    view->dropped = 0u;
    fmsx_kmg_trace_get_view(&view->events, &view->capacity, &view->count, &view->head, &view->dropped);
}

unsigned fmsx_runtime_get_video_frame(const u16 **pixels, unsigned *width, unsigned *height)
{
    if (g_boot_video_gate_frames_remaining > 0u)
    {
        if (pixels != 0)
        {
            *pixels = 0;
        }
        if (width != 0)
        {
            *width = 0u;
        }
        if (height != 0)
        {
            *height = 0u;
        }
        return 0u;
    }
    return fmsx_video_get_latest(pixels, width, height);
}
