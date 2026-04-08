; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank05.asm /tmp/smanbow2_bank.bin

	org 04000h

	ld (0aa04h),hl
	ld a,(hl)
	adc a,c
	ld a,a
	defb 0fdh,049h,0d6h ;illegal sequence
	ld e,c
	ld d,a
	dec sp
	nop
	rlca
	cp l
	di
	ld a,d
	rrca
	ld a,a
	dec h
	and h
	add a,b
	dec (hl)
	add a,d
	ld e,c
	rrca
	or 0cch
	adc a,b
	xor e
	ret p
	call m,0fe36h
	ld sp,l7f4ah
	push de
	ei
	ld a,h
	sbc a,a
	ld a,a
	adc a,h
	ld (bc),a
	add a,0f1h
	cp c
	rlca
	pop hl
	dec bc
	ccf
	ld a,a
	and 0a8h
	sub e
	add a,b
	rst 20h
	ld (de),a
	defb 0edh ;next byte illegal after ed
	sub e
	or 05ah
	adc a,0f9h
	inc sp
	ld (bc),a
	sub a
	ld (027feh),a
	adc a,d
	ld a,a
	inc (hl)
	add a,c
	cp a
	nop
	inc bc
	ld c,b
	ld a,a
	pop af
	ld d,e
	ld (0a9f0h),hl
	jp p,l49fdh
	defb 0fdh,0f0h,07ah ;illegal sequence
	ld (08c7fh),hl
	ld c,d
	and h
	ld (02580h),a
	add a,b
	add hl,hl
	add a,h
	adc a,l
	ret m
	push hl
l4068h:
	jr nc,l4068h
	add hl,de
	inc e
	ld l,023h
	add hl,de
	ld a,a
	inc e
	sbc a,c
	rst 38h
	sbc a,a
	nop
	dec bc
	ld c,b
	ld a,a
	pop af
	xor b
	call 0f28ch
	adc a,e
	add a,b
	rlca
	sbc a,(hl)
	nop
	dec e
	jp p,0ce7fh
	adc a,e
	jp l447eh+1
	xor d
	sbc a,c
	add a,d
	adc a,l
	ld (hl),h
	defb 0ddh,080h,0dah ;illegal sequence
	nop
	rlca
	adc a,d
	scf
	call m,09961h
	xor d
	ld b,h
	ld a,a
	res 3,c
	ld a,a
	rst 30h
	inc e
	jr nz,l40f5h
	ld (hl),e
	rlca
	adc a,c
	adc a,h
	daa
	jp p,0a7ffh
	inc bc
	ld a,a
	ld c,d
	ld c,d
	add a,c
	ld c,d
	ret p
	ld e,l
	add a,l
	exx
	cp 05ah
	cp 02bh
	adc a,(hl)
	ld c,e
	inc hl
	add hl,hl
	rla
	ld a,a
	scf
	push hl
	dec a
	rst 38h
	adc a,a
	nop
	add a,e
	ld a,a
	adc a,a
l40c8h:
	add a,b
	ret m
	ld a,a
	ld a,a
	ld c,0ffh
	add hl,sp
	and 00dh
	ld a,a
	xor c
	ld e,a
	add a,c
	dec l
	add a,d
	adc a,c
	add a,b
	rst 20h
	adc a,h
	ld (de),a
	ei
	ret m
	ld b,h
	sub h
	cp 094h
	rst 0
	ld a,a
	sbc a,c
	ld a,a
	inc (hl)
	push af
	pop hl
	rlca
	rst 18h
l40ebh:
	ld a,a
	ld de,0f196h
	cp 07fh
	add a,d
	sub h
	add a,b
	ld d,a
l40f5h:
	add a,e
	ld d,081h
	cp b
	push de
	adc a,h
	cp l
	ei
	adc a,h
	cp 0a3h
	add hl,de
	rst 38h
	adc a,c
	rst 38h
	ld d,l
	sub h
	add a,d
	ld (hl),h
	add a,h
	adc a,e
	adc a,e
	rlca
	sub h
	ld c,c
	rst 38h
	ld a,(hl)
	call nc,0baffh
	jp nc,04adfh
	add a,b
	pop af
	sub c
	add a,l
	ret
	rst 38h
	cp e
	ld sp,hl
	cp c
	sbc a,h
	call nz,sub_71feh
	call m,0ff95h
	jr c,l4153h
	sub h
	push af
	cp h
	rst 38h
	and 000h
	ld d,e
	ld c,c
	rst 38h
	jp pe,084c6h
	add hl,hl
	ld (bc),a
	rst 38h
	jp c,09442h
	add a,b
	ld c,d
	sbc a,c
	ld (hl),b
	ld (08115h),hl
	or (hl)
	inc bc
	cp d
	jr nz,l40c8h
	inc hl
	inc hl
	add hl,bc
	cp 03ah
	ld a,a
	or h
	rst 38h
	adc a,07fh
	ld e,l
	inc a
	pop af
l4153h:
	sbc a,e
	ld a,a
	adc a,c
	ex af,af'
	ld a,a
	ld sp,hl
	ld (hl),0ffh
	jp pe,0f3f2h
	ld a,a
	or (hl)
	rst 38h
	ld (hl),c
	ld b,d
	ld b,h
	add a,h
	xor c
	ld (hl),e
	ld d,l
	jr l40ebh
	sub h
	defb 0fdh,093h,080h ;illegal sequence
	sub d
	add a,b
	ld b,(hl)
	cp 0ffh
	ld a,a
	add hl,bc
	rst 38h
	adc a,(hl)
	cp a
	ld a,a
	inc l
	add a,b
	and e
	sub b
	or 0f6h
	ld a,d
	ld c,l
	inc hl
	ei
	ret m
	jp c,08e33h
	cp 03fh
	ld a,a
	add a,h
	rst 10h
	rst 38h
	ld c,h
	rst 10h
	ld e,c
	rst 38h
	ret c
	adc a,c
	rst 8
	ld a,a
	dec (hl)
	sbc a,c
	ret pe
	adc a,h
	ld b,h
	ld hl,02228h
	ret p
	dec de
	add a,e
	sub h
	rrca
	ld a,(de)
	dec bc
	ld b,h
	cp c
	sub (hl)
	sbc a,c
	ld a,a
	xor 098h
	sbc a,(hl)
	rst 38h
	rst 18h
	adc a,c
	ld a,a
	sub l
	call p,053eeh
	ret po
	ld h,h
	ld a,e
	rst 38h
	ld (hl),e
	ld a,a
	rst 28h
	ld (hl),01bh
	xor b
	ld b,b
	ret p
	adc a,d
	ld (0daa8h),a
	dec b
	ld a,a
	dec de
	inc b
	adc a,d
	add a,h
	dec d
	rst 38h
	ld e,h
	or 07fh
	adc a,d
	ld c,h
	xor d
	nop
	and h
	xor l
	daa
	inc b
	xor b
	ld a,a
	add a,l
	rst 38h
	ld a,(hl)
	ld c,0f5h
	cp b
	ld c,(hl)
	call m,0f0bah
	ld a,a
	ld c,a
	inc hl
	ld a,(hl)
	inc hl
	ld a,a
	ld (hl),h
	ld c,c
	sbc a,h
	sub l
	sub b
	ld (de),a
	jr nz,$+4
	ld bc,00733h
	ei
	sub l
	ld a,a
	push bc
	sbc a,c
	ld a,a
	add ix,ix
	rst 38h
	dec e
	rst 20h
	dec d
	ld a,a
	ld d,a
	rst 38h
	ret m
	ld sp,0e7ffh
	rst 30h
	rst 30h
	ld a,a
	add hl,hl
	inc sp
	adc a,(hl)
	ret
	sub e
	adc a,0ffh
	jp (hl)
	add a,h
	ld a,a
	jp nc,l7790h
	ex (sp),hl
	jp p,072f6h
	defb 0fdh,08ah,0fch ;illegal sequence
	cp d
	ld a,a
	inc hl
	ld c,b
	xor d
	rst 38h
	res 5,c
	ld d,c
	sbc a,c
	sub e
	ld e,e
	adc a,a
	sub a
	ld a,a
	adc a,l
	rst 38h
	cp 017h
	nop
	sub e
	cpl
	ld a,a
	and a
	inc bc
	ld a,a
	sub h
	push de
	sbc a,b
	add a,b
	xor e
	ld b,h
	ld l,c
	pop de
	inc bc
	jr nz,l4266h
	ld a,h
	inc hl
	add a,d
	ld b,032h
	ld (bc),a
	inc b
	ld c,066h
	jp po,08545h
	jp (hl)
	inc h
	rst 38h
	ret m
	defb 0ddh,07fh,063h ;illegal sequence
	ret m
	ld a,a
	out (0ffh),a
	pop hl
	ld a,h
	ld a,a
	ld c,c
	rrca
	rst 38h
	ld (hl),d
	ld l,d
	sub h
	ld l,d
	ld c,b
	ld (bc),a
l4266h:
	adc a,h
	add a,(hl)
	call po,0e385h
	call p,0b28ah
	add a,h
	inc l
	ld a,b
	ret c
	inc de
	sub h
	rst 18h
	ld a,a
	adc a,d
	sub l
	halt
	rst 38h
	sbc a,a
	ld c,e
	ld a,a
	ld d,h
	ld (0f0ffh),a
	ld (l7999h),a
	ret nc
	ld l,e
	ld l,b
	ld l,e
	inc e
	sub e
	add a,l
	sub c
	rst 38h
	ld l,(hl)
	ld sp,hl
	dec de
	add hl,sp
	ld c,b
	rrca
	ld d,092h
	pop af
	sbc a,(hl)
	ld a,a
	dec d
	nop
	xor c
	inc sp
	ld a,a
	cp c
	rst 38h
	ld sp,hl
	ld d,e
	ex de,hl
	ld (hl),h
	nop
	ld (02079h),a
	ld a,a
	ld d,c
	jp (hl)
	ld a,a
	sbc a,059h
	ld d,(hl)
	sub 045h
	add a,b
	ld l,h
	ld c,l
	pop af
	ld a,c
	ld (0ff30h),hl
	ld b,l
	inc bc
	add a,l
	adc a,l
	ld c,b
	adc a,b
	or d
	ld a,(hl)
	ld d,065h
	ld l,e
	ld b,h
	rst 38h
	sub a
	ld a,a
	cp l
	inc bc
	rst 38h
	rra
	adc a,e
	jp (hl)
	call z,sub_7ffah
	ld l,e
	rst 38h
	adc a,h
	ld b,c
	ld b,h
	ret z
	ld a,h
	ind
	ld l,a
	pop af
	ld c,c
	add a,b
	ld c,b
	cp 0cch
	ld b,h
	or h
	jp pe,08446h
	add a,d
	ld h,(hl)
	ld a,l
	ld a,a
	di
	rst 38h
	ld c,(hl)
	ld c,b
	ld h,e
	call c,0ff84h
	rst 8
	ld a,a
	jp po,l6265h
	ld d,h
	ei
	sub c
	ld (bc),a
	jr nc,l437bh
	call nz,0f5ffh
	rst 38h
	adc a,075h
	jp 0cd7ah
	ld l,(hl)
	inc bc
	ld c,d
	ld a,d
	add a,(hl)
	push af
	ret m
	pop hl
	add hl,de
	ld c,0bah
	inc bc
	ld c,c
	xor l
	rst 38h
	or 0ffh
	inc sp
	dec e
	ld l,e
l4319h:
	jp nz,0b1f5h
	sub h
	ld l,b
	ld hl,(01049h)
	rst 38h
	call m,03326h
	rst 10h
	sbc a,e
	ld a,a
	ld e,b
	ld b,a
	rst 38h
	pop bc
	sub e
	ld e,h
	push bc
	call z,0e73dh
	add a,d
	ld b,h
	call m,sub_4ddeh
	sbc a,c
	inc bc
	ld a,a
	push af
	rst 18h
	rst 38h
	ret po
	ret nz
	ld de,02339h
	sub e
	add hl,hl
	sub d
	sub c
	ld d,(hl)
	ld (l6cd7h),a
	ld a,a
	call po,sub_7f66h
	ld e,l
	dec bc
	ld h,a
	jp po,0dacch
	pop de
	ld d,l
	in a,(007h)
	rst 10h
	rrca
	cp a
	halt
	ld (de),a
	rst 38h
	defb 0edh ;next byte illegal after ed
	ld a,a
	ei
	xor 09fh
	ld a,a
l4364h:
	ld b,033h
	sub e
	inc sp
	cpl
	ld c,l
	ret pe
	ld l,a
	ret pe
	xor d
	rst 30h
	rrca
	sub h
	rst 38h
	and a
	rst 38h
sub_4374h:
	add hl,bc
	rst 38h
	ld a,l
	ccf
	ld a,a
	ld e,d
	ld a,e
l437bh:
	rst 38h
	inc a
	ld l,c
	rst 38h
	scf
	ld a,a
	ld d,l
	adc a,(hl)
	ld l,a
	defb 0edh ;next byte illegal after ed
	adc a,e
	dec a
	rrca
	xor l
	rst 38h
	jp po,0ffa7h
	call z,0d39ch
	ld c,e
	sub e
	rst 38h
	bit 7,a
	cpl
	sbc a,c
	ld bc,l6bceh
	ld l,a
	cp (hl)
	jp po,00fcfh
	ld l,h
	rst 38h
	ld (hl),e
	or a
	rst 38h
	out (0a5h),a
	call nc,sub_7ffah
	ld sp,hl
	ld (hl),h
	ld h,a
	xor d
	ld l,a
	ld a,d
	ld c,a
	sbc a,c
	ld a,a
	ld (hl),099h
	rst 38h
	cp h
	ld a,b
	rst 38h
	ld sp,hl
	sub c
	rst 38h
	ex (sp),hl
	rst 38h
	jp (hl)
	ld a,a
	ld (005ffh),a
	rst 38h
	ld (hl),e
	sub l
	inc de
	ld a,a
	ret nz
	sbc a,b
	adc a,d
	sub h
	call p,sub_5eb5h
	dec b
	adc a,c
	ld a,a
	ret m
	jp c,0f9ffh
	ld d,e
	rst 38h
	ret po
	inc sp
	out (07fh),a
	sub d
	cpl
	add a,(hl)
	pop af
	ld (0acffh),hl
	ld a,b
	ld a,a
sub_43e4h:
	ld h,d
	cp 046h
	jp m,085cbh
	ccf
	ld a,a
	ld h,a
	ld l,h
	ld a,a
	ld a,a
	xor e
	nop
	add a,a
	cpl
	sbc a,c
	adc a,c
	jr nc,l4437h
	push hl
	rst 38h
	pop af
	ld a,a
	cp l
	ld e,d
	rst 10h
	ld (hl),c
	ld (bc),a
	adc a,b
	pop hl
	ld e,039h
	ld a,a
	sbc a,b
	adc a,l
sub_4408h:
	ld a,e
	rst 38h
	rst 28h
	ld a,b
	ld a,a
	ld l,093h
	ret p
	or (hl)
	ret p
	ld sp,03300h
	rlca
	sub a
	ld (bc),a
	ld a,a
l4419h:
	add a,d
	adc a,c
	jp m,00033h
	ld l,a
	rlca
	ld a,a
	adc a,l
	sbc a,c
	ld a,a
	ex (sp),hl
l4425h:
	inc h
	or l
	ld a,c
	nop
	ld a,a
	jp po,0fc99h
	ld a,a
	ret m
	cp 0d3h
	add hl,hl
	sub e
	ld a,a
	jp c,0f7f5h
l4437h:
	nop
	ex af,af'
	xor b
	sbc a,b
	rst 38h
sub_443ch:
	ei
	ld sp,0819ch
	and h
	ld b,h
	ld c,d
	and d
	ld a,h
sub_4445h:
	ld b,a
	rst 38h
	and 054h
	jp p,09e22h
	rst 38h
	inc de
	inc hl
	rst 38h
	jp nc,0ff9fh
	ld e,l
	ld d,l
	add a,h
	rst 8
	or a
	rst 18h
	xor (hl)
	ld c,b
	ld a,a
	or h
	ret p
	ex (sp),hl
	ld a,a
l4460h:
	sub c
	sub (hl)
	rst 38h
	ld a,h
	xor c
	and c
	ld h,e
	rst 38h
	sbc a,d
l4469h:
	sbc a,c
	ld c,d
	rst 38h
	call m,sub_7fcch
	ld d,a
	sub d
	rst 38h
	ld d,h
	rst 38h
	ret p
	ld d,d
	push af
	ld d,(hl)
	ld a,a
	ld l,d
	nop
	ld e,(hl)
	ld a,l
	add a,l
l447eh:
	ld a,(00088h)
	defb 0ddh,087h,0e7h ;illegal sequence
	add hl,bc
	ld a,a
	jp z,0378dh
	ld a,a
	dec hl
	sub a
	adc a,a
	ld a,a
	jp z,0808bh
	jr l4419h
	ld (l56eeh),a
	rst 38h
	defb 0ddh,07fh,00bh ;illegal sequence
	ld (hl),a
	ld a,a
	push af
	ld l,e
	rst 8
	add hl,sp
	push de
	ld b,h
	rst 18h
	push hl
	adc a,c
	rst 28h
	nop
	cp a
	ld a,a
	ret p
	ld l,093h
	ld a,a
	or c
	rst 38h
	pop hl
	xor l
	adc a,(hl)
	sub l
	jp nc,l7fc2h
	ld c,b
	add a,h
	rst 18h
	push af
	adc a,b
	rst 38h
	rra
	ret
	rst 8
	rst 38h
	dec c
	sub d
	rst 38h
	di
	rst 20h
	rst 38h
	ld a,(0e781h)
	sbc a,0adh
	ret nc
	xor c
	defb 0fdh,0c3h,000h ;illegal sequence
	rla
	sbc a,d
	rst 38h
	ret p
	rst 8
	and e
	jr z,l4460h
	and e
	rst 28h
	ld a,a
	di
	cp l
	rst 38h
	ret pe
	push hl
	ld a,a
	ld c,b
	pop de
	ret
	ld a,a
	and 04ah
	ret p
	ld a,a
	xor (hl)
	rst 38h
	call c,sub_7648h
	push bc
	add a,l
	ex af,af'
	rst 8
	rst 38h
	dec l
	rst 38h
	cp 06fh
	ld a,a
	call 02cffh
	rst 0
	rst 38h
	ld d,d
	rst 38h
	pop af
	ld e,a
	rst 38h
	ld d,(hl)
	sub e
	sbc a,h
	nop
	cp e
	sbc a,c
	rlca
	cp a
	rst 38h
	rst 8
	jp p,0977fh
	rst 38h
	ld a,(06affh)
	rst 38h
	ld a,b
	and a
	rst 38h
	adc a,(hl)
	rst 38h
	ld a,(l68f8h)
	ex (sp),hl
	rst 38h
	call p,09294h
	rst 38h
	ret p
	ld h,d
	ld a,a
	add a,h
	rst 38h
	or (hl)
	ld h,c
	sub l
	ld a,a
	ld c,b
	rst 38h
	call p,000fch
	dec a
	rst 38h
	jp m,0ff1eh
	jp p,0ffdfh
	jp po,088bch
	nop
	ccf
	ld a,a
	ld b,l
	sbc a,c
	ld a,a
	or 06bh
	rst 38h
	add hl,de
	rst 38h
	push de
	add a,c
	ld (hl),h
	sub h
l454ah:
	adc a,0ffh
	push de
	ld b,h
	rst 38h
	call c,079f6h
	ld b,a
	adc a,c
	adc a,h
	rst 38h
	ld a,(hl)
	ld a,(hl)
	rst 38h
	ld (hl),c
	rst 38h
	adc a,h
	dec a
	sbc a,a
	rst 38h
	rst 10h
	rst 38h
	ld a,(hl)
	adc a,07fh
	dec (hl)
	ld sp,hl
	dec hl
	sbc a,e
	cp b
	adc a,c
	pop af
	ld a,e
	sbc a,c
	rst 38h
	rst 20h
	ld l,e
	ld a,a
	sub d
	rst 38h
	ld e,(hl)
	ld c,0ffh
	ei
	ret m
	ld a,a
	sbc a,h
	and (hl)
	rlc c
	xor (hl)
	ld h,d
	pop af
	sbc a,c
	ei
	add a,e
	rlca
	ld a,a
l4585h:
	ld a,a
	scf
	nop
	dec e
	cpl
	rst 38h
	push bc
	ld a,a
	rst 38h
	adc a,0bch
	ld e,c
	rst 28h
	ld e,h
	ld a,a
	di
	ld a,(hl)
	rst 38h
	rst 8
	nop
	rrca
	inc sp
	rst 38h
	ld (hl),l
	ld h,(hl)
	xor d
	adc a,0d5h
	ld h,a
	adc a,c
	sbc a,(hl)
	ld a,a
	ld d,a
	ld (bc),a
	ld a,a
	add a,h
	di
	defb 0edh ;next byte illegal after ed
	sub e
	dec h
	adc a,(hl)
	ld (hl),e
	add a,a
	inc a
	pop de
	sub c
	rlca
	cp a
	ld a,a
	and l
	cp 01ah
	add hl,hl
	ld a,d
	sub e
	ld a,a
	ld e,(hl)
	push af
	or b
	xor b
	cp 0b1h
	ld a,l
	adc a,c
	dec (hl)
	sub c
	ret nz
	xor b
	ld c,c
	rst 10h
	rst 38h
	inc e
	ld a,e
	xor l
	adc a,c
	sbc a,(hl)
	call p,085b3h
	xor l
	rlca
	ld l,e
	ld c,c
	rst 38h
	push hl
	and l
	inc sp
	di
	daa
	rst 38h
	and h
	sbc a,a
	rst 38h
	cp d
	inc hl
	sbc a,c
	ld sp,hl
	ld (hl),l
	add a,h
	ccf
	rst 10h
	adc a,a
	ld a,a
	dec c
	rst 38h
	jp p,0fbc7h
	add a,a
	nop
	cp (hl)
	rst 38h
	call m,0ff7eh
	ld h,d
	rst 38h
	cp b
	and a
	rst 38h
	add a,e
	ld (hl),h
	sbc a,(hl)
	ld l,a
	ex (sp),hl
	adc a,d
	dec a
	rrca
	and a
	ld a,a
	ld b,h
	nop
	push de
	ld a,a
	pop af
	and e
	adc a,d
	ld a,a
	xor d
	ld (hl),a
	ld a,a
	add a,c
	ld (hl),a
	ld (hl),a
	halt
	rst 38h
	ld a,h
	ld a,e
	rst 38h
	add hl,sp
	xor 05bh
	rst 38h
	ld (hl),l
	ld a,a
	dec bc
	ld a,a
	call c,0b3f4h
	ld l,a
	call c,0f784h
	rrca
	ex (sp),hl
	sub a
	ld c,c
	ex af,af'
	inc a
	adc a,b
	inc bc
	ld l,a
	adc a,d
	ld a,h
	inc bc
	ld a,(hl)
	ld a,a
	ld l,e
	ld a,b
	ld a,e
	dec h
	ld a,a
	ld h,(hl)
	nop
	rst 38h
	inc e
	pop af
	ld a,a
	rst 38h
	adc a,a
	dec c
	adc a,(hl)
	ld l,(hl)
	rst 20h
	ld e,(hl)
	ld l,a
	ld a,c
	rst 30h
	cp (hl)
	rrca
	xor c
	sub h
	push hl
	ld c,a
	inc bc
	inc a
	ld (hl),b
	ld a,c
	ld c,c
	inc bc
	rst 8
	sub d
	pop bc
	pop de
sub_465ch:
	add hl,hl
	cp 011h
	ld a,d
	sub a
	ld a,d
	ld a,(l7f77h)
	sbc a,(hl)
l4666h:
	rst 38h
	dec de
	sub d
	rst 38h
	rst 20h
	rst 38h
	adc a,07dh
	ld h,a
	defb 0fdh,007h,014h ;illegal sequence
	and 09eh
	inc bc
	ld l,d
	sub h
	call m,0034fh
	ccf
	nop
	adc a,l
	sbc a,d
	or (hl)
sub_467fh:
	exx
	rst 38h
	inc d
	add a,c
	jp nc,08affh
	sbc a,c
	rst 38h
	ld (hl),b
	rst 30h
	rst 38h
	sbc a,e
	ld a,a
	ret p
	ld a,000h
	rst 28h
	nop
	rst 38h
	ret m
	nop
	dec (hl)
	nop
	nop
	ld h,c
	ld (hl),a
	nop
	xor c
	sbc a,c
	nop
	and 088h
	rlca
	xor d
	ld l,e
	or (hl)
	xor d
	adc a,b
	ld (de),a
	and e
	sbc a,d
	dec h
	ld a,e
	inc c
	defb 0fdh,031h,01fh ;illegal sequence
	nop
	xor l
	xor d
	nop
	ld b,b
	ld c,l
	sbc a,b
	adc a,b
	adc a,b
	call nz,07c88h
	adc a,c
	ld c,l
	ld (hl),c
	add hl,de
	ld c,h
	adc a,b
	add hl,de
	ld e,c
	ld c,l
	ld h,031h
	rst 28h
	nop
	sbc a,a
	ld sp,0181fh
	ld e,031h
	cp a
	nop
	ld e,h
	ret
	ld b,c
	sbc a,d
	and a
	xor c
	adc a,b
	dec hl
	ld bc,0c44ch
	xor b
	sbc a,c
	sub h
	ld b,h
	nop
	sbc a,l
	ld c,l
l46e2h:
	ret pe
	dec bc
	ld c,c
	sbc a,c
	adc a,d
	sub c
	rla
	xor d
	inc c
	sbc a,d
	ld a,d
	ld h,09eh
	ld sp,000f1h
	xor b
	adc a,c
	ld sp,09bf0h
	sbc a,b
	adc a,d
	add hl,de
	ld sp,l7febh
	or 0ach
	sbc a,c
	ld c,l
	inc sp
	inc b
	and h
	inc c
	ld c,d
	adc a,c
	ld b,h
	cp c
	ld h,c
	add a,h
	ld c,c
	ld c,l
	ret
	sub h
	ld c,b
	inc c
	add a,b
	ld b,h
	sbc a,b
	and h
l4715h:
	ret nz
	ld c,d
	jp z,l4d67h
	pop de
	ld d,e
sub_471ch:
	ld sp,000dfh
	ld a,031h
	ld a,018h
	dec a
	ld sp,0007eh
	call pe,0434dh
	xor b
	add hl,sp
	ld b,b
	jp z,04089h
	ld e,l
	adc a,b
	ld c,l
	ret pe
	dec bc
	add a,h
	sbc a,b
	xor h
	ld d,(hl)
	inc b
	dec b
	dec e
	ld c,l
	call m,03731h
	jr z,l4773h
	rst 0
	ex af,af'
	ld a,h
	ld sp,l7f7eh+1
	ld a,h
	dec b
	sbc a,h
	ld c,c
	or h
	ld c,l
	add a,h
	ret nz
	inc a
	ld c,l
	ld h,h
	dec bc
	ld c,b
	ld c,l
	ld c,e
	ld e,a
	ret
	add hl,de
	ld a,a
	dec l
	sbc a,e
	inc hl
	adc a,d
	ld sp,09be3h
	sub h
	ld sp,0fbe3h
	ld a,a
	sbc a,b
	adc a,b
	ld a,a
	ld e,h
	ld c,c
	ld c,c
	dec a
	sbc a,c
	call nz,sub_4d3bh
	ld c,l
l4773h:
	add a,h
	call m,0180fh
	sub h
	push bc
	ld a,a
	adc a,b
	ret m
	ld a,a
l477dh:
	jp (hl)
	xor 077h
	ld a,a
	ld sp,l7fdeh
	xor l
	add a,e
	call m,0fa7fh
	ei
	call nc,03dc4h
sub_478dh:
	ld b,h
	cp h
	dec b
	ld c,l
	ld h,h
	dec bc
	ld b,h
	inc bc
	ld c,h
	or l
	add a,e
	ret m
	ld a,a
	call c,sub_7f89h
	call m,01c31h
	ld a,a
	ld a,h
	ld sp,07f3fh
	add a,d
	sub h
	cpl
	ld c,c
	sbc a,h
	ld c,c
	ld c,l
	ld e,d
	inc bc
	defb 0fdh,027h,049h ;illegal sequence
	ld a,a
	in a,(031h)
	ret p
	ld a,(hl)
	ld a,a
	ret nz
	sbc a,c
	dec (hl)
	cp h
	jp 0944dh
	ld c,h
	ld c,l
	or e
	call nz,sub_4d49h
	rlca
	bit 2,e
	sbc a,c
	ld a,a
	push af
	ld (bc),a
sub_47cbh:
	jr nc,l477dh
	ret z
	ld c,l
	cp e
	xor 04dh
	cp d
	add hl,bc
	ld c,l
	rra
	adc a,h
	dec bc
	inc bc
	ld a,a
	call nc,09c91h
	ld d,l
	ld a,e
	sub h
	ret nz
	ld c,l
	jp po,0870ch
	dec c
	ld c,h
	ld d,l
	ret
	ld a,a
	push af
	inc h
	add a,e
	dec bc
	ld (hl),c
	ld c,h
	ld d,c
	inc b
	pop de
	ld c,l
	call 004c9h
	ld b,b
	call nz,sub_478dh
	or b
	jr c,l487dh
	pop hl
	ld a,b
	ld sp,l7f7eh
	ret p
	ret nz
	call z,0ba49h
	xor 04ch
	ld l,d
	inc sp
	ld c,l
	inc sp
	ld c,(hl)
	ret nz
	sub b
	sub h
	call z,00c7eh
	ld a,a
	rla
	ld sp,l7f8fh
	xor 098h
l481ch:
	adc a,c
	inc a
	cp a
	ld e,l
	xor 0cdh
	ld de,0a6cch
	ld c,l
	ld de,0cc6ah
	call 09061h
	rrca
	ld de,098c3h
	rst 38h
	ret m
	ld a,l
	ld sp,0ffc7h
	rst 28h
	daa
	call z,09c00h
	ret nc
	ld b,00ch
	jp z,09c4dh
	xor h
	ret nz
	jp z,0c932h
	djnz $+1
	ld a,0d2h
	adc a,h
l484bh:
	ret
	sbc a,a
sub_484dh:
	adc a,a
	ld sp,07f3fh
	call c,0840ah
	ret nz
	dec b
	inc c
	pop af
	ld (002f2h),hl
	adc a,b
	call z,sub_6666h
	call z,08c88h
	ld c,d
	adc a,l
	add a,e
	ret nz
	ld d,b
	inc c
	ld c,b
	ld a,a
	call pe,0c00fh
	sbc a,c
	inc c
	sbc a,c
	ld sp,0b54ah
	rst 8
	ld a,a
	jp c,00044h
l4878h:
	adc a,0c0h
	ld c,0c4h
	ld c,d
l487dh:
	adc a,h
	inc bc
	cp a
	add a,b
	jr nc,l484bh
	and h
	ld c,h
	inc c
	sbc a,h
	ld a,09ch
	nop
	ld a,a
	rst 38h
	ld sp,00981h
	ld a,a
	ei
	jr nz,l481ch
	ld c,h
	nop
	add hl,bc
	dec bc
	rlca
	ld d,b
	sbc a,h
	ld b,d
	push bc
	ret z
	ret nz
	ld b,b
	adc a,h
	ld e,h
	inc h
	ret
	dec b
	add hl,bc
	or b
	sub b
	nop
	call nz,0fbffh
	ld a,(hl)
	ld sp,0ff3dh
	ld a,l
	add a,l
	ld b,h
	xor 048h
	ret nz
	ret nc
	ret nz
	ld c,a
	ret nz
l48b9h:
	jp nz,008ach
	jp z,00c2ch
	call p,0c5fch
	inc c
	sub b
	adc a,l
	ld b,h
	rst 38h
	ld a,d
	cp a
	ld sp,l7f2fh
	ret p
	ld c,h
sub_48ceh:
	ld b,e
	inc hl
	defb 0fdh,0c1h,0c0h ;illegal sequence
	inc c
	ret
	call 03e52h
	dec b
	inc l
	ex (sp),hl
	call z,0b5feh
	dec b
	add a,c
	rrca
	ld (l7f34h),a
	and a
	ld sp,0fff2h
	ld a,a
	ld (bc),a
	scf
	ld e,e
	call z,0f439h
	add a,b
	call z,03399h
	cpl
	dec b
	rlca
	ld d,b
	jp p,09933h
	call z,0248ah
	ld h,c
	call z,02c3eh
	add hl,sp
	ld a,a
	ld a,a
	ld sp,0fccch
	ld a,a
	djnz $-50
	ret p
	ret p
	inc bc
	sub d
	cp h
	call nz,0f1afh
l4912h:
	inc bc
	ld (0cffch),a
	inc hl
	adc a,l
	jp pe,0a4d6h
	sbc a,007h
	jr nc,l491fh
l491fh:
	nop
	call z,l7f2fh
	pop de
	ld sp,l7ff9h
	ld a,a
	add a,b
	inc a
	add a,b
	jr c,l492eh
	nop
l492eh:
	inc bc
	ld c,a
	ld (de),a
	inc (hl)
	sub b
	call 03cc3h
	and h
	ld bc,089cdh
	ret
	inc (hl)
	ld c,h
l493dh:
	ld h,0f0h
	jp nc,0fe3eh
	ld sp,hl
	ld a,a
	ld l,a
	ld sp,0fbcch
	ld a,a
	or 0eah
	sub b
	add hl,sp
	ld bc,0ce50h
	or c
	inc hl
	ld b,h
	jp 0214eh
	ld (de),a
	ld c,h
	inc a
	ld (bc),a
	inc sp
	jr nc,l496ch
	nop
	ld (bc),a
	jp po,03e4dh
	ld hl,07ff4h
	ld e,a
	ld sp,03281h
	ld sp,0fdf5h
l496ch:
	ld a,a
	add a,083h
	inc a
	add hl,sp
	add a,l
	ret po
	ld d,b
	ld bc,03eefh
	rst 0
	ld de,0effeh
	out (012h),a
	pop bc
	ret z
sub_497fh:
	inc h
	pop hl
	rst 18h
	ld c,c
	jr nz,l49e5h
	rst 8
	rst 38h
	cpl
	cpl
	ld sp,l7de7h
	ld a,a
	add a,08fh
	inc l
	add hl,sp
	inc b
	ld d,l
	ld d,l
	dec d
	ret p
	call nc,sub_4e52h
	inc (hl)
	call 04341h
	ret nz
	ld c,008h
l49a0h:
	ld b,d
	ld (de),a
	ld c,055h
	ld d,b
	rst 8
	ld (hl),e
	ld a,a
	call po,031fch
	rst 28h
	ld a,a
	cp b
	cp 0fch
	ret nz
	add hl,sp
l49b2h:
	cp e
l49b3h:
	nop
	dec b
sub_49b5h:
	dec d
	add hl,hl
	ld d,l
	dec b
	ccf
	ld c,e
	inc sp
	call c,00715h
	ld c,c
sub_49c0h:
	ld b,050h
	push hl
	ld e,e
	ld d,l
	ld e,l
	ld a,0c3h
l49c8h:
	ld a,a
	ccf
	ld sp,0fbceh
	ld a,a
	sub c
	pop af
	call 03940h
	or b
	cpl
	dec h
	ld e,e
	or d
	inc hl
	jp p,0ce55h
	ld h,d
	call nc,05b80h
	cp e
	or l
	ld (bc),a
	jr nz,l49a0h
l49e5h:
	or b
	ld e,a
	push af
	ld c,(hl)
	ld a,a
	daa
	ld sp,l7de7h
	ld a,a
	call nz,0cc9fh
	cp (hl)
	ld b,b
	ld e,e
	ld (bc),a
	cp (hl)
	jp p,027b0h
	dec hl
	rra
	ret nz
l49fdh:
	dec d
	call nz,08cdah
	dec bc
	ld c,l
	add hl,bc
	ld hl,l5bb2h
	cp a
	sbc a,0b2h
	ret po
	ret m
	ld a,a
	rst 38h
	ld sp,l7f3bh
	xor 0dah
	ret z
	ld c,l
	djnz l49c8h
	ld (bc),a
	ld de,0214dh
	rst 28h
	jr nz,l49b2h
	adc a,094h
	call z,00028h
	ld (0cd4fh),hl
	ret nz
	or d
	ld (de),a
	nop
	rrca
	ld a,00ch
	sbc a,b
	ld a,a
	cpl
	ld sp,0fbceh
	ld a,a
	ld c,b
	add a,h
	ld c,h
	inc sp
	ld d,l
	dec de
	ld de,02f50h
	jr nz,$+66
	jp p,l4d05h
	ret z
	ld d,d
	dec de
	dec hl
	sub c
	jp z,00205h
	inc hl
	ld l,067h
l4a4dh:
	inc e
	ld c,b
	ld c,l
	adc a,(hl)
	ex (sp),hl
	ld a,(de)
	adc a,c
	exx
	sub a
	dec b
	ld sp,0fee4h
	ld a,a
	ld c,h
	cp l
	pop bc
	cp 0f0h
	push af
	or l
	jp nz,0eb22h
	ld b,b
	ld a,h
	or l
	call p,00192h
	inc hl
	ret nz
	dec b
	ld e,a
	ld e,0fbh
	cp e
	ld c,e
	ld d,c
	call sub_48ceh
	call pe,sub_4de7h
	ex (sp),hl
	rst 0
	xor b
	jp p,00565h
	ld sp,03ff9h
	ld a,a
	sub (hl)
	ld hl,02012h
	ld (bc),a
	ld d,b
	ret nc
	ld c,(hl)
	jp nz,04d40h
	add hl,bc
	ld sp,090f3h
	dec b
	dec d
	ld d,l
	rst 38h
	cp e
	nop
	ld de,0a74dh
	inc c
	ld c,c
	ld a,a
	ld b,e
	xor d
	adc a,c
	sbc a,b
	inc b
	ld a,031h
	scf
	inc sp
	ld sp,l7fc9h
	ld sp,hl
	inc l
	adc a,0cch
	ld (bc),a
l4ab0h:
	dec b
	jr nz,l4abfh
	ret nz
	jp nc,sub_4d49h+1
	ld a,01eh
	ret
	ld e,012h
	jp z,l550ah
l4abfh:
	ld e,e
	cp e
	rst 10h
	ret z
	push de
	xor h
	out (075h),a
	ret po
	ld c,l
	ld sp,hl
	ld h,07fh
	set 7,a
	ld a,(hl)
	ld sp,03fa7h
	ld (0c731h),a
	ld a,a
	ld sp,hl
	dec b
	adc a,h
	inc e
	call z,0c492h
	ld e,l
	jp 0883ch
	ld d,l
	rlca
	sub e
	pop af
	add hl,sp
	jp p,00939h
	dec hl
	jp 00733h
	jp po,0030eh
	call nz,sub_484dh
	call nz,l7f4ah
	and h
	ld c,h
	ld sp,hl
	ld sp,0ff0fh
	ld (de),a
l4afdh:
	ld sp,07f93h
	pop af
	jp nc,0cd83h
	ld hl,l4c10h
	sub e
	sub e
	sbc a,c
	call z,0cc99h
	djnz l4b42h
	ld (0452fh),hl
	rra
	adc a,0c5h
	jr z,l4ab0h
	ld (bc),a
	add hl,sp
	add hl,sp
	inc sp
	jp nz,0f2b1h
	defb 0ddh,0eeh,04dh ;illegal sequence
	ld c,d
	ld c,h
	call nz,0037fh
	ld sp,hl
	ld sp,02307h
	rst 38h
	ccf
	ld sp,l7fc7h
	ld sp,hl
	ld bc,000f1h
	ld d,b
	jp 014cch
	ld b,(hl)
	sbc a,h
	add a,b
	ld c,(hl)
	call z,02393h
	ld (0e121h),hl
	ld e,h
l4b42h:
	add hl,sp
	sbc a,00ch
	ld (hl),c
	ret
	pop de
	inc d
	rlca
	ld (0f21eh),a
	inc bc
	ld c,l
l4b4fh:
	ld c,c
	sub h
	sub 038h
	call p,0497ah
	ld sp,033b9h
	ld sp,0399fh
	di
	ld sp,0ff1dh
	ld a,048h
	ret po
	ld (bc),a
	ret
	nop
	ret
	call z,02232h
	add hl,sp
	sbc a,h
	call z,08899h
	cp 0f1h
	rst 38h
	nop
	rra
	ld (0cc99h),hl
	ret
	sub e
	ld (00423h),hl
	call z,0909ch
	rst 8
	jr nz,l4b4fh
	or 094h
	rlca
	ld b,b
	call z,004cch
	ld c,c
	ld sp,00aa5h
	ld sp,l7dc4h
	pop af
	inc (hl)
	inc sp
	sbc a,c
	ld sp,0f321h
	call p,0af31h
	rst 38h
	jp z,00c0ah
	inc a
	inc a
	ret
	ld a,a
	add a,b
	inc h
	sub e
	cp a
	ld b,c
	cpl
	ld e,01fh
	rra
	ld a,d
	ld d,h
	add hl,bc
	dec c
	adc a,a
	add a,(hl)
	jp 01ac3h
	halt
	ld c,l
	inc a
	ld e,0bch
	set 0,e
	ld sp,00ab3h
	sub e
	ld sp,02151h
	or d
	inc l
	di
	ld b,031h
	ld a,e
	ld (l6731h),a
	rst 38h
	ex (sp),hl
	jp z,02abbh
	sbc a,h
	add hl,sp
	ld (hl),b
	ld sp,hl
	ld (hl),b
	ld (0861fh),hl
	ld c,h
	pop af
	pop hl
	jp p,l640ah
	ld c,061h
	ret
	halt
l4be2h:
	ret nz
	adc a,076h
	ld a,a
	ld e,c
	dec a
	sub l
	jp 03631h
	dec bc
	or h
	jr nz,l4be2h
	di
	inc sp
	rra
	ld c,c
	ccf
	rlca
	cpl
	ld sp,08123h
	rla
	ld sp,l7fafh
	ex (sp),hl
	xor b
	ld b,b
	jp 0c324h
	call z,0113ch
	ld sp,hl
	jp z,l7bb1h
	cp 0a1h
	ld e,0beh
	ld (de),a
l4c10h:
	ld a,e
	ld d,(hl)
	ld b,087h
	add a,l
	call z,0d73ch
	rrca
	inc b
	ld c,l
	inc bc
	sub l
	ld e,c
	ld sp,00cd7h
	add a,d
	ld (080f1h),a
	ld b,h
	di
	dec b
	inc sp
	ld de,0f231h
	rst 38h
	ld b,039h
	sbc a,c
	ld sp,000ebh
	ret m
	inc bc
	xor c
	sbc a,c
	sbc a,d
	ld c,l
	inc b
	adc a,h
	ret nz
	jp 0e1feh
	ld hl,0f8eeh
	ld (081efh),hl
	dec hl
	cp 0a2h
	add a,e
	ld l,l
	rst 38h
	exx
	ld b,054h
	ld bc,08780h
	inc a
	inc c
	call 0262eh
	ld a,h
	ld sp,00e5ah
	inc sp
	inc d
	cpl
	inc de
	inc hl
l4c5fh:
	jp p,0b451h
	dec b
	ld de,0ff12h
	xor a
	ld e,c
	sub d
	ld sp,l7df1h
	nop
	ld a,c
	ret nc
	adc a,c
	ld (hl),a
	ld c,l
	and h
	ld c,d
	ld d,d
	cp 0aah
	ld de,08af8h
	add a,c
	ld a,l
	ld d,c
	rst 38h
	rst 38h
	adc a,d
	jr l4c9dh
	sbc a,c
	ex af,af'
	jp p,0d07fh
	ld (de),a
	ld c,c
	ld c,l
	ld h,a
	ld (hl),a
	rst 30h
	ld a,031h
	call m,0290fh
	inc sp
	ld a,e
	add a,d
	ld (bc),a
	jp po,02311h
	inc de
	ld l,0a2h
	cp (hl)
l4c9dh:
	add a,l
	or e
	ld sp,0fae1h
	nop
	out (077h),a
	nop
	ld a,d
	ld c,l
	rla
	ld b,b
	jp 0c927h
	pop bc
	ld c,e
	rra
	pop af
	cp l
	and h
	ld sp,hl
	ld c,c
	rst 28h
	ex af,af'
	ld de,l4afdh
	add a,b
	in a,(0e0h)
	add hl,bc
	inc b
	ld c,d
	ld c,l
	and a
	ld h,09fh
	ld sp,03913h
	ld a,l
	ld l,d
	add a,d
	ld bc,0f311h
l4ccdh:
	cpl
	pop af
	cp (hl)
	rra
	ld sp,0a584h
	add a,h
	and e
	sbc a,c
l4cd7h:
	ld sp,0fce2h
	ld a,a
	ld bc,04488h
	jr nc,$-1
	ld sp,032c3h
	ret m
	djnz l4cd7h
	rra
	cpl
	ld b,d
	rst 28h
	ld (hl),l
	ld e,0b1h
	ld (0b88ah),hl
	xor h
	adc a,h
	ld d,b
	inc a
	add a,c
	inc bc
	ld l,b
	ld b,h
	jp p,0f797h
	ld a,a
	and 031h
	cp 078h
	xor b
	ld (hl),h
	cp 090h
	add a,c
l4d05h:
	ld sp,03633h
	ccf
	rst 38h
	ld a,(hl)
	ld a,a
	ret m
	ld sp,0ff65h
	xor 090h
	and a
	adc a,c
	ld c,h
	ld (0c905h),hl
	call z,0f7b2h
	pop af
	ld d,c
	ld e,0f5h
	add hl,de
	call 02228h
	jp z,08a05h
	jp nz,09322h
	call po,sub_50a1h
	call nz,02598h
	rst 8
	ld sp,l7ac3h
	sbc a,b
	ld a,a
	di
	ld b,h
	or e
	jp m,08913h
sub_4d3bh:
	cp h
	inc de
	add a,b
	ld a,c
	ld e,09fh
	ld sp,00017h
	ret po
	ld h,h
	sub 055h
	or h
sub_4d49h:
	call 0ddc1h
	rst 38h
	ld sp,hl
	ld (hl),d
	dec de
	ld sp,hl
	ld d,d
	call 02f55h
	adc a,c
	jr z,$+49
	xor l
	ld de,02bcdh
	ld a,(de)
	call 031beh
	add a,l
	ld (00af0h),hl
	ld (de),a
	xor e
	ld b,d
l4d67h:
	ld hl,0acb3h
	and e
	ld hl,0b33fh
	ex af,af'
	cp (iy+031h)
	adc a,a
	nop
	xor (hl)
	call z,sub_5022h
	ld d,b
	add hl,sp
	cp c
	pop de
	rst 8
	di
	ld l,c
	ld c,l
	sub c
	ei
	ld c,(hl)
	defb 0fdh,02ch ;inc iyl
	pop hl
	adc a,05eh
	inc e
	ret
	rla
	ret
	dec b
	dec de
l4d8eh:
	call 0311fh
	ld c,l
	ld sp,hl
	and c
	rst 38h
	inc de
	or e
	add a,d
	inc sp
	jr nc,$-108
	add a,d
	xor (hl)
	and a
	sbc a,h
	ld sp,0ffd3h
	cpl
	ld e,c
l4da4h:
	jr nc,l4dfbh
	inc sp
	ld h,d
	or (hl)
	ld d,h
	ld c,(hl)
	call p,02e82h
	cp e
	pop hl
	call m,08297h
	ld (hl),b
	ld hl,062c0h
	ld e,a
	call po,sub_6742h
	ld d,l
	inc bc
	ld c,d
	rst 38h
	ld e,(hl)
	rrca
	ld sp,01f02h
	add hl,sp
	ld sp,hl
	ld h,b
	ex (sp),hl
	ld sp,0f2e3h
	ld d,c
	inc sp
	add a,c
	or (hl)
	ld h,e
l4dd0h:
	inc hl
	ld sp,0a7e5h
	rst 38h
	cp (hl)
	set 0,a
	dec b
	or a
	rlc e
	ld c,l
	cp a
sub_4ddeh:
	push bc
	jp nz,00982h
	ld de,l4ccdh
	cp 029h
sub_4de7h:
	rlca
	add a,b
	ret nz
	dec b
	cp 0f0h
	inc c
	ld c,e
	jr nc,l4e0ah
	ld d,b
	rst 8
	dec hl
	rst 38h
	rst 18h
	ld sp,0cfc4h
	inc hl
	inc (hl)
l4dfbh:
	inc hl
	ld sp,02bafh
	add hl,de
	ld (00782h),a
	cpl
	ccf
	jp p,0cb31h
	ld a,a
	rst 30h
l4e0ah:
	djnz l4e83h
	ld b,e
	jr nc,l4da4h
	ld e,h
	add hl,bc
	add a,h
	ld c,l
	cp e
	or b
	ld (bc),a
	rst 38h
	ld b,h
	rra
	ld de,096fdh
	call m,08ab8h
	ld c,0f0h
	dec bc
	ld hl,004c9h
	sub b
	push bc
	ld e,c
	ld l,d
	inc (hl)
	xor a
	rst 38h
	ld l,a
	ld sp,00f23h
	ld (0c6fah),hl
	ccf
	or h
	inc bc
	sbc a,a
	ld e,013h
	add a,l
	or c
	jr nz,$+51
	jp p,0ffcbh
	call c,sub_4374h
	ld c,h
	cpl
	ld d,l
	ld d,l
	jp 0044dh
	or l
	nop
	cpl
	ld a,c
	xor 091h
	add a,c
	ld (de),a
sub_4e52h:
	defb 0fdh,068h ;ld iyl,b
	cpl
	ld c,0b1h
	nop
	ld e,e
	ld (bc),a
	call po,0194ah
	ld l,e
	dec h
	call nz,0ff47h
	rst 10h
	ld sp,0f4cfh
	inc l
	add a,d
	ld (hl),0b2h
	ld hl,(0fb99h)
	call m,0b193h
	ld sp,0d7e6h
	rst 38h
	cp b
	and h
	jr nc,l4ea1h
	add hl,bc
	ret
	inc sp
	call 004c8h
	ld d,b
	rrca
	ld b,l
	ld e,0ffh
l4e83h:
	defb 0fdh,054h ;ld d,iyh
	call m,0fd9bh
	add a,l
	inc e
	dec b
	rrca
	call 00439h
	ld a,b
	pop de
	inc bc
	ld l,e
	ld c,c
	rst 38h
	xor a
	ld sp,03fa0h
	ld sp,005f3h
	sbc a,a
	inc de
	add hl,sp
	rra
	inc hl
l4ea1h:
	cp 00fh
	call m,09b31h
	ld a,a
	defb 0edh ;next byte illegal after ed
	ld (bc),a
	sbc a,c
	and h
	ret nz
	ld e,h
	dec b
	ld e,e
	or d
	add a,(hl)
	call z,00a4dh
	ld d,l
	ld bc,0fdebh
	ld (0fc81h),hl
	add a,c
	sbc a,c
	ld bc,00ef0h
	call 0e855h
	ld (bc),a
	or l
	ld d,b
	push bc
	rst 8
	ret
	dec h
	sbc a,d
	ld sp,006f3h
	inc bc
	pop af
	cpl
	ld (de),a
	jp m,08818h
	ld c,a
	ld b,0ffh
	ld sp,0009fh
	xor 022h
	ld b,e
	nop
	or d
	sub b
	ret z
	ld e,h
	inc l
	sub a
	ld c,l
	or b
	cp c
	ld d,e
	ld (hl),a
	ret m
l4eebh:
	ld d,c
	rst 8
	add a,l
	ld de,01f1bh
	add a,075h
	ld h,d
	call po,0c5d0h
	ld e,e
	cp e
	adc a,b
	ret pe
	nop
	inc (hl)
	jp m,0ae31h
	or 0aah
	ei
	ld sp,hl
	rst 20h
	ld (l4fb1h),a
	rst 38h
	ld sp,0fcabh
	ld e,0b0h
	inc a
	dec b
	sbc a,h
	dec b
	nop
	cp e
	cp e
	ld d,b
	inc a
	ret nz
	ld e,e
	cpl
	dec h
	ld l,d
	inc c
	push af
	sub c
	dec de
	rst 28h
	add a,l
	ld c,c
	rst 38h
	ld c,l
	add a,e
	or l
	inc c
	jp l4319h
	ret
	ld d,b
	jp 03149h
	jp (hl)
	or d
	push af
	call m,00228h
	ld (03e3fh),a
	sbc a,a
	ld (09f31h),a
	nop
	xor l
	sub e
	or b
	ld (04859h),hl
	xor b
	inc (hl)
	adc a,070h
	ld (bc),a
	ei
	nop
	ld c,c
	pop bc
	rst 38h
	add a,e
	or c
	jp po,0fff1h
	ld (hl),h
	call c,04765h
	call z,01745h
	ld d,d
	inc h
	sub l
	call po,0397dh
	ld sp,08137h
	ld e,d
	djnz l4eebh
	ld h,a
	inc b
	ld sp,l7ed5h
	push af
	sub h
	inc sp
	push bc
	or (hl)
	ld b,(hl)
	adc a,033h
	or l
	ld c,l
	call m,0d06ch
	ld b,(hl)
	ld hl,097feh
	call z,0ff5dh
	call c,0cc44h
	ld e,c
	ld c,l
	ld h,(hl)
	ld b,l
	call z,sub_43e4h
	ld e,h
	in a,(06fh)
	ld sp,0f6a7h
	ld d,d
	call m,001a9h
	ld (0f431h),a
	ld a,(iy+061h)
	ld (0003ch),a
	ld d,b
	ld c,l
	xor h
	ld d,l
	cp b
	ld bc,02f50h
	jr nz,l4ff6h
	nop
	add a,d
	sbc a,c
	call m,0fccah
	ld d,b
	nop
	pop hl
	or l
	inc h
l4fb1h:
	dec b
	inc bc
	jp nc,l4dd0h
	dec b
	nop
	jp 0fa23h
	ld sp,0f7bbh
	ld a,d
	adc a,e
	ld a,l
	inc l
	ld sp,0001fh
	ld e,e
	inc sp
	jp po,0cacdh
	ld b,h
	ld e,h
	adc a,091h
	cp c
	sub d
	inc (hl)
	ld e,e
	cp a
	pop de
	dec de
	jp m,l7f99h
l4fd8h:
	dec h
	ret nz
	call z,sub_6628h
	pop hl
	sub d
	dec b
	call z,0c535h
	ret nc
	rlca
	jp 03922h
	ld sp,l69d3h
	jp 03132h
	jp (hl)
	jp m,0db00h
	ld (l49b3h),a
	xor h
l4ff6h:
	ld c,c
	ld h,l
	inc b
	ld c,l
	ld b,b
	sub l
	ld c,l
	add a,c
	inc de
	ld a,h
	pop hl
	jp m,0078bh
	inc c
	ld (hl),d
	ld c,l
	push hl
	dec hl
	inc bc
	inc b
	cpl
	daa
	ld sp,0c3a5h
	sub l
	ld hl,(0fa3ch)
	ld sp,l7f7eh
	sbc a,0c5h
	jp z,00435h
	cp c
	cp b
	inc sp
	ld (hl),052h
	cp e
sub_5022h:
	ld e,h
	dec c
	rst 0
	ld d,c
	add a,e
	srl c
	add a,058h
	inc c
	set 3,d
	rla
	ld l,059h
	push de
	rst 8
	ld a,a
	ccf
	ld sp,l7f83h
	ld a,(hl)
	ld sp,000afh
	xor l
	inc hl
	pop bc
	rst 30h
	nop
	ld (hl),e
	rst 10h
	adc a,d
	ld e,e
	pop bc
	ld d,h
	adc a,0feh
	adc a,d
	inc l
	ld e,b
	add hl,bc
	ld h,0b0h
	ret p
	jp 01cf0h
	sub a
	call 0311fh
l5057h:
	adc a,e
	dec d
	rra
	sbc a,h
	ld sp,07f57h
	ret c
	ld (02278h),a
	nop
	cpl
	sub e
	ret nz
	inc d
	cp e
	rst 8
	ld (de),a
	set 4,c
	ld a,a
	nop
	sbc a,0b0h
	ld d,d
	jp po,03978h
	dec de
	push bc
	call z,0c29bh
	nop
	nop
	ld sp,hl
	ld sp,0c959h
	ld a,a
	ld sp,l53f1h
	rst 38h
	jp po,00079h
	daa
	add hl,sp
	cp e
	ld a,(de)
	cp e
	pop bc
	sbc a,c
	add a,d
	daa
	call z,sub_47cbh
	ld d,b
	inc l
	sub e
	dec e
	sbc a,b
	ld (bc),a
	ld de,03e20h
	ld (03100h),hl
	ld h,e
	add hl,de
