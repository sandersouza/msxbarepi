; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank08.asm /tmp/smanbow2_bank.bin

	org 04000h

l4000h:
	adc a,h
	ld bc,0f610h
	adc a,b
	or c
	adc a,l
	ld a,07fh
	ret m
	defb 0fdh,0e6h,0f9h ;illegal sequence
	sbc a,c
	or l
	ret m
	or c
	rst 38h
	ld b,h
	sub b
	xor e
	rst 38h
	inc h
	ld (hl),d
	ld de,08c60h
	ld a,c
	dec c
	call c,02bcch
	pop bc
	rla
	rst 38h
	jp 0ac80h
	call m,0abb0h
	ld d,d
	rst 38h
	add a,b
	ex de,hl
	cp 011h
	rst 38h
	ret p
	ld d,e
	add a,h
	dec l
	ld d,b
	ld a,a
	sub h
	add a,b
	call nc,047ffh
	djnz $+1
	ret po
	ld (hl),h
	ld a,(hl)
	ld h,(hl)
	call nz,092f6h
	cp 0fdh
	ld (hl),0ffh
	ld e,c
	ret pe
	jp m,01971h
	pop bc
	ld a,07dh
	call z,0fecch
	ld hl,l7777h
	rst 38h
	ld a,c
	ld a,a
	ret nz
	inc bc
	ld b,h
	ld c,a
	cp e
	ld sp,hl
	add a,c
	ld b,033h
	or c
	xor a
	ld a,a
	ret nc
	ld bc,l7dc9h
	ld (hl),a
	ld d,l
	adc a,(hl)
	ld e,l
	ld b,a
	rst 38h
	defb 0ddh,0f7h,06ch ;illegal sequence
	and e
	ld b,h
	defb 0fdh,017h,0ffh ;illegal sequence
	ld sp,hl
	adc a,d
	ld b,h
	rst 38h
	ld h,d
	nop
	ld (hl),b
	inc (hl)
	sbc a,h
	call 0d713h
	ld de,085d1h
	ld b,l
	cp 087h
	inc de
	ld (hl),c
	ld a,a
	add a,(hl)
	inc e
	ld a,a
	add a,h
	ld bc,03f44h
	ld de,08a82h
	or h
	ld a,a
	xor a
	or d
	rst 38h
	sbc a,04bh
l409dh:
	add a,l
	ld (hl),b
	rst 28h
	add hl,bc
	ld a,a
	ret p
	or d
	nop
	call m,0f857h
	add hl,de
	xor a
	inc bc
	rst 38h
	sub (hl)
	ld a,h
	rst 30h
	out (0fch),a
	ld de,0cd77h
	cp 094h
	ld b,e
	add a,b
	adc a,a
	rla
	ld a,a
	ld (bc),a
	inc d
	ld b,e
	ld a,a
	ld e,l
	cp a
	ld a,a
	add a,b
	cp a
	ld a,a
	ld b,d
	nop
	or 05eh
	sbc a,a
	ld a,a
	add a,(hl)
	add a,b
	sub c
	ld b,(hl)
	ld a,d
	ld c,(hl)
	ei
	ld e,(hl)
	jp m,081f6h
	ld c,(hl)
	add a,e
	ld b,(hl)
	add a,(hl)
	jr nz,$+9
	ld a,a
	sbc a,c
	sub a
	ld de,08dddh
	cp 09eh
	ld a,l
	ld (hl),c
	ld a,a
	ld hl,(l7f34h)
	inc e
	cp e
	add a,c
	defb 0fdh,0ebh,083h ;illegal sequence
	rst 8
	ld a,a
	add a,c
	ld b,0d6h
	rst 10h
	ld h,(hl)
	cp e
	ld (de),a
	sbc a,a
	cp h
	dec a
l40fch:
	jr l409dh
	ld a,d
	ei
	ld d,e
	rst 38h
	ld d,d
	cp 079h
	or 0fbh
	add hl,de
	ld sp,hl
	ret pe
	cp 0a5h
	cp 0e6h
	adc a,d
	inc b
	ld h,h
	rlca
	call z,09d7fh
	sub d
	add a,b
	cp 036h
	defb 0fdh,04ch ;ld c,iyh
	ld a,(hl)
	ret p
	ld a,a
	ld a,(hl)
	inc sp
	add a,d
	and (hl)
	di
sub_4123h:
	cp 0b1h
	dec b
	add a,b
	adc a,a
	ld a,(hl)
	ld b,d
	ld h,(hl)
	ld l,e
	adc a,(hl)
	defb 0fdh,0c2h,001h ;illegal sequence
	ld hl,02002h
	sub d
	ld e,d
	rst 0
	adc a,e
	ld l,(hl)
	ld a,a
	and 0eah
	push de
	jp p,000c5h
	rst 28h
	add a,b
	ld e,c
	rlca
	adc a,l
	inc a
	ld b,(hl)
	add a,b
	ld c,007h
	call 0f6d9h
	xor b
	add a,c
	adc a,(hl)
	cp 022h
	rst 38h
	ld l,e
	ld de,0117fh
	ld a,a
	sub l
	di
	ld a,c
	add a,d
	push bc
	ld a,e
	adc a,b
	rst 0
	ld a,a
	cp e
	ld b,0f6h
	add a,(hl)
	or b
	adc a,l
	dec sp
	sbc a,(hl)
	ld (bc),a
	djnz l40fch
	ld c,e
	adc a,c
	cp a
	nop
	daa
	ld a,h
	call m,01a7fh
	pop af
	sbc a,h
	ld a,l
	inc d
	ld h,(hl)
	ld l,a
	cp 0aah
l417ch:
	ld h,(hl)
	rst 38h
	call nc,08164h
	ld l,h
	ld sp,hl
	sub 07fh
	cp 025h
	ld a,h
	cp 01ah
	ld de,007b6h
	ld a,a
	call nc,0fe76h
	ld d,b
	inc d
	call p,081bbh
	ld a,a
	inc de
	rst 38h
	add a,b
	rst 0
	sub 0b8h
	ld c,b
	ld (bc),a
	ld h,l
	cp 0f8h
	inc b
	ld hl,03110h
	ret m
	ld h,h
	add a,b
	or h
	ld bc,0207ah
	dec de
	inc b
	xor h
	call m,0cfaah
	ld a,a
	jp z,0f9a3h
	rst 30h
	sub 0fdh
	pop af
	rst 28h
	ld a,l
	add hl,hl
	and 0fbh
	cpl
	add a,b
	cp d
	cp 089h
	ret c
	ld sp,hl
	defb 0fdh,0a9h,0fbh ;illegal sequence
	adc a,b
	cp 0a5h
	cp 023h
	rst 38h
	xor d
	ld a,a
	ld a,(de)
	jr l41e8h
	rst 38h
	ld b,h
	add a,c
	ld h,d
	add a,l
	ld a,c
	ld a,a
	or c
	dec bc
	ld b,l
	ld d,(hl)
	ld a,a
	dec hl
	dec b
	add a,(hl)
	jp c,02c81h
	ld (hl),a
l41e8h:
	ld a,h
	ld (de),a
	ld a,a
	add a,a
	xor l
	defb 0fdh,07fh,028h ;illegal sequence
	ld b,(hl)
	xor 0e2h
	ld a,(hl)
	ld d,c
	or 080h
	cp 0bch
	ld l,c
	add a,b
	ld a,a
	set 3,l
	rst 30h
	jp nc,l52fdh
	cp 039h
	and a
	rst 38h
	ld a,(bc)
	ld a,a
	halt
	xor h
sub_420ah:
	ld a,a
	add a,c
	xor h
	add a,b
	inc a
	rst 38h
	call p,08b7fh
	or (hl)
	ld h,l
	jp p,l7fb7h
	or 058h
	adc a,h
	adc a,(hl)
	sbc a,(hl)
	add a,b
	jp nc,0f810h
	ret p
l4222h:
	ret m
	ld a,a
	and a
	rst 18h
	ld a,a
	jp c,0b2fch
	ld h,(hl)
	or l
	ei
	ld l,d
	ld l,(hl)
	ld (iy-001h),d
	sub 0feh
	add a,a
	ld b,e
	ld a,h
	exx
	sbc a,b
	ei
	sbc a,b
	ei
	call z,067feh
	ld a,a
	adc a,d
	ld bc,033f6h
	ld a,a
	ld (l5281h),a
	inc de
	add a,h
	or 07fh
	ld b,0cch
	ld a,(hl)
	ld a,a
	sbc a,d
	rst 38h
	add a,d
	add a,a
	ld h,b
	rst 18h
	ld (hl),l
	nop
	jp l7f03h
	add a,09bh
	defb 0ddh,0ceh,0a9h ;illegal sequence
	ld sp,hl
	ld a,a
	dec e
	inc sp
	ld a,l
	ld h,(hl)
	ld (hl),h
	add a,d
	and h
	call m,0ff92h
	call sub_57e3h
	or (hl)
	di
	call nc,sub_767fh
	ld a,l
	ccf
	ld c,c
	di
	add a,l
	add a,h
	ld c,e
	ld a,a
	jp c,07db6h
	inc c
l4280h:
	rrca
	rst 38h
	push af
	ld d,(hl)
	ld (bc),a
	or b
	ld c,b
	ld a,(hl)
	or (hl)
	nop
	adc a,a
	rst 38h
	ld (03101h),hl
	sbc a,e
	sbc a,05eh
	nop
	ld (hl),a
	ld sp,hl
	sbc a,d
	rst 30h
	push hl
	xor 0fdh
	ld l,h
	ld l,a
	sub b
	add hl,de
	call c,0f747h
	cpl
	ld (hl),b
	ld a,a
	add a,c
	ei
	halt
	ld c,e
	ld a,l
	inc d
	ld a,a
	add a,b
	xor d
	add a,b
	ld d,h
	inc de
	cp 077h
	ld a,(hl)
	ld c,h
	nop
	ld e,a
	inc bc
	xor (hl)
	rr (hl)
	ld h,b
	ld a,a
	jr z,l42e0h
	cp 0a5h
	add a,e
	ld l,l
	sbc a,e
	and e
	ld (bc),a
	ld (01d86h),hl
	ex (sp),hl
	rst 38h
	dec l
	rst 38h
	dec (hl)
	call p,0059eh
	ld l,(hl)
	sub b
	defb 0ddh,092h,000h ;illegal sequence
	pop de
	ld a,h
	ld c,h
	pop bc
	inc e
	inc e
	call z,08f77h
	add a,c
	ld (hl),e
l42e0h:
	ld bc,0fd4bh
	xor d
	jp m,0fcb6h
	jp c,080fdh
	ld a,c
	jp po,l7e14h
	sub 07ah
	rra
	inc bc
	ld b,(hl)
	add a,b
	call sub_7b88h
	jp z,0ff22h
	ld d,a
	add a,d
	ret
	or c
	dec bc
	cp e
	rst 38h
	sbc a,e
	ld l,d
	adc a,a
	jp pe,08030h
	dec a
	xor h
	ld l,h
	rst 30h
	ex (sp),hl
	add a,(hl)
	ld e,b
	rst 20h
	nop
	adc a,a
	inc sp
	inc b
	ld bc,07d11h
	ld c,l
	pop de
	dec e
	call m,0cce8h
	adc a,a
	add a,b
	ld (hl),h
	rra
	ld a,a
	inc d
	xor c
	cp 044h
	cp 0a9h
	add a,c
	add a,a
	add a,d
l432ah:
	dec h
	ret m
	jp p,0c555h
	ld a,b
	ld de,08295h
	ld (012f4h),hl
	add a,d
	ld l,a
	jp m,0fce6h
	jp nc,0c4f8h
	ld (bc),a
	rst 38h
	and b
	ld de,0fb2fh
	or (hl)
l4345h:
	sbc a,e
	ld e,b
	push af
	ld a,(hl)
	djnz l432ah
	sbc a,d
	call nz,0bab6h
	dec c
	ld a,l
	ld l,l
	ld a,a
	ld hl,(0c7ddh)
	add a,d
	adc a,a
	add a,b
	ld e,b
	ld a,a
	call p,0aa14h
	cp 0a0h
	add hl,hl
	add a,b
l4362h:
	jp po,l4880h
	cp 0e7h
	ld a,a
	ld (bc),a
	pop af
	ld b,h
	ld b,d
	ld b,h
	sbc a,b
	ex (sp),hl
	ld b,c
	inc h
	ld a,a
	inc de
	or b
	jp m,010d1h
	ld hl,l4affh
	rra
	or (hl)
	sbc a,e
	and d
	jr l43dfh
	ld bc,0dc9bh
	cp 000h
	ret nc
	add a,c
	ld a,b
	ret m
	sub a
	ld (bc),a
	jr $+26
	adc a,c
	sbc a,c
	ret nz
	ld a,h
	add a,b
	dec a
	adc a,h
	inc b
	ei
	cp 024h
	ld sp,hl
	sub h
	xor l
	xor c
	ld a,e
	ld a,a
	add a,b
	add hl,hl
	call pe,0f024h
	sub h
	cp 00ch
	pop af
	rra
	inc d
	inc h
	sbc a,e
	ld a,(bc)
	ld (01424h),hl
	dec c
	ld c,a
	ld h,b
	xor b
	ld de,0c582h
	ei
	ld (09bf6h),hl
	exx
	dec l
	ld l,e
	ld e,a
	sbc a,e
	in a,(000h)
	defb 0edh ;next byte illegal after ed
	nop
	sub c
	ld a,b
	ld l,b
	add a,a
	add hl,de
	jr l4362h
	adc a,h
	defb 0fdh,081h,08fh ;illegal sequence
	add a,b
	ld c,d
	add a,b
	rst 0
	ld b,h
	add a,b
	ld (08433h),hl
	call nz,08611h
	ld h,l
	rst 38h
	jr nz,l43e9h
	cp e
l43dfh:
	ld h,(hl)
	pop bc
	ld a,a
	ld (de),a
l43e3h:
	cpl
	inc d
	nop
	dec c
	ld b,c
	rst 38h
l43e9h:
	jp p,0859bh
	ld d,l
	ld e,e
	ld h,b
	ld (iy+000h),0c4h
	rst 38h
	dec h
	rrca
	or (hl)
	sbc a,l
	ld d,c
	push af
	rst 38h
	sub (hl)
	sbc a,e
	sub 087h
	ld a,e
	ld a,h
	nop
	pop bc
	pop de
l4404h:
	ld a,c
	ld l,c
	sub a
	rst 38h
	jr nz,l43e3h
	ret nz
	ld h,(hl)
	inc d
	ld bc,0dc9dh
	add a,e
	ld a,d
	ld a,a
	add hl,bc
	ld c,a
	ld b,h
	call p,0cafah
	ld (bc),a
	add a,b
	sub d
	add a,h
	ld l,e
	exx
	ret po
	ld h,l
	ld e,a
	sub d
	defb 0fdh,07fh,0d8h ;illegal sequence
	sbc a,b
	rra
	ld de,01f23h
	inc h
	ld a,a
	or (hl)
	rst 38h
	cp 05bh
	xor h
	add a,b
	ld b,(hl)
	ld de,l52feh
	sbc a,h
	dec h
	push af
	ld a,e
	cp a
	sbc a,e
	or l
	ld a,a
	ret m
	call nc,027ffh
	rst 10h
	rst 38h
	ld (bc),a
	nop
	ld b,(hl)
	jr $-6
	add a,b
	add hl,hl
	add a,b
	ld (hl),e
	ld d,h
	ld bc,0f3fdh
	ld d,l
	ld b,h
	jp pe,03583h
	add a,h
	ld e,b
	ld a,a
	inc de
	and (hl)
	rst 38h
	ex af,af'
	ld l,e
	ld h,l
	rst 30h
l4461h:
	sub e
	pop af
	ei
	nop
	ld b,c
	pop af
	ld (0f221h),hl
sub_446ah:
	ld c,a
	ld e,e
	ld hl,(0f666h)
	ld (de),a
	call po,02061h
	ld sp,hl
	add a,d
	ld (bc),a
	sbc a,e
	in a,(09ch)
	add a,b
	or (hl)
	sbc a,e
	rst 18h
	ld (de),a
	ld a,a
	adc a,(hl)
l4480h:
	inc e
	inc hl
l4482h:
	dec e
	rst 10h
	ld b,a
	defb 0ddh,088h,087h ;illegal sequence
	ld b,d
	rst 10h
sub_448ah:
	rla
	add a,b
	cp h
	out (0f4h),a
	add a,b
	ld h,c
	ei
	rst 20h
	ld h,088h
	ld e,b
	ld a,a
	inc sp
	or e
	rrca
	ld e,a
	ld e,e
	ld hl,(l4afah)
	ld b,h
	ld (de),a
	ld (de),a
	add a,e
	add a,b
	rra
	ld c,a
	or (hl)
	ld l,a
	or 0f0h
l44aah:
	adc a,(hl)
	ex (sp),hl
	jr z,l44aah
	rlc (hl)
	sbc a,e
	ld l,(hl)
	add a,b
	ld d,c
	or d
	sbc a,e
	ld l,l
	ld a,(hl)
	ld a,a
	ld c,b
	add hl,de
	call c,05971h
	rlca
	add a,d
	add a,a
	rst 30h
	add a,l
	inc de
	djnz l450ah
	add hl,de
	cp h
	ei
	rla
	ld c,a
	xor h
	ld d,c
	jp m,01980h
	add a,(hl)
	ld b,a
	ld a,a
	ld (de),a
	ld e,(hl)
	or 0dch
	ld b,l
	rra
	ei
	ld h,07fh
	ld d,(hl)
	dec b
	defb 0edh ;next byte illegal after ed
	dec de
	ld e,a
	ld d,(hl)
	ld a,a
	ld bc,0022dh
	sbc a,e
	pop de
	ld d,l
	and h
	dec d
	sbc a,e
	or l
	ld a,a
	bit 2,l
	nop
	ccf
	ld a,a
	nop
	sbc a,c
	adc a,c
	ld d,c
	ld a,l
	ld a,a
	cp 05eh
	and 00bh
	rlca
	halt
	ld h,b
	add a,b
	ld l,a
	defb 0fdh,04ch ;ld c,iyh
	ret m
	ld de,0ee4bh
	ld a,d
	add a,b
l450ah:
	ld b,a
	ld bc,00043h
	jp p,0f418h
	and c
	ld l,e
	call p,0ff42h
	add a,e
	jr c,l453dh
	adc a,d
	sub l
	defb 0edh ;next byte illegal after ed
	add a,0ffh
	ld a,a
	ld sp,l7f40h
	ld hl,l6e9bh
	or e
	add a,c
	dec l
	or c
	sbc a,e
	sbc a,(hl)
	ld a,a
	inc d
	ld d,(hl)
	adc a,e
	xor a
	ld h,l
	ld a,a
	or l
	rla
	rst 38h
	ld b,a
	add a,h
	and h
	nop
	ld (hl),c
	ld h,01dh
	pop bc
l453dh:
	or 039h
	rst 0
	ld h,(hl)
	out (0bbh),a
	rst 38h
	jr nz,l45c5h
	ccf
	cp a
	inc (hl)
	inc sp
	sbc a,d
	add a,b
sub_454ch:
	add a,l
	ld d,d
	ld a,a
	sbc a,l
	sbc a,094h
	add a,b
	ld d,d
	cpl
	ei
	adc a,c
	ld (de),a
	ld b,d
	ei
	ld (hl),c
	push af
	ld a,a
	ld (hl),014h
	ld h,l
	add a,e
	ld (hl),d
	add a,b
	ld (hl),09bh
	pop de
	ccf
	sbc a,e
	ld l,b
	ld b,h
	ld d,045h
	ld h,(hl)
	or l
	sbc a,e
	rl d
	ld a,(hl)
	sbc a,c
	sbc a,c
	ld b,054h
	ld b,h
	ld b,b
	ld d,b
	sbc a,a
	dec b
	ld d,h
	ld a,a
	ld e,0ffh
	sbc a,l
	ei
	ld d,b
	rst 38h
	sbc a,c
	inc hl
	adc a,b
	sbc a,l
	cp 000h
	ld sp,hl
	call c,01017h
	exx
	halt
	ld d,a
	ld b,b
	add a,b
	ld b,l
	call p,0fa13h
	dec b
	inc d
	cp a
	xor 015h
	adc a,b
	ld c,h
	rlca
	inc (hl)
	ld a,a
	ld d,d
	pop af
	ld a,c
	add a,b
	sub h
	ei
	adc a,e
	call p,03184h
	call pe,0ef65h
	rra
	ld b,c
	xor 0b8h
	ld a,a
	rst 38h
	dec l
	ei
	or (hl)
	sbc a,e
	or e
	ld b,d
	ld b,l
	add a,d
	ld d,09bh
	rst 10h
	ld a,a
	and (hl)
	ld d,l
	call pe,0cfach
	xor b
l45c5h:
	ld d,(hl)
	ld d,l
	ld b,b
	ld sp,hl
	ld a,a
	ld b,d
	ld de,0cd1ch
	defb 0ddh,080h,050h ;illegal sequence
	ld (hl),c
	add hl,de
	inc bc
	adc a,a
	sbc a,l
	pop bc
	call 0c70dh
	dec h
	or l
	ccf
	ei
	call po,05482h
	ei
	ld l,c
	add a,(hl)
l45e4h:
	add a,a
	add hl,de
	ret po
	dec (hl)
	call c,sub_420ah
	call m,0f604h
	ld d,0bfh
	ex (sp),hl
	rst 10h
	sub c
	ld a,(bc)
sub_45f4h:
	jp p,l56f4h
	rst 28h
sub_45f8h:
	sub 0f0h
	ld a,a
	ld e,c
	add a,d
	cp 0a2h
	cpl
	adc a,d
	add hl,hl
	adc a,a
	dec l
	sbc a,e
	and d
	inc h
	inc h
	ld (hl),e
	ld e,e
	cp a
	sbc a,e
	jr $+129
	dec b
	or e
	dec bc
	ld a,(hl)
	pop af
sub_4613h:
	ld (hl),c
	jr nz,l45e4h
	ld b,(hl)
	ld a,(bc)
	call m,sub_6f7fh
	inc a
	defb 0ddh,044h ;ld b,ixh
	ld de,0c281h
	adc a,b
	sub a
l4623h:
	ld de,04984h
	add a,b
	dec bc
	dec e
	ret nc
	add a,e
	ld (hl),b
	jp nz,080e6h
	sub e
	ei
	inc c
	add a,d
	ld (0987fh),a
	adc a,c
	ld a,a
	inc d
	ld h,(hl)
	ld de,01f21h
	ld e,e
	inc h
	ld hl,088feh
	call p,sub_454ch
	jp po,02f6bh
	cp e
	cp a
	ld sp,hl
	dec l
	cp 028h
	dec d
	adc a,e
	ret
	add a,c
	adc a,b
	pop af
	call p,0a9a0h
	sbc a,d
	ld h,h
	add a,b
	ld e,e
	cp e
	sbc a,e
	ld l,b
sub_465eh:
	dec b
	sub l
	sbc a,(hl)
	ld d,h
	call po,0e99ch
	ld (0fd40h),hl
	ret
	ld a,(bc)
	add a,a
	rst 20h
	ld a,a
	ret po
	ld d,l
	ld a,h
	cp 081h
	add hl,sp
	inc bc
	add hl,bc
	exx
	sbc a,h
	defb 0ddh,080h,01eh ;illegal sequence
	pop bc
	ld a,(de)
	ex af,af'
	inc de
	push af
	and d
	call m,0fc96h
	ld (hl),07fh
	ld a,b
	ld (0f112h),hl
	rst 30h
	inc e
	ld b,c
	or 0bfh
	adc a,a
	adc a,d
	cpl
	add a,d
	dec hl
	ex (sp),hl
	inc h
	jp c,0ff71h
	ld c,a
	rst 20h
	dec d
	rst 28h
	ld (de),a
	add a,b
	and h
	ld l,a
	ld b,h
	and b
	ld d,(hl)
	sbc a,e
	pop bc
	ld d,(hl)
	ld l,e
	sbc a,e
	ld l,l
	ld d,d
	ld a,a
	and l
	ld d,h
	cp a
	ld b,e
	ld b,h
	inc (hl)
	add a,b
	ld b,d
	ld sp,05524h
	ld a,(bc)
	inc sp
	ld a,a
	jp p,01c0bh
	defb 0ddh,0fdh,082h ;illegal sequence
	daa
	defb 0fdh,001h,0ddh ;illegal sequence
	call c,0997dh
	exx
	add a,c
	ld b,(hl)
	add a,c
	ld a,b
	pop hl
	push af
	jp m,0fd65h
	ld (de),a
	add a,c
	ld e,e
	ld b,083h
	ld h,d
	call m,0f126h
	jp m,0fdb1h
	ld d,0e3h
	jr z,$+20
	dec hl
	ld hl,09342h
	ld (09ad0h),hl
l46e7h:
	inc b
	djnz l46e7h
	or d
	ld l,b
l46ech:
	push af
	sbc a,e
	sub 080h
	ld b,h
	jp p,l64a0h
	add a,b
	and c
	ld b,l
	ld d,(hl)
	sbc a,e
	ld l,h
	defb 0edh ;next byte illegal after ed
	ld a,a
	ei
	daa
	pop af
	and (hl)
	nop
	and h
	ld b,l
	sub a
	rst 0
	ex af,af'
	jr nz,l4787h
	ret z
	adc a,l
	sub d
	ld a,a
	call z,08182h
	rst 10h
	ld a,l
	ld sp,hl
	rst 10h
	add a,b
	inc hl
	djnz $+129
	pop bc
	inc (hl)
	ld sp,hl
	or a
	add iy,bc
	ld c,a
	ld l,c
	ld sp,03687h
	rst 38h
	ld c,c
	ld e,a
	add a,b
	ld c,l
	adc a,a
	inc d
	ld hl,0ac11h
	push bc
	inc hl
	ld de,0a084h
	cpl
	ld d,(hl)
	ld l,a
	set 5,l
	ld h,052h
	ld sp,02b80h
	push af
	sbc a,e
	jr nc,l47beh
	ld l,a
	ld (de),a
	adc a,h
	and b
	ld b,h
	ld c,a
	adc a,c
	cp e
	or (hl)
	sbc a,e
	add hl,hl
	cp 072h
	ld a,a
	defb 0fdh,037h,000h ;illegal sequence
	add a,e
	inc (hl)
	ld d,h
	inc b
	rra
	ld (0327fh),hl
	rla
	add a,h
	xor e
	rst 38h
	ld b,h
	ld a,l
	add a,d
	ld b,d
	ld sp,hl
	pop de
l4762h:
	ld de,07c80h
	ld c,b
	inc de
	ccf
	cp h
	and h
	call m,085aah
	pop af
	ld c,h
	rst 38h
	ld h,0e1h
	jp z,0e0fch
	ld b,h
	ld hl,0c1deh
	inc hl
	inc hl
	inc (hl)
	inc h
	add a,b
	scf
sub_477fh:
	ld a,a
	dec c
l4781h:
	cp e
	push iy
	ld bc,0047fh
l4787h:
	call p,02f22h
	ei
	adc a,a
	sub 098h
	adc a,e
	ld c,a
	and d
	xor e
	ld a,(hl)
	sbc a,e
	ld h,c
	jr nc,l4762h
	sbc a,b
	ld b,l
	ret z
	ld a,a
	cp 0e0h
	ld (l4623h),a
	inc sp
	cp 0c9h
	rlca
	jr nz,$+1
	ret m
	add a,c
	ld (hl),a
	rst 0
	ld (hl),c
	rla
	ld (hl),c
	add a,e
	ld l,c
	ex af,af'
	dec bc
	defb 0ddh,017h,08fh ;illegal sequence
	inc b
	dec de
	ret nz
	ld de,l6e31h
	inc (hl)
	ld sp,hl
	ld c,c
	ret nz
l47beh:
	add a,c
	ld d,(hl)
	add a,b
	rla
	cp 081h
	or 0bbh
	jp p,08314h
	ld h,d
	inc hl
	ex (sp),hl
	ld l,e
	add a,c
	inc h
	call po,sub_7fa8h
	ex (sp),hl
	cp c
	adc a,l
	or b
	call m,003eah
	ld l,01fh
	ld h,l
	jp m,092abh
	ld a,a
	dec b
	ld l,a
	ld b,d
	inc d
	ld a,(hl)
	rst 28h
	adc a,e
	adc a,e
	jp z,0942fh
	dec de
	inc (hl)
	ld a,a
	cp 0e4h
	push af
	ld h,b
	inc sp
	ld hl,08d11h
	cp 04bh
	ld (0c380h),a
	rst 38h
	ld e,l
	ld bc,01117h
	call z,0ddcch
	ld bc,01885h
	add a,c
	ld (hl),a
	rla
	add a,h
	adc a,b
	ld de,03133h
	sbc a,l
	cp h
	call nz,09986h
	add a,h
