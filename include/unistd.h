#ifndef UNISTD_H
#define UNISTD_H

int chdir(const char *path);
char *getcwd(char *buf, int size);
int unlink(const char *path);

#endif
