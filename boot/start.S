.section ".text.boot"
.global _start

_start:
    // Firmware entrega ponteiro DTB em x0 (AArch64).
    mov x20, x0

    // Habilita FP/SIMD (NEON) antes de entrar em C.
    // EMULib/Sound.c pode gerar instrucoes SIMD mesmo em codigo "simples".
    mrs x1, CurrentEL
    cmp x1, #0x8              // EL2
    b.eq 0f
    cmp x1, #0x4              // EL1
    b.eq 1f
    b 2f
0:
    // EL2: limpa trap de FP/SIMD em CPTR_EL2
    mrs x2, cptr_el2
    bic x2, x2, #(1 << 10)    // TFP=0
    msr cptr_el2, x2
    // E habilita acesso em EL1/EL0 (caso transicione depois)
    mrs x2, cpacr_el1
    orr x2, x2, #(3 << 20)    // FPEN=0b11
    msr cpacr_el1, x2
    isb
    b 2f
1:
    // EL1: habilita acesso FP/SIMD em EL1/EL0
    mrs x2, cpacr_el1
    orr x2, x2, #(3 << 20)    // FPEN=0b11
    msr cpacr_el1, x2
    isb
2:

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
