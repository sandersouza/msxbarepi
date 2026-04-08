; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank15.asm /tmp/smanbow2_bank.bin

	org 04000h

	ex (sp),hl
	ld e,e
	nop
	nop
	nop
	jp l4df3h
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
l4025h:
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
l403fh:
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
sub_405eh:
	rlca
	ld bc,0381ch
	jr nc,l4064h
l4064h:
	nop
l4065h:
	ld (0f6d8h),hl
	ld (iy+078h),e
	inc b
	ccf
l406dh:
	ld b,c
l406eh:
	dec sp
sub_406fh:
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
	call po,sub_5a00h
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
l40b3h:
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
l40beh:
	ld d,0e8h
	jr l40ach
	call nc,0d0e8h
	jp pe,0000fh
l40c8h:
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
l40d4h:
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
l4120h:
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
l4140h:
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
l416fh:
	ld l,h
	ld a,b
	ld b,b
	ld a,011h
l4174h:
	nop
sub_4175h:
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
l4188h:
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
l4192h:
	jr nz,$+98
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
sub_41b3h:
	ld b,b
	call pe,01f6ah
	dec h
	ex de,hl
	ld (l55eah),a
	ld (bc),a
	ex af,af'
	adc a,c
	jr nz,$-121
l41c1h:
	ld h,a
	dec c
	ld l,l
	nop
	rlca
	add a,b
	ld hl,0100fh
	adc a,b
	sub h
	ld d,e
	djnz l41cfh
l41cfh:
	ld e,a
	inc hl
	inc sp
	jr z,l4224h
	ld (hl),e
	cp e
	rst 8
	ld l,e
	out (01dh),a
	inc bc
	inc e
	adc a,b
	defb 0edh ;next byte illegal after ed
	jp pe,0408bh
	rst 0
l41e2h:
	ccf
	inc l
	ld l,a
	inc bc
	ld a,a
	ld e,h
	ld c,h
	ld e,a
	cpl
	inc c
	ld e,e
	djnz l416fh
	ld d,b
	ld b,h
	and h
	ld hl,(02200h)
	jp pe,03111h
	ld d,c
	jr z,$+58
	halt
	dec h
	adc a,02ch
	sbc a,a
l4200h:
	pop hl
	ld (bc),a
	jr l4192h
l4204h:
	di
	pop de
	exx
	ld sp,hl
	defb 0edh ;next byte illegal after ed
	ld hl,(012cfh)
	ret nz
	adc a,0dch
	ret m
l4210h:
	cp d
	xor b
	ld b,060h
	sub h
	adc a,(hl)
	ld b,00ch
	ld c,080h
	adc a,b
	ret z
	jr $-107
	rst 0
	call po,sub_6846h
	ret nz
	ld (hl),h
l4224h:
	ld (hl),b
	ld bc,09eb0h
	add hl,bc
	jr z,l41c1h
	dec b
	ld (bc),a
	cp b
	ret nc
	ld d,a
	rla
	rst 20h
	ld bc,0ab4ch
	ld e,h
	inc bc
	inc (hl)
	ld d,h
	inc b
	jr nz,l4204h
	ld b,h
	ld c,l
	ld h,c
	rlca
	ld h,08fh
	sbc a,h
	ld e,b
	ld bc,08e50h
	ld h,l
	inc hl
	djnz l41e2h
	add hl,sp
	inc c
	nop
	ld l,h
	xor e
	and d
	sbc a,h
	ret z
	ld d,(hl)
	ret pe
	inc bc
	inc a
	or d
	xor c
	ld a,h
	dec h
	adc a,d
	ld e,050h
	ld a,a
	ld b,b
l4260h:
	dec b
	ld e,03fh
	ld a,l
	ld sp,01c49h
	rst 28h
	add a,l
	ld a,c
	ld b,h
	nop
	ld bc,0140ch
	and e
	ld a,e
	jr nc,$+6
	nop
	daa
l4275h:
	ld d,e
	call m,07000h
	adc a,b
	ld h,e
	cp a
	inc hl
	rst 8
	ret po
	add a,b
	inc b
	ld de,0032ch
	sbc a,b
	call nc,02798h
	ld (bc),a
	ldi
	call nz,0d0bbh
	rst 8
l428fh:
	inc h
	cp a
	ld a,a
	rst 30h
	inc de
	ret m
	ld a,a
	inc e
	call 0a0a0h
	ld d,079h
	inc sp
	add a,d
	ld l,092h
l42a0h:
	jr z,l42a0h
	inc bc
	jr c,l42e9h
	ld a,(de)
	or 0cch
	ld e,05eh
l42aah:
	ld l,0bah
	ld c,c
	ret m
	ret m
	ld a,a
	ld d,a
	cp h
	ld b,b
	ret nz
	adc a,a
	halt
	inc l
	rst 8
	ld (0fbf7h),hl
	ld d,07dh
	ret m
	or c
	jp c,0202fh
	ret nc
	exx
	daa
	adc a,l
	ld h,e
	rst 38h
	ex (sp),hl
	ld de,0c040h
	ex af,af'
	rst 38h
	ret pe
	ld bc,0ff8fh
	ld h,c
	cp h
	rra
	rst 10h
	rst 38h
	ld e,099h
	or c
	inc hl
	ld b,c
	rst 38h
l42ddh:
	call pe,0f611h
	ex (sp),hl
	xor (hl)
	rst 38h
	rst 30h
	jr nz,l42e6h
l42e6h:
	ld a,e
	ld e,02dh
l42e9h:
	ld (hl),l
	ld a,(hl)
	ld b,h
	adc a,l
	defb 0fdh,006h,0c5h ;illegal sequence
	ld l,(hl)
	nop
	push af
	nop
	rla
	ld l,b
	ret po
	sub a
	ld d,a
	nop
	rst 10h
	call pe,09b7ch
	dec bc
	inc e
l4300h:
	call po,0bef8h
l4303h:
	cp 001h
	inc de
	ld a,02eh
	ld a,(l618dh)
	ret nc
	rrca
	rla
l430eh:
	ex af,af'
	adc a,b
	pop hl
	adc a,b
	ccf
	inc b
	xor b
	cp e
	in a,(06fh)
	rst 38h
	and h
	ld l,b
	jr nz,l4395h
	and b
	nop
	ld e,c
	dec e
	and (hl)
	xor d
	xor l
	sbc a,0fah
	ld b,(hl)
	ld c,041h
	ret po
	sbc a,h
	ld a,(hl)
	ld h,b
	ld bc,0d0e0h
	cp b
	ret m
	call nz,01c88h
	ld c,d
	and b
l4337h:
	or b
	ld b,b
	sbc a,a
	ld bc,0f145h
l433dh:
	ld d,l
	halt
	ld l,(hl)
	ret m
	call m,01d80h
	add a,d
	jr nz,l4337h
	ret nc
	jr nc,l430eh
	rst 38h
	ld a,074h
	nop
	rst 38h
	ld a,l
	add a,d
	xor h
	inc l
	rst 18h
	rst 38h
	dec a
	sub c
	ld bc,0f6ffh
l435ah:
	ex af,af'
	sub 0d3h
	xor 0ffh
	call m,sub_660dh
	or h
	sub e
	jp p,02d0eh
	ld b,b
	jr nz,l433dh
	inc a
	ld e,0e2h
	adc a,l
	di
	ld e,0cah
	ld e,l
	set 6,h
	ld b,00eh
	ld h,a
	rst 38h
	ld a,(hl)
	rrca
	cp a
	or h
	ld (bc),a
	cp d
	add a,l
	or a
	ret po
	nop
	sub b
	jr $-122
	jr nc,$+1
	add a,b
	adc a,b
	ld d,e
	ld b,0b2h
	dec l
	ld sp,0a9d6h
	jp c,00212h
	cp a
	ret z
l4395h:
	cp 0f0h
	sbc a,b
	jp nz,08bceh
	add a,b
	ld a,b
	ld e,078h
	ld c,b
	ld h,a
	inc d
	adc a,061h
	ld a,h
	cp 038h
	rla
	ccf
	push de
	ld sp,hl
	push bc
	inc a
	ret m
	ccf
	call p,070b2h
	ld h,d
	sbc a,h
	ccf
	ld c,03fh
	and d
	inc de
	jp pe,l451dh
	ex af,af'
	inc bc
	ccf
	jr l4439h
	ret z
	xor (hl)
	inc c
	ret po
	ld a,a
	call po,0235dh
	ld l,b
	inc e
	sbc a,l
l43cch:
	and d
	ld e,03eh
	ccf
	call c,0dabfh
	ld b,b
	add hl,hl
	ld a,(hl)
	call z,08d3fh
	xor e
	add a,b
	inc de
	ret po
	ld b,l
	ld b,09eh
	ld (hl),h
	ld c,019h
	dec bc
	ld b,c
	ld bc,00047h
	jp 00ee4h
	ld a,(hl)
	and (hl)
	ld a,(hl)
	ld a,0f0h
	cp l
	ret z
	ld a,a
	ld b,l
	ret c
	jr z,l4459h
	inc c
	sbc a,001h
	ld sp,02f27h
	inc e
	ld (hl),a
	dec sp
	ret m
	halt
	sbc a,l
	jr nz,$+16
	ld (hl),b
	ret pe
	inc de
	and h
l4409h:
	nop
	ret p
	and a
	ld (de),a
	ld a,h
l440eh:
	or b
	add a,c
	ld l,b
	or l
	ld e,0b2h
	dec e
	sbc a,e
	ld c,005h
	ld (de),a
	add hl,hl
	scf
	or 082h
	ld (hl),h
	jr nz,l443eh
	rlca
	ld b,b
	or b
	add a,h
	ld c,h
	sub b
	adc a,b
	ld h,088h
	call nz,04c49h
	ret m
	inc b
	ld h,b
	or b
	ex af,af'
	dec e
	ld c,0b4h
	adc a,019h
	ccf
	pop af
	cp l
l4439h:
	ld d,e
	ld (bc),a
	ld c,000h
	ccf
l443eh:
	or b
	ld h,b
	djnz $-90
l4442h:
	inc (hl)
	inc h
	ld l,b
	and b
	jp 03ff0h
	defb 0ddh,0e2h,033h ;illegal sequence
l444ch:
	ld a,(bc)
	dec d
	ld h,(hl)
	ccf
	sub b
	ld (hl),b
	xor b
	sub b
	or d
	inc h
	ld (hl),b
	ld b,b
	daa
l4459h:
	dec h
	ld h,e
	rra
	rla
l445dh:
	ccf
	ld a,00dh
	ld e,h
	in a,(04ch)
	ld a,b
	cp c
	or d
	ei
	ret z
	sbc a,08ch
	call po,0f40ah
	jr c,l445dh
	call c,02dd7h
	xor b
	inc b
	ld (hl),b
	ld c,017h
	ld b,011h
	nop
	inc hl
	ld b,b
	ld b,b
	ld (0061fh),a
	dec c
	djnz $+106
	cp b
	and l
	jr nc,l4487h
l4487h:
	sbc a,b
	and b
	ld c,b
	sub h
	call pe,03870h
	ld l,014h
	inc b
	ld a,b
	ret po
	xor d
	add a,e
	djnz l44c9h
	add hl,bc
	ccf
	or b
	ld b,008h
	dec h
	inc l
	ld (00516h),hl
	defb 0fdh,0eeh,03fh ;illegal sequence
	rst 18h
	jp nc,06be6h
	ld l,046h
	add hl,sp
	ccf
	ld (bc),a
	ld c,015h
	add hl,bc
	ld c,l
	ld c,002h
	daa
	ret p
	ccf
	push hl
	jp po,0a9eah
	rra
	ld bc,02b2dh
	dec hl
	dec l
	dec l
	inc l
	cpl
	inc bc
	ld l,e
	ld b,020h
	nop
	ld l,h
l44c9h:
	ex af,af'
	ld c,0ceh
	dec d
	dec c
	ld (hl),c
	nop
	cpl
	ld a,(de)
	or a
	inc de
	ld c,06ch
	dec hl
	inc c
	rla
	dec l
	cpl
	inc l
	inc de
	dec c
l44deh:
	inc e
	ccf
	cp l
	ld hl,(l5e3fh)
	ld hl,(08e3fh)
	ld hl,(01e3fh)
	ld hl,(08e3fh)
	ld hl,(0ec3fh)
	inc e
	nop
	adc a,004h
	rlca
	ld (hl),a
	sbc a,l
	ld e,h
l44f8h:
	dec hl
	xor l
	ld h,a
	ld c,h
	or b
	ld a,(bc)
	dec hl
	sbc a,06ch
	ld l,02eh
	jp c,0160fh
	ret p
	sbc a,h
	ld b,e
	rrca
	ex af,af'
	ex af,af'
	rrca
	add hl,bc
	sbc a,h
	ld b,(hl)
	jp nz,00900h
	dec hl
	ld bc,06ea2h
	and c
	xor b
	inc (hl)
	dec (hl)
	nop
	dec bc
l451dh:
	dec bc
	ld hl,l4a0ah
	ld bc,00b0ch
	dec l
l4525h:
	dec bc
	sub (hl)
	ld (de),a
	rra
	sub c
	dec hl
	add hl,hl
	and l
	cp d
	rra
	jr nz,l459fh
	ld l,01fh
	jr nz,l4525h
	ret po
	inc l
	call p,09e1fh
	ld b,b
	dec l
	rra
	add a,l
	ld a,(bc)
	inc c
	ld de,l740bh
	ld l,a
	ld c,075h
	dec bc
	ld l,a
	nop
l4549h:
	and 00bh
	ld a,b
	ld c,005h
	call m,sub_7a00h
	add hl,de
	ld l,0f6h
	nop
	ld a,e
	ld l,e
	nop
	dec a
	dec bc
	nop
	sbc a,(hl)
	ld a,(bc)
	nop
	rst 8
	add a,(hl)
	nop
	ld h,a
	push bc
	nop
	or e
	adc a,e
	nop
	exx
	adc a,d
	nop
	call pe,0fb00h
	nop
	sbc a,a
	add hl,hl
	nop
	ld (hl),e
	jr nz,l4574h
l4574h:
	xor 0b4h
	sub 065h
	ld a,(bc)
	ld bc,059feh
	inc bc
	pop hl
	ld l,e
	ex de,hl
	ld b,c
	ld b,l
	ld b,c
	ld bc,00695h
	inc bc
	nop
	cp e
	and 0c6h
	ld (026f7h),hl
	jr l45dbh
	jr nz,l45d7h
	jr nz,l4598h
	add hl,sp
	ld h,0d6h
	rra
l4598h:
	inc c
	push bc
	ld b,(hl)
	dec bc
	ex af,af'
	ret z
	ld e,b
l459fh:
	ld sp,hl
	adc a,000h
	adc a,c
	ld b,e
	ld b,e
	ld c,l
	ld (bc),a
	ld b,b
	nop
	jp 00001h
	sub e
	dec bc
	inc bc
	ex af,af'
	and e
	ld b,h
	ld b,d
	nop
	ld e,c
	ld c,a
	nop
	ex af,af'
	jp nz,0c544h
	add hl,sp
	xor b
	and c
	ld l,02fh
	or 0aeh
	xor (hl)
	and h
sub_45c4h:
	add a,002h
	ex af,af'
	ld (bc),a
	ret p
	nop
	ld c,b
	inc bc
	nop
	ld c,e
	ld c,b
	ld c,b
	ld c,e
	ld c,e
	ld (bc),a
	ld (hl),e
	nop
	xor a
	ld d,e
l45d7h:
	nop
	xor c
	rst 28h
	ld l,l
l45dbh:
	ld b,e
	nop
	jp z,0004dh
	dec (hl)
	ld c,h
	ld c,l
	nop
	dec b
	nop
	ld d,007h
	rlca
	rst 0
	inc sp
	inc bc
	ld (bc),a
	nop
	add a,l
	ld b,(hl)
	nop
	ld a,(l4622h)
	xor l
	cp b
	ld (bc),a
	ld a,0f4h
	xor (hl)
	sub 021h
	ld b,024h
	ld h,(hl)
	dec h
sub_4600h:
	inc h
	ld a,(de)
l4602h:
	nop
	ld b,(hl)
	ld hl,0cc4dh
	inc h
	dec h
	ld c,a
	ld b,(hl)
	ld (bc),a
	inc bc
	nop
	ld h,a
	ld c,b
	nop
	or e
	dec c
	nop
	add a,l
l4615h:
	ld a,(bc)
	ld ix,00c0dh
	add hl,bc
	xor (hl)
	ld c,e
	nop
	ld l,(hl)
	ld a,l
	ex af,af'
	and e
l4622h:
	sbc a,l
	sbc a,l
	rra
	sub l
	sub e
	and e
	nop
	sbc a,(hl)
	sbc a,l
	rra
	dec (hl)
	ld b,e
	ld c,h
	add hl,bc
	ld b,000h
	add a,01fh
	sbc a,d
	ld b,00bh
	add hl,bc
l4638h:
	ld b,l
	ex (sp),hl
	nop
	rra
	sbc a,l
	add hl,bc
l463eh:
	res 2,e
	nop
	or a
	dec c
	dec b
	rla
	ld d,c
	ld hl,00031h
	ld b,a
	ld b,l
	rra
	jp 00005h
	or a
	dec c
l4651h:
	dec b
	inc de
	rra
	ld b,d
	nop
	and a
	ld b,a
	dec b
	ld e,03ah
	ld e,h
	nop
	ld a,c
	ld a,(sub_6769h+1)
	ld c,e
	or (hl)
	ld e,d
	ret p
	rra
	ld (hl),d
	ld b,(hl)
	nop
	ld b,l
	rst 28h
	nop
	inc de
	ld a,d
	or b
	ld c,e
	ld b,0e5h
	ld d,c
	sbc a,a
	in a,(045h)
l4676h:
	ld h,0c2h
l4678h:
	ld de,0056ch
	ld (bc),a
	pop bc
	and e
	inc b
	dec b
	add hl,bc
	ex af,af'
	ld c,097h
	ld l,l
	ld c,(hl)
	inc bc
	sub b
	dec h
	ld b,a
	ld c,(hl)
	nop
	sub h
	rst 10h
	and (hl)
	nop
	add hl,sp
	dec b
	ld a,0a9h
	inc b
	ld (bc),a
	call c,03a4eh
	jp p,0bf03h
	ld (hl),a
	inc d
	jr c,l46beh
	sbc a,(hl)
	xor c
	daa
	sub b
	scf
	rla
	ld e,a
	xor h
	ld hl,(00047h)
	sbc a,d
	ld de,0aca0h
	dec bc
	add a,b
	inc h
	and e
	in a,(0ffh)
	ld a,(hl)
	add a,d
	ld b,h
	ld b,h
	inc bc
	dec h
	ld c,l
	ld b,l
	and b
l46beh:
	ld h,e
	or l
	sbc a,b
	ret nz
	pop hl
	inc c
	nop
	or c
	sbc a,(hl)
	ret
	ld c,(hl)
	ld c,(hl)
	push hl
	dec de
	nop
	cp a
	xor 0b8h
	nop
	ld b,0d5h
	inc b
	inc b
	adc a,a
	ld (hl),e
	ld e,a
	sub e
	sbc a,b
	sub l
	or c
	ld h,a
	ld e,h
	sbc a,a
	ld (hl),c
	nop
	sbc a,c
	inc hl
	ex af,af'
	pop de
	rst 38h
	ld b,l
	rst 8
	ld e,d
	ld c,d
	dec d
	ld c,d
	ld b,b
	ld c,d
	defb 0edh ;next byte illegal after ed
	and h
	ld b,l
sub_46f1h:
	rst 38h
	or h
	pop af
	and c
	inc e
	ld (0a905h),hl
	ret z
	nop
	cp e
	rst 20h
	ld bc,04486h
	ld l,c
	add a,0fdh
	ld b,(hl)
	cp 04bh
	jp m,01e1bh
	rra
	inc hl
	ld c,(hl)
	rst 38h
	sub h
	ld b,(hl)
	ld (bc),a
	ld c,h
	ld l,(hl)
	ld c,h
	rra
	inc e
	pop af
	ld (bc),a
	and b
	add hl,de
	ld b,(hl)
	sub c
	cp c
	sbc a,h
	ld (bc),a
	ld b,(hl)
	pop bc
	sub a
	ld b,h
	ld c,h
	cp c
	rst 20h
	ld a,0c4h
	and d
	ld l,a
	nop
	ld e,e
	ld e,l
	and c
	ld d,h
	cp c
	ret m
	adc a,086h
	ld c,d
	xor h
	inc hl
	ld c,(hl)
	jp c,0008eh
	ld (hl),h
	ld b,l
	jp nc,000fbh
	ld c,l
	ld a,001h
	ld (0c308h),a
	ld a,(000e8h)
	rst 38h
	or 002h
	and 0ffh
	and 07fh
	or 020h
	add a,b
	ld (0f30ah),a
	out (099h),a
	ld a,022h
	adc a,c
	ei
	inc b
	ld a,(015e7h)
	jr nz,l4780h
	ld (03e04h),a
	ld (bc),a
	ld (0000eh),a
	pop bc
l4768h:
	ld hl,(0057ch)
	ld (hl),01ah
	ld hl,(0847fh)
	inc b
	ret nc
	ld hl,(00482h)
	jp nz,02a35h
	add a,l
	inc b
	adc a,b
	inc b
	ex af,af'
	djnz l47a9h
	adc a,e
l4780h:
	inc b
	call nc,sub_6b2ah
	adc a,(hl)
	add hl,bc
	sub c
	add hl,bc
	ld e,d
	sub h
	add hl,bc
	sub a
	call nc,09a09h
	inc b
	ret z
	jr nz,l47bdh
	sbc a,l
	inc b
	jp nc,0dccdh
	ld c,a
	jr nz,l4768h
	ld a,h
	ld (bc),a
	ld h,e
	dec b
l479fh:
	call 01218h
	add a,(hl)
	call 0059fh
	and d
	ld (bc),a
	ld c,b
l47a9h:
	and l
	ld (bc),a
	add hl,bc
	ld de,084b3h
	inc b
	call sub_5da1h
	call 00baeh
	add hl,sp
	sub b
	ld (bc),a
	xor b
	ld (bc),a
	dec (hl)
	ld h,d
l47bdh:
	call 0ab41h
	dec b
	inc b
	ld e,a
	call 01aebh
	nop
	inc de
	ld e,d
	ld a,(0c13dh)
	or a
	jp z,08d11h
	ld c,(hl)
	ld a,011h
	rrca
	dec b
	and l
	jr l47deh
	ld a,l
	pop bc
	rst 10h
	xor d
	djnz l479fh
l47deh:
	ld (004a3h),a
	jp 01c3eh
	ld (00707h),a
	and d
	inc d
	jp 003cdh
	ld a,(de)
	sbc a,c
	adc a,h
	halt
	ld e,l
	ld hl,032afh
	dec hl
	ld a,(0c395h)
	ld l,003h
	adc a,04eh
	call sub_4fb6h
	add hl,bc
	ld d,d
	ret
	ld (de),a
l4803h:
	ld d,023h
	ld c,c
	ccf
	ld (bc),a
	ld d,d
	ld (bc),a
	ld c,a
	ld (bc),a
	dec h
	ld b,e
	ld (bc),a
	ld b,b
	ccf
	rst 0
	ld (de),a
	ld b,d
	ld h,000h
	ld a,0c1h
	cp 01eh
	jp c,l4ef2h
	dec a
	jr nz,l4852h
	ld a,00bh
	pop de
	jp 0323ch
	add a,l
	inc bc
	ld a,(0c113h)
	dec c
	inc bc
	dec c
	inc a
	jp nz,03d60h
	nop
	xor a
	ret
	ld hl,l4f3dh
	ld (04f39h),hl
	ld hl,05d21h
	dec b
	dec sp
	ld c,a
	ld hl,(00008h)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,d
	or e
	jp z,l7b68h
	inc d
	ex de,hl
	ld c,(hl)
	inc hl
	dec l
l4852h:
	ld b,(hl)
	ld hl,(01215h)
	ret nz
l4857h:
	inc e
	ex de,hl
	ld (hl),c
	inc hl
	ld (hl),b
	ld (de),a
	jp l4f15h
	rst 28h
	or l
	and a
	ld a,b
	rst 28h
	rra
	nop
	dec b
	ld (02e05h),hl
	dec b
	add hl,de
	dec b
	ld sp,00500h
	ld e,e
	dec b
	ld e,(hl)
	dec b
	ld h,c
	dec b
	ld h,a
	ld (bc),a
	dec b
	ld l,d
	dec b
	ld (hl),b
	dec b
	ld (hl),e
	and c
	inc h
	dec b
	rra
	ld e,h
	nop
	ld e,d
	ld h,h
	ld e,d
	out (059h),a
	ei
	ld e,c
	ld c,c
	ld (bc),a
	ld e,d
	dec hl
sub_4890h:
	ld e,d
	ld b,e
	ld e,d
	halt
	jp po,l5920h
	ret nc
	ld e,c
	ld l,000h
	ld e,d
	ld b,b
	ld e,d
	ld b,(hl)
	ld e,d
	ld sp,0d65ah
	rlca
	ld e,c
	ret
	di
	ld hl,09a38h
	jp l4fd9h
	ld bc,000c1h
	ldir
	ld hl,0c0fbh
	ld l,c
	nop
	ld a,0c3h
	ld (01281h),a
	ld a,013h
	ld (0fff1h),a
	adc a,l
	jr c,l4857h
sub_48c4h:
	sbc a,h
	adc a,h
