#ifndef MAILBOX_H
#define MAILBOX_H

#include <stdint.h>

int mailbox_call(uint8_t channel, volatile uint32_t *mailbox_buffer);

#endif
