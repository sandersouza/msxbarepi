#ifndef MSXBARE_MACHINE_PROFILE_CATALOG_H
#define MSXBARE_MACHINE_PROFILE_CATALOG_H

#include <circle/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct
{
    unsigned id;
    const char *key;
    const char *label;
    const char *vdp_chip;
    const char *default_video_timing;
    const char *default_audio;
    const char *default_roms;
    unsigned default_boot_mode;
    unsigned default_disk_rom_enabled;
    unsigned default_refresh_hz;
    unsigned default_rammapper_kb;
    unsigned default_megaram_kb;
    unsigned default_z80_turbo_mode;
    unsigned default_fm_music_enabled;
    unsigned default_scc_cart_enabled;
    unsigned is_msx2_family;
} TMachineProfileSpec;

unsigned machine_profile_count(void);
unsigned machine_profile_clamp(unsigned profile);
const TMachineProfileSpec *machine_profile_get(unsigned profile);
const TMachineProfileSpec *machine_profile_default(void);
const char *machine_profile_label(unsigned profile);
boolean machine_profile_is_msx2_family(unsigned profile);

#ifdef __cplusplus
}
#endif

#endif