l48c6h:
	rra
	rst 18h
	di
	or 0e1h
	ld e,b
	inc b
	dec c
	add a,b
	add a,003h
	ld (bc),a
	inc bc
	daa
	adc a,a
	and e
	ld (093ach),hl
	dec (hl)
	ld de,0f328h
	add hl,sp
	adc a,h
	inc hl
	inc a
	and 0efh
	inc hl
	dec de
	xor a
	ld (01103h),hl
	ei
	ret
	sbc a,(hl)
	sub d
	ld e,a
	jp m,03454h
	ex af,af'
	ld d,b
	dec b
l48f4h:
	jr l4946h
	and e
	ld de,0f50eh
l48fah:
	ld e,b
	ld c,04eh
	add a,e
	ld e,c
	ld c,009h
	ret
	push af
	rst 18h
	add hl,sp
	inc l
	add hl,bc
	in a,(099h)
	rrca
	call c,0af1ah
	inc c
	ret c
	ld (0c1a0h),a
	ld l,007h
	call c,06d24h
	ld h,h
	inc bc
	pop af
	ld hl,(03a02h)
	ld c,d
	ld c,h
	or (hl)
	ld h,048h
	ld c,d
	nop
	ld (bc),a
	rlca
	adc a,00dh
l4928h:
	ld c,d
	rrca
	ld e,h
	ld (bc),a
	rla
	ld a,(01700h)
	in a,(0e3h)
	djnz l4951h
	ld e,b
	rla
	dec de
	ld c,d
	ld e,b
	rrca
	jr l48c6h
	ld c,d
	sbc a,(hl)
	or e
	inc b
	ld bc,0b82ah
	call c,00f17h
l4946h:
	ld (hl),b
	ld c,b
	ld d,010h
	and 04fh
	ld b,0e3h
	daa
	ld b,002h
l4951h:
	ld b,b
	inc c
	ld c,002h
	inc h
	jr c,l48f4h
	sbc a,(hl)
	ld l,b
	adc a,04eh
	ld l,b
	dec de
	inc b
	rlca
	jr c,l48fah
	ld d,(hl)
	ld (hl),d
	dec sp
	ld d,h
	ld d,(hl)
	ld (hl),a
	rst 0
	scf
	inc b
	ld a,a
	adc a,(hl)
	rrca
	rst 0
	add a,a
	add a,a
	rla
	ld a,(09c07h)
	call z,01f0fh
	ld a,c
	ld b,b
	rra
	call p,0022fh
	jp po,06f27h
	rst 20h
	rla
	ex af,af'
	inc hl
	add a,(hl)
	ld (hl),a
	ld (hl),b
	ld b,015h
	cp d
	ld (bc),a
	ld l,b
	ld bc,05838h
	rla
	ld (hl),b
	ld c,020h
	ld a,b
	ret nc
	ld a,(05c04h)
	ld d,d
	add a,h
	ret nz
	ld de,l4e10h
	ld d,b
	ld d,d
	ret nz
	ld a,(de)
	ld a,(de)
	inc e
	ld e,h
	inc d
	ld h,b
	ld a,(bc)
	rlca
	ld h,028h
	ld d,d
	jr nz,l4a0bh
	ld d,006h
	jr nc,$+52
	inc (hl)
	ld c,(hl)
	call nz,sub_4e06h
	jr z,l4a06h
	ld l,(hl)
	ld b,01eh
	ccf
	ld (hl),c
	rlca
	cpl
	or l
	rlca
	dec c
	ld a,(bc)
	sbc a,c
	ld h,00dh
	ld h,(hl)
	ld b,03eh
	and (hl)
	ld e,h
	ld (bc),a
	inc d
	ld l,0b8h
	ld d,b
	ld (hl),l
	ld l,c
	ld l,0a9h
	ld e,e
	ld (hl),b
	ld a,b
	inc d
	ex (sp),hl
	ld e,e
l49dch:
	nop
	jr c,$+93
	jp po,l7b34h
	sub 000h
	ld d,00bh
	xor h
	ld e,(hl)
	inc bc
	ld e,0bch
sub_49ebh:
	inc l
	inc hl
	inc sp
	ld sp,0e100h
	sub l
	ret nz
	rst 20h
	inc l
	nop
	dec de
	ld d,b
	inc l
	dec bc
	xor e
	inc d
	rlca
	jr c,l4a5bh
	ld e,(hl)
	or l
	ld e,c
	ld (hl),l
	rlca
	dec b
	inc a
l4a06h:
	add a,h
	ld h,h
	ld a,h
	inc (hl)
l4a0ah:
	inc hl
l4a0bh:
	sub a
	ld c,b
	ld b,b
	ld b,d
	sub (hl)
	call nz,08508h
	ld a,b
	jp po,09e3ch
	ex af,af'
	ex (sp),hl
	inc (hl)
	inc de
	sub a
	ld d,b
	ld e,c
	jr z,l4a98h
	ret nz
	sbc a,000h
	jp m,0946dh
sub_4a26h:
	sbc a,d
	adc a,(hl)
	sub d
	ld l,069h
	inc h
	ld h,d
	jp m,00671h
	ld h,d
	inc a
	ld l,e
	jr nz,l4aa7h
	ld e,b
	ld a,b
	ld b,l
	adc a,e
	retn
	adc a,h
	ld l,025h
	ld e,h
	ex af,af'
	add a,(hl)
	ld h,h
	inc d
	ex af,af'
	ret m
	ld l,h
l4a46h:
	inc l
	ld b,0b2h
	jr nz,l4a7bh
	ret
	ld c,c
	jr nc,l4a57h
	rra
	or c
	xor l
	jr z,$+22
	jr l4a66h
	cp d
l4a57h:
	inc d
	ld de,0505eh
l4a5bh:
	ld d,08bh
	cp b
	ccf
	ld e,(hl)
	sub l
	xor c
	xor l
	ld e,a
	jr nz,l4a96h
l4a66h:
	sbc a,h
	jr c,l4ab7h
	jr nc,l4a46h
	rlca
	daa
	ld d,a
	jr c,l4a7ah
	ld h,c
	jp po,00357h
	dec hl
	ld (hl),d
	ld b,02dh
	ld b,a
	rla
l4a7ah:
	ld l,e
l4a7bh:
	ld l,l
l4a7ch:
	ld b,079h
	ld (hl),e
	dec h
	sub 0d2h
	call nz,00835h
	djnz $-22
	cp d
	ld h,(hl)
	ld b,020h
l4a8bh:
	jr z,$-25
	ld (hl),a
	nop
	rla
l4a90h:
	cp c
	ld d,028h
	xor h
	ld b,016h
l4a96h:
	adc a,l
	adc a,d
l4a98h:
	ld (hl),d
	ld b,030h
	ld a,b
	or e
	ex af,af'
	rrca
	jr z,$-45
	ex af,af'
	jr c,$-48
	ld b,b
	ld b,a
	or d
l4aa7h:
	add hl,de
	jr nc,$+25
	pop hl
	ld b,b
	call nc,070a9h
	add a,h
	adc a,h
	ret z
	ex (sp),hl
	ld a,c
	sub h
	out (02fh),a
l4ab7h:
	ld h,e
	add a,d
	adc a,l
	jr nc,$-37
	add hl,sp
	call p,014e5h
	jr nz,l4a90h
	ld hl,007d4h
	rst 38h
sub_4ac6h:
	or h
	adc a,h
	or l
	sub b
	or e
	or a
	and h
	ld e,020h
	and c
	ret c
	add hl,hl
	ld e,(hl)
	jr c,l4affh
	inc l
	jr nz,l4af4h
	ex af,af'
	ld (hl),038h
	ld sp,01638h
	xor a
	sbc a,(hl)
	add a,b
	ld a,e
	rlca
	ld a,(l5800h)
	rlca
	xor l
	rst 18h
	sbc a,h
	call nc,0f1a2h
	jr l4a8bh
	ld c,e
	inc b
	inc hl
	in a,(0cch)
l4af4h:
	ld (hl),0c5h
	sub (hl)
	rlca
	ld e,(hl)
	ld c,c
	ld c,010h
	dec bc
	ld c,095h
l4affh:
	ld a,d
	inc b
	or e
	ld h,027h
	ld (03a8eh),a
	add hl,sp
	ld b,e
	xor l
	jp p,02ee0h
	ld (bc),a
	ld (hl),b
	ret c
	cpl
	ld hl,08e70h
	ret po
	cpl
	sbc a,d
	adc a,(hl)
	ld c,e
	adc a,(hl)
	cpl
	ld d,(hl)
	dec sp
	rlca
	ld l,e
	rrca
	dec hl
	rrca
	add a,l
	ld c,b
	inc a
	rlca
	cp b
	inc a
	ld c,h
	ex (sp),hl
	rlca
sub_4b2bh:
	rra
	or a
	ld (bc),a
	rra
	scf
	ret z
	cp d
	rlca
	nop
	or h
	rst 30h
	jp po,0960fh
	adc a,037h
	ld (hl),e
	ld h,b
	rlca
	ld (hl),070h
	ld h,a
	inc h
	cp b
	adc a,(hl)
	dec l
	inc b
	ld (028aah),hl
	ld h,d
	xor h
	dec l
	sbc a,(hl)
	pop bc
	ld h,d
	xor d
	xor h
	rst 18h
	ld a,b
	inc b
	in a,(077h)
	ld b,047h
	sbc a,e
	or a
	ex (sp),hl
	rlca
	sub (hl)
	ld c,d
	ld h,a
	xor a
	ld l,(hl)
	rst 8
	ld (hl),c
	rlca
	ld h,b
	rst 30h
	ld a,e
	rlca
	adc a,e
	xor b
l4b6ah:
	daa
	ld d,a
	add a,l
	xor b
	or l
	xor 007h
	ld h,a
	jr c,l4b7bh
	jr z,l4b84h
	and a
	or h
	ld e,a
	adc a,(hl)
	inc c
l4b7bh:
	cp h
	jp (hl)
	inc hl
	xor d
	ld (hl),b
	and b
	ld h,(hl)
	ex af,af'
	ld h,d
l4b84h:
	rrca
l4b85h:
	ld e,a
	and c
	inc e
	rrca
	ld b,a
	add a,a
	inc de
	rlca
	ld e,b
	rlca
	add a,e
	or h
	ld d,(hl)
	scf
	add a,b
	or h
	or (hl)
	xor d
	djnz l4b6ah
	rrca
	ld h,b
	xor d
l4b9ch:
	xor d
	rla
	ret nz
	ld l,h
	ld l,(hl)
	ld h,d
	sub h
	and e
l4ba4h:
	push bc
	rra
	ld l,h
	ld a,b
	ld c,a
	call 08178h
	sbc a,b
	ld h,d
	ld b,(hl)
	ld h,h
	add a,b
	add ix,bc
	rlca
	out (04fh),a
	jr c,l4bbah
	rla
	inc hl
l4bbah:
	ld c,0a8h
	xor d
	rst 28h
	ld (hl),027h
	sbc a,l
	cpl
	ld l,(hl)
	ex af,af'
	inc hl
	ld l,h
	or d
	ld (hl),d
	ex af,af'
	ld a,(de)
	ld l,e
	ld h,d
	ld a,(01aach)
	ld (hl),019h
	ld hl,(032b6h)
	jr l4bddh
	jp (hl)
	jr nz,l4b85h
	jr nz,l4ba4h
	ld (bc),a
	cp b
l4bddh:
	jr nz,l4b9ch
	ld b,h
	ex de,hl
	djnz $+4
	ld (019ach),a
	rst 20h
	ld a,(de)
	ld c,h
	ld a,c
	ld e,a
	sub 008h
	xor b
	ld a,(de)
	and l
	xor h
	add a,c
	ld e,l
	ld (bc),a
	ld (0f366h),hl
	call p,04a6fh
	pop af
	inc a
	ex (sp),hl
	ld d,a
	ld l,c
	halt
	ld l,b
	rrca
	sbc a,d
	inc e
	ld h,h
	rlca
	ld h,d
	and l
	ld (bc),a
	rrca
	ld h,b
	inc c
	jp m,06f27h
	inc d
	rrca
	rlca
	ld (hl),b
	adc a,h
	call po,00245h
	rst 30h
	ld b,091h
	call c,01296h
	ld b,066h
	jr z,l4c26h
	add a,0b1h
	ld (hl),b
	rlca
	sub b
l4c26h:
	ld e,h
	sub d
	dec h
	rrca
	ld c,c
	and l
	rla
	res 5,b
l4c2fh:
	rrca
	xor b
	inc l
	xor d
	cp b
	sub 025h
	cp b
	jr z,l4c8bh
	ld l,a
	cp e
	adc a,e
	xor d
	jr nz,l4c61h
	dec hl
	ld e,005h
	ld c,a
	dec h
	in a,(029h)
	nop
	ei
	ld (hl),02dh
l4c4ah:
	ld (hl),h
	dec (hl)
	and h
	and (hl)
	dec a
	ld h,d
	cp e
	dec sp
	rrca
	add a,a
	ld (hl),b
	ld l,007h
	inc h
	xor h
	ld b,b
	ei
	or c
	sub 027h
	rrca
	ld b,(hl)
	ld h,h
l4c61h:
	and h
	daa
	ld h,c
	rlca
	inc b
	and h
	cpl
	call sub_63f2h
	ld a,(02a57h)
	rrca
	cp e
	ld c,d
	ld h,c
	ld d,b
	ld l,d
	ld c,h
	defb 0edh ;next byte illegal after ed
	adc a,0e0h
	ld l,b
	rrca
	ld e,b
	ld a,b
	ld c,b
	and h
	jp 00ccah
	or a
	jp z,0cac6h
	rst 38h
	ld e,d
	inc bc
	jr nz,l4c2fh
	rst 38h
l4c8bh:
	jp c,0ff18h
	ld d,(hl)
	inc c
	inc bc
	cp d
	and h
	nop
l4c94h:
	adc a,0c8h
	ex de,hl
	jp m,0a29bh
	ld h,e
	rst 38h
	sbc a,b
	defb 0edh ;next byte illegal after ed
	sub 0b5h
	cp c
	and 09eh
	ld l,(hl)
	ld (l6797h),a
	xor b
	sbc a,c
	ld e,e
	ld e,b
l4cabh:
	rst 30h
	ld e,d
	dec hl
	nop
	sub e
	inc bc
	sbc a,(hl)
	dec hl
	ld (hl),d
	rrca
	adc a,l
	dec hl
	ld e,e
	nop
	cp 039h
	ld sp,01689h
	ld sp,hl
	ld l,(hl)
	ex af,af'
	rst 30h
	ld e,d
	ld b,0cdh
	ld e,d
	and (hl)
	dec de
	xor a
	dec de
	and (hl)
	dec de
	rst 30h
	ld e,c
	rla
	ld h,0bah
	ld l,a
	ld e,b
	jr $+92
	jp m,012e3h
	ld c,d
	ld h,l
	adc a,b
	cp c
	set 2,l
	call nc,0ad58h
	ld h,d
	inc b
	add a,a
	ld a,(0e78dh)
	ld l,d
	inc e
	jp p,l5061h
	ld a,(de)
	jr z,l4cabh
	adc a,c
	inc a
	add a,e
	ld h,034h
	ld b,0b4h
	rrca
	ret
	ld e,(hl)
	push af
	dec (hl)
	ret nc
	ld h,a
	ld b,h
	djnz l4c94h
	ld l,(hl)
l4d01h:
	daa
	scf
	ld e,h
	or l
	xor h
	jp c,0ba67h
	ld c,00eh
	or h
	xor b
	adc a,(hl)
	sbc a,l
	inc h
	inc l
	ld l,09dh
	ld l,(hl)
	or e
	rst 28h
	adc a,(hl)
	ld h,02bh
	and e
	ld e,b
	xor d
	ld (08c9fh),a
	add a,h
	ld l,h
	inc b
	inc sp
	and d
	xor a
	di
	ld h,0ffh
	ld b,048h
	jr nz,l4d33h
	ld h,00ah
l4d2eh:
	jr l4d4eh
	cp 026h
	xor b
l4d33h:
	ld l,e
	ld hl,(017feh)
	jp nz,036b1h
	cp 08dh
	add a,0feh
	ld h,e
	cp 06eh
	ld (hl),d
	ld a,a
	dec h
	xor a
	and a
	ld l,000h
	pop af
	add a,b
	ld d,h
	ld l,08eh
	sbc a,b
l4d4eh:
	add a,d
	adc a,c
	ld b,0a0h
	and d
	call m,0d667h
	push de
	ld c,d
	djnz l4dach
	ld c,0b2h
	add a,c
	ld c,004h
	ld (hl),h
	cp h
	ld l,(hl)
	and b
	ld a,(de)
	ld a,h
	xor (hl)
	or b
	adc a,b
	ld a,(hl)
	ld e,097h
	add a,(hl)
	ld h,(hl)
	ld l,b
	jr z,$+44
	adc a,b
	ld h,b
	inc (hl)
	sub h
	ld l,03eh
	ld a,d
	ld (hl),049h
	nop
	push bc
	push de
	push hl
	exx
	jr nc,l4d88h
	push af
	dec b
	ld a,(008dfh)
	di
	and 0efh
l4d88h:
	ld (0d304h),a
	sbc a,c
	ld (0803eh),hl
	inc bc
	ld a,(00de0h)
	ld a,(de)
	cp a
	ld (00de0h),a
	add a,c
	add a,003h
	ld (bc),a
	inc bc
	jr nz,l4d2eh
	inc bc
	in a,(099h)
	and 020h
	ld a,(de)
	jp nz,l5922h
	ld b,0cah
	nop
	add hl,hl
l4dach:
	ld e,c
	ld a,(0c1f5h)
	or a
	jp nz,08c40h
	ld b,0fch
	pop bc
	dec e
	ld h,b
	sub d
	inc sp
	ld d,h
	pop bc
	ld b,a
	add a,009h
	sub a
	add hl,bc
	inc c
	pop af
	rst 38h
	add a,b
	add hl,bc
	ld h,b
	sub e
	add hl,bc
	rst 20h
	rst 38h
	and 063h
	defb 0fdh,00ah,088h ;illegal sequence
	ld a,(bc)
	ld a,(de)
	pop hl
	ld c,l
	add a,d
	ret po
	ld e,e
	or 042h
	ret p
	ld e,e
	nop
	call 05f5dh
	pop hl
	pop de
	pop bc
	pop af
	ex af,af'
	ld h,e
	exx
	dec b
l4de8h:
	ret
	ld l,00eh
	or 002h
	ld l,05eh
	xor a
	ld c,d
	dec e
	ld c,c
l4df3h:
	dec h
	rst 18h
	dec (hl)
	djnz l4dfeh
	and c
	jr l4e39h
	rst 10h
	ld e,e
	ld e,a
l4dfeh:
	ld c,e
	ld sp,0dc99h
	add a,078h
	sub c
	sbc a,h
sub_4e06h:
	jp 01094h
	jp nc,l5559h
	dec b
	call 09160h
l4e10h:
	ld (bc),a
	ld e,002h
	ld (hl),l
	dec b
	ld b,d
	ld de,032c1h
	and e
	nop
	call sub_5f04h
	ld a,(0fff6h)
	ld (0a38ah),a
	or (hl)
	jr c,$+19
	push af
	ld e,c
	xor a
	or h
	ret nc
	sbc a,a
	jp 010e6h
	ld b,b
	call nz,02721h
	ld a,071h
	call 09901h
l4e39h:
	ld (hl),d
	ld a,001h
	ld (0c156h),a
	adc a,(hl)
	ld e,022h
	nop
	xor a
	ld hl,0000eh
	cp (hl)
l4e48h:
	jp z,05a17h
	ld (hl),a
	call 00313h
	ret nc
	ld e,c
	jr nz,$+49
	call 0049bh
	ld e,d
	jr nz,$+14
	call 02f18h
	ld h,(hl)
	sub b
	ld (bc),a
	ld (hl),d
	ld (bc),a
	ld e,a
	ld e,d
	call 0c800h
	ld h,h
	call sub_5b2dh
	call sub_5d3ah
	inc h
	call 00e69h
	jr nc,l4e75h
	ld l,a
	ld e,b
l4e75h:
	dec b
	ld c,075h
	add a,h
	djnz l4e48h
	adc a,d
	ld e,d
	dec bc
	ld e,d
	ei
l4e80h:
	call 00c48h
	inc c
	inc bc
	ld (bc),a
	ld b,005h
	adc a,b
	in a,(0afh)
	ld h,h
	add a,b
	ld (hl),a
	dec d
	dec b
	ld hl,0c161h
	ld de,00008h
	nop
	jp 09678h
	add a,b
	jp (hl)
	ei
	and 010h
	jp nz,00385h
	ld e,d
	ld a,(05a84h)
	or a
	ret nz
	ld a,b
	ld hl,0c306h
	ld d,c
	dec b
	ld (hl),c
	ld h,h
	rlca
	ld hl,(090eah)
	ld a,(de)
	ld bc,02013h
	ld (00443h),a
	pop bc
	ld a,0e0h
	ld (097a4h),a
	and d
	rst 8
	ld a,e
	inc bc
	ret z
	ld a,(0fbe8h)
	bit 6,a
	add hl,bc
	dec b
	jp nz,l5ab0h
	dec h
	ld b,000h
	ret
	ld (0c202h),a
	add a,004h
	ld (00608h),a
	jp nz,0d03ah
	jp p,0c9c3h
	ld e,d
	ld b,d
	inc d
	add hl,bc
	ld l,06ah
	rrca
	jr z,l4ef0h
	xor a
	inc d
	push hl
	adc a,c
	inc b
l4ef0h:
	pop bc
	ret m
l4ef2h:
	djnz $+52
	inc b
	ld a,006h
	ld (0080dh),a
	jp nz,00c32h
	inc h
	inc c
	and 007h
	jr nz,$+16
	ld a,000h
	add a,008h
	cp 060h
	jr nz,l4f0dh
	ld a,048h
l4f0dh:
	pop bc
	ld b,d
	ld a,(0c200h)
	ld (01a48h),hl
l4f15h:
	ld bc,00505h
	jp nz,02100h
	dec c
	pop bc
	ld b,(hl)
	ld (hl),016h
	xor a
	call 0cc30h
	ld e,h
	ld hl,(0323ch)
	add a,b
	inc bc
	cp 0a4h
	ld b,030h
	call nc,031dbh
	add a,h
	ld a,(0d209h)
	adc a,e
	ld d,057h
	jp po,03d61h
	rst 0
	ld b,d
l4f3dh:
	or e
	add a,h
	rlca
	ld h,0a7h
	ret
	ld h,e
	ld h,b
	ld e,e
	and h
	jr c,l4f83h
	inc a
	ld a,(00080h)
	jp nz,l4011h
	jp nz,0103eh
	ld (0005fh),a
	pop bc
	ld b,007h
	push de
	ld a,(hl)
	and 01fh
	cp 000h
	dec d
	jp z,05bf5h
	inc hl
	or a
	jp z,00085h
	ld e,e
	cp 004h
	jr z,l4fb2h
	dec a
	call z,000efh
	ld e,h
	call nz,sub_5c29h
	pop de
	push hl
	ldi
	push hl
	ld bc,004e1h
	and b
	ld a,(hl)
	inc a
	ld (de),a
	inc de
	inc de
l4f83h:
	inc b
	ld bc,0000dh
	add hl,bc
	ld a,(0c635h)
	ld h,b
	ld (bc),a
	ld a,(01efeh)
	jp nz,l4602h
	ld e,e
	ret
	pop de
	ld bc,0120fh
	rla
	ex de,hl
	ld c,008h
	inc bc
	rla
	xor b
	dec hl
	ld a,(hl)
	cp 002h
	inc h
	jr z,$+63
	inc hl
	push hl
	inc hl
	nop
	add a,h
	add hl,bc
	ld d,028h
	add hl,bc
	xor d
	ld b,b
l4fb2h:
	pop hl
	call sub_5cc2h
sub_4fb6h:
	jp l5f50h
	ld h,(hl)
	ld c,b
	ld (hl),a
	cp 00ch
	ld bc,01228h
	and 003h
l4fc3h:
	jr z,l4fc9h
	pop hl
	rrca
	adc a,d
	dec hl
l4fc9h:
	add hl,hl
	pop hl
	daa
	ld (hl),a
	add hl,bc
	ld b,036h
	ld (09123h),hl
	ld (hl),006h
	ex af,af'
	nop
	inc hl
	rrca
l4fd9h:
	add a,(hl)
	ld (hl),004h
	ld a,089h
	ld (hl),04bh
	inc hl
	rla
	inc hl
	ld de,03e74h
	ld (hl),029h
	ld bc,09623h
	inc bc
	ld b,a
	ld a,(hl)
	sub b
	ld (hl),a
	rrca
	ld e,b
	add a,l
	ld a,02bh
	nop
	djnz $+51
	pop hl
	ld a,(0c235h)
	cp d
	ret c
	nop
	cp e
	ret nc
	ld a,(0c234h)
	cp c
	ret c
	sub 002h
sub_5008h:
	djnz l4fc3h
	ret nc
	ld a,0f0h
l500dh:
	ld (09111h),a
	add a,e
	ld (0000fh),a
	jp 05c67h
	ret
	ld a,(hl)
	sub 008h
	jr z,l506ch
	push hl
	ld (hl),a
	jr $+89
	add a,004h
	ld e,05fh
	ld hl,0c229h
	call p,sub_7e40h
	dec hl
	cp d
	jp c,01105h
	ld e,h
	cp e
	jp nc,07e03h
	cp c
	ex af,af'
	sbc a,c
	ld (0820ah),a
	ld a,(0c151h)
	add a,d
	ld b,c
	ld h,c
	ld e,h
	ld a,b
	add a,e
	ld (005d2h),hl
	ld h,h
	pop hl
	jr c,$+71
	ld (hl),a
	dec h
	inc hl
	ld (hl),a
	ld e,e
	ld a,0a6h
	add a,c
	ld de,00007h
	add hl,de
	ld (hl),d
	add a,d
	jp c,l5c87h
	cp (hl)
	jr nc,l5091h
	rlca
	ld c,d
