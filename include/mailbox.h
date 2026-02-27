#ifndef MSXBARE_MAILBOX_H
#define MSXBARE_MAILBOX_H

#include <stdint.h>

int mailbox_call(uint8_t channel, volatile uint32_t *buffer);

#endif