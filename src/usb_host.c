#include "usb_host.h"

#include "platform.h"
#include "mailbox.h"

#define MMIO_BASE            0x3F000000UL
#define USB_BASE             (MMIO_BASE + 0x980000UL)
#define USB_CORE_BASE        (USB_BASE + 0x0000UL)
#define USB_HOST_BASE        (USB_BASE + 0x0400UL)
#define USB_POWER_REG         (USB_BASE + 0x0E00UL)

/* References (Circle, conceptual):
 * - third_party/circle/include/circle/bcm2835.h (ARM_USB_BASE)
 * - third_party/circle/include/circle/usb/dwhci.h (registers/bitfields)
 * - third_party/circle/lib/usb/dwhcidevice.cpp (init/reset order)
 */
#define DWHCI_CORE_AHB_CFG   (USB_CORE_BASE + 0x008UL)
#define DWHCI_CORE_USB_CFG   (USB_CORE_BASE + 0x00CUL)
#define DWHCI_CORE_RESET     (USB_CORE_BASE + 0x010UL)
#define DWHCI_CORE_INT_STAT  (USB_CORE_BASE + 0x014UL)
#define DWHCI_CORE_VENDOR_ID (USB_CORE_BASE + 0x040UL)
#define DWHCI_CORE_HW_CFG2   (USB_CORE_BASE + 0x048UL)
#define DWHCI_HOST_CFG       (USB_HOST_BASE + 0x000UL)
#define DWHCI_HOST_PORT      (USB_HOST_BASE + 0x040UL)

#define DWHCI_CORE_AHB_CFG_GLOBALINT_MASK (1u << 0)
#define DWHCI_CORE_AHB_CFG_WAIT_AXI_WRITES (1u << 4)
#define DWHCI_CORE_AHB_CFG_DMAENABLE       (1u << 5)
#define DWHCI_CORE_AHB_CFG_MAX_AXI_BURST_MASK (3u << 1)
#define DWHCI_CORE_RESET_SOFT_RESET       (1u << 0)
#define DWHCI_CORE_RESET_AHB_IDLE         (1u << 31)
#define DWHCI_CORE_RESET_RX_FIFO_FLUSH   (1u << 4)
#define DWHCI_CORE_RESET_TX_FIFO_FLUSH   (1u << 5)
#define DWHCI_CORE_RESET_TX_FIFO_NUM_SHIFT 6
#define DWHCI_CORE_RESET_TX_FIFO_NUM_MASK (0x1Fu << DWHCI_CORE_RESET_TX_FIFO_NUM_SHIFT)
#define DWHCI_CORE_INT_STAT_CUR_MODE_HOST (1u << 0)
#define DWHCI_CORE_USB_CFG_PHYIF           (1u << 3)
#define DWHCI_CORE_USB_CFG_ULPI_UTMI_SEL   (1u << 4)
#define DWHCI_CORE_USB_CFG_SRP_CAPABLE     (1u << 8)
#define DWHCI_CORE_USB_CFG_HNP_CAPABLE     (1u << 9)
#define DWHCI_CORE_USB_CFG_ULPI_EXT_VBUS_DRV (1u << 20)
#define DWHCI_CORE_USB_CFG_TERM_SEL_DL_PULSE (1u << 22)
#define DWHCI_CORE_USB_CFG_FORCE_HOST_MODE (1u << 29)
#define DWHCI_CORE_USB_CFG_FORCE_DEV_MODE  (1u << 30)
#define DWHCI_HOST_CFG_FSLS_PCLK_SEL_MASK (3u << 0)
#define DWHCI_HOST_CFG_FSLS_PCLK_SEL_30_60M (0u << 0)
#define DWHCI_HOST_CFG_FSLS_PCLK_SEL_48M    (1u << 0)
#define DWHCI_HOST_PORT_CONNECT           (1u << 0)
#define DWHCI_HOST_PORT_ENABLE            (1u << 2)
#define DWHCI_HOST_PORT_RESET             (1u << 8)
#define DWHCI_HOST_PORT_POWER             (1u << 12)
#define DWHCI_HOST_PORT_SPEED_SHIFT       17
#define DWHCI_HOST_PORT_SPEED_MASK        (3u << DWHCI_HOST_PORT_SPEED_SHIFT)
#define DWHCI_HOST_PORT_CONNECT_CHANGED  (1u << 1)
#define DWHCI_HOST_PORT_ENABLE_CHANGED   (1u << 3)
#define DWHCI_HOST_PORT_OVERCURRENT_CHANGED (1u << 5)
#define DWHCI_HOST_PORT_DEFAULT_MASK (DWHCI_HOST_PORT_CONNECT_CHANGED | DWHCI_HOST_PORT_ENABLE | DWHCI_HOST_PORT_ENABLE_CHANGED | DWHCI_HOST_PORT_OVERCURRENT_CHANGED)

static inline uint32_t mmio_read32(uintptr_t addr)
{
    return *(volatile uint32_t *)addr;
}

static inline void mmio_write32(uintptr_t addr, uint32_t v)
{
    *(volatile uint32_t *)addr = v;
}

static void mmio_delay_cycles(unsigned int n)
{
    while (n--) {
        __asm__ volatile("nop");
    }
}

static int wait_mask(uintptr_t addr, uint32_t mask, uint32_t expect_set, uint32_t timeout_us)
{
    while (timeout_us--) {
        uint32_t v = mmio_read32(addr);
        if (((v & mask) != 0u) == (expect_set != 0u)) {
            return 1;
        }
        /* ~1us-ish busy wait, exactness not required for bring-up status */
        mmio_delay_cycles(150u);
    }
    return 0;
}

static int dwc_wait_reset_bits_clear(uint32_t mask, uint32_t timeout_us)
{
    return wait_mask(DWHCI_CORE_RESET, mask, 0u, timeout_us);
}

static void dwc_flush_tx_fifo(uint32_t fifo)
{
    uint32_t r = mmio_read32(DWHCI_CORE_RESET);
    r &= ~DWHCI_CORE_RESET_TX_FIFO_NUM_MASK;
    r |= (fifo << DWHCI_CORE_RESET_TX_FIFO_NUM_SHIFT) & DWHCI_CORE_RESET_TX_FIFO_NUM_MASK;
    r |= DWHCI_CORE_RESET_TX_FIFO_FLUSH;
    mmio_write32(DWHCI_CORE_RESET, r);
    (void)dwc_wait_reset_bits_clear(DWHCI_CORE_RESET_TX_FIFO_FLUSH, 10000u);
    platform_delay_ms(1u);
}

static void dwc_flush_rx_fifo(void)
{
    uint32_t r = mmio_read32(DWHCI_CORE_RESET) | DWHCI_CORE_RESET_RX_FIFO_FLUSH;
    mmio_write32(DWHCI_CORE_RESET, r);
    (void)dwc_wait_reset_bits_clear(DWHCI_CORE_RESET_RX_FIFO_FLUSH, 10000u);
    platform_delay_ms(1u);
}

static void usb_host_sample_status(void);
static void usb_host_try_init(void);
static void usb_host_log_once_summary(void);

#define PROPTAG_SET_POWER_STATE          0x00028001u
#define DEVICE_ID_USB_HCD               3u
#define POWER_STATE_ON                  0x00000001u
#define POWER_STATE_WAIT                0x00000002u
#define POWER_STATE_NO_DEVICE           0x00000002u

static int usb_hcd_power_on(void)
{
    static volatile uint32_t __attribute__((aligned(16))) mbox[8];
    mbox[0] = 8u * 4u;
    mbox[1] = 0u;
    mbox[2] = PROPTAG_SET_POWER_STATE;
    mbox[3] = 8u;
    mbox[4] = 8u;
    mbox[5] = DEVICE_ID_USB_HCD;
    mbox[6] = POWER_STATE_ON | POWER_STATE_WAIT;
    mbox[7] = 0u;

    if (!mailbox_call(8u, mbox)) {
        return 0;
    }
    /* Response returns device id + state in value buffer. */
    if (mbox[6] & POWER_STATE_NO_DEVICE) {
        return 0;
    }
    return (mbox[6] & POWER_STATE_ON) ? 1 : 0;
}


