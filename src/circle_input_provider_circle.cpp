extern "C" {
#include "msx_hid_bridge.h"
#include "circle_input_provider.h"
#include "platform.h"
#include "framebuffer.h"
#include "stdlib.h"
}

#include <stddef.h>
#ifndef ASSERT_STATIC
#define ASSERT_STATIC(expr) static_assert((expr), #expr)
#endif
#include <circle/types.h>
#include <circle/devicenameservice.h>
#include <circle/interrupt.h>
#include <circle/timer.h>
#include <circle/usb/usbhcidevice.h>
#include <circle/usb/usbkeyboard.h>

// Minimal C++ runtime shim for this embedded Circle bridge integration.
// Avoids pulling Circle sysinit/new.cpp paths into the msxbare image.
void *operator new(size_t nSize) noexcept { return malloc(nSize); }
void *operator new[](size_t nSize) noexcept { return malloc(nSize); }
void operator delete(void *pBlock) noexcept { free(pBlock); }
void operator delete[](void *pBlock) noexcept { free(pBlock); }
void *operator new(size_t, void *pMem) noexcept { return pMem; }
void *operator new[](size_t, void *pMem) noexcept { return pMem; }
void operator delete(void *, void *) noexcept {}
void operator delete[](void *, void *) noexcept {}
#if __cplusplus >= 201402L
void operator delete(void *pBlock, size_t) noexcept { free(pBlock); }
void operator delete[](void *pBlock, size_t) noexcept { free(pBlock); }
#endif


