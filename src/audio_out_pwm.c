#include "audio_out.h"

#include "audio_pcm.h"
#include "platform.h"

#include <stdint.h>

#define MMIO_BASE           0x3F000000UL
#define GPIO_BASE           (MMIO_BASE + 0x200000UL)
#define PWM_BASE            (MMIO_BASE + 0x20C000UL)
#define CM_BASE             (MMIO_BASE + 0x101000UL)

#define GPFSEL4             ((volatile uint32_t *)(GPIO_BASE + 0x10))

#define PWM_CTL             ((volatile uint32_t *)(PWM_BASE + 0x00))
#define PWM_STA             ((volatile uint32_t *)(PWM_BASE + 0x04))
#define PWM_DMAC            ((volatile uint32_t *)(PWM_BASE + 0x08))
#define PWM_RNG1            ((volatile uint32_t *)(PWM_BASE + 0x10))
#define PWM_DAT1            ((volatile uint32_t *)(PWM_BASE + 0x14))
#define PWM_FIF1            ((volatile uint32_t *)(PWM_BASE + 0x18))
#define PWM_RNG2            ((volatile uint32_t *)(PWM_BASE + 0x20))
#define PWM_DAT2            ((volatile uint32_t *)(PWM_BASE + 0x24))

#define CM_PWMCTL           ((volatile uint32_t *)(CM_BASE + 0xA0))
#define CM_PWMDIV           ((volatile uint32_t *)(CM_BASE + 0xA4))

#define CM_PASSWD           0x5A000000u
#define CM_CTL_ENAB         (1u << 4)
#define CM_CTL_KILL         (1u << 5)
#define CM_CTL_BUSY         (1u << 7)
#define CM_SRC_PLLD         6u

#define PWM_CTL_PWEN1       (1u << 0)
#define PWM_CTL_USEF1       (1u << 5)
#define PWM_CTL_MSEN1       (1u << 7)
#define PWM_CTL_PWEN2       (1u << 8)
#define PWM_CTL_MSEN2       (1u << 15)
#define PWM_CTL_CLRF1       (1u << 6)

#define PWM_STA_FULL1       (1u << 0)

#define PWM_CLOCK_RATE_HZ   250000000u
#define AUDIO_CHUNK_SAMPLES 128u

static uint8_t g_audio_out_enabled;
static uint32_t g_sample_rate;
static uint64_t g_tick_hz;
static uint64_t g_last_tick;
static uint64_t g_due_num;
static uint32_t g_pending_samples;
static uint32_t g_pwm_range;
static uint8_t g_log_init;
static uint8_t g_log_pcm_read;
static uint8_t g_log_fifo_push;
static uint8_t g_log_fifo_full;
static uint8_t g_log_pcm_empty;

#ifndef MSXBARE_AUDIO_SELFTEST_MS
#define MSXBARE_AUDIO_SELFTEST_MS 0u
#endif

#ifndef MSXBARE_AUDIO_P2_SMOKETEST_MS
#define MSXBARE_AUDIO_P2_SMOKETEST_MS 0u
#endif

static void mmio_delay_cycles(unsigned int n)
{
    for (volatile unsigned int i = 0; i < n; ++i) {
        __asm__ volatile("nop");
    }
}

static void gpio_config_alt0_audio_pins_pi3b(void)
{
    uint32_t r = *GPFSEL4;
    /* Raspberry Pi 3B (via referência Circle): GPIO40/41 para audio PWM.
     * GPIO40 -> bits 2:0, GPIO41 -> bits 5:3. ALT0 = 100b */
    r &= ~(0x7u << 0);
    r &= ~(0x7u << 3);
    r |= (0x4u << 0);
    r |= (0x4u << 3);
    *GPFSEL4 = r;
}

