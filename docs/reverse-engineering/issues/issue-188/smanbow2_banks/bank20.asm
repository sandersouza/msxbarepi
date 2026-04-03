; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank20.asm /tmp/smanbow2_bank.bin

	org 04000h

	nop
	nop
	inc (hl)
	inc b
	nop
	nop
	inc bc
	nop
	inc b
	dec bc
	daa
	dec b
	ld (hl),005h
	inc sp
	rrca
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	inc (hl)
	inc b
	inc bc
	nop
	add hl,bc
	dec bc
	cpl
l4023h:
	dec b
	inc (hl)
	dec b
	nop
	nop
	inc sp
	dec bc
	inc bc
	nop
	nop
	nop
	ld h,a
	inc bc
	ld h,a
	inc bc
	nop
	nop
	ld h,a
	ld (bc),a
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,0310bh
	dec b
	inc (hl)
	dec b
	jr z,l4097h
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	daa
	rrca
	nop
	nop
	inc bc
l4097h:
	nop
	nop
	nop
	inc sp
	dec b
	ld (hl),005h
	dec h
	rrca
	jr z,l40adh
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	inc hl
	rrca
	daa
l40adh:
	dec bc
	inc bc
	nop
	nop
	nop
	inc (hl)
	dec b
	jr c,l40bbh
	dec h
	rrca
	dec h
	dec bc
	inc bc
l40bbh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	ex af,af'
	inc hl
	dec bc
	inc bc
	nop
	ld bc,03d0bh
	dec b
	ld b,b
	dec b
	ld sp,0250fh
	dec bc
	ld (bc),a
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld h,a
	inc bc
	ld h,a
	ex af,af'
	inc bc
	nop
	dec bc
	dec bc
	nop
	nop
	nop
	nop
	nop
	nop
	ld sp,0030bh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	inc bc
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	dec bc
	ld sp,03405h
	dec b
	dec l
	rrca
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	dec l
	rrca
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec l
	rrca
	dec l
	dec bc
	ld bc,l6700h
	jr nc,l4167h
l4167h:
	nop
	nop
	nop
	ld h,a
	inc b
	dec l
	dec bc
	inc bc
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	ld l,h
	ld (bc),a
	dec l
	dec bc
	inc bc
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	ld l,h
	ld (bc),a
	ld h,a
	inc b
	inc bc
	nop
	add hl,bc
	dec bc
	ld sp,03405h
	dec b
	dec l
	rrca
	ld l,h
	ld (bc),a
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	inc bc
	nop
	nop
	nop
	cpl
	dec b
	inc sp
	dec b
	inc l
	rrca
	dec l
	dec bc
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	dec l
	dec b
	ld sp,02a05h
	rrca
	inc l
	dec bc
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,00fh
	inc (hl)
	inc b
	jr c,$+6
	dec h
	rrca
	ld hl,(0020bh)
	nop
	ld b,00fh
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld h,a
	inc bc
	nop
	nop
	ld (bc),a
	nop
	ld b,00fh
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	dec h
	dec bc
	ld (bc),a
	nop
	ld h,c
	nop
	ld l,h
	ld bc,0016ch
	ld l,h
	ld (bc),a
	ld h,a
	inc bc
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	nop
	nop
	ld (de),a
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ex af,af'
	rrca
	ld (hl),004h
	add hl,sp
	inc b
	daa
	rrca
	ld l,h
	ld (bc),a
	ld (bc),a
	nop
	ex af,af'
	rrca
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld h,a
	inc bc
	nop
	nop
	ld (bc),a
	nop
	ex af,af'
	rrca
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	daa
	dec bc
	rlca
	nop
	ld h,c
	nop
	ld l,h
	ld bc,0016ch
	ld l,h
	ld (bc),a
	ld h,a
	inc bc
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	nop
	nop
	dec bc
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld (bc),a
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00600h
	dec bc
	nop
	nop
	ld l,h
	ld bc,00367h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00001h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	sub b
	rlca
	rrca
	nop
	nop
	nop
	nop
	ld h,a
	inc b
	nop
	nop
	ld bc,l6100h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00000h
	rlca
	dec bc
	nop
	nop
	nop
	nop
	ld h,a
	rlca
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,a
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,01300h
	dec bc
	nop
	nop
	ld l,h
	ld bc,00f2bh
	cpl
	ld b,003h
	nop
	nop
	nop
	ld h,a
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00d0bh
	dec c
	ld l,h
	inc bc
	ld h,c
	nop
	ld h,c
	nop
	ld bc,l6115h
	nop
	ld h,c
	nop
	dec h
	ld a,(bc)
	ld h,d
	add hl,de
	nop
	nop
	nop
	nop
	ld bc,00d0bh
	dec c
	ld hl,(0000ah)
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	inc l
	ld a,(bc)
	dec h
	rlca
	nop
	nop
	ld bc,00d00h
	dec bc
	ld bc,0000dh
	nop
	ld hl,(00007h)
	nop
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	ld h,a
	ld bc,0072ch
	dec h
	dec b
	nop
	nop
	nop
	nop
	ld bc,0000dh
	nop
	nop
	nop
	ld hl,(00205h)
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld h,a
	ld bc,0052ch
	ld bc,00100h
	dec bc
	dec c
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	ld h,a
	ld bc,00001h
	nop
	nop
	nop
	nop
	inc l
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	inc bc
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00d0bh
	dec c
	inc l
	ld a,(bc)
	inc l
	rlca
	nop
	nop
	ld bc,00000h
	nop
	ld h,c
	nop
	ld hl,(0000ah)
	nop
	ld h,c
	nop
	inc bc
	nop
	nop
	nop
	dec c
	dec c
	inc l
	ld a,(bc)
	inc l
	rlca
	inc l
	dec b
	ld bc,00000h
	nop
	ld h,c
	nop
	ld sp,02a0ah
	rlca
	nop
	nop
	inc bc
	nop
	dec c
	dec bc
	dec c
	dec c
	inc l
	ld a,(bc)
	inc l
	rlca
	inc l
	dec b
	ld (bc),a
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	ld sp,02a07h
	dec b
	ld bc,00000h
	nop
	dec c
	dec c
	ld h,a
	ld bc,0072ch
	inc l
	dec b
	nop
	nop
	ld bc,l610bh
	nop
	nop
	nop
	nop
	nop
	ld sp,00105h
	nop
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld bc,0052ch
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,00bh
	dec c
l4503h:
	dec c
	ld hl,(l6c0ah)
	ld (bc),a
l4508h:
	ld h,a
	ld (bc),a
	ld bc,l6100h
	nop
	ld h,c
	nop
	jr z,$+12
	nop
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	nop
	nop
	ld bc,0270dh
	ld a,(bc)
	ld hl,(00007h)
	nop
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	inc hl
	ld a,(bc)
	jr z,l4533h
	nop
	nop
	ld bc,00600h
	dec bc
	dec c
l4533h:
	dec c
	ld h,a
	ld (bc),a
	daa
	rlca
	ld hl,(00305h)
	nop
	ld (de),a
	dec bc
	ld h,c
	nop
	nop
	nop
	inc hl
	rlca
	jr z,$+7
l4546h:
	inc bc
	nop
	nop
	nop
	ld bc,0000dh
	nop
	ld h,a
	ld (bc),a
	daa
	dec b
	ld (bc),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	inc hl
	dec b
	ld bc,00600h
	dec bc
	ld bc,l6c0dh
	ld bc,00000h
	ld h,a
	ld (bc),a
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	inc hl
	ld a,(bc)
	ld l,h
	ld bc,00000h
	inc bc
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,0000bh
	nop
	ld hl,(l6c0ah)
	ld bc,0016ch
	ld bc,00000h
	nop
	nop
	nop
	jr z,l45dch
	inc hl
	rlca
	ld l,h
	ld bc,0001bh
	dec c
	dec bc
	nop
	nop
l45dch:
	daa
	ld a,(bc)
	ld hl,(l6c07h)
	ld bc,00000h
	nop
	nop
	nop
	nop
	inc hl
	ld a,(bc)
	jr z,l45f3h
	inc hl
	dec b
	ld bc,00100h
	dec bc
	dec h
l45f3h:
	rlca
	dec h
	ld a,(bc)
	daa
	rlca
	ld hl,(00205h)
	nop
	nop
	nop
	daa
	rlca
	ld h,a
	ld (bc),a
	inc hl
l4603h:
	rlca
l4604h:
	jr z,$+7
	ld bc,00100h
	dec bc
	jr z,l4613h
	nop
	nop
	dec h
	rlca
	daa
	dec b
	inc bc
l4613h:
	nop
	nop
	nop
	ld hl,(00007h)
	nop
	ld h,a
	ld (bc),a
	inc hl
	dec b
	inc bc
	nop
l4620h:
	dec c
	dec bc
	daa
	rlca
	nop
	nop
	nop
	nop
	dec h
	dec b
	ld bc,00000h
	nop
	ld h,a
	ld b,000h
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	nop
	ld bc,0000bh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rlca
	dec bc
	nop
	nop
	inc l
	nop
	nop
	nop
	ld l,e
	ld bc,00001h
	ld h,c
	nop
	nop
	nop
	ld h,a
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	rlca
	dec bc
	inc l
	nop
	ld l,e
	ld bc,00000h
	ld l,e
	ld bc,00001h
	ld h,c
	nop
	ld h,a
	inc b
	ld l,e
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	inc de
	dec bc
	ld l,e
	ld bc,00000h
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	ld l,e
	ld bc,00000h
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld h,e
	ld (bc),a
	ld h,e
	ld (bc),a
	inc bc
	nop
	nop
	nop
	ld l,e
	ld bc,0016bh
	nop
	nop
	nop
	nop
	nop
	nop
	rlca
	dec bc
	nop
	nop
	ld l,e
	ld bc,00f2ah
	ld sp,00106h
	nop
	nop
l46edh:
	nop
	ld l,e
	ld bc,l5066h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00000h
	jr z,l470fh
	cpl
	ld b,002h
	nop
	nop
	nop
	ld h,d
	ld b,062h
	dec d
	nop
	nop
	nop
	nop
	ld (bc),a
l470fh:
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,0280bh
	dec b
	inc l
	dec b
	dec h
	rrca
	ld l,h
	ld (bc),a
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	nop
	ld bc,00d00h
	dec bc
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	nop
	nop
	dec h
	dec bc
l4762h:
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	ld bc,00100h
	dec bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld bc,0000bh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	dec c
	dec bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00100h
	dec bc
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,0001ah
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	inc hl
	ld b,001h
	xor l
	nop
	dec b
	ld (bc),a
	inc b
	inc b
	rlca
	rlca
	ld h,006h
	rlca
	ex af,af'
	ld c,h
	ld b,(hl)
	ld l,c
	defb 0edh ;next byte illegal after ed
	dec b
	rlca
	rlca
	ex af,af'
	ld (bc),a
	rlca
	inc b
	ex af,af'
	ld b,007h
	rlca
	ld b,002h
	ld (bc),a
	nop
	defb 0edh ;next byte illegal after ed
	inc b
	dec b
	ld b,027h
	inc h
	inc bc
	nop
	nop
	inc b
	inc b
	nop
	ex af,af'
	ld bc,0ed07h
	nop
	ld b,005h
	inc bc
	nop
	ld b,003h
	daa
	dec b
	ex af,af'
	inc b
	daa
	dec b
	ld bc,005edh
	ld h,002h
	nop
	ex af,af'
	ld b,006h
	rlca
	ld c,b
	ld b,005h
	ld (bc),a
	dec b
	defb 0edh ;next byte illegal after ed
	inc b
	nop
	nop
	inc b
	ld (bc),a
	ld bc,00705h
	ld h,026h
	nop
	ld b,b
	inc bc
	defb 0edh ;next byte illegal after ed
	nop
	rlca
	daa
	ld b,008h
	dec b
	ld b,006h
	dec b
	dec b
	daa
	ld b,007h
	defb 0edh ;next byte illegal after ed
	ld bc,00305h
	nop
	daa
	ld h,(hl)
	ld b,000h
	ld bc,00408h
	rlca
	defb 0edh ;next byte illegal after ed
	ld b,003h
	inc bc
	nop
	jr nz,l4885h
	daa
	dec b
	ld b,005h
	dec b
l4885h:
	ld bc,00502h
	defb 0edh ;next byte illegal after ed
	nop
	rlca
	dec b
	ex af,af'
	inc b
	add hl,hl
	inc bc
	ld b,006h
	rlca
	inc bc
	ld (bc),a
	ld h,000h
	defb 0edh ;next byte illegal after ed
	ld bc,00207h
	jr z,l48c0h
	rlca
	inc b
	inc b
	inc bc
	nop
	ld (bc),a
	ld bc,00601h
	defb 0edh ;next byte illegal after ed
	rlca
	inc bc
	ex af,af'
	ld h,006h
	inc b
	dec b
	dec b
	ld b,003h
	ex af,af'
	ex af,af'
	ld b,007h
	rlca
	defb 0edh ;next byte illegal after ed
	inc b
	inc b
	nop
	rlca
	dec b
	ld h,008h
	dec b
	dec b
