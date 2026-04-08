; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank14.asm /tmp/smanbow2_bank.bin

	org 04000h

	cp d
	ret c
	cp e
	xor l
	add a,b
	inc (hl)
	jp nz,0d8b9h
	sub 010h
	dec b
	cp c
	ret nc
	ld a,0f0h
l4010h:
	ld (08311h),a
	ld (00f32h),hl
	nop
	jp l5812h
	ret
	ld a,(hl)
	sub 008h
	ld c,a
	ld d,b
l4020h:
	push hl
	ld (hl),a
	jr l407bh
	add a,01eh
	ex af,af'
	ld e,a
	ld hl,0c229h
	call p,sub_7e80h
	dec hl
	cp d
	jp c,l57b0h
	inc hl
	cp e
	jp nc,l7e03h
	cp c
	ex af,af'
	inc sp
l403bh:
	ld (0040ah),a
	ld a,(0c151h)
	add a,d
	add a,d
	inc c
	ld e,b
	ld a,b
	add a,e
	ld b,l
	jp nc,09005h
	dec d
	jr c,l4093h
	ex af,af'
	ld (hl),a
	inc hl
l4051h:
	ld (hl),a
	ld e,e
	ld a,0c1h
	ld b,047h
	ld de,00007h
	add hl,de
	ld (hl),d
	ex af,af'
	jp c,l5832h
	cp (hl)
	pop bc
	ld (0c107h),a
	exx
	add hl,hl
	or d
	inc (hl)
	xor b
	ret nz
	pop bc
	dec hl
	sbc hl,de
	ret
	cp h
	ld de,0a610h
	inc c
	dec hl
	inc de
	add hl,bc
	ld (hl),024h
	inc hl
l407bh:
	cp 081h
	inc a
	jr z,$+27
l4080h:
	ld a,(0514ch)
	ld hl,(02fc0h)
	dec b
	or d
	jr nc,l4010h
	ld (l4a62h),a
	dec e
	sub 080h
	add a,h
	ld c,e
	dec (hl)
l4093h:
	ret
l4094h:
	jp 02008h
	ld (hl),a
	ld b,024h
	nop
	ld b,(hl)
	ret nz
	ld h,h
	cp c
	and b
	push hl
	ld h,000h
	jr nc,l410dh
	add hl,hl
	nop
	ld de,00b03h
	ld c,b
	add hl,de
	push hl
	ld l,a
	inc c
	dec bc
	add a,c
	nop
	ld (hl),h
	add hl,de
	and b
	ld l,b
	pop hl
	ld (bc),a
	ld c,098h
	call 005b4h
	pop hl
sub_40beh:
	xor l
	and c
	or b
	ld l,l
	ld b,(hl)
	sra b
	inc bc
	ld (bc),a
	jp c,l58d6h
	cp 0e3h
	jp nc,00104h
	dec hl
	cp 012h
	ld c,001h
	jr c,l40dbh
	call pe,00e30h
	pop hl
	ret c
l40dbh:
	ld c,h
	ld a,(03cdch)
	sub e
	add hl,de
	ret z
	ex (sp),hl
	add a,b
	dec a
	jp z,l58cdh
	ld a,c
	sbc a,b
	or 0c2h
	ld a,b
	sbc a,h
	rst 20h
	ld c,h
	ret
	ex af,af'
	add hl,sp
	ex af,af'
	ld e,b
	jr c,$+10
	ld h,c
	add a,a
	xor c
	nop
l40fbh:
	ld (hl),c
l40fch:
	in a,(066h)
	ld c,048h
	ld c,c
l4101h:
	daa
	ld (0c003h),a
l4105h:
	ld a,(l4700h)
	pop bc
	ld h,a
	ld a,(0c148h)
l410dh:
	ld l,a
	ld a,(hl)
	ret nz
	inc c
	inc hl
	ld e,(hl)
	inc hl
	ld c,(hl)
	ld de,07d23h
	ld (l7c0dh),a
	ld (00015h),a
	ld d,000h
	ld hl,l716fh
	add hl,de
	ld (hl),c
	ld a,(bc)
	dec hl
	ex de,hl
	ld bc,00910h
	xor l
	add a,b
	ld a,(hl)
	or a
	jr z,l414eh
	ld h,e
	add hl,bc
	inc b
	jr $+6
	ld e,d
	inc de
	inc b
	ld c,0d6h
	inc b
	add hl,bc
	inc b
	or b
	inc b
l4140h:
	inc b
	ret nz
	ex de,hl
	rlca
	ldir
	ret
	push hl
	ld de,0122bh
	call c,01490h
l414eh:
	inc bc
	add hl,de
	djnz l4197h
	ld sp,hl
	or c
	sbc a,h
	ld l,b
	ld h,l
	ld (0325ah),hl
	jp m,00692h
	ld sp,hl
	sbc a,e
	inc h
	ret m
	ld (bc),a
	push af
	and (hl)
	xor d
	di
	rlca
	nop
	call p,021c1h
	xor a
	ld e,h
	call 0048bh
	ld (0133ah),hl
	sub l
	nop
	ld b,a
l4176h:
	add a,a
	add a,b
	add a,012h
	ld (l5cbeh),a
	inc (hl)
	ld hl,011beh
	call sub_5a1bh
	dec b
	push bc
	nop
	cp 05ch
	ld a,018h
	ld (l5d00h),a
	inc l
	ld a,(0a708h)
	sub c
	add a,e
	nop
	sbc a,d
	ld d,b
l4197h:
	ld e,c
	dec a
	ld de,09538h
	ld bc,00106h
	ld a,c
	inc bc
	ld a,d
	ld (0c1f7h),a
	ld a,e
	ld d,e
	ld b,d
	ld b,c
	jp nz,0194dh
	xor l
	ld h,b
l41aeh:
	cp l
	ld e,c
	dec hl
	ld b,08ah
	jp nc,l4094h
	ld a,a
	jp c,l59b3h
	djnz $+18
	rst 30h
	inc hl
	dec bc
	push bc
l41c0h:
	ld b,00fh
	ld (0c5e5h),hl
	cp l
	jp nc,0d011h
	ld e,c
	defb 0ddh,0a0h,001h ;illegal sequence
	push bc
	and 07fh
	sbc a,b
	pop af
	ld (0445ch),hl
	add hl,de
	sbc a,h
	push af
	ld (03a5bh),hl
	adc a,h
	add a,b
	ld sp,l59e7h
	inc de
	dec a
	jp 008deh
	ld e,c
	ld bc,00003h
	or d
	sbc a,b
	pop hl
	ld de,046c6h
	inc bc
	and e
	ld l,07eh
	ret p
	ld c,(hl)
	ld e,h
	add a,034h
	call m,00404h
	ld e,l
	ex af,af'
	ld b,a
	push bc
	ld hl,08cfah
	exx
	or l
	and d
	add a,e
	ld b,(hl)
	add a,b
	add a,a
	ld bc,0e1c1h
	inc hl
	djnz $-84
	ld a,(01294h)
	add a,099h
	inc a
	inc hl
	rst 10h
	ld b,e
	pop bc
	djnz l41aeh
	ld a,0b2h
	inc c
	cp (hl)
	dec l
	add a,01ah
	and h
	dec d
	rst 8
	dec d
	ld e,h
	ld (007d3h),a
	defb 0fdh,0cah,0efh ;illegal sequence
	inc b
	add hl,bc
	ld h,0ebh
	ld e,h
	ld (015edh),hl
sub_4235h:
	and c
	pop af
	inc b
	nop
	ld (l4dd4h),a
	ld b,0f6h
	ld e,d
	ld hl,l5382h
	adc a,h
	ld a,03fh
	ld (024e2h),a
	sbc a,b
	ret c
	xor a
	rra
	jp c,0dfcah
	jp nc,05a63h
	dec b
	jp 08736h
	ld l,c
	sbc a,c
	ld sp,0f304h
	sub h
	add hl,sp
	inc bc
	ld d,d
	rlca
	sbc a,(hl)
	ld h,l
l4262h:
	ld b,0b6h
	ret nz
	ld e,d
	call sub_5b11h
	call sub_5906h
	ld l,d
	call sub_5ab7h
	and h
	ld h,e
	inc a
	and b
	inc l
	ld l,e
	ld (hl),b
	ret
	dec l
l4279h:
	ld hl,0a04bh
	cp h
	inc d
	ld (hl),l
	jp p,020cch
	sbc a,b
	ld c,l
	ld a,a
	and b
	jr l42a4h
	cp 006h
	jr z,l42afh
	ld b,0feh
	rlca
	jr z,l42bfh
	cp 0bfh
	ld a,(bc)
	rst 8
	ld (03065h),a
	xor 020h
	ld l,d
	ld hl,0e1cdh
	dec hl
	rst 8
	cp h
	ld (de),a
	inc c
	and c
l42a4h:
	add hl,sp
	ld b,a
	ret
	xor d
	ld h,e
	ld hl,05d09h
	add hl,de
	rlca
	ret
l42afh:
	ld hl,020dch
	ld de,l61a2h
	pop bc
	ld (bc),a
	inc h
	rst 18h
	ld (bc),a
	and a
	ld (bc),a
	jp p,05c26h
l42bfh:
	xor 0a6h
	call nz,0e310h
	ld (bc),a
	djnz l430bh
	ld e,l
	and e
	scf
	ld b,a
	ld e,e
	rst 0
	ld b,03ah
	rst 28h
	ld l,a
	ld (06ff0h),a
	jp po,03a35h
	call 0fe20h
l42dah:
	ld e,d
	jr z,l42e6h
	ld a,0feh
	ld a,h
	jr z,l4279h
l42e2h:
	inc b
	sbc a,(hl)
	jr z,l431ch
l42e6h:
	ret nc
	ld c,c
	ld hl,l7e10h
	push af
sub_42ech:
	add hl,de
	jp c,0c174h
	and d
	defb 0edh ;next byte illegal after ed
	add a,055h
	push af
	inc a
	rla
	ld (hl),05bh
	cp a
	dec de
	ld hl,l5eebh
	ret pe
	inc h
	ccf
	ld b,a
l4302h:
	ld c,h
	ld a,(0800fh)
	ld b,a
	ld a,(de)
	cp 0c0h
	ret nc
l430bh:
	xor e
	sbc a,c
	jp z,l5b29h
	sbc a,l
	ld a,(bc)
	ld l,d
l4313h:
	ld e,e
	sub (hl)
	ld b,d
	call 09985h
	ld l,d
	dec b
	add a,a
l431ch:
	ld (hl),d
	inc b
	jr nz,$+60
	ld l,d
	ld d,(hl)
	add a,b
	jr c,l4313h
	ret
l4326h:
	sbc a,h
	call c,0ed26h
	ld e,e
	ex (sp),hl
	or e
	jp p,02a0dh
	rla
	inc d
	call nz,0c369h
	call nz,0d65fh
	out (0c6h),a
	ld h,(hl)
	ld h,a
	inc l
	ld l,c
	ld a,(bc)
	ex de,hl
	pop hl
	jp sub_593bh+1
	exx
	sbc a,e
	dec h
	adc a,(hl)
	ld hl,095feh
	sub d
	ld d,c
	cp 079h
	sbc a,e
	ld d,h
	add a,0a3h
	rst 30h
	djnz l437ch
	inc bc
	ret
	rlca
l4359h:
	jr z,l4359h
	or h
	jr c,$-38
	ld e,e
	ex af,af'
	ld d,h
	inc bc
	ld d,0cch
	ld d,(hl)
	ld d,003h
	adc a,e
	rlca
	ld b,b
	jr nz,l436eh
	rst 28h
	ld (de),a
l436eh:
	ld e,h
	nop
	ld (bc),a
	jr nz,$+4
	call nz,sub_6008h
	ld (bc),a
	add a,b
	sub e
	ld de,00200h
l437ch:
	jr nz,$+25
	ld l,b
	xor l
	ld d,d
	ex af,af'
	ld h,h
	ld (bc),a
	djnz $+4
	ld c,c
	jr l438bh
	jr nz,l438dh
l438bh:
	jr z,l438fh
l438dh:
	ld d,030h
l438fh:
	jr l436eh
	ld b,c
	ld (bc),a
	ld h,b
	djnz l43d0h
	ld (hl),b
	dec b
	ld (00288h),hl
	and b
	jr l43d0h
	add a,b
	ld (bc),a
	ld l,d
	djnz l43ffh
	ld a,b
	ex af,af'
	ld a,(hl)
	adc a,c
	ex af,af'
	ld a,(hl)
	ld a,b
	ld (bc),a
	sub b
	ld (bc),a
	inc bc
	xor b
	jr $-97
	nop
	ld e,h
	ld d,b
	ld b,h
	and b
	djnz $-65
	ex af,af'
	defb 0ddh,0aah,002h ;illegal sequence
	pop af
	pop hl
	nop
	ld bc,0c101h
	nop
	ret nc
	dec bc
	xor h
	ret po
	inc bc
	ld h,d
	ld (bc),a
	ld (de),a
	sbc a,c
	cp b
	ld c,(hl)
	inc e
	ld e,b
l43d0h:
	jr $+28
	xor b
	ret nc
	rst 30h
	ld bc,0eb80h
	inc l
	ld l,05ch
	ld (bc),a
	dec e
	nop
	pop hl
	inc bc
	add hl,hl
	nop
	ld b,002h
	ld b,075h
	nop
	sbc a,c
l43e8h:
	nop
	jr $-110
	jr nz,l43f1h
	djnz $-54
	dec de
	rla
l43f1h:
	inc c
	nop
	jp z,0464ah
	scf
	xor d
	ld c,a
	inc bc
	ld (de),a
	dec sp
	push hl
	ld e,c
	inc bc
l43ffh:
	ld e,c
	cp e
	ld c,d
	inc l
	sbc a,e
	ld c,049h
	cp e
	inc (hl)
	ld (hl),a
	pop hl
	inc l
	rrc c
	ld c,09fh
	nop
	dec (hl)
	ld a,(bc)
	cp b
	ld (hl),d
	jr nz,$+118
	ld e,l
	jp z,0a03fh
	ret z
	ld d,e
	ld e,l
	or b
	jp z,0b762h
	sub b
	ld a,r
	call 06828h
	ld h,d
	or c
	ld bc,l642dh+1
	call sub_5ef0h
	call 016d4h
	ld e,002h
	ld h,d
	or 026h
	ld h,(hl)
	add a,b
	ld (l5f02h),a
	sub l
	dec d
	ld e,l
	ld e,l
	ld (08f06h),a
	exx
	xor l
	ex af,af'
	jp nc,l5d7bh
	sbc a,a
	adc a,l
	cp 0a0h
	ld b,051h
	inc bc
	jp 0a306h
	inc b
	cp 014h
	ld b,059h
	ld b,0a9h
	ld (l461ch),hl
	dec de
	ld e,l
	add a,h
	jp z,l5803h
	or d
	ld a,(bc)
	ld b,0c3h
	ld c,e
	dec c
	call nc,0042bh
	ld e,h
	ld h,d
	ld (de),a
	ld a,(de)
	ld e,l
	ld b,(hl)
	ld h,c
	and (hl)
	inc bc
	cp a
	ld e,l
	and b
	ld b,b
	jr $+95
	ld b,(hl)
	dec c
	ld a,0bah
	add a,b
	ld b,a
	rst 10h
	ld b,d
	dec a
	cp b
	ld hl,00584h
	ld a,(l5d19h)
	sbc a,0ceh
	add hl,de
	jr l4501h
l4490h:
	inc d
	inc a
	inc d
	in a,(03dh)
	inc d
	ld (hl),c
	ld b,(hl)
	cp 09eh
	ret m
	ld a,(bc)
	out (049h),a
	ld de,0d6c2h
	pop bc
	bit 1,a
	ld b,0d5h
	add a,b
	call p,0cb5dh
	ld b,l
	ld d,a
	adc a,a
	ld b,091h
	adc a,l
	ld d,a
	ld a,b
	ld e,d
	jp c,0fea0h
	ld d,b
	jp c,01305h
	ld e,(hl)
	ld a,r
	and 014h
	ld b,066h
	xor b
	ld d,(hl)
	inc de
	xor e
	inc hl
	jp nc,018b4h
	ret
	ld (de),a
	inc bc
	dec c
	jp nz,l5e1fh
	xor a
	ld de,03a2ah
	dec d
	ccf
	call z,01944h
	ld d,b
	ld c,e
	add a,e
	inc a
	jp c,l5e30h
	inc b
	dec sp
	add a,d
	ld c,b
	ld e,(hl)
	sbc a,a
	jp po,03207h
	dec b
	ld l,c
	ret nz
	inc hl
	ld a,028h
	ld h,a
	adc a,c
	ret
	and c
	dec h
	sbc a,e
	ld h,h
	add hl,hl
	inc h
	inc b
	ld e,083h
	ld l,h
	ld e,d
	ld e,(hl)
	ld e,014h
	inc (hl)
l4501h:
	nop
	sub e
	sub 006h
	ld e,a
	add a,018h
	ld a,(02157h)
	sbc a,e
	ld (hl),00eh
	sub c
	add a,e
	ld e,d
	ld e,(hl)
	and 051h
	inc b
	jp 02700h
	ld e,l
	sub b
	jp z,l5e7ch
	ld (00691h),a
	add a,c
	sub a
l4522h:
	rlca
	ld a,(bc)
	call sub_5e89h
	jp nc,0f869h
	ret
	ret z
	rst 0
	add a,05dh
	xor (hl)
	ld (hl),h
	adc a,07eh
	dec de
	cp d
	ret nc
	cp e
	rst 18h
	dec sp
	ld b,h
	sbc a,d
	ld c,0a3h
	ld e,(hl)
	sbc a,d
	add a,b
	ld a,(bc)
	jp z,l5ea9h
	ld (hl),005h
	ret p
	adc a,(hl)
	ret p
	dec hl
	ld e,b
	ld a,098h
	inc bc
	ld (hl),e
	ld e,a
	or 00eh
	ld a,0d3h
	dec d
	ex af,af'
	inc b
	ld a,a
	add a,l
sub_4559h:
	ret nc
	ld a,(l6916h)
	pop hl
	rst 30h
	push bc
	or b
	jp c,l493ah
	dec e
	ld d,h
	ld (0c103h),a
	sub d
	jp po,0831eh
	ld d,d
l456eh:
	inc bc
	ld a,b
	ret nz
	adc a,h
	call 00f32h
	dec b
	ld l,094h
	dec l
	ld sp,0fe6bh
	ld sp,03108h
	ld (004d0h),hl
	sbc a,a
	jp 010e6h
	ret z
	and d
	ret po
	add a,00fh
	cp 023h
	and 0d0h
	xor 051h
	ld bc,l51b7h+2
	ld e,b
	ld l,l
	jr l45f7h
	ld b,094h
	ld a,(02103h)
	nop
	ld d,e
	ld e,a
	jp 002e9h
	ld a,(l642dh)
	adc a,h
	call 0cf62h
	cp 0aah
	inc sp
	add hl,de
	ld d,b
	adc a,c
	inc h
	jp nc,02114h
	ld l,h
	ld (hl),e
	ld a,(de)
	call z,05080h
	inc bc
	ld (hl),c
	dec b
	ld (hl),e
	jr nz,l45c6h
	jr nc,l45c9h
	nop
	ld (hl),b
	inc b
	ld (hl),b
l45c6h:
	ld de,07706h
l45c9h:
	rlca
	call m,01714h
	ld bc,03b05h
	ld b,l
	add a,h
	dec c
	rlca
	ld (hl),b
	nop
	rra
	ld (hl),l
	rla
	rlca
	halt
	rlca
	rrca
	rra
	jp nc,l4740h
	ld (bc),a
	ld b,c
	ld h,b
	inc b
	rra
	rst 8
	jp z,09328h
	adc a,c
	adc a,c
	and 0efh
	dec d
	dec b
	add a,c
	ld (de),a
	sub h
	sbc a,d
	jr nz,$+8
	rst 38h
l45f7h:
	jp z,0a4aah
	jp z,03a18h
	ld b,e
	ld e,a
	rst 8
	ld b,h
	inc bc
	ld (00263h),a
l4605h:
	add a,e
	ld c,c
	ld e,a
	and b
	inc c
	adc a,c
	ld b,h
	add hl,bc
	ld h,h
	ld (bc),a
	rla
l4610h:
	add a,h
	ld e,a
	xor 013h
l4614h:
	jp z,004cfh
	rlca
	inc b
	add hl,de
	ret
	cpl
l461ch:
	push hl
	add hl,hl
	inc b
	ld c,c
	ex af,af'
	ld hl,l4a87h
	inc bc
	ld b,b
	ld (l5d22h),hl
	in a,(046h)
	xor 0d8h
	ld c,d
	rlca
	ret
l4630h:
	ld l,l
	sbc a,(hl)
	ld (hl),h
	jp z,l4e00h
	ld h,b
	sbc a,d
	inc b
	sub 00eh
	ld (0eaech),a
	ld d,e
	jp pe,03a18h
	dec h
	ld de,l5024h
	ld h,b
	push hl
	ld b,l
	add a,003h
	ld l,b
	inc bc
	ld sp,00389h
	rst 0
	inc bc
	adc a,h
	defb 0edh ;next byte illegal after ed
	inc bc
	ld hl,l6110h
	inc bc
	inc sp
	ld h,c
	ret
	pop hl
	add hl,sp
	ld c,c
	ld d,d
	xor b
	jp z,l52cfh
	ld l,0d9h
	nop
	ld (l5d26h),a
	jp z,l618dh
l466dh:
	ld a,066h
	ld (bc),a
	inc c
	ld a,(bc)
	rrca
	jp l6167h
	jr nz,l468eh
	nop
	jr nz,l4630h
	ld b,020h
	sbc a,d
	dec d
	dec (hl)
	inc bc
	inc c
	add hl,bc
	ld (0eaafh),hl
	ld (0206dh),hl
	ld (hl),h
	ld d,(hl)
	jr nz,$+6
	rst 10h
l468eh:
	jr nz,l4610h
	jr nz,l4614h
	inc bc
	call pe,06026h
	ret z
	ld h,c
	or a
	ld h,b
	jr $-102
	dec e
	ex af,af'
	ret nz
	dec e
	call 06241h
	jp 0d273h
	ld l,a
	or 039h
	ld a,(0b389h)
	inc c
	ld b,00ch
	xor l
	inc bc
	inc e
	ld c,a
	call m,0791ch
	ld e,(hl)
	cpl
	ld (hl),h
	ld b,0cah
	ld (hl),h
	ccf
	dec b
	dec h
	inc de
	ld l,b
	jp l7e65h
	ld (00757h),hl
	ld a,e
	ld h,a
	jp 022b3h
	sub h
	sub c
	ld (hl),c
	inc b
	ld h,d
	ld (09167h),hl
	ld a,(0cc8eh)
	add a,a
	ld hl,l632eh
	add a,(hl)
	ld hl,01f21h
	dec b
	or (hl)
	and e
	cpl
	inc h
	and a
	inc e
	ld e,e
	djnz l471fh
	ld c,h
	dec b
	push bc
	ld d,e
l46edh:
	ld de,l6a5bh
	dec bc
	ld b,038h
	adc a,b
	jr l476fh
	or l
	inc c
	cp c
	call nz,sub_700bh+1
	jp po,0a60ch
	pop hl
l4700h:
	dec b
	out (005h),a
	jp 01897h
	pop hl
	dec (hl)
	nop
	ld h,h
	dec b
	pop af
	ld e,0e6h
	dec a
	pop hl
l4710h:
	inc c
	ld e,018h
	jp 0050fh
	ld a,d
	ld (hl),b
	ld a,h
	ld e,e
	rla
	and d
	ld a,(l5d1fh)
l471fh:
	call nz,0f8c9h
	ld e,h
	and h
	ld b,d
	ld (de),a
	ld h,d
	rst 20h
l4728h:
	sub b
	jr c,l46edh
	or d
	jp z,01403h
	ld a,(0c240h)
	pop hl
	ld hl,00640h
	add hl,sp
	jp nz,0e1d6h
	inc d
	inc b
	ld (03d4ch),a
	ld (bc),a
l4740h:
	ld b,c
	or d
	inc bc
	djnz $-46
	ld a,0f0h
	inc e
	ld a,(bc)
	ld (0023ch),a
	dec de
	adc a,c
	exx
	rra
	ld a,0cbh
	ret nz
	ld c,c
	inc hl
	ld b,03eh
	adc a,h
l4758h:
	daa
	jp nz,090e0h
	add a,017h
	ret p
	daa
	ld d,(hl)
	ret
	jp nc,0d2e6h
	ld e,b
	or 067h
	call nc,029b4h
	ld a,e
l476ch:
	ld h,d
	scf
	inc c
l476fh:
	ld (00a0ah),a
	ld a,(l6266h)
	sbc a,015h
	add a,(hl)
	add hl,bc
	ld b,09bh
	ld de,l62b0h
	sub l
	jp m,l66b4h
	ld h,d
	sub e
	inc bc
	sbc a,d
l4786h:
	ld h,d
	ld hl,l6379h
	dec c
	sbc a,d
	ld a,c
	ld (hl),b
	jr z,$-36
	cp a
	ld hl,03e09h
	inc l
	dec h
	ld (022b8h),a
	ret c
	add hl,hl
	ld c,c
l479ch:
	scf
	ld h,0b5h
	add a,c
	inc l
	nop
	dec c
	dec b
	add a,h
	sbc a,b
	ld a,(0c638h)
	adc a,d
	sbc a,(hl)
	inc b
	inc sp
	ld a,(02cb8h)
	ld (0fe04h),hl
	inc b
	ret nc
	adc a,e
	ld h,d
	ld h,a
	daa
	xor l
	jp po,00c33h
	ld b,a
	push hl
	ld a,(bc)
	cp b
	ret c
	jp pe,0b88ch
	ret nc
	ld c,h
	add a,e
	inc c
	ld bc,0c6c2h
	ld a,(bc)
	ld c,008h
	ld e,0b8h
	inc hl
	ld c,b
	ld (0dabah),a
	inc hl
	push de
	and 0cah
	ld l,006h
	call nz,06671h
	inc b
	inc (hl)
	ld h,h
	ld l,b
	ld b,(hl)
	ld (0b646h),a
	and b
l47e8h:
	ld h,0b0h
	ex af,af'
	ld hl,(l604eh)
	ld l,(hl)
	halt
	inc bc
l47f1h:
	add a,h
	ld sp,03800h
	ld bc,0a42eh
	call 083f4h
	ld b,h
	jr c,l47feh
l47feh:
	inc b
	adc a,a
	ld (hl),d
	nop
	cp 004h
	and c
	nop
	add a,e
	inc bc
	ld c,058h
	add a,01dh
	inc h
	dec e
	call z,0610eh
	ld c,09ch
	inc c
	inc a
	out (0c7h),a
	rst 28h
	jr nc,l479ch
	pop af
	dec e
	ld h,b
	call c,0811dh
	nop
	ld b,l
	inc sp
	nop
	ld (de),a
	ld bc,093feh
	ld c,0d5h
	sbc a,b
	ld c,000h
	ld (hl),h
	inc bc
	call z,03d00h
	nop
	inc e
	dec (hl)
	nop
	ld b,(hl)
	inc l
	jp (hl)
	ld h,d
	ld h,l
	ld c,048h
	ld c,03bh
	ld c,b
	xor e
	and b
	ld (bc),a
	jp po,l5400h
	call nz,06cbah
	jr l48c2h
	dec d
	and l
	nop
	inc bc
	xor a
	nop
	ld (hl),000h
	dec e
	nop
	dec de
	and 01dh
	ld c,063h
	or b
	ld c,01ch
l485dh:
	ld c,097h
	and b
	pop bc
	ld e,c
	ld c,075h
	ld (02c1eh),a
	add a,(hl)
	add hl,sp
	ld sp,0b602h
	dec e
	ex af,af'
	jp nc,03be9h
	adc a,h
	cp (hl)
	dec e
	ld h,e
	and (hl)
	dec e
	inc d
	dec e
	sub (hl)
	xor h
	ld c,031h
	cp h
	ld c,010h
	ld c,0cfh
	ld e,c
	ld (hl),e
	rlca
	ld a,(de)
	ld c,d
	ld h,e
	pop de
	or h
	jr nc,l485dh
	ld (hl),l
	ex (sp),hl
	cp d
	ret z
	push de
	sbc a,d
	ld (de),a
	jp nz,l6447h
	cp b
	sub b
	ex af,af'
	ld (l65f1h),a
	sub b
	xor h
	jp p,0f065h
	add a,e
	dec (hl)
	ld l,d
	ld d,e
	ld a,(0ce0ah)
	ld sp,00355h
	dec de
	inc bc
	add a,e
	ld e,h
	ld h,h
	ret
	and d
	ld b,e
	ld bc,0b19ah
	ld b,h
	ld e,d
	daa
	inc b
	ld e,0cdh
	sbc a,002h
	cp l
	ret
	di
	ld h,l
l48c2h:
	or a
	rlc l
	dec de
	jp nz,03d87h
	sub a
	cp (hl)
	ld a,l
	jp 03440h
	ld b,a
	add a,a
	add a,a
	add a,b
	ld d,064h
	nop
	sub h
	add hl,bc
	ld e,066h
	add hl,de
	ld a,(hl)
	or b
	add hl,de
	jp nz,039a2h
	ld e,(hl)
	sub h
	sbc a,e
sub_48e4h:
	ld d,006h
	ld h,(hl)
	dec d
	rra
l48e9h:
	nop
	ld b,a
l48ebh:
	call sub_64b2h
	inc hl
	djnz l48ebh
	jp po,0c2a8h
	add a,b
	rla
	ld h,l
	ld a,(004f4h)
	ld h,l
	inc hl
	add a,(hl)
	ld (007fbh),a
	push af
	push de
	rlca
	defb 0fdh,004h,031h ;illegal sequence
	ex af,af'
	ld a,b
	jp nz,031d0h
	inc d
	cp 016h
	adc a,h
	jp nz,006d7h
	ex (sp),hl
	dec bc
	rst 30h
	ld (de),a
	and 0c2h
	jp nz,031e4h
	dec bc
	ld (hl),001h
	dec hl
	ld a,(hl)
	ld (hl),l
	sbc a,048h
	ld a,l
	pop hl
	di
	ld a,(020e6h)
	rst 38h
	ret nc
	ld a,c
	cp 065h
	exx
	ld a,(03384h)
	cp 0ech
	ld hl,0dc25h
	and c
	ret pe
	exx
l493ah:
	jr nz,$+14
	add a,014h
	ld (hl),a
	ld (hl),c
	ld (bc),a
	dec d
	ld h,l
l4943h:
	ld e,003h
	sbc hl,de
	call m,01920h
	inc hl
	ret
	ld e,018h
	inc b
	add hl,de
sub_4950h:
	ret
	jr z,l48e9h
	ld h,b
	jp 0ee35h
	jr nz,l498bh
	or c
	inc b
	jp z,08222h
	adc a,h
	adc a,d
	ld b,a
	ld c,08ah
	ld (bc),a
l4964h:
	xor a
sub_4965h:
	ld (hl),a
	inc hl
	nop
	ld b,h
	ld (hl),c
	ld (bc),a
	djnz l4964h
	rst 0
	ld l,b
	ld h,(hl)
l4970h:
	ld a,0a0h
l4972h:
	ld b,h
	ld (03e8fh),a
	ld (0325ah),hl
	adc a,h
	call nz,08cb5h
	or d
	ld c,c
	ld a,(09d91h)
	push af
l4983h:
	inc bc
	defb 0ddh,011h,0c2h ;illegal sequence
	ld h,a
	ld de,00234h
l498bh:
	ld de,0bfcdh
	ld e,d
	ld h,l
	jp po,0072ch
	jp nc,l6547h
	ret m
	or (hl)
	dec d
	ld hl,(0993fh)
	inc l
	cp e
	ld h,l
	ex de,hl
	and a
	inc bc
	add hl,bc
	ld c,a
	set 4,b
	ld d,a
	ld a,b
	sub d
	ld h,b
	add a,0e1h
	cp l
	ld e,065h
	ld a,c
	add a,0ebh
	jr nz,l4972h
	ld (hl),d
	add a,b
	jp nz,01011h
	sbc a,c
	rst 30h
	rlca
	push af
	jr l4970h
	dec a
	ld h,l
	add hl,de
	and a
	ld bc,021ebh
	cp h
	ld h,l
	ld bc,l6082h
	ldir
	ret
	and b
	sub 064h
	ld h,h
	adc a,(hl)
	call nc,sub_5222h
	jp z,l57cbh
	adc a,c
	di
	jp (hl)
	adc a,(hl)
	ld (l74e6h+2),hl
	ld h,c
	ret m
	sbc a,a
	push de
	dec de
	ld a,(bc)
	adc a,d
	add a,060h
	inc b
	or l
	call m,000e4h
	ld bc,09d08h
	rst 38h
	jp po,0c50ah
	dec hl
	ex de,hl
	add a,h
	inc bc
	rst 38h
	nop
	ld bc,0ca14h
	ld bc,l4efdh
	jr nz,l4a5dh
l4a03h:
	rrca
	dec bc
	call pe,00f61h
	inc b
	pop af
	call pe,08604h
	inc d
	pop af
	inc b
	jr $+32
	ld e,004h
	or 061h
	inc hl
	inc b
	jp po,00419h
	add a,(hl)
	defb 0ddh,0fbh,009h ;illegal sequence
	or b
	jp po,00504h
	defb 0ddh,0c6h,004h ;illegal sequence
	inc hl
	add hl,bc
	sbc a,l
	ld e,005h
	ld (000fch),hl
	ld b,b
	call sub_6783h
	call 0523ch
l4a35h:
	ld h,a
l4a36h:
	or a
	xor (hl)
	ret nz
	xor e
	ld c,(hl)
	ld h,(hl)
	cp 0deh
	dec b
l4a3fh:
	jp nc,l4522h
	call nc,0210fh
	ld h,a
	ld b,00dh
l4a48h:
	call m,0668ch
	inc hl
	nop
	inc bc
	inc de
	inc de
	djnz $-9
	ret
	ld a,(de)
	jr nz,l4a91h
	sbc a,l
	ld (bc),a
	ld c,012h
	jp nz,0e497h
l4a5dh:
	ld b,b
	ld (iy-07ch),02bh
l4a62h:
	cp h
	pop bc
	ld c,c
	sub c
	and 0dbh
	ld (de),a
	ld (de),a
	and d
	ld d,b
	rrca
	ld c,a
	ld b,c
	add a,a
	nop
	sub c
	inc de
	ld (de),a
	pop af
	call 0ae17h
	call 001ffh
	cp b
	ld b,001h
	add hl,sp
	ld bc,00dffh
	ld (hl),a
	rst 38h
	dec c
	rrca
	cp h
l4a87h:
	ld b,0dch
	ld c,016h
	di
	ld b,00dh
	sbc a,h
	dec d
	ld (hl),c
l4a91h:
	dec c
	ld b,0bch
	jr c,l4b06h
sub_4a96h:
	dec bc
	rst 38h
	ei
	dec de
	ld a,000h
	and b
	call 06747h
	ld hl,0e3c8h
	ld b,003h
	inc hl
	jp 00756h
	ld b,h
	jp nz,013ebh
	add a,d
	ld h,057h
l4ab0h:
	call po,sub_5f22h
	ret c
	jr nz,l4b34h
	cp d
	inc hl
	jp c,l6d02h
l4abbh:
	ld h,a
	sub 007h
	cp d
	jp nc,03505h
	ld a,(hl)
l4ac3h:
	cp e
	ld a,(bc)
	ld c,005h
	ld de,l6773h
	ex de,hl
	add a,l
	djnz $-26
	sbc a,l
	dec bc
	rst 8
	adc a,e
	ld b,c
	ld (hl),003h
	dec hl
	ret pe
	ld b,(hl)
	add a,(hl)
	ld (hl),d
	ld a,01bh
	dec c
	ld (l403bh),a
	sub d
	jr z,l4ab0h
	dec h
	and d
	ld h,a
	sub b
	sub h
	ld a,(03d11h)
	pop bc
	dec d
	jp nz,l678eh
	sbc a,b
	jr z,l4abbh
	ld l,c
	add a,087h
l4af6h:
	cp d
	ld b,c
	xor (hl)
	ld h,a
	adc a,e
	jr z,l4b10h
	jr $+73
	ld a,(de)
	add a,b
	add a,h
	nop
	ld c,a
	push hl
	dec de
l4b06h:
	ld hl,l66b1h
	add hl,bc
	ld d,e
	ld c,(hl)
	jp nc,0c500h
	ld h,a
l4b10h:
	dec c
	inc hl
	ld b,(hl)
	ld a,(bc)
	pop hl
	ld a,(hl)
	add a,b
	ld (hl),a
	ret p
	add a,b
	jr l4af6h
	ret po
	ld h,a
	cp 0c0h
	inc hl
	jp nc,l73e0h
	add a,c
	ld (hl),a
	cp c
	ld d,d
	rlca
	ld hl,(0c92bh)
	xor c
	ex af,af'
	dec hl
	ld (hl),a
	ld (de),a
	ret
	xor d
	add a,b
l4b34h:
	adc a,068h
	call 005bdh
	ld hl,l4758h
	ret pe
	ex af,af'
	add a,b
	ld a,h
sub_4b40h:
	ld bc,0724eh
	ld d,00fh
	jp z,00b04h
	ld l,b
	dec a
	ld bc,008dbh
	ld (008e0h),a
	ld (hl),a
	ld (hl),e
	dec d
	ld d,02ah
	ld (hl),b
	pop de
	ld a,(bc)
	ld a,d
	ld (09649h),a
	adc a,l
	ld (0a832h),a
sub_4b60h:
	ld c,d
	or l
	sub c
	dec b
	adc a,00dh
	ld a,(bc)
	ld (0fd09h),a
	out (00dh),a
	jp nz,0a092h
	ld l,b
	ld de,0018eh
	and (hl)
	or 004h
	ld a,070h
	ld (0af76h),a
	sbc a,h
	push bc
	adc a,h
	sbc a,(hl)
	djnz $+52
	ld (0305dh),hl
	ld e,(hl)
	ld (08248h),a
	ld (bc),a
	ld (bc),a
	ld e,a
	ld (00293h),a
	ld b,(hl)
	sub h
	ld (bc),a
	call pe,0955fh
	jr z,l4ba9h
	ld l,c
	ld (01444h),a
	ld (bc),a
	dec d
	ld l,c
	daa
	ld (de),a
	sub d
	ld b,016h
	ld (bc),a
	inc bc
	dec d
	ld c,e
	jr nz,l4bd2h
	ld a,(de)
l4ba9h:
	ld (bc),a
l4baah:
	and l
	adc a,l
	ei
	sub 066h
	cp 0efh
	call nz,032a1h
	inc hl
	ld (bc),a
	ld c,l
	di
	or a
	jp (hl)
	or l
	ret pe
	ld a,095h
	ld l,h
	jr z,l4bc5h
	push hl
	adc a,c
	dec de
	inc c
l4bc5h:
	inc e
	rlca
	ex af,af'
	ld e,032h
	jr l4bd0h
	ld c,e
	ld (082a3h),a
l4bd0h:
	sub h
	ld (hl),b
l4bd2h:
	daa
	ld e,l
	ld d,d
	ld hl,024ach
	ld a,(de)
	xor (hl)
	sub b
l4bdbh:
	cp h
l4bdch:
	ei
	ld a,(l5708h)
	pop bc
	cp 002h
	dec e
	jp c,004bbh
	ld l,b
	ld a,050h
	ld (01d1eh),a
	rst 38h
	ld a,(01d32h)
	add a,d
	inc l
	sub 004h
	rst 18h
	inc b
	ld c,06ah
	call sub_6917h
	ld b,0c6h
	ld e,d
	dec b
	rst 18h
	dec b
	call z,032c3h
l4c05h:
	res 7,b
	rst 0
l4c08h:
	pop de
	jp 0008ch
l4c0ch:
	ld b,008h
	jp c,l68edh
	inc l
	cp 006h
	nop
	ld b,016h
	jp 068f1h
	ret nc
	ld e,b
	ld a,041h
	or a
	adc a,d
	ld l,e
	jp z,l40fch
	dec sp
	add hl,sp
l4c26h:
	and 071h
	ld c,a
	inc c
	ld a,(bc)
	jp c,l690bh
	ld c,005h
	ld h,072h
	ld (l7236h),a
	xor a
	or d
	ld a,(0b78ah)
	or 04ch
	ld (de),a
	ld d,c
	ld c,c
	cpl
	rlc b
	cp 003h
	jp c,l6932h
	call 01104h
	ld e,a
	call 00295h
	ld c,d
	ld e,(hl)
	djnz $-101
	rst 18h
l4c53h:
	ld sp,003f1h
	adc a,e
	inc bc
	adc a,h
	ld l,d
	inc bc
	ld h,e
	ld c,d
	inc bc
	ld b,e
	rst 18h
	push de
	ld l,c
	out (0ech),a
	push bc
	rst 28h
	add a,019h
	inc h
	add hl,sp
	ret
	xor h
	sbc a,l
	rst 28h
	dec d
	ld (hl),b
	ld c,l
	ret m
	xor c
	ld a,(l6af7h)
	dec h
	ld b,005h
	or 005h
	add a,e
	sub 0a6h
	ld (059f4h),hl
	add hl,sp
	pop af
	pop bc
	cp 083h
	push af
	pop bc
	ret pe
	inc sp
	cpl
	inc a
	jr nz,l4ce1h
	and b
	jr nz,l4c93h
	jr nz,l4c9dh
l4c93h:
	ld hl,0dc3ah
	inc bc
	ld (de),a
	ld a,044h
	ld de,085edh
l4c9dh:
	ld (hl),a
	ld sp,hl
	ret nz
	call m,02321h
	ld c,c
	ld (09a30h),hl
	pop bc
	adc a,h
	ld (bc),a
	dec c
	ld hl,l7510h
	call 0cb33h
	ld h,e
	or e
	ld c,b
	ld c,080h
	inc bc
	ld hl,l74e0h
	pop bc
	ld c,0cdh
	ld a,a
	ld l,l
	ld d,h
	sbc a,c
	ld b,l
	sbc a,l
	ld b,c
	ld d,b
	inc bc
	jp m,l73a0h
	ld b,030h
	and b
	rlca
	ld a,c
	inc b
	ld (hl),b
	ld b,077h
	ld b,h
	rlca
	add a,l
	rla
	ld d,e
	ld bc,08305h
	inc h
	ld b,l
	dec c
	rlca
	adc a,e
	ld h,h
	sbc a,b
l4ce1h:
	jp c,0938eh
	sbc a,(hl)
	add a,d
	ret nz
	ld b,01bh
	xor (hl)
	ld b,d
	ld l,h
	ld a,(06aa4h)
	ret pe
	jr z,l4cf5h
	add a,a
	sub c
	ld (bc),a
l4cf5h:
	add a,d
	jp pe,l4a48h
	ret c
	add a,d
	add a,09eh
	exx
	ld b,004h
	ret nc
	jr c,l4d14h
	ld (de),a
	pop bc
	call 0dd6ch
	ld (02c10h),a
	ld h,0d3h
	sub a
	add a,(hl)
	sub b
	sub a
	jp 0e4cah
l4d14h:
	inc bc
	ld (bc),a
	jp z,06a50h
	cp 0b4h
	ret c
	ld d,c
	ld e,c
	ret nz
	ld (hl),c
	ld c,(hl)
l4d21h:
	or h
	xor d
	dec a
	add hl,bc
	pop bc
	ld (0c395h),a
	adc a,d
	add a,b
	jp p,0cd6bh
	call 0d86bh
	ld h,0cdh
	rra
	ld b,04fh
	ld b,012h
	ld l,e
	ld l,d
	dec (hl)
	ld c,h
	rst 28h
	add hl,hl
	dec (hl)
	ld c,e
	ld e,e
	inc b
	ret nc
	ret nc
	cp 01ah
	ld e,(hl)
	pop af
	jp nz,0ca6ah
	adc a,b
	inc a
	inc d
	rlca
	jp z,01be4h
	sub (hl)
	ld c,b
	ld c,d
	dec (hl)
	dec (hl)
	ld l,h
	call nz,0c61dh
	ld h,c
	inc sp
	ld h,a
	ld l,h
	sub 064h
	and c
	ld l,d
	sbc a,h
	ld b,d
	dec hl
	ld l,h
	xor 053h
	ld c,036h
	ld l,h
	ld de,0fd03h
	pop bc
	ld hl,0c16fh
	adc a,b
	xor b
	cp (hl)
	djnz $+108
	add hl,de
	ld a,b
	ld h,047h
	jp 098b1h
	di
	dec c
	ld l,h
	ld h,d
	ld (hl),a
	add hl,sp
	inc hl
	inc b
	xor c
l4d88h:
	jr c,l4d8eh
	sbc a,084h
	scf
	ld l,h
l4d8eh:
	ld hl,0cd3ch
	call z,09bfch
	dec b
l4d95h:
	sub 047h
	adc a,l
	jr l4d21h
	bit 7,b
	inc bc
	ld a,b
	ld (0325dh),hl
	ld hl,(0a858h)
	inc de
	and 09bh
	inc h
	inc h
	inc h
	sbc a,h
	ld d,h
	sub b
	ld e,b
	ld e,03ah
	and e
	rrca
	ret nz
	inc sp
	dec b
	ld a,c
	rla
	jr z,l4dd9h
	ld l,(hl)
	ld c,02bh
	ld (0d4a6h),hl
	inc (hl)
	add a,e
	pop bc
	ei
	cp h
	out (0bah),a
	rst 10h
	jp (ix)
	call m,03480h
	ld l,e
	dec hl
	dec hl
	djnz $-5
	dec bc
	ret
	ld c,d
l4dd4h:
	ld a,(hl)
	dec hl
	rst 8
	add a,b
	cp c
l4dd9h:
	ret nc
	add a,018h
	cp c
	ret c
	inc c
	ld c,e
	ld a,(hl)
	sub 00ch
	add hl,bc
	ld d,b
	inc d
	add hl,bc
	ld a,h
	ld c,(hl)
	ld l,e
	ret
	adc a,b
	and b
	ld (hl),b
	pop bc
	adc a,l
	xor b
	xor d
	ld (0940ch),a
l4df5h:
	add hl,bc
	ld h,d
	ld l,e
	or (hl)
	and c
	dec l
	ld a,b
	xor 007h
	nop
	and l
l4e00h:
	ld (l5b42h),a
	jp p,09216h
	ld bc,03dc8h
	ret z
	ld a,(hl)
	or c
	ld h,e
	ld l,h
	or b
	and (hl)
	ld b,a
	ld c,019h
	add a,009h
	jp c,08002h
	sub 00fh
	ld (0f146h),a
	inc a
	dec d
	sub e
	scf
	call p,sub_6c06h
	xor a
	ld c,h
	ld e,(hl)
	cp b
	ld (hl),h
	sbc a,b
	ld (hl),0b9h
	cp c
	ld d,a
	jp pe,03a35h
	out (01ah),a
l4e33h:
	ld c,c
	adc a,l
	sbc a,c
	ld c,b
	ld c,c
	add hl,hl
	ld b,(hl)
	xor c
	ret c
	inc b
	cp 028h
	dec d
	jp nc,l6bc4h
	defb 0edh ;next byte illegal after ed
	xor (hl)
	ld l,e
	rra
	ld d,d
	scf
	call nz,00b94h
	ret pe
	ld d,h
	dec sp
	dec b
	ld a,(l60aah)
	jp pe,0c389h
	ld d,c
	scf
	jp 03758h
	ld l,(hl)
	inc b
	dec c
	ld l,c
	dec h
	jp 0a248h
	jp po,041c8h
	call nz,sub_6c03h
	pop de
	jp z,08923h
	adc a,e
	dec a
	ld l,d
	add hl,bc
	dec hl
	ret nz
	ld (hl),a
	xor b
	inc b
	and e
	pop bc
	inc a
	sub h
	add a,0c2h
	rla
	ld a,a
	jr nz,$-91
	inc h
	and h
sub_4e82h:
	pop bc
	add a,e
	ld e,a
	ld e,l
	ld a,(de)
	sbc a,a
	out (033h),a
	ld (hl),b
	adc a,a
	adc a,e
	jr nc,l4e8fh
l4e8fh:
	inc e
	djnz l4e33h
	ld (hl),e
	xor h
	adc a,c
	ret p
	inc bc
	ld c,053h
	ld bc,0d000h
	ld a,(bc)
	ld c,e
	ld h,h
	nop
	ld bc,0960eh
	sub b
l4ea4h:
	inc bc
	add hl,sp
	ld (bc),a
	inc l
	xor e
	ld bc,l4df5h
	ld b,l
	pop bc
	ret c
	jp nz,06cebh
	push de
	ld hl,(00703h)
	jr nc,l4ea4h
	ld l,h
	ld b,021h
	defb 0edh ;next byte illegal after ed
	sbc a,b
	call z,sub_6d1dh
	and h
	xor (hl)
	ld (l6cc0h),a
	jp (hl)
	sub c
	and b
	ld hl,0100bh
	ld de,00e4dh
	djnz l4f4eh
l4ed0h:
	add a,a
	ret z
	nop
	adc a,e
	add a,d
	ld c,(hl)
	add a,c
	dec hl
	ld c,(hl)
	dec b
	ret
	ret pe
	ld a,c
	ld (bc),a
	ld a,010h
	and b
	add a,b
	jr $-49
	jp (hl)
l4ee5h:
	ld (bc),a
	ld a,(0c398h)
	and (hl)
	ld a,003h
	ret nz
	and d
	dec h
	dec b
	pop af
	add hl,de
	ld d,d
	jr $+8
	ld d,b
	dec (hl)
	xor a
	pop bc
	adc a,a
	defb 0fdh,09dh ;sbc a,iyl
	and b
l4efdh:
	cp (hl)
	ret z
l4effh:
	inc a
l4f00h:
	set 3,a
	ld h,b
	jp c,0881bh
	pop de
	cp 0ffh
	ccf
	jr nz,l4f0dh
sub_4f0ch:
	and (hl)
l4f0dh:
	jr c,$-37
	inc e
	call sub_6c82h
	jr c,l4f26h
	ret
sub_4f16h:
	ld (bc),a
	call nz,0c299h
l4f1ah:
	ld a,(0b902h)
	dec de
	inc b
	ld bc,0b407h
	ld h,e
	inc c
	inc b
	rrca
