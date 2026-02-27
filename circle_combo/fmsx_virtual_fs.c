#include "fmsx_virtual_fs.h"

#ifndef FMSX_VFS_MAX_FILES
#define FMSX_VFS_MAX_FILES 32
#endif

typedef struct
{
    char name[64];
    const unsigned char *data;
    size_t size;
    int used;
} TFmsxVfsEntry;

static TFmsxVfsEntry g_vfs[FMSX_VFS_MAX_FILES];

static int local_tolower(int c)
{
    return (c >= 'A' && c <= 'Z') ? (c + ('a' - 'A')) : c;
}

static size_t local_strlen(const char *s)
{
    size_t n = 0;
    while (s && s[n]) n++;
    return n;
}

static int local_str_ieq(const char *a, const char *b)
{
    if (!a || !b)
    {
        return 0;
    }

    while (*a && *b)
    {
        if (local_tolower(*a) != local_tolower(*b))
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

    while (name[0] == '.' && name[1] == '/')
    {
        name += 2;
    }

    return name;
}

static void local_copy_name(char *dst, size_t dst_size, const char *src)
{
    if (!dst || dst_size == 0)
    {
        return;
    }

    if (!src)
    {
        dst[0] = '\0';
        return;
    }

    size_t i = 0;
    for (; i + 1 < dst_size && src[i] != '\0'; ++i)
    {
        dst[i] = src[i];
    }
    dst[i] = '\0';
}

void fmsx_vfs_reset(void)
{
    for (unsigned i = 0; i < FMSX_VFS_MAX_FILES; ++i)
    {
        g_vfs[i].used = 0;
        g_vfs[i].name[0] = '\0';
        g_vfs[i].data = 0;
        g_vfs[i].size = 0;
    }
}

int fmsx_vfs_add_file(const char *name, const unsigned char *data, size_t size)
{
    if (!name || !data || size == 0)
    {
        return 0;
    }

    const char *base = local_basename(name);
    if (local_strlen(base) == 0)
    {
        return 0;
    }

    for (unsigned i = 0; i < FMSX_VFS_MAX_FILES; ++i)
    {
        if (g_vfs[i].used && local_str_ieq(g_vfs[i].name, base))
        {
            g_vfs[i].data = data;
            g_vfs[i].size = size;
            return 1;
        }
    }

    for (unsigned i = 0; i < FMSX_VFS_MAX_FILES; ++i)
    {
        if (!g_vfs[i].used)
        {
            g_vfs[i].used = 1;
            local_copy_name(g_vfs[i].name, sizeof(g_vfs[i].name), base);
            g_vfs[i].data = data;
            g_vfs[i].size = size;
            return 1;
        }
    }

    return 0;
}

int fmsx_vfs_lookup(const char *path, const unsigned char **data, size_t *size)
{
    if (data)
    {
        *data = 0;
    }
    if (size)
    {
        *size = 0;
    }

    if (!path)
    {
        return 0;
    }

    const char *base = local_basename(path);
    for (unsigned i = 0; i < FMSX_VFS_MAX_FILES; ++i)
    {
        if (g_vfs[i].used && local_str_ieq(g_vfs[i].name, base))
        {
            if (data)
            {
                *data = g_vfs[i].data;
            }
            if (size)
            {
                *size = g_vfs[i].size;
            }
            return 1;
        }
    }

    return 0;
}
