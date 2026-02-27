#include "common.h"
#include "mailbox.h"

#define MAILBOX_BASE (MMIO_BASE + 0xB880)
#define MAILBOX_READ (MAILBOX_BASE + 0x00)
#define MAILBOX_STATUS (MAILBOX_BASE + 0x18)
#define MAILBOX_WRITE (MAILBOX_BASE + 0x20)

#define MAILBOX_EMPTY (1u << 30)
#define MAILBOX_FULL (1u << 31)

int mailbox_call(uint8_t channel, volatile uint32_t *buffer)
{
    uint32_t request;

    request = ((uint32_t)(uintptr_t)buffer & ~0xFu) | (channel & 0xFu);

    while (mmio_read(MAILBOX_STATUS) & MAILBOX_FULL) {
    }
    mmio_write(MAILBOX_WRITE, request);

    for (;;) {
        while (mmio_read(MAILBOX_STATUS) & MAILBOX_EMPTY) {
        }

        if (mmio_read(MAILBOX_READ) == request) {
            return buffer[1] == 0x80000000u;
        }
    }
}