sub_50a1h:
	sub e
	ld sp,0fce3h
	ld a,a
	jr c,l5057h
	pop af
	adc a,h
	or c
	adc a,e
	call nz,08f4dh
	ei
	inc d
	call z,0cccbh
	ret po
	sbc a,(hl)
	dec e
	ld b,a
	ld hl,098eeh
	rrca
	ret p
	ld sp,0f398h
	ld sp,031f8h
	rst 30h
	add a,d
	jp p,00039h
	inc d
	sub d
	ld (0cf32h),hl
	sub e
	adc a,03ch
	jp nz,09dfch
	call z,0d699h
	ld (03c6bh),hl
	add hl,hl
	ld e,062h
	rst 38h
	ld sp,hl
	sbc a,d
	rra
sub_50e0h:
	ld sp,09ff9h
	ld a,a
	and b
	sub d
	dec l
	inc a
	call z,028b8h
	cp c
	ld e,d
	inc hl
	ret c
	ld de,0cc5ch
	bit 7,d
	ld c,l
	inc bc
	nop
	ld (0be9fh),hl
	ret p
	ld sp,025f3h
	rst 38h
	di
	jp pe,0d54dh
	push hl
	add hl,hl
	rlca
	ret
	inc sp
	add hl,hl
	dec e
	ret pe
	nop
	ld h,a
	add hl,hl
	inc bc
	ld sp,07ee6h
	ld a,a
	dec de
	rst 38h
	nop
	ret
	di
	dec a
	rst 10h
	ld h,e
	ld (hl),a
	ld c,a
	ret c
	sbc a,000h
	jr nz,l5131h
	rra
	sbc a,a
	rst 28h
	nop
	call m,0c831h
	rst 38h
	defb 0fdh,005h,099h ;illegal sequence
	push de
	ld (hl),l
	rlca
	rst 10h
l5131h:
	dec e
	xor l
	rst 38h
	dec b
	cp 0ebh
	rst 38h
	dec sp
	defb 0fdh,031h,0bdh ;illegal sequence
	cp 0f8h
	or (hl)
	ld a,(03d05h)
	add hl,sp
	rlca
	ld (hl),e
	inc b
	jp nc,017b3h
	push de
	rrca
	sub a
	pop de
	ld (de),a
	nop
	ld sp,091f9h
	rst 38h
	ret m
	di
	or l
	ld d,c
	ret z
	rlca
	ret m
	jr nz,l515ch
l515ch:
	jr nz,l5160h
	ret p
	nop
l5160h:
	call m,0cc31h
	rst 38h
	ld a,h
	ld b,c
	sub e
	sub e
	sbc a,c
	xor h
	or h
	nop
	ret
	xor e
	jp 0a6f6h
	sbc a,h
	ex af,af'
	inc a
	inc c
	jp z,0cbf3h
	dec d
	ret z
	ld hl,0f823h
	dec d
	rst 38h
	dec hl
	ld (bc),a
	rst 38h
	cp a
	inc e
	inc sp
	inc a
	ld e,h
	inc sp
	inc (hl)
	xor l
	add a,h
	sub e
	inc hl
	dec a
	pop hl
	ld (hl),d
	add hl,sp
	exx
	inc c
	ret
	ld (0c533h),a
	inc a
	dec d
	adc a,a
	ld e,012h
	dec d
	adc a,a
	dec hl
	ret p
	ccf
	ld a,a
	dec e
	ret
	and a
	rst 10h
	xor b
	rlca
	sbc a,h
	call z,0e3d5h
	pop af
	or 0a9h
	or c
	inc bc
	call z,093c9h
	ld (0a7dfh),hl
	sbc a,h
	dec d
	sub c
	dec de
	ld (de),a
	dec d
	pop af
	cp 02bh
	rlca
	ld a,a
	ex (sp),hl
	and d
	inc a
	xor l
	sbc a,d
	xor b
	xor e
	sub b
	ld (0152fh),a
	ld e,01fh
	rra
	jr c,$+11
	call nc,0c3aah
	jp p,01f15h
	pop af
	ld hl,015f2h
	rla
	dec hl
	ret po
	ld a,(hl)
	ld a,a
	dec a
	add hl,hl
	xor b
	ld c,b
	cpl
	and b
	ld c,l
	ld bc,0f1f1h
	pop hl
	jp p,00acch
	ld c,0b0h
	ld d,c
	dec d
	ld de,0ad22h
	ld de,0f317h
	dec (hl)
	call p,0d129h
	ld e,h
	ld de,0fe15h
	dec hl
	ld b,a
	ld a,a
	ex (sp),hl
	call 02eb6h
	add a,h
	ld hl,l4fb1h
	pop af
	inc c
	jp p,0be1eh
	ld (de),a
	ld b,a
	ld d,e
	jp p,0c401h
	ld d,a
	dec d
	sbc hl,bc
	inc c
	ld e,011h
	pop hl
	ld (de),a
	rla
	ld e,0bbh
	pop hl
	call m,0dac4h
l5227h:
	rst 20h
	dec hl
	ld d,(hl)
	rlca
	dec hl
	rrca
l522dh:
	cp h
	call z,02bc2h
	ld e,e
	rlca
	dec hl
	scf
	dec d
	dec hl
	sbc a,a
	ld a,a
	ret z
	halt
	ld (015d7h),a
l523eh:
	rra
	rst 28h
	ld d,l
	cp e
	ld de,00a83h
	rst 38h
	ld de,006f2h
	ld bc,0be9bh
	dec d
	jr z,l529ch
	rst 8
	and e
	out (02ah),a
	ld h,h
	ld e,05dh
	adc a,c
	exx
	cp (hl)
	dec d
	adc a,02bh
	adc a,d
	ret nz
	inc c
	adc a,02bh
	rst 20h
	add a,a
	pop bc
	dec hl
	xor h
	dec d
	pop bc
	and a
	ld h,015h
	jp nz,l5f2bh
	ld a,a
	sub e
	out (015h),a
	call z,05554h
	ld d,c
	rst 38h
	and e
	out (05eh),a
	jr z,l523eh
	adc a,e
	out (053h),a
	ld (hl),b
	dec d
	cp (hl)
	rra
	sub h
	call 015a4h
	ld e,d
	pop hl
	rst 28h
	call po,sub_5d88h
	dec d
	ld a,(bc)
	pop hl
	inc e
	nop
	ex de,hl
	add a,c
	rst 38h
	call m,0f0c5h
	inc c
	dec hl
	jp (hl)
	dec d
l529ch:
	pop hl
	dec hl
	push de
	rst 38h
	ld a,(hl)
	ld b,l
	or (hl)
	inc de
	jp nc,0f182h
	or c
	jp p,025b7h
	rst 28h
	ex af,af'
	rst 38h
	dec d
	ld d,c
	cp (hl)
	ld c,e
	dec d
	ld d,c
	ret
	ld d,l
	ld h,(hl)
	dec d
l52b8h:
	ld c,l
	ld d,c
	dec d
	rst 38h
	adc a,(hl)
	rra
	dec d
	ld (hl),l
	dec hl
	call z,sub_78e1h
	pop af
	ld de,00fech
	rst 28h
	jp pe,02b79h
	jp (hl)
	dec d
	ld e,01ch
	dec d
	rst 0
	dec hl
	rra
	ld a,a
	adc a,(hl)
	jp 03245h
	ret m
	ld sp,02f29h
	ld a,e
	pop bc
	sub h
	or c
	cp e
	or l
	ld e,a
	ret po
	ld (0153ch),hl
	cp b
	ld (hl),a
	dec d
	dec de
	ld hl,0e1ebh
	dec d
	xor 048h
	ld (de),a
	call c,02b15h
	inc (hl)
	inc e
	ret nz
	ld l,c
	cp h
	ld (bc),a
l52fch:
	ld b,l
	ld (de),a
	rst 28h
	dec hl
	push hl
	dec d
	pop bc
	ex de,hl
	call pe,0bc15h
	dec hl
	cp 07fh
	add hl,sp
	add hl,sp
	cpl
	ret m
	add hl,sp
	ret
	inc sp
	jp p,00d63h
	jp po,l6911h
	xor h
	adc a,d
	ld l,l
	ld (l78bch),hl
	dec d
	rst 38h
	ld e,047h
	dec d
	rst 38h
	jr l5346h
	pop af
	dec d
	call nc,0fc2bh
	ld l,c
	or l
	ld c,h
	ld d,b
	in d,(c)
	ld c,d
	jr nz,l52b8h
	ld a,b
	dec hl
	or l
	call pe,01e15h
	dec d
	push hl
	rst 38h
	ld l,a
	sub c
	cp a
	dec (hl)
	dec a
	ret
	inc (hl)
	ld sp,hl
	and d
	cpl
l5346h:
	or a
	adc a,b
	rst 8
	ret z
	di
	sub e
	cpl
	ld de,015c9h
l5350h:
	ld (0b4f9h),hl
	adc a,(hl)
	ld c,l
	pop af
	rst 38h
	push hl
	ld c,c
	rst 20h
	ld a,(de)
	ld hl,015c6h
	sub d
	rst 30h
	ld (0e81eh),hl
	ld h,b
	dec b
	cp e
	ld d,b
	rst 8
	ld d,0c0h
	ld d,l
	or l
	ld l,c
	dec hl
	ld l,01fh
	ld sp,hl
	sub e
	dec d
	ld de,0bc2bh
	dec d
	jp z,l542bh
	or c
	dec d
	rst 38h
	ld sp,hl
	ld (de),a
	jr nc,l5350h
	rst 0
	pop de
	ld hl,l7bb9h
	add iy,sp
	di
	ld (de),a
	rst 38h
	jp z,l6b52h
	ret z
	dec d
	rst 38h
	call z,sub_62e7h
	push hl
	add a,h
	ld hl,l5ccfh
	dec d
	ld d,c
	ld a,(hl)
	and c
	ld b,h
	rst 38h
	nop
	ld b,d
	ld d,l
	ld l,c
	jp nz,05bc0h
	xor 025h
	inc c
	dec hl
	dec e
	ld d,l
	jp pe,0516fh
	dec d
	rst 38h
	ld l,l
	dec d
	ld a,a
	dec d
	or l
	dec hl
	or b
	and e
	inc hl
	ld a,a
	pop af
	rst 20h
	or a
	ld l,c
	call p,02e17h
	push hl
	ld d,d
	call m,sub_50e0h
	ld hl,l5fc0h
	or l
	ld de,0f115h
	call m,07a6bh
	ld e,c
	adc a,01dh
	ld (hl),h
	dec d
	ccf
	xor b
	ld de,0c4eah
	ld a,a
	ld d,l
	jp (hl)
	ld (hl),c
	ld l,c
	sub h
	dec e
	ld bc,03133h
	ld sp,027e1h
	inc e
	dec d
	xor (hl)
	pop bc
	dec d
	jp po,l7e92h
	inc sp
l53f1h:
	ld a,a
	ld c,h
	scf
	jp nz,01e5dh
	cp a
	rst 38h
	dec d
	push bc
	call po,0b0eah
l53feh:
	dec b
	ld e,c
	cp 0c4h
	dec d
	add a,0d6h
	dec l
	rrca
	add a,d
	dec h
	add a,d
	and a
	dec d
	inc sp
	adc a,(hl)
	add a,c
	cp 012h
	call z,06905h
	call 0a200h
	dec h
	cp b
	xor c
	inc sp
	rst 38h
	di
	sbc a,e
	dec d
	jp 015cfh
	pop bc
l5423h:
	pop hl
	ld a,a
	ld sp,hl
	ld b,d
	cp e
	or b
	ld (bc),a
	pop hl
l542bh:
	ld sp,0fd11h
	dec h
	call m,0bbach
	ld b,b
	ret p
	dec bc
	ld hl,00c20h
	call nc,00115h
	defb 0edh ;next byte illegal after ed
	and (hl)
	dec d
	ld b,a
	inc de
	ei
	rra
	dec d
	ld d,d
	rst 28h
	add hl,hl
	ld hl,09a0dh
	ld b,a
	dec b
	ld a,a
	inc c
	ld d,b
	add a,c
	ret
	and e
	inc h
	rst 38h
	adc a,c
	sbc a,e
	ld hl,07a36h
	dec d
	ld (0922fh),hl
	ld a,(hl)
	inc hl
	ld a,a
	ld d,l
	or e
	ex af,af'
	cpl
	ld c,b
	xor 011h
	adc a,h
	defb 0edh ;next byte illegal after ed
	adc a,b
	xor 02fh
	or c
	ld (de),a
	nop
	ld e,e
	ld (bc),a
	rst 38h
	cp c
	dec d
	defb 0edh ;next byte illegal after ed
	add hl,hl
	dec d
	push bc
	sbc a,051h
l5479h:
	sbc a,(hl)
	ld (hl),b
	dec d
	or c
	ld c,b
	ld (de),a
	adc a,d
	jp p,00512h
	nop
	ld e,a
	ld l,c
	xor 069h
	dec bc
	ld e,e
	ld d,b
l548bh:
	ld d,l
l548ch:
	ld bc,l56a3h
	inc hl
	and h
	ld a,(de)
	add a,a
	sbc a,(hl)
	dec d
	ld c,c
	rrca
	and (hl)
	rrca
	ld (de),a
	jp p,0ca7fh
	adc a,h
	or e
	ld h,(hl)
	rrca
	or e
	ld l,d
	or l
	scf
	cpl
	pop de
	ld (de),a
	inc e
	ret z
	sbc a,e
	ld a,a
	dec d
	sub d
	sub (hl)
	sbc a,h
	dec d
	ld d,(hl)
	add a,l
	jr c,l54e1h
	dec d
	and (hl)
	dec bc
	add a,b
	sbc a,b
	ret pe
	ld bc,l551fh
	dec h
	add hl,bc
	ld h,0eah
	inc d
	and d
	sub (hl)
	and e
	ld b,h
	jp (hl)
	rst 38h
	call m,079f6h
	inc l
	dec d
	add a,095h
	ccf
	rst 38h
	ld a,a
	ld hl,l69cch
	sub c
	ret z
	ld h,c
	push hl
	jp pe,l67b9h
sub_54ddh:
	sub e
	ld bc,00ef0h
l54e1h:
	dec hl
	rst 38h
	ld (hl),d
	ld b,095h
	inc sp
	add a,b
	sbc a,b
	and h
	ld h,l
	cp 0e2h
	dec d
	ld a,l
	xor d
	in a,(089h)
	ld (02f0fh),hl
	adc a,c
	ld h,c
	ld de,0d02ch
	ld l,c
	ld c,l
	jp pe,0452fh
	rst 38h
	or 0f5h
	sub (hl)
	daa
	dec d
	xor e
	dec de
	dec d
	ccf
	ld a,a
l550ah:
	dec e
	inc l
	ld l,c
	inc h
	or b
	ld (0e21eh),a
	and 067h
	sub d
	dec de
	rra
	jp nz,l6993h
	ret
	dec d
	sbc a,d
	adc a,(hl)
	ld e,h
l551fh:
	sbc a,e
	ret z
	sub l
	adc a,015h
	ld e,e
	cpl
	and b
	adc a,c
	call m,013e9h
	ld (l46e2h),hl
	dec hl
	ret nz
	dec b
	ld l,c
	ld d,a
	dec e
	rst 38h
	sub e
	or l
	sub c
	sub l
	sbc a,h
	dec d
	inc a
	jp p,07f15h
	ld a,a
	dec e
	inc a
	or e
	ld (hl),d
	cpl
	cp c
	ld c,h
	pop hl
	ld d,e
	dec de
	rst 28h
	rst 0
	ld d,d
	ld b,c
	add a,a
l554fh:
	ld l,c
	or l
	inc c
	jp 02b15h
	ld hl,l4d8eh
	sbc a,l
	ld e,h
	ld l,l
	pop hl
	dec d
	inc sp
	add a,b
	adc a,c
	sbc a,a
	inc a
	ld l,0cfh
	dec hl
	ld l,c
	add hl,hl
	dec (hl)
	ret pe
	sbc a,b
	inc sp
	dec d
	pop hl
	ld (hl),c
	call m,02b15h
	ld a,b
	dec d
	rst 28h
	rst 38h
	call po,0c014h
	ld (bc),a
	ret nz
	ld b,l
	cp d
	rst 38h
	inc h
	rst 20h
	ld c,d
	jp po,0c867h
	inc l
	rst 0
	ld d,e
	inc c
sub_5587h:
	inc a
	dec d
	sub h
	set 0,a
	sub 092h
	sbc a,d
	sub a
	ld h,c
	call m,0d215h
	ld (0aaa6h),a
	ld a,a
	sbc a,c
	or c
	jp nz,0322bh
	ret nc
	rlca
	sub b
	jp (hl)
	nop
	inc sp
	rst 38h
	cp d
	cp (hl)
	and 015h
	dec hl
	pop af
	dec d
	call m,0ad7fh
	call m,0b3a8h
	sub d
	rst 38h
	ld h,(hl)
	ld d,d
	rra
l55b6h:
	ret z
	ld d,c
	ret m
	jp nz,03c9ah
	defb 0edh ;next byte illegal after ed
	dec d
	ld e,0dbh
	ld a,e
	dec d
	ex (sp),hl
	rst 38h
	jr z,l55b6h
	and d
	ld h,c
	jp (hl)
	ld c,l
	rrca
	dec hl
	nop
	ld (hl),c
	ld (0f222h),a
	ret pe
	ret z
	dec d
	rst 38h
	cp c
	dec d
	sub l
	ld hl,(08000h)
	or e
	adc a,(hl)
	ld h,a
	dec d
	ld a,a
	ex (sp),hl
	adc a,d
	inc c
	jr nc,$+82
	cp c
	ld l,0b4h
	call z,0e582h
	and 068h
	call m,00540h
	inc bc
	ret nz
	jp (hl)
	dec d
	pop bc
	defb 0fdh,0dch,078h ;illegal sequence
	dec d
	ret
	jp pe,0268ah
	ld h,c
sub_55feh:
	xor c
	jp nz,0e914h
	ld h,e
	cp 071h
	inc sp
	dec d
	adc a,(hl)
	cpl
	dec d
	ld e,e
	pop bc
	dec d
	add a,a
	inc de
	inc c
	call nz,01572h
	call m,0827fh
	inc a
	dec b
	call c,0db2bh
	ld c,l
	push hl
	or d
	ld c,h
	rst 20h
	ld l,c
	ret pe
	ld b,d
	nop
	ld d,b
	defb 0fdh,02eh,015h ;ld iyl,015h
	ex de,hl
	sub a
	dec (hl)
	add a,e
	inc a
	dec d
	daa
	jp pe,0ec14h
	ld l,c
	adc a,d
	sbc a,0f9h
	inc d
	inc e
	call z,06906h
	ld hl,l69ddh
	dec d
	ld (hl),b
	cp h
	dec d
	ld hl,015e5h
	ld e,0a7h
	ld (hl),a
	ld a,a
	push hl
	call po,0ca5ch
	ld d,c
	cp h
	sub c
	or (hl)
	ld c,(hl)
	rst 20h
	ld h,l
	ld b,a
	dec bc
	ld a,a
	cp c
	dec d
	res 3,b
	rst 8
	and d
	sub l
	ld h,d
	ld a,b
	inc l
	dec d
	ld d,d
	ld l,c
	ld a,b
	dec b
	adc a,d
	halt
	add a,(hl)
	ld hl,(0a391h)
	jp (hl)
	ld b,a
	or c
	di
	inc sp
	dec d
l5672h:
	sub e
	ld e,015h
	and (hl)
	pop hl
	dec d
	ld e,a
	rst 38h
	call po,02a52h
	or e
	ld h,(hl)
	ld e,l
	or l
	ld a,(de)
	or h
	ld l,d
	push bc
	ld d,h
	ccf
	ret pe
	sub l
	jp nc,01578h
	inc de
	jp p,0811bh
	ld a,c
	dec d
	ld c,d
	pop hl
	out (c),l
	sub c
	ld (hl),c
	and b
	add a,e
	rrca
	defb 0fdh,04fh,015h ;illegal sequence
	inc sp
	dec de
	call pe,09615h
l56a3h:
	rst 38h
	dec d
	ld a,(hl)
	ld a,a
	add hl,sp
	inc sp
	ld (013eah),a
	ld e,e
	inc a
	ld c,h
	adc a,01fh
	push bc
	inc (hl)
	ld b,(hl)
	or b
	ret p
	ld h,(hl)
	jp 0153eh
	or c
	cp e
	dec d
	pop bc
	rst 38h
	daa
	dec d
	sbc a,d
	ld (l77e1h),a
l56c5h:
	jp po,09033h
	ld c,d
	rst 38h
	ld d,d
	ld l,02fh
	cp 06fh
	dec d
	add hl,sp
	rst 38h
	inc a
	dec d
	ld a,a
	ld a,a
	ld e,0bbh
	dec h
	sub e
	call c,0dee4h
	ld d,(hl)
l56deh:
	call pe,sub_7f96h
	ld a,098h
	ld d,d
	jp po,09ed1h
	dec d
	rlca
	adc a,012h
	dec d
	xor h
	adc a,e
l56eeh:
	xor 089h
	and d
	pop hl
	sub h
	inc (hl)
	ld d,l
	ld (bc),a
	dec a
	call z,01522h
	ld e,012h
	dec d
	ld d,c
	rst 38h
	ld sp,hl
	dec b
	inc sp
	add hl,sp
	inc (hl)
	or l
	add hl,hl
	dec a
	ld h,b
	or (hl)
	call z,0f49eh
	dec bc
	inc l
	sub e
	inc de
	dec d
	push bc
	jp p,0ea15h
	inc l
	ret c
	inc c
	rst 38h
	call c,0fd1eh
l571ch:
	ex de,hl
	call p,sub_7915h
	jp p,l4715h
	rst 38h
	call po,0239ch
	sbc a,h
	dec a
	ld b,a
	ld l,c
	ld hl,008cch
	add hl,de
	and 049h
	rst 8
	dec d
	ex (sp),hl
	defb 0fdh,0d7h,015h ;illegal sequence
	and d
	sub d
	pop hl
	rst 10h
	dec hl
	ld e,c
	call sub_7169h
	ld c,c
	rst 20h
	dec d
	and 022h
	jp p,07e15h
	sbc a,c
	nop
	jr c,l56deh
	ld (09d32h),hl
	cp l
	ld e,h
	ld d,b
	out (02fh),a
	and (hl)
	push bc
	ld h,e
	ld a,(02922h)
	dec d
	out (c),h
	nop
	dec d
	call z,015d5h
	rst 30h
	ld a,(hl)
	nop
	scf
	nop
	rst 38h
	call m,sub_6000h
	nop
	nop
	ld a,h
	sbc a,c
	nop
	jr nz,l57b7h
	ld d,(hl)
	ld (hl),a
	ld (hl),l
	ld b,e
	ret m
	rla
	cp l
	nop
	rst 0
	sub a
	ld h,(hl)
	ld h,a
	rrca
	pop hl
	ex af,af'
	ld sp,09923h
	ld bc,03932h
	jr z,l571ch
	ld hl,00605h
	ld (de),a
	add hl,sp
	ret m
	rrca
	ld a,07fh
	jr nc,$+105
	ld h,l
	ld b,e
	add hl,hl
	ret po
	add hl,bc
	ld h,(hl)
	ld c,c
	ret m
	ld a,b
	adc a,09dh
	defb 0ddh,000h,047h ;illegal sequence
	ld b,h
	ld b,(hl)
	ld a,c
	rrca
	ret po
	cp 07fh
	adc a,e
	ld (0c200h),hl
	adc a,b
	inc h
	halt
	add a,b
	ld a,h
	ld b,e
	sbc a,l
	call c,006c9h
l57b7h:
	ld b,c
	sbc a,h
	call sub_54ddh
	ld h,a
	rrca
	ret m
	ccf
	ld a,a
	inc de
	inc sp
	ld a,a
	ex de,hl
	ld (hl),h
	sub d
	ld a,e
	inc h
	inc hl
	ld (08042h),hl
	rrca
	halt
	ld d,h
	ld a,(hl)
	adc a,h
	sbc a,h
	call z,006b0h
	dec b
	call sub_76d4h
	ld h,a
	rrca
	ret
	inc a
	sbc a,l
	call z,0d90fh
	ret
	ld b,00fh
	rst 10h
	ld l,a
	or d
	sub a
	rrca
	ld e,b
	sub e
	dec b
	rrca
	inc sp
	ld a,h
	inc sp
	ld a,a
	sub h
	ld a,(hl)
	halt
	inc hl
	and b
	dec de
	nop
	dec (hl)
	ld (03253h),hl
	adc a,c
	add a,b
	dec h
	ld a,a
	ret p
	sub (hl)
	defb 0ddh,0d9h,06eh ;illegal sequence
	ld a,a
	pop hl
	ld (hl),b
	defb 0ddh,067h ;ld ixh,a
	rrca
	sbc a,07fh
	ld a,c
	rrca
	adc a,b
	ret
	sbc a,a
	ld sp,hl
	sub b
	defb 0ddh,00fh,0f6h ;illegal sequence
	ld l,a
	ld b,a
	halt
	adc a,a
	ld b,(hl)
	ld (l7b11h),a
	ld a,h
	ld a,a
	ld b,e
l5823h:
	ld (02552h),hl
	ld a,a
	jp nz,09404h
	add a,(hl)
	adc a,a
	cp 084h
	sbc a,l
	call sub_7fe6h
	ld h,b
	dec sp
	call 00fd7h
	cp b
	ld a,a
	rrca
	ld (hl),l
	exx
	rrca
	rst 38h
	dec de
	rrca
	rst 10h
	ld a,a
	ld e,l
	ld l,a
l5844h:
	and e
	ld h,h
	rst 38h
	xor 0c1h
	ld a,a
	inc sp
	inc (hl)
	ld b,h
	nop
	add a,c
	ld b,(hl)
	ld (l4364h),hl
	inc hl
	ld c,b
	add a,d
	add hl,hl
	rst 30h
	ld a,a
	inc sp
	ret
	call c,sub_7f6ah
	add a,d
	call z,sub_5f9ch
	ld h,e
	sbc a,b
sub_5864h:
	rrca
	defb 0ddh,07fh,05ch ;illegal sequence
	call 0350fh
	ld a,c
	rrca
	call c,01cffh
	pop af
	rrca
	rst 38h
	ld e,0eeh
	ld c,c
	rrca
	rst 20h
	rst 38h
	and 01ch
	inc hl
l587ch:
	ld (hl),022h
	ld a,(hl)
	ld l,l
	ld a,a
	inc b
	add a,b
	dec de
	add a,c
	ld e,(hl)
	pop de
	xor 0c7h
	ld a,a
	ld d,c
	ret po
	ld h,h
	rlca
	and 0c8h
	call c,0ebffh
	rrca
	sbc a,c
	adc a,(hl)
	ld h,d
	rst 38h
	jr c,l587ch
	rrca
	rst 28h
	ld e,c
	ld (bc),a
	ld (0211fh),a
	cpl
	ld (de),a
	sbc a,c
	ld c,(hl)
	ld a,039h
	sub l
	ld a,a
	call po,sub_7f33h
	ld b,h
	jr nc,l58f4h
	ld d,l
	nop
	ld d,a
	ld (l7522h),hl
	ld d,h
	add a,b
	sub c
	add a,d
	dec (hl)
	add a,b
	ld e,0d3h
	ld l,a
	call c,0da7fh
	cp 032h
	rst 38h
	ld a,(00fe6h)
	sbc a,(hl)
	ld e,b
	sbc a,(hl)
	and b
	xor e
	rst 38h
	add a,0ffh
	ld (01573h),a
	ld de,l5823h
	rst 38h
	rst 30h
	ld b,h
	call m,01862h
	ld (hl),l
	ld d,(hl)
	ld h,(hl)
	nop
	ld l,b
	ex af,af'
	ld (l6586h),hl
	ld d,l
	add a,b
	push bc
	ld (hl),08fh
	ld hl,l5944h
	cp 02eh
	ld e,e
	ld l,b
	ld a,a
	call nc,0a5e0h
l58f4h:
	rrca
	rlca
	or c
	rst 38h
	rst 10h
	rrca
	ld de,0ccfeh
	add a,b
	or e
	and b
	add hl,sp
	ld a,a
	call nc,0eeffh
	ld a,a
	and e
sub_5907h:
	adc a,c
	rst 38h
	xor 099h
	ld (hl),c
	ld (hl),d
	ld (hl),a
	rst 38h
	inc e
	call nz,sub_5587h
	ld c,c
	ld d,h
	ld c,026h
	add a,d
	sbc a,(hl)
	dec (hl)
	ld a,a
	ld a,h
	ld l,(hl)
	ld (hl),e
	ld e,(hl)
	ld a,a
	and 0cch
	jp p,0960fh
	xor c
	cp h
	ld a,a
	ex (sp),hl
	rst 38h
	or (hl)
	adc a,c
	rlca
	ld b,a
	rst 38h
	rst 10h
	ei
	jr nz,l598bh
	daa
	ld d,h
	sbc a,(hl)
	rst 38h
	and b
	dec bc
	ld h,(hl)
	ld h,l
	ld d,(hl)
	ld (hl),d
	inc h
	ld d,(hl)
	inc sp
	add a,b
	ld a,b
	ld l,b
	rra