l4814h:
	dec b
	defb 0fdh,09ah,0b5h ;illegal sequence
	add hl,bc
	ld d,c
	ld b,d
	ld b,d
	ccf
	jp m,02208h
	ld b,d
	ret pe
	or (hl)
	ld a,a
	ld l,e
	call c,099e6h
	ld a,a
	ld (bc),a
	ld a,a
	sub c
	jp (hl)
	djnz l4885h
	sub b
	inc hl
	rst 38h
	add a,h
	scf
	cp 06dh
	sbc a,e
	jr nc,$+129
	inc hl
	ld b,h
	ret po
	ld a,a
	ld (0c022h),a
	or e
	ld de,0a413h
	inc c
	ld c,h
	ld (0100ah),a
	ret m
	ld a,a
	djnz l4814h
	ld a,l
	ld (hl),a
	ld (hl),a
	rla
	adc a,b
	ld a,a
	call 08770h
	sub (hl)
	add hl,de
	adc a,h
	ld a,b
	ld a,a
	and (hl)
	ld bc,l5180h
	inc (hl)
	add a,b
	ld a,a
	ld c,l
	add a,b
	add a,h
	dec (hl)
	ld h,d
	add a,a
	inc sp
	push af
	ret c
	ex af,af'
	ei
	adc a,b
	pop af
	cp e
	ld c,d
	ld de,09112h
	add a,c
	cpl
	and 01bh
	defb 0fdh,0cch,02eh ;illegal sequence
	ld hl,09674h
	add hl,de
	inc de
l4880h:
	sub l
	ld b,a
	jp m,08211h
l4885h:
	sub a
	or c
	ld e,e
	sbc a,e
	ld (de),a
	jp (hl)
	sub h
	or b
	ld d,c
	cp 0f4h
	dec sp
	nop
	ld (hl),b
	ld a,(hl)
	ld b,h
	inc hl
	ld b,(hl)
	ld h,e
	adc a,b
	dec a
	ld a,a
	jp c,l7f1ch
	ld (hl),c
	ld (l7c71h),hl
	add a,b
	ld b,b
	rst 10h
	ld (hl),c
	pop de
	rla
	defb 0ddh,0cch,070h ;illegal sequence
	and a
	add a,b
	dec de
	ld a,h
	ld a,a
	inc c
	ld de,0863fh
	sub l
	ld c,a
	call pe,sub_448ah
l48b9h:
	call nc,l5180h
	inc h
	ld (0b1f2h),hl
	ld (de),a
	ld e,c
	jp p,08c44h
	ld c,d
	xor 036h
	ld e,a
	inc hl
	rst 38h
	inc h
	ld sp,0c999h
	ld l,e
	sub b
	sbc a,l
	ld b,c
	ld a,a
	ld e,c
	add a,h
	add a,e
	ld d,l
	sbc a,e
	xor c
	jp p,0c0f0h
	add hl,hl
	cp (hl)
	inc d
	di
	and h
	cp 073h
	add a,l
	xor d
	ld d,(hl)
	daa
l48e8h:
	ld d,d
	ld (0100ah),a
	ld a,a
	ret nz
	rla
	and a
	ld a,a
	add a,c
	dec h
	add a,b
	ld (bc),a
	rst 0
	ld a,l
	ld de,08579h
	rst 28h
	ld a,a
	jr z,l48b9h
	sub d
	inc d
	cp (hl)
	jr nc,$+69
	add a,(hl)
	adc a,e
	add a,d
	ld a,a
	ld (de),a
	ld (l6480h),hl
	add a,e
	inc hl
	ld c,c
	di
	ld b,d
	jp p,02bedh
	xor 04eh
	ld h,l
	ret p
	ld a,a
	ld h,d
	rst 38h
	or h
	sbc a,e
	jp nz,0a7fbh
	rst 8
	push af
	jp z,l4482h
	pop af
	sbc a,d
	sub l
	sbc a,e
	cp d
	sbc a,h
	ld e,d
	sbc a,d
	ld d,023h
	ld b,e
	ld a,e
	ld a,(hl)
	ld h,e
	ld a,a
	inc (hl)
	ld a,(hl)
	ld bc,l6545h
	ld b,d
	inc de
	ld (00f7fh),a
	ld bc,01011h
	ld a,a
	ld (hl),h
	ld (hl),c
	add a,b
	jp nc,052f8h
	add a,c
	ld b,h
	cp 099h
	dec hl
	sbc a,l
	call c,0ca80h
	cp e
	jp nc,0ac80h
	ld a,(03128h)
	inc d
	ld h,c
	ld d,c
	inc h
	rst 38h
	ld c,c
	ld b,d
	pop de
	adc a,d
	ld h,a
	push hl
	dec bc
	ld (de),a
	ex (sp),hl
	ld e,d
	ld l,l
	and h
	ld a,c
	dec hl
	ld hl,l7ff1h
	sbc a,e
	ld a,(de)
	cp a
	sub l
	adc a,c
	ld h,l
	ld sp,hl
	and b
	ld a,a
	cpl
	ld (de),a
	ld c,a
	cpl
	or (hl)
	sbc a,e
	call nz,03123h
	ld (0aafbh),hl
	ld de,03bfeh
	jr z,l49dbh
	ld b,d
	ex af,af'
	add a,b
	and a
	dec bc
	ld b,c
	ld a,a
	cp l
	add a,b
	ld (08071h),hl
	ld d,h
	ld de,0c37dh
	ld a,a
	rst 0
	nop
	add a,c
	inc e
	ld d,(hl)
	ld sp,01b82h
	ld sp,l7f11h
	cp 084h
	jp p,0df9ah
	xor l
	inc h
	sub b
	ld (de),a
	pop af
	adc a,b
	dec hl
	ld d,(hl)
	call po,sub_505ch
	inc h
	sub (hl)
	ld sp,0fef1h
	ld c,(hl)
	add a,c
	adc a,d
	ld de,l5ff6h
	add a,h
	sub h
	ld d,(hl)
	ld a,a
	dec l
	ld c,a
	or (hl)
	sbc a,e
	call po,095fbh
	ld a,e
	ld (de),a
	sbc a,0bch
	ld a,a
	ld l,b
	add a,c
	ld b,h
	adc a,h
	adc a,e
	adc a,b
	add a,b
	dec d
	ld d,l
	ld c,e
	ld b,c
	add a,b
	adc a,c
l49dbh:
	pop de
	inc e
	ld a,a
	sub l
	dec d
	ld a,a
	add a,b
	ld hl,(099c1h)
	defb 0fdh,099h,087h ;illegal sequence
	rst 10h
	ld a,a
	sub h
	defb 0fdh,09ah,0edh ;illegal sequence
	ld d,d
	ld a,a
	add a,b
	ld l,d
	rst 38h
	ex af,af'
	ld d,(hl)
	cp a
	jp p,0f40bh
	ld b,c
	adc a,d
	jp nc,02d51h
	ld (0e3f5h),a
	adc a,(hl)
	ld a,a
	sub l
	ld hl,09b7fh
	and l
	ld e,083h
	dec d
	sbc a,d
	ld h,b
	or 06fh
	ld de,0246dh
	add a,e
	sbc a,e
	ld l,l
	push bc
	cp c
	dec l
	ld (hl),e
	nop
	adc a,c
	ld l,c
	sub e
	ld d,h
	cp 04ch
	ld hl,0240ah
	ld (03a24h),a
	ld b,c
	jp po,0f0b8h
	ld a,a
	ld (hl),c
	sub (hl)
	add a,b
	ld (0c982h),hl
	add a,b
	exx
	ld a,a
	sub h
	add a,b
	ex (sp),hl
	ld (hl),b
	jr c,$+51
	add a,l
	ld h,l
	ld de,084bah
	ld (hl),0cah
	ld c,d
	ld l,e
	add a,c
	nop
	ld c,a
	ld c,a
	inc d
	jp p,02234h
	sub (hl)
	ld bc,0e11fh
	sub d
	nop
	ret p
	and h
	sbc a,d
	ld e,e
	rra
	sbc a,e
	inc a
	call p,09a54h
	inc de
	call nz,01f7fh
	xor b
	sub (hl)
	sbc a,e
	in a,(013h)
	ld a,a
	or (hl)
	ld (de),a
	adc a,c
	inc l
sub_4a69h:
	nop
	ld (l7fd1h),a
	ld (l6623h),hl
	push de
	ld (0ff10h),a
	dec a
	add hl,hl
	nop
	add a,b
	ld h,d
	add a,e
	or d
	ld a,a
	ld e,e
	ret m
	add a,b
l4a7fh:
	sbc a,h
	jp p,0c192h
	ld c,c
	add a,d
	inc bc
	ld e,a
	ld b,a
	jp z,0bb88h
	add a,b
	sub c
	ld (de),a
	adc a,h
	djnz $+38
	ld (0ff04h),a
	ld d,h
	ld (0f2e2h),hl
	cp 079h
	xor h
	add a,b
	ld e,e
	rra
	sbc a,e
	dec (hl)
	ld (hl),e
	sbc a,d
	ld h,h
	or 053h
	add a,a
	ld h,l
	or (hl)
	sbc a,e
	ld l,b
	ld d,b
	adc a,(hl)
	cp (hl)
	ld hl,(08efeh)
	rst 38h
	push af
	add a,h
	add a,h
	ld (0e989h),hl
	inc sp
	inc hl
	add a,(hl)
	dec d
	sub b
	ld d,h
	rst 38h
	defb 0edh ;next byte illegal after ed
	add a,b
	inc l
	ld c,(hl)
	add a,c
	ld a,0cdh
	add a,a
	ld e,e
	sbc a,l
	add a,b
	sub l
	add a,b
	rla
	ld a,l
	add a,l
	add hl,bc
	inc de
	ld bc,0cb43h
	jp pe,0c3bbh
	rst 38h
	ret po
	add a,l
	ld b,d
	xor 045h
	ld (080f1h),hl
	ld h,h
	call p,023ddh
	xor l
	cpl
	sbc a,e
	sbc a,e
	adc a,a
	jp z,0ad9ah
	ret m
	ld a,(l5aach)
	ld e,a
	sbc a,e
	ld c,e
	cp (hl)
	inc h
	ld h,h
	ld b,e
	add a,b
	or c
	or e
	add hl,sp
l4afah:
	add a,d
	call z,sub_7f6dh
	ret nc
l4affh:
	ld d,c
	add a,(hl)
	xor e
	djnz $+1
	halt
	sub (hl)
	add a,b
	dec hl
	add a,c
	ld b,a
	exx
	sbc a,b
	sbc a,c
	ld a,a
	sbc a,l
	jp m,083a5h
	inc h
	add a,b
	ld b,h
	ld b,h
	nop
	add a,b
	ld l,c
	ld l,e
	or l
	add a,b
	ld (hl),0fah
	call nc,039edh
	ld b,c
	rst 38h
	ld l,0e0h
	ld (09b1fh),bc
	ld l,e
	add a,b
	dec hl
	rst 38h
	ld e,e
	nop
	xor e
	ld l,e
	sbc a,e
	ld l,h
	ld b,h
	ld h,(hl)
	sbc a,h
	add a,b
	ld h,013h
	ld b,l
	jp 08096h
	ld h,l
	cp 084h
	ld d,h
	add a,l
	pop de
	sub d
	xor a
	nop
	nop
	push bc
	dec l
	ld bc,02affh
	ld a,a
	ld l,e
	inc d
	inc c
	ld d,l
	ret c
	call pe,08880h
	inc d
	dec d
	rst 20h
	xor d
	add a,(hl)
	sub d
	ret nz
	add a,(hl)
	rst 8
	call z,00fech
	or 0b4h
	sbc a,e
	push bc
	sub b
	cp l
	rst 38h
	and 000h
l4b6ah:
	sbc a,e
	jp c,l4623h+2
	xor 080h
	jr c,l4b6ah
	ld d,d
	ld b,d
	add a,c
	and e
	inc hl
	cp 035h
	ld a,a
	ld b,l
	call z,00d59h
	ld l,a
	add a,(hl)
	cp a
	ld a,a
	pop de
	ret nz
	add hl,de
	jp 0c139h
	rla
	dec c
	inc e
	sub 071h
	rst 38h
	ei
	ld c,b
	ld e,a
	jp nz,006e2h
	and c
	defb 0fdh,012h,043h ;illegal sequence
	add a,0e6h
	and l
	call m,sub_446ah
	di
	ld l,d
	pop hl
	call 0cb00h
	ld b,09bh
	ld l,l
	ld c,(hl)
	ld a,a
	adc a,d
	inc de
	jp m,0f022h
	sbc a,h
	add a,l
	cp b
	ld (hl),d
	ld a,a
	sbc a,c
	cp 054h
	cp h
	dec d
	add a,d
	ld d,a
	push de
	ld c,e
	add a,b
	ex (sp),hl
	inc hl
	inc (hl)
	ld (iy+03fh),e
	dec c
	sbc a,h
	rst 38h
	sbc a,c
	ld hl,0ed7fh
	pop de
	cpl
sub_4bcch:
	inc d
	ld a,e
	sbc a,h
	ld a,a
	or d
	ld (de),a
	ld (bc),a
	call m,080a9h
	adc a,c
	or (hl)
	ld h,l
	ld h,056h
	ld a,(hl)
	and l
	ld b,d
	inc h
	sbc a,l
	and l
	sbc a,e
	or d
	ld h,(hl)
	scf
	and 064h
	pop bc
	inc hl
	rst 38h
	adc a,d
	rst 30h
	ret z
	cp 0e1h
	inc de
	add a,(hl)
	ld e,e
	push de
	sbc a,b
	ld hl,l7ffch
	ld l,d
	cpl
	ld (0c39ch),a
	jp (hl)
	ld a,a
	ld bc,0b9f9h
	ld e,h
	ld c,c
	defb 0edh ;next byte illegal after ed
	call m,sub_4123h
	inc c
	add hl,sp
	ld (de),a
	push bc
	ld d,a
	rrca
	sbc a,e
	sbc a,d
	adc a,a
	ld a,d
	jp p,01533h
	ld a,(hl)
	rst 30h
	rlc c
	ld a,a
	or e
	ld l,(hl)
	ld h,h
	cp l
	ld d,(hl)
	sub c
	dec hl
	add a,h
	ex de,hl
	ld a,a
	inc e
	inc sp
	ld a,a
	ld l,h
	sub e
	ld hl,080a7h
	ret z
	push hl
	ld a,a
	inc sp
	adc a,a
	adc a,l
	ld d,c
	ld (hl),0dch
	adc a,d
	ld e,a
	ld a,(hl)
	call m,0be3ah
	and e
	dec hl
	call z,0f729h
	ld e,h
	ld e,a
	ret m
	rla
	pop af
	ld d,(hl)
	dec b
	rst 38h
	ld de,l599dh
	sbc a,e
	ld a,a
	jp z,0bc44h
	ld d,d
	cp 024h
	ld d,h
	rst 30h
	ld l,a
	nop
	ld c,d
	inc sp
	add a,a
	ld c,(hl)
	sub b
	ld e,d
	add a,b
	call m,sub_5e89h
	ld sp,03abdh
	inc (hl)
	pop hl
	dec bc
	ld (de),a
	cp b
	xor d
	rst 38h
	and l
	ld a,l
	defb 0fdh,01eh,001h ;illegal sequence
	inc h
	adc a,b
	cpl
	sub l
	xor d
	call m,0a492h
	ld a,a
	add a,l
	dec b
	ld b,h
	inc de
	ld (0b89bh),hl
	ld e,d
	ld b,(iy+07eh)
	ld d,e
	inc sp
	ld a,a
	ld h,a
	add a,a
	ld c,c
	inc de
	call m,08962h
	ld a,b
	call m,0887fh
	or h
	call z,09638h
	adc a,h
	ld h,a
	pop af
	sbc a,b
	cp l
	and l
	and h
	sbc a,08dh
	ret z
l4c9fh:
	add a,b
	sub d
	pop af
	rst 18h
	ld h,c
	ld a,a
	call p,08b1fh
	sub b
	ld hl,001f0h
	ld (hl),e
	jr nz,l4d2eh
	add hl,sp
	dec h
	ld d,h
	rst 28h
	inc de
	ld (0bcf5h),a
	ld a,(hl)
	push de
	adc a,0fbh
	ld b,(hl)
	ld a,a
	ld sp,08131h
	cp (hl)
	sub (hl)
	rst 18h
	ld (hl),l
	adc a,(hl)
	dec d
	ld (hl),a
	ld b,b
	ld e,e
	defb 0fdh,089h,0afh ;illegal sequence
	ld a,(hl)
	ex (sp),hl
	ld b,0bbh
	or b
	rrca
	out (082h),a
	ld b,h
	jp p,0a495h
	sub (hl)
	ld b,h
l4cdah:
	push af
	ld d,(hl)
	add a,h
	jp c,l5999h
	sbc a,e
	sub l
	ld e,h
	ld l,c
	ld b,l
	ld b,(hl)
	ld b,c
	xor 0c4h
	add a,h
	adc a,023h
	jp p,03691h
	adc a,d
	sbc a,b
	ld a,a
	inc (hl)
	pop de
	sub b
	ld sp,0887fh
	inc h
	adc a,(hl)
	jp nc,00400h
	ld h,e
	ld h,004h
l4d00h:
	ld b,l
	or c
	rst 8
	ld l,c
	sub c
	or e
	sub c
	add a,0e3h
	inc (hl)
	ld (bc),a
	ld (0c2b1h),hl
	ld d,h
	add a,b
	dec e
	res 7,e
	ld a,07eh
	sbc a,b
	pop hl
	ld b,a
	xor l
	xor d
	ld (de),a
	ld a,h
	ld b,l
	jr nz,l4c9fh
	rst 38h
	djnz $+23
	ld d,(hl)
	ld d,l
	sbc a,e
	add a,l
	add a,b
	rst 28h
	ld a,a
	ld a,(bc)
	sub l
	ld c,l
	xor a
	adc a,c
l4d2eh:
	ld b,(hl)
	ld b,h
	add a,b
	ld a,0beh
	xor d
	adc a,c
	ld a,c
	call m,08bc8h
	adc a,h
	sub d
	jp p,0c6fdh
	ld h,(hl)
	dec c
	ld h,(hl)
	ret c
	ld d,(hl)
	sbc a,e
	ld d,d
	jr l4cdah
	ld b,l
	and h
	and e
	ld b,l
	rla
	ld a,l
	ret z
	ld de,l5215h
	call z,01cf5h
	inc sp
	ld b,(hl)
	ld h,(hl)
	xor a
	ld d,a
	add a,c
	adc a,a
	ld a,a
	xor d
	ld b,034h
	adc a,a
	cp 05eh
	ld a,a
	ld a,(bc)
	rrca
	pop af
	ld d,c
	rst 38h
	dec h
	ld h,l
	sbc a,e
	xor (hl)
	ld c,d
	ld l,d
	ld a,a
	ld (bc),a
	push bc
	ld d,d
	ld e,(hl)
	inc h
	ld b,(hl)
	ld h,h
	ld h,l
	ld (0a2f8h),a
	ld b,h
	add a,c
	daa
	ld b,h
	add a,h
	ld c,e
	ld sp,02e90h
	adc a,b
	xor h
	dec c
	inc d
	ld d,h
	jp pe,010d6h
	ld b,(hl)
	ld h,(hl)
	adc a,c
	ld (08722h),hl
	call nc,0259ch
	inc (hl)
	ld b,c
	add a,d
	ld a,(de)
	ld (0b1a6h),hl
	sbc a,b
	ld d,c
	and e
	and c
	rla
	xor l
	sub c
	add a,b
	sbc a,0abh
	ld e,07fh
	ld c,c
	cp e
	ld (bc),a
	ld h,l
	cp 01eh
	ld sp,hl
	ld a,a
	call m,00415h
	sbc a,d
	ld a,d
	ld h,l
	or h
	sbc a,e
	ld e,e
	rst 38h
	sbc a,e
	inc h
	ld (bc),a
	ld hl,0a4ffh
	add a,b
	ld h,e
	ld b,h
	ret m
	ld d,l
	inc d
	adc a,d
	and h
	ld d,c
	ld b,h
	adc a,c
	sbc a,(hl)
	ld d,e
	ld sp,hl
	ld b,(hl)
	pop de
	inc hl
	ld sp,07952h
	ld a,(hl)
	ld h,l
	ld h,h
	inc e
	sub d
	ld (hl),b
	inc hl
	add a,098h
	dec l
	sbc a,e
	ld (0a40ch),a
	jp nc,l4480h
	ld h,(hl)
	add a,c
	or 013h
	jp p,l4a7fh
	dec bc
	jp nc,l5627h
	ld a,a
	dec b
	ld a,a
	xor d
	inc bc
	pop af
	xor c
	ld (hl),h
	ld sp,09804h
	nop
	jp p,01f48h
	or c
	inc hl
	ld l,l
	djnz l4e81h
	inc b
	ld (hl),h
	sub d
	jp p,0338fh
	ret nz
	ld e,d
	add hl,bc
	adc a,b
l4e0dh:
	inc l
	ld d,e
	ld d,d
	ld d,e
	add a,h
	ld c,c
	jp pe,0ac51h
	inc de
	add hl,de
	add a,07fh
	inc (hl)
	ld a,a
	cpl
	ld (de),a
	sub b
	add a,a
	ld (073a0h),hl
	dec bc
	sub h
	djnz l4ea6h
	ld b,e
	pop af
	ld a,a
	sbc a,(hl)
	add a,b
	ld a,(0ca69h)
	push hl
	ex (sp),hl
	dec l
	ld a,a
	sub 0e0h
	sub l
	dec bc
sub_4e37h:
	rst 38h
	ret po
	ld (de),a
l4e3ah:
	push bc
	ld l,(hl)
	rrca
	ld a,l
	add a,012h
	ld de,0f3fah
	ld b,h
	add a,(hl)
	djnz $+1
	jr nc,$+56
	adc a,e
	add a,c
	dec a
	dec sp
	adc a,b
	inc h
	adc a,d
	ld h,c
	inc (hl)
	ld a,a
	ld h,l
	ld (0367ch),a
	inc (hl)
	ld a,a
	adc a,d
	or d
	call p,sub_4a69h
	ld h,e
	sub l
	call z,09966h
	xor 0a0h
	dec (hl)
	ld d,l
	and c
	adc a,h
	inc c
	call c,092abh
	add a,b
	ld l,c
	sbc a,(hl)
	add a,b
	ex de,hl
	add a,c
	ld h,a
	jp m,07each
	push hl
	call po,0b050h
	add a,d
	ld h,b
	jp c,0877eh
	ld l,(hl)
l4e81h:
	jr nc,l4e0dh
	defb 0fdh,0ffh,0c9h ;illegal sequence
	call nz,0284bh
	ld sp,hl
	jr l4e3ah
	rst 8
	adc a,d
	ld h,l
	ld b,h
	ld l,d
	ld (hl),h
	and d
	ld a,c
	inc bc
	ld h,e
	inc (hl)
	or 048h
	add a,h
	or (hl)
	ld a,a
	rst 38h
	ld l,e
	ld a,a
	out (033h),a
	adc a,(hl)
	or 08eh
	add a,e
	ld d,l
l4ea6h:
	ld d,e
	sub l
	cp c
	call po,08ca4h
	and (hl)
	jp c,08802h
	adc a,0abh
	ld h,b
	inc sp
	dec (hl)
	xor b
	inc e
	add a,c
	xor d
	sbc a,d
	add a,b
	ld e,e
	adc a,(hl)
	cp 0b5h
	call m,0ff14h
	push hl
	ld h,l
	ld (bc),a
	ld c,d
	ld a,(hl)
	adc a,h
	or (hl)
	add a,b
	ld (hl),b
	call m,09b8fh
	ret m
	ld (hl),l
	inc de
	rst 38h
	sub a
	jp (hl)
	defb 0edh ;next byte illegal after ed
	add hl,hl
	ld l,l
	ld c,c
	rst 30h
	ld a,c
	ld d,d
	call nc,sub_744dh
	ld b,(hl)
	ld a,a
	dec de
	inc sp
	inc hl
	ld b,c
	ld a,a
	sub d
	dec (hl)
	add a,l
	call po,sub_62cbh
	ld b,e
	pop af
	ld (hl),e
	inc h
	ld l,h
	xor 09ch
	and a
	ld c,(hl)
	inc h
	xor h
	sub l
	inc (hl)
	ld b,d
	sbc a,a
	sub c
	sub h
	sub l
	sub c
	sbc a,e
	rra
	add a,e
	sbc a,l
	rst 0
sub_4f03h:
	cp 073h
	jp po,l5fach
	inc bc
	xor 0eah
	ld a,(de)
	ld h,b
	add a,c
	ret pe
	cp e
	ld b,h
	ld e,a
	in a,(0f0h)
	call p,08d7fh
	jp c,l4345h
	ex (sp),hl
	ex (sp),hl
	dec (hl)
	pop bc
	dec hl
	inc d
	sbc a,h
	ret c
	ld d,031h
	ld hl,0fb16h
	cp d
	nop
	dec d
	ld l,h
	ld b,l
	ld a,a
	cp 070h
	ld b,(hl)
	xor h
	ld a,(hl)
	ld l,(hl)
	sbc a,b
l4f34h:
	ld c,l
	ld a,a
	adc a,c
	sub b
	ld h,l
	sbc a,e
	add hl,hl
	or d
	ld l,c
	rra
	call nz,sub_75deh
	ld a,a
	call 07a7eh
	cp h
	nop
	cp 0edh
	rst 20h
	add a,c
	sub c
	ld de,0830fh
	jp nz,0bab1h
	ld l,a
	ld a,a
	ld d,b
	inc h
	ld c,(hl)
	ld b,h
	ld (de),a
	sbc a,h
	xor a
	ld a,a
	ld d,c
	jp 0fe11h
	call nz,098efh
	adc a,e
	ld a,(l7f63h)
	ld e,l
	inc d
	defb 0fdh,0edh,023h ;illegal sequence
	ld (0537fh),a
	ld d,0a8h
	ld c,d
	and d
	ld h,a
	ld (hl),h
	sbc a,h
	inc h
	djnz l4f8fh
	jp z,00b16h
	add a,b
	ld c,(hl)
	rra
	scf
	add a,h
	cp e
	ret m
	and 0feh
	ld sp,0ea1fh
	daa
	pop hl
	dec h
	inc b
	add a,a
	ret c
	ld d,b
l4f8fh:
	adc a,a
	ret pe
	inc hl
	djnz l4f96h
	adc a,d
	rst 10h
l4f96h:
	sbc a,b
	ld a,l
	xor l
	di
	ld hl,(0aa4ch)
	dec sp
	defb 0edh ;next byte illegal after ed
	ld h,0cdh
	exx
	ld a,(hl)
	rst 28h
	jp 03221h
	call m,03431h
	adc a,e
	ld d,h
	jp c,09be7h
	dec h
	ld (hl),l
	add hl,sp
	inc l
	ld b,l
	add a,l
	xor c
	ld a,(hl)
	ld (de),a
	adc a,c
	exx
	dec c
	inc hl
	add a,d
	inc de
	ld h,00dh
	ld l,e
	ret nz
	ld hl,(0dda4h)
	rra
	add a,h
	xor 0feh
	add hl,sp
	xor h
	ld a,a
	ld a,e
	jr c,$+28
	inc d
	ld b,d
	rst 38h
	ld a,a
	or b
	ret p
	ld a,(hl)
	and h
l4fd7h:
	defb 0edh ;next byte illegal after ed
	defb 0ddh,0f2h,08bh ;illegal sequence
	rst 38h
	push bc
	ld a,l
	call nc,0f463h
	adc a,e
	ld h,e
	ld d,(hl)
	ret po
	ld (032fch),a
	ld sp,08aa2h
	ld a,(bc)
	dec hl
	inc h
	ld sp,08b5eh
	jp z,l48e8h
	ret po
	or c
	inc bc
	ld d,(hl)
	jp (hl)
	adc a,e
	add a,(hl)
	dec h
	ret p
	sbc a,b
l4ffeh:
	add a,e
	sub a
	rst 38h
	or e
	ld a,(hl)
	ld d,h
	and c
	ret c
	ld (hl),e
	inc (hl)
	rra
	add a,d
	ld l,l
	jp nc,l46ech
	cp (hl)
	ld l,l
	sbc a,0f8h
sub_5012h:
	inc d
	cp c
	ld h,a
	add a,a
	adc a,h
	inc h
	push hl
	add hl,hl
	dec c
	cp 0e9h
	ld (01cf6h),hl
	ld h,d
	ld a,a
	ld bc,l4fd7h
	ld a,a
	ld l,l
	pop hl
	ld c,d
	ei
	set 4,d
	jp z,l6762h
	ret z
	ld a,(hl)
	rst 8
	cp d
	adc a,e
	xor h
	call m,sub_640bh
	ld h,h
	ld b,l
	ld h,e
	inc de
	sub h
	ld d,d
l503eh:
	rra
	halt
	ld d,(hl)
	add a,c
	and 0a2h
	xor 073h
	add a,h
	ld l,h
	ld d,023h
	ex (sp),hl
	ld a,(hl)
	or l
	inc de
	rra
	ld l,e
	ret po
	cp d
	defb 0edh ;next byte illegal after ed
	push bc
	cp e
	ld b,c
	ld a,a
	ld h,b
	sbc a,014h
	ld e,b
	ld b,c
sub_505ch:
	and a
	jp p,l417ch
	call pe,07155h
	ld e,e
	ld a,a
	xor e
	call nz,0ed9ch
	defb 0edh ;next byte illegal after ed
	and (hl)
	add a,c
	xor (hl)
	sub a
	cp e
	inc (hl)
	inc de
	call p,0e4c4h
	push bc
l5075h:
	rst 10h
l5076h:
	jp (hl)
	add a,b
	ld d,(hl)
	ld a,l
	sbc a,h
	ld a,a
	ld c,(hl)
	xor 007h
	ld b,e
l5080h:
	ld b,d
	ld b,d
	ld (0f194h),a
	jp po,09157h
	inc h
	ret m
	call pe,08ef6h
	ld (0d200h),hl
	ld sp,0ba88h
	and h
	sbc a,h
	rra
	rst 30h
	push af
	and (hl)
	defb 0ddh,092h,0fdh ;illegal sequence
	ld b,h
	rst 38h
	ld b,c
	add a,h
	ld a,h
	pop af
	inc h
	ld b,c
	ld a,a
	or (hl)
	and l
	call pe,0e6cbh
	ld (hl),h
	jp l4781h
	djnz l512fh
	or (hl)
	jp p,l5fa7h
	ld de,007d0h
	inc hl
	dec (hl)
	ld h,l
	ld h,h
	ld a,a
	add a,c
	ld h,h
	ld sp,0138eh
	ld b,h
	call nc,023f5h
	sub c
	dec hl
	call m,0f2abh
	ld (hl),07fh
	ld h,d
	call m,083cah
	sbc a,091h
	ld sp,08534h
	ld a,b
	rra
	jp p,0024dh
	rrca
	or 06bh
	ld h,l
	pop af
	ld b,h
	ld bc,0828ah
	rst 20h
	ld l,c
	add a,h
	inc bc
	rst 38h
	ld e,e
	ld h,(hl)
	or 0aeh
	jp c,006d9h
	and b
	dec (hl)
	add a,c
	ld a,a
	nop
	sbc a,e
	or h
	ei
	out (0f8h),a
	call c,0f4e6h
	ld a,a
	jr z,l5123h
	ld (bc),a
	ld a,a
	or (hl)
	ld l,a
	sbc a,(hl)
	ld a,a
	ld (bc),a
	ld (hl),d
	jr z,$+4
	defb 0fdh,099h,001h ;illegal sequence
	or a
	ld a,a
	ld a,a
	scf
	ei
	ld h,b
	or 066h
	cp a
	sub d
	cp 07ch
	sub d
	defb 0fdh,083h,0d0h ;illegal sequence
	ei
	ld h,(hl)
	inc hl
	ld e,a
	ld d,(hl)
	defb 0fdh,0bch ;cp iyh
l5123h:
	and d
	ld h,c
	djnz l512bh
	cp a
	ld c,d
	adc a,d
	ld (hl),a
l512bh:
	ld a,(hl)
	ld (hl),b
	ld a,(hl)
	adc a,a
l512fh:
	jp p,0f418h
	and h
	ld l,e
	call p,sub_45f8h
	inc d
	ld c,a
	sbc a,b
	sub a
	add a,b
	ld a,0b6h
	jp pe,l7fc8h
	ret
	defb 0fdh,047h,077h ;illegal sequence
	ld a,a
	jp pe,0fa66h
	ret z
	add a,b
	or c
	jp nz,083ffh
	sub h
	ld c,a
	ei
	or e
	adc a,h
	add a,h
	adc a,(hl)
	rst 30h
	cp a
	ld a,l
	ld c,b
	ld (hl),b
	rlca
	defb 0fdh,07fh,084h ;illegal sequence
	rra
	add a,b
	and b
	pop af
	ld (08a1fh),a
	defb 0fdh,0fdh,0e7h ;illegal sequence
	or (hl)
	adc a,d
	inc l
	cp 0b0h
	rlca
	ld c,09dh
	call c,0c7cch
	ld d,c
	ld l,e
	ld a,(bc)
	add hl,bc
	ld e,d
	ret p
	inc sp
	ld a,(hl)
	ld a,a
	call p,065d9h
l5180h:
	jp m,0e154h
	call p,0f611h
	ld d,0b1h
	ei
	ld e,c
	ei
	nop
	jr l51e4h
	ld h,l
	adc a,h
	adc a,l
	ld b,c
	ld c,(hl)
	ld (bc),a
	sub a
	call z,0dccch
	call 0d5d9h
	inc l
	dec bc
	ld b,d
	sbc a,h
	ld a,(bc)
	call 090ddh
	call m,0c43eh
	ld (hl),a
	jr nc,l5219h
	defb 0fdh,07fh,076h ;illegal sequence
	ld b,c
	or 0e5h
	add a,c
	ld b,h
	ld b,h
	inc d
	add a,(hl)
	add a,(hl)
	cpl
	ld b,c
	cp 0a1h
	ld l,e
	cp e
	add a,b
	cp d
	add hl,bc
	adc a,e
	defb 0fdh,000h,006h ;illegal sequence
	defb 0ddh,0ddh,097h ;illegal sequence
	dec bc
	ld l,l
	add hl,bc
	ld a,(bc)
	ret m
	ccf
	ld h,h
	and (hl)
	ld d,h
	ld bc,0a780h
	ld a,a
	ret pe
	add a,078h
	jp p,0f711h
	ld h,b
	or 0bfh
	ld de,l4f34h
	pop af
	add a,l
	ld l,(hl)
	ld b,h
	rst 38h
	ld h,b
l51e4h:
	defb 0ddh,02fh,0c7h ;illegal sequence
	rla
	inc c
	ld (hl),h
	jr l5262h
	ret nc
	add hl,sp
	nop
	dec c
	add hl,bc
	sub h
	add a,b
	rst 8
	inc c
	ld a,(hl)
l51f6h:
	sub e
	nop
	jp 0f47fh
	ld c,c
	ld b,06bh
	halt
	inc sp
	jp m,0f632h
l5203h:
	ei
	add a,b
	ld hl,01423h
	ccf
	dec de
	rst 38h
	ld c,a
	rst 38h
	ret nc
	ld d,c
	adc a,a
	ld a,a
	push hl
	ld sp,hl
	scf
	ld a,(bc)
l5215h:
	ld h,h
	call 09207h
l5219h:
	and d
	rst 10h
	xor 07ch
	ld h,l
	call pe,0f7b9h
	rst 20h
	dec b
	inc de
	ld a,b
	add a,b
	jp m,l5f69h
	add a,b
	ld c,b
	push af
	adc a,l
	ld hl,0fc4fh
	sbc a,d
	ld (de),a
	cp (hl)
	ccf
	pop af
	add a,l
	add hl,bc
	ld d,(hl)
	ld l,a
	add a,a
	or c
	rla
	call c,0d97fh
	ret
	ld (hl),b
	adc a,d
	dec e
	and e
	rlca
	add a,h
	ld a,h
	ld (hl),l
	ld l,c
	rst 30h
	sub 004h
	rra
	adc a,b
	adc a,b
	add a,a
	ld a,a
	and (hl)
	rst 38h
	jp z,0f7fch
	ld h,021h
	or b
	jp pe,0ff43h
	or d
	add a,e
	xor b
	ld a,a
	rst 38h
	cp e
l5262h:
	ld c,e
	nop
	di
	ld (hl),c
	rst 30h
	jp 0087ch
	xor b
	add a,a
	jp po,l7981h
	or a
	ex de,hl
	inc d
	rlca
	ret m
	or l
	defb 0fdh,014h,07fh ;illegal sequence
	adc a,c
	ld c,a
	add a,a
	add a,b
	ex (sp),hl
	xor l
	rlca
	cp 0c8h
l5281h:
	or 0bbh
	inc e
	pop af
	inc d
	ld de,03698h
	pop af
	add a,c
	ld d,03fh
	inc de
	ld b,c
	ld a,a
	rst 38h
	sub a
	adc a,l
	dec h
	or b
	cp 0c7h
	ld (hl),a
	cp h
	ld a,c
	adc a,(hl)
	add a,a
	add hl,de
	ret nz
	jp (hl)
	defb 0ddh,0eeh,0b4h ;illegal sequence
	rlca
	call 00a7ah
	add a,c
	ld a,(hl)
	adc a,(hl)
	ret pe
	adc a,(hl)
	add a,a
	ld (hl),b
	xor h
	adc a,a
	adc a,a
	ld a,a
	pop hl
	defb 0fdh,09ah,0b5h ;illegal sequence
	ld (de),a
	ld d,c
	ld b,e
	ld b,e
	ld sp,hl
	add a,l
	inc (hl)
	cpl
	add a,e
	xor 0ffh
	and 083h
	ld c,b
	ld d,b
	rst 38h
	jp p,0f796h
	ld (09300h),a
	ld e,c
	and 07fh
	call pe,0efcbh
	ld d,(hl)
	ld (hl),b
	push af
	ld hl,(0ff87h)
	sbc a,c
	adc a,c
	ld a,a
	jp (hl)
	sbc a,(hl)
	add a,b
	cp a
	ld a,a
	ld (bc),a
	and h
	cp c
	dec l
	rlca
	add a,b
	cp 0c4h
	rst 38h
	ld b,h
	inc c
	push af
	ld l,e
	ld e,a
	inc (hl)
	ei
	sbc a,(hl)
	cp e
	sbc a,c
	adc a,b
	ld hl,09585h
	rst 38h
	cp 061h
	add a,d
	rla
	ld c,e
	di
l52fdh:
	ld a,h
l52feh:
	ld a,b
	ld (hl),l
	ld b,087h
	inc l
	ld a,c
	ld a,a
	ld h,l
	inc b
	jp m,01979h
	adc a,(hl)
	sbc a,c
	ld a,a
	add a,c
	ld l,a
	ld a,h
	xor l
	pop af
	dec sp
	or d
	add a,(hl)
	in a,(066h)
	ld a,a
	ld h,0f2h
	nop
	ld d,c
	inc h
	ld sp,0b1f2h
	ld (de),a
	di
	ld de,l4461h
	adc a,d
	add a,b
	or c
	ld h,(hl)
	ld d,b
	jp p,0d78ch
	add a,b
	add a,a
	ld a,a
	ld a,(bc)
	defb 0ddh,07fh,080h ;illegal sequence
	ld hl,0999dh
	sbc a,h
	inc (hl)
	cp (hl)
	ld (hl),e
	ld a,(bc)
	adc a,b
	push af
	ld e,l
	nop
	adc a,h
	rst 38h
	sbc a,c
	ld a,a
	ret pe
	ld b,07fh
	rst 30h
	ld d,e
	xor h
	ld d,c
	cp (hl)
	cp h
	add hl,hl
	ret po
	ld a,a
	pop af
	ld de,0a8f5h
	add a,c
	ld (02ef3h),a
	ld (08822h),a
	sbc a,e
	add a,e
	add a,b
	ld l,b
	cp 0a3h
	xor b
	adc a,d
	cp 071h
	call 0870ch
	add hl,de
	sbc a,l
	add a,a
	or (hl)
	sub h
	adc a,e
	call 0f4eeh
	xor h
	jp p,l7ff0h
	inc hl
	adc a,b
	xor 0feh
	ld a,a
	ld a,a
	dec h
	ld a,b
	ld (l7031h),a
	cp 072h
	call m,0f451h
	ld sp,iy
	ret nc
	rst 38h
	inc sp
	ccf
	jp z,0fa7dh
	sub e
	ld h,(hl)
	call m,02971h
	add a,b
	ld a,012h
	ret p
	xor c
	ret
	rst 30h
	ld l,b
	inc c
	call c,043f0h
	ld h,e
	ld a,b
	ld a,c
	add a,b
	ld a,h
	sub (hl)
	adc a,(hl)
	ld a,a
	add a,080h
	and l
	add a,a
	sbc a,(ix-05fh)
	jp m,000fah
	sub d
	ld a,h
	add a,b
	cp h
	adc a,b
	rlca
	add a,a
	or b
	cp 080h
	ld a,a
	ld hl,02214h
	ld b,h
	inc (hl)
	ccf
	sbc a,b
	rlca
	ld sp,093fbh
	defb 0fdh,092h,0feh ;illegal sequence
	cp b
	rst 38h
	push hl
	ld a,b
	pop bc
	call 0c5c7h
	rra
	dec bc
	ld a,b
	ld a,e
	ld c,d
	xor 0e8h
	ld a,(hl)
	rst 30h
	sub a
	ld c,027h
	rrca
	ld (hl),a
	ld a,a
	cp l
	and b
	or c
	ld a,(bc)
	jp po,0f377h
	nop
	cp l
	jp nz,08794h
	inc h
	ld d,(hl)
	cp a
	push af
	ld b,b
	ld b,c
	ld bc,03113h
	ld de,03f23h
	ld l,e
	push af
	ld a,(hl)
	ld d,l
	ld a,a
	pop hl
	jp (hl)
	add a,a
	ld (hl),b
	call nz,0dc4eh
	ld a,e
	ld h,b
	ld a,l
	xor 099h
	sbc a,b
	or h
	rst 30h
	call 0137fh
	rst 18h
	add a,e
	add a,d
	ex (sp),hl
	ld a,b
	or 0c2h
	sbc a,d
	ld (hl),a
	or c
	or c
	add a,b
	ret pe
	add a,a
	ld l,d
	add a,a
	jp 00594h
	ld l,e
	add a,b
	add a,c
	ld de,0f314h
	inc (hl)
	cp 081h
	cpl
	rst 38h
	defb 0fdh,0c9h,000h ;illegal sequence
	ld a,(l7f00h)
	dec sp
	call 0f6cch
	ld c,b
	call 08ac0h
	ret c
	cp 0f7h
	call po,0e97dh
	ret
	call c,0f97ch
	rst 20h
	add a,l
	ld a,(003c8h)
	xor e
	pop af
	ret c
	ld e,a
	sbc a,b
	adc a,0a2h
	jp pe,036efh
	add a,b
	dec a
	ld (0bc12h),a
	jp (hl)
	add a,b
	add hl,bc
	cp e
	rst 38h
	add a,d
	call z,0ce80h
	rst 38h
	adc a,e
	pop af
	ld e,a
	ld a,(bc)
	ld a,a
	or a
	add hl,bc
	cp 0a7h
	defb 0fdh,042h,0ddh ;illegal sequence
	exx
	sub a
	ld b,d
	defb 0ddh,08ah,0c6h ;illegal sequence
	ld de,0aa0fh
	inc h
	rst 8
	or c
	cp 01dh
	xor h
	adc a,(hl)
	adc a,l
	ld h,09eh
	sbc a,c
	add a,b
	pop bc
	ld a,a
	xor 080h
	ex af,af'
	ld a,l
	jp nz,0d770h
	ld d,a
	ld a,a
	rst 8
	inc de
	cpl
	di
	cp e
	or 0dfh
	ld a,(hl)
	ld e,h
	dec hl
	ret nz
	ld a,a
	dec b
	ld h,(hl)
	cp e
	or l
	ld a,d
	ld e,a
	add a,c
	dec h
	cpl
	add a,(hl)
	dec d
	pop af
	add a,c
	dec h
	dec d
	cp 09bh
	add a,c
	ld e,c
	ld a,h
	sbc a,c
	ld a,(hl)
	ld d,a
	adc a,d
l54b4h:
	inc l
	ret nz
	ld a,(hl)
	jr z,l54b4h
	cp e
	nop
	add a,b
	call 0a664h
	rst 30h
	add a,b
	jp (hl)
	jp (hl)
	sbc a,c
	call z,0e89eh
	call z,01cf9h
	sbc a,h
	sub b
	ld a,b
	ld l,e
	ld d,e
	add a,b
	cp h
	push hl
	call pe,sub_73f4h
	dec b
	sbc a,c
	or d
	push bc
	add a,d
	dec sp
l54dbh:
	jp pe,08d82h
	ld h,(hl)
	ld l,e
	or l
	add a,c
	add a,b
	ld hl,l5fffh
	pop af
	ld b,c
	ld (de),a
	ld c,h
	cpl
	adc a,h
	jr nz,l54dbh
	inc a
	call z,08b83h
	call m,08b77h
	ld sp,0967fh
	sbc a,d
	ld h,c
	nop
	cp a
	ret p
	ld c,l
	or (hl)
	call p,0f1d6h
	inc h
	add a,b
	ld c,l
	sbc a,c
	push af
	ex af,af'
	sbc a,b
	sbc a,h
	ld h,0e8h
	add a,b
	and (hl)
	defb 0ddh,0ech,069h ;illegal sequence
	xor 076h
	and l
	and 0e2h
	ex af,af'
	cp d
	ld e,b
	or 000h
	pop de
	dec h
	ld d,l
	ld d,(hl)
	ld l,e
	add a,b
	sub d
	ld de,089fch
	add a,l
	add hl,bc
	ld (l7f1fh),a
	djnz $+63
	ex (sp),hl
	rst 30h
	ld b,l
	ret m
	ld (l64ddh),a
	sbc a,c
	inc b
	cp 06dh
	nop
	ld a,a
	jp pe,0b0c9h
	ld a,(hl)
	ld a,a
	ret pe
	call pe,0a08ah
	add a,(hl)
	add a,a
	ld (hl),b
	ld l,(hl)
	ld (hl),e
	add a,b
	rst 20h
	sub (hl)
	ld sp,(06473h)
	ld b,c
	rst 38h
	ld (hl),l
	xor e
	inc e
	and d
	ld d,l
	jp m,04228h
	rra
	ei
	inc de
	ld d,c
	rra
	ld b,h
	pop hl
	cpl
	ret p
	or e
	rst 10h
	ld c,0c1h
	rrca
	ld a,(hl)
	call nz,09c80h
	ld h,e
	ld d,a
	defb 0fdh,052h,0fdh ;illegal sequence
	sub (hl)
	ld a,a
	or 01bh
	ld sp,hl
	ld b,(hl)
	rst 38h
	ld a,e
	ei
	dec bc
	rlca
	add a,b
	halt
	and l
	pop hl
	and l
	sbc a,h
l5580h:
	ret p
	add hl,de
	pop af
	dec b
	ld d,a
	ld a,b
	sub c
	dec a
	jr z,$+38
	ld bc,0bffeh
	ld a,a
	defb 0fdh,07dh ;ld a,iyl
	ld a,(hl)
	adc a,a
	dec bc
	or b
	ld a,a
	and (hl)
	cp 0b2h
	ld a,e
	ld d,h
	sbc a,c
	ld b,00dh
	xor c
	call 0fac8h
	ld h,d
	lddr
	sbc a,a
	rst 38h
	dec hl
	xor b
l55a8h:
	and 09ch
	sub e
	ld a,a
	defb 0ddh,087h,0a9h ;illegal sequence
	sbc a,h
	rst 0
	xor e
	adc a,c
	ld (de),a
	rra
	ret m
	ld e,b
	rst 38h
	sbc a,a
	call m,0002eh
	sbc a,c
	ex de,hl
	ld a,b
	ex af,af'
	jp 07f50h
	bit 2,e
	jr z,$-10
	and d
	ld a,l
	jp m,0e92ch
	ret pe
	ld a,a
	add a,d
	dec e
	ld a,b
	ret m
	inc e
	sbc a,h
	sbc a,b
	ld d,a
	ld c,e
	add a,c
	rla
	xor b
	ex de,hl
	sbc a,h
	inc (hl)
	sbc a,h
	sub e
	and d
	ld d,e
	sbc a,e
	add a,h
	ld sp,hl
	ld (hl),e
	ld a,(hl)
	ld e,c
	nop
	xor (hl)
	ld c,a
	add a,c
	ld de,0d2feh
	ld de,0a885h
	ld a,a
	ld d,c
	rst 38h
	adc a,a
	jp m,0034ch
	ld (de),a
	adc a,d
	sbc a,e
	ret p
	add a,d
	rlc l
	ld a,a
	adc a,0f8h
	ld h,d
	xor 0ceh
	call m,08172h
	jr nc,l55a8h
l560ah:
	adc a,(hl)
	sbc a,l
	rst 38h
	ld d,e
	sbc a,c
	ld h,e
	ret nc
	rst 0
	ld a,e
	inc d
	defb 0fdh,0edh,09ch ;illegal sequence
	ld c,h
	out (0feh),a
	scf
	rst 38h
	in a,(078h)
	or l
	sub e
	jr nc,l5633h
	adc a,b
	adc a,a
	cp l
	ld a,a
	ld d,d
l5627h:
	call p,0fed9h
	jp m,08a1eh
	ld c,096h
	ld (bc),a
	ex af,af'
	xor (hl)
sub_5632h:
	cp (hl)
l5633h:
	sbc a,e
	ld a,l
l5635h:
	ld d,d
	cp (hl)
	and c
	set 7,a
	sub e
	ld a,b
	ld a,e
	dec l
	ld d,d
	push af
	ld b,h
	jp (hl)
	add a,c
	ld e,d
	ld b,0ech
	dec h
	adc a,0e8h
	sub d
	ld e,d
	add a,a
	ei
	call pe,09e77h
	xor c
	xor c
	sbc a,h
	ld h,l
	or 096h
	ld a,b
	ld a,a
	add a,0fah
	ld h,(hl)
	dec hl
	xor e
	push hl
	inc bc
	ld a,a
	ex (sp),hl
	nop
	rst 0
	ld a,(hl)
	xor b
	nop
	xor e
	push hl
	add hl,bc
	rst 38h
	ld e,(hl)
	ld l,e
	cp e
	rst 38h
	ld b,d
	cp c
	xor b
	ld a,(hl)
	ld b,a
	ld d,l
	rst 38h
	sub l
	ld d,c
	rst 28h
l5678h:
	ld d,07ch
	ld b,(hl)
	call m,083d2h
	ld c,b
sub_567fh:
	add hl,bc
	adc a,(hl)
	ld a,a
	ld a,b
	sbc a,b
	or 083h
l5686h:
	dec sp
	defb 0fdh,0d6h,0ebh ;illegal sequence
	ld a,(028a9h)
	sbc a,h
	adc a,a
	or e
	ld (hl),c
	rst 8
	ld a,h
	or (hl)
	ld h,c
	add a,a
	xor (hl)
l5697h:
	rst 28h
	ld l,e
	ld a,(bc)
	sub a
	inc c
	adc a,d
	add a,b
	xor 060h
	dec bc
	cp c
	ex de,hl
	jp pe,08523h
	ld d,l
	add a,b
	dec l
	rst 38h
	cp e
	dec a
	push af
	jr nc,l5697h
	ld a,(hl)
	xor h
	ld a,c
	ld (hl),e
	rst 38h
	ld c,h
	rst 38h
	jp nz,0e878h
	adc a,a
	sub e
	add a,a
	ld a,b
	rst 10h
	call m,0ec59h
	push hl
	xor 0a5h
	dec d
	jr z,l5678h
	ld l,l
	ex de,hl
	cp c
	ld l,a
	adc a,c
	or d
	ld hl,(08014h)
	ld h,d
	rst 38h
	cp e
	sub a
	call m,0ff69h
	ld h,(hl)
	rst 38h
	exx
	dec de
	cp e
	or (hl)
	push hl
	sub h
	cp b
	rst 38h
	jp c,0ee78h
	or h
	add a,a
	ld a,(hl)
	inc d
	ret pe
	adc a,c
	sbc a,b
	add a,(hl)
	dec sp
	ret
	cp 039h
	nop
	sub h
	add a,a
sub_56f3h:
	xor (hl)
l56f4h:
	out (0a3h),a
	defb 0fdh,0c2h,0edh ;illegal sequence
	ld a,b
	and l
	sbc a,h
	cp h
	sbc a,e
	jp pe,l727fh
	add a,0b7h
	ld (l67b1h),a
	sbc a,c
	ld bc,0d3c1h
	or b
	ret po
	rla
	ld de,0aa7ah
	and a
	add a,c
	ld h,e
	ld sp,hl
	adc a,l
	pop af
	cpl
	adc a,b
	ld (hl),00eh
	ld c,(hl)
	ld l,(hl)
	rst 38h
	or l
	ld d,b
	rst 38h
	pop bc
	ex af,af'
	ret nc
	dec sp
	ei
	xor b
	sbc a,c
	xor b
	push af
	adc a,09eh
	xor 07eh
	push hl
	ld d,d
	call po,04679h
	ld (hl),a
	ret m
	rst 30h
	rst 28h
	ld a,b
	nop
	call pe,0c945h
	sbc a,b
	sbc a,c
	dec hl
	xor (hl)
	ld a,c
	ld hl,(0b3dfh)
	ld h,l
	cp c
	ret z
	adc a,c
	adc a,h
	call z,sub_477fh
	add a,b
	add iy,iy
	ld a,d
	rst 0
	ld (bc),a
	sbc a,d
	ld (hl),a
	ld de,08271h
	ld (08818h),hl
	ei
	cp e
	ld a,l
	ld d,l
	adc a,c
	adc a,c
	call z,0ffdbh
	ld e,h
	rst 38h
	ret po
l5765h:
	ex af,af'
	xor l
	ret nc
	and l
	ld c,h
	jp m,0fe31h
	ld a,(0ad51h)
	sub d
	adc a,l
	push hl
	adc a,0fch
	inc hl
	call nc,sub_7794h
	add a,b
	jp p,l5989h
	adc a,02ah
	sbc a,d
	sbc a,h
	ret pe
	ld c,e
	ld a,a
	ret pe
	or a
	ld c,a
	or h
	call po,09ceeh
	add hl,hl
	sbc a,h
	sbc a,c
	or c
l578fh:
	dec hl
	or b
	ret nz
	rla
	xor c
	call nz,0a74ch
	add a,d
	adc a,h
	rra
	ld h,c
	adc a,(hl)
	add a,b
	inc e
	ret po
	sub h
	add a,d
	rst 38h
	or 065h
	add a,h
	halt
	rst 8
	sbc a,h
	or 002h
	nop
	ld c,d
	jp (hl)
	ld a,a
	sbc a,b
	rst 38h
	ld e,c
	jp m,088a8h
	sbc a,a
	sub 01bh
	ld e,d
	and 09ah
	defb 0edh ;next byte illegal after ed
	ret pe
	cp (hl)
	add a,a
	scf
	defb 0edh ;next byte illegal after ed
	adc a,d
l57c1h:
	sbc a,h
	ld e,l
	ld d,04eh
	ld a,b
	and c
	ld c,l
	or d
	and h
	dec d
	ld a,e
	add hl,sp
	cp h
	or a
	adc a,(hl)
	adc a,c
	ld (hl),039h
	ld a,a
	adc a,h
	cp 083h
	nop
	ld a,c
	sbc a,d
	ld de,000ffh
	ld (hl),e
	push af
	sub d
	ld d,l
	ld l,a
	ex de,hl
sub_57e3h:
	ld l,c
	add a,b
	ld b,a
	ld b,0c7h
	add hl,sp
	jp c,l6bc1h
l57ech:
	ld c,e
	nop
	halt
	ld l,b
	rst 10h
	jr nc,l578fh
	ret
	rst 38h
	sub (hl)
	out (0a2h),a
	ret po
	res 0,e
	push hl
	ld a,d
	adc a,h
	cp 08eh
	call nc,0327bh
	and 0f3h
	sub 088h
	xor l
	sub l
	and h
	sbc a,c
	xor c
	ld (hl),c
	ld a,a
	adc a,h
	jr z,l588fh
	ld e,(hl)
	adc a,b
	adc a,d
	dec h
	add a,b
	cp 084h
	ld (hl),a
	rst 38h
	ld b,c
	xor c
	sbc a,d
	xor c
	and c
	ld a,(hl)
	rst 0
	add a,b
	jr z,l5832h
	ld h,b
	nop
	ld c,(hl)
	ld d,(hl)
	defb 0edh ;next byte illegal after ed
	ld (l7ff6h),hl
	cp e
	ret po
	ret z
	in a,(0e6h)
	ld b,h
l5832h:
	or h
	push de
	ld (hl),b
	ld b,(hl)
	ld h,l
	ld (hl),b
	ld sp,hl
	and h
l583ah:
	call nz,0c695h
	ld b,a
	rst 38h
	ld d,(hl)
	push de
	sub d
	cp 0e0h
	ld (hl),a
	and a
	rst 38h
	add hl,bc
	add a,l
	ret p
	adc a,h
	adc a,l
	sbc a,07ch
	or b
	dec a
	xor a
l5851h:
	ld d,a
	jp (hl)
	or h
	or a
	add a,d
	or c
	call 0fe4fh
	inc h
	xor c
	ld (hl),a
	add a,b
	sub d
	call m,07a1bh
	ld (hl),c
	ld a,l
	add a,c
	call nz,08180h
	dec bc
	xor d
	xor e
	ex de,hl
	ld a,a
	out (0e6h),a
	call m,sub_4613h
	ld a,c
	di
	jp nz,0a336h
	ld d,(hl)
	ret p
	adc a,c
	ret p
	ld b,l
	adc a,c
	cp 075h
	rst 18h
	sbc a,049h
	nop
	cp 0efh
	ld a,d
	ld l,c
	add a,l
	sbc a,c
	add a,l
	ld h,(hl)
	call p,0abe8h
	and l