l4f26h:
	ld (0d603h),a
	adc a,(hl)
	ret nz
	call c,0b10bh
	ld d,000h
	inc bc
	ld hl,00409h
	inc b
	dec b
	rlca
	nop
	or a
	ld l,c
	nop
	call m,02181h
	sbc a,h
	ex de,hl
	djnz l4f1ah
	ld d,(hl)
	ld bc,00c6ah
	rst 0
	add a,h
	cp 032h
	or c
	ld e,b
	adc a,h
	rst 8
l4f4eh:
	xor b
	djnz l4f58h
	ret
	inc e
	sbc a,e
	ret
	inc e
	ld h,(hl)
	add a,l
l4f58h:
	ld h,b
	ld h,b
	sbc a,d
	ld b,070h
	ld (032e2h),a
	cpl
	inc a
	jp nz,0209fh
	inc c
	jp l56e4h
	ld de,0ad88h
	add hl,de
	ld e,(hl)
	ld (bc),a
	ld d,000h
	push hl
	ld hl,l6dc2h
	rlca
	nop
	inc hl
	ld d,(hl)
	pop hl
	push de
	ret
	dec e
	ld l,(hl)
	ld e,d
	nop
	ld l,(hl)
sub_4f81h:
	pop hl
	ld l,(hl)
	add hl,de
	ld l,(hl)
	ld a,(de)
	ld l,a
	ld d,(hl)
	nop
	ld l,a
	adc a,06fh
	ei
	ld l,a
	jp z,0006fh
	ld bc,0df6fh
	ld (hl),b
	or l
	ld l,(hl)
	rrca
	ld (hl),c
	and 038h
l4f9bh:
	add hl,de
	sub b
	adc a,b
	jp nz,050f1h
	ld l,l
	adc a,(hl)
	pop bc
	ld hl,003e6h
	ld b,c
	jp z,l6df0h
	sub c
	jr nz,l4f9bh
	ld d,d
	ret
l4fb0h:
	ret nz
	and e
	rst 38h
	jp 0010dh
	ld l,(hl)
	ld b,07fh
	inc b
	dec de
	ccf
	push hl
	ld a,(hl)
	ex de,hl
	ex af,af'
	and b
l4fc1h:
	ld (hl),a
	ld h,033h
	add hl,de
	ld b,(hl)
	and b
	add a,a
	pop hl
	dec hl
	sub h
	nop
	add a,(hl)
	or 09ch
	call z,02342h
	ld l,(hl)
	jr l4fd7h
	and 041h
l4fd7h:
	call sub_6ddch
l4fdah:
	adc a,(hl)
	jr nc,l5008h
	dec (hl)
	ld d,(hl)
	ret nz
	rla
	dec (hl)
	dec (hl)
	ld a,(hl)
	and 002h
	rra
	jr nz,l4ff3h
	ld a,(0c254h)
	ld c,e
	dec b
	jr nz,l4ff3h
	call sub_714ch
l4ff3h:
	ld h,0e5h
	ret nz
	cp b
	ld b,001h
	inc h
	jr c,l4ffeh
	ld c,(hl)
	ld a,d
l4ffeh:
	ex (sp),hl
	pop de
	sbc a,b
	cp e
	jr c,l4fdah
l5004h:
	jp nc,0be0ch
	ld h,(hl)
l5008h:
	xor a
	ld h,l
	ld d,h
	inc c
	rlc (hl)
	ld a,(bc)
	jr nz,l5026h
	push hl
	ld a,(l7e06h)
	xor 008h
	ld (hl),a
	dec b
	and (hl)
	ld (bc),a
	adc a,a
	or d
	inc b
l501eh:
	adc a,e
	ld b,l
	pop hl
	add a,l
	xor a
	add a,d
l5024h:
	ld a,09fh
l5026h:
	ld h,h
	ld (bc),a
	add a,e
	sbc a,c
	in a,(094h)
	ld hl,(l476fh+2)
	ld sp,hl
	defb 0edh ;next byte illegal after ed
	ld de,0c3f3h
	inc (hl)
	sbc a,b
	ld b,c
	ld b,(hl)
	ld a,(00710h)
	jr nz,$+14
	rlca
	sub 016h
	cp b
	ret nc
	or h
	jp p,069ach
	xor h
	ret c
	ld (ix+01eh),a
	add hl,bc
	ld b,019h
	ld (hl),016h
	ld e,b
	ei
	ld (bc),a
	dec c
	ld (bc),a
	ld e,004h
	ld e,d
	adc a,d
	sub d
	or d
	or b
	jp nz,049cah
	ld l,(hl)
	rrca
	inc hl
	ld h,l
	ld (hl),a
	jp nz,0d688h
	inc hl
	ld l,(hl)
	dec hl
	defb 0edh ;next byte illegal after ed
	ld (de),a
	and a
	dec de
	dec (hl)
	sub l
l5070h:
	ld (hl),0d2h
	xor d
	jr l5004h
	inc sp
	dec c
	rla
	dec (hl)
	dec hl
	ld a,b
	ld sp,082bfh
	ld a,(hl)
	cp 064h
	cp (hl)
	ld sp,0be01h
	ld e,016h
	ld c,l
	jp nc,0c98eh
	ld h,004h
	inc (hl)
	inc (hl)
	ld a,(hl)
	sub b
	ld d,c
	sbc a,b
	jr nz,l50dch
	ld c,h
	sub b
	cp 0aah
	jp c,01718h
	ld l,a
	sub 02fh
	add hl,de
	inc bc
	ld a,0c8h
	ld (06ffah),a
	dec hl
	ld e,(hl)
	ld l,0a2h
	jr nz,l50cch
	dec c
	rra
	ld b,b
	dec hl
l50b0h:
	jr nz,$+7
	ld bc,02335h
	jp l6f34h
	inc (hl)
	inc hl
	inc d
	ld (l6c47h),a
	ld (hl),0c8h
	add a,h
	inc b
	bit 3,a
	cpl
	ld bc,00883h
	ld c,a
	ld a,(hl)
	sub c
	ld e,e
l50cch:
	jp nc,0254eh
	ld l,a
	dec a
	cp d
	sbc a,(hl)
	cp (hl)
	ld b,e
l50d5h:
	ld d,l
	ld l,a
	sbc a,e
	ld c,d
	inc bc
	ld l,c
	inc b
l50dch:
	dec hl
	ld b,(hl)
	add a,b
	and 03fh
	sbc a,062h
	dec hl
	ld a,c
	ld d,l
	ld a,(hl)
	daa
	sub h
	push de
	dec c
	pop hl
	ld d,h
	add a,099h
	ld hl,00803h
	add a,c
	add a,d
	add a,e
	ld a,c
	jr nz,l50fch
	sub l
	and b
	ld e,h
	ld a,b
l50fch:
	ret nc
	jr c,$+75
	ld de,0a0bah
l5102h:
	jr l513ah
	inc h
	ld bc,0d4b9h
	add hl,de
sub_5109h:
	ld (hl),0ffh
	dec hl
	nop
	ret
	dec d
	and (hl)
	push bc
	jr z,l5133h
	sub h
	sub c
	push bc
	and l
	sub c
	ld (hl),a
	ld c,l
	sub e
	jr z,l50d5h
	ld a,(bc)
	dec b
	jp c,l6fb9h
	and d
	or d
	ld b,b
	ld e,(hl)
	rla
	jp z,06fc2h
	sbc a,l
l512bh:
	ld c,l
	rst 8
	call c,02919h
	inc de
	ld c,0ffh
l5133h:
	or b
	ld (de),a
	ld c,001h
	sbc a,b
	or c
	xor b
l513ah:
	ex af,af'
	ld (hl),00ah
	dec hl
	and (hl)
	add a,046h
	dec (hl)
	adc a,091h
	ld c,d
	sub c
	ld a,(0e2feh)
	dec b
	jp p,0fe6fh
	cp (hl)
	jp nc,09b04h
	jr z,l51b7h
	halt
	dec hl
	sbc a,e
	jp po,011a8h
	ret m
	ld l,a
	rst 0
	call nz,0c262h
	dec h
	dec de
	ld (hl),b
	sbc hl,bc
	ld (bc),a
	add a,033h
	ld (hl),a
	sub c
	ld (hl),d
	cp l
	ld (hl),d
	sbc a,d
	ld d,(hl)
	jp m,l602ah
	defb 0fdh,024h ;inc iyh
	dec a
	ld a,020h
	inc b
	ex af,af'
	add a,008h
	cp 0f3h
	xor (hl)
	pop hl
	out (077h),a
	xor e
	adc a,c
	ld d,h
	add a,b
	cp 000h
	jr z,$+11
	cp 01eh
	ld bc,02f28h
	cp d
	ld c,c
	ret m
	jr c,l51a3h
	ld sp,hl
	ld l,a
	jp nz,0d611h
	inc bc
	ret pe
	ld l,h
	add a,h
	jp m,06280h
	ret c
l519fh:
	jr z,$+25
	ld b,(hl)
	cp b
l51a3h:
	jr c,l520bh
	inc de
l51a6h:
	ld a,(bc)
	add a,b
l51a8h:
	call c,sub_64c4h
	inc sp
	push bc
	xor h
	cp l
	jp z,l5201h
	ld (hl),h
	ld (0e52bh),a
	ld sp,hl
l51b7h:
	ld hl,(06ff7h)
	pop de
	ld b,e
	add a,(hl)
	ld b,(hl)
	ex de,hl
	call 0eb5eh
	ld (07083h),hl
	call z,083f2h
	ld hl,0e5e1h
	ld a,(l6915h)
	ret nc
	inc d
	out (098h),a
	inc d
	and h
	ld a,(0a703h)
	dec b
	jp z,l70aeh
	ld de,0c305h
	ld h,c
	cpl
	inc a
	sub 048h
	nop
	ld e,b
	inc hl
	ld b,e
	jr z,$+121
	jp po,00a11h
	call nz,0236fh
	push af
l51f0h:
	ld e,d
	dec h
	ret z
	adc a,h
	add a,c
	adc a,e
	xor d
	ret po
	ld c,c
	dec b
	ret nz
	add a,c
	ld d,l
l51fdh:
	sub c
	dec h
	and b
	inc h
l5201h:
	ret nc
	out (0bdh),a
	jp z,0bfc9h
	or c
l5208h:
	or a
	jr nc,l519fh
l520bh:
	adc a,c
l520ch:
	adc a,c
	ld b,(hl)
	ret c
	ld b,c
	add a,040h
	cp b
	cp a
	djnz l51f0h
	jp m,00170h
	or 008h
	jp l70fch
	and 0f7h
	sbc a,c
l5221h:
	add hl,hl
sub_5222h:
	pop de
	ld e,h
	add hl,hl
	ld c,h
	sub d
	sub l
	ld sp,00992h
	ret
	adc a,a
	ld c,d
	jp c,02a60h
	ld (hl),c
	ld d,d
	ld (hl),0e8h
	nop
	ld a,008h
	add a,(hl)
	cp 09bh
	jp nz,00227h
	ld (hl),c
	ld a,083h
	ld (hl),a
	and a
	add hl,de
	ld sp,hl
	sub (hl)
	and 050h
	ld a,(04457h)
	pop bc
	jp m,038d2h
	ld e,(hl)
	ld (hl),c
	ex af,af'
	halt
	ld (bc),a
	ex af,af'
	inc bc
	defb 0edh ;next byte illegal after ed
	ex af,af'
	inc b
	ex af,af'
	in a,(005h)
	ex af,af'
	ld h,d
	rst 28h
	djnz $-54
	jp 0042bh
	rst 0
	jp 08c23h
	call nc,0c964h
	add a,d
	dec d
	ld l,h
	nop
	and 024h
	ret nz
	rst 20h
	nop
	ld a,(bc)
	ld e,e
	ld a,(bc)
	inc bc
	nop
	rrca
	add a,(hl)
	and e
	ld h,0b0h
	and b
	ld h,h
	ld a,(bc)
l5281h:
	nop
	ret pe
	rrca
	jp po,l66abh
l5287h:
	jr z,l5221h
	ld e,0ffh
	djnz $+17
	ld b,0a3h
	ld hl,(l5d1fh)
	cpl
	rrca
	ret po
	ccf
	rrca
	rst 38h
	ld b,0f1h
	ccf
	ld bc,0c3e2h
l529eh:
	cpl
	ld bc,0080ah
	dec c
	ccf
	jp po,l63b3h
	dec l
	ld e,(hl)
	adc a,h
	rrca
	call nz,031cbh
	ld e,0fbh
	dec b
	inc c
	ccf
	ld h,0e0h
	out (0e8h),a
	ld h,c
	ld c,00ah
	rra
	jp pe,0f210h
	rra
	add a,a
	ld c,a
	rst 38h
	ld a,(bc)
	ld (de),a
	ld c,a
l52c5h:
	sub c
	ld a,e
	scf
	ld b,00fh
	inc d
	ld a,(bc)
	inc c
	ld l,a
	rlca
l52cfh:
	ld h,e
	rrca
	or d
	add a,e
	rrca
	inc hl
	inc b
	jr l5287h
	or b
	ld bc,08250h
	ld e,002h
	ld (hl),b
	jr z,l5309h
	sub b
	and b
	scf
	dec b
l52e5h:
	jr $+15
	nop
	ld e,002h
	ld e,080h
	ld (bc),a
	ld a,(bc)
	and b
	and b
	dec c
	ld b,b
	ld b,(hl)
	call nz,02102h
	ld (bc),a
	ld d,(hl)
	daa
	and b
	adc a,h
	inc d
	ld b,(hl)
	ld (bc),a
	jr z,l5317h
	ld (bc),a
	ld e,060h
	ld bc,02878h
l5306h:
	ret nz
	ld d,b
	inc a
l5309h:
	or b
	adc a,a
	dec b
	djnz $+34
	inc d
	ld (bc),a
	ld (l4fb0h),a
	ex af,af'
	ld de,037b0h
l5317h:
	ld h,b
	ld (bc),a
	inc b
	ld d,b
	ld h,h
	ld h,h
	add hl,hl
	add a,h
	ld b,h
	ld d,l
	add hl,hl
	ld (bc),a
	ld a,(bc)
	ld de,0aa40h
	ex af,af'
	ld (bc),a
	rlca
	ret nz
	ret po
	ret po
	djnz $-86
	inc e
	inc d
	jr nc,$-86
	ld (de),a
	dec b
	dec (hl)
	add a,d
	nop
	add hl,bc
	jr nz,l52e5h
	ld (l50b0h),hl
	ld d,b
	ld h,b
	inc b
	ld (hl),e
	ld bc,09160h
	ld a,h
	ex af,af'
	inc l
	add a,(hl)
	inc d
	ld d,(hl)
	add a,b
	ld b,(hl)
	cp c
	adc a,b
	ld c,h
	ld (bc),a
	ld c,(hl)
	ld d,084h
	dec b
	ld b,c
	and b
	ld h,h
	ld (bc),a
	ld l,(hl)
	add a,c
	ld (bc),a
	ld d,b
	ld a,0a0h
	ld e,d
	ccf
	ld (bc),a
	inc h
	ld a,(de)
	ex af,af'
	ld l,c
	ld h,d
	ld de,l5fbah
	adc a,(hl)
	or d
	jp z,08208h
	ld l,(hl)
	and a
	rrca
	ld (hl),b
	inc d
	ld (bc),a
	dec c
	inc a
	rrca
	sub b
	cp (hl)
	ex af,af'
	jr c,$-110
	cp c
	dec b
	ld c,c
	or h
	dec b
l5382h:
	nop
	dec b
	ret z
	dec b
	jp p,03220h
	dec b
	dec a
	ret nc
	add a,a
	dec h
	inc d
	and b
	and d
l5391h:
	ld b,h
	dec b
	adc a,044h
	xor d
	inc d
	sbc a,e
	ld c,c
	ld e,005h
	ld bc,00462h
	ld e,050h
	adc a,h
	ld c,e
	add a,l
	ld c,c
	ld e,00eh
	ld bc,04462h
	dec bc
	and b
	cp a
	or (hl)
	ld b,b
	ld (hl),h
	ret nc
	ld c,b
	inc a
l53b2h:
	ret nz
	inc b
	add a,b
	inc d
	add a,b
	and e
	ld b,(hl)
	sub d
	ld c,d
	ld a,b
	ld (bc),a
	and (hl)
	ld b,b
	ld l,001h
l53c1h:
	djnz $-58
	push bc
	ld (bc),a
	rrca
	ld (bc),a
	sbc a,e
	inc e
	add a,0a4h
	inc h
	ccf
	ld (bc),a
	ld a,e
	ld (bc),a
	res 2,d
	ld (bc),a
	ex af,af'
	ld d,(hl)
	ex af,af'
	ld e,h
	ld c,c
	add hl,bc
	dec b
	inc c
	dec b
	ld c,h
	dec b
	ld c,h
	dec e
l53e0h:
	nop
	ld d,(hl)
	ld b,b
	ld h,l
	ld d,(hl)
	add hl,bc
	ld b,b
	sub (hl)
	add hl,bc
l53e9h:
	ret nz
	nop
	ld e,(hl)
	dec l
	or b
	xor b
	djnz l53c1h
	adc a,(hl)
	dec a
sub_53f3h:
	nop
	or b
	adc a,(hl)
	ld bc,l4ed0h
	dec sp
	ld (hl),b
	jr nz,l53feh
	ld b,d
l53feh:
	or b
	ld h,a
l5400h:
	rra
	ret nc
	ld c,c
	ld d,b
	ex af,af'
	ld c,c
	inc l
	ld b,c
l5408h:
	ld (bc),a
	inc a
	ld (bc),a
	inc b
	scf
	inc sp
	ld (hl),b
	ld (02d05h),a
	sub a
	ld (bc),a
	jr z,l5418h
	or b
	add a,b
l5418h:
	sub b
	jp nc,0900ch
	call c,00282h
	and 06ch
	sub b
l5422h:
	ret p
	add a,l
	ld h,d
	sub c
	add hl,hl
	di
	ld b,h
	inc a
	adc a,e
	pop bc
	inc sp
	ld d,b
	ld a,b
l542fh:
	ld b,(hl)
	sub d
	inc d
	sbc a,b
	ld d,d
	pop hl
	ld c,b
	add a,h
	inc e
	and b
	dec b
	ld c,l
	cpl
	ld l,d
	or b
	cpl
	ld bc,0b024h
	ld b,a
	rlca
	or b
	ld h,b
	rla
	ld l,d
	inc b
	ld hl,l77b0h
	dec (hl)
	adc a,l
	add a,c
	rrca
	ld b,b
	or h
	djnz $+13
	ld c,d
l5455h:
	ld (bc),a
	jr z,l545ah
	ret po
	ld c,c
l545ah:
	dec b
	add hl,de
	dec bc
	ld a,l
	call po,02499h
	sbc a,d
	ret c
	dec b
	inc hl
	add a,d
	dec b
	jr z,l53e9h
	dec h
	rrca
	rla
sub_546ch:
	or 002h
	ld d,c
	ld b,c
	ld (bc),a
	cp c
	adc a,b
	ld a,(bc)
	cp h
	ret z
	cp c
	jp z,0b902h
	ld (l5fc0h),a
	ld bc,005ffh
	ld l,l
	ld (bc),a
	ex af,af'
	nop
	rst 38h
	rst 38h
	nop
	sbc a,023h
	nop
	nop
	nop
	jp l4ac3h
l548fh:
	inc b
	ex af,af'
	ex af,af'
	inc b
	inc b
	ld bc,00303h
	rlca
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
	jr l54d1h
	inc e
	ld c,015h
	ld e,020h
	rra
	rla
	ld b,003h
	rrca
	ld c,01ch
	jr l54deh
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
l54d1h:
	rlca
	inc c
	djnz l54f4h
	ld h,b
	ccf
	jp p,03ffch
	cp 01eh
	cp (hl)
	ret nz
l54deh:
	nop
	ld b,b
	ld (bc),a
	djnz l5522h
	rra
	ld e,h
	rlca
	ld bc,0381ch
	jr nc,l54ebh
l54ebh:
	nop
	ld (0f6d8h),hl
	ld (iy+078h),e
	inc b
	ccf
l54f4h:
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
	jr c,l551fh
	ld e,00fh
l550dh:
	rlca
	inc c
	ccf
	ld bc,07c40h
	ld a,(hl)
	rra
	add a,b
	ld d,008h
	ld a,0ffh
l551ah:
	nop
l551bh:
	call po,sub_5a00h
	rra
l551fh:
	nop
	rst 38h
	inc bc
l5522h:
	add hl,bc
	ld a,h
	add hl,bc
	inc bc
	rst 38h
	rra
	or b
	ld h,h
l552ah:
	jr nc,l557ch
	cp b
	nop
	call nc,0d8dah
	djnz l551bh
l5533h:
	djnz l550dh
	jp c,0d41ch
	cp b
	ld d,b
l553ah:
	ld c,e
	daa
	inc bc
	jr nz,l557bh
	dec e
	ld a,d
	nop
	ret nc
	nop
	ret pe
	ld d,0e8h
	jr l5533h
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
	jr l55afh
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
l557bh:
	add a,b
l557ch:
	nop
	rst 0
	rlca
	adc a,a
	ccf
	rst 18h
	nop
	ret m
	jr nz,l55b6h
	inc e
	dec b
	dec d
	dec (hl)
l558ah:
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
	djnz l55b1h
	ld b,b
	ld a,(0ec57h)
	ld a,a
	jp 0f060h
	ret p
	ld h,b
	ld e,(hl)
	rst 20h
l55afh:
	and d
	sub (hl)
l55b1h:
	sub l
	add a,(hl)
	jr nc,l55b5h
l55b5h:
	ld c,l
l55b6h:
	and (hl)
	and d
	inc l
	jp 0385ch
	jr l55cah
	nop
	ld c,018h
	jr c,l5626h
	ld b,b
	inc bc
	inc c
	inc de
	rla
	ld l,02ch
l55cah:
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
	jr nc,l5621h
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
l55fbh:
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
l5612h:
	ld h,l
	adc a,b
	ld b,b
	push bc
	dec d
	sbc a,h
	inc c
	jr nz,l567bh
	ret nz
	nop
	nop
	ld h,b
	jr nz,l5621h
l5621h:
	inc c
	rlca
	inc bc
	ret nz
	ret po
l5626h:
	ld d,b
	jr nc,l55fbh
	ld b,061h
	inc bc
	nop
	ld b,004h
	ld sp,hl
	djnz l5612h
	ret nz
	inc bc
	ld b,(hl)
	inc b
l5636h:
	jp z,0cacah
	xor c
	ld b,b
	call pe,01f6ah
	dec h
	ex de,hl
	ld (055eah),a
	ld (bc),a
	ex af,af'
	adc a,b
	jr nz,l5688h
	rra
	djnz l564fh
	jr nc,$-78
	jr nc,$+18
l564fh:
	rra
	dec bc
	ld a,(hl)
	ld h,l
	ld h,e
	ld bc,024d0h
	call nc,00571h
	add a,b
	ld a,030h
	ld a,h
	jr nc,$+64
	nop
	nop
	ccf
	ret po
	ld l,a
	adc a,b
	ex af,af'
	adc a,b
	ld l,a
	ld b,020h
	ccf
	rst 38h
	add a,c
	sbc a,h
	ld bc,0d052h
	inc sp
	rst 38h
	ld c,e
	dec b
	nop
	ld a,a
l5678h:
	pop bc
	rst 8
	add a,e
l567bh:
	rst 8
	pop bc
	ld a,b
	ld a,a
	cpl
	add a,d
	jr c,l56efh
	add a,0feh
	add a,006h
	ld e,b
l5688h:
	ret m
	jp 02d0dh
	inc c
	ex af,af'
	sbc a,d
	ld (bc),a
	add a,0eeh
	cp 0d6h
	rrca
	ret p
	cpl
	nop
	ld a,l
	rst 0
	sub e
	add hl,sp
	ld bc,0ef39h
	call m,00700h
	or 081h
	add a,b
	add a,c
	or 007h
	call m,0ef05h
	add hl,sp
	ld de,02901h
	rrca
	add a,c
	ld c,h
	ld (bc),a
	ld (bc),a
	ld b,018h
	jr l56beh
	sub h
	ld (l59d0h),a
	adc a,h
	xor d
l56beh:
	ld c,b
	ld h,b
	rrca
	ld h,b
	or h
	jp z,l69a1h
	nop
	sbc a,060h
	rla
	rla
	dec b
	adc a,e
	ei
	rra
	cp c
	add a,e
	ld (bc),a
	and b
	ret pe
l56d4h:
	ret pe
	and b
	cp d
	add hl,hl
	sbc a,l
	xor 03ah
	ld b,h
l56dch:
	inc b
	call pe,sub_4f0ch
	rrca
	sub d
	adc a,c
	ret c
l56e4h:
	jr $-42
	djnz l5708h
	and b
	ret po
	ld (hl),a
	jr nz,l570ch
	and c
	ld d,b
l56efh:
	dec b
	rlca
	dec bc
	ld a,c
	ld a,(bc)
l56f4h:
	rra
	ld d,h
	cp h
	ret nc
	ld e,l
	ret po
	ld e,a
	rra
	and d
	nop
	or b
	ld b,d
	inc b
	ld b,e
	ld (bc),a
	inc bc
	ld (bc),a
	or b
	sbc a,e
	ld d,a
l5708h:
	and b
	ld a,089h
	dec sp
l570ch:
	ret m
	ld e,(hl)
