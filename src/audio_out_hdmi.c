#include "audio_out.h"

#include "audio_pcm.h"
#include "platform.h"

#include <stdint.h>

/*
 * Backend HDMI (polling bring-up, sem DMA).
 *
 * Referencias consultadas em third_party/circle (uso conceitual):
 * - third_party/circle/include/circle/sound/hdmisoundbasedevice.h
 * - third_party/circle/lib/sound/hdmisoundbasedevice.cpp
 * - third_party/circle/include/circle/bcm2835.h (regs HDMI/MAI)
 * - third_party/circle/include/circle/dmacommon.h (DREQ HDMI, fase DMA futura)
 *
 * Esta fase implementa:
 * - reset/seq minima de MAI/HDMI (Pi <= 3)
 * - Audio InfoFrame
 * - escrita polling best-effort no MAI (sem DMA)
 *
 * Limitacoes:
 * - CTS/pixel clock ainda em placeholder (init de bring-up, nao fidelidade final)
 * - framing IEC958 simplificado
 * - sem DMA (latencia/glitches esperados)
 */

#define MMIO_BASE               0x3F000000UL
#define ARM_HDMI_BASE           (MMIO_BASE + 0x902000UL)
#define ARM_HD_BASE             (MMIO_BASE + 0x808000UL)

/* HDMI/MAI (RPi <= 3), offsets conforme Circle. */
#define REG_AUDIO_PACKET_CONFIG ((volatile uint32_t *)(ARM_HDMI_BASE + 0x9CU))
#define REG_CRP_CONFIG          ((volatile uint32_t *)(ARM_HDMI_BASE + 0xA8U))
#define REG_CTS0                ((volatile uint32_t *)(ARM_HDMI_BASE + 0xACU))
#define REG_CTS1                ((volatile uint32_t *)(ARM_HDMI_BASE + 0xB0U))
#define REG_MAI_CHANNEL_MAP     ((volatile uint32_t *)(ARM_HDMI_BASE + 0x90U))
#define REG_MAI_CONFIG          ((volatile uint32_t *)(ARM_HDMI_BASE + 0x94U))
#define REG_RAM_PACKET_CONFIG   ((volatile uint32_t *)(ARM_HDMI_BASE + 0xA0U))
#define REG_RAM_PACKET_STATUS   ((volatile uint32_t *)(ARM_HDMI_BASE + 0xA4U))
#define REG_RAM_PACKET_AUDIO0   ((volatile uint32_t *)(ARM_HDMI_BASE + 0x490U))
#define REG_RAM_PACKET_AUDIO1   ((volatile uint32_t *)(ARM_HDMI_BASE + 0x494U))
#define REG_RAM_PACKET_AUDIO2   ((volatile uint32_t *)(ARM_HDMI_BASE + 0x498U))
#define REG_RAM_PACKET_AUDIO8   ((volatile uint32_t *)(ARM_HDMI_BASE + 0x4B0U))
#define REG_TX_PHY_CONTROL0     ((volatile uint32_t *)(ARM_HDMI_BASE + 0x2C4U))

#define REG_MAI_CONTROL         ((volatile uint32_t *)(ARM_HD_BASE + 0x14U))
#define REG_MAI_THRESHOLD       ((volatile uint32_t *)(ARM_HD_BASE + 0x18U))
#define REG_MAI_FORMAT          ((volatile uint32_t *)(ARM_HD_BASE + 0x1CU))
#define REG_MAI_DATA            ((volatile uint32_t *)(ARM_HD_BASE + 0x20U))
#define REG_MAI_SAMPLE_RATE     ((volatile uint32_t *)(ARM_HD_BASE + 0x2CU))

/* Bits/shifts subset (Circle hdmisoundbasedevice.cpp). */
#define BIT_AUDIO_PACKET_CONFIG_ZERO_INACTIVE  (1u << 24)
#define BIT_AUDIO_PACKET_CONFIG_ZERO_FLAT      (1u << 29)
#define SHIFT_AUDIO_PACKET_CONFIG_BFRAME       10
#define SHIFT_AUDIO_PACKET_CONFIG_CEA_MASK     0

