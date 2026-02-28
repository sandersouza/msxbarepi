#include "combo_menu_items.h"

static const TComboMenuItem kRootItems[] =
{
    { "Cartridge", ComboMenuActionCartridgeA, TRUE },
    { "Disk Drive", ComboMenuActionDiskDriveA, TRUE },
    { "Settings", ComboMenuActionSettings, TRUE },
    { "MSX Basic", ComboMenuActionMsxBasic, TRUE },
    { "Reset", ComboMenuActionReset, TRUE }
};

const TComboMenuItem *combo_menu_root_items_get(unsigned *count)
{
    if (count != 0)
    {
        *count = (unsigned) (sizeof(kRootItems) / sizeof(kRootItems[0]));
    }

    return kRootItems;
}

const TComboMenuItem *combo_menu_settings_items_get(unsigned overscan_percent,
                                                     boolean widescreen_enabled,
                                                     unsigned scanline_mode,
                                                     unsigned refresh_rate_hz,
                                                     unsigned z80_turbo_mode,
                                                     boolean overlay_enabled,
                                                     boolean overlay_available,
                                                     boolean audio_muted,
                                                     unsigned *count)
{
    static TComboMenuItem settings_items[7];
    static char overscan_label[] = "Overscan [000]";
    static const char *kWidescreenOff = "Widescreen [DES]";
    static const char *kWidescreenOn = "Widescreen [LIG]";
    static const char *kScanlineDes = "Scanlines [DES]";
    static const char *kScanlineLcd = "Scanlines [LCD]";
    static const char *kScanlineCrt = "Scanlines [CRT]";
    static const char *kRefresh50 = "Refresh [50Hz]";
    static const char *kRefresh60 = "Refresh [60Hz]";
    static const char *kTurboDes = "Z80 Turbo [DES]";
    static const char *kTurboPan = "Z80 Turbo [PAN]";
    static const char *kTurboMax = "Z80 Turbo [MAX]";
    static const char *kOverlayOff = "Debugger [DES]";
    static const char *kOverlayOn = "Debugger [LIG]";
    static const char *kOverlayNA = "Debugger [N/A]";
    static const char *kAudioMuteOff = "Audio Mute [DES]";
    static const char *kAudioMuteOn = "Audio Mute [LIG]";

    if (overscan_percent > 100u)
    {
        overscan_percent = 100u;
    }
    if (scanline_mode > 2u)
    {
        scanline_mode = 2u;
    }
    if (refresh_rate_hz != 50u)
    {
        refresh_rate_hz = 60u;
    }
    if (z80_turbo_mode > 2u)
    {
        z80_turbo_mode = 0u;
    }

    overscan_label[10] = (char) ('0' + ((overscan_percent / 100u) % 10u));
    overscan_label[11] = (char) ('0' + ((overscan_percent / 10u) % 10u));
    overscan_label[12] = (char) ('0' + (overscan_percent % 10u));

    settings_items[0].label = overscan_label;
    settings_items[0].action = ComboMenuActionOverscanChanged;
    settings_items[0].selectable = TRUE;

    settings_items[1].label = widescreen_enabled ? kWidescreenOn : kWidescreenOff;
    settings_items[1].action = ComboMenuActionToggleWidescreen;
    settings_items[1].selectable = TRUE;

    const char *scanline_label = kScanlineDes;
    if (scanline_mode == 1u)
    {
        scanline_label = kScanlineLcd;
    }
    else if (scanline_mode == 2u)
    {
        scanline_label = kScanlineCrt;
    }

    settings_items[2].label = scanline_label;
    settings_items[2].action = ComboMenuActionCycleScanlines;
    settings_items[2].selectable = TRUE;

    settings_items[3].label = (refresh_rate_hz == 50u) ? kRefresh50 : kRefresh60;
    settings_items[3].action = ComboMenuActionCycleRefreshRate;
    settings_items[3].selectable = TRUE;

    const char *turbo_label = kTurboDes;
    if (z80_turbo_mode == 1u)
    {
        turbo_label = kTurboPan;
    }
    else if (z80_turbo_mode == 2u)
    {
        turbo_label = kTurboMax;
    }
    settings_items[4].label = turbo_label;
    settings_items[4].action = ComboMenuActionCycleZ80Turbo;
    settings_items[4].selectable = TRUE;

    settings_items[5].label = overlay_available
        ? (overlay_enabled ? kOverlayOn : kOverlayOff)
        : kOverlayNA;
    settings_items[5].action = ComboMenuActionToggleOverlay;
    settings_items[5].selectable = TRUE;

    settings_items[6].label = audio_muted ? kAudioMuteOn : kAudioMuteOff;
    settings_items[6].action = ComboMenuActionToggleAudioMute;
    settings_items[6].selectable = TRUE;

    if (count != 0)
    {
        *count = (unsigned) (sizeof(settings_items) / sizeof(settings_items[0]));
    }

    return settings_items;
}
