#include "combo_menu_items.h"
#include "combo_locale.h"
#include "backend/runtime/runtime.h"

#ifndef MSXBARE_FEAT_SCC
#define MSXBARE_FEAT_SCC 1
#endif
#ifndef MSXBARE_FEAT_GFX9000
#define MSXBARE_FEAT_GFX9000 1
#endif
#ifndef MSXBARE_FEAT_FMPAC
#define MSXBARE_FEAT_FMPAC 1
#endif
#ifndef MSXBARE_FEAT_DISK_ROM
#define MSXBARE_FEAT_DISK_ROM 1
#endif
#ifndef MSXBARE_FEAT_MEGARAM
#define MSXBARE_FEAT_MEGARAM 1
#endif
#ifndef MSXBARE_FEAT_MSX2
#define MSXBARE_FEAT_MSX2 1
#endif
#ifndef MSXBARE_FEAT_MSX2P
#define MSXBARE_FEAT_MSX2P 1
#endif
#ifndef MSXBARE_FEAT_LOAD_ROM
#define MSXBARE_FEAT_LOAD_ROM 1
#endif
#ifndef MSXBARE_FEAT_LOAD_DISK
#define MSXBARE_FEAT_LOAD_DISK 1
#endif
#ifndef MSXBARE_ONE_ROM_MODE
#define MSXBARE_ONE_ROM_MODE 0
#endif
#ifndef MSXBARE_BOOT_MODE_LOCKED
#define MSXBARE_BOOT_MODE_LOCKED 0
#endif
#ifndef MSXBARE_ENABLE_DEBUG_OVERLAY
#define MSXBARE_ENABLE_DEBUG_OVERLAY 0
#endif
#ifndef MSXBARE_ENABLE_FMSX
#define MSXBARE_ENABLE_FMSX 0
#endif
#ifndef MSXBARE_PATREON_TAG
#define MSXBARE_PATREON_TAG ""
#endif

static void BuildPatreonLabel(char *dst, unsigned dst_size, const char *prefix, const char *tag)
{
    if (dst == 0 || dst_size == 0u)
    {
        return;
    }
    dst[0] = '\0';

    if (prefix == 0)
    {
        prefix = "-- Patreon --";
    }
    if (tag == 0 || tag[0] == '\0')
    {
        return;
    }

    unsigned i = 0u;
    while (prefix[i] != '\0' && i + 1u < dst_size)
    {
        dst[i] = prefix[i];
        ++i;
    }
    if (i > 0u && i + 1u < dst_size)
    {
        dst[i++] = ' ';
    }

    unsigned copied = 0u;
    while (tag[copied] != '\0' && copied < 20u && i + 1u < dst_size)
    {
        dst[i++] = tag[copied++];
    }
    dst[i] = '\0';
}

static boolean MenuProfileSupported(unsigned profile)
{
    if (profile == 1u)
    {
        return MSXBARE_FEAT_MSX2 ? TRUE : FALSE;
    }
    if (profile == 2u)
    {
        return MSXBARE_FEAT_MSX2P ? TRUE : FALSE;
    }
    return TRUE;
}

static unsigned MenuSupportedProfileCount(void)
{
    const unsigned count = backend_machine_profile_count();
    unsigned supported = 0u;
    for (unsigned i = 0u; i < count; ++i)
    {
        if (MenuProfileSupported(i))
        {
            ++supported;
        }
    }
    return supported;
}

static unsigned AudioGainUiLevelFromPercent(unsigned percent)
{
    if (percent > 100u)
    {
        percent = 100u;
    }
    return (percent * 9u + 50u) / 100u;
}

static unsigned MenuScaleFactorFromPercent(unsigned percent)
{
    if (percent <= 200u)
    {
        return 1u;
    }
    if (percent >= 300u)
    {
        return 3u;
    }
    return 2u;
}

static const char *MenuOverlayModeFlag(const TComboLocaleStrings *locale, unsigned overlay_mode)
{
    if (locale == 0)
    {
        return "";
    }

    switch (overlay_mode)
    {
    case ComboDebugOverlayMax: return locale->flag_max;
    case ComboDebugOverlayMin: return locale->flag_min;
    case ComboDebugOverlayOff:
    default: return locale->flag_off;
    }
}

