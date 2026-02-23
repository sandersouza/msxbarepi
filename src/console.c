#include "console.h"

#include "framebuffer.h"
#include "uart.h"

static int hdmi_ready;

#ifndef MSXBARE_FB_WIDTH
#define MSXBARE_FB_WIDTH 1024u
#endif

#ifndef MSXBARE_FB_HEIGHT
#define MSXBARE_FB_HEIGHT 768u
#endif

void console_init(void) {
    uart_init();

    hdmi_ready = framebuffer_init(MSXBARE_FB_WIDTH, MSXBARE_FB_HEIGHT, 32);
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
