#ifndef MSXBARE_FMSX_SYS_STAT_H
#define MSXBARE_FMSX_SYS_STAT_H

#include <stddef.h>

typedef long off_t;
typedef long time_t;

struct stat
{
    off_t st_size;
    time_t st_mtime;
};

int stat(const char *path, struct stat *st);

#endif