static void BuildLabelFlag(char *dst, unsigned dst_size, const char *label, const char *flag)
{
    if (dst == 0 || dst_size == 0u)
    {
        return;
    }
    if (label == 0)
    {
        label = "";
    }
    if (flag == 0)
    {
        flag = "";
    }

    unsigned i = 0u;
    while (label[i] != '\0' && i + 1u < dst_size)
    {
        dst[i] = label[i];
        ++i;
    }
    if (i + 1u < dst_size) dst[i++] = ' ';
    if (i + 1u < dst_size) dst[i++] = '[';
    for (unsigned j = 0u; flag[j] != '\0' && i + 1u < dst_size; ++j)
    {
        dst[i++] = flag[j];
    }
    if (i + 1u < dst_size) dst[i++] = ']';
    dst[i] = '\0';
}

const TComboMenuItem *combo_menu_root_items_get(unsigned language, unsigned boot_mode, unsigned *count)
{
    static TComboMenuItem root_items[16];
    static char patreon_label[48];
    static char patreon_tag_line[32];
    const TComboLocaleStrings *locale = combo_locale_get(language);
    if (locale == 0)
    {
        locale = combo_locale_get(ComboLanguageEN);
    }

    unsigned item_count = 0u;
#define ADD_ROOT_ITEM(lbl, act, sel) \
    do { \
        root_items[item_count].label = (lbl); \
        root_items[item_count].action = (act); \
        root_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly; \
        root_items[item_count++].selectable = (sel); \
    } while (0)

    if (MSXBARE_FEAT_LOAD_ROM)
    {
        ADD_ROOT_ITEM(locale->root_load_cart, ComboMenuActionCartridgeA, TRUE);
    }
    if (MSXBARE_FEAT_LOAD_DISK)
    {
        ADD_ROOT_ITEM(locale->root_load_disk, ComboMenuActionDiskDriveA, TRUE);
    }
    if (MSXBARE_ENABLE_FMSX)
    {
        ADD_ROOT_ITEM(locale->root_load_cassette, ComboMenuActionCassette, TRUE);
    }
    if (MSXBARE_FEAT_LOAD_ROM || MSXBARE_FEAT_LOAD_DISK || MSXBARE_ENABLE_FMSX)
    {
        ADD_ROOT_ITEM("", ComboMenuActionSeparator, FALSE);
    }
    ADD_ROOT_ITEM(locale->root_save_state, ComboMenuActionSaveState, TRUE);
    ADD_ROOT_ITEM(locale->root_load_state, ComboMenuActionLoadState, TRUE);
    ADD_ROOT_ITEM("", ComboMenuActionSeparator, FALSE);
    ADD_ROOT_ITEM(locale->root_settings, ComboMenuActionSettings, TRUE);
    if (MSXBARE_ENABLE_FMSX)
    {
        ADD_ROOT_ITEM(locale->root_game_master, ComboMenuActionGameMaster, TRUE);
    }
    if (MSXBARE_ENABLE_DEBUG_OVERLAY)
    {
        ADD_ROOT_ITEM(locale->root_debug, ComboMenuActionDebug, TRUE);
    }
    ADD_ROOT_ITEM("", ComboMenuActionSeparator, FALSE);
    if (boot_mode != 2u)
    {
        ADD_ROOT_ITEM(locale->root_msx_basic, ComboMenuActionMsxBasic, TRUE);
    }
    ADD_ROOT_ITEM(locale->root_reset, ComboMenuActionReset, TRUE);
    BuildPatreonLabel(patreon_label, sizeof(patreon_label), locale->root_patreon_prefix, MSXBARE_PATREON_TAG);
    if (patreon_label[0] != '\0')
    {
        BuildPatreonLabel(patreon_tag_line, sizeof(patreon_tag_line), "", MSXBARE_PATREON_TAG);
        ADD_ROOT_ITEM("", ComboMenuActionNone, FALSE);
        ADD_ROOT_ITEM(locale->root_patreon_prefix, ComboMenuActionNone, FALSE);
        ADD_ROOT_ITEM(patreon_tag_line, ComboMenuActionNone, FALSE);
    }
#undef ADD_ROOT_ITEM

    if (count != 0)
    {
        *count = item_count;
    }
    return root_items;
}

