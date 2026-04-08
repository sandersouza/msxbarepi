; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank06.asm /tmp/smanbow2_bank.bin

	org 04000h

	ex af,af'
	sub b
l4002h:
	ret
	ret nc
	ld h,a
	ld a,a
	adc a,(hl)
	add a,(hl)
	ld c,c
	nop
	inc de
	sub l
	ld h,h
	add a,h
	sbc a,a
	add a,d
	ld a,d
	add a,d
	ld e,a
	rst 10h
	dec hl
	rst 38h
	jp pe,08ff6h
	rst 38h
	and b
	ld d,l
	ld b,h
	ret p
	ld a,a
	xor l
	ld a,b
	rst 38h
	ld (08210h),a
	ld d,a
	djnz $-55
	ld l,(hl)
	inc hl
	xor 066h
	ret pe
	ld a,b
	sub d
	ld a,a
	ld d,(hl)
	ret
	rst 20h
	ld d,0e6h
	dec (hl)
	add a,a
	in a,(09fh)
	ld e,c
	add a,b
	ld d,l
	inc bc
	add a,d
	di
	add hl,sp
	ld (hl),a
	call nz,09f0fh
	ld a,0f9h
	sub b
	ld a,a
	dec de
	rst 38h
	ld (hl),l
	push hl
	ld a,a
	ld d,h
	ld l,h
	bit 2,h
	ld a,a
	and h
	ld b,l
	add a,c
	or b
	ld b,l
	rst 28h
	ret z
	ld a,(bc)
	ei
	ld e,b
	inc b
	add hl,de
	sub e
	ld c,e
	add hl,hl
	call m,00035h
	jp z,022e2h
	adc a,h
	inc a
	ld sp,07bfdh
	ld a,a
	jr c,$+35
	inc bc
	ld a,a
	jr l4002h
	rst 38h
	rst 38h
	ld a,d
	ex af,af'
	call nc,0080ah
	add a,e
	ld (hl),l
	inc l
	ret nc
	cp e
	or c
	or c
	ld bc,0b0bbh
	or c
	or b
	ld (de),a
	or d
	djnz l408eh
	ld sp,00a0bh
	cp (hl)
l408eh:
	ld a,a
	call nz,0f9a1h
	call pe,08f7fh
	ld (hl),c
	ld d,072h
	add a,h
	xor 0ffh
	jp c,096f9h
	inc de
	ld hl,05bc4h
	dec b
	jp (hl)
	xor (hl)
	inc sp
	nop
	ld l,(hl)
	ld l,e
	jr nc,$-70
	ld e,a
	push af
	add a,h
	ret
	ld a,a
	add a,b
	ld c,b
	ld (hl),h
	rrca
	rst 38h
	ld (de),a
	xor 0ffh
	cp 0ffh
	ld d,c
	ld (bc),a
	cp 0e5h
	ld a,a
	di
	cp b
	or b
	ld a,a
	ex (sp),hl
	ld l,c
	ld l,h
	ld c,a
	ld e,c
	ld e,c
	ld a,a
	ld a,(bc)
	add a,(hl)
	cpl
	add a,l
	adc a,e
	rst 38h
	ld b,h
	add hl,hl
	defb 0edh ;next byte illegal after ed
	jp pe,07c32h
	ld e,c
	sub e
	inc b
	ld a,h
	ret
	adc a,l
	ld c,d
	add hl,bc
	ld (0eb8eh),hl
	adc a,d
	jp p,0f3a0h
	ld a,e
	ld (hl),d
	inc bc
	add a,b
	ld b,d
	sbc a,c
	ex af,af'
	ld a,h
	ld b,b
	cp a
	ld a,e
	rst 38h
	sbc a,a
	xor 0efh
	rst 28h
l40f5h:
	ld de,09ff9h
	ret pe
	add a,e
	rst 18h
	ld a,a
	xor (hl)
	djnz l4178h
	ld a,a
	rst 10h
	rst 28h
	ld d,l
	call pe,sub_7f71h+2
	add a,b
	ld c,e
	add a,e
	ld d,085h
	inc sp
	rst 38h
	ld a,h
	inc l
	add hl,bc
	ld a,e
	rst 28h
	call z,0e65ch
	ld a,e
	add a,b
	add hl,sp
	call nc,0a682h
	add a,b
	or a
	add a,(hl)
	inc a
	ld a,a
	adc a,b
	cp 0feh
	ld a,c
	rst 38h
	jp (hl)
	ld de,0fe9fh
	cp (hl)
	add a,d
	ld b,d
	inc b
	rst 28h
	sbc a,c
	rrca
	ld (bc),a
	jp p,0167fh
	inc sp
	ld sp,0a331h
	ld de,03031h
	rst 38h
	sub e
	inc b
	inc bc
	ld a,(bc)
	inc e
	jr nc,l41c2h
	ld h,e
	rst 28h
	ld d,a
	ld l,h
	ld a,a
	ld e,c
	ld a,(hl)
	dec c
	sub d
	rst 38h
	ret po
	ld hl,0fb8ch
	adc a,l
	pop af
	exx
	rst 30h
	inc sp
	add a,b
	ld e,079h
	ld d,080h
	ld c,h
	jp nc,l56f7h
	rst 38h
	ld d,c
	and l
	add a,b
	ld h,h
	nop
	add hl,de
	ld c,c
	add hl,sp
	defb 0fdh,079h,022h ;illegal sequence
	xor 07bh
	ex de,hl
	xor 0feh
	jr z,l40f5h
	ret nz
	ld sp,hl
	ei
	xor 08fh
	ld c,d
l4178h:
	ld sp,hl
	add a,h
	ld d,a
	cp c
	ld a,a
	and a
	ld h,e
	ld (bc),a
	jr nz,l4201h
	ld h,004h
	ld (bc),a
	ld a,(bc)
	jp m,0917fh
	adc a,c
	adc a,c
	rst 38h
	adc a,07eh
	xor c
	ld d,h
	sub h
	ret
	add hl,hl
	ld sp,hl
sub_4194h:
	add hl,hl
	ret m
	add hl,hl
	rst 30h
	xor c
	add a,b
	ld e,053h
	add a,b
	defb 0ddh,080h,0a5h ;illegal sequence
	ld a,a
	add hl,de
	sbc a,h
sub_41a3h:
	ld a,a
	ld (l7f29h),hl
	cp e
	cp (hl)
	ret m
	ld d,e
	ld a,d
	inc b
	sbc a,c
	rst 38h
	ex de,hl
	ei
	ld c,b
	sbc a,a
	inc c
	rst 28h
	sbc a,b
	cp h
	adc a,h
	adc a,a
	rst 38h
	ld e,c
	sub b
	ld c,b
	rst 38h
	di
	sub a
	rst 38h
	ld a,b
l41c2h:
	adc a,l
	and 0ffh
	inc a
	ld h,0f7h
	jp z,0f9ddh
	add hl,sp
	cp e
	ret po
	ld a,e
	or l
	ld hl,l66f5h
	sub c
	push af
	jp m,0032ah
	call pe,0997fh
	add hl,sp
	ld de,0bbfeh
	rst 28h
	cp 0dch
	rlca
	ld sp,hl
	ld e,d
	rst 38h
	adc a,d
	ld h,d
	adc a,e
	rst 0
	rst 38h
	exx
	rst 38h
	ld c,a
	dec c
	adc a,d
	jp po,0ff85h
	ld a,e
	push bc
	ld a,a
	inc sp
	ld l,h
	halt
	jp z,08010h
	ld e,d
	xor l
	ld a,(hl)
	or 03ch
l4201h:
	ld a,a
	add hl,de
	ld hl,08ef8h
	inc bc
	ld a,a
	push bc
l4209h:
	adc a,(hl)
	cp e
	rst 38h
	ld a,d
	add a,c
	add hl,sp
	ld (hl),l
	dec l
	rrca
	add a,c
l4213h:
	ld d,l
	rrca
	add a,c
	call 0f8ffh
	inc d
	jr nc,l424eh
	and a
	ld c,(hl)
	rst 38h
	jr nz,l4233h
	ld b,001h
	inc hl
l4224h:
	or e
	djnz $+93
	djnz $+1
	ret z
	ld b,h
	or 07fh
	ld h,l
	ld hl,0ded7h
	sub a
	ld (hl),a
l4233h:
	ld l,002h
	ld a,(hl)
	or l
	sub d
	dec a
sub_4239h:
	sub b
	cp (hl)
	ld a,a
	ld (hl),e
	dec iy
	add a,h
	add hl,bc
	add hl,hl
	sub e
	ld (hl),l
	xor 0fah
	ld d,07ah
	ld e,h
	ld a,(hl)
	ld a,b
	ld d,a
	rst 38h
	or e
l424eh:
	nop
	nop
	exx
	ld c,0ffh
	sbc a,(hl)
	ld l,h
	ld b,h
	rst 38h
l4257h:
	ld l,d
	defb 0fdh,098h,05fh ;illegal sequence
	ld d,l
	rst 38h
	adc a,(hl)
	rst 28h
	ld a,(bc)
	ld de,0a3aeh
	rst 30h
	xor d
	add a,c
	ld h,l
	ld de,0bd3bh
	ld a,a
	and e
	ld (098ffh),hl
	sub e
	adc a,h
	inc bc
	ld bc,0db95h
	rst 38h
	ret z
	rst 30h
	jp po,l66feh
	sbc a,c
	rst 38h
	cp h
	ld h,h
	dec a
	ld (041a6h),a
	inc sp
	inc hl
	out (020h),a
	rst 38h
	ld (de),a
	ld (0ce05h),hl
	rst 38h
	cp b
	ld l,a
	ld h,a
	ld d,h
	rst 38h
	adc a,h
	rst 38h
	ld (hl),e
	defb 0edh ;next byte illegal after ed
	xor (hl)
	add hl,bc
	inc sp
	ret m
	jp c,0c9e5h
	add a,b
	jp po,032f6h
	rst 28h
	sub 070h
	ret p
	ld a,a
	ld c,a
	ld (bc),a
	rst 38h
	inc c
	ld (bc),a
	ld a,a
	sub e
	rst 10h
	ld a,a
	ld (hl),l
	nop
	adc a,a
	jp (hl)
	ld e,0f1h
	rst 38h
	di
	ld (hl),e
	ld a,a
	cp 05dh
	ld a,b
	ld a,a
	ld b,a
	adc a,d
	dec c
	add a,h
	rlca
	push bc
	djnz l4257h
	jp m,0eb2dh
	adc a,(hl)
	ld de,l7a00h
	ld b,(hl)
	call m,0c4ebh
	or 0e0h
	ld a,a
	sub c
	nop
	sub l
	add a,b
	ld d,e
	nop
	inc bc
	call z,sub_7f71h
	rst 38h
	rst 18h
	ld (hl),h
	rst 38h
	ld a,h
	ld l,d
	ld d,l
	di
	and 0ffh
	ld e,h
	inc hl
	adc a,(hl)
	xor (hl)
	djnz $+86
	inc hl
	defb 0edh ;next byte illegal after ed
	rst 0
	ld b,c
	add a,e
	sub d
	ld (iy-004h),d
	inc sp
	ld (bc),a
	ld a,(0517fh)
	sub d
	ret z
	ld a,a
	adc a,d
	ld (bc),a
	cp 04ch
	sbc a,(hl)
	rra
	ld bc,l7c7fh
	rst 38h
	ld a,h
	out (0fbh),a
	rst 0
	ld a,a
	adc a,l
	rst 38h
	di
	add a,a
	dec sp
	djnz l4323h
	sub d
	ld sp,l7d11h
	inc l
l4319h:
	adc a,b
	sbc a,b
	ld (0c7fbh),a
	dec sp
	dec e
	ld a,a
	ld d,c
	adc a,h
l4323h:
	ld a,c
	ld (hl),e
	add a,e
	ld (de),a
	sub h
	inc hl
	ld bc,0f5ffh
	ld h,(hl)
	ld l,a
	ld c,b
	ld (hl),e
	jr c,l4386h
	ld a,a
	ld a,b
	adc a,b
l4335h:
	nop
	dec hl
	add a,l
sub_4338h:
	sub b
	sub a
	sbc a,c
	ld a,h
	sub (hl)
	cp 0f8h
	ld sp,0f033h
	inc h
	add a,c
	sub (hl)
	sub b
	ld h,h
	ret m
	adc a,(hl)
	jp z,08762h
l434ch:
	sub d
	sub h
l434eh:
	rst 38h
	ccf
	ld d,a
	ret p
	ld a,b
	cp l
	ld l,e
	ld l,(hl)
	adc a,a
	add a,l
	ld b,l
	djnz l43b9h
	ld a,h
	ld d,h
	ld hl,0bf85h
	add a,d
	cp a
	sub l
	cp h
	ld a,a
	ld l,032h
	ex af,af'
	ld a,(hl)
	ld hl,(l7e9ah)
	inc bc
	ld a,a
	add hl,bc
	ld (bc),a
	dec a
	jp m,033f8h
	ld b,(hl)
	jr nz,l4335h
	jr z,l4389h
	call nz,0d377h
	ld a,a
	nop
	push bc
	xor 033h
	rst 38h
	ld e,05ch
	djnz l434ch
l4386h:
	or 023h
	add hl,sp
l4389h:
	jp m,0f78ch
	ld l,a
	nop
	ld a,c
	jp pe,0fe6bh
	xor d
	ld a,a
	adc a,c
	inc sp
	adc a,l
	rla
	ld a,a
	pop af
	inc hl
	rst 38h
	push hl
	cp (hl)
	call m,06e78h
	or (hl)
	adc a,e
	xor c
	rst 38h
	adc a,(hl)
	ld a,a
	sbc a,(hl)
	sbc a,c
	or 0d3h
	ld de,0db00h
	ld a,a
	sbc a,l
	sbc a,c
	ld e,b
	res 4,l
l43b4h:
	add a,h
l43b5h:
	ld (0a9d7h),a
	add a,b
l43b9h:
	ld (bc),a
	ld a,a
	rst 30h
	ld (0000ch),a
	rst 38h
	jr c,l4426h
	ret nz
	nop
	rst 38h
	ld a,b
	inc hl
	ld d,h
	cp 08bh
	rst 38h
	jp p,010f3h
	and 0e2h
	ld a,000h
	ld b,a
	sbc a,c
	ld a,a
	sbc a,e
	ld hl,l53feh
	ld a,a
	ret p
	ld e,c
	ld bc,0f700h
	inc e
	inc sp
	djnz l43e3h
l43e3h:
	sub a
	jr l43b5h
	rst 38h
	ld hl,(l4882h)
	ld hl,05594h
	rst 20h
	ld a,l
	djnz l43b4h
	nop
	cp a
	ld a,(hl)
	sbc a,e
	ld a,a
	sbc a,l
	defb 0fdh,0b7h,07fh ;illegal sequence
	and a
	ld l,b
	rst 38h
	defb 0fdh,026h,045h ;ld iyh,045h
	rst 38h
	cp b
	pop de
	inc c
	rst 38h
	or h
	or 09eh
	djnz l4488h
	nop
	xor a
	sub c
l440dh:
	ld a,(hl)
	ld (hl),l
	sbc a,c
	sub a
	dec l
	jp z,l7f1fh
	adc a,l
	rst 38h
	ccf
	dec c
	ld h,h
	ld a,a
	in a,(049h)
	inc bc
	ld l,h
	ld a,a
	dec b
	ld a,c
l4422h:
	sub h
	djnz l4422h
	nop
l4426h:
	call nc,099feh
	cp 0ceh
	ld a,a
	xor e
	nop
	xor c
	dec hl
	rst 38h
	di
	or c
	ld a,a
	adc a,b
	ld a,a
	ei
sub_4437h:
	ld a,(hl)
	sbc a,b
	xor h
	djnz l448ah
	and h
	cp 0c4h
	ex af,af'
	add hl,sp
	rst 38h
	ld a,(hl)
	ld a,l
	ret pe
	ld l,a
	ret pe
	or c
	jp pe,0eee9h
	call pe,0107ch
	rra
	nop
	ld l,b
	djnz $+37
	ld (0feedh),a
	call m,l7c7fh
	rst 38h
	ret m
	ld h,e
	xor 0deh
	rst 38h
	ccf
	jr c,l4482h
	ld de,l7fa8h
	sbc a,(iy+07fh)
	ld (0bffdh),hl
	ld a,a
	and l
	ld e,a
	xor 0e9h
	sub a
	rst 28h
	cp (hl)
	push af
	cp e
	call nz,sub_7393h
	add hl,hl
	call m,0ff15h
	cpl
	djnz l4489h
	defb 0fdh,0e6h,0ffh ;illegal sequence
l4482h:
	ld e,a
	ld c,b
	ld b,h
	adc a,c
	jr c,l440dh
l4488h:
	ld d,l
l4489h:
	defb 0edh ;next byte illegal after ed
l448ah:
	xor l
	inc b
	call pe,09508h
	sbc a,b
	xor 0d2h
	ld c,b
	add a,l
	sub b
	add a,095h
	call m,sub_5542h
	adc a,b
	ld e,b
	ei
	ld b,l
	ld c,b
	dec b
	rst 38h
	rra
	dec hl
	sub e
	add a,l
	sbc a,c
	ld c,l
	ld hl,0f9fdh
	sub e
	ld (de),a
	rst 38h
	ld l,h
	rst 30h
	cp (hl)
	defb 0fdh,0ech,0fch ;illegal sequence
	sub c
	rrca
l44b5h:
	sub e
	or (hl)
	rst 30h
	rst 0
	rst 38h
	ret nz
	add a,h
	ret p
	ld a,a
	ld d,e
	ld c,b
	ld a,a
	xor 0bfh
	or 07ah
	nop
	ld a,089h
	ld b,(hl)
	ld c,b
	and 0cdh
sub_44cch:
	ret p
	ld e,e
	ld c,c
	push af
	pop af
	ld bc,0bbfdh
	cp 039h
	ld a,a
	sub d
	or (hl)
	ret m
	cpl
	ld (bc),a
	ld a,a
	and (hl)
	push af
	dec l
	add a,a
	ld c,054h
	ld c,c
	ld a,a
	ccf
	adc a,d
	ld h,h
	adc a,a
	xor l
	add a,d
	ld sp,hl
	ld a,a
	or (hl)
	nop
	dec sp
	sbc a,c
	or 021h
	ei
	ld e,d
	djnz l44b5h
	defb 0fdh,01eh,000h ;illegal sequence
	call m,03ff8h
	ld a,a
	ld (hl),d
	sbc a,b
	rst 38h
	ld l,07fh
	ex de,hl
	add a,h
	ld a,c
	add a,d
	adc a,a
	ld a,a
	and c
	sub e
	call p,00059h
	inc de
	ld sp,08012h
l4512h:
	sbc a,a
	ret m
	ld c,d
	adc a,d
l4516h:
	ex de,hl
	ei
	ret po
	set 7,a
	ret z
	sbc a,c
	adc a,a
	rst 38h
	dec sp
	ld l,a
	ld (0883dh),hl
	adc a,l
	ld a,a
	ld l,d
	ld b,l
	adc a,c
	ld a,(iy-07ch)
	inc sp
	ld de,0ef80h
	ei
	ld h,h
	add a,h
	ex (sp),hl
	jr nz,l45b5h
	pop af
	inc hl
	rst 38h
	jp (hl)
	ld c,e
	ld c,b
	rst 38h
	adc a,e
	ld b,l
	defb 0fdh,09ah,027h ;illegal sequence
	ld d,h
	ld b,l
	rst 38h
	call 0f192h
	ld e,c
	nop
	cp d
	or 0dch
	cp 06bh
	ld de,0d795h
	rst 0
	sub h
	jr nc,$+20
	dec h
	jr nz,l4592h
l4559h:
	cp 0f0h
	and a
	rst 38h
	pop af
	ld l,a
	ld (bc),a
	dec sp
	sub e
	push af
	ret m
	or h
l4565h:
	nop
	ld a,b
	ld hl,07119h
	sub e
l456bh:
	ld a,(hl)
	djnz l4516h
	ld hl,0c4feh
	inc bc
	ld a,a
	inc bc
	or a
	jp m,0ffbeh
	sbc a,047h
	ld c,07fh
	pop bc
	rst 38h
	jp z,03954h
	sbc a,b
	adc a,b
l4583h:
	nop
	and a
	rlca
	rst 38h
	out (0fch),a
	sub d
	ret m
	exx
	pop af
	defb 0edh ;next byte illegal after ed
	sub c
	call m,00d29h
l4592h:
	cp c
	ld a,l
	nop
	ld hl,l7f01h
	ld (09203h),hl
	ld a,a
	ret m
	ld (hl),c
	jp m,0b31ah
	ld (l6ea8h),hl
	ei
	ld hl,00301h
	ld (0b323h),a
	rst 38h
	sbc a,c
	ld h,b
	call z,0f7ffh
	ld a,a
	xor e
	ld d,h
	ld a,a
l45b5h:
	add a,b
	ld a,d
	call c,sub_4b88h
	ld e,c
	add a,h
	jp z,0db10h
	halt
	ld sp,hl
	cp l
	adc a,c
	sub l
	nop
	ei
	and a
	jp m,0994fh
	ld a,a
	jp z,0111eh
	or d
	ld de,0147fh
	rst 38h
	jp (hl)
	rst 38h
	add hl,hl
	ei
	ld l,c
	ld a,a
	push af
	ld b,a
	add a,c
	dec sp
	call pe,0fc91h
	sub h
	jp m,0fb94h
	sub e
	ld a,(hl)
	ld bc,026f6h
	add hl,de
	sub d
	inc l
	rst 38h
	ld a,(hl)
	sbc a,l
	rst 38h
	cp h
	inc de
	add a,e
	ld a,l
	ld a,a
	ret c
	jp m,0f0cdh
	ld d,d
	jp m,0028ch
	ld (bc),a
	ld b,h
	jr nz,l4583h
	sbc a,c
l4602h:
	rst 8
	or 0c0h
	adc a,a
	rst 38h
	jp nz,04546h
	rst 38h
	cp b
	ld b,h
	ld a,a
	cp e
	rrca
	add a,b
	xor (hl)
	adc a,b
	call 079ffh
	add hl,de
	sub c
	jp p,084b1h
	sub l
	call m,01985h
	sub b
	rlca
	ld a,l
	ld sp,hl
	inc de
	rst 38h
	jp p,l7f74h
	ld d,l
	sbc a,(hl)
	rst 38h
	jp (hl)
	ld a,a
	adc a,c
	inc hl
	rst 38h
sub_4630h:
	defb 0edh ;next byte illegal after ed
	cp l
	adc a,h
	call z,0b8f7h
	ld a,a
	jp m,088b4h
	adc a,h
	add a,e
	ld b,a
	sbc a,c
	rst 38h
	ret p
	scf
	inc bc
	ld a,a
	ld (hl),d
	ld a,(iy+07fh)
	rla
	push af
	in a,(0f8h)
	sbc a,e
	ld a,a
	ld a,(bc)
	ld c,b
	add hl,bc
	add hl,de
	rst 38h
	cp 00bh
	ex de,hl
	add hl,bc
	rst 38h
	exx
	xor 04ah
	rst 38h
	ld c,a
	ld a,a
	pop bc
	ld h,d
	sub d
	add a,d
	ld e,c
	push af
	ld b,05eh
	ld a,e
	adc a,e
	cp a
	ld a,a
	sub l
	rst 38h
	rst 28h
l466ch:
	ld (bc),a
	add a,l
	rst 38h
	ld e,(hl)
	ld c,e
	rst 38h
	ld sp,hl
	and e
	cp 0c9h
	ld (083fch),hl
	add hl,bc
	ld a,a
	sub h
	sbc a,c
	call 0ff91h
	ld sp,hl
	ld l,d
	cp e
	ld a,(l4cb6h)
	ld bc,007c4h
	dec sp
	rst 38h
	ld h,d
	ld d,l
	rst 38h
	ld e,l
	sub 084h
	adc a,c
l4692h:
	cp a
	ld b,l
	ld (hl),l
	ld (hl),a
	ld sp,hl
	ld c,c
	or 039h
	rlca
	ld b,(hl)
	jp m,084c7h
	ld de,0faffh
	or 0ffh
	rst 18h
	di
	dec e
	ld a,a
	adc a,089h
	or 080h
	cp a
	ld b,l
	add a,d
	ld (hl),e
	sbc a,(hl)
	xor a
	nop
	ld h,(hl)
	inc sp
	rst 30h
	ld (hl),b
	sbc a,c
	ex de,hl
	ld a,a
	adc a,e
	xor b
	rst 38h
	defb 0fdh,0a9h,0ffh ;illegal sequence
	defb 0edh ;next byte illegal after ed
	ld d,l
	rst 38h
	inc a
	ld a,d
	ld a,a
	cp (hl)
	ld b,l
	ld a,a
	ld h,e
	sub e
	ld (05e7eh),a
	add hl,de
	ld a,a
	jr z,l46ebh
	rst 38h
	defb 0fdh,09ch ;sbc a,iyh
	rst 38h
	ret m
	sbc a,h
	ld d,l
	ld a,a
	jp po,l5f87h
	nop
	ld a,a
	rra
	ld a,(hl)
	inc sp
	add a,a
	rst 8
	ld a,a
	dec d
	add a,b
	ld sp,hl
	ld d,c
	rst 38h
	pop af
l46ebh:
	ld l,a
	rst 38h
	or d
	add a,h
	inc b
	rst 18h
	ld a,a
	ei
	ld e,e
	adc a,c
	inc hl
	rst 38h
	ex (sp),hl
	ex (sp),hl
	ld a,(hl)
	ld (hl),c
	sub e
	sub d
	ld sp,08406h
	ld (l7effh),a
	jp (ix)
	or l
	rst 38h
	ld e,0f2h
	sub e
	ld h,(hl)
	rst 38h
	rst 0
	rst 38h
	push bc
	ld a,(hl)
	push bc
	add a,(hl)
	or (hl)
l4713h:
	ld hl,l7ffch
	ret m
	rst 38h
	ret m
	ld h,l
	jp (hl)
	ld (hl),a
	inc b
	rst 38h
	ld a,h
	inc hl
	rst 38h
l4721h:
	adc a,b
	cp 0b9h
	add a,(hl)
	ld (hl),c
	ld a,a
	ld e,c
	jp m,0f94eh
	ld a,(hl)
	ld l,(hl)
	ret po
	inc hl
	push hl
	add hl,bc
	ld sp,l5fffh
	or l
	ld a,a
	ret po
	ld b,l
	inc sp
	ld c,b
	sub l
	halt
	ld a,a
	xor c
	ld sp,hl
	ld c,(hl)
	nop
	cp l
	ld a,a
	ld c,l
	sub e
	inc sp
	jp p,086dbh
	pop af
	ld a,(hl)
	sbc a,c
	ld a,a
	ld a,h
	rst 38h
	ld a,h
	adc a,a
	ld b,h
	ld a,a
	ld d,h
	ld b,h
	rst 38h
	ld h,h
	cp 099h
	add a,c
	out (089h),a
	ld a,l
	jp nc,l5cfbh
	or l
l4761h:
	rrca
	add hl,hl
	rlca
	jp z,0ff39h
	ccf
	ld l,b
	sbc a,c
	sub h
	cp (hl)
	jp pe,0006dh
	ld a,a
	adc a,l
	defb 0edh ;next byte illegal after ed
	ret c
	ld a,a
	ret m
	rst 8
	ld a,(02281h)
	ld a,l
	ld a,d
	ret m
	ld c,a
	jp pe,0329bh
	rlca
	and h
	add hl,hl
	rst 38h
	ld a,(hl)
	rst 30h
	otir
	rst 38h
	add hl,sp
	rst 38h
	dec de
	rst 38h
	ld (hl),a
	ld a,a
	dec a
	nop
	ccf
	adc a,c
	or 0ceh
	adc a,c
	cp l
	cp l
	rlca
	and a
	rst 38h
	or 039h
	ld a,a
	adc a,l
	rst 38h
	ld a,b
	ld b,h
	ld a,a
	ld c,e
	sub e
	inc l
	ld b,h
	rst 38h
	ld sp,hl
	ld a,a
	nop
	ld h,a
	jp m,03ba0h
	ld (01220h),hl
	ld h,a
	jr nc,$+122
	rst 38h
	ld c,(hl)
	ld (0deffh),hl
	push hl
	and 073h
	ld l,a
	ld d,l
	rst 38h
	dec c
	ld d,l
	rst 38h
	jp pe,09895h
	ex (sp),hl
	nop
	ld a,a
	ld sp,hl
l47cah:
	ld d,e
	ld (bc),a
	or d
	ld a,a
	cp b
	rst 38h
	xor 0eah
	sub d
	ld a,a
