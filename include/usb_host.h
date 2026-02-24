#ifndef USB_HOST_H
#define USB_HOST_H

#include <stdint.h>

typedef struct {
    uint8_t init_attempted;
    uint8_t init_ok;
    uint8_t controller_detected;
    uint8_t hcd_power_on_ok;
    uint8_t host_mode;
    uint8_t port_powered;
    uint8_t device_present;
    uint8_t port_enabled;
    uint8_t port_speed;
    uint8_t hid_keyboard_present;
    uint8_t hid_gamepad_present;
    uint8_t ep0_probe_started;
    uint8_t ep0_setup_ok;
    uint8_t ep0_data_ok;
    uint8_t ep0_status_ok;
    uint8_t ep0_desc_valid;
    uint8_t ep0_max_packet_size0;
    uint8_t ep0_dev_class;
    uint8_t ep0_set_address_ok;
    uint8_t ep0_desc18_ok;
    uint8_t ep0_assigned_address;
    uint16_t ep0_vendor_id16;
    uint16_t ep0_product_id16;
    uint32_t vendor_id;
    uint32_t hw_cfg2;
    uint32_t gintsts_raw;
    uint32_t hprt_raw;
    uint32_t gusbcfg_raw;
    uint32_t gahbcfg_raw;
} usb_host_status_t;

void usb_host_init(void);
void usb_host_poll(void);
void usb_host_get_status(usb_host_status_t *out_status);

#endif
