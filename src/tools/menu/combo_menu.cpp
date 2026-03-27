#include "combo_menu.h"
#include "combo_locale.h"
#include "viewport_screenshot.h"
#include "fmsx_runtime.h"
#include <string.h>

#if DEPTH == 32
static const TScreenColor kPauseMenuBgColor = COLOR32(0, 0, 0x9B, 0xFF);
#else
static const TScreenColor kPauseMenuBgColor = COLOR16(0, 0, 0x9B >> 3);
#endif

static char ComboToUpperAscii(char ch)
{
    if (ch >= 'a' && ch <= 'z')
    {
        return (char) (ch - 'a' + 'A');
    }
    return ch;
}

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

static int ComboTextEquals(const char *a, const char *b)
{
    unsigned i = 0u;
    if (a == 0 || b == 0)
    {
        return 0;
    }
    while (a[i] != '\0' && b[i] != '\0')
    {
        if (a[i] != b[i])
        {
            return 0;
        }
        ++i;
    }
    return (a[i] == '\0' && b[i] == '\0') ? 1 : 0;
}

static unsigned ComboFindTabSplit(const char *label)
{
    const unsigned len = ComboStrLen(label);
    for (unsigned i = 0u; i < len; ++i)
    {
        if (label[i] == '\t')
        {
            return i;
        }
    }
    return len;
}

static unsigned AudioGainUiLevelFromPercent(unsigned percent)
{
    if (percent > 100u)
    {
        percent = 100u;
    }
    return (percent * 9u + 50u) / 100u;
}

static unsigned AudioGainPercentFromUiLevel(unsigned level)
{
    if (level > 9u)
    {
        level = 9u;
    }
    return (level * 100u + 4u) / 9u;
}

static void ComboClearPixels(TScreenColor *buffer, unsigned count)
{
    if (buffer == 0 || count == 0u)
    {
        return;
    }
    for (unsigned i = 0u; i < count; ++i)
    {
        buffer[i] = (TScreenColor) 0u;
    }
}

static void ComboAppendText(char *dst, unsigned dst_size, unsigned *cursor, const char *src)
{
    if (dst == 0 || dst_size == 0u || cursor == 0 || src == 0)
    {
        return;
    }

    unsigned pos = *cursor;
    while (src[0] != '\0' && pos + 1u < dst_size)
    {
        dst[pos++] = *src++;
    }
    dst[pos] = '\0';
    *cursor = pos;
}

static void ComboBuildTabLabel(char *dst, unsigned dst_size, const char *label, const char *flag)
{
    unsigned cursor = 0u;

    if (dst == 0 || dst_size == 0u)
    {
        return;
    }

    dst[0] = '\0';
    if (label == 0)
    {
        label = "";
    }
    if (flag == 0)
    {
        flag = "";
    }

    ComboAppendText(dst, dst_size, &cursor, label);
    if (cursor + 1u < dst_size)
    {
        dst[cursor++] = '\t';
        dst[cursor] = '\0';
    }
    ComboAppendText(dst, dst_size, &cursor, flag);
}

static const char *ComboBaseName(const char *path)
{
    const char *base = path;
    if (path == 0)
    {
        return "";
    }
    for (const char *p = path; *p != '\0'; ++p)
    {
        if (*p == '/' || *p == '\\' || *p == ':')
        {
            base = p + 1;
        }
    }
    return base;
}

static void ComboBuildRomIdFromPath(const char *path, char *dst, unsigned dst_size)
{
    unsigned n = 0u;
    const char *base = ComboBaseName(path);
    const char *dot = 0;

    if (dst == 0 || dst_size == 0u)
    {
        return;
    }
    dst[0] = '\0';

    for (const char *p = base; *p != '\0'; ++p)
    {
        if (*p == '.')
        {
            dot = p;
        }
    }

    for (const char *p = base; *p != '\0' && p != dot && n + 1u < dst_size; ++p)
    {
        char ch = ComboToUpperAscii(*p);
        if ((ch >= 'A' && ch <= 'Z') || (ch >= '0' && ch <= '9') || ch == '_' || ch == '-')
        {
            dst[n++] = ch;
        }
    }
    dst[n] = '\0';
}

static void ComboBuildTitleFromPath(const char *path, char *dst, unsigned dst_size)
{
    unsigned n = 0u;
    int last_space = 1;
    const char *base = ComboBaseName(path);
    const char *dot = 0;

    if (dst == 0 || dst_size == 0u)
    {
        return;
    }
    dst[0] = '\0';

    for (const char *p = base; *p != '\0'; ++p)
    {
        if (*p == '.')
        {
            dot = p;
        }
    }

    for (const char *p = base; *p != '\0' && p != dot && n + 1u < dst_size; ++p)
    {
        char ch = *p;
        if (ch == '_' || ch == '-')
        {
            ch = ' ';
        }
        if (ch == ' ')
        {
            if (!last_space && n + 1u < dst_size)
            {
                dst[n++] = ' ';
                last_space = 1;
            }
            continue;
        }
        if (ch >= 'A' && ch <= 'Z')
        {
            if (!last_space && n + 1u < dst_size)
            {
                dst[n++] = ' ';
            }
            dst[n++] = ch;
            last_space = 0;
            continue;
        }
        if (ch >= 'a' && ch <= 'z')
        {
            if (last_space)
            {
                ch = (char) (ch - 'a' + 'A');
            }
            dst[n++] = ch;
            last_space = 0;
            continue;
        }
        if (ch >= '0' && ch <= '9')
        {
            if (!last_space && n > 0u && !(dst[n - 1u] >= '0' && dst[n - 1u] <= '9') && n + 1u < dst_size)
            {
                dst[n++] = ' ';
            }
            dst[n++] = ch;
            last_space = 0;
        }
    }
    if (n > 0u && dst[n - 1u] == ' ')
    {
        --n;
    }
    dst[n] = '\0';
}

static void ComboAppendUnsigned(char *dst, unsigned dst_size, unsigned *cursor, unsigned value)
{
    char digits[12];
    unsigned count = 0u;

    if (dst == 0 || dst_size == 0u || cursor == 0)
    {
        return;
    }

    do
    {
        digits[count++] = (char) ('0' + (value % 10u));
        value /= 10u;
    } while (value != 0u && count < sizeof(digits));

    while (count > 0u)
    {
        char ch[2];
        ch[0] = digits[--count];
        ch[1] = '\0';
        ComboAppendText(dst, dst_size, cursor, ch);
    }
}

static void ComboBuildLineLabel(char *dst, unsigned dst_size, const char *prefix, unsigned line)
{
    unsigned cursor = 0u;

    if (dst == 0 || dst_size == 0u)
    {
        return;
    }

    dst[0] = '\0';
    if (prefix == 0 || prefix[0] == '\0' || line == 0u)
    {
        return;
    }

    ComboAppendText(dst, dst_size, &cursor, prefix);
    ComboAppendText(dst, dst_size, &cursor, " ");
    ComboAppendUnsigned(dst, dst_size, &cursor, line);
}

typedef struct
{
    boolean active;
    boolean is_enum;
    uint16_t values[16];
    unsigned value_count;
} TGameMasterSelectorInfo;

static int ComboIsDigit(char ch)
{
    return ch >= '0' && ch <= '9';
}

static boolean ComboParseUnsigned(const char *text, unsigned *value, unsigned *used_len)
{
    unsigned cursor = 0u;
    unsigned parsed = 0u;

    if (text == 0 || value == 0)
    {
        return FALSE;
    }
    while (text[cursor] == ' ')
    {
        ++cursor;
    }
    if (!ComboIsDigit(text[cursor]))
    {
        return FALSE;
    }
    while (ComboIsDigit(text[cursor]))
    {
        parsed = (parsed * 10u) + (unsigned) (text[cursor] - '0');
        ++cursor;
    }
    if (used_len != 0)
    {
        *used_len = cursor;
    }
    *value = parsed;
    return TRUE;
}

static boolean ComboExtractParenthesizedSuffix(const char *title, char *dst, unsigned dst_size)
{
    const unsigned len = ComboStrLen(title);
    unsigned start = len;
    unsigned end = len;

    if (dst == 0 || dst_size == 0u)
    {
        return FALSE;
    }
    dst[0] = '\0';
    if (title == 0 || len < 3u || title[len - 1u] != ')')
    {
        return FALSE;
    }

    end = len - 1u;
    for (unsigned i = end; i > 0u; --i)
    {
        if (title[i - 1u] == '(')
        {
            start = i;
            break;
        }
    }
    if (start >= end)
    {
        return FALSE;
    }

    ComboSliceCopy(dst, dst_size, title, start, end - start);
    return TRUE;
}

static boolean ComboParseRangeSelector(const char *text, TGameMasterSelectorInfo *info)
{
    unsigned min_value = 0u;
    unsigned max_value = 0u;
    unsigned used = 0u;

    if (text == 0 || info == 0)
    {
        return FALSE;
    }
    if (!ComboParseUnsigned(text, &min_value, &used))
    {
        return FALSE;
    }
    text += used;
    while (*text == ' ')
    {
        ++text;
    }
    if (*text != '-')
    {
        return FALSE;
    }
    ++text;
    if (!ComboParseUnsigned(text, &max_value, &used))
    {
        return FALSE;
    }
    text += used;
    while (*text == ' ')
    {
        ++text;
    }
    if (*text != '\0' || min_value > max_value || max_value > 0xFFFFu)
    {
        return FALSE;
    }

    info->active = TRUE;
    info->is_enum = FALSE;
    info->value_count = 0u;
    for (unsigned value = min_value; value <= max_value && info->value_count < 16u; ++value)
    {
        info->values[info->value_count++] = (uint16_t) value;
    }
    return info->value_count > 0u ? TRUE : FALSE;
}

static boolean ComboParseEnumSelector(const char *text, TGameMasterSelectorInfo *info)
{
    const char *cursor = text;

    if (text == 0 || info == 0)
    {
        return FALSE;
    }

    info->active = FALSE;
    info->is_enum = TRUE;
    info->value_count = 0u;

    while (*cursor != '\0' && info->value_count < 16u)
    {
        unsigned number = 0u;
        unsigned used = 0u;

        while (*cursor == ' ')
        {
            ++cursor;
        }
        if (!ComboParseUnsigned(cursor, &number, &used))
        {
            ++cursor;
            continue;
        }
        cursor += used;
        while (*cursor == ' ')
        {
            ++cursor;
        }
        if (*cursor != '=')
        {
            continue;
        }
        if (number <= 0xFFFFu)
        {
            info->values[info->value_count++] = (uint16_t) number;
            info->active = TRUE;
        }
        ++cursor;
        while (*cursor != '\0' && *cursor != ' ')
        {
            ++cursor;
        }
    }

    return info->active;
}

static boolean ComboDescribeGameMasterSelector(const TGameMasterCheat *cheat, TGameMasterSelectorInfo *info)
{
    char suffix[64];

    if (info == 0)
    {
        return FALSE;
    }
    info->active = FALSE;
    info->is_enum = FALSE;
    info->value_count = 0u;

    if (cheat == 0 || cheat->poke_count != 1u)
    {
        return FALSE;
    }
    if (!ComboExtractParenthesizedSuffix(cheat->title, suffix, sizeof(suffix)))
    {
        return FALSE;
    }
    if (ComboParseRangeSelector(suffix, info))
    {
        return TRUE;
    }
    if (ComboParseEnumSelector(suffix, info))
    {
        return TRUE;
    }
    return FALSE;
}

static boolean ComboGameMasterCheatCurrentValue(const TGameMasterCatalog *catalog,
                                                const TGameMasterCheat *cheat,
                                                uint16_t *value)
{
    const TGameMasterPoke *poke = 0;

    if (catalog == 0 || cheat == 0 || value == 0 || cheat->poke_count != 1u)
    {
        return FALSE;
    }
    if (cheat->poke_first >= catalog->poke_count)
    {
        return FALSE;
    }

    poke = &catalog->pokes[cheat->poke_first];
    if (poke->size_bits == 16u)
    {
        return fmsx_runtime_peek16(poke->address, value);
    }
    if (poke->size_bits == 8u)
    {
        uint8_t value8 = 0u;
        if (!fmsx_runtime_peek8(poke->address, &value8))
        {
            return FALSE;
        }
        *value = value8;
        return TRUE;
    }
    return FALSE;
}

static int ComboSelectorFindValue(const TGameMasterSelectorInfo *info, uint16_t value)
{
    if (info == 0 || !info->active)
    {
        return -1;
    }
    for (unsigned i = 0u; i < info->value_count; ++i)
    {
        if (info->values[i] == value)
        {
            return (int) i;
        }
    }
    return -1;
}

static uint16_t ComboSelectorStepValue(const TGameMasterSelectorInfo *info,
                                       uint16_t current_value,
                                       boolean current_valid,
                                       int direction)
{
    int index = -1;

    if (info == 0 || !info->active || info->value_count == 0u)
    {
        return current_value;
    }

    if (current_valid)
    {
        index = ComboSelectorFindValue(info, current_value);
    }

    if (index < 0)
    {
        return direction < 0 ? info->values[info->value_count - 1u] : info->values[0];
    }

    index += direction;
    if (index < 0)
    {
        index = (int) info->value_count - 1;
    }
    else if ((unsigned) index >= info->value_count)
    {
        index = 0;
    }
    return info->values[index];
}

static void ComboBuildSelectorFlag(char *dst, unsigned dst_size, uint16_t value)
{
    unsigned cursor = 0u;

    if (dst == 0 || dst_size == 0u)
    {
        return;
    }

    dst[0] = '\0';
    ComboAppendUnsigned(dst, dst_size, &cursor, (unsigned) value);
}

