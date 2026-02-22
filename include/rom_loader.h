#ifndef ROM_LOADER_H
#define ROM_LOADER_H

#include <stdint.h>

int rom_loader_from_initramfs(uint64_t dtb_ptr, const uint8_t **rom_data, uint32_t *rom_size);

#endif
