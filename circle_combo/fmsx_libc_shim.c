#include "fmsx_compat/ctype.h"
#include "fmsx_compat/unistd.h"
#include "fmsx_compat/time.h"
#include "fmsx_compat/stdio.h"
#include "fmsx_compat/errno.h"
#include "fmsx_compat/sys/stat.h"
#include "fmsx_virtual_fs.h"

extern const unsigned char fmsx_embedded_msx_rom_start[];
extern const unsigned char fmsx_embedded_msx_rom_end[];

static FILE g_file_pool[8];

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

    if (fmsx_vfs_lookup(path, data, size))
    {
        if (!(wants_msx_bios && (!data || !size || !*data || *size < 0x8000u)))
        {
            return 1;
        }
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

static FILE *local_alloc_file(void)
{
    for (unsigned i = 0; i < (sizeof(g_file_pool) / sizeof(g_file_pool[0])); ++i)
    {
        if (!g_file_pool[i].in_use)
        {
            g_file_pool[i].in_use = 1;
            g_file_pool[i].data = 0;
            g_file_pool[i].size = 0;
            g_file_pool[i].pos = 0;
            g_file_pool[i].writable = 0;
            return &g_file_pool[i];
        }
    }

    return 0;
}

int errno = 0;

FILE *stdin = 0;
FILE *stdout = 0;
FILE *stderr = 0;

int chdir(const char *path)
{
    (void) path;
    return 0;
}

int unlink(const char *path)
{
	(void) path;
	return -1;
}

int stat(const char *path, struct stat *st)
{
    (void) path;
    if (st)
    {
        st->st_size = 0;
        st->st_mtime = 0;
    }
    return -1;
}

char *getcwd(char *buf, size_t size)
{
    if (!buf || size == 0u)
    {
        return 0;
    }

    buf[0] = '.';
    if (size > 1u)
    {
        buf[1] = '\0';
    }

    return buf;
}

time_t time(time_t *tloc)
{
    static time_t ticks = 0;
    ticks++;
    if (tloc)
    {
        *tloc = ticks;
    }
    return ticks;
}

struct tm *localtime(const time_t *timer)
{
    static struct tm out;
    long t = timer ? *timer : 0;

    out.tm_sec = (int) (t % 60);
    out.tm_min = (int) ((t / 60) % 60);
    out.tm_hour = (int) ((t / 3600) % 24);
    out.tm_mday = 1;
    out.tm_mon = 0;
    out.tm_year = 80;
    out.tm_wday = 0;
    out.tm_yday = 0;
    out.tm_isdst = 0;

    return &out;
}

int isalpha(int c)
{
    return ((c >= 'A') && (c <= 'Z')) || ((c >= 'a') && (c <= 'z'));
}

int isdigit(int c)
{
    return (c >= '0') && (c <= '9');
}

int isalnum(int c)
{
    return isalpha(c) || isdigit(c);
}

int isspace(int c)
{
    return c == ' ' || c == '\t' || c == '\n' || c == '\r' || c == '\f' || c == '\v';
}

int isxdigit(int c)
{
    return isdigit(c)
        || ((c >= 'A') && (c <= 'F'))
        || ((c >= 'a') && (c <= 'f'));
}

int tolower(int c)
{
    return ((c >= 'A') && (c <= 'Z')) ? (c + ('a' - 'A')) : c;
}

int toupper(int c)
{
    return ((c >= 'a') && (c <= 'z')) ? (c - ('a' - 'A')) : c;
}

int printf(const char *fmt, ...)
{
    (void) fmt;
    return 0;
}

int sprintf(char *str, const char *fmt, ...)
{
    (void) fmt;
    if (str)
    {
        str[0] = '\0';
    }
    return 0;
}

int snprintf(char *str, size_t size, const char *fmt, ...)
{
    (void) fmt;
    if (str && size)
    {
        str[0] = '\0';
    }
    return 0;
}

int vsnprintf(char *str, size_t size, const char *fmt, va_list ap)
{
    (void) fmt;
    (void) ap;
    if (str && size)
    {
        str[0] = '\0';
    }
    return 0;
}

int sscanf(const char *str, const char *fmt, ...)
{
    (void) str;
    (void) fmt;
    return 0;
}

FILE *fopen(const char *path, const char *mode)
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

    FILE *stream = local_alloc_file();
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

int fclose(FILE *stream)
{
    if (!stream)
    {
        return -1;
    }

    stream->in_use = 0;
    return 0;
}

size_t fread(void *ptr, size_t size, size_t nmemb, FILE *stream)
{
    if (!ptr || !stream || !stream->in_use || size == 0u || nmemb == 0u)
    {
        return 0;
    }

    const size_t total = size * nmemb;
    size_t remain = stream->size > stream->pos ? (stream->size - stream->pos) : 0u;
    size_t copy = total < remain ? total : remain;

    unsigned char *dst = (unsigned char *) ptr;
    for (size_t i = 0; i < copy; ++i)
    {
        dst[i] = stream->data[stream->pos + i];
    }
    stream->pos += copy;

    return size ? (copy / size) : 0u;
}

size_t fwrite(const void *ptr, size_t size, size_t nmemb, FILE *stream)
{
    (void) ptr;
    (void) size;
    (void) nmemb;
    (void) stream;
    return 0;
}

int fseek(FILE *stream, long offset, int whence)
{
    if (!stream || !stream->in_use)
    {
        return -1;
    }

    long base = 0;
    if (whence == SEEK_SET) base = 0;
    else if (whence == SEEK_CUR) base = (long) stream->pos;
    else if (whence == SEEK_END) base = (long) stream->size;
    else return -1;

    long next = base + offset;
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

long ftell(FILE *stream)
{
    if (!stream || !stream->in_use)
    {
        return -1;
    }

    return (long) stream->pos;
}

int feof(FILE *stream)
{
    if (!stream || !stream->in_use)
    {
        return 1;
    }

    return stream->pos >= stream->size ? 1 : 0;
}

int fgetc(FILE *stream)
{
    if (!stream || !stream->in_use || stream->pos >= stream->size)
    {
        return EOF;
    }

    return (int) stream->data[stream->pos++];
}

int fputc(int c, FILE *stream)
{
    (void) c;
    (void) stream;
    return EOF;
}