l588fh:
	ld (hl),a
	sbc a,h
	or h
	ld h,e
	sbc a,(hl)
	or h
	jr c,l5851h
	or c
	rst 38h
	sub a
	ld hl,(00f44h)
	rla
	ld de,0aa7fh
	jr z,l583ah
	rla
	rst 38h
	adc a,c
	ld a,l
	adc a,a
	pop af
	ld b,07fh
	jp m,0ae88h
	sub (hl)
	rst 38h
	ld b,b
	ld e,a
	ld a,(bc)
	xor d
	cp (hl)
	cp (hl)
	ret p
	sub (hl)
	call z,0b9abh
	adc a,d
	call z,0e249h
	jp z,0e2cch
	call nz,0fe52h
	ld e,d
	rst 28h
	rst 10h
	ld c,h
	add a,d
	ld (hl),d
	ex (sp),hl
	ld a,d
	ld l,018h
	sub a
	inc b
	adc a,b
	sbc a,d
	ei
	xor l
	add hl,hl
	ret m
	sub 0cch
	or a
	ld h,l
	xor h
	and h
	or a
	ld (hl),e
	dec h
	cp h
	push af
	adc a,d
	sbc a,c
	ld a,a
	ld a,l
	sub h
	nop
	rra
	call m,0812eh
	adc a,c
	jr nc,$-87
	add a,b
	jp m,0a053h
	rst 38h
	ld c,c
	ld l,d
	ld a,a
	ld h,b
	call m,0c64dh
	or d
	and e
	adc a,(hl)
	call pe,08894h
	ret nz
	ld l,h
	ei
	ld (hl),e
	or 01ch
	jp nc,0ecf5h
	dec b
	ex de,hl
	xor l
	cp 0b0h
	nop
	and 08ah
	inc sp
	ld (hl),a
	add a,l
	add hl,sp
	inc hl
	ld (hl),b
	ex af,af'
	xor a
	add hl,de
	sbc a,h
	ld a,a
	inc b
	ld (07b9eh),a
	add a,(hl)
	or e
	ccf
	ld de,0ca08h
	ld (hl),d
	ld a,a
	ld de,0fcb0h
	xor d
l592dh:
	ld (hl),c
	ret
	ld a,a
	add a,b
	inc c
	jr $+19
	ld a,a
	ld d,a
	djnz l592dh
	ld d,0ffh
	pop bc
	ld a,(bc)
	cp d
	call m,0ccbbh
	sbc a,h
	ld d,(hl)
	pop bc
	push de
	ld (hl),0cdh
	push bc
	defb 0edh ;next byte illegal after ed
	and l
	set 7,b
	ld (hl),d
	ret
	ld a,a
	exx
	cp h
	push de
	or b
	ld (hl),a
	rst 18h
	add a,l
	ld l,c
	cp e
	ld d,l
	xor 07bh
	cp 015h
	defb 0fdh,0a2h,088h ;illegal sequence
	cp l
	pop de
	adc a,b
	ld c,c
	or d
	cp 0c0h
	rst 38h
	and a
	rla
	cp l
	defb 0fdh,045h ;ld b,iyl
	ld (hl),a
	add a,c
	adc a,b
	ld (08381h),a
	dec hl
	rlca
	add a,(hl)
	ld sp,0ffb0h
	adc a,l
	ld c,b
	rst 38h
	or b
	di
	ld a,a
	or l
	ld b,b
	jp 0c2cbh
	ld (hl),a
	sub 07ch
	and a
	add a,d
	pop de
l5989h:
	nop
	add a,l
	ld c,(hl)
	cpl
	rlca
	ld a,a
	ld c,076h
	ld h,07dh
	jp (hl)
	or l
	inc de
	cp d
	sub b
	ex af,af'
l5999h:
	add a,b
	add a,b
	ld (hl),b
	ret nc
l599dh:
	inc h
	rrca
	jp m,l7997h
	inc h
	sub a
	ld (hl),c
	add a,b
	sbc a,c
	add a,c
	ld (hl),a
	ld a,e
	ld b,h
	rst 38h
	adc a,a
	inc e
	rst 38h
	ret m
	add a,b
	add a,e
	call po,08faah
	add a,02dh
	ld b,h
	xor h
	rst 20h
	ret p
	ld a,a
	rst 8
	rlca
	ld a,a
	dec hl
	rst 28h
l59c1h:
	ld h,l
	rlca
	ld a,a
	rst 28h
	cp e
	ld c,(hl)
	jr c,l59c1h
	or a
	add a,d
	sub c
	ex de,hl
	ld e,l
	or a
	add a,h
	ld l,c
	add a,l
	add hl,hl
	cp 02ch
	adc a,c
	ex af,af'
	ld sp,hl
	ld (hl),a
	ld c,071h
	cp 089h
	ret m
	djnz l59f8h
	add a,c
	ld (hl),a
	ld e,a
	rra
	add a,b
	ld a,000h
	ld d,0feh
	cp (hl)
	ld a,a
	ld e,h
	ex de,hl
	ld d,a
	call pe,0eb9dh
	ld h,h
	rst 20h
	xor l
	ex (sp),hl
l59f5h:
	ld (hl),l
	nop
	rst 20h
l59f8h:
	jp m,087bbh
	xor 07dh
	jp p,l7ab3h
	adc a,c
	adc a,e
	ld l,e
	call m,0b435h
	inc sp
	cp d
	ld d,a
	sbc a,(hl)
	ld c,e
	ld a,a
	ld c,e
	ld a,d
	jp m,0998dh
	ld (hl),a
	ld a,a
	ld h,l
	ld de,08423h
	ld h,a
	ld a,(hl)
	sbc a,h
	nop
	ld h,b
	adc a,a
	call nz,sub_7806h
	ld b,e
	ld l,a
	srl h
	ld h,b
	dec hl
	add a,a
	rst 20h
	ld a,c
	xor 08eh
	ld a,a
	ld a,c
	defb 0edh ;next byte illegal after ed
	adc a,(hl)
	dec b
	sbc a,h
	ld (hl),a
	dec d
	ld c,e
	add a,b
	jp 0e5b2h
	cp b
	ld e,e
	jp m,08246h
	ret z
	rlca
	ret pe
	rst 38h
	ret pe
	add a,a
	sbc a,c
	sub h
	ei
	ld e,(hl)
	ld a,c
	rst 38h
	dec h
	ld (hl),c
	ei
	daa
	ld (08781h),hl
	xor b
	adc a,c
	sub a
	adc a,a
	xor 03ch
	defb 0fdh,0d9h,0e1h ;illegal sequence
	ld d,(hl)
	ld a,b
	or 06ch
	inc hl
	add a,a
	ret po
	cp b
	jp c,0f0eah
	or 00ch
	xor h
	and 056h
	rlca
	jp m,086cfh
	ld a,l
	rra
	ld c,e
	add a,b
	ld d,(hl)
	add a,e
	sbc a,(hl)
	and h
	pop de
	xor 098h
	call m,0fe6bh
sub_5a7bh:
	inc d
	ret
	ld l,l
	xor b
	or d
	adc a,d
	ld d,d
	sbc a,c
	defb 0fdh,052h,001h ;illegal sequence
	cp 099h
	ld a,a
	cp 0b9h
	ld (hl),b
	xor c
	adc a,c
	add hl,bc
	ret p
	add a,e
	adc hl,sp
	add a,h
	jp c,0dfd7h
	push af
	dec d
	rst 30h
	call nz,sub_78e2h
	set 3,l
	ld (hl),l
	sbc a,l
	or c
	adc a,d
	add a,0ebh
	or a
	ld (0ffb3h),hl
	pop hl
	ret nz
	sbc a,e
l5aach:
	cp l
	dec hl
	cp (hl)
	dec de
	add a,b
	adc a,c
	or l
	sbc a,b
	ret pe
	jp z,0fe46h
	sbc a,01ch
	dec b
	ld a,(de)
	xor c
	xor c
	call m,00250h
	ld (hl),c
	rla
	ld a,b
	ld sp,08881h
	ld a,a
	ret m
	inc de
	xor (hl)
	xor d
	ld a,a
	ld h,l
	ld a,(hl)
	ld h,(hl)
	add a,h
	pop de
	add a,b
	sbc a,e
	ld c,a
	ld (bc),a
l5ad6h:
	sbc a,a
	or b
	ld d,d
	push af
	jp p,0f9b2h
	ld a,(hl)
	ld (hl),007h
	ld l,b
	rst 38h
	ld a,(hl)
	add hl,de
	jp 0aff4h
	cp l
	dec bc
	add a,e
l5aeah:
	jp z,012fdh
	call z,sub_7ffdh
	or (hl)
	dec e
	ld b,d
	dec bc
	rla
	xor d
	xor c
	add a,b
	or b
	rst 38h
	cp h
	ld a,l
	jp m,01829h
	adc a,a
	call m,0a7a1h
	adc a,b
	ret m
	add a,b
	dec sp
	ld a,(hl)
	ld c,h
	rrca
	or 085h
	dec (hl)
	pop bc
	xor d
	push bc
	ld c,h
	ret p
	ld h,a
	jp po,l6177h
	jp 08f45h
	ld a,a
	ld (hl),a
	rlca
	ld a,a
	or l
	add a,c
	jr c,l5aeah
l5b21h:
	ld a,(iy+025h)
	ret
	add a,h
	add hl,sp
	jp nz,l705dh
	ld a,a
	ld b,l
	ei
	ret m
	ld (de),a
	jp m,0219eh
	adc a,a
	ret m
	adc a,b
	ld a,a
	sbc a,h
	ld d,h
	and d
	jr l5b21h
	jp 05606h
	rst 38h
	add a,h
	adc a,b
	add a,b
	xor (hl)
	ld a,a
	ld h,l
	ld (hl),c
	ld b,h
	adc a,b
	or e
	ld c,e
	ret po
	rra
	rla
	ld a,a
	cp (hl)
	add a,d
	ret m
	rst 10h
	cp l
	and l
	add a,e
	ret p
	sbc a,h
	rst 8
	ld a,a
	add a,e
	ld hl,(0d6ffh)
	call m,sub_7f72h
	dec de
	adc a,d
	rst 30h
	push af
	di
	ld a,e
	ld hl,(0fb7fh)
	jp (hl)
	ld a,c
	sub d
	add a,d
	jr l5b79h
	halt
	dec b
	add a,e
	push af
	add a,h
	add a,c
	ld c,h
	rst 30h
	ld h,h
	ret c
l5b79h:
	ld e,e
	rst 18h
	cpl
	dec b
	jp m,0e873h
	inc a
	call p,sub_707fh
	ret m
	ld a,a
	sub l
	sbc a,h
	add a,d
	or h
	xor 09ah
	push bc
	ld l,d
	adc a,e
	halt
	ld a,a
	ld de,0f6c9h
	jr $-124
	ret
	ei
	in a,(0f4h)
	inc l
	ld c,a
	sub e
	ld b,h
	sub c
l5b9fh:
	adc a,a
	ld a,a
	ld l,a
	out (07fh),a
	rst 38h
	ld h,l
	add a,05ch
	ld d,l
	ld (hl),a
	jp pe,0ddcch
	ei
	rst 0
	sbc a,a
	inc de
	add a,a
	add a,0ech
	pop af
	add a,l
	call m,0fecfh
	or h
	rst 38h
	xor e
	sbc a,c
	add a,e
	jr c,l5b9fh
	nop
	adc a,d
	jp z,l69feh
	nop
	di
	ld a,b
	adc a,a
	call z,0f87fh
sub_5bcch:
	ld h,e
	ld sp,hl
	dec sp
	ld a,b
	xor c
	adc a,l
	sbc a,c
	inc l
	and c
	ret p
	ld a,a
	ld a,(hl)
	call p,09785h
	pop hl
	dec sp
	ld a,a
	ld a,h
	pop hl
	sbc a,a
	add a,a
	adc a,e
	add a,l
	call m,08277h
	sbc a,e
	sub b
	ld e,c
	add a,b
	and 0fah
	ld l,0c5h
	push bc
	adc a,(hl)
	adc a,b
	dec h
	pop bc
	ld (hl),a
	ld a,h
	ld sp,l7f81h
	rst 30h
	call m,0f8f9h
l5bfdh:
	adc a,(hl)
	inc h
	ld a,c
	sbc a,d
	sub h
	sub h
	sub e
	ld a,h
	ld a,a
	ld a,c
	sub 0e5h
	nop
	ret p
	ex (sp),hl
	add a,(iy-002h)
	ld a,d
	dec hl
	rlca
	cp l
	adc a,0f8h
	ld d,e
	or l
	jp m,0a08eh
	ret m
	rst 38h
	ld l,d
	ret m
	ld a,a
	and c
	jp m,08e9ah
	rst 38h
	ld e,b
	sbc a,c
	adc a,l
	add hl,bc
	ld a,b
	rra
	add a,l
	rst 38h
	ld (hl),d
	xor l
	add a,e
	ld l,h
	nop
	ld b,a
	jp m,0127dh
	cp 0e5h
	adc a,c
	call m,01978h
	dec hl
	ld (hl),b
	cp l
	rst 0
	nop
	jp z,03ca0h
	ld h,a
	rst 30h
	inc hl
	ld (bc),a
	ld a,d
l5c48h:
	ld de,0cb7eh
	or 086h
	sub c
	adc a,a
	ld b,d
	ld a,b
	jr l5c48h
	rst 38h
	sbc a,h
	ld (hl),a
	and 087h
	rlca
	ld a,a
	rst 10h
	and h
	ld c,(hl)
	ld (hl),d
	and l
l5c5fh:
	rst 28h
	cp l
	ld e,h
	push de
	add a,c
	ld (bc),a
	ld b,(hl)
	add a,e
	jp p,0f98bh
	ld hl,080cah
	cp l
	pop af
	ld a,(hl)
	ld h,000h
	ld a,a
	sub e
	dec bc
	xor b
	adc a,h
	dec l
	rst 38h
	xor (hl)
	ld b,c
	ld (hl),c
	add a,l
	sbc a,a
	ld a,(hl)
	or l
	rlca
	rst 38h
	adc a,031h
l5c84h:
	sbc a,b
	jp p,08726h
	add a,e
	xor a
	ld bc,04805h
	ld (hl),a
	rst 38h
	call p,sub_5a7bh
	add a,c
	cp d
	and c
	adc a,b
	add a,0ffh
	rst 20h
	call nz,0c8a8h
	ex de,hl
	nop
	call pe,0809eh
	and l
	sbc a,b
	jp pe,08394h
	call m,02947h
	sub h
	inc d
	ld a,a
	adc a,a
	sbc a,d
	rst 38h
	sbc a,0e7h
	cp b
	ld c,e
	cp 0ddh
	ld l,b
	pop hl
	ld a,(hl)
	push af
	ld l,a
	sbc a,e
	jp 0f200h
	xor b
	ld bc,0e794h
	rst 38h
	dec c
	ret pe
	ld (hl),c
	call m,00c00h
	adc a,c
	xor 098h
	cp 04fh
	jr nc,l5c5fh
	nop
	rst 38h
	cp 000h
	ld l,d
	nop
	nop
	ld a,b
	nop
	nop
	adc a,a
	inc sp
	nop
	jr nc,l5cech
	ld l,011h
	inc bc
	inc sp
	dec (hl)
	ld h,(hl)
	ld h,l
	inc d
	rst 18h
	nop
	ret p
	add hl,bc
	ld (hl),l
l5cech:
	ld d,l
	nop
	ld d,b
l5cefh:
	inc c
	ret c
	ld bc,02411h
	jr l5d38h
	ld (00011h),hl
	ld (de),a
	ld (hl),c
	ld (0080fh),hl
	sbc a,b
	ld a,(bc)
	ld (02124h),hl
	djnz l5d1eh
	djnz l5d0fh
	inc h
	ld (hl),h
	ld b,h
	ld h,003h
	ld sp,03033h
l5d0fh:
	ld l,h
	inc sp
	rlca
	ld a,d
	ld c,c
	ld bc,l5635h
	ld h,a
	adc a,b
	adc a,b
	add a,e
	jr l5d9bh
	ld a,(hl)
l5d1eh:
	ld h,d
	ld d,a
	ld (08545h),a
	add a,b
	ld a,a
	ret pe
	ld hl,0808dh
	jp m,0ad7fh
	ld a,l
	nop
	adc a,h
	or (hl)
	rst 8
	dec b
	ld a,(hl)
	inc (hl)
	dec (hl)
	ld c,d
	halt
	inc b
l5d38h:
	ld (hl),a
	add a,(hl)
	ld h,(hl)
	ld d,e
	inc bc
	sub (hl)
	ld a,d
	ld a,005h
	ld a,l
	or b
	ex af,af'
	adc a,b
	add a,a
	ld a,b
	add hl,bc
	adc a,b
	ld d,l
	ld e,a
	push af
	add a,c
	ld l,(hl)
	ld a,a
	xor (hl)
	ld h,h
	ld l,(hl)
	ld a,a
	rra
	jr nz,l5dd5h
	ld b,a
	ld a,e
	dec c
	ld d,l
	ld a,a
	ld c,b
	ld d,e
	ld a,(bc)
	jr nc,l5cefh
	call nz,09530h
	ld (hl),b
	ld d,(hl)
	and c
	ld c,c
	ld c,l
	ld (hl),a
	adc a,b
	ld h,(hl)
	add a,e
	inc sp
	ld d,e
	ld h,d
	rst 8
	inc c
	jp nc,03d98h
	inc c
	ld h,(hl)
	ld h,a
	jr nc,l5d99h
	ld h,l
	ld d,(hl)
	inc b
	ld d,l
	rst 38h
	rst 38h
	ld d,a
	ld (hl),e
	ld (hl),b
	inc d
	ld (hl),b
	sub d
	add a,b
	call z,01075h
	adc a,l
	add a,d
	adc a,h
	adc a,h
	xor d
	ld (bc),a
	ld a,(bc)
	ex af,af'
	ld d,(hl)
	adc a,c
	add a,d
	ld (de),a
	ld a,a
	rst 10h
	ld a,l
	dec l
l5d99h:
	ld h,(hl)
	inc b
l5d9bh:
	ld c,d
	ld d,e
	adc a,c
	rst 8
	di
	daa
	ld e,b
	adc a,b
	nop
	daa
	ld (hl),a
	add a,a
	djnz l5e05h
	ld h,l
	rst 8
	adc a,(hl)
	call z,00405h
	ld d,l
	ld d,(hl)
	ld (hl),a
	ld a,b
	add a,a
	ld bc,l68f3h
	inc sp
	scf
	ld e,a
	rst 30h
	add a,l
	ld (hl),a
	ld d,b
	ld a,a
	add a,b
	inc l
	xor a
	ld (de),a
	ld a,l
	ld a,a
	inc (hl)
	ld b,07fh
	ld h,b
	and 07fh
	defb 0fdh,052h,0e8h ;illegal sequence
	ld l,e
	dec c
	nop
	ld d,c
	ld d,l
	adc a,b
	rst 10h
l5dd5h:
	ld a,(0030eh)
	ld a,(hl)
	or b
	nop
	ld h,(hl)
	ld h,e
	pop af
	ld h,a
	ld d,a
	ld d,l
	sub b
l5de2h:
	jp z,l5203h
	dec (hl)
	ld (hl),0abh
	jr z,l5de2h
	ld (bc),a
	jp m,0b7a3h
	xor d
	add a,e
	ld l,d
	ld sp,hl
	ld d,c
	ld b,d
	add a,b
	inc e
	ld h,h
	halt
	add a,b
	ld l,h
	sub c
	ret c
	dec c
	nop
	ld c,b
	ld d,02ch
	ld (hl),a
	add a,b
	rst 0
	ld b,d
l5e05h:
	ld a,a
	scf
	ld a,(l4d00h)
	ld h,l
	ld a,(hl)
	ld d,a
	ld d,(hl)
	di
	cpl
	dec b
	ld a,(hl)
	dec b
	add a,a
	add a,(hl)
	ld e,074h
	rrca
	dec b
	ld a,a
	sbc a,c
	inc sp
	xor h
	ld e,h
	jr nz,$+1
	ld (bc),a
	add a,(hl)
	inc sp
	ret m
	adc a,b
	inc de
	ld a,a
	ld h,(hl)
	ld l,b
	rlca
	ld h,l
	add hl,de
	xor c
	ld a,c
	inc h
	ld a,c
	sbc a,h
	ld a,a
	cp c
	inc h
	ld a,a
	ld hl,(01000h)
	ld a,(hl)
	ld l,h
	ld (bc),a
	jp po,0fd7fh
	ld d,b
	ld (hl),067h
	ld d,h
	halt
	jr nc,l5e76h
	add a,c
	or c
	inc bc
	ld h,056h
	add a,h
	call c,sub_4e37h
	call pe,sub_7700h
	halt
	ld d,a
	ld d,e
l5e54h:
	sub h
	add a,e
	ld d,e
	ld a,a
	call po,00360h
	jr c,l5ed4h
	adc a,a
	ret m
	call nc,0332ch
	ld (bc),a
	ld h,e
	inc hl
	rst 38h
	ld d,(hl)
	or l
	dec hl
	add a,d
	jp nz,l5580h
	ld hl,0e87fh
	ld d,0a0h
	ld (hl),b
	ld h,a
	ld h,a
	ld h,(hl)
l5e76h:
	ld h,c
	ld b,d
	ex de,hl
	ld a,(0257dh)
	rst 20h
	adc a,h
	ld a,h
	sub l
	add a,h
	ld c,e
	inc sp
	cp 0aeh
	nop
	inc a
	add a,e
	ld a,a
sub_5e89h:
	ld h,a
	push iy
	inc de
	ld e,b
	add a,(hl)
	ld h,a
	ld a,l
	ret m
	ld a,l
	adc a,e
	or e
	dec d
	ld h,e
	rst 38h
	ld b,(hl)
	cp l
	dec h
	ld (hl),l
	add a,b
	cp d
	add a,c
	ld e,(hl)
	nop
l5ea1h:
	and e
	add a,b
	jr c,l5f24h
	sbc a,h
	defb 0fdh,044h ;ld b,iyh
	ld b,083h
	ld h,c
	ld b,a
	ld (004ffh),hl
	ld d,(hl)
	ld l,b
	ret pe
	ret m
	ld d,e
	add a,(hl)
	ld d,c
	add a,b
	add a,a
	ld b,088h
	nop
	and d
	ld h,b
	cp 07bh
	and a
	cp 094h
	ld d,l
	ld e,b
	ld (de),a
	rst 38h
	ld a,b
	rst 38h
	rst 38h
	and d
	ld (hl),038h
	jr c,l5e54h
	xor c
	add a,e
	sub (hl)
	push af
	cp h
	add a,l
l5ed4h:
	add a,l
	nop
	add a,e
	ret m
	ld a,l
	ld a,a
	ld l,h
	inc bc
	call po,sub_65bch
	inc d
	add a,(hl)
	add a,l
	call nc,0a5e4h
	ret
	jp nc,0f280h
	ld c,e
	cp 0cbh
	sub h
	ld h,b
	add a,e
	rst 38h
	ld l,b
	add a,l
	ld a,h
	adc a,a
	rst 38h
	jr c,l5ea1h
	ld d,c
	call nz,sub_7a54h
	jp nc,00461h
	add a,a
	ld (hl),b
	add a,b
	cpl
	rrca
	ld a,a
	ld c,a
	djnz l5f86h
	add hl,sp
	cp 03ch
	ld h,(hl)
	ld d,d
	add a,(hl)
	add a,b
	push de
	ld h,(hl)
	rst 38h
	inc e
	inc a
	ld a,b
	add hl,de
	ld (hl),a
	and l
	jp 0e200h
	ld (0ff0fh),hl
	ld a,e
	ccf
	ld (hl),a
	inc hl
l5f21h:
	inc d
	ld h,l
	inc sp
l5f24h:
	ld (hl),0f7h
	adc a,c
	ld l,a
	adc a,0c6h
	inc sp
	ld sp,0f73ch
	ld a,a
	add hl,hl
	add a,c
	adc a,(hl)
	ld a,a
	ld c,l
	ld b,c
	djnz l5fb6h
	or d
	ld a,e
	ld h,l
	rst 38h
	sbc a,d
	ld c,e
	nop
	cp 08ch
	add a,b
	ld (hl),a
	add a,b
	add hl,hl
	ld a,(iy+01eh)
	ld a,a
	in a,(0d9h)
l5f4ah:
	pop hl
	call m,sub_612eh
	ccf
	ccf
	rst 38h
	dec (hl)
	xor e
	add hl,de
	and (hl)
	ld d,c
	ld d,(hl)
	ld h,e
	rst 38h
	djnz l5fb0h
	ld h,e
	rst 30h
	xor h
	ld e,d
	or d
	ld c,b
	ld l,b
	sub c
	add a,a
	ld e,e
	nop
	add a,d
	and a
	nop
l5f69h:
	add hl,de
	ld a,a
	push af
	sub b
	ld de,01601h
	ret z
	ld a,(hl)
	cp 095h
	ld (de),a
	rst 38h
	rst 0
	ld a,a
	and l
	add a,d
	dec (hl)
	add a,d
	ld (hl),e
	jr c,l5ffdh
	push de
	add a,a
	ld l,e
	call c,0fc80h
	nop
l5f86h:
	ld b,03fh
	or 073h
	rst 38h
	add a,(hl)
	ld a,a
	ld l,b
	add a,a
	ret m
	defb 0fdh,00ah,086h ;illegal sequence
	ex af,af'
	cp 0e4h
	ld h,e
	adc a,e
	ld c,h
	dec (hl)
	ld b,a
	ret
	ld a,a
	add a,b
	ld a,b
	or l
	ld a,a
	ld b,d
	ld a,a
	cpl
	ld de,058ffh
l5fa7h:
	ld de,0b3ffh
	cp 0e7h
l5fach:
	ld l,b
	ret nz
	ld h,(hl)
	add a,a
l5fb0h:
	add a,a
	call nz,0301bh
	rst 38h
	ld b,a
l5fb6h:
	add a,a
	add a,(hl)
	ld d,092h
	ld d,b
	rst 38h
	call m,sub_5012h
	jp m,l57ech
	pop hl
	ld a,a
	push af
	rst 28h
	dec de
	or 026h
	ld a,a
	ld hl,(0d038h)
	ld d,h
	ld l,a
	adc a,h
	inc sp
	inc h
	ld (hl),e
	ld a,b
	sub c
	xor 07fh
	add a,c
	sbc a,h
	sbc a,b
	ld b,c
	ei
	add hl,de
	inc d
	ld b,h
	rst 38h
	ld b,(hl)
	add a,b
	scf
	ld h,(hl)
	rst 38h
	sbc a,l
	and 09eh
	ld l,b
	ld a,a
	or a
	xor 090h
	ld a,(l5076h)
	inc bc
	sbc a,a
	ei
	ld hl,(0f1feh)
l5ff6h:
	push bc
	ld a,a
	inc sp
	rst 30h
	jp m,0ff01h
l5ffdh:
	di
	ld e,b
l5fffh:
	add a,e
	ld (hl),077h
	rst 38h
	ld (l7336h),hl
	or h
	add a,c
	and d
	rst 30h
	add hl,bc
	ld (de),a
	di
	add a,l
	ld d,e
	dec bc
	ld d,e
	and a
	defb 0edh ;next byte illegal after ed
	adc a,(hl)
	ld b,a
	ld (hl),a
	add a,(hl)
	cp b
	jp p,l7785h
	ld a,a
	push af
	inc de
	ld b,d
	rst 38h
	sub e
	adc a,b
	dec d
	ld b,h
	ld a,a
	sub c
	cp 0edh
	di
	ld c,e
	rst 30h
	res 7,l
	sub d
	ld l,b
	defb 0fdh,09ch ;sbc a,iyh
	xor a
	jp z,0adbdh
	ld h,d
	cp 03dh
	ld d,e
	di
	ccf
	ld d,a
	ld sp,hl
	ld a,(bc)
	ld a,a
	ld (bc),a
	ld e,(hl)
	ccf
	add a,c
	dec h
	ld d,e
	add a,c
	ld h,h
	adc a,(hl)
	scf
	ld e,a
	ld d,e
	rla
	ld a,a
	add a,080h
	ld e,h
l6050h:
	ld a,b
	ld a,a
	ld (hl),d
	ld b,h
	ld a,a
	inc h
	rst 10h
	ld a,a
	ld (hl),07fh
	cp h
	add a,l
	or d
	ld h,e
	xor a
	jr l609fh
	dec c
	add hl,bc
	ret z
	ld (hl),b
	or a
	add a,c
	ld h,h
	inc bc
	ret m
	pop hl
	ld h,(hl)
	ccf
	call m,08658h
	ret
	ld a,a
	or (hl)
	ld c,e
	add a,c
	ld c,h
	ld a,a
	ld d,b
	di
	jp nc,03d57h
	adc a,a
	di
	cp (hl)
	ld a,h
	ld a,a
	xor c
	add a,c
	and (hl)
	inc h
	ld a,a
	ld c,l
	ld (hl),a
	ld b,c
	ld a,a
	and h
	dec bc
	adc a,b
	sbc a,h
	cp 07ch
	ld l,b
	ld a,a
	adc a,c
	ld h,l
	jp (hl)
	rrca
	ld a,b
	halt
	ld a,a
	sub e
	push af
	ld a,l
	ld sp,l677fh