static const TComboMenuItem *BuildDualMediaItems(const char *left_tag,
                                                 const char *right_tag,
                                                 const char *left_name,
                                                 const char *right_name,
                                                 const char *empty_tag,
                                                 TComboMenuAction left_action,
                                                 TComboMenuAction right_action,
                                                 unsigned *count)
{
    static TComboMenuItem items[2];
    static char left_label[32];
    static char right_label[32];
    static const unsigned kMediaValueWidth = 16u;

    if (left_tag == 0 || left_tag[0] == '\0') left_tag = "A";
    if (right_tag == 0 || right_tag[0] == '\0') right_tag = "B";
    if (empty_tag == 0 || empty_tag[0] == '\0') empty_tag = "EMPTY";

    if (left_name == 0 || left_name[0] == '\0')
    {
        left_name = empty_tag;
    }
    if (right_name == 0 || right_name[0] == '\0')
    {
        right_name = empty_tag;
    }

    unsigned c = 0u;
    for (unsigned i = 0u; left_tag[i] != '\0' && c + 1u < sizeof(left_label); ++i)
    {
        left_label[c++] = left_tag[i];
    }
    if (c + 1u < sizeof(left_label))
    {
        left_label[c++] = ':';
    }
    left_label[c++] = '\t';
    unsigned n = 0u;
    for (; left_name[n] != '\0' && n < kMediaValueWidth && c + 1u < sizeof(left_label); ++n)
    {
        left_label[c++] = left_name[n];
    }
    while (n < kMediaValueWidth && c + 1u < sizeof(left_label))
    {
        left_label[c++] = ' ';
        ++n;
    }
    left_label[c] = '\0';

    c = 0u;
    for (unsigned i = 0u; right_tag[i] != '\0' && c + 1u < sizeof(right_label); ++i)
    {
        right_label[c++] = right_tag[i];
    }
    if (c + 1u < sizeof(right_label))
    {
        right_label[c++] = ':';
    }
    right_label[c++] = '\t';
    n = 0u;
    for (; right_name[n] != '\0' && n < kMediaValueWidth && c + 1u < sizeof(right_label); ++n)
    {
        right_label[c++] = right_name[n];
    }
    while (n < kMediaValueWidth && c + 1u < sizeof(right_label))
    {
        right_label[c++] = ' ';
        ++n;
    }
    right_label[c] = '\0';

    items[0].label = left_label;
    items[0].action = left_action;
    items[0].redraw_policy = ComboMenuRedrawMenuOnly;
    items[0].selectable = TRUE;
    items[1].label = right_label;
    items[1].action = right_action;
    items[1].redraw_policy = ComboMenuRedrawMenuOnly;
    items[1].selectable = TRUE;

    if (count != 0)
    {
        *count = 2u;
    }
    return items;
}

const TComboMenuItem *combo_menu_load_rom_items_get(unsigned language,
                                                     const char *slot1_name,
                                                     const char *slot2_name,
                                                     unsigned *count)
{
    const TComboLocaleStrings *locale = combo_locale_get(language);
    if (locale == 0)
    {
        locale = combo_locale_get(ComboLanguageEN);
    }
    return BuildDualMediaItems(locale->load_rom_slot1,
                               locale->load_rom_slot2,
                               slot1_name,
                               slot2_name,
                               locale->load_rom_empty,
                               ComboMenuActionCartridgeA,
                               ComboMenuActionCartridgeB,
                               count);
}

