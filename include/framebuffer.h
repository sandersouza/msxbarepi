#ifndef FRAMEBUFFER_H
#define FRAMEBUFFER_H

#include <stdint.h>

int framebuffer_init(uint32_t width, uint32_t height, uint32_t depth);
void framebuffer_clear(uint32_t rgb);
void framebuffer_putc(char c);
void framebuffer_puts(const char *s);

#endif
