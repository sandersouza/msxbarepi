; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank19.asm /tmp/smanbow2_bank.bin

	org 04000h

	ld c,l
	ld h,c
	ld l,(hl)
	ld h,d
	ld l,a
	ld (hl),a
	jr nz,$+52
	jr nz,l4037h
	jr nz,$+71
	ld l,(hl)
	ld h,h
	ld h,d
	ld l,a
	ld (hl),e
	ld (hl),e
	jr nz,l4068h
	ld (hl),l
	ld l,(hl)
	ld h,l
	jr nz,l4039h
	jr nz,l403bh
	jr nz,l403dh
	jr nz,l403fh
	jr nz,l4041h
	jr nz,l4043h
	jr nz,l4045h
	jr nz,l4047h
	jr nz,l4049h
	jr nz,l404bh
	jr nz,l404dh
	jr nz,$+34
	jr nz,$+34
	jr nz,l4053h
	jr nz,l4055h
	jr nz,l4057h
l4037h:
	jr nz,l4059h
l4039h:
	jr nz,$+34
l403bh:
	jr nz,l405dh
l403dh:
	jr nz,l405fh
l403fh:
	jr nz,l4061h
l4041h:
	jr nz,l4063h
l4043h:
	ld c,l
	ld d,l
l4045h:
	ld d,e
	ld c,c
l4047h:
	ld c,(hl)
	ld d,e
l4049h:
	ld d,h
	ld d,d
l404bh:
	ld d,e
	ld b,d
l404dh:
	ld c,e
	jr nc,l4050h
l4050h:
	ld bc,00100h
l4053h:
	ld (bc),a
	inc bc
l4055h:
	inc b
	dec b
l4057h:
	ld b,007h
l4059h:
	ex af,af'
	ld bc,00302h
l405dh:
	inc b
	dec b
l405fh:
	ld b,007h
l4061h:
	ex af,af'
	add hl,bc
l4063h:
	ld a,(bc)
	dec bc
	inc c
	add hl,bc
	ld a,(bc)
l4068h:
	dec bc
	add hl,de
	dec c
	ld c,00fh
	djnz $+11
	ld a,(bc)
	dec bc
	inc c
	ld de,01312h
	inc d
	dec d
	ld d,017h
	jr l408ch
	ld (de),a
	inc de
	inc d
	dec d
	ld d,017h
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
l408ch:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr $+17
	rrca
	rrca
	rrca
	rrca
	nop
	jr nc,l418ah
	cpl
	add a,d
	add a,b
	add a,h
	ld a,a
	add a,c
	dec bc
	djnz l4173h
	djnz l4175h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4173h:
	nop
	nop
l4175h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l418ah:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc d
	rrca
	ld h,d
	dec l
	ld h,d
	ld l,014h
	rrca
	inc d
	rrca
	ld b,000h
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
	nop
	nop
	nop
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
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	add hl,bc
	ld a,(bc)
	dec d
	rrca
	add hl,bc
	rrca
	add hl,bc
	rrca
	inc d
	rrca
	ld b,000h
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
	dec d
	ld a,(bc)
	dec d
	rrca
	add hl,bc
	rrca
	dec d
	rrca
	jr nz,l4221h
	ld b,000h
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
	add hl,bc
l4221h:
	ld a,(bc)
	dec d
	rrca
	add hl,bc
	rrca
	add hl,bc
	rrca
	inc d
	rrca
	ld b,000h
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
	ld h,d
	rrca
	nop
	nop
	nop
	nop
	ld h,d
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
	inc d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	nop
	nop
	ex af,af'
	ld a,(bc)
	ld bc,00000h
	nop
	ld h,d
	add hl,hl
	ld h,d
	add hl,hl
	ld l,d
	ld (bc),a
	nop
	nop
	nop
	nop
	inc d
	rrca
	ld h,c
	nop
	ld h,c
	nop
	inc d
	ld a,(bc)
	ld h,c
	nop
	inc bc
	nop
	ld h,c
	nop
	ld l,d
	ld de,01169h
	nop
	nop
	ld l,c
	ld de,00003h
	inc d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	inc d
	ld a,(bc)
	ex af,af'
	ld a,(bc)
	inc bc
	nop
	ld l,c
	ld (bc),a
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
	ld h,c
	nop
	inc d
	rrca
	inc d
	rrca
	inc d
	ld a,(bc)
	inc d
	ld a,(bc)
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
	nop
	nop
	inc d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	ld h,c
	nop
	ex af,af'
	ld a,(bc)
	ld (bc),a
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
	ld hl,l610fh
	nop
	ld h,c
	nop
	inc d
	ld a,(bc)
	ld h,c
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	ld h,d
	jr z,l436ch
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ex af,af'
	rrca
	ex af,af'
	rrca
	ld hl,0080ah
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
	nop
	nop
	nop
	inc d
	rrca
	inc d
	rrca
	inc d
	rrca
	ld h,c
	nop
	inc d
	ld a,(bc)
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
	nop
	nop
	inc d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	inc d
	ld a,(bc)
	ex af,af'
	ld a,(bc)
	ld bc,l6100h
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
	jr nz,l4369h
	inc d
	rrca
	inc d
	rrca
	inc d
	ld a,(bc)
	inc d
	ld a,(bc)
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
l4369h:
	nop
	ld h,c
	nop
l436ch:
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ex af,af'
	rrca
	ex af,af'
	rrca
	jr nz,l4382h
	ex af,af'
	ld a,(bc)
	inc bc
	nop
	nop
	nop
	ld h,d
	jr z,l43e3h
	add hl,hl
l4382h:
	nop
	nop
	nop
	nop
	nop
	nop
	inc d
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld (bc),a
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
	inc d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	inc d
	ld a,(bc)
	ex af,af'
	ld a,(bc)
	inc b
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
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	inc d
	ld a,(bc)
	ld h,c
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
	nop
	nop
	inc d
	rrca
	add hl,bc
	rrca
	add hl,bc
	rrca
	ld h,c
	nop
	add hl,bc
	ld a,(bc)
	inc bc
	nop
	ld h,c
	nop
	ld h,d
	add hl,hl
	ld h,d
	ld d,b
	nop
l43e3h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	jr z,l444fh
	add hl,hl
	inc d
	ld a,(bc)
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld h,d
	daa
	ld h,d
	jr z,l445ch
	nop
	nop
	nop
	inc bc
	nop
	inc d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	nop
	nop
	ex af,af'
	ld a,(bc)
	ld bc,00000h
	nop
	ld h,d
	jr z,l4473h
	daa
	nop
	nop
	nop
	nop
	nop
	nop
	inc d
	rrca
	ld h,d
	add hl,hl
	ld h,d
	jr z,l4433h
	ld a,(bc)
	nop
	nop
	inc b
	nop
	ld h,c
	nop
	ld h,d
	daa
	ld h,d
	add hl,hl
	nop
	nop
	nop
	nop
	nop
	nop
	inc d
	rrca
	inc d
l4433h:
	rrca
	inc d
	rrca
	inc d
	ld a,(bc)
	inc d
	ld a,(bc)
	ld (bc),a
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
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	inc d
l444fh:
	ld a,(bc)
	ld h,c
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
l445ch:
	nop
	nop
	nop
	nop
	inc d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	ld h,c
	nop
	ex af,af'
	ld a,(bc)
	ld (bc),a
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
l4473h:
	nop
	nop
	nop
	inc bc
	nop
	ld hl,l610fh
	nop
	ld h,c
	nop
	inc d
	ld a,(bc)
	ld h,c
	nop
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
	nop
	nop
	nop
	nop
	ld h,c
	nop
	inc d
	rrca
	inc d
	rrca
	ld hl,0140ah
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
	nop
	inc bc
	nop
	inc d
	rrca
	inc d
	rrca
	inc d
	rrca
	ld h,c
	nop
	inc d
	ld a,(bc)
	ld bc,l6100h
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
	ld (de),a
	rrca
	ld (de),a
	rrca
	ld (de),a
	rrca
	ld b,00fh
	ld (de),a
	ld a,(bc)
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
	ld (de),a
	rrca
	ld b,00fh
	ld b,00fh
	ld (de),a
	rrca
	ld b,00ah
	ld (bc),a
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
	inc bc
	nop
	ld h,c
	nop
	ld (de),a
	rrca
	ld (de),a
	rrca
	ld (de),a
	rrca
	ld (de),a
	ld a,(bc)
	ld bc,00000h
	nop
	ld l,b
	ret z
	ld l,b
	ret z
	nop
	nop
	ld l,b
	ret z
	nop
	nop
	ld b,00fh
	ld b,00fh
	ld (de),a
	rrca
	ld h,c
	nop
	ld (de),a
	ld a,(bc)
	inc bc
	nop
	ld h,c
	nop
	ld h,h
	ld (02264h),hl
	nop
	nop
	ld h,h
	ld (00003h),hl
	ld (de),a
	rrca
	nop
	nop
	nop
	nop
	ld (de),a
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
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld h,h
	xor d
	ld l,h
	dec b
	ld l,h
	dec b
	ld h,h
	xor d
	ld l,h
	dec b
	inc bc
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	ld l,h
	ld bc,00000h
	inc bc
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld (bc),a
	nop
	ld l,h
	inc bc
	nop
	nop
	nop
	nop
	ld l,h
	inc bc
	nop
	nop
	inc bc
	nop
	ld l,h
	dec b
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	dec b
	ld l,h
	ld (bc),a
	ld (bc),a
	nop
	ld l,h
	ld b,000h
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	inc bc
	nop
	inc d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	ld h,d
	inc h
	ex af,af'
	ld a,(bc)
	ld bc,l6200h
	ld hl,(00000h)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc d
	rrca
	ld h,c
	nop
	ld h,c
	nop
	inc d
	ld a,(bc)
	ld h,c
	nop
	inc bc
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
	inc bc
	nop
	inc d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	inc d
	ld a,(bc)
	ex af,af'
	ld a,(bc)
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
	nop
	nop
	nop
	nop
	ld h,c
	nop
	inc d
	rrca
	inc d
	rrca
	inc d
	ld a,(bc)
	inc d
	ld a,(bc)
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
	nop
	nop
	inc d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	ld h,c
	nop
	ex af,af'
	ld a,(bc)
	ld (bc),a
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
	ld hl,l610fh
	nop
	ld h,c
	nop
	inc d
	ld a,(bc)
	ld h,c
	nop
	inc bc
	nop
	nop
	nop
	ld h,d
	add hl,hl
	ld h,d
	inc l
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ex af,af'
	rrca
	ex af,af'
	rrca
	ld hl,0080ah
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
	nop
	nop
	nop
	inc d
	rrca
	inc d
	rrca
	inc d
	rrca
	ld h,c
	nop
	inc d
	ld a,(bc)
	inc bc
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
	inc bc
	nop
	inc d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	inc d
	ld a,(bc)
	ex af,af'
	ld a,(bc)
	ld bc,l6100h
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
	jr nz,l4669h
	inc d
	rrca
	inc d
	rrca
	inc d
	ld a,(bc)
	inc d
	ld a,(bc)
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
l4669h:
	nop
	ld h,c
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ex af,af'
	rrca
	ex af,af'
	rrca
	jr nz,l4682h
	ex af,af'
	ld a,(bc)
	inc bc
	nop
	nop
	nop
	ld h,d
	jr z,l46e3h
	dec l
