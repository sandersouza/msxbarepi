#ifndef MSXBARE_CIRCLE_MSXBARE_FMSX_RUNTIME_H
#define MSXBARE_CIRCLE_MSXBARE_FMSX_RUNTIME_H

#include <stdint.h>
#include <circle/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    boolean initialized;
    boolean running;
    unsigned long frames;
    int last_pc;
    int last_error;
} TFmsxRuntimeStatus;

typedef struct {
    unsigned write_calls;
    unsigned samples_written;
    unsigned samples_pulled;
    unsigned ring_level;
    unsigned drop_count;
    unsigned source_peak;
    unsigned source_nonzero;
} TFmsxAudioStats;

typedef struct {
    unsigned last_hid;
    unsigned last_msx;
} TFmsxKeyboardDebug;

typedef struct {
    unsigned h_period;
    unsigned v_period;
    unsigned i_period;
    unsigned scanline;
    unsigned pal_video;
    unsigned lines_212;
    unsigned turbo_percent;
    unsigned scr_mode;
    unsigned reg2;
    unsigned reg25;
    unsigned reg26;
    unsigned reg27;
    unsigned reg19;
    unsigned reg1;
    unsigned reg7;
    unsigned screen_on;
    unsigned ie0_enabled;
    unsigned vblank_flag;
    unsigned ie1_enabled;
    unsigned ie1_flag;
    unsigned msx2p_kanji_basic;
    unsigned msx2p_kanji_basic_map_ok;
    unsigned msx2p_kanji_basic_selected_p1;
    unsigned msx2p_kanji_basic_seen_p1;
    unsigned p1_ps;
    unsigned p1_ss;
    unsigned disk_rom_enabled;
    unsigned disk_rom_loaded;
    unsigned msx2p_msxje_loaded;
    unsigned msx2p_msxje_selected_p1;
    unsigned msx2p_msxje_seen_p1;
    unsigned rtc_reads;
    unsigned rtc_writes;
    unsigned rtc_last_reg;
    unsigned rtc_mode;
    unsigned hscroll;
    unsigned hscroll512;
    unsigned multipage_enabled;
    unsigned display_page;
    unsigned vdp_cmd;
    unsigned vdp_ce;
    unsigned vdp_tr;
    unsigned vdp_cmd_starts;
    unsigned vdp_copy_starts;
    unsigned mode_yjk;
    unsigned mode_yae;
    unsigned ie1_events;
    unsigned ie1_acks;
    unsigned kanji_available;
    unsigned kanji_reads;
    unsigned kanji_addr_writes;
    unsigned kanji_null_reads;
} TFmsxTimingDebug;

#define FMSX_MODEL_PROFILE_MSX1  0u
#define FMSX_MODEL_PROFILE_MSX2  1u
#define FMSX_MODEL_PROFILE_MSX2P 2u

boolean fmsx_runtime_init(void);
boolean fmsx_runtime_reboot_basic(void);
boolean fmsx_runtime_menu_reset(void);
boolean fmsx_runtime_hard_reset(void);
boolean fmsx_runtime_step_frame(void);
void fmsx_runtime_shutdown(void);
boolean fmsx_runtime_save_state(void *dst, unsigned capacity, unsigned *saved_size);
boolean fmsx_runtime_load_state(const void *src, unsigned size);
void fmsx_runtime_set_joystick_bits(u8 bridge_bits);
void fmsx_runtime_set_keyboard_raw(u8 modifiers, const unsigned char raw_keys[6]);
void fmsx_runtime_set_overscan(boolean enabled);
void fmsx_runtime_set_refresh_hz(unsigned hz);
void fmsx_runtime_set_disk_rom_enabled(boolean enabled);
boolean fmsx_runtime_get_disk_rom_enabled(void);
void fmsx_runtime_set_boot_mode(unsigned mode);
unsigned fmsx_runtime_get_boot_mode(void);
unsigned fmsx_runtime_get_active_boot_mode(void);
void fmsx_runtime_set_model_profile(unsigned profile);
unsigned fmsx_runtime_get_model_profile(void);
unsigned fmsx_runtime_get_active_model_profile(void);
void fmsx_runtime_set_rammapper_kb(unsigned kb);
unsigned fmsx_runtime_get_rammapper_kb(void);
void fmsx_runtime_set_megaram_kb(unsigned kb);
unsigned fmsx_runtime_get_megaram_kb(void);
boolean fmsx_runtime_use_embedded_bios(void);
void fmsx_runtime_notify_media_probe(void);
void fmsx_runtime_set_z80_turbo_mode(unsigned mode);
unsigned fmsx_runtime_get_z80_turbo_mode(void);
void fmsx_runtime_set_fm_music_enabled(boolean enabled);
boolean fmsx_runtime_get_fm_music_enabled(void);
void fmsx_runtime_set_scc_cart_enabled(boolean enabled);
boolean fmsx_runtime_get_scc_cart_enabled(void);
void fmsx_runtime_set_fm_layer_gain_pct(unsigned pct);
unsigned fmsx_runtime_get_fm_layer_gain_pct(void);
void fmsx_runtime_set_audio_layer_muted(unsigned layer_index, boolean muted);
boolean fmsx_runtime_get_audio_layer_muted(unsigned layer_index);
unsigned fmsx_runtime_get_psg_mixer_reg7(void);
unsigned fmsx_runtime_get_master_switch(void);
const char *fmsx_runtime_get_cartridge_name(unsigned slot_index);
const char *fmsx_runtime_get_disk_name(unsigned drive_index);
const char *fmsx_runtime_get_cartridge_path(unsigned slot_index);
const char *fmsx_runtime_get_disk_path(unsigned drive_index);
boolean fmsx_runtime_set_cartridge_path(unsigned slot_index, const char *path);
boolean fmsx_runtime_set_disk_path(unsigned drive_index, const char *path);
boolean fmsx_runtime_load_cartridge(unsigned slot_index, const char *path);
boolean fmsx_runtime_load_disk(unsigned drive_index, const char *path);
boolean fmsx_runtime_unload_cartridge(unsigned slot_index);
boolean fmsx_runtime_unload_disk(unsigned drive_index);
void fmsx_runtime_set_load_diag(unsigned stage);
unsigned fmsx_runtime_get_load_diag(void);
TFmsxRuntimeStatus fmsx_runtime_get_status(void);
unsigned fmsx_runtime_get_video_frame(const u16 **pixels, unsigned *width, unsigned *height);
unsigned fmsx_audio_pull_samples(int16_t *dst, unsigned max_samples);
void fmsx_audio_get_stats(TFmsxAudioStats *stats);
void fmsx_keyboard_get_debug(TFmsxKeyboardDebug *stats);
void fmsx_runtime_get_timing_debug(TFmsxTimingDebug *stats);

#ifdef __cplusplus
}
#endif

#endif
