#ifndef AUDIO_OUT_H
#define AUDIO_OUT_H

#include <stdint.h>

void audio_out_init(uint32_t sample_rate);
void audio_out_service(void);
void audio_out_shutdown(void);

#endif