l609fh:
	xor 011h
	ret m
	jr c,$-5
	inc h
	dec h
	adc a,a
	ld d,b
	adc a,b
	add a,c
	halt
	jr nz,l60e0h
	di
	ld (de),a
	ret m
	ld (hl),053h
	jr c,l60d5h
	adc a,a
	ld d,l
	ld a,a
	add a,e
	ld a,b
	add a,b
	add a,b
	ld a,029h
	ld de,l6e80h
	ret m
	jr c,l6050h
	adc a,h
	adc a,d
	defb 0fdh,005h,09fh ;illegal sequence
	ld h,l
	ld d,(hl)
	ld a,a
	ld a,080h
	ld c,e
	add a,a
	sub e
	defb 0edh ;next byte illegal after ed
	ld (hl),a
	cp 0aeh
	dec de
l60d5h:
	push af
	defb 0edh ;next byte illegal after ed
	ld a,a
	add a,h
	inc sp
	ld h,a
	rst 38h
	ld c,c
	rst 30h
	ld a,c
	ret m
l60e0h:
	ld a,e
	ld sp,l798fh
	halt
	ret m
	add hl,hl
	dec b
	inc d
	ld h,l
	ld d,e
	add a,a
	ld l,d
	add a,c
	ld (hl),c
	adc a,a
	ld a,a
	rst 20h
	add a,b
	dec l
	ld b,l
	jp m,038f8h
	inc h
	exx
	dec bc
	cp 049h
	ld a,a
	ld (hl),078h
	xor 087h
	or (hl)
	add a,l
	sub a
	nop
	add a,b
	ex (sp),hl
	ret
	ld b,e
	add a,(hl)
	ld (hl),d
	pop bc
	cp e
	sbc a,h
	call c,sub_7ff8h+1
	ld (0ff58h),hl
	cp h
	xor 002h
	ret m
	ld d,e
	rst 30h
	ld e,b
	ld e,a
	rst 38h
	ld sp,hl
	jp (hl)
	ld a,a
	inc sp
	inc d
	ld b,l
	sub c
	nop
	sub e
	ld a,a
	ccf
	ld a,a
	add a,080h
	ld (hl),000h
sub_612eh:
	ld c,a
	ld (de),a
	add a,b
	ld (de),a
	ei
	halt
	adc a,e
	pop de
	ld a,h
	rst 38h
	or l
	defb 0fdh,07bh,07fh ;illegal sequence
	adc a,0c5h
	ret p
	ld a,a
	rlca
	adc a,h
	ret m
	or (hl)
	adc a,(hl)
	inc l
	xor c
	ld d,e
	halt
	rst 38h
	adc a,h
	add a,b
	ld b,a
	or l
	ld d,e
	push af
	ld a,c
	ld c,(hl)
	call pe,sub_5632h
	inc sp
	nop
	nop
	rst 38h
	add a,l
	ld a,a
	push af
	ld d,a
	rst 38h
	or 065h
	ld a,d
	di
	adc a,045h
	add a,e
	nop
	xor c
	halt
l6168h:
	rst 38h
	ld a,(l717fh)
	sub b
	ld (bc),a
	add a,h
	ld a,(de)
	ld (de),a
	jp c,0fb78h
	ld h,d
	add a,l
	scf
l6177h:
	dec c
	inc hl
	rst 38h
	pop hl
	dec a
	ld h,a
	ld a,b
	pop af
	sbc a,c
	inc h
	ld e,b
	add a,l
l6183h:
	add hl,de
	adc a,(hl)
	xor h
	ld h,e
	di
	xor b
	ld e,e
	or l
	inc sp
	rst 38h
	call p,sub_7f1dh
	add hl,bc
	ld l,b
	ld (hl),a
	inc sp
	ld d,a
	add a,e
	ld c,e
	add a,e
	ld c,b
	xor b
	and (hl)
	cp 03ch
	dec (hl)
	ld d,l
	jp nz,l5f4ah
	add a,c
	xor l
	di
	ret z
	ld a,l
	ld a,a
	ld l,c
	di
	ld sp,l4000h
	ld a,a
	call po,sub_4f03h
	ld (hl),0feh
l61b3h:
	or h
	jp z,08064h
	ld l,a
	jp nz,02d98h
	jr c,l6168h
	adc a,08ah
	sub e
	adc a,h
	ld h,(hl)
	jr nc,$-16
	cp e
	dec sp
	or l
	djnz l61b3h
	and 0efh
	pop af
	push af
	ret p
	sub h
	add a,a
	ld b,c
	ld d,a
	ld a,b
	ld d,e
	ccf
	ld sp,hl
	ld e,e
	or 030h
	dec (hl)
	ld d,(hl)
	ld d,e
	daa
	ld (hl),055h
	add a,b
	add a,l
	ld a,a
	add a,b
	or d
	ld bc,09912h
	sub c
	djnz l6269h
	add hl,bc
	add a,a
	jp c,0819eh
	inc l
	nop
	ld d,04ah
	djnz l6183h
	rst 10h
	cp 0c1h
	ld a,(hl)
	adc a,0ffh
	ld a,(de)
	ld h,d
	dec b
	xor l
	add a,a
	cpl
	ld d,a
	ld h,a
	push bc
	rst 0
	add a,d
	dec sp
	ld (hl),l
	or b
	add hl,bc
	ld l,l
	ld b,l
	sbc a,l
	ld l,d
	ld (07f56h),a
	xor d
	jp (hl)
	call p,0fd62h
	ld d,h
	ld h,e
	ccf
	cp d
	sub d
	add a,l
	push af
	rst 30h
	cp 035h
	add a,b
	jp p,068cch
	pop bc
	di
	add hl,de
	ld (hl),h
	sbc a,c
	ld (09e12h),a
	jp m,04052h
	add a,b
	cp c
	ld a,a
	cpl
	inc hl
	ld h,(hl)
	rst 38h
	ret po
	adc a,h
	add a,c
	adc a,(hl)
	cp 025h
	nop
	ld a,b
	sbc a,l
	inc sp
	defb 0edh ;next byte illegal after ed
	rst 28h
	ld (bc),a
	ld e,e
	cp 07ah
	sub l
	ld a,e
	ld h,l
	jp pe,07440h
	ld l,b
	scf
	ld (hl),078h
	add a,a
	or d
	halt
	ld a,l
	ld a,c
	ld d,056h
	ccf
	ld h,e
	rlca
	dec bc
	ld e,d
	adc a,e
	ld h,d
	sub a
	ld a,h
	ld a,a
	cpl
	ld de,l6b87h
	ld a,a
	xor h
	cp 0f8h
l6269h:
	add hl,hl
	bit 4,a
	nop
l626dh:
	ld h,l
	ld l,d
	halt
	sub c
	jp nz,08000h
	ld e,(hl)
	ld l,h
	defb 0fdh,045h ;ld b,iyl
	ld d,l
	ret p
	ld h,(hl)
	pop af
	rst 18h
	jp p,0a892h
	ld c,l
	adc a,d
	adc a,d
	ld b,a
	defb 0fdh,042h,058h ;illegal sequence
	ccf
	ld (hl),e
	sub l
	ld sp,l7ffeh+1
	xor b
	add a,e
	ret z
	jp z,0e0b1h
	cp h
	ret nz
	inc b
	call z,00cc0h
	nop
	ret nz
	add a,b
	cp b
	rst 0
	add a,d
	inc (hl)
	adc a,(hl)
	or e
	jp nz,l7f7ch
	ld c,(hl)
	ld h,(hl)
	jp po,05871h
	ld a,b
	ei
	jr nc,l626dh
	pop af
	ld c,d
	add a,c
	ld h,l
	ld d,b
	ld a,a
	ret c
	ld (hl),067h
	ld (hl),l
	ld b,h
	inc sp
	rst 28h
	add a,(hl)
	ld h,033h
	ld (hl),a
	or c
	xor d
	and l
	adc a,l
	ld h,h
	ld l,b
l62c5h:
	push af
	add a,l
	add a,a
	ld d,a
	djnz $+1
sub_62cbh:
	inc a
	jr c,l62c5h
	sub l
	call po,0cc7fh
	ret
	ld hl,(09990h)
	nop
	add a,d
	pop hl
	ld bc,0bcf6h
	ld (hl),l
	nop
	add a,h
	ld (hl),00fh
	ex (sp),hl
	rst 38h
	cp h
	add a,b
	ld h,(hl)
	call nz,0ea18h
l62e9h:
	ret p
	or l
	jr nc,l62e9h
	call 0fd05h
	xor (hl)
	dec b
	or 067h
	jp p,l6c5ah
	scf
	or h
	xor e
	adc a,b
	adc a,d
	ld d,l
l62fdh:
	ld e,b
	sub h
	sub c
	or c
	adc a,e
	dec (hl)
	rst 38h
	inc e
	ld l,(hl)
	sub l
	ld d,c
	add a,b
	ld a,a
	ret p
	res 0,c
	adc a,a
	ld a,a
	dec sp
	rst 38h
	rst 28h
	ld a,a
	xor h
	ld h,e
	jp pe,0c8f8h
	jr nc,l634ah
	add a,h
	cp c
	call m,0fdd6h
	jp nc,l4280h
	halt
	ld h,l
	call pe,07d98h
	add a,e
	defb 0fdh,0eeh,090h ;illegal sequence
	add a,l
	ld h,a
	add a,l
	adc a,d
	inc bc
	ld d,l
	ld (hl),l
	sub e
	ld c,c
	add a,b
	ex (sp),hl
	ld a,a
	sub l
	ld bc,l7a7bh
	ld d,(hl)
	rst 38h
	or e
	ld bc,09f84h
	call m,002c4h
	add a,c
	push af
	adc a,c
	ld a,c
	add a,b
	ld c,c
l634ah:
	rst 38h
	xor 0d8h
	ld a,a
	ld h,b
	ret m
	ld a,a
	call pe,07e00h
	ld e,a
	dec (hl)
	adc a,b
	and h
	ld sp,hl
	ld h,d
	push af
	xor l
	ld l,h
	ld b,00bh
	ccf
	or 083h
	di
	ld a,(06e82h)
	or c
	rst 8
	sbc a,a
	xor h
	sub e
	cp (hl)
	adc a,e
	add hl,hl
	add a,b
	ld sp,0caffh
	rst 38h
	exx
	adc a,(hl)
	add a,b
	ld h,d
	add a,c
	ld d,e
	ld (de),a
	add a,d
	add a,l
	ld a,a
	or h
	ld b,a
l637fh:
	ld a,(hl)
	and l
	add a,c
	xor h
	rst 38h
	ld a,e
	ld b,a
	ret m
	inc e
	nop
	jp m,0af7fh
	ld e,a
	ld iy,(0812dh)
	ld sp,0836eh
	add a,l
	ld e,b
	inc sp
	inc (hl)
	adc a,a
	ld l,b
	or d
	sub c
	adc a,(hl)
	inc sp
	ccf
	ld (hl),e
	ld a,a
	ld c,h
	ld a,h
	ld a,a
	call nc,0d984h
	inc h
	ld (bc),a
	ret c
	add hl,de
	ld a,a
	scf
	ld l,b
	rst 38h
	out (07fh),a
	pop hl
	ld l,a
	inc bc
	ld a,c
	jp nc,0001ah
	ld d,l
	adc a,a
	rst 38h
	add a,c
l63bch:
	inc sp
	and c
	ld d,h
	jp p,03349h
	ld a,l
	inc sp
	xor h
	cp b
	ccf
	ccf
	ld l,b
	ld l,a
	add a,c
	ld e,a
	push af
	sub d
	ld e,(hl)
	adc a,h
	ld l,c
	sub l
	ld a,a
	rst 18h
	nop
	ld (hl),e
	add a,a
	ld l,(hl)
	ld (hl),a
	defb 0fdh,033h,081h ;illegal sequence
	inc l
	and a
	ld b,h
	add a,b
	ret po
	or (hl)
	cp 03dh
	ld a,a
	ld h,e
	call m,0d68dh
	scf
	rst 10h
	inc sp
	inc b
	jr l63bch
	ld d,e
	ld a,a
	push bc
	ret nz
	ld de,091f2h
	call pe,sub_7680h
	ld h,a
	add a,(hl)
	ld h,e
	adc a,b
	and d
	adc a,b
	cp 0eah
	nop
	rst 38h
	jr c,$-116
	sub c
	ld c,b
	push af
	ld a,a
	cp d
	add a,l
sub_640bh:
	cp 0f8h
	cpl
	ld hl,0fc11h
	ld de,08010h
	jp z,08000h
	ld e,l
	rst 28h
	rst 38h
	add a,h
	ld h,b
	cp 07ch
	dec de
	ld a,(hl)
	nop
	jp 0120ch
	add a,a
	inc c
	ld a,a
	add a,l
	ld de,0c9f4h
	rst 28h
	or l
	ld a,a
	rst 38h
	ld d,e
	ld d,a
	cp e
	add a,d
l6433h:
	adc a,b
	adc a,a
	inc c
	sub 086h
	ld (0fe19h),a
	ld l,b
	add a,b
	sbc a,a
	nop
	ld a,a
	inc e
	add a,c
	xor (hl)
	call m,07f31h
	call z,0ba80h
	rst 0
l644ah:
	rst 38h
	call nz,0f203h
	ld a,(hl)
	call p,0c67fh
	rla
	ld d,(hl)
	ld a,a
	jr c,l644ah
	ld (hl),d
	call pe,091feh
	inc a
	ld e,b
	add a,l
	ld d,(hl)
	ei
	jp p,l5c84h
	inc de
	adc a,e
	ld c,c
	adc a,h
	ld a,a
	ex de,hl
	adc a,b
	sbc a,c
	rst 30h
	inc a
	out (083h),a
	ld sp,0b780h
	call 0e1c7h
	ld d,c
	cp 0e8h
	ld h,a
	adc a,a
	rst 38h
	add a,e
	ld a,(hl)
	jp 0a68fh
l6480h:
	ret nz
	add a,d
	ld sp,0de7fh
	cp 0e1h
	push af
	ld e,a
	jp p,0eed5h
	or c
	ld b,013h
	ld e,b
	add a,e
	adc a,h
	ld c,d
	adc a,e
	inc h
	di
	sub h
	add hl,de
	ld (hl),06fh
	push af
	ld b,07fh
	rst 28h
	adc a,b
	adc a,c
l64a0h:
	di
	in a,(080h)
	dec e
l64a4h:
	dec a
	djnz l6433h
	ld a,c
	ld h,b
	rst 8
	add a,e
	dec c
sub_64ach:
	defb 0fdh,064h ;ld iyh,iyh
	halt
	ld d,b
	sbc a,a
	ld a,(iy+07ah)
	ld h,0e7h
	call m,0378bh
	ret nz
	dec b
	ld a,a
	bit 3,c
	adc a,h
	cp 0e4h
	cp 071h
	inc sp
	ld a,(hl)
	pop af
	ld c,d
	ld a,a
	ld d,0f7h
	inc sp
	ld h,a
	inc c
	add a,l
	sub d
	ld l,086h
	adc a,a
	scf
	sbc a,l
	inc sp
	ld a,a
	rst 20h
	and (hl)
	add a,d
	daa
	adc a,h
	ld (hl),c
	ret z
l64ddh:
	xor c
	add a,c
	push hl
	ld (hl),a
	ld a,(hl)
	call 0d5d1h
	ei
	rst 28h
	ld a,a
	adc a,(hl)
	ld h,(hl)
	nop
	add a,d
	inc c
	dec b
	ld d,e
	jr nc,l6539h
	sub 08ch
	add a,l
	ld d,e
	ld d,a
	ld (hl),l
	halt
	sub (hl)
	ld d,h
	ld l,b
	ld l,a
	adc a,h
	add a,b
	add a,b
	ld (hl),b
	adc a,a
	rst 30h
	ld (hl),e
	ld (hl),e
	jr c,$+1
	ld h,h
	ld (hl),a
	rst 38h
	ld h,e
	cp d
	adc a,l
	nop
	call z,09796h
	rst 0
	inc de
	add hl,bc
	sub b
	adc a,b
	ld a,(0fdd6h)
	and e
	add a,b
	ld l,h
	djnz l64a4h
	cp d
	ld h,h
	ld l,e
	ld d,(hl)
	ld e,d
	ld h,a
	ld a,l
	sbc a,c
	cp 0f5h
	or (hl)
	ld sp,hl
	ld e,035h
	ld a,a
	inc l
	nop
	ld a,a
	ld e,e
	call z,083ffh
	dec (hl)
	xor d
	ld c,(hl)
	ld a,a
	inc d
	ld h,(hl)
l6539h:
	dec b
	add a,(hl)
	and b
	ret m
	di
	scf
	jr nz,l6579h
	add a,l
	ld a,d
	add a,a
	ld d,(hl)
l6545h:
	ld (hl),e
	adc a,b
	adc a,l
	or h
	di
	ld a,a
	inc hl
	sbc a,c
	sub c
	add a,d
	ld h,e
	add a,h
	dec h
	add a,b
	xor c
	add a,d
	sbc a,0ffh
	ld h,e
	ld a,a
	sbc a,(hl)
	ld e,(hl)
	and a
	ei
	ld h,l
	cp 01fh
	jr nc,$+129
	rrca
	ld a,(hl)
	ld l,h
l6565h:
	ld l,b
	dec hl
	cp a
	add a,e
	ld a,(bc)
	ld (hl),e
	ld l,e
	sbc a,b
	sub h
	ld d,(hl)
	ld h,e
	and (hl)
	ld (0b9f6h),hl
	sbc a,e
	ld e,a
	di
	jr $+117
l6579h:
	ld (l75ffh),hl
	adc a,l
	jp po,08df8h
	pop af
	jr c,l6586h
	ld c,a
	ld (de),a
	ld (hl),b
l6586h:
	ld a,a
	xor d
	add a,c
	ld c,a
	ld a,a
	dec e
	add a,h
	ld e,(hl)
	ld a,a
	dec de
	halt
	ld a,(hl)
	call m,013eeh
	ex (sp),hl
	call 0e2f7h
	inc sp
	ld e,053h
	ld h,a
	rla
	and h
	pop bc
	nop
	ld a,(bc)
	ld c,09dh
	ld a,a
sub_65a5h:
	jp z,l786bh
	rst 28h
	sbc a,c
	or 022h
	add a,e
	jp (hl)
	add a,a
	ld h,h
	xor 0dah
	add a,l
	add hl,bc
	ccf
	ld h,a
	ld d,e
	ld a,b
	ld h,e
	ret m
	or (hl)
	adc a,b
sub_65bch:
	call nc,03806h
	ld h,b
	sbc a,a
	jp m,0c114h
	ld a,c
	add hl,de
	halt
	sbc a,c
	ld a,a
	ld b,h
	ld b,a
	ld b,h
	add a,b
	ld c,010h
	adc a,d
	cp e
	ld h,l
	xor l
	call c,0819dh
	ld c,d
	ld h,a
	jp po,0fbd7h
	ret nz
	ld d,e
	jp p,0647fh
	jr nc,l6661h
	and b
	or l
	rst 20h
	ret z
	ld d,(hl)
	sbc a,c
	add a,e
	rst 30h
	add a,b
	call nz,093a2h
	ld a,a
	ld e,a
	ld a,a
	ld b,c
	add a,a
	scf
	add a,a
	dec (hl)
	inc sp
	add a,e
	ld (09633h),a
	dec hl
	rst 38h
	dec sp
sub_65feh:
	adc a,c
	dec l
	jp m,0fdceh
	jp p,l78b7h
l6606h:
	ld l,d
	ld bc,l51f6h
	ld a,a
	add a,b
	or l
	add a,d
	or h
	push hl
	ex (sp),hl
	rst 10h
	ld (0fc56h),hl
	ld d,d
	scf
	rst 30h
	ei
	ld l,b
	sbc a,c
	pop hl
	ld d,(hl)
	ret m
	jr z,$+121
	ld d,a
	ld l,b
	and e
l6623h:
	ld (de),a
	xor e
	sbc a,e
	adc a,c
	sub c
	add a,b
	rst 8
	ld sp,hl
	dec h
	ld l,l
	ld a,c
	ld d,b
	add a,e
	ccf
	ld d,a
	di
	ld a,e
	add a,(hl)
	ld b,a
l6636h:
	ld a,(bc)
	halt
	rst 30h
l6639h:
	rst 38h
	inc hl
	ld (hl),e
	add a,e
	add a,a
	ld d,l
	jp nz,086a4h
	rst 0
	ld h,l
	ld d,b
	ld a,a
	call nc,09642h
	add a,b
	ld a,e
	ld a,a
	inc hl
	inc bc
	jr nc,l6639h
	daa
l6651h:
	add a,h
	ld h,a
	ei
	adc a,0fdh
	ret c
	sub (hl)
	sbc a,c
	ld (hl),e
	and d
	ret nz
	nop
	or b
	ld d,c
	and e
	rrca
l6661h:
	add a,b
	call nc,sub_64ach
	adc a,e
	ld d,(hl)
	ld h,a
	add a,(hl)
	xor a
	add a,b
	sbc a,c
	call p,0f39fh
	and (hl)
	adc a,b
	ld h,(hl)
	ld a,a
	ld c,e
	dec b
	halt
	sbc a,b
	and d
	adc a,c
	or a
	jp m,0824ah
	inc e
	sbc a,c
	ld a,(bc)
l6680h:
	di
	ld a,a
	add a,b
	inc l
	rst 30h
	and 0b6h
	ld e,c
	ld a,e
	or 0b9h
l668bh:
	jr nc,$+55
	cp 01bh
	ei
	inc d
	sbc a,e
	and e
	ld a,b
	ld a,a
	add a,c
	set 0,b
	ld d,l
	add a,b
	dec e
	add a,096h
	ld (hl),d
	defb 0edh ;next byte illegal after ed
	inc sp
	dec (hl)
	pop af
	ld l,d
	add a,c
	ld l,d
	ccf
	di
	add a,080h
	ld c,l
	add a,d
	adc a,b
	ld sp,hl
	adc a,l
	or c
	ld (hl),l
	scf
	cp 02eh
	ld l,h
	ld de,0a47ch
	rst 38h
	add hl,sp
	ld (bc),a
	inc h
	ld sp,hl
	adc a,(hl)
	ld a,a
	dec h
	add a,b
	dec e
	jr nz,l6651h
	ld a,a
	and 0beh
	ld d,a
	and a
	inc bc
	adc a,a
	ld d,e
	jr nc,$+1
	push hl
	ld iy,(08e77h)
	rst 38h
	adc a,00ch
	cp d
	add a,(hl)
	in a,(084h)
	ld h,b
	ld b,067h
	ld b,l
	halt
	add a,b
	ex de,hl
	sub a
	pop af
	ld hl,(08455h)
	add a,0f5h
	ld a,a
	and e
	ret m
	ld a,e
	scf
	ld (hl),a
	sub d
	ld (hl),c
	adc a,b
	xor l
	ld de,05086h
	ld a,a
	di
	jp nc,04bffh
	add a,b
	rra
	ld a,a
	dec c
	add a,a
	inc h
	add a,a
	xor h
	adc a,h
	xor d
	inc bc
	rst 38h
	in a,(08dh)
	cp 078h
	ld h,a
	ld a,a
	sbc a,a
	nop
	jp z,0b289h
	xor b
	pop bc
	ex af,af'
	ld h,a
	ld h,l
	ld l,076h
	add hl,bc
	ld a,a
	inc de
	ld d,a
	ld a,a
	inc sp
	ld a,a
	ld b,c
	add a,(hl)
	ccf
	scf
	ld (hl),l
	inc sp
	adc a,d
	sbc a,b
	rst 38h
	ei
	adc a,b
	push bc
	ld a,h
	pop af
	rst 38h
	ld e,(hl)
	nop
	ld a,a
	xor a
	ld b,d
	ld a,a
	adc a,e
	call pe,0d638h
	di
	and e
	sub c
	cp b
	cp 0d3h
	add a,a
	add a,a
	and b
	sbc a,e
	defb 0edh ;next byte illegal after ed
	or 05ch
	dec (hl)
	ld bc,0221bh
	rlca
	jp (hl)
	inc (hl)
	jr c,$-119
	add a,c
	ld c,(hl)
	ld (hl),a
	jp m,l560ah
	ld d,a
	ld h,e
	sub a
	call sub_45f4h
	ld h,a
	adc a,a
	sbc a,h
	ld a,a
	set 7,(hl)
	sbc a,a
l6760h:
	nop
	add a,(hl)
l6762h:
	ret p
	ld h,l
	ld (hl),e
	add a,b
	ld c,l
	ld h,d
	ld a,a
	nop
	rst 38h
	ld a,02ch
	nop
	rst 20h
	dec b
	sbc a,d
	dec de
	sub (hl)
	cp 01eh
	adc a,b
	ld a,a
	inc a
	add a,b
	ld c,050h
	ld d,l
	ld d,b
	ld a,a
	ld (hl),b
l677fh:
	call pe,03316h
l6782h:
	ld l,b
	add a,l
	ld (hl),b
	ret p
sub_6786h:
	sub (hl)
	inc h
	di
	ld d,d
	inc bc
	ld e,a
	adc a,b
	ld sp,08437h
sub_6790h:
	pop bc
	ld d,a
	ld h,l
	inc a
	ld c,c
	rst 38h
	inc hl
	rst 10h
	ld a,a
	push bc
	add a,b
	ld c,l
	ld a,044h
	ld a,a
	ld c,b
	push bc
	sbc a,e
	ld d,l
	ret p
	push bc
	ld c,l
	ld de,l5ad6h
	ld a,a
	sbc a,a
	sbc a,(hl)
	ld a,a
	ld a,a
	add a,e
	ld d,c
	rst 38h
l67b1h:
	ret nz
	ccf
	ld (hl),088h
	ld e,c
	ccf
	or 087h
	ld h,c
	ld h,(hl)
	inc sp
	ld a,d
	ld sp,l7f33h
	ld d,e
	add a,(hl)
	ret z
	jr c,l6760h
	sub e
	add a,(hl)
	ld a,(bc)
	sub a
	ld a,07eh
	ld hl,(l668bh)
	add a,b
	dec sp
	add hl,sp
	ld (0ff10h),hl
	cp b
	rst 38h
	di
	xor (hl)
	add ix,ix
	ret po
	xor b
	rst 38h
	jp (hl)
	ld l,b
	ld a,a
	jp (hl)
	defb 0fdh,0ddh,0e2h ;illegal sequence
	nop
	ld a,b
	jp (hl)
	ld hl,l68f3h
	ld (hl),e
	or 05bh
	add a,b
	rst 0
	rst 28h
	rst 28h
	ei
	ld h,(hl)
	inc b
	ld c,h
	sub e
	halt
	jp z,0fec6h
	ld a,024h
	ld bc,l7880h
	ld l,d
	rst 38h
	rst 0
	ld a,a
	jr nz,l6807h
	ld a,a
	push bc
l6807h:
	in a,(05ch)
	ld d,a
	ret po
	ld (hl),l
	adc a,e
	xor b
	dec (hl)
	cp 0f4h
	rst 10h
	ld a,a
	cp h
	ld l,080h
	rlca
	add a,(hl)
	ld d,e
	jp nz,0eefah
	ld l,h
	ld (hl),e
	ld h,(hl)
	ld (hl),e
	defb 0fdh,032h,03fh ;illegal sequence
	inc bc
	add a,(hl)
	ret
	add a,b
	ld c,e
	cp 0c9h
	rlca
	nop
	ld a,a
	or 004h
	ld hl,02412h
	ld b,d
	adc a,l
	call po,07cffh
	cp b
	pop af
	call z,sub_7790h
	ld a,a
	ret p
	inc a
	nop
	ld a,a
	or (hl)
	cp 0b0h
	rst 28h
	ld (hl),l
	ld e,a
	ret po
	ld a,a
	ld h,(hl)
	ccf
	and d
	ld a,d
	ld a,a
	ld h,e
	ld a,a
	add a,b
	ld d,a
	add a,03dh
	call m,03600h
	ld (hl),b
	add a,c
	sub (hl)
	add a,e
	ld sp,l7f21h
	jp p,0353dh
	ld a,a
	rst 18h
	ld d,l
	ld a,a
	ld d,h
	add a,b
	in a,(082h)
	adc a,h
	or 07fh
	ld a,h
	di
	call p,sub_56f3h
	ld (hl),0feh
	push hl
	defb 0fdh,005h,0abh ;illegal sequence
	ld (hl),0fah
	ld (hl),e
	ret m
	ld a,a
	adc a,d
	ld de,08421h
	ld c,a
	ld a,a
	add a,(hl)
	jp p,0edeah
	dec a
	ld a,a
	ex (sp),hl
	cp 0d8h
	adc a,b
	ld d,b
	sub a
	add a,b
	ld e,l
	rst 20h
	ld c,c
	add a,b
	sbc a,l
	ld h,l