static unsigned ComboFindFirstContaining(const char *const *labels, unsigned count, char letter)
{
    const char target = ComboToUpperAscii(letter);
    unsigned found_contains = count;

    if (target < 'A' || target > 'Z')
    {
        return count;
    }

    for (unsigned i = 0u; i < count; ++i)
    {
        const char *label = labels[i];
        if (label == 0)
        {
            continue;
        }

        for (unsigned j = 0u; label[j] != '\0'; ++j)
        {
            const char ch = ComboToUpperAscii(label[j]);
            if (j == 0u && ch == target)
            {
                return i;
            }
            if (found_contains == count && ch == target)
            {
                found_contains = i;
            }
        }
    }

    return found_contains;
}

void CComboPauseMenu::CopySmallText(char *dst, unsigned dst_size, const char *src)
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
    while (src[i] != '\0' && i + 1u < dst_size)
    {
        dst[i] = src[i];
        ++i;
    }
    dst[i] = '\0';
}

CComboPauseMenu::CComboPauseMenu(void)
: m_Row(1),
  m_Col(1),
  m_Selected(0),
  m_LastDrawnSelected(0xFFFFFFFFu),
  m_Visible(FALSE),
    m_View(MenuViewRoot),
    m_ScalePercent(250u),
    m_MaxScalePercent(450u),
    m_Language(ComboLanguageEN),
    m_ResolutionMode(0u),
    m_WidescreenEnabled(FALSE),
    m_ScanlineMode(0u),
    m_RefreshRateHz(60u),
    m_DiskRomEnabled(TRUE),
    m_KanjiRomEnabled(FALSE),
    m_BootMode(0u),
    m_MachineProfile(0u),
    m_RamMapperKb(256u),
    m_MegaRamKb(0u),
    m_Z80TurboMode(0u),
    m_RenshaMode(0u),
    m_FmMusicEnabled(TRUE),
    m_SccCartEnabled(TRUE),
    m_SccDualCartEnabled(FALSE),
    m_SccDualCartAvailable(TRUE),
    m_OverlayEnabled(FALSE),
    m_OverlayAvailable(FALSE),
    m_DebugLogEnabled(FALSE),
    m_AudioGainPercent(50u),
    m_LoadRomSlot1Name{0},
    m_LoadRomSlot2Name{0},
    m_LoadDiskDrive1Name{0},
    m_LoadDiskDrive2Name{0},
    m_FileBrowser(),
    m_RomBrowserItems{{0}},
    m_RomBrowserItemLabels{{0}},
    m_RomBrowserEmptyLabel{0},
    m_HasPendingRomSelection(FALSE),
    m_PendingRomSlot(0u),
    m_PendingRomPath{0},
    m_HasPendingRomBrowserOpen(FALSE),
    m_PendingRomBrowserSlot(0u),
    m_PendingRomBrowserPath{0},
    m_HasPendingDiskSelection(FALSE),
    m_PendingDiskDrive(0u),
    m_PendingDiskPath{0},
    m_HasPendingDiskBrowserOpen(FALSE),
    m_PendingDiskBrowserDrive(0u),
    m_PendingDiskBrowserPath{0},
    m_GameMasterCatalog(0),
    m_GameMasterLoadStatus((unsigned) GameMasterLoadFileOpenFailed),
    m_GameMasterErrorLine(0u),
    m_GameMasterSelectedGame(0u),
    m_GameMasterCheatSelected(0u),
    m_GameMasterCheatTop(0u),
    m_HasPendingGameMasterCheat(FALSE),
    m_PendingGameMasterGame(0u),
    m_PendingGameMasterCheat(0u),
    m_PendingGameMasterCheatHasValueOverride(FALSE),
    m_PendingGameMasterCheatValueOverride(0u),
    m_GameMasterApplyBlinkFrames(0u),
    m_GameMasterCheatItems{{0}},
    m_GameMasterCheatItemLabels{{0}},
    m_LastBackPressed(FALSE),
    m_LastDrawnView(MenuViewRoot),
    m_LastDrawnScalePercent(0u),
    m_LastDrawnMaxScalePercent(0u),
    m_LastDrawnLanguage(ComboLanguageEN),
    m_LastDrawnResolutionMode(0u),
    m_LastDrawnWidescreen(FALSE),
    m_LastDrawnScanlineMode(0u),
    m_LastDrawnRefreshRateHz(60u),
    m_LastDrawnDiskRomEnabled(TRUE),
    m_LastDrawnKanjiRomEnabled(FALSE),
    m_LastDrawnBootMode(0u),
    m_LastDrawnMachineProfile(0u),
    m_LastDrawnRamMapperKb(0u),
    m_LastDrawnMegaRamKb(0u),
    m_LastDrawnZ80TurboMode(0u),
    m_LastDrawnRenshaMode(0u),
    m_LastDrawnFmMusic(TRUE),
    m_LastDrawnSccCart(TRUE),
    m_LastDrawnSccDualCart(FALSE),
    m_LastDrawnSccDualCartAvailable(TRUE),
    m_LastDrawnOverlay(FALSE),
    m_LastDrawnOverlayAvailable(FALSE),
    m_LastDrawnDebugLogEnabled(FALSE),
    m_LastDrawnAudioGainPercent(50u),
    m_LastDrawnLoadRomSlot1Name{0},
    m_LastDrawnLoadRomSlot2Name{0},
    m_LastDrawnLoadDiskDrive1Name{0},
    m_LastDrawnLoadDiskDrive2Name{0},
    m_LastDrawnBrowserTop(0xFFFFFFFFu),
    m_LastDrawnBrowserCount(0xFFFFFFFFu),
    m_LastDrawnBrowserSelectedAbs(0xFFFFFFFFu),
    m_LastDrawnBrowserMode(0xFFFFFFFFu),
    m_LastDrawnBrowserSlot(0xFFFFFFFFu),
    m_LastDrawnBrowserContentStamp(0xFFFFFFFFu),
    m_BrowserWarmupRedraws(0u),
    m_ForceRedraw(TRUE),
    m_ForceHighlightRedraw(FALSE),
    m_ForceContentRedraw(FALSE),
    m_SuppressNextRender(FALSE),
    m_RequestBackgroundRestore(FALSE),
    m_LastBoxX(0),
    m_LastBoxY(0),
    m_LastBoxW(0),
    m_LastBoxH(0),
    m_LastBoxValid(FALSE),
    m_LastUpPressed(FALSE),
    m_LastDownPressed(FALSE),
    m_LastPageUpPressed(FALSE),
    m_LastPageDownPressed(FALSE),
    m_LastLeftPressed(FALSE),
    m_LastRightPressed(FALSE),
    m_LastEnterPressed(FALSE),
    m_LastDeletePressed(FALSE),
    m_MenuBackbuffer(0),
    m_MenuBackbufferCapacityPixels(0u),
    m_MenuBackbufferW(0u),
    m_MenuBackbufferH(0u),
    m_MenuBackbufferX(0u),
    m_MenuBackbufferY(0u)
{
    CopySmallText(m_LoadRomSlot1Name, sizeof(m_LoadRomSlot1Name), "");
    CopySmallText(m_LoadRomSlot2Name, sizeof(m_LoadRomSlot2Name), "");
    CopySmallText(m_LoadDiskDrive1Name, sizeof(m_LoadDiskDrive1Name), "");
    CopySmallText(m_LoadDiskDrive2Name, sizeof(m_LoadDiskDrive2Name), "");
    CopySmallText(m_RomBrowserEmptyLabel, sizeof(m_RomBrowserEmptyLabel), "");
    m_HasPendingRomSelection = FALSE;
    m_PendingRomSlot = 0u;
    CopySmallText(m_PendingRomPath, sizeof(m_PendingRomPath), "");
    m_HasPendingRomBrowserOpen = FALSE;
    m_PendingRomBrowserSlot = 0u;
    CopySmallText(m_PendingRomBrowserPath, sizeof(m_PendingRomBrowserPath), "");
    m_HasPendingDiskSelection = FALSE;
    m_PendingDiskDrive = 0u;
    CopySmallText(m_PendingDiskPath, sizeof(m_PendingDiskPath), "");
    m_HasPendingDiskBrowserOpen = FALSE;
    m_PendingDiskBrowserDrive = 0u;
    CopySmallText(m_PendingDiskBrowserPath, sizeof(m_PendingDiskBrowserPath), "");
    ResetGameMasterState();
    CopySmallText(m_LastDrawnLoadRomSlot1Name, sizeof(m_LastDrawnLoadRomSlot1Name), "");
    CopySmallText(m_LastDrawnLoadRomSlot2Name, sizeof(m_LastDrawnLoadRomSlot2Name), "");
    CopySmallText(m_LastDrawnLoadDiskDrive1Name, sizeof(m_LastDrawnLoadDiskDrive1Name), "");
    CopySmallText(m_LastDrawnLoadDiskDrive2Name, sizeof(m_LastDrawnLoadDiskDrive2Name), "");
}

CComboPauseMenu::~CComboPauseMenu(void)
{
    if (m_MenuBackbuffer != 0)
    {
        delete[] m_MenuBackbuffer;
        m_MenuBackbuffer = 0;
        m_MenuBackbufferCapacityPixels = 0u;
    }
    m_MenuBackbufferW = 0u;
    m_MenuBackbufferH = 0u;
    m_MenuBackbufferX = 0u;
    m_MenuBackbufferY = 0u;
}

void CComboPauseMenu::ResetGameMasterState(void)
{
    m_GameMasterCatalog = 0;
    m_GameMasterLoadStatus = (unsigned) GameMasterLoadFileOpenFailed;
    m_GameMasterErrorLine = 0u;
    m_GameMasterSelectedGame = 0u;
    m_GameMasterCheatSelected = 0u;
    m_GameMasterCheatTop = 0u;
    m_HasPendingGameMasterCheat = FALSE;
    m_PendingGameMasterGame = 0u;
    m_PendingGameMasterCheat = 0u;
    m_PendingGameMasterCheatHasValueOverride = FALSE;
    m_PendingGameMasterCheatValueOverride = 0u;
    m_GameMasterApplyBlinkFrames = 0u;
    for (unsigned i = 0u; i < CComboFileBrowser::kVisibleRows + 2u; ++i)
    {
        m_GameMasterCheatItems[i].label = m_GameMasterCheatItemLabels[i];
        m_GameMasterCheatItems[i].action = ComboMenuActionNone;
        m_GameMasterCheatItems[i].selectable = FALSE;
        m_GameMasterCheatItems[i].redraw_policy = ComboMenuRedrawMenuOnly;
        m_GameMasterCheatItemLabels[i][0] = '\0';
    }
}

void CComboPauseMenu::Reset(void)
{
    m_Row = 1;
    m_Col = 1;
    m_View = MenuViewRoot;
    m_Selected = FindFirstSelectable();
    m_LastDrawnSelected = 0xFFFFFFFFu;
    m_Visible = FALSE;
    m_LastBackPressed = FALSE;
    m_LastDrawnView = MenuViewRoot;
    m_LastDrawnScalePercent = m_ScalePercent;
    m_LastDrawnMaxScalePercent = m_MaxScalePercent;
    m_LastDrawnLanguage = m_Language;
    m_LastDrawnResolutionMode = m_ResolutionMode;
    m_LastDrawnWidescreen = m_WidescreenEnabled;
    m_LastDrawnScanlineMode = m_ScanlineMode;
    m_LastDrawnRefreshRateHz = m_RefreshRateHz;
    m_LastDrawnDiskRomEnabled = m_DiskRomEnabled;
    m_LastDrawnKanjiRomEnabled = m_KanjiRomEnabled;
    m_LastDrawnBootMode = m_BootMode;
    m_LastDrawnMachineProfile = m_MachineProfile;
    m_LastDrawnZ80TurboMode = m_Z80TurboMode;
    m_LastDrawnRenshaMode = m_RenshaMode;
    m_LastDrawnFmMusic = m_FmMusicEnabled;
    m_LastDrawnSccCart = m_SccCartEnabled;
    m_LastDrawnSccDualCart = m_SccDualCartEnabled;
    m_LastDrawnSccDualCartAvailable = m_SccDualCartAvailable;
    m_LastDrawnOverlay = m_OverlayEnabled;
    m_LastDrawnOverlayAvailable = m_OverlayAvailable;
    m_LastDrawnDebugLogEnabled = m_DebugLogEnabled;
    m_LastDrawnAudioGainPercent = m_AudioGainPercent;
    m_LastDrawnBrowserTop = 0xFFFFFFFFu;
    m_LastDrawnBrowserCount = 0xFFFFFFFFu;
    m_LastDrawnBrowserSelectedAbs = 0xFFFFFFFFu;
    m_LastDrawnBrowserMode = 0xFFFFFFFFu;
    m_LastDrawnBrowserSlot = 0xFFFFFFFFu;
    m_LastDrawnBrowserContentStamp = 0xFFFFFFFFu;
    m_BrowserWarmupRedraws = 0u;
    m_FileBrowser.Reset();
    m_HasPendingRomSelection = FALSE;
    m_PendingRomSlot = 0u;
    CopySmallText(m_PendingRomPath, sizeof(m_PendingRomPath), "");
    m_HasPendingRomBrowserOpen = FALSE;
    m_PendingRomBrowserSlot = 0u;
    CopySmallText(m_PendingRomBrowserPath, sizeof(m_PendingRomBrowserPath), "");
    m_HasPendingDiskSelection = FALSE;
    m_PendingDiskDrive = 0u;
    CopySmallText(m_PendingDiskPath, sizeof(m_PendingDiskPath), "");
    m_HasPendingDiskBrowserOpen = FALSE;
    m_PendingDiskBrowserDrive = 0u;
    CopySmallText(m_PendingDiskBrowserPath, sizeof(m_PendingDiskBrowserPath), "");
    ResetGameMasterState();
    CopySmallText(m_LastDrawnLoadRomSlot1Name, sizeof(m_LastDrawnLoadRomSlot1Name), m_LoadRomSlot1Name);
    CopySmallText(m_LastDrawnLoadRomSlot2Name, sizeof(m_LastDrawnLoadRomSlot2Name), m_LoadRomSlot2Name);
    CopySmallText(m_LastDrawnLoadDiskDrive1Name, sizeof(m_LastDrawnLoadDiskDrive1Name), m_LoadDiskDrive1Name);
    CopySmallText(m_LastDrawnLoadDiskDrive2Name, sizeof(m_LastDrawnLoadDiskDrive2Name), m_LoadDiskDrive2Name);
    m_ForceRedraw = TRUE;
    m_ForceHighlightRedraw = FALSE;
    m_ForceContentRedraw = FALSE;
    m_SuppressNextRender = FALSE;
    m_RequestBackgroundRestore = FALSE;
    m_LastBoxValid = FALSE;
    m_LastUpPressed = FALSE;
    m_LastDownPressed = FALSE;
    m_LastPageUpPressed = FALSE;
    m_LastPageDownPressed = FALSE;
    m_LastLeftPressed = FALSE;
    m_LastRightPressed = FALSE;
    m_LastEnterPressed = FALSE;
    m_LastDeletePressed = FALSE;
    m_MenuBackbufferW = 0u;
    m_MenuBackbufferH = 0u;
    m_MenuBackbufferX = 0u;
    m_MenuBackbufferY = 0u;
}

