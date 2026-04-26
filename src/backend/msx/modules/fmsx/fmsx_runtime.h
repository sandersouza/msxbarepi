#ifndef MSXBARE_CIRCLE_MSXBARE_FMSX_RUNTIME_H
#define MSXBARE_CIRCLE_MSXBARE_FMSX_RUNTIME_H

#include <stdint.h>
#include <circle/types.h>
#include "fmsx_v9990.h"
#include "../../gamemaster_catalog.h"

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
    unsigned logical_width;
    unsigned logical_height;
    unsigned pitch_pixels;
    unsigned hires_mode;
    unsigned interlaced_mode;
    unsigned woven_hires;
    unsigned field_parity_odd;
    unsigned disable_scanline_postfx;
} TFmsxVideoPresentation;

typedef struct {
    unsigned screen_mode;
    unsigned reg2;
    unsigned reg9;
    unsigned reg18;
    unsigned reg25;
    unsigned reg26;
    unsigned reg27;
    unsigned status2;
    unsigned frame_number;
    unsigned last_scanline;
    unsigned live_height;
    unsigned buffer_width;
    unsigned buffer_height;
    unsigned logical_width;
    unsigned logical_height;
    unsigned hires_mode;
    unsigned interlaced_mode;
    unsigned woven_hires;
    unsigned live_interlace_on;
    unsigned live_flip_even_odd;
    unsigned display_page;
    unsigned render_page;
    unsigned latched_odd_page;
    unsigned latched_interlace_odd_field;
    unsigned chr_base_offset;
    unsigned chr_plane1_offset;
    unsigned actual_sample_y;
    unsigned actual_base_offset;
    unsigned actual_plane1_offset;
    uint32_t actual_base_hash;
    uint32_t actual_plane1_hash;
    uint32_t physical_even_hash;
    uint32_t physical_odd_hash;
    uint32_t physical_even_frame_hash;
    uint32_t physical_odd_frame_hash;
    unsigned height_branch;
    unsigned latched_hires_eval;
    unsigned latched_interlaced_eval;
} TFmsxVideoHostDebug;

typedef struct {
    unsigned write_calls;
    unsigned samples_written;
    unsigned samples_pulled;
    unsigned ring_level;
    unsigned ring_peak;
    unsigned drop_count;
    unsigned overwrite_samples;
    unsigned trim_events;
    unsigned trim_samples;
    unsigned short_pulls;
    unsigned underrun_samples;
    unsigned source_peak;
    unsigned source_nonzero;
    unsigned last_pull_requested;
    unsigned last_pull_returned;
    unsigned last_level_before_pull;
    unsigned last_level_after_pull;
    unsigned last_trim_samples;
    unsigned last_render_batch;
    unsigned max_render_batch;
} TFmsxAudioStats;

typedef struct {
    uint32_t frame_number;
    unsigned sample_count;
    unsigned master_switch;
    unsigned bus_active_mask;
    unsigned fm_backend_nukeykt;
    unsigned psg_peak;
    unsigned fm_peak;
    unsigned scc_primary_peak;
    unsigned scc_secondary_peak;
    unsigned main_peak;
} TFmsxAudioMixDebug;

typedef struct {
    uint32_t frame_number;
    unsigned psg_mask;
    unsigned fm_mask;
    unsigned scc_primary_mask;
    unsigned scc_secondary_mask;
} TFmsxAudioChannelDebug;

typedef struct {
    unsigned last_hid;
    unsigned last_msx;
    unsigned runtime_queued;
    unsigned runtime_high_water;
    unsigned runtime_dropped;
    unsigned candidate_created;
    unsigned candidate_promoted;
    unsigned candidate_discarded;
    unsigned immediate_releases;
    unsigned immediate_gameplay_presses;
} TFmsxKeyboardDebug;

typedef struct {
    unsigned last_steps;
    unsigned last_frames_done;
    unsigned last_slices;
    unsigned peak_slices;
    unsigned last_z80_us;
    unsigned peak_z80_us;
    unsigned last_audio_us;
    unsigned peak_audio_us;
    unsigned last_audio_samples;
    unsigned peak_audio_samples;
    unsigned frame_miss_count;
} TFmsxFramePerfStats;