const TComboMenuItem *combo_menu_load_disk_items_get(unsigned language,
                                                      const char *drive1_name,
                                                      const char *drive2_name,
                                                      unsigned *count)
{
    const TComboLocaleStrings *locale = combo_locale_get(language);
    if (locale == 0)
    {
        locale = combo_locale_get(ComboLanguageEN);
    }
    return BuildDualMediaItems(locale->load_disk_drive1,
                               locale->load_disk_drive2,
                               drive1_name,
                               drive2_name,
                               locale->load_disk_empty,
                               ComboMenuActionDiskDriveA,
                               ComboMenuActionDiskDriveB,
                               count);
}

const TComboMenuItem *combo_menu_settings_items_get(unsigned language,
                                                     unsigned proportion_mode,
                                                     unsigned scanline_mode,
                                                     boolean gfx9000_enabled,
                                                     unsigned refresh_rate_hz,
                                                     boolean disk_rom_enabled,
                                                     unsigned boot_mode,
                                                     const char *core_name,
                                                     boolean core_available,
                                                     unsigned machine_profile,
                                                     unsigned rammapper_kb,
                                                     unsigned megaram_kb,
                                                     unsigned z80_turbo_mode,
                                                     unsigned rensha_mode,
                                                     boolean fm_music_enabled,
                                                     boolean scc_cart_enabled,
                                                     boolean scc_dual_cart_enabled,
                                                     boolean scc_dual_cart_available,
                                                     unsigned overlay_mode,
                                                     boolean overlay_available,
                                                     unsigned audio_gain_percent,
                                                     unsigned *count)
{
    static TComboMenuItem settings_items[36];
    static char language_label[32];
    static char proportion_label[32];
    static char scanline_label[32];
    static char gfx9000_label[32];
    static char boot_label[32];
    static char core_label[32];
    static char machine_label[32];
    static char mapper_label[32];
    static char megaram_label[32];
    static char disk_rom_label[32];
    static char turbo_label[32];
    static char rensha_label[32];
    static char joypad_mapping_label[40];
    static char fm_music_label[32];
    static char scc_label[32];
    static char audio_gain_label[32];

    const TComboLocaleStrings *locale = combo_locale_get(language);
    if (locale == 0)
    {
        locale = combo_locale_get(ComboLanguageEN);
    }

    language = combo_locale_clamp_language(language);
    if (proportion_mode > 1u) proportion_mode = 0u;
    if (scanline_mode > 1u) scanline_mode = 1u;
    machine_profile = backend_machine_profile_clamp(machine_profile);
    if (rammapper_kb != 256u && rammapper_kb != 512u && rammapper_kb != 1024u) rammapper_kb = 256u;
    if (megaram_kb != 0u && megaram_kb != 256u && megaram_kb != 512u && megaram_kb != 1024u) megaram_kb = 0u;
    if (z80_turbo_mode > 2u) z80_turbo_mode = 0u;
    if (boot_mode > 2u) boot_mode = 0u;
    if (rensha_mode > 3u) rensha_mode = 0u;
    if (audio_gain_percent > 100u) audio_gain_percent = 100u;
    (void) refresh_rate_hz;
    (void) overlay_mode;
    (void) overlay_available;

    BuildLabelFlag(language_label, sizeof(language_label), locale->settings_language, combo_locale_language_code(language));
    BuildLabelFlag(proportion_label, sizeof(proportion_label), locale->settings_proportion,
                   proportion_mode == 0u ? locale->proportion_16_9
                   : locale->proportion_4_3);
    BuildLabelFlag(scanline_label, sizeof(scanline_label), locale->settings_scanlines,
                   scanline_mode == 0u ? locale->flag_off : locale->flag_on);
    BuildLabelFlag(gfx9000_label, sizeof(gfx9000_label), locale->settings_gfx9000,
                   gfx9000_enabled ? locale->flag_on : locale->flag_off);
    BuildLabelFlag(boot_label, sizeof(boot_label), locale->settings_boot_mode,
                   boot_mode == 0u ? "NORM" : (boot_mode == 1u ? "FAST" : "GAME"));
    BuildLabelFlag(core_label, sizeof(core_label), locale->settings_core,
                   core_available && core_name != 0 && core_name[0] != '\0' ? core_name : locale->flag_na);
    BuildLabelFlag(machine_label, sizeof(machine_label), locale->settings_machine,
                   backend_machine_profile_label(machine_profile));
    {
        const char *mapper_flag = locale->flag_na;
        if (machine_profile != 0u)
        {
            mapper_flag = (rammapper_kb == 512u) ? "512" : (rammapper_kb == 1024u ? "1024" : "256");
        }
        BuildLabelFlag(mapper_label, sizeof(mapper_label), locale->settings_mapper, mapper_flag);
    }
    BuildLabelFlag(megaram_label, sizeof(megaram_label), locale->settings_megaram,
                   megaram_kb == 0u ? locale->flag_off : (megaram_kb == 512u ? "512" : (megaram_kb == 1024u ? "1024" : "256")));
    BuildLabelFlag(disk_rom_label, sizeof(disk_rom_label), locale->settings_disk_rom,
                   disk_rom_enabled ? locale->flag_on : locale->flag_off);
    BuildLabelFlag(turbo_label, sizeof(turbo_label), locale->settings_z80_turbo,
                   z80_turbo_mode == 0u ? "NORM"
                   : (z80_turbo_mode == 1u ? "PAN"
                   : "MAX"));
    BuildLabelFlag(rensha_label, sizeof(rensha_label), locale->settings_rensha,
                   rensha_mode == 0u ? locale->flag_off : (rensha_mode == 1u ? "1" : (rensha_mode == 2u ? "2" : "3")));
    BuildLabelFlag(joypad_mapping_label, sizeof(joypad_mapping_label), locale->settings_joystick_map, "->");
    BuildLabelFlag(fm_music_label, sizeof(fm_music_label), locale->settings_fm_music, fm_music_enabled ? locale->flag_on : locale->flag_off);
    {
        const char *scc_flag = locale->flag_off;
        if (scc_cart_enabled)
        {
            scc_flag = (scc_dual_cart_enabled && scc_dual_cart_available)
                ? locale->flag_dual
                : locale->flag_on;
        }
        BuildLabelFlag(scc_label, sizeof(scc_label), locale->settings_scc_cart, scc_flag);
    }
    {
        const unsigned audio_gain_ui = AudioGainUiLevelFromPercent(audio_gain_percent);
        char audio_gain_flag[2];
        audio_gain_flag[0] = (char) ('0' + (audio_gain_ui % 10u));
        audio_gain_flag[1] = '\0';
        BuildLabelFlag(audio_gain_label, sizeof(audio_gain_label), locale->settings_audio_gain, audio_gain_flag);
    }

    unsigned item_count = 0u;
#define ADD_SETTING_ITEM(lbl, act, policy, sel) \
    do { \
        settings_items[item_count].label = (lbl); \
        settings_items[item_count].action = (act); \
        settings_items[item_count].redraw_policy = (policy); \
        settings_items[item_count++].selectable = (sel); \
    } while (0)

    const boolean show_machine = (MenuSupportedProfileCount() > 1u) ? TRUE : FALSE;
    const boolean show_mapper = TRUE;
    const boolean mapper_selectable = (MenuProfileSupported(machine_profile) && machine_profile != 0u) ? TRUE : FALSE;
    const boolean show_boot_mode = (MSXBARE_ONE_ROM_MODE == 0 && MSXBARE_BOOT_MODE_LOCKED == 0) ? TRUE : FALSE;
    ADD_SETTING_ITEM(language_label, ComboMenuActionCycleLanguage, ComboMenuRedrawMenuOnly, TRUE);
    ADD_SETTING_ITEM("", ComboMenuActionSeparator, ComboMenuRedrawMenuOnly, FALSE);
    ADD_SETTING_ITEM(proportion_label, ComboMenuActionCycleProportion, ComboMenuRedrawMenuAndViewport, TRUE);
    ADD_SETTING_ITEM(scanline_label, ComboMenuActionCycleScanlines, ComboMenuRedrawMenuAndViewport, TRUE);
    if (MSXBARE_FEAT_GFX9000)
    {
        ADD_SETTING_ITEM(gfx9000_label, ComboMenuActionToggleGfx9000, ComboMenuRedrawMenuOnly, TRUE);
    }
    if (MSXBARE_FEAT_FMPAC || MSXBARE_FEAT_SCC)
    {
        ADD_SETTING_ITEM("", ComboMenuActionSeparator, ComboMenuRedrawMenuOnly, FALSE);
        if (MSXBARE_FEAT_FMPAC)
        {
            ADD_SETTING_ITEM(fm_music_label, ComboMenuActionToggleFmMusic, ComboMenuRedrawMenuOnly, TRUE);
        }
        if (MSXBARE_FEAT_SCC)
        {
            ADD_SETTING_ITEM(scc_label, ComboMenuActionToggleSccCart, ComboMenuRedrawMenuOnly, TRUE);
        }
    }

    ADD_SETTING_ITEM(audio_gain_label, ComboMenuActionAudioGainChanged, ComboMenuRedrawMenuOnly, TRUE);

    if (show_mapper || MSXBARE_FEAT_MEGARAM)
    {
        ADD_SETTING_ITEM("", ComboMenuActionSeparator, ComboMenuRedrawMenuOnly, FALSE);
        if (show_mapper)
        {
            ADD_SETTING_ITEM(mapper_label, ComboMenuActionCycleRamMapper, ComboMenuRedrawMenuOnly, mapper_selectable);
        }
        if (MSXBARE_FEAT_MEGARAM)
        {
            ADD_SETTING_ITEM(megaram_label, ComboMenuActionCycleMegaRam, ComboMenuRedrawMenuOnly, TRUE);
        }
        if (MSXBARE_FEAT_DISK_ROM)
        {
            ADD_SETTING_ITEM(disk_rom_label, ComboMenuActionToggleDiskRom, ComboMenuRedrawMenuOnly, TRUE);
        }
    }

    ADD_SETTING_ITEM("", ComboMenuActionSeparator, ComboMenuRedrawMenuOnly, FALSE);
    ADD_SETTING_ITEM(core_label, ComboMenuActionCycleCore, ComboMenuRedrawMenuOnly, core_available);
    if (show_machine)
    {
        ADD_SETTING_ITEM(machine_label, ComboMenuActionCycleMachine, ComboMenuRedrawMenuOnly, TRUE);
    }
    if (show_boot_mode)
    {
        ADD_SETTING_ITEM(boot_label, ComboMenuActionCycleBootMode, ComboMenuRedrawMenuOnly, TRUE);
    }
    ADD_SETTING_ITEM(turbo_label, ComboMenuActionCycleZ80Turbo, ComboMenuRedrawMenuOnly, TRUE);
    ADD_SETTING_ITEM(rensha_label, ComboMenuActionCycleRensha, ComboMenuRedrawMenuOnly, TRUE);
    ADD_SETTING_ITEM(joypad_mapping_label, ComboMenuActionOpenJoystickMap, ComboMenuRedrawMenuOnly, TRUE);

#undef ADD_SETTING_ITEM

    if (count != 0)
    {
        *count = item_count;
    }
    return settings_items;
}

