#include <stddef.h>

void *memset(void *dest, int value, size_t size)
{
    unsigned char *ptr = (unsigned char *)dest;
    unsigned char byte = (unsigned char)value;
    size_t i;

    for (i = 0; i < size; ++i) {
        ptr[i] = byte;
    }

    return dest;
}

void *memcpy(void *dest, const void *src, size_t size)
{
    unsigned char *d = (unsigned char *)dest;
    const unsigned char *s = (const unsigned char *)src;
    size_t i;

    for (i = 0; i < size; ++i) {
        d[i] = s[i];
    }

    return dest;
}

size_t strlen(const char *str)
{
    size_t length = 0;

    while (str[length] != '\0') {
        ++length;
    }

    return length;
}