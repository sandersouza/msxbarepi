#ifndef MSXBARE_CIRCLE_COMBO_MENU_H
#define MSXBARE_CIRCLE_COMBO_MENU_H

#include "gfx_textbox.h"
#include "combo_menu_items.h"

class CComboPauseMenu
{
public:
    CComboPauseMenu(void);

    void Reset(void);
    void SetOverscanPercent(unsigned percent);
    void SetLanguage(unsigned language);
    unsigned GetLanguage(void) const;
    unsigned GetOverscanPercent(void) const;
    void SetWidescreenEnabled(boolean enabled);
    void SetScanlineMode(unsigned mode);
    void SetRefreshRateHz(unsigned hz);
    unsigned GetRefreshRateHz(void) const;
    void SetDiskRomEnabled(boolean enabled);
    boolean IsDiskRomEnabled(void) const;
    void SetBootMode(unsigned mode);
    unsigned GetBootMode(void) const;
    void SetZ80TurboMode(unsigned mode);
    unsigned GetZ80TurboMode(void) const;
    void SetRenshaMode(unsigned mode);
    void SetSccCartEnabled(boolean enabled);
    void SetOverlayEnabled(boolean enabled, boolean available);
    void SetAudioMuted(boolean enabled);
    void SetAudioGainPercent(unsigned percent);
    void SetLoadRomSlotNames(const char *slot1_name, const char *slot2_name);
    void SetLoadDiskDriveNames(const char *drive1_name, const char *drive2_name);
    boolean ConsumePendingRomSelection(unsigned *slot_index, char *path, unsigned path_size);
    boolean ConsumePendingDiskSelection(unsigned *drive_index, char *path, unsigned path_size);
    unsigned GetAudioGainPercent(void) const;
    boolean IsInSettings(void) const;
    void RequestRedraw(void);
    boolean ConsumeBackgroundRestoreRequest(void);
    TComboMenuAction ProcessInput(boolean paused,
                                 boolean up_pressed,
                                 boolean down_pressed,
                                 boolean left_pressed,
                                 boolean right_pressed,
                                 boolean enter_pressed,
                                 boolean back_pressed,
                                 boolean delete_pressed);
    void Render(boolean visible, CGfxTextBoxRenderer *renderer, unsigned screen_width, unsigned screen_height,
                unsigned anchor_x, unsigned anchor_y, unsigned anchor_w, unsigned anchor_h);

private:
    enum TMenuView {
        MenuViewRoot = 0,
        MenuViewSettings = 1,
        MenuViewLoadRom = 2,
        MenuViewLoadRomBrowser = 3,
        MenuViewLoadDisk = 4,
        MenuViewLoadDiskBrowser = 5
    };
    enum TBrowserMode {
        BrowserModeRom = 0,
        BrowserModeDisk = 1
    };
    static const unsigned kRomBrowserMaxEntries = 256u;
    static const unsigned kRomBrowserVisibleRows = 10u;
    static void CopySmallText(char *dst, unsigned dst_size, const char *src);
    static void FormatName83NoExt(const char *path, char out_name[17]);
    static boolean IsPathInsideRoot(const char *path, const char *root);
    void RebuildBrowserCatalog(unsigned mode);
    const TComboMenuItem *GetItems(unsigned *count) const;
    unsigned FindFirstSelectable(void) const;
    unsigned FindPrevSelectable(unsigned from) const;
    unsigned FindNextSelectable(unsigned from) const;

private:
    unsigned m_Row;
    unsigned m_Col;
    unsigned m_Selected;
    unsigned m_LastDrawnSelected;
    boolean m_Visible;
    unsigned m_View;
    unsigned m_OverscanPercent;
    unsigned m_Language;
    boolean m_WidescreenEnabled;
    unsigned m_ScanlineMode;
    unsigned m_RefreshRateHz;
    boolean m_DiskRomEnabled;
    unsigned m_BootMode;
    unsigned m_Z80TurboMode;
    unsigned m_RenshaMode;
    boolean m_SccCartEnabled;
    boolean m_OverlayEnabled;
    boolean m_OverlayAvailable;
    boolean m_AudioMuted;
    unsigned m_AudioGainPercent;
    char m_LoadRomSlot1Name[16];
    char m_LoadRomSlot2Name[16];
    char m_LoadDiskDrive1Name[16];
    char m_LoadDiskDrive2Name[16];
    unsigned m_BrowserMode;
    unsigned m_RomBrowserSlot;
    unsigned m_RomBrowserCount;
    unsigned m_RomBrowserSelectedAbs;
    unsigned m_RomBrowserTop;
    char m_RomBrowserNames[kRomBrowserMaxEntries][17];
    char m_RomBrowserPaths[kRomBrowserMaxEntries][192];
    boolean m_RomBrowserIsDir[kRomBrowserMaxEntries];
    boolean m_RomBrowserIsParent[kRomBrowserMaxEntries];
    char m_RomBrowserCurrentDir[192];
    mutable TComboMenuItem m_RomBrowserItems[kRomBrowserVisibleRows];
    mutable char m_RomBrowserItemLabels[kRomBrowserVisibleRows][28];
    mutable char m_RomBrowserEmptyLabel[20];
    boolean m_HasPendingRomSelection;
    unsigned m_PendingRomSlot;
    char m_PendingRomPath[192];
    boolean m_HasPendingDiskSelection;
    unsigned m_PendingDiskDrive;
    char m_PendingDiskPath[192];
    boolean m_LastBackPressed;
    unsigned m_LastDrawnView;
    unsigned m_LastDrawnOverscanPercent;
    unsigned m_LastDrawnLanguage;
    boolean m_LastDrawnWidescreen;
    unsigned m_LastDrawnScanlineMode;
    unsigned m_LastDrawnRefreshRateHz;
    boolean m_LastDrawnDiskRomEnabled;
    unsigned m_LastDrawnBootMode;
    unsigned m_LastDrawnZ80TurboMode;
    unsigned m_LastDrawnRenshaMode;
    boolean m_LastDrawnSccCart;
    boolean m_LastDrawnOverlay;
    boolean m_LastDrawnOverlayAvailable;
    boolean m_LastDrawnAudioMuted;
    unsigned m_LastDrawnAudioGainPercent;
    char m_LastDrawnLoadRomSlot1Name[16];
    char m_LastDrawnLoadRomSlot2Name[16];
    char m_LastDrawnLoadDiskDrive1Name[16];
    char m_LastDrawnLoadDiskDrive2Name[16];
    boolean m_ForceRedraw;
    boolean m_RequestBackgroundRestore;
    unsigned m_LastBoxX;
    unsigned m_LastBoxY;
    unsigned m_LastBoxW;
    unsigned m_LastBoxH;
    boolean m_LastBoxValid;
    boolean m_LastUpPressed;
    boolean m_LastDownPressed;
    boolean m_LastLeftPressed;
    boolean m_LastRightPressed;
    boolean m_LastEnterPressed;
    boolean m_LastDeletePressed;
};

#endif