l47d4h:
	xor (hl)
	inc bc
	ld a,a
	or 0e2h
	adc a,l
	jr nc,l4761h
	add a,l
	dec hl
	ld e,b
	ld e,c
	add a,l
	inc hl
	rst 38h
	ld sp,hl
	ei
	ld (hl),b
	nop
	jp m,0fec9h
	rst 30h
	daa
	ld c,094h
	call m,0009eh
	rst 8
	ld c,c
	jp (hl)
	ld a,a
	rst 20h
	ld l,d
	jp 01001h
	ld bc,01110h
	nop
	ld de,00601h
	ld d,c
	ld a,(bc)
	ld b,010h
	nop
	jp po,099c2h
	cp 06fh
	nop
	inc d
	ld d,h
	and c
	sbc a,b
	rst 10h
	add a,(hl)
	sub c
	ld (0b8dch),hl
	ld a,e
	in a,(0dch)
	inc sp
	inc d
	djnz $+4
	ld hl,0c746h
	ld d,(hl)
	sbc a,e
	rst 28h
	cpl
	call p,03300h
	ld sp,03113h
	inc sp
	ld de,l5533h
	inc de
l482fh:
	ld b,00ah
	ld b,088h
	jr nc,l47cah
	sub l
	add a,l
	di
	ld a,a
	ld b,h
	ld e,c
	ld a,a
	sbc a,e
	ld hl,0237fh
	jr l47d4h
	dec hl
	add hl,hl
l4844h:
	ld a,a
	ld (de),a
	inc a
	or d
	add hl,de
	ld a,a
	call z,02212h
	nop
	rst 30h
	call pe,sub_4239h
	nop
	rst 0
	add hl,de
	ld a,h
	adc a,a
	ld de,0c77fh
	nop
	cp e
	cp e
	or c
	dec de
	or c
	cp e
	ld de,l54bbh
	dec de
	ld b,00ah
	ld b,0b0h
	jr z,l486bh
l486bh:
	ld e,b
	ret pe
	and h
	or 0f0h
	nop
	ld b,a
	add a,l
	rst 38h
	jr z,l4899h
	rst 38h
	ret p
	ld a,c
	add hl,hl
	ld a,(hl)
	call z,0336fh
	add a,h
	rst 18h
	ld a,(hl)
	dec hl
l4882h:
	inc c
	ld a,a
	ld de,09800h
	cp a
	ld a,a
	sub l
	xor l
	add hl,de
	ld a,a
	call z,sub_67ffh
	ld a,a
	jp 01effh
	ld a,(hl)
	add hl,sp
	ld c,d
	sub c
	xor (hl)
l4899h:
	xor e
	ld l,a
	ld h,(hl)
	inc b
	ld (hl),l
	add a,h
	xor l
	ld a,(hl)
	cp b
	dec bc
	nop
	ld b,l
	ld (de),a
	add a,c
	rst 38h
	cpl
	sub c
	dec l
	ld b,(hl)
	push bc
	ld d,d
	inc b
	rst 38h
	or (hl)
	adc a,d
	ld c,d
	rst 38h
	dec h
	sbc a,c
	rst 38h
	jp c,03cffh
	ex de,hl
	sbc a,h
	inc a
	ld a,(hl)
	scf
	ld a,l
	nop
	add a,a
	inc sp
	add a,h
	inc sp
	ld a,(hl)
	jp nz,0fe22h
	dec (hl)
	nop
	add a,c
	dec de
	ld a,a
	ret m
	or e
	ret nz
	xor (hl)
	ld (de),a
	inc b
	push af
	ld a,a
	ld b,l
	ex (sp),hl
	ld (hl),a
	nop
	and h
	rst 38h
	ld a,c
	dec l
	add hl,hl
	sub c
	adc a,a
	ld a,(hl)
	rlca
	ld (08100h),hl
	inc hl
	ld (l763ah),a
	adc a,h
	ld sp,l7e30h
	ld (06dc7h),hl
	ld c,a
	rst 38h
	ex (sp),hl
	res 5,h
	add hl,de
	inc bc
	pop bc
	ld d,000h
	call m,0917fh
	rst 38h
	exx
	add hl,hl
	ld c,c
	ld a,a
	ex (sp),hl
	ld a,(hl)
	jp (hl)
	nop
	sub c
	add a,b
l4909h:
	add a,c
	nop
	inc sp
	ld bc,0c712h
	add hl,de
	ret z
	sbc a,037h
	rst 38h
	ld sp,hl
	inc c
	ld (bc),a
	inc bc
	ld (hl),a
l4919h:
	jr nz,l4951h
	rst 38h
	ld a,(hl)
	pop af
	rst 38h
	jp po,0f294h
	ld a,a
	ld a,c
sub_4924h:
	ld (de),a
	ld a,(hl)
	push bc
	cp e
	dec b
	or l
	or 098h
	ld a,(bc)
	djnz l4919h
	ld b,(hl)
	out (0e9h),a
l4932h:
	rst 38h
	ld a,h
	xor h
	cpl
	sub (hl)
	rst 38h
	ld l,a
	rst 38h
	ld a,07fh
	jr $+1
	ex de,hl
	rla
	cp b
	cp 0e1h
	inc hl
	xor h
	dec hl
l4946h:
	nop
	call nc,0b1b8h
	add a,b
	dec e
	ld (de),a
	djnz $+5
	cp 0d1h
l4951h:
	djnz l4965h
	rst 38h
	sbc a,a
	sub l
	or (hl)
	ld a,032h
	or (hl)
	pop af
	rra
	ld (de),a
	dec hl
	sbc a,h
	ld d,(hl)
	ex de,hl
	inc hl
sub_4962h:
	add hl,hl
	sub c
	cp (hl)
l4965h:
	inc de
	add hl,de
	ld sp,0ee29h
	dec hl
	halt
	or c
	jp p,081b1h
	call nz,sub_6180h
	inc bc
	inc sp
	ld b,h
	jp nz,08701h
	ld c,d
	rst 38h
	call m,0be69h
	ld h,d
	rst 38h
	or (hl)
	rst 38h
	dec sp
	sbc a,(hl)
	or 089h
	ld b,l
l4987h:
	ld d,h
	rst 38h
	ret p
l498ah:
	push hl
	ld a,a
	sub h
	ei
sub_498eh:
	jp (hl)
	add a,d
	call m,0fe46h
	add a,d
	inc de
	djnz $+10
	adc a,b
	add a,b
	ld h,l
	sub (hl)
	call m,00771h
	ld (01c81h),a
	sub 0fah
l49a3h:
	rst 0
	ret nc
	inc sp
	add hl,bc
	ld (l7fffh),a
	ld d,l
	nop
	rst 30h
	ld a,l
	ld h,c
	add a,l
	ex af,af'
	rst 10h
	ld a,a
	ld c,d
	add hl,hl
	or h
	call p,0e5a1h
	ex af,af'
	add hl,de
	ld h,a
	ld (hl),e
	ld a,(hl)
	ld d,005h
	add a,l
	ld l,(hl)
	dec c
	dec h
	ld (de),a
	halt
	ld (bc),a
	rst 0
l49c8h:
	jr nc,l49cdh
	and h
	add a,(hl)
	ld e,a
l49cdh:
	ld sp,0ebffh
	ld b,a
	rst 38h
	call 09e93h
	ld sp,08afeh
l49d8h:
	ld (de),a
	push hl
	ld h,e
	or b
	sub e
	nop
	jr z,l49c8h
	sub e
	sbc a,e
	add a,l
	jr c,$+102
	ld hl,0ff10h
	push de
	rst 38h
	add a,092h
	sub e
	inc bc
	jr nc,$+1
	ccf
	ld e,d
	rst 38h
	ld a,(hl)
	ld d,l
	add hl,hl
	sub l
	ld a,b
	bit 7,(hl)
	sub b
	ld h,(hl)
	xor (hl)
	xor (hl)
	ld a,(hl)
	or h
l4a00h:
	xor 0bfh
	add a,d
	inc b
	djnz l498ah
	ex de,hl
	ld (bc),a
	ld b,051h
	ld sp,0bb9fh
	rst 38h
	jp m,0ffd5h
	call pe,0eb94h
	ld a,a
	sub l
	inc e
	ld (hl),e
	ld a,a
	or e
	out (0aeh),a
	add hl,de
	ld d,(hl)
	ld de,l67e7h
	add a,h
	add a,h
	inc d
	inc hl
	ld b,h
	nop
	ld a,a
	ld (bc),a
	ld de,08ffeh
	ld de,0c97fh
	adc a,c
	ld a,030h
	ld (03043h),a
	ret c
	jp nc,00612h
	add a,(hl)
	ccf
	or e
	djnz l4a4ch
	rst 38h
	dec sp
	add hl,sp
	ld b,l
	ld a,a
	inc a
	sbc a,c
	ld d,l
	ld a,a
l4a47h:
	and h
	jp p,0fd8ch
	or (hl)
l4a4ch:
	ei
	cp e
	rlca
	add a,0fah
	inc h
	ld b,e
	nop
	add a,d
	ld c,b
	nop
	add a,d
	rst 18h
	ld a,a
	rst 8
	add a,035h
	ld (033bah),a
	rst 38h
	or a
	ld a,a
	and a
	adc a,l
	add hl,bc
	inc de
	inc h
	sub e
	call m,sub_637ch
	cp 032h
	rst 38h
	sub d
	ret m
	jp z,0fc21h
	cp b
	sub h
	adc a,b
	add a,082h
	ld a,b
	ld a,a
	cp l
	ret z
	ld h,a
	inc bc
	add a,h
	ld d,c
	rst 38h
	jp m,0ffbdh
	sbc a,l
	push iy
	add a,a
	ld l,c
	ld a,a
	rla
	sbc a,e
	ld (0117fh),hl
	sub l
	cp 067h
	xor 064h
	add a,h
	ld l,(hl)
	ld a,(hl)
	ld h,l
	push hl
	add a,h
	ld e,h
sub_4a9ch:
	jp nc,0d2fbh
	halt
	adc a,h
	or c
	ret z
	ld l,e
	add a,e
	ld e,a
	ld a,a
	call nz,0ff46h
	sub a
	ld b,h
	ld b,l
	call m,0f99dh
	rst 18h
	ld b,05bh
	ld a,b
	adc a,c
	jr l4a47h
	and h
	push af
	ld (hl),d
	nop
	ei
	ld a,(l7f12h)
	or a
	ld c,0ffh
	di
	call po,096b7h
	rst 38h
	ld a,b
	ld a,a
	ld c,e
	sbc a,c
	rst 38h
	pop bc
	rst 38h
	dec de
	ld a,a
	sbc a,b
	cp 04bh
	rst 38h
	ld b,a
	sub e
	ld hl,01c7ch
	inc b
	ld (hl),c
	ld a,a
l4adch:
	ret p
	ld a,c
	cp 065h
	sub c
	ld l,l
	ld c,b
	inc b
	sbc a,a
	ld (hl),a
	adc a,e
	rst 38h
	ld e,0a6h
	dec sp
	ld sp,0f17bh
	ld a,a
	ld (hl),c
	ld d,e
	rst 38h
	or h
	rst 38h
	ld (hl),c
	nop
	jp po,0ec95h
	ei
	adc a,l
	inc de
	ld (l6832h),a
	rst 0
	inc bc
	sub d
	push af
	push hl
	ld a,d
	ld (hl),046h
	pop bc
	ld l,a
	or 019h
	jp m,0193fh
	ld a,l
	add hl,hl
	inc sp
	rst 38h
	sbc a,(hl)
	sbc a,h
	ld a,a
	ld a,088h
	ld a,a
	ex af,af'
	rst 38h
	adc a,0fah
	adc a,(hl)
	ld e,c
	ld d,h
	ld (bc),a
	ld b,059h
	adc a,b
	add a,l
	halt
	ld d,e
	ret p
	ld b,019h
	sub d
	ld l,c
	or d
	ld (de),a
	or d
	call nc,0c6ebh
	ld (hl),a
	inc sp
	jp m,021b6h
	call m,09a7dh
	ld a,(hl)
	cp (hl)
	sub h
	call sub_70ddh
	cp e
	nop
	add ix,ix
	defb 0ddh,0c1h,0c9h ;illegal sequence
	cpl
	rst 38h
	pop hl
	call pe,0f1ffh
	ld a,a
	ld b,l
	ld b,h
	sub b
	inc (hl)
	cp d
	ld a,d
	ld hl,004d8h
	adc a,e
	xor c
	ld (hl),c
	ld a,h
	ld (0198dh),a
	add a,d
	and l
	rst 30h
	cpl
	sub a
	call po,0be80h
	dec bc
	sub c
	inc h
	adc a,c
	cp c
	ld b,(hl)
	ld de,0fcffh
	ccf
	ld a,a
	ld b,000h
	ret m
	ld a,a
	sbc a,l
	ld d,l
	ld d,h
	ld b,h
	and e
	sub d
	ret pe
	adc a,c
	ld a,a
	ld (bc),a
	ret m
	ld l,c
	di
	ld h,l
	ld c,c
	ld b,086h
	ld bc,l7f13h
sub_4b88h:
	and a
	ld hl,0f0f3h
	ld a,e
	ld a,(hl)
	ld b,a
	ld (0c3ffh),hl
	dec l
	ret p
	rst 0
	rst 38h
	rlca
	adc a,c
	add a,h
	ld (bc),a
	rrca
	adc a,c
	ld a,a
	inc d
	ld (l71e7h),a
	pop af
	xor c
	sbc a,(hl)
	sub h
	add a,b
	and d
	ld hl,04d80h
	sub h
	ld c,d
l4bach:
	call z,08922h
	sub a
	add a,b
	cp (hl)
	call m,0a132h
	scf
	ld a,(hl)
	add a,h
	ld (l7effh),hl
	inc d
	rst 38h
	jp m,0fffbh
	ld de,0c7feh
	ld h,l
	add hl,hl
	sub c
	or (iy-007h)
	sub (hl)
	add a,b
	ld e,d
	sbc a,c
	add a,h
	sbc a,c
	cp 06ah
	adc a,l
	rst 0
	call m,0bfddh
	ld l,d
	sub e
	cp h
	or c
	ret c
	add hl,hl
	rst 38h
	call m,0ff1ah
	ret c
	sub e
	xor (hl)
	ld a,h
	ld (bc),a
	jr z,$+1
	ld a,e
	add a,h
	rra
	adc a,0f9h
	ld c,e
	add a,b
	dec d
	sub a
	rst 0
	adc a,d
	jp c,0217fh
	adc a,a
l4bf6h:
	call m,sub_7eafh
	add a,l
	djnz l4bach
	call po,sub_7189h
	rst 38h
	rra
	rlca
	rst 38h
	cp h
	ld de,0c4ffh
	adc a,d
	xor e
	ld b,l
	add a,c
	add hl,de
	ret m
	ld d,h
	ld h,l
	add a,b
	ld (hl),d
	push af
	ld h,d
	add hl,de
	adc a,a
	rst 30h
	adc a,e
	ld c,a
	add hl,hl
	ld a,(hl)
	and c
	inc hl
	sbc a,(hl)
	add hl,sp
	daa
	adc a,b
	inc bc
	cp 0e3h
	or c
	cpl
	ld a,a
	add a,a
	rst 30h
	dec sp
	ld l,e
	add a,l
	xor 071h
	rst 38h
	call nz,0fdd1h
	sub d
l4c32h:
	add a,b
	xor h
	inc bc
	ld d,(hl)
	adc a,l
	add a,b
sub_4c38h:
	or 08eh
	xor c
	add a,d
	push hl
	sbc a,l
	ld a,(hl)
	inc sp
	or d
	xor h
	djnz $-78
	sbc a,0b8h
	ld e,d
	dec (hl)
	adc a,(hl)
	ld (hl),e
	ei
	dec bc
	rst 38h
	call p,0ff8fh
	sub e
	rst 38h
	jr c,l4c32h
	sbc a,b
	cp (hl)
	ld d,a
	cpl
	ei
	jp c,09157h
	sub e
	sbc a,c
	cp c
	sbc a,a
	add a,c
	sbc a,(hl)
	defb 0fdh,038h,0dch ;illegal sequence
	sbc a,l
	or e
	or c
	and d
	ld a,c
	sub h
	add a,l
	sub 0ffh
	or e
	rst 38h
	jp z,l7effh
	ld c,e
	add a,b
	or l
	rst 38h
	jp z,l5e80h
	add hl,hl
	add a,b
	jp z,04480h
	ld hl,0ae80h
	ld d,a
	cp c
	ld de,0278ch
	ei
	push hl
	adc a,079h
	and h
	ld (de),a
	ld (0b184h),a
	and l
	sbc a,h
	and h
	or c
	rst 38h
	ret p
	dec a
	ld c,c
	dec (hl)
	add a,h
	jp (hl)
	ld (de),a
	dec hl
	or l
	ld d,d
	jp c,l7f62h
	ld b,l
	sub b
	ld e,d
	sbc a,a
	add a,b
	adc a,(hl)
l4ca8h:
	add a,b
	sbc a,b
	sub (hl)
	add a,b
	jr z,$-38
	ld l,h
	inc sp
	ld c,d
	add a,b
	ld a,h
	ld (0cdfch),a
l4cb6h:
	call p,021a6h
	ld b,l
	add a,c
	call pe,0c316h
	out (00eh),a
	jr nz,l4d41h
	sbc a,(hl)
	rst 38h
	rlca
	ld (020b2h),hl
	rst 38h
l4cc9h:
	dec (hl)
	push hl
	dec de
	add a,d
	ld a,l
	ld a,(hl)
	ret p
	push bc
	adc a,(hl)
	ld a,a
	jp nz,0ff29h
	sub a
	ld a,a
	ret pe
	rst 10h
	call nc,0005dh
	call po,0f98eh
	ld a,(hl)
	rst 20h
	add a,e
	ld (de),a
	inc hl
l4ce5h:
	jr nz,l4d08h
	ld (hl),h
	and a
	inc b
	and (hl)
	daa
l4cech:
	rst 38h
	call po,sub_69eah
	add a,d
	sub l
	ld e,c
	ld a,a
	sub 095h
	jr c,$-1
l4cf8h:
	ld a,a
	ei
	add a,h
	cp d
	nop
	add hl,sp
	ret m
	ld a,(hl)
	ld a,a
	and c
	sbc a,(hl)
	nop
	inc hl
	defb 0edh ;next byte illegal after ed
	ld h,l
	add a,a
l4d08h:
	daa
	rst 38h
	pop hl
	sbc a,(hl)
	push hl
	cp e
	nop
	adc a,(hl)
	rst 38h
	sbc a,b
	ld (0987fh),hl
l4d15h:
	and a
	rst 38h
	and c
	sbc a,c
	add a,b
	ld l,h
	and l
	sbc a,c
	di
	ld e,a
	jr nc,l4ca8h
	cp d
	nop
	add hl,bc
	rst 0
	or 059h
	di
	ld c,l
	and c
	res 3,(hl)
	ld l,d
	add a,d
	ld d,e
	ld l,l
	inc hl
	add a,l
	inc hl
	rst 38h
	pop hl
	ld sp,hl
	ld a,a
	and a
	add a,b
	inc hl
	call p,08ceah
	adc a,0d5h
	add a,c
	push de
l4d41h:
	sub e
l4d42h:
	and l
	defb 0fdh,0e6h,000h ;illegal sequence
	cp 03dh
	add hl,de
	inc hl
	ld a,(hl)
	push af
	ld c,c
	ld a,h
	call 0eca5h
	adc a,e
	ld h,h
	ld (de),a
	inc hl
	sbc a,a
	rst 38h
	add a,l
	ld e,c
	ld e,c
	ex de,hl
	ld a,a
	jp c,08023h
	ld a,h
	ld sp,0e481h
	ld b,h
	inc sp
	di
	ld sp,l7fe5h
	jr nz,l4cech
	ld a,l
	ld h,e
	add a,e
	xor h
	cp 05bh
	ld de,0c9a1h
	ld a,(de)
	cp h
	jr nz,l4dc3h
	adc a,e
	dec a
	ld a,a
	add a,0fdh
	dec h
	ld (0ecffh),a
	ld a,(bc)
	inc hl
	add hl,hl
	ld c,c
	ld b,l
	add a,c
	rst 20h
	ld (hl),e
	jp 08364h
	ld hl,0ed93h
	ld (hl),080h
	push af
	ld sp,0936fh
	add a,b
	sub (hl)
	push de
	ld h,a
	add a,e
	rst 0
	cp 01ch
	ld l,(hl)
	and (hl)
	ld c,e
	sbc a,b
	dec d
	ld b,0fdh
	and l
	adc a,e
	inc sp
	ld a,a
	or h
	ld a,b
	rst 38h
	ld (hl),e
	scf
	ld c,l
	ld a,a
	ld hl,0ab7fh
	ld h,e
	defb 0edh ;next byte illegal after ed
	and a
	ld e,c
	rst 38h
	ld (hl),a
	cp (hl)
	dec h
	inc b
	rst 38h
	ld e,(hl)
	cp b
	ld a,b
	inc hl
	and l
	push hl
	sbc a,e
l4dc3h:
	inc a
	ld (0cff2h),a
	set 4,a
	ld a,a
	dec b
	ld (0e302h),a
	ld (hl),021h
	sub a
	cp 03eh
	djnz l4dedh
	djnz $-9
	call nz,09aaah
	call m,0128eh
	ld a,a
	or l
	cp 0ddh
	ld c,07fh
	or d
	add a,e
	xor l
	ld d,l
	ld a,a
	ld de,l5585h
	adc a,c
	ld a,a
l4dedh:
	sbc a,e
	ld hl,0857fh
	sub d
	dec hl
	add a,d
	sbc a,c
	ld de,02317h
	ld d,h
	ei
	sub d
	inc hl
	ld sp,0e278h
	ld d,h
	ld b,0beh
	ret nc
	ld a,b
	ld l,(hl)
	pop de
	ld a,a
	jr nz,l4e29h
	ld (de),a
	ld a,a
	ret p
	ld c,l
	sbc a,a
	ld a,a
	ex (sp),hl
	call m,0fdabh
	xor d
	ld de,0f692h
	and e
	sub d
	rst 38h
	inc a
	adc a,b
	djnz l4e40h
	rst 38h
	and 0e7h
	ld a,(006c4h)
	ld c,c
	rst 38h
	ld a,c
	xor a
	sbc a,c
l4e29h:
	add a,e
	xor (hl)
	ld a,(hl)
	inc sp
	ld (hl),b
	cp l
	ld c,b
	call nc,0f1e7h
	or 0d1h
	or 011h
	call 09380h
	jp (hl)
	ld a,a
	jp nz,l7c80h
	sub d
l4e40h:
	ld (de),a
	cp 0c6h
	and h
	ld h,(hl)
	sbc a,h
	ld h,l
	ld a,d
	add a,(hl)
	inc de
	jr nc,$+1
	ld e,c
	call nc,0eaedh
	ld a,a
	rst 38h
	ld a,b
	jp (hl)
	ld a,a
	ld c,b
	and 06ch
	ld de,05484h
	add a,c
	inc hl
	ld c,c
	rst 38h
	pop de
	inc hl
	add a,b
	inc e
	jp z,0b9fch
	inc sp
	ld a,b
	sbc a,(hl)
	call nc,00578h
	adc a,l
	add a,d
	jp po,l7f70h
sub_4e71h:
	sbc a,a
	add a,b
	inc b
	add hl,de
	cp 0fbh
	ld d,d
	jp p,09ed5h
	ld l,b
	ld h,(hl)
	ld (hl),a
	and l
	ld l,000h
	rst 0
	rst 38h
	call nz,0b548h
	ld (hl),d
	nop
	sbc a,b
	rst 38h
	dec d
	call m,0ff24h
	ld a,c
	jp (hl)
	call po,02b03h
	sub h
	rst 38h
	sbc a,l
	rst 20h
	cp h
	ld a,b
	ld a,e
	ld a,a
	call m,095fbh
	pop af
	ld d,e
	ld (0c580h),hl
	cp 03ch
	rst 20h
	defb 0fdh,01dh,0a7h ;illegal sequence
	ld d,c
	ld a,h
	add a,b
	adc a,b
	ld (bc),a
	xor l
	sbc a,c
	djnz $-86
	or c
	rst 38h
	pop af
	add hl,bc
	ld b,l
	adc a,c
	add a,l
	ei
	and 0fch
	or d
	rst 38h
	dec a
	ld (hl),l
	xor l
	inc e
	sub h
	sbc a,(hl)
	defb 0ddh,0c6h,06dh ;illegal sequence
	ret pe
	ld (hl),e
	add a,b
	inc a
	rst 20h
	call nc,0192dh
	ld a,a
	ld b,l
	inc bc
	ex (sp),hl
	ld a,a
	defb 0edh ;next byte illegal after ed
	cp 03ch
	pop af
	ld a,a
	ei
	call nc,00362h
	call z,00609h
	ex (sp),hl
	add a,c
	ld a,a
	jp nz,0a3c3h
	or e
	ld (0b97fh),a
	ld (hl),d
	ld d,h
	ret m
	ld l,h
	inc h
	add a,h
	inc bc
	adc a,c
	rst 38h
	ld a,h
	inc d
	add a,l
	sub (hl)
	push de
	push hl
	add a,b
	inc e
	res 0,b
l4efdh:
	adc a,(hl)
	ld (hl),c
	add a,0ffh
	ld (l6720h),a
	add a,b
l4f05h:
	ld a,l
	ld (de),a
	sub d
	cp 0ceh
	ld a,a
	ld (0f811h),hl
	sub l
	add a,b
	ld c,b
	ld hl,01080h
	cp h
	add a,e
	dec sp
	jr nc,l4f1ch
	ld a,a
	sub c
	ld a,c
l4f1ch:
	ld (0e2ffh),hl
	ld d,h
	add a,07ah
	add a,h
	ld a,a
	rst 0
	rst 38h
	jp nz,077b2h
	add hl,de
	rst 10h
	and h
	add a,a
	rst 8
	ld (de),a
	ld a,a
	ld b,(hl)
	ld (0457fh),hl
	jp po,02681h
	ld l,b
	ld a,c
	ld a,a
	out (0feh),a
	ld (092b1h),a
	cpl
	nop
	ld h,a
	sub (hl)
	add a,b
	ld (hl),c
	and (hl)
	ld c,a
	inc hl
	nop
	ld a,a
	sub (hl)
	rst 38h
	dec sp
	sbc a,a
	rst 38h
	inc d
	ld (l78ffh),hl
	ld a,e
	rst 10h
	or (hl)
	ld l,b
	ld a,c
	ld a,a
	call c,sub_7f71h
	cpl
	inc sp
	and 067h
	ld e,d
	ld hl,0389eh
	ld h,a
	push af
	ld sp,0848fh
	djnz l4efdh
	add a,b
	or e
	jr nz,$-106
	or c
	cp h
	rst 38h
	rst 10h
	ld a,a
	inc a
	dec bc
	ld a,d
	ld a,a
	ld b,(hl)
	rst 38h
	defb 0fdh,000h,0f7h ;illegal sequence
	jp 08753h
	ld e,e
	ld b,061h
	ld e,e
	inc b
	ld a,a
	rst 20h
	ld l,c
	ret pe
	ld l,b
	ld (de),a
	and a
	cp 018h
	sub b
	call nc,08f21h
	or c
	add a,b
	ld hl,(0c402h)
	adc a,d
	ld c,d
	sub c
	and e
	call nz,0232eh
	cp e
	rst 38h
	ret m
	and l
	dec sp
	rst 38h
	sbc a,0ffh
	ld a,(0c195h)
	call nc,01939h
	call m,0ffe4h
	ld a,e
	ld c,e
	add a,h
l4fb2h:
	ld a,c
	ld a,(hl)
	dec b
	cp b
	ret nc
	sub (hl)
	rst 38h
	ld h,l
	add a,d
	add a,b
	call m,03022h
	add a,c
	ld c,a
	add hl,de
	cp 071h
	adc a,l
	cp c
	ld (0c70dh),hl
	xor h
	or c
	cp 034h
	cp h
	call po,sub_64a0h
	rst 38h
	ld (hl),e
	rst 38h
	ld e,h
	rst 0
	rst 38h
	inc (hl)
	rst 38h
	rst 20h
	rst 38h
	inc a
	inc c
	sub c
	dec hl
	ld hl,0157fh
	sub d
	or d
	add hl,hl
	sbc a,00fh
	add hl,hl
	ld (de),a
	cp c
	ld a,a
	adc a,(hl)
	adc a,c
	or a
	push de
	ld (hl),l
	ld (de),a
	ld a,a
	call nz,08cd5h
	jr nz,l5046h
	adc a,(hl)
	add a,c
	dec e
	add hl,bc
	ld a,a
	ld h,d
	call pe,08eceh
	ld a,e
	sub d
	ld (0b6e9h),a
	jr z,l4fb2h
	ld h,a
	and e
	xor h
	rst 38h
	ld (hl),e
	rst 38h
	ld a,l
	ld b,a
	rst 38h
	ld d,(hl)
	rst 38h
	ex (sp),hl
	dec a
	call nz,l78ffh
	inc hl
	ld (0e7ffh),a
	sub l
	ex (sp),hl
	adc a,l
	cp l
	sub d
	pop hl
	ld d,b
