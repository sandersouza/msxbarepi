#ifndef AUDIO_PCM_H
#define AUDIO_PCM_H

#include <stdint.h>

typedef struct {
    uint32_t sample_rate;
    uint32_t channels;
    uint32_t capacity_frames;
    uint32_t queued_frames;
    uint32_t total_written_frames;
    uint32_t dropped_frames;
} audio_pcm_stats_t;

void audio_pcm_init(uint32_t sample_rate, uint32_t channels);
unsigned int audio_pcm_write_interleaved_s16(const int16_t *data, unsigned int frames);
unsigned int audio_pcm_read_interleaved_s16(int16_t *out_data, unsigned int frames);
unsigned int audio_pcm_drop_frames(unsigned int frames);
void audio_pcm_get_stats(audio_pcm_stats_t *out_stats);
void audio_pcm_reset(void);

#endif