void CComboPauseMenu::SetScalePercent(unsigned percent)
{
    if (percent < 250u)
    {
        percent = 250u;
    }
    if (percent > 450u) percent = 450u;
    if (percent > m_MaxScalePercent) percent = m_MaxScalePercent;

    if (m_ScalePercent != percent)
    {
        m_ScalePercent = percent;
        m_ForceRedraw = TRUE;
    }
}

void CComboPauseMenu::SetMaxScalePercent(unsigned percent)
{
    if (percent < 250u) percent = 250u;
    if (percent > 450u) percent = 450u;
    if (m_MaxScalePercent != percent)
    {
        m_MaxScalePercent = percent;
        if (m_ScalePercent > m_MaxScalePercent)
        {
            m_ScalePercent = m_MaxScalePercent;
        }
        m_ForceRedraw = TRUE;
    }
}

void CComboPauseMenu::SetLanguage(unsigned language)
{
    language = combo_locale_clamp_language(language);
    if (m_Language != language)
    {
        m_Language = language;
        m_ForceRedraw = TRUE;
    }
}

void CComboPauseMenu::SetResolutionMode(unsigned mode)
{
    if (mode > 3u)
    {
        mode = 0u;
    }
    if (m_ResolutionMode != mode)
    {
        m_ResolutionMode = mode;
        m_ForceRedraw = TRUE;
    }
}

unsigned CComboPauseMenu::GetLanguage(void) const
{
    return m_Language;
}

unsigned CComboPauseMenu::GetResolutionMode(void) const
{
    return m_ResolutionMode;
}

