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
                                                     unsigned boot_mode,
                                                     unsigned z80_turbo_mode,
                                                     unsigned rensha_mode,
                                                     boolean scc_cart_enabled,
                                                     boolean overlay_enabled,
                                                     boolean overlay_available,
                                                     boolean audio_muted,
                                                     unsigned *count)
{
    static TComboMenuItem settings_items[14];
    static char overscan_label[] = "Overscan [000]";
    static const char *kWidescreenOff = "Widescreen [DES]";
    static const char *kWidescreenOn = "Widescreen [LIG]";
    static const char *kScanlineDes = "Scanlines [DES]";
    static const char *kScanlineLcd = "Scanlines [LCD]";
    static const char *kScanlineCrt = "Scanlines [CRT]";
    static const char *kRefresh50 = "Padrao [PAL]";
    static const char *kRefresh60 = "Padrao [NTSC]";
    static const char *kBootNorm = "Boot Mode [NORM]";
    static const char *kBootFast = "Boot Mode [FAST]";
    static const char *kBootGame = "Boot Mode [GAME]";
    static const char *kTurboDes = "Z80 Turbo [DES]";
    static const char *kTurboPan = "Z80 Turbo [PAN]";
    static const char *kTurboMax = "Z80 Turbo [MAX]";
    static const char *kRensha0 = "Rensha [0]";
    static const char *kRensha1 = "Rensha [1]";
    static const char *kRensha2 = "Rensha [2]";
    static const char *kRensha3 = "Rensha [3]";
    static const char *kSccOff = "SCC Cart [DES]";
    static const char *kSccOn = "SCC Cart [LIG]";
    static const char *kOverlayOff = "Debugger [DES]";
    static const char *kOverlayOn = "Debugger [LIG]";
    static const char *kOverlayNA = "Debugger [N/A]";
    static const char *kAudioMuteOff = "Audio Mute [DES]";
    static const char *kAudioMuteOn = "Audio Mute [LIG]";
    static const char *kSeparator = "";
    static const char *kBlankLine = "";
    static const char *kSave = "Gravar";

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
    if (boot_mode > 2u)
    {
        boot_mode = 0u;
    }
    if (rensha_mode > 3u)
    {
        rensha_mode = 0u;
    }

    overscan_label[10] = (char) ('0' + ((overscan_percent / 100u) % 10u));
    overscan_label[11] = (char) ('0' + ((overscan_percent / 10u) % 10u));
    overscan_label[12] = (char) ('0' + (overscan_percent % 10u));

    settings_items[0].label = overscan_label;
    settings_items[0].action = ComboMenuActionOverscanChanged;
    settings_items[0].selectable = TRUE;

    const char *scanline_label = kScanlineDes;
    if (scanline_mode == 1u)
    {
        scanline_label = kScanlineLcd;
    }
    else if (scanline_mode == 2u)
    {
        scanline_label = kScanlineCrt;
    }

    settings_items[1].label = widescreen_enabled ? kWidescreenOn : kWidescreenOff;
    settings_items[1].action = ComboMenuActionToggleWidescreen;
    settings_items[1].selectable = TRUE;

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
    settings_items[4].label = kSeparator;
    settings_items[4].action = ComboMenuActionSeparator;
    settings_items[4].selectable = FALSE;

    settings_items[5].label = scc_cart_enabled ? kSccOn : kSccOff;
    settings_items[5].action = ComboMenuActionToggleSccCart;
    settings_items[5].selectable = TRUE;

    settings_items[6].label = audio_muted ? kAudioMuteOn : kAudioMuteOff;
    settings_items[6].action = ComboMenuActionToggleAudioMute;
    settings_items[6].selectable = TRUE;

    settings_items[7].label = kSeparator;
    settings_items[7].action = ComboMenuActionSeparator;
    settings_items[7].selectable = FALSE;

    const char *boot_label = kBootNorm;
    if (boot_mode == 1u)
    {
        boot_label = kBootFast;
    }
    else if (boot_mode == 2u)
    {
        boot_label = kBootGame;
    }
    settings_items[8].label = boot_label;
    settings_items[8].action = ComboMenuActionCycleBootMode;
    settings_items[8].selectable = TRUE;

    settings_items[9].label = turbo_label;
    settings_items[9].action = ComboMenuActionCycleZ80Turbo;
    settings_items[9].selectable = TRUE;

    const char *rensha_label = kRensha0;
    if (rensha_mode == 1u)
    {
        rensha_label = kRensha1;
    }
    else if (rensha_mode == 2u)
    {
        rensha_label = kRensha2;
    }
    else if (rensha_mode == 3u)
    {
        rensha_label = kRensha3;
    }
    settings_items[10].label = rensha_label;
    settings_items[10].action = ComboMenuActionCycleRensha;
    settings_items[10].selectable = TRUE;

    settings_items[11].label = overlay_available
        ? (overlay_enabled ? kOverlayOn : kOverlayOff)
        : kOverlayNA;
    settings_items[11].action = ComboMenuActionToggleOverlay;
    settings_items[11].selectable = TRUE;

    settings_items[12].label = kBlankLine;
    settings_items[12].action = ComboMenuActionNone;
    settings_items[12].selectable = FALSE;

    settings_items[13].label = kSave;
    settings_items[13].action = ComboMenuActionSaveSettings;
    settings_items[13].selectable = TRUE;

    if (count != 0)
    {
        *count = (unsigned) (sizeof(settings_items) / sizeof(settings_items[0]));
    }

    return settings_items;
}
