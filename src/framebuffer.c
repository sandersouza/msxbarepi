#include "framebuffer.h"
#include "mailbox.h"
#include "font8x8_basic.h"

#include <stdint.h>

static volatile uint32_t mbox[36] __attribute__((aligned(16)));

static uint32_t fb_width;
static uint32_t fb_height;
static uint32_t fb_pitch;
static uint32_t fb_depth;
static uint32_t fb_rgb_order = 1;
static volatile uint8_t *fb_ptr;

static uint32_t cursor_x;
static uint32_t cursor_y;

static uint32_t fg_color = 0x00FFFFFFu;
static uint32_t bg_color = 0x00000000u;
static uint32_t rgb565_lut[65536];
static uint32_t rgb565_lut_ready;

static inline uint32_t encode_fb_rgb(uint32_t rgb)
{
    /* Mailbox pixel order is byte order in framebuffer memory.
     * On little-endian CPU, integer packing must be adjusted:
     * RGB bytes -> 0x00BBGGRR
     * BGR bytes -> 0x00RRGGBB
     */
    if (fb_rgb_order) {
        return ((rgb & 0x00FF0000u) >> 16) | (rgb & 0x0000FF00u) | ((rgb & 0x000000FFu) << 16);
    }
    return rgb;
}

static void draw_pixel(uint32_t x, uint32_t y, uint32_t rgb) {
    if (x >= fb_width || y >= fb_height || fb_ptr == 0) {
        return;
    }

    volatile uint32_t *pixel = (volatile uint32_t *)(fb_ptr + y * fb_pitch + x * 4u);
    *pixel = encode_fb_rgb(rgb);
}

static void fill_rect32(uint32_t x, uint32_t y, uint32_t w, uint32_t h, uint32_t rgb) {
    if (fb_ptr == 0 || w == 0 || h == 0) {
        return;
    }
    if (x >= fb_width || y >= fb_height) {
        return;
    }
    if (x + w > fb_width) {
        w = fb_width - x;
    }
    if (y + h > fb_height) {
        h = fb_height - y;
    }

    for (uint32_t yy = 0; yy < h; yy++) {
        volatile uint32_t *row = (volatile uint32_t *)(fb_ptr + (y + yy) * fb_pitch + x * 4u);
        for (uint32_t xx = 0; xx < w; xx++) {
            row[xx] = encode_fb_rgb(rgb);
        }
    }
}

