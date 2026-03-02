#ifndef MSXBARE_CIRCLE_COMBO_FILE_BROWSER_H
#define MSXBARE_CIRCLE_COMBO_FILE_BROWSER_H

#include <circle/types.h>

enum TComboFileBrowserMode {
    ComboFileBrowserModeRom = 0,
    ComboFileBrowserModeDisk = 1
};

enum TComboFileBrowserEvent {
    ComboFileBrowserEventNone = 0,
    ComboFileBrowserEventSelectionChanged = 1,
    ComboFileBrowserEventEnteredDirectory = 2,
    ComboFileBrowserEventSelectedFile = 3
};

class CComboFileBrowser
{
public:
    static const unsigned kMaxEntries = 256u;
    static const unsigned kVisibleRows = 10u;

    CComboFileBrowser(void);

    void Reset(void);
    void Open(unsigned mode, unsigned slot_index);
    unsigned GetMode(void) const;
    unsigned GetSlotIndex(void) const;
    unsigned GetCount(void) const;
    unsigned GetTop(void) const;
    unsigned GetSelectedVisibleIndex(void) const;
    unsigned GetVisibleCount(void) const;
    const char *GetLabelVisible(unsigned visible_index) const;
    boolean IsDirVisible(unsigned visible_index) const;
    boolean IsParentVisible(unsigned visible_index) const;
    TComboFileBrowserEvent ProcessInput(boolean up_pressed,
                                        boolean down_pressed,
                                        boolean enter_edge,
                                        char *out_path,
                                        unsigned out_path_size);

private:
    static void CopySmallText(char *dst, unsigned dst_size, const char *src);
    static void FormatName16NoExt(const char *path, char out_name[17]);
    static boolean IsPathInsideRoot(const char *path, const char *root);
    void RebuildCatalog(void);
    const char *RootPath(void) const;

private:
    unsigned m_Mode;
    unsigned m_SlotIndex;
    unsigned m_Count;
    unsigned m_SelectedAbs;
    unsigned m_Top;
    char m_Names[kMaxEntries][17];
    char m_Paths[kMaxEntries][192];
    boolean m_IsDir[kMaxEntries];
    boolean m_IsParent[kMaxEntries];
    char m_CurrentDir[192];
    boolean m_LastUpPressed;
    boolean m_LastDownPressed;
    unsigned m_UpHoldFrames;
    unsigned m_DownHoldFrames;
};

#endif
