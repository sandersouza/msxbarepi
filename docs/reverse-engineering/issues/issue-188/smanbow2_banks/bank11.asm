; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank11.asm /tmp/smanbow2_bank.bin

	org 04000h

l4000h:
	adc a,l
	ld b,a
	nop
	nop
	nop
	jp l4bf3h
	inc b
	ex af,af'
	ex af,af'
	inc b
	inc b
	ld bc,00303h
	rlca
l4011h:
	nop
	jp m,00001h
	nop
	inc c
	ex af,af'
	inc c
	nop
	nop
	ld (bc),a
	ret nz
	ret nz
	ret z
	jp nz,03cf8h
	rlca
	jr nc,$+98
	nop
	inc bc
	ld h,b
	jr l404ah
	inc e
	ld c,015h
	ld e,020h
	rra
	rla
	ld b,003h
	rrca
	ld c,01ch
	jr l4057h
	ret nz
	nop
	ret po
	ret p
	call p,00fdeh
sub_403fh:
	scf
	rst 38h
	ret m
	ld a,(bc)
	ld b,b
	sub b
	dec b
	nop
	defb 0fdh,001h,04eh ;illegal sequence
l404ah:
	rlca
	inc c
	djnz l406dh
	ld h,b
	ccf
	jp p,03ffch
	cp 01eh
	cp (hl)
	ret nz
l4057h:
	nop
	ld b,b
	ld (bc),a
	djnz l409bh
	rra
	ld e,h
	rlca
	ld bc,0381ch
	jr nc,l4064h
l4064h:
	nop
	ld (0f6d8h),hl
	ld (iy+078h),e
	inc b
	ccf
l406dh:
	ld b,c
	dec sp
	ld bc,000f2h
	ld (bc),a
	rrca
	halt
	ccf
	call pe,0e251h
	ld h,c
	add a,b
	ld (hl),d
	ccf
	ld (hl),b
	ret nc
	ccf
	jr $+65
	jr c,l4098h
	ld e,00fh
l4086h:
	rlca
	inc c
	ccf
	ld bc,l7c40h
	ld a,(hl)
	rra
	add a,b
	ld d,008h
	ld a,0ffh
	nop
l4094h:
	call po,05a00h
	rra
l4098h:
	nop
	rst 38h
	inc bc
l409bh:
	add hl,bc
	ld a,h
	add hl,bc
	inc bc
	rst 38h
	rra
	or b
	ld h,h
	jr nc,l40f5h
	cp b
	nop
	call nc,0d8dah
	djnz l4094h
l40ach:
	djnz l4086h
	jp c,0d41ch
	cp b
	ld d,b
	ld c,e
	daa
	inc bc
	jr nz,l40f4h
	dec e
	ld a,d
	nop
	ret nc
	nop
	ret pe
	ld d,0e8h
	jr l40ach
	call nc,0d0e8h
	jp pe,0000fh
	inc bc
	rlca
	ld a,a
	rst 38h
	ld a,a
	rrca
	inc bc
	ld c,0c0h
	and b
	xor b
	daa
	call nc,01ed6h
	ret po
	ld c,07ch
l40dah:
	ld h,c
	inc sp
	inc a
	ld b,b
	rrca
sub_40dfh:
	and (hl)
	ld d,b
	ld e,033h
	jr l4128h
	ld e,l
	sbc a,(hl)
	nop
	add hl,de
	inc a
	nop
	dec c
	ex (sp),hl
	rrca
	ret pe
	ld bc,000e3h
	rlca
	push bc
l40f4h:
	add a,b
l40f5h:
	nop
	rst 0
	rlca
	adc a,a
	ccf
	rst 18h
	nop
	ret m
	jr nz,l412fh
	inc e
	dec b
	dec d
	dec (hl)
	ld (de),a
	dec d
	dec b
	inc e
	cp e
	call c,0a0dfh
	ret p
	call m,sub_7bf0h
	ret nz
	dec h
	nop
	ld (bc),a
	ld e,c
	sub e
	or (hl)
	rst 8
	ld h,c
	ex af,af'
	pop af
	djnz l412ah
	ld b,b
	ld a,(0ec57h)
	ld a,a
	jp 0f060h
	ret p
	ld h,b
	ld e,(hl)
	rst 20h
l4128h:
	and d
	sub (hl)
l412ah:
	sub l
	add a,(hl)
	jr nc,l412eh
l412eh:
	ld c,l
l412fh:
	and (hl)
	and d
	inc l
	jp 0385ch
	jr l4143h
	nop
	ld c,018h
	jr c,l419fh
	ld b,b
	inc bc
	inc c
	inc de
	rla
	ld l,02ch
l4143h:
	rlca
	inc l
	ld l,017h
	inc de
	inc c
	rra
	jr nz,$+50
	ret z
	ret pe
	ld (hl),h
	inc (hl)
l4150h:
	ld b,034h
	ld (hl),h
	ret pe
	ret z
	jr nc,$+33
	ret
	ld a,01eh
	push de
	sub h
	ld (hl),b
	and l
	ld b,070h
	jr nc,l419ah
	ld e,040h
	ret nz
	ld a,078h
	inc e
	inc c
	ld c,006h
	ld c,h
	ld b,0f3h
	inc e
	ld l,h
	ld a,b
	ld b,b
	ld a,011h
l4174h:
	nop
	ld h,028h
	ld c,b
	ld d,b
	ld d,b
	ld c,b
	jr z,$+40
	ld l,h
	ld de,03e40h
	adc a,b
	nop
	ld h,h
	inc d
	ld (de),a
	ld a,(bc)
	ld a,(bc)
	ld (de),a
	inc d
	ld h,h
l418bh:
	ld h,l
	adc a,b
	ld b,b
	push bc
	dec d
	sbc a,h
	inc c
	jr nz,l41f4h
	ret nz
	nop
	nop
	ld h,b
	jr nz,l419ah
l419ah:
	inc c
	rlca
	inc bc
	ret nz
	ret po
l419fh:
	ld d,b
l41a0h:
	jr nc,l4174h
	ld b,061h
	inc bc
	nop
	ld b,004h
	ld sp,hl
	djnz l418bh
	ret nz
	inc bc
	ld b,(hl)
	inc b
	jp z,0cacah
	xor c
	ld b,b
	call pe,01f6ah
	dec h
	ex de,hl
	ld (055eah),a
	ld (bc),a
	ex af,af'
	adc a,e
	jr nz,l4201h
	ld b,06bh
	cp b
	inc de
	ld b,080h
	ld d,d
	ld (0c9ffh),a
	ld b,b
	jr nc,$+82
	ld hl,(08880h)
	and l
	ld d,c
	cp 087h
	dec b
	rra
	ld (de),a
	sub a
	ld d,l
	cpl
	and (hl)
	inc l
	ld (bc),a
	jr c,$+78
	ld (bc),a
	jr nz,l422bh
	djnz $+18
	ld h,h
	ld b,b
	ld c,b
	ld e,e
	jr nz,l423ch
	jr nz,l4237h
	and c
	inc bc
	ld (bc),a
	ld a,(de)
	nop
	ld a,09ch
l41f4h:
	ld hl,(08038h)
	cpl
	ld d,c
	ld h,b
	rlca
	sub e
	sub d
	cp a
	adc a,035h
	inc l
l4201h:
	ld hl,03e1eh
	in a,(05fh)
	scf
	ld d,(hl)
	ld c,d
	djnz l420bh
l420bh:
	ld h,(hl)
	ld b,b
	adc a,h
	sbc a,b
	inc h
	ld bc,0bc06h
	ld a,(bc)
	ld h,b
	ld h,e
	ld a,a
	inc e
	xor h
	nop
	and d
	ld b,c
	inc bc
	ld c,01dh
	ld c,011h
	ret po
	djnz $+14
	cp l
	nop
	rst 20h
	rst 38h
	inc c
	push bc
	ld (bc),a
l422bh:
	ld a,0d4h
	ld d,h
	ld h,b
	ld e,0ddh
	jp nz,0003fh
	ld c,b
	nop
	ld l,h
l4237h:
	ld b,c
	and c
	push bc
	ld c,0fah
l423ch:
	xor b
	call m,0fefeh
	rlca
	ld a,0c0h
	ld (bc),a
	ret nz
	call po,00448h
	rlca
	ex af,af'
	ld a,0c0h
	adc a,e
	cpl
	jr nc,$-91
	sub c
	inc c
	dec hl
	ld b,068h
	ld e,c
	add a,b
	xor 040h
	nop
	add a,0feh
	jr c,l4268h
	nop
	ld b,l
	add a,d
	ex af,af'
	ret nz
	ld (hl),b
	cp b
	ld (hl),b
	jr nz,l4277h
l4268h:
	ccf
	ld bc,07f7fh
	ld a,h
	inc bc
	ld b,b
l426fh:
	inc bc
l4270h:
	daa
	push hl
	ld h,h
	and b
	ld l,b
	add a,b
	ret po
l4277h:
	ret m
	ld c,b
	call m,00000h
	adc a,h
	sub c
	add a,d
	and c
	sub l
	ld e,043h
	and 018h
	and b
	nop
	and b
	and h
	call pe,0cb09h
	ld l,e
	inc sp
	add hl,de
	cp h
	adc a,c
	add a,b
	ld h,h
	add a,c
	add a,c
	add a,l
	add a,l
	dec h
	scf
	ld bc,0d390h
	ld d,(hl)
	ld c,h
l429eh:
	sbc a,b
	and b
	jr nz,l429eh
	ld a,(00172h)
	ld d,(hl)
	ld d,(hl)
	ld c,d
	ld bc,023e1h
	inc bc
	push hl
	ld (hl),l
	sbc a,(hl)
	jr nc,l42b7h
	ld bc,l6a4eh
	ld l,d
	ld d,d
	add a,b
l42b7h:
	add a,a
	call nz,011deh
	and b
	djnz l4305h
	ld c,h
	rst 20h
	ex af,af'
	sbc a,b
	ld sp,hl
l42c3h:
	jr z,l42d5h
	ld e,h
	add hl,sp
	defb 0ddh,014h,029h ;illegal sequence
	ex af,af'
	ld (0c71fh),hl
l42ceh:
	sbc a,b
	ld a,b
	ld bc,00034h
	ex af,af'
	cp h
l42d5h:
	jr nc,$-106
	inc l
	djnz $+68
	djnz $+36
	add a,b
	ld (bc),a
	ld c,a
	djnz $+5
	or 040h
	jr nc,l4307h
	djnz l42f0h
	ld e,l
	ld de,0c286h
	inc d
	res 6,b
	ld c,b
	adc a,d
l42f0h:
	call po,0e0f6h
	and b
	add a,h
	add a,b
	sub h
	jp 00e4ch
	ld e,001h
	ld hl,03d2ah
	inc c
	add hl,hl
	inc (hl)
	dec h
	ld b,d
	ld b,h
l4305h:
	jr nz,l42ceh
l4307h:
	ld a,(bc)
	djnz l42c3h
	dec h
	ld c,d
	sbc a,h
	ld a,(02454h)
	ld b,h
	ld e,a
	nop
	xor e
	xor d
	ld (de),a
	call po,02020h
	djnz $+7
	ld hl,00127h
	add hl,hl
	jp z,0c044h
	ex af,af'
	ret nz
	or (hl)
	ret nz
	inc c
	ld b,h
	ex af,af'
	sub b
	adc a,b
	ld (090c0h),hl
	cp (hl)
	ld b,b
	ex af,af'
	inc l
	add hl,de
	ld e,h
	ld c,(hl)
	ld l,h
	jr nc,l4338h
l4338h:
	add hl,sp
	ld c,b
	add hl,hl
	ld (hl),h
	jr nz,l4340h
	jr nz,l4341h
l4340h:
	xor d
l4341h:
	inc a
	adc a,l
	nop
	ld a,(03672h)
	inc c
	sbc a,h
	ld (de),a
	sub h
	ld l,027h
	inc b
	ld b,b
	call m,07f20h
	add hl,hl
	ld bc,l4912h
l4356h:
	add hl,bc
	ld d,b
	ld (l4150h),hl
	rst 18h
	ld de,0ff21h
	and h
	ret nz
	inc d
	inc (hl)
	sub d
l4364h:
	add hl,bc
	ld a,(bc)
	ld b,h
	ld a,(bc)
	add a,d
	sbc a,a
	inc de
	add a,h
	xor h
	call z,0b0e3h
	ld a,(hl)
	ld b,h
	ld a,b
	rlca
	ld c,d
	sub d
	defb 0edh ;next byte illegal after ed
	call nz,0321ch
	rst 8
	adc a,c
	add a,092h
	jr z,$-41
	and d
	rst 0
	rst 38h
	call c,02378h
	inc b
	inc a
	ld c,d
	or l
	ld l,l
	sbc a,d
	rst 8
	ld e,c
	rlc c
	jr nc,l43bah
	ld h,(hl)
	ld b,b
	ret nc
	adc a,h
	and (hl)
	ld b,d
	ld b,b
	nop
	ld (hl),d
	add a,b
	dec a
	ld a,a
	ld e,c
	cp 0d0h
	rlca
	inc b
	ld c,d
	ld c,d
	add hl,hl
	inc h
	ld c,070h
	nop
	add a,b
	adc a,b
	inc c
	inc d
	jr $+42
	jr nc,l43c2h
	sbc a,h
	adc a,e
	ret p
	ccf
	sbc a,h
	cp d
	add a,c
	ld e,a
l43bah:
	or l
	or l
l43bch:
	ld d,(hl)
	ld e,e
	jr l4364h
	ld d,b
	ld h,b
l43c2h:
	ld d,b
	pop bc
	ld d,(hl)
	and d
	adc a,l
	ld b,004h
	inc l
	ld e,b
	sub b
	jr nz,l4356h
	ld c,001h
	ld de,01850h
	inc d
	ld d,d
	inc c
	jp po,00629h
	pop bc
	adc a,c
	and c
	ret nz
	cp 07fh
	ccf
	rrca
	add a,d
	rlca
	ld d,d
	ld d,d
	sub h
	inc h
	cpl
	dec b
	jr nc,$+8
	ld a,(bc)
	add a,e
	ld b,l
	xor l
	ld h,b
	jr nz,l4426h
	ld a,(de)
	ld (hl),e
	add hl,bc
	jr nz,l43bch
	inc e
	nop
	ld (hl),b
	ld e,000h
	xor l
	xor l
	ld l,d
	jp c,00014h
	jr c,l4450h
	xor a
	ld h,063h
	or l
	adc a,d
	xor l
	or c
	inc l
	cp a
	ld h,e
	ld b,c
	and c
	call m,01e7eh
	rlca
	ex af,af'
	ld d,d
	ld c,c
	and b
	and c
	adc a,b
	jr nc,l4424h
	adc a,(hl)
	add a,b
	ld h,(hl)
	ld (bc),a
	dec bc
	ld sp,00c02h
l4424h:
	xor c
	cp (hl)
l4426h:
	ld (bc),a
	ccf
	sbc a,023h
	add a,e
l442bh:
	inc a
	ld d,d
	xor l
	or (hl)
	ld e,c
	defb 0fdh,040h,01ch ;illegal sequence
	ld e,c
	ld e,c
	defb 0ddh,001h,0dah ;illegal sequence
	defb 0ddh,0cbh,08dh,083h ;res 0,(ix-073h) & ld e,(ix-073h)
	ld c,l
	ld e,b
	srl c
	rst 38h
	jr nz,l44b7h
	ld (hl),036h
	nop
	ld (hl),a
	or a
	ld (hl),a
	and (hl)
	ld h,h
	add a,l
	ld h,(hl)
l444dh:
	ld (hl),049h
	ld h,h
l4450h:
	or 01fh
	nop
	inc d
	ld c,c
	ld d,c
	push bc
	jp 0d2c5h
	ret nc
	or l
	ld d,l
l445dh:
	ld b,b
	ld e,d
	inc d
	or c
	nop
	jr nc,$+86
	ld h,016h
	ld b,a
	add a,a
	ld b,a
	ld (bc),a
	sub a
	ld d,a
	or a
	ld d,(hl)
	ld b,054h
	pop de
	jp nc,08080h
	dec l
	dec l
	ld l,l
	ld l,(hl)
	ld (bc),a
	ld l,l
	ld h,a
	ld b,l
	ld b,e
	dec h
	inc l
	dec bc
	sub b
	jp p,l6860h
	nop
	ld l,h
	ld l,h
	ld l,(hl)
	xor 06eh
	adc a,04ch
	adc a,b
	dec d
	ld c,b
	ld l,h
	ld c,b
	pop bc
	ld b,b
	rra
l4494h:
	ex af,af'
	dec h
	add hl,hl
	ld h,c
	ld h,e
	dec b
	ld h,c
	ld l,d
	ld l,b
	ld l,(hl)
	add hl,hl
	ld c,h
	cp a
	jr c,$+98
	nop
	jr z,l44f2h
	inc l
	ld c,08eh
	ld c,0aeh
	ld l,00bh
	xor 02ch
	inc c
	jr z,l444dh
l44b2h:
	ld c,e
	jp (hl)
	add a,h
	ld d,016h
l44b7h:
	ld (hl),000h
	ld (02209h),a
	jr nz,l44d0h
	ld d,00ch
	ld (bc),a
	ret c
	djnz l4494h
	ret c
	ret c
	ld b,b
	call c,09c00h
	sbc a,h
l44cbh:
	jr l445dh
	ret nc
	ld d,l
	sub b
l44d0h:
	sbc a,e
	ld (de),a
	ld l,004h
	jp (hl)
	call nz,0c0ddh
	or b
	ld (hl),014h
	ld c,(hl)
	djnz $-48
	ld b,c
	rra
	ld d,b
	sbc a,b
	ld e,b
	inc e
	nop
	ld bc,l5c5ch
	call c,01858h
	ld d,b
	in a,(06ah)
	ld b,080h
	nop
	ld (de),a
l44f2h:
	ld (03e3ch),a
	jp p,00af2h
	ld c,066h
	ld h,(hl)
	ld c,0d4h
	xor c
	or d
	daa
	sub a
l4501h:
	nop
	call po,042e4h
	ld c,d
	call po,0ca4ah
	ld (bc),a
	jr nz,l4501h
	add a,c
	ex af,af'
	ld c,00ah
	ld de,00e12h
	ld c,0b1h
	dec d
	ld e,070h
	ret m
	ld b,h
	jr nz,l4574h
	xor b
	call nc,0a844h
	and d
	sbc a,b
	ld c,l
	xor d
	ld (bc),a
	jr l44cbh
	ld c,(hl)
	and h
	ld (bc),a
	add a,h
	inc l
	ld c,(hl)
	ld c,(hl)
	inc c
	ld e,l
	nop
l4531h:
	ld de,08200h
	ret po
	call z,0e0cch
	sbc a,(hl)
	ld a,(bc)
	sbc a,(hl)
	ret m
	ld a,b
	sbc a,b
	ld a,h
	nop
	cp h
	and l
	inc (hl)
	xor d
	ld b,b
	ld (bc),a
	adc a,d
	ld hl,(0adb8h)
	ld hl,(04635h)
	ld de,l7e21h
	inc e
	adc a,d
	add a,d
	inc e
	ret po
	ret po
	inc l
	ld hl,(0e0a0h)
	ld de,l629fh
	sbc a,04ah
	ex (sp),hl
	ret
	exx
	inc l
	sbc a,h
	call p,0e0a6h
	nop
	ld h,e
	push bc
	jr nz,l4531h
	rst 30h
	rra
	or 0e4h
	ld h,l
	inc bc
	sbc a,(hl)
	adc a,a
l4574h:
	ld l,e
	call pe,01839h
	add hl,hl
	djnz l4583h
	adc a,b
	ld d,d
	dec c
l457eh:
	ex (sp),hl
l457fh:
	nop
	jr z,l458ah
	xor c
l4583h:
	and c
	add hl,bc
	add hl,bc
	adc a,b
	ld h,(hl)
	ld h,b
	add hl,sp
l458ah:
	ld d,001h
	add a,0a6h
	and e
	adc a,a
	ld hl,0d921h
	ld (0f6a1h),hl
	sub e
	dec h
	ld d,l
	jr nc,l457eh
	sub l
	ld (hl),c
	call c,0b0a6h
	call pe,0b00ah
	ld e,b
	djnz l457fh
	ld (hl),b
	dec b
	sub h
	add a,h
	rst 38h
	sub a
	ld d,08ah
	inc d
	rst 28h
	push bc
	adc a,h
	and (hl)
	sub h
	jp p,0b608h
	sbc a,(hl)
	ccf
	nop
	ld (hl),h
	jr nz,$+47
	ld h,02bh
	dec hl
	ret nz
	dec l
	inc l
	cpl
	inc bc
	ld b,08bh
	jp nc,01b00h
	dec hl
	ld c,015h
	sbc a,h
	dec c
	ex (sp),hl
	nop
	cpl
	ld a,(de)
	ld l,(hl)
	inc de
	ld c,0d8h
	dec hl
	inc c
	dec l
	ld l,02fh
	inc l
	inc de
	dec c
	add hl,sp
	ccf
	ld a,d
	ld hl,(0bd3fh)
	ld hl,(01c3fh)
	ld hl,(03d3fh)
	ld hl,(01d3fh)
	ld hl,(0d93fh)
	inc e
	nop
	inc b
	sbc a,h
	rlca
	add a,0d9h
	cp b
	dec hl
	xor l
	adc a,04ch
	or b
	ld de,0a32bh
	exx
	ld l,02eh
	rrca
	or h
	ld d,0b5h
	ld a,b
	and (hl)
	rrca
	pop bc
	ld (hl),e
	rrca
	add hl,bc
	ld b,(hl)
l4610h:
	sbc a,b
	nop
	add hl,bc
	ld d,h
	dec hl
	ld bc,0a16eh
	ld d,l
	inc (hl)
	dec (hl)
	nop
	inc b
	dec bc
	dec bc
	ld a,(bc)
	ld c,d
	ld bc,0320ch
	dec bc
	dec l
	dec bc
	ld (de),a
	jp nc,02b1fh
	add hl,hl
	and l
	scf
	rra
	ld c,l
	jr nz,l4660h
	rra
	exx
	jr nz,$-80
	sbc a,(hl)
	inc l
	rra
	adc a,e
	dec hl
	add hl,bc
	rra
	ret nc
l463eh:
	ld a,(bc)
	inc c
	xor (hl)
	ld de,l6f0bh
	adc a,(hl)
	ld c,00bh
	ld l,a
	cp h
	nop
	rst 8
	dec bc
	ld c,005h
	rra
	nop
	adc a,a
	add hl,de
	ld e,(hl)
	ld l,000h
	rst 8
	ld l,e
	nop
	ld h,a
	nop
	nop
	rst 30h
	rst 8
	add hl,hl
	nop
	cp c
l4660h:
	jr nz,l4662h
l4662h:
	rst 30h
	dec a
	ex af,af'
	nop
	sbc a,(hl)
	ld b,e
	nop
	sub 0d6h
	adc a,l
	inc bc
	nop
	add a,007h
	dec bc
	ld a,(bc)
	sbc a,09bh
	inc (hl)
	ld b,h
	nop
	ld c,a
	ld c,e
	inc hl
	ld c,e
	ld c,(hl)
	ld (bc),a
	ld b,h
	ld b,b
	sub a
	rst 0
	ex af,af'
	ld bc,0d91fh
	ld (hl),b
	ld a,000h
	sub 01dh
	ld c,c
	jr nz,l463eh
	ld c,c
	nop
	ld c,e
	ld (bc),a
	add hl,sp
	add hl,bc
	nop
	inc e
	dec c
	add hl,bc
	ld bc,0f208h
	dec a
l469bh:
	ld b,h
	ld c,l
	ld c,(hl)
	ld e,c
	ld b,d
	nop
	ld b,a
	ld b,b
	push bc
	ld hl,(09c2fh)
	ld de,0d02fh
	out (004h),a
	nop
	jp 08750h
	ld b,c
	nop
	sub (hl)
	ld d,d
	jp (hl)
	ret z
	xor d
	ld a,c
	jp z,001f6h
	jr nz,$+5
	ld (bc),a
	rrca
	ld bc,0400fh
	inc de
	ld c,a
	ld c,a
	ld b,c
	ld bc,00148h
	ex af,af'
	ld c,h
	ld c,b
	nop
	ld b,b
	ld c,b
	ld a,e
	inc b
	nop
	dec a
	ld c,e
	nop
	and l
	ccf
	ld bc,00e9dh
	ld bc,l7503h
	ld (bc),a
	ld b,b
	add a,a
	ld de,04c4ch
	add a,a
l46e4h:
	rla
	inc bc
	dec de
	ld (bc),a
	dec d
	rst 8
	inc hl
	ld (hl),a
	inc l
	dec d
	dec a
	inc hl
	add a,h
	ld b,e
	nop
	dec c
	inc c
	ld bc,0dc0ah
	nop
	rlca
	ret c
	ld bc,0a4e2h
	ld d,e
	ld c,c
	ex de,hl
	ld (hl),c
	nop
	or c
	adc a,h
	ld (hl),l
sub_4706h:
	ld d,001h
	pop hl
	ld a,a
	rst 28h
	rla
	in a,(00bh)
	nop
	dec (hl)
	rlca
	ld c,a
	ld d,0ceh
	jp pe,00059h
	ld a,049h
	call c,sub_6c9bh
	ld (hl),c
	nop
	and e
	ld l,h
	jp z,l65efh
	ld (00057h),hl
	ld b,(hl)
	jp (hl)
	ld h,b
	inc c
	jp nc,l4bfah
	nop
	xor a
	ld (0c308h),a
	ld a,(0ffe8h)
	or 000h
	ld (bc),a
	and 0ffh
	and 07fh
	or 080h
	ld (00a80h),a
	di
	out (099h),a
	ld a,089h
	ei
	adc a,b
	inc b
	ld a,(011e7h)
	rst 18h
	ld (004a0h),a
	ld hl,0c10eh
	ld hl,(0047ch)
	dec b
	ld (hl),008h
	ld hl,(0047fh)
	xor 021h
	ld hl,(00482h)
	jp nz,0852ah
	inc b
	xor b
	adc a,b
	inc b
	nop
	ld hl,(08b43h)
	inc b
	or 02ah
	adc a,(hl)
	add hl,bc
	ld e,d
	sub c
	add hl,bc
	sub h
	sub 009h
	sub a
	add hl,bc
	and c
	sbc a,d
	inc b
	sbc a,02ah
	sbc a,l
	inc b
	ld bc,0cde8h
	jp c,0cd4dh
	ld a,d
	ld (bc),a
	nop
	ld h,e
	dec b
	call 07965h
	call 0929fh
	dec b
	and d
	ld (bc),a
	and l
	ld (bc),a
	ld b,b
	rlca
	ld de,078a4h