l4682h:
	nop
	nop
	nop
	nop
	nop
	nop
	inc d
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld (bc),a
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
	inc d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	inc d
	ld a,(bc)
	ex af,af'
	ld a,(bc)
	inc b
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
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	inc d
	ld a,(bc)
	ld h,c
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
	nop
	nop
	inc d
	rrca
	add hl,bc
	rrca
	add hl,bc
	rrca
	ld h,c
	nop
	add hl,bc
	ld a,(bc)
	inc bc
	nop
	ld h,c
	nop
	ld h,d
	add hl,hl
	ld h,d
	ld l,000h
l46e3h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	jr z,l474fh
	cpl
	inc d
	ld a,(bc)
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	ld h,d
	daa
	ld h,d
	jr nc,l475ch
	nop
	nop
	nop
	nop
	nop
	inc d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	nop
	nop
	ex af,af'
	ld a,(bc)
	ld bc,00000h
	nop
	ld h,d
	jr z,l4773h
	jr z,l4713h
l4713h:
	nop
	nop
	nop
	nop
	nop
	inc d
	rrca
	ld h,d
	add hl,hl
	ld h,d
	add hl,hl
	inc d
	ld a,(bc)
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld h,d
	daa
	ld h,d
	daa
	nop
	nop
	nop
	nop
	inc bc
	nop
	inc d
	rrca
	inc d
	rrca
	inc d
	rrca
	inc d
	ld a,(bc)
	inc d
	ld a,(bc)
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
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	inc d
l474fh:
	ld a,(bc)
	ld h,c
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
l475ch:
	nop
	nop
	nop
	nop
	inc d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	ld h,c
	nop
	ex af,af'
	ld a,(bc)
	ld (bc),a
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
l4773h:
	nop
	nop
	nop
	inc bc
	nop
	ld hl,l610fh
	nop
	ld h,c
	nop
	inc d
	ld a,(bc)
	ld h,c
	nop
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
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	inc d
	rrca
	inc d
	rrca
	ld hl,0140ah
	ld a,(bc)
	inc b
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
	inc d
	rrca
	inc d
	rrca
	inc d
	rrca
	ld h,c
	nop
	inc d
	ld a,(bc)
	nop
	nop
	ld h,c
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
	ld (de),a
	rrca
	ld (de),a
	rrca
	ld (de),a
	rrca
	ld b,00fh
	ld (de),a
	ld a,(bc)
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
	ld (de),a
	rrca
	ld b,00fh
	ld b,00fh
	ld (de),a
	rrca
	ld b,00ah
	ld (bc),a
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
	inc bc
	nop
	ld h,c
	nop
	ld (de),a
	rrca
	ld (de),a
	rrca
	ld (de),a
	rrca
	ld (de),a
	ld a,(bc)
	ld bc,00000h
	nop
	ld l,b
	ret z
	ld l,b
	ret z
	nop
	nop
	ld l,b
	ret z
	nop
	nop
	ld b,00fh
	ld b,00fh
	ld (de),a
	rrca
	ld h,c
	nop
	ld (de),a
	ld a,(bc)
	inc bc
	nop
	ld h,c
	nop
	ld h,h
	ld (02264h),hl
	nop
	nop
	ld h,h
	ld (00003h),hl
	ld (de),a
	rrca
	nop
	nop
	nop
	nop
	ld (de),a
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
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld h,h
	xor d
	ld l,h
	dec b
	ld l,h
	dec b
	ld h,h
	xor d
	ld l,h
	dec b
	ld (bc),a
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	ld l,h
	ld bc,00000h
	inc b
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	nop
	nop
	ld l,h
	inc bc
	nop
	nop
	nop
	nop
	ld l,h
	inc bc
	nop
	nop
	nop
	nop
	ld l,h
	dec b
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld h,c
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,d
	rrca
	nop
	nop
	nop
	nop
	ld h,d
	rrca
	nop
	nop
	nop
	nop
	ld h,d
	rra
	ex af,af'
	rrca
	ex af,af'
	rrca
	ld h,d
	rra
	nop
	nop
	ld bc,l6a00h
	ld b,062h
	daa
	ld h,d
	daa
	ld l,c
	ld b,000h
	nop
	nop
	nop
	inc d
	dec bc
	ld h,c
	nop
	ld h,c
	nop
	inc d
	dec bc
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
	ld h,c
	nop
	nop
	nop
	inc bc
	nop
	dec d
	dec bc
	ex af,af'
	rrca
	ex af,af'
	rrca
	dec d
	dec bc
	inc d
	ex af,af'
	inc b
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
	nop
	nop
	inc d
	rrca
	inc d
	rrca
	nop
	nop
	dec d
	ex af,af'
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
	ld h,c
	nop
	nop
	nop
	dec e
	dec bc
	ex af,af'
	rrca
	ex af,af'
	rrca
	dec e
	dec bc
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
	ld h,c
	nop
	nop
	nop
	nop
	nop
	dec d
	dec bc
	ld h,c
	nop
	ld h,c
	nop
	dec d
	dec bc
	dec e
	ex af,af'
	inc b
	nop
	nop
	nop
	ld h,d
	jr z,l496bh
	jr z,l496ch
	nop
	ld h,c
	nop
	nop
	nop
	dec d
	inc b
	ex af,af'
	rrca
	ex af,af'
	rrca
	nop
	nop
	dec d
	ld (bc),a
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
	ld h,c
	nop
	nop
	nop
	dec d
	inc b
	inc d
	rrca
	inc d
	rrca
	nop
	nop
	dec d
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
	ld h,c
	nop
	inc bc
	nop
	inc d
	dec bc
	ex af,af'
	rrca
	ex af,af'
	rrca
	inc d
	dec bc
	dec d
	rlca
	ld bc,00000h
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
	dec d
	dec bc
	inc d
	rrca
	inc d
	rrca
	dec d
	dec bc
	inc d
	ex af,af'
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
l496bh:
	nop
l496ch:
	ld h,c
	nop
	inc bc
	nop
	inc d
	dec bc
	ex af,af'
	rrca
	ex af,af'
	rrca
	inc d
	dec bc
	dec d
	ex af,af'
	inc bc
	nop
	nop
	nop
	ld h,d
	add hl,hl
	ld h,d
	add hl,hl
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	dec d
	dec bc
	ld h,c
	nop
	ld h,c
	nop
	dec d
	dec bc
	inc d
	ex af,af'
	ld (bc),a
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
	nop
	nop
	ld b,00fh
	ld b,00fh
	nop
	nop
	nop
	nop
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
	nop
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
	dec de
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld h,d
	ld hl,(02a62h)
	ld l,e
	ld bc,00015h
	nop
	nop
	dec de
	dec bc
	ld b,00fh
	ld b,00fh
	dec de
	dec bc
	ld l,e
	ld bc,00003h
	nop
	nop
	ld h,d
	add hl,hl
	ld h,d
	add hl,hl
	ld h,c
	nop
	dec d
	inc b
	nop
	nop
	dec d
	dec bc
	ld h,d
	jr z,l4a4fh
	jr z,l4a04h
	dec bc
	dec de
	ex af,af'
	inc bc
	nop
	nop
	nop
	ld h,d
	daa
	ld h,d
	daa
	ld h,c
	nop
	ld h,c
	nop
	inc bc
	nop
	nop
	nop
	ex af,af'
	rrca
