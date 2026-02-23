#include "dtb.h"

#include <stdint.h>

#define FDT_MAGIC               0xD00DFEEDu
#define FDT_BEGIN_NODE          0x1u
#define FDT_END_NODE            0x2u
#define FDT_PROP                0x3u
#define FDT_END                 0x9u

#define MAX_PROP_LEN            (1u << 20)

typedef struct {
    uint32_t magic;
    uint32_t totalsize;
    uint32_t off_dt_struct;
    uint32_t off_dt_strings;
    uint32_t off_mem_rsvmap;
    uint32_t version;
    uint32_t last_comp_version;
    uint32_t boot_cpuid_phys;
    uint32_t size_dt_strings;
    uint32_t size_dt_struct;
} fdt_header_t;

static uint32_t be32_to_cpu(uint32_t x) {
    return ((x & 0x000000FFu) << 24) |
           ((x & 0x0000FF00u) << 8)  |
           ((x & 0x00FF0000u) >> 8)  |
           ((x & 0xFF000000u) >> 24);
}

static uint32_t read_be32(const uint8_t *p) {
    uint32_t v;
    v = ((uint32_t)p[0] << 24) |
        ((uint32_t)p[1] << 16) |
        ((uint32_t)p[2] << 8)  |
        ((uint32_t)p[3]);
    return v;
}

static uint32_t align4(uint32_t v) {
    return (v + 3u) & ~3u;
}

static int streq(const char *a, const char *b) {
    while (*a && *b) {
        if (*a != *b) {
            return 0;
        }
        a++;
        b++;
    }
    return (*a == '\0' && *b == '\0');
}

int dtb_get_initrd(uint64_t dtb_ptr, initrd_info_t *out) {
    const uint8_t *fdt = (const uint8_t *)(uintptr_t)dtb_ptr;
    const fdt_header_t *hdr;
    const uint8_t *struct_base;
    const uint8_t *strings_base;
    uint32_t struct_off;
    uint32_t strings_off;
    uint32_t struct_size;
    uint32_t depth = 0;
    int in_chosen = 0;
    uint32_t initrd_start = 0;
    uint32_t initrd_end = 0;

    if (out == 0 || fdt == 0) {
        return 0;
    }

    out->start = 0;
    out->size = 0;

    hdr = (const fdt_header_t *)fdt;
    if (be32_to_cpu(hdr->magic) != FDT_MAGIC) {
        return 0;
    }

    struct_off = be32_to_cpu(hdr->off_dt_struct);
    strings_off = be32_to_cpu(hdr->off_dt_strings);
    struct_size = be32_to_cpu(hdr->size_dt_struct);

    struct_base = fdt + struct_off;
    strings_base = fdt + strings_off;

    for (uint32_t off = 0; off + 4u <= struct_size;) {
        uint32_t token = read_be32(struct_base + off);
        off += 4;

        if (token == FDT_BEGIN_NODE) {
            const char *name = (const char *)(struct_base + off);
            uint32_t name_len = 0;
            while ((off + name_len) < struct_size && name[name_len] != '\0') {
                name_len++;
            }
            off += align4(name_len + 1u);
            depth++;
            in_chosen = (depth == 2u && streq(name, "chosen"));
        } else if (token == FDT_END_NODE) {
            if (depth == 2u && in_chosen) {
                in_chosen = 0;
            }
            if (depth > 0) {
                depth--;
            }
        } else if (token == FDT_PROP) {
            if (off + 8u > struct_size) {
                return 0;
            }

            uint32_t len = read_be32(struct_base + off);
            uint32_t nameoff = read_be32(struct_base + off + 4u);
            const uint8_t *val = struct_base + off + 8u;
            const char *prop_name;

            if (len > MAX_PROP_LEN) {
                return 0;
            }
            off += 8u + align4(len);

            prop_name = (const char *)(strings_base + nameoff);
            if (!in_chosen) {
                continue;
            }

            if (len >= 4u && streq(prop_name, "linux,initrd-start")) {
                initrd_start = read_be32(val);
            } else if (len >= 4u && streq(prop_name, "linux,initrd-end")) {
                initrd_end = read_be32(val);
            }
        } else if (token == FDT_END) {
            break;
        } else {
            return 0;
        }
    }

    if (initrd_start == 0 || initrd_end <= initrd_start) {
        return 0;
    }

    out->start = (const uint8_t *)(uintptr_t)initrd_start;
    out->size = initrd_end - initrd_start;
    return 1;
}
