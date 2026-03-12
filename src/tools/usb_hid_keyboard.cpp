#include "usb_hid_keyboard.h"

static const char FromUsbHidKeyboard[] = "usb-hid-kbd";

CUsbHidKeyboard::CUsbHidKeyboard(void)
:	m_Keyboard(0),
	m_KeyboardRemovedHandle(0),
	m_PendingSeq(0u),
	m_PendingModifiers(0u),
	m_PendingRawKeys{0u, 0u, 0u, 0u, 0u, 0u},
	m_ProcessedSeq(0u),
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

	const unsigned pending_seq = m_PendingSeq;
	if (pending_seq == m_ProcessedSeq || (pending_seq & 1u))
	{
		return FALSE;
	}

	unsigned char pending_modifiers = m_PendingModifiers;
	unsigned char pending_raw[6];
	for (unsigned i = 0u; i < 6u; ++i)
	{
		pending_raw[i] = m_PendingRawKeys[i];
	}

	unsigned seq_a = 0u;
	unsigned seq_b = 0u;
	do
	{
		seq_a = m_PendingSeq;
		if (seq_a & 1u)
		{
			continue;
		}

		pending_modifiers = m_PendingModifiers;
		for (unsigned i = 0u; i < 6u; ++i)
		{
			pending_raw[i] = m_PendingRawKeys[i];
		}
		seq_b = m_PendingSeq;
	}
	while (seq_a != seq_b || (seq_b & 1u));

	m_ProcessedSeq = seq_b;
	*modifiers = pending_modifiers;
	for (unsigned i = 0u; i < 6u; ++i)
	{
		raw_keys[i] = pending_raw[i];
	}
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
	self->m_PendingModifiers = 0u;
	for (unsigned i = 0u; i < 6u; ++i)
	{
		self->m_PendingRawKeys[i] = 0u;
	}
	self->m_ProcessedSeq = self->m_PendingSeq;
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
	self->m_PendingSeq++;
	self->m_PendingModifiers = modifiers;
	for (unsigned i = 0u; i < 6u; ++i)
	{
		self->m_PendingRawKeys[i] = raw_keys[i];
	}
	self->m_PendingSeq++;
}
