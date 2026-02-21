#include "console.h"

void kernel_main(void) {
    console_init();

    console_puts("MSXBare boot\n");
    console_puts("Hello World via HDMI on Raspberry Pi 3B\n");

    while (1) {
        __asm__ volatile("wfe");
    }
}
