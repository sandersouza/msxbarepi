#ifndef AUDIO_OUT_H
#define AUDIO_OUT_H

#include <stdint.h>

void audio_out_init(uint32_t sample_rate);
void audio_out_service(void);
void audio_out_shutdown(void);
uint32_t audio_out_debug_flags(void);

#define AUDIO_OUT_DBG_HDMI_D1 (1u << 0)
#define AUDIO_OUT_DBG_HDMI_R1 (1u << 1)
#define AUDIO_OUT_DBG_HDMI_DU (1u << 2)

#endif