#define BIT_CRP_CONFIG_EXTERNAL_CTS_ENABLE     (1u << 24)
#define SHIFT_CRP_CONFIG_N                     0

#define SHIFT_MAI_CONFIG_CHANNEL_MASK          0
#define BIT_MAI_CONFIG_BIT_REVERSE             (1u << 26)
#define BIT_MAI_CONFIG_FORMAT_REVERSE          (1u << 27)

#define BIT_MAI_CONTROL_RESET                  (1u << 0)
#define BIT_MAI_CONTROL_ERROR_FULL             (1u << 1)
#define BIT_MAI_CONTROL_ERROR_EMPTY            (1u << 2)
#define BIT_MAI_CONTROL_ENABLE                 (1u << 3)
#define SHIFT_MAI_CONTROL_CHANNEL_NUMBER       4
#define BIT_MAI_CONTROL_FLUSH                  (1u << 9)
#define BIT_MAI_CONTROL_FULL                   (1u << 11)
#define BIT_MAI_CONTROL_WHOLE_SAMPLE           (1u << 12)
#define BIT_MAI_CONTROL_CHANNEL_ALIGN          (1u << 13)
#define BIT_MAI_CONTROL_DELAYED                (1u << 15)

#define SHIFT_MAI_FORMAT_SAMPLE_RATE           8
#define SHIFT_MAI_FORMAT_AUDIO_FORMAT          16
#define MAI_FORMAT_AUDIO_FORMAT_PCM            2u
#define MAI_FORMAT_SAMPLE_RATE_48000           8u

#define SHIFT_MAI_SAMPLE_RATE_M                0
#define SHIFT_MAI_SAMPLE_RATE_N                8

#define SHIFT_MAI_THRESHOLD_DREQ_LOW           0
#define SHIFT_MAI_THRESHOLD_DREQ_HIGH          8
#define SHIFT_MAI_THRESHOLD_PANIC_LOW          16
#define SHIFT_MAI_THRESHOLD_PANIC_HIGH         24

#define BIT_RAM_PACKET_CONFIG_AUDIO_ID         (1u << 4)
#define BIT_RAM_PACKET_CONFIG_ENABLE           (1u << 16)
#define BIT_RAM_PACKET_STATUS_AUDIO_ID         (1u << 4)

#define BIT_TX_PHY_CONTROL0_RNG_POWER_DOWN     (1u << 25)

#define HDMI_HW_CHANNELS                       2u
#define HDMI_SUBFRAMES_PER_BLOCK               384u

static uint8_t g_hdmi_audio_enabled;
static uint8_t g_hdmi_hw_inited;
static uint8_t g_logged_init;
static uint8_t g_logged_drop;
static uint8_t g_logged_hw_fail;
static uint32_t g_sample_rate;
static uint32_t g_subframe;

static inline uint32_t mmio_read(volatile uint32_t *reg)
{
    return *reg;
}

static inline void mmio_write(volatile uint32_t *reg, uint32_t v)
{
    *reg = v;
}

static uint8_t wait_bit(volatile uint32_t *reg, uint32_t mask, uint8_t want_set, uint32_t timeout_ms)
{
    uint64_t hz = platform_ticks_hz();
    uint64_t start = platform_ticks_now();
    uint64_t timeout_ticks;

    if (hz == 0u) {
        return 0u;
    }

    timeout_ticks = ((uint64_t)timeout_ms * hz) / 1000u;
    if (timeout_ticks == 0u) {
        timeout_ticks = 1u;
    }

    for (;;) {
        uint8_t set = (mmio_read(reg) & mask) ? 1u : 0u;
        if (set == want_set) {
            return 1u;
        }
        if ((platform_ticks_now() - start) > timeout_ticks) {
            return 0u;
        }
    }
}

static void hdmi_reset(void)
{
    mmio_write(REG_RAM_PACKET_CONFIG, mmio_read(REG_RAM_PACKET_CONFIG) & ~BIT_RAM_PACKET_CONFIG_AUDIO_ID);
    (void)wait_bit(REG_RAM_PACKET_STATUS, BIT_RAM_PACKET_STATUS_AUDIO_ID, 0u, 100u);

    mmio_write(REG_MAI_CONTROL, BIT_MAI_CONTROL_RESET);
    mmio_write(REG_MAI_CONTROL, BIT_MAI_CONTROL_ERROR_FULL);
    mmio_write(REG_MAI_CONTROL, BIT_MAI_CONTROL_FLUSH);
}

