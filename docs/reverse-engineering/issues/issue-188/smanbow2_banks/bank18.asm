; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank18.asm /tmp/smanbow2_bank.bin

	org 04000h

l4000h:
	ld c,h
	ld sp,03532h
	add hl,sp
	ld e,c
	jr nz,l4028h
	ld (hl),b
	ld (hl),b
	ld (hl),b
	ld (hl),b
	ld (hl),b
	ld (hl),b
	ld (hl),b
	ld (hl),b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	ld (hl),b
	ld (hl),b
	ld (hl),b
	add a,b
	add a,b
	add a,b
	ld (hl),b
	ld (hl),b
	ld (hl),b
	ld (hl),b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
l4028h:
	ld c,h
	ld e,d
	jr nz,l404ch
	jr nz,l404eh
	jr nz,l4050h
	ld a,b
	ld (hl),b
	ld l,b
	ld h,b
	ld e,b
	ld d,b
	ld c,b
	ld b,b
	jr c,l406ah
	jr z,l405ch
	jr l404eh
	ex af,af'
	nop
	ld a,b
	ld (hl),b
	ld l,b
	ld h,b
	ld e,b
	ld d,b
	ld c,b
	ld b,b
	jr c,$+50
	jr z,l406ch
l404ch:
	jr l405eh
l404eh:
	ex af,af'
	nop
l4050h:
	ld c,h
l4051h:
	scf
	ld h,c
	jr nz,l4075h
	jr nz,l4077h
	jr nz,l4059h
l4059h:
	ret p
	ret po
	ret nc
l405ch:
	ret nz
	or b
l405eh:
	and b
	sub b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
l406ah:
	add a,b
	add a,b
l406ch:
	add a,b
	add a,b
	add a,b
	add a,b
	ld a,a
	ld (hl),b
	ld h,b
	ld d,b
	ld b,b
l4075h:
	jr nc,l4097h
l4077h:
	djnz l40c5h
	ld (02061h),a
	jr nz,l409eh
	jr nz,l40a0h
	nop
	ld a,a
	nop
	add a,b
	and b
	ret nz
	ret c
	ret p
	ex af,af'
	jr nz,l40bbh
	ld b,b
	ld d,b
	ld h,b
	ld (hl),b
	ld a,b
	ld a,h
	ld a,a
	ld a,h
	ld a,b
	ld (hl),b
	ld h,b
	ld d,b
l4097h:
	ld b,b
	jr nc,l40bah
	ex af,af'
	ret p
	ret c
	ret nz
l409eh:
	and b
	add a,b
l40a0h:
	ld c,h
	add hl,sp
	ld h,l
	jr nz,l40c5h
	jr nz,l40c7h
	jr nz,l40a9h
l40a9h:
	ret m
	ret p
	ret pe
	ret po
	ret c
	ret nc
	ret z
	ret nz
	cp b
	or b
	xor b
	and b
	sbc a,b
	sub b
	adc a,b
	add a,b
	ld a,b
l40bah:
	ld (hl),b
l40bbh:
	ld l,b
	ld h,b
	ld e,b
	ld d,b
	ld c,b
	ld b,b
	jr c,$+50
	jr z,l40e5h
l40c5h:
	jr $+18
l40c7h:
	ex af,af'
	ld c,h
l40c9h:
	add hl,sp
	ld h,h
	jr nz,l40edh
	jr nz,l40efh
	jr nz,l4051h
	or b
	ret nz
	djnz l40efh
	ld hl,(01a2ch)
	nop
	ret po
	ret nc
	ret po
	ld (l7053h),hl
	ld (hl),l
	ld (hl),b
	ld sp,080eah
	adc a,b
l40e5h:
	adc a,d
	adc a,h
	adc a,(hl)
	nop
	ld a,a
	ld (hl),l
	ld (hl),e
	ld h,d
l40edh:
	nop
	ret nz
l40efh:
	sub b
	ld c,h
	ld sp,l6232h
	jr nz,l4116h
	jr nz,$+34
	add a,b
	ld a,b
	ld (hl),b
l40fbh:
	ld l,b
	ld h,b
	ld e,b
	ld d,b
	ld c,b
	ld b,b
	jr c,l4133h
	jr z,l4125h
	jr l4117h
	ex af,af'
	nop
	jr nc,l40fbh
	jr nc,l414dh
	ld d,b
	ld h,b
	ld h,b
	ld (hl),b
	ld a,c
	ld (hl),b
	ld a,b
	ld b,b
	nop
l4116h:
	nop
l4117h:
	ld c,04ch
	dec (hl)
	ld h,c
	jr nz,l413dh
	jr nz,l413fh
	jr nz,l4191h
	add a,e
	ld h,b
l4123h:
	ld d,b
	nop
l4125h:
	nop
	nop
	ld h,074h
	add a,d
	add a,h
	ld h,l
	ld h,h
	call po,08493h
	nop
	jr nc,l4123h
l4133h:
	jr nc,l4175h
	ld d,b
	ld h,b
	ld h,b
	ld (hl),b
	ld a,c
	ld (hl),b
	ld a,b
	ld b,b
l413dh:
	nop
	nop
l413fh:
	ld c,04ch
	inc (hl)
	ld h,c
	jr nz,l4165h
	jr nz,l4167h
	jr nz,l40c9h
	or b
	ret nz
	djnz l4167h
l414dh:
	ld hl,(01a2ch)
	nop
	ret po
	ret nc
	ret po
	ld (l7053h),hl
l4157h:
	ld (hl),l
	ld (hl),b
	ld sp,080eah
	adc a,b
	adc a,d
	adc a,h
	adc a,(hl)
	nop
	ld a,a
	ld (hl),l
	ld (hl),e
	ld h,d
l4165h:
	nop
	ret nz
l4167h:
	sub b
	ld c,h
	inc (hl)
	ld e,c
	jr nz,l418dh
	jr nz,l418fh
	jr nz,l4171h
l4171h:
	ret m
	ret p
	ret pe
	ret po
