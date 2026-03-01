#include "combo_menu_items.h"
#include "combo_locale.h"

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

const TComboMenuItem *combo_menu_root_items_get(unsigned language, unsigned *count)
{
    static TComboMenuItem root_items[10];
    const TComboLocaleStrings *locale = combo_locale_get(language);
    if (locale == 0)
    {
        locale = combo_locale_get(ComboLanguageEN);
    }

    unsigned item_count = 0u;
    root_items[item_count].label = locale->root_load_cart;
    root_items[item_count].action = ComboMenuActionCartridgeA;
    root_items[item_count++].selectable = TRUE;
    root_items[item_count].label = locale->root_load_disk;
    root_items[item_count].action = ComboMenuActionDiskDriveA;
    root_items[item_count++].selectable = TRUE;
    root_items[item_count].label = "";
    root_items[item_count].action = ComboMenuActionSeparator;
    root_items[item_count++].selectable = FALSE;
    root_items[item_count].label = locale->root_save_state;
    root_items[item_count].action = ComboMenuActionSaveState;
    root_items[item_count++].selectable = TRUE;
    root_items[item_count].label = locale->root_load_state;
    root_items[item_count].action = ComboMenuActionLoadState;
    root_items[item_count++].selectable = TRUE;
    root_items[item_count].label = "";
    root_items[item_count].action = ComboMenuActionSeparator;
    root_items[item_count++].selectable = FALSE;
    root_items[item_count].label = locale->root_settings;
    root_items[item_count].action = ComboMenuActionSettings;
    root_items[item_count++].selectable = TRUE;
    root_items[item_count].label = "";
    root_items[item_count].action = ComboMenuActionSeparator;
    root_items[item_count++].selectable = FALSE;
    root_items[item_count].label = locale->root_msx_basic;
    root_items[item_count].action = ComboMenuActionMsxBasic;
    root_items[item_count++].selectable = TRUE;
    root_items[item_count].label = locale->root_reset;
    root_items[item_count].action = ComboMenuActionReset;
    root_items[item_count++].selectable = TRUE;

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
    for (unsigned i = 0u; left_name[i] != '\0' && c + 1u < sizeof(left_label); ++i)
    {
        left_label[c++] = left_name[i];
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
    for (unsigned i = 0u; right_name[i] != '\0' && c + 1u < sizeof(right_label); ++i)
    {
        right_label[c++] = right_name[i];
    }
    right_label[c] = '\0';

    items[0].label = left_label;
    items[0].action = left_action;
    items[0].selectable = TRUE;
    items[1].label = right_label;
    items[1].action = right_action;
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

const TComboMenuItem *combo_menu_settings_items_get(unsigned overscan_percent,
                                                     unsigned language,
                                                     boolean widescreen_enabled,
                                                     unsigned scanline_mode,
                                                     unsigned refresh_rate_hz,
                                                     unsigned boot_mode,
                                                     unsigned z80_turbo_mode,
                                                     unsigned rensha_mode,
                                                     boolean scc_cart_enabled,
                                                     boolean overlay_enabled,
                                                     boolean overlay_available,
                                                     boolean audio_muted,
                                                     unsigned audio_gain_percent,
                                                     unsigned *count)
{
    static TComboMenuItem settings_items[17];
    static char language_label[32];
    static char overscan_label[32];
    static char widescreen_label[32];
    static char scanline_label[32];
    static char refresh_label[32];
    static char boot_label[32];
    static char turbo_label[32];
    static char rensha_label[32];
    static char scc_label[32];
    static char overlay_label[32];
    static char audio_mute_label[32];
    static char audio_gain_label[32];

    const TComboLocaleStrings *locale = combo_locale_get(language);
    if (locale == 0)
    {
        locale = combo_locale_get(ComboLanguageEN);
    }

    language = combo_locale_clamp_language(language);
    if (overscan_percent > 100u) overscan_percent = 100u;
    if (scanline_mode > 2u) scanline_mode = 2u;
    if (refresh_rate_hz != 50u) refresh_rate_hz = 60u;
    if (z80_turbo_mode > 2u) z80_turbo_mode = 0u;
    if (boot_mode > 2u) boot_mode = 0u;
    if (rensha_mode > 3u) rensha_mode = 0u;
    if (audio_gain_percent > 100u) audio_gain_percent = 100u;

    BuildLabelFlag(language_label, sizeof(language_label), locale->settings_language, combo_locale_language_code(language));

    char overscan_flag[4];
    overscan_flag[0] = (char) ('0' + ((overscan_percent / 100u) % 10u));
    overscan_flag[1] = (char) ('0' + ((overscan_percent / 10u) % 10u));
    overscan_flag[2] = (char) ('0' + (overscan_percent % 10u));
    overscan_flag[3] = '\0';
    BuildLabelFlag(overscan_label, sizeof(overscan_label), locale->settings_overscan, overscan_flag);

    BuildLabelFlag(widescreen_label, sizeof(widescreen_label), locale->settings_widescreen, widescreen_enabled ? locale->flag_on : locale->flag_off);
    BuildLabelFlag(scanline_label, sizeof(scanline_label), locale->settings_scanlines,
                   scanline_mode == 0u ? locale->scan_des : (scanline_mode == 1u ? locale->scan_lcd : locale->scan_crt));
    BuildLabelFlag(refresh_label, sizeof(refresh_label), locale->settings_refresh, refresh_rate_hz == 50u ? locale->refresh_pal : locale->refresh_ntsc);
    BuildLabelFlag(boot_label, sizeof(boot_label), locale->settings_boot_mode,
                   boot_mode == 0u ? "NORM" : (boot_mode == 1u ? "FAST" : "GAME"));
    BuildLabelFlag(turbo_label, sizeof(turbo_label), locale->settings_z80_turbo,
                   z80_turbo_mode == 0u ? locale->flag_off : (z80_turbo_mode == 1u ? "PAN" : "MAX"));
    BuildLabelFlag(rensha_label, sizeof(rensha_label), locale->settings_rensha,
                   rensha_mode == 0u ? "0" : (rensha_mode == 1u ? "1" : (rensha_mode == 2u ? "2" : "3")));
    BuildLabelFlag(scc_label, sizeof(scc_label), locale->settings_scc_cart, scc_cart_enabled ? locale->flag_on : locale->flag_off);
    BuildLabelFlag(overlay_label, sizeof(overlay_label), locale->settings_debugger,
                   overlay_available ? (overlay_enabled ? locale->flag_on : locale->flag_off) : locale->flag_na);
    BuildLabelFlag(audio_mute_label, sizeof(audio_mute_label), locale->settings_audio_mute, audio_muted ? locale->flag_on : locale->flag_off);
    char audio_gain_flag[4];
    audio_gain_flag[0] = (char) ('0' + ((audio_gain_percent / 100u) % 10u));
    audio_gain_flag[1] = (char) ('0' + ((audio_gain_percent / 10u) % 10u));
    audio_gain_flag[2] = (char) ('0' + (audio_gain_percent % 10u));
    audio_gain_flag[3] = '\0';
    BuildLabelFlag(audio_gain_label, sizeof(audio_gain_label), locale->settings_audio_gain, audio_gain_flag);

    unsigned item_count = 0u;
    settings_items[item_count].label = language_label;
    settings_items[item_count].action = ComboMenuActionCycleLanguage;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = "";
    settings_items[item_count].action = ComboMenuActionSeparator;
    settings_items[item_count++].selectable = FALSE;
    settings_items[item_count].label = overscan_label;
    settings_items[item_count].action = ComboMenuActionOverscanChanged;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = widescreen_label;
    settings_items[item_count].action = ComboMenuActionToggleWidescreen;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = scanline_label;
    settings_items[item_count].action = ComboMenuActionCycleScanlines;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = refresh_label;
    settings_items[item_count].action = ComboMenuActionCycleRefreshRate;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = "";
    settings_items[item_count].action = ComboMenuActionSeparator;
    settings_items[item_count++].selectable = FALSE;
    settings_items[item_count].label = scc_label;
    settings_items[item_count].action = ComboMenuActionToggleSccCart;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = audio_mute_label;
    settings_items[item_count].action = ComboMenuActionToggleAudioMute;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = audio_gain_label;
    settings_items[item_count].action = ComboMenuActionAudioGainChanged;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = "";
    settings_items[item_count].action = ComboMenuActionSeparator;
    settings_items[item_count++].selectable = FALSE;
    settings_items[item_count].label = boot_label;
    settings_items[item_count].action = ComboMenuActionCycleBootMode;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = turbo_label;
    settings_items[item_count].action = ComboMenuActionCycleZ80Turbo;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = rensha_label;
    settings_items[item_count].action = ComboMenuActionCycleRensha;
    settings_items[item_count++].selectable = TRUE;
    if (overlay_available)
    {
        settings_items[item_count].label = overlay_label;
        settings_items[item_count].action = ComboMenuActionToggleOverlay;
        settings_items[item_count++].selectable = TRUE;
    }
    settings_items[item_count].label = "";
    settings_items[item_count].action = ComboMenuActionNone;
    settings_items[item_count++].selectable = FALSE;
    settings_items[item_count].label = locale->settings_save;
    settings_items[item_count].action = ComboMenuActionSaveSettings;
    settings_items[item_count++].selectable = TRUE;

    if (count != 0)
    {
        *count = item_count;
    }
    return settings_items;
}
