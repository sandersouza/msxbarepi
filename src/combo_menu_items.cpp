#include "combo_menu_items.h"
#include "combo_locale.h"
#include "machine_profile_catalog.h"

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
    root_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    root_items[item_count++].selectable = TRUE;
    root_items[item_count].label = locale->root_load_disk;
    root_items[item_count].action = ComboMenuActionDiskDriveA;
    root_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    root_items[item_count++].selectable = TRUE;
    root_items[item_count].label = "";
    root_items[item_count].action = ComboMenuActionSeparator;
    root_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    root_items[item_count++].selectable = FALSE;
    root_items[item_count].label = locale->root_save_state;
    root_items[item_count].action = ComboMenuActionSaveState;
    root_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    root_items[item_count++].selectable = TRUE;
    root_items[item_count].label = locale->root_load_state;
    root_items[item_count].action = ComboMenuActionLoadState;
    root_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    root_items[item_count++].selectable = TRUE;
    root_items[item_count].label = "";
    root_items[item_count].action = ComboMenuActionSeparator;
    root_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    root_items[item_count++].selectable = FALSE;
    root_items[item_count].label = locale->root_settings;
    root_items[item_count].action = ComboMenuActionSettings;
    root_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    root_items[item_count++].selectable = TRUE;
    root_items[item_count].label = "";
    root_items[item_count].action = ComboMenuActionSeparator;
    root_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    root_items[item_count++].selectable = FALSE;
    root_items[item_count].label = locale->root_msx_basic;
    root_items[item_count].action = ComboMenuActionMsxBasic;
    root_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    root_items[item_count++].selectable = TRUE;
    root_items[item_count].label = locale->root_reset;
    root_items[item_count].action = ComboMenuActionReset;
    root_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
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