l48c0h:
	ld bc,l4503h
	ld h,0edh
	ld bc,00203h
	ld b,006h
	inc h
	ex af,af'
	inc b
	nop
	dec b
	ld (bc),a
	ld (bc),a
	dec b
	rlca
	defb 0edh ;next byte illegal after ed
	rlca
	dec b
	ld h,006h
	nop
	daa
	ld b,005h
	ex af,af'
	rlca
	daa
	ld (bc),a
	ld b,b
	in b,(c)
	dec h
	dec b
	ld h,007h
	ld b,004h
	rlca
	ld bc,0ed05h
	dec h
	daa
	ex af,af'
	ex af,af'
	inc b
	rlca
	dec b
	ld bc,00002h
	ld b,024h
	daa
	defb 0edh ;next byte illegal after ed
	ld bc,00600h
	inc b
	rlca
	ld b,l
	ex af,af'
	nop
	inc b
	inc h
	rlca
	inc bc
	defb 0edh ;next byte illegal after ed
	ld bc,00600h
	rlca
	daa
	dec b
	inc b
	ld b,007h
	add hl,bc
	inc b
	rlca
	dec b
	ld b,000h
	defb 0edh ;next byte illegal after ed
	jr z,l493dh
	dec b
	ld h,000h
	inc b
	ex af,af'
	ld b,007h
	rlca
	inc b
	ld b,001h
	defb 0edh ;next byte illegal after ed
	rlca
	inc b
	ex af,af'
	ld b,009h
	dec h
	ex af,af'
	rlca
l492eh:
	ld (bc),a
	ld b,024h
	rlca
	ld c,b
	dec b
	defb 0edh ;next byte illegal after ed
	ld b,024h
	ld h,020h
	rlca
	ex af,af'
	dec b
	rlca
l493dh:
	inc bc
	dec b
	jr nz,l492eh
	ld bc,00506h
	rlca
	ld b,a
	dec b
	nop
	dec b
	ex af,af'
	rlca
	rlca
	ld b,005h
	defb 0edh ;next byte illegal after ed
	ld (bc),a
	jr z,l4957h
	inc bc
	dec b
	ld b,024h
	ex af,af'
l4957h:
	inc h
	nop
	rlca
	dec b
	ld (000edh),hl
	inc bc
	rlca
	rlca
	dec b
	ld b,000h
	dec b
	ex af,af'
	daa
	rlca
	inc b
	dec h
	nop
	defb 0edh ;next byte illegal after ed
	ld h,006h
	dec b
	inc bc
	jr nz,l4972h
l4972h:
	ld b,002h
	rlca
	ld b,006h
	ld (bc),a
	dec b
	defb 0edh ;next byte illegal after ed
	nop
	inc b
	ld (bc),a
	ld b,006h
	daa
	daa
	dec b
	ld h,001h
	nop
	rlca
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	jr z,$+103
	dec b
	ld bc,00800h
	inc b
	rlca
	ld bc,00205h
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	ld b,007h
	rlca
	inc b
	ld b,(hl)
	inc bc
	daa
	ld (bc),a
	nop
	ld h,006h
	inc b
	defb 0edh ;next byte illegal after ed
	ld bc,00702h
	dec b
	ld b,000h
	inc b
	daa
	ld b,023h
	ld b,008h
	ld b,007h
	defb 0edh ;next byte illegal after ed
	ld bc,00505h
	inc b
	ex af,af'
	ld bc,00007h
	nop
	dec b
	ld h,003h
	ld bc,00005h
	defb 0edh ;next byte illegal after ed
	nop
	dec b
	dec b
	rlca
	inc b
	ex af,af'
	inc bc
	rlca
	nop
	ld b,004h
	rlca
	dec b
	jr z,l49d6h
	defb 0edh ;next byte illegal after ed
	inc b
	rlca
	ld bc,00206h
l49d6h:
	dec b
	dec b
	daa
	ld h,005h
	inc b
	nop
	ld (bc),a
	inc b
	defb 0edh ;next byte illegal after ed
	dec h
	daa
	inc hl
	inc b
	ld b,006h
	rlca
	dec b
	dec b
	ld bc,00501h
	ld b,0edh
	ld b,024h
	nop
	dec b
	rlca
	rlca
	inc b
	dec b
	ld h,008h
	ld b,004h
	rlca
	rlca
	defb 0edh ;next byte illegal after ed
	ex af,af'
	ld (bc),a
	rlca
	nop
	ex af,af'
	dec b
	ld b,003h
	nop
	ld b,004h
	rlca
	inc bc
	inc b
	nop
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	dec b
	dec h
	rlca
	ld b,001h
	rlca
	inc bc
	jr z,l4a1dh
	inc b
	ld b,000h
	inc b
	dec b
	defb 0edh ;next byte illegal after ed
l4a1dh:
	nop
	daa
	ld bc,00400h
	ld bc,00402h
	ld b,l
	ex af,af'
	add hl,bc
	ex af,af'
	ld bc,l46edh
	inc b
	rlca
	ld b,021h
	ld (bc),a
	rlca
	dec b
	ex af,af'
	nop
	rlca
	ld bc,0ed09h
	inc b
	ld c,b
	nop
	ld b,005h
	ld b,026h
	rlca
	ld bc,00704h
	dec b
	ld bc,000edh
	ld b,006h
	nop
	inc b
	ld b,007h
	ld bc,00504h
	rlca
	ld b,003h
	inc b
	ld b,007h
	defb 0edh ;next byte illegal after ed
	dec b
	dec b
	nop
	ld h,006h
	inc b
	ld bc,00305h
	rlca
	inc b
	dec b
	jr nz,l4a6ah
	defb 0edh ;next byte illegal after ed
	ld b,006h
	rlca
l4a6ah:
	dec b
	ld b,004h
	jr nz,l4a77h
	add hl,bc
	ld bc,00008h
	dec b
	ld bc,0ed01h
l4a77h:
	ld b,004h
	jr z,$+5
	nop
	rlca
	ld bc,02728h
	dec b
	ld b,003h
	rlca
	defb 0edh ;next byte illegal after ed
	rlca
	ld b,004h
	ld (bc),a
	ld b,006h
	rlca
	inc b
	ld b,046h
	ex af,af'
	ld b,008h
	rlca
	defb 0edh ;next byte illegal after ed
	ld b,005h
	ex af,af'
	ld b,006h
	inc bc
	ex af,af'
	dec b
	dec b
	inc b
	rlca
	nop
	dec b
	dec b
	inc b
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	inc bc
	ld b,001h
	dec b
	dec b
	rlca
	inc bc
	ld b,006h
	ex af,af'
	inc bc
	dec b
	ld (bc),a
	rlca
	ld b,005h
	defb 0edh ;next byte illegal after ed
	ld bc,00502h
	rlca
	rlca
	dec b
	ld b,003h
	dec b
	rlca
	ld b,006h
	inc b
	jr nz,l4acah
	defb 0edh ;next byte illegal after ed
	ld b,006h
	inc bc
	rlca
l4acah:
	nop
	dec b
	inc bc
	rlca
	daa
	ex af,af'
	rlca
	ld (bc),a
	dec b
	nop
	ld h,0edh
	ld h,000h
	ld (bc),a
	inc bc
	ld b,005h
	rlca
	nop
	inc b
	rlca
	dec b
	ld c,b
	nop
	defb 0edh ;next byte illegal after ed
	ld b,003h
	daa
	dec b
	nop
	ld h,004h
	nop
	nop
	rlca
	inc b
	nop
	ld h,0edh
	rlca
	dec b
	rlca
	daa
	inc bc
	dec h
	inc b
	ld b,003h
	inc b
	ld b,007h
	dec b
	defb 0edh ;next byte illegal after ed
	inc b
	rlca
	rlca
	ld b,004h
	ld bc,00606h
	dec b
	ld (bc),a
	nop
	dec b
	ld b,007h
	inc b
	ld b,0edh
	inc bc
	daa
	ld b,004h
	dec b
	nop
	ld h,005h
	inc b
	ld (bc),a
	ld (bc),a
	inc bc
	dec b
	daa
	defb 0edh ;next byte illegal after ed
	ld b,004h
	ld b,002h
	rlca
	ld b,008h
	inc b
	daa
	nop
	ld hl,l4508h
	defb 0edh ;next byte illegal after ed
	nop
	ld b,005h
	nop
	daa
	ld b,001h
	ld b,006h
	rlca
	nop
	dec b
	ld b,0edh
	ld (00805h),hl
	nop
	rlca
	rlca
	inc b
	ld b,006h
	inc h
	dec b
	inc b
	jr nz,$+10
	defb 0edh ;next byte illegal after ed
	ld b,026h
	rlca
	dec b
	ex af,af'
	nop
	ld h,024h
	nop
	inc hl
	rlca
	defb 0edh ;next byte illegal after ed
	dec h
	ld (bc),a
	rlca
	ld h,005h
	ld h,007h
	inc h
	dec b
	rlca
	dec b
	dec b
	defb 0edh ;next byte illegal after ed
	nop
	inc bc
	inc b
	dec h
	ld b,004h
	inc bc
	ld b,026h
	ex af,af'
	rlca
	ld bc,00606h
	defb 0edh ;next byte illegal after ed
	rlca
	dec b
	inc bc
	nop
	rlca
	inc b
	ld b,000h
	inc b
	ex af,af'
	dec h
	ld b,007h
	inc b
	inc bc
	defb 0edh ;next byte illegal after ed
	ld b,005h
	nop
	ld b,047h
	nop
	ld b,001h
	ex af,af'
	nop
	dec b
	daa
	nop
	defb 0edh ;next byte illegal after ed
	inc bc
	ld b,047h
	inc b
	ld b,005h
	jr z,l4b99h
l4b99h:
	ld (bc),a
	ld b,005h
	rlca
	nop
	defb 0edh ;next byte illegal after ed
	ld (bc),a
	rlca
	nop
	dec b
	inc h
	rlca
	inc bc
	ld b,(hl)
	rlca
	inc b
	rlca
	rlca
	inc b
	defb 0edh ;next byte illegal after ed
	inc b
	dec b
	ld b,006h
	ld (bc),a
	nop
	dec b
	dec b
	rlca
	inc bc
	ld b,004h
	rlca
	rlca
	ld h,023h
	defb 0edh ;next byte illegal after ed
	rlca
	ld bc,00006h
	ex af,af'
	dec b
	daa
	ld (bc),a
	ld b,002h
	dec b
	dec b
	ex af,af'
	defb 0edh ;next byte illegal after ed
	ld bc,00607h
	ex af,af'
	nop
	rlca
	dec b
	ld b,003h
	ld b,a
	inc h
	rlca
	dec b
	defb 0edh ;next byte illegal after ed
	inc b
	ex af,af'
	nop
	rlca
	dec b
	nop
	ld h,(hl)
	ld (bc),a
	inc bc
	dec b
	rlca
	inc bc
	ex af,af'
	defb 0edh ;next byte illegal after ed
	dec b
	ld b,007h
	inc bc
	ld b,007h
	nop
	ld b,006h
	dec b
	inc bc
	rlca
	ex af,af'
	inc b
	rlca
	rlca
	defb 0edh ;next byte illegal after ed
	ex af,af'
	ld bc,00527h
	nop
	ld b,006h
	ex af,af'
	inc bc
	rlca
	dec b
	ex af,af'
	ld b,005h
	ld bc,006edh
	inc b
	ex af,af'
	ld bc,00427h
	rlca
	dec b
	ld bc,00500h
	ld b,007h
	ld bc,0ed06h
	inc b
	rlca
	nop
	ld bc,00624h
	nop
	ld b,007h
	inc b
	ld h,007h
	inc bc
	rlca
	defb 0edh ;next byte illegal after ed
	ld bc,02605h
	ld (bc),a
	ld b,002h
	ex af,af'
	inc b
	rlca
	ld c,b
	ld bc,0ed20h
	rlca
	ld (bc),a
	dec b
	ld b,020h
	jr z,$+5
	rlca
	rlca
	ld bc,00706h
	nop
	ld b,0edh
	daa
	nop
	ld b,006h
	dec b
	ex af,af'
	nop
	dec b
	inc h
	ld b,025h
	ex af,af'
	dec b
	defb 0edh ;next byte illegal after ed
	ld h,006h
	inc bc
	dec b
	rlca
	rlca
	dec b
	ld bc,00306h
	dec b
	inc b
	inc bc
	rlca
	ld b,0edh
	ld b,005h
	dec b
	ld b,024h
	ld bc,00506h
	dec b
	inc bc
	ex af,af'
	daa
	ld (bc),a
	ld h,0edh
	inc b
	ld b,001h
	daa
	ld (bc),a
	jr nz,l4ca0h
	ld (bc),a
	rlca
	ld h,004h
	defb 0edh ;next byte illegal after ed
	jr nz,l4c86h
	ld b,001h
	rlca
	nop
	jr z,$+4
	dec b
