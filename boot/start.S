.section ".text.boot"
.global _start

_start:
    // Firmware entrega ponteiro DTB em x0 (AArch64).
    mov x20, x0

    // Stack pointer no topo reservado pelo linker
    ldr x0, =__stack_top
    mov sp, x0

    // Limpa BSS
    ldr x0, =__bss_start
    ldr x1, =__bss_end
1:
    cmp x0, x1
    b.ge 2f
    str xzr, [x0], #8
    b 1b
2:
    mov x0, x20
    bl kernel_main

hang:
    wfe
    b hang
