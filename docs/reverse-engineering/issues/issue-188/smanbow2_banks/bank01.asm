; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank01.asm /tmp/smanbow2_bank.bin

	org 04000h

	nop
	ld h,b
	nop
	nop
	ld a,l
	sbc a,c
	nop
	ret nz
	ld (de),a
	ld hl,01300h
	ld (00000h),a
	ld (02102h),hl
	ld bc,03223h
	ld (de),a
	ld e,022h
	nop
	nop
	dec de
	ld h,b
	ld bc,02211h
	djnz l4021h
l4021h:
	inc hl
	ld de,00200h
	djnz l4049h
	ld e,01eh
	jr nz,$+9
	ld a,(bc)
	nop
	jr z,l4048h
	add a,h
	inc c
	ld bc,01001h
	ex af,af'
	ld c,b
	nop
	adc a,c
	sub h
	ld b,h
	ld b,h
	adc a,c
	sbc a,c
	adc a,b
	adc a,b
	ld bc,08889h
	sbc a,c
	ld c,h
	ld b,h
	ld c,b
	sbc a,c
	rrca
l4048h:
	dec (hl)
l4049h:
	sbc a,b
	rrca
	adc a,c
	rrca
l404dh:
	and l
	add a,h
	call nz,0000fh
	rst 30h
	pop de
	ld b,e
	ld d,(hl)
	inc hl
	ld (01285h),hl
	ld (0174bh),hl
	inc hl
	ld de,00b21h
	ld a,(de)
	sub d
	sub c
	ld l,e
l4065h:
	ld hl,(00131h)
	ld h,l
	ld l,b
	inc e
	and e
	ld h,a
	ld (hl),l
	ld sp,00700h
	cp d
	ld a,h
	or c
	ld (l422bh),a
	ld (de),a
	ld a,(de)
	ld bc,09822h
	ld (hl),l
	ld d,d
l407eh:
	ld c,h
	ld (hl),a
	ld (hl),h
	adc a,b
	ld l,(hl)
	rla
	sub h
	call z,sub_75c4h
	rrca
	ex af,af'
	ld c,b
	add a,b
	sbc a,b
	sbc a,b
	ld (bc),a
	ld c,h
	rst 8
	rrca
	ld a,a
	cp (hl)
	ld c,a
	ld c,c
	ld (de),a
	ld d,l
	ld (02269h),a
	ld c,e
	adc a,h
	jr nc,l410bh
	jp p,l4b1ah
	add hl,de
	rla
	djnz $+126
	inc de
	ld bc,02303h
	ld hl,02113h
	rra
	dec sp
	nop
	rlca
	ld c,c
	ld (de),a
	add a,e
	adc a,d
	inc d
	xor e
	ld h,h
	or h
	sub c
	or h
	ld l,c
	ld (hl),l
	call nz,0e744h
	inc e
	inc l
	ld c,h
	rlca
	ex af,af'
	pop af
	rrca
	jr z,l404dh
	call z,0ff0fh
	call m,sub_610ah
	call m,09a38h
	add a,e
	ld c,d
	ld c,d
	ld hl,023e1h
	ld hl,0c8feh
	sub c
	inc hl
	or c
	ld h,e
	ld h,l
	jr nz,l4065h
	ld (de),a
	ld (032a2h),a
	ld (hl),a
	halt
	djnz l40f1h
	ld bc,01245h
	or e
	nop
	ld c,l
	sbc a,b
l40f1h:
	or c
	inc d
	inc c
	adc a,c
	jp c,l6f75h
	add a,b
	ld d,d
	ld a,a
	ld d,d
	call z,08907h
	inc h
	adc a,h
	adc a,l
	ld (hl),d
	call z,08c0fh
	dec h
sub_4107h:
	call nz,088cch
	dec h
l410bh:
	rst 38h
	rst 28h
	adc a,d
	jp nc,02981h
	push de
	ld (bc),a
	ld (bc),a
	ld (02320h),a
	add a,l
	ld b,c
	jr nz,l412eh
	ld (0e41ah),hl
	ld (03129h),hl
	djnz l4140h
	ld bc,l7012h
	adc a,c
	inc hl
	ld (hl),a
	ld hl,019edh
	rlca
	sub c
l412eh:
	rst 30h
	ld d,c
	rlca
	sub e
	ld (hl),013h
	ld a,(hl)
	ld a,h
	ld d,e
	ld (de),a
	ld (de),a
	ld a,a
	ld b,h
	ld a,a
	ld c,b
	adc a,b
	add a,h
	ld a,c
l4140h:
	sub h
	add a,h
	and e
	ex af,af'
	add a,l
	adc a,c
	or 0aeh
	ld (hl),a
	rrca
	add hl,de
l414bh:
	call nz,0000fh
	rst 30h
	dec d
	inc de
	ld bc,0ce50h
	dec h
	sub 020h
	ld (02323h),hl
	sub c
	dec bc
	ld (0e2feh),a
l415fh:
	ld (bc),a
	ld d,d
	djnz l414bh
	ld b,l
	sbc a,b
	dec de
	ld (de),a
	jr nz,$+18
	rlca
	ld sp,04b9fh
	add hl,bc
	rlca
	ld e,e
	ld (0f807h),hl
	ld (de),a
	inc sp
	add a,b
	ld (hl),c
	ld (de),a
	cp 048h
	djnz l41c3h
	sbc a,b
	rst 38h
	inc h
	sub h
	ld c,h
	ld l,d
	sbc a,b
	ld d,0c4h
	add a,h
	add a,h
	inc b
	rrca
	adc a,005h
	sbc a,c
	rrca
	ld d,e
	adc a,c
	rst 38h
	ret m
	dec hl
	ld (de),a
	ld a,(hl)
	ld b,a
	ld h,h
	ex de,hl
	adc a,d
	jp po,l6bffh
	dec bc
	jr l415fh
	sub b
	ld a,(hl)
	or e
	sub d
	ld c,l
	ex de,hl
	ld sp,hl
	ld d,077h
	ld c,c
	and c
	and l
	daa
	rlca
	ld a,e
	ld a,a
	adc a,c
	inc (hl)
	sbc a,l
	adc a,e
	ld (de),a
l41b3h:
	cp c
	add hl,hl
	dec b
	ld l,a
	call z,0a470h
	sbc a,h
	call nz,0a5fah
	rst 30h
	inc d
	rst 38h
	sbc a,h
	rrca
l41c3h:
	ld b,l
	ei
	rrca
	or e
	add a,(hl)
	sub e
	rst 38h
	ret m
	ld (de),a
	add a,02dh
	ret nz
	call nc,01112h
	ld e,c
	jr nc,l41b3h
	adc a,c
	rst 38h
	adc a,b
	add a,b
	ld (0f0feh),hl
	and (hl)
	ld l,h
	adc a,(hl)
	ret z
	ld l,(hl)
	jp pe,0e9c9h
	sub 032h
	dec bc
	dec sp
	ld (09c07h),a
	add a,b
	adc a,c
	cp 022h
	xor (hl)
	ld h,l
	sbc a,a
	push hl
	xor a
	ld d,d
	defb 0edh ;next byte illegal after ed
	ld c,(hl)
	cp 0d1h
	ld a,a
	dec b
	ld c,c
	sbc a,b
l41fdh:
	xor 02bh
l41ffh:
	call p,0fe29h
	dec hl
	add a,h
	dec de
	rrca
	rst 0
	nop
	sbc a,088h
	xor (hl)
	and e
	dec d
	ld c,c
	ld (bc),a
	or e
	ld h,l
	xor (hl)
	cp c
	ld e,(hl)
	adc a,e
	ld c,c
	call m,sub_516fh
	di
	add a,b
	inc l
	ld c,h
	jp (hl)
	ld de,0a1a3h
	rlca
	cp d
	sub (hl)
	ld c,d
	or l
	and h
	ex af,af'
	nop
	adc a,d
	ld d,d
l422bh:
	xor a
	daa
	ld de,027e8h
	defb 0fdh,013h,089h ;illegal sequence
	push af
	sbc a,c
	ld l,h
	rlca
	dec d
	sub h
	adc a,c
	ld c,a
	cp 0adh
	adc a,e
	ld l,a
	rrca
	rra
	ld a,(hl)
	ld a,h
	ld (hl),l
	adc a,b
	and a
	jr c,l41fdh
	inc h
	dec (hl)
	ret z
	xor l
	xor d
	ld c,h
	cp 03bh
	sub d
	ld e,e
	ld bc,0c597h
	ld l,d
	ret pe
	dec d
	ex de,hl
	and (hl)
	inc c
	dec e
	ld (bc),a
	inc sp
	rlca
	sbc a,095h
	ld c,d
	rlca
	djnz l41ffh
	ret
	adc a,a
	jp z,0803fh
	dec hl
	ei
	jp z,l5883h
	ret p
	srl a
	ld c,a
	and 0fah
	nop
	ld de,0f244h
	push bc
	or h
	push de
	or l
	sub d
	xor l
	cp (hl)
	ld a,a
	inc c
	ld hl,0a87ch
	ld h,a
	ld (bc),a
	rst 20h
	and l
	jp (hl)
	add hl,hl
	ld l,b
	jp pe,010c7h
	rlca
	add a,(hl)
	ld a,b
	ld c,d
	ld a,a
	ld (bc),a
	or d
	dec hl
	add a,a
	ld a,e
	ccf
	xor l
	add a,l
	rst 18h
	ccf
	ld c,a
	sbc a,d
	rst 38h
	ld a,099h
	or b
	ld c,l
	jp 0cc42h
	ld c,h
	or l
	cp b
	ld h,e
	sbc a,c
	or b
	ld l,c
	sub d
	call m,0fb23h
	ld (0a7deh),hl
	ld (bc),a
	ret p
	adc a,h
	jp (hl)
	call z,04ea0h
	rlca
	push hl
	ei
	add hl,hl
	ld d,087h
	ld de,08d31h
	ld d,033h
	add hl,bc
	jp (hl)
	or h
	xor 0aeh
	ld b,h
	ld a,a
	ld e,a
	ld b,h
	ld c,a
l42d2h:
	scf
	nop
l42d4h:
	ret nc
	add a,h
	push bc
	ret nz
	or e
	cp (hl)
	inc bc
	ex af,af'
	add a,h
	ld c,b
	cp b
	jp c,0eafch
	sub c
	jp nc,l6881h
	jp m,0e7cah
	dec l
	and b
	jr z,l42d2h
	ld c,e
	ld (de),a
	ld (hl),a
	inc de
	ld a,h
	rlca
	jp 00619h
	inc sp
	sub d
	add hl,de
	and b
	sub d
	and (hl)
	ld a,d
	ccf
	inc sp
	adc a,b
	ccf
	ld c,a
	push hl
	and a
	cp 0a9h
	sub h
	xor c
	dec hl
	inc (hl)
	jp nz,0b089h
	sub d
	call m,09ddbh
	ei
	and d
	ld a,c
	ret p
	call nz,08b93h
	jp pe,l52a1h
	jp m,0908ah
	and h
	ret m
	jp (hl)
	rlca
sub_4322h:
	ld hl,0c8b2h
	add hl,sp
	jp nc,0eea9h
	ld (hl),e
	ret m
	sub d
	jp m,0e138h
	ccf
	adc a,b
	ccf
	cp a
	ld c,a
	inc l
	add a,b
	cp l
	ld a,e
	xor (hl)
	ld (hl),d
	and (hl)
	inc (hl)
	add a,h
	xor h
	ld h,l
	ld b,h
	dec b
	or b
	or (hl)
	ld (de),a
	rst 0
	sub e
	dec c
	sub h
l4348h:
	inc h
	add a,c
	adc a,h
	adc a,b
	adc a,h
	ret m
	sbc a,e
	push af
	rlca
	cp c
	rst 30h
	sub c
	ld (bc),a
	cp 08eh
	sub h
	cpl
	ld l,l
	jp (hl)
	ld (hl),c
	ld l,d
	adc a,h
	dec b
	xor (hl)
	sub h
	rrca
	ld a,04fh
	cpl
	nop
	and (hl)
	inc hl
	and e
	xor d
	and (hl)
	ld l,h
	xor e
	res 6,h
	ret z
	or l
	rst 8
	or b
	ld h,h
	sub b
	nop
	rst 10h
	sub e
	inc c
	add a,b
	inc hl
	adc a,b
	jr z,l4387h
	ret m
	cp e
l4380h:
	pop af
	dec sp
	rlca
	ld l,d
	nop
	add a,a
	ld d,d
l4387h:
	cp c
	xor 02fh
	ccf
	ld h,e
	rst 38h
	ld d,a
	add a,l
	sub c
	add a,e
	cp a
	ld c,a
	rra
	ld a,a
	in a,(0aah)
	ld c,e
	xor h
	add a,0bbh
	ld (hl),b
	ld b,h
	ld (hl),d
	add a,h
	ld a,a
	ld bc,093e7h
	add hl,de
	adc a,b
	ld c,l
	jp pe,0f6d9h
	ld b,l
	ld (bc),a
	rst 30h
	ld h,d
	ld hl,02cfeh
	xor c
	ret
	cp 01dh
	add hl,hl
	cpl
	call z,0c93fh
	cp (hl)
	ld h,(hl)
	adc a,e
	adc a,l
l43bdh:
	ei
	call 0a90fh
	ld c,a
	dec bc
	sbc a,c
	sbc a,c
	sbc a,h
	ld e,d
	ld c,a
	pop hl
	rst 38h
	ccf
	ld a,(hl)
	or (hl)
	sub 031h
	ei
	inc h
	jp z,009d5h
	defb 0fdh,0b2h,011h ;illegal sequence
	rst 30h
	sub e
	dec b
	ld hl,065eeh
	rst 28h
	defb 0edh ;next byte illegal after ed
	add hl,bc
	pop af
	jr nz,l43f5h
	add hl,de
	sub c
	jr nz,l4409h
	add hl,de
	ld a,e
	sbc a,c
	ret
	add hl,de
	ld sp,02ff0h
	xor c
	ccf
	and b
	inc hl
	sub h
	inc d
l43f5h:
	ld (029aeh),a
	sbc a,b
	adc a,d
	jr l4380h
	ld c,a
	ld b,b
	dec hl
	ld (03100h),hl
	sbc a,a
	ld (hl),09eh
	ld (hl),a
	inc b
	ld c,a
	ld a,a
l4409h:
	push af
	jp p,l56b0h
	cp b
	out (008h),a
	cp d
	or c
	adc a,e
	ld a,e
	sub h
	ld e,(hl)
	ret pe
	sub d
	call pe,0824eh
	ld l,l
l441ch:
	push hl
	add a,c
	sbc a,c
	rst 30h
	add hl,de
	ret p
	ld l,d
	sub d
l4424h:
	or h
	ld (hl),l
	adc a,h
	add a,h
	ld (bc),a
	add hl,sp
	sub h
	ld c,b
	sbc a,a
	ld e,(hl)
	cpl
	dec bc
	adc a,b
	djnz l43bdh
	ld a,(bc)
	inc hl
	sbc a,b
	ld h,d
	ld bc,09100h
	adc a,a
	ld sp,hl
	call z,sub_514fh
	sub c
	or b
	ld l,045h
	cp e
	ld (hl),03bh
	add hl,hl
	ld c,a
sub_4448h:
	rst 8
	rst 38h
	or c
	ld b,h
	inc (hl)
	xor b
	sbc a,b
	call 0b4b5h
	adc a,(hl)
	cpl
	ld h,e
	cp a
	add hl,hl
	ld a,h
	add a,d
	ld e,c
	ld l,a
	add a,c
	jp po,l4ca5h
	ld (bc),a
	sub c
	ld h,h
	add hl,de
	inc hl
	rst 28h
	ld h,c
	sub e
	add hl,sp
	call p,0de69h
	ld e,c
	cpl
	or d
	xor 093h
	cp c
	sub c
	adc a,e
	ld e,b
	and h
	jr nz,l4424h
	xor h
	ld b,l
	nop
	sub e
	adc a,d
	ei
	ld c,a
	sbc a,d
	cp e
	ld c,c
	adc a,a
	xor d
	xor d
	djnz $+121
	add hl,de
	ld c,a
	rst 38h
l4489h:
	adc a,a
	ld h,d
	add a,h
	inc sp
	or e
sub_448eh:
	ld c,l
	inc b
	xor h
	ld (093cah),a
	inc d
	adc a,d
	ld c,h
	ei
	ld c,e
l4499h:
	ld (hl),d
	ret pe
	call po,0ff01h
	jp z,0f648h
	ld c,e
	rst 28h
	jp po,l577fh
	sbc a,c
	ld c,a
	rst 28h
	ld c,a
	ld h,094h
	cpl
	ld b,e
	ld c,c
	inc de
	sbc a,(hl)
	or (hl)
	add a,d
	add hl,hl
	and b
	ld c,b
	cp a
	jp po,093f5h
	and a
	push de
	ld (de),a
	and c
	xor c
	sub b
	daa
	ld c,a
	ld (hl),d
	rst 38h
	push af
	push bc
	res 5,(hl)
	cp c
	cp c
	ld c,e
	rst 8
	add hl,de
	xor a
l44ceh:
	dec a
l44cfh:
	sbc a,06fh
	adc a,e
	ld d,a
	ld b,c
	jp pe,08392h
	daa
	add a,c
	add a,l
	cpl
	rst 28h
	ld d,a
	jr nc,l44ceh
	ld hl,(0e499h)
	ld a,(094c9h)
	cpl
	ld (hl),a
	ld b,h
	cpl
	cp 014h
	jp m,0ac66h
	and h
	and c
	ld d,c
	xor 027h
	add hl,de
	rst 38h
	ld h,h
	sbc a,b
	jp c,0af7bh
	xor c
	ld a,(01385h)
	sub h
	rst 38h
	ret m
	dec l
	ld c,b
	cp a
	ret p
	or 0b4h
	ld h,a
	rst 38h
	sub e
	inc hl
	ld (bc),a
	ld b,d
	inc de
	ld bc,09181h
	ret
	add a,l
	jr nc,$+19
	rst 28h
	xor 0eeh
	adc a,098h
	rra
	inc a
	cpl
	xor h
	call p,0ef94h
	ld e,(hl)
	ld (de),a
	sub (hl)
	jp z,02482h
	ld (bc),a
	call p,0a0a1h
	sbc a,c
	rra
	add a,034h
	ld c,d
	add a,d
	ld h,d
	xor l
	ld d,c
	sub b
	rst 38h
	cpl
	add a,e
	cp e
	call c,0af6eh
	ld a,d
	xor a
	jp c,l73afh
	cpl
	push af
	ld c,c
	call p,083a5h
	call po,sub_67c9h
	rst 20h
	xor l
	rst 28h
	call pe,09c8dh
	rra
	ei
	cpl
	call nc,09f6ah
	cp d
	and e
	adc a,c
	ld hl,09931h
	ld bc,01f6ah
	inc de
	add hl,sp
	sbc a,l
	ld a,(0a702h)
	xor a
	add hl,hl
	ld a,a
	jp 0a492h
	ld c,c
	or l
	inc bc
	or b
	ld d,c
	sbc a,b
	ret po
	ld h,a
l4573h:
	xor a
	inc l
	inc sp
	ld d,e
	ld b,l
	jr nc,l4573h
	push hl
	ld (hl),h
	ld d,(ix-009h)
	sub e
l4580h:
	call p,0ef5eh
	ld c,a
	or 019h
	rra
	cpl
	defb 0ddh,0eah,02eh ;illegal sequence
	rrca
	push bc
	jp m,0a493h
	ld a,e
	ld de,0ac8ch
	or h
	di
	sbc a,h
	di
	adc a,d
	rra
	sub d
	ld (08009h),a
	ld d,d
	sub a
	adc a,d
	dec sp
	xor d
	xor h
	rst 38h
	call m,0cb19h
	ld c,(hl)
	xor a
	ld c,d
	cp c
	ld c,c
	cp d
	call z,0ee5dh
	call m,0ec22h
	jp nc,0fdfbh
	adc a,l
	ei
	ld l,0eeh
	adc a,d
	add a,e
	di
	jp po,l4919h
	rst 28h
	di
	rra
	cp (hl)
	cpl
	cp l
	xor 08dh
	rrca
	call m,05194h
	inc bc
	add a,d
	ret p
	ld de,01233h
	add a,d
	inc de
	ld (bc),a
	sbc a,(hl)
	jp nc,0fa1fh
	cp d
	add a,a
	ld hl,(0bd11h)
	ld (hl),l
	ld de,02bddh
	nop
	rst 30h
	dec a
	sbc a,b
	cp e
	ld (hl),d
	ld c,a
	ret
	di
	xor (hl)
	sub e
	cpl
	xor c
	defb 0fdh,03ch,0dch ;illegal sequence
	add hl,hl
	ld (l7a13h),hl
	pop bc
	adc a,d
	ld (l7e39h),a
l45fch:
	ld sp,hl
	dec hl
	rst 28h
	sbc a,l
	sub h
	rra
	or 02fh
	ld c,h
	call 07f0fh
	adc a,d
	and h
	call m,093d3h
	call nz,0b213h
	call nz,02001h
	add a,(hl)
	ld e,d
	or d
	ld e,(hl)
	sbc a,b
	ld d,c
	xor a
	or d
	cp e
	or e
	ld d,b
	djnz l4629h
	add hl,de
	call m,0197fh
	push bc
	ld b,h
	ld c,h
	rst 8
	and l
l4629h:
	rst 8
	ld b,0c8h
l462ch:
	add a,h
	ld e,h
	ld b,(hl)
	sbc a,070h
	ld a,a
	nop
	call nc,0e4f4h
	jp m,02949h
	add a,b
	and c
	add hl,de
	rra
	ld e,(hl)
	dec d
	rra
	ld e,02fh
	inc d
	adc a,d
	cp b
	rrca
	ld (09ebch),a
	sub d
	xor c
	xor b
	xor l
	xor b
	cpl
	di
	cpl
	and a
	cpl
	sub a
	ld (hl),0bdh
	sub h
	cp 09bh
	pop bc
	sub c
	ld de,08d92h
	add hl,de
	nop
	rst 30h
	ld hl,(l4fc4h)
	rst 8
	ld c,d
	ret
	ld b,a
	call z,0aeafh
	or (hl)
	defb 0edh ;next byte illegal after ed
	rst 38h
	ld l,(hl)
	rst 8
	ld h,l
	jp p,0cf51h
	sub l
	jp (hl)
	sbc a,(hl)
	rra
	defb 0ddh,02fh,04eh ;illegal sequence
	adc a,(hl)
	ld c,d
	sub b
	jp c,0a30fh
	adc a,b
	ld (de),a
	call m,09bb8h
	jp z,0f583h
	dec hl
	ld a,(bc)
	and h
	ld b,d
	call nz,08c40h
l4690h:
	sub e
	cp b
	ld d,a
	ld a,(hl)
	ld h,092h
	jp pe,0ff4fh
	ld a,0b9h
	ld c,h
	add a,h
	ret
	ld e,c
	add a,e
	ret
	cp b
	inc d
	xor h
	ld h,a
	cp e
	inc h
	rst 38h
	ld l,(hl)
	cp (hl)
	and l
	jp nc,0d159h
	sbc a,a
	rra
	rrca
	rrca
	ld (hl),a
	ld a,a
	add a,b
	ld h,(hl)
	rrca
	ld b,l
	jp (hl)
	ld a,e
	ld h,(hl)
	xor b
	add hl,hl
	ld de,017fdh
	ld (bc),a
	xor h
sub_46c2h:
	add a,l
	ld hl,07f44h
	cp d
	rla
	or h
	ld (08a32h),hl
	ld c,(hl)
	cp e
	ld c,(hl)
	ld c,a
	and e
	rst 38h
	ex de,hl
	push bc
	ret nc
	and h
	ld (bc),a
	call c,0b9c5h
	or h
	in a,(0e6h)
	rst 38h
	ld d,(hl)
	add hl,hl
	ld a,d
	ex (sp),hl
	pop af
	sbc a,h
	cp c
	rra
	defb 0edh ;next byte illegal after ed
	rrca
	jp c,0ab48h
	sub a
	call pe,0f952h
	or e
	sbc a,l
	inc c
	ld a,h
	sbc a,c
	ld (hl),c
	inc sp
	add a,h
	sub b
	nop
	call nz,01392h
	and d
	cp 0feh
	ld (0d37fh),a
	cp e
	or a
	ld l,04fh
	and a
	rst 38h
	call pe,086beh
	ld h,a
	defb 0ddh,025h ;dec ixh
	ld d,l
	ld c,b
	call c,0171dh
	cp c
	add a,h
	sub b
	scf
	rrca
	rra
	rst 18h
	rrca
	sbc a,l
	add a,e
	ld c,h
	rrca
	sbc a,d
	sbc a,e
	ld (bc),a
	sbc a,h
	jp p,l6d95h
l4726h:
	ld bc,l7680h
	xor l
	ld h,(hl)
	ld (hl),a
	xor a
	rlca
	ld b,h
	sub d
	or l
	rst 18h
	or e
	cp b
	add a,b
	adc a,c
	inc hl
	sbc a,c
	ld h,0beh
	jp m,0937ah
	add hl,hl
	xor c
	ld c,(hl)
	and l
	call c,0aa33h
	sub d
	xor h
	ld c,d
	rst 28h
	cpl
	ld bc,02fc0h
	sub h
	xor l
	sub a
	ret z
	add a,e
	ret
	call pe,09fb5h
	daa
	rst 28h
	ld l,d
	ld de,0cfech
	rrca
	sub e
	ld a,a
	defb 0ddh,048h,07fh ;illegal sequence
	ret pe
	sbc a,b
	adc a,a
	jp m,039aeh
	ld h,032h
	ld (bc),a
	cp l
	call po,0acbch
	xor e
	jp pe,0afe5h
	ld (hl),c
	djnz $-75
	ld l,c
	rst 38h
	ld c,h
	or b
	jr nz,l47c4h
	ld de,04a08h
	nop
	call pe,0e5f6h
	ld e,d
	add a,b
	sub 0c9h
	ld a,(hl)
	xor c
	ld a,h
	rrca
	ld (0eeffh),a
	sbc a,b
	sub a
	rst 38h
	ld c,d
	rst 38h
	ei
	jr l4726h
	call c,02a66h
	ld a,d
	ld l,a
	ld a,b
	ret nz
	inc l
	rst 0
	ld d,l
	rrca
	rst 38h
	ld a,(0091bh)
	ld b,h
	jp pe,0f0c5h
	call po,0f192h
	adc a,0ech
	ld a,e
	rrca
	ld d,e
	rst 38h
	cp l
	defb 0fdh,094h ;sub iyh
	rst 38h
	rst 20h
	cp 02fh
	ld e,h
	and 064h
	push af
	and a
	ex (sp),hl
l47beh:
	push hl
	ld l,c
	add a,l
	ld hl,(06d31h)
l47c4h:
	ld (de),a
l47c5h:
	ret pe
	dec bc
	sub (hl)
	rst 38h
	xor 099h
	ld e,d
	adc a,h
	jp m,0d572h
	ld c,l
	pop af
	add hl,bc
	ld h,l
	and h
	jp (ix)
	rrca
	defb 0edh ;next byte illegal after ed
	rst 38h
	ld l,(hl)
	push hl
	adc a,c
	add a,b
	rst 38h
	cp c
	rst 0
	rst 38h
	ret c
	sbc a,b
	ld e,d
	add a,b
	jr c,$-24
	sub c
	add a,d
	ld d,c
	ld b,c
	jp m,0ae49h
	cp h
	sub h
	add a,b
	and h
	rst 38h
	ret p
	sub b
	add a,0ffh
	rst 30h