sub_479bh:
	call sub_5bceh
	inc h
	call 00baeh
	add hl,sp
	ld (bc),a
	xor b
	add a,d
	ld (bc),a
	dec hl
	ld h,b
	call 005abh
	ex af,af'
	jp m,0cd5ch
	jp (hl)
	ld a,(de)
	ld d,b
	ld e,b
	nop
	ld a,(0c13dh)
	or a
	jp z,04c8bh
	ld a,080h
	ld de,0050fh
	ld a,001h
	ld (01106h),a
	pop bc
	ld a,0feh
	xor c
	inc bc
	pop bc
	ld (0c3a3h),a
	ld a,093h
	call po,00707h
	and d
	djnz $-59
	call 01a03h
	ld b,005h
	halt
	ret z
	ld e,l
	and b
	and c
	dec hl
	ld a,(0c395h)
	ld l,003h
	call z,0cd4ch
	or h
	ld c,l
	add hl,bc
	ld d,d
	ret
	ld (de),a
	ld d,023h
	ld c,c
	ccf
	ld (bc),a
	ld d,d
	ld (bc),a
	ld c,a
	ld (bc),a
	inc h
	ld b,e
	ld (bc),a
	ld b,b
	ccf
	ld (bc),a
	jr nz,l4833h
	ld b,d
	ld h,03eh
	pop bc
	cp 01eh
	ld (bc),a
	jp c,04cf0h
	dec a
	ld (00b3eh),a
	ex af,af'
	pop de
l4811h:
	jp 0323ch
	inc bc
	ld a,(l5013h)
	pop bc
	dec c
	inc bc
	inc a
	jp nz,0d05eh
	dec a
	xor a
	ret
	ld hl,0023bh
	ld c,l
	ld (l4d37h),hl
	ld hl,0055bh
	djnz l4867h
	ld c,l
	ld hl,(l5e08h)
	inc hl
l4833h:
	ld d,(hl)
	ld b,023h
	ld a,d
	or e
	jp z,01479h
	add a,d
	ex de,hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(0dc15h)
	ld (de),a
	inc e
	ld bc,l71ebh
	inc hl
	ld (hl),b
	jp l4d13h
	and 04ah
	rlca
l4850h:
	nop
	dec b
	ld d,005h
	rra
	dec b
	ld (02e05h),hl
	nop
	dec b
	add hl,de
	dec b
	ld sp,l5b05h
	dec b
	ld e,(hl)
	nop
	dec b
	ld h,c
	dec b
	ld h,a
l4867h:
	dec b
	ld l,d
	dec b
	ld (hl),b
	ld (l7305h),hl
	and c
	ld b,b
	dec b
	rra
	sbc a,c
	ld e,b
	ld l,b
	ld e,b
	ld c,(hl)
	nop
	ld e,b
	inc a
	ld e,b
	ld a,l
	ld e,b
	ld l,e
	ld e,b
	ld (hl),a
	nop
	ld e,b
	ld l,h
	ld e,l
	ld (02558h),hl
	ld e,b
	ld l,(hl)
	nop
	ld e,b
	ld (hl),h
	ld e,b
	ld a,d
	ld e,b
	ld (hl),c
	ld e,b
	dec hl
	rlca
	ld e,b
	ret
l4895h:
	di
	ld hl,0ec38h
	ld (bc),a
	rst 10h
	ld c,l
	ld bc,0a0f6h
	ldir
	ld hl,0c0f9h
	ld a,b
	nop
	ld a,0c3h
	ld (03841h),a
	inc b
	inc de
	ld (0fff1h),a
	adc a,h
	jr c,$-107
	sbc a,h
	adc a,e
	dec b
	rst 18h
	di
	or 010h
	ld (00d04h),a
	adc a,h
	add a,b
	inc bc
	ld h,d
	ld (bc),a
	inc bc
	adc a,a
	and d
	ld (hl),d
	xor h
	add hl,hl
	dec (hl)
	ld de,03828h
	di
	add hl,sp
	jp 0e623h
	rst 28h
	inc hl
	pop bc
	xor a
	ld (003b1h),hl
	ei
	ret
	sbc a,(hl)
	add hl,de
	ld e,a
	inc hl
	ret m
	ld d,h
	ld b,04eh
	dec b
	ld c,d
l48e4h:
	ld d,04eh
	ld de,0340eh
	push bc
	ld d,(hl)
	ld c,0d0h
	ld d,a
	ret po
	ld c,0c9h
	push af
	sub e
	rst 18h
	inc l
	sub b
	in a,(099h)
	rrca
	call c,01a9dh
	xor a
	inc c
	add a,d
	ld (0c1a0h),a
	rlca
	call c,0e624h
	ld l,l
	inc bc
	ld l,b
	pop af
	ld c,e
	ld c,b
	ret c
	call z,0ca00h
	add a,d
	adc a,(hl)
l4912h:
	call z,04830h
	jp c,008ceh
	sbc a,h
	add a,h
	sub b
	add a,(hl)
	rlca
	add a,(hl)
	sbc a,h
	ex af,af'
	add a,(hl)
	sub d
	sub 090h
	rlca
	sbc a,h
	adc a,07eh
	sub d
	and (hl)
	ld h,(hl)
	rlca
	ld b,050h
	ld a,(bc)
	rlca
	adc a,086h
	add a,h
	ld (hl),092h
	adc a,00fh
	dec c
	call z,02702h
	sub (hl)
	jr z,$-108
	ld (bc),a
	rra
	cp b
	ret c
	ccf
	rla
	sub d
l4945h:
	sbc a,h
	jp c,01f3fh
	ld b,0dah
	sbc a,h
	rla
	add a,b
	sbc a,08eh
	ret nc
	jp z,092d0h
	jr z,l4986h
	ld d,b
	adc a,058h
	add a,(hl)
	adc a,012h
	ld hl,(09252h)
	ld d,092h
	ld l,e
	ld a,(bc)
	inc l
	nop
	inc c
	sub b
	dec c
	ld a,(bc)
l4969h:
	ld (de),a
	inc l
l496bh:
	ld (bc),a
	ld c,034h
	sbc a,h
	ld a,(de)
	rrc a
	inc c
	rlca
	ld (de),a
	ld l,00fh
	sub b
	ld h,04ah
	jp c,01e67h
	ld l,e
	ld e,l
	push bc
	rlca
	ld c,b
l4982h:
	ld d,l
	sub a
	ld d,04fh
l4986h:
	call nz,0ca55h
	sbc a,039h
	jr c,l49deh
	ld d,b
	ld d,e
	sbc a,b
	add a,l
	add a,(hl)
	ld a,(l782fh)
	ld b,(hl)
	add a,b
	ld hl,(02f3ah)
	daa
	jr z,l4a03h
	adc a,00fh
	jr z,$-102
l49a1h:
	sub d
	ld a,(0843fh)
	ld b,l
	adc a,(hl)
	and c
	rrca
	sub c
	cp l
	sbc a,b
	rra
	ld d,h
	adc a,d
	adc a,b
	jr c,l4969h
	ld h,c
	rlca
	add hl,sp
	ld a,(bc)
	jr l49dch
	rlca
	or (hl)
	jr c,l4a21h
	inc a
l49bdh:
	rrca
	dec (hl)
	rlca
	add a,a
	ld e,h
	ld d,b
	rlca
	jr z,l4a1ah
	sbc a,b
	and e
	add a,028h
	cp l
	ret z
	rlca
	scf
	add a,(hl)
	inc (hl)
	inc h
	ld b,b
	ld d,h
	ld b,b
	add a,h
	ld de,03236h
	ld b,d
	ld d,h
	jr z,$-80
l49dch:
	inc l
	rra
l49deh:
	ret z
	jr c,l4982h
	or e
	rlca
	ld (hl),b
	inc (hl)
	rlca
	ld (de),a
	ld e,091h
	dec d
	add a,(hl)
	sub 062h
	ld b,a
	jp c,03190h
	ld hl,(0b807h)
	jr c,$+46
	call nz,0da4fh
	xor (hl)
	and e
	ld hl,(0244fh)
	and a
	adc a,d
	exx
	rrca
	and d
l4a03h:
	rlca
	or h
	adc a,c
	cp 02eh
	ld e,a
	xor (hl)
	sbc a,h
	ld h,a
	inc hl
	sbc a,b
	inc l
	rra
	scf
	adc a,l
	adc a,b
	ld h,h
	sub d
	daa
	adc a,b
	ld l,h
	add a,(hl)
	sbc a,h
l4a1ah:
	ld d,a
	ld (027d6h),a
	ld d,a
l4a1fh:
	jr z,l49bdh
l4a21h:
	call c,09f20h
	pop hl
l4a25h:
	sbc a,0a7h
	inc e
	ret
	defb 0edh ;next byte illegal after ed
	exx
l4a2bh:
	djnz l4a47h
	ld h,056h
	ld c,d
	ld c,d
	sbc a,(hl)
	ld b,(hl)
	rst 10h
	ld d,058h
	ld c,h
	dec l
	ld (hl),c
	inc c
	ld a,(04e5ah)
	ld d,a
	and e
	ld h,b
	rst 10h
	ld (hl),a
l4a42h:
	djnz l4a4bh
	ld h,l
	pop af
	ld e,c
l4a47h:
	djnz l4a9fh
	sbc a,b
	add hl,de
l4a4bh:
	ld b,b
	ld b,a
	and (hl)
	inc de
	and a
	adc a,c
	ld d,d
	ld a,0d0h
	rst 38h
sub_4a55h:
	dec d
	ld c,b
	add a,(hl)
	inc d
	rst 38h
	ld l,h
	rst 10h
	call nc,0d75eh
	push af
	dec c
	sub e
	rst 10h
	call nz,0d2cfh
	and b
	ld c,(hl)
	or a
	adc a,0efh
	and h
	ret nc
	rst 18h
	sbc a,h
	cp a
	ret
	jr z,l4a42h
	inc h
	ld c,(hl)
	jr l4a1fh
	ld h,h
	xor a
	sub c
	rra
	jr c,l4a81h
	sbc a,b
	inc h
	xor a
	ld d,c
l4a81h:
	rra
	ld a,(01606h)
	add hl,hl
	ld hl,(l6a07h)
	ld a,(bc)
	rra
	ld b,l
	and a
	daa
	inc h
	djnz l4aabh
	sub d
	sbc a,a
	ld c,c
	ld c,d
	ld e,d
	inc b
	rla
	ld c,c
	rra
	ld c,h
	ld c,d
	ex af,af'
	daa
	ld c,c
l4a9fh:
	rra
	ld c,(hl)
	ld h,d
	ld b,076h
	ld h,l
	daa
	rla
	rrca
	ld b,(hl)
	rst 10h
	inc h
l4aabh:
	ld c,b
	ld d,d
	ld a,(bc)
	rra
	ld l,0dch
	scf
l4ab2h:
	ld h,d
	ld l,l
	jr nc,l4afdh
	ld c,a
	cpl
	sub c
	rra
	djnz l4ac4h
	or a
	dec hl
	daa
	sub h
	rra
	rst 30h
	ld h,d
	ld c,d
l4ac4h:
	jp p,01792h
	sub b
	rst 38h
	ld c,h
	sub d
	ld d,b
	ld a,(de)
	sub c
	sbc a,091h
	rst 38h
	ld c,(hl)
	adc a,(hl)
	add hl,sp
	adc a,(hl)
	ld b,h
	rst 38h
	sub c
	add a,a
	or c
	ret z
	ld a,(bc)
	jr c,l4b22h
	ld d,b
	jp pe,09658h
	sub d
	ld b,(hl)
	cp (hl)
	ld d,d
	jp pe,007c3h
	ld d,h
	inc b
	jr z,l4afch
	ld de,00710h
	ex af,af'
	inc l
	scf
	ld d,c
	dec sp
l4af5h:
	rlca
	ld a,(bc)
	ld l,089h
	jr z,l4b33h
	sbc a,c
l4afch:
	rlca
l4afdh:
	ld c,b
	ld b,a
	ld h,e
	ld h,l
	rlca
	ld b,a
	rst 30h
	ld b,(hl)
	rlca
	and a
	sbc a,h
	rst 28h
	ld (hl),007h
	xor l
	ld hl,(l4d9eh)
	rrca
	ld (0cedch),hl
	sub 04ch
	ld b,(hl)
	and a
	call c,08e8dh
	dec d
	ld b,(hl)
	ld e,(hl)
	ld d,d
	defb 0edh ;next byte illegal after ed
	adc a,l
	jr z,l4b29h
l4b22h:
	ld b,(hl)
	sbc a,h
	or (hl)
	jp po,08607h
	xor (hl)
l4b29h:
	scf
	rlca
	inc e
	adc a,01fh
	call nc,03f70h
	ld a,(hl)
	inc a
l4b33h:
	jr c,l4b93h
	ld d,h
	ld d,(hl)
	xor e
	rlca
	jr c,$+41
	rlca
	ld (hl),a
	jr nc,$+9
	sub e
	adc a,d
	sub (hl)
	rlca
	sbc a,c
	cp a
	jr c,l4b4eh
	ld c,014h
	jp nc,020d2h
	rra
	adc a,l
l4b4eh:
	djnz $+30
	rlca
	xor (hl)
	ld c,b
	ld b,a
	rra
	ld a,c
	rlca
	ld (hl),c
	sbc a,h
	rlca
	ret pe
	inc (hl)
	add a,(hl)
	out (0d6h),a
	ld l,d
	ld d,a
	adc a,0d6h
	ld l,e
	jr z,l4bc5h
	ld (hl),l
	jr z,l4bc7h
	ret pe
	ld (0ef92h),a
	xor h
	rlca
	sbc a,d
	ret pe
	ret pe
	out (007h),a
	ld h,0e8h
	ld e,h
	adc a,018h
	rla
	ld d,c
l4b7bh:
	scf
	adc a,b
	sbc a,b
	rla
	sub d
	adc a,l
	cp a
	jp po,0ae17h
	ld c,c
	rlca
	ld (bc),a
	xor (hl)
	inc l
	ld b,(hl)
	or a
	jp nc,0ae00h
	jr z,l4bd7h
	rst 20h
	or h
l4b93h:
	xor 0b0h
	ld d,a
	rlca
	adc a,d
	jp po,0e046h
	sbc a,b
	ld d,e
	rst 30h
	ld de,095b0h
	add a,a
	sub c
	ret nc
	sbc a,d
	rlca
	call z,sub_479bh
	jp z,0b607h
	inc de
	adc a,d
	rra
l4bafh:
	ld h,e
	xor (hl)
	inc hl
	or b
	ld (hl),d
	ccf
	ld c,a
	defb 0ddh,057h,02fh ;illegal sequence
	sub (hl)
	sub a
	jr z,l4be4h
	adc a,(hl)
	adc a,017h
	ld h,l
	add a,a
	sub h
	sub d
	add a,a
l4bc5h:
	or l
	rst 30h
l4bc7h:
	inc e
	xor c
	ld d,h
	cp c
	add hl,sp
	rlca
	ld c,(ix+007h)
	adc a,(hl)
	rst 38h
	ld (hl),e
	rla
	ld b,(hl)
	jr c,l4be6h
l4bd7h:
	jp z,00736h
	adc a,b
	or e
	rlca
	adc a,h
	ld a,a
l4bdfh:
	push hl
	rlca
	adc a,046h
	or l
l4be4h:
	rst 20h
	cp d
l4be6h:
	ld a,01ch
	sbc a,l
	sub a
	rst 0
	rlca
	inc a
	ld b,(hl)
	ld e,c
	rlca
	push hl
	dec sp
	rrca
l4bf3h:
	add a,046h
	ld e,c
	ex af,af'
	rra
	ld (hl),0ach
l4bfah:
	ld b,h
	rrca
	exx
	rlca
	rst 0
	ret c
	push af
	call 0bc17h
	and h
	jp po,0a407h
	di
	daa
	pop hl
	ld (hl),l
l4c0ch:
	ld b,h
	rrca
	rst 28h
	dec sp
	rrca
	call nz,06486h
	sub l
	and l
	rlca
	add a,a
	ld l,c
	cp (hl)
	ld a,(09c44h)
	sub 08dh
	and (hl)
	ret c
	rla
	adc a,(hl)
	jp z,0c508h
	ld a,c
	ret z
	rlca
	defb 0ddh,0dch,04fh ;illegal sequence
	sbc a,(hl)
	push bc
	ld (hl),a
	rrca
	ld l,01eh
	ld b,(hl)
	rra
	ld d,c
	xor (hl)
	cp (hl)
	rrca
	ld a,l
	rlca
	jp nc,0bc9dh
	ld b,(hl)
	cpl
	ld a,h
l4c40h:
	ccf
	ld e,086h
	ccf
	or e
	push af
	ld d,d
	sub l
l4c48h:
	rst 10h
	rlca
	defb 0fdh,091h,097h ;illegal sequence
	sbc a,c
l4c4eh:
	rlca
	xor 017h
	rlca
	ld l,09ch
	rrca
	or b
	and h
	adc a,(hl)
	adc a,a
	dec e
	ld c,b
	ld b,a
	ld d,c
	rra
	and (hl)
	cp e
	rrca
	adc a,01ch
	ld h,a
	rrca
	rlca
	ld e,l
	rrca
	xor 02eh
	rlca
	and l
	sub d
	call 00f76h
	cp l
	ld d,a
	rra
	ld a,d
	rrca
	ld (hl),a
	add a,(hl)
	rrca
	halt
	jp nz,0271ch
	sub l
	add a,(hl)
	and l
	nop
	xor 09ah
	jr nz,l4c48h
	rst 10h
	jr l4cfbh
l4c87h:
	add a,(hl)
	and 018h
	cp 073h
	add hl,sp
	adc a,d
	cp (hl)
l4c8fh:
	ld c,b
	or b
	ret c
	rst 28h
	ret z
l4c94h:
	ret p
	or a
	jr nz,l4c87h
	ld d,c
	adc a,020h
	or l
	sbc a,(hl)
	sub e
	and b
	push bc
	add a,(hl)
	ld d,(hl)
	jr nc,l4cabh
	and 087h
	ld b,l
	pop hl
	jr nz,l4c40h
	sub (hl)
l4cabh:
	cp d
	ld b,c
	ld d,0b5h
	rst 0
	push bc
	ld (hl),e
	ld d,0f7h
	inc (hl)
	ld e,(hl)
	call 04948h
	cp c
	rrca
	sbc a,06ah
	rlca
	or 0cbh
	ret p
	inc sp
	ld d,c
	rst 8
	scf
	ret c
	ld c,e
l4cc7h:
	ret m
	dec hl
	adc a,072h
	or a
	ld (hl),d
	ld hl,(0da47h)
	or d
	ret m
	adc a,a
	ld h,l
	jp z,06ec0h
	ld a,a
	dec hl
	sub (hl)
	and b
	adc a,d
	sbc a,(hl)
	jp po,l53cbh
	ld b,(hl)
	ld l,d
	ret nc
	jr c,l4cc7h
	ld a,(0e497h)
	xor 0b0h
	inc bc
	call m,036cch
	rst 8
	sbc a,08fh
l4cf1h:
	ld c,h
	ld c,09ah
	jp l71cfh
	sub d
	rst 18h
	cp e
	add a,a
l4cfbh:
	dec de
	ld c,085h
	ld b,h
	ld d,0afh
	ld h,l
	and a
	or c
	djnz l4c8fh
	add a,(hl)
	and d
	ld b,l
	ld d,0c0h
	ld h,l
	sub a
	ld (hl),b
	ld d,0adh
	ld h,c
	or 008h
l4d13h:
	inc e
	ld d,088h
	sub c
	add a,(hl)
	ret c
	cp c
	ld c,0f6h
	and (hl)
	djnz l4d65h
	sub a
	jp (hl)
	and a
	djnz l4d96h
	adc a,a
	ld h,a
	ld e,a
	ccf
	inc (hl)
	and c
	cp a
	ccf
	ld d,l
	rra
l4d2eh:
	ccf
	push hl
	rst 28h
	add hl,de
	ccf
	sub c
	rst 28h
	ex (sp),hl
	rst 18h
l4d37h:
	ld h,a
	ret nz
	ld h,d
	add a,(hl)
	jr nz,l4cf1h
	rst 30h
	push af
	or (hl)
	xor b
	rra
	ld l,0a9h
l4d44h:
	call 0decfh
	rst 38h
	ld l,l
	add a,(hl)
	ret c
	sub (hl)
	rst 20h
	di
	add a,e
	cp c
	rrca
	rst 0
	in a,(05bh)
	daa
	ret nz
	add hl,sp
	ld c,d
l4d58h:
	ld e,c
	ld d,b
	rla
	ex (sp),hl
	in a,(0dfh)
	in a,(0dbh)
	cp e
	inc de
	ld b,(hl)
	adc a,h
	scf
l4d65h:
	ld e,(hl)
	dec de
	adc a,e
	ld d,0d4h
	ld (hl),d
	cp (hl)
	call z,0c9f3h
	call nc,00acah
	adc a,(hl)
	ret
	defb 0cbh,035h ;sli l
	sbc a,h
	dec h
	adc a,h
	ld (08f71h),a
	ld c,c
	sub a
l4d7eh:
	ld h,(hl)
	adc a,a
	ld d,(hl)
	ret nc
	ld d,d
	inc sp
	or d
	ld c,a
	ld c,016h
	ld l,e
	ld (01c87h),hl
	ld l,a
	ret p
	rrca
	ld d,0f5h
	rrca
	ld (hl),a
	inc a
	daa
	rlca
l4d96h:
	cp 02eh
	ld a,(0df04h)
	di
	and 0efh
l4d9eh:
	ld (0d304h),a
	ld de,03e99h
	add a,b
	inc bc
	ld a,(00de0h)
	dec c
	cp a
	ld (00de0h),a
	ld h,e
	add a,c
	inc bc
	ld (bc),a
	inc bc
	djnz l4d44h
	inc bc
	in a,(099h)
	and 00dh
	jr nz,l4d7eh
	jp (hl)
	ld d,(hl)
	ld b,009h
	jp z,l56f0h
	push bc
	or a
	inc c
	pop bc
	ld b,a
	jr l4e2ah
	sub a
	ld l,0f1h
	rst 38h
	add a,b
	add a,009h
	sub e
	add hl,bc
	ld b,0e7h
	rst 38h
	and 0fdh
	ld a,(bc)
	ld sp,00388h
	ccf
	inc bc
	adc a,(hl)
	add a,d
	ld c,e
l4de1h:
	rrca
	or 042h
	ld c,e
	nop
	push de
	push hl
	exx
	ex af,af'
	jr nz,l4de1h
	push bc
	dec b
	ld a,(l620eh)
	dec a
	nop
	call nz,sub_72ach
	ld hl,l7400h
	call 0001eh
	ld l,(hl)
	ld b,000h
	ld c,098h
	ld hl,l6f3ah
	ld a,0edh
	and d
	ld bc,0c2d1h
	ld c,c
	ld d,a
	dec h
	ccf
	ld l,(hl)
	dec h
	nop
sub_4e11h:
	ld l,a
	ld d,a
	add a,d
	ld d,l
	ld (hl),b
	call 00145h
	ld d,l
	ret z
	dec l
	cp e
	adc a,a
	outi
	ld bc,0c2b4h
l4e23h:
	sbc a,a
l4e24h:
	jr nc,$+89
	dec a
	inc bc
	pop hl
	pop de
l4e2ah:
	inc c
	pop bc
	pop af
	ex af,af'
	exx
	dec b
	ld de,03ec9h
	add hl,bc
	xor d
	adc a,b
	add a,a
	set 4,b
	or 002h
	adc a,(hl)
	bit 2,c
	xor a
	rst 20h
	pop hl
	and 01dh
	ld c,b
	xor b
	or 052h
	djnz $+8
	xor a
	adc a,b
	ld a,0f8h
	call nc,0e95fh
	ld (hl),e
	and a
	dec l
	and e
	push bc
	call po,09cc0h
	jp 0b700h
	jp nz,l5827h
	call 0055dh
	call sub_6048h
	ld (bc),a
	ld a,(09094h)
	ld (hl),l
	dec b
	jp m,03a5ch
	ld (de),a
	or 0ffh
	ld (000bah),a
	ld a,(0c39fh)
	and 040h
	call nz,00321h
	dec b
	ld a,001h
	ld (0c156h),a
	ld a,h
	add a,08dh
	ld b,c
	dec b
	xor a
	ld hl,00010h
	cp (hl)
	jp z,l5854h
	ld (hl),a
	call sub_6813h
	inc bc
	ld b,c
	jr nz,l4ec5h
	call 0c802h
	ld e,b
	jr nz,l4ea8h
	call 03c15h
	ld c,c
	jr l4ea4h
	ld h,(hl)
	ld (bc),a
l4ea4h:
	ld (hl),d
	ld (bc),a
	inc h
	ld l,c
l4ea8h:
	ld (bc),a
	jr nc,l4eadh
	ld l,a
	sbc a,b
l4eadh:
	ld (bc),a
	dec l
	ld de,02478h
	call sub_63b7h
	sbc a,h
	ld (bc),a
	ld h,a
	nop
	ld e,e
	call sub_595ah
	call sub_61a0h
	ei
	inc h
	call 0150ch
l4ec5h:
	inc bc
	ld (bc),a
	ld b,000h
	dec b
	ret
	ld a,(0fbe9h)
	and 010h
	jp nz,0b201h
	ld e,b
	ld a,(l58b1h)
	or a
	ret nz
	ld l,d
	sub b
	ld b,0c3h
	ld d,c
	dec b
	ld (0af00h),a
	rlca
	ld a,(de)
	ld c,b
	jp pe,0011ah
	inc de
	jr nz,l4f1dh
	ld (bc),a
	ld b,e
	pop bc
	ld a,0e0h
	ld (07aa4h),a
	jr nz,l4f2fh
	rst 8
	ld l,e
	ret z
	ld a,(0fbe8h)
	jr nc,$-51
	ld (hl),a
	add hl,bc
	jp nz,l50ddh
	ld e,b
	dec h
	ld b,0c9h
	ld (00002h),a
	jp nz,004c6h
	ld (0c206h),a
	ld a,(08cd0h)
	jp z,0f631h
	ld e,b
	ld b,d
	add hl,bc
	ld l,048h
	ld e,d
	rrca
	and l
l4f1dh:
	xor b
	inc d
	jp 00489h
	pop bc
	defb 0edh ;next byte illegal after ed
	adc a,b
	ld (01004h),a
	ld b,032h
	dec c
	ex af,af'
	jp nz,00c32h
l4f2fh:
	inc h
	inc c
	and 007h
	jr nz,l4f43h
	ld a,000h
	add a,008h
	cp 060h
	jr nz,l4f3fh
	ld a,048h
l4f3fh:
	bit 0,d
	and 014h
l4f43h:
	jp nz,01a22h
	ld bc,00580h
	dec b
	jp nz,00d21h
	pop bc
	ld b,(hl)
	inc bc
	ld (hl),016h
	xor a
	call sub_5af9h
	ld hl,(03c08h)
	ld (0fe03h),a
	and h
	inc bc
	ld b,030h
	call nc,078bdh
	ld a,(00e09h)
	jp nc,l57c0h
	jr nc,l4fcch
	dec a
	pop bc
	ld de,0a4cdh
	ld a,b
	rlca
	and a
	ret
	ld h,e
	dec (hl)
	ld h,b
	ld e,e
	jr c,l4fb4h
	jr nz,l4fb8h
	ld a,(0c280h)
	ld de,00040h
	jp nz,0103eh
	ld (0c15fh),a
	ld b,007h
	nop
	push de
	ld a,(hl)
	and 01fh
	cp 015h
	jp z,00022h
	ld e,d
	inc hl
	or a
	jp z,059b2h
	cp 004h
	nop
	jr z,l4fe4h
	dec a
	call z,sub_5b1ch
	call nz,00756h
	ld e,d
	pop de
	push hl
	ldi
	ld bc,0e12dh
	inc b
	ld h,b
	ld a,(hl)
	rst 30h
	inc de
	ld (bc),a
