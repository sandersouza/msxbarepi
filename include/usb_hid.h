#ifndef USB_HID_H
#define USB_HID_H

#include <stdint.h>

typedef struct {
    uint8_t modifiers;
    uint8_t keys[6]; /* HID boot keyboard report slots */
} usb_hid_keyboard_report_t;

void usb_hid_init(void);
void usb_hid_poll(void);
int usb_hid_keyboard_has_report(void);
int usb_hid_keyboard_read_report(usb_hid_keyboard_report_t *out_report);

#endif
