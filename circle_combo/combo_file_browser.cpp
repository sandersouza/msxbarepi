#include "combo_file_browser.h"

#include "media_catalog.h"

static const char *kRomsRootPath = "SD:/roms";
static const char *kDisksRootPath = "SD:/disks";
static const unsigned kRepeatDelayFrames = 12u;
static const unsigned kRepeatPeriodFrames = 2u;

static char ComboToUpperAscii(char ch)
{
    if (ch >= 'a' && ch <= 'z')
    {
        return (char) (ch - 'a' + 'A');
    }
    return ch;
}

static int ComboIsFileChar83(char ch)
{
    if ((ch >= 'A' && ch <= 'Z') || (ch >= '0' && ch <= '9'))
    {
        return 1;
    }
    return (ch == '_' || ch == '$' || ch == '~' || ch == '!' || ch == '#' || ch == '%' || ch == '-');
}

static int ComboPathEqualsIgnoreCase(const char *a, const char *b)
{
    if (a == 0 || b == 0)
    {
        return 0;
    }
    unsigned i = 0u;
    while (a[i] != '\0' && b[i] != '\0')
    {
        if (ComboToUpperAscii(a[i]) != ComboToUpperAscii(b[i]))
        {
            return 0;
        }
        ++i;
    }
    return (a[i] == '\0' && b[i] == '\0') ? 1 : 0;
}

static void ComboCopyParentDir(char *out_dir, unsigned out_size, const char *path)
{
    if (out_dir == 0 || out_size == 0u)
    {
        return;
    }
    out_dir[0] = '\0';
    if (path == 0 || path[0] == '\0')
    {
        return;
    }

    unsigned len = 0u;
    while (path[len] != '\0')
    {
        ++len;
    }

    if (len == 0u)
    {
        return;
    }

    unsigned slash = len;
    while (slash > 0u && path[slash - 1u] != '/' && path[slash - 1u] != '\\')
    {
        --slash;
    }

    if (slash == 0u)
    {
        return;
    }

    unsigned copy_len = slash - 1u;
    if (copy_len >= out_size)
    {
        copy_len = out_size - 1u;
    }
    for (unsigned i = 0u; i < copy_len; ++i)
    {
        out_dir[i] = path[i];
    }
    out_dir[copy_len] = '\0';
}

static const char *ComboBaseNameFromPath(const char *path)
{
    if (path == 0)
    {
        return 0;
    }
    const char *base = path;
    for (const char *p = path; *p != '\0'; ++p)
    {
        if (*p == '/' || *p == '\\')
        {
            base = p + 1;
        }
    }
    return base;
}

CComboFileBrowser::CComboFileBrowser(void)
: m_Mode((unsigned) ComboFileBrowserModeRom),
  m_SlotIndex(0u),
  m_Count(0u),
  m_SelectedAbs(0u),
  m_Top(0u),
  m_Names{{0}},
  m_Paths{{0}},
  m_IsDir{FALSE},
  m_IsParent{FALSE},
  m_CurrentDir{0},
  m_LastUpPressed(FALSE),
  m_LastDownPressed(FALSE),
  m_UpHoldFrames(0u),
  m_DownHoldFrames(0u)
{
    CopySmallText(m_CurrentDir, sizeof(m_CurrentDir), kRomsRootPath);
}

void CComboFileBrowser::Reset(void)
{
    m_Mode = (unsigned) ComboFileBrowserModeRom;
    m_SlotIndex = 0u;
    m_Count = 0u;
    m_SelectedAbs = 0u;
    m_Top = 0u;
    CopySmallText(m_CurrentDir, sizeof(m_CurrentDir), kRomsRootPath);
    m_LastUpPressed = FALSE;
    m_LastDownPressed = FALSE;
    m_UpHoldFrames = 0u;
    m_DownHoldFrames = 0u;
    for (unsigned i = 0u; i < kMaxEntries; ++i)
    {
        m_IsDir[i] = FALSE;
        m_IsParent[i] = FALSE;
        m_Names[i][0] = '\0';
        m_Paths[i][0] = '\0';
    }
}

void CComboFileBrowser::Open(unsigned mode, unsigned slot_index)
{
    m_Mode = (mode == (unsigned) ComboFileBrowserModeDisk) ? (unsigned) ComboFileBrowserModeDisk : (unsigned) ComboFileBrowserModeRom;
    m_SlotIndex = slot_index > 1u ? 1u : slot_index;
    CopySmallText(m_CurrentDir, sizeof(m_CurrentDir), RootPath());
    m_LastUpPressed = FALSE;
    m_LastDownPressed = FALSE;
    m_UpHoldFrames = 0u;
    m_DownHoldFrames = 0u;
    RebuildCatalog();
}

unsigned CComboFileBrowser::GetMode(void) const
{
    return m_Mode;
}

unsigned CComboFileBrowser::GetSlotIndex(void) const
{
    return m_SlotIndex;
}

unsigned CComboFileBrowser::GetCount(void) const
{
    return m_Count;
}

unsigned CComboFileBrowser::GetTop(void) const
{
    return m_Top;
}

