; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank07.asm /tmp/smanbow2_bank.bin

	org 04000h

	dec h
	pop bc
	adc a,a
	add a,b
	nop
	dec b
	ld d,(hl)
	ld (hl),a
	cp e
	ld b,(hl)
	ld h,h
	push hl
	call m,0d27fh
	jr l4066h
	pop af
	ret pe
	ld a,a
	ld (hl),a
	ld (hl),l
	ld b,(hl)
	dec l
	xor h
	ret z
	call p,01c16h
	ld l,c
	ld (de),a
	add hl,hl
	ld a,d
	ld de,09949h
	add a,(hl)
	call z,0e680h
	adc a,e
	ret po
	sub a
	cp e
	ld h,b
	rst 18h
	rst 38h
	cp l
	add hl,bc
	ld a,a
	ret c
	ld (01191h),hl
	cp d
	pop bc
	ld c,e
	ld (hl),d
	ld d,l
	ld a,a
	ld b,(hl)
	ld a,(bc)
	ld h,a
	ld a,e
	ld (hl),l
	ld d,b
	ld h,l
	jp nz,l7fb7h
	call po,sub_4548h
	defb 0fdh,076h,046h ;illegal sequence
	ld h,c
	add a,b
	ld (hl),050h
	inc l
	dec bc
	dec c
	ld h,(hl)
	ld h,c
	or c
	ld (de),a
	ld a,b
	ld d,e
	ld b,h
	cp 053h
	adc a,a
	ld b,(hl)
	adc a,b
	ld sp,l7f92h
	or (hl)
	rst 38h
	rst 18h
	adc a,(hl)
l4066h:
	ld (bc),a
	ld e,h
	add hl,hl
	ld a,a
	ret nz
	rlca
	ld (hl),l
	ld b,l
	ld a,e
	ld d,b
	ld a,a
	inc de
	rst 38h
	jr nc,$+121
	ld a,a
	ld hl,l75bbh
	ld (0453fh),hl
	push hl
	xor h
	inc e
l407fh:
	ld b,d
	ld a,a
	rla
	ld (hl),l
	ld h,l
	jp p,0e3abh
	jp po,028b3h
	add a,b
	jp l6177h
	ei
	ei
	adc a,(hl)
	add a,(hl)
	ld e,c
	ld c,c
	adc a,b
	and e
	sub (hl)
	ld (hl),a
	halt
	ld a,a
	and 0efh
	jp nc,0f029h
	push hl
	ld b,d
	xor (hl)
	dec d
	adc a,001h
	ld d,l
	inc h
	ld d,d
	ld h,a
	push af
	add hl,de
	ld c,082h
	ld b,h
	ld d,(hl)
	ld h,a
	rst 38h
	ld c,c
	ld a,a
	ld (hl),a
	ld a,a
	di
	and d
	ld d,(hl)
	ei
	jr z,l412dh
	add hl,hl
	ld (0b584h),a
	dec c
	sub l
	adc a,c
	ld h,h
	add a,b
	ld c,d
	ld (hl),d
	xor 03ch
	ld e,a
	and e
	rst 38h
	ld h,h
	ld a,a
	ld h,(hl)
	nop
	ld h,b
	cp a
	rst 38h
	sub (hl)
	rst 38h
	ld a,l
	call z,sub_7456h
	jp nz,l52c3h
	ld d,d
	halt
	ld (de),a
	ld d,b
	call p,002abh
	defb 0ddh,04ch ;ld c,ixh
	jp nc,08922h
	ld c,e
	ld de,l5effh
	jr nc,l4168h
	ld l,0fdh
	ld b,b
	ld h,c
	rla
	ld d,d
	ld l,(hl)
	add hl,hl
	call pe,sub_7133h
	add a,d
	sub h
	sbc a,c
	add a,d
	xor d
	ld e,c
	add a,c
	ld e,h
	ld c,c
	ld b,l
	sbc a,c
	rst 38h
	ld d,e
	ld e,c
	ld d,l
	ld a,a
	adc a,(hl)
	rst 38h
	ret m
	ld a,a
	ret nc
	jp nc,0f9c3h
	call nz,011b9h
	ld (hl),a
	dec d
	ld h,a
	jr c,$+104
	ld d,b
	call p,sub_7e29h
	sub (hl)
	rst 8
	adc a,h
	inc h
	inc bc
	adc a,e
	adc a,c
	ld a,a
	sbc a,(hl)
	add a,d
	jp p,0abaeh
	ld (hl),0efh
	ld (de),a
	rla
l412dh:
	ld d,l
	add hl,hl
	and 01bh
	ld d,l
	or a
	dec c
	add a,(hl)
	ld b,d
	add hl,de
	adc a,c
	ld hl,l6b16h
	or l
	defb 0fdh,01eh,033h ;illegal sequence
	ld a,b
	sub d
	add a,a
	sub l
	ld d,h
	sbc a,d
	add a,l
	add a,0d3h
	pop af
	pop af
	ei
	ld a,a
	and (hl)
	ld (bc),a
	jp z,01226h
	add hl,de
	call z,0b288h
	ld a,e
	dec d
	ld c,d
	nop
	call p,sub_540ch
	ld b,l
	ld (l4300h),hl
	ld b,d
	ld (bc),a
	ld d,d
	ld (bc),a
	jr nz,l4191h
	xor a
	ld a,a
l4168h:
	add a,b
	ld h,c
	dec d
	add a,(hl)
	ld h,092h
	ld d,d
	ld (hl),a
	dec c
	ex af,af'
	ld d,a
	cp e
	cp e
	cp d
	adc a,d
	sbc a,c
	ld h,c
	cp (hl)
	and l
	add a,b
	call nz,sub_5744h
	jr c,$+107
	add hl,hl
	add a,a
	ld d,c
	sub a
	call 07c49h
	ld a,a
	daa
	sub b
	sub b
	rst 8
	ld a,e
	and l
	dec b
	jp (hl)
l4191h:
	ld c,011h
	add hl,hl
	cp c
	ld c,h
	add a,088h
	ld b,b
	nop
	ld a,(bc)
	daa
	or a
	sub h
	ld a,a
	ld de,l7e00h
	sub d
	sub l
	add a,c
	rst 20h
	or d
	ld l,02fh
	call po,0c89dh
	call c,sub_5521h
	inc c
	ld h,d
	ld d,h
	sub l
	ld d,a
	ld a,a
	inc l
	dec h
l41b7h:
	dec de
	ei
	ld b,c
	ld d,a
	ld a,e
	sub (hl)
	ld d,c
	ld h,a
	ld (hl),h
	ld d,h
	jp po,02246h
	ld a,c
	ld b,d
	cp 04dh
	sub (hl)
	call 0f48ch
	adc a,d
	out (080h),a
	call pe,0f500h
	ld a,(hl)
	ld h,d
	sbc a,c
	ld a,(hl)
	ld d,a
	ld a,a
	cp c
	call m,08012h
	ld e,c
	ld l,a
	cp b
	rst 8
	ex af,af'
	sub (hl)
	ld a,e
	ld d,d
	ld a,l
	dec de
	or a
	or b
	ld a,l
	jp nz,0d7c1h
	ld d,b
	or l
	ld a,(hl)
	jp po,05055h
	dec b
	sub 061h
	ld d,c
	add hl,de
	ld d,(hl)
	di
	ld h,h
	and 096h
	halt
	ei
	nop
	ld d,c
	or c
	dec hl
	ld (de),a
	sub c
	or c
	xor l
l4206h:
	sub d
	sub c
	dec h
	dec l
	ld d,h
sub_420bh:
	ret po
	ld b,h
	ld (l4669h),hl
	rst 8
	ld d,e
	ld b,h
	inc hl
	add a,c
	dec l
	ld d,(hl)
	rst 38h
	rst 28h
sub_4219h:
	ld c,d
	ld (bc),a
	ex de,hl
	and e
	ld hl,l757fh
	sub c
	rst 8
	add hl,hl
	inc sp
	sub c
	ret p
	dec h
	ld e,(hl)
	cp d
	push af
	sbc a,041h
	ld a,e
	or a
	sbc a,c
	ld hl,0f9c4h
	adc a,h
	ld d,a
	cpl
	cp l
	and c
	inc d
	ld d,(hl)
	nop
	dec d
	sub c
	inc h
	halt
	cp 004h
	ld (hl),l
	sbc a,c
	ld d,(hl)
	ld b,h
l4244h:
	adc a,h
	adc a,c
l4246h:
	or a
	ex de,hl
	dec hl
	ld a,(0912dh)
	inc sp
	add a,d
	ld e,e
	xor h
	rst 38h
	ld d,b
	ld b,l
	pop de
l4254h:
	ld (hl),l
	cp d
	adc a,b
	rst 0
	jp p,0defch
	call z,08400h
	ld a,d
	ld (de),a
	ld de,03c19h
	ld (hl),a
	ld (02517h),hl
	rst 38h
	jr nz,l42bch
	sbc a,c
	inc c
l426ch:
	nop
	inc h
	ld d,(hl)
	ld h,l
	ld d,d
	ld b,d
	ld c,000h
	add hl,hl
	djnz l4206h
	ld b,07bh
sub_4279h:
	jr nz,l42b6h
	ld a,(hl)
	sbc a,c
	jr nz,l42fch
	ld l,e
	or a
	ld d,h
	ld h,a
	ret nc
	and c
	sub l
	ld h,a
	sub b
	push af
	ld h,(hl)
	ld h,h
	ld a,(hl)
	ld d,l
	ret p
	ld c,h
	ld b,h
	ld (hl),a
	ld b,d
	add hl,sp
	ld h,(hl)
	dec de
	cp 00dh
	sub h
	ld e,c
	add a,d
	ld h,h
	sub h
	halt
	ex af,af'
	sbc a,c
	sub a
	ld c,c
	sub l
	xor d
	sub h
	ld h,a
	rst 38h
	pop af
	ld a,d
	dec c
	ld (bc),a
	daa
	ld (hl),a
	ld de,02592h
	rst 28h
	ld (hl),d
	defb 0edh ;next byte illegal after ed
	ld l,l
	or c
	pop bc
	sub c
l42b6h:
	ld a,e
	ld (hl),c
	adc a,a
	jr nz,l426ch
	ld d,l
l42bch:
	ld d,d
	jp z,0907fh
	inc d
	sub l
	inc d
	add a,(hl)
	adc a,a
	or d
	ld a,h
	dec a
	xor l
	ld e,h
	ld a,a
	ld c,b
	ld h,a
	sbc a,h
	ld h,l
	ld h,c
	ld d,(hl)
	ld a,a
	ld e,c
	sub l
	adc a,c
	jr z,l432bh
	ld a,(de)
	sub a
	ld b,h
	ld b,h
	ld a,a
	ld (01654h),hl
	add a,d
	ld (hl),l
	or h
	jp m,0562fh
	ld l,c
	add a,e
	and b
	sub (hl)
	sbc a,c
	ld e,c
	ld b,l
	rst 8
	rra
	ld a,(hl)
	add a,(hl)
	rst 38h
	dec a
	ld c,c
	rla
	or a
	ld a,d
	add hl,hl
	ex de,hl
	ld (hl),0b0h
	xor 080h
l42fch:
	inc de
	ret z
	ld (hl),0b1h
l4300h:
	jp c,08f9dh
	and (hl)
	ld a,d
	jp m,l7fc8h
	add a,a
	sub (hl)
	ld (hl),d
	xor c
	ex de,hl
	add a,d
	ld d,07fh
	ld c,d
	sbc a,h
	ld (de),a
	ld d,h
	ld b,(hl)
	add a,b
	dec l
	ld h,l
	ret po
	ld hl,0455fh
	sub l
	ld (hl),l
	rst 38h
	call nz,0192fh
	ld h,094h
	ld h,(hl)
	add a,b
	ld (01571h),hl
	rst 30h
	add hl,sp
l432bh:
	ld b,l
	halt
	dec l
	call nz,02781h
	ld d,h
	sub h
	xor d
	dec l
	defb 0fdh,0edh,0c2h ;illegal sequence
	ld a,a
	ld (hl),c
	ld de,l48f6h
	add a,b
	cp c
	xor (hl)
	scf
	ld (hl),a
	ld a,a
	add hl,bc
	ld b,h
	ld b,d
	ld b,022h
	rst 18h
	sbc a,h
	ld a,d
	jp po,08645h
	cp 01eh
	ld e,c
	ld a,(hl)
	inc a
	jr z,l43bbh
	ld (hl),e
	ld a,(hl)
	ld h,(hl)
	ld b,d
	rst 0
	ld a,c
	ld h,l
	ret m
	sub c
	ret po
	sbc a,h
	cp 018h
	ld d,a
	ld a,c
	add hl,hl
	dec d
	ld h,(hl)
	sub d
	add a,d
	ld d,d
	add a,(hl)
	inc a
	sbc a,c
	and (iy-07dh)
	sbc a,b
	ld l,c
	sub h
	rra
	ld h,l
	ld b,l
	ld a,a
	rla
	rrca
	or h
	jp pe,l4962h
	ret z
	rst 28h
	xor a
	ret z
	rst 30h
	sub h
	ld d,d
	ld bc,0d7ffh
	sub 05eh
	ret m
	ld e,l
	adc a,c
	ret nc
	ei
	add a,b
	ld c,c
	rst 10h
	call c,081c7h
	sub c
	add hl,bc
	ld h,l
	sub 058h
	ld h,l
	or d
	rst 10h
	xor h
	ld l,l
	ld a,a
	ld b,d
	ld d,h
	dec bc
	ld h,h
	ld e,c
	sub a
	jr $-32
	ld a,a
	add a,l
	pop bc
	ld h,(hl)
	sub c
	add hl,de
	ld a,a
	inc a
	ld b,(hl)
	cpl
	ld l,d
	ld a,a
	rra
	rst 38h
	cp (hl)
	call p,06392h
	ld e,c
	or e
l43bbh:
	jp (hl)
	ld l,e
	ld h,l
	add a,(hl)
	ld (08679h),a
	adc a,e
	rlca
	call 021f5h
	rrca
	ld l,c
	pop bc
	sub a
	inc a
	ld c,e
	cp l
	xor b
	ld d,h
	ld d,h
	ld h,l
	adc a,d
	xor d
	ld d,(hl)
	ld d,d
	ld d,(hl)
	inc b
	ld a,h
	ld h,l
	ld bc,0858ah
	ret p
	sub e
	add a,c
	adc a,d
	ld a,a
	call pe,0ffa9h
	rra
	ld h,l
	add a,b
	xor l
	ld b,h
	add a,(hl)
	ld (hl),b
	sub c
	adc a,d
	ld d,l
	nop
	ld (hl),h
	inc c
	xor c
	rst 18h
	add a,a
	adc a,e
	nop
	sbc a,d
	ret m
	dec h
	ld a,h
	dec h
	call pe,0eb65h
	sbc a,b
	ld (hl),l
	sub c
	rst 0
l4403h:
	rrca
	add hl,hl
	rrca
	ld (hl),c
	adc a,(hl)
sub_4408h:
	cp a
	ld l,002h
	ld d,(hl)
	push af
	ld l,000h
	ld d,(hl)
	ld b,h
	sbc a,0c3h
	ld h,(hl)
	jp po,0932ch
	ld c,l
	sub b
	inc b
	ld d,l
	sub h
	ld b,c
	add a,b
	adc a,e
	inc d
	sub b
	jr c,l4446h
l4423h:
	jp pe,084cdh
	exx
	ld (l6547h),hl
	and a
	rst 30h
	rst 28h
	sub a
	nop
	rst 0
	ld (de),a
	inc hl
	rst 38h
sub_4433h:
	add hl,hl
	ld l,d
	jp nz,0d136h
	xor 0c2h
	sbc a,l
	add hl,hl
	rrca
	push bc
	cp 0f3h
	inc l
	ld a,d
	nop
	cpl
	ld d,l
	add a,b
l4446h:
	ld d,h
	halt
	add a,d
	sub a
l444ah:
	ld sp,hl
	ld c,d
	defb 0ddh,024h ;inc ixh
	ld (hl),a
	jp po,00789h
	ld e,c
	ld d,c
	adc a,l
	xor (hl)
	add a,(hl)
l4457h:
	sub b
	or b
l4459h:
	ld h,c
	ld d,067h
	ld d,h
	cp 048h
	add hl,hl
	add a,b
	jp pe,0cea0h
	add a,b
	jr l4468h
	inc (hl)
l4468h:
	ld bc,002d6h
	djnz l446fh
	cp h
	ld a,(bc)
l446fh:
	ld c,e
	pop af
	ei
	ld (hl),a
	ld a,a
	cp a
	add hl,bc
	cp (hl)
	xor d
	rst 30h
	sbc a,e
	cp 07fh
	cp a
	rrca
	ld h,090h
	inc hl
	inc a
	jr nz,$+53
	exx
	ld b,l
	ld a,(hl)
	ld a,a
	ret nz
	ld h,l
	ld d,a
	ld b,h
	push de
	ld a,a
	ld h,h
	add a,c
	ld bc,09154h
	ld d,d
	ld d,l
	cp (hl)
	and d
	ld b,c
	add a,b
	call z,0af96h
	cp 09ch
	call m,0864dh
	ld h,h
	ld b,l
	ld h,a
l44a4h:
	rst 10h
	ld a,a
	and b
	ld a,h
	ld (hl),h
	ld (bc),a
	jp z,l547ah
	ld h,d
	call p,0f092h
	xor c
	add hl,hl
	ld b,b
	sub d
	rst 30h
	ld (hl),085h
	inc d
	adc a,(hl)
	cp c
	ld (bc),a
	add a,(hl)
	xor c
	rrca
	pop hl
	dec e
	ld l,a
	inc h
	inc (hl)
	sub h
	cp 0b3h
	ld a,a
	ld d,(hl)
	in a,(04dh)
	cp 084h
	ld l,c
	adc a,d
	ld c,b
	ld b,l
	ld (hl),049h
	ld (de),a
	sub b
	dec e
	sub d
	ld b,(hl)
	ld de,08494h
	ld b,l
	ld b,l
	ret m
	ld (hl),c
	sub c
	ld h,(hl)
	add a,e
	ld (hl),b
	ld b,h
	ld b,a
	sub l
	ld a,a
	ld a,(bc)
	and b
	ld a,a
	ld (hl),e
	dec b
	jr nz,l456dh
	adc a,0e1h
	ld d,e
	ex (sp),hl
	sub d
	ld sp,hl
	or c
	ld hl,l5ce4h
	ld b,(hl)
	defb 0edh ;next byte illegal after ed
	ld l,h
	ld l,a
	pop af
	call po,0aff5h
l4500h:
	rrca
	add a,l
	adc a,e
	dec d
	ld b,027h
	sbc a,c
	call nz,sub_78ffh
	or b
	ld d,(hl)
	ld (hl),l
	ld h,a
	ld h,a
	sub l
	ld a,b
	ld d,l
l4512h:
	add a,a
	sbc a,b
	cp 098h
	ld c,065h
	ld h,049h
	dec d
	ld sp,hl
	ld l,d
	sub h
	add a,b
	ld c,b
sub_4520h:
	sbc a,d
	ld b,(hl)
	cp (hl)
	call m,sub_499bh
	xor l
	exx
	ld h,l
	inc bc
	inc (hl)
	cp l
	ld a,a
	ld b,a
	rst 38h
	sub d
	ld (bc),a
	ret po
	add a,e
	ld a,e
	cp e
	call po,06332h
	call c,09ebch
	xor (hl)
	ld c,095h
	ld (0227bh),hl
	ld sp,hl
	cp h
	ld (hl),d
	rrca
	ld l,e
	sbc a,(hl)
	ld e,c
sub_4548h:
	ld de,02ceah
	or a
	adc a,h
	sbc a,(hl)
	add a,h
	rst 20h
	call p,08027h
	ld (hl),b
	ld a,b
	ld h,d
	ld b,(hl)
	adc a,h
	add a,b
	ld h,d
	ld d,h
	inc c
	ld h,h
	jp m,l44a4h
	xor a
	ld h,b
	ld d,069h
	ld b,c
	inc hl
	ld h,c
	ld d,(hl)
	or h
	sbc a,e
	add a,a
	ld e,c
	adc a,b
l456dh:
	jp po,0a79ah
	and c
	ld a,a
	and h
	cp 0f8h
	jr c,l457ch
	pop af
	call m,026b7h
	ld (hl),d
l457ch:
	ld h,d
	ld l,l
	ld hl,098e4h
	call po,0b2b3h
	ld e,d
	defb 0edh ;next byte illegal after ed
	push hl
	ld a,a
	ld b,b
	cp 049h
	ld (hl),a
	sbc a,c
	rrca
	sbc a,b
	dec (hl)
	adc a,h
	inc hl
	ld h,0a1h
	ld l,h
	ld hl,(l713bh)
	ld d,b
	ld a,a
	push de
	call nc,00099h
	ld d,l
	in a,(02ch)
sub_45a1h:
	ld d,h
	sbc a,0d1h
	add a,b
	inc h
	add a,(hl)
	dec h
	adc a,d
	and d
	inc d
	ld l,a
	ld d,042h
	inc h
	ld h,(hl)
	sbc a,e
	ld d,l
	ld a,a
	or l
	ld d,(hl)
	call m,094b9h
	ld a,a
	jp p,013a1h
	ld l,l
	ld a,(bc)
	ld (hl),d
	or 011h
	ld sp,hl
	rst 8
	ld a,a
	adc a,d
	daa
	ld d,d
	ld c,c
	or a
	rst 10h
	or a
	ld d,h
	ld h,c
	ld hl,0859ch
	adc a,b
	call pe,06546h
	exx
	call 08849h
	cp h
	ld h,l
	ld bc,01bfeh
	ex af,af'
	rrca
	inc d
	add hl,hl
	inc h
	adc a,l
l45e3h:
	sbc a,h
	adc a,l
	sub d
	xor d
	add a,l
	cp e
	ld (hl),d
	rst 38h
	ld a,b
	ld (hl),b
	nop
	ld d,h
	ld d,d
	dec h
	add a,b
	ld hl,(02a69h)
	ld a,a
	adc a,d
	push af
	ld c,c
	ld h,04dh
	call pe,0a893h
	dec d
	jr c,l4658h
	ld h,a
	pop bc
	ld l,e
	ld e,c
	cp 049h
	sub h
	add a,a
	ld b,c
	ld d,a
	ld l,c
	nop
	ld (hl),d
	adc a,07fh
	xor c
	and b
	dec b
sub_4613h:
	adc a,l
	ex (sp),hl
	ld a,a
	sbc a,l
	rst 30h
	ld c,h
	call pe,02c4ah
	rst 18h
	ld c,c
	rst 20h
	ld c,(hl)
	ret
	ld b,h
	ld e,c
	rst 28h
	ld d,d
	add a,b
	xor d
	add hl,hl
	ld (hl),b
	cp 092h
	or 093h
	dec bc
	dec h
	dec b
	inc h
	add hl,de
	dec h
	cp e
	adc a,(hl)
	ld a,b
	ld a,a
	ld b,(hl)
	out (027h),a
	ld d,(hl)
	call m,04111h
	ei
	ld (hl),h
	defb 0ddh,052h,093h ;illegal sequence
	xor c
	adc a,(hl)
	add hl,hl
	adc a,a
	call z,sub_4bf2h
	add hl,hl
	or (hl)
	ld c,d
	rst 38h
	ld c,e
	add a,d
	adc a,b
	ld d,0b7h
	cp h
	and e
	jp m,l4457h
l4658h:
	adc a,c
	ret
	ld a,c
	nop
l465ch:
	ld (hl),d
	inc hl
	jr nc,l45e3h
	inc hl
	ld sp,hl
	inc d
	and b
	ld a,a
	inc c
	ld bc,l46e9h
l4669h:
	ld hl,099efh
	xor 03ah
	dec h
	sbc a,07fh
	xor d
	ld b,b
	ld h,a
	cp e
	ld l,c
	ld d,(hl)
	call z,0126fh
	and d
	adc a,a
	ld a,l
	xor h
	sub h
l467fh:
	sub c
l4680h:
	ld b,l
	ld hl,0968fh
	ld a,a
	sub l
	and l
	dec c
	adc a,c
	cp e
	jr c,l465ch
	ld h,b
sub_468dh:
	dec b
	ld d,l
	cp d
	pop af
sub_4691h:
	ld (bc),a
	ld c,d
	or a
	jp p,l522fh
	or 014h
sub_4699h:
	dec d
	adc a,(hl)
	or a
	or 059h
	cpl
	xor h
	sub (hl)
	add a,c
	ld h,d
	ld a,a
	ld h,(hl)
	ret c
	dec h
	ld (03681h),hl
	ld c,c
	adc a,h
	ld b,069h
	ld a,(bc)
	ld a,a
	ld c,d
	and b
	add a,e
	ld b,(hl)
	add a,(hl)
	ex (sp),hl
	dec b
	and b
	ld b,(hl)
	and a
	sub l
	call pe,sub_5bd4h
	or l
	and 06bh
	ex af,af'
	daa
	ld (de),a
	or d
	and a
	and b
	ld a,a
	ld a,c
	ld h,(hl)
	add hl,hl
	ld d,d
	in a,(07fh)
	rrca
	adc a,c
	ld (hl),d
	sbc a,h
	pop de
	sub d
	sbc a,h
	ld d,(hl)
	ld a,a
	or e
	dec h
	ret nc
	adc a,h
	ret po
	sbc a,l
	ld e,c
	jr c,l4730h
	add a,a
	ld b,h
	add a,c
	nop
	ld d,c
	ld d,077h
	ld a,c
	ld c,c
l46e9h:
	and d
	adc a,c
	sbc a,e
	ld sp,04551h
	add a,e
	or a
	add a,d
	add hl,de
	xor (hl)
	sub a
	add a,b
	ld c,b
	add a,c
	ld d,048h
	ld d,l
	add a,c
	ld de,l6779h
	sbc a,h
	defb 0edh ;next byte illegal after ed
	sbc a,(hl)
	inc (hl)
	adc a,b
	ld (hl),003h
	ld a,b
	or 051h
	ld a,(bc)
	ld b,024h
	and e
l470dh:
	add a,d
	ld (hl),h
	and e
	ld b,l
	add hl,bc
	sub h
	jp pe,04552h
	ld l,h
	or e
	add hl,sp
	ld (hl),d
	add a,c
	ld d,h
	ld de,l5db9h
	pop de
	ret z
	add a,h
	push bc
	and (hl)
	rst 38h
	sub e
	cp 092h
	ret nz
	sub (hl)
	ld e,d
l472bh:
	ld a,a
	ld (hl),d
	add a,a
	ld b,l
	and c
l4730h:
	dec bc
	ld h,e
	dec c
	ld d,h
	ld l,035h
	adc a,b
	and l
	ld b,b
	cp c
	jp po,0e821h
	ld d,d
	ld h,l
	xor c
	dec e
	ld a,a
	add a,00dh
	inc d
	ld d,l
	add a,c
	or l
	cp c
	jr nc,l477ah
	ld b,h
	ld (l6744h),hl
	adc a,e
	ld h,l
	dec c
	ld de,01756h
	ld (hl),l
	rst 38h
l4757h:
	ld h,(hl)
	add a,e
	sbc a,b
	ld (hl),h
	sub b
	ld a,a
	and b
	adc a,006h
	dec b
	inc sp
	rst 30h
	sbc a,c
	and d
	set 6,(hl)
	ld h,d
	di
	ld sp,hl
	dec l
	ld de,0c624h
	ld hl,(09281h)
	rst 28h
	di
	ld c,b
	add a,0b9h
	or c
	dec e
	sub d
	rst 38h
l477ah:
	and l
	sub d
	ld (de),a
	adc a,(hl)
	dec l
	sub e
	ld e,c
	ld c,090h
	ld d,a
	ret c
	and l
	rrca
	ld a,a
	jp z,03e04h
	inc h
	ld hl,08016h
	inc e
	ld h,a
	ld (hl),l
	ld (l62f6h),hl
	jp nz,0e94eh
	ld d,c
	ld sp,hl
	cpl
	xor d
	sub h
	add a,b
	ld c,h
	djnz l472bh
	add a,b
	jp z,0d929h
	call z,0e380h
	ld a,a
	ret po
	sbc a,e
	ld (bc),a
	ld a,(bc)
	ld a,(hl)
	or l
	inc d
	jr nz,l47d6h
	ld c,(hl)
	ld (hl),a
	rst 30h
	or a
	ld b,d
	ld e,(hl)
	add a,b
	ld sp,l4459h
	ld e,c
	add a,b
	cp 05bh
	ld (hl),h
	ld c,(hl)
	cp 062h
	ld a,a
	ld hl,l6e7fh
	add hl,hl
	rrca
	ld a,a
	call 082e8h
	add a,a
	sbc a,d
	ld h,l
	add a,d
	jr l4757h
	push bc
	ld a,a
l47d6h:
	add a,b
	dec h
	ret pe
	sub d
	and 089h
	ld e,c
	cp 0bch
	xor 08dh
	sbc a,l
	push de
	ld hl,(07f21h)
	rlca
	ld d,065h
	ld b,c
	rla
	add a,l
	out (09bh),a
	dec (hl)
	ld (hl),l
	push bc
	scf
	add a,c
	and a
	nop
	ld a,a
	ld e,b
	ld a,h
	nop
	ld d,(hl)
	and e
	dec b
	adc a,h
	push bc
	dec l
	ld a,a
	adc a,e
	sub d
	xor c
	and e
	ei
	adc a,c
	rst 38h
	ld h,d
	ld c,0e2h
	call nz,0e6efh
	sbc a,c
	ld a,a
	and (hl)
	sbc a,c
	jp pe,0f2a5h
	sub h
	and c
	adc a,h
	call nz,0d39bh
	add a,c
	ret m
	or d
	ld l,b
	ld hl,0b57fh
	ld h,a
	cp d
	or (hl)
	dec h
	ex de,hl
	pop hl
	ld h,a
	ld h,h
	add hl,hl
	ld l,(hl)
	add a,e
	ld c,d
	cp l
	ld b,l
	sbc a,b
	cpl
	pop bc
	ld b,d
	ld b,h
	add a,l
	inc d
	add a,08ah
	ld d,082h
	jp 04276h
	defb 0edh ;next byte illegal after ed
	cp h
	ld de,0f104h
	sbc a,b
	ld a,a
	and b
	ret c
	ld a,a
	add a,l
	call z,sub_588dh
	xor a
	add a,021h
	ld a,a
	jr z,$+83
	cp h
	sbc a,0efh
	ld d,(hl)
	ld (045dch),hl
	rst 0
	and a
	defb 0fdh,061h ;ld iyh,c
	ld a,a
	sub d
	dec d
	or 09ch
	ld (hl),l
	ld b,b
	add a,d
	add a,(hl)
	sbc a,h
	ld h,d
	ld (hl),l
	and 0a4h
	add hl,hl
	and l
	xor l
	add hl,sp
	rst 38h
	inc a
	ld h,l
	ld a,a
	ld a,(hl)
	add a,c
	jr nc,l48e8h
	ld (l4914h),hl
	ld d,(hl)
	ld l,d
	ld d,d
	call z,0bb0eh
	ld (de),a
	cpl
	sub c
	ld b,d
	xor b
	ld (0fe16h),hl
	sbc a,b
	add a,c
	ld h,a
	ld (0ffc6h),hl
	cp c
	ld a,a
	ld b,a
	and b
	rst 38h
	ld (hl),089h
	or e
	call m,022cah
	ld c,e
	or l
	out (06eh),a
	ld d,d
	inc hl
	add a,b
	xor l
	call c,sub_6cdch
	or e
	sub l
	ld a,a
	ld a,b
	sbc a,a
	ret nz
	ld h,(hl)
	dec de
	and c
	call nc,0fa27h
	jr c,l48d8h
l48b1h:
	cp l
	xor e
	ld c,a
	rla
	ld a,(de)
	sub d
	adc a,d
	ld h,l
	ld (bc),a
	ld b,d
	ld c,c
	ld h,a
l48bdh:
	ld d,c
	ld h,a
	ld hl,066fch
	sbc a,d
	adc a,l
	ld h,d
	sbc a,(hl)
	srl (hl)
	ret p
	jp c,08191h
	ld b,l
	sub h
	dec h
	add a,c
	dec h
	add a,b
	inc sp
	defb 0edh ;next byte illegal after ed
	call m,0f746h
	ld (hl),h
l48d8h:
	ld a,a
	nop
	jp pe,0e57fh
	ld d,c
	ld hl,049fbh
	ld (l6fd4h),hl
	ld hl,l41b7h
	add a,b
l48e8h:
	ld a,b
	inc c
	ld (hl),l
	ld hl,00f7fh
	call c,09bffh
	ld hl,(01c89h)
	ld d,h
	inc h
l48f6h:
	adc a,a
	adc a,a
	jr nz,l48b1h
	rst 28h
	add a,(hl)
	sub c
	ld de,03204h
	ld b,(hl)
	xor 03ch
	ld (hl),d
	rla
	adc a,e
	and 0c0h
	ld a,b
	cpl
	ld l,d
	ld b,d
	sub c
	sbc a,(hl)
	ld h,c
	ld (de),a
	ld a,a
	inc sp
	pop af
	pop bc
l4914h:
	and e
	and b
	ld sp,hl
	inc a
sub_4918h:
	sub d
	jr nc,l48bdh
	cp h
	sub a
	ld (hl),b
	jp nc,l7165h
	and d
	call 0ba4eh
	ld c,(hl)
	rst 38h
	rst 30h
	ld a,a
l4929h:
	xor 03bh
	cp l
	ld c,e
	add a,(hl)
	dec l
	ret z
	ld c,(hl)
	rla
	sbc a,h
	rst 20h
	and (hl)
	ld (hl),l
	ld (de),a
	ld c,078h
	ld a,a
	ld e,d
	add a,c
	ld a,(bc)
	ld (de),a
	sub l
	ld b,l
	ex de,hl
	or b
	ld a,a
	ld (hl),c
l4944h:
	ld (de),a
	jp p,0c82fh
	ld a,a
	rst 38h
	sub (hl)
	ld (hl),d
	add a,b
	jp c,07f90h
	jr $+4
sub_4952h:
	nop
	jr nz,$+1
	sbc a,b
	ld a,a
	and b
	ret
	ld a,a
	inc c
	nop
	ld h,c
	ld h,l
	ld c,c
	rst 30h
	and l
	and e
l4962h:
	ld (hl),e
	ex (sp),hl
	ret
	ret nz
	ld e,c
	add a,05ch
	and 000h
	adc a,e
	call po,0f1fdh
	add a,a
	cp c
	sub b
	inc e
	jp nc,0804eh
	ld l,(hl)
	jr l499eh
	call nc,0041dh
	rst 38h
	jp nc,09982h
	dec d
	ei
	sub d
	ld d,0b6h
sub_4985h:
	add hl,hl
	rst 28h
	add hl,bc
	ld d,(hl)
	ld h,a
	rst 38h
	inc hl
	cp (hl)
	inc a
	cpl
	and d
	sbc a,c
	ret z
	adc a,e
	ld h,c
	ld h,d
	ld (l4929h),hl
	rst 18h
	dec sp
	sub (hl)
sub_499bh:
	ld e,c
	ld a,a
	push bc
l499eh:
	call m,00230h
	and b
	jr c,l4944h
	and d
	exx
	add a,b
	ld (de),a
	call po,0a62bh
	call pe,000e2h
	inc h
	ex de,hl
	push af
	ld (de),a
	ld a,a
	adc a,093h
	and 089h
	inc e
	ld c,b
	ld e,d
	jp nc,09dc7h
	ld de,04968h
	sub h
	and a
	exx
	ld h,d
	cp b
	rra
	ld (de),a
	and h
	ld hl,02043h
	ld bc,l4d02h
	inc h
	ret pe
	add a,e
	ld (hl),l
	inc d
	ex de,hl
	jr l4a2bh
	rst 0
	dec (hl)
	ld (hl),d
	cpl
	sbc a,(hl)
	adc a,h
	dec d
	sbc a,l
	ld c,e
	rst 38h
	inc bc
	ld c,c
	ld b,(hl)
	ld (hl),l
	ld a,a
	ld d,d
	ld (bc),a
	jp p,02028h
	inc b
	call m,036dah
	dec b
	ld d,d
	ld (bc),a
	ld a,(bc)
	jp m,02229h
	ret
sub_49f6h:
	ld h,e
	defb 0fdh,099h,0d7h ;illegal sequence
	jp z,0bf40h
	adc a,c
	call p,08659h
	adc a,0e6h
	dec hl
	ld c,d
	ret p
	ld e,b
	rst 28h
	exx
	sbc a,a
	ld h,a
	ld h,009h
	add hl,hl
	ld c,e
	ret po
	sbc a,e
	or a
	and c
	ld d,(hl)
	or l
	rst 20h
	ld (0b1c7h),hl
	jp nz,l6445h
	ld a,a
	or l
	ld d,c
	ld b,003h
	adc a,a
l4a22h:
	nop
	cpl
	inc a
	add a,(hl)
	ld c,(hl)
	ld a,a
	adc a,d
	sub h
	halt
l4a2bh:
	add a,b
	ld e,d
	xor h
	cp c
	ld a,a
	ret
	ld b,0fch
	ld c,c
	add a,l
	rla
	ld hl,091aeh
	ld bc,l7b21h
	add a,b
	inc e
	ld e,c
	jp m,08d39h
	daa
	ld a,a
	adc a,e
	adc a,c
	ld a,(hl)
	ld b,077h
	ld a,e
	add hl,de
	rrca
	ld h,a
	pop af
	ld de,09984h
	ld d,c
	adc a,d
	ld a,(de)
	inc d
	cp h
	ld sp,hl
	adc a,h
	or e
	ld b,(hl)
	or a
	call m,03b6ch
	rst 38h
	push af
	nop
	jr c,l4ab4h
	defb 0edh ;next byte illegal after ed
	xor (hl)
	adc a,l
	ld (hl),l
	ret nc
	xor (hl)
	cpl
	di
	ld a,a
	sub b
l4a6dh:
	rla
	cp 058h
	pop af
	ld a,a
	ld (hl),c
	nop
	ld a,a
	ld (bc),a
	sub e
	ld b,e
	ld (hl),c
	ld a,a
	ld c,b
	rla
	add hl,de
	di
sub_4a7eh:
	push hl
	ld (l598eh),hl
	cp 05ah
	sub d
	xor b
	rla
	ret z
	ei
	and 090h
	ld (hl),a
	ei
	or 09fh
	ld d,e
	ld c,a
	ld l,c
	sub e
	adc a,d
	sub d
	pop de
	sub c
	sub c
	ld (hl),c
	ld a,a
	xor a
	rla
	ld a,a
	ld d,024h
	sub e
	ld c,055h
	ld a,l
	di
	ld d,a
	cpl
	adc a,09bh
	and a
	ld d,d
	add a,d
	call p,0e545h
	ld a,a
	ld a,(bc)
	ld a,h
	call c,sub_64b0h
l4ab4h:
	call z,sub_4952h
	sub d
	jp z,08496h
	sub d
	jp nc,0e157h
	ld (0b8f3h),a
	cp h
	add a,l
	ld a,h
	ld (hl),a
	cp d
	sub d
	pop hl
	rrca
	ld d,l
	add a,b
	jp (hl)
	or 0ebh
	sub h
	ld e,l
	ld c,c
	sbc a,d
	ld a,e
	ld d,(hl)
	or h
	or c
	add hl,hl
	ld a,a
	add hl,de
	add a,b
	ld l,(hl)
	add hl,de
	dec h
	cp 01dh
	and 092h
	cp h
	add hl,bc
	cpl
	dec hl
	sbc a,e
	rrca
	ld d,d
l4ae9h:
	jr nz,l4a6dh
	and 08ah
	ret pe
	jp m,l7fdeh
	sbc a,h
	nop
	ld a,a
	ld l,e
	defb 0edh ;next byte illegal after ed
	inc de
	call po,006d5h
	add a,a
	ld c,h
	ld e,a
	ret po
	ld de,l5e91h
	rst 0
	pop af
	rrca
	add a,b
	add hl,de
	ex af,af'
	ld e,e
	add a,l
	inc d
	adc a,c
	add a,001h
	ld e,d
	xor (hl)
	or a
	add hl,hl
	xor c
	sbc a,(hl)
	ld a,a
	or (hl)
	ld h,h
	adc a,h
	ld sp,hl
	sub (hl)
	add a,e
	defb 0ddh,000h,02fh ;illegal sequence
	ld b,(hl)
	sbc a,c
	and 019h
	cp 0f2h
	ld d,a
	ld d,e
	ld h,b
	jp m,l7f1dh
	ld e,030h
	jr nz,l4ae9h
	or (hl)
	cp 0ach
	dec hl
	ld a,c
	ld d,(hl)
	rla
	call nc,sub_79edh
	adc a,c
	or e
	add a,b
	add hl,hl
	ret z
	ld l,e
	rrca
	or e
	pop bc
	scf
	ld d,d
	call p,0f72fh
	adc a,(hl)
	call c,02acch
	cp h
	sub (hl)
	or (hl)
	in a,(029h)
	add a,a
	inc sp
	ld l,e
	ld b,l
	dec l
	add a,b
	daa
	ld h,h
	ld (0a77eh),hl
	call nc,0d2e5h
	ld (hl),c
	jr nc,l4bbbh
l4b5fh:
	dec a
	inc de
	ld e,(hl)
	rst 38h
	sbc a,(hl)
	ld b,(hl)
	ld (hl),b
	ld a,a
	rla
	add a,e
	ld b,a
	rst 38h
	ld de,0c5d1h
	ld l,e
	ld c,b
	ld d,e
	ld l,(hl)
	adc a,b
	sub h
	xor b
	ld c,d
	cp 0a3h
	add hl,hl
	add a,b
	and h
	add hl,de
	ld sp,hl
	pop af
	inc bc
	add hl,sp
	dec h
	add a,(hl)
	ld b,a
	ld d,c
	ld (hl),a
	add hl,hl
	sbc a,(hl)
	ld (hl),l
	ld l,035h
	ld a,e
	sub (hl)
	daa
	add a,l
	dec h
	sbc a,065h
	call pe,sub_468dh
	ld l,a
	ld d,d
	adc a,h
	ld a,000h
	ld l,(hl)
sub_4b9ah:
	add hl,bc
	cpl
	ld (0eebdh),hl
	jr l4b5fh
	jr nc,l4c03h
	nop
	jp po,0fc7fh
	rst 30h
	ex af,af'
	add hl,sp
	ld a,a
	or h
	jp p,01b22h
	or a
	cp 0dch
	or a
l4bb3h:
	ld h,e
	daa
	in a,(02dh)
	ld hl,0b1f9h
	ret nz
l4bbbh:
	dec h
	adc a,h
	ld l,c
	rst 28h
	sbc a,l
	ret c
	sub d
	dec d
	add a,a
	adc a,h
	ld d,a
	sub 0d8h
	call p,02ae2h
	ld c,h
	or c
	rrca
	ld hl,06684h
	ret p
	dec sp
	ld b,a
	dec h
	cp 09ch
l4bd7h:
	add a,b
	ld a,b
	ld (hl),c
	ccf
	sub a
	ld c,(hl)
	ld b,(hl)
	inc b
	ld b,b
	ld a,l
	ld e,a
	call m,0a00eh
	ld a,a
	dec de
	and c
	ld a,a
	nop
	sub c
	ld a,a
	ld (de),a
	ld d,c
	ld a,a
	sbc a,c
	in a,(091h)
sub_4bf2h:
	rst 28h
	rst 0
	adc a,d
	ld h,(hl)
	sub c
	ld (hl),d
l4bf8h:
	sub d
	pop af
	rrca
	adc a,c
	sub e
	ld d,d
	sub l
	xor h
	push de
	and e
	and c
l4c03h:
	ld h,c
	dec d
	sbc a,c
	or e
	ret
	or a
	xor h
	ld (hl),d
	ld a,l
	jr nz,l4bb3h
	add a,e
	ret m
	ld a,a
	ld l,l
	sbc a,c
	adc a,c
	sub (hl)
	halt
	dec de
	ld bc,01000h
	ld a,a
	inc c
	jp nc,0b802h
	dec hl
	sbc a,h
	ld h,0bbh
	ld b,a
	ld hl,0157eh
	rla
	or (hl)
	dec l
	rst 30h
	ret c
	rrca
	sub d
	ld d,h
	ld d,l
	halt
	rrca
	call m,00fefh
	res 0,d
	dec h
	ld (de),a
	cpl
	res 2,d
	ld (hl),h
	xor c
	jp m,02378h
l4c41h:
	add a,b
	add a,0f9h
	dec sp
	jp p,0f17fh
	ld b,0b1h
	dec b
	ld a,a
	sbc a,c
	ld a,a
	ld h,(hl)
	defb 0edh ;next byte illegal after ed
	sub l
	ld d,c
	ld (de),a
	ret m
	rst 0
	rrca
	add a,c
	ld d,d
	sub d
	rrca
	or 0efh
	cpl
	add a,b
	or l
	nop
	ld sp,hl
	ld c,h
	ld bc,03578h
	ld a,(bc)
	ld bc,01009h
	dec b
	ld (008a0h),a
	push de
	jr nc,$+39
	dec d
	sub h
	jp po,l777bh
	jp pe,00f5fh
	dec de
	ld de,0e71fh
	ccf
	sub d
	nop
	ld a,a
	ld e,e
	ld a,c
	jr c,l4d03h
	ld d,d
	ld a,(bc)
	add a,b
	call po,052bah
	ld b,a
	sub l
	ld c,a
	ld (hl),l
	ld d,d
	add a,e
	inc sp
	rrca
	pop hl
	sub c
	call pe,022beh
	rrca
	adc a,h
	cpl
	sub c
	defb 0ddh,099h,000h ;illegal sequence
	rld
	rst 28h
	rra
	rst 28h
	ld a,a
	ret pe
	nop
	cp d
	ld a,a
	cp e
	sbc a,0bah
	inc l
	and h
	ld e,h
	rla
	xor 059h
	defb 0fdh,0ebh,0deh ;illegal sequence
	or b
	ld h,0f0h
	jp nc,0f4feh
	sub e
	add a,a
	jp m,00fb7h
	rra
	rrca
	sub a
	sbc a,c
	cpl
	add a,d
	ld a,e
	cpl
	or e
	inc e
	ret c
	ld a,a
	ld a,a
l4ccch:
	ld b,d
	or 072h
	rst 38h
	ld (hl),a
	ld (bc),a
	ld c,e
	ld a,(bc)
	ld b,d
l4cd5h:
	pop de
	ld e,d
	jp z,l70aah
	ld a,a
	push de
	xor e
	push de
	adc a,06fh
	ld (hl),c
	adc a,(hl)
	ld (0d363h),a
	jp p,073efh
	in a,(098h)
	push af
	rst 10h
	and d
	add a,b
	adc a,0f8h
	adc a,(hl)
	xor d
	scf
	cpl
	sbc a,(hl)
	ld h,c
	ld (02454h),hl
	ld a,a
	jp m,010ceh
	ld (bc),a
	ld l,e
	sub a
	ld a,(bc)
	inc h
l4d02h:
	ld b,d
l4d03h:
	ret
	add a,l
	cp e
	ld (hl),c
	ld e,c
	sbc a,0c9h
	ld (hl),a
	dec b
	ld hl,09c6fh
	ld a,a
	xor d
	dec h
	ld h,d
	ld a,h
	ei
	rst 30h
	jp nz,09c78h
	defb 0edh ;next byte illegal after ed
	jp nc,0eedfh
	scf
	pop de
	ld d,(hl)
	xor c
	or 02fh
	and d
	jr z,l4cd5h
	ld c,a
	ld (l407fh),hl
	ld a,a
	ret nc
	ld (hl),a
	and b
	ld a,a
	dec b
	jr $+34
	djnz l4d38h
	ld b,l
	and e
	ld e,c
	ld a,a
l4d38h:
	ld (hl),a
	ld e,c
	rst 38h
	inc d
	ld (hl),c
	daa
	or d
	rst 20h
	rst 28h
	ld e,d
	ld (l7125h),hl
	call c,0cefdh
	sbc a,0c2h
	ld h,h
	add a,b
	dec l
	rla
	ld (de),a
	inc bc
	rst 30h
l4d51h:
	jp po,l6b02h
	ld (hl),d
	ld a,a
	ld d,d
	add a,a
	ld d,l
	ld (023bch),hl
	djnz l4dddh
	call p,0f268h
	xor 07fh
	rst 38h
	scf
	add a,b
	inc c
	ld e,l
	ld (0b17bh),hl
	in a,(0e4h)
	rst 28h
	call pe,08eeeh
	rst 38h
	and (hl)
	ld e,e
	ld d,l
	rst 8
	or b
	ld (09beeh),hl
	dec (hl)
	jp nz,l5108h
	ld (hl),d
	dec h
	ld d,d
	ld hl,091eeh
	dec sp
	or 027h
	xor c
	adc a,l
	cp b
	jp po,l7fffh
	ld b,e
	pop af
	daa
	nop
	ld a,a
	sub e
	ld a,(bc)
	inc c
	jr c,l4d51h
	inc de
	dec h
	ld d,(hl)
	ld h,l
	rst 0
	ld (hl),d
	rst 38h
	ld c,b
	add a,h
	ld (0b3feh),hl
	ld h,d
l4da4h:
	xor 067h
	dec d
	cp b
	dec hl
	ld (bc),a
	sub d
	ld l,a
	defb 0fdh,08ah,002h ;illegal sequence
	and d
	ld d,a
	add a,e
	ld l,a
	rst 38h
	ld e,b
	cp 0a3h
	sub a
	ld l,d
	jr c,l4dceh
	rst 38h
	cp a
	ld b,c
	nop
	ld (hl),d
	dec hl
	and b
	or 033h
	add a,e
	adc a,(hl)
	ld a,a
	ld c,d
	nop
	ld b,d
	rst 20h
	ld b,d
	dec h
	ld l,c
l4dceh:
	call po,0df32h
	ld (hl),a
	ld l,h
	ld (hl),d
	sub e
	adc a,d
	ret pe
	adc a,e
	ld d,e
	ld a,a
	ld e,009h
	ld a,a
l4dddh:
	ld d,c
	call pe,sub_7f71h
	inc h
	adc a,d
	ld d,d
	defb 0fdh,02fh,088h ;illegal sequence
	ld d,l
	inc h
	cp e
	sbc a,a
	ld a,a
	xor e
	ld a,c
	sbc a,h
	add a,(hl)
	pop bc
	djnz l4df6h
	sbc a,d
	xor h
	ld a,d
l4df6h:
	cp e
	jr l4e4fh
l4df9h:
	ld l,c
	ld h,h
	add hl,de
	ld (hl),d
	ld (0006ch),hl
	adc a,d
	jp (hl)
	cp 073h
	ld a,a
	ld a,l
	adc a,c
	sbc a,b
	sbc a,d
	ret z
	and d
	res 0,c
	ld c,a
	and d
	ld c,h
	ld (hl),a
	ld h,d
l4e12h:
	sub c
	ld a,(bc)
	sbc a,c
	call m,02470h
	ld b,l
	ld b,a
	ld d,l
	rst 38h
	jp (hl)
	ld c,b
	ld (hl),d
	jr nc,l4da4h
	ret z
	ld sp,hl
	jp z,l5688h
	inc bc
	adc a,c
	or c
	ret
	ld de,06756h
	ei
	ld a,c
	jp (hl)
	ld l,c
	ret po
	adc a,h
	ret
	or 0f0h
	ld h,e
	ld (de),a
	cp b
	sbc a,c
	dec h
	sbc a,c
	add hl,hl
	sub d
	sbc a,h
	ld a,a
	dec sp
	add hl,hl
	daa
	jp p,0833dh
	adc a,h
	ret m
	ld d,l
	ld d,l
	call m,sub_4520h
	ld h,(hl)
	ld (hl),d
l4e4fh:
	defb 0fdh,07fh,006h ;illegal sequence
	ld a,(bc)
	ld a,a
	ld (hl),c
	ld a,c
	add a,(hl)
	jr l4df9h
	sub c
	dec b
	and b
	rst 38h
	or d
	ld c,c
	ld h,080h
	set 5,b
	xor c
	jp p,0e137h
	adc a,d
	ret m
	adc a,0f1h
	adc a,0dah
	and 0f8h
	ld sp,08629h
	defb 0fdh,08ah,027h ;illegal sequence
	ld (de),a
	ld hl,0907fh
	out (028h),a
	ld l,c
l4e7ch:
	jr nz,l4e7ch
	out (067h),a
	ld (hl),l
	ld a,a
	call p,0031ah
	ld a,b
	and e
	add a,h
	rla
	ld a,(bc)
	ld a,(bc)
	jr nc,l4e92h
	and b
	ld a,e
	and e
	and h
	ld b,l
l4e92h:
	dec h
	ld (hl),l
	ld d,a
	call p,08545h
	call po,sub_5befh
	ld a,a
	sub l
	call m,0da73h
	ld de,l6de7h
	rst 20h
	ld (de),a
	or (hl)
	jp m,092a7h
	ld (hl),c
	ei
	and h
	call p,095cah
	sbc a,h
	ld e,l
	add a,d
	call z,03f7fh
	ld d,a
	ld d,b
	ld a,a
	ld d,b
	and b
	inc bc
	or e
	ld a,c
	ld b,005h
	adc a,l
	ld a,a
	ld d,d
	inc h
	ld d,a
	jp nc,l522ah
	push af
	and c
	ld d,a
	ld l,d
	inc h
	ld c,c
	sub d
	ld sp,hl
	dec de
	ld a,a
	in a,(025h)
sub_4ed3h:
	and 0e3h
	ld d,l
	ld d,h
	ld a,a
	add a,a
	sbc a,c
	jp p,012eah
	sbc a,a
	rst 8
	ld sp,hl
	dec l
	sbc a,h
	scf
	sub c
	ld d,d
	ld b,h
	or (hl)
	ld de,02015h
	rst 38h
	jp m,l79b8h
	and e
	adc a,d
	rst 38h
	add a,d
	dec (hl)
	ld a,(bc)
	ld a,a
	or a
	ld c,c
	ret po
	ld d,e
	ld d,b
	ld d,d
	di
	ld c,d
	ld a,a
	ld e,a
	ld c,d
	ld c,c
	im 2
	ld sp,hl
	ei
	exx
	inc a
	ex de,hl
	add a,l
	dec h
	ld h,l
	ld (de),a
	ld sp,hl
	xor h
	sbc a,c
	sub d
	ld (bc),a
	add a,d
	sub e
	ld a,a
	ld de,0128eh
	sbc a,a
	ld (hl),b
	ld b,h
	ld b,h
	rra
	ld hl,00012h
	ld a,a
	xor a
	call m,00229h
	or (hl)
	rst 38h
	pop bc
	dec b
	ld d,h
	jp po,0d514h
	ld h,d
	ld (hl),l
	add a,b
	ld b,a
	dec d
	jp po,l68dbh
	ld e,e
	ld a,b
	ld a,023h
	ld (bc),a
	ld sp,hl
	inc e
	ld (hl),a
	ret m
	call 09775h
	inc a
	ld c,l
	and a
	jp m,l5712h
	sbc a,(hl)
	push de
	ld b,d
	cp 053h
	ld b,b
	ld a,a
	call p,00a9ah
	ld a,a
	and b
	adc a,h
	call m,005dah
	add a,l
	dec (hl)
	ld a,a
	ld d,d
	ld c,b
	ld c,d
	pop de
	ld c,h
	defb 0ddh,025h ;dec ixh
	and l
	defb 0ddh,0c4h,07fh ;illegal sequence
	ld d,c
	call m,09b75h
	ld c,l
	ld d,c
	push hl
	sub (hl)
	ld e,h
	or e
	dec d
	sub b
	ld h,h
	and b
	sbc a,e
	xor e
	xor d
	ld (0b2aah),a
	jr $+65
	ld d,h
l4f7bh:
	nop
	ld a,a
	ld c,(hl)
	di
l4f7fh:
	or d
	call m,0b678h
	add a,d
	add hl,sp
	ld h,h
	sbc a,l
	rst 28h
	add hl,hl
	ld d,l
	rla
	ld d,b
	rst 38h
	ld b,d
	sub d
	sub h
	in c,(c)
	rlca
	ld (0ef40h),hl
	ccf
	ld a,a
sub_4f98h:
	rlca
l4f99h:
	ld h,(hl)
	ld d,c
	inc d
	jp m,0ffe6h
	and l
	xor c
	sub d
	ld d,042h
	sbc a,l
	ld hl,(0937bh)
	adc a,h
	and h
	pop bc
	ld (bc),a
	ld hl,07f00h
	jp m,0334ch
	rst 30h
	ld c,e
	add a,e
	ret c
	add a,l
	rst 20h
	ld h,0c3h
	call p,0d856h
	or 0d5h
	ld c,h
	add a,d
	call po,01224h
	sub a
	add a,b
	inc b
	dec h
	ld l,a
	dec d
	ld h,(hl)
	ld b,d
	ex de,hl
	xor a
	jr nz,l4f7bh
	sbc a,h
	and (hl)
	ld c,l
	sbc a,l
	call c,079dfh
	rst 28h
	rst 38h
	rst 28h
	pop de
	inc d
	and e
	and b
	ld (09307h),a
	adc a,c
	xor a
	ld hl,(04e7fh)
	defb 0ddh,044h ;ld b,ixh
	ld b,d
