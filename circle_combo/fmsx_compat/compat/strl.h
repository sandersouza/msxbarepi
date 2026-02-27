#ifndef MSXBARE_FMSX_COMPAT_STRL_H
#define MSXBARE_FMSX_COMPAT_STRL_H

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

size_t strlcpy(char *dst, const char *src, size_t dsize);
size_t strlcat(char *dst, const char *src, size_t dsize);

#ifdef __cplusplus
}
#endif

#endif
