#include "emulator_backend.h"

#include "fmsx_backend_shim.h"
#include "bluemsx_backend.h"

#ifndef MSXBARE_EMULATOR_BACKEND_BLUEMSX
#define MSXBARE_EMULATOR_BACKEND_BLUEMSX 0
#endif

#if MSXBARE_EMULATOR_BACKEND_BLUEMSX
static const EmulatorBackendKind kSelectedBackend = EMULATOR_BACKEND_KIND_BLUEMSX;
#else
static const EmulatorBackendKind kSelectedBackend = EMULATOR_BACKEND_KIND_FMSX;
#endif

static EmulatorBackendInfo g_backend_info = {
    EMULATOR_BACKEND_KIND_FMSX,
    "fmsx",
    FALSE,
    FALSE,
    EMULATOR_BACKEND_INIT_OK
};

const char *emulator_backend_name(EmulatorBackendKind kind)
{
    switch (kind)
    {
    case EMULATOR_BACKEND_KIND_BLUEMSX:
        return "bluemsx";
    case EMULATOR_BACKEND_KIND_FMSX:
    default:
        return "fmsx";
    }
}

EmulatorBackendKind emulator_backend_selected_kind(void)
{
    return kSelectedBackend;
}

boolean emulator_backend_init(void)
{
    int init_error = EMULATOR_BACKEND_INIT_OK;
    boolean ok = FALSE;

    g_backend_info.active_backend = kSelectedBackend;
    g_backend_info.active_backend_name = emulator_backend_name(kSelectedBackend);
    g_backend_info.init_attempted = TRUE;

    switch (kSelectedBackend)
    {
    case EMULATOR_BACKEND_KIND_BLUEMSX:
        ok = bluemsx_backend_init(&init_error);
        break;
    case EMULATOR_BACKEND_KIND_FMSX:
    default:
        ok = fmsx_backend_shim_init(&init_error);
        break;
    }

    g_backend_info.available = ok;
    g_backend_info.init_error_code = init_error;
    return ok;
}

boolean emulator_backend_reset(void)
{
    switch (kSelectedBackend)
    {
    case EMULATOR_BACKEND_KIND_BLUEMSX:
        return bluemsx_backend_reset();
    case EMULATOR_BACKEND_KIND_FMSX:
    default:
        return fmsx_backend_shim_reset();
    }
}

boolean emulator_backend_step_frame(void)
{
    switch (kSelectedBackend)
    {
    case EMULATOR_BACKEND_KIND_BLUEMSX:
        return bluemsx_backend_step_frame();
    case EMULATOR_BACKEND_KIND_FMSX:
    default:
        return fmsx_backend_shim_step_frame();
    }
}

void emulator_backend_shutdown(void)
{
    switch (kSelectedBackend)
    {
    case EMULATOR_BACKEND_KIND_BLUEMSX:
        bluemsx_backend_shutdown();
        break;
    case EMULATOR_BACKEND_KIND_FMSX:
    default:
        fmsx_backend_shim_shutdown();
        break;
    }
}

unsigned emulator_backend_video_frame(const u16 **pixels, unsigned *width, unsigned *height)
{
    switch (kSelectedBackend)
    {
    case EMULATOR_BACKEND_KIND_BLUEMSX:
        return bluemsx_backend_video_frame(pixels, width, height);
    case EMULATOR_BACKEND_KIND_FMSX:
    default:
        return fmsx_backend_shim_video_frame(pixels, width, height);
    }
}

unsigned emulator_backend_audio_pull(int16_t *dst, unsigned max_samples)
{
    switch (kSelectedBackend)
    {
    case EMULATOR_BACKEND_KIND_BLUEMSX:
        return bluemsx_backend_audio_pull(dst, max_samples);
    case EMULATOR_BACKEND_KIND_FMSX:
    default:
        return fmsx_backend_shim_audio_pull(dst, max_samples);
    }
}

void emulator_backend_input_push_joystick(u8 bridge_bits)
{
    switch (kSelectedBackend)
    {
    case EMULATOR_BACKEND_KIND_BLUEMSX:
        bluemsx_backend_input_push_joystick(bridge_bits);
        break;
    case EMULATOR_BACKEND_KIND_FMSX:
    default:
        fmsx_backend_shim_input_push_joystick(bridge_bits);
        break;
    }
}

void emulator_backend_input_push_keyboard(u8 modifiers, const unsigned char raw_keys[6])
{
    switch (kSelectedBackend)
    {
    case EMULATOR_BACKEND_KIND_BLUEMSX:
        bluemsx_backend_input_push_keyboard(modifiers, raw_keys);
        break;
    case EMULATOR_BACKEND_KIND_FMSX:
    default:
        fmsx_backend_shim_input_push_keyboard(modifiers, raw_keys);
        break;
    }
}

boolean emulator_backend_media_load_cartridge(unsigned slot_index, const char *path)
{
    switch (kSelectedBackend)
    {
    case EMULATOR_BACKEND_KIND_BLUEMSX:
        return bluemsx_backend_media_load_cartridge(slot_index, path);
    case EMULATOR_BACKEND_KIND_FMSX:
    default:
        return fmsx_backend_shim_media_load_cartridge(slot_index, path);
    }
}

boolean emulator_backend_media_load_disk(unsigned drive_index, const char *path)
{
    switch (kSelectedBackend)
    {
    case EMULATOR_BACKEND_KIND_BLUEMSX:
        return bluemsx_backend_media_load_disk(drive_index, path);
    case EMULATOR_BACKEND_KIND_FMSX:
    default:
        return fmsx_backend_shim_media_load_disk(drive_index, path);
    }
}

EmulatorBackendRuntimeStatus emulator_backend_get_status(void)
{
    switch (kSelectedBackend)
    {
    case EMULATOR_BACKEND_KIND_BLUEMSX:
        return bluemsx_backend_get_status();
    case EMULATOR_BACKEND_KIND_FMSX:
    default:
        return fmsx_backend_shim_get_status();
    }
}

EmulatorBackendInfo emulator_backend_get_info(void)
{
    g_backend_info.active_backend = kSelectedBackend;
    g_backend_info.active_backend_name = emulator_backend_name(kSelectedBackend);
    return g_backend_info;
}
