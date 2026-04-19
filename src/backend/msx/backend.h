#ifndef MSXBARE_BACKEND_MSX_BACKEND_H
#define MSXBARE_BACKEND_MSX_BACKEND_H

#include "../core/module.h"
#include "modules/fmsx/fmsx_runtime.h"
#include "gamemaster_catalog.h"

#ifdef __cplusplus
extern "C" {
#endif

enum {
    MSX_BACKEND_CAP_STATE = 1u << 0,
    MSX_BACKEND_CAP_MACHINE = 1u << 1,
    MSX_BACKEND_CAP_MEDIA = 1u << 2,
    MSX_BACKEND_CAP_CHEAT = 1u << 3,
    MSX_BACKEND_CAP_DEBUG = 1u << 4
};

enum {
    MSX_BACKEND_INIT_OK = 0,
    MSX_BACKEND_INIT_ERR_FMSX = 1,
    MSX_BACKEND_INIT_ERR_BLUEMSX_STUB = 1001
};

enum {
    MSX_BACKEND_MODEL_PROFILE_MSX1 = FMSX_MODEL_PROFILE_MSX1,
    MSX_BACKEND_MODEL_PROFILE_MSX2 = FMSX_MODEL_PROFILE_MSX2,
    MSX_BACKEND_MODEL_PROFILE_MSX2P = FMSX_MODEL_PROFILE_MSX2P
};

typedef BackendRuntimeStatus MsxBackendRuntimeStatus;
typedef BackendVideoPresentation MsxBackendVideoPresentation;
typedef BackendInfo MsxBackendInfo;

typedef TFmsxVideoHostDebug MsxBackendVideoHostDebug;
typedef TFmsxAudioStats MsxBackendAudioStats;
typedef TFmsxAudioMixDebug MsxBackendAudioMixDebug;
typedef TFmsxAudioChannelDebug MsxBackendAudioChannelDebug;
typedef TFmsxKeyboardDebug MsxBackendKeyboardDebug;
typedef TFmsxTimingDebug MsxBackendTimingDebug;
typedef TFmsxVDPTraceView MsxBackendVdpTraceView;
typedef TFmsxSCCTraceView MsxBackendSccTraceView;
typedef TFmsxAudioPortTraceView MsxBackendAudioPortTraceView;
typedef TFmsxKmgTraceView MsxBackendKmgTraceView;
typedef TFmsxV9990DebugLiveView MsxBackendV9990DebugLiveView;
typedef TFmsxV9990DebugReferenceView MsxBackendV9990DebugReferenceView;

const char *msx_backend_family_id(void);
const char *msx_backend_default_id(void);
void msx_backend_set_requested_backend_id(const char *backend_id);
const char *msx_backend_requested_backend_id(void);
const char *msx_backend_selected_backend_id(void);
boolean msx_backend_is_capability_available(unsigned capability_bit);

boolean msx_backend_init(void);
boolean msx_backend_reset(void);
boolean msx_backend_step_frame(void);
void msx_backend_shutdown(void);
unsigned msx_backend_video_frame(const u16 **pixels, unsigned *width, unsigned *height);
void msx_backend_get_video_presentation(MsxBackendVideoPresentation *presentation);
unsigned msx_backend_audio_pull(int16_t *dst, unsigned max_samples);
void msx_backend_input_push_joystick(u8 bridge_bits);
void msx_backend_input_push_keyboard(u8 modifiers, const unsigned char raw_keys[6]);
boolean msx_backend_media_load_cartridge(unsigned slot_index, const char *path);
boolean msx_backend_media_load_disk(unsigned drive_index, const char *path);
MsxBackendRuntimeStatus msx_backend_get_status(void);
MsxBackendInfo msx_backend_get_info(void);

boolean msx_backend_reboot_basic(void);
boolean msx_backend_menu_reset(void);
boolean msx_backend_save_state(void *dst, unsigned capacity, unsigned *saved_size);
boolean msx_backend_load_state(const void *src, unsigned size);

void msx_backend_set_overscan(boolean enabled);
void msx_backend_set_refresh_hz(unsigned hz);
void msx_backend_debug_force_refresh_hz(unsigned hz);
unsigned msx_backend_get_refresh_hz(void);
uint64_t msx_backend_get_frame_interval_us_exact(void);
void msx_backend_set_disk_rom_enabled(boolean enabled);
boolean msx_backend_get_disk_rom_enabled(void);
void msx_backend_set_kanji_rom_enabled(boolean enabled);
boolean msx_backend_get_kanji_rom_enabled(void);
boolean msx_backend_get_kanji_rom_available(void);
void msx_backend_set_gfx9000_enabled(boolean enabled);
boolean msx_backend_get_gfx9000_enabled(void);
void msx_backend_set_boot_mode(unsigned mode);
unsigned msx_backend_get_boot_mode(void);
unsigned msx_backend_get_active_boot_mode(void);
void msx_backend_set_model_profile(unsigned profile);
unsigned msx_backend_get_model_profile(void);
unsigned msx_backend_get_active_model_profile(void);
void msx_backend_set_rammapper_kb(unsigned kb);
unsigned msx_backend_get_rammapper_kb(void);
void msx_backend_set_megaram_kb(unsigned kb);
unsigned msx_backend_get_megaram_kb(void);
void msx_backend_set_z80_turbo_mode(unsigned mode);
unsigned msx_backend_get_z80_turbo_mode(void);
void msx_backend_set_fm_music_enabled(boolean enabled);
boolean msx_backend_get_fm_music_enabled(void);
void msx_backend_set_scc_plus_enabled(boolean enabled);
boolean msx_backend_get_scc_plus_enabled(void);
boolean msx_backend_set_scc_dual_cart_enabled(boolean enabled);
boolean msx_backend_get_scc_dual_cart_enabled(void);
boolean msx_backend_get_scc_dual_cart_available(void);
void msx_backend_set_fm_layer_gain_pct(unsigned pct);
unsigned msx_backend_get_fm_layer_gain_pct(void);
void msx_backend_set_audio_layer_muted(unsigned layer_index, boolean muted);
boolean msx_backend_get_audio_layer_muted(unsigned layer_index);
unsigned msx_backend_get_psg_mixer_reg7(void);
unsigned msx_backend_get_master_switch(void);
void msx_backend_set_frame_perf_telemetry_enabled(boolean enabled);
void msx_backend_reset_audio_mix_debug_window(void);

const char *msx_backend_get_cartridge_name(unsigned slot_index);
const char *msx_backend_get_disk_name(unsigned drive_index);
const char *msx_backend_get_cartridge_path(unsigned slot_index);
const char *msx_backend_get_disk_path(unsigned drive_index);
boolean msx_backend_set_cartridge_path(unsigned slot_index, const char *path);
boolean msx_backend_set_disk_path(unsigned drive_index, const char *path);
boolean msx_backend_unload_cartridge(unsigned slot_index);
boolean msx_backend_unload_disk(unsigned drive_index);

void msx_backend_reset_game_master_session(void);
boolean msx_backend_set_game_master_cheat_enabled(const TGameMasterPoke *pokes, unsigned poke_count, boolean enabled);
boolean msx_backend_set_game_master_cheat_value(const TGameMasterPoke *pokes, unsigned poke_count, uint16_t value);
boolean msx_backend_is_game_master_cheat_active(const TGameMasterPoke *pokes, unsigned poke_count);
boolean msx_backend_peek8(uint16_t address, uint8_t *value);
boolean msx_backend_peek16(uint16_t address, uint16_t *value);

void msx_backend_set_load_diag(unsigned stage);
unsigned msx_backend_get_load_diag(void);
void msx_backend_set_v9990_debug_live_view(MsxBackendV9990DebugLiveView view);
MsxBackendV9990DebugLiveView msx_backend_get_v9990_debug_live_view(void);
void msx_backend_set_v9990_debug_reference_view(MsxBackendV9990DebugReferenceView view);
MsxBackendV9990DebugReferenceView msx_backend_get_v9990_debug_reference_view(void);
void msx_backend_get_video_host_debug(MsxBackendVideoHostDebug *debug);
void msx_backend_get_audio_stats(MsxBackendAudioStats *stats);
void msx_backend_get_audio_mix_debug(MsxBackendAudioMixDebug *stats);
void msx_backend_get_audio_channel_debug(MsxBackendAudioChannelDebug *stats);
void msx_backend_get_keyboard_debug(MsxBackendKeyboardDebug *stats);
void msx_backend_get_timing_debug(MsxBackendTimingDebug *stats);
void msx_backend_get_vdp_trace_view(MsxBackendVdpTraceView *view);
void msx_backend_get_scc_trace_view(MsxBackendSccTraceView *view);
void msx_backend_get_audio_port_trace_view(MsxBackendAudioPortTraceView *view);
void msx_backend_get_kmg_trace_view(MsxBackendKmgTraceView *view);

#ifdef __cplusplus
}
#endif

#endif
