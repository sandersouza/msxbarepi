#include "framebuffer.h"
#include "mailbox.h"
#include "font8x8_basic.h"

#include <stdint.h>

static volatile uint32_t mbox[36] __attribute__((aligned(16)));

static uint32_t fb_width;
static uint32_t fb_height;
static uint32_t fb_pitch;
static uint32_t fb_depth;
static volatile uint8_t *fb_ptr;

static uint32_t cursor_x;
static uint32_t cursor_y;

static uint32_t fg_color = 0x00FFFFFFu;
static uint32_t bg_color = 0x00000000u;

static void draw_pixel(uint32_t x, uint32_t y, uint32_t rgb) {
    if (x >= fb_width || y >= fb_height || fb_ptr == 0) {
        return;
    }

    volatile uint32_t *pixel = (volatile uint32_t *)(fb_ptr + y * fb_pitch + x * 4u);
    *pixel = rgb;
}

static void draw_char_at(uint32_t x, uint32_t y, char c) {
    uint8_t ch = (uint8_t)c;
    const uint8_t *glyph = font8x8_basic[ch & 0x7Fu];

    for (uint32_t row = 0; row < 8; row++) {
        uint8_t bits = glyph[row];
        for (uint32_t col = 0; col < 8; col++) {
            uint32_t color = (bits & (1u << (7u - col))) ? fg_color : bg_color;
            draw_pixel(x + col, y + row, color);
        }
    }
}

int framebuffer_init(uint32_t width, uint32_t height, uint32_t depth) {
    mbox[0] = 35u * 4u;
    mbox[1] = 0u;

    mbox[2] = 0x00048003; mbox[3] = 8; mbox[4] = 8; mbox[5] = width;  mbox[6] = height;
    mbox[7] = 0x00048004; mbox[8] = 8; mbox[9] = 8; mbox[10] = width; mbox[11] = height;
    mbox[12] = 0x00048009; mbox[13] = 8; mbox[14] = 8; mbox[15] = 0; mbox[16] = 0;
    mbox[17] = 0x00048005; mbox[18] = 4; mbox[19] = 4; mbox[20] = depth;
    mbox[21] = 0x00048006; mbox[22] = 4; mbox[23] = 4; mbox[24] = 1;
    mbox[25] = 0x00040001; mbox[26] = 8; mbox[27] = 4; mbox[28] = 16; mbox[29] = 0;
    mbox[30] = 0x00040008; mbox[31] = 4; mbox[32] = 4; mbox[33] = 0;
    mbox[34] = 0;

    if (!mailbox_call(8, mbox)) {
        return 0;
    }

    if (mbox[20] != depth || mbox[28] == 0 || mbox[33] == 0) {
        return 0;
    }

    fb_width = width;
    fb_height = height;
    fb_depth = depth;
    fb_pitch = mbox[33];
    fb_ptr = (volatile uint8_t *)(uintptr_t)(mbox[28] & 0x3FFFFFFFu);

    cursor_x = 0;
    cursor_y = 0;
    framebuffer_clear(bg_color);

    return fb_depth == 32;
}

void framebuffer_clear(uint32_t rgb) {
    if (fb_ptr == 0) {
        return;
    }

    bg_color = rgb;
    for (uint32_t y = 0; y < fb_height; y++) {
        for (uint32_t x = 0; x < fb_width; x++) {
            draw_pixel(x, y, rgb);
        }
    }
    cursor_x = 0;
    cursor_y = 0;
}

void framebuffer_putc(char c) {
    if (fb_ptr == 0) {
        return;
    }

    if (c == '\r') {
        cursor_x = 0;
        return;
    }

    if (c == '\n') {
        cursor_x = 0;
        cursor_y += 8;
    } else if (c == '\t') {
        cursor_x += 8 * 4;
    } else {
        draw_char_at(cursor_x, cursor_y, c);
        cursor_x += 8;
    }

    if (cursor_x + 8 > fb_width) {
        cursor_x = 0;
        cursor_y += 8;
    }

    if (cursor_y + 8 > fb_height) {
        framebuffer_clear(bg_color);
    }
}

void framebuffer_puts(const char *s) {
    while (*s) {
        framebuffer_putc(*s++);
    }
}
