#include "audio_out.h"

#include "audio_pcm.h"
#include "platform.h"
#include "console.h"
#include "uart.h"

#include <stdint.h>
#include <stdio.h>

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
#define ARM_CM_BASE             (MMIO_BASE + 0x101000UL)
#define ARM_DMA_BASE            (MMIO_BASE + 0x7000UL)
#define GPU_IO_BASE             0x7E000000UL
#define GPU_UNCACHED_BASE       0xC0000000UL

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
#define HDMI_DREQ_SOURCE_LEGACY                17u
#define HDMI_DMA_CHANNEL                       7u
#define HSM_PARENT_PLLD_HZ                     500000000UL
#define OSC_HZ                                 19200000UL
#define MAI_SAMPLE_RATE_M_MASK                 0xFFu
#define MAI_SAMPLE_RATE_N_MASK                 0xFFFFFFu

static uint8_t g_hdmi_audio_enabled;
static uint8_t g_hdmi_hw_inited;
static uint8_t g_logged_init;
static uint8_t g_logged_drop;
static uint8_t g_logged_hw_fail;
static uint8_t g_logged_sink_noaudio;
static uint8_t g_logged_progress;
static uint8_t g_logged_rates;
static uint8_t g_logged_dma;
static uint32_t g_sample_rate;
static uint32_t g_subframe;
static uint8_t g_iec958_status[5];

/* Circle references (RPi<=3):
 * - CHDMISoundBaseDevice::GetHSMClockRate()
 * - CHDMISoundBaseDevice::GetPixelClockRate()
 * - CHDMISoundBaseDevice::RunHDMI()
 */
#define CM_HSMDIV               (ARM_CM_BASE + 0x08CU)
#define CM_DIV_FRAC_BITS        12u
#define A2W_PLLH_CTRLR          (ARM_CM_BASE + 0x1960U)
#define A2W_PLLH_FRACR          (ARM_CM_BASE + 0x1A60U)
#define A2W_PLLH_ANA0           (ARM_CM_BASE + 0x1070U)
#define PLLH_FB_PREDIV_MASK     (1u << 11)
#define A2W_PLL_FRAC_BITS       20u
#define A2W_PLL_FRAC_MASK       ((1u << A2W_PLL_FRAC_BITS) - 1u)
#define A2W_PLL_CTRL_PDIV_MASK  0x7000u
#define A2W_PLL_CTRL_PDIV_SHIFT 12u
#define A2W_PLL_CTRL_NDIV_MASK  0x03FFu
#define A2W_PLL_CTRL_NDIV_SHIFT 0u
#define PLLH_PIX_FIXED_DIVIDER  10u

/* Legacy DMA (Circle dmacommon.h, RPi<=3). */
#define ARM_DMACHAN_CS(chan)        ((volatile uint32_t *)(ARM_DMA_BASE + ((chan) * 0x100u) + 0x00u))
#define ARM_DMACHAN_CONBLK_AD(chan) ((volatile uint32_t *)(ARM_DMA_BASE + ((chan) * 0x100u) + 0x04u))
#define ARM_DMA_ENABLE_REG          ((volatile uint32_t *)(ARM_DMA_BASE + 0xFF0u))
#define DMA_CS_RESET                (1u << 31)
#define DMA_CS_WAIT_WRITES          (1u << 28)
#define DMA_CS_PANIC_PRIORITY_SHIFT 20
#define DMA_CS_PRIORITY_SHIFT       16
#define DMA_CS_ACTIVE               (1u << 0)
#define DMA_DEFAULT_PANIC_PRIORITY  15u
#define DMA_DEFAULT_PRIORITY        1u
#define DMA_TI_PERMAP_SHIFT         16
#define DMA_TI_SRC_WIDTH            (1u << 9)
#define DMA_TI_SRC_INC              (1u << 8)
#define DMA_TI_DEST_DREQ            (1u << 6)
#define DMA_TI_WAIT_RESP            (1u << 3)

typedef struct {
    uint32_t ti;
    uint32_t src;
    uint32_t dst;
    uint32_t len;
    uint32_t stride;
    uint32_t next;
    uint32_t rsv0;
    uint32_t rsv1;
} hdmi_dma_cb_t;

#define HDMI_DMA_WORDS_PER_BUFFER 4096u
static hdmi_dma_cb_t g_hdmi_dma_cb[2] __attribute__((aligned(32)));
static uint32_t g_hdmi_dma_buf[2][HDMI_DMA_WORDS_PER_BUFFER] __attribute__((aligned(32)));
static uint8_t g_hdmi_dma_started;
static uint8_t g_hdmi_dma_mode_pcm;
static uint8_t g_hdmi_dma_last_active_cb;
static uint8_t g_logged_dma_refill;
static uint8_t g_logged_dma_unknown;
static uint32_t g_hdmi_debug_flags;

#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
static void hdmi_bootdbg_puts(const char *s)
{
    console_puts(s);
    uart_puts(s);
}
#ifdef MSXBARE_AUDIO_HDMI_OVERLAY_ONLY
#define HDMI_HDBG(MSG) do {} while (0)
#else
#define HDMI_HDBG(MSG) hdmi_bootdbg_puts(MSG)
#endif
#else
#define HDMI_HDBG(MSG) do {} while (0)
#endif

static inline void cache_clean_range(const void *addr, uint32_t len)
{
#if defined(MSXBARE_ENABLE_MMU)
    uintptr_t start = (uintptr_t)addr & ~(uintptr_t)63u;
    uintptr_t end = ((uintptr_t)addr + (uintptr_t)len + 63u) & ~(uintptr_t)63u;
    for (uintptr_t p = start; p < end; p += 64u) {
        __asm__ volatile("dc cvac, %0" :: "r"(p) : "memory");
    }
    __asm__ volatile("dsb ishst" ::: "memory");
#else
    (void)addr;
    (void)len;
#endif
}

static inline uint32_t mmio_read(volatile uint32_t *reg)
{
    return *reg;
}

static inline void mmio_write(volatile uint32_t *reg, uint32_t v)
{
    *reg = v;
}

static inline uint32_t mmio_read_addr(uintptr_t addr)
{
    return *(volatile uint32_t *)addr;
}

static inline uint32_t bus_address_of_ptr(const void *p)
{
    uintptr_t a = (uintptr_t)p;
    return (uint32_t)((a & ~0xC0000000UL) | GPU_UNCACHED_BASE);
}

static inline uint32_t bus_address_of_arm_reg(uintptr_t arm_addr)
{
    return (uint32_t)((arm_addr & 0x00FFFFFFUL) + GPU_IO_BASE);
}

static uint32_t hdmi_get_hsm_clock_rate_hz(void)
{
    /* Circle (RPi<=3): HSM derived from PLLD through a 12.12 divider with 4.8 populated bits. */
    uint32_t div = mmio_read_addr(CM_HSMDIV);
    const uint32_t int_bits = 4u;
    const uint32_t frac_bits = 8u;

    div >>= (CM_DIV_FRAC_BITS - frac_bits);
    div &= (1u << (int_bits + frac_bits)) - 1u;
    if (div == 0u) {
        return 0u;
    }

    return (uint32_t)(((uint64_t)HSM_PARENT_PLLD_HZ << frac_bits) / div);
}

static uint32_t hdmi_get_pixel_clock_rate_hz(void)
{
    uint32_t a2wctrl = mmio_read_addr(A2W_PLLH_CTRLR);
    uint32_t fdiv = mmio_read_addr(A2W_PLLH_FRACR) & A2W_PLL_FRAC_MASK;
    uint32_t ndiv = (a2wctrl & A2W_PLL_CTRL_NDIV_MASK) >> A2W_PLL_CTRL_NDIV_SHIFT;
    uint32_t pdiv = (a2wctrl & A2W_PLL_CTRL_PDIV_MASK) >> A2W_PLL_CTRL_PDIV_SHIFT;

    if (mmio_read_addr(A2W_PLLH_ANA0 + 4u) & PLLH_FB_PREDIV_MASK) {
        ndiv *= 2u;
        fdiv *= 2u;
    }
    if (pdiv == 0u) {
        return 0u;
    }

    /* Circle: PLLH_PIX = OSC * ((ndiv<<20)+fdiv) / pdiv / 10 */
    {
        uint64_t rate = (uint64_t)OSC_HZ * (((uint64_t)ndiv << A2W_PLL_FRAC_BITS) + fdiv);
        rate /= pdiv;
        rate >>= A2W_PLL_FRAC_BITS;
        rate /= PLLH_PIX_FIXED_DIVIDER;
        return (uint32_t)rate;
    }
}

static void best_approx_sample_rate(uint32_t audio_clock_hz, uint32_t sample_rate_hz,
                                    uint32_t *out_n, uint32_t *out_m_minus_1)
{
    uint64_t best_err = ~0ULL;
    uint32_t best_n = 0u;
    uint32_t best_m = 1u;

    if (!audio_clock_hz || !sample_rate_hz) {
        *out_n = 1u;
        *out_m_minus_1 = 0u;
        return;
    }

    for (uint32_t m = 1u; m <= (MAI_SAMPLE_RATE_M_MASK + 1u); ++m) {
        uint64_t num = (uint64_t)audio_clock_hz * m;
        uint32_t n = (uint32_t)((num + (sample_rate_hz / 2u)) / sample_rate_hz);
        if (n == 0u || n > MAI_SAMPLE_RATE_N_MASK) {
            continue;
        }
        {
            uint64_t actual_num = (uint64_t)sample_rate_hz * n;
            uint64_t target_num = (uint64_t)audio_clock_hz * m;
            uint64_t err = (actual_num > target_num) ? (actual_num - target_num) : (target_num - actual_num);
            if (err < best_err) {
                best_err = err;
                best_n = n;
                best_m = m;
                if (err == 0u) {
                    break;
                }
            }
        }
    }

    if (best_n == 0u) {
        best_n = 1u;
        best_m = 1u;
    }
    *out_n = best_n;
    *out_m_minus_1 = best_m - 1u;
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
    uint32_t audio_clock_hz = hdmi_get_hsm_clock_rate_hz();
    uint32_t pixel_clock_hz = hdmi_get_pixel_clock_rate_hz();
    uint32_t n;
    uint32_t cts;
    uint32_t mai_sr_n;
    uint32_t mai_sr_m_minus_1;
    const uint32_t mai_threshold =
        (16u << SHIFT_MAI_THRESHOLD_PANIC_HIGH) |
        (16u << SHIFT_MAI_THRESHOLD_PANIC_LOW)  |
        (16u << SHIFT_MAI_THRESHOLD_DREQ_HIGH)  |
        (16u << SHIFT_MAI_THRESHOLD_DREQ_LOW);
    uint32_t mai_sample_rate;

    if ((mmio_read(REG_RAM_PACKET_CONFIG) & BIT_RAM_PACKET_CONFIG_ENABLE) == 0u) {
#ifdef MSXBARE_DEBUG_LOGS
        if (!g_logged_sink_noaudio) {
            platform_log("[audio][hdmi] sink sem suporte de audio (RamPacketConfig.Enable=0).\n");
            g_logged_sink_noaudio = 1u;
        }
#endif
        return 0u;
    }

    /* Circle RunHDMI(): N = Fs*128/1000, CTS = pixel_clock * N / (Fs*128). */
    n = (48000u * 128u) / 1000u; /* 6144 for 48kHz */
    if (audio_clock_hz == 0u || pixel_clock_hz == 0u) {
        return 0u;
    }
    cts = (uint32_t)(((uint64_t)pixel_clock_hz * n) / (48000u * 128u));
    best_approx_sample_rate(audio_clock_hz, 48000u, &mai_sr_n, &mai_sr_m_minus_1);
    mai_sample_rate = (mai_sr_m_minus_1 << SHIFT_MAI_SAMPLE_RATE_M) |
                      (mai_sr_n << SHIFT_MAI_SAMPLE_RATE_N);

#ifdef MSXBARE_DEBUG_LOGS
    if (!g_logged_rates) {
        if (audio_clock_hz == 0u) {
            platform_log("[audio][hdmi] HSM clock invalido (0).\n");
        }
        if (pixel_clock_hz == 0u) {
            platform_log("[audio][hdmi] pixel clock invalido (0).\n");
        }
        platform_log("[audio][hdmi] clocks/CTS calculados (Circle-like).\n");
        g_logged_rates = 1u;
    }
#endif

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
               (0x0Fu << SHIFT_AUDIO_PACKET_CONFIG_BFRAME) |
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

static inline uint32_t parity32_u32(uint32_t v)
{
    v ^= v >> 16;
    v ^= v >> 8;
    v ^= v >> 4;
    v &= 0xFu;
    return (0x6996u >> v) & 1u;
}

static inline uint32_t convert_iec958_sample_24(int32_t sample24, uint32_t frame_index)
{
    uint32_t n = ((uint32_t)sample24 & 0x00FFFFFFu) << 4;

    if (frame_index < 40u) {
        if (g_iec958_status[frame_index / 8u] & (1u << (frame_index % 8u))) {
            n |= 0x40000000u; /* channel status bit */
        }
    }

    if (parity32_u32(n)) {
        n |= 0x80000000u; /* parity */
    }

    if (frame_index == 0u) {
        n |= 0x0Fu; /* B-frame preamble (Circle IEC958_B_FRAME_PREAMBLE) */
    }

    return n;
}

static void hdmi_write_mono_frame(int16_t s)
{
    uint32_t frame_idx_l = (g_subframe / 2u) % 192u;
    uint32_t left = convert_iec958_sample_24(((int32_t)s) << 8, frame_idx_l);
    g_subframe++;
    mmio_write(REG_MAI_DATA, left);

    /* Right channel mirrors mono sample. */
    {
        uint32_t frame_idx_r = (g_subframe / 2u) % 192u;
        uint32_t right = convert_iec958_sample_24(((int32_t)s) << 8, frame_idx_r);
        g_subframe++;
        mmio_write(REG_MAI_DATA, right);
    }
    if (g_subframe >= HDMI_SUBFRAMES_PER_BLOCK) {
        g_subframe = 0u;
    }
}

static void hdmi_dma_fill_debug_tone_buffers(void)
{
    uint32_t phase = 0u;
    const uint32_t sample_rate = 48000u;
    const uint32_t freq_hz = 440u;
    const uint32_t phase_step = (uint32_t)(((uint64_t)freq_hz << 24) / sample_rate);

    for (unsigned b = 0; b < 2u; ++b) {
        for (unsigned i = 0; i < HDMI_DMA_WORDS_PER_BUFFER; i += 2u) {
            int16_t s;
            uint32_t frame_idx_l;
            uint32_t frame_idx_r;
            phase += phase_step;
            s = (phase & 0x00800000u) ? 12000 : -12000;
            frame_idx_l = (g_subframe / 2u) % 192u;
            g_hdmi_dma_buf[b][i] = convert_iec958_sample_24(((int32_t)s) << 8, frame_idx_l);
            g_subframe++;
            frame_idx_r = (g_subframe / 2u) % 192u;
            g_hdmi_dma_buf[b][i + 1u] = convert_iec958_sample_24(((int32_t)s) << 8, frame_idx_r);
            g_subframe++;
            if (g_subframe >= HDMI_SUBFRAMES_PER_BLOCK) {
                g_subframe = 0u;
            }
        }
        cache_clean_range(g_hdmi_dma_buf[b], sizeof(g_hdmi_dma_buf[b]));
    }
}

static void hdmi_dma_fill_buffer_from_pcm(unsigned b)
{
    for (unsigned i = 0; i < HDMI_DMA_WORDS_PER_BUFFER; i += 2u) {
        int16_t s = 0;
        uint32_t frame_idx_l;
        uint32_t frame_idx_r;
        (void)audio_pcm_read_interleaved_s16(&s, 1u);
        frame_idx_l = (g_subframe / 2u) % 192u;
        g_hdmi_dma_buf[b][i] = convert_iec958_sample_24(((int32_t)s) << 8, frame_idx_l);
        g_subframe++;
        frame_idx_r = (g_subframe / 2u) % 192u;
        g_hdmi_dma_buf[b][i + 1u] = convert_iec958_sample_24(((int32_t)s) << 8, frame_idx_r);
        g_subframe++;
        if (g_subframe >= HDMI_SUBFRAMES_PER_BLOCK) {
            g_subframe = 0u;
        }
    }
    cache_clean_range(g_hdmi_dma_buf[b], sizeof(g_hdmi_dma_buf[b]));
}

static void hdmi_dma_start_cyclic(uint8_t debug_tone_mode)
{
    const uint32_t dst = bus_address_of_arm_reg((uintptr_t)REG_MAI_DATA);
    const uint32_t len_bytes = HDMI_DMA_WORDS_PER_BUFFER * sizeof(uint32_t);

    if (debug_tone_mode) {
        hdmi_dma_fill_debug_tone_buffers();
    } else {
        hdmi_dma_fill_buffer_from_pcm(0u);
        hdmi_dma_fill_buffer_from_pcm(1u);
    }

    for (unsigned i = 0; i < 2u; ++i) {
        g_hdmi_dma_cb[i].ti = (HDMI_DREQ_SOURCE_LEGACY << DMA_TI_PERMAP_SHIFT)
                            | DMA_TI_SRC_WIDTH
                            | DMA_TI_SRC_INC
                            | DMA_TI_DEST_DREQ
                            | DMA_TI_WAIT_RESP;
        g_hdmi_dma_cb[i].src = bus_address_of_ptr(g_hdmi_dma_buf[i]);
        g_hdmi_dma_cb[i].dst = dst;
        g_hdmi_dma_cb[i].len = len_bytes;
        g_hdmi_dma_cb[i].stride = 0u;
        g_hdmi_dma_cb[i].next = bus_address_of_ptr(&g_hdmi_dma_cb[(i + 1u) & 1u]);
        g_hdmi_dma_cb[i].rsv0 = 0u;
        g_hdmi_dma_cb[i].rsv1 = 0u;
    }
    cache_clean_range(g_hdmi_dma_cb, sizeof(g_hdmi_dma_cb));

    *ARM_DMA_ENABLE_REG |= (1u << HDMI_DMA_CHANNEL);
    *ARM_DMACHAN_CS(HDMI_DMA_CHANNEL) = DMA_CS_RESET;
    for (volatile unsigned k = 0; k < 100000u; ++k) { }

    *ARM_DMACHAN_CONBLK_AD(HDMI_DMA_CHANNEL) = bus_address_of_ptr(&g_hdmi_dma_cb[0]);
    *ARM_DMACHAN_CS(HDMI_DMA_CHANNEL) = DMA_CS_WAIT_WRITES
                                     | (DMA_DEFAULT_PANIC_PRIORITY << DMA_CS_PANIC_PRIORITY_SHIFT)
                                     | (DMA_DEFAULT_PRIORITY << DMA_CS_PRIORITY_SHIFT)
                                     | DMA_CS_ACTIVE;
    g_hdmi_dma_started = 1u;
    g_hdmi_dma_mode_pcm = debug_tone_mode ? 0u : 1u;
    g_hdmi_dma_last_active_cb = 0xFFu;
}

static uint8_t hdmi_dma_current_cb_index(void)
{
    uint32_t cur = *ARM_DMACHAN_CONBLK_AD(HDMI_DMA_CHANNEL);
    uint32_t cb0 = bus_address_of_ptr(&g_hdmi_dma_cb[0]);
    uint32_t cb1 = bus_address_of_ptr(&g_hdmi_dma_cb[1]);
    if (cur == cb0) {
        return 0u;
    }
    if (cur == cb1) {
        return 1u;
    }
    return 0xFFu;
}

void audio_out_init(uint32_t sample_rate)
{
    g_hdmi_audio_enabled = 0u;
    g_hdmi_hw_inited = 0u;
    g_logged_init = 0u;
    g_logged_drop = 0u;
    g_logged_hw_fail = 0u;
    g_logged_sink_noaudio = 0u;
    g_logged_progress = 0u;
    g_logged_rates = 0u;
    g_logged_dma = 0u;
    g_sample_rate = sample_rate;
    g_subframe = 0u;
    g_hdmi_dma_started = 0u;
    g_hdmi_dma_mode_pcm = 0u;
    g_hdmi_dma_last_active_cb = 0xFFu;
    g_logged_dma_refill = 0u;
    g_logged_dma_unknown = 0u;
    g_hdmi_debug_flags = 0u;
    g_iec958_status[0] = 0b00000100u;       /* consumer, PCM */
    g_iec958_status[1] = 0u;
    g_iec958_status[2] = 0u;
    g_iec958_status[3] = 2u;                 /* 48kHz */
    g_iec958_status[4] = (uint8_t)(0b1011u | (13u << 4)); /* 24-bit, orig 48kHz */

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

    #ifdef MSXBARE_AUDIO_HDMI_DMA_STANDALONE
    hdmi_dma_start_cyclic(1u);
#ifdef MSXBARE_DEBUG_LOGS
    if (!g_logged_dma) {
        platform_log("[audio][hdmi] DMA cyclic debug iniciado.\n");
        g_logged_dma = 1u;
    }
#endif
    #endif

#ifdef MSXBARE_DEBUG_LOGS
    if (!g_logged_init) {
        platform_log("[audio][hdmi] MAI/HDMI polling inicializado (sem DMA).\n");
        g_logged_init = 1u;
    }
#endif
}

void audio_out_shutdown(void)
{
    if (g_hdmi_dma_started) {
        *ARM_DMACHAN_CS(HDMI_DMA_CHANNEL) = DMA_CS_RESET;
        g_hdmi_dma_started = 0u;
    }
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

    if (g_hdmi_dma_started) {
#ifdef MSXBARE_AUDIO_HDMI_DMA_STANDALONE
        return;
#else
        uint8_t active = hdmi_dma_current_cb_index();
        if (active <= 1u) {
            if (active != g_hdmi_dma_last_active_cb) {
                /* Refill the buffer that DMA is NOT currently consuming. */
                unsigned refill = active ^ 1u;
                hdmi_dma_fill_buffer_from_pcm(refill);
                g_hdmi_dma_last_active_cb = active;
                if (!g_logged_dma_refill) {
                    HDMI_HDBG("[H] r1\n");
                    g_logged_dma_refill = 1u;
                }
                g_hdmi_debug_flags |= AUDIO_OUT_DBG_HDMI_R1;
            }
        } else if (!g_logged_dma_unknown) {
            HDMI_HDBG("[H] du\n");
            g_logged_dma_unknown = 1u;
            g_hdmi_debug_flags |= AUDIO_OUT_DBG_HDMI_DU;
        }
        return;
#endif
    }

#ifndef MSXBARE_AUDIO_HDMI_DMA_STANDALONE
    {
        audio_pcm_stats_t st;
        audio_pcm_get_stats(&st);
        if (st.queued_frames >= 256u) {
            hdmi_dma_start_cyclic(0u);
            HDMI_HDBG("[H] d1\n");
            g_hdmi_debug_flags |= AUDIO_OUT_DBG_HDMI_D1;
#ifdef MSXBARE_DEBUG_LOGS
            if (!g_logged_dma) {
                platform_log("[audio][hdmi] DMA cyclic PCM iniciado.\n");
                g_logged_dma = 1u;
            }
#endif
            return;
        }
    }
#endif

    while (hdmi_is_writable() && pushed < 32u) {
        int16_t s = 0;
        if (audio_pcm_read_interleaved_s16(&s, 1u) != 1u) {
            break;
        }
        hdmi_write_mono_frame(s);
        pushed++;
    }

#ifdef MSXBARE_DEBUG_LOGS
    if (pushed && !g_logged_progress) {
        platform_log("[audio][hdmi] MAI aceitou samples em polling.\n");
        g_logged_progress = 1u;
    }
#endif

    if (pushed == 0u && audio_pcm_drop_frames(64u) != 0u) {
#ifdef MSXBARE_DEBUG_LOGS
        if (!g_logged_drop) {
            platform_log("[audio][hdmi] polling sem progresso; drenando PCM (DMA pendente).\n");
            g_logged_drop = 1u;
        }
#endif
    }
}

uint32_t audio_out_debug_flags(void)
{
    return g_hdmi_debug_flags;
}