l4fe9h:
	ex de,hl
	xor l
	add hl,bc
	in a,(042h)
	ld d,d
	nop
	sub 09ch
	ld l,e
	rst 20h
	ld l,0f1h
	cp l
	defb 0edh ;next byte illegal after ed
l4ff8h:
	jp po,0fe0eh
	ld b,a
	ld (0ee7fh),hl
l4fffh:
	cp h
	djnz l4ff8h
	inc d
	and b
	ld hl,(0f901h)
	adc a,c
	xor d
	inc e
	jr nc,l5010h
	cp l
l500dh:
	ld a,a
	ld a,l
l500fh:
	add a,(hl)
l5010h:
	jp po,0807bh
	adc a,e
	add a,d
	ld l,b
	ld b,h
	sub h
	ret po
	inc hl
	daa
	ld (hl),l
	ret p
	add a,(hl)
	inc h
	ld a,c
	inc d
	ld b,l
	ld d,c
	and d
	ld h,(hl)
	ld a,(bc)
	ld (bc),a
	cp a
	ld c,c
	add a,l
	halt
	dec hl
	rst 38h
	ccf
	ld h,b
	ld (de),a
	ld (de),a
	push bc
	call m,03212h
	and b
	inc hl
	in a,(027h)
	xor l
	add a,e
	inc hl
	rst 38h
	jp 02a53h
	cp 0a1h
	ld a,e
	ld (bc),a
	sub h
	ld h,l
	sub b
	rrca
	xor d
	ld d,(hl)
	rst 30h
	or l
	add hl,de
	inc h
	adc a,h
	jr c,l5095h
	xor c
	ld (bc),a
	sub b
	ld de,00356h
	ld b,l
	nop
	xor c
	ld h,e
	jr nz,l4fe9h
	ld (hl),a
	ld a,a
	or 000h
	ld (bc),a
	and b
	ld sp,00120h
	ld (bc),a
	sbc a,d
	add a,c
	call m,03271h
	add a,e
	ld c,b
	xor d
	or a
	rst 20h
	cpl
	defb 0fdh,062h ;ld iyh,d
	ld e,a
	add hl,bc
	sub h
	ld b,h
	ld e,c
	sub b
	rst 20h
	pop de
	ld d,l
	ld h,(hl)
	ld d,d
	add a,l
	ld e,e
	ex af,af'
	ld d,l
	ld a,(hl)
	inc bc
	and a
	ret p
	ld b,h
	adc a,l
	nop
	ld b,b
	ld b,h
	ld a,a
	adc a,09dh
	rst 38h
	ld a,a
	ex af,af'
	djnz l50c7h
	inc a
l5095h:
	ld (00331h),hl
	call nz,01032h
	jr nc,$-2
	sub b
	ld c,(hl)
	and c
	ld sp,00f03h
	inc hl
	and c
l50a5h:
	ld (de),a
	ld (bc),a
	adc a,c
	xor e
	add a,b
	ret
	ld (0bbe9h),hl
	ld e,a
	ld h,d
	ld b,h
	sub b
	rst 30h
	ld (hl),l
	dec h
	add a,d
	add hl,hl
	add a,b
	ld a,(0ce44h)
	nop
	dec h
	jp nz,04047h
	inc b
	sub d
	xor e
	add hl,sp
	ld a,(hl)
	nop
	ld a,a
l50c7h:
	dec (hl)
	ld h,h
	ld (hl),h
	ld a,c
	inc bc
	xor h
	ld hl,0b4b5h
	cp d
	add a,c
	ld b,e
	ld a,(de)
	ld de,02020h
	and c
	add a,d
	inc sp
	ld (0c87fh),a
	jr nz,l50e8h
l50dfh:
	xor h
	ret m
	sbc a,h
	ld e,a
	ld b,h
	ld b,h
	dec d
	ld (bc),a
	ld b,d
l50e8h:
	rst 30h
	ld e,c
	ld sp,hl
	ld c,h
	call pe,sub_6b44h
	inc b
	sbc a,b
	rrca
	ld (bc),a
	ld a,a
	jp z,000f7h
	ld (bc),a
	inc bc
	djnz l50a5h
	ld a,(bc)
	inc sp
	ld hl,(0e383h)
	ld hl,08002h
	ret m
	pop af
	nop
	sub l
	pop de
l5108h:
	cp 0fbh
l510ah:
	ld de,0fe29h
	cp c
	ld a,a
	sbc a,0e8h
	ld (hl),l
	adc a,(hl)
	rst 38h
	inc de
	ld d,h
	add a,(hl)
	sub d
	add a,l
	sub e
	xor b
	out (055h),a
	add a,l
	scf
l511fh:
	and b
	ld e,h
	ld a,(hl)
	ld a,a
	rst 30h
	ld (0a1b3h),hl
	inc sp
	inc sp
	dec b
	add a,h
	inc sp
	ld (0115ch),a
	add hl,sp
	inc de
	inc sp
	rrca
	dec e
	jr nz,l5146h
	ld sp,l7a0fh
	inc l
	ld c,c
	jp p,0935fh
	in a,(0cbh)
	ld (bc),a
	sbc a,0d9h
	jp 04600h
l5146h:
	ld h,h
	ld a,(hl)
	ld c,(hl)
	ld h,a
	ld d,b
	ld a,a
	ex de,hl
	sub l
	adc a,a
	ld a,a
	ret z
	call sub_7166h
	or c
	dec b
sub_5156h:
	ld l,e
	jr nc,l50dfh
	inc e
	pop hl
	rrca
	ld sp,0cba1h
	rst 30h
	rrca
	ld a,02fh
	ret m
	ld e,a
	ld (007e3h),hl
	sbc a,0d7h
	ld l,d
	add a,l
	dec b
	add a,l
	ld l,c
	ld b,l
	ld d,b
	ret nc
	ld e,00fh
	nop
	ld a,a
	call z,0eab1h
	and b
	ret p
	daa
	inc bc
	add a,l
	ld (bc),a
	pop af
l5180h:
	ld c,d
	jr nc,l511fh
	add a,e
	xor e
	jp m,02f04h
	inc bc
	ld c,l
	ld l,c
	rst 38h
	ld e,(hl)
	ld (de),a
	ld e,(hl)
	ld (bc),a
	sbc a,0cfh
	nop
	jp 0f97fh
	sbc a,000h
	ret m
	jp p,0023ch
	dec c
	xor a
	adc a,c
	dec a
	ld e,l
	jp m,l7b5fh
	ld (bc),a
	sbc a,03fh
	nop
	add a,c
	rst 38h
	ccf
	add a,c
	ex (sp),hl
	add hl,hl
	call p,0ec24h
	rst 28h
	rlca
	set 7,(hl)
	ld l,0feh
	ex af,af'
	ld e,0deh
	rst 8
	ld a,a
	ret p
	ld (de),a
	ld h,d
	ld (bc),a
	rst 8
	adc a,c
	ld l,c
	inc bc
	call pe,00737h
	ld d,l
	add a,c
	ld d,d
	rst 30h
	ld d,d
	adc a,h
	ld (hl),l
	rlca
	ld e,b
	call p,0de7bh
	ccf
	ld a,a
	ret nz
	ld c,a
	rst 38h
	cp h
	ret m
	push hl
	rst 30h
	xor a
	inc bc
	add hl,sp
	nop
	ld e,b
	call p,0de7bh
	ccf
	ld a,a
	ret nz
	halt
	push hl
	ld a,c
	ld (hl),b
	ld e,(hl)
	ld a,h
l51edh:
	ld (hl),b
	ld a,b
	ld c,000h
	rst 38h
	nop
	rst 38h
	add a,b
	nop
	ld d,h
	nop
	nop
	ld a,a
	sbc a,c
	nop
	ld e,090h
	dec e
	defb 0ddh,0c9h,039h ;illegal sequence
	add hl,bc
	inc hl
	inc bc
	ex af,af'
	exx
	sbc a,c
	nop
	jp m,000f0h
	sub a
	ld (hl),e
	nop
	defb 0ddh,07ch ;ld a,ixh
	ld a,(bc)
	adc a,(hl)
	adc a,b
	cp a
	nop
	xor h
	dec de
	add hl,bc
	ld a,e
	or a
	ld a,a
	rlca
	ld b,(hl)
	add a,e
	ccf
	nop
	ld a,a
	or (hl)
	rst 0
	ld a,e
	sbc a,c
	inc bc
	ld a,a
	nop
	rst 8
l522ah:
	daa
	ld (0dcfeh),hl
	sbc a,c
l522fh:
	sub a
	ld b,(hl)
	ld (hl),b
	or 0c7h
	jp m,0e3f4h
	ld d,l
	ld b,d
	add hl,hl
	ld a,a
	exx
	sub b
	cp 01ah
	add hl,bc
	and 00bh
	add a,b
	ld e,a
	and c
	ld e,07bh
	ld (hl),c
	ld d,d
	ld a,a
	pop de
	jp m,090e0h
	adc a,a
	rst 38h
	ret pe
	jp 0b716h
	dec d
	add hl,hl
	ld a,a
	jp c,0d986h
	dec hl
	jr nc,$-107
	defb 0fdh,0fah,040h ;illegal sequence
	ld h,(hl)
	cp e
	ld (hl),c
	ld (l7ff7h+1),hl
	and l
	ld a,(hl)
	inc sp
	call m,0453fh
	nop
	add a,c
	ld de,l7767h
	ld d,h
	ld a,a
	ret p
	jr nc,l52a9h
	jp m,0809fh
	jp (hl)
	ret nz
	ld de,01756h
	ld (hl),l
	ld b,d
	sub h
	push af
	ld a,a
	sub b
	ld sp,hl
	jr nc,$+59
	or a
	add a,d
	jp (hl)
	ret nz
	ld h,l
	ld de,l7766h
	ld d,d
	add hl,hl
	di
	ld a,a
	daa
	sub e
	inc sp
	ret m
	adc a,h
	call m,0987eh
	ld h,(hl)
	ld de,0160fh
	ld (hl),a
	ld (hl),l
	sub d
	djnz l52cch
	call m,sub_7eb8h
	adc a,083h
l52a9h:
	dec hl
	rst 38h
	jp m,06130h
	ld d,066h
	halt
	ld a,c
	ld b,d
	djnz $+117
	ld a,l
	ld sp,hl
	xor a
	call nc,0fe44h
	ld h,l
	xor b
	add a,d
	ld (09749h),hl
	rst 38h
	ld (de),a
l52c3h:
	add hl,bc
	add hl,bc
	ld a,h
	ld l,a
	add hl,bc
	xor 0f5h
	dec h
	dec h
l52cch:
	ld d,c
	add a,c
	dec h
	add a,b
	add hl,sp
	rst 38h
	nop
	ld e,h
	ld (02407h),hl
	ld d,l
	ld h,(hl)
	ld h,c
	ld (de),a
	ld a,a
	rst 30h
	sub c
	rst 38h
	ld (de),a
	ld (hl),d
	add hl,hl
	rst 38h
	defb 0fdh,0c0h,022h ;illegal sequence
	ld b,l
	ld (l510ah),hl
	ld h,c
	ld h,d
	inc h
	rst 38h
	ld a,(hl)
	ret po
l52f0h:
	ld b,h
	ld b,d
	dec h
	ld (0ff25h),hl
	jp nc,0dfffh
	xor (hl)
	dec a
	sub h
	ld (l467fh),hl
	sub b
	sub a
	ld (hl),e
	rst 38h
	ccf
	ld e,c
	ld a,(hl)
	ld c,a
	ld a,a
	ld de,0337fh
	ld a,e
	or a
	rst 38h
	ld e,a
	xor h
	pop bc
	ld a,a
	ld b,l
	ld d,c
	ld d,d
	ld a,a
	ex de,hl
	rst 38h
	rst 8
	push de
	jp 0247eh
	ld d,d
	dec h
	ld a,a
	call z,sub_7997h
	rst 30h
	rst 38h
	ex de,hl
	inc hl
	cp 007h
	ld (02255h),hl
	rst 38h
	cp e
	ld b,a
	add a,b
	inc de
	add a,l
	ld a,a
	ld a,a
	ld b,(hl)
	sub d
	or d
	add a,b
	cp 027h
	sbc a,c
	ld a,a
	and d
	nop
	adc a,d
	dec a
	and e
	add a,b
	ld sp,hl
	jp pe,01effh
	add hl,hl
	ld a,a
	adc a,e
	sub b
	jp m,00957h
	dec bc
	ld hl,(0ff09h)
	ld a,(hl)
	adc a,(hl)
	cp 03ch
	ret m
	ld a,a
	ld d,a
	nop
	call m,0fcf4h
	ld a,a
	ld l,a
	ei
	or b
	add hl,bc
	sub b
	jr nc,$-56
	ei
	dec sp
	inc bc
	cp 07fh
	ld a,a
	djnz $-31
	ld a,a
	ld a,b
	rlca
	rst 8
	add a,d
	jp (hl)
	sub c
	sub d
	rst 38h
	ld (00335h),sp
	halt
	sub b
	ld a,(bc)
	or (hl)
l537dh:
	add a,c
	defb 0fdh,012h,022h ;illegal sequence
	add a,b
	ld a,l
	rst 0
	sub b
	defb 0ddh,0c9h,076h ;illegal sequence
	ld e,c
	add a,h
	ld c,a
	ex af,af'
	exx
	ld a,a
	rst 20h
	ret nz
	ld d,a
	halt
	ld h,(hl)
	ld h,(hl)
	ld h,a
	halt
	inc b
	ld h,l
	sub d
	ld e,e
	ld h,(hl)
	ld d,c
	add a,a
	ld h,d
	add hl,hl
	adc a,a
	call nc,sub_6456h
	ld h,l
	ld c,c
	dec b
	rrca
	sbc a,d
	add hl,sp
	sbc a,e
	ld l,0d2h
	and h
	ex (sp),hl
	nop
	sbc a,a
	ld a,a
	jp nz,l56b2h
	ld a,(hl)
	ld a,a
	ld (bc),a
	ld h,(hl)
	ld b,h
	ld a,e
	ld h,c
	ld de,09022h
	ld a,d
	dec e
l53c0h:
	dec h
	ld h,(hl)
	ld e,c
	sub (hl)
	ld a,b
	rrca
	call m,04a00h
	sub b
	sbc a,h
	ld b,e
	dec bc
	or b
	ld a,a
	ret m
	ld b,b
	ld h,l
	ld h,(hl)
	ld b,d
	ld b,(hl)
	add a,a
	ld a,a
	ld h,d
	ld b,a
	halt
	add a,h
	ld (hl),c
	adc a,c
	xor h
	ld b,h
	jp m,l7969h
	sbc a,c
	rrca
	ex (sp),hl
	nop
	inc bc
	ld a,(hl)
	ret po
	adc a,c
	rst 38h
	cp e
	sbc a,l
	ld l,a
	jp nz,l4500h
	ld d,h
	ld d,l
	ld b,(hl)
	ld h,(hl)
	ld h,d
	inc h
	ld (l6647h),hl
	xor 086h
	ld l,a
	sub d
	ld d,c
	ld (hl),a
	ld a,a
	sbc a,(hl)
	dec h
	ld e,c
	rrca
	sbc a,b
	nop
	jr nc,l53c0h
	and d
	ld e,c
	add a,d
sub_540ch:
	jp po,l5f80h
	add a,l
	ld bc,l4246h
	ld d,l
	ld d,h
	ld h,d
	ld (0814bh),hl
	ld b,d
	ld d,0eah
	dec (hl)
	dec h
	ld l,a
	jp 00f92h
	exx
	sbc a,c
	sub d
	halt
	and d
	ld a,d
	or (hl)
	sub a
	ld d,080h
	ld e,a
	add a,l
	ld bc,l6467h
	dec h
	ld d,l
	sub d
	inc h
	ld e,e
	xor 013h
	ld d,d
	ld l,a
	ld de,0f092h
	ld (hl),c
	inc d
	rrca
	rst 28h
	ld a,a
l5442h:
	ex de,hl
	nop
	inc c
	ld a,e
	cp e
	ld a,c
	inc d
	sub a
	add a,b
	pop hl
	nop
	ld h,a
	ld h,l
	ld b,d
	ld e,c
	dec h
	rla
	ld b,l
	ld (hl),a
	ld l,a
	ld h,d
	add hl,hl
	adc a,l
	pop af
	inc de
	cp (hl)
	rrca
	and h
	sbc a,e
	cp c
	cp 0c9h
	add hl,bc
	cp 074h
	inc c
	sub a
	cp e
	cp e
	or a
	rlca
	ld a,a
	rlca
	ld a,a
	ld b,066h
	or d
	jp m,l71e5h
	halt
	out (c),e
	ld l,a
	and h
	ld d,c
l547ah:
	or c
	cp 0afh
	rrca
	sbc a,b
	sbc a,e
	cp e
sub_5481h:
	or c
	sub a
	cp 087h
	ld a,a
	sub c
	sub b
	ld a,e
	add hl,bc
	ld a,a
	call m,05512h
	call po,01722h
	cp e
	sbc hl,hl
	ld h,c
	ld (034edh),hl
	ld d,c
	ld (de),a
	adc a,l
	call p,00ff3h
	add hl,de
	ld de,01911h
	add a,a
	ld a,e
	ld h,a
	ld (hl),l
	ld a,a
	add a,d
	ld (hl),a
	ld a,a
	ret p
	ld d,h
l54ach:
	defb 0fdh,058h,082h ;illegal sequence
l54afh:
	ld (hl),a
	or b
	call pe,01256h
	out (06fh),a
	ld de,08b55h
	rst 10h
	rrca
	ret nc
	ld (09321h),hl
	add a,(iy+07eh)
	add hl,bc
	rst 38h
	jp po,l5180h
	ld a,c
	ld a,a
	call m,sub_4408h
	ld c,c
	inc h
	inc b
	ld d,a
	ld (hl),c
	ld h,l
	ld de,0ee61h
	xor h
	xor 053h
	rst 28h
	cp (hl)
	rrca
	or l
	rlca
	call m,0ca3bh
	add a,b
	in a,(096h)
	ld c,a
	add hl,bc
	ld a,a
	ret po
	or d
	xor 0a4h
	call pe,0564ch
	xor 026h
	ld e,d
	ld b,h
	rst 30h
	ld e,(hl)
	di
	jp m,09f0fh
	ld (085b9h),hl
	call pe,0cf90h
	add a,a
	ld e,a
	nop
	ret po
	dec b
	add hl,hl
	ld d,a
	ld (hl),a
	call pe,sub_6606h
	ld d,d
	push af
	push hl
	ret m
	rst 28h
	sub c
	cpl
	rrca
	and c
	ld (03b19h),hl
	push af
l5515h:
	ld a,a
	ld a,a
	ld b,024h
	inc b
	ld h,a
	ld h,(hl)
	ld h,c
	ld d,065h
	jp (hl)
	ld e,e
sub_5521h:
	push af
	ld (hl),c
	push af
	or 0b7h
	rrca
	ret nz
	dec hl
	rst 30h
	ld a,a
	sbc a,(hl)
	ld (hl),e
l552dh:
	nop
	halt
	add hl,bc
	nop
	rst 38h
	ld a,(hl)
	add hl,bc
	ld (048ech),hl
	ld h,c
	ld c,(hl)
	dec d
	ret pe
	ld b,(hl)
	ret p
	xor a
	ld b,(hl)
	ld (hl),e
	rrca
	ld l,e
	sub b
	rst 18h
	ld a,a
	ld a,c
	adc a,e
	ret m
	rst 38h
	nop
	ld e,a
	inir
	ld l,a
	ld c,b
	dec d
	xor 092h
	adc a,l
	ret p
	cpl
	sub h
	ld h,(hl)
	ld (hl),e
	rrca
	ld h,e
	ld de,07f91h
	ld sp,hl
	ret po
	dec hl
	ld d,066h
	dec d
	ld b,l
	ld b,d
	defb 0edh ;next byte illegal after ed
	add a,l
	sub h
	ret p
	ld h,e
	ld b,h
	adc a,l
	ld sp,00f21h
	inc a
	ld d,l
	rrca
	adc a,a
	add hl,de
	sub c
	call m,0ff78h
	ld a,a
	adc a,d
	ld b,l
	daa
	rst 28h
	ld a,a
	or d
	adc a,c
	rst 0
	adc a,d
	adc a,l
	ld h,l
	rrca
	ld a,c
sub_5586h:
	ld d,l
	rrca
	ld e,029h
	ld hl,0dc7dh
	ld a,a
	ccf
	add hl,bc
	ld a,a
	adc a,b
	rra
	ld b,d
	ld b,a
	ld d,0e9h
	dec l
	ld d,h
	ret m
	ld a,a
	rst 30h
	nop
	ld h,(hl)
	ld d,h
	ld b,l
	sub d
	ld h,016h
	sbc a,e
	call m,0c80fh
	sbc a,c
	ld hl,l658bh
	inc sp
l55ach:
	jr nc,l55ach
	ld (hl),a
	rst 38h
	jp m,023e1h
	rst 38h
	sbc a,b
	ld a,a
	ld d,c
	ld b,d
	ld h,c
	inc h
	add a,l
	add a,a
	ld (hl),a
	rst 30h
	jp po,00055h
	sub h
	rst 38h
	sbc a,d
	call m,sub_780fh
	ld (0970fh),hl
	sbc a,c
	inc sp
	rst 20h
	rst 20h
	ld a,a
	jp z,00700h
	ld a,a
	nop
	ld a,a
	rrca
	cp 024h
	ld i,a
	ld c,c
	sub d
	rst 30h
	jp p,l7155h
	ld b,h
	ld a,a
	rrca
	dec sp
	ld (0980fh),hl
	dec b
	sub e
	cp 0f1h
	rla
sub_55ech:
	inc bc
	nop
	nop
	ld a,a
	ret p
	jp 0114bh
	inc d
	and 037h
	ld c,0bbh
	ld a,a
	ld sp,hl
	di
	nop
	dec sp
	rrca
	push af
	add a,l
	ret m
	ld a,a
	ld h,a
	sub d
	ld sp,0c785h
	ld a,a
	ret m
	add hl,hl
	ex de,hl
	ld a,(l500dh)
	ld (015f5h),hl
	ld a,b
	ld d,h
	ld a,a
	jp 01b0fh
	cp e
	cp c
	and 05dh
	ld a,(0947fh)
	add a,b
	ld a,a
	jr nc,$+129
	ld a,(bc)
	ld (hl),c
	xor l
	xor 0edh
	ld a,a
	ld (0857fh),hl
	ld d,d
	dec h
	cp 071h
	rrca
	rst 10h
	rst 38h
	sub d
	call pe,03037h
	cp 0e1h
	sub c
	ld a,l
	inc sp
	rst 38h
	call m,0242ah
	ld a,a
	ld sp,l5442h
l5644h:
	defb 0edh ;next byte illegal after ed
l5645h:
	ld a,(08c6eh)
	adc a,c
	ld d,(hl)
	ld d,l
	cp 0f7h
	ld a,(hl)
	ld a,a
	ld b,a
	ld (hl),c
	jr nc,$+11
	cp 03ch
	ld d,c
	cp 0fch
	ld (hl),07fh
	ld h,l
	call pe,sub_59feh
	rst 28h
	ld e,e
	ld (hl),b
	cp b
	inc bc
	dec h
	call z,00c0fh
	ex de,hl
	rrca
	cp 07dh
	in a,(090h)
	push af
	call m,sub_7f27h
	xor l
	cp 009h
	sub d
	ld (bc),a
	add hl,hl
	adc a,(hl)
	inc a
	ex (sp),hl
	ld (bc),a
	ld d,d
	add a,l
	rst 30h
l567eh:
	rrca
	cp c
	ld a,a
l5681h:
	cp e
	rst 38h
	adc a,(hl)
	call p,0aff9h
	add hl,bc
l5688h:
	ld a,a
	jp po,0b102h
	dec d
	dec h
	ld b,h
	cp 0cch
	rst 28h
	ld e,c
	add a,b
	ld (hl),b
	and l
	rst 38h
	xor 00fh
	ld a,a
	dec a
	ld de,l7fb9h
	defb 0ddh,000h,0fah ;illegal sequence
	call m,sub_602fh
	ld (hl),07fh
	ld a,l
	ld c,a
	rst 38h
	ld e,a
	ret p
	cp h
	dec b
	ld (hl),a
	ld a,(hl)
	add hl,bc
	ld l,h
	rst 38h
l56b2h:
	ld de,02973h
	rst 38h
	xor l
	adc a,a
l56b8h:
	ld d,0fah
	rst 0
	inc bc
	ld (hl),c
	rst 38h
	call m,sub_420bh
	ld a,a
l56c2h:
	add a,0f7h
	cp h
	inc a
	rlca
	ld (hl),09ch
	rst 28h
	dec bc
	ld a,a
	res 0,d
	ld a,d
	rst 10h
	add a,e
	ret po
	pop de
	add hl,hl
	ld a,a
	ld b,h
	ld b,d
	ex de,hl
	xor c
	ld (hl),a
	jp pe,0f199h
	ld a,a
	rst 8
	add a,b
	ld a,d
	ld (hl),e
	ei
	ex de,hl
	add a,a
	ld l,b
	nop
	add hl,sp
	sbc a,a
	add a,b
	ret po
	sub c
l56ech:
	ld (hl),c
	rst 38h
	ld l,(hl)
	ld bc,(l52f0h)
	add a,a
	sbc a,09dh
	jr c,l5716h
	ld (0fe12h),hl
	ret p
	dec e
	defb 0ddh,0c9h,076h ;illegal sequence
	ld h,l
	add a,h
	ex af,af'
	ld a,0d9h
	ld c,a
	ld b,09bh
	rst 8
	ret c
	ld c,l
	sub b
	ret nz
	ld c,b
	sub e
	inc sp
	inc sp
	add hl,sp
l5712h:
	jp c,0cd51h
	ld b,b
l5716h:
	dec d
	add hl,hl
	ld d,c
	rla
	ld de,l5977h
	add hl,hl
	add a,d
	di
	inc sp
	sbc a,d
	sbc a,a
	ex de,hl
	cp (hl)
	add a,b
	inc h
	and h
	jr nz,l56c2h
	add a,e
	ld c,a
	adc a,b
	sub b
	jr c,l56b8h
	ld b,099h
	sbc a,l
	defb 0ddh,0ddh,0c0h ;illegal sequence
	ld a,h
	ret z
	rst 38h
	nop
	rrca
	inc bc
	add hl,bc
	sbc a,h
	ld a,c
	ld a,a
	adc a,(hl)
	ret nc
	ld l,c
	ret nc
sub_5744h:
	ld b,h
	ld (0007eh),hl
	call z,07f21h
	sub (hl)
	ld (bc),a
	ld d,c
	ex (sp),hl
	ld l,h
	sub 071h
	adc a,e
	add a,h
	sbc a,a
	ld e,a
	ld c,l
	ld d,d
	ld l,e
	add a,b
	ex af,af'
	adc a,e
	ld de,03959h
	and b
	push af
	jr c,l56ech
	ld b,b
	inc bc
	ld a,a
	sub b
	sub b
	call 0097ch
	sbc a,(hl)
	adc a,c
	ld (hl),h