l4175h:
	ret c
	ret nc
	ret z
	ret nz
	cp b
	or b
	xor b
	and b
	sbc a,b
	sub b
	adc a,b
	add a,b
	ld a,b
	ld (hl),b
	ld l,b
	ld h,b
	ld e,b
	ld d,b
	ld c,b
	ld b,b
	jr c,l41bbh
	jr z,l41adh
l418dh:
	jr l419fh
l418fh:
	ex af,af'
	ld c,h
l4191h:
	inc (hl)
	ld (hl),h
	ld l,a
	ld l,l
	ld (hl),e
	ld h,c
	jr nz,l4199h
l4199h:
	add hl,de
	ld sp,l5a47h
	ld l,d
	ld (hl),l
l419fh:
	ld a,l
	ld a,a
	ld a,l
	ld (hl),l
	ld l,d
	ld e,d
	ld b,a
	ld sp,00019h
	rst 20h
	rst 8
	cp c
	and (hl)
l41adh:
	sub (hl)
	adc a,e
	add a,e
	add a,b
	add a,e
	adc a,e
	sub (hl)
	and (hl)
	cp c
	rst 8
	rst 20h
	ld c,h
	inc (hl)
	ld (hl),h
l41bbh:
	ld l,a
	ld l,l
	ld (hl),e
	ld h,d
	jr nz,l4157h
	adc a,e
	add a,e
	add a,b
	add a,e
	add a,l
	adc a,l
	sbc a,d
	xor h
	rst 0
	rst 20h
	nop
	add hl,de
	ld sp,l5a47h
	ld l,d
	ld (hl),l
	ld a,l
	ld a,a
	ld a,l
	ld (hl),l
	ld l,d
	ld e,d
	ld b,a
	ld sp,00019h
	rst 20h
	rst 8
	cp c
	and (hl)
	ld c,h
	dec (hl)
	ld h,h
	jr nz,l4205h
	jr nz,l4207h
	jr nz,l4268h
	dec bc
	ld (bc),a
	ret m
	xor 0e4h
	jp c,0c6d0h
	cp l
	or e
	xor c
	sbc a,(hl)
	sub h
	adc a,e
	add a,b
	add a,b
	adc a,e
	sub h
	sbc a,(hl)
	xor c
	or d
	cp h
	rst 0
	ret nc
	jp c,0eee5h
	ret m
l4205h:
	ld (bc),a
	inc c
l4207h:
	ld a,a
	ld c,h
	scf
	ld h,d
	jr nz,l422dh
	jr nz,l422fh
	jr nz,l4211h
l4211h:
	ret p
	ret po
	ret nc
	ret nz
	or b
	and b
	sub b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	ld a,a
	ld (hl),b
	ld h,b
	ld d,b
	ld b,b
l422dh:
	jr nc,l424fh
l422fh:
	djnz l427dh
	ld (02064h),a
	jr nz,$+34
	jr nz,l4258h
	nop
	ld de,02d1fh
	jr c,$+114
	ld (hl),c
	ld c,l
	ld c,l
	add hl,de
	inc de
	inc c
	jr c,l4273h
	rra
	ld de,01a2ch
	ld b,0c6h
	add a,b
	sub (hl)
	ret c
l424fh:
	jp pe,01600h
	ld d,d
	ld l,b
	ld c,l
	ld a,(0e2f2h)
l4258h:
	ld c,h
l4259h:
	ld e,b
	jr nz,l427ch
	jr nz,l427eh
	jr nz,l4280h
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
l4268h:
	rlca
	cp (hl)
	sub h
	adc a,e
	sbc a,d
	and l
	xor h
	pop bc
	ld a,a
	ld a,a
	ld a,a
l4273h:
	adc a,094h
	and b
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	xor b
l427ch:
	xor (hl)
l427dh:
	push bc
l427eh:
	ex (sp),hl
	ld a,a
l4280h:
	ld c,h
l4281h:
	ld (02063h),a
	jr nz,l42a6h
	jr nz,l42a8h
	nop
	nop
	nop
	nop
	nop
	ld (hl),b
	ld (hl),b
	nop
	nop
	add a,b
	add a,b
	add a,b
	nop
	nop
	nop
	nop
	ld (hl),b
	ld (hl),b
	ld (hl),b
l429bh:
	nop
	add a,b
	add a,b
	nop
	nop
	nop
	nop
	ld (hl),b
	ld (hl),b
	nop
	nop
l42a6h:
	add a,b
	add a,b
l42a8h:
	ld c,h
l42a9h:
	ld (hl),066h
	jr nz,l42cdh
	jr nz,l42cfh
	jr nz,l42b1h
l42b1h:
	add hl,de
	ld sp,l5a47h
l42b5h:
	ld l,d
	ld (hl),l
	ld a,l
	ld a,a
	ld a,l
	ld (hl),l
l42bbh:
	ld l,d
	ld e,d
	ld b,a
	ld sp,08019h
	sub b
	and b
	or b
	ret nz
	ret nc
	ret po
	ret p
	nop
	djnz l42ebh
	jr nc,l430dh
l42cdh:
	ld d,b
	ld h,b
l42cfh:
	ld (hl),b
l42d0h:
	ld c,h
	ld (hl),064h
	jr nz,l42f5h
	jr nz,l42f7h
	jr nz,l4259h
	ret nc
	jr nz,l435bh
	ld b,b
	nop
	ret nz
	add a,b
	ret nc
	jr nz,l4362h
	jr nc,l42b5h
	add a,b
	ret nc
	jr nc,l4368h
	jr nc,l42bbh
l42ebh:
	add a,b
	or b
	ret po
	jr l42d0h
	or b
	add a,b
	sub b
	and b
	or b
l42f5h:
	and b
	sub b
l42f7h:
	add a,b
	ld c,h
l42f9h:
	add hl,sp
	ld h,d
	jr nz,$+34
	jr nz,l431fh
	jr nz,l4281h
	add a,b
	ret pe
	jr l433dh
	ld h,(hl)
	ld a,b
	ld a,a
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
l430dh:
	add a,b
	add a,b
	sbc a,h
	add a,b
	call c,02080h
	ret nc
	add a,b
	ld a,a
	add a,b
	ret nc
	jr nz,l429bh
	call c,09c80h
	add a,b
l431fh:
	adc a,b
	ld c,h
	dec (hl)
	ld e,d
	jr nz,l4345h
	jr nz,l4347h
	jr nz,l42a9h
	or b
	ret nz
	djnz l4347h
	ld hl,(01a2ch)
	nop
	ret po
	ret nc
	ret po
	ld (l7053h),hl
	ld (hl),l
	ld (hl),b
	ld sp,080eah
	adc a,b
l433dh:
	adc a,d
	adc a,h
	adc a,(hl)
	nop
	nop
	nop
	nop
	nop
l4345h:
	ld (hl),b
	ld (hl),b
l4347h:
	nop
	ld c,h
	ld sp,02063h
	jr nz,l436eh
	jr nz,l4370h
	jr nc,$+6
	ld (bc),a
	nop
	ld (02204h),hl
	ld (bc),a
	djnz l436ah
	nop
l435bh:
	nop
	nop
	djnz l435fh
l435fh:
	nop
	add a,b
	ld b,b
l4362h:
	nop
	nop
	ld b,b
	nop
	ld b,b
	ld b,b
l4368h:
	nop
	nop
l436ah:
	nop
	add a,b
	nop
	add a,b
l436eh:
	nop
	nop
l4370h:
	ld c,h
	ld (hl),039h
	jr nz,$+34
	jr nz,l4397h
	jr nz,l42f9h
	add a,b
	ret pe
	jr l43b5h
	ld h,(hl)
	ld a,b
	ld a,a
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	sbc a,h
	add a,b
	call c,02080h
	ret nc
	add a,b
	ld a,a
	add a,b
	ret nc
	jr nz,$-126
	call c,09c80h
	add a,b
l4397h:
	adc a,b
	ld c,h
	inc sp
	ld (hl),039h
	jr nz,l43beh
	jr nz,$+34
	nop
	add hl,de
	ld sp,l5a47h
	ld l,d
	ld (hl),l
	ld a,l
	ld a,a
	ld a,l
	ld (hl),l
	ld l,d
	ld e,d
	ld b,a
	ld sp,00019h
	ret po
	ret nz
	and b
	add a,b
l43b5h:
	and b
	ret nz
	ret po
	nop
	jr nz,l43fbh
	ld h,b
	ld a,a
	ld h,b
l43beh:
	ld b,b
	jr nz,l440dh
	ld (hl),05ah
	jr nz,l43e5h
	jr nz,l43e7h
	jr nz,l43c9h
l43c9h:
	add hl,de
	ld sp,l5a47h
	ld l,d
	ld (hl),l
	ld a,l
	ld a,a
	ld a,l
	ld (hl),l
	ld l,d
	ld e,d
	ld b,a
	ld sp,08019h
	and b
	ret nz
	ret po
	nop
	jr nz,l441fh
	ld h,b
	add a,b
	and b
	ret nz
	ret po
	nop
l43e5h:
	jr nz,l4427h
l43e7h:
	ld h,b
	ld c,h
	ld sp,02064h
	jr nz,l440eh
	jr nz,l4410h
	nop
	ld b,b
	ld a,a
	ld b,b
	ld bc,081c0h
	ret nz
	ld bc,l7f40h
l43fbh:
	ld b,b
	ld bc,001c0h
	ld b,b
	ld bc,001e0h
	jr nz,l4406h
	ret p
l4406h:
	ld bc,00110h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l440dh:
	ld b,b
l440eh:
	ld b,b
	ld b,b
l4410h:
	ld c,h
	ld e,b
	ld h,c
	jr nz,l4435h
	jr nz,l4437h
	jr nz,l4498h
	nop
	add a,b
	nop
	ld a,a
l441dh:
	nop
	add a,b
l441fh:
	nop
	ld a,a
	nop
	add a,b
l4423h:
	nop
	ld a,a
	nop
	add a,b
l4427h:
	nop
	ld a,a
	nop
l442ah:
	add a,b
	nop
	ld a,a
	nop
	add a,b
	nop
	ld a,a
	nop
	add a,b
	nop
	ld a,a
l4435h:
	nop
	add a,b
l4437h:
	ld a,a
l4438h:
	ld c,h
	inc sp
	ld (hl),061h
	jr nz,l445eh
	jr nz,l4460h
	add a,b
	ret nc
	jr nz,l44c3h
	ld b,b
	nop
	ret nz
	add a,b
	ret nc
	jr nz,l44cah
	jr nc,l441dh
	add a,b
	ret nc
	jr nc,l44d0h
	jr nc,l4423h
	add a,b
	or b
	ret po
	jr l4438h
	or b
	add a,b
	sub b
	and b
	or b
	and b
l445eh:
	sub b
	add a,b
l4460h:
	ld c,h
l4461h:
	inc sp
	ld h,d
	jr nz,l4485h
	jr nz,l4487h
	jr nz,l4469h
l4469h:
	ld b,b
	ld a,a
	ld b,b
	ld bc,081c0h
	ret nz
	ld bc,l7f40h
	ld b,b
	ld bc,001c0h
	ld b,b
	ld bc,001e0h
	jr nz,l447eh
	ret p
l447eh:
	ld bc,00110h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l4485h:
	ld b,b
	ld b,b
l4487h:
	ld b,b
	ld c,h
	ld (02062h),a
	jr nz,l44aeh
	jr nz,l44b0h
	add a,b
	add a,b
	nop
	add a,b
	nop
	add a,b
	add a,b
	add a,b
l4498h:
	jr nz,l44dah
	ld h,b
	ld b,b
	jr nz,l44beh
	ld h,b
	ld h,b
	ld (hl),b
	ld (hl),b
	ld a,b
	ld a,b
	ld a,b
	ld a,b
	ld a,b
	ld h,b
	nop
	nop
	nop
	add a,b
	nop
	add a,b
