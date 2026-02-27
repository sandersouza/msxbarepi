#ifndef MSXBARE_FMSX_FILE_STREAM_H
#define MSXBARE_FMSX_FILE_STREAM_H

#include <stddef.h>
#include <stdint.h>

typedef struct RFILE {
    const unsigned char *data;
    size_t size;
    size_t pos;
    int writable;
    int in_use;
} RFILE;

#ifndef SEEK_SET
#define SEEK_SET 0
#endif
#ifndef SEEK_CUR
#define SEEK_CUR 1
#endif
#ifndef SEEK_END
#define SEEK_END 2
#endif

#ifdef __cplusplus
extern "C" {
#endif

RFILE *rfopen(const char *path, const char *mode);
int rfclose(RFILE *stream);
size_t rfread(void *ptr, size_t size, size_t nmemb, RFILE *stream);
size_t rfwrite(const void *ptr, size_t size, size_t nmemb, RFILE *stream);
int rfseek(RFILE *stream, long offset, int origin);
long rftell(RFILE *stream);
int rfeof(RFILE *stream);
int rfgetc(RFILE *stream);
int rfputc(int ch, RFILE *stream);
char *rfgets(char *s, int n, RFILE *stream);
void filestream_rewind(RFILE *stream);
int filestream_delete(const char *path);

#ifdef __cplusplus
}
#endif

#endif
