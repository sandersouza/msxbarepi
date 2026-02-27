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
    ComboMenuActionToggleOverscan,
    ComboMenuActionToggleScanlines,
    ComboMenuActionSettingsOption3,
    ComboMenuActionSettingsOption4,
    ComboMenuActionMsxBasic,
    ComboMenuActionReset
};

typedef struct {
    const char *label;
    TComboMenuAction action;
    boolean selectable;
} TComboMenuItem;

const TComboMenuItem *combo_menu_root_items_get(unsigned *count);
const TComboMenuItem *combo_menu_settings_items_get(boolean overscan_enabled, boolean scanlines_enabled, unsigned *count);

#endif
