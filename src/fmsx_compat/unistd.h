#ifndef MSXBARE_FMSX_UNISTD_H
#define MSXBARE_FMSX_UNISTD_H

#include <stddef.h>

int chdir(const char *path);
char *getcwd(char *buf, size_t size);
int unlink(const char *path);

#endif
