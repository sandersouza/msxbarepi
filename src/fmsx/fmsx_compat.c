#include <compat/strl.h>
#include <console.h>
#include <ctype.h>
#include <file/file_path.h>
#include <initramfs.h>
#include <libretro.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include <streams/file_stream.h>
#include <time.h>
#include <unistd.h>
#include <stdarg.h>

#define HEAP_SIZE (8u * 1024u * 1024u)

static unsigned char g_heap[HEAP_SIZE];
static size_t g_heap_pos;

#ifdef MSXBARE_DEBUG_LOGS
static void bare_log(int level, const char *fmt, ...) {
    (void)level;
    if (fmt) {
        console_puts("[fMSX] ");
        console_puts(fmt);
    }
}
retro_log_printf_t log_cb = bare_log;
#else
retro_log_printf_t log_cb = 0;
#endif

typedef struct {
    size_t size;
} alloc_hdr_t;

static void *heap_alloc(size_t size) {
    size_t aligned = (size + 7u) & ~7u;
    size_t total = aligned + sizeof(alloc_hdr_t);
    if (g_heap_pos + total > HEAP_SIZE) {
        return 0;
    }
    alloc_hdr_t *h = (alloc_hdr_t *)(void *)(g_heap + g_heap_pos);
    h->size = aligned;
    g_heap_pos += total;
    return (void *)(h + 1);
}

void *malloc(size_t size) {
    if (!size) size = 1;
    return heap_alloc(size);
}

void free(void *ptr) {
    (void)ptr;
}

void *calloc(size_t n, size_t size) {
    size_t total = n * size;
    void *p = malloc(total);
    if (p) memset(p, 0, total);
    return p;
}

void *realloc(void *ptr, size_t size) {
    if (!ptr) return malloc(size);
    if (!size) return 0;
    alloc_hdr_t *h = ((alloc_hdr_t *)ptr) - 1;
    void *n = malloc(size);
    if (n) {
        size_t c = h->size < size ? h->size : size;
        memcpy(n, ptr, c);
    }
    return n;
}

int abs(int x) { return x < 0 ? -x : x; }

void *memcpy(void *dest, const void *src, size_t n) {
    unsigned char *d = dest;
    const unsigned char *s = src;
    for (size_t i = 0; i < n; i++) d[i] = s[i];
    return dest;
}

void *memset(void *s, int c, size_t n) {
    unsigned char *p = s;
    for (size_t i = 0; i < n; i++) p[i] = (unsigned char)c;
    return s;
}

void *memmove(void *dest, const void *src, size_t n) {
    unsigned char *d = dest;
    const unsigned char *s = src;
    if (d < s) {
        for (size_t i = 0; i < n; i++) d[i] = s[i];
    } else if (d > s) {
        for (size_t i = n; i > 0; i--) d[i - 1] = s[i - 1];
    }
    return dest;
}

int memcmp(const void *s1, const void *s2, size_t n) {
    const unsigned char *a = s1;
    const unsigned char *b = s2;
    for (size_t i = 0; i < n; i++) {
        if (a[i] != b[i]) return (int)a[i] - (int)b[i];
    }
    return 0;
}

size_t strlen(const char *s) {
    size_t n = 0;
    while (s[n]) n++;
    return n;
}

size_t strnlen(const char *s, size_t maxlen) {
    size_t n = 0;
    while (n < maxlen && s[n]) n++;
    return n;
}

char *strcpy(char *dest, const char *src) {
    size_t i = 0;
    do { dest[i] = src[i]; } while (src[i++]);
    return dest;
}

char *strncpy(char *dest, const char *src, size_t n) {
    size_t i = 0;
    for (; i < n && src[i]; i++) dest[i] = src[i];
    for (; i < n; i++) dest[i] = '\0';
    return dest;
}

char *strcat(char *dest, const char *src) {
    size_t d = strlen(dest);
    size_t i = 0;
    do { dest[d + i] = src[i]; } while (src[i++]);
    return dest;
}

int strcmp(const char *s1, const char *s2) {
    while (*s1 && *s2 && *s1 == *s2) { s1++; s2++; }
    return (unsigned char)*s1 - (unsigned char)*s2;
}

int strncmp(const char *s1, const char *s2, size_t n) {
    for (size_t i = 0; i < n; i++) {
        unsigned char a = (unsigned char)s1[i];
        unsigned char b = (unsigned char)s2[i];
        if (a != b) return a - b;
        if (!a) return 0;
    }
    return 0;
}

char *strchr(const char *s, int c) {
    while (*s) {
        if (*s == (char)c) return (char *)s;
        s++;
    }
    return c == 0 ? (char *)s : 0;
}

char *strrchr(const char *s, int c) {
    const char *last = 0;
    while (*s) {
        if (*s == (char)c) last = s;
        s++;
    }
    if (c == 0) return (char *)s;
    return (char *)last;
}

