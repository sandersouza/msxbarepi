#ifndef MSXBARE_CIRCLE_MSXBARE_MENU_H
#define MSXBARE_CIRCLE_MSXBARE_MENU_H

#include "backend/runtime/runtime.h"
#include "gfx_textbox.h"
#include "combo_file_browser.h"
#include "combo_menu_items.h"
#include "../usb_hid_gamepad.h"

class CComboPauseMenu
{
public:
    CComboPauseMenu(void);
    ~CComboPauseMenu(void);

    void Reset(void);
    void SetScalePercent(unsigned percent);
    void SetScaleMaxFitEnabled(boolean enabled);
    void SetMaxScalePercent(unsigned percent);
    void SetLanguage(unsigned language);
    void SetResolutionMode(unsigned mode);
    unsigned GetLanguage(void) const;
    unsigned GetResolutionMode(void) const;
    unsigned GetScalePercent(void) const;
    boolean IsScaleMaxFitEnabled(void) const;
    void SetScanlineMode(unsigned mode);
    void SetGfx9000Enabled(boolean enabled);
    void SetRefreshRateHz(unsigned hz);
    unsigned GetRefreshRateHz(void) const;
    void SetDiskRomEnabled(boolean enabled);
    boolean IsDiskRomEnabled(void) const;
    void SetKanjiRomEnabled(boolean enabled);
    void SetKanjiRomAvailable(boolean available);
    boolean IsKanjiRomEnabled(void) const;
    boolean IsKanjiRomAvailable(void) const;
    void SetBootMode(unsigned mode);
    unsigned GetBootMode(void) const;
    void SetMachineProfile(unsigned profile);
    unsigned GetMachineProfile(void) const;
    void SetRamMapperKb(unsigned kb);
    unsigned GetRamMapperKb(void) const;
    void SetMegaRamKb(unsigned kb);
    unsigned GetMegaRamKb(void) const;
    void SetZ80TurboMode(unsigned mode);
    unsigned GetZ80TurboMode(void) const;
    void SetRenshaMode(unsigned mode);
    void SetJoystickMapCodes(const u16 *codes, unsigned count);
    void GetJoystickMapCodes(u16 *codes, unsigned count) const;
    void SetFmMusicEnabled(boolean enabled);
    void SetSccCartEnabled(boolean enabled);
    void SetSccDualCartState(boolean enabled, boolean available);
    void SetOverlayMode(unsigned mode, boolean available);
    void SetAudioGainPercent(unsigned percent);
    void SetLoadRomSlotNames(const char *slot1_name, const char *slot2_name);
    void SetLoadDiskDriveNames(const char *drive1_name, const char *drive2_name);
    boolean ConsumePendingRomSelection(unsigned *slot_index, char *path, unsigned path_size);
    boolean ConsumePendingDiskSelection(unsigned *drive_index, char *path, unsigned path_size);
    boolean ConsumePendingRomBrowserOpen(unsigned *slot_index, char *path, unsigned path_size);
    boolean ConsumePendingDiskBrowserOpen(unsigned *drive_index, char *path, unsigned path_size);
    boolean ConsumePendingGameMasterCheat(unsigned *game_index,
                                          unsigned *cheat_index,
                                          boolean *has_value_override,
                                          uint16_t *value_override);
    void OpenFileBrowser(unsigned mode, unsigned slot_index, const char *path);
    void OpenGameMaster(BackendCheatCatalog *catalog, unsigned load_status, unsigned error_line);
    unsigned GetAudioGainPercent(void) const;
    boolean IsInSettings(void) const;
    boolean IsCapturingJoystickMap(void) const;
    void ReturnToRoot(void);
    void RequestRedraw(void);
    void InvalidateViewportSnapshot(void);
    void CaptureViewportSnapshot(CGfxTextBoxRenderer *renderer, unsigned x, unsigned y, unsigned w, unsigned h);
    boolean GetViewportSnapshotView(const TScreenColor **pixels, unsigned *x, unsigned *y, unsigned *w, unsigned *h, unsigned *stride) const;
    boolean GetOffscreenView(const TScreenColor **pixels, unsigned *x, unsigned *y, unsigned *w, unsigned *h, unsigned *stride) const;
    boolean ConsumeBackgroundRestoreRequest(void);
    TComboMenuAction ProcessInput(boolean paused,
                                 boolean up_pressed,
                                 boolean down_pressed,
                                 boolean page_up_pressed,
                                 boolean page_down_pressed,
                                 boolean left_pressed,
                                 boolean right_pressed,
                                 boolean enter_pressed,
                                 boolean back_pressed,
                                 boolean delete_pressed,
                                 char jump_letter,
                                 u16 joystick_capture_code);
    void Render(boolean visible, CGfxTextBoxRenderer *renderer, unsigned screen_width, unsigned screen_height,
                unsigned anchor_x, unsigned anchor_y, unsigned anchor_w, unsigned anchor_h);

private:
    enum TMenuView {
        MenuViewRoot = 0,
        MenuViewSettings = 1,
        MenuViewDebug = 2,
        MenuViewJoystickMap = 3,
        MenuViewLoadRom = 4,
        MenuViewLoadRomBrowser = 5,
        MenuViewLoadDisk = 6,
        MenuViewLoadDiskBrowser = 7,
        MenuViewGameMasterBrowser = 8,
        MenuViewGameMasterCheats = 9
    };
    static void CopySmallText(char *dst, unsigned dst_size, const char *src);
    void ResetRepeatState(void);
    const TComboMenuItem *GetItems(unsigned *count) const;
    unsigned FindFirstSelectable(void) const;
    unsigned FindPrevSelectable(unsigned from) const;
    unsigned FindNextSelectable(unsigned from) const;
    unsigned FindActionIndex(TComboMenuAction action) const;
    void ResetGameMasterState(void);
    const BackendCheatGame *GetSelectedGameMasterGame(void) const;
    unsigned GetSelectedGameMasterCheatCount(void) const;
    void SyncGameMasterCheatWindow(void);

private:
    unsigned m_Row;
    unsigned m_Col;
    unsigned m_Selected;
    unsigned m_LastDrawnSelected;
    boolean m_Visible;
    unsigned m_View;
    unsigned m_ScalePercent;
    boolean m_ScaleMaxFitEnabled;
    unsigned m_MaxScalePercent;
    unsigned m_Language;
    unsigned m_ResolutionMode;
    unsigned m_ScanlineMode;
    boolean m_Gfx9000Enabled;
    unsigned m_RefreshRateHz;
    boolean m_DiskRomEnabled;
    boolean m_KanjiRomEnabled;
    boolean m_KanjiRomAvailable;
    unsigned m_BootMode;
    unsigned m_MachineProfile;
    unsigned m_RamMapperKb;
    unsigned m_MegaRamKb;
    unsigned m_Z80TurboMode;
    unsigned m_RenshaMode;
    u16 m_JoystickMapCodes[CUsbHidGamepad::MapSlotCount];
    u16 m_JoystickMapEditCodes[CUsbHidGamepad::MapSlotCount];
    boolean m_JoystickMapDirty;
    u16 m_LastJoystickCaptureCode;
    unsigned m_JoystickMapReturnSelected;
    boolean m_FmMusicEnabled;
    boolean m_SccCartEnabled;
    boolean m_SccDualCartEnabled;
    boolean m_SccDualCartAvailable;
    unsigned m_OverlayMode;
    boolean m_OverlayAvailable;
    unsigned m_AudioGainPercent;
    char m_LoadRomSlot1Name[17];
    char m_LoadRomSlot2Name[17];
    char m_LoadDiskDrive1Name[17];
    char m_LoadDiskDrive2Name[17];
    CComboFileBrowser m_FileBrowser;
    mutable TComboMenuItem m_RomBrowserItems[CComboFileBrowser::kVisibleRows];
    mutable char m_RomBrowserItemLabels[CComboFileBrowser::kVisibleRows][40];
    mutable char m_RomBrowserEmptyLabel[20];
    boolean m_HasPendingRomSelection;
    unsigned m_PendingRomSlot;
    char m_PendingRomPath[192];
    boolean m_HasPendingRomBrowserOpen;
    unsigned m_PendingRomBrowserSlot;
    char m_PendingRomBrowserPath[192];
    boolean m_HasPendingDiskSelection;
    unsigned m_PendingDiskDrive;
    char m_PendingDiskPath[192];
    boolean m_HasPendingDiskBrowserOpen;
    unsigned m_PendingDiskBrowserDrive;
    char m_PendingDiskBrowserPath[192];
    BackendCheatCatalog *m_GameMasterCatalog;
    unsigned m_GameMasterLoadStatus;
    unsigned m_GameMasterErrorLine;
    unsigned m_GameMasterSelectedGame;
    unsigned m_GameMasterCheatSelected;
    unsigned m_GameMasterCheatTop;
    boolean m_HasPendingGameMasterCheat;
    unsigned m_PendingGameMasterGame;
    unsigned m_PendingGameMasterCheat;
    boolean m_PendingGameMasterCheatHasValueOverride;
    uint16_t m_PendingGameMasterCheatValueOverride;
    unsigned m_GameMasterApplyBlinkFrames;
    mutable TComboMenuItem m_GameMasterCheatItems[CComboFileBrowser::kVisibleRows + 2u];
    mutable char m_GameMasterCheatItemLabels[CComboFileBrowser::kVisibleRows + 2u][64];
    boolean m_LastBackPressed;
    unsigned m_LastDrawnView;
    unsigned m_LastDrawnScalePercent;
    boolean m_LastDrawnScaleMaxFitEnabled;
    unsigned m_LastDrawnMaxScalePercent;
    unsigned m_LastDrawnLanguage;
    unsigned m_LastDrawnResolutionMode;
    unsigned m_LastDrawnScanlineMode;
    boolean m_LastDrawnGfx9000Enabled;
    unsigned m_LastDrawnRefreshRateHz;
    boolean m_LastDrawnDiskRomEnabled;
    boolean m_LastDrawnKanjiRomEnabled;
    boolean m_LastDrawnKanjiRomAvailable;
    unsigned m_LastDrawnBootMode;
    unsigned m_LastDrawnMachineProfile;
    unsigned m_LastDrawnRamMapperKb;
    unsigned m_LastDrawnMegaRamKb;
    unsigned m_LastDrawnZ80TurboMode;
    unsigned m_LastDrawnRenshaMode;
    boolean m_LastDrawnFmMusic;
    boolean m_LastDrawnSccCart;
    boolean m_LastDrawnSccDualCart;
    boolean m_LastDrawnSccDualCartAvailable;
    unsigned m_LastDrawnOverlayMode;
    boolean m_LastDrawnOverlayAvailable;
    unsigned m_LastDrawnAudioGainPercent;
    char m_LastDrawnLoadRomSlot1Name[17];
    char m_LastDrawnLoadRomSlot2Name[17];
    char m_LastDrawnLoadDiskDrive1Name[17];
    char m_LastDrawnLoadDiskDrive2Name[17];
    unsigned m_LastDrawnBrowserTop;
    unsigned m_LastDrawnBrowserCount;
    unsigned m_LastDrawnBrowserSelectedAbs;
    unsigned m_LastDrawnBrowserMode;
    unsigned m_LastDrawnBrowserSlot;
    unsigned m_LastDrawnBrowserContentStamp;
    unsigned m_BrowserWarmupRedraws;
    boolean m_ForceRedraw;
    boolean m_ForceHighlightRedraw;
    boolean m_ForceContentRedraw;
    boolean m_SuppressNextRender;
    boolean m_RequestBackgroundRestore;
    unsigned m_LastBoxX;
    unsigned m_LastBoxY;
    unsigned m_LastBoxW;
    unsigned m_LastBoxH;
    boolean m_LastBoxValid;
    unsigned m_UpHoldFrames;
    unsigned m_DownHoldFrames;
    unsigned m_LeftHoldFrames;
    unsigned m_RightHoldFrames;
    boolean m_LastUpPressed;
    boolean m_LastDownPressed;
    boolean m_LastPageUpPressed;
    boolean m_LastPageDownPressed;
    boolean m_LastLeftPressed;
    boolean m_LastRightPressed;
    boolean m_LastEnterPressed;
    boolean m_LastDeletePressed;
    TScreenColor *m_MenuBackbuffer;
    unsigned m_MenuBackbufferCapacityPixels;
    unsigned m_MenuBackbufferW;
    unsigned m_MenuBackbufferH;
    unsigned m_MenuBackbufferX;
    unsigned m_MenuBackbufferY;
};

#endif
