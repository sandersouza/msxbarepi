#include "circle_audio_runtime.h"

#include <circle/sound/hdmisoundbasedevice.h>
#include <circle/types.h>

namespace {

static const unsigned kSampleRate = 48000;

class CircleAudioRuntime {
public:
    CircleAudioRuntime()
    :
        m_sound(0),
        m_phase(0),
        m_step((440u * 0xFFFFFFFFu) / kSampleRate)
    {
        m_snapshot.ready = 0;
        m_snapshot.active = 0;
        m_snapshot.queue_frames = 0;
        m_snapshot.queue_avail = 0;
        m_snapshot.writes = 0;
        m_snapshot.drops = 0;
        m_snapshot.last_level = 0;
        m_snapshot.writable_hits = 0;
        m_snapshot.writable_misses = 0;
    }

    boolean Initialize()
    {
#ifdef MSXBARE_CIRCLE_AUDIO_SKIP_IRQ_INIT
        m_snapshot.ready = 0x10;
#else
        m_snapshot.ready = 0x02;
#endif

        m_sound = new CHDMISoundBaseDevice(kSampleRate);
        if (m_sound == 0) {
            m_snapshot.ready = 0xE3;
            return FALSE;
        }

#ifdef MSXBARE_CIRCLE_AUDIO_SKIP_AUDIO_START
        m_snapshot.ready = 0x20;
        m_snapshot.active = 0;
        return TRUE;
#else
        if (!m_sound->Start()) {
            m_snapshot.ready = 0xE5;
            return FALSE;
        }
    PrimeOutput();
        m_snapshot.ready = 0xFF;
        m_snapshot.active = 1;
        return TRUE;
#endif
    }

    void Poll()
    {
        if (m_sound == 0) {
            return;
        }

        m_snapshot.active = m_sound->IsActive() ? 1u : 0u;
        m_snapshot.queue_frames = 0;
        m_snapshot.queue_avail = 0;

#ifndef MSXBARE_CIRCLE_AUDIO_SKIP_AUDIO_START
        if (!m_snapshot.active) {
            return;
        }

        unsigned wrote_any = 0;
        for (unsigned n = 0; n < 4096u; ++n) {
            if (!m_sound->IsWritable()) {
                ++m_snapshot.writable_misses;
                break;
            }

            ++m_snapshot.writable_hits;

            const int32_t sample = NextSample();
            m_sound->WriteSample(sample);
            m_sound->WriteSample(sample);
            wrote_any = 1;
        }

        if (wrote_any) {
            ++m_snapshot.writes;
        }
#endif
    }

    void FillSnapshot(circle_audio_snapshot_t *dst) const
    {
        *dst = m_snapshot;
    }

private:
    void PrimeOutput()
    {
        for (unsigned n = 0; n < 8192u; ++n) {
            if (!m_sound->IsWritable()) {
                ++m_snapshot.writable_misses;
                break;
            }

            ++m_snapshot.writable_hits;

            const int32_t sample = NextSample();
            m_sound->WriteSample(sample);
            m_sound->WriteSample(sample);
        }
    }

    int32_t NextSample()
    {
        const int32_t amplitude = 0x00100000;
        m_phase += m_step;
        const int32_t sample = (m_phase & 0x80000000u) ? amplitude : -amplitude;
        m_snapshot.last_level = (uint32_t)sample;
        return sample;
    }

private:
    CHDMISoundBaseDevice *m_sound;
    uint32_t m_phase;
    uint32_t m_step;
    circle_audio_snapshot_t m_snapshot;
};

static CircleAudioRuntime *g_runtime;
static boolean g_initialized;

} // namespace

extern "C" int circle_audio_runtime_init(void)
{
    if (g_initialized && g_runtime != 0) {
        return 1;
    }

    g_runtime = new CircleAudioRuntime();
    if (g_runtime == 0) {
        return 0;
    }

    if (!g_runtime->Initialize()) {
        return 0;
    }

    g_initialized = TRUE;
    return 1;
}

extern "C" void circle_audio_runtime_poll(circle_audio_snapshot_t *snapshot)
{
    circle_audio_snapshot_t empty = {0, 0, 0, 0, 0, 0, 0, 0, 0};

    if (!g_initialized || g_runtime == 0) {
        if (snapshot != 0) {
            *snapshot = empty;
        }
        return;
    }

    g_runtime->Poll();

    if (snapshot != 0) {
        g_runtime->FillSnapshot(snapshot);
    }
}