l5944h:
	ld de,09c9ch
	cp 0cch
	add a,b
	call p,0e7c9h
	rrca
	ld a,a
	cp (hl)
	rrca
	ld d,c
	ret
	xor d
	sub 00fh
	ex (sp),hl
	rst 38h
	sbc a,(hl)
	ld a,a
	sub (hl)
	add a,e
	ld hl,0ff73h
	ld a,l
	ld (hl),b
	ld (hl),d
	ld h,a
	ld h,043h
	or (hl)
	rst 38h
	and (hl)
	adc a,e
	ld (bc),a
	ld d,l
	ld d,(hl)
	ld l,b
	ld b,d
	ld (hl),h
	ld b,e
	add a,b
	ld b,e
	daa
	ld l,c
	ld a,a
	jp nc,05cdfh
sub_5978h:
	dec sp
	ld a,a
	ld e,c
l597bh:
	sbc a,c
	ld a,a
	add a,h
	sbc a,l
	rrca
	out (0aah),a
	add a,a
sub_5983h:
	ld a,a
	push bc
	add a,e
	ld e,c
	adc a,a
	xor (hl)
	dec (hl)
	adc a,a
l598bh:
	sbc a,(hl)
	ld a,a
l598dh:
	ret pe
	ld h,(hl)
	ld (hl),d
sub_5990h:
	dec h
	ld b,e
	or (hl)
l5993h:
	call p,09357h
	adc a,b
	add a,b
	ld b,l
	ld e,b
	ld h,084h
	ld b,h
	sub b
	add a,b
	ld h,065h
	pop af
	ld a,a
	ld de,088c8h
	adc a,h
	ld b,0aah
	xor d
	inc bc
	ld a,c
	ld a,a
	inc hl
	sbc a,h
	rst 38h
	ld a,(0e77fh)
	ld h,01fh
	ld (hl),a
	nop
	ld a,a
	out (06fh),a
	ld d,c
	sub e
	rst 38h
	push hl
	adc a,a
	inc e
	ld b,a
	rst 38h
	cp l
	di
	jr l5a43h
	sub (hl)
	xor l
	add a,c
	ld b,(hl)
	ld l,c
	add a,c
	ld d,h
	adc a,l
	daa
	dec h
	ld h,l
	ld b,h
	add a,b
	dec (hl)
	add a,(hl)
	jp nz,l4c5fh
	adc a,b
	and c
	adc a,c
	dec bc
	sbc a,d
	call z,0a9aah
	jp m,0deb7h
l59e3h:
	dec h
	rst 38h
	cp b
	adc a,l
	ex (sp),hl
	ld a,a
	call nz,0ee9ah
	rst 8
	rra
	ld a,a
	add a,(hl)
	rst 28h
	ld d,(hl)
	rst 38h
	inc a
	cp (hl)
	ld a,a
	ld c,b
	inir
	ld a,l
	xor 058h
	jr z,l5993h
	ld d,l
	or 098h
	add a,l
	ld h,(hl)
	ld d,(hl)
	call 08612h
	ld (hl),c
	sub d
	ld e,a
	add a,l
	sub h
	ld b,d
	ld a,a
	ret
	sbc a,d
	xor c
	ex af,af'
	ld de,l7746h
	sbc a,c
	rst 28h
	rst 18h
	ld b,058h
	rrca
	sbc a,a
	ld l,c
	sbc a,a
	ld a,a
	jp (hl)
	sbc a,d
	ld a,a
	and d
	ld sp,hl
	ld sp,hl
	ret
	rst 28h
	ld e,l
	ld (0ff7fh),a
	ld a,0fch
	ld a,(hl)
	jp po,l7c7dh
	ret z
	ld a,l
	inc b
	sbc a,c
	inc h
	ld a,h
	ld d,h
	add a,h
	ld d,h
	sub h
	add a,b
	ret p
	ld a,a
	adc a,h
	push af
	cpl
	ld h,h
	ld e,b
l5a43h:
	ld e,l
	ld a,a
	ld h,a
	sbc a,c
	ld a,a
	or e
	xor c
	ld a,a
	cp a
	ld l,a
	jr c,$+1
	rst 30h
	sbc a,a
	rst 38h
	adc a,a
	ld a,(hl)
	jr c,l5a5dh
	add hl,bc
	sbc a,b
	adc a,b
	adc a,b
	adc a,c
	adc a,(hl)
	ld e,d
l5a5dh:
	djnz l59e3h
	xor c
	add a,c
	cp e
	adc a,c
	dec sp
	ld a,a
	add hl,bc
	adc a,b
	ld d,h
	ld a,a
	ld (hl),h
	ld a,a
	xor d
	rst 38h
	ld l,03fh
	jp pe,0f6c7h
	ld hl,0dcddh
	rst 38h
	ld l,049h
	xor d
	rst 38h
	ld (hl),b
	pop hl
	ld l,a
	inc sp
	rst 38h
	xor 095h
	rst 38h
	push af
	push af
	ld a,(hl)
	ld a,a
	call c,sub_7080h
	ld d,(hl)
	sub e
	add a,b
	add a,h
	ld e,h
	ex af,af'
	sbc a,h
	add a,a
	rst 38h
	jp c,l63dfh
	halt
	ld d,0c8h
	rst 38h
	ret p
	out (0ffh),a
	or l
	rst 28h
	or c
	ld l,h
	sbc a,a
	ld a,a
	sub c
	ret m
	ld e,h
	ld bc,l6636h
	sub a
	ld (hl),a
	ld (hl),a
	ld a,c
	add a,(hl)
	ld c,h
	sub c
	ld e,c
	sub e
	add a,b
	adc a,l
	ld h,d
	add a,l
	ld a,(0c27fh)
	sub d
	rst 38h
	ld (hl),d
	rst 38h
	in a,(057h)
	push bc
	rst 38h
	jp 0298fh
	xor c
	cp 009h
	defb 0ddh,00fh,089h ;illegal sequence
	rst 38h
	rra
	sbc a,a
	ld a,(hl)
	sub l
	ld a,l
	xor 0f5h
	adc a,b
	ld d,l
	adc a,c
	jr z,$+91
	inc (hl)
	ld b,l
	inc b
	ld h,a
	ld (02262h),hl
	inc sp
	add a,d
	or b
	halt
	inc c
	ld b,h
	ld a,b
	ld d,l
	adc a,b
	rst 38h
	ld (hl),b
	dec bc
	call nz,sub_7cc8h
	sbc a,c
	rst 38h
	call p,00fe3h
l5af1h:
	rst 38h
	inc e
	adc a,l
	ret z
	adc a,c
	ld l,a
	adc a,a
	rst 38h
	call 03647h
	ld a,l
	sub h
	ld b,h
	nop
	inc d
	ld (hl),c
	add a,b
	ld (hl),c
	add a,b
	ld hl,02752h
	add a,d
	ld h,d
	dec h
	sbc a,c
	ld a,b
	pop de
	sub h
	adc a,h
	rst 38h
	xor (hl)
	ld h,(hl)
	ld b,l
	ld l,h
	rst 38h
	cp d
	di
	rrca
	rst 38h
	xor (hl)
	jr c,$-63
	ld a,(hl)
	ld a,a
	ld (hl),d
	ld a,c
	xor e
	ld b,l
	ld l,c
	or 0e7h
	add a,e
	or e
	adc a,b
	or h
	add a,b
	ld (hl),c
	add a,b
	ld hl,08462h
	add a,d
	ld h,b
	dec h
	ld h,a
	ld l,c
	or l
	sbc a,a
	add hl,sp
	ld e,b
l5b39h:
	sbc a,h
	rst 38h
	call z,sub_4445h
	adc a,(hl)
	rst 30h
	inc a
	ld a,a
	ld a,b
	rrca
	rst 20h
	rst 38h
	rla
	ld b,l
	rst 28h
	and h
	rst 38h
	cp (hl)
	ld h,b
	add a,a
	sub e
	ld b,(hl)
	ld h,(hl)
	sub e
	or 067h
	ld a,h
	add a,l
	and a
	add a,b
	and h
	add a,b
	ld l,c
	ld (hl),l
	sub l
	rst 38h
	sub (hl)
	add a,e
	ld hl,08367h
	adc a,a
	ld e,d
	adc a,h
	jp p,0277fh
	add a,0c6h
	jr z,l5b39h
	ld a,a
	sub e
	ret
	rrca
	cp a
	rst 38h
	ld l,(hl)
	rrca
	ld a,e
	ld c,c
	ld l,a
	defb 0fdh,07fh,0c2h ;illegal sequence
	adc a,b
	ld (hl),l
	ld c,c
	call m,sub_7d4eh
	ld l,d
	add a,c
	inc hl
	halt
	ld h,(hl)
	add a,b
	ld bc,09869h
	add a,a
	ld e,c
	inc h
	add a,d
	ld l,e
	add a,h
	cp h
	ld hl,(0e088h)
	pop af
	ld a,a
	dec de
	ld d,h
	call nz,08c58h
	sbc a,(hl)
	ld a,a
	ld l,099h
	rrca
	rst 20h
	sbc a,a
	xor h
	rrca
	ld a,(hl)
	ld h,h
	ld a,a
	add a,e
	sub e
	add a,e
	di
	add a,l
	xor (hl)
	add a,(hl)
	sbc a,e
	ld (hl),a
	nop
	add a,b
l5bb2h:
	ld a,(de)
	ld a,b
	add a,h
	inc de
	sub h
	ld b,l
	ld h,l
	add a,b
	exx
	adc a,d
	ld l,l
	dec l
	jp pe,0e051h
	adc a,07fh
	rlca
	rst 0
	ld e,c
	ld d,l
	adc a,c
	rrca
	ld e,h
	ld a,a
	ld e,l
	add hl,bc
	rrca
	di
	ld a,a
	rrca
	xor a
	halt
	ld a,a
	sub c
	inc sp
	rst 38h
	cpl
	ld c,c
	ld e,c
	dec (hl)
	call m,094c8h
	ld d,(hl)
	ld d,(hl)
	ld a,(hl)
	halt
	nop
	ld b,(hl)
	add a,b
	ld bc,09799h
	adc a,b
	add a,a
	ld d,e
	ld b,l
	add a,e
	sbc a,d
	ld b,e
	jp po,l7b21h
	ret pe
	ld a,a
	call nz,sub_7846h
	sub l
	rrca
	ld l,h
	ld a,a
	ld (hl),h
	push bc
	call pe,0c90fh
	sbc a,a
	add hl,sp
	ld sp,hl
	sbc a,l
	rrca
	ld a,h
	sub a
	ld a,a
	ld (hl),l
	adc a,a
	rst 20h
	nop
	defb 0edh ;next byte illegal after ed
	cp 017h
	rst 38h
	ld c,d
	ld d,h
	ret m
	xor h
	pop af
	jp po,0807eh
	inc (hl)
	ld b,l
	add hl,sp
	adc a,c
	ld a,(bc)
	ld a,c
	inc (hl)
	add a,b
	sub 032h
	add a,c
	ld (0b9c9h),a
	ld (bc),a
	rst 28h
	ld h,h
	in a,(03ch)
	ld e,c
	sub a
	rrca
	inc sp
	ld a,a
	ld b,01dh
	rst 0
	rrca
	cp c
	ret
	ld b,0dfh
	rrca
	ld a,a
	adc a,088h
	cp 065h
	ld d,h
	or c
	or 059h
	ld l,a
	ld (hl),l
	ld a,a
	add a,b
	ld de,l6355h
	add a,b
	inc hl
	sbc a,c
	ld a,a
	adc a,a
	sub l
	ex (sp),hl
	ld a,c
	dec hl
	sbc a,080h
	sub a
	ld h,h
	adc a,c
	sub h
	ld a,c
	ld h,a
	rrca
	ld h,e
	ld (hl),c
	call nz,0c60fh
	rst 38h
	ld l,00fh
	rst 38h
	ld a,a
	ld a,(020feh)
	ld d,d
	ld b,h
	sub h
	ld c,c
	rst 30h
	xor 00bh
	call m,08781h
	ld d,(hl)
	ld (hl),l
	add hl,sp
	ld a,c
	add a,d
	add a,h
	add a,b
	rst 28h
	ld a,a
	ld e,h
	ld (hl),b
	xor d
	sub a
	sub a
	call c,08fffh
	add a,b
	inc hl
	sbc a,h
	ret z
	rrca
	call po,sub_6fc7h
	inc sp
	ld a,a
	push hl
	ld b,h
	cp 025h
	add hl,hl
	ld c,c
	ld h,(hl)
	jp (hl)
	inc de
	inc hl
	add a,c
	ld b,h
	ei
	add a,a
	and c
	push af
	dec h
	ld a,a
	add hl,bc
	add a,(hl)
	ld d,e
	sub (hl)
	sub (hl)
	ld d,a
	ld b,h
	add a,h
	cp c
	dec l
	call z,046fch
	ld b,h
	ld b,(hl)
	ld a,c
	and d
	and a
	rrca
	defb 0ddh,06fh ;ld ixl,a
	adc a,d
	sub e
	ld h,l
	rst 38h
	sbc a,a
	inc h
	scf
	ld d,d
	add hl,bc
	ld d,h
	sbc a,b
	ld (hl),h
	ld h,h
	add a,d
	cp h
	ld a,a
	xor h
	dec b
	ld a,a
	sbc a,l
	add a,b
	ld a,d
	ld d,d
	add hl,hl
	inc l
	sub a
	and d
l5ccfh:
	call m,0380fh
	rst 38h
	ret m
	defb 0edh ;next byte illegal after ed
	rst 38h
	jp pe,09244h
	cp 067h
	set 5,b
	ld a,a
	call nc,05976h
	ld c,l
	ld l,c
	add a,b
	ld a,a
	inc hl
	ld (hl),l
	rst 38h
	jp nz,03f80h
	ld l,0ffh
	ld a,04eh
	rrca
	cp d
	sbc a,e
	ret m
	ld a,a
	nop
	add hl,hl
	sub h
	sub h
	ld h,h
	ld a,b
	dec h
	ld a,d
	add a,h
	ld a,a
	sub h
	ld d,e
	sbc a,c
	add a,b
	add a,l
	ld a,b
	ld (0ee99h),hl
	exx
	or c
	jp p,l52fch
	nop
	ret po
	rst 8
	rrca
	defb 0ddh,0ffh,01fh ;illegal sequence
	ld d,h
	inc bc
	ld de,0237bh
	ld a,a
	and e
	ld d,e
	ld a,a
	ld h,062h
	call m,0ee2fh
	xor 081h
	or h
	ld l,b
	halt
	ld e,d
	ld h,l
	sub a
	rlca
	ld d,(hl)
	ld (l5227h),hl
	ld a,a
	dec h
	sbc a,l
	call c,032dfh
	call 0dd53h
	ret p
	ccf
	rrca
	ld l,h
	rst 38h
	ld a,l
	ld e,a
	ld a,a
	add hl,de
	ld h,h
	sub h
	cp 090h
	sub l
	ld h,a
	ld h,l
	add hl,sp
	ld e,c
	ld b,h
	nop
	push bc
	jp p,l454ah
	ld a,a
	ld (hl),07fh
	ld a,(hl)
	ld c,084h
	ld (03423h),a
	ld e,(hl)
	ld l,a
	rst 28h
	sbc a,b
	ld h,b
	call nc,0ef67h
	rrca
	adc a,a
	inc sp
	rrca
	jp z,0baa5h
	ex (sp),hl
	rrca
	ld a,a
	rst 20h
	sub e
	ei
	ld a,a
	call po,07437h
	sub l
	ei
	rlca
	halt
	ld d,h
	sub h
	rst 38h
	ld (hl),c
	nop
	adc a,a
	ld c,c
	add a,h
	ld (bc),a
	sub e
	ld d,a
	ld h,(hl)
	ld d,(hl)
	ld a,a
	jr l5daah
	ld h,l
	ld h,l
	add a,c
sub_5d88h:
	dec h
	ld d,(hl)
	sub a
	ex af,af'
	defb 0ddh,0d9h,06eh ;illegal sequence
	exx
	exx
	sub 0deh
	dec de
	defb 0ddh,06fh ;ld ixl,a
	rrca
	and c
	call z,0a99ah
	call c,0e40fh
	exx
	cp l
	rst 38h
	ld (hl),e
	sbc a,h
	rrca
	ld a,a
	di
	rla
	ld (00b11h),a
l5daah:
	ld a,a
	add a,065h
	ld d,e
	sub e
	ld (hl),e
	or 065h
	rst 38h
	add a,c
	ret
	nop
	pop bc
	ld h,h
	sub a
	defb 0fdh,044h ;ld b,iyh
	add a,b
	sub (hl)
	ld a,a
	add a,c
	dec l
	ld a,a
	add a,d
	ld sp,hl
	sbc a,011h
	sbc a,l
	call sub_467fh
	push hl
	bit 6,b
	call 00f07h
	sbc a,(hl)
	adc a,a
	ld h,a
	rrca
	xor e
	rst 38h
	sub a
	exx
	add a,h
	rst 8
	rrca
	ld de,093e7h
	rst 38h
	jp p,0ff47h
	call z,08a77h
	xor 019h
	sbc a,l
	ld (hl),c
	ld d,(hl)
	adc a,(iy-078h)
	ld a,a
	ld b,e
	ld h,(hl)
	ld d,h
	sub l
	ld a,c
	add a,h
	adc a,07fh
	ld b,b
	ld b,a
	ld (hl),l
	sbc a,b
	sbc a,l
	ret
	call c,0dd16h
	call z,sub_66cdh
	and 027h
	jp pe,0d986h
	ld a,c
	rrca
	and e
	call c,09effh
	rrca
	push hl
	sbc a,(hl)
	inc hl
	rst 38h
	add a,e
	call c,00fcdh
	inc hl
	ld h,e
	ld (de),a
l5e18h:
	scf
	ld a,b
	inc hl
	rst 38h
	call po,sub_7957h
	rst 38h
	call nz,0a585h
	ld sp,hl
	sub c
	ld h,(iy-001h)
	ret z
	halt
	sub l
	rst 38h
	ld a,b
	ld b,d
	add a,b
	ld (l7f9dh),hl
	ld h,(hl)
	ld a,a
	ld de,l6436h
	rst 20h
	ld c,l
	sub 06ah
	adc a,l
	exx
	ld a,(hl)
	adc a,h
	ret po
	adc a,h
	rst 30h
	adc a,l
	cp 0feh
	adc a,a
	cp b
	rrca
	sbc a,h
	jr l5e18h
	ld c,d
	adc a,c
	defb 0ddh,0dch,0d9h ;illegal sequence
	add hl,bc
	sub a
	ld h,e
	ld e,d
	add a,l
	ld b,a
	rst 38h
	rlc b
	di
	ld e,029h
	sub e
	rst 38h
	sub c
	cp 079h
	adc a,c
	dec c
	jp 0f622h
	ld l,c
	ld a,a
	ld (hl),a
	add a,c
	sbc a,h
	adc a,h
	ld (l4425h),a
	ld a,a
	ld a,(de)
	defb 0ddh,0c9h,0c9h ;illegal sequence
	pop hl
	sub l
	add a,b
	sbc a,h
	ld l,a
	push bc
	rst 20h
	ld a,a
	rst 28h
	cp 02ch
	ld d,a
	adc a,b
	ld (de),a
	rrca
	ld (hl),e
	rst 38h
	inc hl
	inc (hl)
	ld h,a
	ld a,a
	pop hl
	rlca
	ld (0211fh),a
	cpl
	ld (de),a
	ld a,h
	add a,033h
	jp z,l7f00h
	cp 051h
	ld a,b
	adc a,c
	ex (sp),hl
	inc sp
	nop
	xor c
	ld a,e
	ld h,(hl)
	ld a,a
	pop de
	inc h
	ld b,e
	sbc a,026h
	ld h,(hl)
	ld d,l
	ld a,l
	ld bc,0806fh
	inc a
	ld d,c
	rrca
	cp 0bdh
	ld a,a
	ld (hl),c
	rrca
	sbc a,a
sub_5eb5h:
	daa
	ld c,e
	ld l,h
	defb 0ddh,00fh,049h ;illegal sequence
	halt
	ld a,084h
	ld a,a
	inc sp
	rst 38h
	rra
	sub b
	ld h,l
	ld (hl),h
	ld d,l
	rst 38h
	add hl,hl
	sbc a,c
	cp 067h
	cp 018h
	ld b,(hl)
	ld e,d
	ld d,l
	adc a,d
	ld h,c
	inc bc
	ld b,h
	ld b,d
	sub 0bbh
	ld a,a
	pop bc
	inc hl
	add hl,sp
	ld e,a
	dec de
	defb 0ddh,09ch ;sbc a,ixh
	ld a,a
	rst 28h
	ex de,hl
	inc bc
	ld l,(hl)
	ld l,a
	ld (hl),a
	jp c,l5af1h
	sub b
	ld (hl),l
	ld a,a
	cp 01dh
	ld c,d
	add a,b
	ret po
	ld a,a
	ld e,b
	rst 38h
	add a,l
	jp z,084cah
	jp nc,l7effh
	rla
	scf
	ld a,a
	add a,043h
	inc l
	add hl,hl
	ld e,b
	di
	sub 07fh
	add a,l
	add a,a
	adc a,b
	ld (09578h),a
	add a,(hl)
l5f0dh:
	adc a,h
	add a,b
	xor c
	sub d
	add hl,sp
l5f12h:
	ld a,a
	adc a,h
	inc h
	ld a,a
	ld d,b
	ld (09cd5h),hl
	cp b
	ld (bc),a
	ld e,e
	adc a,h
	jp p,06baah
	nop
	rrca
	cp 039h
	sbc a,(hl)
	add a,b
	xor (hl)
	rrca
	ld b,(hl)
	ld c,(hl)
l5f2bh:
	rst 38h
	rst 38h
	rlca
	ld b,b
	ret
	halt
	ld b,l
	adc a,b
	ld d,h
	ld d,a
	ld h,h
	sub (hl)
	ld a,a
	rst 28h
	ld l,a
	rst 38h
	jr c,l5f12h
	ei
	rrca
	ld e,c
	bit 3,(hl)
	ld a,h
	ld a,a
	ld (bc),a
	ld d,d
	ld d,e
	ld d,d
	add a,b
	ld b,h
	sub l
	cp 0a9h
	sub h
	ld h,l
	add a,(hl)
	ld b,b
	dec h
	ld d,d
	ld e,b
	or c
	add a,d
	ld h,l
	sub b
	inc de
	ld d,e
	ld hl,(l7f35h)
	add hl,hl
	ld a,a
	adc a,(hl)
	exx
	ld h,d
	and a
	jp pe,0d95ch
	ld a,a
	and e
	ret
	sub c
	sbc a,a
	ld a,a
	djnz l5f0dh
	xor 0eeh
	ld sp,hl
	call po,0977fh
	ld h,h
	ld a,(bc)
	ld d,l
	ld b,l
	ld a,c
	sub h
	ld (hl),h
	rst 28h
	or a
	rst 38h
	call c,0c9b5h
	ld (de),a
	adc a,c
	rst 38h
	jp p,09501h
	ld h,e
	ld h,l
	adc a,b
	halt
	ld c,c
	ld a,a
	adc a,c
	ld (hl),h
	call p,sub_6440h
	ld b,(hl)
	ld h,h
	sub l
	ld c,b
	adc a,b
	nop
	ld (hl),a
	dec b
	add hl,sp
	ld a,b
sub_5f9ch:
	ld (hl),a
	add a,l
	ld a,a
	sbc a,03ch
	or d
	xor d
	ld (hl),b
	add a,b
	ld d,a
	ld a,a
	adc a,h
	ld c,0cfh
	rrca
	ld a,a
l5fach:
	jr nz,l5fach
	cp e
	cp e
	cp a
	call po,0997fh
	halt
	ex af,af'
	ld b,h
	ld h,a
	ld e,c
	ld d,h
	rst 38h
	or 0c0h
	ld a,a
	sub a
	sbc a,c
l5fc0h:
	ld d,l
	ld l,c
	ret m
	ld a,a
	ret nz
	ld b,(hl)
	ld (hl),h
	halt
	add a,a
	ld h,(hl)
	ld e,c
	exx
	ld a,a
	rst 38h
	nop
	ld h,a
	ld (hl),h
	ld (hl),a
	halt
	sub l
	add a,a
	or d
	adc a,c
	add a,c
	ld b,d
	sub l
	ld b,d
	ld a,a
	inc (hl)
	dec h
	ld l,b
	sub (hl)
	defb 0ddh,07fh,06eh ;illegal sequence
	inc c
	sbc a,d
	rst 28h
	sbc a,c
	xor c
	add a,c
	ld b,a
	sbc a,l
	ld l,a
	ld h,c
	sbc a,d
	call z,0a9aah
	ld l,a
	rst 8
	rrca
	nop
	sbc a,a
	ex de,hl
	cp c
	sbc a,e
	cp (hl)
	ld (hl),d
	ld sp,hl
	ld a,a
	sub a
	add a,d
	ld c,d
sub_6000h:
	adc a,b
	ld d,l
	ld sp,0ef22h
	cp b
	pop af
	ld a,a
	rlca
	add hl,sp
	sub a
	sbc a,b
	ld d,h
	ld h,(hl)
	ld a,a
	add a,047h
	inc a
	add a,(hl)
	add a,a
	ld a,a
	rrca
	ld a,b
	add a,(hl)
	add a,c
	inc a
	ld a,a
	ld e,c
	ld (l7f00h),hl
	sbc a,h
	ld l,a
	rst 30h
	ld l,06fh
	ld a,(de)
	sbc a,d
	sbc a,d
	rrca
	ret
	ld l,c
	sbc a,d
	ld a,a
	xor c
	xor c
	rrca
	dec de
	sbc a,a
	sbc a,a
	ld a,a
	inc bc
	ld l,c
	ld a,a
	ld sp,hl
	ld sp,hl
	adc a,d
	call z,098a3h
	rst 38h
	ret po
	jr nc,l6079h
	ld h,a
	jp (hl)
	ld a,(hl)
	ld b,(hl)
	ld a,a
	ex (sp),hl
	xor c
	ld a,a
	pop de
	xor c
	ld a,a
	or 05ah
	rst 38h
	ld c,a
	rst 38h
	and h
	rrca
	ld (hl),066h
	ld (hl),h
	jp (hl)
	dec h
	ld a,c
	rst 38h
	push af
	ccf
	ret c
	dec sp
	ld a,l
	ld c,e
	defb 0ddh,0ffh,082h ;illegal sequence
	xor d
	rst 38h
	ld e,(hl)
	sbc a,(hl)
	rla
	dec bc
	sub a
	ld h,e
	rst 38h
	ld (hl),h
	inc (hl)
	sub (hl)
	ld h,a
	sub h
	sbc a,b
	add a,b
	ld b,(hl)
	adc a,b
	ld d,e
	adc a,c
	rst 38h
	jp (hl)
	ld d,e
l6079h:
	rst 28h
	ld a,(0d92bh)
	ret
	ret po
	ret
	adc a,a
	dec e
	ld d,d
	rst 38h
	push hl
	ex af,af'
	rst 38h
	add hl,sp
	ld d,c
	and c
	ld a,a
	rst 8
	nop
	inc de
	ld d,d
	ld b,e
	ld a,a
	call z,06776h
	and a
	ld e,l
	add a,b
	ld (bc),a
	ld c,b
	ld d,l
	ld e,b
	adc a,c
	rst 38h
	sbc a,0e5h
	ld e,c
	rst 38h
	cp h
	ld (hl),0eeh
	sub 05bh
	pop af
	ld a,a
	rst 38h
	ld l,a
	ld l,h
	defb 0fdh,0ech,001h ;illegal sequence
	ld e,c
	inc a
	halt
	ld d,e
	ld a,a
	pop bc
	ld h,(hl)
	ld (hl),h
	ld c,c
	ld b,h
	ld (hl),a
	ex de,hl
	ret z
	ld b,h
	ld sp,08945h
	rst 38h
	ex de,hl
	ld h,e
	add hl,hl
	rst 38h
	call nz,0b47ch
	and 0ceh
	sbc a,0f9h
	add a,b
