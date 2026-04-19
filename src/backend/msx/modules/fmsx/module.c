#include "../../backend.h"
#include "../../backend_internal.h"

#include "fmsx_runtime.h"

static boolean msx_fmsx_init(const BackendHostExportsV1 *host, int *out_error_code)
{
    const boolean ok = fmsx_runtime_init();
    (void) host;
    if (out_error_code != 0)
    {
        *out_error_code = ok ? MSX_BACKEND_INIT_OK : MSX_BACKEND_INIT_ERR_FMSX;
    }
    return ok;
}

static boolean msx_fmsx_reset(void)
{
    return fmsx_runtime_hard_reset();
}

static boolean msx_fmsx_step_frame(void)
{
    return fmsx_runtime_step_frame();
}

static void msx_fmsx_shutdown(void)
{
    fmsx_runtime_shutdown();
}

static unsigned msx_fmsx_video_frame(const u16 **pixels, unsigned *width, unsigned *height)
{
    return fmsx_runtime_get_video_frame(pixels, width, height);
}

static void msx_fmsx_get_video_presentation(BackendVideoPresentation *presentation)
{
    TFmsxVideoPresentation source = { 0 };

    fmsx_runtime_get_video_presentation(&source);
    if (presentation != 0)
    {
        presentation->logical_width = source.logical_width;
        presentation->logical_height = source.logical_height;
        presentation->pitch_pixels = source.pitch_pixels;
        presentation->hires_mode = source.hires_mode ? TRUE : FALSE;
        presentation->interlaced_mode = source.interlaced_mode ? TRUE : FALSE;
        presentation->woven_hires = source.woven_hires ? TRUE : FALSE;
        presentation->field_parity_odd = source.field_parity_odd ? TRUE : FALSE;
        presentation->disable_scanline_postfx = source.disable_scanline_postfx ? TRUE : FALSE;
    }
}

static unsigned msx_fmsx_audio_pull(int16_t *dst, unsigned max_samples)
{
    return fmsx_audio_pull_samples(dst, max_samples);
}

static void msx_fmsx_input_push_joystick(u8 bridge_bits)
{
    fmsx_runtime_set_joystick_bits(bridge_bits);
}

static void msx_fmsx_input_push_keyboard(u8 modifiers, const unsigned char raw_keys[6])
{
    fmsx_runtime_set_keyboard_raw(modifiers, raw_keys);
}

static boolean msx_fmsx_media_load_cartridge(unsigned slot_index, const char *path)
{
    return fmsx_runtime_load_cartridge(slot_index, path);
}

static boolean msx_fmsx_media_load_disk(unsigned drive_index, const char *path)
{
    return fmsx_runtime_load_disk(drive_index, path);
}

static BackendRuntimeStatus msx_fmsx_get_status(void)
{
    const TFmsxRuntimeStatus status = fmsx_runtime_get_status();
    BackendRuntimeStatus out = {
        status.initialized,
        status.running,
        status.frames,
        status.last_pc,
        status.last_error
    };
    return out;
}

static const BackendOps k_msx_fmsx_ops = {
    msx_fmsx_init,
    msx_fmsx_reset,
    msx_fmsx_step_frame,
    msx_fmsx_shutdown,
    msx_fmsx_video_frame,
    msx_fmsx_get_video_presentation,
    msx_fmsx_audio_pull,
    msx_fmsx_input_push_joystick,
    msx_fmsx_input_push_keyboard,
    msx_fmsx_media_load_cartridge,
    msx_fmsx_media_load_disk,
    msx_fmsx_get_status
};

static const MsxBackendStateOps k_msx_fmsx_state_ops = {
    fmsx_runtime_reboot_basic,
    fmsx_runtime_menu_reset,
    fmsx_runtime_save_state,
    fmsx_runtime_load_state
};