l47f9h:
	ret nc
	ld c,d
	nop
	inc c
	di
	adc a,a
	ld c,c
	sbc a,c
	ret p
	jp z,03bebh
	rst 38h
	rra
	adc a,b
	call po,0f6b3h
	ld a,d
	xor e
	ld (hl),l
	rrca
	rst 38h
	adc a,(hl)
	or 0f1h
	sbc a,b
	rst 38h
	call po,0cf94h
	rst 38h
	or c
	add a,b
sub_481bh:
	daa
	add a,a
	djnz l4851h
l481fh:
	and a
	inc h
	cp b
	rst 28h
sub_4823h:
	di
	ld h,l
	ld l,a
sub_4826h:
	ld (hl),a
	ld (hl),e
	ld a,a
	rst 38h
	xor h
	and d
	djnz l47c5h
	and l
	call z,00413h
	ld b,h
	ld bc,l6a89h
	rst 28h
	ld d,098h
	call nz,sub_6694h
	adc a,c
	ld h,(hl)
	ld sp,hl
	jp nc,07585h
	rrca
	rst 38h
	xor a
	inc bc
	ld c,h
	rst 38h
l4848h:
	ld e,h
	rst 28h
	rra
	ld a,(hl)
	xor c
	add hl,de
	and l
	ld c,c
	dec h
l4851h:
	ld (0b603h),hl
	adc a,d
	jp m,l50bch
	ld sp,0a210h
	ld b,h
	or e
l485dh:
	ld (hl),e
	ld de,0a5ffh
	jr nz,l48ach
l4863h:
	and d
	djnz l48a6h
	djnz $-99
	jr z,l485dh
	and d
	ret p
	defb 0fdh,0dch,0b5h ;illegal sequence
	ld e,a
	jp m,08479h
	ld a,(0e70fh)
	rst 38h
	ld a,e
	rra
	rst 38h
	sbc a,h
	push af
	cp 0edh
	and h
	and h
	ld c,c
	ld bc,035feh
	ld b,l
	jp nz,l462ch
	add a,e
	ld d,b
	add a,a
	ld (de),a
	inc hl
	ex af,af'
	ld (bc),a
	rst 38h
	adc a,a
l4891h:
	rst 38h
	ld l,(hl)
	djnz l481fh
	and c
	adc a,b
	adc a,b
	jp z,009cbh
	rst 38h
	jp nc,0d2f9h
	adc a,052h
	call p,0fe52h
	ld d,(hl)
	add a,h
l48a6h:
	scf
	rrca
	ld a,l
	rst 38h
	sbc a,01fh
l48ach:
	rst 30h
	rst 38h
	ld a,0feh
	ld a,e
	ld d,l
	ld bc,02831h
	add a,b
	adc a,c
	inc b
	ld c,b
	ld l,d
	jr $-11
	sub d
	ld (0800bh),hl
	ccf
	exx
	ld a,a
	adc a,e
	res 7,(hl)
	or d
	ld d,d
	sub d
	xor d
	jp z,0964ah
	xor c
	adc a,(hl)
	ld (de),a
	ld sp,l65adh
	pop af
	sub h
	adc a,b
	sub h
	cp c
	or 044h
	cp 06bh
	add a,l
	ld c,c
	rrca
	call z,sub_65e5h
	dec e
	ld l,a
	ld c,c
l48e5h:
	ei
	and a
	inc d
	ei
sub_48e9h:
	sub 001h
	rra
	dec d
	ld c,c
	inc de
l48efh:
	add hl,sp
	ld a,(05d0dh)
	ld c,a
	cp a
	ld h,a
	rst 8
	adc a,l
	rst 38h
	ld a,h
sub_48fah:
	cp c
l48fbh:
	ld bc,02c74h
	inc b
	dec b
	ld h,l
	ld c,c
	ld b,h
	ld b,010h
	ld l,b
	ld c,h
	ld a,a
	push bc
	cp 051h
	call p,0c14bh
	ld de,l44cfh
	ld e,d
	jr nc,l4925h
	sbc a,(hl)
	sub (hl)
	adc a,h
	add hl,de
	sub d
l4919h:
	add hl,de
	defb 0fdh,09bh,0efh ;illegal sequence
	sub (hl)
	ld sp,hl
	dec sp
	adc a,b
	ret m
	ld d,c
	ld c,h
	add a,l
l4925h:
	jr c,l48efh
	rrca
	adc a,h
	call m,01eb0h
	ld a,002h
	ld (de),a
	sbc a,h
	ld c,c
	sub d
	rra
	ld e,c
	sub d
	ret nc
	add hl,de
	ld c,d
	ld c,l
	add a,l
	cp l
	rst 30h
	rst 8
	scf
	ld a,a
	call p,011a6h
	xor l
	call 01789h
	inc hl
	sbc a,c
	ret
	in a,(0bdh)
	cpl
	inc d
	sub b
	djnz l48e5h
	ld d,h
	dec a
	adc a,h
	sub d
	sub a
	ld h,(hl)
	rst 10h
	out (006h),a
	add a,b
	adc a,h
	add hl,sp
	daa
	halt
	sbc a,b
	rst 28h
	daa
	ld b,h
	jp nc,0848ch
	dec l
	add a,l
	daa
	adc a,l
	ld h,(hl)
	defb 0edh ;next byte illegal after ed
	sbc a,d
	jp pe,08b6bh
	cp 0beh
	dec d
	djnz $+65
	cp c
	rra
	or l
	dec hl
	ld e,b
	ld h,e
	ld a,(l7f01h)
	xor 066h
	nop
	and 022h
	ld c,c
	rst 10h
	sub e
l4985h:
	ret
	ex de,hl
	add a,h
	add hl,de
sub_4989h:
	rst 8
	and 05fh
	cp c
	ld b,h
	ld a,a
	ld d,000h
	inc de
	ld (0d654h),a
	ld h,0c3h
	ld d,e
	sub l
	sub l
	ld (bc),a
	rst 10h
	and h
	add a,b
	and h
	add a,d
	exx
	or d
	ld (hl),d
	jp p,02f62h
	adc a,c
sub_49a7h:
	ld a,a
	call p,06a88h
	adc a,b
	cpl
	ld c,c
	rst 20h
	ld l,l
l49b0h:
	xor e
	ld c,b
	call pe,083a3h
	ld de,08f04h
	sbc a,b
sub_49b9h:
	dec de
	adc a,c
	ld b,(hl)
	ld hl,l4690h
	add a,e
	and e
	nop
l49c2h:
	rst 38h
	add hl,sp
	rst 38h
	call pe,0a08ah
	ld h,c
	dec l
	adc a,c
	add hl,de
	ret nc
	inc d
	ld c,c
sub_49cfh:
	defb 0ddh,092h,000h ;illegal sequence
	ld c,b
	ret c
	ld (hl),0ffh
	exx
	and d
l49d8h:
	ld (hl),b
	or 094h
	defb 0fdh,0abh,092h ;illegal sequence
	sub l
	ld (de),a
	rst 18h
	ld (hl),a
	adc a,a
	ld de,09202h
	ld h,h
	ld d,a
	inc bc
	ld e,(hl)
	jr nc,l49c2h
	ld b,l
	cpl
	ld b,b
	add hl,bc
	add a,h
	ld h,e
	add a,h
	cpl
	add a,h
	add a,h
	add a,b
	sub l
	ld a,h
sub_49f9h:
	ret p
l49fah:
	xor l
	rst 0
	inc hl
	adc a,b
	rrca
	ld d,d
	adc a,c
	sub d
	ld c,l
	adc a,d
	adc a,e
	adc a,c
	call nc,07fc9h
	sub e
	rst 38h
	or 066h
	and c
	and d
	adc a,b
	jp z,0c994h
	or e
	inc (hl)
	ld d,b
	pop de
	sub d
	xor a
	cp d
	adc a,d
	sub a
	ld a,l
	or c
	call m,0c623h
	sbc a,d
	ld sp,047cah
	and e
	ld c,b
	sbc a,0cah
	ret po
	jr z,l4a37h
	adc a,a
	xor l
	sbc a,b
	add hl,bc
	inc b
	call nz,01dddh
	sbc a,h
	cpl
	pop de
l4a37h:
	ld bc,0929ah
	inc hl
	inc hl
	ret
	jr z,l49d8h
	cp b
	rrca
	add a,(hl)
	ld c,a
	sub c
	jr nz,l4a66h
	ret nz
	call pe,02936h
	xor a
	rst 38h
	cp e
	and d
	ld (hl),d
	rst 28h
	set 1,c
	dec h
	nop
	adc a,b
	rst 8
	adc a,c
	adc a,h
	adc a,0cch
	call nc,030ceh
	ld h,(hl)
	adc a,a
	adc a,l
	call m,01362h
	jp c,0c36eh
l4a66h:
	ld c,c
	res 1,l
	dec h
	and b
	call po,0102ah
	call nc,09ca6h
	adc a,d
	adc a,c
	add a,d
	ret nz
	adc a,a
	add a,(hl)
	call m,02fa7h
	ld c,d
	add a,h
	ld a,(de)
	rst 30h
	jp z,0ca03h
	ex de,hl
	dec b
	sbc a,l
	di
	sub h
	call nc,022c0h
	sub h
	cp a
	adc a,d
	xor (hl)
	add a,d
	ld h,a
	add hl,bc
	ld c,a
	ld a,a
	nop
	inc sp
	ld (02a5ch),hl
	ld b,e
	jp z,0c636h
	call z,0bccbh
	call nc,08594h
	cp 0edh
	ld h,e
	add a,b
	inc l
l4aa6h:
	sub d
	ex (sp),hl
	rst 8
	call m,0ff29h
	cp l
	bit 4,h
	exx
	cp h
	rst 18h
	sub d
	dec hl
	ld (bc),a
	add a,a
	sub h
	call nc,08092h
	ld d,(hl)
	adc a,(hl)
	dec sp
	add hl,hl
	cpl
	sub c
	ccf
l4ac1h:
	ret
	dec l
	ld c,c
	ld c,c
	adc a,d
	dec sp
	adc a,a
	inc d
	jp 04fe6h
	sub 0a9h
	jp z,l79f8h
	ld c,a
	ld (hl),a
	rst 38h
	bit 4,e
	add hl,de
	nop
	inc hl
	cpl
	jp z,0cf4bh
	inc de
	ld c,b
	in a,(0d2h)
	add hl,bc
	ld (hl),h
	add a,h
	dec de
	ld (bc),a
	ret
	ld (hl),l
	call nc,0d52eh
	call p,0d5a1h
	add a,d
	sub d
	sbc a,07ah
	or l
	ret pe
l4af4h:
	rst 20h
	rlca
	adc a,a
	jr l4b6ch
	sbc a,c
	cpl
	adc a,c
	sbc a,h
	ld h,d
	adc a,e
	ld h,a
	ccf
	sbc a,e
	ld h,00fh
	call m,0994fh
	rst 38h
	jp p,0cdc4h
	inc sp
	sbc a,(hl)
	rst 38h
	rla
	add a,h
	cpl
	rst 8
	ld d,(hl)
	cp b
	ld l,c
	call nc,sub_7409h
	add hl,de
	ld (de),a
l4b1ah:
	and l
	jp nc,l6d9bh
	ld (de),a
	add a,e
	or e
	adc a,05dh
	ld b,0dbh
	sub l
	call po,0079dh
	ld h,e
	adc a,a
	ld l,099h
	cpl
	ld l,03fh
	ld a,a
	dec a
	adc a,a
	ld a,(de)
	adc a,b
	ld a,(bc)
	add a,h
	ld sp,hl
	ld c,a
	ld h,e
	rst 38h
	push hl
	ld h,(hl)
	inc hl
	ld d,b
	jp z,0a424h
	sub e
	and l
	xor c
	adc a,b
	cp d
	jp c,09a3bh
	ld a,h
	dec (hl)
	sbc a,h
	ld l,d
	jp c,02319h
	inc hl
	ld bc,094dbh
	add a,(hl)
	or e
	add a,b
	sbc a,l
	rlca
	ex (sp),hl
	adc a,a
	ld (hl),d
	ld e,a
	ret
	call p,0904eh
	ret c
	ex de,hl
	call z,0e43fh
	sub h
	and h
	sub h
	ld sp,hl
	ld c,a
l4b6ch:
	ld l,c
	rst 38h
	push hl
	xor h
	and 05dh
	ld c,b
	and d
	inc (hl)
	cp a
	xor b
	sbc a,d
	call nc,02fc7h
	ld (hl),c
	defb 0fdh,094h ;sub iyh
	or 093h
	and b
	ld d,c
	ld hl,l6985h
	jp z,l548eh
	or 04fh
	inc de
	ret po
	ld c,(hl)
	rlca
	pop af
	adc a,a
	or (hl)
	call z,02c8fh
	xor 0a4h
	rst 28h
	ld e,c
	ccf
	cp 02bh
	call nz,sub_4f7bh
	jp p,0ff5bh
l4ba1h:
	call 017dah
	ret
	jp pe,02d48h
	ld e,(hl)
	add a,h
	defb 0fdh,0f6h,0dah ;illegal sequence
	rst 8
	rst 38h
	adc a,l
	rst 30h
	and (hl)
	inc b
	dec sp
	ld (de),a
	add a,e
	adc a,(hl)
	ret c
	res 1,h
	ld c,(hl)
	rlca
	pop af
	adc a,a
	adc a,03fh
	and e
	ld l,a
	cp 03ah
	ccf
	xor (hl)
	add a,b
	ld a,04fh
	ccf
	ld a,a
	sub (hl)
	or a
	ex de,hl
	rst 38h
	and a
	cp c
	ld d,h
	sbc a,b
	cp c
	or c
	cp a
	sub e
	xor a
	ex (sp),hl
	add a,c
	adc a,c
	push af
	ld l,c
	push de
	and l
	ld l,h
	add a,h
	add hl,hl
	add a,a
	ld b,h
	add hl,hl
	inc de
	call po,0efcfh
	rlca
	adc a,a
	inc e
	di
	ccf
	adc a,a
	sub d
	call p,03f2eh
	ld (hl),e
	dec b
	ld c,a
	push hl
	ld sp,hl
	ld a,a
	xor (hl)
	ld h,c
	call nz,0cf5dh
	call c,05acfh
	jp z,l7fdeh
	push af
	pop bc
l4c06h:
	dec hl
	sbc a,(hl)
	dec (hl)
	jp c,l7633h
	call z,0aa37h
	ld de,00733h
	sbc a,08fh
	add hl,sp
	ld sp,hl
	ccf
	jr c,l4ba1h
	sbc a,h
	adc a,l
	rst 38h
	ld sp,hl
	ld c,a
	ld a,07fh
	ld l,c
	ret nc
	and e
	cp e
	adc a,l
	rst 8
	rst 8
	rst 8
	ld e,e
	xor a
	ld c,(hl)
sub_4c2bh:
	cpl
	xor 019h
	sub 0dch
	jr nz,l4c06h
	jp z,l779bh
	ld de,08a0eh
	ld d,a
	rlca
	ld a,b
	adc a,a
	rst 20h
	ccf
	jp 03f49h
	rst 0
	ld c,a
	and 0f9h
	ld a,a
	ld h,l
	push hl
	dec l
	or l
	ld l,d
	add hl,hl
	inc bc
	push bc
	or l
	sbc a,b
	or b
	ld d,0afh
	ld (hl),a
	add a,d
	push af
	ld h,h
	add a,b
	daa
	sbc a,b
	call po,0a4e2h
	or 0ddh
	adc a,a
	sbc a,a
	xor d
	adc a,(hl)
	inc hl
	rlca
	pop af
	sub b
	inc h
	sbc a,(hl)
	adc a,l
	ld a,(de)
	ld sp,0a610h
	ld c,e
	push af
	ld h,c
	ld c,b
	add a,h
	ld a,h
	exx
	ccf
	ld a,(hl)
	ld c,a
	jp p,000fch
	ld l,e
	add hl,de
	ld c,d
	push hl
sub_4c7fh:
	xor e
	and l
	ret z
	xor d
	call z,09d03h
	cp d
	srl l
	sbc a,(hl)
l4c8ah:
	jp p,086eah
	jr nz,$+73
	ld (de),a
	cp 031h
	adc a,b
	sub l
	adc a,h
l4c95h:
	sbc a,l
	rlca
	push bc
	or 094h
	dec d
	sub l
	ld h,0f1h
	and a
	call m,03f9dh
	ld l,a
	ld a,a
	ccf
l4ca5h:
	rra
	ld c,a
	ld c,a
	nop
	jp nz,l4580h
	ld (de),a
	pop de
	xor d
	ld d,h
	cp a
	ld (hl),e
	jr nc,$+105
	dec hl
	cpl
	and d
	add hl,de
	push hl
	sbc a,b
	or h
	call m,0deebh
	rst 28h
	ld (0abf6h),a
	add hl,bc
	rlca
	ld e,e
	ld (09407h),hl
	jr l4cebh
	adc a,e
	add a,l
	and e
	jr c,$-17
	ccf
	ld c,h
	ccf
	sbc a,e
	ld l,a
	ld c,a
	call p,000fch
	inc b
	sbc a,b
	add a,b
	call 02389h
	and l
	ld b,h
	ld c,h
	xor a
	and l
	xor a
	ld b,0c8h
	add a,h
	inc a
	ld b,(hl)
	cp (hl)
	ld (hl),e
l4cebh:
	sbc a,(hl)
	sub e
	ld sp,0b2f9h
	ld bc,08293h
	rst 30h
	ld d,d
	ei
	ret nc
	ld (bc),a
	ld hl,007dah
	rst 38h
	ld c,h
	cp 04bh
	jr c,l4c95h
	sbc a,b
	adc a,h
	cp a
	sub 03fh
	ld b,h
	ccf
	adc a,0fah
	rst 20h
	ccf
	ld c,a
	push de
	nop
	ret p
	ld d,(hl)
	call z,01215h
	call nz,0af2fh
	ld h,043h
	dec a
	call z,sub_49cfh
	sbc a,c
	sbc a,h
	rst 38h
	ld (hl),d
	jp nc,0df9fh
	sub e
	and e
	ld (de),a
	cpd
	and 03bh
	rst 18h
	ld (0ee86h),hl
	rlca
	defb 0fdh,078h,09eh ;illegal sequence
	adc a,l
	ld l,00ch
	ccf
	add hl,hl
	ld l,b
	xor 048h
	ret p
	in a,(03fh)
	ld c,a
	jp (hl)
	rst 10h
	rst 38h
	add a,l
	ld (de),a
	defb 0ddh,0c9h,02ch ;illegal sequence
	adc a,d
	add a,h
l4d49h:
	xor c
	call 0c6b3h
	ld c,b
	or c
	ld h,l
	or d
	sbc a,01fh
	ld e,b
	ret p
	sub (hl)
	jp (hl)
	sub c
	ld l,l
	ld de,08803h
	ld d,0f5h
	ld d,e
	ld l,d
	nop
	rlca
	cp h
	scf
	sub h
	cp 089h
	sbc a,c
	ld (bc),a
	cp a
	jp (hl)
	ccf
	defb 0ddh,07fh,084h ;illegal sequence
	cp e
	add a,d
	xor e
	ld c,a
	call p,0fe6bh
	pop bc
	ld e,a
	ld e,l
	jp 0f9fbh
	and l
	add hl,hl
	xor c
	ld d,c
	adc a,b
	add a,h
	jp 0bbbbh
	ld h,h
	sbc a,a
	ld a,c
	ret z
	xor 031h
	adc a,h
	call pe,0828bh
	and (hl)
	ld (hl),e
	add a,(hl)
	ld h,(hl)
	nop
	defb 0edh ;next byte illegal after ed
	dec e
	rlca
	xor e
	ld de,02bb7h
	add a,h
	ld (hl),l
	adc a,l
	dec e
	ld (0a73fh),hl
	ld c,b
	ex de,hl
	ld a,(hl)
l4da5h:
	add a,(hl)
	cp (hl)
	ld (hl),a
	ld c,a
	sbc a,a
	nop
	halt
	ld (0e4ffh),hl
	cp a
	rst 20h
	dec bc
	add hl,de
	ld l,035h
	adc a,d
	ld c,b
	cp h
	inc a
	rra
	xor a
	add a,e
	add hl,hl
	jp p,0872fh
	ld (0ec81h),hl
	adc a,(hl)
	adc a,e
	di
	rlca
	jp l52fdh
	add hl,de
	call z,08a83h
	sbc a,h
	ex af,af'
	rst 20h
	ccf
	defb 0fdh,0b7h,0ffh ;illegal sequence
	sub e
	ccf
	ld a,04fh
	xor h
	ret c
	ld l,d
	or (hl)
	ld l,h
	call nc,0f9d9h
	sub e
	jr nz,l4deah
	jr nz,l4da5h
	ld (hl),0afh
	halt
	xor d
l4deah:
	ld c,d
	cp h
	adc a,0afh
	srl h
	rrca
	cp b
	call m,0ecbdh
	dec hl
	jp po,02f38h
	ld d,l
	nop
	di
	ld a,h
	sbc a,h
	ld (hl),a
	ld c,b
	call p,0b332h
	add a,e
	sub d
	halt
	add a,a
	sub d
	add a,(hl)
	sub e
	and e
	di
	ccf
	pop hl
	adc a,(hl)
	sub c
	inc sp
	inc bc
	rrca
	ld a,l
	nop
	jp pe,0d145h
	xor e
	ld d,d
	call nz,sub_4826h
	ld (025ceh),hl
	ld d,h
	xor d
	cp c
	nop
	ld l,d
	or h
	halt
	or b
	ld a,d
	cp c
	ld b,(hl)
	or e
	ld (hl),h
	rrca
	sub d
	ld e,d
	ld de,036fbh
	ld sp,0ca84h
	ld (hl),l
	ld hl,(0ba03h)
	or 005h
	sub h
	adc a,(hl)
	sub h
	rst 30h
	sub h
	ld (hl),c
	ld (08806h),a
	ld h,h
	sub d
	ld h,h
	adc a,e
	sbc a,(hl)
	sbc a,a
	adc a,l
	add hl,de
	cpl
	push af
	push iy
	xor 0e1h
	ccf
	ld b,b
	add hl,de
	ld d,c
	or a
	and c
	ld b,h
	dec sp
	inc c
	ret
	rrca
	call p,033f8h
	ld a,d
	ld a,b
	ld (hl),d
	ld a,a
	ret nz
	ld d,d
	add a,b
	ld c,l
	xor d
	call nc,0b4c4h
	or d
	add a,h
	or 0aeh
	ld a,(l520fh)
	sub b
	call po,0222bh
	ei
	scf
	jp pe,08488h
	jp z,0f829h
	jp z,l5bf7h
	add a,a
	in a,(0fch)
	push bc
	ld de,0118ch
	sub b
l4e8bh:
	sub d
	adc a,e
	ld c,(hl)
	jp 02f6eh
	ld h,(hl)
	jp po,0f1f3h
	ccf
	ld d,l
	ld c,c
	jp c,l59bah
	jr c,l4ed2h
l4e9dh:
	jr nz,l4e9dh
	jp po,0d7fch
	adc a,d
	ret c
	dec de
	adc a,d
	cp e
	in a,(032h)
	rlca
	adc a,e
	dec bc
	adc a,c
	adc a,h
	xor d
	ld b,h
	ld b,h
	or l
	and h
	cp (hl)
	adc a,h
	adc a,h
	or h
	ld l,007h
	rrca
	push de
	sub b
	pop hl
	adc a,d
	inc hl
	ld (hl),e
	and c
	sub d
	di
	sub e
	cpl
	dec hl
	jp pe,0f72dh
	adc a,e
	add a,b
	scf
	or h
	dec a
	sbc a,c
	daa
	sbc a,(hl)
	rla
l4ed2h:
	ld hl,09205h
	inc hl
	add hl,de
l4ed7h:
	cpl
l4ed8h:
	ld (hl),c
	jp pe,0f337h
	ld a,(0b93fh)
	ld a,(de)
	or h
	dec sp
	xor d
	inc l
	dec (hl)
	rrca
	rst 30h
	ld a,a
	adc a,e
	cp l
	call nc,0d5f6h
	or e
	cp (hl)
	ld c,d
	call m,027b3h
	or h
	or 0a6h
	ld l,a
	or l
	in a,(040h)
	xor a
	or c
	adc a,b
	rrca
	pop hl
	and (hl)
	jr c,l4f22h
	call z,02f7bh
	xor e
	ld (hl),c
	add a,(hl)
	cpl
	jp pe,0f731h
	add a,e
	ld de,09232h
	di
	sub h
	ld (de),a
	sbc a,e
	sub d
	defb 0fdh,0b3h,08eh ;illegal sequence
	ld de,02f19h
	sub a
	jp m,l4489h
l4f1fh:
	jp m,008cdh
l4f22h:
	sub d
	ccf
	ret
	xor (hl)
	sbc a,(hl)
	cp l
	adc a,c
	ld bc,0cd85h
	rrca
	sbc a,a
	rst 38h
	ld (hl),l
	ld (014bch),a
	add hl,sp
	cp 0aah
	ld sp,092ffh
	jr z,l4ed7h
	call p,0bfc5h
	cp h
	cp b
	xor (hl)
	inc b
	or e
	adc a,e
	cp (hl)
	rrca
	pop bc
	ld b,b
	ld b,e
	inc sp
	ld (bc),a
	ld b,h
	cpl
	jr z,l4ed8h
	bit 7,a
	ex de,hl
	defb 0ddh,0f7h,058h ;illegal sequence
	cp e
	and a
	ld sp,hl
	add hl,sp
	rst 30h
	ld d,023h
	add a,c
	sbc a,l
	adc a,l
	ld c,h
	ld b,019h
	pop af
	cpl
	ei
	ld de,0b389h
	sub c
	ld sp,hl
	jr c,l4fb4h
	ccf
	ld l,e
	ret
	ld a,e
	ld bc,02222h
	defb 0ddh,027h,094h ;illegal sequence
	adc a,c
	rst 38h
	pop hl
	ld c,d
	inc bc
sub_4f7bh:
	rst 10h
	ld h,d
	push de
	ld c,(hl)
	and b
	ld h,c
	call z,sub_49a7h
	cpl
	ld l,d
	cp d
l4f87h:
	xor 0b4h
	ld b,h
	cp l
	adc a,c
	defb 0fdh,0bch ;cp iyh
	pop af
	rrca
	ld a,(de)
	sub c
	ld (08229h),hl
	ld d,e
	ld l,l
	cpl
	ld (de),a
	add a,a
	ld d,d
	jr nc,$+76
	jr nz,l4f1fh
	exx
	ld a,(bc)
	add hl,sp
	cp e
	add hl,de
	ld bc,03015h
	ld (de),a
	cp a
	or c
	sbc a,b
	ld (hl),091h
	cpl
	scf
	ld h,d
	call z,066ffh
	inc sp
l4fb4h:
	ccf
	cp l
	ret
	or e
	ld sp,0211ah
	and d
	daa
	sbc a,h
	inc h
	rst 38h
	call m,0b612h
	ld a,l
l4fc4h:
	or (hl)
	ld a,d
	ld c,(hl)
	sbc a,a
	jr z,l4fdbh
	ret z
	xor b
l4fcch:
	ld hl,l4ac1h
	sbc a,c
	call p,0ee4ah
	jp pe,09874h
	xor (hl)
	ld d,a
	rrca
	ret nz
	ld c,c
l4fdbh:
	ld hl,01915h
	add hl,hl
	adc a,c
	dec h
	cpl
	xor 054h
	xor b
	call po,057d4h
	ld bc,02ff8h
	cp 02eh
	cp b
	inc l
	sub h
	and h
	add a,b
	and h
	sub a
	ld e,h
	cpl
	xor c
	sbc a,c
l4ff8h:
	ei
	adc a,l
	add a,d
	call z,0113fh
	ret
	inc de
sub_5000h:
	ld bc,09aa1h
	ld h,001h
	ld (hl),e
	add hl,hl
	cp 0c3h
	call nz,09e39h
	dec de
	call nz,02bbch
	inc b
	sbc a,(hl)
