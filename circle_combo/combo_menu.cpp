#include "combo_menu.h"


static unsigned ComboStrLen(const char *text)
{
    if (text == 0)
    {
        return 0u;
    }

    unsigned len = 0u;
    while (text[len] != '\0')
    {
        ++len;
    }

    return len;
}

static void ComboSliceCopy(char *dst, unsigned dst_size, const char *src, unsigned start, unsigned len)
{
    if (dst == 0 || dst_size == 0u)
    {
        return;
    }

    if (src == 0)
    {
        dst[0] = '\0';
        return;
    }

    unsigned i = 0u;
    while (i + 1u < dst_size && i < len && src[start + i] != '\0')
    {
        dst[i] = src[start + i];
        ++i;
    }
    dst[i] = '\0';
}

static unsigned ComboFindFlagStart(const char *label)
{
    const unsigned len = ComboStrLen(label);
    if (len < 4u)
    {
        return len;
    }

    if (label[len - 1u] != ']')
    {
        return len;
    }

    for (unsigned i = len - 1u; i > 1u; --i)
    {
        if (label[i] == '[' && label[i - 1u] == ' ')
        {
            return i - 1u;
        }
    }

    return len;
}

CComboPauseMenu::CComboPauseMenu(void)
: m_Row(1),
  m_Col(1),
  m_Selected(0),
  m_LastDrawnSelected(0xFFFFFFFFu),
  m_Visible(FALSE),
    m_InSettings(FALSE),
    m_OverscanPercent(0u),
    m_WidescreenEnabled(FALSE),
    m_ScanlineMode(0u),
    m_RefreshRateHz(60u),
    m_Z80TurboMode(0u),
    m_RenshaMode(0u),
    m_SccCartEnabled(TRUE),
    m_OverlayEnabled(FALSE),
    m_OverlayAvailable(FALSE),
    m_AudioMuted(FALSE),
    m_LastBackPressed(FALSE),
    m_LastDrawnInSettings(FALSE),
    m_LastDrawnOverscanPercent(0u),
    m_LastDrawnWidescreen(FALSE),
    m_LastDrawnScanlineMode(0u),
    m_LastDrawnRefreshRateHz(60u),
    m_LastDrawnZ80TurboMode(0u),
    m_LastDrawnRenshaMode(0u),
    m_LastDrawnSccCart(TRUE),
    m_LastDrawnOverlay(FALSE),
    m_LastDrawnOverlayAvailable(FALSE),
    m_LastDrawnAudioMuted(FALSE),
    m_ForceRedraw(TRUE),
    m_RequestBackgroundRestore(FALSE),
    m_LastBoxX(0),
    m_LastBoxY(0),
    m_LastBoxW(0),
    m_LastBoxH(0),
    m_LastBoxValid(FALSE),
  m_LastUpPressed(FALSE),
  m_LastDownPressed(FALSE),
  m_LastLeftPressed(FALSE),
  m_LastRightPressed(FALSE),
  m_LastEnterPressed(FALSE)
{
}

void CComboPauseMenu::Reset(void)
{
    m_Row = 1;
    m_Col = 1;
    m_InSettings = FALSE;
    m_Selected = FindFirstSelectable();
    m_LastDrawnSelected = 0xFFFFFFFFu;
    m_Visible = FALSE;
    m_LastBackPressed = FALSE;
    m_LastDrawnInSettings = FALSE;
    m_LastDrawnOverscanPercent = m_OverscanPercent;
    m_LastDrawnWidescreen = m_WidescreenEnabled;
    m_LastDrawnScanlineMode = m_ScanlineMode;
    m_LastDrawnRefreshRateHz = m_RefreshRateHz;
    m_LastDrawnZ80TurboMode = m_Z80TurboMode;
    m_LastDrawnRenshaMode = m_RenshaMode;
    m_LastDrawnSccCart = m_SccCartEnabled;
    m_LastDrawnOverlay = m_OverlayEnabled;
    m_LastDrawnOverlayAvailable = m_OverlayAvailable;
    m_LastDrawnAudioMuted = m_AudioMuted;
    m_ForceRedraw = TRUE;
    m_RequestBackgroundRestore = FALSE;
    m_LastBoxValid = FALSE;
    m_LastUpPressed = FALSE;
    m_LastDownPressed = FALSE;
    m_LastLeftPressed = FALSE;
    m_LastRightPressed = FALSE;
    m_LastEnterPressed = FALSE;
}

