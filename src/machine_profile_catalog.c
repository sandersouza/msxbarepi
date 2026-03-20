#include "machine_profile_catalog.h"

#include "fmsx_runtime.h"

static const TMachineProfileSpec g_machine_profiles[] =
{
#include "machine_profiles/msx1_profile.inc"
,
#include "machine_profiles/msx2_profile.inc"
,
#include "machine_profiles/msx2p_profile.inc"
};

unsigned machine_profile_count(void)
{
    return (unsigned) (sizeof(g_machine_profiles) / sizeof(g_machine_profiles[0]));
}

unsigned machine_profile_clamp(unsigned profile)
{
    return (profile < machine_profile_count()) ? profile : FMSX_MODEL_PROFILE_MSX1;
}

const TMachineProfileSpec *machine_profile_get(unsigned profile)
{
    return &g_machine_profiles[machine_profile_clamp(profile)];
}

const TMachineProfileSpec *machine_profile_default(void)
{
    return machine_profile_get(FMSX_MODEL_PROFILE_MSX1);
}

const char *machine_profile_label(unsigned profile)
{
    return machine_profile_get(profile)->label;
}

boolean machine_profile_is_msx2_family(unsigned profile)
{
    return machine_profile_get(profile)->is_msx2_family ? TRUE : FALSE;
}
