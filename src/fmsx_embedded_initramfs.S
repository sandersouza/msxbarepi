.section .rodata
.align 4

#ifndef MSXBARE_EMBED_INITRAMFS
#define MSXBARE_EMBED_INITRAMFS 0
#endif

.global fmsx_embedded_initramfs_start
.global fmsx_embedded_initramfs_end
fmsx_embedded_initramfs_start:
#if MSXBARE_EMBED_INITRAMFS
.incbin "../sdcard/msx.cpio"
#endif
fmsx_embedded_initramfs_end:
