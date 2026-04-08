; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank17.asm /tmp/smanbow2_bank.bin

	org 04000h

	ld d,e
	ld b,l
	ld b,l
	inc sp
	ld b,l
	ld b,h
	ld c,c
	ld d,h
	rst 38h
	inc bc
	ld (hl),018h
	ld hl,00000h
	nop
	nop
	nop
	ld a,(bc)
	nop
	add hl,de
	nop
	daa
	nop
	ld (hl),000h
	ld b,a
	nop
	ld d,l
	nop
	ld h,(hl)
	nop
	ld (hl),h
	nop
	add a,l
	nop
	sub (hl)
	nop
	and a
	nop
	or c
	nop
	cp (hl)
	nop
	push bc
	nop
	rst 8
	nop
	ret c
	nop
	and 000h
	ret p
	nop
	ret m
	nop
	add hl,bc
	ld bc,00117h
	jr nz,l403fh
	cpl
l403fh:
	ld bc,0013eh
sub_4042h:
	ld b,h
	ld bc,0014ch
	ld d,e
	ld bc,0015bh
	ld e,(hl)
	ld bc,00164h
	ld (hl),c
	ld bc,00153h
	ld d,e
	ld bc,0ffffh
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l405fh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l4065h:
	rst 38h
l4066h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l406ah:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l406eh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l4077h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l407ch:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l4089h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l4090h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l40a5h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l40adh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l40b4h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l40e6h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l40eah:
	rst 38h
	rst 38h
l40ech:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l40f2h:
	rst 38h
	rst 38h
	rst 38h
l40f5h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l4115h:
	rst 38h
sub_4116h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_4129h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l412dh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_413ch:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l414dh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l415bh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l4164h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l4186h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l4203h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l4210h:
	ld b,b
	nop
	nop
	nop
	nop
	sub b
	nop
	dec b
	cp e
	nop
	nop
	dec c
	nop
	nop
	nop
	inc h
	nop
	nop
	nop
	nop
	ld h,b
	nop
	dec b
	cp e
	nop
	nop
	ld b,d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,c
	nop
	dec b
	dec sp
	nop
	nop
	ld b,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	adc a,d
	nop
	dec b
	dec sp
	nop
	nop
	add a,d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	sub h
	nop
	dec b
	dec sp
	nop
	nop
	add a,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	and b
	nop
	dec b
	dec sp
	nop
	nop
	ld b,e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	or b
	nop
	dec b
	dec sp
	nop
	nop
	add a,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ret nz
	nop
	dec b
	dec sp
	nop
	nop
	ld b,c
	nop
	nop
	nop
	jr nc,l428ah
l428ah:
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	sbc a,a
	nop
	nop
l42b1h:
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
	dec b
	rra
	nop
	nop
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
	dec b
	rra
	nop
	nop
l42cfh:
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
	dec b
	rra
	nop
	nop
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	dec sp
	nop
	nop
	ld c,000h
	nop
	nop
	ld (00000h),hl
	nop
	nop
	nop
	ld bc,03b00h
	nop
	nop
	ld b,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz,l4308h
	nop
l4308h:
	dec sp
	nop
	nop
	ld b,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	djnz l4317h
	nop
l4317h:
	dec sp
	nop
	nop
	add a,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	dec sp
	nop
	nop
	add a,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz,l4335h
	nop
l4335h:
	dec sp
	nop
	nop
	ld b,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,b
	ld bc,03b00h
	nop
	nop
	ld b,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add a,b
	ld bc,03b00h
	nop
	nop
	ld b,c
	nop
	nop
	nop
	jr nc,l435ch
l435ch:
	nop
	nop
	nop
	ld h,b
	inc bc
	nop
	dec sp
	nop
	nop
	ld b,e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	ld b,b
	ld (bc),a
	dec b
	dec de
	nop
	nop
	add hl,bc
	nop
	nop
	nop
	inc hl
	nop
	nop
	nop
	nop
	rst 30h
	add a,b
	dec b
	dec sp
	nop
	nop
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,d
	dec b
	dec de
	nop
	nop
	ld b,d
l43b1h:
	nop
	nop
l43b3h:
	nop
	nop
	nop
	nop
	nop
	nop
	ret nc
	add a,c
	dec b
	dec de
	nop
	nop
	ld b,e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,b
	ld b,c
	dec b
	cp e
	nop
	nop
	add a,e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	sub b
	add a,b
	dec b
	sbc a,e
	nop
	nop
	ld b,l
	nop
	nop
	nop
	jr nc,l43e3h
l43e3h:
	nop
	nop
	nop
	or b
	ld b,b
	nop
	cp e
	nop
	nop
	add a,l
	nop
	nop
l43efh:
	nop
	ld h,000h
	nop
	nop
	nop
	nop
	add a,d
	dec b
	cp e
	nop
	nop
	add a,e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,d
	dec b
	sbc a,e
	nop
	nop
	ld b,h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ret nc
	add a,c
	dec b
	sbc a,e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	or b
	ld b,c
	dec b
	dec sp
	nop
	nop
	add a,e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nc,l43b3h
	dec b
	dec de
	nop
	nop
l4437h:
	ld b,h
	nop
	nop
	nop
	jr nc,l443dh
l443dh:
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	sub b
	nop
	ld b,b
	ld bc,00130h
	dec b
	or b
	ld a,(bc)
	dec c
	inc c
	nop
	nop
	nop
	nop
	sub b
	ld b,b
	sub b
	ld b,b
	and d
	nop
	dec b
	or b
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
	nop
	inc h
	ret nz
	ld bc,00140h
	ld (00501h),a
	or b
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
	nop
	nop
	sub b
	ld b,b
	sub b
	ld b,b
	and d
	nop
	dec b
	or b
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
	nop
	nop
	sub b
	add a,b
	sub b
	add a,b
	ld (00501h),a
	or b
	ld b,b
l449fh:
	ld b,b
	ld b,b
	nop
	nop
	nop
	nop
	sub b
	ld b,b
	sub b
	ld b,b
	and d
	nop
	dec b
	or b
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
	nop
	nop
	sub b
	add a,b
	sub b
	add a,b
	ld (00501h),a
	or b
sub_44bch:
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	ld b,b
	ld (00501h),a
	or b
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
	nop
	nop
	sub b
	ld b,b
	sub b
	ld b,b
	and d
	nop
	dec b
	or b
	ld b,c
	ld b,c
	ld b,c
	nop
	nop
	nop
	nop
	sub b
	add a,b
	sub b
	add a,b
	ld (00501h),a
	or b
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
	nop
	nop
	sub b
	ld b,b
	sub b
	ld b,b
l44f4h:
	and d
	nop
	dec b
	or b
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
	nop
	nop
	sub b
	add a,b
	sub b
	add a,b
	ld (00501h),a
	or b
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
	nop
	jr nc,l449fh
	ld b,b
	sub b
	ld b,b
l4512h:
	and d
	nop
	nop
	cp b
	ld b,b
	ld b,b
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
	cp a
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	cp a
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	dec sp
	nop
	nop
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
	inc b
	dec b
	dec sp
	nop
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz,l455fh
l455fh:
	dec b
	dec de
	nop
	nop
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld e,000h
	dec b
	dec de
	nop
	nop
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,b
	ld bc,0bb05h
	nop
	nop
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
	ld (bc),a
	dec b
	cp e
	nop
	nop
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
	inc bc
	nop
	cp e
	nop
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,b
	inc b
	nop
	cp e
	nop
	nop
	rrca
	nop
	nop
	nop
	ld (00000h),hl
	nop
	nop
	nop
	ld b,005h
	cp e
	nop
	nop
	ld b,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(bc)
	dec b
	cp e
	nop
	nop
	ld b,c
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
	dec b
	cp e
	nop
	nop
	add a,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,b
	ld bc,0bb00h
	nop
	nop
	add a,c
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
	dec b
	cp e
	nop
	nop
	ld b,c
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
	dec b
	cp e
	nop
	nop
	ld b,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,b
	inc b
	dec b
	cp e
	nop
	nop
	ld b,c
	nop
	nop
	nop
	jr nc,l461dh
l461dh:
	nop
	nop
	nop
	nop
	nop
	nop
l4623h:
	cp a
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
l462fh:
	nop
	nop
	nop
	cp a
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	jp m,01f01h
	cp e
	nop
	nop
	dec c
	nop
	nop
	nop
	jr z,l464ah
l464ah:
	nop
	nop
	nop
	jr l468fh
	rra
	cp e
	nop
	nop
	dec c
	nop
	nop
	nop
	jr nc,l4659h
l4659h:
	nop
	nop
	nop
	jr nc,l465fh
	rra
l465fh:
	cp e
	nop
	nop
	dec c
	nop
	nop
	nop
	dec h
	nop
	nop
	nop
	nop
	djnz l46adh
	rra
	cp e
	nop
	nop
	dec c
l4672h:
	nop
	nop
	nop
	jr nc,l4677h
l4677h:
	nop
	nop
	nop
	xor d
	ld bc,0bb1fh
	nop
	nop
	dec c
	nop
	nop
	nop
	ld h,000h
	nop
	nop
	nop
	jr l46cbh
	rra
	cp e
	nop
	nop
l468fh:
	dec c
	nop
	nop
l4692h:
	nop
	jr nc,l4695h
l4695h:
	nop
	nop
	nop
	jr nz,l469bh
	rra
l469bh:
	cp e
	nop
	nop
	dec c
	nop
	nop
	nop
	dec h
	nop
	nop
	nop
	nop
	jr nz,l46e9h
	rra
	cp e
	nop
	nop
l46adh:
	dec c
	nop
	nop
	nop
	jr nc,l46b3h
l46b3h:
	nop
	nop
	nop
	ret nz
	ld bc,0bb1fh
	nop
	nop
	dec c
	nop
	nop
	nop
	ld h,000h
	nop
	nop
	nop
	inc d
	ld b,b
	rra
	cp e
	nop
	nop
l46cbh:
	ld b,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	djnz l4716h
	nop
	dec sp
	nop
	nop
	ld b,b
	nop
	nop
	nop
	jr nc,l46e0h
l46e0h:
	nop
	nop
	nop
	nop
	nop
	rra
	cp a
	nop
	nop
l46e9h:
	nop
	nop
	nop
l46ech:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
l46fbh:
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
l470ah:
	nop
	ld b,b
	nop
	nop
	nop
	nop
	and b
	ld (bc),a
	rra
	cp e
	nop
	nop
l4716h:
	dec c
	nop
	nop
l4719h:
	nop
	ld h,000h
	nop
	nop
	nop
	jr l4761h
	rra
	cp e
	nop
	nop
	dec c
	nop
	nop
	nop
	jr nc,l472bh
l472bh:
	nop
	nop
	nop
	jr l4770h
	rra
	cp e
	nop
	nop
	dec c
	nop
	nop
l4737h:
	nop
	daa
	nop
	nop
	nop
	nop
	djnz l477fh
	rra
	cp e
	nop
l4742h:
	nop
	dec c
	nop
	nop
l4746h:
	nop
	jr nc,l4749h
l4749h:
	nop
	nop
	nop
	djnz l478eh
	rra
	cp e
	nop
	nop
	dec c
	nop
	nop
l4755h:
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	add a,b
	rra
	cp e
	nop
	nop
l4761h:
	dec c
	nop
	nop
l4764h:
	nop
	cpl
	nop
	nop
	nop
	nop
	jr l46ech
	rra
	cp e
	nop
	nop
l4770h:
	dec c
	nop
	nop
	nop
	jr nc,l4776h
l4776h:
	nop
	nop
sub_4778h:
	nop
	jr l46fbh
	rra
	cp e
	nop
	nop
l477fh:
	dec c
	nop
	nop
	nop
	ld hl,(00000h)
	nop
	nop
	jr nz,l470ah
	rra
	cp e
	nop
	nop
l478eh:
	dec c
	nop
	nop
	nop
	jr nc,l4794h
l4794h:
	nop
	nop
	nop
	djnz l4719h
	rra
	cp e
	nop
	nop
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,b
	add a,b
	rra
	cp e
	nop
	nop
	inc c
	nop
	nop
	nop
	add hl,hl
	nop
	nop
	nop
	nop
	djnz l4737h
	rra
	cp e
	nop
	nop
	ld b,c
	nop
	nop
	nop
	nop
	nop
l47c1h:
	nop
	nop
	nop
	djnz l4746h
	nop
	dec sp
	nop
	nop
	ld b,b
l47cbh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	djnz l4755h
	nop
	dec sp
	nop
	nop
	ld b,b
	nop
	nop
	nop
	jr nc,l47dfh
l47dfh:
	nop
	nop
	nop
	jr l4764h
	rra
	cp e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	ld b,b
	ld (bc),a
	dec b
	dec de
	nop
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,000h
	dec b
	dec de
	nop
	nop
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ret nz
	ld (bc),a
	dec b
	dec sp
	nop
	nop
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
	rlca
	rrca
	dec sp
	nop
	nop
	add a,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,b
	rlca
	dec b
	dec sp
	nop
	nop
	add a,b
	nop
	nop
	nop
	ld (00000h),hl
	nop
	nop
	nop
	add hl,bc
	dec b
	dec sp
	nop
	nop
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
	ld b,(hl)
	dec b
	dec sp
	nop
	nop
	add a,b
	nop
	nop
sub_4872h:
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz,l48bbh
	nop
	dec sp
	nop
	nop
	add a,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,b
	ld b,c
	nop
	dec sp
	nop
	nop
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
	add a,c
	nop
	dec sp
	nop
	nop
	ld b,c
	nop
	nop
	nop
	inc hl
	nop
	nop
	nop
	nop
	jr nc,l48e7h
	nop
	dec sp
	nop
	nop
	ld b,b
	nop
	nop
	nop
	jr nc,l48b1h
l48b1h:
	nop
	nop
	nop
	nop
	ld b,c
	dec b
	dec sp
	nop
	nop
	ld b,e
l48bbh:
	nop
	nop
	nop
	jr nc,l48c0h
l48c0h:
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
sub_48c9h:
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	cp a
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	ld b,h
	inc b
	ld h,(hl)
	ld b,0e0h
	nop
	ld a,(de)
	sub b
	rrca
	rrca
l48e7h:
	rrca
	nop
	nop
	nop
	ld (00333h),hl
	ld b,h
	inc b
	nop
	ld (bc),a
	rra
	sub b
	ld b,b
	rrca
	ld b,b
	nop
	nop
	nop
	nop
	ld (03302h),hl
sub_48feh:
	inc bc
	ret po
	ld bc,0b01fh
	ld b,b
	ld c,040h
	nop
	nop
l4908h:
	nop
	jr nc,l4908h
	ld bc,00133h
	ld h,b
	ld (bc),a
	rra
	sub b
	ld b,c
	dec c
	ld b,b
	nop
	nop
	nop
	nop
	ld (hl),c
	ld (bc),a
	nop
	nop
	ret po
	ld (bc),a
	rra
	or d
	ld b,c
	nop
	ld b,b
	nop
	nop
	nop
	nop
	dec c
	inc bc
	nop
	nop
	ld h,b
	inc bc
	rra
	sbc a,d
	add a,b
	nop
	ld b,b
	nop
	nop
	nop
	nop
	ret nc
	inc bc
	nop
	nop
	ret po
	inc bc
	rra
	sbc a,d
	add a,c
	nop
	ld b,b
	nop
	nop
	nop
	nop
	call nz,00004h
	nop
	ld h,b
	ld bc,0ba1fh
	add a,c
	rrca
	ld b,b
	nop
	nop
l4953h:
	nop
l4954h:
	dec h
	nop
	ld (bc),a
	nop
	dec b
	ret po
	nop
	rra
	sbc a,b
	ld b,d
	ld b,c
	ld b,d
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,l
	dec b
	ld h,b
	ld bc,0981fh
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
l4971h:
	nop
	nop
	nop
	inc bc
	nop
	nop
	ret po
	ld bc,09a18h
	ld b,b
	ld b,b
	add a,c
	nop
	nop
	nop
	nop
	ld (hl),b
	ld bc,00000h
	ld h,b
	ld (bc),a
	rra
	cp d
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
	nop
	nop
	sub b
	ld bc,00000h
	ret po
	ld (bc),a
	rra
	cp d
	ld b,b
	ld b,b
	ld b,c
	nop
	nop
	nop
	nop
	defb 0fdh,001h,000h ;illegal sequence
	nop
	ld h,b
	inc bc
	inc b
	cp d
	ld b,b
	ld b,c
	add a,c
	nop
	nop
	nop
	nop
	ld (hl),c
	ld (bc),a
	nop
	nop
	ret po
	inc bc
	djnz l4971h
	ld b,b
	ld b,b
	ld b,c
	nop
	nop
	nop
	jr nc,l49bfh
l49bfh:
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	ld d,l
	dec b
	ld h,(hl)
	ld b,011h
	ld bc,09017h
	nop
	nop
	nop
	nop
	nop
	nop
	inc hl
	ld b,h
	inc b
	ld b,h
	inc b
	ld (01502h),hl
	sub b
	add a,h
	add a,h
	add a,h
	nop
	nop
	nop
	nop
	ld (03303h),a
	inc bc
	ld (01f02h),hl
	or b
	add a,b
	add a,b
	add a,b
	nop
	nop
	nop
	jr nc,l4a2ch
	ld (bc),a
	inc sp
	ld bc,00333h
	inc de
	sub b
	rrca
	rrca
	rrca
	nop
	nop
	nop
	nop
	or b
	ld (bc),a
	nop
	nop
	inc sp
	inc bc
	rra
	or d
	ld b,b
	nop
	ld b,b
	nop
	nop
	nop
	nop
	ld b,b
	inc bc
	nop
	nop
	ld b,h
l4a2ch:
	inc b
	rla
	sbc a,d
	add a,b
	nop
	ld b,b
	nop
	nop
	nop
	nop
	ret p
	inc bc
	nop
	nop
	ld b,h
	inc b
	dec c
	sbc a,d
	add a,c
	nop
	ld b,b
	nop
	nop
	nop
	nop
	ret po
	inc b
	nop
	nop
	ld (01f02h),hl
	cp d
	add a,c
	rrca
	ld b,b
	nop
	nop
	nop
	daa
	nop
	inc bc
	nop
	dec b
	ld de,01f01h
	sbc a,b
	ld b,d
	ld b,c
	ld b,d
	nop
	nop
	nop
	nop
	ld de,l5501h
	dec b
	add a,b
	ld bc,0981fh
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
l4a70h:
	nop
	nop
	ld b,h
	inc b
	nop
	nop
	ret p
	ld bc,09a18h
	ld b,b
	ld b,b
	add a,c
	nop
	nop
	nop
	nop
	ld (00002h),hl
	nop
	add a,b
	ld (bc),a
	rra
	cp d
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
	nop
	nop
	ld b,h
	ld (bc),a
	nop
	nop
	inc sp
	inc bc
	rra
	cp d
	ld b,b
	ld b,b
	ld b,c
	nop
	nop
	nop
	nop
	or b
	ld (bc),a
	nop
	nop
	ld b,h
	inc b
	inc b
	cp d
	ld b,b
	ld b,c
	add a,c
	nop
	nop
	nop
	nop
	ld (hl),c
	ld (bc),a
	nop
	nop
	ret po
	inc bc
	djnz l4a70h
	ld b,b
	ld b,b
	ld b,c
	nop
	nop
	nop
	jr nc,l4abeh
l4abeh:
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	xor b
	nop
	dec b
	sbc a,e
	nop
	nop
	dec bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ret nc
	nop
	dec b
	dec sp
	nop
	nop
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nc,l4b00h
	dec b
l4b00h:
	dec sp
	nop
	nop
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	ld b,b
	inc d
	cp e
	nop
	nop
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc de
	ld b,b
	inc d
	cp e
	nop
	nop
	dec c
	nop
	nop
	nop
	inc hl
	nop
	nop
	nop
	nop
	add a,b
	nop
	nop
	dec sp
	nop
	nop
	ld b,d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	djnz l4b7bh
	inc d
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec c
	ld b,b
	inc d
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	djnz l4b99h
	inc d
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	ld b,b
	inc d
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	ld b,b
	inc d
	cp e
	nop
	nop
l4b7bh:
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	add a,b
	inc d
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	add a,b
	inc d
	cp e
	nop
	nop
l4b99h:
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec c
	ld b,b
	inc d
	cp e
	nop
	nop
	ld b,c
	nop
	nop
	nop
	jr nc,l4baeh
l4baeh:
	nop
	nop
	nop
	dec b
	ld b,b
	inc d
	cp e
	nop
	nop
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
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	ld (00500h),a
	sbc a,e
	nop
	nop
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl,(00500h)
	sbc a,e
	nop
	nop
	inc c
	nop
	nop
	nop
	ld (00000h),hl
	nop
	nop
	add hl,hl
	nop
	dec b
	cp e
	nop
	nop
	ld b,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec hl
	nop
	dec b
	cp e
	nop
	nop
	ld b,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr z,l4c1ch
l4c1ch:
	inc e
	cp e
	nop
	nop
	ld b,c
	nop
	nop
l4c23h:
	nop
	jr nc,l4c26h
l4c26h:
	nop
	nop
	nop
	add hl,hl
	nop
	inc e
	cp e
	nop
	nop
	ex af,af'
	nop
	nop
	nop
	inc de
	nop
	nop
	nop
	nop
	ld (01c00h),a
	cp e
	nop
	nop
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,hl
	nop
	nop
	dec sp
	nop
	nop
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
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	inc e
	cp a
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	xor b
	nop
	inc d
	cp e
	nop
	nop
	add hl,bc
	nop
	nop
	nop
	ld h,000h
	nop
	nop
	nop
	ld c,040h
	inc d
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	jr nc,l4c8fh
l4c8fh:
	nop
	nop
	nop
	inc de
	ld b,b
	inc d
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	djnz l4c23h
	inc d
	cp e
	nop
	nop
	add a,e
	nop
	nop
	nop
	add hl,hl
	nop
	nop
	nop
	nop
	dec b
	ld b,b
	inc d
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	jr nc,l4cbch
l4cbch:
	nop
	nop
	nop
	ex af,af'
	ld b,b
	inc d
	cp e
	nop
	nop
	ld b,c
	nop
	nop
	nop
	inc hl
	nop
	nop
	nop
	nop
	dec a
	add a,b
	inc d
	cp e
	nop
	nop
	ld b,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc c
	ld b,b
	inc d
	cp e
	nop
	nop
	ld b,d
	nop
	nop
	nop
	dec h
	nop
	nop
	nop
	nop
	add hl,bc
	ld b,b
	inc d
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	jr nc,l4cf8h
l4cf8h:
	nop
	nop
	nop
	ld b,040h
	inc d
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	jr nc,l4d07h
l4d07h:
	nop
	nop
	nop
	ld b,040h
	inc d
	cp e
	nop
	nop
	ld b,d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	jr z,l4d39h
l4d39h:
	dec b
	sbc a,e
	nop
	nop
	dec c
	nop
	nop
	nop
	ld hl,00000h
	nop
	nop
	ld hl,(00500h)
	sbc a,e
	nop
	nop
l4d4ch:
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec l
	nop
	dec b
	cp e
	nop
	nop
	inc c
	nop
	nop
l4d5eh:
	nop
	jr nc,l4d61h
l4d61h:
	nop
	nop
	nop
	nop
	ld (bc),a
	dec b
	sbc a,e
	nop
	nop
	dec c
	nop
	nop
l4d6dh:
	nop
	cpl
	nop
	nop
	nop
	nop
	jr z,l4d75h
l4d75h:
	inc d
	cp e
	nop
	nop
	ld b,c
	nop
	nop
l4d7ch:
	nop
	jr nc,l4d7fh
l4d7fh:
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	ld b,b
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	and b
	nop
	dec b
	cp e
	nop
	nop
	ld c,000h
	nop
	nop
	inc h
	nop
	nop
	nop
	nop
	jr nc,l4df1h
	dec b
	cp e
	nop
	nop
	ld b,d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	add a,b
	dec b
	dec sp
	nop
	nop
	ld b,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	djnz l4e0fh
	dec b
	dec sp
	nop
	nop
	add a,d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz,l4d5eh
	dec b
	dec sp
	nop
	nop
	add a,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz,l4d6dh
	dec b
	dec sp
	nop
	nop
l4df1h:
	ld b,e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	djnz l4d7ch
	dec b
	dec sp
	nop
	nop
	add a,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	djnz l4e4bh
	dec b
	dec sp
	nop
	nop
l4e0fh:
	ld b,c
	nop
	nop
	nop
	jr nc,l4e15h
l4e15h:
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	ld d,b
	nop
	nop
	cp e
	nop
	nop
	dec c
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	ld (hl),b
	nop
	nop
	cp e
	nop
	nop
l4e4bh:
	dec bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nc,l4e56h
l4e56h:
	nop
	cp e
	nop
	nop
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	dec b
	dec sp
	nop
	nop
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec (hl)
	nop
	nop
	cp e
	nop
	nop
	ex af,af'
	nop
	nop
	nop
	ld h,b
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	dec sp
	nop
	nop
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nc,l4e92h
l4e92h:
	nop
	dec sp
	nop
	nop
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
	cp a
	nop
l4ea4h:
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	cp a
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	ret p
	nop
	dec b
	sbc a,e
	nop
	nop
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
	ld bc,01b05h
	nop
	nop
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,b
	ld bc,03b05h
	nop
	nop
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	ld b,b
	dec b
	sbc a,e
	nop
	nop
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc de
	ld b,b
	dec b
	sbc a,e
	nop
	nop
	ld c,000h
	nop
	nop
	inc h
	nop
	nop
	nop
	nop
	nop
	ld bc,03b00h
	nop
	nop
	ld b,d
	nop
	nop
	nop
	ld (00000h),hl
	nop
	nop
	djnz l4f59h
	inc d
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	jr nc,l4f23h
l4f23h:
	nop
	nop
	nop
	dec c
	ld b,b
	inc d
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	ld (00000h),hl
	nop
	nop
	ex af,af'
	ld b,b
	inc d
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	jr nc,l4f41h
l4f41h:
	nop
	nop
	nop
	inc b
	add a,b
	inc d
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	ld (00000h),hl
	nop
	nop
	dec b
	add a,b
	inc d
	cp e
	nop
	nop
l4f59h:
	ld b,b
	nop
	nop
	nop
	jr nc,l4f5fh
l4f5fh:
	nop
	nop
	nop
	dec c
	ld b,b
	inc d
	cp e
	nop
	nop
	ld b,c
	nop
	nop
	nop
	jr nc,l4f6eh
l4f6eh:
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	ld (00500h),a
	sbc a,e
	nop
	nop
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld b,b
	dec b
	sbc a,e
	nop
	nop
	dec c
	nop
	nop
	nop
	ld (00000h),hl
	nop
	nop
	inc bc
	ld b,b
	dec b
	cp e
	nop
	nop
	ld b,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld b,b
	dec b
	cp e
	nop
	nop
	ld b,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	add a,b
	inc e
	cp e
	nop
	nop
	ld b,c
	nop
	nop
	nop
	jr nc,l4fd7h
l4fd7h:
	nop
	nop
	nop
	ld bc,01c80h
	cp e
	nop
	nop
	add hl,bc
	nop
	nop
	nop
	inc d
	nop
	nop
	nop
	nop
	ld bc,01c40h
	cp e
	nop
	nop
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld b,b
	nop
	dec sp
	nop
	nop
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
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	inc e
	cp a
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	ld d,(hl)
sub_5026h:
	nop
	dec b
	cp e
	nop
	nop
	dec c
	nop
	nop
	nop
	daa
	nop
	nop
	nop
	nop
	dec bc
	ld b,b
	dec b
	cp e
	nop
	nop
	ld b,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	add a,b
	dec b
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	jr nc,l504fh
l504fh:
	nop
	nop
	nop
	ld c,(hl)
	nop
	dec b
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld c,(hl)
	nop
	dec b
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,01f40h
	cp e
	nop
	nop
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
	rra
	cp a
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	rra
	cp a
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	ld b,h
	inc b
	ld h,(hl)
	ld b,0e0h
	nop
	ld a,(de)
	sub b
	dec c
	dec c
	dec c
	nop
	nop
	nop
	ld hl,00333h
	ld b,h
	inc b
	nop
	ld (bc),a
	rra
	sub b
	ld b,b
	dec c
	ld b,b
	nop
	nop
	nop
	nop
	ld (03302h),hl
	inc bc
	ret po
	ld bc,0b01fh
	ld b,b
	inc c
	ld b,b
	nop
	nop
l50c4h:
	nop
	jr nc,l50c4h
	ld bc,00133h
	ld h,b
	ld (bc),a
	rra
	sub b
	ld b,c
	dec bc
	ld b,b
	nop
	nop
	nop
	nop
	ld (hl),c
	ld (bc),a
	nop
	nop
	ret po
	ld (bc),a
	rra
	or d
	ld b,c
	nop
	ld b,b
	nop
	nop
	nop
	nop
	dec c
	inc bc
	nop
	nop
	ld h,b
	inc bc
	rra
	sbc a,d
	add a,b
	nop
	ld b,b
	nop
	nop
	nop
	nop
	ret nc
	inc bc
	nop
	nop
	ret po
	inc bc
	rra
	sbc a,d
	add a,c
	nop
	ld b,b
	nop
	nop
	nop
	nop
	call nz,00004h
	nop
	ld h,b
	ld bc,0ba1fh
	add a,c
	dec c
	ld b,b
	nop
	nop
	nop
	inc h
	nop
	ld (bc),a
	nop
	dec b
	ret po
	nop
	rra
	sbc a,b
	ld b,d
	ld b,c
	ld b,d
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,l
	dec b
	ld h,b
	ld bc,0981fh
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
l512dh:
	nop
	nop
	nop
	inc bc
	nop
	nop
	ret po
	ld bc,09a18h
	ld b,b
	ld b,b
	add a,c
	nop
	nop
	nop
	nop
	ld (hl),b
	ld bc,00000h
	ld h,b
	ld (bc),a
	rra
	cp d
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
	nop
	nop
	sub b
	ld bc,00000h
	ret po
	ld (bc),a
	rra
	cp d
	ld b,b
	ld b,b
	ld b,c
	nop
	nop
	nop
	nop
	defb 0fdh,001h,000h ;illegal sequence
	nop
	ld h,b
	inc bc
	inc b
	cp d
	ld b,b
	ld b,c
	add a,c
	nop
	nop
	nop
	nop
	ld (hl),c
	ld (bc),a
	nop
	nop
	ret po
	inc bc
	djnz l512dh
	ld b,b
	ld b,b
	ld b,c
	nop
	nop
	nop
	jr nc,l517bh
l517bh:
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	jr nz,l51a0h
	rra
	cp e
l51a0h:
	nop
	nop
	ld c,000h
	nop
	nop
	inc h
	nop
	nop
	nop
	nop
	add a,b
	ld (bc),a
	dec b
	dec sp
	nop
	nop
	ld b,d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add a,b
	add a,b
	inc de
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	adc a,b
	ld b,b
	rla
	cp e
	nop
	nop
	add a,d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,c
	dec b
	sbc a,e
	nop
	nop
	ld b,(hl)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add a,b
	add a,c
	dec b
	cp e
	nop
	nop
	add a,d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add a,b
	ld b,b
	rlca
	cp e
	nop
	nop
	add a,d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,c
	inc b
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add a,b
	add a,c
	add hl,de
	cp e
	nop
	nop
	add a,d
	nop
	nop
	nop
	ld (de),a
	nop
	nop
	nop
	nop
	add a,b
	add a,b
	rra
	cp e
	nop
	nop
	add a,c
	nop
	nop
l522ch:
	nop
	ld de,00000h
	nop
	nop
	nop
	ld b,c
	rra
	dec sp
	nop
	nop
	ld b,c
	nop
	nop
	nop
	jr nc,l523eh
l523eh:
	nop
	nop
	nop
	nop
	inc b
	nop
	cp e
	nop
	nop
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
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	inc bc
	inc e
	cp e
	nop
	nop
	rrca
	nop
	nop
	nop
	jr z,l527ah
l527ah:
	nop
	nop
	nop
	djnz l52bfh
	inc e
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,b
	ld b,b
	nop
	dec sp
	nop
	nop
	ld b,b
	nop
	nop
l5295h:
	nop
	nop
	nop
	nop
	nop
	nop
	and b
	add a,b
	inc e
	cp e
	nop
	nop
	ld b,b
	nop
	nop
l52a4h:
	nop
	nop
	nop
	nop
	nop
	nop
	djnz l522ch
	inc e
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (hl),b
	ld b,b
	inc e
	cp e
	nop
	nop
l52bfh:
	ld b,c
	nop
	nop
	nop
	jr nc,l52c5h
l52c5h:
	nop
	nop
	nop
	nop
	add a,b
	inc e
	cp e
	nop
	nop
	ld b,b
	nop
	nop
l52d1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc e
	cp a
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	inc e
	cp a
	nop
	nop
	nop
	nop
	nop
l52efh:
	nop
	ld b,b
	nop
	nop
	nop
	nop
	djnz l52f9h
	nop
	cp e
l52f9h:
	nop
	nop
	add hl,bc
	nop
	nop
	nop
	ld h,000h
	nop
	nop
	nop
	ld d,b
	ld b,b
	dec b
	sbc a,e
	nop
	nop
	add a,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nc,l5295h
	nop
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz,l52a4h
	nop
	cp e
	nop
	nop
	ld b,b
sub_5329h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	ld b,b
	nop
	dec sp
	nop
	nop
	ld b,b
	nop
	nop
	nop
	jr nc,l533dh
l533dh:
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	cp e
	nop
	nop
	dec c
	nop
	nop
	nop
	cpl
	nop
	nop
	nop
	nop
	jr nc,l52d1h
	dec b
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	inc h
	nop
	nop
	nop
	nop
	dec de
	add a,b
	dec b
	dec sp
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nc,l52efh
	dec b
	dec sp
	nop
	nop
	ld b,b
	nop
	nop
	nop
	jr nc,l5379h
l5379h:
	nop
	nop
	nop
	ld d,b
	ld b,b
	nop
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	inc hl
	nop
	nop
	nop
	nop
	jr nz,l53cdh
	nop
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	jr nc,l5397h
l5397h:
	nop
	nop
	nop
	add a,b
	ld b,b
	nop
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(00040h)
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	jr nc,l53b5h
l53b5h:
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	rra
	cp a
	nop
	nop
l53cdh:
	nop
	nop
	nop
	nop
	ld b,b
	sbc a,c
	add hl,bc
	ld h,(hl)
	ld b,066h
	ld b,005h
	adc a,b
	rrca
	rrca
	dec c
	nop
	nop
	nop
	nop
	ld b,b
	ld (bc),a
	jr nz,l53e6h
	nop
l53e6h:
	ld bc,00805h
	dec bc
	ld a,(bc)
	ld c,000h
	nop
	nop
	inc hl
	nop
	add a,c
	nop
	add a,c
	nop
	add a,c
	dec b
	xor b
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
	nop
	dec l
	sub e
	nop
	nop
	ld (bc),a
	nop
	ld (bc),a
	ld b,028h
	ld b,b
	ld b,e
	ld b,d
	nop
	nop
	nop
	nop
	add a,b
	add a,b
	add a,h
	add a,b
	adc a,b
	add a,b
	inc de
	xor b
	ld b,c
	add a,e
	ld b,b
	nop
	nop
	nop
	nop
	adc a,b
	ld b,b
	adc a,b
	ld b,b
	adc a,b
	ld b,b
	rla
	xor b
	ld b,c
	ld b,b
	add a,d
	nop
	nop
	nop
	nop
	nop
	ld b,c
	nop
	ld b,c
	nop
	ld b,c
	dec e
	xor b
	add a,c
	ld b,c
	ld b,b
	nop
	nop
	nop
	nop
	add a,b
	add a,c
	add a,b
	add a,c
	add a,b
	add a,c
	dec e
	xor b
	ld b,b
	ld b,c
	ld b,d
	nop
	nop
	nop
	nop
	add a,b
	ld b,b
	add a,b
	ld b,b
	add a,b
	ld b,b
	rlca
	xor b
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
	nop
	nop
	nop
	ld b,c
	nop
	ld b,c
	nop
	ld b,c
	inc b
	xor b
	add a,c
	ld b,b
	ld b,b
	nop
	nop
	nop
	nop
	add a,b
	add a,c
	add a,b
	add a,c
	add a,b
	add a,c
	ld e,0a8h
	ld b,d
	add a,c
	add a,d
	nop
	nop
	nop
	nop
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	rra
	xor b
	add a,d
	add a,c
	ld b,b
	nop
	nop
	nop
	jr nc,l5487h
l5487h:
	ld b,c
	nop
	ld b,c
	nop
	ld b,c
	rra
	jr z,l54cfh
	ld b,b
	ld b,c
	nop
	nop
	nop
	jr nc,l5496h
l5496h:
	nop
	nop
	nop
	nop
	nop
	nop
	cp a
	nop
	ld b,b
	ld b,b
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
l54b1h:
	nop
	ld b,b
	nop
	nop
	nop
	nop
	add a,b
	nop
	dec b
	sbc a,e
	nop
	nop
	rrca
	nop
	nop
	nop
	cpl
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	rra
	nop
	nop
	ld b,c
	nop
	nop
l54cfh:
	nop
	inc hl
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	sbc a,a
	nop
	nop
	ld b,b
	nop
	nop
	nop
	jr nc,l54e1h
l54e1h:
	nop
	nop
	nop
	nop
	nop
	dec b
	rra
	nop
	nop
	ld b,b
	nop
	nop
	nop
	jr nc,l54f0h
l54f0h:
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	ld b,b
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
l5501h:
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	ld bc,0bb14h
	nop
	nop
	inc c
	nop
	nop
	nop
	jr z,l551dh
l551dh:
	nop
	nop
	nop
	ld a,(de)
	ld b,b
	inc d
	cp e
	nop
	nop
	dec c
	nop
	nop
	nop
	jr nc,l552ch
l552ch:
	nop
	nop
	nop
	djnz l54b1h
	inc d
	cp e
	nop
	nop
	rrca
	nop
	nop
	nop
	add hl,hl
	nop
	nop
	nop
	nop
	rlca
	ld b,b
	inc d
	cp e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	add a,b
	nop
	dec sp
	nop
	nop
	ld b,c
	nop
	nop
	nop
	jr nc,l5559h
l5559h:
	nop
	nop
	nop
	nop
	add a,b
	inc d
	cp e
	nop
	nop
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
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	sbc a,a
	nop
	nop
	add hl,bc
	nop
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
	sbc a,a
	nop
	nop
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
	dec b
	sbc a,a
	nop
	nop
	dec c
	nop
	nop
	nop
	ld h,000h
	nop
	nop
	nop
	nop
	nop
	dec b
	sbc a,a
	nop
	nop
	ld b,b
	nop
	nop
	nop
	ld de,00000h
	nop
	nop
	nop
	nop
	dec b
	sbc a,a
	nop
	nop
	ld b,c
	nop
	nop
	nop
	jr nc,l55d1h
l55d1h:
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	cp a
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	cp a
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	cp a
	nop
	nop
	rrca
	ld hl,00800h
	ld h,000h
	nop
	nop
l5600h:
	nop
	jr nc,l5603h
l5603h:
	nop
	dec sp
	nop
	nop
	ld b,b
	nop
	nop
	nop
	inc h
	ld l,h
	nop
	ld l,e
	nop
	jr nc,l5612h
l5612h:
	nop
	cp e
	nop
	nop
	ld b,b
	ld hl,00800h
	jr nc,l561ch
l561ch:
	nop
	nop
	nop
	ld b,b
	nop
	nop
	dec sp
	nop
	nop
	ld b,c
	nop
	nop
	nop
	ld h,000h
	nop
	nop
	nop
	ld b,b
	nop
	nop
	dec sp
	nop
	nop
	ld b,b
	nop
	nop
	nop
	jr nc,l563ah
l563ah:
	nop
	nop
	nop
	nop
	nop
	nop
	dec sp
	nop
	nop
	ld b,b
	nop
	nop
	nop
	jr nc,l5649h
l5649h:
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	cp a
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	cp a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	cp a
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	cp a
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	ld b,b
	nop
	nop
	inc bc
	jr nz,l569ah
	dec b
l569ah:
	sbc a,b
	inc b
l569ch:
	rlca
	inc c
l569eh:
	nop
	nop
l56a0h:
	nop
	nop
	ld d,b
	nop
	nop
	inc b
	ret nc
	nop
	dec b
	sbc a,b
	inc b
	rlca
	inc c
	nop
	nop
	nop
	ld (00030h),hl
	nop
	ld (bc),a
	ret nz
	nop
	dec b
	cp b
	ld (bc),a
	ld b,b
	ld b,b
	nop
	nop
	nop
	jr nc,l56f1h
	nop
	nop
	inc bc
	ld h,b
	nop
	dec b
	cp b
	ld (bc),a
	inc b
	ld b,000h
	nop
	nop
	inc d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	inc e
	cp a
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	or b
	nop
	ret p
	nop
l56f1h:
	xor b
	nop
	inc d
	cp b
	rlca
	inc b
	add hl,bc
	nop
	nop
	nop
	inc hl
	djnz l573eh
	ld c,040h
	ld c,040h
	inc d
	cp b
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
	nop
	jr nc,$+21
	ld b,b
	inc de
	ld b,b
	inc de
	ld b,b
	inc d
	cp b
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
	nop
	nop
	djnz l569ch
	djnz l569eh
	djnz l56a0h
	inc d
	cp b
	add a,e
	add a,e
	add a,e
	nop
	nop
	nop
	cpl
	dec b
	ld b,b
	dec b
	ld b,b
	dec b
	ld b,b
	inc d
	cp b
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
	nop
	jr nc,l5769h
	add a,b
	ex af,af'
	ld b,b
	ex af,af'
	ld b,b
l573eh:
	inc d
	cp b
	ld b,c
	ld b,c
	ld b,c
	nop
	nop
	nop
	inc hl
	dec a
	add a,b
	dec a
	add a,b
	dec a
	add a,b
	inc d
	cp b
	ld b,c
	ld b,c
	ld b,c
	nop
	nop
l5754h:
	nop
	nop
	inc c
	ld b,b
	inc c
	ld b,b
	inc c
	ld b,b
	inc d
	cp b
	ld b,d
	ld b,d
	ld b,d
	nop
	nop
	nop
	dec h
	add hl,bc
	ld b,b
	add hl,bc
	ld b,b
l5769h:
	add hl,bc
	ld b,b
	inc d
	cp b
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
l5772h:
	nop
	jr nc,l577bh
	ld b,b
	ld b,040h
	ld b,040h
	inc d
l577bh:
	cp b
	ld b,b
	ld b,b
	ld b,b
	nop
	nop
l5781h:
	nop
	jr nc,l578ah
	ld b,b
	ld b,040h
	ld b,040h
	inc d
l578ah:
	cp b
	ld b,d
	ld b,d
	ld b,d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	ld b,b
	nop
	dec b
	sbc a,e
	nop
	nop
	dec c
	nop
	nop
	nop
	dec h
	nop
	nop
	nop
	nop
	jr nz,l57c5h
l57c5h:
	dec b
	sbc a,e
	nop
	nop
	ld b,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz,l5754h
	dec b
	sbc a,e
	nop
	nop
	ld b,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	ld b,b
	dec b
	sbc a,e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz,l5772h
	dec b
	sbc a,e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	djnz l5781h
	dec b
	sbc a,e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz,l5850h
	dec b
	sbc a,e
	nop
	nop
	ld b,b
	nop
	nop
	nop
	jr nc,l581ah
l581ah:
	nop
	nop
	nop
	nop
	nop
	ld de,000bfh
	nop
	nop
	nop
	nop
	nop
	ret p
	nop
	nop
	nop
	nop
	nop
	nop
	ld de,000bfh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
l5850h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5900h:
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
l5c12h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	nop
	nop
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
l5d06h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l6000h:
	ld c,l
	ld h,c
	ld l,(hl)
	ld h,d
	ld l,a
	ld (hl),a
	jr nz,l603ah
	jr nz,$+47
	jr nz,l6055h
	ld l,(hl)
	ld (hl),e
	ld l,c
	ld h,h
	ld h,l
	jr nz,l6060h
	ld h,c
	ld l,(hl)
	ld h,d
	ld l,a
	ld (hl),a
	jr nz,l6047h
	jr nz,l6064h
	ld h,l
	ld h,c
	ld (hl),d
	ld (hl),h
	ld h,d
	ld h,l
	ld h,c
	ld (hl),h
	jr nz,l6046h
	jr nz,l6048h
	jr nz,l604ah
	jr nz,l604ch
	jr nz,l604eh
	jr nz,l6050h
	jr nz,l6052h
	jr nz,l6054h
	jr nz,l6056h
	jr nz,l6058h
	jr nz,l605ah
l603ah:
	jr nz,l605ch
	jr nz,l605eh
	jr nz,l6060h
	jr nz,l6062h
	jr nz,l6091h
	ld d,l
	ld d,e
l6046h:
	ld c,c
l6047h:
	ld c,(hl)
l6048h:
	ld d,e
	ld d,h
l604ah:
	ld d,d
	ld d,e
l604ch:
	ld b,d
	ld c,e
l604eh:
	nop
	nop
l6050h:
	inc bc
	nop
l6052h:
	nop
	nop
l6054h:
	nop
l6055h:
	nop
l6056h:
	nop
	nop
l6058h:
	nop
	nop
l605ah:
	nop
	nop
l605ch:
	nop
	nop
l605eh:
	nop
	nop
l6060h:
	nop
	nop
l6062h:
	nop
	nop
l6064h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l60dch:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_6148h:
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
	rla
	jr nc,l618bh
	jr nc,l60dch
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
l618bh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,c
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l61ceh
	dec b
l61ceh:
	ld bc,00005h
	nop
	ld bc,00105h
	dec b
	nop
	nop
	ld bc,0010fh
	rrca
	ld bc,00106h
	rrca
	ld (bc),a
	rrca
	dec bc
	nop
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	nop
	nop
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	nop
	nop
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	nop
	nop
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	nop
	nop
	ld bc,l6b05h
	ld a,(bc)
	nop
	nop
	ld l,e
	ld a,(bc)
	ld l,e
	ld a,(bc)
	nop
	nop
	ld bc,l6b0fh
	dec b
	ld bc,l6b06h
	dec b
	ld l,e
	dec b
	dec bc
	nop
	ld l,h
	ld (bc),a
	ld l,h
	ld bc,0026ch
	ld l,h
	ld bc,0016ch
	nop
	nop
	ld l,h
	ld (bc),a
	ld l,h
	ld bc,0026ch
	ld l,h
	ld bc,0016ch
	nop
	nop
	ld l,h
	ld (bc),a
	ld l,h
	ld bc,0026ch
	ld l,h
	ld bc,0016ch
	nop
	nop
	ld l,h
	ld (bc),a
	ld l,h
	ld bc,0026ch
	ld l,h
	ld bc,0016ch
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00000h
	ld l,h
	ld bc,0016ch
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00000h
	ld l,h
	ld bc,0016ch
	nop
	rrca
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	ld bc,023ffh
	add hl,bc
	nop
	nop
	nop
	call 004efh
	call 005cfh
	xor a
	di
	inc b
	out (099h),a
	ld a,092h
	ei
	inc b
	xor a
	nop
	ld (044c8h),a
	ld a,(0f3e0h)
	and 0bfh
	dec (hl)
	ld (012e0h),a
	add a,c
	inc bc
	nop
	ld hl,l47c1h
	call 002e9h
	call sub_5900h
	ld b,l
	ld a,057h
	ld (l4692h),a
	ld (09602h),a
	ld b,(hl)
	ld a,035h
	ld (00793h),a
	nop
	sub a
	ld b,(hl)
	ld a,(0c1b5h)
	ld c,a
	ld a,(020b6h)
	pop bc
	add a,c
	inc b
	sbc a,e
	jp 001feh
	nop
	ld b,002h
	jp z,l4066h
	cp 003h
	ld b,068h
	inc bc
	ld b,005h
	ld b,004h
	pop de
	ld b,007h
	ld b,005h
	ld b,080h
	xor a
	jp l406eh
	ld a,c
	ld a,(bc)
	cp b
	ld a,001h
	jp z,l5d06h
	nop
	sbc a,c
	jp l6f32h
	ld b,c
	call sub_4872h
	ld b,e
	ld a,c
	inc e
	jp z,l40b4h
	add hl,sp
	nop
	ld b,001h
	cp b
	jp z,l40adh
	cp b
	dec a
	dec b
	ld (hl),b
	inc bc
	dec b
	inc b
	pop hl
	dec b
	dec b
	dec b
	jp 00506h
	add a,(hl)
	rlca
	dec b
	xor l
	jp l462fh
	jr nc,$-36
	or l
	ld b,(hl)
	ld (hl),b
	ld b,c
	jp nz,03c3ah
	ld (l4203h),a
	ld a,(0b750h)
	call nz,00d35h
	and h
	djnz $+8
	ret nc
	ld (00011h),hl
	ld c,b
	ld hl,l4623h
	call 00103h
	call 0f100h
	ld b,d
	ld a,044h
	ld hl,l43efh
	call 03008h
	call nz,0e611h
	ld a,(bc)
	ld c,a
	ld (l6000h),a
	ld b,h
	ld a,05eh
	ld (0445fh),a
	call sub_6148h
	rlca
	ld c,(hl)
	add a,0e9h
	ld c,(hl)
	add a,01ch
	ret c
	ld d,c
	ld c,l
	ld (024a8h),a
	ld d,h
	sbc a,b
	and e
	defb 0fdh,040h,032h ;illegal sequence
	ld b,l
	pop bc
	call sub_48c9h
	inc h
	call sub_5329h
	ld h,d
	ld d,e
	jp z,01744h
	xor h
	ld c,e
	ld d,b
	ld b,l
	ld d,00ah
	ret
	xor a
	ld hl,l5600h
	pop bc
	cp (hl)
	jp z,l412dh
	ld (hl),a
	jp l7131h
	ld b,c
	ld e,e
	call nz,0a15bh
	ld a,058h
	ld hl,007cbh
	ret nz
	ld h,b
	ld hl,0dddeh
	rlca
	jr c,l6413h
	ld h,e
	jr c,l63f4h
	ret p
	jr c,l6419h
	nop
	add hl,sp
	ld h,a
	ret nz
	add hl,sp
	ld (hl),l
	ld b,d
	nop
	nop
	nop
	call sub_48feh
	ld a,(0c39ah)
	bit 1,a
	jr nz,$-52
	and c
	jr z,$+116
	ld b,d
	or a
	ret nz
	ret z
	ld a,a
	ld b,03ah
	push hl
	ld de,l4742h
	ld a,(01183h)
	cp b
	ret z
	out (028h),a
	and 00ch
	sbc a,a
	adc a,b
	add a,006h
	and h
	call po,00ec3h
	scf
	ld c,c
	xor a
	ld e,030h
	inc b
	ld b,a
	jp z,030cdh
	ld (hl),e
	and 030h
	ld b,0c3h
	inc l
	dec a
	ret z
	dec hl
	sub a
	sub 02bh
	sbc a,e
	ld (hl),e
	dec hl
	add a,c
l63f4h:
	ld h,a
	jp nz,0cbdeh
	jr l646eh
	ld c,042h
	ret
	ld a,(03074h)
	ld h,c
	ld b,0cdh
	inc de
	ld c,c
	rlca
	sub c
	sbc a,003h
	ld b,031h
	call sub_44bch
	add hl,bc
	ld (0d098h),hl
	ld b,d
l6413h:
	ld d,000h
	ld e,a
	ld hl,0e700h
l6419h:
	ld b,d
	add hl,de
	ld a,(hl)
	dec a
	jp nz,l4210h
	pop bc
	inc d
	ld e,d
	pop bc
	ret
	add hl,bc
	inc (hl)
	add hl,hl
	add hl,bc
	ld e,b
	pop bc
	nop
	ld a,(0c13eh)
	add a,00fh
	cp 049h
	jp c,02545h
	ld c,049h
	ld (0180bh),a
	adc a,b
	dec (hl)
	ld e,e
	ld e,c
	pop bc
	adc a,c
	and b
	ld e,c
	dec bc
	xor l
	ccf
	inc h
	ld l,e
	ld e,h
	add hl,bc
	ld c,c
	add hl,bc
	ld e,d
	ld c,l
	add hl,bc
	ld d,e
	sbc a,h
	add hl,bc
	ld (bc),a
	ld b,d
	or l
	ld e,l
	inc de
	ld b,(hl)
	add hl,bc
	xor l
	ld h,a
	add hl,bc
	ld l,e
	ld c,(hl)
	add hl,bc
	ld (hl),c
	add hl,bc
	ld d,d
	ld d,b
	add hl,bc
	ret
	add a,d
	ld b,h
	ld bc,0b883h
	inc hl
	sub c
	ret nz
	ld b,c
l646eh:
	cp 05fh
	ret z
	ld a,05fh
	jp 0111eh
	ret pe
	adc a,(hl)
	and a
	dec d
	inc de
	ld d,a
	dec d
	ld d,a
	dec d
	add a,0d2h
	ld (l42b1h),hl
	jp nc,0b83dh
	inc h
	ld d,h
	ld hl,01181h
	ld bc,0c1b2h
	jp z,l42cfh
	ld hl,008b5h
	ld (bc),a
	inc de
	pop bc
	inc (hl)
	ex de,hl
	inc (hl)
	jp (hl)
	ld a,01dh
	ld (hl),d
	ld a,(bc)
	ld (bc),a
	inc bc
	inc b
	dec b
	rst 0
	ld bc,00908h
	nop
	ld b,000h
	pop af
	jr $+60
	nop
	ld d,l
	pop bc
	cp 00bh
	jp c,l43b1h
	ld a,(0ae88h)
	or a
	jp nz,00900h
	ld b,e
	ld (hl),001h
	inc b
	inc hl
	ld a,(0c458h)
	ld a,(bc)
	inc d
	ld a,(bc)
	ld (bc),a
	call z,01d0ah
	ld l,e
	rrca
	dec e
	ld e,c
	ld (de),a
	dec d
	daa
	ld (de),a
	ld a,(l4512h)
	ex de,hl
	ld a,(bc)
	ld h,032h
	ld a,(bc)
	inc b
	ld a,(bc)
	ld sp,00a4dh
	ld b,h
	ld a,(0cac1h)
	ld b,h
	ld de,00539h
	cpl
	ld (hl),e
	inc d
	ld c,l
	rst 20h
	ld (de),a
	ld d,a
	ld (de),a
	ld (hl),d
	ld b,012h
	add hl,de
	exx
	ld (de),a
	add a,l
	inc h
	inc l
	ld l,d
	ld (de),a
	rlca
	push hl
	ld (de),a
	ld e,055h
	call z,sub_7d25h
	rst 20h
	ld d,l
	ld (de),a
	ld a,(de)
	ld (l5c12h),a
	call nz,0974bh
	ld b,04eh
	call nz,0972ch
	add hl,de
	ex af,af'
	push hl
	add hl,de
	add hl,sp
	add hl,de
	sbc a,006h
	ld sp,01950h
	or c
	add hl,de
	jr nz,l652bh
	add hl,de
	ld (hl),000h
	ld a,b
	ld (0e544h),a
	ret nz
	rst 20h
l652bh:
	sub (hl)
	add a,l
	ld h,d
	call c,00600h
	ld e,0c9h
	ld d,e
	ld b,l
	ld c,h
	ld b,l
	ld b,e
	nop
	ld d,h
	nop
	ld c,l
	ld b,c
	ld e,b
	ld c,c
	ld c,l
	ld d,l
	nop
	ld c,l
	ld e,e
	ld b,e
	ld d,d
	ld b,l
	ld b,h
	ld c,c
	ld d,h
	rrca
	ld d,e
	ld e,e
l654dh:
	ld d,l
	ld d,b
	ld (de),a
	nop
	ld c,h
	ld c,c
	ld d,(hl)
	ld b,l
	ex (sp),hl
	djnz $+44
	sub b
	ld e,e
	ld d,a
	ld b,l
	ld b,c
	ld (bc),a
	ld d,b
	ld c,a
	ld c,(hl)
	nop
	ld c,c
	ld c,(hl)
	rrca
	ld d,b
	ld d,d
	dec c
	dec l
	ld d,e
	ld c,e
	nop
	jr nz,l65c5h
	ld d,d
	inc sp
	ld b,l
	ld e,e
	ld b,l
	ld c,(hl)
	djnz l65b7h
	ld b,d
	ld c,h
	ld a,000h
	ld c,a
	ld d,b
	ld sp,l4954h
	jr nz,l65d3h
	ld h,002h
	ld c,c
	ld b,h
	ld e,e
	ld b,(hl)
	ld c,c
	ld d,c
	xor c
	ld a,(bc)
	dec d
	ld (02e57h),a
	ld d,d
	jr z,l65a3h
	ld b,l
	ld e,b
	add a,h
	ld (l4953h),a
	ld c,h
	rlca
	ld c,b
	ld a,(bc)
	ld b,c
	ld d,a
	ld c,e
	ld d,a
	ld b,(hl)
	jr nc,l654dh
l65a3h:
	scf
	pop af
	ld bc,l4d4ch
	nop
	ld b,c
	ld d,l
	ld d,h
	ld c,a
	ld (hl),h
	ld b,b
	dec sp
	ld b,e
	nop
	ld c,h
	ld b,c
	ld d,e
	ret z
	inc l
l65b7h:
	nop
	inc de
	ld a,(de)
	nop
	or a
	ret z
	dec a
	ld hl,l4437h
	jp z,l4ea4h
	ld b,h
l65c5h:
	ld b,029h
	ld b,05ch
	rla
	ld b,0b9h
	ld (l7206h),a
	ccf
	ld b,048h
	push hl
l65d3h:
	ld b,01eh
	ld b,0cbh
	ld c,a
	ld b,096h
	ld e,c
	ld b,0aeh
	ld a,(0b2b8h)
	sbc a,l
	pop bc
	push hl
	push de
	pop hl
	and e
	pop de
	rlca
	dec l
	sbc a,h
	dec h
	inc b
	jp 0d7c9h
	sub d
	ret nc
	ret nz
	ld b,h
	ld (hl),a
	ld h,010h
	push af
	jp po,03a4dh
	pop af
	ld l,b
	ld (bc),a
	ld b,030h
	call sub_4778h
	xor 070h
	ld d,l
	inc b
	nop
	ld b,h
	inc bc
	ld (05701h),hl
	ld b,035h
	inc bc
	adc a,h
	add a,c
	ret pe
	nop
	ld (hl),a
	rlca
	call pe,0c509h
	push de
	inc c
	push hl
	exx
	ex af,af'
	push af
	dec b
	inc c
	push iy
	push ix
	xor l
	inc c
	dec b
	call 028ech
	or h
	add hl,de
	inc bc
	call 0e812h
	add hl,hl
	ret
	or b
l6633h:
	ld h,b
	ld d,h
	pop ix
	pop iy
	inc bc
	pop hl
	pop de
	pop bc
	pop af
	ex af,af'
	exx
	dec b
	ld b,b
	ei
	ret
	push af
	in a,(099h)
	rlca
	add hl,de
	jp c,l44f4h
	add hl,bc
	dec a
	add a,b
	di
	ld hl,00038h
	ld de,02f10h
	ld b,l
	ld bc,0ed5ah
	or b
	ld hl,02503h
	ld b,l
	ld (00039h),hl
	ld a,0d4h
	ld hl,(01b12h)
	ld b,l
	ld hl,01114h
	jr c,$+32
	jr l6633h
	dec c
	ld a,018h
	ld (01832h),a
	call c,0ae58h
	ld a,(de)
	add a,h
	inc b
	sbc a,b
	ld (0041ch),a
	ld c,b
	jr nz,l66b4h
	ld e,004h
	ld de,02032h
	ld b,(hl)
	inc sp
	ld hl,0a114h
	ld c,l
	ld a,033h
	ld e,06bh
	dec a
	ld e,097h
	ld e,05ah
	ld b,a
	ld e,022h
l6699h:
	pop af
	ld e,06bh
	inc (hl)
	ld e,03eh
	ld e,05ah
	sub e
	ld e,043h
	rst 10h
	ld e,000h
	ld e,08bh
	dec (hl)
	ld e,05ah
	ccf
	ld e,092h
	rst 10h
	ld e,042h
	ld e,h
	or a
l66b4h:
	ld e,08bh
	sub c
	ld e,05eh
	ld b,c
	ld e,h
	rst 8
	ld (hl),01eh
	rlca
	adc a,a
	ld e,083h
	inc sp
	ld e,0c1h
	ret
	and e
	ld hl,(0e8ffh)
	ld bc,0014bh
	ld l,l
	add a,b
	ld c,0f5h
	inc bc
	ld b,b
	nop
	sub b
	inc bc
	nop
	inc sp
	ld bc,00ec0h
	rra
	dec e
	rra
	add hl,de
	ld c,000h
	nop
	ld e,c
	ld (bc),a
	ld b,01dh
	push af
	or a
	inc b
	nop
	rrca
	ret
	dec b
	nop
	cp (hl)
	rrca
	ld b,(hl)
	ld d,a
	dec (hl)
	inc bc
	call z,0ec21h
	dec bc
	cp 003h
	call 0803ah
	push bc
	jp c,03a82h
	adc a,a
	ld b,a
	sbc a,e
	ld l,d
	inc bc
	rlca
	jr nc,l6699h
	ld b,a
	ld b,021h
	sub c
	inc a
	ld b,a
	ld de,0a486h
	call c,sub_7203h
	ld b,a
	inc hl
	inc de
	djnz $-5
	sub d
	ret nc
	ld de,086f1h
	ld c,010h
	ld a,(hl)
	add a,a
	nop
	ld bc,02323h
	ld c,(hl)
	add a,c
	dec hl
	ld c,(hl)
	dec b
	inc b
	ld (de),a
	inc de
	ld a,c
	ld (de),a
	dec de
	call pe,0213dh
	pop af
	xor (hl)
	ld b,l
	ld a,(0c398h)
	ld a,003h
	ld e,h
	and c
	ld a,(bc)
	jp z,0d205h
	ld c,b
	ld d,d
	ld b,050h
	ret nz
	dec (hl)
	xor a
l674ah:
	inc hl
	djnz l674ah
	dec de
	ret
	ld a,(de)
	cp (hl)
	push hl
	add hl,de
	ld (de),a
	ret
	dec c
	push af
	and b
	cp 0ffh
	jr nz,l676ch
	ld bc,l77afh
	inc d
	push af
	call sub_7034h
	ld b,a
	ld hl,(025c9h)
	ld (bc),a
	ld (bc),a
	sub c
	ld d,(hl)
l676ch:
	inc b
	ld bc,00c9dh
	ld (bc),a
	or e
	or e
	or c
	dec d
	inc bc
	sbc a,(hl)
	ld c,e
	cp a
	or d
	rlca
	nop
	sub a
	defb 0fdh,0b3h,000h ;illegal sequence
	rst 30h
	add a,l
	ld a,(0c1b7h)
	or 08dh
	cp b
	pop de
	add hl,bc
	dec h
	ld c,b
	ld b,0c3h
	ld b,0a3h
	ld hl,0c1ceh
	and 0f2h
	and l
	cpl
	rst 28h
	call z,sub_6b04h
	ld e,c
	inc b
	ld b,(hl)
	inc b
	ld (hl),h
	xor a
	add a,004h
	ld e,h
	inc b
	jp pe,09a89h
	ld d,l
	ld c,b
	sub a
	cp a
	push hl
	sub a
	ex af,af'
	add a,l
	inc e
	inc de
l67b2h:
	jr l67b2h
	ld (bc),a
	dec c
	ld h,e
	sbc a,b
	dec c
	nop
	dec c
	ld c,(hl)
	call nc,sub_5026h
	inc b
	call 02e14h
	add a,0c9h
	cp e
	ld h,b
	ld b,h
	cp 001h
	call z,0c735h
	ld c,b
	rlca
	ld (bc),a
	rlca
	rst 20h
	xor h
	xor b
	call nz,006cdh
	adc a,c
	call l7206h
	ld e,h
	ld b,05ah
	jp (hl)
	inc l
	ld e,d
	inc h
	sub 066h
	ld l,e
	ld d,04eh
	ld b,097h
	ld d,b
	ld b,007h
	ret
	inc c
	sub a
l67efh:
	ld (bc),a
	ret po
	di
	or 086h
	ret z
	inc b
	out (099h),a
	ld (0813eh),hl
	inc bc
	call 0d2a5h
	jp (hl)
	push af
	nop
	call 005aeh
	ld hl,l7400h
	ld e,h
	call 021abh
	ld bc,l4672h
	ld bc,02098h
	otir
	dec c
	dec (hl)
	ld a,b
	dec c
	ld (08a0dh),a
	ld b,b
	dec c
	or d
	ret p
	nop
	halt
	sub 00fh
	sub d
	rrca
	inc (hl)
	add a,b
	rrca
	ld a,00bh
	jr c,l67efh
	dec d
	cp l
	ld b,00ch
	ld (0c107h),a
	ld a,098h
	jp z,00408h
	cp c
	ld h,a
	ld b,0b1h
	ld e,a
	nop
	rst 38h
	ret p
	call 00512h
	call 00509h
	ld a,005h
	call 0050fh
	ld a,004h
	call 0050fh
	call 005a5h
	ld hl,l40f5h
	call 002e9h
	call 0050ch
	call 00313h
	call 005cch
	ld a,(l403fh+2)
	or a
	call nz,sub_4116h
	ld a,(l403fh+2)
	or a
	call z,sub_4129h
	ld a,(l4115h)
	dec a
	and 00fh
	ld (l4115h),a
	call sub_4042h
	ei
	halt
	jp 04019h
	ld bc,09f3ah
	jp l47cbh
	jp nz,l405fh
	bit 1,a
	jp nz,l4065h
	bit 2,a
	jp nz,l406ah
	bit 3,a
	jp nz,l407ch
	bit 4,a
	jp nz,l4090h
	ret
	ld a,001h
	ld (l403fh+2),a
	ret
	xor a
	ld (l403fh+2),a
	ret
	ld a,(l403fh+2)
	or a
	ld hl,0c1dah
	jp z,l4077h
	ld hl,0c1d9h
	ld a,(hl)
	dec a
	ret z
	ld (hl),a
	ret
	ld a,(l403fh+2)
	or a
	ld hl,0c1dah
	jp z,l4089h
	ld hl,0c1d9h
	ld a,(hl)
	inc a
	cp 011h
	ret z
	ld (hl),a
	ret
	ld hl,l40a5h
	call 002e9h
	ld a,005h
	call 0050fh
	call 0050ch
	call 0c62eh
	pop af
	jp 0c400h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,e
	ld h,l
	ld (hl),h
	ld (hl),h
	ld l,c
	ld l,(hl)
	ld h,a
	ld (hl),e
	ld b,h
	ld b,c
	ld d,h
	ld b,l
	ld c,(hl)
	ld b,a
	ld c,c
	ld c,(hl)
	ld b,l
	jr nz,l6938h
	ld b,e
	ld c,a
	ld c,l
	ld d,e
	ld h,c
	halt
	ld h,l
	ld b,h
	ld h,c
	ld (hl),h
	ld h,c
	ld h,h
	ld h,c
	ld (hl),h
	nop
	nop
	nop
	nop
	ld d,b
	nop
	ld (hl),d
	nop
	inc b
	nop
	ex af,af'
	nop
	ld de,0c001h
	nop
	nop
	inc sp
l6938h:
	inc bc
	ld h,l
	ld b,000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (hl),a
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
	ld a,(l4115h)
	push af
	ld a,001h
	ld (l4115h),a
	call sub_413ch
	pop af
	ld (l4115h),a
	jp l414dh
	ld a,(l4115h)
	push af
	ld a,001h
	ld (l4115h),a
	call l414dh
	pop af
	ld (l4115h),a
	jp sub_413ch
	ld a,(0c1dah)
	ld b,a
	ld a,086h
	ld (l40ech),a
	ld a,050h
	ld (l40eah),a
	jp l415bh
	ld a,(0c1d9h)
	ld b,a
	ld a,05eh
	ld (l40ech),a
	ld a,050h
	ld (l40eah),a
	ld a,(l4115h)
	or a
	jp z,l4164h
	ld a,022h
	ld (l40f2h),a
	ld a,010h
	sub b
	ld c,a
l69abh:
	push bc
	ld hl,l40e6h
	call 00103h
	ld a,(l40eah)
	add a,006h
	ld (l40eah),a
	pop bc
	djnz l69abh
	ld a,(l4115h)
	or a
	jp z,l4186h
	ld a,011h
	ld (l40f2h),a
	ld b,c
	ld a,c
	or a
	ret z
l69cdh:
	push bc
	ld hl,l40e6h
	call 00103h
	ld a,(l40eah)
	add a,006h
	ld (l40eah),a
	pop bc
	djnz l69cdh
	ret
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_6b04h:
	rst 38h
l6b05h:
	rst 38h
l6b06h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l6b0fh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l6f32h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_7034h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7131h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_7203h:
	rst 38h
	rst 38h
	rst 38h
l7206h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7400h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l77afh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_7d25h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
