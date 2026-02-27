#include "combo_menu_items.h"

static const TComboMenuItem kRootItems[] =
{
    { "Cartridge A", ComboMenuActionCartridgeA, TRUE },
    { "Cartridge B", ComboMenuActionCartridgeB, TRUE },
    { "Disk Drive A", ComboMenuActionDiskDriveA, TRUE },
    { "Disk Drive B", ComboMenuActionDiskDriveB, TRUE },
    { "Settings", ComboMenuActionSettings, TRUE },
    { "MSX BASIC", ComboMenuActionMsxBasic, TRUE },
    { "Reset", ComboMenuActionReset, TRUE }
};

static const TComboMenuItem kSettingsItemsOverscanOff[] =
{
    { "Overscan [DES]", ComboMenuActionToggleOverscan, TRUE },
    { "Scanlines [DES]", ComboMenuActionToggleScanlines, TRUE },
    { "Overlay DBG [DES]", ComboMenuActionToggleOverlay, TRUE },
    { "Audio Mute [DES]", ComboMenuActionToggleAudioMute, TRUE }
};

static const TComboMenuItem kSettingsItemsOverscanOn[] =
{
    { "Overscan [LIG]", ComboMenuActionToggleOverscan, TRUE },
    { "Scanlines [DES]", ComboMenuActionToggleScanlines, TRUE },
    { "Overlay DBG [DES]", ComboMenuActionToggleOverlay, TRUE },
    { "Audio Mute [DES]", ComboMenuActionToggleAudioMute, TRUE }
};

static const TComboMenuItem kSettingsItemsOverscanOffScanlinesOn[] =
{
    { "Overscan [DES]", ComboMenuActionToggleOverscan, TRUE },
    { "Scanlines [LIG]", ComboMenuActionToggleScanlines, TRUE },
    { "Overlay DBG [DES]", ComboMenuActionToggleOverlay, TRUE },
    { "Audio Mute [DES]", ComboMenuActionToggleAudioMute, TRUE }
};

static const TComboMenuItem kSettingsItemsOverscanOnScanlinesOn[] =
{
    { "Overscan [LIG]", ComboMenuActionToggleOverscan, TRUE },
    { "Scanlines [LIG]", ComboMenuActionToggleScanlines, TRUE },
    { "Overlay DBG [DES]", ComboMenuActionToggleOverlay, TRUE },
    { "Audio Mute [DES]", ComboMenuActionToggleAudioMute, TRUE }
};

const TComboMenuItem *combo_menu_root_items_get(unsigned *count)
{
    if (count != 0)
    {
        *count = (unsigned) (sizeof(kRootItems) / sizeof(kRootItems[0]));
    }

    return kRootItems;
}

const TComboMenuItem *combo_menu_settings_items_get(boolean overscan_enabled,
                                                     boolean scanlines_enabled,
                                                     boolean overlay_enabled,
                                                     boolean overlay_available,
                                                     boolean audio_muted,
                                                     unsigned *count)
{
    static TComboMenuItem settings_items[4];
    static const char *kOverlayOff = "Overlay DBG [DES]";
    static const char *kOverlayOn = "Overlay DBG [LIG]";
    static const char *kOverlayNA = "Overlay DBG [N/A]";
    static const char *kAudioMuteOff = "Audio Mute [DES]";
    static const char *kAudioMuteOn = "Audio Mute [LIG]";

    if (count != 0)
    {
        *count = (unsigned) (sizeof(kSettingsItemsOverscanOff) / sizeof(kSettingsItemsOverscanOff[0]));
    }

    const TComboMenuItem *base_items = 0;
    if (overscan_enabled)
    {
        base_items = scanlines_enabled ? kSettingsItemsOverscanOnScanlinesOn : kSettingsItemsOverscanOn;
    }
    else
    {
        base_items = scanlines_enabled ? kSettingsItemsOverscanOffScanlinesOn : kSettingsItemsOverscanOff;
    }

    for (unsigned i = 0; i < 4u; ++i)
    {
        settings_items[i] = base_items[i];
    }

    settings_items[2].label = overlay_available
        ? (overlay_enabled ? kOverlayOn : kOverlayOff)
        : kOverlayNA;
    settings_items[3].label = audio_muted ? kAudioMuteOn : kAudioMuteOff;
    return settings_items;
}