/*
 * USB host scaffold for M1.2 (input).
 *
 * Reference sources (Circle, conceptual):
 * - third_party/circle/include/circle/usb/dwhci.h
 * - third_party/circle/lib/usb/dwhci*.cpp
 * - third_party/circle/include/circle/usb/usbsubsystem.h
 * - third_party/circle/lib/usb/usbsubsystem.cpp
 *
 * Current phase: no hardware bring-up yet.
 * This module only provides a stable API and polling hook integration point.
 */

static usb_host_status_t g_status;
static uint8_t g_summary_logged;
static uint32_t g_poll_div;
static uint32_t g_last_port_bits;

void usb_host_init(void)
{
    memset(&g_status, 0, sizeof(g_status));
    g_summary_logged = 0u;
    g_poll_div = 0u;
    g_last_port_bits = 0xFFFFFFFFu;
    usb_host_try_init();
    usb_host_sample_status();
    usb_host_log_once_summary();
}

void usb_host_poll(void)
{
    /* Sample at a lower rate; no IRQs/enumeration yet. */
    ++g_poll_div;
    if ((g_poll_div & 0x3FFFu) != 0u) {
        return;
    }
    usb_host_sample_status();

    /* Log root port state changes for manual bring-up validation. */
    if (g_status.init_ok) {
        uint32_t port_bits =
            (uint32_t)g_status.port_powered |
            ((uint32_t)g_status.device_present << 1) |
            ((uint32_t)g_status.port_enabled << 2) |
            ((uint32_t)g_status.port_speed << 3);
        if (port_bits != g_last_port_bits) {
#ifndef MSXBARE_USB_HOST_SILENT_LOGS
            char msg[96];
            const char *speed = "unk";
            if (g_status.port_speed == 0u) speed = "hs";
            else if (g_status.port_speed == 1u) speed = "fs";
            else if (g_status.port_speed == 2u) speed = "ls";
            sprintf(msg,
                    "[usb] rootport pwr=%u conn=%u en=%u speed=%s\n",
                    (unsigned)g_status.port_powered,
                    (unsigned)g_status.device_present,
                    (unsigned)g_status.port_enabled,
                    speed);
            platform_log(msg);
#endif
            g_last_port_bits = port_bits;
        }
    }
}

void usb_host_get_status(usb_host_status_t *out_status)
{
    if (!out_status) {
        return;
    }
    out_status->init_attempted = g_status.init_attempted;
    out_status->init_ok = g_status.init_ok;
    out_status->controller_detected = g_status.controller_detected;
    out_status->hcd_power_on_ok = g_status.hcd_power_on_ok;
    out_status->host_mode = g_status.host_mode;
    out_status->port_powered = g_status.port_powered;
    out_status->device_present = g_status.device_present;
    out_status->port_enabled = g_status.port_enabled;
    out_status->port_speed = g_status.port_speed;
    out_status->hid_keyboard_present = g_status.hid_keyboard_present;
    out_status->hid_gamepad_present = g_status.hid_gamepad_present;
    out_status->vendor_id = g_status.vendor_id;
    out_status->hw_cfg2 = g_status.hw_cfg2;
    out_status->gintsts_raw = g_status.gintsts_raw;
    out_status->hprt_raw = g_status.hprt_raw;
    out_status->gusbcfg_raw = g_status.gusbcfg_raw;
    out_status->gahbcfg_raw = g_status.gahbcfg_raw;
}

