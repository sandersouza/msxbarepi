.section .rodata
.align 4

.global fmsx_embedded_initramfs_start
.global fmsx_embedded_initramfs_end
fmsx_embedded_initramfs_start:

#ifndef MSXBARE_EMBED_INITRAMFS
#define MSXBARE_EMBED_INITRAMFS 1
#endif

#ifndef MSXBARE_EMBED_INITRAMFS_PATH
#define MSXBARE_EMBED_INITRAMFS_PATH "../build/initramfs/msx-embedded.cpio"
#endif

#if MSXBARE_EMBED_INITRAMFS
.incbin MSXBARE_EMBED_INITRAMFS_PATH
#endif

fmsx_embedded_initramfs_end:
