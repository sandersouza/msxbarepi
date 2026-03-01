#include "combo_menu.h"
#include "combo_locale.h"
#include "media_catalog.h"

#if DEPTH == 32
static const TScreenColor kPauseMenuBgColor = COLOR32(0, 0, 0x9B, 0xFF);
#else
static const TScreenColor kPauseMenuBgColor = COLOR16(0, 0, 0x9B >> 3);
#endif


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

static const char *kRomsRootPath = "SD:/roms";
static const char *kDisksRootPath = "SD:/disks";

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

boolean CComboPauseMenu::IsPathInsideRoot(const char *path, const char *root)
{
    if (path == 0)
    {
        return FALSE;
    }
    if (root == 0 || root[0] == '\0')
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

void CComboPauseMenu::FormatName83NoExt(const char *path, char out_name[17])
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

void CComboPauseMenu::RebuildBrowserCatalog(unsigned mode)
{
    const char *root_path = (mode == BrowserModeDisk) ? kDisksRootPath : kRomsRootPath;
    const unsigned file_type = (mode == BrowserModeDisk) ? (unsigned) ComboMediaTypeDisk : (unsigned) ComboMediaTypeRom;
    m_BrowserMode = mode;
    m_RomBrowserCount = 0u;
    m_RomBrowserSelectedAbs = 0u;
    m_RomBrowserTop = 0u;
    m_Selected = 0u;

    const TComboMediaEntry *entries = combo_media_catalog_entries();
    const unsigned total = combo_media_catalog_entry_count();
    if (!IsPathInsideRoot(m_RomBrowserCurrentDir, root_path))
    {
        CopySmallText(m_RomBrowserCurrentDir, sizeof(m_RomBrowserCurrentDir), root_path);
    }

    if (!ComboPathEqualsIgnoreCase(m_RomBrowserCurrentDir, root_path) && m_RomBrowserCount < kRomBrowserMaxEntries)
    {
        char parent_dir[192];
        ComboCopyParentDir(parent_dir, sizeof(parent_dir), m_RomBrowserCurrentDir);
        if (!IsPathInsideRoot(parent_dir, root_path) || parent_dir[0] == '\0')
        {
            CopySmallText(parent_dir, sizeof(parent_dir), root_path);
        }
        CopySmallText(m_RomBrowserNames[m_RomBrowserCount], sizeof(m_RomBrowserNames[0]), "..");
        CopySmallText(m_RomBrowserPaths[m_RomBrowserCount], sizeof(m_RomBrowserPaths[0]), parent_dir);
        m_RomBrowserIsDir[m_RomBrowserCount] = TRUE;
        m_RomBrowserIsParent[m_RomBrowserCount] = TRUE;
        ++m_RomBrowserCount;
    }

    if (entries == 0 || total == 0u)
    {
        return;
    }

    for (unsigned pass = 0u; pass < 2u && m_RomBrowserCount < kRomBrowserMaxEntries; ++pass)
    {
        for (unsigned i = 0u; i < total && m_RomBrowserCount < kRomBrowserMaxEntries; ++i)
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
            if (!ComboPathEqualsIgnoreCase(parent_dir, m_RomBrowserCurrentDir))
            {
                continue;
            }

            const char *base = ComboBaseNameFromPath(entries[i].path);
            if (base == 0 || base[0] == '\0' || base[0] == '.')
            {
                continue;
            }

            boolean duplicate = FALSE;
            for (unsigned k = 0u; k < m_RomBrowserCount; ++k)
            {
                if (ComboPathEqualsIgnoreCase(m_RomBrowserPaths[k], entries[i].path))
                {
                    duplicate = TRUE;
                    break;
                }
            }
            if (duplicate)
            {
                continue;
            }

            FormatName83NoExt(entries[i].path, m_RomBrowserNames[m_RomBrowserCount]);
            CopySmallText(m_RomBrowserPaths[m_RomBrowserCount], sizeof(m_RomBrowserPaths[0]), entries[i].path);
            m_RomBrowserIsDir[m_RomBrowserCount] = is_dir;
            m_RomBrowserIsParent[m_RomBrowserCount] = FALSE;
            ++m_RomBrowserCount;
        }
    }
}