l570eh:
	call nz,00b1fh
	add a,c
	ld c,e
	inc bc
	ld a,l
	rra
	jp nz,l60a3h
	ret nc
	ret p
	ret pe
	jr z,l570eh
	rra
	dec (hl)
	rra
	ccf
	nop
	rra
	sbc a,a
l5725h:
	ld l,(hl)
l5726h:
	dec hl
	jr nz,l5767h
	ld a,a
	dec hl
	sub b
	ret pe
	ld h,040h
	ret nz
	and l
	and a
	ld (bc),a
	adc a,a
	ld h,e
	ret po
	and c
	ld b,009h
	rrca
	call c,0fe74h
	ld (hl),a
	jp po,0d83ah
	rla
	ld c,b
	ld c,b
	jr nz,l5767h
	jr nz,l56dch
	inc bc
	ld c,0b6h
	sbc a,0f6h
	jr nz,l57afh
	inc e
	jr nc,$-6
	ld (hl),b
	ld a,(bc)
	rla
	ld a,a
	ld a,a
	defb 0edh ;next byte illegal after ed
	rst 20h
	dec c
	ex de,hl
	rst 38h
	ld a,h
	ld l,h
	nop
	jp z,03ccah
	jr nc,l56f4h
	ld l,c
	sbc a,a
	rst 0
l5767h:
	add a,00fh
	nop
	rst 18h
l576bh:
	ret c
l576ch:
	rst 18h
	exx
	ret c
	inc bc
	nop
	ei
	jp 0c3f3h
l5775h:
	ei
	rrca
	add a,b
sub_5778h:
	sbc a,a
sub_5779h:
	ret c
	sbc a,(hl)
	sbc a,b
	ld bc,000dfh
	di
	dec de
	di
	inc sp
	dec de
	add a,a
	ld de,01d0fh
	add a,h
	ld l,l
	ld e,h
	ret po
	ret nz
l578dh:
	cp a
	inc bc
	ld a,(0e12ah)
	inc a
	cp b
	ld a,(00831h)
	dec e
	ld c,h
	nop
	nop
	rst 38h
	sub e
	ret nz
	jr nz,l57cdh
	dec hl
	dec hl
	dec l
	ld d,02dh
	inc l
	cpl
sub_57a7h:
	inc bc
	ld b,0b5h
	jr nz,l57ach
l57ach:
	dec hl
	ld c,0b9h
l57afh:
	dec d
l57b0h:
	dec c
	adc a,000h
	ld (hl),02fh
	ld a,(de)
	inc de
	defb 0edh ;next byte illegal after ed
	ld c,02bh
	inc c
	add a,d
	dec l
	cpl
	inc l
	inc de
	ex (sp),hl
	dec c
	ccf
	sub a
	ld hl,(0ad3fh)
	ld c,03fh
	and 02ah
l57cbh:
	pop hl
	ccf
l57cdh:
	ld hl,(0e83fh)
	ld hl,(03feeh)
	inc e
	call z,00400h
	rst 20h
	rlca
	sub d
	dec (hl)
	dec hl
	xor l
	add a,04ch
	ld (hl),b
	or b
	dec hl
	adc a,(hl)
	and e
	call 02e2eh
	rrca
	and e
	ld d,0b5h
	call nz,0080fh
	ld e,e
l57efh:
	ex af,af'
	exx
	ld e,c
	ld b,(hl)
	nop
	add a,l
	add hl,bc
	dec hl
	ld bc,l456eh
	and c
	inc (hl)
	ld d,e
	dec (hl)
	nop
	dec bc
	ex de,hl
	inc h
	ld c,d
l5803h:
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
l5812h:
	jr nz,l5842h
	rra
	sbc a,020h
	ret po
	ld e,02ch
	rra
	adc a,e
	dec hl
	add hl,bc
	rra
	ret nc
	ld a,(bc)
	inc c
	xor (hl)
	ld de,l6f0bh
	adc a,e
	ld c,00bh
	ret
	ret m
	adc a,a
	dec bc
	ld c,005h
	rra
	nop
	adc a,a
l5832h:
	add hl,de
	ld e,(hl)
	ld l,000h
	rst 8
	ld l,e
	nop
	ld l,c
	rst 38h
	cp 0fdh
	add hl,hl
	nop
	rst 30h
	ld a,020h
l5842h:
	nop
	xor 09bh
	ld h,000h
	dec bc
	inc bc
	ld b,(hl)
	in l,(c)
	nop
	nop
	ld c,c
	ld c,c
	inc bc
	ld c,h
	ld b,(hl)
	ld b,a
	ld b,(hl)
	ld c,h
	ld c,c
	nop
	or a
	ld c,000h
	or e
	ld c,e
	nop
	jp c,03583h
	ex af,af'
	nop
	rst 8
	ret z
	or e
	nop
	add a,b
	ld c,h
	ld c,h
	ld c,l
	ld c,e
	ld c,l
	or a
	inc b
	cp a
	pop bc
	ld b,000h
	and a
	dec b
	dec b
	add a,h
	daa
	cp e
	ld h,000h
	or b
	ld b,a
	nop
	ld b,(hl)
	ld b,(hl)
	ret po
	ld a,(bc)
	jp nc,000cbh
	ld c,d
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
	jr nz,l58c7h
	ld (0af04h),a
	ld (0c10eh),a
	ld bc,l7c2ah
	dec b
	ld (hl),016h
	ld hl,(0047fh)
	ex af,af'
	ret nc
	ld hl,(00482h)
	jp nz,l6a2ah
	add a,l
	inc b
	adc a,b
	inc b
	djnz l58c4h
l58c4h:
	ld hl,(0048bh)
l58c7h:
	call nc,08e2ah
	sub 009h
	sub c
l58cdh:
	add hl,bc
	or l
	sub h
	add hl,bc
	sub a
	add hl,bc
	xor b
	sbc a,d
	inc b
l58d6h:
	ret z
	ld hl,(09d40h)
	inc b
	jp nc,0abcdh
	ld c,h
	call sub_4b40h
	ld (bc),a
	ld h,e
	dec b
	call sub_60c2h
	inc h
	call 0059fh
	and d
	ld (bc),a
	and l
	add a,b
	ld (bc),a
	ret c
	ld c,e
	call sub_5ff2h
	call 01c09h
	ld d,d
	call 00baeh
	add hl,sp
	ld (bc),a
	ld (002a8h),hl
	add a,c
	ld d,(hl)
l5904h:
	add hl,hl
	add a,d
sub_5906h:
	dec b
	ld d,c
	ld d,e
	call 02cbah
	nop
l590dh:
	add a,h
	ld c,(hl)
	ld a,(0c13dh)
l5912h:
	or a
	jp z,0225ch
	ld c,e
	ld a,011h
	rrca
	dec b
	and h
	jr nc,l5924h
	pop bc
	ld (0fe3eh),hl
	xor c
	nop
l5924h:
	pop bc
	ld (0c3a3h),a
	ld a,01ch
	ld (08207h),a
l592dh:
	rlca
	and d
	jp 003cdh
	ld a,(de)
	adc a,c
	ret c
	halt
	ld e,l
	sub c
	and b
	ld b,d
	dec hl
sub_593bh:
	ld a,(0c395h)
	ld l,046h
	sbc a,l
	ld d,e
	add a,l
	ld c,h
	add hl,bc
	and h
	ret
	ld (de),a
	ld d,023h
	ccf
	sub d
	ld (bc),a
	ld d,d
	ld (bc),a
	ld c,a
	ld (bc),a
	ld c,b
l5952h:
	ld b,e
	ld (bc),a
	ld b,b
	ccf
	ld (bc),a
	ld (04240h),a
	ld h,03eh
	pop bc
	cp 01eh
	jp c,0c104h
	ld c,e
	dec a
	ld (00b3eh),a
	pop de
	djnz l592dh
	inc a
	ld (03a03h),a
	inc de
	pop bc
	and c
	dec c
	inc bc
	inc a
	jp nz,03d2fh
	and b
	xor a
	ret
	ld hl,l4c0ch
	inc b
	ld (l4c08h),hl
	ld hl,0052ch
	ld a,(bc)
	jr nz,$+78
	ld hl,(l5e08h)
	inc hl
	ld d,(hl)
	inc hl
	dec c
	ld a,d
	or e
	jp z,0144ah
	dec b
	ex de,hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(01215h)
	cp b
	inc e
	ex de,hl
l599eh:
	inc b
	ld (hl),c
	inc hl
	ld (hl),b
	jp 084e4h
	ret p
	rlca
	nop
	dec b
	ld d,005h
	rra
	dec b
	ld (02e05h),hl
	nop
	dec b
	add hl,de
l59b3h:
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
	ld b,b
	dec b
	rra
	rst 20h
	ld c,(hl)
	or b
	ld c,(hl)
	ld b,e
	nop
	ld c,(hl)
l59d0h:
	ld (hl),e
	ld c,(hl)
	call nc,0b34eh
	ld c,(hl)
	jp 00180h
	ld d,e
	dec a
	ld c,(hl)
	ld b,b
	ld c,(hl)
	cp l
	nop
	ld c,(hl)
	ret nz
	ld c,(hl)
	pop de
	ld c,(hl)
sub_59e5h:
	add a,04eh
l59e7h:
	ld b,(hl)
	nop
	ld c,(hl)
	ret
	di
	ld hl,00038h
	ld de,000a8h
	ld c,h
	ld bc,00003h
	ldir
	ld hl,09ecah
	ld l,c
	add hl,sp
	call p,0c308h
sub_5a00h:
	ld (00438h),a
	inc de
	ld (0f127h),a
	rst 38h
	adc a,h
	inc de
l5a0ah:
	sub e
	adc a,e
	add a,b
	rst 18h
	di
	or 010h
	ld (004b1h),a
	dec c
	add a,b
	inc bc
	adc a,h
	ld (bc),a
	inc bc
	ld c,(hl)
sub_5a1bh:
	adc a,a
	and d
	ld b,l
	xor h
	dec (hl)
	daa
	ld de,0f328h
	add hl,sp
	jr l5a4ah
	and 078h
	rst 28h
	inc hl
	ld (hl),0afh
	ld (02303h),hl
l5a30h:
	ei
	ret
	sbc a,(hl)
	inc h
	ld e,a
	ret
	ld d,h
	rst 10h
	ld l,c
	ld c,h
	dec b
	rst 20h
	ld c,h
	ld de,00e46h
	ld h,h
	ld c,l
	ld c,0adh
	di
l5a45h:
	dec b
	ld c,024h
	ret
	push af
l5a4ah:
	rst 18h
	call po,0db2ch
	sbc a,c
	daa
	rrca
	call c,0af1ah
	inc c
	ld h,b
	ld (0c1a0h),a
	rlca
	call c,024b9h
	ld l,l
	sub e
	inc bc
	pop af
	ld hl,(00054h)
	rst 30h
	ret nz
	ld d,(hl)
	ld e,b
	ld e,d
	ld e,h
	ld e,(hl)
	jr nc,l5a91h
	ld (0ce54h),a
	nop
	ld c,(hl)
	ld d,b
	ld d,d
	inc a
	ld a,054h
	ld (bc),a
	inc b
	nop
	ld b,008h
	ld a,(bc)
	inc (hl)
	ld (hl),00ch
	ld c,010h
	nop
	ld (de),a
	inc d
sub_5a85h:
	ld d,040h
	ld b,d
	jr l5aa4h
	inc e
	nop
	ld e,020h
	ld (03a38h),hl
l5a91h:
	inc h
	ld h,028h
	ld h,b
	ld hl,(044ceh)
	ld b,a
	ld b,(hl)
	jp nc,03aa9h
	ret po
	dec c
	dec c
	cp a
	ld (00de0h),a
l5aa4h:
	ld c,e
	add a,c
	add a,h
	ld (hl),c
	and a
	and b
	and 020h
	jp nz,l4d88h
	ret nc
	ld b,0cah
	adc a,a
	ld c,l
	ld a,(0f54ch)
sub_5ab7h:
	ret po
	ld (bc),a
	inc hl
	jp z,007a7h
	pop af
	pop bc
	ld e,010h
	sub d
	inc bc
	push bc
	ld a,(031f6h)
	rst 38h
	ld b,a
	ld a,(bc)
	sub a
	ccf
	sub d
	call 08025h
	adc a,0a5h
	rst 20h
	call pe,0fd4ch
	ld a,(bc)
	ld h,e
	adc a,b
	ld a,(bc)
	pop hl
	ld c,a
	ld e,h
	add a,d
	ld e,l
	ld e,0f6h
	ld b,d
	ld e,l
	nop
l5ae4h:
	push de
	push hl
	exx
	ex af,af'
	push af
	ld b,b
	push bc
	dec b
	call 0539dh
	pop hl
	pop de
	inc c
	pop bc
l5af3h:
	pop af
	ex af,af'
	exx
	dec b
	ld e,d
	ret
	sub c
	cp c
	ld (bc),a
	ld (hl),078h
	xor a
	ld d,d
	ld c,a
	and b
	sub l
	ld b,0abh
l5b05h:
	add hl,de
	and b
	inc a
	add hl,sp
	ld e,a
	ld d,e
	adc a,(hl)
	and e
	defb 0ddh,0c5h,04eh ;illegal sequence
	sub l
sub_5b11h:
	ld a,(09c9ch)
	ld (bc),a
	jp nz,04e42h
	call 0bb5dh
	and h
	ld h,b
	ld (bc),a
	ld e,088h
	ld (bc),a
	ld (hl),l
l5b22h:
	dec b
	or c
	push hl
	ld e,d
	inc de
	ld d,l
	ld sp,hl
l5b29h:
	ld d,h
	xor h
	sub d
	ld c,e
	ld d,h
	di
	sub c
	call z,01b23h
	ld e,(hl)
	jp nz,03204h
	call m,0bec1h
	ld h,h
	xor (hl)
	sub b
	dec b
	sbc a,a
	jp 016e6h
l5b42h:
	ld b,b
	call nz,08921h
	and h
	ld d,(hl)
	pop bc
	sub b
	ld a,b
	sub b
	xor a
l5b4dh:
	ld hl,0be0dh
	jp z,00688h
	ld c,(hl)
	ld (hl),a
	call 00313h
	ld e,d
	add a,b
	ret nz
	call sub_5779h
	call 051b5h
	or b
	call 03e4fh
	add a,b
	dec (hl)
	ld c,c
	pop bc
	call sub_4f16h
l5b6ch:
	jr nz,l5b77h
	rla
	ld a,(l576bh)
	ld (hl),d
	cp a
	ld e,(hl)
	inc h
l5b76h:
	dec d
l5b77h:
	ld l,h
	jr l5be6h
	ld h,(hl)
	push hl
	inc c
	ld h,(hl)
	inc c
	inc h
	ld l,c
	ld (bc),a
	jr nc,$+4
	ld (hl),d
	call po,0c27fh
	out (092h),a
	inc de
	ld l,a
	dec c
	dec l
	ld (bc),a
	ld e,h
	or h
	sub h
	dec b
	ld bc,0cd4fh
	jp pe,0fb4eh
	call 00c0ch
	ld e,e
	jp po,0f611h
	nop
	jp (hl)
	ei
	and 010h
	jp nz,l4f00h
	inc d
	ld a,(l4effh)
	ld h,c
	add a,c
	ld h,h
	ld b,0c3h
	ld d,h
	ld d,c
	call nc,0c9afh
	rlca
	ld a,(de)
	jp pe,0251ah
	ld bc,02013h
	jp po,03ea0h
	ret po
l5bc2h:
	ld (0a44ah),a
	and d
	ld (085cfh),hl
	ld h,b
	ret z
	rst 8
	ei
	jr nc,$-51
	ld (hl),a
	add hl,bc
	jp nz,l512bh
	ld c,a
	dec h
	ld b,0c9h
	ld (0175fh),a
	add a,004h
	jp nz,0c208h
	ld a,(0fdd0h)
	jp 04f44h
l5be6h:
	ld b,d
	dec d
	add hl,bc
	ld l,0d8h
	call pe,0061dh
	adc a,b
	jp c,0c104h
	sbc a,b
	adc a,e
	ld (09704h),a
	djnz l5bffh
	rst 18h
	dec c
	jp nz,00c32h
	inc h
l5bffh:
	inc c
	and 007h
l5c02h:
	jr nz,$+16
	ld a,000h
	add a,008h
	cp 060h
	jr nz,l5c0eh
	ld a,048h
l5c0eh:
	pop bc
	ld b,d
	ld a,(0c200h)
	ld (01a48h),hl
	ld bc,00505h
	jp nz,0210ch
	dec c
	pop bc
	ld b,(hl)
	adc a,h
	add a,e
	xor a
	call 05147h
	ld hl,(0c12eh)
	add a,b
	inc bc
	cp 0a4h
	ld b,030h
	call nc,0301ah
	ld h,b
	ld a,(0d209h)
	ret nz
	add a,0b0h
	ret p
	sub d
	call nz,098dfh
	rlca
	and a
	adc a,d
	adc a,l
	ld h,b
	ld e,e
	ld c,b
	jr c,$+60
	inc a
	ld a,(0c280h)
	dec bc
	ld de,0c240h
	ld a,0c9h
	nop
	ld e,a
	pop bc
	ld b,007h
	push de
	ld a,(hl)
	nop
	and 01fh
	cp 015h
	jp z,l5070h
	inc hl
	ret nz
	cp c
	nop
	ld d,b
	add hl,bc
	cp 004h
	jr z,$+71
	push af
	nop
	ld l,d
	ld d,c
	call nz,050a4h
	pop de
	inc e
	push hl
	ldi
	ld bc,0e1b4h
	inc b
	ld a,(hl)
	inc a
	dec c
	ld (de),a
	inc de
	inc de
	ld bc,088a4h
	add hl,bc
	ld a,(0c635h)
	ld (bc),a
	call z,0c13ah
	nop
	jp nz,l4fc1h
	ret
	pop de
	ld bc,00f42h
	ld (de),a
	ex de,hl
l5c95h:
	ld c,008h
l5c97h:
	inc bc
	push af
	rla
	nop
	dec hl
	ld a,(hl)
	cp 024h
	jr z,$+63
	inc hl
	push hl
	ld d,b
	inc hl
	nop
	add hl,bc
	ld d,028h
	add hl,bc
	adc a,b
	xor d
	pop hl
	call 03d02h
	ld d,c
	jp l4fdah
	inc hl
l5cb5h:
	ld c,b
	nop
	ld (hl),a
	cp 00ch
	jr z,$+20
	and 003h
l5cbeh:
	jr z,l5cf1h
	inc b
	pop hl
	rrca
	dec hl
	add hl,hl
	ld b,h
	pop hl
	ld (hl),a
sub_5cc8h:
	ret po
	add hl,bc
	ld (hl),022h
l5ccch:
	jp nc,03623h
	ld b,008h
	jr nc,l5cd3h
l5cd3h:
	inc hl
	rrca
	ld (hl),004h
	pop de
	ld a,036h
	ld c,e
	inc hl
	rla
	ld l,023h
	ld de,0853eh
	ld (hl),001h
	inc hl
	jp z,l7e68h
	sub b
	ld (hl),a
l5ceah:
	ret c
	rrca
	or b
	cp l
	call p,01000h
l5cf1h:
	ld sp,03ae1h
	dec (hl)
	jp nz,0ba00h
	ret c
	cp e
	ret nc
	ld a,(0c234h)
	cp c
l5cffh:
	nop
l5d00h:
	ret c
	sub 010h
	cp c
	ret nc
sub_5d05h:
	ld a,0f0h
	ld (011a4h),a
	add a,e
	ld b,b
	ld (0c30fh),a
	jp po,0c950h
	ld a,(hl)
	ld a,(bc)
	sub 008h
	ld c,a
	push hl
	ld (hl),a
l5d19h:
	jr l5d1ch
	ld d,a
l5d1ch:
	add a,01eh
	ld e,a
l5d1fh:
	ld hl,0c229h
l5d22h:
	call p,l7e10h
	dec hl
l5d26h:
	cp d
	inc b
	jp c,05080h
	cp e
	jp nc,l7e03h
	ld h,(hl)
	cp c
	ex af,af'
	ld (00a61h),a
	ld a,(0eb51h)
	xor b
	call c,l5024h
	ld a,b
	add a,e
l5d3eh:
	ld c,h
	jp nc,0e105h
	jr c,l5ccch
	ld b,l
l5d45h:
	ld (hl),a
	inc hl
	sbc a,c
	or l
	xor h
	ld bc,01147h
	rlca
	nop
	add hl,de
	ld (hl),d
	add a,d
	jp c,l5102h
	cp (hl)
	inc sp
	ret m
	ld d,e
	adc a,d
	ld a,b
	call c,00b88h
	dec hl
	sbc hl,de
	ret
	ld de,0c910h
	inc hl
	ld e,c
	ld h,b
	inc de
	ld (hl),024h
	inc hl
	sbc a,b
	cp 03ch
	jr z,l5d83h
	add hl,de
	ld a,(0514ch)
	ret nz
	cpl
	ld d,(hl)
	ld c,h
	cp (hl)
	adc a,h
l5d7bh:
	add a,(hl)
	ld (01d4ah),a
	ld d,b
	sub 080h
	ld c,e
l5d83h:
	sbc a,b
	dec (hl)
	ret
	ex af,af'
	jr nz,l5dedh
	ld (hl),a
	ld b,000h
	ld b,(hl)
	adc a,h
	ret nz
	sub h
	cp c
	rrca
	push hl
	ld h,000h
	ld l,b
	xor e
	ld d,b
	ld de,04803h
	add hl,de
	ld l,0e5h
	ld l,a
	inc c
	dec bc
	nop
	nop
	ld (hl),h
	add hl,de
	call 00145h
	dec d
	pop hl
	ld c,098h
	adc a,(hl)
	nop
	dec b
	pop hl
	ret
	call sub_6104h
	ld b,(hl)
	sub h
	rlc c
	inc bc
	jp c,l51a6h
	cp 0e3h
	jp nc,00004h
	dec hl
	cp 012h
	ld c,001h
	jr c,l5dcdh
	sbc a,b
	call pe,0e10eh
	dec de
l5dcdh:
	ret c
	ld a,(0b960h)
	ld c,c
	add hl,de
	ret z
	ex (sp),hl
	add a,03dh
	cp 0c4h
	ld d,c
	ld a,c
	or 0c4h
	jp nz,0e778h
	jp po,008c9h
	ld h,d
	add hl,sp
	ex af,af'
	jr c,l5df0h
	push bc
	ld h,c
	add a,a
	nop
	ld (hl),c
l5dedh:
	ld c,e
	in a,(033h)
l5df0h:
	ld c,049h
	call pe,00372h
	nop
	ret nz
	ld a,(0c147h)
	ld h,a
	ld a,(0c148h)
	ld b,l
	ld l,a
	pop bc
	inc c
	ld (hl),023h
	rst 8
	ret c
	rst 10h
	ld a,l
l5e08h:
	ld (00d88h),a
	ld a,h
	ld (01615h),a
	nop
	nop
	ld hl,l636fh
	add hl,de
	ld (hl),c
	dec hl
l5e17h:
	ex de,hl
	ld bc,01054h
	add hl,bc
	xor l
	inc bc
	ld a,(hl)
l5e1fh:
	or a
	jr z,l5e3fh
	add hl,bc
	inc b
	ld a,(de)
	jr $+6
	inc de
	sub 004h
	ld c,004h
	or l
	add hl,bc
	inc b
	inc b
l5e30h:
	inc b
	add a,(hl)
	ret nz
	ex de,hl
	rst 30h
	add a,e
	ret
	push hl
	ld de,0892bh
	call c,01448h
	inc bc
l5e3fh:
	add hl,de
	ld (0f910h),hl
	or c
	rrca
	ld a,01eh
	ld (0b7f6h),a
	ld b,h
	ld sp,hl
	sbc a,b
	adc a,c
	ret m
	ld (bc),a
	push af
	jp m,0f3cah
	add a,e
	rlca
	call p,021c1h
	daa
	jp po,08ba3h
l5e5dh:
	inc b
	ret p
	sub b
	add a,a
	ld b,a
	nop
	add a,a
	add a,b
	add a,012h
	ld (l5636h),a
	ld hl,03668h
	ld de,01bcdh
	dec b
	or h
	jp nz,07620h
	ld d,(hl)
	ld sp,l5678h
	ld (08872h),a
l5e7ch:
	ld (bc),a
	ld (hl),h
	ld d,(hl)
	ld d,c
l5e80h:
	ld (bc),a
	jp l7925h
	ld d,d
	cp h
	jr l5e08h
	ld c,b
sub_5e89h:
	ld a,(0f264h)
	ld b,003h
	di
	push bc
	jp p,0fb61h
	inc b
	ld (08732h),a
	ld h,l
	ret p
	dec h
	adc a,c
	add a,l
	sub 00ah
	ret z
	sub h
	inc b
	add hl,bc
	dec c
	ld (bc),a
	jp nz,0327ah
l5ea7h:
	rst 30h
	pop bc
l5ea9h:
	ld a,e
	ld hl,(l6184h)
	call p,0194ah
	jp z,0fbc7h
	ld d,d
	jp p,0c5cdh
	ret c
	ld de,0ccc5h
	ld (bc),a
	ld e,(hl)
	push hl
	ld hl,l553ah
	ret nz
	ld l,h
	ld d,h
	sub b
	ret nz
	bit 0,a
	ld (bc),a
	jp z,l52c5h
	and 0feh
	add a,069h
	and e
	ld e,a