l44aeh:
	nop
	add a,b
l44b0h:
	ld c,h
	add hl,sp
	ld h,c
	jr nz,l44d5h
	jr nz,l44d7h
	jr nz,l44b9h
l44b9h:
	nop
	nop
	nop
	nop
	ld (hl),b
l44beh:
	ld (hl),b
	nop
	nop
l44c1h:
	add a,b
	add a,b
l44c3h:
	add a,b
	nop
	nop
	nop
	nop
	ld (hl),b
	ld (hl),b
l44cah:
	ld (hl),b
	nop
	add a,b
	add a,b
	nop
	nop
l44d0h:
	nop
	nop
	ld (hl),b
	ld (hl),b
	nop
l44d5h:
	nop
	add a,b
l44d7h:
	add a,b
	ld c,h
	dec (hl)
l44dah:
	ld e,b
	jr nz,l44fdh
	jr nz,l44ffh
	jr nz,l4461h
	ld (hl),b
	add a,b
	ld (hl),b
	add a,b
	ld (hl),b
	add a,b
	ld (hl),b
	ld (hl),b
	add a,b
	ld (hl),b
	add a,b
	add a,b
	add a,b
	ld (hl),b
	ld (hl),b
	add a,b
	ld (hl),b
	add a,b
	add a,b
	add a,b
	ld (hl),b
	ld (hl),b
	ld (hl),b
	ld (hl),b
	add a,b
	add a,b
	add a,b
	ld (hl),b
l44fdh:
	add a,b
	ld (hl),b
l44ffh:
	add a,b
	ld c,h
	ld (hl),062h
	jr nz,l4525h
	jr nz,l4527h
	jr nz,l4588h
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
l4525h:
	add a,b
	add a,b
l4527h:
	add a,b
	ld c,h
	add hl,sp
	ld h,e
	jr nz,l454dh
	jr nz,l454fh
	jr nz,l44c1h
	adc a,b
	sub b
	sbc a,h
	or b
	ret nz
	ret po
	ld h,070h
	ld a,h
	ld (hl),b
	ld d,(hl)
	ld b,b
	jr nz,l454fh
	call m,0fce0h
	djnz $+38
	ld b,b
	ld d,h
	ld (hl),d
	ld a,a
	ld (hl),b
	ld h,0e0h
	ret nz
	or b
l454dh:
	sbc a,h
	sub b
l454fh:
	adc a,b
	ld c,h
	ld sp,02035h
	jr nz,l4576h
	jr nz,l4578h
	nop
	add hl,de
	ld sp,l5a47h
	ld l,d
	ld (hl),l
	ld a,l
	ld a,a
	ld a,l
	ld (hl),l
	ld l,d
	ld e,d
	ld b,a
	ld sp,08019h
	sub b
	and b
	or b
	ret nz
	ret nc
	ret po
	ret p
	nop
	djnz l4593h
	jr nc,l45b5h
	ld d,b
l4576h:
	ld h,b
	ld (hl),b
l4578h:
	ld c,h
	ld e,d
	ld h,e
	ld l,b
	inc sp
	jr nz,l459fh
	jr nz,l45f9h
	ld (hl),b
	ld l,b
	ld h,b
	ld e,b
	ld d,b
	ld c,b
	ld b,b
l4588h:
	jr c,l45bah
	jr z,l45ach
	jr l459eh
	ex af,af'
	nop
	ld a,b
	ld (hl),b
	ld l,b
l4593h:
	ld h,b
	ld e,b
	ld d,b
	ld c,b
	ld b,b
	jr c,l45cah
	jr z,l45bch
	jr l45aeh
l459eh:
	ex af,af'
l459fh:
	nop
	ld c,h
	dec (hl)
	ld (hl),058h
	jr nz,l45c6h
	jr nz,l45c8h
	ld a,a
	ld a,a
	ld a,a
	ld a,a
l45ach:
	ld a,a
	ld a,a
l45aeh:
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	ld a,a
l45b5h:
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	add a,b
l45bah:
	add a,b
	add a,b
l45bch:
	add a,b
	add a,b
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	add a,b
	add a,b
	add a,b
l45c6h:
	add a,b
	add a,b
l45c8h:
	ld c,h
	inc sp
l45cah:
	jr nz,l45ech
	jr nz,l45eeh
	jr nz,l45f0h
	nop
	ld (hl),b
	ld d,b
	jr nz,l4625h
	ld (hl),b
	jr nc,l45d8h
l45d8h:
	ld d,b
	ld a,a
	ld h,b
	djnz l460dh
	ld b,b
	nop
	or b
	djnz $+98
	nop
	ret po
	ret p
	nop
	or b
	sub b
	ret nz
	djnz $-30
	and b
l45ech:
	ret nz
	ret p
l45eeh:
	ret nz
	and b
l45f0h:
	ld c,h
	ld sp,02065h
	jr nz,l4616h
	jr nz,l4618h
	nop
l45f9h:
	nop
	nop
	nop
	nop
	ld (hl),b
	ld (hl),b
	nop
	nop
	add a,b
	add a,b
	add a,b
	nop
	nop
	nop
	nop
	ld (hl),b
	ld (hl),b
	ld (hl),b
	nop
	add a,b
l460dh:
	add a,b
	nop
	nop
	nop
	nop
	ld (hl),b
	ld (hl),b
	nop
	nop
l4616h:
	add a,b
	add a,b
l4618h:
	ld c,h
	ld sp,03533h
	scf
	ld e,b
	ld h,c
	jr nz,l4621h
l4621h:
	jp p,0d3e3h
	cp l