l5061h:
	pop bc
	exx
	ld c,l
	or d
	xor b
	jr nc,$-61
	dec hl
	defb 0edh ;next byte illegal after ed
	cpl
	ld d,d
l506ch:
	ret
	ld de,02510h
	inc hl
	ld e,c
	inc de
	add a,d
	ld (hl),024h
	inc hl
	cp 060h
	inc a
	jr z,l5095h
	ld a,(l4c4ah)
	ld d,c
	ret nz
	cpl
l5082h:
	dec b
	adc a,h
	or d
	jr l500dh
	ld (01d4ah),a
	sub 0a1h
	add a,b
	ld c,e
	dec (hl)
	jr nc,$-53
l5091h:
	ex af,af'
	jr nz,l510bh
	ret
l5095h:
	ld b,000h
	ld b,(hl)
	ret nz
	add hl,de
	cp c
	jr z,l5082h
	inc c
	ld h,000h
	ld l,b
	add hl,hl
	nop
	ld (bc),a
	ld de,l4803h
	add hl,de
	push hl
	ld l,a
	inc c
	ret po
	dec bc
	nop
	ld (hl),h
	nop
	add hl,de
	call 00145h
	pop hl
	ld c,098h
	call 0b400h
	dec b
	pop hl
	ret
	call 0865ah
	ld b,(hl)
	sub h
	rlc c
	inc bc
	jp c,l5d2bh
	cp 0e3h
	jp nc,00004h
	dec hl
	cp 012h
	ld c,001h
	jr c,$+7
	sbc a,b
	call pe,0e10eh
	ld h,0d8h
	ld a,(l49dch)
	inc a
	add hl,de
	ret z
	ex (sp),hl
	ret nz
	dec a
	jp z,l5d22h
	ld c,h
	ld a,c
	or 0c2h
	ld c,(hl)
	ld a,b
	rst 20h
	ld h,0c9h
	ex af,af'
	add hl,sp
	ex af,af'
	inc l
	jr c,$+10
	ld h,c
	ld d,h
l50f7h:
	add a,a
	nop
	ld (hl),c
	in a,(0b3h)
	ld c,024h
	ld c,c
	daa
	ld (0c003h),a
	nop
	ld a,(0c147h)
	ld h,a
	ld a,(0c148h)
l510bh:
	ld l,a
	ld h,b
	ld a,(hl)
	inc c
	inc hl
	ld e,(hl)
	inc hl
	ex af,af'
	ld c,(hl)
	inc hl
	ld a,l
	ld (l7c0dh),a
	ld (01580h),a
	ld d,000h
	ld hl,097a8h
	add hl,de
	dec b
	ld (hl),c
	dec hl
	ex de,hl
	ld bc,00910h
	xor l
	ld b,b
	ld a,(hl)
	or a
	jr z,l5160h
	dec e
	add hl,bc
	inc b
	jr l5138h
	xor l
l5135h:
	inc de
	inc b
	ld l,e
l5138h:
	ld c,004h
	add hl,bc
	inc b
	ld e,b
	inc b
	inc b
	ret nz
	inc bc
	ex de,hl
	ldir
	ret
	push hl
	ld de,0892bh
	call c,01448h
	inc bc
	add hl,de
	ld (0f910h),hl
	or c
	ld de,0093eh
	ld (l50f7h),a
	ret m
	ld sp,hl
	sub c
	sbc a,b
	ret m
	ld (bc),a
	dec h
	push af
l5160h:
	and e
	ld d,b
	di
	rlca
	call p,021c1h
	ld bc,061dah
	call 0048bh
	ld a,(09213h)
	djnz $+73
	add a,a
	add a,b
	ld bc,012c6h
	ld (l61e9h),a
	ld hl,011e9h
	and l
	call 0b11bh
	ld d,(hl)
	jp nz,02910h
	ld h,d
	ld sp,l622bh
	ld (02540h),a
	ld (bc),a
	daa
	ld h,d
	ld a,(0c308h)
	ld b,c
	dec a
	ld d,l
	ld (bc),a
	jp z,05e2ch
	ld b,01ch
	ld d,b
	inc bc
	ld b,01ch
	ld a,b
	inc b
	ld b,01ch
	ret nz
	dec b
	ld b,01ch
	ret po
	ld b,006h
	inc e
	ld h,b
	ex af,af'
	ld b,019h
	jr c,l51bbh
	ld b,0eah
	jr z,l5135h
	jp 03a76h
	jp p,02606h
l51bbh:
	inc bc
	di
	sub l
	ld l,e
	ei
	inc b
	dec bc
	ld (0b532h),a
	dec hl
	sbc a,(hl)
	inc l
	or a
	inc l
	sub 00ah
	or 0a0h
	inc b
	add hl,bc
	dec c
	jp nz,0327ah
	inc d
	rst 30h
	pop bc
l51d7h:
	ld a,e
l51d8h:
	ld hl,(l428fh)
	dec h
	ld c,(hl)
	add hl,de
l51deh:
	ret m
	ld h,b
	xor (hl)
	ld e,(hl)
	ld b,006h
	ld (hl),b
	push bc
	rst 10h
	push bc
	adc a,b
	jp m,0e55eh
	inc de
	ld hl,060edh
	xor 046h
	add a,d
	ld c,b
	xor 0cbh
	nop
	ld b,a
	jp z,l5e78h
	and 0feh
	add a,020h
	adc a,h
	adc a,l
	ld b,b
	ld a,034h
	jr z,l5268h
	jp l5e80h
	sub 00ah
	inc bc
	ld a,(bc)
	jr z,l5230h
	jr nz,l51d8h
	ret c
	xor h
	or d
	dec e
	inc b
	jr $-29
	inc hl
	pop bc
	sbc a,l
	ld c,h
	ret pe
	add hl,hl
	ret c
	dec c
	inc b
	djnz l51d7h
	ld b,l
	ld hl,(01158h)
	jr nc,l51deh
l5229h:
	ex af,af'
	ld (0cd06h),hl
	adc a,h
	ld b,060h
l5230h:
	jp l5eb9h
	ld hl,l42ddh+2
	ld de,l60ddh
	rst 8
	ld d,d
	xor d
	ld b,b
	ld a,007h
	ld (091f1h),a
	adc a,l
	rst 38h
	sbc a,(hl)
	ld (de),a
	pop bc
	and d
	or e
	jp c,0880bh
	jp l61ceh+1
	or a
	ld de,0f21ah
	ld de,061c0h
	bit 0,h
	ld e,h
	ret nc
	dec h
	ld (0840bh),a
	ld (de),a
	jp m,0fe0bh
	ld (bc),a
	dec h
	rst 38h
	ld h,c
l5266h:
	cp a
	sub b
l5268h:
	call 0601fh
	ld a,036h
	ccf
	ld (0de92h),a
	sub e
	inc hl
	ret nc
	add hl,bc
	ld hl,0b2adh
	ld d,(hl)
	ret
	jp c,01fc6h
	jp c,082a8h
	ret
	ld hl,06c6fh
	dec h
	inc bc
	nop
	jp m,0c444h
	inc e
	ld e,a
	ei
	add a,l
	ret m
	ret
	push af
	and c
	dec a
	ld (hl),a
	exx
	ld b,b
	ret nz
	ld (hl),a
	ret
	push de
	add a,(hl)
	sbc a,d
	ret pe
	jp (hl)
l529eh:
	jr nz,l529eh
	nop
	jp z,l6b44h
	ld e,a
	rlca
	ld bc,02707h
	adc a,d
	ld b,00eh
	pop bc
	jp 0d8c9h
	sub (hl)
	sub h
	rlca
	xor c
	ld h,d
	inc hl
	and (hl)
	ld (l5229h),a
	di
	sub l
	ld b,b
	inc bc
	jp nz,l5e16h
	jp 07565h
	ld e,a
	inc c
	add hl,sp
	ld c,l
	xor a
l52c9h:
	ld b,09bh
	add a,e
	or (hl)
	ld a,(bc)
	ld c,c
	push de
	add a,l
	exx
	add a,d
	sbc a,a
	dec e
	adc a,c
	cp d
	inc a
	or (hl)
	add a,h
	ret nz
	ld h,(hl)
	or 061h
	call 00e0bh
	ld b,l
	adc a,00eh
	inc hl
	rrca
	call nc,0fe0ah
	ex af,af'
	dec h
	and e
	inc h
	xor 081h
	sub l
	inc b
	ld c,(hl)
	exx
	inc d
	dec e
	jp nz,0bb15h
	ld e,a
	call 0139ch
	ld hl,0f1cbh
	call nz,059e5h
	inc (hl)
	sub h
	call nz,sub_66edh
	dec de
	ld d,h
	xor (hl)
	jp nz,0d85ch
	adc a,h
	cp h
	jp po,0f618h
	add hl,hl
	sbc a,d
	add a,c
	cp 0f0h
	jp nz,l5fd5h
	add a,l
	jr z,$-62
	jp c,0bf1ch
	sub h
	dec b
	inc (hl)
	adc a,c
	sbc a,e
	dec de
	adc a,d
	ld h,01bh
	ld a,(bc)
	ret po
	jp nz,01bf1h
	sub (hl)
	ld d,l
	ld a,(07014h)
	ld hl,(l6400h)
	ld h,b
	ld hl,(0a5aah)
	adc a,091h
	inc l
	ld hl,l44f8h
	call nz,098afh
	rst 0
	ld c,e
	or h
	ld sp,0849dh
	cp 01fh
	adc a,b
	ld d,d
	cp d
	adc a,c
	ei
	ld (bc),a
	ld a,(bc)
	push de
	ld (005d2h),hl
	add hl,bc
	dec e
	ld h,d
	xor 001h
	bit 2,h
	ld c,00dh
	jp 06149h
	xor (hl)
	adc a,b
	inc (hl)
	sbc a,0c6h
	ld d,062h
	adc a,b
	ld d,e
	ret po
	pop bc
	ld e,c
	ld h,b
	ret po
	inc a
	daa
	jr $-30
	ld c,c
	add hl,de
	ld h,d
	ld e,060h
	ld a,(bc)
	xor h
	inc bc
	ld a,(bc)
	ld d,023h
	ex de,hl
	ld hl,05a24h
	ld h,h
	jp c,09d1ch
	push de
	adc a,d
	inc b
l538ah:
	jp nz,01b3dh
	dec b
	ld c,l
	ld a,(0eda8h)
	jr l538ah
	sbc a,l
	or b
	ld d,c
	ld a,(0d148h)
	ld h,0cah
	rst 18h
	sub h
	rst 0
	sbc a,h
	and d
	add hl,bc
	and b
	ld h,b
	ld a,(0b5f9h)
	ld (hl),0b6h
	sbc a,h
	or c
	ld hl,(090c2h)
	inc de
	rst 10h
	ld b,d
	ld de,(04ad7h)
	ret
	add hl,hl
	adc a,014h
	ld e,a
	sub 05dh
	rst 10h
	halt
	adc a,c
	ld a,(05f26h)
	add a,(hl)
l53c3h:
	ld e,b
	ret m
	add a,d
	dec d
	ex de,hl
	pop hl
	ld bc,08b02h
	sub d
	call m,03e5bh
	jr nz,l53d2h
l53d2h:
	ld bc,l40d4h
	ld bc,l4120h
	ld b,b
	nop
	ld h,b
	ld b,b
	add a,b
	ld b,b
	ld h,(hl)
	jr c,l53e1h
l53e1h:
	sub b
	ld d,b
	ld h,b
	ld a,(bc)
	nop
	add a,b
	ld h,b
	and b
	ld a,(bc)
	add a,b
	nop
	add a,b
	jr nz,l5401h
	ex af,af'
	ld b,b
l53f1h:
	add a,b
	nop
	and b
	and b
	nop
	and b
	jr nz,$+103
	and b
	ld e,014h
	ld a,(bc)
	nop
	ret nz
	nop
l5400h:
	ret nz
l5401h:
	jr nz,l53c3h
	ld b,b
l5404h:
	ret nz
	nop
	ld h,b
	ret nz
	add a,b
	ret nz
	and b
	ret po
	nop
	ret po
	nop
	jr nz,l53f1h
	ld b,b
	ret po
	ld h,b
	ret po
	add a,b
	ret po
	xor d
	jr nz,l5465h
	nop
	ld c,d
	xor d
	ld b,b
	ld (hl),02eh
	nop
	jp c,04e58h
	ld b,h
	add a,b
	ld (hl),001h
	ld b,b
	ld hl,l4140h
	ld b,b
	dec b
	ld h,c
	ld b,b
	add a,c
	ld b,b
	and c
	and l
	ld d,d
	call m,sub_6009h
	ld b,c
	ld h,b
	adc a,b
	nop
	add a,c
	ld h,b
	and c
	add a,b
	ld bc,0b880h
	call nc,08041h
	nop
	ld h,c
	add a,b
	add a,c
	add a,b
	and c
	and b
	ld bc,000a0h
	ld hl,l41a0h
	and b
	ld h,c
	and b
	add a,c
	and b
	ld h,0a1h
	ret nz
	ret m
	inc de
	ld hl,041c0h
	xor h
	nop
	ret nz
	add a,c
	ret nz
l5465h:
	and c
	ret po
	ld bc,000e0h
	ld hl,041e0h
	ret po
	ld h,c
	ret po
	add a,c
	ret po
	nop
	and c
	jr nz,$+3
	jr nz,l5499h
	jr nz,$+67
	jr nz,l547dh
	ld h,c
l547dh:
	jr nz,l5400h
	jr nz,$-93
	nop
	ld bc,08090h
	nop
	ld b,c
	nop
	dec bc
	ld h,c
	nop
	add a,c
	nop
	dec bc
	nop
	sbc a,e
	ld de,l4d01h
	nop
	ret nc
	dec bc
	ld h,e
	ret po
	inc bc
l5499h:
	ld (bc),a
	ld (de),a
	inc de
	sbc a,c
	ld c,d
	nop
	ld e,0c2h
	ld (bc),a
	ld e,l
	add hl,bc
	ld (hl),c
	ld c,0e3h
	rrca
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
	jr nz,l54bdh
	sub (hl)
	add a,051h
	dec de
l54bdh:
	rla
	ex af,af'
	nop
	ld c,d
	adc a,l
	ret po
	inc b
	ex de,hl
	ld c,d
	add hl,bc
	sub (hl)
	inc bc
	ld (de),a
	call 0200bh
	inc l
	defb 0ddh,00eh,049h ;illegal sequence
	sub l
	jp 01dd0h
	call sub_63bfh
	call 0bd7dh
	call nc,096e2h
	in a,(020h)
	or a
	dec a
	ld bc,l7701h
	sbc a,b
	ld d,08eh
	jp z,0626fh
	ex af,af'
	rlca
	dec h
	sbc a,c
	ld d,002h
	ex af,af'
	ld c,0eeh
	ex af,af'
l54f5h:
	adc a,054h
	sbc a,d
	ex af,af'
	sbc a,h
	jp 08608h
	ld (hl),b
	inc hl
	ld (hl),c
	ld a,d
	and a
	and h
	jp (hl)
	pop bc
	xor d
	ld h,h
	ld (002a9h),a
	inc b
	dec hl
	ld (hl),d
	ld (0022ch),a
	or d
	sub b
	ex af,af'
	or e
	ld (bc),a
	inc a
	ld (hl),c
	ld (0b441h),a
	dec b
	ld l,l
	ld l,a
	ld (0026eh),a
	inc h
	ld l,a
	ld (bc),a
	ld (hl),b
	ld (bc),a
	or l
	sub d
	ld c,0b7h
	ld (bc),a
	cp b
	ld (bc),a
	ld c,c
	cp h
	ld (bc),a
	cp (hl)
	ld (bc),a
	cp a
	ld (bc),a
	jr nz,l54f5h
	ld (bc),a
	and d
	ld l,l
	ld (091c1h),a
	dec b
	jp nz,l6e02h
	ld a,c
	ld h,029h
	ld a,c
	ld h,002h
	or b
	dec bc
	inc h
	xor (hl)
	ld (bc),a
	xor l
	ld (bc),a
	or c
	sub d
	ld (bc),a
	jp 0c402h
	ld (bc),a
	ld c,c
	push bc
	ld (bc),a
	add a,002h
	rst 0
l5559h:
	ld (bc),a
	inc b
	and a
	jp 0a532h
	ld (bc),a
	and (hl)
	sbc a,b
	ld (bc),a
	cp 0a5h
	ld hl,(08c1fh)
	nop
	adc a,d
	ld a,0a0h
	ld (l6c8eh),a
	ld a,042h
	jr nz,l55a5h
	sub d
	inc b
	jr nc,l55a9h
	cp e
	ld h,h
	nop
	ld a,054h
	ld (l6a40h),a
	ld a,052h
	ld (04f41h),a
	inc b
	inc (hl)
	ld (06b02h),a
	rst 18h
	sbc a,b
	ld de,004aah
	jp po,0930ah
	ld l,c
	ld (01bbdh),a
	adc a,d
	ex (sp),hl
sub_5597h:
	ld h,d
	ld l,c
	rst 18h
	ld de,08769h
	ld (de),a
	ld l,d
	ld (bc),a
	ld b,c
	ld l,e
	ld (bc),a
	ld l,h
	ld l,a
l55a5h:
	ld a,014h
	add a,l
	ld h,b
l55a9h:
	ld l,l
	ld a,01eh
	jr $+52
	ld b,h
	ld l,(hl)
	ld c,h
	ld c,h
	sbc a,h
	inc b
	dec b
	and d
	ld sp,02e71h
	xor a
	ld h,a
	nop
	cp d
	ld h,h
	ld hl,l6848h
	ld de,04d08h
	ld l,b
	rst 38h
	adc a,l
	ld e,c
	adc a,b
	or b
	ld h,e
	ld de,l4de8h
	ld (hl),d
	cp 0a4h
	sbc a,d
	ld a,(de)
	ld (0a032h),a
	sbc a,d
	dec c
	ret m
	ld (0c3a1h),a
	add a,l
	exx
	jp m,00e18h
	cp a
	add hl,de
	sbc a,c
	ld h,e
	rlca
	dec b
	jp 00520h
l55eah:
	add a,a
	ret nz
	dec b
	ld c,0e0h
	add a,l
	cp b
	rlca
	ld (hl),b
	and b
	dec b
	add a,b
l55f6h:
	call 08205h
	xor 03ah
	ld l,l
	add a,b
	ld a,046h
	ld b,040h
	inc bc
	ld a,c
	or a
	push af
	call nz,00077h
	ld (hl),e
	pop af
	or a
	call z,0738eh
	call 01d18h
	add a,(hl)
	di
	ei
	rst 8
	ld de,005c6h
	add a,c
	adc a,b
	call z,093e0h
	sla d
	ld d,a
	sbc a,003h
	ld hl,0c498h
	ld h,h
	push hl
	ld b,b
	ld hl,0c438h
	add hl,bc
	ld b,032h
	cp b
	dec bc
	ld b,0edh
	add a,b
	rrca
	ld (06ca6h),hl
	ld d,(hl)
l5638h:
	ret
	and h
	or l
	jr nc,l55f6h
	inc (hl)
	adc a,0adh
	add hl,bc
	dec b
	inc bc
	and (hl)
	add a,b
	ld a,(0a30bh)
	pop af
	rla
	ld l,l
	rra
	inc hl
	sub d
	ld bc,02b50h
	ld (bc),a
	dec b
	adc a,e
	ret nz
	xor (hl)
	adc a,a
	dec b
	jp 03bb7h
	cpl
	ld e,c
	pop hl
	rst 28h
	nop
	ld h,l
	sbc a,005h
	sbc a,065h
	dec (hl)
	ld a,a
	dec b
	ld c,037h
	rst 10h
	cpl
	nop
	nop
	jp c,000cdh
	sub h
	ld (hl),h
	call sub_7a0eh
	call 07971h
	inc h
	call 00842h
	ld d,a
	sbc a,l
	add a,d
	cp (hl)
	ld (hl),e
	ld a,(082d6h)
	or a
	ret z
	ret nz
	ld (hl),d
	defb 0edh ;next byte illegal after ed
	add a,b
	ld a,r
	sla a
	nop
	ld (l64b9h),a
	call l722bh+2
	call 0017ch
	ld l,l
	call sub_6ca8h
	call sub_65a5h
	jr z,l56abh
	ld l,a
	call 0023ch
	and e
	ld c,000h
	ld c,(hl)
	ld l,c
l56abh:
	call sub_6616h
	call sub_4600h
	ld (hl),c
	dec a
	ld h,l
	ret
	xor 08dh
	pop bc
	inc sp
	ret c
	sbc a,h
	rrca
	dec b
	ld d,(hl)
	xor a
	sub d
	jp nc,056ebh
	add a,e
	add hl,hl
	or h
	exx
	ld d,h
	ld a,(002f1h)
	cp 0ffh
	jp z,l6574h
	ld c,e
	inc de
	and 003h
	ld b,a
l56d5h:
	sbc a,e
	adc a,c
	xor b
	sbc a,e
	call z,0030bh
	rrca
	jp nz,l6552h
	ld a,013h
	call nz,0974fh
	call nc,00406h
	cp 038h
	ld (06d08h),a
	ld (bc),a
	cp 014h
	jp nc,0655dh
	add a,0f5h
	add a,b
	jp nc,064dah
	ld h,l
	ld (032d6h),hl
	ld a,e
	sub a
	ld a,(0187eh)
	ld c,a
	ld e,010h
	jr nc,$+3
	jr l56d5h
	ld e,e
	ld e,l
	ld c,e
	inc a
	dec d
	jp z,l657fh
	call nz,07093h
	ld b,l
	call p,0a673h
	ld c,b
	dec b
	ld hl,07402h
	add a,l
	pop de
	ld b,068h
	jr nc,$-50
	djnz $+4
	call m,0a43ah
	ld h,l
	inc a
	ld (l6303h),a
	ret nz
	ld d,d
	dec a
l5730h:
	or a
	add a,b
	sub l
	jp 000c9h
	jp c,096dbh
	jr nc,$+60
	ret z
	ld b,l
	jp nz,0d081h
	dec de
	rlca
	ld l,d
	ex (sp),hl
	ld e,c
	xor l
	add a,b
	jp (hl)
	halt
	defb 0ddh,040h,076h ;illegal sequence
l574ch:
	dec c
	ld a,(0c13eh)
	sbc a,(hl)
	inc b
	ld e,a
	xor a
	ld hl,(0c4eah)
	sbc hl,de
	rst 28h
	pop hl
	ret nc
	ld a,(017b9h)
	adc a,a
	add a,0e8h
	ld h,l
	rrca
	ld a,c
	cp (hl)
	cp 038h
	ld a,(0bf45h)
	cp a
	push af
	di
	ret m
	rrca
	ret nz
	ld a,024h
	or c
	call z,0b9c2h
	ld e,0d2h
	add a,l
	ld d,d
sub_577bh:
	call z,082c9h
	ld (hl),b
	ld d,h
	xor e
	ld h,(hl)
	adc a,009h
	xor a
	xor l
	ld sp,hl
	ld l,a
	sbc a,l
	rla
	or a
	sub a
	ex de,hl
	sbc a,c
	ld (094afh),hl
	ld d,b
	call 02829h
	add a,(hl)
	ld a,(0971eh)
	add a,b
	call sub_668fh
	ld a,(l6615h)
l57a0h:
	adc a,c
	or c
	dec d
	ld b,027h
	add a,d
	ld b,0e6h
	rst 18h
	sub c
	dec b
	call z,00b64h
	ld e,b
	pop bc
	dec a
	ld de,000cah
	ld l,c
	inc bc
	ret
	ld h,(hl)
	ld a,e
	ld (0efbeh),hl
	rla
	cp 005h
	ret z
	jp 02185h
	ex af,af'
	and l
	adc a,h
	djnz l574ch
	sbc a,(hl)
	inc b
	jp po,0ff44h
	ld h,(hl)
	push af
	jp po,0362ch
	ld bc,l696ch
	sub b
	ret pe
	ld hl,023c8h
	nop
	ld (0c0a6h),a
	add a,e
	ld h,(hl)
	out (007h),a
	inc bc
	ret nz
	ret nz
	sub (hl)
	or e
	and 002h
	ld e,0f8h
l57ebh:
	jr c,l5808h
	jp nz,038b7h
	di
	ret nz
	cp 050h
	jp c,0c104h
	ld h,(hl)
	cp 0c3h
	ret c
	add a,h
	ret pe
	call z,sub_6db2h
l5800h:
	cp h
	add hl,sp
	xor l
	ld e,b
	and 0d1h
	out (08dh),a
l5808h:
	or a
	dec sp
	rst 18h
	ld h,a
	and a
	inc c
	adc a,a
l580fh:
	ld l,b
	sub d
	inc h
	ld (bc),a
	rlc d
	jp (hl)
	ld h,b
	ld l,b
	inc a
	call 06765h
	push de
	ld b,d
	adc a,(hl)
	and c
	ret
	sbc a,l
	dec bc
	rst 20h
	dec bc
	jr c,l583fh
	ld de,01849h
	ld de,011ach
	cp e
	ld de,028c3h
	ld de,02884h
	ld de,09ccah
	ld de,011d9h
	jr c,l5874h
	ld de,005aeh
l583fh:
	call z,0119bh
	rst 30h
