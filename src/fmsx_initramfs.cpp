#include "fmsx_initramfs.h"

#include "fmsx_virtual_fs.h"

#include <circle/startup.h>
#include <circle/types.h>

static const u64 kMinMappedAddr = 0x00000100ull;
static const u64 kMaxMappedAddr = 0x40000000ull; // 1 GiB window (RPi3 target)
static const u64 kMaxInitrdSize = 64ull * 1024ull * 1024ull;
static const unsigned kMaxCpioEntries = 512u;
static const unsigned kMaxCpioNameSize = 4096u;
static unsigned g_fmsx_initramfs_files_mounted = 0u;

extern "C" const unsigned char fmsx_embedded_initramfs_start[];
extern "C" const unsigned char fmsx_embedded_initramfs_end[];

static unsigned align4(unsigned value)
{
    return (value + 3u) & ~3u;
}

static u64 align4_u64(u64 value)
{
    return (value + 3ull) & ~3ull;
}

static int address_range_is_sane(u64 start, u64 end)
{
    if (start < kMinMappedAddr || end <= start)
    {
        return 0;
    }

    if (end > kMaxMappedAddr)
    {
        return 0;
    }

    if ((end - start) > kMaxInitrdSize)
    {
        return 0;
    }

    return 1;
}

static u32 be32_to_cpu(const u8 *p)
{
    return ((u32) p[0] << 24)
         | ((u32) p[1] << 16)
         | ((u32) p[2] << 8)
         | (u32) p[3];
}

static unsigned hex_to_u32(const char *text, unsigned len)
{
    unsigned value = 0;
    for (unsigned i = 0; i < len; ++i)
    {
        const char c = text[i];
        unsigned digit = 0;
        if (c >= '0' && c <= '9') digit = (unsigned) (c - '0');
        else if (c >= 'a' && c <= 'f') digit = (unsigned) (10 + c - 'a');
        else if (c >= 'A' && c <= 'F') digit = (unsigned) (10 + c - 'A');
        else return 0;

        value = (value << 4) | digit;
    }
    return value;
}

static size_t local_strlen(const char *s)
{
    size_t n = 0;
    while (s && s[n]) n++;
    return n;
}

static int local_streq(const char *a, const char *b)
{
    if (!a || !b)
    {
        return 0;
    }

    while (*a && *b)
    {
        if (*a != *b)
        {
            return 0;
        }
        ++a;
        ++b;
    }

    return *a == '\0' && *b == '\0';
}

static int local_str_ieq(const char *a, const char *b)
{
    if (!a || !b)
    {
        return 0;
    }

    while (*a && *b)
    {
        char ca = *a;
        char cb = *b;
        if (ca >= 'A' && ca <= 'Z') ca = (char) (ca + ('a' - 'A'));
        if (cb >= 'A' && cb <= 'Z') cb = (char) (cb + ('a' - 'A'));
        if (ca != cb)
        {
            return 0;
        }
        ++a;
        ++b;
    }

    return *a == '\0' && *b == '\0';
}

static const char *local_basename(const char *path)
{
    if (!path)
    {
        return "";
    }

    const char *name = path;
    for (const char *p = path; *p; ++p)
    {
        if (*p == '/' || *p == '\\')
        {
            name = p + 1;
        }
    }

    return name;
}