l5012h:
	inc de
	adc a,c
	cp c
	ld e,d
	xor 0a9h
	ld c,h
	di
	add hl,hl
	call nz,00f8fh
	ld d,041h
	add a,e
	or c
	cpl
	sub a
l5024h:
	xor a
	sbc a,c
	add a,e
	jp z,08f02h
	sub d
	call p,08f72h
	xor a
	ei
	set 7,e
	ld b,h
	jr nz,l4ff8h
	adc a,(hl)
	add hl,de
	cpl
	ld a,c
	rst 38h
	adc a,d
	jp 03fddh
	ld b,l
	ld c,c
	rst 30h
	sbc a,(hl)
	exx
	inc bc
	and (hl)
	ld (de),a
	sbc a,c
	rst 38h
	inc a
	dec (hl)
	ld d,b
	and c
	adc a,h
	sub c
	ld e,026h
	inc bc
	jr nc,l5024h
	xor c
	cp b
	ld c,c
	cp d
	ld a,e
	cp b
	jp c,0954ch
	ld b,l
	ret z
	xor h
	cp (hl)
	rrca
	jp pe,02f49h
	ei
	inc l
	add a,c
	call 0e783h
	ld a,h
	add hl,hl
	add a,(hl)
	ld (de),a
	inc hl
	sub e
	dec hl
	inc sp
	sbc a,d
	dec d
	inc sp
	sbc a,c
	sbc a,l
	cpl
	ld h,(hl)
	or 072h
	add a,b
	cp b
	sbc a,c
	ccf
	ld d,(hl)
	adc a,c
	cp 04eh
	call m,0e5c6h
	scf
	add hl,de
	rst 38h
	pop hl
	add hl,hl
	sbc a,b
	jr z,l5012h
	ld l,h
	add a,00ah
	inc sp
	inc sp
	jr nc,l5095h
l5095h:
	add hl,sp
	ld a,a
	cp (hl)
	cp d
	cpl
	or h
	dec hl
	push bc
	adc a,(hl)
	cp a
	ld e,a
	rrca
	ld h,h
	sub d
	xor 0d9h
	ld c,a
	xor l
	daa
	ei
	ld l,07ch
	jp z,l6580h
l50aeh:
	ld a,a
	add a,c
	xor 09eh
	ld d,e
	add hl,de
	add hl,de
	cpl
	and h
	ld c,h
	rst 38h
	xor h
	cp a
	ld (hl),c
l50bch:
	rrca
	sub h
	cpl
	xor l
	and a
	inc bc
	rrca
	add hl,hl
l50c4h:
	ld a,a
	add a,l
	ld c,c
	push hl
	add hl,sp
	jp c,0d545h
	nop
	dec sp
	ld e,e
	dec (hl)
	nop
	add a,h
	xor h
	or a
	call p,0c9a5h
	inc bc
	ld l,a
	ld c,h
	push af
	ld e,h
	ld a,099h
	rrca
	ld bc,02140h
	ld sp,019ebh
	call pe,0fba9h
	jp (hl)
	rst 28h
	ex de,hl
	push de
	add hl,de
	ld (bc),a
	ld c,c
	sub b
	jp 0888bh
	ld e,c
	cpl
	sbc a,02dh
	ld (hl),e
	ld a,a
	inc b
	adc a,l
	adc a,c
	xor a
	ld c,l
	or (hl)
	jp c,09c03h
	adc a,(hl)
	rst 38h
	ld a,b
	ld d,l
	adc a,c
	dec hl
	jp c,09020h
	inc sp
	cp e
	jr l50c4h
	cp e
	scf
	di
	sub a
	di
	ld l,l
	rrca
	cp d
	ld h,l
	inc bc
	cp a
	inc l
	ld a,h
	rrca
	dec (hl)
	push af
	ld h,h
	ld a,a
	ld (hl),h
	djnz l50aeh
	or 07fh
	jp z,0fb07h
	ret
	adc a,l
	ld c,e
	adc a,(hl)
	push bc
	ld hl,l6fc3h
	cpl
	ld d,d
	add a,089h
	ld b,h
	add a,(hl)
	sbc a,03fh
	dec e
	ld c,c
	or l
	add a,003h
	and d
	djnz $+1
	sbc a,a
	rst 38h
	add a,d
	xor d
	sub d
	exx
	ld d,b
	add a,b
	inc sp
	adc a,b
	rst 38h
	or e
	rlca
	ld a,d
sub_514fh:
	ld a,c
	and b
	ld (hl),e
	rrca
	ld (hl),h
	rst 0
	pop bc
	daa
	rrca
	call nz,09199h
	call po,0af19h
	ld b,(hl)
	out (029h),a
	ld sp,08810h
	adc a,c
	exx
	sbc a,e
	cp l
	sbc a,b
	inc bc
	xor l
	add a,c
	ld a,(00921h)
sub_516fh:
	cpl
	ld l,d
	ld c,b
	ei
	jp p,0ea82h
	rrca
	ret
	xor d
	ld c,(hl)
	in a,(04dh)
	inc bc
	sbc a,d
	rst 38h
	rst 38h
	cp (hl)
	dec de
	xor a
	ld c,d
	nop
	add hl,hl
	ld (bc),a
	inc bc
	inc sp
	or e
	nop
	ld (hl),a
	ld a,c
	or b
	rst 10h
	rrca
	sub (hl)
	add a,h
	call m,0bf91h
	sbc a,a
	rrca
	dec e
	add a,(hl)
	sra c
	ex de,hl
	ld h,(hl)
	ld a,c
	jp po,08483h
	ld l,h
	di
	scf
	adc a,(hl)
	dec h
sub_51a6h:
	add a,h
	inc b
	inc sp
	ld (de),a
	sub c
	sub a
	ld e,(hl)
l51adh:
	cpl
	ld (de),a
	ret
	ld h,(hl)
	or l
	cp c
	sbc a,c
	rrca
	ld e,l
	ld bc,0a37bh
	ld l,l
	inc bc
	sbc a,(hl)
	ld e,c
	rst 38h
	ret p
	call nc,0da53h
	scf
	call z,011deh
	nop
	ld a,(hl)
	ld h,a
	ld (hl),a
	cp e
	sub l
	jp (hl)
	and 00fh
	and 0fbh
	ld e,(hl)
	call p,0f546h
	ld a,h
	rrca
	ld d,(hl)
	or e
	adc a,c
	ld (bc),a
	add a,b
	ld h,b
	inc de
	djnz l51adh
	call nc,0809dh
	ld c,d
	ld (l75fah),a
	ret m
	defb 0ddh,059h,02fh ;illegal sequence
	sbc a,0ffh
	ld hl,(0fa88h)
	ld l,00fh
	ld l,d
	dec l
	ld bc,0ec9dh
	inc bc
	adc a,e
	rst 38h
	add a,b
	cp 01ch
	rra
	sbc a,l
	xor h
	dec b
	sub a
	ld (hl),a
	halt
	ld h,(hl)
	ld h,(hl)
	ld a,a
	cp c
	xor c
	rrca
	rst 8
	call m,sub_7316h
	cp e
l520fh:
	and a
	rrca
	jp z,l5f91h
	nop
	ld c,(hl)
	ei
	or h
	add a,h
	ld l,l
	defb 0fdh,08bh,067h ;illegal sequence
	add a,c
	ld h,l
	ei
	jp p,0f299h
	cpl
	adc a,d
	rst 38h
	cp 052h
	ld a,a
	call c,0ff0fh
	ld h,0a1h
	adc a,e
	sbc a,a
	inc bc
	ld l,d
	ld a,a
	rrca
	rst 38h
	ld a,(hl)
	ld c,b
	xor e
	adc a,h
	sub (hl)
	ld d,(hl)
	ld a,(hl)
	inc sp
	sub a
	sub h
	add hl,bc
	rrca
	sbc a,d
	ld c,e
	cp l
	ld (hl),d
	ld c,0f9h
	rrca
	ld d,a
	sub c
	call pe,0fb9fh
	cp b
	add a,h
	ld d,l
	add a,c
	add a,e
	sub d
	ld de,0fbfbh
	call p,0a72fh
	ld a,(hl)
	jr nc,l52a8h
	rrca
	dec bc
	ret
	xor l
	ld c,(hl)
	cp h
	call z,09f03h
	ld (07fc4h),hl
	rrca
	ret po
	ld h,0e9h
	ld h,c
	ld l,c
	sub (hl)
	ld a,(hl)
	ld e,066h
	ld a,c
	or b
	ld e,d
	call po,00f71h
	jr $-107
	cp d
	cp a
	rrca
	ld hl,(04b92h)
	ld a,(hl)
	inc hl
l5282h:
	ei
	push hl
	rst 30h
	ld a,h
	ld d,h
	ret m
	ld bc,0fbbeh
	call m,0a32fh
	xor a
	ld a,e
	jp m,00f38h
	call z,sub_5affh
	ld de,l6fafh
	inc bc
	sbc a,e
	and a
	ld a,a
	cp h
	sub b
	ret c
	ret c
l52a1h:
	or a
	exx
	ld c,d
	add a,b
	dec sp
	ld h,a
	cp d
l52a8h:
	ld a,d
	rrca
	call po,0d6a9h
	call p,00f3eh
	ld c,h
	ld d,c
	or h
	ei
	call po,0a2f0h
	pop de
	cp 093h
	add a,c
	adc a,e
	ei
	ex de,hl
l52beh:
	cpl
	jp z,0d2aah
	ld sp,08e93h
	rrca
	adc a,e
	rst 38h
	daa
	and d
	halt
sub_52cbh:
	inc bc
	rst 38h
	rst 0
	ld b,h
	ld a,a
	jp l58d4h
	ld c,b
	add a,l
	dec hl
	halt
	sub a
	ld h,l
	cp 026h
	cpl
	di
	rrca
	inc b
	sbc a,d
	ld c,a
	call nz,00ff9h
l52e4h:
	dec hl
	ld a,a
	ld c,e
	ei
	rst 30h
	or l
	ld c,h
	add a,e
	and e
	add a,e
	rla
	ld (0d7fbh),hl
	cpl
	sub e
	sbc a,b
	cp l
	or e
	or h
	ld d,a
	rrca
	ld d,a
	adc a,c
	ld a,e
l52fdh:
	or b
	ld c,l
l52ffh:
	ld (de),a
	inc bc
	ld b,(hl)
	djnz l52e4h
	ld c,e
	rst 38h
	pop bc
	and l
	ret
	cp 018h
	ld h,l
	inc h
	sub a
	ld h,(hl)
	cp 0c7h
	ld e,084h
	rrca
	ld d,h
	cp c
	sub d
	cp a
	xor a
	call nz,0900fh
	adc a,c
	ld hl,06dbfh
	ei
	ld l,a
	push de
	adc a,b
	rst 10h
	sub a
	inc de
	ei
	res 3,b
	cpl
	and 04ah
	sbc a,c
	and e
	add a,0aah
	halt
	rst 38h
	rst 8
	rst 38h
	jp 0aba4h
	nop
	ld c,b
	defb 0fdh,059h,045h ;illegal sequence
	halt
	rst 38h
	push hl
	sbc a,c
	or h
	xor h
	ld l,(hl)
	rst 28h
	rst 0
	ret
	rra
	rrca
	ld a,0f8h
	and a
	ei
	call pe,l6580h
	add a,b
	sub l
	ld a,(bc)
	ei
	jp po,08101h
	ld l,a
	cpl
	and b
	sub d
	ld de,0a9f4h
	ld l,l
	inc sp
	inc bc
	rst 38h
	ld h,h
	rst 38h
	ld a,h
	ld sp,l4aa6h
	xor e
	ld b,096h
	ld d,l
	ld l,c
	sub a
	cp 016h
	cp a
	sub (hl)
	rra
	and c
	ld sp,055b4h
	sbc a,c
	inc l
	push bc
	ld h,a
	rra
	ld e,h
	rst 38h
	cp b
	add a,h
sub_5380h:
	sub (hl)
	exx
	add a,00fh
	ld c,c
	call z,sub_48fah
	ld bc,085cdh
l538bh:
	call m,09a85h
	sbc a,0fbh
	push af
	sbc a,h
	rra
	rst 20h
	cpl
	ret pe
	sub c
	ld d,b
	ld (023f9h),a
	ld l,a
	inc hl
	inc bc
	rst 38h
	sbc a,a
	ld a,a
l53a1h:
	inc e
	push af
	ld d,l
	add hl,hl
	defb 0fdh,048h,065h ;illegal sequence
	ld a,(bc)
	sub a
	sbc a,b
	call z,0fcafh
	in a,(08fh)
	ld d,l
	ld (bc),a
	inc b
	jp c,000c7h
	rst 20h
	pop hl
	ret nz
	ld (0cd1fh),hl
	inc bc
	add a,b
	cp e
	rra
	ld e,(hl)
	push de
	ld l,d
	rrca
	add a,b
	defb 0edh ;next byte illegal after ed
	defb 0edh ;next byte illegal after ed
	add a,e
	ld c,h
	ld sp,hl
	ld c,l
	ld sp,hl
	ld b,c
	ld (bc),a
	ld (0f730h),a
	ei
	rra
	jp (hl)
	cpl
	ret pe
	sub d
	ld h,(hl)
	ld (0a9a7h),a
	djnz l538bh
	ld h,07fh
	call nz,sub_7cffh
l53e2h:
	ld (094abh),a
	in a,(081h)
	ld e,c
	ld h,(hl)
	sbc a,c
	ld (hl),a
	add a,b
	ld h,02dh
	ld l,020h
	pop de
	xor (hl)
	ld e,c
	exx
	and (hl)
	ld e,e
	ex af,af'
	ld (de),a
	dec bc
	di
	rra
	rst 8
	cp e
	jp z,0d439h
	ld a,e
	rrca
	jp nz,08191h
	sub d
	ld c,a
	call c,0e4fah
	add a,c
	cpl
	inc hl
	ld sp,01f5dh
	ld a,a
	rrca
	dec sp
	dec hl
	and a
	halt
	add a,h
	xor c
	dec h
	ld de,02bcdh
	nop
	defb 0edh ;next byte illegal after ed
	and (hl)
	ld l,e
	cpl
	inc b
	sub (hl)
	sbc a,c
	ld d,l
	ld h,(hl)
	add a,b
	ret c
	or h
	xor h
	ld (de),a
	and (hl)
	inc h
	call c,0206ah
	ld d,a
	ld de,08cd8h
	dec bc
	and 01fh
	jp z,03bd7h
	inc sp
	rra
l543ch:
	rrca
	sbc a,(hl)
	add a,h
	xor e
	nop
	ld d,e
	ld a,a
	ld (de),a
	ld de,l69dch
	ret c
	ei
	ld a,c
	rra
	defb 0edh ;next byte illegal after ed
	cpl
	and 099h
	ld (hl),a
	ld de,01da7h
	cp 087h
	nop
	add hl,de
	ld a,a
	jp 028a5h
	ld c,h
	add a,0dfh
	add hl,bc
	ld d,a
	ld a,c
	add a,b
	dec hl
	jp c,0010bh
	jr nz,l543ch
	ld c,b
	xor h
	and l
	ld e,d
	ld bc,00b31h
	cp h
	rra
	jp nc,037cfh
	ret z
	ret nc
	inc sp
	rra
	rrca
	and d
	sub c
	ld sp,l7679h
	inc hl
	add a,l
	sbc a,0d6h
	ld d,(hl)
	add a,c
	ld a,h
	rra
	ld e,00fh
	ld d,l
	rst 38h
	ld a,a
	and a
	rrca
	nop
l548eh:
	add a,b
	call nz,08d92h
	ld h,a
	nop
	or h
	xor h
	rst 10h
	xor e
	and b
sub_5499h:
	sub a
	ld l,c
	ld l,c
	ld d,(hl)
	sub a
	and l
	ld a,a
	ld c,09ch
	rst 10h
	and h
	call m,0d153h
	ld h,(hl)
	sbc a,044h
	or h
	jr nc,$-114
	add a,(hl)
	and 01fh
	ret
	sub e
	call nc,0a692h
	ld sp,00f9ch
	ret nc
	ld c,c
	inc de
	ld de,l7ee2h
	ld a,d
	cp h
	rst 10h
	sub e
	ret c
	rra
	ret po
	pop af
	rrca
	ld d,(hl)
	ld c,c
	and b
	inc sp
	ld (l7e02h),hl
	ld (0a3d7h),hl
	rrca
l54d2h:
	rst 38h
	ret po
	sub c
	inc l
	add a,h
	xor a
	ld e,h
	defb 0fdh,059h,028h ;illegal sequence
	ld a,c
	ld h,a
	add a,c
	xor h
	pop af
	call nz,00076h
	pop de
	sub l
	jp nc,01288h
	cp 0cah
	ex (sp),hl
	ld c,(hl)
	rra
	ld l,e
	ld d,e
	cp c
	and d
	ret z
	adc a,h
	cp h
	ld (hl),l
	ld c,h
	rrca
	ld d,l
	dec l
	jr nc,l54d2h
	dec l
	ld bc,l4f87h
	ei
	or (hl)
	rst 10h
	ret m
	rra
	inc a
	rrca
	ld l,c
	add hl,hl
	and c
	and d
	cp 0ach
	or b
	call z,sub_51a6h
	djnz l5522h
	rst 38h
	ret p
	ld h,e
	ret nc
	ld (bc),a
	sub a
	halt
	sbc a,c
	cp 045h
	ld a,c
	inc bc
	adc a,(hl)
	rla
	push de
l5522h:
	jp po,00302h
	and l
	xor l
	adc a,c
	add a,a
	ld de,0f9dah
	rra
	jp z,0cc98h
	ld c,h
	ret
	ld e,e
	in a,(04eh)
	rrca
	ret pe
	push de
	xor h
	and e
	pop af
	jp nc,0fa11h
	xor c
	sub 077h
	rra
	push bc
	rrca
	ret po
	sub d
	ld d,c
	inc de
	cp 0feh
	add hl,de
	ld a,a
	scf
	inc hl
	xor l
	add hl,hl
	rrca
	rst 38h
	ret m
	ld a,b
	ld b,09bh
	add a,b
	defb 0fdh,0a1h,079h ;illegal sequence
	sub a
	ld h,a
	cp h
	ld d,h
	cp 062h
	inc bc
	rst 30h
	ld hl,(0b681h)
	ld l,087h
	ld sp,01f00h
	sub 04eh
	ld h,d
	ld d,l
	ld c,b
	call c,00f8eh
	jp nc,0fb92h
	ld h,d
	add a,b
	or (hl)
	ld sp,093fdh
	exx
	rra
	ex (sp),hl
	ret p
	rrca
	or d
	cp 07fh
	xor h
	add a,b
	ld c,d
	ld (02327h),hl
	dec hl
	ld e,a
	ld sp,hl
	ld a,a
	adc a,e
	ld (hl),a
	halt
	cp 04dh
	ld a,a
	defb 0ddh,032h,0bbh ;illegal sequence
	call z,0d43dh
	cp a
	rr h
	rrca
	bit 7,b
	ld l,l
	adc a,c
	rrca
	adc a,0deh
	rrca
	ld a,07fh
	ld l,a
	sub h
	rra
	adc a,e
	rrca
	jp 0d17fh
sub_55afh:
	sbc a,b
	ld a,(hl)
	rst 28h
	cpl
	call c,0a4fdh
	defb 0fdh,0c4h,076h ;illegal sequence
	ld d,(hl)
	add a,b
	ld e,e
	cp d
	adc a,e
	ld c,h
l55bfh:
	ld (hl),a
	call nz,0c477h
	ld d,(hl)
	jp 00f33h
	ld l,e
	ld b,(hl)
	ret z
	rst 10h
	ld c,h
	rrca
	adc a,l
	push de
	call pe,0b9ffh
	ld hl,(00fc8h)
	exx
	rst 8
	ld sp,hl
	ld c,a
	rra
	rra
	rrca
	add hl,bc
	rst 38h
	ld (hl),h
	xor a
	rst 38h
	add a,a
	cpl
	cp c
	defb 0fdh,01eh,079h ;illegal sequence
	add a,d
	add hl,hl
	ld h,(hl)
	add a,e
	ld sp,0c475h
	sub h
	inc l
	cp a
	ld c,h
	adc a,(hl)
	adc a,(hl)
	rrca
	scf
	ld (hl),0d3h
	ld d,0beh
	ld (hl),e
	rra
	xor d
	rst 38h
	ld (hl),l
sub_55ffh:
	ret po
	cpl
	add a,h
	call z,01ff2h
	ret p
	rrca
	ld d,e
	sbc a,c
	rst 38h
	sbc a,h
	cp 0bch
	ld e,02fh
	inc (hl)
	ld a,d
	cp 05eh
	add a,e
	dec de
	ld h,a
	adc a,c
	ld (hl),l
	or l
	ret
	add a,b
	daa
	adc a,0eah
	ld c,b
	ld a,c
	ld e,d
	adc a,h
	jp z,0cb61h
	and a
	jp (hl)
	jr z,l55bfh
	out (09ch),a
	rrca
	sub 007h
	rst 38h
	defb 0edh ;next byte illegal after ed
	cpl
	xor a
	adc a,h
	rra
	ccf
	rrca
	dec b
	adc a,c
	rst 38h
	cp c
	rst 0
	rst 38h
	jp 0dc2fh
	add a,b
	and c
	ld (hl),l
	ld h,(hl)
	rst 38h
	ld (l7f66h),hl
	ld l,l
	ld b,h
	ld a,a
	cp a
	inc e
	call nz,00392h
	ld b,h
	add a,l
	jr c,l56b9h
	call nz,sub_52cbh
	adc a,d
	rst 28h
	ex af,af'
	rrca
	ld d,009h
	rst 38h
	dec sp
	ld e,h
	ld b,(hl)
	cpl
	ld a,b
	rra
	inc a
	ld c,b
	rrca
	or c
	rst 38h
	call 0ff94h
	sbc a,a
	rlca
	cpl
	ld a,a
	add a,h
	or d
	add a,b
	sbc a,d
	add a,d
	ld b,a
	rst 38h
	inc a
	rst 8
	ld c,e
	ld a,(0c398h)
	xor d
	push bc
	ret po
	rrca
	add a,h
	adc a,c
	ret z
	inc hl
	xor c
	sub e
	ld c,b
	rlca
	adc a,c
	rrca
	adc a,e
	ld b,l
	rst 38h
	ld e,l
	call c,02f99h
	or 01fh
	sbc a,b
	jp p,0d70fh
sub_5697h:
	rst 38h
	inc (hl)
	adc a,c
	rst 38h
	call m,02f3dh
	ld (de),a
	sbc a,c
	ld h,a
	add a,c
	inc c
	ld d,(hl)
	halt
	halt
	ld a,a
	ld l,(hl)
	call z,0c710h
	ld h,h
	ret nz
	ld e,d
	ret z
	sbc a,c
l56b0h:
	ccf
	jp z,l45fch
	and h
	rst 8
	add a,a
	ret c
	ld h,l
l56b9h:
	call nc,01f2eh
	cp c
	ld bc,0d8ffh
	nop
	inc b
	exx
	cpl
	add a,05eh
sub_56c6h:
	rra
	ld a,c
	add a,h
	inc a
l56cah:
	rrca
	add hl,sp
	rst 38h
	rst 8
	ld a,(hl)
	ret po
	defb 0edh ;next byte illegal after ed
	cpl
	sbc a,c
	cp 041h
	sub (hl)
	ld l,c
	dec (iy-001h)
	inc h
	call po,037a6h
	ld d,c
	ld a,a
	dec b
	ld c,c
	sbc a,b
	ret pe
	add hl,de
	call nz,00e69h
	ld c,c
	ei
	ei
	ld c,h
	ld a,(hl)
	sbc a,(hl)
	ld (hl),d
	rrca
	ld c,c
	rst 30h
	rst 38h
	ld (hl),e
	djnz l56fah
	ld b,h
	ld a,h
	cpl
	ld h,h
l56fah:
	cp 0f1h
	rrca
	rst 30h
	rst 38h
	add hl,sp
	cp 078h
	ld a,d
	cpl
	or a
	ld a,a
	cp 036h
	add a,l
	cp c
	add a,e
	adc a,c
	call p,0f639h
	add hl,de
	sub l
	add hl,sp
	call p,0a64ch
	adc a,c
	ld sp,hl
	and 0cfh
	ld l,c
	out (08eh),a
	rrca
	ld c,e
	ld c,c
	sub c
	out (0a5h),a
	pop de
	cpl
	call nc,08022h
	ld d,d
	ld (045deh),hl
	adc a,b
	add a,d
	ld (hl),e
	sbc a,h
	dec (hl)
	inc a
	cpl
	cpl
	xor e
	ld a,h
	rrca
	jr z,l5764h
	ld a,h
	inc hl
	inc hl
	jp c,l7f03h
	rrca
	and a
	rst 38h
	add a,e
	cpl
	ld l,e
	defb 0fdh,016h,069h ;illegal sequence
	add a,b
	sbc a,c
	ld (bc),a
	rst 38h
	add a,h
	push hl
	ld l,e
	adc a,b
	sub (hl)
	sub d
	ei
	or (hl)
	add a,072h
	jp m,00ff2h
	call 09c93h
	add a,b
	and l
	xor l
	jp nc,0890fh
	sub c
	ld a,b
	sub h
l5764h:
	jp m,02331h
	inc sp
	ld a,h
	ld (l48fbh+2),a
	inc sp
	xor b
	ret c
	add hl,de
	add hl,de
	add hl,hl
	ld c,h
	ret z
	call nz,02f79h
	and h
	or l
	cp e
	ld d,l
	rrca
	jp z,026a9h
l577fh:
	ld (hl),002h
	inc sp
	inc bc
	and l
	dec l
	rst 38h
	ret m
	ld (hl),c
	cpl
	ld c,c
	add a,b
	xor h
	ld d,l
	rst 38h
	add a,b
	xor c
	or (hl)
	ld c,c
	and d
	inc a
	ld b,(hl)
	rst 28h
	jp z,0f780h
	rrca
	adc a,(hl)
	dec hl
	call 00f3bh
	call nc,0e7fdh
	and a
	and (hl)
	ld d,e
	ld e,(hl)
	push de
	ld e,c
	add a,b
	exx
	ld hl,00131h
	rst 18h
	rla
	ret
	ld e,02fh
	ld d,l
	ccf
	or l
	or c
	rrca
	jp z,02000h
	sub e
	and (hl)
	inc bc
	ld c,a
	ld bc,l7f29h
	add a,a
	cpl
	sbc a,(hl)
	add a,b
	ld c,a
	defb 0fdh,058h,0afh ;illegal sequence
	exx
	add a,b
	jp c,l47beh
	ld b,h
	ld a,a
	add hl,sp
	ld (hl),h
	jp m,09469h
	ld a,l
	ld a,(00f89h)
	ld c,l
	ld c,c
	adc a,0ceh
	ld e,c
	ret nc
	add hl,sp
	ld (bc),a
	ld c,h
	add hl,bc
	ld (0cb85h),a
	add a,e
	ret z
	sub c
	sub l
	sub h
	push bc
	cp l
	cpl
	ld e,c
	ld a,a
	ld sp,0d20fh
	adc a,c
	jp m,0a38ch
	ld c,l
	inc bc
	call po,0e7a8h
	rst 38h
	add a,e
	ld d,h
	ld c,e
	adc a,h
	ld c,c
	call m,0fc4ah
	inc hl
	adc a,(hl)
	add a,(hl)
	add a,h
	add a,b
	ld l,l
	jp pe,00365h
	add a,0e9h
	ret z
	add hl,de
	rrca
	jp l4d49h
	ld h,a
	add a,(hl)
	ld a,(l590fh)
	add hl,de
	ld c,c
	rst 30h
	sub e
	cp 064h
	ld a,e
	in a,(06bh)
	ld (bc),a
	and l
	rrc a
	add a,e