l4c86h:
	ld b,006h
	jr nz,l4cb1h
	defb 0edh ;next byte illegal after ed
	inc bc
	ld b,007h
	nop
	ld b,006h
	nop
	rlca
	ld h,026h
	inc b
	rlca
	nop
	defb 0edh ;next byte illegal after ed
	ld h,006h
	inc b
	rlca
	ld b,000h
	inc bc
l4ca0h:
	dec b
	ld h,000h
	inc b
	ex af,af'
	ld bc,0ed06h
	inc b
	rlca
	ld bc,00303h
	rlca
	ld bc,00006h
l4cb1h:
	ex af,af'
	inc b
	ld b,023h
	ex af,af'
	inc b
	defb 0edh ;next byte illegal after ed
	ld b,026h
	ld bc,00525h
	ld b,004h
	ld b,a
	ld bc,l4620h
	defb 0edh ;next byte illegal after ed
	inc b
	ld b,047h
	inc b
	ld hl,00408h
	rlca
	ld h,001h
	defb 0edh ;next byte illegal after ed
	inc b
	inc b
	rlca
	ld (bc),a
	dec b
	ld b,l
	inc b
	ld h,006h
	ld (bc),a
	daa
	jr nz,$-17
	ex af,af'
	ld (bc),a
	ld b,007h
	nop
	ld b,006h
	nop
	ex af,af'
	ld (bc),a
	daa
	ld b,021h
	ex af,af'
	defb 0edh ;next byte illegal after ed
	dec b
	ld b,023h
	dec b
	ld b,046h
	inc b
	ex af,af'
	ld b,003h
	ex af,af'
	inc b
	defb 0edh ;next byte illegal after ed
	dec b
	inc bc
	rlca
	inc b
	dec b
	rlca
	daa
	inc b
	dec b
	nop
	rlca
	ld bc,02706h
	inc b
	defb 0edh ;next byte illegal after ed
	dec b
	inc bc
	rlca
	nop
	jr z,l4d11h
	ld bc,00307h
l4d11h:
	dec b
	ld b,006h
	ld b,a
	ld bc,000edh
	dec h
	ld b,(hl)
	inc h
	rlca
	dec b
	ex af,af'
	nop
	rlca
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	dec b
	ld b,023h
	jr z,l4d2ch
	ld h,006h
	jr nz,$+10
	rlca
l4d2ch:
	jr z,l4d2eh
l4d2eh:
	defb 0edh ;next byte illegal after ed
	ld (bc),a
	rlca
	inc h
	ld b,005h
	jr nz,l4d3eh
	ld b,a
	ld b,001h
	dec b
	defb 0edh ;next byte illegal after ed
	nop
	ld b,006h
l4d3eh:
	dec h
	dec b
	rlca
	nop
	inc b
	ld b,005h
	dec b
	inc b
	ex af,af'
	nop
	ld b,0edh
	ld b,025h
	rlca
	dec b
	inc b
	inc b
	ld b,a
	dec b
	ld bc,00606h
	rlca
	inc b
	defb 0edh ;next byte illegal after ed
	ld b,000h
	daa
	inc bc
	inc b
	ld b,003h
	inc bc
	inc b
	ld h,l
	ld b,007h
	inc b
	defb 0edh ;next byte illegal after ed
	dec b
	inc h
	ld b,007h
	inc bc
	ex af,af'
	ld (bc),a
	rlca
	dec b
	inc b
	inc bc
	ld bc,00325h
	defb 0edh ;next byte illegal after ed
	ld b,004h
	daa
	inc hl
	dec b
	ld b,001h
	daa
	dec h
	dec b
	ld h,0edh
	ld bc,00506h
	ex af,af'
	nop
	dec b
	dec h
	ld b,007h
	inc b
	inc bc
	nop
	ex af,af'
	dec b
	defb 0edh ;next byte illegal after ed
	ld b,002h
	rlca
	dec b
	inc b
	ex af,af'
	nop
	rlca
	inc bc
	dec h
	ld h,a
	ld bc,0ed00h
	inc b
	ex af,af'
	ld (bc),a
	rlca
	ld hl,06706h
	inc b
	ld b,005h
	ld bc,006edh
	dec b
	rlca
	inc hl
	ex af,af'
	rlca
	ld b,046h
	inc b
	jr nz,$-119
	inc bc
	defb 0edh ;next byte illegal after ed
	inc b
	jr nz,l4dddh
	ex af,af'
	rlca
	inc b
	dec h
	ld b,027h
	defb 0edh ;next byte illegal after ed
	inc b
	jr nz,l4dedh
	inc bc
	dec b
	ld b,006h
	inc bc
	rlca
	inc b
	ld (bc),a
	ex af,af'
	nop
	defb 0edh ;next byte illegal after ed
	ld h,003h
	ld bc,00008h
	inc bc
	daa
	ld (bc),a
	daa
	inc b
	nop
	ld h,003h
l4dddh:
	defb 0edh ;next byte illegal after ed
	dec b
	daa
	ld (bc),a
	nop
	dec b
	ld b,002h
	daa
	inc b
	ld b,026h
	dec b
	defb 0edh ;next byte illegal after ed
	ld h,001h
l4dedh:
	dec b
	dec b
	ld b,026h
	inc b
	ld (bc),a
	inc b
	ld bc,04506h
	rlca
	defb 0edh ;next byte illegal after ed
	ld b,005h
	ld b,026h
	rlca
	ld b,004h
	inc b
	daa
	dec b
	inc b
	dec h
	ld b,0edh
	ld b,a
	nop
	inc b
	inc hl
	ld b,007h
	ld h,025h
	ld h,a
	inc bc
	defb 0edh ;next byte illegal after ed
	nop
	ld (bc),a
	dec b
	ld (bc),a
	ld b,003h
	inc b
	rlca
	ld b,004h
	rlca
	dec b
	inc h
	defb 0edh ;next byte illegal after ed
	rlca
	ex af,af'
	ld (bc),a
	ld b,025h
	dec b
	nop
	daa
	ld (bc),a
	dec b
	dec b
	ld b,003h
	defb 0edh ;next byte illegal after ed
	dec b
	dec b
	ld b,026h
	rlca
	ld b,005h
	inc b
	ld b,006h
	dec b
	rlca
	inc bc
	inc b
	ld b,0edh
	dec b
	rlca
	inc b
	ld b,005h
	dec b
	ld h,a
	nop
	ld bc,00602h
	ld b,025h
	ld i,a
	ld bc,00605h
	inc bc
	dec b
	daa
	inc b
	inc bc
	dec h
	daa
	defb 0edh ;next byte illegal after ed
	inc h
	ld b,007h
	ld b,004h
	daa
	nop
	ld bc,00508h
	ld b,006h
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	rlca
	inc bc
	ld h,046h
	dec b
	nop
	rlca
	inc b
	ld b,007h
	inc b
	ld b,061h
	defb 0edh ;next byte illegal after ed
	rlca
	ex af,af'
	rlca
	dec b
	ld h,026h
	inc bc
	ld b,a
	ld b,002h
	defb 0edh ;next byte illegal after ed
	dec h
	ld b,024h
	rlca
	dec h
	ld h,001h
	rlca
	inc b
	ld b,003h
	defb 0edh ;next byte illegal after ed
	rlca
	dec b
	ld bc,00606h
	dec b
	ld b,a
	ld bc,00405h
	ld h,003h
	ld b,0edh
	dec h
	dec b
	inc bc
	rlca
	jr nz,l4ea7h
	ld b,004h
	dec b
	dec h
	daa
	inc b
	defb 0edh ;next byte illegal after ed
	inc bc
l4ea7h:
	ld b,020h
	jr z,l4eb0h
	inc bc
	rlca
	ld (bc),a
	ld b,027h
l4eb0h:
	nop
	ld (bc),a
	ld b,0edh
	ld b,a
	inc bc
	nop
	inc bc
	dec b
	dec b
	inc b
	ld b,a
	nop
	ld (bc),a
	inc bc
	ld b,0edh
	dec b
	dec b
	inc b
	daa
	nop
	ld bc,00326h
	ld h,001h
	ld b,003h
	ld b,a
	defb 0edh ;next byte illegal after ed
	nop
	dec b
	nop
	ld b,003h
	rlca
	ld b,004h
	dec b
	dec b
	inc b
	ld b,027h
	ld bc,002edh
	inc b
	ld b,(hl)
	dec b
	inc h
	ld (bc),a
	rlca
	nop
	ex af,af'
	ld (bc),a
	daa
	inc b
	defb 0edh ;next byte illegal after ed
	ld bc,02008h
	rlca
	dec h
	ld b,007h
	ld bc,00506h
	rlca
	ld b,026h
	defb 0edh ;next byte illegal after ed
	dec b
	rlca
	inc b
	dec h
	rlca
	ld b,006h
	dec b
	daa
	inc bc
	dec b
	inc b
	rlca
	defb 0edh ;next byte illegal after ed
	ld bc,02606h
	dec b
	ld (bc),a
	rlca
	ld h,005h
	ld h,a
	dec b
	ld bc,0ed03h
	ld (bc),a
	dec b
	ld b,006h
	ld b,a
	ld (bc),a
	nop
	dec b
	ld b,004h
	inc b
	inc bc
	dec b
	defb 0edh ;next byte illegal after ed
	dec b
	rlca
	ld b,026h
	inc h
	daa
	inc bc
	jr nz,l4f31h
	rlca
	dec b
	dec b
	defb 0edh ;next byte illegal after ed
	ld b,004h
l4f31h:
	rlca
	dec b
	inc bc
	ld h,a
	inc b
	jr nz,l4f3bh
	ld b,006h
	nop
l4f3bh:
	defb 0edh ;next byte illegal after ed
	ex af,af'
	ld bc,00487h
	inc bc
	nop
	inc bc
	nop
	ex af,af'
	ld bc,00706h
	defb 0edh ;next byte illegal after ed
	inc bc
	ld h,025h
	dec h
	rlca
	ld h,086h
	dec b
	ld b,0edh
	ld (bc),a
	ld b,004h
	rlca
	ld (bc),a
	dec b
	dec h
	ld h,003h
	dec b
	inc b
	daa
	inc hl
	defb 0edh ;next byte illegal after ed
	inc bc
	ld h,005h
	ld b,002h
	daa
	dec b
	ld (bc),a
	ld b,006h
	rlca
	inc b
	defb 0edh ;next byte illegal after ed
	dec b
	ld b,a
	inc hl
	dec b
	ld b,027h
	inc bc
	inc b
	dec b
	rlca
	inc b
	dec b
	defb 0edh ;next byte illegal after ed
	rlca
	jr nz,l4f86h
	rlca
	ld b,004h
	daa
	ld (bc),a
	nop
	ex af,af'
	ld (bc),a
l4f86h:
	ld b,006h
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	daa
	inc bc
	ld (bc),a
	ld b,027h
	inc b
	ld hl,08708h
	nop
	inc bc
	defb 0edh ;next byte illegal after ed
	nop
	inc b
	dec h
	dec h
	daa
	inc bc
	ld (bc),a
	ld h,006h
	dec b
	defb 0edh ;next byte illegal after ed
	inc h
	ld b,067h
	ld bc,00203h
	inc b
	ld b,007h
	inc bc
	ld b,026h
	defb 0edh ;next byte illegal after ed
	inc b
	ld b,004h
	rlca
	dec b
	ld h,026h
	dec b
	ld b,a
	inc bc
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	inc b
	ld b,006h
	dec b
	dec b
	ld b,a
	ld bc,00605h
	inc b
	ex af,af'
	ld h,c
	rlca
	defb 0edh ;next byte illegal after ed
	ex af,af'
	rlca
	ex af,af'
	nop
	daa
	ld bc,00526h
	nop
	rlca
	dec b
	ld b,0edh
	ld b,000h
	ld b,a
	dec b
	ld (bc),a
	inc bc
	ld b,006h
	inc bc
	add a,a
	inc b
	nop
	defb 0edh ;next byte illegal after ed
	ld (bc),a
	inc h
	ld h,006h
	inc b
	daa
	ld bc,00603h
	inc b
	ld b,a
	defb 0edh ;next byte illegal after ed
	inc bc
	ld (bc),a
	nop
	ex af,af'
	ld bc,00407h
	ld b,006h
	inc bc
	daa
	ld bc,0ed03h
	ld b,004h
	jr z,l5000h