static void usb_host_try_init(void)
{
    g_status.init_attempted = 1u;

    g_status.hcd_power_on_ok = usb_hcd_power_on() ? 1u : 0u;
    platform_delay_ms(20u);
    g_status.vendor_id = mmio_read32(DWHCI_CORE_VENDOR_ID);
    g_status.hw_cfg2 = mmio_read32(DWHCI_CORE_HW_CFG2);

    if (g_status.vendor_id == 0x4F54280Au || g_status.vendor_id == 0x4F54294Au) {
        g_status.controller_detected = 1u;
    } else {
        return;
    }

    /* Disable global interrupt bit during early init (polling phase). */
    uint32_t ahb = mmio_read32(DWHCI_CORE_AHB_CFG);
    mmio_write32(DWHCI_CORE_AHB_CFG, ahb & ~DWHCI_CORE_AHB_CFG_GLOBALINT_MASK);

    /* Wait for AHB idle and issue core soft reset (Circle dwhcidevice.cpp order). */
    if (!wait_mask(DWHCI_CORE_RESET, DWHCI_CORE_RESET_AHB_IDLE, 1u, 100000u)) {
        return;
    }
    mmio_write32(DWHCI_CORE_RESET, mmio_read32(DWHCI_CORE_RESET) | DWHCI_CORE_RESET_SOFT_RESET);
    if (!wait_mask(DWHCI_CORE_RESET, DWHCI_CORE_RESET_SOFT_RESET, 0u, 10000u)) {
        return;
    }

    /* Force host mode (Circle-style OTG/DWC bring-up) and re-reset core. */
    uint32_t usbcfg = mmio_read32(DWHCI_CORE_USB_CFG);
    usbcfg &= ~DWHCI_CORE_USB_CFG_FORCE_DEV_MODE;
    usbcfg |= DWHCI_CORE_USB_CFG_FORCE_HOST_MODE;
    mmio_write32(DWHCI_CORE_USB_CFG, usbcfg);
    platform_delay_ms(20u);

    if (!wait_mask(DWHCI_CORE_RESET, DWHCI_CORE_RESET_AHB_IDLE, 1u, 100000u)) {
        return;
    }
    mmio_write32(DWHCI_CORE_RESET, mmio_read32(DWHCI_CORE_RESET) | DWHCI_CORE_RESET_SOFT_RESET);
    if (!wait_mask(DWHCI_CORE_RESET, DWHCI_CORE_RESET_SOFT_RESET, 0u, 10000u)) {
        return;
    }
    platform_delay_ms(20u);

    /* Circle InitHost: restart PHY clock. */
    mmio_write32(USB_POWER_REG, 0u);

    /* Circle InitCore subset: configure USB core + internal DMA mode. */
    usbcfg = mmio_read32(DWHCI_CORE_USB_CFG);
    usbcfg &= ~DWHCI_CORE_USB_CFG_ULPI_UTMI_SEL;
    usbcfg &= ~DWHCI_CORE_USB_CFG_PHYIF;
    usbcfg &= ~DWHCI_CORE_USB_CFG_ULPI_EXT_VBUS_DRV;
    usbcfg &= ~DWHCI_CORE_USB_CFG_TERM_SEL_DL_PULSE;
    usbcfg &= ~DWHCI_CORE_USB_CFG_SRP_CAPABLE;
    usbcfg &= ~DWHCI_CORE_USB_CFG_HNP_CAPABLE;
    mmio_write32(DWHCI_CORE_USB_CFG, usbcfg);

    ahb = mmio_read32(DWHCI_CORE_AHB_CFG);
    ahb |= DWHCI_CORE_AHB_CFG_DMAENABLE | DWHCI_CORE_AHB_CFG_WAIT_AXI_WRITES;
    ahb &= ~DWHCI_CORE_AHB_CFG_MAX_AXI_BURST_MASK;
    mmio_write32(DWHCI_CORE_AHB_CFG, ahb);

    uint32_t hcfg = mmio_read32(DWHCI_HOST_CFG);
    hcfg &= ~DWHCI_HOST_CFG_FSLS_PCLK_SEL_MASK;
    /* Circle InitHost chooses 30/60MHz for the normal internal UTMI case. */
    hcfg |= DWHCI_HOST_CFG_FSLS_PCLK_SEL_30_60M;
    mmio_write32(DWHCI_HOST_CFG, hcfg);

    /* Circle InitHost also flushes FIFOs before powering the root port. */
    dwc_flush_tx_fifo(0x10u);
    dwc_flush_rx_fifo();

    /* Power root port and wait for connect before reset (Circle EnableRootPort timing). */
    uint32_t hprt = mmio_read32(DWHCI_HOST_PORT);
    if ((hprt & DWHCI_HOST_PORT_POWER) == 0u) {
        hprt &= ~DWHCI_HOST_PORT_DEFAULT_MASK;
        hprt |= DWHCI_HOST_PORT_POWER;
        mmio_write32(DWHCI_HOST_PORT, hprt);
    }

    /* Internal hub/device on Pi can take time to assert CONNECT. */
    for (unsigned i = 0; i < 510u; ++i) {
        hprt = mmio_read32(DWHCI_HOST_PORT);
        if (hprt & DWHCI_HOST_PORT_CONNECT) {
            break;
        }
        platform_delay_ms(1u);
    }

    usb_host_sample_status();

    /* Only pulse reset if something is connected. */
    if (g_status.device_present) {
        for (unsigned attempt = 0; attempt < 2u; ++attempt) {
            platform_delay_ms(100u);

            hprt = mmio_read32(DWHCI_HOST_PORT);
            hprt &= ~DWHCI_HOST_PORT_DEFAULT_MASK;
            hprt |= DWHCI_HOST_PORT_POWER | DWHCI_HOST_PORT_RESET;
            mmio_write32(DWHCI_HOST_PORT, hprt);
            platform_delay_ms(50u);

            hprt = mmio_read32(DWHCI_HOST_PORT);
            hprt &= ~DWHCI_HOST_PORT_DEFAULT_MASK;
            hprt &= ~DWHCI_HOST_PORT_RESET;
            hprt |= DWHCI_HOST_PORT_POWER;
            mmio_write32(DWHCI_HOST_PORT, hprt);
            platform_delay_ms(20u);

            /* Wait for controller to enable the port after reset. */
            for (unsigned i = 0; i < 500u; ++i) {
                usb_host_sample_status();
                if (g_status.port_enabled) {
                    break;
                }
                platform_delay_ms(1u);
            }
            if (g_status.port_enabled) {
                break;
            }
        }
    }

    /* Final sample after power/reset/enable settle. */
    usb_host_sample_status();
    g_status.init_ok = 1u;
}

