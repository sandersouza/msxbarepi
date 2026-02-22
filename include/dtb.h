#ifndef DTB_H
#define DTB_H

#include <stdint.h>

typedef struct {
    const uint8_t *start;
    uint32_t size;
} initrd_info_t;

int dtb_get_initrd(uint64_t dtb_ptr, initrd_info_t *out);

#endif
