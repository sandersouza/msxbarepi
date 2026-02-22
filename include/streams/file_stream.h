#ifndef FILE_STREAM_H
#define FILE_STREAM_H

#include <stddef.h>
#include <stdint.h>

#define SEEK_SET 0
#define SEEK_CUR 1
#define SEEK_END 2

typedef struct {
  const uint8_t *data;
  size_t size;
  size_t pos;
  int writable;
} RFILE;

RFILE *rfopen(const char *path, const char *mode);
size_t rfread(void *ptr, size_t size, size_t nmemb, RFILE *stream);
size_t rfwrite(const void *ptr, size_t size, size_t nmemb, RFILE *stream);
int rfseek(RFILE *stream, long offset, int whence);
long rftell(RFILE *stream);
int rfclose(RFILE *stream);
int filestream_rewind(RFILE *stream);
char *rfgets(char *s, int size, RFILE *stream);
int rfgetc(RFILE *stream);
int rfeof(RFILE *stream);

#endif
