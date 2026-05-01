#include "backend.h"

#include "backend_internal.h"

extern void msxbare_uart_write(const char *text);
extern unsigned long long msxbare_monotonic_time_us(void);

static const char kMsxBackendFamilyId[] = "msx";
static BackendInfo g_msx_backend_info = {
    "msx",
    "fmsx",
    FALSE,
    FALSE,
    MSX_BACKEND_INIT_OK
};

static const BackendHostExportsV1 kMsxHostExports = {
    BACKEND_MODULE_ABI_V1,
    msxbare_uart_write,
    msxbare_monotonic_time_us
};

static const BackendModuleV1 *msx_backend_selected_module(void)
{
    return &g_msx_backend_module_fmsx;
}

static const BackendModuleV1 *msx_backend_control_module(void)
{
    return &g_msx_backend_module_fmsx;
}

static const MsxBackendFamilyOps *msx_backend_family_ops(void)
{
    const BackendModuleV1 *module = msx_backend_control_module();
    return module != 0 ? (const MsxBackendFamilyOps *) module->family_ops : 0;
}

static BackendRuntimeStatus msx_backend_empty_status(void)
{
    BackendRuntimeStatus status = { FALSE, FALSE, 0u, 0, 0 };
    return status;
}

static void msx_backend_clear_video_presentation(BackendVideoPresentation *presentation)
{
    if (presentation != 0)
    {
        presentation->logical_width = 0u;
        presentation->logical_height = 0u;
        presentation->pitch_pixels = 0u;
        presentation->hires_mode = FALSE;
        presentation->interlaced_mode = FALSE;
        presentation->woven_hires = FALSE;
        presentation->field_parity_odd = FALSE;
        presentation->disable_scanline_postfx = FALSE;
    }
}

const char *msx_backend_family_id(void)
{
    return kMsxBackendFamilyId;
}

boolean msx_backend_is_capability_available(unsigned capability_bit)
{
    const BackendModuleV1 *module = msx_backend_control_module();
    return (module != 0 && (module->capability_bits & capability_bit) != 0u) ? TRUE : FALSE;
}

boolean msx_backend_init(void)
{
    const BackendModuleV1 *module = &g_msx_backend_module_fmsx;
    int init_error = MSX_BACKEND_INIT_OK;
    boolean ok = FALSE;

    g_msx_backend_info.backend_family = kMsxBackendFamilyId;
    g_msx_backend_info.active_backend_name = module->display_name;
    g_msx_backend_info.init_attempted = TRUE;
    g_msx_backend_info.available = FALSE;
    g_msx_backend_info.init_error_code = MSX_BACKEND_INIT_OK;

    if (module->ops != 0 && module->ops->init != 0)
    {
        ok = module->ops->init(&kMsxHostExports, &init_error);
    }

    g_msx_backend_info.available = ok;
    g_msx_backend_info.init_error_code = init_error;
    return ok;
}

boolean msx_backend_reset(void)
{
    const BackendModuleV1 *module = msx_backend_selected_module();
    return (module != 0 && module->ops != 0 && module->ops->reset != 0)
        ? module->ops->reset()
        : FALSE;
}

boolean msx_backend_step_frame(void)
{
    const BackendModuleV1 *module = msx_backend_selected_module();
    return (module != 0 && module->ops != 0 && module->ops->step_frame != 0)
        ? module->ops->step_frame()
        : FALSE;
}

void msx_backend_shutdown(void)
{
    const BackendModuleV1 *module = msx_backend_selected_module();
    if (module != 0 && module->ops != 0 && module->ops->shutdown != 0)
    {
        module->ops->shutdown();
    }
}

unsigned msx_backend_video_frame(const u16 **pixels, unsigned *width, unsigned *height)
{
    const BackendModuleV1 *module = msx_backend_selected_module();
    if (pixels != 0) *pixels = 0;
    if (width != 0) *width = 0u;
    if (height != 0) *height = 0u;
    return (module != 0 && module->ops != 0 && module->ops->video_frame != 0)
        ? module->ops->video_frame(pixels, width, height)
        : 0u;
}

