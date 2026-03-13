#ifndef MSXBARE_USB_HID_KEYBOARD_H
#define MSXBARE_USB_HID_KEYBOARD_H

#include <circle/devicenameservice.h>
#include <circle/logger.h>
#include <circle/types.h>
#include <circle/usb/usbkeyboard.h>

class CUsbHidKeyboard
{
public:
	CUsbHidKeyboard(void);

	boolean AttachIfAvailable(CDeviceNameService &device_name_service,
				  CLogger &logger,
				  TKeyPressedHandler *key_pressed_handler);
	boolean IsAttached(void) const;

	void UpdateLEDs(void);

	boolean ConsumeLatest(unsigned char *modifiers, unsigned char raw_keys[6]);
	boolean ConsumeRemovedEvent(void);

private:
	static void KeyStatusRawHandler(unsigned char modifiers,
					const unsigned char raw_keys[6],
					void *context);
	static void KeyboardRemovedHandler(CDevice *device, void *context);

private:
	struct THidRawReport
	{
		unsigned char modifiers;
		unsigned char raw_keys[6];
	};

	static const unsigned kReportQueueSize = 16u;

	CUSBKeyboardDevice *m_Keyboard;
	void *m_KeyboardRemovedHandle;

	volatile unsigned m_ReportWritePos;
	volatile unsigned m_ReportReadPos;
	volatile THidRawReport m_ReportQueue[kReportQueueSize];
	volatile boolean m_RemovedEvent;
};

#endif
