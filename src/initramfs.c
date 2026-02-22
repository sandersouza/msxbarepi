#include "initramfs.h"

#include <stddef.h>
#include <stdint.h>
#include <string.h>

#define CPIO_MAX_FILES 64

typedef struct {
    const char *name;
    uint32_t name_len;
    const uint8_t *data;
    uint32_t size;
} cpio_file_t;

static const uint8_t *g_data;
static uint32_t g_size;
static cpio_file_t g_files[CPIO_MAX_FILES];
static uint32_t g_file_count;

static uint32_t parse_hex8(const uint8_t *p) {
    uint32_t v = 0;
    for (int i = 0; i < 8; i++) {
        uint8_t c = p[i];
        uint32_t n;
        if (c >= '0' && c <= '9') n = (uint32_t)(c - '0');
        else if (c >= 'a' && c <= 'f') n = 10u + (uint32_t)(c - 'a');
        else if (c >= 'A' && c <= 'F') n = 10u + (uint32_t)(c - 'A');
        else return 0;
        v = (v << 4) | n;
    }
    return v;
}

static uint32_t align4(uint32_t v) {
    return (v + 3u) & ~3u;
}

static int streqn(const char *a, const char *b, uint32_t blen) {
    uint32_t i = 0;
    for (; i < blen && b[i] != '\0'; i++) {
        if (a[i] != b[i]) return 0;
    }
    return (a[i] == '\0' && i == blen);
}

void initramfs_mount(const uint8_t *data, uint32_t size) {
    g_data = data;
    g_size = size;
    g_file_count = 0;

    if (data == 0 || size < 110) {
        return;
    }

    uint32_t off = 0;
    while (off + 110u <= size && g_file_count < CPIO_MAX_FILES) {
        const uint8_t *h = data + off;
        if (memcmp(h, "070701", 6) != 0 && memcmp(h, "070702", 6) != 0) {
            break;
        }

        uint32_t namesize = parse_hex8(h + 94);
        uint32_t filesize = parse_hex8(h + 54);
        uint32_t header_end = off + 110u;
        uint32_t name_off = header_end;
        uint32_t data_off = align4(name_off + namesize);

        if (name_off + namesize > size || data_off + filesize > size || namesize == 0) {
            break;
        }

        const char *name = (const char *)(data + name_off);
        uint32_t name_len = namesize - 1u;

        if (name_len == 11 && memcmp(name, "TRAILER!!!", 11) == 0) {
            break;
        }

        g_files[g_file_count].name = name;
        g_files[g_file_count].name_len = name_len;
        g_files[g_file_count].data = data + data_off;
        g_files[g_file_count].size = filesize;
        g_file_count++;

        off = align4(data_off + filesize);
    }
}

int initramfs_find(const char *path, initramfs_file_t *out) {
    if (out == 0 || path == 0) {
        return 0;
    }

    out->data = 0;
    out->size = 0;

    for (uint32_t i = 0; i < g_file_count; i++) {
        const cpio_file_t *f = &g_files[i];
        if (streqn(path, f->name, f->name_len)) {
            out->data = f->data;
            out->size = f->size;
            return 1;
        }

        const char *slash = f->name;
        for (uint32_t j = 0; j < f->name_len; j++) {
            if (f->name[j] == '/') slash = f->name + j + 1;
        }
        uint32_t base_len = (uint32_t)(f->name + f->name_len - slash);
        if (streqn(path, slash, base_len)) {
            out->data = f->data;
            out->size = f->size;
            return 1;
        }
    }

    return 0;
}
