#include "platform.h"

#include "console.h"
#include "uart.h"

#ifndef MSXBARE_DEBUG_HOLD_MS
#define MSXBARE_DEBUG_HOLD_MS 0u
#endif

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
    uart_puts(s);
}

void platform_debug_hold_if_enabled(void) {
#if MSXBARE_DEBUG_HOLD_MS > 0
    console_puts("[dbg] Pausa para leitura de logs...\n");
    uart_puts("[dbg] Pausa para leitura de logs...\n");
    platform_delay_ms((uint32_t)MSXBARE_DEBUG_HOLD_MS);
#endif
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

void platform_irq_enable(void) {
    __asm__ volatile("msr daifclr, #2" ::: "memory");
    __asm__ volatile("isb");
}