static uint8_t hdmi_set_audio_infoframe(void)
{
    volatile uint32_t *r;

    if ((mmio_read(REG_RAM_PACKET_CONFIG) & BIT_RAM_PACKET_CONFIG_ENABLE) == 0u) {
        return 0u;
    }

    mmio_write(REG_RAM_PACKET_CONFIG, mmio_read(REG_RAM_PACKET_CONFIG) & ~BIT_RAM_PACKET_CONFIG_AUDIO_ID);
    if (!wait_bit(REG_RAM_PACKET_STATUS, BIT_RAM_PACKET_STATUS_AUDIO_ID, 0u, 100u)) {
        return 0u;
    }

    mmio_write(REG_RAM_PACKET_AUDIO0, 0x000A0184u);
    mmio_write(REG_RAM_PACKET_AUDIO1, 0x00000170u);
    for (r = REG_RAM_PACKET_AUDIO2; r <= REG_RAM_PACKET_AUDIO8; ++r) {
        /* Registers are contiguous 32-bit words in this range. */
        mmio_write(r, 0u);
    }

    mmio_write(REG_RAM_PACKET_CONFIG, mmio_read(REG_RAM_PACKET_CONFIG) | BIT_RAM_PACKET_CONFIG_AUDIO_ID);
    return wait_bit(REG_RAM_PACKET_STATUS, BIT_RAM_PACKET_STATUS_AUDIO_ID, 1u, 100u);
}

static uint8_t hdmi_run_minimal_48k(void)
{
    /* HDMI N for 48kHz. CTS is placeholder for bring-up (fidelidade depois). */
    const uint32_t n = 6144u;
    const uint32_t cts = 65000u;
    const uint32_t mai_threshold =
        (16u << SHIFT_MAI_THRESHOLD_PANIC_HIGH) |
        (16u << SHIFT_MAI_THRESHOLD_PANIC_LOW)  |
        (16u << SHIFT_MAI_THRESHOLD_DREQ_HIGH)  |
        (16u << SHIFT_MAI_THRESHOLD_DREQ_LOW);
    const uint32_t mai_sample_rate =
        (1u << SHIFT_MAI_SAMPLE_RATE_M) |
        (n << SHIFT_MAI_SAMPLE_RATE_N);

    if ((mmio_read(REG_RAM_PACKET_CONFIG) & BIT_RAM_PACKET_CONFIG_ENABLE) == 0u) {
        return 0u;
    }

    mmio_write(REG_MAI_CONTROL, BIT_MAI_CONTROL_RESET |
                                BIT_MAI_CONTROL_FLUSH |
                                BIT_MAI_CONTROL_DELAYED |
                                BIT_MAI_CONTROL_ERROR_EMPTY |
                                BIT_MAI_CONTROL_ERROR_FULL);
    mmio_write(REG_MAI_SAMPLE_RATE, mai_sample_rate);
    mmio_write(REG_MAI_FORMAT, (MAI_FORMAT_SAMPLE_RATE_48000 << SHIFT_MAI_FORMAT_SAMPLE_RATE) |
                               (MAI_FORMAT_AUDIO_FORMAT_PCM << SHIFT_MAI_FORMAT_AUDIO_FORMAT));
    mmio_write(REG_MAI_THRESHOLD, mai_threshold);
    mmio_write(REG_MAI_CONFIG, BIT_MAI_CONFIG_BIT_REVERSE |
                               BIT_MAI_CONFIG_FORMAT_REVERSE |
                               (0x3u << SHIFT_MAI_CONFIG_CHANNEL_MASK));
    mmio_write(REG_MAI_CHANNEL_MAP, 0b001000u); /* RPi <= 3, conforme Circle. */

    mmio_write(REG_AUDIO_PACKET_CONFIG,
               BIT_AUDIO_PACKET_CONFIG_ZERO_FLAT |
               BIT_AUDIO_PACKET_CONFIG_ZERO_INACTIVE |
               (0u << SHIFT_AUDIO_PACKET_CONFIG_BFRAME) |
               (0x3u << SHIFT_AUDIO_PACKET_CONFIG_CEA_MASK));

    mmio_write(REG_CRP_CONFIG, BIT_CRP_CONFIG_EXTERNAL_CTS_ENABLE | (n << SHIFT_CRP_CONFIG_N));
    mmio_write(REG_CTS0, cts);
    mmio_write(REG_CTS1, cts);

    if (!hdmi_set_audio_infoframe()) {
        return 0u;
    }

    mmio_write(REG_TX_PHY_CONTROL0, mmio_read(REG_TX_PHY_CONTROL0) & ~BIT_TX_PHY_CONTROL0_RNG_POWER_DOWN);
    mmio_write(REG_MAI_CONTROL, (HDMI_HW_CHANNELS << SHIFT_MAI_CONTROL_CHANNEL_NUMBER) |
                                BIT_MAI_CONTROL_WHOLE_SAMPLE |
                                BIT_MAI_CONTROL_CHANNEL_ALIGN |
                                BIT_MAI_CONTROL_ENABLE);

    return 1u;
}

