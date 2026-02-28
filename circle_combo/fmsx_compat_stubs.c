#include "fmsx_compat/compat/strl.h"
#include "fmsx_compat/streams/file_stream.h"
#include "fmsx_compat/streams/file_stream_transforms.h"
#include "fmsx_compat/retro_dirent.h"
#include "fmsx_virtual_fs.h"
#include "fmsx_runtime.h"

extern const unsigned char fmsx_embedded_msx_rom_start[];
extern const unsigned char fmsx_embedded_msx_rom_end[];

static RFILE g_rfile_pool[8];

static size_t local_strlen(const char *s)
{
    size_t n = 0u;
    if (!s)
    {
        return 0u;
    }

    while (s[n] != '\0')
    {
        n++;
    }

    return n;
}

static void *local_memcpy(void *dst, const void *src, size_t n)
{
    unsigned char *d = (unsigned char *) dst;
    const unsigned char *s = (const unsigned char *) src;

    for (size_t i = 0; i < n; ++i)
    {
        d[i] = s[i];
    }

    return dst;
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

static int local_lookup_embedded(const char *path, const unsigned char **data, size_t *size)
{
    const char *name = local_basename(path);
    const int wants_msx_bios = local_str_ieq(name, "MSX.ROM");
    if (wants_msx_bios && fmsx_runtime_get_boot_mode() == 2u && fmsx_runtime_use_embedded_bios())
    {
        *data = fmsx_embedded_msx_rom_start;
        *size = (size_t) (fmsx_embedded_msx_rom_end - fmsx_embedded_msx_rom_start);
        return 1;
    }

    if (fmsx_vfs_lookup(path, data, size))
    {
        return 1;
    }

#if !COMBO_REQUIRE_CPIO_BIOS
    if (wants_msx_bios)
    {
        *data = fmsx_embedded_msx_rom_start;
        *size = (size_t) (fmsx_embedded_msx_rom_end - fmsx_embedded_msx_rom_start);
        return 1;
    }
#endif

    return 0;
}

static RFILE *local_alloc_rfile(void)
{
    for (unsigned i = 0; i < (sizeof(g_rfile_pool) / sizeof(g_rfile_pool[0])); ++i)
    {
        if (!g_rfile_pool[i].in_use)
        {
            g_rfile_pool[i].in_use = 1;
            g_rfile_pool[i].data = 0;
            g_rfile_pool[i].size = 0;
            g_rfile_pool[i].pos = 0;
            g_rfile_pool[i].writable = 0;
            return &g_rfile_pool[i];
        }
    }

    return 0;
}

size_t strlcpy(char *dst, const char *src, size_t dsize)
{
    size_t src_len = src ? local_strlen(src) : 0u;
    if (!dst || dsize == 0u)
    {
        return src_len;
    }

    size_t copy_len = src_len < (dsize - 1u) ? src_len : (dsize - 1u);
    if (src && copy_len)
    {
        local_memcpy(dst, src, copy_len);
    }
    dst[copy_len] = '\0';
    return src_len;
}

size_t strlcat(char *dst, const char *src, size_t dsize)
{
    size_t dst_len = dst ? local_strlen(dst) : 0u;
    size_t src_len = src ? local_strlen(src) : 0u;

    if (!dst || dsize == 0u)
    {
        return dst_len + src_len;
    }

    if (dst_len >= dsize)
    {
        return dsize + src_len;
    }

    return dst_len + strlcpy(dst + dst_len, src, dsize - dst_len);
}

RFILE *rfopen(const char *path, const char *mode)
{
    if (!path || !mode)
    {
        return 0;
    }

    const unsigned char *data = 0;
    size_t size = 0;
    if (!local_lookup_embedded(path, &data, &size))
    {
        return 0;
    }

    RFILE *stream = local_alloc_rfile();
    if (!stream)
    {
        return 0;
    }

    stream->data = data;
    stream->size = size;
    stream->pos = 0;
    stream->writable = 0;
    return stream;
}

int rfclose(RFILE *stream)
{
    if (!stream)
    {
        return -1;
    }

    stream->in_use = 0;
    return 0;
}

size_t rfread(void *ptr, size_t size, size_t nmemb, RFILE *stream)
{
    if (!ptr || !stream || !stream->in_use || size == 0u || nmemb == 0u)
    {
        return 0;
    }

    const size_t total = size * nmemb;
    const size_t remain = stream->size > stream->pos ? (stream->size - stream->pos) : 0u;
    const size_t copy = total < remain ? total : remain;

    local_memcpy(ptr, stream->data + stream->pos, copy);
    stream->pos += copy;
    return size ? (copy / size) : 0u;
}

size_t rfwrite(const void *ptr, size_t size, size_t nmemb, RFILE *stream)
{
    (void) ptr;
    (void) size;
    (void) nmemb;
    (void) stream;
    return 0;
}

int rfseek(RFILE *stream, long offset, int origin)
{
    if (!stream || !stream->in_use)
    {
        return -1;
    }

    long base = 0;
    if (origin == SEEK_SET) base = 0;
    else if (origin == SEEK_CUR) base = (long) stream->pos;
    else if (origin == SEEK_END) base = (long) stream->size;
    else return -1;

    const long next = base + offset;
    if (next < 0)
    {
        return -1;
    }

    size_t pos = (size_t) next;
    if (pos > stream->size)
    {
        pos = stream->size;
    }

    stream->pos = pos;
    return 0;
}

long rftell(RFILE *stream)
{
    if (!stream || !stream->in_use)
    {
        return -1;
    }

    return (long) stream->pos;
}

int rfeof(RFILE *stream)
{
    if (!stream || !stream->in_use)
    {
        return 1;
    }

    return stream->pos >= stream->size ? 1 : 0;
}

int rfgetc(RFILE *stream)
{
    if (!stream || !stream->in_use || stream->pos >= stream->size)
    {
        return -1;
    }

    return (int) stream->data[stream->pos++];
}

int rfputc(int ch, RFILE *stream)
{
    (void) ch;
    (void) stream;
    return -1;
}

char *rfgets(char *s, int n, RFILE *stream)
{
    if (!s || n <= 1 || !stream || !stream->in_use)
    {
        return 0;
    }

    int i = 0;
    while ((i + 1) < n && stream->pos < stream->size)
    {
        const char c = (char) stream->data[stream->pos++];
        s[i++] = c;
        if (c == '\n')
        {
            break;
        }
    }

    if (i == 0)
    {
        return 0;
    }

    s[i] = '\0';
    return s;
}

void filestream_rewind(RFILE *stream)
{
    if (stream && stream->in_use)
    {
        stream->pos = 0;
    }
}

int filestream_delete(const char *path)
{
    (void) path;
    return -1;
}

RFILE *rfopen_zip(const char *path, const char *mode)
{
    (void) path;
    (void) mode;
    return 0;
}

RFILE *rfopen_7zip(const char *path, const char *mode)
{
    (void) path;
    (void) mode;
    return 0;
}

RDIR *retro_opendir(const char *name, bool include_hidden)
{
    (void) name;
    (void) include_hidden;
    return 0;
}

bool retro_readdir(RDIR *rdir)
{
    (void) rdir;
    return false;
}

const char *retro_dirent_get_name(RDIR *rdir)
{
    (void) rdir;
    return 0;
}

bool retro_dirent_is_dir(RDIR *rdir, const char *unused_path)
{
    (void) rdir;
    (void) unused_path;
    return false;
}

void retro_closedir(RDIR *rdir)
{
    (void) rdir;
}

char *strrchr(const char *s, int c)
{
    if (!s)
    {
        return 0;
    }

    const char *last = 0;
    const char ch = (char) c;
    for (; *s; ++s)
    {
        if (*s == ch)
        {
            last = s;
        }
    }

    if (ch == '\0')
    {
        return (char *) s;
    }

    return (char *) last;
}