l4fb4h:
	inc de
	ld bc,0000dh
l4fb8h:
	add hl,bc
	ld a,(03035h)
	add a,002h
	ld a,(01efeh)
	ld bc,l73c2h
	ld e,c
l4fc5h:
	ret
	pop de
	ld bc,0120fh
	dec bc
	ex de,hl
l4fcch:
	ld c,008h
	inc bc
	rla
	call nc,sub_7e2bh
	ld bc,024feh
	jr z,l5015h
	inc hl
	push hl
	inc hl
	nop
	ld b,d
	add hl,bc
	ld d,028h
	add hl,bc
	xor d
	jr nz,l4fc5h
l4fe4h:
	call sub_5aefh
	ex af,af'
	jp l598ch
	inc hl
	ld c,b
	ld (hl),a
	cp 000h
	inc c
	jr z,l5005h
	and 003h
	jr z,l4ffbh
	pop hl
	push bc
	rrca
	dec hl
l4ffbh:
	add hl,hl
	pop hl
	inc de
	ld (hl),a
	add hl,bc
	add a,e
l5001h:
	ld (hl),022h
	inc hl
	ld c,b
l5005h:
	ld (hl),006h
	ex af,af'
	nop
	inc hl
	jp 0360fh
	inc b
	ld a,044h
	ld (hl),04bh
	inc hl
l5013h:
	rla
	inc hl
l5015h:
	cp d
	ld de,0133eh
	ld (hl),001h
	inc hl
	call p,04781h
	ld a,(hl)
	sub b
	ld (hl),a
	rrca
	xor h
	or d
	ld a,000h
	dec hl
	djnz $+51
	pop hl
l502bh:
	ld a,(0c235h)
	cp d
	nop
	ret c
	cp e
	ret nc
	ld a,(0c234h)
	cp c
	ret c
	ld bc,010d6h
	cp c
	ret nc
	ld a,0f0h
	ld (l4811h),a
	add a,e
	ld (00f80h),a
	jp l5a94h
	ret
	ld a,(hl)
	sub 014h
	ex af,af'
	ld c,a
	push hl
	ld (hl),a
	jr $+89
	ld (bc),a
	add a,01eh
	ld e,a
	ld hl,0c229h
	call p,07e20h
	dec hl
	cp d
	jp c,03208h
	ld e,d
	cp e
	jp nc,l7e03h
	cp c
	call z,03208h
	pop bc
	ld a,(bc)
	ld a,(0c151h)
	add a,d
	jr nz,l5001h
	ld e,d
	ld a,b
	sub c
	add a,e
	jp nc,03205h
	pop hl
	jr c,l50c2h
	ld (de),a
	ld (hl),a
	inc hl
	ld (hl),a
	ld e,e
	ld a,09bh
	ret po
	ld de,00007h
	add hl,de
	pop bc
	ld (hl),d
	jp c,05ab4h
	cp (hl)
	jr l50c3h
	dec h
	rlca
	pop bc
	exx
	ld h,0b2h
	sbc a,b
	xor b
	pop bc
	dec hl
	rla
	sbc hl,de
	ret
	ld de,09210h
	inc hl
l50a3h:
	ld e,c
	pop bc
	inc de
	ld (hl),024h
	inc hl
	cp 030h
	inc a
	jr z,$+27
	dec h
	ld a,(0514ch)
	ret nz
	cpl
	dec b
	ld b,(hl)
	or d
	ld h,h
	call m,0c54ah
	dec e
	sub 080h
	add hl,bc
	ld c,e
	dec (hl)
	ret
l50c2h:
	ex af,af'
l50c3h:
	add a,(hl)
	jr nz,l513dh
	ld b,048h
	nop
	ld b,(hl)
	ret nz
	ret
	cp c
	ld b,b
	push hl
	ld h,000h
	ld l,b
	ld h,b
	add hl,hl
l50d4h:
	nop
	ld de,04803h
	rla
	add hl,de
	push hl
	ld l,a
	inc c
l50ddh:
	dec bc
	rla
	ret nc
	dec l
	add hl,de
	ei
	rla
	pop hl
	ret nc
l50e6h:
	dec b
	call 005b4h
	pop hl
	adc a,042h
	and a
	ld a,c
	ld b,(hl)
	bit 2,b
	inc bc
	jp c,l5804h
	ld e,e
	cp 0e3h
	jp nc,02b04h
	ld (bc),a
	cp 012h
	ld c,001h
	jr c,l5108h
	call pe,00e60h
	pop hl
	ret c
l5108h:
	ld a,(0dc99h)
	inc a
	add hl,de
	daa
	ret z
	ex (sp),hl
	nop
	dec a
	jp z,l5b4fh
	ld a,c
	ld (085b9h),a
	ld a,b
	rst 20h
	jr c,l50e6h
	sbc a,b
	ex af,af'
	add hl,sp
	ex af,af'
	jr c,l50d4h
	ex af,af'
	ld h,c
	add a,a
	nop
	ld d,d
	ld (hl),c
	in a,(0cch)
	ld c,049h
	sub b
	daa
	ld (0c003h),a
	ld a,(00147h)
	pop bc
	ld h,a
	ld a,(0c148h)
	ld l,a
	ld a,(hl)
	inc c
l513dh:
	add a,b
	inc hl
	ld e,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld (0327dh),hl
	dec c
	ld a,h
	ld (l5c15h),a
	ld d,0efh
	ld h,d
	ld bc,01984h
	ld (hl),c
	dec hl
	ex de,hl
	ld bc,00910h
	ld d,b
	xor l
	ld a,(hl)
	inc c
	or a
	jr z,l517bh
	add hl,bc
	inc b
	ld l,e
	jr $+6
	inc de
	inc b
	ld e,d
	ld c,004h
	add hl,bc
	sub 004h
	inc b
	inc b
	nop
	ret nz
	ex de,hl
	ldir
	ret
	push hl
	ld de,02be2h
	call c,01452h
	dec b
l517bh:
	inc bc
	add hl,de
	djnz $-5
	pop hl
	di
	ld (093f9h),hl
	ld b,h
	ret m
	ld (bc),a
	push af
	sub d
	sbc a,(hl)
	sbc a,b
	add a,h
	di
	rlca
	call p,0c100h
	ld hl,l5fd0h
	call 0048bh
	ld a,(01344h)
	adc a,l
	ld b,a
	dec bc
	add a,a
	add a,b
	add a,012h
	call p,08ea6h
	ld l,c
	rst 18h
	ld de,01bcdh
	xor h
	ld d,l
	ret
	ret z
	jp p,03f27h
	ld (0e10dh),a
	di
	ld hl,012a3h
	ld c,d
	ret
	or e
	ld de,03280h
	inc bc
	ld a,(006f2h)
	sub e
	inc bc
	di
	or (hl)
	dec d
	ei
	inc b
l51c8h:
	add a,l
	ld (0fe32h),a
	ld d,h
	rst 20h
	sub (hl)
	add a,b
	ld d,0d6h
l51d2h:
	ld a,(bc)
	cp a
	ld d,b
	inc b
	add hl,bc
	dec c
	jp nz,00a7ah
	ld (0c1f7h),a
	ld a,e
	ld hl,(0135dh)
	inc hl
	ld c,h
	add hl,de
	pop bc
	nop
	and h
	ld e,h
	ld b,006h
	push bc
	ld b,008h
	ld b,h
	push bc
	jp 0045eh
	push hl
	ld hl,05ee3h
	add hl,de
	call c,01b44h
	ld h,b
	or a
	add a,b
	bit 0,a
l5200h:
	jp z,l5c6eh
	rla
	and 0feh
	add a,0a3h
	ld de,l601dh
	adc a,l
	add a,b
	ld e,060h
	jp l5c76h
	sub 00ah
	inc bc
	ld a,(bc)
	jr z,l5239h
	jr nz,$-105
	out (021h),a
	ld h,b
	dec e
	ld hl,0e104h
	inc hl
	pop bc
	and 074h
	or c
	call 00d1fh
	add a,h
	inc b
	djnz $-74
	ld hl,(01158h)
	ld c,h
l5231h:
	jr nc,l5231h
	ld (00680h),hl
	call 05e82h
l5239h:
	jp l5cafh
	ld (bc),a
	ld hl,05ec3h
	ld de,l5ed3h
	sbc a,b
	ld d,d
	di
	jr nz,$+64
	rlca
	ld (047f1h),a
	pop bc
	cp b
	inc (hl)
	ex de,hl
	ld d,000h
	jp 086d1h
	push bc
	ld e,a
	add a,b
	jr nz,l526ah
	ld h,b
	ld (0b609h),a
	ld e,a
	ld (00afdh),a
	ret nc
	xor e
	ld (de),a
	ld h,b
	add a,h
	ld b,h
	ret p
	dec bc
l526ah:
	call p,00294h
	push af
	ld (bc),a
	adc a,l
	or c
	ei
	add a,d
	ld e,(hl)
	push hl
	jr c,$+104
	di
	ret pe
	add a,0d0h
	ld b,a
	defb 0edh ;next byte illegal after ed
	ld e,h
	adc a,c
	add hl,de
	rra
	jp c,008cfh
	ret
	ld hl,06c6fh
	inc bc
	nop
	sub l
	jp 0c412h
	ld (de),a
l528fh:
	ld e,l
	call nz,0f816h
	ret
	cp (hl)
	add a,l
	dec a
	ld (hl),a
	and d
	inc b
	ret nz
	ld (hl),a
	adc a,a
	sbc a,c
	cp a
	sub e
	or c
	inc l
	rst 30h
	rst 18h
	dec c
	nop
sub_52a6h:
	jp z,l5d3ah
	rlca
	ld h,l
	ld bc,0f707h
	jr nz,l52beh
	pop bc
	jp 05325h
	ld e,l
	ex de,hl
	jr z,l52bfh
	xor c
	call nz,0a623h
	ld h,l
	add hl,hl
l52beh:
	ex de,hl
l52bfh:
	inc h
	sbc a,0d0h
	inc bc
	jp nz,l5c0ch
	ld l,0c3h
	ld e,e
	add hl,hl
	inc c
	ld l,c
	add hl,sp
	defb 0fdh,031h,006h ;illegal sequence
	ld a,(0368bh)
	ld b,h
	ld l,(hl)
	ld c,c
	rst 18h
	ld e,b
	and d
l52d9h:
	dec h
	sub l
	dec e
	jp p,017b8h
	rst 38h
	ld b,(hl)
	ret nz
	ld h,(hl)
	cp a
	inc de
	call 00e01h
	pop af
	ld c,011h
	rrca
	call nc,0fe85h
	ex af,af'
	dec h
	and e
	ld (de),a
	xor 081h
	ld c,d
	inc b
	ld c,(hl)
	adc a,d
	exx
	dec e
	ld a,(de)
	jp nz,l5db1h
	and (hl)
	add hl,bc
	ld e,(hl)
	ld hl,0bfc1h
	jp po,02ce5h
	inc (hl)
	ld b,(hl)
	or 0edh
	push hl
	dec de
l530eh:
	rst 30h
	nop
	jp nz,l5dceh
	ld hl,0e2b2h
	jr l530eh
	add hl,hl
	sbc a,d
	add a,c
	cp 0f0h
	jp nz,l5dcbh
	add a,l
	jr z,l52d9h
	jp c,0881ch
	sub e
	ei
	dec de
	defb 0fdh,01bh,089h ;illegal sequence
	adc a,d
	jr nc,l534ah
	ret po
	jp nz,0e752h
	dec de
	sub (hl)
l5335h:
	and a
	ld a,(02afdh)
	dec l
	or 02ah
	sub h
	xor d
	or d
	sub a
	inc l
	jr c,l5364h
	xor 028h
	sub e
	xor a
	sub b
	add hl,bc
	or h
l534ah:
	ld h,(hl)
	sbc a,l
l534ch:
	jr nc,l534ch
	rra
	adc a,d
	adc a,b
	cp d
	ld d,b
	pop af
	ld e,a
	and h
	rra
	push de
	ld b,c
	ret z
	dec b
	inc de
	ld h,b
	xor 001h
	sra d
l5361h:
	inc b
	adc a,c
	dec c
l5364h:
	cp c
	ld e,a
	xor (hl)
	ld h,088h
	ld l,b
	ld a,(hl)
	xor h
	ld h,b
	jp nz,0e0d1h
	ld a,b
	daa
	ld c,a
	ld e,(hl)
l5374h:
	ret po
	add a,h
	ld c,0e0h
	jp pe,0e00fh
	ld h,e
	ld d,a
	ld e,(hl)
	ld a,(bc)
	ld h,(hl)
	ret po
	add a,l
	ld a,(bc)
	inc hl
	ex de,hl
	ld hl,l5a24h
	sbc a,c
	and e
	daa
	ld (de),a
	push de
	ld h,d
	inc b
	jp nz,01b33h
	sub e
	dec b
	ld a,(046a8h)
	defb 0edh ;next byte illegal after ed
	daa
	or 0b0h
	ld d,h
	ld a,(0d148h)
l539fh:
	ld c,c
	jp z,0a5dfh
	rst 0
	daa
	and d
	ld (bc),a
	sub (hl)
l53a8h:
	ld e,(hl)
	ld a,(0b5f9h)
	ld c,l
	rst 38h
	daa
	or c
	ld a,(bc)
	jp nz,01386h
	rst 10h
	sub b
	ld de,(0d792h)
	ret
	adc a,d
	adc a,045h
	ld e,a
	sub 017h
	and b
	ld h,d
	halt
	ld a,(08c26h)
	ret nz
	ret nz
	inc l
	add hl,de
l53cbh:
	ex de,hl
	pop hl
l53cdh:
	ld bc,00252h
	adc a,e
	ld c,e
	call m,02067h
	nop
	ld bc,l40dah
	adc a,b
	ld bc,04020h
	nop
sub_53deh:
	ld h,b
	ld b,b
	ex af,af'
	add a,b
	ld b,b
	and b
	ld h,b
	out (08ah),a
	jr nz,l5449h
	ld a,(bc)
	nop
	nop
	add a,b
	ld h,b
	and b
	add a,b
	nop
	add a,b
	jr nz,l5374h
	xor b
	inc d
l53f6h:
	ld a,(bc)
	nop
	and b
	and b
	inc c
	nop
	and b
	jr nz,l539fh
	ld e,0a0h
	inc d
	ld a,(bc)
	ret nz
	nop
	ret nz
l5406h:
	jr nz,l5408h
l5408h:
	ret nz
	ld b,b
	ret nz
	ld h,b
	ret nz
	add a,b
	ret nz
	and b
	nop
	ret po
	nop
	ret po
	jr nz,l53f6h
	ld b,b
	ret po
	ld h,b
	dec d
	ret po
	add a,b
	ret po
	jr nz,l546ah
	nop
	ld d,l
	ld c,d
	ld b,b
	ld (hl),02eh
	ld e,e
	nop
	ld e,b
l5428h:
	ld c,(hl)
	ld d,b
	ld b,h
	ld (hl),001h
	ld b,b
	ld hl,l4000h
	ld b,c
	ld b,b
	ld h,c
	ld b,b
	add a,c
l5436h:
	ld b,b
	and c
	ld c,c
	ld h,b
	rst 20h
	rst 8
	ld d,b
	ld b,c
	ld h,b
	ld h,c
	ld bc,08160h
	ld h,b
	and c
	add a,b
	ld bc,09d80h
l5449h:
	ld (hl),b
	ld b,c
	add a,b
	ld h,c
	nop
	add a,b
	add a,c
	add a,b
	and c
	and b
	ld bc,021a0h
	ld a,(l41a0h)
	defb 0ddh,004h,0a0h ;illegal sequence
	add a,c
	and b
	and c
	ret nz
	ret m
	ret nz
	ld hl,041c0h
	ret nz
	ld h,c
	nop
	ret nz
	add a,c
l546ah:
	ret nz
	and c
	ret po
	ld bc,021e0h
	nop
	ret po
	ld b,c
	ret po
	ld h,c
	ret po
	add a,c
	ret po
	and c
	nop
	jr nz,$+3
	jr nz,l549fh
	jr nz,$+67
	jr nz,$+99
	ld (bc),a
	jr nz,l5406h
	jr nz,l5428h
	nop
	ld bc,0e0d9h
	nop
	ld b,c
	nop
	ld h,c
	rla
	nop
	add a,c
	nop
	dec bc
	nop
	ld (hl),011h
	ld bc,0009ah
	ret nc
	dec bc
	ret po
	add a,003h
l549fh:
	ld (bc),a
	ld (de),a
	daa
	sbc a,c
	ld c,d
	nop
	ld e,084h
	ld (bc),a
	add hl,bc
	sbc a,(hl)
	ld (hl),c
	nop
	rrca
	ld l,002h
	dec e
	dec b
	pop hl
	inc bc
	add hl,hl
	defb 0ddh,041h,002h ;illegal sequence
	ld b,000h
	dec b
	inc de
	add a,(hl)
	sub b
	jr nz,l54c3h
	ld (01b10h),a
	rla
l54c3h:
	ld sp,00008h
	ld c,d
	ret po
	inc b
	cp l
	ld c,d
	ld (hl),d
	add hl,bc
	inc bc
	exx
	ld (de),a
	dec bc
	jr nz,l54ffh
	cp e
	ld c,049h
	or d
	jp 01dbah
	call 01603h
	ld h,c
	call 005bdh
	ld hl,022abh
	ld a,(0cd08h)
	and b
	dec a
	ld bc,085e9h
	ld e,b
	ld d,08fh
	ld e,h
	ld b,a
	ld h,b
	ex af,af'
	dec hl
	add a,(hl)
	ex af,af'
	ld c,(hl)
l54f7h:
	adc a,e
	ex af,af'
	call c,008dch
	add a,d
	ld (hl),b
	inc hl
l54ffh:
	ld (hl),c
	inc hl
	ld (hl),d
	sbc a,060h
	sub (hl)
	ld h,c
	ld (08c9bh),a
	ld (bc),a
	ld h,b
	ld h,a
	jp c,0b94bh
	jp nz,l6195h
	xor e
	sub e
	or l
	ld c,h
	ret
	inc b
	ld h,d
	ld (0020ah),a
	dec bc
	ld d,(hl)
	ld h,d
	add a,a
	ld (de),a
	ld a,l
	ld h,d
	inc h
	nop
	dec bc
	ld c,b
	rrca
	ld (bc),a
	ex (sp),hl
	daa
	ld a,d
	ld h,(hl)
	inc h
	ld (0027eh),a
	ld a,c
	dec bc
	ld a,e
	add a,c
	ld (bc),a
	ld d,e
	add a,e
l5538h:
	ld (l627ch),a
	ld de,02355h
	ret m
	nop
	inc b
l5541h:
	ld h,d
	ld hl,l6dach
	ld de,08c0fh
	sbc a,e
	ld l,008h
	ld (hl),c
	and l
	cpl
	call m,0ccafh
	ld e,c
	sub d
	sbc a,l
	xor h
	ex af,af'
	sub b
	ld d,b
	rst 28h
	ld a,0e7h
	ld (0e45fh),a
	ret po
	inc c
	add a,l
	inc bc
	ld d,l
	ld (bc),a
	add a,d
	ld h,e
	add a,(hl)
	jp pe,00affh
	jr nc,l54f7h
	ld (l75cdh),hl
	ld e,(hl)
	ld (hl),c
	or h
	ld (0acf2h),a
	ld bc,l618eh
	ld de,0018eh
	ld bc,0ba03h
	ld c,c
	pop de
	add a,b
	ld c,d
	ld (l689ah),hl
	pop bc
	cp (hl)
	ld (bc),a
	sub b
	call m,0cd74h
	ld l,b
	inc sp
	adc a,c
	ld b,h
	ld a,032h
	ld a,(075a6h)
	ld a,0bfh
	rst 8
	or d
	adc a,l
	ex (sp),hl
	inc hl
	halt
	ld a,c
	ld sp,hl
	ld h,b
	add a,005h
	ld a,(088d1h)
	call po,025c2h
	adc a,d
	xor h
	ld e,a
	ld (0c157h),hl
	sbc a,(hl)
	jr nc,$-50
	jp 0ca42h
	jp 03a56h
	dec bc
	call m,0c444h
	jp c,03a48h
	rla
	rrca
	call nz,07f99h
	ld c,0fdh
	sub d
	ld b,(hl)
	dec bc
	sbc a,h
	ld a,(de)
	rr d
	ld d,d
	ld a,b
	ld a,(de)
	ld d,l
	ld c,0b8h
	defb 0ddh,017h,081h ;illegal sequence
	call po,00a29h
	jp c,l6451h
	ld c,0f3h
	inc bc
	adc a,c
	add a,h
	ld (08499h),a
	ld de,00458h
	ld de,09676h
	ld de,0c964h
	ld l,e
	ld c,087h
	nop
	add hl,bc
	ld (01bd9h),a
	jp (hl)
	ld (bc),a
	jr nz,l5661h
	ld (bc),a
	ld a,c
	add a,h
	ret
	nop
	ld h,h
	sub 096h
	ret z
	rst 0
	inc bc
	nop
	nop
	adc a,b
	call 061bfh
	ret nc
	add a,h
	ld h,(hl)
	call 09b01h
	ld l,d
	call sub_70aeh
	call 0bb62h
	call nz,08ea1h
	or a
	sbc a,h
	nop
	ld h,d
	call l6be3h+1
	call 00120h
	ld h,a
	call sub_72c2h
	ld a,(0c396h)
	rst 30h
	ret nc
	ld a,(0c397h)
	jp pe,003f2h
	inc bc
	jp z,061dah
	cp 0b4h
	ret c
	sub 010h
	ld b,030h
	sbc a,b
	and a
	ld a,b
	ret
	adc a,h
	sub l
	inc h
	dec a
	pop bc
	xor 079h
	jp 0274dh
	jr z,$-35
	daa
	ret m
	inc d
	ld bc,0b580h
	cp l
	add a,e
	add a,b
	ld (bc),a
	ld d,b
	inc c
	inc d
	inc c
	sub c
	or e
	defb 0edh ;next byte illegal after ed
	pop bc
	nop
	add hl,bc
l5661h:
	ld c,096h
	nop
	inc bc
	ld (hl),l
	ld b,003h
	rst 0
	inc b
	inc sp
	nop
	ld (bc),a
	dec b
	rst 0
	inc b
	ld e,l
	ld (bc),a
	ld (bc),a
	ld (hl),l
	ld bc,0b302h
	nop
	inc bc
	ld b,b
	adc a,a
	scf
	ld l,04bh
	dec hl
	sbc a,e
	adc a,d
	and d
	rst 20h
	inc b
	xor c
	dec b
	ld (bc),a
	ld b,0c4h
	sbc a,e
	and d
	ld c,c
	call m,0a2e0h
	ld h,d
	ld a,(l78e4h)
	ld h,c
	add a,014h
	ld b,h
	ld h,(hl)
	inc bc
	ret m
	ld h,l
	inc bc
	and b
	add a,003h
	daa
	inc bc
	ld de,064b1h
	inc bc
	ld l,(hl)
	ld h,e
	adc a,e
	jr nc,$+41
	ld h,e
	ld a,(09aa2h)
	ret po
	add hl,hl
	inc bc
sub_56b1h:
	ld e,a
	and h
	jp (hl)
	dec b
	ld h,c
	sub h
	ret c
	ld hl,0c1cah
	ld (0e07eh),a
	call z,0c903h
	dec de
	ld h,d
	dec a
	dec de
	ld a,(089a5h)
	adc a,d
	sub l
	sub 006h
	cp b
	ld (de),a
	sbc a,a
	ld hl,(006e2h)
l56d2h:
	defb 0ddh,01dh,047h ;illegal sequence
	call 020d4h
	ld c,a
	srl h
	inc bc
	inc a
	ld e,c
	ld d,b
	inc a
	dec h
	inc de
	add hl,bc
	ld h,e
	xor b
	dec c
	jp z,l6318h
	inc hl
	and h
	rst 38h
	ret p
	ld h,0abh
	adc a,l
l56f0h:
	ld c,0ceh
	jp p,l496bh
	ld (de),a
	dec hl
	and (hl)
	ld l,c
	inc d
	jp nz,l5735h
	ret nz
	ld sp,03998h
	ld a,08ch
	add hl,sp
	ld h,063h
	push bc
	cp b
	pop de
	sub d
	dec b
	ret nz
	ex (sp),hl
	sub l
	jr l573ah
	ld e,l
	ld l,b
	ld a,(de)
	jp po,l5bcah
	add a,b
	ld e,c
	ld (l64cah),hl
	ld h,e
	ld a,r
l571eh:
	sbc a,e
	add a,h
	ld b,031h
	inc de
	add a,0b8h
	ld d,l
l5726h:
	ld b,e
	ld e,d
	ld c,(hl)
	ex af,af'
	sub 008h
	inc de
	nop
	jp z,l640ah
	call 018efh
	rst 10h
l5735h:
	xor (hl)
	call pe,02c13h
	cp e
l573ah:
	inc (hl)
	ld a,e
	ld d,e
	ld l,l
	ld h,e
	push hl
	adc a,(hl)
	or b
	dec b
	sub l
	dec l
	adc a,d
	add a,a
	in a,(02ch)
	cp b
	or (hl)
	or l
	ld (01d58h),a
	dec d
	call sub_5b67h
	sub e
	nop
	ld (08576h),a
	ld hl,08571h
	ld de,0903bh
	jp nz,097ffh
	or d
	rrca
	ld c,(hl)
	and b
	rrca
	sbc a,l
	and d
	rrca
	ld a,(00fb0h)
	ld (hl),h
	sub d
	rrca
	ret nz
	call po,0210fh
	add a,c
	sbc a,h
	ld a,(bc)
	ret nc
	ld a,(bc)
	call nz,sub_52a6h
	ld b,(hl)
	add a,e
	sub 058h
	call pe,0373ah
	dec l
	ld h,h
	pop de
	jr nz,l578bh
	ld b,001h
	ld c,001h
l578bh:
	ld b,h
	ld e,0cfh
	ex af,af'
	nop
	ld h,h
	inc b
	inc c
	ld e,004h
	ld hl,0c238h
	nop
	call sub_642eh
	ld hl,0c23ch
	ld a,b
	sub e
	ld l,d
	ld b,a
	ex af,af'
	ld a,b
	ex af,af'
	ld b,083h
	ld b,a
	ld a,c
	sub e
	ld c,a
	dec bc
	cp d
	ld a,h
	inc d
	adc a,b
	cp a
	ld a,(hl)
l57b3h:
	add a,b
	ld d,(hl)
	cp 0c0h
	dec b
	ld h,h
	cp 0dch
	jp nc,08104h
	ret z
	add a,c
l57c0h:
	ex af,af'
	cp 01ah
	jp c,00d77h
	ret c
	jp nc,004a3h
	dec c
	ld (hl),044h
	or h
	adc a,0ffh
	nop
	jp nz,07e57h
	sub 006h
	cp d
	ld (hl),b
	ret nc
	rst 8
	cp d
	ld (hl),c
	ret c
	rst 38h
	inc c
	ld h,023h
	dec c
	ld a,(bc)
	dec c
	ld d,e
	inc bc
	dec c
	rst 8
	add a,d
	ret nc