l5022h:
	sbc a,b
l5023h:
	dec b
	inc hl
	ld a,a
	ld de,0e0a4h
	sbc a,l
l502ah:
	add a,l
	and (hl)
	cp 046h
	ld hl,08808h
	ld a,a
	rst 38h
	sub d
	ld e,l
	xor h
	or (hl)
	ld (bc),a
	ld c,b
	ld c,d
	add a,b
	ld b,a
	rst 38h
	push bc
	rst 38h
	adc a,(hl)
	ld l,l
	add a,l
	add a,d
	and 0ffh
	ccf
l5046h:
	ld b,000h
	dec (hl)
	sub b
	inc bc
	jp c,l5070h
	ld bc,0d132h
	add a,d
	ld bc,0dce6h
	sub h
	nop
	add hl,bc
	cp 0cbh
	djnz l502ah
	ld c,c
	cp 04fh
	ld a,a
	ld a,(bc)
	ret z
	xor c
	add a,b
	scf
	xor h
	ld h,e
	rst 38h
	call po,0ffd7h
	ld e,d
l506ch:
	ld a,a
	add a,(hl)
	ld e,b
	adc a,a
l5070h:
	rst 38h
	ret nz
	and l
	nop
l5074h:
	xor 038h
	ld a,a
	rst 0
	ld l,b
	ld (0157fh),a
	ret p
	call z,0acf0h
	ld a,a
	add a,b
	ld c,d
	ld bc,0dffeh
	adc a,a
	ld d,h
	add a,b
	jp l4919h
	ld d,c
	sub c
	rst 38h
	pop af
	ld (hl),e
	rst 38h
	sbc a,a
	ld a,a
	jr c,l5096h
l5096h:
	sub d
	adc a,a
	rst 38h
	ret nz
	dec hl
	sbc a,c
	sub e
	jp p,0195eh
	ld a,a
	jr c,l5023h
	ex (sp),hl
	ld l,(hl)
	ld (01508h),a
	and b
	or e
	add hl,hl
	xor d
	add a,b
	ld b,l
	inc bc
	xor c
	daa
	xor l
	ld l,l
	rst 38h
	ld a,h
	ld e,(hl)
	rst 38h
	ex de,hl
	ld a,a
	pop de
	sub h
	sub d
	rst 38h
	rra
	ld a,d
	sub b
	jp nz,00035h
	rlca
	ld e,a
	rst 10h
	ld d,0fah
	sbc a,d
	add a,b
	call po,0ad21h
	sbc a,d
	adc a,a
	defb 0fdh,00dh,08eh ;illegal sequence
	jp c,01d9dh
	ld sp,l5f7fh
	rst 38h
	jp 0b87ah
	ld (hl),c
	ld b,l
	push af
	ld a,a
	ld b,a
	ld c,c
	rst 38h
	defb 0ddh,0edh,069h ;illegal sequence
	ret p
	ld b,l
	ret po
	ld l,l
	ld l,d
	adc a,e
	ld a,c
	defb 0edh ;next byte illegal after ed
	dec sp
	add a,b
	adc a,036h
	ld a,a
	rrca
	ld h,e
	ld a,(hl)
	sub c
	adc a,(hl)
	ld a,h
	ld d,021h
	ld a,a
	ld a,h
	ld l,e
	ld e,012h
	add a,h
	ld l,h
	rst 38h
	or 078h
	ld b,h
	nop
	set 7,a
	adc a,l
	add a,h
	ld sp,01fffh
	ld d,e
	inc sp
	cp 0d2h
	inc bc
	pop af
	ld a,a
	ld a,c
	ld (de),a
	ld a,a
	and (hl)
	sub d
	ld a,a
	djnz l519bh
	dec e
	add hl,de
	ld de,0f22dh
	call m,00b6fh
	ld a,a
	ret z
	ld e,c
	push af
	ld e,b
	ret p
	ld a,a
	and h
	add a,d
	sub d
	adc a,024h
	ld a,h
	or d
	ld a,a
	sbc a,l
	rst 18h
	call z,0f1e1h
	rst 38h
	ld e,c
	ex af,af'
	dec a
	djnz l51beh
	xor l
	sbc a,c
	ld hl,(l6bech)
	add hl,de
	adc a,(hl)
	ld d,c
	sub b
	call nz,0acfbh
	rst 38h
	ld a,(hl)
	inc b
	or 071h
	dec b
	cp b
	sub h
	ld h,a
	add hl,bc
	ld a,a
	out (0f9h),a
	dec de
	rst 18h
	ld e,e
	ld a,a
	rst 0
	defb 0ddh,027h,07fh ;illegal sequence
	ld (hl),e
	pop af
	out (092h),a
	ret m
	or d
l5166h:
	call pe,03df2h
	ret p
	ld a,a
	and l
	ld a,(de)
	ret
	add hl,hl
	rst 38h
	sbc a,a
	ld a,a
	ret nz
	ld a,b
	sbc a,c
	dec (hl)
	call m,0db7fh
	ld a,(hl)
	rst 28h
	ld l,(hl)
	rrca
	nop
	call nc,07f3dh
	jp (hl)
	ei
	adc a,d
	inc b
	cp a
	ld l,c
	call m,00066h
	sbc a,l
	xor e
	adc a,(hl)
	adc a,h
	cp (hl)
	ld a,a
	dec bc
	jp m,0006bh
	ld d,l
	ld d,h
	add a,d
	and a
	sbc a,c
	adc a,b
	nop
l519bh:
	ld l,a
	adc a,c
	ld a,a
	sbc a,e
	ld a,(hl)
	add a,0d4h
	ld (hl),a
	add a,(hl)
	ld sp,07f32h
	defb 0edh ;next byte illegal after ed
	rst 20h
	sbc a,d
	sub c
	ld c,b
	ld (0310ch),a
	ret m
	defb 0ddh,09dh ;sbc a,ixl
	cp c
	nop
	sub h
	call 09947h
	rst 38h
	adc a,094h
	adc a,(hl)
	ei
	and l
l51beh:
	rst 38h
l51bfh:
	jp 0970eh
	sub d
	ld a,a
	ret
	ld a,(hl)
	ex de,hl
	ld a,a
	xor d
	ld (de),a
	ret p
	ret
	cp 0f3h
	ld c,(hl)
	sub b
	defb 0edh ;next byte illegal after ed
	jr nc,l5166h
	inc c
	add hl,sp
	sub e
l51d6h:
	rst 18h
	ld a,h
	xor c
	jp pe,02780h
	ld hl,0957fh
	rst 38h
	di
	ld a,a
	xor a
	ld c,c
	ld e,a
	ld a,c
	adc a,e
	ld h,(hl)
	adc a,(hl)
	ld d,a
	ld a,a
	call po,0fc97h
	ld c,b
	rst 38h
	ex de,hl
	jp m,03043h
	ld (de),a
	ld a,a
	add a,0ffh
	jp nc,0d6bbh
	ret m
	ld d,c
	djnz $-10
l51ffh:
	rla
	nop
	adc a,l
	jr c,$+1
	ld a,(hl)
	ld e,000h
	ld c,c
	ld c,0deh
	ld a,b
	ld e,055h
	nop
	rrca
	sbc a,c
	ld a,a
	adc a,e
	ld a,(hl)
	rst 0
	djnz l51bfh
	rst 38h
	cp e
	call c,01007h
	inc sp
	ld bc,0957fh
	rst 38h
	add hl,de
l5221h:
	ld a,a
	ret m
	ld hl,(l4721h)
	inc bc
	add a,b
	sbc a,h
	and (hl)
	ld d,c
	rst 38h
	cp b
	rst 38h
	adc a,004h
	ld b,h
	sbc a,l
	jr nz,l51d6h
	inc b
	rst 38h
	ret m
	ld a,a
	add hl,de
	ld b,h
	add a,b
	call z,0f08bh
	add hl,sp
	sbc a,a
	ld c,031h
	ld a,(hl)
	cpl
	ld de,01083h
	in a,(088h)
	ld a,a
	ld bc,09503h
	add a,b
	ld d,a
	ld hl,08cbah
	ld sp,hl
	xor (hl)
	ld (hl),d
	ld l,d
	rst 30h
	ld a,c
	nop
	ld e,e
	rst 38h
	rrca
	ld bc,0b1ddh
	ld a,a
	ld (bc),a
	rst 38h
	jp z,03e20h
	ld (de),a
	or b
	ld a,a
	daa
	adc a,b
	nop
	adc a,h
	ld a,a
	ld (0b93eh),hl
l5270h:
	ld sp,03f7eh
	ld (de),a
	cpl
	in a,(0c6h)
	ld hl,013edh
	add a,l
	ld h,(hl)
	add a,(hl)
	di
	sbc a,d
	add a,d
	jr nz,l5270h
	ld (hl),e
	ld (hl),c
	adc a,c
	add a,c
	pop af
	cp h
	or b
	push de
	add a,e
	adc a,a
	rst 38h
	inc d
	ld (l7cffh),a
	jp nc,0d685h
	add a,d
	dec d
	sbc a,c
	ld b,a
	rst 38h
	cp a
	ld a,(hl)
	ld e,d
	push de
	defb 0ddh,0d4h,064h ;illegal sequence
	ret nc
	push af
	rst 38h
	ld (hl),08fh
	jp z,0fe12h
	rst 28h
	nop
	call pe,0ff8fh
	pop bc
	sub (hl)
	rst 38h
	ld (hl),d
	add a,b
	jp po,0ff7fh
	inc a
	call c,sub_7e93h
	ld (hl),a
	ld h,h
	ret c
	dec e
	dec (hl)
	add hl,de
	ld a,(hl)
	ld bc,l54ffh
	add a,b
	adc a,a
	ld (bc),a
	ld a,a
	ld a,(0b62bh)
	ld a,l
	ld h,e
	ret z
	ld a,(08f7fh)
	rst 38h
	ret nz
	rst 18h
	sub b
	jr c,$+1
	jp p,0c3c1h
	ld (0e57dh),a
	ld h,b
	ld e,a
	and 019h
	rst 38h
	add a,0ech
	and l
	ld bc,05a81h
	add hl,de
	rst 38h
	sbc a,e
	add hl,sp
	and e
	di
	sub e
	sbc a,h
	rst 38h
	ld e,b
	adc a,a
	rst 38h
	push bc
	inc bc
	ld e,b
	adc a,b
	sub l
	sub l
	sub h
	ld b,l
	ld (bc),a
	add a,h
	ld c,c
	rst 38h
	ld a,c
	ld l,h
	ld l,l
	ret po
	cp e
	ld l,d
	ret nc
	ld b,h
l5307h:
	ret c
	djnz l5307h
	ei
	jp z,08103h
	ret z
	sbc a,h
	pop af
	call nz,0f593h
	add a,b
	pop af
	ld a,(hl)
	xor 0aah
	inc hl
	rst 38h
	pop af
	ld h,h
	or 0f1h
	ld a,a
	rst 28h
	rst 38h
	and e
	nop
	rst 0
	add a,l
	or 07fh
	ld c,d
	ld (de),a
	add a,b
	or 070h
	sub e
	sub h
	ld (hl),b
	ld de,0bdfch
	rrca
	ld d,c
	and (hl)
	sbc a,(hl)
	call pe,01123h
	rst 38h
	pop af
	or (hl)
	adc a,h
	pop af
	ld a,a
	sub a
	jp nz,0d029h
	push af
	di
	ld a,a
	cp h
	cp 0c9h
	ld l,(hl)
	add a,b
	ld c,(hl)
	ld a,a
	di
	ld (hl),b
	adc a,(hl)
	call c,08da3h
	scf
	sbc a,l
	jp z,03fffh
	ld b,07fh
	ld c,098h
	sbc a,b
l535eh:
	sub h
	ld c,b
	ld (bc),a
	inc hl
	rst 38h
	jp 0e37dh
	jp pe,l4713h
	call 0607fh
	sub d
	add a,b
	cp 03ch
	ld a,c
	ld (hl),b
	or (hl)
	xor c
	ld h,e
	adc a,l
	pop bc
	ld de,0dcffh
	ld a,(de)
	inc hl
	dec hl
	rst 38h
	and d
	ld (de),a
l5380h:
	or d
sub_5381h:
	ld (0cd30h),a
	defb 0ddh,0afh,0ffh ;illegal sequence
	adc a,(hl)
	rst 38h
	ld a,(hl)
	ld a,(bc)
	ld b,d
	adc a,087h
	ld de,0c07eh
	nop
	push af
	ld a,a
	sbc a,a
	xor b
	add hl,bc
	rst 28h
	ld l,d
	ld d,08bh
	sbc a,0feh
	ld (hl),d
	adc a,h
	ld a,d
	call nz,0928ah
	xor c
	dec c
	ld a,(hl)
	add hl,sp
	ld a,a
	ld a,(bc)
	ld c,b
	rst 38h
	sub d
	call m,002ceh
	dec d
	ld c,c
	rst 38h
	adc a,07eh
	ei
	cp a
	ld (hl),h
	nop
	push hl
	or e
	inc de
	cp h
	ld a,a
	cp (hl)
	ld (bc),a
	ld a,a
	ld c,070h
	ld l,h
	ld a,(hl)
l53c4h:
	ld a,l
	jp c,08d9ch
	ld a,(l7eb2h)
	ld a,l
	inc sp
	ld b,a
	add hl,bc
	rst 38h
	pop hl
	sbc a,0fdh
	jp m,0a396h
	ld b,h
	rst 38h
	sbc a,(hl)
	ld a,(hl)
	ld h,e
	add a,b
	jp nz,0b8c9h
	jp po,0ff13h
	sbc a,h
	dec h
	ret po
	adc a,d
	xor 0f1h
	sub 070h
	ld hl,0d57eh
	ld a,l
	dec h
l53efh:
	sub (hl)
	ld a,(de)
	inc a
	ld de,l7edbh
	xor c
	rst 0
	add hl,de
	ld a,a
	ret po
	ld sp,hl
	nop
	ld b,a
	rst 38h
l53feh:
	ld sp,0dccfh
	add a,c
	push af
	rst 28h
	add hl,hl
	pop hl
	ld e,l
	ld (hl),b
	ld c,030h
	jp pe,0a77fh
	call c,01a64h
	ld (de),a
l5411h:
	defb 0edh ;next byte illegal after ed
	xor (hl)
	ld a,(hl)
	ld e,(hl)
	sub (hl)
	ld d,h
	ld h,l
	inc b
	adc a,e
	xor (hl)
	ld a,(hl)
	and a
	ld de,02918h
	ld a,a
	ret po
	rst 28h
	jp m,0852ch
	rst 38h
	pop af
	adc a,(hl)
	rst 8
	push hl
	rst 8
	ld h,e
	sub b
	add hl,hl
	dec (hl)
	jp c,0135dh
	push hl
	ld l,l
	ld (bc),a
	ld l,e
	ld d,d
	rst 28h
	cp h
	add hl,de
	ld a,a
	xor b
	ld h,a
	xor 0dch
	ld a,(hl)
	ret c
	jr c,l53c4h
	add a,021h
l5446h:
	ld a,(l7ee5h)
	dec c
	ld a,a
	ret m
	ld e,d
	rst 38h
	ex (sp),hl
	rst 38h
	ld b,(ix-016h)
	rst 0
	rst 8
	dec d
	ret po
	call z,0f3dbh
	inc de
	cp h
	ld l,l
	rst 38h
	dec iy
	ld hl,0f291h
	sub l
	push af
	pop hl
	ld a,(hl)
	ld (l4cf8h),hl
	defb 0edh ;next byte illegal after ed
	sbc a,(hl)
	ld a,(hl)
	push bc
	add a,(hl)
	cpl
	ld a,a
	pop hl
	ld a,a
	ei
	inc l
	ld d,h
	ld a,a
	and e
	jp pe,l5221h
	sbc a,c
	push bc
	add a,050h
	or l
	nop
	add a,c
	adc a,d
	call c,0136bh
	add hl,sp
	ld l,l
	adc a,00bh
	ei
	ld (hl),l
	ret z
	jr nz,l5411h
sub_548fh:
	rst 0
	inc bc
	ld (hl),b
	add hl,hl
	ld (0e28bh),hl
	nop
	adc a,(hl)
	adc a,l
	sub a
	add hl,hl
	rst 38h
	rst 20h
	sbc a,(hl)
	ld c,b
	ld sp,l7ffah
	ld l,l
	nop
	rst 18h
	jr c,l5526h
	adc a,a
	rst 8
	dec de
	ld c,e
	ld (hl),b
	ld d,h
	ld de,0c6d0h
	inc de
	ld (hl),c
	ld l,0feh
	add hl,sp
	ld a,a
	sbc a,d
	and l
	and 001h
	halt
l54bbh:
	inc de
	sbc a,e
	ld h,c
	in a,(0fdh)
	inc l
	ld e,b
	nop
	ld (hl),a
	ld hl,0e98bh
	ld b,d
	ld a,(0287fh)
	ld (bc),a
	dec hl
	inc c
	ld a,a
	ld bc,060b2h
	djnz l5553h
	ld (031b0h),hl
	sub a
	rst 38h
	sbc a,(hl)
	defb 0fdh,0b7h,07fh ;illegal sequence
	xor b
	rst 8
l54dfh:
	di
	and l
	rst 38h
	and 04bh
	adc a,a
	sub d
	adc a,(hl)
	ld a,c
	xor h
	jp c,0fadfh
	jr z,$-94
	call nc,0ac12h
	ld d,a
	ld (hl),e
l54f3h:
	sub a
	ld l,(hl)
	ld (hl),c
	or b
	djnz $+57
	ld hl,l4602h
	djnz l54f3h
	rst 0
l54ffh:
	rst 38h
l5500h:
	jp po,0ffd3h
	inc l
	adc a,c
	ld a,a
	ld c,e
	ld (l51ffh),hl
l550ah:
	rst 8
	push hl
	jp m,l466ch
	add a,c
	jp p,025dfh
sub_5513h:
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	sbc a,d
	jr l5597h
	rst 20h
	and h
	ld c,c
	rst 28h
	cp h
	xor e
	xor l
	inc hl
	sub h
	cpl
	or (hl)
	adc a,b
	adc a,b
	rst 8
l5526h:
	sbc a,l
	ld b,h
	ld hl,0caf3h
	jr nz,l54dfh
	ret c
	rst 38h
	call m,08629h
	ld (hl),b
l5533h:
	ld (hl),l
	sub d
	ld a,a
	rst 8
	ld e,068h
	add hl,hl
	ret p
	call z,sub_645dh
	ld hl,0ff53h
	rst 30h
sub_5542h:
	adc a,d
	ld d,0f9h
	ret m
	rst 30h
	ld a,a
	jr z,l559ch
	sbc a,023h
	ld (bc),a
	add a,b
	add a,h
	ld sp,0303eh
	xor e
l5553h:
	add a,b
	ccf
	ld de,08022h
	or c
	rst 38h
	ret m
	ld d,d
	cp 0e0h
	ld (l7feah),a
	rst 8
	dec a
	dec hl
	rst 38h
	sbc a,d
	dec sp
	add a,h
	halt
	rst 38h
	ld a,c
	xor a
	rla
	ld a,a
	ld b,b
	ld c,(hl)
	rst 18h
	ret c
	and h
	call z,sub_4e71h
l5576h:
	ld (0e1a9h),hl
	ld a,020h
	ld (bc),a
	ccf
	ld b,(hl)
	adc a,(hl)
	ld b,l
l5580h:
	add a,b
	cp a
	ld d,h
	rst 38h
	ld a,(hl)
l5585h:
	dec c
	defb 0fdh,032h,054h ;illegal sequence
	inc a
	sub h
	sub d
	ld a,a
	and e
	rst 8
	push bc
	add hl,hl
	ld a,a
	jp 01323h
sub_5595h:
	dec (hl)
	rst 38h
l5597h:
	and (hl)
	inc sp
	ld a,a
	dec a
	add hl,sp
l559ch:
	ld a,a
	ex (sp),hl
	and e
	sub l
	inc bc
	cp b
	ld l,07fh
	ld (hl),c
	ld sp,l4d15h
	ld b,d
	jr nz,$+1
	dec e
	ld de,0f8ffh
	dec d
	rst 38h
l55b1h:
	jp (ix)
	inc hl
	add hl,de
	rst 38h
	cp b
	adc a,a
	rst 8
	ccf
	ret z
	ex (sp),hl
	push de
	rla
	ld b,e
	ld a,c
	ld a,a
	adc a,d
	sub (hl)
	adc a,b
	exx
	pop af
	ld a,a
	jp pe,sub_7f71h
	ret
	ld (hl),c
	cp c
	sub c
	ld de,0cc8eh
	jp (hl)
	ld d,h
	ld a,(bc)
	xor c
	ld h,e
	nop
	nop
	exx
	ld c,0ffh
	rst 28h
	inc c
	jp m,l7f99h
	call m,0b251h
	add hl,hl
	ld a,a
	add a,d
	ld (de),a
	cp c
	ld hl,03dcfh
	ld sp,0338bh
	nop
	ld a,a
	adc a,h
	rst 38h
	call pe,01212h
	ld sp,hl
	ld a,a
	ld l,c
	inc hl
	push af
	ld c,e
	ld (hl),c
	ld a,a
	cp c
	add a,a
	ld (08ac2h),hl
	adc a,(hl)
	xor c
	ld e,l
	ld l,c
	ret m
	and 0b6h
	ei
	ld de,0ff99h
	ex (sp),hl
	rst 8
	ld e,058h
	djnz l5623h
	and l
	ei
	ex (sp),hl
	inc de
	ld l,087h
	sub c
sub_561ah:
	ret p
	rst 20h
	ld b,b
	xor e
	ld de,03771h
	add a,d
	inc hl
l5623h:
	and e
	add hl,hl
	or (hl)
	inc d
	jr nz,$+11
	ld hl,(08d21h)
	or d
	call 03fc2h
	ld (l7f09h),hl
	ld d,07eh
	ld b,a
	ld (094ffh),a
	rst 8
	ld a,c
	pop af
	ld sp,hl
	ld d,l
	ld (hl),d
	ret po
	ld a,b
	ld a,a
	call m,03900h
	xor a
	or a
	push af
	ret
	ld (l7f23h),a
	dec l
	nop
	rst 38h
	ld l,l
	xor (hl)
	adc a,d
	push bc
	ccf
	ld a,a
l5655h:
	add hl,de
	ld c,c
	inc b
	ld c,l
	defb 0ddh,0ffh,01eh ;illegal sequence
	ld sp,0eacfh
	inc sp
	adc a,h
	add a,09dh
	add a,l
	rst 8
	inc de
	ld a,a
	and a
	nop
	ld a,b
	push af
	xor h
	or a
	cp d
	ld bc,0b30dh
	ei
	push af
	ld (hl),d
	jp l506ch
	call m,00200h
	sub h
	ld c,c
	ld (hl),e
	ld b,a
	ld (de),a
	rst 38h
	sub h
	rst 8
	ld a,d
	xor e
	djnz l5690h
	or a
	adc a,013h
	ld a,03fh
	ld h,(hl)
l568ch:
	inc sp
	call pe,0ae6eh
l5690h:
	call pe,0a8b6h
	ld (03133h),a
	push de
	cp h
	call po,0a7feh
	ld a,a
	jp l7f3fh
	ld a,(bc)
	ld sp,hl
	halt
	rst 38h
sub_56a3h:
	dec a
	inc hl
	rst 8
	rst 10h
	call z,05c32h
	rst 20h
	ld de,0e640h
	call z,sub_4a9ch
	inc de
	xor d
	ld b,(hl)
	di
	and 071h
	add a,b
	jp pe,l7f30h
l56bbh:
	adc a,h
	or e
	push de
	adc a,l
	and a
	rst 38h
	jp nz,01211h
	sub c
	dec hl
	rst 38h
	ex de,hl
	rst 8
	ld e,0a6h
	jr nz,l56ffh
	call nz,09207h
	inc hl
	inc de
	rra
	ld b,b
	ld (0ec10h),a
	ld (hl),d
	ld (hl),c
	ld (hl),e
	jr nc,l575bh
	or l
	jr c,l56f0h
	jp p,0b1f3h
	jr c,l56bbh
	ld a,a
	add hl,hl
	ld a,a
	pop hl
	ld b,a
	rst 38h
	add a,d
	ld (0fbffh),hl
	adc a,a
	rst 8
l56f0h:
	ld c,e
	pop de
	ld c,e
	add hl,de
	inc de
	adc a,a
	ld b,b
l56f7h:
	sbc a,e
	nop
	rst 38h
	cp 000h
	ld h,b
	nop
	nop
l56ffh:
	ld a,a
	sbc a,c
	nop
	inc l
	inc sp
	ex de,hl
	nop
	ld a,(bc)
	rrca
	sbc a,b
	adc a,b
	nop
	add a,b
	cp e
	call nc,03204h
	ld (01122h),hl
	ld (03300h),hl
	cp 07fh
	ld e,l
	ld b,h
	nop
	rst 10h
	ld a,a
	jp z,l66ddh
	call nz,0007fh
	rrca
	inc hl
	inc (hl)
	sbc a,c
	nop
	ret pe
	ld a,l
	ld a,e
	add a,c
	adc a,c
	ret
	adc a,c
	sub e
	call z,0d17fh
	inc (hl)
	ld b,h
	rst 38h
	rra
	pop de
	ld a,e
	ld a,a
	ld bc,0c38ch
	add a,h
	ret z
	sbc a,h
	add a,h
	ld a,a
	ret nz
	inc hl
	ld b,h
	ld b,e
	cp 07fh
	call nz,0d38dh
	ld c,093h
	inc a
	call z,sub_7f43h
	dec b
	inc sp
	ld b,h
	ld b,d
	rst 38h
	ccf
	ld b,e
	cp 03eh
	ret po
l575bh:
	adc a,e
	cp l
	sbc a,l
	exx
	call nc,sub_4338h
	inc sp
	ld a,(hl)
	inc hl
	ld b,e
	ld (0faffh),hl
	rra
	ld a,a
	ld (hl),b
	adc a,l
	call c,0cc9ch
	adc a,c
	ld a,b
	inc sp
	ld (l5afdh),a
	inc b
	cp 09fh
	and c
	rst 30h
	ld a,a
	inc b
	adc a,h
	call z,0c484h
	ld b,h
	sbc a,c
	and l
	ei
	inc de
	dec b
	ld (0f97fh),hl
	add a,h
	sub h
	rst 38h
	ld a,l
	dec d
	rst 38h
	sbc a,c
	ld a,c
	ei
	inc h
	add a,e
	or b
	ld hl,l7ffeh
	ld e,l
	sub e
	rst 38h
	ld a,017h
	defb 0fdh,0f0h,0b7h ;illegal sequence
	ld b,h
	ld a,e
	inc bc
	ld h,d
	cp 07fh
	add hl,de
sub_57a8h:
	ld a,a
	ld l,l
	nop
	cp c
	ld a,(hl)
	cp 01fh
	call z,sub_7f7dh
	ld l,e
	add a,h
	push af
	ld sp,08cfch
	nop
	ccf
	add hl,de
	sub h
	ld a,a
	sub a
	ld (hl),l
	sub d
	ld h,c
	ld a,a
	pop af
	ld b,h
	ld sp,hl
	ld hl,01174h
	nop
	sub h
	ld b,a
	ld b,e
	rst 38h
	or 02ah
	add a,h
	or 011h
	ld (de),a
	sbc a,d
	jp 02521h
	dec hl
	rst 38h
	jp m,l7f2fh
	ld a,d
	or 012h
	ld hl,0d4fch
	and l
	xor a
	cp 03fh
	ld h,c
	cp 01eh
	jr z,l5824h
	cp 0c8h
	rst 38h
	cp 0c6h
	or 0a8h
	cp 0e8h
	inc de
	sbc a,c
	defb 0ddh,083h,0dfh ;illegal sequence
	rst 38h
	ret pe
	ld h,e
	cp 0d9h
	ld b,e
	defb 0fdh,03eh,011h ;illegal sequence
	defb 0fdh,09fh,07fh ;illegal sequence
	call z,022abh
	rst 38h
	and 09fh
	defb 0fdh,013h,093h ;illegal sequence
	ld (0f97fh),a
	cp e
	pop hl
	ld l,a
	ld a,a
	jp c,0bcfch
	and e
	cp 088h
	rst 38h
	cp 0bdh
	inc sp
	cp 01eh
	rst 18h
	ld a,a
	rst 10h