l5829h:
	ld de,0f848h
	dec de
	ccf
	rst 20h
	rrca
	jp z,0a049h
	adc a,h
	and h
	ld c,l
	inc bc
	add hl,sp
	djnz l5863h
	rst 38h
	pop hl
	rr a
	ld a,a
	add hl,hl
	dec d
	ld h,l
	ei
	cp b
	cpl
	adc a,b
	adc a,(hl)
	jp m,04438h
	and h
	add a,(hl)
	add a,001h
	sub h
	sbc a,a
	ld l,0fbh
	xor a
	add a,d
	cpl
	rrca
	add hl,hl
	sub d
	ld c,l
	inc hl
	defb 0fdh,032h,020h ;illegal sequence
	rst 10h
	jp z,0fe7bh
	xor c
	ld d,(hl)
l5863h:
	ld de,07d05h
	or e
l5867h:
	add a,e
	adc a,b
	adc a,c
	ret p
	cpl
	rst 20h
	ccf
	rrca
	and d
	ret
	ld (de),a
	rra
	and e
	defb 0fdh,003h,085h ;illegal sequence
	add hl,de
	rst 38h
	ld a,h
	inc (hl)
	rra
	and (hl)
	sbc a,l
	cp a
	sub (hl)
	ld a,a
	ei
	adc a,e
l5883h:
	ld a,b
	cp a
	ld l,a
	ld a,(08c5bh)
	dec b
	or 047h
	call nz,0006dh
	ld (08831h),hl
	push af
	add a,a
	add a,h
	rrca
	jr z,l5829h
	xor 08eh
	inc sp
	ld de,032d1h
	pop de
	adc a,h
	ld a,e
	ld (de),a
	ld (bc),a
	ld a,h
	call nz,0210eh
	adc a,b
	call nc,0ba48h
	rst 20h
	cpl
	ld d,(hl)
	add hl,bc
	call m,sub_448eh
	rrca
	xor c
	ld a,a
	add a,b
	jr nc,l5867h
	call nc,02103h
	sbc a,091h
	add a,b
	pop af
	ld c,d
	and (hl)
	push bc
	ei
	ld a,a
	or c
	cp d
	sbc a,c
	inc sp
	rst 38h
	adc a,l
	sbc a,085h
	ld b,(hl)
	add a,e
	sub 00fh
	nop
	rst 38h
	jr nc,$-118
l58d4h:
	adc a,d
	xor d
	push de
	dec l
	rrca
	ld c,l
	ret
	call m,0a6fah
	ld sp,hl
	daa
	ei
	ld h,l
	cp 052h
	ret c
	call nz,0200eh
	jp nz,0dc83h
	xor b
	push af
	adc a,02fh
	or e
	ei
	cpl
	call nc,00f39h
	ld c,d
	ret
	jr nz,l58f9h
l58f9h:
	and d
	ld c,h
	inc bc
	adc a,e
	rst 38h
sub_58feh:
	sub b
	jp p,0deffh
	add hl,bc
	sub 049h
	call m,0fcb9h
	ld (07183h),hl
	ld c,h
	ld l,a
	rst 38h
	xor h
l590fh:
	ld b,l
	rst 38h
	cp 02bh
	djnz l5947h
	add a,h
	ld c,a
	call m,0ff76h
	inc l
	daa
	ld (hl),b
	sub h
	rrca
	sbc a,c
	inc (hl)
	sub b
	ld bc,0c9f2h
	ld c,h
	jp m,0d7b1h
	ld e,c
	ld bc,09985h
	sbc a,09ah
	adc a,(hl)
	sub a
	add a,d
	inc a
	sbc a,b
	cpl
	ld h,a
	out (035h),a
	cp e
	ld a,b
	rrca
	ld a,(hl)
	ld (bc),a
	ei
	defb 0edh ;next byte illegal after ed
	inc bc
	ld a,a
	rrca
	ld a,h
	ld a,a
	sbc a,e
	rst 30h
	add a,e
l5947h:
	halt
	ld h,a
	ld h,a
	ld l,023h
	push hl
	dec e
	sub h
	rst 38h
	in a,(088h)
	ld a,(bc)
	ld d,e
	add a,h
	rst 8
	call nz,09905h
	ret z
	ld c,0ceh
	call z,04d09h
	sub b
	or 0fbh
	sbc a,c
	ld sp,hl
	ret
	di
	ld d,(hl)
	rst 10h
	xor l
	add a,b
	ld h,h
	rst 38h
	sub c
	add a,e
	sbc a,b
	add a,e
	sub d
	adc a,(hl)
	ld l,a
	rra
	cpl
	ld e,c
	xor e
	sub h
	call z,00f72h
	ld bc,0fbfdh
	in a,(003h)
	and e
	rst 8
	ld a,a
	add a,c
	adc a,b
	ld l,b
	adc a,c
	sub (hl)
	ld a,a
	ld h,a
	ei
	sbc a,b
	ld a,b
	cp h
	push hl
	and 0f0h
	ld d,h
	ld c,b
	jp pe,0efb1h
	sbc a,a
	sbc a,c
	sbc a,e
	rrca
	adc a,d
	dec hl
	ld h,08ah
	sbc a,c
	add hl,bc
	and b
	ld (hl),c
	sub b
	adc a,045h
	ret
	pop de
	cp 0a7h
	ld (de),a
	ld sp,031d7h
	add a,h
	ret
	add a,l
	cp b
	inc bc
	add a,083h
	ld e,l
	call z,sub_6d2fh
	ld e,b
	adc a,d
l59bah:
	ld l,00fh
	sbc a,a
	ld c,c
	djnz $-3
	cp e
	inc bc
	rst 38h
	dec d
	rrca
	ld a,a
	pop af
	ld c,c
	cp 0fch
	ld e,c
	add a,d
	ld b,a
	jp m,0b925h
	ld l,d
	add hl,de
	rst 28h
	sub 097h
	ld d,e
	xor d
	jp p,053efh
	or 0d3h
	ret z
	ld d,0cah
	or d
	rrca
	ld h,l
	sub h
	ld c,(hl)
	ld a,(de)
	adc a,0c9h
	pop af
	ld sp,hl
	add a,e
	dec d
	add a,d
	and a
	rst 10h
	or c
	cp 029h
	call c,002d8h
	add a,083h
	cp d
	cpl
	ld h,h
	sbc a,b
	dec a
	xor a
	ld h,a
	ccf
	ld d,0ffh
	ld a,(hl)
	ei
	defb 0edh ;next byte illegal after ed
	inc bc
	rst 38h
	sbc a,h
	call nz,0ff99h
	ret p
	ld l,d
	push hl
	ld d,c
	ei
	ei
	ld l,e
	xor 039h
	ld e,a
	sub e
	push bc
	ld b,d
	inc sp
	sub c
	ld de,09219h
	jp nc,l56cah
	sub b
l5a1fh:
	sub (hl)
	inc bc
	cp e
l5a22h:
	ld c,(hl)
	and d
	ld (hl),e
	call nc,09a23h
	inc c
	ld hl,07f31h
	ret
	ld (hl),e
	jp m,l7f2ch
	ld a,e
	adc a,h
	add a,d
	call pe,0b1feh
	ld b,083h
	sub a
	sub h
l5a3bh:
	cpl
	ld e,e
	inc b
	or l
	xor d
	call nz,0ffc5h
	cp a
	ld d,0fbh
	ld (hl),c
	inc bc
	djnz l5a1fh
	exx
	rst 38h
	adc a,a
	ld e,0fch
	ld h,h
	cp 04bh
	ld h,a
	jp m,l6f4ch
	adc a,e
	sbc a,00fh
	ld h,0abh
	call z,0ac03h
	dec h
	ret p
	inc d
	ld c,h
	push bc
	sbc a,e
	adc a,095h
	adc a,c
	or d
	rst 38h
	xor (hl)
	call nz,0aacdh
	ld h,l
	ld (hl),a
	pop af
	jr nc,$+5
	inc hl
	call nc,0c8f7h
	ld a,e
	add a,d
	jp z,08b09h
	rst 10h
	add a,e
	add hl,de
	ld (hl),h
	inc d
	cpl
	ld b,h
	xor 02fh
	ret
	ld (hl),c
	ld (de),a
	ei
	ei
l5a89h:
	inc bc
	jp nz,0ff29h
l5a8dh:
	ld a,(hl)
	cpl
	and d
	ret
	add hl,hl
	ld a,c
	defb 0fdh,0bah,099h ;illegal sequence
	and l
	rst 28h
	adc a,(hl)
	ld a,a
	add hl,de
	sub h
	sbc a,02dh
	ld c,a
	inc bc
	ex de,hl
	call nc,sub_778fh
	adc a,a
	sbc a,e
	ld l,d
	ld c,b
	rra
	ret
	rra
	and d
	ld a,l
	xor 0bch
	jp m,0fe8ah
	ret m
	adc a,d
	ld a,e
	add a,d
	scf
	ld a,a
	jr $+53
	add a,e
	out (091h),a
	and h
	ld a,b
	jp pe,0c42fh
	defb 0edh ;next byte illegal after ed
	or h
	push hl
	ld (de),a
	ei
	ei
	inc bc
	or l
	rst 38h
	sub c
	rst 38h
	pop af
	adc a,0eeh
	cp c
	ld h,a
	rst 38h
	dec e
	sbc a,b
	push hl
	xor c
	ld (bc),a
sub_5ad8h:
	xor l
	ld c,d
	add hl,hl
	ld e,e
	exx
	inc bc
	rst 10h
	rrca
	add a,b
	nop
	adc a,e
	ld h,c
	adc a,c
	rst 8
	sla l
	sub d
	ld d,b
	sub c
	inc de
	jp z,021c8h
	cp l
	nop
	ld sp,hl
	ld d,c
	ld (bc),a
	cp 0c4h
	xor b
	ld e,d
	add a,a
	ld d,d
	ex (sp),iy
	add a,e
	rrca
	sub h
sub_5affh:
	cpl
	inc e
	add a,h
	ld c,e
	cp c
	jp po,0fd7fh
	ei
	rst 18h
	inc bc
	rst 38h
	ld a,07fh
	ld a,(de)
	jp c,0f34ah
	rst 0
	sub a
l5b13h:
	cp 025h
	ld a,a
	rst 38h
	ld a,(0b911h)
	ld h,0aah
	ld (090adh),hl
	inc b
	jr nz,l5b85h
	ld (bc),a
	ex af,af'
	ld (bc),a
	cp l
	add a,l
	xor l
	ld c,c
	inc bc
	push af
	ret
	sbc a,c
	ld h,092h
	or d
	ld a,h
	pop af
	set 7,c
	rra
	ld a,(bc)
	ld (de),a
	nop
l5b38h:
	ld bc,0b7fdh
	ld l,(iy-028h)
	ret
	dec d
	ld (l7c93h),hl
	sbc a,l
	nop
	add hl,de
	cpl
	add a,0fah
	xor h
	sbc a,b
	add a,b
	ld h,d
	adc a,b
	ld a,a
	inc de
	sbc a,(hl)
	bit 2,l
	ld h,065h
	rst 38h
	inc sp
	rst 38h
	ret po
	cp l
	exx
	sub c
	add a,e
	sub (hl)
	ld a,(hl)
	adc a,c
	ld a,c
	rst 38h
	sub 088h
	and l
	rla
	and (hl)
	ld c,b
	ret nc
	nop
	or l
	jp c,l5fa5h
	ld b,011h
	or 02bh
	ld b,h
	rst 38h
	ld a,b
	cp l
	rst 28h
	xor l
	halt
	jp (hl)
	ld a,(de)
	ld (de),a
	rra
	djnz l5b13h
	call m,006aah
	ld a,(bc)
	or 061h
l5b85h:
	ld (02501h),hl
	jr nc,l5b38h
	ld (00231h),a
	ld (hl),c
	add hl,bc
	cpl
	cp (hl)
	call m,0db62h
	halt
	or e
	jp pe,l65abh
	ld a,(de)
	or (hl)
	sub d
	add a,a
	ld e,(hl)
	call nz,0ffe3h
	cp (hl)
	ld bc,0ae50h
	halt
	and 0fch
	xor b
	nop
	ret
	and l
	and a
	dec l
	xor h
	ld d,l
	ld hl,0006eh
	add hl,sp
	ld e,d
	or 0e9h
	ld c,a
	call z,0dd40h
	inc hl
	ld (bc),a
	di
	ld (de),a
	rst 30h
	or c
	ld de,0b61fh
	ret p
	ld a,d
	rst 8
	ld c,b
	ld c,033h
	sub c
	add a,002h
	ld de,0b345h
	add a,h
	add hl,de
	adc a,e
	sub h
	ld b,010h
	cp b
	ld a,a
	cpl
	halt
	ld c,h
	xor a
	jp po,0984fh
	rst 38h
	ld (hl),e
	ld (hl),024h
	add a,d
	and l
	add a,d
	ret m
	ld a,a
	sbc a,e
	sbc a,b
	ld a,(hl)
	call m,06678h
	adc a,08ah
	ld d,d
	adc a,b
	rst 0
	cp c
	ld h,l
	pop de
	ld l,c
l5bf7h:
	or h
	ei
	add hl,bc
	ld c,d
	push bc
	ld d,l
	add a,e
	adc a,c
	ld a,b
	call nz,0e6ach
	and h
	call po,0c792h
	push hl
	sub e
	rra
	ld h,a
	ret m
	add hl,hl
	adc a,d
	ld d,013h
	ld b,026h
	ld d,l
	ld a,b
	call m,0af52h
	ld d,d
	adc a,d
	ld d,l
	inc (hl)
	or h
	ld (hl),l
	cpl
	jp m,0843bh
	xor c
	or (hl)
	ld e,c
	xor e
	sbc a,e
	add a,e
	dec de
	or h
	ld h,094h
	xor a
	nop
	or (hl)
	rra
	ld b,(hl)
	add a,d
	ld b,(hl)
	add a,b
	jr z,l5cach
	defb 0fdh,0cdh,0f3h ;illegal sequence
	in a,(044h)
	set 1,c
	ret
	and l
	call po,03772h
	call z,0fb6bh
	ret c
	ld d,e
	ret
	ld hl,0c6e4h
	call pe,sub_46c2h
	ld (l6c83h),hl
	rra
	cp 070h
	ld (de),a
	cp c
	dec bc
	defb 0fdh,016h,021h ;illegal sequence
	defb 0fdh,0b1h,0afh ;illegal sequence
	sbc a,c
	adc a,h
	sub l
	add a,h
	ld h,(hl)
	ld a,a
	cpl
	jp c,l52ffh
	jp m,0b1d5h
	ccf
	adc a,b
	ld bc,0dcc7h
	inc a
	or e
	dec (hl)
	rrca
	ld a,a
	rst 18h
	sub c
	or d
	rst 38h
	dec l
	defb 0fdh,031h,081h ;illegal sequence
	dec e
	ld a,b
	sbc a,e
	xor c
	sbc a,h
	exx
	ld c,a
	xor c
	jp z,0d47eh
	ld d,d
	rst 20h
	jp nc,l4c8ah
	ld c,h
	ld d,(hl)
	add a,h
	ret
	ld a,(de)
	ld b,h
	ret nz
	xor 04eh
	adc a,l
	ld h,020h
	ex de,hl
	call 01f75h
	and d
	adc a,e
	cp 0a9h
	defb 0fdh,08ah,020h ;illegal sequence
	ld hl,09175h
	ld b,h
	inc sp
	add a,c
	ld h,h
	sub b
	ld d,a
	ld a,(de)
l5cach:
	sub a
	ld d,e
	sbc a,h
	sbc a,b
	cp a
	ld (hl),c
	cpl
	ld a,a
	ld l,(hl)
	call nz,0d2e6h
	sub e
	adc a,c
	ld bc,0b2c7h
	and (hl)
	inc l
	djnz l5cc8h
	rrca
	adc a,a
	rst 38h
	add a,e
	ret c
	inc sp
	rst 38h
l5cc8h:
	ld l,e
	rst 38h
	and h
	add a,c
	sub e
	add a,(hl)
	cpl
	ld h,(hl)
	call 0015ah
	rst 18h
	xor 0adh
	exx
	ld a,a
	ld l,c
	set 7,c
	or l
	add hl,hl
	ret
	ld d,l
	ld l,h
	ex (sp),hl
	ld h,0efh
	ld h,h
	jp m,01b59h
	rra
	sub e
	ret nc
	sub h
	ld l,(hl)
	inc h
	ld (0f1a4h),a
	xor d
	or b
	ld b,0bch
	add a,a
	ld c,c
	ld (bc),a
	rst 18h
	add a,e
	ld a,c
	adc a,c
	rla
	add a,(hl)
	call c,02b2fh
	ld c,b
	ld sp,hl
	ld (hl),a
	adc a,h
	ld l,d
	inc c
	rst 0
	jp po,029a9h
	add a,d
	xor (hl)
	call z,00fa3h
	rst 38h
	ret po
	ld l,e
	adc a,b
	ld a,a
	ld h,a
	cp 00bh
	adc a,e
	ld h,d
	rra
	add a,0ddh
	ld (0cc62h),a
	sub 0b7h
	push de
	ld b,h
	or c
	call m,00bd4h
	inc c
	in a,(0d5h)
	ld b,e
	sub h
	and 01fh
	call po,0886ch
	sub (hl)
	ld b,076h
	ld b,l
	ld (hl),a
	ld (0b231h),a
	ld h,h
	xor l
	in a,(092h)
	sub e
	adc a,(hl)
	sub c
	adc a,l
l5d41h:
	ld l,d
	cp a
	or 0adh
	or 0bfh
	xor (hl)
	ld c,b
	ld (bc),a
	ccf
	xor d
	in a,(0e5h)
	jp nc,00fcah
	rst 38h
	ld a,b
	dec hl
	add a,d
	ld (hl),b
	ei
	ld e,b
	ld h,a
	add a,b
	sub (hl)
	ld b,(hl)
	ld a,c
	cp c
	and a
	ld c,b
	cp e
	ld l,l
	sub h
	add hl,sp
	jp p,0be6eh
	or c
	inc a
	call c,02014h
	ld e,c
	and 0d4h
	ld (hl),b
	sub b
	and h
	jp p,l4863h
	sbc a,b
	ld de,08b10h
	ld e,c
	rst 8
	ld (hl),0fah
	ld l,d
	ex af,af'
	and d
	ld d,e
	add a,l
	djnz $+3
	jr nc,l5d41h
	ld de,02389h
	sub a
	ld l,a
	sub 0bdh
	ccf
	sub d
	call m,08d3fh
	add a,d
	call z,0beb9h
	adc a,c
	ld e,08ch
	sbc a,b
	call nz,sub_7c81h
	ld (de),a
	xor e
	ld b,l
	add a,b
	add a,b
	halt
	add a,b
	sbc a,h
	add a,b
	sub l
	defb 0edh ;next byte illegal after ed
	sbc a,l
	or l
	sbc a,d
	call p,097b6h
	cp b
	di
	ld c,d
	inc (hl)
	ld (l4af4h),hl
	ld a,a
	ex (sp),hl
	ld l,d
	ld (hl),l
	sub (hl)
	ld a,c
	ld c,(hl)
	ex af,af'
	add a,h
	call 0eccdh
	ld e,c
	rla
	sub e
	pop de
	ld h,080h
	adc a,b
	or h
	add a,(hl)
	ld e,c
	inc bc
	inc b
	ld a,a
	ld a,h
	ld c,c
	sbc a,l
	ld a,a
l5dd2h:
	jp (ix)
	xor l
	add a,h
	and h
	adc a,c
	and 04fh
	dec h
	ld c,c
	dec c
	ld b,h
	rst 20h
	ld l,h
	rrca
	ld c,b
	xor a
	rst 38h
	add a,e
	ld h,(hl)
	dec hl
	xor c
	inc sp
	cp 03bh
l5debh:
	add a,d
	dec sp
	ld sp,hl
	ld h,09fh
	call nz,0c435h
	or h
	or e
	adc a,(hl)
	in a,(0f8h)
	dec h
	adc a,c
	push hl
	xor 064h
	add a,b
	adc a,d
	ld (0cdc0h),a
	sbc a,h
	ld c,c
	add a,(hl)
	ld (0dc87h),hl
l5e08h:
	sbc a,h
sub_5e09h:
	xor h
	ex de,hl
	call m,0cb83h
	jr l5e08h
	ld c,e
	rla
	jp m,08592h
	ld d,(hl)
	sub a
	or a
	ld e,d
	set 1,b
	di
	ld c,b
	dec d
	sbc a,h
	ld c,a
	pop bc
	ld e,e
	adc a,(hl)
	ld (hl),l
	ret z
	ld h,a
	sbc a,e
	rrca
	add a,b
	xor a
	ld de,l4848h
	ld a,a
	adc a,a
	ld h,a
	add a,l
	inc hl
	and (hl)
	ld (l49b0h),hl
	adc a,h
	or l
	ret nz
	sbc a,c
	call p,0ae49h
	ld h,0f4h
	inc d
	rlca
	ret m
	jp po,08002h
	ld e,c
	cp a
	ld (hl),c
	rst 30h
	ld d,a
	add a,b
	cp 0a8h
	ld de,0cbfeh
	ret m
	ld c,b
	ei
	or e
	sub c
	ld h,a
	sub h
	cpl
	or e
	ld h,a
	cp 02fh
	sub a
	ld h,l
	push de
	jp nz,053feh
	ld b,a
	ld h,0cah
	ld d,d
	ld c,h
	ld b,l
	ld a,a
	ld c,h
	dec bc
	ld b,l
	ret z
	defb 0ddh,080h,01bh ;illegal sequence
	rst 38h
	adc a,a
	inc c
	rst 38h
	and l
	ld h,(hl)
	cp 035h
	ld bc,03780h
	adc a,d
l5e7ch:
	ld h,035h
	ret
	and (hl)
	push bc
	ei
	cp b
	inc (hl)
	rst 38h
l5e85h:
	pop de
	adc a,a
	ld h,(hl)
	jp p,l5dd2h
	jp m,0e352h
	ld c,c
	ret pe
	call nz,0f079h
	dec (hl)
	ld h,a
	di
	ld h,(hl)
	ld (hl),d
	ld h,d
	rst 30h
	ld h,d
	rla
	ex af,af'
	adc a,h
	rst 30h
	or d
	ld (0b18fh),a
	ld hl,09cb7h
	ld c,a
	call nc,03f86h
	xor 083h
	push bc
	call 021ffh
	ld b,h
	ld c,h
	ld bc,l7f96h
	ld e,d
	ld l,a
	rst 38h
	jp 09169h
	xor 093h
	cp 09bh
	add a,c
	sub (hl)
	cp c
	or d
	or l
	cp a
	ret p
	push bc
	inc b
	xor l
	push af
	sub d
	ret c
	ld a,a
	ld hl,0ee95h
	call nz,01061h
	add a,b
	jp po,09e12h
	jp pe,033eah
	sbc a,d
	inc (hl)
	jp pe,0968ch
	adc a,d
	di
	ret p
	ld (hl),d
	sbc a,d
	dec l
	add a,(hl)
	call 047b3h
	ld (de),a
	or c
	xor a
	ld a,a
	add a,e
	sub h
	ccf
	sbc a,(hl)
	jp c,l4fcch
	halt
	ld c,c
	ret c
	xor c
	call nz,0d87fh
	xor e
	add a,b
	jp po,0ffech
	xor h
	ret p
	sbc a,h
	add a,b
	inc de
	sub (hl)
	ld h,a
	ld l,c
	adc a,h
	sub (hl)
	cpl
	cp d
	xor (hl)
	call p,0bae4h
	and a
	cp h
	call pe,sub_65f0h
	rst 18h
	rst 18h
	adc a,l
	cp l
	sub a
	sbc a,b
	jp m,06797h
	ret pe
	and 0cch
	ld l,a
	defb 0fdh,0a2h,033h ;illegal sequence
	ld a,l
	push de
	add a,a
	and h
	and b
	rr e
	add a,a
	ld b,(hl)
	ld (0afb2h),hl
	ld d,l
	ld c,l
	sbc a,h
	ccf
	call c,0b488h
	call l4f87h+1
	ld c,c
	add a,h
	jp m,098d4h
	cp 0edh
	rst 38h
	inc a
	ld c,e
	adc a,b
	and (hl)
l5f47h:
	ld c,b
	sub (hl)
	push bc
	sub a
	add a,d
	exx
	dec c
	sbc a,a
	ld (hl),h
	call p,0fea4h
	xor h
	add a,h
	ld l,l
	ld sp,02d17h
	djnz l5f47h
	ld l,l
	jp pe,08025h
	daa
	add a,h
	ld (hl),c
	sbc a,(hl)
	dec de
	inc hl
	add hl,bc
	defb 0fdh,049h,086h ;illegal sequence
	ld h,08ch
	ld h,(hl)
	xor c
	defb 0edh ;next byte illegal after ed
	sub l
	and (hl)
	rla
	ld c,(hl)
	adc a,l
	ld a,(hl)
	sub a
	ret m
	ld a,a
	ld c,l
	ccf
	ld c,c
	ccf
	call z,0a381h
	ld c,b
	jp po,0fb22h
	and l
	rst 38h
	and a
	cp 086h
	ld de,09ca2h
	ret p
	ld d,d
	ld a,(hl)
	ld hl,(l7677h)
	rst 38h
l5f91h:
	xor h
	or e
	sub (hl)
	dec hl
	ld b,h
	cp 0b4h
	cp e
l5f99h:
	or l
	sbc a,c
	sub c
	adc a,a
	add a,c
	sub d
	add hl,hl
	sub d
	ld (0ebfah),hl
	ld sp,hl
l5fa5h:
	ld a,(de)
	ld hl,0fcc4h
	or e
	push hl
	ret pe
	push de
	inc de
	inc de
	adc a,b
	inc hl
	cp 0c6h
	ld de,06e87h
	sbc a,a
	inc hl
	djnz l5f99h
l5fbah:
	or 086h
	push bc
	jr nz,l5fbah
	ld a,b
	ld e,d
	cp e
	ld (hl),c
	ccf
sub_5fc4h:
	cp l
	cp b
	ld b,h
	bit 2,e
	exx
	ret c
	add a,l
	or c
	rst 38h
	jp po,01cc9h
	ret p
	exx
	rst 38h
	ld c,a
	adc a,e
	ld h,d
	ld a,e
	cp e
	inc (hl)
	cp b
	ld l,c
	or b
	ld (de),a
	ret z
	xor h
	cp b
	rrca
	sub d
	ld l,(hl)
	sub c
	jp (hl)
	ld l,(hl)
	jp m,0edcdh
	push af
	inc de
	ld de,0d69fh
	add a,l
	ld (l76f0h),a
	ld sp,hl
	or d
	ret p
	inc sp
	add a,a
	ld (hl),d
	add a,e
	dec hl
	sbc a,(hl)
	ccf
	rst 18h
	adc a,c
	sub b
	cp c
	rst 18h
	cp c
	ex de,hl
	ld e,c
	ret nz
	ld c,h
	ccf
	jp m,l42d4h
	adc a,d
	add a,h
	ld d,h
	call sub_6fd3h
	adc a,b
	rst 38h
	jp l69e9h
	ld a,a
	and c
	adc a,c
	halt
	ld h,(hl)
	ld h,a
	adc a,e
	xor e
	ei
	sbc a,e
	cp (hl)
	ld c,d
	call z,085b4h
	sub l
	dec d
	sub c
	add a,(hl)
	sub d
	rrca
	sub b