l57eah:
	ld a,048h
	ld b,a
	ld (03606h),a
	nop
	ex (sp),hl
	and b
	ld (hl),038h
	ld a,(0898ah)
	sub a
	ld l,c
	inc bc
	ret
	jr l57b3h
	jp nz,0e75dh
	dec e
	ld l,b
l5803h:
	xor l
l5804h:
	jp nz,092bbh
	xor h
	ld (l7e06h),hl
l580bh:
	push hl
	ld b,c
	jp nc,l649eh
	push hl
	ld (hl),c
	rst 30h
	ret
	ld de,036d9h
	inc h
	dec c
	dec h
	ei
	sub e
	jr z,l5843h
	ld l,0e8h
	ld h,c
	ld (hl),d
	inc a
	and a
	ld d,d
	dec b
	cp d
l5827h:
	inc d
	rst 20h
	ld h,c
	ld b,b
	inc bc
	ld bc,09a20h
	ld b,02fh
	ld hl,l6515h
	jp z,01028h
	ld h,l
	sbc a,b
	jr c,$+35
	dec de
	rlca
	adc a,c
	adc a,021h
	rlca
	ld d,0deh
l5843h:
	ld h,h
	add a,e
	ld a,b
	pop af
l5847h:
	sbc a,0b8h
	sub h
	ld b,032h
	and d
	sbc a,02ch
	ld a,(0f6ffh)
	add a,a
	or c
l5854h:
	inc b
	and e
	ld e,b
	adc a,b
	sub h
	add a,e
	ld de,l76a6h
	ret po
	ld b,(hl)
	ld a,e
	sbc a,b
	add a,d
	call 00536h
	ld b,b
	add a,a
	ld a,00eh
	ld h,l
	ld a,08dh
	sub l
	ld hl,(0316bh)
	ld (hl),c
	ld b,0a6h
	xor d
	jr nz,l5847h
	inc bc
	ld bc,00130h
	inc bc
l587bh:
	adc a,(hl)
	ld (bc),a
	sbc a,l
	sub e
	ld h,c
	jp m,03a88h
	ld e,c
	dec b
	jp z,05a60h
	ld e,(hl)
	jp z,0657ah
	add a,b
	ld e,e
	ld e,d
	ld (l61feh),a
	ld hl,l7afah
	ld h,c
	ret nz
	and (hl)
	nop
	jp (hl)
	jp nz,0048fh
	ld (de),a
	cp 0ffh
	ret nz
	ccf
	ld (0cd2ah),a
	adc a,09fh
	rra
	cp (hl)
	rra
	inc hl
	inc b
	rra
	pop bc
	sub (hl)
	rra
	add a,(hl)
l58b1h:
	ld a,011h
	exx
l58b4h:
	ld l,a
	inc h
	add a,l
	dec c
	ld b,h
	in a,(0e4h)
	push de
	ld d,0dch
	daa
	ret
	push af
	ld d,(hl)
	sbc a,c
	dec d
	ld b,03ch
	rst 28h
	daa
	ld h,l
	dec b
	ld e,d
	dec b
	ld c,080h
	dec b
	inc e
	sub (hl)
	dec b
	ld sp,005beh
	ld a,b
	ld h,l
	ret pe
	djnz $-53
	ld b,b
	sbc a,b
	jr nz,l58ech
	cp 040h
sub_58e0h:
	ld a,04ch
	ld (0e0cah),hl
	call nc,0402ch
	ld (l420bh),a
	ld a,c
l58ech:
	inc a
	or (hl)
	ld (de),a
	ld h,006h
l58f1h:
	ld d,a
	ld (bc),a
	ld a,h
	ld b,(hl)
	add a,c
	ld d,d
	ld e,h
	exx
	jr c,$-21
	ld (0ed3fh),a
	ld h,c
	ld sp,hl
	add hl,hl
	inc b
	jp nz,01ba7h
	inc bc
	ld (hl),e
	inc (hl)
	jr z,l5925h
	sub c
	sub 0a8h
	inc d
	inc b
	or h
	add a,h
	ld a,(0ede6h)
	and h
	cp d
	ld d,h
	dec b
	ld d,h
	push hl
	call nz,0e545h
	defb 0edh ;next byte illegal after ed
	or h
	ld l,b
	add hl,bc
	ld h,(hl)
	jp z,l664ch
l5925h:
	neg
	ld l,(hl)
	rlca
	ld d,c
	and h
	rlca
	neg
	ld (hl),h
	rlca
	ld d,(hl)
	ld h,(hl)
	defb 0edh ;next byte illegal after ed
l5933h:
	and h
	cp e
	and a
	inc b
	dec l
	ld (bc),a
	ld c,h
	ld h,h
	jr z,l5996h
	add a,c
	ret p
	jp 0fde2h
	call z,09659h
	ret c
	ld a,l
	nop
	ld e,e
	ld a,(l58f1h)
	adc a,l
	sub c
	jr l59b6h
	ld a,(0067eh)
	jp c,06654h
	ld a,h
	jp nz,03a2ah
sub_595ah:
	adc a,e
	ld b,h
	sub 0dbh
	jr nc,l59a4h
	ld h,09ah
	cp (hl)
	ld (bc),a
	jr c,$+35
	ld a,(0c239h)
	inc hl
	jp 00d89h
	jr l5933h
	ld b,h
	dec c
	inc de
	and l
l5973h:
	xor h
	inc d
	jp nz,l66c2h
	rst 0
	jp 0abafh
	sub (hl)
	ld hl,(09eaah)
	dec sp
	inc b
	ld a,l
l5983h:
	ld h,(hl)
	add a,(hl)
	ld (hl),a
	ld (0eb28h),a
	ld c,0cdh
	ld e,(hl)
l598ch:
	ld bc,016d0h
	cp b
	ld c,b
	ld (hl),b
	inc a
l5993h:
	ld c,b
	inc hl
	pop de
l5996h:
	ld c,b
	ld e,03ah
	dec a
	ld c,b
	rl l
	ld c,b
	ld e,h
	djnz l59e9h
	rla
	ex af,af'
	ld h,a
l59a4h:
	ld c,b
	ld b,l
	ld l,c
	add a,b
	ld b,l
	add a,c
	ld b,l
	or a
	dec h
	ld b,l
	ld e,l
	add a,l
	sub h
	ld a,0ffh
	adc a,l
	ld c,e
	or l
l59b6h:
	add a,d
	inc a
	jp nc,0672ch
	rrca
	ld (hl),h
	ld c,h
	rst 30h
	ld c,d
	ex af,af'
	pop bc
	add a,00ch
	ld (02104h),a
	ld l,a
	pop hl
	cp d
	inc bc
	sub l
	ld d,e
	rlca
	xor e
	djnz l5a20h
	ld a,(hl)
	adc a,b
	or h
	ld c,c
	ld h,a
	xor b
	sbc a,h
	ret m
	ret
	xor b
	jp (hl)
	dec hl
	sub c
	or d
	sbc a,h
	scf
	or b
	adc a,b
	inc hl
	ld (hl),a
	or c
	adc a,b
	ret
	rst 18h
l59e9h:
	ld e,05dh
	ld sp,hl
	ld b,b
	ld l,c
	inc h
	ld l,b
	ld hl,(l4e23h)
	ld c,h
	ld a,l
	sub l
	jp z,08c0dh
	ld h,a
	cp 070h
	inc b
	djnz $-6
	jp z,00497h
	adc a,b
	jp z,084a2h
	inc b
	ret nz
	jp z,004adh
	ret nc
	inc b
	jp z,l67b8h
	ret
	ld a,h
	exx
	sub e
	add a,(hl)
	inc e
	ld h,(hl)
	ld c,0ebh
	ld (de),a
	jp 00a67h
	inc b
	ld a,(bc)
	inc e
l5a20h:
	ld e,00eh
	ld (hl),h
	ld a,(bc)
l5a24h:
	ld hl,00a05h
	ld b,00eh
	ld l,h
	ld a,(bc)
	jp 00a06h
	ld e,h
	call pe,03b0ah
	rlca
	ld a,(bc)
	ld b,032h
	ld d,h
	ld l,d
	add a,00eh
	cp e
	ld b,c
	ld (hl),d
	ld l,d
	ld (00281h),a
	nop
	adc a,h
	ld l,d
	ld a,c
	ld (l6a63h),a
	sub b
	jp nz,00a85h
	ld b,h
	add a,l
	ld (bc),a
	sub h
	ld l,d
	and e
	ld h,b
	and 0e0h
	add a,013h
	ret po
	ld (00c56h),a
	ld h,l
	ld h,009h
	ld (00774h),a
	add a,e
	ld (bc),a
	inc d
	adc a,(hl)
	ld l,d
	jp po,05c88h
	add hl,sp
	ld e,l
	ld h,a
	sbc a,h
	pop af
	adc a,d
	sbc a,a
	call c,l6123h+1
	dec bc
	ld e,(hl)
	add a,l
	ld (bc),a
	ld e,a
	ld h,a
	ld hl,0963fh
	ld c,c
	xor b
	and a
	dec b
	dec c
	ld e,a
	dec b
	ld b,(hl)
	ret
	pop bc
	ld d,c
	ld a,(de)
	pop bc
	ex af,af'
	call pe,03a68h
	ld d,a
	sub 012h
	ld a,(00e32h)
	jp (hl)
l5a94h:
	and h
	ld c,b
	rst 0
	jp nc,007f2h
	ld c,c
	ld h,a
	ld c,b
	djnz $+7
	ld l,c
	dec b
	ld (bc),a
	ld de,0cdc3h
	ld hl,(0bb05h)
	ld h,b
	ld l,b
	ld a,e
	sub 008h
	ld l,h
	ld e,a
	xor (hl)
	dec b
	ld h,e
	jp nc,l442bh
	sbc a,c
	ret
	and (hl)
	and h
	ld b,068h
	or c
l5abch:
	sub h
	adc a,d
	ld b,d
	inc b
	ld (hl),0f0h
	dec hl
	rst 20h
	call z,sub_746ah
	ld b,090h
	ex af,af'
	jp m,0bdadh
	call po,0cb07h
	sub e
l5ad1h:
	ld a,d
	dec a
	ld a,(hl)
	ld (0e356h),a
	jp m,0076eh
	sbc a,c
	ld (de),a
	sbc a,h
	ld l,b
	ret
	sbc a,b
	add hl,de
	inc a
	push bc
	add hl,de
	jp 0f519h
	ld (hl),d
	inc hl
	cp (hl)
	ld sp,06f47h
	adc a,c
	sub b
sub_5aefh:
	push de
	ld sp,l777dh
	sub 048h
	ex af,af'
	sbc a,a
	ld b,c
	and e
sub_5af9h:
	adc a,e
	jr nc,l5b05h
	ld b,c
	ld (011a2h),a
	jp 07d21h
	and c
	cp d
l5b05h:
	sub e
	sub c
	xor c
	ld b,a
	xor h
	ld h,03eh
	ret nz
	ld a,(bc)
	ld h,h
	ld h,a
	adc a,070h
	ret
	inc d
	inc h
	ld h,h
	ld h,h
	jp (hl)
	jp pe,08c5fh
	rst 0
sub_5b1ch:
	ld (de),a
	sbc a,c
	ld l,c
l5b1fh:
	ld a,(046afh)
	push bc
	and e
	ld d,(hl)
	push bc
	and h
	ld e,b
	push bc
	ld (hl),b
	ld e,d
	adc a,(hl)
	push bc
	jp nz,l691dh
	ld a,e
	add a,0c5h
	add hl,sp
	and e
	add hl,hl
	or (hl)
	out (077h),a
	ld h,e
	cp c
	ld (hl),b
	ld (hl),a
	ld a,(08c5ch)
	cp h
	or d
	inc bc
	ld c,e
	cp h
	inc a
	adc a,b
	ld e,c
	ld l,c
l5b49h:
	cp h
	exx
	dec d
	inc a
	add hl,de
	sub c
l5b4fh:
	cp h
	push hl
	ld h,(hl)
	ld b,(hl)
	cp h
	and e
	ld d,h
	cp h
	ret pe
	inc h
	call c,0ec32h
	sub (hl)
	rst 28h
	ld c,h
	ld a,0ceh
	ld a,(bc)
	adc a,(hl)
l5b63h:
	cp h
	ld h,d
	xor b
	and d
sub_5b67h:
	ret m
	ld b,089h
	xor h
	jp c,017ach
	ld b,e
	ld (004c6h),hl
sub_5b72h:
	sub b
	ld b,0a8h
	ret nc
	cp b
	jp c,011aah
	pop de
l5b7bh:
	ld (0d2b8h),a
	rla
	ld d,c
sub_5b80h:
	or h
	djnz l5b63h
	exx
	djnz l5b1fh
	ld c,(hl)
	ld a,(bc)
	ld (hl),015h
	push de
	or (hl)
	ld b,0b6h
	sbc a,(hl)
	dec b
	ld a,(l6823h)
	cp d
	rst 10h
	call nc,00556h
	add a,(hl)
	jr c,l5c05h
	ld c,h
	jp 02206h
	ld l,b
	ld sp,hl
	ld (hl),d
	inc b
	dec (hl)
	jp z,06721h
	ld a,b
	inc b
	ld hl,(0fcaah)
	sbc a,d
	ld a,h
	ld l,(hl)
	ld a,h
	ld a,(l7453h)
	ld h,e
	inc l
	ld (hl),h
	dec c
	push bc
	sub 00dh
	or h
	ld b,h
	inc hl
	inc b
	rst 10h
	jr z,$-67
	jr z,l5b49h
	ld (de),a
	ld b,a
	cp c
	ld sp,0dbddh
	ld b,a
l5bcah:
	jp 0b820h
	ret c
sub_5bceh:
	ld a,00fh
	ld e,d
	cp b
	or d
	ld (0b660h),hl
	ld e,l
	adc a,0e5h
	jp c,0dafbh
	add a,0beh
	and h
	nop
	ret nc
	ld a,d
	ret nz
	ld c,0ceh
	add a,l
	and l
	rst 38h
	ld bc,00301h
	call c,0bb80h
	ld bc,08ec0h
	inc c
	ret nz
l5bf3h:
	ld (bc),a
	ld c,0f3h
	dec e
	ld a,(bc)
	ld a,c
	ld (de),a
	ret po
	ld c,03ah
	sbc a,e
	ld e,b
	ld h,c
	call c,089aah
	or h
	sub (hl)
l5c05h:
	ld b,009h
	jp nz,l6b46h
	sub b
	inc c
l5c0ch:
	sbc a,(hl)
	ld h,c
	pop af
	inc b
	jp c,l6ab3h
	ex af,af'
	sbc a,a
l5c15h:
	and 081h
	ld h,005h
	ret nz
	ld (de),a
	ld c,c
	defb 0edh ;next byte illegal after ed
	ld d,09eh
	defb 0edh ;next byte illegal after ed
	dec de
	call nc,09e6ah
	add a,h
	ex de,hl
	ld l,d
	jr nz,l5bf3h
	ld h,e
	ld (bc),a
	add hl,hl
	sbc a,h
	push de
	jr nz,l5c30h
l5c30h:
	ld (06b1dh),a
	jr z,l5c6fh
	sbc a,l
	rlca
	push bc
	add a,c
	rra
	ld l,e
	ld hl,l6b19h
	ret z
	ld e,e
	ld d,0b3h
	ld c,02ch
	ld d,089h
	adc a,e
	sub e
	ld l,016h
	jr z,$+24
	jp nz,08788h
	dec sp
	ld d,00bh
	ld bc,0a7feh
l5c55h:
	ld d,037h
	ld d,001h
	or (hl)
	nop
	ld b,b
l5c5ch:
	ld (bc),a
	or e
l5c5eh:
	djnz l5cc0h
l5c60h:
	ld bc,02318h
	nop
	ld a,(bc)
	adc a,h
	inc de
	sbc a,b
	ld c,04ah
	ld c,081h
	dec de
	nop
l5c6eh:
	dec d
l5c6fh:
	ld c,0aeh
	and b
	dec e
	add a,(hl)
	ld d,000h
l5c76h:
	dec de
	ld c,091h
	ld a,(09b99h)
	xor h
	ld c,a
	ld a,d
	ld b,a
	sbc a,d
	sbc a,e
	inc de
	dec b
	ret nz
	ld (de),a
	ld (l469bh),hl
	sbc a,c
	sbc a,e
	sub c
	ld (hl),b
	ld l,e
	sbc a,e
	adc a,d
	add a,a
	inc b
	sbc a,e
	ld h,09eh
	jr nz,l5ccch
	sub a
l5c98h:
	pop af
	ld d,d
	cp c
sub_5c9bh:
	ld l,l
	sbc a,b
	add a,h
	dec (hl)
	cp e
	ld l,l
	inc hl
	or l
	add a,h
	sub (hl)
	sub a
	ld c,0b8h
	ret z
	ld d,089h
	add a,h
	jp z,03c16h
l5cafh:
	call nz,02216h
	ret
	ld (hl),h
	rst 10h
	ld d,0d9h
	sbc a,h
	ld d,0d3h
	ld d,025h
	add a,e
	push de
	inc hl
	sbc a,e
l5cc0h:
	ret z
	add a,b
	nop
	ld b,a
	ld hl,(09b9bh)
	sbc a,e
	dec e
	xor b
	sbc a,e
	ex de,hl
l5ccch:
	ret z
	ld h,c
	ld a,(l6be2h)
	xor (hl)
	ld d,l
	inc bc
	sub d
	ld de,l6be3h
	cp 039h
	inc b
	ld (00c3ch),a
	cp l
	ld (hl),d
	ld b,0c4h
	sbc a,e
	ld a,b
	ld bc,095fah
l5ce7h:
	sbc a,0e2h
	ld hl,0c205h
	add a,b
	ld l,h
	ld (0cd01h),a
	inc hl
	ld l,l
	ld (06da8h),a
	call nc,0a6c1h
	ld l,l
	rst 0
	add a,c
	xor c
	ld l,l
	dec c
	xor h
	or a
	dec c
	ld h,e
	or l
	dec c
	cp b
	dec c
	add a,(hl)
	add a,00dh
	ld sp,00dc4h
	rst 0
	dec c
	jp 00dd5h
	jr l5ce7h
	dec c
	sub 0e1h
	dec c
	call po,08c0dh
l5d1bh:
	jp po,l700dh
	push hl
	dec c
	di
	add a,00dh
l5d23h:
	pop af
	dec c
	jr c,l5d1bh
	dec c
	ld (06e02h),hl
	dec c
	nop
	ld l,(hl)
	dec c
	dec (hl)
	inc bc
	ld l,(hl)
	dec c
	ld de,08c0dh
	rrca
	dec c
	inc e
	ld (de),a
l5d3ah:
	ld l,(hl)
	ld d,0cch
	ld d,h
	ld l,d
	call 0aca1h
l5d42h:
	ld l,l
	add a,d
	ld (02a03h),a
	ld a,(0067bh)
	inc bc
	sub e
	sub l
	inc de
	add a,(hl)
	cp e
	inc c
	ld b,(hl)
	inc bc
	ld a,(006b7h)
	ld d,d
	inc bc
	sub d
	ld (hl),b
	inc de
	jp z,00cc4h
	jp z,0c613h
	jp z,00306h
	adc a,a
	ld c,(hl)
	inc de
	jr l5d42h
	inc c
	exx
	sbc a,b
	inc de
	push de
	ld b,0d5h
	and d
	inc de
	add a,d
	sub 013h
	ret pe
	inc c
	ld h,0e8h
	inc de
	call po,sub_4706h
	inc bc
	ld hl,013f1h
	inc c
	rst 30h
	inc c
	ld d,c
	rst 30h
	inc de
	sbc a,c
l5d88h:
	ld c,d
	ld b,0f3h
	inc de
	adc a,(hl)
l5d8dh:
	dec l
	inc de
	jr z,l5d97h
	ld l,(hl)
	inc c
	inc bc
	ld a,(0c802h)
l5d97h:
	ld b,003h
	ld hl,0e10fh
	inc de
	dec d
	inc c
	adc a,c
	dec d
	inc de
	ld de,09306h
	inc bc
l5da6h:
	ret
	cp c
	ld (hl),b
	inc hl
	ld (00380h),hl
	ld bc,l4e24h
	add hl,bc
l5db1h:
	ld a,(hl)
	cp 026h
	ld a,a
	ld c,0e7h
	nop
	add hl,sp
	ld l,l
	dec c
	and 07fh
	ld e,a
	ld hl,01b42h
	ld l,l
	add hl,de
	ld b,(hl)
	push af
	inc d
	ret
	ld b,b
	adc a,d
	djnz l5debh
l5dcbh:
	ld b,b
	nop
	ld h,b
l5dceh:
	ld b,b
	add a,b
	ld (de),a
	ld b,b
	and b
	ld h,b
	or 024h
	jr nz,l5de0h
	ld h,b
	nop
	add a,b
	ld h,060h
	and b
	sub l
	dec d
l5de0h:
	add a,b
	jr nz,$-126
l5de3h:
	inc d
	ld a,(bc)
	nop
	jr z,l5d88h
	xor (hl)
	add hl,de
	and b
l5debh:
	jr nz,l5d8dh
	ld e,014h
	ld c,d
	ld a,(bc)
	ret nz
	pop hl
	add a,b
	jr nz,$-62
	ld b,b
	ret nz
	ld h,b
	ret nz
	nop
	add a,b
	ret nz
	and b
	ret po
	nop
	ret po
	jr nz,l5de3h
	ld (bc),a
	ld b,b
	ret po
	ld h,b
	ret po
l5e08h:
	add a,b
l5e09h:
	ret po
	jr nz,l5da6h
	or (hl)
	nop
	xor d
	ld c,d
	ld b,b
	ld (hl),02eh
	sub l
	nop
	jr nz,$+88
	ld c,h
	ld b,d
	ld b,e
	jr c,l5e6ah
	and b
	ld e,b
	rrca
	ld d,(hl)
	inc bc
	add a,0b2h
	inc d
	ld (bc),a
	add a,0d9h
	ld e,0a0h
	inc bc
	jr nz,$+16
	ld (hl),e
	dec e
	ld b,b
	ld c,0d6h
	add hl,sp
	call p,07a0eh
	add a,b
	ld c,0bdh
	and b
	ld c,05eh
	ret nz
	ld c,0b1h
	sub h
	ld a,b
	ld c,060h
	and l
	defb 0cbh,035h ;sli l
	inc b
	rla
	ld (bc),a
	inc a
	ld bc,0f302h
	out (099h),a
	ld a,08eh
	inc bc
	ld (0007dh),hl
	inc bc
	ld a,h
	ei
	inc bc
	rst 28h
	pop hl
	cpl
	nop
	ei
	sub 0bfh
	ret nz
	ld (hl),d
	call 00145h
	call nz,sub_5ec7h
	ld c,a
	add hl,bc
	add a,h
l5e6ah:
	nop
	ld d,l
l5e6ch:
	jp 01006h
	ld a,(hl)
	add a,c
	cp 000h
	ret c
	jp nz,l7054h
	inc a
	ld (de),a
	inc hl
	inc de
l5e7bh:
	ld (hl),e
	ld a,(hl)
	inc bc
	inc b
	ld (bc),a
	inc de
	djnz l5e6ch
	ld hl,01e40h
	halt
	dec d
	ld e,073h
	ret m
	ld e,000h
	ld a,(0c359h)
	cp 0d7h
	jp nz,09305h
	ld (hl),b
	ld a,0d6h
	ld (09309h),a
	sub h
	ld c,b
	ld a,(l5541h)
	djnz l5e7bh
	jp nz,l70a2h
	ld c,0d2h
	ld hl,0063bh
	ld c,098h
	call 005bah
	ld (bc),a
	ld l,c
	adc a,a
	add a,(hl)
	ld (hl),b
	cp 040h
l5eb6h:
	jp z,0d334h
	ld (hl),b
	rlca
	ret po
	jp z,0ec00h
	ld (hl),b
	cp 088h
	jp z,l7105h
	cp 017h
sub_5ec7h:
	ex af,af'
	jp z,0041eh
	call nc,03748h
	inc b
	ld h,b
	jp z,l502bh
l5ed3h:
	ld (hl),c
	inc h
	xor b
	sub (hl)
	cp 0e3h
	ld e,03eh
	nop
	xor 000h
l5edeh:
	jp 0a101h
	add a,l
	ld hl,0c147h
	ld bc,00a16h
	ld (hl),b
	inc hl
	ld (hl),c
	inc hl
	ld (hl),d
	jr l5eb6h
	call p,0f91dh
	sbc a,b
	jr l5edeh
	rst 30h
	jr $-75
	add a,l
	and b
	or 018h
	dec a
	dec hl
	add a,(hl)
	jr $-107
	dec b
	jr l5f07h
	jr l5f62h
	adc a,e
l5f07h:
	jr $+62
	inc d
	jr l5f5fh
	ld b,018h
	inc b
	jr $+94
	call c,03c18h
	dec bc
	jr l5f71h
	ex af,af'
	ld h,e
	ex (sp),hl
	ld h,c
	ld h,c
	rst 30h
	ld (bc),a
	jr z,$-25
	ld (bc),a
	xor d
	or b
	call nz,0c132h
l5f26h:
	xor a
	or e
	rrca
	jp 03032h
	jp nz,022cah
	ld (bc),a
	ld a,h
	jp nz,08024h
	dec (hl)
	or a
	jp z,0718bh
	dec a
	jp z,09263h
	inc bc
	sbc a,c
	inc bc
	ld bc,l71a0h
	jp 071a7h
	or c
	djnz l5f4fh
	nop
	jp 0ae43h
	ld b,0a0h
l5f4fh:
	ld b,001h
	ld b,046h
	ld c,b
	ld b,003h
	ld b,08dh
	ret z
	ld b,004h
	ld b,019h
	jr z,l5f65h
l5f5fh:
	ld b,006h
	ld c,h
l5f62h:
	sbc a,d
	cp b
sub_5f64h:
	ld d,c
l5f65h:
	ld h,c
	xor c
	add a,b
l5f68h:
	ld c,c
	pop bc
	ld a,05fh
	ld (0f4fbh),a
	or h
	sub b
l5f71h:
	dec b
	jp nz,0d674h
	cp (hl)
	add hl,bc
	and b
	inc b
	add hl,bc
	dec c
	jp nz,00806h
	ld h,(hl)
	push bc
sub_5f80h:
	ld (bc),a
	or b
	ld a,d
	ret nz
	ld b,(hl)
	jp c,l71ebh
	ld b,002h
	res 6,c
	call c,sub_5f64h
	inc a
	jr nz,l5ff8h
	ld (hl),d
	or a
	cp h
	ld a,(hl)
	sbc a,l
	ld h,l
	ld (hl),d
	cp d
	sbc a,d
	push hl
	inc c
	rlca
	ld h,(hl)
	ret p
	add a,d
	ld hl,0c672h
	jr nz,l5fd8h
	inc b
	inc b
	pop bc
	inc hl
	djnz $-60
	pop bc
	in a,(09bh)
	inc c
	inc b
	inc c
	djnz l5f68h
	ret
	or 071h
	cp 0bdh
	inc h
	cp h
	ld bc,00c06h
	jp z,l7235h
	ld b,00dh
	sbc a,018h
	ld b,04ah
	pop bc
	xor (hl)
	add a,e
	pop bc
	ld (0c3a3h),a
	ld a,0eeh
