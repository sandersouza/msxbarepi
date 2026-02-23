#ifndef STDIO_H
#define STDIO_H

#include <stddef.h>

#define SEEK_SET 0
#define SEEK_CUR 1
#define SEEK_END 2

typedef struct __dummy_FILE FILE;

int fflush(FILE *stream);
int sprintf(char *str, const char *fmt, ...);
int sscanf(const char *str, const char *fmt, ...);

#endif
