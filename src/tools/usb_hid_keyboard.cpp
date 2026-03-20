#include "usb_hid_keyboard.h"

static const char FromUsbHidKeyboard[] = "usb-hid-kbd";

CUsbHidKeyboard::CUsbHidKeyboard(void)
:	m_Keyboard(0),
	m_KeyboardRemovedHandle(0),
	m_ReportWritePos(0u),
	m_ReportReadPos(0u),
	m_ReportQueue{},
	m_RemovedEvent(FALSE)
{
}

boolean CUsbHidKeyboard::AttachIfAvailable(CDeviceNameService &device_name_service,
					    CLogger &logger,
					    TKeyPressedHandler *key_pressed_handler)
{
	if (m_Keyboard != 0)
	{
		return FALSE;
	}

	CUSBKeyboardDevice *keyboard =
		(CUSBKeyboardDevice *) device_name_service.GetDevice("ukbd1", FALSE);
	if (keyboard == 0)
	{
		return FALSE;
	}

	m_Keyboard = keyboard;
	m_KeyboardRemovedHandle = m_Keyboard->RegisterRemovedHandler(KeyboardRemovedHandler, this);
	m_Keyboard->RegisterKeyStatusHandlerRaw(KeyStatusRawHandler, TRUE, this);
	if (key_pressed_handler != 0)
	{
		m_Keyboard->RegisterKeyPressedHandler(key_pressed_handler);
	}

	logger.Write(FromUsbHidKeyboard, LogNotice, "USB keyboard attached");
	return TRUE;
}

boolean CUsbHidKeyboard::IsAttached(void) const
{
	return m_Keyboard != 0 ? TRUE : FALSE;
}

void CUsbHidKeyboard::UpdateLEDs(void)
{
	if (m_Keyboard != 0)
	{
		m_Keyboard->UpdateLEDs();
	}
}

boolean CUsbHidKeyboard::ConsumeLatest(unsigned char *modifiers, unsigned char raw_keys[6])
{
	if (modifiers == 0 || raw_keys == 0)
	{
		return FALSE;
	}

	const unsigned read_pos = m_ReportReadPos;
	const unsigned write_pos = m_ReportWritePos;
	if (read_pos == write_pos)
	{
		return FALSE;
	}

	*modifiers = m_ReportQueue[read_pos].modifiers;
	for (unsigned i = 0u; i < 6u; ++i)
	{
		raw_keys[i] = m_ReportQueue[read_pos].raw_keys[i];
	}

	const unsigned next_read = (read_pos + 1u) % kReportQueueSize;
	m_ReportReadPos = next_read;
	return TRUE;
}

boolean CUsbHidKeyboard::ConsumeRemovedEvent(void)
{
	if (!m_RemovedEvent)
	{
		return FALSE;
	}

	m_RemovedEvent = FALSE;
	return TRUE;
}

void CUsbHidKeyboard::KeyboardRemovedHandler(CDevice *device, void *context)
{
	(void) device;
	CUsbHidKeyboard *self = (CUsbHidKeyboard *) context;
	if (self == 0)
	{
		return;
	}

	self->m_Keyboard = 0;
	self->m_KeyboardRemovedHandle = 0;
	self->m_ReportReadPos = 0u;
	self->m_ReportWritePos = 0u;
	self->m_RemovedEvent = TRUE;
}

void CUsbHidKeyboard::KeyStatusRawHandler(unsigned char modifiers,
					  const unsigned char raw_keys[6],
					  void *context)
{
	if (context == 0 || raw_keys == 0)
	{
		return;
	}

	CUsbHidKeyboard *self = (CUsbHidKeyboard *) context;
	const unsigned write_pos = self->m_ReportWritePos;
	const unsigned next_write = (write_pos + 1u) % kReportQueueSize;

	/* Full queue: drop the oldest report to keep latest transitions flowing. */
	if (next_write == self->m_ReportReadPos)
	{
		self->m_ReportReadPos = (self->m_ReportReadPos + 1u) % kReportQueueSize;
	}

	self->m_ReportQueue[write_pos].modifiers = modifiers;
	for (unsigned i = 0u; i < 6u; ++i)
	{
		self->m_ReportQueue[write_pos].raw_keys[i] = raw_keys[i];
	}
	self->m_ReportWritePos = next_write;
}
