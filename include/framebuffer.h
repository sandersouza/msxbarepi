#ifndef FRAMEBUFFER_H
#define FRAMEBUFFER_H

#include <stdint.h>

int framebuffer_init(uint32_t width, uint32_t height, uint32_t depth);
void framebuffer_clear(uint32_t rgb);
void framebuffer_fill_rect(uint32_t x, uint32_t y, uint32_t w, uint32_t h, uint32_t rgb);
void framebuffer_putc(char c);
void framebuffer_puts(const char *s);
void framebuffer_draw_text_at(uint32_t x, uint32_t y, const char *s);
void framebuffer_blit_rgb565(const uint16_t *src, uint32_t src_w, uint32_t src_h, uint32_t bg_rgb);

#endif
