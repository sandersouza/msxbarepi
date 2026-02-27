#include "common.h"
#include "platform.h"

#define SYSTEM_TIMER_BASE (MMIO_BASE + 0x3000)
#define SYSTEM_TIMER_CLO (SYSTEM_TIMER_BASE + 0x04)
#define SYSTEM_TIMER_CHI (SYSTEM_TIMER_BASE + 0x08)

uint64_t platform_get_time_us(void)
{
    uint32_t hi;
    uint32_t lo;
    uint32_t hi_check;

    do {
        hi = mmio_read(SYSTEM_TIMER_CHI);
        lo = mmio_read(SYSTEM_TIMER_CLO);
        hi_check = mmio_read(SYSTEM_TIMER_CHI);
    } while (hi != hi_check);

    return (((uint64_t)hi) << 32) | lo;
}

void platform_delay_us(uint32_t us)
{
    const uint64_t start = platform_get_time_us();
    while ((platform_get_time_us() - start) < (uint64_t)us) {
    }
}

void platform_delay_ms(uint32_t ms)
{
    while (ms-- != 0u) {
        platform_delay_us(1000);
    }
}