#include "rom_loader.h"

#include "dtb.h"

int rom_loader_from_initramfs(uint64_t dtb_ptr, const uint8_t **rom_data, uint32_t *rom_size) {
    initrd_info_t info;

    if (rom_data == 0 || rom_size == 0) {
        return 0;
    }

    *rom_data = 0;
    *rom_size = 0;

    if (!dtb_get_initrd(dtb_ptr, &info)) {
        return 0;
    }

    if (info.start == 0 || info.size < 16u) {
        return 0;
    }

    *rom_data = info.start;
    *rom_size = info.size;
    return 1;
}