void msx_backend_get_video_presentation(MsxBackendVideoPresentation *presentation)
{
    const BackendModuleV1 *module = msx_backend_selected_module();
    msx_backend_clear_video_presentation(presentation);
    if (module != 0 && module->ops != 0 && module->ops->get_video_presentation != 0)
    {
        module->ops->get_video_presentation(presentation);
    }
}

unsigned msx_backend_audio_pull(int16_t *dst, unsigned max_samples)
{
    const BackendModuleV1 *module = msx_backend_selected_module();
    return (module != 0 && module->ops != 0 && module->ops->audio_pull != 0)
        ? module->ops->audio_pull(dst, max_samples)
        : 0u;
}

void msx_backend_input_push_joystick(u8 bridge_bits)
{
    const BackendModuleV1 *module = msx_backend_selected_module();
    if (module != 0 && module->ops != 0 && module->ops->input_push_joystick != 0)
    {
        module->ops->input_push_joystick(bridge_bits);
    }
}

void msx_backend_input_push_keyboard(u8 modifiers, const unsigned char raw_keys[6])
{
    const BackendModuleV1 *module = msx_backend_selected_module();
    if (module != 0 && module->ops != 0 && module->ops->input_push_keyboard != 0)
    {
        module->ops->input_push_keyboard(modifiers, raw_keys);
    }
}

boolean msx_backend_media_load_cartridge(unsigned slot_index, const char *path)
{
    const BackendModuleV1 *module = msx_backend_selected_module();
    return (module != 0 && module->ops != 0 && module->ops->media_load_cartridge != 0)
        ? module->ops->media_load_cartridge(slot_index, path)
        : FALSE;
}

boolean msx_backend_media_load_disk(unsigned drive_index, const char *path)
{
    const BackendModuleV1 *module = msx_backend_selected_module();
    return (module != 0 && module->ops != 0 && module->ops->media_load_disk != 0)
        ? module->ops->media_load_disk(drive_index, path)
        : FALSE;
}

boolean msx_backend_media_load_cassette(const char *path)
{
    const MsxBackendFamilyOps *ops = msx_backend_family_ops();
    return (ops != 0 && ops->media != 0 && ops->media->load_cassette != 0)
        ? ops->media->load_cassette(path)
        : FALSE;
}

MsxBackendRuntimeStatus msx_backend_get_status(void)
{
    const BackendModuleV1 *module = msx_backend_selected_module();
    return (module != 0 && module->ops != 0 && module->ops->get_status != 0)
        ? module->ops->get_status()
        : msx_backend_empty_status();
}

MsxBackendInfo msx_backend_get_info(void)
{
    return g_msx_backend_info;
}

#define MSX_BACKEND_CALL_BOOL(group, field, ...) \
    do { \
        const MsxBackendFamilyOps *ops = msx_backend_family_ops(); \
        return (ops != 0 && ops->group != 0 && ops->group->field != 0) \
            ? ops->group->field(__VA_ARGS__) \
            : FALSE; \
    } while (0)

#define MSX_BACKEND_CALL_VOID(group, field, ...) \
    do { \
        const MsxBackendFamilyOps *ops = msx_backend_family_ops(); \
        if (ops != 0 && ops->group != 0 && ops->group->field != 0) \
        { \
            ops->group->field(__VA_ARGS__); \
        } \
        return; \
    } while (0)

#define MSX_BACKEND_CALL_UNSIGNED(group, field, fallback, ...) \
    do { \
        const MsxBackendFamilyOps *ops = msx_backend_family_ops(); \
        return (ops != 0 && ops->group != 0 && ops->group->field != 0) \
            ? ops->group->field(__VA_ARGS__) \
            : (fallback); \
    } while (0)

#define MSX_BACKEND_CALL_U64(group, field, fallback, ...) \
    do { \
        const MsxBackendFamilyOps *ops = msx_backend_family_ops(); \
        return (ops != 0 && ops->group != 0 && ops->group->field != 0) \
            ? ops->group->field(__VA_ARGS__) \
            : (fallback); \
    } while (0)

#define MSX_BACKEND_CALL_CSTR(group, field, ...) \
    do { \
        const MsxBackendFamilyOps *ops = msx_backend_family_ops(); \
        return (ops != 0 && ops->group != 0 && ops->group->field != 0) \
            ? ops->group->field(__VA_ARGS__) \
            : 0; \
    } while (0)

