#include "bluemsx_backend.h"

static EmulatorBackendRuntimeStatus g_bluemsx_stub_status = {
    FALSE, FALSE, 0u, 0, EMULATOR_BACKEND_INIT_ERR_BLUEMSX_STUB
};

boolean bluemsx_backend_init(int *out_error_code)
{
    if (out_error_code != 0)
    {
        *out_error_code = EMULATOR_BACKEND_INIT_ERR_BLUEMSX_STUB;
    }
    g_bluemsx_stub_status.initialized = FALSE;
    g_bluemsx_stub_status.running = FALSE;
    g_bluemsx_stub_status.last_error = EMULATOR_BACKEND_INIT_ERR_BLUEMSX_STUB;
    return FALSE;
}

boolean bluemsx_backend_reset(void)
{
    g_bluemsx_stub_status.last_error = EMULATOR_BACKEND_INIT_ERR_BLUEMSX_STUB;
    return FALSE;
}

boolean bluemsx_backend_step_frame(void)
{
    g_bluemsx_stub_status.last_error = EMULATOR_BACKEND_INIT_ERR_BLUEMSX_STUB;
    return FALSE;
}

void bluemsx_backend_shutdown(void)
{
}

unsigned bluemsx_backend_video_frame(const u16 **pixels, unsigned *width, unsigned *height)
{
    if (pixels != 0) *pixels = 0;
    if (width != 0) *width = 0u;
    if (height != 0) *height = 0u;
    return 0u;
}

unsigned bluemsx_backend_audio_pull(int16_t *dst, unsigned max_samples)
{
    (void) dst;
    (void) max_samples;
    return 0u;
}

void bluemsx_backend_input_push_joystick(u8 bridge_bits)
{
    (void) bridge_bits;
}

void bluemsx_backend_input_push_keyboard(u8 modifiers, const unsigned char raw_keys[6])
{
    (void) modifiers;
    (void) raw_keys;
}

boolean bluemsx_backend_media_load_cartridge(unsigned slot_index, const char *path)
{
    (void) slot_index;
    (void) path;
    return FALSE;
}

boolean bluemsx_backend_media_load_disk(unsigned drive_index, const char *path)
{
    (void) drive_index;
    (void) path;
    return FALSE;
}

EmulatorBackendRuntimeStatus bluemsx_backend_get_status(void)
{
    return g_bluemsx_stub_status;
}