l5fd0h:
	and h
	rlca
	rlca
	and d
	sbc a,b
	or (hl)
	adc a,l
	ld h,c
l5fd8h:
	jp po,003e5h
	ret po
	push bc
	ld (hl),d
	ld de,01050h
	sbc a,h
	add a,b
	adc a,b
	adc a,e
	rlca
	ld (hl),004h
	inc h
	add hl,de
	djnz $-3
	ld a,0b8h
	add a,00fh
	dec b
	jr nc,l601ah
	sub (hl)
l5ff4h:
	jr z,l5ff4h
	jr nc,l6046h
l5ff8h:
	ex af,af'
	jr nc,$+102
	sub e
	jr $+85
	add a,e
	ret
	dec (hl)
	ld e,006h
	ld h,h
	sub e
	jp nc,l728eh
	ld (l7a1ah),hl
	ld h,d
	dec c
	ld e,093h
	dec c
	sbc a,(hl)
	ld h,e
	dec bc
	ld d,(hl)
	add a,h
	ld a,b
	out (048h),a
	ld h,d
	ld b,b
l601ah:
	ld (l710eh),a
l601dh:
	ld h,d
	dec hl
	rlca
	add a,d
	dec a
	jp nz,029b8h
	ld h,d
	add hl,bc
	dec d
	ld a,(0cc02h)
	adc a,a
	ld h,(hl)
	add a,a
	add a,a
	ld c,03ah
	jp p,0c5c1h
	ret nc
	push bc
	ld (hl),h
	or a
	jp nz,00388h
	call 0022eh
	ld l,b
	ld (hl),h
	inc de
	ret c
	call 089dah
	add a,d
l6046h:
	ld c,h
	pop bc
sub_6048h:
	or a
	ld d,000h
	ld c,e
	pop bc
	cp 0d0h
	jp nc,l72fbh
	cp 021h
	ld (de),a
	jp c,03a04h
	jp m,0ff72h
	exx
	inc b
	nop
	jp z,l731ch
	jp 073ceh
	ld bc,l53a8h
	ld hl,l4a25h
	pop bc
	nop
	sub 012h
	cp c
	ret nc
	add a,024h
	cp c
	ret c
	ld h,a
	ld c,(hl)
	inc l
	dec bc
	ld h,c
	pop af
	jp l736ah
	call nz,sub_6f10h
	pop bc
	ld a,(hl)
	ld c,d
	or a
	rlc a
	call nz,07300h
	inc hl
	ex af,af'
	jp pe,l5c60h
	cp 0efh
	jp nc,l49a1h
	ld a,l
	jp nc,l7375h
	sub b
	ld e,c
	ld l,a
	ld (hl),03eh
	ld a,a
	ret z
	inc hl
	ei
	ld (hl),h
	ld l,e
	ld (bc),a
	add a,010h
	ld (007f9h),a
	ld a,(bc)
l60a9h:
	pop hl
	di
	and 020h
	dec d
	adc a,l
	add a,e
	ld (hl),e
	dec a
	xor l
	call nz,09e74h
	ld h,b
	call m,01174h
	sub c
	di
	ld b,07bh
	ret z
	jp z,l73a8h
	jr nz,l60ddh
	ld a,b
	ld h,047h
	jp l739bh
	inc c
	call sub_7417h
	ld (hl),a
	ld c,(hl)
	ld d,l
	inc hl
	inc b
	jr c,l60d9h
	sub a
	ld (039fdh),hl
l60d9h:
	sbc a,d
	inc a
	sub 041h
l60ddh:
	ld hl,002a7h
	jp nz,05830h
	dec de
	ld (hl),e
	adc a,d
	call 08c03h
	di
	adc a,l
	ld e,l
	ld (01ef0h),a
	jr z,l6123h
	xor 005h
	ld (bc),a
	and 0feh
	call z,01e07h
	ld c,l
	pop af
	add hl,hl
	jp pe,08d29h
	or 0cch
	dec hl
	add hl,de
	dec d
	cp 0b4h
	ret c
	ld sp,08706h
	add hl,de
	jr z,l60a9h
	ld a,h
l610eh:
	ld (hl),a
	inc hl
	ld d,00ah
	and e
	pop bc
	inc a
	ret po
	add a,l
	jp nz,l7421h
	dec l
	add hl,bc
	nop
	ld de,0c1a4h
	add a,e
	ld e,a
	ld a,(de)
l6123h:
	ld (019a5h),a
	ld d,0cfh
	cp b
	ld b,c
	ret nz
l612bh:
	ld hl,0c183h
	in a,(032h)
	ld a,(082fbh)
	ld d,a
	ld a,(0e5f7h)
	ld e,a
	rst 38h
	call po,0cd1bh
l613ch:
	nop
	ld c,l
	ld (hl),h
	dec hl
	dec hl
	djnz l613ch
	ret
	ld c,d
	add hl,bc
	ld a,(hl)
	dec hl
	sub 00eh
	ret nz
	ld b,h
	jr l610eh
	add a,c
	ld c,e
	ld a,(hl)
	sub 00ch
	add hl,bc
	adc a,d
	inc d
	add hl,bc
	xor e
	dec h
	ld h,a
	jr c,l612bh
	ld de,0c170h
	rst 10h
	dec de
	scf
	ld d,l
	inc c
	xor 00ch
	ld a,e
	ld (hl),h
	add hl,de
	dec l
	dec de
	ld a,b
	xor 007h
l616eh:
	nop
	sub h
	ld b,d
	ld (hl),l
	sbc a,b
	ld (hl),d
	or (hl)
	ld hl,(0898eh)
	ld c,075h
	cp c
	ld de,08847h
	ld c,b
	sbc a,b
	add hl,bc
	ld (de),a
	and 00fh
	add a,b
	adc a,(hl)
	ld de,l750ch
	or l
	add a,e
	rrca
	ld (hl),l
	xor a
l618eh:
	ccf
	ex af,af'
	ld (hl),a
	dec hl
	ld bc,0367eh
l6195h:
	inc b
	nop
	call 00557h
	ld a,(0fe15h)
sub_619dh:
	ld de,0d228h
sub_61a0h:
	cp l
	ret nc
	xor b
	push bc
	xor h
	xor b
	ld a,(0c5ach)
	scf
	ld e,l
	defb 0fdh,03ah,0c8h ;illegal sequence
	and l
	jr z,l61b6h
	ld a,(0da43h)
	ld d,b
	ld (hl),l
l61b6h:
	ld hl,0d117h
	rla
	ld a,(0751eh)
	jp nc,00419h
	ld (hl),d
	dec c
	ret
	inc c
	ld (hl),b
	nop
	pop af
	inc bc
	or a
	jp c,0989ch
	rrca
	dec b
	sbc a,b
	adc a,0c4h
	ld c,d
	ret p
	inc bc
	ld c,001h
	xor 0f8h
	ld (l640ah),hl
	nop
	ld bc,00ef0h
	or 080h
	jr c,l61f1h
	ld h,c
	sbc a,c
	or e
	ld a,(bc)
	and b
	inc c
	rrca
	rlca
	ld (bc),a
	ld (bc),a
	inc e
	rlca
	rrca
	inc c
l61f1h:
	scf
	nop
	ld bc,06301h
	push bc
	call nz,004f6h
	ld c,004h
	rst 30h
	push hl
l61feh:
	ld h,l
	ld d,h
	inc hl
	nop
	ex af,af'
	djnz $+7
	add a,01eh
	ld b,b
	ld (bc),a
	ld h,028h
l620bh:
	add hl,hl
	add hl,bc
	and c
l620eh:
	xor c
	ld bc,00808h
	add a,b
	ld l,b
	dec c
	inc bc
	ld bc,0c814h
	inc bc
	ld (bc),a
	ld e,0eeh
	ld a,(bc)
	nop
	ld (0c462h),hl
	ccf
	dec b
	dec b
	ccf
	ld h,a
	ld h,h
	ld h,a
	inc d
	ld sp,03c00h
	jr nz,l620bh
	xor l
	add a,b
	ld (bc),a
	inc b
	add hl,bc
l6234h:
	add hl,hl
	add hl,hl
	ld bc,003a8h
	xor b
	ex af,af'
	nop
	adc a,c
	ld l,c
	dec c
	ld h,c
	and b
	ld bc,00e3bh
	ld b,039h
	rrca
	add hl,sp
	ld a,(bc)
	and d
	ld (bc),a
	ccf
	push bc
	rst 30h
	ccf
	inc l
	or 0e4h
	ccf
	ld c,h
	ret po
	inc d
	jr c,l625ch
	sbc a,l
	inc bc
	jr nc,$+65
l625ch:
	ld de,00d03h
	ccf
	jr nz,l626ah
	ccf
	inc de
	ld bc,03f09h
	inc b
	ld h,c
	nop
l626ah:
	add a,b
	add a,b
	add a,0a6h
	inc hl
	rrca
	ld e,h
	ld hl,0a096h
	add hl,sp
	and c
	add a,021h
	nop
	djnz l62abh
	ret po
l627ch:
	ret nz
l627dh:
	ld b,b
	ld b,b
	ret po
	or b
	ret po
	inc c
	add a,b
	ld b,b
	add a,b
	jr c,l6299h
	sub h
	ret p
	add a,h
	sub h
	ld a,a
	ld l,h
	rla
	and a
	or b
	inc hl
	ret nz
	add a,b
	jp z,02096h
	dec h
	inc e
l6299h:
	ld c,b
	jr nc,l62bbh
	ld b,h
	nop
	ld b,(hl)
l629fh:
	ld h,03fh
	and c
	ld b,(hl)
	and c
	ccf
	ld hl,00e46h
	ld (hl),d
	inc (hl)
	ret nz
l62abh:
	ld h,a
	ld a,b
	jr $+79
	jr nz,l62f1h
	jr nz,$-110
	sub c
	sub h
	ld bc,014e0h
	inc d
	ld a,a
	rlca
l62bbh:
	sub (hl)
	sub b
	ccf
	ld b,a
	push bc
	ld h,e
	inc b
	ld a,h
	ld b,b
	ex af,af'
	sbc a,h
	dec h
	adc a,e
	ccf
	and e
	adc a,a
	ccf
	ret z
	dec bc
	ccf
	ld c,h
	add hl,sp
	inc d
	ld c,090h
	ld h,b
	ld b,b
	call pe,0883fh
	ret nz
	or b
	ccf
	inc b
	ld (hl),b
	adc a,c
	ccf
	rst 28h
	sub a
	ccf
l62e3h:
	jr nz,l6319h
	pop de
	inc e
	ld l,h
	add a,c
	ld de,01c10h
	ld c,b
	ret z
	ld a,(bc)
	dec bc
	dec c
l62f1h:
	nop
	add hl,de
	inc d
	inc (hl)
	jr nc,$+59
	cpl
	ld (hl),0ddh
	inc l
	jr $+62
	sbc a,l
	nop
	inc d
	ld d,012h
	cp 0e6h
	jp nc,0c3d3h
	nop
	rst 20h
	ld (hl),e
	ex (sp),hl
	ld e,07eh
	cp h
	ret c
l630fh:
	nop
	pop de
	and e
	rlca
l6313h:
	sbc a,e
	jr nz,$+33
	dec de
	ccf
l6318h:
	nop
l6319h:
	ld c,030h
	dec e
	adc a,e
	rla
	inc hl
	ld hl,00010h
	jr $+10
	inc c
	adc a,0dch
	ld a,(hl)
	ld l,(hl)
	ld a,a
	nop
	call c,0febeh
	jp pe,0f492h
	jr nz,l6313h
	ld c,l
	ld bc,03fb9h
	jp c,03f1dh
	rlca
	rlca
	nop
	ld d,b
	ret c
	ret z
	ccf
	adc a,c
	cp l
	ret pe
	adc a,a
	dec sp
	ccf
	jp c,03f0bh
	ld c,b
	jr nz,l62e3h
	jr nz,l63c7h
	or b
	ccf
	add a,b
	push af
	djnz l635dh
	inc bc
	rla
	ld l,01fh
	nop
	rla
	jr nc,l63d5h
l635dh:
	cp h
	ld a,03fh
	ld c,h
	add hl,hl
	ld h,027h
	ld de,00094h
	ret po
	ret c
	ld a,(hl)
	ld h,(hl)
	ld a,08ah
	ld a,a
	rrca
	nop
	ld e,09eh
	call z,0b8bch
	ret p
	jr nz,$-62
	nop
	ld (bc),a
	djnz l63a5h
	inc b
	dec bc
	rrca
	ld (hl),a
	sub e
	ex af,af'
	dec e
	inc hl
	ld b,e
	daa
	or e
l6387h:
	xor b
	rra
	and 080h
	cp d
	ret c
	ret p
	call m,0f9f1h
	ld e,b
	call m,078d8h
	jr nz,l63dfh
	djnz l63b8h
	ld bc,01f07h
	ld e,000h
	dec de
	jr c,l641ch
	cp h
	jr c,l63e0h
	ld l,h
l63a5h:
	ld c,a
	djnz l63efh
	dec b
	nop
	ccf
	ret m
	ld a,01eh
	nop
	add a,(hl)
	ld c,a
	rra
	add a,e
	add a,(hl)
l63b4h:
	adc a,(hl)
	ld l,(hl)
	ld a,h
sub_63b7h:
	inc h
l63b8h:
	call m,0bce2h
	adc a,b
	ret po
	inc e
	rlca
	and b
	jp c,08f6fh
	and b
	jp po,l426fh
l63c7h:
	dec h
	ld b,(hl)
	inc b
	sbc a,d
	ld bc,0e2b0h
	and 0fch
	ld sp,hl
	ld a,001h
	ret m
	ret p
l63d5h:
	or 0b8h
	inc c
	ld b,d
	rra
	nop
	rlca
	ld e,01ch
	rrca
l63dfh:
	dec c
l63e0h:
	ld c,007h
	ld d,d
	ld b,0c3h
	inc d
	nop
	dec b
	out (040h),a
	ccf
	jr nc,$+50
	jr c,l6387h
l63efh:
	inc a
	ld c,h
	djnz l63b4h
	ret nz
	sub (hl)
	res 0,l
	ld de,00f13h
	jp c,0e125h
	inc h
	ld sp,hl
	call z,03f03h
l6402h:
	ld hl,0d010h
	ld a,(de)
	ret po
	call m,0b6f0h
l640ah:
	cp c
	sra h
	add a,b
	rlca
	inc c
	inc c
	inc e
	add hl,de
	inc a
	ex af,af'
	ld d,h
l6416h:
	rlca
	inc e
	xor e
	ret z
	ret po
	ld a,b
l641ch:
	jr c,l6422h
	ret p
	or b
	ld (hl),b
	ret po
l6422h:
	ld h,b
	jp 000e0h
	and b
	djnz l6475h
	djnz l6416h
	dec bc
	adc a,e
	ld a,(de)
sub_642eh:
	rlca
	ccf
	sub a
	inc h
	ld a,(0fb02h)
	or d
	adc a,b
	add hl,hl
	ret z
	ret p
	add a,l
	ld hl,(03e1dh)
	ld h,d
	xor (hl)
l6440h:
	sub h
	jr nz,l647ch
	ld c,01eh
	rra
	rra
	sub d
	ld h,h
l6449h:
	rra
	adc a,e
	ld d,a
	adc a,(hl)
	djnz l6465h
	ld (hl),b
	ld a,b
l6451h:
	ret m
	adc a,b
	sbc a,(hl)
	ret nz
	ret m
	ld e,h
	djnz l6462h
	ld sp,00c20h
	ld e,c
	jr nz,l647fh
	jr nc,l649dh
	dec l
l6462h:
	nop
	rla
	and b
l6465h:
	sbc a,d
	adc a,c
	and d
	sbc a,c
	or c
	sbc a,(hl)
	inc c
	rrca
	add hl,hl
	ret pe
	ret nz
	ld c,l
	ld a,(08b45h)
	add a,d
l6475h:
	ret nz
	ld a,(l78e2h)
	call nc,003eah
l647ch:
	rlca
	jr nc,l6462h
l647fh:
	ld a,b
	ld b,011h
	call po,07800h
	ld hl,l7914h
	ld b,030h
	ld a,(de)
l648bh:
	cp (hl)
	nop
	jp z,l7887h
	inc (hl)
	inc hl
	inc de
	djnz l648bh
	jp nz,0110eh
	ld b,h
	ld de,01019h
	ld a,(hl)
l649dh:
	add a,a
l649eh:
	nop
	ret nz
	xor b
l64a1h:
	add a,(hl)
	rla
	ld (de),a
	inc de
	ld a,c
	ld (bc),a
	sub d
	ld b,h
	rst 28h
	ld hl,0cd15h
	dec b
	jp (hl)
	ld (bc),a
	ld a,(0c398h)
	ld a,003h
	ld a,c
	in a,(0edh)
	push de
l64b9h:
	dec b
	cp 079h
	ld d,d
	dec a
	ret
	ld d,c
	ld (hl),b
	ccf
	ld a,(hl)
	dec a
	dec de
	cp 0ffh
	jr nz,l64a1h
	dec h
l64cah:
	ld (hl),a
	inc (hl)
	push af
	jp p,l78ceh
	add hl,hl
	dec b
	ret
	ld (bc),a
	inc bc
	ret nz
	dec l
	nop
	xor h
	ld h,c
	dec b
	ld b,000h
	sub h
	dec b
	xor b
	and d
	ld (bc),a
	ld (bc),a
	sub h
	xor d
	cpl
	rlca
	inc b
	adc a,e
	sbc a,h
	add a,l
	call nc,0b703h
	and l
	ld (02f07h),hl
	nop
	ld bc,0e400h
	ld c,b
	ld hl,0d993h
	add a,h
	ld e,d
	ld e,c
	ld bc,08799h
	ldir
	add a,h
	and b
	inc sp
	ld e,e
	ret
	inc a
	ld hl,0109fh
	ld e,0c9h
	inc e
	ld l,l
	ret
	inc e
	ret
	rst 0
	ld h,b
	and a
l6515h:
	ret nz
	ld b,032h
	jr c,l6529h
	jp nz,03c32h
	jp nz,l48e4h
	inc c
	jp 02666h
	ld e,c
	ld de,03efah
	add hl,de
l6529h:
	ld e,(hl)
	ret nz
	ex af,af'
	push hl
	ld hl,079b9h
	rlca
	inc hl
	ld d,(hl)
	nop
	pop hl
	push de
	ret
	rra
	ld a,d
	ld b,c
	ld a,d
	and a
	nop
	ld a,d
	ld e,e
	ld a,e
	ld (hl),l
	ld a,e
	rst 30h
	ld a,e
	halt
	nop
	ld a,h
	ret nz
	ld a,h
	ld l,(hl)
	ld a,l
	xor a
	ld a,l
	rst 38h
	dec d
	ld a,(hl)
	ld c,h
	ld a,a
	sub l
	nop
	or l
	ld a,a
	ret po
	ld a,a
	call sub_5f80h
	nop
	add a,c
	sub c
	add a,c
	sub 081h
	jp po,02181h
	ld b,082h
	ld d,h
	add a,e
	and d
	add a,e
	ei
	and a
	call p,0bcdeh
	rlca
	call m,03a79h
	ld c,b
	xor l
	adc a,b
	inc bc
	ld d,l
	jp z,048fbh
	ld a,c
	and l
	defb 0edh ;next byte illegal after ed
	nop
	ld d,d
	ret
	ret
	ld b,07fh
	jp l7a07h
	nop
	ld b,03fh
	push hl
	ld a,(hl)
	add a,002h
	and b
	ld (hl),a
	ld b,026h
	nop
	ld l,a
	add hl,de
	ld b,(hl)
	add a,e
	call nz,02be1h
	nop
	add a,(hl)
	call nc,002f0h
	add a,b
	ld (hl),a
	ret
	call sub_79e7h
	rlca
	jr c,l65efh
	inc hl
	jp l7746h
	add a,c
	ld e,e
	cpl
	defb 0edh ;next byte illegal after ed
	add a,h
	add a,(hl)
	inc hl
	add hl,de
	ld a,b
	ret p
	ret p
	ld a,0d4h
	ld (de),a
	jp z,l7a3fh
	ret po
	ld e,h
	ld hl,08017h
	jp po,03d6bh
	ret nz
	dec (hl)
	ex de,hl
	ld a,(l4945h)
	ld e,h
	rrca
	cp 0a9h
	nop
	inc bc
	ld hl,04743h
	jp c,l750ah
	ld a,d
	cp 007h
	or d
	add a,(hl)
	ld hl,07526h
	add hl,bc
	add a,e
	dec bc
	ld c,00bh
	ld hl,00966h
	ld e,c
	ld c,084h
	ld (hl),0a6h
	rst 28h
	nop
	and (hl)
l65efh:
	ld a,d
	cp c
l65f1h:
	jp z,l7a91h
	ld a,c
	ld (0a641h),a
	rrca
	sbc a,b
	exx
	ld hl,0ae40h
	djnz l6645h
	ld bc,000d9h
	call 005bah
	ex de,hl
	jp l7be1h
	ex de,hl
	nop
	ld a,r
	and 01fh
l6610h:
	call z,sub_7b0dh
	cp 020h
	inc d
	jp nz,0230ch
	call 0843fh
	ld h,e
	dec hl
	inc d
	nop
	ld h,l
	push hl
	ld c,(hl)
	add a,e
	ld h,l
	in a,(065h)
	ld c,l
	and 075h
	add hl,bc
	out (065h),a
	ld h,076h
	add hl,bc
	jr nc,$+103
	ld h,(hl)
	halt
	pop hl
	xor d
	ld a,e
	ld h,l
	ld (065f7h),a
	rlca
	rst 10h
	ld h,l
	add a,b
	ld h,l
	ret po
	xor (hl)
	ld a,(0f0d5h)
l6645h:
	di
	ld a,(0277bh)
	ld a,(0067ah)
l664ch:
	ret nz
	adc a,(hl)
	ld b,h
	ld a,e
	ld h,(hl)
	add a,e
	jp po,00723h
	dec sp
	ld a,h
	ld h,(hl)
	call pe,0be13h
	cp b
	add hl,bc
	jp c,l7b30h
	adc a,(hl)
	pop bc
	ld a,l
	ld h,(hl)
	dec hl
	call m,02149h
	inc h
	ret
	jr $+129
	jr nz,l66aah
	rst 10h
	jr nz,l65f1h
	jr nz,l66e0h
	ld d,c
	jr nz,$+115
	add a,c
	jr nz,l66c2h
	ld c,e
	sbc a,c
	ld a,086h
	rlca
	ld (bc),a
	ld (hl),a
	dec e
	add hl,de
	push de
	ld e,(hl)
	xor d
	ld bc,03cc6h
	cp b
	jp c,07b72h
	call nz,0c3d0h
	adc a,h
	ld a,e
	push hl
	add hl,de
	add a,019h
	jp c,019d6h
	ld d,a
	jp nc,01914h
	ret p
	ret nz
	jp nz,l7bdch
	dec hl
	ld b,(hl)
	sub b
	ret p
	inc a
	and 0c2h
	res 0,d
l66aah:
	ld h,d
	jp nz,04ed5h
	inc b
	ld d,b
	cp (hl)
	jp c,l7ba9h
	ld c,(hl)
	jp 0bf41h
	inc b
	and (hl)
	cp (hl)
	jp nc,005b4h
	inc sp
	rst 38h
	ld a,(bc)
	ld l,l
l66c2h:
	add a,c
	rst 38h
	jp c,018bfh
	sbc a,h
	ret nc
	ld bc,08619h
	cp 004h
	jp nz,00acah
	ld (bc),a
	inc bc
	cp 0fch
	jp nz,006d1h
	add hl,de
	ld (iy-051h),a
	ld e,d
	cp c
	inc (hl)
	rst 8
l66e0h:
	ld l,l
	ex af,af'
	inc b
	add a,b
l66e4h:
	pop af
	ld a,(hl)
	cp 0e3h
	ret c
	dec d
	ld a,(0c15fh)
	ex (sp),hl
	sub e
	cp c
	add a,d
	ld (hl),006h
	dec hl
	ld h,a
	jr z,$+37
	xor a
	ex (sp),hl
	dec h
	ld de,0d005h
	ld h,b
	ld c,b
	ld b,(hl)
	sub b
	jp m,0111fh
	ld a,h
	cp 00ah
	sub b
	djnz l66e4h
	jr c,l6712h
	ld e,006h
	ld bc,006ddh
	ret po
l6712h:
	jr l6716h
	ld b,006h
l6716h:
	inc hl
	inc bc
	jp 0ed04h
	ld b,h
	dec de
	push bc
	rst 38h
	dec de
	set 7,(hl)
	dec de
	ld c,b
	dec iy
	or a
	ret nz
	ld c,(hl)
	sub c
	jp m,08954h
	ld de,00e14h
	rra
	ld h,(hl)
	ld b,07dh
	cp l
	dec sp
	ld b,l
	ld b,00eh
	ld (bc),a
	xor h
	ld e,e
	inc (hl)
	inc d
	ret po
	rst 38h
	ret nc
	inc d
	cp 023h
	add hl,de
	ld (hl),000h
	inc c
	dec hl
	ld (hl),b
	dec hl
	ld (hl),c
	ld e,004h
	xor a
	adc a,(hl)
	sub h
	inc hl
	call po,sub_4e11h
	and 0a4h
	rlca
	ld (hl),a
	push hl
	ld b,b
	adc a,b
	ld a,h
	ld a,(hl)
	xor 008h
	adc a,h
	xor 09ch
	sub c
	nop
	ld bc,0a1cah
	ld a,h
	ld a,b
	or a
	jp m,l5c98h
	ld a,h
	and h
	inc b
	ld b,b
	ld a,c
	rlca
	and b
	ld a,h
	dec c
	dec c
	inc c
	ld l,07eh
	add a,c
	call 0cf8ch
	ld bc,0cdebh
	ld e,(hl)
	ld bc,0d2ebh
	pop hl
	cp d
	dec hl
	ld c,e
	ld (0c40eh),hl
	ld a,(0230ah)
	ld c,c
	xor d
	push de
	rra
	sub c
	xor c
	ld a,h
	ld de,00111h
	inc hl
	ld b,c
	cp 064h
	ld a,(bc)
	sub h
	dec de
	call c,01d66h
	ld h,c
	ld d,b
	rrca
	call z,039d9h
	or (hl)
	ld c,e
	push hl
	jr c,l67e4h
	rst 0
	dec l
	ld bc,02e00h
	nop
	ld b,070h
	add a,c
l67b8h:
	ret p
	dec c
	ex (sp),hl
	inc bc
	rrca
	dec (hl)
	ld bc,003ffh
	in a,(002h)
	add hl,bc
	sbc a,l
	ld bc,007e3h
	rrca
	inc a
	dec c
	or e
	rrca
	rlca
	sbc a,a
	ld sp,03f0eh
	cp h
	ld d,c
	ccf
	sbc a,c
	ld e,000h
	ld (hl),c
	ld (hl),l
	rrca
	ret c
	and h
	push af
	ld (hl),h
	ld a,(hl)
	ld b,(hl)
	ld a,l
	push af
l67e3h:
	add a,b