boolean msx_backend_reboot_basic(void) { MSX_BACKEND_CALL_BOOL(state, reboot_basic); }
boolean msx_backend_menu_reset(void) { MSX_BACKEND_CALL_BOOL(state, menu_reset); }
boolean msx_backend_save_state(void *dst, unsigned capacity, unsigned *saved_size) { MSX_BACKEND_CALL_BOOL(state, save_state, dst, capacity, saved_size); }
boolean msx_backend_load_state(const void *src, unsigned size) { MSX_BACKEND_CALL_BOOL(state, load_state, src, size); }

void msx_backend_set_overscan(boolean enabled) { MSX_BACKEND_CALL_VOID(machine, set_overscan, enabled); }
void msx_backend_set_refresh_hz(unsigned hz) { MSX_BACKEND_CALL_VOID(machine, set_refresh_hz, hz); }
void msx_backend_debug_force_refresh_hz(unsigned hz) { MSX_BACKEND_CALL_VOID(machine, debug_force_refresh_hz, hz); }
unsigned msx_backend_get_refresh_hz(void) { MSX_BACKEND_CALL_UNSIGNED(machine, get_refresh_hz, 0u); }
uint64_t msx_backend_get_frame_interval_us_exact(void) { MSX_BACKEND_CALL_U64(machine, get_frame_interval_us_exact, 0u); }
void msx_backend_set_disk_rom_enabled(boolean enabled) { MSX_BACKEND_CALL_VOID(machine, set_disk_rom_enabled, enabled); }
boolean msx_backend_get_disk_rom_enabled(void) { MSX_BACKEND_CALL_BOOL(machine, get_disk_rom_enabled); }
void msx_backend_set_kanji_rom_enabled(boolean enabled) { MSX_BACKEND_CALL_VOID(machine, set_kanji_rom_enabled, enabled); }
boolean msx_backend_get_kanji_rom_enabled(void) { MSX_BACKEND_CALL_BOOL(machine, get_kanji_rom_enabled); }
boolean msx_backend_get_kanji_rom_available(void) { MSX_BACKEND_CALL_BOOL(machine, get_kanji_rom_available); }
void msx_backend_set_gfx9000_enabled(boolean enabled) { MSX_BACKEND_CALL_VOID(machine, set_gfx9000_enabled, enabled); }
boolean msx_backend_get_gfx9000_enabled(void) { MSX_BACKEND_CALL_BOOL(machine, get_gfx9000_enabled); }
void msx_backend_set_boot_mode(unsigned mode) { MSX_BACKEND_CALL_VOID(machine, set_boot_mode, mode); }
unsigned msx_backend_get_boot_mode(void) { MSX_BACKEND_CALL_UNSIGNED(machine, get_boot_mode, 0u); }
unsigned msx_backend_get_active_boot_mode(void) { MSX_BACKEND_CALL_UNSIGNED(machine, get_active_boot_mode, 0u); }
void msx_backend_set_model_profile(unsigned profile) { MSX_BACKEND_CALL_VOID(machine, set_model_profile, profile); }
unsigned msx_backend_get_model_profile(void) { MSX_BACKEND_CALL_UNSIGNED(machine, get_model_profile, 0u); }
unsigned msx_backend_get_active_model_profile(void) { MSX_BACKEND_CALL_UNSIGNED(machine, get_active_model_profile, 0u); }
void msx_backend_set_rammapper_kb(unsigned kb) { MSX_BACKEND_CALL_VOID(machine, set_rammapper_kb, kb); }
unsigned msx_backend_get_rammapper_kb(void) { MSX_BACKEND_CALL_UNSIGNED(machine, get_rammapper_kb, 0u); }
void msx_backend_set_megaram_kb(unsigned kb) { MSX_BACKEND_CALL_VOID(machine, set_megaram_kb, kb); }
unsigned msx_backend_get_megaram_kb(void) { MSX_BACKEND_CALL_UNSIGNED(machine, get_megaram_kb, 0u); }
void msx_backend_set_z80_turbo_mode(unsigned mode) { MSX_BACKEND_CALL_VOID(machine, set_z80_turbo_mode, mode); }
unsigned msx_backend_get_z80_turbo_mode(void) { MSX_BACKEND_CALL_UNSIGNED(machine, get_z80_turbo_mode, 0u); }
void msx_backend_set_fm_music_enabled(boolean enabled) { MSX_BACKEND_CALL_VOID(machine, set_fm_music_enabled, enabled); }
boolean msx_backend_get_fm_music_enabled(void) { MSX_BACKEND_CALL_BOOL(machine, get_fm_music_enabled); }
void msx_backend_set_scc_plus_enabled(boolean enabled) { MSX_BACKEND_CALL_VOID(machine, set_scc_plus_enabled, enabled); }
boolean msx_backend_get_scc_plus_enabled(void) { MSX_BACKEND_CALL_BOOL(machine, get_scc_plus_enabled); }
boolean msx_backend_set_scc_dual_cart_enabled(boolean enabled) { MSX_BACKEND_CALL_BOOL(machine, set_scc_dual_cart_enabled, enabled); }
boolean msx_backend_get_scc_dual_cart_enabled(void) { MSX_BACKEND_CALL_BOOL(machine, get_scc_dual_cart_enabled); }
boolean msx_backend_get_scc_dual_cart_available(void) { MSX_BACKEND_CALL_BOOL(machine, get_scc_dual_cart_available); }
void msx_backend_set_fm_layer_gain_pct(unsigned pct) { MSX_BACKEND_CALL_VOID(machine, set_fm_layer_gain_pct, pct); }
unsigned msx_backend_get_fm_layer_gain_pct(void) { MSX_BACKEND_CALL_UNSIGNED(machine, get_fm_layer_gain_pct, 0u); }
void msx_backend_set_audio_layer_muted(unsigned layer_index, boolean muted) { MSX_BACKEND_CALL_VOID(machine, set_audio_layer_muted, layer_index, muted); }
boolean msx_backend_get_audio_layer_muted(unsigned layer_index) { MSX_BACKEND_CALL_BOOL(machine, get_audio_layer_muted, layer_index); }
unsigned msx_backend_get_psg_mixer_reg7(void) { MSX_BACKEND_CALL_UNSIGNED(machine, get_psg_mixer_reg7, 0u); }
unsigned msx_backend_get_master_switch(void) { MSX_BACKEND_CALL_UNSIGNED(machine, get_master_switch, 0u); }
void msx_backend_set_frame_perf_telemetry_enabled(boolean enabled) { MSX_BACKEND_CALL_VOID(machine, set_frame_perf_telemetry_enabled, enabled); }
void msx_backend_reset_audio_mix_debug_window(void) { MSX_BACKEND_CALL_VOID(machine, reset_audio_mix_debug_window); }