const TComboMenuItem *combo_menu_settings_items_get(unsigned scale_percent,
                                                     unsigned max_scale_percent,
                                                     unsigned language,
                                                     unsigned resolution_mode,
                                                     boolean widescreen_enabled,
                                                     unsigned scanline_mode,
                                                     unsigned refresh_rate_hz,
                                                     boolean disk_rom_enabled,
                                                     unsigned boot_mode,
                                                     unsigned machine_profile,
                                                     unsigned rammapper_kb,
                                                     unsigned megaram_kb,
                                                     unsigned z80_turbo_mode,
                                                     unsigned rensha_mode,
                                                     boolean fm_music_enabled,
                                                     boolean scc_cart_enabled,
                                                     boolean overlay_enabled,
                                                     boolean overlay_available,
                                                     boolean debug_log_enabled,
                                                     unsigned audio_gain_percent,
                                                     unsigned *count)
{
    static TComboMenuItem settings_items[28];
    static char language_label[32];
    static char resolution_label[32];
    static char scale_label[32];
    static char widescreen_label[32];
    static char scanline_label[32];
    static char disk_rom_label[32];
    static char boot_label[32];
    static char machine_label[32];
    static char mapper_label[32];
    static char megaram_label[32];
    static char turbo_label[32];
    static char rensha_label[32];
    static char fm_music_label[32];
    static char scc_label[32];
    static char overlay_label[32];
    static char audio_gain_label[32];

    const TComboLocaleStrings *locale = combo_locale_get(language);
    if (locale == 0)
    {
        locale = combo_locale_get(ComboLanguageEN);
    }

    language = combo_locale_clamp_language(language);
    if (scale_percent < 250u) scale_percent = 250u;
    if (max_scale_percent < 250u) max_scale_percent = 250u;
    if (max_scale_percent > 450u) max_scale_percent = 450u;
    if (scale_percent > max_scale_percent) scale_percent = max_scale_percent;
    if (resolution_mode > 3u) resolution_mode = 0u;
    if (scanline_mode > 2u) scanline_mode = 2u;
    (void) refresh_rate_hz;
    machine_profile = machine_profile_clamp(machine_profile);
    if (rammapper_kb != 256u && rammapper_kb != 512u && rammapper_kb != 1024u) rammapper_kb = 256u;
    if (megaram_kb != 0u && megaram_kb != 256u && megaram_kb != 512u && megaram_kb != 1024u) megaram_kb = 0u;
    if (z80_turbo_mode > 2u) z80_turbo_mode = 0u;
    if (boot_mode > 2u) boot_mode = 0u;
    if (rensha_mode > 3u) rensha_mode = 0u;
    if (audio_gain_percent > 100u) audio_gain_percent = 100u;

    BuildLabelFlag(language_label, sizeof(language_label), locale->settings_language, combo_locale_language_code(language));
    BuildLabelFlag(resolution_label, sizeof(resolution_label), locale->settings_resolution,
                   resolution_mode == 0u ? locale->resolution_auto
                   : (resolution_mode == 1u ? locale->resolution_1080
                   : (resolution_mode == 2u ? locale->resolution_720 : locale->resolution_768)));

    char scale_flag[4];
    unsigned scale_factor = 1u + ((scale_percent - 250u) / 50u);
    if (scale_factor < 1u) scale_factor = 1u;
    if (scale_factor > 5u) scale_factor = 5u;
    scale_flag[0] = (char) ('0' + (scale_factor % 10u));
    scale_flag[1] = 'x';
    scale_flag[2] = '\0';
    BuildLabelFlag(scale_label, sizeof(scale_label), locale->settings_scale, scale_flag);

    BuildLabelFlag(widescreen_label, sizeof(widescreen_label), locale->settings_widescreen, widescreen_enabled ? locale->flag_on : locale->flag_off);
    BuildLabelFlag(scanline_label, sizeof(scanline_label), locale->settings_scanlines,
                   scanline_mode == 0u ? locale->scan_des : (scanline_mode == 1u ? locale->scan_lcd : locale->scan_crt));
    BuildLabelFlag(disk_rom_label, sizeof(disk_rom_label), locale->settings_disk_rom, disk_rom_enabled ? locale->flag_on : locale->flag_off);
    BuildLabelFlag(boot_label, sizeof(boot_label), locale->settings_boot_mode,
                   boot_mode == 0u ? "NORM" : (boot_mode == 1u ? "FAST" : "GAME"));
    BuildLabelFlag(machine_label, sizeof(machine_label), locale->settings_machine,
                   machine_profile_label(machine_profile));
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
    BuildLabelFlag(turbo_label, sizeof(turbo_label), locale->settings_z80_turbo,
                   z80_turbo_mode == 0u ? locale->flag_off : (z80_turbo_mode == 1u ? "PAN" : "MAX"));
    BuildLabelFlag(rensha_label, sizeof(rensha_label), locale->settings_rensha,
                   rensha_mode == 0u ? locale->flag_off : (rensha_mode == 1u ? "1" : (rensha_mode == 2u ? "2" : "3")));
    BuildLabelFlag(fm_music_label, sizeof(fm_music_label), locale->settings_fm_music, fm_music_enabled ? locale->flag_on : locale->flag_off);
    BuildLabelFlag(scc_label, sizeof(scc_label), locale->settings_scc_cart, scc_cart_enabled ? locale->flag_on : locale->flag_off);
    BuildLabelFlag(overlay_label, sizeof(overlay_label), locale->settings_debugger,
                   overlay_available ? (overlay_enabled ? locale->flag_on : locale->flag_off) : locale->flag_na);
    if (audio_gain_percent == 0u)
    {
        BuildLabelFlag(audio_gain_label, sizeof(audio_gain_label), locale->settings_audio_gain, locale->flag_off);
    }
    else
    {
        char audio_gain_flag[4];
        audio_gain_flag[0] = (char) ('0' + ((audio_gain_percent / 100u) % 10u));
        audio_gain_flag[1] = (char) ('0' + ((audio_gain_percent / 10u) % 10u));
        audio_gain_flag[2] = (char) ('0' + (audio_gain_percent % 10u));
        audio_gain_flag[3] = '\0';
        BuildLabelFlag(audio_gain_label, sizeof(audio_gain_label), locale->settings_audio_gain, audio_gain_flag);
    }

    unsigned item_count = 0u;
    settings_items[item_count].label = language_label;
    settings_items[item_count].action = ComboMenuActionCycleLanguage;
    settings_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = "";
    settings_items[item_count].action = ComboMenuActionSeparator;
    settings_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    settings_items[item_count++].selectable = FALSE;
    settings_items[item_count].label = resolution_label;
    settings_items[item_count].action = ComboMenuActionCycleResolution;
    settings_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = scale_label;
    settings_items[item_count].action = ComboMenuActionOverscanChanged;
    settings_items[item_count].redraw_policy = ComboMenuRedrawMenuAndViewport;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = widescreen_label;
    settings_items[item_count].action = ComboMenuActionToggleWidescreen;
    settings_items[item_count].redraw_policy = ComboMenuRedrawMenuAndViewport;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = scanline_label;
    settings_items[item_count].action = ComboMenuActionCycleScanlines;
    settings_items[item_count].redraw_policy = ComboMenuRedrawMenuAndViewport;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = "";
    settings_items[item_count].action = ComboMenuActionSeparator;
    settings_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    settings_items[item_count++].selectable = FALSE;
    settings_items[item_count].label = fm_music_label;
    settings_items[item_count].action = ComboMenuActionToggleFmMusic;
    settings_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = scc_label;
    settings_items[item_count].action = ComboMenuActionToggleSccCart;
    settings_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = audio_gain_label;
    settings_items[item_count].action = ComboMenuActionAudioGainChanged;
    settings_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = "";
    settings_items[item_count].action = ComboMenuActionSeparator;
    settings_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    settings_items[item_count++].selectable = FALSE;
    settings_items[item_count].label = mapper_label;
    settings_items[item_count].action = ComboMenuActionCycleRamMapper;
    settings_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = megaram_label;
    settings_items[item_count].action = ComboMenuActionCycleMegaRam;
    settings_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = "";
    settings_items[item_count].action = ComboMenuActionSeparator;
    settings_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    settings_items[item_count++].selectable = FALSE;
    settings_items[item_count].label = machine_label;
    settings_items[item_count].action = ComboMenuActionCycleMachine;
    settings_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = boot_label;
    settings_items[item_count].action = ComboMenuActionCycleBootMode;
    settings_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = turbo_label;
    settings_items[item_count].action = ComboMenuActionCycleZ80Turbo;
    settings_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    settings_items[item_count++].selectable = TRUE;
    settings_items[item_count].label = rensha_label;
    settings_items[item_count].action = ComboMenuActionCycleRensha;
    settings_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    settings_items[item_count++].selectable = TRUE;
    if (overlay_available)
    {
        settings_items[item_count].label = "";
        settings_items[item_count].action = ComboMenuActionSeparator;
        settings_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
        settings_items[item_count++].selectable = FALSE;

        settings_items[item_count].label = overlay_label;
        settings_items[item_count].action = ComboMenuActionToggleOverlay;
        settings_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
        settings_items[item_count++].selectable = TRUE;

        settings_items[item_count].label = disk_rom_label;
        settings_items[item_count].action = ComboMenuActionToggleDiskRom;
        settings_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
        settings_items[item_count++].selectable = TRUE;
    }
    settings_items[item_count].label = "";
    settings_items[item_count].action = ComboMenuActionNone;
    settings_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    settings_items[item_count++].selectable = FALSE;
    settings_items[item_count].label = locale->settings_save;
    settings_items[item_count].action = ComboMenuActionSaveSettings;
    settings_items[item_count].redraw_policy = ComboMenuRedrawMenuOnly;
    settings_items[item_count++].selectable = TRUE;

    if (count != 0)
    {
        *count = item_count;
    }
    return settings_items;
}