const TComboMenuItem *combo_menu_joystick_map_items_get(unsigned language,
                                                        const char *up_code,
                                                        const char *down_code,
                                                        const char *left_code,
                                                        const char *right_code,
                                                        const char *button1_code,
                                                        const char *button2_code,
                                                        unsigned *count)
{
    static TComboMenuItem items[8];
    static char up_label[48];
    static char down_label[48];
    static char left_label[48];
    static char right_label[48];
    static char button1_label[48];
    static char button2_label[48];

    const TComboLocaleStrings *locale = combo_locale_get(language);
    if (locale == 0)
    {
        locale = combo_locale_get(ComboLanguageEN);
    }

    BuildLabelFlag(up_label, sizeof(up_label), locale->joystick_map_up, up_code != 0 ? up_code : locale->flag_none);
    BuildLabelFlag(down_label, sizeof(down_label), locale->joystick_map_down, down_code != 0 ? down_code : locale->flag_none);
    BuildLabelFlag(left_label, sizeof(left_label), locale->joystick_map_left, left_code != 0 ? left_code : locale->flag_none);
    BuildLabelFlag(right_label, sizeof(right_label), locale->joystick_map_right, right_code != 0 ? right_code : locale->flag_none);
    BuildLabelFlag(button1_label, sizeof(button1_label), locale->joystick_map_button1, button1_code != 0 ? button1_code : locale->flag_none);
    BuildLabelFlag(button2_label, sizeof(button2_label), locale->joystick_map_button2, button2_code != 0 ? button2_code : locale->flag_none);

    items[0].label = up_label;
    items[1].label = down_label;
    items[2].label = left_label;
    items[3].label = right_label;
    items[4].label = button1_label;
    items[5].label = button2_label;
    for (unsigned i = 0u; i < 6u; ++i)
    {
        items[i].action = ComboMenuActionNone;
        items[i].selectable = TRUE;
        items[i].redraw_policy = ComboMenuRedrawMenuOnly;
    }

    items[6].label = "";
    items[6].action = ComboMenuActionNone;
    items[6].selectable = FALSE;
    items[6].redraw_policy = ComboMenuRedrawMenuOnly;

    items[7].label = locale->joystick_map_return;
    items[7].action = ComboMenuActionNone;
    items[7].selectable = FALSE;
    items[7].redraw_policy = ComboMenuRedrawMenuOnly;

    if (count != 0)
    {
        *count = 8u;
    }
    return items;
}

