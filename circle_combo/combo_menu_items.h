#ifndef MSXBARE_CIRCLE_COMBO_MENU_ITEMS_H
#define MSXBARE_CIRCLE_COMBO_MENU_ITEMS_H

#include <circle/types.h>

enum TComboMenuAction {
    ComboMenuActionNone = 0,
    ComboMenuActionCartridgeA,
    ComboMenuActionCartridgeB,
    ComboMenuActionDiskDriveA,
    ComboMenuActionDiskDriveB,
    ComboMenuActionSettings,
    ComboMenuActionOverscanChanged,
    ComboMenuActionToggleWidescreen,
    ComboMenuActionCycleScanlines,
    ComboMenuActionCycleScanlinesPrev,
    ComboMenuActionToggleOverlay,
    ComboMenuActionToggleAudioMute,
    ComboMenuActionMsxBasic,
    ComboMenuActionReset
};

typedef struct {
    const char *label;
    TComboMenuAction action;
    boolean selectable;
} TComboMenuItem;

const TComboMenuItem *combo_menu_root_items_get(unsigned *count);
const TComboMenuItem *combo_menu_settings_items_get(unsigned overscan_percent,
                                                     boolean widescreen_enabled,
                                                     unsigned scanline_mode,
                                                     boolean overlay_enabled,
                                                     boolean overlay_available,
                                                     boolean audio_muted,
                                                     unsigned *count);

#endif