l602ch:
	ret m
	ld (hl),0dbh
	daa
	djnz l602ch
	ld l,l
	adc a,b
	ld l,l
	pop af
	ld l,d
	ld sp,04eebh
	and c
	push de
	ld hl,00315h
	sub c
	adc a,(hl)
	ld h,d
	add a,b
	ld e,(hl)
	sub a
	ld c,(hl)
	adc a,d
	ld (hl),l
	ld e,a
	rst 38h
	call pe,0fd4ah
	sub 086h
	halt
	add a,(hl)
	defb 0fdh,090h,057h ;illegal sequence
	rst 8
	ld a,a
	jp l53e2h
	sbc a,b
	sub (hl)
	ld c,h
	add hl,hl
	ld l,(hl)
	ld h,l
	add a,c
	ld l,(hl)
	jr c,$-88
	ld h,l
	and l
	inc h
	ccf
	ld c,h
	or l
	add a,l
	inc sp
	sub c
	add hl,de
	dec bc
	sub d
	ld l,(hl)
	call po,00044h
	pop hl
	ld h,(hl)
	pop af
	ld l,e
	ld (01683h),hl
	sub d
	sub c
	ld (de),a
	rst 30h
	in a,(0f7h)
	ld a,c
	di
	adc a,c
	sbc a,(hl)
	sbc a,e
	sub a
	ret
	rst 18h
	ld sp,hl
	nop
	sub a
	rst 18h
	push de
	cp (hl)
	ld e,c
	ld a,(hl)
	defb 0fdh,03ch,056h ;illegal sequence
	add a,d
	ld l,h
	ld a,e
	jp m,08466h
	xor l
	rst 38h
	call m,0ea36h
	sbc a,l
	xor c
	or c
	ld a,a
	ld h,(hl)
	ld h,(hl)
	ld a,a
	sbc a,c
	ex af,af'
	cp a
	push de
	or b
	and l
	inc bc
	xor b
	dec d
	ld (hl),003h
	inc hl
	sub c
	sbc a,a
	dec b
	ld c,h
	pop bc
	ld bc,0efe2h
	defb 0edh ;next byte illegal after ed
	call pe,00269h
	and l
	ld l,(hl)
	push af
	inc l
	sub c
	or d
	ld a,a
	ld b,08fh
	ld d,c
	nop
	add a,h
	dec hl
	sbc a,b
	ld l,c
	rst 18h
	call m,0fc5ah
	inc a
	sub h
	ld a,a
	ld e,048h
	add a,d
	sbc a,c
	ex af,af'
	rst 18h
	add hl,de
	adc a,e
	ld c,c
	inc b
	ld h,(hl)
	ret nc
	ld e,c
	adc a,c
	nop
	scf
	sub h
	rst 38h
	pop hl
	sbc a,h
	sub (hl)
	cp e
	cp 07fh
	sbc a,d
	or b
	ret z
	ld l,c
	jr nc,l60f5h
	ld c,h
	call nz,00cd4h
l60f5h:
	ld d,b
	ret nz
	rst 10h
	ld c,h
	inc h
	ld b,b
	inc bc
	ld d,l
	adc a,b
	adc a,d
	adc a,c
	ld b,b
	push hl
	res 0,e
	add hl,hl
	ld (hl),a
	inc bc
	ld bc,099e6h
sub_610ah:
	di
	jr c,$+5
	or d
	add hl,bc
	defb 0fdh,09ch ;sbc a,iyh
	or 092h
	dec hl
	inc hl
	ret m
	ld c,d
	add a,b
	ld a,d
	sbc a,b
	cp 0dfh
	and e
	ex af,af'
	cp a
l611fh:
	ld (hl),l
	ei
	jp 0f381h
	call c,0d056h
	jp nc,l72cch
	jp (hl)
	ld d,(hl)
	inc de
	cp (hl)
	add hl,bc
	ld a,l
	inc h
	sbc a,b
	sbc a,c
	ld c,b
	sub (hl)
	ld a,e
	halt
	ld d,(hl)
	sub h
	rst 38h
	sub h
	jp m,0e2c2h
	sub 0a1h
	ret nz
	djnz l6174h
	ld e,e
	add a,d
	ld bc,0000ch
	call po,03e33h
	inc d
	ret nz
	in a,(061h)
	or 0e2h
	dec de
	jp po,09dc9h
	jp m,0ba10h
	adc a,a
	ret m
	add hl,hl
	ret p
	ld d,031h
	ret m
	xor d
	ld sp,029f3h
	inc hl
	sbc a,h
	ld e,a
	rst 18h
	rst 10h
	add a,b
	ret
	inc h
	sub 0b6h
	adc a,h
	ld c,(hl)
	ld b,h
	add a,0dah
	add a,e
	sbc a,d
l6174h:
	ret z
	call nz,089fdh
	ld c,b
	cp 04ah
	ld a,l
	add a,c
	ld c,h
	rst 38h
	ld a,b
	add hl,hl
	sub (hl)
	add a,(hl)
	ld d,(hl)
	ld a,a
	ld d,067h
	ld h,a
	xor e
	sub (hl)
	and a
	ld e,(hl)
	ret z
	jr z,l61bfh
	ld d,a
	rst 10h
	call nz,0fb32h
	ld c,c
	inc bc
	jp pe,0bbceh
	ld e,b
	or l
	pop hl
	ld c,c
	inc bc
	sub l
	push hl
	sbc a,(hl)
	add a,h
	sub (hl)
	jp p,08b91h
	ld c,c
	sub c
	add a,c
	ld (de),a
	ld de,0f2f8h
	sbc a,c
	out (0c5h),a
	ret m
	defb 0fdh,0dfh,0dch ;illegal sequence
	ex de,hl
	ld h,e
	ld c,b
	rst 38h
	adc a,h
	ld sp,hl
	call po,sub_6f83h
	rst 8
	dec l
l61bfh:
	ld (bc),a
	add a,e
	push de
l61c2h:
	add a,(hl)
	sub e
	rst 8
	ld a,b
	rra
	rst 8
	rst 38h
	sub h
	dec sp
	sub (hl)
	add a,b
	ld a,a
	ld h,a
	sub a
	ld h,(hl)
	ld (hl),a
	ld (hl),h
	sbc a,b
	push bc
	ld a,a
	ld (02adch),a
	nop
	jp nc,0e352h
	ld l,e
	call po,sub_634bh
	ld a,a
	ld sp,08f9fh
	cp e
	ret z
	xor d
	xor c
	ld (hl),b
	sub d
	daa
	adc a,h
	ld sp,0021fh
	di
	adc a,h
	jr z,l6226h
	rra
	add a,h
	res 6,h
	ld c,(hl)
	rra
	ld l,a
	or l
	dec de
l61fdh:
	add a,h
	rst 38h
	jp c,0fe8ch
	ld d,a
	rrca
	add hl,sp
	ei
l6206h:
	dec de
	ld b,h
	nop
	push hl
	add hl,sp
	rst 8
	rst 10h
	rra
	adc a,l
	rst 38h
	add hl,sp
	sub l
	adc a,c
	sub (hl)
	call m,0fd9eh
	ld h,c
l6218h:
	cp 07fh
	ld c,l
	or l
	ret nc
	ld e,c
	defb 0edh ;next byte illegal after ed
	adc a,c
	push hl
	ret
	xor 049h
	pop de
	xor b
l6226h:
	ld de,0ff9ch
	ld l,l
	ld b,h
	rst 0
	cp l
	ld e,e
	xor c
	jr z,l61c2h
	dec (hl)
	ld (de),a
	jr l6218h
	ld h,l
	di
	adc a,l
	di
	ld e,e
	sub a
	ld b,b
	add a,c
	ld hl,09419h
	xor 01fh
	ex af,af'
	cp e
	add hl,bc
	rst 38h
	add a,000h
	xor h
	add a,l
	call po,0cc80h
	add a,b
	defb 0ddh,08ch ;adc a,ixh
	sbc a,h
	rst 38h
	call nc,0f880h
	ld a,a
	daa
	sbc a,b
	ld (l4580h+1),hl
	ld h,(hl)
	call m,0c433h
	and a
	ld h,c
	ld hl,0cf30h
	ld c,c
	ex (sp),hl
	ld e,c
	ld h,(hl)
	ld (0e311h),a
	call po,0e5fah
	ret nz
	and 0b5h
	inc hl
	adc a,00bh
	add a,h
	sub d
	ld a,a
	ld (hl),e
	ld l,c
	di
	ld a,c
	di
l627ch:
	ld a,e
	jp p,02013h
	ld a,a
	add hl,hl
l6282h:
	rra
	add a,0e1h
	ld (hl),d
	ret c
	inc a
	ld l,l
	ret m
	ld (0bc8fh),hl
	call nz,0839ah
	adc a,h
	or d
	cp 0d8h
	cp l
	add a,b
	rst 0
	rst 38h
	adc a,d
	jr z,l6315h
	sub a
	cp 033h
	ld h,a
	ld (0141fh),a
	inc de
	ld d,h
	jp po,0e553h
	ld e,(hl)
	push de
	ld c,l
	ld h,c
	inc sp
	defb 0ddh,048h,09fh ;illegal sequence
	sbc a,e
	ld b,h
	ld b,h
	sbc a,d
	xor c
	sbc a,h
	xor b
	ret
	cp l
	add hl,de
	ex (sp),hl
	ld l,l
	di
	ld e,l
	ld (de),a
	di
	rst 0
	add a,h
	pop hl
	ld (de),a
	inc b
	rra
	ex (sp),hl
	call p,0d6a9h
	cp 015h
	ld sp,hl
	sub d
	ld sp,hl
	cp d
	or 079h
	add a,h
	ld a,b
	adc a,c
	adc a,c
	sub b
	ld d,l
	ld c,b
	rst 38h
	call m,07f79h
	add hl,hl
	ld a,l
	ei
	add a,b
	ld (de),a
	ld a,c
	dec bc
	sbc a,h
	rst 38h
	ld c,(hl)
	ld sp,07ef8h
	xor 04ah
	add a,b
	ret
	jp po,0a9e9h
l62f0h:
	adc a,d
	exx
	ld b,e
	sbc a,e
	inc b
	call nc,09abbh
	add hl,sp
	inc iy
	djnz l62f0h
	rla
	ei
	ld (de),a
	add a,(hl)
	adc a,c
	adc a,h
	jp 01922h
	rra
	call sub_5fc4h
	rst 18h
	rrca
l630ch:
	ld e,e
	ld a,a
	ld d,l
	ld h,d
	adc a,c
	ld d,e
l6312h:
	dec b
	jp (hl)
	sbc a,c
l6315h:
	inc d
	rst 38h
	rra
	dec d
	dec hl
	jp c,08059h
	ld b,h
	add a,c
	ld d,c
	rst 38h
	call nz,053cfh
	rst 10h
	ld d,(hl)
	or 056h
	ld e,e
	ld e,(hl)
	call nc,0112ah
	sbc a,a
	jr c,l630ch
	rst 0
	sbc a,h
	ret
	cp h
	call nc,0c976h
	rst 30h
	ld h,(hl)
	call pe,0f76ah
	call 08d85h
	ld (hl),l
	sbc a,a
	push hl
	defb 0fdh,01eh,01fh ;illegal sequence
	ld (hl),e
	rst 38h
	ret po
	ld b,h
	rst 20h
	rrca
sub_634bh:
	dec b
	ld l,c
	sub 033h
	ld a,(hl)
	rst 38h
	ld d,(hl)
l6352h:
	rst 38h
	ld e,(hl)
	jr c,l6352h
	ret
	cp (hl)
	ld b,a
	sub a
	rst 38h
	inc l
	xor c
	ld h,h
	rst 38h
	push hl
	ret c
	ld d,c
	in a,(065h)
	ld a,a
	ld b,0f2h
	or l
	ld l,h
	ld l,e
	ld a,a
	or c
	dec sp
	rst 8
	cp a
	sub h
	rst 8
	ei
	cpl
	di
	dec h
	ld a,c
	adc a,d
	add a,h
	xor b
	call po,0cfa4h
	adc a,b
	rra
	ld l,l
	rst 38h
	pop af
	adc a,c
	call p,0ff9ch
	dec hl
	ld d,(hl)
	sbc a,c
	call m,0089bh
	ld hl,(0843eh)
	ld a,a
	ld a,0a0h
	res 0,c
	inc h
	ld a,(hl)
	sub a
	ret z
	ld l,h
	xor c
	ld d,(hl)
	rst 10h
	sbc a,c
	ld a,d
	ld d,a
	halt
	jp pe,0874eh
	ld b,l
	adc a,d
	sbc a,a
	dec de
	cp e
	rla
	adc a,a
	ld l,h
	call nz,0d0a4h
	and 098h
	ld h,(hl)
	call p,0118ch
	cp 0e2h
	adc a,b
	inc l
	adc a,h
	ld c,a
	rra
	ld a,(hl)
	ld a,a
	ei
	rrca
	xor h
	sbc a,d
	xor l
	sbc a,c
	ld c,c
	ld b,h
	adc a,e
	add a,e
	cp e
	rlca
	ld l,l
	dec e
	or a
	ld (de),a
	cp l
	inc sp
	nop
	ld c,b
	push bc
	ex de,hl
	rst 18h
	jp z,0be2bh
	ld d,e
	ei
	ex de,hl
	add a,b
	ld h,d
	or e
	out (0e9h),a
	di
	pop hl
	sub 0e3h
	ld l,l
	out (047h),a
	ld hl,0e5dfh
	push bc
	xor l
	ld c,c
	inc bc
	ld l,d
	ret nc
	sbc a,09fh
	cpl
	adc a,b
	di
	ld h,e
sub_63f4h:
	sbc a,d
	ccf
	push af
	dec d
	nop
	rra
	add a,d
	ld h,a
	rra
	cp a
	rst 38h
	add hl,sp
	ld h,a
	rrca
	defb 0fdh,065h ;ld iyh,iyl
	adc a,l
	ld (hl),c
	ei
	xor b
	call z,0e9adh
	ld (hl),c
	ld c,h
	ld c,038h
	ld l,l
	cp a
	cp c
	adc a,c
	jp z,0ea46h
	ld h,h
	sub h
	ld d,a
	ld a,a
	call p,0964dh
	add a,d
	ld c,h
	add a,c
	jr c,l64a1h
	and h
	or 04dh
	inc sp
	ret m
	add a,c
	and e
	ld bc,l72f1h
	jp (hl)
	jp nc,0329fh
	jp z,00333h
	daa
	jp z,08919h
	rra
	sub d
	add hl,sp
	jp (hl)
	ret pe
	ld (01fc8h),a
	add a,h
	jp z,04f83h
	rra
	ld a,a
	ld a,a
	ld l,00fh
	daa
	sbc a,(hl)
	inc d
	sbc a,b
	ld sp,hl
	sbc a,(hl)
	rrca
	ld de,0c2ffh
	inc bc
	sbc a,072h
	ld a,h
	ld b,l
	inc bc
	rst 38h
	ex de,hl
	or h
	and l
	ld h,e
	ld c,b
l645eh:
	dec d
	add a,e
	ld d,a
	ld a,c
	add a,c
	ld (l5a22h),a
	jr nc,l645eh
	ld e,b
	ld a,(hl)
	in a,(088h)
	ld sp,0c9feh
	ld h,a
	ld (de),a
	sbc a,a
	add hl,de
	exx
	add hl,de
	inc bc
	ld e,h
	ld h,b
	adc a,0b7h
	nop
	rst 28h
	jp po,09532h
	ld l,l
	or 0bah
	rra
	ld a,e
	ld hl,0f71fh
	ld a,a
	ret m
	call m,00f65h
l648ch:
	adc a,b
	call po,0a585h
	ld a,a
	rrca
	rst 18h
	ld a,a
	inc d
	ld a,l
	ld e,b
	ld hl,0ddd8h
	ld sp,01820h
	ld (0c430h),a
	ld a,a
l64a1h:
	sub h
	ret nz
	add a,b
	ld l,c
	ld h,a
	ld d,(hl)
	ld d,(hl)
	add a,d
	defb 0edh ;next byte illegal after ed
	or a
	ei
	cp c
	push de
	ld (0fc13h),hl
	or (hl)
	jp pe,024b2h
	ld b,(hl)
	inc hl
	sbc a,a
	dec h
l64b9h:
	ld c,h
	rst 18h
	jr z,l648ch
	ld (084c8h),a
	ld c,h
	ld b,d
	call 02496h
	ld bc,08113h
	jp (hl)
	rra
	jr nc,l64ebh
	rst 28h
	rst 38h
	ld c,(hl)
	ld l,044h
	rrca
	ld (hl),01fh
	sbc a,a
	sub a
	rrca
	cp l
	dec e
	sbc a,c
	ret nz
	jr nz,l64b9h
	inc e
	defb 0edh ;next byte illegal after ed
	add a,05fh
	ld d,e
	inc e
	sub a
	sbc a,e
	defb 0fdh,044h ;ld b,iyh
	cp 067h
	ld e,l
	ld a,c
l64ebh:
	add a,c
	or d
	ld h,h
	defb 0fdh,0ech,0feh ;illegal sequence
	ld h,l
	add a,h
	and l
	defb 0fdh,0e4h,00ch ;illegal sequence
	ld sp,09f8ch
	call z,sub_4322h
	sbc a,h
sub_64feh:
	cp a
	ld b,(hl)
	adc a,b
	sbc a,a
	ld l,(hl)
	sub (hl)
	ret c
	add hl,sp
	add a,b
	cp h
	rra
	dec a
	jr nz,l652bh
	pop af
	cp 0a9h
	adc a,(hl)
	ret
	ei
	pop hl
	sbc a,h
	rra
	jp 00f88h
	rst 0
	ld a,a
	adc a,a
	adc a,0ceh
	rst 0
	ld c,b
	ret z
	ret z
	jp 0b1a8h
	call z,0899ah
	rst 38h
	halt
	add a,d
	sbc a,e
l652bh:
	inc bc
	ld d,l
	set 6,h
	adc a,c
	ld d,a
	dec a
	ld de,026dfh
	jp c,086bch
	or e
	inc c
	ld e,h
	cp (hl)
	rla
	add a,e
	sub c
	ld c,b
	xor e
	jp pe,0fc4ch
	jp p,0bca2h
	sbc a,l
	dec hl
	ld bc,0971fh
	ld hl,0bf1fh
	ld a,a
	adc a,a
	or b
	ld l,(hl)
	add a,d
	xor a
	rra
	dec a
	rrca
	ret p
	ld a,a
	ld (bc),a
	adc a,h
	jp 0ba92h
	sbc a,0f2h
	ld b,e
	ld a,e
	ld b,h
	sub c
	dec hl
	ld (hl),a
	add a,c
	ld c,e
	add a,d
	sub d
	ld h,a
	cp b
l656dh:
	ld c,(hl)
	sbc a,d
	inc sp
	nop
	call c,09f25h
	dec sp
	add a,l
	ld h,d
	adc a,e
	ld h,(hl)
	call nz,0da80h
	cp b
	ld e,(hl)
	sbc a,d
	ld l,d
l6580h:
	jp nc,0ffddh
	rra
	adc a,h
	ld (01cfeh),hl
	inc sp
	rra
	cp (hl)
	ld (00e1fh),a
	ld a,a
	or d
	ld l,l
	xor 033h
	ret c
	daa
	ld b,h
	rra
	ld a,l
	rrca
	pop af
	ld a,a
	add a,b
	inc h
	cp h
	and 0c0h
	jr l656dh
	adc a,a
	djnz l6624h
	inc e
	add a,e
	add hl,de
	ld l,c
	jr c,$+1
l65abh:
	add hl,hl
	rst 10h
l65adh:
	jr l65c0h
	call m,0d580h
	jp po,000bah
	rra
	call z,0455eh
	ld c,l
	ld c,b
	ret z
	sub e
	add hl,de
	dec sp
	add a,a
l65c0h:
	inc hl
	inc hl
	rra
	rrca
	ld hl,0871fh
	defb 0fdh,0bch ;cp iyh
l65c9h:
	ld a,c
	rst 38h
	inc sp
	rrca
	rra
	sbc a,a
	rrca
	ld d,002h
	call nc,0bba5h
	call po,07183h
	ld h,(hl)
	adc a,l
	nop
	ld (09bd4h),hl
	adc a,d
	call m,sub_65ffh
	ld h,(hl)
	add a,c
	ld l,a
sub_65e5h:
	ret c
	daa
	out (0e4h),a
	add a,l
	ld l,h
	sbc a,e
	ld e,b
	ld hl,(0bc22h)
sub_65f0h:
	or l
	exx
	rra
	in a,(09dh)
	adc a,c
	rst 18h
	or e
	ld c,h
	ld c,b
	add a,b
	ld de,0bf10h
	add hl,sp
sub_65ffh:
	ld a,(de)
	sub h
	rst 38h
l6602h:
	add a,a
	ex af,af'
	nop
	rra
	pop bc
	ex de,hl
	add hl,de
	adc a,e
	jp c,0ce98h
	ld l,a
	rrca
	ld a,b
	ld e,a
	xor l
l6612h:
	call m,08c9ch
	xor c
	rrca
	or l
l6618h:
	dec hl
	halt
	add hl,sp
	ld a,a
	inc sp
	ld h,d
	ld b,d
	scf
	cp d
	ld hl,(02000h)
l6624h:
	call m,sub_7ab8h
	ld (hl),a
	add a,a
	ld h,l
	inc d
	ld a,b
	defb 0ddh,058h,021h ;illegal sequence
	adc a,d
	sbc a,(hl)
	call m,0e3edh
	ld c,(hl)
	rra
	scf
	add a,h
	dec l
	rst 0
	ccf
	adc a,c
	inc hl
	ld b,l
	ex af,af'
	ld bc,l7398h
	and c
	ret m
	and e
	dec de
	ld (bc),a
	jr nz,l65c9h
	rra
	sbc a,00fh
	or l
	jp p,0f5beh
	ld a,c
	rrca
	ex (sp),hl
	ld e,a
	call po,084b6h
	jp nc,0920fh
	cp b
	cp h
	sub d
	rst 18h
	xor d
	add a,e
	call nc,0c430h
	and e
	nop
	dec d
	ld d,d
	call nz,0b5a4h
	ld a,e
	ld a,a
	add a,h
	jp (hl)
	sbc a,a
	ld (09812h),hl
	ld d,e
	rst 20h
	or d
	inc b
	ld (hl),d
	ld (0f8e3h),hl
	rra
	halt
	out (07ah),a
	sbc a,0e6h
	sbc a,(hl)
	ld b,l
sub_6682h:
	ei
	sbc a,l
	dec d
	rst 38h
	ld d,c
	cp (hl)
	ld d,d
	dec h
	xor b
	sbc a,(hl)
	rra
	jp m,08bceh
	adc a,c
	add a,h
	ex de,hl
	rrca
sub_6694h:
	xor a
	rra
	dec c
	and d
	ld c,d
	ex af,af'
	sbc a,0b6h
	cp a
	xor d
	ld d,(hl)
	cp e
	sub d
	add a,e
	push bc
	inc sp
	add a,h
	dec c
	adc a,c
	dec d
	call po,0c9bbh
	ld a,(hl)
	ld a,a
	ld h,a
	add a,l
	daa
	out (092h),a
	rst 38h
	ld h,(hl)
	sbc a,e
	ld e,d
	sbc a,d
	ld d,l
	add a,d
	ex (sp),hl
l66bah:
	jp pe,l5a89h
	adc a,h
	jp c,01f67h
	ret nz
	and e
	adc a,h
	jp 01656h
	or e
	ld a,a
	ret m
	dec hl
	and c
	adc a,d
	ld b,0a1h
	cpl
	rra
	ld a,c
	nop
	adc a,b
	call p,08679h
	rst 20h
l66d8h:
	rrca
	add a,a
	ld e,a
	ld e,c
	rrca
	adc a,(hl)
	ld sp,hl
	rst 38h
	push hl
	ret c
	dec l
l66e3h:
	ld d,l
	rst 38h
	add hl,hl
	jp 00a84h
	ld sp,0bfd4h
	or h
	and c
	ret nz
	rra
	add a,a
	halt
	ld h,(hl)
	ld l,c
	push af
	add a,h
	jr z,l676fh
	ld bc,09415h
	and e
	ret po
	ld hl,(0fe67h)
	pop hl
	ld (0b335h),hl
	add a,076h
	in a,(062h)
	call nz,0c56ah
	ld l,l
	rst 38h
	cp h
	ld h,015h
	ld a,d
	add a,l
	add a,09dh
	ld c,a
	ld a,(hl)
	djnz l6737h
	ld a,d
	ex (sp),hl
	ret
	add a,d
	ld b,e
	ld b,h
	ld c,c
	rrca
	cp (hl)
	ld e,a
	sbc a,h
	adc a,b
	rrca
	ld h,d
	adc a,c
	ld c,d
	ld d,e
	ld hl,l5a3bh
	defb 0edh ;next byte illegal after ed
	add a,e
	ld l,(hl)
	inc de
	push bc
	daa
	jr nc,l66d8h
	inc (hl)
	rra
	sub (hl)
l6737h:
	ld h,l
	ld h,c
	ld h,(hl)
	add a,d
	ld a,a
	ld e,c
	add a,l
	sbc a,e
l673fh:
	ld b,d
	ld (08adfh),hl
	ld h,d
	defb 0fdh,032h,05bh ;illegal sequence
	xor l
	rst 38h
	ex (sp),hl
	rra
	ret po
	ret m
	xor (hl)
	inc b
	ex (sp),hl
	adc a,c
	adc a,001h
	ret nz
	add hl,hl
	ld b,d
	sub h
	sbc a,h
	sub d
	and h
	ld d,a
	ccf
	daa
	rra
	cp l
	add a,e
	sub (hl)
	adc a,h
	sub a
	jp pe,00f9eh
l6766h:
	inc e
	ld e,a
	cp c
	sub h
	rrca
	ld b,(hl)
	add a,h
	cp a
	ld b,l
l676fh:
	rst 38h
	add a,e
	ld a,h
	ld b,l
	cp (hl)
	jp 00272h
	res 5,e
	rra
	sbc a,d
	ld e,b
	jr $-105
	ld h,(hl)
	ld h,a
	rst 38h
	adc a,e
	ld (hl),a
	add a,d
	and a
	sub 023h
	ld a,(de)
	inc bc
	ld (l6206h),hl
	and d
	and c
	and b
	ld hl,0ce1fh
	call po,0bae4h
	sbc a,d
	res 2,e
	exx
	ld b,h
	or d
	ld (de),a
	jp c,0a47fh
	ld c,c
	adc a,c
	ld c,l
	add a,e
	ld c,a
	rra
	ld a,(hl)
	adc a,a
	ld b,l
	ld c,c
	ld a,(hl)
	inc c
	ld a,b
	rrca
	ld (hl),d
	ld e,a
	sbc a,h
	defb 0ddh,00fh,0a8h ;illegal sequence
	call 0cabfh
	di
	ld c,h
	nop
	and e
	rst 18h
	ld h,d
	inc sp
	ret z
	ld sp,027a1h
	sbc a,(hl)
l67c2h:
	ld a,d
	rst 38h
	halt
	ld h,a
l67c6h:
	rst 38h
	ld e,096h
sub_67c9h:
	halt
	rst 18h
	push bc
	ld a,b
	add ix,de
	and b
	ret m
	ld de,0dff4h
	ld c,d
	sbc a,c
	call nz,0de4ah
	jp pe,09864h
	ld b,a
	ld c,d
	sub b
	sbc a,a
	ld a,(hl)
	sbc a,(hl)
	xor h
	ld bc,08ca4h
	add a,a
	ld b,l
	ld (bc),a
	add a,d
	rra
	defb 0edh ;next byte illegal after ed
	jp pe,l627ch
	adc a,e
	ld a,b
	rrca
	di
	ld e,a
	ld a,a
	ld c,l
	dec b
	ld c,c
	rrca
	sbc a,h
	cp b
	adc a,h
	jp c,0168fh
	djnz l6804h
	jp (hl)
	ld c,d
	ld c,h