l67e4h:
	inc hl
	inc hl
	ld de,l7ceeh
	call 00500h
	ld a,d
	inc hl
	ld a,(0c157h)
	rst 0
	ld b,d
	jp c,l7da4h
	ret po
	jp nc,0e69eh
	jp nz,04f07h
	jp po,0a224h
	ld a,l
	jp po,089d7h
	ld b,(hl)
	ret z
	inc hl
	ccf
	ret z
	ld h,e
	xor 086h
	or a
	ld b,e
	ld c,b
	ld a,0ddh
	ld a,0d6h
sub_6813h:
	scf
	sub (hl)
	sub h
	ld b,d
	inc (hl)
	jp nc,l7dd4h
	ret p
	jr nc,l6837h
	xor a
	and c
	ld hl,(0364fh)
l6823h:
	inc d
	inc e
	ret m
	ld (de),a
	inc hl
	jp c,03585h
	add a,b
	ld sp,l7807h
	inc hl
	add hl,sp
	or 023h
	ret p
	ld hl,0d672h
l6837h:
	ld hl,08800h
	or (hl)
	cp 000h
	ld (hl),a
	cp 005h
l6840h:
	inc bc
	ld b,l
	add a,007h
	add a,005h
	ld (hl),0ffh
	dec b
	inc b
	call 0090dh
	ex (sp),hl
	nop
	ld b,0aeh
	rlca
	cp c
	jr l6823h
	ld a,(03903h)
	sub 025h
	add a,l
	and h
	nop
	adc a,a
	or e
	ret
l6860h:
	inc l
	ld c,e
	sub c
	ld a,h
	rlca
	and l
	ld (bc),a
	ex (sp),hl
	sbc a,h
	dec c
	jp pe,0a505h
	ld e,c
	pop af
	inc de
	rst 28h
	ld hl,l5e09h
	rst 38h
	ld b,c
	ld (de),a
	rst 28h
	pop hl
	ld h,a
	rst 0
	rlca
	add a,a
	ld a,c
	ld sp,0e19eh
	ld a,a
	sbc a,h
	inc c
	rst 28h
	ex af,af'
	jr $+19
	cp l
	call z,sub_71a2h
	out (01dh),a
	ld b,a
	defb 0ddh,031h,0ebh ;illegal sequence
	sbc a,005h
	jp z,000cfh
	ld de,l7dffh
l689ah:
	jp nz,l7f0bh
	ld de,l7f2ah
	ld a,(hl)
	sub d
	sbc a,l
	adc a,c
	sub (hl)
	call pe,04800h
	add a,h
	ld a,c
	cp 028h
	jp nz,02224h
	ld a,a
	xor l
	add hl,hl
l68b2h:
	sbc a,e
	dec hl
	out (017h),a
	ld a,(0aa1eh)
	ex af,af'
	add hl,de
	ld hl,(08b06h)
	inc b
	jp z,l7f34h
	ld b,093h
	inc (hl)
	dec hl
	xor h
	call z,0188ah
	ld a,(hl)
	jp nz,0e98fh
	ld (de),a
	adc a,e
	ld e,l
	ld c,a
	defb 0ddh,082h,05ch ;illegal sequence
	ld c,l
	xor l
	out (0c0h),a
l68d9h:
	ld c,e
	rst 38h
	call z,08436h
	xor h
	sub a
	add hl,bc
	inc a
	jp nc,l7f75h
	out (0d9h),a
	adc a,b
	and d
	rlca
	dec (hl)
	dec (hl)
	ex de,hl
	cp c
	ld c,b
	add a,a
	ld de,01100h
	dec (hl)
	jp c,00789h
	inc (hl)
	inc (hl)
	jp c,03be2h
	ld h,c
	inc bc
	dec sp
	and d
	ld a,a
	ex af,af'
	cpl
	ld (hl),a
	out (02ah),a
	rlca
l6907h:
	sbc a,l
	add hl,bc
	ld (hl),01ah
	ld d,d
	ld b,(hl)
	ld d,(hl)
	or a
	ret nc
	sbc a,h
	inc sp
	ld e,(hl)
	ld h,02ah
	ld l,d
	call 0fd2ah
	xor e
	rst 30h
	add a,0cdh
l691dh:
	ld hl,(018beh)
	ld hl,(01749h)
	rst 38h
	inc de
	sbc a,c
	push de
	add hl,de
	ld (hl),b
	add a,b
	pop af
	and d
	jp nz,08062h
	jp (hl)
	sub h
	dec b
l6932h:
	jp c,007b1h
	add a,b
	add a,b
	ld a,(hl)
	add hl,de
	cp 0aah
	ld d,c
	jp nc,09e0bh
	ld h,(hl)
	djnz l68d9h
	add hl,de
	jr z,l698ch
	inc bc
	cp 031h
	jp z,0803ch
	ret nz
	jr nc,$-104
	ld h,c
	ret pe
	add a,a
	sbc a,c
	ld h,c
	call z,023cfh
	ld h,085h
	call m,02a30h
	and 0e0h
	ld c,032h
	sub a
	ld h,c
	dec hl
	add a,c
	ld e,h
	add hl,bc
	inc sp
	sbc a,b
	ld h,c
	ld e,e
	dec h
	jr l6907h
l696ch:
	dec h
	sbc a,(hl)
	sbc a,(hl)
	dec h
	cp 025h
	ld l,a
	sbc a,h
	dec h
	ld b,09dh
	dec h
	ex (sp),hl
	jp (hl)
	dec sp
	cp d
	call nz,074bah
	rra
	ld d,077h
	jp z,l7f89h
	ld l,0dfh
	sbc a,d
	sub a
	and c
	ld h,l
	rrca
l698ch:
	ei
	sbc a,c
	xor d
	jr z,l6932h
	ld a,c
	add a,b
	rla
	ld l,b
	sbc a,0cch
	add a,b
	dec hl
	ld (l7885h),hl
	ld (de),a
	dec de
	push de
	dec c
	exx
	ld de,00010h
	add a,084h
	jp nz,00706h
l69a9h:
	rst 8
	ld b,b
	jr z,l69b5h
	add hl,de
	djnz l69a9h
	jr nc,$-45
	exx
	rra
	pop de
l69b5h:
	ex de,hl
	ld e,(hl)
	ld bc,0ba15h
	ld l,d
	ld a,(bc)
	nop
	ret pe
	dec (hl)
	pop hl
	ret z
	add hl,de
	ld (hl),d
	call z,sub_7737h
	sub 070h
	ld c,(hl)
	and d
l69cah:
	jr nz,l69cah
	dec e
	ld (hl),a
	dec bc
	jp nz,0810fh
	inc hl
	add hl,de
	push de
	ld de,020f6h
	ld (de),a
	jr nz,$+37
	ld sp,hl
	adc a,h
	ld b,a
	jr nz,$+52
	cp b
	ld a,0b4h
	ld (08106h),hl
	cp (hl)
	or h
	sub (hl)
	ld b,a
	jr nz,l696ch
	ld (de),a
	add a,d
	sbc a,b
	rst 28h
	ld c,a
	or (hl)
	ld c,02dh
	sub d
	ld h,(hl)
	xor e
	sbc a,c
	rst 20h
	ld bc,0ba00h
	defb 0ddh,0eah,0a9h ;illegal sequence
	or e
	ld bc,00f9eh
	ei
	nop
	rst 28h
	cpl
l6a07h:
	dec sp
	ld (0937dh),a
	sbc a,c
	djnz $-60
	ld a,b
	add a,c
	ex af,af'
	add a,008h
	cp 012h
	in a,(0c2h)
	halt
	ld l,a
	jp 0f4f8h
	rra
	add a,c
	inc e
	call sub_7a05h
	ld l,l
	dec sp
	or a
	add a,e
	add a,a
	inc h
	ld (hl),b
	ld sp,0a4c3h
	jp nz,0a981h
	ld e,d
	cp 002h
l6a32h:
	ld de,08562h
	ld a,004h
	or 03eh
	ld e,d
	jr nz,l6a32h
	dec sp
	ld c,c
	djnz l6a5dh
sub_6a40h:
	dec b
	ret z
	ld (hl),d
	sub b
	xor l
	sub b
	add a,c
	sub l
	call z,0aef6h
	add hl,hl
	ld a,(bc)
	add a,b
l6a4eh:
	ld d,e
	ld (hl),028h
	ld hl,0d488h
	ret nz
	rlca
	ld b,03ch
	ld c,0aah
	call m,020f1h
l6a5dh:
	dec d
	add a,d
	ld b,05ah
	in a,(0a8h)
l6a63h:
	pop bc
	call sub_7908h
	add a,b
	add a,0ebh
	ld b,(hl)
	ex af,af'
	add a,e
	sub (hl)
	ld c,004h
	cp 006h
	ex af,af'
	ld b,b
	cp (hl)
	ld c,005h
	ld a,b
	sub 004h
	ld a,d
	ld (hl),a
	or (hl)
	add hl,sp
	ld h,d
	call nz,08f8bh
	ld b,b
	jp nz,0829bh
	ld a,(0e024h)
	jp nz,0ca39h
	rlca
	push hl
	ld (hl),e
	xor a
	ld e,e
	ret po
	jr nc,$+72
	add a,(hl)
	ld (09230h),a
	add a,l
	ret z
	ld a,(bc)
	ld c,a
	ld (08593h),a
	exx
	ret nz
	sub c
	jp c,0825bh
	and d
	add a,l
	adc a,050h
	ld d,l
	add a,d
	and h
	or e
	add hl,bc
	sub a
	add a,l
	jp 00e6ah
l6ab3h:
	adc a,092h
	ret pe
	ld h,h
	sbc a,h
	ld c,0ffh
	ld c,0cah
	jp p,09009h
	jp c,01580h
l6ac2h:
	jr z,l6ae8h
	adc a,l
	ld a,d
	inc h
	ld c,c
	sub (hl)
	dec d
	adc a,a
	ld c,0d8h
	inc h
	adc a,l
	adc a,c
	inc h
	ret po
	ld c,021h
	sub c
	and d
	rst 0
	ld l,c
	adc a,(hl)
	jp c,0e116h
	ld e,e
	add a,h
	ld b,d
	jp z,082aah
	ret nz
	xor h
	dec hl
	inc d
	ld d,e
	add a,e
l6ae8h:
	xor a
	rst 18h
	call 0b2dfh
	cp h
	ld (hl),e
	add a,d
	or e
	jr z,l6b2dh
	and e
	and d
	sub l
	ret pe
	xor l
	jp z,0451eh
	add a,e
	call 0a204h
	inc b
	jp z,067f8h
	ld c,(hl)
	dec bc
	inc de
	ld (bc),a
	inc de
	ld c,(hl)
	ld (de),a
	ld b,015h
	ld b,022h
	ld b,004h
	ld b,0bah
	jp p,0d4ddh
	ld b,0e2h
	cp a
	ld e,c
l6b19h:
	ld b,025h
	ret pe
	ld bc,025e7h
	rla
	ld (hl),c
	dec h
	inc bc
	dec h
	adc a,033h
	add a,a
	ld a,b
	ld (0839fh),a
	ret po
	pop hl
l6b2dh:
	and b
	add a,e
	sub l
	jr nc,l6ac2h
	cp 008h
	inc h
	jp nc,03641h
	ld d,d
	ld a,(de)
	dec b
	cp c
	rst 30h
	ld b,l
	adc a,(hl)
	djnz l6b73h
	ld a,e
	ld h,d
	adc a,d
	sbc a,c
	sbc a,a
l6b46h:
	ld d,b
	ld (hl),a
	ld (0a167h),a
	ld (hl),a
	sbc a,c
	ld h,(hl)
	ld de,0efcah
	call 0b8ffh
	inc e
	ld de,08363h
	cp b
	adc a,b
	ld bc,0dbb8h
	sub h
	adc a,0ech
	ret p
	inc hl
	ld (hl),l
	add a,e
	cp b
	xor b
	inc (hl)
	cp c
	jp nc,09652h
	ld c,(hl)
	ld e,(hl)
	ld b,a
	ld e,c
	cp h
	defb 0edh ;next byte illegal after ed
	rrc e
l6b73h:
	ld l,05ch
	ld a,(bc)
	inc a
	ld (0b503h),a
	push af
	ld a,(06f72h)
	sbc a,a
	ld a,(02b4dh)
	add a,b
	ld c,(hl)
	jp nz,08410h
	ld a,(l627dh)
	call nz,03195h
	add hl,de
	add a,h
	ld c,h
	ld b,(hl)
	xor e
	ld e,h
	ld d,d
	cp e
	ld b,d
	add hl,de
	ld e,0dah
	ret c
	ld a,(hl)
	dec hl
	adc a,0d2h
	inc b
	rst 30h
	jp 0c0feh
	rlca
	daa
	xor a
	dec bc
	ld a,a
	jp nz,0e09bh
	ld b,0c1h
	sub h
	cp b
	nop
	ex af,af'
	pop bc
	ld (0c3a3h),a
	ld a,010h
	ld (00747h),a
	rlca
	and d
	jp 088a4h
	inc h
	call 038c0h
	jp nz,03c32h
	sub c
	ld (bc),a
	ld a,b
	ld (bc),a
	ld a,h
	jp nz,0890dh
	add hl,sp
	rlca
	dec a
	ld (bc),a
	dec l
	ld a,c
	ld (bc),a
	add a,l
	ld (hl),070h
	sbc a,079h
	ld e,h
	jp 00847h
	rst 0
	jp po,0b218h
l6be2h:
	and b
l6be3h:
	ld bc,l51d2h
	add a,h
	ret
	rst 10h
	ex af,af'
	ld (bc),a
	ex af,af'
	ld l,(hl)
l6bedh:
	inc bc
	ex af,af'
	jp po,0e9bch
	ex af,af'
	dec b
	ex af,af'
	or d
	ld d,c
	ret z
	ld h,a
	add a,h
	inc b
	rst 0
	jp 08223h
	ld h,b
	ret
	jp 005c9h
	dec d
	nop
	call c,024ebh
	and h
	and c
	ld a,(bc)
	ld a,(bc)
	inc bc
	ld l,(hl)
	nop
	rrca
	daa
	di
	rrca
	inc b
	rrca
	sbc a,c
	in a,(033h)
	defb 0edh ;next byte illegal after ed
	ld d,h
	rrca
	inc c
	ret p
	rrca
	rrca
	ex (sp),hl
l6c21h:
	dec (hl)
	nop
	add hl,bc
	rrca
	ld (02a73h),a
	dec c
	jr z,l6c2bh
l6c2bh:
	ld (0ec93h),a
	rrca
	ld h,e
	jr z,l6bedh
	pop hl
	ccf
	dec e
	ld bc,0870fh
	sub e
	cpl
	nop
l6c3bh:
	inc de
	ld c,a
	sbc a,b
	and e
	dec l
	nop
	ld c,a
	ld d,00fh
	djnz l6c55h
	scf
	rla
	rrca
	sbc a,b
	add a,e
	ld h,0fdh
	ld a,c
	add hl,de
	cpl
	rst 0
	rrca
	inc bc
	dec de
	rrca
l6c55h:
	sbc a,b
	jr c,l6c89h
	nop
	ld e,l
	inc e
	cp (hl)
	ld (de),a
	halt
	rrca
	jp 0311eh
	ld (bc),a
	ld e,06fh
	ld h,a
	jr c,l6c98h
	rra
	xor d
	jr c,l6c3bh
	dec h
	ld (0a20fh),hl
	inc d
	sbc a,a
	ld a,b
	rrca
	scf
	nop
	ld h,00fh
	inc a
	rra
	ld a,b
	inc h
	rrca
	and d
	ld (01ecfh),a
	add hl,sp
	nop
	ld hl,(l630fh)
	add a,e
	dec sp
	add a,d
l6c89h:
	rrca
	ret z
	ld h,h
	ret z
	ld hl,03d93h
	ld b,02ch
	rst 38h
	rrca
	call pe,0028dh
	and b
l6c98h:
	ld d,b
l6c99h:
	and 090h
sub_6c9bh:
	and b
	dec b
	ld hl,0f45ah
	dec b
	ld h,h
	ld h,b
	ld b,(hl)
l6ca4h:
	ld (bc),a
	nop
	ld e,d
	add a,d
	ld h,b
	ld (01062h),a
	rra
	ld e,h
	scf
	ld (bc),a
	ld c,081h
	ld e,a
	nop
	ret
	ld l,(hl)
	or b
	ret z
	defb 0edh ;next byte illegal after ed
	add a,b
	ret z
	ld (l4850h),a
	ld d,b
	ld (bc),a
	ld e,d
	ld (bc),a
	adc a,h
	add hl,de
	rla
	ld d,b
	ld a,b
	pop hl
	inc d
	ld c,082h
	inc (hl)
	ld c,00ah
	rst 30h
	ret nc
	ld h,03ch
	ld a,047h
	nop
	adc a,h
	inc hl
	jr nz,l6cf7h
	push af
	jr nz,l6ca4h
	jr z,l6d02h
	ld b,b
	sub (hl)
	add a,b
	nop
	ld c,b
	ld bc,08c40h
	ld c,e
	ret nc
	ex af,af'
	ld e,012h
	ld b,b
	or h
	and 00bh
	ld e,l
	ld (bc),a
	ld h,b
	rst 30h
	ld b,h
	djnz $+1
	ld l,c
l6cf7h:
	add a,b
	ld (bc),a
	ld h,h
	nop
	xor c
	ld h,h
	djnz l6d3eh
	add a,b
	dec b
	xor b
l6d02h:
	inc a
	djnz l6d4bh
	adc a,(hl)
	nop
	jr nz,l6c99h
	ld (02802h),a
	ret po
	inc b
	jp m,01020h
	ld h,b
	ld c,a
	sub (hl)
	ld a,(de)
	ld d,b
	add a,d
	add hl,bc
	inc d
	ret nc
	ld b,h
	jp 01e50h
	ex af,af'
	nop
	or h
	or b
	xor b
l6d23h:
	rlc b
	or b
	inc bc
	add a,h
l6d28h:
	ld a,(de)
	ld (l6440h),a
	add hl,hl
	ld b,b
	ld b,c
	ld d,b
	dec (hl)
	ld bc,l4270h
	ld e,d
	ex af,af'
	add hl,hl
	ld b,(hl)
	cpl
	ld d,e
	add a,d
	ld (bc),a
	inc de
	ld a,b
l6d3eh:
	inc a
	dec b
	inc a
	dec b
	ld b,b
	ld h,h
	and b
	ld b,b
	ld l,(hl)
	ld a,(bc)
	ld b,b
	jr z,l6d69h
l6d4bh:
	ld a,(bc)
	ex af,af'
	ld (bc),a
	ld (0a40ah),a
	jr z,l6d55h
	jr z,l6d57h
l6d55h:
	ld e,d
	adc a,c
l6d57h:
	jr nz,l6d9fh
	ld e,011h
	pop hl
	ex af,af'
	dec d
	ld a,(de)
	or b
	rst 10h
	ld b,b
	dec e
	call c,l5f4fh+1
	ld h,l
	ld d,b
	ld h,d
l6d69h:
	rst 38h
	ld c,l
	ld a,e
	dec e
	ld b,h
	ld d,l
	jp c,031adh
	ld b,b
	ld b,d
	dec bc
	ld (hl),00bh
	jr nz,l6d28h
	dec bc
	add a,e
	jr nz,$+62
	rst 38h
	add a,b
	add hl,hl
	ld d,b
	jr nz,l6dabh
	inc d
	ld d,b
	inc d
	sub e
	ld (bc),a
	ld e,002h
	add hl,de
	dec b
	adc a,h
	dec bc
	ld h,h
	jr z,$+13
	and a
	ld c,d
	jr nc,l6d23h
	ex af,af'
	ld d,b
	ld l,(hl)
	ld (bc),a
	ld h,d
	nop
l6d9bh:
	jr nz,l6e0dh
	sub (hl)
	inc l
l6d9fh:
	ld bc,022d0h
	adc a,h
	adc a,c
	add a,b
	ld a,b
	cp a
	djnz l6dbdh
	nop
	xor (hl)
l6dabh:
	ld b,h
l6dach:
	add a,d
	adc a,h
	ld bc,019a2h
	ld (bc),a
	ld e,d
	jp c,02cadh
	ld c,l
	ld d,c
	ld bc,00265h
	ld b,(hl)
	ret z
l6dbdh:
	sub l
	rla
	ex af,af'
	inc l
	sub (hl)
	ex af,af'
	adc a,d
	ret z
	ld (bc),a
	inc h
	ld h,h
	ld e,0a2h
	ret m
	ex af,af'
	ld e,e
	and 01dh
	dec sp
	sub c
	and 045h
	jp nz,0cc08h
	cpl
	ld d,b
	call po,08208h
	ld b,b
	ld h,h
	cp (hl)
	ld d,e
	ld (bc),a
	sub (hl)
	ld b,h
	ld l,(hl)
	adc a,05ah
	adc a,l
	jp c,l6449h
	add a,c
	xor b
	add a,h
	xor d
	ld d,e
	ld (bc),a
	and b
	dec b
	di
	dec h
	defb 0edh ;next byte illegal after ed
	dec a
	ld (bc),a
	rrca
	ret p
	inc a
	nop
	rst 38h
	ret m
	ld (hl),b
	ld b,e
	nop
	nop
	nop
	jp 04b73h
	inc b
	ex af,af'
	ex af,af'
	inc b
	inc b
	ld bc,00303h
	rlca
l6e0dh:
	nop
	jp m,00001h
	nop
	inc c
	ex af,af'
	inc c
	nop
	nop
	ld (bc),a
	ret nz
	ret nz
	ret z
	jp nz,03cf8h
	rlca
	jr nc,$+98
	nop
	inc bc
	ld h,b
	jr l6e46h
	inc e
	ld c,015h
	ld e,020h
	rra
	rla
	ld b,003h
	rrca
	ld c,01ch
	jr l6e53h
	ret nz
	nop
	ret po
	ret p
	call p,00fdeh
	scf
	rst 38h
	ret m
	ld a,(bc)
	ld b,b
	sub b
	dec b
	nop
	defb 0fdh,001h,04eh ;illegal sequence
l6e46h:
	rlca
	inc c
	djnz l6e69h
	ld h,b
	ccf
	jp p,03ffch
	cp 01eh
	cp (hl)
	ret nz
l6e53h:
	nop
	ld b,b
	ld (bc),a
	djnz l6e97h
	rra
	ld e,h
	rlca
	ld bc,0381ch
	jr nc,l6e60h
l6e60h:
	nop
	ld (0f6d8h),hl
	ld (iy+078h),e
	inc b
	ccf
l6e69h:
	ld b,c
	dec sp
	ld bc,000f2h
	ld (bc),a
	rrca
	halt
	ccf
	call pe,0e251h
	ld h,c
	add a,b
	ld (hl),d
	ccf
	ld (hl),b
	ret nc
	ccf
	jr $+65
	jr c,l6e94h
	ld e,00fh
l6e82h:
	rlca
	inc c
	ccf
	ld bc,l7c40h
	ld a,(hl)
	rra
	add a,b
	ld d,008h
	ld a,0ffh
	nop
l6e90h:
	call po,05a00h
	rra
l6e94h:
	nop
	rst 38h
	inc bc
l6e97h:
	add hl,bc
	ld a,h
	add hl,bc
	inc bc
	rst 38h
	rra
	or b
	ld h,h
	jr nc,l6ef1h
	cp b
	nop
	call nc,0d8dah
	djnz l6e90h
l6ea8h:
	djnz l6e82h
	jp c,0d41ch
	cp b
	ld d,b
	ld c,e
	daa
	inc bc
	jr nz,l6ef0h
	dec e
	ld a,d
	nop
	ret nc
	nop
	ret pe
	ld d,0e8h
	jr l6ea8h
	call nc,0d0e8h
	jp pe,0000fh
	inc bc
	rlca
	ld a,a
	rst 38h
	ld a,a
	rrca
	inc bc
	ld c,0c0h
	and b
	xor b
	daa
	call nc,01ed6h
	ret po
	ld c,07ch
	ld h,c
	inc sp
	inc a
	ld b,b
	rrca
	and (hl)
	ld d,b
	ld e,033h
	jr l6f24h
	ld e,l
	sbc a,(hl)
	nop
	add hl,de
	inc a
	nop
	dec c
	ex (sp),hl
	rrca
	ret pe
	ld bc,000e3h
	rlca
	push bc
l6ef0h:
	add a,b
l6ef1h:
	nop
	rst 0
	rlca
	adc a,a
	ccf
	rst 18h
	nop
	ret m
	jr nz,l6f2bh
	inc e
	dec b
	dec d
	dec (hl)
	ld (de),a
	dec d
	dec b
	inc e
	cp e
	call c,0a0dfh
	ret p
	call m,sub_7bf0h
l6f0bh:
	ret nz
	dec h
	nop
	ld (bc),a
	ld e,c
sub_6f10h:
	sub e
	or (hl)
	rst 8
	ld h,c
	ex af,af'
	pop af
	djnz l6f26h
	ld b,b
	ld a,(0ec57h)
	ld a,a
	jp 0f060h
	ret p
	ld h,b
	ld e,(hl)
	rst 20h
l6f24h:
	and d
	sub (hl)
l6f26h:
	sub l
	add a,(hl)
	jr nc,l6f2ah
l6f2ah:
	ld c,l
l6f2bh:
	and (hl)
	and d
	inc l
	jp 0385ch
	jr l6f3fh
	nop
	ld c,018h
	jr c,l6f9bh
	ld b,b
	inc bc
l6f3ah:
	inc c
	inc de
	rla
	ld l,02ch
l6f3fh:
	rlca
	inc l
	ld l,017h
	inc de
	inc c
	rra
	jr nz,$+50
	ret z
	ret pe
	ld (hl),h
	inc (hl)
	ld b,034h
	ld (hl),h
	ret pe
	ret z
	jr nc,$+33
	ret
	ld a,01eh
	push de
	sub h
	ld (hl),b
	and l
	ld b,070h
	jr nc,l6f96h
	ld e,040h
	ret nz
	ld a,078h
	inc e
	inc c
	ld c,006h
	ld c,h
	ld b,0f3h
	inc e
	ld l,h
	ld a,b
	ld b,b
	ld a,011h
l6f70h:
	nop
	ld h,028h
	ld c,b
	ld d,b
	ld d,b
	ld c,b
	jr z,$+40
	ld l,h
	ld de,03e40h
l6f7dh:
	adc a,b
	nop
	ld h,h
	inc d
	ld (de),a
	ld a,(bc)
	ld a,(bc)
	ld (de),a
	inc d
	ld h,h
l6f87h:
	ld h,l
	adc a,b
	ld b,b
l6f8ah:
	push bc
	dec d
	sbc a,h
	inc c
	jr nz,l6ff0h
	ret nz
	nop
l6f92h:
	nop
	ld h,b
	jr nz,l6f96h
l6f96h:
	inc c
	rlca
	inc bc
	ret nz
	ret po
l6f9bh:
	ld d,b
	jr nc,l6f70h
	ld b,061h
	inc bc
	nop
	ld b,004h
	ld sp,hl
	djnz l6f87h
	ret nz
	inc bc
	ld b,(hl)
	inc b
	jp z,0cacah
	xor c
	ld b,b
	call pe,01f6ah
	dec h
	ex de,hl
	ld (055eah),a
	ld (bc),a
	ex af,af'
	add a,d
	jr nz,l6f7dh
	inc c
	rst 38h
	sub b
	inc bc
	ld h,002h
	ld hl,02b2bh
	ld hl,00326h
	adc a,c
	or b
	inc c
	jr nz,l6fceh