l5000h:
	ld bc,00307h
	ld b,006h
	inc bc
	rlca
	dec h
	ld b,047h
	defb 0edh ;next byte illegal after ed
	ld hl,l6625h
	ld b,003h
	inc b
	rlca
	inc bc
	ld h,0edh
	dec b
	rlca
	inc h
	ld b,027h
	nop
	inc b
	dec b
	ld b,004h
	daa
	ld bc,026edh
	inc b
	dec b
	inc bc
	rlca
	dec b
	inc b
	ld b,a
	ld bc,00103h
	ld b,005h
	defb 0edh ;next byte illegal after ed
	inc b
	ld b,006h
	ld bc,00207h
	ld b,005h
	inc b
	ld b,005h
	dec h
	ld b,005h
	daa
	defb 0edh ;next byte illegal after ed
	nop
	ld b,005h
	dec b
	rlca
	inc bc
	ld h,005h
	ld bc,00507h
	ld h,(hl)
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	dec b
	inc h
	ld b,a
	ld bc,00504h
	inc bc
	ld b,006h
	dec h
	inc b
	defb 0edh ;next byte illegal after ed
	daa
	ld bc,00603h
	ld h,005h
	ld hl,00047h
	inc bc
	defb 0edh ;next byte illegal after ed
	inc b
l5066h:
	ld h,a
	nop
	ld bc,02402h
	ld b,027h
	nop
	ld (bc),a
	ld b,0edh
	dec b
	daa
	ld (bc),a
	ld b,004h
	daa
	nop
	inc bc
	dec b
	ld b,(hl)
	ld (bc),a
	inc h
	defb 0edh ;next byte illegal after ed
	daa
	ld bc,02645h
	dec b
	inc hl
	rlca
	ld b,002h
	rlca
	defb 0edh ;next byte illegal after ed
	inc h
	ld b,007h
	ld b,004h
	dec b
	daa
	inc b
	ld b,005h
	dec b
	rlca
	inc b
	ld b,0edh
	rlca
	ld b,b
	jr z,l50a3h
	dec b
	ld b,006h
	dec h
	rlca
	ld b,004h
l50a3h:
	ld b,a
	defb 0edh ;next byte illegal after ed
	inc bc
	ld (bc),a
	dec b
	ld b,006h
	inc bc
	rlca
	dec b
	ld h,006h
	dec b
	rlca
	inc b
	defb 0edh ;next byte illegal after ed
	dec b
	ld b,022h
	rlca
	ld b,026h
	dec b
	ld b,004h
	rlca
	ld h,005h
	inc bc
	defb 0edh ;next byte illegal after ed
	daa
	ld bc,00506h
	dec b
	ex af,af'
	nop
	rlca
	ld b,006h
	inc h
	ld h,a
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	ld bc,l4603h
	inc b
	dec b
	ld b,005h
	dec b
	ld b,004h
	daa
	nop
	defb 0edh ;next byte illegal after ed
	inc bc
	ld h,046h
	inc b
	ld (bc),a
l50e1h:
	daa
	nop
	dec b
	ld b,006h
	ld h,h
	defb 0edh ;next byte illegal after ed
	daa
	ld b,005h
	ld b,003h
	daa
	ld bc,00505h
	ld b,a
	jr nz,l50e1h
	inc bc
	ld h,004h
	inc bc
	ld h,a
	ld bc,00102h
	inc b
	defb 0edh ;next byte illegal after ed
	ld (02607h),hl
	dec b
	ld b,004h
	rlca
	dec b
	inc b
	daa
	inc bc
	dec b
	ld b,0edh
	ld b,003h
	daa
	nop
	inc b
	dec b
	daa
	ld (bc),a
	inc b
	ld b,006h
	dec b
	dec b
	ld b,0edh
	inc hl
	daa
	dec b
	ld b,006h
	inc b
	and a
	ld (bc),a
	inc h
	inc bc
	defb 0edh ;next byte illegal after ed
	ld bc,00305h
	daa
	ld bc,00604h
	ld b,004h
	ld h,a
	inc bc
	nop
	defb 0edh ;next byte illegal after ed
	dec b
	ld bc,00008h
	rlca
	dec b
	ld b,004h
	rlca
	inc bc
	ld h,h
	rlca
	ld b,0edh
	rlca
	ld b,026h
	dec b
	ld b,003h
	daa
	ld bc,00505h
	daa
	ld bc,003edh
	ld b,026h
	dec b
	ld bc,00387h
	ld (0ed03h),hl
	jr nz,l5162h
	rlca
	dec b
	ld b,046h
	dec b
	ld b,005h
	ld h,a
l5162h:
	ld (bc),a
	inc b
	defb 0edh ;next byte illegal after ed
	ld bc,08504h
	ld h,025h
	ld h,004h
	defb 0edh ;next byte illegal after ed
	ld b,003h
	rlca
	dec b
	dec b
	ld h,024h
	daa
	nop
	dec b
	inc bc
	rlca
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	ld b,046h
	dec h
	inc bc
	daa
	ld bc,00505h
	daa
	nop
	inc b
	defb 0edh ;next byte illegal after ed
	ld b,006h
	inc b
	daa
	ld (bc),a
	inc b
	ld b,006h
	inc bc
	daa
	ld bc,00603h
	ld h,0edh
	dec h
	ld h,l
	ld h,(hl)
	ld b,(hl)
	dec h
	defb 0edh ;next byte illegal after ed
	ld b,005h
	daa
	ld (bc),a
	inc b
	ld b,005h
	dec b
	ld b,004h
	rlca
	ld b,020h
	ex af,af'
	defb 0edh ;next byte illegal after ed
	rlca
	dec b
	inc b
	ld b,a
	inc bc
	ld bc,02603h
	dec b
	inc b
	and a
	inc bc
	defb 0edh ;next byte illegal after ed
	nop
	inc bc
	ld (bc),a
	nop
	inc b
	ld h,005h
	ld b,004h
	ld b,a
	inc bc
	defb 0edh ;next byte illegal after ed
	ld bc,00602h
	inc h
	rlca
	ld h,005h
	ld b,024h
	rlca
	ld b,(hl)
	defb 0edh ;next byte illegal after ed
	dec h
	inc b
	rlca
	dec h
	ld h,024h
	ld h,a
	inc bc
	defb 0edh ;next byte illegal after ed
	ld (bc),a
	inc bc
	ld b,006h
	inc b
	rlca
	inc bc
	ld b,006h
	inc b
	and a
	inc bc
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	ld bc,l4023h
	jr z,$+9
	dec b
	ld b,l
	ld b,(hl)
	defb 0edh ;next byte illegal after ed
	inc bc
	rlca
	jr nz,$+10
	ld b,006h
	ld hl,020a7h
	defb 0edh ;next byte illegal after ed
	ld (bc),a
	ld bc,l6602h
	ld b,l
	inc hl
	ld b,a
	defb 0edh ;next byte illegal after ed
	inc h
	ld b,006h
	dec b
	dec b
	daa
	ld (bc),a
	dec h
	ld h,0edh
	and a
	ld (bc),a
	ld bc,00002h
	inc bc
	inc b
	ld b,006h
	ld (0ed27h),hl
	ld b,004h
	and a
	ld (bc),a
	inc b
	ld hl,00403h
	defb 0edh ;next byte illegal after ed
	ld b,006h
	inc b
	rlca
	ld h,b
	ld c,b
	rlca
	inc b
	add a,003h
	defb 0edh ;next byte illegal after ed
	inc b
	dec h
	inc h
	daa
	ld (bc),a
	ld bc,04566h
	defb 0edh ;next byte illegal after ed
	ld h,(hl)
	inc b
	ld b,l
	dec b
	daa
	nop
	defb 0edh ;next byte illegal after ed
	inc bc
	ld h,(hl)
	dec h
	inc b
	dec b
	inc b
	daa
	ld bc,00604h
	defb 0edh ;next byte illegal after ed
	ld h,005h
	ld b,004h
	add a,a
	ld (bc),a
	inc hl
	ld bc,00605h
	defb 0edh ;next byte illegal after ed
	inc b
	rlca
	inc bc
	ld b,(hl)
	dec h
	inc b
	daa
	inc bc
	inc b
	ld b,006h
	inc b
	defb 0edh ;next byte illegal after ed
	dec b
	rlca
	jr nz,$+10
	rlca
	inc b
	ld b,006h
	inc b
	daa
	ld bc,00820h
	ld i,a
	ld bc,00103h
	ld b,006h
	inc bc
	rlca
	inc b
	ld h,005h
	ld b,004h
	ld i,a
	nop
	inc bc
	ld b,l
	ld b,(hl)
	inc b
	and a
	ld (bc),a
	nop
	defb 0edh ;next byte illegal after ed
	ld bc,00102h
	inc bc
	ld b,006h
	inc b
	rst 20h
	add a,c
	defb 0edh ;next byte illegal after ed
	ld (00820h),hl
	rlca
	inc bc
	ld b,0edh
	ld bc,00407h
	ex af,af'
	dec b
	rlca
	ld b,(hl)
	ld hl,02805h
	inc b
	nop
	defb 0edh ;next byte illegal after ed
	ld h,001h
	inc b
	ld b,l
	ex af,af'
	add hl,bc
	rlca
	jr nz,l52cch
	inc bc
	ld h,0edh
	ld b,021h
	dec b
	ld b,(hl)
	rlca
	ld b,005h
	inc b
	inc h
	dec b
	ld b,0edh
	ld b,025h
	rlca
	ld b,046h
	inc b
	ld h,007h
	inc b
	jr z,l52c6h
l52c6h:
	defb 0edh ;next byte illegal after ed
	inc h
	rst 20h
	ld bc,02300h
l52cch:
	dec b
	inc b
	defb 0edh ;next byte illegal after ed
	inc bc
	ld b,(hl)
	inc b
	dec b
	ld b,005h
	inc b
	ld b,025h
	dec b
	rlca
	inc bc
	ld b,0edh
	ld hl,00507h
	rlca
	ld bc,00008h
	ld b,a
	ld b,e
	ld b,006h
	defb 0edh ;next byte illegal after ed
	inc hl
	rlca
	ld b,005h
	daa
	ld bc,00504h
	ld b,006h
	inc b
	ld b,a
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	inc b
	dec h
	ld b,(hl)
	inc h
	rlca
	dec b
	ld h,004h
	ld (bc),a
	ex af,af'
	defb 0edh ;next byte illegal after ed
	inc bc
	rlca
	dec h
	ld h,006h
	inc h
	rlca
	dec h
	ld b,007h
	ld h,004h
	defb 0edh ;next byte illegal after ed
	dec h
	daa
	ld b,003h
	rlca
	ld bc,00508h
	ld h,004h
	inc bc
	rlca
	defb 0edh ;next byte illegal after ed
	dec b
	dec h
	inc b
	rlca
	ld b,b
	jr z,$+40
	inc b
	ld b,0a7h
	inc b
	defb 0edh ;next byte illegal after ed
	nop
	ld (bc),a
	inc bc
	ld bc,02602h
	ld b,h
	rlca
	defb 0edh ;next byte illegal after ed
	ex af,af'
	nop
	ld b,a
	ld hl,00803h
	ld b,006h
	nop
	dec h
	ld b,027h
	defb 0edh ;next byte illegal after ed
	rlca
	ld (bc),a
	ld (bc),a
	inc hl
	daa
	ld b,008h
	inc b
	dec b
	inc bc
	ld b,005h
	daa
	defb 0edh ;next byte illegal after ed
	ld hl,00446h
	dec h
	inc b
	inc bc
	ld b,a
	inc b
	ld bc,003edh
	ld b,005h
	dec b
	rlca
	inc b
	dec b
	inc bc
	inc bc
	ld b,007h
	dec b
	dec b
	inc bc
	inc b
	daa
	defb 0edh ;next byte illegal after ed
	rlca
	ld b,001h
	inc b
	dec b
	ld b,027h
	dec b
	nop
	inc bc
	inc b
	ld b,007h
	rlca
	defb 0edh ;next byte illegal after ed
	inc b
	nop
	nop
	ld b,007h
	ex af,af'
	inc b
	inc b
	nop
	rlca
	ld b,000h
	daa
	rlca
	nop
	defb 0edh ;next byte illegal after ed
	ld bc,00506h
	dec b
	ld b,001h
	rlca
	inc bc
	jr z,$+6
	nop
	daa
	inc bc
	ld b,0edh
	dec b
	inc bc
	inc b
	ld b,040h
	ex af,af'
	rlca
	ld b,005h
	inc bc
	ld h,007h
	dec b
	defb 0edh ;next byte illegal after ed
	dec b
	daa
	inc b
	nop
	ld b,001h
	ex af,af'
	dec h
	rlca
	nop
	nop
	ld (bc),a
	dec b
	daa
	defb 0edh ;next byte illegal after ed
	ld b,025h
	ld b,004h
	rlca
	rlca
	inc b
	ld b,002h
	dec b
	dec b
	ld b,002h
	nop
	defb 0edh ;next byte illegal after ed
	ld b,007h
	inc h
	ld b,007h
	ld b,026h
	dec b
	rlca
	dec b
	ld b,003h
	daa
	ld b,0edh
	ld (bc),a
	ld h,025h
	rlca
	nop
	ex af,af'
	rlca
	daa
	inc bc
	ld b,006h
	inc b
	defb 0edh ;next byte illegal after ed
	dec b
	ld b,007h
	dec b
	ld b,022h
	inc b
	rlca
	inc bc
	ld b,002h
	rlca
	inc bc
	ld h,000h
	defb 0edh ;next byte illegal after ed
	ld b,022h
	nop
	ex af,af'
	ld b,006h
	nop
	inc b
	ld h,006h
	ex af,af'
	dec b
	ld b,0edh
	inc b
	inc h
	rlca
	ex af,af'
	jr nz,l5408h
	dec b
	jr z,l540bh
	nop
	rlca
	ld b,005h
