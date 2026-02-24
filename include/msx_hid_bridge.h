#ifndef MSX_HID_BRIDGE_H
#define MSX_HID_BRIDGE_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    uint8_t modifiers;
    uint8_t keys[6];
    uint16_t joystick_bits;
    uint32_t sequence;
} msx_hid_bridge_state_t;

/* Shared bridge state used by Circle USB/HID spikes and future msxbare integration.
 * Reference for joystick bit layout: third_party/fmsx/fMSX/MSX.h (JST_*).
 */
void msx_hid_bridge_init(void);
void msx_hid_bridge_update_raw(uint8_t modifiers, const uint8_t keys[6]);
void msx_hid_bridge_get_state(msx_hid_bridge_state_t *out_state);

#ifdef __cplusplus
}
#endif

#endif