l5843h:
	ld de,0915ah
	push de
	ld a,b
	cp h
	ld l,b
	sbc a,l
	or c
	cp h
	dec b
	sbc a,e
	ld (hl),c
	ld b,009h
	dec b
	ld e,(hl)
	xor a
	rla
	ld d,a
	ld h,a
	or l
	jr c,l57ebh
	dec b
	ld h,h
	and b
	dec b
	ld a,(bc)
	ld a,b
	inc h
	ld (l798ah),a
	xor b
	ld (bc),a
	add a,082h
	ld (bc),a
	call po,0c968h
	ld a,(hl)
	and l
	ld c,b
	or b
	add a,c
l5872h:
	sub 00ah
l5874h:
	ld (0c30fh),a
	ld b,08fh
	inc l
	cp a
	jr nc,l580fh
	pop af
	adc a,b
	djnz l5885h
	jr nc,l5899h
	xor 001h
l5885h:
	jp 0cdd9h
	ld hl,(0d905h)
	ret nc
	call pe,08889h
	dec a
	and a
	ld (bc),a
	adc a,b
	jr nz,$+39
	dec a
	ld (hl),a
	ret nz
	push hl
l5899h:
	ld c,d
	dec hl
	dec hl
	ld (04cbah),hl
	ld b,052h
	inc b
	cp e
	jr z,l5872h
	or a
	rlca
	pop hl
	jp z,l67b4h
	ld a,(hl)
	rst 28h
	sub e
	cp e
	ld (02d0eh),a
	and c
	ld d,d
	di
	ld c,d
	inc bc
	dec e
	ld a,h
	add a,0beh
	call c,sub_6769h
	inc h
	ld (006deh),a
	jr c,l58fah
	xor h
	dec a
	ret c
	ld h,a
	defb 0edh ;next byte illegal after ed
	ld d,0c9h
	sub a
	ret c
	jr z,l58cfh
l58cfh:
	jr l58d9h
	nop
	sbc a,c
	dec b
	ret nz
	add a,c
	jp nz,0021ah
l58d9h:
	ld d,(hl)
	rlca
	ld (de),a
	dec de
	dec de
	dec bc
	dec bc
	ex af,af'
	nop
	dec hl
	push de
	call 0865ah
	inc sp
	pop hl
	dec hl
	nop
	dec l
	and c
	ld c,e
	nop
	ld e,02bh
	rlca
	defb 0fdh,00ah,0ffh ;illegal sequence
	inc c
	jr c,l5957h
	rrca
	add a,d
l58fah:
	ld d,b
	call m,0ef2fh
	ccf
	or c
	cp 0bfh
	ret po
	inc bc
	ld h,h
	nop
	ld h,e
	ld h,h
l5908h:
	cp (hl)
	inc h
	inc b
	ret nc
	cp (hl)
	ld (hl),a
	ld c,0b1h
	cp (hl)
	sbc a,a
	dec e
	call z,0b6d2h
	ld h,0eeh
	adc a,h
	xor c
	inc b
	cp (hl)
	sub d
	ld (de),a
	ld l,c
	add a,h
l5920h:
	ld l,d
	cp e
l5922h:
	ld b,d
	sbc a,(hl)
	ld l,b
	ret m
	xor c
	ld (bc),a
	jp c,00a02h
	ret m
	ld l,b
	ld a,(034b5h)
	push de
	ld (de),a
	sub a
	ld l,b
	call nz,018a4h
	ld a,(00918h)
	or l
	jp po,0a509h
	adc a,c
	add hl,bc
	out (009h),a
	jp 00938h
	dec de
	pop af
	add hl,bc
	or a
	jr c,l5908h
	cp h
	adc a,05ah
	cp b
	sub b
	ld e,(hl)
	push hl
	ex (sp),hl
	and d
	and d
	ld (hl),l
	ld d,l
l5957h:
	rst 0
	and d
	sub b
	add a,b
	ld l,c
	add a,0a2h
	inc c
	add a,a
	ld l,c
	and d
	ld a,b
	cp b
	pop de
	or b
	cp d
	ld d,l
	ld l,h
	sbc a,b
	inc bc
	add hl,hl
	inc bc
	call pe,sub_6b4ch
	inc bc
	pop de
	inc bc
	ld h,e
	add a,l
	inc bc
	ld b,h
	inc bc
	jr l5994h
	inc bc
	rst 10h
	ld c,h
	ld l,d
	inc bc
	or d
	inc bc
	ld h,e
	add a,d
	inc bc
	ld e,b
	inc bc
	jr l599dh
	inc bc
	rst 8
	inc b
	ld l,c
	ret
	ld hl,l6a06h
	rst 8
	and 069h
l5993h:
	ld e,l
l5994h:
	sbc a,c
	inc b
	adc a,e
	ret nz
	ret p
	dec bc
	cp h
	ld (bc),a
	defb 0edh ;next byte illegal after ed
l599dh:
	ret nz
	ld hl,07632h
	ld de,0edbbh
	call m,09173h
	xor e
	or l
	res 7,h
	sbc a,e
	cp b
	inc e
	pop de
	ld a,(hl)
	ld c,l
	ret
	add a,08ch
	ld c,d
	nop
	inc bc
	ld (hl),d
	ld bc,0fea4h
	ret po
	ld a,(de)
	ld hl,l4549h
	ld hl,03a6bh
	dec b
	ld a,(0c4a1h)
	add a,0dbh
	ld d,c
	inc b
	ld a,(0074fh)
	or c
	inc b
	cp 0deh
	sub (hl)
	ld (hl),e
	dec c
	ret p
	or e
	inc sp
	dec de
	ld d,d
	cp 089h
	ld d,h
	ret z
	ld b,(hl)
	ld (hl),033h
	pop hl
	inc bc
	ld bc,0126ch
	inc b
	nop
	ex af,af'
	nop
	ld (bc),a
	rst 10h
	add a,c
	ld bc,021c0h
	ld (hl),e
	adc a,b
	inc e
	ld (0290ch),a
	call m,0bc3dh
	ld l,h
	sbc a,h
	ld a,06ch
	jr c,l5993h
	ld l,h
sub_5a00h:
	ld (hl),b
	and e
sub_5a02h:
	cpl
	dec bc
	ret nc
	ld e,c
	ret po
	nop
	or b
	inc bc
	sbc a,024h
	jp z,0d065h
	ld l,b
	bit 3,d
	ld c,01ch
	ld l,02fh
	jr c,$-54
	add hl,hl
	ld l,e
	ld a,(bc)
	ld e,c
	rra
	xor e
	pop af
	ld a,0f1h
	add a,a
	xor b
	defb 0ddh,0deh,086h ;illegal sequence
	ld hl,(00300h)
	ld b,a
	pop bc
	add a,c
	dec bc
	ld l,e
	ld d,h
	xor b
	call m,0e3c1h
	exx
	ret pe
	cp c
	ret
	inc b
	ld a,(0f6dch)
	rlca
	ld d,c
	inc b
	pop bc
	xor l
	add hl,bc
	ld h,a
	sbc a,b
	dec hl
	ld (0342fh),a
	adc a,a
	pop bc
	dec (hl)
	inc l
	ld (de),a
	pop bc
	ld e,006h
	dec (hl)
	ld l,e
l5a51h:
	ld h,a
	and e
	ex af,af'
	pop bc
	jp po,l6cf1h
	adc a,(hl)
	pop bc
	cpl
	cp l
	inc hl
	add a,(hl)
	ld de,0861fh
	add a,a
	ld hl,l7667h
	ld c,076h
	add hl,sp
	jr l5a71h
	add hl,sp
	ld a,(03d2eh)
	ld (hl),c
	and l
	and e
l5a71h:
	inc bc
	jp nc,0358eh
	ld h,e
	jp nc,0798eh
	ld d,c
	ld a,(0e0d2h)
	ld a,(de)
	ld b,(hl)
	ld l,h
	and a
	sub h
	ld hl,0fb6ch
	sub a
	inc b
	dec c
	ld h,021h
	jp nz,0d744h
	sbc a,(hl)
	add a,d
	cp e
	adc a,a
	add a,l
	ld (0e503h),a
	ld c,c
	ld d,e
	dec hl
sub_5a98h:
	ret nz
	xor e
	ld e,b
	rst 18h
	inc d
	ld a,046h
	ld b,0c5h
	add a,h
	and b
	nop
	add a,000h
	inc bc
	ret z
	rst 0
	ld c,a
	jr l5af7h
	ld c,0ddh
	ld a,h
	ld a,(de)
l5ab0h:
	dec b
	ld a,(de)
	adc a,b
	ld de,0ac00h
	nop
	inc bc
	xor (hl)
	ld bc,02518h
	ld (09e94h),a
	ld h,(hl)
	inc bc
	rrca
	ld l,h
	add a,018h
	adc a,d
	ld hl,03a6ch
	dec bc
	rlca
	or c
	inc b
	cp 088h
	adc a,(hl)
	inc hl
	inc b
	dec l
	ld d,(hl)
	ld b,b
	xor b
	ld c,d
	cp h
	ld sp,02d82h
	ld e,(hl)
	adc a,(hl)
	dec l
	ld de,06800h
	ld (de),a
	ld bc,08e12h
	inc l
	in a,(0a0h)
	inc h
	inc sp
	ld l,h
	add a,(hl)
	and b
	ld c,06ch
	ld (0e004h),a
	ld l,e
	ld (l6bc5h),a
	xor l
l5af7h:
	ld h,d
	ld (de),a
	ld a,(bc)
	ld b,c
	call po,0c90ah
	ld l,e
	ld a,040h
	ld c,c
	sbc a,c
	ld d,h
	or c
	cp c
	ld c,c
	sbc a,b
	dec hl
	or 08dh
	or l
	jr c,$+35
	adc a,b
	ld (hl),b
	ld d,c
	adc a,(hl)
	ld l,b
	or a
	ld hl,l708eh
	sub d
	ld l,h
	sub 007h
	ld d,h
	inc b
	ld l,(hl)
	push bc
	ld l,l
	call nc,01b9ch
	ld b,a
	jp z,0c94eh
	cp e
	adc a,b
	sbc a,(hl)
	nop
	inc bc
	and b
sub_5b2dh:
	ld bc,0a291h
	ld b,d
	ld a,h
	sbc a,012h
	xor 00eh
	ld a,h
	ld c,(hl)
	inc c
	ld a,(0b68ch)
	jp m,0b55dh
	ld e,a
	cp 0b2h
	ld e,a
	or a
	and 0c7h
	ret nz
	adc a,a
	cp (hl)
	sbc a,c
	ret m
	ld l,h
	adc a,a
	xor 011h
	adc a,0c1h
	ld (bc),a
	ld l,l
	jr nc,$-122
	ld d,l
	ld l,l
	ret z
	ld h,e
	ld h,h
	jp pe,l73e7h
	push hl
	inc b
	ld c,(hl)
	ld l,l
	ld sp,hl
l5b62h:
	xor e
	ld e,l
	dec b
	add a,(hl)
	ld l,h
	dec b
	rst 20h
	ld e,0fch
	ld h,e
	cp b
	ret p
	or e
	add a,e
	xor (hl)
	di
	rst 8
	or l
	ld a,b
	rst 20h
	jp po,0bcafh
	ld b,c
	pop af
	ret
	ret nz
	xor a
	jr nz,l5b82h
	and a
	nop
l5b82h:
	daa
	ld a,b
	nop
	adc a,e
	and c
	ld (hl),h
	nop
	call nc,0860eh
	ld a,d
	nop
	ex (sp),hl
	ld c,l
	inc d
	ld c,006h
	ld l,(hl)
	nop
	ret nz
	ld (bc),a
	or e
	ld c,039h
	ld (de),a
	ld c,08eh
	out (011h),a
	ret z
	set 1,c
	ld a,e
	ld l,l
	ld b,e
	ld d,a
	inc bc
	call m,01f89h
	dec bc
	and c
	adc a,a
	dec de
	inc b
	ld h,b
	adc a,h
	nop
	call c,0dcf3h
	sbc a,d
	ld d,d
	ld a,(0267ah)
	dec a
	push af
	inc l
	ld e,064h
	and a
	dec b
	ret z
	ld l,e
	ret nz
	ld a,(hl)
	ld (03206h),hl
	or (hl)
	sub b
	jr nz,l5b62h
	ld (l6eddh),a
	ld b,03eh
	halt
	ld (06eech),a
	ld d,0d0h
	ld c,h
	ld de,014d6h
	jp c,00607h
	ld l,a
	ld a,(l6e81h)
	sbc a,d
	ld d,d
	adc a,a
	ld b,h
	dec b
	jp nz,02ff2h
	exx
	ld d,d
	ld l,(hl)
	jp nz,0d926h
	jr nz,$-22
	rlca
	jp z,02104h
	ld a,(bc)
	ret m
	ld d,l
	ret po
	dec c
	ld d,a
	ld b,e
	inc b
	dec c
	ld d,b
	ccf
	sub 005h
	jp c,02256h
	dec c
	ld e,00dh
	or l
	rst 28h
	dec de
	rst 28h
	dec c
	call c,03260h
	ld c,(hl)
	ei
	dec bc
	rst 30h
	dec bc
	ld a,(de)
	cp 019h
	cp 0eeh
	dec c
	ld l,l
	adc a,d
	or l
	inc bc
	dec bc
	cp 01eh
	call z,sub_5d82h
	rlca
	dec de
	rra
sub_5c29h:
	rlca
	ld c,c
	pop bc
	ld e,e
	ld l,(hl)
	sub c
	dec de
	jr c,$+83
	ld a,(bc)
	sbc a,(hl)
	add a,h
	ret nc
	xor a
	xor e
	ld h,b
	ld a,(l6dd2h)
	inc b
	dec a
	cp 005h
	ret z
	ld (03a06h),a
	ld hl,(l6e44h)
	jp z,l444ch
	dec e
	ld c,h
	ld b,091h
	inc bc
	ret
	sbc a,065h
	add a,d
	sbc a,b
	ld (00f91h),a
	ld h,d
	ld (hl),b
	ld b,0a6h
	rrca
	jr c,$+35
	cp e
	ld e,d
	ld l,l
	jp nz,00468h
	dec c
	call z,0ca14h
	pop hl
	inc d
	pop de
	inc d
	or a
	inc b
	dec c
	ld hl,(0adc9h)
	xor b
	adc a,0c1h
	sub a
	halt
	call pe,00a28h
	sub l
	adc a,061h
	ret po
	call nc,0940eh
	inc d
	ld c,00ch
	call nc,09e0eh
l5c87h:
	adc a,d
	ex (sp),hl
	sub (hl)
	dec e
	add a,(hl)
	ld d,0f6h
	ex de,hl
	cp (hl)
	ld c,01eh
	halt
	ld c,03ch
	add a,e
	call z,0060eh
	jp z,0dc0eh
	out (034h),a
	ld l,a
	ld e,c
	inc h
	inc b
	ret z
	jp nc,03a74h
	dec bc
	ret nc
	jp 0a4feh
	xor a
	nop
	dec (hl)
	ld l,a
	ld bc,0029ah
	xor a
	dec b
	call 002deh
	ld b,002h
	out (01ch),a
	ld b,090h
	ex af,af'
	jp 00006h
	ld (hl),a
sub_5cc2h:
	rlca
	jp c,0c301h
	ld (de),a
	or h
	jp p,068a4h
	ld l,a
	jp pe,005adh
	jp z,02cceh
	ld h,a
	ld de,082aah
	dec b
	xor b
	sub c
	jp nz,0b263h
	inc b
	sbc a,(hl)
	ccf
	ld b,(hl)
	ld l,a
	adc a,(hl)
	jp nz,l71cdh
	or c
	inc (hl)
	or e
	jp 0acbch
	or d
	inc b
	ld l,l
	or 022h
	call z,0b09dh
	ld h,(hl)
	ld l,(hl)
	ld b,012h
	ret nz
	ld l,a
	adc a,e
	and h
	call z,006e3h
	ld (hl),b
	jp nz,00606h
	ld (hl),b
	ld h,b
	and h
	and b
l5d06h:
	inc hl
	jp z,00eb1h
	add a,b
	jp nz,088e5h
	daa
	ld de,0016fh
	ld (hl),b
	jp z,l7034h
	ld a,(l6f69h)
	call c,088c0h
	jp nz,092b8h
	jp z,02d08h
l5d22h:
	jp 00ee7h
	ld (0d44ch),hl
	ld (02290h),hl
l5d2bh:
	adc a,(hl)
	ld b,e
	ld de,0228dh
	jr l5d9ch
	ld (0db98h),hl
	ld (02208h),hl
	or h
	rst 30h
sub_5d3ah:
	ld (0c4a0h),hl
	ld (0226fh),hl
	xor e
	sub e
	ld (01329h),hl
	ld l,e
	ld (0a81bh),hl
	ld (l7608h),hl
	ld (0981ah),hl
	ld b,0b0h
	ld (09c70h),hl
	ld (022c9h),hl
	ld sp,0226ch
	cp b
sub_5d5bh:
	ld (06cadh),hl
	ld (0f1a4h),hl
	dec l
	or e
	ld h,h
	add a,l
	sbc a,d
	pop af
	ret
	cp d
	and b
	inc bc
	ld (hl),001h
	cp 003h
	ld c,0c2h
	ld c,a
	ld (hl),b
	push de
	xor l
	inc bc
	ld h,h
	ld de,l72e8h
	and d
	ld (hl),e
	defb 0ddh,081h,0d1h ;illegal sequence
	ex de,hl
	push hl
	sbc a,c
sub_5d82h:
	add hl,sp
	add a,d
	xor h
	add hl,bc
	ld (hl),b
	ld de,0dd0fh
	add hl,bc
	ex af,af'
l5d8ch:
	ld a,(hl)
	sub 001h
	ld (hl),a
	add hl,de
	djnz l5d8ch
	pop hl
	dec d
	call 08ca0h
	and b
	pop hl
	dec de
	ld (bc),a
l5d9ch:
	and d
	cp d
	add a,a
	rst 10h
	adc a,b
sub_5da1h:
	jp p,0fe50h
	adc a,h
	ld h,(hl)
	add a,(hl)
	ld e,b
	and b
	ld a,(bc)
	dec e
	or b
	push af
	dec e
	ld a,b
	and b
	dec e
	out (03bh),a
	ld h,h
	ld h,b
	dec e
	adc a,00ch
	ld a,c
	ld (hl),b
	dec sp
	rst 8
	ld c,090h
	dec e
	ld d,a
	add a,b
	dec e
	ld (hl),c
	cp l
	sbc a,b
	and c
	ld b,(hl)
	push hl
	ret c
	add hl,bc
	or b
	ld c,b
	cp l
	ld (09851h),a
	ld (bc),a
	defb 0fdh,05dh ;ld e,iyl
	rst 10h
	jp z,0b388h
	sbc a,l
	adc a,(hl)
	daa
	inc l
	ld (hl),c
	or c
	ld l,d
	dec b
	adc a,b
	ld b,l
	ld (hl),c
	adc a,b
	inc l
	ld hl,(00b2dh)
	ld (hl),c
	add a,016h
	cp 0beh
	ld a,(bc)
	ld (0bc71h),hl
	and l
	ld a,(bc)
	ld hl,0f002h
	ld c,e
	ld d,d
	sub a
	ret nz
	ld a,(bc)
	add a,(hl)
	nop
	ld l,h
	or e
	ld b,a
	jr z,$+101
	ld h,03ah
	or d
	dec a
	and a
	pop bc
	rst 0
	ld l,c
	ld e,(hl)
	pop bc
	ld (de),a
	ld l,e
	sub a
	nop
	ld b,006h
	jp z,l7157h
	ld b,007h
l5e16h:
	or d
	dec (hl)
	ld l,(hl)
	and d
	ld b,e
	push af
	ld a,b
	sbc a,c
	ld d,016h
	ld (hl),d
	pop af
	add a,e
	out (0d4h),a
	ld (0a2bch),a
	ld hl,l71adh
	jp pe,006ach
	ld (hl),d
	cp a
	ld b,0d1h
	push hl
	ld b,0e3h
	ld b,0cbh
	push af
	ld b,093h
	rlca
	ld (hl),d
	ld b,086h
	add hl,de
l5e3fh:
	ld b,0aah
	ret
	add a,(hl)
	add hl,hl
	ld (de),a
	xor a
	ret m
	ld a,d
	and b
	push bc
	ld (hl),a
	djnz l5e16h
	inc (hl)
	ld de,009e3h
	inc d
	inc hl
	call po,00036h
	dec c
	ld (hl),b
	ld (01309h),hl
	rst 0
	dec h
	jr nc,l5e7eh
	ld bc,00021h
	inc sp
	ld bc,l4409h
	rla
	inc h
	ld bc,l4025h
	rrc a
	rra
	or 081h
	ld b,h
	ld (bc),a
	ld b,b
	xor d
	ret z
	dec (hl)
	dec h
	ld (bc),a
l5e78h:
	inc bc
	or 028h
	rrca
	rra
	ld b,e
l5e7eh:
	ld (bc),a
	inc h
l5e80h:
	ld d,l
	inc bc
	cp c
	inc b
	jr nc,l5e87h
	ld b,(hl)
l5e87h:
	inc bc
	inc d
	or b
	and l
	rrca
	rra
	ld bc,00354h
	ld h,(hl)
	inc b
	ld h,b
	inc bc
	ex (sp),hl
	ld e,h
	ld sp,hl
	ld bc,0eec6h
	ld de,l722bh
	xor 09ah
	cp c
	pop bc
	inc a
	ld (hl),d
	jp nc,l7e28h
	ld c,d
	ld (hl),d
	xor h
	ld (de),a
	add a,d
	ld (hl),d
	cp (hl)
	nop
	ld (hl),d
	cp 010h
	jp z,0726ah
	ld hl,l7b2fh
	ld (hl),d
	and l
l5eb9h:
	ld b,c
	ld a,l
	ld (hl),d
	add a,010h
	ld (l6504h),a
	add a,e
	rlca
	xor l
	add a,c
	dec e
	or d
	jp nc,l4803h
	ret
	sub d
	dec hl
	and d
	dec bc
	inc l
	ld (02791h),a
	ld l,l
	adc a,d
	daa
	sub e
	cp b
	and a
	ld bc,089b1h
	ret c
	rlca
	sub (hl)
	ld (bc),a
	and (hl)
	pop af
	daa
	sub l
	adc a,l
	ld hl,(0b60eh)
	and a
	ld h,l
	or d
	sub (hl)
	and 041h
	ld e,b
	inc bc
	cp (hl)
	add hl,bc
	jp nz,l72bdh
	ld b,l
	and 045h
	daa
	rst 20h
	rrca
	and 0f3h
	adc a,l
	rst 20h
	ex af,af'
	dec c
	add a,a
	ld b,a
	add a,a
sub_5f04h:
	add a,b
	rst 20h
	push bc
	ld hl,l4e80h
	add hl,de
	inc l
	ld l,a
	or c
	push hl
	cp 000h
	add a,d
	sbc a,(hl)
	ld c,c
	cp (hl)
	dec h
	sub c
	dec e
	or b
	call m,0af36h
	inc b
	ret
	ret z
	cp l
	call 0c0ceh
	ccf
	ld hl,l7348h
	ld (bc),a
	jp z,l7369h
	ld hl,0734ah
	sbc a,l
	inc a
	ld a,(08cach)
	sub b
	jp 0ab2ah
	ld h,h
	sbc a,(hl)
	ret nz
	ld (hl),e
	ld de,0018eh
	dec l
l5f3fh:
	ld bc,0b806h
	ld (bc),a
	ret
	sub 004h
	or a
	ld (bc),a
	call z,0153bh
	ld (hl),b
	or e
	dec d
	inc b
	pop bc
l5f50h:
	dec d
	ld hl,l73b7h
	jr nc,l5f7bh
	ld b,084h
	and a
	ld b,l
	xor h
	dec h
	ld (hl),03bh
	add a,b
	ret z
	sub 008h
	ret
	ld (hl),09ch
	xor l
	add hl,hl
	nop
	inc bc
	rst 38h
	adc a,d
	jp m,0ab12h
	inc b
	ld a,0d9h
	ld h,b
	jp p,0c873h
	jp z,0d222h
	ld (hl),e
	xor 0c0h
l5f7bh:
	ex af,af'
	ld a,(0c1f1h)
	add a,049h
	ex af,af'
	and c
	inc bc
	ld l,h
	cp b
	pop bc
	sbc a,(hl)
	xor (hl)
	add hl,de
	rlca
	and b
	nop
	jp m,011c1h
	ld bc,0cdc2h
	ld e,(hl)
	ld b,b
	ld bc,0ca14h
	rra
	ld (hl),h
	ld a,(0d3afh)
	scf
	cp l
	ld (hl),e
	cp c
	ld (hl),005h
	or l
	sbc a,l
	or c
	djnz l5feah
	xor (hl)
	jp c,0cf71h
	jp l68a2h
	ld hl,0a6d9h
	jp 08413h
	ld (de),a
	pop bc
	sub b
	ld h,d
	cp l
	ld c,l
	ld (hl),e
	xor (hl)
	ret p
	dec l
	xor (hl)
	ld (0af74h),hl
	ld (0f033h),hl
	ld (l7ed9h),hl
	xor b
	adc a,e
	xor h
	ld h,h
l5fcdh:
	pop bc
	ld e,d
	dec b
	ld d,l
	ld e,b
l5fd2h:
	xor l
	add hl,bc
	sub a
l5fd5h:
	add a,l
	ld e,e
	ld (hl),h
	ld a,(sub_6009h)
	call 00482h
	ld (hl),h
	jp z,l746fh
	dec a
	jp (hl)
	ld e,d
	ld b,021h
	inc hl
	adc a,(hl)
	ld (hl),h