static void pwm_clock_init_48k(void)
{
    /* Stop PWM before touching the clock. */
    *PWM_CTL = 0;
    mmio_delay_cycles(1500);

    /* Kill PWM clock. */
    *CM_PWMCTL = CM_PASSWD | CM_CTL_KILL;
    mmio_delay_cycles(1500);

    /* Wait until clock is no longer busy (best effort). */
    for (unsigned int i = 0; i < 100000u; ++i) {
        if (((*CM_PWMCTL) & CM_CTL_BUSY) == 0u) {
            break;
        }
    }

    /* Circle-style on RPi<=3: PLLD 500MHz / 2 = 250MHz PWM clock. */
    *CM_PWMDIV = CM_PASSWD | (2u << 12);
    mmio_delay_cycles(1500);

    /* Source = PLLD, enable. */
    *CM_PWMCTL = CM_PASSWD | CM_CTL_ENAB | CM_SRC_PLLD;
    mmio_delay_cycles(1500);
}

static inline uint32_t pcm16_to_pwm(int16_t s)
{
    uint32_t u = (uint16_t)((int32_t)s + 32768);
    uint32_t range = g_pwm_range ? g_pwm_range : 1024u;
    /* Scale 0..65535 -> 0..(range-1). */
    return (u * (range - 1u)) >> 16;
}

#if MSXBARE_AUDIO_P2_SMOKETEST_MS > 0
static void pwm_output_direct_mono_sample(int16_t s)
{
    uint32_t duty = pcm16_to_pwm(s);
    *PWM_DAT1 = duty;
    *PWM_DAT2 = duty;
}
#endif

static inline void pwm_fifo_push_mono_sample(int16_t s)
{
    uint32_t duty = pcm16_to_pwm(s);
    *PWM_FIF1 = duty;
    /* Espelha em DAT2 para sair mono nos dois lados do P2. */
    *PWM_DAT2 = duty;
}

void audio_out_init(uint32_t sample_rate)
{
    g_audio_out_enabled = 0u;
    g_sample_rate = sample_rate;
    g_tick_hz = platform_ticks_hz();
    g_last_tick = 0u;
    g_due_num = 0u;
    g_pending_samples = 0u;
    g_pwm_range = 0u;
    g_log_init = 0u;
    g_log_pcm_read = 0u;
    g_log_fifo_push = 0u;
    g_log_fifo_full = 0u;
    g_log_pcm_empty = 0u;

    if (sample_rate != 48000u) {
        return;
    }
    g_pwm_range = (PWM_CLOCK_RATE_HZ + sample_rate / 2u) / sample_rate;
    if (g_pwm_range < 256u) {
        g_pwm_range = 256u;
    }

    gpio_config_alt0_audio_pins_pi3b();
    pwm_clock_init_48k();

    *PWM_CTL = 0u;
    *PWM_STA = 0xFFFFFFFFu; /* Clear sticky status bits (best effort). */
    *PWM_DMAC = 0u;
    mmio_delay_cycles(1500);

    *PWM_RNG1 = g_pwm_range;
    mmio_delay_cycles(1500);
    *PWM_RNG2 = g_pwm_range;
    mmio_delay_cycles(1500);

    *PWM_DAT1 = g_pwm_range / 2u;
    *PWM_DAT2 = g_pwm_range / 2u;

#if MSXBARE_AUDIO_P2_SMOKETEST_MS > 0
    {
        /* Smoke test puramente por DAT1/DAT2 (sem FIFO), para validar rota P2. */
        uint64_t hz = platform_ticks_hz();
        uint64_t t_now;
        uint64_t t_next;
        uint64_t t_step = hz / (uint64_t)sample_rate;
        uint32_t total = (sample_rate * (uint32_t)MSXBARE_AUDIO_P2_SMOKETEST_MS) / 1000u;
        uint32_t half_period = sample_rate / (2u * 440u);
        uint32_t phase = 0u;

        *PWM_CTL = 0u;
        mmio_delay_cycles(1500);
        *PWM_CTL = PWM_CTL_PWEN1 | PWM_CTL_MSEN1 | PWM_CTL_PWEN2 | PWM_CTL_MSEN2;
        mmio_delay_cycles(1500);

        if (t_step == 0u) {
            t_step = 1u;
        }
        t_now = platform_ticks_now();
        t_next = t_now + t_step;

        for (uint32_t i = 0; i < total; ++i) {
            pwm_output_direct_mono_sample((phase < half_period) ? 12000 : -12000);
            phase++;
            if (phase >= (half_period * 2u)) {
                phase = 0u;
            }
            while ((int64_t)(t_next - platform_ticks_now()) > 0) {
            }
            t_next += t_step;
        }

        pwm_output_direct_mono_sample(0);
    }
#endif

    /* Use FIFO on channel 1 (serializer/PWM mode, sem mark-space).
     * Channel 2 remains enabled at center duty apenas como bias fixo. */
    *PWM_CTL = PWM_CTL_CLRF1;
    mmio_delay_cycles(1500);
    *PWM_CTL = PWM_CTL_PWEN1 | PWM_CTL_USEF1 | PWM_CTL_PWEN2 | PWM_CTL_MSEN2;
    mmio_delay_cycles(1500);

    g_audio_out_enabled = 1u;
    if (!g_log_init) {
#ifdef MSXBARE_DEBUG_LOGS
        platform_log("[audio] PWM P2 inicializado (48kHz).\n");
#endif
        g_log_init = 1u;
    }

#if MSXBARE_AUDIO_SELFTEST_MS > 0
    {
        /* Tono curto para validar rota analogica P2 antes do emulador. */
        uint32_t total = (g_sample_rate * (uint32_t)MSXBARE_AUDIO_SELFTEST_MS) / 1000u;
        uint32_t half_period = g_sample_rate / (2u * 440u);
        uint32_t phase = 0u;
        for (uint32_t i = 0; i < total; ++i) {
            while ((*PWM_STA & PWM_STA_FULL1) != 0u) {
            }
            pwm_fifo_push_mono_sample((phase < half_period) ? 12000 : -12000);
            phase++;
            if (phase >= (half_period * 2u)) {
                phase = 0u;
            }
        }
    }
#endif
}