l4a04h:
	ex af,af'
	rrca
	nop
	nop
	dec d
	ex af,af'
	ld bc,00000h
	nop
	ld h,d
	jr z,l4a73h
	ld hl,(00000h)
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,d
	add hl,hl
	ld h,d
	add hl,hl
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld h,d
	daa
	ld h,d
	jr z,l4a2bh
l4a2bh:
	nop
	nop
	nop
	inc bc
	nop
	dec d
	dec bc
	ex af,af'
	rrca
	ex af,af'
	rrca
	dec d
	dec bc
	nop
	nop
	inc b
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
	inc d
	dec bc
	ld h,c
	nop
	ld h,c
	nop
	inc d
l4a4fh:
	dec bc
	dec d
	ex af,af'
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
	nop
	nop
	dec d
	dec bc
	ex af,af'
	rrca
	ex af,af'
	rrca
	dec d
	dec bc
	inc d
	ex af,af'
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
l4a73h:
	nop
	ld h,c
	nop
	inc bc
	nop
	dec d
	dec bc
	ld h,c
	nop
	ld h,c
	nop
	dec d
	dec bc
	dec d
	ex af,af'
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
	nop
	nop
	dec e
	dec bc
	ld b,00fh
	ld b,00fh
	dec e
	dec bc
	dec d
	ex af,af'
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	inc bc
	nop
	nop
	nop
	ld b,00fh
	ld b,00fh
	nop
	nop
	dec e
	ex af,af'
	ld bc,00000h
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
	inc d
	dec bc
	ld (de),a
	rrca
	ld (de),a
	rrca
	inc d
	dec bc
	nop
	nop
	inc bc
	nop
	nop
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
	dec d
	dec bc
	djnz l4aebh
	djnz l4aedh
	dec d
	dec bc
	inc d
	ex af,af'
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
l4aebh:
	nop
	ld h,c
l4aedh:
	nop
	inc bc
	nop
	inc d
	dec bc
	ld h,c
	nop
	ld h,c
	nop
	inc d
	dec bc
	dec d
	ex af,af'
	ld bc,00000h
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
	dec d
	dec bc
	ex af,af'
	rrca
	ex af,af'
	rrca
	dec d
	dec bc
	inc d
	ex af,af'
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
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	dec d
	ex af,af'
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
	ld h,c
	nop
	inc c
	nop
	nop
	nop
	inc d
	rrca
	inc d
	rrca
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
	ld l,e
	ld bc,00000h
	nop
	nop
	dec de
	dec bc
	ex af,af'
	rrca
	ex af,af'
	rrca
	dec de
	dec bc
	nop
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
	dec d
	dec bc
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	dec de
	ex af,af'
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
	ld h,c
	nop
	inc bc
	nop
	ld h,d
	rra
	rlca
	rrca
	rlca
	rrca
	ld h,d
	rra
	ld h,c
	nop
	ld bc,00000h
	nop
	ld h,d
	ld hl,(02762h)
	nop
	nop
	nop
	nop
	nop
	nop
	inc de
	dec bc
	ld h,c
	nop
	ld h,c
	nop
	inc de
	dec bc
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
	ld h,c
	nop
	nop
	nop
	nop
	nop
	inc d
	dec bc
	rlca
	rrca
	rlca
	rrca
	inc d
	dec bc
	inc de
	ex af,af'
	ld bc,00000h
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
	nop
	nop
	inc de
	rrca
	inc de
	rrca
	nop
	nop
	inc d
	ex af,af'
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	inc bc
	nop
	inc e
	dec bc
	rlca
	rrca
	rlca
	rrca
	inc e
	dec bc
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
	ld h,c
	nop
	nop
	nop
	nop
	nop
	inc d
	dec bc
	ld h,c
	nop
	ld h,c
	nop
	inc d
	dec bc
	inc e
	ex af,af'
	ld bc,00000h
	nop
	ld h,d
	add hl,hl
	ld h,d
	jr z,l4c6ch
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	rlca
	rrca
	rlca
	rrca
	nop
	nop
	inc d
	ex af,af'
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
	inc bc
	nop
	nop
	nop
	inc de
	rrca
	inc de
	rrca
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
	nop
	nop
	inc de
	dec bc
	rlca
	rrca
	rlca
	rrca
	inc de
	dec bc
	nop
	nop
	ld bc,00000h
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
	inc d
	dec bc
	inc de
	rrca
	inc de
	rrca
	inc d
	dec bc
	inc de
	ex af,af'
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
l4c6ch:
	ld h,c
	nop
	inc bc
	nop
	inc de
	dec bc
	rlca
	rrca
	rlca
	rrca
	inc de
	dec bc
	inc d
	ex af,af'
	inc bc
	nop
	nop
	nop
	ld h,d
	jr z,l4ce3h
	daa
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	inc d
	dec bc
	ld h,c
	nop
	ld h,c
	nop
	inc d
	dec bc
	inc de
	ex af,af'
	ld (bc),a
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
	nop
	nop
	dec b
	rrca
	dec b
	rrca
	nop
	nop
	inc d
	ex af,af'
	nop
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
	ld h,c
	nop
	ld h,c
	nop
	ld a,(de)
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
	ld l,e
	ld bc,00000h
	inc bc
	nop
	ld a,(de)
	dec bc
	dec b
	rrca
	dec b
	rrca
	ld a,(de)
	dec bc
	ld c,000h
	ld (bc),a
	nop
	nop
	nop
	ld h,d
	add hl,hl
	ld h,d
	jr z,l4d44h
l4ce3h:
	nop
	ld l,e
	ld bc,00000h
	inc d
	dec bc
	ld h,d
	jr z,l4d4fh
	daa
	inc d
	dec bc
	ld a,(de)
	ex af,af'
	nop
	nop
	nop
	nop
	ld h,d
	daa
	ld h,d
	jr z,l4d5ch
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	rlca
	rrca
	rlca
	rrca
	nop
	nop
	inc d
	ex af,af'
	ld bc,00000h
	nop
	ld h,d
	jr z,l4d73h
	dec l
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,d
	add hl,hl
	ld h,d
	ld l,000h
	nop
	nop
	nop
	inc b
	nop
	nop
	nop
	ld h,d
	daa
	ld h,d
	daa
	nop
	nop
	nop
	nop
	nop
	nop
	inc d
	dec bc
	rlca
	rrca
	rlca
	rrca
	inc d
	dec bc
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
	ld h,c
	nop
l4d44h:
	nop
	nop
	nop
	nop
	inc de
	dec bc
	ld h,c
	nop
	ld h,c
	nop
	inc de
l4d4fh:
	dec bc
	inc d
	ex af,af'
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
l4d5ch:
	ld h,c
	nop
	nop
	nop
	inc d
	dec bc
	rlca
	rrca
	rlca
	rrca
	inc d
	dec bc
	inc de
	ex af,af'
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
l4d73h:
	nop
	ld h,c
	nop
	inc bc
	nop
	inc d
	dec bc
	ld h,c
	nop
	ld h,c
	nop
	inc d
	dec bc
	inc d
	ex af,af'
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
	nop
	nop
	inc e
	dec bc
	dec b
	rrca
	dec b
	rrca
	inc e
	dec bc
	inc d
	ex af,af'
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	inc bc
	nop
	nop
	nop
	dec b
	rrca
	dec b
	rrca
	nop
	nop
	inc e
	ex af,af'
	ld bc,00000h
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
	inc de
	dec bc
	ld de,0110fh
	rrca
	inc de
	dec bc
	nop
	nop
	inc bc
	nop
	nop
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
	inc d
	dec bc
	rrca
	rrca
	rrca
	rrca
	inc d
	dec bc
	inc de
	ex af,af'
	ld (bc),a
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
	inc de
	dec bc
	ld h,c
	nop
	ld h,c
	nop
	inc de
	dec bc
	inc d
	ex af,af'
	ld bc,00000h
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
	inc d
	dec bc
	rlca
	rrca
	rlca
	rrca
	inc d
	dec bc
	inc de
	ex af,af'
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
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	inc d
	ex af,af'
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
	ld h,c
	nop
	inc bc
	nop
	nop
	nop
	inc de
	rrca
	inc de
	rrca
	nop
	nop
	nop
	nop
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
	nop
	nop
	inc bc
	nop
	ld a,(de)
	dec bc
	rlca
	rrca
	rlca
	rrca
	ld a,(de)
	dec bc
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
	ld h,c
	nop
	nop
	nop
	inc bc
	nop
	inc d
	dec bc
	ld h,c
	nop
	ld h,c
	nop
	inc d
	dec bc
	ld a,(de)
	ex af,af'
	ld (bc),a
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
	ld h,d
	rra
	ex af,af'
	rrca
	ex af,af'
	rrca
	ld h,d
	ld a,(de)
	nop
	nop
	ld bc,l6a00h
	ld (bc),a
	ld h,d
	ld hl,(02e62h)
	jr nz,l4e97h
	nop
	nop
	nop