l5feah:
	adc a,0e2h
	adc a,e
	ret pe
	ret nc
	ld d,(hl)
	inc bc
	dec hl
	halt
	rlca
	add hl,bc
	rlca
	dec c
	ld b,b
	ld a,(0c1f7h)
	cp 004h
	jp z,0bb26h
	ld (hl),h
	ret p
	dec hl
	jp z,004dch
l6006h:
	ret nc
	djnz l6006h
sub_6009h:
	inc b
	rlca
	jp z,02211h
	ld (hl),l
	cp 0b9h
	ld b,d
	ld h,a
	inc b
	add hl,bc
	jp z,0049bh
	ex af,af'
	ld a,(bc)
	jp z,l75a4h
	ld a,b
	or 0c1h
	or b
	ret pe
	ld d,001h
	nop
	ld c,020h
	cp 080h
	jp z,l7943h
	ld d,063h
	ld (bc),a
	ex af,af'
	ret nz
	ex af,af'
	ld e,b
	inc bc
	ex af,af'
	ret m
	adc a,008h
	jr nz,l5fd2h
	inc b
	ld c,040h
	sub 017h
	dec b
	ex af,af'
	dec (hl)
	ld l,b
	ex af,af'
	ld b,008h
	adc a,a
	sub b
	jr nz,$+14
	ld d,(hl)
	ld c,077h
	ld (hl),e
	ld d,007h
	dec a
	cp d
	inc (hl)
	ld h,e
	ex af,af'
	ld c,028h
	ld c,000h
	ld b,003h
	ld d,009h
	ld c,0c0h
l605fh:
	jr nc,l605fh
	ld c,b
	ld a,(bc)
	cp 050h
	nop
	jp z,0738eh
	ld b,001h
	ld d,00ah
	ld c,01ch
	add a,b
	cp 098h
	ld a,(de)
	or c
	dec bc
	dec h
	cp b
	ld a,(bc)
	or b
	dec d
	inc c
	ld c,040h
	ex (sp),hl
	ccf
	dec d
	jr l608fh
	dec d
	ret nc
	ret c
	ld a,(bc)
l6086h:
	ld b,(hl)
	ld c,00eh
	dec e
	inc d
	cp 0e8h
	ld d,l
	ld e,d
l608fh:
	and d
	ld bc,l734ch
	cp 058h
	jp z,00452h
	jr nc,l60fah
	ld (hl),c
	ld b,01fh
	jr nc,l60b5h
	rrca
	jr z,l60bah
	jp z,l5843h
	jr z,l60b6h
	ld d,010h
	ld a,(bc)
	dec de
	adc a,b
	ld a,(bc)
	inc sp
	inc c
	ld de,01e0eh
	ld d,h
	ld (hl),d
	ld e,b
l60b5h:
	inc sp
l60b6h:
	jr nz,l6086h
	ld (hl),e
	ex af,af'
l60bah:
	ld (bc),a
	ld a,b
	jp z,l7666h
	or h
	ld sp,00442h
	ex af,af'
	and b
	jp z,0044eh
	or b
	jp z,l5a51h
	inc b
	dec h
	call c,sub_7475h
	adc a,c
	add a,08ah
	ld b,(hl)
	pop af
	exx
	ld h,(hl)
	ld h,04eh
	pop af
	ld d,e
	inc b
l60ddh:
	sub (hl)
	sbc a,c
	ret pe
	ld e,d
	call pe,0c902h
	ld a,004h
	ld (09ff4h),a
	ld h,b
	dec d
	ld b,d
	jp z,l5638h
	inc h
	and c
	jr $+1
	inc c
	cp h
	or c
	nop
	dec d
	sbc a,b
	rrca
l60fah:
	call pe,01e60h
	jp nz,02638h
l6100h:
	rrca
	ld l,a
	add a,b
	rrca
	ld h,b
	ld a,d
	rst 0
	jr c,l6131h
	call nz,03be7h
	rst 38h
l610dh:
	ld b,00fh
	ld a,d
	and b
	rrca
	dec b
	ld hl,l75e2h
	ld de,0d332h
	adc a,c
	push bc
	ld e,b
	ld hl,0e3f0h
	ld de,0eda0h
	dec bc
	ld (0260bh),hl
	ret nz
	dec bc
	djnz l6135h
	ret nc
	adc a,e
l612ch:
	ld c,08dh
	sub (hl)
	ld d,b
	or c
l6131h:
	pop bc
	add hl,bc
	adc a,c
	and b
l6135h:
	rst 38h
	add a,c
	ld h,h
	sub a
	ld h,c
	call 0ab8eh
	ld d,e
	dec b
	sub (hl)
	ld d,b
	ld hl,0573eh
	ld a,c
l6145h:
	xor 075h
	call 026c6h
	ld b,b
	ld b,032h
	and h
	jp 01132h
	xor b
	or b
	cp (hl)
	halt
	ret
	pop bc
	ld a,e
	ld h,(hl)
	add hl,bc
	call 00536h
	ld a,(bc)
	ld (hl),a
	ld a,(bc)
	ld a,(00a7ch)
	ld c,(hl)
	ld a,b
	ld a,(bc)
	ld a,l
	ld a,(bc)
	jr nc,l612ch
	nop
	inc bc
	dec b
	add hl,bc
	ex af,af'
	dec b
	rla
	ld (hl),e
	jr c,l61ach
	dec bc
	dec b
	ex de,hl
	ld b,(hl)
	ex af,af'
	adc a,h
	jr c,$-126
	add a,a
	nop
	jr nz,l6100h
	ret c
	sbc a,d
	ld d,h
	ret nz
	ret nz
	jr nc,l6145h
	sub a
	ld d,b
	inc bc
	ld hl,01b03h
l618dh:
	ret c
	inc bc
	call nz,00307h
	inc b
	ex af,af'
	djnz $+34
	add a,h
	add a,b
	ld (013b8h),hl
	ld h,062h
	ret po
	ld h,030h
	xor e
	ld d,a
l61a2h:
	ccf
	sub e
	inc sp
l61a5h:
	ld a,b
	ccf
	ld c,004h
	inc b
	ccf
	ret nz
l61ach:
	jp c,0509ch
	ret nz
	ret c
	djnz l61a5h
	ccf
	ld a,(bc)
	jr $-58
	rst 0
	inc bc
	ld e,0a9h
	or e
	ccf
	sub b
	cp (hl)
	ld (0e060h),hl
l61c2h:
	scf
	or b
	inc c
	ld c,l
	cp d
	jr z,$+32
	inc b
	ld bc,01b13h
	ld e,c
l61ceh:
	ld hl,(00c26h)
	ld l,088h
	ld a,090h
	djnz l61d7h
l61d7h:
	and b
	ret pe
	adc a,01ch
	ret nc
	and b
	ld h,b
	djnz l61c2h
	ld b,c
	exx
	jr z,l6206h
	dec e
	ld h,h
	ld h,046h
	rlca
l61e9h:
	ld h,00ch
	ld a,0d4h
	jr nz,l6210h
	ld e,e
	dec de
	inc b
	inc hl
	ret po
	ret nz
	jr nz,l6207h
	sub b
	ld e,l
	ccf
	dec bc
	ld e,e
	add hl,sp
	ld a,(bc)
	ld h,e
	ld c,(hl)
	adc a,(hl)
	ccf
	adc a,h
	call z,03f1eh
l6206h:
	dec sp
l6207h:
	jr nz,l6229h
	ccf
	jr z,l6289h
	ld b,h
	sub (hl)
	inc hl
	dec c
l6210h:
	jr nc,l61a2h
	sbc a,(hl)
l6213h:
	ccf
	ld (bc),a
	jr l623ah
	ex (sp),hl
l6218h:
	ret nz
	ld e,06ch
	ld b,b
	jr nz,l6213h
	ld b,b
	ld b,005h
	dec bc
	jr c,l6297h
	ex af,af'
	rla
	dec b
	ex af,af'
	add hl,bc
l6229h:
	xor b
	cp b
l622bh:
	ld hl,03040h
	ld (09a54h),hl
	ret c
	add a,b
	jr nz,l61ceh
	daa
	add a,b
	ld e,065h
	dec b
l623ah:
	inc b
	inc bc
	rlca
	call nz,0c671h
	add hl,de
	ld e,0c4h
	or 060h
	and b
	ret po
	ld h,d
	dec hl
	ld h,0b8h
	inc e
	nop
	rrca
	ld h,d
	sub 0c3h
	ccf
	ld a,b
	inc sp
	ccf
	ret z
	djnz $-38
	ld c,0c0h
	ld d,b
	sbc a,h
	jp c,0a33fh
	call p,03f21h
	rst 0
	call nz,03f18h
	pop hl
	ld d,c
	ld bc,0b00ch
l626bh:
	ret po
	ld h,b
	ld (03fbeh),hl
	call c,00c00h
	add a,h
	jr l62a0h
	ld e,c
	dec de
	ret nz
	rst 10h
	jr nz,l6218h
	ld (hl),b
	djnz l627fh
l627fh:
	ld h,b
	and b
	ret nc
	inc e
	adc a,0e8h
	and b
	djnz l62e2h
	sub b
l6289h:
	ld b,b
	ld e,a
	inc c
	add a,d
	jr $+9
	ld b,(hl)
	ld h,h
	dec e
	inc e
	or (hl)
	nop
	ld e,090h
l6297h:
	jr nz,l62b9h
	ret nz
	ret po
	inc hl
	sbc a,d
	sub c
	add a,033h
l62a0h:
	ld e,076h
	ld d,b
	ld e,e
	dec e
	ld a,(bc)
	add hl,sp
	ld e,e
	ccf
	push bc
	sub 03fh
	add a,a
	ld e,0cch
	ccf
	add a,h
	ld sp,00730h
l62b4h:
	dec c
	rlca
	ld b,044h
	ld a,l
l62b9h:
	ccf
	ld d,c
	call p,03f90h
	ex (sp),hl
	inc hl
	jr l62b4h
	ccf
	jp 019afh
	adc a,a
	nop
	inc b
	jr nz,l626bh
	pop de
	sbc a,h
	ex (sp),hl
	jp nz,0282ch
	ld (bc),a
	xor h
	rst 20h
	add a,c
	add hl,hl
	jp po,030c4h
	cp l
	sbc a,(hl)
	rrca
	inc h
	dec b
	ld bc,053c0h
	ld e,l
l62e2h:
	dec b
	ld e,0c1h
	ld d,b
	sbc a,a
	dec d
	nop
	add a,d
	daa
	ld b,b
	adc a,b
	ld (bc),a
	dec b
	inc c
	ld a,c
	dec b
	ccf
	call nz,0189fh
	sbc a,e
	sbc a,(hl)
	ld e,090h
	sub 009h
	ret z
	scf
	or b
	call m,07970h
	ex af,af'
l6303h:
	cp d
	ret z
	ld a,d
	ld (03a05h),a
	ld l,(hl)
	rla
l630bh:
	ld a,c
	add a,c
	ld (0f303h),a
	rst 0
	halt
	ld a,c
	inc d
	sub e
	ld l,a
	inc d
	ld l,003h
	inc d
	inc (hl)
	ld (l6d3ah),a
	dec (hl)
	ld a,c
	dec a
	push af
	jr nz,$+7
	ret nz
	call sub_79eah
	ld (082cdh),a
	add hl,hl
	inc e
	pop de
	adc a,c
	dec a
	ld (03a8bh),hl
	sbc a,c
	jr z,l633ch
	inc bc
	ld c,0ffh
	ld (0a6cdh),hl
l633ch:
	dec bc
	and c
	jp 08c0bh
	inc bc
	ld a,(006a0h)
	and b
	inc bc
	inc hl
	ld a,e
	jp nz,0cab7h
	ld b,c
	or h
	dec d
	ld a,b
	jp nz,03291h
	inc bc
	jr l6390h
	ld a,a
	dec c
	jp nz,00d99h
	ld a,h
	dec c
	inc bc
	inc l
	ld hl,015fch
	ld de,0000fh
	cp 010h
l6367h:
	ld a,(hl)
	inc hl
	inc d
	out (079h),a
	ld a,(hl)
	ld bc,07791h
	add hl,de
	djnz l6367h
	ld hl,01310h
	inc hl
	inc b
	inc de
	ld a,(bc)
	ld a,(hl)
	xor c
	ld b,c
	jp c,l79e6h
	ld (de),a
	xor d
	push af
	ld b,e
	sbc a,c
	dec l
	ld h,a
	ld l,e
	ld l,(hl)
	ld h,a
	inc a
	ld h,a
	ld e,h
	ld bc,0dc67h
l6390h:
	dec bc
	ld h,a
	ld e,e
	ld b,067h
	ld sp,hl
	xor b
	inc bc
	ld a,(de)
	jp z,l7a2bh
	cp 08bh
	inc (hl)
	inc b
	cp 045h
	dec a
	inc b
	ld sp,hl
	and d
	ld b,(hl)
	inc b
	ret nc
	and d
	ld c,a
	ld a,d
	adc a,086h
	inc sp
	and e
	add hl,sp
	ex af,af'
	ret
	add a,b
	add a,b
	ex af,af'
	adc a,0e9h
	adc a,(hl)
	jp z,l7208h
	ret
	jr c,l63d4h
sub_63bfh:
	ld a,e
	ex af,af'
	pop bc
	rst 18h
	ld l,d
	ex af,af'
	ld bc,02501h
	sbc a,c
	ld hl,0c147h
	xor h
	and b
	ld (hl),b
	inc hl
	ld (hl),c
	cpl
	inc hl
	ld (hl),d
l63d4h:
	ret p
	ld (de),a
	ex af,af'
	ld h,e
	jp 0f9ddh
	add a,l
	ld b,011h
	or l
	ld a,e
	rst 10h
	jp pe,0c105h
	call p,0ee01h
	di
	daa
	ex (sp),hl
	pop bc
	daa
	inc e
	call nz,0c027h
	ld b,03eh
sub_63f2h:
	inc c
	ld (08c8fh),a
	ld a,(de)
	ld de,l4303h
	inc l
	inc b
	cp l
	ld sp,hl
	dec b
	or l
l6400h:
	add a,b
	ld hl,sub_7e40h
	ld sp,hl
	pop af
	rlca
	nop
	ld a,a
	call 00145h
	ld hl,081b5h
	nop
	ld bc,0c098h
	otir
	ei
	call 0ca00h
	ld c,c
	push af
	cp h
	ld c,c
	sbc a,d
	inc b
	ld c,c
	push bc
	push hl
	ld c,c
	push bc
	ld (hl),c
	rst 20h
	ld b,c
	sbc a,h
	add hl,sp
	add hl,sp
	add a,b
	add hl,sp
	cp b
	ld d,048h
	add hl,sp
	ld b,e
	ld b,(hl)
	ld c,004h
	ld a,0ebh
	ld (08e1bh),a
	ld c,d
	jp 04af3h
	res 4,l
	ld c,d
	inc e
	add a,04ah
	defb 0ddh,006h,087h ;illegal sequence
	dec (hl)
	add a,d
	ld c,d
	ld (bc),a
	ld c,d
	and (hl)
	add a,b
	ld a,l
	dec sp
	sbc a,l
	dec (hl)
	ld a,(hl)
	ld c,d
	ld a,h
	ld e,c
	add a,h
l6456h:
	inc bc
	ld b,a
	ld c,000h
	ret z
	ld c,054h
	ld b,h
	sbc a,e
	jp p,l6b54h
l6462h:
	ld b,054h
	rst 0
	ld d,h
	sbc a,d
	ld b,0e4h
	inc a
	and e
	sbc a,a
	pop af
	ld l,0d2h
	ld b,00fh
	ld e,019h
	ld h,07fh
	nop
	ld (000ffh),hl
	cp 0e0h
	out (0b2h),a
	jp c,0f894h
	call m,00080h
	cp 0feh
	xor h
	inc e
	ret m
	nop
	jp z,0f5ech
	and d
	ld b,019h
	dec e
l6490h:
	nop
	ld a,(hl)
	ld l,h
	ld (hl),e
	call nz,02188h
	rra
	nop
	or b
	or l
	ret po
	ret p
	ld d,0f0h
	ret m
	ret nc
	cp l
	ld l,080h
	adc a,012h
	ld d,d
	jp pe,01c16h
	rlca
	ld b,b
	ld c,01ch
	inc de
	ccf
	ccf
	ccf
	ld d,l
	ld (hl),b
	call nc,0408bh
	ld (bc),a
	ccf
l64b9h:
	adc a,b
	ld b,b
	ld c,h
	jr l6456h
	ccf
	ld (bc),a
	cp b
	add a,h
	inc bc
	inc l
	rra
	ld a,003h
	inc (hl)
	ld a,c
	ld h,d
l64cah:
	call nz,08f11h
	ld e,030h
	or h
	ld b,070h
	ret p
	or b
	ld h,b
	ret nz
l64d6h:
	ccf
	nop
	or d
	or 026h
	daa
	ld e,b
	jr nc,l6462h
	ld bc,03862h
	ld a,c
l64e3h:
	jr l6516h
	ld l,d
	ld a,b
	ldir
	add a,b
	ld b,c
	ld b,c
	nop
	ret m
	ld (hl),b
	ret nz
	ld (bc),a
	inc c
	jr c,l6530h
	jr nc,l64fch
	jr $+46
	inc a
	ld a,(bc)
	add a,(hl)
	or c
l64fch:
	jr nz,l64d6h
	and a
	rst 8
	nop
	ld a,h
	dec e
	rlca
l6504h:
	ld h,06fh
	adc a,085h
	jp l4300h
	ld b,c
	inc bc
	ld b,d
	ld b,d
	ld h,08eh
	ld a,000h
	call m,0c0f0h
l6516h:
	ret z
	call pe,0c2e6h
	add a,(hl)
	nop
	add a,h
	inc b
	add a,b
	add a,h
	add a,h
	rla
	inc l
	djnz l6525h
l6525h:
	ld b,c
	ld sp,0391ch
	jr z,l653ch
	add hl,hl
	ld a,b
	ld d,d
	or d
	ld d,e
l6530h:
	ld (0eff0h),hl
	pop bc
	add a,h
	jr $+114
	push de
	ret nz
	jr nc,l65a3h
	inc a
l653ch:
	nop
	sbc a,d
	ld c,004h
	add a,d
	ld (bc),a
	ld l,b
	ld d,e
	ld l,a
	inc a
	ld a,00eh
	ret z
	ex af,af'
	ld d,a
	ld l,(hl)
	add a,0c3h
	ld a,003h
	ld b,b
	nop
l6552h:
	ld b,d
	ld c,h
	inc e
	inc a
	ld a,b
	ret po
	add a,b
	ret nc
	nop
	call p,086cch
	add a,d
	inc b
	add a,h
l6561h:
	add a,b
	ld (bc),a
	sbc a,e
	add a,b
	sub h
	ld d,e
	adc a,a
	inc de
	nop
	pop bc
	ex af,af'
	ret nz
	add hl,de
	add a,d
	adc a,(hl)
	ld l,b
	ld (l4200h),hl
l6574h:
	ld (bc),a
	adc a,e
	add a,a
	sbc a,e
	ld c,h
	call m,080b1h
	add a,l
	adc a,b
	nop
l657fh:
	ld (hl),044h
	jp 0d420h
	or e
	ld l,e
	nop
	call nc,sub_405eh
	inc e
	ld c,03dh
	nop
	ld b,b
	ld d,e
	add a,d
	nop
	ld b,d
	ld a,059h
	djnz l6597h
l6597h:
	inc hl
	xor c
	add a,c
	nop
	add a,d
	ld a,0bbh
	rrca
	jr nz,l6561h
	ld h,b
	ld c,h
l65a3h:
	dec a
	ld (bc),a
sub_65a5h:
	ld a,(00412h)
	dec e
	add hl,bc
	inc bc
	ld h,l
	add a,0fbh
	pop hl
	rra
	ld (hl),b
	ld c,b
	ret nz
	ld l,(hl)
	and b
	ret nz
	ld (0c001h),hl
	sub b
	inc h
	inc (hl)
	ld a,(hl)
	cp h
	ld h,01fh
	ld a,(bc)
	ret nc
	jp p,0cc54h
	sub e
	ld e,e
	inc b
	dec de
	adc a,a
	sbc a,c
	sub l
	ret c
	ld c,012h
	inc bc
	xor 082h
	dec d
	ld b,h
	ld a,d
	adc a,l
	nop
	cp h
	ld e,h
	ld c,b
	jr nz,$-70
	ex af,af'
	sub b
	ret nz
	ld b,b
	ld b,b
	add a,a
	ret p
	push bc
	ld (hl),a
	jr nz,l6602h
	xor a
	xor c
	ld (00982h),hl
	inc l
	ld a,(hl)
	sbc a,c
	ld h,e
	ret m
	ld d,b
	sub e
	adc a,(hl)
	ld c,d
	sbc a,e
	ld b,h
	adc a,e
	or c
	dec e
	ld (de),a
	ld c,07eh
	call po,08040h
	ld (hl),l
	cp b
l6602h:
	jr nz,$+74
	ld e,h
	cp h
sub_6606h:
	ld (0066ch),a
	dec de
	ld h,a
	ld b,h
	and e
sub_660dh:
	ld e,l
	sbc a,09dh
	sbc a,b
	ld (hl),b
	daa
	ld h,b
	ld d,b
l6615h:
	pop hl
sub_6616h:
	ex af,af'
	ld a,(hl)
	inc l
	or l
	cp b
	ld a,(hl)
	ld b,b
	ld (bc),a
	ld d,l
	dec e
	inc b
	ld (de),a
	ld a,(0263dh)
	ld c,h
	ld h,b
	inc c
	ld (0f0aah),hl
	ret nz
	inc a
	ld c,b
	ld (hl),b
	ld a,(hl)
	ld (hl),e
	rrca
	cp a
	inc b
	rra
	push bc
	ld b,h
	ld a,(hl)
l6638h:
	inc (hl)
	sub l
	ld e,c
	dec bc
	add a,a
	inc d
	inc hl
	inc b
	rst 10h
	sub 000h
	or b
	ld a,a
	ccf
	rlca
	nop
	add hl,bc
	nop
	add hl,bc
	jr $+35
	add a,a
	ld e,01dh
	ld d,c
	inc (hl)
	ccf
	push af
	and b
	ret p
	call m,0ffe6h
	ld a,(hl)
	dec h
	ret p
	ld h,b
	ret po
	sub b
	ret p
	ld a,a
	rrca
	add hl,de
	nop
	ld b,00fh
	rra
	rlca
	ld e,078h
	ld bc,03912h
	jr z,l666fh
l666fh:
	rra
	dec h
	adc a,h
	jr $-27
	ld a,(00840h)
	sub b
	ld a,(hl)
	cpl
	inc de
	sbc a,d
	add a,b
	ld c,018h
	ld c,00ch
	inc e
	add hl,de
	add hl,sp
	inc h
	ld (hl),b
	rra
	inc bc
	call p,sub_7f3eh
	inc e
	ret pe
	jr nz,l66ceh
sub_668fh:
	and b
	ld e,013h
	inc c
	ld c,005h
	rlca
	cp 027h
	ld bc,0850fh
	ld c,038h
	ccf
	sub c
	ret z
	add a,(hl)
	dec e
	and d
	djnz l6638h
	cp b
	ld a,(hl)
	ld a,(hl)
	adc a,(hl)
	ld a,(hl)
	ld de,0f908h
	djnz l66c7h
	rra
	ld c,01ch
	ld a,(de)
	inc hl
	jr z,l6716h
	cp 014h
	ret po
	jp l7c22h
	ccf
	ret m
	and b
l66bfh:
	ret nz
	jr c,l66eah
	ld (hl),b
	ld a,(hl)
	ld a,(hl)
	ld a,00fh
l66c7h:
	rla
	sbc a,a
	ld b,c
	inc c
	sbc a,h
	ld (de),a
	inc d
l66ceh:
	jr nc,$-96
	or l
	cp (hl)
	ld h,098h
	jp nz,0e223h
	nop
	rst 18h
	set 6,c
	adc a,d
	ld bc,09cb4h
	ld sp,hl
	sub e
	ld a,(0de7dh)
	or 092h
	inc bc
	ret z
	ld (hl),l
	ei
l66eah:
	exx
	adc a,097h
sub_66edh:
	ld bc,035f3h
	ld sp,hl
	call m,0092dh
	and l
	inc a
	jr nz,$+126
	or b
	and h
	sbc a,d
	cp h
	ld (bc),a
	ld e,a
	jr z,l66bfh
	ld e,006h
	inc c
	ex af,af'
	inc a
	ld c,a
	ld b,b
	sbc a,e
	ld e,a
	ld h,c
	ld h,003h
	or e
	push de
	ccf
	adc a,l
	inc hl
	inc b
	ld a,l
	cp d
	exx
	ld e,c
l6716h:
	push hl
	ld a,09eh
	ret pe
	ld e,00ch
	nop
	add hl,de
	rra
	inc e
	djnz $+19
	ld h,b
	defb 0ddh,00bh,0ceh ;illegal sequence
	ld e,c
	jr z,$-74
	rst 38h
	call nz,0c1c8h
	ld a,01fh
	rrca
	rlca
	add a,e
	djnz $+81
	nop
	rrca
	ld b,l
	ld (hl),b
	ret pe
	sbc a,e
	inc e
	ld b,h
l673ch:
	jp po,0b8f8h
	jp po,006cch
	nop
	ret nz
	cp 0f0h
	call po,09f00h
	ld b,a
	ld (hl),e
	inc h
	ld a,c
	inc a
	and c
	or c
	cp e
	jr nc,$-115
	ld (0870fh),hl
	ld l,h
	dec (hl)
	sub c
	sbc a,a
	ld a,b
	jp c,08e70h
	add a,(hl)
	ld (00c00h),a
	ld a,0c0h
	adc a,09ch
	nop
	jr nc,$-6
