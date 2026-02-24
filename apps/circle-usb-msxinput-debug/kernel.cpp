#include "kernel.h"
#include <msx_hid_bridge.h>

#include <circle/string.h>
#include <assert.h>

static const char FromKernel[] = "kernel";
CKernel *CKernel::s_pThis = 0;

CKernel::CKernel(void)
: m_Screen(m_Options.GetWidth(), m_Options.GetHeight())
, m_Timer(&m_Interrupt)
, m_Logger(m_Options.GetLogLevel(), &m_Timer)
, m_USBHCI(&m_Interrupt, &m_Timer, TRUE)
, m_pKeyboard(0)
, m_ShutdownMode(ShutdownNone)
, m_LastSeq(0)
{
    s_pThis = this;
    m_ActLED.Blink(5);
}

CKernel::~CKernel(void) { s_pThis = 0; }

boolean CKernel::Initialize(void)
{
    boolean ok = TRUE;
    if (ok) ok = m_Screen.Initialize();
    if (ok) ok = m_Serial.Initialize(115200);
    if (ok) {
        CDevice *pTarget = m_DeviceNameService.GetDevice(m_Options.GetLogDevice(), FALSE);
        if (pTarget == 0) pTarget = &m_Screen;
        ok = m_Logger.Initialize(pTarget);
    }
    if (ok) ok = m_Interrupt.Initialize();
    if (ok) ok = m_Timer.Initialize();
    if (ok) ok = m_USBHCI.Initialize();
    if (ok) msx_hid_bridge_init();
    return ok;
}

void CKernel::LogBridgeStateIfChanged(void)
{
    msx_hid_bridge_state_t st;
    msx_hid_bridge_get_state(&st);
    if (st.sequence == m_LastSeq) return;
    m_LastSeq = st.sequence;

    CString msg;
    msg.Format("HID mod=%02X keys=%02X %02X %02X %02X %02X %02X joy=%02X",
               (unsigned)st.modifiers,
               (unsigned)st.keys[0], (unsigned)st.keys[1], (unsigned)st.keys[2],
               (unsigned)st.keys[3], (unsigned)st.keys[4], (unsigned)st.keys[5],
               (unsigned)st.joystick_bits);
    m_Logger.Write(FromKernel, LogNotice, msg);
}

TShutdownMode CKernel::Run(void)
{
    m_Logger.Write(FromKernel, LogNotice, "Circle USB HID -> MSX bridge debug");
    m_Logger.Write(FromKernel, LogNotice, "Attach keyboard / receiver and press keys");

    for (unsigned nCount = 0; m_ShutdownMode == ShutdownNone; nCount++) {
        boolean updated = m_USBHCI.UpdatePlugAndPlay();

        if (updated && m_pKeyboard == 0) {
            m_pKeyboard = (CUSBKeyboardDevice *) m_DeviceNameService.GetDevice("ukbd1", FALSE);
            if (m_pKeyboard != 0) {
                m_pKeyboard->RegisterRemovedHandler(KeyboardRemovedHandler);
                m_pKeyboard->RegisterShutdownHandler(ShutdownHandler);
                m_pKeyboard->RegisterKeyStatusHandlerRaw(KeyStatusHandlerRaw);
                m_Logger.Write(FromKernel, LogNotice, "USB keyboard detected (raw HID mode)");
            }
        }

        if (m_pKeyboard != 0) {
            m_pKeyboard->UpdateLEDs();
        }

        LogBridgeStateIfChanged();
        m_Screen.Rotor(0, nCount);
        m_Timer.MsDelay(5);
    }

    return m_ShutdownMode;
}

void CKernel::KeyStatusHandlerRaw(unsigned char ucModifiers, const unsigned char RawKeys[6])
{
    assert(s_pThis != 0);
    msx_hid_bridge_update_raw((uint8_t)ucModifiers, RawKeys);
}

void CKernel::ShutdownHandler(void)
{
    assert(s_pThis != 0);
    s_pThis->m_ShutdownMode = ShutdownReboot;
}

void CKernel::KeyboardRemovedHandler(CDevice *, void *)
{
    assert(s_pThis != 0);
    CLogger::Get()->Write(FromKernel, LogDebug, "Keyboard removed");
    s_pThis->m_pKeyboard = 0;
}