l576eh:
	add a,d
	ld a,h
	sbc a,l
	ld a,a
	ld a,l
	or h
	ld l,d
	ret nc
	ld b,l
	add a,d
	sbc a,l
	ld c,e
	xor e
	ld b,e
	sub d
	rst 0
	call nc,05561h
	adc a,c
	add a,d
	ld de,0c7d7h
	ld a,a
	call z,sub_4b9ah
	xor c
	add a,b
	sub 025h
	ld e,(hl)
	sub d
	ret p
	ld c,(hl)
	ld a,a
	dec d
	jp p,09840h
	adc a,b
	add hl,bc
	ex af,af'
	sbc a,h
	ret m
	dec h
	inc c
	rst 10h
	add a,b
	ld l,c
	inc (iy-07eh)
	ld c,e
	rst 0
	rst 38h
	jp 028abh
	ld d,l
	ld c,(hl)
	ld (bc),a
	ret nc
	ei
	jp nc,00306h
	sub d
	ld b,c
	ld d,d
	inc a
	ld a,a
	ld d,a
	cp 02bh
	call nc,0006fh
	defb 0ddh,0dah,0d3h ;illegal sequence
	ld (08aa9h),hl
	ld a,(hl)
	sbc a,c
	ret z
	nop
	nop
	add a,e
	inc sp
	sbc a,b
	or c
	ld e,c
	ld bc,08890h
	add a,e
	sbc a,b
	nop
	sub l
	sbc a,b
	add a,b
	adc a,d
	defb 0ddh,04fh,0b0h ;illegal sequence
	cp 023h
	jr nc,l576eh
	rst 10h
	ld a,a
	call po,sub_4433h
	ld (bc),a
	pop de
	ld a,l
	cp d
	add a,d
	inc bc
	ld (bc),a
	adc a,c
	ld b,(hl)
	ld d,c
	pop hl
	jp 05525h
	ld d,l
	sub 0d7h
	ld a,(hl)
	call po,sub_7cd7h
	jp c,09f0ch
	nop
	adc a,d
	ld e,(ix+074h)
	inc sp
	sub b
	ex af,af'
	and b
	push bc
	add hl,sp
	pop hl
	ld bc,08059h
	jr c,l583ch
	add a,b
	sbc a,c
	sub c
	ld a,a
	ld (0789ch),hl
	call 080dbh
	halt
	cp 074h
	ld a,l
	ld c,c
	ret m
	ld a,a
	push de
	ld d,h
	ret nc
	ld e,a
	pop de
	ld (hl),h
	add a,b
	sub (hl)
	ld a,(hl)
	ret po
	or b
	ld d,l
	rst 38h
	push de
	cpl
	nop
	xor d
	ret nc
	inc a
	push bc
	sbc a,l
	cp e
	cp e
	xor 0a1h
	add hl,hl
	inc bc
	jp (hl)
	jr nz,$-107
	sub c
l583ch:
	ld e,c
	adc a,c
	call m,08608h
	dec d
	add a,d
	inc d
	ld a,a
	ld a,e
	dec c
	inc hl
	rst 10h
	ret nc
	rst 38h
	ld h,(hl)
	cp 07ch
	dec c
	ld a,a
	add a,d
	ld de,l4254h
	ld a,(hl)
	push de
	cp c
	call po,089c3h
	rst 38h
	dec h
	pop bc
	add a,e
	add hl,hl
	out (039h),a
	xor d
	nop
	add a,h
	ld c,a
	cp c
	call m,0aac0h
	and (hl)
	add a,e
	cp e
	ld (hl),e
	ld a,b
	defb 0ddh,01bh,0a6h ;illegal sequence
	xor e
	ld a,a
	exx
	ld h,a
	ld sp,06980h
	sub l
	rst 28h
	ld d,c
	adc a,b
	add a,b
	ret p
	inc hl
	add a,e
	ret m
	jr $+81
	inc c
	add a,b
	add hl,bc
	sub b
	cp 007h
	rst 0
	call nc,07f99h
sub_588dh:
	ret
	add a,b
	ld e,c
	pop af
	add hl,de
	jr z,$+38
	ld (0222ch),hl
	defb 0fdh,0a7h,0d9h ;illegal sequence
	jr c,$+86
	add a,e
	dec de
	adc a,a
	ret m
	and d
	ld a,b
	ld b,(hl)
	in a,(09ch)
	adc a,c
	in a,(0bbh)
	cp l
	inc b
	xor l
	ld (de),a
	ret
	in a,(0bdh)
	ld bc,l444ah
	sub b
	ld (hl),a
	rst 30h
	add a,c
	adc a,c
	jr c,l583ch
	call 03f61h
	nop
	add a,h
	ld h,(hl)
	ld a,a
	ret nc
	add a,b
	ld a,l
	ld h,b
l58c4h:
	add hl,bc
	jr nc,l58c7h
l58c7h:
	call 0f8d7h
	ld a,a
	jp z,01157h
	add a,b
	dec h
	call pe,08025h
	add a,d
	sbc a,c
	ld (de),a
	cp 02fh
	call z,0895ch
	inc l
	ld (hl),03ah
	exx
	rl c
	dec l
	rst 28h
	call 0f074h
	ld (hl),l
	ld a,b
	sbc a,d
	ld a,(bc)
	sbc a,l
	sub h
	rlca
	exx
	add a,l
	call c,0ad7dh
	dec hl
	cp e
	jr nc,l5963h
	push af
	ld b,b
	add hl,sp
	adc a,c
	rrca
	jr c,l5903h
	ccf
	ccf
	ret m
	jr c,l593bh
	ld (hl),a
l5903h:
	add hl,hl
	ret
	add a,b
	or h
	inc c
	add a,(hl)
	ld c,a
	ld b,h
	ld a,a
	adc a,d
	add a,b
	ex de,hl
	add a,c
	jp po,l51edh
	add hl,de
	ld (hl),b
	rla
	ld hl,08b14h
	sub h
	ld a,(hl)
	ret nz
	pop de
	push bc
	add hl,sp
	add a,b
	or (hl)
	rra
	sub c
	ld a,a
	inc b
	ld l,(hl)
	cp e
	adc a,(hl)
	add a,b
	ld (de),a
	xor l
	ld a,(hl)
	exx
	call p,09f7ah
	and e
	ld (bc),a
	cp e
	jp c,02c9eh
	ld l,b
	nop
	ex af,af'
	inc bc
	add a,e
l593bh:
	ex af,af'
	add hl,bc
	inc bc
	ccf
	sbc a,c
	ld e,c
	jr c,l58c4h
	add a,b
	sub (hl)
	ld a,a
	rst 8
	add a,b
	ld b,c
	call 0dd7bh
	ld c,c
	ld a,a
	pop af
	jr $-106
	or c
	ld a,a
	ld b,h
	sbc a,(hl)
	xor 064h
	adc a,d
	push af
	jp z,07eb2h
	cp l
	or d
l595eh:
	cp (hl)
	add a,b
	inc l
	sub c
	ld c,d
l5963h:
	add a,c
	ret m
	ld d,e
sub_5966h:
	defb 0ddh,0e4h,0c4h ;illegal sequence
	or 05dh
	ld a,(hl)
	ld b,(hl)
	push af
	jp nc,0a38fh
	defb 0ddh,089h,079h ;illegal sequence
	ld (de),a
	ld e,l
	ex af,af'
l5977h:
	ret pe
	ei
	ld b,c
	di
	ld sp,hl
	cp (hl)
	ld de,08333h
	add a,c
	add a,(hl)
	ld sp,hl
	pop af
	add a,b
	inc hl
	ld (hl),b
	adc a,b
	ld (hl),h
	or a
	call c,0c99fh
	sub d
l598eh:
	add a,b
	halt
	add a,b
	ld e,b
	pop hl
	nop
	inc h
	adc a,d
	add hl,sp
	cp c
	sbc a,b
	ex af,af'
	ld b,(hl)
	adc a,b
	jp 0c751h
	add a,c
	ld l,a
	inc d
	add a,b
	ld d,h
	ld (hl),b
	push af
	xor l
	add a,c
	halt
	xor l
	ld h,e
	cp l
	adc a,b
	ld b,(hl)
	xor e
	cp l
	ld (de),a
	ld b,(hl)
	rst 38h
	ld c,c
	cp b
	ld a,d
	inc (hl)
	nop
	ei
	ld d,0bbh
	nop
	rrca
	jp p,08056h
	jr nc,l595eh
	dec e
	dec c
	in a,(0adh)
	add a,l
	ld c,a
	cp l
	cp 0c5h
	sub c
	jr z,l5a29h
	ld e,(hl)
	ld (hl),c
	add a,c
	inc a
	ld b,h
	ld a,a
sub_59d4h:
	and (hl)
	add a,a
	dec c
	add a,e
	add hl,sp
	adc a,b
	adc a,b
	cp l
	adc a,(ix+023h)
	xor a
	jp po,l7b94h
	defb 0ddh,0f5h,0a5h ;illegal sequence
	sbc a,d
	exx
	push af
	or a
	add a,(hl)
	inc e
	and l
	sbc a,d
	adc a,b
	adc a,c
	or d
	ld de,0b998h
	nop
	add a,b
	jr nc,l5a28h
	inc sp
	sub e
	or b
	inc bc
	ld a,e
	sub e
sub_59feh:
	ld sp,hl
	add a,(hl)
	add a,d
	sub a
	add a,l
	sub h
	xor (hl)
	ld a,0c4h
	ld c,h
	inc d
	ld d,h
	ld (bc),a
	sub l
	ld c,(hl)
	or a
	add a,b
	dec h
	ld d,h
	add a,b
	and h
	add hl,hl
	and a
	sub e
	add a,a
	ld c,h
	ld b,l
	sbc a,b
	jp l7fb4h
	add a,e
	ld (0f9afh),a
	adc a,(hl)
	add a,c
	ld l,c
	call m,09ae1h
	sub c
l5a28h:
	ld a,l
l5a29h:
	add hl,hl
	cp e
	adc a,b
	ret
	xor d
	rst 30h
	ld h,d
	sbc a,b
	add hl,sp
	xor d
	cp l
	ei
	and d
	sbc a,a
	di
	add a,d
	inc h
	add hl,bc
	adc a,c
	sub c
	sub d
	xor l
	ret
	add a,d
	ld h,c
	call 03e7fh
	add hl,bc
	ld c,h
	ld d,052h
	inc bc
	ld a,(de)
	dec de
	ld (hl),c
	ret p
	ld c,a
	add a,c
	ld (0980bh),a
	rst 30h
	inc h
	sub d
	add a,b
	and e
	adc a,b
	jp 0bd2eh
	ld d,h
	adc a,b
	rst 38h
	ld a,h
	ld (hl),l
	add a,e
	cp d
	add a,b
	push bc
	or 0b3h
	rst 30h
	ld (de),a
	exx
	sub a
	sbc a,h
	ld l,d
	cp d
	cp b
	ld b,c
	rst 20h
	sub e
	cp a
	ret m
	sub b
	rst 38h
	ld sp,hl
	xor e
	adc a,b
	rst 30h
	exx
	ld d,d
	add hl,bc
	add a,b
	inc de
	or b
	sub b
	ld a,(hl)
	ret nc
	ld c,e
	jp po,l552dh
	add hl,hl
	and 02bh
	add a,c
	add a,h
	ld b,h
	ei
	ld l,l
	ld a,b
	ld bc,00024h
	add a,b
	and h
	rst 38h
	ld a,d
	nop
	cp (hl)
	sbc a,a
	add hl,sp
	add a,d
	ld sp,0ad08h
	xor c
	sbc a,l
	adc a,e
	cp 0f6h
	ld e,h
	ret p
	add a,a
	ld (hl),b
	jp c,0dd7eh
	sub l
	sub b
	ld e,a
	sub e
l5aafh:
	ld l,h
	and 04ah
	cp h
	add hl,de
	jr c,l5aafh
	ret p
	adc a,d
	adc a,c
	pop de
	or l
	jr nz,l5afeh
	add a,b
	jr c,l5b30h
	add a,a
	ld a,a
	call c,sub_6909h
	ld c,l
	jp nz,l4a22h
	ld d,h
	add a,b
	call nc,sub_5481h
	ld b,l
	ld b,l
	add a,b
	cp b
	ret pe
	adc a,c
	ld h,093h
	add hl,sp
	cp h
	sub h
	add a,b
	ld d,d
	adc a,b
	ei
	ld e,d
	cp (hl)
	rra
	sbc a,b
	sbc a,e
	jr nc,$+8
	ld a,c
	xor 0e7h
	ld a,c
	ld a,a
	call nz,0ad8dh
	ld a,(ix-075h)
	pop hl
	inc bc
	rst 38h
	ld (0fd93h),hl
	and b
	sbc a,b
	add a,b
	ccf
	ret p
	and b
	call m,092f3h
l5afeh:
	push bc
	cp a
	ld (de),a
	ld b,h
	ld c,c
	ld b,(hl)
	rst 30h
	adc a,d
	set 7,(hl)
	rlca
	call c,0b60bh
	xor a
	call m,0254dh
	add a,e
	ld h,l
	ld d,l
	add a,d
	ld d,l
	adc a,d
	ld d,l
	call p,0f449h
	add a,b
	inc (hl)
	cp a
	ld d,h
	add a,c
	sub l
	ld b,082h
	ld c,c
	adc a,c
	rst 38h
	ld de,0fdb1h
	ret p
	ld c,a
	adc a,(hl)
	push bc
	adc a,b
	sub (hl)
	sub l
	scf
l5b30h:
	ld a,a
	sub d
	ld (bc),a
	adc a,c
	push bc
	jr z,l5b39h
	sub e
	ret m
l5b39h:
	ld e,h
	inc sp
	ld bc,020cch
	ld (l567eh),hl
	ld h,h
	sub h
	ld l,c
	ret nz
	ld a,a
	nop
	call z,sub_77cch
	ld d,a
	halt
	rst 38h
	call nz,0c592h
	sub e
	jp z,08283h
	jp nc,081a8h
	sub b
	add a,e
	add a,b
	call p,0b514h
	add a,e
	sub e
	ld (bc),a
	jr nz,$-71
	xor h
	jp 00727h
	adc a,b
	rst 0
	defb 0ddh,081h,0f8h ;illegal sequence
	dec sp
	or 0beh
l5b6eh:
	ld a,(hl)
	dec b
	sbc a,c
	jr nc,l5bb8h
	ei
	ld h,c
	sbc a,b
	inc bc
	add a,e
	ld (hl),c
	jr c,l5b6eh
	inc b
	nop
	sbc a,c
	jr z,l5bb3h
	sub h
	ld d,(hl)
	ld h,a
	or (hl)
	adc a,h
	exx
	add a,c
	ld a,a
	ret nz
	inc c
	call z,sub_6666h
	add a,b
	ccf
	add hl,bc
	inc (hl)
	ld c,c
	push hl
	call m,08152h
	call 0f4afh
	sbc a,c
	cp d
	or l
	ret m
	dec h
	call m,0f911h
	ld d,(hl)
	ld (bc),a
	cp (hl)
	rra
	add a,e
	or c
	ld a,a
	add a,(hl)
	sbc a,e
	or h
	adc a,(hl)
	rst 28h
	add a,l
	ld a,(bc)
	ex de,hl
	ld c,d
	cp 0b1h
l5bb3h:
	add a,c
	ex af,af'
	sub e
	add a,e
	adc a,c
l5bb8h:
	xor c
	ld c,a
	adc a,l
	ld hl,l777fh
	ld d,l
	ld h,h
	rla
	add a,c
	sbc a,h
	or l
	ld h,l
	ld d,l
	ld a,a
	pop af
	sbc a,b
	sub e
	inc (hl)
	jp po,080c4h
	and c
	ld e,c
	ex af,af'
	call p,0599dh
sub_5bd4h:
	dec b
	ld a,(hl)
	nop
	ld h,089h
	add a,b
	call c,0fc9ah
	ld a,a
	ld l,093h
	ld c,d
	adc a,a
	ld (hl),h
	set 6,l
	jp m,089e3h
	nop
	jp m,02966h
	adc a,c
	ld e,h
	rst 38h
sub_5befh:
	ld de,l5645h
	ld (hl),a
	ld d,(hl)
	ld c,c
	ld a,a
	add a,b
	or (hl)
	cp e
sub_5bf9h:
	ld d,h
	ld d,l
	ld b,(hl)
	ld a,h
	ld h,l
	inc a
	inc h
	inc bc
	ld b,b
	add a,b
	or h
	ld e,c
	adc a,0f4h
	push hl
	cp a
	jr nc,$+128
	add a,e
	sub e
	ld h,a
	sbc a,b
	inc d
	ld a,a
	jp po,0007ah
	ld a,d
	and 066h
	dec a
	add a,d
	pop bc
	ex af,af'
	ld (bc),a
	ld de,08629h
	ld d,e
	inc sp
	ld a,a
	ld b,066h
	ld d,l
	ld e,c
	ld a,a
	dec b
	add a,077h
	ld b,l
	ld a,e
	call po,02f5fh
	ex af,af'
	inc b
	jr nc,l5c58h
	sub (hl)
	add a,b
	ld c,h
	add hl,de
	sub e
	call p,005eeh
	sbc a,d
	add a,(hl)
	add a,b
	ld (hl),e
	ld a,(hl)
	rra
	ld d,d
	ld a,a
	rra
	xor a
	cp e
	dec l
	ld c,c
	push bc
	ld e,(hl)
	inc hl
	xor a
	pop hl
	add a,b
	ld a,c
	add a,063h
	ex af,af'
	add a,e
	ld b,003h
	ld a,a
	inc h
	add a,b
l5c58h:
	ret z
	ld d,(hl)
	sub h
	ret c
	ld e,d
	exx
	ld h,h
	call po,sub_5156h
	ld h,(hl)
	adc a,c
	ld a,(bc)
	ld b,a
	add a,b
	ret nz
	add hl,sp
	add hl,bc
	sub b
	ld b,e
	ld (bc),a
	ld c,c
	add a,b
	ld h,(hl)
	defb 0edh ;next byte illegal after ed
	call z,0eaf4h
	cp (hl)
	jp z,0ff02h
	ld d,e
	ld a,(hl)
	ld l,0c0h
	ret m
	ld a,a
	defb 0fdh,0afh,0d7h ;illegal sequence
	ret po
	jr $+125
	ld (082afh),hl
	inc bc
	ld c,0a2h
	cp (hl)
	dec b
	adc a,b
	rst 38h
	ld (0c412h),hl
	adc a,c
	add hl,hl
	sbc a,b
	ld d,h
	dec hl
	ld (hl),a
	ld (hl),l
	ld h,c
	ld sp,00744h
	ld h,(hl)
	inc c
	ld a,056h
	ld a,a
	add hl,de
	jr nc,l5cc5h
	add a,b
	inc l
	or e
	ld e,c
	call p,088b5h
	call m,0fcach
	ex (sp),hl
	ld d,d
	rst 38h
	ld a,(hl)
	ld e,a
	xor a
	halt
	ld e,h
	sbc a,c
	ret pe
	inc bc
	call po,0f7f4h
	xor a
	sbc a,c
	ld h,l
	halt
	add a,d
	ld h,a
	ld a,e
	ld h,l
	add a,(hl)
l5cc5h:
	ld c,b
	add a,h
	sub c
	sub h
	defb 0fdh,01fh,066h ;illegal sequence
	ld (hl),a
	ld a,a
	dec b
	or c
	and c
	ld hl,05652h
	pop bc
	dec d
	sub e
	call p,0d89ch
	ld a,d
	call m,000a9h
	rrca
	add hl,hl
	rst 38h
	sub e
	ld (bc),a
	xor a
l5ce4h:
	rst 18h
	inc bc
	or l
	ld c,c
	ex de,hl
	xor d
	cp b
	sbc a,(hl)
	nop
	ex af,af'
	xor a
	jp p,0f3c5h
	ld a,a
	ld c,b
	ld (hl),l
	halt
	ld a,c
	ld h,a
l5cf8h:
	or a
l5cf9h:
	inc hl
	ld c,c
	sub l
	adc a,d
	add hl,hl
	cp 0e0h
	adc a,h
	add a,c
	cpl
	sub d
	add hl,hl
	or h
	inc hl
	sub 01ah
	add hl,de
	ld (hl),a
	adc a,c
	and e
	cp (hl)
	call m,0cd52h
	inc h
	add hl,bc
	adc a,a
	sub d
	ret nc
	ld a,090h
	ld a,a
	ccf
	xor a
	ld (hl),l
	adc a,c
	adc a,b
	ld c,c
	dec l
	ld h,e
	ld bc,0af33h
	sbc a,052h
	ld h,(hl)
	ld e,c
	ld sp,hl
	ld c,c
	halt
	ld h,h
	add a,h
	jr l5d96h
	ld b,l
	ld e,c
	add a,h
	nop
	ld d,a
	xor (hl)
	ret nz
	add hl,sp
	call nz,0257fh
	cp l
	ld b,l
	inc sp
	add hl,sp
	add a,d
	call po,0a1f7h
	adc a,c
sub_5d43h:
	sub l
	add a,(hl)
	inc (hl)
	add a,a
	call po,03949h
	daa
	ld d,l
	sbc a,b
	pop de
	dec (hl)
	rst 38h
	pop hl
	rst 30h
	xor a
l5d53h:
	add a,b
	ld b,d
	inc h
	or d
	pop af
	or e
	jr nc,l5d64h
	jr nc,l5d53h
	xor a
	ld l,0c4h
	ld a,d
	add hl,bc
	ld a,a
	ret po
l5d64h:
	ld a,l
	ld d,l
	ld d,l
	ld h,l
	ret
	ld a,a
	adc a,c
	jr nc,l5cf8h
	ret m
	ld a,a
	ld l,d
	or a
l5d71h:
	inc (hl)
	add hl,sp
	sub e
	rst 28h
	jp z,0b7f8h
	xor e
	call pe,059c5h
	rst 30h
	ld (bc),a
	sub l
	ld d,c
	add hl,de
	call m,sub_49f6h
	ld e,b
	add hl,sp
	add hl,de
	ld b,08bh
	or a
	jp po,0af8fh
	call c,0aae4h
	sub c
	di
	ld c,c
	jp p,0ee99h
l5d96h:
	add a,e
	sbc a,b
	xor a
	ret c
	ld b,(hl)
	adc a,e
	cp h
	ld c,a
	rst 38h
	and l
	ld (hl),e
l5da1h:
	add a,b
	halt
	add a,d
	jr l5da1h
	add a,d
	ld d,l
	ld b,l
	ld h,l
	add a,b
	ld d,e
	ld c,h
	ret po
	adc a,c
	rst 38h
	jr nc,$+67
	ld c,c
	add a,l
	ld b,(hl)
	ld h,039h
	add a,b
	ld d,l
l5db9h:
	dec d
	ld c,07eh
	add a,d
	inc e
	add a,e
	dec hl
l5dc0h:
	jr nc,l5dc0h
	jr z,$-102
	call nz,sub_7c86h
	ld sp,l7e7fh
	xor a
	call c,0eeech
	or c
	dec b
	add a,b
	ld b,d
	add a,a
	sub c
	push af
	inc h
	adc a,b
	xor h
	sub e
	xor a
	xor a
	jp nc,057bch
	rst 18h
	defb 0ddh,013h,066h ;illegal sequence
	jp m,l7685h
	halt
	add a,l
	call z,08949h
	jr z,l5d71h
	ld a,h
	ld d,(hl)
	ld a,a
	ld hl,(0bc30h)
	jp z,0bb48h
	adc a,d
	ld l,l
	cp l
	jp p,022a7h
	ld de,0b398h
	bit 2,h
	jp nz,0c42dh
	dec h
	ld d,008h
	add a,e
l5e07h:
	and 0e3h
	inc a
	sbc a,(hl)
	xor a
	jp c,0b599h
	ld l,0ech
	and h
	ret p
	dec h
	ld hl,l743eh+2
	inc sp
	defb 0fdh,052h,0afh ;illegal sequence
	ld a,d
	xor a
	ld e,038h
	add a,e
	ld a,a
	call p,0b5ffh
	call m,08158h
	ld b,l
	sub a
	inc b
	ld b,l
	ld e,a
l5e2ch:
	ld a,a
	jp 010fbh
	sub c
	ld (0999bh),hl
	cp e
	add a,b
	ld a,a
	cp b
	nop
	sub e
	or d
	ld b,a
	or l
	adc a,d
	adc a,h
	sub b
	ld (hl),c
	sbc a,b
	pop de
	inc hl
	sbc a,e
	rst 38h
	ld a,06fh
	xor a
	ld h,l
	ld c,c
	xor a
	cp d
	ex af,af'
	sub b
	ld sp,hl
	ld (0ae14h),hl
	ld a,c
	rst 38h
	xor c
	cp h
	jr c,l5e07h
	ld (0c2b1h),a
	or d
	rst 38h
	ld a,l
	sbc a,c
	ld h,(hl)
	ld a,a
	add a,b
	ld h,h
	add a,(hl)
	sub c
	call m,08556h
	dec (hl)
	ld d,(hl)
	rst 38h
	pop hl
	adc a,c
	jp m,0d192h
	ld (l70b9h),hl
	adc a,c
	or 011h
	pop de
	ld a,b
	add hl,de
	or h
	res 3,h
	adc a,h
	ld e,a
	jr c,l5e84h
l5e81h:
	adc a,e
	adc a,(hl)
	sbc a,e
l5e84h:
	rst 38h
	ld (hl),c
	ld e,h
	ld de,0f219h
	rst 20h
	xor a
	call pe,0a65ah
	ld b,h
	add a,b
l5e91h:
	ex af,af'
	xor e
	jp m,0c4e5h
	ld b,b
	halt
	sbc a,b
	jp pe,07ff1h
	cp (hl)
	cpl
	ld l,a
	ld c,a
	add a,(hl)
	rst 8
l5ea2h:
	nop
	and e
	xor a
	ld c,e
	or h
	ret nc
	dec de
	cp c
	jr nc,l5e2ch
	jp nc,028cch
	add a,h
	ld h,l
	add hl,sp
	inc bc
	adc a,c
	jp m,0d695h
	sbc a,d
	rst 8
	sbc a,b
	ld a,(hl)
	ld (de),a
	xor 07eh
	cp c
	ld c,d
	sbc a,c
	inc sp
	add a,e
	jp c,0913ah
	ei
	add a,b
	ld a,l
	ld c,h
	cp c
	nop
	pop bc
	add a,d
	sub b
	rlca
	jr z,$-126
	adc a,c
	ld sp,hl
	xor (hl)
	ld de,02fefh
	jr nz,$+35
	ld (hl),a
	add hl,hl
	jp m,0f07fh
	inc e
	sub c
	dec de
	adc a,c
	call z,sub_4691h
	ld c,l
	jp z,l767fh
	jp m,021a2h
	add a,b
	ld a,c
	dec de
	push de
	cp 0ceh
	ld h,091h
	ld d,l
	cp d
	call po,sub_7980h
	jp m,0fdafh
	xor a
	and (hl)
l5effh:
	adc a,c
	call p,00898h
	adc a,c
	xor c
	sbc a,b
	ld a,h
	adc a,e
	ex af,af'
	dec bc
	jr nc,l5f35h
	rst 28h
	ex (sp),hl
	jr l5ea2h
	sub a
	cp e
	sub a
	add a,a
	ret m
	add a,b
	xor a
	ld a,h
	push de
	ld (hl),a
	ccf
	and d
	ld (de),a
	cp c
	ld h,h
	ld (0bb90h),hl
	add a,e
	ld c,d
	add hl,de
	add a,0a7h
	add a,d
	ld b,a
	ld (de),a
	call z,09229h
	add hl,de
	or a
	dec e
	ld h,d
	ret p
	add a,080h
l5f34h:
	ld (hl),e
l5f35h:
	inc c
	xor a
	defb 0edh ;next byte illegal after ed
	ld sp,09f54h
	ld (0acaah),hl
	cp b
	xor l
	ld a,b
	xor b
	dec l
	call m,0fe23h
	ld d,(hl)
	ld de,0f1efh
	call nc,04946h
	push de
	ld h,c
	di
	ret m
	add a,b
	rra
	dec h
	ld a,a
	rst 10h
	inc d
	ld a,092h
	ld b,h
	dec de
	xor 093h
	ld (003b0h),a
	ld a,a
	cp a
	add a,h
	nop
l5f64h:
	add a,(hl)
	pop de
	inc c
	ld (de),a
	sub b
	add a,c
	ld de,09192h
	cp 01dh
	call po,0d27dh
	ld c,c
	sbc a,c
	add a,b
	ld h,a
	xor a
	jp c,0aedah
	ei
	ld (hl),e
	call p,03835h
	xor l
l5f80h:
	ex de,hl
	adc a,c
	ld c,b
	dec bc
	xor b
	ld (de),a
	cp a
	rst 0
	rst 28h
	sub b
	rla
l5f8bh:
	cp e
	ld (de),a
	ld a,b
	ccf
	rst 38h
	and a
	ld c,l
	exx
	ld a,a
	pop af
	and 073h
	ret nz
	ld b,a
	jr c,l5f34h
	call z,09f20h
	di
	inc sp
	adc a,d
	call p,l4dceh+1
	jp z,02109h
	dec de
	ei
	add a,029h
	sub (hl)
	ret z
	add hl,de
	add a,c
	cp c
	ld a,a
	adc a,h
	cp 048h
	ld d,l
	ret p
	sub c
l5fb7h:
	adc a,(hl)
	adc a,(hl)
	ld a,l
	xor a
	add a,(hl)
	sub h
	add a,h
	sub h
	cp 09ah
	call p,004c5h
	add a,h
	add a,l
	ld (bc),a
	add a,l
	ld b,h
	ld b,b
	ld d,d
	sub e
	cp b
	rst 28h
	ld e,(hl)
	jr nz,l5f64h
	or c
	daa
	ld (hl),a
	ld d,021h
	ld a,e
	dec de
	call nc,09f61h
	add a,b
	ccf
	inc h
	ei
	exx
	inc hl
	add a,b
	inc h
	ld a,029h
	ld (0f9ffh),hl
	add a,l
	ret
	dec bc
	inc b
	or b
	ld d,b
	jr l5f8bh
	ld (de),a
	ld a,a
	add hl,hl
	sub (hl)
	rst 38h
	ld d,e
	dec d
	defb 0fdh,0a1h,0b1h ;illegal sequence
	ld e,c
	dec d
	add hl,de
	add a,b
	inc l
	ei
	xor a
	inc e
	add a,l
	rrca
