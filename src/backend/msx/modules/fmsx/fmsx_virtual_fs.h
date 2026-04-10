#ifndef MSXBARE_CIRCLE_MSXBARE_FMSX_VIRTUAL_FS_H
#define MSXBARE_CIRCLE_MSXBARE_FMSX_VIRTUAL_FS_H

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

void fmsx_vfs_reset(void);
int fmsx_vfs_add_file(const char *name, const unsigned char *data, size_t size);
int fmsx_vfs_lookup(const char *path, const unsigned char **data, size_t *size);

#ifdef __cplusplus
}
#endif

#endif