l4e97h:
	nop
	inc d
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld h,a
	inc bc
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
	dec d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	ld l,e
	ld bc,00914h
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
	ld h,c
	nop
	nop
	nop
	nop
	nop
	inc d
	rrca
	inc d
	rrca
	ld l,e
	ld bc,00915h
	ld bc,00000h
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
	dec e
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	ld l,e
	ld bc,00000h
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
	dec d
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld l,e
	ld bc,0091dh
	ld bc,00000h
	nop
	ld h,d
	add hl,hl
	ld h,d
	dec l
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	rrca
	ex af,af'
	rrca
	nop
	nop
	dec d
	add hl,bc
	ld bc,00000h
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
	inc d
	rrca
	inc d
	rrca
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
	nop
	nop
	inc d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
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
	dec d
	rrca
	inc d
	rrca
	inc d
	rrca
	nop
	nop
	inc d
	add hl,bc
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
	ld h,c
	nop
	inc bc
	nop
	inc d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	nop
	nop
	dec d
	add hl,bc
	inc bc
	nop
	nop
	nop
	ld h,d
	jr z,l4fe3h
	inc l
	nop
	nop
	ld h,c
	nop
	nop
	nop
	dec d
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	inc d
	add hl,bc
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	dec de
	inc bc
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld b,00fh
	ld b,00fh
	ld h,a
	inc b
	dec d
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00061h
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
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00000h
	nop
	nop
	dec de
	rrca
	ld b,00fh
	ld b,00fh
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	ld h,d
	add hl,hl
	ld h,d
	inc l
	ld l,e
l4fe3h:
	ld bc,00000h
	nop
	nop
	dec d
	rrca
	ld h,d
	jr z,l504fh
	dec hl
	nop
	nop
	dec de
	add hl,bc
	inc bc
	nop
	nop
	nop
	ld h,d
	daa
	ld h,d
	ld hl,(0016bh)
	ld h,c
	nop
	nop
	nop
	ccf
	nop
	ex af,af'
	rrca
	ex af,af'
	rrca
	ld e,003h
	dec d
	add hl,bc
	ld bc,00000h
	nop
	ld h,d
	jr z,l5073h
	add hl,hl
	ld h,a
	ld b,061h
	nop
	nop
	nop
	nop
	nop
	ld h,d
	add hl,hl
	ld h,d
	jr z,l508ah
	ld bc,00000h
	inc bc
	nop
	nop
	nop
	ld h,d
	daa
	ld h,d
	daa
	nop
	nop
	nop
	nop
	inc bc
	nop
	dec d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	ld l,e
	ld bc,00000h
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
	nop
	nop
	inc d
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld l,e
l504fh:
	ld bc,00915h
	ld bc,00000h
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
	dec d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
l5066h:
	ld l,e
	ld bc,00914h
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5073h:
	nop
	ld h,c
	nop
	nop
	nop
	dec d
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	dec d
	add hl,bc
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
l508ah:
	nop
	nop
	ld h,c
	nop
	nop
	nop
	dec e
	rrca
	ld b,00fh
	ld b,00fh
	nop
	nop
	dec d
	add hl,bc
	ld bc,00000h
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
	ld b,00fh
	ld b,00fh
	nop
	nop
	dec e
	add hl,bc
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
	inc d
	rrca
	ld (de),a
	rrca
	ld (de),a
	rrca
	nop
	nop
	nop
	nop
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
	nop
	nop
	nop
	nop
	dec d
	rrca
	djnz l50ebh
	djnz l50edh
	nop
	nop
	inc d
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l50ebh:
	nop
	ld h,c
l50edh:
	nop
	inc bc
	nop
	inc d
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	dec d
	add hl,bc
	ld bc,00000h
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
	dec d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	nop
	nop
	inc d
	add hl,bc
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
	ld h,c
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
	dec d
	add hl,bc
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
	ld h,c
	nop
	inc bc
	nop
	nop
	nop
	inc d
	rrca
	inc d
	rrca
	nop
	nop
	nop
	nop
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
	nop
	nop
	inc bc
	nop
	dec de
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
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
	dec d
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	dec de
	add hl,bc
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
	ld h,c
	nop
	inc bc
	nop
	ld h,d
	rra
	ex af,af'
	rrca
	ex af,af'
	rrca
	ld h,d
	ld a,(de)
	inc e
	inc c
	ld bc,00000h
	nop
	ld h,d
	ld hl,(02862h)
	jr nz,l5194h
l5194h:
	nop
	nop
	nop
	nop
	inc d
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld h,a
	inc bc
	dec de
	inc c
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
	dec d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	ld l,e
	ld bc,00c19h
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
	nop
	nop
	nop
	nop
	inc d
	rrca
	inc d
	rrca
	ld l,e
	ld bc,00c1bh
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
	dec e
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	ld l,e
	ld bc,00c1ch
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
	ld h,a
	dec b
	nop
	nop
	dec d
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld l,e
	ld bc,0016bh
	ld bc,00000h
	nop
	ld h,d
	add hl,hl
	ld h,d
	daa
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	rrca
	ex af,af'
	rrca
	nop
	nop
	ld l,e
	ld bc,00001h
	nop
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
	nop
	nop
	inc d
	rrca
	inc d
	rrca
	nop
	nop
	ld l,e
	ld bc,00003h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
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
	nop
	nop
	dec d
	rrca
	inc d
	rrca
	inc d
	rrca
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
	inc d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	nop
	nop
	ld h,c
	nop
	inc bc
	nop
	nop
	nop
	ld h,d
	jr z,l52e3h
	jr z,l5283h
l5283h:
	nop
	rra
	inc c
	nop
	nop
	dec d
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	ld h,c
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec de
	nop
	jr nz,l52a8h
	nop
	nop
	nop
	nop
	ld b,00fh
	ld b,00fh
	ld l,b
	rlca
l52a8h:
	ld l,b
	rlca
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00000h
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
	ld l,e
	ld bc,00000h
	nop
	nop
	dec de
	rrca
	ld b,00fh
	ld b,00fh
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	ld h,d
	add hl,hl
	ld h,d
	add hl,hl
	ld l,e
l52e3h:
	ld bc,00000h
	nop
	nop
	dec d
	rrca
	ld h,d
	jr z,l534fh
	ld hl,(00000h)
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	ld h,d
	daa
	ld h,d
	ld hl,(0016bh)
	nop
	nop
	inc bc
	nop
	nop
	nop
	ex af,af'
	rrca
	ex af,af'
	rrca
	ld e,000h
	ld e,00ch
	ld bc,00000h
	nop
	ld h,d
	jr z,l5373h
	ld l,067h
	ld b,000h
	nop
	nop
	nop
	nop
	nop
	ld h,d
	add hl,hl
	ld h,d
	cpl
	ld l,e
	ld bc,00c1ch
	inc bc
	nop
	nop
	nop
	ld h,d
	daa
	ld h,d
	jr nc,l532bh
l532bh:
	nop
	nop
	nop
	inc bc
	nop
	dec d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	ld l,e
	ld bc,00c1bh
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
	nop
	nop
	inc d
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld l,e
l534fh:
	ld bc,00c1ch
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
	dec d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	ld l,e
	ld bc,00c1eh
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5373h:
	nop
	ld h,a
	dec b
	nop
	nop
	dec d
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	ld l,e
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
	dec e
	rrca
	ld b,00fh
	ld b,00fh
	nop
	nop
	ld l,e
	ld bc,00001h
	nop
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
	nop
	nop
	ld b,00fh
	ld b,00fh
	nop
	nop
	ld l,e
	ld bc,00003h
	nop
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
	inc d
	rrca
	ld (de),a
	rrca
	ld (de),a
	rrca
	nop
	nop
	nop
	nop
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
	nop
	nop
	nop
	nop
	dec d
	rrca
	djnz l53ebh
	djnz l53edh
	nop
	nop
	inc d
	inc c
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l53ebh:
	nop
	ld h,c
