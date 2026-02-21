#include "mailbox.h"

#define MMIO_BASE            0x3F000000UL
#define MBOX_BASE            (MMIO_BASE + 0x0000B880)

#define MBOX_READ            ((volatile uint32_t *)(MBOX_BASE + 0x00))
#define MBOX_STATUS          ((volatile uint32_t *)(MBOX_BASE + 0x18))
#define MBOX_WRITE           ((volatile uint32_t *)(MBOX_BASE + 0x20))

#define MBOX_STATUS_FULL     0x80000000u
#define MBOX_STATUS_EMPTY    0x40000000u

int mailbox_call(uint8_t channel, volatile uint32_t *mailbox_buffer) {
    uint32_t addr = ((uint32_t)(uintptr_t)mailbox_buffer & ~0xFu) | (uint32_t)(channel & 0xFu);

    while (*MBOX_STATUS & MBOX_STATUS_FULL) {
    }
    *MBOX_WRITE = addr;

    for (;;) {
        while (*MBOX_STATUS & MBOX_STATUS_EMPTY) {
        }

        if (*MBOX_READ == addr) {
            return mailbox_buffer[1] == 0x80000000u;
        }
    }
}