static int fdt_find_initrd(const void *dtb_addr, u64 *out_start, u64 *out_end)
{
    if (!dtb_addr || !out_start || !out_end)
    {
        return 0;
    }

    const u8 *base = (const u8 *) dtb_addr;
    const u32 magic = be32_to_cpu(base + 0x00);
    const u32 total_size = be32_to_cpu(base + 0x04);
    const u32 off_dt_struct = be32_to_cpu(base + 0x08);
    const u32 off_dt_strings = be32_to_cpu(base + 0x0C);
    const u32 size_dt_strings = be32_to_cpu(base + 0x20);
    const u32 size_dt_struct = be32_to_cpu(base + 0x24);

    if (magic != 0xD00DFEEDu)
    {
        return 0;
    }

    if (total_size < 0x28u)
    {
        return 0;
    }

    if (off_dt_struct >= total_size || size_dt_struct == 0u || off_dt_struct + size_dt_struct > total_size)
    {
        return 0;
    }

    if (off_dt_strings >= total_size || size_dt_strings == 0u || off_dt_strings + size_dt_strings > total_size)
    {
        return 0;
    }

    const u8 *struct_ptr = base + off_dt_struct;
    const u8 *struct_end = struct_ptr + size_dt_struct;
    const char *strings = (const char *) (base + off_dt_strings);

    unsigned depth = 0;
    unsigned chosen_depth = 0;
    int in_chosen = 0;
    int got_start = 0;
    int got_end = 0;
    u64 initrd_start = 0;
    u64 initrd_end = 0;

    while ((struct_ptr + 4) <= struct_end)
    {
        const u32 token = be32_to_cpu(struct_ptr);
        struct_ptr += 4;

        if (token == 1u)
        {
            const char *node_name = (const char *) struct_ptr;
            const size_t name_len = local_strlen(node_name) + 1u;
            struct_ptr += align4((unsigned) name_len);

            if (depth == 1 && local_streq(node_name, "chosen"))
            {
                in_chosen = 1;
                chosen_depth = depth + 1u;
            }

            depth++;
        }
        else if (token == 2u)
        {
            if (depth > 0)
            {
                if (in_chosen && depth == chosen_depth)
                {
                    in_chosen = 0;
                    chosen_depth = 0;
                }
                depth--;
            }
        }
        else if (token == 3u)
        {
            if ((struct_ptr + 8) > struct_end)
            {
                break;
            }

            const u32 prop_len = be32_to_cpu(struct_ptr);
            const u32 name_off = be32_to_cpu(struct_ptr + 4);
            struct_ptr += 8;
            const u8 *prop_value = struct_ptr;
            struct_ptr += align4(prop_len);

            if (name_off >= size_dt_strings)
            {
                continue;
            }

            if (!in_chosen)
            {
                continue;
            }

            const char *prop_name = strings + name_off;
            if (local_streq(prop_name, "linux,initrd-start"))
            {
                if (prop_len >= 8)
                {
                    initrd_start = ((u64) be32_to_cpu(prop_value) << 32)
                                 | (u64) be32_to_cpu(prop_value + 4);
                    got_start = 1;
                }
                else if (prop_len >= 4)
                {
                    initrd_start = (u64) be32_to_cpu(prop_value);
                    got_start = 1;
                }
            }
            else if (local_streq(prop_name, "linux,initrd-end"))
            {
                if (prop_len >= 8)
                {
                    initrd_end = ((u64) be32_to_cpu(prop_value) << 32)
                               | (u64) be32_to_cpu(prop_value + 4);
                    got_end = 1;
                }
                else if (prop_len >= 4)
                {
                    initrd_end = (u64) be32_to_cpu(prop_value);
                    got_end = 1;
                }
            }
        }
        else if (token == 4u)
        {
        }
        else if (token == 9u)
        {
            break;
        }
        else
        {
            break;
        }
    }

    if (got_start && got_end && address_range_is_sane(initrd_start, initrd_end))
    {
        *out_start = initrd_start;
        *out_end = initrd_end;
        return 1;
    }

    return 0;
}

static int fmsx_initramfs_is_boot_minimal_name(const char *name)
{
    const char *base = local_basename(name);
    static const char *kBootNames[] =
    {
        "MSX.ROM",
        "DISK.ROM",
        "CBIOS_DISK.ROM",
        "KANJI.ROM",
        "FMPAC.ROM",
        "CARTS.SHA",
        "CARTS.CRC",
        "MSX2.ROM",
        "MSX2EXT.ROM",
        "MSX2P.ROM",
        "MSX2PEXT.ROM",
        "MSX2SUB.ROM",
        "SUBROM.ROM",
        "KANJIBASIC.ROM",
        "HB-F1XDJ_KANJIBASIC.ROM",
        "FS-A1FX_KANJIBASIC.ROM",
        "MSXJE.ROM",
        "HB-F1XDJ.ROM",
        "HB-F1XDJ_MSXJE.ROM",
        "HB-F1XDJ_MSX2PSUB.ROM",
        "FS-A1FX_MSX2PSUB.ROM",
        "KANJIFONT.ROM",
        "KANJI16.ROM",
        "BASIC-BIOS2.ROM",
        "FS-A1F_BASIC-BIOS2.ROM",
        "FS-A1FM_BASIC-BIOS2.ROM",
        "FS-A1F_MSX2SUB.ROM",
        "FS-A1F_KANJIFONT.ROM",
        "FS-A1F_DISK.ROM",
        "CARTA.ROM",
        "CARTB.ROM",
        "DISKA.DSK",
        "DISKB.DSK"
    };

    for (unsigned i = 0; i < (sizeof(kBootNames) / sizeof(kBootNames[0])); ++i)
    {
        if (local_str_ieq(base, kBootNames[i]))
        {
            return 1;
        }
    }

    return 0;
}