l60cch:
	dec de
	ret z
	rrca
	rst 38h
	adc a,(hl)
	ld e,c
	rrca
	rst 38h
	adc a,(hl)
	adc a,d
	ret z
	rst 38h
	ld h,a
	ld a,a
	exx
	ld d,h
	jp c,l4912h
	rst 38h
	add hl,hl
	add a,b
	add a,(hl)
	ld h,a
	ld h,h
	ld e,b
	rst 38h
	cp (hl)
	ld a,e
	ld l,h
	rst 28h
	ld d,d
	rst 28h
	ld d,e
	ld (hl),b
	and c
	sbc a,h
	ld b,l
	ld l,h
	rst 38h
	xor (hl)
	cp c
	rrca
	rst 38h
	xor (hl)
	inc sp
	adc a,a
	ld e,h
	rrca
	add hl,bc
	and l
	ld c,c
	rst 38h
	sub 0fah
	xor c
	rla
	ld h,a
	add a,c
	ld a,b
	ld a,a
	add hl,sp
	ld (hl),h
	ld e,b
	rst 38h
	di
	rst 18h
	ld b,h
	sbc a,08fh
	ret
	ld a,a
	dec l
	rrca
	rst 20h
	rst 38h
	dec l
	rrca
	ld l,a
	call 086feh
	rrca
	ld a,a
	call nc,0962ah
	rst 38h
	ld (hl),h
	ld (bc),a
	inc sp
	ret m
	ld d,(hl)
	adc a,c
	ld d,h
	ld c,c
	add a,e
	xor b
	rst 38h
	ret m
	defb 0fdh,0ffh,0efh ;illegal sequence
	ld d,c
	ld d,l
	ld d,e
	ld a,a
	exx
	exx
	call m,sub_465ch
l613ch:
	ex af,af'
	add a,045h
	rrca
	ei
	rst 38h
	adc a,a
	rrca
	ld l,0d9h
	cp 0efh
	rrca
	dec h
	cp 084h
	sub h
	ld a,073h
	pop af
	ld a,a
	ex af,af'
	sub e
	ld (de),a
	jr c,l61ach
	ei
	sub e
	sbc a,c
	add a,c
	daa
	ld (hl),l
	rst 38h
	jp po,095bbh
	inc b
	ld (bc),a
	sub h
	ld b,l
	ld h,(hl)
	ld h,a
	add a,b
	ld b,e
	halt
	ld d,l
	nop
	ld (de),a
	ld b,d
	cp 020h
	ld (l667fh),hl
	ld l,c
	sub l
	sub e
	nop
	ld b,l
	ld h,l
	ld b,e
	ld (l6436h),hl
	adc a,b
	adc a,h
	sbc a,c
l617fh:
	ret p
	call 03f01h
	ret
	ret pe
	add a,c
	sbc a,c
	call nz,00f58h
	cp (hl)
	ld a,a
	dec e
	rrca
	inc hl
	call 098feh
	adc a,a
	jp z,0fc0fh
	or (hl)
	ret nc
	add a,a
	ld h,a
	rst 28h
	cpl
	ld a,a
	adc a,c
	dec (hl)
	ld c,c
	inc d
	ld (bc),a
	sub l
	ld c,c
	ld c,c
	sbc a,b
	ld d,l
	cp 03eh
	inc de
	ld (hl),a
	ld d,h
l61ach:
	add hl,hl
	inc d
	ld e,c
	add a,b
	ld c,d
	add a,b
	jr l613ch
	ld h,(hl)
	nop
	ld h,h
	inc l
	sub a
	ld h,(hl)
	adc a,(hl)
	jp l7fa8h
	and d
	ld b,a
	ld (hl),l
	add a,b
	ret
	ret p
	ld h,e
	rst 38h
	add a,0ddh
	inc b
	ld c,09ch
	ld d,l
	adc a,c
	rrca
	cp b
	ld a,a
	ret p
	rrca
	sub (hl)
	add a,b
	inc sp
	ld d,00fh
	ld e,b
	sbc a,c
	ld h,l
	ld h,(hl)
	or b
	ld b,b
	rst 38h
	ld d,(hl)
	ld de,l597bh
	inc bc
	add a,07fh
	inc (hl)
	ld l,c
	ld d,011h
	add a,l
	sub l
	sub (hl)
	sbc a,a
	nop
	ld bc,09365h
	di
	djnz $-119
	ld h,l
	ld c,c
	sub e
	rst 0
	ld a,h
	ld a,b
	ld a,a
	ld b,h
	halt
	adc a,l
	halt
	add hl,sp
	ld d,(hl)
	sbc a,c
	ld a,a
	ld h,l
	ld h,a
	jr c,l6272h
	ld a,a
	push bc
	call p,0c52bh
	ld sp,00f78h
	ret
	cp 0dch
	rrca
	push hl
	ld a,a
	inc l
	sbc a,a
	cp 09ch
	and a
	jp po,0e50fh
	pop de
	adc a,b
	dec b
	ld b,(hl)
	rst 38h
	ret pe
l6223h:
	or 011h
	call nc,091fah
	defb 0fdh,033h,08fh ;illegal sequence
	add hl,de
sub_622ch:
	sub a
	ld hl,(09f59h)
	call m,sub_7488h
	sub l
	xor h
	call p,0e8c9h
	sub h
	add a,b
	rla
	nop
	dec hl
	ld c,c
	defb 0fdh,042h,057h ;illegal sequence
	ld h,(hl)
	ld a,a
	jr l629eh
	dec h
	ld h,l
	ld a,a
	ld d,(hl)
	sbc a,h
	sbc a,l
	adc a,e
	ret po
	ld e,d
	ld l,h
	ld a,a
	ld b,047h
	rst 0
	rst 20h
	dec de
	rrca
	halt
	sbc a,(hl)
	rrca
	ld (hl),081h
	adc a,007h
	ld l,l
	rrca
	push hl
	cp c
	ld l,h
	ld a,a
	rst 38h
	ld h,c
l6265h:
	ld d,l
	ld d,a
	call m,09695h
	ld sp,0a6ech
	add a,c
	call m,sub_6420h
	sub h
l6272h:
	sbc a,c
	ld b,h
	sub l
	ld c,067h
	ld h,l
	ld e,c
	ld b,h
	nop
	ld e,c
	ld b,e
	ld (de),a
	cp 011h
	ld h,l
	ld (hl),07fh
	dec bc
	ld (08427h),hl
	cp 011h
	inc (hl)
	ret po
	push bc
	rst 38h
	ld (hl),h
	sbc a,h
	ld c,e
	call nz,03bbfh
	rrca
	cp 0bbh
	rrca
	rst 20h
	rst 38h
	add hl,de
	rrca
	push de
	push hl
	cp c
l629eh:
	ld b,a
	rst 38h
	ld c,a
	inc (hl)
	sub c
	xor c
	ex de,hl
	xor a
	ld a,a
	adc a,b
	ld d,e
	sub h
	inc de
	sub h
	ld h,062h
	defb 0fdh,037h,049h ;illegal sequence
	sub c
	ret
	ld l,b
	ld a,a
	inc h
	sbc a,c
	ld a,a
	ld d,(hl)
	add a,b
	ld c,h
	ld h,d
	cp 0bch
	ld h,b
	ld sp,0c85eh
	exx
	rla
	rrca
	pop hl
	rst 0
	rst 38h
	inc l
	ld e,c
	jp nz,08344h
	rst 38h
	ld (hl),d
	ld h,a
	sub (hl)
	cp 018h
l62d3h:
	adc a,c
	ld a,a
	sub a
	or a
	call m,sub_7f8ah
	ret pe
	rst 30h
	dec h
	add a,h
	rlca
	ld c,c
	inc hl
	ld b,l
	ld h,a
	adc a,b
	defb 0fdh,052h,0f2h ;illegal sequence
sub_62e7h:
	ld b,025h
	add a,a
	ld d,(hl)
	add a,a
	cp h
	ld d,e
	cp 0a3h
	ld a,b
	ld (l7f35h),hl
	inc d
	sub (hl)
	jp c,000d4h
	add a,046h
	ld b,h
sub_62fch:
	cp (hl)
	defb 0fdh,00fh,0f1h ;illegal sequence
	cp a
	sub (hl)
	push hl
	exx
	sbc a,b
	ld d,e
	rst 38h
	inc e
	sub c
	scf
	sub a
	or 0cch
	sbc a,c
	adc a,d
	ld b,h
	add a,b
	ret m
	ld c,d
	sub d
	dec h
	sub l
	xor b
	push hl
	jp l7f9dh
	pop de
	ld e,c
	cp 058h
	ld d,(hl)
	and c
	sub l
	ld (0e929h),hl
	sbc a,b
	ld h,e
	ld h,a
	rrca
	pop af
	dec l
	push hl
	ret nz
	sbc a,b
	ld c,c
	xor (hl)
	rst 38h
	ld a,e
	jr nz,l62d3h
	rrca
	sub (hl)
	ld a,a
	ex af,af'
	scf
	ld d,d
	ld d,h
	ld e,098h
	ld (hl),h
	ld h,h
	ld a,a
	xor h
	ld h,l
	defb 0fdh,064h ;ld iyh,iyh
	ld b,l
	ld h,d
	call c,0bf20h
	in a,(0cdh)
	dec d
	add hl,sp
	rst 8
	sub e
	cp (hl)
	ld e,(hl)
	rst 8
	sbc a,046h
	push bc
l6355h:
	jp (ix)
	ld h,0cah
	ld a,(046adh)
	xor (hl)
	ld l,a
	call nc,sub_7986h
	add a,d
	and 00fh
	ld l,h
	ld a,a
l6366h:
	sub d
	or c
	or b
	rra
	daa
	nop
	inc bc
	dec (hl)
	ld h,l
	dec h
	defb 0fdh,0c1h,024h ;illegal sequence
	ld d,h
	add hl,sp
	ld a,a
	call po,06486h
	ld d,e
	ld a,a
	rla
	ld b,h
	call po,0e1fdh
	ld a,a
	sub e
	ld (hl),l
	ld d,a
	ld a,a
	rst 8
	ld h,a
	ld a,e
	ld a,a
	ex af,af'
	add a,l
	rst 18h
	ret p
	and (hl)
	rst 8
	inc sp
	ld (hl),d
	sbc a,e
	ld c,000h
	dec de
	adc a,c
	ex (sp),hl
	ld c,e
	ret pe
	dec a
	ld l,b
	dec hl
	adc a,c
	rst 38h
	adc a,a
	nop
	ld (de),a
	halt
	ld b,h
	rst 38h
	sbc a,(hl)
	add hl,hl
	rst 20h
	ld bc,04452h
	sub h
	ld c,c
	ld d,h
	ld c,(iy+030h)
	ld a,a
	ld (hl),l
	add hl,sp
	ld a,c
	cp l
	defb 0fdh,0a9h,07fh ;illegal sequence
	cp 089h
	cp a
	ld c,h
	ld bc,0ff8dh
	adc a,d
	xor 0cfh
	ld (hl),0f5h
	ld (l4666h),hl
	ld l,c
	ld b,(hl)
	ld c,c
	rst 28h
	sbc a,e
	ld d,h
	ld b,(hl)
	rst 30h
	jp nc,08ec9h
	ld e,l
	ld a,c
	ld l,b
	cp b
	rrca
	add a,e
	and (hl)
	rst 38h
	daa
	sbc a,a
	cp d
	sub (hl)
	sub d
l63dfh:
	ld d,h
	add a,b
	ret p
	add a,0e8h
	ld c,c
	call m,02aeeh
	ld a,b
	ld (hl),d
	adc a,b
	nop
l63ech:
	ld (hl),a
	jr l6444h
	ld h,e
	sub a
	cp a
	ld c,d
	cp 05dh
	defb 0fdh,07fh,0b4h ;illegal sequence
	cp a
	adc a,e
	inc sp
	ld bc,l60cch
	add hl,de
l63ffh:
	ld hl,01229h
	jp po,0f44fh
	dec h
	ld (hl),a
	rst 18h
	di
	ld l,a
l640ah:
	sbc a,07eh
	dec (hl)
	sbc a,h
	adc a,a
	ld l,e
	cp 01eh
	exx
	ld l,b
	ld a,h
	ld a,a
	ex (sp),hl
	ccf
	add hl,sp
	ld a,a
	or e
	adc a,a
	add a,h
	ld a,a
	pop hl
	ld c,b
sub_6420h:
	ld (hl),l
	add a,b
	dec h
	ld a,l
	ld d,h
	sbc a,l
	inc iy
	ld a,b
	ld a,(hl)
	and c
	ld h,(hl)
	ld b,l
	add hl,sp
	ld a,(bc)
	jr c,l64aah
	ld a,a
	ld b,a
	ld (l63ffh),a
l6436h:
	adc a,a
	inc sp
	scf
	rst 8
	dec sp
	ld b,a
	sbc a,c
	ld b,e
	rst 38h
	halt
sub_6440h:
	ld a,a
	ld e,h
	or 0d1h
l6444h:
	exx
	sbc a,h
	adc a,a
	cp h
	daa
	ld e,c
	ld h,c
	defb 0ddh,068h ;ld ixl,b
	sbc a,e
	ld e,c
	rst 38h
	dec de
	and l
	sub b
	jr z,l63ech
	ld (hl),a
	nop
l6457h:
	rst 38h
	ld sp,hl
	ld a,(0b5f5h)
	push hl
	add hl,sp
	sub h
	ld d,(hl)
	rst 38h
	add hl,sp
	ld a,(hl)
	ld d,h
	ld d,l
	ccf
	add a,a
	dec h
	ld d,e
	cp 048h
	ld (0ff43h),hl
	defb 0edh ;next byte illegal after ed
	jr c,l64a9h
	ld c,(hl)
	rst 38h
	ld a,(0d336h)
	pop af
	ld a,a
	ld a,d
	adc a,c
	call po,sub_7923h
	cp 093h
	sbc a,l
	call sub_497fh
l6483h:
	ret c
	ld d,h
	call p,0cd0ch
	exx
	ld c,d
	adc a,(hl)
	rst 38h
	ld h,e
	xor a
	inc e
	ld b,(hl)
	cpl
	ld d,(hl)
	cp a
	ld b,(hl)
	ld de,09676h
	jp c,0ffe4h
	call m,08889h
	add a,b
	inc (hl)
	add a,b
	call p,0f4ffh
	add a,b
	ret c
	nop
	ld a,(hl)
	ld b,h
	sbc a,c
l64a9h:
	ld c,l
l64aah:
	ld a,b
	inc de
	sub h
	call m,032c5h
	sub l
	ld h,h
	rst 38h
	ld (hl),c
	cp a
	ret
	jr c,l6519h
	ld c,a
	ld h,a
	ld (hl),e
	rst 38h
	ld l,066h
	sbc a,b
	ld e,c
	ld c,l
	ld d,b
	ld l,h
	ld a,a
	ret
	call c,0e4dch
	ld a,a
	ld h,a
	ld a,h
	sbc a,088h
	ld h,a
	rst 38h
	adc a,(hl)
	rst 38h
	ld b,d
	scf
	ld a,c
	xor a
	sub a
	ld a,a
	ld h,(hl)
	ld d,(hl)
	sub h
	in a,(0a2h)
	ld b,a
	rst 38h
	cp (hl)
	add hl,sp
	ld l,e
	ld c,c
	dec de
	ld l,(hl)
	rst 30h
	ld l,c
	add a,d
	add a,c
	ret pe
	halt
	jp nc,l697eh
	sbc a,b
	sub e
	ld b,h
	inc h
	cp 0a9h
	ld h,065h
	and d
	ld e,l
	ld b,l
	ld sp,hl
	jr c,l6483h
	adc a,c
	ret m
	and l
	rst 8
	adc a,c
	or 018h
	ld h,h
	rst 18h
	ret
	add a,h
	ld l,c
	call sub_471ch
	cp 012h
	rst 38h
	cp c
	defb 0ddh,068h ;ld ixl,b
	add a,a
	call 0d396h
	ld (hl),d
	ld l,b
	xor a
	scf
	rst 38h
l6519h:
	jp c,0fe8ch
	ld sp,l5944h
	ld h,d
	sub h
	add a,(hl)
	call c,0ffcbh
	or b
	sub e
	ld b,(hl)
	sub e
	ld h,l
	inc (hl)
	or c
	add a,c
	inc e
	or c
	ld h,l
	ld a,(hl)
	ld h,(hl)
	sub e
	ld c,b
	sub l
	adc a,(hl)
	ld a,d
	ld b,h
	inc sp
	call m,0839dh
	inc hl
	dec h
	inc sp
	or a
	ld l,e
	and l
	dec a
	rst 8
	adc a,c
	add a,b
	ld de,0fe45h
	ld b,l
	xor d
	add a,a
	ld (de),a
	ld d,(hl)
	inc bc
	ret po
	ld a,a
	sbc a,h
	call c,sub_7fe4h
l6555h:
	adc a,c
	ld c,h
	xor 07fh
	sub a
	or 0abh
	jr z,l6555h
	adc a,07fh
	and h
	or b
	jr $+87
	ld e,c
	adc a,b
	or l
	ld c,l
	and b
	ld sp,l493dh
	ld a,a
	jp nc,l5479h
	ld l,c
	xor e
	inc h
	ld b,h
	add a,c
	ld (hl),c
	jp m,l7ed7h
	ld d,08dh
sub_657bh:
	add a,h
	ld h,d
	add a,h
	cp 08ch
	dec h
	call 0e86eh
	or h
	ld a,c
l6586h:
	sbc a,b
	ld e,a
	add a,(hl)
	call c,05d51h
	ld e,b
	adc a,c
	ret po
	ld (hl),h
	jp z,l6457h
	ld e,00bh
	sbc a,l
	ld (hl),e
	call m,01b56h
	and c
	rst 38h
	ld h,a
	ld b,04fh
	add a,b
	ld d,098h
	add a,07fh
	ld a,(l7f79h)
	ld (09697h),hl
	or c
	ld l,(hl)
	adc a,b
	ld d,(hl)
	jp (hl)
	adc a,a
	sbc a,c
	nop
	adc a,l
	ld (hl),048h
	dec sp
	sub h
	defb 0fdh,097h,049h ;illegal sequence
	ld a,(hl)
	rla
	call m,sub_4408h
	ld d,d
	daa
	cp 09bh
	dec h
	dec bc
	rst 8
	ld c,e
	ld c,a
	push bc
sub_65c9h:
	ld l,(hl)
	cp h
	call 0cce6h
	inc d
	halt
	ld b,l
	ld (de),a
	cp 0ebh
	sub l
	ld a,a
	ld (hl),a
	ld a,(hl)
	ld sp,hl
	or e
	dec h
	inc a
	ld a,a
	pop de
	add a,e
	rst 38h
	jp po,03797h
	ld l,c
	ld b,l
	ld a,(hl)
	sub a
	ld l,l
	cp 0f8h
	and a
	rst 18h
	add a,d
	ld (hl),066h
	jp (hl)
	ld a,(09671h)
	ld a,(hl)
	cp 015h
	adc a,l
	ret nz
	ld (02262h),hl
	inc sp
	ld c,c
	xor 070h
	or a
	ld (hl),053h
	sbc a,(hl)
	cp h
	push de
	adc a,c
	ret po
	or c
	adc a,(hl)
	ld (08f54h),hl
	rst 10h
	ld de,0fb9ch
	ld sp,059fbh
	ld (hl),l
	inc hl
	ld l,h
	rlca
	ret
	ret
	cpl
	or a
	ld d,e
	ld a,a
	sub b
	inc sp
	sub l
	adc a,c
	sub 0aeh
	inc a
	ld b,e
	ld h,e
	add a,b
	exx
sub_6628h:
	inc sp
	add a,c
	dec d
	and b
	jp po,08679h
	add hl,sp
l6630h:
	ld b,l
	ld e,c
	cp 0fdh
	ld b,c
	ld h,d
l6636h:
	dec h
	call m,051ceh
	jp (hl)
	sub h
	ld e,l
	cp 072h
	ld c,c
	adc a,h
	add a,081h
	ld a,a
	ld h,l
	adc a,a
	ret m
	ld b,(hl)
	sub h
	call z,0f01ch
	ld a,a
	ret z
	ld b,(hl)
	add a,l
	xor e
	dec e
	adc a,l
	call z,sub_717fh
	cpl
	ld a,a
l6658h:
	push hl
	cp a
	cp c
	or b
	ld e,h
	ld d,b
	add a,b
	sub (hl)
	ret m
	ld a,a
	and l
	push hl
	sbc a,(hl)
	push de
sub_6666h:
	ld c,(hl)
	sub 066h
	ld e,l
	and d
	adc a,h
	call m,sub_49b5h
	rst 10h
	adc a,079h
	ld e,074h
	ld a,e
	jp pe,0a532h
	cp d
	ld a,a
	ld d,l
	inc a
	ld c,c
	ld a,c
	ld a,a
l667fh:
	ld b,d
	adc a,a
	ld sp,hl
	xor d
	xor d
	add hl,sp
	adc a,(hl)
	rst 38h
	dec e
	sbc a,b
	cpl
	inc a
	sub e
	ld a,a
	sub 035h
	jp pe,l7fcfh
	rst 0
	sbc a,l
	sub e
	ld h,(hl)
	ld a,a
	rst 8
	ld a,(hl)
	ld e,b
	ld d,l
	ei
	xor a
	ld (0297fh),hl
	ld (hl),c
	ld a,c
	rst 38h
	inc l
	and a
	sub l
	add a,084h
	sub (hl)
	rst 38h
	xor h
l66abh:
	rrca
	ld l,c
	ld (hl),c
	ld (hl),a
	ld a,a
	adc a,l
	ld c,d
	adc a,a
	ld b,09ah
	call z,0a9aah
	ld d,h
	ld c,b
	cp e
	ret
	cpl
	adc a,a
	rst 38h
	ld b,e
	jr c,$-117
	ld a,a
	sub h
	ld l,c
	cp 07ch
	jr z,$+70
	add a,b
	call 02c16h
sub_66cdh:
	sub l
	ld d,l
	and e
	jp 09904h
	inc h
	or 0c4h
	ld h,(hl)
	cp 05dh
	jp m,0b7cfh
	or 084h
	and e
	ei
	push af
	sub c
	sub a
	cp h
	ld e,034h
	ld (hl),c
	cp 06eh
	or b
	dec e
	ld a,a
	ld bc,l5844h
	sbc a,d
	ret
	sbc a,d
	xor c
	or 01bh
	ld a,a
	add a,02fh
	ld e,033h
	jr c,l66abh
	pop hl
	cp a
	jp m,09558h
	ret nz
	defb 0ddh,099h,0f8h ;illegal sequence
	ld a,a
	ld d,c
	ld d,l
	add a,b
	adc a,c
	sub (hl)
	ret m
	and 07dh
	ld a,h
	ld e,c
	adc a,(hl)
	ld (l6630h),hl
	ld d,(hl)
	ld (de),a
	ld (0f124h),hl
	ld a,l
	adc a,h
	ret nc
	rlca
	ld c,c
	ld l,c
	ld a,b
	add a,h
	ld c,c
	defb 0ddh,0dfh,0e6h ;illegal sequence
	pop hl
	add a,b
	inc h
	jp z,0aea5h
	add a,a
	sub (hl)
	ld h,a
	ld a,a
	ld (de),a
	dec c
l6731h:
	ld b,l
	ld a,l
	ret
	ld a,a
sub_6735h:
	sub c
	exx
	rst 38h
	jp po,09809h
	ld (hl),h
	add a,e
l673dh:
	rst 38h
	call po,0fe23h
	or b
sub_6742h:
	ld (hl),l
	cp c
	ld a,07fh
	dec hl
	ld l,l
	rst 20h
	or e
	sbc a,(hl)
	halt
	add a,h
	inc sp
	adc a,b
	djnz $+100
	daa
	sub d
	defb 0fdh,0feh,033h ;illegal sequence
	sub b
	call m,09863h
	ld h,d
	call m,sub_794ah
	ld d,e
	ld c,c
	cp l
	xor 091h
	or 0e1h
	ld d,c
	ld d,l
	or (hl)
	rst 30h
	ld a,a
	ld (00980h),a
	ld h,h
	sbc a,d
	xor d
	rst 38h
	inc h
	inc d
	ld b,(hl)
	jp nz,l7fd9h
	ld b,(hl)
	ld b,b
	cpl
	ld sp,01f22h
	ld hl,l782fh
	ld (de),a
	ld a,a
	ld e,d
	cp 0d6h
	rst 38h
	add hl,hl
	ld b,(hl)
	cp 0e3h
	ld (hl),l
	ld d,l
	rst 38h
	jp (hl)
	call pe,sub_7de6h
	adc a,b
	and b
	ld e,b
	ld h,084h
	adc a,h
	cp 0d6h
	jp m,0f1edh
	xor d
	ld l,c
	sbc a,h
	ld d,b
	ld b,h
	sub h
	ld d,e
	ld l,c
	and d
	rla
	sbc a,082h
	sub l
	add a,l
	ld b,a
	adc a,073h
	xor h
	ld d,d
	ld d,b
	and c
	rst 38h
	defb 0ddh,000h,012h ;illegal sequence
	halt
	ld l,c
	ld a,a
	sub a
l67b9h:
	rst 18h
	inc hl
	ld c,b
	ld d,l
	sbc a,d
	ld l,02fh
	ld h,a
	call p,0f73bh
	ld a,e
	ld a,a
	sbc a,(hl)
	cp 078h
	call po,0d9e2h
	rst 38h
	ld a,01dh
	xor e
	adc a,d
	ld h,043h
	dec hl
	nop
	sub c
	ld sp,hl
	ld d,e
	ld a,(hl)
	ld b,h
	adc a,h
	ld l,b
	inc hl
	ld b,d
	ld (hl),h
	cp 014h
	daa
	xor c
	jp (hl)
	dec (hl)
	ret nz
	adc a,b
	sub l
	sub h
	ld (hl),l
	ld l,b
	ld e,a
	add a,d
	ld d,0fbh
	ld (hl),c
	rst 20h
	ld b,c
	sbc a,c
	ld h,a
	rst 38h
	ld e,h
	sub d
	add a,074h
	sub h
	inc b
	ld (hl),a
	sbc a,l
	call z,0be85h
	ld e,h
	ld l,c
	call po,0ff74h
	ld sp,hl
	sub 089h
	ld e,a
	cp 023h
	add a,l
	ld d,l
	adc a,c
	ld a,a
	defb 0ddh,045h ;ld b,ixl
	ld d,e
	inc (hl)
	daa
	or 0c1h
	nop
	ld b,(hl)
	ld (00b64h),hl
	ld (hl),b
	add a,c
	ld d,h
	ld (l5672h),hl
	cp 023h
	inc hl
	ld l,b
	ei
	add a,0a4h
	jr c,$-105
	cp c
	cp c
	ccf
	ld e,a
	pop hl
	add a,033h
	ret
	inc l
	sub e
	sbc a,b
	sbc a,b
	sub a
	add a,(hl)
	adc a,h
	sbc a,c
	rst 38h
	inc l
	or e
	out (08bh),a
	dec d
	call c,060c8h
	sbc a,b
	sbc a,h
	cpl
	rst 0
	rst 38h
	or a
	ld a,a
	ld (de),a
	ld b,h
	ld a,b
	ld l,b
	ld d,a
	ld e,b
	rst 38h
	ret nz
	ld b,h
	dec de
	ld (hl),d
	add a,(hl)
	ld h,l
	ei
	and e
	ld d,a
	ld (08175h),hl
	xor (hl)
	add a,c
	ld b,d
	ld (hl),d
	ld h,0feh
	inc hl
	dec (hl)
	ld e,c
	rra
	pop bc
	ld e,b
	ld a,a
	pop hl
	ld l,(hl)
	sbc a,c
	ld e,a
	add a,d
	ld a,c
	adc a,a
	ld sp,hl
	ret z
	ld e,h
	call nc,0f252h
	dec (hl)
	ld e,h
	rst 38h
	add a,b
	add a,045h
	sbc a,c
	ld l,l
	ret z
	add a,l
	ld d,h
	ld a,a
	dec (hl)
	ld (hl),h
	ld e,b
	cpl
	inc sp
	ld a,a
	cp h
	rst 38h
	push hl
	ld a,a
	cp (hl)
	adc a,a
	or c
	or (hl)
	ld e,c
	cp b
	ld a,a
	xor 034h
	and e
	pop af
	ld (hl),a
	jr nc,l689bh
l689bh:
	ld l,b
	ld (08676h),hl
	cp 050h
	ei
	ld (hl),0c8h
	ld sp,hl
	inc hl
	ld b,h
	pop af
	ld a,a
	push de
	cp d
	ld e,e
	adc a,b
	ld c,07fh
	cp a
	halt
	ld e,a
	ld a,l
	or 07fh