l5824h:
	ld c,a
	defb 0fdh,008h,033h ;illegal sequence
	cp 0e3h
	ld a,(hl)
	sbc a,a
	ld a,a
	ex de,hl
	xor e
	call m,0235dh
	or 091h
	cp 09eh
	rra
	inc de
	rst 38h
	defb 0fdh,054h ;ld d,iyh
	defb 0fdh,0f0h,033h ;illegal sequence
	or 0f6h
	dec h
	add a,h
	ld h,e
	rst 38h
	jp m,09855h
	call m,0a37ah
	inc hl
	ld a,a
	inc hl
	ld b,c
	rst 30h
	add a,a
	inc hl
	ld a,a
	di
	rst 10h
	rst 38h
	jp po,08f98h
	cp 072h
	ld (01449h),hl
	defb 0fdh,0fbh,0feh ;illegal sequence
	ld a,a
	ld (hl),e
	rst 38h
	inc a
	ld d,e
	sbc a,b
	defb 0fdh,0edh,07fh ;illegal sequence
	defb 0fdh,02fh,000h ;illegal sequence
	adc a,d
	sbc a,b
	call m,064bdh
	add a,e
	dec h
	ld b,h
	sub h
	sbc a,(hl)
	ld h,e
	rst 38h
	jp m,09984h
	defb 0fdh,0fbh,029h ;illegal sequence
	inc h
	ld a,h
	add a,b
	dec hl
	dec bc
	rst 38h
	ld a,(hl)
	ld a,c
	sub e
	rst 38h
	ld a,009h
	sbc a,c
	defb 0fdh,0f3h,04ch ;illegal sequence
l588eh:
	inc (hl)
	inc b
	ld c,c
	dec d
	ld c,a
	add hl,sp
	ld a,a
	inc sp
	ld a,a
	rst 20h
	ld d,d
	sub d
	rst 18h
	ex (sp),hl
	cp 01eh
	ld h,c
	ld b,h
	ld b,d
	inc h
	sub e
	add a,d
	jr z,l58efh
	adc a,l
	sbc a,d
	cp 07fh
	ld (hl),c
	sub c
	rst 38h
	ld a,(hl)
	inc d
	add a,b
	call c,0f1fdh
	ld a,a
	rst 20h
	sbc a,a
	dec l
	rst 0
	rst 38h
	di
	jp pe,0fc98h
	pop af
	and c
	adc a,a
	inc (hl)
	ld a,d
	sub e
	add a,d
	ccf
	sub e
	ld a,a
	xor e
	sbc a,(hl)
	add a,b
	sub e
	ld b,d
	defb 0fdh,081h,044h ;illegal sequence
	ld b,e
	ld c,c
	sub h
	cp 019h
	ld a,(hl)
	jp po,0a733h
	rst 38h
	ret pe
	cp d
	ld a,a
	ld b,a
	add a,d
	cp 016h
	sub a
	sub l
	cp 03fh
	ld b,e
	ld a,a
	and c
	or a
	rst 38h
	ld hl,(0f080h)
	ld h,h
	inc (hl)
	ld a,d
l58efh:
	ld de,0bb43h
	rst 38h
	inc b
	ccf
	ld a,a
	sbc a,a
	rst 8
	add a,c
	adc a,e
	ld a,a
	jp m,0fec8h
	jp (hl)
	ld b,h
	ld a,a
	call po,0e584h
	ld a,d
	inc (hl)
	dec de
	pop hl
	add a,l
	dec de
	rst 38h
	rst 8
	ret nc
	ex de,hl
	add a,c
	sub h
	adc a,l
	ld e,c
	ld (hl),e
	add a,d
	add hl,hl
	nop
	push hl
	rst 38h
	rst 28h
	ret nc
	di
l591bh:
	add a,d
	sbc a,(hl)
	ld a,(hl)
	ld d,(hl)
	add a,c
	rst 38h
	ld a,a
	ld b,l
	rst 18h
	ld a,0a8h
	adc a,b
	add a,b
	pop af
	ccf
	ld c,b
	ld b,h
	ld a,a
	and h
	push af
	ld e,a
	rst 30h
	add a,e
	rra
	ld a,a
	jp (hl)
	defb 0fdh,000h,09eh ;illegal sequence
	adc a,b
	nop
	ld sp,0fdffh
	sbc a,a
	ld a,a
	sbc a,h
	add a,e
	and a
	ld a,a
	di
	adc a,000h
	nop
	call m,0515fh
	sbc a,b
	add a,b
	jp p,l482fh
	dec bc
	ld a,a
	and 044h
	inc b
	ld b,h
	ld b,b
	rst 18h
	ld a,c
	ld a,088h
	nop
	ld l,a
	ld a,a
	jp (hl)
	rst 18h
	sbc a,b
	ld a,a
	rst 10h
	rst 18h
	jp pe,08155h
	pop af
	rst 38h
	ld a,a
	ld b,a
	jp pe,0f39dh
	add a,h
	cp a
	ld a,a
	call p,004adh
	jp pe,0bff0h
	add a,d
	sub e
	ld a,a
	jp m,0ea0eh
	pop af
	rst 0
	rst 18h
	jp (hl)
	cp a
	ld a,a
	jp 00244h
	ld (0fc23h),hl
	and h
	add a,b
	call po,sub_5f84h
	ld a,a
	jp c,04205h
	ld (de),a
	ld (0fd34h),hl
	inc hl
	sub h
	cp 087h
l5999h:
	inc h
	add hl,sp
	and 0dfh
	and l
	rst 8
	nop
	xor d
	adc a,c
	pop bc
	ld a,b
	ld (hl),a
	jp z,0d2d7h
	ld e,h
	ld (l4bf6h),hl
	ld hl,00980h
	ld c,c
	ld a,a
	ld (0fc7eh),a
	ld b,h
	add a,b
	ld h,a
	dec e
	exx
	jp nc,l535eh
	cp 024h
	ld (00780h),a
	inc sp
	ld b,h
	ld b,d
	inc h
	sub e
	rst 38h
	or a
	ld a,(hl)
	call m,0001fh
	call po,sub_7f64h
	add a,b
	or c
	ld a,a
	ld sp,hl
	rst 38h
	ld a,(hl)
	and e
	rst 28h
	inc l
	rst 0
	ld l,l
	inc (hl)
	inc (hl)
	add hl,bc
	inc h
	inc (hl)
	inc sp
l59e0h:
	rst 38h
	or c
	cp 074h
	rst 30h
	sub h
	add a,c
	sub h
	inc b
	add a,b
	rst 20h
	ld a,(hl)
	di
	ld l,e
	add a,e
	ld e,(hl)
	nop
	ld d,c
	ld (039ebh),a
	inc hl
	add hl,bc
	ld (hl),023h
	ld (0ff08h),hl
	sub 080h
	ld d,(hl)
	defb 0fdh,095h ;sub iyl
	inc sp
	ld a,(hl)
	call m,08c93h
	ex af,af'
	or h
	call z,0bcffh
	jp p,l5380h
	add a,c
	ld de,l5f99h
	rst 38h
	push hl
	ld a,(hl)
	ld a,h
	jr c,l59e0h
	adc a,b
	ld c,h
	ld (hl),c
	jr z,l5a22h
	inc b
	add hl,sp
	ld (00e00h),hl
l5a22h:
	ld hl,01211h
	ld (de),a
	add hl,bc
	ld c,l
	ld (de),a
	ld de,l7608h
	sbc a,c
	call m,080cbh
	inc h
	ld (0fe49h),hl
	ld a,a
	inc e
	inc sp
	inc de
	call z,sub_44cch
	ld a,a
	jp l4f05h
	adc a,b
	add a,d
	ld a,a
	or d
	add a,b
	ld e,b
	call m,0897fh
	defb 0fdh,07ch ;ld a,iyh
	add a,d
	defb 0ddh,0dch,055h ;illegal sequence
	inc h
	call z,005c9h
	inc a
	inc b
	inc hl
	ld c,a
	jp nz,029f5h
	jp nz,0f8ffh
	ld l,c
	add a,c
	pop bc
	inc hl
	defb 0fdh,02fh,0c6h ;illegal sequence
	ret nz
	nop
	cp e
	cp l
	adc a,l
	defb 0ddh,088h,045h ;illegal sequence
	exx
	dec b
	sbc a,l
	defb 0ddh,07fh,06ch ;illegal sequence
	xor d
	ld b,h
	rst 38h
	ld a,c
	dec h
	add a,b
	jp 01fffh
	add hl,de
	sbc a,b
	out (09fh),a
	cpl
	ld a,a
	jp c,013c3h
	jp 0c2c2h
	adc a,b
	sub (hl)
	rst 38h
	pop af
	ld l,(hl)
	nop
	add a,h
	or c
	add a,c
	ld e,c
	adc a,(hl)
	ld (de),a
	sub h
	ld hl,l4213h
	ld (00011h),hl
	inc d
	add hl,hl
	daa
	sbc a,(hl)
	inc b
	add hl,hl
	sbc a,c
	add hl,de
	ld bc,0c192h
	ex af,af'
	inc hl
	inc (hl)
	ld b,c
	inc d
	ld b,a
	cp 0a8h
	add a,h
	ld b,h
	ld c,b
	rst 10h
	jp z,l4844h
	rst 38h
	cp h
	ld b,h
	adc a,h
	call z,0a8ffh
	sbc a,h
	call z,0aac8h
	ld a,a
	nop
l5ac0h:
	rst 38h
	ld sp,hl
	and a
	add a,c
	adc a,c
	add a,b
	ld d,h
	ld (02205h),hl
	inc d
	add hl,de
	sub h
	inc (hl)
	and e
	sub l
	nop
	ld a,(hl)
	dec bc
	ld h,e
	ld b,019h
	ld a,a
	ld e,b
	sub c
	ex af,af'
	ld (de),a
	ld a,(03123h)
	ld a,a
	ld a,h
	sbc a,b
	ld a,a
	jp p,0f081h
	ld d,d
	rst 38h
	add hl,hl
	add a,h
	rst 38h
	add a,l
	sub h
	rst 38h
	ld h,d
	call z,0fa00h
	ld a,a
	sub d
	inc sp
	add a,b
	sub d
	nop
	ld (0a37ah),a
	ld e,a
	cp 099h
l5afdh:
	adc a,h
	dec b
	ld hl,0bb1bh
	nop
	ld a,l
	ld h,0b9h
	ld bc,00991h
	ld b,l
	add a,b
	sub l
	add hl,de
	cp 01eh
	sub d
	res 3,(hl)
	or l
	or c
	add a,c
	ret p
	ld b,a
	add a,a
	adc a,a
	ld a,a
	sub d
	ld c,b
	add a,d
	ld h,d
	out (033h),a
sub_5b20h:
	ret nc
	ld d,a
	ld b,l
	add hl,de
l5b24h:
	add a,c
	ld bc,0e100h
	ld a,a
	push de
	add a,c
	ld sp,09100h
	cp 01ah
	ld b,e
	sub d
	ld d,043h
	ld e,e
	ld (0077eh),hl
	ld a,a
	call z,079ffh
	rst 0
	cp 07dh
	cp c
	sbc a,(hl)
	or l
	sbc a,l
	rst 8
	ret p
	dec h
	ld c,b
	sub (hl)
	rla
	ld b,h
	rst 38h
	push hl
	rst 38h
	add a,d
	ret z
	ld de,0d8b2h
	adc a,d
	ld l,c
	jp m,000dch
	bit 4,e
	adc a,d
	or h
	adc a,e
	cp (hl)
	adc a,l
	and d
	pop af
	jp pe,0827fh
	ret c
	ld b,(hl)
	ld (l78feh),hl
	ld a,a
	rra
	ld de,l7fb1h
	inc l
	ei
	or (hl)
	ld b,e
	jp z,0c3aeh
	sub d
	add a,h
	ld (03e80h),a
	ld a,(bc)
	adc a,e
	ld a,b
	call c,07e89h
	ret
	ret po
	ld a,a
	di
	jp pe,02384h
	ld de,022feh
	ld e,a
	ld e,a
	ld b,h
	cp 056h
	defb 0fdh,052h,08fh ;illegal sequence
	ld e,b
	and a
	rst 38h
	add a,d
	cp 03ah
	sub d
	jp m,0a8abh
	call m,084c8h
	jp po,038d7h
	jp po,08300h
	ld a,d
	and a
	adc a,h
	add a,a
	ld a,(hl)
	scf
	call m,sub_7f9fh
	and d
	add a,c
	ld (hl),e
	sub c
	add hl,hl
	defb 0fdh,0c0h,095h ;illegal sequence
	rst 38h
	sub h
	inc sp
	jr z,l5bcbh
	inc de
	dec bc
	cp 0afh
	and (hl)
	add a,(hl)
	add hl,sp
	ld a,a
	jp m,l5999h
	or l
	sub (hl)
	ld c,e
	defb 0fdh,03eh,03fh ;illegal sequence
l5bcbh:
	ld a,a
	sbc a,l
	rrca
	sbc a,a
	ld a,a
	add a,a
	cp 01ah
	ld sp,hl
	sbc a,b
	xor h
	sub c
	inc de
	adc a,l
	cp 0beh
	and (hl)
	dec h
	inc c
	add hl,hl
	ld bc,l4ce5h
	ld l,a
	dec l
	ld a,a
	add a,l
	ld b,d
	or c
	jp p,0fd44h
l5bebh:
	sub (hl)
	add a,h
	cpl
	ld a,l
	jr $-124
	jp pe,09881h
	sbc a,a
	add a,d
	ld e,a
	rst 30h
	ld e,(hl)
sub_5bf9h:
	ld c,(hl)
	jr c,l5c00h
	adc a,e
	add a,l
	ld c,l
	sbc a,a
l5c00h:
	ld a,a
	ld b,h
	ld b,h
	rst 38h
	call pe,sub_71feh
	inc bc
	ex af,af'
	ld sp,hl
	inc hl
	ld (0c7feh),a
	ld b,h
	ld a,a
	and a
	dec l
	ld (de),a
	cp 0e0h
	ld b,d
	call m,0a4b1h
	defb 0fdh,07ah,094h ;illegal sequence
	or l
	dec a
	sub e
	ld a,a
	ld (hl),e
	ld h,c
	sub (hl)
	inc a
	inc sp
	and l
	pop hl
	ret p
	ld a,a
	dec a
	ld b,h
	ld b,d
	ld a,a
	ld a,l
	add a,e
	add a,h
	ld (l6dfeh),hl
	ld a,a
	inc bc
	ld d,l
	ld a,a
	call m,sub_7f7dh
	ld a,c
	xor (hl)
	add a,04dh
	dec h
	ld c,c
	jp nc,l4909h
	sub e
	exx
	ld l,d
	add a,c
	ld e,h
	ld h,l
	add a,b
	daa
	adc a,h
	xor l
	dec hl
	sub (hl)
	adc a,l
	ld h,a
	and l
	sbc a,c
	out (0e1h),a
	inc h
	add a,(hl)
	inc e
	jp p,09900h
	xor a
	cp 032h
	ld b,e
	add hl,sp
	cp 024h
	ld c,c
	add a,d
	adc a,b
	sbc a,c
	rst 38h
	ret z
	rst 18h
	adc a,07fh
	ld d,d
	add hl,sp
	ld bc,0ba94h
	in a,(09fh)
	cp 01ch
	xor (hl)
	ret c
	jp 0fca3h
	ld c,a
	inc h
	ld c,c
	ld e,b
	dec c
	call c,081d9h
	ld e,c
	add a,c
	ret
	adc a,e
	ld l,a
	ld a,h
	xor h
	dec bc
	ld e,a
	ld b,c
	jp p,0da86h
	sub d
	xor a
	call po,0bf99h
	cp 039h
	ccf
	add hl,sp
	ld (hl),b
	ld b,h
	cp 092h
	or d
	ex de,hl
	ld e,l
	sub (hl)
	and b
	ld e,e
	add hl,hl
	ld a,a
	jp po,0f92dh
	ld a,a
	ld c,e
	add a,b
	ld e,07fh
	daa
	ld (07f33h),a
	ld d,c
	add a,b
	sbc a,a
	ld a,a
	and a
	cp 09ch
	call pe,0fe00h
	ld l,c
	ld hl,l4512h
	ld c,c
	ret p
	sbc a,(hl)
	call m,sub_7f51h
	sub b
	ld c,h
	and 044h
	ex de,hl
	ld sp,01cfch
	ld de,0af84h
	xor c
	inc (hl)
	call m,0a24bh
	ld d,h
	ld b,e
	cp 071h
	inc a
	cp e
	inc b
	ld a,(0f692h)
	sub l
	sub l
	rst 8
	ld a,e
	ld d,c
	cp d
	xor b
	inc hl
	rst 0
	cp e
	nop
	adc a,c
	or h
	inc hl
	ld a,a
	defb 0edh ;next byte illegal after ed
	defb 0fdh,03ch,070h ;illegal sequence
	ld b,c
	ld hl,02916h
	sbc a,a
	ld sp,hl
	ret pe
	sbc a,c
	ld a,d
	inc b
	or (hl)
l5cfbh:
	rst 38h
	cp h
	ld a,a
	di
	ld c,b
	ei
	cp (hl)
	ccf
	or c
	pop de
	inc h
	sbc a,c
	add a,b
	ld h,c
	sbc a,c
	ld b,e
	cp 01bh
	exx
	xor h
	inc hl
	inc hl
	add a,b
	sub h
	inc sp
	add a,b
	xor l
	sub c
	jr nc,l5d4dh
	adc a,0f3h
	defb 0fdh,0ebh,089h ;illegal sequence
	and (hl)
	ex de,hl
	dec h
	adc a,(hl)
	nop
	ret m
	ld a,a
	xor 0feh
	sbc a,b
	ld (02975h),hl
	adc a,c
	sbc a,a
	ld (02da7h),hl
	ld l,a
	inc sp
	ld a,a
	or e
	adc a,b
	ei
	sbc a,h
	rra
	ld b,e
	or c
	call 0d6ffh
	cpl
	ld d,c
	or (hl)
	ld (0b70ch),a
	ld c,(hl)
	ld b,e
	daa
	add a,d
	dec (hl)
	add a,h
	cpl
	ex de,hl
	adc a,e
	di
l5d4dh:
	ret p
	cp b
	inc d
	rlca
	ld (hl),d
	ld (de),a
	inc b
	ld de,l7ff5h
	sbc a,(hl)
	defb 0fdh,038h,029h ;illegal sequence
	ld l,d
	ld hl,03af0h
l5d5fh:
	sub d
	ld a,(hl)
	sbc a,l
	add a,h
	xor e
	adc a,l
	ld a,a
	jp z,0b1ach
	adc a,b
	add a,b
	ld e,032h
	add a,b
	jp z,01e22h
	adc a,h
	rst 38h
	jp z,08d5ch
	ld a,(de)
	ld b,e
	pop bc
	cp l
	ld (hl),l
	dec hl
	inc (hl)
	rst 28h
	inc a
	ld h,e
	ld a,b
	ld c,l
	push af
	call nc,058eah
	ret po
	dec sp
	and 0ffh
	push hl
	call z,023a3h
l5d8eh:
	ld b,c
	jr l5d5fh
	ld c,e
	ld e,(hl)
	inc sp
	ld l,a
l5d95h:
	nop
	ccf
	ld a,a
	inc c
	or e
	ld (hl),c
	ld a,a
	call pe,08e12h
	in a,(c)
	ld a,a
	adc a,(hl)
	ret m
	cp a
	call sub_7f8fh
	or c
	inc b
	ld c,d
	pop hl
	jr l5d95h
	pop af
	cp c
	ld a,a
	rst 20h
	jp m,0b4feh
	add a,c
	ex (sp),hl
	or h
	rla
	or d
	sub l
	rlca
	ld h,l
	inc l
	inc b
	ld h,(hl)
	ld h,h
	ld b,e
	ld hl,0b5d8h
	add a,e
	ld e,e
	sbc a,l
	ld d,h
	ei
	ld a,b
	ld (hl),e
	ld (hl),h
	rst 38h
	ld l,07eh
	ld a,a
	adc a,c
	ld b,h
	jp z,08f70h
	and e
	inc e
	ld c,b
	and h
	cp e
	rst 28h
	rst 10h
	add hl,sp
	add a,h
	rst 18h
	ld a,a
	inc (hl)
	add a,h
	or h
	rst 30h
	or h
	push bc
	ld b,b
	ccf
	ld bc,l6643h
	ld (hl),a
	halt
	ld h,h
	ld sp,03dd8h
	push bc
	cp e
	rla
	ld c,d
	add a,b
	rst 0
	call p,0fa95h
	dec (hl)
	adc a,(hl)
	ld e,h
	ld a,d
	ld a,a
	add hl,hl
	inc b
sub_5e02h:
	jp z,02ec7h
	rst 0
	ld b,d
	ld a,(hl)
	ld a,a
	push de
	adc a,b
	or h
	ld a,b
	ld d,c
	or d
	ld d,d
	ld bc,03624h
	ld (hl),a
	ld h,(hl)
	ld h,a
	ld h,(hl)
	ld a,a
	pop hl
	cp (hl)
	adc a,e
	sub d
	rla
	ld l,b
	sbc a,c
	ld (de),a
	add hl,hl
	push bc
	ld l,00fh
	sub d
	ld a,a
	ld e,e
	jp z,0f072h
	ld a,a
	ld (hl),b
	ld (de),a
	ld b,c
	inc h
	rst 18h
	rst 10h
	dec sp
	ret
	ld e,a
	ld a,a
	ld c,l
	add a,h
	ld h,(hl)
	ret po
	halt
	add a,c
	adc a,h
	ld a,a
	rrca
	ld h,(hl)
	ld l,c
	ld h,a
	halt
	jp nz,081d9h
	xor 0c0h
	ld d,d
	sbc a,e
	add hl,hl
	rst 8
	ld (hl),d
	sbc a,a
	rst 38h
	sbc a,l
	inc b
	jp z,l5d8eh
	inc h
	set 0,c
	dec de
	adc a,(hl)
	sub a
	xor b
	push hl
	cp a
	ld l,h
	ld a,d
	ld a,a
	rst 20h
	or h
	ld a,(hl)
	ld a,a
	xor c
	ld hl,0e6ebh
	cp (hl)
	ld (hl),09bh
	ld (hl),e
	ld a,a
	ret p
	ld (hl),l
	jp z,0b0ceh
	ld a,c
	sub (hl)
	ret nz
	out (024h),a
	xor c
	rst 20h
	add hl,de
	rst 0
	ld a,a
	xor l
	add a,c
	ld sp,0c62bh
l5e80h:
	ld a,a
	add hl,bc
	ld b,(hl)
	ld (hl),a
	or (hl)
	rst 38h
	ld h,d
	cp (hl)
	ld a,h
	ld h,e
	cp a
	ld sp,0cae7h
	rst 38h
	call m,01398h
	rst 38h
	jp (hl)
	jp z,07eceh
	ld l,04ah
	ld b,h
	ld d,d
	ret nz
	sub c
	ld hl,03ebfh
	cp (hl)
	ld a,a
	or (hl)
	add a,d
	rst 0
	ld a,a
	dec h
	ld hl,0ff13h
	ld (bc),a
	ld a,(hl)
	halt
	ld h,e
	ld l,04fh
	ld hl,0d9bfh
	rst 38h
	defb 0ddh,0efh,0ffh ;illegal sequence
	sbc a,a
	jp z,0f8b9h
	ld a,a
	cp a
	inc sp
	ld a,a
	dec c
	add a,h
	pop af
l5ec2h:
	adc a,e
	xor 07ch
	ld h,l
	jp m,031c1h
	ld h,(hl)
	ld h,e
	rst 38h
	ld a,c
	ex (sp),hl
	ld l,035h
	cp a
	pop af
	ei
	ret m
	inc l
	inc (hl)
	sbc a,e
	di
	daa
	sbc a,c
	ld b,d
	defb 0fdh,02ch ;inc iyl
	djnz l5ec2h
	and e
	sub a
	ld de,0fe93h
	ex (sp),hl
	ld c,(hl)
	ld b,l
	call nc,04cdbh
	ld e,e
	cp a
	and a
	ld a,(hl)
	xor h
	add a,c
	call pe,0b1d1h
	ld a,a
	sub d
	call nc,09f6eh
	ld e,(hl)
	cp 05bh
	ret nz
	sub e
	inc sp
	cp a
l5effh:
	ld e,01ah
	nop
	add a,l
	ld (hl),003h
	and a
	ld l,b
	rst 38h
	push bc
	ld (bc),a
	cp 01ch
	halt
	jp po,l49a3h
	sub (hl)
	jp 019bfh
	adc a,0c0h
	ld (hl),c
	cp a
	rst 8
	ld a,a
	out (c),a
	ld (0ca7fh),a
	add a,b
	cp 07fh
	dec h
	rst 38h
	sub l
	daa
	ld a,d
	xor a
	xor c
	rla
	sbc a,(hl)
	ld a,(hl)
	ld a,(de)
	cp a
	rst 20h
	cp a
l5f30h:
	cp (hl)
	ld e,(hl)
l5f32h:
	ld a,a
	call p,0dc81h
	jp pe,l7b94h
	xor e
	xor d
	ld (de),a
	ret p
	call m,0bff7h
	rst 10h
	ret
	ld a,l
	jr z,l5f30h
	sbc a,a
	jp c,l7f0fh
	adc a,e
	cp a
	cp c
	ld (hl),a
	inc sp
	cp a
	push bc
	ld a,a
	ret p
	add hl,sp
	add a,h
	jr nz,l5f32h
	call m,0a58eh
	inc hl
	add a,e
	inc h
	halt
	sub d
	add a,c
	ret m
	rst 30h
	cp a
	sbc a,d
	ld c,c
	add a,h
	ld e,l
	dec e
	ld b,e
	defb 0edh ;next byte illegal after ed
	adc a,0ffh
	ld (hl),c
	ld a,d
	call nz,091efh
	sbc a,b
	sbc a,l
	ld a,(hl)
	ld c,a
	ld a,a
	adc a,b
	ld a,a
	sub (hl)
	rst 38h
	sbc a,l
	ld b,e
	adc a,c
	ret
	adc a,b
	ret z
l5f7fh:
	ld e,c
	ld (hl),d
	add hl,de
	pop bc
	sub d
sub_5f84h:
	pop hl
	or e
	ld d,d
l5f87h:
	ld c,d
	add hl,hl
	xor a
	ld b,l
	xor l
	ld a,b
	rst 10h
	inc bc
	inc hl
	cp a
	jp m,0c47bh
	ld a,h
	nop
	dec hl
	sub e
	rst 38h
l5f99h:
	cp (hl)
	rst 38h
	add a,044h
	ld a,d
	ld d,l
	add a,c
	ld a,(de)
	sbc a,h
	ld a,h
	ld h,d
	nop
	ld c,b
	ret c
	scf
	rst 0
	ret c
	or (hl)
	or l
	inc hl
	sub l
	xor h
	rst 38h
	rst 30h
	ld b,03ch
	jp 0c984h
	ret
	ld d,c
	and a
	ld b,d
	or c
	add a,d
	ld b,e
	sub h
	cp a
	sub h
	ld c,c
	ld c,a
	ld l,l
	ld e,c
	add a,0bah
	jp m,0a622h
	or d
	rra
	add hl,hl
	ld a,a
	inc c
	adc a,c
	or c
	ld (de),a
	call nz,sub_6edch
	ld a,a
l5fd5h:
	or d
	nop
	ld a,(hl)
	add a,c
	or (hl)
	sub a
	jp m,007a7h
	ret c
	ld a,c
	add hl,bc
	xor 014h
	ld h,c
	ld e,e
	add hl,sp
	rst 38h
	ret nz
	adc a,l
	inc e
	out (093h),a
	inc a
	ld a,a
	ld c,d
	or a
	cp c
	inc h
	ld a,a
	and b
	call p,0f59fh
	defb 0edh ;next byte illegal after ed
	ld a,a
	ld de,0f97fh
	ld de,08f80h
l5fffh:
	ld b,b
	ld l,d
	ex af,af'
	ret
	and e
	cp 08eh
	add hl,bc
	ld sp,08900h
	jr l5fd5h
	inc (hl)
	ld b,c
	rst 38h
	sbc a,a
	nop
	adc a,e
	cp l
	sbc a,l
	ld (de),a
	exx
	exx
	call nc,0ce80h
	nop
	call m,03288h
	jp c,l6d8ah
	ld b,0ffh
	ld e,c
	sub d
	inc hl
	ld sp,02efeh
	nop
	jp z,0397fh
	ld bc,l5bebh
	adc a,a
	jp nc,08308h
	ex (sp),hl
	dec b
	inc hl
	push hl
	add hl,sp
	ld a,a
	ld a,c
	inc b
	ld a,a
	ld b,(hl)
	cp 0bah
	ld b,h
	add hl,hl
	xor 0e8h
	ld a,b
	nop
	rst 20h
	rst 38h
	add a,h
	adc a,l
	call c,09c27h
	call z,05180h
	inc (hl)
	add a,b
	ret nc
	ld hl,l4319h
	ld (0f539h),hl
	exx
	sub h
	add a,b
	ld h,(hl)
	inc hl
	sub a
	ld a,(l6734h)
	rst 0
	ld a,a
	sub h
	inc a