l5ed2h:
	sub c
	rrca
	ld (hl),l
	ld d,(hl)
	jp nz,0521ah
	ld a,(bc)
	inc bc
	push bc
	ld a,(bc)
	ld hl,09920h
	dec de
	ld a,(hl)
	ld h,h
	dec e
	inc b
	pop hl
	ld l,023h
	pop bc
	rst 28h
	sbc a,d
l5eebh:
	cp d
	sub b
	inc l
	dec c
	add a,h
sub_5ef0h:
	inc b
	djnz l5ea7h
	ld hl,(01158h)
	ld d,b
	jr nc,l5e80h
	ld (00680h),hl
	call 054d9h
	jp l5306h
l5f02h:
	ld (bc),a
	ld hl,l551ah
	ld de,l552ah
	and c
	ld d,d
	call m,03e21h
	rlca
	ld (096a6h),a
	call pe,0f222h
	ret nc
	ret p
	ld (sub_5a00h),a
	jp 02cdah
	inc e
	ld d,c
	adc a,c
	ex af,af'
	ld h,a
sub_5f22h:
	ld d,(hl)
	sub h
	and h
	ld (bc),a
l5f26h:
	ld d,h
	ld a,(bc)
	ret nc
	inc hl
	ld (0d658h),a
	ld (de),a
	ld b,a
	dec bc
	ld c,e
l5f31h:
	ld (bc),a
	dec h
	ld c,h
	ld d,(hl)
	sub c
	sub b
	call sub_546ch
	ld a,034h
	ccf
	ld (0d6f7h),a
	ret m
	inc hl
	ret nc
	ld b,021h
	jp m,l7c55h
	ld (hl),0c9h
	pop bc
	inc (hl)
	rra
	jp c,l4983h
	ret
	rst 38h
	ld l,h
	ld (hl),l
l5f54h:
	adc a,0cch
	ld hl,(024c4h)
	ld l,c
	ld d,e
	call 0f82dh
	ret
	rst 0
	inc de
	dec a
	ret nz
	ld b,02bh
	ret nz
	ld (hl),a
	ret
	jp po,03a70h
	ld e,b
	rst 30h
	ret pe
	nop
	ld a,(de)
	jp z,l5391h
	rlca
	ld bc,007cah
	add a,b
	ret nz
	ld c,0c1h
	jp 0aaaah
	jr c,$+104
	rlca
	xor c
	inc sp
	sbc a,d
	jp (hl)
	inc bc
	ret
	jp nz,0f3abh
	jr z,$-60
	rlca
	daa
	ld e,a
	jp l53b2h
	inc c
	ld d,h
	add hl,sp
	add a,c
	exx
	ld b,0efh
	sbc a,c
	ld b,h
	sbc a,d
	xor h
	jp 0ab5ah
	inc b
	call pe,0f21dh
	and e
	pop bc
	adc a,b
	ex af,af'
l5fa8h:
	ret nz
	call z,0c2c8h
	call 00e58h
	ld h,d
	pop af
	ld c,00fh
	call nc,0fe30h
	ex af,af'
	and d
	dec h
	and e
l5fbah:
	ld c,c
	xor 081h
	inc b
	ld d,c
	ld c,(hl)
l5fc0h:
	exx
	ld b,b
	dec e
	jp nz,l5408h
	call 01287h
	ld d,h
	ld hl,0a918h
	call nz,sub_59e5h
	inc (hl)
	sub d
	ld sp,hl
	rlca
	ld h,l
	dec de
	add a,b
	ld b,h
	jp nz,01825h
	add hl,bc
	jp po,0f618h
	add hl,hl
	sbc a,d
	add a,c
	cp 0f0h
	jp nz,l5422h
	add a,l
	jr z,l5ff7h
	jp c,0911ch
l5fedh:
	sub e
	ld d,d
	dec de
	ld d,h
	dec de
sub_5ff2h:
	adc a,c
	adc a,d
	ld sp,0e01bh
l5ff7h:
	sbc a,(hl)
	ld (hl),l
	dec de
	sub (hl)
	ld hl,(l723ah)
	ld d,h
	ld hl,(0d94dh)
	ld hl,(l4baah)
	and b
	inc hl
	inc l
sub_6008h:
	ld hl,02845h
	adc a,c
	xor a
	jr nc,l5fa8h
	sub (hl)
	or h
	ld h,e
	sbc a,l
	ex af,af'
sub_6014h:
	cp 01fh
	adc a,b
	and l
	cp d
	ld (de),a
sub_601ah:
	ld c,b
	ld (bc),a
	ld d,a
	ld (bc),a
	ld b,c
	rra
	ld (bc),a
	ld l,d
	ld d,(hl)
	xor 001h
	sra d
	ld e,e
	adc a,c
	ld (bc),a
l602ah:
	djnz l6082h
	xor (hl)
	ld h,088h
	sbc a,b
	sbc a,063h
	ld d,(hl)
	jp nz,0e0dah
	ld a,b
	daa
	and (hl)
	ld d,h
	ret po
l603bh:
	add a,h
	ld h,l
	ret po
	jp pe,0e066h
l6041h:
	ld h,e
	xor (hl)
	ld d,h
	ld a,(bc)
	ld e,b
	inc bc
	ld a,(bc)
	inc hl
	dec de
	ex de,hl
	ld hl,05a63h
l604eh:
	xor h
	sub d
	ld l,c
	push de
	halt
	inc b
	dec h
	jp nz,01b8ah
	ld l,c
	ld e,(hl)
	xor b
	inc (hl)
	sbc hl,hl
	or 0b0h
	ld (hl),l
	ld a,(04448h)
l6064h:
	pop de
l6065h:
	jp z,0df9ah
	rst 0
	ld d,d
	and d
	ld (hl),b
	defb 0edh ;next byte illegal after ed
	ld d,h
	inc h
	ld a,(0b5f9h)
	jp c,0b188h
	ld (hl),b
	jp nz,0a9ddh
	inc de
	rst 10h
	add hl,bc
	ld de,(028d7h)
	ret
	and h
l6082h:
	adc a,051h
	ld e,a
	sub 0a9h
	halt
	halt
	dec h
	ld a,(l5f26h)
	add a,(hl)
	ld h,d
l608fh:
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
	ld bc,l4051h
	ld bc,l4020h
l60a3h:
	nop
	nop
	ld h,b
	ld b,b
	add a,b
	ld b,b
	and b
l60aah:
	ld h,b
	nop
	exx
	jp po,00a60h
	ld b,b
	nop
	add a,b
	ld h,b
	and b
	add a,b
	nop
	dec d
	add a,b
	jr nz,l603bh
	inc d
l60bch:
	ld a,(bc)
	nop
	ld bc,0a0a0h
	nop
sub_60c2h:
	and b
	jr nz,l6065h
	ld e,094h
	inc d
	ld a,(bc)
	ret nz
	nop
	nop
	ret nz
	jr nz,l608fh
	ld b,b
	ret nz
	ld h,b
	ret nz
	nop
	add a,b
l60d5h:
	ret nz
	and b
	ret po
	nop
	ret po
	jr nz,l60bch
	ld (bc),a
	ld b,b
	ret po
	ld h,b
	ret po
	add a,b
	ret po
	jr nz,l608fh
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
l60f0h:
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
sub_6104h:
	nop
	ld b,c
	ld h,b
	ld h,c
	ld h,b
	add a,c
	ld h,b
	and c
	add a,b
	ld l,001h
	add a,b
l6110h:
	and (hl)
	nop
	ld b,c
	add a,b
	ld h,c
	add a,b
l6116h:
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
	ld hl,l41c0h
	ret nz
	ld h,c
	ret nz
	nop
	add a,c
	ret nz
	and c
	ret po
	ld bc,021e0h
	ret po
	nop
sub_613ah:
	ld b,c
	ret po
	ld h,c
	ret po
	add a,c
	ret po
	and c
	jr nz,l6143h
l6143h:
	ld bc,02120h
	jr nz,$+67
	jr nz,l61abh
	jr nz,$+7
	add a,c
	jr nz,l60f0h
	nop
	ld bc,0c0e2h
	nop
	ld b,c
	nop
	ld h,c
l6157h:
	nop
	ld l,081h
	nop
	dec bc
	nop
	ld l,l
	ld de,03601h
	nop
	ret nc
	dec bc
	sub (hl)
	add hl,hl
	nop
l6167h:
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
l6184h:
	sub b
	jr nz,l618bh
	adc a,h
	djnz $+29
	adc a,h
l618bh:
	rla
	ex af,af'
l618dh:
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
l61a2h:
	dec d
	call 0bebdh
	ld (0ddd3h),hl
	ld h,b
	ret m
l61abh:
	xor h
	adc a,(hl)
	ld (de),a
	ld bc,00b01h
	rst 38h
	add a,b
	ld hl,l5775h
	ld de,028d7h
	ld c,a
	ld bc,00a23h
	ld c,0dfh
	ld b,01eh
	nop
	call 051d6h
l61c5h:
	ld b,031h
	djnz l61cfh
	call 044b9h
	call nc,l62c4h+2
l61cfh:
	ld d,a
	and h
	sub b
	ld (bc),a
	dec a
	ld e,l
	ld (03049h),a
l61d8h:
	ld (bc),a
	inc (hl)
	ld (bc),a
	ld h,h
	dec bc
	inc h
	ld h,l
	ld (bc),a
	ld h,(hl)
	ld (bc),a
	ld l,b
	sub d
	ld (bc),a
	ld l,e
	ld (bc),a
	ld l,l
	ld (bc),a
	ld c,c
	ld l,(hl)
	ld (bc),a
	ld l,a
	ld (bc),a
	ld (hl),b
	ld (bc),a
	inc h
	ld (hl),c
	ld (bc),a
	ld (hl),d
	ld (bc),a
	ld (hl),e
	sub c
	ld (bc),a
	ld (hl),h
	ld (bc),a
	jp z,0c9c3h
	ld c,b
	ld h,c
	ld e,d
	ld d,a
l6201h:
	call po,sub_6324h
	inc b
	rra
	ld h,061h
	ld e,b
	ret
sub_620ah:
	sub a
	jp z,00336h
	ld d,a
	call 0c02fh
	jp 0ec05h
	jp nc,00ccah
	ld e,e
	ret
	rst 28h
	dec bc
	adc a,c
	call 004e7h
	adc a,e
l6221h:
	nop
	ld bc,0029ah
	ld hl,0835ch
	ld l,008h
	call 002deh
	rrca
	ld l,075h
	ld b,d
	ld d,037h
	dec h
	push bc
	ld b,b
	ld h,043h
l6238h:
	ld (04328h),a
	adc a,c
	adc a,e
	daa
	ld b,024h
	ld (hl),002h
	scf
	ld (bc),a
	jr c,l61d8h
	ld (bc),a
	ld h,(hl)
	ld (bc),a
	ld h,a
	ld (bc),a
	ld b,(hl)
	ld l,b
	ld (bc),a
	ld (hl),a
	ld b,e
	inc l
	jr nz,l62c9h
	rlca
	ld a,b
	ld b,e
	ret
	ld (hl),a
	ex (sp),hl
	push af
	nop
	push hl
	inc e
	call nz,sub_5778h
	adc a,(hl)
	nop
	call 0cd5ch
	ld sp,hl
l6266h:
	ld e,l
	call 00063h
	ld e,d
	call sub_5b11h
	call sub_593bh
	call 06808h
	ld e,b
	call 0021dh
	sbc a,d
	ld d,a
	push bc
	sub b
	dec bc
	ld (bc),a
	jp z,l5ceah
	xor l
	and d
	cp d
	jp (hl)
	add a,h
	ld a,(010bch)
	cp 00ah
	jp nz,0b346h
	ret m
	ld b,a
	ret z
	dec bc
	ld b,0dbh
	ld de,021d0h
	call m,0ac57h
	ret nz
	rla
	jp nz,096c4h
	ex af,af'
	ld (hl),h
	ex af,af'
	inc d
	ld d,a
	dec de
	djnz l6238h
	jp nz,l7906h
	jp c,0951ah
	rra
	ld a,b
	ld a,b
l62b0h:
	sbc a,c
	jp nz,03236h
	ld a,c
	inc b
	inc e
	sbc a,h
	ld (0bc7ah),a
	adc a,b
	ld a,h
	ex af,af'
	ld b,(hl)
	ld (l7d40h+1),a
	inc b
	and b
l62c4h:
	ld (0c27eh),a
	sub d
	ld b,e
l62c9h:
	ld (hl),l
	adc a,a
	or b
	ld hl,000fdh
	ld d,a
	ld bc,02098h
	otir
	ei
	ret
	ld a,000h
	dec bc
l62dah:
	nop
	call pe,sub_48e4h
	adc a,e
	xor (hl)
	or (hl)
	sub e
	ret c
	jp pe,l7211h
	ld h,e
	ld c,h
	xor 0ffh
	ld bc,l42dah
	ld e,b
	cp 005h
	ld b,07fh
	ld b,0a3h
	ld a,(bc)
	ld b,03fh
	ld b,001h
	ld b,01fh
	ld a,r
	and b
	dec e
	rla
	or h
	ld h,e
	add a,b
	ld e,l
	and b
	dec b
	inc b
	ld c,04dh
l6309h:
	ld e,040h
	xor d
	jp po,0c5c0h
	ld e,c
	sub c
l6311h:
	or b
	ex af,af'
	inc b
	ld (hl),c
	and b
	call nc,06a25h
l6319h:
	ld c,d
	ex de,hl
	ret c
	add hl,de
	ld c,a
	add a,(hl)
	inc b
	ld b,0f9h
	ld c,e
	adc a,c
sub_6324h:
	ld b,c
	sub c
	call z,08404h
	jr nz,$+105
	ld e,b
	inc a
	and h
l632eh:
	ld d,(hl)
	inc b
	cp l
	ld b,h
	ret po
	ld e,b
	ld d,d
	and a
	ld e,0cah
	and b
	ld e,b
	adc a,d
	ld (de),a
	ret nz
	ld e,b
	add a,l
	ld sp,0316dh
	ld a,0e1h
	or d
	sub b
	ld e,d
	jr $+91
	ld e,020h
	ld e,d
	call z,02b31h
	ld e,c
	ld c,0a0h
	ld c,0a4h
	jr nc,l6319h
	ld c,03ah
	ld l,e
	ld l,(hl)
	rra
	ld d,h
	rra
	ld e,(hl)
	ld h,h
	rra
	dec c
	ld d,h
	rra
sub_6363h:
	or a
l6364h:
	ld c,01fh
	ld c,d
	ld e,b
	ex de,hl
	ld c,d
	dec bc
	ld c,a
	ld e,c
	ld c,d
	ld l,a
l636fh:
	ld hl,(0b207h)
	ld hl,(0b2abh)
	ld c,d
	sub (hl)
	ld (hl),b
	rra
l6379h:
	or l
	ld d,a
	rra
	cp l
	rra
	ret po
	ld d,a
	in a,(01fh)
	ld c,01fh
	ld l,c
	sbc a,c
	call nz,00e3eh
	adc a,l
	out (08dh),a
	call z,0c80ah
	ld a,000h
	ld (009beh),a
	ld a,(09171h)
	ret nz
	jr nc,l6364h
	call nz,0a459h
	call p,0fe00h
	ld hl,(0b6cah)
	ld e,c
	cp 02ch
	jp z,l6143h
	inc b
	cpl
	jp z,l7587h
	nop
	nop
	jp nz,04032h
l63b3h:
	jp nz,l493ah
	ld bc,l4105h
	dec b
	inc b
	dec b
	ld l,048h
	dec b
	jp p,0afbeh
	ld c,l
	jp nz,018b5h
	sbc a,b
	rrca
	ld b,h
	sbc a,a
	ld (bc),a
	ld c,h
	ret po
	ld e,h
	sub l
	ld (hl),h
	sbc a,l
	sbc a,d
	ld h,0a6h
	ld e,c
	sbc a,d
	ld c,(hl)
	djnz $-100
	jr l6419h
	ld l,a
	dec e
	ld a,07ah
	ld e,b
	and c
	dec b
	ld a,098h
	ld (01e02h),a
	and h
	ret p
	inc b
	inc bc
	ld (bc),a
	jp z,0009dh
l63efh:
	sbc a,d
	inc bc
	inc bc
	dec bc
	ld c,016h
	jp m,l501eh
	sbc a,b
	or d
	ld b,060h
	sbc a,b
	ld (0844ah),a
	ld b,a
	ld a,(l576ch)
	add a,c
	defb 0edh ;next byte illegal after ed
	dec b
	sbc a,024h
	ld l,l
	cp 005h
	ld (hl),e
	jp z,sub_5a00h+1
	jp 0df02h
	jr nz,l63efh
	call po,09959h
	or h
l6419h:
	add a,b
	add a,b
	dec de
	ld (hl),a
	ld d,l
	ld b,003h
	xor a
	add hl,bc
	ld d,b
	ld a,(bc)
	ex af,af'
	ld a,(bc)
	adc a,c
	ex af,af'
	ld b,00ch
	ld b,089h
	inc c
l642dh:
	ld b,041h
	ld l,006h
	ld b,e
	call nc,sub_601ah
	rlca
	add a,(hl)
	ld b,d
	call z,05a5bh
	rlca
	adc a,(hl)
	ld d,h
	call z,00753h
	rlca
	ld d,l
	call z,0074ah
	dec bc
l6447h:
	inc a
	jp (hl)
	adc a,h
	jp c,04d2dh
	call nz,0800bh
	add a,06ch
	cp l
	ld d,d
	ld b,049h
	ld b,065h
	add hl,bc
	ld b,003h
	xor e
	add a,006h
	ld c,c
	inc bc
	ret
	sbc a,c
	ld b,a
	dec a
	sbc a,c
	ld b,b
	sub l
	jp 0f3c9h
	ld a,0b8h
	pop de
	rrca
	dec b
	ld h,l
l6470h:
	ei
	rlca
	cp d
	sbc a,d
	rlca
	ld a,(l684eh)
	rst 28h
	and e
	ld l,d
	sbc a,a
	add hl,hl
	ld hl,0c005h
	cp d
	or l
	or l
	ld h,h
	inc bc
	ld b,004h
	inc d
	cp 006h
	jp c,l548fh
	call pe,0dfach
	sub h
	ld b,0cdh
	ld (bc),a
	push bc
	ld d,h
	daa
	dec hl
	ld (bc),a
	ld d,d
	ld e,e
	ld c,h
	inc bc
	ld hl,0dc02h
	push hl
	jr nz,l6470h
	cp c
	ld a,l
	ex af,af'
	ld e,e
	cp 064h
	nop
	ld hl,l5ae4h
	jp c,05ab5h
	cp 0b4h
sub_64b2h:
	ex af,af'
	ld hl,l5af3h
	jp nc,02107h
	push de
	ld a,d
	ld e,d
	rst 20h
	ret pe
	add hl,de
	adc a,b
	ret c
	cp 008h
	sub (hl)
sub_64c4h:
	ret nc
	ld a,(00806h)
	ld c,(hl)
	ret c
	and (hl)
	exx
	inc hl
	add a,d
	ld h,006h
	jp l4c93h
	or b
	jp po,0c34dh
	ld e,h
	sub e
	sbc a,b
	inc l
	jp po,0a8a8h
	ld b,003h
	ld d,b
	call nc,018d6h
	jr l64e6h
l64e6h:
	inc e
	ld c,098h
	add a,(hl)
	ld c,048h
	inc bc
	ld d,h
	sub (hl)
	ld h,a
	ld c,046h
	rst 38h
	nop
	adc a,c
	inc d
	inc bc
	ld bc,0cc14h
	ld bc,0230eh
	ld a,(0ad64h)
	ld d,b
	ld h,(hl)
	inc b
	jp nz,l5b76h
	inc a
	ld a,(0b09fh)
	ld c,c
	djnz l6519h
	ld bc,00c81h
	ld b,(hl)
	ret nc
	ld e,e
	xor e
	inc d
	or l
	ld (0b5bbh),hl
l6519h:
	adc a,c
	ld b,0c2h
	ld b,d
	ld e,e
	ld a,00fh
	rst 0
	ld hl,059c3h
	ld a,h
	ld c,h
	adc a,04fh
	sbc a,l
	inc c
	rlca
	inc c
	ld d,00fh
	jp nz,02a04h
	ld e,l
	xor l
	xor l
	ld c,h
	xor c
	inc bc
	xor l
	inc c
	ld (0fda3h),a
	inc d
	rla
	or b
	add a,c
	ld (0c3a2h),a
	xor a
	ret po
	ld d,e
	ld d,a
l6547h:
	add a,032h
	cp h
	ld hl,0fff6h
	ld b,a
	sbc a,b
	ld c,c
	sbc a,(hl)
	call po,sub_42ech
	and (hl)
	ld e,h
	sub 0a6h
	jp l5c97h
	ld h,h
	inc bc
	add a,018h
	ld (00ca4h),a
	ld d,h
	sub l
	inc c
	dec h
	add a,0a0h
	add hl,sp
	inc b
	ld (05ca8h),a
	ld (09904h),a
	ld e,h
	ld hl,05c91h
	adc a,h
	xor d
	ret pe
	adc a,(hl)
	ld hl,(0351eh)
	sub d
	ld (de),a
	add a,b
	sub c
	inc de
	jp nc,0150dh
	and b
	dec d
	ld (hl),b
	ld (de),a
	ld (092b3h),a
	ld (bc),a
	jp nz,0a632h
	dec b
	ld sp,l5cb5h
	dec (hl)
	call nz,sub_620ah
	dec (hl)
	or a
	ld (bc),a
	ld c,l
	add a,022h
	xor a
	ld (0210eh),hl
	cp (hl)
	ld e,h
	jp 03428h
	dec sp
	sub 016h
	sbc a,h
	di
	or (hl)
	ld hl,0307eh
	ld (bc),a
	sub b
	ld (05c0bh),a
	ld de,0230ch
	dec b
	ld e,(hl)
	ld bc,0f1d0h
	jp 0fc51h
	inc de
	xor a
	ret
	ld d,(hl)
	rst 38h
	inc l
	ld a,(de)
	ld (de),a
	sub 00ah
	ld (l76dfh),a
	inc sp
	ld (de),a
	sub e
	inc sp
	ld b,08fh
	ld (de),a
	ld d,c
	ld e,h
	ld e,002h
	in a,(036h)
	and (hl)
	ld l,c
	ex af,af'
	ld l,c
	rst 18h
	dec e
	inc hl
	cp 0dfh
	and h
	inc de
	rst 18h
	ld (hl),e
	call 021a8h
	ld c,h
	ld l,l
	jp c,0024eh
	ld c,062h
	ld d,04ch
l65f1h:
	call 08082h
	inc h
	ld l,(hl)
	dec bc
	ld e,c
	dec c
	ld c,06dh
	ld d,051h
	dec bc
	ld b,b
	ld l,a
	dec bc
	and a
	ld c,0bbh
	ld d,04fh
	call nc,sub_700bh
	dec bc
	or d
	jr c,l661bh
	add a,017h
	sbc a,l
	ret z
	inc de
	cp b
	ret c
	cp c
	add a,0a0h
	cp d
	ret c
	ld (hl),001h
l661bh:
	ret
	sub 0a3h
	call c,0cb05h
	sbc a,l
	add a,a
	push hl
	ld c,00fh
	inc b
	nop
	cp e
	ld c,03eh
	call 0aa1dh
	sub (hl)
	ex (sp),hl
	ld c,0d1h
	ld a,(0bb60h)
l6635h:
	dec sp
	and h
	or e
	dec a
	xor b
	ld (hl),c
	ret nz
	and h
	dec d
	dec c
	jp nz,05ebah
	sbc a,0c2h
	ld h,l
	di
	ld (00081h),a
	ld a,b
	jp z,l5d00h
	cp 070h
	jp z,0941bh
	inc b
	ld l,b
	xor h
	cp h
	call z,0f858h
	ld l,04ah
	ld e,l
	add a,0f0h
l665eh:
	call sub_73c6h
	djnz l6635h
	inc l
	ret nz
	daa
	sbc a,c
	sub a
	ld (04304h),a
	jr nc,$-2
	pop bc
	or a
	dec c
	jp 033cbh
	pop bc
	daa
	ret
	or e
	cp b
	cp e
	djnz l665eh
	xor a
	and d
	ld h,a
	ex af,af'
	rst 8
	dec b
	rlc h
	pop bc
	ld bc,0c633h
	ld (bc),a
	pop af
	inc bc
	inc b
	call 0dccbh
	inc bc
	sbc a,0d8h
	sbc a,0dbh
	rst 18h
	ret po
	ld e,l
	inc b
	jp (ix)
	inc bc
	jp z,00103h
	sbc a,002h
	inc b
	ld a,h
	ex af,af'
	daa
	nop
	inc b
	inc bc
	dec hl
	inc b
	ld bc,07902h
l66abh:
	inc b
	ret p
	ex af,af'
	sbc a,h
	nop
	dec b
l66b1h:
	inc bc
	xor l
	dec b