static const MsxBackendMachineOps k_msx_fmsx_machine_ops = {
    fmsx_runtime_set_overscan,
    fmsx_runtime_set_refresh_hz,
    fmsx_runtime_debug_force_refresh_hz,
    fmsx_runtime_get_refresh_hz,
    fmsx_runtime_get_frame_interval_us_exact,
    fmsx_runtime_set_disk_rom_enabled,
    fmsx_runtime_get_disk_rom_enabled,
    fmsx_runtime_set_kanji_rom_enabled,
    fmsx_runtime_get_kanji_rom_enabled,
    fmsx_runtime_get_kanji_rom_available,
    fmsx_runtime_set_gfx9000_enabled,
    fmsx_runtime_get_gfx9000_enabled,
    fmsx_runtime_set_boot_mode,
    fmsx_runtime_get_boot_mode,
    fmsx_runtime_get_active_boot_mode,
    fmsx_runtime_set_model_profile,
    fmsx_runtime_get_model_profile,
    fmsx_runtime_get_active_model_profile,
    fmsx_runtime_set_rammapper_kb,
    fmsx_runtime_get_rammapper_kb,
    fmsx_runtime_set_megaram_kb,
    fmsx_runtime_get_megaram_kb,
    fmsx_runtime_set_z80_turbo_mode,
    fmsx_runtime_get_z80_turbo_mode,
    fmsx_runtime_set_fm_music_enabled,
    fmsx_runtime_get_fm_music_enabled,
    fmsx_runtime_set_scc_plus_enabled,
    fmsx_runtime_get_scc_plus_enabled,
    fmsx_runtime_set_scc_dual_cart_enabled,
    fmsx_runtime_get_scc_dual_cart_enabled,
    fmsx_runtime_get_scc_dual_cart_available,
    fmsx_runtime_set_fm_layer_gain_pct,
    fmsx_runtime_get_fm_layer_gain_pct,
    fmsx_runtime_set_audio_layer_muted,
    fmsx_runtime_get_audio_layer_muted,
    fmsx_runtime_get_psg_mixer_reg7,
    fmsx_runtime_get_master_switch,
    fmsx_runtime_set_frame_perf_telemetry_enabled,
    fmsx_runtime_reset_audio_mix_debug_window
};

static const MsxBackendMediaOps k_msx_fmsx_media_ops = {
    fmsx_runtime_get_cartridge_name,
    fmsx_runtime_get_disk_name,
    fmsx_runtime_get_cartridge_path,
    fmsx_runtime_get_disk_path,
    fmsx_runtime_set_cartridge_path,
    fmsx_runtime_set_disk_path,
    fmsx_runtime_unload_cartridge,
    fmsx_runtime_unload_disk
};

static const MsxBackendCheatOps k_msx_fmsx_cheat_ops = {
    fmsx_runtime_reset_game_master_session,
    fmsx_runtime_set_game_master_cheat_enabled,
    fmsx_runtime_set_game_master_cheat_value,
    fmsx_runtime_is_game_master_cheat_active,
    fmsx_runtime_peek8,
    fmsx_runtime_peek16
};

static const MsxBackendDebugOps k_msx_fmsx_debug_ops = {
    fmsx_runtime_set_load_diag,
    fmsx_runtime_get_load_diag,
    fmsx_runtime_set_v9990_debug_live_view,
    fmsx_runtime_get_v9990_debug_live_view,
    fmsx_runtime_set_v9990_debug_reference_view,
    fmsx_runtime_get_v9990_debug_reference_view,
    fmsx_runtime_get_video_host_debug,
    fmsx_audio_get_stats,
    fmsx_runtime_get_audio_mix_debug,
    fmsx_runtime_get_audio_channel_debug,
    fmsx_keyboard_get_debug,
    fmsx_runtime_get_timing_debug,
    fmsx_runtime_get_vdp_trace_view,
    fmsx_runtime_get_scc_trace_view,
    fmsx_runtime_get_audio_port_trace_view,
    fmsx_runtime_get_kmg_trace_view
};

static const MsxBackendFamilyOps k_msx_fmsx_family_ops = {
    &k_msx_fmsx_state_ops,
    &k_msx_fmsx_machine_ops,
    &k_msx_fmsx_media_ops,
    &k_msx_fmsx_cheat_ops,
    &k_msx_fmsx_debug_ops
};

const BackendModuleV1 g_msx_backend_module_fmsx = {
    BACKEND_MODULE_ABI_V1,
    "msx",
    "msx.fmsx",
    "fmsx",
    MSX_BACKEND_CAP_STATE | MSX_BACKEND_CAP_MACHINE | MSX_BACKEND_CAP_MEDIA | MSX_BACKEND_CAP_CHEAT | MSX_BACKEND_CAP_DEBUG,
    &k_msx_fmsx_ops,
    &k_msx_fmsx_family_ops
};
