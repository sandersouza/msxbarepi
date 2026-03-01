#ifndef MSXBARE_CIRCLE_COMBO_MENU_ITEMS_H
#define MSXBARE_CIRCLE_COMBO_MENU_ITEMS_H

#include <circle/types.h>

enum TComboMenuAction {
    ComboMenuActionNone = 0,
    ComboMenuActionSeparator,
    ComboMenuActionCartridgeA,
    ComboMenuActionCartridgeB,
    ComboMenuActionDiskDriveA,
    ComboMenuActionDiskDriveB,
    ComboMenuActionSettings,
    ComboMenuActionCycleLanguage,
    ComboMenuActionCycleLanguagePrev,
    ComboMenuActionOverscanChanged,
    ComboMenuActionToggleWidescreen,
    ComboMenuActionCycleScanlines,
    ComboMenuActionCycleScanlinesPrev,
    ComboMenuActionCycleRefreshRate,
    ComboMenuActionCycleRefreshRatePrev,
    ComboMenuActionToggleDiskRom,
    ComboMenuActionCycleBootMode,
    ComboMenuActionCycleBootModePrev,
    ComboMenuActionCycleZ80Turbo,
    ComboMenuActionCycleZ80TurboPrev,
    ComboMenuActionCycleRensha,
    ComboMenuActionCycleRenshaPrev,
    ComboMenuActionToggleSccCart,
    ComboMenuActionToggleOverlay,
    ComboMenuActionAudioGainChanged,
    ComboMenuActionSaveState,
    ComboMenuActionLoadState,
    ComboMenuActionSaveSettings,
    ComboMenuActionMsxBasic,
    ComboMenuActionReset
};

typedef struct {
    const char *label;
    TComboMenuAction action;
    boolean selectable;
} TComboMenuItem;

const TComboMenuItem *combo_menu_root_items_get(unsigned language, unsigned *count);
const TComboMenuItem *combo_menu_load_rom_items_get(unsigned language,
                                                     const char *slot1_name,
                                                     const char *slot2_name,
                                                     unsigned *count);
const TComboMenuItem *combo_menu_load_disk_items_get(unsigned language,
                                                      const char *drive1_name,
                                                      const char *drive2_name,
                                                      unsigned *count);
const TComboMenuItem *combo_menu_settings_items_get(unsigned overscan_percent,
                                                     unsigned language,
                                                     boolean widescreen_enabled,
                                                     unsigned scanline_mode,
                                                     unsigned refresh_rate_hz,
                                                     boolean disk_rom_enabled,
                                                     unsigned boot_mode,
                                                     unsigned z80_turbo_mode,
                                                     unsigned rensha_mode,
                                                     boolean scc_cart_enabled,
                                                     boolean overlay_enabled,
                                                     boolean overlay_available,
                                                     unsigned audio_gain_percent,
                                                     unsigned *count);

#endif