l68b5h:
	cp (hl)
	rst 18h
	add a,01eh
	ret nc
sub_68bah:
	adc a,d
	ret
	sbc a,080h
	ld (0f1dbh),a
	add a,l
	rst 0
	sbc a,a
	inc e
	ld e,c
	cpl
	rst 28h
	sbc a,(hl)
	and a
	ld a,d
	ld a,a
	out (00fh),a
	adc a,a
	adc a,d
	scf
	or l
	rra
	rst 30h
	ld a,a
	ld b,0fah
	adc a,(hl)
	ld (0e6fbh),hl
	rst 38h
	ld sp,l7e54h
	sub h
	add a,a
	adc a,a
	add hl,hl
	rra
	ld (04849h),a
	ld d,b
	and l
	rst 38h
	add a,0bfh
	inc sp
	ld e,a
	add a,e
	pop af
	add a,e
	ld c,c
	ld h,h
	ld e,d
	rst 18h
	defb 0edh ;next byte illegal after ed
	dec bc
	add hl,bc
l68f8h:
	dec de
	call z,07f8ch
	sbc a,e
	daa
	add a,l
	jp po,09f75h
	ld (hl),e
	cpl
	ld sp,0327fh
	ld a,a
	ex de,hl
	ld de,02323h
	rst 38h
	rst 20h
	ld d,d
	inc hl
	ld a,a
l6911h:
	add a,d
	ld c,a
	rst 38h
	ld d,h
	inc b
	inc h
	ld (l7ef5h),a
	jr z,l68b5h
	ld h,h
	or d
	scf
	adc a,c
	add a,l
	ex de,hl
	ld (de),a
	ld e,c
	adc a,e
	cp b
	ld e,a
	ld (hl),e
	ld b,(hl)
	ld hl,l7addh
	rst 18h
	add a,0ffh
	ld b,b
	ld h,e
	ld de,l5423h
	ld e,h
	adc a,c
	ret c
	ld a,a
	sbc a,h
	or c
	ld a,a
	ret z
	bit 0,l
	cpl
	sbc a,a
	dec de
	ld a,a
	pop af
	ld b,(hl)
	rst 38h
	adc a,0ddh
	ld c,a
	rst 38h
	ret nz
	ld (l522dh),hl
	dec h
	or 039h
	ld a,a
	ld a,h
	ld b,e
	ld a,(hl)
	add hl,sp
	call c,sub_5983h
	adc a,c
l6959h:
	ld d,l
	jp m,0b31ah
	pop bc
	ld a,032h
	ld (hl),a
	rst 8
	ld d,b
	ld (01a19h),a
	ld hl,01229h
	ld a,a
	ld c,c
	ld a,(de)
	ld c,h
	ret z
	ld a,h
	ld a,a
	sbc a,c
	add a,07fh
	ret
	ld h,047h
	sbc a,a
	rrca
	sbc a,c
	ld a,a
	dec l
	cpl
	adc a,(hl)
	rst 38h
l697eh:
	ld (hl),d
	xor b
	xor a
	inc bc
	rrca
	ld a,a
	add a,(hl)
	rst 28h
	ld l,e
	rst 38h
	ld l,d
	inc b
	exx
	or 024h
	rra
	defb 0edh ;next byte illegal after ed
	call c,sub_5990h
	ld e,c
l6993h:
	ld d,h
	cp 0fbh
	sbc a,l
	add a,l
	ld e,a
	ld l,023h
	inc b
	ld c,a
	inc (hl)
	ld a,a
	ld b,(hl)
	ld h,h
	ld a,(088cch)
	ld a,a
	add hl,de
	ret z
	ld e,c
	ret
	cpl
	sbc a,a
	inc e
	ld a,b
	ld a,a
	or (hl)
	sub e
	cpl
	rst 38h
	ld (hl),e
	rrca
	ld (hl),a
	cpl
	ld a,a
	call c,02292h
	ld a,b
	ld b,d
	ld a,a
	ld (hl),d
	push af
	add hl,de
	dec h
	ld d,h
	and b
	ret p
	dec (hl)
	ld c,c
	ld sp,hl
	jp 0d6d8h
	rst 8
	add hl,sp
l69cch:
	and a
	ld c,h
	rst 38h
	ld (hl),h
	ld c,a
	ld (hl),a
	ld h,(hl)
l69d3h:
	inc c
	ld c,h
	push bc
	ld d,a
	ld c,h
	ld a,a
	ld (hl),h
	call z,09cfah
l69ddh:
	ld e,h
	add a,01fh
	ld l,a
	rst 0
	rst 38h
	or a
	rrca
	ld e,a
	ld a,a
	inc e
	add a,b
	ld h,a
	nop
	jr z,l6a11h
	adc a,b
	pop bc
	ld (l7656h),hl
	ld a,a
	ret p
	ld c,077h
	ld l,c
	ld l,c
	jp m,08831h
	sbc a,e
	or 0deh
	ld e,a
	ld de,0ff93h
	ex (sp),hl
	rra
	ex af,af'
	ld h,(hl)
	call z,09fc4h
	call po,0c59ch
	adc a,(hl)
	sbc a,a
	ex (sp),hl
	rst 38h
	ret po
l6a11h:
	pop hl
l6a12h:
	rrca
	sbc a,a
	ld a,a
	jp p,0824eh
	ld a,b
	nop
	rlca
	ld d,(hl)
	ld h,a
	halt
	ld c,c
	dec e
	cp a
	or 04eh
	ld (hl),a
	ld sp,hl
	defb 0edh ;next byte illegal after ed
	add a,l
	add a,a
	dec de
	rst 38h
	dec e
	ld l,d
	ld e,a
	sbc a,b
	rst 8
	ld (hl),h
	sub a
	ld (hl),a
	ld b,l
	ld h,a
	jp m,0c37eh
	ret
	rra
	ld h,e
	rst 38h
	ex de,hl
	ret
	dec bc
	rst 38h
	ret m
	dec (hl)
	add a,d
	ld h,d
	halt
	ld h,l
	ld b,e
	or 098h
	di
	jp m,0e07eh
	rst 38h
	add a,a
	ld a,(0a3beh)
	ret pe
	cpl
	rst 8
	xor a
	ld e,a
	ex af,af'
	and c
	push bc
	sub a
	add a,c
	ld l,h
	rst 38h
	and a
	rra
	ld de,0f1ffh
	ld d,a
	adc a,a
	and a
	ld a,a
	add a,077h
	ld a,075h
	ld b,e
	ld (hl),a
	xor a
	ld a,a
	inc bc
	ld c,c
	sub (hl)
	ld a,a
	cp (hl)
	ld c,a
	ld e,(hl)
	sbc a,b
	ld c,a
	cp a
	rra
	inc b
	rst 38h
	ld (hl),l
	adc a,a
	adc a,l
	pop af
	jp (hl)
	ld a,a
	jp p,000fdh
	adc a,(hl)
	nop
	jp z,09344h
	rst 28h
	or d
	dec hl
	rst 0
	ld c,a
	jr nc,l6ac0h
	ret po
	ld h,h
	ld a,a
	rst 28h
	ld (hl),c
	rst 38h
	cp l
	ret m
	nop
	xor d
	add a,l
	rst 0
	rst 28h
	sub 04fh
	ld a,a
	ret
	ld c,e
	add hl,hl
	rst 28h
	inc e
	ld a,a
	dec hl
	nop
	nop
	and (hl)
	defb 0ddh,000h,032h ;illegal sequence
	ld hl,00c10h
	sub c
	sbc a,b
	and (hl)
	cp (hl)
	sbc a,h
	add hl,hl
	ld a,a
	rst 0
	rst 28h
	dec e
	rst 38h
	pop hl
	add a,0feh
	ld e,e
	xor l
l6ac0h:
	ccf
	ld a,c
	ld a,a
	ld d,h
	ld hl,07899h
	sbc a,e
	ld a,a
	defb 0edh ;next byte illegal after ed
	ld l,(hl)
	ret z
	ld e,c
	nop
	add a,b
	inc e
	ld (hl),e
	ld a,(hl)
	rrca
	ret nz
	ld (de),a
	ld (0ae19h),hl
	sbc a,a
	ld (hl),d
	ld bc,039ffh
	and a
	rst 28h
	ld c,(hl)
	cp (hl)
	rst 8
	ld a,e
	adc a,01dh
	dec (hl)
	ld b,h
	ld (0187fh),a
	sbc a,h
	in a,(04fh)
	sbc a,e
	pop hl
	ld a,a
	inc bc
	and e
	xor b
	ld (de),a
	exx
	ld l,(hl)
	ld l,a
	ld hl,01980h
	adc a,b
	cp c
	rrca
	call c,02100h
	ld d,(hl)
	add hl,de
	rst 38h
	xor b
	inc sp
	ld bc,082ach
	rra
	ld hl,0122fh
	rst 28h
	ret c
	ld a,(hl)
	sub (hl)
	ld a,a
	rst 0
	ret pe
	ret z
	ld d,h
	cp (hl)
	cp d
	ld a,a
	dec hl
	exx
	ld (034c7h),a
	ld a,a
	inc bc
	inc bc
	ld a,b
	ld (0226fh),a
	ld (bc),a
	add a,c
	ld d,c
	nop
	sbc a,e
	rrca
	jp z,09191h
	ld e,c
	adc a,a
	rst 38h
	ld c,e
	rst 28h
	ret p
	ld l,d
	sub l
	inc b
	ld e,c
	xor b
	rst 8
	ld a,a
	call sub_5864h
	adc a,h
	add hl,hl
	ld b,a
	ld (0bfffh),hl
	ld a,a
	and h
	ld bc,0e810h
	ld a,a
	sub c
	ld hl,0914ah
	sub c
	sub c
	ld (de),a
	add hl,de
	rst 38h
l6b52h:
	call nz,0a4f5h
	rst 38h
	pop hl
	ld (hl),073h
	rst 28h
	adc a,(hl)
	ld l,l
	sbc a,b
	push bc
	and a
	defb 0fdh,0f3h,046h ;illegal sequence
	sub l
	ld h,a
	ld (hl),l
	sub c
	and h
	rst 38h
	ld a,l
	ld l,d
	nop
	rst 38h
	ld h,a
	nop
	ld c,c
	add hl,sp
	add hl,de
	jp (hl)
	xor 0a7h
	ld h,063h
	ld a,a
	add a,0afh
	inc sp
	sub a
	rst 28h
	jp nc,l53feh
	ld a,a
	di
	ld (hl),d
	adc a,h
	ld d,(hl)
	ld d,e
	out (047h),a
	rst 38h
	sub 010h
	ld c,0cdh
	defb 0ddh,0c0h,033h ;illegal sequence
	nop
	ld c,(hl)
	inc hl
	di
	call nz,07463h
	ld a,0b0h
	ld l,b
	ld b,e
	ld a,a
	halt
	ld h,(hl)
	halt
	ld l,e
	ld h,a
	rst 28h
	xor d
	add a,l
	cp 05fh
	jr c,l6bdbh
	ld d,h
	jp nz,0337eh
	inc bc
	rst 8
	di
	nop
	jp 0e27fh
	ld e,e
	ld (005f9h),a
	inc hl
	inc de
	ld bc,0c808h
	halt
	ld b,l
	adc a,b
	dec a
	ld d,h
	inc sp
	or (hl)
	ld d,c
	ld b,h
	xor 095h
	rst 38h
	exx
	ld (hl),a
	ld (hl),a
	cp 06bh
	in a,(0a8h)
l6bceh:
	adc a,c
	call m,0bc7fh
sub_6bd2h:
	ld e,d
	sub c
	ld b,b
	inc bc
	rst 38h
	sbc a,003h
	ld a,h
	ld a,a
l6bdbh:
	ld l,(hl)
	ld sp,01909h
	inc de
	nop
	ex af,af'
	ret z
	halt
	ld e,b
	rst 38h
	ld d,(hl)
	add a,h
	rst 20h
	ld b,l
	add a,(hl)
	xor h
	jp c,09e94h
	jp p,09746h
	ld h,(hl)
	ld h,(hl)
	rlca
	dec hl
	ld e,c
	cp 0f3h
	sbc a,d
	ld (l447eh),hl
	ei
	ld a,a
	daa
	rst 38h
l6c01h:
	inc hl
	rst 38h
	ret po
	add a,h
	ld a,a
	add a,l
	ld b,l
	ld h,a
	ld a,a
	ld c,b
	ld b,h
	ret m
	ld a,e
	sbc a,b
	ld e,c
	ret m
	pop af
	inc c
	add hl,sp
	ld b,h
	sbc a,b
	dec l
	cp 0f4h
l6c19h:
	jr c,l6c99h
	ei
	ld a,a
	dec hl
	rst 28h
	inc de
	nop
	rst 38h
	rst 28h
	rst 38h
	ld hl,(0e157h)
	add a,a
	sub (hl)
	rst 38h
	ld a,(de)
	sbc a,b
	sub l
	add a,e
	sbc a,l
	adc a,e
	ld d,(hl)
	ld b,l
	ei
	ld e,d
	ld a,a
	call m,0a8f9h
	sub d
	res 6,c
	ld a,(hl)
	ld d,l
	ld a,a
	rst 30h
	rst 10h
	rst 38h
	cp l
	rst 38h
	jr nz,l6c8ah
	ld a,c
	sub h
	daa
	ld l,c
	ld a,c
	rst 38h
	scf
	ld c,004h
	ld h,h
	ld (de),a
	ld e,b
	adc a,b
	ld l,h
	ei
	cp 05eh
	ld a,a
	or l
	ld d,e
	ld a,(hl)
	ld d,(hl)
	ld a,a
	rst 30h
	rst 18h
	rst 38h
	or h
	ld sp,hl
	call po,sub_5978h
	dec d
	ld d,h
	sub h
	ld h,a
	rst 38h
	ld d,d
	ld (hl),c
	rst 38h
	ld c,e
	di
	ld (de),a
	sub d
	jr l6c01h
	ret m
	ex af,af'
	ld d,l
	adc a,b
	rst 38h
	ld h,(hl)
	sbc a,c
	ld b,a
	ld c,c
	cp 0e4h
	sbc a,b
	ld h,034h
	ld a,(hl)
	ld h,l
	xor a
	rst 38h
	ld (hl),a
	nop
	nop
	or (hl)
	rst 38h
	ld a,d
l6c8ah:
	ld l,b
	ld a,a
	sub a
	ld (hl),a
	ld a,b
	jr l6c19h
	ld d,l
	sub h
	ld b,096h
	sbc a,h
	ld a,a
	ld e,b
	dec (hl)
l6c99h:
	ld (hl),e
	ld a,a
	rst 38h
	dec h
	ld a,l
	nop
	ld sp,hl
	nop
	ld d,h
	ld b,e
	ld (02225h),hl
	sbc a,b
	or (hl)
	ld d,l
	ld h,l
	sub l
	rst 38h
	ld (hl),d
	sub d
	rst 18h
	ld (hl),e
	ret po
	dec c
	inc de
	ld a,a
	daa
	call 0010ch
	in a,(001h)
	inc hl
	dec c
	or b
	defb 0ddh,07fh,0c2h ;illegal sequence
	adc a,a
	ld e,d
	add a,0ebh
	sbc a,b
	ld e,c
	ld a,a
	ld a,c
	sbc a,h
	rst 28h
	ld b,a
	ld d,l
	rst 38h
	add hl,bc
	ld b,h
	rst 38h
	daa
	adc a,l
	ld h,083h
	call m,0827eh
l6cd7h:
	sub (hl)
	ld d,l
	ld d,e
	ld bc,l6223h
	ld h,055h
	ld h,(hl)
	ld d,l
	ld d,h
	ld a,a
	jp m,09769h
	ex de,hl
	ret
	rst 38h
	ld de,08667h
	adc a,d
	sub (hl)
	rst 38h
	ld (hl),b
	ld c,h
	ld (hl),h
l6cf2h:
	ld a,a
	ld c,c
	rst 38h
	call m,sub_7682h
	ld h,l
	ld a,(hl)
	ld a,(bc)
	inc (hl)
	ld b,(hl)
	ld (l7e76h),hl
	rst 38h
	and d
	inc c
	ret
	rst 38h
	ccf
	ld b,(hl)
	add a,(hl)
	cp b
	and h
	jp p,09556h
	rst 38h
	and c
	ld a,c
	ld c,(hl)
	ld h,h
	ld b,(hl)
	ld h,a
	add a,b
	ld l,d
	ld b,(hl)
	ld d,a
	adc a,b
	add a,e
	jp po,0988ch
	ld h,(hl)
	ld h,e
	ld a,a
	djnz l6d67h
	ld (hl),d
	jr z,l6da3h
	ld b,e
	inc bc
	nop
	and e
	ret p
	ld a,a
	adc hl,sp
	sub e
	inc a
	in a,(0e5h)
	dec bc
	adc a,b
	add a,(hl)
	exx
	jp p,05596h
	ld (hl),a
	cp 071h
	adc a,d
	or h
	cp 053h
	add a,b
	add a,c
	ld c,b
	ld d,l
	ld e,b
	adc a,c
	rst 30h
	rst 28h
	add a,(hl)
	ld d,(hl)
	ld l,l
	ld h,h
	ld a,(hl)
	ei
	ld bc,02562h
	add hl,sp
	sub (hl)
	rst 28h
	ld e,h
	ld a,l
	ld a,a
	ld d,c
	dec e
	ld (00033h),a
	rst 20h
	rst 38h
	dec a
	ld l,e
	add a,(hl)
	dec d
	ld a,a
	add a,h
	pop af
	cp 098h
	ld (hl),h
l6d67h:
	scf
	ld c,c
	ld b,h
	add a,d
	jr z,l6cf2h
	ld a,(hl)
	ld b,l
	ld a,a
	ld hl,04255h
	ld a,a
	xor e
	ld h,(hl)
	ret z
	xor h
	add a,e
	ld a,l
	ld l,c
	ld a,a
	ex de,hl
	ld sp,08200h
	ld e,c
	push hl
	nop
	inc hl
	ld a,a
	ex (sp),hl
	add a,(hl)
	and (hl)
	ld a,a
	ret po
	ld (hl),b
	halt
	inc sp
	ld d,h
	ld a,(de)
	ld h,l
	ld b,h
	ld c,c
	add a,c
	add a,089h
	rra
	ld a,a
	add a,h
	sub e
	ld d,a
	ld b,h
	ld d,c
	ei
	ld b,h
	cp 054h
	adc a,a
	inc (hl)
	ld h,d
l6da3h:
	ld b,l
	ld a,a
	add a,e
	nop
	exx
	ld sp,09300h
	defb 0fdh,0d7h,022h ;illegal sequence
	inc e
	ret pe
	or d
	ld (bc),a
	ld c,c
	rst 38h
	ld d,l
	ld e,c
	add a,(hl)
	ld l,b
	ld h,a
	rst 8
	ld (hl),b
	adc a,a
	add a,h
	dec (hl)
	ld b,(hl)
	ld b,l
	add hl,bc
	sub a
	adc a,a
	ld a,a
	ld a,a
	ld (hl),h
	ld a,a
	jp 09223h
	inc sp
	cp 024h
	ld a,a
	ld d,l
	call m,096c3h
	inc h
	ld e,b
	ld a,a
	rst 18h
	rst 38h
	dec e
	add hl,sp
	add a,d
	dec h
	rst 38h
	call po,08535h
	sub (hl)
	add a,(hl)
	adc a,d
	rst 38h
	inc d
	ld b,h
	ld (bc),a
	adc a,l
	ld e,a
	adc a,a
	inc b
	jr c,$+88
	adc a,c
	ld d,e
	ld a,(de)
	ld h,a
	adc a,a
	rst 38h
	add a,0dch
	ld sp,hl
	sub h
	cp 08ch
	cp 022h
	add hl,sp
	ld h,d
	push bc
	and e
	rst 38h
	ld a,a
	set 4,(hl)
	ld l,d
	adc a,l
	cp l
	ld a,a
	xor c
	rst 38h
	ret po
	sub l
	cp 035h
	sub h
	sub (hl)
	add a,(hl)
	ld d,d
	sub (hl)
	rst 38h
	sub l
	adc a,l
	ld e,d
	ld (hl),a
	ld a,a
	sbc a,b
	ld e,b
	ld (0379ch),a
	ld a,a
	ld (hl),l
	adc a,a
	ld a,h
	ld sp,hl
	ret m
	inc l
	ld b,h
	jp m,0fe23h
	add a,l
	adc a,b
	ld e,l
	ld a,a
	ret pe
	sbc a,c
	rst 30h
	ld a,a
	ret m
	ld a,0b2h
	cp 09ch
	call pe,0ffc4h
	ld c,(hl)
	ld b,h
	rst 38h
	add a,c
	ld d,e
	ld hl,03412h
	inc sp
	sub l
	or 0a2h
	add a,e
	ld a,e
	daa
	ld c,c
	sub e
	ld b,l
	inc hl
	ld a,a
	jp po,0fe4ah
	pop bc
	ld a,a
	add hl,sp
	ld l,c
	dec h
	adc a,b
	ld a,a
	dec h
	sub e
	rst 38h
	pop de
	add hl,sp
	ld a,a
	xor 033h
	or 000h
	adc a,h
	defb 0fdh,0b3h,0e5h ;illegal sequence
	xor 0f6h
	nop
	dec l
	sub l
	ld c,b
	rst 38h
	ld (de),a
	ld c,c
	ld (de),a
	ld a,c
	ld (hl),h
	inc bc
	inc sp
	ld (0211fh),a
	cpl
	ld (de),a
	ld a,a
	pop af
	push de
	inc h
	defb 0fdh,0bbh,082h ;illegal sequence
	ld h,096h
	add hl,bc
	ld a,b
	ld a,a
	ld l,a
	ld d,l
l6e84h:
	push hl
	push af
	ld a,a
	call pe,0a410h
	rst 38h
	xor a
	call m,0ff3ah
	and 0e5h
	pop de
	adc a,b
	ld b,a
	bit 3,b
	ld a,a
	add hl,bc
	ld b,e
	ld hl,02333h
	ld a,b
sub_6e9dh:
	ld d,c
	ld (bc),a
	sbc a,d
	sbc a,a
	ld a,a
	adc a,l
	rst 28h
	sub h
	or a
	sbc a,b
	ld a,a
	ld (l7fc4h),a
	sub a
	rst 38h
	and a
	rst 18h
	or e
	sbc a,b
	ld l,h
	ld c,e
	rst 38h
	or b
	djnz l6e84h
	defb 0ddh,057h,0c0h ;illegal sequence
	call m,0ff9dh
	ld (hl),c
	push hl
	ld l,(hl)
	add hl,de
	ld a,0ffh
	ld e,b
	ld (hl),a
	call l7f77h
	sbc a,h
	rst 38h
	ld a,(hl)
	add hl,sp
	ld a,a
	ld (0c623h),a
	inc h
	ld h,a
	cp 086h
	ld d,e
	add hl,hl
	ret
	ld h,e
	sub d
	or l
	ld (bc),a
	call 0019ch
	ld (hl),h
	in a,(001h)
	call 0bd3dh
	ret
	ld a,a
	ex (sp),hl
l6ee7h:
	rst 38h
	jp nc,02aebh
	ld e,a
	push hl
	call c,089d5h
sub_6ef0h:
	rst 38h
	inc hl
	sub e
	rst 38h
	call p,02249h
	inc h
	ld c,c
	adc a,b
	add a,e
	sub e
	sub (hl)
	ret p
	call nc,09c45h
	ei
	ld a,a
	and a
	call m,sub_6bd2h
	and e
	ld h,h
	rst 38h
	and l
	adc a,c
	add a,(hl)
	ex de,hl
	ld e,c
	push af
	ld d,d
	rst 38h
	ld a,(002cah)
	djnz $+1
	cp a
	ld d,0c4h
	ld h,e
	ld d,l
	ld (086fbh),hl
	ld c,c
	ret z
	jp (hl)
	ld (hl),039h
	ld a,a
	push af
	jp po,0e7ffh
	cp b
	and h
	ex de,hl
	ld h,(hl)
	push hl
	cp c
	ld b,l
	adc a,c
	cp 057h
	adc a,d
	sbc a,(hl)
	cp a
	add hl,hl
	sub a
	rst 38h
	inc e
	add hl,sp
	ld a,a
	ld d,d
	cp a
	ld a,(hl)
	ld a,l
	inc bc
	inc sp
	call m,sub_6735h
	add a,b
	ld de,l6959h
	ld d,b
	add a,c
	ld h,h
	sbc a,c
	sbc a,h
	ret
	inc e
	and 0b9h
	sbc a,a
	rst 38h
	ld b,e
	dec c
	cp e
	add a,c
	ld l,(hl)
	rst 38h
	di
	cp (hl)
	defb 0fdh,0aah,0ffh ;illegal sequence
	ret pe
	ex af,af'
	ld c,c
	sub (hl)
	call c,0a2feh
	ld a,a
	rst 38h
	cp a
	ld a,b
	ld a,a
	ld hl,0fc95h
	cp c
	call m,087a8h
	jp c,0fefah
	inc (hl)
	ld c,c
	ld (01ff7h),hl
	jp m,0d37fh
	sub d
	ld bc,02419h
	adc a,e
	ei
	xor c
	ei
	ld d,l
	add a,l
	defb 0fdh,07bh,08ch ;illegal sequence
	rra
	sub e
	ret po
	ld h,(hl)
	ld c,e
	ld h,a
	call m,09be0h
	ld b,(hl)
	ld h,l
	call m,sub_65c9h
	ld (hl),07fh
	jp nz,0fd34h
	ld d,b
l6f9eh:
	defb 0ddh,09dh ;sbc a,ixl
	ld c,l
	cp e
	nop
	sbc a,e
	inc bc
	ld c,e
	cp l
	rst 38h
	jp 01fffh
	rrca
	ld l,b
	add a,d
	adc a,c
	defb 0fdh,06ch ;ld iyl,iyh
	add a,a
	ld h,e
	nop
	cp l
	sub d
	rrca
	ld b,(hl)
	ld a,c
	ld a,a
	ret nz
	dec sp
	ld h,a
	ld h,l
	ei
	sub d
	ld b,e
	sbc a,c
	cp 054h
	sub e
	ld b,l
	pop hl
sub_6fc7h:
	ld a,a
	defb 0ddh,000h,070h ;illegal sequence
	inc bc
	call z,0ffa7h
	add a,a
	ld a,a
	call 00919h
	inc a
	add hl,sp
	ld l,b
	ld l,e
	adc a,b
	dec a
	ld e,c
	dec d
	sub a
	sub (hl)
	dec h
	ld d,h
	add a,b
	ret p
	ld e,a
	add a,a
	ei
	rst 0
	ld a,a
	add a,e
	ld d,(hl)
	ld a,a
	call p,sub_68bah
	ret p
	ld a,a
	halt
	sub h
	ld a,a
	adc a,a
	ld a,(hl)
	add a,h
	ld a,a
	dec bc
	ld (hl),a
	ld a,a
	sub (hl)
	ld d,h
	call m,0fe92h
	xor b
	dec (hl)
	jr nc,l6f9eh
	sbc a,c
	ld c,0cch
	sbc a,h
	call z,003cch
	cp a
	ld a,a
	dec b
	sub h
	ld l,b
	ret po
	ld e,c
	cp h
	ex af,af'
	ld d,l
	ld a,b
	adc a,(hl)
	and e
	nop
	rst 38h
	pop af
	rrca
	ld h,(hl)
	ld d,d
	ei
	rst 20h
	ld a,a
	cp a
	rst 20h
	defb 0edh ;next byte illegal after ed
	sub b
	rlca
	sub 0ffh
	cp e
	or 07fh
	ld hl,l7fd9h
	ret pe
	ld (hl),e
	adc a,d
	cp 0edh
	ld a,h
	ld b,d
	sub a
	halt
	sub (hl)
	ld h,(hl)
	nop
	sbc a,a
	rst 38h
	call nz,sub_443ch
	ld (0277fh),a
	cp 049h
	ld h,a
	ld (bc),a
	ld e,h
	ld hl,0ca6dh
	inc bc
	sbc a,b
	ld b,c
	ld (bc),a
	ld (de),a
	jr nc,$+1
	adc a,085h
	ld (de),a
	ld (de),a
	rst 38h
	or 039h
	add hl,hl
	add hl,de
	add hl,sp
	ret pe
	jp c,l53feh
	ld l,l
	ld d,c
	sbc a,b
	cp 0c0h
	ld h,(hl)
	sub h
	ld b,h
	sub l
	nop
	ld b,a
	sub (hl)
	adc a,e
	ld a,c
	cp 0fch
	rrca
	call m,0fd5dh
	ld b,h
	sub (hl)
	cp 0f2h
	ld h,a
	dec c
	inc bc
	inc sp
	inc l
	jp nz,l4fd8h
	ld a,a
	and e
	ld sp,hl