l6895h:
	sub d
	ld l,037h
	add a,h
	ld sp,hl
	add a,a
	ld l,a
	add a,a
	adc a,c
	ret nz
	inc h
	add a,(hl)
	rst 20h
	ld a,l
	rst 8
	ld a,a
	or 035h
	jr nc,l6895h
	dec h
	rst 38h
	jp 0938ah
	adc a,a
	add hl,de
	rst 30h
	ld a,a
	and a
	rst 10h
	ld l,(hl)
	or b
	xor a
	ld a,e
	or a
	ld e,a
	add a,c
	jp c,0da83h
	cp h
	exx
	jp m,0abf8h
	call m,000cbh
	adc a,a
	ld a,a
	sub a
	cp 016h
	cp 03ch
	add hl,sp
	ld a,a
	rst 8
	ld a,(bc)
	ld a,(hl)
	ld b,h
	adc a,b
	sbc a,a
	adc a,c
	inc bc
	add a,b
	ld (hl),h
	sbc a,b
	daa
	inc sp
	ld a,a
	ld l,a
	xor (hl)
	ret m
	ld sp,0f500h
	sbc a,e
	defb 0ddh,0fch,000h ;illegal sequence
	xor (hl)
	ld bc,09c7fh
	ld (sub_767fh),hl
	adc a,d
	ld h,e
	jp m,035bbh
l68f3h:
	ld a,(hl)
	jp 08f7fh
	sub h
	sbc a,(hl)
	ld h,(hl)
	ld a,a
	rst 8
	dec b
	ld a,a
	ld e,b
	add a,b
	push de
	ld (hl),002h
	ld a,h
	ld l,(hl)
	defb 0fdh,06ah ;ld iyl,d
	rst 38h
	rst 8
	rlca
	ld (hl),e
	ld a,a
	add a,0a4h
	rst 38h
	call 0f38eh
	ld a,a
	ret z
	ld a,h
	add a,b
	pop hl
	ld h,(hl)
	jp (hl)
	ld c,(hl)
	ex af,af'
	dec (hl)
	cp 0f7h
	ld e,088h
	inc bc
	dec b
	ld a,a
	or e
	add a,c
	ld (hl),l
	add a,e
	add a,e
	add hl,hl
	ret m
	jr l6981h
	or 080h
	ld h,l
	cp 0ech
	adc a,(hl)
	add a,h
	jp po,085fch
	ld (bc),a
	inc h
	ld b,c
	djnz $-5
	ld a,d
	ld b,a
	ld sp,hl
	dec c
	ld d,e
	xor 0dfh
	ld a,a
	ld a,(bc)
	call m,0d6f7h
	ld a,a
	dec (hl)
	ret c
	inc a
	ld (l6606h),hl
	ld h,e
	add a,l
	xor l
	dec sp
	adc a,l
	add a,b
	adc a,a
	defb 0fdh,0abh,07fh ;illegal sequence
	set 7,h
	ret p
	inc d
	ld b,h
	ld e,(hl)
	ld b,c
	ex af,af'
	ld a,a
	jr c,$-10
	sbc a,c
	ld a,c
	ld b,l
	dec l
	ld h,a
	jp (hl)
	ret
	dec b
	cp 02fh
	inc b
	ld a,a
	inc sp
	rst 10h
	ret c
	adc a,d
	ei
	xor b
	cp h
	jp pe,03381h
	ld a,a
	jp p,0121ah
	add a,c
	ld a,c
	ld a,a
	rst 38h
l6981h:
	rst 20h
	jr l6984h
l6984h:
	ld (hl),a
	jp p,0eb7fh
	sub 07fh
	ret po
	ld c,l
	dec b
	and c
	ld d,d
	pop af
	ld l,065h
	add a,d
	push de
	nop
	ld h,e
	call m,0f37ch
	push af
	rst 10h
	nop
	ld e,07fh
	ld d,d
	add a,b
	ld h,e
	ld sp,hl
	sbc a,a
	ld a,(hl)
	ld de,0e1feh
	rst 38h
	dec l
	ld a,e
	ld a,(hl)
	ld h,a
	ld a,a
	ld h,c
	ret z
	rrca
	ld c,e
	push af
	add a,c
	ld c,a
	nop
	ld a,a
	pop bc
	rst 18h
	add a,l
	ld c,083h
	rst 8
	ld sp,hl
	jp p,0f3bdh
	adc a,a
	cp 027h
	adc a,b
	ei
	di
	ld a,a
	xor 000h
	or a
	rst 18h
	add a,e
	add a,h
	and a
	ld h,(hl)
	rrca
	and b
	ld (hl),078h
	halt
	add a,a
	inc (hl)
	add a,(hl)
	ld d,a
	ld h,(hl)
	ld a,a
	ret po
	cp h
	ld (0aa7fh),hl
	jp pe,0f9a6h
	ld a,(de)
	ld (hl),a
	jp (hl)
	jp (hl)
	call m,0fa8eh
	dec d
	ld d,e
	dec hl
	ld d,e
	jr nc,$+1
	ret c
	ld h,l
	ld d,(hl)
	rst 10h
	xor 02ah
	rst 0
	jr nc,l6a1ch
	ld (hl),a
	ld a,b
	add hl,bc
	adc a,b
	ld e,b
	rst 30h
l69feh:
	ld h,b
	add a,l
	ld a,c
	cp h
	ld c,057h
	ld (de),a
	rst 38h
	jp (hl)
	ret pe
	ei
	ld a,a
	ex de,hl
	sub c
	ld e,e
	ld a,a
	ret p
	rla
	ld d,b
	dec (hl)
	rst 38h
	jp pe,02577h
	add a,(hl)
	adc a,b
	add a,b
	ret z
	ld b,033h
l6a1ch:
	ld (hl),h
	ld a,a
	cp 075h
	ld bc,057ffh
	adc a,b
	add a,l
	adc a,a
	ret p
	ld h,b
	call m,0297fh
	nop
	inc b
	call m,044fah
	ld (hl),c
	ld b,b
	ld de,0befah
	scf
	ld sp,hl
	xor c
l6a38h:
	ld h,a
	jp (hl)
	ld (hl),l
	ld a,l
	ld d,l
	ret m
	jp m,071feh
	sub l
	jp nc,0fe55h
	dec a
	ld h,d
	or c
	ld e,083h
	adc a,a
	ld (hl),00eh
	nop
	add a,l
	rst 30h
	push af
	adc a,b
	ld (hl),008h
	dec (hl)
	ld d,e
	or 087h
	add a,b
	adc a,a
	ld h,(hl)
	add a,(hl)
	ld a,a
	jp z,0fdd2h
	add a,b
	sub d
	defb 0fdh,03ch,0f1h ;illegal sequence
	ld l,c
	inc bc
	call m,0074fh
	rst 38h
	ld a,h
	inc b
	nop
	ex af,af'
	ex de,hl
	add a,c
	add a,e
	rst 30h
	jr c,l6aaah
	cp 01eh
	nop
	dec (hl)
	ret m
	di
	adc a,a
	rst 38h
	ld (bc),a
	halt
	inc sp
	adc a,b
	add a,a
	ld (hl),l
	ccf
	dec hl
	ld a,h
	add a,(hl)
	ld a,a
	and l
	ld bc,08712h
	ld sp,09682h
	rst 38h
	add hl,sp
	jp z,0bdffh
	ld (hl),a
	ld l,c
	ld h,(hl)
	defb 0fdh,08ch ;adc a,iyh
	defb 0fdh,08fh,0ffh ;illegal sequence
	add a,a
	or d
	defb 0ddh,051h,038h ;illegal sequence
	jp (hl)
	ld (0f0ffh),hl
	adc a,(hl)
	call nz,065c3h
	ld e,b
l6aaah:
	ld a,a
	dec (hl)
	adc a,e
	ld b,b
	scf
	ld h,a
	jr c,l6a38h
	ld b,h
	add a,l
	add a,e
	ld l,a
	ld e,e
	ret m
	adc a,h
	set 6,(hl)
	ret
	ld a,a
	ret p
	sbc a,0b9h
	dec a
	ld d,(hl)
	ld a,a
	ld (hl),a
	ei
	inc hl
	rst 38h
	ex (sp),hl
	ld c,a
l6ac9h:
	ld d,b
	add a,b
	and h
	ei
l6acdh:
	add a,d
	inc sp
	jr c,l6ac9h
	rst 30h
	ret pe
	adc a,h
	ret pe
	rst 38h
	or 0c2h
	add a,c
	ld b,h
	ld a,03fh
	ld (hl),l
	adc a,(hl)
	ld hl,(03866h)
	sub l
	xor c
	sbc a,b
	add a,b
	ld a,a
	ld sp,hl
	ld a,(bc)
	inc bc
	cp 05bh
	jp (hl)
	ld (hl),a
	sub a
	rst 38h
	sub c
	jr nc,l6b71h
	ret pe
	jr c,l6acdh
	rst 28h
	ld (hl),083h
	ld a,(l5075h)
	ld b,h
	ret c
	add a,l
	di
	rst 38h
	ld (0f87fh),hl
	jp m,05309h
	ld h,l
	ld l,b
	ld h,e
	defb 0fdh,007h,067h ;illegal sequence
	ld l,b
	add a,a
	ld a,a
	sub 022h
	or a
	adc a,h
	ld c,h
	rst 38h
	ld c,d
	ld (iy-061h),h
	rst 38h
	and h
	dec b
	ld d,e
	di
	ld a,a
	dec b
	ret m
	ld d,a
	jr c,$+105
	ld d,a
	sub c
	call p,0f553h
	add a,c
	sbc a,e
	ld a,a
	ld d,l
	add a,(hl)
	adc a,e
	ld d,a
	add a,h
	ld bc,l5686h
	ld h,e
	ld l,b
	ld (hl),b
	push af
	sbc a,09dh
	nop
	ld c,a
	cp 038h
	adc a,h
	jp (hl)
	rst 38h
l6b41h:
	inc a
	ld h,e
	jp (hl)
	pop bc
	defb 0fdh,07fh,00fh ;illegal sequence
	ld a,a
	ret nz
	ld a,a
	ld c,h
	rst 38h
	or l
	ld d,l
	dec l
	rst 38h
	ld d,b
	ei
	and b
	ld h,e
	rst 38h
	ret m
	ccf
	sbc a,e
	add a,b
	adc a,c
	ret nc
	ld h,e
	jr c,l6b75h
	ld e,b
	ld d,l
	ld a,b
	add a,b
	rra
	ld h,a
	ld h,b
	ld a,a
	sub c
	ex de,hl
l6b69h:
	sbc a,c
	ld l,c
	call pe,0f903h
	ld a,a
	xor a
	ld e,l
l6b71h:
	ld a,a
	jr nc,l6b69h
	ld h,a
l6b75h:
	add a,a
	ld e,a
	ld b,a
	ld l,a
	rst 38h
	jr nz,l6b81h
	ccf
	or 03fh
	ret m
	dec de
l6b81h:
	adc a,b
	inc sp
	add a,(hl)
	adc a,d
	add a,d
	ld h,(hl)
l6b87h:
	di
	add a,l
	call sub_65a5h
	add a,d
	ld c,(hl)
	ld (hl),b
	rst 38h
	ld a,c
	ld a,07fh
	ld e,b
	rst 38h
	ret m
	ld (hl),a
	inc iy
	add a,b
	ret po
	call p,0f393h
	ld a,a
	jr z,$+122
	push af
	rst 28h
	add hl,sp
	ld d,e
	push af
	dec bc
	dec b
	ld h,(hl)
	ld l,a
	rst 38h
	ccf
	ld (hl),e
	sub b
	inc b
	add a,a
	rst 38h
	sub e
	sub a
	add a,c
	nop
	add a,l
	ld (hl),l
	ld d,(hl)
	ld e,a
	push af
	jr c,l6b41h
	and a
	add a,b
	sub d
	rst 38h
	ccf
l6bc1h:
	ld e,080h
	sbc a,038h
	cp 0bdh
	ld a,a
	ld hl,(0a5f1h)
	ld a,a
	cp 0a8h
	dec bc
	ld l,a
	push af
	ld h,0ffh
	ld (hl),e
	add a,c
	nop
	ld (hl),e
	rst 30h
	rst 38h
	ld h,a
	add a,e
	dec (hl)
	add a,a
	ld h,a
	inc c
	ret m
	ld d,e
	ccf
	scf
	add a,d
	rst 30h
	xor a
	add a,b
	ld e,a
	ld a,a
	dec sp
	cp 04fh
	ld l,c
	ld a,l
	sub b
	ret c
	rst 38h
	ret m
	ld e,l
	inc bc
	ex (sp),hl
	ret pe
	rrca
	inc a
	rst 30h
	adc a,b
	ld a,a
	ld b,b
	or 053h
	rst 38h
	ld (hl),a
	ccf
	ld e,b
	xor h
	add a,d
	and c
	add a,a
	push af
	rst 38h
	ld de,0678fh
	adc a,l
	dec (hl)
	add a,b
	cp h
	or d
	add a,b
	ex (sp),hl
	cp 0deh
	ld (hl),l
	cp 0edh
	ret z
	ld (hl),0feh
	call m,sub_7f79h
	add a,b
	cp 089h
	ld b,035h
	add a,e
	defb 0fdh,08dh ;adc a,iyl
	push bc
	ld a,b
	di
	dec (hl)
	adc a,l
	add a,b
	ld a,b
	or 0ffh
	adc a,a
	ccf
	ret po
	add a,b
	push af
	scf
	inc d
	ld l,b
	add a,(hl)
	ld e,a
	adc a,l
	ld h,a
	add a,c
	exx
	defb 0fdh,02eh,04ch ;ld iyl,04ch
	ld d,(hl)
	xor (hl)
	dec a
	ld l,c
	rst 18h
	inc bc
	ld a,a
	dec hl
	nop
	rst 38h
	defb 0ddh,013h,006h ;illegal sequence
	or l
	dec e
	di
	ld d,e
	adc a,d
	call c,08380h
	scf
	ld d,l
	ld d,e
	jp m,l5f21h
l6c5ah:
	adc a,a
	dec (hl)
	adc a,d
	ld (hl),08ah
	inc de
	adc a,l
	ld (08cf8h),hl
	ld c,e
	nop
	add a,b
	jp nc,0d720h
	add a,031h
	ld d,(hl)
	ld d,e
	ld h,a
	jp (hl)
	rra
	inc c
	rst 38h
	cp h
	sbc a,(hl)
	ld a,a
	or h
	adc a,(hl)
	ld c,c
	jp pe,0d80ah
	dec b
	ld l,a
	or 026h
	ld d,(hl)
	ld a,a
	di
	ld c,b
	adc a,b
	ld sp,hl
	ld (hl),l
	ld (0f75fh),hl
	add a,d
	ld b,075h
	ld (hl),l
	rst 30h
	ld (hl),a
l6c90h:
	add a,a
	ld sp,hl
	jp m,0007ch
	ld d,c
	rst 38h
	jp po,0f877h
	ld l,c
	xor e
	add a,b
	jp po,0c051h
	dec d
	ret
	ret pe
	dec b
	inc a
	dec (hl)
	ld d,b
	dec bc
	ld (bc),a
	ld e,a
	di
	ld d,l
	ld (hl),07fh
	ld d,b
	rst 38h
	add a,c
	rst 30h
	ld c,073h
	add a,l
	ld h,l
	ld d,e
	sbc a,c
	inc e
	ld h,l
	add a,c
	di
	rst 0
	sub h
	adc a,a
	ld a,a
	add a,e
l6cc1h:
	halt
	ld a,a
	pop hl
	rst 0
	add a,b
	sub e
	xor d
	rst 30h
	nop
	ret nc
	rrca
	ld (hl),a
	or e
	di
	ld a,(bc)
	and c
	ld d,(hl)
	or 036h
	ld a,e
	sbc a,l
	ret m
	sub h
	adc a,c
	ld (hl),b
	sub a
	add a,e
	xor d
	and a
	adc a,l
	ld l,(hl)
	add hl,de
	cp 07fh
	jp (hl)
	ld a,(hl)
	ld (hl),a
	cp 02fh
	ld b,069h
	and e
	dec (hl)
	add a,b
	pop hl
	rst 30h
	ld a,a
	ld d,b
	ld h,(hl)
	defb 0edh ;next byte illegal after ed
	ret m
	ld (hl),h
	add a,e
	ld h,(hl)
	rst 38h
	inc de
	ld h,(hl)
	inc sp
	ld h,l
	rst 30h
	ld h,078h
	djnz l6c90h
	add a,b
	ret nz
	adc a,a
	or 087h
	or 0f7h
	rra
	add a,(hl)
	or 000h
	nop
	ld e,a
	ld a,a
	add a,(hl)
	jp m,l77c7h
	ld (hl),a
	jp (hl)
	call m,sub_7f7fh
	inc h
	cp 0bah
	or a
	ld d,(hl)
	jp p,0e728h
	adc a,0e7h
	ld a,a
	ret m
	jr z,$-6
	ld (hl),0f3h
	inc sp
	sub e
	ld (hl),l
	adc a,b
	add a,d
	dec d
	ld l,0f7h
	add a,l
	ld a,086h
	ld h,l
	ld a,a
	ret z
	add a,c
	adc a,006h
	ld e,a
	ld (hl),07eh
	ld d,069h
	xor l
	inc sp
	add a,c
	pop hl
	or 040h
	inc b
	ld d,l
	ld d,a
	halt
	ld d,l
	ret m
	ld l,a
	ld (hl),a
	sbc a,(hl)
	adc a,d
	ld (hl),b
	add a,b
	or d
	ld sp,hl
	add a,b
	ld (hl),d
	sub c
	ld sp,08c5fh
	ld a,b
	ld (hl),e
	xor e
	sbc a,d
	xor d
	sbc a,h
	cp 07fh
	and a
	ld h,(hl)
	ld a,a
	adc a,056h
	ld sp,hl
	ld a,a
	sub h
	ld d,b
	jp p,088e0h
	ld c,h
	add a,a
	cp d
	inc sp
	sbc a,c
	ld a,070h
	adc a,h
	adc a,09ch
	and b
	rst 38h
	scf
	ld a,a
	ld h,h
	rst 30h
	ld a,b
	ld a,a
	dec (hl)
	ld d,086h
	inc sp
	ret m
	xor d
	defb 0ddh,0f5h,07ch ;illegal sequence
	or (hl)
	defb 0fdh,0e0h,066h ;illegal sequence
	sbc a,a
	add a,(iy-001h)
	inc a
	inc hl
	add a,b
	jp c,l59f5h
	ld c,e
	jr nc,$+1
	add a,d
	inc sp
	add a,b
	jr nz,l6e15h
	ld l,b
	add a,e
	add a,(hl)
	ld (hl),b
	ld l,b
	dec c
	halt
	ld d,c
	ld h,l
	ld a,c
	rst 30h
	ld (de),a
	add a,a
	halt
	add a,e
	nop
	add a,l
	dec (hl)
	ld a,a
	di
	halt
	add a,l
	ld h,e
	ld a,(hl)
	nop
	ld a,a
	ld (0ff35h),hl
	cpl
	ld a,a
	sbc a,(hl)
	add a,b
	ld e,(hl)
	rrca
	ret pe
	rst 20h
	add a,d
	inc e
	ld h,d
	ret pe
	sub e
	inc hl
	adc a,a
	add a,b
	jr c,l6e32h
	inc c
	inc h
	ld (hl),a
	ld (hl),l
	rst 30h
	sub e
	defb 0fdh,0b8h,050h ;illegal sequence
	ld h,e
	add a,e
l6dd7h:
	pop af
	sub h
	ld (hl),e
	add a,b
	sub e
	nop
	ld a,a
	pop af
	rrca
	inc sp
	ld h,(hl)
	ld a,l
	adc a,d
	rst 38h
	ld e,d
	ld c,d
	ld h,l
	add a,b
	rst 0
	add a,c
	sbc a,h
	call p,05370h
	adc a,a
	cp e
	dec hl
	ld (hl),b
	di
	ld b,c
	rst 30h
	jr c,l6e4dh
	add a,c
	xor h
	and l
	ld (hl),a
	add a,b
	djnz l6e3eh
	ld de,l7335h
	di
	inc e
	ld e,a
	inc sp
	rst 30h
	xor b
	push hl
	ld a,a
	pop af
	and l
	ld (bc),a
	defb 0fdh,0b7h,055h ;illegal sequence
	ld a,a
	pop de
	add a,d
	cp c
	add a,b
l6e15h:
	ld l,0f4h
	call p,033c2h
	add a,c
	cp h
	rst 0
	or 0f5h
	ld (hl),l
	di
	call 08256h
	jp pe,l5080h
	ld d,e
	di
	or h
	sub d
	ld a,(de)
	inc sp
	push af
	ld (hl),0a7h
	rst 20h
l6e31h:
	pop af
l6e32h:
	xor 05bh
	rst 30h
	push bc
	xor (hl)
	inc hl
	ld h,b
	ei
	ld e,h
	ld e,a
	ld l,b
	ld a,a
l6e3eh:
	inc a
	add a,b
	di
	add a,b
	ld e,09ah
	ld (hl),c
	ld d,l
	rst 18h
	add a,c
	ld b,l
	ld e,a
	push af
	inc bc
	ld l,b
l6e4dh:
	push af
	ld h,(hl)
	adc a,a
	sbc a,h
	jr nc,l6dd7h
	ld h,b
	ccf
	add a,e
	ccf
	adc a,c
	ei
	ld h,e
	ld a,a
	ret m
	ld sp,hl
	or (hl)
	ld a,l
	ld a,a
	cpl
	inc bc
	ld a,a
	adc a,c
	dec b
	ex (sp),hl
	rst 0
	ld a,a
	and a
	sub b
	jp 03356h
	ld (hl),04dh
	pop bc
	ld h,(hl)
	call 07b25h
	call m,0f758h
	add a,092h
	ld h,l
	rst 38h
	and 08fh
	rst 38h
	ld d,a
	adc a,b
l6e80h:
	ld a,a
	out (083h),a
	ex de,hl
	ld a,a
	ld e,078h
	ld a,b
	dec d
	ld d,(hl)
	ex (sp),hl
	sub (hl)
	cp a
	rst 28h
	inc h
	ld a,c
	ld c,0b2h
	ld h,l
	defb 0fdh,0b1h,084h ;illegal sequence
	nop
	nop
	ld sp,hl
	ccf
	ld a,a
l6e9bh:
	ld d,l
	add a,c
	cp h
	ld sp,0f0feh
	ld a,h
	nop
	sbc a,l
l6ea4h:
	and l
	ld a,a
	ld a,a
	rrca
	add a,b
	ld d,083h
	ld a,(090c9h)
	sbc a,023h
	inc c
	ld d,c
	rst 28h
	ld a,00ch
	cp h
	jr nz,l6ea4h
	cp a
	push bc
	ld (hl),b
	cp 0b8h
	ld h,e
	call m,0e9c7h
	sbc a,(hl)
	rla
	call z,08153h
	xor (hl)
	ld a,(hl)
	ld b,a
	ret nc
	ret po
	inc b
	add hl,bc
	cp e
	cp e
	ret nc
	ld sp,hl
	ld a,(hl)
	inc hl
	rlca
	call m,sub_7d78h
	adc a,b
	ld a,a
	ld a,a
	add a,h
	ld d,e
	add a,c
	dec a
	dec d
	sbc a,a
	inc bc
	jr nc,l6f39h
	add a,d
	sbc a,e
	rra
	cp h
	ret
	defb 0ddh,07fh,090h ;illegal sequence
	inc bc
	ei
	ld a,a
	ld l,l
	add a,d
	sbc a,b
	rst 38h
	pop af
	call m,02055h
	sbc a,c
	cp h
	call z,sub_4bcch
	sbc a,c
	add a,b
	xor (hl)
	rst 38h
	ld a,l
	ld d,l
	cp 0f3h
	ret m
	ld l,c
	ld (de),a
	ld (hl),066h
	add a,b
	rst 20h
	ld a,(hl)
	ret m
	ld (0fb09h),hl
	call z,03d00h
	call m,013beh
	cpl
	rst 38h
	rst 18h
	ld a,a
	jp p,080e9h
	sub 0ffh
	out (07fh),a
	xor 007h
	sbc a,h
	sbc a,a
	cp e
	call z,013cfh
	or a
	ld a,a
	defb 0edh ;next byte illegal after ed
	sub (hl)
	inc sp
	ld d,e
	add a,d
	or c
	add a,b
	sbc a,0fch
	cp d
	rst 0
	cp 0c6h
	rst 38h
	rrca
l6f39h:
	ret
	call m,0f0cfh
	inc d
	ld h,a
	ld b,h
	nop
	xor (hl)
	and a
	ld l,c
	rlca
	ld (hl),b
	rst 38h
	dec a
	ld a,035h
	ld a,a
	jp pe,l6782h
	ld a,a
	cp a
	ld a,(hl)
	cp h
	nop
	dec bc
	inc b
	rst 8
	cp h
	sbc a,h
	sbc a,c
	sub b
	rst 38h
	ld a,l
	or h
	add a,b
	rst 20h
	ret po
	ld d,l
	rst 38h
	defb 0fdh,076h,083h ;illegal sequence
	rst 20h
	dec d
	add a,090h
	rla
	jp m,002f7h
	cp e
	cp h
	call m,0ccc9h
	rst 38h
	dec a
	rst 38h
	ld a,a
	halt
	and e
	ld d,d
	add a,e
	in a,(03eh)
	add a,(hl)
	nop
	ld a,a
sub_6f7fh:
	call po,sub_7fcbh
	ei
	rra
	ret
	sbc a,c
	nop
	ld a,a
	add a,b
	call z,0ff95h
	rst 20h
	ld a,a
	cp 0deh
	ld e,d
	jp (hl)
	call p,086e6h
	jr c,l6f97h
l6f97h:
	ld h,e
	nop
	add a,b
	defb 0ddh,0fah,081h ;illegal sequence
	ret
	rst 8
	cp 02fh
	rlca
	ld a,a
	sub 035h
	ld a,h
	ld h,l
	ld a,a
	xor a
	ld (hl),a
	ccf
	ccf
	add a,a
	rst 20h
	ld a,a
	adc a,d
	defb 0fdh,07bh,092h ;illegal sequence
	sbc a,c
	nop
	sbc a,a
	defb 0fdh,05dh ;ld e,iyl
	cp 07fh
	or l
	inc bc
	sbc a,0d4h
	rst 38h
	ret m
	dec de
	ld a,a
	add a,b
	dec l
	ex (sp),hl
	ei
	rst 18h
	nop
	sbc a,(hl)
	defb 0fdh,07ch ;ld a,iyh
	ld d,015h
	rst 38h
	ret p
	ret m
	nop
	ld a,(hl)
	ld a,a
	dec h
	add a,c
	sub d
	add a,b
	in a,(055h)
	add a,b
	rst 8
	ld a,a
	xor h
	rst 38h
	ld sp,hl
	adc a,h
	add a,b
	and a
	cp 082h
	rst 38h
	cp 021h
	ld (hl),a
	ld b,060h
	defb 0fdh,0ddh,07eh ;illegal sequence
	ld a,a
	ld (08035h),hl
	ld e,e
	ld e,a
	inc sp
	dec bc
	ld a,(hl)
	ld d,b
	rrca
	ld sp,hl
	rst 38h
	sbc a,a
	ld a,(hl)
	sbc a,h
	ld a,a
	sub h
	inc bc
	jp l7ffeh
	ret p
	rst 20h
	add a,b
	ld h,l
	add a,b
	add a,l
	ld h,l
	defb 0fdh,0bdh ;cp iyl
	out (0fch),a
	rlca
	rst 38h
	call m,09fcch
	rla
	pop bc
	rst 38h
	cp a
	inc sp
	ld b,088h
	scf
	ld a,a
	pop af
	ld sp,hl
	nop
	ei
	ld a,a
	ld a,b
	rst 30h
	ld d,c
	rst 38h
	nop
	cp 0f0h
	defb 0fdh,000h,04fh ;illegal sequence
	inc sp
	ld a,a
	add a,08eh
	add a,b
	sbc a,e
l7031h:
	ld d,b
	rst 38h
	call p,0aa82h
	xor d
	xor a
	cp e
	rst 38h
	cp 0c4h
	cp a
	add a,b
	ld e,a
	ld a,a
	sub a
	rst 38h
	ld b,e
	ld l,b
	ld a,a
	ret p
	ret p
	and l
	pop hl
	add a,(hl)
	ld d,e
	ei
	and l
	add a,(hl)
	rra
	ld a,a
	ld b,b
	xor d
	xor e
	cp d
	ld c,d
	ccf
	ld a,h
	cp e
	nop
	add a,c
	ld d,e
	ld a,e
	pop af