l6fceh:
	jr nz,$+18
	djnz l6f92h
	ld b,d
	xor d
	jp c,014d2h
	or d
	ld h,(hl)
	add a,b
	add hl,bc
	dec c
	ex af,af'
	xor c
	sub e
	ld de,0043fh
	ld e,l
	ld d,e
	ld d,e
	ld e,l
	ccf
	ld de,01055h
	jp 08002h
	adc a,b
	nop
	inc h
l6ff0h:
	sub h
	ld b,h
	ld h,04ch
	adc a,h
	dec d
	adc a,b
	inc e
	inc l
	ld (bc),a
	sub h
	nop
	ccf
	ld l,a
	ld b,e
	inc b
	inc de
l7001h:
	inc de
	ld b,h
	ld l,e
	xor d
	jp po,09482h
	ld h,b
	ld b,b
	ld bc,0f4a0h
l700dh:
	inc b
	and b
	ld h,b
	ld a,b
	add a,b
	and h
	ld h,b
	call nz,0b0d8h
	add a,h
	dec b
	ld bc,07b3bh
	dec d
	inc bc
	rlca
l701fh:
	scf
	scf
	inc sp
	inc e
	rlca
l7024h:
	rra
	nop
	ret po
	or b
	ret c
	sbc a,b
	ret p
	djnz l7051h
	cp d
	cp h
	jr z,$-78
	ld (hl),h
	ld (hl),b
	ld b,(hl)
	ld (hl),b
	rst 18h
	ld bc,01004h
	ld bc,00605h
	ld d,a
	ret p
	djnz l7045h
	ld bc,l4610h
	inc b
	rst 18h
l7045h:
	ld b,h
	and a
	djnz l7091h
l7049h:
	ld b,06ah
	jr c,l7001h
	jp nz,01006h
	or a
l7051h:
	inc l
	ld e,015h
l7054h:
	inc sp
	add hl,hl
	jr $+70
	call nc,00210h
	jr l7086h
l705dh:
	inc sp
	and b
	jr nz,$+32
l7061h:
	sbc a,b
	ld hl,(00731h)
	or b
	ld sp,hl
	jr c,l7061h
	inc c
	rlca
	ld sp,0982ah
	jr nz,l7024h
	dec de
	ccf
	dec hl
	inc bc
	jp c,0c13fh
	jp (hl)
	ld (0313fh),hl
	sbc a,h
	ccf
	ld (04cdfh),hl
	sbc a,d
	ld (bc),a
	add hl,bc
	ccf
	jr z,l7049h
l7086h:
	ccf
	add hl,bc
	ld (bc),a
	jr nz,l70cdh
	add a,b
	jr nz,l70e2h
	ld b,03fh
	inc b
l7091h:
	inc e
	ret m
	ld b,054h
	jr nz,$-32
	ret pe
	ld b,019h
	ld b,a
	djnz l7061h
	and e
	ld c,000h
	rrca
l70a1h:
	nop
l70a2h:
	dec de
	ld (bc),a
	call nz,01b5bh
	nop
	ld (hl),b
	jr nz,l70a1h
	and l
	adc a,d
	pop de
sub_70aeh:
	ld c,c
	ld h,b
	rst 10h
	inc bc
	ld (bc),a
	add a,b
	jr $-30
	ccf
	ld b,e
	ld b,008h
	jr nz,l70fch
	ld d,a
	sbc a,d
	dec e
	cp (hl)
	halt
	or h
	ld b,b
	ld b,b
	add a,(hl)
	ld (hl),b
	sbc a,b
	inc hl
	ret m
	ld (hl),b
	jp z,01438h
l70cdh:
	ld h,05bh
	call nz,00f17h
	ld b,b
	inc bc
	and e
	call nz,01947h
	ld b,09bh
	inc d
	jr l705dh
	ld c,h
	ld (bc),a
	add a,a
	ld h,b
	or c
l70e2h:
	adc a,08ah
	ret
	ld h,c
	jr nz,l7158h
	ld (hl),0dch
	adc a,a
	ld h,h
	res 1,b
	ld b,0a0h
	ex (sp),hl
	ld (hl),001h
	ld (hl),b
	ret m
	sbc a,b
	ld (hl),b
	add a,(hl)
	djnz l715ah
	ld c,h
	ret nz
l70fch:
	ret
	call p,0ad00h
	call po,09cb5h
	ld l,e
	ld e,d
l7105h:
	adc a,a
	xor e
	ld (de),a
	ld h,(hl)
	add hl,hl
	inc h
	cp e
	ld b,(hl)
	sbc a,a
l710eh:
	djnz $-62
	and b
	add hl,de
	ld b,(hl)
	ld b,d
	add a,d
	add a,b
	ld bc,l58b4h
	and b
	ld (hl),b
	ret po
	rst 38h
	nop
	set 2,(hl)
	sbc a,l
	in a,(0e3h)
	ld h,a
	halt
	jp nc,0f702h
	sbc a,0f0h
	rst 18h
	call pe,0bfe0h
	inc (hl)
	ld d,b
	ld a,b
	nop
	sub 0afh
	sub e
	ld h,e
	and e
	ld b,d
	halt
	cp h
	nop
	ret c
	ld (hl),b
	ret nz
	jp nc,0a9edh
	jp pe,000b8h
	sub c
	ld l,b
	ld e,e
	add a,(hl)
	xor c
	ld (hl),h
	ld a,(03429h)
	ld c,b
	or b
	ld l,b
	ret po
	sub b
	inc d
	ld c,b
	sub h
	sub b
	cp e
	inc d
l7158h:
	ret pe
	or b
l715ah:
	cp (hl)
	add a,b
	call p,0dfffh
	sub 09bh
	nop
	sbc a,0e7h
	ld h,a
	ld (hl),a
	out (0fbh),a
	out (0e7h),a
	ld a,(de)
	defb 0ddh,0eeh,0f0h ;illegal sequence
	ld e,a
	jr nz,l7171h
l7171h:
	ret m
	cp h
	halt
	ld a,d
	cp d
	ld (hl),h
	ld l,h
	cp b
	and l
	rst 38h
	nop
	ld (hl),00ch
	jp nz,08234h
	adc a,d
	exx
	ld b,012h
	cp d
	jr nc,l719ch
	cp a
	sub d
	jp 03810h
	inc b
	ld a,b
	ld (bc),a
	rst 28h
	jr nz,l719dh
	cp l
	and d
	add a,b
	ret po
	cp l
	ret po
	add hl,sp
	ld (hl),e
	ld e,h
l719ch:
	cp a
l719dh:
	call m,00976h
l71a0h:
	daa
	ld sp,hl
sub_71a2h:
	defb 0fdh,037h,0beh ;illegal sequence
	sub c
	ld c,0d7h
	nop
	cp h
	cp (hl)
	and 0e2h
	inc hl
	ex (sp),hl
	rrca
	inc de
	rst 18h
	add a,e
	sbc a,(hl)
	ex (sp),hl
	cpl
	ret po
	and b
	ld b,b
	rlca
	ld b,h
	ld b,c
	ld de,0b131h
l71bfh:
	ld c,0c1h
l71c1h:
	ld b,0b8h
	ld (02a3fh),a
	cp (hl)
	adc a,d
	cp h
	sub (hl)
	and c
	inc a
	ld c,b
	jr $-66
l71cfh:
	ld (hl),0bfh
	and h
	cp b
	and b
	ccf
	ei
	cp 001h
	jp m,07ffeh
	ccf
	ld sp,hl
	call m,03f36h
	ret nz
	ret p
	ret m
	call nz,0f401h
	call p,0fc34h
	xor b
	ret m
l71ebh:
	ret p
	xor c
	ld d,h
	ccf
	ret nz
	or (hl)
	ret po
	di
	xor b
	dec a
	nop
	dec a
	rrca
	cp 000h
	sub h
	ld bc,l4ab2h
	ex af,af'
	jp pe,00b8ah
	jr z,l71bfh
	adc a,e
	add hl,bc
	djnz l71c1h
	defb 0edh ;next byte illegal after ed
	add a,b
	call po,0f042h
	cp e
	and e
	sub b
	ex af,af'
	cp a
	add hl,de
	call nz,0d0d5h
	jp c,00245h
	adc a,0deh
	ex de,hl
	jp 0f824h
	inc a
	ld b,h
	nop
	ld a,d
	inc b
	jr l725ah
	ld (hl),l
	ld (l50a3h),hl
	daa
	jp m,0307ch
	inc bc
	ld sp,0703bh
	ld a,b
	sub d
	and c
l7235h:
	add a,c
	ret nz
	push hl
	call p,010e0h
	add a,e
	dec a
	ld a,b
	ld (hl),b
	ld b,b
	ld bc,l4af5h
	sub h
	ret nz
	and (hl)
	inc b
	add a,b
	and h
	xor h
	ret
	and c
	sub h
	ld bc,0233dh
	inc a
	rst 10h
	ld de,0ea35h
	inc sp
	dec d
	add a,(hl)
	ld l,b
	sbc a,d
l725ah:
	nop
	ld b,079h
	ld bc,03a03h
	nop
	ld (hl),d
	inc c
	nop
	ld b,b
	ld (hl),d
	ld bc,0033ah
	ld bc,00679h
	cp h
	cp a
	pop de
	sbc a,a
	xor 0bfh
	sbc a,d
	sbc a,09ah
	res 7,a
	ret p
	ld bc,l4c4eh
	or (hl)
	push af
	adc a,l
	dec b
	inc c
	ld (de),a
	ld e,00ch
	adc a,l
	ret
	nop
	or (hl)
	ld c,(hl)
	ld bc,03880h
	ld b,00eh
	ret nz
l728eh:
	ret m
	ld sp,l6840h
	nop
	ld sp,0c0f8h
	ld c,038h
	add a,b
	dec b
	inc bc
	dec c
	dec l
	ld l,(hl)
	ld (hl),a
	dec sp
	ld bc,09082h
	dec l
	ld e,l
	nop
	dec sp
	scf
	ld d,006h
	add a,b
	or b
sub_72ach:
	jp c,000c0h
	jr $-31
	ld d,h
	sbc a,a
	sbc a,a
	ld d,h
	rst 18h
	jr l72b8h
l72b8h:
	ld b,b
	ld l,h
	ret c
	add a,b
	ld b,016h
	ld (hl),037h
	jr z,l72fdh
sub_72c2h:
	inc e
	ret nc
	xor b
	adc a,(hl)
	ld (0156eh),a
	ld e,l
	dec de
	dec de
	rst 38h
	inc d
	ret c
	call po,009c0h
	ld l,080h
	adc a,a
	ld b,b
	ld l,0beh
	ld hl,l68b2h
	sbc a,a
l72dch:
	inc (hl)
	inc de
	ld e,l
l72dfh:
	dec (hl)
	ld l,(hl)
	ld (hl),03fh
	ld (hl),01fh
	ret nz
	nop
	ld l,b
	or (hl)
	halt
	add a,b
	ccf
	add a,b
	ld e,h
	or (hl)
	rra
	ld e,a
	inc (hl)
	add hl,sp
	ccf
	add hl,sp
	ld (hl),a
	ex af,af'
	ld l,(hl)
	dec l
	dec c
l72fah:
	dec b
l72fbh:
	ld e,a
	ret z
l72fdh:
	ld b,b
	call pe,sub_403fh
	ret z
	ld h,h
	or b
	ld e,a
l7305h:
	ld e,(hl)
	ld e,l
	ld l,e
	dec l
	ccf
	dec sp
	rra
	sub c
	ret c
	ld l,h
	ld b,b
	ccf
	exx
	ret nz
	jp c,l701fh
	ld e,a
	ld (03fd4h),a
	inc e
	sbc a,(hl)
l731ch:
	ld c,b
	ld (hl),09fh
	and e
	ld e,a
	or d
	add a,b
	ccf
sub_7324h:
	or d
	nop
	call po,02c9fh
	call z,02442h
	add hl,sp
	ret m
	inc l
	add a,a
	rla
	ld (l4bafh),a
	defb 0fdh,049h,030h ;illegal sequence
	in a,(041h)
	ex af,af'
	ld b,b
	ld c,b
	or d
	ld (hl),a
	call z,00572h
	ld c,a
	add hl,bc
	ld a,d
	jr $-38
	rlca
	ld bc,00138h
	cp l
	dec (hl)
	push af
	jr nc,l72dfh
	ld e,014h
	ld c,b
	jr nc,l72dch
	and b
	sub 0f8h
	sbc a,l
	inc b
	sbc a,e
	ld d,b
	push af
	jp nz,0123ch
	ex af,af'
	sbc a,a
	ret p
	ccf
	ld (bc),a
	ex af,af'
	ld a,(de)
	ld b,d
	ld c,b
	djnz l72fah
l736ah:
	jp 03f4eh
	add a,d
	add hl,bc
	add hl,bc
	ld b,b
	inc l
	ld h,d
	ld a,b
	dec b
l7375h:
	ccf
	adc a,d
	sub b
	ld bc,l6234h
	cp (hl)
	ret m
	ret po
	ccf
	jp nz,0c941h
	ld a,a
	ld b,008h
	ccf
	jp c,08248h
	ld b,d
	ld b,b
	ld c,c
	push hl
	ld (hl),e
	ld a,a
	cp h
	xor l
	dec d
	ex af,af'
	ccf
	and b
	ld e,03fh
	ex af,af'
	nop
	sbc a,c
	add a,l
l739bh:
	inc (hl)
	add a,(hl)
	inc h
	add a,c
	jr nc,l73c1h
	ld h,h
	dec l
	jp m,0162dh
	dec l
	inc l
l73a8h:
	cpl
	inc bc
	ld b,0b5h
	jr nz,l73aeh
l73aeh:
	dec hl
	ld c,0b9h
	dec d
	dec c
	adc a,000h
	ld (hl),02fh
	ld a,(de)
	inc de
	defb 0edh ;next byte illegal after ed
	ld c,02bh
	inc c
	add a,h
	dec l
	cpl
	ld (bc),a
l73c1h:
	dec l
l73c2h:
	ex (sp),hl
	dec c
	ccf
	sub a
	ld hl,(0ab3fh)
	ld hl,(0d13fh)
	ld hl,(0c33fh)
	ld hl,(0d13fh)
	ld hl,(0dd3fh)
	inc e
	nop
	sbc a,c
	inc b
	rlca
	call z,06bb3h
	dec hl
	xor l
	adc a,h
	ld c,h
	pop hl
	or b
	dec hl
	or b
	ld e,l
	sbc a,e
	ld l,02eh
	rrca
	ld d,057h
	call p,00f8ah
	xor h
	ld c,h
	xor a
	cp b
	nop
	call z,00046h
	ld hl,(02b09h)
	ld bc,0a16eh
	ld hl,(03534h)
l7400h:
	add a,d
	nop
	dec bc
	dec bc
	ld a,(bc)
	ld c,d
	ld bc,00c19h
	dec bc
	dec l
	dec bc
	ld (de),a
	ld l,c
	rra
	dec hl
	add hl,hl
	and l
	dec de
	rra
	and (hl)
	jr nz,$+48
sub_7417h:
	rra
	rst 28h
	jr nz,$-30
	rla
	ld d,d
	rra
	sbc a,d
	dec hl
	add hl,bc
l7421h:
	call p,02b1fh
	ld a,(bc)
	inc c
	ld de,l6f0bh
	and e
	ld c,00bh
	ld l,a
	xor a
	nop
	inc sp
	dec bc
	ld c,005h
	rst 0
	nop
	ex (sp),hl
	rst 10h
	add hl,de
	ld l,000h
	or e
	ld l,e
	nop
	exx
	inc c
	nop
	ret
	dec bc
	dec c
	ex af,af'
	out (04dh),a
	nop
	add a,(hl)
	ld c,a
	nop
	ld (hl),d
	add hl,bc
	dec bc
	or 000h
	ld a,e
	ld b,h
	nop
	ld (hl),l
l7453h:
	ld l,d
	add a,b
	add a,a
	sbc a,l
	call m,000feh
	rst 8
	ld c,b
	nop
	ld h,a
	add hl,hl
	nop
	call c,0fb20h
	nop
	and h
	sbc a,d
	pop bc
	nop
	inc b
	rrca
sub_746ah:
	dec bc
	inc b
	cp b
	nop
	nop
	call po,sub_4a55h
	ld b,b
	add hl,sp
	ld b,d
	ld c,d
	add hl,bc
	ld a,(00505h)
	exx
	or e
	cp h
	nop
	sbc a,(hl)
	ex (sp),hl
	ret nz
	dec b
	ld b,(hl)
	ld b,b
	ld b,a
	inc e
	ld b,a
	ld b,b
	ld c,l
	nop
	pop hl
	add hl,bc
	ld b,(hl)
	ld c,089h
	ret m
	dec b
	ex de,hl
	nop
	ld a,(bc)
	ex af,af'
	ld c,040h
	out (0c1h),a
	ld b,(hl)
	ld b,a
	ld b,(hl)
	nop
	add a,00ah
	ld h,c
	rst 38h
	nop
	ret
	dec bc
	inc bc
	ex af,af'
	pop de
	ld b,h
	ld b,d
	nop
	or d
	sbc a,a
	cp h
	ex af,af'
	ld b,a
	rst 38h
	ld c,d
	cpl
	sbc a,h
	inc e
	cpl
	add hl,bc
	push hl
	xor l
	call m,007fah
	xor c
	cpl
	ex af,af'
	nop
	ld b,005h
	jr c,l7512h
	ld c,h
	call c,0062fh
	ld c,a
	ld b,a
	ex af,af'
	ld b,000h
	ld h,a
	ld b,e
	nop
	or h
	or l
	push hl
	nop
	ld a,038h
	inc c
	ld bc,0d494h
	ld b,h
	ld b,b
	xor h
	ld c,b
	sbc a,(hl)
	adc a,d
	ld (bc),a
	ld c,e
	ld c,l
	ld c,h
	ld c,l
	inc c
	ret z
	cp b
	inc c
	ld b,0cdh
	ld bc,0c300h
	dec b
	inc bc
	dec c
	rra
	dec hl
	jr nz,l750ch
	nop
	ld c,l
sub_74f6h:
	ld c,h
	ld b,b
	nop
	ld (00205h),hl
	ret p
	or b
	jp pe,00202h
	ld d,c
	dec bc
l7503h:
	inc b
	rst 10h
	sub c
	inc c
	ld c,b
	ld b,l
	ld (hl),l
l750ah:
	djnz l7554h
l750ch:
	ld b,b
	inc b
	ld c,a
	ld b,l
	ld b,b
	ld b,h
l7512h:
	ld c,e
	add a,b
	ld b,l
	nop
	ld c,b
	jp nc,l4b7bh
	ld a,001h
	ld (00008h),a
	jp 0e83ah
	rst 38h
	or 002h
	and 0ffh
	inc b
	and 07fh
	or 080h
	ld (0f30ah),a
	inc b
	out (099h),a
	ld a,089h
	ei
	inc b
	ld a,(0e744h)
	dec d
	jr nz,$+52
	inc b
	xor a
	nop
	ld (0c10eh),a
	ld hl,(0057ch)
	ld (hl),01ah
	ld hl,l7f2ah
	inc b
	ret nc
	ld hl,(00482h)
	dec c
	jp nz,0852ah
	inc b
l7554h:
	ld b,d
	adc a,b
	inc b
	djnz l7583h
	adc a,e
	inc b
	ld a,(de)
	call nc,08e2ah
	add hl,bc
	sub c
	sub 009h
	sub h
	add hl,bc
	or l
	sub a
	add hl,bc
	sbc a,d
	inc b
	ex af,af'
	ret z
	ld hl,(0049dh)
	jp nc,000cdh
	ld e,e
	ld c,l
	call l4cfbh
	call 00563h
	inc b
	call sub_75d3h
	call 0059fh
	and d
	sub d
l7583h:
	ld (bc),a
	and l
	ld (bc),a
	adc a,b
	ld de,0ce01h
	ld (hl),h
	call 05652h
	call 00baeh
	inc h
	add hl,sp
	ld (bc),a
	xor b
	ld (bc),a
	in a,(010h)
	ld e,d
	call 005abh
	xor d
	ld d,a
	call sub_6a40h
	cpl
	rst 10h
	ld d,d
	ld a,(0c13dh)
	inc b
	or a
	jp z,l4c0ch
	ld a,011h
	rrca
	ld b,(hl)
	dec b
	and h
	inc b
	ld b,0c1h
	ld a,0feh
	xor c
	ld b,b
	pop bc
	ld (0c3a3h),a
	ld a,010h
	inc e
	ld (00707h),a
	and d
	jp l53cdh
	inc bc
	ld a,(de)
	jp l7632h
	ld e,l
l75cdh:
	and b
	jr z,$+45
	ld a,(l4895h)
sub_75d3h:
	jp l4d2eh
	ld d,e
	dec (hl)
	ld c,l
	call nc,0c909h
	ld (de),a
	ld d,092h
	inc hl
	ccf
	ld (bc),a
	ld d,d
	ld (bc),a
	ld c,c
	ld c,a
	ld (bc),a
	ld b,e
	ld (bc),a
	ld b,b
	ccf
	ld h,h
	sub l
	ld b,d
	add a,b
	ld h,03eh
	pop bc
	cp 01eh
	jp c,00871h
	ld c,h
	dec a
	ld (00b3eh),a
	pop de
	jp 03c21h
	ld (03a03h),a
	inc de
	pop bc
	dec c
	ld b,c
	inc bc
	inc a
	jp nz,l4bdfh
	dec a
	add a,b
	xor a
	ret
	ld hl,04cbch
	inc b
	ld (04cb8h),hl
	ld hl,005dch
	cp d
	jr nz,l7669h
	ld hl,(l5e08h)
	inc hl
	ld d,(hl)
	inc hl
	dec c
	ld a,d
	or e
	jp z,014fah
	dec b
	ex de,hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(01215h)
	cp b
l7632h:
	inc e
	ex de,hl
	ld (bc),a
l7635h:
	ld (hl),c
	inc hl
	ld (hl),b
	jp l4c94h
	ret pe
	ld a,b
	nop
	dec b
	ld d,005h
	rra
	dec b
	ld (02e05h),hl
	nop
	dec b
	add hl,de
	dec b
	ld sp,l5b05h
	dec b
	ld e,(hl)
	nop
	dec b
	ld h,c
	dec b
	ld h,a
	dec b
	ld l,d
	dec b
	ld (hl),b
	ld (l7305h),hl
	and c
	call nc,000aah
	dec e
	ld d,e
	ret m
	ld d,d
	sub b
	ld d,d
	add a,052h
	nop
	ld a,(bc)
l7669h:
	ld d,e
	ei
	ld d,d
	inc b
	ld d,e
	inc e
	ld e,b
	nop
	adc a,d
	ld d,d
	adc a,l
	ld d,d
	cp 052h
	ld bc,00053h
	rlca
	ld d,e
	ld sp,09352h
	ld d,d
	ret
	di
	ld bc,03821h
	nop
	ld de,l4d58h
	ld bc,0c0b0h
	ldir
	ld hl,l7a00h
	ld c,l
	ld (00039h),hl
	ld a,0c3h
	ld (03841h),a
	inc b
	inc de
	ld (0fff1h),a
	adc a,h
	jr c,l7635h
	sbc a,h
	adc a,e
	dec b
	rst 18h
l76a6h:
	di
	or 010h
	ld (00d04h),a
	adc a,h
	add a,b
	inc bc
	ld h,d
	ld (bc),a
	inc bc
	adc a,a
	and d
	ld (hl),d
	xor h
	add hl,hl
	dec (hl)
	ld de,03828h
	di
	add hl,sp
	jp 0e623h
	rst 28h
	inc hl
	pop bc
	xor a
	ld (003b1h),hl
	ei
	ret
	sbc a,(hl)
	add hl,de
	ld e,a
	inc hl
	ld a,c
	ld d,h
	add a,a
	ld c,l
	dec b
	ld c,d
	sub a
	ld c,l
	ld de,0340eh
	and h
	ld d,c
	ld c,040h
	ld d,d
	ret po
	ld c,0c9h
	push af
	sub e
	rst 18h
	inc l
	sub b
	in a,(099h)
	rrca
	call c,01abah
	add hl,sp
	add a,c
	inc c
	ld (0c1a0h),a
	rlca
	call c,sub_7324h
	ld l,l
	inc bc
	daa
	pop af
	ld hl,(00030h)
	or 043h
	ld e,d
	ld e,h
	ld e,(hl)
	rlca
	add a,c
	ld c,(hl)
	ld d,b
	ld d,d
l7706h:
	rlca
	ret nz
	ld b,008h
	ld a,(bc)
	cp 064h
	ld b,h
	ld d,h
	ld d,(hl)
	ld (hl),c
	ld e,b
	rlca
	xor h
	add a,e
	ld c,h
	rlca
	adc a,(hl)
	ret z
	ret z
	call c,090feh
	ld (0e434h),a
	rlca
	ld a,040h
	defb 0fdh,024h ;inc iyh
	ld l,b
	cp b
	cp 0deh
	or (hl)
	ld a,a
	pop bc
	ld a,(hl)
	nop
	pop bc
	inc c
	ld c,010h
	rlca
	ret nz
	jr $+28
	inc e
sub_7737h:
	ret po
	rlca
	inc h
	ld h,07fh
	jr z,$+44
	dec b
	nop
	call m,0c7b4h
	rst 38h
	adc a,h
	ld a,d
l7746h:
	nop
	ld h,e
	jp po,03aa9h
	ret po
	dec c
	dec c
	cp a
	ld (00de0h),a
	ld h,a
	add a,c
	sub h
	ld a,b
	or a
	and b
	and 020h
	jp nz,l51c8h
	ret nc
	ld b,0cah
	rst 8
	ld d,c
	ld a,(0050dh)
	ld l,a
	or a
	call nz,087d3h
	ld a,(l6e97h)
	ld b,006h
	call m,024c1h
	jr nz,l7706h
	inc bc
	push bc
	ld a,(0c154h)
	ld h,e
	ld b,a
	ld a,(bc)
	sub a
l777dh:
	ld b,l
	ld (l67e3h),a
	add a,b
	call po,0e74eh
	add a,d
	sbc a,b
	defb 0fdh,00ah,088h ;illegal sequence
	add a,00ah
	pop hl
	ld d,l
	cp b
	add a,d
	ld h,e
	inc a
	or 042h
	ld h,e
	nop
	push de
	push hl
	exx
	ex af,af'
	push af
	push bc
	or h
	dec b
	ld c,(hl)
	call z,0d872h
	rst 38h
	or 057h
	inc bc
	pop hl
	pop de
	pop bc
	pop af
	ex af,af'
	exx
	dec b
	dec e
	ret
	xor (hl)
	xor (hl)
	ld (bc),a
	dec a
	ld e,(hl)
	xor a
	ld e,c
	ld a,(de)
	cp l
	push hl
	ld b,046h
	cp b
	ld l,e
	cp l
	ld c,05fh
	ld e,d
	ld h,e
	or b
	or a
	push bc
	ld d,l
	add a,e
	sbc a,h
	cp c
	add a,b
	jp nz,l528fh
	call 05d49h
	ld e,b
	ld h,b
	ld (bc),a
	ld e,002h
	rlca
	ld (hl),l
	dec b
	ld a,(09cf3h)
	ld (bc),a
	call z,071f9h
	ld c,c
	pop hl
	pop bc
	call m,0c0b0h
	or 0ffh
	ld (0b68bh),a
	and c
	or c
	xor a
	call nz,0f01ch
	inc e
	ld d,046h
	ld (hl),b
	adc a,h
	push bc
	ret p
	or b
	ret nc
	sbc a,a
	jp 01de6h
	ld b,b
	call nz,0ac21h
	and h
	ld d,(hl)
	pop bc
	sub (hl)
	ld a,b
	sub b