void CComboPauseMenu::SetOverscanPercent(unsigned percent)
{
    if (percent > 100u)
    {
        percent = 100u;
    }

    if (m_OverscanPercent != percent)
    {
        m_OverscanPercent = percent;
        m_ForceRedraw = TRUE;
    }
}

unsigned CComboPauseMenu::GetOverscanPercent(void) const
{
    return m_OverscanPercent;
}

void CComboPauseMenu::SetWidescreenEnabled(boolean enabled)
{
    if (m_WidescreenEnabled != enabled)
    {
        m_WidescreenEnabled = enabled;
        m_ForceRedraw = TRUE;
    }
}

void CComboPauseMenu::SetScanlineMode(unsigned mode)
{
    if (mode > 2u)
    {
        mode = 2u;
    }

    if (m_ScanlineMode != mode)
    {
        m_ScanlineMode = mode;
        m_ForceRedraw = TRUE;
    }
}

void CComboPauseMenu::SetRefreshRateHz(unsigned hz)
{
    if (hz != 50u)
    {
        hz = 60u;
    }

    if (m_RefreshRateHz != hz)
    {
        m_RefreshRateHz = hz;
        m_ForceRedraw = TRUE;
    }
}

unsigned CComboPauseMenu::GetRefreshRateHz(void) const
{
    return m_RefreshRateHz;
}

void CComboPauseMenu::SetZ80TurboMode(unsigned mode)
{
    if (mode > 2u)
    {
        mode = 0u;
    }

    if (m_Z80TurboMode != mode)
    {
        m_Z80TurboMode = mode;
        m_ForceRedraw = TRUE;
    }
}

unsigned CComboPauseMenu::GetZ80TurboMode(void) const
{
    return m_Z80TurboMode;
}

void CComboPauseMenu::SetRenshaMode(unsigned mode)
{
    if (mode > 3u)
    {
        mode = 0u;
    }
    if (m_RenshaMode != mode)
    {
        m_RenshaMode = mode;
        m_ForceRedraw = TRUE;
    }
}

void CComboPauseMenu::SetSccCartEnabled(boolean enabled)
{
    enabled = enabled ? TRUE : FALSE;
    if (m_SccCartEnabled != enabled)
    {
        m_SccCartEnabled = enabled;
        m_ForceRedraw = TRUE;
    }
}

void CComboPauseMenu::SetOverlayEnabled(boolean enabled, boolean available)
{
    if (m_OverlayEnabled != enabled || m_OverlayAvailable != available)
    {
        m_OverlayEnabled = enabled;
        m_OverlayAvailable = available;
        m_ForceRedraw = TRUE;
    }
}

void CComboPauseMenu::SetAudioMuted(boolean enabled)
{
    if (m_AudioMuted != enabled)
    {
        m_AudioMuted = enabled;
        m_ForceRedraw = TRUE;
    }
}

void CComboPauseMenu::RequestRedraw(void)
{
    m_ForceRedraw = TRUE;
}

boolean CComboPauseMenu::ConsumeBackgroundRestoreRequest(void)
{
    const boolean pending = m_RequestBackgroundRestore;
    m_RequestBackgroundRestore = FALSE;
    return pending;
}

const TComboMenuItem *CComboPauseMenu::GetItems(unsigned *count) const
{
    if (m_InSettings)
    {
        return combo_menu_settings_items_get(
            m_OverscanPercent,
            m_WidescreenEnabled,
            m_ScanlineMode,
            m_RefreshRateHz,
            m_Z80TurboMode,
            m_RenshaMode,
            m_SccCartEnabled,
            m_OverlayEnabled,
            m_OverlayAvailable,
            m_AudioMuted,
            count);
    }

    return combo_menu_root_items_get(count);
}