static unsigned fmsx_initramfs_mount_internal(int reset_vfs, int minimal_only)
{
    if (reset_vfs)
    {
        fmsx_vfs_reset();
        g_fmsx_initramfs_files_mounted = 0u;
    }

    const unsigned char *cursor = 0;
    const unsigned char *limit = 0;

    if (&fmsx_embedded_initramfs_end[0] > &fmsx_embedded_initramfs_start[0])
    {
        cursor = fmsx_embedded_initramfs_start;
        limit = fmsx_embedded_initramfs_end;
    }
    else
    {
        u32 * volatile dtb_ptr32 = (u32 * volatile) ARM_DTB_PTR32;
        const u64 dtb_raw = (u64) *dtb_ptr32;
        if (dtb_raw < kMinMappedAddr || dtb_raw >= kMaxMappedAddr || (dtb_raw & 0x3u) != 0u)
        {
            return 0;
        }

        const void *dtb_address = (const void *) (uintptr) dtb_raw;
        if (!dtb_address)
        {
            return 0;
        }

        u64 initrd_start = 0;
        u64 initrd_end = 0;
        if (!fdt_find_initrd(dtb_address, &initrd_start, &initrd_end))
        {
            return 0;
        }

        cursor = (const unsigned char *) (uintptr) initrd_start;
        limit = (const unsigned char *) (uintptr) initrd_end;
    }

    unsigned mounted = 0;
    unsigned entries = 0;

    while ((cursor + 110) <= limit)
    {
        if (entries++ >= kMaxCpioEntries)
        {
            break;
        }

        const char *header = (const char *) cursor;
        if (!((header[0] == '0' && header[1] == '7' && header[2] == '0' && header[3] == '7' && header[4] == '0' && header[5] == '1')
           || (header[0] == '0' && header[1] == '7' && header[2] == '0' && header[3] == '7' && header[4] == '0' && header[5] == '2')))
        {
            break;
        }

        const unsigned file_size = hex_to_u32(header + 54, 8);
        const unsigned name_size = hex_to_u32(header + 94, 8);

        if (name_size < 2u || name_size > kMaxCpioNameSize)
        {
            break;
        }

        const u64 header_and_name = align4_u64(110ull + (u64) name_size);
        const unsigned aligned_file_size = align4(file_size);
        if (header_and_name < (110ull + (u64) name_size) || aligned_file_size < file_size)
        {
            break;
        }

        const unsigned char *name_ptr = cursor + 110;
        if ((name_ptr + name_size) > limit)
        {
            break;
        }

        const char *name = (const char *) name_ptr;
        if (name[name_size - 1] != '\0')
        {
            break;
        }

        if (header_and_name > (u64) (limit - cursor))
        {
            break;
        }

        const unsigned char *data_ptr = cursor + header_and_name;
        if ((data_ptr + file_size) > limit)
        {
            break;
        }

        if (name_size >= 11 && name[0] == 'T' && name[1] == 'R' && name[2] == 'A' && name[3] == 'I'
            && name[4] == 'L' && name[5] == 'E' && name[6] == 'R' && name[7] == '!' && name[8] == '!'
            && name[9] == '!' )
        {
            break;
        }

        if (file_size > 0)
        {
            if ((!minimal_only || fmsx_initramfs_is_boot_minimal_name(name))
                && fmsx_vfs_add_file(name, data_ptr, file_size))
            {
                mounted++;
            }
        }

        const u64 total_size = header_and_name + (u64) aligned_file_size;
        if (total_size == 0 || total_size > (u64) (limit - cursor))
        {
            break;
        }

        cursor += total_size;
    }

    g_fmsx_initramfs_files_mounted += mounted;
    return mounted;
}

unsigned fmsx_initramfs_mount(void)
{
    g_fmsx_initramfs_files_mounted = 0u;
    return fmsx_initramfs_mount_internal(1, 0);
}

unsigned fmsx_initramfs_mount_boot_minimal(void)
{
    g_fmsx_initramfs_files_mounted = 0u;
    return fmsx_initramfs_mount_internal(1, 1);
}

unsigned fmsx_initramfs_mount_remaining(void)
{
    return fmsx_initramfs_mount_internal(0, 0);
}

unsigned fmsx_initramfs_files_mounted(void)
{
    return g_fmsx_initramfs_files_mounted;
}