const char *msx_backend_get_cartridge_name(unsigned slot_index) { MSX_BACKEND_CALL_CSTR(media, get_cartridge_name, slot_index); }
const char *msx_backend_get_disk_name(unsigned drive_index) { MSX_BACKEND_CALL_CSTR(media, get_disk_name, drive_index); }
const char *msx_backend_get_cassette_path(void) { MSX_BACKEND_CALL_CSTR(media, get_cassette_path); }
const char *msx_backend_get_cartridge_path(unsigned slot_index) { MSX_BACKEND_CALL_CSTR(media, get_cartridge_path, slot_index); }
const char *msx_backend_get_disk_path(unsigned drive_index) { MSX_BACKEND_CALL_CSTR(media, get_disk_path, drive_index); }
boolean msx_backend_set_cartridge_path(unsigned slot_index, const char *path) { MSX_BACKEND_CALL_BOOL(media, set_cartridge_path, slot_index, path); }
boolean msx_backend_set_disk_path(unsigned drive_index, const char *path) { MSX_BACKEND_CALL_BOOL(media, set_disk_path, drive_index, path); }
boolean msx_backend_unload_cartridge(unsigned slot_index) { MSX_BACKEND_CALL_BOOL(media, unload_cartridge, slot_index); }
boolean msx_backend_unload_disk(unsigned drive_index) { MSX_BACKEND_CALL_BOOL(media, unload_disk, drive_index); }
boolean msx_backend_unload_cassette(void) { MSX_BACKEND_CALL_BOOL(media, unload_cassette); }