l6004h:
	ld b,b
	ex af,af'
	jr nc,l5fb7h
	ld l,e
	cp 012h
	cp 02eh
	xor a
	sub l
	ld d,d
	add a,h
	add hl,sp
	ld (0e1efh),hl
	dec d
	ex af,af'
	jp p,0ffb1h
	inc l
	sub c
	jp c,0dc8ah
	add a,b
	ld b,h
	ld sp,hl
	add a,b
	ld a,h
	ld a,h
	jp (hl)
	ld sp,0bbb9h
	dec h
	add a,b
	dec hl
	rst 38h
	ld a,b
	nop
sub_602fh:
	ld e,l
	dec de
	adc a,l
	call nc,08014h
	adc a,e
	ld (l7f37h),hl
	call nz,01b55h
	dec e
	ld e,c
	ld d,h
	ld e,c
	ld a,a
	add hl,sp
	ld d,d
	add a,l
	add a,c
	inc d
	inc bc
	nop
	xor a
	ld bc,(0007fh)
	jp m,0fda2h
	inc a
	add hl,hl
	adc a,b
	xor a
	rst 30h
	rst 28h
	add a,b
	nop
	pop af
	ld hl,022b2h
	ld (hl),071h
	inc hl
	ccf
	and d
	ld (hl),h
	add a,b
	adc a,d
	ret p
	cp 0f8h
	ld l,e
l6068h:
	add a,b
	ld h,0fbh
	and e
	add a,h
	rst 38h
	or (hl)
	rst 38h
	rst 30h
	nop
	add a,(hl)
	ld (de),a
	add a,h
	sub c
	exx
	ld c,l
	pop hl
	ld a,(hl)
	add hl,hl
	ld (0c6feh),hl
	call nc,sub_5966h
	pop af
	dec d
	add a,c
	rst 8
	xor a
	and a
	add a,l
	ld sp,0ecafh
	call nz,08382h
	and d
	rlca
	ld a,a
	ld hl,06a15h
	add a,h
	ld b,002h
	ld d,h
	ld d,l
	add a,b
	ld d,h
	ld a,d
	and c
	call nc,0882fh
	ld h,l
	inc c
	rst 38h
	ld (hl),b
	ccf
	ld sp,0041fh
	ld (0bb7bh),a
	or a
	inc sp
	defb 0fdh,048h,03fh ;illegal sequence
	ld (bc),a
	rrca
	sbc a,c
	rst 28h
	rst 38h
	add a,(hl)
	ld (hl),056h
	add hl,sp
	call m,0882bh
	ld l,(hl)
	ld l,l
	ld a,h
	adc a,l
	ld b,022h
	add hl,hl
	sub b
	exx
	pop de
	ei
	add hl,de
	ld a,(hl)
	ret nc
	sub c
	ld d,c
	dec de
	inc de
	or c
	dec de
	ld b,h
	ld a,a
	ld c,e
	ld a,a
	or a
	inc d
	or 029h
	ld c,e
	ld (hl),c
	xor a
	call pe,050adh
	add a,h
	inc de
	sub b
	cp 00ah
	dec b
	ld e,c
	sbc a,b
	cp d
	ld b,h
	dec bc
	ret m
	ld d,(hl)
	xor d
	or d
	sbc a,(hl)
	sbc a,b
	ei
	adc a,c
	ld h,a
	or (hl)
	ld b,b
	sub b
	ret p
	inc bc
	rrca
	ld e,h
	nop
	rst 38h
	ld hl,0b244h
	defb 0fdh,08fh,013h ;illegal sequence
	di
	ret p
	add a,e
	add a,b
	call pe,0a490h
	cp 045h
	inc sp
	call nz,02480h
l610eh:
	add a,b
	ld d,l
	ret p
	ld c,l
	dec a
	ld hl,0a97eh
	adc a,e
l6117h:
	sub c
	add a,b
	ld (0d993h),hl
	ld (0a797h),a
	add hl,sp
	ld a,a
	ld c,(hl)
	ld e,e
	jp pe,0b1c7h
	di
	ld c,a
	sub h
	sbc a,e
	cp c
	djnz l6117h
	pop af
	jp m,0aa6bh
	sbc a,(hl)
	or c
	xor a
	jp po,0a908h
	add a,h
	ld bc,l64b9h
	rlca
	inc b
	ld e,l
	or c
	jp p,l64feh
	xor c
	ld d,b
	ld (0c69ch),hl
	ld (hl),a
	jr c,l618fh
	ld a,e
	and h
	sub b
	rst 18h
	jr nc,l6180h
	sub c
	sub l
	ld (hl),d
	or e
l6154h:
	jr c,l6166h
	pop bc
	ld a,a
	rst 38h
	jr c,l6154h
	call m,0e8aeh
l615eh:
	sbc a,c
	or h
	call z,0b21dh
	defb 0fdh,0f3h,02ah ;illegal sequence
l6166h:
	exx
	call z,sub_4a7eh
	sbc a,c
	jp m,0ee45h
	jp z,l7f39h
	sbc a,c
	ld e,07fh
	jp 0e9bah
l6177h:
	or 0e0h
	ld d,d
	add a,c
	ld l,035h
	ld l,h
	sub l
	xor (hl)
l6180h:
	ld d,e
	nop
	add a,l
	call sub_4f98h
	xor a
	ld d,d
	ex af,af'
	jr c,l610eh
	ld d,(hl)
	add a,h
	ret nc
	sub e
l618fh:
	ld de,l7fc9h
	call p,sub_4918h
	ld a,a
	or (hl)
	ld c,b
	cp e
	ld b,(iy+025h)
	ld h,l
	sbc a,c
	ld h,030h
	and l
	ld d,c
	defb 0ddh,062h ;ld ixh,d
	call c,00021h
	ld a,(hl)
	rst 38h
	rrca
	adc a,a
	ei
	ld a,(hl)
	pop de
	add a,e
	jp z,0fd93h
	sub 0f3h
	ld c,c
	ld b,d
	ld hl,02505h
	sub e
	jp m,02109h
	sbc a,e
	add a,b
	inc l
	ld c,l
	or (hl)
	jr z,l615eh
	rst 20h
	ld a,a
	ld a,(hl)
	ld h,e
	add a,b
	ld h,d
	ret c
	ld c,a
	ld d,l
	or d
	ld d,07fh
	push af
	xor e
	ld bc,0daafh
	add hl,sp
	ex af,af'
	sub b
	add a,l
	ld d,l
	add hl,sp
	jp 0c493h
	sub a
	di
	ld b,077h
	ld d,l
	ld h,h
	sbc a,c
	ld a,a
	add hl,de
	or l
	ld h,l
	add a,e
	adc a,d
	ld l,c
	ld h,c
	rst 30h
	ld b,l
	add hl,sp
	or b
	or d
	inc bc
	ld l,h
	ex af,af'
	jp c,0f0f3h
	ld a,a
	adc a,h
	cp a
	adc a,h
	ei
	jp pe,0027fh
	and d
	jp pe,0aafch
	adc a,0a9h
	ld a,a
	dec b
	adc a,b
	call nc,08948h
	ld c,l
	ld de,0d5fbh
	sub h
	sbc a,l
	rst 20h
	ld a,a
	and l
	sub a
	inc e
	ld a,a
	sbc a,(hl)
	add hl,bc
	ld sp,0f4afh
	ld c,l
	sub d
	ld a,a
	dec d
	ld h,a
	or (hl)
	and a
	ld b,c
	inc h
	set 0,b
	inc c
	call z,0c47fh
	jp nz,0b6adh
	or d
	rrca
	and h
	jp pe,0f84fh
	ret m
	ld a,b
	ld c,(hl)
	jr nz,l6284h
	add hl,bc
	rst 18h
	ret
	sbc a,a
	add a,(hl)
	inc l
	ld b,h
	add a,b
	sub b
	adc a,e
	jp nc,00a7fh
	sbc a,b
	add hl,bc
	call nc,0dc5ah
	or l
	add a,a
	ld a,b
	sbc a,d
	sbc a,(hl)
	add a,b
	ld c,c
	sbc a,e
	ld (l6c80h),hl
	ld d,h
	dec h
	adc a,l
	cp d
	pop bc
	inc d
	or l
	sub b
l625fh:
	add a,e
	ld b,07bh
	xor a
	adc a,l
	ld sp,hl
	ld h,d
	ex af,af'
	adc a,e
	add a,e
	ld e,c
	cp e
l626bh:
	or b
	sub c
	ld b,h
	or 0d2h
	sub h
	halt
	add a,(hl)
	ld a,a
	nop
	call z,086cch
	ld de,094ach
	call pe,0f9e4h
	adc a,h
	call pe,00be9h
	ld (bc),a
	ld c,a
l6284h:
	xor h
l6285h:
	jr nz,$+30
	jp po,083c4h
	ret c
	adc a,017h
	adc a,041h
	sub d
	ld hl,00f29h
	sub c
	ld c,b
	add a,b
	add hl,bc
	call c,09042h
	ld a,e
	sub (hl)
	cp 0a9h
	rst 28h
	ld a,(0ab00h)
	in a,(08fh)
	ld d,(hl)
	ld h,08ch
	sub d
	dec a
	or l
	nop
	xor a
	pop bc
	add a,b
	ld h,050h
	or l
	dec b
	and h
	call p,sub_7ecbh
	or c
	ld c,b
	defb 0fdh,08ch ;adc a,iyh
	ld b,(hl)
	add hl,bc
	ld a,a
	rlca
	inc c
	defb 0ddh,0dch,00bh ;illegal sequence
	or (hl)
	ld a,a
	and (hl)
	dec bc
	sub 0f0h
	ld a,a
	sub b
	inc a
	nop
	inc hl
	jr nz,l625fh
	sbc a,(hl)
	ld a,a
	ld h,h
	cp 09bh
	add a,l
	rst 30h
	xor d
	push bc
	inc c
	ex af,af'
	sbc a,c
	add a,0b2h
	ld h,b
	or e
	ld c,c
	add a,a
	and e
	jp (hl)
	ld a,h
	ld a,a
	sbc a,090h
	call p,sub_4699h
	ld a,(de)
	ld c,b
	di
	dec de
	ld a,e
	djnz $-79
	sub d
	add hl,bc
	ld a,b
	ld a,c
	sub c
l62f6h:
	xor (hl)
	ld a,(hl)
	sub d
l62f9h:
	ret pe
	jp z,00241h
	ld de,l700ch
	sub b
	ld a,a
	add hl,bc
	ld l,c
	call p,03aefh
	or d
	pop de
	ld a,e
	adc a,(hl)
	jp po,l7f32h
	ld (bc),a
	and c
	add hl,bc
	ld l,h
	sub d
	ld d,c
	add hl,hl
	ld e,d
	sbc a,b
	call m,0a294h
	call z,00907h
	sub a
	add a,b
	ld b,b
	add hl,hl
	add hl,bc
	sub l
	ld d,h
	and l
	adc a,(hl)
	sub d
	call po,sub_45a1h
	sub d
	sbc a,04fh
	ld b,c
	xor a
	ld (hl),b
	ld (hl),l
	ld bc,0e2afh
	ld d,(hl)
	ld a,l
	ld h,l
	ret pe
	sbc a,c
	sbc a,e
	ld b,c
	ld b,h
	ld (bc),a
	call sub_7fb0h
	ld (ix-030h),a
	ld l,(hl)
	xor 017h
	ld a,a
	or d
	ld (de),a
	ret nc
	ld a,e
	dec l
	ld d,e
	add hl,bc
	add a,(hl)
	xor c
	defb 0fdh,047h,099h ;illegal sequence
	ld a,a
	add hl,de
	dec bc
	in a,(059h)
	sbc a,l
	ld l,h
	and e
	add hl,bc
	add a,b
	jp nc,l6117h
	add hl,sp
	sub 07fh
	cp e
	adc a,c
	ld d,c
	cp 0f9h
	rla
	xor a
	and e
	or e
	xor a
	jp c,0fc89h
	ld d,l
	pop bc
	add a,l
	rlca
	or b
	and h
	or a
	ld (hl),d
	ret
	ld b,d
	sbc a,c
	ld a,h
	or b
	sbc a,c
	call 02e80h
	dec a
	ret p
	rst 38h
	sub h
	ld d,a
	sub e
	sub 07ch
	ld a,a
	dec d
	ret nc
	add hl,hl
	ld d,b
	rst 8
	adc a,c
	jp pe,l7ecdh
	sbc a,h
	adc a,057h
	inc hl
	ld a,d
	add a,(hl)
	sub (hl)
	add a,d
	ld b,(hl)
	add a,0ddh
	add a,a
	inc c
	ld a,c
	inc sp
	ld h,e
	ld de,00e03h
	adc a,c
	and l
	sub e
	or l
	ld a,(bc)
	add a,b
	xor d
	sub e
	and h
	cpl
	xor a
	ld h,(hl)
	ld a,h
	ld c,b
	or l
	sub b
	ld e,e
	ld c,a
	or d
	and 091h
	inc c
	rst 10h
	inc b
	inc h
	dec c
	ld a,a
	call nz,l74fdh+1
	sub a
	ld hl,(092bbh)
	push de
	inc a
	adc a,a
	jr c,l6419h
	ld c,(hl)
	dec de
	and d
	ld a,(hl)
	add hl,de
	ld e,c
	ret nc
	jr z,l641fh
	ld a,0eeh
	xor d
	ld b,a
	ld a,l
	jp nz,000a9h
	dec h
	add a,h
	sbc a,c
	call p,08154h
	sbc a,c
	inc de
	sub b
l63e7h:
	add hl,hl
	sub l
	ld c,c
	add a,d
	ld b,a
	xor b
	ld a,d
	ld b,l
	add a,b
	ld c,a
	call z,sub_55ech
	xor 02bh
	add hl,bc
	ei
	cpl
	ld (l54afh),hl
	sub l
	adc a,(iy+058h)
	xor a
	and d
	add a,b
	ld e,d
	or c
	dec sp
	ld h,c
	sbc a,h
	jp nz,00d03h
	in a,(038h)
	xor b
	add a,b
	cp l
	call nc,02ee0h
	sbc a,a
	jp p,01948h
	sbc a,c
	ret m
l6419h:
	xor d
	push de
	ld h,c
	ret p
	ld c,c
	ld d,d
l641fh:
	dec d
	add a,b
l6421h:
	cpl
	dec hl
	adc a,017h
	ld c,c
	rst 8
	ld d,d
	ld (hl),l
	and 06ah
	add a,d
	jp po,0d891h
	ld a,a
	adc a,(hl)
	cp d
	ld h,h
	sub e
l6434h:
	or (hl)
	ld a,(hl)
	rlca
	add a,a
	ld a,c
	adc a,(hl)
	cp 0d4h
	jr nc,l63e7h
	or c
	rst 18h
	cp d
	xor (hl)
	ld l,(hl)
	rst 38h
	ld h,c
l6445h:
	ex de,hl
	dec l
	ld a,e
	xor a
	ld c,e
	cp c
	and (iy-06fh)
l644eh:
	add hl,sp
	ld d,c
	inc d
	ld h,b
	xor h
	jp po,0fe99h
sub_6456h:
	ld (hl),b
	inc b
	add a,d
	defb 0ddh,0b7h,0dch ;illegal sequence
	adc a,a
	ld a,c
	inc c
	add hl,bc
l6460h:
	rla
	cp e
	ld a,c
	and d
	add a,h
	nop
	ret p
l6467h:
	rrca
	call 01578h
	dec d
	ld de,01aach
	or h
	ld b,l
	adc a,00ch
	or h
	sub l
	add hl,de
	add a,a
	in a,(0a6h)
	ld l,d
	cp 06bh
	pop de
	cpl
	call p,003b5h
	ld b,(hl)
	rlca
	dec l
	add hl,sp
	cp (hl)
	jp nc,0989ah
	jp po,08106h
	ld (hl),e
	ex de,hl
	ld a,(bc)
	xor 0c7h
	ld (de),a
	xor a
	or h
	add hl,de
	call nz,01cc5h
	ex af,af'
	inc b
	inc d
	dec h
	and l
	ret
	cp 027h
	cp 021h
	nop
	call 0dd7bh
	adc a,b
	sbc a,b
	sbc a,c
	ret pe
	add a,c
	sub c
	daa
	ret po
	rst 38h
	ld a,e
sub_64b0h:
	dec de
	jp p,0cdfdh
	ld a,h
	ld d,(hl)
	sub c
	ret z
	ld a,(hl)
l64b9h:
	pop de
	ld c,d
	ld a,a
	ld b,h
	ld a,a
	jp c,0f13bh
	ld a,a
	ld (hl),l
	sub b
	djnz l6460h
	adc a,d
	add hl,bc
	rst 20h
	xor l
	ld a,e
	sub a
	ld h,(hl)
	add a,c
l64ceh:
	ld h,h
	or l
	xor 097h
	ld b,d
	ld a,h
	ld d,048h
	cp e
	and 084h
	inc de
	sub b
	ld c,d
	sub e
	ld (hl),e
	ld a,a
	cp 014h
	cp 0a4h
	add a,l
	ld l,c
	ld a,l
	ld b,h
	or 09ah
	ld (bc),a
	ld h,b
	or c
	defb 0edh ;next byte illegal after ed
	sub c
	xor e
	ex de,hl
	add a,a
	or c
	inc bc
	ld a,a
	and 055h
	rlca
	ld d,c
	or l
	sub l
	ld b,l
	sub c
	ld e,c
	add a,(hl)
l64feh:
	nop
	dec bc
l6500h:
	ld h,061h
	add hl,de
	adc a,h
	jp po,03b90h
	ld a,a
	nop
	xor e
	cp (hl)
	cp a
	inc sp
	sub h
	ld c,b
	add hl,sp
	or e
	cp 0afh
	ret
	inc c
	ld b,c
	ld a,(hl)
	adc a,d
	sub h
	and h
	sub h
	add a,l
	dec bc
	cpl
	adc a,b
	xor h
	sbc a,(hl)
	add a,0ddh
	inc hl
	and h
	inc l
	ld a,b
	ld c,a
	ld b,09dh
	nop
	call 0d4d7h
	ld sp,0f126h
	ex de,hl
	add hl,bc
	djnz l64ceh
	ld (hl),c
	jr nz,l65b4h
	rrca
	ld bc,0393ch
	ld a,a
	rst 8
l653eh:
	dec de
	dec d
	ret c
	sub a
	sub c
	pop de
	call nz,l74fdh+1
l6547h:
	ld d,0b4h
	cp 0eah
	dec bc
	add a,l
	add hl,sp
	ret m
	nop
	ld h,e
	rst 38h
	adc a,c
	add a,d
	rst 18h
	and e
	ret
	ld l,c
	sub h
	or l
	call c,031bch
	xor a
	ld (hl),c
	inc d
	call c,08977h
	inc sp
l6564h:
	jp z,0fee6h
	ld e,c
	adc a,h
	ld c,b
	sub b
	rst 0
	ld a,a
	ld bc,0310fh
	djnz l65a4h
	ld a,e
	cp e
	or a
sub_6575h:
	djnz l653eh
	adc a,d
	ld h,l
	add a,b
	scf
	rst 38h
	jr z,l65cfh
	ld (hl),b
	ld d,l
	sbc a,b
	add hl,de
	inc de
	dec h
	ld h,l
	ld c,c
	cp 0d8h
	ld hl,01165h
l658bh:
	ret p
	ld a,a
	ret
	ld e,e
	sbc a,a
l6590h:
	or e
	cp h
	and 0f5h
	xor a
	adc a,h
	jp nz,l79a9h
	ld h,b
	add a,b
	inc (hl)
	add a,e
	ld (hl),c
	inc bc
	call m,08391h
	inc d
	add a,d
l65a4h:
	sub e
	rst 8
	cp c
	ld e,d
	sbc a,h
	ld sp,hl
	ld sp,0f9d7h
	ld h,e
	adc a,l
	add hl,bc
	dec c
	ld a,l
	ld e,h
	ccf
l65b4h:
	sub l
	jr c,l65d8h
	sbc a,c
	rst 38h
	or d
	add a,b
	inc e
l65bch:
	ret m
	ld a,a
	dec h
	ld d,h
	add a,b
	add hl,bc
	ld d,l
	ld c,c
	cp 002h
	ld b,d
	ld d,(hl)
	ld d,h
	ld c,c
	cp 05ah
	or c
	sub b
	ld (de),a
l65cfh:
	adc a,e
	ld l,017h
	nop
	cp l
	sbc a,(hl)
	ret nz
	ld b,a
	add a,c
l65d8h:
	res 5,a
	ex de,hl
	adc a,b
	ld e,e
	ld (hl),c
	add a,(hl)
	ld b,c
	ld (de),a
	adc a,b
	ld a,(bc)
	jr c,l65bch
	inc (hl)
	pop af
	add hl,sp
	or l
	ld b,b
	xor a
	ld e,e
	sbc a,c
	ld a,a
	cp 03dh
	and l
	nop
	djnz l6590h
	ld a,a
	sub e
	inc l
	inc hl
	ld (hl),d
	call c,0e829h
	ld l,c
	add a,b
	sub 081h
	inc sp
	inc d
	ld c,025h
	ld h,(hl)
	ld a,a
sub_6606h:
	adc a,c
	sub d
	halt
	cp 05ah
	push hl
	ex (sp),hl
	ld a,(hl)
	add a,d
	ld h,(hl)
	ld d,(hl)
	add a,c
	ld (l5e81h),a
	ld e,h
	ld (09352h),hl
	or h
	ld h,d
	ld a,a
	add hl,de
	xor (hl)
	xor (hl)
	ret m
	sub d
	adc a,b
	xor h
	ld sp,00e9bh
	add hl,sp
	dec bc
	dec hl
	add hl,bc
	and c
	ld (hl),e
	call m,0ad73h
	adc a,c
	sbc a,a
	ex af,af'
	rst 10h
l6633h:
	exx
	adc a,0e1h
	cp c
	ld (hl),b
	sub h
	and 0c3h
	inc bc
	add a,c
	inc e
	ld l,c
	add a,c
	ld l,a
	xor 034h
	exx
	jp p,0f2afh
l6647h:
	add hl,sp
	dec h
	daa
	ld h,c
	cp 06bh
	adc a,e
	and e
	sub l
	ld b,(hl)
	ld a,(hl)
	inc a
	cp a
	add hl,hl
	halt
	ld e,c
	add a,h
	call po,097bdh
	sub h
	add a,d
	call po,09cfeh
	add a,h
	jp z,0a78ah
	cp b
	xor (hl)
sub_6666h:
	inc b
	add hl,bc
	call z,0fc63h
	ld sp,025c0h
	add a,00eh
	inc de
	rst 0
	exx
	jp c,021c3h
	ret nz
	ld e,h
	inc a
	ld b,e
	ld de,08091h
	ld (hl),c
	ld a,(hl)
	or 014h
	add a,b
	and h
	cp 073h
	cp 023h
	add hl,hl
	dec e
	or h
	sub l
	ei
	ld h,b
	ld h,h
	ld d,(hl)
	ld h,a
	rra
	ld (hl),a
	ld h,a
	ld h,l
	ld a,a
	inc (hl)
	cp 0aeh
	ld l,l
	ld e,e
	ld a,a
	cp l
	or e
	sub (hl)
	out (003h),a
	xor a
	ret c
	ld c,b
	sub b
	cp 07ch
	cp (hl)
	or l
	ld h,a
	sbc a,a
	ld c,09dh
	ld a,c
	ld a,a
	rla
	add hl,de
	pop bc
	pop hl
	ld b,h
	ex (sp),hl
	ret nz
	ld d,e
l66b6h:
	ld de,0ba9bh
	sub e
	add a,b
	pop hl
	sbc a,b
	dec sp
	ld h,(hl)
	ld de,0c4a5h
	ld b,l
	ld h,a
	sub b
	cp 049h
	sub l
	sbc a,a
	ld a,a
	ld (hl),a
	ld a,a
	inc a
	ld (bc),a
	nop
	push hl
	or c
	jp m,0f7afh
	ld (02e88h),a
	ld l,a
	ld e,090h
	xor a
	res 3,l
	or 067h
	ret nz
	add a,h
	or e
	add a,b
	ld c,e
	ld a,a
	ld e,e
	cp (hl)
	cp e
	sub c
	ld sp,hl
	ld b,e
	ld hl,(0facah)
	or l
	ld d,l
	ld a,(bc)
	and a
	xor h
	and d
	ld a,(bc)
	add a,a
	dec d
	sub c
	ld (00ac2h),hl
	xor 094h
	jr z,l66b6h
	dec d
	ret
	xor c
	ret pe
	adc a,b
	sub 0aah
	ret
	ld c,e
	add hl,sp
	call 0d773h
	ld c,c
	rst 18h
	nop
	ret m
	and h
	sub b
	add a,e
	rst 30h
	ld a,b
	ld h,e
	ld (hl),h
	cp h
	ld (hl),l
	ld a,(de)
	ld de,02a5eh
	halt
	call z,0f188h
	ld a,(bc)
	dec d
	ld l,a
	dec bc
	ld a,(bc)
	inc hl
	inc l
	cp h
	ld (0db0ah),hl
	ld a,a
	ld (bc),a
	add hl,bc
	adc a,b
	add a,e
	sbc a,b
	sub (hl)
	xor b
	rst 28h
	ret
	rst 30h
	or c
	adc a,b
	or e
	scf
	sbc a,c
	nop
	pop af
	call z,08f98h
	call z,09bedh
l6744h:
	ld a,a
	call nc,sub_59d4h
	ld a,(bc)
	add hl,bc
	rst 0
	ld a,(bc)
	inc hl
	ld hl,(0cacbh)
	ld a,(bc)
	cp h
	dec bc
	ld a,e
	jp nz,0010ah
	nop
	ld c,e
	ld (hl),l
	inc b
	sbc a,b
	jr c,l67d2h
	dec a
l675fh:
	sub c
	add a,h
	rrca
	sub a
	ld (hl),a
	push hl
	ld l,d
	pop af
	ld c,a
	ld a,l
	add a,098h
	ex (sp),hl
	sbc a,b
	di
	ld (hl),a
	rst 38h
	inc c
	ld l,c
	jp nc,0db22h
	jp nc,07f7fh
	cp l
l6779h:
	adc a,b
	rrca
	ld d,l
	dec d
	ld e,(hl)
	dec bc
	cp h
	ld a,(bc)
	jp nz,09530h
	inc d
	ld b,b
	ret pe
	push hl
	inc bc
	di
	dec h
	ld (hl),a
	call 0d594h
	xor 0eah
l6791h:
	ld (hl),c
	sbc a,(hl)
	adc a,09fh
	nop
	jr c,l679bh
	ret p
	dec h
	inc e
l679bh:
	ld (hl),a
	jr z,l6791h
	sbc a,h
	adc a,07fh
	sbc a,h
	xor l
	cp h
	ld (hl),h
	inc (hl)
	sub b
	ld (hl),h
	cp l
	xor d
	ret p
	ld a,(bc)
	dec sp
	set 3,l
	ld a,(bc)
	ld d,c
	ld (09722h),hl
	cp (hl)
	ld a,(bc)
	ld h,b
	adc a,b
	sub b
	sub e
	adc a,b
	jr nc,l675fh
	jp p,0a8bfh
	inc d
	sub a
	cp e
	push de
l67c4h:
	call 0fa8eh
	ld a,a
	ld a,a
	rrca
	sbc a,c
	ret po
	ld a,(bc)
	sub c
	cp e
	sbc a,d
	dec e
	di
l67d2h:
	jr nc,l67c4h
	rrca
	dec c
	sbc a,d
	xor e
	jp c,l6068h
	add hl,hl
	dec sp
	sub d
	ld hl,(0dedbh)
	dec bc
	ld a,(bc)
	dec c
	ld (l68cdh),hl
	rst 20h
	ld a,(bc)
	ld (hl),h
	adc a,a
	ld a,(bc)
	ld b,b
	add a,e
	ex af,af'
	sub e
	inc sp
	rst 10h
	nop
	sub b
	ld a,a
	ld e,l
	ld a,b
	ld (hl),e
	ret p
	rra
	ld a,a
	ld a,b
	ret m
	ld (bc),a
	ld e,c
	ld (de),a
	ld d,l
	sub d
	di
	add a,l
	ld (hl),a
	ld a,a
	ld (hl),e
	adc a,0aeh
	ld e,l
	dec bc
	jp p,0920ah
	xor (hl)
	ld l,b
	ld l,l
	ld a,(bc)
	or a
