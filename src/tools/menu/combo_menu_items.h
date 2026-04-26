#ifndef MSXBARE_CIRCLE_MSXBARE_MENU_ITEMS_H
#define MSXBARE_CIRCLE_MSXBARE_MENU_ITEMS_H

#include <circle/types.h>

typedef enum {
    ComboDebugOverlayOff = 0,
    ComboDebugOverlayMax = 1,
    ComboDebugOverlayMin = 2
} TComboDebugOverlayMode;

enum TComboMenuAction {
    ComboMenuActionNone = 0,
    ComboMenuActionSeparator,
    ComboMenuActionCartridgeA,
    ComboMenuActionCartridgeB,
    ComboMenuActionDiskDriveA,
    ComboMenuActionDiskDriveB,
    ComboMenuActionCassette,
    ComboMenuActionSettings,
    ComboMenuActionDebug,
    ComboMenuActionGameMaster,
    ComboMenuActionCycleLanguage,
    ComboMenuActionCycleLanguagePrev,
    ComboMenuActionCycleResolution,
    ComboMenuActionCycleResolutionPrev,
    ComboMenuActionOverscanChanged,
    ComboMenuActionCycleScanlines,
    ComboMenuActionCycleScanlinesPrev,
    ComboMenuActionToggleGfx9000,
    ComboMenuActionCycleRefreshRate,
    ComboMenuActionCycleRefreshRatePrev,
    ComboMenuActionToggleDiskRom,
    ComboMenuActionCycleBootMode,
    ComboMenuActionCycleBootModePrev,
    ComboMenuActionCycleCore,
    ComboMenuActionCycleCorePrev,
    ComboMenuActionCycleMachine,
    ComboMenuActionCycleMachinePrev,
    ComboMenuActionCycleRamMapper,
    ComboMenuActionCycleRamMapperPrev,
    ComboMenuActionCycleMegaRam,
    ComboMenuActionCycleMegaRamPrev,
    ComboMenuActionCycleZ80Turbo,
    ComboMenuActionCycleZ80TurboPrev,
    ComboMenuActionOpenJoystickMap,
    ComboMenuActionApplyJoystickMap,
    ComboMenuActionCycleRensha,
    ComboMenuActionCycleRenshaPrev,
    ComboMenuActionToggleFmMusic,
    ComboMenuActionToggleSccCart,
    ComboMenuActionCycleOverlay,
    ComboMenuActionCycleOverlayPrev,
    ComboMenuActionAudioGainChanged,
    ComboMenuActionApplyGameMasterCheat,
    ComboMenuActionSaveState,
    ComboMenuActionLoadState,
    ComboMenuActionSaveSettings,
    ComboMenuActionMsxBasic,
    ComboMenuActionReset
};

enum TComboMenuRedrawPolicy {
    ComboMenuRedrawMenuOnly = 0,
    ComboMenuRedrawMenuAndViewport = 1
};

typedef struct {
    const char *label;
    TComboMenuAction action;
    boolean selectable;
    TComboMenuRedrawPolicy redraw_policy;
} TComboMenuItem;

const TComboMenuItem *combo_menu_root_items_get(unsigned language, unsigned boot_mode, unsigned *count);
const TComboMenuItem *combo_menu_load_rom_items_get(unsigned language,
                                                     const char *slot1_name,
                                                     const char *slot2_name,
                                                     unsigned *count);
const TComboMenuItem *combo_menu_load_disk_items_get(unsigned language,
                                                      const char *drive1_name,
                                                      const char *drive2_name,
                                                      unsigned *count);
const TComboMenuItem *combo_menu_settings_items_get(unsigned language,
                                                     unsigned resolution_mode,
                                                     unsigned scale_percent,
                                                     unsigned scanline_mode,
                                                     boolean gfx9000_enabled,
                                                     unsigned refresh_rate_hz,
                                                     boolean disk_rom_enabled,
                                                     unsigned boot_mode,
                                                     const char *core_name,
                                                     boolean core_available,
                                                     unsigned machine_profile,
                                                     unsigned rammapper_kb,
                                                     unsigned megaram_kb,
                                                     unsigned z80_turbo_mode,
                                                     unsigned rensha_mode,
                                                     boolean fm_music_enabled,
                                                     boolean scc_cart_enabled,
                                                     boolean scc_dual_cart_enabled,
                                                     boolean scc_dual_cart_available,
                                                     unsigned overlay_mode,
                                                     boolean overlay_available,
                                                     unsigned audio_gain_percent,
                                                     unsigned *count);
const TComboMenuItem *combo_menu_debug_items_get(unsigned language,
                                                 unsigned refresh_rate_hz,
                                                 boolean disk_rom_enabled,
                                                 unsigned overlay_mode,
                                                 boolean overlay_available,
                                                 unsigned *count);
const TComboMenuItem *combo_menu_joystick_map_items_get(unsigned language,
                                                        const char *up_code,
                                                        const char *down_code,
                                                        const char *left_code,
                                                        const char *right_code,
                                                        const char *button1_code,
                                                        const char *button2_code,
                                                        unsigned *count);

#endif