static void usb_host_sample_status(void)
{
    uint32_t gint = mmio_read32(DWHCI_CORE_INT_STAT);
    uint32_t hprt = mmio_read32(DWHCI_HOST_PORT);
    uint32_t usbcfg = mmio_read32(DWHCI_CORE_USB_CFG);
    uint32_t ahb = mmio_read32(DWHCI_CORE_AHB_CFG);

    g_status.gintsts_raw = gint;
    g_status.hprt_raw = hprt;
    g_status.gusbcfg_raw = usbcfg;
    g_status.gahbcfg_raw = ahb;

    g_status.host_mode = (gint & DWHCI_CORE_INT_STAT_CUR_MODE_HOST) ? 1u : 0u;
    g_status.port_powered = (hprt & DWHCI_HOST_PORT_POWER) ? 1u : 0u;
    g_status.device_present = (hprt & DWHCI_HOST_PORT_CONNECT) ? 1u : 0u;
    g_status.port_enabled = (hprt & DWHCI_HOST_PORT_ENABLE) ? 1u : 0u;
    g_status.port_speed = (uint8_t)((hprt & DWHCI_HOST_PORT_SPEED_MASK) >> DWHCI_HOST_PORT_SPEED_SHIFT);

    (void)DWHCI_HOST_PORT_RESET;
}

static void usb_host_log_once_summary(void)
{
    if (g_summary_logged) {
        return;
    }
    g_summary_logged = 1u;

#ifndef MSXBARE_USB_HOST_SILENT_LOGS
    {
        char msg[160];
        sprintf(msg,
                "[usb] DWC vendor=0x%08lx detect=%u init=%u host=%u hwcfg2=0x%08lx\n",
                (unsigned long)g_status.vendor_id,
                (unsigned)g_status.controller_detected,
                (unsigned)g_status.init_ok,
                (unsigned)g_status.host_mode,
                (unsigned long)g_status.hw_cfg2);
        platform_log(msg);
    }
#endif

    if (!g_status.controller_detected) {
        #ifndef MSXBARE_USB_HOST_SILENT_LOGS
        platform_log("[usb] DWC host nao detectado (PID/Vendor inesperado).\n");
        #endif
        return;
    }

#ifndef MSXBARE_USB_HOST_SILENT_LOGS
    {
        const char *speed = "unk";
        if (g_status.port_speed == 0u) speed = "hs";
        else if (g_status.port_speed == 1u) speed = "fs";
        else if (g_status.port_speed == 2u) speed = "ls";

        char msg[128];
        sprintf(msg,
                "[usb] rootport pwr=%u conn=%u en=%u speed=%s (polling, sem enum)\n",
                (unsigned)g_status.port_powered,
                (unsigned)g_status.device_present,
                (unsigned)g_status.port_enabled,
                speed);
        platform_log(msg);
    }
#endif
}