#define FMSX_VDP_TRACE_CAPACITY 1024u
#define FMSX_SMANBOW_AUDIO_TRACE_ENABLED 0
#define FMSX_SCC_TRACE_CAPACITY 4096u
#define FMSX_AUDIO_PORT_TRACE_CAPACITY 4096u
#define FMSX_KMG_TRACE_CAPACITY 64u

typedef enum {
    FMSX_VDP_TRACE_NONE = 0,
    FMSX_VDP_TRACE_TITLE = 1,
    FMSX_VDP_TRACE_SAVE_SELECT = 2,
    FMSX_VDP_TRACE_STARDATE = 3,
    FMSX_VDP_TRACE_KMG = 4
} TFmsxVDPTraceWindow;

typedef enum {
    FMSX_VDP_EVENT_NONE = 0,
    FMSX_VDP_EVENT_IE0_FIRE = 1,
    FMSX_VDP_EVENT_IE1_ARM = 2,
    FMSX_VDP_EVENT_IE1_FIRE = 3,
    FMSX_VDP_EVENT_R19_WRITE = 4,
    FMSX_VDP_EVENT_R23_WRITE = 5,
    FMSX_VDP_EVENT_S1_READ = 6,
    FMSX_VDP_EVENT_S2_READ = 7,
    FMSX_VDP_EVENT_CMD_START = 8,
    FMSX_VDP_EVENT_CMD_END = 9,
    FMSX_VDP_EVENT_PORT98_WRITE = 10,
    FMSX_VDP_EVENT_PORT99_ADDR = 11,
    FMSX_VDP_EVENT_PORT99_REG = 12
} TFmsxVDPTraceEventType;

typedef struct {
    uint32_t seq;
    uint32_t frame;
    uint16_t scanline;
    uint16_t pc;
    uint8_t line_phase;
    uint8_t event_type;
    uint8_t capture_window;
    uint8_t scr_mode;
    uint8_t reg1;
    uint8_t reg2;
    uint8_t reg8;
    uint8_t reg9;
    uint8_t reg15;
    uint8_t reg19;
    uint8_t reg23;
    uint8_t reg25;
    uint8_t reg26;
    uint8_t reg27;
    uint8_t status0;
    uint8_t status1;
    uint8_t status2;
    uint8_t irq_pending;
    uint8_t screen_on;
    uint8_t ie0_enabled;
    uint8_t ie1_enabled;
    uint8_t hr;
    uint8_t vr;
    uint8_t ie1_target_line;
    int8_t ie1_target_delta;
    uint8_t effective_odd_page;
    uint8_t render_page;
    uint8_t cart_slot_p1;
    uint8_t cart_slot_p2;
    uint8_t cart_bank_p1_lo;
    uint8_t cart_bank_p1_hi;
    uint8_t cart_bank_p2_lo;
    uint8_t cart_bank_p2_hi;
    uint8_t vdp_cmd;
    uint8_t vdp_ce;
    uint8_t aux_reg;
    uint8_t aux_value;
    uint8_t aux_ctrl;
    uint8_t reserved0;
    uint32_t aux_addr;
} TFmsxVDPTraceEvent;

typedef struct {
    const TFmsxVDPTraceEvent *events;
    unsigned capacity;
    unsigned count;
    unsigned head;
    unsigned dropped;
} TFmsxVDPTraceView;

typedef enum {
    FMSX_SCC_TRACE_NONE = 0,
    FMSX_SCC_TRACE_WAVE = 1,
    FMSX_SCC_TRACE_FREQ = 2,
    FMSX_SCC_TRACE_VOLUME = 3,
    FMSX_SCC_TRACE_ENABLE = 4,
    FMSX_SCC_TRACE_DEFORM = 5
} TFmsxSCCTraceKind;