sub_6769h:
	in a,(03eh)
l676bh:
	add a,d
	ld c,l
	ccf
	jp nz,09ecch
	jr c,$-48
	ld (l403fh),hl
	ret nz
	adc a,b
	nop
	adc a,047h
	ld (hl),c
	inc hl
	jr c,l678dh
	add a,h
	dec de
	ld bc,l5f3fh
	cp b
	ret po
	ld hl,033e0h
	ld a,h
	adc a,h
	add a,03fh
l678dh:
	and e
	cp (hl)
	ld a,h
	rrca
	nop
	ld (hl),b
	jp nz,l40c8h
	sbc a,e
l6797h:
	jp pe,l76d6h
	add a,b
	ld c,d
	xor b
	inc a
	cp b
	inc d
	jr l67aeh
	ld d,0d9h
	inc d
	ld e,01ch
	nop
	cp a
	jp nc,09dbdh
	rra
	add hl,bc
l67aeh:
	call m,sub_7078h
	add hl,de
	ld h,b
	add a,d
l67b4h:
	jr nc,$+50
	sub b
	ret c
	dec l
	ld h,b
	jr nc,l673ch
	dec de
	rra
	nop
	pop bc
	sub l
	sbc a,a
	ld de,l57a0h
	ret nz
	inc de
	jp c,l4065h
	ret po
	and (hl)
	ccf
	inc bc
	jr c,l67e8h
	adc a,h
	adc a,h
	ld b,h
	rst 30h
	inc b
	inc a
	nop
	inc e
	rla
	ld bc,00e10h
	ld h,d
l67ddh:
	ld b,c
	dec d
	inc c
	ld b,b
	jp c,08244h
	ld h,e
	djnz l676bh
	ld c,e
l67e8h:
	ld b,l
	xor b
	add hl,bc
l67ebh:
	ld sp,hl
	add a,h
	inc bc
	dec a
	ld a,h
	ld e,a
	ld (bc),a
	ld d,b
	ld (de),a
	jp nz,l4a7ch
	dec a
	xor c
	ld b,h
	cp l
	jr c,l6821h
	sub b
	ret po
	sla h
l6801h:
	jr z,$+42
	cp a
	ld (de),a
	ret po
	sub b
	jr c,l67ebh
	sub c
	rst 30h
	nop
	ld b,c
	sub d
	ex af,af'
	inc h
	ld l,d
	ld l,d
sub_6812h:
	inc h
	dec b
	ex af,af'
l6815h:
	sub d
	ld b,c
	jr nc,l681ch
	sub b
	inc hl
	add a,(hl)
l681ch:
	rst 8
	ret p
	adc a,h
	cp h
	ccf
l6821h:
	cp l
	adc a,h
	sbc a,009h
	add a,(hl)
	ld (hl),b
	sbc a,l
	ret nc
	dec c
	ld a,044h
	ld (bc),a
	sub b
	rst 38h
	add a,h
	ld a,(hl)
	ld e,c
	inc a
	adc a,b
	ex de,hl
	ld e,h
	ld (bc),a
	add a,b
	ret pe
	djnz $+14
	jr z,l6801h
	ld c,d
	push hl
	inc de
	sub b
	sub c
	ret nz
	ld bc,04831h
sub_6846h:
	ld b,084h
l6848h:
	xor d
	ld l,d
	nop
	ld a,b
	add a,a
l684dh:
	ex af,af'
	dec a
	add a,c
	ex (sp),hl
	ld (hl),002h
	djnz l67ddh
	cp l
	cp l
	ld a,(de)
	inc de
	xor (hl)
	ld d,b
	or b
l685ch:
	defb 0ddh,0c0h,001h ;illegal sequence
	inc a
	ld a,(hl)
	ld h,b
	dec b
	rlca
	ld b,h
	ld a,00dh
	ret c
	ccf
	inc sp
	sub b
	ret z
	nop
	ret p
	inc b
	sub h
	sub h
	add a,h
	djnz l685ch
	add a,b
	add a,0f2h
	ld b,(hl)
	dec a
	ld b,d
	add a,d
	add a,080h
	ld l,d
	xor d
	add a,h
	ld c,b
	ld sp,03fe0h
	or b
	ld d,b
	ld c,c
	xor (hl)
	inc h
	cp l
	ld a,a
	djnz l6815h
	dec de
	nop
	ld de,00c19h
	rst 30h
l6893h:
	and b
	ld (bc),a
	dec sp
	ld (hl),a
	inc e
	cpl
l6899h:
	inc de
	daa
	ld sp,09e0ch
	add a,b
	and b
	ld l,b
	inc (hl)
l68a2h:
	and h
	djnz l684dh
	rst 0
	or b
	ld a,h
	cp d
	push hl
	ld b,a
	sbc a,b
	jp pe,00a15h
	ret nz
	ld e,001h
	ld e,020h
	ld (hl),h
	inc c
	inc e
	ld c,037h
	add hl,hl
	ret pe
	inc l
	rla
	call c,0b200h
	sub b
	xor b
	ld (hl),b
	ret m
	ld c,h
	adc a,e
	or e
	rst 8
l68c8h:
	ld l,d
	adc a,b
	dec c
	ret pe
	ld (hl),b
	and l
	ld sp,00074h
	ccf
	and l
	scf
	ld de,044a6h
	ld e,00fh
	sub c
	sub d
	di
	inc e
	jr nc,l691fh
	ccf
	ret z
	add a,h
	sub b
	ld c,l
	ld c,h
	jp m,01396h
	rlca
	ccf
	add a,d
	daa
	add hl,de
	and a
	xor b
	ld l,(hl)
	ld b,00eh
	ld (hl),01dh
	ex af,af'
	cp (hl)
	jp (hl)
	ccf
	jr nz,l6899h
	ld hl,01605h
	add a,(hl)
	add a,d
	ex af,af'
	jr c,l6893h
	add a,l
l6903h:
	ccf
	add a,a
	ld (0d620h),a
	add a,d
	sbc a,b
	jr nc,$-102
	call nc,0dc40h
	dec b
	xor 038h
	call p,08ce4h
	xor a
sub_6916h:
	and e
	dec c
	sbc a,h
	jr nz,l6968h
	dec h
	dec d
	ld c,030h
l691fh:
	rra
	ld (029d5h),a
	inc hl
	ld de,009fah
	xor b
	ld d,b
	ret po
	ret nc
	ld a,b
	inc b
	ld l,038h
	add hl,de
	ld (hl),b
	call pe,0a894h
	inc d
	ld a,b
	ret p
	pop bc
	inc h
	ld a,b
	xor a
	ld (hl),e
	ld (bc),a
	ccf
	ret m
	jr nz,l6958h
	ld c,070h
	ld d,(hl)
	jr nz,l68c8h
	ret pe
	ccf
	call pe,06088h
	ret nz
	ld c,(hl)
	ld h,b
	ld (hl),b
	cp b
	jr c,$+60
	dec c
	ld b,03fh
	rla
	inc b
	add hl,bc
l6958h:
	ld (044b8h),a
	sbc a,h
	ret po
	ret po
	ccf
	call po,sub_5a98h
	sub b
	add a,e
	call p,00f81h
	push bc
l6968h:
	call c,0000bh
	ld (hl),c
l696ch:
	dec h
	ld a,h
	nop
	ex (sp),hl
	ld hl,0fc3ch
	rst 38h
	sbc a,d
	sub c
	ret po
	adc a,b
	add a,d
	pop bc
	adc a,(hl)
	jp l6dfdh
	and e
	inc bc
	sub b
	nop
	ld bc,08effh
	jp c,06a2fh
	ld e,l
	ld a,h
	call po,0f291h
	ret nz
	djnz l6995h
	rra
	ld (hl),a
	rst 0
	rst 10h
	ld (hl),c
l6995h:
	rst 38h
	cp b
	ld h,l
	ld b,b
	ld b,c
	ld b,b
	ld b,058h
	ret m
	ld a,(hl)
	rra
	xor b
	ex (sp),hl
	jr c,l69e4h
	inc de
	rst 38h
	cp l
	rlca
	inc e
	inc hl
	adc a,000h
	ld b,b
	adc a,e
	jr nz,l69f0h
	nop
	and a
	rst 38h
	ld d,l
	rra
	inc b
	inc c
	dec b
	inc c
	ld b,l
	jp 083e0h
	ex de,hl
	ld b,b
	scf
	ex (sp),hl
	call c,0c331h
	ld e,(hl)
	add a,b
	cp e
	ld l,l
	dec sp
	ld (bc),a
	ret m
	ld d,e
	push hl
	add a,d
	ret nc
	ld e,a
	ld a,(bc)
	dec d
	ret nz
	ret m
	ret po
	add a,c
	adc a,d
	ret po
	cp 08ch
	ret nz
	rst 38h
	rst 20h
	jr nz,l69dfh
l69dfh:
	jr c,l69e3h
	rra
	ld a,a
l69e3h:
	ld c,e
l69e4h:
	call m,0e40bh
	ret nc
	dec bc
	rst 38h
	ld a,(de)
	jp z,08301h
	jr nz,$+22
l69f0h:
	inc a
	ret m
	and c
	inc d
	ret
	ld d,e
	and (hl)
	sub h
	ld sp,hl
	ld d,(hl)
	and e
	ld c,e
	rlca
	scf
	jp z,0ee30h
	ld b,h
	ret z
	ld e,08fh
	ret m
l6a06h:
	sub a
	pop bc
	ld a,a
	ld e,h
	cpl
	dec d
	ret
	inc h
	ret p
	ld c,b
	jr nz,l6a67h
	ld a,(hl)
	ret m
	sub h
	add a,e
	adc a,d
	and 08dh
	call z,092b5h
	rrca
	ld e,l
	ccf
	ld e,(hl)
	cp b
	sbc a,d
	ccf
	adc a,a
	call nz,sub_5597h
	ld a,(bc)
	ld e,b
	ld e,a
	sbc a,0a4h
	ld a,b
	ret p
	jp z,0ce06h
	ld h,d
	add a,b
	ld (050b9h),a
	inc bc
	rst 38h
	ld l,e
	ret po
	ld a,a
	rla
	xor a
	add hl,hl
	or l
	xor c
l6a40h:
	ld hl,0fc20h
	rst 30h
	ld h,e
	sbc a,b
	adc a,a
	call po,01ffbh
	add a,a
	ld l,h
	ccf
	ld a,a
	rrca
	rst 38h
	jr nc,$+33
	add a,b
	ld a,a
	ex af,af'
	adc a,a
	ld sp,08cfeh
	sbc a,b
	add a,b
	ld h,b
	adc a,0b8h
	ld h,a
	di
	ret z
	sub d
	dec a
	ld bc,056a4h
	ld l,h
l6a67h:
	cp e
	ld b,h
	push bc
	sbc a,(hl)
	ld h,c
	xor b
	ret po
	or b
	ld b,c
	ld c,0e4h
	ld e,e
	inc a
	xor c
	sub e
	ld e,0e1h
l6a78h:
	nop
	ld d,b
	inc e
	ld c,(hl)
	jp m,00698h
	ld h,e
	inc bc
	ld (bc),a
	inc c
	add a,b
	ld h,d
	djnz l6abbh
	defb 0edh ;next byte illegal after ed
	ld l,l
	out (067h),a
	nop
	call z,00b0eh
	jr nc,l6a9ah
	inc c
	ld (bc),a
	inc bc
	ld de,0b6a0h
	ex af,af'
	ld c,b
	push de
l6a9ah:
	defb 0ddh,094h ;sub ixh
	sbc a,l
	adc a,002h
	sbc a,d
	pop af
	ld d,d
	ld a,(bc)
	defb 0ddh,055h ;ld d,ixl
	and c
	pop hl
	jr z,l6aafh
	sub d
	exx
	ld b,e
	call 0bd94h
l6aafh:
	cp a
	adc a,003h
	ccf
	add a,h
	dec b
	dec b
	rlca
	add a,b
	push hl
	ex af,af'
	inc h
l6abbh:
	ld a,(hl)
	add a,(hl)
	jr c,l6abfh
l6abfh:
	inc e
	and e
	add a,b
	inc bc
	ld a,(0003fh)
	ld a,(0c145h)
	or a
	ret nz
	ld a,(08500h)
l6aceh:
	jr z,l6b0dh
	ld (00703h),a
	ld bc,0c085h
	ld b,021h
	ld (bc),a
	add a,l
	ld de,03224h
	add a,l
	rst 0
	nop
l6ae0h:
	call 084d5h
	inc hl
	inc de
	djnz l6ae0h
	ld hl,03248h
	ld c,062h
	ld c,010h
	ld a,(hl)
	ld h,b
	add a,a
	nop
	inc hl
	inc hl
	ld c,(hl)
	djnz l6a78h
	dec hl
	ld c,(hl)
	dec b
	ld (de),a
	inc de
	ld a,c
	add a,h
	ld (bc),a
	djnz $-18
	ld hl,0cd18h
	dec b
	jp (hl)
	ld (bc),a
	ld a,(0c398h)
	ld a,003h
	inc c
l6b0dh:
	ret nz
	ld a,00ah
	dec b
	ld de,0013eh
	ld (00652h),a
	ld d,b
	dec (hl)
	add a,b
	xor a
l6b1bh:
	inc hl
	djnz l6b1bh
	ret
	inc bc
	ld a,(de)
	cp (hl)
	ret z
	inc a
	ld (de),a
	ret
	ld h,b
	jp c,00f1bh
sub_6b2ah:
	ld a,(hl)
	dec a
	cp 0ffh
	sub e
	ex af,af'
	xor a
	ld (hl),a
	ld (0cdf5h),hl
	jr c,l6aceh
	add a,h
	jr c,l6b80h
	ret
	and l
	ret
	adc a,e
	jp pe,001b2h
	adc a,0d2h
	ld a,(bc)
l6b44h:
	jp z,00bb0h
	adc a,c
	or b
	dec b
	sbc a,h
	add hl,hl
sub_6b4ch:
	ld bc,0db45h
	add a,l
	call m,0e7e6h
	ld h,(hl)
l6b54h:
	and a
	ld d,l
	ld (de),a
	ld d,007h
	ret nc
	inc de
	nop
	nop
	ld sp,hl
	ld (bc),a
	ld a,(08cb0h)
	ld b,b
	ret z
	call 0056ch
	jp nz,03c07h
	ld (00103h),a
	cp 002h
	jp z,085adh
	cp 004h
	or l
	ld (de),a
	or c
	ld d,004h
	ld hl,085b7h
	jp z,0b9a6h
	ld b,b
l6b80h:
	rst 30h
	add a,l
	ld bc,0209ah
	inc c
	xor a
	jp 002deh
	ld b,022h
	ld hl,0e2d7h
	in a,(009h)
	add a,b
	add a,b
	ld (bc),a
	ld h,b
	dec b
	ld (hl),h
	rlca
	ld (00200h),hl
	ld h,l
	ld b,054h
	dec b
	ld b,e
	inc b
	ld de,0afc4h
	nop
	rla
	ld bc,00777h
	inc sp
	inc bc
	ld b,l
	inc b
	and e
	push af
	pop hl
	inc l
	rra
	nop
	inc bc
	ld h,b
	ld b,075h
	rlca
	ld h,d
	ld (bc),a
	ld (hl),l
	inc bc
	ld b,064h
	dec b
	ld d,e
	inc b
	ld d,c
	rra
	and a
	ld (hl),d
l6bc5h:
	rra
	ld b,073h
	inc bc
	rra
	ld (bc),a
	ld bc,00360h
	ld (hl),e
	dec b
	ccf
	and e
	rra
	dec b
	ld d,b
	ld (bc),a
	ccf
	call c,02100h
	inc bc
	ld b,(hl)
	add a,(hl)
	ld de,sub_5b2dh
	ld bc,0209bh
l6be3h:
	ldir
	ld a,0feh
	inc bc
	ld (l5d06h),a
	ret
	ld hl,01052h
	jp nz,0f20bh
	inc e
	ld l,b
	ret
	inc e
	xor a
	ld (00060h),a
	pop bc
	ld a,006h
	ld (0c238h),a
	ld (0183ch),a
	jp nz,0023eh
	inc c
	jp 03933h
	ld e,e
	sub a
	dec b
	add hl,de
	ld e,(hl)
	ld d,0e1h
	add a,d
	ld hl,0866ch
	rlca
	nop
	inc hl
	ld d,(hl)
	pop hl
	push de
	ret
	inc l
	add a,a
	ld d,h
	nop
	add a,a
	cp d
	add a,a
	dec bc
	adc a,b
	add a,e
	adc a,b
	or 000h
	adc a,b
	ld c,08ah
	ld c,b
	adc a,d
	ld (hl),l
	adc a,d
	or h
	nop
	adc a,e
	or e
	adc a,h
	exx
	adc a,h
	rrca
	adc a,l
	ld b,a
	nop
	adc a,l
	ld e,a
	adc a,l
	ld sp,hl
	adc a,l
	ld b,08eh
	ld e,d
	nop
	adc a,(hl)
	ld hl,(0768fh)
	adc a,a
	xor a
	adc a,a
	ld d,000h
	sub b
	adc a,(hl)
	sub b
	jr nz,l6be3h
	ld h,b
	sub c
	pop de
	nop
	sub c
	ret c
	sub c
	rst 18h
	sub c
	and 091h
	rlca
	nop
	sub d
	ld c,d
	sub d
	jp po,01292h
	sub e
	xor d
	nop
	sub e
	dec d
	sub h
	push hl
	sub h
	ld sp,06a95h
	nop
	sub l
	dec d
	sub (hl)
	in a,(096h)
	and 096h
	jp (hl)
	ld bc,00296h
	sub a
	dec de
	sub a
	ld de,l6903h
	ld c,h
	in a,(0c2h)
	ld bc,086d9h
	ld a,(0c148h)
	and 003h
	ld a,a
l6c8eh:
	add hl,bc
	jp z,086d8h
	call po,0ed85h
	ld d,d
	ret
	sub l
	ld (09a9dh),hl
	sub l
	sbc a,(hl)
	and 030h
	ld c,0ffh
	jp 0f30dh
	add a,(hl)
	ld c,07fh
	inc b
sub_6ca8h:
	nop
	ccf
	push hl
	ld a,(hl)
	add a,002h
	and c
	ld (hl),a
	ld h,00ah
	nop
	ld l,a
	add hl,de
	ld b,(hl)
	ret c
	ex af,af'
	pop hl
	dec hl
	nop
	ld a,(hl)
	add a,c
	ld b,b
	ld (hl),a
	inc bc
	add a,b
	ld (hl),a
	ret
	nop
	cp 0d7h
	ld bc,001ffh
	add a,e
	cp 003h
	ld l,e
	ld (bc),a
	ld (de),a
	dec b
	ld (hl),b
	rlca
	xor a
	ld de,0f2dah
	ld d,(hl)
	jr nz,l6d13h
	jp p,00164h
	jp z,08743h
	ld h,03ah
l6ce1h:
	di
	xor e
	inc h
	ld bc,007c2h
	dec (hl)
	dec sp
	and 081h
	rlca
	ld c,a
	add a,a
	ld a,(hl)
	sub 00fh
l6cf1h:
	ld b,d
	ld e,c
	ld e,d
	inc b
	daa
	and 06dh
	jp pe,00727h
	xor d
	daa
	sub c
	ld c,h
	push af
	out (0cah),a
	ld h,b
	cp b
	add hl,hl
	ld h,077h
	ld a,(06f00h)
	ld l,a
	or a
	jp nz,08784h
	ld b,00dh
	ld h,0c3h
l6d13h:
	sbc a,h
	ld hl,00b70h
	ld h,090h
	dec bc
	defb 0edh ;next byte illegal after ed
	dec bc
	add a,h
	nop
	jp nz,06efeh
	dec d
	jp c,009a8h
	ld c,058h
	push af
	add a,b
	xor b
	xor h
	ld a,(l40b3h)
	ld h,h
	inc (hl)
	or b
	add a,a
	ld a,r
	and 00ah
	ccf
	call z,09785h
l6d3ah:
	ld h,b
	dec sp
	ld hl,(0f12bh)
	ld h,e
	ld c,h
	ld h,l
	ld h,d
	ld b,065h
	ld a,(hl)
	sub (hl)
	call z,00065h
	ret pe
	add a,a
	ld (hl),063h
	inc hl
	ld (hl),024h
	dec hl
	ret nz
	nop
	ld (hl),015h
	inc hl
	add hl,de
	jr l6d90h
	ld b,0afh
	ld a,a
	ld l,(hl)
	add a,b
	ld d,l
	ld a,0b4h
	jp z,087e5h
	ld a,042h
l6d67h:
	ret z
	ld l,0c9h
	ld (hl),083h
	rra
	ld (hl),a
	ld h,01fh
	inc b
	ld h,0feh
	dec c
	ex af,af'
	inc hl
	or b
	ld l,l
	inc hl
	ld b,d
	jp z,0090ch
	adc a,b
	ld a,028h
	ld d,d
	nop
	ld e,(hl)
	ld a,(06d7bh)
	and 007h
	jp nz,01416h
	adc a,b
	inc (hl)
	ld b,(hl)
	ld a,d
	ld (hl),e
l6d90h:
	inc l
	ld c,b
	adc a,b
	call nc,01377h
	jp nz,08827h
	ld hl,(038fdh)
	ld l,e
	ld (hl),c
	add a,e
	sbc a,d
	dec hl
	ld hl,02003h
	jp nz,01942h
	add a,008h
	cp 083h
	inc h
	jp nz,03741h
	ld h,e
	adc a,l
	ld c,c
sub_6db2h:
	ld a,c
	sbc a,e
	nop
	jp nz,0884dh
	dec (hl)
	jp 0805bh
	dec d
	inc a
	ld (hl),a
	cp 050h
	jp c,0a45bh
	ld sp,0ff32h
	rst 10h
	xor h
	cp l
	ld h,d
	ld a,e
	cp e
	ld b,c
	jp nz,08868h
	dec sp
l6dd2h:
	ld bc,l5fcdh
	ld bc,0d0ebh
	ld de,l64e3h
	sbc a,e
	ld b,h
	ld h,h
	inc hl
	jp z,00160h
	sub 003h
	and e
	jr c,l6d67h
	rla
	dec (hl)
	nop
	ld (hl),a
	add a,e
	adc a,(hl)
	ld (hl),a
	inc bc
	ld a,b
	neg
	ld b,a
	ld a,e
	ld e,h
	xor b
	ld a,e
	ld a,0a3h
	ld a,e
	daa
	cp (hl)
	ld a,e
l6dfdh:
	ld (bc),a
	and e
	jp nz,07bbdh
l6e02h:
	ld (hl),d
l6e03h:
	add a,e
	ld a,e
	ret
	rst 0
	ld a,e
	rst 10h
	ld a,e
	ld c,a
	rst 10h
	ld a,e
	ld (hl),a
	call po,0ae7bh
	ld (hl),d
	add hl,hl
	inc (hl)
	nop
	and c
	jp pe,09287h
	ld b,c
	dec d
	cp 04eh
	ret c
	xor c
	and (hl)
	ld (hl),00ch
	ld a,(de)
	ld d,c
	add a,c
	rst 10h
	sub (hl)
	or b
	ld e,c
	inc bc
	adc a,b
	add a,(hl)
	sub a
	dec h
	inc bc
	rlca
	rst 0
	dec b
l6e32h:
	ld a,h
	inc bc
	ld (hl),l
	ex af,af'
	inc e
	ld a,b
	dec b
	ld (hl),c
	ld hl,(0d730h)
	ld bc,0c137h
	ld (hl),c
	dec b
	dec d
	adc a,(hl)
l6e44h:
	cp 00dh
	dec sp
	dec b
	sub a
	inc bc
	defb 0fdh,005h,001h ;illegal sequence
	dec b
	defb 0fdh,000h,009h ;illegal sequence
	dec bc
	adc a,l
	nop
	inc bc
	ex (sp),hl
	dec c
	dec b
	xor h
	rlca
	and h
	call pe,005d6h
	defb 0fdh,005h,054h ;illegal sequence
	inc bc
	jp m,0fec3h
	dec c
	adc a,h
	ld b,0deh
	inc bc
	ex af,af'
	or e
	ld (0be05h),hl
	ld hl,(0303ah)
	rst 20h
	ld bc,l7758h
	ld h,b
	ld d,h
	sbc a,(hl)
	ld l,(hl)
	cp b
	ld a,h
	adc a,(hl)
	add a,(hl)
	and e
	sub b
	adc a,b
l6e81h:
	and (hl)
	ex (sp),hl
	inc bc
	adc a,b
	or h
	call c,08d1fh
	ei
	sub b
	or a
	ld de,0090eh
	adc a,c
	call 086e7h
	and c
	ret nz
	rra
	ret nz
	push hl
	ld c,(hl)
	dec d
	ld e,020h
	inc hl
	xor e
	inc bc
	inc d
	ld (097c9h),a
	ld b,a
	jp 0c242h
	cp b
	ret
	ret nz
	jp c,08a32h
	ld a,00ah
	rst 38h
	ld (097cch),a
	and h
	add a,0b9h
	dec c
	scf
	ld b,b
	dec c
	ret
	ld b,b
	call sub_5d5bh
	pop hl
	sbc a,c
	sbc a,a
	ld b,(hl)
	and c
	add hl,sp
	and d
	ld sp,l6615h
	adc a,e
	ld l,b
	ld e,d
	rlca
	adc a,d
	ld a,(hl)
	xor 008h
	ld (hl),a
	dec bc
	ld (bc),a
	jp z,08a72h
	adc a,d
	ld h,l
	sub c
	sbc a,0a2h
	sub b