CComboPauseMenu::CComboPauseMenu(void)
: m_Row(1),
  m_Col(1),
  m_Selected(0),
  m_LastDrawnSelected(0xFFFFFFFFu),
  m_Visible(FALSE),
    m_View(MenuViewRoot),
    m_OverscanPercent(0u),
    m_Language(ComboLanguageEN),
    m_WidescreenEnabled(FALSE),
    m_ScanlineMode(0u),
    m_RefreshRateHz(60u),
    m_DiskRomEnabled(TRUE),
    m_BootMode(0u),
    m_Z80TurboMode(0u),
    m_RenshaMode(0u),
    m_SccCartEnabled(TRUE),
    m_OverlayEnabled(FALSE),
    m_OverlayAvailable(FALSE),
    m_AudioGainPercent(50u),
    m_LoadRomSlot1Name{0},
    m_LoadRomSlot2Name{0},
    m_LoadDiskDrive1Name{0},
    m_LoadDiskDrive2Name{0},
    m_BrowserMode(BrowserModeRom),
    m_RomBrowserSlot(0u),
    m_RomBrowserCount(0u),
    m_RomBrowserSelectedAbs(0u),
    m_RomBrowserTop(0u),
    m_RomBrowserNames{{0}},
    m_RomBrowserPaths{{0}},
    m_RomBrowserIsDir{FALSE},
    m_RomBrowserIsParent{FALSE},
    m_RomBrowserCurrentDir{0},
    m_RomBrowserItems{{0}},
    m_RomBrowserItemLabels{{0}},
    m_RomBrowserEmptyLabel{0},
    m_HasPendingRomSelection(FALSE),
    m_PendingRomSlot(0u),
    m_PendingRomPath{0},
    m_HasPendingDiskSelection(FALSE),
    m_PendingDiskDrive(0u),
    m_PendingDiskPath{0},
    m_LastBackPressed(FALSE),
    m_LastDrawnView(MenuViewRoot),
    m_LastDrawnOverscanPercent(0u),
    m_LastDrawnLanguage(ComboLanguageEN),
    m_LastDrawnWidescreen(FALSE),
    m_LastDrawnScanlineMode(0u),
    m_LastDrawnRefreshRateHz(60u),
    m_LastDrawnDiskRomEnabled(TRUE),
    m_LastDrawnBootMode(0u),
    m_LastDrawnZ80TurboMode(0u),
    m_LastDrawnRenshaMode(0u),
    m_LastDrawnSccCart(TRUE),
    m_LastDrawnOverlay(FALSE),
    m_LastDrawnOverlayAvailable(FALSE),
    m_LastDrawnAudioGainPercent(50u),
    m_LastDrawnLoadRomSlot1Name{0},
    m_LastDrawnLoadRomSlot2Name{0},
    m_LastDrawnLoadDiskDrive1Name{0},
    m_LastDrawnLoadDiskDrive2Name{0},
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
  m_LastEnterPressed(FALSE),
  m_LastDeletePressed(FALSE)
{
    CopySmallText(m_LoadRomSlot1Name, sizeof(m_LoadRomSlot1Name), "");
    CopySmallText(m_LoadRomSlot2Name, sizeof(m_LoadRomSlot2Name), "");
    CopySmallText(m_LoadDiskDrive1Name, sizeof(m_LoadDiskDrive1Name), "");
    CopySmallText(m_LoadDiskDrive2Name, sizeof(m_LoadDiskDrive2Name), "");
    CopySmallText(m_RomBrowserCurrentDir, sizeof(m_RomBrowserCurrentDir), kRomsRootPath);
    CopySmallText(m_RomBrowserEmptyLabel, sizeof(m_RomBrowserEmptyLabel), "");
    m_HasPendingRomSelection = FALSE;
    m_PendingRomSlot = 0u;
    CopySmallText(m_PendingRomPath, sizeof(m_PendingRomPath), "");
    m_HasPendingDiskSelection = FALSE;
    m_PendingDiskDrive = 0u;
    CopySmallText(m_PendingDiskPath, sizeof(m_PendingDiskPath), "");
    CopySmallText(m_LastDrawnLoadRomSlot1Name, sizeof(m_LastDrawnLoadRomSlot1Name), "");
    CopySmallText(m_LastDrawnLoadRomSlot2Name, sizeof(m_LastDrawnLoadRomSlot2Name), "");
    CopySmallText(m_LastDrawnLoadDiskDrive1Name, sizeof(m_LastDrawnLoadDiskDrive1Name), "");
    CopySmallText(m_LastDrawnLoadDiskDrive2Name, sizeof(m_LastDrawnLoadDiskDrive2Name), "");
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
    m_LastDrawnOverscanPercent = m_OverscanPercent;
    m_LastDrawnLanguage = m_Language;
    m_LastDrawnWidescreen = m_WidescreenEnabled;
    m_LastDrawnScanlineMode = m_ScanlineMode;
    m_LastDrawnRefreshRateHz = m_RefreshRateHz;
    m_LastDrawnDiskRomEnabled = m_DiskRomEnabled;
    m_LastDrawnBootMode = m_BootMode;
    m_LastDrawnZ80TurboMode = m_Z80TurboMode;
    m_LastDrawnRenshaMode = m_RenshaMode;
    m_LastDrawnSccCart = m_SccCartEnabled;
    m_LastDrawnOverlay = m_OverlayEnabled;
    m_LastDrawnOverlayAvailable = m_OverlayAvailable;
    m_LastDrawnAudioGainPercent = m_AudioGainPercent;
    m_RomBrowserSlot = 0u;
    m_BrowserMode = BrowserModeRom;
    m_RomBrowserCount = 0u;
    m_RomBrowserSelectedAbs = 0u;
    m_RomBrowserTop = 0u;
    CopySmallText(m_RomBrowserCurrentDir, sizeof(m_RomBrowserCurrentDir), kRomsRootPath);
    for (unsigned i = 0u; i < kRomBrowserMaxEntries; ++i)
    {
        m_RomBrowserIsDir[i] = FALSE;
        m_RomBrowserIsParent[i] = FALSE;
    }
    m_HasPendingRomSelection = FALSE;
    m_PendingRomSlot = 0u;
    CopySmallText(m_PendingRomPath, sizeof(m_PendingRomPath), "");
    m_HasPendingDiskSelection = FALSE;
    m_PendingDiskDrive = 0u;
    CopySmallText(m_PendingDiskPath, sizeof(m_PendingDiskPath), "");
    CopySmallText(m_LastDrawnLoadRomSlot1Name, sizeof(m_LastDrawnLoadRomSlot1Name), m_LoadRomSlot1Name);
    CopySmallText(m_LastDrawnLoadRomSlot2Name, sizeof(m_LastDrawnLoadRomSlot2Name), m_LoadRomSlot2Name);
    CopySmallText(m_LastDrawnLoadDiskDrive1Name, sizeof(m_LastDrawnLoadDiskDrive1Name), m_LoadDiskDrive1Name);
    CopySmallText(m_LastDrawnLoadDiskDrive2Name, sizeof(m_LastDrawnLoadDiskDrive2Name), m_LoadDiskDrive2Name);
    m_ForceRedraw = TRUE;
    m_RequestBackgroundRestore = FALSE;
    m_LastBoxValid = FALSE;
    m_LastUpPressed = FALSE;
    m_LastDownPressed = FALSE;
    m_LastLeftPressed = FALSE;
    m_LastRightPressed = FALSE;
    m_LastEnterPressed = FALSE;
    m_LastDeletePressed = FALSE;
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

void CComboPauseMenu::SetLanguage(unsigned language)
{
    language = combo_locale_clamp_language(language);
    if (m_Language != language)
    {
        m_Language = language;
        m_ForceRedraw = TRUE;
    }
}

unsigned CComboPauseMenu::GetLanguage(void) const
{
    return m_Language;
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

boolean CComboPauseMenu::IsInSettings(void) const
{
    return (m_View != MenuViewRoot) ? TRUE : FALSE;
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
    if (m_View == MenuViewSettings)
    {
        return combo_menu_settings_items_get(
            m_OverscanPercent,
            m_Language,
            m_WidescreenEnabled,
            m_ScanlineMode,
            m_RefreshRateHz,
            m_DiskRomEnabled,
            m_BootMode,
            m_Z80TurboMode,
            m_RenshaMode,
            m_SccCartEnabled,
            m_OverlayEnabled,
            m_OverlayAvailable,
            m_AudioGainPercent,
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
    if (m_View == MenuViewLoadRomBrowser || m_View == MenuViewLoadDiskBrowser)
    {
        const TComboLocaleStrings *locale = combo_locale_get(m_Language);
        if (locale == 0)
        {
            locale = combo_locale_get(ComboLanguageEN);
        }
        const char *empty = (m_View == MenuViewLoadDiskBrowser) ? locale->load_disk_empty : locale->load_rom_empty;
        if (empty == 0 || empty[0] == '\0')
        {
            empty = "EMPTY";
        }

        if (m_RomBrowserCount == 0u)
        {
            CopySmallText(m_RomBrowserEmptyLabel, sizeof(m_RomBrowserEmptyLabel), empty);
            m_RomBrowserItems[0].label = m_RomBrowserEmptyLabel;
            m_RomBrowserItems[0].action = ComboMenuActionNone;
            m_RomBrowserItems[0].selectable = FALSE;
            if (count != 0)
            {
                *count = 1u;
            }
            return m_RomBrowserItems;
        }

        const unsigned remaining = m_RomBrowserCount - m_RomBrowserTop;
        const unsigned visible = remaining < kRomBrowserVisibleRows ? remaining : kRomBrowserVisibleRows;
        for (unsigned i = 0u; i < visible; ++i)
        {
            const unsigned abs = m_RomBrowserTop + i;
            CopySmallText(m_RomBrowserItemLabels[i], sizeof(m_RomBrowserItemLabels[i]), m_RomBrowserNames[abs]);
            m_RomBrowserItems[i].label = m_RomBrowserItemLabels[i];
            m_RomBrowserItems[i].action = ComboMenuActionNone;
            m_RomBrowserItems[i].selectable = TRUE;
        }
        if (count != 0)
        {
            *count = visible;
        }
        return m_RomBrowserItems;
    }

    return combo_menu_root_items_get(m_Language, count);
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
                                               boolean back_pressed,
                                               boolean delete_pressed)
{
    if (!paused)
    {
        m_LastBackPressed = back_pressed;
        m_LastUpPressed = up_pressed;
        m_LastDownPressed = down_pressed;
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
        else
        {
            m_View = MenuViewRoot;
        }
        m_Selected = FindFirstSelectable();
        m_ForceRedraw = TRUE;
        m_RequestBackgroundRestore = TRUE;
        m_LastBackPressed = back_pressed;
        m_LastUpPressed = up_pressed;
        m_LastDownPressed = down_pressed;
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

    if (m_View == MenuViewLoadRomBrowser || m_View == MenuViewLoadDiskBrowser)
    {
        if (m_RomBrowserCount > 0u)
        {
            if (up_pressed && !m_LastUpPressed)
            {
                m_RomBrowserSelectedAbs = (m_RomBrowserSelectedAbs == 0u) ? (m_RomBrowserCount - 1u) : (m_RomBrowserSelectedAbs - 1u);
                if (m_RomBrowserSelectedAbs < m_RomBrowserTop)
                {
                    m_RomBrowserTop = m_RomBrowserSelectedAbs;
                }
                m_ForceRedraw = TRUE;
            }
            if (down_pressed && !m_LastDownPressed)
            {
                m_RomBrowserSelectedAbs = (m_RomBrowserSelectedAbs + 1u) % m_RomBrowserCount;
                if (m_RomBrowserSelectedAbs >= m_RomBrowserTop + kRomBrowserVisibleRows)
                {
                    m_RomBrowserTop = m_RomBrowserSelectedAbs + 1u - kRomBrowserVisibleRows;
                }
                m_ForceRedraw = TRUE;
            }
            if (m_RomBrowserTop > m_RomBrowserSelectedAbs)
            {
                m_RomBrowserTop = m_RomBrowserSelectedAbs;
            }
            if (m_RomBrowserSelectedAbs >= m_RomBrowserTop + kRomBrowserVisibleRows)
            {
                m_RomBrowserTop = m_RomBrowserSelectedAbs + 1u - kRomBrowserVisibleRows;
            }
            m_Selected = m_RomBrowserSelectedAbs - m_RomBrowserTop;

            if (enter_pressed && !m_LastEnterPressed)
            {
                const unsigned abs = m_RomBrowserSelectedAbs;
                if (abs < m_RomBrowserCount && m_RomBrowserIsDir[abs])
                {
                    if (m_RomBrowserIsParent[abs])
                    {
                        CopySmallText(m_RomBrowserCurrentDir, sizeof(m_RomBrowserCurrentDir), m_RomBrowserPaths[abs]);
                    }
                    else
                    {
                        CopySmallText(m_RomBrowserCurrentDir, sizeof(m_RomBrowserCurrentDir), m_RomBrowserPaths[abs]);
                    }
                    const char *root_path = (m_BrowserMode == BrowserModeDisk) ? kDisksRootPath : kRomsRootPath;
                    if (!IsPathInsideRoot(m_RomBrowserCurrentDir, root_path))
                    {
                        CopySmallText(m_RomBrowserCurrentDir, sizeof(m_RomBrowserCurrentDir), root_path);
                    }
                    RebuildBrowserCatalog(m_BrowserMode);
                    m_ForceRedraw = TRUE;
                }
                else if (abs < m_RomBrowserCount
                      && !m_RomBrowserIsDir[abs]
                      && m_BrowserMode == BrowserModeRom)
                {
                    m_HasPendingRomSelection = TRUE;
                    m_PendingRomSlot = m_RomBrowserSlot;
                    CopySmallText(m_PendingRomPath, sizeof(m_PendingRomPath), m_RomBrowserPaths[abs]);
                    action = (m_RomBrowserSlot == 0u) ? ComboMenuActionCartridgeA : ComboMenuActionCartridgeB;
                    m_View = MenuViewLoadRom;
                    m_Selected = (m_RomBrowserSlot == 0u) ? 0u : 1u;
                    m_ForceRedraw = TRUE;
                    m_RequestBackgroundRestore = TRUE;
                }
                else if (abs < m_RomBrowserCount
                      && !m_RomBrowserIsDir[abs]
                      && m_BrowserMode == BrowserModeDisk)
                {
                    m_HasPendingDiskSelection = TRUE;
                    m_PendingDiskDrive = m_RomBrowserSlot;
                    CopySmallText(m_PendingDiskPath, sizeof(m_PendingDiskPath), m_RomBrowserPaths[abs]);
                    action = (m_RomBrowserSlot == 0u) ? ComboMenuActionDiskDriveA : ComboMenuActionDiskDriveB;
                    m_View = MenuViewLoadDisk;
                    m_Selected = (m_RomBrowserSlot == 0u) ? 0u : 1u;
                    m_ForceRedraw = TRUE;
                    m_RequestBackgroundRestore = TRUE;
                }
            }
        }

        m_LastBackPressed = back_pressed;
        m_LastUpPressed = up_pressed;
        m_LastDownPressed = down_pressed;
        m_LastLeftPressed = left_pressed;
        m_LastRightPressed = right_pressed;
        m_LastEnterPressed = enter_pressed;
        m_LastDeletePressed = delete_pressed;
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
    if (m_View == MenuViewSettings && items[m_Selected].selectable)
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
            }
            else if (right_edge || enter_edge)
            {
                action = ComboMenuActionCycleScanlines;
                m_ForceRedraw = TRUE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionCycleRefreshRate)
        {
            if (left_edge)
            {
                action = ComboMenuActionCycleRefreshRatePrev;
                m_ForceRedraw = TRUE;
            }
            else if (right_edge || enter_edge)
            {
                action = ComboMenuActionCycleRefreshRate;
                m_ForceRedraw = TRUE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionCycleBootMode)
        {
            if (left_edge)
            {
                action = ComboMenuActionCycleBootModePrev;
                m_ForceRedraw = TRUE;
            }
            else if (right_edge || enter_edge)
            {
                action = ComboMenuActionCycleBootMode;
                m_ForceRedraw = TRUE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionCycleZ80Turbo)
        {
            if (left_edge)
            {
                action = ComboMenuActionCycleZ80TurboPrev;
                m_ForceRedraw = TRUE;
            }
            else if (right_edge || enter_edge)
            {
                action = ComboMenuActionCycleZ80Turbo;
                m_ForceRedraw = TRUE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionCycleLanguage)
        {
            if (left_edge)
            {
                action = ComboMenuActionCycleLanguagePrev;
                m_ForceRedraw = TRUE;
            }
            else if (right_edge || enter_edge)
            {
                action = ComboMenuActionCycleLanguage;
                m_ForceRedraw = TRUE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionToggleSccCart)
        {
            if (enter_edge || left_edge || right_edge)
            {
                action = items[m_Selected].action;
                m_ForceRedraw = TRUE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if (items[m_Selected].action == ComboMenuActionAudioGainChanged)
        {
            unsigned next_value = m_AudioGainPercent;
            if (left_edge)
            {
                next_value = (next_value == 0u) ? 100u : (next_value - 10u);
            }
            if (right_edge || enter_edge)
            {
                next_value = (next_value >= 100u) ? 0u : (next_value + 10u);
                if (next_value > 100u)
                {
                    next_value = 100u;
                }
            }
            if (next_value != m_AudioGainPercent)
            {
                m_AudioGainPercent = next_value;
                m_ForceRedraw = TRUE;
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
            }
            else if (right_edge || enter_edge)
            {
                action = ComboMenuActionCycleRensha;
                m_ForceRedraw = TRUE;
            }
            handled_settings_input = enter_edge || left_edge || right_edge;
        }
        else if ((items[m_Selected].action == ComboMenuActionToggleWidescreen)
              || (items[m_Selected].action == ComboMenuActionToggleDiskRom)
              || (items[m_Selected].action == ComboMenuActionToggleOverlay))
        {
            if (enter_edge || left_edge || right_edge)
            {
                action = items[m_Selected].action;
                m_ForceRedraw = TRUE;
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
            m_RequestBackgroundRestore = TRUE;
        }
        else if (m_View == MenuViewRoot && items[m_Selected].action == ComboMenuActionCartridgeA)
        {
            m_View = MenuViewLoadRom;
            m_Selected = FindFirstSelectable();
            m_ForceRedraw = TRUE;
            m_RequestBackgroundRestore = TRUE;
        }
        else if (m_View == MenuViewRoot && items[m_Selected].action == ComboMenuActionDiskDriveA)
        {
            m_View = MenuViewLoadDisk;
            m_Selected = FindFirstSelectable();
            m_ForceRedraw = TRUE;
            m_RequestBackgroundRestore = TRUE;
        }
        else if (m_View == MenuViewLoadRom
              && (items[m_Selected].action == ComboMenuActionCartridgeA || items[m_Selected].action == ComboMenuActionCartridgeB))
        {
            m_RomBrowserSlot = (items[m_Selected].action == ComboMenuActionCartridgeA) ? 0u : 1u;
            CopySmallText(m_RomBrowserCurrentDir, sizeof(m_RomBrowserCurrentDir), kRomsRootPath);
            RebuildBrowserCatalog(BrowserModeRom);
            m_View = MenuViewLoadRomBrowser;
            m_Selected = 0u;
            m_ForceRedraw = TRUE;
            m_RequestBackgroundRestore = TRUE;
        }
        else if (m_View == MenuViewLoadDisk
              && (items[m_Selected].action == ComboMenuActionDiskDriveA || items[m_Selected].action == ComboMenuActionDiskDriveB))
        {
            m_RomBrowserSlot = (items[m_Selected].action == ComboMenuActionDiskDriveA) ? 0u : 1u;
            CopySmallText(m_RomBrowserCurrentDir, sizeof(m_RomBrowserCurrentDir), kDisksRootPath);
            RebuildBrowserCatalog(BrowserModeDisk);
            m_View = MenuViewLoadDiskBrowser;
            m_Selected = 0u;
            m_ForceRedraw = TRUE;
            m_RequestBackgroundRestore = TRUE;
        }
        else
        {
            action = items[m_Selected].action;
            if (m_View == MenuViewSettings)
            {
                /* Force redraw of dynamic labels (e.g. [LIG]/[DES]) immediately on Enter. */
                m_ForceRedraw = TRUE;
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
    m_LastLeftPressed = left_pressed;
    m_LastRightPressed = right_pressed;
    m_LastEnterPressed = enter_pressed;
    m_LastDeletePressed = delete_pressed;

    return action;
}

void CComboPauseMenu::Render(boolean visible, CGfxTextBoxRenderer *renderer, unsigned screen_width, unsigned screen_height,
                             unsigned anchor_x, unsigned anchor_y, unsigned anchor_w, unsigned anchor_h)
{
    const TGfxTextStyle title_style = { BRIGHT_WHITE_COLOR, kPauseMenuBgColor, TRUE };
    const TGfxTextStyle normal_style = { BRIGHT_WHITE_COLOR, kPauseMenuBgColor, FALSE };
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
    else if (m_View == MenuViewLoadRom)
    {
        title = locale->title_load_rom;
    }
    else if (m_View == MenuViewLoadDisk)
    {
        title = locale->title_load_disk;
    }
    else if (m_View == MenuViewLoadRomBrowser || m_View == MenuViewLoadDiskBrowser)
    {
        const boolean disk_browser = (m_View == MenuViewLoadDiskBrowser) ? TRUE : FALSE;
        const char *slot_tag = disk_browser
            ? ((m_RomBrowserSlot == 0u) ? locale->load_disk_drive1 : locale->load_disk_drive2)
            : ((m_RomBrowserSlot == 0u) ? locale->load_rom_slot1 : locale->load_rom_slot2);
        if (slot_tag == 0 || slot_tag[0] == '\0')
        {
            slot_tag = disk_browser
                ? ((m_RomBrowserSlot == 0u) ? "DRIVE1" : "DRIVE2")
                : ((m_RomBrowserSlot == 0u) ? "SLOT1" : "SLOT2");
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

    const unsigned box_cols = content_cols;
    const boolean has_unload_hint = (m_View == MenuViewLoadRom || m_View == MenuViewLoadDisk) ? TRUE : FALSE;
    const unsigned box_rows = item_count + 3u + (has_unload_hint ? 2u : 0u);
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
     && m_LastDrawnView == m_View
     && m_LastDrawnOverscanPercent == m_OverscanPercent
     && m_LastDrawnLanguage == m_Language
     && m_LastDrawnWidescreen == m_WidescreenEnabled
     && m_LastDrawnScanlineMode == m_ScanlineMode
     && m_LastDrawnRefreshRateHz == m_RefreshRateHz
     && m_LastDrawnDiskRomEnabled == m_DiskRomEnabled
     && m_LastDrawnBootMode == m_BootMode
     && m_LastDrawnZ80TurboMode == m_Z80TurboMode
     && m_LastDrawnRenshaMode == m_RenshaMode
     && m_LastDrawnSccCart == m_SccCartEnabled
     && m_LastDrawnOverlay == m_OverlayEnabled
     && m_LastDrawnOverlayAvailable == m_OverlayAvailable
     && m_LastDrawnAudioGainPercent == m_AudioGainPercent
     && ComboTextEquals(m_LastDrawnLoadRomSlot1Name, m_LoadRomSlot1Name)
     && ComboTextEquals(m_LastDrawnLoadRomSlot2Name, m_LoadRomSlot2Name)
     && ComboTextEquals(m_LastDrawnLoadDiskDrive1Name, m_LoadDiskDrive1Name)
     && ComboTextEquals(m_LastDrawnLoadDiskDrive2Name, m_LoadDiskDrive2Name))
    {
        return;
    }

    renderer->FillRect(box_x, box_y, box_w_px, box_h_px, kPauseMenuBgColor);
    renderer->DrawRectBorder(box_x, box_y, box_w_px, box_h_px, BRIGHT_WHITE_COLOR, 2u);

    const unsigned title_x = box_x + ((box_cols - title_len) / 2u) * cell_w;
    const unsigned title_y = box_y;
    renderer->DrawText(title_x, title_y, title, title_style, scale_x, scale_y);

    for (unsigned i = 0; i < item_count; ++i)
    {
        const unsigned row = 2u + i;
        const unsigned y = box_y + (row * cell_h);
        const unsigned text_len = ComboStrLen(items[i].label);
        const boolean settings_row = (m_View == MenuViewSettings);
        const boolean load_media_row = (m_View == MenuViewLoadRom || m_View == MenuViewLoadDisk);
        const boolean browser_row = (m_View == MenuViewLoadRomBrowser || m_View == MenuViewLoadDiskBrowser);
        const boolean separator_row = (items[i].action == ComboMenuActionSeparator);
        const boolean selected_row = (items[i].selectable && i == m_Selected) ? TRUE : FALSE;

        if (selected_row && box_cols > 4u && !load_media_row)
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

        if (settings_row || load_media_row)
        {
            const unsigned split = settings_row ? ComboFindFlagStart(items[i].label) : ComboFindTabSplit(items[i].label);
            const unsigned left_len = split < text_len ? split : text_len;
            const unsigned flag_start = load_media_row && split < text_len ? (split + 1u) : split;
            const unsigned flag_len = split < text_len ? (text_len - flag_start) : 0u;
            const unsigned inner_left_col = 2u;
            const unsigned inner_right_col = box_cols > 2u ? (box_cols - 3u) : 0u;
            const unsigned x_left = box_x + (inner_left_col * cell_w);
            const unsigned x_flag = flag_len > 0u
                ? box_x + ((inner_right_col + 1u - flag_len) * cell_w)
                : 0u;
            const TGfxTextStyle left_style = (settings_row && selected_row) ? selected_style : normal_style;
            TGfxTextStyle flag_style = left_style;

            if (load_media_row && box_cols > 4u)
            {
                /* Keep media value area visually stable (16 cols) by clearing row span first. */
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
                const unsigned x = box_x + ((box_cols - text_len) / 2u) * cell_w;
                renderer->DrawText(x, y, items[i].label, left_style, scale_x, scale_y);
            }
        }
        else if (browser_row)
        {
            const unsigned x = box_x + (2u * cell_w);
            const TGfxTextStyle style = (items[i].selectable && i == m_Selected) ? selected_style : normal_style;
            const unsigned abs = m_RomBrowserTop + i;
            const boolean draw_folder_icon = (abs < m_RomBrowserCount && m_RomBrowserIsDir[abs] && !m_RomBrowserIsParent[abs]) ? TRUE : FALSE;
            if (draw_folder_icon)
            {
                renderer->DrawText(x, y, "\x1E\x1F", style, scale_x, scale_y);
                renderer->DrawText(x + (3u * cell_w), y, items[i].label, style, scale_x, scale_y);
            }
            else
            {
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
    m_LastDrawnOverscanPercent = m_OverscanPercent;
    m_LastDrawnLanguage = m_Language;
    m_LastDrawnWidescreen = m_WidescreenEnabled;
    m_LastDrawnScanlineMode = m_ScanlineMode;
    m_LastDrawnRefreshRateHz = m_RefreshRateHz;
    m_LastDrawnDiskRomEnabled = m_DiskRomEnabled;
    m_LastDrawnBootMode = m_BootMode;
    m_LastDrawnZ80TurboMode = m_Z80TurboMode;
    m_LastDrawnRenshaMode = m_RenshaMode;
    m_LastDrawnSccCart = m_SccCartEnabled;
    m_LastDrawnOverlay = m_OverlayEnabled;
    m_LastDrawnOverlayAvailable = m_OverlayAvailable;
    m_LastDrawnAudioGainPercent = m_AudioGainPercent;
    CopySmallText(m_LastDrawnLoadRomSlot1Name, sizeof(m_LastDrawnLoadRomSlot1Name), m_LoadRomSlot1Name);
    CopySmallText(m_LastDrawnLoadRomSlot2Name, sizeof(m_LastDrawnLoadRomSlot2Name), m_LoadRomSlot2Name);
    CopySmallText(m_LastDrawnLoadDiskDrive1Name, sizeof(m_LastDrawnLoadDiskDrive1Name), m_LoadDiskDrive1Name);
    CopySmallText(m_LastDrawnLoadDiskDrive2Name, sizeof(m_LastDrawnLoadDiskDrive2Name), m_LoadDiskDrive2Name);
    m_LastBoxX = box_x;
    m_LastBoxY = box_y;
    m_LastBoxW = box_w_px;
    m_LastBoxH = box_h_px;
    m_LastBoxValid = TRUE;
    m_ForceRedraw = FALSE;
    m_Visible = TRUE;
}
