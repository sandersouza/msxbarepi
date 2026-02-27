#include "audio_stub.h"

static unsigned audio_ticks;

void audio_stub_init(void)
{
    audio_ticks = 0;
}

void audio_stub_tick(void)
{
    ++audio_ticks;
}