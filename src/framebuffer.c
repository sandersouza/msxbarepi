#include "framebuffer.h"
#include "mailbox.h"

#define MBOX_CH_PROP 8

#define TAG_SET_PHYS_WH 0x00048003
#define TAG_SET_VIRT_WH 0x00048004
#define TAG_SET_VIRT_OFFSET 0x00048009
#define TAG_SET_DEPTH 0x00048005
#define TAG_SET_PIXEL_ORDER 0x00048006
#define TAG_ALLOCATE_BUFFER 0x00040001
#define TAG_GET_PITCH 0x00040008
#define TAG_LAST 0x00000000

static volatile uint32_t property_buffer[35] __attribute__((aligned(16)));

static uint32_t min_u32(uint32_t a, uint32_t b)
{
    return (a < b) ? a : b;
}

int framebuffer_init(framebuffer_info_t *fb, uint32_t width, uint32_t height)
{
    property_buffer[0] = sizeof(property_buffer);
    property_buffer[1] = 0;

    property_buffer[2] = TAG_SET_PHYS_WH;
    property_buffer[3] = 8;
    property_buffer[4] = 8;
    property_buffer[5] = width;
    property_buffer[6] = height;

    property_buffer[7] = TAG_SET_VIRT_WH;
    property_buffer[8] = 8;
    property_buffer[9] = 8;
    property_buffer[10] = width;
    property_buffer[11] = height;

    property_buffer[12] = TAG_SET_VIRT_OFFSET;
    property_buffer[13] = 8;
    property_buffer[14] = 8;
    property_buffer[15] = 0;
    property_buffer[16] = 0;

    property_buffer[17] = TAG_SET_DEPTH;
    property_buffer[18] = 4;
    property_buffer[19] = 4;
    property_buffer[20] = 32;

    property_buffer[21] = TAG_SET_PIXEL_ORDER;
    property_buffer[22] = 4;
    property_buffer[23] = 4;
    property_buffer[24] = 1;

    property_buffer[25] = TAG_ALLOCATE_BUFFER;
    property_buffer[26] = 8;
    property_buffer[27] = 8;
    property_buffer[28] = 16;
    property_buffer[29] = 0;

    property_buffer[30] = TAG_GET_PITCH;
    property_buffer[31] = 4;
    property_buffer[32] = 4;
    property_buffer[33] = 0;

    property_buffer[34] = TAG_LAST;

    if (!mailbox_call(MBOX_CH_PROP, property_buffer)) {
        return 0;
    }

    if (property_buffer[28] == 0u || property_buffer[33] == 0u) {
        return 0;
    }

    fb->width = property_buffer[5];
    fb->height = property_buffer[6];
    fb->pitch = property_buffer[33];
    fb->is_rgb = property_buffer[24];
    fb->size = property_buffer[29];
    fb->pixels = (uint8_t *)((uintptr_t)(property_buffer[28] & 0x3FFFFFFFu));
    return 1;
}

void framebuffer_fill(framebuffer_info_t *fb, uint32_t color)
{
    uint32_t y;
    uint32_t x;

    for (y = 0; y < fb->height; ++y) {
        uint32_t *row = (uint32_t *)(fb->pixels + (y * fb->pitch));
        for (x = 0; x < fb->width; ++x) {
            row[x] = color;
        }
    }
}

void framebuffer_draw_rect(framebuffer_info_t *fb, uint32_t x, uint32_t y, uint32_t w, uint32_t h, uint32_t color)
{
    uint32_t yy;
    const uint32_t x_end = min_u32(x + w, fb->width);
    const uint32_t y_end = min_u32(y + h, fb->height);

    if (x >= fb->width || y >= fb->height || w == 0u || h == 0u) {
        return;
    }

    for (yy = y; yy < y_end; ++yy) {
        uint32_t *row = (uint32_t *)(fb->pixels + (yy * fb->pitch));
        uint32_t xx;
        for (xx = x; xx < x_end; ++xx) {
            row[xx] = color;
        }
    }
}