l53edh:
	nop
	inc bc
	nop
	inc d
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	dec d
	inc c
	ld bc,00000h
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
	dec d
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
	nop
	nop
	inc d
	inc c
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec de
	inc bc
	ld h,c
	nop
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,a
	inc b
	dec d
	inc c
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00061h
	inc bc
	nop
	nop
	nop
	inc d
	rrca
	inc d
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld l,e
	ld bc,00000h
	inc bc
	nop
	dec de
	rrca
	ex af,af'
	rrca
	ex af,af'
	rrca
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
	ld l,e
	ld bc,00000h
	inc bc
	nop
	dec d
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	dec de
	inc c
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00061h
	inc bc
	nop
	inc d
	dec bc
	ld (de),a
	rrca
	ld (de),a
	rrca
	nop
	nop
	nop
	nop
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
	nop
	nop
	nop
	nop
	dec d
	dec bc
	ld b,00fh
	ld b,00fh
	nop
	nop
	inc d
	ex af,af'
	ld (bc),a
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
	inc bc
	nop
	inc d
	dec bc
	ld (de),a
	rrca
	ld (de),a
	rrca
	nop
	nop
	dec d
	ex af,af'
	ld bc,l6200h
	rrca
	ld l,b
	ret z
	ld l,b
	ret z
	ld h,d
	rrca
	nop
	nop
	nop
	nop
	add hl,bc
	ex af,af'
	ld b,00fh
	ld (de),a
	rrca
	add hl,bc
	ex af,af'
	add hl,bc
	ex af,af'
	inc bc
	nop
	ld h,h
	ld a,(02264h)
	ld h,h
	ld (03a64h),hl
	ld h,h
	ld a,(00003h)
	inc d
	rrca
	nop
	nop
	nop
	nop
	inc d
	rrca
	inc d
	rrca
	ld (bc),a
	nop
	ld h,c
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
	ld hl,l6c0fh
	dec b
	ld l,h
	dec b
	dec d
	ex af,af'
	add hl,bc
	ex af,af'
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
	inc b
	nop
	ld h,c
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc d
	rrca
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld h,c
	nop
	inc d
	rrca
	ld (bc),a
	nop
	ld h,d
	rrca
	nop
	nop
	nop
	nop
	ld h,d
	rrca
	ld h,c
	nop
	nop
	nop
	inc d
	dec bc
	ld (de),a
	rrca
	ld (de),a
	rrca
	nop
	nop
	nop
	nop
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
	nop
	nop
	nop
	nop
	dec d
	dec bc
	ld b,00fh
	ld b,00fh
	nop
	nop
	inc d
	ex af,af'
	ld (bc),a
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
	inc bc
	nop
	inc d
	dec bc
	ld (de),a
	rrca
	ld (de),a
	rrca
	nop
	nop
	dec d
	ex af,af'
	ld bc,l6200h
	rrca
	ld l,b
	ret z
	ld l,b
	ret z
	ld h,d
	rrca
	nop
	nop
	nop
	nop
	add hl,bc
	ex af,af'
	ld b,00fh
	ld (de),a
	rrca
	add hl,bc
	ex af,af'
	add hl,bc
	ex af,af'
	inc bc
	nop
	ld h,h
	ld a,(02264h)
	ld h,h
	ld (03a64h),hl
	ld h,h
	ld a,(00003h)
	inc d
	rrca
	nop
	nop
	nop
	nop
	inc d
	rrca
	inc d
	rrca
	ld (bc),a
	nop
	ld h,c
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
	ld hl,l6c0fh
	dec b
	ld l,h
	dec b
	dec d
	ex af,af'
	add hl,bc
	ex af,af'
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
	inc b
	nop
	ld h,c
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc d
	rrca
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld h,c
	nop
	inc d
	rrca
	ld (bc),a
	nop
	ld h,d
	rrca
	nop
	nop
	nop
	nop
	ld h,d
	rrca
	ld h,c
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
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
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
	jr nz,$+52
	jr nz,l6037h
	jr nz,$+78
	ld h,l
	halt
	ld h,l
	ld l,h
	jr nz,l6043h
	jr nz,l6041h
	jr nz,l606ah
	ld l,b
	ld h,l
	jr nz,l605dh
	ld h,c
	halt
	ld h,l
	jr nz,l603fh
	jr nz,l6041h
	jr nz,l6043h
	jr nz,l6045h
	jr nz,l6047h
	jr nz,l6049h
	jr nz,l604bh
	jr nz,l604dh
	jr nz,l604fh
	jr nz,l6051h
	jr nz,$+34
	jr nz,l6055h
	jr nz,l6057h
l6037h:
	jr nz,l6059h
	jr nz,l605bh
	jr nz,l605dh
	jr nz,l605fh
l603fh:
	jr nz,l6061h
l6041h:
	jr nz,l6063h
l6043h:
	ld c,l
	ld d,l
l6045h:
	ld d,e
	ld c,c
l6047h:
	ld c,(hl)
	ld d,e
l6049h:
	ld d,h
	ld d,d
l604bh:
	ld d,e
	ld b,d
l604dh:
	ld c,e
	ccf
l604fh:
	nop
	nop
l6051h:
	nop
	ld bc,00302h
l6055h:
	inc b
	dec b
l6057h:
	ld b,007h
l6059h:
	ex af,af'
	add hl,bc
l605bh:
	ld a,(bc)
	dec bc
l605dh:
	inc c
	dec c
l605fh:
	ld c,00fh
l6061h:
	djnz $+19
l6063h:
	ld (de),a
	inc de
	inc d
	dec d
	ld d,017h
	inc d
l606ah:
	dec d
	ld d,031h
	jr $+27
	ld a,(de)
	dec de
	inc e
	dec e
	ld e,01fh
	dec l
	ld l,02fh
	jr nc,l60a7h
	ld l,02fh
	jr nc,l609eh
	ld hl,02322h
	inc h
	dec h
	ld h,027h
	jr z,l60b0h
	ld hl,(0002bh)
	ld bc,00302h
	inc b
	dec b
	ld b,032h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l609eh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l60a7h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l60b0h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
l610fh:
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
	dec d
	rrca
	rrca
	rrca
	rrca
	rrca
	nop
	inc b
	ld hl,(08022h)
	add a,b
	add a,b
	add a,b
	add a,b
	djnz l6172h
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
	dec c
	dec bc
	ld h,c
	nop
	ld h,c
	nop
	dec h
	rrca
	ld h,d
	ld (01501h),hl
	nop
	nop
	ld h,d
	ld (hl),062h
	ld (hl),028h
	rrca
	ld l,c
	ld (bc),a
	inc bc
	nop
	nop
	nop
	dec h
	inc bc
	jr z,l61e1h
	dec h
	rrca
	dec h
l61e1h:
	dec bc
	inc bc
	nop
	nop
	nop
	inc l
	inc bc
	cpl
	inc bc
	jr z,l61fbh
	jr z,l61f9h
	ld bc,00000h
	nop
	cpl
	inc bc
	daa
	inc bc
	dec h
	rrca
	dec h
l61f9h:
	dec bc
	inc bc
l61fbh:
	nop
	nop
	nop
	ld h,a
	inc b
l6200h:
	ld h,a
	inc b
	inc l
	rrca
	jr z,l6211h
	inc bc
l6207h:
	nop
	nop
	nop
l620ah:
	ld l,d
l620bh:
	ld (bc),a
	ld l,c
	ld (bc),a
	ld h,a
	ld (bc),a
	dec h
l6211h:
	dec bc
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld l,d
	ld bc,00b2ch
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
	ld (bc),a
	nop
	inc b
	dec bc
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,c
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
	dec bc
	dec bc
	inc sp
	inc bc
	ld hl,(02303h)
	rrca
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc hl
	rrca
	inc hl
	dec bc
	ld bc,00000h
	nop
	cpl
	inc bc
	inc sp
	inc bc
	daa
	rrca
	daa
	dec bc
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc hl
	rrca
	inc hl
	dec bc
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl,(0270fh)
	dec bc
	inc bc
	nop
	nop
	nop
	ld hl,(02f03h)
	inc bc
	ld h,a
	ld (bc),a
	inc hl
	dec bc
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl,(0030bh)
	nop
	inc b
	dec bc
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
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
	ld bc,00300h
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
	ld h,c
	nop
	ld h,c
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
	add hl,bc
	dec bc
	inc (hl)
	inc bc
	jr c,l6349h
	ld hl,0000fh
l6349h:
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld hl,0000fh
	nop
	inc bc
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	nop
	ld hl,0210fh
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
	ld hl,0010bh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl,0030bh
	nop
	nop
	nop
	jr c,$+5
	dec sp
	inc bc
	jr z,$+17
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld (hl),003h
	add hl,sp
	inc bc
	daa
	rrca
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
	jr z,l63a9h
	inc bc
	nop
	ld bc,0340bh
	inc bc
	jr c,l63a9h
	dec h
	rrca
	daa
l63a9h:
	dec bc
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
	djnz l63c5h
	inc sp
	inc bc
	ld (hl),003h
	inc hl
	rrca
	dec h
	dec bc
	inc bc
	nop
	nop
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
	ld bc,0340bh
	inc bc
	jr c,l6409h
	dec h
	rrca
	inc hl
l6409h:
	dec bc
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	nop
	inc bc
	nop
	dec c
	dec bc
	ld h,a
	ld (bc),a
	nop
	nop
	nop
	nop
	dec h
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
	ld (bc),a
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
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
	ld bc,00100h
	dec bc
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
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
	dec c
	dec bc
	ld h,c
	nop
	ld h,c
	nop
	dec h
	rrca
	nop
	nop
	ld bc,00000h
	nop
	ld h,d
	ld (hl),062h
	ld (hl),028h
	rrca
	nop
	nop
	inc bc
	nop
	nop
	nop
	dec h
	inc bc
	jr z,l64e1h
	dec h
	rrca
	dec h
l64e1h:
	dec bc
	inc bc
	nop
	nop
	nop
	inc l
	inc bc
	cpl
	inc bc
	jr z,l64fbh
	jr z,l64f9h
	ld bc,00000h
	nop
	cpl
	inc bc
	daa
	inc bc
	dec h
	rrca
	dec h
l64f9h:
	dec bc
	inc bc
l64fbh:
	nop
	nop
	nop
	ld h,a
	inc b
	ld h,a
	inc b
	inc l
	rrca
	jr z,l6511h
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
	dec h
l6511h:
	dec bc
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc l
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
	ld h,a
	ld (bc),a
	ld (bc),a
	nop
	inc b
	dec bc
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
	nop
	nop
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
	dec bc
	dec bc
	inc (hl)
	inc bc
	jr c,l6589h
	ld sp,0000fh