namespace {

#ifndef MSXBARE_CIRCLE_INPUT_SKIP_IRQ_INIT
#define MSXBARE_CIRCLE_INPUT_SKIP_IRQ_INIT 0
#endif

#ifndef MSXBARE_CIRCLE_INPUT_SKIP_USB_INIT
#define MSXBARE_CIRCLE_INPUT_SKIP_USB_INIT 0
#endif

#ifndef MSXBARE_CIRCLE_INPUT_SKIP_USB_CTOR
#define MSXBARE_CIRCLE_INPUT_SKIP_USB_CTOR 0
#endif

#ifndef MSXBARE_CIRCLE_INPUT_SKIP_PNP_UPDATE
#define MSXBARE_CIRCLE_INPUT_SKIP_PNP_UPDATE 0
#endif

extern CInterruptSystem *g_circle_irq_singleton asm("_ZN16CInterruptSystem7s_pThisE");
extern CTimer *g_circle_timer_singleton asm("_ZN6CTimer7s_pThisE");
extern CUSBHostController *g_circle_usbhost_singleton asm("_ZN18CUSBHostController7s_pThisE");

alignas(CDeviceNameService) static unsigned char g_dns_buf[sizeof(CDeviceNameService)];
alignas(CInterruptSystem) static unsigned char g_irq_buf[sizeof(CInterruptSystem)];
alignas(CTimer) static unsigned char g_timer_buf[sizeof(CTimer)];
alignas(CUSBHCIDevice) static unsigned char g_usb_buf[sizeof(CUSBHCIDevice)];

CDeviceNameService *g_dns = 0;
CInterruptSystem *g_irq = 0;
CTimer *g_timer = 0;
CUSBHCIDevice *g_usb = 0;
CUSBKeyboardDevice *g_kbd = 0;

bool g_init_attempted = false;
bool g_ready = false;
bool g_failed = false;
unsigned g_poll_count = 0;
unsigned g_kbd_bound = 0;
unsigned g_stage_code = 0;
unsigned g_init_phase = 0;

static void debug_stage(const char *msg)
{
#ifdef MSXBARE_CIRCLE_INPUT_OVERLAY_DEBUG
    (void) msg;
#elif defined(MSXBARE_CIRCLE_INPUT_DEBUG_STAGES)
    platform_log(msg);
    platform_delay_ms(300);
#else
    (void) msg;
#endif
}

static void cinput_log(const char *msg)
{
#ifdef MSXBARE_CIRCLE_INPUT_OVERLAY_DEBUG
    (void) msg;
#else
    platform_log(msg);
#endif
}

static void key_status_handler_raw(unsigned char modifiers, const unsigned char raw_keys[6])
{
    msx_hid_bridge_update_raw((uint8_t)modifiers, raw_keys);
}

static void try_bind_keyboard(void)
{
    if (g_kbd != 0) {
        return;
    }

    CDeviceNameService *dns = CDeviceNameService::Get();
    if (dns == 0) {
        return;
    }

    CDevice *dev = dns->GetDevice("ukbd1", FALSE);
    if (dev == 0) {
        return;
    }

    g_kbd = (CUSBKeyboardDevice *)dev;
    g_kbd_bound = 1u;
    g_kbd->RegisterKeyStatusHandlerRaw(key_status_handler_raw);
    g_stage_code = 0xA1u;
    cinput_log("[circle-input] ukbd1 raw HID registrado.\n");
}

static void do_init_once(void)
{
    if (g_failed || g_ready) {
        return;
    }

#ifdef MSXBARE_CIRCLE_INPUT_OVERLAY_DEBUG
    switch (g_init_phase) {
    case 0:
        g_init_attempted = true;
        g_stage_code = 0x00u;
        debug_stage("[circle-input] S0\n");
        msx_hid_bridge_init();
        g_init_phase = 1;
        return;
    case 1:
        g_stage_code = 0x02u;
        debug_stage("[circle-input] S2\n");
        g_dns = new (g_dns_buf) CDeviceNameService();
        g_init_phase = 2;
        return;
    case 2:
        g_stage_code = 0x03u;
        debug_stage("[circle-input] S3\n");
        g_circle_irq_singleton = 0;
        g_irq = new (g_irq_buf) CInterruptSystem();
        g_init_phase = 3;
        return;
    case 3:
        g_stage_code = 0x04u;
        debug_stage("[circle-input] S4\n");
        g_stage_code = 0x41u;
        debug_stage("[circle-input] T1\n");
        g_circle_timer_singleton = 0;
        g_stage_code = 0x42u;
        debug_stage("[circle-input] T2\n");
        g_timer = new (g_timer_buf) CTimer(g_irq);
        g_stage_code = 0x43u;
        debug_stage("[circle-input] T3\n");
        g_init_phase = 4;
        return;
    case 4:
        g_stage_code = 0x05u;
        debug_stage("[circle-input] S5\n");
        g_stage_code = 0x51u;
        debug_stage("[circle-input] U1\n");
        g_circle_usbhost_singleton = 0;
        g_stage_code = 0x52u;
        debug_stage("[circle-input] U2\n");
#if MSXBARE_CIRCLE_INPUT_SKIP_USB_CTOR
        g_stage_code = 0x5Fu;
        debug_stage("[circle-input] UCK\n");
        g_usb = 0;
#else
        g_usb = new (g_usb_buf) CUSBHCIDevice(g_irq, g_timer, TRUE);
        g_stage_code = 0x53u;
        debug_stage("[circle-input] U3\n");
#endif
        g_init_phase = 5;
        return;
    case 5:
        g_stage_code = 0x06u;
        debug_stage("[circle-input] S6\n");
#if MSXBARE_CIRCLE_INPUT_SKIP_IRQ_INIT
        g_stage_code = 0x6Fu;
        debug_stage("[circle-input] ISK\n");
        g_init_phase = 6;
        return;
#else
        if (!g_irq->Initialize()) {
            g_stage_code = 0xE1u;
            debug_stage("[circle-input] E1\n");
            g_failed = true;
            return;
        }
#ifdef MSXBARE_CIRCLE_INPUT_ENABLE_GLOBAL_IRQ
        platform_irq_enable();
#endif
        g_init_phase = 6;
        return;
#endif
    case 6:
        g_stage_code = 0x07u;
        debug_stage("[circle-input] S7\n");
        /* Integrated msxbare runtime already owns timer/IRQ plumbing.
         * Keep the Circle timer object for delays/time queries, but skip
         * CTimer::Initialize() to avoid reprogramming timer IRQ state. */
        g_stage_code = 0x79u;
        debug_stage("[circle-input] TSK\n");
        g_init_phase = 7;
        return;
    case 7:
        g_stage_code = 0x08u;
        debug_stage("[circle-input] S8\n");
#if MSXBARE_CIRCLE_INPUT_SKIP_USB_INIT
        g_stage_code = 0x8Fu;
        debug_stage("[circle-input] USK\n");
        g_init_phase = 8;
        return;
#else
        if (!g_usb || !g_usb->Initialize(FALSE)) {
            g_stage_code = 0xE3u;
            debug_stage("[circle-input] E3\n");
            g_failed = true;
            return;
        }
        g_init_phase = 8;
        return;
#endif
    case 8:
        g_stage_code = 0x09u;
        debug_stage("[circle-input] S9\n");
        g_ready = true;
        return;
    default:
        return;
    }
#else
    if (g_init_attempted) {
        return;
    }
    g_init_attempted = true;

    g_stage_code = 0u;
    debug_stage("[circle-input] S0 init_once\n");
    msx_hid_bridge_init();
    g_stage_code = 1u;
    debug_stage("[circle-input] S1 bridge ok\n");

    g_stage_code = 2u;
    debug_stage("[circle-input] S2 dns ctor\n");
    g_dns = new (g_dns_buf) CDeviceNameService();
    g_stage_code = 3u;
    debug_stage("[circle-input] S3 irq ctor\n");
    g_irq = new (g_irq_buf) CInterruptSystem();
    g_stage_code = 4u;
    debug_stage("[circle-input] S4 timer ctor\n");
    g_timer = new (g_timer_buf) CTimer(g_irq);
    g_stage_code = 5u;
    debug_stage("[circle-input] S5 usb ctor\n");
    g_usb = new (g_usb_buf) CUSBHCIDevice(g_irq, g_timer, TRUE);
    g_stage_code = 6u;
    debug_stage("[circle-input] S6 irq init\n");

    if (!g_irq->Initialize()) {
        g_stage_code = 0xE1u;
        cinput_log("[circle-input] falha CInterruptSystem::Initialize()\n");
        g_failed = true;
        return;
    }

#ifdef MSXBARE_CIRCLE_INPUT_ENABLE_GLOBAL_IRQ
    platform_irq_enable();
#endif

    g_stage_code = 7u;
    debug_stage("[circle-input] S7 timer init\n");
    if (!g_timer->Initialize()) {
        g_stage_code = 0xE2u;
        cinput_log("[circle-input] falha CTimer::Initialize()\n");
        g_failed = true;
        return;
    }

    g_stage_code = 8u;
    debug_stage("[circle-input] S8 usb init\n");
    if (!g_usb->Initialize(FALSE)) {
        g_stage_code = 0xE3u;
        cinput_log("[circle-input] falha CUSBHCIDevice::Initialize()\n");
        g_failed = true;
        return;
    }

    g_stage_code = 9u;
    debug_stage("[circle-input] S9 usb init ok\n");
    g_ready = true;
    cinput_log("[circle-input] stack USB/HID Circle inicializada.\n");
#endif
}

} // namespace