sub_7080h:
	ld a,(0231dh)
	di
	inc hl
	rst 38h
	defb 0ddh,0c3h,025h ;illegal sequence
	rst 38h
	ld l,d
	adc a,c
	call pe,0517ch
	sub a
	sub b
	inc de
	ld e,c
	ld d,l
	nop
	sub h
	sub (hl)
	exx
	rst 18h
	call m,0febeh
	sbc a,c
	ex (sp),hl
	ld a,a
	adc a,(hl)
	ld de,0e003h
	adc a,01fh
sub_70a5h:
	ld a,a
	cpl
	sbc a,c
	or h
	inc de
	cp e
	ld bc,0bdffh
	add a,c
	ld c,c
	rst 20h
	ld d,d
	ld d,h
	ld c,c
	out (09ch),a
	adc a,a
	ld d,l
	ld e,c
	ret
	sub e
	adc a,c
	sub b
	ld (hl),c
	call 0affch
	add a,e
	ld a,a
	ex (sp),hl
	defb 0fdh,078h,056h ;illegal sequence
	inc (hl)
	ld e,c
	inc bc
	ld h,b
	add hl,hl
	ld hl,0215fh
	defb 0edh ;next byte illegal after ed
	rra
	ld a,a
	inc de
	ld sp,0b9f6h
	adc a,000h
	rst 38h
	jp pe,0baf8h
	cpl
	sbc a,b
	add a,(hl)
	call m,097c0h
	sub (hl)
	ccf
	ld b,l
	ld e,b
	sub c
	ld b,a
	ld e,c
	ld c,c
	ld h,a
	call m,01fbeh
	ld a,a
	sbc a,h
	or e
	sbc a,h
	ld a,a
	add hl,hl
	ld (0a482h),hl
	ld (l7effh),hl
	daa
	ld a,a
	ld (de),a
	add a,e
	dec h
l70ffh:
	sub a
	cp 0c0h
	ld l,c
	ld b,l
	ld a,(ix-069h)
	or (hl)
	sub 0e7h
	defb 0fdh,0c4h,0f1h ;illegal sequence
	ld a,a
	call nc,0fb8eh
	ld a,a
	rst 20h
	rst 38h
	ret po
	ld c,l
	adc a,c
	or e
	rst 20h
	dec de
	defb 0fdh,04ch ;ld c,iyh
	in a,(08fh)
	ld b,(hl)
	sub l
	adc a,c
	ld a,a
	cp h
	add a,l
	inc de
	cp (hl)
	ld a,a
	ex de,hl
	cp 062h
	nop
	dec l
	ld b,l
	ld e,c
	ld a,a
	ld d,h
	or c
	add a,d
	ld hl,0f37fh
	rst 10h
	rst 38h
	rst 0
	defb 0fdh,05ch ;ld e,iyh
	add hl,sp
	sub a
	call z,0fe67h
l713fh:
	xor a
	adc a,l
	jp po,03f04h
	ld d,h
	sub (hl)
	ld a,a
	inc h
	ld h,e
	ld b,(hl)
	ld a,l
	adc a,b
	add a,d
	ret m
	scf
	rst 28h
	dec de
	ld d,a
	ld a,a
	push af
	ld e,a
	rst 38h
	scf
	ld sp,hl
	ld e,h
	add hl,hl
	rrca
	ld d,e
	cp 036h
	or 0abh
	sub a
	adc a,(hl)
	pop af
	and e
	cp 007h
	add a,a
	adc a,b
	ld a,a
sub_7169h:
	jp po,02416h
	ld b,l
	call p,0880eh
	ld (hl),a
	ld e,c
	ld a,a
	ex af,af'
	dec (hl)
	ld c,c
	rst 38h
	call nz,08123h
	rst 20h
	ld a,a
	adc a,e
	nop
	nop
sub_717fh:
	in a,(041h)
	jp po,08532h
	sbc a,c
	ld h,a
	ex de,hl
	ld e,h
	add a,e
	halt
	sub h
	ld e,b
	adc a,c
	ld a,a
	sub h
	ld l,c
	rst 38h
	cp 01fh
	nop
	rrca
	add hl,hl
	ld a,a
	and b
	call 09c0ch
	ld bc,001dbh
	ret m
	defb 0fdh,0ddh,0efh ;illegal sequence
	rst 38h
	ld c,b
	rst 38h
	ret pe
	sbc a,b
	add a,h
	and d
	ei
	rst 38h
	ld b,c
	ld h,(hl)
	sub a
	ld a,c
	adc a,(hl)
	sbc a,(hl)
	ld a,(bc)
	ld e,b
	add a,l
	ld e,(hl)
	inc bc
	cp a
	ld a,a
	ld a,(025e1h)
	jr nc,l713fh
	ld sp,0f97fh
	ld d,d
	add a,b
	inc b
	ld c,c
	ld l,c
	ld a,b
	add a,h
	ld a,(0b767h)
	cp 01eh
	ld d,06fh
	rst 38h
	ret p
	push hl
	rst 38h
	add ix,bc
	ld e,0edh
	ld a,a
	ret m
	ld h,(hl)
	sub l
	ld d,h
	jp (hl)
	ld d,c
	add a,e
	daa
	ld c,c
	add a,c
	and l
	ld (hl),a
	cp 0b3h
	rst 38h
	ld e,c
	cp 0bfh
	add a,l
	rst 38h
	ld c,a
	ld c,05fh
	set 7,a
	adc a,a
	ld a,a
	push bc
l71f3h:
	dec a
	ret pe
	add hl,sp
	sub l
	call po,08911h
	sub h
	ld c,c
	add a,e
	ld e,h
sub_71feh:
	defb 0edh ;next byte illegal after ed
	sub h
	ld h,l
	ld l,c
	di
	call m,0feabh
	ld l,h
	call z,sub_55feh
	ld d,066h
	ld a,b
	adc a,b
	rst 38h
	jp m,07f3fh
	ld (hl),l
	dec e
	add a,c
	adc a,l
	ld h,e
	add a,a
	ld e,h
	ld l,c
	ld (hl),b
	inc b
	sub l
	inc d
	sub h
	ld l,b
	ld d,l
	ret m
	inc e
	sub a
	sub a
	ei
	ld (hl),c
	ld d,a
	cp 07ah
	add a,l
	ld sp,08955h
	rst 38h
	call p,07f3eh
	pop hl
	ld sp,03231h
	or c
	ld c,h
	ex de,hl
l7239h:
	add a,a
	ld e,h
	ld h,b
	dec h
	ld d,l
	jp (hl)
	ld h,b
	ld l,a
	add a,l
	ld b,h
	ld b,l
	adc a,c
	sbc a,b
	jp p,l4469h
	adc a,e
	add a,l
	ld c,c
	ld de,01498h
	ld a,b
	ld d,h
	adc a,c
	ld e,h
	ld l,e
	rst 38h
	and 0f9h
	ld a,a
	ld a,(hl)
	rst 18h
	in a,(0ffh)
	cp l
	ld a,a
	and b
	sbc a,01ch
	add a,a
	jp l7f58h
	pop bc
	sbc a,b
	add a,a
	cp b
	ld h,h
	ld hl,(l6658h)
	ld a,(hl)
	cp 067h
	dec c
	jr z,l71f3h
	add hl,sp
	halt
	ld b,l
	rst 38h
	call p,sub_7f3ch
	and 009h
	add hl,sp
	rst 38h
	ld a,(00049h)
	djnz $+1
	ld (hl),a
	sbc a,l
	ex de,hl
	dec de
	adc a,b
	ld e,c
	sbc a,c
	ld a,a
	rst 28h
	ld (hl),b
	ld a,a
	ld (hl),h
	ld e,b
	ld (de),a
	ld b,h
	ld c,c
	sub l
	call p,098c9h
	sub h
	ld a,a
	rrca
	ld b,a
	rst 30h
	ld b,l
	rst 38h
	ld a,l
	rrca
	ld a,a
	cp d
	rst 38h
	sbc a,l
	jp z,04849h
	ld l,l
	rst 38h
	sub a
	rst 28h
	jr l7239h
	rst 38h
	jp m,087f6h
	add hl,hl
	call p,0ffe6h
	ccf
	dec d
	inc sp
	ld l,h
	inc bc
	inc sp
	ld b,h
	ld d,(hl)
	ld h,l
	ld d,e
	ld a,a
	add a,l
	sub e
	adc a,d
	rst 18h
	ld a,a
	ld a,a
	ccf
	cp d
	ld h,h
	defb 0edh ;next byte illegal after ed
	ld (08589h),hl
	jp pe,0872bh
	and 0ffh
	ld (hl),c
	adc a,b
	jp p,0845dh
	sbc a,b
	ld d,(hl)
	ld (hl),a
	ld d,l
	rst 38h
	cp 012h
	ld b,h
	ld e,l
	in a,(07fh)
	add a,b
	ld e,h
	ld a,a
	ld a,d
	ld b,l
	ld a,a
	ld l,a
	rra
	ld a,a
	cp e
	inc sp
	nop
	in a,(0ech)
	ld hl,08959h
	ld d,l
	jp m,l598dh
	pop af
	ld l,(hl)
	call po,0b098h
	adc a,b
	ld h,a
	ld d,l
	xor a
	rst 38h
	pop bc
	inc a
	ld h,(hl)
	ld d,d
	ld a,a
	add hl,hl
	add a,b
	ld e,035h
	ld a,a
	adc a,c
	sub d
	ld bc,07f19h
	and 010h
	and h
	rst 38h
	xor a
	defb 0fdh,03bh,080h ;illegal sequence
	ld e,a
	call pe,sub_5907h
	ld e,c
	ld d,h
	ei
	call p,08b85h
	add a,(hl)
	pop af
	ld a,h
	and d
	sbc a,c
	cpl
	ld b,(hl)
	ld (hl),l
	cp 0f0h
	ld a,h
	xor h
	rst 0
	add a,b
	rra
	ld a,a
	jr $-126
	xor l
	ld e,(iy-06eh)
	add a,a
	dec a
	sbc a,c
	ld a,a
	dec b
	call 0c0ddh
	defb 0fdh,079h,0dah ;illegal sequence
	add a,b
	call nz,sub_49c0h
	rst 10h
	ld sp,hl
	ld b,099h
	ret p
	ld a,c
	xor b
	sub a
	adc a,e
	and e
	add a,c
	ld a,a
	ret p
	ld c,d
	add a,a
	ld h,h
	add a,b
	ex de,hl
	dec bc
	add hl,hl
	add a,b
	ld b,h
	add hl,bc
	sub e
	inc sp
	jp po,l4878h
	add a,l
	add hl,de
	ret m
	ld a,a
	inc hl
	rst 38h
	ret nc
	ld hl,l6a12h
	inc hl
	xor 038h
	ld l,c
	jp m,088f6h
	cp l
	ld a,a
	ld c,a
	adc a,a
	add a,h
	ld a,a
	jp nz,l673dh
	ld h,l
	ld a,a
	dec de
	ld b,l
	rst 38h
	ld c,l
	out (05eh),a
	pop hl
	add a,b
	adc a,c
	ld a,a
	rst 28h
	call m,0923eh
	ld a,a
	inc sp
	ld h,a
	dec sp
	ld a,c
	ld (hl),a
	ld sp,hl
	or a
	add a,l
	rst 28h
	ld a,c
	rst 0
	rst 38h
	ex (sp),hl
	dec d
	ld b,(hl)
	ld h,l
	add a,b
	ret z
	ld h,l
	ld (hl),099h
	add a,081h
	add hl,sp
	rst 38h
	inc hl
	add a,b
	cp l
	ld a,(hl)
	call p,0c57fh
	rst 38h
	di
	dec sp
	ld e,e
	sub e
	ld a,a
	rst 38h
	sub h
	pop af
	ex (sp),hl
	xor 054h
	ld (hl),b
	sub (hl)
	and 00ah
	rst 38h
	ld a,c
	rst 20h
	rst 38h
	jp nz,0adc1h
	ld b,d
	ld a,a
	and e
	add a,a
	ld (07f26h),hl
	add a,a
	ld (0bf1fh),hl
	ld a,a
	sbc a,d
	ld (bc),a
l73d3h:
	ld bc,01077h
	rst 38h
	sbc a,a
	ld hl,(098b0h)
	ld c,c
	sub (hl)
	adc a,a
	ret p
	ld a,(0ceffh)
	cp 0fch
	jr z,l73d3h
	and e
	rst 38h
	ld d,c
	ld h,a
	defb 0edh ;next byte illegal after ed
	add hl,de
	ld e,c
	ld l,c
	add a,c
	add a,0c9h
	ld c,056h
	ret
	or c
	cp h
	rla
	add hl,hl
	rlca
	adc a,a
	sbc a,c
	ld h,d
	ld l,a
	and 016h
	adc a,(hl)
	rst 8
	cpl
	pop hl
	jp nz,l7beeh
	jp z,0fffdh
	dec sp
	ld b,a
	ld l,c
	ret p
	adc a,e
	sub (hl)
	rra
	ld d,(hl)
	ld h,a
	adc a,(hl)
	push hl
	add a,c
	rst 18h
	ld e,d
	ld d,l
	ld a,(hl)
	or l
	ld l,h
	dec hl
	ld (hl),0cfh
	jr nz,l7439h
	sbc a,b
	add a,a
	add a,b
	ld (hl),a
	add hl,de
	ld d,h
	sub c
	add hl,de
	dec h
	ld h,(hl)
	rrca
	sub c
	ei
	cp a
	add hl,de
	ld a,a
	ld (03213h),a
	rst 28h
	ld d,c
	sbc a,b
	call nc,0097eh
l7439h:
	adc a,b
	rst 18h
	or 0f7h
	rrca
	sub e
	ld h,067h
	add a,b
	ret m
	ld e,b
	ld a,a
	inc h
l7446h:
	sub e
	ld a,(hl)
	adc a,b
	add a,(hl)
	ld c,(hl)
	cp c
	add a,b
	ld (09145h),a
	pop af
	sbc a,b
	halt
	sub c
	ld h,b
	rst 38h
	ld a,a
	ei
	sub d
	ld e,b
	inc bc
	rra
	cp a
	rst 38h
	pop af
	sub e
	add a,e
	ld a,a
	jp c,022d5h
	ld h,h
	ld l,b
	jr z,l7446h
	rst 28h
	sub d
	and a
	sbc a,03dh
	ld a,00fh
	ld a,(bc)
	cp 07ch
	ld a,082h
	ld h,h
	ld (0dc67h),hl
	add a,c
	ld h,b
	add hl,hl
	dec a
	sub d
	ld (hl),a
	sbc a,a
	ld b,h
	ei
	ld a,a
	rra
	ei
	rst 38h
	sub c
	add a,e
sub_7488h:
	nop
	cp c
	sub l
	dec de
	rst 38h
	rst 38h
	ld de,l7a93h
	ld d,e
	ld a,a
	ex (sp),hl
	ld d,l
	halt
	push hl
	ld c,e
	in a,(c)
	jr c,l750bh
	ccf
	sub (hl)
	ld a,c
	ld a,a
	ld d,e
	add a,d
	ret pe
	cp c
	or e
	add a,c
	ld a,(bc)
	ld (0b396h),a
	ld b,a
	adc a,b
	ld a,a
	nop
	cp c
	dec h
	add a,h
	ld c,c
	rra
	ld (hl),d
	pop af
	ld a,a
	ld b,e
	or 07fh
	ld c,046h
	ld a,a
	rst 30h
	ld h,l
	ld a,a
	ld d,d
	ld c,c
	jp pe,l6ee7h
	ld (hl),c
	add a,l
	cp 033h
	ld b,a
	ld d,(hl)
	jp z,08b96h
	adc a,(hl)
	di
	jp m,0da00h
	inc h
	add a,c
	rst 0
	add a,d
	xor c
	ld a,b
	adc a,b
	rst 38h
	dec hl
	or 0a2h
	ld d,(hl)
	ld c,009h
	sub c
	ld de,01f95h
	cp 03eh
	ld a,a
	sub c
	sbc a,b
	ld e,c
	ld h,a
	and 05ch
	sub d
	ld (hl),a
	ld a,c
	defb 0fdh,0c8h,085h ;illegal sequence
	sub (hl)
	ld (hl),a
	ld h,d
	sub l
	ld a,a
	sbc a,b
	cp 03ch
	dec h
	sbc a,a
	rra
	ld e,c
	ld a,a
	adc a,c
	add a,c
	sbc a,c
	add a,c
	adc a,b
	ld b,h
	exx
	add a,d
	sub l
	in a,(059h)
l750bh:
	rst 38h
	ld c,c
	sub h
	halt
	sub l
	ld b,l
	inc h
	ld c,c
	dec b
	adc a,e
	dec d
	adc a,b
	ld d,d
	rst 38h
	call p,0f477h
	ld l,e
	halt
	and 064h
	sub a
	ld (hl),l
l7522h:
	ld b,l
	sub h
	xor 092h
	ld a,078h
	jr z,l75a3h
	adc a,a
	rst 38h
	add a,0fdh
	add a,d
	ld d,d
	ld d,l
	ld a,a
	add a,b
	dec bc
	inc h
	ld e,b
	adc a,b
	rst 38h
	ld d,l
	ld d,l
	jp m,l548bh
	add a,h
	push bc
	sub l
	rst 38h
	or c
	rst 38h
	ld c,a
	rrca
	call nc,098b2h
	and 0f4h
	ld (hl),d
	and 0ebh
	defb 0fdh,067h ;ld iyh,a
	ld h,d
	add a,(hl)
	ld b,h
	halt
	add a,a
	sub h
	and a
	sub d
	dec a
	adc a,l
	ld (hl),h
	ei
	ld a,a
	and a
	add a,b
	inc a
	add a,d
	sub b
	add a,b
	ld h,d
	ld b,l
	add a,(hl)
	ld a,a
	sub h
	ld e,b
	ld h,l
	ld a,e
	adc a,h
	add hl,hl
	ld c,c
	ld d,(hl)
	ret nz
	add a,l
	add hl,hl
	sub h
	ld b,h
	rst 38h
	cp h
	dec hl
	ld d,h
	rst 38h
	dec h
	di
	ld d,c
	add a,l
	sbc a,0cch
	adc a,h
	sub (hl)
	or 0c4h
	add a,(hl)
	ld c,b
	ld b,h
	xor 0f2h
	add hl,hl
	ld (hl),a
	ld (hl),a
	sub e
	ld l,c
	sbc a,a
	jp z,09effh
	call nc,08033h
	pop af
	ld (hl),l
	ld c,d
	add a,b
	sub e
	sbc a,c
	ld b,d
	add a,h
	ld c,d
	ei
	sub a
	sub h
	add hl,hl
	rst 38h
	ld b,l
	inc bc
l75a3h:
	ld b,d
	sbc a,c
	rst 38h
	call m,08849h
	di
	ld e,b
	add a,(hl)
	sub d
	ld h,(hl)
	cp 0c9h
	ld e,b
	rst 38h
	and 0cbh
	add a,(hl)
	inc d
	ei
	xor h
	rst 38h
	ld (hl),l
	ld sp,hl
	sub e
	ld h,(hl)
	rlca
	add hl,hl
	sbc a,a
	xor a
	nop
	pop bc
	add hl,sp
	sub e
	ld b,h
	add a,d
	sbc a,c
	add a,b
	ld (de),a
	ld c,c
	add a,b
	ld b,d
	ld (hl),e
	sub l
	add a,a
	ld d,h
	or 029h
	ld a,a
	sbc a,c
	rst 38h
	ld (hl),d
	ld b,d
	inc c
	rrca
	sub h
	sub e
	sbc a,c
	ld d,e
	ld a,a
	ld e,d
	rst 10h
	exx
	di
	ld c,c
	xor 0a7h
	ld e,(hl)
	sbc a,b
	ld a,a
	ld (l4585h),hl
	ld h,a
	ld b,02ah
	ld c,b
	ret m
	ld a,e
	sub d
	cp a
	ld sp,hl
	cp (hl)
	adc a,b
	ld c,e
	cp 057h
	sbc a,b
	ld a,a
	jp po,09439h
sub_75ffh:
	add a,d
	dec a
	add a,e
	add a,a
	ld b,l
	add a,h
	add hl,bc
	ld l,c
	ld (hl),a
	dec h
	rst 38h
	sub c
	ld b,d
	sub d
	add a,a
	add hl,de
	add a,e
	dec h
	ld a,a
	adc a,l
	jr nz,$-107
	sub d
	add hl,sp
	ld b,a
	sub d
	rst 38h
	xor h
	di
	or d
	ld h,l
	ld c,e
	ld c,c
	xor 03ah
	dec bc
	ld d,a
	exx
	rst 30h
	sub (hl)
	rst 38h
	ld a,(de)
	sbc a,b
	and (hl)
	rst 38h
	ld h,d
	sbc a,(hl)
	ld d,(hl)
	ld b,l
	ei
	ld l,(hl)
	adc a,l
	ld b,a
	rst 38h
	ex (sp),hl
	dec c
	sub h
	ld d,(hl)
	ld h,h
	ld a,a
	sub b
	add a,b
	ld h,d
	dec h
	scf
	add hl,sp
	sub (hl)
	ld a,a
	ld a,e
	ld h,e
	add a,e
	ld a,b
	ld a,a
sub_7648h:
	dec a
	add a,c
	inc hl
	ld a,a
	ld c,c
	add a,l
	ld e,c
	di
	ld h,c
	ld l,c
	jp pe,l4a4dh
	adc a,e
l7656h:
	rla
	ld b,l
	ld a,c
	ld sp,hl
	sub e
	rst 38h
	sbc a,a
	adc a,0c7h
	ld sp,hl
	or e
	adc a,b
	ld a,(de)
	adc a,c
	and a
	cp 0c7h
	adc a,b
	jp nc,l6366h
	adc a,l
	add a,b
	inc d
	ld (hl),d
	jr z,l76c5h
	add a,d
	ld c,d
	rst 38h
	jp z,0cefbh
	add a,e
	set 7,a
	ld (bc),a
	ld sp,l6223h
	rst 38h
	ld e,l
	ld c,c
	sbc a,c
sub_7682h:
	ld l,c
	di
	ld d,l
	ld d,h
	defb 0ddh,076h,076h ;illegal sequence
	sub l
	ld a,b
	ld e,c
	inc l
	sub h
	out (0f2h),a
	sub d
	rst 38h
	ld c,d
	di
	dec h
	ld e,c
	sub d
	inc c
	adc a,a
	ret m
	ex af,af'
	ld b,a
	ld d,l
	rst 38h
	ex (sp),hl
	ex (sp),hl
	ld b,e
	ld h,l
	ld a,a
	dec e
	ld b,(hl)
	add a,e
	ld (08055h),hl
	and l
	rst 38h
	and l
	ei
	xor (hl)
	add a,e
	ld l,c
	rst 38h
	ld hl,(06f7fh)
	ex (sp),hl
	ld c,c
	ret p
	adc a,d
	halt
	sub a
	ld h,b
	rst 38h
	add hl,sp
	pop af
	rrca
	add a,0ffh
	ld d,e
	ld a,b
	dec c
	sub h
l76c5h:
	ld b,015h
	sub (hl)
	ld a,a
	sbc a,b
	pop af
	ld a,a
	push de
	and b
	ld (hl),a
	nop
	ret m
	ld h,l
	sub (hl)
	ld d,l
sub_76d4h:
	ex (sp),hl
	ld de,008e6h
	ld h,055h
	ld h,(hl)
	add a,b
	xor l
	rst 38h
	ld l,l
	ei
	ld l,a
	add a,e
	ld d,(hl)
	sub h
	rst 38h
	or b
	ld a,a
	ld (02193h),a
	add hl,hl
	ld d,e
	ld hl,00103h
	ld a,c
	rst 38h
	inc e
	jp z,0c6f3h
	cp 04dh
	call p,sub_6ef0h
	inc d
	ret m
	sub a
	sub d
	sub c
	rst 28h
	add a,h
	ld d,l
	ld h,a
	sub c
	or c
	rst 38h
	inc h
	adc a,l
	call po,0cf83h
	sbc a,c
	nop
	ret z
	ret nc
	call m,02522h
	ld d,b
	ld (l55b6h),hl
	cp b
	jp m,00000h
	or d
	cp h
	inc bc
	or a
	sbc a,h
	inc l
	ld a,a
	ld b,073h
	ld hl,02143h
	ld h,e
	inc bc
	cpl
	ld h,(hl)
	rst 38h
	sbc a,c
	jp (hl)
	ld (016e1h),hl
	ld c,c
	ld h,a
	sub h
	xor l
	ld e,d
	push hl
	rst 28h
	rst 38h
	ld a,d
	add a,(hl)
	or c
	add a,(hl)
	add hl,hl
	sub (hl)
	rst 38h
	pop bc
	ld (hl),h
	sbc a,a
	ret
	rst 38h
	sbc a,a
	adc a,a
l7746h:
	add a,h
	call c,0269ah
	inc (hl)
	add a,h
	ld d,h
	add a,e
	nop
	rrca
	ld h,a
	ld (hl),a
	ld h,(hl)
	ld h,l
	ld a,a
	ld h,(hl)
	sub e
	ld a,e
	ld c,d
	add a,e
	and e
	sub (hl)
	rst 38h
	sub (hl)
	ld c,c
	ld e,d
	ld b,e
	ld l,h
	sub l
	ld e,c
	ld b,h
	rst 28h
	cp h
	or l
	add a,(hl)
	sub e
	sub l
	ld b,(hl)
	sub e
	add hl,sp
	ld d,064h
	ld b,(hl)
	ld h,a
	add a,b
	and d
	ld b,(hl)
	adc a,b
	adc a,c
	add a,b
	ccf
	add hl,hl
	ld d,e
	add a,e
	add a,h
	add a,b
	ld h,b
	ld b,08bh
	add a,a
	and c
	adc a,l
	ld d,b
	rst 38h
	ld e,0f2h
	rst 38h
	and e
	add a,e
	ld hl,l7f49h
	ld d,l
	ld l,c
l7790h:
	in a,(095h)
	sbc a,l
	dec sp
	ld a,c
	rst 28h
	ld h,0abh
	xor l
	add a,e
l779ah:
	ld l,e
	sub h
	dec h
	adc a,b
	add a,(hl)
	ld e,b
	jp z,l779ah
	adc a,0feh
	ld (hl),08ah
	adc a,d
	cp 080h
	ld (hl),b
	ld c,b
	ld d,l
	dec h
	ld e,b
	adc a,c
	add a,b
	jp p,02391h
	add a,b
	and e
	rlca
	cp e
	cp b
	ld a,a
	ret po
	sub e
	ld a,e
	ld h,e
	rst 38h
	push bc
	rst 38h
	ld sp,0a400h
	add a,h
	ld h,(hl)
	call p,080f3h
	inc l
	or e
	sub (hl)
	ld a,(bc)
	add a,(hl)
	ld e,b
	xor a
	ld a,a
	add a,h
	adc a,h
	cp 0c1h
	ld (hl),h
	ld c,c
	ld b,h
	add a,d
	cp c
	add a,l
	ld b,a
	xor c
	ld (hl),c
	add a,l
	rst 18h
	sub d
l77e1h:
	inc sp
	call z,08cb8h
	rst 38h
	xor e
	add a,(hl)
	ld a,a
	push hl
	ld (hl),c
	add a,l
	ld a,a
	ex (sp),hl
	ld d,0dah
	ld l,h
	call p,089ech
	sbc a,d
	jp po,l7fd7h
	ld a,(de)
	add a,(hl)
	ld l,d
	ld a,a
	adc a,c
	rst 38h
	or a
	sbc a,l
	ld hl,(0359ch)
	add a,c
	adc a,h
	adc a,c
	ccf
	ld a,a
	ld l,080h
	inc (hl)
	ld h,a
	ld a,b
	ld a,d
	ld (hl),a
	ld a,a
	inc l
	ld e,c
	ld a,a
	adc a,h
	ret
	ret pe
	rst 20h
	ld a,a
	ld (hl),l
	jp po,00f7ch
	ld sp,0c184h
	ld c,c
	rst 38h
	ld hl,(09459h)
	sub c
	ld h,(hl)
	ld h,a
	ld (hl),b
	cp 02ah
	ld b,l
	add hl,bc
	ld b,a
	sub a
	ld a,a
l782fh:
	ld a,a
	ld (hl),h
	ld a,a
	push hl
	ld de,03234h
	add a,b
	and l
	ld h,(hl)
	ld (hl),a
	rst 38h
	daa
	ld a,a
	sub d
	add a,l
	ld a,a
	ld a,a
	ld d,l
	sub 086h
	ld a,a
	dec l