l6589h:
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	nop
	inc bc
	nop
	rla
	dec bc
	nop
	nop
	nop
	nop
	nop
	nop
	ld sp,00309h
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
	ld bc,00b00h
	dec bc
	inc sp
	inc bc
	ld (hl),003h
	cpl
	rrca
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld sp,03403h
	inc bc
	ld l,00fh
	nop
	nop
	inc bc
	nop
	ex af,af'
	dec bc
	cpl
	inc bc
	inc sp
	inc bc
	inc l
	rrca
	cpl
	add hl,bc
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
	ld l,009h
	inc bc
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	nop
	nop
	inc l
	add hl,bc
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
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
	dec d
	dec bc
	jr z,l6647h
	inc l
	inc bc
	dec h
l6647h:
	rrca
	nop
	nop
	ld bc,00900h
	dec bc
	nop
	nop
	nop
	nop
	inc hl
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
	dec h
	rrca
	dec h
	dec bc
	inc bc
	nop
	dec d
	dec bc
	inc l
	inc bc
	cpl
	inc bc
	jr z,l667bh
	inc hl
	dec bc
	ld bc,00900h
	dec bc
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	dec h
	dec bc
	inc bc
l667bh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr z,l6691h
	inc bc
	nop
	inc c
	dec bc
	ld hl,(02d03h)
	inc bc
	daa
	rrca
	ld h,a
l6691h:
	ld (bc),a
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
	jr z,l66a7h
	inc l
	inc bc
	dec h
l66a7h:
	rrca
	daa
	dec bc
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
	rrca
	dec bc
	daa
	inc bc
	ld hl,(02303h)
	rrca
	dec h
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
l6700h:
	ld bc,0280bh
	inc bc
	inc l
	inc bc
	dec h
	rrca
	inc hl
	dec bc
	inc bc
	nop
	nop
l670dh:
	nop
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	nop
	inc bc
	nop
	dec c
	dec bc
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	nop
	nop
	dec h
	dec bc
	rlca
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
	nop
	ld bc,0000bh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00d00h
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
	ld sp,0000fh
	nop
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	cpl
	rrca
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
	add hl,bc
	dec bc
	nop
	nop
	nop
	nop
	dec l
	rrca
	ld sp,0010bh
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	inc l
	rrca
	cpl
	dec bc
	inc bc
	nop
	nop
	nop
	inc (hl)
	inc bc
	jr c,l67e1h
	dec l
	rrca
	dec l
l67e1h:
	dec bc
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc l
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
	inc (hl)
	dec bc
	nop
	nop
	inc bc
	nop
	inc b
	dec bc
	daa
	inc bc
	ld (hl),003h
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
	jr z,l6829h
	inc bc
	nop
	add hl,bc
	dec bc
	cpl
	inc bc
	inc (hl)
	inc bc
	nop
	nop
	inc sp
l6829h:
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
	dec bc
	dec bc
	nop
	nop
	nop
	nop
	cpl
	rrca
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld l,00fh
	nop
	nop
	inc bc
	nop
	nop
	nop
	cpl
	inc bc
	inc sp
	inc bc
	cpl
	rrca
	cpl
	dec bc
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	ld l,00bh
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
	cpl
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
	ld h,a
	ld (bc),a
	inc bc
	nop
	ld bc,0360bh
	inc bc
	ld a,(03603h)
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
	nop
	nop
	inc bc
	nop
	dec bc
	dec bc
	inc (hl)
	inc bc
	jr c,$+5
	inc (hl)
	rrca
	ld (hl),00bh
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	inc b
	ld h,a
	ld (bc),a
	inc bc
	nop
	nop
	nop
	inc sp
	inc bc
	ld (hl),003h
	inc sp
	rrca
	inc (hl)
	dec bc
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
	inc b
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
	ld sp,03403h
	inc bc
	dec l
	rrca
	inc sp
	dec bc
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	dec l
	rrca
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
	dec l
	rrca
	dec l
	dec bc
	ld bc,l6700h
	jr nc,l6967h
l6967h:
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
	ld sp,03403h
	inc bc
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
	ex af,af'
	dec bc
	inc sp
	inc bc
	ld (hl),003h
	cpl
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
	ld b,00bh
	inc (hl)
	inc bc
	jr c,l69c1h
	ld sp,02f0fh
l69c1h:
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
l6a00h:
	ex af,af'
	dec bc
	inc sp
	inc bc
	scf
	inc bc
	jr nc,l6a16h
	ld sp,0030ah
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6a16h:
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
	jr nc,l6a2ch
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6a2ch:
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
	inc c
	dec bc
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
	ld h,a
	inc bc
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
	ld (bc),a
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
	ld bc,l610bh
	nop
	ld h,c
	nop
	dec h
	rrca
	add hl,hl
	dec b
	ld bc,l6115h
	nop
	nop
	nop
	nop
	nop
	daa
	rrca
	ld hl,(00005h)
	nop
	ld bc,l620bh
	ld b,062h
	ld b,067h
	ld (bc),a
	ld h,a
	ld (bc),a
	inc bc
	nop
	nop
	nop
	dec h
	ex af,af'
	add hl,hl
	inc b
	nop
	nop
	nop
	nop
	ld bc,00d00h
	dec bc
	daa
	ex af,af'
	ld hl,(00004h)
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
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
	nop
	nop
	nop
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
	ld bc,0016ch
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	ld l,h
	ld bc,0016ch
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
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
	ld bc,0000bh
	nop
	nop
	nop
	dec h
	rrca
	ld hl,(00106h)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr z,$+17
	inc l
	ld b,000h
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
	ld (bc),a
	ld bc,00000h
	nop
	dec h
	ex af,af'
	ld hl,(00004h)
	nop
	nop
	nop
	nop
	nop
	dec c
	dec bc
	jr z,l6bbch
	inc l
	inc b
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
l6bbch:
	ld h,c
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
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
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
l6c07h:
	ld bc,0016ch
l6c0ah:
	nop
l6c0bh:
	nop
	nop
	nop
	inc bc
l6c0fh:
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
	nop
	nop
	nop
	nop
	dec hl
	rrca
	rra
	nop
	ld bc,l6100h
	nop
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	ld l,e
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	djnz l6c66h
	nop
	nop
	nop
l6c66h:
	dec hl
	dec b
	rra
	ld (bc),a
	nop
	nop
	nop
	nop
	ld bc,00600h
	dec bc
	ld h,a
	ld (bc),a
	ld l,e
	ld bc,00000h
	ld l,e
	ld bc,00000h
	ld (de),a
	dec bc
	nop
	nop
	ld h,a
	djnz l6c83h
l6c83h:
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
	ld l,e
	ld bc,00002h
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00000h
	nop
	nop
	ld bc,00600h
	dec bc
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00000h
	nop
	nop
	nop
	nop
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
	nop
	nop
	ld l,e
	ld bc,00000h
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00000h
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
	rlca
	dec bc
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00001h
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
	rlca
	dec bc
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00001h
	ld h,c
	nop
	nop
	nop
	ld l,e
	ld bc,00000h
	nop
	nop
	nop
	nop
	inc de
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
	ld l,e
	ld bc,00000h
	nop
	nop
	ld bc,00000h
	nop
	ld h,e
	ld (bc),a
	ld h,e
	ld (bc),a
	ld h,e
	ld (bc),a
	ld h,e
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
	nop
	nop
	rlca
	dec bc
	ld h,c
	nop
	ld h,c
	nop
	ld hl,(0310fh)
	ld b,001h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr z,l6d8fh
	cpl
	ld b,002h
	nop
	nop
	nop
	ld hl,(03108h)
	inc b
	nop
	nop
	nop
	nop
	ld (bc),a
l6d8fh:
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
	nop
	nop
	dec h
	rrca
	add hl,hl
	ld b,001h
	dec d
	ld h,c
	nop
	jr z,l6dd8h
	cpl
	inc b
	daa
	rrca
	ld hl,(00006h)
	nop
l6dd8h:
	ld bc,0000bh
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	inc bc
	nop
	nop
	nop
	dec h
	ex af,af'
	add hl,hl
	inc b
	nop
	nop
	nop
	nop
	ld bc,00d00h
	dec bc
	daa
	ex af,af'
	ld hl,(00004h)
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
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
	nop
	nop
	nop
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
	ld bc,0016ch
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	ld l,h
	ld bc,0016ch
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
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
	ld bc,0000bh
	nop
	nop
	nop
	dec h
	rrca
	ld hl,(00106h)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr z,$+17
	inc l
	ld b,000h
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
	ld (bc),a
	ld bc,00000h
	nop
	dec h
	ex af,af'
	ld hl,(00004h)
	nop
	nop
	nop
	nop
	nop
	dec c
	dec bc
	jr z,l6ebch
	inc l
	inc b
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
l6ebch:
	ld h,c
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
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
	nop
	nop
	nop
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
	nop
	nop
	nop
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
	nop
	nop
	nop
	nop
	nop
	nop
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
	nop
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
	ld bc,00600h
	dec bc
	nop
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	nop
	ld (de),a
	dec bc
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00003h
	nop
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,h
	ld (bc),a
	ld h,h
	ld (bc),a
	ld (bc),a
	nop
	nop
	nop
	dec hl
	ex af,af'
	cpl
	inc b
	nop
	nop
	nop
	nop
	ld bc,00700h
	dec bc
	nop
	nop
	nop
	nop
	ld hl,(02d0fh)
	ld b,000h
	nop
	nop
	nop
	ld h,h
	ld (bc),a
	ld h,h
	ld (bc),a
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
	jr z,l708fh
	dec hl
	ld b,000h
	nop
	nop
	nop
	ld hl,(02d08h)
	inc b
	nop
	nop
	nop
	nop
	inc bc