l5408h:
	defb 0edh ;next byte illegal after ed
	dec b
	inc b
l540bh:
	add hl,bc
	ld b,007h
	ld bc,00502h
	rlca
	inc b
	ex af,af'
	dec b
	rlca
	ld bc,00000h
	defb 0edh ;next byte illegal after ed
	dec b
	rlca
	ex af,af'
	ld b,007h
	inc bc
	inc b
	ld b,007h
	rlca
	inc b
	ld h,003h
	nop
	inc bc
	defb 0edh ;next byte illegal after ed
	ld bc,00200h
	inc b
	inc b
	nop
	ld b,002h
	ld (bc),a
	inc b
	ld h,006h
	dec b
	ld (bc),a
	inc b
	defb 0edh ;next byte illegal after ed
	dec h
	daa
	nop
	ex af,af'
	ld bc,00206h
	add hl,bc
	ld bc,00008h
	add hl,hl
	inc bc
	defb 0edh ;next byte illegal after ed
	nop
	jr z,l546eh
	daa
	dec b
	ld (bc),a
	dec b
	ld bc,00506h
	daa
	inc b
	defb 0edh ;next byte illegal after ed
	ld b,004h
	rlca
	jr nz,$+10
	rlca
	inc b
	ld b,005h
	ld (bc),a
	ld h,023h
	ld bc,005edh
	dec b
	ld (bc),a
	ld (bc),a
	nop
	ld b,004h
	rlca
	inc hl
	ex af,af'
	dec b
l546eh:
	nop
	ex af,af'
	dec h
	rlca
	defb 0edh ;next byte illegal after ed
	dec b
	inc bc
	nop
	ld (bc),a
	daa
	rlca
	ld (bc),a
	ld b,006h
	daa
	dec b
	ex af,af'
	ld b,0edh
	daa
	ld bc,00806h
	dec b
	nop
	inc bc
	dec b
	dec h
	ld b,(hl)
	ld bc,0ed27h
	ex af,af'
	ld b,005h
	dec b
	nop
	inc bc
	daa
	ex af,af'
	inc b
	inc bc
	ld bc,00304h
	dec b
	defb 0edh ;next byte illegal after ed
	rlca
	rlca
	dec b
	inc bc
	nop
	ld h,004h
	rlca
	rlca
	ld b,004h
	ld (bc),a
	ex af,af'
	nop
	ld b,0edh
	dec b
	inc b
	rlca
	dec b
	ld b,l
	rlca
	ld b,004h
	ex af,af'
	rlca
	rlca
	ld (bc),a
	dec b
	ld b,0edh
	inc b
	rlca
	jr nz,l54c8h
	rlca
	ld b,004h
	rlca
	dec b
	ld b,001h
	dec b
l54c8h:
	inc b
	rlca
	dec b
	defb 0edh ;next byte illegal after ed
	ex af,af'
	inc hl
	ld h,005h
	dec b
	ld b,006h
	ld bc,00303h
	ld b,007h
	rlca
	ld b,(hl)
	defb 0edh ;next byte illegal after ed
	inc b
	rlca
	dec b
	rlca
	rlca
	ld b,005h
	rlca
	inc bc
	dec b
	nop
	rlca
	inc h
	inc b
	defb 0edh ;next byte illegal after ed
	ld (bc),a
	ld bc,00504h
	ld b,006h
	daa
	ld (bc),a
	inc h
	dec b
	inc b
	ld b,005h
	defb 0edh ;next byte illegal after ed
	inc b
	inc bc
	ld bc,02407h
	ex af,af'
	ld b,a
	nop
	ld bc,00806h
	rlca
	rlca
	defb 0edh ;next byte illegal after ed
	ld (bc),a
	jr z,l550ah
	inc b
l550ah:
	inc b
	ld bc,00503h
	nop
	rlca
	ld bc,00408h
	rlca
	nop
	defb 0edh ;next byte illegal after ed
	ld b,005h
	daa
	ld (bc),a
	inc hl
	ld h,004h
	rlca
	nop
	dec b
	ld bc,00327h
	defb 0edh ;next byte illegal after ed
	dec b
	ld b,064h
	dec b
	ld c,b
	inc hl
	ld b,003h
	ld b,0edh
	ld b,024h
	inc hl
	ld b,005h
	daa
	rlca
	ld bc,00205h
	ex af,af'
	rlca
	dec b
	defb 0edh ;next byte illegal after ed
	inc bc
	nop
	ld b,004h
	dec b
	daa
	ld b,004h
	inc b
	dec b
	inc bc
	rlca
	nop
	jr z,l5551h
	defb 0edh ;next byte illegal after ed
	dec b
	ld b,001h
	inc b
	ld b,l
l5551h:
	dec b
	rlca
	dec b
	nop
	nop
	dec b
	ld b,008h
	defb 0edh ;next byte illegal after ed
	rlca
	rlca
	ld bc,00306h
	rlca
	inc b
	ex af,af'
	ld (bc),a
	rlca
	ld bc,00502h
	ld b,007h
	dec b
	defb 0edh ;next byte illegal after ed
	dec h
	inc bc
	ld b,003h
	ex af,af'
	daa
	ld b,005h
	ld b,002h
	ld b,a
	nop
	ld h,0edh
	dec b
	ld (bc),a
	inc b
	inc b
	ld b,007h
	rlca
	ld b,004h
	dec b
	nop
	ld h,006h
	defb 0edh ;next byte illegal after ed
	rlca
	nop
	dec b
	inc bc
	ld b,005h
	dec b
	inc b
	inc b
	dec b
	ld b,006h
	rlca
	dec b
	ld bc,0ed06h
	nop
	jr z,l559eh
	inc b
	ld b,003h
l559eh:
	dec b
	dec b
	ex af,af'
	inc b
	rlca
	ld (bc),a
	ld b,045h
	rlca
	defb 0edh ;next byte illegal after ed
	ld h,004h
	rlca
	dec h
	ex af,af'
	ld h,003h
	rlca
	dec h
	inc b
	defb 0edh ;next byte illegal after ed
	nop
	rlca
	inc bc
	ld b,006h
	rlca
	dec h
	nop
	ld b,006h
	rlca
	dec b
	ld b,024h
	dec b
	defb 0edh ;next byte illegal after ed
	rlca
	ld b,023h
	inc b
	dec h
	dec b
	daa
	ld b,004h
	inc b
	inc bc
	ld b,0edh
	rlca
	rlca
	ld b,006h
	inc bc
	inc b
	ld (bc),a
	daa
	dec b
	inc bc
	ld b,000h
	rlca
	ld bc,0ed08h
	dec b
	rlca
	ld b,003h
	rlca
	dec b
	ex af,af'
	inc bc
	rlca
	nop
	dec h
	inc bc
	ld b,007h
	dec b
	defb 0edh ;next byte illegal after ed
	ld b,000h
	inc bc
	inc bc
	rlca
	ld bc,00308h
	rlca
	dec b
	ld (bc),a
	ld b,004h
	rlca
	ld b,004h
	defb 0edh ;next byte illegal after ed
	rlca
	ld (bc),a
	ex af,af'
	ld bc,00007h
	ld h,003h
	dec b
	daa
	ld b,003h
	dec h
	inc b
	rrd
	inc b
	inc bc
	ld hl,02206h
	rst 0
	dec b
	defb 0edh ;next byte illegal after ed
	ld b,003h
	ld (bc),a
	dec h
	ld b,003h
	dec b
	ld bc,00506h
	rlca
	defb 0edh ;next byte illegal after ed
	ld h,005h
	inc b
	add a,a
	ld bc,00200h
	inc b
	dec b
	ld b,003h
	defb 0edh ;next byte illegal after ed
	ld bc,00405h
	rlca
	ld b,l
	ld b,000h
	inc b
	daa
	ld h,005h
	dec b
	defb 0edh ;next byte illegal after ed
	inc b
	ld b,027h
	dec b
	ld bc,00505h
	ld h,006h
	inc bc
	dec b
	ld bc,00606h
	defb 0edh ;next byte illegal after ed
	rlca
	ex af,af'
	ld b,025h
	inc bc
	inc b
	ld b,006h
	rlca
	rlca
	inc h
	inc hl
	ld b,0edh
	inc b
	ex af,af'
	dec b
	rlca
	inc bc
	ld b,l
	inc b
	ld b,005h
	inc h
	ld b,(hl)
	dec b
	defb 0edh ;next byte illegal after ed
	ld bc,00605h
	ld h,007h
	ld b,l
	dec b
	ld b,008h
	ld bc,00307h
	defb 0edh ;next byte illegal after ed
	ld b,006h
	dec b
	daa
	inc bc
	nop
	ex af,af'
	ld bc,00307h
	ld b,005h
	dec b
	ld b,006h
	defb 0edh ;next byte illegal after ed
	inc b
	rlca
	nop
	ld b,(hl)
	inc bc
	dec b
	inc bc
	ld b,a
	nop
	ld (bc),a
	inc b
	ld b,0edh
	inc bc
	dec b
	dec b
	ld h,026h
	inc hl
	inc b
	ld b,007h
	rlca
	ld b,006h
	dec h
	defb 0edh ;next byte illegal after ed
	dec h
	rlca
	daa
	ld b,003h
	ld b,004h
	dec h
	ld b,007h
	ld b,026h
	defb 0edh ;next byte illegal after ed
	ld (02507h),hl
	ld h,(hl)
	ld b,h
	dec b
	nop
	daa
	defb 0edh ;next byte illegal after ed
	inc bc
	dec b
	ld b,001h
	ld b,l
	inc b
	ld h,a
	ld (bc),a
	inc b
	dec b
	defb 0edh ;next byte illegal after ed
	ld b,027h
	dec h
	ld h,(hl)
	ld b,004h
	dec b
	ld b,005h
	rlca
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	ex af,af'
	inc hl
	ld h,a
	nop
	inc b
	inc bc
	ld b,024h
	dec b
	and (hl)
	dec b
	neg
	dec b
	ld b,044h
	daa
	add a,(hl)
	defb 0edh ;next byte illegal after ed
	ld h,l
	ld b,005h
	daa
	inc b
	inc bc
	ld b,005h
	defb 0edh ;next byte illegal after ed
	daa
	inc h
	ld h,(hl)
	ld b,l
	inc bc
	daa
	ld bc,0ed03h
	ld h,026h
	dec b
	daa
	nop
	inc bc
	dec b
	ld h,004h
	ld h,(hl)
	dec h
	defb 0edh ;next byte illegal after ed
	ld b,024h
	rlca
	ld b,026h
	add a,l
	ld b,l
	defb 0edh ;next byte illegal after ed
	ld b,002h
	rlca
	jr nz,$+10
	rlca
	ld h,l
	add a,(hl)
	defb 0edh ;next byte illegal after ed
	inc b
	dec b
	dec b
	ld h,044h
	daa
	dec h
	ld h,0edh
	inc b
	daa
	ld (04506h),hl
	ld h,l
	and 006h
	defb 0edh ;next byte illegal after ed
	inc b
	dec b
	ld b,005h
	ld (bc),a
	inc b
	ld b,(hl)
	dec b
	inc b
	defb 0edh ;next byte illegal after ed
	inc bc
	rlca
	inc b
	ld h,(hl)
	dec h
	inc b
	dec b
	inc b
	ld b,(hl)
	inc bc
	defb 0edh ;next byte illegal after ed
	dec b
	ld b,005h
	dec b
	daa
	inc bc
	ld b,005h
	ld b,a
	ld bc,0ed23h
	ld h,044h
	ld b,a
	ld (02406h),hl
	rst 20h
	ld b,e
	defb 0edh ;next byte illegal after ed
	inc b
	inc bc
	ld (bc),a
	ld hl,003e7h
	defb 0edh ;next byte illegal after ed
	inc b
	ld (bc),a
	inc bc
	inc b
	inc bc
	ld (00187h),hl
	defb 0edh ;next byte illegal after ed
	jr nz,l5760h
	ld b,005h
	dec b