sub_7846h:
	add a,l
	call po,0e63fh
	push bc
	sub (hl)
	adc a,b
	dec e
	dec (hl)
	sub (hl)
	add a,(hl)
	adc a,b
	sbc a,b
	xor a
	or h
	inc h
	add a,b
	cp h
	cp 028h
	ld d,(hl)
	adc a,c
	sbc a,h
	cp d
	sbc a,a
	rst 38h
	ccf
	inc (hl)
	inc (hl)
	ld d,h
	sub l
	add a,c
	ld h,a
	ld h,(hl)
	nop
	ld a,a
	sbc a,d
	sbc a,c
	ld a,a
	ld d,b
	ld d,h
	defb 0edh ;next byte illegal after ed
	inc sp
	sub e
	rst 30h
	ld (bc),a
	ld (de),a
	sbc a,b
	rst 38h
	and (hl)
	ld c,c
	adc a,b
	rrca
	ld c,e
	or 072h
	adc a,b
	ret z
	sbc a,b
	sub h
	sub (hl)
	push de
	add a,(hl)
	ld c,d
	sub (hl)
	rst 38h
	ld h,b
	add a,e
	ld c,b
	ld l,h
	adc a,c
	ld a,a
	ei
	ld d,c
	jr z,l78f9h
	ld (hl),l
	rst 38h
	ccf
	sbc a,c
	add a,b
	jp nc,08053h
	ld sp,07f06h
	add a,(hl)
	ld d,l
	ld d,b
	sbc a,c
	add hl,sp
	ld h,c
	ld a,a
	ld b,(hl)
	ld (hl),e
	sbc a,e
	ld d,h
	defb 0fdh,0cdh,023h ;illegal sequence
	ld a,a
	ld c,037h
	ld d,h
	adc a,b
	sub l
	call c,sub_7f4eh
	xor c
	rst 28h
	sbc a,h
	cp 0a7h
	call pe,0ff31h
l78bch:
	ld a,(de)
	ld b,h
	rrca
	ld d,h
	dec h
	ld d,l
	adc a,c
	rst 38h
	inc d
	ld c,c
	inc d
	and h
	jp z,00f49h
	cp 03fh
	ld hl,(l48b9h)
	xor a
	sub e
	ld b,d
	ld a,a
	dec b
	add a,h
	ld d,e
	ld a,a
	call sub_7f48h
	ld c,044h
l78ddh:
	ld a,c
	sub e
	ld a,a
	ld h,l
sub_78e1h:
	rst 38h
	ld d,d
	ld c,b
	rst 20h
	ld e,e
	rrca
	dec l
	rst 30h
	inc l
	inc sp
	ld c,c
	di
	inc sp
	ld h,l
	adc a,b
	add hl,sp
	ld d,l
	sub l
	dec de
	sub b
	ld (0fc49h),a
	and d
l78f9h:
	adc a,e
	add a,(hl)
	ld d,d
	sbc a,a
	jp p,02a81h
	sbc a,(hl)
	ex de,hl
	nop
	pop af
	and b
	jr c,l795bh
	add hl,hl
	ld (0a400h),hl
	ld a,l
	nop
	nop
	sub l
	cp c
	ld d,(hl)
	ld a,a
	ld b,(hl)
	ld a,h
	ld (hl),h
sub_7915h:
	ld a,a
	scf
	ld c,l
	ld b,l
	call nc,0e256h
	add a,l
	jp po,0e5f7h
	ret c
	ld (hl),l
	adc a,b
sub_7923h:
	ld b,b
	ld a,a
	adc a,d
	ld b,(hl)
	adc a,b
	ex af,af'
	adc a,b
	ld h,(hl)
	adc a,a
	push hl
	adc a,b
	xor e
	ld e,e
	nop
	ld sp,hl
	ld b,d
	sub h
	ld h,(hl)
	ld d,h
	sbc a,06dh
	ei
	inc sp
	ld a,(hl)
	ld a,a
	jp z,l70ffh
	ld h,a
	inc sp
	pop af
	ld a,a
	adc a,b
	jr nz,l78ddh
	ld h,a
	push de
	pop af
	sub (hl)
sub_794ah:
	ld a,a
	ld l,c
	push hl
	jp (hl)
	rst 38h
	ld e,c
	cp l
	ld d,(hl)
	push bc
	ret
	ld d,a
	and b
	push hl
sub_7957h:
	sbc a,b
	xor d
	ld (hl),d
	ld a,c
l795bh:
	add a,b
	ccf
	jr nc,$+55
	ld b,h
	ld a,h
	ld (02814h),a
	ld sp,0127ah
	inc sp
	and 07fh
	rst 38h
	sbc a,b
	rst 38h
	or a
	inc a
	add a,a
	or l
	add a,a
	dec l
	push hl
	ret z
	adc a,c
	ld b,h
	call z,sub_62fch
	ld h,(hl)
	call nz,09172h
	sub (hl)
	sbc a,c
	ld a,c
	and a
	ex (sp),hl
	nop
	ei
	ld e,(hl)
sub_7986h:
	ld a,a
	ld e,b
	rst 38h
	rst 8
	add a,b
	inc l
	cp 074h
	ld d,h
	xor (hl)
	and c
	inc hl
	rst 38h
	jp 0e59ah
	sbc a,c
	adc a,b
	ld l,e
l7999h:
	ld h,a
	sub a
	cp e
	ld h,e
	add a,l
	sbc a,(hl)
	ld a,a
	ld a,a
	cp h
	ld de,07fe9h
	sub l
	rst 38h
	ld e,0d7h
	xor 038h
	ld h,a
	dec b
	or h
	push hl
	push hl
	add a,l
	sub d
	adc a,c
	rrca
	out (071h),a
	sub a
	sub a
	ld a,a
	sbc a,l
	rrca
	cp 07fh
	ld c,0fah
	jp (hl)
	ret m
	sub c
	add hl,sp
	rst 38h
l79c4h:
	rst 20h
	cp 03eh
	dec c
	ld b,(hl)
	ld l,(hl)
	or a
	push hl
	ld b,098h
	jp p,09e24h
	jp m,00f6fh
	nop
	rst 38h
	call m,sub_6000h
	nop
	nop
	ld a,h
	sbc a,c
	nop
	nop
	inc hl
	ld (00310h),hl
	ld (01918h),hl
	sbc a,c
	ld hl,0110ah
	push af
	nop
	dec a
	djnz $+16
	dec hl
	rst 0
	jp (hl)
	ld c,c
	sbc a,c
	nop
	call po,0938fh
	inc sp
	add hl,sp
	ld h,0c3h
	jr nc,l7a20h
	ld (0117fh),a
	sbc a,c
	ld hl,01992h
	ld a,(bc)
	cp e
	or c
	or c
	ld (bc),a
	call po,002bbh
	or b
	nop
	ld e,b
	ld e,b
	sbc a,b
	ld d,l
	nop
	inc bc
	ld d,h
	adc a,c
l7a17h:
	add a,l
	ld d,l
	ld b,l
	ld d,l
	inc b
	daa
	ld a,l
	ld b,h
	nop
l7a20h:
	add a,b
	sbc a,b
	sbc a,b
	sub h
	sbc a,a
	inc b
	ld c,c
	ld a,l
	ret nz
	jr nz,l79c4h
	ld a,b
	inc sp
	ld de,03100h
	call po,0227fh
	jr nz,l7aaeh
	jr nz,$+4
	ld e,a
	ld bc,00b7fh
	ld d,l
	nop
	pop bc
	sub l
	nop
	ld c,a
	inc b
	ld e,c
	ld d,b
	adc a,h
	ld (de),a
	ld (02168h),hl
	ld a,(hl)
	jr nc,$+3
	ld de,052cfh
	ld a,a
	jp nz,0322ch
	ld hl,0297fh
	ret
	inc (hl)
	pop af
	ld e,010h
	ld (bc),a
	ld d,a
	ld bc,0e97fh
	sbc a,l
	sub c
	ld (0c47eh),hl
	add a,a
	add hl,hl
	ld c,a
	sbc a,c
	add a,b
	jp po,l7f51h
	cp 070h
	ld a,a
	or b
	rst 0
	nop
	cp e
	nop
	dec l
	or b
	nop
	defb 0fdh,07fh,02ah ;illegal sequence
	ld (hl),h
	res 2,e
	ld a,(hl)
	xor c
	nop
	add hl,hl
	add a,b
	cpl
	adc a,b
	djnz l7ac0h
	ld bc,07f19h
	ld h,b
	djnz l7a8dh
l7a8dh:
	inc sp
	inc sp
	dec sp
	ld b,h
	inc sp
	nop
l7a93h:
	or e
	jr nc,l7a17h
	rst 10h
	nop
	ld a,a
	jp nz,0f088h
	nop
	ld d,d
	sbc a,b
l7a9fh:
	nop
	inc b
	adc a,c
	call m,01d3eh
	ld a,(hl)
	ld e,h
	add hl,de
	ld b,b
	ld a,(hl)
	daa
	ld hl,0f181h
l7aaeh:
	ld de,0a792h
	call nz,0ebffh
	nop
	nop
	ld h,00ch
	dec hl
	add hl,sp
	dec de
	or d
	jr nz,l7ac9h
	ld a,a
	ret p
l7ac0h:
	ret m
	nop
	push bc
l7ac3h:
	cp 0f9h
	ccf
	rra
	ld a,(hl)
	inc b
l7ac9h:
	ld de,0fe03h
	ld c,h
	ld de,09c0ah
	ret nz
	xor c
	add hl,bc
	nop
	call m,sub_657bh
	nop
	inc hl
	ld (07004h),hl
	inc c
l7addh:
	inc sp
	add a,000h
	ld (07311h),a
	inc d
	ld a,(bc)
	ld b,a
	rst 38h
	jp z,08e98h
	rst 38h
	jr z,l7b6ch
	rst 38h
	ret m
	ld hl,(03c7eh)
	push bc
	ld c,e
	or a
	ret z
	cp 0e5h
	ld de,0b67dh
	add a,h
	push af
	or e
	sub d
	ld h,a
	ld (hl),d
	ld a,b
	ld (hl),l
	ld e,a
	add hl,de
	rst 38h
	ld d,h
	ret m
	cp h
	inc b
	sbc a,0ffh
	ld c,a
	rst 38h
	ret z
	sub l
	sbc a,a
l7b11h:
	rst 38h
	sbc a,b
	ld (de),a
	inc hl
	jp z,0377eh
	or (hl)
	ld d,d
	cp 030h
	ld de,0a312h
	push de
	ld d,a
l7b21h:
	ld d,000h
	add a,h
	cpl
	ld de,0e8a1h
	ret c
	ld a,h
	defb 0edh ;next byte illegal after ed
	and 009h
	or e
	add a,h
	ld b,c
	ld c,e
	ld (0f43bh),a
	ld bc,03012h
	ld (de),a
	or d
	djnz $-107
	add a,h
	add a,c
	adc a,c
	or e
	rst 38h
	pop af
	ex (sp),hl
	cpl
	ld a,a
	xor 08eh
	defb 0fdh,013h,010h ;illegal sequence
	ret nz
	sbc a,d
	inc b
	nop
	sbc a,e
	ld a,b
	djnz l7bcfh
	ld a,l
	ld d,a
	add a,e
	rst 8
	ld (hl),e
	ld c,a
	ld h,h
	ld (01800h),hl
	adc a,b
	and a
	rst 38h
	xor h
	nop
	adc a,07fh
	add hl,bc
	and e
	rst 38h
	jp p,0efa9h
	adc a,d
	scf
	add a,h
	ld c,l
l7b6ch:
	ld b,054h
	ld de,0c00dh
	cp b
	add a,d
	sub (hl)
	add a,e
	di
	ld c,d
	ret m
	sub c
	ld hl,08003h
	and 032h
	sub h
	and a
	cp (hl)
	ld sp,hl
	halt
	ld a,h
	inc b
	ld e,a
	ld bc,0c9ffh
	ld sp,hl
	sbc a,d
	sub h
	adc a,0ffh
	inc l
	ld a,(hl)
	rst 38h
	call p,0fc96h
	ld h,(hl)
	or 0a5h
	or a
	cp l
	ret nc
	sub l
	ret c
	sbc a,a
	ld b,(hl)
	ld de,0367fh
	ld a,l
	ld h,(hl)
	rra
	rst 30h
	and a
	nop
	sub e
	ld hl,03bffh
	ld b,(hl)
	jr nz,$+1
	ld c,h
	inc b
	ld (bc),a
l7bb1h:
	rst 38h
	jp c,0ff12h
	ld a,08bh
	cp 023h
l7bb9h:
	rst 38h
	rst 8
	ld a,(hl)
	cp c
	add a,e
	call z,0515bh
	ld (08709h),a
	ld d,c
	add hl,bc
	ret z
	or d
	sub (hl)
	sbc a,a
	ld a,(hl)
	dec de
	ld (08971h),a
l7bcfh:
	add a,c
	pop af
	sub h
	or b
	call nc,0f883h
	ld a,a
	dec h
	rst 38h
	pop af
	or 07eh
	rst 28h
	or d
	add a,e
	halt
	cp h
	ret c
	ld d,d
	ld hl,0870ah
	sub c
	ld e,a
	ld (de),a
	jr nz,$-121
	xor a
	ld a,(de)
	sub e
l7beeh:
	inc l
	and 078h
	add a,c
	ld l,(hl)
	ld a,(hl)
	ex de,hl
	xor a
	ld h,c
	ld a,a
	inc sp
	ld sp,0ba31h
	ld d,c
	ld sp,0b630h
	add hl,de
	inc b
	inc sp
	inc bc
	ld a,(bc)
	ld a,a
	pop af
	ret
	sub c
	inc hl
	adc a,061h
	ld bc,02ecbh
	ld a,(bc)
	ld sp,l617fh
	and c
	adc a,c
	ld hl,l548ch
	add a,b
	ld l,(hl)
	rst 28h
	ld a,h
	ld de,039feh
	inc hl
l7c20h:
	daa
	xor e
	push hl
	ld a,(hl)
	sub l
	djnz $-87
	xor d
	ld de,03fffh
	ld a,(bc)
	rst 38h
	call m,sub_7ffch
	ld h,d
	call pe,0cd96h
	inc hl
	cp 09ch
	call p,08ba3h
	adc a,h
	ld h,c
	sbc a,h
	add a,a
	ld b,(hl)
	ld (bc),a
	add a,b
	ld d,e
	add a,d
	or b
	sub d
	inc hl
	ld sp,0a0cah
	xor c
	ld e,d
	and (hl)
	add a,c
	ld l,l
	or b
	adc a,e
	xor b
	sbc a,0ffh
	ld (hl),a
	ld h,a
	ld c,0ffh
	push de
	rst 38h
	ld a,049h
	sub c
	defb 0fdh,05ah,0f4h ;illegal sequence
	ld e,c
	push bc
	call z,0d97eh
	dec b
	adc a,e
	ld h,(hl)
	add a,a
	ld (hl),d
	add hl,de
	ld h,e
	jr nz,l7c7dh
	add hl,hl
	ld a,(hl)
	adc a,0a9h
	sub (hl)
	add a,d
	jr z,l7c20h
	push hl
	ld bc,08bf2h
	xor b
	sbc a,e
	ld a,a
	push bc
l7c7dh:
	or h
	push hl
	ld (bc),a
	ret m
	ld l,h
	ld h,(hl)
	dec b
	ret z
	dec l
	rst 38h
	ld a,(03d6eh)
	pop af
	ld e,e
	rst 38h
	call c,079ffh
	ld sp,0c592h
	adc a,e
	ld l,e
	ld c,h
	xor c
	add hl,sp
	ld (de),a
	adc a,e
	ld c,l
	or d
	ld sp,0a783h
	rst 38h
	ld a,b
	xor e
	ret po
	ld de,0e391h
	ld hl,(09a9eh)
	ld h,(hl)
	sub b
	xor c
	ld c,l
	ex de,hl
	rst 38h
	dec hl
	call p,00228h
	or e
	inc bc
	inc b
	add hl,bc
	add a,h
	ld (0bbffh),hl
	push bc
	add a,d
	pop af
	ld h,l
	call m,0ffb1h
	ld l,h
	ld a,b
	ld a,a
	ld c,(hl)
	ex de,hl
	ld l,h
sub_7cc8h:
	ld d,e
	or a
	ld (hl),c
	or h
	inc h
	bit 2,a
	push af
	sub l
	adc a,e
	jp c,09910h
	sub c
	add hl,hl
	add a,e
	adc a,06ah
	sub d
	xor b
	sbc a,096h
	jp p,0e8deh
	inc hl
	rst 38h
	ld (hl),h
	ld a,a
	inc sp
	inc bc
	ld d,e
	jr nc,l7cf4h
	inc bc
	jr nc,l7cfch
	adc a,c
	inc c
	inc sp
	rst 38h
	rra
	dec c
l7cf3h:
	ld (hl),c
l7cf4h:
	rst 38h
	rst 28h
	inc d
	jp nc,l7f71h
	adc a,0fch
l7cfch:
	xor (hl)
	defb 0fdh,0aah,011h ;illegal sequence
	add a,b
	ld l,c
	adc a,b
	ret
	ret po
	in a,(0e9h)
	adc a,084h
	call nc,0fe39h
	ld (hl),a
	push af
	ld e,01ch
	pop af
	call z,sub_70a5h
	jr nc,$-112
	cp d
	ld b,d
	sbc a,c
	cp e
	dec bc
	or b
	ld (bc),a
	or e
	inc bc
	inc b
	add hl,bc
	add a,h
	cp e
	rst 38h
	ld a,h
	ld a,07fh
	inc sp
	rst 38h
	jp po,0ae91h
	call z,0ba66h
	adc a,d
	jp z,l56c5h
	cp h
	daa
	nop
	ld c,(hl)
	add hl,sp
	ld (bc),a
	rst 38h
	add hl,de
	exx
	xor c
	call z,00338h
	rst 28h
	adc a,b
	adc a,a
	cp 07ch
	ld de,0f123h
	add a,d
	inc hl
	nop
	add hl,bc
	rst 38h
	ccf
sub_7d4eh:
	ld e,d
	cp 079h
	and (hl)
	jp p,00111h
	rst 28h
	ld b,l
	or 03dh
	ld b,a
	rst 8
	ld de,0ab83h
	ld (de),a
	sub e
	cpl
	ex de,hl
	ld (de),a
	jr nz,l7cf3h
	sub (hl)
	ld c,(hl)
	add a,h
	dec sp
	di
	ld a,h
	add a,l
	ld c,e
	xor d
	ld (hl),0adh
	ld h,h
	scf
	add hl,de
	sbc a,a
	rst 38h
	jp nz,0ffa7h
	adc a,(hl)
	cp 079h
	call 0bafdh
	or h
	add a,h
	xor b
	add a,b
	ret c
	di
	xor b
	ret m
	adc a,l
	di
	sub d
	adc a,l
	sub e
	or 082h
	ld c,d
	add hl,de
	inc d
	ld c,e
	inc bc
	add a,b
	add a,h
	adc a,c
	ld l,a
	rst 20h
	call p,0eb11h
	nop
	ld a,(bc)
	adc a,l
	rst 38h
	rst 0
	nop
	nop
	sbc a,h
	pop bc
	and h
	rst 38h
	ld a,h
	ld e,000h
	ld a,07fh
	cpl
	inc hl
	ld a,a
	add hl,de
l7daeh:
	add a,l
	ret c
	ret
	xor a
	push af
	ld d,010h
l7db5h:
	ld a,d
	pop bc
	ld d,e
	adc a,(hl)
	sub a
	ld b,0dah
	ld l,083h
	ld l,0f4h
	dec d
	add a,d
	pop hl
	rst 30h
l7dc4h:
	inc l
	jp nc,l7a9fh
	nop
	ret po
	ld a,a
	ld de,0c1cdh
	adc a,b
	or c
	ld sp,017cch
	call c,032c1h
	defb 0fdh,004h,01ch ;illegal sequence
	call c,00e11h
	rst 38h
	ld a,h
	ld a,000h
	inc de
	rst 38h
	ld h,(hl)
	add a,a
	ld b,a
	sub e
sub_7de6h:
	inc c
l7de7h:
	inc hl
	jp 0fbeah
	or d
	ld l,d
	sub h
	add a,b
	xor h
	adc a,c
l7df1h:
	call nz,0da8bh
	sub d
	jp p,00047h
	ld a,a
	inc l
	inc hl
	jp nc,086cch
	ld de,0ba03h
	ret po
	sub c
	rst 30h
	ld a,c
	cp (hl)
	adc a,e
	defb 0fdh,07fh,0e7h ;illegal sequence
	rst 38h
	jp po,l554fh
	rst 38h
	pop bc
	cp 04ch
	add a,0cdh
	ld (07f09h),hl
	ld (bc),a
	inc hl
	add a,b
	ld e,c
	and l
	jp m,0d5ach
	ld h,d
	ld (bc),a
	sub 04fh
	add a,b
	add hl,bc
	ld (bc),a
	add a,b
	ld c,a
	ld a,a
	jr l7daeh
	ld sp,hl
	dec l
	sub h
	ld h,l
	or 084h
	djnz l7db5h
	ld sp,hl
	ld l,a
	rst 38h
	ret
	ld a,a
	call c,sub_75ffh
	pop de
	ld a,e
	call z,sub_622ch
	ld d,h
	add hl,bc
	add a,b
	ld e,c
	ld (hl),d
	djnz $+120
	ld (0199bh),a
	jr nc,l7e54h
	inc d
	ld d,c
	ld a,a
	ld b,000h
	add hl,sp
	adc a,b
	rst 38h
l7e54h:
	rla
	ld a,(hl)
l7e56h:
	and h
	rst 38h
	ld a,h
	jr c,l7edah
	ld e,b
	ld a,055h
	ld e,b
	ld a,a
	ld l,b
	rst 38h
	jp pe,091feh
	jr nz,l7e56h
	jr l7e7bh
	ld l,e
	ld de,039ddh
	ld a,h
	add a,b
	add hl,sp
	adc a,e
	ld h,085h
	xor 093h
	and e
l7e76h:
	nop
	ld a,a
	add a,h
	nop
	add a,b
l7e7bh:
	rst 28h
	ld a,a
	rst 0
	nop
	jp pe,0f700h
	nop
	jp (hl)
	ld a,a
	adc a,b
	rst 38h
	adc a,093h
	rst 38h
	defb 0edh,071h ;out (c),0
	ld e,d
	ld a,(hl)
	jp p,0c2c4h
	ld (hl),c
l7e92h:
	add a,b
	dec hl
	ld (bc),a
	adc a,b
	add hl,de
	exx
	jp c,0da93h
	add a,b
	ld l,a
	ld b,03fh
	ld a,(hl)
	ld (bc),a
	rst 38h
	ld a,082h
	ld b,h
	ld b,l
	rst 38h
	ld a,0aah
	ld e,h
	xor d
	push de
	ld (0d47fh),hl
	add a,b
	sub e
	ld a,h
	ld (bc),a
	jp z,021e4h
	ret po
	di
	call nz,01ac9h
	or e
	ld (08632h),hl
	cp 018h
	rst 38h
	call m,sub_6e9dh
	jp m,0127fh
	sub c
	ret p
	add hl,de
	adc a,b
	add a,b
	ld h,h
	cp a
	adc a,e
	adc a,l
	ld l,h
	jp m,012d4h
l7ed5h:
	add hl,de
	sub d
l7ed7h:
	add a,b
	push bc
	sub d
l7edah:
	and (hl)
	sub c
	xor (hl)
	ld a,a
	add hl,hl
	ld (01191h),hl
	add hl,hl
	rst 38h
	jp m,l7fffh
	ld h,b
	sub d
	ld sp,0a508h
	ld a,a
	cp 03bh
	ld a,a
	sbc a,d
	add a,b
	add a,b
	sub l
	sbc a,c
l7ef5h:
	add a,b
	inc l
	ld h,l
	ld a,a
	ld a,b
	adc a,e
	ld e,d
	jr nz,$-116
	add a,c
l7effh:
	adc a,c
l7f00h:
	or e
	ld a,b
	jp (hl)
	xor e
	jp 03290h
	jp z,0a993h
	dec h
	ld (bc),a
	ld a,a
	ret m
	dec de
	ld b,043h
	inc sp
	djnz l7f35h
	ld c,027h
	jp (ix)
	ld a,(029f1h)
	ld hl,0e47fh
	jp c,0deffh
	ld c,d
	ld l,c
	add a,b
	ld l,e
	ld b,0ceh
	push de
	sub b
	inc d
	add a,l
	add a,h
	add a,c
	sbc a,h
	ld a,a
l7f2fh:
	ld (08033h),hl
	sub a
sub_7f33h:
	add a,b
l7f34h:
	and c
l7f35h:
	ld (0cc86h),a
	ex (sp),hl
	ld a,a
	dec bc
l7f3bh:
	ld a,a
sub_7f3ch:
	ld b,(hl)
	ld (020b2h),hl
	ld a,a
	and a
	or b
	ld c,b
	ld d,h
	rst 20h
	add a,a
	ld e,b
sub_7f48h:
	sub h
l7f49h:
	rst 28h
l7f4ah:
	or e
	ret m
	ex de,hl
	rst 38h
sub_7f4eh:
	inc de
	ld d,h
	dec b
l7f51h:
	dec a
	djnz l7f85h
	ld a,a
	nop
	cp 023h
l7f58h:
	ld (de),a
	out (0dch),a
	ld l,c
	add a,b
	ld l,c
	ld a,a
	inc c
	ld hl,02cd0h
	or a
	inc hl
	add a,l
sub_7f66h:
	ld a,b
	ld a,a
	adc a,c
	add a,b
sub_7f6ah:
	ld (bc),a
	ld a,(hl)
l7f6ch:
	di
	ld sp,08e93h
	sub a
l7f71h:
	sbc a,c
	ld a,a
	ld (hl),c
	rst 38h
	sub 07fh
l7f77h:
	ld c,d
	rst 20h
l7f79h:
	ld h,e
	add a,c
	add hl,de
	nop
	ret m
l7f7eh:
	set 5,(hl)
	inc h
	ld sp,hl
	or c
l7f83h:
	djnz l7f6ch
l7f85h:
	ld l,a
	ld l,(hl)
	or h
	ld a,(hl)
sub_7f89h:
	rst 28h
sub_7f8ah:
	ld b,a
	defb 0fdh,054h ;ld d,iyh
	add a,b
	xor d
l7f8fh:
	ld sp,01e80h
	ld de,0127fh
	rst 38h
sub_7f96h:
	ld b,(hl)
	ret m
	ld c,a
l7f99h:
	inc b
	inc hl
	add a,h
	push de
l7f9dh:
	jr nc,$-125
	dec a
	ld d,d
	xor a
	adc a,b
	inc sp
	rst 38h
	ld sp,hl
	ld d,c
	sbc a,b
l7fa8h:
	rst 38h
	rst 30h
	ld d,(hl)
	call po,0de72h
	ld e,a
l7fafh:
	ex af,af'
	push de
	defb 0ddh,080h,06eh ;illegal sequence
	ld c,04eh
	add a,b
	add a,0d6h
	jr c,l7fddh
	add a,(hl)
	add a,07fh
	ld (bc),a
	adc a,e
	ld e,(hl)
	ret nc
l7fc2h:
	add a,l
	inc sp
l7fc4h:
	ld (bc),a
	rst 38h
	dec a
l7fc7h:
	rst 18h
	ld a,a
l7fc9h:
	and a
	ret pe
	dec d
sub_7fcch:
	ld a,a
	and 044h
l7fcfh:
	ld l,c
	sub c
	defb 0edh ;next byte illegal after ed
	ld a,a
	sub d
	adc a,c
	ret m
	add hl,de
l7fd7h:
	jp (hl)
	ld a,a
l7fd9h:
	sbc a,c
	add a,(hl)
	set 1,(hl)
l7fddh:
	dec hl
l7fdeh:
	defb 0ddh,047h,0cdh ;illegal sequence
	ld h,h
	add a,b
	cp l
sub_7fe4h:
	sbc a,(hl)
	ld a,a
sub_7fe6h:
	ld d,d
	rst 38h
	jp po,0ab94h
l7febh:
	rst 30h
	ld a,a
	cp b
	nop
	ld d,h
	ld d,l
	or e
	ld hl,00e10h
	cp (hl)
	djnz $+119
	ld a,a
l7ff9h:
	nop
sub_7ffah:
	xor 024h
sub_7ffch:
	ret pe
	ld c,a
	sub c
l7fffh:
	ld e,e
