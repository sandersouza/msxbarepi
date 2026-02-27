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
    { "Opcao 3", ComboMenuActionSettingsOption3, TRUE },
    { "Opcao 4", ComboMenuActionSettingsOption4, TRUE }
};

static const TComboMenuItem kSettingsItemsOverscanOn[] =
{
    { "Overscan [LIG]", ComboMenuActionToggleOverscan, TRUE },
    { "Scanlines [DES]", ComboMenuActionToggleScanlines, TRUE },
    { "Opcao 3", ComboMenuActionSettingsOption3, TRUE },
    { "Opcao 4", ComboMenuActionSettingsOption4, TRUE }
};

static const TComboMenuItem kSettingsItemsOverscanOffScanlinesOn[] =
{
    { "Overscan [DES]", ComboMenuActionToggleOverscan, TRUE },
    { "Scanlines [LIG]", ComboMenuActionToggleScanlines, TRUE },
    { "Opcao 3", ComboMenuActionSettingsOption3, TRUE },
    { "Opcao 4", ComboMenuActionSettingsOption4, TRUE }
};

static const TComboMenuItem kSettingsItemsOverscanOnScanlinesOn[] =
{
    { "Overscan [LIG]", ComboMenuActionToggleOverscan, TRUE },
    { "Scanlines [LIG]", ComboMenuActionToggleScanlines, TRUE },
    { "Opcao 3", ComboMenuActionSettingsOption3, TRUE },
    { "Opcao 4", ComboMenuActionSettingsOption4, TRUE }
};

const TComboMenuItem *combo_menu_root_items_get(unsigned *count)
{
    if (count != 0)
    {
        *count = (unsigned) (sizeof(kRootItems) / sizeof(kRootItems[0]));
    }

    return kRootItems;
}

const TComboMenuItem *combo_menu_settings_items_get(boolean overscan_enabled, boolean scanlines_enabled, unsigned *count)
{
    if (count != 0)
    {
        *count = (unsigned) (sizeof(kSettingsItemsOverscanOff) / sizeof(kSettingsItemsOverscanOff[0]));
    }

    if (overscan_enabled)
    {
        return scanlines_enabled ? kSettingsItemsOverscanOnScanlinesOn : kSettingsItemsOverscanOn;
    }

    return scanlines_enabled ? kSettingsItemsOverscanOffScanlinesOn : kSettingsItemsOverscanOff;
}