l705dh:
	pop de
	inc b
	ld (bc),a
	jr nc,$+53
	ld a,a
	ret p
	ld e,077h
	ld (hl),a
	jp (hl)
	pop af
	ld (hl),033h
	nop
	inc l
	xor h
	cp 047h
	ld d,e
	defb 0fdh,0cch,0bbh ;illegal sequence
	ld a,(0bba3h)
	nop
	ld a,(hl)
	ret
	ld a,d
	ld (de),a
	ld d,l
	rst 38h
	push af
sub_707fh:
	inc b
	ld d,a
	cp (hl)
	in a,(0e3h)
	ld a,c
	ld a,l
	ld a,a
	ld c,003h
	ld a,a
	inc sp
	ld b,07fh
	and 086h
	ld a,(hl)
	xor e
	xor d
	ccf
	ld a,e
	jp z,l4ffeh
	add a,b
	jp po,07f77h
	exx
	ld h,a
	ld a,a
	jp po,0f55ah
	ld c,l
	ld a,e
	jr nc,l7124h
	rst 30h
	add a,b
	sub e
	ld a,(hl)
	ld b,h
	and e
	sbc a,c
	ei
	call m,0ffa6h
	out (000h),a
	cp h
	add a,b
	sbc a,(hl)
	ld a,(bc)
	rst 38h
	ld sp,hl
	and l
	rst 10h
	ld l,c
	ld a,a
	cp 078h
	ld a,07fh
	ld a,000h
	rst 18h
	dec b
	ld a,a
	ld a,(de)
	ld a,(bc)
	ld a,a
	sub (hl)
	nop
	ccf
	rst 30h
	ld b,h
	defb 0fdh,0cbh,06eh,0b9h ;res 7,(iy+06eh) & ld c,(iy+06eh)
l70d1h:
	add a,b
	jp z,04682h
	adc a,e
	ld h,d
	nop
	defb 0ddh,0ffh,0feh ;illegal sequence
	add a,(hl)
	ld h,(hl)
	rst 38h
	or e
	ret c
	sbc a,c
	ld a,a
	xor 076h
	call pe,0057fh
	ld h,a
	di
	defb 0edh ;next byte illegal after ed
	call pe,sub_6790h
	add a,(hl)
	rst 20h
	pop af
	scf
	ld d,l
	ld a,a
	rst 0
	ld a,h
	jr nz,l70d1h
	ld a,(hl)
	cp h
	rst 38h
	ret
	ei
	cp c
	ld a,a
	ld (hl),a
	ld a,(0ccbbh)
	add a,h
	rst 10h
	nop
	xor 07fh
	ret po
	ld a,035h
	ld a,a
	dec bc
	sub b
	cp c
	ld a,a
	inc h
	inc bc
	ld l,b
	adc a,d
	add hl,bc
	add a,(hl)
	ld h,e
	nop
	ex af,af'
	add hl,bc
	ld (hl),e
	add a,a
	ld a,06eh
	ld d,e
	rst 38h
	ret m
	and e
	defb 0fdh,010h,033h ;illegal sequence
l7124h:
	ld a,b
	rst 8
	cp h
	sbc a,e
	dec (hl)
	cp a
	sbc a,h
	rst 38h
	ld (hl),l
	nop
	sub b
	rst 38h
	cp a
l7131h:
	ld (hl),a
	ld a,a
	ld l,a
	inc sp
	ld a,a
	jr c,l7131h
	rst 10h
	ld (hl),a
	ld a,a
	add a,a
	rst 28h
	ret p
	jr nc,$-89
	sbc a,l
	xor a
	adc a,b
	ld c,a
	ld a,a
	add a,a
	call p,0f6b6h
	ld (hl),h
	call m,014c9h
	set 7,a
	sbc a,a
	defb 0fdh,0f2h,047h ;illegal sequence
	rst 38h
	jp 0e14eh
	rst 38h
	ld c,(hl)
	ld (hl),c
	add a,b
	rst 10h
	ld a,a
	dec l
	rlca
	inc b
	ld (de),a
	add a,a
	ld h,e
	jr c,$+6
	add a,b
	adc a,b
	defb 0fdh,03eh,07fh ;illegal sequence
	rla
	sbc a,c
	ld a,a
	ld c,h
	ei
	ld a,a
	adc a,(hl)
	rst 38h
	rra
	sub b
	ld a,a
	sub c
	add a,c
	add hl,de
	ld a,a
	di
	call p,00616h
	sub l
	ld (bc),a
l717fh:
	ld (hl),b
	add a,0e1h
	ld a,a
	cp d
	push af
	pop af
	ld l,l
	nop
	ret m
	ld c,c
	cp h
	di
	or l
	rst 38h
	add a,h
	nop
	rst 38h
	ld a,(hl)
	ld d,h
	add a,b
	and d
	ld d,(hl)
	ret p
	ld e,e
	cp (hl)
	add a,b
	jp (hl)
	rst 38h
	xor b
	ret m
	ret
	add a,b
	ld e,c
	xor c
	or e
	ret p
	sub b
	ld (bc),a
	ld b,c
	nop
	ld bc,0223eh
	djnz l722ch
	sbc a,h
	nop
	jp nz,09c7fh
	sbc a,a
	add a,b
	ld d,c
	nop
	rst 38h
	rst 8
	add a,b
	ld h,(hl)
	inc a
	ld h,b
	ld (hl),a
	dec de
	rrca
	dec (hl)
	ld d,(hl)
	ld a,a
	daa
	ld (hl),a
	ld a,a
	adc a,c
	ld b,087h
	ld a,(hl)
	xor (hl)
	add a,l
	ld h,0c0h
	ld (bc),a
	jr nz,l71d0h
l71d0h:
	ld (de),a
	ld b,h
	ld hl,0007bh
	cp 0c8h
	sbc a,c
	call pe,0f900h
	ret
	rst 28h
	ei
	add a,a
	ld a,a
	rst 28h
	push bc
	add a,d
	ld l,e
	ld (hl),a
	jp m,000afh
	rrca
	ex af,af'
	ld a,a
	ld c,b
	ld sp,hl
	rst 8
	ld a,a
	and (hl)
	add a,b
	dec sp
	cp l
	ret m
	ld (hl),e
	sub b
	call m,0cfe5h
	add a,d
	ld e,a
	ld a,a
	ld (08107h),hl
	adc a,b
	add a,c
	and d
	xor b
	push hl
	inc hl
	ld bc,08979h
	djnz $+1
	ld h,e
	nop
	jp pe,00f63h
	ld a,(hl)
	ld sp,hl
	ld a,b
	jp p,0019ah
	adc a,c
	defb 0cbh,033h ;sli e
	add a,e
	inc e
	cp h
	ld a,a
	xor (hl)
	ld sp,hl
	ld c,085h
	ld h,l
	ld d,l
	ld e,b
	dec hl
	jp p,02c79h
	ld a,l
	ld de,0ca50h
	rst 38h
l722ch:
	cp 047h
	ret p
	ld a,a
	ret pe
	ld l,e
	add a,e
	sbc a,a
	ld a,a
	sbc a,c
	nop
	add a,(hl)
	rst 38h
	ld a,c
	ret
	cpl
	sbc a,c
	add a,c
	jr c,$-101
	ld a,(hl)
	sbc a,h
	dec l
	ld b,a
	adc a,c
	scf
	add a,e
	adc a,e
	add a,c
	ld l,(hl)
	cp e
	rst 38h
	exx
	add a,(hl)
	ld (hl),b
	ret
	ccf
	sbc a,d
	add hl,bc
	cp c
	ld a,a
	jp m,08ee0h
	ret pe
	cp (hl)
	nop
	ld h,h
	nop
	add a,b
	or e
	add a,b
	ld c,a
	ld e,0e9h
	inc a
	ld (hl),c
	add a,b
	ret m
	dec c
	sbc a,h
	add a,e
	rra
	ret nz
	ld a,a
	and h
	ld h,a
	xor 0f4h
	ex (sp),hl
	rst 38h
	jp z,0fb15h
	jp (hl)
	pop af
	out (0f0h),a
	sub d
	and b
	sub d
	inc b
	xor (hl)
l727fh:
	inc bc
	rlca
	xor (hl)
	ld d,e
	dec (hl)
	ld d,e
	add a,e
	jp p,09f00h
	add a,c
	sbc a,h
	set 7,h
	ld a,h
l728eh:
	cp h
	dec d
	inc l
	ld (bc),a
	ld (iy+057h),h
	ld de,0b7c5h
	add a,e
	inc hl
	ld d,(hl)
	ld a,a
	cp b
	rst 38h
	jp p,03606h
	ld (hl),a
	ld (hl),l
	ld d,l
	ld h,l
	ld a,d
	or d
	ld d,l
	and b
	xor e
	adc a,b
	and l
	ld sp,08166h
	ld de,l6636h
	ld b,0bah
	ld (de),a
	ld h,l
	sub a
	add a,b
	sbc a,a
	jp m,0ffa8h
	ei
	rst 20h
	ld sp,hl
	dec (hl)
	add a,l
	sub 080h
	sub 080h
	ld a,(0ffa7h)
	jr nz,l7331h
	cp e
	halt
	ld h,(hl)
	dec l
	halt
	ld d,a
	inc bc
	sbc a,(hl)
	ld c,l
	inc b
	sub d
	and d
	inc bc
	ld h,(hl)
	ld d,(hl)
	xor d
	ld (hl),e
	inc c
	inc b
	dec h
	ld d,b
	add a,b
	rst 20h
	ccf
	call z,sub_7fb0h
	ld a,080h
	cpl
	ld a,a
	add hl,de
	dec b
	ld (hl),a
	ld a,a
	ret po
	cp e
	ld (hl),d
	ld (hl),a
	nop
	ld a,b
	res 0,(hl)
	ld b,08dh
	dec b
	ld (hl),c
	add a,a
	dec bc
	ld de,l763eh
	ld a,a
	ld h,b
	nop
	sbc a,a
	call m,sub_5bcch
	sub b
	or 0dfh
	adc a,c
	dec a
	and a
	jr nz,l728eh
	cp e
	add a,b
	dec e
	ld h,(hl)
	ld a,a
	cp h
	ld (hl),a
	ld a,a
	jp nz,07876h
	cp b
	adc a,b
	ld l,h
	dec (hl)
	adc a,e
	cp e
	adc a,b
	dec hl
	ld d,005h
	inc c
	ld hl,0b805h
	cp b
	add a,a
	ld de,080b3h
	di
	ld h,h
	add a,h
	sbc a,e
	ex de,hl
	add a,h
l7331h:
	ld a,a
	defb 0edh ;next byte illegal after ed
	ld (hl),a
	ld (de),a
l7335h:
	adc a,c
l7336h:
	jp 039deh
	ld a,a
	pop af
	dec h
	or a
	dec bc
	adc a,e
	ld l,(hl)
	ld a,c
	ld a,d
	in a,(033h)
	adc a,e
	ld a,b
	nop
	ld (l6680h),hl
	ld a,e
	dec b
	ld de,0b796h
	ld (hl),l
	add a,d
	di
sub_7352h:
	and (hl)
	res 0,c
	ccf
	defb 0fdh,0e0h,07fh ;illegal sequence
	dec (hl)
	inc bc
	add a,e
	push de
	add a,d
	push af
	ld a,(hl)
	sub d
	adc a,d
	ld (hl),a
	ld a,a
	jp pe,0f739h
	ld (de),a
	add a,a
	add a,h
	scf
	dec b
	add a,h
	adc a,b
	ei
	xor h
	ld sp,hl
	sub c
	rst 38h
	sub h
	dec bc
	inc bc
	ld (hl),l
	ld sp,hl
	ld e,(hl)
	rst 18h
	res 0,a
	ld sp,0f6deh
	call pe,sub_7ff8h
	add hl,de
	inc bc
	add a,c
	sbc a,a
	ld a,a
	inc d
	ld a,(bc)
	ld h,l
	or l
	sub a
	and l
	sbc a,d
	or 000h
	rst 0
	ld a,(de)
	halt
	sbc a,b
	dec (hl)
	nop
	pop af
	rla
	cp e
	sbc a,c
	cp 0f6h
	rst 0
	rst 38h
	jp nz,0ae30h
	add a,c
	ld h,e
	add a,b
	sub e
	ld h,(hl)
	ld l,b
	ld a,a
	sub h
	ld b,088h
	ld c,a
	ld h,e
	sbc a,e
	adc a,000h
	xor e
	ld (hl),b
	add a,b
	ld e,a
	nop
	daa
	ld d,b
	ld a,a
	ret nc
	dec bc
	ld a,(hl)
	sub b
	ld a,a
	ld a,(hl)
	add a,d
	or e
	ld a,a
	call pe,0ad03h
	ld a,(hl)
	sbc a,c
	ld a,d
	nop
	ld d,d
	ld d,(hl)
	and d
	cpl
	ld h,l
	ld sp,hl
	sbc a,e
	add hl,bc
	ex af,af'
	ld a,(hl)
	ld (hl),a
	djnz l73dah
	ld d,(hl)
	ld h,e
	inc sp
	rst 10h
	and h
l73dah:
	jp sub_7ff8h
	ret p
	exx
	ld (hl),l
	ld h,a
	ld a,a
	jp c,0ff19h
	xor (hl)
	ld e,c
	sbc a,e
	adc a,h
	ld d,e
	pop af
	jp 03335h
	add a,(hl)
	ld d,a
	nop
	dec (hl)
	adc a,h
	ld (hl),d
sub_73f4h:
	ld c,013h
	ret m
	ld d,a
	and e
	and b
	ld c,l
	inc sp
	inc bc
l73fdh:
	or l
	call m,08d1dh
	ld (hl),e
	adc a,a
	rst 38h
	dec b
	ld (hl),0f8h
	ld (hl),h
	halt
	ret p
	ld a,a
	ld a,(hl)
	cp e
	nop
	rrca
	ld d,(hl)
	and (hl)
	ld (hl),022h
	add a,(hl)
	add a,c
	ld l,(hl)
	ld d,e
	and a
	ld a,(hl)
	ld a,a
	sub h
	cp 05eh
	add a,b
	pop hl
	rst 38h
	dec l
	cp a
	sbc a,c
	nop
	ld b,0fdh
	ld e,l
	add hl,bc
	ld l,b
	ld a,b
	cp h
	jp nc,l5765h
	add a,e
	inc sp
	xor 0feh
	adc a,h
	cp 0e0h
	inc b
	ld b,h
	pop af
	nop
	adc a,a
	cp h
	rlca
	ld (hl),a
	ld a,a
	ret nz
	call z,09167h
	sbc a,(hl)
	ld a,(de)
	inc b
	ld (bc),a
	rst 20h
	inc bc
	xor (hl)
	ld a,(0225fh)
	jp (hl)
sub_744dh:
	ld a,e
	jp (hl)
	and 006h
	ld l,(hl)
	ld h,a
	sub l
	ld b,l
	add a,c
	nop
	sbc a,d
	xor l
	adc a,a
	ld h,b
	ld a,a
	rst 8
l745dh:
	ld (hl),l
	inc bc
	ld (hl),e
	add a,b
	inc e
	or 07fh
	djnz l745dh
	ld a,a
	ld c,e
	dec bc
	cp (hl)
	rrca
	jr nz,l74ech
	adc a,d
	ld a,(hl)
	xor l
	sbc a,d
	sub l
	call nz,03317h
	jr c,l73fdh
	ld b,d
	ld a,a
	ret p
	adc a,a
	sub b
	ld a,a
	add a,c
	or b
	rrca
l7480h:
	or e
	or e
	pop hl
	ld a,a
	and 067h
	ld c,(hl)
	ld (hl),l
	ret m
	ld d,l
	add a,b
	ld a,a
	and c
	ld (hl),a
	ld l,b
	inc sp
	ld h,a
	ld a,a
	or 07ch
	nop
	ld c,a
	inc sp
	ld a,a
	daa
	adc a,b
	ld a,a
	add a,e
	ld de,0d97fh
	dec hl
	ld b,0b1h
	cp 0e1h
	ld a,a
	and 035h
	adc a,d
	cp 095h
	call nz,0f858h
	adc a,l
	ld h,(hl)
	and a
	ld b,h
	halt
	ld a,a
	ld h,l
	sbc a,a
	add a,b
	sub a
	ld a,a
	ret pe
	out (080h),a
	ld a,a
	ex (sp),hl
	rrca
	sbc a,e
	ld bc,0d000h
	ld a,a
	ld b,h
	cp e
	cp 07ah
	ld a,c
	ld a,a
	ld b,h
	ld sp,hl
	ld h,a
	ld c,c
	ld e,a
	rst 30h
	inc sp
	add a,(hl)
	ld (hl),e
	ld l,b
	and b
	ret po
	ld h,(hl)
	ccf
	di
	call m,0eb7fh
	or l
	cp h
	ld a,(hl)
	and e
	add a,b
	cp l
	ld a,a
	sbc a,h
	add a,c
	pop af
	ld a,a
	inc hl
	dec bc
	or b
	cp 0d3h
	ld a,a
l74ech:
	push bc
	dec b
	ld a,a
	jr nc,l7480h
	sub a
	add a,b
	ld sp,03383h
	ld (hl),l
	ld (hl),066h
	add a,e
	rra
	rst 38h
	halt
	ld l,a
	ld a,a
	rlca
	ld a,c
	ld (hl),0f2h
	sub 08eh
	cp c
	rst 0
	cp 032h
	cp a
	ld a,(hl)
	ld a,a
	ld e,00ah
	rst 0
	cp 06fh
	ld (bc),a
	ld a,a
	dec e
	and a
	and h
	ei
	ex af,af'
	ld e,b
	ld e,a
	rst 38h
	inc sp
	ret m
	and d
	rst 30h
	inc bc
	ld (hl),053h
	ld (hl),063h
	rst 38h
	ld (hl),a
	ld a,a
	pop hl
	and a
	add a,a
	ld a,l
	add a,d
	ld (hl),b
	sbc a,(hl)
	add a,b
	sbc a,066h
	ld a,a
	adc a,a
	ld h,(hl)
	ld a,a
	adc a,l
	or b
	ld a,(bc)
	or c
	cp 0d9h
	ld l,020h
	ld a,a
	jp po,0a265h
	ld a,a
	rst 38h
	ld de,0ffffh
	ld l,b
	ld sp,hl
	ld c,l
	nop
	ld d,e
	ret z
	ld bc,0f773h
	ld l,a
	ld d,e
	ld h,(hl)
	ld a,a
	rst 30h
	ld h,e
	rst 38h
	ret nz
	ld d,(hl)
	ret m
	ld a,a
	sbc a,(hl)
	sbc a,l
	ld a,a
	ld b,h
	dec bc
	cp e
	rst 38h
	ld l,l
	ld a,l
	jr nc,$-31
	ld a,a
	sub e
	ld h,(hl)
	sbc a,l
	sub a
	ld a,e
	inc c
	ld h,(hl)
	ld (hl),e
	ld a,a
	ld c,b
	di
	add a,e
	ld a,a
	ld l,b
	di
	add a,c
	ld d,(hl)
	rst 8
	add a,c
	xor (hl)
	dec b
	ld h,a
	ld (de),a
	rst 38h
	jp 03e80h
	sbc a,a
	add a,e
	rst 0
	ld a,a
	and e
	cp e
	ld a,a
	adc a,e
	ei
	pop af
	sub a
	rst 38h
	ld e,08ch
	ret nz
	ld e,a
	push af
	rst 30h
	adc a,b
	add a,a
	ld a,d
	or 065h
	rst 38h
	nop
	ld d,l
	ld a,a
	adc a,e
	jp c,0f682h
	ld l,l
	ld a,c
	call m,l42e0h+2
	rst 38h
	ld e,h
	ld a,(hl)
	ld a,a
	ld h,a
	nop
	ld a,a
	add a,e
	or b
	ld a,a
	adc a,d
	call m,0edf1h
	ld a,a
	ld d,b
	call p,0ffc8h
	add a,e
	ld l,(hl)
	ld h,a
	ccf
	rst 38h
	push af
	ld a,a
	ret nz
	inc sp
	di
	call m,0167fh
	inc h
	defb 0fdh,02ch ;inc iyl
	rst 38h
	ld a,b
	sub l
	dec b
	ld h,a
	add a,c
	ex de,hl
	nop
	sbc a,(hl)
	ld a,a
	sub h
	rst 38h
	ret
	ld (l7f20h),hl
	ret p
	add hl,sp
	ld h,(hl)
	ld a,a
	ld c,d
	ld d,(hl)
sub_75deh:
	call m,05fb9h
	ld a,(hl)
	cpl
	di
	ld h,(hl)
	ld (bc),a
	ld a,a
	ld l,(hl)
	xor c
	ld c,(hl)
	xor h
	ld h,a
	ld a,(hl)
	add a,h
	ld (de),a
	cp 073h
	add a,b
	dec hl
	add a,c
	adc a,(hl)
	rrca
	ld d,(hl)
	ld a,a
	add a,l
	sub c
	ld a,a
	pop hl
	ld sp,hl
	ld l,h
	ld d,e
l75ffh:
	call m,0208bh
	ld a,a
	pop de
	adc a,a
	ld l,l
	sub h
	nop
	add a,b
	add a,a
	ld (hl),a
	rst 38h
	ld a,(hl)
	ld b,l
	jr c,$+53
	add a,h
	rra
	sbc a,a
	ret pe
	ld bc,01911h
	sbc a,c
	djnz l7699h
	add hl,bc
	sub b
	add a,b
	dec e
	ex (sp),hl
	ld a,a
	inc h
	ld a,a
	jp c,0e781h
	ld (hl),a
	ld a,a
	pop bc
	rst 38h
	sbc a,(hl)
	cp 0b7h
	ld c,a
	ei
	ld c,a
	jp po,0177fh
	ld b,0adh
	ld c,l
	rst 38h
	ld a,a
	ld (hl),h
	ld d,a
	rst 30h
	ld d,l
	dec h
	ld (hl),l
	ccf
l763eh:
	cp 0a6h
	ld h,e
	ld de,l503eh
	ld a,a
	xor b
	cp 0efh
	ld a,a
	adc a,081h
	cpdr
	add hl,hl
	add a,b
	out (07fh),a
	pop hl
	rst 28h
	inc l
	ld a,a
	call 0fc66h
	ld l,b
	ccf
	sbc a,h
	xor 038h
	adc a,b
	dec (hl)
	add a,b
	ld (hl),h
	ld d,l
	ld a,a
l7663h:
	ccf
	sbc a,(hl)
	djnz l76d6h
	ld a,a
	add a,c
	nop
	inc c
	call z,0f910h
	ld sp,09099h
	call m,02f7eh
	inc h
	ld a,a
l7676h:
	add a,c
	inc sp
	or e
	ld d,d
	ld h,(hl)
	add a,b
	inc a
	cp (hl)
	ld a,a
sub_767fh:
	inc d
sub_7680h:
	nop
	call m,0cbf8h
	rst 38h
	sub c
	ld h,(hl)
	ld d,(hl)
	rst 30h
	ld b,l
	di
	ret nc
	ld a,a
	ld a,b
	ld d,(hl)
	ld a,b
	dec d
	add a,l
	ld h,l
	inc sp
	add a,b
	ret c
	or 0ffh
	ld h,l
l7699h:
	rst 0
	add a,c
	ld c,e
	cp l
	sub c
	ret nz
	add a,d
	rrca
	inc c
	ret nz
	call z,00e7fh
	jp (iy)
	ld (03effh),hl
	dec (hl)
	ld bc,0c9b4h
	ld h,(hl)
	add a,b
	ld (hl),h
	ex de,hl
	ld a,a
	call p,07f77h
	ld l,c
	ei
	rst 10h
	ld a,a
	pop bc
	ld e,a
	ld a,a
	and b
	inc sp
	ld d,l
	ld (hl),e
	ld e,b
	add a,e
	dec e
	ld (hl),067h
	ld a,a
	ld a,a
	adc a,a
	ld (hl),0ffh
	adc a,e
	ld a,a
	xor d
	cp 03ch
	cp h
	ld a,a
	jr l7705h
	ld (bc),a
l76d6h:
	jr nc,l7663h
	ld b,c
	halt
	ld h,(hl)
	add a,a
	ld l,d
	rst 10h
	ld b,l
	ld h,l
	rst 38h
	ld de,0e7ffh
	ld a,(hl)
	pop hl
	rst 38h
	cp (hl)
	add a,(hl)
	rrca
	ld d,(hl)
	ld a,a
	ld (hl),055h
	jp m,080a4h
	jp z,0fff8h
	ld h,l
	rst 30h
	add a,c
	scf
	sub h
	ld b,a
	add a,d
	cp d
	ld b,d
	ld a,h
	sub b
	add hl,bc
sub_7700h:
	sbc a,c
	rst 38h
	ld b,a
	sbc a,c
	ld a,a
l7705h:
	ld de,0e6feh
	ld (086efh),hl
	ld d,h
	dec (hl)
	call 087d5h
	call nc,0e7d7h
	ld a,a
	sub l
	jp m,02022h
	call m,0a37dh
	sub e
	jr c,l779dh
	adc a,b
l771fh:
	di
	rst 30h
	ld d,l
	call p,00ef0h
	ld d,l
	add a,a
	ld d,l
	ld (hl),a
	cp 002h
	ld (hl),e
	ccf
	or 06fh
	ld a,l
	ld b,h
	add a,a
	ld a,a
	ld e,b
	rst 38h
	sub c
	ld d,h
	rst 38h
	ret pe
	sub b
	and (hl)
	rst 38h
	jp pe,0fd0ch
	ld (hl),d
	or 07fh
	sbc a,h
	add a,(hl)
	and h
	add a,l
	sbc a,(hl)
	rst 38h
	and e
	rst 38h
	out (027h),a
	adc a,(hl)
	inc b
	inc a
	ld a,a
	dec l
	rla
	ld a,a
	nop
	push af
	ld e,a
	or 075h
	ld d,(hl)
	ld d,e
	rst 38h
	jr c,l771fh
	ld a,a
	adc a,b
	ld d,e
	cp e
	jr nz,l77a2h
	ld (hl),e
	ld (hl),03fh
	add hl,bc
	ret m
	rst 38h
	ld l,a
	inc sp
	sub l
	rlca
	ld (hl),l
	ld h,l
	ld d,b
	ld a,a
	pop de
	cp 02dh
	ld a,022h
	ld a,a
l7777h:
	add hl,hl
	add a,e
	add hl,sp
	ld a,a
	ld sp,l7676h
	ld a,a
	djnz l7800h
	rst 10h
	ld a,(hl)
	adc a,a
	add a,h
l7785h:
	or e
	dec c
	sub 07fh
	ld l,(hl)
	push af
	jr nc,$+121
	ei
	sub d
	push af
sub_7790h:
	defb 0fdh,032h,0b8h ;illegal sequence
	ld h,d
sub_7794h:
	ld d,l
	ld e,b
	add a,c
	dec l
	call m,084a6h
	adc a,b
	ei
l779dh:
	ld h,l
	add a,(hl)
	adc a,h
	ld b,l
	add a,a
l77a2h:
	ld d,b
	rst 38h
	halt
	rst 30h
	ld a,a
	adc a,l
	cp 07bh
	ld hl,0517fh
	add a,(hl)
	add a,h
	ld b,l
	add a,b
	halt
	call z,02fe7h
	call p,0fd52h
	inc a
	ld a,c
	or 077h
	rst 38h
	adc a,07fh
	sub d
	ld sp,hl
	add a,b
	di
	jp p,l57c1h
	halt
l77c7h:
	ld l,b
	ld a,a
	rrca
	add a,l
	inc sp
	ld d,e
	jp m,0fb2eh
	ex de,hl
	cp 089h
	rst 28h
	adc a,h
	dec de
	ret m
	add a,d
	pop af
	pop de
	add a,l
	ld a,a
	ex (sp),hl
	cp 01fh
	rla
	adc a,071h
	ld a,a
	out (077h),a
	ld a,a
	xor d
	ld sp,hl
	ld l,e
	ld hl,(l7f9eh)
	push af
	adc a,c
	inc c
	ld bc,07f10h
	ld c,b
	ld l,a
	ld (iy+07ch),a
	push af
	di
	add a,e
	adc a,c
	dec b
	halt
	ld a,b
	ld (hl),e
	ld (hl),l
l7800h:
	cp l
	scf
	add a,a
	ld (08935h),hl
sub_7806h:
	xor a
	adc a,l
	daa
	dec c
	rst 30h
	ld a,a
	jp nc,08f22h
	cp 09fh
	adc a,c
	defb 0ddh,03bh,07fh ;illegal sequence
	pop af
	nop
	call pe,0f0ffh
	ld a,(hl)
	call po,sub_567fh
	ld h,a
	ld d,l
	ld d,a
	rst 38h
	in d,(c)
	ld (hl),057h
	ld h,a
	add hl,hl
	ld h,(hl)
	ld a,b
	ld (hl),e
	adc a,c
	sbc a,h
	ld h,a
	add a,(hl)
	ld e,(hl)
	adc a,h
	ld l,(hl)
	sub d
	ld hl,(09688h)
	ld b,a
	add a,l
	add a,b
	push bc
	adc a,b
	ld h,a
	ld a,a
	add a,h
	cp 06bh
	ld de,0f37fh
	dec hl
	jp m,020c5h
	rst 0
	ld a,(0c9e0h)
	ld a,a
	jp (hl)
	xor d
	jp (hl)
	sub b
	cp 083h
	di
	sub c
	xor l
	ld h,(hl)
	or c
	jr nz,$-121
	adc a,b
	ld h,a
	or d
	add a,e
	call m,08e6ch
	ld a,(bc)
	ld h,e
	ld d,a
	ld a,(hl)
	ccf
	ld a,087h
	ld h,l
	ld e,h
	inc e
	adc a,b