l6066h:
	ld de,0ef82h
	add a,a
	ld e,h
	di
	ld a,a
	add a,d
	inc l
	ld (hl),a
	ld a,a
	cp 019h
	ld a,a
	jp nc,0e548h
	cp d
	defb 0edh ;next byte illegal after ed
	ld a,a
	sbc a,c
	rst 38h
	ld a,0a9h
	call z,0c5ffh
	ld c,b
	and d
	ld sp,01c81h
	add a,0fdh
	ld b,h
	call m,0c894h
	inc bc
	ld a,a
	dec de
	ld de,02374h
	ld a,a
	add hl,hl
l6094h:
	and l
	ld bc,l6dech
	jp c,082b8h
	di
	xor a
sub_609dh:
	inc e
	add hl,de
	ld a,a
	add hl,bc
	add a,e
	ld b,h
	ld b,h
	di
	or e
	pop af
	dec e
	xor l
	ld b,h
	and 0c6h
	or d
	dec sp
	xor a
	rst 38h
	ld l,d
	ld bc,0ca82h
	or a
	and a
	xor d
	sub h
	ld b,d
	add a,c
	jp pe,0fc99h
	jr nc,l6103h
	sbc a,a
	ld h,0f1h
	inc de
	adc a,b
	ld e,0bbh
	ld (de),a
	inc (hl)
	ld a,a
	adc a,l
	ld b,h
	jp c,09ff1h
	in a,(01bh)
	sub h
	di
	ret c
l60d3h:
	nop
	sbc a,c
	pop hl
	ld c,b
	ld l,(hl)
	call nc,sub_75fch
	add a,d
	dec a
	ld h,d
	and l
	ld a,e
	ld a,a
	jp p,09c00h
	inc sp
	call nz,0b033h
	sbc a,e
	defb 0fdh,059h,0fdh ;illegal sequence
	exx
sub_60edh:
	inc bc
	sub c
sub_60efh:
	ld a,a
l60f0h:
	or 04bh
	add a,l
	ccf
	ld a,a
	inc h
	push af
	ld (hl),l
	call m,0bf1eh
	ex de,hl
	call nc,0b1ffh
	add a,b
	sbc a,0d4h
	add a,l
l6103h:
	pop bc
	call nc,05143h
	add a,0b0h
	or c
	add a,d
	ld d,h
	add a,b
	sbc a,h
	ret
	dec a
	ld de,02ae1h
	xor h
	sub (hl)
	ex de,hl
	ld h,0fdh
	sub b
	sub e
	add hl,de
	sub e
	jp c,08f6fh
	and 081h
	ld a,00fh
	ld a,a
	add a,d
	cp 039h
	adc a,a
	call m,08239h
	ld l,e
	ld h,(hl)
	ld a,07fh
	dec sp
	add a,l
	dec (hl)
	ld a,b
	inc sp
	add a,b
	inc e
	jp z,0ad80h
	sub h
	xor b
	ld de,00a14h
	dec de
	ld (de),a
	rst 38h
	ld e,h
	ex (sp),hl
	ld a,a
	sub d
	pop de
	cp b
	rst 38h
sub_6148h:
	sbc a,d
	jr $-125
	di
	rst 30h
	ld a,a
	ret z
	ld a,b
	call m,03ef8h
	ld a,a
	res 0,l
	add hl,sp
	xor c
	adc a,b
	add a,b
	jp po,l5580h
	sub h
	rst 38h
	xor h
	ld h,e
	ld a,(bc)
	or c
	rlca
	ld h,h
	ld a,l
	cp c
	ld bc,0f691h
	cp a
	inc e
	ld sp,0e59ah
	add a,c
	ld e,03eh
	ld a,a
	call p,0c5ech
	call po,0c739h
	add a,d
	sbc a,l
	ld hl,03efch
	push hl
	sbc a,b
sub_6180h:
	sbc a,c
	add a,l
	and (hl)
	xor d
	push af
	ld c,h
	dec l
	ld (l6482h),a
	ret pe
	sub l
	add a,b
	ld d,b
	inc sp
	add a,d
	dec de
	ld e,h
	cp e
	nop
	ld a,a
	rst 20h
	add hl,bc
	ret nz
	ld (hl),e
	ld a,c
	rst 0
	ex af,af'
	add a,(hl)
	rst 38h
	or c
	ld a,a
	ex de,hl
	ex de,hl
	ld c,h
	ld a,c
	ld h,c
	push af
	ld (hl),c
	add hl,de
	rst 8
	ld a,a
	ret nz
	call z,0380eh
	ld c,h
	adc a,c
	ret z
	xor d
	ld h,a
	rst 28h
	rst 30h
	ld a,a
	jp p,09c75h
	add a,a
	ld (0c17fh),hl
	defb 0ddh,02fh,001h ;illegal sequence
	adc a,c
	sbc a,c
	add a,b
	ld a,(hl)
	ld c,a
	inc sp
	ld a,a
	add a,b
	add ix,sp
	dec de
	inc sp
	call z,07fc4h
	rst 30h
	exx
	add a,b
	add hl,de
	add a,b
	inc a
	ccf
	inc (hl)
	add a,h
	adc a,d
	adc a,l
	ld e,c
	rst 38h
	ld h,e
	ld bc,0ff25h
	push bc
	add hl,de
	ld h,l
	cp e
	ld c,081h
	dec e
	dec a
	inc hl
	ld a,a
	ld h,a
	pop ix
	xor 013h
	ld h,e
	call sub_5381h
	sbc a,c
	add a,b
	cp b
	cp e
	exx
	defb 0ddh,07bh,09dh ;illegal sequence
	add a,c
	ld de,0bbdah
	call p,0338ah
	and 03dh
	call 0e023h
	adc a,h
	ld l,0a7h
	rst 38h
	add a,h
	add hl,de
	sub l
	ld e,l
	ld d,l
	nop
	ld a,a
l6212h:
	rst 0
	add a,b
	rra
	ld a,a
	cp d
	ld b,(ix-037h)
	cp 066h
	call m,0efffh
	dec (hl)
	ld a,h
	add a,l
	ld l,0fah
	call c,05d5dh
	push af
	rst 38h
	ld l,h
	ld e,(hl)
	rst 38h
	ld e,e
	rst 38h
	jr z,$+19
	rst 38h
	rst 30h
	adc a,(hl)
	add a,b
	ld a,07fh
	rst 10h
	adc a,c
	inc de
	add a,d
	add a,h
	ret nc
	ld d,a
	ld (083dch),hl
l6240h:
	call z,0c824h
	ld c,h
	ld a,h
	inc d
	rst 30h
	call pe,0a980h
	inc h
	inc sp
	add a,h
	sbc a,e
	push de
	ld l,c
	pop hl
	inc a
	or c
	inc d
	rst 38h
	out (013h),a
	adc a,b
	rst 38h
	push af
	and l
	adc a,(hl)
	ei
	ld a,a
	ld a,l
	di
	rst 0
	xor (hl)
	sbc a,b
	ret m
	ld (0ff2ah),hl
	ld l,h
	sub h
	ld a,a
	jp (hl)
	sbc a,e
	ld e,l
	ld a,a
	out (024h),a
	ex de,hl
	inc sp
	ld e,a
	xor a
	ld a,a
	rst 18h
	adc a,h
	cp 097h
	pop af
	inc c
	xor h
	ex de,hl
	sub (hl)
	ld e,00ch
	ld l,l
	xor c
	ld a,a
	ex de,hl
	adc a,d
	ld a,c
	jp m,03362h
	inc h
	adc a,e
	ld l,c
	adc a,a
	rst 0
	ld hl,l7d60h
	rst 38h
	sub 024h
	dec h
	ld hl,0e2ffh
	ei
	ld a,a
	or 013h
	pop af
	ld a,h
	ld l,e
	rst 38h
	ld (hl),e
	add a,c
	ret po
	sub (hl)
	ex (sp),hl
	jr z,l6240h
l62a7h:
	ld h,l
	ld (0e25eh),a
	ld de,l434eh
	ld de,02304h
	inc hl
	add a,b
	ret
	add hl,sp
	rst 38h
	xor 00bh
	ld (l76ffh),a
	sbc a,(hl)
	rst 38h
	ld l,e
	rst 38h
	call pe,0897eh
	ld a,a
	rrca
	defb 0fdh,0f0h,044h ;illegal sequence
	exx
	jp p,l4932h
	scf
	ld hl,045e2h
	inc hl
	ld hl,00513h
	ld (de),a
	adc a,a
	ld (0087fh),hl
	sbc a,l
	cp c
	call po,0ff9dh
	pop hl
	ld de,0e900h
	or d
	ld l,c
	rst 38h
	ld e,0bfh
	nop
	add a,l
	ld a,a
	ex de,hl
	sub a
	adc a,h
	jr z,l6330h
	dec d
	rst 18h
	xor h
	call m,076b6h
	ld h,d
	and 029h
	add a,b
	ld (hl),h
	jp po,0ff7fh
	ld a,b
	or 0f5h
	inc hl
	ei
	jp z,034feh
	inc hl
	ld (0117fh),a
	ld a,a
	ld l,022h
	adc a,(hl)
	pop hl
	ld a,l
	ld a,a
	push hl
	add a,d
	adc a,0adh
	ld d,e
	ld a,a
	call p,0a367h
	rst 10h
	sub (hl)
	ld e,b
	defb 0fdh,099h,0f0h ;illegal sequence
	ld a,a
	adc a,c
	ret m
	ld b,e
	rst 20h
	xor 04fh
	add hl,hl
	ld a,a
	ld d,039h
	inc a
	rst 0
	add a,d
	ld a,000h
	inc de
	or e
l6330h:
	ld a,a
	ld a,a
	ld b,033h
	defb 0edh ;next byte illegal after ed
	ld a,a
	ld b,h
	call m,0e669h
	add a,a
	ld a,a
	sbc a,l
	sbc a,e
	ld h,a
	ld a,a
	ld l,e
	inc (hl)
	ret nz
	ld l,d
	adc a,c
	or e
	dec e
	cp b
	cp 0bfh
	ld a,a
	ld c,e
	add a,d
	cp 02ah
	nop
	add a,b
	jp nc,l6901h
	inc de
	ld h,d
	ld sp,0f513h
	sbc a,h
	ld h,e
	nop
	sub e
	rst 18h
	or 0fbh
	sbc a,b
	adc a,(hl)
	rst 38h
	ld a,b
	dec b
	adc a,l
	add a,d
	push de
	adc a,(hl)
	rst 20h
	nop
	ld a,a
	ret m
	adc a,d
	ld d,d
	add a,b
	rst 10h
	ld a,d
	ld c,d
	ld de,0ee13h
	rst 20h
	halt
	cp b
	jp m,0ebf0h
sub_637ch:
	sbc a,h
	sbc a,e
	ld (hl),a
l637fh:
	nop
	ld h,a
	jr nz,$-107
	ld a,a
	ret p
	call 04383h
	sbc a,l
	and 0e5h
	ld a,a
	ld de,03f0dh
	ld sp,0ac7fh
	sbc a,047h
	ld a,a
	scf
	ld l,d
	pop hl
	add hl,de
	and c
	add a,a
	ld b,c
	sbc a,05dh
	ld l,(hl)
	sub (hl)
	ld (hl),h
	nop
	inc hl
	defb 0ddh,004h,09ch ;illegal sequence
	add hl,sp
	inc c
	adc a,(hl)
	add a,c
	ld h,e
	sbc a,e
	xor a
	ld a,a
	jp nc,080afh
	dec h
	add a,h
	defb 0fdh,076h,039h ;illegal sequence
	adc a,(hl)
	xor 03bh
	and b
	add hl,sp
	defb 0fdh,069h ;ld iyl,c
	defb 0ddh,0bfh,0ffh ;illegal sequence
	ld h,e
	nop
	adc a,h
	push af
	pop hl
	inc de
	dec e
	or c
	add a,c
	call nz,0ad85h
	sub e
	ld (hl),e
	and (hl)
	ld (hl),a
	ld a,a
	ret p
	dec l
	inc sp
	ld a,a
	ld (hl),a
	add a,c
	xor 03ah
	ld e,e
	ld b,d
	rst 28h
	ld (hl),l
	sub e
	sbc a,b
	ld a,b
	add hl,de
	ld (hl),02bh
	sub e
	or 0a9h
	add a,e
	ld l,c
	ld c,b
	ld b,b
	sla d
	ld a,a
	or 0edh
	defb 0fdh,0c1h,038h ;illegal sequence
	di
	ld l,h
l63f4h:
	ld b,a
	ret c
	inc e
	ld h,l
	ld a,d
	add a,d
	ld l,a
	add hl,bc
	ld a,a
	and e
	sub d
	and d
	cp b
	adc a,(hl)
	add a,c
	or d
	ld e,0c0h
	ld a,(l7ffdh)
	cp (hl)
	and a
	ld (hl),c
	ld a,b
	ld b,d
	ld a,a
	ld a,b
	ld a,(hl)
	ld a,h
	ld a,a
	ld a,(de)
	jp m,08ac4h
	call pe,0b980h
l641ah:
	ld a,(hl)
	ld a,a
	sbc a,d
	sbc a,b
	rst 38h
	ld e,l
	ld h,a
	rst 0
	sbc a,h
	adc a,062h
	adc a,h
	cp c
	xor 013h
	rst 38h
	ld a,l
	adc a,a
	ld (de),a
	ld hl,l6ef2h
	adc a,(hl)
	or a
	ld a,a
	xor a
	jp po,07f67h
	push af
	defb 0edh ;next byte illegal after ed
	cp 06dh
	ret z
	xor h
	pop af
	pop af
	sbc a,090h
	jp p,0ff62h
	cp l
	add hl,sp
	jp m,l7fbfh
	ld d,a
	ld e,b
	ld e,d
	and h
	xor (hl)
	add a,h
	sub l
	ld d,l
	nop
	sub c
	rst 30h
	and b
	ld hl,(0ff00h)
	ccf
	ld de,l7d43h
	ret p
sub_645dh:
	ld d,a
	rst 20h
	ccf
	ld a,a
	inc c
	rst 38h
	ld (hl),e
	rst 38h
	dec a
	ld b,a
	rst 38h
	cp h
	xor (hl)
	di
	ld a,a
	ld sp,hl
	rrca
	adc a,b
	ld (de),a
	inc b
	add a,h
	add a,b
	or e
	ld a,l
	defb 0ddh,0eah,0b5h ;illegal sequence
	sbc a,e
	sbc a,03eh
	ld a,a
	dec a
	ld a,(hl)
	cp (hl)
	ld c,b
	ld a,a
	ld c,c
l6482h:
	xor c
	ex (sp),hl
	and e
	call m,00d77h
	ld a,a
	ex de,hl
	adc a,a
	rst 38h
	inc bc
	ld c,b
	ld b,d
	ld a,a
	cp c
	adc a,l
	ret p
	ld a,h
	inc hl
	ld a,a
	adc a,a
	ld (de),a
	ld a,a
	or a
	nop
	push de
	ld (0f97fh),hl
	dec d
sub_64a0h:
	rst 30h
	rst 0
	call po,sub_5bf9h
	and 082h
	ld b,d
	rst 38h
	sbc a,h
	ld d,c
	ld (0dbfdh),hl
	inc (hl)
	ld a,(hl)
	ret
	ld e,b
	ld a,a
	push af
	ccf
	ld (de),a
	ld a,a
	ld bc,00033h
	pop af
	dec h
	ld (09ac1h),a
	and 06bh
	adc a,h
	ld a,e
	or e
	nop
sub_64c5h:
	rst 38h
	adc a,l
	inc de
	ld c,a
	inc (hl)
	call m,0ff8ch
	ld a,l
	sub c
	add a,0d4h
	rst 38h
	ld a,(hl)
	inc (hl)
l64d4h:
	call m,sub_7e77h
	sub 03eh
	ex de,hl
	ld l,e
	ld c,c
	rst 38h
	dec a
	scf
	rst 38h
	cp h
	cp e
	ld (hl),d
	ld sp,hl
	ld a,a
	jp nc,0c522h
	defb 0ddh,0ffh,03eh ;illegal sequence
	ld e,094h
	ld (hl),c
	add a,b
	inc e
	call pe,0bd33h
	or l
	ld a,a
	ex de,hl
	sbc a,(hl)
	jp 0fa33h
	ld e,h
	sbc a,a
	inc sp
	ld a,a
	ld h,l
	call 04af8h
	xor a
	ld a,l
	ld a,a
	ld a,(hl)
	pop hl
	pop hl
	rst 8
l6509h:
	push bc
	adc a,l
	ret p
	ld b,e
	adc a,a
	rst 38h
	xor e
	ld a,a
	add a,0b9h
	ld a,b
	ld sp,hl
	ld a,a
	inc a
	ld (hl),a
	inc a
	ld a,l
	ld a,07fh
	rst 18h
	rst 0
	rst 28h
	add a,c
	or e
	adc a,(hl)
	ld a,(de)
	sub (hl)
	add a,c
	ld h,a
	rst 38h
	pop bc
	inc (hl)
	adc a,h
	adc a,(hl)
	inc e
	ld a,(bc)
	in a,(0abh)
	inc d
	or a
	rst 0
	ld a,a
	jp p,08353h
	or (hl)
	add a,b
	push hl
	ld a,a
	rst 0
	adc a,l
	cp b
	ld (hl),c
	sub h
	ld a,a
	ld c,e
	xor c
	ld a,(de)
	or (hl)
	sub d
	and e
	xor a
	jr c,l65c8h
	ret nz
l654ah:
	sub (hl)
	xor (hl)
	cp a
	ld a,a
	dec h
	jr z,l64d4h
	dec hl
	rst 38h
	adc a,(hl)
	inc d
	call pe,0ffcdh
	ld a,b
	or l
	jr l6509h
	sbc a,(hl)
	cp e
	rst 30h
	ld sp,hl
	ld a,a
	ld a,d
	ld d,l
	rst 18h
	jr nc,l65e5h
	xor l
	sub d
	jr nc,l654ah
	add hl,hl
	ld e,l
	ld e,b
	jp z,02d82h
	ld c,e
	jp p,03f8eh
	ld a,e
	ld a,a
	ld a,a
	push af
	dec sp
	ld hl,0f27fh
	ld c,e
	cp c
	dec sp
	cp (hl)
	ex (sp),hl
	ld a,a
	rst 30h
	rst 0
	rst 38h
	sub a
l6586h:
	ld a,a
	add a,h
	add a,e
	push af
	ld a,a
	push hl
	ex af,af'
	adc a,(hl)
	ld sp,09f7fh
	adc a,b
	ld a,a
	ld (hl),l
	xor l
	jr c,$-39
	sub 05dh
	rst 38h
	or 057h
	rst 38h
	xor (hl)
	sub l
	add hl,sp
	cp e
	ld b,e
	ld b,e
	adc a,07fh
	rra
	dec l
	rlca
	ld a,a
	ld h,a
	ld c,b
	or e
	inc de
	rst 38h
	jp 0c148h
	cp d
	defb 0fdh,07fh,0cfh ;illegal sequence
	dec d
	jr z,$+1
	ret p
	dec a
	add a,c
	ld de,0c898h
	ld c,b
	add a,d
	ld (hl),h
	ld (l4209h),hl
	ld e,a
	jr z,l65dbh
	or d
l65c8h:
	jp nc,09484h
	or a
	ld a,a
	adc a,c
	sbc a,077h
	ld a,c
	ld b,e
	ld a,h
	jp nc,0ff7bh
	ret m
	ld de,0e3ffh
	exx
l65dbh:
	inc l
	adc a,h
	ld e,b
	ld d,l
	add a,l
	ld h,c
	ld d,(hl)
	adc a,b
	in a,(0dbh)
l65e5h:
	jp (hl)
	ld b,a
	add a,d
	inc h
	jr nz,l665dh
	ld a,a
	ld c,b
	jp m,027bah
	ccf
	pop af
	sub h
	dec e
	ret m
	inc hl
	ld a,d
	ld e,d
	ld a,044h
	nop
	dec l
	rst 38h
	call m,03955h
	out (079h),a
	cp h
	ld (l550ah),hl
	add a,h
	adc a,l
	ret po
	ld c,b
	inc hl
	add a,h
	adc a,b
	rst 38h
	xor c
	and a
	ret p
	rst 18h
	dec de
	ld a,a
	sub a
	rst 8
	sbc a,h
	cp (hl)
	ld a,a
	or l
	ld (0f8ddh),hl
	rst 38h
	ld a,a
	inc d
	inc (hl)
	rst 8
	jr l667dh
	rra
	ld a,a
	xor a
	xor (hl)
	sbc a,h
	ld b,d
	inc d
	adc a,b
	add a,l
	add a,l
	rst 38h
	ld e,c
	jp (hl)
	nop
	ld d,l
	ld b,0c9h
	ld b,e
	ld (0db47h),a
	jr c,l66b9h
	add a,d
	ld (hl),066h
	nop
	ld c,a
	inc (hl)
	rst 38h
	inc l
l6643h:
	add a,h
	and (hl)
	ld h,e
	ld a,a
	push hl
	ld a,(hl)
	ld (02e7fh),a
	xor d
	cp c
	ld a,b
	inc d
	rst 0
	add a,h
	dec a
	ld a,a
	ld de,02132h
	and c
	exx
	inc hl
	jr c,$+129
	and l
l665dh:
	dec a
	defb 0ddh,000h,0ffh ;illegal sequence
	dec a
	add hl,sp
	add a,e
	and a
	adc a,d
	rst 38h
sub_6667h:
	ret m
	sub a
	inc h
	ld a,a
	jp 00035h
	cp a
	ld a,a
	adc a,a
	rst 38h
	dec de
	nop
	ret p
	jp nz,01b46h
	ld de,000bbh
	inc a
	or c
l667dh:
	cp e
	adc a,a
	push de
	sbc a,(hl)
	ld sp,02b82h
	inc c
	cpl
	ld a,a
	ret
	add a,d
	ld de,l591bh
	ld d,0ffh
	ex de,hl
	or h
	and 000h
	dec (hl)
	inc de
	jp nz,l7fbfh
	pop hl
	dec sp
	nop
	ret m
	ld a,a
	ex (sp),hl
	sbc a,b
	dec a
	rst 38h
	jp po,0126bh
	add a,h
	ld a,l
	ret
	call nz,0feffh
	ccf
	nop
	set 7,a
	rra
	sbc a,e
	nop
	jp z,0b492h
	ld (hl),083h
	ld a,(08692h)
	rst 38h
l66b9h:
	cp a
	ld e,0ffh
	inc a
	daa
	rst 38h
	or 0bch
	ld a,a
	and e
	add a,c
	ld a,a
	ld a,a
	ld (bc),a
	rst 38h
	defb 0fdh,0ebh,0ffh ;illegal sequence
	rst 30h
	rst 18h
	inc sp
	pop af
	push bc
	ei
	jr c,l6752h
	call nz,0ff19h
	ret m
	sbc a,018h
	ld l,a
	ld (02b21h),hl
l66ddh:
	rst 38h
	call m,0ffcah
	ld h,l
	ld (de),a
	or e
	ld l,01bh
	ld c,0ffh
	cp a
	adc a,l
	rst 38h
	xor (hl)
	cp 0edh
	call nz,0a6cbh
	rst 38h
	cp (hl)
	ld h,a
	ld (hl),l
l66f5h:
	ld e,(hl)
	ld a,a
	rla
	rst 38h
	rst 30h
	rst 30h
	rst 38h
	sub b
	adc a,c
l66feh:
	sub l
l66ffh:
	add a,l
	jp p,l777fh
	add a,h
	cp l
	ld a,a
	ld a,a
	sbc a,e
	rst 38h
	ld e,0b8h
	rst 38h
	ret m
	add hl,hl
	sub e
	rst 38h
	pop af
	ld (hl),a
	adc a,c
	ld d,0ffh
	exx
	sub l
	ld a,027h
	ld c,c
	sub d
	rst 38h
	ld a,(hl)
	ld h,a
	ld a,a
	and (hl)
l6720h:
	rst 38h
	ld a,(hl)
	dec d
	ld e,l
	nop
	jp c,0ff29h
l6728h:
	jr c,l6728h
	out (0a7h),a
	nop
	ld b,e
	add a,0b6h
	ld b,c
	cp b
	ld b,a
	ld a,(hl)
l6734h:
	sbc a,c
	ld b,018h
	rla
	ld (hl),h
	or h
	rla
	add a,h
	or b
	ld c,b
sub_673eh:
	jp pe,0ff2bh
	sbc a,(hl)
	ld d,(hl)
	ld (de),a
	push de
	dec (hl)
	rst 38h
	rst 8
	ld (hl),d
	sub c
	rst 38h
	call m,0191eh
	ld a,a
	ld c,084h
	cp h
l6752h:
	jp p,07fe1h
	ld de,08e08h
	ld sp,l637fh
	add a,b
	adc a,(hl)
	sub e
	and 0c2h
	sbc a,(hl)
	dec hl
	rst 38h
	ld (hl),b
	ret p
	ld a,e
	rst 28h
	rst 38h
	cp (hl)
	rst 38h
	inc a
	ret m
	ld d,09eh
	rst 30h
	dec (hl)
	cp h
	sbc a,h
	pop bc
	ex (sp),hl
	ld a,a
	adc a,(hl)
	nop
	ld a,b
	ld a,a
	adc a,(hl)
	add a,b
	ld a,h
	nop
	jp (hl)
	rst 38h
	jp po,01347h
	ret nz
	adc a,h
	jp nz,07fa7h
	ex (sp),hl
	ld e,e
	pop de
	ccf
	cp h
	call nc,078c0h
	ld a,h
	ld a,a
	rrca
l6792h:
	ld b,h
	ld a,a
	or d
	rst 38h
	ld e,c
	ld (hl),a
	inc hl
	ld a,d
	ret c
	ld a,l
	out (0ffh),a
	pop hl
	sub 0f9h
	ld (hl),c
	ld h,b
	in a,(02bh)
	cp h
	ld a,038h
	jp pe,0a1c6h
	or l
	add hl,de
	ld b,a
	add a,b
	ld d,e
	rst 38h
	jp 07f38h
	pop af
	sub (hl)
	ld c,b
	rst 38h
	ret m
	pop de
	defb 0fdh,0d7h,0b5h ;illegal sequence
	scf
	cp l
	ld e,e
	ld b,h
	cp b
	cp 0e1h
	ld a,(bc)
	call z,0f582h
	rst 38h
	ccf
	dec sp
	ld b,h
	ld (hl),h
	add a,a
	inc (hl)
	ld d,l
	add a,h
	jp 02c56h
	rst 38h
	ld a,02ch
	ei
	ret p
	ld b,e
	or 0b7h
	xor l
	cp a
	adc a,(hl)
	ld a,a
	ld e,(hl)
	ld c,c
	ld hl,0891ah
	push de
	add a,e
l67e7h:
	dec (hl)
	ld a,a
	rst 30h
	res 0,b
	add hl,de
	ld d,e
	ld a,a
	or 0dfh
	ret pe
	adc a,h
	jp m,0b7b7h
	cp 02fh
	ld (de),a
	ld a,a
	ld h,(hl)
	sub e
	add hl,de
	ld b,a
	add a,b
sub_67ffh:
	sub a
	ld a,a
l6801h:
	ret
	cp 01eh
	adc a,e
	ld b,e
	dec a
	jr z,l6882h
	rst 38h
	pop af
	ld a,h
	nop
	inc hl
	rst 38h
	push bc
	inc hl
	ld a,a
	ret p
	and a
	ld (0aa82h),hl
	rst 38h
	ld a,d
	ld sp,l53efh
	ld (029d5h),hl
	ld b,d
	xor a
	add a,h
	inc h
	ld a,0dfh
	dec a
	ret m
	adc a,a
	rst 38h
	pop af
	ld de,0b333h
	call nc,sub_7880h
	rst 10h
	rst 38h
l6832h:
	ret nz
	inc de
	cp (hl)
	sub h
	ex (sp),hl
	rst 18h
	ld a,(hl)
	ld a,a
	jp pe,0e7bfh
	ld a,a
	scf
	xor c
	inc hl
	rst 38h
	pop af
	inc h
	xor h
	adc a,l
	or c
	xor a
	cp 048h
	ex de,hl
	push hl
	ld b,d
	ret nc
	xor h
	ld (hl),e
	inc b
	ret nc
	ld i,a
	add a,b
	inc de
	add a,d
	in a,(058h)
	ld e,d
	pop de
	ld b,e
	ld sp,hl
	sbc a,c
	ld a,a
	cpl
	sub e
	cp a
	and h
	ld (01529h),hl
	daa
	ld d,l
	ld d,l
	rst 38h
	pop af
	ccf
	and 0aah
	add a,h
	ld (hl),e
	sub (hl)
	jp pe,00e78h
	rst 38h
	push de
	jr l6801h
	rst 10h
	inc hl
	jr l6895h
	rst 38h
	di
	ld e,d
	pop de
	rla
	ld (de),a