unsigned CComboPauseMenu::FindFirstSelectable(void) const
{
    unsigned item_count = 0u;
    const TComboMenuItem *items = GetItems(&item_count);

    for (unsigned i = 0; i < item_count; ++i)
    {
        if (items[i].selectable)
        {
            return i;
        }
    }

    return 0u;
}

unsigned CComboPauseMenu::FindPrevSelectable(unsigned from) const
{
    unsigned item_count = 0u;
    const TComboMenuItem *items = GetItems(&item_count);
    if (item_count == 0u)
    {
        return 0u;
    }

    for (unsigned step = 0u; step < item_count; ++step)
    {
        from = (from == 0u) ? (item_count - 1u) : (from - 1u);
        if (items[from].selectable)
        {
            return from;
        }
    }

    return from;
}

unsigned CComboPauseMenu::FindNextSelectable(unsigned from) const
{
    unsigned item_count = 0u;
    const TComboMenuItem *items = GetItems(&item_count);
    if (item_count == 0u)
    {
        return 0u;
    }

    for (unsigned step = 0u; step < item_count; ++step)
    {
        from = (from + 1u) % item_count;
        if (items[from].selectable)
        {
            return from;
        }
    }

    return from;
}

TComboMenuAction CComboPauseMenu::ProcessInput(boolean paused,
                                               boolean up_pressed,
                                               boolean down_pressed,
                                               boolean left_pressed,
                                               boolean right_pressed,
                                               boolean enter_pressed,
                                               boolean back_pressed)
{
    if (!paused)
    {
        m_LastBackPressed = back_pressed;
        m_LastUpPressed = up_pressed;
        m_LastDownPressed = down_pressed;
        m_LastLeftPressed = left_pressed;
        m_LastRightPressed = right_pressed;
        m_LastEnterPressed = enter_pressed;
        return ComboMenuActionNone;
    }

    unsigned item_count = 0u;
    const TComboMenuItem *items = GetItems(&item_count);
    if (item_count == 0u)
    {
        m_LastBackPressed = back_pressed;
        m_LastUpPressed = up_pressed;
        m_LastDownPressed = down_pressed;
        m_LastLeftPressed = left_pressed;
        m_LastRightPressed = right_pressed;
        m_LastEnterPressed = enter_pressed;
        return ComboMenuActionNone;
    }

    if (back_pressed && !m_LastBackPressed && m_InSettings)
    {
        m_InSettings = FALSE;
        m_Selected = FindFirstSelectable();
        m_ForceRedraw = TRUE;
        m_RequestBackgroundRestore = TRUE;
        m_LastBackPressed = back_pressed;
        m_LastUpPressed = up_pressed;
        m_LastDownPressed = down_pressed;
        m_LastLeftPressed = left_pressed;
        m_LastRightPressed = right_pressed;
        m_LastEnterPressed = enter_pressed;
        return ComboMenuActionNone;
    }

    if (m_Selected >= item_count || !items[m_Selected].selectable)
    {
        m_Selected = FindFirstSelectable();
    }

    if (up_pressed && !m_LastUpPressed)
    {
        m_Selected = FindPrevSelectable(m_Selected);
    }

    if (down_pressed && !m_LastDownPressed)
    {
        m_Selected = FindNextSelectable(m_Selected);
    }

    TComboMenuAction action = ComboMenuActionNone;
    boolean handled_settings_input = FALSE;
    if (m_InSettings && items[m_Selected].selectable)
    {
        const boolean enter_edge = enter_pressed && !m_LastEnterPressed;
        const boolean left_edge = left_pressed && !m_LastLeftPressed;
        const boolean right_edge = right_pressed && !m_LastRightPressed;

        if (items[m_Selected].action == ComboMenuActionOverscanChanged)
        {
            unsigned next_value = m_OverscanPercent;
            if (left_edge)
            {
                next_value = (next_value == 0u) ? 100u : (next_value - 10u);
            }
            if ((right_edge || enter_edge) && next_value <= 100u)
            {
                next_value = (next_value >= 100u) ? 0u : (next_value + 10u);
                if (next_value > 100u)
                {
                    next_value = 100u;
                }
            }

            if (next_value != m_OverscanPercent)
            {
                m_OverscanPercent = next_value;
                m_ForceRedraw = TRUE;
                m_RequestBackgroundRestore = TRUE;
                action = ComboMenuActionOverscanChanged;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionCycleScanlines)
        {
            if (left_edge)
            {
                action = ComboMenuActionCycleScanlinesPrev;
                m_ForceRedraw = TRUE;
                m_RequestBackgroundRestore = TRUE;
            }
            else if (right_edge || enter_edge)
            {
                action = ComboMenuActionCycleScanlines;
                m_ForceRedraw = TRUE;
                m_RequestBackgroundRestore = TRUE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionCycleRefreshRate)
        {
            if (left_edge)
            {
                action = ComboMenuActionCycleRefreshRatePrev;
                m_ForceRedraw = TRUE;
                m_RequestBackgroundRestore = TRUE;
            }
            else if (right_edge || enter_edge)
            {
                action = ComboMenuActionCycleRefreshRate;
                m_ForceRedraw = TRUE;
                m_RequestBackgroundRestore = TRUE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionCycleZ80Turbo)
        {
            if (left_edge)
            {
                action = ComboMenuActionCycleZ80TurboPrev;
                m_ForceRedraw = TRUE;
                m_RequestBackgroundRestore = TRUE;
            }
            else if (right_edge || enter_edge)
            {
                action = ComboMenuActionCycleZ80Turbo;
                m_ForceRedraw = TRUE;
                m_RequestBackgroundRestore = TRUE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionToggleSccCart)
        {
            if (enter_edge || left_edge || right_edge)
            {
                action = items[m_Selected].action;
                m_ForceRedraw = TRUE;
                m_RequestBackgroundRestore = TRUE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionCycleRensha)
        {
            if (left_edge)
            {
                action = ComboMenuActionCycleRenshaPrev;
                m_ForceRedraw = TRUE;
                m_RequestBackgroundRestore = TRUE;
            }
            else if (right_edge || enter_edge)
            {
                action = ComboMenuActionCycleRensha;
                m_ForceRedraw = TRUE;
                m_RequestBackgroundRestore = TRUE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if ((items[m_Selected].action == ComboMenuActionToggleWidescreen)
              || (items[m_Selected].action == ComboMenuActionToggleOverlay)
              || (items[m_Selected].action == ComboMenuActionToggleAudioMute))
        {
            if (enter_edge || left_edge || right_edge)
            {
                action = items[m_Selected].action;
                m_ForceRedraw = TRUE;
                m_RequestBackgroundRestore = TRUE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
    }

    if (enter_pressed && !m_LastEnterPressed && items[m_Selected].selectable && !handled_settings_input)
    {
        if (!m_InSettings && items[m_Selected].action == ComboMenuActionSettings)
        {
            m_InSettings = TRUE;
            m_Selected = FindFirstSelectable();
            m_ForceRedraw = TRUE;
            m_RequestBackgroundRestore = TRUE;
        }
        else
        {
            action = items[m_Selected].action;
            if (m_InSettings)
            {
                /* Force redraw of dynamic labels (e.g. [LIG]/[DES]) immediately on Enter. */
                m_ForceRedraw = TRUE;
            }
        }
    }

    m_LastBackPressed = back_pressed;
    m_LastUpPressed = up_pressed;
    m_LastDownPressed = down_pressed;
    m_LastLeftPressed = left_pressed;
    m_LastRightPressed = right_pressed;
    m_LastEnterPressed = enter_pressed;

    return action;
}

void CComboPauseMenu::Render(boolean visible, CGfxTextBoxRenderer *renderer, unsigned screen_width, unsigned screen_height,
                             unsigned anchor_x, unsigned anchor_y, unsigned anchor_w, unsigned anchor_h)
{
    static const char kRootTitle[] = "PAUSE MENU";
    static const char kSettingsTitle[] = "SETTINGS";
    const TGfxTextStyle title_style = { BRIGHT_WHITE_COLOR, BLACK_COLOR, TRUE };
    const TGfxTextStyle normal_style = { BRIGHT_WHITE_COLOR, BLACK_COLOR, FALSE };
    const TGfxTextStyle selected_style = { BLACK_COLOR, BRIGHT_WHITE_COLOR, FALSE };
    const unsigned scale_x = 2u;
    const unsigned scale_y = 2u;

    if (renderer == 0)
    {
        return;
    }

    if (!visible)
    {
        m_Visible = FALSE;
        m_LastDrawnSelected = 0xFFFFFFFFu;
        return;
    }

    unsigned item_count = 0u;
    const TComboMenuItem *items = GetItems(&item_count);
    if (item_count == 0u)
    {
        return;
    }

    const char *title = m_InSettings ? kSettingsTitle : kRootTitle;

    unsigned char_w = renderer->GetCharWidth();
    unsigned char_h = renderer->GetCharHeight();
    if (char_w == 0u) char_w = 8u;
    if (char_h == 0u) char_h = 16u;
    const unsigned cell_w = char_w * scale_x;
    const unsigned cell_h = char_h * scale_y;

    unsigned max_item_len = 0u;
    for (unsigned i = 0; i < item_count; ++i)
    {
        const unsigned len = ComboStrLen(items[i].label);
        if (len > max_item_len)
        {
            max_item_len = len;
        }
    }

    const unsigned title_len = ComboStrLen(title);
    unsigned content_cols = max_item_len > title_len ? max_item_len : title_len;
    content_cols += 4u;
    if (content_cols < 18u)
    {
        content_cols = 18u;
    }

    const unsigned box_cols = content_cols;
    const unsigned box_rows = item_count + 3u;
    const unsigned box_w_px = box_cols * cell_w;
    const unsigned box_h_px = box_rows * cell_h;

    const unsigned box_center_x = anchor_x + (anchor_w / 2u);
    const unsigned box_center_y = anchor_y + (anchor_h / 2u);
    unsigned box_x = box_center_x > (box_w_px / 2u) ? (box_center_x - (box_w_px / 2u)) : 0u;
    unsigned box_y = box_center_y > (box_h_px / 2u) ? (box_center_y - (box_h_px / 2u)) : 0u;

    if (box_x + box_w_px > screen_width)
    {
        box_x = screen_width > box_w_px ? (screen_width - box_w_px) : 0u;
    }
    if (box_y + box_h_px > screen_height)
    {
        box_y = screen_height > box_h_px ? (screen_height - box_h_px) : 0u;
    }

    if (m_Visible
        && !m_ForceRedraw
     && m_Row == box_y
     && m_Col == box_x
     && m_LastDrawnSelected == m_Selected
     && m_LastDrawnInSettings == m_InSettings
     && m_LastDrawnOverscanPercent == m_OverscanPercent
     && m_LastDrawnWidescreen == m_WidescreenEnabled
     && m_LastDrawnScanlineMode == m_ScanlineMode
     && m_LastDrawnRefreshRateHz == m_RefreshRateHz
     && m_LastDrawnZ80TurboMode == m_Z80TurboMode
     && m_LastDrawnRenshaMode == m_RenshaMode
     && m_LastDrawnSccCart == m_SccCartEnabled
     && m_LastDrawnOverlay == m_OverlayEnabled
     && m_LastDrawnOverlayAvailable == m_OverlayAvailable
     && m_LastDrawnAudioMuted == m_AudioMuted)
    {
        return;
    }

    renderer->FillRect(box_x, box_y, box_w_px, box_h_px, BLACK_COLOR);
    renderer->DrawRectBorder(box_x, box_y, box_w_px, box_h_px, BRIGHT_WHITE_COLOR, 2u);

    const unsigned title_x = box_x + ((box_cols - title_len) / 2u) * cell_w;
    const unsigned title_y = box_y;
    renderer->DrawText(title_x, title_y, title, title_style, scale_x, scale_y);

    for (unsigned i = 0; i < item_count; ++i)
    {
        const unsigned row = 2u + i;
        const unsigned y = box_y + (row * cell_h);
        const unsigned text_len = ComboStrLen(items[i].label);
        const boolean settings_row = m_InSettings;
        const boolean separator_row = settings_row && (items[i].action == ComboMenuActionSeparator);

        if (items[i].selectable && i == m_Selected && box_cols > 4u)
        {
            renderer->FillRect(box_x + (2u * cell_w), y, (box_cols - 4u) * cell_w, cell_h, BRIGHT_WHITE_COLOR);
        }

        if (separator_row)
        {
            const unsigned line_x = box_x + (2u * cell_w);
            const unsigned line_w = (box_cols > 4u) ? ((box_cols - 4u) * cell_w) : 0u;
            const unsigned line_y = y + (cell_h / 2u);
            if (line_w > 0u)
            {
                renderer->FillRect(line_x, line_y, line_w, 2u, BRIGHT_WHITE_COLOR);
            }
            continue;
        }

        if (settings_row)
        {
            const unsigned split = ComboFindFlagStart(items[i].label);
            const unsigned left_len = split < text_len ? split : text_len;
            const unsigned flag_len = split < text_len ? (text_len - split) : 0u;
            const unsigned inner_left_col = 2u;
            const unsigned inner_right_col = box_cols > 2u ? (box_cols - 3u) : 0u;
            const unsigned x_left = box_x + (inner_left_col * cell_w);
            const unsigned x_flag = flag_len > 0u
                ? box_x + ((inner_right_col + 1u - flag_len) * cell_w)
                : 0u;
            const TGfxTextStyle style = (items[i].selectable && i == m_Selected) ? selected_style : normal_style;

            if (flag_len > 0u && x_flag > x_left + cell_w)
            {
                char left_buf[48];
                char flag_buf[32];
                ComboSliceCopy(left_buf, sizeof(left_buf), items[i].label, 0u, left_len);
                ComboSliceCopy(flag_buf, sizeof(flag_buf), items[i].label, split, flag_len);
                renderer->DrawText(x_left, y, left_buf, style, scale_x, scale_y);
                renderer->DrawText(x_flag, y, flag_buf, style, scale_x, scale_y);
            }
            else
            {
                const unsigned x = box_x + ((box_cols - text_len) / 2u) * cell_w;
                renderer->DrawText(x, y, items[i].label, style, scale_x, scale_y);
            }
        }
        else
        {
            const unsigned x = box_x + ((box_cols - text_len) / 2u) * cell_w;
            const TGfxTextStyle style = (items[i].selectable && i == m_Selected) ? selected_style : normal_style;
            renderer->DrawText(x, y, items[i].label, style, scale_x, scale_y);
        }
    }

    m_Row = box_y;
    m_Col = box_x;
    m_LastDrawnSelected = m_Selected;
    m_LastDrawnInSettings = m_InSettings;
    m_LastDrawnOverscanPercent = m_OverscanPercent;
    m_LastDrawnWidescreen = m_WidescreenEnabled;
    m_LastDrawnScanlineMode = m_ScanlineMode;
    m_LastDrawnRefreshRateHz = m_RefreshRateHz;
    m_LastDrawnZ80TurboMode = m_Z80TurboMode;
    m_LastDrawnRenshaMode = m_RenshaMode;
    m_LastDrawnSccCart = m_SccCartEnabled;
    m_LastDrawnOverlay = m_OverlayEnabled;
    m_LastDrawnOverlayAvailable = m_OverlayAvailable;
    m_LastDrawnAudioMuted = m_AudioMuted;
    m_LastBoxX = box_x;
    m_LastBoxY = box_y;
    m_LastBoxW = box_w_px;
    m_LastBoxH = box_h_px;
    m_LastBoxValid = TRUE;
    m_ForceRedraw = FALSE;
    m_Visible = TRUE;
}
