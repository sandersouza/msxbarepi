#include "circle_input_runtime.h"

#if defined(MSXBARE_CIRCLE_INPUT_SKIP_IRQ_INIT) && defined(MSXBARE_CIRCLE_INPUT_SKIP_USB_INIT)

static circle_input_snapshot_t g_stub_snapshot = {
    0x20,
    0,
    0,
    0,
    0,
    {0, 0, 0, 0, 0, 0}
};

extern "C" int circle_input_runtime_init(void)
{
    g_stub_snapshot.ready = 0x20;
    return 1;
}

extern "C" void circle_input_runtime_poll(circle_input_snapshot_t *snapshot)
{
    ++g_stub_snapshot.usb_tree_updates;
    if (snapshot != 0) {
        *snapshot = g_stub_snapshot;
    }
}

#else

#include <circle/device.h>
#include <circle/devicenameservice.h>
#include <circle/interrupt.h>
#include <circle/timer.h>
#include <circle/types.h>
#include <circle/usb/usbhcidevice.h>
#include <circle/usb/usbkeyboard.h>

namespace {

class CircleInputRuntime {
public:
    CircleInputRuntime()
    :
        m_timer(&m_interrupt),
        m_usb(&m_interrupt, &m_timer, TRUE),
        m_keyboard(0),
        m_removedHandler(0)
    {
        m_snapshot.ready = 0;
        m_snapshot.usb_tree_updates = 0;
        m_snapshot.key_events = 0;
        m_snapshot.keyboard_attached = 0;
        m_snapshot.last_modifiers = 0;
        for (unsigned i = 0; i < 6; ++i) {
            m_snapshot.last_raw_keys[i] = 0;
        }
    }

    boolean Initialize()
    {
#ifdef MSXBARE_CIRCLE_INPUT_SKIP_IRQ_INIT
        m_snapshot.ready = 0x10;
#else
        m_snapshot.ready = 0x01;
        if (!m_interrupt.Initialize()) {
            m_snapshot.ready = 0xE1;
            return FALSE;
        }
        m_snapshot.ready = 0x02;
        if (!m_timer.Initialize()) {
            m_snapshot.ready = 0xE2;
            return FALSE;
        }
#endif

#ifdef MSXBARE_CIRCLE_INPUT_SKIP_USB_INIT
        m_snapshot.ready = 0x20;
#else
        m_snapshot.ready = 0x03;
        if (!m_usb.Initialize()) {
            m_snapshot.ready = 0xE3;
            return FALSE;
        }
#endif

        m_snapshot.ready = 0xFF;
        return TRUE;
    }

    void Poll()
    {
#ifndef MSXBARE_CIRCLE_INPUT_SKIP_USB_INIT
        const boolean updated = m_usb.UpdatePlugAndPlay();
        if (updated) {
            ++m_snapshot.usb_tree_updates;
        }

        if (m_keyboard == 0) {
            m_keyboard = static_cast<CUSBKeyboardDevice *>(m_dns.GetDevice("ukbd1", FALSE));
            if (m_keyboard != 0) {
                m_removedHandler = m_keyboard->RegisterRemovedHandler(KeyboardRemovedHandler, this);
                m_keyboard->RegisterKeyStatusHandlerRaw(KeyStatusHandlerRaw, FALSE, this);
                m_snapshot.keyboard_attached = 1;
            }
        }

        if (m_keyboard != 0) {
            m_keyboard->UpdateLEDs();
        }
#endif
    }

    void FillSnapshot(circle_input_snapshot_t *dst) const
    {
        *dst = m_snapshot;
    }

private:
    static void KeyboardRemovedHandler(CDevice *device, void *context)
    {
        (void)device;
        CircleInputRuntime *self = static_cast<CircleInputRuntime *>(context);
        self->m_keyboard = 0;
        self->m_removedHandler = 0;
        self->m_snapshot.keyboard_attached = 0;
    }

    static void KeyStatusHandlerRaw(unsigned char modifiers, const unsigned char rawKeys[6], void *arg)
    {
        CircleInputRuntime *self = static_cast<CircleInputRuntime *>(arg);
        ++self->m_snapshot.key_events;
        self->m_snapshot.last_modifiers = modifiers;
        for (unsigned i = 0; i < 6; ++i) {
            self->m_snapshot.last_raw_keys[i] = rawKeys[i];
        }
    }

private:
    CDeviceNameService m_dns;
    CInterruptSystem m_interrupt;
    CTimer m_timer;
    CUSBHCIDevice m_usb;
    CUSBKeyboardDevice *m_keyboard;
    void *m_removedHandler;
    circle_input_snapshot_t m_snapshot;
};

static CircleInputRuntime *g_runtime;
static boolean g_initialized;

} // namespace

extern "C" int circle_input_runtime_init(void)
{
    if (g_initialized && g_runtime != 0) {
        return 1;
    }

    g_runtime = new CircleInputRuntime();
    if (!g_runtime->Initialize()) {
        g_runtime = 0;
        return 0;
    }

    g_initialized = TRUE;
    return 1;
}

extern "C" void circle_input_runtime_poll(circle_input_snapshot_t *snapshot)
{
    circle_input_snapshot_t empty = {0, 0, 0, 0, 0, {0, 0, 0, 0, 0, 0}};

    if (g_runtime == 0 || !g_initialized) {
        if (snapshot != 0) {
            *snapshot = empty;
        }
        return;
    }

    g_runtime->Poll();
    if (snapshot != 0) {
        g_runtime->FillSnapshot(snapshot);
    }
}

#endif