l5760h:
	ld b,004h
	daa
	inc bc
	ld b,044h
	defb 0edh ;next byte illegal after ed
	daa
	ld h,005h
	ld b,005h
	ld b,a
	inc h
	dec b
	ld b,0edh
	ld h,(hl)
	dec h
	ld b,(hl)
	dec b
	inc bc
	daa
	ld bc,08602h
	defb 0edh ;next byte illegal after ed
	inc b
	dec h
	inc b
	dec b
	dec h
	ld b,005h
	add a,(hl)
	inc b
	defb 0edh ;next byte illegal after ed
	dec h
	inc b
	ld h,l
	dec b
	ld b,(hl)
	add a,(hl)
	ld b,l
	defb 0edh ;next byte illegal after ed
	ld h,003h
	ld b,a
	ld bc,00503h
	ld h,(hl)
	neg
	ld b,003h
	rst 20h
	ld (bc),a
	inc bc
	nop
	ld bc,022edh
	ld hl,00407h
	add a,045h
	defb 0edh ;next byte illegal after ed
	inc h
	dec b
	inc hl
	rlca
	ld b,(hl)
	ld b,l
	defb 0edh ;next byte illegal after ed
	dec b
	ld b,002h
	ld h,a
	ld bc,00422h
	ld b,046h
	ld b,l
	defb 0edh ;next byte illegal after ed
	daa
	ld (l4546h),hl
	dec b
	ld b,004h
	rst 20h
	defb 0edh ;next byte illegal after ed
	inc hl
	ld bc,00203h
	ld hl,00624h
	defb 0edh ;next byte illegal after ed
	rlca
	inc bc
	ld b,026h
	dec b
	inc b
	rst 20h
	ld bc,0ed42h
	inc bc
	ld (bc),a
	inc bc
	inc b
	rst 20h
	inc hl
	inc b
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	inc hl
	ld bc,0e703h
	ld (bc),a
	inc hl
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	ld bc,l4762h
	ld bc,08604h
	add a,l
	defb 0edh ;next byte illegal after ed
	dec b
	ld b,004h
	daa
	inc bc
	inc b
	ld b,0edh
	ld h,005h
	ld h,005h
	add a,(hl)
	add a,l
	defb 0edh ;next byte illegal after ed
	dec b
	ld b,004h
	rst 20h
	ld h,d
	ld bc,0ed22h
	inc bc
	daa
	ld (bc),a
	inc b
	ld h,(hl)
	ld h,l
	and l
	defb 0edh ;next byte illegal after ed
	add a,(hl)
	rst 20h
	inc hl
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	inc bc
	add a,d
	rst 20h
	ld b,e
	sbc hl,hl
	ld h,a
	ld b,c
	defb 0edh ;next byte illegal after ed
	inc h
	ld b,027h
	ld (bc),a
	inc b
	ld h,005h
	inc b
	rst 20h
	ld bc,0ed03h
	and d
	rst 20h
	inc bc
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	ld bc,00102h
	inc bc
	ld (bc),a
	inc bc
	rst 20h
	ld (bc),a
	inc bc
	defb 0edh ;next byte illegal after ed
	add a,d
	inc hl
	rlca
	ld b,046h
	defb 0edh ;next byte illegal after ed
	dec h
	inc bc
	ld b,a
	ld bc,00402h
	ld h,(hl)
	ld b,l
	defb 0edh ;next byte illegal after ed
	ld b,004h
	and a
	ld (bc),a
	inc bc
	ld b,d
	inc bc
	defb 0edh ;next byte illegal after ed
	ld b,006h
	add a,e
	rst 20h
	ld (001edh),hl
	add a,d
	rst 20h
	inc bc
	ld b,d
	defb 0edh ;next byte illegal after ed
	rst 20h
	ld bc,00103h
	inc bc
	ld (bc),a
	inc hl
	defb 0edh ;next byte illegal after ed
	ld (bc),a
	and a
	inc bc
	ld h,d
	inc b
	ld h,0edh
	dec b
	inc b
	ld b,a
	ld (02604h),hl
	dec b
	inc b
	ld h,a
	inc hl
	defb 0edh ;next byte illegal after ed
	ld (bc),a
	inc b
	ld h,(hl)
	ld b,l
	and 0e5h
	defb 0edh ;next byte illegal after ed
	and 0e5h
	defb 0edh ;next byte illegal after ed
	ld h,(hl)
	ld h,l
	defb 0edh ;next byte illegal after ed
	push hl
	and 0edh
	dec b
	ld b,004h
	daa
	ld bc,l4604h
	dec h
	defb 0edh ;next byte illegal after ed
	inc h
	rlca
	ld h,005h
	inc h
	rlca
	ld b,066h
	ld b,l
	defb 0edh ;next byte illegal after ed
	inc b
	rst 20h
	ld bc,00342h
	add a,d
	rrd
	inc bc
	inc b
	ld h,(hl)
	ld b,l
	defb 0edh ;next byte illegal after ed
	inc b
	rst 20h
	ld (l6203h),hl
	defb 0edh ;next byte illegal after ed
	inc bc
	rst 0
	and d
	inc b
	defb 0edh ;next byte illegal after ed
	and 0e5h
	defb 0edh ;next byte illegal after ed
	ld h,(hl)
	ld h,l
	add a,l
	add a,(hl)
	defb 0edh ;next byte illegal after ed
	inc b
	add a,a
	ld h,d
	inc b
	ld b,(hl)
	dec h
	defb 0edh ;next byte illegal after ed
	inc bc
	rst 20h
	ld (bc),a
	inc hl
	ld (bc),a
	inc bc
	jp po,0e7edh
	and d
	defb 0edh ;next byte illegal after ed
	rst 20h
	inc bc
	add a,d
	defb 0edh ;next byte illegal after ed
	and a
	inc bc
	ld b,d
	inc b
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	ld h,(hl)
	retn
	ld b,(hl)
	dec h
	inc b
	daa
	ld (bc),a
	inc b
	defb 0edh ;next byte illegal after ed
	and 0e5h
	im 0
	ld b,l
	push hl
	and 0edh
	push hl
	and 0edh
	ld b,l
	ld b,(hl)
	and 0e5h
	defb 0edh ;next byte illegal after ed
	ld h,025h
	defb 0edh ;next byte illegal after ed
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 0edh
	push hl
	and 06dh
	ld h,l
	ld b,(hl)
	ld b,00dh
	dec b
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	ld c,l
	ld h,c
	ld l,(hl)
	ld h,d
	ld l,a
	ld (hl),a
	jr nz,l603ah
	jr nz,$+47
	jr nz,$+78
	ld h,l
	halt
	ld h,l
	ld l,h
	jr nz,l6044h
	jr nz,$+45
	jr nz,l604eh
	jr nz,l6045h
	jr nz,l605fh
	ld l,(hl)
	ld h,e
	ld l,a
	ld (hl),l
	ld l,(hl)
	ld (hl),h
	ld h,l
	ld (hl),d
	ld l,c
	ld l,(hl)
	ld h,a
	jr nz,l6074h
	ld h,c
	ld l,(hl)
	ld h,d
	ld l,a
	ld (hl),a
	jr nz,l604eh
	jr nz,l6050h
	jr nz,l6052h
	jr nz,$+34
	jr nz,l6056h
	jr nz,$+34
	jr nz,l605ah
l603ah:
	jr nz,l605ch
	jr nz,l605eh
	jr nz,$+34
	jr nz,l6062h
	jr nz,l6097h
l6044h:
	ld d,b
l6045h:
	ld b,d
	ld c,a
	ld d,a
	ld c,e
	ld c,c
	ld d,h
	ld d,e
	ld b,d
	ld c,e
l604eh:
	jr z,l6050h
l6050h:
	nop
	nop
l6052h:
	ld bc,00302h
	inc b
l6056h:
	dec b
	ld b,007h
	ex af,af'
l605ah:
	add hl,bc
	ld a,(bc)
l605ch:
	dec bc
	inc c
l605eh:
	dec c
l605fh:
	ld c,00fh
	inc d
l6062h:
	dec d
	ld d,017h
	jr l6080h
	ld a,(de)
	dec de
	inc l
	inc e
	dec e
	ld e,01fh
	jr nz,l6091h
	ld (02423h),hl
	dec h
l6074h:
	ld h,027h
	jr z,l60a1h
	ld hl,(0002dh)
	nop
	nop
	nop
	nop
	nop
l6080h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6091h:
	nop
	nop
	nop
	nop
	nop
	nop
l6097h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l60a1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6100h:
	nop
	nop
	nop
	nop
	nop
l6105h:
	nop
	nop
	nop
	nop
	nop
	nop
l610bh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6115h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l6162h
	rrca
	rrca
	rrca
	rrca
	nop
	nop
	nop
	ld b,080h
	add a,b
	add a,b
	add a,b
	add a,b
	djnz l6172h
l6162h:
	djnz l6174h
	djnz l6166h
l6166h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6172h:
	nop
	nop
l6174h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,0010fh
	rrca
	ld sp,0350fh
	rrca
	ld l,00fh
	ld bc,00017h
	nop
	nop
	nop
	ld h,a
	inc bc
	ld h,a
	ld b,b
	ld h,a
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,h
	ld b,b
	ld l,d
	inc bc
	inc bc
	jr $+107
	nop
	ld l,c
	ld (bc),a
	ld l,c
	inc b
	nop
	nop
	ld h,h
	ld b,b
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
l6203h:
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,l6709h
	jr nc,l6211h
l6211h:
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	jr nc,$+5
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,l6309h
	jr nz,l6241h
l6241h:
	nop
	ld (bc),a
	jr l6245h
l6245h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,e
	jr nz,$+5
	rla
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	ld bc,00017h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,(hl)
	ld bc,00000h
	inc bc
	jr l630eh
	jr nz,l6310h
	ld (02469h),hl
	ld h,h
	jr nc,l631bh
	ld bc,01703h
	ld bc,00109h
	add hl,bc
	ld bc,l6d09h
	ld bc,03064h
	ld (bc),a
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	ld l,l
	ld bc,00000h
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	jr l6305h
l6305h:
	nop
	nop
	nop
	nop
l6309h:
	nop
	nop
	nop
	nop
	nop
l630eh:
	inc bc
	rla
l6310h:
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
l631bh:
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	ld bc,00017h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	jr l63ceh
	ld b,b
	ld l,c
	ld b,d
	ld l,c
	ld b,h
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,l6309h
	djnz l6391h
l6391h:
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,e
	djnz $+5
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	jr l63c5h
l63c5h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l63ceh:
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
l6409h:
	nop
	ld (bc),a
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	jr l648eh
	ld h,b
	ld l,c
	ld h,d
	ld l,c
	ld h,h
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	ld (bc),a
	jr l6485h
l6485h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l648eh:
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	ld bc,00017h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	jr l654eh
	add a,b
	ld l,c
	add a,d
	ld l,c
	add a,h
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	jr l6545h
l6545h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l654eh:
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	ld (bc),a
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,l6918h
	and b
	ld l,c
	and d
	ld l,c
	and h
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,l6309h
	nop
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld h,a
	add a,b
	ld h,e
	nop
	inc bc
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	ld h,a
	add a,b
	ld bc,l6100h
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
l6602h:
	inc bc
	jr l6605h
l6605h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
l6625h:
	nop
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	ld bc,00017h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	jr l66ceh
	ret nz
	ld l,c
	jp nz,0c469h
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,h
	inc bc
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	ld h,h
	inc bc
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	jr l66c5h
l66c5h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l66ceh:
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6700h:
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
l6709h:
	nop
	ld (bc),a
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	jr $+107
	ret po
	ld l,c
	jp po,0e469h
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,h
	jr nz,l6745h
l6745h:
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	ld h,h
	jr nz,l6756h
	nop
	nop
	nop
l6756h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	ld h,a
	rst 38h
	inc bc
	jr l6785h
l6785h:
	nop
	nop
	nop
	nop
	nop
	ld h,a
	rst 38h
	ld l,l
	ld bc,01703h
	ld bc,00109h
	add hl,bc
	ld bc,l6d09h
	ld (bc),a
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld l,c
	inc bc
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,0010ch
	inc c
	ld sp,0360ch
	inc c
	inc a
	inc c
	ld bc,00017h
	nop
	nop
	nop
	ld h,a
	inc bc
	ld h,a
	ld b,b
	ld h,a
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,d
	inc bc
	inc bc
	jr l684eh
	nop
	ld l,c
	ld (bc),a
	ld l,c
	inc b
	ld h,h
	jr nc,$+102
	ld b,b
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,l6709h
	jr nc,l6811h
