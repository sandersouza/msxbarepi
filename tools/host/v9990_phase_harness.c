#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifndef AARCH
#define AARCH 64
#endif

#ifndef MSXBARE_ENABLE_DEBUG_OVERLAY
#define MSXBARE_ENABLE_DEBUG_OVERLAY 1
#endif

#include "fmsx_v9990.h"
#include "Z80.h"

Z80 CPU;
uint8_t IRQPending = 0xFFu;
int HPeriod = 1368 / 6;
int ScanLine = 0;
static uint64_t g_fake_cpu_cycles = 0u;

uint64_t fmsx_vdp_cpu_cycles_now(void)
{
    return g_fake_cpu_cycles;
}

void msxbare_uart_write(const char *text)
{
    if (text != NULL)
    {
        fputs(text, stdout);
        fflush(stdout);
    }
}

void msxbare_debug_note_gfx9000_activation(void)
{
}

unsigned msxbare_debug_timer_irq_binding(unsigned stage)
{
    return stage;
}

void fmsx_runtime_debug_rearm_gfx9000_step_trace(unsigned frames)
{
    (void) frames;
}

void msxbare_debug_rearm_kernel_gfx9000_trace(unsigned frames)
{
    (void) frames;
}

uint16_t SetIRQ(uint8_t irq)
{
    (void) irq;
    return 0u;
}

void assertion_failed(const char *expr, const char *file, unsigned line)
{
    fprintf(stderr, "assertion_failed: %s (%s:%u)\n", expr, file, line);
    abort();
}

static void v9990_write_reg(uint8_t reg, uint8_t value)
{
    (void) fmsx_v9990_out_port(FMSX_V9990_PORT_BASE + 4u, reg);
    (void) fmsx_v9990_out_port(FMSX_V9990_PORT_BASE + 3u, value);
}

static void configure_ghosts_n_goblins_baseline(void)
{
    /*
     * Minimal register sequence aligned with the UART trace observed on hardware:
     * SCREEN_MODE_0=0x85, SCREEN_MODE_1=0x40, CONTROL=0x42, INTERRUPT_0=0x01,
     * CONTROL=0xC2.
     */
    v9990_write_reg(6u, 0x85u);
    v9990_write_reg(7u, 0x40u);
    v9990_write_reg(8u, 0x42u);
    v9990_write_reg(9u, 0x01u);
    v9990_write_reg(8u, 0xC2u);
}

int main(int argc, char **argv)
{
    unsigned frames = 10u;
    unsigned i;

    if (argc > 1)
    {
        char *end = NULL;
        unsigned long parsed = strtoul(argv[1], &end, 0);
        if (end != NULL && *end == '\0' && parsed > 0ul)
        {
            frames = (unsigned) parsed;
        }
    }

    fmsx_v9990_power_on();
    fmsx_v9990_reset();
    fmsx_v9990_set_enabled(TRUE);
    configure_ghosts_n_goblins_baseline();

    for (i = 0u; i < frames; ++i)
    {
        TFmsxV9990VideoFrame frame = { 0 };
        ScanLine = (int) (i % 262u);
        g_fake_cpu_cycles += (uint64_t) HPeriod * 262u;
        fmsx_v9990_render_frame(100u + i);
        fmsx_v9990_get_video_frame(&frame);
        printf("HARNESS frame=%u active=%u width=%u height=%u pitch=%u seq=%u\n",
            i,
            frame.active ? 1u : 0u,
            frame.width,
            frame.height,
            frame.pitch_pixels,
            frame.sequence);
        fflush(stdout);
    }

    return 0;
}
