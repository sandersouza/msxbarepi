; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank26.asm /tmp/smanbow2_bank.bin

	org 04000h

	ld c,l
	ld h,c
	ld l,(hl)
	ld h,d
	ld l,a
	ld (hl),a
	jr nz,l403ah
	jr nz,$+47
	jr nz,l4055h
	ld l,(hl)
	ld (hl),h
	ld (hl),d
	ld l,a
	jr nz,l4056h
	ld h,l
	ld l,l
	ld l,a
	jr nz,$+82
	ld h,c
	ld (hl),d
	ld (hl),h
	jr nz,l404dh
	jr nz,l403eh
	jr nz,l4040h
	jr nz,l4042h
	jr nz,l4044h
	jr nz,l4046h
	jr nz,l4048h
	jr nz,l404ah
	jr nz,l404ch
	jr nz,l404eh
	jr nz,l4050h
	jr nz,l4052h
	jr nz,$+34
	jr nz,l4056h
	jr nz,$+34
	jr nz,l405ah
l403ah:
	jr nz,l405ch
	jr nz,l405eh
l403eh:
	jr nz,$+34
l4040h:
	jr nz,l4062h
l4042h:
	jr nz,l4091h
l4044h:
	ld d,l
	ld d,e
l4046h:
	ld c,c
	ld c,(hl)
l4048h:
	ld d,e
	ld d,h
l404ah:
	ld d,d
	ld d,e
l404ch:
	ld b,d
l404dh:
	ld c,e
l404eh:
	inc hl
	nop
l4050h:
	ld b,000h
l4052h:
	ld bc,00302h
l4055h:
	inc b
l4056h:
	dec b
	ld b,007h
	ex af,af'
l405ah:
	add hl,bc
	ld a,(bc)
l405ch:
	dec bc
	inc c
l405eh:
	dec c
	ld c,00fh
	dec bc
l4062h:
	inc c
	dec c
	ld c,00fh
	djnz l4079h
	ld (de),a
	inc de
	inc d
	dec d
	ld d,017h
	jr l4089h
	ld a,(de)
	dec de
	inc e
	dec e
	ld e,000h
	nop
	nop
	nop
l4079h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4089h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4091h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4109h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,00fh
	rrca
	rrca
	rrca
	rrca
	jr nc,l4189h
	jr nc,l418bh
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	djnz l4172h
	djnz l4174h
	djnz l4166h
l4166h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4172h:
	nop
	nop
l4174h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4189h:
	nop
	nop
l418bh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld (bc),a
	inc bc
	ld bc,00116h
	daa
	ld bc,0010ah
	nop
	djnz l41cdh
l41cdh:
	nop
	nop
	nop
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	jr nc,l41dfh
l41dfh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	cpl
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld l,067h
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
	nop
	nop
	nop
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
	inc l
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	dec hl
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld hl,(00367h)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	jr z,l4293h
l4293h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	daa
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	jr z,l42c3h
l42c3h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	add hl,hl
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld hl,(00000h)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	dec hl
	nop
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
	inc l
	ld h,a
	inc b
	nop
	nop
	nop
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
	ld h,d
	ld l,000h
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
	cpl
	nop
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
	jr nc,l433bh
l433bh:
	nop
	nop
	nop
	nop
	nop
	inc b
	ld (bc),a
	inc sp
	ld bc,00116h
	daa
	ld bc,0012eh
	nop
	ld de,00000h
	ld h,d
	jr nc,l4351h
l4351h:
	nop
	ld h,d
	jr nc,l4355h
l4355h:
	nop
	nop
	nop
	nop
	nop
	ld h,d
	cpl
	ld h,d
	jr nc,l43c1h
	cpl
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	ld l,000h
	nop
	ld h,d
	ld l,000h
	nop
	nop
	nop
	nop
	nop
	ld h,d
	dec l
	ld h,d
	cpl
	ld h,d
	dec l
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	inc l
	nop
	nop
	ld h,d
	inc l
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	dec hl
	ld h,d
	ld l,062h
	dec hl
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	ld hl,(00000h)
	ld h,d
	ld hl,(00000h)
	nop
	nop
	nop
	nop
	ld h,d
	add hl,hl
	ld h,d
	dec l
	ld h,d
	add hl,hl
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	jr z,l43b1h
l43b1h:
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld h,d
	rra
	ld h,d
	rra
	ld h,d
	inc l
	ld h,d
	daa
	nop
l43c1h:
	nop
	add hl,bc
	inc c
	ld l,h
	ld (bc),a
	ld h,d
	daa
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	ld h,d
	jr nc,l4435h
	jr z,l4437h
	dec hl
	ld h,d
	jr z,l43d9h
l43d9h:
	nop
	nop
	ld de,0026bh
	nop
	nop
	nop
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
	add hl,hl
	ld h,d
	ld hl,(02962h)
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
	ld de,00000h
	nop
	nop
	nop
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
	add hl,hl
	ld h,d
	jr z,l4475h
	add hl,hl
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld hl,(02762h)
	ld h,d
	ld hl,(00000h)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4435h:
	nop
	nop
l4437h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	dec hl
	ld h,d
	jr z,l44a5h
	dec hl
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	inc l
	ld h,d
	add hl,hl
	ld h,d
	inc l
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	dec l
	ld h,d
	ld hl,(02d62h)
	nop
l4475h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	dec hl
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	ld l,062h
	inc l
	ld h,d
	ld l,000h
	nop
	nop
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
	ld h,d
	cpl
	ld h,d
	ld l,062h
	cpl
	nop
l44a5h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	cpl
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	jr nc,l451bh
	jr nc,$+100
	jr nc,l44bdh
l44bdh:
	nop
	nop
	nop
	nop
	nop
	inc sp
	ld bc,00116h
	daa
	ld bc,0012eh
	nop
	ld de,00000h
	ld h,d
	jr nc,l44d1h
l44d1h:
	nop
	ld h,d
	jr nc,l44d5h
l44d5h:
	nop
	nop
	nop
	nop
	nop
	ld h,d
	cpl
	ld h,d
	jr nc,l4541h
	cpl
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	ld l,000h
	nop
	ld h,d
	ld l,000h
	nop
	nop
	nop
	nop
	nop
	ld h,d
	dec l
	ld h,d
	cpl
	ld h,d
	dec l
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	inc l
	nop
	nop
	ld h,d
	inc l
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	dec hl
	ld h,d
	ld l,062h
	dec hl
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	ld hl,(00000h)
	ld h,d
l451bh:
	ld hl,(00000h)
	nop
	nop
	nop
	nop
	ld h,d
	add hl,hl
	ld h,d
	dec l
	ld h,d
	add hl,hl
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	jr z,l4531h
l4531h:
	nop
	ld h,d
	jr z,l4535h
l4535h:
	nop
	nop
	nop
	nop
	nop
	ld h,d
	daa
	ld h,d
	inc l
	ld h,d
	daa
	nop
l4541h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	jr z,l45b7h
	dec hl
	ld h,d
	jr z,l4559h
l4559h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	add hl,hl
	ld h,d
	ld hl,(02962h)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	add hl,hl
	ld h,d
	add hl,hl
	ld h,d
	add hl,hl
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld hl,(02a62h)
	ld h,d
	ld hl,(00000h)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l45b7h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	dec hl
	ld h,d
	dec hl
	ld h,d
	dec hl
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	inc l
	ld h,d
	inc l
	ld h,d
	inc l
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	dec l
	ld h,d
	dec l
	ld h,d
	dec l
	nop
	nop
	nop
	djnz l45f9h
l45f9h:
	nop
	nop
	nop
	nop
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
	ld l,062h
	ld l,062h
	ld l,000h
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
	nop
	nop
	ld h,d
	cpl
	ld h,d
	cpl
	ld h,d
	cpl
	nop
	nop
	nop
	ld a,(bc)
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
	add hl,de
	ld h,d
	nop
	ld h,d
	nop
	ld h,d
	nop
	ld h,d
	inc de
	nop
	nop
	nop
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	ld l,004h
	inc sp
	inc b
	rlca
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	ld (de),a
	nop
	nop
	ld l,h
	inc c
	ld l,h
	inc c
	ld l,h
	ld bc,0016ch
	nop
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	ld l,e
	ld bc,0016bh
	rlca
	ld (de),a
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	ld l,h
	inc c
	nop
	nop
	ld l,h
	inc c
	ld l,h
	ld bc,0016ch
	nop
	nop
	rrca
	rrca
	nop
	nop
	inc bc
	ld a,(bc)
	ld l,e
	ld bc,0016bh
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	ld h,c
	nop
	ld l,h
	inc c
	ld l,h
	inc c
	ld l,h
	ld bc,0016ch
	nop
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	ld l,e
	ld bc,0016bh
	ld (bc),a
	ld (de),a
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	ld l,h
	inc c
	nop
	nop
	ld l,h
	inc c
	ld l,h
	ld bc,0016ch
	nop
	nop
	rrca
	rrca
	nop
	nop
	inc bc
	ld a,(bc)
	ld l,e
	ld bc,0016bh
	ld (bc),a
	dec d
	ld h,c
	nop
	djnz l4803h
	inc b
	ld a,(bc)
	cpl
	inc b
	inc (hl)
	inc b
	ld (bc),a
	nop
	djnz l480dh
	ld h,c
	nop
	inc b
	ld a,(bc)
	ld h,a
l4803h:
	ld (bc),a
	ld h,a
	ld (bc),a
	ld (bc),a
	nop
	ld h,c
	nop
	djnz l481bh
	inc b
l480dh:
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	djnz l4825h
	ld h,c
	nop
	inc b
	ld a,(bc)
	nop
l481bh:
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
l4825h:
	ld a,(bc)
	ld l,004h
	inc sp
	inc b
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	ld h,c
	nop
	ld l,h
	inc c
	ld l,h
	inc c
	ld l,h
	ld bc,0016ch
	nop
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	ld l,e
	ld bc,0016bh
	ld (bc),a
	ld (de),a
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	ld l,h
	inc c
	nop
	nop
	ld l,h
	inc c
	ld l,h
	ld bc,0016ch
	nop
	nop
	rrca
	rrca
	nop
	nop
	inc bc
	ld a,(bc)
	ld l,e
	ld bc,0016bh
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	ld h,c
	nop
	ld l,h
	inc c
	ld l,h
	inc c
	ld l,h
	ld bc,0016ch
	nop
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	ld l,e
	ld bc,0016bh
	ld (bc),a
	ld (de),a
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	ld l,h
	inc c
	nop
	nop
	ld l,h
	inc c
	ld l,h
	ld bc,0016ch
	nop
	nop
	rrca
	rrca
	nop
	nop
	inc bc
	ld a,(bc)
	ld l,e
	ld bc,0016bh
	ld (bc),a
	dec d
	ld h,c
	nop
	djnz l49e3h
	inc b
	ld a,(bc)
	cpl
	inc b
	inc (hl)
	inc b
	ld (bc),a
	nop
	djnz l49edh
	ld h,c
	nop
	inc b
	ld a,(bc)
	ld h,a
l49e3h:
	ld (bc),a
	ld h,a
	ld (bc),a
	ld (bc),a
	nop
	ld h,c
	nop
	djnz l49fbh
	inc b
l49edh:
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	dec c
	rrca
	ld h,c
	nop
	ld bc,0620ah
l49fbh:
	ld sp,00631h
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	ld hl,(0270ah)
	rrca
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	add hl,hl
	ld a,(bc)
	dec h
	rrca
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	ld hl,(0270ah)
	rrca
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	ld sp,02c0ah
	rrca
	ld (bc),a
	ld (de),a
	ld h,c
	nop
	ld l,h
	inc c
	ld l,h
	inc c
	inc sp
	ld a,(bc)
	ld l,00fh
	nop
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	add hl,hl
	ld a,(bc)
	ld sp,0020fh
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	ld (hl),00ah
	inc sp
	rrca
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	ld hl,(0270ah)
	rrca
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	ld l,h
	inc c
	nop
	nop
	ld l,h
	inc c
	nop
	nop
	ld l,h
	inc c
	nop
	nop
	rrca
	rrca
	nop
	nop
	inc bc
	inc c
	inc l
	ld a,(bc)
	jr z,l4acdh
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	ld hl,(0270ah)
	rrca
	ld (bc),a
	nop
	rrca
l4acdh:
	rrca
	ld h,c
	nop
	inc bc
	inc c
	inc l
	ld a,(bc)
	jr z,l4ae5h
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	ld sp,02c0ah
	rrca
	ld (bc),a
	ld (de),a
	rrca
l4ae5h:
	rrca
	ld h,c
	nop
	inc bc
	inc c
	jr z,l4af6h
	cpl
	rrca
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
l4af6h:
	jr c,l4b02h
	inc (hl)
	rrca
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
l4b02h:
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	ld l,h
	ld bc,00000h
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	ld l,h
	ld bc,00000h
	ld (bc),a
	ld (de),a
	ld h,c
	nop
	ld l,h
	inc c
	ld l,h
	inc c
	ld l,h
	ld bc,00c6ch
	nop
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	ld sp,l6b0ah
	inc c
	ld (bc),a
	ld (de),a
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	ld sp,0380ah
	rrca
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	jr c,l4b5bh
	ld h,c
	nop
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	jr c,l4b62h
	inc (hl)
	rrca
	ld (bc),a
l4b5bh:
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
l4b62h:
	inc (hl)
	rrca
	jr c,$+12
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	ld hl,(0330ah)
	rrca
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	add hl,hl
	ld a,(bc)
	ld sp,0020fh
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	jr c,l4b92h
	inc (hl)
	rrca
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
l4b92h:
	ld (hl),00ah
	inc sp
	rrca
	ld (bc),a
	ld (de),a
	ld l,h
	inc c
	nop
	nop
	ld l,h
	inc c
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	nop
	nop
	rrca
	rrca
	nop
	nop
	inc bc
	inc c
	ld l,h
	ld bc,0016ch
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	ld l,h
	ld bc,0016ch
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	ld l,h
	ld bc,0016ch
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	ld (0270ch),hl
	dec c
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	ld h,c
	nop
	ld l,h
	inc c
	ld l,h
	inc c
	ld l,h
	inc b
	ld l,h
	inc b
	nop
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	ld l,e
	inc b
	ld l,e
	inc b
	ld (bc),a
	ld (de),a
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	ld l,h
	inc c
	nop
	nop
	ld l,h
	inc c
	ld l,h
	inc c
	ld l,h
	inc c
	nop
	nop
	rrca
	rrca
	nop
	nop
	inc bc
	inc c
	ld (0270ch),hl
	dec c
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	ld l,h
	inc b
	ld l,h
	ld b,002h
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	ld (0270ch),hl
	dec c
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	ld h,c
	nop
	ld l,h
	inc c
	ld l,h
	inc c
	ld l,h
	inc c
	ld l,h
	inc c
	nop
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	ld l,e
	inc c
	ld l,e
	inc c
	ld (bc),a
	ld (de),a
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	ld l,h
	inc c
	nop
	nop
	ld l,h
	inc c
	ld l,h
	inc c
	ld l,h
	inc c
	nop
	nop
	rrca
	rrca
	nop
	nop
	inc bc
	inc c
	ld (0270ch),hl
	dec c
	ld (bc),a
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	rrca
	rrca
	ld h,c
	nop
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,d
	jr nc,l4e25h
	jr nc,$+5
	inc c
	ld h,d
	ld (00f27h),a
	ex af,af'
	dec d
	daa
	dec b
	dec de
	ld a,(bc)
	inc bc
	inc c
	add hl,hl
	ld a,(bc)
	dec h
	rrca
	ex af,af'
	nop
	ld h,d
	jr nc,l4e3dh
	jr nc,$+5
	inc c
	ld hl,(0270ah)
	rrca
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	inc bc
	inc c
	ld sp,02c0ah
	rrca
	ex af,af'
	ld (de),a
	ld h,d
	cpl
	ld h,d
	cpl
	ld l,h
	inc c
	inc sp
	ld a,(bc)
	ld l,00fh
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	inc c
	add hl,hl
	ld a,(bc)
	ld sp,0080fh
	ld (de),a
	ld h,d
	ld l,062h
	ld l,003h
	inc c
	ld (hl),00ah
	inc sp
	rrca
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	inc bc
	inc c
	ld hl,(0270ah)
	rrca
	ex af,af'
	dec d
	ld h,d
	dec l
	ld h,d
	dec l
	inc bc
l4e25h:
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	inc bc
	inc c
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ex af,af'
	nop
	ld h,d
	inc l
	ld h,d
	inc l
	inc bc
l4e3dh:
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld h,d
	dec hl
	ld h,d
	dec hl
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	ld (de),a
	ld h,d
	ld hl,(02a62h)
	ld l,h
	inc c
	ld l,h
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	inc c
	ld hl,(0270ah)
	rrca
	ex af,af'
	dec d
	nop
	nop
	nop
	nop
	inc bc
	inc c
	add hl,hl
	ld a,(bc)
	dec h
	rrca
	ex af,af'
	nop
	ld h,d
	jr z,$+100
	jr z,$+5
	inc c
	ld hl,(0270ah)
	rrca
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	inc bc
	inc c
	ld sp,02c0ah
	rrca
	ex af,af'
	ld (de),a
	ld h,d
	daa
	ld h,d
	daa
	inc bc
	inc c
	inc sp
	ld a,(bc)
	ld l,00fh
	ex af,af'
	nop
	dec h
	dec b
	add hl,de
	ld a,(bc)
	ld bc,0380ch
	ld a,(bc)
	ld sp,0080fh
	dec d
	ld h,d
	jr z,l4f21h
	jr z,l4ec2h
	inc c
l4ec2h:
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	ld bc,0000ch
	nop
	nop
	nop
	ex af,af'
	nop
	ld h,d
	add hl,hl
	ld h,d
	add hl,hl
	ld bc,0000ch
	nop
	nop
	nop
	ex af,af'
	ld (de),a
	nop
	nop
	nop
	nop
	ld l,h
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	ld hl,(02a62h)
	ld bc,0000ch
	nop
	nop
	nop
	ex af,af'
	ld (de),a
	ld h,d
	dec hl
	ld h,d
	dec hl
	ld bc,0000ch
	nop
	nop
	nop
	ex af,af'
	nop
	ld h,d
	inc l
	ld h,d
	inc l
	ld bc,0280ch
	ld a,(bc)
	cpl
	rrca
	ex af,af'
	dec d
	ld h,d
	dec l
	ld h,d
	dec l
	ld bc,0670ch
	ld (bc),a
	ld h,a
	ld (bc),a
	ex af,af'
	nop
	ld h,d
	ld l,062h
	ld l,001h
l4f21h:
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld h,d
	cpl
	ld h,d
	cpl
	ld bc,0270ch
	ld a,(bc)
	ld l,00fh
	ex af,af'
	nop
	ld h,d
	jr nc,$+100
	jr nc,l4f3ah
	inc c
l4f3ah:
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ex af,af'
	nop
	ld h,d
	jr nc,l4fa5h
	jr nc,l4f46h
	inc c
l4f46h:
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	ld bc,0380ch
	ld a,(bc)
	inc (hl)
	rrca
	ex af,af'
	ld (de),a
	ld h,d
	jr nc,l4fbdh
	jr nc,l4fc9h
	inc c
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
	ld bc,0360ch
	ld a,(bc)
	inc sp
	rrca
	ex af,af'
	dec d
	ld h,d
	cpl
	ld h,d
	cpl
	ld bc,0670ch
	ld (bc),a
	ld h,a
	ld (bc),a
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	ld bc,0000ch
	nop
	nop
	nop
	ex af,af'
	nop
	ld h,d
	ld l,062h
	ld l,001h
	inc c
	inc (hl)
	ld a,(bc)
	ld sp,0080fh
	ld (de),a
	nop
	nop
	nop
	nop
	ld bc,0670ch
	ld (bc),a
	ld h,a
	ld (bc),a
	ex af,af'
	nop
	inc e
	dec b
	djnz l4faeh
	inc b
l4fa5h:
	inc c
	jr c,l4fb2h
	inc (hl)
	rrca
	ex af,af'
	dec d
	nop
	nop
l4faeh:
	nop
	nop
	inc b
	inc c
l4fb2h:
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ex af,af'
	nop
	ld h,d
	inc l
	ld h,d
	inc l
	inc b
l4fbdh:
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	inc b
l4fc9h:
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	ld (de),a
	ld h,d
	dec hl
	ld h,d
	dec hl
	ld l,h
	inc c
	nop
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
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	ld (de),a
	ld h,d
	ld hl,(02a62h)
	inc b
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	inc b
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	dec d
	nop
	nop
	nop
	nop
	inc b
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld h,d
	jr z,l5071h
	jr z,l5015h
	inc c
	nop
	nop
	nop
l5015h:
	nop
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	inc b
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld h,d
	daa
	ld h,d
	daa
	inc b
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	inc b
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld h,d
	jr z,l50a1h
	jr z,l5045h
	inc c
	nop
	nop
	nop
l5045h:
	nop
	ex af,af'
	ld (de),a
	nop
	nop
	nop
	nop
	ld l,h
	inc c
	ld l,h
	inc c
	ld l,h
	inc c
	nop
	nop
	ld h,d
	add hl,hl
	ld h,d
	add hl,hl
	inc b
	inc c
	inc hl
	inc c
	jr z,l506dh
	ex af,af'
	dec d
	nop
	nop
	nop
	nop
	inc b
	inc c
	jr z,l5074h
	dec h
	rrca
	ex af,af'
	nop
	ld h,d
l506dh:
	ld hl,(02a62h)
	inc b
l5071h:
	inc c
	inc hl
	inc c
l5074h:
	inc hl
	rrca
	ex af,af'
	nop
	ld h,d
	dec hl
	ld h,d
	dec hl
	inc b
	inc c
	ld (0220ch),hl
	rrca
	ex af,af'
	ld (de),a
	ld h,d
	inc l
	ld h,d
	inc l
	inc b
	inc c
	ld l,h
	inc b
	jr nz,l509dh
	ex af,af'
	nop
	ld e,005h
	ld (de),a
	ld a,(bc)
	ld b,00ch
	ld (02a0ch),hl
	rrca
	ex af,af'
	dec d
	ld h,d
l509dh:
	ld l,062h
	ld l,006h
l50a1h:
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld h,d
	cpl
	ld h,d
	cpl
	ld b,00ch
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld h,d
	jr nc,$+100
	jr nc,l50bfh
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
l50bfh:
	ld (de),a
	ld h,d
	jr nc,$+100
	jr nc,$+110
	inc c
	ld l,h
	inc c
	ld l,h
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,00ch
	ld l,e
	inc c
	ld l,e
	inc c
	ex af,af'
	ld (de),a
	ld h,d
	jr nc,l513dh
	jr nc,l50e3h
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
l50e3h:
	nop
	nop
	nop
	nop
	nop
	ld b,00ch
	nop
	nop
	nop
	nop
	ex af,af'
	dec d
	ld h,d
	cpl
	ld h,d
	cpl
	ld b,00ch
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	ld b,00ch
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld h,d
	ld l,062h
	ld l,006h
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	ld b,00ch
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld h,d
	dec l
	ld h,d
	dec l
	ld b,00ch
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	ld b,00ch
	nop
	nop
	nop
	nop
	ex af,af'
	ld (de),a
	ld h,d
	inc l
	ld h,d
	inc l
	ld l,h
l513dh:
	inc c
	ld l,h
	inc c
	ld l,h
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,00ch
	ld (0270ch),hl
	dec c
	ex af,af'
	dec d
	ld h,d
	dec hl
	ld h,d
	dec hl
	ld b,00ch
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	ld b,00ch
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld h,d
	ld hl,(02a62h)
	ld b,00ch
	nop
	nop
	nop
	nop
	ex af,af'
	ld (de),a
	nop
	nop
	nop
	nop
	ld b,00ch
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld h,d
	nop
	ld h,d
	jr nc,l518dh
	inc c
	inc (hl)
	dec c
	inc l
	rrca
	ld (bc),a
	dec d
	ex af,af'
l518dh:
	inc c
	jr nz,l519ah
	ex af,af'
	inc c
	inc sp
	dec c
	ld hl,(0080fh)
	nop
	ex af,af'
	inc c
l519ah:
	ld h,d
	jr nc,l51a5h
	inc c
	inc (hl)
	dec c
	inc l
	rrca
	ex af,af'
	nop
	ex af,af'
l51a5h:
	inc c
	nop
	nop
	ex af,af'
	inc c
	ld (hl),00dh
	cpl
	rrca
	ld (bc),a
	ld (de),a
	ld l,h
	inc c
	ld h,d
	cpl
	ld l,h
	inc c
	jr c,$+15
	ld sp,0000fh
	nop
	ex af,af'
	inc c
	nop
	nop
	ex af,af'
	inc c
	dec sp
	dec c
	ld (hl),00fh
	ld (bc),a
	ld (de),a
	ex af,af'
	inc c
	ld h,d
	ld l,008h
	inc c
	dec a
	dec c
	jr c,l51e1h
	ex af,af'
	nop
	ex af,af'
	inc c
	nop
	nop
	ex af,af'
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	ex af,af'
l51e1h:
	inc c
	ld h,d
	dec l
	ex af,af'
	inc c
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ex af,af'
	nop
	ex af,af'
	inc c
	nop
	nop
	ex af,af'
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ex af,af'
	inc c
	ld h,d
	inc l
	ex af,af'
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ex af,af'
	inc c
	nop
	nop
	ex af,af'
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ex af,af'
	inc c
	ld h,d
	dec hl
	ex af,af'
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ex af,af'
	inc c
	nop
	nop
	ex af,af'
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	ld l,h
	inc c
	ld h,d
	ld hl,(00c6ch)
	nop
	nop
	ld l,h
	inc c
	nop
	nop
	ex af,af'
	inc c
	nop
	nop
	ex af,af'
	inc c
	inc l
	dec c
	jr c,l524dh
	ld (bc),a
	dec d
	ex af,af'
	inc c
	nop
	nop
	ex af,af'
	inc c
	ld h,a
	ld bc,00167h
	ex af,af'
	nop
	ex af,af'
l524dh:
	inc c
	ld h,d
	jr z,l5259h
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ex af,af'
l5259h:
	inc c
	nop
	nop
	ex af,af'
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	ex af,af'
	inc c
	ld h,d
	daa
	ex af,af'
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld a,(bc)
	dec c
	ld (00a0dh),hl
	dec c
	ld a,(0340fh)
	ld a,(bc)
	ld (bc),a
	dec d
	ld a,(bc)
	dec c
	ld h,d
	jr z,l528bh
	dec c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld a,(bc)
	dec c
	nop
l528bh:
	nop
	ld a,(bc)
	dec c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld a,(bc)
	dec c
	ld h,d
	add hl,hl
	ld a,(bc)
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	ld l,h
	inc c
	nop
	nop
	ld l,h
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(bc)
	dec c
	ld h,d
	ld hl,(00d0ah)
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld (bc),a
	ld (de),a
	ld a,(bc)
	dec c
	ld h,d
	dec hl
	ld a,(bc)
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld a,(bc)
	dec c
	ld h,d
	inc l
	ld a,(bc)
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	ld a,(bc)
	dec c
	ld h,d
	dec l
	ld a,(bc)
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld a,(bc)
	dec c
	ld h,d
	ld l,00ah
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld a,(bc)
	dec c
	ld h,d
	cpl
	ld a,(bc)
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld a,(bc)
	dec c
	ld h,d
	jr nc,l5303h
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld a,(bc)
	dec c
	ld h,d
l5303h:
	jr nc,l530fh
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld a,(bc)
	dec c
	nop
l530fh:
	nop
	ld a,(bc)
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	ld l,h
	inc c
	ld h,d
	jr nc,l5389h
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(bc)
	dec c
	nop
	nop
	ld a,(bc)
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	ld a,(bc)
	dec c
	ld h,d
	cpl
	ld a,(bc)
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld a,(bc)
	dec c
	nop
	nop
	ld a,(bc)
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld a,(bc)
	dec c
	ld h,d
	ld l,00ah
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (de),a
	ld a,(bc)
	dec c
	nop
	nop
	ld a,(bc)
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	dec bc
	dec c
	rla
	dec c
	dec bc
	dec c
	dec sp
	rrca
	ld (hl),00fh
	rlca
	dec d
	dec bc
	dec c
	nop
	nop
	dec bc
	dec c
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld (bc),a
	nop
	dec bc
	dec c
	ld h,d
	inc l
	dec bc
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	dec bc
	dec c
	nop
	nop
	dec bc
l5389h:
	dec c
	nop
	nop
	nop
	nop
	rlca
	ld (de),a
	ld l,h
	inc c
	ld h,d
	dec hl
	ld l,h
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	dec bc
	dec c
	nop
	nop
	dec bc
	dec c
	nop
	nop
	nop
	nop
	rlca
	ld (de),a
	dec bc
	dec c
	ld h,d
	ld hl,(00d0bh)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	dec bc
	dec c
	nop
	nop
	dec bc
	dec c
	nop
	nop
	nop
	nop
	rlca
	dec d
	dec bc
	dec c
	nop
	nop
	dec bc
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	dec bc
	dec c
	ld h,d
	jr z,l53dch
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	dec bc
	dec c
	nop
	nop
l53dch:
	dec bc
	dec c
	nop
	nop
	nop
	nop
	rlca
	nop
	dec bc
	dec c
	ld h,d
	daa
	dec bc
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	dec bc
	dec c
	nop
	nop
	dec bc
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	dec bc
	dec c
	ld h,d
	jr z,l540ch
	dec c
	nop
	nop
	nop
	nop
	rlca
	ld (de),a
	ld l,h
	inc c
	nop
	nop
l540ch:
	ld l,h
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	dec bc
	dec c
	ld h,d
	add hl,hl
	dec bc
	dec c
	nop
	nop
	nop
	nop
	rlca
	dec d
	dec bc
	dec c
	nop
	nop
	dec bc
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	dec bc
	dec c
	ld h,d
	ld hl,(00d0bh)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	dec bc
	dec c
	ld h,d
	dec hl
	dec bc
	dec c
	nop
	nop
	nop
	nop
	rlca
	ld (de),a
	dec bc
	dec c
	ld h,d
	inc l
	dec bc
	dec c
	ld l,h
	dec b
	nop
	nop
	ld (bc),a
	nop
	dec c
	rrca
	add hl,de
	rrca
	dec c
	rrca
	ld h,d
	ld sp,00f3dh
	rlca
	dec d
	dec c
	rrca
	ld h,d
	ld l,00dh
	rrca
	add hl,de
	rrca
	ld sp,0070dh
	nop
	dec c
	rrca
	ld h,d
	cpl
	dec c
	rrca
	dec h
	rrca
	dec h
	dec c
	rlca
	nop
	dec c
	rrca
	ld h,d
	jr nc,l5486h
	rrca
	add hl,de
	rrca
	ld sp,0070dh
	ld (de),a
	ld l,h
	inc c
	ld h,d
	jr nc,l54f1h
	inc c
l5486h:
	ld l,h
	inc c
	ld l,h
	inc c
	nop
	nop
	dec c
	dec c
	nop
	nop
	dec c
	dec c
	ld l,e
	inc c
	ld l,e
	inc c
	rlca
	ld (de),a
	dec c
	dec c
	ld h,d
	jr nc,l54aah
	dec c
	dec h
	rrca
	dec h
	dec c
	rlca
	nop
	dec c
	dec c
	nop
	nop
	dec c
	dec c
l54aah:
	add hl,de
	rrca
	ld sp,0070dh
	dec d
	dec c
	dec c
	ld h,d
	cpl
	dec c
	dec c
	dec h
	rrca
	dec h
	dec c
	ld (bc),a
	nop
	dec c
	dec c
	nop
	nop
	dec c
	dec c
	add hl,de
	rrca
	ld sp,0020fh
	nop
	dec c
	dec c
	ld h,d
	ld l,00dh
	dec c
	dec h
	rrca
	dec a
	rrca
	rlca
	nop
	dec c
	dec c
	nop
	nop
	dec c
	dec c
	add hl,de
	rrca
	ld sp,0070dh
	nop
	dec c
	dec c
	ld h,d
	dec l
	dec c
	dec c
	dec h
	rrca
	dec h
	dec c
	rlca
	nop
	dec c
	dec c
	ld h,c
	nop
	dec c
l54f1h:
	dec c
	add hl,de
	rrca
	ld sp,0070dh
	ld (de),a
	ld l,h
	inc c
	ld h,d
	nop
	ld l,h
	inc c
	ld l,h
	inc c
	ld l,h
	inc c
	nop
	nop
	dec c
	rrca
	ld h,c
	nop
	add hl,de
	rrca
	ld d,00fh
	daa
	rrca
	rlca
	dec d
	ld h,c
	nop
	dec c
	rrca
	dec c
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	dec c
	rrca
	ld h,c
	nop
	add hl,de
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	ld h,c
	nop
	dec c
	rrca
	dec c
	rrca
	nop
	nop
	nop
	nop
	rlca
	ld (de),a
	dec c
	ld c,061h
	nop
	add hl,de
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	ld l,005h
	inc sp
	dec b
	rlca
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	ld h,a
	inc b
	ld h,a
	inc b
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	ld (de),a
	nop
	nop
	ld l,h
	inc c
	ld l,h
	inc c
	ld l,h
	ld bc,0016ch
	nop
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	ld l,e
	ld bc,0016bh
	rlca
	ld (de),a
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	ld (de),a
	ld l,h
	inc c
	nop
	nop
	ld l,h
	inc c
	ld l,h
	ld bc,0016ch
	nop
	nop
	rrca
	rrca
	nop
	nop
	inc bc
	rrca
	ld l,e
	ld bc,0016bh
	rlca
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	ld (de),a
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	ld (de),a
	ld h,c
	nop
	ld l,h
	inc c
	ld l,h
	inc c
	ld l,h
	ld bc,0016ch
	nop
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	ld l,e
	ld bc,0016bh
	rlca
	ld (de),a
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	ld (de),a
	ld l,h
	inc c
	nop
	nop
	ld l,h
	inc c
	ld l,h
	ld bc,0016ch
	nop
	nop
	rrca
	rrca
	nop
	nop
	inc bc
	rrca
	dec a
	dec b
	ld a,(00705h)
	dec d
	ld h,c
	nop
	djnz l5703h
	inc b
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	djnz l570dh
	ld h,c
	nop
	inc b
	rrca
	ld h,a
l5703h:
	ld (bc),a
	ld h,a
	ld (bc),a
	rlca
	nop
	ld h,c
	nop
	djnz l571bh
	inc b
l570dh:
	rrca
	nop
	nop
	nop
	nop
	rlca
	ld (de),a
	djnz l5725h
	ld h,c
	nop
	inc b
	rrca
	nop
l571bh:
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
l5725h:
	rrca
	add hl,sp
	dec b
	dec a
	dec b
	rlca
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	ld (de),a
	ld h,c
	nop
	ld l,h
	inc c
	ld l,h
	inc c
	ld l,h
	ld bc,0016ch
	nop
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	ld l,e
	ld bc,0016bh
	rlca
	ld (de),a
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	ld (de),a
	ld l,h
	inc c
	nop
	nop
	ld l,h
	inc c
	ld l,h
	ld bc,0016ch
	nop
	nop
	rrca
	rrca
	nop
	nop
	inc bc
	rrca
	ld l,e
	ld bc,0016bh
	rlca
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	ld (de),a
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	ld (de),a
	ld h,c
	nop
	ld l,h
	inc c
	ld l,h
	inc c
	ld l,h
	ld bc,0016ch
	nop
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	ld l,e
	ld bc,0016bh
	rlca
	ld (de),a
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	dec d
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	ld h,c
	nop
	rrca
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	rrca
	rrca
	ld h,c
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	rlca
	ld (de),a
	ld l,h
	inc c
	nop
	nop
	ld l,h
	inc c
	ld l,h
	ld bc,0016ch
	nop
	nop
	rrca
	rrca
	nop
	nop
	inc bc
	rrca
	cpl
	dec b
	inc (hl)
	dec b
	rlca
	dec d
	ld h,c
	nop
	djnz l58e3h
	inc b
	rrca
	nop
	nop
	nop
	nop
	rlca
	nop
	djnz l58edh
	ld h,c
	nop
	inc b
	rrca
	ld h,a
l58e3h:
	ld (bc),a
	ld h,a
	ld (bc),a
	rlca
	nop
	ld h,c
	nop
	djnz l58fbh
	inc b
l58edh:
	rrca
	nop
	nop
	nop
	nop
	rlca
	ld (de),a
	dec c
	rrca
	ld h,c
	nop
	ld bc,l620fh
l58fbh:
	ld sp,00531h
	rlca
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
	jr nz,l604bh
	jr nz,l6041h
	jr nz,l605fh
	ld l,(hl)
	ld (hl),e
	ld l,c
	ld h,h
	ld h,l
	jr nz,l606ah
	ld h,c
	ld l,(hl)
	ld h,d
	ld l,a
	ld (hl),a
	jr nz,l6051h
	jr nz,l606ch
	ld l,c
	ld l,(hl)
	ld h,c
	ld l,h
	jr nz,l606eh
	ld h,c
	ld (hl),h
	ld (hl),h
	ld l,h
	ld h,l
	jr nz,$+34
	jr nz,l6055h
	jr nz,l6057h
l6037h:
	jr nz,l6059h
	jr nz,l605bh
	jr nz,l605dh
	jr nz,l605fh
	jr nz,l6061h
l6041h:
	jr nz,l6063h
	ld c,l
	ld d,l
	ld d,e
	ld c,c
	ld c,(hl)
	ld d,e
	ld d,h
	ld d,d
l604bh:
	ld d,e
	ld b,d
	ld c,e
	ld a,(de)
	nop
	inc bc
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
	inc bc
l605bh:
	inc b
	dec b
l605dh:
	ld b,007h
l605fh:
	add hl,bc
	ld a,(bc)
l6061h:
	dec bc
	inc c
l6063h:
	dec c
	ld c,00fh
	djnz l6079h
	ld (de),a
	inc de
l606ah:
	inc d
	dec d
l606ch:
	nop
	nop
l606eh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6079h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l610dh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,00fh
	rrca
	rrca
	rrca
	rrca
	dec b
	inc b
	ld d,004h
	add a,b
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
	rrca
	add hl,de
	inc b
	ld bc,03107h
	rlca
	dec h
	rlca
	ld bc,00017h
	nop
	nop
	nop
	nop
	nop
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	add hl,de
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	dec a
	rlca
	ld sp,00807h
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	add hl,de
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	ld sp,02507h
	rlca
	add hl,bc
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	add hl,de
	ld h,a
	djnz l620bh
l620bh:
	nop
	ld l,e
	ld (bc),a
	inc (hl)
l620fh:
	rlca
	jr z,l6219h
	ld bc,00017h
	nop
	nop
	nop
	nop
l6219h:
	nop
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	add hl,de
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00740h
	inc (hl)
	rlca
	add hl,bc
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	add hl,de
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00734h
	jr z,l6249h
	ex af,af'
	rla
	nop
	nop
	nop
	nop
	nop
l6249h:
	nop
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	add hl,de
	nop
	nop
	jr z,l6258h
	ld l,h
	ld bc,00733h
l6258h:
	daa
	rlca
	ld (bc),a
	rla
	ld h,a
	dec d
	nop
	nop
	nop
	nop
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	add hl,de
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0073fh
	inc sp
	rlca
	ex af,af'
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	add hl,de
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00a33h
	daa
	ld a,(bc)
	add hl,bc
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	add hl,de
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00a32h
	ld h,00ah
	ld bc,00017h
	nop
	nop
	nop
	nop
	nop
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	add hl,de
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00a3eh
	ld (0090ah),a
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	add hl,de
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00a32h
	ld h,00ah
	ex af,af'
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	add hl,de
	nop
	nop
	nop
	nop
	ld bc,0310ah
	ld a,(bc)
	dec h
	ld a,(bc)
	ex af,af'
	rla
	nop
	nop
	ld sp,06c04h
	add hl,bc
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	add hl,de
	nop
	nop
	ld l,h
	rlca
	dec c
	ld a,(bc)
	dec a
	ld a,(bc)
	ld sp,0090ah
	rla
	ld l,h
	add hl,bc
	jr nc,l630dh
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	ld l,h
l630dh:
	add hl,bc
	nop
	add hl,de
	dec c
	inc c
	ld l,h
	rlca
	ld bc,0310ah
	ld a,(bc)
	dec h
	ld a,(bc)
	ex af,af'
	rla
	ld l,h
	add hl,bc
	cpl
	ld b,06ch
	add hl,bc
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	add hl,de
	djnz l6336h
	ld l,h
	rlca
	inc b
	ld a,(bc)
	inc (hl)
	ld a,(bc)
	jr z,l633ch
	add hl,bc
	rla
	ld l,h
	add hl,bc
l6336h:
	ld sp,l6c06h
	add hl,bc
	ld l,h
	add hl,bc
l633ch:
	ld l,h
	add hl,bc
	nop
	add hl,de
	inc e
	ld a,(bc)
	cpl
	ld a,(bc)
	inc b
	ld a,(bc)
	inc (hl)
	ld a,(bc)
	jr z,l6354h
	ex af,af'
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	ld l,h
	add hl,bc
l6354h:
	ld l,h
	add hl,bc
	nop
	add hl,de
	djnz l6364h
	jr nc,l6366h
	inc b
	ld a,(bc)
	inc (hl)
	ld a,(bc)
	jr z,l636ch
	ex af,af'
	rla
l6364h:
	ld l,h
	dec bc
l6366h:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	ld l,h
	add hl,bc
l636ch:
	ld l,h
	add hl,bc
	nop
	add hl,de
	rrca
	ld a,(bc)
	ld sp,0030ah
	ld a,(bc)
	inc sp
	ld a,(bc)
	daa
	ld a,(bc)
	ex af,af'
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	add hl,de
	dec de
	ld a,(bc)
	jr nc,l6396h
	inc bc
	ld a,(bc)
	inc sp
	ld a,(bc)
	daa
	ld a,(bc)
	ex af,af'
	rla
	ld l,h
	dec bc
l6396h:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	add hl,de
	rrca
	ld a,(bc)
	cpl
	ld a,(bc)
	inc bc
	ld a,(bc)
	daa
	ld a,(bc)
	daa
	ld a,(bc)
	ex af,af'
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	add hl,de
	ld c,00ah
	ld sp,0020ah
	ld a,(bc)
	ld h,00ah
	ld h,00ah
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	add hl,de
	ld a,(de)
	ld a,(bc)
	cpl
	ld a,(bc)
	ld c,00ah
	ld (0320ah),a
	ld a,(bc)
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	add hl,de
	ld c,00ah
	jr nc,l63f6h
	ld (bc),a
	ld a,(bc)
	ld h,00ah
	ld h,00ah
	rlca
	rla
	ld l,h
	dec bc
l63f6h:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	add hl,de
	dec c
	rrca
	dec h
	ld a,(bc)
	ld bc,0360dh
	add hl,bc
	dec a
	add hl,bc
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	ld l,d
	ld bc,01900h
	add hl,de
	rlca
	inc h
	ld a,(bc)
	dec c
	dec c
	inc (hl)
	add hl,bc
	dec sp
	add hl,bc
	inc bc
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	inc hl
	ld a,(bc)
	ld bc,0360dh
	add hl,bc
	dec a
	add hl,bc
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	djnz l6459h
	dec h
	ld a,(bc)
	inc b
	dec c
	add hl,sp
	add hl,bc
	ld b,b
	add hl,bc
	ld (bc),a
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
l6459h:
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc e
	rrca
	inc hl
	ld a,(bc)
	djnz l6473h
	jr c,l6471h
	ccf
	add hl,bc
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
l6471h:
	add hl,bc
	nop
l6473h:
	nop
	nop
	nop
	nop
	add hl,de
	djnz l6489h
	inc h
	ld a,(bc)
	inc b
	dec c
	inc (hl)
	add hl,bc
	dec sp
	add hl,bc
	inc bc
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
l6489h:
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	dec h
	ld a,(bc)
	inc bc
	dec c
	ld (hl),009h
	dec a
	add hl,bc
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec de
	rrca
	inc h
	ld a,(bc)
	rrca
	dec c
	nop
	nop
	nop
	nop
	nop
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	inc hl
	ld a,(bc)
	inc bc
	dec c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld c,00fh
	dec h
	ld a,(bc)
	ld (bc),a
	dec c
	add hl,sp
	add hl,bc
	ld b,b
	add hl,bc
	ld (bc),a
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld a,(de)
	rrca
	inc hl
	ld a,(bc)
	ld c,00dh
	dec a
	add hl,bc
	ld b,h
	add hl,bc
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld c,00fh
	inc h
	ld a,(bc)
	ld (bc),a
	dec c
	ld sp,03809h
	dec bc
	inc bc
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	dec h
	ld a,(bc)
	ld bc,l610dh
	nop
	ld h,c
	nop
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	add hl,de
	rrca
	inc h
	ld a,(bc)
	dec c
	dec c
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	inc hl
	ld a,(bc)
	ld bc,0000dh
	nop
	nop
	nop
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	djnz l6579h
	dec h
	ld a,(bc)
	inc b
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
l6579h:
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc e
	rrca
	dec h
	add hl,bc
	inc b
	rrca
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	djnz l65a9h
	ld hl,(00409h)
	dec c
	nop
	nop
	nop
	nop
	nop
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
l65a9h:
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	inc l
	add hl,bc
	inc bc
	dec c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec de
	rrca
	cpl
	add hl,bc
	inc bc
	rrca
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	inc l
	add hl,bc
	inc bc
	dec c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld c,00fh
	dec h
	ld a,(bc)
	ld (bc),a
	dec c
	ld sp,03609h
	add hl,bc
	ld (bc),a
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld a,(de)
	rrca
	inc hl
	ld a,(bc)
	ld c,00dh
	ld (03709h),a
	add hl,bc
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld c,00fh
	inc h
	ld a,(bc)
	ld (bc),a
	dec c
	inc sp
	add hl,bc
	jr c,l663bh
	inc bc
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
l663bh:
	nop
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	dec h
	ld a,(bc)
	ld bc,0330dh
	add hl,bc
	dec sp
	add hl,bc
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	add hl,de
	rrca
	inc h
	ld a,(bc)
	dec c
	dec c
	ld (hl),009h
	dec a
	add hl,bc
	nop
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	inc hl
	ld a,(bc)
	ld bc,0340dh
	add hl,bc
	add hl,sp
	add hl,bc
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	djnz l6699h
	dec h
	ld a,(bc)
	inc b
	dec c
	ld (hl),009h
	dec a
	add hl,bc
	ld (bc),a
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
l6699h:
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc e
	rrca
	inc hl
	ld a,(bc)
	djnz l66b3h
	inc sp
	add hl,bc
	jr c,l66b3h
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
l66b3h:
	nop
	nop
	nop
	nop
	add hl,de
	djnz l66c9h
	inc h
	ld a,(bc)
	inc b
	dec c
	ld (hl),009h
	dec a
	add hl,bc
	inc bc
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
l66c9h:
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	dec h
	ld a,(bc)
	inc bc
	dec c
	ld sp,03609h
	add hl,bc
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec de
	rrca
	inc h
	ld a,(bc)
	rrca
	dec c
	ld (hl),009h
	dec a
	add hl,bc
	inc bc
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	inc hl
	ld a,(bc)
	inc bc
	dec c
	add hl,sp
	add hl,bc
	inc (hl)
	add hl,bc
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld c,00fh
	dec h
	ld a,(bc)
	ld (bc),a
	dec c
	ld (hl),009h
	dec a
	add hl,bc
	ld (bc),a
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld a,(de)
	rrca
	inc hl
	ld a,(bc)
	ld c,00dh
	ld (hl),009h
	ld sp,00109h
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld c,00fh
	inc h
	ld a,(bc)
	ld (bc),a
	dec c
	ld sp,03609h
	add hl,bc
	nop
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	dec h
	ld a,(bc)
	ld bc,0330dh
	add hl,bc
	jr c,l6773h
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
l6773h:
	nop
	nop
	nop
	nop
	add hl,de
	add hl,de
	rrca
	inc h
	ld a,(bc)
	dec c
	dec c
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	inc hl
	ld a,(bc)
	ld bc,0000dh
	nop
	nop
	nop
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	ld h,a
	ld bc,00167h
	nop
	add hl,de
	djnz l67b9h
	dec h
	ld a,(bc)
	inc b
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
l67b9h:
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc e
	rrca
	inc hl
	ld a,(bc)
	djnz l67d3h
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
l67d3h:
	nop
	nop
	nop
	nop
	add hl,de
	djnz l67e9h
	inc h
	ld a,(bc)
	inc b
	dec c
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
l67e9h:
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	dec h
	ld a,(bc)
	inc bc
	dec c
	inc (hl)
	add hl,bc
	dec a
	add hl,bc
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec de
	rrca
	inc h
	ld a,(bc)
	rrca
	dec c
	nop
	nop
	nop
	nop
	nop
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	ld h,a
	ld bc,00167h
	nop
	add hl,de
	rrca
	rrca
	inc hl
	ld a,(bc)
	inc bc
	dec c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld c,00fh
	dec h
	ld a,(bc)
	ld (bc),a
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld a,(de)
	rrca
	inc hl
	ld a,(bc)
	ld c,00dh
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	nop
	add hl,de
	ld c,00fh
	inc h
	ld a,(bc)
	ld (bc),a
	dec c
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc e
	rrca
	inc hl
	ld a,(bc)
	djnz l6893h
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
l6893h:
	nop
	nop
	nop
	nop
	add hl,de
	djnz l68a9h
	inc h
	ld a,(bc)
	inc b
	dec c
	nop
	nop
	nop
	nop
	nop
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
l68a9h:
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	dec h
	ld a,(bc)
	inc bc
	dec c
	inc (hl)
	add hl,bc
	dec sp
	add hl,bc
	ld (bc),a
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec de
	rrca
	inc h
	ld a,(bc)
	rrca
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	inc hl
	ld a,(bc)
	inc bc
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld c,00fh
	dec h
	ld a,(bc)
	ld (bc),a
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld a,(de)
	rrca
	inc hl
	ld a,(bc)
	ld c,00dh
	ld l,h
	ld bc,00000h
	ld (bc),a
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld c,00fh
	inc h
	ld a,(bc)
	ld (bc),a
	dec c
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	add hl,bc
	ld l,h
	rlca
	ld l,h
	add hl,bc
	ld l,h
	ld bc,0016ch
	nop
	add hl,de
	inc bc
	rrca
	jr nz,l694eh
	inc bc
	inc c
	ld hl,(0330ah)
	ld a,(bc)
	inc bc
	rla
	ld l,h
	dec bc
l694eh:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	jr nz,l6966h
	rrca
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
l6966h:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc bc
	rrca
	jr nz,l697eh
	inc bc
	inc c
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	dec bc
l697eh:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	jr nz,l6996h
	rrca
	inc c
	ld h,a
	ld bc,00167h
	ld bc,l6c17h
	dec bc
l6996h:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc bc
	rrca
	jr nz,l69aeh
	inc bc
	inc c
	nop
	nop
	nop
	nop
	nop
	rla
	ld l,h
	dec bc
l69aeh:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	jr nz,l69c6h
	rrca
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
l69c6h:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc bc
	rrca
	jr nz,l69deh
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	dec bc
l69deh:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	jr nz,l69f6h
	rrca
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
l69f6h:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc bc
	rrca
	jr nz,l6a0eh
	inc bc
	inc c
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	dec bc
l6a0eh:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	ld l,h
	ld bc,0016ch
	nop
	add hl,de
	rrca
	rrca
	jr nz,l6a26h
	rrca
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
l6a26h:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc bc
	rrca
	jr nz,l6a3eh
	inc bc
	inc c
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	inc bc
	rla
	ld l,h
	dec bc
l6a3eh:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	jr nz,l6a56h
	rrca
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
l6a56h:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc bc
	rrca
	inc hl
	ld a,(bc)
	inc bc
	inc c
	cpl
	add hl,bc
	ld (hl),009h
	nop
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	inc hl
	ld a,(bc)
	rrca
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc bc
	rrca
	inc hl
	ld a,(bc)
	inc bc
	inc c
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	inc hl
	ld a,(bc)
	rrca
	inc c
	ld h,a
	ld bc,00167h
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc bc
	rrca
	inc hl
	ld a,(bc)
	inc bc
	inc c
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	inc hl
	ld a,(bc)
	rrca
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rla
	rrca
	dec h
	ld a,(bc)
	rla
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec bc
	rrca
l6b0ah:
	ld hl,(00b0ah)
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rla
	rrca
	inc l
	ld a,(bc)
	rla
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec d
	rrca
	ld sp,0150ah
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	add hl,bc
	rrca
	ld (hl),00ah
	add hl,bc
	inc c
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec d
	rrca
	jr c,l6b76h
	dec d
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
l6b76h:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	dec h
	ld a,(bc)
	ex af,af'
	inc c
	ld sp,03809h
	add hl,bc
	inc bc
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	ld sp,0140ah
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	dec h
	ld a,(bc)
	ex af,af'
	inc c
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	ld sp,0140ah
	inc c
	ld h,a
	ld bc,00167h
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	dec h
	ld a,(bc)
	ex af,af'
	inc c
	nop
	nop
	nop
	nop
	nop
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	ld sp,0140ah
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
l6c06h:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	dec h
	ld a,(bc)
	ex af,af'
	inc c
	nop
l6c17h:
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	ld sp,0140ah
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	dec h
	ld a,(bc)
	ex af,af'
	inc c
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	ld sp,0140ah
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	dec h
	ld a,(bc)
	ex af,af'
	inc c
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	inc bc
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	ld sp,0140ah
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	ld l,h
	inc b
	ld l,h
	inc b
	nop
	add hl,de
	ex af,af'
	rrca
	dec h
	ld a,(bc)
	ex af,af'
	inc c
	ld (hl),009h
	dec a
	add hl,bc
	nop
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	ld sp,0140ah
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	dec h
	ld a,(bc)
	ex af,af'
	inc c
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	ld sp,0140ah
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	dec h
	ld a,(bc)
	ex af,af'
	inc c
	ld h,a
	ld bc,00167h
	inc bc
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	ld sp,0140ah
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rla
	rrca
	dec h
	ld a,(bc)
	rla
	inc c
	jr c,l6d41h
	ccf
	add hl,bc
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
l6d41h:
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec bc
	rrca
	ld sp,00b0ah
	inc c
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rla
	rrca
	dec h
	ld a,(bc)
	rla
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec d
	rrca
	ld sp,0150ah
	inc c
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	nop
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	add hl,bc
	rrca
	dec h
	ld a,(bc)
	add hl,bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec d
	rrca
	ld sp,0150ah
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc bc
	rrca
	jr nz,l6dceh
	inc bc
	inc c
	add hl,sp
	add hl,bc
	ld b,b
	add hl,bc
	inc bc
	rla
	ld l,h
	dec bc
l6dceh:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	jr nz,l6de6h
	rrca
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
l6de6h:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc bc
	rrca
	jr nz,l6dfeh
	inc bc
	inc c
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	dec bc
l6dfeh:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	jr nz,l6e16h
	rrca
	inc c
	ld h,a
	ld bc,00167h
	ld bc,l6c17h
	dec bc
l6e16h:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc bc
	rrca
	jr nz,l6e2eh
	inc bc
	inc c
	nop
	nop
	nop
	nop
	nop
	rla
	ld l,h
	dec bc
l6e2eh:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	jr nz,l6e46h
	rrca
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
l6e46h:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc bc
	rrca
	jr nz,l6e5eh
	inc bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	dec bc
l6e5eh:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	jr nz,l6e76h
	rrca
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
l6e76h:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc bc
	rrca
	jr nz,l6e8eh
	inc bc
	inc c
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	dec bc
l6e8eh:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	jr nz,l6ea6h
	rrca
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
l6ea6h:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc bc
	rrca
	jr nz,l6ebeh
	inc bc
	inc c
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	dec bc
l6ebeh:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	jr nz,l6ed6h
	rrca
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
l6ed6h:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc bc
	rrca
	inc hl
	ld a,(bc)
	inc bc
	inc c
	ld a,(l4109h)
	add hl,bc
	nop
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	inc hl
	ld a,(bc)
	rrca
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc bc
	rrca
	inc hl
	ld a,(bc)
	inc bc
	inc c
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	inc hl
	ld a,(bc)
	rrca
	inc c
	ld h,a
	ld bc,00167h
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc bc
	rrca
	inc hl
	ld a,(bc)
	inc bc
	inc c
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	inc hl
	ld a,(bc)
	rrca
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rla
	rrca
	dec h
	ld a,(bc)
	rla
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec bc
	rrca
	ld hl,(00b0ah)
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rla
	rrca
	inc l
	ld a,(bc)
	rla
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec d
	rrca
	ld sp,0150ah
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	add hl,bc
	rrca
	ld (hl),00ah
	add hl,bc
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec d
	rrca
	jr c,l6ff6h
	dec d
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
l6ff6h:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	dec h
	ld a,(bc)
	ex af,af'
	inc c
	dec sp
	add hl,bc
	ld b,d
	add hl,bc
	inc bc
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	add hl,bc
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	ld sp,0140ah
	inc c
	nop
	add hl,bc
	nop
	nop
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	add hl,bc
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	dec h
	ld a,(bc)
	ex af,af'
	inc c
	nop
	add hl,bc
	nop
	nop
	inc bc
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	add hl,bc
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	ld sp,0140ah
	inc c
	ld h,a
	ld bc,00167h
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	add hl,bc
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	dec h
	ld a,(bc)
	ex af,af'
	inc c
	nop
	add hl,bc
	nop
	nop
	nop
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	add hl,bc
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	ld sp,0140ah
	inc c
	nop
	add hl,bc
	nop
	nop
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	add hl,bc
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	dec h
	ld a,(bc)
	ex af,af'
	inc c
	nop
	add hl,bc
	nop
	nop
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	add hl,bc
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	ld sp,0140ah
	inc c
	nop
	add hl,bc
	nop
	nop
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	add hl,bc
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	dec h
	ld a,(bc)
	ex af,af'
	inc c
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	ld sp,0140ah
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	dec h
	ld a,(bc)
	ex af,af'
	inc c
	nop
	nop
	nop
	nop
	nop
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	ld sp,0140ah
	inc c
	nop
	nop
	nop
	nop
	ld bc,l6c17h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	dec h
	ld a,(bc)
	ex af,af'
	inc c
	inc sp
	rlca
	dec sp
	dec bc
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	ld sp,0140ah
	inc c
	ld (hl),007h
	dec a
	dec bc
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	dec h
	ld a,(bc)
	ex af,af'
	inc c
	inc (hl)
	rlca
	add hl,sp
	dec bc
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	ld sp,0140ah
	inc c
	ld (hl),007h
	dec a
	dec bc
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	dec h
	ld a,(bc)
	ex af,af'
	inc c
	inc sp
	rlca
	jr c,l7195h
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
l7195h:
	nop
	nop
	add hl,de
	inc d
	rrca
	ld sp,0140ah
	inc c
	ld (hl),007h
	dec a
	dec bc
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	add hl,hl
	ld a,(bc)
	ex af,af'
	inc c
	ld sp,03607h
	dec bc
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	jr z,l71d6h
	dec c
	inc c
	ld (hl),007h
	dec a
	dec bc
	ld (bc),a
	rla
	ld l,h
	dec bc
l71d6h:
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	daa
	ld a,(bc)
	rrca
	inc c
	dec a
	rlca
	inc (hl)
	dec bc
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld (de),a
	rrca
	ld h,00ah
	ld (de),a
	inc c
	ld (hl),007h
	dec a
	dec bc
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	dec h
	ld a,(bc)
	inc d
	inc c
	jr c,l721fh
	inc sp
	dec bc
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
l721fh:
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rla
	rrca
	inc h
	ld a,(bc)
	rla
	inc c
	ld (hl),007h
	dec a
	dec bc
	ld (bc),a
	rla
	ld l,h
	dec bc
	ld l,h
	add hl,bc
	ld l,h
	dec bc
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