l708fh:
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
	ld bc,l610bh
	nop
	ld h,c
	nop
	dec h
	rrca
	add hl,hl
	ld b,001h
	dec d
	ld h,c
	nop
	nop
	nop
	nop
	nop
	daa
	rrca
	ld hl,(00006h)
	nop
	ld bc,0000bh
	nop
	dec h
	dec c
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	inc bc
	nop
	nop
	nop
	ld h,d
	ld h,027h
	dec c
	nop
	nop
	nop
	nop
	ld bc,00d00h
	dec bc
	dec h
	rlca
	dec h
	dec c
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	daa
	rlca
	daa
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec h
	rlca
	ld h,a
	ld b,000h
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	daa
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00100h
	dec bc
	ld h,a
	ld b,06ch
	ld bc,00000h
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
	ld bc,00000h
	nop
	ld l,h
	ld bc,0016ch
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
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
	ld bc,l6c0bh
	ld bc,0016ch
	dec h
	rrca
	ld hl,(00106h)
	nop
	nop
	nop
	ld l,h
	ld bc,00061h
	jr z,$+17
	inc l
	ld b,000h
	nop
	nop
	nop
	ld l,h
	ld bc,00d1eh
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld bc,00000h
	nop
	ld h,c
	nop
	jr nz,l71b7h
	nop
	nop
	nop
	nop
	nop
	nop
	dec c
	dec bc
	ld e,007h
	ld e,00dh
	nop
l71b7h:
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	jr nz,$+9
	jr nz,l71cfh
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	ld e,005h
	ld h,a
	ld b,000h
l71cfh:
	nop
	nop
	nop
	nop
	nop
	ld bc,0200bh
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	ld h,a
	ld b,06ch
	ld bc,00000h
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
	inc bc
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
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
	ld l,h
	ld bc,0016ch
	dec hl
	rrca
	rra
	nop
	ld bc,l6100h
	nop
	ld l,h
	ld bc,00061h
	ld h,a
	ld (bc),a
	ld l,e
	ld bc,00000h
	nop
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	ld h,a
	djnz l7266h
	nop
	nop
	nop
l7266h:
	ld h,c
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
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00000h
	ld (de),a
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
	ld l,e
	ld bc,00002h
	nop
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
	nop
	nop
	nop
	nop
	ld l,e
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
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
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
	nop
	nop
	ld l,e
	ld bc,00000h
	nop
	nop
	ld bc,00000h
	nop
	ld l,e
	ld bc,00000h
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
	nop
	nop
	nop
	nop
	jr z,l738fh
	cpl
	ld b,002h
	nop
	nop
	nop
	ld h,(hl)
	ld d,b
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
l738fh:
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
	add hl,de
	dec c
	ld h,d
	jr nc,l73e2h
	rlca
	ld bc,l6115h
	nop
	ld h,c
	nop
	nop
	nop
	add hl,de
	dec b
	nop
	nop
	nop
	nop
	ld bc,00d0bh
	dec c
	ld h,a
	djnz $+109
	ld (bc),a
	nop
	nop
l73e2h:
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld h,d
	cpl
	nop
	nop
	ld bc,00d00h
	dec bc
	ld bc,0000dh
	nop
	ld l,e
	ld (bc),a
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld h,d
	ld l,000h
	nop
	nop
	nop
	nop
	nop
	ld bc,0000dh
	nop
	ld l,e
	ld (bc),a
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld h,d
	dec l
	nop
	nop
	ld bc,00100h
	dec bc
	dec c
	dec c
	nop
	nop
	ld l,e
	ld bc,00000h
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld l,h
	ld bc,02c62h
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,02b62h
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
	nop
	nop
	ld l,e
	ld bc,00000h
	ld bc,00000h
	nop
	ld h,c
	nop
	ld l,h
	ld bc,02a62h
	nop
	nop
	nop
	nop
	nop
	nop
	dec c
	dec c
	nop
	nop
	ld l,e
	ld bc,00000h
	ld bc,00000h
	nop
	ld h,c
	nop
	ld l,h
	ld bc,02962h
	nop
	nop
	nop
	nop
	dec c
	dec bc
	dec c
	dec c
	nop
	nop
	ld l,e
	ld bc,00000h
	ld (bc),a
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld l,h
	ld bc,02862h
	nop
	nop
	ld bc,00000h
	nop
	dec c
	dec c
	nop
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	nop
	nop
	ld bc,l610bh
	nop
	nop
	nop
	ld h,d
	daa
	ld l,h
	ld bc,00001h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	jr z,$+110
	ld bc,00003h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	add hl,hl
	ld l,h
	ld bc,01a03h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	dec c
	ld hl,(02a0dh)
	inc bc
	ld hl,(00107h)
	nop
	ld h,c
	nop
	ld h,c
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
	ld bc,l670dh
	ld b,06bh
	ld bc,00000h
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld h,d
	ld hl,(00000h)
	ld bc,00600h
	dec bc
	dec c
	dec c
	nop
	nop
	ld l,e
	ld (bc),a
	nop
	nop
	nop
	nop
	ld (de),a
	dec bc
	ld h,c
	nop
	nop
	nop
	ld h,d
	dec hl
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld bc,0000dh
	nop
	ld l,e
	ld (bc),a
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld h,d
	inc l
	nop
	nop
	ld bc,00600h
	dec bc
	ld bc,0000dh
	nop
	ld l,e
	ld bc,00000h
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld l,h
	ld bc,02d62h
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,02e62h
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
	rlca
	dec bc
	ld c,00dh
	nop
	nop
	ld l,e
	ld bc,00000h
	ld bc,l6100h
	nop
	ld h,c
	nop
	ld l,h
	ld bc,02f62h
	nop
	nop
	nop
	nop
	rlca
	dec bc
	ld c,00dh
	nop
	nop
	ld l,e
	ld bc,00000h
	ld bc,l6100h
	nop
	ld h,c
	nop
	ld l,h
	ld bc,03062h
	nop
	nop
	nop
	nop
	inc de
	dec bc
	ld c,00dh
	nop
	nop
	ld l,e
	ld bc,00000h
	ld (bc),a
	nop
	nop
	nop
	ld h,c
	nop
	ld l,h
	ld bc,02f62h
	nop
	nop
	ld bc,00000h
	nop
	ld c,00dh
	nop
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld h,d
	ld l,000h
	nop
	nop
	nop
	rlca
	dec bc
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
	nop
	nop
	ld h,d
	dec l
	nop
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
	ld l,h
	ld bc,00002h
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	inc l
	ld l,h
	ld bc,01a02h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	add hl,de
	dec c
	nop
	nop
	add hl,de
	rlca
	ld bc,l6115h
	nop
	ld h,c
	nop
	nop
	nop
	add hl,de
	dec b
	nop
	nop
	nop
	nop
	ld bc,00d0bh
	dec c
	ld h,a
	djnz $+109
	ld (bc),a
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld h,d
	cpl
	nop
	nop
	ld bc,00d00h
	dec bc
	ld bc,0000dh
	nop
	ld l,e
	ld (bc),a
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld h,d
	ld l,000h
	nop
	nop
	nop
	nop
	nop
	ld bc,0000dh
	nop
	ld l,e
	ld (bc),a
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld h,d
	dec l
	nop
	nop
	ld bc,00100h
	dec bc
	dec c
	dec c
	nop
	nop
	ld l,e
	ld bc,00000h
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld l,h
	ld bc,02c62h
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,02b62h
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
	nop
	nop
	ld l,e
	ld bc,00000h
	ld bc,00000h
	nop
	ld h,c
	nop
	ld l,h
	ld bc,02a62h
	nop
	nop
	nop
	nop
	nop
	nop
	dec c
	dec c
	nop
	nop
	ld l,e
	ld bc,00000h
	ld bc,00000h
	nop
	ld h,c
	nop
	ld l,h
	ld bc,02962h
	nop
	nop
	nop
	nop
	dec c
	dec bc
	dec c
	dec c
	nop
	nop
	ld l,e
	ld bc,00000h
	ld (bc),a
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld l,h
	ld bc,02862h
	nop
	nop
	ld bc,00000h
	nop
	dec c
	dec c
	nop
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	nop
	nop
	ld bc,l610bh
	nop
	nop
	nop
	ld h,d
	daa
	nop
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	jr z,$+110
	ld bc,00003h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	add hl,hl
	ld l,h
	ld bc,01a03h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	dec c
	dec h
	dec c
	dec h
	ld (bc),a
	ld sp,00107h
	nop
	ld h,c
	nop
	ld h,c
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
	ld bc,l670dh
	djnz $+109
	ld bc,00000h
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld h,d
	ld hl,(00000h)
	ld bc,00600h
	dec bc
	dec c
	dec c
	nop
	nop
	ld l,e
	ld (bc),a
	nop
	nop
	nop
	nop
	ld (de),a
	dec bc
	ld h,c
	nop
	nop
	nop
	ld h,d
	dec hl
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
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld h,d
	inc l
	nop
	nop
	ld bc,00600h
	dec bc
	ld bc,0000dh
	nop
	ld l,e
	ld bc,00000h
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld l,h
	ld bc,02d62h
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,02e62h
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
	rlca
	dec bc
	ld c,00dh
	nop
	nop
	ld l,e
	ld bc,00000h
	ld bc,l6100h
	nop
	ld h,c
	nop
	ld l,h
	ld bc,02f62h
	nop
	nop
	nop
	nop
	rlca
	dec bc
	ld c,00dh
	nop
	nop
	ld l,e
	ld bc,00000h
	ld bc,l6100h
	nop
	ld h,c
	nop
	ld l,h
	ld bc,03062h
	nop
	nop
	nop
	nop
	inc de
	dec bc
	ld c,00dh
	nop
	nop
	ld l,e
	ld bc,00000h
	ld (bc),a
	nop
	nop
	nop
	ld h,c
	nop
	ld l,h
	ld bc,02f62h
	nop
	nop
	ld bc,00000h
	nop
	ld c,00dh
	nop
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld h,d
	ld l,000h
	nop
	nop
	nop
	rlca
	dec bc
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
	nop
	nop
	ld h,d
	dec l
	nop
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
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	ld h,d
	scf
	ld h,d
	inc l
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
	ld bc,l6c0bh
	ld bc,0036ch
	ld h,c
	nop
	ld h,c
	nop
	ld bc,l6115h
	nop
	ld l,h
	ld bc,00a25h
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,l6c0bh
	ld bc,00a2ah
	ld l,h
	inc bc
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
	nop
	nop
	nop
	nop
	ld hl,(l6c07h)
	inc bc
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc l
	rlca
	dec h
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl,(00205h)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc l
	dec b
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
	nop
	nop
	inc b
	dec bc
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
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
	dec bc
	dec bc
	nop
	nop
	inc l
	ld a,(bc)
	inc l
	rlca
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	dec l
	ld a,(bc)
	nop
	nop
	ld h,c
	nop
	inc bc
	nop
	dec bc
	ex af,af'
	nop
	nop
	inc l
	ld a,(bc)
	inc l
	rlca
	inc l
	dec b
	ld bc,l6100h
	nop
	nop
	nop
	ld hl,(02d0ah)
	rlca
	nop
	nop
	inc bc
	nop
	dec bc
	rrca
	nop
	nop
	inc l
	ld a,(bc)
	inc l
	rlca
	inc l
	dec b
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl,(02d07h)
	dec b
	ld bc,00000h
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	inc l
	rlca
	inc l
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl,(00105h)
	nop
	inc b
	dec bc
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	inc l
	dec b
	nop
	nop
	nop
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
	dec bc
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
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
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
	nop
	nop
	inc l
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	ld hl,(0000ah)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl,(02c0ah)
	rlca
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	jr z,l7b74h
	ld hl,(00007h)
	nop
	ld bc,00000h
	nop
	nop
	nop