l6eddh:
	sbc a,l
	ld l,(hl)
	call m,09aa6h
	ld c,(hl)
	ld bc,056c9h
	cp d
	jp z,0d8feh
	sub b
	call 00a10h
	adc a,e
	ld a,c
	ld a,(hl)
	jp nc,08a8dh
	dec d
	ld (hl),000h
	inc hl
	ld (bc),a
l6ef9h:
	rla
	sub d
	cp b
	ld (08b60h),hl
	sla e
	djnz $-115
	ld (00224h),a
	ld l,08bh
	ld a,009h
	inc b
	ld (08b25h),a
	sbc a,h
	pop hl
	ld (de),a
	sbc a,h
	jr c,l6ef9h
l6f14h:
	nop
	call 08af9h
	ld (08b28h),hl
	ld a,(00020h)
	adc a,e
	add a,010h
	ld (08b30h),a
	ex de,hl
	ld hl,02f0ch
	adc a,e
	ld bc,08110h
l6f2ch:
	call sub_6916h
	ld hl,(03216h)
	ld b,b
	inc d
	adc a,a
	ccf
	inc d
	rla
	inc l
l6f39h:
	dec hl
	ld c,h
	ld d,b
	ld d,073h
	ld c,a
	ld d,0edh
	ld (hl),b
	ld (08b26h),hl
	adc a,c
l6f46h:
	out (032h),a
	rla
	djnz l6f14h
	ld de,0210fh
	add a,b
	jp nz,0061ah
	rlca
l6f53h:
	ld a,(hl)
	call m,01904h
	djnz l6f53h
	pop hl
	pop bc
	ld c,(hl)
	push hl
	ld de,00ec8h
	nop
	inc de
	jp nz,0251bh
	adc a,e
	inc c
	ld d,0f7h
l6f69h:
	dec d
	xor h
	cp (hl)
	ret nz
	dec d
	nop
	call c,02f73h
l6f72h:
	add a,a
	ld b,014h
	rst 38h
	ld a,(bc)
	rrca
	add a,c
	ld l,e
	dec l
	ld b,03ch
	ld d,00fh
	sbc a,b
	ld a,e
	rra
	jr l6f72h
	rrca
	ld l,e
	call po,092f2h
	sub 0feh
	add a,0ffh
	add a,a
	ld h,d
	inc h
	sub b
	jr z,$-32
	cp d
	sub d
	adc a,h
	inc bc
	dec hl
	ret nz
	dec c
	adc a,e
	push hl
	inc b
	ld a,(de)
	ld b,0b6h
	ld bc,03203h
	ex af,af'
	pop bc
	ld (0a7a3h),a
	sub b
	inc de
	ld (08c07h),a
	rlca
	and d
	jp 028a4h
	jr l6f46h
	sub a
	dec hl
	call z,02311h
	ret
	dec sp
	inc d
	ret nc
	xor c
	add hl,hl
	cp 012h
	ld a,(de)
	sbc a,e
	or l
	ld de,0c6fbh
	ld b,06ah
	rla
	ld a,(04e95h)
	and b
	ld bc,0bfcah
	adc a,e
	jp l42aah
	or l
	inc c
	rst 18h
	ld c,c
	adc a,e
	or b
	ret nz
	rrca
	jp nz,08bd3h
	and 064h
	ld (bc),a
	or b
	ret nz
	cpl
	adc a,h
	push bc
	rst 38h
	or d
	xor (hl)
	rlca
	inc h
	push hl
	ld a,(l52c9h)
	inc a
	add hl,bc
	rst 8
	add a,b
	dec a
	ld c,083h
	ld b,031h
	ld (bc),a
	jp z,08c08h
	dec a
	jp z,00351h
	ret pe
	dec bc
	ld c,063h
	jr $+8
	dec l
	xor a
	inc (hl)
	ld a,c
	call nc,sub_48c4h
	ld hl,(0369bh)
	inc l
	ld hl,0b719h
	dec de
	ld (hl),b
	ld hl,(0082ah)
	and 066h
	ld a,(bc)
	ret
	pop af
	ex af,af'
	and a
	ld hl,(0062ch)
	inc c
	pop hl
	jp c,0d2ebh
	dec l
	xor 01ch
	ld b,l
	ld h,c
	ld c,l
	pop hl
	rlca
	inc h
	dec (hl)
l7034h:
	ret nc
	ld b,l
	ld hl,0d5d3h
	ld hl,(025c3h)
	sub d
	adc a,e
	add a,0c2h
	push bc
	ret p
	ld l,d
	adc a,h
	sub b
	jp 0e1f8h
	inc b
	ld c,0a3h
	ld b,033h
	jp 0eb69h
	ld b,c
	ld a,(0c624h)
	rlca
	ld (036a5h),a
	inc d
	or 0ffh
	rst 8
	ld b,h
	dec hl
	add a,b
	add a,0deh
	call nz,08ca4h
	cp b
	ld h,c
	rlca
	sub 008h
	dec hl
	xor b
	dec d
	dec e
	sub l
	ld (de),a
	add a,b
	add a,b
	xor c
	adc a,h
	ld hl,04fa3h
	adc a,h
	xor h
sub_7078h:
	dec a
	jr c,l70e7h
	jp pe,024b4h
	jp 0ca35h
	dec h
	inc e
	ld c,d
	out (0a8h),a
	cp 0e0h
	jp c,l46beh
	adc a,h
	cp 023h
l708eh:
	inc a
	defb 0fdh,098h,095h ;illegal sequence
	jp pe,0a241h
	ret pe
	jp p,l4678h
	ld (hl),a
	add a,a
	ld (hl),d
	dec h
	call po,025f8h
	add hl,bc
	call 01a9ch
	ld hl,0001ah
	pop de
	jp c,08d04h
	ld (hl),0beh
	dec hl
	and e
	push af
	ld hl,(03033h)
	scf
	ld a,h
	dec (hl)
	ld c,a
	ld a,(de)
	adc a,l
	dec (hl)
	and c
	ld a,(0ef35h)
	ld l,l
	call z,0b997h
	ld (de),a
	ld e,l
	adc a,l
	sub a
	call 0f107h
	cp c
	ld hl,00b68h
	jp nz,08d69h
	push de
	jp nc,0c566h
	sub a
	inc l
	add a,(hl)
	add a,a
	inc de
	ret c
	jp c,0447eh
	nop
	ld b,h
	add hl,de
	pop bc
	sbc a,c
	ret nz
	pop bc
	jp c,06a8eh
l70e7h:
	adc a,l
	sub c
	cp e
	add a,(hl)
	add a,c
	dec h
	sbc a,d
	ld (hl),d
	cp c
	sub h
	and l
l70f2h:
	ld h,b
	ret p
	ld hl,0fe23h
	push af
	ld (hl),0dah
	and l
	add hl,hl
	ld d,024h
	pop af
	pop bc
	call m,0e099h
	add a,(hl)
	inc b
	ld a,(de)
	ld (010eeh),a
	cp 004h
	jr nz,$-38
	cp 0e0h
	ret nc
	ret c
	ret nz
	pop hl
	di
	and 020h
	jp z,0c627h
	adc a,l
	push af
	nop
	pop af
	adc a,l
	ld hl,08deah
	call 08b13h
	inc b
	ld a,(0ee08h)
	dec c
	ld d,b
	ld a,(0d627h)
l712dh:
	djnz l712dh
	inc sp
	djnz $-38
	cpl
	jr $-100
	ret
	add a,d
	ret nz
	nop
	sbc a,e
	ld (bc),a
	cp (hl)
	ld d,l
	dec b
	ld bc,00090h
	sbc a,b
	call 001c4h
	add a,(hl)
	ld (hl),020h
	ld a,(097fbh)
	xor 0aeh
	push af
	inc b
	cp l
	ld a,e
	xor c
	dec de
	add a,h
	or b
	dec d
	adc a,(hl)
l7157h:
	ld a,c
	ld b,l
	add a,b
	rst 10h
	rst 10h
	xor b
	ld bc,00638h
	out (081h),a
	jr nc,l70f2h
l7164h:
	or a
	inc bc
	ld a,008h
	jr nz,l7164h
	ld hl,(0f804h)
	add a,b
	ld b,a
	ld (hl),b
	ld l,l
	dec hl
	xor l
	ret nc
	inc e
	adc a,a
	jp z,08e46h
	or h
	ld bc,0fafeh
	jp c,08e45h
	or a
	ld a,h
	ld sp,09077h
	ld e,0beh
	jp po,0da02h
	ld d,c
	adc a,(hl)
	ld c,001h
	or b
	or l
	ld (hl),c
	xor a
	ld e,e
	or b
	jp c,035c2h
	ld a,(hl)
	adc a,(hl)
	jp pe,0fea0h
	xor d
	jp nc,0097ch
	adc a,(hl)
	cp 028h
	jp c,01904h
	add a,a
	rst 10h
	cp d
	ld (hl),e
	jp 04dd9h
l71adh:
	adc a,0f3h
	call nz,04f86h
	sbc a,d
	and h
	add a,b
	ld (hl),d
	or (hl)
l71b7h:
	or c
	ld e,c
	cp h
	nop
	cp 0e3h
	ld b,0ffh
	jp z,09aafh
	jr nc,l71b7h
	inc b
	ex de,hl
	dec (hl)
	ld b,001h
	ld b,0fbh
	inc b
l71cch:
	sbc a,e
l71cdh:
	ret c
	ret
	inc hl
	dec hl
	rst 28h
	ld e,e
	adc a,l
	ex de,hl
	cp c
	di
	ld a,c
	ret nz
	and c
	inc d
	jp m,09fcah
	djnz l71cch
	ld (011d5h),a
	adc a,(hl)
	ld (002e6h),a
	ld de,0b28fh
	sbc a,b
	ld (hl),a
	sub l
	ret c
	or b
	ei
	jp c,00910h
	adc a,a
	cp 0cdh
	jp nc,0c604h
	djnz l7240h
	scf
	add a,00ch
	jr c,$+24
	and d
	jp nc,08efah
	ld hl,00c7eh
	xor d
l7208h:
	cp d
	ld (bc),a
	djnz l726fh
	dec bc
	ld (0100eh),a
	dec bc
	sub 00bh
	inc b
	ld hl,(0f22dh)
	adc a,a
	bit 1,(hl)
	jp m,0ca4eh
	ld c,a
	call c,0f88eh
	add a,0abh
	ret z
	xor e
	call p,0a98eh
	ld c,c
	ld a,08fh
l722bh:
	call nc,090c8h
	ret z
	add a,e
	and e
	sub h
	dec l
	xor h
	ld (hl),h
	ld c,h
	jp c,0bb68h
	ld c,h
	ld e,b
	ld sp,064dah
	ld e,b
	ld a,(bc)
l7240h:
	ld e,b
	or l
	djnz $+5
	jr nz,$+105
	jp z,02209h
	sbc a,e
	ld l,d
	xor (hl)
	jp po,08f97h
	inc c
	call pe,sub_49ebh
	ld a,0e9h
	rst 38h
	add a,c
	adc a,l
	adc a,a
	jp z,006a0h
	ret p
	ld (hl),a
	xor 0b8h
	ld (hl),l
	and c
	jp nz,098cfh
	dec h
	xor l
	adc a,a
	jp p,0079ah
	rst 8
	sub d
	or l
	ld (hl),d
l726fh:
	xor e
	ld a,h
	ld c,c
	pop bc
	adc a,a
	xor e
	ret p
	add hl,bc
	cp e
	jp z,08fd6h
	xor e
	and c
	inc bc
	ld b,0c3h
	jp m,08904h
	or e
	xor c
	cp d
	call po,0a99eh
	adc a,c
	ret p
	adc a,a
	xor c
	ret po
	rst 28h
	adc a,a
	sbc a,a
	xor c
	ld b,d
	ei
	adc a,a
	xor c
	ld a,h
	ld e,(hl)
	inc hl
	sbc a,a
	add a,0f1h
	ld sp,09de6h
	rst 8
	and b
	dec sp
	sbc a,(hl)
	ret nz
	ld (bc),a
	jp nc,l6f2ch
	sub b
	sbc a,(hl)
	ld d,c
	cp a
	jp 0ad2ch
	nop
	inc d
	sub b
	ld (l4615h),a
	sub b
	sbc a,l
	ld d,h
	xor h
	add a,(hl)
	nop
	inc hl
	ld (hl),a
l72bdh:
	ld (0900eh),a
	dec hl
	ld a,0d4h
	adc a,l
	ld b,00fh
	sub b
	and b
	ret po
	djnz $-110
	ret nc
	call pe,0906eh
	cp (hl)
	cp a
	ld a,b
	djnz $+101
	ld (de),a
	djnz l7355h
	djnz $-88
	ret
	sbc a,(hl)
	add a,d
	rst 10h
	ld (hl),e
	ld b,l
	ld e,(hl)
	ld l,b
	ld l,09eh
	ld bc,0aed6h
	add a,h
	rst 10h
l72e8h:
	add a,e
	ld b,a
	ld b,030h
	rst 28h
	rrca
	cp e
	rst 30h
	ld e,a
	ld a,a
	jp p,l4651h
	call po,0acc9h
	sub b
	adc a,a
	ld c,e
	jp po,01559h
	sub d
	adc a,a
	pop bc
	cp l
	sub b
	ret c
	inc e
	ret c
	rlca
	rst 30h
	sub e
	ld a,h
	ld c,a
	sbc a,d
	or b
	add a,032h
	ld e,h
	cp c
	adc a,091h
	sub b
	ld e,000h
	add hl,bc
	ld e,0beh
	inc hl
	call z,02e0ah
	adc a,e
	and c
	sbc a,059h
	push de
	sub 035h
	ld a,0feh
	ex (sp),hl
	daa
	ret nc
	add hl,de
	ld hl,091e4h
	pop bc
	inc h
	sub e
	ld h,l
	ld c,c
	dec b
	ld (0af15h),a
	ld e,006h
	sub a
	sub a
	cp (hl)
	adc a,d
	ret
	sub 0b5h
	xor e
	sub c
	rrca
	sub c
	dec (hl)
	ld d,a
	add a,b
	dec de
	sub c
l7348h:
	ld a,b
	cp 063h
	ret c
l734ch:
	rst 38h
	sub c
	inc (hl)
	and d
	ld e,l
	out (04ch),a
	ret
	sbc a,e
l7355h:
	call 03d1dh
	sub c
	ret z
	ld a,(09bb8h)
	ld a,(03473h)
	ld a,(l4638h)
	xor (hl)
	jp pe,03a00h
	sbc a,e
	add hl,hl
l7369h:
	call m,sub_5008h
	sub c
	xor b
	jp c,0920bh
	inc l
	inc b
	sbc a,(hl)
	add hl,sp
	add a,b
	add a,b
	sub h
	dec d
	ccf
	jr nz,$-11
	ccf
	ld c,c
	and e
	ld sp,0054bh
	jr c,$+65
	call 0d2a0h
	or l
	ld (de),a
	cp b
	sub a
	push bc
	and e
	ld (091c2h),a
	sub h
	or b
	cp c
	sub a
	ld e,032h
	jp 09391h
	ret
	ld bc,0bbd8h
	ld hl,(0093eh)
	dec d
	ld (091c1h),a
	cp l
	add hl,hl
	inc bc
	cp l
	ld h,a
	add hl,de
	jp z,02514h
	or a
	sub a
	jp nc,0abc4h
	ld c,e
	sub b
	cp c
	ld (hl),00ah
l73b7h:
	dec h
	ld a,(bc)
	ld (bc),a
	jp nz,00680h
	cp 00eh
	cp 007h
	jp 091edh
	ld b,002h
	ld b,033h
	dec c
	ld (bc),a
	dec c
	sbc a,l
	ld b,0beh
	adc a,e
	xor c
	or h
	dec hl
	or h
	ld a,08fh
	inc e
	jp nc,09202h
	pop hl
	sub e
	jp c,0f0c4h
	ld sp,hl
	inc b
	ld bc,01dd2h
	sub d
	ret p
	push af
	ld l,d
l73e7h:
	ret
	add hl,sp
	sub d
	ld l,d
	call z,0f0feh
	inc a
	and h
	or b
	sbc a,b
	and c
	pop hl
	sub d
	pop bc
	ld (hl),a
	inc d
	ei
	ld c,a
	ld l,(hl)
	dec sp
	ld a,0e9h
	or h
	nop
	jp 0d4adh
	ld b,h
	ld d,a
	sub d
	or 0a1h
	ld c,c
	sub d
	ld c,a
l740bh:
	dec hl
	inc b
	cp a
	ld l,c
	ex af,af'
l7410h:
	sub a
	add hl,bc
	sbc a,b
	sub d
	sub a
	ld h,d
	rst 18h
	ld hl,092d1h
	dec hl
	call pe,0c61ah
	ld c,01ch
	ld (092d0h),a
	ld l,c
	ld b,h
	jp c,09296h
	call po,007f3h
	ld (hl),d
	ld l,d
	rst 8
	jp pe,0e16ah
	jp p,l78ebh
	daa
	xor c
	sub d
	ex de,hl
	sbc a,d
	rlca
	ex de,hl
	ld (hl),c
	rst 18h
	ccf
	ld c,d
	inc b
	ret po
	ld de,0da7ch
	sbc a,d
	inc bc
	ld a,e
	dec a
	and e
	inc de
	ex (sp),hl
	jp z,0e30ch
	ld (hl),a
	rst 0
	sub 095h
	jr nz,$+102
	ld h,h
	bit 2,c
	adc a,b
	adc a,e
	ld b,b
	ld c,d
	ld a,a
	djnz l7410h
	add a,h
	adc a,d
	ld a,c
	inc hl
	rst 30h
	adc a,d
	adc a,b
	cp (hl)
	xor d
	dec bc
	ld e,(hl)
	ld c,l
	sbc a,h
	and (hl)
	and a
	ld c,l
	rst 38h
l746fh:
	ld (hl),050h
	ld h,e
	rst 8
	ld d,d
	push af
sub_7475h:
	ld h,(hl)
	sbc a,e
	rst 28h
	defb 0fdh,089h,040h ;illegal sequence
	sub e
	xor d
	ld l,d
	or h
	dec sp
	adc a,a
	or d
	inc b
	ret c
	xor b
	ld a,d
	cp d
	ret
	ld e,l
	adc a,(hl)
	push bc
	add hl,bc
	ld l,c
	sub e
	push bc
	cp l
	jp (hl)
	jr nz,$+89
	ld b,0cbh
	jp z,03568h
	sub e
	dec a
	ret nz
	dec (hl)
	dec b
	in a,(005h)
	sub l
	ld a,(bc)
	sub c
	call nc,0c6e3h
l74a5h:
	xor b
	ld c,c
	sub e
	ld e,a
	ld b,a
	ld l,l
	ld d,h
	sub c
	jp z,l7e04h
	sub e
	ld a,002h
	add a,(hl)
	dec hl
	ld a,b
	ld hl,002e6h
	rlca
	jp z,0938bh
	ld de,00c4ah
	ret
	set 0,d
	cp (hl)
	ld a,09dh
	call po,00d99h
	ld bc,01acbh
	xor e
	call c,0700dh
	and a
	dec c
	ret
	cp h
	rst 30h
	xor (hl)
	and (hl)
	ld c,c
	cp b
	sub e
	pop bc
	pop bc
	ld a,(hl)
	ld c,a
	cp 04ch
	nop
	rst 0
	sub e
	cp 0fdh
	jp z,093ceh
	dec d
	jp 093d5h
	adc a,c
	cp h
	ld b,037h
	ld bc,09306h
	add hl,de
	sub (hl)
	ld a,b
	rst 30h
	rra
	push de
	dec c
	out (006h),a
	ld b,(hl)
	ld (bc),a
	sub d
	ld h,e
	ld b,0feh
	ld b,080h
	jp 093f8h
	ld (hl),b
	sub 0c1h
	ld c,c
	ld a,h
	sub a
	and 060h
	djnz l74a5h
	sub (hl)
	and 065h
	rlca
	dec (hl)
	sbc a,c
	ld l,0bah
	jp p,l6f39h
	sub h
	cp d
	adc a,c
	scf
	sub h
	cp d
	cp c
	inc b
	ld c,h
l7525h:
	cp 048h
	rst 18h
	cp d
	xor h
	ld (hl),c
	sub h
	rst 18h
	cp d
	inc b
	ld l,d
	jr nc,l7525h
	defb 0ddh,004h,0bah ;illegal sequence
	call c,sub_6606h
	ei
	inc b
	cp d
	call m,01e80h
	jp m,09485h
	ld a,002h
	jp po,09032h
	sub h
	ld (002a1h),a
	ld b,(hl)
	call z,0d63fh
	ld e,0bah
	or 0cbh
	or (hl)
	dec (hl)
	cp d
	xor (hl)
	inc b
	ret nc
	and h
	cp d
	ld l,a
	sub 0bah
	ld h,(hl)
	or l
	sub h
	add a,0eeh
	ret nc
	or c
	djnz $-51
	add a,010h
l7568h:
	dec (hl)
	pop hl
	ld c,l
	add a,00dh
	cp d
	add a,01eh
	cp d
	jp p,0bc46h
	jp (hl)
	ld c,l
	inc bc
	ld (bc),a
	ld bc,0fabah
	sub c
	ld sp,hl
	ret pe
	ld l,a
	cp d
	adc a,e
	sub 0bah
	ld a,e
	inc a
	inc hl
	sub l
	ld e,b
	rlca
	jp c,0951fh
	ld e,b
	ld e,e
	cp d
	adc a,l
	add a,0bah
	jp (hl)
	ld b,h
	cp d
	cp (hl)
	dec b
	ld d,d
	sub l
	inc c
	cp d
	cp l
	sbc a,e
	ld c,b
	sub l
	cp d
	call p,sub_6812h
	sub l
l75a4h:
	rst 10h
	call 0ba07h
	cp c
	out (0aeh),a
	add a,(hl)
	add a,b
	sub l
	out (0b9h),a
	or e
	ld c,h
	ld e,b
	xor h
	ld e,b
	jr z,l7568h
	sub l
	jp c,0b529h
	sub l
	jp c,00e8dh
	ld h,e
	or e
	ld c,0c5h
	ld c,093h
	pop hl
	dec hl
	cp b
	add a,(hl)
	sub l
	and b
	rst 30h
	push hl
	ld d,b
	call c,sub_577bh
	sub (hl)
	ld b,04eh
	ei
	dec sp
	ld (bc),a
	rrca
	dec h
	sub e
	ld e,c
	ld b,050h
	adc a,e
	or 0ffh
	ld c,l
	nop
l75e2h:
	rst 30h
	nop
	ld (hl),b
	inc bc
	nop
	ld h,(hl)
	defb 0fdh,003h,009h ;illegal sequence
	ld (hl),c
	inc bc
	jr $-122
	rst 38h
	ld bc,00001h
	rst 10h
	inc bc
	ld (bc),a
	rlca
	inc d
	dec b
l75f9h:
	ld bc,0c703h
	rlca
	nop
	rrca
	ld e,e
	ld hl,0bc86h
	ret nz
	nop
	ld de,095d5h
l7608h:
	call sub_46f1h
	add a,(hl)
	rst 28h
	ld d,b
	jp p,05735h
	sub (hl)
	adc a,e
	ld b,l
	inc sp
	sub (hl)
	adc a,e
	ld l,e
	inc hl
	di
	ld d,h
	ld d,b
	cp (hl)
	jr z,l75f9h
	adc a,l
	ld d,008h
	cp 0a0h
	inc e
	jp c,0964ch
	xor 064h
	inc c
	ld (hl),063h
	defb 0edh ;next byte illegal after ed
	sbc a,h
	adc a,h
	jp nc,0af44h
	out (052h),a
	adc a,h
	jp nc,02a45h
	rst 8
	ret m
	sub b
	inc hl
	ld (hl),c
	inc hl
	ld e,d
	ld a,b
	push hl
	ld c,c
	inc e
	add a,e
	ld (bc),a
	ld d,l
	rst 38h
	inc (hl)
	inc b
	ld d,h
	dec sp
	ld hl,(016b3h)
	ld h,d
	jr nz,$+24
	adc a,e
	ld (bc),a
	ld l,d
	ld e,e
	ld d,056h
	call z,057cbh
	jp 02918h
	or a
	sub (hl)
	rst 0
	ld a,d
	dec a
	or a
	nop
	inc c
l7666h:
	inc b
l7667h:
	ld h,088h
	adc a,037h
	ld c,0a4h
	adc a,l
	call c,026b8h
	cp 0e1h
	adc a,000h
	ld b,(hl)
	jp c,096c7h
	ld c,064h
	ld b,0dch
	jp nc,0232ch
	ld (hl),b
	ld d,e
	sbc a,022h
	ld l,l
	add hl,de
	ld (hl),c
	ld c,l
	call z,0aecbh
	ld e,h
	adc a,d
	jp 096dbh
	call z,0d6e8h
	inc bc
	ld bc,004feh
	jp nc,096fdh
	ld (hl),01eh
	and b
	ld b,e
	and 08dh
	res 5,h
	rrca
	add hl,hl
	sub a
	jr $+53
	ld d,097h
	jr $-27
	jp po,l610dh
	sub d
	rst 38h
	ret nc
	add a,h
	rra
	call nc,sub_4ac6h
	sub a
	ld l,e
	halt
	add hl,bc
	or e
	xor 009h
	ld l,(hl)
	call z,0be1fh
	inc hl