l786bh:
	ld c,l
	ld a,a
	ld (hl),d
	inc h
	ld a,(hl)
	ld hl,0e0a6h
	dec hl
	add a,d
	defb 0ddh,067h ;ld ixh,a
	ld a,a
	rst 30h
	set 7,h
	inc e
	ld a,a
	jp pe,041b5h
l7880h:
	ld l,(hl)
	di
	adc a,a
	rst 30h
	ld a,b
	ld l,l
	ld c,c
	jr nc,l7901h
	push af
	call 001fah
	adc a,b
	ld d,(hl)
	inc sp
	scf
	ld l,b
l7892h:
	ld a,a
	or (hl)
	add a,d
	ld a,l
	ld a,a
	add hl,bc
	ld (l62fdh),hl
	cp 02fh
	ld a,a
	adc a,a
	adc a,c
	xor (hl)
	ld a,a
	call nz,0bb9bh
	cp e
	rst 38h
	cp e
	rst 30h
	ld b,07fh
	call c,0d4ebh
	ld (hl),b
	ld bc,00866h
	scf
	adc a,b
	ld h,l
	ld (hl),a
	add a,c
l78b7h:
	sub h
	ld a,b
	ld (hl),h
	defb 0fdh,0c1h,0f8h ;illegal sequence
	ld h,(hl)
	add a,a
	ld h,e
	ld c,009h
	adc a,a
	ret m
	add a,l
	dec bc
	add a,(hl)
	add a,e
	adc a,099h
	adc a,b
	rst 18h
	ld a,a
	ex af,af'
	ld (0eafeh),hl
	add a,b
	ld a,(hl)
	scf
	ld b,07fh
	ld l,c
	sub d
l78d8h:
	ld a,a
	cp e
	or e
	inc e
	ld b,a
	add a,a
	and h
	call m,sub_7fb5h
sub_78e2h:
	adc a,0afh
	add hl,de
	xor 0c0h
	adc a,b
	add a,(hl)
	ld e,a
	ld e,(hl)
	rst 30h
	or e
	ld b,l
	cp 00bh
	ld d,086h
	ld (hl),085h
	jr nc,l796eh
	dec a
	ld d,l
	scf
	jp p,08090h
	sbc a,l
	ld e,b
	sub b
	adc a,b
	rst 8
l7901h:
	ld a,a
	adc a,l
	adc a,e
	rst 28h
	ld a,a
	call nz,09705h
	rst 38h
	inc b
	dec hl
	ld a,b
	or b
	ex (sp),hl
	ld a,(hl)
	rlca
	ld d,(hl)
	nop
	adc a,l
	rst 18h
	ld a,a
	sbc a,(hl)
	add a,b
	ld e,e
	ld a,a
	xor h
	sub d
	ld (hl),l
	rst 30h
	add hl,hl
	add a,c
	in a,(0ffh)
	cp b
	adc a,b
	jp l7fc0h
	add hl,bc
	add a,(hl)
	ld d,l
	sbc a,c
	sbc a,c
	ld (hl),a
	jp nz,l7f7dh
	sub l
	call m,0028fh
	ld a,a
	sub e
	add a,c
	ld a,c
	or h
	rst 38h
	ld l,02eh
	xor 000h
	rst 38h
	ld de,080bbh
	rst 20h
	jr nc,l78d8h
	ld a,a
	ld de,0d67fh
	or c
	xor b
	ld l,c
	rst 38h
	ld l,b
	sbc a,h
	ret p
	call po,sub_6786h
	ld h,l
	ld a,a
	add a,012h
	djnz $+85
	add a,h
	add a,e
	ccf
	ld (hl),a
	add a,e
	cp l
	add hl,de
	sbc a,c
	adc a,09ah
	add a,l
	adc a,a
	nop
	ld a,a
	ld b,010h
	ld a,(bc)
	rst 10h
	add a,b
	rst 0
	ld a,a
l796eh:
	ret po
	ld (bc),a
	call nc,0db7fh
	add a,b
	ld a,c
	ld b,a
	xor a
	inc de
	ld a,a
	ld e,07fh
	add a,a
	djnz l79fdh
	ld h,c
	ld l,b
	ld a,b
l7981h:
	add a,(hl)
	ld d,e
	ld a,(hl)
	daa
	ccf
	ld a,a
	add a,e
	pop bc
	sub l
	dec sp
	adc a,c
	defb 0ddh,0c3h,015h ;illegal sequence
l798fh:
	ld a,b
	ld h,l
	sub h
	ld l,c
	add a,(hl)
	sub h
	ld h,a
	ld d,(hl)
l7997h:
	sbc a,b
	call z,010c1h
	ld a,(01911h)
	add a,h
	jp po,0fdffh
	ld a,h
	ld e,a
	ld (bc),a
	ld a,a
	dec h
	call nc,038d4h
	call z,0ffe7h
	inc e
	ld a,a
	add hl,sp
	ret po
	ld a,a
	add hl,hl
	cp l
	defb 0ddh,083h,018h ;illegal sequence
	ld (0d680h),hl
	ld a,a
	ld a,(07f10h)
	jp z,0f17eh
	xor h
	add a,h
	ld (hl),h
	ccf
	add a,e
	rst 38h
	adc a,e
	or c
	di
	ex af,af'
	ld a,c
l79cch:
	ccf
	ld a,b
	ld e,d
	add a,a
	ret nz
	ld sp,01655h
	ld d,(hl)
l79d5h:
	rlca
	ld a,l
	ld a,a
	ld (hl),l
	call m,0809ah
	jp p,0d4d5h
	push bc
	jr l7a59h
	ld a,(03565h)
	ld a,a
	ld b,(hl)
	defb 0ddh,080h,0a1h ;illegal sequence
	defb 0ddh,000h,0bdh ;illegal sequence
	or b
	ld (l6cc1h),hl
	and l
	cp l
	rst 38h
	ld l,l
	cp c
	ld a,e
	ld a,a
	ld e,d
	add a,e
	add a,h
	add hl,hl
	ld h,a
l79fdh:
	di
	ld a,b
	add a,(hl)
	ld e,c
	ld (hl),a
	add a,e
	dec c
	ld d,h
	add a,(hl)
	jr c,l79d5h
	ld a,a
	add a,a
	dec a
	ld a,a
	ld b,b
	cp e
	cp h
	ret nz
	call z,00cc0h
	or 0ffh
	ld (hl),c
	jp m,01297h
	ld a,a
	call z,0cc03h
	pop bc
	sbc a,h
	ret nz
	cp h
	rst 38h
	and l
	add a,b
	dec (hl)
	dec c
	defb 0ddh,000h,000h ;illegal sequence
	ld (bc),a
	inc h
	in a,(019h)
	in a,(085h)
	ret
	cp l
	rlca
	defb 0ddh,0cch,0adh ;illegal sequence
	set 7,a
	jr z,$-11
	ld a,(hl)
	rst 38h
	scf
	xor (hl)
	or d
	ld l,(hl)
	add a,d
	xor b
	ld bc,08df8h
	ld (bc),a
	jr c,l79cch
	ld a,a
	sbc a,d
	sub e
	rst 38h
	dec a
	ex af,af'
	ret
	sub b
	defb 0fdh,0aah,052h ;illegal sequence
	ld a,a
	add a,b
sub_7a54h:
	ld e,b
	call nz,0d3c2h
	rlca
l7a59h:
	inc h
	nop
	nop
	push hl
	rrca
	ld d,l
	ld d,b
	inc sp
	inc bc
	ld a,a
	ld b,h
	cp e
	add a,e
	ld l,d
	dec c
	adc a,c
	ld d,e
	ld c,007h
	or b
	in a,(0b0h)
	ld a,a
	add a,l
	rst 38h
	xor (hl)
	add a,c
	daa
	ret m
	jp nc,0837ch
	halt
	inc h
l7a7bh:
	add a,e
	add a,e
	cp 092h
	ld b,088h
	ex af,af'
	adc a,b
	sub l
	ret m
	ld a,h
	add a,b
	ld a,a
	xor c
	ld (de),a
	call m,001e1h
	cp 01ah
	ld b,b
	ld sp,hl
	ld a,(hl)
	ld e,(hl)
	inc bc
	adc a,b
	or a
	rst 38h
	ld a,c
	ld a,a
	ld h,b
	nop
	ld bc,0d100h
	ld b,h
	dec e
	add a,a
	ret nc
	push bc
	add hl,bc
	dec c
	dec b
	ld a,a
	in a,(035h)
	ld h,a
	ld de,0ea33h
	ld l,(hl)
	ret p
	inc de
	add a,a
	add a,(hl)
	halt
l7ab3h:
	inc sp
	rst 30h
	ld a,(bc)
	adc a,b
	call nz,0bef8h
	pop de
	add a,a
	ld a,h
	ld a,a
	dec de
	ld a,h
	add a,d
	ld a,b
	ld de,000ddh
	rrca
	adc a,a
	cp 0aeh
	or b
	add hl,sp
	adc a,(hl)
	rst 38h
	ld a,(de)
	jp po,0007fh
	call nz,0d103h
	dec (hl)
	ret nc
	xor b
	dec bc
	add a,l
	adc a,l
	adc a,c
	sbc a,l
	ld b,0bbh
	ld a,a
	ld l,h
	defb 0edh ;next byte illegal after ed
	di
	cp h
	ret p
	ld a,(de)
	ld d,l
	ld a,a
	ret m
	defb 0fdh,065h ;ld iyh,iyl
	rst 30h
	adc a,b
	ld (006f6h),a
	ld b,(hl)
	add a,e
	ld a,a
	add a,a
	add a,e
	adc a,(hl)
	ld bc,0333fh
	ret m
	ld e,b
	ld c,a
	ex de,hl
	adc a,0bch
	di
	ld a,l
	add a,l
	inc l
	rst 0
	cp 0cfh
	ld a,a
	jp nc,02692h
	adc a,b
	add a,b
	jp po,09c20h
	ld sp,hl
	sub h
	defb 0fdh,043h,0d0h ;illegal sequence
	ld (hl),00dh
	djnz $+32
	ld a,(bc)
	inc hl
	adc a,a
	inc d
	djnz l7b2ah
	add a,h
	defb 0ddh,07fh,09ch ;illegal sequence
	inc sp
	ld d,(hl)
	rst 28h
	jr z,l7b7bh
	jp pe,0f9a2h
	add a,a
l7b2ah:
	jr z,$-10
	sub h
	or 008h
	adc a,l
	sub d
	ld a,a
	adc a,a
	inc bc
	jp 08187h
	ld l,a
	ld a,a
	or d
	cp 03eh
	call m,0297fh
	jr nz,l7b42h
	xor c
l7b42h:
	ld h,l
	defb 0fdh,0a2h,010h ;illegal sequence
	or d
	ld a,a
	ld c,b
	djnz $+56
	dec e
	call m,01184h
	ret nc
	dec e
	ld bc,0e4dbh
	ld a,a
	dec b
	ld d,l
	ld a,l
	dec (hl)
	add a,c
	di
	jp nc,0f566h
	and 083h
	ld a,a
	sbc a,h
	rst 30h
	ld (hl),a
	add a,d
	cp b
	add a,e
	ld h,033h
	adc a,l
	rra
	ld e,b
	ld e,b
	inc sp
	ld d,l
	dec de
	ld bc,0a87fh
	cp 0fch
	rrca
	ld a,a
	ld e,b
	cp 08dh
	ld (bc),a
l7b7bh:
	cp e
	ld (hl),098h
	add a,(hl)
	ld bc,0c8deh
	inc c
	add a,l
	adc a,07fh
	adc a,h
	ld e,b
sub_7b88h:
	ld (hl),l
	ld a,(hl)
	cp e
	defb 0fdh,0ebh,02eh ;illegal sequence
	jp m,089cah
	sbc a,a
	add a,a
	add a,b
	ld h,d
	ld a,a
	add a,(hl)
	ret nz
	ex de,hl
	adc a,(hl)
	rst 10h
	add a,b
	ld e,e
	out (07eh),a
	jp 00724h
	daa
	rst 38h
	defb 0edh ;next byte illegal after ed
	pop af
	ld a,a
	adc a,b
l7ba8h:
	cp 02bh
	or b
	add hl,hl
	ld c,0eeh
	ld (hl),l
	ld sp,hl
	adc a,h
	ld bc,00d1dh
	adc a,e
	ld a,a
	pop de
	ret nc
	rst 38h
	ld h,h
	add a,a
	dec (hl)
	add hl,bc
	ld e,a
	rst 38h
	push af
	ld d,(hl)
	ret p
	ld a,(bc)
	ld h,l
	ld (hl),0f2h
	call nz,08038h
	sub (hl)
	sub b
	adc a,d
	adc a,b
	ld a,a
	adc a,l
	ret m
	ld a,l
	ld (hl),b
	ld a,a
	rst 8
	ld b,h
	ld a,a
	cp c
	sub d
	ld a,a
	push de
	or 024h
	defb 0fdh,0e7h,07fh ;illegal sequence
	dec de
	ld a,e
	ret nz
	inc h
	add a,e
	sub h
	add a,b
	sbc a,h
	ld a,a
	add a,c
	rlca
	cp a
	inc sp
	ld e,a
	push af
	ld d,l
	ld a,a
	adc a,e
	ld (hl),l
	adc a,c
	call nc,08083h
	push hl
	adc a,c
	and e
	halt
	cp a
	ld sp,08788h
	rst 30h
	ld d,d
	jp nz,0ef02h
	ei
	ex af,af'
	cp 0e7h
	rst 38h
	cp h
	sub d
	dec bc
	rst 38h
	pop af
	rst 20h
	and d
	ld (bc),a
	dec c
	in a,(0bdh)
	push af
	ld b,b
	djnz $+4
	or d
	jr nz,l7ba8h
	rst 38h
	inc hl
	ei
	ld hl,(0c784h)
	ld a,a
	ld de,l4a7fh
	ld a,a
	rst 38h
	add hl,hl
	ld a,(hl)
	ld l,(hl)
	halt
	add a,a
	ld d,e
	inc sp
	ld a,a
	sub l
	ld a,b
	add a,d
	sbc a,c
	adc a,b
	add a,c
	ld l,a
	add a,(hl)
	ld l,a
	halt
	ld a,a
	ret p
	sbc a,(hl)
	inc h
	ld b,h
	nop
	ld c,h
	ld b,b
	add a,d
	ld e,(hl)
	add hl,de
	rst 0
	add hl,bc
	cp h
	ld (hl),b
	ld a,a
	pop de
	ld (hl),h
	sub c
	cp 094h
	rlca
	cp l
	ld e,b
	ld a,a
	pop de
	adc a,(hl)
	add a,e
	ld sp,0107fh
	ld a,a
	ret nz
	or 087h
	ld h,(hl)
	ld l,b
	ld d,(hl)
	xor h
	adc a,a
	jp p,l7f80h
	cp h
	jp p,07ec4h
	ld (hl),a
	rst 30h
	ld d,a
	ld iy,(08588h)
	sub e
	sub c
	ld a,a
l7c71h:
	di
	rlca
	sbc a,h
	call z,sub_7f0bh
	push de
	cp 018h
	ld (02b72h),hl
	ld a,a
	ret nc
	jp pe,0827fh
	call 0e6ffh
	ld sp,hl
	dec h
	ld h,l
	ld a,l
	add a,c
	ld e,c
	ret p
	sub 089h
	xor d
	ld a,b
	ld sp,hl
	ld hl,(0cb89h)
	inc d
	add a,e
	and c
	ld a,a
	di
	add a,(hl)
	ld sp,hl
	ld e,a
	ld bc,l4222h
	ei
	ld l,00ch
	ld b,b
	add a,c
	jp pe,l5bfdh
	dec h
	or b
	ret nz
	rst 38h
	call po,00272h
	ld a,a
	ld bc,008c3h
	or b
	ret nc
	defb 0fdh,0d1h,01eh ;illegal sequence
	ei
	ld (hl),h
	add a,e
	ld l,h
	add a,d
	push de
	rst 38h
	defb 0ddh,0ffh,013h ;illegal sequence
	defb 0edh ;next byte illegal after ed
	ld e,0ffh
	ld h,(hl)
	add a,b
	inc e
	ld d,e
	ccf
	add a,a
	sbc a,a
	ret m
	ld b,b
	ld a,a
	add a,(hl)
	jr c,l7d47h
	ld (hl),e
	rst 38h
	inc h
	ld a,b
	halt
	add a,l
	add hl,hl
	ld l,b
	halt
	di
	ret po
	ld c,a
	inc h
	ei
	add a,l
	ld sp,hl
	or c
	ex af,af'
	cp l
	sbc a,h
	sbc a,09ch
	and a
	ld a,a
	jp nc,0f4d0h
	xor d
	ld b,(hl)
	dec l
	ld sp,hl
	ld de,00111h
	call nz,sub_465eh
	ld a,a
	add a,l
	rlca
	ld a,b
	ld a,l
	rst 30h
	sub h
	ei
	xor 0efh
	sbc a,b
	add a,h
	jr z,l7d7bh
	ld a,(hl)
	adc a,b
	and d
	ei
	sbc a,b
	add a,h
	ld h,e
	ccf
	ld de,sub_6786h
	ld h,l
	cp 0eeh
	ld (de),a
	adc a,a
	cp 017h
	nop
	ld a,a
	xor c
	add hl,bc
	sbc a,c
	rst 38h
	ld e,a
	dec l
	add a,b
	xor d
	ld de,l637fh
	ld bc,0dd7fh
	add a,d
	ld e,b
	call nz,044bch
	dec e
	ld a,h
	djnz $+31
	cp 0a3h
	or b
	ld a,a
	add a,d
	nop
	ld l,b
	ld a,a
	ld d,c
	ld (hl),06dh
	call m,sub_7f72h
	ld a,b
	jr nc,l7da5h
	inc sp
	ld a,a
	inc sp
	rst 30h
	call po,03d83h
l7d47h:
	ld h,(hl)
	ld d,l
	ld a,a
	and e
	cp 0cfh
	cp (hl)
	di
	rst 38h
	sbc a,b
	ld (hl),e
	ld (0829dh),hl
	ret nz
	rst 38h
	cp 03ch
	xor l
	sub 011h
	or c
	ld (hl),b
	jr nz,$+113
	dec e
	ld a,a
	push af
	ex de,hl
	pop de
	ld de,08177h
	inc hl
	rst 38h
	sbc a,c
	add a,b
	ld bc,l6565h
	ld (hl),e
	push af
	rst 38h
	ei
	ld a,(08467h)
	inc bc
	ld h,e
sub_7d78h:
	add a,a
	ld d,e
	inc b
l7d7bh:
	add a,a
	ld d,l
	ld (hl),e
	add a,(hl)
	add a,(hl)
	ld c,c
	jp nz,0fee4h
	cp e
	ld c,a
	defb 0fdh,093h,010h ;illegal sequence
	defb 0fdh,0d9h,0f0h ;illegal sequence
	ld a,a
	rrca
	ret
	nop
	inc c
	nop
	ld a,a
	xor d
	ld l,014h
	ld (bc),a
	jr nz,l7db4h
	ld (hl),a
	jp p,084a7h
	dec h
	djnz $-124
	ld b,h
	inc de
	dec e
	ld d,e
	dec c
l7da5h:
	rst 38h
	ld hl,00600h
	halt
	ld d,l
	ld l,a
	ld l,c
	nop
	or 063h
	add a,h
	jr z,$-120
	ld l,d
l7db4h:
	ld e,a
	ld (iy-003h),d
	ld h,d
	defb 0fdh,012h,077h ;illegal sequence
	ld h,b
	cp 0edh
	cp 01eh
	ld c,(hl)
	ld bc,0e77fh
	adc a,b
	add a,c
	xor d
	dec bc
l7dc9h:
	dec bc
	adc a,0dbh
	ld a,a
	call p,0f546h
	ld b,a
	ld a,a
	dec bc
	defb 0ddh,0fdh,09bh ;illegal sequence
	cp a
	out (010h),a
	ld bc,0ff71h
	xor b
	rst 38h
	sub a
	ld h,a
	cp 053h
	ld (hl),h
	cp 0bch
	pop af
	ld b,(hl)
	add a,h
	ld l,(hl)
	defb 0fdh,0b8h,073h ;illegal sequence
	ld a,a
	inc hl
	add a,a
	ld (hl),b
	cp 0e8h
	sub (hl)
	call m,sub_7ff8h+1
	ld b,0abh
	and b
	cp e
	cp e
	call z,0fc6ch
	ld a,a
	defb 0ddh,00eh,045h ;illegal sequence
	rst 38h
	ld a,a
	call c,sub_65feh
	sub h
	inc h
	rst 38h
	or a
	rst 38h
	ld (de),a
	inc sp
	cp 058h
	jr l7e78h
	ld (hl),e
	ccf
l7e14h:
	ld a,a
	ld l,a
	set 7,(hl)
	ei
	inc sp
	adc a,h
	ret p
	ld h,(hl)
	ld e,b
	ld c,a
	ld (hl),b
	defb 0fdh,0d1h,0feh ;illegal sequence
	xor h
	ex de,hl
	nop
	ld b,h
	ld a,(hl)
	dec bc
	xor d
	add hl,bc
	defb 0fdh,02dh ;dec iyl
	add a,e
	adc a,e
	nop
	ld (l7fd1h+2),a
	in a,(0f1h)
	ld l,c
	add a,a
	ld c,h
	adc a,b
	ret z
	call m,008dch
	ld (hl),h
	dec e
	ld a,a
	nop
	ld a,(de)
	ld (hl),l
	ld (hl),l
	ld (hl),07fh
	ld (hl),030h
	inc sp
	jr c,l7ecah
	dec (hl)
	ld l,b
	sbc a,a
	ld a,e
	add a,(hl)
	adc a,h
	sub c
	ld bc,0f85fh
	call m,0d16eh
	cp 0e7h
	ld a,a
	call po,0040ah
	xor d
	nop
	cp h
	sub b
	cp h
	ld a,d
	cp h
	ld hl,(099c0h)
	nop
	or d
l7e6ah:
	ld (hl),h
	or 07fh
	jp c,0f800h
	and e
	add a,b
	add hl,de
	ld bc,00616h
	ld b,a
	rst 38h
l7e78h:
	ld a,(hl)
	add a,c
	inc e
	ld h,l
	ld l,a
	ld a,a
	ld c,c
	add a,c
	rst 30h
	daa
	adc a,e
	jp nc,092f8h
	adc a,c
	ld b,h
	ld a,(hl)
	add a,a
	ld h,l
	add a,a
	sub c
	cp 0f4h
	ex (sp),hl
	ld sp,hl
	dec e
	ld a,a
	ld b,b
	ld (hl),h
	cp h
	sbc a,e
	call z,000b9h
	sbc a,a
	rst 38h
	xor d
	ei
	ld l,a
	ld a,a
	rra
	cp l
	rst 20h
	inc d
	dec d
	dec e
	rst 38h
	call c,0a280h
	scf
	cp 055h
	inc sp
	call p,sub_7352h
	ld a,(hl)
	call c,044fah
	ld l,a
	adc a,d
	ld a,b
	cp d
	adc a,c
	cp 026h
	add a,a
	jp m,0f57ch
	ei
	pop hl
	ld a,a
	jp nz,000cch
	inc hl
	inc c
	ret
	ei
l7ecah:
	ld a,07fh
	ld e,(hl)
	inc a
	ld e,010h
	ld a,a
	inc a
	ld a,h
	ex de,hl
	ld a,a
	nop
	ld a,a
	ret nz
	rlca
	ld d,e
	in a,(07fh)
	pop af
	ld b,h
	ld (hl),a
	ld a,b
	add a,a
	ld (hl),d
	jr c,l7e6ah
	sub h
	add a,(hl)
	rst 38h
	sub h
	ld a,a
	defb 0fdh,0a2h,011h ;illegal sequence
	call m,0fdbch
	ld a,a
	ld h,l
	add a,b
	ld a,07ch
	ccf
	ld a,a
	sub l
	pop hl
	defb 0fdh,069h ;ld iyl,c
	nop
	set 2,b
	ld a,a
	push bc
	nop
l7f00h:
	jp pe,07274h
l7f03h:
	ret m
	adc a,(hl)
	halt
	scf
	ld h,e
	add a,l
	inc d
	ld d,e
sub_7f0bh:
	inc b
	adc a,e
	ld h,d
	ld l,b
	cp 0b6h
l7f11h:
	cp 03eh
	add hl,bc
	call p,0fde6h
	ld (hl),d
	call m,0c77bh
	rst 38h
l7f1ch:
	ccf
sub_7f1dh:
	ld a,a
	sub l
l7f1fh:
	ret nc
l7f20h:
	sbc a,b
l7f21h:
	ld (hl),c
	cp e
	or b
	ld a,a
	jp (hl)
	add a,l
	ld (hl),h
	cp 076h
	ld (bc),a
	ret p
	ld a,a
	dec l
	rlca
	ld d,(hl)
	defb 0fdh,02dh ;dec iyl
	ld (hl),l
l7f33h:
	di
l7f34h:
	cp e
	add a,l
	jr z,l7f3fh
	adc a,b
	cp b
	add a,a
	or a
sub_7f3ch:
	defb 0fdh,06dh ;ld iyl,iyl
	ld sp,hl
l7f3fh:
	ex (sp),hl
l7f40h:
	dec (hl)
	dec hl
	call m,022a7h
	ld a,a
	cp (hl)
	cp 09ah
	rst 38h
	di
	ld a,01dh
	ld sp,hl
	ld sp,hl
	call pe,07f10h
	and 0d1h
	call m,0cc8bh
	nop
	ld (de),a
	ld a,b
	jr nz,l7fdbh
	ld c,c
	add a,b
	add a,b
	adc a,e
	rst 30h
	ld d,a
	ld a,a
l7f63h:
	scf
	call m,0fec4h
	ld a,d
	ld d,a
	call m,sub_7f3ch
	xor c
sub_7f6dh:
	inc h
	call m,0ffcbh
	ld a,h
sub_7f72h:
	rst 18h
	ret nz
	ld a,a
	inc hl
	ld de,01e7fh
sub_7f79h:
	defb 0ddh,07fh,077h ;illegal sequence
l7f7ch:
	add a,b
l7f7dh:
	sbc a,l
	ld a,(hl)
sub_7f7fh:
	ld a,c
l7f80h:
	ld a,a
l7f81h:
	adc a,e
	rlca
	ld (hl),a
	ld (hl),e
	defb 0fdh,000h,083h ;illegal sequence
	ccf
	ld h,(hl)
	ld h,(hl)
	ld h,l
	ld d,l
	sbc a,h
	cp 023h
	add a,(hl)
	ld l,b
	cp 0e3h
	ld (hl),e
	ld hl,0fd7fh
	ld a,092h
	rst 38h
	jp po,0f89bh
l7f9eh:
	ld a,a
	sbc a,090h
	ld a,a
	ld l,010h
	ld a,a
	jp (hl)
	cp 08dh
sub_7fa8h:
	ld a,(bc)
	sub e
	cp 07fh
	push bc
	nop
	rst 30h
	push bc
sub_7fb0h:
	jp p,l7892h
	ld (hl),080h
sub_7fb5h:
	ld d,d
	add a,c
l7fb7h:
	ld d,e
	cp 049h
	ld a,a
	ld (hl),b
	ld sp,hl
	xor (hl)
	xor (hl)
	ld b,d
l7fc0h:
	ld a,(hl)
	inc bc
	ld (de),a
	ld de,l4404h
	jr c,$+64
l7fc8h:
	ld a,a
	ld (hl),009h
sub_7fcbh:
	add a,e
	rra
	ld a,a
	ld (0ecd1h),hl
l7fd1h:
	ld a,(00178h)
	ld a,a
	ld e,h
	ld c,l
	ld a,(bc)
	jp m,02a7fh
l7fdbh:
	rlca
	ei
	ld b,h
	add a,a
	ld a,a
	halt
	halt
	add a,b
	and c
	ld e,b
	add a,e
	add a,a
	sub (hl)
	defb 0fdh,012h,0fdh ;illegal sequence
	jp (hl)
	ld a,a
	call po,0f900h
l7ff0h:
	ld a,a
l7ff1h:
	or d
	add a,e
	ld a,0c7h
	or b
l7ff6h:
	ld a,a
	dec sp
sub_7ff8h:
	call p,07f6fh
	rst 0
l7ffch:
	nop
sub_7ffdh:
	or a
l7ffeh:
	jr nz,$+129
