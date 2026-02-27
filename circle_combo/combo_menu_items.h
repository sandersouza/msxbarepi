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
    ComboMenuActionMsxBasic,
    ComboMenuActionReset
};

typedef struct {
    const char *label;
    TComboMenuAction action;
    boolean selectable;
} TComboMenuItem;

const TComboMenuItem *combo_menu_items_get(unsigned *count);

#endif
