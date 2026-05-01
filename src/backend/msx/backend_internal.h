#ifndef MSXBARE_BACKEND_MSX_BACKEND_INTERNAL_H
#define MSXBARE_BACKEND_MSX_BACKEND_INTERNAL_H

#include "../core/module.h"
#include "modules/fmsx/fmsx_runtime.h"
#include "gamemaster_catalog.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    boolean (*reboot_basic)(void);
    boolean (*menu_reset)(void);
    boolean (*save_state)(void *dst, unsigned capacity, unsigned *saved_size);
    boolean (*load_state)(const void *src, unsigned size);
} MsxBackendStateOps;

typedef struct {
    void (*set_overscan)(boolean enabled);
    void (*set_refresh_hz)(unsigned hz);
    void (*debug_force_refresh_hz)(unsigned hz);
    unsigned (*get_refresh_hz)(void);
    uint64_t (*get_frame_interval_us_exact)(void);
    void (*set_disk_rom_enabled)(boolean enabled);
    boolean (*get_disk_rom_enabled)(void);
    void (*set_kanji_rom_enabled)(boolean enabled);
    boolean (*get_kanji_rom_enabled)(void);
    boolean (*get_kanji_rom_available)(void);
    void (*set_gfx9000_enabled)(boolean enabled);
    boolean (*get_gfx9000_enabled)(void);
    void (*set_boot_mode)(unsigned mode);
    unsigned (*get_boot_mode)(void);
    unsigned (*get_active_boot_mode)(void);
    void (*set_model_profile)(unsigned profile);
    unsigned (*get_model_profile)(void);
    unsigned (*get_active_model_profile)(void);
    void (*set_rammapper_kb)(unsigned kb);
    unsigned (*get_rammapper_kb)(void);
    void (*set_megaram_kb)(unsigned kb);
    unsigned (*get_megaram_kb)(void);
    void (*set_z80_turbo_mode)(unsigned mode);
    unsigned (*get_z80_turbo_mode)(void);
    void (*set_fm_music_enabled)(boolean enabled);
    boolean (*get_fm_music_enabled)(void);
    void (*set_scc_plus_enabled)(boolean enabled);
    boolean (*get_scc_plus_enabled)(void);
    boolean (*set_scc_dual_cart_enabled)(boolean enabled);
    boolean (*get_scc_dual_cart_enabled)(void);
    boolean (*get_scc_dual_cart_available)(void);
    void (*set_fm_layer_gain_pct)(unsigned pct);
    unsigned (*get_fm_layer_gain_pct)(void);
    void (*set_audio_layer_muted)(unsigned layer_index, boolean muted);
    boolean (*get_audio_layer_muted)(unsigned layer_index);
    unsigned (*get_psg_mixer_reg7)(void);
    unsigned (*get_master_switch)(void);
    void (*set_frame_perf_telemetry_enabled)(boolean enabled);
    void (*reset_audio_mix_debug_window)(void);
} MsxBackendMachineOps;

typedef struct {
    const char *(*get_cartridge_name)(unsigned slot_index);
    const char *(*get_disk_name)(unsigned drive_index);
    const char *(*get_cassette_path)(void);
    const char *(*get_cartridge_path)(unsigned slot_index);
    const char *(*get_disk_path)(unsigned drive_index);
    boolean (*set_cartridge_path)(unsigned slot_index, const char *path);
    boolean (*set_disk_path)(unsigned drive_index, const char *path);
    boolean (*load_cassette)(const char *path);
    boolean (*unload_cassette)(void);
    boolean (*unload_cartridge)(unsigned slot_index);
    boolean (*unload_disk)(unsigned drive_index);
} MsxBackendMediaOps;

typedef struct {
    void (*reset_game_master_session)(void);
    boolean (*set_game_master_cheat_enabled)(const TGameMasterPoke *pokes, unsigned poke_count, boolean enabled);
    boolean (*set_game_master_cheat_value)(const TGameMasterPoke *pokes, unsigned poke_count, uint16_t value);
    boolean (*is_game_master_cheat_active)(const TGameMasterPoke *pokes, unsigned poke_count);
    boolean (*peek8)(uint16_t address, uint8_t *value);
    boolean (*peek16)(uint16_t address, uint16_t *value);
} MsxBackendCheatOps;

typedef struct {
    void (*set_load_diag)(unsigned stage);
    unsigned (*get_load_diag)(void);
    void (*set_v9990_debug_live_view)(TFmsxV9990DebugLiveView view);
    TFmsxV9990DebugLiveView (*get_v9990_debug_live_view)(void);
    void (*set_v9990_debug_reference_view)(TFmsxV9990DebugReferenceView view);
    TFmsxV9990DebugReferenceView (*get_v9990_debug_reference_view)(void);
    void (*get_video_host_debug)(TFmsxVideoHostDebug *debug);
    void (*get_audio_stats)(TFmsxAudioStats *stats);
    void (*get_audio_mix_debug)(TFmsxAudioMixDebug *stats);
    void (*get_audio_channel_debug)(TFmsxAudioChannelDebug *stats);
    void (*get_keyboard_debug)(TFmsxKeyboardDebug *stats);
    void (*get_timing_debug)(TFmsxTimingDebug *stats);
    void (*get_vdp_trace_view)(TFmsxVDPTraceView *view);
    void (*get_scc_trace_view)(TFmsxSCCTraceView *view);
    void (*get_audio_port_trace_view)(TFmsxAudioPortTraceView *view);
    void (*get_kmg_trace_view)(TFmsxKmgTraceView *view);
} MsxBackendDebugOps;

typedef struct {
    const MsxBackendStateOps *state;
    const MsxBackendMachineOps *machine;
    const MsxBackendMediaOps *media;
    const MsxBackendCheatOps *cheat;
    const MsxBackendDebugOps *debug;
} MsxBackendFamilyOps;

extern const BackendModuleV1 g_msx_backend_module_fmsx;

#ifdef __cplusplus
}
#endif

#endif
