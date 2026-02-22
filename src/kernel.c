#include "console.h"
#include "initramfs.h"
#include "mmu.h"
#include "msx_core.h"
#include "platform.h"
#include "rom_loader.h"

void kernel_main(unsigned long dtb_ptr) {
    const unsigned char *rom_data = 0;
    unsigned int rom_size = 0;

    console_init();
    platform_init();

#ifdef MSXBARE_ENABLE_MMU
#ifdef MSXBARE_DEBUG_LOGS
    console_puts("[dbg] MMU/cache: habilitando...\n");
#endif
    mmu_enable_identity_map();
#ifdef MSXBARE_DEBUG_LOGS
    console_puts("[dbg] MMU/cache: OK\n");
#endif
#endif

    console_puts("MSXBare boot\n");
    console_puts("M1.1 - Core MSX1\n");

    if (rom_loader_from_initramfs((unsigned long)dtb_ptr, &rom_data, &rom_size)) {
        console_puts("Initramfs carregado via SD\n");
        initramfs_mount(rom_data, rom_size);
    } else {
        console_puts("Initramfs nao encontrado\n");
    }

#ifdef MSXBARE_DEBUG_LOGS
    console_puts("[dbg] Chamando msx_core_init...\n");
#endif
    if (!msx_core_init(rom_data, rom_size)) {
        console_puts("[M1.1] Falha na inicializacao do core. Verifique BIOS/ROM no initramfs.\n");
        while (1) {
            platform_delay_ms(1000);
        }
    }

    msx_core_run();
}
