#ifndef MSXBARE_CIRCLE_MSXBARE_LOCALE_H
#define MSXBARE_CIRCLE_MSXBARE_LOCALE_H

#include <circle/types.h>

enum TComboLanguage {
    ComboLanguagePT = 0,
    ComboLanguageEN = 1,
    ComboLanguageES = 2
};

typedef struct {
    const char *title_pause;
    const char *title_settings;
    const char *title_debug;
    const char *title_load_rom;
    const char *title_load_disk;
    const char *title_game_master;
    const char *title_active_cheats;
    const char *root_load_cart;
    const char *root_load_disk;
    const char *root_save_state;
    const char *root_load_state;
    const char *root_settings;
    const char *root_debug;
    const char *root_game_master;
    const char *root_msx_basic;
    const char *root_reset;
    const char *root_patreon_prefix;
    const char *load_rom_slot1;
    const char *load_rom_slot2;
    const char *load_rom_empty;
    const char *load_rom_unload_hint;
    const char *load_disk_drive1;
    const char *load_disk_drive2;
    const char *load_disk_empty;
    const char *load_disk_unload_hint;
    const char *game_master_empty;
    const char *game_master_open_failed;
    const char *game_master_invalid;
    const char *game_master_no_cheats;
    const char *game_master_line;
    const char *game_master_apply_hint;
    const char *settings_language;
    const char *settings_resolution;
    const char *settings_scale;
    const char *settings_widescreen;
    const char *settings_scanlines;
    const char *settings_refresh;
    const char *settings_disk_rom;
    const char *settings_kanji_rom;
    const char *settings_boot_mode;
    const char *settings_machine;
    const char *settings_mapper;
    const char *settings_megaram;
    const char *settings_z80_turbo;
    const char *settings_rensha;
    const char *settings_fm_music;
    const char *settings_scc_cart;
    const char *settings_debugger;
    const char *settings_sd_log;
    const char *settings_audio_gain;
    const char *settings_save;
    const char *flag_off;
    const char *flag_on;
    const char *flag_dual;
    const char *flag_none;
    const char *flag_na;
    const char *scan_des;
    const char *scan_lcd;
    const char *scan_crt;
    const char *refresh_ntsc;
    const char *refresh_pal;
    const char *resolution_auto;
    const char *resolution_1080;
    const char *resolution_720;
    const char *resolution_768;
} TComboLocaleStrings;

unsigned combo_locale_clamp_language(unsigned language);
const char *combo_locale_language_code(unsigned language);
const TComboLocaleStrings *combo_locale_get(unsigned language);

#endif