void msx_backend_reset_game_master_session(void) { MSX_BACKEND_CALL_VOID(cheat, reset_game_master_session); }
boolean msx_backend_set_game_master_cheat_enabled(const TGameMasterPoke *pokes, unsigned poke_count, boolean enabled) { MSX_BACKEND_CALL_BOOL(cheat, set_game_master_cheat_enabled, pokes, poke_count, enabled); }
boolean msx_backend_set_game_master_cheat_value(const TGameMasterPoke *pokes, unsigned poke_count, uint16_t value) { MSX_BACKEND_CALL_BOOL(cheat, set_game_master_cheat_value, pokes, poke_count, value); }
boolean msx_backend_is_game_master_cheat_active(const TGameMasterPoke *pokes, unsigned poke_count) { MSX_BACKEND_CALL_BOOL(cheat, is_game_master_cheat_active, pokes, poke_count); }
boolean msx_backend_peek8(uint16_t address, uint8_t *value) { MSX_BACKEND_CALL_BOOL(cheat, peek8, address, value); }
boolean msx_backend_peek16(uint16_t address, uint16_t *value) { MSX_BACKEND_CALL_BOOL(cheat, peek16, address, value); }

void msx_backend_set_load_diag(unsigned stage) { MSX_BACKEND_CALL_VOID(debug, set_load_diag, stage); }
unsigned msx_backend_get_load_diag(void) { MSX_BACKEND_CALL_UNSIGNED(debug, get_load_diag, 0u); }
void msx_backend_set_v9990_debug_live_view(MsxBackendV9990DebugLiveView view) { MSX_BACKEND_CALL_VOID(debug, set_v9990_debug_live_view, view); }
MsxBackendV9990DebugLiveView msx_backend_get_v9990_debug_live_view(void) { MSX_BACKEND_CALL_UNSIGNED(debug, get_v9990_debug_live_view, FMSX_V9990_DEBUG_LIVE_VIEW_OFF); }
void msx_backend_set_v9990_debug_reference_view(MsxBackendV9990DebugReferenceView view) { MSX_BACKEND_CALL_VOID(debug, set_v9990_debug_reference_view, view); }
MsxBackendV9990DebugReferenceView msx_backend_get_v9990_debug_reference_view(void) { MSX_BACKEND_CALL_UNSIGNED(debug, get_v9990_debug_reference_view, FMSX_V9990_DEBUG_REF_VIEW_OFF); }
void msx_backend_get_video_host_debug(MsxBackendVideoHostDebug *debug) { MSX_BACKEND_CALL_VOID(debug, get_video_host_debug, debug); }
void msx_backend_get_audio_stats(MsxBackendAudioStats *stats) { MSX_BACKEND_CALL_VOID(debug, get_audio_stats, stats); }
void msx_backend_get_audio_mix_debug(MsxBackendAudioMixDebug *stats) { MSX_BACKEND_CALL_VOID(debug, get_audio_mix_debug, stats); }
void msx_backend_get_audio_channel_debug(MsxBackendAudioChannelDebug *stats) { MSX_BACKEND_CALL_VOID(debug, get_audio_channel_debug, stats); }
void msx_backend_get_keyboard_debug(MsxBackendKeyboardDebug *stats) { MSX_BACKEND_CALL_VOID(debug, get_keyboard_debug, stats); }
void msx_backend_get_timing_debug(MsxBackendTimingDebug *stats) { MSX_BACKEND_CALL_VOID(debug, get_timing_debug, stats); }
void msx_backend_get_vdp_trace_view(MsxBackendVdpTraceView *view) { MSX_BACKEND_CALL_VOID(debug, get_vdp_trace_view, view); }
void msx_backend_get_scc_trace_view(MsxBackendSccTraceView *view) { MSX_BACKEND_CALL_VOID(debug, get_scc_trace_view, view); }
void msx_backend_get_audio_port_trace_view(MsxBackendAudioPortTraceView *view) { MSX_BACKEND_CALL_VOID(debug, get_audio_port_trace_view, view); }
void msx_backend_get_kmg_trace_view(MsxBackendKmgTraceView *view) { MSX_BACKEND_CALL_VOID(debug, get_kmg_trace_view, view); }

#undef MSX_BACKEND_CALL_BOOL
#undef MSX_BACKEND_CALL_VOID
#undef MSX_BACKEND_CALL_UNSIGNED
#undef MSX_BACKEND_CALL_U64
#undef MSX_BACKEND_CALL_CSTR
