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
    ComboMenuActionOverscanChanged,
    ComboMenuActionToggleWidescreen,
    ComboMenuActionCycleScanlines,
    ComboMenuActionCycleScanlinesPrev,
    ComboMenuActionCycleRefreshRate,
    ComboMenuActionCycleRefreshRatePrev,
    ComboMenuActionCycleZ80Turbo,
    ComboMenuActionCycleZ80TurboPrev,
    ComboMenuActionToggleRensha,
    ComboMenuActionToggleSccCart,
    ComboMenuActionToggleOverlay,
    ComboMenuActionToggleAudioMute,
    ComboMenuActionSaveSettings,
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
                                                     unsigned refresh_rate_hz,
                                                     unsigned z80_turbo_mode,
                                                     boolean rensha_enabled,
                                                     boolean scc_cart_enabled,
                                                     boolean overlay_enabled,
                                                     boolean overlay_available,
                                                     boolean audio_muted,
                                                     unsigned *count);

#endif