int toupper(int c) { return (c >= 'a' && c <= 'z') ? c - 32 : c; }
int tolower(int c) { return (c >= 'A' && c <= 'Z') ? c + 32 : c; }
int isdigit(int c) { return c >= '0' && c <= '9'; }

int strcasecmp(const char *s1, const char *s2) {
    while (*s1 && *s2) {
        int a = tolower((unsigned char)*s1);
        int b = tolower((unsigned char)*s2);
        if (a != b) return a - b;
        s1++; s2++;
    }
    return tolower((unsigned char)*s1) - tolower((unsigned char)*s2);
}

size_t strlcpy(char *dst, const char *src, size_t size) {
    size_t len = strlen(src);
    if (size) {
        size_t n = (len >= size) ? (size - 1) : len;
        memcpy(dst, src, n);
        dst[n] = '\0';
    }
    return len;
}

void fill_pathname_join(char *out, const char *dir, const char *name, size_t out_size) {
    if (!out || !out_size) return;
    out[0] = '\0';
    if (!dir || !*dir) {
        strlcpy(out, name ? name : "", out_size);
        return;
    }
    strlcpy(out, dir, out_size);
    size_t l = strlen(out);
    if (l + 1 < out_size && out[l - 1] != '/') {
        out[l++] = '/';
        out[l] = '\0';
    }
    if (name && *name) strlcpy(out + l, name, out_size - l);
}

time_t time(time_t *tloc) {
    time_t v = 0;
    if (tloc) *tloc = v;
    return v;
}

struct tm *localtime(const time_t *timer) {
    static struct tm tmv;
    (void)timer;
    memset(&tmv, 0, sizeof(tmv));
    return &tmv;
}

int chdir(const char *path) { (void)path; return 0; }
char *getcwd(char *buf, int size) {
    if (!buf || size < 2) return 0;
    buf[0] = '/';
    buf[1] = '\0';
    return buf;
}
int unlink(const char *path) { (void)path; return -1; }

int fflush(FILE *stream) { (void)stream; return 0; }

int sprintf(char *str, const char *fmt, ...) {
    va_list ap;
    (void)fmt;
    va_start(ap, fmt);
    va_end(ap);
    if (str) str[0] = '\0';
    return 0;
}

int sscanf(const char *str, const char *fmt, ...) {
    (void)str;
    (void)fmt;
    return 0;
}

RFILE *rfopen(const char *path, const char *mode) {
    initramfs_file_t f;
    if (!path || !mode) return 0;
    if (mode[0] == 'w' || mode[0] == 'a') return 0;
    if (!initramfs_find(path, &f)) return 0;

    RFILE *h = (RFILE *)malloc(sizeof(RFILE));
    if (!h) return 0;
    h->data = f.data;
    h->size = f.size;
    h->pos = 0;
    h->writable = 0;
    return h;
}

size_t rfread(void *ptr, size_t size, size_t nmemb, RFILE *stream) {
    if (!ptr || !stream || size == 0 || nmemb == 0) return 0;
    size_t total = size * nmemb;
    size_t left = stream->size - stream->pos;
    if (total > left) total = left;
    memcpy(ptr, stream->data + stream->pos, total);
    stream->pos += total;
    return total / size;
}

size_t rfwrite(const void *ptr, size_t size, size_t nmemb, RFILE *stream) {
    (void)ptr; (void)size; (void)nmemb; (void)stream;
    return 0;
}

int rfseek(RFILE *stream, long offset, int whence) {
    if (!stream) return -1;
    long base = 0;
    if (whence == SEEK_SET) base = 0;
    else if (whence == SEEK_CUR) base = (long)stream->pos;
    else if (whence == SEEK_END) base = (long)stream->size;
    else return -1;
    long p = base + offset;
    if (p < 0 || (size_t)p > stream->size) return -1;
    stream->pos = (size_t)p;
    return 0;
}

long rftell(RFILE *stream) {
    if (!stream) return -1;
    return (long)stream->pos;
}

int rfclose(RFILE *stream) {
    free(stream);
    return 0;
}

int filestream_rewind(RFILE *stream) {
    if (!stream) return -1;
    stream->pos = 0;
    return 0;
}

char *rfgets(char *s, int size, RFILE *stream) {
    if (!s || size <= 0 || !stream) return 0;
    int i = 0;
    while (i < size - 1 && stream->pos < stream->size) {
        char c = (char)stream->data[stream->pos++];
        s[i++] = c;
        if (c == '\n') break;
    }
    if (i == 0) return 0;
    s[i] = '\0';
    return s;
}

int rfgetc(RFILE *stream) {
    if (!stream || stream->pos >= stream->size) return -1;
    return stream->data[stream->pos++];
}

int rfeof(RFILE *stream) {
    return (!stream || stream->pos >= stream->size);
}