unsigned CComboFileBrowser::GetSelectedVisibleIndex(void) const
{
    if (m_Count == 0u)
    {
        return 0u;
    }
    if (m_SelectedAbs < m_Top)
    {
        return 0u;
    }
    const unsigned max_visible = GetVisibleCount();
    unsigned visible = m_SelectedAbs - m_Top;
    if (max_visible == 0u)
    {
        return 0u;
    }
    if (visible >= max_visible)
    {
        visible = max_visible - 1u;
    }
    return visible;
}

unsigned CComboFileBrowser::GetVisibleCount(void) const
{
    if (m_Count <= m_Top)
    {
        return 0u;
    }
    const unsigned remaining = m_Count - m_Top;
    return remaining < kVisibleRows ? remaining : kVisibleRows;
}

const char *CComboFileBrowser::GetLabelVisible(unsigned visible_index) const
{
    const unsigned abs = m_Top + visible_index;
    if (abs >= m_Count)
    {
        return "";
    }
    return m_Names[abs];
}

boolean CComboFileBrowser::IsDirVisible(unsigned visible_index) const
{
    const unsigned abs = m_Top + visible_index;
    if (abs >= m_Count)
    {
        return FALSE;
    }
    return m_IsDir[abs];
}

boolean CComboFileBrowser::IsParentVisible(unsigned visible_index) const
{
    const unsigned abs = m_Top + visible_index;
    if (abs >= m_Count)
    {
        return FALSE;
    }
    return m_IsParent[abs];
}

TComboFileBrowserEvent CComboFileBrowser::ProcessInput(boolean up_pressed,
                                                       boolean down_pressed,
                                                       boolean enter_edge,
                                                       char *out_path,
                                                       unsigned out_path_size)
{
    if (out_path != 0 && out_path_size > 0u)
    {
        out_path[0] = '\0';
    }

    if (m_Count == 0u)
    {
        m_LastUpPressed = up_pressed;
        m_LastDownPressed = down_pressed;
        m_UpHoldFrames = 0u;
        m_DownHoldFrames = 0u;
        return ComboFileBrowserEventNone;
    }

    boolean up_step = FALSE;
    boolean down_step = FALSE;
    if (up_pressed)
    {
        if (!m_LastUpPressed)
        {
            up_step = TRUE;
            m_UpHoldFrames = 0u;
        }
        else
        {
            ++m_UpHoldFrames;
            if (m_UpHoldFrames >= kRepeatDelayFrames)
            {
                const unsigned tick = m_UpHoldFrames - kRepeatDelayFrames;
                if ((tick % kRepeatPeriodFrames) == 0u)
                {
                    up_step = TRUE;
                }
            }
        }
    }
    else
    {
        m_UpHoldFrames = 0u;
    }

    if (down_pressed)
    {
        if (!m_LastDownPressed)
        {
            down_step = TRUE;
            m_DownHoldFrames = 0u;
        }
        else
        {
            ++m_DownHoldFrames;
            if (m_DownHoldFrames >= kRepeatDelayFrames)
            {
                const unsigned tick = m_DownHoldFrames - kRepeatDelayFrames;
                if ((tick % kRepeatPeriodFrames) == 0u)
                {
                    down_step = TRUE;
                }
            }
        }
    }
    else
    {
        m_DownHoldFrames = 0u;
    }

    if (up_step)
    {
        m_SelectedAbs = (m_SelectedAbs == 0u) ? (m_Count - 1u) : (m_SelectedAbs - 1u);
        if (m_SelectedAbs < m_Top)
        {
            m_Top = m_SelectedAbs;
        }
    }
    if (down_step)
    {
        m_SelectedAbs = (m_SelectedAbs + 1u) % m_Count;
        if (m_SelectedAbs >= m_Top + kVisibleRows)
        {
            m_Top = m_SelectedAbs + 1u - kVisibleRows;
        }
    }
    if (m_Top > m_SelectedAbs)
    {
        m_Top = m_SelectedAbs;
    }
    if (m_SelectedAbs >= m_Top + kVisibleRows)
    {
        m_Top = m_SelectedAbs + 1u - kVisibleRows;
    }

    m_LastUpPressed = up_pressed;
    m_LastDownPressed = down_pressed;

    if (enter_edge)
    {
        if (m_IsDir[m_SelectedAbs])
        {
            CopySmallText(m_CurrentDir, sizeof(m_CurrentDir), m_Paths[m_SelectedAbs]);
            if (!IsPathInsideRoot(m_CurrentDir, RootPath()))
            {
                CopySmallText(m_CurrentDir, sizeof(m_CurrentDir), RootPath());
            }
            RebuildCatalog();
            return ComboFileBrowserEventEnteredDirectory;
        }
        if (out_path != 0 && out_path_size > 0u)
        {
            CopySmallText(out_path, out_path_size, m_Paths[m_SelectedAbs]);
        }
        return ComboFileBrowserEventSelectedFile;
    }

    return (up_step || down_step) ? ComboFileBrowserEventSelectionChanged : ComboFileBrowserEventNone;
}

void CComboFileBrowser::CopySmallText(char *dst, unsigned dst_size, const char *src)
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

