.section .rodata
.balign 16

.global fmsx_embedded_msx_rom_start
.global fmsx_embedded_msx_rom_end
fmsx_embedded_msx_rom_start:
/* Project policy: fixed static fallback BIOS from roms/cbios. */
.incbin "../roms/cbios/cbios_main_msx1.rom"
fmsx_embedded_msx_rom_end:
