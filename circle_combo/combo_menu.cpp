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

CComboPauseMenu::CComboPauseMenu(void)
: m_Row(1),
  m_Col(1),
  m_Selected(0),
  m_LastDrawnSelected(0xFFFFFFFFu),
  m_Visible(FALSE),
  m_LastUpPressed(FALSE),
  m_LastDownPressed(FALSE),
  m_LastEnterPressed(FALSE)
{
}

void CComboPauseMenu::Reset(void)
{
    m_Row = 1;
    m_Col = 1;
    m_Selected = FindFirstSelectable();
    m_LastDrawnSelected = 0xFFFFFFFFu;
    m_Visible = FALSE;
    m_LastUpPressed = FALSE;
    m_LastDownPressed = FALSE;
    m_LastEnterPressed = FALSE;
}

unsigned CComboPauseMenu::FindFirstSelectable(void) const
{
    unsigned item_count = 0u;
    const TComboMenuItem *items = combo_menu_items_get(&item_count);

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
    const TComboMenuItem *items = combo_menu_items_get(&item_count);
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
    const TComboMenuItem *items = combo_menu_items_get(&item_count);
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

TComboMenuAction CComboPauseMenu::ProcessInput(boolean paused, boolean up_pressed, boolean down_pressed, boolean enter_pressed)
{
    if (!paused)
    {
        m_LastUpPressed = up_pressed;
        m_LastDownPressed = down_pressed;
        m_LastEnterPressed = enter_pressed;
        return ComboMenuActionNone;
    }

    unsigned item_count = 0u;
    const TComboMenuItem *items = combo_menu_items_get(&item_count);
    if (item_count == 0u)
    {
        m_LastUpPressed = up_pressed;
        m_LastDownPressed = down_pressed;
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
    if (enter_pressed && !m_LastEnterPressed && items[m_Selected].selectable)
    {
        action = items[m_Selected].action;
    }

    m_LastUpPressed = up_pressed;
    m_LastDownPressed = down_pressed;
    m_LastEnterPressed = enter_pressed;

    return action;
}

void CComboPauseMenu::Render(boolean visible, CGfxTextBoxRenderer *renderer, unsigned screen_width, unsigned screen_height,
                             unsigned anchor_x, unsigned anchor_y, unsigned anchor_w, unsigned anchor_h)
{
    static const char kTitle[] = "PAUSE MENU";
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
    const TComboMenuItem *items = combo_menu_items_get(&item_count);
    if (item_count == 0u)
    {
        return;
    }

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

    const unsigned title_len = ComboStrLen(kTitle);
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
     && m_Row == box_y
     && m_Col == box_x
     && m_LastDrawnSelected == m_Selected)
    {
        return;
    }

    renderer->FillRect(box_x, box_y, box_w_px, box_h_px, BLACK_COLOR);
    renderer->DrawRectBorder(box_x, box_y, box_w_px, box_h_px, BRIGHT_WHITE_COLOR, 2u);

    const unsigned title_x = box_x + ((box_cols - title_len) / 2u) * cell_w;
    const unsigned title_y = box_y;
    renderer->DrawText(title_x, title_y, kTitle, title_style, scale_x, scale_y);

    for (unsigned i = 0; i < item_count; ++i)
    {
        const unsigned row = 2u + i;
        const unsigned y = box_y + (row * cell_h);
        const unsigned text_len = ComboStrLen(items[i].label);
        const unsigned x = box_x + ((box_cols - text_len) / 2u) * cell_w;

        if (items[i].selectable && i == m_Selected && box_cols > 2u)
        {
            renderer->FillRect(box_x + cell_w, y, (box_cols - 2u) * cell_w, cell_h, BRIGHT_WHITE_COLOR);
            renderer->DrawText(x, y, items[i].label, selected_style, scale_x, scale_y);
        }
        else
        {
            renderer->DrawText(x, y, items[i].label, normal_style, scale_x, scale_y);
        }
    }

    m_Row = box_y;
    m_Col = box_x;
    m_LastDrawnSelected = m_Selected;
    m_Visible = TRUE;
}
