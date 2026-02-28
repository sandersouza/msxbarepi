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
    unsigned GetOverscanPercent(void) const;
    void SetWidescreenEnabled(boolean enabled);
    void SetScanlineMode(unsigned mode);
    void SetRefreshRateHz(unsigned hz);
    unsigned GetRefreshRateHz(void) const;
    void SetBootMode(unsigned mode);
    unsigned GetBootMode(void) const;
    void SetZ80TurboMode(unsigned mode);
    unsigned GetZ80TurboMode(void) const;
    void SetRenshaMode(unsigned mode);
    void SetSccCartEnabled(boolean enabled);
    void SetOverlayEnabled(boolean enabled, boolean available);
    void SetAudioMuted(boolean enabled);
    void RequestRedraw(void);
    boolean ConsumeBackgroundRestoreRequest(void);
    TComboMenuAction ProcessInput(boolean paused,
                                 boolean up_pressed,
                                 boolean down_pressed,
                                 boolean left_pressed,
                                 boolean right_pressed,
                                 boolean enter_pressed,
                                 boolean back_pressed);
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
    unsigned m_OverscanPercent;
    boolean m_WidescreenEnabled;
    unsigned m_ScanlineMode;
    unsigned m_RefreshRateHz;
    unsigned m_BootMode;
    unsigned m_Z80TurboMode;
    unsigned m_RenshaMode;
    boolean m_SccCartEnabled;
    boolean m_OverlayEnabled;
    boolean m_OverlayAvailable;
    boolean m_AudioMuted;
    boolean m_LastBackPressed;
    boolean m_LastDrawnInSettings;
    unsigned m_LastDrawnOverscanPercent;
    boolean m_LastDrawnWidescreen;
    unsigned m_LastDrawnScanlineMode;
    unsigned m_LastDrawnRefreshRateHz;
    unsigned m_LastDrawnBootMode;
    unsigned m_LastDrawnZ80TurboMode;
    unsigned m_LastDrawnRenshaMode;
    boolean m_LastDrawnSccCart;
    boolean m_LastDrawnOverlay;
    boolean m_LastDrawnOverlayAvailable;
    boolean m_LastDrawnAudioMuted;
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
};

#endif