l6804h:
	rst 38h
	ld l,c
	sub h
	call sub_5499h
	ld d,l
	rst 38h
	jp nc,009ffh
	sbc a,c
	ld h,(hl)
	ld l,b
	ld (hl),l
	ld (l7e18h),hl
	defb 0ddh,053h,060h ;illegal sequence
	jp po,00db2h
	adc a,c
	bit 5,e
	sbc a,05ah
	cp e
	ld e,(hl)
	rst 18h
	ret z
	call c,0fbbfh
	cpl
	or l
	ld (0821bh),a
	add hl,hl
	and d
	ret
	and a
	ld e,099h
	rra
	call nc,099ffh
	add a,a
	cp (hl)
	rrca
	inc a
	ld e,a
	ex (sp),hl
	rrca
	ld b,h
	rrca
	adc a,d
	rst 18h
	xor b
	nop
	cp e
	cp l
	add a,e
	inc h
	cp h
	xor b
	ld c,c
	add a,e
	ld c,l
	jr nz,$-80
	sbc a,b
	call z,0690ah
	ld h,(hl)
	ld h,(hl)
	call m,0a8b3h
	ld (hl),d
	ld (hl),d
	ei
	or c
	ld de,l79fdh
	defb 0ddh,099h,0a4h ;illegal sequence
	exx
	rra
	dec sp
	adc a,b
	cp b
	ld d,e
	ld c,h
	ld h,l
	ret z
	ld h,(hl)
	add hl,hl
	ld h,a
	inc a
	ld (0fbf7h),hl
	rst 38h
	adc a,c
	sbc a,l
	ld (hl),083h
	ld hl,09913h
	rra
	defb 0edh ;next byte illegal after ed
	add a,l
	ret
	add a,d
	jr c,$-118
l6881h:
	jp p,0e20fh
	ld e,a
	add a,e
	sub l
	ld b,h
	adc a,h
	adc a,e
	cp c
	or a
	di
	sub c
	cp b
	ld d,d
	jr $+5
	inc de
	ld iy,(00b80h)
	nop
	ld b,h
	xor h
	pop hl
	sub (hl)
	ld bc,l6624h+2
	nop
	ld (hl),a
	cpl
	ld c,d
	ret m
l68a4h:
	sub l
	jr nz,$+3
	jr l68a4h
	call pe,097deh
	ld h,c
	rra
	scf
	call nz,0e556h
	ld b,(hl)
	ret nz
	ld c,c
	cp 0f7h
	dec iy
	ld (de),a
	sbc a,h
	ld l,0bdh
	or c
	ld b,c
	and b
	inc a
	rra
	ex de,hl
	add a,(hl)
	scf
	cpl
	add a,d
	ld c,a
	rrca
	ld e,a
	adc a,a
	rst 20h
	rrca
	adc a,c
	jp p,0beb1h
	ld h,e
	rst 38h
	inc c
	ld bc,0c431h
	ld c,d
	ld h,l
	cp c
	sub 023h
	and h
	ld a,a
	jp m,00093h
	sub a
	xor l
	sub l
	ld (de),a
	inc de
	jp c,0fc59h
	cp e
	sbc a,h
	or l
	jp pe,01fd8h
	adc a,b
	sbc a,h
	cp (hl)
	sub l
	ccf
	ld c,h
	push hl
	push bc
	inc d
	rst 30h
	defb 0fdh,018h,023h ;illegal sequence
	nop
	push bc
	sub c
	ld l,(iy-053h)
	inc a
	add hl,de
	rra
	push de
	sbc a,c
	dec bc
	ld c,(hl)
	defb 0fdh,098h,084h ;illegal sequence
	pop af
	rrca
	jp po,09e5fh
	xor e
	add a,l
	jp c,l5a8dh
	ld d,d
	defb 0ddh,0c8h,081h ;illegal sequence
	xor e
	rst 38h
	add hl,hl
	ei
	jr z,$+101
	ex de,hl
	sbc a,b
	add a,h
	and b
	or (hl)
	cp 04ch
	add a,b
	ld h,a
	ld e,c
	halt
	add a,c
	xor b
	add hl,de
	ret c
	ld a,(0e422h)
	exx
	cp l
	ei
	push bc
	adc a,e
	rst 20h
	rra
	ccf
	inc h
	ld e,b
	ld c,b
	cp 057h
	add hl,sp
	rst 30h
	call p,0b332h
	ld (bc),a
	and e
	dec hl
	ld e,0a8h
	rst 0
	inc c
	rra
	adc a,(hl)
	ccf
	ld hl,(0fb84h)
	push bc
	add a,c
	pop af
	rrca
	jp p,l673fh
	adc a,b
	rrca
	cp (hl)
	jp nc,0b1d5h
	rst 38h
	sub (hl)
	add a,b
	sub l
	ex (sp),hl
	xor b
	adc a,b
	sbc a,d
	ret po
	adc a,c
	ld h,l
	sbc a,h
	rst 38h
	out (0fdh),a
	ret nz
	pop de
	ld (de),a
	call m,0e19bh
	jr l6976h
	push de
l6976h:
	xor b
	sub h
	xor c
	and l
	rra
l697bh:
	ret
	ld a,b
	ld b,h
	sub e
	adc a,c
	or a
	rst 20h
	djnz l697bh
	push af
l6985h:
	sbc a,h
	dec h
	ld c,b
	pop bc
	ld (hl),0cah
	push hl
	xor b
	rrca
	add hl,hl
	rra
	inc e
	ccf
	and a
	cpl
	defb 0edh ;next byte illegal after ed
	cpl
	ld a,c
	rrca
	ld l,05fh
	dec (hl)
	rrca
	adc a,b
	rrca
	xor h
	ld (033f5h),hl
	ld h,d
	and b
	ld a,c
	sbc a,0a5h
	ld l,l
	sbc a,a
	adc a,e
	ld sp,hl
	and e
	add a,b
	ld d,d
	sub h
	and d
	ld c,d
	jp p,09556h
	ld d,a
	ld a,c
	ei
	xor h
	ld (de),a
	ld e,a
	rr a
	nop
	jp z,0ccb3h
	ld c,c
	dec de
	add a,b
	call p,0f719h
	defb 0fdh,0ach ;xor iyh
	ld de,0f4fah
	add a,c
	inc l
	ld (bc),a
	ld sp,03b8fh
	add hl,de
	sub h
	rra
	sub h
	jp pe,062c7h
	ld c,b
	add a,b
	cpl
	rrca
l69dch:
	adc a,a
	ld e,a
	ld h,088h
	adc a,h
	dec b
	pop hl
	ld e,a
	ld de,08032h
	ld c,c
	ld a,a
l69e9h:
	push hl
	inc hl
	add hl,sp
	call z,0649eh
	adc a,b
	jr c,l69f9h
	halt
	call m,023c7h
	ld (0a4dch),a
l69f9h:
	ret m
	exx
	jp c,02795h
	jp (hl)
	ld h,l
	sbc a,a
	defb 0edh ;next byte illegal after ed
	jp z,0c61bh
	ld a,(de)
	add a,c
	sbc a,b
	ex (sp),hl
	xor e
	add hl,bc
	or d
	ld c,a
	rst 30h
	rst 28h
	cp (hl)
	sub 047h
	ld sp,03123h
	rst 8
	dec bc
	sbc a,c
	call z,01f72h
	adc a,b
	push hl
	call z,0dc69h
	rst 38h
	or e
	add a,c
	rrca
	push bc
	add a,h
	rst 38h
	adc a,l
	add a,097h
	ld h,l
	ld e,a
	ld b,c
	add a,c
	ld c,c
	rst 38h
	ld a,c
	ld (hl),b
	dec d
	ld (bc),a
	jr nz,$-22
	ld (hl),d
	cp a
	ld b,a
	sbc a,a
	nop
	sub b
	inc sp
	dec sp
	jr nc,l6a47h
	ld d,(hl)
	ld (hl),a
	xor l
	ld de,00184h
	ex (sp),hl
l6a47h:
	add hl,hl
	jr nc,l6a9dh
	and l
	call nz,08832h
	adc a,c
	inc bc
	add hl,hl
	djnz l6a92h
	add a,h
	ld c,h
	add a,h
	xor b
	ld l,c
	add hl,de
	sbc a,c
	dec (hl)
	ld e,(hl)
	ld (de),a
	di
	sub c
	add a,d
	adc a,e
	ld (de),a
	ld b,044h
	ld de,0a113h
	add a,h
	ld sp,08811h
	ld d,l
	ret p
	and h
	sbc a,c
	sbc a,h
	jp z,08565h
	call po,0d8eeh
	ei
	sbc a,(hl)
	rst 38h
l6a79h:
	xor h
	adc a,h
	ld l,(hl)
	ex (sp),hl
	rrca
	ld e,a
	ld h,l
	ei
	ld sp,0880fh
	ld e,a
	cp c
	call nc,0819ah
l6a89h:
	push bc
	ld a,(hl)
	ret
	ld (hl),l
	call po,05094h
	sbc a,a
	ret p
l6a92h:
	ld c,b
	inc bc
	inc bc
	inc sp
	cp e
	cp e
	jr nc,$+121
	ld a,(bc)
	inc d
	add a,h
l6a9dh:
	rst 18h
	add a,d
	nop
	ret nz
	djnz l6a79h
	dec l
	pop hl
	ld c,d
	sbc a,l
	and h
	ld l,c
	ld bc,0edffh
	or 01ah
	sub b
	ld d,(hl)
	sub l
	ld d,d
l6ab2h:
	ei
	dec a
	ld (bc),a
	jp p,l7f21h+1
	inc de
	ld sp,l6ea0h
	add a,c
	jp c,0c9a0h
	and c
	xor c
	ld a,(bc)
	sub l
	ret
	dec e
	jr nz,l6aebh
	dec l
	add hl,bc
	ccf
	pop hl
	and h
	adc a,c
	or (hl)
	ld bc,0067fh
	cp b
	inc bc
	rrca
	sbc a,(hl)
	rst 38h
	dec sp
	rst 38h
	ld l,l
	nop
	ld e,a
	xor h
	call c,0ffceh
	jr nc,$-119
	ld b,(hl)
	jr nc,l6ab2h
	ld c,023h
	djnz $-118
	and b
	ld e,c
l6aebh:
	ld a,a
	dec sp
	ld a,a
	ld h,0b3h
	cp 0fch
	xor c
	sub e
	ld (hl),a
	jr nc,l6afbh
	ld bc,03285h
	push hl
l6afbh:
	sub b
	add a,b
	inc bc
	adc a,h
	sbc a,a
	sbc a,d
	rra
	ret
	adc a,h
	sub d
	or h
	ld l,c
	xor h
	sbc a,d
	ld c,c
	or 026h
	or 025h
	sbc a,c
	dec d
	ld (hl),0bbh
	ld h,(hl)
	adc a,c
	ld e,0a9h
	xor c
	ld (bc),a
	adc a,a
	ret
	adc a,(hl)
	dec a
	sla l
	ld l,001h
	ccf
	xor e
	inc de
	adc a,b
	ld a,b
	cpl
	jp p,08884h
	jp m,00feeh
	out (0fah),a
	inc d
	ld (de),a
	sub (hl)
	and 05fh
	jp c,l66bah
	ld d,l
	rst 38h
	jp po,0c220h
	jp z,092c0h
	ld hl,034dfh
	add hl,de
	rra
	nop
	inc sp
	adc a,(hl)
	ld a,(hl)
	or b
	add hl,bc
	and h
	call 08ca4h
	add hl,de
	sbc a,h
	inc b
	call nz,08ac1h
	cp l
	xor (hl)
l6b55h:
	ld b,b
	ld c,c
	sub c
	sub h
	ld c,b
	cp c
	or d
	ret
	xor a
	and h
	defb 0edh ;next byte illegal after ed
	and 0efh
	and a
	sub e
	xor l
	ld l,h
	ld a,a
	ld l,d
	or a
	add hl,hl
	ld (de),a
	and (hl)
	ld e,c
	ld (09aa6h),a
	xor d
	sbc a,b
	ld a,l
	ld bc,0d5f5h
	or l
	add hl,sp
	call po,sub_481bh
	ld l,b
	and 014h
	add a,e
	or b
	ld c,h
	ex (sp),hl
	rrca
	ld d,h
	dec h
	sub l
	inc hl
	add a,b
	dec (hl)
	add hl,bc
	ld b,h
	ret c
	ld l,c
	cp h
	adc a,c
	rst 38h
	dec hl
	call m,0e237h
	call nc,sub_48e9h
	ld l,a
	sbc a,b
	inc hl
	sbc a,b
	ld hl,03351h
	nop
	call p,0ea4ah
	ld c,d
	xor c
	halt
	cp d
	ld d,(hl)
	cp c
	sbc a,0bdh
	ld (hl),c
	ccf
	ld a,(bc)
	ld (0f640h),hl
	call nc,0cb8dh
	ld h,b
	rst 28h
	ret
	cp 0d9h
	rst 30h
	ld c,(hl)
	cp 04ah
	ld b,0a4h
	or e
	and h
	sub d
	adc a,d
	ld (0319ah),a
	jr nz,l6b55h
	jr c,l6bd2h
	xor l
	ld sp,l6ff5h
	call po,0880eh
	ld c,c
	ccf
l6bd2h:
	sbc a,a
	call nz,0024fh
	inc bc
	ld a,l
	jp nc,0ffffh
	or d
	ld a,(hl)
	xor l
	dec sp
	adc a,c
	ld e,c
	sub c
	adc a,e
	sbc a,e
	adc a,h
	sub d
	add a,b
	ld c,d
	in a,(05eh)
	or l
	add hl,hl
	ld c,h
	or l
	scf
	xor a
	sbc a,b
	or e
	xor a
	call nz,08452h
	rrca
	sub b
	call p,01f28h
	ld de,0dc20h
	sub c
l6bffh:
	ld (hl),d
	jr nz,$-110
	xor l
	inc hl
	sub l
	ld hl,(09b6fh)
	sub d
	inc hl
	cp l
	sbc a,c
	ret nz
	cp e
	xor e
	sub h
	sub l
	ld d,l
	dec e
	sub e
	or a
	call 0e9b2h
	sub a
	add a,d
	sub l
	ld sp,hl
	ld (hl),e
	ccf
	rst 38h
	add hl,sp
	ld c,a
	defb 0edh ;next byte illegal after ed
	or 049h
	cp a
	ret
	rst 38h
	jr l6c49h
	defb 0fdh,0e0h,0a2h ;illegal sequence
	ld (hl),e
	ld a,a
	add hl,de
	sub c
	inc bc
	ld e,(hl)
	nop
	ld (de),a
	adc a,e
	sub d
	ret nz
	ld (hl),d
	xor a
	ld l,a
	xor a
	add a,h
	or l
	ld d,e
l6c3eh:
	adc a,c
	sub c
	or (hl)
	adc a,h
	sub d
	ld h,c
	cp h
	sub c
	and d
	rst 20h
	add a,a
l6c49h:
	ld (hl),024h
	sub d
	or 0feh
	inc sp
	sbc a,h
	ld (de),a
	cp 02ch
	adc a,b
	ld c,d
	and a
	cp e
	xor e
	ld l,c
	add a,l
	add hl,hl
	sla h
	call z,0192fh
	add hl,hl
	jr c,l6ca2h
	dec hl
	jp c,04f67h
	jp c,0f6b7h
	rst 38h
	ld (hl),0b8h
	ld d,d
	res 2,d
	add a,l
	jp p,0b1c9h
	add a,d
	jp (hl)
	adc a,c
	adc a,0b2h
	djnz l6c3eh
	ld (hl),d
	inc de
	adc a,(hl)
	xor e
	inc e
	ld c,c
	rst 8
	or a
l6c83h:
	call nc,0b093h
	sub e
	and a
	adc a,e
	ld (bc),a
	rst 20h
	ld c,c
	xor l
	cpl
	inc b
	push af
	ld e,d
	ld a,a
	ei
	pop af
	djnz $+1
	adc a,e
	ld l,091h
	add a,(hl)
	ld b,l
	add a,c
	xor e
	call m,0c972h
	ld d,(hl)
	add a,a
l6ca2h:
	ld d,a
	inc h
	jp nc,03f9ch
	inc a
	adc a,c
	ccf
	ld a,l
	ld c,a
	push hl
	xor b
	dec sp
	ret m
	ld a,(0cf7fh)
	inc bc
	adc a,0ceh
	call 0d3cdh
	call z,0b47dh
	sbc a,05bh
	ld (bc),a
	and l
	dec bc
	ld c,b
	or h
	ld h,(hl)
	add a,h
	xor c
	ld a,010h
	pop af
	add hl,hl
	adc a,b
	jp m,0f510h
	or 065h
	ld de,0887dh
	call pe,0eeb9h
	jr c,l6d3ah
	add a,e
	ld l,a
	jp 0d217h
	xor a
	ld bc,0cacdh
	sbc a,(hl)
	ld e,l
	ccf
	xor d
	ld l,c
	inc bc
	push de
	in a,(03fh)
	sbc a,c
	ld c,a
	ld c,a
	ld a,c
	call p,08249h
	and e
	rst 38h
	ld h,a
	di
	dec de
l6cf6h:
	nop
	ld c,c
	jp z,0d829h
	ld l,c
	call p,sub_49b9h
l6cffh:
	dec hl
	ld (012deh),hl
	adc a,c
	xor e
	sbc a,l
	cpl
	inc sp
	adc a,b
	bit 3,d
	ld bc,0b6ech
	ld e,d
	adc a,a
	ret p
	djnz l6cf6h
	ld a,e
	rst 30h
	ret m
	sub c
	inc sp
	ld bc,0b190h
	call 02127h
	add a,072h
	dec de
	sub a
	ld d,a
	ld b,a
	ld a,d
	ccf
	and h
	jp (hl)
	sbc a,h
	jp m,08bd5h
	or 04fh
	adc a,h
sub_6d2fh:
	xor l
	call c,0e4c3h
	rst 38h
	sub h
	add a,066h
	inc bc
	ex (sp),hl
	ld h,e
l6d3ah:
	ld (hl),022h
	ld a,e
	ld (hl),d
	ccf
	sub d
	defb 0edh ;next byte illegal after ed
	exx
	res 5,b
	inc hl
	xor a
	sbc a,c
	xor d
	inc e
	adc a,b
	cpl
	call po,0f672h
	call po,sub_64feh
	ld sp,hl
	ld h,(hl)
	inc c
	ld a,a
	rst 30h
l6d56h:
	ld c,e
	djnz l6d56h
	or d
	ld b,(hl)
	cp c
	ld c,d
	dec (hl)
	sub (hl)
	sub e
	ld c,e
	ld (0a344h),a
	inc sp
	ld b,a
	dec sp
	ccf
	ld c,d
	call z,0e7f9h
	ccf
	ld c,a
	pop bc
	push af
	inc l
	ld h,d
	ld a,a
	inc hl
	ld d,h
	xor h
	jp z,0cfbch
	sbc a,h
	add a,b
	rst 8
	scf
	ex de,hl
	ld d,l
	ld (de),a
	defb 0ddh,0a4h ;and ixh
	and l
	and (hl)
	ld hl,(09437h)
	or h
	adc a,h
	bit 3,d
	and h
	ret c
	cp 0c9h
	sbc a,a
	ld c,e
	jp po,084dch
	cp a
l6d95h:
	rst 30h
	xor h
	add hl,hl
	adc a,l
	add a,h
	ld e,c
l6d9bh:
	ld hl,084cbh
	dec sp
	ld a,(hl)
	sub d
	adc a,c
	sbc a,h
	ld b,a
	ld l,h
	ccf
	rst 38h
	and h
	ccf
	ret z
	ld (hl),c
	add a,h
	ccf
	ld c,a
	rst 28h
	rst 30h
	call sub_6ed7h
	ld c,e
	call z,05d33h
	ld e,c
	adc a,d
	push bc
	add hl,sp
	cp h
	dec hl
	ld c,c
	ld h,012h
	cp h
	or e
	xor a
	or h
	ld (l52beh),a
	ret nz
	scf
	sub 065h
	ld (bc),a
	ret po
	ld h,(hl)
	ld e,d
	ld h,l
	inc b
	jp p,0fa27h
	and a
	rst 30h
	call p,0dc12h
	and a
	call m,099c7h
	ld a,(00501h)
	ld b,e
	add a,088h
	ld h,047h
	pop af
	ccf
	ld sp,hl
	cp e
	sub h
	out (089h),a
	ccf
	ld a,l
	ld c,a
	call m,0257fh
	out (02ah),a
	ret c
	exx
	ld (hl),e
	jp 000e1h
	dec bc
	ld h,d
	call z,sub_5ad8h
	inc a
	add a,h
	ld (hl),c
	ld c,b
l6e03h:
	cpl
	or h
	xor e
	adc a,a
	ld (hl),l
	sub h
	dec de
	jp p,0dfb6h
	ld d,(hl)
	sbc a,065h
	ld h,a
	and c
	ld e,a
	rst 30h
	defb 0ddh,0f0h,066h ;illegal sequence
	and c
	call po,04db4h
	jr nz,l6e96h
	jp z,0bb43h
	add hl,hl
	sub h
	inc sp
	ld b,a
	ccf
	cp e
	ld sp,hl
	xor (hl)
	cp c
	rst 18h
	ccf
	ld c,a
	ld a,(hl)
	ld a,a
	call po,0dcf7h
	ex (sp),hl
	jp z,0f330h
	add a,021h
	defb 0edh ;next byte illegal after ed
	xor 0dah
	dec l
	sub e
	ld h,c
	djnz l6e03h
	or b
	adc a,c
	ld (bc),a
	sbc a,c
	dec l
	xor (hl)
	jr l6e90h
	or c
	cp e
	ld (0b9f2h),hl
	and 019h
	rst 28h
	ld l,e
	ld a,(hl)
	adc a,a
	djnz $-7
	defb 0edh ;next byte illegal after ed
	inc sp
	sub c
	ld c,c
	xor l
	ld c,c
	adc a,e
	xor e
	jr nz,l6ecbh
	ld b,e
	jp z,0a7d1h
	sub l
	pop de
	sbc a,l
	ccf
	ld sp,hl
	add a,l
	di
	cp e
	ccf
	ld a,e
	ld c,a
	rst 30h
	ld a,a
	cp b
	adc a,c
	ld e,b
	sbc a,b
	ld (bc),a
	ld bc,005d9h
	defb 0ddh,05ch ;ld e,ixh
	dec bc
	call 0a706h
	ld e,a
	rst 8
	ld c,h
	dec l
	call po,sub_55afh
	ld c,b
	ld (bc),a
	call nc,08e7dh
	ret po
	ld a,e
	ld l,h
	ld (0e810h),hl
	xor h
l6e90h:
	cp d
	cp 0f7h
	sub e
	inc hl
	cp d
l6e96h:
	jp nz,09a21h
	sub a
	ret
	ld d,e
	ld b,e
	ld sp,03186h
l6ea0h:
	nop
	ld (bc),a
	ccf
	push de
	ld a,c
	add iy,sp
	ld (hl),l
	ld h,a
	ccf
	ld c,a
	cp a
	nop
	rst 38h
	call m,sub_5000h
	nop
	nop
	nop
	ld c,b
	adc a,c
	sub h
	add hl,de
	ld de,02711h
	halt
	ld bc,01372h
	inc e
	ld h,066h
	ld hl,00011h
	nop
	rla
	ld de,03273h
	ld (hl),a
l6ecbh:
	ld (08027h),hl
	rlca
	ld (hl),c
	inc e
	rla
	pop bc
	ld (hl),d
	ld (01fc0h),a
sub_6ed7h:
	ld b,h
	ld b,h
	adc a,c
	sbc a,c
	nop
	adc a,b
	adc a,b
	adc a,c
	adc a,b
	sbc a,c
	ld c,h
	ld b,h
	ld c,b
	ld sp,00099h
	nop
	rst 38h
	inc b
	cp d
	nop
	sbc a,c
	cp 000h
	dec b
	sbc a,b
	ld d,l
	nop
	ld c,h
	ld (de),a
	ld de,0751ch
	ld l,h
	ld de,02100h
	inc de
	ld h,062h
	ld hl,01212h
	ld (0c22ah),hl
	inc hl
	ld a,a
	ld (bc),a
	ld a,a
	inc bc
	ld (hl),a
	inc a
	ld a,h
	ld a,h
	rst 0
	ld hl,l611fh
	ld (hl),a
	adc a,c
	sbc a,b
	adc a,b
	ld a,(hl)
	ex af,af'
	sub h
	call z,085c4h
	cp b
	ld a,a
	rlca
	rst 38h
	di
	nop
	rrca
	rst 38h
	ld a,a
	ret p
	and c
	sbc a,c
	sbc a,h
	call z,0f61ch
	djnz $-50
	ld (hl),l
	ld d,a
	nop
	rst 0
	ld (de),a
	jp l6612h
	inc sp
	ld (00023h),hl
	ld (033cbh),hl
	ld (02317h),a
	inc sp
	ld (hl),a
	ld bc,02717h
	inc l
	ld sp,011c7h
	sbc a,c
	ld (hl),l
	xor b
l6f4ch:
	call nz,0ccf7h
	nop
	ld d,(hl)
	ld c,h
	rlca
	ex af,af'
	ld a,a
	add a,c
	di
	inc sp
	inc sp
	rst 38h
	inc sp
	ret p
	ld a,a
	call m,0892ah
	ld d,l
	ld b,h
	inc e
	cp 0c7h
	nop
	halt
	ld d,(hl)
	rst 0
	inc de
	ld h,e
	ld sp,01126h
	add a,b
	ld a,b
	daa
	ld a,h
	call z,01721h
l6f75h:
	dec hl
	add a,b
	ld b,077h
	ld de,02177h
	rst 0
	ret
	jp c,l751fh
	halt
	sub h
sub_6f83h:
	add a,b
	sub e
	ld a,a
	call z,sub_4107h
	ld (hl),l
	add hl,de
	rrca
	ld a,a
	add a,c
	add hl,de
	ld a,a
	call m,04432h
	rst 38h
	jr nz,l6fb2h
	pop bc
	rst 0
l6f98h:
	ld h,(hl)
	ld (bc),a
	ld d,(hl)
	call z,03672h
	scf
	halt
	cp 046h
	dec sp
	ld a,a
	jr z,$-55
	add a,c
	ld c,l
	ld (09683h),hl
	ld b,h
	ld d,061h
	ld c,l
l6fafh:
	add hl,de
	ld a,a
	ld b,h
l6fb2h:
	ld a,a
	inc d
	adc a,b
	add a,h
	ld b,h
	adc a,b
	inc h
	add a,h
	ex af,af'
	adc a,b
	cp 0a8h
	inc sp
	xor 0eeh
	add a,h
	ld a,a
l6fc3h:
	ccf
	rst 38h
	ret p
	rst 38h
	rst 38h
	add hl,bc
	rst 38h
	jr l6f98h
	nop
	add hl,de
	sbc a,h
	halt
	ld d,l
	ld a,h
	ld (hl),l
sub_6fd3h:
	ld (05052h),hl
	ld h,0f3h
	inc hl
	ld c,h
	daa
	adc a,h
	ld de,08588h
	dec sp
	ld (l712bh),a
	add hl,de
	adc a,e
	inc c
	ld l,h
	ret
	rra
	jp nc,0947fh
	ld c,h
	ld a,d
	inc b
	sbc a,b
	call nz,08184h
	add a,c
	ret m
l6ff5h:
	ret po
	di
	ld a,0eeh
	ld b,(hl)
l6ffah:
	ex de,hl
	add a,c
	rst 38h
	ld a,a
	dec bc
l6fffh:
	rst 38h
	ld d,000h
	nop
	sbc a,h
	ld (hl),a
	ld d,l
	ld l,h
	ld (hl),l
	ld d,d
	dec (hl)
	adc a,d
	ld a,a
	pop bc
	jp 0d0f9h
	ld (hl),a
	inc sp
