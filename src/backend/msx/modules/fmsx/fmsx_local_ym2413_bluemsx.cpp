#include "fmsx_local_ym2413_bluemsx.h"

/*
 * Dedicated YM2413 renderer based on the blueMSX/openMSX core.
 * We keep the fMSX-facing register struct for runtime/save-state compatibility
 * and use this wrapper only for PCM generation.
 */
#include "OpenMsxYM2413_2.h"

namespace
{
constexpr short kFmBaseVolume = static_cast<short>((32767 * 9) / 10);
constexpr unsigned kDefaultSampleRate = 44100u;

OpenYM2413_2 *g_FmCore = nullptr;
unsigned g_FmSampleRate = 0u;
unsigned g_FmLayerGainPct = 100u;

OpenYM2413_2 *fmsx_bluemsx_ensure_core(void)
{
    if (g_FmCore == nullptr)
    {
        g_FmCore = new OpenYM2413_2("msxbare-fm", kFmBaseVolume, 0);
        g_FmCore->setSampleRate((int) (g_FmSampleRate ? g_FmSampleRate : kDefaultSampleRate), 1);
        g_FmCore->setVolume((short) ((kFmBaseVolume * (int) g_FmLayerGainPct) / 100));
        g_FmCore->reset(0);
    }

    return g_FmCore;
}

void fmsx_bluemsx_apply_volume(void)
{
    OpenYM2413_2 *core = fmsx_bluemsx_ensure_core();
    if (core != nullptr)
    {
        core->setVolume((short) ((kFmBaseVolume * (int) g_FmLayerGainPct) / 100));
    }
}
}  // namespace

extern "C" {

void fmsx_bluemsx_ym2413_shutdown(void)
{
    delete g_FmCore;
    g_FmCore = nullptr;
}

void fmsx_bluemsx_ym2413_reset(void)
{
    OpenYM2413_2 *core = fmsx_bluemsx_ensure_core();
    if (core == nullptr)
    {
        return;
    }

    core->reset(0);
    fmsx_bluemsx_apply_volume();
}

void fmsx_bluemsx_ym2413_set_sample_rate(unsigned rate)
{
    g_FmSampleRate = rate ? rate : kDefaultSampleRate;
    OpenYM2413_2 *core = fmsx_bluemsx_ensure_core();
    if (core != nullptr)
    {
        core->setSampleRate((int) g_FmSampleRate, 1);
    }
}

void fmsx_bluemsx_ym2413_set_layer_gain_pct(unsigned pct)
{
    if (pct > 100u)
    {
        pct = 100u;
    }
    g_FmLayerGainPct = pct;
    if (g_FmCore != nullptr)
    {
        fmsx_bluemsx_apply_volume();
    }
}

unsigned fmsx_bluemsx_ym2413_get_layer_gain_pct(void)
{
    return g_FmLayerGainPct;
}

void fmsx_bluemsx_ym2413_write_reg(uint8_t reg, uint8_t value)
{
    OpenYM2413_2 *core = fmsx_bluemsx_ensure_core();
    if (core == nullptr)
    {
        return;
    }

    core->writeReg(reg & 0x3Fu, value, 0);
}

void fmsx_bluemsx_ym2413_rebuild_from_regs(const uint8_t regs[64])
{
    unsigned i;
    OpenYM2413_2 *core = fmsx_bluemsx_ensure_core();
    if (core == nullptr)
    {
        return;
    }

    core->reset(0);
    fmsx_bluemsx_apply_volume();

    if (regs == nullptr)
    {
        return;
    }

    for (i = 0u; i < 64u; ++i)
    {
        core->writeReg((byte) i, regs[i], 0);
    }
}

void fmsx_bluemsx_ym2413_render(int *dst, unsigned samples, int mix_enabled)
{
    unsigned offset = 0u;
    OpenYM2413_2 *core = fmsx_bluemsx_ensure_core();
    if (core == nullptr || samples == 0u)
    {
        return;
    }

    while (offset < samples)
    {
        const unsigned chunk = (samples - offset) > AUDIO_MONO_BUFFER_SIZE
            ? AUDIO_MONO_BUFFER_SIZE
            : (samples - offset);
        int *src = core->updateBuffer((int) chunk);

        if (mix_enabled && dst != nullptr && src != nullptr)
        {
            unsigned i;
            for (i = 0u; i < chunk; ++i)
            {
                dst[offset + i] += src[i];
            }
        }

        offset += chunk;
    }
}

} /* extern "C" */