extern "C" void circle_input_provider_init(void)
{
    do_init_once();
}

extern "C" void circle_input_provider_poll(void)
{
    do_init_once();
    if (!g_ready || g_failed || g_usb == 0) {
        return;
    }

#if !MSXBARE_CIRCLE_INPUT_SKIP_PNP_UPDATE
    if (!g_usb) {
        return;
    }
    boolean updated = g_usb->UpdatePlugAndPlay();
    (void)updated;
#endif
    try_bind_keyboard();
    if (g_kbd != 0) {
#ifndef MSXBARE_CIRCLE_INPUT_NO_LEDS
        g_kbd->UpdateLEDs();
#endif
    }
#ifdef MSXBARE_CIRCLE_INPUT_DEBUG_STAGES
    if (g_poll_count == 0u) { platform_log("[circle-input] S10 first poll body\n"); }
#endif

    ++g_poll_count;
    g_stage_code = 0x0Au;
    if (g_poll_count == 1u) {
        cinput_log("[circle-input] poll ativo. aguardando teclado HID...\n");
    }
}

extern "C" int circle_input_provider_is_ready(void)
{
    return g_ready ? 1 : 0;
}

extern "C" void circle_input_provider_get_debug(circle_input_provider_debug_t *out_dbg)
{
    if (!out_dbg) { return; }
    out_dbg->ready = g_ready ? 1u : 0u;
    out_dbg->failed = g_failed ? 1u : 0u;
    out_dbg->kbd_bound = g_kbd_bound;
    out_dbg->poll_count = g_poll_count;
    out_dbg->stage_code = g_stage_code;
}

extern "C" unsigned circle_input_provider_debug_ready(void) { return g_ready ? 1u : 0u; }
extern "C" unsigned circle_input_provider_debug_failed(void) { return g_failed ? 1u : 0u; }
extern "C" unsigned circle_input_provider_debug_kbd_bound(void) { return g_kbd_bound; }
extern "C" unsigned circle_input_provider_debug_polls(void) { return g_poll_count; }
extern "C" unsigned circle_input_provider_debug_stage(void) { return g_stage_code; }

extern "C" void msxbare_circle_dwhci_dbg(unsigned code)
{
#ifdef MSXBARE_CIRCLE_INPUT_OVERLAY_DEBUG
    g_stage_code = code & 0xFFu;
    debug_stage("[circle-input] DWHCI\n");
#else
    (void) code;
#endif
}
