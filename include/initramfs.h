#ifndef INITRAMFS_H
#define INITRAMFS_H

#include <stdint.h>

typedef struct {
  const uint8_t *data;
  uint32_t size;
} initramfs_file_t;

void initramfs_mount(const uint8_t *data, uint32_t size);
int initramfs_find(const char *path, initramfs_file_t *out);

#endif