typedef struct {
    uint32_t seq;
    uint32_t frame;
    uint16_t pc;
    uint16_t addr_first;
    uint16_t addr_last;
    uint16_t count;
    uint16_t rendered_samples_before;
    uint8_t value_first;
    uint8_t value_last;
    uint8_t slot;
    uint8_t chip;
    uint8_t ps;
    uint8_t ss;
    uint8_t bank16;
    uint8_t kind;
    uint8_t mode;
    uint8_t mapper;
    uint8_t capture_window;
    uint8_t session;
} TFmsxSCCTraceEvent;

typedef struct {
    const TFmsxSCCTraceEvent *events;
    unsigned capacity;
    unsigned count;
    unsigned head;
    unsigned dropped;
} TFmsxSCCTraceView;

typedef enum {
    FMSX_AUDIO_PORT_TRACE_NONE = 0,
    FMSX_AUDIO_PORT_TRACE_PSG = 1,
    FMSX_AUDIO_PORT_TRACE_FM = 2
} TFmsxAudioPortTraceChip;

typedef enum {
    FMSX_AUDIO_PORT_TRACE_CTRL = 1,
    FMSX_AUDIO_PORT_TRACE_DATA = 2
} TFmsxAudioPortTraceOp;

typedef struct {
    uint32_t seq;
    uint32_t frame;
    uint16_t pc;
    uint16_t count;
    uint8_t reg;
    uint8_t value_first;
    uint8_t value_last;
    uint8_t chip;
    uint8_t op;
    uint8_t capture_window;
    uint8_t session;
} TFmsxAudioPortTraceEvent;

typedef struct {
    const TFmsxAudioPortTraceEvent *events;
    unsigned capacity;
    unsigned count;
    unsigned head;
    unsigned dropped;
} TFmsxAudioPortTraceView;

typedef struct {
    uint32_t seq;
    uint32_t frame;
    uint16_t pc;
    uint16_t addr;
    uint8_t value;
    uint8_t l220e;
    uint8_t l220f;
    uint8_t l2212;
    uint8_t l2219;
} TFmsxKmgTraceEvent;

typedef struct {
    const TFmsxKmgTraceEvent *events;
    unsigned capacity;
    unsigned count;
    unsigned head;
    unsigned dropped;
} TFmsxKmgTraceView;

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
    unsigned reg9;
    unsigned reg25;
    unsigned reg26;
    unsigned reg27;
    unsigned reg17;
    unsigned reg19;
    unsigned reg1;
    unsigned reg7;
    unsigned status8;
    unsigned status9;
    unsigned last_status_read_reg;
    unsigned last_status_read_value;
    unsigned last_port99_op;
    unsigned last_port99_value;
    unsigned last_port99_alatch;
    unsigned last_port99_vkey;
    unsigned last_port99_r15;
    unsigned last_port99_pc;
    unsigned screen_on;
    unsigned ie0_enabled;
    unsigned vblank_flag;
    unsigned ie1_enabled;
    unsigned ie1_flag;
    unsigned status2_hr;
    unsigned status2_vr;
    unsigned line_phase;
    unsigned ie1_target_line;
    int ie1_target_delta;
    unsigned effective_odd_page;
    unsigned render_page;
    unsigned cart_slot_p1;
    unsigned cart_slot_p2;
    unsigned cart_bank_p1_lo;
    unsigned cart_bank_p1_hi;
    unsigned cart_bank_p2_lo;
    unsigned cart_bank_p2_hi;
    unsigned slot_reg;
    unsigned p1_write_enabled;
    unsigned cart_type_p1;
    unsigned cart_type_source_p1;
    unsigned cart_last_type_slot;
    unsigned cart_last_type_value;
    unsigned cart_last_type_source;
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
    unsigned ie1_armed;
    unsigned ie1_fired_hblank;
    unsigned vdp_r9_writes;
    unsigned vdp_r15_writes;
    unsigned vdp_r18_writes;
    unsigned vdp_r19_writes;
    unsigned vdp_r25_writes;
    unsigned vdp_r26_writes;
    unsigned vdp_r27_writes;
    unsigned vdp_s0_reads;
    unsigned vdp_s1_reads;
    unsigned vdp_s2_reads;
    unsigned vdp_port99_reads;
    unsigned vdp_port99_writes;
    unsigned vdp_port9b_writes;
    unsigned vdp_port9b_last_reg17_before;
    unsigned vdp_port9b_last_target;
    unsigned vdp_port9b_last_reg17_after;
    unsigned vdp_port9b_last_value;
    unsigned trace_last_event_type;
    unsigned trace_last_window;
    unsigned trace_last_pc;
    unsigned trace_last_scanline;
    unsigned trace_last_line_phase;
    unsigned trace_last_reg1;
    unsigned trace_last_reg23;
    unsigned trace_last_status2;
    unsigned trace_last_bank_p1_lo;
    unsigned trace_last_bank_p2_lo;
    unsigned flash_last_op;
    unsigned flash_last_slot;
    unsigned flash_last_addr;
    unsigned flash_last_offset;
    unsigned flash_last_value;
    unsigned flash_last_read_value;
    unsigned flash_last_state;
    unsigned flash_last_mode;
    unsigned flash_program_count;
    unsigned flash_erase_count;
    unsigned flash_read_count;
    unsigned kanji_available;
    unsigned kanji_reads;
    unsigned kanji_addr_writes;
    unsigned kanji_null_reads;
    unsigned fdc_status;
    unsigned fdc_track_reg;
    unsigned fdc_sector_reg;
    unsigned fdc_drive;
    unsigned fdc_side;
    unsigned fdc_irq;
    unsigned fdc_wait;
    unsigned kbd_runtime_queued;
    unsigned kbd_runtime_high_water;
    unsigned kbd_runtime_dropped;
    unsigned kbd_candidate_created;
    unsigned kbd_candidate_promoted;
    unsigned kbd_candidate_discarded;
    unsigned kbd_immediate_releases;
    unsigned kbd_immediate_gameplay_presses;
} TFmsxTimingDebug;

