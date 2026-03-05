#ifndef MSXBARE_CIRCLE_COMBO_FMSX_CARTS_SHA_FALLBACK_H
#define MSXBARE_CIRCLE_COMBO_FMSX_CARTS_SHA_FALLBACK_H

#include <circle/types.h>

#ifdef __cplusplus
extern "C" {
#endif

boolean fmsx_carts_sha_fallback_lookup(const char *sha1_hex_40, int *out_mapper);
unsigned fmsx_carts_sha_fallback_count(void);

#ifdef __cplusplus
}
#endif

#endif