l7807h:
	xor a
	ld hl,0be0dh
	jp z,006dbh
	ld d,d
	ld (hl),a
	call 00313h
	ld h,b
	add a,b
	jr nz,$+46
	call l5c05h
	call 000ebh
	ld d,l
	call sub_53deh
	call l534ch
	jr nz,l7838h
	add hl,bc
	call 06715h
	jr l782eh
	ld c,c
	ld h,(hl)
l782eh:
	ld (bc),a
l782fh:
	ld l,c
	ld (bc),a
	jr nc,l7835h
	inc h
	ld l,a
l7835h:
	ld (bc),a
	dec l
	ld (bc),a
l7838h:
	sub b
	pop af
	sbc a,d
	dec sp
	rra
	jr c,l785fh
	xor (hl)
	dec e
	call 0050ch
	ret pe
	call z,sub_40dfh
	jp (hl)
	ei
	and 010h
	jp nz,03601h
l784fh:
	ld d,e
	ld a,(l5335h)
	or a
	ret nz
	ld h,h
	sub c
	ld b,0c3h
	ld d,c
	jp c,0afc3h
	rlca
	inc h
l785fh:
	ld a,(de)
	jp pe,0011ah
	sbc a,l
	inc de
	jr nz,l784fh
	add a,c
	ld a,0e0h
	ld (08ba4h),a
	jr z,$-47
	sbc a,a
	ld l,b
	ret z
	push de
	inc c
	ei
	bit 6,a
	add hl,bc
	inc d
	jp nz,l5361h
	dec h
	ld b,0c9h
	rlca
	ld (0c202h),a
	add a,004h
l7885h:
	ret z
	add a,d
l7887h:
	jp nz,0d03ah
	and 030h
	ld a,d
	ld d,e
	push bc
	ld b,d
	add hl,bc
	ld l,0deh
	ex de,hl
	dec e
	ld (0db06h),hl
	inc h
	inc b
	pop bc
	ei
	daa
	ld (01004h),a
	ld b,0e5h
	add a,e
	jp nz,00c32h
	inc h
	ld b,e
	and 007h
	jr nz,$+16
	ld a,000h
	add a,008h
	cp 060h
	jr nz,l78b6h
	jr nc,$+64
l78b6h:
	ld c,b
	ld b,d
	ld a,(l5200h)
	jp nz,01a22h
	ld bc,00005h
	dec b
	jp nz,00d21h
	pop bc
	ld b,(hl)
	ld (hl),016h
	inc c
	xor a
	call 0557dh
l78ceh:
	ld hl,(0c7f2h)
	inc bc
	nop
	cp 0a4h
	ld b,030h
	call nc,sub_74f6h
	ld a,(009c4h)
	jp nc,05f8bh
	or (hl)
	rst 10h
l78e2h:
	sbc a,b
	rst 18h
l78e4h:
	push hl
	sub e
	rlca
	and a
	sub b
	pop af
	ld h,b
	ld e,e
	xor c
	jr c,$+60
	inc a
	ld a,(08001h)
	jp nz,l4011h
	jp nz,0cf3eh
	ret nc
	ld e,a
	pop bc
	ld b,000h
	rlca
	push de
	ld a,(hl)
	and 01fh
	cp 015h
	jp z,0a61fh
sub_7908h:
	ld d,h
	inc hl
	cp a
	ld bc,l5436h
	cp 004h
	jr z,$+71
	out (020h),a
l7914h:
	and b
	ld d,l
	call nz,0da03h
	ld d,h
	pop de
	push hl
	ldi
	ld bc,0e196h
	inc b
	add a,b
	ld a,(hl)
	inc a
	ld (de),a
	inc de
	inc de
	ld bc,0110dh
	nop
	add hl,bc
	ld a,(0c635h)
	ld (bc),a
	ld a,(0c79fh)
	ld de,0f7c2h
	jp m,0d108h
	ld bc,0120fh
	ex de,hl
	ld c,05eh
	ex af,af'
	inc bc
	rla
	and b
	dec hl
	ld a,(hl)
	cp 024h
	jr z,l7954h
	dec a
	inc hl
	push hl
	inc hl
	nop
	add hl,bc
	ld de,02816h
	add hl,bc
l7954h:
	xor d
	ld bc,0cde1h
	ld (hl),e
	ld d,l
	jp l6610h
	ld b,b
	ld c,b
	ld (hl),a
	cp 00ch
	jr z,l7976h
	ld b,0e6h
	inc bc
	jr z,l796dh
	pop hl
	rrca
	jr z,l7998h
l796dh:
	add hl,hl
	pop hl
	sbc a,h
	ld (hl),a
	add hl,bc
	ld a,(de)
	ld (hl),022h
	inc hl
l7976h:
	ld (hl),046h
	ld b,008h
	nop
	inc hl
	rrca
	ld a,(de)
	ld (hl),004h
	ld a,036h
	add hl,hl
	ld c,e
	inc hl
	rla
	ld (bc),a
	nop
	ld a,0d0h
	ld (hl),001h
	inc hl
	and h
	add a,(hl)
	dec c
	ld b,a
	ld a,(hl)
	sub b
	ld (hl),a
	rrca
	ld h,b
	ld (hl),03eh
l7998h:
	dec hl
	djnz $+51
	ld c,h
	pop hl
	sub e
	jp nz,0ba00h
	ret c
	cp e
	ret nc
	ld a,(0c234h)
	cp c
	nop
	ret c
	sub 010h
	cp c
	ret nc
	ld a,0f0h
	ld (011a4h),a
	add a,e
	ld b,b
	ld (0c30fh),a
	jr l7a0fh
	ret
	ld a,(hl)
	ld (de),a
	sub 008h
	ld c,a
	ld c,c
	ld a,(hl)
	jr l79c5h
	ld d,a
l79c5h:
	add a,01eh
	ld e,a
	ld hl,0c229h
	call p,07e10h
	dec hl
	cp d
	inc b
	jp c,054b6h
	cp e
	jp nc,l7e03h
	ld h,(hl)
	cp c
	ex af,af'
	ld (00a60h),a
	ld a,(0c151h)
	sub b
	add a,d
	ld (de),a
	ld d,l
	ld c,b
	ld a,b
sub_79e7h:
	add a,e
	jp nc,00599h
	pop hl
	jr c,l7a33h
	ld de,02377h
	sbc a,c
	ld d,03ah
	ld a,0a9h
	ld b,011h
	rlca
	nop
	add hl,de
	ld (hl),d
	ex af,af'
	jp c,l5538h
l7a00h:
	cp (hl)
	pop bc
	ld (0c107h),a
sub_7a05h:
	exx
	add hl,hl
l7a07h:
	or d
	inc (hl)
	xor b
	ret nz
	pop bc
	dec hl
	sbc hl,de
l7a0fh:
	ret
	cp h
	ld de,09610h
	inc hl
	ld e,c
	inc de
	add hl,bc
	ld (hl),024h
l7a1ah:
	inc hl
	cp 081h
	inc a
	jr z,$+27
	ld a,(0514ch)
	dec h
	ret nz
	cpl
	ld c,h
	cp c
	ld l,b
	add a,(hl)
	ld (0c54ah),a
	dec e
	sub 080h
	add hl,bc
	ld c,e
	dec (hl)
l7a33h:
	ret
	ex af,af'
	add a,(hl)
	jr nz,$+121
	ld b,048h
	nop
	ld b,(hl)
	ret nz
	ret
	cp c
l7a3fh:
	ld b,b
	push hl
	ld h,000h
	ld l,b
	ld h,b
	add hl,hl
	nop
	ld de,04803h
	rla
	add hl,de
	push hl
	ld l,a
	inc c
	dec bc
	nop
	nop
	ld (hl),h
	add hl,de
	call 00045h
	ld bc,00ee1h
	sbc a,b
	call 005b4h
	pop hl
	ld d,h
	ret
	xor b
	halt
	ld c,d
	ld b,(hl)
	rlc b
	inc bc
	jp c,055dch
	cp 0e3h
	jp nc,00480h
	dec hl
	cp 012h
	ld c,001h
	jr c,l7ac3h
	dec b
	call pe,0130eh
	pop hl
	ret c
	ld a,(024dch)
	inc a
	add hl,de
	ret z
	ex (sp),hl
	ret po
	dec a
	jp z,026d3h
	ld d,l
	ld a,c
	or 027h
	jp nz,0e778h
	inc de
l7a91h:
	ret
	ex af,af'
	add hl,sp
	ex af,af'
	ld d,038h
	ex af,af'
	ld h,c
	ld hl,(00087h)
	ld (hl),c
	in a,(059h)
	sub d
	ld c,049h
	daa
	ld (00003h),a
	ret nz
	ld a,(0c147h)
	ld h,a
	ld a,(0c148h)
	jr nc,$+113
	ld a,(hl)
	inc c
	inc hl
	ld e,(hl)
	inc b
	inc hl
	ld c,(hl)
	inc hl
	ld a,l
	ld (l7c0dh),a
	ld b,l
	ld (01615h),a
	nop
	or l
	add a,b
l7ac3h:
	ld a,a
	add hl,de
	ld (hl),c
	dec hl
	ex de,hl
	ld hl,(01001h)
	add hl,bc
	xor l
	ld bc,0b77eh
	jr z,l7aefh
	add hl,bc
	inc b
	adc a,l
	jr $+6
	ld l,e
	inc de
	inc b
	ld c,004h
	ld e,d
	add hl,bc
	inc b
	inc b
	ret nz
	inc b
	ret nz
	ex de,hl
	ldir
	inc e
	ret
	push hl
	ld de,l4a2bh
l7aech:
	call c,01441h
l7aefh:
	inc bc
	add hl,de
	djnz l7aech
	or c
	djnz l7b34h
	add hl,bc
	ld (0f78ah),a
l7afah:
	ret m
	add a,h
	ld sp,hl
	sbc a,b
	adc a,c
	ret m
	ld (bc),a
	push af
	and e
	dec h
	sbc a,l
	ex af,af'
	di
	rlca
	call p,080c1h
	inc h
	ld e,d
sub_7b0dh:
	call 0048bh
	ld a,(08813h)
	sub d
	ld b,a
	add a,a
	ld bc,0c680h
	ld (de),a
	ld (05a8fh),a
	ld hl,06002h
	ld de,01bcdh
	dec b
	or h
	jp nz,0cf20h
	ld e,d
	ld sp,l5ad1h
	ld (080cbh),a
	ld (bc),a
l7b30h:
	call 03a5ah
	ex af,af'
l7b34h:
	jp 0823dh
	ld d,l
	ld (bc),a
	jp z,l56d2h
	ld b,072h
	ret pe
	ld b,0a8h
	ld (hl),b
	inc bc
	ld b,070h
	ld (hl),b
	inc b
	ld b,008h
	ld h,b
	dec b
	ld b,0c3h
	cp h
	ld d,(hl)
	sub h
	rst 18h
	ld h,c
	add a,b
	ld l,e
	ld a,(006f2h)
	sub e
	inc bc
	di
	cp 015h
	ei
	inc b
	add a,l
	ld (0aa32h),a
	sub l
	sub e
	sub (hl)
	xor h
	ld d,0d6h
	ld a,(bc)
	ex de,hl
	ld d,d
	inc b
	add hl,bc
	dec c
	rst 30h
	ret nz
	ld (0c1f7h),a
l7b73h:
	ld a,e
	and d
	ld hl,(01384h)
	and h
	ld c,e
	add hl,de
	defb 0edh ;next byte illegal after ed
	inc bc
	ld d,h
	ld d,a
	ld b,006h
	push bc
	sbc a,c
	call nz,0efc5h
	ld b,b
	ld e,(hl)
	push hl
	ld hl,l5993h
	sbc a,e
	ex (sp),hl
	ld (hl),a
	inc h
	ex (sp),hl
	nop
	bit 0,a
	jp z,l571eh
	and 0feh
	add a,046h
	jr nz,$-124
	ld b,(hl)
	or h
	inc bc
	adc a,05ah
	jp l5726h
	ld a,(bc)
	ld e,b
	inc bc
	ld a,(bc)
l7ba9h:
	ld hl,020a3h
	cp h
	ld h,d
	and c
	ret z
	dec e
	inc b
	pop hl
	inc hl
	ld h,b
	pop bc
	sub d
	pop bc
	cp e
	and h
	dec c
	ld h,c
	inc b
	djnz l7b73h
	ld hl,(01458h)
	ld de,0aa30h
	jr nz,$+36
	ld b,0cdh
	ld (0c359h),a
	nop
	ld e,a
	ld d,a
	ld hl,l5973h
	ld de,l5983h
	sub h
	call nz,09f90h
	ld a,007h
	inc h
l7bdch:
	ld (082f1h),a
	ld b,l
	rst 38h
l7be1h:
	sbc a,(hl)
	di
	ld a,b
	ld (0002dh),a
	jp 016fdh
	ld (hl),l
	ld d,c
	xor h
	ex af,af'
	ret nz
	rst 20h
sub_7bf0h:
	sub d
	ld h,(hl)
	ld (bc),a
	xor l
	ld a,(bc)
	ld de,032d0h
	or c
	ld sp,hl
	adc a,c
	and b
	dec bc
	and h
	ld (bc),a
	ld (de),a
	and l
	ld e,d
	or h
	ret z
	call 058c5h
	dec de
	ld a,03fh
	ld (l6f8ah),a
l7c0dh:
	adc a,e
	ld de,086d0h
	ld hl,l7c53h
	or (hl)
	ret
	jp c,01f34h
	jp c,01184h
	ret
	ld hl,06c6fh
	inc bc
	nop
	rst 28h
	ld hl,(024c4h)
	jp nz,0f057h
	dec l
	ret m
	ret
	jp pe,03d0ah
	ld (hl),a
	adc a,006h
	ret nz
	ld (hl),a
l7c34h:
	ret
	ret pe
	ld l,h
	defb 0ddh,0d1h,0e9h ;illegal sequence
	inc bc
	cp 000h
	jp z,l57eah
l7c40h:
	rlca
	ld e,c
	ld bc,0a307h
	ld e,b
	ld c,00ch
	pop bc
	jp l5803h
	adc a,e
	ld c,d
	rlca
	xor c
	ld sp,0a623h
l7c53h:
	jr $-53
	push de
	jp 0969ch
	inc bc
	jp nz,l7305h
	jp l580bh
	inc c
	xor d
	add hl,sp
	and h
	ld l,h
	ld b,04dh
	ld a,(l44b2h)
	sbc a,e
	ld c,c
	ei
	ld (de),a
	dec b
	adc a,b
	xor c
	dec e
	jp p,l46e4h
	xor e
	ld de,099c0h
	ex de,hl
	add a,h
	call sub_56b1h
	pop af
	call nz,00f0eh
	call nc,0fe61h
	ex af,af'
	dec h
	ld b,h
	and e
	xor 092h
	add a,c
	inc b
	and d
	ld c,(hl)
	exx
	or d
	dec e
	ret p
	ld (bc),a
	ld e,b
	call sub_58e0h
	ld hl,0a971h
	ld e,b
	adc a,e
	push hl
	inc (hl)
	ld de,0edf6h
	cp c
	dec de
	and e
	ld d,l
	rl e
	jr l7d0ch
	jr l7c34h
	or 0a6h
	sbc a,d
	inc b
	cp 0f0h
	jp nz,l587bh
	add a,l
	and e
	ld h,(hl)
	inc e
	ld l,d
	or h
	ld c,(hl)
	xor e
l7cbdh:
	dec de
	xor l
	dec de
	inc h
	adc a,d
	pop bc
	dec de
	ret po
	jp nz,01b97h
	ld c,d
	sub (hl)
	xor (hl)
	ld a,(02a14h)
	dec de
	and (hl)
	ld hl,(029aah)
	jp 02c64h
	ld hl,09e71h
	jr z,$-79
	ld h,0bch
	ld (de),a
	or h
	call z,sub_619dh
l7ce2h:
	cp 01fh
	adc a,b
	inc d
	cp d
	and d
	and c
	ld (bc),a
	ld c,b
	or b
	ld (bc),a
	ld a,b
l7ceeh:
	ld (bc),a
	jp 0255ah
	xor 001h
	bit 2,c
	or h
	ld (bc),a
	ld l,c
	ld e,d
	xor (hl)
	inc h
	adc a,b
	out (0deh),a
	jr l7cbdh
	ld e,d
	defb 0fdh,04fh,0e0h ;illegal sequence
	inc b
	rst 38h
	ld e,b
	ret po
l7d09h:
	ret p
	cp (hl)
	sbc a,l
l7d0ch:
	ret po
	ld c,h
	cp a
	ret po
	rlca
	ld l,e
	ld e,c
	ld a,(bc)
	inc bc
	ld a,(bc)
	inc bc
	inc hl
	ex de,hl
	ld hl,l5abch
	ld (hl),d
	rst 8
	ld c,(hl)
	jp nz,0c3d5h
	inc b
	jp nz,058e3h
	dec b
	inc de
	ld a,(046a8h)
	defb 0edh ;next byte illegal after ed
	daa
	or 0b0h
	ld d,h
	ld a,(0d148h)
l7d33h:
	ld c,c
	jp z,0a5dfh
	rst 0
	daa
	and d
	inc b
	ld b,(hl)
	ld e,c
	ld a,(0cdabh)
	dec a
	xor e
	and a
	or c
	jr c,l7ce2h
	xor c
	inc de
	rst 10h
	add hl,bc
	ld de,(028d7h)
	ret
	and h
	adc a,051h
	ld e,a
	sub 0cch
	halt
	halt
	dec h
	ld a,(l5f26h)
	add a,(hl)
	ld h,d
l7d5dh:
	ret m
	dec d
	ld a,(bc)
	ex de,hl
	pop hl
	ld bc,08b02h
	ld c,c
	call m,0206ch
	nop
	ei
	ld bc,04051h
	ld bc,04020h
	nop
	nop
	ld h,b
	ld b,b
	add a,b
	ld b,b
	and b
	ld h,b
	nop
	pop hl
	add a,l
	ld h,b
	ld a,(bc)
	ld b,b
	nop
	add a,b
	ld h,b
	and b
	add a,b
	nop
	dec d
	add a,b
	jr nz,l7d09h
	inc d
l7d8ah:
	ld a,(bc)
	nop
	ld bc,0a0a0h
	nop
	and b
	jr nz,l7d33h
	ld e,094h
	inc d
	ld a,(bc)
	ret nz
	nop
	nop
	ret nz
	jr nz,l7d5dh
	ld b,b
	ret nz
	ld h,b
	ret nz
	nop
	add a,b
	ret nz
l7da4h:
	and b
	ret po
	nop
	ret po
	jr nz,l7d8ah
	ld (bc),a
	ld b,b
	ret po
	ld h,b
	ret po
	add a,b
	ret po
	jr nz,l7d5dh
	ld c,e
	nop
	ld c,d
	ld b,b
	xor e
	ld (hl),02eh
	nop
	ld e,b
	ld l,d
	ld c,(hl)
l7dbeh:
	ld b,h
	ld (hl),000h
	ld bc,02140h
	ld b,b
	ld b,c
	ld b,b
	ld h,c
	ld b,b
	nop
	add a,c
	ld b,b
	and c
	ld h,b
	ld bc,02160h
	ld h,b
	nop
	ld b,c
l7dd4h:
	ld h,b
	ld h,c
	ld h,b
	add a,c
	ld h,b
	and c
	add a,b
	ld l,001h
	add a,b
	and h
	nop
	ld b,c
	add a,b
	ld h,c
	add a,b
	add a,c
	add a,b
	and c
	and b
	nop
	ld bc,021a0h
	and b
	ld b,c
	and b
	ld h,c
	and b
	add hl,bc
	add a,c
	and b
	and c
	ret nz
	ret m
	add a,b
	ld hl,041c0h
	ret nz
	ld h,c
	ret nz
	nop
l7dffh:
	add a,c
	ret nz
	and c
	ret po
l7e03h:
	ld bc,021e0h
l7e06h:
	ret po
	nop
	ld b,c
	ret po
	ld h,c
	ret po
	add a,c
	ret po
	and c
	jr nz,l7e11h
l7e11h:
	ld bc,02120h
	jr nz,$+67
	jr nz,$+99
	jr nz,$+8
	add a,c
	jr nz,l7dbeh
	nop
	ld bc,00085h
l7e21h:
	nop
	ld b,c
	nop
	ld h,c
	nop
	ld l,081h
	nop
	dec bc
	nop
sub_7e2bh:
	ld l,l
	ld de,03601h
	nop
	ret nc
	dec bc
	sub (hl)
	add hl,hl
l7e34h:
	nop
	ld (bc),a
	ld (de),a
	adc a,c
	sbc a,c
	ld c,d
	nop
	ld e,0e1h
	ld (bc),a
	daa
	add hl,bc
	ld (hl),c
	nop
	rrca
	adc a,e
	ld (bc),a
	dec e
	add a,c
	pop hl
	inc bc
	add hl,hl
	defb 0ddh,050h,002h ;illegal sequence
	ld b,000h
	ld h,c
	dec b
	inc de
	sub b
	jr nz,l7e59h
	adc a,h
	djnz $+29
	adc a,h
l7e59h:
	rla
	ex af,af'
	nop
	ld c,d
	ld l,a
	ret po
	inc b
	ld c,d
	ld e,h
	add hl,bc
	or (hl)
	inc bc
	ld (de),a
	dec bc
	sub 027h
	sub b
	ld c,0ech
	ld c,c
	jp 01daeh
	add a,b
	call sub_5b80h
	call 005bdh
	ld hl,0d7cbh
	ret nc
	djnz l7e34h
	dec a
	inc c
	ld bc,08055h
	ld d,0cch
	add hl,bc
	dec d
	ld e,e
	ex af,af'
	jp m,0d908h
	xor b
	add a,c
	ex af,af'
	pop de
	ld a,(de)
	add a,d
	ex af,af'
	out (08fh),a
	ex af,af'
	sub b
	ld (hl),b
	inc hl
	ld (hl),c
	ld a,d
	call nc,0989ch
	jp (hl)
	add a,e
	ld l,h
	inc b
	ld (l6d9bh),a
	ld (00586h),a
	sbc a,(hl)
	adc a,d
	dec b
	sub a
	ld l,(hl)
	push af
	add a,d
	ld e,e
	ld (l5c5eh),a
	add a,(hl)
	xor c
	ld (bc),a
	call m,02408h
	ld h,e
	dec b
	ld bc,l6402h
	sub d
	ld (bc),a
	ld (bc),a
	ld (bc),a
	inc bc
	ld (bc),a
	ld a,005h
	ld l,a
	and e
	add a,b
	dec b
	push af
	ld l,e
	ld hl,l5b7bh
	ld de,08e09h
	ld bc,00301h
	rst 28h
	jp nz,l6c21h
	ld a,(bc)
	jr c,l7ee8h
	ld d,h
	ld a,(bc)
	cp h
	add a,h
	ld e,0d2h
	ld (hl),l
	ret
l7ee3h:
	sbc a,081h
	call nz,sub_5b72h
l7ee8h:
	ld a,(0e8ach)
	djnz l7f0fh
	ret nz
	jp 0d60bh
	add hl,bc
	res 1,l
	rst 18h
	sbc a,a
	add a,0b0h
	and (hl)
	call z,082c3h
	ld e,a
	rst 20h
	ld hl,01857h
	rlca
	jp nc,020abh
	rla
	pop de
	jp l64b9h
	sbc a,(hl)
l7f0bh:
	jp c,0a72ch
	ld e,e
l7f0fh:
	cp b
	res 5,b
	ld b,016h
	jp 0cf13h
	sub 01ch
	rra
	ld (bc),a
	or a
	ld b,00fh
	jp z,0a7bch
l7f21h:
	dec hl
	defb 0fdh,0b0h,005h ;illegal sequence
	ld b,003h
	adc a,l
	inc d
	ret pe
l7f2ah:
	ld l,b
	inc (hl)
	inc bc
	ld (bc),a
	ld a,0a0h
	jp c,l5bcah+2
	push hl
l7f34h:
	djnz l7ee3h
	ld a,a
	add a,00eh
	add a,a
	nop
	ld c,032h
	adc a,l
	ld a,a
	adc a,l
	inc (hl)
	sub h
	ld (hl),06dh
	ld a,a
	ld e,060h
	ld a,(de)
	ld a,(bc)
	jp c,01eebh
	defb 0fdh,01fh,07fh ;illegal sequence
	ret
	nop
	nop
	jr nz,l7f21h
	cp (hl)
	ld l,e
	rla
	call sub_5c9bh
	rst 28h
	ld bc,0cd64h
	exx
	ld h,e
	call 0083ah
	rla
	jr l7fc2h
	jp nc,0cd45h
	call z,080d4h
	sub c
	dec b
	ld a,000h
	call nz,0fcb9h
	add hl,de
	sbc a,l
l7f75h:
	add a,h
	pop hl
	ld c,h
	ld c,c
	sbc a,l
	ld c,d
	dec b
	ei
	jp pe,0ee17h
	jr z,$+35
	sub (hl)
	jp 02187h
	ld a,(0c397h)
l7f89h:
	jp (hl)
	ld d,b
	inc bc
	jp z,l5c55h
l7f8fh:
	jr l7f8fh
	or h
	ret c
	and c
	add a,b
	ld b,030h
	call sub_74f6h
	pop hl
	add a,d
	ld bc,0477dh
	inc sp
	sub l
	jp l616eh
	ld h,l
	ld b,021h
	ld (bc),a
	and h
	jr nz,$+85
	inc b
	ld (hl),d
	ld d,b
	dec b
	ei
	ld d,b
	ld l,h
	ld (bc),a
	push bc
	jr nc,$+3
	ld bc,00777h
	ld (hl),l
	rlca
	halt
	rlca
	dec b
	ld c,b
	inc bc
	ld (hl),d
	dec d
l7fc2h:
	ld b,072h
	ld (bc),a
	rlca
	ld (hl),c
	inc b
	ld h,l
	dec b
	ld de,00035h
	ld (bc),a
	ld d,h
	inc bc
	ld (hl),h
	ld (bc),a
	ld b,e
	nop
	ld d,e
	ld hl,07300h
	ld (hl),l
	nop
	ld a,(0825eh)
	ld d,09ch
	inc c
	ld e,h
	ret z
	ret nc
	ld b,0cah
	sbc a,a
	ld h,e
	sub c
	ld d,l
	rst 38h
	add a,b
	or d
	rst 30h
	ld l,h
	ret nz
	ld (hl),h
	ld h,e
	ld e,l
	ld h,c
	push af
	dec bc
	ld e,l
	inc a
	defb 0fdh,052h,004h ;illegal sequence
	add a,b
	rlca
	jp z,l5d23h
	defb 0feh