const TComboMenuItem *combo_menu_debug_items_get(unsigned language,
                                                 unsigned scale_percent,
                                                 unsigned refresh_rate_hz,
                                                 boolean disk_rom_enabled,
                                                 unsigned overlay_mode,
                                                 boolean overlay_available,
                                                 unsigned *count)
{
    static TComboMenuItem debug_items[9];
    static char scale_label[32];
    static char refresh_label[32];
    static char overlay_label[32];

    const TComboLocaleStrings *locale = combo_locale_get(language);
    if (locale == 0)
    {
        locale = combo_locale_get(ComboLanguageEN);
    }
    if (scale_percent < 200u) scale_percent = 200u;
    if (scale_percent > 300u) scale_percent = 300u;

    {
        char scale_flag[8];
        const unsigned scale_factor = MenuScaleFactorFromPercent(scale_percent);
        scale_flag[0] = (char) ('0' + (scale_factor % 10u));
        scale_flag[1] = 'x';
        scale_flag[2] = '\0';
        BuildLabelFlag(scale_label, sizeof(scale_label), locale->settings_scale, scale_flag);
    }
    BuildLabelFlag(overlay_label, sizeof(overlay_label), locale->settings_debugger,
                   MenuOverlayModeFlag(locale, overlay_mode));
    BuildLabelFlag(refresh_label, sizeof(refresh_label), locale->settings_refresh,
                   refresh_rate_hz == 50u ? locale->refresh_pal : locale->refresh_ntsc);
    (void) disk_rom_enabled;

    unsigned item_count = 0u;
#define ADD_DEBUG_ITEM(lbl, act, sel) \
    do { \
        debug_items[item_count].label = (lbl); \
        debug_items[item_count].action = (act); \
        debug_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly; \
        debug_items[item_count++].selectable = (sel); \
    } while (0)

    if (MSXBARE_ENABLE_DEBUG_OVERLAY)
    {
        ADD_DEBUG_ITEM(scale_label, ComboMenuActionOverscanChanged, TRUE);
        ADD_DEBUG_ITEM(overlay_label, ComboMenuActionCycleOverlay, overlay_available ? TRUE : FALSE);
        ADD_DEBUG_ITEM(refresh_label, ComboMenuActionCycleRefreshRate, TRUE);
    }

    debug_items[item_count].label = "";
    debug_items[item_count].action = ComboMenuActionNone;
    debug_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    debug_items[item_count++].selectable = FALSE;
#undef ADD_DEBUG_ITEM

    if (count != 0)
    {
        *count = item_count;
    }
    return debug_items;
}
