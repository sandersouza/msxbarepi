#include "combo_menu_items.h"

static const TComboMenuItem kMenuItems[] =
{
    { "Cartridge A", ComboMenuActionCartridgeA, TRUE },
    { "Cartridge B", ComboMenuActionCartridgeB, TRUE },
    { "Disk Drive A", ComboMenuActionDiskDriveA, TRUE },
    { "Disk Drive B", ComboMenuActionDiskDriveB, TRUE },
    { "Settings", ComboMenuActionSettings, TRUE },
    { "MSX BASIC", ComboMenuActionMsxBasic, TRUE },
    { "Reset", ComboMenuActionReset, TRUE }
};

const TComboMenuItem *combo_menu_items_get(unsigned *count)
{
    if (count != 0)
    {
        *count = (unsigned) (sizeof(kMenuItems) / sizeof(kMenuItems[0]));
    }

    return kMenuItems;
}
