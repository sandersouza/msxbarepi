.section .rodata
.balign 16

#ifndef COMBO_EMBEDDED_BIOS_PATH
#define COMBO_EMBEDDED_BIOS_PATH "../roms/cbios/cbios_main_msx1_br.rom"
#endif

.global fmsx_embedded_msx_rom_start
.global fmsx_embedded_msx_rom_end
fmsx_embedded_msx_rom_start:
.incbin COMBO_EMBEDDED_BIOS_PATH
fmsx_embedded_msx_rom_end:
