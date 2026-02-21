#include "console.h"

#include "framebuffer.h"
#include "uart.h"

static int hdmi_ready;

void console_init(void) {
    uart_init();

    hdmi_ready = framebuffer_init(1024, 768, 32);
    if (hdmi_ready) {
        framebuffer_clear(0x00000000u);
    }
}

void console_puts(const char *s) {
    if (hdmi_ready) {
        framebuffer_puts(s);
    }
    uart_puts(s);
}