unsigned CComboPauseMenu::GetScalePercent(void) const
{
    return m_ScalePercent;
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
    hz = (hz == 50u) ? 50u : 60u;

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

void CComboPauseMenu::SetDiskRomEnabled(boolean enabled)
{
    enabled = enabled ? TRUE : FALSE;
    if (m_DiskRomEnabled != enabled)
    {
        m_DiskRomEnabled = enabled;
        m_ForceRedraw = TRUE;
    }
}

boolean CComboPauseMenu::IsDiskRomEnabled(void) const
{
    return m_DiskRomEnabled ? TRUE : FALSE;
}

void CComboPauseMenu::SetKanjiRomEnabled(boolean enabled)
{
    enabled = enabled ? TRUE : FALSE;
    if (m_KanjiRomEnabled != enabled)
    {
        m_KanjiRomEnabled = enabled;
        m_ForceRedraw = TRUE;
    }
}

boolean CComboPauseMenu::IsKanjiRomEnabled(void) const
{
    return m_KanjiRomEnabled ? TRUE : FALSE;
}

void CComboPauseMenu::SetBootMode(unsigned mode)
{
    if (mode > 2u)
    {
        mode = 0u;
    }

    if (m_BootMode != mode)
    {
        m_BootMode = mode;
        m_ForceRedraw = TRUE;
    }
}

unsigned CComboPauseMenu::GetBootMode(void) const
{
    return m_BootMode;
}

void CComboPauseMenu::SetMachineProfile(unsigned profile)
{
    if (profile > 2u)
    {
        profile = 0u;
    }

    if (m_MachineProfile != profile)
    {
        m_MachineProfile = profile;
        m_ForceRedraw = TRUE;
    }
}

unsigned CComboPauseMenu::GetMachineProfile(void) const
{
    return m_MachineProfile;
}

void CComboPauseMenu::SetRamMapperKb(unsigned kb)
{
    if (kb != 256u && kb != 512u && kb != 1024u)
    {
        kb = 256u;
    }
    if (m_RamMapperKb != kb)
    {
        m_RamMapperKb = kb;
        m_ForceRedraw = TRUE;
    }
}

unsigned CComboPauseMenu::GetRamMapperKb(void) const
{
    return m_RamMapperKb;
}

void CComboPauseMenu::SetMegaRamKb(unsigned kb)
{
    if (kb != 0u && kb != 256u && kb != 512u && kb != 1024u)
    {
        kb = 0u;
    }
    if (m_MegaRamKb != kb)
    {
        m_MegaRamKb = kb;
        m_ForceRedraw = TRUE;
    }
}

unsigned CComboPauseMenu::GetMegaRamKb(void) const
{
    return m_MegaRamKb;
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

void CComboPauseMenu::SetFmMusicEnabled(boolean enabled)
{
    enabled = enabled ? TRUE : FALSE;
    if (m_FmMusicEnabled != enabled)
    {
        m_FmMusicEnabled = enabled;
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

void CComboPauseMenu::SetSccDualCartState(boolean enabled, boolean available)
{
    enabled = enabled ? TRUE : FALSE;
    available = available ? TRUE : FALSE;
    if (m_SccDualCartEnabled != enabled || m_SccDualCartAvailable != available)
    {
        m_SccDualCartEnabled = enabled;
        m_SccDualCartAvailable = available;
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

void CComboPauseMenu::SetDebugLogEnabled(boolean enabled)
{
    enabled = enabled ? TRUE : FALSE;
    if (m_DebugLogEnabled != enabled)
    {
        m_DebugLogEnabled = enabled;
        m_ForceRedraw = TRUE;
    }
}

void CComboPauseMenu::SetAudioGainPercent(unsigned percent)
{
    if (percent > 100u)
    {
        percent = 100u;
    }
    if (m_AudioGainPercent != percent)
    {
        m_AudioGainPercent = percent;
        m_ForceRedraw = TRUE;
    }
}

void CComboPauseMenu::SetLoadRomSlotNames(const char *slot1_name, const char *slot2_name)
{
    if (slot1_name == 0 || slot1_name[0] == '\0')
    {
        slot1_name = "";
    }
    if (slot2_name == 0 || slot2_name[0] == '\0')
    {
        slot2_name = "";
    }

    if (!ComboTextEquals(m_LoadRomSlot1Name, slot1_name) || !ComboTextEquals(m_LoadRomSlot2Name, slot2_name))
    {
        CopySmallText(m_LoadRomSlot1Name, sizeof(m_LoadRomSlot1Name), slot1_name);
        CopySmallText(m_LoadRomSlot2Name, sizeof(m_LoadRomSlot2Name), slot2_name);
        m_ForceRedraw = TRUE;
    }
}

void CComboPauseMenu::SetLoadDiskDriveNames(const char *drive1_name, const char *drive2_name)
{
    if (drive1_name == 0 || drive1_name[0] == '\0')
    {
        drive1_name = "";
    }
    if (drive2_name == 0 || drive2_name[0] == '\0')
    {
        drive2_name = "";
    }

    if (!ComboTextEquals(m_LoadDiskDrive1Name, drive1_name) || !ComboTextEquals(m_LoadDiskDrive2Name, drive2_name))
    {
        CopySmallText(m_LoadDiskDrive1Name, sizeof(m_LoadDiskDrive1Name), drive1_name);
        CopySmallText(m_LoadDiskDrive2Name, sizeof(m_LoadDiskDrive2Name), drive2_name);
        m_ForceRedraw = TRUE;
    }
}

unsigned CComboPauseMenu::GetAudioGainPercent(void) const
{
    return m_AudioGainPercent;
}

boolean CComboPauseMenu::ConsumePendingRomSelection(unsigned *slot_index, char *path, unsigned path_size)
{
    if (!m_HasPendingRomSelection)
    {
        return FALSE;
    }
    if (slot_index != 0)
    {
        *slot_index = m_PendingRomSlot;
    }
    if (path != 0 && path_size > 0u)
    {
        CopySmallText(path, path_size, m_PendingRomPath);
    }
    m_HasPendingRomSelection = FALSE;
    m_PendingRomSlot = 0u;
    CopySmallText(m_PendingRomPath, sizeof(m_PendingRomPath), "");
    return TRUE;
}

boolean CComboPauseMenu::ConsumePendingDiskSelection(unsigned *drive_index, char *path, unsigned path_size)
{
    if (!m_HasPendingDiskSelection)
    {
        return FALSE;
    }
    if (drive_index != 0)
    {
        *drive_index = m_PendingDiskDrive;
    }
    if (path != 0 && path_size > 0u)
    {
        CopySmallText(path, path_size, m_PendingDiskPath);
    }
    m_HasPendingDiskSelection = FALSE;
    m_PendingDiskDrive = 0u;
    CopySmallText(m_PendingDiskPath, sizeof(m_PendingDiskPath), "");
    return TRUE;
}

boolean CComboPauseMenu::ConsumePendingRomBrowserOpen(unsigned *slot_index, char *path, unsigned path_size)
{
    if (!m_HasPendingRomBrowserOpen)
    {
        return FALSE;
    }
    if (slot_index != 0)
    {
        *slot_index = m_PendingRomBrowserSlot;
    }
    if (path != 0 && path_size > 0u)
    {
        CopySmallText(path, path_size, m_PendingRomBrowserPath);
    }
    m_HasPendingRomBrowserOpen = FALSE;
    m_PendingRomBrowserSlot = 0u;
    CopySmallText(m_PendingRomBrowserPath, sizeof(m_PendingRomBrowserPath), "");
    return TRUE;
}

boolean CComboPauseMenu::ConsumePendingDiskBrowserOpen(unsigned *drive_index, char *path, unsigned path_size)
{
    if (!m_HasPendingDiskBrowserOpen)
    {
        return FALSE;
    }
    if (drive_index != 0)
    {
        *drive_index = m_PendingDiskBrowserDrive;
    }
    if (path != 0 && path_size > 0u)
    {
        CopySmallText(path, path_size, m_PendingDiskBrowserPath);
    }
    m_HasPendingDiskBrowserOpen = FALSE;
    m_PendingDiskBrowserDrive = 0u;
    CopySmallText(m_PendingDiskBrowserPath, sizeof(m_PendingDiskBrowserPath), "");
    return TRUE;
}

boolean CComboPauseMenu::ConsumePendingGameMasterCheat(unsigned *game_index,
                                                       unsigned *cheat_index,
                                                       boolean *has_value_override,
                                                       uint16_t *value_override)
{
    if (!m_HasPendingGameMasterCheat)
    {
        return FALSE;
    }
    if (game_index != 0)
    {
        *game_index = m_PendingGameMasterGame;
    }
    if (cheat_index != 0)
    {
        *cheat_index = m_PendingGameMasterCheat;
    }
    if (has_value_override != 0)
    {
        *has_value_override = m_PendingGameMasterCheatHasValueOverride;
    }
    if (value_override != 0)
    {
        *value_override = m_PendingGameMasterCheatValueOverride;
    }
    m_HasPendingGameMasterCheat = FALSE;
    m_PendingGameMasterGame = 0u;
    m_PendingGameMasterCheat = 0u;
    m_PendingGameMasterCheatHasValueOverride = FALSE;
    m_PendingGameMasterCheatValueOverride = 0u;
    return TRUE;
}

void CComboPauseMenu::OpenFileBrowser(unsigned mode, unsigned slot_index, const char *path)
{
    if (path != 0 && path[0] != '\0')
    {
        m_FileBrowser.EnterDirectory(path);
    }
    else
    {
        m_FileBrowser.Open(mode, slot_index);
    }
    m_View = (mode == (unsigned) ComboFileBrowserModeDisk) ? MenuViewLoadDiskBrowser : MenuViewLoadRomBrowser;
    m_Selected = 0u;
    m_ForceRedraw = TRUE;
    m_ForceHighlightRedraw = FALSE;
    m_RequestBackgroundRestore = TRUE;
    m_BrowserWarmupRedraws = 1u;
}

void CComboPauseMenu::OpenGameMaster(TGameMasterCatalog *catalog, unsigned load_status, unsigned error_line)
{
    ResetGameMasterState();
    m_GameMasterLoadStatus = load_status;
    m_GameMasterErrorLine = error_line;
    m_GameMasterCatalog = catalog;

    m_FileBrowser.Reset();
    m_FileBrowser.OpenGameMaster();
    m_Selected = m_FileBrowser.GetSelectedVisibleIndex();

    m_View = MenuViewGameMasterBrowser;
    m_LastDrawnSelected = 0xFFFFFFFFu;
    m_LastDrawnBrowserTop = 0xFFFFFFFFu;
    m_LastDrawnBrowserCount = 0xFFFFFFFFu;
    m_LastDrawnBrowserSelectedAbs = 0xFFFFFFFFu;
    m_LastDrawnBrowserMode = 0xFFFFFFFFu;
    m_LastDrawnBrowserSlot = 0xFFFFFFFFu;
    m_LastDrawnBrowserContentStamp = 0xFFFFFFFFu;
    m_ForceRedraw = TRUE;
    m_ForceHighlightRedraw = FALSE;
    m_ForceContentRedraw = FALSE;
    m_RequestBackgroundRestore = TRUE;
    m_BrowserWarmupRedraws = 1u;
}

boolean CComboPauseMenu::IsInSettings(void) const
{
    return (m_View != MenuViewRoot) ? TRUE : FALSE;
}

void CComboPauseMenu::ReturnToRoot(void)
{
    const unsigned old_view = m_View;
    m_View = MenuViewRoot;
    m_Selected = FindFirstSelectable();
    const boolean silent_settings_back = (old_view == MenuViewSettings) ? TRUE : FALSE;
    m_ForceRedraw = silent_settings_back ? FALSE : TRUE;
    m_ForceHighlightRedraw = FALSE;
    m_ForceContentRedraw = FALSE;
    m_SuppressNextRender = silent_settings_back;
    m_RequestBackgroundRestore = silent_settings_back ? FALSE : TRUE;
}

void CComboPauseMenu::RequestRedraw(void)
{
    m_ForceRedraw = TRUE;
}

void CComboPauseMenu::InvalidateViewportSnapshot(void)
{
    /* Snapshot buffer is global/fixed and intentionally persistent until overwritten. */
}

void CComboPauseMenu::CaptureViewportSnapshot(CGfxTextBoxRenderer *renderer, unsigned x, unsigned y, unsigned w, unsigned h)
{
    combo_viewport_screenshot_capture(renderer, x, y, w, h);
}

boolean CComboPauseMenu::GetViewportSnapshotView(const TScreenColor **pixels, unsigned *x, unsigned *y, unsigned *w, unsigned *h, unsigned *stride) const
{
    TViewportScreenshotView view;
    if (pixels != 0)
    {
        *pixels = 0;
    }
    if (x != 0) *x = 0u;
    if (y != 0) *y = 0u;
    if (w != 0) *w = 0u;
    if (h != 0) *h = 0u;
    if (stride != 0) *stride = 0u;

    if (!combo_viewport_screenshot_get(&view))
    {
        return FALSE;
    }

    if (pixels != 0) *pixels = view.pixels;
    if (x != 0) *x = view.x;
    if (y != 0) *y = view.y;
    if (w != 0) *w = view.w;
    if (h != 0) *h = view.h;
    if (stride != 0) *stride = view.stride;
    return TRUE;
}

boolean CComboPauseMenu::GetOffscreenView(const TScreenColor **pixels, unsigned *x, unsigned *y, unsigned *w, unsigned *h, unsigned *stride) const
{
    if (pixels != 0)
    {
        *pixels = 0;
    }
    if (x != 0) *x = 0u;
    if (y != 0) *y = 0u;
    if (w != 0) *w = 0u;
    if (h != 0) *h = 0u;
    if (stride != 0) *stride = 0u;

    if (m_MenuBackbuffer == 0 || m_MenuBackbufferW == 0u || m_MenuBackbufferH == 0u)
    {
        return FALSE;
    }

    if (pixels != 0) *pixels = m_MenuBackbuffer;
    if (x != 0) *x = m_MenuBackbufferX;
    if (y != 0) *y = m_MenuBackbufferY;
    if (w != 0) *w = m_MenuBackbufferW;
    if (h != 0) *h = m_MenuBackbufferH;
    if (stride != 0) *stride = m_MenuBackbufferW;
    return TRUE;
}

boolean CComboPauseMenu::ConsumeBackgroundRestoreRequest(void)
{
    const boolean pending = m_RequestBackgroundRestore;
    m_RequestBackgroundRestore = FALSE;
    return pending;
}

const TGameMasterGame *CComboPauseMenu::GetSelectedGameMasterGame(void) const
{
    if (m_GameMasterLoadStatus != (unsigned) GameMasterLoadOk
        || m_GameMasterCatalog == 0
        || m_GameMasterSelectedGame >= m_GameMasterCatalog->game_count)
    {
        return 0;
    }

    return &m_GameMasterCatalog->games[m_GameMasterSelectedGame];
}

unsigned CComboPauseMenu::GetSelectedGameMasterCheatCount(void) const
{
    const TGameMasterGame *game = GetSelectedGameMasterGame();
    return game != 0 ? game->cheat_count : 0u;
}

void CComboPauseMenu::SyncGameMasterCheatWindow(void)
{
    const unsigned cheat_count = GetSelectedGameMasterCheatCount();
    const unsigned visible_window = cheat_count < CComboFileBrowser::kVisibleRows
        ? cheat_count
        : CComboFileBrowser::kVisibleRows;
    unsigned max_top = 0u;

    if (cheat_count == 0u)
    {
        m_GameMasterCheatSelected = 0u;
        m_GameMasterCheatTop = 0u;
        m_Selected = 0u;
        return;
    }

    if (m_GameMasterCheatSelected >= cheat_count)
    {
        m_GameMasterCheatSelected = cheat_count - 1u;
    }

    if (cheat_count > visible_window)
    {
        max_top = cheat_count - visible_window;
    }
    if (m_GameMasterCheatTop > max_top)
    {
        m_GameMasterCheatTop = max_top;
    }
    if (m_GameMasterCheatSelected < m_GameMasterCheatTop)
    {
        m_GameMasterCheatTop = m_GameMasterCheatSelected;
    }
    if (visible_window > 0u && m_GameMasterCheatSelected >= m_GameMasterCheatTop + visible_window)
    {
        m_GameMasterCheatTop = m_GameMasterCheatSelected + 1u - visible_window;
    }
    if (m_GameMasterCheatTop > max_top)
    {
        m_GameMasterCheatTop = max_top;
    }

    m_Selected = m_GameMasterCheatSelected - m_GameMasterCheatTop;
}

const TComboMenuItem *CComboPauseMenu::GetItems(unsigned *count) const
{
    if (m_View == MenuViewSettings)
    {
        return combo_menu_settings_items_get(
            m_ScalePercent,
            m_MaxScalePercent,
            m_Language,
            m_ResolutionMode,
            m_WidescreenEnabled,
            m_ScanlineMode,
            m_RefreshRateHz,
            m_DiskRomEnabled,
            m_BootMode,
            m_MachineProfile,
            m_RamMapperKb,
            m_MegaRamKb,
            m_Z80TurboMode,
            m_RenshaMode,
            m_FmMusicEnabled,
            m_SccCartEnabled,
            m_SccDualCartEnabled,
            m_SccDualCartAvailable,
            m_OverlayEnabled,
            m_OverlayAvailable,
            m_DebugLogEnabled,
            m_AudioGainPercent,
            count);
    }
    if (m_View == MenuViewDebug)
    {
        return combo_menu_debug_items_get(
            m_Language,
            m_RefreshRateHz,
            m_DiskRomEnabled,
            m_KanjiRomEnabled,
            m_OverlayEnabled,
            m_OverlayAvailable,
            m_DebugLogEnabled,
            count);
    }
    if (m_View == MenuViewLoadRom)
    {
        return combo_menu_load_rom_items_get(m_Language, m_LoadRomSlot1Name, m_LoadRomSlot2Name, count);
    }
    if (m_View == MenuViewLoadDisk)
    {
        return combo_menu_load_disk_items_get(m_Language, m_LoadDiskDrive1Name, m_LoadDiskDrive2Name, count);
    }
    if (m_View == MenuViewGameMasterCheats)
    {
        const TComboLocaleStrings *locale = combo_locale_get(m_Language);
        if (locale == 0)
        {
            locale = combo_locale_get(ComboLanguageEN);
        }

        const TGameMasterGame *game = GetSelectedGameMasterGame();
        if (game == 0 || game->cheat_count == 0u)
        {
            CopySmallText(m_GameMasterCheatItemLabels[0], sizeof(m_GameMasterCheatItemLabels[0]), locale->game_master_no_cheats);
            m_GameMasterCheatItems[0].label = m_GameMasterCheatItemLabels[0];
            m_GameMasterCheatItems[0].action = ComboMenuActionNone;
            m_GameMasterCheatItems[0].selectable = FALSE;
            m_GameMasterCheatItems[0].redraw_policy = ComboMenuRedrawMenuOnly;
            if (count != 0)
            {
                *count = 1u;
            }
            return m_GameMasterCheatItems;
        }

        const unsigned available = game->cheat_count > m_GameMasterCheatTop
            ? (game->cheat_count - m_GameMasterCheatTop)
            : 0u;
        const unsigned visible = available < CComboFileBrowser::kVisibleRows ? available : CComboFileBrowser::kVisibleRows;
        if (visible == 0u)
        {
            CopySmallText(m_GameMasterCheatItemLabels[0], sizeof(m_GameMasterCheatItemLabels[0]), locale->game_master_no_cheats);
            m_GameMasterCheatItems[0].label = m_GameMasterCheatItemLabels[0];
            m_GameMasterCheatItems[0].action = ComboMenuActionNone;
            m_GameMasterCheatItems[0].selectable = FALSE;
            m_GameMasterCheatItems[0].redraw_policy = ComboMenuRedrawMenuOnly;
            if (count != 0)
            {
                *count = 1u;
            }
            return m_GameMasterCheatItems;
        }
        for (unsigned i = 0u; i < visible; ++i)
        {
            const unsigned cheat_abs = game->cheat_first + m_GameMasterCheatTop + i;
            const TGameMasterCheat *cheat = &m_GameMasterCatalog->cheats[cheat_abs];
            const char *cheat_title = cheat->title;
            const char *status_flag = locale->flag_off;
            char selector_flag[16];
            TGameMasterSelectorInfo selector;
            uint16_t current_value = 0u;
            const boolean selector_active = ComboDescribeGameMasterSelector(cheat, &selector);
#if MSXBARE_ENABLE_FMSX
            if (selector_active
                && ComboGameMasterCheatCurrentValue(m_GameMasterCatalog, cheat, &current_value)
                && ComboSelectorFindValue(&selector, current_value) >= 0)
            {
                ComboBuildSelectorFlag(selector_flag, sizeof(selector_flag), current_value);
                status_flag = selector_flag;
            }
            else if (cheat->poke_count > 0u
                && cheat->poke_first + cheat->poke_count <= (unsigned) m_GameMasterCatalog->poke_count
                && fmsx_runtime_is_game_master_cheat_active(&m_GameMasterCatalog->pokes[cheat->poke_first],
                                                            (unsigned) cheat->poke_count))
            {
                status_flag = locale->flag_on;
            }
#endif
            m_GameMasterCheatItemLabels[i][0] = '\0';
            ComboBuildTabLabel(m_GameMasterCheatItemLabels[i],
                               sizeof(m_GameMasterCheatItemLabels[i]),
                               cheat_title,
                               status_flag);

            m_GameMasterCheatItems[i].label = m_GameMasterCheatItemLabels[i];
            m_GameMasterCheatItems[i].action = ComboMenuActionNone;
            m_GameMasterCheatItems[i].selectable = TRUE;
            m_GameMasterCheatItems[i].redraw_policy = ComboMenuRedrawMenuOnly;
        }
        if (count != 0)
        {
            *count = visible;
        }
        return m_GameMasterCheatItems;
    }
    if (m_View == MenuViewLoadRomBrowser || m_View == MenuViewLoadDiskBrowser || m_View == MenuViewGameMasterBrowser)
    {
        const TComboLocaleStrings *locale = combo_locale_get(m_Language);
        if (locale == 0)
        {
            locale = combo_locale_get(ComboLanguageEN);
        }

        if (m_View == MenuViewGameMasterBrowser)
        {
            const char *status_label = locale->game_master_empty;
            unsigned item_count = 1u;

            if (m_GameMasterLoadStatus == (unsigned) GameMasterLoadFileOpenFailed)
            {
                status_label = locale->game_master_open_failed;
            }
            else if (m_GameMasterLoadStatus != (unsigned) GameMasterLoadOk)
            {
                status_label = locale->game_master_invalid;
            }

            if (m_GameMasterLoadStatus != (unsigned) GameMasterLoadOk || m_FileBrowser.GetCount() == 0u)
            {
                CopySmallText(m_RomBrowserItemLabels[0], sizeof(m_RomBrowserItemLabels[0]), status_label);
                m_RomBrowserItems[0].label = m_RomBrowserItemLabels[0];
                m_RomBrowserItems[0].action = ComboMenuActionNone;
                m_RomBrowserItems[0].selectable = FALSE;
                m_RomBrowserItems[0].redraw_policy = ComboMenuRedrawMenuOnly;

                if (m_GameMasterLoadStatus != (unsigned) GameMasterLoadOk && m_GameMasterErrorLine > 0u)
                {
                    ComboBuildLineLabel(m_RomBrowserItemLabels[1], sizeof(m_RomBrowserItemLabels[1]), locale->game_master_line, m_GameMasterErrorLine);
                    m_RomBrowserItems[1].label = m_RomBrowserItemLabels[1];
                    m_RomBrowserItems[1].action = ComboMenuActionNone;
                    m_RomBrowserItems[1].selectable = FALSE;
                    m_RomBrowserItems[1].redraw_policy = ComboMenuRedrawMenuOnly;
                    item_count = 2u;
                }

                if (count != 0)
                {
                    *count = item_count;
                }
                return m_RomBrowserItems;
            }
        }
        else
        {
            const char *empty = (m_View == MenuViewLoadDiskBrowser) ? locale->load_disk_empty : locale->load_rom_empty;
            if (empty == 0 || empty[0] == '\0')
            {
                empty = "EMPTY";
            }

            if (m_FileBrowser.GetCount() == 0u)
            {
                CopySmallText(m_RomBrowserEmptyLabel, sizeof(m_RomBrowserEmptyLabel), empty);
                m_RomBrowserItems[0].label = m_RomBrowserEmptyLabel;
                m_RomBrowserItems[0].action = ComboMenuActionNone;
                m_RomBrowserItems[0].selectable = FALSE;
                m_RomBrowserItems[0].redraw_policy = ComboMenuRedrawMenuOnly;
                if (count != 0)
                {
                    *count = 1u;
                }
                return m_RomBrowserItems;
            }
        }

        const unsigned visible = m_FileBrowser.GetVisibleCount();
        for (unsigned i = 0u; i < visible; ++i)
        {
            CopySmallText(m_RomBrowserItemLabels[i], sizeof(m_RomBrowserItemLabels[i]), m_FileBrowser.GetLabelVisible(i));
            m_RomBrowserItems[i].label = m_RomBrowserItemLabels[i];
            m_RomBrowserItems[i].action = ComboMenuActionNone;
            m_RomBrowserItems[i].selectable = TRUE;
            m_RomBrowserItems[i].redraw_policy = ComboMenuRedrawMenuOnly;
        }
        if (count != 0)
        {
            *count = visible;
        }
        return m_RomBrowserItems;
    }

    return combo_menu_root_items_get(m_Language, m_BootMode, count);
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
                                               boolean page_up_pressed,
                                               boolean page_down_pressed,
                                               boolean left_pressed,
                                               boolean right_pressed,
                                               boolean enter_pressed,
                                               boolean back_pressed,
                                               boolean delete_pressed,
                                               char jump_letter)
{
    const unsigned old_view = m_View;
    const unsigned old_selected = m_Selected;

    if (!paused)
    {
        m_LastBackPressed = back_pressed;
        m_LastUpPressed = up_pressed;
        m_LastDownPressed = down_pressed;
        m_LastPageUpPressed = page_up_pressed;
        m_LastPageDownPressed = page_down_pressed;
        m_LastLeftPressed = left_pressed;
        m_LastRightPressed = right_pressed;
        m_LastEnterPressed = enter_pressed;
        m_LastDeletePressed = delete_pressed;
        return ComboMenuActionNone;
    }

    unsigned item_count = 0u;
    const TComboMenuItem *items = GetItems(&item_count);
    if (item_count == 0u)
    {
        m_LastBackPressed = back_pressed;
        m_LastUpPressed = up_pressed;
        m_LastDownPressed = down_pressed;
        m_LastPageUpPressed = page_up_pressed;
        m_LastPageDownPressed = page_down_pressed;
        m_LastLeftPressed = left_pressed;
        m_LastRightPressed = right_pressed;
        m_LastEnterPressed = enter_pressed;
        m_LastDeletePressed = delete_pressed;
        return ComboMenuActionNone;
    }

    if (back_pressed && !m_LastBackPressed && m_View != MenuViewRoot)
    {
        if (m_View == MenuViewLoadRomBrowser)
        {
            m_View = MenuViewLoadRom;
        }
        else if (m_View == MenuViewLoadDiskBrowser)
        {
            m_View = MenuViewLoadDisk;
        }
        else if (m_View == MenuViewGameMasterCheats)
        {
            m_View = MenuViewGameMasterBrowser;
            m_Selected = m_FileBrowser.GetSelectedVisibleIndex();
        }
        else
        {
            m_View = MenuViewRoot;
        }
        m_Selected = FindFirstSelectable();
        const boolean silent_settings_back = (m_View == MenuViewRoot && (old_view == MenuViewSettings || old_view == MenuViewDebug)) ? TRUE : FALSE;
        m_ForceRedraw = silent_settings_back ? FALSE : TRUE;
        m_ForceHighlightRedraw = FALSE;
        m_ForceContentRedraw = FALSE;
        m_SuppressNextRender = silent_settings_back;
        m_RequestBackgroundRestore = silent_settings_back ? FALSE : TRUE;
        m_LastBackPressed = back_pressed;
        m_LastUpPressed = up_pressed;
        m_LastDownPressed = down_pressed;
        m_LastPageUpPressed = page_up_pressed;
        m_LastPageDownPressed = page_down_pressed;
        m_LastLeftPressed = left_pressed;
        m_LastRightPressed = right_pressed;
        m_LastEnterPressed = enter_pressed;
        m_LastDeletePressed = delete_pressed;
        return ComboMenuActionNone;
    }

    if (m_Selected >= item_count || !items[m_Selected].selectable)
    {
        m_Selected = FindFirstSelectable();
    }

    TComboMenuAction action = ComboMenuActionNone;

    if (m_View == MenuViewGameMasterCheats)
    {
        const TGameMasterGame *game = GetSelectedGameMasterGame();
        const unsigned cheat_count = game != 0 ? game->cheat_count : 0u;
        const unsigned visible_window = cheat_count < CComboFileBrowser::kVisibleRows
            ? cheat_count
            : CComboFileBrowser::kVisibleRows;
        const unsigned old_cheat_top = m_GameMasterCheatTop;
        const unsigned old_cheat_selected = m_GameMasterCheatSelected;
        const boolean up_edge = (up_pressed && !m_LastUpPressed) ? TRUE : FALSE;
        const boolean down_edge = (down_pressed && !m_LastDownPressed) ? TRUE : FALSE;
        const boolean page_up_edge = (page_up_pressed && !m_LastPageUpPressed) ? TRUE : FALSE;
        const boolean page_down_edge = (page_down_pressed && !m_LastPageDownPressed) ? TRUE : FALSE;
        const boolean left_edge = (left_pressed && !m_LastLeftPressed) ? TRUE : FALSE;
        const boolean right_edge = (right_pressed && !m_LastRightPressed) ? TRUE : FALSE;
        const boolean enter_edge = (enter_pressed && !m_LastEnterPressed) ? TRUE : FALSE;

        if (cheat_count > 0u)
        {
            if (up_edge)
            {
                m_GameMasterCheatSelected = (m_GameMasterCheatSelected == 0u)
                    ? (cheat_count - 1u)
                    : (m_GameMasterCheatSelected - 1u);
            }
            if (down_edge)
            {
                m_GameMasterCheatSelected = (m_GameMasterCheatSelected + 1u) % cheat_count;
            }
            if (page_up_edge)
            {
                if (m_GameMasterCheatSelected > visible_window)
                {
                    m_GameMasterCheatSelected -= visible_window;
                }
                else
                {
                    m_GameMasterCheatSelected = 0u;
                }
            }
            if (page_down_edge)
            {
                if (m_GameMasterCheatSelected + visible_window < cheat_count)
                {
                    m_GameMasterCheatSelected += visible_window;
                }
                else
                {
                    m_GameMasterCheatSelected = cheat_count - 1u;
                }
            }
            if (jump_letter >= 'A' && jump_letter <= 'Z')
            {
                const char *cheat_titles[GAMEMASTER_MAX_CHEATS];
                unsigned local_count = cheat_count;
                for (unsigned i = 0u; i < local_count; ++i)
                {
                    cheat_titles[i] = m_GameMasterCatalog->cheats[game->cheat_first + i].title;
                }
                const unsigned found = ComboFindFirstContaining(cheat_titles, local_count, jump_letter);
                if (found < local_count)
                {
                    m_GameMasterCheatSelected = found;
                }
            }

            SyncGameMasterCheatWindow();

            if (left_edge || right_edge || enter_edge)
            {
                const unsigned cheat_abs = game->cheat_first + m_GameMasterCheatSelected;
                const TGameMasterCheat *cheat = &m_GameMasterCatalog->cheats[cheat_abs];
                TGameMasterSelectorInfo selector;
                uint16_t current_value = 0u;
                const boolean selector_active = ComboDescribeGameMasterSelector(cheat, &selector);

                m_HasPendingGameMasterCheat = TRUE;
                m_PendingGameMasterGame = m_GameMasterSelectedGame;
                m_PendingGameMasterCheat = cheat_abs;
                m_PendingGameMasterCheatHasValueOverride = FALSE;
                m_PendingGameMasterCheatValueOverride = 0u;
                if (selector_active)
                {
                    const boolean has_current_value = ComboGameMasterCheatCurrentValue(m_GameMasterCatalog, cheat, &current_value);
                    const boolean current_valid = has_current_value && (ComboSelectorFindValue(&selector, current_value) >= 0);
                    const int direction = left_edge ? -1 : 1;
                    m_PendingGameMasterCheatHasValueOverride = TRUE;
                    m_PendingGameMasterCheatValueOverride = ComboSelectorStepValue(&selector,
                                                                                   current_value,
                                                                                   current_valid,
                                                                                   direction);
                }
                m_GameMasterApplyBlinkFrames = 8u;
                action = ComboMenuActionApplyGameMasterCheat;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
                m_ForceContentRedraw = FALSE;
            }
        }
        else
        {
            m_GameMasterCheatSelected = 0u;
            m_GameMasterCheatTop = 0u;
            m_Selected = 0u;
        }

        if (m_GameMasterCheatTop != old_cheat_top
                || m_GameMasterCheatSelected != old_cheat_selected
                || up_edge
                || down_edge
                || page_up_edge
                || page_down_edge
                || (jump_letter >= 'A' && jump_letter <= 'Z'))
        {
            m_ForceContentRedraw = TRUE;
        }

        m_LastBackPressed = back_pressed;
        m_LastUpPressed = up_pressed;
        m_LastDownPressed = down_pressed;
        m_LastPageUpPressed = page_up_pressed;
        m_LastPageDownPressed = page_down_pressed;
        m_LastLeftPressed = left_pressed;
        m_LastRightPressed = right_pressed;
        m_LastEnterPressed = enter_pressed;
        m_LastDeletePressed = delete_pressed;
        return action;
    }

    if (m_View == MenuViewLoadRomBrowser || m_View == MenuViewLoadDiskBrowser || m_View == MenuViewGameMasterBrowser)
    {
        const unsigned old_browser_top = m_FileBrowser.GetTop();
        const unsigned old_browser_abs = m_FileBrowser.GetSelectedAbs();
        const unsigned old_browser_count = m_FileBrowser.GetCount();
        const boolean letter_edge = (jump_letter >= 'A' && jump_letter <= 'Z') ? TRUE : FALSE;
        const boolean page_nav_edge =
            ((page_up_pressed && !m_LastPageUpPressed)
             || (page_down_pressed && !m_LastPageDownPressed)) ? TRUE : FALSE;
        const boolean nav_edge =
            ((up_pressed && !m_LastUpPressed)
             || (down_pressed && !m_LastDownPressed)
             || (page_up_pressed && !m_LastPageUpPressed)
             || (page_down_pressed && !m_LastPageDownPressed)
             || letter_edge) ? TRUE : FALSE;
        char selected_path[192];
        selected_path[0] = '\0';
        const TComboFileBrowserEvent browser_event = m_FileBrowser.ProcessInput(
            up_pressed,
            down_pressed,
            page_up_pressed,
            page_down_pressed,
            enter_pressed && !m_LastEnterPressed,
            selected_path,
            sizeof(selected_path));

        boolean letter_jump_moved = FALSE;
        if (letter_edge)
        {
            const unsigned before_jump_top = m_FileBrowser.GetTop();
            const unsigned before_jump_abs = m_FileBrowser.GetSelectedAbs();
            if (m_FileBrowser.JumpToFirstContaining(jump_letter))
            {
                const unsigned after_jump_top = m_FileBrowser.GetTop();
                const unsigned after_jump_abs = m_FileBrowser.GetSelectedAbs();
                letter_jump_moved = (before_jump_top != after_jump_top || before_jump_abs != after_jump_abs) ? TRUE : FALSE;
                if (letter_jump_moved)
                {
                    /* Same visual policy as cursor navigation, but with one extra settle pass. */
                    m_LastDrawnBrowserTop = 0xFFFFFFFFu;
                    m_LastDrawnBrowserSelectedAbs = 0xFFFFFFFFu;
                    m_LastDrawnBrowserContentStamp = 0xFFFFFFFFu;
                    m_BrowserWarmupRedraws = 1u;
                }
            }
        }

        const unsigned new_browser_top = m_FileBrowser.GetTop();
        const unsigned new_browser_abs = m_FileBrowser.GetSelectedAbs();
        const unsigned new_browser_count = m_FileBrowser.GetCount();
        const boolean browser_scrolled_or_moved =
            (old_browser_top != new_browser_top
             || old_browser_abs != new_browser_abs
             || old_browser_count != new_browser_count) ? TRUE : FALSE;
        if (page_nav_edge && browser_scrolled_or_moved)
        {
            /* Same anti-glitch settle pass used for A..Z jump. */
            m_LastDrawnBrowserTop = 0xFFFFFFFFu;
            m_LastDrawnBrowserSelectedAbs = 0xFFFFFFFFu;
            m_LastDrawnBrowserContentStamp = 0xFFFFFFFFu;
            m_BrowserWarmupRedraws = 1u;
        }

        if (browser_event == ComboFileBrowserEventEnteredDirectory)
        {
            if (selected_path[0] != '\0')
            {
                if (m_FileBrowser.GetMode() == (unsigned) ComboFileBrowserModeRom)
                {
                    m_HasPendingRomBrowserOpen = TRUE;
                    m_PendingRomBrowserSlot = m_FileBrowser.GetSlotIndex();
                    CopySmallText(m_PendingRomBrowserPath, sizeof(m_PendingRomBrowserPath), selected_path);
                    action = (m_PendingRomBrowserSlot == 0u) ? ComboMenuActionCartridgeA : ComboMenuActionCartridgeB;
                }
                else if (m_FileBrowser.GetMode() == (unsigned) ComboFileBrowserModeDisk)
                {
                    m_HasPendingDiskBrowserOpen = TRUE;
                    m_PendingDiskBrowserDrive = m_FileBrowser.GetSlotIndex();
                    CopySmallText(m_PendingDiskBrowserPath, sizeof(m_PendingDiskBrowserPath), selected_path);
                    action = (m_PendingDiskBrowserDrive == 0u) ? ComboMenuActionDiskDriveA : ComboMenuActionDiskDriveB;
                }
            }
            m_ForceRedraw = TRUE;
            m_ForceHighlightRedraw = FALSE;
            m_ForceContentRedraw = FALSE;
            m_LastDrawnSelected = 0xFFFFFFFFu;
            m_LastDrawnBrowserTop = 0xFFFFFFFFu;
            m_LastDrawnBrowserCount = 0xFFFFFFFFu;
            m_LastDrawnBrowserSelectedAbs = 0xFFFFFFFFu;
            m_LastDrawnBrowserMode = 0xFFFFFFFFu;
            m_LastDrawnBrowserSlot = 0xFFFFFFFFu;
            m_LastDrawnBrowserContentStamp = 0xFFFFFFFFu;
            m_LastBoxValid = FALSE;
            for (unsigned i = 0u; i < CComboFileBrowser::kVisibleRows; ++i)
            {
                m_RomBrowserItemLabels[i][0] = '\0';
                m_RomBrowserItems[i].label = m_RomBrowserItemLabels[i];
                m_RomBrowserItems[i].action = ComboMenuActionNone;
                m_RomBrowserItems[i].selectable = FALSE;
                m_RomBrowserItems[i].redraw_policy = ComboMenuRedrawMenuOnly;
            }
            /* Directory changes can alter box geometry; restore viewport first to avoid stale menu fragments. */
            m_RequestBackgroundRestore = TRUE;
            m_BrowserWarmupRedraws = 1u; /* extra pass to settle freshly-entered directory */
        }
        else if (browser_scrolled_or_moved
              || nav_edge
              || letter_jump_moved
              || browser_event == ComboFileBrowserEventSelectionChanged)
        {
            m_ForceContentRedraw = TRUE;
        }

        m_Selected = m_FileBrowser.GetSelectedVisibleIndex();
        if (browser_event == ComboFileBrowserEventSelectedFile && selected_path[0] != '\0')
        {
            if (m_FileBrowser.GetMode() == (unsigned) ComboFileBrowserModeRom)
            {
                m_HasPendingRomSelection = TRUE;
                m_PendingRomSlot = m_FileBrowser.GetSlotIndex();
                CopySmallText(m_PendingRomPath, sizeof(m_PendingRomPath), selected_path);
                action = (m_PendingRomSlot == 0u) ? ComboMenuActionCartridgeA : ComboMenuActionCartridgeB;
                m_View = MenuViewLoadRom;
                m_Selected = (m_PendingRomSlot == 0u) ? 0u : 1u;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
                m_ForceContentRedraw = FALSE;
                m_RequestBackgroundRestore = TRUE;
            }
            else if (m_FileBrowser.GetMode() == (unsigned) ComboFileBrowserModeDisk)
            {
                m_HasPendingDiskSelection = TRUE;
                m_PendingDiskDrive = m_FileBrowser.GetSlotIndex();
                CopySmallText(m_PendingDiskPath, sizeof(m_PendingDiskPath), selected_path);
                action = (m_PendingDiskDrive == 0u) ? ComboMenuActionDiskDriveA : ComboMenuActionDiskDriveB;
                m_View = MenuViewLoadDisk;
                m_Selected = (m_PendingDiskDrive == 0u) ? 0u : 1u;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
                m_ForceContentRedraw = FALSE;
                m_RequestBackgroundRestore = TRUE;
            }
            else
            {
                char title[64];
                char rom_id[48];
                const int load_status = (m_GameMasterCatalog != 0)
                    ? (ComboBuildTitleFromPath(selected_path, title, sizeof(title)),
                       ComboBuildRomIdFromPath(selected_path, rom_id, sizeof(rom_id)),
                       fmsx_runtime_reset_game_master_session(),
                       game_master_catalog_load_mcf(m_GameMasterCatalog, selected_path, title, rom_id))
                    : (int) GameMasterLoadSyntaxError;
                if (load_status == (int) GameMasterLoadOk && m_GameMasterCatalog != 0)
                {
                    m_GameMasterLoadStatus = (unsigned) GameMasterLoadOk;
                    m_GameMasterErrorLine = 0u;
                    m_GameMasterSelectedGame = 0u;
                    m_GameMasterCheatSelected = 0u;
                    m_GameMasterCheatTop = 0u;
                    SyncGameMasterCheatWindow();
                    m_View = MenuViewGameMasterCheats;
                    m_ForceRedraw = TRUE;
                    m_ForceHighlightRedraw = FALSE;
                    m_ForceContentRedraw = FALSE;
                    m_RequestBackgroundRestore = TRUE;
                }
                else
                {
                    m_GameMasterLoadStatus = (unsigned) GameMasterLoadOk;
                    m_GameMasterErrorLine = 0u;
                }
            }
        }

        m_LastBackPressed = back_pressed;
        m_LastUpPressed = up_pressed;
        m_LastDownPressed = down_pressed;
        m_LastPageUpPressed = page_up_pressed;
        m_LastPageDownPressed = page_down_pressed;
        m_LastLeftPressed = left_pressed;
        m_LastRightPressed = right_pressed;
        m_LastEnterPressed = enter_pressed;
        m_LastDeletePressed = delete_pressed;

        const boolean old_browser = (old_view == MenuViewLoadRomBrowser || old_view == MenuViewLoadDiskBrowser || old_view == MenuViewGameMasterBrowser) ? TRUE : FALSE;
        const boolean new_browser = (m_View == MenuViewLoadRomBrowser || m_View == MenuViewLoadDiskBrowser || m_View == MenuViewGameMasterBrowser) ? TRUE : FALSE;
        if (old_browser != new_browser)
        {
            m_RequestBackgroundRestore = TRUE;
            m_ForceRedraw = TRUE;
            m_ForceHighlightRedraw = FALSE;
            m_ForceContentRedraw = FALSE;
        }
        return action;
    }

    if (up_pressed && !m_LastUpPressed)
    {
        m_Selected = FindPrevSelectable(m_Selected);
    }

    if (down_pressed && !m_LastDownPressed)
    {
        m_Selected = FindNextSelectable(m_Selected);
    }

    boolean handled_settings_input = FALSE;
    if ((m_View == MenuViewSettings || m_View == MenuViewDebug) && items[m_Selected].selectable)
    {
        const boolean enter_edge = enter_pressed && !m_LastEnterPressed;
        const boolean left_edge = left_pressed && !m_LastLeftPressed;
        const boolean right_edge = right_pressed && !m_LastRightPressed;

        if (items[m_Selected].action == ComboMenuActionOverscanChanged)
        {
            unsigned next_value = m_ScalePercent;
            if (left_edge)
            {
                next_value = (next_value <= 250u) ? 250u : (next_value - 50u);
            }
            if (right_edge || enter_edge)
            {
                next_value = (next_value >= m_MaxScalePercent) ? m_MaxScalePercent : (next_value + 50u);
            }

            if (next_value != m_ScalePercent)
            {
                m_ScalePercent = next_value;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
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
                m_ForceHighlightRedraw = FALSE;
            }
            else if (right_edge || enter_edge)
            {
                action = ComboMenuActionCycleScanlines;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionCycleBootMode)
        {
            if (left_edge)
            {
                action = ComboMenuActionCycleBootModePrev;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
            else if (right_edge || enter_edge)
            {
                action = ComboMenuActionCycleBootMode;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionCycleMachine)
        {
            if (left_edge)
            {
                action = ComboMenuActionCycleMachinePrev;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
            else if (right_edge || enter_edge)
            {
                action = ComboMenuActionCycleMachine;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionCycleRamMapper)
        {
            if (left_edge)
            {
                action = ComboMenuActionCycleRamMapperPrev;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
            else if (right_edge || enter_edge)
            {
                action = ComboMenuActionCycleRamMapper;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionCycleMegaRam)
        {
            if (left_edge)
            {
                action = ComboMenuActionCycleMegaRamPrev;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
            else if (right_edge || enter_edge)
            {
                action = ComboMenuActionCycleMegaRam;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionCycleZ80Turbo)
        {
            if (left_edge)
            {
                action = ComboMenuActionCycleZ80TurboPrev;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
            else if (right_edge || enter_edge)
            {
                action = ComboMenuActionCycleZ80Turbo;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionCycleLanguage)
        {
            if (left_edge)
            {
                action = ComboMenuActionCycleLanguagePrev;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
            else if (right_edge || enter_edge)
            {
                action = ComboMenuActionCycleLanguage;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionCycleResolution)
        {
            if (left_edge)
            {
                action = ComboMenuActionCycleResolutionPrev;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
            else if (right_edge || enter_edge)
            {
                action = ComboMenuActionCycleResolution;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if ((items[m_Selected].action == ComboMenuActionToggleFmMusic)
              || (items[m_Selected].action == ComboMenuActionToggleSccCart))
        {
            if (enter_edge || left_edge || right_edge)
            {
                action = items[m_Selected].action;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionAudioGainChanged)
        {
            unsigned next_level = AudioGainUiLevelFromPercent(m_AudioGainPercent);
            if (left_edge)
            {
                next_level = (next_level == 0u) ? 9u : (next_level - 1u);
            }
            if (right_edge || enter_edge)
            {
                next_level = (next_level >= 9u) ? 0u : (next_level + 1u);
            }
            const unsigned next_value = AudioGainPercentFromUiLevel(next_level);
            if (next_value != m_AudioGainPercent)
            {
                m_AudioGainPercent = next_value;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
                action = ComboMenuActionAudioGainChanged;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionCycleRensha)
        {
            if (left_edge)
            {
                action = ComboMenuActionCycleRenshaPrev;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
            else if (right_edge || enter_edge)
            {
                action = ComboMenuActionCycleRensha;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionCycleRefreshRate)
        {
            if (left_edge)
            {
                action = ComboMenuActionCycleRefreshRatePrev;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
            else if (right_edge || enter_edge)
            {
                action = ComboMenuActionCycleRefreshRate;
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if ((items[m_Selected].action == ComboMenuActionToggleWidescreen)
              || (items[m_Selected].action == ComboMenuActionToggleDiskRom)
              || (items[m_Selected].action == ComboMenuActionToggleKanjiRom)
              || (items[m_Selected].action == ComboMenuActionToggleOverlay)
              || (items[m_Selected].action == ComboMenuActionToggleDebugLog))
        {
            if (enter_edge || left_edge || right_edge)
            {
                action = items[m_Selected].action;
                if (items[m_Selected].action == ComboMenuActionToggleWidescreen)
                {
                    m_ForceRedraw = TRUE;
                    m_ForceHighlightRedraw = FALSE;
                }
                else
                {
                    m_ForceRedraw = TRUE;
                    m_ForceHighlightRedraw = FALSE;
                }
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
    }

    if (enter_pressed && !m_LastEnterPressed && items[m_Selected].selectable && !handled_settings_input)
    {
        if (m_View == MenuViewRoot && items[m_Selected].action == ComboMenuActionSettings)
        {
            m_View = MenuViewSettings;
            m_Selected = FindFirstSelectable();
            m_ForceRedraw = TRUE;
            m_ForceHighlightRedraw = FALSE;
            m_RequestBackgroundRestore = TRUE;
        }
        else if (m_View == MenuViewRoot && items[m_Selected].action == ComboMenuActionDebug)
        {
            m_View = MenuViewDebug;
            m_Selected = FindFirstSelectable();
            m_ForceRedraw = TRUE;
            m_ForceHighlightRedraw = FALSE;
            m_RequestBackgroundRestore = TRUE;
        }
        else if (m_View == MenuViewRoot && items[m_Selected].action == ComboMenuActionCartridgeA)
        {
            m_View = MenuViewLoadRom;
            m_Selected = FindFirstSelectable();
            m_ForceRedraw = TRUE;
            m_ForceHighlightRedraw = FALSE;
            m_RequestBackgroundRestore = TRUE;
        }
        else if (m_View == MenuViewRoot && items[m_Selected].action == ComboMenuActionDiskDriveA)
        {
            m_View = MenuViewLoadDisk;
            m_Selected = FindFirstSelectable();
            m_ForceRedraw = TRUE;
            m_ForceHighlightRedraw = FALSE;
            m_RequestBackgroundRestore = TRUE;
        }
        else if (m_View == MenuViewRoot && items[m_Selected].action == ComboMenuActionGameMaster)
        {
            action = ComboMenuActionGameMaster;
        }
        else if (m_View == MenuViewLoadRom
              && (items[m_Selected].action == ComboMenuActionCartridgeA || items[m_Selected].action == ComboMenuActionCartridgeB))
        {
            const unsigned slot = (items[m_Selected].action == ComboMenuActionCartridgeA) ? 0u : 1u;
            m_HasPendingRomBrowserOpen = TRUE;
            m_PendingRomBrowserSlot = slot;
            CopySmallText(m_PendingRomBrowserPath, sizeof(m_PendingRomBrowserPath), "");
            action = items[m_Selected].action;
        }
        else if (m_View == MenuViewLoadDisk
              && (items[m_Selected].action == ComboMenuActionDiskDriveA || items[m_Selected].action == ComboMenuActionDiskDriveB))
        {
            const unsigned slot = (items[m_Selected].action == ComboMenuActionDiskDriveA) ? 0u : 1u;
            m_HasPendingDiskBrowserOpen = TRUE;
            m_PendingDiskBrowserDrive = slot;
            CopySmallText(m_PendingDiskBrowserPath, sizeof(m_PendingDiskBrowserPath), "");
            action = items[m_Selected].action;
        }
        else
        {
            action = items[m_Selected].action;
            if (m_View == MenuViewSettings)
            {
                /* Force redraw of dynamic labels (e.g. [LIG]/[DES]) immediately on Enter. */
                m_ForceRedraw = TRUE;
                m_ForceHighlightRedraw = FALSE;
            }
        }
    }

    if (delete_pressed && !m_LastDeletePressed && items[m_Selected].selectable)
    {
        if (m_View == MenuViewLoadRom
              && (items[m_Selected].action == ComboMenuActionCartridgeA || items[m_Selected].action == ComboMenuActionCartridgeB))
        {
            m_HasPendingRomSelection = TRUE;
            m_PendingRomSlot = (items[m_Selected].action == ComboMenuActionCartridgeA) ? 0u : 1u;
            CopySmallText(m_PendingRomPath, sizeof(m_PendingRomPath), "");
            action = items[m_Selected].action;
        }
        else if (m_View == MenuViewLoadDisk
              && (items[m_Selected].action == ComboMenuActionDiskDriveA || items[m_Selected].action == ComboMenuActionDiskDriveB))
        {
            m_HasPendingDiskSelection = TRUE;
            m_PendingDiskDrive = (items[m_Selected].action == ComboMenuActionDiskDriveA) ? 0u : 1u;
            CopySmallText(m_PendingDiskPath, sizeof(m_PendingDiskPath), "");
            action = items[m_Selected].action;
        }
    }

    m_LastBackPressed = back_pressed;
    m_LastUpPressed = up_pressed;
    m_LastDownPressed = down_pressed;
    m_LastPageUpPressed = page_up_pressed;
    m_LastPageDownPressed = page_down_pressed;
    m_LastLeftPressed = left_pressed;
    m_LastRightPressed = right_pressed;
    m_LastEnterPressed = enter_pressed;
    m_LastDeletePressed = delete_pressed;

    const boolean old_browser = (old_view == MenuViewLoadRomBrowser || old_view == MenuViewLoadDiskBrowser || old_view == MenuViewGameMasterBrowser) ? TRUE : FALSE;
    const boolean new_browser = (m_View == MenuViewLoadRomBrowser || m_View == MenuViewLoadDiskBrowser || m_View == MenuViewGameMasterBrowser) ? TRUE : FALSE;
    if (old_browser != new_browser)
    {
        m_RequestBackgroundRestore = TRUE;
        m_ForceRedraw = TRUE;
        m_ForceHighlightRedraw = FALSE;
    }
    else if (m_View == MenuViewSettings
          && action != ComboMenuActionNone
          && m_Selected < item_count
          && items[m_Selected].redraw_policy == ComboMenuRedrawMenuAndViewport)
    {
        m_RequestBackgroundRestore = TRUE;
    }
    else if (!new_browser
          && !m_ForceRedraw
          && m_Selected != old_selected)
    {
        m_ForceHighlightRedraw = TRUE;
    }

    return action;
}

void CComboPauseMenu::Render(boolean visible, CGfxTextBoxRenderer *renderer, unsigned screen_width, unsigned screen_height,
                             unsigned anchor_x, unsigned anchor_y, unsigned anchor_w, unsigned anchor_h)
{
    const TGfxTextStyle title_style = { BRIGHT_WHITE_COLOR, kPauseMenuBgColor, TRUE };
    const TGfxTextStyle normal_style = { BRIGHT_WHITE_COLOR, kPauseMenuBgColor, FALSE };
    const TGfxTextStyle selected_style = { BLACK_COLOR, BRIGHT_WHITE_COLOR, FALSE };
    const unsigned scale_x = 1u;
    const unsigned scale_y = 1u;

    if (renderer == 0)
    {
        return;
    }

    if (!visible)
    {
        m_Visible = FALSE;
        m_LastDrawnSelected = 0xFFFFFFFFu;
        m_ForceHighlightRedraw = FALSE;
        m_ForceContentRedraw = FALSE;
        m_MenuBackbufferW = 0u;
        m_MenuBackbufferH = 0u;
        m_MenuBackbufferX = 0u;
        m_MenuBackbufferY = 0u;
        m_BrowserWarmupRedraws = 0u;
        ComboClearPixels(m_MenuBackbuffer, m_MenuBackbufferCapacityPixels);
        return;
    }

    if (m_SuppressNextRender)
    {
        m_SuppressNextRender = FALSE;
        return;
    }

    unsigned item_count = 0u;
    const TComboMenuItem *items = GetItems(&item_count);
    if (item_count == 0u)
    {
        return;
    }

    const TComboLocaleStrings *locale = combo_locale_get(m_Language);
    if (locale == 0)
    {
        locale = combo_locale_get(ComboLanguageEN);
    }
    const char *title = locale->title_pause;
    if (m_View == MenuViewSettings)
    {
        title = locale->title_settings;
    }
    else if (m_View == MenuViewDebug)
    {
        title = locale->title_debug;
    }
    else if (m_View == MenuViewLoadRom)
    {
        title = locale->title_load_rom;
    }
    else if (m_View == MenuViewLoadDisk)
    {
        title = locale->title_load_disk;
    }
    else if (m_View == MenuViewGameMasterBrowser)
    {
        title = locale->title_game_master;
    }
    else if (m_View == MenuViewGameMasterCheats)
    {
        title = locale->title_active_cheats;
    }
    else if (m_View == MenuViewLoadRomBrowser || m_View == MenuViewLoadDiskBrowser)
    {
        const boolean disk_browser = (m_View == MenuViewLoadDiskBrowser) ? TRUE : FALSE;
        const unsigned browser_slot = m_FileBrowser.GetSlotIndex();
        const char *slot_tag = disk_browser
            ? ((browser_slot == 0u) ? locale->load_disk_drive1 : locale->load_disk_drive2)
            : ((browser_slot == 0u) ? locale->load_rom_slot1 : locale->load_rom_slot2);
        if (slot_tag == 0 || slot_tag[0] == '\0')
        {
            slot_tag = disk_browser
                ? ((browser_slot == 0u) ? "DRIVE1" : "DRIVE2")
                : ((browser_slot == 0u) ? "SLOT1" : "SLOT2");
        }
        title = slot_tag;
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

    const unsigned title_len = ComboStrLen(title);
    unsigned content_cols = max_item_len > title_len ? max_item_len : title_len;
    content_cols += 4u;
    if (content_cols < 18u)
    {
        content_cols = 18u;
    }
    if (m_View == MenuViewLoadRomBrowser || m_View == MenuViewLoadDiskBrowser || m_View == MenuViewGameMasterBrowser)
    {
        /*
         * Browser width rule:
         * - use the largest entry name from current directory (already capped at 20 chars),
         * - keep width fixed for this directory while navigating inside it.
         */
        unsigned browser_name_cols = m_FileBrowser.GetMaxLabelLen();
        if (browser_name_cols > 20u)
        {
            browser_name_cols = 20u;
        }
        if (browser_name_cols < 5u)
        {
            browser_name_cols = 5u;
        }
        /* +3 for folder icon slot, +4 for inner paddings/borders, +1 safety col to avoid clipping. */
        const unsigned browser_content_cols = browser_name_cols + 8u;
        content_cols = browser_content_cols > title_len ? browser_content_cols : title_len;
    }
    const unsigned box_cols = content_cols;
    const boolean has_unload_hint = (m_View == MenuViewLoadRom || m_View == MenuViewLoadDisk) ? TRUE : FALSE;
    const boolean has_cheat_hint = FALSE;
    const unsigned box_rows = item_count + 3u + (has_unload_hint ? 2u : 0u) + (has_cheat_hint ? 2u : 0u);
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

    const boolean browser_view = (m_View == MenuViewLoadRomBrowser || m_View == MenuViewLoadDiskBrowser || m_View == MenuViewGameMasterBrowser) ? TRUE : FALSE;
    if (m_ForceHighlightRedraw || m_ForceContentRedraw)
    {
        m_ForceRedraw = TRUE;
    }
    const boolean partial_row_redraw = FALSE;

    if (m_Visible
        && !m_ForceRedraw
     && !m_ForceHighlightRedraw
     && !m_ForceContentRedraw
     && m_Row == box_y
     && m_Col == box_x
     && m_LastBoxValid
     && m_LastBoxW == box_w_px
     && m_LastBoxH == box_h_px
     && m_LastDrawnSelected == m_Selected
     && m_LastDrawnView == m_View
     && m_LastDrawnScalePercent == m_ScalePercent
     && m_LastDrawnMaxScalePercent == m_MaxScalePercent
     && m_LastDrawnLanguage == m_Language
     && m_LastDrawnResolutionMode == m_ResolutionMode
     && m_LastDrawnWidescreen == m_WidescreenEnabled
     && m_LastDrawnScanlineMode == m_ScanlineMode
     && m_LastDrawnRefreshRateHz == m_RefreshRateHz
     && m_LastDrawnDiskRomEnabled == m_DiskRomEnabled
     && m_LastDrawnKanjiRomEnabled == m_KanjiRomEnabled
     && m_LastDrawnBootMode == m_BootMode
     && m_LastDrawnMachineProfile == m_MachineProfile
     && m_LastDrawnRamMapperKb == m_RamMapperKb
     && m_LastDrawnMegaRamKb == m_MegaRamKb
     && m_LastDrawnZ80TurboMode == m_Z80TurboMode
     && m_LastDrawnRenshaMode == m_RenshaMode
     && m_LastDrawnFmMusic == m_FmMusicEnabled
     && m_LastDrawnSccCart == m_SccCartEnabled
     && m_LastDrawnSccDualCart == m_SccDualCartEnabled
     && m_LastDrawnSccDualCartAvailable == m_SccDualCartAvailable
     && m_LastDrawnOverlay == m_OverlayEnabled
     && m_LastDrawnOverlayAvailable == m_OverlayAvailable
     && m_LastDrawnDebugLogEnabled == m_DebugLogEnabled
     && m_LastDrawnAudioGainPercent == m_AudioGainPercent
     && ComboTextEquals(m_LastDrawnLoadRomSlot1Name, m_LoadRomSlot1Name)
     && ComboTextEquals(m_LastDrawnLoadRomSlot2Name, m_LoadRomSlot2Name)
     && ComboTextEquals(m_LastDrawnLoadDiskDrive1Name, m_LoadDiskDrive1Name)
     && ComboTextEquals(m_LastDrawnLoadDiskDrive2Name, m_LoadDiskDrive2Name)
     && (m_View != MenuViewLoadRomBrowser && m_View != MenuViewLoadDiskBrowser && m_View != MenuViewGameMasterBrowser
         ? TRUE
         : (m_LastDrawnBrowserTop == m_FileBrowser.GetTop()
            && m_LastDrawnBrowserCount == m_FileBrowser.GetCount()
            && m_LastDrawnBrowserSelectedAbs == m_FileBrowser.GetSelectedAbs()
            && m_LastDrawnBrowserMode == m_FileBrowser.GetMode()
            && m_LastDrawnBrowserSlot == m_FileBrowser.GetSlotIndex()
            && m_LastDrawnBrowserContentStamp == m_FileBrowser.GetContentStamp())))
    {
        return;
    }

    const unsigned title_x = box_x + ((box_cols - title_len) / 2u) * cell_w;
    const unsigned title_y = box_y;
    const boolean allow_backbuffer = TRUE;
    boolean use_backbuffer = FALSE;
    if (allow_backbuffer)
    {
        const unsigned backbuffer_w = anchor_w;
        const unsigned backbuffer_h = anchor_h;
        const unsigned backbuffer_need_pixels = backbuffer_w * backbuffer_h;
        if (backbuffer_need_pixels > 0u)
        {
            if (m_MenuBackbuffer == 0 || m_MenuBackbufferCapacityPixels < backbuffer_need_pixels)
            {
                TScreenColor *new_buffer = new TScreenColor[backbuffer_need_pixels];
                if (new_buffer != 0)
                {
                    if (m_MenuBackbuffer != 0)
                    {
                        delete[] m_MenuBackbuffer;
                    }
                    m_MenuBackbuffer = new_buffer;
                    m_MenuBackbufferCapacityPixels = backbuffer_need_pixels;
                }
            }
            use_backbuffer = (m_MenuBackbuffer != 0 && m_MenuBackbufferCapacityPixels >= backbuffer_need_pixels) ? TRUE : FALSE;
        }
    }
    if (use_backbuffer)
    {
        /* Full clear off-screen first; on-screen blit remains single-pass (no flick). */
        ComboClearPixels(m_MenuBackbuffer, anchor_w * anchor_h);

        TViewportScreenshotView snapshot;
        if (combo_viewport_screenshot_get(&snapshot))
        {
            const unsigned anchor_x1 = anchor_x + anchor_w;
            const unsigned anchor_y1 = anchor_y + anchor_h;
            const unsigned snap_x1 = snapshot.x + snapshot.w;
            const unsigned snap_y1 = snapshot.y + snapshot.h;
            const unsigned ix0 = (anchor_x > snapshot.x) ? anchor_x : snapshot.x;
            const unsigned iy0 = (anchor_y > snapshot.y) ? anchor_y : snapshot.y;
            const unsigned ix1 = (anchor_x1 < snap_x1) ? anchor_x1 : snap_x1;
            const unsigned iy1 = (anchor_y1 < snap_y1) ? anchor_y1 : snap_y1;
            if (ix1 > ix0 && iy1 > iy0)
            {
                const unsigned copy_w = ix1 - ix0;
                for (unsigned y = iy0; y < iy1; ++y)
                {
                    const unsigned src_off = (y - snapshot.y) * snapshot.stride + (ix0 - snapshot.x);
                    const unsigned dst_off = (y - anchor_y) * anchor_w + (ix0 - anchor_x);
                    const TScreenColor *src = snapshot.pixels + src_off;
                    TScreenColor *dst = m_MenuBackbuffer + dst_off;
                    for (unsigned x = 0u; x < copy_w; ++x)
                    {
                        dst[x] = src[x];
                    }
                }
            }
        }
        m_MenuBackbufferX = anchor_x;
        m_MenuBackbufferY = anchor_y;
        m_MenuBackbufferW = anchor_w;
        m_MenuBackbufferH = anchor_h;
        renderer->BeginOffscreen(anchor_x, anchor_y, anchor_w, anchor_h, m_MenuBackbuffer, anchor_w);
    }
    else
    {
        m_MenuBackbufferX = 0u;
        m_MenuBackbufferY = 0u;
        m_MenuBackbufferW = 0u;
        m_MenuBackbufferH = 0u;
    }
    renderer->FillRect(box_x, box_y, box_w_px, box_h_px, kPauseMenuBgColor);
    renderer->DrawRectBorder(box_x, box_y, box_w_px, box_h_px, BRIGHT_WHITE_COLOR, 2u);
    renderer->DrawText(title_x, title_y, title, title_style, scale_x, scale_y);

    const boolean browser_with_scrollbar =
        ((m_View == MenuViewLoadRomBrowser || m_View == MenuViewLoadDiskBrowser || m_View == MenuViewGameMasterBrowser)
         && item_count > 0u
         && m_FileBrowser.GetCount() > item_count
         && box_cols > 8u);
    const unsigned bar_col = browser_with_scrollbar ? (box_cols - 3u) : 0u;

    const auto draw_row = [&](unsigned i)
    {
        const unsigned row = 2u + i;
        const unsigned y = box_y + (row * cell_h);
        const unsigned text_len = ComboStrLen(items[i].label);
        const boolean settings_row = (m_View == MenuViewSettings || m_View == MenuViewDebug);
        const boolean load_media_row = (m_View == MenuViewLoadRom || m_View == MenuViewLoadDisk);
        const boolean browser_row = (m_View == MenuViewLoadRomBrowser || m_View == MenuViewLoadDiskBrowser || m_View == MenuViewGameMasterBrowser);
        const boolean cheat_list_row = (m_View == MenuViewGameMasterCheats);
        const boolean separator_row = (items[i].action == ComboMenuActionSeparator);
        const boolean selected_row = (items[i].selectable && i == m_Selected) ? TRUE : FALSE;

        if (selected_row && box_cols > 4u && !load_media_row && !cheat_list_row)
        {
            unsigned highlight_cols = box_cols - 4u;
            if (browser_row && browser_with_scrollbar && bar_col > 4u)
            {
                const unsigned text_end_col = bar_col - 2u; /* keep one spacer col before bar */
                if (text_end_col > 2u)
                {
                    highlight_cols = text_end_col - 2u + 1u;
                }
            }
            renderer->FillRect(box_x + (2u * cell_w), y, highlight_cols * cell_w, cell_h, BRIGHT_WHITE_COLOR);
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
            return;
        }

        if (settings_row || load_media_row || cheat_list_row)
        {
            const unsigned split = settings_row ? ComboFindFlagStart(items[i].label) : ComboFindTabSplit(items[i].label);
            const unsigned left_len = split < text_len ? split : text_len;
            const unsigned flag_start = (load_media_row || cheat_list_row) && split < text_len ? (split + 1u) : split;
            const unsigned flag_len = split < text_len ? (text_len - flag_start) : 0u;
            const unsigned inner_left_col = 2u;
            const unsigned inner_right_col = box_cols > 2u ? (box_cols - 3u) : 0u;
            const unsigned x_left = box_x + (inner_left_col * cell_w);
            const unsigned x_flag = flag_len > 0u
                ? box_x + ((inner_right_col + 1u - flag_len) * cell_w)
                : 0u;
            const TGfxTextStyle left_style = ((settings_row || cheat_list_row) && selected_row) ? selected_style : normal_style;
            TGfxTextStyle flag_style = left_style;

            if ((load_media_row || cheat_list_row) && box_cols > 4u)
            {
                /* Keep right-aligned value area visually stable by clearing row span first. */
                renderer->FillRect(box_x + (2u * cell_w), y, (box_cols - 4u) * cell_w, cell_h, kPauseMenuBgColor);
            }

            if (load_media_row && selected_row)
            {
                unsigned x_sel = x_left + (left_len * cell_w);
                const unsigned x_end = box_x + ((inner_right_col + 1u) * cell_w);
                if (x_sel < x_end)
                {
                    renderer->FillRect(x_sel, y, x_end - x_sel, cell_h, BRIGHT_WHITE_COLOR);
                }
                flag_style = selected_style; /* draw value in inverted style over white bar */
            }
            else if (cheat_list_row && selected_row)
            {
                const unsigned x_end = box_x + ((inner_right_col + 1u) * cell_w);
                if (x_left < x_end)
                {
                    renderer->FillRect(x_left, y, x_end - x_left, cell_h, BRIGHT_WHITE_COLOR);
                }
                flag_style = selected_style;
            }

            if (flag_len > 0u && x_flag > x_left + cell_w)
            {
                char left_buf[48];
                char flag_buf[32];
                ComboSliceCopy(left_buf, sizeof(left_buf), items[i].label, 0u, left_len);
                ComboSliceCopy(flag_buf, sizeof(flag_buf), items[i].label, flag_start, flag_len);
                renderer->DrawText(x_left, y, left_buf, left_style, scale_x, scale_y);
                renderer->DrawText(x_flag, y, flag_buf, flag_style, scale_x, scale_y);
            }
            else
            {
                const unsigned x = cheat_list_row
                    ? (box_x + (2u * cell_w))
                    : (box_x + ((box_cols - text_len) / 2u) * cell_w);
                renderer->DrawText(x, y, items[i].label, left_style, scale_x, scale_y);
            }
        }
        else if (browser_row)
        {
            const unsigned x = box_x + (2u * cell_w);
            const TGfxTextStyle style = (items[i].selectable && i == m_Selected) ? selected_style : normal_style;
            const boolean draw_folder_icon = (m_FileBrowser.IsDirVisible(i) && !m_FileBrowser.IsParentVisible(i)) ? TRUE : FALSE;
            unsigned max_label_chars = 20u;
            if (browser_with_scrollbar && bar_col > 4u)
            {
                /* Keep one blank column between filename and scrollbar. */
                const unsigned text_end_col = bar_col - 2u;
                const unsigned dyn_max = (text_end_col > 2u) ? (text_end_col - 2u + 1u) : 0u;
                max_label_chars = (dyn_max < max_label_chars) ? dyn_max : max_label_chars;
            }
            if (draw_folder_icon && max_label_chars > 3u)
            {
                max_label_chars -= 3u;
            }
            char clipped_label[40];
            ComboSliceCopy(clipped_label, sizeof(clipped_label), items[i].label, 0u, max_label_chars);
            if (draw_folder_icon)
            {
                renderer->DrawText(x, y, "\x1E\x1F", style, scale_x, scale_y);
                renderer->DrawText(x + (3u * cell_w), y, clipped_label, style, scale_x, scale_y);
            }
            else
            {
                renderer->DrawText(x, y, clipped_label, style, scale_x, scale_y);
            }
        }
        else
        {
            const unsigned x = box_x + ((box_cols - text_len) / 2u) * cell_w;
            const TGfxTextStyle style = (items[i].selectable && i == m_Selected) ? selected_style : normal_style;
            renderer->DrawText(x, y, items[i].label, style, scale_x, scale_y);
        }
    };

    for (unsigned i = 0; i < item_count; ++i)
    {
        draw_row(i);
    }

    if (browser_with_scrollbar)
    {
        const unsigned bar_x = box_x + (bar_col * cell_w);
        const unsigned top_row = 2u;
        const unsigned bottom_row = 2u + item_count - 1u;
        const unsigned arrow_up_row = (top_row > 0u) ? (top_row - 1u) : top_row;
        const unsigned arrow_down_row = bottom_row + 1u;
        const unsigned top_y = box_y + (arrow_up_row * cell_h);
        const unsigned bottom_y = box_y + (arrow_down_row * cell_h);

        if (bottom_row > top_row + 1u)
        {
            /* Keep one full row gap from arrows to avoid overlap with arrow glyphs. */
            const unsigned track_start_row = top_row + 1u;
            const unsigned track_end_row = (bottom_row > 0u) ? (bottom_row - 1u) : bottom_row;
            if (track_end_row >= track_start_row)
            {
                const unsigned track_len = track_end_row - track_start_row + 1u;
                const unsigned max_top = m_FileBrowser.GetCount() - item_count;
                unsigned thumb_row = track_start_row;
                if (max_top > 0u)
                {
                    const unsigned rel = ((track_len - 1u) * m_FileBrowser.GetTop()) / max_top;
                    thumb_row = track_start_row + rel;
                }
                const unsigned thumb_y = box_y + (thumb_row * cell_h);
                renderer->DrawText(bar_x, thumb_y, "\x1B", normal_style, scale_x, scale_y);
            }
        }
        renderer->DrawText(bar_x, top_y, "\x1C", normal_style, scale_x, scale_y);
        renderer->DrawText(bar_x, bottom_y, "\x1D", normal_style, scale_x, scale_y);
    }

    if (has_unload_hint)
    {
        const char *hint = (m_View == MenuViewLoadDisk) ? locale->load_disk_unload_hint : locale->load_rom_unload_hint;
        if (hint == 0 || hint[0] == '\0')
        {
            hint = (m_View == MenuViewLoadDisk) ? "[DEL] Eject Disk" : "[DEL] Unload ROM";
        }
        const unsigned hint_len = ComboStrLen(hint);
        const unsigned hint_row = item_count + 3u; /* one blank line above */
        const unsigned hint_y = box_y + (hint_row * cell_h);
        const unsigned hint_x = box_x + ((box_cols - hint_len) / 2u) * cell_w;
        renderer->DrawText(hint_x, hint_y, hint, normal_style, scale_x, scale_y);
    }
    m_Row = box_y;
    m_Col = box_x;
    m_LastDrawnSelected = m_Selected;
    m_LastDrawnView = m_View;
    m_LastDrawnScalePercent = m_ScalePercent;
    m_LastDrawnMaxScalePercent = m_MaxScalePercent;
    m_LastDrawnLanguage = m_Language;
    m_LastDrawnResolutionMode = m_ResolutionMode;
    m_LastDrawnWidescreen = m_WidescreenEnabled;
    m_LastDrawnScanlineMode = m_ScanlineMode;
    m_LastDrawnRefreshRateHz = m_RefreshRateHz;
    m_LastDrawnDiskRomEnabled = m_DiskRomEnabled;
    m_LastDrawnKanjiRomEnabled = m_KanjiRomEnabled;
    m_LastDrawnBootMode = m_BootMode;
    m_LastDrawnMachineProfile = m_MachineProfile;
    m_LastDrawnRamMapperKb = m_RamMapperKb;
    m_LastDrawnMegaRamKb = m_MegaRamKb;
    m_LastDrawnZ80TurboMode = m_Z80TurboMode;
    m_LastDrawnRenshaMode = m_RenshaMode;
    m_LastDrawnFmMusic = m_FmMusicEnabled;
    m_LastDrawnSccCart = m_SccCartEnabled;
    m_LastDrawnSccDualCart = m_SccDualCartEnabled;
    m_LastDrawnSccDualCartAvailable = m_SccDualCartAvailable;
    m_LastDrawnOverlay = m_OverlayEnabled;
    m_LastDrawnOverlayAvailable = m_OverlayAvailable;
    m_LastDrawnDebugLogEnabled = m_DebugLogEnabled;
    m_LastDrawnAudioGainPercent = m_AudioGainPercent;
    CopySmallText(m_LastDrawnLoadRomSlot1Name, sizeof(m_LastDrawnLoadRomSlot1Name), m_LoadRomSlot1Name);
    CopySmallText(m_LastDrawnLoadRomSlot2Name, sizeof(m_LastDrawnLoadRomSlot2Name), m_LoadRomSlot2Name);
    CopySmallText(m_LastDrawnLoadDiskDrive1Name, sizeof(m_LastDrawnLoadDiskDrive1Name), m_LoadDiskDrive1Name);
    CopySmallText(m_LastDrawnLoadDiskDrive2Name, sizeof(m_LastDrawnLoadDiskDrive2Name), m_LoadDiskDrive2Name);
    m_LastDrawnBrowserTop = m_FileBrowser.GetTop();
    m_LastDrawnBrowserCount = m_FileBrowser.GetCount();
    m_LastDrawnBrowserSelectedAbs = m_FileBrowser.GetSelectedAbs();
    m_LastDrawnBrowserMode = m_FileBrowser.GetMode();
    m_LastDrawnBrowserSlot = m_FileBrowser.GetSlotIndex();
    m_LastDrawnBrowserContentStamp = m_FileBrowser.GetContentStamp();
    m_LastBoxX = box_x;
    m_LastBoxY = box_y;
    m_LastBoxW = box_w_px;
    m_LastBoxH = box_h_px;
    m_LastBoxValid = TRUE;
    if (use_backbuffer)
    {
        renderer->EndOffscreenBlit();
    }
    m_ForceRedraw = FALSE;
    m_ForceHighlightRedraw = FALSE;
    m_ForceContentRedraw = FALSE;
    if ((m_View == MenuViewLoadRomBrowser || m_View == MenuViewLoadDiskBrowser || m_View == MenuViewGameMasterBrowser) && m_BrowserWarmupRedraws > 0u)
    {
        --m_BrowserWarmupRedraws;
        m_ForceRedraw = TRUE;
    }
    if (m_GameMasterApplyBlinkFrames > 0u)
    {
        --m_GameMasterApplyBlinkFrames;
        m_ForceRedraw = TRUE;
    }
    m_Visible = TRUE;
}