static void init_rgb565_lut(void) {
    if (rgb565_lut_ready) {
        return;
    }
    for (uint32_t c = 0; c < 65536u; c++) {
        uint32_t r = ((c >> 11) & 0x1Fu) * 255u / 31u;
        uint32_t g = ((c >> 5) & 0x3Fu) * 255u / 63u;
        uint32_t b = (c & 0x1Fu) * 255u / 31u;
        rgb565_lut[c] = encode_fb_rgb((r << 16) | (g << 8) | b);
    }
    rgb565_lut_ready = 1;
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
    fb_rgb_order = (mbox[24] == 1u) ? 1u : 0u;
    fb_pitch = mbox[33];
    fb_ptr = (volatile uint8_t *)(uintptr_t)(mbox[28] & 0x3FFFFFFFu);
    rgb565_lut_ready = 0;

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

void framebuffer_fill_rect(uint32_t x, uint32_t y, uint32_t w, uint32_t h, uint32_t rgb) {
    fill_rect32(x, y, w, h, rgb);
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

void framebuffer_draw_text_at(uint32_t x, uint32_t y, const char *s) {
    if (fb_ptr == 0 || s == 0) {
        return;
    }
    while (*s) {
        draw_char_at(x, y, *s++);
        x += 8u;
        if (x + 8u > fb_width) {
            break;
        }
    }
}

void framebuffer_blit_rgb565(const uint16_t *src, uint32_t src_w, uint32_t src_h, uint32_t bg_rgb) {
    if (fb_ptr == 0 || src == 0 || src_w == 0 || src_h == 0) {
        return;
    }

    static uint32_t border_valid;
    static uint32_t cached_src_w;
    static uint32_t cached_src_h;
    static uint32_t cached_scale;
    static uint32_t cached_off_x;
    static uint32_t cached_off_y;
    static uint32_t cached_out_w;
    static uint32_t cached_out_h;
    static uint32_t cached_bg_rgb;

    uint32_t scale_x = fb_width / src_w;
    uint32_t scale_y = fb_height / src_h;
    uint32_t scale = scale_x < scale_y ? scale_x : scale_y;
    if (scale == 0) {
        scale = 1;
    }

    uint32_t out_w = src_w * scale;
    uint32_t out_h = src_h * scale;
    uint32_t off_x = (fb_width - out_w) / 2;
    uint32_t off_y = (fb_height - out_h) / 2;

    if (!border_valid ||
        cached_src_w != src_w || cached_src_h != src_h ||
        cached_scale != scale ||
        cached_off_x != off_x || cached_off_y != off_y ||
        cached_out_w != out_w || cached_out_h != out_h ||
        cached_bg_rgb != bg_rgb) {
        fill_rect32(0, 0, fb_width, off_y, bg_rgb);
        fill_rect32(0, off_y + out_h, fb_width, fb_height - (off_y + out_h), bg_rgb);
        fill_rect32(0, off_y, off_x, out_h, bg_rgb);
        fill_rect32(off_x + out_w, off_y, fb_width - (off_x + out_w), out_h, bg_rgb);

        cached_src_w = src_w;
        cached_src_h = src_h;
        cached_scale = scale;
        cached_off_x = off_x;
        cached_off_y = off_y;
        cached_out_w = out_w;
        cached_out_h = out_h;
        cached_bg_rgb = bg_rgb;
        border_valid = 1;
    }

    if (scale == 2) {
        init_rgb565_lut();
        for (uint32_t y = 0; y < src_h; y++) {
            uint32_t py = off_y + (y << 1);
            const uint16_t *src_row = src + y * src_w;
            volatile uint32_t *row0 = (volatile uint32_t *)(fb_ptr + py * fb_pitch + off_x * 4u);
            volatile uint32_t *row1 = (volatile uint32_t *)(fb_ptr + (py + 1u) * fb_pitch + off_x * 4u);

            for (uint32_t x = 0; x < src_w; x++) {
                uint32_t rgb = rgb565_lut[src_row[x]];
                uint32_t dx = x << 1;
                row0[dx] = rgb;
                row0[dx + 1u] = rgb;
                row1[dx] = rgb;
                row1[dx + 1u] = rgb;
            }
        }
        return;
    }

    if (scale == 3) {
        init_rgb565_lut();
        for (uint32_t y = 0; y < src_h; y++) {
            uint32_t py = off_y + y * 3u;
            const uint16_t *src_row = src + y * src_w;
            volatile uint32_t *row0 = (volatile uint32_t *)(fb_ptr + py * fb_pitch + off_x * 4u);
            volatile uint32_t *row1 = (volatile uint32_t *)(fb_ptr + (py + 1u) * fb_pitch + off_x * 4u);
            volatile uint32_t *row2 = (volatile uint32_t *)(fb_ptr + (py + 2u) * fb_pitch + off_x * 4u);

            for (uint32_t x = 0; x < src_w; x++) {
                uint32_t rgb = rgb565_lut[src_row[x]];
                uint32_t dx = x * 3u;
                row0[dx] = rgb;
                row0[dx + 1u] = rgb;
                row0[dx + 2u] = rgb;
                row1[dx] = rgb;
                row1[dx + 1u] = rgb;
                row1[dx + 2u] = rgb;
                row2[dx] = rgb;
                row2[dx + 1u] = rgb;
                row2[dx + 2u] = rgb;
            }
        }
        return;
    }

    for (uint32_t y = 0; y < src_h; y++) {
        uint32_t py = off_y + y * scale;
        for (uint32_t x = 0; x < src_w; x++) {
            uint16_t c = src[y * src_w + x];
            uint32_t rgb;
            if (rgb565_lut_ready) {
                rgb = rgb565_lut[c];
            } else {
                uint32_t r = (uint32_t)((c >> 11) & 0x1Fu) * 255u / 31u;
                uint32_t g = (uint32_t)((c >> 5) & 0x3Fu) * 255u / 63u;
                uint32_t b = (uint32_t)(c & 0x1Fu) * 255u / 31u;
                rgb = encode_fb_rgb((r << 16) | (g << 8) | b);
            }

            uint32_t px = off_x + x * scale;
            for (uint32_t dy = 0; dy < scale; dy++) {
                volatile uint32_t *row = (volatile uint32_t *)(fb_ptr + (py + dy) * fb_pitch + px * 4u);
                for (uint32_t dx = 0; dx < scale; dx++) row[dx] = rgb;
            }
        }
    }
}
