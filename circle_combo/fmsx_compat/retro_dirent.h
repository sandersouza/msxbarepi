#ifndef MSXBARE_FMSX_RETRO_DIRENT_H
#define MSXBARE_FMSX_RETRO_DIRENT_H

#include <stdbool.h>

typedef struct RDIR {
    int unused;
} RDIR;

#ifdef __cplusplus
extern "C" {
#endif

RDIR *retro_opendir(const char *name, bool include_hidden);
bool retro_readdir(RDIR *rdir);
const char *retro_dirent_get_name(RDIR *rdir);
bool retro_dirent_is_dir(RDIR *rdir, const char *unused_path);
void retro_closedir(RDIR *rdir);

#ifdef __cplusplus
}
#endif

#endif