l6882h:
	sub h
	cp a
	sub 07fh
	sub l
	cp e
	cp e
	rst 38h
	ret m
	ld l,(hl)
	sub h
	ld a,(hl)
	ld h,e
	add a,b
	adc a,(hl)
	ld (hl),d
	ld l,a
	pop bc
	xor (hl)
l6895h:
	ex af,af'
	ld a,h
	ld a,a
	ld h,e
	add a,c
	adc a,b
	add a,b
	pop hl
	ld c,b
	rst 38h
	ld e,a
	dec (hl)
	or b
	dec h
	xor c
	inc e
	ld h,0e2h
	ld a,a
	ld b,l
	rst 38h
	ld a,0c4h
	add a,h
	cp 07bh
	ld a,(hl)
	ld a,a
	ld e,098h
	inc sp
	ld a,a
	di
	ld (hl),033h
	dec a
	add a,d
	ld (hl),0b7h
	ld l,(hl)
	add a,e
	exx
	ld b,c
	ld b,c
	rst 38h
	ccf
	ld h,d
	add a,e
	push af
	cp l
	inc hl
	add a,c
	rst 18h
	ld a,l
	cp a
	ld a,a
	adc a,a
	inc e
	daa
	rst 38h
	ex (sp),hl
	sbc a,h
	ret m
	ld a,d
	inc sp
	ld a,a
	jr z,l68fah
	ld l,0ffh
	call m,sub_4437h
	ld a,a
	adc a,h
	add a,c
	ld (hl),e
	add a,l
	inc e
	rst 30h
	ld de,0fed5h
	ld (hl),d
	rst 38h
	rst 8
	ld a,a
	add a,l
	rst 38h
	ld a,h
	ld a,(bc)
	ld (0e69fh),a
	add a,e
	dec (hl)
	inc sp
	inc c
	ld d,c
	rst 38h
	rst 38h
l68fah:
	ld e,a
	ld h,a
	nop
l68fdh:
	add a,(hl)
	and 0f8h
	rst 28h
l6901h:
	jp pe,09311h
	rst 10h
	sub a
	rst 28h
	push de
	cp c
	ld b,a
	call m,09935h
	defb 0ddh,0c0h,075h ;illegal sequence
	ld e,d
	jp (hl)
	ret m
	jr c,$+52
	sub (hl)
	adc a,038h
	ld hl,00fa3h
	or d
	daa
	rst 38h
	ex de,hl
	cp (hl)
	jp p,033cbh
	jr c,$-24
	pop af
	xor (hl)
	jp po,00038h
	or 07fh
	add a,0ffh
	ld a,(de)
	ld (0eb83h),hl
	ret nz
	ld (0fe24h),hl
	cp l
	jp nc,09f42h
	or (hl)
	ld a,a
	ld h,026h
	inc (hl)
	ld c,0f2h
	res 4,a
	ld a,a
	di
	xor (hl)
	ld (0f6ffh),hl
	call nc,0e4b0h
	xor b
	ld c,l
	ld hl,025adh
	jp nz,080cfh
	ld (l7effh),a
	cp 07fh
	cpl
	sub b
	call nz,sub_4194h
	xor 07fh
	rst 38h
	ld a,l
	or e
	rst 38h
	adc a,a
	exx
	ld (hl),b
	ld a,e
	ld c,c
	cp d
	daa
	ld b,d
	ld de,0d87fh
	adc a,l
	dec l
	ret z
	adc a,b
	rst 38h
	ret p
	dec de
	ld b,e
	ld a,a
	adc a,c
	ld e,(hl)
	inc (hl)
	ld e,c
	adc a,b
	or (hl)
	inc d
	xor a
	rst 38h
	ld e,l
	rst 8
	or l
	xor d
	xor d
	defb 0ddh,063h ;ld ixh,e
	cp c
	jp m,0e099h
	sbc a,c
	nop
	jp m,0ff14h
	call po,0b683h
	jp m,0288eh
	add a,e
	add a,c
	jp p,0f2e7h
	ld c,063h
	cp e
	pop de
	and d
	inc (hl)
	ld b,e
	ld sp,hl
	add hl,sp
	push de
	ld a,l
	sub e
	or (hl)
	rst 30h
	ld a,a
	ei
	sbc a,000h
	dec d
	ld e,e
	add a,c
	rst 30h
	ex de,hl
	inc e
	daa
	add hl,sp
	ret p
	adc a,l
	ld l,(hl)
	ld b,a
	ld c,c
	adc a,b
	add a,d
	add hl,sp
	adc a,(hl)
	ld a,(018d7h)
	inc sp
	ld a,a
	ret p
	jp (hl)
	add a,h
	add a,b
	jp pe,l7cebh
	ld a,a
	ld a,a
	xor l
	adc a,(hl)
	add a,b
	dec (hl)
	add a,b
	xor (hl)
	ld (ix-031h),c
	adc a,e
	dec hl
	ld a,a
	ld bc,l7938h
	sub (hl)
	ei
	add hl,hl
l69dfh:
	ex (sp),hl
	ld (hl),l
	xor h
	push bc
	inc hl
	ld a,a
	ei
	pop hl
l69e7h:
	sbc a,h
	sbc a,b
	adc a,h
sub_69eah:
	add a,h
	add a,b
	inc l
	call 02153h
	in a,(070h)
	rst 8
	adc a,c
	inc h
	inc hl
	adc a,c
	sbc a,l
	ld a,a
	res 2,e
	ld e,01dh
	or a
	inc l
	ld a,a
	xor 083h
	add a,e
	call z,sub_4c38h
	sbc a,h
	ld e,h
	jr c,l6a5fh
	sbc a,0dbh
	ld d,c
	inc hl
	sbc a,0cch
	add a,d
	and l
	add a,h
	or e
	ld a,a
	ex (sp),hl
	ret p
	inc l
	ld h,(hl)
	ld a,(de)
	xor c
	jr c,l69e7h
	add a,b
	rst 0
	rst 38h
	xor 086h
	add ix,sp
	inc sp
	call z,0235ch
	ld b,e
	cp 0aeh
	ld a,a
	ld a,c
	add a,d
	adc a,(hl)
	rld
	ld a,a
	adc a,(hl)
	ld (hl),037h
	and d
	adc a,a
	ld a,h
	inc e
	xor d
	rst 20h
	ld a,a
	call p,0fde7h
	ret z
	cp e
	exx
	inc e
	defb 0ddh,09dh ;sbc a,ixl
	sbc a,l
	ld a,a
	rst 20h
	jp m,0fe51h
	add a,0ffh
	out (06ch),a
	ld de,0f07fh
	sbc a,a
	ld de,09fe3h
	ld a,a
	cp b
	defb 0ddh,013h,0c9h ;illegal sequence
	call z,080cch
	sub l
l6a5fh:
	defb 0fdh,091h,0feh ;illegal sequence
	and 023h
	adc a,a
	cp 01ah
	rst 38h
	ld b,l
	add hl,sp
	ld bc,0b521h
	ex de,hl
	cp e
	sbc a,h
	rst 10h
	dec de
	ld e,h
	ld c,03fh
	inc sp
	ld a,a
	ld l,(hl)
	rst 38h
	ld h,h
	ret z
	rst 38h
	ex (sp),hl
	add a,h
	jp pe,05cb7h
	and h
	ld b,h
	cp 06ah
	ld b,h
	cp 03bh
	out (081h),a
	ld a,a
	cp b
	sub c
	rst 28h
	adc a,(hl)
	sbc a,b
	ld (hl),e
	sub c
	xor e
	sbc a,h
	cp 07eh
	defb 0ddh,0ffh,062h ;illegal sequence
	sbc a,h
	ld (bc),a
	ld d,l
	add a,h
	ld e,(hl)
	defb 0fdh,0dch,0f9h ;illegal sequence
	ld d,c
	cp 08eh
	inc h
	ld l,h
	di
l6aa7h:
	ld a,(hl)
	ld a,a
	dec d
	add hl,hl
	ld bc,031ffh
	ld a,a
	ret
	sub l
	ld d,l
	nop
	ld a,b
	ld a,a
	rst 20h
	ld (0ee7fh),a
	ld (hl),b
	nop
	adc a,c
	ld (hl),e
	call z,0cc7fh
	jr l6af6h
	ret
	add hl,bc
	ld a,(hl)
	inc sp
	cp 01ch
	rst 28h
	rst 38h
	dec c
	add hl,sp
	ld a,a
	ld (hl),d
	sub e
	call p,sub_41a3h
	rst 38h
	jp po,l7ffeh
	ld (de),a
	add a,l
	adc a,(hl)
	ld a,a
	ld h,e
	cp 024h
	ld a,a
	inc (hl)
	add a,e
	ld h,l
	adc a,l
	ld (l7f14h),a
	sub h
	ld a,a
	inc hl
	nop
	rst 38h
	rst 38h
	nop
	nop
	ld h,b
	nop
	nop
	ld a,(hl)
	nop
	nop
	di
	sbc a,c
	nop
l6af6h:
	rst 20h
	ld (hl),e
	add hl,bc
	ld b,025h
	sla d
	nop
	ld a,02fh
	ld e,a
	ld a,a
	and 05eh
	nop
	ld e,a
	inc h
	ld (bc),a
	add hl,hl
	ex af,af'
	dec hl
	ld a,a
	or d
	ld a,a
	ld e,e
	add hl,de
	rst 10h
	ld a,(hl)
	ld (hl),c
	rst 38h
	inc e
	cp e
	jr nz,l6b47h
	inc a
	add hl,bc
	inc h
	rst 18h
	sub b
	ld a,a
	call z,0901ch
	nop
	ld l,b
	xor 023h
	ld a,(hl)
	ld b,(hl)
	add a,b
	ld c,e
	add a,b
	ld a,07fh
	rst 8
	sub b
	ld a,a
	push hl
	rst 28h
	add hl,de
	ld a,a
	nop
	ld (bc),a
	sbc a,c
	sub a
	ld (hl),a
	adc a,l
	add a,b
	sub (hl)
	add a,b
	dec a
	dec h
	cp a
	ld a,a
	sub a
	ret
	ld d,a
	rst 38h
	ld (hl),b
	adc a,b
	adc a,b
l6b47h:
	ld a,e
	cp e
	ld c,c
	ld a,c
	add hl,bc
	sub d
	add a,b
	ld h,d
	sbc a,b
	cp h
	jr c,l6b78h
	cp a
	dec bc
	ld a,a
	sub l
	ret p
	ld a,(hl)
	ret nc
	ld e,a
	add hl,hl
	sub a
	cp e
	cp e
	ld h,e
	or a
	ld a,(bc)
	daa
	ld a,a
	sbc a,c
	and h
	ld (hl),l
	cp 07fh
	ld e,b
	add hl,bc
	sub b
	ret p
	ld h,d
	sub h
	cp 0e4h
	ld a,a
	sub d
	ld a,e
	sbc a,h
	add a,b
	cp a
	sbc a,c
l6b78h:
	dec e
	dec h
	sub a
	rst 38h
	push hl
	jp (hl)
	ld d,0feh
	jp pe,09887h
	jp pe,0827fh
	xor 07fh
	ld a,h
	inc sp
	ld de,0ff90h
	call m,0febch
	ld h,h
	call po,08777h
	ld e,h
	ld c,a
	rst 38h
	ld (de),a
	add a,b
	adc a,a
	ld (hl),b
	cpl
	ld c,h
	ld a,h
	sbc a,a
	rst 38h
	push hl
	and l
	ret c
	daa
	jp po,004c7h
	dec hl
	rst 38h
	adc a,h
	ld a,a
	adc a,(hl)
	rst 38h
	ld a,h
	add hl,de
	rra
	sub b
	ld a,a
	set 2,e
	ld d,a
	ex (sp),hl
	pop hl
	cp 039h
	nop
	pop hl
	ld a,a
	jp (hl)
	ei
	ld hl,(0cf90h)
	rst 38h
	add a,03fh
	ld b,h
	ld b,b
	ld a,a
	ccf
	ld a,(bc)
	ex (sp),hl
	cp e
	nop
	ld a,a
	call 03a13h
	rst 18h
	dec c
	ld a,(hl)
	jp 0041fh
	ld b,(hl)
	ld h,(hl)
	ld a,a
	sbc a,l
	ld a,(bc)
	push hl
	call m,02291h
	add hl,hl
	inc c
	rst 18h
	add a,e
	ld h,l
	jp m,03fbah
	add hl,bc
	ld a,a
	inc d
	ld b,(hl)
	ld h,a
l6bech:
	ld (060bbh),hl
	dec b
	ld b,l
	ld d,(hl)
	add a,l
	ld a,03bh
	ld sp,iy
	ld a,l
	ld a,a
	ld h,a
	add a,b
	rst 0
	ld a,a
	res 3,c
	jr c,l6c7fh
	nop
	ld a,a
	ld a,(08370h)
	ld h,d
	ld d,(hl)
	ld d,a
	add a,l
	scf
	ld a,a
	pop af
	ld e,a
	add hl,bc
	ld a,a
	ld a,l
	rst 30h
	di
	rst 38h
	rra
	adc a,c
	call m,0fe34h
	add a,h
	ld (hl),a
	ld h,h
	cp 048h
	ld h,(hl)
	add a,l
	sbc a,a
	or (hl)
	ld a,a
	adc a,e
	ei
	cp l
	rst 8
	jp pe,09227h
	add hl,hl
	ld a,a
	push bc
	ret m
	adc a,e
	adc a,b
	sbc a,h
	ld a,(hl)
	ld a,(hl)
	ex af,af'
	ld d,(hl)
	ld h,h
	sub h
	add hl,bc
	ld h,(hl)
	ld h,(hl)
	ld b,(hl)
	ld h,h
	ld (l7e85h),iy
	halt
	ld a,a
	ld h,05ah
	inc hl
	sub b
	add a,b
	jp nz,0adfeh
	ld a,a
	ld a,h
	add hl,hl
	ld a,a
	add hl,de
	jr nz,l6c74h
	push bc
	ei
	ld a,000h
	ld d,(hl)
	ld h,a
	or (hl)
	ld b,c
	ld b,h
	nop
	ld h,(hl)
	ld e,c
	ld b,h
	ld d,l
	add a,b
	ld de,l6066h
	ld a,a
	ret m
	ld a,0d2h
	rst 0
	ld c,08dh
	cp 0b2h
	add hl,hl
	rst 20h
	sub (hl)
	ld h,l
	sub b
	and b
	ret m
	ld a,(hl)
l6c74h:
	ld a,a
	add hl,bc
	ld (hl),a
	ld d,l
	add a,b
	ld hl,l5655h
	ld a,(hl)
	rra
	ld h,l
l6c7fh:
	ld d,l
	ld a,a
	sub b
	sbc a,c
	rst 30h
	ld a,a
	ld b,h
	ld (022fah),hl
	rst 8
	adc a,l
	dec c
	ret m
	ld h,a
	ld a,a
	pop af
	xor d
	push af
	ld b,b
	ld h,l
	ld a,h
	ld b,(hl)
	ld a,e
	ld d,h
	ld b,l
	ld b,(hl)
	rlca
	cp e
	ld d,h
	ld d,l
	ld b,(hl)
	ld h,l
	ld a,a
	rst 18h
	ld sp,hl
	ld hl,(0f890h)
	ld a,a
	ld c,e
	ld hl,(00022h)
	ld a,a
	defb 0cbh,037h ;sli a
	jp z,l7ef5h
	ld (hl),a
	ld d,b
	ld a,a
	adc a,c
	ld h,(hl)
	ld d,l
	add a,e
	ld (08169h),a
	add a,d
	ld (hl),a
	ld b,l
	add a,l
	inc sp
	ld a,a
	defb 0edh ;next byte illegal after ed
l6cc2h:
	call nc,08bf7h
	add a,b
	call nc,00927h
	ld a,a
	ret nz
	sub d
	ld sp,0a2aah
	add a,l
	adc a,a
	ld a,a
	rlca
	sbc a,c
	ld a,a
	call z,0c305h
	inc bc
	ld d,l
	ld d,b
	cp (hl)
	adc a,d
	ld (hl),l
	call m,0a858h
	ei
	inc b
	ld d,l
	ld c,(hl)
	ld d,h
	cp 094h
	sub h
	ld h,l
	rst 38h
	ld b,l
	add a,l
	ld a,(bc)
	rra
	ld b,l
	ld d,b
	ld a,a
	ccf
	jp p,0fcb5h
	ld e,09eh
	ld a,a
	ld (08f80h),a
	and d
	ld a,a
	dec hl
	sbc a,a
	jp p,0ed9fh
	ld d,h
	ld b,l
	ld a,h
	dec b
	ld d,b
	ld h,(hl)
	call pe,0a295h
	inc bc
	add a,b
	and h
	dec de
	dec c
	ld d,h
	call p,l4488h
	ld (hl),a
	ld (hl),l
	ld c,c
	ld c,l
	sbc a,c
	rst 38h
	rlca
	inc hl
	ld h,(hl)
	inc c
	ld d,(hl)
	ld d,h
	adc a,d
	ld a,l
	xor l
	rst 20h
	jp nz,l7300h
	sub b
	ld e,d
	add a,c
	ld e,0bbh
	cp 0d4h
	ld a,l
	xor d
	adc a,a
	rst 38h
	inc e
	sbc a,a
	ld (hl),h
	sub a
	call p,sub_4630h
	ld b,l
	ld h,a
	ld h,(hl)
	dec hl
	ld d,b
	ld d,(hl)
	rst 20h
	ld d,045h
	ex de,hl
	adc a,d
	ld d,(hl)
	ld (hl),h
	ld l,(hl)
	adc a,e
	add a,(hl)
	halt
	dec b
	ld h,a
	ld a,e
	ld h,l
	add a,c
	ld d,c
	add a,h
	ld a,(de)
	sub h
	ld b,h
	ld d,054h
	dec a
	ld h,h
	ld b,h
	ld a,a
	call c,sub_7400h
	ld b,a
	cp 072h
	add a,b
	ex de,hl
	cp 0cdh
	rst 0
	cp 01fh
	ld a,a
	ld l,d
	ld b,h
	call pe,sub_5b20h
	ld (hl),a
	ld h,(hl)
	ld h,h
	add a,b
	ld a,l
	ld l,e
	or a
	ld d,h
	ld h,a
	ld (hl),a
	cp e
	sub c
	ld (hl),a
	sbc a,c
	adc a,d
	xor e
	ld d,h
	ret m
	ex (sp),hl
	defb 0fdh,010h,0b7h ;illegal sequence
	ld c,c
	ld b,(hl)
	sub l
	adc a,d
	inc b
	ld (hl),a
l6d8ah:
	or l
	ld b,l
	ld b,l
	add a,b
	ld a,c
	pop af
	ld (hl),d
	di
	ld (hl),0c9h
	xor (hl)
	ld d,h
	rst 0
	add a,h
	ld e,07fh
	call 09922h
	rst 30h
	and h
	and d
	ret m
	ld a,a
	ret p
	ex (sp),hl
	inc h
	ld h,h
	cp e
	ld a,a
	ld h,l
	xor 063h
	or a
	defb 0edh ;next byte illegal after ed
	ex af,af'
	ld a,a
	ld h,l
	ld h,h
	ld l,l
	ld e,c
	ld a,a
	ret m
	push hl
	ld b,0fdh
	adc a,d
	ld h,a
	ld (l4559h),a
	ld c,017h
	ld e,(hl)
	ld b,(hl)
	daa
	ld a,a
	adc a,a
	add hl,bc
	rst 0
	jp po,0c752h
	di
	rra
	ld a,a
	ld e,e
	ld sp,hl
	inc sp
	add a,b
	rst 0
	ld a,a
	and a
	nop
	ld a,a
	ret z
	ld b,a
	ld (l4565h),hl
	ret pe
	call nz,l777fh
	nop
	ld h,h
	ld b,l
	ld b,(hl)
	ret pe
	add a,h
	inc sp
	ld d,h
	jp p,l7d17h
	rla
	ld d,l
	ei
l6dech:
	ld c,e
	adc a,c
	ex af,af'
	sub h
	add a,l
	call nc,09077h
	adc a,a
	ld (hl),h
	ld a,a
	dec (hl)
	sub b
	call z,0c8efh
	rst 28h
	ld d,b
l6dfeh:
	add a,a
	ld a,a
	pop bc
	add a,b
	dec hl
	add a,h
	inc l
	push af
	ld a,c
	ld a,a
	ret p
	xor l
	inc b
	ld h,e
	and 0c6h
	ld b,l
	ld l,a
	pop af
	ld a,a
	ld a,c
	and (hl)
	ld h,a
	ld d,l
	rrca
	ld h,h
	ld a,c
	sub c
	ld e,b
	add a,d
	ld h,h
	rrca
	dec c
	ld h,l
	ret c
	rra
	add a,(hl)
	and h
	adc a,l
	ld h,a
	ld d,h
	dec l
	ld a,a
	ld l,c
	add hl,bc
	add a,d
	in a,(0f2h)
	ld c,b
	defb 0fdh,0eah,087h ;illegal sequence
	ld a,d
	rst 18h
	rst 38h
	ld (de),a
	add hl,hl
	sub d
	jp m,0e3d9h
	inc bc
	ld a,a
	rst 20h
	ld d,d
	dec b
	ret c
	exx
	ex (sp),hl
	ex (sp),hl
	xor c
	rst 28h
	ld c,d
	ld (hl),a
	sub c
	inc c
	ld h,l
	add a,b
	xor c
	ld (hl),l
	ei
	jp z,0fa07h
	ld (hl),b
	halt
	halt
	or c
	adc a,b
	ld c,c
	adc a,c
	add a,(hl)
	add a,c
	ld (de),a
	add a,b
	sub (hl)
	add a,a
	sub c
	adc a,c
	ld c,c
	add a,l
	adc a,c
	sbc a,l
	push af
	ld c,e
	ld (hl),e
	in a,(090h)
	sub b
	ld a,00dh
	ld a,a
	sbc a,082h
	and h
	adc a,c
	ld sp,hl
	ld a,a
	out (056h),a
	jp p,05149h
	ld c,c
	ld l,e
	ld d,l
	ld e,l
	ld h,l
	ex (sp),hl
	add a,c
	ld hl,(0dd66h)
	xor 0a4h
	push af
	ld a,c
	ld c,c
	rrca
	add a,08ah
	ld d,d
	inc hl
	rlca
	ld d,(hl)
	sbc a,l
	sub b
	ld a,e
	or (hl)
	add a,088h
	xor c
	ret p
	ret po
	rst 30h
	ld a,a
	xor (hl)
	ld a,h
	ei
	push bc
	add a,c
	sbc a,l
	add a,e
	ld b,a
	xor c
	sbc a,(hl)
	ld l,a
	add hl,bc
	ld a,a
	adc a,d
l6ea8h:
	rst 28h
	jp nz,0b746h
	call c,09544h
	add a,d
	ld h,h
	push hl
	ld h,l
	call po,0eb91h
	sub d
	rst 28h
	ld e,(hl)
	inc c
	rrca
	jp p,l7b7eh
	sbc a,l
	rst 30h
	ld a,a
	jp p,09243h
	defb 0ddh,0c9h,0a9h ;illegal sequence
	defb 0fdh,0bah,009h ;illegal sequence
	ld hl,(000a9h)
	ret nc
	and (hl)
	ld (hl),a
	jp pe,0e17fh
	inc sp
	jp c,09604h
	inc b
	ld d,h
	sbc a,h
	push hl
	and l
sub_6edch:
	ld (hl),b
	push hl
	add hl,hl
	rlca
	adc a,e
	call nz,0f554h
	ld e,h
	rrca
	or c
	ld h,l
	rlca
	ld d,a
	rrca
	pop bc
	ld h,l
	ld b,(hl)
	and d
	add a,l
	rrca
	sbc a,l
l6ef2h:
	ld e,c
	add a,a
	sbc a,(hl)
	rst 18h
	nop
	ld b,c
	dec c
	defb 0ddh,080h,016h ;illegal sequence
	ld a,h
	and d
	add hl,hl
	cp 009h
	ld hl,(00c29h)
	ld (hl),b
	and a
	rst 30h
	or (hl)
	jp m,l6792h
	ld e,h
	ld d,a
	ei
	ld hl,(l4adch)
	rst 28h
	inc de
	ld h,a
	adc a,b
	ld b,l
	call pe,sub_6667h
	ex de,hl
	ld l,(hl)
	ld a,b
	rrca
	inc a
	ld d,l
	rrca
	xor d
	rlca
	adc a,b
	rst 10h
	ld (hl),l
	adc a,d
	call m,0009fh
	inc l
	jp pe,0cd86h
	ld a,h
	add a,d
	ld (hl),l
	add a,d
	and c
	dec c
	ld (hl),b
	halt
	ex (sp),hl
	rst 38h
	ld c,(hl)
	or l
	ld d,l
	rst 18h
	call nc,08ad9h
	ld d,(hl)
	jp po,044d5h
	adc a,c
	sbc a,b
	ld l,h
	ld d,a
	xor l
	adc a,c
	sub e
	jp p,02e70h
	sub (hl)
	pop af
	rrca
	cp h
	adc a,e
	ld hl,(09544h)
	adc a,(hl)
	sbc a,a
	inc d
	ld d,b
	ld a,a
	sub b
	sbc a,h
	ld c,d
	rst 10h
	add a,b
	jp nc,l68fdh
	add a,d
	rst 0
	sub (hl)
	rst 38h
	and l
	add a,b
l6f67h:
	rst 0
	ret m
	add hl,sp
	ld l,c
	inc b
	ld h,b
	ld b,l
	sbc a,c
	ld d,(hl)
	adc a,b
	ld b,(hl)
	ld (bc),a
	sub (hl)
	ld b,h
	and (hl)
	ld l,a
	adc a,l
	or e
	dec bc
	ld sp,hl
	ld e,b
	ld h,l
	rrca
	sub l
	ld a,b
	ld l,e
	rrca
	rst 18h
	and b
	ld (bc),a
	ld d,h
	ld d,a
	ld h,l
	add a,l
	ld h,040h
	add a,(hl)
	cp d
	ld a,l
	ld a,a
	ld h,d
	sbc a,c
	defb 0ddh,0b9h,0feh ;illegal sequence
	ld a,c
	ld e,0a2h
	sub d
	rst 10h
	ld a,a
	inc de
	rst 38h
	call po,0bc06h
	jp pe,l60d3h
	ld l,c
	sbc a,c
	ret po
	ld c,e
	xor 0cah
	jp pe,l641ah
	jp (hl)
	and (hl)
	ld h,l
	ld l,e
	jp (hl)
	sub (hl)
	ld c,073h
	ld h,l
	adc a,e
	sub l
	sbc a,c
	adc a,c
	add hl,de
	sub e
	ld c,c
	rrca
	or h
	ld hl,08b84h
	sub l
	cpl
	adc a,h
	ld b,h
	ld d,(hl)
	add a,d
	cp 02ah
	inc c
	ld h,e
	dec h
	call 0fedbh
	adc a,c
	cp 08bh
	sbc a,h
	ld a,l
	ld sp,hl
	ld (hl),c
	add a,0afh
	ret p
	jp m,0d592h
	rst 10h
	jr c,l6f67h
	ld h,b
	sbc a,c
	sub (hl)
	rst 20h
	and e
	ld d,l
	ld b,l
	ld e,c
	add a,(hl)
	xor b
	adc a,c
	ret nc
	ld h,a
	ld (hl),h
	ld d,a
	or l
	call 0c2fdh
	defb 0edh ;next byte illegal after ed
	sub c
	ld (hl),d
	inc bc
	adc a,d
	jp p,05a78h
	ld d,l
	sbc a,a
	jr nz,l7051h
	ld l,0b6h
	ld e,c
	ld e,c
	ld d,l
	call nc,0af8bh
l7005h:
	add a,e
	push bc
	pop bc
	ld a,a
	sbc a,l
	rst 10h
	exx
	rst 38h
	dec de
	cp 033h
	dec l
	ld a,a
	jp z,03cffh
	dec d
	ld b,h
	call z,sub_609dh
	inc e
	sbc a,c
	ld d,h
	jp p,0948bh
	add a,a
	or d
	cp 0b3h
	rlca
	rst 30h
	ld c,b
	ld (hl),l
	ld a,e
	rst 38h
	ret
	ex de,hl
	ld c,d
	sub b
	ld c,h
	rrca
	rl b
	rrca
	sub e
	ld d,c
	ld h,h
	scf
	xor h
	ld b,l
	and l
	exx
	add a,c
	call m,02b48h
	sbc a,h
	defb 0ddh,06ch ;ld ixl,ixh
	or d
	ld a,a
	cp 093h
	cp 078h
	ld a,a
	rst 18h
	cp b
	ld d,l
	ei
	sub a
	ret nc
	halt
	ld h,b