l66b4h:
	ld bc,0e702h
	inc b
	ex af,af'
	jp nz,01200h
	rst 38h
	ld a,(0ab62h)
	xor d
	ld h,e
	rst 8
	ret z
	inc bc
	ld d,000h
	nop
	ld e,a
	ld hl,l5d3eh
	add hl,de
	ld a,(hl)
	cp 0ffh
	add hl,bc
	jp nz,l5e17h
	xor a
	sub (hl)
	ld e,a
	pop hl
	ld c,c
	sbc a,d
	nop
	jr c,l673bh
	ld b,096h
	ld c,099h
	ld c,b
	ld de,03ef8h
	inc e
	sbc a,c
	outi
	ld bc,0d380h
	sbc a,b
	add hl,de
	djnz $-11
	ret
	ei
	nop
	ld d,0ebh
	ld (0328eh),a
	ld (0fc5ah),a
	inc (hl)
	ld (007eeh),a
	and l
	call m,03370h
	rlca
	push bc
	ld a,(de)
	call m,0f22ah
	rlca
	cp d
	ld a,(de)
	defb 0fdh,01eh,0f5h ;illegal sequence
	rlca
	or l
	inc e
	ld l,(iy-007h)
	rrca
	sbc a,d
	ld a,0fdh
	rlca
l671ah:
	xor d
	jr c,l671ah
	ccf
	rlca
	ld c,05ch
	cp 066h
	nop
	rla
	rlca
	cp 050h
	inc b
	rrca
	daa
	ld hl,(00f07h)
	dec (hl)
	sub b
	ld (hl),b
	ld b,a
	rst 38h
	inc (hl)
	ld a,(bc)
	rrca
	rlca
	call z,sub_70ffh
	dec bc
l673bh:
	rlca
	and l
	ld a,(de)
	rst 38h
	dec h
	inc de
	rlca
	jp z,0ff1ch
	ld (l7716h),a
	ld c,0ffh
	ld c,e
	ld a,(de)
	ld e,a
	ld b,0ffh
	ld h,h
	dec e
	rlca
	add a,a
	cp h
	cp 048h
	ld hl,0030fh
	cp 028h
	dec h
	rra
	adc a,e
	and b
	inc e
	jr z,l67a9h
	ld h,b
	jp c,0d02ch
	rlca
	ld d,l
	cp 00bh
	inc l
	ret po
	ccf
	ld b,(iy+068h)
	jr nc,l6779h
	ld e,e
l6773h:
	defb 0fdh,016h,047h ;illegal sequence
	inc sp
	sub a
	daa
l6779h:
	ld h,(hl)
	scf
	scf
	ld de,023c7h
	ld a,(092cfh)
	ld c,b
sub_6783h:
	ld a,0c7h
	add hl,sp
	ld (hl),b
	ld c,c
	rlca
	xor h
	inc e
	ei
	ld e,h
	ld b,e
l678eh:
	cpl
	ld c,h
	cp l
	ld a,(0e101h)
	di
	and 020h
	jp z,l5f31h
	call m,025f8h
	inc d
	ld e,a
	ld a,(093f1h)
	add a,b
	and 00fh
	rra
	ld (09126h),a
l67a9h:
	or (hl)
	dec (hl)
	and e
	ld (0a3b4h),hl
	ld b,b
l67b0h:
	ld a,(0c39ch)
	or a
	ld (de),a
	jr nz,l67beh
	ld a,(000b4h)
	add a,(hl)
	jp m,l5f54h
l67beh:
	xor a
	inc hl
	add a,(hl)
	adc a,b
	ld a,b
	jp nc,02b5dh
	ld l,a
	ld (hl),a
	ld b,b
l67c9h:
	ld a,(08621h)
	ld e,a
	inc hl
	ld d,(hl)
	inc hl
	ld b,b
	ld a,(0b234h)
	add a,028h
	ld d,a
	ld a,d
	ld (hl),007h
	rlca
	and e
	ld (bc),a
	ld (hl),a
	di
	out (099h),a
l67e1h:
	ld a,08eh
	inc bc
	ld bc,059edh
	ld a,d
	and 03fh
	ld d,a
	out (03bh),a
	jr z,l67e1h
	and 003h
	jr z,l67fah
	in a,(098h)
	cp 099h
	di
	and (hl)
	ld e,a
l67fah:
	ld sp,hl
	ret nz
	ei
	add a,b
	ld b,a
	xor a
	ld (hl),a
	inc l
	inc hl
	inc hl
	ld (bc),a
	inc b
l6806h:
	inc b
	djnz l67b0h
	ret
	set 6,d
	or 0aah
	ld (hl),e
	ld (bc),a
	ld c,b
	ld (hl),d
	ld (bc),a
	dec c
	ld (bc),a
	ei
	inc c
	ld hl,(09310h)
	sbc a,b
	ld d,(hl)
	ld b,l
	sbc a,b
	sub l
	ccf
	ld h,b
	and 05bh
	inc bc
	xor 08ch
	ld h,b
	ld b,000h
	ld hl,l6041h
	ld de,06071h
	ld b,030h
	nop
l6832h:
	call sub_6014h
	inc hl
	inc de
	djnz l6832h
	ld hl,l7148h
	ld c,0a1h
	ld c,010h
	ld a,(hl)
	ld h,h
	add a,a
	nop
	ld b,a
	ld c,(hl)
	djnz l67c9h
	dec hl
	ld c,(hl)
	dec b
	ld (de),a
	inc de
	ld a,c
l684eh:
	ld b,h
	ld (de),a
	dec de
	call pe,01821h
	call 0e905h
	ld (bc),a
	ld a,(0c398h)
	ld a,003h
	ld e,b
	add a,l
	ld a,(bc)
	rlc l
	adc a,d
	ld c,b
	ld d,d
	ld b,050h
	call nz,0af35h
	ld (hl),e
	defb 0fdh,001h,0c9h ;illegal sequence
	ld a,(de)
	cp (hl)
	ret z
	inc a
	ld (de),a
	ret
	ld h,b
	defb 0edh ;next byte illegal after ed
	dec de
l6877h:
	inc d
	ld a,(hl)
	dec a
	sbc a,a
	ld de,00120h
	sbc a,h
	add a,a
	djnz l6877h
	ei
	ld c,05fh
	jr c,$+23
	ret
	sbc a,(hl)
	ld e,d
	ei
	ld hl,(09105h)
	ld d,h
	inc b
	or e
	inc bc
	xor c
	push de
	ld (bc),a
	ld (bc),a
	ld b,l
	pop hl
	push de
	ret m
	dec b
	ld d,007h
	ld (bc),a
	rlca
	sub d
	jp nc,01001h
	xor e
	nop
	xor c
	ld l,b
	or 0a7h
	rlca
	dec e
	nop
	nop
	jp p,02124h
	ret p
	ex de,hl
	ld b,b
	xor b
	ld c,a
	ld bc,0000ch
	inc sp
	ldir
	adc a,(hl)
	ld a,(bc)
	add a,c
	ld d,c
	or a
	sbc a,(hl)
	call m,00f10h
	ret
	inc e
	ld (hl),0c9h
	inc e
	jp po,l5c95h
	rlc (hl)
	inc a
	ld (0f538h),a
	cpl
	inc a
	jp nz,020d3h
	inc c
	jp 04fb4h
	ld de,0060bh
	nop
	add hl,de
	ld e,(hl)
	add a,e
	ld (bc),a
	push hl
	ld hl,l6116h
	rlca
	sbc a,b
	xor l
	pop hl
sub_68ebh:
	push de
	nop
l68edh:
	ret
	ld b,h
	ld h,c
	out (061h),a
	and c
	ld h,d
	cp c
	nop
	ld h,d
	pop af
	ld h,d
	ld bc,02763h
	ld h,e
	ld b,000h
	ld a,a
	jp 0612bh
	ld b,03fh
	push hl
	ld a,(hl)
	nop
	add a,002h
	and b
l690bh:
	ld (hl),a
	ld h,000h
	ld l,a
	add hl,de
	inc b
	ld b,(hl)
	inc hl
	ld a,(hl)
	pop hl
l6915h:
	dec hl
l6916h:
	nop
sub_6917h:
	add a,(hl)
	ld (bc),a
	ld (hl),a
	dec hl
	ld a,(hl)
	add a,b
	ld (hl),a
	ret
	ld d,e
	daa
	ld de,05f05h
	ld d,d
	add a,c
	ld l,b
	jp z,l6157h
	djnz $+56
	nop
	dec hl
	ld (bc),a
	ret
	dec hl
	push hl
l6932h:
	ld c,0cdh
	ld h,l
	ld h,c
	pop hl
	bit 2,c
	jp nz,l6201h
	jp z,0d221h
	ld h,c
	and 064h
	inc bc
	and 000h
	nop
	ret nz
	ld hl,l4326h
	ld c,(hl)
	ld d,008h
	ld l,h
	ld b,0cdh
	cp e
	jr l69b4h
	ld hl,00a36h
	add a,b
	dec (hl)
	ld b,008h
	ld a,(bc)
	ld h,(hl)
	ld a,(bc)
	jp po,0e376h
	ld a,(bc)
	jr nz,l69dah
	dec a
	and l
	ld (hl),006h
	sub 0ebh
	ld e,d
	ld (bc),a
	ex de,hl
	out (01bh),a
	ex de,hl
	ld e,c
	nop
	ret
	ld a,c
l6973h:
	and d
	jp z,l61c5h
l6977h:
	rr d
	ld (bc),a
	djnz l6973h
	ret
	pop af
	ld a,(hl)
	or d
	sub l
	ld l,(hl)
	inc bc
	or d
	and e
	adc a,a
	adc a,(hl)
	inc h
	and 08eh
	ld a,b
	ld bc,02321h
	ld a,e
	call 00145h
	ld a,(hl)
	add a,b
	ld b,053h
	ld c,098h
	defb 0edh ;next byte illegal after ed
	inc hl
	or e
	ei
	sbc a,e
	rst 0
	jp pe,01cb4h
l69a1h:
	ld h,d
	ccf
	ld a,(09f65h)
	ld hl,(080d1h)
	dec b
	dec a
	jp z,06217h
	dec a
	ret nz
	djnz l6a30h
	xor 01eh
l69b4h:
	ld c,c
	ld a,(hl)
	and 0e1h
	add a,e
	inc b
	ld bc,002ffh
	rst 38h
	inc bc
	add hl,de
	nop
	cp b
	call c,0d9e4h
	djnz l6977h
	pop hl
	inc bc
	cp 007h
	adc a,l
	cp 01ah
	cp h
	ld bc,0e5bch
	nop
	cp 001h
	inc hl
	nop
	ld bc,001fdh
l69dah:
	ld bc,0fe97h
	ld bc,02418h
	inc bc
	in a,(030h)
	ld (hl),03fh
	sbc a,e
	ld b,03bh
	nop
	rst 38h
	inc b
	cp 004h
l69edh:
	defb 0fdh,003h,0b2h ;illegal sequence
	jr $+5
	ld e,05bh
	ld bc,03a32h
	ld (bc),a
	adc a,d
	defb 0fdh,001h,03dh ;illegal sequence
	inc e
	nop
	call m,00101h
	ld (l4302h),a
	inc bc
	and e
	ld e,0cdh
	sub a
	ld a,(hl)
	sub a
	adc a,c
	ld (hl),a
	call c,02b80h
	jp nc,l62c4h
	inc e
	add hl,de
	inc d
	ld (hl),006h
	xor a
	djnz l69edh
	ld b,b
	dec hl
	ld de,l6221h
	call 02979h
	call p,05512h
	jp c,012f8h
	inc a
l6a2ah:
	ret c
	ret nc
	dec hl
	jp nz,0db17h
l6a30h:
	ld h,d
	ld a,(hl)
	sbc a,c
	nop
	cp 08bh
	jp nz,l62dah
	ld a,073h
	ld b,c
	ld (hl),a
	ld hl,l5fedh
	and 007h
	cp a
	ld d,a
	rst 20h
	add a,b
	cp (hl)
	ld b,0ffh
	jp c,055edh
	ld h,d
	sub a
	xor l
	ld a,(0ab2bh)
	add a,019h
	jr z,l6a56h
l6a56h:
	call p,0ff89h
	ld h,d
	sbc a,h
l6a5bh:
	ld c,c
	rrca
	ld b,(hl)
	sbc a,e
	ld h,l
	inc de
	ld a,000h
	rrca
	ld (hl),a
	jp nz,l6311h
	inc hl
	dec (hl)
	jp nz,l7e19h
	add a,c
	rst 10h
	ld a,b
	cp c
	cp e
	ld h,e
	dec d
	ld h,l
	sub a
	dec b
	ld (de),a
	ret nz
	inc (hl)
	out (0b5h),a
	cp d
	ld d,d
	ld (hl),h
	cpl
	inc hl
	xor a
	ld b,a
l6a83h:
	ld d,a
	add a,001h
	ld bc,l5ed2h
	ld h,e
	ex af,af'
	jp 00802h
	or a
	inc bc
	ex af,af'
	ld l,(hl)
	inc b
	ex af,af'
	jp c,00805h
	ld a,(hl)
	jr z,l6acch
	ret z
	cp d
	add a,h
	inc b
	rst 0
	jp 0c223h
	jp po,0b2c9h
	ld h,b
	dec d
	ld h,h
	ld h,h
	ld h,e
	ld d,(hl)
	inc h
	or e
	dec hl
	rst 38h
	cp e
	xor b
	rrca
	ld (hl),h
	ld l,e
	rst 0
	rrca
	ld (bc),a
	rrca
	adc a,c
	ld d,b
	ld (hl),e
	ret po
	ld b,a
	jp pe,0f859h
	ld a,b
	rrca
	inc bc
	adc a,e
	jr z,l6ac6h
l6ac6h:
	ld a,(bc)
	ex af,af'
	rrca
	call nz,0936dh
l6acch:
	ld c,b
	ld hl,(00ac8h)
	pop af
	rrca
	ld hl,(00064h)
	in a,(0bch)
	ld (bc),a
	rrca
	adc a,a
	inc b
	dec c
	rrca
	cpl
	nop
	rst 38h
	ret m
	jp (hl)
	dec e
	nop
	nop
	nop
	ld hl,0f3e9h
	ld (hl),00fh
	inc hl
	ld (hl),000h
	ret nz
	ld (bc),a
	call 005cfh
	call 08300h
	ld b,c
l6af7h:
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
	ld (0000ch),a
	ld b,c
	ld a,01fh
	ld (l40fbh),a
	ld a,004h
	ex af,af'
	ld (0c029h),a
	ld a,024h
	rrca
	dec b
	or b
	add hl,bc
	inc b
	call 000a5h
	dec b
	ld hl,l410dh
	call 00103h
	ld hl,01c70h
	dec b
	dec hl
	pop de
	dec b
	call 004efh
	ld b,c
	add a,(hl)
	or 002h
	scf
	ld (00388h),hl
	call 0134fh
	nop
	sbc a,b
	ld b,b
	ld a,(040bch)
	or a
	jp z,06761h
	ld b,b
	ld e,h
	inc hl
	ld c,c
	jp 0a538h
	ex af,af'
	ld b,0e9h
	ld (bc),a
	ld a,009h
	ld h,033h
	adc a,h
	inc bc
	rlca
	ld d,e
	add a,a
	inc bc
	di
	ld e,h
	add a,b
	ei
	halt
	jp 08868h
	add a,(hl)
	cp l
	ld b,b
	ex af,af'
	dec a
	jp z,l42e2h
	inc bc
	ld a,e
	ld b,l
	adc a,b
	inc bc
	or b
	ld c,d
	inc bc
	rst 28h
l6b76h:
	ld c,l
	adc a,b
	inc bc
	ld c,a
	ld d,e
	inc bc
	ld a,(bc)
	ld d,(hl)
	adc a,b
	inc bc
	sub (hl)
	ld e,b
	inc bc
	ret nz
	ld e,d
	nop
	ret
	nop
	ld bc,0d5c5h
	push hl
	exx
	ex af,af'
	ld h,c
	push af
	dec b
	call 0390ch
	inc d
	call m,07c40h
	ld (bc),a
	inc de
	nop
	inc bc
	ld a,(0c39ah)
	and 010h
	jp z,088e0h
	xor (hl)
	ld bc,l6832h
	cp h
	inc b
	ld d,(hl)
	pop bc
	pop hl
	ld b,0d1h
	pop bc
	pop af
	ex af,af'
	exx
	dec b
	ld de,03ac9h
	push bc
	ld b,(hl)
	rst 10h
	and e
	add a,d
	rst 10h
	inc h
	ld a,03ah
	rst 10h
	ld b,c
	add a,008h
l6bc4h:
	and 00fh
	djnz l6b76h
	sub d
	djnz l6c04h
	nop
	ld (001d4h),hl
	ld e,b
	ld (bc),a
	nop
	inc bc
	ld h,l
	ret nz
	dec bc
	ld a,(bc)
	nop
	ld h,002h
	dec b
	sub 006h
	ld a,(01ed0h)
	sub 014h
	ld (bc),a
	dec e
	inc b
	ld hl,l4140h
l6be8h:
	jp 05ecbh
	inc d
	ld c,h
	ld bc,00014h
	di
	ld hl,00038h
	ld de,04180h
	ld bc,00300h
	nop
	ldir
	ld hl,l4176h
	ld (03904h),hl
sub_6c03h:
	nop
l6c04h:
	ld a,0c3h
sub_6c06h:
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
	call c,sub_40beh
	pop af
	ld l,b
	ei
	ld (hl),e
	ld a,(0f3e0h)
	inc d
	and 0bfh
	ld (08704h),a
	ld l,d
	add a,c
	add a,a
	scf
	djnz $+17
	or 042h
	djnz l6c69h
	nop
	nop
	rst 20h
	nop
	ld a,(0c145h)
	or a
	ret nz
	ld a,(09160h)
	cp l
	ld (l4a03h),a
	rlca
	ld h,c
	ld c,e
	ld b,000h
l6c47h:
	ld hl,l4262h
	ld de,04292h
	ld b,030h
	nop
l6c50h:
	call sub_4235h
	inc hl
	inc de
	djnz l6c50h
	ld hl,09248h
	ld c,0c2h
	ld c,010h
	ld a,(hl)
	ld h,b
	add a,a
	nop
	inc hl
	inc hl
	ld c,(hl)
	djnz l6be8h
	dec hl
	ld c,(hl)
l6c69h:
	dec b
	ld (de),a
	inc de
	ld a,c
	ld b,l
	ld (de),a
	dec de
	call pe,01821h
	sbc a,e
	jr c,l6cb0h
	ld hl,(0c398h)
	ld a,003h
	rst 28h
	ld h,(hl)
	ld a,(bc)
	dec b
	ld c,d
	push bc
	ld b,(hl)
sub_6c82h:
	ld d,d
	ld b,050h
	dec (hl)
	nop
	xor a
l6c88h:
	inc hl
	djnz l6c88h
	ret
	ld a,(de)
	cp (hl)
	rrca
	ret z
	inc a
	ld (de),a
	ret
	ld h,b
	ld l,b
	dec de
	ld a,(hl)
	dec a
	ld (bc),a
	cp 0ffh
	jr nz,l6c9eh
	xor a
l6c9eh:
	ld (hl),a
	ld (0f50eh),hl
	call 041f7h
	jr c,l6cabh
	ret
	ld a,(bc)
	ld a,(bc)
	xor l
l6cabh:
	ld a,(hl)
	ld (bc),a
	rlca
	nop
	ld a,a
l6cb0h:
	nop
	nop
	inc (hl)
	xor a
	ld d,b
	ld hl,0be80h
	ld bc,0e6cah
	ld b,d
	ld (hl),a
	ld a,(0448fh)
l6cc0h:
	or (hl)
	ld b,c
	dec de
	ld b,e
	inc bc
	ld sp,0034dh
	ld e,(hl)
	inc bc
	adc a,h
	adc a,l
	inc bc
	ld h,e
	sbc a,(hl)
	inc bc
	jp z,01803h
	jp pe,01903h
	add a,01fh
	ld hl,(03003h)
	ld h,c
	inc bc
	ld (hl),d
	ld b,h
	nop
	ret
	ld a,05ah
	ld hl,044ffh
	call 02330h
	call nz,0fbafh
	inc hl
	call z,02180h
	sbc a,a
	ld b,h
	ld de,0c690h
	ld bc,09c30h
	jp nz,0a8aah
	jp p,03231h
	ret m
	djnz l6d3fh
	ld (bc),a
l6d02h:
	ld (l558ah),a
	ld hl,026cfh
	or b
	ld b,d
	jp 0d294h
	and l
	push de
	or a
	ld c,c
	add a,l
	inc a
	ld (04803h),a
	or (hl)
	inc bc
	call nz,0c918h
	rst 28h
	and b
sub_6d1dh:
	dec sp
	ld b,d
	ld a,(08665h)
	ld (de),a
	inc bc
	ld (de),a
	jr nc,l6d2bh
	ld (de),a
	call sub_613ah
l6d2bh:
	ld b,c
	ld d,a
	inc c
	ld b,l
	ld d,a
	add a,c
	ld a,06ah
	ld hl,00719h
	cp (hl)
	ld e,a
	dec c
	ret
	ccf
	ld h,l
	add a,a
	inc l
	inc bc
l6d3fh:
	and 069h
	ccf
	jp po,0ca88h
	ld (de),a
	inc bc
	ld (de),a
	ld (hl),e
	ld b,03fh
	cpl
	pop hl
	sub l
	add hl,sp
	add a,h
	inc e
	ld a,(bc)
	ld hl,l4490h
	adc a,c
	call z,0003ch
	ld bc,0029ah
	ld hl,l43e8h
	ld a,(08689h)
	cpl
	call z,002deh
	ld b,0a9h
	ld (03603h),a
	rlca
	ld c,c
	and a
	ld (hl),a
	rlca
	ld c,e
	inc l
	adc a,d
	inc d
	and h
	inc bc
	inc d
	ex af,af'
	adc a,e
	ld a,b
	inc hl
	ld hl,(0888bh)
	rst 8
	jp pe,03d8bh
	ld e,c
	adc a,e
	inc l
	inc bc
	ld c,b
	inc l
	add hl,bc
	adc a,e
	pop af
	ld h,l
	adc a,h
	ld (de),a
	inc bc
	sub l
	ld c,e
	ccf
	in a,(040h)
	ccf
	add a,c
	ld h,h
	ld hl,00753h
	ret nz
	ld l,(hl)
	ld hl,08f69h
	out (085h),a
	adc a,l
	inc (hl)
	sub h
	inc bc
	inc (hl)
	dec bc
	pop af
	ld b,a
	ld h,l
	adc a,(hl)
	ld (de),a
	inc bc
	ld (de),a
	ld c,c
	cp a
	ret pe
	ld (hl),b
	ret
	and b
	ld (0b428h),a
	ld (08ba8h),a
	dec b
	ret z
	ld h,h
	rst 28h
	ld h,b
	ld d,b
	nop
	dec b
l6dc2h:
	inc a
	nop
	ld e,h
	nop
	ld d,(hl)
	di
	or l
	ex (sp),hl
	ld l,b
	ld b,0a4h
	and h
	ld d,(hl)
	nop
	dec b
	cp e
	ld b,b
	ld a,(bc)
	inc b
	inc b
	inc bc
	ld b,004h
	ld d,(hl)
	ld (bc),a
	nop
sub_6ddch:
	ld a,(bc)
	ld b,00ah
	dec b
	inc bc
	ld (bc),a
	cp h
	ld a,l
	ret po
	ld d,e
	ld d,h
	ld b,c
	ld d,d
	nop
	ld b,h
	ld b,c
	ld d,h
	ld b,l
	ld e,e
	ld e,l
l6df0h:
	ld h,h
	ld h,l
	nop
	nop
	ld c,e
	ld c,h
	ld c,c
	ld b,l
	ld d,(hl)
	ld b,l
	ld d,d
	djnz l6e58h
	ld c,d
	ld d,l
	ld d,000h
	ld b,h
	ld b,l
	add a,b
	inc b
	ld d,d
	ld c,a
	ld e,c
	ld b,l
	ld b,h
	ld e,e
	nop
	ld c,l
	ld b,c
	ld c,(hl)
	ld b,d
	ld c,a
	ld d,a
	nop
	ld b,c
	ld (bc),a
	ld e,e
	ld d,e
	ld d,l
	ld c,(hl)
	ld e,e
	ld c,c
	ld (bc),a
	djnz l6e6dh
	ld d,d
	ld b,a
	ld de,04349h
	ld e,e
	ld c,c
	ld b,(hl)
	ex af,af'
	ld c,l
	ld b,b
	ld d,l
	ld b,d
	sub h
	inc d
	ld bc,01047h
	ld e,e
	ld d,h
	ld c,b
	cpl
	ld d,l
	ld b,a
	ld c,b
	ld d,000h
	ld b,(hl)
	ld b,l
	inc (hl)
	rrca
	xor d
	ld c,a
	ld hl,(l5912h)
	jr nz,l6e89h
	ld c,(hl)
	ld d,d
	ld b,a
	ld e,c
	nop
	ld d,a
	ld e,b
	ld c,c
	inc c
	inc a
	ld b,l
	ld h,h
	ld b,e
	call nz,sub_4559h
	ld d,e
	ld (hl),b
	ld c,l
	ld d,e
l6e58h:
	sbc a,b
	ld (hl),h
	ld a,a
	ld d,h
	ld b,l
	sbc a,b
	call nc,sub_4950h
	ret p
	sub b
	call z,013e7h
	cp d
	ld b,l
	ret
	rst 18h
	and 021h
	add hl,hl
l6e6dh:
	ld c,d
	ld c,d
	rst 28h
	jp po,02c85h
	call 04a02h
	call pe,0cd32h
	ld c,b
	xor a
	dec bc
	adc a,l
	ld (bc),a
	add a,048h
	ld bc,0ddcdh
	ld b,l
	ld a,000h
	ld (019d7h),a