static inline uint8_t hdmi_is_writable(void)
{
    return (mmio_read(REG_MAI_CONTROL) & BIT_MAI_CONTROL_FULL) ? 0u : 1u;
}

static inline uint32_t convert_iec958_s16(int16_t s, uint32_t subframe)
{
    /* Bring-up framing simplificado. 24-bit PCM em [27:4]. */
    uint32_t payload = (((uint32_t)(int32_t)s << 8) & 0xFFFFFF00u) << 4;
    uint32_t preamble = (subframe & 1u) ? 0x4u : 0x8u;
    return payload | preamble;
}

static void hdmi_write_mono_frame(int16_t s)
{
    mmio_write(REG_MAI_DATA, convert_iec958_s16(s, g_subframe++));
    mmio_write(REG_MAI_DATA, convert_iec958_s16(s, g_subframe++));
    if (g_subframe >= HDMI_SUBFRAMES_PER_BLOCK) {
        g_subframe = 0u;
    }
}

void audio_out_init(uint32_t sample_rate)
{
    g_hdmi_audio_enabled = 0u;
    g_hdmi_hw_inited = 0u;
    g_logged_init = 0u;
    g_logged_drop = 0u;
    g_logged_hw_fail = 0u;
    g_sample_rate = sample_rate;
    g_subframe = 0u;

    if (sample_rate != 48000u) {
        return;
    }

    hdmi_reset();
    if (!hdmi_run_minimal_48k()) {
#ifdef MSXBARE_DEBUG_LOGS
        if (!g_logged_hw_fail) {
            platform_log("[audio][hdmi] init minima MAI/HDMI falhou.\n");
            g_logged_hw_fail = 1u;
        }
#endif
        return;
    }

    g_hdmi_hw_inited = 1u;
    g_hdmi_audio_enabled = 1u;

#ifdef MSXBARE_DEBUG_LOGS
    if (!g_logged_init) {
        platform_log("[audio][hdmi] MAI/HDMI polling inicializado (sem DMA).\n");
        g_logged_init = 1u;
    }
#endif
}

void audio_out_shutdown(void)
{
    if (g_hdmi_hw_inited) {
        hdmi_reset();
    }
    g_hdmi_hw_inited = 0u;
    g_hdmi_audio_enabled = 0u;
}

void audio_out_service(void)
{
    unsigned int pushed = 0u;

    if (!g_hdmi_audio_enabled || g_sample_rate == 0u) {
        return;
    }

    while (hdmi_is_writable() && pushed < 32u) {
        int16_t s = 0;
        if (audio_pcm_read_interleaved_s16(&s, 1u) != 1u) {
            break;
        }
        hdmi_write_mono_frame(s);
        pushed++;
    }

    if (pushed == 0u && audio_pcm_drop_frames(64u) != 0u) {
#ifdef MSXBARE_DEBUG_LOGS
        if (!g_logged_drop) {
            platform_log("[audio][hdmi] polling sem progresso; drenando PCM (DMA pendente).\n");
            g_logged_drop = 1u;
        }
#endif
    }
}