void audio_out_shutdown(void)
{
    *PWM_CTL = 0u;
    g_audio_out_enabled = 0u;
}

void audio_out_service(void)
{
    if (!g_audio_out_enabled || g_sample_rate == 0u || g_tick_hz == 0u) {
        return;
    }

    {
        uint64_t now = platform_ticks_now();
        uint64_t elapsed;
        unsigned int due;

        if (g_last_tick == 0u) {
            g_last_tick = now;
            return;
        }

        elapsed = now - g_last_tick;
        g_last_tick = now;
        g_due_num += elapsed * (uint64_t)g_sample_rate;
        due = (unsigned int)(g_due_num / g_tick_hz);
        g_due_num %= g_tick_hz;

        if (due == 0u) {
            return;
        }
        if (due > 1024u) {
            /* Avoid huge bursts after stalls; keep latency bounded. */
            due = 1024u;
        }
        g_pending_samples += due;
        if (g_pending_samples > 4096u) {
            g_pending_samples = 4096u;
        }
    }

    while (g_pending_samples != 0u) {
        int16_t s = 0;
        if ((*PWM_STA & PWM_STA_FULL1) != 0u) {
            if (!g_log_fifo_full) {
#ifdef MSXBARE_DEBUG_LOGS
                platform_log("[audio] PWM FIFO cheio (esperado ocasionalmente).\n");
#endif
                g_log_fifo_full = 1u;
            }
            break;
        }
        if (audio_pcm_read_interleaved_s16(&s, 1u) != 1u) {
            if (!g_log_pcm_empty) {
#ifdef MSXBARE_DEBUG_LOGS
                platform_log("[audio] PCM vazio no backend PWM (underrun).\n");
#endif
                g_log_pcm_empty = 1u;
            }
            s = 0;
        } else if (!g_log_pcm_read) {
#ifdef MSXBARE_DEBUG_LOGS
            platform_log("[audio] Backend PWM leu PCM da fila.\n");
#endif
            g_log_pcm_read = 1u;
        }
        pwm_fifo_push_mono_sample(s);
        if (!g_log_fifo_push) {
#ifdef MSXBARE_DEBUG_LOGS
            platform_log("[audio] Backend PWM escreveu no FIFO.\n");
#endif
            g_log_fifo_push = 1u;
        }
        g_pending_samples--;
    }
}