l6813h:
	ld (hl),h
	ld a,(bc)
	call nc,00083h
	xor d
	cp 083h
	add hl,hl
	add a,d
	ld de,0ff09h
	rst 18h
	ld a,a
	push hl
	ld b,080h
	add hl,bc
	and c
	cp e
	and a
	sbc a,d
	adc a,h
	ld a,c
	ld a,a
	rst 20h
	adc a,e
	ld (hl),c
	call c,00a9dh
	and 068h
	and c
	ld a,b
	ld c,a
	inc hl
	xor c
	ld a,(bc)
	ld e,c
	ei
	rrca
	add a,e
	adc a,c
	ld sp,hl
	ld b,e
	add hl,sp
	add a,b
	ld b,l
	daa
	rst 38h
	adc a,h
	ex de,hl
	ex (sp),hl
	ld a,a
l684bh:
	pop af
	ld b,d
	ret p
	ld (hl),l
	daa
	ld (hl),a
	add a,c
	adc a,e
	ld b,c
	ld a,a
	add a,0bah
	ld a,b
	exx
	dec sp
	ld (hl),e
	xor c
	ld a,(bc)
	exx
	sbc a,c
	xor d
	ld l,b
	sbc a,l
	ld a,(bc)
	ld (hl),c
	inc hl
	ld a,(bc)
	jp (hl)
	cp 013h
	ex af,af'
	jp (hl)
	inc (hl)
	nop
	sbc a,b
	jp z,0ff14h
	in a,(07eh)
	ex de,hl
	ret c
	call m,0317fh
	sub l
	ld (hl),d
	ld (hl),l
	push bc
	jr nz,l6813h
	ld (0a657h),hl
	xor e
	ld sp,hl
	ld (hl),e
	sbc a,0f3h
	ld a,b
	dec bc
	xor 0f1h
	xor e
	ld a,a
	ld l,b
	call m,0cfbbh
	ld (hl),h
	ld a,(bc)
	ld d,l
	inc sp
	jp m,09007h
l6897h:
	cp e
	jp pe,005a5h
	jp m,l788dh
	rst 28h
	jr nc,$-2
	ld a,a
	ld (hl),e
	ld d,d
	ld (080c5h),hl
	ld (hl),l
	inc hl
	dec h
	add hl,bc
	adc a,a
	cp 04eh
	and 0e3h
	dec bc
	and h
	jr nc,l684bh
	ld (hl),l
	call z,03098h
	adc a,a
	and h
	rra
	ld a,(bc)
	ld b,h
	jr nc,l6930h
	sub e
	ld d,a
	or b
	ld (bc),a
	ld (hl),l
	ld a,a
	ld e,d
	adc a,e
	ld e,e
	rst 8
	ld (de),a
	rst 38h
	ret m
	add a,b
l68cdh:
	rrca
	ld a,(bc)
	dec de
	cp e
	or c
	sub h
l68d3h:
	cp l
	push af
	ld a,a
	defb 0edh ;next byte illegal after ed
	and 0ebh
	dec bc
	pop af
l68dbh:
	cp b
	sub (hl)
	adc a,e
	ld e,(hl)
	inc bc
	dec h
	dec a
l68e2h:
	ld a,(bc)
	rst 20h
	rla
	jp c,033e0h
	jr c,l68f9h
	ld c,0f3h
	inc sp
	ex af,af'
	add hl,sp
	ld a,a
	and e
	cp 013h
	nop
	rst 38h
	ret m
	rst 20h
	sub e
	add a,b
l68f9h:
	ex (sp),hl
	out (0ffh),a
	ld e,a
	or c
	ld (hl),h
	rst 8
	rst 0
	ld a,(07f7dh)
	daa
	sub b
	sub a
	rst 0
	ld d,b
sub_6909h:
	jp nz,l470dh
	and b
	rst 38h
	adc a,h
	dec d
	add a,e
	inc bc
	jr c,l6897h
	sub b
	rst 38h
	ret p
	inc bc
	jr nz,l68d3h
	ld c,e
	sub b
	add a,h
	cp h
	ld a,(hl)
	ld a,a
	inc h
l6921h:
	ld (bc),a
	ld (hl),d
	and c
	or e
	add hl,hl
	ld e,d
	call c,0f3feh
	adc a,e
	ld c,(hl)
	sub d
	sbc a,b
	ex de,hl
	dec c
l6930h:
	rst 28h
	inc hl
	pop bc
	add a,b
	ex af,af'
	adc a,(hl)
	ld a,c
	jp p,02130h
	ld de,0c790h
	rst 30h
	ccf
	ld a,a
	add a,052h
	sub a
	add a,h
	ccf
	ld e,c
	ld a,a
	jr c,l68e2h
	xor e
	call p,0917fh
	xor 089h
	add a,d
	ld d,c
	jr c,l6986h
	ld a,a
	cp (hl)
	exx
	sbc a,a
	ld a,a
	sbc a,c
	inc hl
	ld sp,l7f52h
	sbc a,c
	ld a,a
	jp p,06478h
	ld a,h
	add hl,de
	ld e,00dh
	inc sp
	or b
	jp 0ed08h
	ret po
	inc sp
	ld (09829h),a
	ccf
	sub d
	inc d
	exx
	adc a,(hl)
	nop
	sbc a,009h
	jp m,09af8h
	ld a,h
	sbc a,c
	pop af
	ld a,a
	ld a,0bah
	sbc a,c
	ld a,a
	ld h,h
	sbc a,l
	add a,b
l6986h:
	cp d
	ld a,d
	ld a,a
	sub 0eeh
	ld bc,09233h
	ld (de),a
	add hl,hl
	nop
	ld b,e
	ld (hl),e
	sbc a,l
	push af
	ex (sp),hl
	rst 38h
	rst 8
	add a,h
	ld b,l
	ld b,056h
	ld h,l
	ld h,(hl)
	ld d,l
	ld e,c
	ex af,af'
	ld bc,07746h
	ld b,l
	ld a,e
	ld d,h
	ld b,l
	push hl
	ld l,0b3h
	jp p,0fbf3h
	ld a,a
	ld h,h
	ld d,0fbh
	sub h
	ret p
	inc bc
	ld b,d
	ld de,08012h
	nop
	ld a,a
	call p,sub_5586h
	ld d,(hl)
	ld c,c
	ld a,a
	add a,e
	cp e
	ld d,h
	ld d,l
	ld b,(hl)
	ld h,l
	ld a,a
	ex de,hl
	sub a
	rst 38h
	ld d,a
	sbc a,d
	ld a,a
	and e
	adc a,b
	ei
	jp nz,00408h
	ld a,a
	ld (hl),c
	sub b
	ld a,a
	ld (hl),l
	in a,(090h)
	ld a,a
	ret p
	add a,c
	sub h
	ld d,(hl)
	ld (hl),a
	ld d,l
	ld h,h
	add a,(hl)
	sbc a,h
	ld b,h
	add a,a
	ld h,(hl)
	dec a
	ld h,(hl)
	ld h,h
	ld (hl),d
	ld h,a
	pop af
	sbc a,080h
	sbc a,09bh
	ld a,b
	ei
	ld hl,01194h
	add hl,hl
	add a,l
	ld h,h
	exx
	jp m,0ff4fh
	pop hl
	ld b,e
	ld a,a
	ld h,a
	or (hl)
	ld b,h
	add hl,bc
	add a,e
	ld c,c
	sub h
	ld a,a
	di
	dec l
	add a,b
	in a,(000h)
	dec e
	ld (0eef2h),hl
	nop
	xor a
	cp 0c3h
	ld de,l5644h
	ld h,h
	adc a,d
	ret c
	ld (hl),a
	halt
	ld c,c
	jp m,0897fh
	sbc a,d
	defb 0ddh,0ffh,075h ;illegal sequence
	ld a,e
	in a,(07fh)
	xor h
	ld hl,0f53dh
	rst 20h
	ld a,a
	di
	ld (l7680h),hl
	ld c,c
	ld a,a
	ld l,e
	ld a,(hl)
	or (hl)
	ld a,a
	ret po
	sub d
	inc h
	sub b
	ld c,e
	add a,e
	pop af
	sbc a,h
	cp 0feh
	rra
	nop
	and d
	ld b,(hl)
	adc a,c
	ld d,a
	jp p,0951eh
	xor l
	adc a,l
	cp h
	cp l
	ex af,af'
	add a,a
	sub b
	add hl,sp
	add hl,hl
	sub e
	add a,(hl)
	ld e,a
	ld a,a
	or a
	rst 10h
	ld e,(hl)
	or (hl)
	rst 38h
	pop af
	rra
	defb 0ddh,0a9h,07fh ;illegal sequence
	ld d,a
	adc a,a
	ld h,l
	add a,l
	ld h,l
	add a,b
	add hl,sp
	ld e,d
	adc a,e
	cp 000h
	inc (hl)
	xor d
	ld c,a
	ret
	ld a,a
	adc a,(hl)
	add a,b
	ld a,l
	ld e,a
	sbc a,l
	ld a,a
	ld l,e
	sub e
	ld l,l
	dec c
	inc bc
	inc bc
l6a7fh:
	call m,09ff2h
	cp 0c5h
	sub 0a8h
	adc a,b
	sbc a,h
	cp c
	di
	ret m
	ld sp,hl
	adc a,h
	exx
	exx
	rst 38h
	adc a,a
	ld b,h
	xor 06bh
	jr nc,l6b09h
	ld de,0d303h
	rst 20h
	adc a,h
	ld e,(hl)
	sbc a,e
	add a,d
	or 0e5h
	ld a,a
	xor l
	push af
	add a,b
	sbc a,(hl)
	jp nc,0f38ch
	in a,(0feh)
	adc a,h
	or b
	or (hl)
	add hl,bc
	sbc a,h
	add a,b
	ld l,d
	sbc a,b
	ld a,a
	sub b
	cp 05fh
	ld b,e
	jr z,l6abch
	set 0,b
	inc c
l6abch:
	ret nz
	di
	cp (hl)
	dec (hl)
	exx
	adc a,l
	cp h
	pop af
	and (hl)
	ret po
	sbc a,l
	xor 016h
	add a,b
	xor c
	pop af
	inc hl
	jp p,00984h
	cp 072h
	sub b
	adc a,a
	cp 0c8h
	ld h,b
	ret
	ld a,a
	nop
	call z,09fcch
	add a,b
	add a,a
	adc a,l
	ld a,(hl)
	sbc a,e
	cp 078h
	ld h,e
	pop af
	ld b,088h
	adc a,b
	ex af,af'
	rst 30h
	ld a,b
	ld b,a
	cp 0e5h
	inc hl
	inc c
	rst 38h
	ld b,h
	inc c
	defb 0ddh,0dch,080h ;illegal sequence
	push af
	rst 20h
	ld a,(hl)
	ld e,a
	ld a,a
	ld c,a
	ld (hl),l
	adc a,a
	add hl,bc
	ld l,a
	nop
l6b02h:
	defb 0edh ;next byte illegal after ed
	cp (hl)
	add a,l
	inc hl
	add a,e
	sbc a,c
	add a,b
l6b09h:
	rlc b
	pop af
	pop de
	ld bc,08782h
	ld (hl),b
	sub b
	ld a,a
	ld (hl),d
	rst 20h
	jp (hl)
l6b16h:
	add a,b
	ld e,(hl)
	rst 18h
	jr l6b38h
	rst 38h
	ret m
	ld (de),a
	sub e
	inc bc
	ld (hl),e
	inc sp
	adc a,c
	ld e,d
	push bc
	nop
	sbc a,c
	call m,04cbeh
	ld (bc),a
	call 0b047h
	ld a,a
	defb 0ddh,0d0h,066h ;illegal sequence
	pop bc
	di
	sbc a,(hl)
	sub a
	rst 38h
	sub c
l6b38h:
	adc a,e
	pop af
	ex (sp),hl
	sub (hl)
	ld l,h
	jr nc,l6b85h
	rra
	inc bc
	add hl,sp
	sbc a,c
	nop
sub_6b44h:
	ret nz
	add a,0d0h
	ld d,c
	rst 0
	ld c,h
	sbc a,h
	ld a,(bc)
	cp d
	nop
	ld a,(bc)
	ex (sp),hl
	inc c
	ld a,(bc)
	cp e
	rra
	ld a,a
	dec a
	ld a,(bc)
	xor a
	rst 38h
	ld h,e
	push af
	jp p,000beh
	xor b
	ld d,b
	and d
	ld (02059h),hl
	adc a,072h
	pop bc
	jp nc,00a22h
	call nc,00d68h
	cp e
	ld a,a
	ld a,(bc)
	inc sp
	ld (bc),a
	ld (00a74h),hl
	or a
	dec l
	ld a,(bc)
	ld a,(0b4edh)
	add a,c
	ld a,a
	ld a,a
	ld b,00ah
	or (hl)
	ld l,b
	ld (hl),l
	adc a,d
	add hl,sp
l6b85h:
	halt
	ld (0020ah),hl
	sbc a,l
	dec bc
	jp nc,0910ah
	ld (08b2ah),hl
	cp h
	ld a,(bc)
	cp d
	ld (0bc0ah),hl
	cp 0b9h
	rst 38h
	inc sp
	ld a,(hl)
	call m,09210h
	ld hl,(094ach)
	add a,b
	cp b
	ld l,d
	ld a,(bc)
	dec e
	in a,(0c2h)
	ld (03c0ah),hl
	ld (06415h),hl
	ld b,02ch
	and d
	xor a
	ld a,(bc)
	xor d
	jr nc,l6b38h
	ld l,h
	rst 38h
	ld h,a
	nop
	rst 30h
	pop de
	or d
	ld l,c
	set 1,d
	ld (hl),l
	sbc a,d
	ld a,(bc)
	ld hl,(009e1h)
	ld (0c915h),hl
	cp h
	and d
	ld a,(bc)
	ret c
	ld (0ccabh),hl
	ld a,e
	and d
	ld a,(bc)
	xor c
	add hl,bc
	add a,c
	ld (de),a
	sub e
	rst 38h
	call m,01219h
	ld (0c375h),hl
	ld hl,0860ah
	xor h
	ld a,a
	cp c
	ld hl,l7815h
	call z,sub_7115h
	ld d,00ah
	defb 0edh ;next byte illegal after ed
	nop
	ld d,(hl)
	call m,07f7fh
	inc c
	call z,sub_74c7h
	ld de,02f0ah
	jp z,0090ah
	ld l,c
	and d
	ld a,(bc)
	push af
	ret nc
	call m,0dc30h
	add a,d
	defb 0fdh,07ch ;ld a,iyh
	rst 38h
	nop
	rst 38h
	ret m
	nop
	ld l,d
	nop
	nop
	ld a,e
	nop
	nop
	sbc a,a
	cp e
	nop
	nop
	sbc a,b
	call z,0cc3eh
	ret nz
	dec e
	and e
	ld bc,01510h
	ex (sp),hl
	ld h,b
	ld de,03100h
	ld de,00733h
	ld c,a
	call p,03333h
	ld b,h
	ld a,(de)
	or b
	dec bc
	cp e
	cp e
	ld a,(hl)
	ld h,(hl)
	ld a,a
	ld l,c
	rst 0
	ld (hl),b
	dec b
	add a,e
	ld (hl),a
	ld (hl),a
	ld (hl),b
	dec e
	call po,0163eh
	ld h,b
	ld a,a
	ld a,d
	nop
	ld a,a
	ld (01343h),hl
	add a,b
	adc a,a
	cp 080h
	or (hl)
	ld h,(hl)
	ld a,h
	ld h,(hl)
	inc (hl)
	sbc a,(hl)
	nop
	adc a,087h
	rlca
	sbc a,a
	rst 0
	ld a,a
	ld hl,(0fe0ch)
	add hl,sp
	ld a,066h
	dec bc
	ld a,a
	or e
	di
	inc sp
	ld a,a
	pop hl
	ld h,h
	dec bc
	ld a,a
	add a,c
	cp (hl)
	ld de,0b00ch
	rst 38h
	rra
	ld l,a
	ld a,a
	ld h,a
	ld de,07f20h
	ret z
	inc de
	ld h,c
	ld de,l4403h
	ld b,e
l6c80h:
	ld a,(hl)
	daa
	inc (hl)
	rst 38h
	pop hl
	adc a,b
	ld a,(hl)
	ld h,l
	ld d,l
	add a,c
	call m,0cb07h
	ld a,a
	ld l,a
	ld a,h
	ld a,a
	xor h
	nop
	ld b,097h
	res 1,l
	ld bc,01cffh
	sub h
	inc d
	call p,08485h
	inc d
	nop
	add a,b
	cp h
	ld l,a
	ld d,(hl)
	ld a,a
	ret nz
	ld a,e
	in a,(07fh)
	rst 0
	add a,b
	xor c
	rlca
	inc c
	ld a,(hl)
	call z,0fcc9h
	sbc a,h
	ld a,a
	ret z
	ld a,d
	di
	inc b
	ld b,e
	rra
	ld c,e
	nop
	add a,b
	rst 0
	add a,d
	ccf
	add a,b
	inc c
	ld (hl),a
	in a,(009h)
	ld a,a
	ld a,(00077h)
	ld a,c
	ld (hl),b
	ld a,(hl)
	dec d
	ld (hl),a
	ld a,h
	cp 0d1h
	ld de,0fe10h
	ccf
	jr c,l6cebh
	inc (hl)
	ld b,e
	sbc a,h
	add a,d
sub_6cdch:
	ld a,h
	ld c,a
	ld e,02eh
	dec bc
	ld a,a
	defb 0edh ;next byte illegal after ed
	adc a,e
	inc hl
	rst 38h
	jp (hl)
	rst 30h
	ld a,a
	cp (hl)
	ld a,l
l6cebh:
	ld a,a
	add hl,hl
	add a,b
	add hl,bc
	nop
	ld (bc),a
	cp 0f9h
	sub b
	inc de
	ld a,e
	ld b,c
	inc de
	ld b,e
	ld a,034h
	ret p
	ld a,a
	ld a,(hl)
	nop
	ex af,af'
	or (hl)
	or b
	rst 38h
	ld sp,hl
	ex de,hl
	rst 10h
	jp 0c27fh
	rst 38h
	ld e,h
	call m,0047fh
	ld d,066h
	ld h,d
	cp 0bch
	call nz,01433h
	cp 041h
	inc (hl)
	ld c,a
	rst 38h
	rst 38h
	inc e
	call pe,sub_7005h
	ld d,l
	ld a,a
	ld d,(hl)
	ld d,d
	ld d,l
	add a,h
	jp nc,08001h
	di
	sbc a,(hl)
	dec c
	bit 7,a
	rrca
	ld (hl),a
	nop
	rrca
	ld a,a
	adc a,(hl)
	add a,c
	ld d,e
	ld a,a
	push hl
	inc b
	ld b,e
	inc d
	ld b,h
	ld de,l7f44h
	cp a
	ld a,d
	or b
	ld a,l
	cp c
	ld d,l
	ld a,a
	ld (hl),b
	ld d,l
	nop
	ld d,(hl)
	sbc a,a
	ex af,af'
	or b
	ld a,a
	inc sp
	cp e
	ld a,a
	jp po,08197h
	inc b
	ld (hl),b
	ld a,a
	call z,0eb97h
	rrca
	ld a,a
	sub l
	inc de
	defb 0fdh,09bh,07fh ;illegal sequence
	ld de,0ffbfh
	pop hl
	jp (hl)
	ld (hl),e
	adc a,d
	ld d,b
	rst 38h
	ld b,l
	ld h,l
	add a,c
	rst 20h
	nop
	inc b
	ld h,l
	ld d,(hl)
	add a,b
	cp h
	rst 8
	call 08b7fh
	ld a,(hl)
	cp c
	adc a,c
	ret
	ld a,a
	rst 0
	cp 03ch
	xor e
	ld h,c
	cp 0e4h
	ld l,d
	inc sp
	ld a,a
	ccf
	call m,0f460h
	ei
	rst 38h
	call p,0e4a7h
	inc d
	dec b
	rst 30h
	ld (hl),b
	ld d,b
	or h
	rst 38h
	ret p
	ld a,a
	sbc a,b
	add a,l
	ld l,e
	or b
	call m,0897fh
	add a,b
	jp pe,0ca7bh
	ld (bc),a
	rst 38h
	defb 0edh ;next byte illegal after ed
	ld de,09581h
	add a,d
	call m,sub_7b19h
	cp 039h
	ld sp,hl
	add a,h
	defb 0fdh,0a0h,0fbh ;illegal sequence
	call p,sub_5d43h
	nop
	ld a,a
	ld h,d
	ld c,d
	defb 0edh ;next byte illegal after ed
	ld h,l
	ld (hl),a
	cp 0adh
	halt
	rlca
	ld c,c
	add a,a
	add a,c
	inc a
	ld (de),a
	ld h,l
	cp e
	rst 38h
	jp p,0bcbeh
	ld a,a
	adc a,l
	dec b
	sbc a,a
	rst 38h
	ld a,(bc)
	add a,b
	rst 0
	ld l,e
	ld a,a
	pop bc
	ld a,(hl)
	sub h
	jp m,0fc48h
	ld b,h
	ld c,h
	rst 38h
	defb 0fdh,044h ;ld b,iyh
	ld c,c
	inc sp
	and e
	add a,b
l6de7h:
	dec e
	ld d,d
	pop af
	ld b,(hl)
	ret m
	ld (hl),055h
	add hl,bc
	defb 0fdh,084h ;add a,iyh
	ld d,l
	adc a,(hl)
	or 055h
	ld b,a
	ld l,e
	add a,b
	ret z
	in a,(070h)
	cp l
	ld b,050h
	add a,0f9h
	inc hl
	add a,b
	pop de
	ld (hl),b
	ld a,a
	bit 6,a
	ld l,e
	xor h
	ret z
	ld a,b
	ld c,(hl)
	ld bc,l7f13h
	inc hl
	cp 064h
	defb 0fdh,09ah,083h ;illegal sequence
	djnz $-85
	call po,0f8bbh
	ld c,e
	dec iy
	rst 28h
	scf
	ld a,a
	inc d
	add a,l
	or c
	add a,b
	defb 0ddh,082h,0bch ;illegal sequence
l6e27h:
	add a,e
	dec c
	defb 0ddh,0bbh,0ddh ;illegal sequence
	ld e,c
	push hl
	rst 38h
	ld a,d
	ld (hl),a
	nop
	daa
	rlca
l6e34h:
	rst 38h
	ld l,l
	adc a,h
	pop bc
	ld b,027h
	ld d,a
	jp nz,07478h
	djnz l6e27h
	ld a,a
	call m,0ab18h
	ld a,a
	ld a,(hl)
	ld a,a
	rst 38h
	halt
	ld b,l
	xor 000h
	cp 02eh
	ld (hl),a
	ld a,e
	ld a,(hl)
	adc a,l
	add a,b
	ld l,a
	ld d,(hl)
	pop bc
	add a,00dh
	add hl,hl
	ret nz
	in a,(0b0h)
	sbc a,e
	jr z,l6edeh
	sbc a,0fbh
	ld (097ffh),a
	ld a,a
	and c
	ld bc,01116h
	rst 38h
	inc hl
	or d
	adc a,b
	ld e,b
	ret z
	adc a,c
	ld (l6921h),hl
	djnz l6e87h
	ld sp,0fe13h
	ld c,e
	ld a,a
	adc a,b
	ld b,h
	cp 0b7h
	rst 38h
l6e7fh:
	adc a,(hl)
	ld a,h
	ld h,(hl)
	jp pe,001a5h
	xor h
	ret po
l6e87h:
	sub h
	sub a
sub_6e89h:
	ret m
	inc d
	ld l,l
	rst 38h
	and d
	dec b
	ld b,(hl)
	jp nz,l6564h
	rst 38h
	cp d
	out (08bh),a
	cp h
	rst 38h
	xor b
	ld h,b
	ld b,012h
	ld d,(hl)
	ld (00187h),hl
	jr nz,$+7
	nop
	ld (02026h),hl
	cp 03ch
	ld d,e
	cp 02dh
	call p,02980h
	nop
	rst 38h
	ld e,c
	add a,b
	ld b,(hl)
	ld h,l
	xor 032h
	ld h,l
	ret m
	ld l,b
	ld h,a
	add a,c
	ld e,c
	ld h,b
	cp 0f0h
	sub e
	res 7,l
	ei
	inc bc
	ld d,h
	ld b,e
	ld b,h
	ld b,(hl)
	ld h,b
	ld a,a
	call pe,sub_769ah
	ld h,0c5h
	jp nz,0f962h
	jr nz,l6ef7h
	jr nz,$+109
	ld d,b
	inc hl
	ld (bc),a
	ld h,d
	sub d
	adc a,b
	rst 38h
l6edeh:
	and (hl)
	ld bc,l7f34h
	ld c,c
	add a,c
	add a,e
	ld d,l
	inc b
	ld (de),a
	cp b
	xor 0b6h
	di
	adc a,b
	ld d,(hl)
	ret pe
	ret m
	sub e
	dec b
	add a,c
	adc a,(hl)
	ld d,(hl)
	cp 078h
l6ef7h:
	sub c
	cp l
	add iy,bc
	ld b,e
	ld b,d
	inc (hl)
	sbc a,d
	ld c,a
	ld a,a
	xor c
	ld bc,016f8h
	push bc
	di
	ld (bc),a
	ld de,06662h
	rst 38h
	sub c
	cp 0c2h
	nop
	ld a,l
	ld c,l
	inc sp
	ld a,b
	ld b,e
	defb 0fdh,0c9h,086h ;illegal sequence
	ld (08e84h),hl
	rst 38h
	dec hl
	ret pe
	sbc a,d
	di
	jp c,l4f99h
	inc b
	inc l
	cp d
	jp po,0f584h
	ld h,b
	rst 38h
	ld a,a
	ld a,(bc)
	push de
	cp d
	ld b,(hl)
	ld (08ec3h),hl
	ld d,b
	jr z,l6f36h
l6f36h:
	rla
	ld (hl),c
	ld (hl),a
	rla
	rla
	ld (hl),a
	xor c
	inc bc
	add hl,bc
	inc b
	ld (hl),c
	ld bc,00a66h
	rlca
	ld h,d
	inc h
	ld (de),a
	defb 0fdh,032h,0fah ;illegal sequence
	dec l
	nop
	sub l
	add a,(hl)
	ld b,h
	nop
	cp 002h
	adc a,0fdh
	ld b,(hl)
	inc (hl)
	rst 38h
	inc sp
	defb 0fdh,00ah,0f4h ;illegal sequence
	ld a,(hl)
	add a,b
	ld (hl),d
	jp nz,l7f4fh
	ld (hl),d
	inc d
	ld b,c
	xor b
	or l
	ld bc,0e17fh
	add a,b
	dec hl
	add a,c
	ld c,a
	ex af,af'
	ld h,l
	ld b,e
	ld (02148h),a
	out (046h),a
	add a,009h
	ld (hl),c
	ld (hl),l
	ld e,c
	inc bc
	ld (hl),h
	halt
	adc a,e
	ld (hl),c
	nop
	in a,(055h)
	rla
	dec c
	ld e,c
	rlca
	ld l,c
	ld (hl),l
	sub d
	ret m
	ld l,a
	call pe,01209h
	call c,01612h
	ld c,020h
	nop
	call c,0fa7fh
	ret nz
	ld b,c
	inc d
	rst 38h
	di
	ld l,l
	ld sp,000feh
	ld c,c
	adc a,d
	jp p,0f3fch
	ld a,a
	dec de
	jr z,l6fbah
	and h
	or l
	inc d
	ld sp,00644h
	rst 0
	sub d
	dec (hl)
	add a,d
	ld b,a
	ld a,a
	cp d
	bit 3,b
	adc a,h
l6fbah:
	nop
	ld (de),a
	ld (hl),0cdh
	pop hl
	ld sp,0937eh
	ld (bc),a
	ld (hl),a
	push de
	ld a,b
	add hl,de
	scf
	ld (hl),c
	ld (hl),e
	ld a,(hl)
	rrca
	add hl,sp
	ld de,0927fh
	and d
	pop af
	cp b
	add a,b
l6fd4h:
	inc h
	ld d,060h
	ld d,b
	ld h,c
	ld (de),a
	ld (bc),a
	ld b,a
	or d
	rst 38h
	nop
	inc (hl)
	ld b,c
	ld c,a
	ld b,e
	ccf
	ld (hl),d
	di
	add a,c
	call nz,013feh
	jp p,08d7fh
	cp 039h
	inc b
	ld b,h
	ld a,a
	ld h,e
	inc d
	ld a,a
	ld b,c
	cp e
	sbc a,c
	ret m
	ld a,a
	jp nc,001ddh
	or c
	ld e,e