l6811h:
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	jr nc,$+5
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,l6309h
	inc bc
	nop
	nop
	ld (bc),a
	jr l6845h
l6845h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,e
	ld (bc),a
l684eh:
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	ld bc,00017h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	jr l690eh
	jr nz,l6910h
	ld (02469h),hl
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,l6709h
	djnz l6920h
	djnz l68bdh
	nop
	ld h,c
l68bdh:
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	jr nz,l68ddh
l68ddh:
	nop
	inc bc
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	ld h,a
	jr nz,l68eeh
	nop
	ld h,c
	nop
l68eeh:
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,l6709h
	jr nc,l6901h
l6901h:
	nop
	inc bc
	jr l6905h
l6905h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l690eh:
	inc bc
	rla
l6910h:
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
l6918h:
	ld h,a
	ld b,b
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
l6920h:
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,l6709h
	jr nc,l69b0h
	jr nc,l694ch
	rla
l694ch:
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,e
	inc bc
	ld h,e
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	jr l69ceh
	ld b,b
	ld l,c
	ld b,d
	ld l,c
	ld b,h
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
l69b0h:
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,01d09h
	rrca
	nop
	nop
	inc bc
	jr l69c5h
l69c5h:
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
l69ceh:
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,01d09h
	rrca
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,01d09h
	dec bc
	dec e
	ld a,(bc)
	ld (bc),a
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,e
	djnz l6a78h
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	jr $+107
	ld h,b
	ld l,c
	ld h,d
	ld l,c
	ld h,h
	ld h,a
	jr nz,l6a94h
	jr nz,$+5
	rla
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,h
	ld h,b
	ld h,h
	ld h,b
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,e
	add a,b
	ld h,e
	add a,b
	inc bc
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,h
	ld h,b
	ld h,h
	ld h,b
	nop
	nop
l6a78h:
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	ld (bc),a
	jr l6a85h
l6a85h:
	nop
	nop
	nop
	nop
	nop
	ld h,h
	jr nz,$+102
	jr nz,$+5
	rla
	ld bc,00109h
	add hl,bc
l6a94h:
	ld bc,00009h
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,h
	jr nz,$+102
	jr nz,l6aa7h
l6aa7h:
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	ld bc,00017h
	nop
	nop
	nop
	nop
	nop
	ld h,e
	add a,b
	ld h,e
	add a,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	jr l6b4eh
	add a,b
	ld l,c
	add a,d
	ld l,c
	add a,h
	ld h,h
	ld h,b
	ld h,h
	ld h,b
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,e
	add a,b
	ld h,e
	add a,b
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,h
	ld h,b
	ld h,h
	ld h,b
	inc bc
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,e
	ld d,b
	ld h,e
	ld d,b
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	ld h,a
	jr nz,l6b46h
	jr l6b45h
l6b45h:
	nop
l6b46h:
	nop
	nop
	nop
	nop
	ld h,h
	ld h,b
	ld h,h
	ld h,b
l6b4eh:
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,e
	ld d,b
	ld h,e
	ld d,b
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,l6709h
	ld d,b
	ld h,a
	ld b,b
	ld (bc),a
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,l6918h
	and b
	ld l,c
	and d
	ld l,c
	and h
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,l6309h
	djnz l6c1ch
	dec b
	ld (bc),a
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	dec c
	rrca
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,l6309h
	nop
	dec c
	rrca
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld h,a
	add a,b
	ld h,e
	nop
	inc bc
	nop
	ld bc,00109h
	add hl,bc
	ld bc,l6309h
	add a,b
	ld h,e
	add a,b
	ld bc,l6100h
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,l6409h
	ld h,b
	ld h,h
	ld h,b
	inc bc
	jr l6c05h
l6c05h:
	nop
	nop
l6c07h:
	nop
	nop
l6c09h:
	nop
l6c0ah:
	nop
	nop
	nop
l6c0dh:
	nop
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,l6309h
	jr nz,l6c7ch
	jr nc,l6c1eh
	nop
l6c1ch:
	ld h,c
	nop
l6c1eh:
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,l6309h
	ld d,b
	ld h,e
	ld d,b
	ld bc,00017h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	jr nz,l6c57h
l6c57h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,h
	ld h,b
	ld h,h
	ld h,b
	inc bc
	jr l6cceh
	ret nz
	ld l,c
	jp nz,0c469h
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,l6309h
	ld d,b
	ld h,e
	ld d,b
	inc bc
	nop
l6c7ch:
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,l6409h
	ld bc,00364h
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
	inc bc
	nop
	ld bc,00109h
	add hl,bc
	ld bc,02809h
	inc c
	daa
	inc c
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,02809h
	inc c
	daa
	inc c
	inc bc
	jr l6cc5h
l6cc5h:
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
l6cceh:
	inc bc
	rla
	ld bc,00109h
	add hl,bc
	ld bc,02809h
	inc c
	daa
	inc c
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,h
	ld b,b
	ld h,h
	ld b,b
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
l6d09h:
	nop
	ld (bc),a
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,e
	ld d,b
	ld h,e
	ld d,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	jr $+107
	ret po
	ld l,c
	jp po,0e469h
	ld h,h
	jr nc,$+102
	jr nc,$+5
	rla
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,h
	jr nz,l6d45h
l6d45h:
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	ld h,h
	jr nz,l6d56h
	nop
	nop
	nop
l6d56h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00109h
	add hl,bc
	ld bc,00009h
	nop
	ld h,a
	rst 38h
	inc bc
	jr l6d85h
l6d85h:
	nop
	nop
	nop
	nop
	nop
	ld h,a
	rst 38h
	ld l,l
	ld bc,01703h
	ld bc,00109h
	add hl,bc
	ld bc,l6d09h
	ld (bc),a
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld l,c
	inc bc
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	inc bc
	dec c
	inc bc
	dec c
	inc sp
	dec c
	scf
	dec c
	cpl
	dec c
	ld bc,00017h
	nop
	nop
	nop
	ld h,a
	inc bc
	ld h,a
	ld b,b
	ld h,a
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,h
	ld b,b
	ld l,d
	inc bc
	inc bc
	jr $+107
	nop
	ld l,c
	ld (bc),a
	ld l,c
	inc b
	nop
	nop
	ld h,h
	ld b,b
	inc bc
	rla
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	ld h,a
	jr nc,l7111h
l7111h:
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	jr nc,l7122h
	nop
	inc bc
	add hl,bc
l7122h:
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld bc,l6100h
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	ld h,e
	jr nz,l7141h
l7141h:
	nop
	inc bc
	jr l7145h
l7145h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,e
	jr nz,l7152h
	rla
	inc bc
	add hl,bc
l7152h:
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	inc bc
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,(hl)
	ld bc,00000h
	ld bc,l6918h
	jr nz,l7210h
	ld (02469h),hl
	ld h,h
	jr nc,l721bh
	ld bc,01700h
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	ld l,l
	ld bc,03064h
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	ld l,l
	ld bc,00003h
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld (bc),a
	jr l7205h
l7205h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	rla
l7210h:
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	inc bc
l721bh:
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld bc,00017h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	jr l72ceh
	ld b,b
	ld l,c
	ld b,d
	ld l,c
	ld b,h
	nop
	nop
	nop
	nop
	inc bc
	rla
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	ld h,e
	djnz l7291h
l7291h:
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,e
	djnz l72a2h
	nop
	inc bc
	add hl,bc
l72a2h:
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld bc,l6100h
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld (bc),a
	jr l72c5h
l72c5h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l72ceh:
	inc bc
	rla
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld bc,00017h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	jr l738eh
	ld h,b
	ld l,c
	ld h,d
	ld l,c
	ld h,h
	nop
	nop
	nop
	nop
	inc bc
	rla
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld bc,l6100h
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld (bc),a
	jr l7385h
l7385h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l738eh:
	inc bc
	rla
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld bc,00017h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	jr l744eh
	add a,b
	ld l,c
	add a,d
	ld l,c
	add a,h
	nop
	nop
	nop
	nop
	inc bc
	rla
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld bc,l6100h
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	inc bc
	jr l7445h
l7445h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l744eh:
	inc bc
	rla
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	inc bc
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,l6918h
	and b
	ld l,c
	and d
	ld l,c
	and h
	nop
	nop
	nop
	nop
	nop
	rla
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	ld h,e
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	add a,b
	ld h,e
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	ld h,a
	add a,b
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld bc,00018h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rla
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	jr l75ceh
	ret nz
	ld l,c
	jp nz,0c469h
	nop
	nop
	nop
	nop
	inc bc
	rla
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld bc,l6100h
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,h
	inc bc
	nop
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	ld h,h
	inc bc
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	inc bc
	jr l75c5h
l75c5h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l75ceh:
	inc bc
	rla
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	inc bc
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	jr l768eh
	ret po
	ld l,c
	jp po,0e469h
	nop
	nop
	nop
	nop
	nop
	rla
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,h
	jr nz,l7645h
l7645h:
	nop
	inc bc
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	ld h,h
	jr nz,l7654h
	nop
l7654h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	ld l,h
	ld bc,00000h
	ld (bc),a
	jr l76e6h
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
l768eh:
	nop
	rla
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	ld l,h
	ld bc,00002h
	ld l,d
	nop
	ld l,d
	nop
	ld l,d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	rrca
	jr l76ceh
	ld h,007h
	ld h,c
	nop
	jr l76d4h
	ld bc,00017h
	nop
l76ceh:
	ld h,d
	dec e
	ld h,c
	nop
	ld h,d
	inc bc
l76d4h:
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	ld h,006h
	nop
	nop
	ld a,(de)
	ld a,(bc)
	nop
	nop
	nop
	nop
l76e6h:
	ld h,c
	nop
	ld h,c
	nop
	add hl,hl
	rrca
	ld h,c
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	add hl,hl
	rlca
	ld l,h
	ld (bc),a
	nop
	nop
	nop
	nop
	dec b
	rrca
	jr l7716h
	ld de,l6c09h
	ld (bc),a
	jr l771ch
	ld bc,00000h
	nop
l7716h:
	ld h,c
	nop
	ld h,a
	jr nz,l7787h
	ld (bc),a
l771ch:
	ld h,c
	nop
	nop
	nop
	nop
	nop
	jr l772eh
	nop
	nop
	ld h,c
	nop
	jr $+12
	ld (bc),a
	nop
	nop
	nop
l772eh:
	ld h,c
	nop
	ld h,00ah
	ld (l6105h),a
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	ld h,c
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	ld bc,00000h
	nop
	ld h,c
	nop
	ld h,006h
	ld c,00fh
	ld h,c
	nop
	nop
	nop
	add hl,bc
	rrca
	nop
	nop
	nop
	nop
	ld h,a
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld c,00ah
	ld h,00fh
	nop
	nop
	ld c,00ah
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	jr l778eh
	nop
	nop
	ld l,h
l7787h:
	ld (bc),a
	jr l7794h
	ld bc,00000h
	nop
l778eh:
	ld h,c
	nop
	nop
	nop
	nop
	nop
l7794h:
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	nop
	nop
	ld l,h
	ld (bc),a
	ld a,(de)
	ld a,(bc)
	ld bc,00000h
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld (bc),a
	rrca
	nop
	nop
	jr nc,l77b9h
	jr nc,l77bbh
	nop
l77b9h:
	nop
	nop
l77bbh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	rrca
	jr l77d6h
	ld l,b
	inc bc
	ld h,a
	inc bc
	jr l77dch
	ld bc,00000h
	nop
l77d6h:
	ld h,c
	nop
	nop
	nop
	nop
	nop
l77dch:
	ld h,c
	nop
	nop
	nop
	nop
	nop
	jr l77eeh
	nop
	nop
	nop
	nop
	jr l77f4h
	ld (bc),a
	nop
	nop
	nop
l77eeh:
	ld h,c
	nop
	nop
	nop
	nop
	nop
l77f4h:
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	ld bc,00000h
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	add hl,bc
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l7836h
	ld l,e
	ld bc,0016bh
	jr l783ch
	inc bc
	nop
	nop
	nop
l7836h:
	ld h,c
	nop
	nop
	nop
	nop
	nop
l783ch:
	ld h,c
	nop
	nop
	nop
	rlca
	rrca
	jr l784eh
	ld h,00ah
	ld h,c
	nop
	jr l7854h
	ld bc,00000h
	nop
l784eh:
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
l7854h:
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	ld h,006h
	nop
	nop
	ld a,(de)
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	add hl,hl
	rrca
	ld h,c
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld l,h
	rlca
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	ld h,00fh
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	jr l7896h
	ld l,d
	add hl,bc
	ld a,(de)
	rrca
	jr l789ch
	ld bc,00000h
	nop