l76c2h:
	or e
	ld h,(hl)
	inc b
	or e
	inc b
	inc sp
	pop hl
	sbc a,d
	sub (hl)
	ex af,af'
	sbc a,d
	ld a,b
	dec c
	ld a,(0c157h)
	in a,(043h)
	sub a
	sub a
l76d6h:
	ex af,af'
	adc a,d
	add a,c
	ld a,(l7608h)
	inc bc
	ex af,af'
	inc b
	defb 0edh ;next byte illegal after ed
	ex af,af'
	dec b
	ex af,af'
	cp b
	ret m
	add hl,de
	ret z
	jp 086edh
	rst 0
	jp l6ce1h
	cp (hl)
	ld e,c
	rst 10h
	inc b
	ld a,d
	ld a,(bc)
	ld l,e
	jr z,l76c2h
	jp nz,00a04h
	inc c
	pop hl
	ld a,c
	ld h,a
	inc h
	defb 0ddh,07dh ;ld a,ixl
l7701h:
	rrca
	ld h,(hl)
	rst 30h
	inc de
	and e
	jr z,$+8
	ld c,01fh
	cp l
	sbc a,l
	add a,h
	call c,02d63h
	ld b,010h
	and (hl)
	sub c
	pop hl
	rrca
	inc bc
	or e
	scf
	rst 18h
	ld sp,l4928h
	ret m
	xor 002h
	call c,039cbh
	rrca
	inc a
	ld e,093h
	rrca
	ld c,c
	ex (sp),hl
	dec a
	jp m,0228eh
	sub l
l772fh:
	and a
	ccf
	sbc a,b
	or d
	ld h,e
	ld b,e
	ld b,053h
	ld hl,(086e1h)
	rra
	scf
	ld c,l
	ex (sp),hl
	inc a
	rrca
	add a,b
	bit 2,e
	ei
	ld bc,0ff42h
	halt
	inc c
	rrca
	inc bc
	daa
	di
	ld b,c
	ld c,a
	ld b,h
l7750h:
	ccf
	adc a,h
	rra
	dec sp
	rst 0
	ld e,a
	sub l
	ld e,a
l7758h:
	adc a,c
	ld h,e
	ld e,l
	ld b,03bh
	ld c,d
	ccf
	ex af,af'
	inc hl
	ld d,b
	sbc a,b
	add hl,de
	ld (bc),a
	dec l
	ld d,b
	ld b,(hl)
	and d
	ex af,af'
	adc a,(hl)
	ld (00208h),a
	jr nc,l772fh
	ld b,(hl)
	ld d,b
	or h
	ld (bc),a
	inc c
	or (hl)
	ld a,(bc)
	ld h,b
	or b
	dec b
	sub d
	ld (bc),a
	and d
	ex af,af'
	sbc a,b
	dec b
	inc h
	ld h,(hl)
	ld e,d
	dec bc
	ld e,00bh
	ld a,(de)
l7787h:
	sub d
	ld (bc),a
	ld l,e
	ex af,af'
	jr z,$+28
	ld c,b
	rlca
	ld de,00b07h
	inc a
	ld h,b
	ld h,a
	sbc a,h
	dec b
	ld (bc),a
	ld bc,l5266h
	ld d,b
	and c
	ex af,af'
	sbc a,h
	dec b
	jp po,l440eh
	ex af,af'
	ld (bc),a
	rst 38h
	jr nc,$-58
	ld l,(hl)
	djnz l7787h
	dec bc
	ex af,af'
	or (hl)
	inc c
	ld d,b
	jp z,0ac05h
	ld a,b
	cp h
	ex af,af'
	dec bc
	inc de
	add a,d
	ex af,af'
	rrca
	ld (bc),a
	ld d,c
	sbc a,b
	ld (bc),a
	ret nz
	add hl,de
	ld c,024h
	add hl,de
	inc d
	inc hl
	dec b
	dec l
	ret c
	ex af,af'
	adc a,h
	call nz,0898eh
	ld h,e
	add hl,de
	ld (bc),a
	add a,a
	rrca
	ld (bc),a
	ld c,b
	add a,h
	dec bc
	ld a,d
	rst 38h
	djnz l782bh
	ld (hl),b
	rst 38h
	ld c,l
	dec l
	ld b,b
	inc (hl)
	sub c
	ld (bc),a
	ld a,002h
	ld c,b
	ld e,a
	ex af,af'
	ld c,001h
	ld (hl),b
	or (hl)
	ld c,035h
	ld (bc),a
	ld c,e
	ld (bc),a
	inc h
	rrca
	inc d
	add hl,de
	dec b
	inc hl
	inc h
	ld b,b
	jp z,0b608h
	ex af,af'
	ret nz
	pop bc
	ld c,001h
	add a,b
	inc a
	ld de,0acc1h
	inc hl
	ld de,09b29h
	ld de,08e2fh
	ld c,016h
	ld e,h
	rrca
	jr nz,l7818h
	ld h,d
	ld de,0050fh
	inc e
l7818h:
	ld a,(bc)
	ld b,b
	and d
	dec bc
	ld (00b8eh),hl
	ld h,h
	add hl,de
	ld (bc),a
	sbc a,h
	dec b
	ld l,(hl)
	dec b
	jr c,$-124
	ld c,04ch
	ld a,b
l782bh:
	ld a,069h
	ex af,af'
	dec c
	dec b
	ld b,b
	ld d,b
	dec b
	dec b
	ld h,c
	adc a,h
	dec bc
	jr z,l7879h
	add a,(hl)
	inc d
	ld (hl),h
	sub (hl)
	inc a
	ld (hl),b
	nop
l7840h:
	ld h,0fch
	jr nz,l7840h
	dec bc
	inc d
	rst 38h
	dec b
	sub l
	ld b,l
	ld e,d
	inc hl
	ld c,020h
	inc a
	ld e,d
l7850h:
	rla
	adc a,e
	ld l,(hl)
	dec b
	ld c,005h
	djnz $+1
	dec b
	dec l
	and b
	ld l,(hl)
	ld b,b
	ld e,d
	ld (bc),a
	ld c,e
	and b
	add a,d
	ld e,d
	sub b
	nop
	cp d
	ld (0d830h),a
	ld c,e
	sub b
	ret c
	ld b,c
	inc b
	sub b
	call pe,0905fh
	jp po,08217h
	call po,03202h
	and b
l7879h:
	inc l
	adc a,h
	ld h,h
	ld (bc),a
	dec b
	add hl,bc
	scf
	and b
	sub (hl)
	ld e,002h
	dec l
	ld (bc),a
	ld c,055h
	sub b
	nop
	ld (bc),a
l788bh:
	jp nz,03c1eh
	sub b
	ld (l44deh),a
	ld d,(hl)
	ld (bc),a
	ld (hl),a
	ld (de),a
	ld bc,l6490h
	dec sp
	sub (hl)
	dec b
	ld c,c
	add a,d
	dec b
	adc a,h
	rla
	and b
	ex af,af'
	ld d,05ah
	ld b,c
	ex af,af'
	inc d
	ld (020ffh),a
	xor (hl)
	ld c,d
	ex af,af'
	push af
	ld l,b
	ex af,af'
	ld e,090h
	inc h
	ld d,b
	ld bc,08c32h
	jr c,l7850h
	sub d
	ld (bc),a
	ld d,b
	ld (bc),a
	ld h,h
	ld (bc),a
	dec d
	ld (09640h),a
	ld (bc),a
	ld e,h
	add a,(hl)
	inc d
	ld (bc),a
	ld h,h
	ld c,c
	ld a,(00105h)
	ld (bc),a
	jr z,l78e5h
	dec h
	ld bc,l630bh
	ld h,0a5h
	ld (02ca2h),hl
	ld (0ff41h),hl
	and h
	ld b,l
	scf
	or e
	ld (bc),a
	inc h
	ld b,(hl)
	ld (bc),a
l78e5h:
	ld (02802h),a
	sub (hl)
	ld (bc),a
	inc a
l78ebh:
	ld (bc),a
	push de
	ld (bc),a
	or b
	ld h,(hl)
	inc hl
	inc hl
	defb 0edh ;next byte illegal after ed
	dec b
	sbc a,b
	dec b
	sub d
	jp nc,00899h
	call pe,0ff18h
	and a
	dec (hl)
	sbc a,l
	add a,h
	jr z,l788bh
	pop de
	or b
	ld b,(hl)
	ei
	call po,09f02h
	and d
	sub (hl)
	ld d,b
	and d
	out (c),e
	ld b,l
	and b
	ld d,(hl)
	ld b,(hl)
	ld h,b
	rst 0
	add a,b
	ld h,b
	inc a
	ld e,060h
	ld h,h
	sub h
	ld (bc),a
	ld l,(hl)
	cp a
	inc h
	ld a,b
	dec b
	sub (hl)
	ld (bc),a
	or h
	sub d
	ex af,af'
	ret z
	dec b
	and 002h
	nop
	ret p
	xor a
	ld h,b
	jp m,0904fh
	jr z,l7966h
	and h
	ld (bc),a
	dec b
	ld c,e
	ld (bc),a
	ld e,a
	ld l,b
	ld sp,06402h
	ld l,(hl)
	sub b
	jr nz,l79b1h
l7943h:
	and 002h
	ld e,d
	ret nz
	inc a
	ld h,l
	and h
	rla
	ld c,l
	cp (hl)
	ld c,l
	ret z
	ret z
	ld d,(hl)
	and h
	adc a,00bh
	ld h,d
	jr nz,l79b1h
	ld l,(hl)
	ld (bc),a
	ld b,l
	ld h,h
	defb 0ddh,002h,006h ;illegal sequence
	inc d
	cp (hl)
	ret nz
	nop
	ld a,l
	ld h,l
	ld (bc),a
	cp c
l7966h:
	inc de
	call c,0d150h
	dec l
	and e
	jp c,01408h
	ld (02308h),a
	jp nc,02392h
	call c,0eb20h
	dec b
	inc hl
	rst 30h
	ld bc,040feh
	ld b,(hl)
	ld a,b
	sub b
	ret z
	call sub_4890h
	ld d,a
	or a
	call m,sub_5a02h
l798ah:
	djnz $-33
	sbc a,e
	jr nc,l79bah
	push af
	sub d
	cpl
	ld d,(hl)
	and d
	call m,sub_4b2bh
	jp pe,0c04bh
	sub (hl)
	dec e
	jr nz,l79c2h
	cpl
	and 011h
	ret z
	sub d
	ld de,011d2h
	sbc a,008h
	ld e,b
	cp (hl)
	inc hl
	ld d,(hl)
	ret z
	ld c,l
	add hl,de
	ld c,023h
l79b1h:
	dec bc
	ld (hl),d
	ret z
	ld a,(de)
	ret z
	xor d
	ld a,(de)
	sub (hl)
	ld b,c
l79bah:
	ld e,002h
	jr z,l79c8h
	ld d,b
	ld hl,(09405h)
l79c2h:
	ld (bc),a
	call po,l5082h
	inc (hl)
	ld l,c
l79c8h:
	rst 20h
	ld b,h
	ld a,b
	ex af,af'
	dec l
	cp c
	dec b
	ld (bc),a
	ld e,(hl)
	rst 38h
	ld h,d
	ld (bc),a
	rst 18h
	nop
	rst 38h
	ret p
	ld l,(hl)
	ld b,000h
	nop
	nop
	ld hl,0f3e9h
	ld (hl),00fh
	inc hl
	ld (hl),000h
	ret nz
l79e6h:
	ld (bc),a
	call 005cfh
sub_79eah:
	call 00100h
	ld b,c
	ld a,(0ffe7h)
	and 0dfh
	ld (00480h),a
	xor a
	di
	out (099h),a
	ld a,097h
	ld h,b
	ei
	inc b
	rlca
sub_7a00h:
	ld (004bdh),a
	ld b,b
	ld a,01fh
	ld (004ach),a
	inc b
	ex af,af'
	ld (0c029h),a
sub_7a0eh:
	ld a,024h
	rrca
	dec b
	or b
	add hl,bc
	inc b
	call 000a5h
	dec b
	ld hl,l40beh
	call 00103h
	call 0ef48h
	ld c,0cdh
	ex af,af'
	ld h,l
	ld b,b
	ld (bc),a
	ld a,(l406eh)
l7a2bh:
	or a
	jp z,0094ah
	add a,e
	ld b,l
	call 005c3h
	di
	add hl,hl
	add a,b
	ei
	halt
	jp 080e6h
	rla
	ld l,l
	ld b,b
	dec a
	jp z,l4260h
	nop
	ret
	ld bc,0c500h
	push de
	push hl
	exx
	ex af,af'
	ld h,c
	push af
	dec b
	call 01d0ch
	inc h
	xor l
	add hl,hl
	and b
	ld (bc),a
	inc de
	djnz l7a5dh
	ld a,(0239ah)
l7a5dh:
	djnz $-52
	sub c
	add a,(hl)
	ld e,a
	ld bc,l6e32h
	inc b
	add a,b
	ld d,(hl)
	pop bc
	pop hl
	pop de
	pop bc
	pop af
	ex af,af'
	ld h,c
	exx
	dec b
	ret
	ld a,(l4676h)
	adc a,b
	and e
	add a,d
	adc a,b
	inc b
	ret
	nop
	ld a,(l4188h)
	add a,008h
	and 00fh
	djnz $-80
	sub d
	djnz $+62
	nop
	ld a,(de)
	ld bc,0c001h
	nop
	di
	ld hl,00038h
	ld de,040feh
	ld bc,00300h
	nop
	ldir
	ld hl,l40f4h
	ld (03904h),hl
	nop
	ld a,0c3h
	ld (0fb12h),a
	inc h
	ret
	ld hl,01114h
	rlca
	di
	jp po,00d18h
	nop
	push af
	in a,(099h)
	rlca
	call c,sub_406fh
	pop af
	ld l,b
	ei
	ld b,b
	ld a,(0f3e0h)
	ld d,0e6h
	cp a
	ld (l5404h),a
	or a
	add a,c
	ld d,h
	djnz $+17
	or 042h
	djnz l7b06h
	nop
	nop
	rst 20h
	nop
	ld a,(0c145h)
	or a
	ret nz
	ld a,(014deh)
	ld b,c
	dec a
	ld (00703h),a
	rst 18h
	ld h,b
	ld b,c
	ld b,021h
	ret po
	ld b,c
	nop
	ld de,l4210h
	ld b,030h
	call sub_41b3h
	inc b
	inc hl
	inc de
	djnz $-5
	ld hl,0110bh
	ld b,e
	ld b,b
	ld c,010h
	ld a,(hl)
	add a,a
	nop
	nop
	inc hl
	inc hl
	ld c,(hl)
	add a,c
	dec hl
	ld c,(hl)
l7b06h:
	add a,h
	dec b
	ld (de),a
	inc de
	ld a,c
	ld (bc),a
	djnz l7b2eh
	call pe,01821h
	call 002e9h
	ld a,(0982ah)
	jp 0033eh
	im 0
	ld a,(bc)
	dec b
	ld c,d
	sub d
	ld b,(hl)
	ld d,d
	ld b,050h
	dec (hl)
	nop
l7b26h:
	xor a
l7b27h:
	inc hl
	djnz l7b27h
	ret
	ld a,(de)
	cp (hl)
	rrca
l7b2eh:
	ret z
l7b2fh:
	inc a
	ld (de),a
	ret
	ld h,b
	ld l,b
l7b34h:
	dec de
	ld a,(hl)
	dec a
	ld (bc),a
	cp 0ffh
	jr nz,l7b3dh
	xor a
l7b3dh:
	ld (hl),a
	ld (0f50eh),hl
	call sub_4175h
	jr c,l7b4ah
	ret
	ld a,(bc)
	ld a,(bc)
	xor l
l7b4ah:
	ld a,(hl)
	ld (bc),a
	rlca
	nop
	ld a,a
	nop
	nop
	inc (hl)
	xor a
	ld c,h
	ld hl,0becdh
	ld bc,l64cah
	ld b,d
	ld (hl),a
	ld a,(l4275h)
	add a,e
	ld b,e
	halt
	inc bc
	inc d
	and e
	add a,a
	adc a,b
	xor a
l7b68h:
	ret nc
	ret z
	and c
	ret po
	ld hl,024deh
	ld b,l
	ld de,0279bh
	ld bc,09730h
	jr z,l7b26h
	adc a,h
	rst 0
	ld (0df32h),hl
	cp c
	ld hl,(03202h)
	ld hl,(0029eh)
	ld b,l
	ld hl,l463eh
	adc a,b
	ld d,b
	jp 0a112h
	set 4,c
	ld c,004h
	ld b,l
	ld b,h
	call 0020ah
	sub l
	inc d
	ld b,e
	call 00578h
	ld a,(de)
	call 0534ah
	inc d
	cp h
	ld b,(hl)
	sub 085h
	ld b,h
	xor 000h
	rst 10h
	ld b,d
	cp 02eh
	jp z,0cf12h
	ld b,d
	ret nc
	call c,0b982h
	ld b,c
	ret
	call p,00885h
	call p,0c92ah
	jp z,09e98h
	cp c
	jr nc,l7be6h
l7bc2h:
	cp 096h
	nop
	ret nc
	ld a,(l42ddh)
	or a
	jp nz,l4303h
	sbc a,d
	in a,(006h)
	inc bc
	ret nz
	ld a,r
	and 03fh
	ret nz
	jr nz,l7c01h
	ld (de),a
	add a,(hl)
	sub h
	sbc a,045h
	ld hl,01502h
	ld b,e
	inc a
	and 0e4h
	ld d,e
l7be6h:
	dec b
	or h
	add a,(hl)
	ld b,d
	inc a
	ld (de),a
	ld b,h
	and e
	dec h
	ld c,h
sub_7bf0h:
	ld b,e
	inc bc
	dec a
	inc bc
	ld h,c
	ld b,h
	inc bc
	ld c,e
	ld b,e
	ld l,b
	and b
	add a,014h
	ld (l435ah),a
	inc h
l7c01h:
	ld (00269h),a
	ld a,b
	ld (bc),a
	add a,a
	ld b,h
	ld b,e
	call nc,0ac43h
	rst 30h
l7c0dh:
	and c
	sub 065h
	ld b,0cbh
	ld (hl),h
	ld b,08ah
	ld c,l
	ld d,c
	jr c,$+35
	add a,e
	ld a,(bc)
	ld bc,000ach
	ld e,c
	inc bc
	cp (hl)
	nop
l7c22h:
	ld e,d
	adc a,h
	ld d,c
	nop
	ld (de),a
	add a,d
l7c28h:
	jr l7bc2h
	ld (hl),h
	cp l
	ld c,014h
	push hl
	ld c,0d1h
	ld c,0d3h
	dec d
	ld c,098h
	and l
	sub 032h
	ld c,036h
	jr z,l7c4bh
	call nz,0c8a4h
l7c40h:
	or e
	ld h,c
	sub h
l7c43h:
	ld b,e
	pop bc
	ld c,b
	sub e
	adc a,h
	sub (hl)
	add hl,hl
	inc bc
l7c4bh:
	ld (00905h),a
	sub d
	add a,(hl)
	ld (de),a
l7c51h:
	ld (00803h),a
	cp 00ah
	jp z,004bbh
	inc bc
	jp z,0c141h
	inc b
	nop
	jp z,l43cch
	halt
	inc b
	inc b
	ld b,h
	jp 08ac4h
	ld b,b
	ld b,044h
	ld bc,0029ah
	sub b
	call z,0dec3h
	and d
	inc b
	out (0a3h),a
	jr c,l7c51h
	jp 00a08h
	inc d
	ld b,h
	rst 0
	and h
	rlca
	inc d
	rst 10h
	or e
	di
	ld l,024h
	ld c,046h
	di
	cp b
	ld b,h
	or 030h
	sub c
	add a,c
	ld (hl),a
	add a,d
	ld c,b
	djnz l7c43h
	or (hl)
	ld (bc),a
	ret z
	ld a,(l4409h)
	adc a,e
	ld d,(hl)
	dec b
	add a,b
	ld (hl),h
	ex af,af'
	ld b,h
	ld b,a
	ld a,(l4442h)
	jr z,l7c28h
	ld (l6e03h),a
	call z,09839h
	inc b
	ld (hl),b
	inc b
	ld hl,00cb5h
	ld l,h
	add hl,bc
	ld l,h
	sbc a,b
	rra
	cpd
	ld e,(hl)
	inc b
	call po,02151h
	ld l,c
	ld b,h
	push af
	add hl,de
	or l
	ld a,(de)
	jp z,l5730h
	ld b,h
	ld (hl),a
	ld e,h
	ld b,h
	jr nc,l7d09h
	ld b,h
	ld b,a
	rrca
	ld (005a9h),a
	ld b,a
	cp e
	ld (0a5bch),hl
	inc bc
	sub d
	inc b
	ld b,d
	inc bc
	or h
	push hl
	ld h,b
	inc e
	nop
	rla
	adc a,l
	call p,02134h
	rst 10h
	ld (0ea21h),a
	pop hl
l7ceeh:
	dec b
	defb 0fdh,005h,0a1h ;illegal sequence
	ld b,0ffh
	ld hl,007d3h
	inc h
	push bc
	ld h,e
	push de
	dec b
	or l
	daa
	ld b,h
	ld b,015h
	and 00dh
	ld c,0e8h
	dec c
	sbc a,h
	ld sp,hl
	dec c
l7d09h:
	dec (hl)
	ei
	dec c
	ret
	jp pe,l7750h
	ret nz
	inc hl
	nop
	ld a,(hl)
	dec hl
	ld (hl),a
	ld de,00008h
	add hl,de
	ld a,(hl)
	dec a
	add a,b
	ld (hl),a
	rrca
	dec d
	dec (hl)
	call p,02883h
	jr z,l7ceeh
	ld l,l
	nop
	rst 8
	nop
	ld d,a
	nop
	dec b
	nop
	ld l,b
	ld b,06dh
	ld d,016h
	ld (03240h),a
	ld (de),a
	ld b,a
	inc bc
	jp nc,07000h
	rl d
	ld bc,00212h
	ex af,af'
	ex af,af'
	ld e,01eh
	ld (de),a
	nop
	ld c,h
	inc bc
	call l6100h
	nop
	inc b
	nop
	ld b,a
	inc bc
	sub e
	nop
	jr nc,l7d9ah
	ld b,028h
	ld d,(hl)
	ld l,023h
	ld e,(hl)
	sub b
	nop
	inc hl
	push de
	call sub_45c4h
	pop de
	in a,(098h)
	adc a,b
	rst 8
	daa
	ld b,l
	or b
	push de
	jp nz,0a02dh
	pop af
	xor b
	ld b,l
	nop
	ld a,c
	out (098h),a
	djnz $-28
	ret
	inc d
	jr c,l7d7bh
l7d7bh:
	ret po
	dec d
	inc c
	ret nc
	ld d,023h
	call z,00017h
	rla
	ret nc
	add hl,de
	ld b,b
	ret po
	ld a,(de)
	ld c,h
	ret po
	dec bc
	inc e
	inc l
	ret nc
	dec e
	add a,(hl)
	add a,b
	rra
	ld e,a
	ret nc
	jr nz,l7dedh
l7d98h:
	defb 0edh ;next byte illegal after ed
	nop
l7d9ah:
	ld (0e06ah),hl
	inc h
	ld e,b
	call c,sub_4a26h
	nop
	call 03728h
	ret nc
	ld hl,(0e00fh)
	inc l
	nop
	ld d,(hl)
	call pe,0142eh
	ret nc
	jr nc,l7dcch
	ret nz
	nop
	ld (0dc3fh),a
	inc (hl)
	ld hl,(036edh)
	djnz l7dc8h
	defb 0edh ;next byte illegal after ed
	jr c,l7df3h
	call c,001eeh
	ret nz
	inc a
	jr nz,l7d98h
l7dc8h:
	ld a,03bh
	inc de
	ld b,b
l7dcch:
	ld l,09ch
	nop
	jr z,$-46
	ld b,h
	ld l,d
	ret nz
	ld b,l
	ld e,d
	nop
	ld b,(ix+044h)
	ret po
	ld b,a
	ld h,b
	in c,(c)
	add a,b
	ex af,af'
	ld c,c
	ld d,l
	ret nz
	ld c,d
	rra
	ret nc
	ex af,af'
	ld c,e
	ld c,(hl)
	call pe,01d4ch
l7dedh:
	ld c,l
	ld h,h
	nop
	ret nc
	ld c,(hl)
	dec (hl)
l7df3h:
	ret nz
	ld c,a
	ld l,h
	ret nc
	ld d,b
	inc bc
	inc e
	ret po
	xor a
	rlc d
	rla
	ld (bc),a
	ld d,(hl)
	ld a,(09801h)
l7e04h:
	ld l,d
	adc a,(hl)
	inc bc
	ld b,e
	ld a,e
	ld (bc),a
	ld a,d
	or 040h
	and b
	scf
	dec de
	push hl
	adc a,0bah
	sub d
	ld b,000h
	dec b
	nop
	ld c,b
	inc bc
	nop
	ld bc,00500h
	ld (bc),a
	ld (hl),l
	nop
	ex af,af'
	add a,d
	dec hl
	nop
	adc a,h
	inc bc
	ld a,(de)
l7e28h:
	ld c,c
	ld (bc),a
	nop
	inc bc
	ld bc,00004h
	ld (hl),e
	ld (de),a
	cpl
	and 007h
	cp c
	inc de
	dec bc
	and h
	and b
	add a,0a5h
	add hl,de
	rlca
	nop
	cpl
	defb 0edh ;next byte illegal after ed
sub_7e40h:
	nop
	ld sp,hl
	sbc a,a
	nop
	rst 38h
	ret p
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7ed9h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_7f3eh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
