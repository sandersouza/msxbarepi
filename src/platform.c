#include "platform.h"

#include "console.h"

static uint64_t read_cntfrq(void) {
    uint64_t v;
    __asm__ volatile("mrs %0, cntfrq_el0" : "=r"(v));
    return v;
}

static uint64_t read_cntpct(void) {
    uint64_t v;
    __asm__ volatile("mrs %0, cntpct_el0" : "=r"(v));
    return v;
}

void platform_init(void) {
}

void platform_log(const char *s) {
    console_puts(s);
}

uint64_t platform_ticks_hz(void) {
    return read_cntfrq();
}

uint64_t platform_ticks_now(void) {
    return read_cntpct();
}

void platform_delay_ms(uint32_t ms) {
    uint64_t start = read_cntpct();
    uint64_t freq = read_cntfrq();
    uint64_t wait_ticks = (freq * (uint64_t)ms) / 1000u;

    while ((read_cntpct() - start) < wait_ticks) {
    }
}
