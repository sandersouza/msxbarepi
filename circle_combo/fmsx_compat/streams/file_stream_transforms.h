#ifndef MSXBARE_FMSX_FILE_STREAM_TRANSFORMS_H
#define MSXBARE_FMSX_FILE_STREAM_TRANSFORMS_H

#include "file_stream.h"

#ifdef __cplusplus
extern "C" {
#endif

RFILE *rfopen_zip(const char *path, const char *mode);
RFILE *rfopen_7zip(const char *path, const char *mode);

#ifdef __cplusplus
}
#endif

#endif