l7b74h:
	ld hl,(02a0ah)
	rlca
	inc l
	dec b
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr z,l7b8bh
	ld hl,(00305h)
	nop
	dec d
	rrca
	nop
l7b8bh:
	nop
	nop
	nop
	ld hl,(02a07h)
	dec b
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
	jr z,l7ba3h
	ld bc,00100h
	dec bc
	nop
l7ba3h:
	nop
	nop
	nop
	nop
	nop
	ld hl,(00005h)
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
	ld bc,01000h
	dec bc
	nop
	nop
	ld hl,(0000ah)
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
	ld bc,0000bh
	nop
	ld hl,(02a0ah)
	rlca
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	jr z,l7c1ch
	nop
	nop
	ld h,c
	nop
	inc c
	nop
	dec c
	dec bc
	nop
	nop
l7c1ch:
	daa
	ld a,(bc)
	ld hl,(02a07h)
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	inc hl
	ld a,(bc)
	jr z,$+9
	nop
	nop
	ld bc,00100h
	dec bc
	ld hl,(02509h)
	ld a,(bc)
	daa
	rlca
	ld hl,(00205h)
	nop
	nop
	nop
	jr z,l7c49h
	nop
	nop
	inc hl
	rlca
	jr z,l7c4bh
	ld bc,00100h
l7c49h:
	dec bc
	daa
l7c4bh:
	add hl,bc
	ld h,a
	ld (bc),a
	dec h
	rlca
	daa
	dec b
	inc bc
	nop
	nop
	nop
	inc hl
	add hl,bc
	nop
	nop
	nop
	nop
	inc hl
	dec b
	inc bc
	nop
	dec c
	dec bc
	dec h
	add hl,bc
	nop
	nop
	ld h,a
	ld (bc),a
	dec h
	dec b
	ld bc,00000h
	nop
	ld h,a
	ld (bc),a
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
	nop
	nop
	nop
	nop
	ld h,a
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
	ld bc,l610bh
	nop
	ld h,d
	scf
	nop
	nop
	nop
	nop
	ld bc,00015h
	nop
	nop
	nop
	dec h
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,0000fh
	nop
	ld hl,(l620ah)
	scf
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	inc l
	ld a,(bc)
	dec h
	rlca
	nop
	nop
	ld bc,00d00h
	dec bc
	nop
	nop
	ld h,a
	ld (bc),a
	ld hl,(l6207h)
	scf
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc l
	rlca
	dec h
	dec b
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
	ld hl,(00205h)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc l
	dec b
	ld bc,00100h
	dec bc
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
	inc b
	dec bc
	nop
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
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc l
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
	dec bc
	dec bc
	nop
	nop
	ld sp,l6c0ah
	ld bc,00000h
	ld bc,00000h
	nop
	nop
	nop
	cpl
	ld a,(bc)
	inc l
	rlca
	ld l,h
	ld bc,00003h
	dec bc
	ex af,af'
	nop
	nop
	cpl
	ld a,(bc)
	ld sp,l6c07h
	ld bc,00002h
	ld h,c
	nop
	nop
	nop
	inc l
	ld a,(bc)
	cpl
	rlca
	inc l
	dec b
	inc bc
	nop
	dec bc
	rrca
	nop
	nop
	cpl
	ld a,(bc)
	cpl
	rlca
	ld sp,00205h
	nop
	nop
	nop
	nop
	nop
	ld sp,02c0ah
	rlca
	cpl
	dec b
	ld bc,00000h
	nop
	nop
	nop
	cpl
	ld a,(bc)
	cpl
	rlca
	cpl
	dec b
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld sp,02c07h
	dec b
	ld bc,00400h
	dec bc
	nop
	nop
	ld h,a
	ld (bc),a
	cpl
	rlca
	cpl
	dec b
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
	ld sp,00305h
	nop
	inc bc
	dec bc
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	cpl
	dec b
	nop
	nop
	nop
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
	nop
	nop
	cpl
	ld a,(bc)
	nop
	nop
	ld h,a
	ld (bc),a
	ld bc,00000h
	nop
	nop
	nop
	dec l
	rlca
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
	dec l
	ld a,(bc)
	cpl
	rlca
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	dec l
	rlca
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	dec l
	rlca
	cpl
	dec b
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
	dec l
	dec b
	inc bc
	nop
	dec d
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	dec l
	dec b
	ld bc,00000h
	nop
	nop
	nop
	ld l,h
	ld bc,00000h
	ld h,a
	ld (bc),a
	inc bc
	nop
	ld bc,0000bh
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
	nop
	nop
	inc bc
	nop
	djnz l7ec5h
	nop
	nop
	inc l
	ld a,(bc)
	ld l,h
	ld bc,00000h
	inc bc
	nop
	nop
l7ec5h:
	nop
	nop
	nop
	jr z,l7ed4h
	ld l,h
	ld bc,0016ch
	ld bc,0001ah
	nop
	nop
	nop
l7ed4h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	dec h
	ld a,(bc)
	inc l
	rlca
	ld l,h
	ld bc,00003h
	nop
	nop
	nop
	nop
	nop
	nop
	jr z,l7f1bh
	ld l,h
	ld bc,00003h
	dec c
	dec bc
	nop
l7f1bh:
	nop
	ld h,a
	ld (bc),a
	dec h
	rlca
	inc l
	dec b
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr z,l7f33h
	inc bc
	nop
	ld bc,0000bh
l7f33h:
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	dec h
	dec b
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
	nop
	ld bc,0000bh
	nop
	nop
	nop
	nop
	nop
	ld h,a
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
	ld bc,00d00h
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
	ld h,d
	ld (00000h),hl
	ld bc,00100h
	dec bc
	nop
	nop
	nop
	nop
	ld sp,0000fh
	nop
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	cpl
	rrca
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
	add hl,bc
	dec bc
	nop
	nop
	nop
	nop
	dec l
	rrca
	ld sp,0010bh
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	inc l
	rrca
	cpl
	dec bc
	inc bc
	nop
	nop
	nop
	inc (hl)
	dec b
	jr c,$+7
	dec l
	rrca
	dec l
	dec bc
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc l
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
	dec l
	dec bc
	inc bc
	nop
	nop
	nop
	nop
	nop