void CComboFileBrowser::FormatName16NoExt(const char *path, char out_name[17])
{
    if (out_name == 0)
    {
        return;
    }

    out_name[0] = '\0';
    if (path == 0 || path[0] == '\0')
    {
        return;
    }

    const char *base = path;
    for (const char *p = path; *p != '\0'; ++p)
    {
        if (*p == '/' || *p == '\\' || *p == ':')
        {
            base = p + 1;
        }
    }
    if (base[0] == '\0')
    {
        return;
    }

    const char *dot = 0;
    for (const char *p = base; *p != '\0'; ++p)
    {
        if (*p == '.')
        {
            dot = p;
        }
    }

    unsigned n = 0u;
    for (const char *p = base; *p != '\0' && p != dot && n < 16u; ++p)
    {
        char ch = ComboToUpperAscii(*p);
        if (ComboIsFileChar83(ch))
        {
            out_name[n++] = ch;
        }
    }
    if (n == 0u)
    {
        out_name[n++] = '_';
    }
    out_name[n] = '\0';
}

boolean CComboFileBrowser::IsPathInsideRoot(const char *path, const char *root)
{
    if (path == 0 || root == 0 || root[0] == '\0')
    {
        return FALSE;
    }

    unsigned i = 0u;
    for (; root[i] != '\0'; ++i)
    {
        if (path[i] == '\0')
        {
            return FALSE;
        }
        if (ComboToUpperAscii(path[i]) != ComboToUpperAscii(root[i]))
        {
            return FALSE;
        }
    }
    const char tail = path[i];
    return (tail == '\0' || tail == '/' || tail == '\\') ? TRUE : FALSE;
}

void CComboFileBrowser::RebuildCatalog(void)
{
    const char *root_path = RootPath();
    const unsigned file_type = (m_Mode == (unsigned) ComboFileBrowserModeDisk)
        ? (unsigned) ComboMediaTypeDisk
        : (unsigned) ComboMediaTypeRom;
    m_Count = 0u;
    m_SelectedAbs = 0u;
    m_Top = 0u;

    const TComboMediaEntry *entries = combo_media_catalog_entries();
    const unsigned total = combo_media_catalog_entry_count();
    if (!IsPathInsideRoot(m_CurrentDir, root_path))
    {
        CopySmallText(m_CurrentDir, sizeof(m_CurrentDir), root_path);
    }

    if (!ComboPathEqualsIgnoreCase(m_CurrentDir, root_path) && m_Count < kMaxEntries)
    {
        char parent_dir[192];
        ComboCopyParentDir(parent_dir, sizeof(parent_dir), m_CurrentDir);
        if (!IsPathInsideRoot(parent_dir, root_path) || parent_dir[0] == '\0')
        {
            CopySmallText(parent_dir, sizeof(parent_dir), root_path);
        }
        CopySmallText(m_Names[m_Count], sizeof(m_Names[0]), "..");
        CopySmallText(m_Paths[m_Count], sizeof(m_Paths[0]), parent_dir);
        m_IsDir[m_Count] = TRUE;
        m_IsParent[m_Count] = TRUE;
        ++m_Count;
    }

    if (entries == 0 || total == 0u)
    {
        return;
    }

    for (unsigned pass = 0u; pass < 2u && m_Count < kMaxEntries; ++pass)
    {
        for (unsigned i = 0u; i < total && m_Count < kMaxEntries; ++i)
        {
            const boolean is_dir = (entries[i].type == (unsigned char) ComboMediaTypeDir) ? TRUE : FALSE;
            const boolean is_file = (entries[i].type == (unsigned char) file_type) ? TRUE : FALSE;
            if (!is_dir && !is_file)
            {
                continue;
            }
            if (!IsPathInsideRoot(entries[i].path, root_path))
            {
                continue;
            }
            if ((pass == 0u && !is_dir) || (pass == 1u && !is_file))
            {
                continue;
            }

            char parent_dir[192];
            ComboCopyParentDir(parent_dir, sizeof(parent_dir), entries[i].path);
            if (!ComboPathEqualsIgnoreCase(parent_dir, m_CurrentDir))
            {
                continue;
            }

            const char *base = ComboBaseNameFromPath(entries[i].path);
            if (base == 0 || base[0] == '\0' || base[0] == '.')
            {
                continue;
            }

            boolean duplicate = FALSE;
            for (unsigned k = 0u; k < m_Count; ++k)
            {
                if (ComboPathEqualsIgnoreCase(m_Paths[k], entries[i].path))
                {
                    duplicate = TRUE;
                    break;
                }
            }
            if (duplicate)
            {
                continue;
            }

            FormatName16NoExt(entries[i].path, m_Names[m_Count]);
            CopySmallText(m_Paths[m_Count], sizeof(m_Paths[0]), entries[i].path);
            m_IsDir[m_Count] = is_dir;
            m_IsParent[m_Count] = FALSE;
            ++m_Count;
        }
    }
}

const char *CComboFileBrowser::RootPath(void) const
{
    return (m_Mode == (unsigned) ComboFileBrowserModeDisk) ? kDisksRootPath : kRomsRootPath;
}