l7012h:
	or e
	scf
	add hl,bc
	add hl,de
	ld (hl),a
	ld a,h
	jp nz,09497h
	add hl,de
	ld a,a
	rst 38h
	pop de
	or 081h
	sbc a,h
	call nz,sub_4448h
	adc a,d
	jr nz,l7070h
	add hl,de
	inc sp
	sub l
	call m,sub_7c8fh
	cp e
	cp (hl)
	ld a,a
	pop hl
	jp l4499h
	call nz,sub_7f41h
	inc hl
	rst 38h
	ld de,0fe77h
	ld (bc),a
	ld h,(hl)
	ld l,h
	inc e
	add a,02ch
	cp 045h
	ld (l48fbh),hl
	ld (hl),a
	cp 080h
	ld (023cch),hl
	add hl,de
	rst 0
	pop bc
	ret
	rra
	cp 0dah
	ld a,a
	dec b
	ld b,h
	ld c,c
	xor e
	inc de
	inc hl
	ld hl,0fd00h
	ld d,b
	cp e
	nop
	cp (hl)
	ld a,0e3h
	cp 07fh
	djnz $-117
	add a,h
	and b
	out (076h),a
	ld a,h
	adc a,h
	rst 38h
l7070h:
	or b
	ex de,hl
	ld (hl),l
	ld d,l
	or c
l7075h:
	ld a,a
	ld a,h
	inc e
	ld (bc),a
	inc d
	ld (hl),c
	ld de,005fdh
	ld (hl),d
l707fh:
	or a
	ld (08033h),hl
	ld h,l
	rra
	defb 0fdh,03bh,0fah ;illegal sequence
	ld (de),a
	call z,05084h
	sbc a,c
	add a,c
	inc h
	or d
	ld de,l6cffh
	ld a,07eh
	nop
	ex de,hl
	cp 07fh
	ld d,0d9h
	ld h,c
	adc a,b
	ld b,c
	ld h,l
	ld a,a
	ld hl,003c7h
	call z,l7677h
	add a,b
	jr nz,l7075h
	ld (hl),c
	jp nz,02149h
	adc a,(hl)
	adc a,e
	ld (de),a
	ld (hl),c
	add a,d
	add a,d
	cp e
	inc sp
	add a,e
	xor d
	add hl,bc
	ld sp,hl
	ret z
	add a,b
	xor a
	ei
	add hl,hl
	add a,e
	ld h,(hl)
	add a,b
	ld e,01bh
	ld hl,l7f21h
	inc bc
	cp e
	ex (sp),hl
	ccf
	ld a,a
	ret m
	inc a
	ld e,h
	ld b,l
	adc a,h
	ei
	add a,h
	add a,b
	ld h,(hl)
	ld a,h
	sbc a,c
	sub c
	add a,b
	ld h,l
	ld a,a
	ld c,h
	nop
	inc sp
	ld a,a
	inc l
	jp l7f21h
	adc a,e
	inc bc
	ld a,c
	ld de,l797ch
	ei
	ld sp,08499h
	adc a,h
	ld b,(hl)
	add a,c
	ld b,(hl)
	cp 012h
	ld (de),a
	rrca
	rst 38h
	ccf
	cp e
	ld a,a
	adc a,e
	sub h
	in a,(046h)
	sub a
	ld a,a
	sub a
	ld (hl),a
	ld a,a
	add a,b
	ld (hl),a
	ld h,d
	ld h,0cch
	pop bc
	inc e
	jp 02208h
	ld (hl),a
	ld l,h
	jp 0cbffh
	add a,c
	ld a,(bc)
	sbc a,c
	rla
	add a,l
	inc de
	ld c,b
	add a,b
	or (hl)
	jp m,l7e69h
	ld b,h
	adc a,e
	xor b
	sub c
	ld (0fdf3h),hl
	ld b,a
	ld a,a
	ld c,d
	xor 080h
	cp a
	ld a,a
	add a,d
l712bh:
	ld h,b
	add a,h
	exx
	push bc
	sbc a,h
	ei
	ex af,af'
	ld a,h
	ld h,l
	ld (hl),a
	ret
	rst 30h
	sub c
	halt
	add a,l
	ld e,c
	call m,07582h
	add a,d
	ld b,(hl)
	sub c
	ld de,l5282h
	ld (iy-07ah),c
	ld a,a
	ld d,a
	rra
	add a,b
	sub e
	and h
	ld h,l
	inc bc
	xor b
	ld b,013h
	ld de,0119fh
	cp 04bh
	cp 055h
	add a,c
	ccf
	ex (sp),hl
	ld a,a
	add a,e
	ld b,l
	adc a,b
	add a,c
	ld a,a
	ld (de),a
	ld (hl),c
	sub a
	rst 38h
	ld hl,(07e67h)
	ld sp,hl
	inc d
	ld d,d
	ld b,080h
	add a,b
	jp nz,l7c32h
	add hl,de
	add hl,de
	ld (hl),c
	sub c
	add a,d
	adc a,e
	and b
	inc sp
	scf
	ld de,08847h
	jp m,08411h
	jp 09488h
	adc a,d
	ld a,a
	cp 07ch
l7188h:
	cpl
	add a,d
	ex af,af'
	ccf
	sbc a,c
	add a,b
	cp 00dh
	ret z
	ei
	or b
	ld (hl),c
	sbc a,h
	ld a,h
	ld h,(hl)
	add a,0f6h
	inc l
	rst 0
	add a,l
	and l
	nop
	rlca
	call z,058f8h
	call m,sub_7385h
	inc sp
	add a,b
	ld d,e
	add a,e
	ld (09e11h),hl
	or (hl)
	rst 38h
	jr z,$-90
	add a,h
	dec b
	ld b,d
	ld sp,08012h
	sub 0ffh
	sub d
	rst 38h
	ret po
	ex (sp),hl
	or a
	rst 38h
	ret po
	ret z
	adc a,h
	ld c,h
	ld a,a
	call z,sub_5697h
	ld l,h
	di
	ld de,l67c6h
	add a,l
	jr l7233h
	ld d,l
	add a,d
	ld h,e
	ld a,a
	daa
	ei
	ld sp,0ff23h
	ld d,l
	add a,e
	inc h
	cp 0d8h
	rst 38h
	ret c
l71deh:
	ld c,b
	add a,e
	ld hl,02238h
	inc d
	rst 38h
	and d
	add a,b
	rst 38h
	ld a,a
	adc a,h
	add a,c
	ld e,a
	ld b,c
	ld (hl),l
	ld d,(hl)
	ret
	sub a
	add iy,de
	xor 034h
	jp m,0c760h
	ld h,d
	ld d,a
	in a,(0f5h)
	cp 0c7h
	daa
	defb 0fdh,04ch ;ld c,iyh
	ld (hl),c
	add a,h
	add a,073h
	ld a,a
	ex de,hl
	rst 38h
	ld de,00fffh
	ld c,b
	add a,b
	inc hl
	and d
	adc a,a
	ld b,h
	inc b
	ld a,a
	ld a,(de)
	rst 38h
	cp 017h
	push de
	ld h,c
	adc a,h
l721ah:
	ld h,l
	ld d,a
	ld a,a
	cp b
	ld a,l
	pop bc
	cp c
	rst 28h
	call z,0d389h
	pop bc
	add a,e
	ld a,(bc)
	ld (hl),a
	jp m,0878dh
	call nc,08812h
	out (0ffh),a
	rst 8
	rst 38h
l7233h:
	ld l,b
	nop
	ld (l6312h),a
	inc d
	ld a,a
	rrca
	ld a,a
	and a
	cp (hl)
	ld a,a
	ret p
	and 04ch
	ld h,l
	push af
	ld h,c
	pop bc
	halt
	ld a,a
	dec b
	rst 0
	ld (hl),d
	inc hl
	scf
	defb 0fdh,020h,07ch ;illegal sequence
	ld de,0a2c2h
	ei
	add a,d
	ld c,c
	jp m,080a5h
	ld h,088h
	jp z,0fa1fh
	ld e,h
	add a,l
	add hl,bc
	add a,b
	ld bc,096feh
	call nz,sub_7f0ah
	dec h
	xor 0feh
	sbc a,e
	rst 38h
	cp 019h
	sbc a,b
	ld h,(hl)
	ld c,c
	ld a,c
	rst 0
	cp 049h
	ld a,d
	ld (hl),d
	di
	sub c
	pop bc
	sbc a,h
	add a,h
	ld (hl),c
	call z,0f97bh
	inc (hl)
	pop iy
	ld (hl),a
	rla
	adc a,b
	add a,l
	ex af,af'
	rst 38h
	sub a
	add a,b
	jp po,08584h
	jr nz,l721ah
	sub b
	ld (bc),a
	ld sp,0fe92h
	nop
	ret p
	cp 0feh
	inc sp
	ld b,a
	ex de,hl
	cp 01dh
	add a,b
	sbc a,a
	ld a,a
	jp nz,07959h
	ld a,a
	add a,d
	inc h
	ei
	adc a,b
	rla
	ld (hl),h
	cp e
	ld hl,01975h
	add a,c
	defb 0fdh,091h,032h ;illegal sequence
	ld hl,074feh
	jp m,l774bh
	ld a,a
	add a,h
	ld c,c
	ld sp,hl
	ld a,(08c80h)
	cp 047h
	add a,h
	ld a,b
	inc bc
	ld hl,02c84h
	ld a,a
	di
	defb 0edh ;next byte illegal after ed
l72cch:
	rst 38h
	call p,025ffh
	rst 38h
	rst 38h
	rst 38h
	ret m
	ld c,h
	or 093h
	ld h,a
	ld a,a
	sub a
	ret m
	ld d,l
	ld (061f3h),hl
	or e
	add hl,hl
	ld a,a
	ld d,c
	add a,c
	adc a,e
	dec d
	defb 0fdh,061h ;ld iyh,c
	ld (08e2ch),hl
	ld b,d
	rla
	ex (sp),hl
	add hl,hl
	ld a,d
	sbc a,b
l72f1h:
	rst 38h
	cp h
	jp nz,0107fh
	inc c
	call nz,sub_4989h
	ld a,a
	rst 38h
	add a,c
	ret m
	ex de,hl
	sub h
	defb 0fdh,0e2h,0feh ;illegal sequence
	rst 38h
l7304h:
	ld e,a
	add a,h
	inc d
	sub c
	add a,066h
	jp m,0fe9ch
	ld c,l
	ret m
	rst 28h
	or b
	ld (de),a
	daa
	sbc a,c
	ld h,071h
sub_7316h:
	sub c
	add a,b
	ld b,e
	ld l,h
	ld a,(hl)
	ld (hl),d
	inc sp
	jp nz,l4985h
	sub c
	ld (de),a
	ld (l6fffh),a
	rst 38h
	ld h,l
	ld b,b
	inc hl
	ld a,a
	rst 38h
	inc l
	ld b,l
	add a,b
	ld a,a
	inc hl
	ld a,0feh
	ccf
	ld a,a
	add a,l
	ld (09188h),hl
	rst 28h
	adc a,c
	add a,b
	ld a,c
	ret m
	and d
	sub c
	call p,sub_79a3h
	sub c
	pop af
	ld h,d
	ld d,a
	sbc a,c
	add a,b
	ld d,a
sub_7349h:
	add a,c
	ld c,085h
	jp z,01f94h
	ld (hl),d
	add a,c
	ld b,a
	ei
	inc b
	ld c,c
	sub h
	dec c
	ld b,b
	ld c,032h
	djnz l735ch
l735ch:
	ld c,h
	ld a,a
	ld hl,(09481h)
	add a,c
	adc a,l
	cp 0feh
	ld a,a
	djnz l7304h
	halt
	jp 0c97fh
	ld d,(hl)
	cp 088h
	ld l,h
	ld a,c
	sbc a,c
	adc a,e
	adc a,h
	jp m,08b4fh
	sbc a,b
	halt
	adc a,b
	sbc a,h
	add a,a
	ld e,d
	sub h
	dec hl
	rla
	rst 38h
	cpl
	add a,b
	ld (hl),a
	rst 38h
sub_7385h:
	ld b,c
	ld b,c
	ld (00040h),a
	inc b
	ld a,(hl)
	or d
	ld a,a
	ccf
	add a,d
	ld h,l
	rst 38h
	call m,sub_7f5fh
	jp nz,08995h
l7398h:
	sbc a,h
	ld a,(hl)
	ld a,a
	rst 38h
	ld c,b
	add hl,de
	ld b,d
	sub d
	ld a,a
	sub a
	inc e
	ld (hl),l
	defb 0fdh,0c7h,091h ;illegal sequence
	add a,a
	adc a,05ch
	adc a,e
	ld c,l
	add a,(hl)
	jr nc,l73afh
l73afh:
	dec sp
	ld (hl),a
	ld c,d
	adc a,c
	ei
	ld (hl),d
	ld a,a
	ld sp,l71deh
	ld a,a
	ld (l6ffah),hl
	ret p
	inc b
	ld a,a
	ret p
	sbc a,b
	cp 038h
	halt
	di
	sub d
	add a,e
	cp 062h
	pop bc
	sub a
	rst 38h
	ld h,c
	ld (hl),d
	ld (hl),a
	dec h
	di
	ld (080cch),a
	sub d
	ld (de),a
	sub d
	call m,sub_5e09h
	inc l
	sub h
	ld e,c
	ret m
	rst 38h
	inc e
	cp h
	ld c,h
	ld a,a
	ld (hl),b
	nop
	ld a,(bc)
	and b
	ld b,a
	nop
	rst 38h
	ret p
	jp nz,04c44h
	halt
	xor 051h
	ld h,l
	add a,c
	ret m
	sub c
	xor e
	rst 38h
	rst 28h
	push bc
	inc hl
	ld a,h
	adc a,(hl)
	ld l,b
	call z,09934h
	sbc a,h
	adc a,h
	sub d
	defb 0fdh,010h,0ach ;illegal sequence
	ld a,a
	ld a,e
sub_7409h:
	add a,b
	xor h
	add a,b
	and h
	rst 38h
	call p,0227fh
	and l
	ld e,d
	add a,d
	cp 07fh
	ld d,0d8h
	dec l
	rst 30h
	pop bc
	sbc a,h
	ld h,l
	call z,08204h
	daa
	pop bc
	ld (hl),d
	ld a,a
	or d
	push af
	adc a,(hl)
	ld sp,088c9h
	ld b,e
	ld de,0347eh
	add a,d
	sub c
	sub b
	call nz,0727fh
	cp 063h
	inc bc
	ld bc,0847fh
	inc c
	ld (iy-056h),b
	add hl,bc
	ld e,(hl)
	push hl
	xor d
	and l
	add a,d
	ld c,b
	rst 38h
	cp 012h
	ld sp,hl
	ld h,079h
	add a,d
	ld bc,0c7c9h
	ret
	sbc a,h
	add a,d
	inc d
	ld a,a
	rst 0
	ld l,c
	or a
	add a,(hl)
	adc a,d
	ld d,h
	ld a,(hl)
	ld (de),a
	ld e,(hl)
	ld (l6282h),hl
	sub b
	ccf
	scf
	ei
	rrca
	add a,h
	ld c,b
	ld a,a
	inc d
	ld c,h
	ld (bc),a
	and b
	add a,c
	ld a,d
	ld d,l
	xor 055h
	ld e,d
	ld d,l
	ld a,a
	call m,0c428h
	adc a,h
	call z,0ed92h
	cp 085h
	ret
	push af
	sbc a,l
	call p,sub_7c39h
	pop af
	dec c
	ld (08fc1h),a
	and e
	dec d
	inc e
	ld (081ech),hl
	ld h,d
	ld (0ff27h),a
	ld de,0c431h
	add a,b
	sbc a,c
	ld (bc),a
	sub c
	add a,e
	jr $+3
	ld hl,l407eh
	or h
	add a,b
	or b
	ld a,l
	ld a,a
	push hl
	ld d,l
	ld b,a
	push hl
	rst 38h
	ret p
	jp p,099eeh
	ld a,a
	add a,l
	rla
	pop af
	inc c
	ld (030f7h),hl
	pop af
	ex de,hl
	add a,l
	or 048h
	cp 0c2h
	inc l
	ld (hl),d
	ld a,(hl)
	out (086h),a
	pop af
	pop de
	ld c,b
	and l
	ld e,h
	ld e,h
	add a,(hl)
	ld bc,01143h
	ld l,a
	inc b
	ld c,b
	inc b
	ld a,a
	ld a,(de)
	ld e,(hl)
	call m,0eb09h
	cp (hl)
	xor 081h
	cp a
	ld a,a
	add a,h
	and d
	cp 0f6h
	ld c,h
	ld a,a
	ld a,d
	ld de,l5debh
	nop
	or 03ch
	ld (hl),d
	pop af
	ret pe
	add a,l
	or d
	ld hl,02307h
	ld hl,09921h
	ld (0068bh),hl
	ld (de),a
	sbc a,b
	sbc a,a
	sub l
	rst 38h
	ld c,(hl)
	add a,d
	ld (l7f99h),a
	rst 38h
	ld d,d
	adc a,c
	and c
	ld b,b
	ld a,(bc)
	ld a,(bc)
	ld a,a
	ld a,(080bbh)
	rlca
	cp (hl)
	cp (hl)
	push hl
	ld e,d
	and b
	ld a,a
	ret p
	ld h,e
	sbc a,h
	ld (hl),l
	ld d,(hl)
	rst 38h
	sub b
	ld l,h
	inc e
	ld (01977h),hl
	rst 30h
	ret p
l751fh:
	rst 38h
	daa
	inc de
	call m,sub_49f9h
	inc sp
	ei
	ld bc,08660h
	sub c
	ld c,c
	ld hl,02902h
	ld sp,hl
	ld (l53a1h),hl
	ld c,h
	halt
	add a,e
	sbc a,b
	ld a,a
	inc b
	or c
	add a,l
	add a,b
	ei
	ld b,c
	ld d,l
	ld e,(hl)
	rst 38h
	jp c,0a0bbh
	add a,d
	xor d
	ld a,(bc)
	cp 07fh
	dec c
	ld h,l
	ld a,a
	xor c
	ld h,a
	push af
	sub e
	ld a,c
	call m,07728h
	xor 064h
	ld (de),a
	pop af
	daa
	ld c,h
	ld (02587h),hl
	adc a,c
	ei
	ld de,l6602h
	nop
	jp m,0c4f0h
	sbc a,l
	add a,h
	call nz,sub_4c7fh
	ex af,af'
	ld b,h
	ld h,00ah
	ld d,l
	call m,07edah
	ld a,a
	add a,b
	ld b,a
	xor d
	ld a,a
	ret p
	ld c,c
	adc a,h
	ld a,a
	ld a,h
	jp m,l66e3h
	defb 0fdh,002h,079h ;illegal sequence
	ld de,0e9edh
	jp m,0f5c9h
	ret
	nop
	ld (hl),c
	cp 018h
	inc de
	ld h,b
	ld hl,09190h
	ld l,c
	sub d
	sbc a,a
	ld (hl),h
	or h
	ld a,a
	add a,b
	sbc a,e
	ld a,a
	rst 38h
	ex de,hl
	cp 01dh
	ld c,l
	add a,e
	add a,e
	ld l,c
	ld a,a
	call m,0761ah
	ld a,a
	cp b
	pop af
	ld d,(hl)
	pop bc
	add hl,hl
	sub c
	ld a,c
	call p,0002fh
	di
	set 6,e
	xor b
	rst 30h
	dec b
	ld (de),a
	ld d,c
	sub c
	ld (00f19h),a
	add a,(hl)
	ld d,0feh
	ld e,h
	di
sub_75c4h:
	sbc a,c
	ld a,a
	add a,c
	sub d
	ld b,c
	rst 38h
	ld d,c
	add a,h
	ex af,af'
	ld d,d
	cp 071h
	ld a,(hl)
	nop
	ld l,0beh
	add a,c
	cp 07fh
	dec bc
	cp 0cch
	rst 28h
	sbc a,b
	add a,07fh
	sbc a,c
	ld (de),a
	ld (hl),a
	sub a
	inc hl
	ld a,(hl)
	daa
	add a,c
	ld d,d
	add a,l
	ld h,l
	daa
	adc a,e
	nop
	add hl,sp
	inc de
	ld (02219h),hl
	dec d
	add hl,hl
	sbc a,c
	ld de,l47f9h
	rst 38h
	daa
	sub h
l75fah:
	ld c,h
	rst 38h
	inc d
	rst 38h
	ex af,af'
	call nz,08884h
	rst 38h
	adc a,07fh
	adc a,a
	ex de,hl
	push hl
	ld a,a
	pop hl
	inc (hl)
	rst 28h
	ld e,b
	call z,sub_6682h
	jp pe,080f6h
	jp nc,0407bh
	ld de,0c703h
	ld (03733h),a
	ld de,089a8h
	jp nz,0e921h
	adc a,a
	add hl,hl
	add a,c
	ld (hl),07fh
	inc hl
	call z,03c80h
	and l
	out (087h),a
	rst 38h
	call nc,08048h
	sbc a,d
l7633h:
	rst 38h
	cp 059h
	rst 8
	nop
	ld a,a
	pop hl
	ld (026f7h),hl
	ld h,a
	ld (hl),a
	ld a,a
	ld h,l
	ld a,a
	add hl,bc
	ld (hl),e
	or e
	daa
l7646h:
	rst 30h
	add hl,bc
	scf
	call z,02c84h
	add a,l
	cp d
	add a,e
	ld a,(bc)
	inc b
	add hl,de
	inc hl
	inc hl
	add hl,hl
	ld (de),a
	add a,h
	ret c
	and b
	ld h,e
	ld a,(hl)
	ld c,b
	and l
	ret
	dec b
	inc hl
	ld a,a
	ld h,000h
	cp 0f1h
	ld a,a
	sub a
	rst 38h
	pop hl
	ld c,b
	adc a,c
	call z,0a280h
	ld iy,(0cc66h)
	rst 28h
	ld h,d
	inc hl
	ld a,a
	ld a,h
l7677h:
	adc a,d
	ret
l7679h:
	sub c
	dec d
	ld (hl),d
	rst 38h
	ld e,a
	ld a,a
	adc a,c
l7680h:
	ld b,h
	add a,a
	sub c
	call po,0d281h
	defb 0fdh,0fdh,075h ;illegal sequence
	adc a,c
	jp m,l4348h
	jp z,0827fh
	ld h,0ffh
	defb 0edh ;next byte illegal after ed
	ld a,a
	push hl
	ld a,a
	call m,sub_4823h
	or 06fh
	call pe,0ff2ah
	ret c
	add a,e
	rla
	inc hl
	sub b
	ei
	call z,000c7h
	rst 0
	add hl,de
	sub c
	sbc a,c
	sub a
	daa
	rla
	rst 0
	ret po
	add a,l
	ld (hl),c
	ld a,h
	ld d,l
	ld (08180h),hl
	dec h
	ld sp,hl
	sub c
	add a,b
	ld h,c
	call m,02285h
	ld b,h
	ld a,a
	ld l,(hl)
	ld hl,0c5ffh
	rst 38h
	cp 06ch
	sbc a,080h
	dec (hl)
	ld e,d
	rst 38h
	ret m
	ld b,h
	adc a,h
	call m,05745h
	ld a,h
	rst 38h
	pop de
	jp p,02b09h
	inc sp
	rst 0
	adc a,e
	inc h
	ld a,a
	ld de,0a0fah
	ld (de),a
	ld (hl),c
	inc e
	adc a,b
	adc a,c
	inc sp
	ld h,00ch
	ld de,02192h
	ld (de),a
	ei
	add a,099h
l76f0h:
	add a,h
	jr nc,l7737h
	inc e
	ld b,d
l76f5h:
	ld sp,l7f21h
	ld d,a
	rst 38h
	add a,d
	push hl
	rst 38h
	ccf
	add a,h
	sub d
	ld a,a
	ld h,l
	ld a,a
	ld h,(hl)
	ld a,c
	ld l,d
	inc hl
	ld (iy-07ch),b
	jp nz,l771dh
	rla
	daa
	defb 0fdh,089h,02ch ;illegal sequence
	adc a,c
	add a,e
	inc de
	inc sp
	ld hl,09d1ch
	ld (l4891h),hl
	add a,b
l771dh:
	ld (hl),a
	add a,e
	ld l,d
	add a,h
	ld c,e
	add a,b
	sub h
	ld (de),a
	add a,b
	sbc a,l
	call m,0eb8eh
	ld a,(hl)
	xor a
	rst 38h
	ret m
sub_772eh:
	ld b,(hl)
	add a,h
	ld sp,hl
	sbc a,c
	add a,c
	add a,(hl)
	ld h,(hl)
	rst 0
	push af
l7737h:
	and h
	or 09dh
	add a,h
	cp b
	add a,c
	ld d,h
	sub d
	ld (de),a
	ld b,03ch
	sbc a,h
	ld a,h
	ld (de),a
	ld (hl),d
	sub b
	ld h,b
	ld (hl),c
	add hl,de
	add a,h
l774bh:
	call 0b380h
	cp 003h
	dec de
	add a,h
	sub h
	ld d,b
	add a,c
	inc b
	ld l,l
	and b
	rst 38h
	add a,b
	inc a
	and 0feh
	ld h,a
	rst 38h
	ret p
	ld l,a
	adc a,b
	xor 034h
	pop de
	ld d,b
	ld a,h
	add a,c
	ld (hl),d
	jp nc,06ff8h
	sbc a,e
	rst 38h
	call p,022f1h
	add a,b
	ld d,b
	ld (hl),d
	cp h
	ld d,0fah
	adc a,e
	adc a,c
	ld d,d
	add a,d
	ld b,(hl)
	ld de,017f8h
	rst 38h
	or c
	add a,h
	jp 09213h
	ld l,e
	cp 0bbh
	rst 38h
	ld h,l
	add a,b
	add a,e
	or l
	xor d
	rst 38h
sub_778fh:
	sbc a,a
	add a,h
	jp m,0fffbh
	ld hl,(081ffh)
	ld l,h
	add hl,de
	sub a
	ld (hl),d
l779bh:
	ld (hl),c
	ld sp,hl
	add a,d
	pop bc
	add a,b
	inc l
	add a,h
	sub h
	scf
	ld a,a
	rst 38h
	ld c,b
	add a,0f9h
	xor (hl)
	adc a,h
	add hl,bc
	or l
	cp e
	ld (0a072h),a
	dec l
	rst 38h
	add a,d
	adc a,b
	adc a,h
	add a,b
	or h
	ld hl,08c14h
	add a,b
	ld a,00ah
	ld e,(hl)
	add a,b
	call p,08bfeh
	rst 38h
	rst 38h
	rst 18h
	add a,h
	rlca
	adc a,c
	rst 0
	halt
	ld d,l
	ld h,a
	rst 38h
	ld e,d
	rst 38h
	jr nc,l77e9h
	di
	xor b
	rst 38h
	ld a,h
	call z,sub_7349h
	add a,a
	or 060h
	rla
	ld hl,l5e7ch
	pop bc
	add a,a
	ld a,(hl)
	sub c
	ld h,022h
	cp 0c6h
	rst 38h
l77e9h:
	jp z,08248h
	add a,b
	inc h
	adc a,a
	push bc
	ld a,a
	ld d,l
