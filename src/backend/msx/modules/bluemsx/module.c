#include "../../backend.h"
#include "../../backend_internal.h"

static BackendRuntimeStatus g_msx_bluemsx_status = {
    FALSE, FALSE, 0u, 0, MSX_BACKEND_INIT_ERR_BLUEMSX_STUB
};

static boolean msx_bluemsx_init(const BackendHostExportsV1 *host, int *out_error_code)
{
    (void) host;
    if (out_error_code != 0)
    {
        *out_error_code = MSX_BACKEND_INIT_ERR_BLUEMSX_STUB;
    }
    g_msx_bluemsx_status.initialized = FALSE;
    g_msx_bluemsx_status.running = FALSE;
    g_msx_bluemsx_status.last_error = MSX_BACKEND_INIT_ERR_BLUEMSX_STUB;
    return FALSE;
}

static boolean msx_bluemsx_reset(void)
{
    g_msx_bluemsx_status.last_error = MSX_BACKEND_INIT_ERR_BLUEMSX_STUB;
    return FALSE;
}

static boolean msx_bluemsx_step_frame(void)
{
    g_msx_bluemsx_status.last_error = MSX_BACKEND_INIT_ERR_BLUEMSX_STUB;
    return FALSE;
}

static void msx_bluemsx_shutdown(void)
{
}

static unsigned msx_bluemsx_video_frame(const u16 **pixels, unsigned *width, unsigned *height)
{
    if (pixels != 0) *pixels = 0;
    if (width != 0) *width = 0u;
    if (height != 0) *height = 0u;
    return 0u;
}

static void msx_bluemsx_get_video_presentation(BackendVideoPresentation *presentation)
{
    if (presentation != 0)
    {
        presentation->logical_width = 0u;
        presentation->logical_height = 0u;
        presentation->hires_mode = FALSE;
        presentation->interlaced_mode = FALSE;
        presentation->woven_hires = FALSE;
        presentation->field_parity_odd = FALSE;
    }
}

static unsigned msx_bluemsx_audio_pull(int16_t *dst, unsigned max_samples)
{
    (void) dst;
    (void) max_samples;
    return 0u;
}

static void msx_bluemsx_input_push_joystick(u8 bridge_bits)
{
    (void) bridge_bits;
}

static void msx_bluemsx_input_push_keyboard(u8 modifiers, const unsigned char raw_keys[6])
{
    (void) modifiers;
    (void) raw_keys;
}

static boolean msx_bluemsx_media_load_cartridge(unsigned slot_index, const char *path)
{
    (void) slot_index;
    (void) path;
    return FALSE;
}

static boolean msx_bluemsx_media_load_disk(unsigned drive_index, const char *path)
{
    (void) drive_index;
    (void) path;
    return FALSE;
}

static BackendRuntimeStatus msx_bluemsx_get_status(void)
{
    return g_msx_bluemsx_status;
}

static const BackendOps k_msx_bluemsx_ops = {
    msx_bluemsx_init,
    msx_bluemsx_reset,
    msx_bluemsx_step_frame,
    msx_bluemsx_shutdown,
    msx_bluemsx_video_frame,
    msx_bluemsx_get_video_presentation,
    msx_bluemsx_audio_pull,
    msx_bluemsx_input_push_joystick,
    msx_bluemsx_input_push_keyboard,
    msx_bluemsx_media_load_cartridge,
    msx_bluemsx_media_load_disk,
    msx_bluemsx_get_status
};

const BackendModuleV1 g_msx_backend_module_bluemsx = {
    BACKEND_MODULE_ABI_V1,
    "msx",
    "msx.bluemsx",
    "bluemsx",
    0u,
    &k_msx_bluemsx_ops,
    0
};
