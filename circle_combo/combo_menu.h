#ifndef MSXBARE_CIRCLE_COMBO_MENU_H
#define MSXBARE_CIRCLE_COMBO_MENU_H

#include "gfx_textbox.h"
#include "combo_menu_items.h"

class CComboPauseMenu
{
public:
    CComboPauseMenu(void);

    void Reset(void);
    void SetOverscanEnabled(boolean enabled);
    void SetScanlinesEnabled(boolean enabled);
    void RequestRedraw(void);
    boolean ConsumeBackgroundRestoreRequest(void);
    TComboMenuAction ProcessInput(boolean paused, boolean up_pressed, boolean down_pressed, boolean enter_pressed, boolean back_pressed);
    void Render(boolean visible, CGfxTextBoxRenderer *renderer, unsigned screen_width, unsigned screen_height,
                unsigned anchor_x, unsigned anchor_y, unsigned anchor_w, unsigned anchor_h);

private:
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
    boolean m_InSettings;
    boolean m_OverscanEnabled;
    boolean m_ScanlinesEnabled;
    boolean m_LastBackPressed;
    boolean m_LastDrawnInSettings;
    boolean m_LastDrawnOverscan;
    boolean m_LastDrawnScanlines;
    boolean m_ForceRedraw;
    boolean m_RequestBackgroundRestore;
    unsigned m_LastBoxX;
    unsigned m_LastBoxY;
    unsigned m_LastBoxW;
    unsigned m_LastBoxH;
    boolean m_LastBoxValid;
    boolean m_LastUpPressed;
    boolean m_LastDownPressed;
    boolean m_LastEnterPressed;
};

#endif