l7051h:
	ld l,c
	xor d
	add a,d
	add a,e
	rst 8
	or 012h
	sub h
	ld h,a
	ld e,c
	rlca
	daa
	ld d,h
	ld b,l
	rla
	ld (hl),a
	add a,d
	inc hl
	halt
	call m,09657h
	sub a
	inc bc
	ld a,h
	and d
	cp d
	jr l7005h
	call 0a537h
	ld d,e
	or a
	ld h,l
	ld a,a
	pop af
	ld l,b
	add a,b
	ld h,b
	ld a,l
	inc b
	sbc a,l
	ld (l7ccdh),hl
	rst 10h
	ld a,a
	ld b,b
	inc b
	cp e
	or a
	ld (hl),h
	sub l
	rst 28h
l7088h:
	ld h,b
	ld e,(hl)
	ld d,d
	ld h,l
	inc d
	ld b,(hl)
	inc b
	ld d,c
	sub (hl)
	ld c,08ch
	ld e,c
	rst 28h
	ld a,a
	xor c
	ld h,h
	ex de,hl
	ld (08591h),hl
	ld (de),a
	ld (hl),a
	ld h,a
	ld h,h
	sbc a,a
	jp po,09959h
	ld l,l
	ld a,a
	add a,005h
	ld h,a
	add a,h
	ld c,a
	cp e
	ld a,a
	jp 0c953h
	add a,b
	ld l,b
	inc l
	add a,(hl)
	sbc a,a
	sub h
	ld a,a
	dec bc
	ld b,0f9h
	ld hl,l4946h
	sub (hl)
	ld h,b
	sub 0deh
	sub c
	ld a,a
	or (hl)
	ld c,c
	ld e,l
	jr nc,l710eh
	ld a,a
	ld a,e
	ld (hl),h
	xor a
	rlca
	push af
	inc hl
	sbc a,c
	add hl,hl
	rlca
	sub (hl)
	ld (08c1eh),a
	sub d
	rrca
	ld h,049h
	sub h
	xor c
	ld c,l
sub_70ddh:
	ld c,e
	xor l
	sbc a,h
	sbc a,c
	ld de,l7b87h
	ld h,b
	ld a,a
	jp po,09cadh
	add a,c
	add a,b
	call 0dd7bh
	ld b,b
	ret m
	ld a,a
	ld d,l
	ld b,a
	call c,0d095h
	add hl,sp
	sbc a,c
	ld h,b
	sub d
	jp m,l49d8h
	push de
	xor b
	add a,(hl)
	xor c
	add hl,bc
	ld a,a
	defb 0fdh,0aah,014h ;illegal sequence
	djnz l7088h
	or c
	ld b,h
	cp 088h
	ld b,h
	rst 8
l710eh:
	rrca
	add a,a
	ld e,c
	ld a,a
	sbc a,c
	xor e
	add hl,sp
	adc a,(hl)
	ei
	and c
	call pe,sub_7417h
	ld d,b
	add a,b
	ret m
	sub d
	ld a,d
	ld a,c
	rst 38h
	ld (hl),b
	defb 0ddh,0b7h,03eh ;illegal sequence
	call c,sub_7f00h
	dec b
	inc b
	ei
	ld (hl),e
	ex (sp),hl
	sub a
	ld h,b
	ld (de),a
	ld a,d
	sub l
	ld d,a
	sub d
	sbc a,0f4h
	sub d
	sub b
	ld c,d
	nop
	ex af,af'
	di
	sub e
	pop af
	ld (hl),d
	adc a,a
	xor (hl)
	push af
	sbc a,07fh
	ld (hl),0a3h
	ret nc
	adc a,e
	sub h
	ld b,l
	ld h,b
	ld b,(hl)
	ld a,a
	ld a,e
	ld a,c
	ld d,h
	rl (hl)
	add a,c
	ld (hl),c
	ld (hl),c
	inc c
	ret pe
	nop
	ld e,e
l715ah:
	add a,b
	rst 8
	ei
	inc (hl)
	add a,b
	call po,089feh
	cp l
	cp 0adh
	rst 38h
	ret po
	call nz,08cf9h
	jp po,l60f0h
	sbc a,c
	di
	ld h,l
	rst 38h
	ld h,h
	adc a,e
	sbc a,h
	sbc a,02fh
	sub h
	inc c
	pop af
	jr z,l71e7h
	defb 0edh ;next byte illegal after ed
	and h
	jp p,08a8ch
	ld (hl),06bh
	or a
	sbc a,b
	call po,092feh
	sub a
	sbc a,a
sub_7189h:
	adc a,e
	and h
	ld c,e
	sub l
	exx
	sbc a,l
	ld c,b
	sbc a,e
	rst 8
	ld a,a
	ld (de),a
	ld (bc),a
	dec h
	xor c
	ld sp,08020h
	ld e,a
	ld a,082h
	sub e
	inc bc
	dec l
	adc a,b
	add a,a
	ret nz
	ld a,a
	jp nz,0b254h
	ex de,hl
l71a8h:
	call z,sub_60efh
	inc b
	cp e
	call nc,0bb45h
	ld (hl),a
	rst 38h
	ld l,d
	or a
	add a,a
	ld c,d
	ld l,b
	or 051h
	sub h
	rrca
	add hl,sp
	ld d,l
	xor 028h
	rrca
	sbc a,c
	and d
	ei
	sbc a,d
	add a,a
	sub h
	pop de
	cp e
	sbc a,l
	ld hl,(09544h)
	sbc a,l
	ld e,b
	sub h
	inc hl
	xor c
	halt
	ld h,h
	dec h
	ld b,h
	ld de,l5500h
	djnz l715ah
	call m,0c9adh
	add a,d
	ld h,c
	call 03e7fh
	nop
	ld a,a
	ld a,(de)
	rst 0
	xor d
l71e7h:
	ld d,l
	rst 18h
	cp e
	ld h,b
	ld c,l
	ld (hl),a
	call c,sub_5e02h
	add a,e
	add hl,hl
	ld h,a
	add a,h
	inc hl
	ld a,e
	ld h,a
	or l
	ld h,c
	dec d
	ld (hl),a
	ld e,0eah
	and l
sub_71feh:
	ret m
	sub l
	rrca
	sbc a,h
	and a
	adc a,e
	and d
	ld (hl),a
	sbc a,l
	ld d,(hl)
	sub l
	ld c,h
	and (hl)
	sub c
	ld b,l
	and a
	ld d,a
	dec l
	add a,c
	ret c
	ld (l7751h),hl
	adc a,a
	ld a,a
	dec d
	ld d,c
	ld a,a
	sub a
	jp m,l7ca8h
	cp c
	sub d
	sbc a,a
	ld a,(hl)
	ret nc
	ld a,a
	ld (de),a
	ld b,(hl)
	ld d,c
	ld h,a
	ld c,c
	ld h,h
	ld h,b
	ld d,c
	call nc,0d44ch
	ld d,a
	ld c,l
	ld (hl),h
	ret po
	ex (sp),hl
	ld (hl),d
	ld h,h
	ex (sp),hl
	jp nc,045e3h
	ld d,l
	ld a,(de)
	ld sp,hl
	cp e
	sbc a,l
	ret m
	ld b,h
	ex (sp),hl
	defb 0fdh,0f4h,04ah ;illegal sequence
	cp 024h
	and d
	ld c,d
	ld l,c
	sbc a,l
	jp pe,l6aa7h
	and l
	ld b,h
	ld a,a
	ld d,l
	ld h,h
	ex (sp),hl
	call p,0a325h
	ld (01fffh),hl
	ld d,l
	ld a,a
	ld hl,(08041h)
	ld (hl),c
	ld a,c
	ld a,a
	ld d,c
	xor (iy+069h)
	ld a,a
	ret p
	defb 0edh ;next byte illegal after ed
	call pe,027f4h
	ld h,b
	ld h,h
	ld b,h
	ld e,c
	add a,(hl)
	ld b,(hl)
	or a
	halt
	ld e,b
	inc d
	ld b,(hl)
	ld l,c
	ld a,(de)
	ei
	sub e
	jp (hl)
	sub e
	rrca
	ld b,l
	rst 30h
	or d
	rst 30h
	pop de
	ld b,l
	sub h
	ld hl,0b6bbh
	sbc a,h
	ld h,d
	sub l
	ld l,096h
	sbc a,l
	jp po,l76a2h
	sub h
	ld a,a
	nop
	ld b,(hl)
	ld d,a
	cp 0c7h
	rst 38h
	jp z,0aa44h
	cp a
	add a,b
	ld d,b
	res 3,h
	adc a,a
	ld a,a
	dec hl
	or (hl)
	ld a,a
	ld l,000h
	xor c
	ld h,e
	add a,d
	and d
	add a,0edh
	ld h,b
	ld (hl),l
	ei
	daa
	call m,sub_4962h
	sub a
	sub l
	ld d,l
	rst 38h
	inc d
	sub c
	call nc,09292h
	ld a,l
	ld h,h
	defb 0edh ;next byte illegal after ed
	dec h
	ld d,l
	inc b
	jp p,0f049h
	and h
	rst 38h
	ld d,c
	and c
	dec h
	sub l
	sbc a,l
	cp h
	inc b
	ld (hl),h
	ld b,l
	ld a,a
	ld (bc),a
	dec d
	rla
	ld (hl),c
	ld (01f80h),hl
	ld de,l7e52h
	inc e
	ld a,(l6094h)
	ld l,c
	ld a,a
	sub d
	call z,0bccch
	ccf
	ld a,a
	ld a,e
	ex af,af'
	or h
	pop de
	and h
	call nc,sub_60edh
	ld c,c
	sbc a,087h
	ret p
	dec h
	exx
	dec d
	ld e,b
	adc a,b
	sub c
	add a,b
	sub e
	jp (hl)
	or d
	sub l
l7300h:
	ld e,d
	inc bc
	adc a,b
	sbc a,c
	rrca
	and a
	ld a,h
	ld b,h
	ld a,(de)
	ld c,c
	ld d,h
	or 0e4h
	sbc a,l
	xor (hl)
	xor l
	ld (0ff45h),hl
	ld a,d
	dec e
	dec b
	ld (hl),a
	ld (de),a
	ret po
	add a,a
	ld d,c
	ld (de),a
	ld a,(hl)
	jp nz,0d604h
	ccf
	ld c,c
	ld a,a
	ld a,(bc)
	ret
	sbc a,h
	call z,0803fh
	ld l,e
	defb 0fdh,0eeh,0feh ;illegal sequence
	ld e,d
	and l
	rst 38h
	set 2,l
	ld h,b
	or h
	ld h,a
	adc a,h
	sub a
	ld a,a
	pop hl
	ld de,0bcdch
	push af
	adc a,c
	ld e,c
	jp (hl)
	in a,(01dh)
	push af
	xor b
	ret nz
	and d
	sbc a,(hl)
	xor h
	dec e
	ld de,l62a7h
	rst 30h
	adc a,d
	inc c
	adc a,b
	ret pe
	sbc a,h
	push bc
	ld d,h
	rst 38h
	add hl,sp
	ld l,001h
	adc a,l
	jp m,0327fh
	ccf
	add a,c
	push af
	or l
	ccf
	cp (hl)
	ld a,a
	ld (0df87h),a
	adc a,064h
	ld e,c
	ld d,h
	jp pe,0aa60h
	cpl
	sub 0cah
	ld e,b
	xor (hl)
	inc l
	sub c
	ld h,e
	call po,0e952h
	ld l,e
	rrca
	sub a
	jp nc,l4987h
	and d
	ld l,088h
l7381h:
	xor c
	rrca
	ld l,(hl)
	adc a,a
	adc a,e
	ld l,e
	ld d,l
	xor e
	and l
	sbc a,l
	adc a,b
	and l
	exx
	cp d
	add hl,sp
	ld h,l
	ld e,007h
sub_7393h:
	cp c
	add hl,hl
	or (hl)
	ld a,025h
	ld a,a
	ld a,03fh
	jr l73e6h
	ld a,a
	or (hl)
	pop hl
	ccf
	nop
	ld a,(hl)
	jp nc,0ff00h
	ld a,h
	ld sp,08ef6h
	ld h,b
	cp b
	jp nc,06448h
	cpl
	ld (hl),l
	adc a,d
	xor c
	ret c
	inc h
	exx
	adc a,c
	jp (hl)
	ld a,e
	jp (hl)
	add hl,sp
	jp pe,01e95h
	ld b,b
	dec bc
	ld h,a
	ld l,c
	ld h,(hl)
	adc a,b
	call z,sub_4924h
	ld h,h
	ld b,054h
	sub h
	ld (de),a
	ld b,(hl)
	sbc a,l
	cp h
	ld a,a
	ld a,(sub_7f64h)
	inc c
	or d
	ld (de),a
	sub h
	ld d,d
	add a,d
	cpl
	rst 38h
	jp po,l456bh
	ccf
	ld e,c
	ld a,a
	inc e
	add a,03fh
	ld (hl),h
	ld (hl),a
l73e6h:
	nop
	ld a,b
	sub b
	ld a,a
	or l
	halt
	rst 10h
	ld a,c
	ld h,b
	xor d
	ld c,a
	jp m,l6cc2h
	or l
	ld d,h
	sbc a,072h
	defb 0fdh,042h,096h ;illegal sequence
	ld h,a
	jp (hl)
	ld (hl),d
	ret pe
	inc h
sub_7400h:
	ld d,h
	sbc a,l
	ex de,hl
	sub h
	jp p,01852h
	ld e,(hl)
	ld d,h
	and d
	ret z
	and l
	halt
	ld c,e
	sub (hl)
	sbc a,l
	inc e
	sbc a,e
	ld a,(hl)
	or c
	ld h,e
	ld h,d
	ld d,l
sub_7417h:
	add a,h
	adc a,c
	ld a,a
	or a
	ld a,a
	add hl,bc
	ld h,l
	ld de,0f520h
	ld (hl),b
	sbc a,l
	ld (00940h),a
	ld (hl),c
	ccf
	or b
	ex de,hl
	ccf
	call nz,0e4dbh
	add a,b
	ld a,b
	ld b,a
	add a,e
	rrca
	ld h,(hl)
	rst 18h
	ld e,(hl)
	ld h,b
	and l
	call m,sub_5513h
	rst 28h
	ld d,d
	ld h,081h
	ld b,l
	or b
	inc de
	dec a
	ld h,h
	defb 0fdh,06ch ;ld iyl,iyh
	rrca
l7447h:
	ld de,010b9h
	push af
	inc sp
	rlca
	rrca
	ld h,a
	xor h
	rla
	ld b,h
	add a,d
	sub d
	sbc a,l
	adc a,c
	halt
	add a,h
	or d
	dec sp
	ld a,h
	ld b,(hl)
	dec b
	adc a,h
	ld bc,0b101h
	dec hl
	ld h,h
	sub c
	ld d,a
	ld a,a
	add a,088h
	call po,sub_548fh
	inc de
	and (hl)
	add a,l
	ld b,b
	inc b
	and (hl)
	ld de,03d84h
	ld d,h
	ccf
	ld d,d
	ld d,(hl)
	cp 0d5h
	cp 02fh
	ld a,a
	ld d,0edh
	ld e,d
	xor 039h
	sub a
	jr nz,l74fdh
	sub h
	defb 0fdh,095h ;sub iyl
	sub e
	ret po
	sbc a,0b3h
	jp p,08dd2h
	ld b,e
	ld a,c
	sub h
	rst 28h
	ld d,c
	ld a,e
	sbc a,(hl)
	ld e,c
	cp 0a8h
	ld h,l
	xor (hl)
	ld a,(de)
	ld b,h
	rrca
	dec de
	ld d,h
	xor l
	ld d,d
	sbc a,(hl)
	call nz,09685h
	outi
	ld a,b
	ld h,a
	cp h
	ld d,b
	and l
	xor e
	nop
	ld (bc),a
	ld a,e
	ld (de),a
	halt
	ld d,c
	ld (hl),c
	ld de,l4a00h
	jr nz,l7447h
	dec b
	ld d,c
	rla
	ld (hl),a
	jr nz,l7539h
	ret c
	ld c,c
	add a,e
	ld (de),a
	or (hl)
	sbc a,h
	daa
	ld h,l
	ccf
	xor d
	ld (hl),a
	call m,0be38h
	add a,(hl)
	ld d,c
	add hl,bc
	rst 38h
	rst 0
	rst 18h
	or c
	jr nz,$-107
	sbc a,e
	ld d,c
	rst 30h
	xor b
	ld b,l
	dec c
	call nc,055c8h
	sbc a,d
	pop hl
	adc a,d
	sub c
	cp e
	and 014h
	adc a,e
	and h
	or e
	ld e,e
	ld e,a
	or 044h
	ld b,h
	or a
	ld l,(hl)
	ld e,c
	rrca
	ld (hl),h
	ld a,l
	xor l
	ld de,0b696h
	add a,059h
	ld b,(hl)
l74fch:
	xor h
l74fdh:
	ld (hl),d
	cp h
	nop
	nop
	ld d,c
	or d
	cp e
	dec d
	ld (hl),c
	ld (de),a
	call p,00081h
	dec b
	ld b,l
	ld de,0bb17h
	ld (hl),d
	sub (hl)
	ld h,h
	jp c,0ce7fh
	ld c,b
	di
	call z,063b8h
	ccf
	ld (hl),d
	ld c,a
	dec b
	adc a,(hl)
	defb 0fdh,033h,086h ;illegal sequence
	ret
	ld h,(hl)
	rst 18h
	out (c),e
	sub 0dbh
	sub h
	in a,(0d8h)
	ld a,a
	ld d,(hl)
	ld b,(hl)
	ld a,e
	add a,c
	ld c,d
	ld h,(hl)
	ld d,(hl)
	ld a,a
	adc a,(hl)
	ld l,b
	sbc a,h
	ret
l7539h:
	sub h
	rst 10h
	ld h,l
	and d
	or c
	inc de
	ld (hl),c
	rrca
	ld a,a
	ld c,c
	di
	ld d,c
	adc a,b
	ld a,c
	ret nc
	jp c,0be0eh
	ld b,a
	ld h,l
	sbc a,l
	ld l,b
	ld h,b
	dec h
	dec d
	ld hl,l55b1h
	ld a,a
	sub d
	ld (08420h),hl
	ld d,e
	ld d,0c6h
	inc sp
	ld a,a
	jr nc,l74fch
	jp z,03b26h
	rst 10h
	rst 30h
	jp nc,03f13h
	ld (hl),d
	ld c,a
	nop
	pop hl
	ld a,a
	sub b
	ld a,a
	ex (sp),hl
	adc a,039h
	rst 18h
	call pe,sub_56a3h
	xor l
	jr z,$-17
	adc a,d
	adc a,d
	ld d,a
	sbc a,l
	call po,0888ch
	adc a,d
	cp c
	ld e,a
	adc a,h
	call c,01fa3h
	adc a,a
	ld (de),a
	ld (hl),l
	add a,h
	or c
	jp z,00f9ch
	ld (hl),d
	cpl
	ld h,a
	xor e
	ld h,(hl)
	inc d
	cp l
	ld h,e
	cp h
	sub b
	ld d,b
	ld (bc),a
	inc bc
	ld d,a
	ld hl,06177h
	add hl,hl
	ld (0017fh),hl
	ld d,c
	ld d,061h
	ld (hl),a
	ld (hl),c
	ld a,a
	ld c,c
	ret p
	xor h
	adc a,c
	xor a
	inc h
	exx
	ld h,h
	jp nc,0dcadh
	daa
	ld c,a
	inc e
	ld a,a
	ld h,e
	cp 007h
	add hl,bc
l75beh:
	nop
	ld a,a
	ld d,d
	call m,0df7bh
l75c4h:
	ld sp,00ef0h
	ld a,e
	or l
	ld h,h
	adc a,c
	inc hl
	xor c
	ld (hl),02ch
	in a,(0d2h)
	xor l
	jr z,l75c4h
	ret z
	cp c
	sub h
	ld c,c
	jr nz,l75beh
	jp nc,06d93h
	ld a,a
	and (hl)
	exx
	inc bc
	cpl
	jp po,059bbh
	ld h,l
	cpl
	ld e,a
	sbc a,l
	jp c,l4d42h
	nop
	rlca
	or (hl)
	ld a,a
	ld d,c
	sbc a,c
	ld (bc),a
	add a,c
	ld (hl),b
	adc a,d
	inc h
	ret
	ld a,(hl)
	xor h
	ld c,d
	ei
sub_75fch:
	or (hl)
	ld c,h
	adc a,092h
	jp nz,0e232h
	ld d,e
	ld c,a
	ld (hl),l
	cp 0c2h
l7608h:
	add a,e
	ld e,d
	sbc a,(hl)
	ld d,e
	ld h,l
	rst 18h
	jp z,l5446h
	ld d,(hl)
	or (hl)
	ld hl,l6586h
	ld (hl),a
	push de
	ld c,076h
l761ah:
	adc a,a
	ld c,e
	djnz l761ah
	ld (de),a
	ret pe
	or d
	ret z
	ld c,d
	ex af,af'
	ex de,hl
	ld c,h
	ld l,c
	or a
	nop
	ld a,a
	cpl
	push bc
	ld (hl),a
	ld c,a
	ld h,d
	sbc a,l
	ld (hl),a
	sbc a,l
	nop
	ld b,h
	dec h
	ld d,d
	rla
	halt
	jr nc,l764fh
l763ah:
	sub d
	ld c,a
	sub d
	ld b,d
	adc a,b
	add a,b
	ld d,015h
	ld a,d
	add hl,hl
	jp nz,09c4eh
	cpl
	ld h,a
	ei
	add hl,sp
	ld c,a
	ld (hl),d
	ld d,l
	rst 18h
l764fh:
	ld (hl),056h
	ld c,a
	jp m,l575bh
	add hl,bc
	cp 016h
	inc bc
	jp nz,0dfa7h
	or d
	ld d,l
	and (hl)
	and l
	ld e,049h
	rrca
	ld d,e
	cp (hl)
	sbc a,b
	rrca
	ld b,h
	in a,(009h)
	ld c,b
	rrca
	and a
l766dh:
	ld b,h
	cpl
	cp e
	ld d,h
	cp h
	sbc a,b
	sub e
	ld l,h
	ld hl,l6212h
	ld a,a
	add a,e
	ld (08744h),hl
	ld h,d
	ld d,d
	sub l
	sub h
	ld (l4cc9h),a
	ld (hl),a
	jp z,0ff7fh
	ld e,b
	cp a
	and d
	or l
	ld e,b
	ld b,l
	inc b
	ld hl,(0c790h)
	ld sp,hl
	add hl,bc
	add a,a
	call po,sub_5595h
	cp l
	sbc a,b
	xor h
	adc a,08dh
	ex de,hl
	rst 8
	rra
	rrca
	sbc a,c
l76a2h:
	ld d,h
	rra
	di
	rst 8
	sbc a,b
	add hl,de
	add a,a
	add a,c
	ld d,l
	halt
	ld h,c
	ld h,d
	ld d,d
	add a,07fh
	ld a,c
	xor 06bh
	ld e,(hl)
	sub 024h
	sub l
	and c
	call z,0d8dbh
	jr nz,l766dh
	and d
	adc a,b
	xor h
	ret po
	ld b,(hl)
	ld h,h
	and a
	ld a,d
	ld a,a
	out (000h),a
	sub l
	sub h
	ld d,b
	sbc a,h
	push hl
	rlca
	add a,h
	ei
	ex de,hl
	ld c,c
	ld e,a
sub_76d4h:
	sub d
	and 099h
	ld e,(hl)
	dec c
	ld c,l
	jp (hl)
	or d
	ld d,l
	adc a,l
	call po,0a581h
	inc bc
	ld l,d
	sub e
	ei
	sbc a,c
	rrca
	cpl
	ret po
	ld d,h
	or b
	ld d,d
	cpl
	ld d,a
	halt
	sub h
l76f0h:
	sbc a,l
	add a,e
	ld h,(hl)
	sub d
	ld e,e
	ld h,(hl)
	ld d,c
	push hl
	pop af
	add hl,hl
	add a,b
	dec hl
	adc a,d
	add a,0bch
l76ffh:
	ex af,af'
	or a
	ld (hl),c
	ld h,h
	sub l
	ld h,h
	ld h,l
	ld a,a
	add a,h
	and l
	adc a,b
	defb 0edh ;next byte illegal after ed
	add a,a
	ld h,0c9h
	xor 0d8h
	daa
	nop
	or (hl)
	jr nz,l7772h
	add a,b
	ld e,l
	sub h
	ld l,l
	push bc
	sbc a,c
	ld e,b
	ei
	ld c,e
	rst 30h
	ret
	ld e,d
	sub c
	pop bc
	ld (hl),h
	and 045h
	ld l,e
	ld c,c
	rrca
	ld d,l
	nop
	sbc a,e
	add hl,bc
	rrca
	dec hl
	ret
	inc a
	cpl
	dec e
	ld d,h
	cpl
	jr nc,l779eh
	ld h,d
	ld b,h
	ld a,e
	inc e
	ld h,c
	ld de,l5022h
	dec h
	sub d
	ld a,(hl)
	ld d,l
	sbc a,d
	sub l
	nop
	ld (hl),d
	and c
	ld b,l
	ld (hl),a
	jp nz,080dbh
	dec de
	jp m,08fa5h
l7751h:
	ld h,l
	xor d
	rst 20h
	ld a,a
	pop bc
	sbc a,e
	ld l,c
	rst 18h
	jr l76f0h
	jp c,0d9d8h
	ld d,d
	ld c,(hl)
	xor d
	add a,d
	call z,0a936h
	ld d,e
	ld l,(hl)
	ld l,05ah
	add a,e
	call z,0ad03h
	cp l
	push de
	inc d
	ld d,a
	rst 30h
l7772h:
	push hl
	ld c,a
	halt
	sub h
	ld e,a
	adc a,h
	ld l,h
	add a,l
	ld d,a
	exx
	sbc a,h
	add a,e
	ld c,d
l777fh:
	ld e,042h
	xor b
	ret nz
	ld h,d
	ld b,a
	halt
	ld de,01232h
	add hl,hl
	ld c,l
	add a,e
	scf
	pop bc
l778eh:
	sub c
	cp e
	nop
	sub d
	halt
	ld h,a
	pop bc
	or e
	ld c,a
	ld e,c
	inc h
	ld a,d
	ld c,a
	cp a
	ld a,a
	add hl,bc
l779eh:
	xor c
	sbc a,c
	ret nz
	ld l,d
	ld h,h
	ld hl,(05459h)
	adc a,08ch
	add a,(hl)
	or d
	di
	rst 10h
	call z,0e1ech
	ld b,l
	defb 0ddh,049h,031h ;illegal sequence
	cp e
	push hl
	sub e
	adc a,e
	sub a
	jp po,0bbc5h
	and (hl)
	ret
	ld l,h
	or 05dh
	ret m
	sub d
	sub d
	or a
	ex af,af'
	cp e
	push hl
	dec h
	sub b
	scf
	push de
	and l
	ld sp,hl
	ld (bc),a
	inc h
	ld b,a
	ld h,(hl)
	cp 028h
	ld a,a
	sub d
	ld d,c
	ld b,(hl)
	ld (hl),a
	inc b
	sub l
	ld b,l
	ld b,(hl)
	ld a,(hl)
	bit 5,(hl)
	exx
	ld h,(hl)
	defb 0edh ;next byte illegal after ed
	xor 0a7h
	ld c,(hl)
	xor e
	ld (hl),e
	ld c,a
	rst 38h
	cpl
	inc d
	sub (hl)
	ld h,h
	jr z,l7838h
	cp e
	or 0fah
	jp (hl)
	ld d,b
	ld b,h
	xor h
	add hl,sp
	rst 28h
	dec hl
	adc a,c
	inc d
	jp pe,01765h
	ld l,d
	add hl,hl
	ld h,l
	jr l778eh
	dec h
	pop hl
	adc a,h
	ld a,0a4h
	defb 0edh ;next byte illegal after ed
	exx
	ld a,b
	inc l
	sub (hl)
	ld b,(hl)
	sub d
	xor h
	sub a
	sbc a,b
	ld b,(hl)
	jp nc,l4692h
	ld b,d
	sub b
	ex af,af'
	ld h,d
	ld (0e44bh),hl
	sub c
	ld d,0fah
	and c
	dec h
	ld (hl),a
	ld d,d
	sbc a,c
	sub h
	ld b,l
	ld a,d
	sbc a,h
	ei
	inc sp
	add hl,hl
	ld a,c
	adc a,h
	inc h
	dec d
	sub (hl)
	inc sp
	inc h
	ex de,hl
	ld c,a
	ccf
	dec a
	ld a,a
l7838h:
	out (095h),a
	sbc a,b
	ld l,d
	ld a,a
	ld d,l
	ret pe
	ret m
	call nc,sub_57a8h
	ld b,h
	add a,b
	ld (de),a
	xor 097h
	rla
	ei
	pop de
	sbc a,099h
	inc de
	nop
	adc a,b
	halt
	call m,sub_64c5h
	inc h
	rst 28h
	add hl,de
	and e
	ld d,030h
	call pe,l5585h
	di
	and e
	xor (hl)
	call p,06750h
	ld (hl),h
	ld h,h
	rst 28h
	sub d
	ld (l5b24h),hl
	cp 061h
	ld d,d
	ld a,a
	sub d
	sub d
	jp m,0bd69h
	dec d
	ret pe
	sub (hl)
	add a,(hl)
	adc a,e
	sbc a,c
	xor 091h
	sbc a,c
	and c
	ld bc,05511h
sub_7880h:
	ld b,d
	add hl,hl
	ld d,l
	ld d,d
	ld c,a
	adc a,07fh
	add a,098h
	ld a,e
	ld a,a
	ld c,(hl)
	and c
	ld d,l
	ld a,a
	ld a,d
	call pe,00355h
	ex de,hl
	rst 20h
	or (hl)
	ret c
	inc bc
	sub h
	xor l
	ld a,(02880h)
	ld a,a
	add a,d
	rst 8
	jp 0b437h
	ld h,l
	sub e
	ld c,e
	ld d,(hl)
	ld d,b
	sub c
	ld c,d
	xor h
	ld e,b
	sbc a,0c4h
	ld (hl),a
	adc a,e
	xor 07fh
	and b
	ld d,h
	ld a,a
	ld h,l
	ld b,d
	ld e,c
	dec h
	jp pe,l7ff1h
	dec l
	ld h,d
	add hl,hl
	call m,0006eh
	push hl
	push de
	ld e,c
	add a,l
	xor b
	sub l
	ld c,c
	ld (08e9bh),hl
	call nc,07124h
	sub c
	ld c,(hl)
	inc h
	ld c,a
	ld e,d
	ld b,h
	adc a,l
	sub d
	rst 38h
	ret p
	ld (de),a
	ld d,h
	dec b
	sbc a,099h
	sbc a,e
	sbc a,c
	ret nc
	ld c,d
	adc a,c
	ld l,c
	call pe,0f2b0h
	inc b
	add a,a
	ld h,(hl)
	sub h
	jp nc,0176dh
	adc a,l
	cp e
	adc a,0e4h
	cp 0eeh
	ld l,b
	ld e,b
	call z,0ec00h
	sla e
	ld b,h
	ld d,b
	sbc a,h
l78feh:
	add hl,de
l78ffh:
	ld a,e
	ld a,a
	adc a,(hl)
	add hl,sp
	adc a,(hl)
	push hl
	ld d,0e9h
	push af
	add hl,bc
	call p,0e719h
	ld h,l
	ld h,(iy+07fh)
	add a,d
	ld d,c
	or c
	add hl,hl
	ld b,d
	ld b,h
	and a
	ld c,b
	adc a,b
	call nz,00f55h
	sub d
	adc a,b
	sub a
	ld (hl),c
	ld d,034h
	ld d,0b7h
	adc a,h
	ld (hl),e
	add hl,hl
	ld c,a
	ld a,a
	ld c,a
	ld c,a
	ld d,b
	ld a,a
	ld a,a
	and c
	or c
	rst 0
	ld h,d
	inc bc
	ld a,e
	ld (hl),h
	scf
	ld d,07bh
l7938h:
	cp e
	ld b,(hl)
	ld a,a
	and l
	push hl
	inc iy
	ld d,h
	rla
	ld (098b2h),hl
	pop af
	ld b,b
	inc b
	call nz,0ac80h
	cp l
	ld c,b
	ld b,b
	and b
	inc b
	cp h
	rst 38h
	sub h
	sbc a,(hl)
	cpl
	ld l,c
	cp e
	in a,(031h)
	jp m,0ff67h
	ld (hl),c
	ld a,a
	ld d,l
	ld l,e
	jr c,l7978h
	adc a,c
	pop hl
	call p,0fd22h
	ld a,(de)
	ld d,c
	or d
	add a,h
	inc hl
	ld c,(hl)
	ld h,l
	adc a,b
	inc h
	ld hl,02175h
	sub a
	ld c,a
	rla
	adc a,h
	dec b
	ld h,(hl)
l7978h:
	cp e
	ld (hl),c
	add hl,de
	ld c,a
	call z,0a1cbh
	ld d,h
	nop
	ld a,a
	rst 28h
	ld h,b
	sub c
	push de
	ld a,(hl)
	ret nc
	xor d
	ld (hl),l
	add a,0e8h
	add a,c
	ld h,h
	ld h,b
	jp m,l5ac0h
	sub c
	adc a,(hl)
	ld d,l
	ld a,b
	and d
	ld b,h
	dec b
	ld b,h
	ld b,098h
	rrca
l799dh:
	ld d,l
	cp 0b2h
	sub (hl)
	ld d,e
	djnz l799dh
	ld b,d
	ld b,c
	ld b,b
	ld b,096h
	ld a,(hl)
	jp z,0872dh
	ld hl,(0ff00h)
	jp z,03d1eh
	sub (hl)
	ld b,077h
	call m,sub_561ah
	ld (de),a
	ld a,a
	ld de,0ea9ah
	ld a,a
	dec e
	ld b,l
	ld l,c
	sbc a,c
	adc a,b
	ld (hl),h
	add a,e
	sub d
	jp (hl)
	add a,h
	ld d,(hl)
	sub l
	ld sp,01115h
	xor l
	ld (hl),021h
	ld (hl),b
	ld c,a
	inc b
	rst 18h
	ld c,a
	ld a,a
	ld (hl),d
	nop
	nop
	ld c,b
	adc a,d
	ret
	call po,09cd8h
	adc a,b
	ld hl,(l5074h)
	ld l,a
	rst 20h
	ld b,l
	sub h
	inc de
	rla
	sub h
	ld a,(bc)
	ld c,e
	inc b
	sub 01fh
	ld b,h
	ld a,(hl)
	xor b
	ld b,b
	add a,c
	sub h
	sbc a,h
	sub d
	add a,0e9h
	jp pe,l588eh
	call m,0e5cah
l7a00h:
	ld a,(de)
	ld c,c
	dec h
l7a03h:
	ld c,c
	ld (bc),a
	inc h
	ld d,a
	ld (hl),c
	ld h,l
	ld de,0fe61h
	ld d,(hl)
	ld (hl),l
	sbc a,l
	cp 031h
	ld d,(hl)
	ld c,c
	ld a,a
	ld d,l
	ld a,a
	adc a,a
	sub h
	adc a,d
	and (hl)
	rst 28h
	adc a,b
	sbc a,c
	rla
	ld (hl),l
	ld a,b
	ld b,d
	ld c,a
	cp (hl)
	nop
	ld a,a
	dec d
	inc b
	defb 0edh ;next byte illegal after ed
	adc a,c
	sbc a,c
	and b
	push de
	ld d,l
	jp (hl)
	ld l,h
	ld h,d
	ld b,0a5h
	rst 20h
	jp z,0172eh
	ld bc,089a3h
	rlca
	ld h,h
	call p,005cah
	inc bc
	jr nz,l7a03h
	ld b,e
	ld d,b
	inc b
	xor d
	ld (hl),0f4h
	inc hl
	ld e,c
	sub (hl)
	add a,h
	jp p,08c92h
	ld de,0e59ah
	call m,l5690h+1
	cp 031h
	ld h,044h
	defb 0edh ;next byte illegal after ed
	ld l,e
	call m,0e594h
	jp c,09582h
	add a,a
	add a,e
	sub d
	ld (de),a
	sub l
	add a,a
	jp (hl)
	add a,(hl)
	ld (09280h),hl
	sub 094h
	ld d,e
	ld c,a
	jp nz,l5effh
	ex af,af'
	ld (hl),b
	cp e
	ld (hl),h
	or d
	add a,l
	dec (hl)
	ld (hl),e
	ld d,h
	call z,0ef12h
	sub h
	rst 20h
	sub d
	ld h,(ix+06fh)
	ld e,h
	pop af
	rlca
	cp e
	inc e
	ld d,a
	nop
	jr nz,l7ad0h
	dec de
	adc a,(hl)
	xor b
	ld d,h
	push af
	cp e
	push de
	ld d,l
	halt
	xor l
	sub c
	ex de,hl
	ld a,(bc)
	ld d,a
	ld (hl),a
	ld h,c
	ld h,e
	defb 0fdh,0cbh,09fh,0b7h ;res 6,(iy-061h) & ld a,(iy-061h)
	ei
	ld (hl),b
	jp 0a3e3h
	ld a,a
	ld d,h
	ld hl,08a7fh
	ld d,(hl)
	ld a,a
	add hl,de
	ld d,b
	add a,d
	ld (hl),a
	ld e,075h
	sub d
	nop
	ld c,a
	ld e,07fh
	di
	ld de,l7f47h
	inc sp
	bit 4,d
	cp c
	or b
	ld e,b
	xor 0a9h
	ld d,c
	rst 20h
	inc h
	ret c
	ld l,(hl)
	inc b
	ld (hl),c
	ld l,(hl)
	ld (hl),e
	nop
	rlca
l7ad0h:
	sub e
	add a,b
	ld b,a
	add a,h
	ld d,09dh
	dec sp
	ld h,h
	adc a,h
	ld l,h
	or c
	or c
	inc l
	xor h
	ld h,0adh
	adc a,c
	call p,0be24h
	ld (hl),d
	ld h,c
	rst 20h
	ld b,a
	ld (0d7f5h),hl
	push bc
	ld b,h
	ld b,l
	sub h
	sbc a,c
	dec de
	ld e,c
	defb 0edh ;next byte illegal after ed
	add a,(hl)
	sbc a,h
	adc a,(hl)
	and d
	ld a,a
	defb 0fdh,089h,0a4h ;illegal sequence
	ld d,01ch
	ld h,b
	cp l
	ld b,d
	ld (hl),a
	nop
	ld c,a
	xor a
	inc d
	rst 38h
	ld a,h
	ld h,077h
	ld l,c
	and b
	sub d
	add a,c
	sub e
	add hl,sp
	ld d,h
	call c,024f3h
	add hl,hl
	rst 20h
	ld (hl),e
	ld l,(hl)
	ld (hl),h
	ld a,b
	dec (hl)
	sub d
	di
	cp h
	ld (hl),085h
	ld l,l
	ld b,0bdh
	inc e
	ld sp,hl
	add a,h
	ld h,h
	cp b
	ld h,(hl)
	add a,e
	and 024h
	ld a,c
	defb 0edh ;next byte illegal after ed
	call m,sub_6148h
	ld c,d
	dec d
	ret p
	ld c,d
	add a,b
	cp e
	ld b,(hl)
	sbc a,d
	inc hl
	add a,(hl)
	ld sp,sub_71feh
	nop
	ld b,d
	sbc a,d
	sub c
	ld d,011h
	sbc a,e
	dec d
	add a,d
	ld e,a
	sub e
	ld (hl),l
	ld c,a
	ld b,e
	ld c,a
	rst 38h
	pop bc
	ld (de),a
	ld e,l
	jp nc,054fah
	jp nc,0a795h
	ld d,e
	ld e,c
	ld d,e
	ld h,h
	ld l,b
	add hl,hl
	rst 20h
	ld h,l
	or b
	inc hl
	call m,0b565h
	add a,h
	ld h,b
	add a,h
	or d
	ld b,b
	jp po,09c05h
	xor d
	adc a,a
	exx
	ld h,e
	sub h
	add a,e
	dec d
	sbc a,l
	jp pe,0fe00h
	ld l,c
	defb 0fdh,0c4h,015h ;illegal sequence
	cp 089h
	sub d
	add a,b
l7b7eh:
	ld e,h
	inc d
	ld (hl),c
	sub h
	ld a,a
	adc a,e
	adc a,e
	adc a,l
	add hl,hl
l7b87h:
	sbc a,h
	djnz l7bcfh
	dec h
	ld d,c
	ld c,(hl)
	ld h,l
	sbc a,l
	inc a
	jr nz,l7be1h
	ld a,07fh
l7b94h:
	ex af,af'
	jp po,0c0ceh
	xor (hl)
	ret nz
	ei
	or d
	ei
	xor e
	ccf
	ld a,a
	ld l,c
	rst 20h
	inc de
	inc b
	push af
	rst 8
	nop
	ld d,c
	or 0bch
	ld a,h
	sbc a,c
	ld b,l
	ld (hl),l
	ld a,a
	dec h
	ex af,af'
	ld b,(hl)
	ld l,c
	sub h
	jp (hl)
	sbc a,a
	cp e
	ret po
	ld l,l
	ld a,(de)
	jp (hl)
	jp nc,l69dfh
	ex (sp),hl
	xor 048h
	sub d
	sub h
	add a,b
	call m,0bc8fh
	ld b,d
	ld e,h
	add a,h
	ld (l4224h),hl
	ld (bc),a
	ld d,l
l7bcfh:
	sbc a,b
	sbc a,a
	ld (de),a
	jr nz,$-21
	ld c,a
	dec b
	rst 38h
	ld e,a
	rla
	ld a,a
	ld c,075h
	xor a
	or d
	ld a,a
	add a,l
	adc a,l
l7be1h:
	ld a,a
	sub (hl)
	xor d
	daa
	ret m
	jp 0ce00h
	add a,(hl)
	ld sp,0f746h
	exx
	and l
	call nc,08e81h
	ld b,a
	ld a,a
	ld (de),a
	nop
	ld a,a
	daa
	rst 38h
	dec l
	ld a,a
	and h
	call m,08092h
	cp a
	adc a,l
	ld a,a
	ld c,e
	sub d
	rst 38h
	ld (hl),h
	add a,a
	cp c
	ld a,a
	rst 38h
	ld de,02072h
	ld b,d
	pop hl
	ld a,a
	pop af
	ld sp,0f940h
	dec bc
	ld h,h
	dec b
	inc b
	or a
	add hl,hl
	cp h
	dec l
	jp nc,l7f7ch
	cp (hl)
	nop
	ld a,(de)
	sbc a,h
	ld a,(l66ffh)
	ld a,e
	add a,c
	ld c,c
	xor a
	sbc a,h
	ret
	rrca
	add a,d
	ld b,d
	ld h,016h
	call m,05462h
	ld (0f8feh),hl
	call c,099a6h
	sub e
	ld d,h
	ld a,l
	cp d
	ei
	ld c,a
	add a,c
	inc (hl)
	sub (hl)
	adc a,h
	ld b,l
	sub l
	rra
	ld h,c
	sbc a,a
	ld c,e
	cp a
	ld (0f1ffh),a
	jp z,0deddh
	rst 30h
	xor b
	ld d,h
	add a,(hl)
	sbc a,d
	xor a
	rst 38h
	sub d
	jp pe,0f85ah
	nop
	and e
	sub l
	adc a,c
	call po,04646h
	rst 38h
	and l
	ld a,h
	inc sp
	cp b
	nop
	ld (bc),a
	sub c
	rst 38h
	ld d,d
	ex (sp),hl
	inc d
	ret pe
	pop de
	ex de,hl
	or h
	xor 053h
	nop
	cp 0c4h
	adc a,(hl)
	rst 20h
	ld a,a
	inc c
	sub d
	add hl,de
	sub c
l7c7fh:
	sbc a,e
l7c80h:
	dec h
	rst 38h
	add hl,hl
	dec hl
	ld (hl),l
	ld d,(hl)
	ld (hl),h
	jp l7f9ah
	add a,0dbh
	cp c
	ld c,l
	ld b,h
	jp c,039b7h
	ret nc
	in a,(0e7h)
	ld c,l
	call m,0fb00h
	inc hl
	rst 38h
	sbc a,c
	inc bc
	ld h,(hl)
	jp nc,l7ff6h
	ld (0eaebh),hl
	ld l,(hl)
	sbc a,d
	sbc a,h
	xor l
l7ca8h:
	ld sp,hl
	ld d,d
	ld (0ab8eh),hl
	sub d
	add a,(hl)
	ld h,h
	sub h
	ld (07fe2h),hl
	sub 03ch
	daa
	rst 38h
	ex (sp),hl
	and l
	sbc a,b
	call z,sub_76d4h
	ld e,c
	ex de,hl
	ld c,a
	out (01fh),a
	nop
	ld e,h
	and (hl)
	push de
	ld a,h
	ld hl,(l7381h)
	ld d,b
	rrca
l7ccdh:
	xor e
	ld a,a
	ld sp,hl
	di
	nop
	ld a,(0d44eh)
	add a,d
	and l
	adc a,d
	adc a,l
	add a,h
	adc a,h
	add a,c
	adc a,(hl)
	adc a,d
	dec h
	ld a,a
	ld de,02bffh
	nop
	ld a,a
	call pe,050a6h
	ld bc,l7f55h
l7cebh:
	ld e,e
	ex de,hl
	ld d,e
	rst 38h
	push af
	dec (hl)
	ld h,(hl)
	daa
	ld h,l
	ld bc,l7f74h+2
	dec h
	inc a
	dec d
	ld d,h
	ld a,a
	halt
	ld a,(hl)
	ei
l7cffh:
	ld l,l
	ld (bc),a
	ex (sp),hl
	ld a,a
	jr l7d6eh
	add a,c
	rrca
	ld d,c
	ld d,d
	ld a,a
	ret nz
	ld a,d
	inc b
	rst 30h
	ld (hl),c
	pop hl
	xor c
l7d11h:
	sub h
	rst 38h
	ld a,(hl)
	ld a,(bc)
	ld (hl),a
	ld sp,hl
l7d17h:
	ld c,h
	and c
	ret
	and l
	ret p
	adc a,d
	ld a,a
	ld d,d
	dec h
	cp 0e2h
	rst 28h
	sbc a,e
	rst 8
	nop
	add a,l
	ld (0817dh),a
	halt
	adc a,(hl)
	ld (hl),082h
	adc a,e
	jr nz,l7db0h
	ret p
	ld h,e
	add a,c
	dec d
	ld d,b
	add a,a
	sub (hl)
	exx
	ld a,l
	ld a,a
	call p,09cfbh
	and e
	sub h
	and e
	push hl
	ld l,l
l7d43h:
	ld d,(hl)
	cp 0f9h
	ld a,(hl)
	add a,080h
	cpl
	add hl,hl
	add a,e
	adc a,c
	cp 065h
	ld b,l
	ld hl,0008fh
	ld a,a
	pop bc
	push de
	defb 0edh ;next byte illegal after ed
	call pe,0fbd3h
	ld a,a
	jp nc,l7fb7h
	ld b,h
	and c
l7d60h:
	cp l
	ld h,d
	defb 0ddh,0a9h,0e4h ;illegal sequence
	add hl,hl
	jp p,sub_4a9ch+1
	call p,0f14fh
	ex af,af'
	ld d,d
l7d6eh:
	ld a,(bc)
	dec h
	ld (de),a
	sbc a,(hl)
	sub c
	ld l,h
	add a,b
	sbc a,a
	dec c
	nop
	ld a,a
	adc a,c
	call c,088b9h
	add a,a
	ld a,a
	rst 18h
	ld a,(hl)
	dec l
	ld h,l
	and b
	ret c
	ld (bc),a
	ld d,d
	xor l
	ld a,r
	add hl,hl
	ret p
	inc a
	ld a,(hl)
	and c
	ld (0927bh),hl
	ld d,c
	ld (hl),a
	sub d
	adc a,e
	ld de,025a7h
	jr nz,l7e1ah
	ex (sp),hl
	ld e,d
	call c,sub_673eh
	ld a,a
	ei
	and d
	ex (sp),hl
	nop
	sub 06eh
	or (hl)
	ret p
	daa
	add a,c
	ret nz
	dec h
	ld hl,01523h
l7db0h:
	dec d
	sub c
	add hl,bc
	ld d,a
	ld (de),a
	sub b
	jp pe,03cfeh
	pop af
	ld a,a
	xor c
	ld a,a
	call p,080cah
	ld a,(hl)
	ld a,a
	inc b
	cp 07bh
	jp z,0f881h
	ld a,(hl)
	ld b,a
	cp 016h
	ret p
	adc a,d
	ld d,d
	call m,09542h
	ld d,d
	adc a,a
	jp c,l63f4h
	adc a,a
	rst 38h
	or c
	inc b
	jp c,07fe7h
	sbc a,065h
	ld h,a
	ld d,h
	sbc a,a
	rst 0
l7de4h:
	ret po
	ld b,h
	cp 075h
	add a,l
	ret
	defb 0fdh,069h ;ld iyl,c
	ret p
	ld b,h
	cp 092h
	add a,d
	ld b,(hl)
	sub h
	xor e
	sub d
	sbc a,c
	ld e,a
	sub b
	ld a,a
	adc a,a
	ret p
	defb 0fdh,07dh ;ld a,iyl
	nop
	ld l,l
	ld d,h
	sbc a,(hl)
	ld a,d
	ld e,h
	add hl,bc
	ld a,a
	or a
	ld d,d
	adc a,b
	inc h
	halt
	ld de,09b83h
	add a,e
	out (029h),a
	ld a,a
	jp p,0f9b9h
	ex de,hl
	rst 38h
	adc a,h
	rrca
	nop
	and (hl)
l7e1ah:
	xor 036h
	push af
	jr nc,l7e44h
	dec h
	ld c,h
	add hl,hl
	add a,d
	ld (hl),a
	ld e,a
	ld (de),a
	sub h
	inc de
	add a,b
	cp a
	ld a,a
	ld e,h
	adc a,a
	ld a,l
	rst 18h
	ld h,d
l7e30h:
	rrca
	cpl
	exx
	ret p
	inc l
	ld h,e
	add a,b
	nop
	ld d,c
	rla
	ld (hl),a
	ld e,c
	add hl,hl
	ret m
	inc hl
	cp a
	ld a,a
	add a,b
	ld a,l
	add hl,bc
l7e44h:
	cpl
	ld l,l
	add hl,bc
	ld a,a
	sbc a,d
	ld (bc),a
	ld d,d
	add a,c
	ld (hl),b
	sub (hl)
	ld (hl),c
	ld a,a
	dec d
	ld a,a
l7e52h:
	jr z,l7de4h
	ei
	ld a,a
	cp a
	add a,a
	ld d,l
	ld h,l
	add a,b
	ld e,l
	ld a,a
	sub a
	sub a
	sbc a,c
	sub h
	add a,c
	cp a
	ld a,a
	add a,04bh
	add a,b
	or l
	add a,c
	inc a
	inc de
	jp p,l568ch
	ld a,a
	ld b,l
	ld d,a
	cp 08bh
	ld a,h
	ld h,(hl)
	ld c,089h
sub_7e77h:
	ld d,h
	adc a,e
	ld a,l
	ld a,a
	ld c,a
	add hl,bc
	ld a,a
	adc a,097h
	add a,b
	ld e,a
	ld a,a
	add a,(hl)
	add a,c
l7e85h:
	add a,066h
	jp p,0cc9fh
	ld b,(hl)
	cp 052h
	adc a,c
	and b
	ld c,c
	ld c,017h
	ld a,e
sub_7e93h:
	cp e
	or a
	rst 38h
	add a,c
	ex af,af'
	pop af
	ret m
l7e9ah:
	and e
	add a,b
	add a,l
	nop
	and h
	ld l,a
	ld a,a
	jp po,0003eh
	ld a,a
	call nc,0fe92h
	ld b,l
	ld h,h
	ld d,l
	defb 0fdh,024h ;inc iyh
	ei
	or c
sub_7eafh:
	inc c
	dec d
	ld h,h
l7eb2h:
	sub d
	adc a,l
	sub c
	add a,c
	dec sp
	ld (hl),c
	add a,d
	cp h
	cp 0f6h
	defb 0edh ;next byte illegal after ed
	nop
	sub b
	and (hl)
	adc a,h
	ret
	adc a,h
	ld a,a
	ret m
	ld c,a
	add hl,bc
	ld a,a
	or (hl)
	cp 020h
	ld b,l
	ld b,l
	ld de,02717h
	cp e
	ld (hl),d
	ei
	add a,b
	ld (l5576h),hl
	ld d,l
	ld d,b
	ld c,c
	add a,a
l7edbh:
	rla
	sub a
	add a,b
	add hl,bc
	or 0f9h
	sbc a,c
	add hl,bc
	and l
	rst 10h
l7ee5h:
	ld a,a
	pop hl
	ld e,a
	daa
	ld a,a
	ld e,h
	add a,b
	ld b,l
	ld h,(hl)
	ld h,h
	call m,016c1h
	ld h,a
	cp e
	ld (hl),l
l7ef5h:
	ld e,0c0h
	sub l
	ld d,h
	ld b,h
	inc d
	ld d,l
	ld d,(hl)
	ld b,d
	add a,d
l7effh:
	ld c,c
sub_7f00h:
	add a,b
l7f01h:
	ld a,a
	or 047h
	cp 012h
	call m,033f8h
l7f09h:
	and d
	out (009h),a
	ld a,a
	ex de,hl
	adc a,b
l7f0fh:
	cp 049h
	dec h
l7f12h:
	rlca
l7f13h:
	ld d,c
l7f14h:
	ld d,061h
	ld (hl),a
	ld (hl),c
	jr nz,l7f6ch
	add a,l
	inc de
	ld b,l
	ld l,c
	add a,c
l7f1fh:
	add a,l
	ld (hl),a
	ld d,d
	rst 38h
l7f23h:
	ld a,l
	call nc,0d7d6h
	ld a,a
	pop hl
l7f29h:
	ld de,00990h
	add a,b
	push hl
	add a,e
l7f2fh:
	cp a
l7f30h:
	dec b
	call m,sub_498eh
	add a,c
	push bc
	ld d,c
	cp 09dh
	sub c
	push de
	adc a,a
	add a,094h
	ld d,l
l7f3fh:
	rrca
	ld e,e
	add a,d
	ld a,a
sub_7f43h:
	ld a,c
	ld e,04eh
	rst 30h
l7f47h:
	ld d,e
	rst 38h
	sbc a,a
	add a,(hl)
	nop
	ei
	ld a,a
	sub d
	sub d
	ret p
sub_7f51h:
	ld c,025h
	ld d,012h
l7f55h:
	ld a,a
	or c
	inc bc
	ld b,h
	add a,d
	ld e,e
	add a,b
	ld c,l
	ld c,a
	call m,084cdh
	ld l,l
l7f62h:
	ld d,e
	rst 38h
sub_7f64h:
	pop hl
	call m,09f7fh
	add a,d
	add a,a
	jr nz,l7f79h
l7f6ch:
	add hl,bc
	ld (bc),a
	ld d,l
	ld d,h
l7f70h:
	ld h,(hl)
sub_7f71h:
	jp p,l71a8h
l7f74h:
	ld hl,01d29h
	sub h
	sbc a,c
l7f79h:
	ld h,l
	inc hl
	ld l,a
l7f7ch:
	ld a,a
sub_7f7dh:
	adc a,a
	sbc a,a
	ld a,a
	ld c,l
	out (038h),a
	ld d,(hl)
	defb 0ddh,0efh,0ffh ;illegal sequence
	pop hl
	call m,0057fh
	ld (0e624h),hl
	ld d,d
sub_7f8fh:
	push hl
	ld (hl),d
	ld a,a
	ld b,(hl)
	ld c,l
	ld h,(hl)
	rst 28h
	ld (hl),c
	sub b
	ld a,a
l7f99h:
	sub h
l7f9ah:
	ld h,a
	ld e,c
	ret z
	jr nz,$-120
sub_7f9fh:
	rst 0
	sub h
	sub d
	ld h,l
	ld a,a
	ld e,0cdh
	cp 07dh
l7fa8h:
	jr $+1
	push af
	adc a,a
	ld b,l
	ld h,(hl)
	ld h,l
	ld a,a
	scf
l7fb1h:
	sub b
	ld a,a
	cp d
	ld (bc),a
	ld a,a
	sbc a,h
l7fb7h:
	ret p
	adc a,(hl)
	pop hl
	ld d,c
	ld b,l
	ld a,a
	ld c,c
	sub h
l7fbfh:
	ret m
	sbc a,e
	ld a,b
	ld de,06947h
	call m,086b1h
	sbc a,h
	sub e
	adc a,a
	ld d,l
	ld a,a
	or d
	add a,b
	inc a
	ld a,e
	ld h,a
	rra
	ld (bc),a
	dec h
	djnz $-106
	jp po,01f56h
	ld h,(hl)
	halt
	ld d,b
	ld a,a
	ld e,l
	rst 18h
	ld (0f266h),hl
	pop hl
	ld (hl),c
l7fe5h:
	ld d,d
	jr nz,$+129
	or e
	add a,b
l7feah:
	rla
	sbc a,c
	ld (de),a
	ei
	jp nz,0fc94h
l7ff1h:
	ld e,c
	adc a,h
	add a,(hl)
	ld e,d
l7ff5h:
	ld b,d
l7ff6h:
	sub (hl)
	ld c,c
	sbc a,(hl)
	ld b,l
l7ffah:
	ld a,h
	ld a,a
l7ffch:
	di
l7ffdh:
	rst 8
l7ffeh:
	pop af
l7fffh:
	defb 030h