l6e89h:
	and d
	call sub_4965h
	sub a
	sub e
	ld a,(bc)
	adc a,e
	and c
	add a,b
	exx
	ld c,c
	or a
	ret z
	ld a,(0c2feh)
	ld e,c
	ld bc,00348h
	ld (l476ch),hl
	inc bc
	adc a,e
	ld b,(hl)
	inc bc
	ld h,e
	ld a,l
	inc bc
	jr l6eadh
	ld bc,l4605h
l6eadh:
	ret
	ld bc,084ffh
	ld hl,(09ec8h)
	sub d
	ld d,d
	inc b
	inc de
	ld (0ad03h),a
	cp c
	sbc a,h
	sub d
	ex af,af'
	ld a,(l4a3fh)
	sub 073h
	ld (hl),c
	ld b,(hl)
	adc a,d
	adc a,(hl)
	rlca
	and b
	rst 30h
	ld (hl),e
	ld b,(hl)
	dec de
	ld hl,l466dh
	ex (sp),hl
	or c
	sub c
	adc a,b
	sub d
	sub c
	call po,l4d21h
	ld l,(hl)
	ld b,(hl)
	pop bc
	and e
	djnz $-103
	xor d
	inc hl
	ld h,(hl)
	call z,000a7h
	jr nc,l6ee9h
	ld h,b
l6ee9h:
	nop
	ld (hl),b
	nop
	ld h,b
	inc bc
	ld c,b
	inc d
	add a,l
	inc bc
	ld d,h
	ld b,d
	adc a,h
	nop
	ld a,(bc)
	ld h,d
	inc b
	ld d,d
	inc bc
	jp m,l7600h
	rlca
	ld (hl),l
l6f00h:
	ld b,044h
	inc b
	add a,b
	dec e
	ld (sub_5a00h),a
l6f08h:
	ld (bc),a
	and b
	nop
l6f0bh:
	sub c
	in a,(036h)
	ld bc,00090h
	sub b
	rrca
	ld a,(l7c65h)
	ld (hl),d
	inc bc
	call pe,03d5bh
	add a,b
	ld a,(04603h)
	inc a
	and 0ach
	ld a,h
	dec b
	pop de
	ld (de),a
	ld (bc),a
	add hl,bc
	ld (00103h),a
	dec a
	ld hl,l4710h
	jp z,l4728h
	ld b,039h
l6f34h:
	ld d,006h
	ld (hl),d
	inc e
	ld b,022h
	pop de
	ld b,021h
	jp po,08f47h
	add hl,de
	jp nc,03869h
	ld c,e
	xor a
	adc a,c
	ret po
	ld b,(hl)
	xor a
	ld l,008h
	ld (bc),a
	sub a
	call po,007c9h
	call m,0e000h
	ld (de),a
	ld c,048h
	xor d
	nop
	ex af,af'
	ld b,011h
	add hl,bc
	ld e,b
	sbc a,h
	ld c,00ch
	inc b
	ld c,00ah
	ld c,b
	sbc a,h
	djnz l6f6ch
	rlca
	nop
	jr nc,l6f08h
l6f6ch:
	jr l6f82h
	ld a,(047e6h)
	add a,(hl)
	add a,c
	ld d,d
	ld b,a
	ld a,(l47e8h)
	inc hl
	rlca
	ld hl,00462h
	ld a,(hl)
	ld (0045ch),a
	xor l
l6f82h:
	ld e,(hl)
	inc b
	ld l,d
	ld h,h
	inc b
	ld h,(hl)
	dec de
	adc a,b
	or c
	cp 005h
	adc a,h
	sub a
	ld c,d
	call nc,sub_57a7h
	inc e
	sub c
	sub d
	call c,0ff19h
	ld (bc),a
	inc bc
	ld bc,000c4h
	sbc a,b
	ld (de),a
	ld h,h
	call 023b9h
	ld l,e
	ret nz
	inc h
	ld (0fe03h),a
	djnz l6ffch
	jp z,004b3h
	ld a,(bc)
	jp z,083a7h
	inc b
	ld b,(hl)
	jp c,l4786h
	sbc a,l
l6fb9h:
	add a,h
	sbc a,b
	call 03a68h
	sbc a,h
	ld b,a
	ld (bc),a
	add a,004h
	cp 086h
	ret nc
	ld (0de07h),a
	jp p,sub_5a00h+2
	nop
	ld a,h
	nop
	or l
	ld b,a
	ld (de),a
	adc a,d
	ld l,h
	xor 074h
	inc bc
	sub l
	and a
	inc (hl)
	ld hl,l5cd3h
	ld a,(02601h)
	ld b,(hl)
	xor 0e7h
	add a,(hl)
	inc b
	ld hl,l47f1h
	ret nz
	ld d,d
	adc a,(hl)
	rla
	ld sp,hl
	ld b,a
	call m,0082eh
	jp pe,0cd5dh
	rst 30h
	ld a,(0b687h)
	ld (bc),a
	jp pe,08a00h
l6ffch:
	nop
	jr z,l6fffh
l6fffh:
	inc e
	sbc a,076h
	sub b
	ld h,e
	ld c,01bh
	ld h,00eh
	ld c,c
	ld c,l
	adc a,l
sub_700bh:
	ld bc,09dcch
	rst 30h
	ld a,(de)
	ld c,e
	push af
	inc d
	dec b
	push af
	add a,h
	rst 38h
	ld b,l
	push af
	sub b
	inc bc
	cp 00dh
	jp nz,02225h
	ld c,b
	cp a
	inc l
	ld l,c
	djnz $+4
	jp 0482ch
	cp 00bh
	jp nz,0a404h
	jp nc,0c400h
	ld c,b
	add a,a
	ld b,a
	add a,a
	add a,b
	ld d,000h
	ld (bc),a
	ld e,a
	ld hl,04870h
	add hl,de
	ld a,(hl)
	in a,(044h)
	ld c,b
	call p,sub_6363h
	inc b
	ld e,d
	ld l,c
	inc b
	ld l,e
	xor c
	inc b
	or d
	inc h
	sbc a,d
	ld h,e
	ld h,l
	rlca
	ld b,c
	rlca
	dec b
	ld h,a
	ld c,b
	ld hl,0b221h
	jr $-53
	sub (hl)
	add a,h
	exx
	dec b
	ld bc,0188dh
	ld h,e
	ld bc,00567h
	ld (de),a
	inc l
	rlca
	ld d,a
	add a,(hl)
	pop hl
	ld hl,02620h
	and c
	sub d
	dec de
	out (0e0h),a
	add hl,hl
	dec a
	ld e,d
	dec bc
	inc c
	dec d
	ld b,0fah
	ld (00005h),a
	ei
	jp m,05a52h
	dec b
	dec b
	dec de
	jp m,l5904h
	ld h,d
	inc c
	inc b
	ld (l4080h),hl
	ld l,a
	add hl,bc
	rla
	ei
	rrca
	nop
	ld sp,01d90h
	ld a,(bc)
	or 026h
	jr nc,$-109
	dec c
	ld c,006h
	ret pe
	inc l
	dec b
	inc (hl)
l70a5h:
	in a,(031h)
	dec b
	adc a,036h
	ret pe
l70abh:
	dec b
	sub h
	add hl,bc
l70aeh:
	ld de,0b504h
	ld b,h
	rst 18h
	sub c
	sbc a,h
	ld (bc),a
	or a
	ld hl,l4943h
	call z,05196h
	push bc
	add hl,bc
	adc a,l
	ld d,(hl)
	add hl,bc
	inc l
	call 08319h
	inc h
	pop hl
	ld c,b
	xor l
	ld a,(04952h)
	sub a
	ld de,0c277h
	push af
	and h
	adc a,e
	dec hl
	jp (hl)
	ex af,af'
	ld e,h
	ld c,c
	jp po,003aeh
	jp pe,012b1h
	ret nz
	djnz l70a5h
	ld e,d
	djnz $+34
	inc bc
	cp 0bch
	ret c
	ld a,(l5e5dh)
	add a,h
	adc a,035h
	add hl,bc
	and c
	inc h
	ex de,hl
	ld h,l
	ld b,h
	scf
	jr c,l7137h
	scf
	ld e,d
	dec l
	inc l
l70fch:
	ld h,049h
	rst 0
sub_70ffh:
	ld h,049h
	scf
	sbc a,e
	ld b,a
	djnz l7126h
	inc bc
	ret
	ld (de),a
	ld (de),a
	jr nz,l7156h
	jr nz,$-15
	adc a,c
	ld hl,(l6f00h)
	rst 28h
	ld l,b
	ret nc
	ld h,d
	djnz l717ah
	dec c
	dec c
	ld a,(bc)
	jp nz,0a202h
	add hl,bc
	nop
	adc a,h
	nop
	ld c,0bdh
	ret c
	ld (de),a
l7126h:
	ld a,(082d8h)
	dec l
	and 00fh
	ld (05dd8h),a
	rla
	ex af,af'
	jp z,09287h
	ld b,b
	ld h,c
	ret po
l7137h:
	ld (l4a35h),a
	ld hl,0db06h
	ld c,c
	ld b,014h
	ld de,041c8h
l7143h:
	inc (hl)
	add hl,de
	djnz l7143h
	ex de,hl
l7148h:
	jp 0110eh
	inc l
sub_714ch:
	add a,c
	ld h,c
	sub 027h
	rra
	ld (l4c05h),a
	adc a,e
	dec a
l7156h:
	ld bc,0fe4ah
	ld e,d
l715ah:
	ld a,088h
	ld b,007h
	and d
	ld b,e
	ld c,c
	ex (sp),hl
	ld b,l
	ld b,013h
	rrca
	ld a,(bc)
	ld a,b
	ld (06f92h),a
	pop de
	or 08ch
	add a,d
l716fh:
	dec sp
	ld c,d
	xor l
	sub l
	push de
	or b
	ld d,054h
	ld d,h
	dec b
	inc l
l717ah:
	ret m
	sub c
	cp d
	inc h
	ccf
	jr nc,$-122
	cp d
	ld l,l
	jr nz,l715ah
	halt
	jp c,08371h
	djnz $+44
	inc a
	inc l
	dec bc
	ld e,02eh
	ld b,(hl)
	jr nc,$-100
	nop
	ld c,034h
	ld b,b
	ld (hl),02ah
	jr c,$+90
	ld c,l
	ret po
	inc a
	ld e,h
	inc sp
	or b
	ld b,b
	nop
	jr c,$+68
	ld c,c
	ld b,h
	dec de
	ld b,(hl)
	dec h
	ld c,b
	nop
	ld (0074ah),a
	ld c,h
	rra
	ld c,(hl)
	inc l
	ld hl,0da46h
	add a,a
	ld (0d456h),hl
	xor b
	sub e
	jp c,07c11h
	ld c,d
	cp h
	add a,000h
	dec d
	ld e,a
	inc hl
	push de
	call sub_4a96h
	pop de
	ld e,0dbh
	sbc a,b
	or a
	adc a,l
	ld c,l
	ld d,h
	ret po
	inc b
	djnz l71e4h
	jp nz,l7238h
	ld a,d
	ld c,d
	ld a,(0d6c2h)
	inc de
	ld (l4a36h),hl
	cp (hl)
	ld a,(bc)
l71e4h:
	out (098h),a
	djnz $-49
	rst 20h
	ld c,e
	call 0efe6h
	push bc
	ld l,0cdh
	xor 0aah
	cp 01ch
	nop
	ld b,08bh
	ld bc,00405h
	nop
	sub a
	call p,002cbh
	ld l,d
	rla
	ld (bc),a
	ld a,(00401h)
	di
	out (099h),a
	ld a,08eh
	inc bc
	ld a,e
	add a,d
	ld (bc),a
	ld a,d
	or 040h
l7211h:
	ei
	dec b
	ld a,h
	ret
	dec de
	cp h
	add hl,de
	ld l,e
	or h
	inc b
	or h
	ld c,d
	add a,c
	add a,064h
	ld c,l
	jp nz,0d944h
	ld c,d
	inc bc
	ld c,04ch
	ld c,e
	inc bc
	rra
	inc bc
	ld h,e
	ld b,(hl)
	inc bc
	ld d,a
	inc bc
	jr l729dh
	inc bc
	and d
	dec sp
l7236h:
	ld c,e
	ret
l7238h:
	sbc a,h
	sub e
l723ah:
	push bc
	ld c,l
	ret nz
	defb 0fdh,00dh,065h ;illegal sequence
	ld c,l
	ret nc
	ld a,b
	and c
	ld c,b
	ld hl,l4d95h
	ret nz
	cp 029h
	ld h,b
	ld d,a
	ld (06a03h),a
	add a,(hl)
	defb 0ddh,018h,0ach ;illegal sequence
	out (061h),a
	ld (de),a
	cpl
	inc bc
	ret nz
	in a,(012h)
	ld d,a
	sub e
	jp c,0e44dh
	cp (hl)
	ld b,062h
	inc h
	ld e,c
	inc bc
	res 7,(hl)
	scf
	inc c
	ld h,e
	ld (de),a
	cp a
	inc bc
	cp b
	ld (hl),e
	ld (de),a
	exx
	ld a,l
	inc hl
	adc a,b
	ret
	rlca
	call nz,017fdh
	ld d,c
	ld c,l
	pop hl
	cp e
	cp d
	or h
	adc a,h
	add a,0bfh
	and 01ah
l7286h:
	ld l,(hl)
	scf
	rst 20h
	ret po
	defb 0ddh,04bh,0cdh ;illegal sequence
	ld b,c
	ld d,01eh
	ld hl,(0cd4ch)
	or h
	ret c
	ld d,0aeh
	jp 0b23ah
	ld c,e
	sub 070h
l729dh:
	or e
	ld c,e
	and c
	ld e,h
	inc bc
	jp nz,04bc9h
	sub (hl)
	add hl,de
	or b
	cp c
	ld (hl),c
	ret nz
	ld a,r
	and 050h
	rlca
	adc a,(hl)
	ld d,a
	ld d,l
	ld c,l
	sbc a,e
	inc bc
	ld c,(hl)
	sbc a,a
	ld a,(bc)
	ld a,(l4bdbh)
	rst 8
	add hl,hl
	ld d,c
	dec b
	ret nz
	ld e,l
	ret z
	ld a,(l4bdch)
	and l
	rst 18h
	xor a
	dec b
	push bc
	ld b,(hl)
	dec b
	ld c,h
	add hl,de
	add hl,hl
	add hl,sp
	add a,(hl)
	add hl,hl
	ld (hl),c
	ld bc,00701h
	cp h
	ld b,066h
	or b
	and 0b3h
	call p,02803h
	push hl
	and a
	ld (de),a
	ld a,(l4c26h)
	ret c
	jr nc,l7286h
	inc bc
	ld (hl),04ch
	xor b
	add a,(hl)
	jr z,l733ch
	and d
	ld c,b
	sbc a,l
	and d
	dec b
	ld l,h
	add hl,hl
	ld c,h
	ld l,h
	or (hl)
	inc bc
	sub l
	inc c
	add hl,bc
	ld c,l
	jp z,00695h
	jr c,$-1
	ld c,h
l7305h:
	ld b,072h
	pop af
	ld b,0e5h
	push hl
	ld b,0d9h
	ld b,0b2h
	call po,0bb9ch
	ret po
	ld a,d
	sub d
	ld a,(bc)
	and a
	ld a,(bc)
	dec de
	cp 035h
	inc d
	add a,a
	dec a
	ld c,c
	xor 05fh
	ld b,(hl)
	defb 0fdh,044h ;ld b,iyh
	jp c,03221h
	call 0ca4ch
	ld c,h
	inc c
	ld a,(bc)
	jp 089cah
	ld a,(03c27h)
	ld (01303h),a
	jp nz,019adh
	ld (bc),a
	ld e,026h
l733ch:
	halt
	dec h
	ld a,(hl)
	dec b
	cp b
	ld c,h
	ld (00a25h),a
	jp (hl)
	jr l734bh
	push de
	ld l,h
	push bc
l734bh:
	ld d,a
	ld a,c
	ld (hl),a
	cpl
	exx
	cp 065h
	jr nz,l7355h
	sbc a,b
l7355h:
	ret z
	djnz $-49
	ret pe
	ld b,b
	inc bc
	ld a,(00240h)
	sbc a,c
	jr z,l7371h
	ld bc,0130fh
	ld d,b
	inc b
	ld (hl),c
	ld d,b
	dec c
	add hl,bc
	ld a,(0a730h)
	add hl,sp
	dec b
	ld h,c
	dec c
l7371h:
	cp d
	ld hl,00cb5h
	ld b,072h
	dec b
	ld h,b
	dec c
	inc b
	ld b,c
	ld bc,00151h
	jr z,$-29
	xor h
	jp c,0154ah
	pop hl
	ld b,c
	ld h,04dh
	ld (l6806h),a
	ld l,l
	rra
	ld hl,08949h
	pop hl
	ld b,c
	ld de,0211ch
	ld c,e
	ld b,0b4h
	ld c,l
	ld b,021h
	ld c,a
	call nz,0027bh
l73a0h:
	xor a
	ret c
	ld a,e
	inc sp
	ld (hl),h
	inc bc
	pop hl
	ld d,l
	ex af,af'
	dec b
	ld h,(hl)
	ld b,05ch
	ld l,(hl)
	ld (bc),a
	ld h,a
	add a,d
	ld h,l
	nop
	inc h
	nop
	dec a
	sub l
	call nc,032a0h
	and e
	ld bc,l6a83h
	or 08bh
	ld (bc),a
	dec b
	ld (bc),a
	adc a,b
	inc (hl)
	add a,l
sub_73c6h:
	ld e,b
	inc bc
	sbc a,b
	ld bc,00125h
	dec b
	ld (bc),a
	rlca
	dec bc
	adc a,(hl)
	ld h,l
	or h
	xor (hl)
	inc e
	ld h,d
	nop
	inc bc
	nop
	or h
	sub a
	ld c,a
	ld b,000h
	nop
	nop
l73e0h:
	pop de
	nop
	ld d,e
	ld b,l
	ld d,(hl)
	ld b,l
	ld d,d
	ld b,c
	ld c,h
	ld e,e
	nop
	ld c,l
	ld c,a
	ld c,(hl)
	ld d,h
	ld c,b
	ld d,e
	ld e,e
	ld c,h
	jr nz,$+67
	ld d,h
	ld c,000h
	ld c,e
	ld c,h
	ld c,c
	ret nc
	ld d,05bh
	ld d,d
	ld b,l
	ld d,h
	ld (de),a
	ld d,l
	ld d,d
	ld c,(hl)
	dec d
	ld c,b
	xor e
	ld (00045h),hl
	cp (hl)
	exx
	inc l
	di
	ld c,l
	cp (hl)
	ld (l529eh),hl
	call c,0042dh
	ld c,(hl)
	xor (hl)
	dec d
	ld c,(hl)
	sbc a,c
	jp pe,l57efh
	ld d,d
	sbc a,c
	add a,d
	rrca
	and d
	call c,02c20h
	ld hl,05217h
	call 0d7ech
	ld (hl),b
	ld h,005h
	dec (hl)
	pop hl
	dec b
	ld b,h
	dec b
	jp 00553h
	add a,a
	ld h,d
	dec b
	ld c,071h
	dec b
	ld a,(de)
	add a,b
	dec b
	call 09f4eh
	ld (00e8fh),a
	dec bc
	rra
	ld d,e
	in a,(070h)
	nop
	call sub_5109h
	call 050bdh
	call 08a51h
	ld (bc),a
	inc d
	ld c,a
	call p,02016h
	xor d
	sub l
	cp b
	add a,h
	ld a,(0857bh)
	ld h,b
	ld a,h
	ld c,(hl)
	ld (0068ah),a
	cp 009h
	call nz,0dc96h
	or (hl)
	add a,l
	ld a,d
	ld c,(hl)
	jp nc,l7a0bh
	dec c
	and b
	and b
	and 04eh
	jp z,0a6e2h
	rlca
	rst 20h
	ld (hl),c
	jp (hl)
	rlca
	in a,(0e3h)
	call pe,08407h
	ld b,0a3h
	ld e,h
	rlca
	ld c,009h
	ld hl,007f2h
	rlca
	ld a,(bc)
	ld hl,007f5h
	inc bc
	dec bc
	ld hl,007f8h
	add a,c
	dec c
	ld hl,007fbh
	ret nz
	ld c,0c0h
	xor a
	pop bc
	ld b,(hl)
	ret
	ld (hl),001h
	rst 18h
	ld e,b
	out (000h),a
	ld (hl),d
	nop
	ld e,(ix+000h)
	rst 20h
	ld a,h
	ld bc,008c2h
	jp po,0dc54h
	ld h,086h
	ld de,0d780h
	ld c,d
	nop
	sbc a,091h
	nop
	jp c,00588h
	call pe,00e40h
	ld l,(hl)
	nop
	ld b,b
	pop hl
	ex af,af'
	jp (hl)
	ld b,(hl)
	nop
	call nc,00b8ch
	inc b
	ld a,(l4ee5h)
	rst 18h
	ld b,d
	inc de
	ld c,a
	jp po,005b6h
	ex af,af'
l74e0h:
	ret nz
	call sub_4e82h
	adc a,c
	pop bc
l74e6h:
	call sub_4f81h
	add a,a
	add hl,de
	dec b
	xor (hl)
	call pe,01c05h
	rst 28h
	dec b
	jr c,l74e6h
	dec b
	or (hl)
	ld a,a
	dec b
	ld a,l
	in a,(005h)
	ld a,e
	dec b
	ld e,h
	cp 005h
	ld a,(de)
	ld bc,0054fh
	inc b
	pop hl
	dec b
	rlca
	dec b
	jp 0050ah
	add a,a
	dec c
	dec b
	dec c
l7510h:
	djnz l7517h
	inc h
	ret
	ld a,(hl)
	ld l,d
	inc (hl)
l7517h:
	rst 38h
	ld b,h
	sbc a,d
	ld c,a
	inc bc
	xor e
	add a,003h
	ret nz
	inc bc
	ld sp,003d5h
	jp pe,l7a18h
	call nc,00918h
	ld d,b
	inc b
	dec bc
	ld e,h
	ld d,b
	xor d
	ld d,b
	push af
	ret
	sub (hl)
	dec bc
	sub 0a4h
	inc e
	jr $+82
	ld b,027h
	ld a,(de)
	inc d
	inc d
	inc d
	ld (hl),d
	push bc
	ld (hl),027h
	inc d
	ld b,04fh
	add hl,hl
	inc d
	inc hl
	inc d
	rla
	ld (hl),014h
	add hl,hl
	jr c,l7565h
	ld (0e214h),a
	ld b,l
	inc e
	ld d,b
	ld (01741h),a
	and l
	ld b,e
	add hl,bc
	ld b,a
	ld a,(de)
	inc c
	ld l,b
	ld a,(de)
	scf
	nop
	or h
l7565h:
	ld (de),a
	ld (bc),a
	call nc,09000h
	ld d,h
	sub c
	inc b
	defb 0fdh,0a3h,098h ;illegal sequence
	call m,002b8h
	ld h,b
	ret pe
	ld c,00bh
	nop
	ld a,(bc)
	exx
	ld c,01dh
	add a,00eh
	jp 0ce0fh
	or e
	ld c,007h
	ld d,e
	nop
	xor h
l7587h:
	ld c,09fh
	in a,(0e3h)
	ld bc,0f7dfh
	ld c,096h
	sub b
	and (hl)
	inc b
	ld d,b
	ld d,b
	pop de
	ld b,(hl)
	ld hl,l578dh
	sbc a,d
	ld hl,0059ch
	ld a,(09124h)
	ld d,b
	ccf
	ld (03a04h),a
	ld l,h
	and b
	rlca
	inc b
	cp 026h
	sub 0d8h
	sub a
	xor a
	inc h
	ex de,hl
	inc h
	and 0cch
	inc b
	call m,0abe5h
	add a,a
	inc e
	ld d,(hl)
	res 6,c
	ld (0025ah),a
	add a,a
	jr $-84
	ei
	adc a,b
	ld c,096h
	ld (hl),e
	ld c,048h
	ld bc,00ebbh
	ret z
	nop
	ld (00064h),a
	inc bc
	sbc a,l
	xor 0dah
	rst 8
	call nc,00242h
	inc a
	ld l,e
	ld d,a
	cp h
	ld l,e
	and (hl)
	inc de
	cp d
	ld d,b
	xor b
	or h
	dec b
	add hl,bc
	cp e
	ld c,b
	ld d,b
	cp c
	rst 10h
	adc a,d
	rst 10h
	ld b,0a1h
	call nc,00afah
	dec b
	cp 0b2h
	jp z,00cf1h
	ex af,af'
	ld a,(bc)
	ld a,(l5102h)
	rst 8
l7600h:
	dec h
	inc bc
	ld hl,l6309h
	cp c
	ld (hl),d
	dec (hl)
	ld h,c
	ld a,a
	ret
	jp c,l79a8h
	or d
	inc d
	call 09d57h
	inc hl
	ld b,b
	cp b
	ld b,b
	ld a,(l51fdh)
	ld (l5208h),a
	inc b
	ld (l520ch),a
	ld a,(008ffh)
	ld a,(bc)
	sub l
	ex af,af'
	ld c,0bfh
	ld d,l
	ld c,0c8h
	xor b
	inc l
	add hl,sp
	ld sp,hl
	ld d,c
	adc a,(hl)
	sbc a,l
	rlca
	ld a,(l512bh)
	add a,0edh
	dec b
	jp po,l51a8h
	adc a,h
	res 6,l
	inc b
	rst 0
	ld b,b
	ld e,b
	ld d,c
	add hl,de
	ld b,(hl)
	inc hl
	ld c,(hl)
	jp nz,0813eh
	ld (0c203h),a
	inc a
	add a,b
	ld (03503h),a
	ret
	cp 0d1h
	xor a
	ld bc,00191h
	inc de
	or 07bh
	add hl,bc
	cp l
	ld bc,09f09h
	ld bc,07309h
	ld bc,0f009h
	inc (hl)
	nop
	rst 38h
	ld b,e
