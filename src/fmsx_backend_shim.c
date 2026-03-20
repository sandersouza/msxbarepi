#include "fmsx_backend_shim.h"

#include "fmsx_runtime.h"

boolean fmsx_backend_shim_init(int *out_error_code)
{
    const boolean ok = fmsx_runtime_init();
    if (out_error_code != 0)
    {
        *out_error_code = ok ? EMULATOR_BACKEND_INIT_OK : EMULATOR_BACKEND_INIT_ERR_FMSX;
    }
    return ok;
}

boolean fmsx_backend_shim_reset(void)
{
    return fmsx_runtime_hard_reset();
}

boolean fmsx_backend_shim_step_frame(void)
{
    return fmsx_runtime_step_frame();
}

void fmsx_backend_shim_shutdown(void)
{
    fmsx_runtime_shutdown();
}

unsigned fmsx_backend_shim_video_frame(const u16 **pixels, unsigned *width, unsigned *height)
{
    return fmsx_runtime_get_video_frame(pixels, width, height);
}

unsigned fmsx_backend_shim_audio_pull(int16_t *dst, unsigned max_samples)
{
    return fmsx_audio_pull_samples(dst, max_samples);
}

void fmsx_backend_shim_input_push_joystick(u8 bridge_bits)
{
    fmsx_runtime_set_joystick_bits(bridge_bits);
}

void fmsx_backend_shim_input_push_keyboard(u8 modifiers, const unsigned char raw_keys[6])
{
    fmsx_runtime_set_keyboard_raw(modifiers, raw_keys);
}

boolean fmsx_backend_shim_media_load_cartridge(unsigned slot_index, const char *path)
{
    return fmsx_runtime_load_cartridge(slot_index, path);
}

boolean fmsx_backend_shim_media_load_disk(unsigned drive_index, const char *path)
{
    return fmsx_runtime_load_disk(drive_index, path);
}

EmulatorBackendRuntimeStatus fmsx_backend_shim_get_status(void)
{
    const TFmsxRuntimeStatus status = fmsx_runtime_get_status();
    EmulatorBackendRuntimeStatus out = {
        status.initialized,
        status.running,
        status.frames,
        status.last_pc,
        status.last_error
    };
    return out;
}