l4625h:
	add a,d
	add a,b
	add a,b
	add a,b
	nop
	jr l4658h
	ld a,(l6b6bh)
	ld d,a
	add a,b
	ld a,a
	ld a,a
	ld a,a
	add hl,hl
	inc sp
	ld b,h
	ld e,c
	ld (hl),d
	ld a,a
	ld e,c
	ld (hl),01fh
	djnz $+6
	nop
	ld c,h
	ld sp,03533h
	scf
	ld e,b
	ld h,d
	jr nz,l4649h
l4649h:
	jp p,0d3e3h
	cp l
	sub (hl)
	add a,b
	add a,b
	ex (sp),hl
	nop
	jr l4680h
	ld a,(l7f7ah)
	ld l,c
l4658h:
	sub l
	ld a,a
	ld a,a
	rla
	jr z,l4691h
	ld b,h
	ld e,c
	ld (hl),d
	ld a,a
	ld e,c
	ld (hl),01fh
	djnz $+6
	nop
	ld c,h
	ld sp,03533h
	scf
	ld e,b
	ld h,e
	jr nz,l4671h
l4671h:
	jp p,0d3e3h
	cp l
	sub (hl)
	sbc a,b
	add a,b
	add a,b
	ld de,02c18h
	ld a,(l7f48h)
	ld e,l
l4680h:
	add a,b
	jp c,01732h
	jr z,l46b9h
	ld b,h
	ld e,c
	ld (hl),d
	ld (hl),b
	ld e,c
	ld (hl),01fh
	djnz $+6
	nop
	ld c,h
l4691h:
	ld sp,03533h
	scf
	ld e,b
	ld h,h
	jr nz,l4699h
l4699h:
	jp p,0d3e3h
	cp l
	and l
	add a,b
	add a,b
	add a,000h
	jr l46d0h
	ld a,(l6266h)
	ld a,a
	add a,b
	xor b
	nop
	rla
	jr z,l46e1h
	ld b,h
	ld e,c
	ld l,h
	ld l,h
	ld e,c
	ld (hl),01fh
	djnz $+6
	nop
	ld c,h
l46b9h:
	ld sp,03533h
	scf
	ld e,b
	ld h,l
	jr nz,l46c1h
l46c1h:
	jp p,0d3e3h
	cp l
	and l
	and e
	or d
	ex (sp),hl
	nop
	jr l46f8h
	ld a,(l7f7fh)
	scf
l46d0h:
	sbc a,(hl)
	call 01700h
	jr z,l4709h
	ld b,h
	ld e,c
	ld l,h
	ld l,h
	ld e,c
	ld (hl),01fh
	djnz $+6
	nop
	ld c,h
l46e1h:
	ld sp,03533h
	ld (hl),037h
	ld e,b
	jr nz,l46e9h
l46e9h:
	jp p,0d3e3h
	cp l
	and l
	and e
	or d
	ex (sp),hl
	nop
	jr l4720h
	ld a,(l4848h)
	scf
l46f8h:
	sub b
	exx
	nop
	rla
	jr z,l4731h
	ld b,h
	ld e,c
	ld l,b
	ld h,a
	ld e,c
	ld (hl),01fh
	djnz $+6
	nop
	ld c,h
l4709h:
	ld sp,03533h
	scf
	ld e,b
	ld h,(hl)
	jr nz,l4711h
l4711h:
	jp p,0d3e3h
	cp l
	and l
	and e
	or d
	ex (sp),hl
	nop
	jr l4748h
	ld a,(l4848h)
	scf
l4720h:
	push bc
	ret pe
	nop
	rla
	jr z,l4759h
	ld b,h
	ld e,c
	ld l,b
	ld h,a
	ld e,c
	ld (hl),01fh
	djnz $+6
	nop
	ld c,h
l4731h:
	ld sp,03533h
	scf
	ld e,b
	ld h,a
	jr nz,l4739h
l4739h:
	jp p,0d3e3h
	cp l
	and l
	and e
	or d
	ex (sp),hl
	nop
	jr l4770h
	ld a,(03f40h)
	scf
l4748h:
	inc de
	nop
	rst 38h
	ld a,(bc)
	dec e
	inc sp
	ld b,h
	ld e,c
	ld l,b
	ld h,a
	ld e,c
	ld (hl),01fh
	djnz $+6
	nop
	ld c,h
l4759h:
	ld sp,03533h
	scf
	ld e,b
	ld l,b
	jr nz,l4761h
l4761h:
	jp p,0d3e3h
	cp l
	xor l
	xor d
	or d
	ex (sp),hl
	nop
	jr l4798h
	ld a,(03f40h)
	scf
l4770h:
	ld (01213h),hl
	inc d
	dec e
	inc sp
	ld b,h
	ld e,c
	ld h,l
	ld h,l
	ld e,c
	ld (hl),01fh
	djnz $+6
	nop
	ld c,h
	ld sp,03533h
	scf
	add hl,sp
	ld e,b
	jr nz,l4789h
l4789h:
	jp p,0d3e3h
	cp l
	xor l
	xor d
	or d
	ex (sp),hl
	nop
	jr l47c0h
	ld a,(03f40h)
	ld b,d
l4798h:
	ld c,b
	ld c,c
	ld c,l
	ld d,d
	ld e,b
	ld e,d
	ld e,(hl)
	ld e,a
	ld h,l
	ld h,l
	ld e,c
	ld (hl),01fh
	djnz l47abh
	nop
	ld c,h
	inc sp
	scf
l47abh:
	add hl,sp
	jr nz,l47ceh
	jr nz,l47d0h
	add a,b
	or b
	ret nz
	djnz l47cfh
	ld hl,(01a2ch)
	nop
	ret po
	ret nc
	ret po
	ld (l7053h),hl
	ld (hl),l
l47c0h:
	ld (hl),b
	ld sp,080eah
	adc a,b
	adc a,d
	adc a,h
	adc a,(hl)
	nop
	nop
	nop
	nop
	nop
	ld (hl),b
l47ceh:
	ld (hl),b
l47cfh:
	nop
l47d0h:
	ld c,h
	dec (hl)
	scf
	add hl,sp
l47d4h:
	ld d,c
	ld (hl),a
	ld l,c
	ld l,(hl)
	nop
	add hl,de
	ld sp,l5a47h
	ld l,d
	ld (hl),l
	ld a,l
	ld a,a
	ld a,l
	ld (hl),l
	ld l,d
	ld e,d
	ld b,a
	ld sp,00019h
	rst 20h
	rst 8
	cp c
	and (hl)
	sub (hl)
	adc a,e
	add a,e
	add a,b
	add a,e
	adc a,e
	sub (hl)
	and (hl)
	cp c
	rst 8
	rst 20h
	ld c,h
	ld (hl),063h
	jr nz,l481dh
l47fdh:
	jr nz,l481fh
	jr nz,l4831h
	ld d,b
	ld d,b
	jr nc,l4805h
l4805h:
	nop
	djnz l4848h
	ld h,b
	ld (hl),b
	ld h,b
	jr nc,l47fdh
	ret po
	ret po
	nop
	jr nz,l4832h
	djnz l47d4h
	and b
	sub b
	and b
	ret nz
	nop
	nop
	ret nc
	or b
	or b
l481dh:
	ret nc
	nop
l481fh:
	nop
	ld c,h
	ld (hl),065h
	jr nz,$+34
	jr nz,l4847h
	jr nz,l4829h
l4829h:
	ld b,b
	ld a,a
	ld b,b
	djnz $+3
	jp pe,0c3d6h
l4831h:
	cp c
l4832h:
	xor a
	and h
	sbc a,h
	sub l
	adc a,a
	adc a,d
	add a,(hl)
	add a,e
	add a,c
	add a,e
	add a,(hl)
	adc a,d
	adc a,a
	sub l
	sbc a,h
	and h
	xor a
	cp c
	jp 0ead6h
l4847h:
	rst 38h
l4848h:
	ld c,h
l4849h:
	inc sp
	ld e,d
	jr nz,l486dh
	jr nz,l486fh
	jr nz,l4851h
l4851h:
	ret po
	ret nz
	and b
	add a,b
	and b
	ret nz
	ret po
	nop
	jr nz,$+66
	ld h,b
	ld a,a
	ld h,b
	ld b,b
	jr nz,l4861h
l4861h:
	ret po
	ret nz
	and b
	add a,b
	and b
	ret nz
	ret po
	nop
	jr nz,l48abh
	ld h,b
	ld a,a
l486dh:
	ld h,b
	ld b,b
l486fh:
	jr nz,l48bdh
	ld sp,02061h
	jr nz,$+34
	jr nz,$+34
	nop
	ret p
	ret po
	ret nc
	ret nz
	or b
	and b
	sub b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	ld a,a
	ld (hl),b
	ld h,b
l4893h:
	ld d,b
	ld b,b
	jr nc,l48b7h
	djnz l48e5h
	ld sp,02062h
	jr nz,$+34
	jr nz,l48c0h
	nop
	jr nc,l4893h
	jr nc,l48e5h
	ld d,b
	ld h,b
	ld h,b
	ld (hl),b
	ld a,c
	ld (hl),b
l48abh:
	ld a,b
	ld b,b
	nop
	nop
	ld c,070h
	add a,e
	ld h,b
	ld d,b
	nop
	nop
	nop
l48b7h:
	ld h,074h
	add a,d
	add a,h
	ld h,l
	ld h,h
l48bdh:
	call po,08493h
l48c0h:
	ld c,h
	ld e,d
l48c2h:
	ld h,e
	ld l,b
	ld (02020h),a
	jr nz,l4849h
	adc a,(hl)
	and b
	ret nz
	ret po
	nop
	jr nz,l490fh
	ld a,03ch
	ld a,(03137h)
	add hl,hl
	jr nz,l48f4h
	djnz l48dah
l48dah:
	and 0c0h
	ret nc
	nop
	jr nz,l491fh
	djnz l48c2h
	add a,b
	ret nz
	nop
l48e5h:
	jr nz,l48e7h
l48e7h:
	sub b
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l48f1h
l48f1h:
	nop
	nop
	nop
l48f4h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l490fh:
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4919h
l4919h:
	nop
	nop
	nop
	nop
	nop
	nop
l491fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4941h
l4941h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4969h
l4969h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4991h
l4991h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l49b9h
l49b9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l49e1h
l49e1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4a09h
l4a09h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4a31h
l4a31h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4a59h
l4a59h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4a81h
l4a81h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4aa9h
l4aa9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4ad1h
l4ad1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4af9h
l4af9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4b21h
l4b21h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (hl),b
	ld (hl),b
	ld (hl),b
	ld (hl),b
	ld (hl),b
	ld (hl),b
	ld (hl),b
	ld (hl),b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4b49h
l4b49h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4b71h
l4b71h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4b99h
l4b99h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4bc1h
l4bc1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4be9h
l4be9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4c11h
l4c11h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4c39h
l4c39h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4c61h
l4c61h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (hl),b
	ld (hl),b
	ld (hl),b
	ld (hl),b
	ld (hl),b
	ld (hl),b
	ld (hl),b
	ld (hl),b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4c89h
l4c89h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4cb1h
l4cb1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4cd9h
l4cd9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4d01h
l4d01h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4d29h
l4d29h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4d51h
l4d51h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4d79h
l4d79h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4da1h
l4da1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4dc9h
l4dc9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4df1h
l4df1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4e19h
l4e19h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4e41h
l4e41h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4e69h
l4e69h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4e91h
l4e91h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4eb9h
l4eb9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4ee1h
l4ee1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4f09h
l4f09h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4f31h
l4f31h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4f59h
l4f59h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4f81h
l4f81h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4fa9h
l4fa9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4fd1h
l4fd1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l4ff9h
l4ff9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5021h
l5021h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5049h
l5049h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5071h
l5071h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5099h
l5099h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l50c1h
l50c1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l50e9h
l50e9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5111h
l5111h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5139h
l5139h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5161h
l5161h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5189h
l5189h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l51b1h
l51b1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l51d9h
l51d9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5201h
l5201h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5229h
l5229h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5251h
l5251h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5279h
l5279h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l52a1h
l52a1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l52c9h
l52c9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl,(02a2ah)
	ld hl,(02a2ah)
	ld hl,(l442ah)
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l52f1h
l52f1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5319h
l5319h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5341h
l5341h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5369h
l5369h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5391h
l5391h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l53b9h
l53b9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l53e1h
l53e1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5409h
l5409h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5431h
l5431h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5459h
l5459h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5481h
l5481h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l54a9h
l54a9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l54d1h
l54d1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l54f9h
l54f9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5521h
l5521h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5549h
l5549h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5571h
l5571h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5599h
l5599h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l55c1h
l55c1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l55e9h
l55e9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5611h
l5611h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5639h
l5639h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5661h
l5661h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5689h
l5689h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l56b1h
l56b1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l56d9h
l56d9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5701h
l5701h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5729h
l5729h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5751h
l5751h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5779h
l5779h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l57a1h
l57a1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l57c9h
l57c9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l57f1h
l57f1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5819h
l5819h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5841h
l5841h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5869h
l5869h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5891h
l5891h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l58b9h
l58b9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l58e1h
l58e1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5909h
l5909h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5931h
l5931h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5959h
l5959h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5981h
l5981h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l59a9h
l59a9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l59d1h
l59d1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l59f9h
l59f9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5a21h
l5a21h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
l5a47h:
	jr nz,l5a49h
l5a49h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5a71h
l5a71h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5a99h
l5a99h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5ac1h
l5ac1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5ae9h
l5ae9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5b11h
l5b11h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5b39h
l5b39h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5b61h
l5b61h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5b89h
l5b89h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5bb1h
l5bb1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5bd9h
l5bd9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5c01h
l5c01h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5c29h
l5c29h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5c51h
l5c51h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5c79h
l5c79h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5ca1h
l5ca1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5cc9h
l5cc9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5cf1h
l5cf1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5d19h
l5d19h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5d41h
l5d41h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5d69h
l5d69h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5d91h
l5d91h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5db9h
l5db9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5de1h
l5de1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5e09h
l5e09h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5e31h
l5e31h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5e59h
l5e59h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5e81h
l5e81h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5ea9h
l5ea9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5ed1h
l5ed1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5ef9h
l5ef9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5f21h
l5f21h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5f49h
l5f49h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5f71h
l5f71h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5f99h
l5f99h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5fc1h
l5fc1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l5fe9h
l5fe9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld b,c
	ld d,e
	ld d,e
	jr nz,l6086h
	jr nz,l6088h
	nop
	nop
	ex af,af'
	xor d
	ld a,(bc)
	xor d
	ld a,(bc)
	ld c,h
	rrca
	rrca
	inc b
	inc bc
	nop
	ld b,099h
	add hl,bc
	jr nz,l60bah
	ld (02621h),hl
	nop
	djnz l6080h
l6080h:
	djnz l6082h
l6082h:
	djnz l6084h
l6084h:
	djnz l6086h
l6086h:
	nop
	nop
l6088h:
	nop
	inc e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l60bah:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld c,(hl)
	ld b,c
	ld d,d
	ld b,l
	ld sp,02020h
	nop
	nop
	ld (bc),a
	jr nz,l6127h
	nop
	inc bc
l6127h:
	ld c,l
	ld c,h
	ld a,(bc)
	inc b
	ex af,af'
	nop
	ld (bc),a
	jr nz,l6170h
	jr nz,l6172h
	ld h,c
	ld h,c
	ld h,h
	inc b
	djnz l6138h
l6138h:
	djnz l613ah
l613ah:
	djnz l613ch
l613ch:
	djnz l613eh
l613eh:
	nop
	nop
	nop
	inc e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6170h:
	nop
	nop
l6172h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld c,b
	ld c,c
	ld c,b
	ld b,c
	ld d,h
	ld sp,02020h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld c,d
	ld b,a
	nop
	inc b
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	ld b,b
	nop
	inc b
	djnz l61f0h
l61f0h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6232h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6266h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,b
	ld l,c
	dec l
	ld l,b
	ld h,c
	ld (hl),h
	ld (00020h),a
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,a
	ld c,b
	nop
	inc b
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	ld h,c
	nop
	inc b
	djnz l62a8h
l62a8h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld h,c
	ld (hl),e
	ld (hl),e
	ld c,h
	ld l,a
	ld (hl),a
	jr nz,l6349h
l6349h:
	defb 0ddh,00dh,088h ;illegal sequence
	ex af,af'
	rst 38h
	rrca
	ld a,(bc)
	ld c,00ch
	nop
	ld a,(bc)
	defb 0ddh,00dh,088h ;illegal sequence
	ex af,af'
	rst 38h
	rrca
	ld (02622h),hl
	nop
	djnz l6360h
l6360h:
	djnz l6362h
l6362h:
	djnz l6364h
l6364h:
	djnz l6366h
l6366h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld c,(hl)
	ld b,c
	ld d,d
	ld c,h
	ld c,a
	ld d,l
	ld b,h
	nop
	nop
	ld (bc),a
	jr nz,l6407h
	nop
	inc bc
l6407h:
	ld c,a
	ld c,h
	dec c
	inc b
	ex af,af'
	nop
	ld (bc),a
	jr nz,l6450h
	jr nz,l6452h
	ld h,c
	ld h,c
	ld h,c
	inc b
	djnz l6418h
l6418h:
	djnz l641ah
l641ah:
	djnz l641ch
l641ch:
	djnz l641eh
l641eh:
	nop
	nop
	nop
	inc e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6450h:
	nop
	nop
l6452h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld c,(hl)
	ld b,c
	ld d,d
	ld b,l
	ld sp,02020h
	nop
	nop
	ld (bc),a
	jr nz,l64bfh
	nop
	inc bc
l64bfh:
	ld c,(hl)
	ld c,h
	dec c
	inc b
	ex af,af'
	nop
	ld (bc),a
	jr nz,l6508h
	jr nz,l650ah
	ld h,c
	ld h,c
	ld h,d
	inc b
	djnz l64d0h
l64d0h:
	djnz l64d2h
l64d2h:
	djnz l64d4h
l64d4h:
	djnz l64d6h
l64d6h:
	nop
	nop
	nop
	inc e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6508h:
	nop
	nop
l650ah:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld c,(hl)
	ld b,c
	ld d,d
	ld b,l
	ld sp,02020h
	nop
	nop
	ld (bc),a
	jr nz,l6577h
	nop
	inc bc
l6577h:
	ld c,e
	ld c,e
	ld a,(bc)
	inc b
	ex af,af'
	nop
	ld (bc),a
	jr nz,l65c0h
	jr nz,l65c2h
	ld h,c
	ld h,c
	ld h,(hl)
	inc b
	djnz l6588h
l6588h:
	djnz l658ah
l658ah:
	djnz l658ch
l658ch:
	djnz l658eh
l658eh:
	nop
	nop
	nop
	inc e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l65c0h:
	nop
	nop
l65c2h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld c,b
	ld c,c
	ld c,b
	ld b,c
	ld d,h
	ld sp,02020h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld c,b
	ld b,l
	nop
	inc b
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	ld b,b
	nop
	inc b
	djnz l6640h
l6640h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld l,(hl)
	ld h,c
	ld (hl),d
	ld h,l
	ld b,c
	ld l,h
	ld (hl),h
	nop
	adc a,b
	ex af,af'
	ld (hl),a
	rlca
	ld d,l
	dec b
	ld c,04dh
	ld c,h
	inc b
	ex af,af'
	ld b,b
	jr nz,l671fh
	jr nz,l6761h
	jr nz,l6714h
	ld h,c
	ld h,c
	inc b
	djnz l66f8h
l66f8h:
	djnz l66fah
l66fah:
	djnz l66fch
l66fch:
	djnz l66feh
l66feh:
	nop
	nop
	nop
	inc e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6714h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l671fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6761h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,b
	ld h,l
	ld h,c
	ld (hl),d
	ld (hl),h
	jr nz,$+34
	jr nz,l6799h
l6799h:
	call z,0cc0ch
	inc c
	ld h,(hl)
	ld b,00ch
	dec bc
	ex af,af'
	inc b
	dec c
	ld de,0dd20h
	dec c
	nop
	dec c
	nop
	ld hl,00061h
	nop
	nop
	nop
	nop
	nop
	ld (hl),a
	rlca
	ld hl,00000h
	nop
	djnz l67bbh
l67bbh:
	nop
	nop
	nop
	nop
	nop
	ld bc,00101h
	nop
	ld h,000h
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (bc),a
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	inc bc
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	ld (bc),a
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00101h
	nop
	inc e
	nop
	djnz l67f4h
l67f4h:
	djnz l67f6h
l67f6h:
	djnz l67f8h
l67f8h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld (hl),b
	ld l,h
	ld h,c
	ld (hl),e
	ld l,b
	jr nz,l6870h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld c,c
	ld c,c
	ld bc,00900h
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	ld h,c
	nop
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	ld b,b
	nop
l6870h:
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
	nop
	nop
	djnz l687eh
l687eh:
	nop
	nop
	nop
	nop
	nop
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld e,b
	ld d,b
	ld c,h
	ld c,a
	ld d,e
	ld c,c
	ld c,a
	ld c,(hl)
	nop
	nop
	rlca
	cp e
	ld a,(bc)
	xor d
	ld a,(bc)
	rrca
	rrca
	rrca
	nop
	ld c,000h
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
	inc b
	nop
	nop
	inc sp
	inc bc
	ld b,b
	nop
	nop
	inc e
	nop
	nop
	nop
	nop
	nop
	inc sp
	inc bc
	ld b,b
	ld hl,00040h
	nop
	nop
	dec b
	nop
	nop
	halt
	rlca
	ld hl,l4000h
	inc e
	nop
	nop
	nop
	nop
	nop
	ld h,(hl)
	ld b,040h
	ld b,b
	ld b,b
	nop
	nop
	nop
	rlca
	nop
	nop
	ld d,l
	dec b
	nop
	ld b,b
	nop
	inc e
	nop
	nop
	nop
	ld b,h
	inc b
	ld h,(hl)
	ld b,000h
	ld b,b
	nop
	jr l6961h
l6961h:
	nop
	inc b
	inc sp
	inc bc
	nop
	nop
	ld b,b
	ld b,b
	ld hl,01000h
	nop
	dec b
	jr nc,l6974h
	nop
	nop
	nop
	nop
l6974h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	djnz l6982h
l6982h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	djnz l698dh
l698dh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	djnz l6998h
l6998h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l69c1h
l69c1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l6a79h
l6a79h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l6b31h
l6b31h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6b6bh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l6be9h
l6be9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l6ca1h
l6ca1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l6d59h
l6d59h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l6e11h
l6e11h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l6ec9h
l6ec9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l6f81h
l6f81h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l7039h
l7039h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7053h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l70f1h
l70f1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l71a9h
l71a9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l7261h
l7261h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l7319h
l7319h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l73d1h
l73d1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l7489h
l7489h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l7541h
l7541h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l75f9h
l75f9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l76b1h
l76b1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l7769h
l7769h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l7821h
l7821h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l78d9h
l78d9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l7991h
l7991h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l7a49h
l7a49h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l7b01h
l7b01h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l7bb9h
l7bb9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l7c71h
l7c71h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l7d29h
l7d29h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l7de1h
l7de1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l7e99h
l7e99h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7f40h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7f48h:
	ld b,h
	ld h,l
	ld h,(hl)
	ld h,c
	ld (hl),l
	ld l,h
	ld (hl),h
	jr nz,l7f51h
l7f51h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7f7ah:
	nop
	nop
	nop
	nop
	nop
l7f7fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