l766dh:
	inc c
	nop
	or d
	ld (bc),a
	ld a,b
	and l
	add a,008h
	ld bc,0c64fh
	sub a
	ld c,024h
	sub b
	in a,(09ch)
	and e
	jp nc,0071dh
	dec h
	nop
	sub l
	in a,(0f4h)
	nop
	add a,h
	ld c,0abh
	nop
	dec d
	call po,001e8h
	add a,b
	ld b,(hl)
	sbc a,a
	cpl
	ld (bc),a
	di
	ld b,d
	dec a
	ld l,d
	nop
	inc a
	adc a,c
	ld (hl),a
	dec e
	ld (hl),h
	ld c,01dh
	nop
	ld (hl),d
	ld (0ba1dh),hl
	inc (hl)
	ld (bc),a
	ld a,(hl)
	rst 8
	call nc,sub_68ebh
	ld a,(de)
	ld e,c
	or e
	nop
	and d
	daa
	ld (bc),a
	ld l,(hl)
	or d
	inc de
	ld c,l
	res 3,b
	inc l
	sub a
	and h
	call c,0ba66h
	ld e,c
	call m,01ccdh
	dec e
	sub e
	jr z,l766dh
	add a,l
	sub b
	ld c,034h
	nop
	ld sp,l68edh
	nop
	adc a,(hl)
	sbc a,00ah
	ret nc
	jp nz,0b300h
	ld d,d
	ld b,014h
	ld d,(hl)
l76dch:
	inc hl
	ld c,b
	ld e,(hl)
l76dfh:
	ret po
	inc hl
	nop
	call 04a7ah
	ld a,c
	out (098h),a
	djnz l76dch
	nop
	ret
	inc d
	jr c,$+24
	rla
	jr z,$+39
	dec de
	nop
	inc hl
	inc (hl)
	rra
	ld e,a
	dec h
	ld (0f012h),hl
	nop
	dec h
	ld c,0d6h
	jr z,l7724h
	ld d,02ch
	ld hl,(02500h)
	jr nc,l7756h
	ld h,b
	inc (hl)
	add hl,bc
	ret p
	jr c,$-126
	dec e
	inc a
	ld d,h
	dec h
	ld b,b
	ld e,d
	inc (hl)
l7716h:
	ld bc,02044h
	dec h
	ld c,b
	ld h,h
	ret p
	ld c,h
	dec e
	nop
	ld d,b
	ld d,h
	ld d,055h
l7724h:
	ld sp,l5725h
	ld b,06bh
	ld h,b
	ld e,d
	inc de
	ret p
	rst 28h
	xor e
	ld (bc),a
	defb 0fdh,049h,003h ;illegal sequence
	dec b
	pop hl
	ld b,c
	ld b,005h
	ret m
	and (hl)
	ei
	and (hl)
	sub b
	and 083h
	jp pe,00404h
	ld l,a
	ld b,089h
	inc sp
	ld a,(bc)
	rlca
	adc a,b
	ld l,d
	dec de
	ld (00a9bh),hl
	inc b
	adc a,c
	ld sp,hl
	jp m,0c9dfh
	ld d,e
	ld d,e
l7756h:
	rst 18h
	and c
	xor c
	ld d,l
	adc a,e
	ld d,c
	ld h,h
	ld d,e
	inc bc
	ld a,(de)
	and b
	ld d,h
	rst 18h
	cp l
	and 000h
	ld hl,055aah
	call 0c430h
	ld a,01bh
	inc e
	ld hl,007c7h
	rst 28h
	xor (hl)
	ld h,0dah
	ld d,l
	rst 28h
	cp b
	ld d,c
	pop de
	rst 28h
l777ch:
	xor l
	and h
	xor c
	inc hl
	ld e,c
	ld (bc),a
	rst 20h
	ld a,(bc)
	ld d,e
	ld hl,l5455h
	add a,d
	call nc,00501h
	ld c,01ah
	ld d,h
	ld hl,00b73h
	ld hl,0826bh
	dec b
	ld a,0c4h
	ret po
	ei
	ld b,b
	ld hl,032cfh
	ld d,e
	ld de,03d97h
	ld bc,0d018h
	ld c,l
	and l
	ld b,c
	call po,0e366h
	ld c,e
l77ach:
	cp l
	add hl,de
	ld a,0e8h
l77b0h:
	inc de
	cpl
	ld a,h
	sbc a,c
	inc c
	ld l,b
	ld bc,0e81eh
	add a,c
	ld hl,00068h
	jr l7819h
	cp b
	ld d,e
	ld c,d
	ld l,e
	ex af,af'
l77c4h:
	inc l
	ld d,h
	ret p
	add a,(hl)
	exx
	ld hl,03e28h
	sub c
	exx
	ld a,(0c60ch)
	jr nc,l77e4h
	add a,b
	djnz l77c4h
	ret
	ld hl,0e137h
	ld d,(hl)
	ld b,(hl)
	dec b
	or (hl)
	sbc a,h
	add hl,bc
	ld b,a
	ld (02668h),a
l77e4h:
	inc bc
	ld h,039h
	ld h,h
	ld h,04ch
	ld l,b
	ld h,049h
	ld de,026c5h
	add a,b
	sub b
	inc hl
	ld a,(bc)
l77f4h:
	sub 0b1h
	jr nc,l777ch
	ld a,c
	or (hl)
	jr c,l77ach
	ld a,b
	nop
	or l
	sub (hl)
	add hl,bc
	nop
	adc a,h
	nop
	add hl,hl
	push hl
	adc a,00eh
	rlca
	ld h,b
	ld (bc),a
	cp a
	ld c,08dh
	sub a
	inc c
	ld l,d
	inc l
	cp h
	ld c,081h
	ld l,b
	inc l
	ld c,0a7h
l7819h:
	nop
	add a,a
	inc bc
	ld (bc),a
	ld b,a
	nop
	xor b
	nop
	ld c,c
	sub b
	or 00eh
	sub l
	and a
	add hl,bc
	jp m,0a400h
	nop
	xor 014h
	inc d
	xor (hl)
	or e
	jp p,00aedh
	rst 0
	djnz $+121
	ld c,0b5h
	ld hl,(08ce0h)
	inc h
	ret nc
	ld (bc),a
	xor a
	sub c
	ret z
	exx
	ret
	djnz l77f4h
	ld d,h
	xor 0bah
	ret nz
	inc b
	cp b
	add a,c
	xor l
	ld d,h
	jr nz,$+63
	ld (0ca03h),a
	jp z,0fe54h
	jr c,l7881h
	ret nc
	or (hl)
	inc h
	jp 0b63bh
	ld (hl),e
	ld b,0cdh
	ld b,0dfh
	ld d,h
	cp 000h
	call 04f19h
	ld a,0ffh
	call po,0bbd0h
	or d
	defb 0fdh,00dh,00fh ;illegal sequence
	ld (hl),03ah
	sbc a,035h
	inc b
	inc h
	jp nz,0c5fch
	inc hl
	dec e
	ld d,l
	xor 046h
l7881h:
	inc l
	ld d,l
	jp 03805h
	ld c,00bh
	ld (hl),b
	dec sp
	dec b
	ld c,d
	defb 0ddh,011h,077h ;illegal sequence
	adc a,b
	or d
	ld b,d
	nop
	ld h,d
	add hl,bc
	jp po,09ac4h
	ld (hl),d
	adc a,h
	push hl
	ld h,d
	ld l,00ah
	dec b
	rst 0
	ld c,d
	sbc a,h
	sub 077h
	ld c,04ch
	dec e
	ld c,c
	dec e
	ex (sp),hl
	ld c,098h
	ld hl,0024ch
	cpl
	inc l
	adc a,b
	inc bc
	sub 0e1h
	sub b
	ld a,(bc)
	inc de
	ld a,(00300h)
	ld d,d
	ld c,026h
	sub c
	pop bc
	ld c,021h
	ld l,l
	ld d,l
	cp c
	ld e,a
	ld (hl),d
	dec h
	and l
	xor d
	cp c
	jp p,03b00h
	ld h,b
	dec d
	ld (hl),h
	ld d,01ch
	ld a,(bc)
	dec h
	nop
	jr l7923h
	inc (hl)
	jr nz,l7911h
	dec h
	inc hl
	ld c,h
	nop
	inc (hl)
	ld h,020h
	sub 029h
	dec d
	ld d,02dh
	nop
	dec a
	dec h
	ld sp,l6064h
	dec (hl)
	dec l
	dec h
	ld bc,l4101h
	ld e,e
l78f4h:
	ld b,h
	ld c,c
	ld d,e
	ld d,h
	call sub_53f3h
	jp z,l53e0h
	ld c,c
	ld b,a
	ld c,(hl)
	call m,0a7eeh
	ld c,009h
l7906h:
	ld b,l
	pop af
	jp z,00067h
	sub h
	daa
	ld d,h
	rst 20h
	ret po
l7910h:
	ld b,c
l7911h:
	ld b,e
	ld c,b
	cp (hl)
	dec e
	rst 20h
	jp nc,sub_4f16h
	ld c,(hl)
	jp z,0e936h
	xor d
	defb 0edh ;next byte illegal after ed
	ret c
	ld (bc),a
	ld (bc),a
	inc b
l7923h:
	adc a,d
	sub h
l7925h:
	ret p
	cp c
	ld b,l
	ld (bc),a
	nop
	ld b,006h
	rlca
	nop
	ld h,c
	add a,c
	jp pe,0035ah
	sub l
	nop
	inc b
	nop
	rst 20h
	ld h,(hl)
	dec bc
	ld d,a
	cp d
	dec h
	ld c,056h
	cp d
	ld b,l
	defb 0ddh,057h,0b6h ;illegal sequence
	ld b,h
	rra
	ld d,(hl)
	inc bc
	xor l
	ld d,a
	ld d,(hl)
	cp d
	ld bc,0210ch
	ld l,058h
	cp d
	ld e,e
	jp nz,l4c53h
	rlca
	adc a,d
	sbc a,(hl)
	xor d
	jr nz,$-63
	pop af
	dec hl
	ld h,(hl)
	ld e,b
	cp a
	pop bc
	inc bc
	call z,012bdh
	ld d,(hl)
	ld d,a
	ret nc
	xor (hl)
	ld h,l
	dec b
	inc e
	ld (hl),h
	dec b
	jr c,l78f4h
	dec b
	ld (hl),b
	sub d
	dec b
	and c
	pop hl
	dec b
	or b
	dec b
	jp 005bfh
	ld b,c
	call 057deh
	ld hl,00e0bh
	jp 0051ah
	add a,a
	add hl,hl
	dec b
	ld c,0ceh
	dec b
	inc e
	jr c,l7995h
	ld d,a
	ld (ix-074h),h
	and c
l7995h:
	in a,(056h)
	call 097b9h
	ld (de),a
	cp e
	call pe,0b842h
	ld d,(hl)
	out (072h),a
	inc b
	and b
	adc a,c
	or a
	ld d,(hl)
	and d
l79a8h:
	adc a,c
	inc bc
	dec b
	jp z,l56d4h
	cp 03ch
	adc a,c
	inc (hl)
	rlca
	and l
	adc a,c
	add a,b
	ld hl,l5726h
	cp 0aah
	ld a,0bbh
	ld (bc),a
	jp z,056e7h
	ld a,0aah
	ld (0f30bh),a
	ld e,l
	dec de
	ld a,(056dah)
	ret
	ld b,l
	xor (hl)
	dec b
	ld (bc),a
	ld hl,05747h
	jp z,01a08h
	and a
	ld h,(hl)
	call m,0b31ch
	sub b
	out (028h),a
	sub b
	sbc a,b
	ld (hl),a
	sbc a,b
	adc a,h
	ld l,(hl)
	ld a,d
	adc a,h
	push af
	ld (hl),a
	ld a,d
	adc a,h
	jr nz,$+61
	nop
	or b
	ld (bc),a
	xor d
	dec (hl)
	nop
	ld l,a
	cp (hl)
	or (hl)
	ld c,e
	call 00ea7h
	sub (hl)
	cp (hl)
	cp a
	add a,h
	ld a,(de)
	jp p,0be57h
	call m,sub_4b60h
	ld c,h
	ld c,c
	nop
	ld b,l
	ld d,(hl)
	ld b,l
	ld d,d
l7a0bh:
	ld e,e
	ld b,d
	ld d,d
	ld b,c
	add a,b
	ld b,04ch
	ld e,c
	ld e,e
	ld b,a
	ld c,c
	ld d,(hl)
	and a
l7a18h:
	pop af
	jr nz,$+86
	ld c,c
	ld c,l
	ld b,l
	inc bc
	ld e,e
	ld d,h
	ld c,a
	ld e,e
	ld c,h
	ld b,l
	dec e
	ld hl,(08c08h)
	and c
	dec d
	ld d,l
	ld d,d
	ld b,(hl)
	sub l
	ld d,c
	ld b,l
	nop
	or 0afh
	sbc a,a
	adc a,e
	ld e,h
	sub l
	sbc a,d
	ld e,b
	adc a,e
	dec d
	add a,c
	ld e,d
	add a,a
	ld de,058abh
	inc bc
	cp (hl)
	ld e,b
	add a,0adh
	dec d
	add a,d
	ld e,d
	add a,e
	call z,0c318h
	add hl,hl
	ld (hl),a
	ld d,e
	sub b
	ld b,d
	ld a,e
	ld e,c
	call 01ccah
	add a,l
	ld b,e
	ld a,(l58c7h+1)
	jp (hl)
	pop hl
	ret
	ld e,b
	ret c
	dec sp
	dec b
	ld hl,(0acc0h)
	and a
	rla
	ret pe
	ld a,(bc)
	ld h,c
	ld e,c
	sbc a,h
	ld (03203h),hl
	ld c,(hl)
	ld (bc),a
	dec c
	ld d,d
	ld e,c
	ld hl,0125bh
	ld a,(06a21h)
	jr $+11
	cp 056h
	jp c,0041ah
	ld l,d
	or d
	ld b,d
	jp c,081b2h
	jp z,l590dh
	jp z,l5952h
	cp b
	sub b
	or e
	ld b,d
	xor c
	jp c,0c5b4h
	ld d,c
	or l
	ld b,d
	adc a,e
	and d
	ex af,af'
	push bc
	sub h
	djnz l7adbh
	ld a,(de)
	jr nz,l7afdh
	ld b,a
	cp a
	ld a,059h
	push de
	cp (hl)
	inc bc
	call nc,0cc26h
	ld b,c
	inc b
	ld (hl),b
	inc b
	jr nz,$+35
	inc c
	ld bc,0029ah
	ld a,00ch
	dec bc
	jp 002deh
	rra
	inc d
	neg
	ld (08104h),a
	ld h,b
	or l
	nop
	and a
	ld h,(hl)
	ld bc,0d603h
	ld h,d
	inc de
	adc a,h
	ld (hl),l
	ld e,(hl)
	xor (hl)
l7ad3h:
	adc a,c
	ld c,0e2h
	sbc a,b
	ld l,d
	call z,sub_5a85h
l7adbh:
	ld c,085h
	dec (hl)
	inc d
	add a,l
	sub h
	ld b,(hl)
	or b
	ld b,d
	ld a,d
	ld e,c
	or a
	cp l
	and d
	ld a,c
	ld e,c
	call c,08b24h
	sbc a,l
	ld d,h
	ld b,0dfh
	ld b,e
	ret pe
	ld e,c
	ld a,(l60d5h)
	cp 01fh
	ld b,03fh
	nop
l7afdh:
	ld a,001h
	jp z,l599eh
	ld b,01fh
	ld a,001h
	nop
	push bc
	ld (l542fh),a
	ld (0023eh),a
	inc h
	ld c,l
	ld (bc),a
	ld l,e
	ld (bc),a
	ld e,h
	adc a,(hl)
	ld (bc),a
	ld a,d
	ld d,h
	sub l
	ld (hl),b
	dec (hl)
	ld a,(0813bh)
	jr z,l7b23h
	sbc a,e
	adc a,b
l7b22h:
	ld d,h
l7b23h:
	inc a
	sbc a,e
	or h
	add a,l
	ld a,(bc)
	set 0,d
	push de
	ld e,c
	scf
	jr nz,l7ad3h
	ld c,d
	add a,a
	rst 20h
	or b
	inc sp
	pop bc
	ld a,b
	xor d
	sub d
	adc a,h
	pop de
	rst 20h
	ld l,h
	and b
	cpl
	ld e,d
	sub 011h
	ld (00485h),a
	ld a,(l5a30h)
	ld a,(00503h)
	jp z,l5a0ah
	ld hl,0c80ch
	dec e
	call po,0233ch
	ld hl,02039h
	ld e,d
	sbc a,065h
	ld a,(bc)
	daa
	ld a,(de)
	ld a,(bc)
	ld l,e
	sub c
	add a,d
	inc d
	or a
	ld (0b4bah),a
	ret nz
	ld (hl),a
	inc c
	rlca
	ld hl,l5a45h
	rst 10h
	cp 034h
	ld c,d
	ld d,d
	ld d,b
	ld h,a
	xor e
	ld b,c
	ld d,d
	ld c,e
	rst 0
	ld (de),a
	ld c,a
	ld b,(hl)
	sub h
	ld h,a
	or l
	jp pe,0c494h
	ld e,d
	xor c
	ld (de),a
	ret pe
	ld e,l
	ret z
	add hl,hl
	push de
	xor l
	ld a,(bc)
	inc c
	ld e,e
	xor c
	ld h,c
	rlca
	call z,010eeh
	jr $+35
	call p,0f65ah
	xor c
	call nz,037c3h
	ld d,(hl)
	adc a,h
	add a,c
l7ba0h:
	rst 10h
	ld c,d
	nop
	defb 0ddh,09dh ;sbc a,ixl
	inc sp
	rst 20h
	and h
	push bc
	out (0deh),a
	ret c
	ex af,af'
	defb 0edh ;next byte illegal after ed
	ld bc,00086h
	ret c
	ld l,(hl)
	ld bc,l70abh
	call 0264ah
	ld (bc),a
	ld e,l
	call sub_5cc8h
	call 00546h
	ld b,c
	inc bc
l7bc3h:
	dec b
	dec a
	ld e,e
	call 04c23h
	dec b
	ld d,d
	ld a,(l5c02h)
	ret c
	inc d
	and l
	jr z,l7ba0h
	and l
	ld (de),a
	ld a,(l5b22h)
	or a
	ld c,c
	inc bc
	ret nz
	sbc a,a
	ld b,h
	cp h
	out (0a2h),a
	inc a
	add a,d
	ld h,l
	ld e,e
	jp p,03c22h
	inc d
	dec bc
	jp z,l5b4dh
	ld (0cb06h),a
sub_7bf0h:
	push bc
	jp 0cf31h
	sbc a,b
	ld (hl),d
	nop
	ld e,e
	ld a,(l5bc2h)
	cp 08eh
	ld hl,002d2h
	ld e,e
	jp c,l5b6ch
	ld hl,00ae1h
	ld l,e
	sub h
	rlca
	ret p
	dec de
	ld b,b
l7c0dh:
	ret
	inc bc
	rrca
	ld a,(05b71h)
	xor b
	and d
	rrca
	ld (00589h),a
	jp nz,02785h
	pop bc
	ld d,b
	adc a,c
	pop bc
	ld b,070h
	ld (de),a
	sub l
	or l
	inc l
	ld (hl),b
	ld e,c
	jr c,l7bc3h
l7c2ah:
	call 017c2h
	and h
	ld (002d6h),a
	push hl
	sbc a,d
	ld (bc),a
	call p,0324bh
	ld c,c
	ret c
	ld (bc),a
	rst 20h
	ld (bc),a
	or 017h
	jp nz,002c3h
	ld (hl),b
	rst 0
	inc d
	push bc
	sub c
	ld (bc),a
	ret
	ld (hl),e
	and 085h
	or c
	defb 0edh ;next byte illegal after ed
	ret m
	pop af
	rrca
	and l
	or 0d8h
	adc a,d
	xor a
l7c55h:
	ld (bc),a
	dec hl
	call c,01500h
	ret nc
	inc d
	add hl,bc
	rst 20h
	xor d
	daa
	sub (hl)
	cp b
	ld c,09bh
	inc c
l7c65h:
	dec c
	ld c,0b7h
	sub e
	or a
	ld c,08eh
	inc l
	ld (hl),e
	call po,08d1dh
	or (hl)
	adc a,b
	ld e,h
l7c74h:
	push bc
	jp nz,05c01h
	adc a,c
	jr z,l7c7eh
	jp z,00d26h
l7c7eh:
	ld e,h
	ld a,(l5bffh)
	ret c
	ld c,b
	inc b
	ld hl,08da3h
	dec c
	inc hl
	ld e,h
	cp d
	adc a,l
	ld e,h
	jp 02cfbh
	sub e
	and h
	inc hl
	ret pe
	ld l,a
	ld e,h
	sub 01ch
	dec b
	inc (hl)
	ld (hl),h
	dec b
	ld b,00fh
	ld c,b
	ld hl,011d5h
	sbc a,b
	and h
	ld (hl),001h
	ld (de),a
	add hl,de
	djnz $-3
	sub e
	sub d
	and a
	inc l
	di
	or h
	inc b
	call 0050fh
	ei
	ret
	adc a,(hl)
	ld l,e
	rst 10h
	sub (hl)
	ld h,001h
	jp 0964fh
	jp po,0d2edh
	adc a,l
	ld h,l
	jr nc,l7c74h
	jp (hl)
	call nz,0d248h
	call 09d19h
	ld d,(hl)
	ld h,01dh
	and 0ffh
	ret nc
	push de
	ld d,d
	ld d,e
	inc bc
	inc bc
	ld bc,00970h
	add hl,hl
	ld c,(hl)
	jp p,003c3h
	rlca
	add hl,bc
	ld h,0dfh
	ld h,b
	ld b,l
	adc a,a
	ld (bc),a
	ld h,d
	ld (hl),h
	xor h
	djnz l7d1fh
	ld (bc),a
	rra
	ld d,b
	inc b
	ld h,b
	ld b,a
	dec b
	rra
	ld (hl),e
	dec b
	rra
	rst 0
	sbc a,(hl)
	xor b
	ld a,(0c346h)
	call nz,0a9ceh
	ld c,0cah
	exx
	ld e,h
	adc a,b
	call nz,0c6deh
	ld b,h
l7d0bh:
	call nz,0d35ch
	sub h
	add a,h
	ld b,c
	dec b
	ret nz
	call sub_5d05h
	sub 030h
	ld c,a
	ld a,(08cc6h)
	ret po
	add a,c
	inc bc
l7d1fh:
	jp z,l5cffh
	cp 00ah
	ret nz
	dec sp
	ret nc
	dec d
	cp h
	sub d
	cp l
	ld h,b
	ex af,af'
	rst 0
	ld e,h
	ret
	ld d,(hl)
	ld a,(09c03h)
	adc a,d
	push bc
	jr nc,l7d0bh
	ld b,h
	ld e,h
	call nc,0d151h
	sub c
	rst 10h
	sub e
l7d40h:
	out (011h),a
	jp po,0d64eh
	jr l7d40h
	xor a
	ld (de),a
	ret
	inc c
	rlca
	ld a,(l5d45h)
	ld e,l
	ld l,c
	jp 02525h
	ld e,l
	xor d
	dec sp
	dec b
	ld d,b
	ld d,(hl)
	ld d,e
	ld a,0ffh
	ld (l7b22h),a
	ld c,(hl)
	call pe,0c873h
	jp pe,l5281h
	ld e,l
	jp pe,00ecfh
	ld a,(0ca0ah)
	sbc a,a
	ld e,l
	cp d
	nop
	ld d,a
	add a,002h
	cp 0a6h
	jp nc,l7910h
	ld e,l
	ld (03209h),a
	ld sp,0a357h
	ld (hl),e
	xor e
	ld e,h
	adc a,a
	rla
	rlca
	ld bc,0c4feh
	ret nc
	dec d
	ld d,c
	adc a,a
	sub b
	ld h,l
	ld a,0e2h
	ld (0fc2fh),a
	ld c,(hl)
	push af
	add hl,bc
	ld c,(iy+025h)
	ld b,e
	ld l,(hl)
	call nz,02105h
	ex af,af'
	exx
	ld e,l
	jp z,005b1h
	jp z,0d55dh
	ld d,d
	ld b,h
	jp pe,0324ah
	inc bc
	push bc
	dec (hl)
	ld b,l
	ld (hl),b
	ld a,(03a6eh)
	rst 28h
	sub c
	or l
	ld bc,0ff00h
	rst 38h
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
l7e03h:
	rst 38h
	rst 38h
	rst 38h
l7e06h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7e10h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7e19h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7e65h:
	rst 38h
	rst 38h
	rst 38h
l7e68h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_7e80h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
