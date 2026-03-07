.section .rodata
.align 4

.global fmsx_embedded_initramfs_start
.global fmsx_embedded_initramfs_end
fmsx_embedded_initramfs_start:
/* Project policy: initramfs is external on SD; keep kernel embedding disabled. */
#if 0
.incbin "../sdcard/msx.cpio"
#endif
fmsx_embedded_initramfs_end:
