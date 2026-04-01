; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank09.asm /tmp/smanbow2_bank.bin

	org 04000h

	sbc a,c
	nop
	ld (hl),b
	add a,b
	daa
	ret p
	adc a,d
	add a,a
	ld (hl),a
	add a,c
	ld c,e
	ld a,(hl)
	jp m,0eb7dh
	call m,0fd99h
	ld b,(hl)
	jr nz,$-63
	push af
	ld a,a
	pop af
	and e
	dec bc
	rst 38h
	call po,00155h
	rst 28h
	nop
	ld a,000h
	ld a,a
	ld c,e
	rst 38h
	ld (hl),d
	sub (hl)
	add a,c
	ld d,h
	cp b
	push af
	cp h
	adc a,h
	sbc a,b
	ld a,a
	ld (hl),a
	rst 8
	jp m,l4457h
	ld a,(hl)
	rra
	ld a,a
	ld l,l
	rst 38h
	defb 0fdh,05fh,000h ;illegal sequence
	ld b,a
	ld a,a
	sbc a,h
	add a,b
	ld b,b
	ld l,b
	adc a,e
	add a,(hl)
	ld d,e
	adc a,b
	sub e
	add a,d
	ld sp,hl
	rst 10h
	ld sp,hl
	ld a,l
	cp a
	ld a,a
	ld e,c
	sbc a,c
	nop
	ret m
	ld a,02eh
	ld h,d
	ld b,066h
	ld e,a
	add a,d
	adc a,e
	jp m,0f863h
	cp (hl)
	ld a,(de)
	call m,08de2h
	sbc a,e
	call m,sub_777fh
	cp e
	nop
	ret po
	jp m,09530h
	dec b
l406dh:
	push af
	ld a,a
	add a,(hl)
	ld (de),a
	nop
	nop
l4073h:
	call m,sub_4abeh
	cp d
	jp pe,033ffh
	rst 38h
	ccf
	rra
	nop
	ret p
	ld a,l
	ld sp,00689h
	ld l,b
	call m,07043h
	nop
	ld a,a
	jp p,000ffh
l408ch:
	rst 38h
	ret po
	nop
	dec de
	nop
	nop
	ld a,(hl)
	sbc a,c
	nop
	sbc a,c
	sbc a,h
	call pe,08704h
	call z,030c9h
	call po,0ccb5h
	inc (hl)
	call z,0f31dh
	cp a
	call pe,0357dh
	jp (hl)
	ld c,d
	ld de,0beebh
	ld b,0ceh
	cp (hl)
	add a,b
	jr l408ch
	adc a,a
	and e
	and l
	ret
	inc bc
	adc a,b
	exx
	and (hl)
	call po,0dccdh
	jp 0cb10h
	cp h
	ld hl,(0e0e7h)
	jr $-96
	xor 099h
	ld d,a
	xor 005h
	inc b
	ld h,b
	ld (bc),a
	sbc a,(hl)
	jp (hl)
	xor 0b3h
	ld c,011h
	dec b
	adc a,l
	inc d
	jr l4073h
	sbc a,l
	call z,0d900h
	ld h,b
	call c,09904h
	ex de,hl
	ret
	add a,b
	ld a,a
	cp e
	xor 0cch
	adc a,0bbh
	cp (hl)
	rr c
	ld c,015h
	sub a
	call 06920h
	ret
	ld a,(bc)
	sbc a,c
	ex af,af'
	ld e,b
	ld (09c73h),hl
	ld b,d
	defb 0ddh,07bh,0cdh ;illegal sequence
	cp l
	ret
	rlca
	inc sp
l4104h:
	cp e
	cp h
	ld a,(hl)
	ex af,af'
	ld (de),a
	sbc a,c
	add a,d
	jp p,09b12h
	xor h
	ret
	xor c
	cp e
	ld bc,0039bh
	ld de,09bb9h
	add a,l
	ld d,d
	ld (bc),a
	add hl,bc
	cp c
	ld a,(bc)
	call z,01b11h
	cp b
	ex af,af'
	ld c,018h
	sbc a,c
	sbc a,a
	rst 38h
	nop
	ld sp,hl
	ld h,h
	defb 0ddh,000h,074h ;illegal sequence
	cp e
	ld b,l
	call pe,001ffh
	add a,b
	cp e
	ex de,hl
	jp (hl)
	sbc a,0bbh
	add a,b
	dec bc
	jp pe,0aaadh
l413eh:
	xor d
	cp e
	cp d
	djnz $-84
	sbc a,l
	in a,(01ah)
	cp e
	exx
	in a,(010h)
	cp l
	defb 0ddh,0dbh,068h ;illegal sequence
	in a,(0bbh)
	call c,0db08h
	set 3,l
	call 0cc1ch
	defb 0ddh,0a2h,003h ;illegal sequence
	adc a,d
	ld d,c
	in a,(017h)
	ld a,(hl)
	call 08cdbh
	jr l413eh
	ld sp,hl
	ld a,a
	dec e
	cp h
	ld a,a
	ld l,l
	ld (hl),c
	ld (bc),a
	add a,l
	add hl,de
	inc (hl)
	ld e,e
	halt
	ld (bc),a
	ld c,0d5h
	ld (bc),a
	ld a,a
	ld e,b
	ld b,e
	nop
	cp l
	pop de
	inc b
	call pe,0ee9ch
	inc b
	ld a,(bc)
	cp (hl)
	jp (hl)
	ex de,hl
	inc bc
	rlca
	ex (sp),hl
l4188h:
	dec d
	nop
	sbc a,a
	jr nz,l41abh
	ld a,(bc)
	ld e,e
	in a,(005h)
	adc a,h
	inc d
	add a,b
	ld d,h
	ld bc,0dc7ah
	adc a,b
	defb 0fdh,09ch ;sbc a,iyh
	cp c
	ld c,h
	sbc a,h
	add a,c
	exx
	ld a,h
	sbc a,h
	ld a,a
	ld d,h
	dec (hl)
	sub (hl)
	xor a
	ld a,a
	ld sp,09be9h
l41abh:
	inc bc
	ld b,0b5h
	dec a
	dec b
	rlca
	sub c
	call m,002b8h
	rst 18h
	adc a,l
	rst 38h
	ld b,(hl)
	defb 0fdh,0ffh,0c9h ;illegal sequence
	jp m,034fah
	rst 38h
	jp po,09bech
	ld l,d
	ld (bc),a
	add a,a
	ld (hl),c
	xor 03eh
	ld a,(bc)
	xor d
	xor e
	cp d
	ld (bc),a
	jr $-106
	add a,b
	adc a,l
	ex (sp),iy
	ld (bc),a
	ld a,c
	dec h
	adc a,a
	ld e,d
	cp e
	inc bc
	call c,0cd46h
	sbc a,b
	inc b
	call 0bccdh
	sbc a,e
	add a,l
	out (09bh),a
	ld d,a
	or h
	call nz,sub_52bdh
	cp h
	sbc a,(hl)
	add a,0e4h
	rst 0
	ld sp,hl
	ld d,d
	or 0c5h
	ex af,af'
	ld sp,hl
	dec de
	ld a,e
	sbc a,d
	inc d
	sbc a,c
	sub a
	rst 38h
	ld (0ecceh),hl
	ei
	sub b
	jp (hl)
	call z,0d59ah
	ld a,a
	and d
	add a,e
	ld a,(hl)
	adc a,l
	ld (bc),a
	xor c
	xor d
	nop
	ld l,c
	sbc a,l
	dec de
	exx
	defb 0ddh,000h,0bah ;illegal sequence
	ld a,(bc)
	call 00190h
	call c,0dc03h
	call c,0a9ddh
	ld a,(hl)
	ld (hl),d
	sub d
	call nz,0839ch
	sub h
	add a,h
	or h
	dec c
	cp 0bch
	ld (0cd18h),a
	jp z,006dfh
	rst 38h
	sbc a,h
	ld d,(hl)
	sbc a,(hl)
	xor (hl)
	push bc
	add a,c
	pop af
	ld (bc),a
	sbc a,c
	ld de,l4effh
	cp h
	ld a,(bc)
	exx
	ld l,a
	halt
	add a,c
	inc d
	ld b,0ddh
	ret z
	ld (hl),b
	adc a,l
	sub l
	ret
	adc a,e
	xor h
	ret
	ld a,a
	ld a,h
	call c,05659h
	add a,0f6h
	ld e,e
	jp c,082cfh
	inc h
	or e
	ld a,(hl)
	inc c
	call pe,sub_70eeh
	xor a
	call 08bfdh
	adc a,a
	push de
	cp h
	add a,b
	cp h
	sub c
	cp 0b8h
	sbc a,l
	call p,0c1e3h
	adc a,e
	adc a,026h
	sbc a,c
	ret m
	ld sp,09e2fh
	rst 10h
	ld d,h
	or e
	ld a,(hl)
	ld l,h
	cp b
	ld a,b
l4282h:
	ld b,a
	cp 0beh
	ld a,a
	ld e,d
	sbc a,a
	ld c,(hl)
	sbc a,a
	ld (hl),c
	dec bc
	nop
	call c,0b7c8h
	ld (hl),b
	dec hl
	exx
	ld (bc),a
	call po,0ffc4h
	ld a,(l62cfh)
	call pe,027f8h
	call pe,06bc4h
	dec bc
	ld a,(hl)
	add a,c
l42a3h:
	ld (0add2h),a
	cp l
	ld a,l
	ld c,a
	ld a,a
	ld h,(hl)
	cp h
	ld a,a
	dec hl
	cp l
	ld l,(hl)
	and h
	call nc,0b0ddh
	call po,0f4c8h
	rst 38h
	ld (bc),a
	cp a
	rst 38h
	ei
	cp l
	sbc a,a
	cp e
	di
	add a,d
	cp e
	call m,00405h
	cp a
	rst 8
	cp h
	cp a
	call m,0bc09h
	xor e
	rst 30h
	ret
	inc de
	rst 30h
	dec d
	sbc a,h
	rst 38h
	ld a,c
	inc b
	adc a,h
	sbc a,c
	jp (hl)
	ld c,c
	rst 38h
	push af
	adc a,a
	add a,b
	jp nc,09caah
	ld a,a
	cp l
	and l
	jr nc,l42a3h
	cp l
	jp nz,0a7b4h
	xor h
	cp e
	or h
	cp l
	ld e,a
	exx
	out (0b1h),a
	cp a
	cp a
	inc b
	sub a
	ret p
	ld h,d
	or 0a0h
	cp h
	dec b
	call z,0e9bbh
	res 6,e
	add a,c
	adc a,c
	dec c
	adc a,d
	xor e
	call p,09ac5h
	add a,h
	ld l,d
	xor c
	or l
	rst 0
	or l
	or b
	or (hl)
	ret
	dec l
	jp nc,0c22fh
	ld (hl),d
	add hl,bc
	call z,006f7h
	inc (hl)
	xor (hl)
	push de
	call c,0d6d4h
	ld l,d
l4322h:
	sbc a,c
	ret po
	jp (hl)
	push hl
	dec c
	sub e
	ei
	ld (l65cdh),a
	or d
	call z,056abh
	cp l
	call 09238h
	cp l
	rst 38h
	add a,b
	or a
l4338h:
	call p,0804ah
	push hl
	ld (bc),a
	dec bc
	add a,b
	inc de
	cp 0f1h
	rla
	inc bc
	inc c
	call z,083ebh
	exx
	adc a,b
	and d
	add a,e
	sbc a,b
	inc b
	xor 0f4h
	call pe,0cbbdh
	ld a,a
	cp h
	ret c
	add a,(hl)
	defb 0ddh,0d2h,067h ;illegal sequence
	ld a,a
	ld sp,0c3c3h
	inc bc
	ld a,b
	ld de,004b9h
	inc hl
	call nc,0caeah
	sbc a,b
	rst 18h
	ld l,l
	or a
	ld b,d
	sbc a,l
	call 0f6b2h
	ccf
	adc a,l
	ei
	sub h
	adc a,h
	jp 0eec8h
	jr l4338h
	call p,00371h
	call m,08b01h
	call z,0ccebh
	ret m
	ld b,(hl)
	call z,0acffh
	add a,h
	ex (sp),hl
	cp e
	add a,(hl)
	or a
	add hl,hl
	dec sp
	nop
	ld b,(hl)
	jp c,0a3ffh
	xor l
	rst 38h
	rst 8
	ld a,a
	cp c
	adc a,c
	ld e,h
	rst 0
	ld e,c
	sub b
	ld e,h
	call nc,006e7h
	scf
	inc bc
	ld hl,(0a379h)
	ld l,d
	inc bc
	sbc a,b
	jp z,0be7dh
	ld l,c
	ld b,l
	call c,08cbdh
	xor a
	defb 0ddh,0d3h,0dah ;illegal sequence
	dec e
	push bc
	rst 28h
	sub l
	inc bc
	adc a,0fah
	sub d
	or l
	ld h,(hl)
	add a,b
	sub (hl)
sub_43c2h:
	xor 09ch
	add a,e
	xor c
	cp c
	rst 38h
	ld a,b
	or a
	ld e,a
	sub 058h
	ld (hl),a
	cp c
	ld a,a
	exx
	res 0,d
	dec hl
	sub h
	inc l
	ld (hl),c
	ld de,0bc01h
	ld a,(bc)
	or e
	sbc a,c
	ld a,a
	add a,e
	add hl,de
	adc a,h
	add a,e
	and d
	call m,09ec8h
	cp e
	push af
	ld e,l
	daa
	ld e,(hl)
	jp (hl)
	adc a,d
	jp po,0c6ffh
	adc a,l
	ld d,e
	rst 38h
	jp 034d9h
	in a,(0f8h)
	ld a,e
	jp nc,0ed13h
	or e
	call p,09each
	add hl,bc
	jp po,0fb7fh
	scf
	ret po
	ld e,b
	sbc a,0dfh
	ld a,a
	nop
	call 00084h
l440eh:
	nop
	inc c
	xor 04bh
	ret nz
	dec b
	rlca
	rst 30h
	rst 38h
	ld a,a
	ld h,c
	dec c
	call p,0d03ah
	cp a
	ld b,b
	rlca
	ld a,e
	ld a,a
	or 02fh
	and a
	sub a
	nop
	rlca
	rst 28h
	cp 07fh
	cp d
	dec bc
	push af
	exx
	ld a,(hl)
	or b
	rlca
	rst 38h
	ld a,a
	ex de,hl
	cp e
	inc c
	xor a
	adc a,c
	pop bc
	sbc a,h
	inc c
	jp nc,007c6h
	ccf
	call z,03b07h
	scf
	xor a
	ld a,a
	rst 10h
	ld e,d
	add hl,bc
	ret pe
	ld h,e
	ld b,090h
	rlca
	ld l,l
	push bc
	jr c,$+9
	ld (hl),c
	sbc a,(hl)
	rlca
	ex de,hl
	ld l,c
l4457h:
	rla
	add a,005h
	ld a,(00fbbh)
	ex (sp),hl
	rla
	defb 0cbh,037h ;sli a
	rlca
	ld (hl),c
	and a
	ld a,c
	rla
	ld h,a
	cp c
	daa
	ld a,a
	ex de,hl
	sbc a,d
	jp (hl)
	cp c
	ld a,a
	sbc a,(hl)
	or a
	ld (hl),d
	call nc,0d837h
	jr c,l447eh
	ld (hl),d
	sbc a,e
	rlca
	jp (hl)
	and 007h
	pop af
l447eh:
	ex de,hl
sub_447fh:
	ex (sp),hl
	cp c
	rla
	pop de
	daa
	sbc a,a
	ld sp,hl
	defb 0fdh,0edh,022h ;illegal sequence
	rst 18h
	dec b
	ld a,(de)
	sbc a,d
	xor c
	xor l
	xor e
	sub (hl)
	dec b
	daa
	push bc
	sbc a,(hl)
	rla
	ld a,(hl)
	ld a,a
	jp l7fe9h
	xor h
	sbc a,031h
	defb 0cbh,036h ;sli (hl)
	rlca
	add a,a
	ld a,(0e975h)
	ld a,a
	rla
	pop hl
	rst 20h
	ld d,067h
	call pe,0fec6h
	sub c
	add a,a
	rst 28h
	ret nc
	or (hl)
	and d
	adc a,d
	xor e
	push af
l44b7h:
	ld a,(de)
sub_44b8h:
	cp d
	xor h
	ld h,(hl)
	rra
	add a,h
	ld h,a
	ld a,a
	ret p
	ld l,0e9h
	ld h,a
	or a
	rrca
	ld a,a
	ld e,l
	jp (hl)
	ld a,a
	ld h,e
	rlca
	cp e
	rrca
	sbc a,l
	adc a,c
	ret c
	rst 38h
	ret m
	ld (hl),e
	scf
	rra
	adc a,c
	rst 38h
	xor (iy-043h)
	ld c,c
	rst 0
	call nc,0e7ebh
	call p,0d59eh
	call 0d79dh
	jp (hl)
	rla
	sbc a,e
	rrca
	rst 10h
	daa
	ld (hl),e
	rst 38h
	rst 28h
	rst 38h
	dec de
	rst 38h
	ccf
	or e
	rst 38h
	ld e,a
	rst 18h
	rst 18h
	rst 38h
	rst 30h
	ld sp,hl
	rst 38h
	defb 0fdh,0feh,0ffh ;illegal sequence
	rst 38h
	add a,b
l4500h:
	ld (hl),a
	rst 38h
	ret p
	jp nc,l4c87h
	adc a,d
	cp e
	ex (sp),hl
	inc bc
	ld (bc),a
	dec h
	sub h
	sbc a,h
	ex af,af'
	sbc a,c
	djnz l4512h
l4512h:
	dec c
	ld de,003b4h
	ld a,(bc)
	dec bc
l4518h:
	ex (sp),hl
	dec c
	rla
	ld a,h
	ld hl,(01278h)
	adc a,a
	adc a,e
	rlca
	add hl,bc
	dec b
	dec de
	nop
	add hl,bc
	jp p,09f3bh
	add hl,bc
	ld e,d
	rrca
	add a,e
	ld a,d
	add hl,bc
	rst 10h
	ld e,e
	ld c,l
	ld l,h
	ld d,l
	ld e,c
	dec bc
	ld l,e
	add a,015h
	rst 30h
	ld a,a
	dec e
	or (hl)
	rlca
	ld (hl),b
	rst 0
	adc a,h
	ld e,l
	ld b,0aah
	dec bc
	dec h
	cp h
	ld l,a
	ld l,d
	adc a,(hl)
	ld h,d
	ld a,(hl)
	add hl,bc
	inc sp
	rrca
	sbc a,c
	call m,0090eh
	sbc a,c
	ld b,h
	add a,e
	inc e
	ld b,h
	rst 38h
	add hl,bc
	ld h,0f4h
	ld a,(hl)
	ld sp,hl
	inc de
	pop af
	ld h,l
	ld e,h
	sbc a,l
	ld (hl),e
	ld h,h
	ld l,c
	sub b
sub_4568h:
	ld h,l
	sbc a,e
	dec (hl)
	add hl,de
	rst 0
	ld a,a
	inc e
	ld a,(hl)
	halt
	ld hl,(0e10bh)
	ld b,0b0h
	sub l
	add hl,de
	ld a,a
	rst 18h
	rlca
	ld b,a
	sub b
	nop
	add hl,bc
sub_457fh:
	ret z
	call p,0f95dh
	nop
	add hl,bc
	ld d,b
	ld a,(hl)
	nop
	call po,0f04fh
	and h
	add hl,bc
	inc b
	ld b,h
	adc a,c
	ld h,(hl)
	inc de
	ld l,h
	ld l,b
	rst 38h
	ld a,h
	ld de,0cae7h
	or b
	rst 38h
	inc a
	ld l,06ch
	inc c
	ld (hl),l
	rla
	nop
	inc de
	add a,012h
	ld h,(hl)
	rla
	adc a,e
	ld a,b
	ld (hl),a
	ld l,e
	add hl,bc
	ex de,hl
	ret p
	adc a,h
	ld c,d
	defb 0fdh,026h,044h ;ld iyh,044h
	nop
	ld c,a
	inc de
	adc a,h
	rrca
	ld c,(hl)
	ex de,hl
	ld l,l
	adc a,c
	add a,b
	ret p
	add hl,bc
	ld d,c
	inc b
	adc a,c
	call nc,077e5h
	rst 38h
	ld a,011h
	xor 0d2h
	nop
	adc a,d
	ld e,c
	ex (sp),hl
	inc c
	dec c
	ld d,e
	or b
	rst 38h
	adc a,07fh
	ld c,(hl)
	adc a,l
	rst 28h
l45d8h:
	djnz l4659h
	jp 03d88h
	call p,09f09h
	ld (de),a
	call p,sub_4f4fh
	ex (sp),hl
	sub a
	ld a,a
	ld l,d
	ld de,l648dh
	ld a,a
	rst 10h
	or b
	xor 008h
	ld c,a
	nop
	inc b
	xor 089h
	push hl
	ld sp,hl
	ld e,a
	rst 8
	ld h,c
	ld a,(bc)
	dec bc
	dec bc
	adc a,c
	sbc a,h
	dec h
	sub (hl)
	adc a,c
	sub c
	ld h,l
	or b
	ld (hl),l
	or c
	and d
	sub 013h
	add a,08ah
	call pe,0ff00h
	cp c
	ld a,d
	ld a,a
	pop af
	ex (sp),hl
	add hl,bc
	ret nc
	rst 38h
	ld b,h
l4618h:
	ex de,hl
	sub h
	jp po,009a4h
	push af
	sbc a,h
	scf
	cp (hl)
	jp m,0f433h
	ld (hl),l
	ex af,af'
	jr nc,$+4
	call po,sub_4c00h
	ld c,07bh
	cp e
	ex af,af'
	adc a,d
	sbc a,a
	call pe,0df96h
	ld d,e
	ld a,b
	jp nz,0b68dh
	call p,0965bh
	adc a,(hl)
	daa
	adc a,l
	sbc a,h
	or b
	ld h,d
	xor l
	sub (hl)
	sub h
	ld e,c
	xor (hl)
	cp b
	add hl,hl
l4649h:
	rst 38h
	rst 0
	ld a,a
	jp l76fdh
	ld a,(hl)
	jr c,$+81
	rst 38h
	add hl,bc
	xor e
	ld (hl),b
	ld h,e
	ld h,c
	add hl,bc
l4659h:
	ld (080eah),hl
	ld bc,044e4h
	ld c,(hl)
	rst 28h
	sub b
	inc b
	ld (hl),c
	ex de,hl
	ld a,a
	ld a,e
	ld de,00bf0h
	rlca
	ex de,hl
	cp (hl)
	add a,a
	inc d
	sub a
	ret
	ret po
	sub 0e3h
	ld a,a
	jp 08970h
	add a,c
	exx
	and 0e2h
	ret pe
	ld a,c
	xor (hl)
	dec iy
	rst 38h
	xor h
	inc c
	sbc a,028h
	nop
	inc sp
	cp h
	jp po,0cde5h
	sbc a,b
sub_468dh:
	defb 0edh ;next byte illegal after ed
	call po,0e2f4h
	add hl,bc
	ld a,a
	add a,06eh
	rst 28h
	add hl,bc
	inc hl
	ld c,e
	call pe,0ee27h
	rlca
	ld c,a
	sub b
	call p,sub_457fh
	cp (hl)
	ld b,b
	ld (de),a
	inc de
	ld d,d
	ld a,a
	sbc a,a
	ld de,0e0eeh
	defb 0fdh,0ceh,07fh ;illegal sequence
	sbc a,089h
	call pe,0f701h
	ld l,l
	di
	di
	inc de
	push bc
	sbc a,b
	or e
	jp m,l4b1ch
	sbc a,c
	ld e,l
	ld a,a
	ld h,(hl)
	nop
	sbc a,b
	ld a,h
	ld l,d
	rst 38h
	ld l,h
	push af
	ld (hl),e
	ld a,(hl)
	ld e,b
	rst 28h
	ld l,(hl)
	call po,010c2h
	ld c,(hl)
	cp (hl)
	ld a,h
	ld c,d
	ld c,(hl)
	adc a,d
	and e
	cp 0fbh
	ld d,e
	ex de,hl
	adc a,h
	cp c
	ld c,07fh
	adc a,h
	cp 01fh
	or (hl)
	sub 02bh
	defb 0edh ;next byte illegal after ed
	adc a,h
	adc a,c
	in a,(0f6h)
	ret p
	cp (hl)
	adc a,d
	xor c
	sbc a,l
	sbc a,(hl)
	dec c
	inc hl
	jp m,0fc8ah
	ld l,e
	ld a,a
	jp pe,0f2aah
	ld h,b
	ld l,h
	rst 28h
	ld a,a
	rlca
	cp a
	ex (sp),hl
	ld (hl),h
	ld a,a
	ld l,b
	defb 0fdh,057h,0feh ;illegal sequence
	ld a,(bc)
	add hl,bc
	ld a,a
	sbc a,l
	sub d
	ld h,c
	call po,09f4eh
	inc e
	ld a,a
	nop
	ld a,(de)
	cp 049h
	ld b,h
	push hl
	ld a,a
	ret nz
	call p,0bfbbh
	ld d,h
	call p,08a63h
	adc a,h
	call p,08a7fh
	add a,e
	ld (hl),h
	ld l,e
	ld sp,hl
	ld a,a
	cp (hl)
	ld a,a
	pop bc
	call po,sub_47a6h
	ld a,a
	jp p,0fb63h
	cp (hl)
	rst 38h
	jp c,08828h
	ret po
	cp e
	or h
	ld d,l
	ld sp,hl
	adc a,e
	adc a,c
	inc e
	ld c,c
	add a,l
	adc a,c
	ld (hl),c
	ld c,e
	xor 07fh
	call z,0f1ffh
	ld a,a
	push bc
	daa
	ld a,a
	adc a,a
	rst 28h
	ld a,a
	ex (sp),hl
	jp po,08df6h
	di
	pop hl
	ld a,a
	cp (hl)
	ex af,af'
	call 00889h
	ex de,hl
	jp (hl)
	adc a,(hl)
	call po,sub_7ffeh
	ld e,(hl)
	cp e
	ld a,a
	dec bc
	rst 28h
l476ah:
	sbc a,(hl)
	xor e
	adc a,a
	inc hl
	rst 38h
	ld sp,hl
	ld a,(bc)
	or 028h
	cp 047h
	sbc a,a
	push af
	ld d,0e0h
	ld e,l
	adc a,c
	add a,c
	ld (011f9h),hl
	dec hl
	ld c,c
	rst 38h
	sub e
	add hl,de
l4784h:
	cp a
	add a,b
	adc a,h
	cp 0f4h
	ld e,(hl)
	ld a,a
	dec hl
	inc h
	adc a,(hl)
	inc l
	call m,0868ah
	add hl,bc
	cp 07fh
	ld a,080h
	or d
	ld (hl),h
	adc a,(hl)
	adc a,b
	ld l,(hl)
	sbc a,032h
	or h
	ld c,c
sub_47a0h:
	ld a,(bc)
	add a,l
	dec h
	sbc a,a
	ld a,a
	sub e
sub_47a6h:
	ld b,h
	ld a,a
	call p,0ffb5h
	sub 080h
	ld (01c8ch),a
	ld c,(hl)
	or h
	rst 38h
	add a,b
	jr z,l476ah
	and b
	cp 07fh
	inc de
	rst 38h
	inc e
	inc a
	add hl,bc
	pop de
	sbc a,a
	call m,0fb1ch
	cp a
sub_47c4h:
	ret m
	xor c
	inc b
	ex (sp),hl
	ld a,(de)
	ld sp,hl
	rst 38h
	or c
	adc a,b
	ld l,l
	push af
	ld a,a
	out (04fh),a
	sub e
	ld c,d
	defb 0fdh,04bh,0a8h ;illegal sequence
	jp 04f4eh
	ld a,a
	ld sp,hl
	adc a,c
	add a,b
	scf
	adc a,c
	sbc a,d
	ld a,a
	dec b
	push af
	ex de,hl
	sub h
	sub c
	ld h,(hl)
	rrca
	ld (hl),d
	or 0f1h
	ld a,a
	ld e,h
	ld a,(de)
	sub l
	ld c,c
	adc a,l
	add a,b
	inc hl
sub_47f4h:
	rst 38h
	ld a,a
	ret m
	ld (hl),000h
	rst 38h
	ld a,b
	ld a,h
	add hl,bc
	sbc a,l
	ld h,e
	cp l
	sub b
	rst 38h
	sbc a,b
	nop
	ld b,h
	ret p
	adc a,01dh
	sub l
	jp z,03cfdh
	add a,b
	cp 07fh
	ld de,00809h
	rst 18h
	add hl,bc
	call 0f987h
	add hl,bc
	pop bc
	rrca
	call p,0eb8ah
	sub h
l481eh:
	sub 013h
	cp l
	cp 094h
	ld a,d
	rst 38h
	cp 07fh
	ld de,00700h
sub_482ah:
	rst 18h
	add hl,bc
	call sub_6c90h
	ld l,e
	add hl,bc
	rst 38h
	nop
	adc a,(hl)
	inc de
	ld a,b
	ld a,(hl)
	ccf
	nop
	sbc a,c
	nop
	cp (hl)
	rst 38h
	nop
	rst 38h
	add a,b
	nop
	jr c,l4843h
l4843h:
	nop
	ld h,c
	call z,0cf00h
	call z,0e200h
	call m,0cc7eh
	nop
	add hl,bc
	rst 8
	rst 38h
	nop
	call m,sub_4f4fh
	ccf
	ld h,l
	jr l481eh
	call z,0f84ch
	nop
	rst 18h
	call nz,0c77fh
	inc b
	ld b,h
	ld b,h
	ld b,a
	ld c,a
	ld b,0c4h
	add a,a
	dec b
	ld (hl),h
	ld c,h
	ld b,h
	nop
	dec (hl)
	ld a,c
	inc bc
	ld (bc),a
	jr l48c4h
	call p,0b400h
	ld hl,0b2b4h
	nop
	and d
	and d
	and e
	nop
	adc a,b
	inc sp
	nop
	ld d,e
	ld d,l
	add a,e
	nop
	ld d,h
	ld b,h
	ld c,h
	ld a,h
	ld a,a
	ret m
	ret nz
	ld b,a
	ld a,e
	cp e
	cp a
	add a,b
	ld b,0fch
	ld c,e
	or a
	or d
	cp e
	ld (hl),h
	inc h
	ld (hl),h
	ld (hl),a
	nop
	ld a,e
	ld b,044h
	sub c
	ex af,af'
	ld b,a
	adc a,(hl)
	ld sp,l6d75h
	ld e,l
	ld bc,0009eh
	call nz,044a4h
	rst 38h
	ld a,a
	inc e
	ld (02211h),hl
	inc l
	rst 38h
	add a,b
	and b
	xor e
	xor e
	inc l
	rst 0
	or a
	ld (07bbbh),hl
	ld c,02bh
	or h
l48c4h:
	adc a,h
	inc h
	ld (hl),a
	ex af,af'
	ld (hl),h
	add a,c
	ld a,e
	ld e,l
	push de
	ld e,l
	defb 0ddh,055h ;ld d,ixl
	inc bc
	sub c
	add a,h
	dec hl
	defb 0ddh,003h,002h ;illegal sequence
	nop
	ld c,c
	push de
	jp c,03a80h
	ld a,a
	sbc a,c
	adc a,c
	call p,03e0ah
	ld c,a
	ld d,(hl)
	ld d,d
	rst 8
	rst 8
	ld a,(de)
	sub l
	bit 7,(hl)
	ld c,h
	ld a,a
	nop
	ld c,e
	ld h,02ah
	ld b,(hl)
	xor h
	pop de
	add a,b
	call m,02a47h
	inc l
	ld b,h
	ld b,d
l48fch:
	or d
	ld hl,02b2bh
sub_4900h:
	ld a,a
	daa
	ld b,a
	ld (hl),a
	ld b,046h
	dec b
	ld b,l
	defb 0ddh,07ah,07bh ;illegal sequence
	nop
	inc b
	push de
	ld d,l
	ld d,e
	and h
	rst 38h
	ld (hl),h
	call p,05d88h
	ld (hl),d
	inc h
	inc bc
	ld c,a
	ld c,a
	ld a,h
	call m,01454h
	ld de,0d2cbh
	jp nz,02222h
	nop
	ld b,a
	ld b,h
	rst 38h
	ld e,a
	inc b
	ld (l51aah),hl
	inc a
	jp nc,0a434h
	ld b,d
	inc l
	ld c,l
	or d
	jp z,00034h
	defb 0fdh,026h,0b7h ;ld iyh,0b7h
	ex af,af'
	ld de,0bdb7h
	ld sp,hl
	sbc a,(hl)
	ld a,a
	jp nc,011ffh
	inc sp
l4947h:
	and h
	rst 38h
l4949h:
	call nc,0dba2h
	ld hl,(03e32h)
	call p,02255h
	call m,0cac4h
	ld l,049h
	ccf
	ld a,a
	ex af,af'
	ld (hl),d
	xor d
	ld e,d
	and a
	call p,0d046h
	xor c
	inc l
	ld d,d
	cp 048h
	rst 38h
	and c
	ld a,a
	or a
	ld a,a
	call nz,0843fh
	cp e
	dec (hl)
	add a,d
	pop de
	cp 0eeh
	ld d,l
	ld (hl),a
	dec (hl)
	ld a,a
	cp b
	add hl,sp
	nop
l497bh:
	or h
	xor e
	ld a,h
	ld d,l
	ld d,d
	sbc a,e
	add hl,sp
	ld b,d
	dec e
	ld c,c
	inc h
	sbc a,(hl)
	rst 38h
	ccf
	ld a,b
	or d
	ld h,0a2h
l498dh:
	and (hl)
	dec b
	res 1,h
	or h
	adc a,d
	rst 38h
	cp 084h
	or d
	add a,b
	ld l,l
	add a,h
	ld c,b
	cp a
	sub c
	and e
	ld b,c
	xor e
	or e
	ld a,a
	exx
	push de
	add a,b
	ld e,h
	ld c,e
	rst 38h
	ld d,09bh
	halt
	ld h,c
	ld b,h
	ret m
	ld a,a
	push hl
	sbc a,e
	ld b,h
	ld hl,(0aa2ah)
	sbc a,a
l49b6h:
	xor h
	rst 38h
	ld a,l
	ex de,hl
	cp e
	inc h
	or 016h
	ld d,h
	sub e
	ld a,a
sub_49c1h:
	ld b,a
	ret m
	inc hl
	ld (hl),d
	add a,b
	ld b,h
	daa
	cp e
	inc l
	djnz $-58
	inc de
	ld (0bbbah),hl
	add a,c
	sub d
	defb 0fdh,0ebh,0ffh ;illegal sequence
	dec hl
	ld a,a
	call nz,093e0h
	ld h,0aah
	nop
	dec h
	jp po,08ce5h
	sbc a,h
	ld b,d
	ld hl,(0a31bh)
	ld a,(081a2h)
	ld a,a
	ld (bc),a
	rst 38h
	ld (0a76eh),a
	dec b
	add a,c
	ld h,e
	rst 38h
	add a,e
	ld (hl),d
	cp e
	ld a,a
	inc de
	ld h,h
	add a,(hl)
	ld h,(hl)
	add a,b
	ld d,h
	sub b
	inc hl
	ld b,a
	ld a,e
	cp 0c0h
	ld d,e
	sbc a,(hl)
	rst 38h
	or c
	ld a,(hl)
	ld hl,(0085fh)
	inc sp
	and e
	and d
	rst 38h
	and l
	pop hl
	jp po,0c422h
	ld (hl),h
	sbc a,h
	ret
	dec e
	inc bc
	ld hl,(02f9fh)
	dec l
	rst 38h
	jp m,02256h
	or b
	add a,07fh
l4a24h:
	and h
	ld b,a
	rst 38h
	add hl,hl
	ld a,e
	or d
	add a,b
	inc h
	cp (hl)
	ld h,b
	ld c,a
	ld a,a
	ld b,a
	and d
	and a
	ld c,e
	ld (hl),l
	defb 0fdh,0bbh,033h ;illegal sequence
	ld a,a
	sbc a,d
	sbc a,(hl)
	ld c,h
	sub l
	xor b
	ld e,(hl)
	ld h,c
	xor d
	ld hl,(l723eh)
	xor a
	ld d,l
	ld de,l4aa2h
l4a49h:
	ld hl,(09cb1h)
	ld (bc),a
	ld a,(0a2aah)
	daa
	ld c,a
	rst 38h
	ld a,0e9h
	ld a,a
	inc l
	ret nc
	dec de
	add a,l
	ret
	rst 38h
	inc h
	rst 38h
	ld h,h
	rrca
	cp e
	inc b
	cp e
	ld h,0b4h
	ld (hl),d
	rst 8
	sub c
	adc a,e
	ld b,a
	rst 18h
	rlca
	ld (03d72h),hl
	ld a,(hl)
	adc a,h
	cp 072h
	inc sp
	ld l,h
	inc (hl)
	ld a,a
	ret po
	sub d
	rst 18h
	ld h,(hl)
	ld h,b
	ld (bc),a
	ld c,h
	add a,c
	cpl
	ret m
	ld d,l
	ld d,(hl)
	or d
	dec e
	inc e
	and e
	dec (hl)
	add a,c
	daa
	add a,b
	xor 055h
	rst 8
	rst 38h
	ld a,a
	add hl,hl
	ld c,h
	defb 0fdh,011h,04ch ;illegal sequence
	rst 38h
	adc a,d
	ld (hl),a
	rst 38h
	ld b,l
	ld b,a
	call m,09111h
	ld (de),a
	ld h,a
	ld a,e
	adc a,(hl)
l4aa2h:
	sbc a,e
	add a,h
	ld c,h
	add a,c
	ld a,e
	inc hl
	dec hl
	dec e
	cp 0cah
	ld (bc),a
	ld h,h
	inc sp
	ld a,a
	rst 38h
	call pe,093feh
	ld h,b
	ld d,e
	ld e,(hl)
	jr nc,$+4
	ld (0b724h),a
	cp 085h
sub_4abeh:
	ld (0467bh),hl
	xor c
	scf
	dec a
	or d
	jr z,l4a49h
	and a
	add a,b
	cp d
	xor d
	sub c
	ld a,h
	push de
	add a,06dh
	ld (hl),0cfh
	ld a,a
	defb 0fdh,04dh ;ld c,iyl
	defb 0fdh,031h,0d7h ;illegal sequence
	ld d,02ah
	call nc,07ca4h
	call nz,02b08h
	dec h
	ld hl,(080b3h)
	call sub_7f53h
	add a,(hl)
	scf
l4ae9h:
	ld b,h
	ld a,a
	ret
	rst 18h
	dec bc
	add a,h
	push de
	ex (sp),ix
	xor e
	ld b,h
	ld d,e
	pop hl
	ld h,h
	ld c,d
	ld a,(hl)
	cp c
	xor d
	push de
	ld e,0a3h
	and b
	ld a,a
	defb 0edh ;next byte illegal after ed
	inc e
	call nz,sub_72c4h
	ret m
	adc a,l
	call z,03ccbh
	ld a,a
	ld l,d
	ld de,02392h
	rst 38h
	inc h
	sub l
	inc h
	ld (hl),a
	ld b,d
	ld a,a
	cp e
	add a,c
	ld sp,hl
	ld b,(hl)
	cp 0c4h
l4b1ch:
	rst 38h
	ld c,a
	ret
	ld a,a
	cp 02dh
	ex af,af'
	sbc a,(hl)
	or (hl)
	inc d
	add a,c
	ld b,a
	inc h
	ld a,a
	jp nz,0ad23h
	ld a,l
l4b2eh:
	cp c
	sub d
	out (03ah),a
	ld a,a
	and a
	add a,b
	cp e
	rst 30h
	ld hl,(00b83h)
	ld (hl),a
	ld c,h
	ld b,0b4h
	ld c,(hl)
	ld a,a
	ld de,08d27h
	adc a,d
	daa
	call c,sub_4c94h
	ld b,h
	ld h,(hl)
	rst 0
	ld (hl),c
	ld (hl),h
	sub b
	ret po
l4b4fh:
	ld b,l
	cp 0b8h
	add a,0feh
	rst 8
	rst 38h
	inc d
	inc sp
	rst 38h
	ld d,c
	sub a
	call nz,sub_5783h
	inc de
	ld a,a
	add a,053h
	sub e
	xor h
	ld a,a
	sbc a,c
	sbc a,(hl)
	rst 8
	ld a,a
	or (hl)
	ld a,c
	ld h,0bbh
	call nz,sub_447fh
	push bc
	call nc,02783h
	cp h
	jp m,0fd2ah
	jr nc,l4b2eh
	ld b,h
	dec b
	ld (hl),d
	daa
	jr nz,l4b4fh
	call nz,0cc65h
	ld a,e
	ld c,e
	ld (hl),d
	adc a,c
	adc a,d
	ld h,l
	ei
	xor (hl)
	inc a
	ld a,a
	ld c,(hl)
	rst 38h
sub_4b8fh:
	ld d,d
	cp 04ah
	rst 18h
	cp (hl)
	rst 18h
	ld d,l
	add a,d
	di
	dec a
	inc bc
	sub l
	add a,c
	inc l
	ld d,e
	ld d,e
	add a,b
	and a
	add a,b
	or c
	call m,052f6h
	or h
	xor l
	pop hl
	or h
	ld (hl),a
	ld c,a
	add a,b
	add hl,hl
	ld a,a
	push bc
	ld l,081h
	ld (hl),086h
	ld h,l
	sub h
	ld de,09b91h
	add a,008h
	or a
	ld c,e
	ld hl,(09c80h)
	dec (hl)
	jp m,l7fdfh
	ex af,af'
	and a
	rst 38h
	push bc
	ld b,h
	ld a,a
	ld b,(iy+07fh)
	dec b
	ld de,01f11h
	ld de,l4500h
	ld b,a
	ld b,0ffh
	pop af
	dec bc
	rla
	rlca
	inc c
	nop
	ld de,033f3h
	pop af
	rra
	xor d
	xor (hl)
	rst 38h
	ld (hl),0ffh
	ld b,l
	ld b,d
	call po,sub_7f5fh
	ld d,b
	call z,024c7h
	ld h,l
	call z,sub_5470h
l4bf4h:
	ld l,l
	ld d,c
	ret p
	ei
	ld h,c
	or (hl)
	dec hl
	cp 034h
	add a,c
	sub a
	sub h
sub_4c00h:
	sub e
	add a,a
	ld b,l
	sub b
l4c04h:
	inc e
	dec (hl)
	ld c,e
	sbc a,(hl)
	ld d,d
	ld h,0fdh
	ex (sp),hl
	inc bc
	cpl
	xor d
	rst 38h
	ld d,c
	or a
	rst 38h
	or c
	rst 18h
	dec (hl)
	ld e,a
	ld a,d
	rst 38h
	ld l,c
	ld d,e
	ld bc,01105h
	ld a,c
	ld (hl),a
	ld d,c
	inc c
	adc a,l
	ld a,a
	sbc a,h
l4c25h:
	sbc a,d
	and h
	rst 38h
	ld b,a
	ld a,(0dcffh)
	call m,0c734h
	cp h
	jp pe,0a8fch
	adc a,b
	ld l,e
	call p,0087ch
	ld a,e
	cp d
	ld b,(hl)
	dec hl
	ld a,(bc)
	res 6,h
	sub l
	or c
	ld h,a
	sbc a,b
	add a,e
	sbc a,d
	adc a,a
	xor b
	xor l
	cp 0d8h
	defb 0fdh,0e4h,03ah ;illegal sequence
	and e
	inc hl
	inc (hl)
	ld a,h
	rst 38h
	ld l,l
	cp 004h
	ld e,l
	inc sp
	ccf
	ei
	ld h,h
	rst 38h
	ld l,h
	add a,e
	ld (hl),c
	dec bc
	call nz,sub_7184h
	add a,c
	jr $-3
	ret z
l4c66h:
	ld a,a
	xor a
	call po,0a4a2h
	ld a,l
	ld c,a
	ld a,a
	and l
	ld b,a
	cp a
	ld (bc),a
	rst 38h
	ld d,l
	defb 0fdh,052h,0a4h ;illegal sequence
	pop de
	ei
	ld a,a
	defb 0ddh,059h,01dh ;illegal sequence
	pop hl
sub_4c7eh:
	dec sp
	sbc a,b
	sbc a,015h
	jp p,00525h
	ei
	ld (hl),c
l4c87h:
	ld c,l
	ld d,(hl)
	ld a,(hl)
	rst 38h
	daa
	ld c,h
	rst 38h
	ex af,af'
	ld a,d
	ld hl,(0db8ch)
	ld a,a
sub_4c94h:
	ld l,(hl)
	ld h,e
	add a,e
	add a,h
	rra
	ret m
	ld (hl),e
	ld a,a
	or e
	adc a,b
	cp d
	dec c
	rst 38h
	ld l,l
	jp m,03081h
	dec d
	ld (0aea4h),a
	sbc a,b
	rst 38h
	push af
	inc bc
	rst 38h
	ld (hl),a
	or h
	call m,sub_7d4bh
	ld (09f81h),hl
	call z,09487h
	sub d
	call z,0f274h
	ld (0cc8eh),hl
	ld (hl),l
	rst 8
	ld (hl),l
	rst 38h
	sub (hl)
	call m,090dfh
	ld e,e
	ld e,d
sub_4ccah:
	ld a,(0e3afh)
	ld l,d
	ld (hl),a
	ld e,h
	pop af
	ld a,(08647h)
	dec e
	inc c
	ld h,b
	ld b,d
	ld (de),a
	inc h
	ld b,a
	ld l,d
	xor d
	sbc a,(hl)
	ld a,(iy+051h)
	jp po,l4784h
	ld (hl),h
	push hl
	sbc a,l
	defb 0edh ;next byte illegal after ed
	sub c
	add a,c
	ld c,a
	call z,085c3h
	add a,a
	inc c
	dec de
	ld a,a
	defb 0fdh,01dh,0d6h ;illegal sequence
	dec b
	rst 38h
	adc a,c
	rst 8
sub_4cf9h:
	and l
	ld (04de1h),a
	and e
	add a,h
	ld sp,hl
	xor a
	dec d
	add a,h
	cp d
	dec c
	ld a,(0c224h)
	rst 38h
	ld a,(de)
	rst 8
	rst 38h
	or 0cah
	ld a,c
	ld c,h
	ret p
	add hl,hl
	ld a,a
	add a,c
	and a
	cp l
	ld h,a
	call z,077d6h
	ld b,a
	cpl
	call z,sub_7f1ch
	res 0,c
	ld sp,0b7ffh
	sbc a,c
l4d25h:
	ld l,d
	pop hl
	inc d
	xor d
	inc l
	add a,e
	sub d
	ld bc,0ddabh
sub_4d2fh:
	ld a,(hl)
	ld d,e
	rra
	set 7,(hl)
l4d34h:
	xor a
	cp 040h
	ld c,h
	ld hl,(02ca2h)
	cp c
	ld b,c
	rst 38h
	defb 0edh ;next byte illegal after ed
	adc a,b
	ld a,c
	call nz,08027h
	or d
	ld d,h
	call z,01c7eh
	ld a,a
	sbc a,a
	call z,0ff07h
	ld a,(hl)
	ld e,h
l4d50h:
	rst 38h
	rst 8
	nop
	inc sp
	ld a,e
	ei
	ld d,l
	push hl
	call z,01972h
	ld b,a
	ld b,h
	adc a,h
	ld a,a
	ld a,a
	ld e,c
	ld c,e
	and a
	add a,c
	ld (hl),c
	or h
	or d
	jp (hl)
	ld (hl),0f0h
	ld d,e
	call z,0c7f0h
	rst 38h
	ld d,e
	call z,081c4h
	adc a,c
	and e
	rst 38h
	sbc a,0f5h
	and a
	rst 38h
	halt
	rrca
	sbc a,d
	sbc a,b
	ex (sp),hl
	ld e,002h
	adc a,b
	and d
	call c,0e107h
	add hl,de
	rst 38h
	add hl,de
	call z,0b1c8h
	add hl,bc
	cp a
	ld a,a
	ld e,c
	ld c,d
	xor d
	add a,d
	dec d
	rst 38h
	ret z
	call z,0ead4h
	xor d
	sub l
	or 01ch
	ret po
	ld a,e
	ld c,l
	cpl
	jp 0e10ch
	rst 38h
	ld c,h
	ld hl,(0d433h)
	push bc
	rst 38h
	ld e,a
	ld de,l69e7h
	rst 30h
	and a
	ld h,e
	ld (bc),a
	ld a,b
	ld a,a
	add a,082h
	or e
	ld a,a
	rla
	xor c
	ld a,a
	rra
l4dbdh:
	ld a,a
	rst 30h
	adc a,c
	scf
	call nz,08342h
	add a,0b2h
	add a,b
	jr l4d50h
	ld d,d
	add a,l
	ld a,d
	di
	ld (hl),066h
	di
	sub a
	nop
	ld h,(hl)
	push af
	add hl,de
	ld h,e
	and a
	add a,(hl)
	sub a
	ei
	ld h,01dh
	ld c,l
	ld (0cb00h),hl
	defb 0fdh,032h,04bh ;illegal sequence
	ld h,a
	rst 38h
	add hl,sp
	adc a,(hl)
	ei
	ld h,e
	rst 38h
	adc a,d
	cp c
	ld h,d
	rst 38h
	add hl,sp
	jp po,0f119h
	ld e,b
	ld b,(hl)
	ld de,0b883h
	call m,0fb1eh
	ld a,a
	dec bc
	ld (hl),e
	and h
	add a,(hl)
	and 0cch
	ld (hl),d
	and a
	call c,066ceh
	ld l,a
	ex af,af'
	adc a,h
l4e09h:
	ld (03edfh),hl
	ld h,h
	jp p,0cc07h
	or 0fbh
	sub (hl)
	xor d
	daa
	sub (hl)
	adc a,e
	xor e
	ld l,(hl)
	rst 38h
	inc a
	xor c
	xor e
	sbc a,e
	pop bc
	defb 0ddh,00eh,04fh ;illegal sequence
	call nz,01181h
	rst 38h
	or 0a7h
	ld e,a
	call z,0fcc1h
	call z,0443eh
	and (hl)
	ld l,a
	call z,sub_7bf4h
	ld c,a
	ld l,a
	call z,02f29h
	call z,0f7edh
	rst 38h
	dec hl
	rst 38h
	dec e
	ld (hl),c
	ld (hl),0a1h
	ld e,h
	ld d,e
	and d
	jr l4e09h
	in a,(0ffh)
	jr l4e9dh
	di
	ld e,0fah
	and e
	ld (0ffb1h),hl
	rst 30h
	daa
	rst 8
	call z,0fcc1h
	call z,0443eh
	xor d
	ld l,a
	call z,sub_47f4h
	inc de
	cpl
	rra
	rra
	call z,0fae4h
	dec d
	pop af
	ei
	ld a,h
	rst 38h
	push de
	sbc a,d
	ld hl,0ff3fh
	in a,(0cfh)
	ld l,071h
	xor c
	ld d,l
	or d
	ld (hl),l
	cp (hl)
	ld l,e
	rst 38h
	defb 0edh ;next byte illegal after ed
	daa
	ld c,d
sub_4e80h:
	ld c,a
	call z,027e4h
	xor d
	xor a
	call z,sub_47a0h
	ld a,a
	rra
	sbc a,(ix-034h)
	ld e,e
	jp p,l7f1eh
	ret z
	res 5,e
	xor d
	or c
	adc a,l
	ld e,l
	ld e,(hl)
	ld a,(hl)
sub_4e9bh:
	sub d
l4e9ch:
	ld a,(de)
l4e9dh:
	or d
	dec sp
	ld b,(hl)
	push af
	add hl,sp
	xor a
	ld e,a
	ld c,a
	jr c,l4e9ch
	jp m,09108h
	or (hl)
sub_4eabh:
	inc sp
	or c
	jp nz,00333h
	or h
	or c
	ld e,a
	cp d
	rst 38h
	jp c,09f43h
	call z,sub_44b8h
	rst 8
	daa
	rra
	xor a
l4ebfh:
	call z,02294h
	add a,c
	call pe,0f37fh
	sub h
	rst 38h
	ld b,a
	or d
	dec (hl)
	call p,0934fh
	ld e,0e0h
	add a,b
	inc sp
	ld (02233h),a
	ld hl,(028c3h)
l4ed8h:
	ld d,d
	ld a,a
	ld c,a
	sub e
	call p,0042dh
	ld de,0f42bh
	rra
	or e
	inc sp
	or c
	cp d
	dec h
	inc (hl)
	ld h,e
	dec hl
	rst 38h
	jp c,09fcfh
	call z,0f272h
	cpl
	call z,0cd7ch
	inc h
	ld c,a
	jr $-74
	rst 20h
	ld h,h
	or 07fh
l4efeh:
	rst 38h
l4effh:
	or 04ch
	ld l,b
	cpl
	or l
	rst 30h
	rrca
	ld b,d
	defb 0fdh,05dh ;ld e,iyl
	ld d,l
	ex (sp),hl
	dec e
	ld d,e
	adc a,c
	add a,(hl)
	res 5,d
	xor 00eh
	xor a
	ld c,a
	ld d,c
	jp m,01587h
	xor d
	cp h
	ld de,08cadh
	ld e,l
	ld a,(hl)
	inc de
	rst 18h
	inc h
	ld c,h
	dec l
	jp p,053aeh
	ld a,a
	jp pe,0f8beh
	sub e
	di
	xor c
	rst 0
	dec bc
	ld d,07fh
	jp l51fah
	ret m
	ld b,08ah
l4f39h:
	inc l
	adc a,b
	ld b,h
	ld (0f2cch),hl
	di
	halt
	call z,005ffh
	call nz,0acc4h
	ld (0ff19h),hl
	ld (de),a
	ld e,l
	call po,03240h
sub_4f4fh:
	inc hl
	xor d
	inc hl
	dec e
	ccf
	rst 30h
	inc l
	jr nc,l4ed8h
	jp p,0f34ch
	ld (0a2aah),a
	inc hl
	jp m,l7ffah
	jr c,l4f39h
l4f64h:
	jp p,01efdh
sub_4f67h:
	jp z,04c4ch
	rst 38h
	or 007h
	call z,0f47ch
	or e
	and e
l4f72h:
	jp nz,l6caah
	ld (hl),e
	xor c
	ld h,e
	and (hl)
	daa
	add a,h
	ld l,e
l4f7ch:
	rst 38h
	or d
	adc a,e
	ld e,h
	or d
	ex de,hl
	ld h,061h
	ld l,d
	add a,c
	rst 28h
	adc a,h
	dec b
	dec (hl)
	ld d,e
	and d
	ld h,d
	rst 38h
	ret po
	dec a
	ld d,a
	call z,01a97h
	ld b,d
	ld d,0f5h
	ld de,l628ch
	rst 38h
	nop
	call m,0c444h
	ld (l42a3h+1),hl
	ld b,d
	ld c,c
	ld (00080h),a
	jr nc,l4f7ch
	dec h
	ld b,e
	call nz,sub_723bh
	and d
	ld d,b
	ld b,h
	ld hl,(034f3h)
	call po,sub_51ach
	dec a
	ld a,l
	cp 000h
	inc hl
	inc h
	inc h
	ld b,e
	ld (0444ch),hl
	ld a,l
	ld c,a
	ld a,a
	ld (hl),c
	ld e,b
	or e
	ld a,(010adh)
	xor h
	ld (hl),e
	ld a,(0aaa4h)
	ld l,(hl)
	inc h
	ld a,a
	call p,02228h
	ld h,(hl)
	ld h,(hl)
	and h
	ret po
	ld b,(hl)
	ld d,l
	defb 0ddh,00ch,0ddh ;illegal sequence
	ld (hl),032h
l4fe1h:
	adc a,c
	ld (bc),a
	ld (hl),d
	ld h,035h
	ld (hl),a
	ld (hl),h
	ld b,(hl)
	call nz,04d98h
	jp pe,09bffh
	push de
	jr nc,l5036h
	ld c,h
	ld b,e
	ld h,h
	and h
	xor c
	call sub_7e9dh
	ld d,l
	sub a
	add a,b
	inc (hl)
	ld (hl),e
	jp nz,0f423h
	in d,(c)
	ld c,h
	pop af
	pop bc
	inc (hl)
	ld c,d
	cp d
	jr l4fe1h
	add a,h
	nop
	rst 18h
	and d
	ld b,a
	dec h
	rst 30h
	ld a,044h
	call p,0d27fh
	rst 0
	ld a,(070c1h)
	inc a
	ld b,e
	ld b,a
	inc sp
	ld (hl),b
	xor d
	and (hl)
	ld a,a
	ld (de),a
	add a,b
	or c
	add a,b
	add hl,bc
	ld l,d
	and e
	dec (hl)
	jp nz,000b0h
	ld (00163h),a
	xor d
	daa
	ld b,h
	ld (hl),d
l5036h:
	inc hl
	xor h
	rst 8
	add hl,hl
	sub d
	ld d,02bh
	inc hl
	ld h,b
	ld h,a
	ld a,a
	ld c,h
	ld b,d
	ld (hl),d
	inc a
	ld b,e
	and a
	cp 08ah
	rst 38h
	and h
	ld d,l
	inc hl
	jp nz,0c240h
	xor a
	jp nc,l50ech
	cp l
	jp m,02f15h
	rst 8
	ld (hl),h
	sub h
	inc hl
	dec (hl)
	add a,c
	nop
	rst 18h
	jp nz,l4a24h
	inc (hl)
	inc h
	adc a,e
	call nc,0ec7fh
	ld c,0fch
	rst 0
	cp d
	inc sp
	ld a,a
	inc hl
	add a,b
	rlca
	ld (hl),0cbh
	inc l
	adc a,c
	ret
	call nz,00b80h
	or d
	cp e
	ld l,c
	ld a,a
	ld a,(de)
	defb 0ddh,000h,0d6h ;illegal sequence
	inc h
	and (hl)
	and e
	jp nc,0fb98h
	and d
	daa
	and a
	ld a,a
	add a,c
	ld (de),a
	ld (02b08h),hl
	rst 38h
	ld d,e
	jp c,008a8h
l5096h:
	ld b,h
	and h
	add hl,hl
	call nz,034cfh
	ld h,a
	dec sp
	dec e
	ld c,h
	adc a,a
	dec a
	ld (hl),h
	ld d,e
	ld h,h
	call p,00995h
	ld b,h
	out (011h),a
	ld b,d
	ld hl,(0a998h)
	call m,034a4h
	daa
	rst 8
	rst 8
	adc a,a
	rst 38h
	or c
	ld b,d
	add hl,hl
	add a,e
	ld d,l
	ld e,h
	ld b,e
	dec b
	ld h,0f3h
	djnz $-58
	ld h,d
	cp h
	ld b,c
	ld b,h
	ld (hl),a
	ld (hl),a
	ld c,b
	dec hl
	add a,d
	ld h,0d0h
	ld a,a
l50cfh:
	pop de
	dec e
	ld de,04cd3h
sub_50d4h:
	push de
	sbc a,c
	ld l,d
	dec b
	or h
	ld (hl),a
	ld hl,(02462h)
	jp p,0cc44h
	ld (hl),d
	add a,b
	ld h,e
	and a
	ld a,a
	ld c,b
	jp nz,l6342h
	inc (hl)
	ld b,d
	ld e,a
l50ech:
	xor h
	inc hl
	push hl
	nop
	or d
	daa
	ld c,a
	call z,03327h
	out (0aeh),a
	or h
	add a,b
	ei
	dec a
	inc sp
	ld (hl),d
	rst 8
	call nz,0a88ah
	rla
	sbc a,c
	sub a
	jp m,034fdh
	sbc a,e
	ld b,a
	inc h
l510bh:
	cpl
	ld a,a
	ret c
	rst 8
	pop de
	ld a,a
	dec (hl)
	dec (hl)
	ld d,h
	rst 38h
	add hl,hl
	ld bc,l6612h
	call nz,009f7h
	inc l
	push bc
	and h
	add a,c
	push bc
	cp e
	add a,d
	ld h,d
	dec a
	ld a,a
	cp h
	add a,b
	dec bc
	push de
	pop de
	out (0a3h),a
	ld c,h
	ld c,009h
	ld l,d
	inc h
	add a,c
	ld c,b
	add a,b
	push bc
	dec hl
	or c
	and h
	add a,b
	ret nz
	ld c,d
	inc h
	and e
	scf
	inc hl
	ld b,(hl)
	inc a
	or d
	add hl,bc
	ld hl,(0a442h)
	or d
	inc de
	inc h
	ld b,e
	and h
	ld c,a
	sub d
	jp z,l7f33h
	jp pe,01dcah
	dec hl
	and d
	ld a,(0884fh)
	ld hl,04255h
	and a
	rst 30h
	rst 38h
	ld e,a
	ld h,h
	bit 1,h
	ld b,e
	ld a,a
	inc d
	ld d,l
	ld d,h
	jp 080feh
	and (hl)
	ld h,(hl)
	ld b,h
	ld h,0a6h
	ld d,h
	ld (l748ch),hl
	sbc a,d
	add a,c
	add a,b
	ld d,b
	ld hl,(08b35h)
	cp 07fh
	ld sp,0d304h
	dec de
	jr z,l51bdh
	adc a,a
	or e
	ret pe
	and b
	pop de
	call p,0327fh
	cp e
	ld a,a
	jp nc,07322h
	ld (020d9h),a
	ld (0a33ch),hl
	and e
	nop
	and d
	inc h
	ld (hl),h
	ld (hl),h
	call m,sub_43c2h
	and l
	add hl,sp
	inc sp
	inc h
	ld c,a
	dec b
	ld b,d
	and e
	ld e,d
	and h
	inc l
l51aah:
	add a,b
	inc de
sub_51ach:
	add a,c
	sub c
	or l
	ld bc,022c3h
	ld (hl),d
	ld b,h
	inc hl
	inc (hl)
	cp 01fh
	ld h,h
	rst 38h
	ld h,d
	ld (hl),e
	xor d
l51bdh:
	ld (hl),h
	ld d,a
	jp z,0fd8ch
	ld c,c
	ld h,(hl)
	ld e,(iy+024h)
	ld h,d
	cp d
	ld c,e
	ld h,h
	add a,b
	jr l524dh
	ld de,l7fd9h
	ld (bc),a
	dec e
	ex (sp),hl
	ld l,b
	ld (hl),0b2h
	adc a,(hl)
	call z,sub_7ce5h
	add a,e
	ld h,b
	dec hl
	or a
	ld c,h
	and d
	or e
	exx
	ld l,b
	push af
	sub l
	and h
	sub h
	ld hl,(0b2f3h)
	sbc a,h
	rst 18h
	ret nz
	pop hl
	and e
	ld b,d
	sub e
sub_51f2h:
	add a,a
	ld a,a
	pop bc
l51f5h:
	ld l,d
	adc a,h
	inc hl
	cpl
	push bc
l51fah:
	jp pe,01217h
	ld bc,0323fh
	daa
	ld c,d
	ld b,e
	daa
	call p,01380h
	rst 8
	ld a,a
	ret p
	add hl,bc
	scf
	jp z,0a22eh
	inc sp
l5210h:
	dec h
	cp h
	rst 18h
	ld c,e
	ld h,062h
	add a,e
	pop bc
	or a
	or d
	ld h,0ffh
	dec e
	inc hl
	ld de,09480h
	inc sp
	add a,d
	sub l
	dec de
	ld a,d
	xor (hl)
	ld (hl),0a5h
	jr l52aah
	ld b,h
	ret z
	add a,b
	ld a,d
	ld b,h
	add hl,hl
	ld c,d
	jp z,0228eh
	rst 38h
	inc d
	ld c,h
	jp m,l7533h
	add a,(hl)
	ld e,h
	ld c,a
	ret nc
	ret p
	xor d
	dec d
	inc l
	inc sp
	ccf
	jp 0a952h
	and (hl)
	xor h
	ret
	ld l,034h
l524dh:
	ld a,a
	cp 0fbh
	ld a,a
	ld a,0a2h
	sub c
	rst 28h
	ld a,(00c7bh)
	dec sp
	jp nz,030a6h
	djnz l5210h
	inc l
	ld b,d
	ld a,(hl)
	ld (0234bh),hl
	xor d
	scf
	add a,e
	ld d,l
	ld (hl),d
	add a,b
	rst 38h
	inc a
	ld c,e
	add a,h
	inc b
	dec e
	ld d,e
	ld a,a
	and (hl)
	sbc a,d
	sbc a,e
	defb 0edh ;next byte illegal after ed
	ld hl,(0814dh)
	ld c,c
	rst 38h
	inc (hl)
	nop
	jp nz,019a3h
	ccf
	ld (033c2h),hl
	xor e
	ld h,0b5h
	ld h,h
	ex af,af'
	daa
l528ah:
	xor 07fh
	ld b,c
	ld l,c
	inc l
	out (0f4h),a
	ld (hl),l
	ret m
	ld h,l
	ex af,af'
	defb 0fdh,092h,03ah ;illegal sequence
	ret nc
	call 0fa00h
	ld a,a
	pop de
	cp d
	ret m
	ld b,0a2h
	ld l,d
	scf
	rst 0
	ld a,(hl)
	push bc
	ld sp,07b47h
l52aah:
	call m,0b449h
	in a,(0a2h)
	sbc a,0c4h
	ld b,a
	ld h,e
	add a,b
	or c
	add a,e
	dec hl
	add a,l
	jr $-33
	adc a,e
	add a,b
	sub e
sub_52bdh:
	ld c,c
	sbc a,e
	adc a,c
	dec hl
	ld c,a
	ei
	ld c,b
	rst 38h
	jp z,08181h
	call p,04c2ah
	inc h
	jp nz,0847eh
	ld (hl),h
	call nz,sub_4b8fh
	jp z,09de8h
	ld b,h
	ld a,a
	add a,l
	ld (hl),h
	ld b,d
	inc l
	ccf
	and (hl)
	inc b
	ld a,a
	ld (hl),h
	add a,c
	ret po
	cpl
	ld b,d
	rst 30h
	jr c,l528ah
	ld a,a
	adc a,a
	adc a,a
	rst 38h
l52ech:
	cp d
	pop bc
	and h
	ld hl,(l4dbdh)
	or a
	ld a,a
	adc a,c
	jp m,l77b4h
	inc (hl)
	or a
l52fah:
	ex (sp),hl
	and c
	adc a,c
	ld (hl),h
	jp nz,08079h
	ld b,l
	sub a
	ld c,(hl)
	defb 0ddh,07fh,0e5h ;illegal sequence
	add a,d
	ld (l4ae9h),a
	ld h,(hl)
	xor 0cdh
	add a,c
	and d
	add a,h
	rst 8
	ld h,l
	ei
	rst 10h
	push af
	inc h
	ld c,a
l5318h:
	dec c
	ld b,a
	defb 0fdh,0d1h,001h ;illegal sequence
	call m,09bbah
	and e
	ld (hl),h
l5322h:
	rst 38h
	cp e
	ex af,af'
	ld b,h
	ld a,a
	rst 8
	xor e
	ld c,047h
	rst 30h
	sub d
	sub a
	ld b,c
	sbc a,d
	jp m,l48fch
	sub a
	ret z
	cp 0fah
	ret p
	cp 0b9h
	xor b
	or h
	defb 0edh ;next byte illegal after ed
	jr nz,l52fah
	call nz,0c8bbh
	nop
	call m,0c495h
	cp 026h
	ld d,l
	ret pe
	dec de
	ld h,064h
	ld c,h
	pop de
	ld h,a
	add a,d
	daa
	dec e
	ld d,c
	ld a,a
	ld d,d
	add a,d
sub_5357h:
	jr l538eh
	and d
	cp 0a8h
	inc h
	call 003ddh
	or d
	sub 0f3h
	daa
	ld c,h
	cp (hl)
	ld h,h
	ld a,(bc)
	bit 4,a
	xor e
	ld (hl),a
	ld h,h
	ld d,c
	sub h
	ld b,d
	inc bc
	ld a,d
	cp a
	rst 8
	and c
	ld b,h
	rst 30h
	add a,h
	sub c
	sbc a,h
	rrca
	rst 38h
	rst 30h
	rst 38h
	ld a,(hl)
	or (hl)
	nop
	ld b,h
	rst 0
	push hl
	cp e
	ld h,c
	ld b,a
	ld a,a
	or a
	ld (hl),a
	rst 30h
	cp d
	ld c,h
	ret po
l538eh:
	ld a,(hl)
	ld h,(hl)
	inc sp
	inc sp
	ld a,h
	call nz,0830ch
	inc sp
	add a,c
	add a,a
	ld sp,l787fh
	adc a,c
	ld hl,(01153h)
	add a,d
	inc c
	xor e
	cp h
	ld d,b
	call c,0808ch
	ld a,h
	ld c,e
	cp h
	ld b,d
	call m,0f44bh
l53afh:
	ld (hl),d
	cp h
	sbc a,b
	dec hl
	or e
	sub a
	ld (08af8h),hl
	sub c
	ld l,l
	sbc a,e
	adc a,h
	ret nz
	ld d,c
	xor e
	and c
	sbc a,b
	ei
	ld c,b
	ld c,h
	jp l5db4h
	res 0,a
	xor a
	ld b,h
	xor l
	xor h
	rst 38h
	ld a,l
	add a,d
	ld a,(0a772h)
	ld a,h
	ld a,(de)
	call nz,02277h
	cp 001h
	ld h,d
	ld h,02ch
	ld (hl),l
	ld a,(08362h)
	sub h
	rst 30h
	ld e,d
	in a,(04ah)
	ex de,hl
	xor b
	res 0,e
	ld de,03d3ah
	ld de,0e280h
	ld a,(l7ea6h)
	add a,e
	ld b,(hl)
	or a
	pop hl
	inc hl
	rst 8
	add a,b
	inc l
	add a,c
	ld a,(bc)
	cp a
	set 1,h
	ld c,e
	inc b
	rst 38h
	jr nc,l53afh
	ld b,a
	ld b,d
l5407h:
	and h
	rrca
	or a
	ld (hl),h
	ld (hl),a
	call z,0bb25h
	rlca
	sub a
	ld h,c
	and e
	cp a
	ld d,(hl)
	ld (bc),a
	bit 1,h
	or h
	rst 8
	cp h
	add a,h
	jr z,$-102
	add a,0cfh
	add a,b
	dec a
	xor l
	ld c,e
	ret nz
	adc a,d
	dec hl
	ld (002adh),a
	call z,023b2h
	ld (hl),0fbh
	pop hl
	inc sp
	ld d,h
	jp nz,05e7eh
	ld sp,hl
	ld d,055h
	ld d,e
	add a,b
	adc a,a
	or d
	sbc a,d
	sub h
	rst 0
	sub e
	dec l
	ld h,l
	add a,b
	adc a,d
	add a,d
	ld l,b
	xor d
l5447h:
	ld h,094h
	dec e
	ld (hl),a
	ld d,e
	add a,b
	ld (hl),d
	call m,0b451h
	inc b
	add a,c
	ld c,c
	adc a,(hl)
	sub d
	pop hl
	xor e
	rst 8
	add a,c
	jr nz,l5407h
	bit 7,e
	inc b
	xor e
	ld c,e
	xor d
	cp h
	cp d
	defb 0fdh,043h,0cch ;illegal sequence
	cp d
	xor a
	add a,a
	ld (hl),d
	ld a,l
	sbc a,d
	jr nz,$+77
	or c
sub_5470h:
	sub l
	defb 0fdh,0f6h,0c6h ;illegal sequence
	xor b
	inc b
	xor d
	scf
	ld (hl),d
	and l
	and l
	and (hl)
	di
	call nc,sub_4cf9h
	adc a,d
	daa
	push af
	call po,0eed2h
	ex af,af'
	ld a,(bc)
	dec sp
	or d
	or h
	ld (hl),h
	ld e,(hl)
	push bc
	ld l,b
	add a,(hl)
	sub h
	dec (hl)
	add a,c
	defb 0ddh,083h,093h ;illegal sequence
	add a,c
	jr l54c4h
	dec hl
	sbc a,c
	ld h,a
	rst 38h
	add hl,de
	nop
	exx
	ld (de),a
	ld a,e
	out (c),c
	xor 031h
	ld b,h
	cp h
	add a,c
	ld d,b
	xor h
	cp d
	or a
	ld a,(bc)
	ld a,d
	xor e
	ld c,d
	xor e
	adc a,d
	add hl,bc
	jp m,0fb3bh
	inc hl
	ret p
	jr nc,l5532h
	call p,0adb4h
	ld hl,0effdh
	push bc
	ld a,a
	or e
l54c4h:
	ld iy,l44b7h
	call nz,0f835h
	sbc a,h
	adc a,c
	ld d,b
	adc a,b
	call z,sub_7b32h
	cp e
	ei
	ld e,b
	cp d
	sub d
	inc hl
	ld c,c
	ld b,a
	jp z,09b66h
	ret pe
	rrca
	ld (hl),a
	ld b,a
	inc sp
	add a,a
	ret po
	push de
	ld d,l
	push de
	nop
	ld d,e
	ld hl,019ffh
	ld d,l
	push bc
	add a,l
	ld hl,0ff4ch
	dec b
	cp c
	push bc
	and b
	ld c,d
	inc a
	ld c,d
	xor h
	jp z,03b01h
	jp 0ca3ch
	and h
	jp 011a4h
	cp c
	ld d,005h
	daa
	call nz,0cf06h
	nop
	inc sp
	rst 38h
	push af
	ret nc
	and d
	ld b,h
	or d
l5513h:
	add a,b
	xor h
	adc a,h
	nop
	cp h
	push af
	xor d
	pop de
	inc bc
	exx
	ret nc
	ld (hl),h
	inc de
	adc a,d
	ld c,a
	ld a,d
	rst 20h
	sbc a,e
	or h
	sbc a,c
	call po,0c295h
	nop
	ld (08e22h),a
	inc l
	ld (0159bh),hl
l5532h:
	ld c,h
	ld a,a
	ld d,l
	ld b,l
	jp po,0d98ah
	ld b,093h
	push bc
	add a,c
	ccf
	jp z,0cb3ch
	ld a,l
	ld (081bch),hl
	jp pe,08ef4h
	ld (0d286h),a
	inc d
	ret
	ld (bc),a
	xor b
	ld h,c
	call nz,sub_5f81h
	ld e,h
	cp a
	sbc a,h
	nop
	cp b
	rst 8
	ld l,h
	sbc a,l
	xor a
	jp (hl)
	djnz $+1
	ld (hl),04ah
	jp c,00df4h
	bit 6,c
	cp e
	nop
	call p,00d47h
	ld de,l7f73h
	call nz,05e2dh
	defb 0edh ;next byte illegal after ed
	di
	ld (bc),a
	sub b
	jp pe,0014bh
	xor h
l5579h:
	res 7,a
	rst 30h
	cp h
	jp m,081b4h
	ld h,l
	sbc a,d
	rst 28h
	ld (bc),a
	ld d,e
	add a,(hl)
	sbc a,d
	adc a,e
	ld b,l
	adc a,e
	rst 38h
	rra
	ld e,a
	ld a,a
	ld a,c
	ld l,l
	ld bc,0059bh
	nop
	push hl
	cp c
	add hl,hl
	ld c,0e7h
	ret p
	ld a,e
	sbc a,e
	inc e
	add hl,hl
	call p,0d47eh
	ld d,(hl)
	call m,035f3h
	rst 0
	sbc a,h
	ld d,h
	call p,09e4fh
	ld bc,0ecfbh
	rst 0
	pop af
	or l
	halt
	cp d
	xor (hl)
	sub l
	dec c
	add a,b
	cp l
	sbc a,d
	nop
	ld sp,01d3eh
	ld e,a
	ld (024ffh),hl
	sbc a,d
	sub (hl)
	and l
	rra
	sbc a,d
	ld h,(hl)
	rlca
	ld c,01fh
	rst 38h
	pop af
	dec bc
	ld l,007h
	inc c
l55d0h:
	ld sp,0f112h
	ld a,(bc)
	cp a
	nop
	adc a,b
	push af
	adc a,l
	ld (hl),015h
	rst 38h
	xor (hl)
	or b
	add hl,bc
	jp p,0f85dh
	inc (hl)
	dec c
	pop de
	ld d,d
	dec b
	cp b
	dec e
	inc h
	ret m
	ld a,a
	halt
	ld (bc),a
	ld l,c
	and a
	ld bc,01105h
	ld c,03ah
	ld a,b
	ld de,l7ffch
	call c,0c8e3h
	in a,(0bch)
	or 0d7h
	ld a,a
	dec (hl)
	inc (hl)
	ret nz
	dec d
	ld l,c
	and d
	rla
	ld h,(hl)
	ld l,a
	inc h
	call nz,sub_7cffh
	ld e,b
	ld (bc),a
	ld de,0838eh
	ld a,b
	dec bc
	adc a,(hl)
	add a,h
	inc hl
	add a,c
	ld a,a
	ld a,a
	add hl,hl
	dec (hl)
	ld (hl),007h
	inc de
	cpl
	ld h,032h
	ld a,a
	rrca
	rst 18h
	inc e
	ld (hl),a
	push de
	rla
	ld (bc),a
	ld (hl),02fh
	inc hl
	rst 38h
	ld sp,0ffafh
	rra
	inc l
	add a,e
	ld (hl),c
	ld l,l
	sbc a,h
	halt
	jr c,$+1
	inc c
	call m,0947fh
	jp p,088dah
	dec h
	ld e,c
	ld (034f2h),a
	ld h,e
	ld d,e
	inc c
	ld h,l
	cpl
	rst 30h
	rra
	jr nc,$+39
	ld (0fa04h),hl
	ld d,e
	ld b,l
	ld h,09ah
	dec h
	ld (09c2fh),a
	sbc a,a
	rst 38h
	adc a,e
sub_565eh:
	ld (hl),a
	adc a,h
	inc bc
	adc a,(hl)
	rst 38h
	inc sp
	ld (hl),h
	inc c
	xor d
	adc a,a
	ld e,a
	ld a,a
	jp nz,02501h
	ld (hl),0ffh
	ld hl,03252h
l5672h:
	ld l,a
	call p,0dda4h
	jp (hl)
	ld h,061h
	ld a,a
	ld a,b
	rst 30h
	ld d,l
sub_567dh:
	ld b,a
	and d
	sbc a,c
	ld hl,035a5h
	and e
	cpl
	inc e
	inc d
	and d
	cpl
	and c
	sub c
	and b
	ld c,d
	and b
	ld de,02f51h
	add a,h
	ld b,a
	sbc a,a
	pop bc
	nop
	ei
	call nz,sub_51f2h
	exx
	ld h,b
	ld h,06fh
	jp p,0a31ah
	ld d,c
	pop de
	dec c
	ld d,08fh
	ld (hl),h
	ld de,0e553h
	jr c,l5711h
	and d
	sub c
	inc d
	sbc a,d
	defb 0fdh,012h,0c6h ;illegal sequence
	ld a,(bc)
	defb 0fdh,014h,044h ;illegal sequence
	sbc a,b
	dec h
	sub d
	and l
	xor d
	ld l,037h
	or e
	ret c
	xor b
	call po,0efe2h
	cp b
	adc a,l
	di
	jp po,0f702h
	ld d,a
	rlca
	jr c,$+27
	ld l,a
	call m,0e080h
	ld c,h
	sub 062h
	ld (hl),025h
	ld d,d
	ld l,e
	sbc a,046h
	ld e,a
	dec c
	add hl,bc
	ld l,a
	inc hl
	ld d,c
	jp pe,09427h
	ld (hl),e
	nop
	ld b,032h
	dec c
	ret m
	ld h,l
	cpl
	and c
	ld h,b
	dec d
	and (hl)
	ld h,(hl)
	ld b,c
	cpl
	ld c,055h
	ld hl,(01361h)
	add a,b
	inc l
	call p,0b7eeh
	ld a,(bc)
	ld d,c
sub_56ffh:
	and l
	ld a,(de)
	ld a,h
	ret p
	jp po,0b9efh
	sbc a,(hl)
	call m,00237h
	ld a,a
	adc a,e
	adc a,d
	ld h,h
	ei
	ld h,c
	rlca
l5711h:
	ld d,(hl)
	dec d
	cp e
	ld a,e
	call z,0d87fh
	ld (de),a
	dec l
	ld h,(hl)
	ld h,e
	ld sp,hl
	add a,a
	inc hl
	rst 18h
	sub h
	inc b
	add a,a
	push bc
	xor d
	ld (0adedh),hl
	sub c
	ex af,af'
	ld d,(hl)
	jp m,091afh
	ld h,d
	adc a,b
	rla
	ccf
	ld hl,(0a032h)
	add a,a
	inc de
	ld hl,(0072ch)
	ld h,(hl)
	ld h,(hl)
	ld a,a
	ld a,(004fch)
	rst 30h
	ld h,(hl)
	ld l,d
	ld h,(hl)
	add a,b
	ld c,d
	ld l,a
	call p,080e2h
	sbc a,h
	dec l
	adc a,(hl)
	adc a,b
	rst 38h
	and 099h
	ld d,(hl)
	cp e
	ld h,a
	sub 0b1h
	ex (sp),hl
	ld a,a
	adc a,e
	sub (hl)
	rst 38h
	ld e,(hl)
	sub l
	ld (hl),053h
	ld c,a
	adc a,b
	inc h
	ld (hl),e
	ld d,c
	ld d,c
	ld e,c
	xor a
	and 001h
	ld l,c
	ld a,(hl)
	dec (hl)
	ld h,c
	or 018h
	ld d,c
	inc hl
	ld h,l
	ld (08580h),a
	jp p,0c198h
	and c
	ld d,c
	ld d,d
	xor a
	ld (08697h),hl
	adc a,e
	ld h,(hl)
	adc a,l
	ld e,b
sub_5783h:
	rst 10h
	add a,d
	ld h,l
	ld d,a
	ld a,a
	or 00bh
	dec hl
	ld l,d
	ld h,l
	call p,0ed99h
	ld e,e
	di
	and 0ffh
	inc a
	or h
	add hl,de
	ld d,(hl)
	ld h,(hl)
	add a,c
	nop
	ld l,h
	call p,05675h
	ld a,h
	ld a,a
	push af
	rra
	ld h,e
	ld d,(hl)
	jp p,0fc01h
	dec h
	ld d,e
	inc h
	jp p,0ce31h
	dec d
	ld a,c
	ld a,h
	sub d
	ret m
	sub a
	xor 093h
	sub d
	adc a,c
	ld h,(hl)
	add a,(hl)
	exx
	push af
	ld b,b
	xor a
	jp m,0a115h
	ld c,d
	ld (03522h),a
	ld (09d12h),hl
	sbc a,h
	call nz,0f093h
	adc a,c
	ld (hl),a
	rst 38h
	ld (hl),b
	ld (hl),a
	sub l
	ld h,(hl)
	ld e,a
	xor a
	call m,08374h
	push bc
	or 0b1h
	rst 30h
	ld e,h
	ld l,e
	sub (hl)
	ld b,h
	ld hl,(0a77ch)
	defb 0ddh,09bh,049h ;illegal sequence
	inc l
	ld d,c
	add a,b
	ld a,d
	adc a,h
	ld (06c66h),hl
	ld b,l
	ld b,d
	ret po
	ld l,a
	inc b
	and e
	ld de,0f23fh
	ld (hl),c
	dec (hl)
	sub d
	ex de,hl
	ld (hl),h
	sub e
	ld h,l
	call m,sub_6f77h
	push af
	xor e
	sbc a,b
	ret z
	rst 38h
	and d
	cp 092h
	ld sp,iy
	xor e
	ld hl,l6ac8h
	ld a,a
	xor c
	xor (hl)
	or h
	ld h,b
	ld a,e
	ld h,(hl)
	ld (hl),h
	ld h,a
	or c
	halt
	dec d
	ld l,e
	ld a,e
	cpl
	in a,(0f6h)
	adc a,b
	or a
	or (hl)
	ld l,e
	ld a,c
	or (hl)
	ld h,(hl)
	and e
	add a,c
	add a,c
	sbc a,(hl)
	cp d
	ld d,h
	jp c,02150h
	dec (hl)
	inc h
	ld c,a
	jp p,01362h
	inc c
	inc sp
	adc a,c
	pop hl
	ld sp,l59ebh
	sub c
	dec d
	ld l,l
	sbc a,d
	ld hl,03651h
	sub l
	add a,h
	add a,h
	jp nz,011f3h
	ld d,d
	add a,e
	ld hl,03145h
	cpl
	ld h,04bh
	sub a
	jr l5855h
l5855h:
	ld a,a
	adc a,b
	call m,0cfb7h
	ld bc,l51f5h
	ld de,l72abh
	dec h
	ld c,h
	ld d,a
	call p,0f704h
	ld d,d
	dec hl
	ld a,d
	cp a
	ld b,l
	ld e,h
	call m,00a2ah
	ld e,a
	add a,e
	jp c,06d42h
	ld h,l
	defb 0ddh,0fdh,08bh ;illegal sequence
	adc a,l
	inc e
	ld b,(hl)
	or (hl)
	add hl,sp
	ccf
	ld a,(bc)
	daa
	jp m,0ec35h
	ld hl,0ff79h
	ld d,c
	rra
	jp p,l4518h
	ld h,(hl)
	ld d,l
	adc a,c
	ld (hl),a
	ret c
	ld b,c
	jp p,l7f54h
	call m,sub_50d4h
	or a
	ld e,e
	cp e
	ex af,af'
	ld a,(de)
	ld a,e
	ld h,l
	rla
	jp c,000fah
	ld (hl),c
	jp nc,0a1b7h
	cp e
	cp l
	ld (0cf77h),hl
sub_58abh:
	call m,081a2h
	and a
	ld e,(hl)
l58b0h:
	or c
	call m,01f42h
	ld l,b
	inc c
	jp p,0f152h
	or c
	jp (hl)
	pop af
	jp 00b3bh
	jp nz,0f2f2h
	call nz,0dbf1h
	ret pe
	pop de
	ccf
	ld de,0fc10h
	ld b,h
	jp nz,l5322h
	ld e,a
	ld (de),a
	ld h,a
	ld c,h
	or d
	ld (0275ah),hl
	rst 38h
	add a,b
	ret nz
	ld a,(de)
	cp h
	rst 30h
	or c
	rrca
	xor h
	ld l,e
	pop de
	rst 8
	ld d,(hl)
	sbc a,h
	dec e
	halt
	inc b
	jp z,0bf1bh
	rst 0
	ld h,c
	xor d
	ld b,c
	rst 38h
	ld (hl),d
	ld h,l
	ld d,d
	ld a,a
	push af
	ret
	call nz,sub_71e5h
	call p,0c324h
	ld c,c
	add a,04bh
	cp a
	ld e,e
	pop bc
	ld e,e
	inc bc
	sub h
	ret m
	ld (hl),e
	inc c
	jp p,01160h
	call p,01166h
	rst 0
	ld h,h
	di
	dec h
	ld (0307ch),hl
	pop bc
	ld d,(hl)
	ld h,a
	jp nc,l4188h
	ld b,b
	xor h
	inc bc
	ld (hl),l
	xor h
	call z,0bf51h
	or l
	ld b,0e6h
	jp po,01281h
	rst 30h
	dec d
	call z,sub_5bcah
	ex af,af'
	jr $-52
	rla
	dec c
	halt
	ld d,e
	ld h,l
	add a,b
	call nc,01acch
	ld b,(hl)
	ld (0d61fh),hl
	add hl,de
	ld c,h
	pop af
	or d
	call z,sub_7383h
	dec bc
	xor d
	rra
	adc a,e
	or (hl)
	inc c
	inc bc
	dec d
	ld (de),a
	ld e,a
	ld de,000f9h
	call m,0257fh
	ld e,a
	sub 062h
	ld c,h
	jp nc,0f647h
	ld h,a
	inc bc
l595eh:
	and b
	or c
	ld a,e
	ld l,h
	ld c,c
	rst 38h
	rst 10h
	adc a,d
	jr z,$-82
	adc a,e
	xor d
	ld d,h
	jp po,01380h
	add a,0a5h
	ld e,d
	rst 38h
l5972h:
	ld d,a
	ld c,a
	sub e
	inc l
	or a
	sbc a,04ah
	ld c,046h
	or a
	ld h,(hl)
	rst 38h
	ld a,055h
	ld b,h
	add a,b
	jp nz,l4f64h
	rst 8
	rst 38h
	jr c,$-8
	push bc
	dec a
	jp 0ff88h
	sub 033h
	inc c
	rst 18h
	adc a,060h
	rst 8
	ld b,h
	ld (02726h),hl
	ld e,a
	call z,014fdh
	ld a,(bc)
	jp nc,0ccc2h
	dec h
	cp h
	exx
	jp l7257h
	ld d,a
	ld a,c
	jp p,08eafh
	ld l,d
	adc a,c
	di
	dec bc
	ld (hl),b
	ld (bc),a
	jp p,05c27h
	ld (hl),l
	and l
	rst 0
	ld hl,(0fc56h)
	xor l
	ld h,a
	ld b,a
	inc bc
	nop
	jp nc,011c4h
	ld (hl),d
	ld a,h
	rst 8
	or c
	sbc a,h
	ld l,d
	ld (hl),e
	inc bc
	cp (hl)
	cp h
	and e
	di
	rst 38h
	sbc a,e
	set 5,d
	xor b
	ld d,c
	ld (hl),d
	cp 01ch
	ld b,h
	or b
	push af
	ld h,d
	dec hl
	ld c,(hl)
	ld h,08bh
	ld (0b766h),hl
	add a,a
	dec h
	ld b,l
	ld h,d
	ld sp,hl
	xor 031h
	add a,h
l59ebh:
	call nz,sub_72b2h
	rra
	ld (l5447h),hl
	inc h
	cp e
sub_59f4h:
	ld h,d
	and l
	jp po,0fc6ah
	or b
	ld hl,l5fb2h
	rst 8
	add a,b
	ld c,a
	ld e,l
	sbc a,(hl)
	ret m
	sub 0f9h
	rst 10h
	xor e
	add a,(hl)
	adc a,e
	xor d
	cpl
	xor c
	ld a,l
	ld d,04ch
	ret c
	push de
	call m,sub_47c4h
	call z,sub_7600h
	ld e,b
	ld a,a
	rst 10h
	ld a,h
	ld c,l
	jp p,l748ch
	call nz,sub_78feh
	ld b,(hl)
	or c
	ret pe
	ld a,a
	halt
	cpl
	rst 30h
	ld c,h
	rst 8
	jr nz,l5a54h
	daa
	ld h,b
	ld b,a
	add a,d
	ld h,l
	adc a,a
	rst 38h
	xor b
	ld (0126fh),hl
	call p,0afffh
	ld b,0c2h
	sbc a,0adh
	ret m
	ld b,d
	ld e,d
	ld (03a93h),hl
	inc hl
	ld (0842ch),hl
	xor e
	add a,e
	dec h
	ld (bc),a
	rst 38h
	and b
	sub c
	and d
	adc a,c
	xor a
	daa
l5a54h:
	cpl
	ld h,(hl)
	and d
	ei
	ld d,(hl)
	ld a,e
	jp nc,0cca0h
	jp p,0b6cch
	or b
	add a,e
	rst 30h
	ld (hl),a
	ld de,01a76h
	rst 8
	rst 38h
	or c
	cp 0e3h
	cp (hl)
	ld c,e
	ld a,a
	and c
	ld hl,07ba7h
	ld a,a
	xor a
	djnz l5ae2h
	call z,0306fh
	call m,0ad67h
	jp m,0b97fh
	call m,sub_708ch
	adc a,(hl)
l5a84h:
	call m,09265h
	or l
	ld b,(hl)
	jp z,0e279h
	nop
	push af
	adc a,b
	ld e,d
	and l
l5a91h:
	ex de,hl
	ret po
	jp m,0f4bch
	ld c,d
	ld l,h
	ld a,c
	cp a
	adc a,d
	pop de
	halt
	ld e,e
	ld e,d
	ld a,a
	or c
	cp 0e5h
	adc a,e
	ld c,l
	inc bc
	rra
	dec h
	ld (hl),l
	and a
	ld l,h
	inc l
	ld h,c
	daa
	jp nz,0fb7fh
	add a,h
	exx
	defb 0fdh,01fh,03dh ;illegal sequence
	call pe,0bfech
	ld l,h
	inc (hl)
	ld e,a
	sbc a,l
	ex de,hl
	and (hl)
	add a,(hl)
	inc l
	rst 28h
	ld (hl),a
	ld (hl),h
	ret c
	inc de
	or 0b5h
	ld (hl),c
	add a,l
	ld hl,(0d6f3h)
	jr c,l5a91h
	add hl,bc
	rra
	cpl
	rst 38h
	ld hl,(040aeh)
	call p,01176h
	and a
	defb 0fdh,0d7h,00ah ;illegal sequence
	daa
	ld d,l
	ld d,(hl)
	rst 8
	rst 38h
l5ae2h:
	ld sp,hl
	ld b,(hl)
	dec h
	push de
	halt
	ex af,af'
	call po,sub_7b27h
	call m,0cb7ch
	ld a,a
	pop af
	ld sp,hl
	ld d,e
	or e
	dec (hl)
	jp m,0e6b8h
	ld h,e
	add a,e
	inc (hl)
	call z,00ac7h
	dec sp
	ld c,c
	ld h,(hl)
	ld (hl),l
	rla
	sbc a,c
	ld a,(de)
	xor a
	cp d
	sub l
	rst 38h
	or b
	ld (hl),d
	ld d,d
	inc b
	push af
	ld a,e
	push de
	ld a,(de)
	ld (hl),a
	inc e
	ld c,h
	inc h
l5b14h:
	rst 30h
	ld (hl),l
	rst 38h
	cp (hl)
	rst 38h
	cp c
	ld h,d
	sbc a,d
	call p,05ab4h
	inc de
	and c
	ld d,a
	cp a
	xor a
	ld c,b
	ld sp,hl
	ld h,c
	dec b
	push de
	or a
	ld e,a
	dec h
	daa
	rst 38h
	ld a,l
	ex af,af'
	cpl
	rst 38h
	push de
	rra
	ret m
	ld a,b
	sbc a,0f7h
	and 07fh
	jp pe,0f1ceh
	ret nc
	and 09bh
	xor c
	ld a,a
	ld c,a
	sub d
	xor h
	ld e,l
	add a,b
	ld e,0b3h
	nop
	cpl
	add a,a
	adc a,b
	in a,(080h)
	xor h
	ld (hl),l
	inc e
	or l
	ld e,e
	or a
	sub d
	add a,l
	add a,d
	dec h
	ld a,d
	ld a,a
	sbc a,d
	add hl,sp
	ld (hl),h
	add a,a
	push af
	ld (hl),l
	ld d,b
	dec b
	ld d,a
	ld e,a
	xor b
	ld l,(hl)
	inc b
	inc d
	and c
	xor e
	ld a,h
	ld (hl),l
	ld c,e
	add a,e
	ld h,0c1h
	ld d,a
	add a,056h
	jr nz,l5bd9h
	rst 38h
	push hl
	dec a
	ld (hl),0ffh
	or d
	sbc a,h
	ret m
	xor 0ffh
	inc a
	or (hl)
	add hl,de
	adc a,b
	ld (hl),d
	push bc
	dec l
	sub l
	ret c
	rst 30h
	sub e
	ld c,a
	add a,c
	or e
	nop
	ld (l7480h),a
	ld l,a
	ld b,l
	inc l
	call c,0fcc6h
	sub e
	rst 10h
	defb 0ddh,065h ;ld ixh,ixl
	ld b,(hl)
	ld a,a
	and a
	sub l
	adc a,d
	ld b,c
	cpl
	call z,0b5c1h
	ld d,b
	ret nz
	ld d,h
	inc e
	rst 8
	ld d,c
	jp nz,0c1f4h
	ret po
	call m,0a761h
	res 4,d
	ld hl,0a632h
	rrca
	call 0f257h
	ld d,(hl)
	and d
	ld a,d
	ld e,c
	ld h,e
	call p,083e1h
	ld c,e
	jp po,0f12bh
	dec d
	rst 28h
sub_5bcah:
	rst 28h
	adc a,(hl)
	dec (hl)
	rst 38h
	add hl,de
	jr $-85
	ccf
	ld (bc),a
	ld a,(0b285h)
	rst 38h
	rst 38h
	ld (hl),l
l5bd9h:
	ld hl,(02c53h)
	ld c,a
	ld sp,hl
	adc a,c
	jp nc,05ccbh
	ld (0d64ch),hl
	ld de,0f24ch
	and a
	jp c,08691h
	ld c,h
	sub h
	or c
	ld (hl),b
	bit 2,b
	ld c,h
	ld h,l
	dec de
	sub a
	rst 30h
	halt
	ex af,af'
	add hl,bc
	cp d
	ld l,a
	ei
	inc b
	call p,sub_71ffh
	ld a,h
	and l
	xor e
	ld d,c
	ld h,a
	call p,sub_7fffh
	ld b,d
	inc hl
	add a,l
	in a,(05bh)
	defb 0fdh,083h,012h ;illegal sequence
sub_5c11h:
	cp h
	or a
	jp p,0c7e8h
	adc a,0c9h
	ld de,l7a5fh
	dec d
	cpl
	rst 10h
	ld c,h
	jp z,0f706h
	rst 10h
	add a,l
	cp a
	call m,0fe6bh
	ld d,(hl)
	jp m,0815ah
	and a
	ld e,h
	call p,05543h
	ld b,a
	rst 30h
	ld h,c
	ld sp,01aa0h
	ld a,a
	ld b,h
	ld d,l
	or l
	sbc a,d
	ld e,(hl)
	push bc
	ret nz
	sub a
	ld h,c
	and h
	and e
	ld (de),a
	halt
	call z,0f67dh
	rst 38h
	sbc a,(hl)
	add a,d
	ld h,d
	dec a
	xor e
	ld c,a
	add a,d
	ld b,h
	ld d,c
	ex de,hl
	ld b,b
	ld d,e
	ld d,d
	inc l
	ld b,d
	ld (02201h),hl
	ld d,h
	ld (hl),a
	daa
	ld (hl),d
	ld (0de53h),hl
	jp (hl)
	ld (bc),a
	ld (bc),a
	di
	ld d,d
	ld (l6747h),hl
	cp l
	add a,c
	pop af
	ei
	ld c,h
	djnz $+40
	ld e,l
	rra
	ld d,d
	defb 0fdh,025h ;dec iyh
	rst 38h
	push de
	jr nc,$+1
	ld h,c
	rst 38h
	ld c,a
	pop de
	ld d,h
	jp c,0cbc6h
	ld h,c
	or (hl)
	inc hl
	pop bc
	ld l,e
	ld (hl),h
	adc a,h
	ld de,0c7bch
	ld d,l
	jp po,l55d0h
	ld a,h
	set 1,h
	or a
	adc a,h
	jp m,0889ah
	sbc a,h
	cpl
	and e
	add hl,de
	ld (hl),a
	and d
	ld b,l
	add a,d
	add a,l
	or d
	cp a
	cp 03eh
	ld (hl),b
	jp p,0a32ah
	ccf
	ret c
	add a,c
	ld h,d
	ld e,l
	ret nz
	ld a,a
	ld h,07ch
	ld h,d
	ld d,l
	add a,c
	nop
	ld (hl),l
	or a
	ld d,l
	dec h
	dec d
	sub h
	ret
	ld l,l
	nop
	push af
	push de
	dec h
	ld d,a
	or l
	or l
	ld d,l
	adc a,c
	and e
	inc l
	and c
	jp po,01f31h
	jr z,$+56
	ld h,h
	ld d,b
	ld (hl),b
	ld hl,(09bf3h)
	jp c,l624ch
	call nc,0b612h
	ld a,h
	push bc
	add a,b
	sub e
	add a,(hl)
	sub d
	xor b
	res 4,l
	ex af,af'
	sub c
	call m,0cc5ah
	ex af,af'
	call nc,0e087h
	ld h,c
	call c,sub_7acbh
	ld h,a
	rst 38h
	ld e,e
	sub l
	add a,a
	nop
	jp nz,00025h
	cpl
	jp p,02265h
	call m,065c4h
	pop de
	ex af,af'
	ld de,l5513h
	ld h,006h
	dec (hl)
	ld d,a
	ld b,h
	ld (hl),l
	add a,b
	ld d,e
	ld b,b
	ld d,e
	ld a,a
	call p,sub_6462h
	rst 38h
	di
	ld (de),a
	dec d
	ld d,e
	ld d,l
	ld c,077h
l5d1ch:
	inc b
	ex af,af'
	inc h
	add a,025h
	ld d,l
	ld a,a
	dec d
	daa
	ret z
l5d26h:
	di
	dec h
	ld (031c9h),hl
	and (hl)
	call po,026cfh
	ld c,056h
	ld a,h
	pop de
	cp h
	ld l,d
	ld (hl),l
	inc b
	or 0cfh
	sbc a,(hl)
	ld c,(hl)
	rst 8
	ld (0fb41h),hl
	dec e
	bit 4,l
	ld h,(hl)
	jp m,0fc5ch
	ld a,a
	ret pe
	ld de,l6652h
	ld d,025h
	call m,0fe74h
	ld (bc),a
	ld d,l
	ld (0c664h),a
	ld l,d
	adc a,c
	ret p
	ld d,a
	add a,d
	inc h
	adc a,d
	sub d
	jr l5d26h
	ld sp,0f511h
	ld e,l
	dec d
	adc a,a
	ld b,c
	ld a,a
	ld d,l
	dec (hl)
	ld d,d
	rst 0
	add a,b
	ld (hl),021h
	ld (hl),054h
	call pe,01216h
	and l
	ld (0bc98h),hl
	add a,a
	ret nz
	ld h,(hl)
	ld d,l
	xor e
	inc (hl)
	push bc
	ld d,a
	ld d,a
	rst 30h
	ld l,a
	ld a,e
	ld c,a
	ld d,l
	inc de
	call p,0eff2h
	ret nz
	or l
	ld e,h
	or (hl)
	jr c,l5de4h
	ld h,(hl)
	ld hl,0ffafh
	and c
	dec h
	add a,b
	ld h,b
	ld d,c
	ld (de),a
	call m,0fc23h
	ld (hl),l
	jp pe,02a08h
	ld c,h
	cp 081h
	ld d,e
	dec h
	ld d,d
	ld d,l
	ld d,e
	halt
	sub d
	ld de,002ffh
	ld b,l
	di
	adc a,b
	ld a,e
	sub e
	adc a,l
	ld c,b
l5db4h:
	adc a,a
	ld l,h
	sbc a,d
	add a,b
	ld a,(de)
	add hl,bc
	dec d
l5dbbh:
	ld a,h
	call m,0a4f2h
	call 0c889h
	defb 0ddh,0e4h,0c7h ;illegal sequence
	ld h,l
	sbc a,b
	defb 0ddh,0b1h,07ch ;illegal sequence
	and h
	jp nz,01a1eh
	rst 0
	ld a,a
	ld a,a
	jp po,l617ch
	inc l
	cp 031h
	dec de
	and c
	ld b,e
	ld e,d
	jr nz,l5e1bh
	nop
	or e
	inc hl
	cpl
	di
	adc a,d
	xor b
l5de4h:
	ld b,l
	bit 4,(hl)
	cp 010h
	ld b,(hl)
	ld d,e
	ld de,000c4h
	ld (de),a
	ld (bc),a
	ld e,a
	xor l
	sub c
	and l
	defb 0edh ;next byte illegal after ed
	ld l,h
	ld sp,0f90dh
	and d
	ld d,d
	and b
	adc a,d
	sbc a,l
	and e
	ex de,hl
	ld (bc),a
	call z,03215h
	ld l,a
	ld sp,05fc2h
	ld a,a
	rst 8
	push af
	ld d,b
	ld a,d
	ld d,c
	djnz l5dbbh
	jp p,00617h
	ld d,c
	xor h
	or l
	ld c,e
	rst 0
	sbc a,0b0h
	ld a,h
l5e1bh:
	ld e,e
	jp z,01544h
	and h
	ld (hl),c
l5e21h:
	ex af,af'
	xor a
	halt
	dec e
	ld l,e
	cp 0e1h
	ld c,h
	rst 38h
	ld a,a
	ld c,b
	ld (023f2h),a
	ld h,d
	ld d,d
	and (hl)
	ld (bc),a
	ld h,d
	ld (l4c66h),hl
	ld (hl),d
	ex (sp),hl
	ld d,e
	ld l,(hl)
	add a,d
	jp p,0befch
	out (014h),a
	ld c,0f2h
	push af
	djnz l5eb0h
	jp m,l440eh
	ld b,(hl)
	ld h,026h
	call 0c644h
	cp 054h
	jr nc,l5e21h
	ret m
	dec de
	rst 0
	and (hl)
	add a,d
	ld d,b
	call pe,08845h
	push hl
	ld e,h
	ld l,e
	or 055h
	inc h
	halt
	push bc
	sbc a,c
	ld b,h
	rst 10h
	xor l
	or a
	inc d
	ld h,c
	and (hl)
	ld a,h
	sbc a,a
	pop hl
	rst 38h
	rst 8
	ld b,c
	ld (01f36h),hl
	sub l
	ld e,a
	defb 0ddh,007h,065h ;illegal sequence
	ld sp,0316dh
	cp 01fh
	jp nz,0822ch
	add a,0d9h
	sbc a,l
	ld de,03509h
	inc l
	ld b,a
	ld a,a
	ld c,a
	sub b
	add hl,de
	cp 011h
	jp p,0d06fh
	ld a,(de)
	cpl
	and (hl)
	rst 18h
	ld l,d
	di
	ld c,h
	call z,0cf92h
	ld e,075h
	cp a
	inc l
	ld d,h
	ret nz
	or 0f7h
	ld e,e
	call m,sub_5c11h
	ld l,a
	jp 0ae5ah
	sbc a,a
	ld l,c
	adc a,l
l5eb0h:
	sbc a,a
	nop
	sbc a,h
	ld h,032h
	ld (de),a
	cpl
	rst 8
	call p,sub_4c7eh
	ld h,071h
	ld d,l
l5ebeh:
	ld l,h
	jp (hl)
	jr nz,l5ebeh
	ld h,067h
	sbc a,l
	call nz,06624h
	inc l
	ld de,0ff51h
	or e
	ld a,d
	dec l
	ld (hl),h
	sub b
	rlca
	ld c,a
	ld h,036h
	add a,(hl)
	call p,05bc7h
	call p,00ee5h
	jp nz,097ffh
	rst 30h
	adc a,b
	dec de
	or a
	ld l,a
	di
	cp (hl)
	nop
	ld h,(hl)
	push af
	jp p,0c7fah
	call z,0c37fh
	pop de
	sub a
	pop bc
	call z,0834fh
	ld c,a
	ld h,b
	jp p,l6166h
	inc b
	ld (0c464h),hl
	ld (hl),h
	ld c,h
	call nc,0e4a5h
	inc d
	call m,07148h
	dec (hl)
	adc a,(hl)
	sbc a,b
	ld b,h
	xor (hl)
	jp nz,0e574h
	ld h,d
	inc hl
	ld d,c
	djnz l5f64h
	dec (hl)
	rst 38h
	ld l,a
	ld h,d
	rst 8
	sub b
	jr z,l5f90h
	add a,h
	inc e
	ld h,c
	ld h,(hl)
	ld (09d34h),hl
	ld d,d
	call p,sub_4568h
	xor e
	add a,a
	sub d
	push af
	cp 03dh
	push hl
	add a,b
	ld a,(bc)
	ld e,a
	ld b,a
	in a,(0c4h)
	ld e,a
	xor d
	jp p,l6b4fh
	dec h
	defb 0fdh,0d1h,081h ;illegal sequence
	call z,0c85ch
	ld h,(hl)
	ld (hl),c
	call m,08021h
	ld d,l
	ld l,l
	ret pe
	ld h,h
	defb 0fdh,0c6h,0f4h ;illegal sequence
	ld h,l
	call m,0ff54h
	add hl,bc
	call z,027f5h
l5f54h:
	ret p
	jr l5f54h
	ld a,(hl)
	ld d,l
	ld e,e
	ld d,d
	rst 18h
	ex af,af'
	call nz,087a9h
	ld d,d
	ld h,e
	ld h,(hl)
	cp b
l5f64h:
	cp b
	ld (hl),c
	ld sp,0c8d9h
	ld b,a
	rra
	halt
	pop af
	xor a
	ld d,h
	ex af,af'
	rra
	daa
	ld (hl),a
	call nz,08ea9h
	adc a,e
	ld l,a
	call m,0e4e8h
	ld hl,(01635h)
	inc sp
	ld h,e
	ld h,d
sub_5f81h:
	add hl,hl
	jp p,0c650h
	ld hl,00ec6h
	ld (0ceadh),hl
	ld b,l
	call sub_468dh
	ld h,l
l5f90h:
	adc a,l
	inc h
	adc a,a
	ld d,c
	ld a,a
	ld (hl),e
	ret p
	add a,e
	defb 0fdh,026h,0cfh ;ld iyh,0cfh
	inc e
	daa
	xor b
	ld (0aba9h),hl
	rst 38h
	inc (hl)
	sub e
	ld (hl),d
	jp p,099a5h
	call po,sub_5fd9h
	or (hl)
	ld (00a5fh),a
	call m,00d50h
l5fb2h:
	daa
	ld a,a
	ld c,d
	ld a,a
	sbc a,c
	ld h,h
	cpl
	daa
	ei
	ld a,a
	ld hl,01669h
	ld d,06fh
	ld (0cf9eh),a
	ld d,b
	add a,l
	ld sp,01d11h
	ld d,d
	ld h,d
	cp 010h
	ld hl,l7efch
	dec (hl)
	dec (hl)
	ld (l4c25h),hl
	pop af
	add a,b
	scf
	sbc a,c
sub_5fd9h:
	add hl,bc
	ld a,(0ef24h)
	xor c
	ret z
	ld (hl),d
	daa
	dec hl
	call po,sub_565eh
	rst 30h
	adc a,l
	or b
	cp l
	add a,h
	ld a,l
	jp p,01158h
	call nz,02375h
	rst 38h
	ld (080cch),hl
	ld a,0c0h
	ld d,011h
	ld d,052h
	ld c,d
	cpl
	rst 18h
	ld a,d
	ret c
	ld l,h
	ld e,e
	cp 04ah
	rra
	ei
	inc de
	ld b,a
	xor 025h
	ld (hl),h
	dec bc
	dec d
	push bc
	ld e,091h
	call z,0e99fh
	ld (02752h),hl
	scf
	ld d,0ech
	and (hl)
	ld h,a
	rrca
	dec de
	bit 7,h
	jp (hl)
	rst 18h
	ld d,h
	call nz,0eafch
	jr z,l604bh
	rst 8
	inc hl
	add a,c
	inc sp
	add a,d
	call pe,sub_567dh
	ret c
	and 025h
	pop de
	or l
	add a,b
	ret po
	daa
	call p,08f52h
	sbc a,d
	ld (de),a
	ld d,h
	call p,0a610h
	jp p,0a0b0h
	ret p
	call m,05a16h
	and 026h
	pop af
	rst 20h
l604bh:
	rst 8
	add a,c
	add a,e
	or (hl)
	cp e
	cp h
	ld h,a
	adc a,c
	cp b
	ld c,a
	ld d,h
	add a,(hl)
	inc de
	xor h
	or d
	or h
	and a
	inc h
	cp e
	ld l,e
	push de
	ld h,c
	call m,0808dh
	ld c,a
	ld l,e
	ld hl,08dfbh
	add a,a
	sbc a,d
	cpl
	ld h,e
	jp p,l510bh
	dec h
	cp a
	ld b,d
	call 0a072h
	ld sp,hl
	ld (hl),l
	ld hl,l5672h
	ld a,(de)
	push af
	or b
	sbc a,l
	ld de,04725h
	ld (hl),0dch
	ld b,(hl)
	call z,0b26fh
	jp nz,027cfh
	cp h
	sub a
	ld d,a
	rst 20h
	and l
	or c
	cp 0bbh
	jp c,l6497h
	sub h
	rst 8
	ret nc
	inc e
	ei
	or d
	call m,sub_5357h
	call z,sub_58abh
	add a,b
	call p,080c4h
	ld h,01bh
	ld d,d
	ld d,e
	ld (0a98ch),hl
	inc hl
	add a,c
	rst 0
	ld b,l
	ld b,a
	sbc a,l
	jp nz,l4322h
	dec d
	ld e,d
	cpl
	and l
	ld b,052h
	ld d,d
	and c
	dec h
	cp 01ch
	ld d,0a8h
	ld a,a
	jp p,0c70dh
	ld e,a
	push bc
	dec hl
	rst 20h
	ld h,082h
	xor b
	add a,d
	halt
	ld l,a
	adc a,a
	call nc,sub_678dh
	jp nz,0fc71h
	set 6,(hl)
	ret po
	ld (hl),d
	ld e,h
	push af
	ret po
	or (hl)
	ld l,a
	call p,081b7h
	or h
	ld h,d
	ld h,(hl)
	ld c,c
	dec (hl)
	ld h,c
	dec (hl)
	ret pe
	dec bc
	ld (0005fh),a
	ld e,0e1h
	add a,b
	inc de
	ld d,d
	ld (l6522h),a
	ccf
	rst 38h
sub_60fah:
	sub (hl)
	ld a,l
	ld h,(hl)
	defb 0fdh,0d1h,0f7h ;illegal sequence
	push bc
	adc a,d
	cp b
	rst 38h
	ld b,055h
	ld a,a
	rst 30h
	ld a,h
	cp e
	ld e,b
	jr z,l6184h
	and (hl)
	ld a,e
	cpl
	ld d,c
	or d
	ld d,c
	dec d
	ld a,a
	ld h,07bh
	sla d
	ld d,l
	add a,h
	ld d,e
	inc hl
	ld e,h
	add a,b
	ld e,(hl)
	call z,0c482h
	ld l,a
	inc l
	jp m,01514h
	ld (hl),06fh
	jp po,l497bh
	jp z,0d2f9h
	inc d
	and c
	ld (de),a
	inc de
	call m,097a7h
	call m,sub_67e0h
	ld bc,0c777h
	rst 0
	add a,07bh
	ld a,a
	ld b,l
	add a,b
	rla
	ld a,015h
	call m,0ebf1h
	and l
	ld b,0bfh
	ld d,h
	sbc a,h
	adc a,c
	ld l,h
	and h
	ex af,af'
	ld (hl),a
	halt
	rst 38h
	ei
	daa
	jp nc,l4282h
	rst 8
	ret po
	adc a,c
	ld h,a
	ld d,e
	ld a,a
	pop af
	ld (hl),h
	sbc a,a
	ld l,a
	adc a,(hl)
	ld a,c
l6166h:
	ld l,a
	jp nz,0f2c3h
	sub b
	ret c
	call z,009fch
	ld a,a
	ld (hl),a
	ld e,e
	call p,068d7h
	ld h,0f1h
	ld a,e
	ld d,h
	ld (0c159h),a
l617ch:
	or h
	ld e,h
	ld e,e
	inc h
	ld sp,hl
	inc de
	ld (hl),l
	ld a,e
l6184h:
	add a,h
	ld d,c
	and d
	ld a,a
	ret m
	dec b
	call nz,0c964h
	jp nc,0f264h
l6190h:
	rst 38h
	ld e,(hl)
	ld b,h
	ld a,(066f9h)
	sub h
	rrca
	ld h,h
	ld b,e
	dec d
	call m,00380h
	cpl
	call p,0aebfh
	ld b,h
	ld e,a
	sub e
	ld (hl),h
	dec h
	cp c
	adc a,b
	pop bc
	jr nc,l6190h
	rra
	dec l
	call z,0c2cch
	and (hl)
	rst 30h
	jp nz,0ab9fh
	adc a,h
	jp p,01fach
	call m,l787fh
	ld b,(hl)
	ld a,h
	call nz,0cf12h
	ld h,02fh
	ex de,hl
	ld c,e
	rst 38h
	rst 0
	sbc a,0a0h
	ld h,06fh
	call nz,0cc1eh
	ld (hl),d
	ld c,a
	ld de,0cf09h
	ld d,b
	ld d,h
	call po,06518h
	jp pe,0eb84h
	sbc a,d
	ret z
	jp 0afc5h
sub_61e1h:
	rst 18h
	ei
	djnz $+94
	ld d,(hl)
	ld l,a
	ld b,(hl)
	rst 20h
	ld b,a
	add a,e
	and c
	ld d,d
	ld d,h
	rst 8
	jr z,$+33
	rst 8
	ld c,h
	ld a,(hl)
	ld a,h
	xor d
	jp l66fch
	ld c,h
	jp c,023d1h
	rst 38h
	cpl
	ld a,(de)
	cpl
	ld a,a
	pop de
	sub b
	inc l
	jp l595eh
	push de
	ld (bc),a
	rst 30h
	ld (hl),l
	ld a,a
	or 066h
	cp 03bh
	sub d
	and 0e5h
	ld l,l
	push hl
	ld c,d
	call z,0946eh
	ld l,0fch
	and h
	di
	sub (hl)
	add a,b
	out (026h),a
	and h
	dec de
	ld e,e
	ld a,a
	cp (hl)
	call nz,0fdffh
	cp l
	call c,0e04ah
	out (0cah),a
	rst 0
	inc de
	and e
	call nz,02466h
	ld b,d
	ret
	call m,0e3f8h
	ld l,e
	rst 30h
	ld h,a
	ld (hl),l
	rst 10h
	ld (0acf6h),a
	jp (hl)
	ld c,b
	dec h
	and h
	ld e,h
	dec a
	ld h,l
	ld e,a
	sub c
l624ch:
	and c
	push bc
	ld (0fecfh),hl
	jr z,l629eh
	ld c,e
	ld l,h
	xor d
	jr nz,l62afh
	ld h,a
	ld a,a
	ld (hl),d
	ld l,h
	call z,08f8ch
	add a,b
	ret nz
	rlca
	ld (hl),d
	ld h,d
	ld c,a
	jp p,l7f3fh
	set 6,h
	pop bc
	ld b,d
	ld h,d
	jp 0a2feh
	call z,04bbfh
	ret c
	ret z
	sub c
	call po,sub_7f2bh
	ld h,b
	push af
	dec a
	and l
	ld d,c
	push bc
	ret pe
	ld a,a
	ld e,h
	dec e
	ld h,e
	ld d,(hl)
	jr l62e6h
	sub (hl)
	ld c,056h
	ld b,d
	rst 8
l628ch:
	ld d,l
	ld (hl),a
	rst 30h
	defb 0fdh,03fh,002h ;illegal sequence
	add a,c
	ld a,b
	ld c,b
	daa
	and 06ch
	inc hl
	dec h
	inc (hl)
	sbc a,b
	pop hl
	inc d
l629eh:
	ld d,e
	inc l
	and (hl)
	call nz,02723h
	pop bc
	defb 0ddh,0cch,082h ;illegal sequence
	ld h,a
	ld (de),a
	inc h
	ld d,a
	rst 8
	rst 38h
	sbc a,b
l62afh:
	ld c,05dh
	dec (hl)
	call z,0b165h
	sub e
	call z,sub_6e55h
	add hl,hl
	sbc a,c
	dec e
	or l
	ld a,a
	ld c,e
	ei
	ret po
	call p,sub_4f67h
	inc h
	or d
	ld h,0e7h
	sub e
	add a,h
	rla
	defb 0ddh,042h,07ah ;illegal sequence
	rst 0
l62cfh:
	ld b,h
	ret nz
	call m,0d5ffh
	ld l,e
	sbc a,l
	ld (hl),e
	call p,09710h
	ei
	or a
	nop
	rst 38h
	cp 000h
	ld a,h
	nop
	nop
	ld a,a
	nop
	nop
l62e6h:
	ld h,d
	ld l,c
	jp l4500h
	nop
	nop
	defb 0fdh,0deh,0fbh ;illegal sequence
	inc hl
	xor d
	xor (hl)
	nop
	ld de,0ec69h
	cp 0c8h
	dec b
	ret nz
	nop
	inc b
	add hl,bc
	dec c
	add hl,bc
	ld a,b
	add hl,bc
	ld de,l4500h
	or d
	xor (hl)
	out (0f7h),a
	rst 30h
	out (025h),a
	xor (hl)
	or d
	add a,b
	defb 0fdh,07ah,0f5h ;illegal sequence
	jr z,l6315h
	add hl,bc
l6315h:
	dec b
	ld (01111h),hl
	ei
	ld (01511h),hl
	nop
	ld de,0fe09h
	ld a,h
	nop
	or d
	rst 8
	ei
	ei
	rst 38h
	ei
	dec h
	di
	xor d
	add a,b
	defb 0fdh,05ch ;ld e,iyh
	dec b
	add hl,bc
	jp nz,00d00h
	dec c
	push af
	jr c,l637eh
	ld de,095f9h
	dec d
	add hl,de
	nop
	rlca
	add a,b
	dec l
	adc a,l
l6342h:
	or d
	di
	rst 38h
	nop
	add hl,bc
	rst 30h
	rst 8
	jp nc,0f569h
	rst 38h
	ld d,h
	sbc a,d
	xor 0f9h
	ld (hl),0f3h
	ld (hl),0f5h
	ld (hl),002h
	dec c
	dec c
	inc b
	ld de,00d19h
	inc hl
	ld de,0ff04h
	call nc,0aaefh
	ld c,a
	ld l,c
	ret m
l6367h:
	jp m,0f58ch
	call pe,sub_71f9h
	cp 01dh
	rlc e
	ld de,01214h
	sbc a,c
	adc a,b
	dec hl
	rst 38h
	sub d
	rst 8
	di
	cp 0aah
	rst 38h
l637eh:
	and e
	rst 38h
	ld iy,00004h
	call nz,0ecf8h
	call m,01148h
	jp (hl)
	push de
	inc e
	nop
	inc b
	xor b
	dec e
	cp 0e3h
	inc b
	jr nc,$-125
	and c
	add a,b
	dec e
	ld (de),a
	sub (hl)
	add a,c
	push de
	rst 38h
	ex (sp),hl
	di
	rst 38h
l63a1h:
	jr z,l63a1h
	add a,h
	res 5,(hl)
	dec h
	call m,0a27fh
	inc b
	inc h
	inc h
	add hl,hl
	add hl,hl
	jp m,0fc71h
	inc e
	ld b,(hl)
	defb 0fdh,0f2h,000h ;illegal sequence
	jr l6367h
	push af
	ld (08104h),a
	ld d,d
	sub e
	ld e,c
	and (hl)
	add a,b
	call po,sub_6680h
	rst 28h
	nop
	rst 38h
	ld d,c
	cp 0feh
	add a,h
	jr z,$-118
	rst 38h
	add hl,hl
	ld c,l
	ld e,a
	ld sp,071eeh
	rst 38h
	jp (hl)
	ret p
	jr l63f7h
	in a,(004h)
	add a,(hl)
	ld h,e
	rrca
	adc a,d
	add a,b
	dec l
	add a,c
	cp c
	add a,b
	ld b,d
	rst 30h
	jp nc,0bffbh
	pop de
	ld h,0fbh
	ld c,a
	ld sp,03ef7h
	nop
	dec (hl)
	jp m,01c86h
	inc a
l63f7h:
	nop
	ld b,(hl)
	ld d,(iy+004h)
	add a,(hl)
	sub h
	add a,d
	add a,(hl)
	dec e
	inc a
	nop
	jp pe,0f28bh
	scf
	xor (hl)
	inc b
	xor a
	di
	out (0fbh),a
	or (hl)
	rst 38h
	ld a,a
	and b
	adc a,b
	dec h
	add hl,hl
	dec c
	defb 0fdh,0c3h,039h ;illegal sequence
	inc a
	nop
	sub c
	dec a
	dec a
	add hl,sp
	ld bc,0ed46h
	ld h,d
	inc bc
	dec a
	inc c
	cp d
	dec bc
	dec d
	ld e,l
	add hl,sp
	ld de,04e20h
	jr $+15
	scf
	ld b,b
	ld c,c
	or a
	rst 10h
	rst 10h
	in a,(0ffh)
	adc a,a
	call m,0fef3h
	jp pe,0fac9h
	ret z
	defb 0fdh,0eeh,0deh ;illegal sequence
	ld (hl),00ch
	adc a,l
	rst 38h
	sbc a,h
	pop af
	adc a,e
	call m,02303h
	ei
	dec l
	inc de
	nop
	ld c,d
	dec a
	adc a,(hl)
	ld (hl),e
	ld hl,0ad83h
	ld de,09200h
	rst 38h
	ex af,af'
	or d
	rst 38h
	jp c,0fffdh
	dec sp
sub_6462h:
	ex af,af'
	ld c,l
	add hl,hl
	ld c,h
	ld c,h
	jp po,000b6h
	exx
	add hl,sp
	rst 0
	nop
	add hl,de
	call m,08064h
	xor e
	dec d
	ld b,063h
	rst 30h
	adc a,h
	inc bc
	ld e,h
	dec d
	djnz l6489h
	cp b
	jr c,l6485h
	dec h
	dec d
	inc b
	cp d
	add a,l
l6485h:
	ld l,(hl)
	add a,b
	ld (bc),a
	or a
l6489h:
	rst 38h
	in a,(0feh)
	ccf
l648dh:
	adc a,091h
	dec l
	call m,01923h
	call nc,0f963h
	ld h,a
l6497h:
	ei
	sbc a,b
	pop ix
	ld de,09f04h
	ret p
	xor a
	add hl,sp
	nop
	sbc a,d
	sbc a,d
	adc a,h
	add a,c
	ld h,h
	ld c,c
	or e
	or l
	add a,b
	and a
	add a,b
	di
	sub h
	add hl,bc
	pop hl
	ld (hl),e
	cp 01ch
	ld b,a
	rst 38h
	inc sp
	ret pe
	sbc a,b
	inc de
	dec c
	sbc a,b
	jp m,01535h
sub_64bfh:
	jp nc,0ff96h
	ld a,01bh
	ld d,01eh
	ld (hl),b
	inc bc
	ld de,0b604h
	add a,b
	ld d,h
	or e
	add a,b
	cp 076h
	dec c
	xor (hl)
	rst 30h
	ld h,e
	ld sp,hl
	xor l
	ld b,08eh
	ex (sp),hl
	add hl,hl
	add a,b
	ld d,d
	ld de,00002h
	rst 38h
	ld a,(hl)
	ld h,009h
	rla
	ld l,d
	xor e
	ld h,a
	ld hl,01a84h
	ld b,c
	ld l,(hl)
	and h
	add a,b
	ld d,e
	or a
	add a,b
	ld sp,hl
	jp nz,0c731h
	jr nz,l6551h
	ld e,l
	inc a
	ld e,h
	dec (hl)
	ld e,l
	add hl,sp
	inc bc
	add hl,sp
	inc c
	add a,l
	inc a
	ld e,l
	ld (iy-080h),l
	add hl,hl
	add a,d
	add hl,hl
	xor 07ch
	scf
	dec (hl)
	ld c,002h
	adc a,b
	inc bc
	dec c
	dec b
	ld a,(00d05h)
	call m,083a3h
	nop
	ld c,e
	dec (hl)
	inc b
	add a,b
	ld e,d
	add a,b
	ld h,c
l6522h:
	rst 38h
	defb 0fdh,07fh,0e6h ;illegal sequence
	ret pe
	add hl,sp
	push af
	pop hl
	ld e,c
	ld (bc),a
	sub h
	inc bc
	push de
	ld h,(hl)
	ld b,0d7h
	rlca
	defb 0fdh,0cdh,082h ;illegal sequence
	and h
	jp p,011f2h
	or d
	add a,(hl)
	add a,d
	ld d,(hl)
	push af
	ld l,c
	ld (de),a
	add hl,bc
	jp p,00410h
	inc b
	dec b
	ld (hl),c
	inc b
l6549h:
	ld (0b618h),a
	add a,b
	cp (hl)
	add a,d
	adc a,d
	rst 10h
l6551h:
	add a,b
	ld a,a
	scf
	inc hl
	add hl,hl
	ld de,09dffh
	nop
	adc a,c
	adc a,035h
	inc b
	ld h,05dh
	ld b,015h
	rst 30h
	ld h,h
	jp (hl)
	defb 0edh ;next byte illegal after ed
	sbc a,e
	or c
	rra
	sub e
	ld c,004h
	and b
	ret z
	call m,003a8h
	rst 30h
	xor a
	jp p,00496h
	add hl,de
	ld l,h
	cpl
	sbc a,a
	adc a,e
	inc b
	add a,b
	ld l,c
	or e
	add a,b
	ld c,a
	rst 20h
	ld de,l45d8h
	exx
	call z,sub_5c11h
	ld e,h
	rst 38h
	inc a
	res 0,(hl)
	inc de
	ex de,hl
	ld e,l
	ex (sp),hl
	ld a,(bc)
	ld b,l
	defb 0edh ;next byte illegal after ed
	push hl
	add hl,de
	ld a,(bc)
	sub e
	jp p,0f3b3h
	sbc a,c
	nop
	inc sp
	ret po
	dec b
	or h
	sub a
	sub (hl)
	xor a
	rrca
	ld de,08205h
	ld d,l
	or e
	add a,b
	and l
	add a,b
	ccf
	sbc a,h
	ld c,a
	call 0ff11h
	sub d
	add a,b
	or l
	jp nc,003bbh
	jp m,0f8b9h
	ld (de),a
	dec b
	rla
	or h
	add a,a
	adc a,a
	or 03fh
	jr nc,l65cbh
l65c7h:
	inc b
	rst 38h
	ld d,(hl)
	xor d
l65cbh:
	or h
	xor b
l65cdh:
	sbc a,d
	add a,c
	jp 081b2h
	ld e,b
	ld a,(hl)
	rst 38h
	ld l,l
	inc sp
	ex af,af'
	inc bc
	add hl,hl
	add a,d
	call m,0cc3ah
	ld (hl),a
	cp 029h
	ld sp,hl
	jp c,0d600h
	ret m
	ld c,c
	dec (hl)
	add hl,bc
	add hl,bc
	and 0cch
	rst 20h
	sbc a,a
	inc b
	cpl
	inc h
	cp 066h
	sbc a,d
	inc h
	rst 38h
	call pe,0b19fh
	add a,b
	ld h,d
	or a
	rst 38h
	daa
	in a,(083h)
	cp (hl)
	djnz l660bh
l6603h:
	inc c
	djnz l65c7h
	nop
	inc l
	inc l
	ex af,af'
	rst 38h
l660bh:
	rra
	pop hl
	or c
	rst 20h
	ld e,(hl)
	rst 30h
	ld e,a
l6612h:
	adc a,018h
	adc a,d
	call nz,09783h
	xor 04eh
	ret m
	ld c,a
	pop bc
	jp nc,09409h
	sbc a,(hl)
	sbc a,(hl)
	rst 38h
	jr l662eh
	sbc a,c
	adc a,c
	dec c
	add hl,hl
	dec h
sub_662ah:
	add a,b
	ld c,a
	adc a,d
	inc b
l662eh:
	adc a,b
	jp m,l4d34h
	ld (00c72h),a
	add hl,bc
	add a,c
	ld c,d
	add a,c
	ld a,a
	dec c
	call z,08eeeh
	defb 0fdh,06dh ;ld iyl,iyl
	add a,e
	sbc a,h
	rst 28h
	call nc,0fe05h
	ld a,l
	sub d
	xor c
	call 022a7h
	add hl,bc
	xor c
	ld c,a
	add a,h
	ld b,h
	sub d
l6652h:
	rst 38h
	ld l,d
	ei
	add a,b
	sbc a,(hl)
	ret po
	ex af,af'
	inc d
	inc d
	ld (hl),c
	ex af,af'
	in a,(0dbh)
	sub (hl)
	inc h
	rst 38h
	sub 055h
	add a,h
	cp a
	add a,a
l6667h:
	or 0dfh
	ld l,d
	add a,l
	daa
	ld e,c
	call m,0d473h
	sbc a,a
	dec hl
	xor c
	dec (hl)
	and c
	ex de,hl
	or h
	call pe,0ffc5h
	cp d
	ld b,l
	xor c
	and e
	ld c,c
	add a,c
sub_6680h:
	ld d,e
	add a,d
	pop de
	rst 38h
	ld sp,hl
	ld e,a
	ld h,b
	inc d
	jr l669ah
	ld b,(hl)
	cp d
	ld (00cdbh),hl
	add a,c
	ld hl,01049h
	rst 10h
l6694h:
	rra
	out (02dh),a
	ex af,af'
	jp (hl)
	pop af
l669ah:
	and a
	rst 28h
	dec c
	dec h
l669eh:
	dec l
	jp nc,00de1h
	call c,02af9h
	or 0c6h
	cp 055h
	ld (bc),a
	cp 0b2h
	xor l
	or c
	cp 08ch
	ld sp,l5b14h
	or e
	add a,b
	inc l
	in a,(0ech)
	ret m
	ld d,a
	ex af,af'
	push af
	ret c
	ld e,c
	jr c,$+22
	inc hl
	jr nc,l669eh
l66c3h:
	ld (02872h),hl
	or b
	sub c
	ld c,c
	rst 38h
	ccf
	out (080h),a
	jr l66e3h
	dec (hl)
	ld d,l
	inc (hl)
	inc (hl)
	jr nc,l6667h
	ld a,l
	inc c
	adc a,b
	ret m
	ld (bc),a
	inc h
	add hl,hl
	ld sp,l73d6h
	call pe,0acaeh
	ld a,h
l66e3h:
	rra
	and (hl)
	ld l,e
	xor a
	ld e,c
	and l
	ld (bc),a
	xor (hl)
	ld d,e
	ld l,(hl)
	rst 38h
	or h
	add a,b
	defb 0edh ;next byte illegal after ed
	or 01ah
	inc (hl)
	daa
	inc d
	inc c
	ret m
	jr nz,$+9
	jr nc,l676ah
l66fch:
	ld l,l
	ld (hl),c
	ld (de),a
	ld e,l
	djnz l6694h
	and c
	add a,h
	inc h
	inc b
	rst 38h
	ld a,a
	ld d,h
	inc c
	ld (bc),a
	jr l66c3h
	or (hl)
	sub d
	ld (hl),d
	ld (hl),d
	ld a,h
	inc d
	ld l,l
	sub d
l6715h:
	inc d
	dec c
l6717h:
	adc a,(hl)
	ld h,h
	adc a,d
	or c
	adc a,e
	ld (09104h),hl
	ei
	ld l,a
	djnz l6733h
	ld de,0a913h
	adc a,a
	ex af,af'
	ex (sp),hl
	call p,0fe9fh
	and (hl)
	pop af
	ld l,b
	rst 38h
	jp nc,l7c7ch
l6733h:
	cp 072h
	add a,l
	jp nc,l58b0h
	ld d,e
	ld c,c
	add a,b
	or h
	push af
	ld h,(hl)
	nop
	add a,0f4h
	ld b,b
	add hl,bc
	jr nc,l67b8h
	sub (hl)
l6747h:
	cp d
	or (hl)
	ld (de),a
	ld c,l
	ld c,c
	inc c
	ld a,(bc)
l674eh:
	jp c,l73feh
	dec l
	add a,l
	ld l,l
	rst 38h
	ld a,a
	ld c,l
	pop af
	add a,l
	pop af
	inc hl
	rst 38h
	call p,08012h
	ld c,b
	rst 38h
	add a,h
	inc b
	jr l67d2h
	adc a,h
	sub d
	adc a,l
	ld d,d
	ld a,(bc)
l676ah:
	nop
	inc e
	sbc a,l
	sbc a,e
	add a,010h
	sub d
	djnz l6717h
	ld a,c
	sbc a,c
	and d
	xor b
	call z,00569h
	djnz l6715h
	dec e
	call 000b2h
	xor h
	djnz l6793h
	sub h
	or l
	ret m
	nop
	ex af,af'
	ld d,l
	ld d,l
	rst 38h
	sub 039h
sub_678dh:
	or d
	dec bc
	inc c
	ld b,e
	rrca
	ld a,c
l6793h:
	add a,c
	sbc a,h
	ld l,h
	ld (hl),b
	ld e,c
	ccf
	ex af,af'
	ld b,(hl)
	inc e
	ei
	add hl,bc
	sub d
	or (hl)
	sub (hl)
	ret m
	inc d
	ld a,l
	add a,b
	ld b,(hl)
	add a,d
	add a,c
	ld c,(hl)
	add hl,hl
	ld c,(hl)
	inc c
	ld e,c
	jr nc,l67b7h
	sub d
	pop bc
	or c
	rst 38h
	ld c,a
	cp 0f4h
	pop de
l67b7h:
	pop af
l67b8h:
	ld d,d
	pop af
	ld h,d
	nop
	dec h
	ld a,l
	adc a,b
sub_67bfh:
	rst 38h
	ex af,af'
	djnz l674eh
	defb 0edh ;next byte illegal after ed
	inc c
	ld h,d
	sub h
	ld de,l4949h
	ld a,c
	jp po,01ecfh
	ld b,h
	sub d
	ld c,(hl)
	sub b
l67d2h:
	jp nz,0db55h
	rst 18h
	and (hl)
	ld c,d
	xor h
	ld a,(bc)
	ld (hl),d
	ld c,l
	adc a,h
	daa
	ret nz
	sbc a,b
sub_67e0h:
	cp h
	sub h
	or (hl)
	ld (bc),a
	sbc a,e
	sub l
	or h
	ld c,h
	inc b
	ld (hl),d
	nop
	ld l,e
	sub d
	nop
	sub (hl)
	inc de
	jr c,l67f2h
l67f2h:
	ld bc,l7296h
	cp (hl)
	djnz $+127
	ld a,c
	ld e,c
	call m,0df99h
	ld h,e
	sub d
	inc e
	add a,c
	adc a,(hl)
	or d
	or a
	add a,b
	ld l,h
	dec c
	in a,(09eh)
	ex af,af'
	dec a
	ld (hl),b
	dec a
	ld e,c
	ld c,(hl)
	ld b,h
	ld c,(hl)
	ccf
	inc d
	ld (hl),d
	add a,c
	jp pe,0ff25h
	jr nc,l6852h
	sub d
	ret
	ld a,h
	sbc a,h
	ld e,b
	rst 38h
	cp 0a2h
	cp 079h
	inc hl
	rst 38h
	or (hl)
	rst 38h
	adc a,d
	sub c
	sbc a,h
	sub 00ch
	ld b,h
	ld c,(iy-072h)
	rst 38h
	ld h,(hl)
	and h
	jr c,l684ah
	rst 38h
	ld de,02926h
	ld c,c
	ld e,038h
	add hl,hl
	sub l
	cp e
	add hl,hl
	sbc a,d
	add a,h
	inc c
	inc b
	sbc a,e
	or c
	add hl,de
	xor e
	ld (hl),d
l684ah:
	xor b
	and d
	rst 38h
	ld d,c
	in a,(016h)
	rst 30h
	ld b,(hl)
l6852h:
	ld sp,hl
	ld c,0b7h
	cp e
	cp e
	ld c,l
	add hl,sp
	ld b,h
	ld b,h
	ld l,l
l685ch:
	rst 20h
	ld a,c
	ld (hl),b
	dec (hl)
	adc a,d
	inc c
	ld l,(hl)
	inc d
	jp nc,01869h
	ld c,c
	sub d
	add a,b
	ld c,l
	inc l
	or (hl)
	dec d
	dec a
	inc hl
	ld e,l
	or (hl)
	push af
	adc a,d
	ld h,0f4h
	cp b
	adc a,d
	or 0ffh
	dec (hl)
	inc (hl)
	add hl,bc
	adc a,c
	ld c,c
	sub l
	jp c,0fefeh
	sbc a,(hl)
	cp 068h
	or b
	and 0c6h
	ld (l4d25h),hl
	rst 38h
	ld (l68d2h),a
	call pe,08ae2h
	inc h
	ld c,l
	rst 38h
	ld c,d
	inc b
	push iy
	rst 38h
	ld de,0ffd4h
	ld (hl),h
	in a,(05eh)
	add hl,hl
	sbc a,e
	ld e,l
	xor b
	dec sp
	xor h
	inc (hl)
	ld c,028h
	cp d
	dec h
	dec c
	rst 38h
	ret c
	cp a
	ret
	add a,b
	ld d,h
	cp d
	and 052h
	add a,b
	jp nc,l5096h
	or b
	jp z,03955h
	pop hl
	or e
	dec (hl)
	pop bc
	ld c,h
	ld (bc),a
	rst 18h
	or (hl)
	cp e
	rst 18h
	rst 38h
	add a,d
	add a,(hl)
	rst 10h
	add a,c
	jr nc,$+1
	ld h,h
	cp (hl)
	ccf
l68d2h:
	rst 38h
	ld a,b
	sbc a,e
	ld bc,0086dh
	jr nc,l685ch
	ld c,l
	inc c
	ld d,l
	cp 0b9h
	rst 8
	defb 0fdh,0eah,053h ;illegal sequence
	inc d
	sbc a,h
	or c
	ret po
	add a,h
	sub d
	dec h
	adc a,b
	ld l,c
	inc d
	ld l,l
	sub d
	ld e,h
	inc d
	dec h
	inc b
	inc c
	rst 38h
	ld (hl),b
	inc d
	ld b,(hl)
	inc e
	ex (sp),hl
	call nz,sub_4e9bh
	sub d
	and a
	sbc a,(hl)
	ld d,d
	rst 38h
	jr c,$+104
	cp d
	sbc a,l
	ld b,l
	exx
	xor b
	inc h
	rst 38h
	ld (hl),l
	add hl,de
	ld b,a
	rst 38h
	ld (hl),h
	pop bc
	ld (hl),b
	nop
	add hl,hl
	call nz,sub_4900h
	nop
	ld l,(hl)
	call nc,sub_6d43h
	rst 20h
	ld b,d
	dec c
	ld sp,0c114h
	sbc a,c
	and l
	add a,b
	ld d,d
	ld l,(hl)
	add a,b
	add hl,hl
	in a,(080h)
	ld e,b
	cp (hl)
	ld e,h
	djnz l6977h
	dec a
	rst 38h
	ld bc,02905h
	ld l,l
	nop
	ex af,af'
	and h
	ld l,(hl)
	sub (hl)
	add a,c
	ld h,h
	cp 0adh
	cp 06dh
	defb 0fdh,063h ;ld iyh,e
	inc b
	call m,0a6bfh
	ld b,a
	dec (hl)
	sbc a,l
	inc b
	ld c,l
	cp e
	rst 38h
	ld l,(hl)
	jp pe,089d1h
	or a
	xor e
	ld d,d
	sub (hl)
	ld b,h
	jp l5d1ch
	inc b
	and d
	defb 0fdh,053h,0dah ;illegal sequence
	dec e
	adc a,l
	ld de,l4947h
	rst 38h
	scf
	ret c
	ld d,e
	add a,b
	jr z,l696fh
	rst 38h
	push hl
	ld c,c
	inc c
l696fh:
	adc a,c
	ld a,l
	rst 38h
	and 0a3h
	ld d,e
	cp b
	xor c
l6977h:
	add a,d
	ld e,h
	inc b
	dec d
	ld l,(hl)
	ld l,(hl)
	ld c,l
	dec b
	call nz,09208h
	rst 20h
	cp b
	cp a
	ld (hl),b
	sub (hl)
	ld h,c
	in a,(08ah)
	rst 38h
	add a,b
	add a,e
	adc a,(hl)
	sub d
	add a,d
	exx
	ld h,b
	rst 38h
	sbc a,d
	inc b
	ld (hl),c
	inc d
	rst 30h
	adc a,02bh
	ld l,c
	ld b,h
	rst 38h
	rst 38h
	jp nc,0ba48h
	dec b
	rst 38h
	ld (0ae22h),a
	cp 027h
	cp 0fah
	adc a,h
	sbc a,097h
	or (hl)
	xor e
	call sub_61e1h
	ld c,c
	ld c,l
	adc a,e
	ld b,d
	jp c,0b491h
	sub (hl)
	inc b
	adc a,h
	cp e
	adc a,e
	rst 38h
	sbc a,e
	and 014h
	call m,0b672h
	call nc,00811h
	rst 38h
	ld (hl),h
	sub d
	jp z,08cc9h
	ld d,(hl)
	add a,b
	sub h
	inc (hl)
	in a,(08fh)
	rst 38h
	inc (hl)
	sub d
	or (hl)
	ld (019f9h),bc
	cp l
	adc a,b
	sub (hl)
	jp p,l50cfh
	rst 0
	ld b,h
	sbc a,(hl)
	sbc a,c
	dec h
l69e7h:
	adc a,a
	or e
	cp b
	xor c
	xor e
	ld h,l
	add a,b
	ld a,(de)
	add a,c
	add a,h
	or e
sub_69f2h:
	ei
	rst 38h
	ld h,e
	sbc a,l
	pop af
	jp p,0d8ebh
	and h
	and (hl)
	ld l,d
	sub (hl)
	dec a
	ld c,l
l6a00h:
	cp a
	sub l
	inc c
	sbc a,l
	call pe,013ddh
	call m,039fdh
	jr l6a24h
	sbc a,a
	rst 30h
	and a
	ld e,l
	out (03bh),a
	inc d
	jp 03003h
	inc (hl)
	jr c,l6a92h
	and 0b3h
	defb 0edh ;next byte illegal after ed
	xor 0aah
	cp e
	xor a
	ld e,a
	ld e,c
	sbc a,a
	add a,(hl)
l6a24h:
	inc d
	ld a,c
	jp nc,011ech
	ld l,l
	call pe,09be5h
	ld d,018h
	rst 28h
	sbc a,(hl)
	and l
	adc a,(hl)
	sub d
	di
	rst 8
	xor d
	rlc b
	sbc a,c
	push de
	jr nc,l6a74h
	ld d,(hl)
	rst 38h
	ld d,d
	ex af,af'
	jr l6a90h
	cp a
	jr nc,l6a00h
	in a,(08eh)
	ex de,hl
	ld a,b
	and d
	sub h
	add a,h
	ld d,d
	dec h
	jp nc,l79b1h
	pop de
	adc a,e
	call nc,00063h
	ld b,069h
	sub d
	or d
	add a,c
	or e
	add a,b
	ld (0ff38h),hl
	daa
	jp c,0add8h
	xor e
	and (hl)
	ld h,e
	pop hl
	ld a,b
l6a6ah:
	jr nc,l6ab5h
	ld l,051h
	ei
	ld sp,hl
	ld d,000h
	add hl,bc
	add hl,hl
l6a74h:
	inc (hl)
	ex af,af'
	cp 0feh
	sbc a,d
	cp 02fh
	pop de
	ret z
	call c,0c7c8h
	pop bc
	djnz l6ad8h
	inc (hl)
	ex (sp),hl
	ld (hl),h
	adc a,a
	ld d,c
	push af
	ld l,l
	dec bc
	inc c
	ei
	ld d,(hl)
	adc a,(hl)
	sub c
l6a90h:
	xor b
	sbc a,c
l6a92h:
	inc e
	nop
	sbc a,01eh
	ret m
	dec c
	ld sp,hl
	add a,h
	call p,023f9h
	ld b,h
	nop
	inc (hl)
	ld a,l
	rst 38h
	ld d,e
	push af
	ld a,l
	add a,0c9h
	jr $-68
	sbc a,0fbh
	jp z,l726eh
	add a,(hl)
	ld d,h
	ld c,c
	jr nc,l6b0ch
	ld (hl),e
	ld l,l
l6ab5h:
	ld de,l498dh
	adc a,a
	ld hl,(0d78eh)
	add a,c
	ld b,0beh
	jp c,0009fh
	ld c,h
	adc a,c
	ld d,e
	cp 0fdh
	inc sp
l6ac8h:
	inc d
	call m,sub_6d79h
	ld c,c
	or l
	rst 38h
	ld e,c
	adc a,b
	dec (hl)
	adc a,b
	ld l,b
	add hl,hl
	sub (hl)
	in a,(09eh)
l6ad8h:
	cp c
	dec c
	inc e
	jr l6a6ah
	ld h,a
	sub a
	ret p
	cp e
	cp d
	pop de
	ld de,l7955h
sub_6ae6h:
	rst 18h
	and 07ah
	add hl,hl
	cp c
	dec hl
	xor h
	inc h
	inc l
	ld bc,095a7h
	rst 38h
	cp c
	ld a,(bc)
	rst 38h
	ld e,h
	or b
	ld l,(hl)
	ld c,a
	or (hl)
	rst 18h
	xor (hl)
	ex de,hl
	cp c
	pop de
	sbc a,d
	rst 38h
	sbc a,h
	inc (hl)
	ld a,(de)
	ld l,d
	and (hl)
	ex de,hl
	sbc a,l
	ld a,(0b481h)
l6b0ch:
	add a,b
	jp z,0b579h
	ld d,e
	and (hl)
	sbc a,c
	ld l,e
	sub (hl)
	inc a
	ld c,c
	rst 10h
	ld (de),a
	ld l,0d6h
	push bc
	and h
	ld a,h
l6b1eh:
	jr nc,l6b1eh
	ld a,a
	ld c,b
	inc c
	cp (hl)
	rst 18h
	ld d,c
	rst 38h
	sub (hl)
	ld b,l
	out (077h),a
	or c
	sub a
	or c
	add a,l
	inc (hl)
	or (hl)
	adc a,e
	call nz,08c80h
	rst 38h
	adc a,(hl)
	and b
	ld (08afch),a
	add a,0f6h
	xor e
	dec hl
	and a
	ld l,b
	rst 38h
	xor a
	and 088h
	xor a
	sub (hl)
	cp e
	jr nz,$-125
	dec h
	or e
	inc hl
	in a,(02eh)
l6b4fh:
	cpl
	rst 38h
	pop bc
	ld c,l
	jp po,l7212h
	call nz,sub_482ah
	nop
	ld d,e
	cp d
	add a,(hl)
	inc e
	add a,a
	jp 06014h
	sub (hl)
	in a,(0dbh)
	ld e,h
	nop
	sub 0ebh
	ld l,e
	add a,c
	ld l,a
	cp (hl)
	jp c,0d963h
	inc de
	inc a
	ld h,h
	ld h,e
	sub d
	add hl,bc
	dec b
	ld c,d
	ld c,l
	or l
	ld c,h
	ld e,c
	inc h
	defb 0fdh,0feh,0a2h ;illegal sequence
	pop hl
	ld h,(hl)
	in a,(0dfh)
	ld (hl),l
	sbc a,l
	or (hl)
	cp e
	in a,(07eh)
	dec bc
	adc a,a
	ld c,c
	jp 00599h
	add a,c
	or l
	rst 38h
	dec (hl)
	ld l,(hl)
	inc e
	jp c,012b4h
	ld c,(hl)
	rst 8
	ld l,c
	djnz l6ba3h
	rst 38h
	dec a
	ld (0e592h),hl
l6ba3h:
	add a,004h
	inc b
	or (hl)
	and 090h
	ld de,0c2ffh
	inc b
	rst 38h
	dec sp
	ld e,a
	ld c,c
	defb 0fdh,05ch ;ld e,iyh
	nop
	pop de
	and a
	defb 0fdh,054h ;ld d,iyh
	cp 04ah
	jr nc,$-1
	ex de,hl
	sub d
	sub b
	sub d
	jp c,09991h
	jp c,085bch
	add a,b
	jr nc,$-3
	jp nz,l5513h
	ld e,l
	rst 38h
	jr c,l6bf5h
	dec b
	dec b
	add a,l
	add a,d
	ld c,(hl)
	cp d
	rst 38h
	ld sp,l4f72h
	push bc
	jp pe,0fe2ch
	ld a,a
	ld c,b
	ex af,af'
	inc hl
	jr l6c39h
	sbc a,l
	adc a,d
	jp 0b695h
	push hl
	sbc a,l
	cp e
	cpl
	or (hl)
	and a
	adc a,d
	rst 18h
	ret z
	rst 38h
	and 0bah
l6bf5h:
	cp c
	xor h
	ret po
	sbc a,d
	jp 032ffh
	rst 38h
	or a
	rrca
	ld d,d
	sub d
	adc a,(hl)
	ld l,d
	dec d
	dec b
	or 024h
	ld c,c
	rst 38h
	pop hl
	rst 18h
	dec h
	rst 38h
	ld e,004h
	ld c,(hl)
	sub d
	jp nz,000d3h
	or (hl)
	nop
	add a,h
	jp c,0e7c8h
	adc a,c
	ld h,0bfh
	sbc a,c
	call m,09acfh
	sub h
	ld b,h
	call c,0e8adh
	ld l,(hl)
	add a,c
	xor l
	add a,b
	ld (0da9dh),a
	ld c,a
	rst 38h
	adc a,04eh
	inc de
	ld (hl),d
	ld h,e
	dec b
	ld l,b
	ld l,c
	ld sp,hl
	dec hl
l6c39h:
	cp 037h
	defb 0fdh,0fah,05ch ;illegal sequence
	rst 20h
	rla
	or (hl)
	ret po
	call nc,sub_64bfh
	rst 38h
	call po,0ecfeh
	add a,h
	ld c,c
	ld c,l
	push hl
	and d
	rst 38h
	ld c,d
	nop
	ld b,038h
	cp d
	jp po,0329fh
	sub a
	ld d,b
	cp e
	nop
	call m,0ae9ch
	rst 38h
	ld d,a
l6c60h:
	ld (hl),d
	dec l
	inc sp
	jr l6c75h
	jr nc,l6c60h
	pop de
	in a,(0ffh)
	dec e
	sub d
	jp c,0b949h
	ld d,a
	call po,02172h
	add hl,hl
	adc a,h
l6c75h:
	ld b,a
	ld c,(hl)
	add a,h
	sub e
	cp 067h
	call m,0195bh
	sbc a,e
	ld c,l
	ld (0ff49h),hl
	ld d,e
	or a
	add a,b
l6c86h:
	ld c,l
	ld l,l
	ld c,a
	ld d,h
	sub d
	ld b,(hl)
	ex (sp),hl
	sub h
	add a,h
	dec l
sub_6c90h:
	in a,(0a3h)
	ld a,b
	push bc
	jp 0b5c4h
	ld d,0feh
	cp a
	and (hl)
	daa
	inc e
	inc (hl)
	sub d
	sbc a,b
	add a,d
	ret c
	and e
	and a
	adc a,b
	sub (hl)
	inc h
	adc a,e
	inc b
	rst 18h
l6caah:
	rst 18h
	call c,086d1h
	ld l,l
	in a,(0bah)
	inc e
	or 0d5h
	cp 094h
	inc hl
	inc b
	rst 38h
	push bc
	dec h
	defb 0edh ;next byte illegal after ed
	ld e,h
	ld d,l
	xor l
	ld de,0bb31h
	or (hl)
	inc h
	sbc a,c
	adc a,h
	rst 38h
	ld (l72dah),hl
	jp p,0179eh
	dec b
	nop
	ld (de),a
	add a,d
	or h
	nop
	cp 0c6h
	ld (hl),d
	jp c,0298fh
	ld c,c
	nop
	ld a,(de)
	ld e,e
	rr e
	ld h,b
	add a,c
	xor h
	dec a
	rst 10h
	add a,d
	add a,d
	ld a,c
	ld d,l
	adc a,09ah
	ld c,b
	ld l,(hl)
	ld e,l
	rst 38h
	rst 38h
	and 0feh
	xor b
	rst 38h
	cp 0a5h
	inc d
	rst 8
	call p,sub_74e2h
	ld (hl),d
	ex (sp),hl
	dec b
	ld d,(iy-002h)
	jr z,l6c86h
	xor e
	rst 38h
	ld l,d
	inc c
	sbc a,e
	ld h,(hl)
	sbc a,e
	ld c,c
	nop
	nop
	sbc a,e
	add hl,sp
	sub h
	ld a,h
	ld b,a
	rst 38h
	ld b,l
	dec b
	sub (hl)
	add a,b
	inc sp
	add a,d
	add a,(hl)
	adc a,b
	sub c
	rst 38h
	sbc a,e
	rst 38h
	and (hl)
	or (hl)
	ld d,d
	nop
l6d22h:
	dec (hl)
	ld (hl),d
	nop
	sub d
	add a,d
	ld l,h
	jp (hl)
	add a,d
	inc bc
	dec e
	sub d
	ld a,c
	call m,sub_4d2fh
	nop
	exx
	call z,0b406h
	sub c
	or a
	add a,b
	ld c,d
	add a,b
	ld b,d
	rst 18h
	ld e,c
	or a
	ld c,h
	ld c,(hl)
	jr nc,l6db5h
sub_6d43h:
	rst 18h
	ei
	sub d
	jp 035ffh
	ld c,c
	cp a
	and (hl)
	ld (iy-002h),c
	ld e,a
	out (04fh),a
	cp 044h
	sub d
	dec b
	rst 38h
	ld (hl),l
	add a,h
	ret
	cp 039h
	inc c
	ld l,l
	cp a
	cp 039h
	cp d
	dec (hl)
	sbc a,d
	or e
	adc a,l
	ld (0ff00h),a
	ld (hl),096h
	ld (hl),d
	rst 38h
	ld a,(l6e4bh)
	xor b
	rla
	xor 08eh
	inc b
l6d75h:
	sub c
	scf
	xor 02ch
sub_6d79h:
	sbc a,l
	xor 0ffh
	inc a
	sub d
	sub a
	nop
	sub (hl)
	cp 0adh
	cp e
	add a,e
	ld (hl),b
	ld hl,(l49b6h)
	ret po
	ld (hl),b
	cp d
	inc d
	add hl,hl
	and h
	rst 8
	sbc a,(hl)
	rst 38h
	jp (hl)
	add a,b
	ld e,(hl)
	or d
	add a,d
	and b
	cp d
	ld d,l
	ld (hl),l
	ld (hl),c
	ld (hl),d
	and c
	jp pe,0f472h
	jr c,$-108
	adc a,(hl)
	rst 38h
	ld (hl),l
	rst 20h
	ld hl,(l4efeh)
	inc b
	cp 0c7h
	rst 38h
	call p,01089h
	cp 0f0h
	daa
	inc b
l6db5h:
	ld (hl),d
	adc a,h
	daa
	ret m
	ld (09ca9h),hl
	and 0ech
	call nz,006cah
	cp d
	or e
	call m,049b4h
	rst 38h
	ld a,d
	sub c
	rst 18h
	ld c,(hl)
	and b
	ld hl,(0d50ch)
	add a,081h
	ld e,(hl)
	or (hl)
	xor d
	or e
	jr l6e34h
	rst 38h
	inc (hl)
	sub (hl)
	ld d,d
	sub a
	add a,b
	ld d,h
	sub (hl)
	ret z
	ld h,c
	ld a,c
	ld a,c
	djnz l6e49h
	dec d
	ex (sp),hl
	ld d,(hl)
	xor h
	sub h
	add a,b
	jp nc,0ffdfh
	inc sp
	add a,d
	push de
	or a
	rst 38h
	or b
	ld a,l
	ld a,c
	add hl,hl
	jp nz,l4ebfh
	or l
	rra
	jp po,0e38ch
	inc (hl)
	add a,e
	push bc
	call sub_4eabh
	cp 0fah
	ld l,(hl)
	call m,071eeh
	daa
	ex af,af'
	cp d
	jp (hl)
	add a,h
	cp e
	or c
	call nc,084fch
	ex af,af'
	or (hl)
	ret
	out (00bh),a
	inc d
	call m,08b3ah
	or a
	add hl,hl
	ld (0961dh),a
	ld (hl),c
	ld c,l
	rst 38h
	rla
	ret po
	ld d,e
	nop
	ld c,(hl)
	rst 30h
	ld sp,00659h
	ld c,h
	cp c
	ld l,(hl)
	ld b,l
	dec b
l6e34h:
	or b
	rst 20h
	ld d,d
	dec b
	rst 38h
	dec sp
	sbc a,c
	ret
	ld c,c
	nop
	call sub_69f2h
	ld l,(hl)
	ld c,l
	and (hl)
	xor c
	ld b,l
	jr l6eb5h
	ld e,c
l6e49h:
	sbc a,b
	ld l,a
l6e4bh:
	nop
	cp 05ah
	and l
	sub d
	sub a
	call z,088f3h
	ld c,c
sub_6e55h:
	rst 38h
	sub a
	or a
	rst 38h
	ld bc,0fb92h
	sbc a,d
	ld e,c
	ld e,c
	ld c,l
	or 0e2h
	ld c,(hl)
l6e63h:
	rla
	inc h
	sub (hl)
	inc h
	pop de
	sub e
	jp c,0cbe3h
	rst 10h
	dec hl
	cp 0fah
	or c
	inc c
	jr $-108
	adc a,a
	ld e,h
	defb 0ddh,0c6h,086h ;illegal sequence
	ld (hl),h
	ld a,l
	cp d
	and d
	ld (hl),a
	add a,c
	and (hl)
	ld a,l
	or e
	cp b
l6e83h:
	bit 1,(hl)
	ld l,l
	sbc a,e
	cp 0dah
	rst 30h
	adc a,h
	ret c
	cp l
	set 1,(hl)
	sbc a,e
	inc hl
	rst 38h
	ld l,d
	xor 094h
	nop
	ld c,l
	adc a,b
	add a,h
	inc (hl)
	jp c,0e5e6h
	or l
	jp po,0ff4eh
	inc a
	or e
	push hl
	ld e,h
	dec h
	add a,d
	pop hl
	ei
	jp nc,03c4eh
	ld d,d
	inc b
	add a,b
	res 0,b
	jr l6e83h
	ld c,a
	daa
l6eb5h:
	sub d
	sub l
	inc c
	jp c,04bbah
	and (hl)
	add a,b
	ld d,c
	or e
	ld (l75bah),a
	xor d
	adc a,b
	ld c,l
	xor e
	call p,sub_4ccah
	call pe,07914h
	ld d,b
	call pe,sub_7995h
	cp 071h
	add a,d
	inc d
	cp 0ffh
	ld c,e
	call m,0b3dch
	inc b
	jp pe,0006ah
	ld a,l
	defb 0fdh,085h ;add a,iyl
	ld c,l
	call m,0f92ch
	add a,029h
	sub d
	inc b
	ld h,a
	xor d
	dec bc
	add hl,hl
	and c
	ld h,a
	dec h
	ld de,0ff29h
	jp z,000bbh
	xor d
l6ef7h:
	xor h
	ret nz
	ld h,h
	dec a
	sbc a,(hl)
	sub c
	cp d
	sub c
sub_6effh:
	push de
	ld d,d
	rra
	or (hl)
	ld b,(hl)
	or b
	inc h
	sbc a,h
	ret nz
	jp c,l5318h
	defb 0fdh,03ah,09ah ;illegal sequence
	jp 025f1h
	ld l,(hl)
	inc a
	push bc
	xor d
	ld a,c
	and (hl)
	add a,b
	ld e,c
	ld c,l
	dec de
	xor h
	ld b,(hl)
	nop
	ld c,d
	sub 0cbh
	ld h,e
	ld l,(hl)
	add a,b
	ld d,l
	rst 10h
	jp l6d22h
	ei
	xor d
	ld d,0dah
	out (0ebh),a
l6f2fh:
	res 7,d
	ld c,(hl)
	rst 20h
	dec (hl)
	call z,sub_662ah
	cp 0feh
	sub h
	inc c
	inc e
	inc hl
	ld e,c
	or (hl)
	or 052h
	ld l,l
	xor 081h
	inc d
	jp c,l726eh
	cp l
	ld d,(hl)
	cp d
	push de
	cp l
	xor c
	inc b
	rst 38h
	add a,e
	ld l,l
	ld (hl),d
	ld bc,01b55h
	add a,(hl)
	ld l,(hl)
	jp z,000f1h
	adc a,b
	jp c,0abebh
	rst 10h
	inc de
	jr nc,l6f2fh
	jr z,l6ef7h
	nop
	sbc a,a
	xor d
	and b
	ld h,c
	inc (hl)
	cp d
	rst 10h
	dec sp
	add hl,bc
	ld e,e
	ld c,033h
	rst 38h
	cp c
	defb 0fdh,099h,0a8h ;illegal sequence
sub_6f77h:
	xor b
	dec h
	or d
	and b
	xor l
	ld e,b
	sbc a,d
	ret z
	rst 38h
	ld sp,l6549h
	sub c
	rst 38h
	ld d,h
	ld h,l
	add a,b
	rst 10h
	xor h
	sbc a,d
	add a,c
	call c,0a296h
	ld l,(hl)
	add a,b
	sub c
	or (hl)
	ld h,07dh
	ret m
	ld b,d
	adc a,d
	ld (hl),d
	add a,b
	xor d
	ld c,a
	dec b
	add a,c
	ld (hl),0cch
	ld d,(hl)
	cp 0bfh
	and (hl)
	ld c,l
	jr $+1
	rst 30h
	rla
	nop
	inc bc
	inc (hl)
	inc a
	djnz l6fafh
l6fafh:
	inc e
	inc d
	nop
	sbc a,l
	add hl,sp
	inc e
	add hl,bc
	call m,02e00h
	ld e,l
	ex af,af'
	jp nc,02379h
	ld e,c
	or d
	cpl
	rla
	ld (bc),a
	inc (hl)
	ld e,l
	rst 38h
	add hl,hl
	sbc a,(hl)
	ld c,(hl)
	push hl
	rst 0
	ld l,(hl)
	push hl
	halt
	sub d
	defb 0edh ;next byte illegal after ed
	di
	ld d,d
l6fd2h:
	ld c,c
	ld bc,03905h
	rst 38h
	add hl,sp
	ld h,04eh
	dec b
	pop hl
	sub (hl)
	sbc a,h
	ld (hl),l
	rrc b
	sub d
	jr nz,$-9
	and h
	add a,b
	sub e
	cp e
	dec l
	dec c
	ei
	inc (hl)
	nop
	jr z,l702bh
	jr l6ff4h
	adc a,(hl)
	and e
	add a,(hl)
l6ff4h:
	add a,b
	djnz l7027h
	djnz l7001h
	adc a,a
	cp 0e8h
	sbc a,l
	ex af,af'
	call m,0cb5eh
l7001h:
	ld e,h
	push af
	ld c,l
	call nz,08aeeh
	cp (hl)
	call z,08772h
	adc a,c
	jp z,0b0dch
	sub e
	inc e
	rst 38h
	add a,h
	inc (hl)
	sub d
	call p,01aedh
	nop
	jp po,l4649h
	add hl,hl
	ret po
	ld de,l5579h
	ret z
	sub e
	sub 054h
	and c
	sub d
l7027h:
	inc d
	jr nc,l702ah
l702ah:
	ld e,l
l702bh:
	and h
	ld h,(hl)
	rst 20h
	ld h,e
	jr nc,$+43
	add hl,de
	jr l6fd2h
	or e
	adc a,e
	ld c,(hl)
	sub a
	dec a
	or l
	scf
	ei
	xor h
	defb 0ddh,0adh ;xor ixl
	ret nc
l7040h:
	ld (hl),h
	scf
	jr nc,l705ch
	jp 098abh
	adc a,l
	scf
	jp pe,000e5h
	and d
	rst 8
	jp p,l7c32h
	ld (09c9ch),hl
	ld l,h
	or e
	or d
	dec hl
	ld h,e
	jp c,018b6h
l705ch:
	inc h
	dec a
	ld l,e
	inc d
	cp c
	add hl,de
	cpl
	add a,d
	dec de
	cp 03fh
	pop de
	cp e
	inc d
	call m,sub_49c1h
	jp p,0a339h
	dec (hl)
	or b
	ld h,(hl)
	or c
	ex (sp),hl
	ld l,l
	jp z,01825h
	set 0,a
	rst 38h
	ld (hl),c
	ld a,(de)
	inc l
	add hl,hl
	adc a,0ceh
	nop
	ld e,l
	add hl,hl
	call p,0b395h
	ld l,l
	xor a
	and h
	ld a,c
sub_708ch:
	and l
	ld d,(hl)
	push de
	pop de
	rst 38h
	sbc a,d
	and b
	sub l
	or d
	jp l406dh
	ex af,af'
	ld c,l
	sbc a,h
	rst 38h
	jp c,0dcefh
	pop bc
	and e
	jp nc,0db86h
	ld e,e
	xor e
	jp c,0cb32h
	ret nz
	inc (hl)
	djnz l70e5h
	sub 0b5h
	xor d
	ld (hl),052h
	add hl,hl
	nop
	ld hl,(04e00h)
	sub (hl)
	nop
	ld a,h
	call c,0bdbdh
	or d
	cp c
	call m,0a6fbh
	dec hl
	dec l
	adc a,d
	ld l,(hl)
	ld b,b
	call p,0ef4ch
	inc h
	cp a
	call po,0bcb2h
	defb 0fdh,057h,06dh ;illegal sequence
	cp 0f4h
	adc a,e
	inc b
	ld (hl),c
	adc a,l
	cp c
	adc a,h
	rst 10h
	adc a,h
	jp p,0b652h
	ld a,l
	add a,d
	ld b,(hl)
	xor (hl)
	dec hl
	ld (hl),d
l70e5h:
	adc a,c
	ld l,00ch
	and e
	call z,0ca00h
	or d
	or b
sub_70eeh:
	ld (l7afeh),a
	inc hl
	sub (hl)
	ld c,(hl)
	sbc a,c
	inc hl
	rst 38h
	inc b
	sub d
	ld d,d
	ld d,d
	rst 20h
	and 0bfh
	ret
	jr nc,$+67
	ld e,c
	and d
	add a,a
	ret c
	ld l,d
	ld (hl),d
	rst 38h
	dec sp
	cp d
	ld b,b
	call po,0ace5h
	pop hl
	nop
	in a,(03fh)
	xor c
	add hl,hl
	call z,0cccah
	and l
	xor c
	ld l,b
	add a,b
	or l
	ld (hl),09ah
	sbc a,d
	ld d,c
	cp 021h
	cp h
	call c,0fedch
	dec d
	nop
	and h
	ld l,c
	ld h,08bh
	jp c,03994h
	cp a
	inc l
	set 0,h
	sub 0b1h
	ld (bc),a
	ld c,e
	ld (hl),d
	defb 0fdh,091h,008h ;illegal sequence
	ex af,af'
	cp 03fh
	pop de
	rst 30h
	call m,02544h
	ld c,l
	jp p,0856eh
	out (0f4h),a
	daa
	ld (hl),d
	sbc a,l
	inc hl
	adc a,c
	daa
	inc c
	inc (hl)
	ld a,(de)
	dec c
	jp c,0c9b1h
	or 0aah
	nop
	push hl
	call 02786h
	and h
	ld h,h
	sbc a,h
	adc a,d
	rst 38h
	and (hl)
	adc a,d
	ei
	xor d
	rst 38h
	adc a,(hl)
	rst 38h
	add hl,de
	inc c
	ret c
	ld d,d
	add a,b
	and l
	sub (hl)
	sbc a,b
	inc hl
	rst 38h
	ld e,l
	ld l,l
	ret c
	ld c,(hl)
	jr nz,$-35
	nop
	xor l
	add a,d
	adc a,h
	sub c
	ld e,c
	cp 092h
	ex af,af'
	xor c
	sbc a,d
sub_7184h:
	or (hl)
	ld c,c
	or (hl)
	ret
	dec l
	rst 0
	cp 00bh
	sub d
	adc a,e
	ld c,l
	cp 0b0h
	ld h,(hl)
	or (hl)
	ld c,h
	ld c,d
	ld (hl),b
	ex de,hl
	ld b,(hl)
	add a,c
	ld h,b
	jp nc,08d72h
	add a,c
	xor c
	add a,b
	ld l,(hl)
	jp m,0fec5h
	rst 38h
	ld b,a
	cp 034h
	and h
	ld (hl),d
	dec h
	adc a,d
	rst 38h
	call m,0f289h
	rst 8
	sub (hl)
	call 0a2bfh
	nop
	djnz l7215h
	inc c
	ccf
	inc d
	inc c
l71bch:
	jp m,0cd9ah
	call z,0e090h
	ld bc,02514h
	ld d,l
	rst 18h
	sbc a,h
	ld d,e
	ld (hl),d
	rst 38h
	xor d
	sub (hl)
	rst 18h
	and e
	rst 38h
	ld l,e
	and d
	ld (hl),h
	add a,c
	ld b,h
	in a,(0feh)
	cp e
	xor h
	inc bc
	sub a
	adc a,h
	rst 38h
	xor h
	or 09bh
	rst 38h
	adc a,d
	rla
	nop
	inc h
sub_71e5h:
	adc a,a
	or d
	adc a,e
	jr l71bch
	sub c
	or a
	ld c,c
	cp 09ch
	inc c
	jp (hl)
	xor a
	inc (hl)
	add a,e
	daa
	cp 015h
	jr nz,sub_71f9h
sub_71f9h:
	ret z
	add a,h
	ld d,b
	sbc a,h
	cp 064h
sub_71ffh:
	rst 38h
	ld c,(hl)
	or d
	sbc a,l
	add hl,bc
	or e
	or e
	add a,c
	inc bc
	ld (hl),c
	ld (hl),c
	sub c
	ld (hl),c
	sub b
	djnz sub_71e5h
	inc e
	sub c
	ld (hl),l
l7212h:
	ld a,c
	rlca
	rst 18h
l7215h:
	sub d
	ccf
	xor d
	inc d
	cp 0feh
	adc a,l
l721ch:
	djnz l721ch
	dec a
	daa
	ld c,l
	sub 027h
	jp p,0da52h
	ld a,e
	ld c,(hl)
	cp l
	inc h
	inc c
	ld d,05dh
	ld h,c
	ld a,l
	adc a,h
	ld a,(de)
	and (hl)
	cp d
	ld (hl),d
	call 0955fh
	sub h
	ld a,(de)
	nop
	inc a
sub_723bh:
	ld b,l
	ld a,l
	ret pe
l723eh:
	rst 38h
	inc (hl)
	call c,0ff6ch
	ld c,e
	jp c,0cddah
	adc a,d
	ld c,b
	rst 38h
	ret po
	ex af,af'
	ld e,c
	ld (096bah),hl
	and 08ch
	or h
	cp d
	rrca
	rst 38h
	xor d
l7257h:
	add a,0eeh
	xor a
	rst 28h
	sbc a,b
	inc b
	xor h
	push bc
	ret pe
	ld (hl),e
	ld h,04dh
	jp p,0e7d9h
	ld l,l
	dec bc
	inc (hl)
	xor d
	ld sp,034c8h
	add hl,bc
l726eh:
	ld d,b
	ld a,b
	adc a,h
	cp 022h
	defb 0fdh,0feh,0ffh ;illegal sequence
	ld b,h
	or d
	defb 0fdh,0b3h,006h ;illegal sequence
	rst 10h
	or a
	sub c
	sub (hl)
	or d
	xor (hl)
	or d
	ld l,l
	inc (hl)
l7284h:
	inc a
	ld a,c
	xor 066h
	ld c,(hl)
	rst 38h
	ld d,l
	inc a
	cp 077h
	call m,sub_73f4h
	cp 0ceh
	jp po,l6e63h
l7296h:
	dec iy
	nop
	cp (hl)
	or d
	call m,0c82eh
	push bc
	djnz $-42
	ld c,(hl)
	sbc a,l
	call po,09caah
	sbc a,d
	pop de
	nop
	ld d,l
	ld l,l
l72abh:
	cp h
	adc a,b
	call c,00491h
	ld a,l
	cp (hl)
sub_72b2h:
	ld e,l
	djnz l7284h
	sub h
	ld hl,(05ba4h)
	call p,0df4eh
	inc hl
	ld c,(hl)
	rst 38h
	add a,a
	inc b
	or d
	ld e,b
	add a,c
sub_72c4h:
	sub (hl)
l72c5h:
	dec hl
	jr $+41
	ld a,l
	inc sp
	ld l,l
	ret p
	ld l,a
	nop
	halt
	add hl,bc
	ld c,0ddh
	dec b
	ret
	pop de
	inc b
	jr c,$+32
	ld (hl),c
	dec d
l72dah:
	defb 0fdh,03ch,084h ;illegal sequence
	sbc a,0ffh
	adc a,(hl)
	sub d
	rst 38h
	ld h,l
	nop
	add a,b
	ld (0fab2h),hl
	add hl,hl
	jp nc,0af31h
	rlca
	jp c,l79dah
	ld sp,l7418h
	inc (hl)
	sbc a,a
	cp 0e8h
	ret z
	inc e
	ld d,l
	cp 0e1h
	ld (hl),d
	defb 0fdh,055h ;ld d,iyl
	cp 065h
	nop
	push bc
	call m,0ac47h
	ld (bc),a
	inc b
	ld e,l
	inc a
	adc a,e
	xor (hl)
	nop
	ex de,hl
	adc a,c
	xor a
	sbc a,0bah
	rrca
	ld a,a
	inc e
	jp p,00143h
	jr $+14
	add hl,hl
	dec d
	dec c
	dec hl
	ld (de),a
	rrca
	call sub_67bfh
	nop
	rst 0
	jp z,0075eh
	inc (hl)
	jr c,l733bh
	jr z,l72c5h
	cp 0e6h
	call 0ff88h
	call 01180h
	or d
	rst 38h
	ld a,d
	add a,c
	inc bc
	sub d
l733bh:
	ld l,c
	adc a,(hl)
	or d
	or (hl)
	or (hl)
	sub e
	ld (hl),h
	jp c,sub_7ffeh
	sbc a,(hl)
	ld b,a
	cp d
	rst 38h
	dec d
	ret
	sub d
	rst 28h
	inc hl
	inc d
	rst 10h
	daa
	xor b
	xor d
	push de
	rst 10h
	djnz l7357h
l7357h:
	adc a,a
	inc d
	ld (hl),d
	sbc a,e
	sbc a,(hl)
	nop
	ret c
	add hl,de
	add hl,bc
	inc l
	dec (hl)
	ld a,c
	xor a
	ei
	nop
	ld c,c
	inc c
	inc b
	ret p
	ld (hl),b
	and 000h
	cp 03ah
	ld h,b
	ld h,l
	or d
	adc a,(hl)
	call p,sub_4e80h
	ld l,(hl)
	defb 0fdh,004h,0b6h ;illegal sequence
	ld b,l
	ld b,l
	ld l,d
	rst 38h
	ld h,e
	in a,(08ah)
	or l
	ex af,af'
sub_7383h:
	nop
	call nz,sub_7ffeh
	ld b,h
	inc c
	dec sp
	inc e
	inc (hl)
	call m,02996h
	out (04ch),a
	ld d,l
	and c
	rst 18h
	cp a
	ld a,l
	jr nz,l739ch
	dec (hl)
	dec (hl)
	ld e,c
	inc b
l739ch:
	dec (hl)
	ld sp,0310dh
	ld a,c
	nop
	sbc a,h
	jp nz,09900h
	ld d,l
	ex de,hl
	inc a
	ld a,000h
	ld (hl),h
	ld d,b
	defb 0fdh,0f6h,0ffh ;illegal sequence
	ld (hl),06ah
	ld l,c
	cp 0a0h
	add a,c
	adc a,(hl)
	ld c,c
	call po,004e4h
	jr nz,$+71
	ld b,c
	ld b,l
	ld h,l
	add a,c
	and h
	add a,b
	or b
	cp h
	ccf
	ld d,b
	nop
	nop
	and h
	and e
	call po,0f8e0h
	cpi
	rra
	ld c,c
	ld bc,l4104h
	and (hl)
l73d6h:
	dec b
	ld b,(hl)
	dec c
	defb 0fdh,008h,079h ;illegal sequence
	ld e,c
	ld de,0c7ffh
	sbc a,h
	nop
	rlca
	ld a,c
	dec l
	inc sp
	ret po
	inc hl
	sbc a,h
	cp 0b0h
	adc a,d
	adc a,(hl)
	adc a,(hl)
	ld l,(hl)
	sbc a,d
	jp p,l6603h
	sub d
sub_73f4h:
	rst 30h
	add hl,de
	ld hl,00041h
	add a,c
	ld hl,0d68ah
	adc a,(hl)
l73feh:
	sbc a,h
	res 0,b
	call p,0088eh
	call m,0fee2h
	adc a,(hl)
	xor (hl)
	jp c,0a793h
	call m,0ebf4h
	ei
	jr c,l7412h
l7412h:
	jp po,0fe90h
	ld a,d
	ld c,a
	ld a,c
l7418h:
	cp 0e1h
	ld bc,0dc9ch
	cp h
	defb 0ddh,0deh,0feh ;illegal sequence
	ld a,b
	daa
l7423h:
	ld l,l
	ei
	ld hl,(009f9h)
	sub d
	ld c,b
	inc h
	jp c,08efeh
	ld b,l
	ld h,(hl)
	nop
	ld b,h
	ld l,d
	or d
	ei
	add a,b
	or b
	sbc a,h
	sbc a,a
	cp 0e9h
	ld c,(hl)
	sub d
	in a,(0edh)
	ld (hl),0f1h
	call m,093dbh
	nop
	ex af,af'
	call m,sub_60fah
	ld d,l
	ld a,c
	ld a,h
	sbc a,h
	ld a,h
	ld b,a
	ld a,b
	cp 014h
	dec b
	add a,(hl)
	xor c
	dec (hl)
	add hl,bc
	inc sp
	rst 30h
	add hl,bc
	inc l
	ld c,b
	ld (hl),h
	rst 38h
	jp nz,0ffddh
	cp 032h
	rst 38h
	dec l
	cp 095h
	or a
	ld b,011h
	add a,h
	jr nc,l7423h
l746dh:
	ld h,(hl)
	add a,(hl)
	call po,08a00h
	adc a,d
	ld e,a
	in a,(091h)
	inc sp
	cp 0fdh
	ld hl,(0fa92h)
	dec (hl)
	jr l746dh
	exx
l7480h:
	call m,0a65fh
	add hl,bc
	ld b,(hl)
	ld de,0a5feh
	sbc a,h
	add a,b
	ld (hl),d
	nop
l748ch:
	inc b
	jr z,$+55
	dec c
	adc a,a
	ei
	ld b,a
	jp nz,l4c04h
	ld d,b
	ld (hl),b
	cp 0b1h
	defb 0ddh,0feh,03bh ;illegal sequence
	ei
	sub h
	nop
	rst 10h
	ld b,b
	rst 38h
	djnz l7512h
	in a,(0dbh)
	or d
	adc a,d
	adc a,c
	jp m,000abh
	ld c,d
	add a,b
	ld c,0aeh
	ei
	ei
	sub b
	ld (bc),a
	ei
	in a,(0fbh)
	ld l,c
	rst 38h
	ccf
	and c
	halt
l74bdh:
	inc d
	xor h
	rst 0
	ei
	ex de,hl
	ld b,(hl)
	cp 0abh
	ld sp,l4bf4h
	ld a,h
	ld a,h
	add a,b
	ld h,d
	ld b,0a3h
	rlca
	call m,0d2efh
	xor d
	jp p,l7040h
	sub h
	sbc a,b
	sbc a,b
	xor d
	defb 0fdh,0feh,028h ;illegal sequence
	rst 38h
	exx
	add a,b
	jr nz,sub_74e2h
sub_74e2h:
	rst 10h
	jp c,09828h
	jr nc,l7555h
	rst 10h
	add a,e
	adc a,(hl)
	cp 030h
	nop
	xor d
	xor a
sub_74f0h:
	ld (0aed7h),hl
	nop
	out (0b2h),a
	sub d
	ld c,d
	cp 0feh
	adc a,(hl)
	ei
	ccf
	ld h,d
	call z,0fe36h
	inc h
l7502h:
	ld a,b
	ld sp,hl
	jp nc,07c02h
	rst 38h
	or (hl)
	cp 034h
	dec (hl)
	dec b
	rst 0
	xor h
	cp (hl)
	and b
	ld b,b
l7512h:
	ld d,h
	sbc a,b
	cp b
	cp b
	ld b,a
	ret c
	cp 024h
	or (hl)
	sub d
	rst 38h
	ld (hl),b
	sub d
	ld b,h
	ld c,h
	rst 38h
	or a
	inc hl
	or d
	ld l,d
	cp 0ach
	nop
	add hl,hl
	xor a
	xor d
	add a,h
	jr l74bdh
	add a,(hl)
	rra
	sub d
	nop
l7533h:
	nop
	ex (sp),hl
	ld a,e
	rst 30h
	sub e
	di
	cp h
	nop
	adc a,0feh
	ld c,b
	add a,e
	ld sp,00947h
	cp 0deh
	dec c
	inc b
	add hl,bc
	ld c,h
	ld a,b
	cp b
	cp h
	defb 0fdh,0f4h,0ffh ;illegal sequence
	jr l7502h
	sub d
	ld l,(hl)
	nop
	or a
	nop
l7555h:
	ld l,l
	ld c,h
	sub h
	sub d
	rst 10h
	or a
	ld l,d
	xor d
	adc a,c
	ret m
	rlc b
	adc a,d
	rst 0
	ld (bc),a
	add a,e
	ld d,a
	add a,l
	dec b
	xor (hl)
	sbc a,b
	sub d
	add a,b
	cp 037h
	jp m,l5972h
	cp 03ch
	ld l,d
	ld a,(bc)
	add a,c
	ld b,l
	dec l
	call m,0f47dh
	or c
	add a,h
	inc l
	ld (hl),c
	cp 0c8h
	cp l
	defb 0fdh,0e6h,0ffh ;illegal sequence
	dec sp
	dec b
	or (hl)
	ld c,b
	ld c,h
	ld (hl),b
	or (hl)
	ret p
	ret z
	ld l,d
	defb 0fdh,085h ;add a,iyl
	rst 8
	rst 8
	out (000h),a
	inc b
	ld c,b
	add a,d
	xor e
	sub (hl)
	add a,c
	inc l
	add a,c
	inc hl
	jp c,0fd6eh
	call m,0f463h
	jp p,0a4f9h
	ld a,b
	call m,sub_59f4h
	ld l,(hl)
	add hl,sp
	or 02fh
	inc b
	ei
	ret p
	ld b,e
	inc b
	ex af,af'
	ld (hl),l
	ld a,b
	ret m
	or e
	ret m
l75bah:
	rst 30h
	nop
	ld a,d
	call m,0fe8ch
	ld (bc),a
	adc a,(hl)
	or (hl)
	jr z,l7639h
	ld c,h
	or a
	rst 38h
	ld h,d
	adc a,(hl)
	adc a,d
	defb 0fdh,026h,0f7h ;ld iyh,0f7h
	nop
	and h
	out (080h),a
	call nc,0a485h
	adc a,l
	add hl,bc
	xor (hl)
	or d
	sub 092h
	call m,018ffh
	adc a,l
	cp 089h
	call p,0fd59h
	inc a
	sub d
	dec (hl)
	ld sp,00401h
	call m,0e83eh
	cp 0c0h
	inc l
	inc c
	ld d,c
	sbc a,c
	ld b,(hl)
	defb 0ddh,0feh,04bh ;illegal sequence
	add a,b
	ld (hl),a
	rst 38h
	ld b,l
	cp 0edh
	ret p
	ld l,(hl)
	inc l
sub_7600h:
	sbc a,b
	ld (0d748h),hl
	rst 38h
	ld (06692h),hl
	cp 068h
	ei
	nop
	rst 30h
	di
	rst 8
	ld a,e
	xor a
	adc a,b
	ld (0119ah),a
	or (hl)
	ld c,c
	cp 0feh
	ld hl,(08e35h)
	ld sp,hl
	dec e
	ld a,b
	dec b
	ld c,(hl)
	jp m,00523h
	cp 0e9h
	exx
	add hl,de
	ld e,00dh
	jp m,05570h
	dec l
	ld a,c
	ld c,(hl)
	defb 0ddh,0fdh,0c5h ;illegal sequence
	defb 0fdh,0ffh,01eh ;illegal sequence
	ld (hl),a
	cp 0a9h
l7639h:
	ld c,c
	rst 38h
	cp b
	add a,b
	inc hl
	ld b,l
	xor (hl)
	rst 38h
	sbc a,c
	add a,b
	ld d,h
	xor e
	add a,b
	or d
	or d
	sub d
	add a,b
	defb 0fdh,03fh,0c4h ;illegal sequence
	jp p,04ff9h
	add hl,sp
	ret m
	ld d,d
	ld b,058h
	defb 0fdh,02fh,0f4h ;illegal sequence
	xor e
	or 0efh
	ld d,d
	add hl,bc
	xor a
	ld (bc),a
	ld d,l
	dec (hl)
	sbc a,b
	sbc a,c
	cp l
	cp 031h
	rst 38h
	ld bc,0fe97h
	adc a,0ffh
	pop af
	rst 38h
	djnz l76b9h
	ld d,b
	sub l
	nop
	ld c,l
	sub d
	or a
	in a,(0d7h)
	adc a,(hl)
	ld l,c
	out (04bh),a
	ei
	add a,b
	ld d,(hl)
	add a,d
	add hl,hl
	xor e
	add a,b
	sub d
	or d
	jp c,0fff9h
	call nz,000e6h
	ld e,c
	ld sp,hl
	ld a,b
	cp e
	ld sp,02bd3h
	di
	ret pe
	xor 0f2h
	ld h,e
	cp 016h
	dec d
	xor (hl)
	ccf
	sbc a,h
	push af
	ex af,af'
	cp l
	sbc a,0fbh
	or e
	call m,000ach
	ex af,af'
	adc a,(hl)
	ld c,c
	ld l,l
	ld l,c
	rst 38h
	ret nz
	ld c,h
	sub c
	ld c,d
	sub d
	add hl,de
	or e
	rst 10h
	in a,(0edh)
	ld de,0d76ah
l76b9h:
	rst 38h
	ret po
	res 2,l
	add a,b
	jr $+104
	ld l,d
	adc a,(hl)
	add a,b
	cp 020h
	inc b
	xor h
	jp m,00091h
	ld e,b
	ld sp,hl
	add a,(hl)
	ld e,h
	ld a,h
	inc b
	sbc a,(hl)
	ld e,c
	dec c
	sbc a,a
	call p,0f645h
	jp m,00415h
	add a,h
	inc h
	ld (bc),a
	ld de,0fc9bh
	xor l
	ld bc,09898h
	sbc a,h
	call m,0fc7bh
	ld e,l
	ret po
	nop
	sub 049h
	ld c,c
	inc e
	dec h
l76f0h:
	ld b,l
	ld l,(hl)
	add a,l
	adc a,b
	adc a,(hl)
	rst 38h
	ret nc
	or (hl)
	rst 38h
	ei
	adc a,(hl)
	and (hl)
	add a,b
l76fdh:
	sbc a,0cfh
	add a,e
	sub e
	cp 004h
	ld h,(hl)
	ld h,l
	ld l,(hl)
	ld c,c
	defb 0fdh,07fh,087h ;illegal sequence
	ld de,03931h
	ei
	ld hl,(0f35ch)
	adc a,l
	rst 38h
	adc a,h
	call m,000b7h
	or 0eah
	ld d,008h
	dec d
	dec c
	xor c
	ld e,c
	xor d
	inc b
	dec (hl)
	inc b
	xor h
	ld h,(hl)
	call m,0bd59h
	nop
	ld sp,hl
	pop hl
	rst 38h
	dec e
	ld (0ffb2h),hl
	inc h
	ld c,c
	ld b,l
	add a,d
	jr nc,l77a0h
	ld l,c
	add a,a
	sub h
	add a,a
	push af
	sub c
	ld h,e
	or d
	add a,b
	ld (hl),c
	rst 38h
	cp 028h
	add hl,bc
	adc a,l
	defb 0fdh,08ah,0feh ;illegal sequence
	rst 38h
	add hl,hl
	ei
	ret c
	call m,0fec8h
	jp m,0f427h
	dec l
	and a
	dec hl
	rst 30h
	jr c,l76f0h
	ld c,b
	dec d
	add a,c
	ld sp,l7979h
	xor b
	call m,0fc79h
	ld e,e
	defb 0fdh,03eh,051h ;illegal sequence
	cp 075h
	sbc a,0ffh
	add hl,sp
	rst 38h
	ld a,(de)
	or d
	call p,0a186h
	add a,c
	or (hl)
	inc de
	add a,d
	in a,(0aeh)
	rst 10h
	rst 38h
	ld sp,hl
	ld d,(hl)
	xor e
	cp 008h
	ld b,c
sub_777fh:
	ld l,c
	ld l,l
	rst 38h
	rst 38h
	inc c
	ld c,l
	ex af,af'
	rst 0
	ei
	inc d
	cp 064h
	rst 30h
	call po,0f2fbh
	inc (hl)
	dec hl
	inc l
	inc b
	or 0e5h
	ld de,0110dh
	ld de,027feh
	ld de,020f8h
	nop
	dec d
l77a0h:
	ld d,l
	ld a,b
	ld a,c
	xor c
	call m,00099h
	halt
	rst 30h
	and a
	cp 0fdh
	out (0ddh),a
	ld h,b
	sub d
	ld l,c
	ld b,l
	ld c,c
	dec e
l77b4h:
	ld l,c
	ld l,c
	sub d
	call m,0921ah
	or d
	add a,c
	add hl,bc
	sub d
	in a,(0fbh)
	sub l
	ld h,d
	cp 075h
	xor d
	add iy,de
	cp 014h
	sub a
	sub l
	cp 0feh
	inc e
	ex af,af'
	ld (de),a
	inc l
	dec (hl)
	ld e,b
	add a,d
	or e
	call m,0fcb1h
	adc a,e
	inc b
	push af
	ret m
	and e
	jp m,00028h
	rst 30h
	ret z
	rst 38h
	and e
	cp 014h
	add hl,sp
	or b
	inc hl
	ld a,c
	inc iy
	rst 38h
	ld a,(bc)
	cp l
	cp c
	call m,005efh
	sub e
	in a,(0d6h)
	jp p,0edaah
	adc a,b
	ld l,l
	adc a,(hl)
	defb 0fdh,0abh,0f9h ;illegal sequence
	ld (bc),a
	or a
	inc h
	jr z,l7851h
	ld a,(bc)
	sub c
	add a,h
	rst 10h
	add a,c
	ld hl,(02afbh)
	or d
	adc a,d
	ld sp,hl
	ld h,d
	ld b,c
	nop
	ld l,(hl)
	sub b
	add a,(hl)
	sub d
	defb 0fdh,07fh,087h ;illegal sequence
	sub c
	dec l
	add hl,sp
	defb 0fdh,089h,05ch ;illegal sequence
	call m,0dfe3h
	ld a,c
	xor (hl)
	xor 099h
	dec b
	jp (hl)
	sub a
	adc hl,de
	and c
	halt
	jp (hl)
	ld (hl),d
	nop
	ld sp,00d22h
	inc c
	cp 059h
	ld a,c
	xor d
	cp 019h
	ld (bc),a
	daa
	cp l
	cp 00ah
	cp l
	cp (hl)
	add a,c
	ld d,e
	rst 38h
	cp 001h
	ld a,(l52ech)
	in a,(002h)
	add a,l
	or h
	add a,d
	ld c,(hl)
	cp 022h
l7851h:
	ld c,c
	ret m
	inc b
	ld c,h
	ld d,b
	ld c,h
	inc l
	ld c,b
	add a,d
	adc a,e
	ld l,l
	add a,(hl)
	add hl,bc
	adc a,(hl)
	or a
	sbc a,c
	ld b,l
	adc a,(hl)
	sub l
	add a,c
	ld b,l
	ld b,c
	adc a,(hl)
	or (hl)
	and c
	jp (hl)
	rst 38h
	rra
	pop hl
	ret
	ex af,af'
	cp 0dch
	nop
	sbc a,(hl)
	call m,00919h
	in a,(091h)
	pop af
	cp c
	ex af,af'
	xor 059h
	rst 30h
l787fh:
	ld de,01115h
	ret m
	ld e,d
	dec d
	sbc a,h
	call p,0394eh
	cp 048h
	nop
	dec d
l788dh:
	call m,058c4h
	rst 38h
	ret pe
	sbc a,c
	sbc a,b
	sbc a,l
	dec sp
	ld a,c
	sbc a,c
	ei
	dec bc
	cp (hl)
	defb 0ddh,081h,049h ;illegal sequence
	ld bc,0fcfbh
	inc de
	in a,(085h)
	in a,(011h)
	sub d
	or (hl)
	ld l,l
	jp p,0804ah
	inc b
	ld l,l
	ld (hl),b
	ld (hl),b
	ld d,b
	add a,e
	sbc a,b
	nop
	ld c,c
	jp nz,0868dh
	adc a,d
	add a,e
	ld (de),a
	or (hl)
	nop
	in a,(027h)
l78bfh:
	jp nz,0ff9fh
	ccf
	jp 0fee6h
	ld b,l
	jr c,l78cah
	ld e,h
l78cah:
	inc (hl)
	add hl,bc
	adc a,b
	call nz,sub_6ae6h
	dec c
	add a,l
	ld c,e
	pop hl
	call nz,0f035h
	ld l,(hl)
l78d8h:
	ld c,0d1h
	add a,e
	ei
	ld e,h
	ld l,h
	ld a,(bc)
	jr nz,l7936h
	sub l
	xor e
	adc a,d
	defb 0fdh,0ffh,0b9h ;illegal sequence
	xor c
	cp 0b9h
	add a,b
	xor h
	ld c,0bdh
	sbc a,h
	jp c,092e8h
	defb 0ddh,085h ;add a,ixl
	cp b
	adc a,e
	ret nc
	or (hl)
	jp c,0c46dh
	add a,l
	inc h
	adc a,(hl)
sub_78feh:
	or d
	add a,c
	ld c,b
	ld c,h
	add a,d
	jr z,l788dh
	rst 38h
	inc h
	ld b,l
	call po,0c28ch
	adc a,c
	call m,0892bh
	inc hl
	defb 0fdh,0fch,043h ;illegal sequence
	call m,0fef2h
	cp c
	ld h,b
	ex af,af'
	adc a,b
	jr c,l78bfh
	nop
	push hl
	rla
	dec d
	jp po,000beh
	dec de
	ret p
	or e
	or 099h
	ld (de),a
	inc bc
	add hl,bc
	jr z,l795eh
	ld e,c
	ei
	sub (hl)
	ld e,c
	add a,b
	ld e,a
	cp 040h
	ld a,c
l7936h:
	sbc a,b
	ld a,b
	sbc a,h
	sbc a,h
	inc h
	sbc a,b
	sbc a,b
	add a,d
	sbc a,d
	rst 10h
	add a,l
	ld c,d
	adc a,d
	ld c,c
	inc bc
	sbc a,082h
	ld c,l
	ld c,h
	jp pe,0a28eh
	inc de
	jp p,08bc2h
	add a,d
	ld d,b
	ld l,l
	ld c,l
	inc c
l7955h:
	inc h
	nop
	ld c,c
	ld c,c
	adc a,b
	ld b,c
	sub d
	sbc a,b
	sbc a,h
l795eh:
	inc (hl)
	ld b,a
	defb 0fdh,0f8h,07dh ;illegal sequence
	and 0e2h
	add hl,sp
	defb 0fdh,06dh ;ld iyl,iyl
	nop
	ld e,e
	dec (hl)
	rlca
	nop
	add a,b
	ld c,e
	add hl,bc
	rst 8
	ld c,02bh
	ld de,01689h
	dec d
	add a,c
	ld c,(hl)
l7979h:
	rst 38h
	jr z,l79b1h
	add a,l
	add hl,bc
	ld d,c
	ld a,b
	add hl,sp
	ld a,b
	add a,b
	ld c,l
	call m,0fabeh
	and l
	ld (bc),a
	add a,e
	add a,d
	ld a,b
	sbc a,b
	add a,b
	ld d,d
	add a,d
	ld d,b
	cp h
	cp l
	adc a,d
	rst 38h
sub_7995h:
	ld (bc),a
	sbc a,h
	nop
	cp 08dh
	ret c
	rst 10h
	ld l,l
	or d
	and d
	sub e
	add a,l
	rst 0
	adc a,(hl)
	add a,e
	ld (bc),a
	adc a,(hl)
	dec h
	dec h
	cp 023h
	ld l,l
	sub d
	and d
	ld b,b
	call c,0bcdch
l79b1h:
	sbc a,b
	adc a,a
	cp 0f1h
	ld a,(bc)
	defb 0fdh,091h,011h ;illegal sequence
	cp 091h
	rst 28h
	push hl
	nop
	ld b,l
	rst 20h
	rst 38h
	ld e,053h
	cp 0b8h
	add a,d
	ld e,d
	add a,b
	ld e,(hl)
	cp 0a2h
	ld d,l
	rst 30h
	sub h
	and a
	jp nc,08285h
	ld c,c
	add a,c
	ld b,b
	ld d,l
	ld d,l
	ld d,h
	ld (hl),h
	sub (hl)
l79dah:
	add a,d
	add hl,bc
	sbc a,h
	sbc a,c
	rst 10h
	jp nz,0b8bch
	ld bc,08fb4h
	sub h
	add a,e
	dec a
	defb 0fdh,0feh,08ah ;illegal sequence
	xor b
	defb 0fdh,0c8h,000h ;illegal sequence
	ld l,d
	ld l,c
	ld (hl),c
	ld hl,0ff8bh
	jr $-76
	inc h
	ei
	call c,09c00h
	cp 07fh
	adc a,b
	sbc a,0fdh
	inc a
	jr c,l7a04h
l7a04h:
	ex (sp),hl
	and 022h
	ex de,hl
	sbc a,a
	cp 034h
	nop
	cp 0ddh
	or (iy-076h)
	xor e
	dec c
	xor c
	ld c,b
	dec b
	ld d,l
	inc c
	inc c
	ld d,l
	dec d
	ld e,c
	dec d
	adc a,b
	ex af,af'
	ld d,l
	jr nc,$+1
	adc a,c
	inc l
	ld (hl),h
	add a,d
	inc b
	ld d,c
	ld a,c
	ld e,c
	inc b
	ld (hl),h
	xor c
	nop
	add a,(hl)
	ld (de),a
	cp b
	ld (bc),a
	cp h
	add a,h
	sub l
	rst 38h
	nop
	ret pe
	ld b,b
	dec e
l7a3ah:
	ld l,c
	ld l,l
	ld l,c
	or 027h
	sub 0feh
	inc hl
	cp 0fch
	ld c,d
	jp (iy)
	ret m
	ret p
	adc a,(hl)
	cp 057h
	dec d
	cp 057h
	cp 09dh
	defb 0fdh,0f0h,011h ;illegal sequence
	ex (sp),hl
	add a,b
	jr $+43
	ld bc,l5a84h
	ld a,(bc)
	adc a,l
	add a,031h
l7a5fh:
	inc de
	ld a,b
	adc a,d
	ld d,h
	ld (bc),a
	inc b
	inc l
	ld d,b
	inc b
	ld d,b
	jr nc,l7a6dh
	xor l
	nop
l7a6dh:
	ex af,af'
	rst 20h
	and l
	add a,c
	ld (hl),d
	inir
	adc a,b
	rst 20h
	ld hl,(02581h)
	add a,c
	sub 0fdh
	ld h,(hl)
	ld c,c
	adc a,(hl)
	ld hl,0bcfbh
	cp 03fh
	jp po,0dc57h
	inc hl
	add hl,sp
	ei
	cp l
	inc b
	cp h
	call m,0e08ch
	and a
	adc a,(hl)
	dec hl
	call p,08eceh
	daa
	cp 025h
	sub l
	ld de,0fe0dh
	or h
	adc a,e
	xor e
	nop
	sub b
	ld b,a
l7aa3h:
	jr nc,l7a3ah
	sub a
	nop
	xor (hl)
	sub h
	cp l
	ld d,b
	ld b,c
	ld b,h
	ld c,h
	nop
	inc l
	ld c,d
	nop
	add a,e
	call m,sub_74f0h
l7ab6h:
	or h
	ld (bc),a
	sub c
l7ab9h:
	ld h,h
	call c,08000h
	cp d
	cp b
	sub d
	adc a,h
	add hl,de
	or a
	or a
	ld l,c
	ei
	cp 023h
	ret pe
	ld sp,hl
	defb 0edh ;next byte illegal after ed
sub_7acbh:
	inc e
	ld h,(hl)
	jp m,0dbceh
	or a
	jr c,l7ab9h
	daa
	cp 0d1h
	jr c,$-8
	add hl,de
	cp 03bh
	ei
	inc d
	di
	ld h,h
	rst 38h
	ld (hl),b
	add hl,bc
	ld h,e
	nop
	ld c,004h
	nop
	dec h
	ret nz
	cp e
	call nz,00865h
	djnz l7b63h
	rst 20h
	ex af,af'
	ld d,d
	ld c,h
	inc bc
	add a,l
	ld h,c
	adc a,d
	ret pe
	ld d,h
	add a,b
	and h
	add a,c
	cp c
	adc a,d
l7afeh:
	sub 0d6h
	or d
	add a,b
	ex af,af'
	ld l,l
	nop
	rst 38h
	rst 38h
	inc d
	adc a,(hl)
	jp m,00369h
	pop hl
	and e
	rst 18h
	ld l,002h
	call m,08dcch
	ld (hl),e
	adc a,c
	ld sp,hl
	add hl,bc
	jr l7aa3h
	add hl,bc
	add a,d
	ld e,e
	add a,e
	ld c,h
	dec e
	or l
	adc a,l
	adc a,(hl)
	push af
	defb 0fdh,000h,0d4h ;illegal sequence
sub_7b27h:
	jr z,l7ab6h
	ld hl,(0052ch)
	add a,c
	ld b,h
	sbc a,h
	add a,b
	and (hl)
	add a,l
sub_7b32h:
	ld e,000h
	ld (bc),a
	defb 0fdh,0fdh,0fbh ;illegal sequence
	cp 061h
	in a,(08eh)
	ld c,c
	defb 0fdh,09fh,0e2h ;illegal sequence
	ld (hl),l
	call pe,0fed4h
	ld h,h
	jp c,01948h
	jp pe,0e5c8h
	ret
	cp 0f5h
	ld b,(hl)
	ld de,0e4ffh
	ld b,087h
	xor h
	adc a,c
	xor l
	adc a,l
	sub (hl)
	set 6,h
	ld (hl),e
	ld b,093h
	and l
	adc a,e
	adc a,c
	sbc a,b
	add a,b
l7b63h:
	ld e,(hl)
	nop
	jp z,0ddfdh
	sub b
	ld de,0ffd7h
	ld de,049dbh
	cp 0feh
	ld (l4618h),a
	add hl,de
	call c,0ffc7h
	ld sp,0e5feh
	djnz $-105
	ld sp,hl
	ld h,h
	inc bc
	push af
	ld c,c
	dec b
	or 0a3h
	cp 085h
	inc b
	rlca
	ld d,a
	ret m
	ld (hl),h
	add a,e
	ld c,d
	add a,b
	ld a,b
	nop
	ld l,b
	sub e
	sbc a,h
	rlca
	ei
	rst 10h
	rst 10h
	ei
	ld c,c
	ei
	rst 38h
l7b9ch:
	adc a,c
	inc hl
	jr l7b9ch
	ld h,h
	ld bc,0f718h
	ld h,h
	call pe,01163h
	ld b,06dh
	inc c
	djnz l7c13h
	add hl,de
	rlca
	ld de,0a0e2h
	ld b,(hl)
	push af
	inc hl
	add hl,bc
	ret m
	ld sp,0041ch
	ld b,035h
	dec d
	sub 0f1h
	ld b,(hl)
	ld d,b
	cp b
	cp h
	nop
	add a,0fbh
	ld d,(hl)
	ld bc,0908fh
	ld de,0d7b2h
	in a,(063h)
	sub d
	add a,c
	ret m
	ld a,h
	out (04eh),a
	jr l7bd7h
l7bd7h:
	ex de,hl
	call c,0e48dh
	ex (sp),hl
	ld c,084h
	add hl,de
	jp m,00255h
	adc a,(hl)
	dec l
	xor 066h
	inc bc
	ld l,l
	dec hl
	nop
	add a,h
	daa
	ld e,e
	push hl
	rrca
	sub h
	sbc a,b
	ld a,b
	adc a,a
	ld c,h
sub_7bf4h:
	nop
	ld (hl),d
	ld l,h
	rrca
	ld l,(hl)
	ld c,c
	or a
	add a,b
	rst 38h
	rra
	pop hl
	ret pe
	add hl,bc
	call pe,0e9eah
	ld a,b
	adc a,(hl)
	rst 38h
	ld h,a
	cp 08bh
	adc a,l
	ld (hl),b
	call z,0ecfdh
	ei
	ld a,(hl)
	add hl,bc
	ld e,(hl)
l7c13h:
	or e
	inc l
	sub c
	ret nc
	inc l
	ld c,h
	call pe,0b20dh
	or e
	inc hl
	rst 10h
	rst 38h
	rst 38h
	call m,00d39h
	ld sp,hl
	inc e
	ld h,h
	ld bc,0f7feh
	push af
	ld a,(de)
	add hl,de
	sbc a,l
	call m,0f6aeh
	dec sp
l7c32h:
	ld sp,hl
	inc sp
	ret m
	cpl
	inc bc
	ld l,h
	pop hl
	ld c,h
	ld c,c
	or e
	add a,c
	ld de,0ff92h
	cp 01bh
	di
	ld e,013h
	ei
	sub 002h
	jp z,sub_6680h
	rst 28h
	add hl,de
	add hl,bc
	dec b
	push af
	and l
	dec b
	dec b
	ex af,af'
	pop af
	ld (hl),e
	inc b
	ld l,l
	ret m
	ld h,e
	or d
	adc a,(hl)
	add a,d
	adc a,e
	cp 0ffh
	dec c
	xor h
	in a,(0cbh)
	jp nc,l78d8h
	ld a,(hl)
	ld de,0f7d8h
	ex de,hl
	ld sp,08bf8h
	dec b
	sbc a,d
	ld c,b
	jp m,0f8c8h
	set 6,d
	call m,000cfh
	cp b
	ld l,l
l7c7ch:
	adc a,(hl)
	ld (de),a
	or d
	or d
	ld b,l
	add a,b
	cp 01bh
	rst 20h
	add hl,sp
	sub 098h
	dec c
	call z,00a00h
	adc a,c
	or 009h
	ex (sp),hl
	call c,sub_6effh
	ld l,092h
	ld d,e
	or e
	add a,b
	ret m
	ld a,l
	jp c,0da73h
	cp c
	nop
	ld c,c
	adc a,b
	jp (hl)
	ld e,c
	call po,0eed9h
	ld a,a
	jp 000fch
	ld b,(hl)
	ld l,c
	sub d
	add a,c
	rlca
	dec h
	nop
	nop
	ret m
	defb 0ddh,08fh,02fh ;illegal sequence
	ld e,(hl)
	di
	ld c,a
	ld l,d
	add a,d
	dec (hl)
	add a,c
	call m,0003bh
	jp m,049d4h
	rst 38h
	ld b,a
	ei
	nop
	nop
	ei
	jp c,0ff72h
	inc h
	ld l,l
	rst 38h
	ld a,a
	cp l
	sbc a,d
	add hl,hl
	sub (hl)
	add a,c
	cp 01dh
	nop
	defb 0fdh,078h,031h ;illegal sequence
	sub (hl)
	rst 38h
	ld b,a
	ld c,c
	rst 38h
	ei
	ret c
	jr nc,l7d14h
	ld a,c
sub_7ce5h:
	ld d,e
	ld (hl),c
	add a,b
	ei
	ret po
l7ceah:
	inc d
	add hl,sp
	ld e,c
	ld b,a
	add hl,hl
	rst 38h
	ei
	ret c
	djnz l7d2ch
	ld e,l
	ld b,a
	ld (hl),l
	rst 38h
	ei
	ret c
	ld d,c
	add hl,sp
	ld e,l
	ld e,e
	ld a,c
sub_7cffh:
	add a,b
	ei
	ret po
	ld e,c
	ld e,l
	ld a,l
	ld d,e
	ld c,l
	add a,b
	ei
	call po,sub_56ffh
	add a,b
	cp 0f8h
	add hl,hl
	ld (bc),a
	ld d,l
	ld a,l
	ld a,d
l7d14h:
	ld c,l
	ld b,l
	ld b,l
	add a,b
	ld e,a
	sbc a,040h
	dec l
	ld (hl),l
	ld l,l
	ld l,c
	ld h,l
	ld h,l
	inc hl
	ld l,c
	dec h
	rst 38h
	defb 0fdh,0dch,025h ;illegal sequence
	ld l,l
	ld (0aa65h),hl
l7d2ch:
	nop
	add a,(hl)
	ld h,l
	add a,d
	sbc a,a
	defb 0ddh,0c3h,041h ;illegal sequence
	ld l,c
	xor d
	di
	nop
	ex af,af'
	add a,(hl)
	ld l,c
	rst 38h
	rst 38h
	ld (hl),a
	djnz l7ceah
	rst 30h
	ei
	nop
	rst 30h
	xor (hl)
	ld h,l
	ld b,a
	ld b,c
	rst 38h
	ei
	xor b
sub_7d4bh:
	ld h,c
	xor (hl)
	ei
	ld b,(hl)
	rst 38h
	nop
	ei
	adc a,083h
	ld de,0feffh
	ex de,hl
	ld (iy-001h),h
	ld (hl),d
	ld h,c
	ld c,a
	ld h,l
	rst 38h
	ei
	or c
	adc a,d
	out (080h),a
	dec h
	rst 38h
	ld b,h
	adc a,066h
	rst 38h
	ld a,a
	cp e
	jr z,l7db4h
	add a,b
	call z,033feh
	jp z,0ff66h
	defb 0fdh,0deh,080h ;illegal sequence
	adc a,0ffh
	push hl
	dec h
	rst 38h
	rra
	xor 0e2h
	nop
	ld l,c
	ld l,c
	add a,d
	ld b,h
	ld l,c
	cp 07fh
	cp h
	pop de
	nop
	ei
	call m,000f7h
	rst 38h
	call m,0ffffh
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7db4h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_7e9dh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7ea6h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7efch:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_7f1ch:
	rst 38h
	rst 38h
l7f1eh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_7f2bh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7f33h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7f3fh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_7f53h:
	rst 38h
l7f54h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_7f5fh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7f73h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7fd9h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7fdfh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7fe9h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7ffah:
	rst 38h
	rst 38h
l7ffch:
	rst 38h
	rst 38h
sub_7ffeh:
	rst 38h
sub_7fffh:
	rst 38h
