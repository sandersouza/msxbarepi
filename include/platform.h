#ifndef PLATFORM_H
#define PLATFORM_H

#include <stdint.h>

void platform_init(void);
void platform_log(const char *s);
void platform_debug_hold_if_enabled(void);
uint64_t platform_ticks_hz(void);
uint64_t platform_ticks_now(void);
void platform_delay_ms(uint32_t ms);

#endif