l6fffh:
	ld (l4512h),a
	ld a,(bc)
	add a,02eh
sub_7005h:
	nop
	call pe,sub_73d6h
	inc sp
	ld b,08bh
l700ch:
	inc e
	ld c,d
	rst 38h
	call c,0ec22h
	ret nz
	dec de
	nop
	ld l,e
	ld (bc),a
	ld hl,00666h
	or (hl)
	ld hl,0fe00h
	cp b
	ld c,d
	inc de
	ld (hl),l
	rst 38h
	ld e,h
	ld (hl),052h
	inc (hl)
	ld a,a
	defb 0fdh,07dh ;ld a,iyl
	add a,c
	ld c,a
	rst 0
	rst 28h
	ld (hl),c
	dec hl
	or c
	ld a,(hl)
	ld hl,03542h
	ld b,(hl)
	defb 0fdh,0c7h,000h ;illegal sequence
	ld b,b
	ld de,01e46h
	adc a,b
	sub 0a5h
	ld l,l
	defb 0fdh,0b8h,088h ;illegal sequence
	call 0bbb0h
	ld a,(hl)
	inc de
	ld h,b
	jp po,0807fh
	ld c,h
	daa
	xor b
	inc bc
	ld a,h
	adc a,d
	ret pe
	ld b,c
	inc de
	ret c
	ld (de),a
	jp pe,06de2h
	adc a,c
	add a,e
	rrca
	cp 035h
	add a,(hl)
	ret po
	ld hl,l626bh
	ld h,a
	djnz $-120
	ld d,d
	call p,0ff38h
	ei
	jp z,l7c2fh
	ld a,a
	sub (hl)
	rst 38h
	or (hl)
	ld a,a
	res 1,c
	rst 30h
	jp nz,l4244h
	add a,d
	ld (036fdh),a
	inc de
	exx
	ld a,a
	cp d
	ld c,c
	add a,b
	rst 20h
	add a,l
	ld l,h
	nop
	xor a
	defb 0fdh,012h,0d0h ;illegal sequence
	cp e
	ld bc,01d9ah
	inc h
	inc c
	inc sp
	and e
	ld c,c
	add a,d
l7097h:
	ld l,003h
	ld a,h
	ld de,0ff33h
	adc a,004h
	adc hl,hl
	ld bc,04af9h
	ld h,d
	ld (hl),b
	ld hl,l6285h
	ld b,(hl)
l70aah:
	ld de,l73feh
	defb 0fdh,042h,044h ;illegal sequence
	inc de
	call p,0927fh
	ld b,04fh
	add a,l
	xor h
	inc sp
l70b9h:
	rst 38h
	ld e,l
	add a,d
	sbc a,07fh
	ld e,c
	inc b
	ld a,l
	and c
	dec de
	nop
	ld (08502h),hl
	ld d,a
	ld b,b
	add a,c
	dec sp
	sbc a,d
	cp e
	ld a,l
	add a,h
	ld l,(hl)
	ld b,a
	dec bc
	call z,001feh
	in a,(0b1h)
	ld de,0cf35h
	inc e
	sbc a,0cfh
	ld b,(hl)
	cp 0d3h
	ld c,e
	add a,a
	call nc,0b388h
	di
	sbc a,d
	djnz l7097h
	call m,02115h
	call 00d94h
	cp 075h
	cpl
	inc bc
	inc d
	di
	inc d
	call p,l7fffh
sub_70f9h:
	ld c,d
	call p,08444h
	and (hl)
	add a,h
	jp (hl)
	ld a,a
	or l
	ld a,a
l7103h:
	ret
	inc d
	ld b,d
	ld a,a
	ret
	inc d
	ld bc,00a36h
	ld b,b
	djnz l7111h
	cp (hl)
	ld e,c
l7111h:
	ld a,a
	ld e,e
	ld a,l
	sbc a,h
sub_7115h:
	rst 0
	and 0d0h
	rst 8
	rrca
	add a,b
	and a
	ld a,a
	jr nc,l719eh
	inc sp
	rst 30h
	sub h
	ld a,h
	add a,b
	ld l,h
l7125h:
	rst 30h
	ld l,(hl)
	rlca
	ld b,a
	add a,a
	jr c,l7145h
	ld bc,0d09ch
	jp 0161fh
	nop
sub_7133h:
	add a,h
	jp (hl)
	add a,a
	sbc a,l
	ld de,0ddfdh
	ret po
l713bh:
	sbc a,h
	jp m,0ff92h
	ld sp,08434h
	ld (09b82h),hl
l7145h:
	add a,d
	and (hl)
	sbc a,c
	sub e
	rst 18h
	ld a,a
	adc a,c
	ld a,b
	ld (01ba6h),hl
	rst 38h
	inc h
	dec sp
	ld (de),a
	and b
l7155h:
	xor h
	djnz l719ah
	xor h
l7159h:
	adc a,d
	sbc a,h
	rst 38h
	call c,0827eh
	ld (hl),e
	rrca
	dec bc
	xor d
	xor d
	xor e
l7165h:
	or e
sub_7166h:
	ld hl,(0e380h)
	ld a,a
	ld b,a
	daa
	jp p,l7f2ch
	ld a,l
	or d
	ld (hl),004h
	ld c,046h
	ld sp,0a38dh
	inc de
	cp 039h
	ld l,a
	or b
	ei
	ld h,c
	ld h,c
	sbc a,l
	inc b
	dec bc
	ld a,a
	dec a
	ld bc,08af9h
	add a,d
	add a,(hl)
	inc sp
	inc de
	ld b,e
	add a,h
	cpl
	rst 38h
	and a
	ret z
	ld (hl),e
	add a,b
	daa
	ld a,a
	ld e,h
	inc h
	ld b,h
	rst 38h
l719ah:
	ld b,b
	push bc
	ld b,010h
l719eh:
	add a,e
	xor l
	ld a,a
	cp 016h
	ret nz
	ld h,a
	ld a,a
	sbc a,d
	or b
	ld a,a
	or d
	or c
	ld bc,01336h
	ld b,b
	inc c
	xor b
	rst 30h
	push bc
	add a,(hl)
	ld de,0eed2h
	ld d,(hl)
	ld c,d
	rst 10h
	ld c,d
l71bbh:
	cp 056h
	add a,b
	ld d,b
	ret nz
	ld (bc),a
	ld (hl),a
	jr nz,l71bbh
	ld a,b
	inc bc
	ld h,0a3h
	ld a,a
	adc a,(hl)
	sbc a,(hl)
	defb 0fdh,014h,04fh ;illegal sequence
	daa
	rst 30h
	ld e,b
	ld l,043h
	cp e
	jr z,l7159h
	jr c,$+129
	ld c,l
	ld b,080h
	add a,b
	add hl,hl
	dec de
	ld d,d
	rst 30h
	cp b
	ld bc,0ad2fh
	rst 38h
l71e5h:
	or d
	jr nc,$+129
	ld a,(hl)
	cp l
	add hl,de
	sbc a,b
	ld a,c
	ei
	call z,09a09h
	ld d,l
	xor d
	cp 080h
	ld b,e
	inc hl
	and l
l71f8h:
	ret c
	or e
	ld (hl),d
	ret z
	dec hl
	halt
	ld c,e
	out (068h),a
	rst 10h
	jp po,l6500h
	inc de
	inc bc
	dec bc
	rst 38h
l7209h:
	inc e
	cpl
	djnz l7209h
	add a,a
	ld h,(hl)
	add a,h
	adc a,d
	dec d
	dec b
	adc a,(hl)
	ld e,d
	sub e
	ret m
	rst 38h
	ld (032d7h),a
	ei
	or d
	and a
	inc l
	add a,(hl)
	and l
	rst 38h
	adc a,d
	ld e,l
	sbc a,0d1h
	ld h,l
	ld a,a
	xor b
	ld b,b
	ld a,(hl)
	ld b,d
	ld (01173h),a
	ld a,a
	ld b,032h
	inc h
	inc bc
	cp e
	call po,07db6h
	ld d,(hl)
	sub a
	cp 048h
	ld a,a
	xor e
	ret
	ld c,00bh
	cp l
	cp e
	ld (0320dh),a
	ld (hl),d
	add a,d
	or 0f5h
	ld d,e
	call 00db7h
	ld l,c
	add a,e
	inc hl
	adc a,d
	dec a
	jp m,l6004h
	ld de,08460h
	ld h,d
	ld bc,l5681h
	ld h,c
	ld a,(de)
	ld (0251bh),hl
	ld l,003h
	adc a,c
	sbc a,d
	ld sp,021f6h
	call p,024f3h
	ld c,b
	inc hl
	call p,0a4a7h
	adc a,c
	push hl
	ld a,a
	ld b,0e6h
	add hl,de
	ld a,a
	call nz,sub_4279h
	ld e,c
	inc hl
	xor c
	add a,b
	adc a,h
	jp pe,0648bh
	ld l,l
	ld (iy+005h),d
	and h
	sbc a,a
	defb 0edh ;next byte illegal after ed
	nop
l728bh:
	sbc a,c
	ld a,a
	inc bc
	add hl,bc
	dec bc
	cp e
	in a,(013h)
	inc c
	adc a,b
	call pe,0f6cbh
	ld d,e
	inc de
	inc de
	call 00057h
	ld l,l
	adc a,h
	scf
	dec bc
	ld a,a
	ld b,b
	ld l,e
	or b
	ld b,0b2h
	ld d,(hl)
	dec hl
	xor h
	defb 0ddh,044h ;ld b,ixh
	jr nz,l728bh
	ld d,(hl)
	and (hl)
	exx
	add hl,hl
	ld e,c
	and a
	ld h,0adh
	and h
	rst 38h
	xor h
	dec hl
	rst 38h
	ld (de),a
	rst 38h
	call p,08043h
	ld l,(hl)
	dec d
	ld e,a
	ld h,c
	pop hl
	pop de
	ld b,l
	rst 30h
	ld h,002h
	ld d,b
	add a,d
	ld sp,080a4h
	adc a,080h
	dec (hl)
	ld a,a
	cp e
	sub (hl)
	ret m
	ld d,b
	adc a,085h
	inc a
	ld a,a
	ld b,h
	xor d
	xor c
	sbc a,c
	rst 38h
	ld b,a
	dec bc
	dec bc
	ld a,a
	ld d,(hl)
	cp 0b2h
	pop af
	or c
	ei
	ld d,d
	add a,e
	ld a,a
	call c,0bd1ah
	or c
	rst 38h
	jp pe,09c11h
	ld h,b
	ld e,07fh
	ld c,a
	sbc a,h
	add hl,bc
	ld sp,09a80h
	di
	defb 0fdh,091h,081h ;illegal sequence
	ld h,e
	ld a,a
	ld de,l6a7fh
	ld h,b
	ld h,h
	add a,b
	ld d,d
	rst 0
	xor b
	ret m
	push de
	ld b,d
	ld a,a
	push de
	ld c,e
	ld b,e
	or h
	inc e
	cp 064h
	call m,sub_7fb3h
	ret z
	ex af,af'
	defb 0ddh,0d0h,0b5h ;illegal sequence
	halt
	ld a,a
	sub b
	xor l
	inc d
	add a,d
	sbc a,c
	adc a,c
	dec de
	defb 0ddh,080h,071h ;illegal sequence
	cp 089h
	ld d,a
	ld c,a
	add a,a
	add hl,sp
	adc a,h
	or d
	add a,(hl)
	call nz,0faffh
	sub d
	ld de,0ff0bh
	sub 021h
	inc l
	inc d
	call m,0f42eh
	ld c,a
	add a,h
	ld c,c
	call p,0fd87h
	daa
	adc a,d
	inc e
	ld a,a
	ld e,b
	ld e,e
	call po,0b0a6h
	ld de,0b3f9h
	rst 38h
	inc hl
	inc b
	dec b
	dec de
	inc h
	add a,c
	or c
	cp 099h
	inc e
	ld a,a
	jp po,08807h
	ld (hl),h
	cp e
	add hl,bc
	ld a,a
	xor d
	sbc a,e
	ld sp,0bd90h
	add a,l
	ld h,l
	ld (0aa70h),a
	sub a
	ld a,e
	jp z,l4bd7h
	jp z,081e5h
	ld hl,0e646h
	dec b
	ld de,l6434h
	adc a,c
	adc a,d
	inc (hl)
	rst 38h
	ld sp,hl
	and e
	sbc a,a
	ld h,(hl)
	jp m,080cch
	sbc a,e
	add a,d
	adc a,b
	rst 30h
	adc a,b
	adc a,07fh
	and a
	add a,b
	dec h
	add a,b
	ld h,0f1h
	sub h
	cp d
	jp c,0f882h
	cp b
	sbc a,l
	adc a,d
	adc a,d
	ex (sp),hl
	call m,0fb92h
	sbc a,c
	and a
	add a,b
	dec b
	call 066feh
	ld a,a
	add hl,bc
	cp e
	cp l
	defb 0ddh,000h,0d0h ;illegal sequence
	xor c
	add hl,hl
	ld l,h
	dec hl
	ld b,e
	ld (hl),d
	ld (hl),l
	ld a,h
	inc de
	ld h,(hl)
	add a,e
	ld de,l644eh
	add a,(hl)
	ld c,(hl)
	adc a,c
	ld (08246h),hl
	cp a
	rst 38h
	ld h,l
	ld bc,0f5ffh
	xor d
	ld l,c
	push af
	ld c,c
	jp m,0ff48h
sub_73d6h:
	xor h
	and a
	out (083h),a
	adc a,e
	ld c,h
	sbc a,b
	defb 0ddh,07fh,054h ;illegal sequence
	ld d,l
	ld l,b
	add a,c
	sbc a,h
	ld a,a
	inc hl
l73e6h:
	djnz l73e6h
	scf
	ld l,07fh
	inc d
	cp e
	call m,0561dh
	nop
	ld a,a
l73f2h:
	ld d,e
	add a,b
	ld a,d
	ld a,a
	xor e
	adc a,h
	rst 38h
	dec l
	call c,0ffc0h
	adc a,h
l73feh:
	rst 0
	adc a,0c7h
	ret
	ld (hl),c
	ld b,h
	add a,b
	ld e,d
	ld l,(hl)
	adc a,c
	ld b,036h
	ld h,(hl)
	cp e
	rst 20h
	rst 38h
	ld a,044h
	ld bc,0a59ah
	sbc a,(hl)
	rrca
	rst 38h
	ret m
	ld b,l
	call p,0ebb5h
	inc d
	add a,b
	ld b,l
	ld (bc),a
	sub a
	ld h,h
	ld a,a
	ld d,b
	sbc a,l
	add a,b
	sub h
	add a,b
	ld c,c
	ld (bc),a
	sub b
	cp 029h
	cp 01ch
	inc hl
	djnz l73f2h
	jr l743eh
	ld sp,hl
	sub l
	rst 30h
	rst 18h
	ld a,a
	adc a,e
	xor d
	ld a,a
	ld h,d
	xor e
	inc sp
l743eh:
	call z,0ff00h
	sbc a,b
	ex de,hl
	and h
	ld (hl),a
	ld b,(hl)
	or 061h
	ld h,(hl)
	ld b,e
	inc b
	dec hl
	and 085h
	ex af,af'
	ld b,h
	xor 08ch
	defb 0ddh,0ffh,0f9h ;illegal sequence
	ld l,c
sub_7456h:
	ld a,a
	cp 04eh
	add a,c
	add hl,hl
	jr nc,l7460h
	inc de
	xor h
	ld a,d
l7460h:
	ld c,a
	or h
	call po,01c9ch
	ld b,07fh
	jp z,08e80h
	inc h
	ld b,c
	ld (de),a
	add a,l
	ld sp,07bfbh
	call m,0fc8ah
	call z,sub_70f9h
	cpi
	ret p
	ld a,a
	ld b,h
	xor d
	rst 38h
	dec c
	call po,0630dh
	ld b,(hl)
	ld d,(hl)
	ld h,e
	ei
	ld c,c
	jp m,0944dh
	ld (hl),l
	cp 0deh
	call nc,sub_6e89h
	add a,b
	dec hl
	ex (sp),hl
	dec sp
	rst 38h
	and h
	ld hl,09dfch
	rst 38h
	and 001h
	ld c,(hl)
	ld b,e
	cp 0a7h
	ld b,c
	jr nz,l74c2h
	and l
	exx
	call m,0fe4ch
	rra
	cp d
	rst 38h
	sbc a,c
	ld a,d
	push iy
	and l
	add a,c
	sub (hl)
	dec c
	ld (0c1bdh),hl
	ld (de),a
	inc sp
	add a,e
	inc d
	cp 061h
	ld d,l
	ld h,b
	pop bc
	ld c,h
	ret m
	ld a,a
l74c2h:
	cp c
	inc c
	ld a,a
	add hl,sp
	cp e
sub_74c7h:
	call c,0a17fh
	ld (hl),b
	dec l
	ld h,h
	ld b,(hl)
	ld b,(hl)
	inc b
	ld (00234h),a
	cp 052h
	adc a,c
	add a,h
	and 08ah
	xor 07fh
	call po,0f759h
	adc a,e
	ld hl,0d27fh
	or d
	add a,b
	ld h,h
	ld l,e
	add a,b
	or b
	inc bc
	ld b,l
	ld b,c
	and (iy-037h)
	ld a,a
	ld d,(hl)
	xor (hl)
	ld e,b
	cp 0bbh
	call p,0f38ah
	ld a,a
	ld a,b
	ld h,(hl)
	ld a,a
	adc a,d
	inc d
l74fdh:
	ld (0fc33h),hl
	ex (sp),hl
	cp b
	dec c
	sub c
	defb 0ddh,03ah,0a1h ;illegal sequence
	add a,b
	nop
	ld a,a
	jp po,08abah
	rst 38h
	defb 0fdh,078h,0beh ;illegal sequence
	xor c
	ld l,c
	add a,e
	inc sp
	ld bc,01800h
	ld l,(hl)
	inc bc
	ld c,(hl)
	sub c
	add a,e
	ld c,(hl)
	add a,b
	ld e,c
	rst 38h
	dec de
	defb 0fdh,016h,03ch ;illegal sequence
	sbc a,d
	ld de,0c31bh
	add hl,bc
	ld hl,00612h
	add a,b
	ld c,e
	sub c
	ld d,003h
	sbc a,d
	or d
	dec hl
	call p,0b404h
	ld d,(iy-001h)
	nop
	adc a,c
	ld l,(hl)
	call pe,081c6h
	inc sp
	ld d,l
	nop
	ld l,l
	ld (hl),c
	xor d
	ld a,e
	ret z
	dec (hl)
	ld d,(hl)
	ld b,c
	cp 012h
	ld h,c
	call m,l44a4h
	jp 02262h
	add a,b
	jr c,l74fdh
	rra
	rst 38h
	call sub_7fb0h
	push hl
	nop
	and l
	ld h,(hl)
	inc sp
	rst 38h
	ld l,a
	add a,e
	ld l,086h
	push hl
	add a,b
	inc h
	or a
	ld l,d
	ld h,0fah
	ld c,h
	jr c,l75efh
	ld (bc),a
	jp nc,02092h
	ld d,b
	add a,b
	ld c,002h
	or d
	nop
	sbc a,l
	call 0caf9h
l757fh:
	ld (hl),l
	call m,0fc4ah
	ret
	ld a,l
	ei
	add a,e
	scf
	ld a,a
l7589h:
	adc a,d
	ld d,(hl)
	jp pe,l7ff7h
	ret
	ld b,b
	ei
	add a,d
	dec d
	call m,sub_7fach
	sub h
	adc a,d
	rst 30h
	ld a,a
	dec h
	xor c
	dec bc
	cp 0ach
	jr z,l75d3h
	ld b,(hl)
	ld h,(hl)
	ld (bc),a
	call p,034b5h
	dec b
	ld b,(hl)
	add a,d
	ld l,h
	dec bc
	inc bc
	ld h,h
	pop hl
	ld a,a
	ld h,(hl)
	ei
	dec h
	add a,e
	ld b,d
	ld (de),a
	ld h,c
	ld h,0c0h
	daa
	dec h
l75bbh:
	jp po,0b685h
	jr nz,l75c0h
l75c0h:
	call p,0fe45h
	ld e,b
	jp m,08071h
	xor h
	dec d
	call m,0f4e2h
	ld a,a
	jp 0e188h
	ld (hl),e
	ret z
	dec d
l75d3h:
	or (hl)
	add a,b
	dec hl
	ld a,(hl)
	sub l
	adc a,a
	sbc a,h
	ld d,h
	dec l
	inc d
	call m,0fc8ah
	and l
	cp (hl)
	ld (0d4c0h),hl
	sub a
	sub h
	rst 38h
	xor a
	adc a,d
	dec b
	sbc a,d
	cp 054h
	ld a,a
l75efh:
	rst 38h
	or a
	jp m,l6633h
	ld (hl),c
	add a,(hl)
	ld h,h
	ld a,h
	ld (hl),064h
	ld a,b
	adc a,(hl)
	ld e,c
	ld e,a
	ld b,(hl)
	jp m,08011h
	adc a,(hl)
	ld (de),a
	ld bc,01c64h
	jr nz,l7589h
	and h
	sub 0c9h
	inc d
	ld sp,hl
	ld c,h
	ld a,a
	jp sub_7fb3h
	adc a,c
	add a,d
	call z,0d727h
	ld a,a
	ld h,(hl)
	ld a,(hl)
	inc e
	add a,c
	xor l
	inc h
	add hl,sp
	adc a,e
	sbc a,(hl)
	ld a,a
	sbc a,c
	cp c
	ld c,e
	add a,a
	ld c,c
	and c
	ld h,a
	ld a,a
	or d
	ret nz
	sbc a,d
	rst 38h
	dec (hl)
	call z,01dffh
	cp d
	ld h,(hl)
	ld (hl),b
	jp pe,08678h
	inc sp
	ld de,0942ch
	and (hl)
	rst 38h
	ld h,0b9h
	ld b,(hl)
	ld hl,02179h
	ld (05c06h),hl
	add a,(hl)
	inc c
	ld c,c
	ld (bc),a
	add a,b
	ld e,a
	ld a,(hl)
	and (hl)
	ld l,d
	rst 30h
	and e
	ld sp,l6fffh
	xor a
	jr c,l76d8h
	ld l,l
	ld (0de33h),hl
	ld (hl),c
	ld (hl),l
	add a,a
	inc h
	ld b,b
	or d
	dec l
	ld d,(hl)
	ld (hl),a
	sub a
	ld a,a
	pop bc
	dec e
	adc a,l
	ld b,(hl)
	add a,d
	call 0fe82h
	ld de,0b65bh
	rst 38h
	ld e,033h
	cp 02fh
	cp h
	sub (hl)
	or a
	ld h,(hl)
	push af
	xor h
	rst 30h
l767fh:
	di
l7680h:
	nop
	ret po
	ld h,(hl)
	ld c,l
	ld h,e
l7685h:
	adc a,d
	defb 0edh ;next byte illegal after ed
	ld l,h
	ld c,l
	or a
	add a,e
	inc (hl)
	ld a,e
	ld hl,085b4h
	sub c
	ld (bc),a
	sub b
	add a,d
	inc a
	ld h,d
	pop hl
	call c,0a1a4h
sub_769ah:
	add a,e
	ld c,a
	rst 38h
	inc l
	sub 0b6h
	dec a
	ei
	ld a,a
	ld a,e
	defb 0fdh,076h,0f4h ;illegal sequence
	or l
	rst 28h
	push hl
l76aah:
	ld a,a
	nop
	ld a,a
	jp c,0fe12h
	add hl,hl
	and d
	call z,0f180h
l76b5h:
	or d
	cp 0feh
	ld e,d
	and a
	rst 38h
	inc c
	call m,088cbh
	ld e,c
	adc a,h
	ld l,d
	cp c
	ld d,e
	call m,0697ah
	ld h,0fch
	adc a,b
	xor c
	add a,d
	sbc a,c
	adc a,c
	sbc a,b
	ld de,02152h
	ld a,a
	ld sp,hl
	ld d,d
	ld a,a
	rst 38h
	sub d
l76d8h:
	rlca
	inc sp
	ld a,a
	cp d
	rst 38h
	add a,b
	ld l,h
	and a
	ld h,d
	add a,b
	jr c,l76b5h
	ld c,h
	ld b,b
	inc b
	inc b
	jp z,0a215h
	rra
	add a,d
	scf
	inc h
	add a,d
	ld l,(hl)
	ei
	push af
	add a,e
	call pe,0a2e0h
	dec a
	cp 094h
	adc a,l
	jp (hl)
	ld (hl),d
	ret
	cp 029h
	defb 0fdh,08dh ;adc a,iyl
	ld h,(hl)
	ld (0e5fdh),a
	ld (bc),a
	ld a,e
	cp l
	or 0c4h
	adc a,b
	xor a
	inc b
	inc e
	dec e
	pop hl
	add a,0ffh
	daa
	add a,l
	xor l
	inc bc
	push bc
	dec de
	adc a,(hl)
	dec h
	call p,03145h
	ld b,c
	add a,b
	sbc a,h
	ld a,a
	ld (hl),013h
	add a,l
	or c
	add a,h
	ccf
	ld a,a
	rlc b
	push hl
	ld l,(hl)
	ld a,a
	ld (hl),a
	ret nc
	adc a,(hl)
	adc a,09ch
	ld b,d
	ld a,a
	jp m,0f187h
	ld a,a
	inc b
	ld b,l
	cp 088h
	call 000e0h
	call z,0b0cch
	ld (hl),a
	defb 0ddh,00bh,07ah ;illegal sequence
	cp d
	ld a,b
	ld b,h
	cp 0f9h
	inc sp
	rlca
	add a,a
	di
	jp c,l7f53h
	and h
	ld b,0b8h
	adc a,a
	ld h,087h
	ld (hl),b
	or h
	push bc
	cp a
	ld (hl),h
	sbc a,l
	inc a
	defb 0fdh,0f4h,0fbh ;illegal sequence
	call nz,0f47fh
l7766h:
	cp b
l7767h:
	ld e,h
	ld a,a
	ld h,e
	dec de
	dec b
	rst 20h
	ld (hl),a
	xor (hl)
	sub a
	or l
	or c
	inc (hl)
	sbc a,d
	xor b
	ld (sub_7ecbh+1),a
	ld b,e
	adc a,d
	adc a,d
l777bh:
	cp 052h
	ld c,h
	sbc a,(hl)
l777fh:
	ld (iy-001h),l
	cp b
	nop
	dec c
	defb 0ddh,03bh,00dh ;illegal sequence
	in a,(00bh)
	cp a
	dec hl
	ret m
	ld a,a
	call p,0e163h
	adc a,b
	add a,c
	call 0ba0dh
	inc bc
	ld (hl),h
	sub c
	call p,00000h
	and 014h
	jp po,0ff7fh
	ld hl,(l6421h)
	ld c,(hl)
	ld c,a
	rlca
	di
	ld a,a
	rst 10h
	ld b,0fbh
	rst 0
	xor (hl)
	ld (hl),c
	add a,b
	add hl,hl
	ld (hl),d
	ld e,l
	and h
	add a,h
	add a,h
	push bc
	xor l
	ret m
	inc hl
	inc de
	ld a,a
	dec b
	dec b
	ld d,b
	cp e
	defb 0fdh,063h ;ld iyh,e
	ld d,l
	ld b,a
	rst 0
	ld a,a
	add a,049h
	ld a,h
	ld de,09d00h
sub_77cch:
	ld e,023h
	ld (de),a
	add a,b
	rst 10h
	ld sp,hl
	dec bc
	add a,b
	cp b
	jp m,0ff94h
	ex de,hl
	call m,012ffh
	add a,c
	add a,l
	inc (hl)
	rst 38h
	defb 0edh ;next byte illegal after ed
	add a,071h
	ld a,a
	rst 0
	rst 30h
	ld l,0ffh
	and h
	ret nz
	sbc a,0d3h
	sub l
	sub 0c6h
	ld a,a
	ld d,(hl)
	xor d
	ld l,c
	jp m,04cfch
	ld a,c
	ld a,a
	dec hl
	dec bc
	rst 38h
	jp 00d34h
	ld b,(hl)
	xor 0f2h
	add hl,de
	ld b,c
	ld (hl),d
	cp 0a2h
	xor 0feh
	ld sp,hl
	exx
	inc c
	cp 0e6h
	cp c
	add a,e
sub_780fh:
	ld (07f20h),hl
	adc a,079h
	ld c,l
l7815h:
	inc (hl)
	di
	rst 38h
	dec sp
	jp po,01112h
	call m,033d1h
	add a,h
	ld d,l
	cp 0efh
	ld a,a
	ld l,a
	inc d
	rst 30h
	ld c,l
	rst 38h
	rst 20h
	ld a,(hl)
	scf
	ret nc
	ld a,c
	ld a,a
	ld (l5515h),a
	and d
	xor l
	rst 8
	adc a,a
	rst 38h
	ccf
	ld a,a
	nop
	inc d
	ld l,(hl)
	and 0eeh
	ex (sp),hl
	rst 38h
	halt
	ld h,d
	add a,(hl)
	adc a,087h
	dec l
	add a,c
	sub h
	ld b,c
	cp 0f2h
	ld h,c
	cp h
	inc bc
	ld a,a
	jp nc,0f101h
	ld c,h
	sbc a,(hl)
	ld c,a
	ld (hl),043h
	rra
	ld a,a
	add a,b
	call nz,08c4fh
	ld e,c
	ld a,a
	push hl
	and a
	ld e,e
	inc e
	ei
	sub e
	pop af
	sbc a,(hl)
	sbc a,c
	sub c
	add a,b
	ld b,(hl)
	ret m
	xor 0a9h
	ld d,(hl)
	sub 05eh
	add a,l
	ld h,h
	ld (bc),a
	defb 0fdh,054h ;ld d,iyh
	call m,0fb4eh
	call sub_4985h
	jp po,0efbbh
	ex af,af'
	pop af
	ld sp,0fd43h
	adc a,e
	ei
	inc de
	ld l,(hl)
	ld a,(hl)
	ld d,a
	and 0feh
	or c
l788dh:
	add a,e
	or d
	sbc a,(hl)
	pop hl
	ld a,a
	jp pe,09243h
	rst 30h
	push af
	ld hl,(00a85h)
	ld sp,0a231h
	ld c,h
	cp c
	ld c,b
	add a,e
l78a1h:
	or e
	push hl
l78a3h:
	ld d,c
	ld h,b
	rst 38h
	cp h
	ld a,a
	ld (hl),044h
	ld a,a
	ld sp,hl
	ld (0997fh),a
	ld b,014h
	rlca
	ld a,a
	xor e
	dec d
	jp m,0fa31h
	sub h
	dec b
	add a,b
	cp c
	ld sp,0ffbdh
	add a,0f9h
	or d
	and e
	adc a,h
	di
	rst 18h
	call m,06e43h
	call po,0368bh
	cp 0f2h
	rst 38h
	jp m,0feabh
	di
	ld c,a
	ld a,a
	jr nc,l78f6h
	ld b,e
	di
	inc de
	jp nz,0f9fch
	ld b,l
	ld de,08266h
	add hl,hl
	ld a,a
	cp l
	or 0afh
	ld h,(hl)
	ld a,a
	jr z,l78a3h
l78eah:
	ret
	add a,b
	call nz,0c130h
	ex de,hl
	inc de
	out (016h),a
	call m,sub_6575h
l78f6h:
	jp m,l537dh
	add a,b
	sbc a,(hl)
	rst 38h
	jr c,l78a1h
	inc sp
sub_78ffh:
	srl l
	defb 0fdh,089h,0afh ;illegal sequence
	dec c
	ld b,(hl)
	ld l,(hl)
	adc a,(hl)
	ld h,(hl)
	rst 38h
	inc a
	add hl,hl
	cp 0d8h
	ld bc,0ce34h
	ld e,0f6h
	xor a
	add a,l
	jr l795ah
	ld h,b
	inc (hl)
	sub h
	pop hl
	call po,0607fh
	ld b,0ddh
	ld a,a
	sbc a,l
	dec l
	call p,sub_4219h
	add a,e
	dec b
	ld (03424h),hl
	ld bc,0eeadh
	adc a,l
	and l
	adc a,e
	and h
	jr nz,l78eah
	cp (hl)
	jp m,005deh
	ld a,a
	ld c,h
	ret nc
	rst 38h
	ld (hl),c
	ld e,d
	ld de,031f2h
	inc de
	add a,b
	ld h,(hl)
	ld e,l
	ld h,(hl)
l7946h:
	adc a,h
	ld sp,0e27fh
	ld (bc),a
	adc a,a
	rst 38h
	ld l,e
	xor l
	ret z
	push af
	jp c,l4bf8h
	or a
	ld c,e
	add a,c
	daa
	dec sp
	ccf
l795ah:
	ret c
	jr nc,l79c3h
	ld c,e
	ld d,(hl)
	add a,h
	add hl,de
	ld (hl),e
	call pe,000fbh
	pop bc
	cp e
	or c
	adc a,b
l7969h:
	jr c,l799fh
	or l
	ld c,l
	ret m
	jr nc,$+28
	inc d
	ld b,c
	adc a,a
	rst 38h
	ld h,e
	nop
	or b
	ld a,a
	or d
	inc sp
	ld d,0f3h
	sub l
	ld b,c
	di
	ld a,c
sub_7980h:
	add a,d
	inc a
	ld l,d
	add a,(hl)
	ld h,l
	call c,0de7fh
	call 0ec04h
	jp nz,l7affh
	adc a,072h
	ld b,h
	ei
	ld c,h
	jp m,0fea7h
	daa
sub_7997h:
	in a,(02ah)
	adc a,l
	exx
	daa
	add a,c
	dec de
l799eh:
	ld h,l
l799fh:
	add a,b
	cp e
	ld l,081h
	ret
	add iy,iy
	cp a
	ld l,e
	di
l79a9h:
	ld b,d
	ld de,0e35bh
	ld a,a
	sbc a,d
	di
	add a,a
	ld (hl),a
	jr z,l7a12h
	ld h,b
	ld c,d
	ld l,080h
l79b8h:
	ld a,a
	rst 28h
	ld sp,l62f9h
	add hl,hl
	sub h
	xor (hl)
	and l
	cp a
	sub h
l79c3h:
	adc a,(hl)
	sub l
	add a,b
	xor (hl)
	rst 38h
	ld h,a
	jr nc,l79cdh
	ld a,a
	or (hl)
l79cdh:
	sbc a,0e4h
	ei
	adc a,b
	ld c,a
	add a,h
	or a
	ld a,a
	adc a,l
	add hl,bc
	add a,d
	add hl,hl
	call nz,0009dh
	ld l,l
	cp e
	jr nz,l799eh
	di
	add a,d
	ld b,h
	add a,b
	ld h,e
	inc hl
	adc a,(hl)
	cp b
	sub e
	rst 38h
	add a,l
	rst 30h
	ld c,a
sub_79edh:
	sbc a,c
	and l
	sbc a,a
	nop
	nop
	inc b
	jp p,0f156h
	rst 8
	add a,(hl)
	inc h
	or 066h
	adc a,e
	xor (hl)
	ld (bc),a
	ld l,(hl)
	add a,c
	ld c,e
	rst 38h
	ld d,a
	cp 0ebh
	rst 38h
	ld d,d
	ld c,a
	ld a,d
	ld h,(hl)
	inc de
	ld a,a
	add a,b
	sub c
	and (hl)
l7a0fh:
	sub a
	rst 28h
	ld e,h
l7a12h:
	ld b,07fh
	adc a,h
	ld d,(hl)
	ld h,l
	ld d,l
	ld a,a
	ld c,(hl)
	or b
	add a,c
	inc hl
	ld b,c
l7a1eh:
	jp l7f89h
	ld hl,0367fh
	inc sp
	halt
	ld a,a
	ld l,(hl)
	dec b
	sbc a,c
	ld h,d
	sbc a,b
	rst 0
	and (hl)
	rra
	ld a,a
	dec c
	or e
	ld (hl),e
	call m,086cbh
	in a,(0d6h)
	add hl,sp
	exx
	dec hl
	adc a,l
	ld c,c
	ld l,a
	ret
	ld (l7fech),hl
	rst 28h
	di
	call nc,0d9cbh
	add a,d
	ld e,c
	add a,l
	add hl,hl
	dec (hl)
	inc (hl)
	ld a,a
	ccf
	jr l7a1eh
	add a,h
	ld l,c
	ld l,e
	cp e
	xor a
	ld a,e
	cp h
	sbc a,h
	jp m,l54ach
	ld c,e
	dec b
	jp z,0f564h
	ex de,hl
	ld de,0b78bh
	ld a,a
	rst 20h
	ld (hl),e
	ld h,h
	cp 014h
	ld (hl),l
	sub 0dch
	add a,c
	call nz,0f1d8h
	dec b
	ld (hl),a
	ld a,a
	cp 08eh
	sub (hl)
	rst 38h
	add a,a
	ld b,h
	rst 38h
	jp m,03163h
	add a,b
	add hl,hl
	xor l
	or c
	add a,c
	ld h,a
	inc c
	inc d
	ld a,a
	adc a,h
	add a,b
	or e
	nop
	xor d
	ld sp,031f9h
	ld a,(hl)
	ld (05c7fh),a
	ld hl,(04978h)
	sub l
	ld b,0c2h
	ld d,b
	rst 38h
	ld a,054h
	inc sp
	set 4,(hl)
	ld a,d
	di
	adc a,b
	sbc a,h
	sbc a,056h
	rst 38h
	rst 18h
	inc l
	and l
	pop hl
	sbc a,h
	call m,0f966h
	ld b,l
	ret m
	add a,l
	jr l7af6h
	jp l4f7fh
	ld b,c
	ld a,a
	xor c
	call po,0813fh
	inc h
	add a,b
	adc a,0d5h
	rra
	inc b
	sub a
	adc a,b
	ld (bc),a
	jp nc,021c4h
	in a,(0adh)
	ld e,c
	add a,e
	sbc a,d
	ld b,b
	defb 0ddh,0cfh,0f3h ;illegal sequence
	add a,e
	add a,d
	call m,02876h
	xor h
	and c
	ld a,(bc)
	sbc a,a
	sbc a,d
	rst 38h
	jp (hl)
	defb 0fdh,06ch ;ld iyl,iyh
	halt
	ld sp,hl
	ld (hl),e
	cp 0a2h
	inc de
	xor c
	ld a,01eh
	ld a,a
	inc d
	ld b,e
	jp p,0a192h
	sub e
	add a,l
	ld e,c
	ld (0847fh),a
l7af6h:
	add hl,de
	ld a,a
	jp nc,08255h
	rst 10h
	ld a,a
	sbc a,h
	ret m
l7affh:
	call nz,0fa31h
	and c
	ld (l7f10h),a
	jp nc,07f41h
	push af
	sub (hl)
	cp l
	adc a,b
	ld e,a
	ld d,b
	defb 0fdh,067h ;ld iyh,a
	xor 0b0h
	ld a,a
	ld b,08fh
	adc a,d
	ld a,a
	ld b,(hl)
sub_7b19h:
	rst 30h
	ld c,d
	ld h,(iy-031h)
	ld (hl),a
l7b1fh:
	rst 38h
	rst 0
l7b21h:
	nop
	ret z
	ld (hl),a
	ld (hl),a
	rla
	ld b,h
	ld de,l7103h
	djnz l7babh
	di
	jp nc,0d0ffh
	ld (02af8h),a
	add a,e
	or (hl)
	ld a,a
	adc a,d
	adc a,b
	and a
	rst 28h
	add a,(hl)
	jr c,l7b1fh
	nop
	call pe,09cd2h
	ld c,(hl)
	ccf
	add hl,de
	ld b,e
	cp 0b9h
	adc a,h
	ld h,l
	cpl
	adc a,(hl)
	and h
	ld hl,0de5bh
	add a,l
	ld h,e
	cp 086h
	rst 38h
	ld a,a
	ld a,(07f70h)
	sbc a,(hl)
	or d
	ld a,l
	rst 38h
	and 0e4h
	ld a,l
l7b5fh:
	ld a,h
	call z,01c03h
	ld de,l4ccch
	ld (hl),c
	ret nc
	rst 38h
	dec c
	rst 38h
	xor c
	call p,0f92dh
	ld l,c
	add a,(hl)
	ld d,c
	ld de,09e8bh
	ld a,a
	ld e,h
	ld (bc),a
	and a
	ld h,l
	rst 28h
	jr c,l7bfch
	ld l,d
	inc bc
	cp 0aah
	ld b,c
	adc a,b
	sub h
	add a,b
	ld h,e
	ld hl,l500fh
	add a,h
	cp c
	adc a,(hl)
	cp 007h
	rst 38h
	sbc a,e
	nop
	ld a,a
	inc bc
	rst 38h
l7b94h:
	jp m,0fd00h
	cp 05fh
sub_7b99h:
	ld a,a
	inc a
	ld a,l
	ld (bc),a
	call 01dddh
	ld de,l4dddh
	rst 38h
	dec l
	jp nc,0f3c7h
	ld a,a
	inc d
	add a,b
l7babh:
	sub l
	add a,b
	ld b,(hl)
	cp c
	ld b,l
	jp pe,0e17fh
	ld a,d
	ld l,e
	add a,a
	ld e,c
	push hl
	sbc a,d
	and c
	ld e,(hl)
	add a,b
	dec hl
	inc d
	dec b
	adc a,l
	ld h,d
	call m,sub_4ed3h
	ld h,0fdh
	in a,(086h)
	ld d,c
	or (hl)
	cp a
	ld a,a
	sbc a,a
	rlca
	rst 0
	ld a,a
	adc a,d
	ld (hl),a
	dec l
	call z,sub_7ec7h
	ld a,a
	ld h,h
	ld l,l
	ld a,a
	exx
	ld e,b
	ld a,a
	ld sp,07fd9h
	add a,a
	or (hl)
	ld a,a
	or e
	xor 025h
	xor b
	add a,b
	and a
	nop
	ld a,h
	ld h,l
	ld a,a
	ld h,l
	ld b,e
	inc h
	ld (hl),e
	ld (hl),a
	daa
	ld b,e
	and b
	dec (hl)
	and (hl)
	halt
	ld c,(hl)
	ld (iy+055h),c
l7bfch:
	cp 01eh
	add hl,bc
	ld sp,hl
	cp 043h
	ld a,(bc)
	jp z,0da7fh
	sra a
	ld a,a
	adc a,(hl)
	ld a,(hl)
	nop
	call z,0c970h
	sbc a,c
	adc a,b
	jr l7c2ah
	sbc a,b
	ld de,l71f8h
	add a,b
	rst 38h
	ld c,c
	ret m
	jp m,0b019h
	ld c,c
	add a,b
	ld c,c
	ei
	ld (hl),07fh
	ld a,a
	and a
	ld (hl),d
	add a,b
	cp h
	nop
l7c2ah:
	jp z,0cae4h
	ret m
	ld a,(hl)
l7c2fh:
	call m,0f466h
	dec sp
	ld b,h
	ld c,h
	ld b,a
	ld d,l
	cp 088h
	cp e
	cp c
	sbc a,a
	pop hl
	ld a,a
	jp c,0ea7fh
	inc (hl)
	inc hl
	ld h,h
	ld b,e
	add a,b
	rst 8
	ld a,(hl)
	call nz,000d7h
	nop
	inc c
	adc a,b
	sbc a,b
	add hl,de
	rla
	adc a,b
	ld l,b
	ld (hl),c
	ld l,090h
	nop
	ld a,b
	defb 0fdh,0a2h,0fah ;illegal sequence
	ret c
	ld a,a
	ret c
	or l
	dec l
	inc de
	ld a,a
	ret p
	xor 00ch
	ld a,e
	ld l,d
	call 09c46h
	ld a,(l4c41h)
	adc a,d
	sub l
	cp 03ch
	ld (bc),a
	dec bc
	xor d
	xor c
	sbc a,c
	cp 077h
	ld a,a
	call nc,sub_4613h
	sbc a,0fbh
	dec hl
	jp nc,0823fh
	inc a
	ld a,a
	ld d,e
	rlca
sub_7c86h:
	ei
	inc e
	defb 0ddh,091h,085h ;illegal sequence
	inc h
	ret
	rst 38h
	inc d
	rla
	sbc a,c
	ld l,c
	rst 38h
	ld l,e
	ld a,a
	ld b,e
	ld a,a
	sbc a,(hl)
	and l
	ret z
	add a,b
	call 013b4h
	nop
	add a,b
	push hl
	adc a,b
	inc e
	and 03ah
	bit 3,b
	sbc a,b
	ld l,(hl)
	call 0fd4bh
	dec de
	ld c,c
	defb 0fdh,012h,0bbh ;illegal sequence
	adc a,(iy+07eh)
	add a,l
	cp d
	jp m,l76aah
	rst 38h
	ld a,(de)
	sbc a,d
	jp pe,0f77fh
	ld d,h
	inc (hl)
	ld b,(hl)
	ld l,a
	ld b,e
	add a,b
	ld hl,l6e34h
	cp 0e4h
	or l
	ld a,c
	ld a,a
	jp c,07e77h
	sub b
	rst 30h
	ld d,040h
	ld h,l
	dec c
	ld a,a
sub_7cd7h:
	rst 38h
	dec h
	ld a,a
	push af
	ld (hl),h
	ret m
	adc a,d
	ld c,a
	add a,b
	ld c,b
	add a,(hl)
	xor (hl)
	ld a,a
	ld e,l
	inc a
	ld a,a
	sbc a,050h
	ld a,a
	ld d,h
	adc a,(iy+043h)
	xor c
	dec hl
	ld hl,l5cf9h
	ld a,(de)
	and l
	ld a,(hl)
	cp 0bch
	ld a,(hl)
	ld c,0afh
	rst 38h
	rst 38h
	xor e
	ld a,a
	ld (de),a
	ld a,d
	ld a,a
	ld (hl),b
	and (hl)
	sub l
	ld sp,0f9d6h
	call z,0d01bh
	adc a,b
	ld l,(hl)
	dec sp
	rst 38h
	cp 08fh
	ld h,d
	jp po,0fe8eh
	ld h,c
	ld (hl),l
	exx
	sbc a,b
	adc a,l
	halt
	ld c,(hl)
	ld b,01ch
	ld a,a
	ld c,d
	inc bc
	ld sp,0a980h
	ld a,a
	add a,b
	ld c,a
	add a,c
	ld b,e
	inc d
	pop af
	ld a,a
	dec (hl)
	and a
	xor c
	add a,b
	ex (sp),hl
	inc sp
	ld d,h
	ld hl,0be04h
	call p,08823h
	ret c
	ld (09501h),hl
	jp m,07dd9h
	defb 0fdh,012h,065h ;illegal sequence
	defb 0fdh,0deh,07eh ;illegal sequence
	ld b,l
	add a,d
	djnz l7d58h
	or b
	ld a,(bc)
	adc a,d
	ld a,a
	add hl,hl
	and (hl)
	ld h,e
	ld sp,hl
	daa
	jp m,01490h
	ld h,(hl)
	rst 28h
l7d58h:
	rst 28h
	ld a,e
	and 08fh
	dec d
	rst 10h
	add a,d
	inc b
	ld b,b
	nop
	ccf
	nop
	ld a,l
	sbc a,c
	adc a,l
	defb 0ddh,0d7h,001h ;illegal sequence
	ld a,h
	exx
	ret pe
	ld a,a
	ld bc,08943h
	ld hl,(0f34fh)
	add a,b
	ld b,l
	ccf
	ld a,a
	add a,a
	jp (hl)
	and a
	xor (hl)
	ld (hl),c
	push hl
	ld a,010h
	ld a,a
	ld h,(hl)
	ld e,e
	ld a,(hl)
	ld c,a
	defb 0fdh,060h ;ld iyh,b
	cp h
	call z,0ffcfh
	call m,0cc24h
	call m,06281h
	ei
	ld a,a
	ld a,h
	ld a,(bc)
	ld a,070h
	ld b,h
	add a,b
	defb 0edh ;next byte illegal after ed
	defb 0fdh,067h ;ld iyh,a
	ld de,00987h
	ld b,(hl)
	call m,0ffa4h
	inc de
	ld h,(hl)
	ld h,h
	ld b,(hl)
	ld l,044h
	xor l
	or c
	ld (hl),a
	ld a,a
	sub (hl)
	halt
	nop
	rrca
	ld a,c
	adc a,c
	sbc a,c
	ld a,a
	ld e,081h
	and d
	add a,c
	sbc a,d
	ld a,c
	inc (hl)
	jp m,0b05bh
	ld a,07fh
	ld c,002h
	ld a,(bc)
	cpl
	rst 30h
	dec sp
	defb 0edh ;next byte illegal after ed
	add a,(hl)
	ld d,b
	add a,l
	ld h,(hl)
	ld sp,hl
	inc e
	ld a,(hl)
	ld c,d
	ei
	ld e,e
	jp m,0fa85h
	and 000h
	ld de,0cbfch
	rst 38h
	or e
	ei
	ld (009ach),hl
	and b
	ld b,h
l7de2h:
	ret m
	sub l
	ld sp,03981h
	inc b
	ld b,(hl)
	adc a,d
	ld (00364h),hl
	rst 28h
	xor 07dh
	ld hl,0e6feh
	ld a,a
	ld b,067h
	pop bc
	ld l,(hl)
	inc h
	call 08180h
	ld a,(hl)
	exx
	adc a,b
	sbc a,c
l7e00h:
	defb 0ddh,017h,07fh ;illegal sequence
	jp nc,0f8f4h
	dec l
	ei
	and h
	add a,c
	ld e,l
	ld de,08388h
	add hl,de
	ld a,a
	ret pe
	ld (0eaeeh),hl
	ld h,a
	ret p
	dec (hl)
	ld a,a
	ld d,l
	ld a,a
	rst 0
	rst 30h
	ld h,a
	ld a,(hl)
	ld e,07fh
	inc hl
	dec bc
	cp e
	sbc a,c
	nop
	dec hl
	rst 38h
	adc a,b
	ld a,a
sub_7e29h:
	xor l
	rst 38h
	ld d,d
	defb 0fdh,07fh,0ffh ;illegal sequence
	or a
	ret z
	or (hl)
	nop
	cp e
	dec h
	ld a,(hl)
	defb 0fdh,010h,06eh ;illegal sequence
	xor 0efh
	ld (hl),0feh
	xor 0aah
	ld bc,l7946h
	ret nc
	rla
	inc e
	exx
	pop af
	add a,b
	jr z,l7de2h
	inc sp
	adc a,c
	sbc a,l
	ld a,a
	rst 38h
	ld d,(hl)
	ld a,a
	ld de,l4fffh
	inc (hl)
	defb 0fdh,061h ;ld iyh,c
	add a,h
	ret m
	add hl,sp
	inc (hl)
	dec a
	inc de
	ld a,a
	ld c,011h
	djnz l7e67h
	ld a,(bc)
	ld (de),a
	inc hl
	sub a
	cp l
l7e67h:
	adc a,(hl)
	add hl,sp
	jp pe,08823h
	ld (08e8ch),hl
	defb 0fdh,07ch ;ld a,iyh
	ld a,(hl)
	cpl
	cp 069h
	nop
	call m,sub_7f3dh
	dec de
	ld b,e
	ret z
	cp c
	ld a,c
	ld a,(hl)
l7e7fh:
	call z,0c483h
	rst 38h
	xor 0ffh
	xor b
	ld b,a
	call 0090dh
	pop bc
	call 0899fh
	add a,b
	ld (08efeh),hl
	ld a,(hl)
	call z,l7f10h+1
	adc a,b
	ld c,a
	ld c,a
	rst 38h
	sbc a,e
	di
	ld a,a
	defb 0fdh,09bh,07fh ;illegal sequence
	jp (hl)
	add a,l
	dec e
	ex af,af'
	ld de,l4423h
	call p,sub_7fceh
	adc a,c
	ld b,d
	ld de,0b7fbh
	ld a,(hl)
	ld a,a
	adc a,084h
	ld a,b
	ld (hl),b
	or b
	ld a,a
	xor c
sub_7eb8h:
	out (088h),a
	ld a,a
	adc a,b
	call m,0feeah
	ld c,h
	ex af,af'
	sub l
	ld a,(hl)
	xor 07eh
	add a,d
	ld h,l
sub_7ec7h:
	ei
	ld b,h
	djnz $-33
sub_7ecbh:
	cp 041h
l7ecdh:
	ret m
	adc a,c
	sub c
	rla
	cp 012h
	defb 0ddh,0d1h,094h ;illegal sequence
	inc e
	inc a
	ret nc
	ld a,a
	ccf
	ccf
	call p,0f94fh
	add a,d
	call p,sub_5bf9h
	and a
	rst 28h
	ld d,0fah
	ld l,a
	call pe,08ceeh
	ld (l4e12h),a
	inc h
	adc a,c
	rst 0
	xor (iy-080h)
	push af
	ld a,a
	jp po,0e743h
	ld a,(hl)
	nop
	adc a,e
	add a,a
	inc (hl)
	ld a,(hl)
	and 066h
	rst 18h
	dec bc
	call pe,0fec8h
	add a,h
	sbc a,l
	call c,sub_7b99h
	ld a,c
	ld b,e
	sbc a,l
	inc bc
	ld a,h
l7f10h:
	call c,sub_7f71h
l7f13h:
	add a,d
	nop
	ccf
	rst 38h
	pop de
	cp a
	xor c
	ld b,a
l7f1bh:
	ei
	ld l,a
l7f1dh:
	ld a,a
	rst 8
	call pe,07ffbh
	ret
	ld (08942h),hl
	ld c,e
sub_7f27h:
	ld a,a
	ret p
	adc a,(hl)
	nop
	cp (hl)
l7f2ch:
	ex de,hl
	ld a,a
	ld b,0a8h
	rst 38h
	ret m
l7f32h:
	ld a,a
	inc a
l7f34h:
	inc sp
	ld a,(hl)
	inc de
l7f37h:
	inc sp
	add a,e
l7f39h:
	sub d
	ei
	or (hl)
	rst 38h
sub_7f3dh:
	jp z,0fe07h
	jr nz,l7f1bh
	sbc a,l
	ld a,h
l7f44h:
	defb 0ddh,050h,0d1h ;illegal sequence
	add a,c
	call c,0028eh
	defb 0fdh,0dch,07fh ;illegal sequence
	ld d,b
l7f4fh:
	rra
	ld a,a
	ccf
l7f52h:
	cp a
l7f53h:
	ld b,c
	jp pe,0b1d9h
	or c
	ld sp,0f17fh
	xor 011h
	jp p,00032h
	adc a,l
	add a,b
	ld a,h
	ld hl,0127ah
	add a,b
sub_7f67h:
	res 6,b
	ld a,a
	jp nz,036feh
	rst 30h
	ld (03385h),a
sub_7f71h:
	dec b
	add hl,de
	ld h,(hl)
	nop
	cp 08ch
	ld e,c
	sbc a,04ah
	add a,b
	call 0d997h
	ld (iy+046h),a
	defb 0ddh,0fch,027h ;illegal sequence
	call z,08d7fh
	ld a,a
	ld b,a
l7f89h:
	inc d
	inc sp
	add a,b
	ld b,l
	ei
	ld b,e
	call m,sub_7f67h
l7f92h:
	call z,0f321h
	ld a,a
	ld a,h
	ld de,0fb7fh
	nop
	ld a,a
	sbc a,d
	adc a,b
	add a,a
	and b
	inc sp
	xor d
	ld (hl),e
	ld d,d
	sub h
	call m,0ee8ch
	call m,0fd23h
l7fabh:
	adc a,c
sub_7fach:
	rst 38h
	ld e,e
	ei
	adc a,b
sub_7fb0h:
	exx
	rst 30h
	ld a,h
sub_7fb3h:
	ld (hl),c
l7fb4h:
	ld a,l
	sub h
	add a,b
l7fb7h:
	ld a,c
	rst 0
l7fb9h:
	ld a,a
	ld h,031h
	defb 0fdh,018h,0fbh ;illegal sequence
	call p,0fa33h
	sbc a,e
	call c,0ffceh
	jr c,l7fabh
l7fc8h:
	add a,l
l7fc9h:
	ld c,l
	ld hl,0f38dh
	sub c
sub_7fceh:
	add a,b
	djnz $+129
	ret m
	jr $+128
	ld b,e
	call 02681h
	ld (hl),066h
	jp m,0f7b4h
	ld b,l
l7fdeh:
	ld b,(hl)
	add a,l
	adc a,c
	ld a,(09043h)
	cp 071h
	rra
l7fe7h:
	dec b
	add a,a
	dec e
	rst 10h
	ld (hl),c
l7fech:
	dec e
	ei
	ld h,d
	ld (hl),a
	ld bc,0c74fh
	rst 38h
	ld d,c
	ld (hl),l
	ld c,a
l7ff7h:
	ld de,l4680h
	jp c,l7fe7h
	ld c,a
	inc sp
l7fffh:
	ld e,d