l7896h:
	ld h,c
	nop
	ld c,008h
	ld c,00fh
l789ch:
	ld h,c
	nop
	nop
	nop
	nop
	nop
	jr l78aeh
	ld l,d
	nop
	nop
	rrca
	jr l78b4h
	ld (bc),a
	nop
	nop
	nop
l78aeh:
	ld h,c
	nop
	ld h,00ah
	nop
	rrca
l78b4h:
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	ld a,(de)
	ld a,(bc)
	ld bc,00000h
	nop
	ld h,c
	nop
	ld h,006h
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld c,00ah
	ld h,00fh
	nop
	nop
	ld c,00ah
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	jr l790eh
	ld (03203h),a
	inc bc
	jr l7914h
	ld bc,00000h
	nop
l790eh:
	ld h,c
	nop
	ld h,a
	ld bc,00167h
l7914h:
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	ld l,e
	ld bc,0016bh
	ld a,(de)
	ld a,(bc)
	ld bc,00000h
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	rrca
	jr l7956h
	inc (hl)
	inc bc
	inc (hl)
	inc bc
	jr l795ch
	ld bc,00000h
	nop
l7956h:
	ld h,c
	nop
	nop
	nop
	nop
	nop
l795ch:
	ld h,c
	nop
	nop
	nop
	nop
	nop
	jr l796eh
	ld l,e
	ld bc,0016bh
	jr l7974h
	ld (bc),a
	nop
	nop
	nop
l796eh:
	ld h,c
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
l7974h:
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	ld bc,00000h
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l79b6h
	nop
	nop
	nop
	nop
	jr l79bch
	inc bc
	nop
	nop
	nop
l79b6h:
	ld h,c
	nop
	nop
	nop
	ld h,c
	nop
l79bch:
	ld h,c
	nop
	nop
	nop
	ld (bc),a
	rrca
	jr l79ceh
	ld h,00ah
	ld h,d
	ld b,018h
	ld a,(bc)
	ld bc,00000h
	nop
l79ceh:
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	ld h,006h
	nop
	nop
	ld a,(de)
	ld a,(bc)
	ld bc,00000h
	nop
	ld h,c
	nop
	nop
	nop
	add hl,hl
	rrca
	ld h,c
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld l,h
	rlca
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	ld h,00fh
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	dec b
	rrca
	jr l7a16h
	ld h,c
	nop
	ld h,c
	nop
	jr l7a1ch
	ld bc,00000h
	nop
l7a16h:
	ld h,c
	nop
	nop
	nop
	nop
	nop
l7a1ch:
	ld h,c
	nop
	nop
	nop
	nop
	nop
	jr l7a2eh
	nop
	nop
	nop
	nop
	jr l7a34h
	ld (bc),a
	nop
	nop
	nop
l7a2eh:
	ld h,c
	nop
	ld h,00ah
	nop
	nop
l7a34h:
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	ld h,c
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	ld bc,00000h
	nop
	ld h,c
	nop
	ld h,006h
	nop
	nop
	ld h,c
	nop
	nop
	nop
	add hl,bc
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l7a76h
	ld h,00fh
	nop
	nop
	jr l7a7ch
	inc bc
	nop
	nop
	nop
l7a76h:
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
l7a7ch:
	ld h,c
	nop
	nop
	nop
	ld (bc),a
	rrca
	jr l7a8eh
	nop
	nop
	nop
	nop
	jr l7a94h
	ld bc,00000h
	nop
l7a8eh:
	ld h,c
	nop
	nop
	nop
	nop
	nop
l7a94h:
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	ld bc,00000h
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nc,l7ab9h
	jr nc,l7abbh
	nop
l7ab9h:
	nop
	nop
l7abbh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	rrca
	jr l7ad6h
	ld l,b
	inc bc
	ld h,a
	inc bc
	jr l7adch
	ld bc,00000h
	nop
l7ad6h:
	ld h,c
	nop
	nop
	nop
	nop
	nop
l7adch:
	ld h,c
	nop
	nop
	nop
	nop
	nop
	jr l7aeeh
	nop
	nop
	nop
	nop
	jr l7af4h
	ld (bc),a
	nop
	nop
	nop
l7aeeh:
	ld h,c
	nop
	nop
	nop
	nop
	nop
l7af4h:
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	ld bc,00000h
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	add hl,bc
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l7b36h
	ld l,e
	ld bc,0016bh
	jr l7b3ch
	inc bc
	nop
	nop
	nop
l7b36h:
	ld h,c
	nop
	nop
	nop
	nop
	nop
l7b3ch:
	ld h,c
	nop
	nop
	nop
	inc b
	rrca
	inc e
	ld a,(bc)
	jr z,l7b50h
	ld h,c
	nop
	inc e
	ld a,(bc)
	ld bc,00000h
	nop
	ld h,c
	nop
l7b50h:
	ld h,c
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	inc e
	ld a,(bc)
	dec l
	ld a,(bc)
	nop
	nop
	inc e
	ld a,(bc)
	ld bc,00000h
	nop
	ld h,c
	nop
	ld h,c
	nop
	add hl,hl
	rrca
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld de,l6c0ah
	ld bc,00000h
	nop
	nop
	dec b
	rrca
	dec e
	ld a,(bc)
	ld h,a
	ld b,b
	ld l,h
	ld bc,00a1dh
	ld bc,00000h
	nop
	ld h,c
	nop
	nop
	nop
	ld l,h
	ld bc,00061h
	nop
	nop
	nop
	nop
	dec e
	ld a,(bc)
	nop
	nop
	ld l,h
	ld bc,00a1dh
	ld (bc),a
	nop
	nop
	nop
	ld h,c
	nop
	jr z,l7bbch
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	dec e
	ld a,(bc)
l7bbch:
	ld h,c
	nop
	nop
	nop
	dec e
	ld a,(bc)
	ld bc,00000h
	nop
	ld h,c
	nop
	jr z,l7bd0h
	nop
	nop
	ld h,c
	nop
	nop
	nop
l7bd0h:
	inc b
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc e
	ld a,(bc)
	jr z,l7bfdh
	nop
	nop
	inc e
	ld a,(bc)
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	ld h,c
l7bfdh:
	nop
	nop
	nop
	ld (bc),a
	rrca
	ld a,(de)
	ld a,(bc)
	ld (03203h),a
	inc bc
	ld a,(de)
	ld a,(bc)
	ld bc,00000h
	nop
	ld h,c
	nop
	ld h,a
	ld bc,00167h
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	ld l,e
	ld bc,0016bh
	ld a,(de)
	ld a,(bc)
	ld bc,00000h
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	inc (hl)
	inc bc
	inc (hl)
	inc bc
	ld a,(de)
	ld a,(bc)
	ld bc,00000h
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	ld l,e
	ld bc,0016bh
	ld a,(de)
	ld a,(bc)
	ld (bc),a
	nop
	nop
	nop
	ld h,c
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld a,(de)
	ld a,(bc)
	ld bc,00000h
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	ld l,c
	nop
	nop
	nop
	nop
	nop
	ld l,c
	nop
	nop
	nop
	nop
	nop
	dec e
	ld a,(bc)
	nop
	nop
	nop
	nop
	dec e
	ld a,(bc)
	ld (bc),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld (bc),a
	rrca
	jr l7cd0h
	ld h,003h
	ld h,003h
	ld (00101h),a
	nop
	nop
	nop
	ld h,c
	nop
l7cd0h:
	ld h,d
	djnz l7d35h
	ld c,061h
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	inc c
	ld l,c
	inc bc
	ld l,d
	inc bc
	ld (00001h),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld bc,00000h
	nop
	nop
	nop
	inc h
	inc bc
	inc h
	inc bc
	ld (00201h),a
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,0016bh
	ld h,c
	nop
	nop
	nop
	dec b
	rrca
	jr l7d18h
	ld h,003h
	ld h,003h
	ld (00101h),a
	nop
	nop
	nop
	ld h,c
	nop
l7d18h:
	ld l,e
	ld bc,0016bh
	ld h,c
	nop
	nop
	nop
	nop
	nop
	jr l7d30h
	nop
	nop
	nop
	nop
	ld (00301h),a
	nop
	nop
	nop
	ld h,c
	nop
l7d30h:
	nop
	nop
	nop
	nop
	ld h,c
l7d35h:
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	inc c
	inc h
	inc bc
	inc h
	inc bc
	ld (00301h),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld bc,00900h
	rrca
	nop
	nop
	ld h,003h
	ld h,003h
	ld (00201h),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld c,00ch
	nop
	nop
	nop
	nop
	ld (00301h),a
	nop
	nop
	nop
	ld h,c
	nop
	ld l,e
	ld bc,0016bh
	ld h,c
	nop
	nop
	nop
	nop
	nop
	jr l7d90h
	nop
	nop
	nop
	nop
	ld (00102h),a
	nop
	nop
	nop
	ld h,c
	nop
l7d90h:
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	inc c
	nop
	nop
	nop
	nop
	ld (00002h),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld bc,00200h
	rrca
	nop
	nop
	jr nc,$+5
	jr nc,l7dbbh
	ld (00202h),a
l7dbbh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	dec b
	rrca
	jr l7dd8h
	ld l,b
	inc bc
	ld h,a
	inc bc
	ld (00102h),a
	nop
	nop
	nop
	ld h,c
	nop
l7dd8h:
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	jr l7df0h
	nop
	nop
	nop
	nop
	ld (00302h),a
	nop
	nop
	nop
	ld h,c
	nop
l7df0h:
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	inc c
	dec hl
	inc bc
	dec hl
	inc bc
	ld (00302h),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld bc,00900h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld (00202h),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	jr l7e38h
	ld l,e
	ld bc,0016bh
	ld (00302h),a
	nop
	nop
	nop
	ld h,c
	nop
l7e38h:
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	rlca
	rrca
	jr l7e50h
	ld h,003h
	ld h,003h
	ld (00103h),a
	nop
	nop
	nop
	ld h,c
	nop
l7e50h:
	ld h,d
	djnz l7e53h
l7e53h:
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	inc c
	ld l,c
	inc bc
	ld l,d
	inc bc
	ld (00003h),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld bc,00000h
	nop
	nop
	nop
	inc h
	inc bc
	inc h
	inc bc
	ld (00203h),a
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,0016bh
	ld h,c
	nop
	nop
	nop
	inc b
	rrca
	jr l7e98h
	ld h,003h
	ld h,003h
	ld (00103h),a
	nop
	nop
	nop
	ld h,c
	nop
l7e98h:
	ld l,e
	ld bc,0016bh
	ld h,c
	nop
	nop
	nop
	nop
	nop
	jr l7eb0h
	nop
	nop
	nop
	nop
	ld (00303h),a
	nop
	nop
	nop
	ld h,c
	nop
l7eb0h:
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	inc c
	nop
	nop
	nop
	nop
	ld (00303h),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (00203h),a
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,0016bh
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld c,00ch
	nop
	nop
	nop
	nop
	ld (00303h),a
	nop
	nop
	nop
	ld h,c
	nop
	ld l,e
	ld bc,0016bh
	ld h,c
	nop
	nop
	nop
	nop
	nop
	jr l7f10h
	ld (03203h),a
	inc bc
	ld (00104h),a
	nop
	nop
	nop
	ld h,c
	nop
l7f10h:
	ld h,a
	ld bc,00167h
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	inc c
	ld l,e
	ld bc,0016bh
	ld (00004h),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (00204h),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	dec b
	rrca
	jr l7f58h
	inc (hl)
	inc bc
	inc (hl)
	inc bc
	ld (00104h),a
	nop
	nop
	nop
	ld h,c
	nop
l7f58h:
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	jr l7f70h
	ld l,e
	ld bc,0016bh
	ld (00304h),a
	nop
	nop
	nop
	ld h,c
	nop
l7f70h:
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	inc c
	nop
	nop
	nop
	nop
	ld (00304h),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld (00204h),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld h,c
	nop
	nop
	nop
	nop
	nop
	jr l7fb8h
	nop
	nop
	ld l,h
	ex af,af'
	ld (00304h),a
	nop
	nop
	nop
	ld h,c
	nop
l7fb8h:
	nop
	nop
	ld h,d
	ld b,061h
	nop
	nop
	nop
	ld (bc),a
	rrca
	jr l7fd0h
	ld h,003h
	ld h,003h
	ld (00105h),a
	nop
	nop
	nop
	ld h,c
	nop
l7fd0h:
	ld h,d
	djnz l7fd3h
l7fd3h:
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	inc c
	ld l,c
	inc bc
	ld l,d
	inc bc
	ld (00005h),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld bc,00000h
	nop
	nop
	nop
	inc h
	inc bc
	inc h
	inc bc
	ld (00205h),a
	nop
	nop
	nop
	nop
	nop
