#include "audio_pcm.h"

#include <string.h>

#define AUDIO_PCM_CHANNELS_MAX 2u
#define AUDIO_PCM_CAPACITY_FRAMES 8192u

static int16_t g_pcm_ring[AUDIO_PCM_CAPACITY_FRAMES * AUDIO_PCM_CHANNELS_MAX];
static uint32_t g_sample_rate;
static uint32_t g_channels = 1u;
static uint32_t g_wr;
static uint32_t g_rd;
static uint32_t g_queued;
static uint32_t g_total_written;
static uint32_t g_dropped;

void audio_pcm_init(uint32_t sample_rate, uint32_t channels)
{
    g_sample_rate = sample_rate;
    g_channels = (channels >= 2u) ? 2u : 1u;
    g_wr = 0;
    g_rd = 0;
    g_queued = 0;
    g_total_written = 0;
    g_dropped = 0;
    memset(g_pcm_ring, 0, sizeof(g_pcm_ring));
}

void audio_pcm_reset(void)
{
    g_wr = 0;
    g_rd = 0;
    g_queued = 0;
    g_total_written = 0;
    g_dropped = 0;
}

unsigned int audio_pcm_write_interleaved_s16(const int16_t *data, unsigned int frames)
{
    if (!data || frames == 0u || g_channels == 0u) {
        return 0u;
    }

    unsigned int free_frames = (g_queued < AUDIO_PCM_CAPACITY_FRAMES) ? (AUDIO_PCM_CAPACITY_FRAMES - g_queued) : 0u;
    unsigned int to_write = (frames < free_frames) ? frames : free_frames;
    unsigned int samples_per_frame = g_channels;

    for (unsigned int i = 0; i < to_write; i++) {
        uint32_t ring_idx = (g_wr + i) % AUDIO_PCM_CAPACITY_FRAMES;
        for (unsigned int ch = 0; ch < samples_per_frame; ch++) {
            g_pcm_ring[ring_idx * g_channels + ch] = data[i * samples_per_frame + ch];
        }
    }

    g_wr = (g_wr + to_write) % AUDIO_PCM_CAPACITY_FRAMES;
    g_queued += to_write;
    g_total_written += to_write;

    if (to_write < frames) {
        g_dropped += (frames - to_write);
    }

    return to_write;
}

unsigned int audio_pcm_read_interleaved_s16(int16_t *out_data, unsigned int frames)
{
    if (!out_data || frames == 0u || g_channels == 0u) {
        return 0u;
    }

    unsigned int to_read = (frames < g_queued) ? frames : g_queued;
    unsigned int samples_per_frame = g_channels;

    for (unsigned int i = 0; i < to_read; i++) {
        uint32_t ring_idx = (g_rd + i) % AUDIO_PCM_CAPACITY_FRAMES;
        for (unsigned int ch = 0; ch < samples_per_frame; ch++) {
            out_data[i * samples_per_frame + ch] = g_pcm_ring[ring_idx * g_channels + ch];
        }
    }

    g_rd = (g_rd + to_read) % AUDIO_PCM_CAPACITY_FRAMES;
    g_queued -= to_read;
    return to_read;
}

unsigned int audio_pcm_drop_frames(unsigned int frames)
{
    unsigned int to_drop = (frames < g_queued) ? frames : g_queued;
    g_rd = (g_rd + to_drop) % AUDIO_PCM_CAPACITY_FRAMES;
    g_queued -= to_drop;
    return to_drop;
}

void audio_pcm_get_stats(audio_pcm_stats_t *out_stats)
{
    if (!out_stats) {
        return;
    }
    out_stats->sample_rate = g_sample_rate;
    out_stats->channels = g_channels;
    out_stats->capacity_frames = AUDIO_PCM_CAPACITY_FRAMES;
    out_stats->queued_frames = g_queued;
    out_stats->total_written_frames = g_total_written;
    out_stats->dropped_frames = g_dropped;
}
