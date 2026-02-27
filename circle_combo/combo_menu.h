#ifndef MSXBARE_CIRCLE_COMBO_MENU_H
#define MSXBARE_CIRCLE_COMBO_MENU_H

#include "gfx_textbox.h"
#include "combo_menu_items.h"

class CComboPauseMenu
{
public:
    CComboPauseMenu(void);

    void Reset(void);
    TComboMenuAction ProcessInput(boolean paused, boolean up_pressed, boolean down_pressed, boolean enter_pressed);
    void Render(boolean visible, CGfxTextBoxRenderer *renderer, unsigned screen_width, unsigned screen_height,
                unsigned anchor_x, unsigned anchor_y, unsigned anchor_w, unsigned anchor_h);

private:
    unsigned FindFirstSelectable(void) const;
    unsigned FindPrevSelectable(unsigned from) const;
    unsigned FindNextSelectable(unsigned from) const;

private:
    unsigned m_Row;
    unsigned m_Col;
    unsigned m_Selected;
    unsigned m_LastDrawnSelected;
    boolean m_Visible;
    boolean m_LastUpPressed;
    boolean m_LastDownPressed;
    boolean m_LastEnterPressed;
};

#endif
