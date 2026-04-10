#ifndef MSXBARE_CIRCLE_MSXBARE_FMSX_INITRAMFS_H
#define MSXBARE_CIRCLE_MSXBARE_FMSX_INITRAMFS_H

#ifdef __cplusplus
extern "C" {
#endif

unsigned fmsx_initramfs_mount(void);
unsigned fmsx_initramfs_mount_boot_minimal(void);
unsigned fmsx_initramfs_mount_remaining(void);
unsigned fmsx_initramfs_files_mounted(void);

#ifdef __cplusplus
}
#endif

#endif