extern uint8_t g_fmsx_scc_internal_slot;
extern uint8_t g_fmsx_scc_dual_slot;

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
void fmsx_runtime_keyboard_drain_step(void);
void fmsx_runtime_keyboard_reset_pipeline(void);
void fmsx_runtime_set_overscan(boolean enabled);
void fmsx_runtime_set_refresh_hz(unsigned hz);
void fmsx_runtime_debug_force_refresh_hz(unsigned hz);
unsigned fmsx_runtime_get_refresh_hz(void);
unsigned fmsx_runtime_get_z80_turbo_percent(void);
uint64_t fmsx_runtime_get_frame_interval_us_exact(void);
unsigned fmsx_runtime_get_base_cpu_clock_hz(void);
void fmsx_runtime_set_frame_perf_telemetry_enabled(boolean enabled);
void fmsx_runtime_get_frame_perf_stats(TFmsxFramePerfStats *stats);
void fmsx_runtime_reset_frame_perf_stats_window(void);
boolean fmsx_runtime_audio_render_enabled(void);
void fmsx_audio_begin_frame_render_accounting(void);
unsigned fmsx_audio_end_frame_render_accounting(void);
uint64_t fmsx_audio_cpu_cycles_now(void);
unsigned fmsx_audio_effective_cpu_clock_hz(void);
void fmsx_audio_render_to_cpu_now(void);
void fmsx_audio_reset_stream_timing(void);
void fmsx_audio_reanchor_stream_timing(void);
unsigned fmsx_audio_last_sync_rendered_samples(void);
void fmsx_runtime_set_disk_rom_enabled(boolean enabled);
boolean fmsx_runtime_get_disk_rom_enabled(void);
void fmsx_runtime_set_kanji_rom_enabled(boolean enabled);
boolean fmsx_runtime_get_kanji_rom_enabled(void);
boolean fmsx_runtime_get_kanji_rom_available(void);
void fmsx_runtime_set_gfx9000_enabled(boolean enabled);
boolean fmsx_runtime_get_gfx9000_enabled(void);
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
void fmsx_runtime_set_panasonic_turbo_enabled(boolean enabled);
boolean fmsx_runtime_get_panasonic_turbo_enabled(void);
void fmsx_runtime_set_fm_music_enabled(boolean enabled);
boolean fmsx_runtime_get_fm_music_enabled(void);
void fmsx_runtime_set_scc_plus_enabled(boolean enabled);
boolean fmsx_runtime_get_scc_plus_enabled(void);
boolean fmsx_runtime_set_scc_dual_cart_enabled(boolean enabled);
boolean fmsx_runtime_get_scc_dual_cart_enabled(void);
boolean fmsx_runtime_get_scc_dual_cart_available(void);
unsigned fmsx_runtime_get_scc_plus_internal_slot(void);
unsigned fmsx_runtime_get_scc_plus_dual_slot(void);
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
const char *fmsx_runtime_get_cassette_path(void);
const char *fmsx_runtime_get_cartridge_path(unsigned slot_index);
const char *fmsx_runtime_get_disk_path(unsigned drive_index);
boolean fmsx_runtime_set_cartridge_path(unsigned slot_index, const char *path);
boolean fmsx_runtime_set_disk_path(unsigned drive_index, const char *path);
boolean fmsx_runtime_load_cartridge(unsigned slot_index, const char *path);
boolean fmsx_runtime_load_disk(unsigned drive_index, const char *path);
boolean fmsx_runtime_load_cassette(const char *path);
boolean fmsx_runtime_unload_cartridge(unsigned slot_index);
boolean fmsx_runtime_unload_disk(unsigned drive_index);
boolean fmsx_runtime_unload_cassette(void);
void fmsx_runtime_reset_game_master_session(void);
boolean fmsx_runtime_apply_game_master_cheat(const TGameMasterPoke *pokes, unsigned poke_count);
boolean fmsx_runtime_set_game_master_cheat_enabled(const TGameMasterPoke *pokes, unsigned poke_count, boolean enabled);
boolean fmsx_runtime_set_game_master_cheat_value(const TGameMasterPoke *pokes, unsigned poke_count, uint16_t value);
boolean fmsx_runtime_is_game_master_cheat_active(const TGameMasterPoke *pokes, unsigned poke_count);
boolean fmsx_runtime_peek8(uint16_t address, uint8_t *value);
boolean fmsx_runtime_peek16(uint16_t address, uint16_t *value);
void fmsx_runtime_set_load_diag(unsigned stage);
unsigned fmsx_runtime_get_load_diag(void);
void fmsx_runtime_set_v9990_debug_live_view(TFmsxV9990DebugLiveView view);
TFmsxV9990DebugLiveView fmsx_runtime_get_v9990_debug_live_view(void);
void fmsx_runtime_set_v9990_debug_reference_view(TFmsxV9990DebugReferenceView view);
TFmsxV9990DebugReferenceView fmsx_runtime_get_v9990_debug_reference_view(void);
TFmsxRuntimeStatus fmsx_runtime_get_status(void);
unsigned fmsx_runtime_get_video_frame(const u16 **pixels, unsigned *width, unsigned *height);
void fmsx_runtime_get_video_presentation(TFmsxVideoPresentation *presentation);
void fmsx_runtime_get_video_host_debug(TFmsxVideoHostDebug *debug);
unsigned fmsx_audio_pull_samples(int16_t *dst, unsigned max_samples);
void fmsx_audio_get_stats(TFmsxAudioStats *stats);
void fmsx_runtime_get_audio_mix_debug(TFmsxAudioMixDebug *stats);
void fmsx_runtime_get_audio_channel_debug(TFmsxAudioChannelDebug *stats);
void fmsx_runtime_reset_audio_mix_debug_window(void);
void fmsx_keyboard_get_debug(TFmsxKeyboardDebug *stats);
void fmsx_runtime_get_timing_debug(TFmsxTimingDebug *stats);
void fmsx_runtime_get_vdp_trace_view(TFmsxVDPTraceView *view);
void fmsx_runtime_get_scc_trace_view(TFmsxSCCTraceView *view);
void fmsx_runtime_get_audio_port_trace_view(TFmsxAudioPortTraceView *view);
void fmsx_runtime_get_kmg_trace_view(TFmsxKmgTraceView *view);

#ifdef __cplusplus
}
#endif

#endif