l77f2h:
	add a,d
	ld e,e
	ei
	adc a,a
	ld d,l
	ld a,a
	pop hl
	add a,(hl)
	call z,sub_56c6h
	ld a,a
	ld bc,091c7h
	ld (hl),a
	dec hl
	dec sp
	inc a
	call p,0c761h
	ld a,e
	add a,l
	add a,h
	ld a,a
	ld (hl),a
	adc a,e
	adc a,b
	ei
	bit 7,a
	adc a,d
	adc a,l
	ld a,a
	sub 0ffh
	ld (08bffh),hl
	ld (bc),a
	adc a,b
	ld (01b8eh),a
	ld (de),a
	ld a,a
	add a,d
	ld d,(hl)
	ld a,a
	daa
	xor d
	adc a,d
	daa
	rst 38h
	ret m
	add hl,sp
	jp p,l6618h
	ld a,a
	ret
	sbc a,c
	ld a,a
	inc sp
	rst 30h
	ld de,0c1c6h
	adc a,l
	add hl,bc
	ld (09771h),a
	ld sp,hl
	xor d
	ld a,a
	ei
	ld b,(hl)
	ld (hl),d
	sub d
	sub h
	add a,b
	ld c,a
	rst 38h
	dec a
	rst 38h
	adc a,c
	adc a,b
	nop
	inc de
	ld a,a
	pop bc
	nop
	xor d
	add a,e
	ld h,d
	push hl
	call m,sub_7f73h
	ret m
	ld l,e
	jp (hl)
	sub c
	ld h,l
	ld a,a
	ld h,a
	ld de,0c5fdh
	cp 0adh
	add a,b
	push hl
	add a,(hl)
	ld e,h
	add a,l
	dec hl
	rla
	ld a,(bc)
	ld (bc),a
	add a,h
	and e
	ld hl,l7f23h
	dec sp
	add a,b
	ld (hl),l
	add a,b
	add hl,hl
	jr z,l787bh
	ld (hl),e
	cp 023h
l787bh:
	ld (02475h),hl
	ld a,d
	and l
	ei
	and a
	ld a,a
	ret p
	adc a,048h
	ld a,a
	dec c
	ld h,(hl)
	pop bc
	rst 30h
	or d
	ret p
	adc a,c
	call p,07e1ch
	ld hl,(l7971h)
	add a,l
	ld (0ab8fh),a
	call m,08280h
	ld (hl),c
	inc hl
	adc a,h
	ld c,h
	rst 38h
	cp a
	add a,b
	ld de,08584h
l78a5h:
	ld b,(hl)
	add a,b
	inc a
	sbc a,c
	add a,d
	xor e
	sub e
	ld (hl),a
	add a,e
	ld a,(bc)
	and b
	ld a,a
	ret m
	rst 18h
	add a,c
	jr z,l78a5h
	ld e,e
	inc e
	ld a,h
	call m,0c92dh
l78bch:
	push af
	inc d
	ld (0fe7eh),hl
	and e
	sub a
	add a,h
l78c4h:
	adc a,b
	sub c
	xor d
	adc a,e
	ld c,c
	ld (hl),a
	ld sp,hl
	add a,b
	call nc,067feh
	ld sp,hl
	call po,sub_4c2bh
	ld e,c
	dec de
	add a,c
	jp p,0c16fh
	set 7,a
	and b
	sub c
	rst 0
	ld (hl),l
	or b
	rst 38h
	ld (hl),l
	ld h,a
	add a,c
	ld (hl),e
	pop bc
	rst 0
	ld (hl),c
	ld h,d
	ld a,c
	add a,e
	add a,e
	ld (hl),e
	adc a,b
	jr z,$-126
	cp h
	adc a,(hl)
	jp z,0ff7fh
l78f5h:
	inc h
	ld a,a
	rla
	ld a,d
	sbc a,b
	sbc a,0ffh
	ld h,h
	add a,e
	add a,a
	ld a,a
	rst 0
	or d
	ld de,0f17fh
	call pe,sub_7f41h
	ld e,056h
	ld (hl),a
	add a,083h
	ld b,l
	add a,h
	call p,08134h
	ld c,a
	sub c
	add a,(hl)
	inc l
	call p,sub_7c48h
	adc a,c
	sbc a,c
	pop af
	jp m,08779h
	ld d,l
	sub c
	ld b,(hl)
	ld de,0ff48h
	ret m
	ld l,048h
	add a,h
	ld d,l
	ld b,h
	add a,c
	adc a,h
	ld e,b
	add a,c
	ld c,l
	inc hl
	add a,(hl)
	ld b,096h
	adc a,(hl)
	inc hl
	ld l,08dh
	ret m
	jr nz,l78bch
	ret
	inc e
	halt
	cp h
	add a,b
	ld l,056h
	ld d,(hl)
	add a,d
	sub b
	cp 017h
	ld (hl),c
	pop af
	add a,(hl)
	dec sp
	add a,a
	or l
	ex af,af'
	adc a,(hl)
	add a,h
	add a,(hl)
	sub b
	dec bc
	sub a
	ld (hl),e
	daa
	ld b,a
	ld hl,009fbh
	ld c,c
	ld a,a
	call z,0957fh
	adc a,d
	jr l79a9h
	inc sp
	ld a,b
	add a,e
	and c
	add a,(hl)
	ld (0c57fh),hl
	adc a,l
	sbc a,a
	ld a,a
	ret nz
	cp b
	adc a,h
	ld a,a
l7971h:
	jp nz,08083h
	sub c
	call z,0a8fbh
	ld a,c
	jp z,0ff7fh
l797ch:
	adc a,e
	add a,0c9h
	adc a,(hl)
	ld b,a
	ld a,c
	adc a,c
	call z,09292h
	xor l
	ld a,a
	ei
	in a,(084h)
	push hl
	sbc a,b
	add a,l
	ld b,e
	ld (hl),a
	add a,(hl)
	adc a,l
	add a,a
	sub (hl)
	ld sp,00678h
	inc de
	add a,e
	ld hl,07fach
	ld a,a
	inc b
	pop bc
	add a,d
	ld a,a
	ld h,(hl)
	ld (hl),a
sub_79a3h:
	push bc
	ld l,h
	ld b,066h
	inc e
	rst 28h
l79a9h:
	ld b,h
	ld a,a
	ld (de),a
	dec sp
	call p,071c9h
	ld a,a
	inc e
	ld a,(bc)
	add a,h
	ld (hl),d
	daa
	add a,b
	ld e,b
	rst 38h
	ld c,d
	ei
	ld (hl),l
	ld a,a
	adc a,d
	ld b,(hl)
	add a,e
	inc h
	add a,(hl)
	and e
	inc hl
	add a,(hl)
	inc de
	ld b,015h
	inc de
	adc a,h
	call m,09b21h
	call z,0947fh
	rst 38h
	add hl,hl
	ld a,h
	rst 38h
	ccf
	add a,c
	ld h,h
	rst 38h
	ld l,033h
	cp e
	call p,sub_772eh
	ret
	adc a,(hl)
	ld d,b
	ld (hl),a
	adc a,c
	or e
	sbc a,c
	add a,d
	ld de,064f8h
	rst 38h
	ld (hl),e
	add a,l
	ld (hl),e
	adc a,b
	ld a,a
	sbc a,d
	inc c
	cp 048h
	ld sp,hl
	sbc a,l
	ld b,h
	adc a,(hl)
	cp h
l79f8h:
	adc a,l
	ld a,a
	ld a,a
	inc bc
	pop de
l79fdh:
	daa
	jp m,l67c2h
	ld a,h
	ld d,(hl)
	add a,l
	add hl,hl
	call z,sub_7f24h
	ld (hl),c
	ret nc
	and e
	ld (hl),d
	jp c,0c1a4h
	add a,(hl)
	ld e,c
	add a,a
	add a,e
l7a13h:
	rla
	dec hl
	or e
	add a,e
	ld a,(bc)
	rra
l7a19h:
	push af
	ld c,h
	ld a,d
	and l
	rst 38h
	adc a,h
	add a,b
	ld b,h
	sbc a,b
	add a,d
	ld c,b
	adc a,d
	ret m
	cp 045h
	inc d
	dec b
	ld b,023h
	add a,d
	add a,e
	ccf
	ld a,a
	add a,c
	dec e
	call nz,sub_7cc6h
	rst 30h
	jr nc,$-55
	rst 28h
	and d
	jp pe,0cbefh
	jp p,0833ch
	or d
	ret m
	add a,l
	ld h,d
	call z,0946ch
	call 0d3fch
	or d
	ld (hl),c
	add a,h
	xor e
	call m,09899h
	ld a,c
	inc bc
	adc a,e
	add a,h
	add a,(hl)
	out (099h),a
	sbc a,h
	ld (hl),a
	inc bc
	ld sp,l441ch
	sub h
	adc a,l
	sub e
	sbc a,b
	ld sp,0ff94h
	rra
	pop bc
	ld h,d
	push af
	inc bc
	ld a,h
	add a,06ch
	call z,0f6bbh
	adc a,h
	ei
	inc a
	add a,d
	defb 0edh ;next byte illegal after ed
	defb 0fdh,0b4h ;or iyh
	cp 086h
	ld a,a
	inc sp
	ld (hl),a
	ld (l61fdh),hl
	sub c
	ld (hl),c
	ei
	ld sp,hl
	jp pe,07f47h
	dec de
	add a,h
	or a
	ld (hl),e
	add a,l
	ld hl,(l78c4h)
	ld d,a
	adc a,b
	sub a
	rra
	ld a,a
	pop bc
	ld b,0c4h
	adc a,h
	halt
	call z,sub_58feh
	cp 04fh
	ld a,b
	sbc a,c
	pop af
	jp nz,0b33bh
	add a,e
	ld h,h
	inc e
	adc a,e
	pop de
	rst 38h
	ld hl,(00fc2h)
	add a,c
	jr l7ad6h
	add a,d
	add hl,de
	daa
	call nz,09980h
	ld (bc),a
	ld a,l
	sub c
sub_7ab8h:
	pop af
	adc a,b
	ld c,c
	xor (hl)
	or b
	ld a,a
	inc d
	call nz,0c452h
	adc a,h
	call nc,0067fh
	rst 38h
	ld a,a
	inc b
	ld b,c
	ret nz
	ei
	ld (hl),a
	ld (hl),l
	xor c
	cp 02bh
	ex de,hl
	inc (hl)
	ld a,a
	ld (hl),e
	xor c
l7ad6h:
	push af
	inc sp
	rst 30h
	ld b,e
	ld a,h
	ld a,a
	ld (0a9fdh),hl
	ld a,(hl)
	nop
	ld a,a
	scf
	ex (sp),hl
	inc a
	or 0fdh
	and 071h
	adc a,h
	ld d,c
	pop af
	ld c,e
	ld a,a
	ld de,l4e8bh
	adc a,l
	ld e,l
	ld b,0dfh
	rst 38h
	ret po
	ld d,c
	adc a,h
	defb 0fdh,002h,065h ;illegal sequence
	ld h,l
	ld l,h
	ld de,l7f3bh
	jp nz,0f1fdh
	call nz,0f712h
	ld d,d
	ld a,a
	rst 0
	add a,c
	ld l,083h
	adc a,l
	ld (hl),d
	ld (0acfch),a
	rst 38h
	ld a,h
	scf
	add a,(hl)
	ld (0290bh),a
	add hl,de
	sub c
	inc hl
	ex de,hl
	ld b,b
	ld (01921h),hl
	ld (de),a
	ld b,d
	sbc a,b
	cpl
	sbc a,c
	inc de
	inc e
	sub b
	xor 08dh
	ld h,c
	call z,0fc7fh
	add hl,de
	sbc a,b
	sbc a,h
	push af
	and (hl)
	ei
	and l
	rst 38h
	inc hl
	sbc a,c
	pop af
	ret p
	ld hl,0b013h
	call m,02c17h
	sbc a,(hl)
	ld a,a
	call z,01181h
	jp nz,08062h
	ld e,b
	adc a,h
	scf
	ld hl,(01717h)
	sub l
	ld (01229h),a
	jp pe,01109h
	sub c
	sub c
	ld hl,02902h
	adc a,h
	ld b,h
	rst 38h
	ld b,l
	sbc a,h
	call nz,01c8ch
	adc a,l
	sbc a,e
	ld b,080h
	adc a,a
	pop bc
	inc sp
	sbc a,h
	ld l,l
	add a,c
	ret nz
	ret
	sub d
	rla
	sub c
	jp nz,0717fh
	dec hl
	ld a,a
	dec l
	ld (de),a
	inc a
	adc a,(hl)
	inc h
	add a,b
	or d
	add a,c
	adc a,h
	ld h,b
	add hl,de
	ld (hl),e
	scf
	ld (de),a
	ld b,(hl)
	ld (hl),a
	ei
	ld e,h
	rst 28h
	ld (de),a
l7b8bh:
	adc a,d
	ei
	dec c
	and h
	and c
	ld b,h
	sub c
	ld sp,hl
	add a,d
	ex (sp),hl
	add a,(hl)
	adc a,h
	ld d,a
	adc a,l
	sub d
	rst 38h
	ccf
	add a,e
	ld h,089h
	ld c,h
	and 0c1h
	cp 055h
	ret p
sub_7ba5h:
	or l
	ex de,hl
	ld d,l
	jp m,l7f70h
	ld (hl),e
	adc a,d
	rst 38h
	adc a,(hl)
	and a
	ld de,0a18eh
	ld (08232h),hl
	ret pe
	rla
	ld c,d
	ld (de),a
	ld a,a
	inc l
	ld c,078h
	ld b,l
	ld (de),a
	add a,h
	dec l
	ld h,d
	adc a,a
	jp c,0eef8h
	ld a,a
	ld b,0ffh
	ld a,a
	ld b,076h
	ld c,h
	halt
	ret p
	ld d,l
	or e
	pop af
	xor 06fh
	pop af
	in a,(0f3h)
	ld (091efh),hl
	ld c,066h
	sub d
	ld c,c
	ld a,a
	pop bc
	ld sp,hl
	ld b,b
	ld (hl),a
	pop bc
	ld de,01617h
	ld (02c22h),a
	ld c,088h
	jr l7b8bh
	call nz,sub_5380h
	jp m,094abh
	ld (hl),a
	ld b,0a9h
	rst 38h
	cp 00ah
	ld a,a
	ld hl,(l6766h)
	add a,d
	and d
	pop af
	cp 08ah
	ld a,l
	xor 024h
	dec hl
	ret p
	rst 10h
	adc a,(hl)
	sub h
	sub b
	ld a,c
	sub c
	ld b,052h
	adc a,b
	ld h,d
	ld a,a
	ld (hl),d
	ld a,a
	add a,h
	ld a,(hl)
	jp nz,09211h
	sub a
	ret c
	sbc a,h
	adc a,d
	sub d
	ei
	call sub_63f4h
	ld b,0afh
	ld a,a
	ret po
	ret pe
	ld l,h
	xor 099h
	rst 0
	add a,b
	ld hl,(0fa19h)
	or c
l7c32h:
	xor 017h
	pop af
	ld sp,hl
	ei
	add a,c
	ld (hl),l
sub_7c39h:
	ld d,a
	ld a,h
	ld (hl),l
	adc a,(hl)
	inc bc
	ld c,(hl)
	nop
	dec sp
	add a,l
	ld b,d
	dec (hl)
	daa
	sbc a,l
	xor (hl)
	sub (hl)
sub_7c48h:
	sbc a,b
	sub c
	sbc a,h
	sla d
	add a,l
	ld e,b
	adc a,07fh
	ld b,07fh
	nop
	add a,d
	adc a,h
	rst 38h
	sbc a,(hl)
	ld a,a
	call z,sub_55ffh
	ex de,hl
	pop af
	ld sp,hl
	inc b
	ld d,c
	push hl
	sub b
	ld d,h
	adc a,l
	sbc a,b
	ld a,d
	ld de,097b1h
	pop bc
	adc a,h
	rst 10h
	add a,l
	inc de
	sub c
	ld h,067h
	adc a,e
	cp d
	add a,c
	ld a,a
	add a,09ch
	ld de,0ff32h
	call m,08979h
	add a,c
	cp 069h
sub_7c81h:
	ret po
	dec h
	add a,c
	sub 05fh
	xor 0a4h
	defb 0edh ;next byte illegal after ed
	jp nz,09937h
	inc e
	djnz $-19
sub_7c8fh:
	defb 0fdh,084h ;add a,iyh
	sub d
	ld a,a
l7c93h:
	ld b,l
	call z,09592h
	ret z
	ld h,089h
	adc a,l
	ret
	cp 03bh
	sbc a,h
	adc a,d
	ld (01272h),hl
	add a,(hl)
	ld e,d
	or h
	push af
	ld b,0ffh
	adc a,a
	pop bc
	inc d
	sub c
	add a,0edh
	xor d
	ld h,l
	add a,b
	inc de
	jp nz,02bffh
	ld (de),a
	ld l,(hl)
	call po,0fea6h
	ld b,l
	ld l,h
	add a,(hl)
	ld a,c
	ld hl,(0f5c2h)
	ld d,c
	call z,010fbh
sub_7cc6h:
	ld c,d
	add a,a
	ld h,(hl)
	add a,a
	ld e,l
	add a,d
	sbc a,h
	adc a,h
	or a
	inc de
	adc a,b
	dec h
	or h
	ld a,d
	ld b,0d7h
	rst 38h
	ret po
	sub (hl)
	adc a,c
	defb 0edh ;next byte illegal after ed
	ld d,l
	ret p
	jp p,00019h
	inc h
	ld (l6580h+2),hl
	or e
	ex (sp),hl
	cp 01bh
	push af
	inc (hl)
	or 095h
	push af
	ld a,l
	add a,(hl)
	rst 38h
	ld hl,01137h
	nop
	dec b
	inc e
	ret
	sub c
	ld (0d8ffh),a
	sbc a,h
	res 2,d
	add a,(hl)
sub_7cffh:
	sub a
	add a,a
	adc a,c
	cp 0ceh
	ld b,023h
	rst 38h
	ret m
	add hl,hl
	ld a,a
	ld (hl),a
	ld a,a
	sub h
	rst 38h
	ld d,c
	add a,e
	jp pe,02391h
	cp e
	ld a,a
	sbc a,a
	sub b
	ld a,(de)
	jp 08432h
	ld e,d
	ld l,e
	cp 054h
	ret m
	dec sp
	adc a,c
	rst 38h
	sbc a,h
	add a,b
	ld (de),a
	ld e,c
	ei
	call po,08123h
	exx
	sbc a,h
	res 1,b
	add a,l
	out (087h),a
	add a,a
	sub h
	ld b,05fh
	ld a,a
	ret nz
	adc a,l
	add a,h
	adc a,c
	rla
	ld a,a
	sub h
	call po,0f3c8h
	ld (hl),d
	dec sp
	ld (hl),0bbh
	pop bc
	adc a,(hl)
	ret p
	adc a,a
	ld a,e
	inc sp
	inc l
	ld (0ec17h),a
	adc a,d
	defb 0fdh,07fh,08ah ;illegal sequence
	add a,h
	adc a,a
	ld hl,(00d99h)
	dec h
	sub c
	add a,b
	sbc a,b
	sub c
	sbc a,h
	ret nz
	ld a,c
	ld (08c89h),hl
	rst 30h
	pop bc
	ret m
	ld c,c
	ld b,0d7h
	ld a,a
	ret p
	ccf
	add a,038h
	call z,0acfdh
	jp pe,l7646h
	add a,l
	dec b
	ld (hl),d
	inc hl
	scf
	pop bc
	or 093h
	ld l,a
	jp nz,03785h
	call m,09828h
	or c
	ld a,a
	ld de,0109ah
	ld (de),a
	ld (hl),e
	add hl,de
	ld d,b
	inc hl
	ret m
	ld (hl),c
	jr nc,l7e02h
	sub a
	sbc a,h
	ld (02219h),a
	ld (hl),a
	ld sp,0c43ah
	adc a,c
	ld b,0b7h
	add a,b
	ret po
	sub b
l7da0h:
	add a,h
	ld a,a
	ld d,a
	ret
	rla
	xor e
	add a,c
	jp p,08336h
	ld l,(hl)
	adc a,h
	pop bc
	pop bc
	call z,08a71h
	ld h,h
	ei
	sub a
	ld a,c
	adc a,a
	adc a,e
	ld (de),a
	sub d
	cp b
	adc a,b
	and c
	sub l
	ld a,c
	cp 015h
	sbc a,e
	ld a,(de)
	sbc a,a
	inc de
	ret
	inc hl
	cp 029h
	ld sp,l78f5h
	ret m
	ld a,b
	ld b,h
	ld b,0dbh
	rst 38h
	rst 28h
	add a,(hl)
	add a,h
	pop bc
	ld (hl),l
	ld d,(hl)
	ld a,a
	call 08180h
	add hl,de
	ld a,(hl)
	adc a,l
	ld d,a
	ret m
	and d
	call m,0f6b8h
	daa
	ld (hl),c
	adc a,h
	cp 0bch
	sub d
	nop
	sub a
	ld e,h
	inc e
	inc hl
	ld (hl),a
	ld hl,02222h
	nop
	sbc a,c
	ld (hl),c
	sbc a,h
	ret
	ld (hl),d
	add hl,hl
	inc hl
	ld sp,0887bh
	ret m
	dec a
	ld b,07fh
l7e02h:
	ld a,a
	ld b,0c4h
	ld b,h
	ld (hl),l
	rst 38h
	sub a
	sbc a,d
	add a,d
	cp 045h
	add a,088h
	add a,b
	add a,065h
	ld d,l
	ld l,h
	inc e
	cp (hl)
	or 02dh
l7e18h:
	add a,c
	jr z,l7da0h
	ld de,0323bh
	ld a,h
	cp 04ch
	ret m
	halt
	and e
	rst 38h
	call m,082cch
	or d
	adc a,(hl)
	ld a,(bc)
	ld sp,03122h
	ld b,h
	rst 30h
	ld b,(hl)
	add a,h
	call m,006ddh
	ld c,a
	rst 38h
	ret p
	ld a,c
l7e39h:
	ld a,a
	in a,(015h)
	ld a,c
	add a,c
	add hl,hl
	ret m
	djnz l7e97h
	ld d,l
	dec h
	sub h
	add a,h
	ld l,d
	jp nz,03289h
	sub c
	xor 021h
	cp e
	inc sp
	ld a,a
	rla
	ld e,h
	sub c
	ret m
	ld h,b
	ld (hl),e
	ld sp,08a29h
	add a,l
	ld de,092d2h
	cp 0adh
	rst 38h
	ld b,c
	sbc a,b
	sbc a,c
	call nz,0f7fdh
	ld b,05fh
	ld a,a
l7e69h:
	pop bc
	ld (hl),b
	add a,b
	push bc
	ld c,b
	ld d,l
	push hl
	call z,084ech
	ld e,h
	call z,l56fah
	ld a,h
	ld h,0fah
	sbc a,c
	adc a,d
	rlca
	ld a,h
	add hl,de
	ld l,l
	add a,b
	xor c
	add a,b
	ld l,0feh
	rrca
	push bc
	ld h,c
	sbc a,h
	ld (hl),c
l7e8ah:
	add a,d
	adc a,09ch
	inc hl
	ld de,03712h
	and e
	adc a,h
	add a,a
	and e
	ld sp,hl
	ld d,a
l7e97h:
	ld c,h
	or h
	ld (hl),l
	ld b,0ffh
	ld a,a
	pop bc
	ld d,h
	ld b,(hl)
	ld a,a
	ei
	add a,l
	ld a,h
	ld h,l
	rst 38h
	sbc a,l
	ret m
	sub e
	add a,c
	ld e,b
	ld h,e
	rst 28h
	ld b,(hl)
	ex af,af'
	sub c
	add hl,de
	add a,b
	dec d
	add a,e
	ld d,l
	add a,h
	ld d,050h
	adc a,l
	ld (hl),c
	sbc a,d
	add a,b
	ld a,l
	and d
	ld bc,09290h
	and d
	rst 38h
	adc a,a
	rst 38h
	ld b,(hl)
	ld b,d
	or h
	ld h,(hl)
	rst 38h
	ex (sp),hl
	ld c,c
	ld b,071h
	rst 38h
	ret m
	scf
	ld b,h
	push iy
	ex de,hl
	ex af,af'
	ld h,(hl)
	di
	and h
	cp 069h
	ld h,l
	di
	add a,b
	ld a,c
	rlca
	dec d
	ld l,h
l7ee2h:
	jp l49fah
	ei
	add a,h
	jr nc,l7f00h
	ld d,061h
	cp d
	adc a,h
	ld a,a
	ld (hl),c
	ld (hl),d
	defb 0fdh,090h,015h ;illegal sequence
	add a,d
	adc a,a
	inc e
	add a,a
	jr l7e8ah
	ld a,b
	inc de
	rst 0
	dec (hl)
	sub h
	rst 38h
	inc sp
l7f00h:
	rst 38h
l7f01h:
	adc a,a
	pop bc
l7f03h:
	ld h,l
	rst 0
	add a,b
	dec (hl)
	ld a,a
	push af
	add a,e
sub_7f0ah:
	ld h,d
	add a,b
l7f0ch:
	rst 8
	rst 30h
	jr z,l7f0ch
	or h
	add a,c
	call m,0d1f9h
	add a,c
	ld hl,l707fh
	call pe,02679h
	sbc a,h
	add a,020h
	ld (de),a
	ret m
l7f21h:
	and 0ffh
l7f23h:
	dec b
sub_7f24h:
	sbc a,c
	sub e
	call m,01c86h
l7f29h:
	halt
	ld a,a
	adc a,h
l7f2ch:
	ld c,b
	inc de
	add hl,de
	jp m,08059h
	defb 0ddh,0ffh,0feh ;illegal sequence
	ld c,0c3h
	ld (hl),b
	sub c
	ld h,l
	cp c
l7f3bh:
	ld a,a
l7f3ch:
	add a,h
	jr nc,$-125
	ld l,076h
sub_7f41h:
	ld d,(hl)
	ld a,a
	call m,08727h
	ld h,08fh
	adc a,h
	rst 38h
	and e
	cp 082h
	ld hl,01367h
	inc hl
	ld sp,hl
	ld (hl),c
	inc hl
	ld d,c
	adc a,h
	ld c,c
	add a,d
	ld (hl),l
	ei
	inc b
	add a,06ch
	rst 38h
	ld (hl),b
sub_7f5fh:
	jr l7f3ch
	ld a,a
	add a,d
	and 0ffh
	ccf
l7f66h:
	add a,d
	adc a,b
	ld b,(hl)
	ld b,c
	halt
	ld a,a
	ld (hl),a
	ld d,a
	and d
	ld (hl),e
l7f70h:
	cp 06ah
	ld h,d
sub_7f73h:
	adc a,c
	ld hl,(0857ch)
	ld c,b
	ld (l77f2h),hl
	sub c
	call p,084b7h
	push af
	sub (hl)
	adc a,a
	ld (de),a
	add a,c
	ld l,088h
	ld h,d
	ld e,c
	rst 38h
	call po,021fah
	sbc a,l
	ld c,099h
	ld a,a
	add hl,sp
	ld b,h
	ld a,a
	ld a,a
	ld b,h
	ld a,a
l7f96h:
	ld b,094h
	adc a,h
l7f99h:
	ret p
	adc a,e
	ld a,a
	ld (hl),d
	ld a,h
	call m,0fd2ah
	ld (hl),c
	ld l,h
	defb 0fdh,082h,045h ;illegal sequence
	ld a,a
	jp m,l7188h
	ret c
	defb 0fdh,0cch,02ch ;illegal sequence
	dec d
	ld d,07ch
	inc de
	add a,l
	adc a,h
	inc hl
	call p,sub_7ba5h
	ld hl,l5e85h
	sub c
	ld h,071h
	adc a,l
	add hl,bc
	ld c,b
	add a,h
	inc de
	ld hl,0cbf8h
	ld b,080h
	or 0ffh
	ld a,a
	add a,d
	call nz,098c7h
	ld a,(hl)
	ret
	ld a,a
	ld l,h
	adc a,h
	cp 050h
	ld d,(hl)
	pop hl
	jp 0f7d5h
	exx
	rst 30h
	or e
l7fdeh:
	ret m
	and 08eh
	and c
	add a,071h
	jp p,l76f5h
	ei
	dec d
	cp 01eh
	add a,b
	cpl
	sub c
	rlca
	add a,e
	adc a,c
	sub d
	ld de,085f8h
	add a,d
	ld sp,l7a19h
	ld b,04ah
	cp b
	dec hl
	adc a,b
	rst 38h
	ret m
