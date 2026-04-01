; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank13.asm /tmp/smanbow2_bank.bin

	org 04000h

	ld c,l
	ld h,c
	ld l,(hl)
l4003h:
	ld h,d
	ld l,a
	ld (hl),a
	jr nz,l403ah
	jr nz,$+47
	jr nz,$+71
	ld a,b
	ld (hl),b
	ld l,h
	ld l,a
	ld (hl),e
l4011h:
	ld l,c
	ld l,a
	ld l,(hl)
	jr nz,l4036h
	jr nz,l4038h
	jr nz,l403ah
	jr nz,l403ch
	jr nz,l403eh
	jr nz,l4040h
	jr nz,l4042h
	jr nz,l4044h
	jr nz,l4046h
	jr nz,l4048h
	jr nz,l404ah
	jr nz,l404ch
	jr nz,l404eh
	jr nz,$+34
	jr nz,l4052h
	jr nz,l4054h
	jr nz,l4056h
l4036h:
	jr nz,l4058h
l4038h:
	jr nz,l405ah
l403ah:
	jr nz,l405ch
l403ch:
	jr nz,l405eh
l403eh:
	jr nz,l4060h
l4040h:
	jr nz,l4062h
l4042h:
	jr nz,l4091h
l4044h:
	ld d,l
	ld d,e
l4046h:
	ld c,c
	ld c,(hl)
l4048h:
	ld d,e
	ld d,h
l404ah:
	ld d,d
	ld d,e
l404ch:
	ld b,d
	ld c,e
l404eh:
	nop
	ld bc,00000h
l4052h:
	nop
	nop
l4054h:
	nop
	nop
l4056h:
	nop
	nop
l4058h:
	nop
	nop
l405ah:
	nop
	nop
l405ch:
	nop
	nop
l405eh:
	nop
	nop
l4060h:
	nop
	nop
l4062h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4091h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l40b5h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4102h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_410fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,00fh
	rrca
	rrca
	rrca
	rrca
	ld (03232h),a
	ld (08180h),a
	add a,b
	add a,b
	add a,c
l4160h:
	ld c,00eh
	ld c,010h
	djnz l4166h
l4166h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l41c0h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec c
	add hl,de
	dec de
	rrca
	ld de,01c0bh
	dec bc
	inc l
	rrca
	jr nz,l41e5h
	ld bc,01c00h
	rrca
	ld e,00fh
	dec e
	rrca
	add hl,hl
	add hl,bc
	ld de,0000eh
	nop
	ld h,e
l41e5h:
	ld bc,00664h
	ld h,h
	ld b,064h
	rlca
	ld h,h
	ex af,af'
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
	nop
	ld bc,00000h
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,0016ch
	nop
	nop
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,00000h
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,00000h
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,00000h
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,00000h
	ld l,h
	ld bc,0016ch
l423ch:
	ld l,h
	ld bc,0016ch
l4240h:
	ld l,h
	ld bc,00000h
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,00000h
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,00000h
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,00000h
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,00000h
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,00000h
	rst 38h
	xor h
	ld c,(hl)
	nop
	nop
	nop
	jp l4cb3h
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
	jr l42cbh
	inc e
	ld c,015h
	ld e,020h
	rra
	rla
	ld b,003h
	rrca
	ld c,01ch
	jr l42d8h
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
l42cbh:
	rlca
	inc c
	djnz l42eeh
	ld h,b
	ccf
	jp p,03ffch
	cp 01eh
	cp (hl)
	ret nz
l42d8h:
	nop
	ld b,b
	ld (bc),a
	djnz l431ch
	rra
	ld e,h
	rlca
	ld bc,0381ch
	jr nc,l42e5h
l42e5h:
	nop
	ld (0f6d8h),hl
	ld (iy+078h),e
	inc b
	ccf
l42eeh:
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
	jr c,l4319h
	ld e,00fh
l4307h:
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
l4315h:
	call po,05a00h
	rra
l4319h:
	nop
	rst 38h
	inc bc
l431ch:
	add hl,bc
	ld a,h
	add hl,bc
	inc bc
	rst 38h
	rra
	or b
	ld h,h
	jr nc,l4376h
	cp b
	nop
	call nc,0d8dah
	djnz l4315h
l432dh:
	djnz l4307h
	jp c,0d41ch
	cp b
	ld d,b
	ld c,e
	daa
	inc bc
	jr nz,l4375h
	dec e
	ld a,d
	nop
	ret nc
	nop
	ret pe
	ld d,0e8h
	jr l432dh
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
	jr l43a9h
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
l4375h:
	add a,b
l4376h:
	nop
	rst 0
	rlca
	adc a,a
	ccf
	rst 18h
	nop
	ret m
	jr nz,l43b0h
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
	djnz l43abh
	ld b,b
	ld a,(0ec57h)
	ld a,a
	jp 0f060h
	ret p
	ld h,b
	ld e,(hl)
	rst 20h
l43a9h:
	and d
	sub (hl)
l43abh:
	sub l
	add a,(hl)
	jr nc,l43afh
l43afh:
	ld c,l
l43b0h:
	and (hl)
	and d
	inc l
	jp 0385ch
	jr l43c4h
	nop
	ld c,018h
	jr c,l4420h
	ld b,b
	inc bc
	inc c
	inc de
	rla
	ld l,02ch
l43c4h:
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
	jr nc,l441bh
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
l43f5h:
	nop
	ld h,028h
	ld c,b
	ld d,b
	ld d,b
	ld c,b
	jr z,$+40
	ld l,h
	ld de,03e40h
l4402h:
	adc a,b
	nop
	ld h,h
	inc d
	ld (de),a
	ld a,(bc)
	ld a,(bc)
	ld (de),a
	inc d
l440bh:
	ld h,h
l440ch:
	ld h,l
	adc a,b
	ld b,b
	push bc
	dec d
	sbc a,h
	inc c
	jr nz,l4475h
	ret nz
	nop
	nop
	ld h,b
	jr nz,l441bh
l441bh:
	inc c
	rlca
	inc bc
	ret nz
	ret po
l4420h:
	ld d,b
	jr nc,l43f5h
	ld b,061h
	inc bc
	nop
	ld b,004h
	ld sp,hl
	djnz l440ch
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
	ld (l55eah),a
	ld (bc),a
	ex af,af'
l443fh:
	add a,d
	jr nz,l4402h
	inc c
	daa
	nop
	ld a,a
	cpl
	inc b
l4448h:
	xor d
	ld a,d
	ld a,d
	xor d
	inc b
	dec b
	cpl
	ld a,a
	inc c
	jr nc,l4472h
	add a,b
	ld h,b
	cp 014h
	ld a,(bc)
	ld bc,0feb7h
	cp 0b7h
	ld a,(bc)
	inc d
	cp 050h
	inc h
	ret m
	ld a,(hl)
	add hl,de
	ret nc
	ret nz
	ei
	ld d,l
	dec b
	dec b
	ld d,l
	ld c,h
	ei
	rst 8
	inc sp
	ld d,h
	rrca
l4472h:
	ld sp,hl
	ret m
	inc b
l4475h:
	call m,0ea00h
	push af
	ld c,b
l447ah:
	dec h
	ld c,b
	ld (de),a
	push af
	jp pe,0c500h
	ld h,l
	ld c,e
	or a
	ld a,(bc)
	xor b
	ret m
	call nz,0030dh
	xor b
	sbc a,d
	cp l
	ld bc,l7c04h
	ld bc,0dcfdh
	nop
	or a
	ex (sp),hl
	jp c,00303h
	defb 0ddh,001h,0fch ;illegal sequence
	ld a,h
	ld (de),a
	ld de,00050h
	dec c
	dec c
	jr nz,l450ah
	ld b,0a1h
	ld (03e80h),hl
	jp nz,05a00h
	ret c
	ld (bc),a
	call 00b06h
	nop
l44b3h:
	ld b,000h
	ld d,(hl)
	xor c
	ld a,a
	add hl,de
	inc d
	add hl,bc
	inc c
	add hl,de
	ld a,a
	ld d,d
	xor l
	inc c
	nop
	rra
	and b
	ld e,0a0h
	ld d,h
	rst 38h
	ld a,(de)
	push bc
	nop
	ld a,(bc)
	ld a,(de)
	rst 38h
	or h
	ld b,b
	ld a,0a0h
	rra
	add a,h
	ccf
	ld d,0a8h
	ld d,(hl)
	rla
	ld (bc),a
	ld b,d
	ld d,01ah
	xor l
	ld d,b
	dec l
	ld c,h
	ex af,af'
	and b
	ld e,a
	and b
l44e5h:
	nop
	ld l,a
	push hl
	jr nc,l450ch
	push af
	push hl
	add a,c
	adc a,e
	rst 10h
	inc c
	ld sp,05217h
	ccf
	ret
	xor c
	ld d,(hl)
	ccf
	ret nz
	ld a,040h
	or h
	push hl
	ccf
	ld d,h
	ld c,d
l4500h:
	sbc a,b
	ccf
	dec l
	add hl,sp
	ld d,b
	xor l
	ccf
	ld a,(de)
	ld d,(hl)
	xor b
l450ah:
	ld d,03fh
l450ch:
	ld b,b
	adc a,038h
	ccf
	dec l
	ld b,(hl)
	ld c,h
	inc h
	djnz l451bh
	and c
	ld (bc),a
	dec d
	and b
	inc h
l451bh:
	ld hl,015a0h
	sbc a,l
	ld b,d
	dec b
	djnz l44b3h
	ld sp,00224h
	jr l457ch
	ld (bc),a
	nop
	ld d,h
	jp po,03f0ah
	ld hl,00818h
	rra
	dec d
	ld d,l
	ld d,l
	inc bc
	ld e,h
	ret nz
	jr l459bh
	ld bc,09213h
	sub d
	rra
	dec h
	ld d,h
	rrca
	ld d,h
	rra
	add hl,bc
	ld l,c
	jr nz,$+7
	ld bc,0d93fh
	ld bc,0eb05h
l454eh:
	ld hl,(02918h)
	jr nz,l4559h
	ccf
l4554h:
	cp 021h
	ccf
	ld b,020h
l4559h:
	jr l454eh
	add hl,hl
	rst 18h
	ld a,c
	ccf
	pop hl
	jp (hl)
	ld (hl),h
	rst 38h
	jp (hl)
	sub h
	ld bc,0c93fh
	ld bc,0ff94h
	ld a,(0141eh)
l456eh:
	inc a
	ld a,037h
	and 0c0h
	add a,b
	scf
	ld a,030h
	inc a
	ld e,006h
	ld (hl),d
	cp e
l457ch:
	nop
	add a,b
	ld a,b
	ld (hl),b
	defb 0ddh,0fdh,070h ;illegal sequence
	ld a,b
	add a,b
	jr $-19
	or d
	add a,b
	rra
	ld (l481ah),hl
	sub h
	add a,c
	rra
	add a,c
	ld a,(de)
	sub h
	ld c,b
	ld (0b21fh),hl
	nop
	ret
	inc b
	and b
l459bh:
	ld (0fcbdh),hl
	ld (01ca0h),hl
	inc b
	sbc a,c
	ld (hl),d
	jr c,l45cah
	ld b,0dch
	and d
l45a9h:
	pop bc
	cp l
	adc a,c
	pop hl
	ld (0d1e2h),hl
	ld a,a
	ret p
	ld a,(03f83h)
	ret z
	add a,e
	ld l,d
	or b
	ld (hl),b
	ld b,b
	rra
	ld a,(bc)
	ld bc,0081fh
	djnz l45d2h
	ex af,af'
	rra
	ld a,(bc)
	rra
l45c6h:
	ret z
	jr nc,$+76
	add a,l
l45cah:
	ld l,b
	jr nz,l460ch
	jr nz,l4554h
	ld a,(de)
	ld d,a
	ret p
l45d2h:
	ret m
	ld b,019h
	djnz $+1
	nop
	rla
	djnz l45dch
	inc b
l45dch:
	djnz $+84
	add hl,de
	sub d
	ret nz
	ld h,b
	jr nc,l45f8h
	nop
	ret m
	jr c,l464ch
	jr c,l45c6h
	inc d
	ld (hl),c
	jr nc,l464ch
	xor b
	ld b,c
	add hl,bc
	ld bc,l5439h
	sub b
	ld bc,00931h
l45f8h:
	ld (bc),a
	and c
	sub b
	add a,b
	jr nz,l4644h
	nop
	ld b,h
	call nz,046c9h
	ld l,l
	jr nz,$+32
	rst 18h
	inc bc
	inc sp
	add hl,hl
	jr l464bh
l460ch:
	sub c
	jr $+43
	inc sp
l4610h:
	rst 18h
	ld b,l
	and 003h
	sbc a,b
	ld hl,(03f37h)
	sub c
	scf
	ld hl,(0f898h)
	ld b,(hl)
	jr nz,$+94
	ld a,(de)
	ccf
	xor d
	ld bc,0bf67h
	jp z,0e420h
	ld b,(hl)
	ld b,a
	ccf
	call z,01004h
	ld e,0feh
	nop
	ld (bc),a
	sbc a,(hl)
	jr z,$-104
	jp z,0f05bh
	ld c,(hl)
	add hl,bc
	ld h,(hl)
	ld e,a
	ret nz
	ld d,l
	ld e,c
	adc a,l
	cp 049h
	add hl,bc
l4644h:
	push bc
	add a,(hl)
	and l
	adc a,(hl)
	and (hl)
	ld h,075h
l464bh:
	add hl,bc
l464ch:
	and (hl)
	ld h,d
	and b
	xor (hl)
	jp nc,09c1bh
	add a,a
	call po,00009h
	jr l466fh
	inc l
	inc h
	jr $+63
	call m,00077h
	call 0ef3ah
	ld (hl),b
	inc c
	ld d,012h
	ld h,d
	inc c
	jp pe,l6683h
	ld c,d
	ld b,d
	ld h,(hl)
l466fh:
	inc a
	ld e,0d7h
	jr nz,l4674h
l4674h:
	ld h,b
	ld e,033h
	dec h
	ld hl,l6333h
	ld e,0e2h
	ld h,e
	ld c,e
	ld e,e
	inc sp
	ld e,0cch
	call z,03cd2h
	sub 00ch
	ld c,080h
	ld a,b
	call z,09784h
	call z,0f178h
	rrca
	adc a,a
	dec sp
	pop hl
	dec h
	dec sp
	ex af,af'
l4698h:
	push bc
	and 081h
	ld hl,02418h
	inc l
	defb 0fdh,0bch ;cp iyh
	ld b,00ch
	ld (de),a
l46a4h:
	ld d,00ch
	rst 28h
	ld de,l47c0h
	and 0b4h
	add a,a
	ld b,h
	ld b,d
	ld c,d
	add a,a
	ld e,d
	dec sp
	ld hl,03bc7h
	ld h,b
	ld e,080h
	ld b,009h
	add hl,bc
	ld c,(hl)
	rrca
	ret c
	rlca
	jr c,l470eh
	ld c,h
	jr c,l46d7h
	ld h,c
	inc e
	ld (01c32h),a
	or e
	sbc a,d
l46cch:
	sub b
	ld (hl),090h
	ld h,b
	jr nz,l46f3h
	add a,01fh
	ex af,af'
	pop af
	add hl,de
l46d7h:
	in a,(0e0h)
	djnz l46a4h
	adc a,l
	djnz l46fdh
	sub (hl)
	dec e
	out (071h),a
	ld (hl),a
	dec c
	inc h
	inc a
	jr l471dh
	inc sp
	ld h,026h
	dec (hl)
	ld c,c
	ld b,064h
	ld h,h
	jr c,l4708h
	xor (hl)
l46f3h:
	inc a
	rla
	adc a,l
	push hl
	jr l471ah
	ld l,b
	ex af,af'
l46fbh:
	inc b
	ld a,(de)
l46fdh:
	ld a,(de)
	xor 0b0h
	inc bc
	jr nz,l475bh
	ld e,b
	jr nz,l473ch
	adc a,d
	rla
l4708h:
	cp c
	ld a,(00102h)
	jr nc,l4756h
l470eh:
	ld c,b
	ld a,b
	jr nc,l46fbh
	ld (hl),d
	rst 18h
	ld (hl),a
	ret po
	inc c
	call nc,0c322h
l471ah:
	inc h
	ld e,012h
l471dh:
	cp h
	ld c,(hl)
	add a,b
	add a,l
	ld c,a
	sbc a,a
	ld c,e
	jr nc,l4747h
	defb 0fdh,052h,0a3h ;illegal sequence
	ld (hl),e
	defb 0ddh,0d8h,08dh ;illegal sequence
	ex (sp),hl
	jp nc,0899fh
	sub d
	rst 38h
	ld a,a
	add a,e
	defb 0fdh,000h,0e0h ;illegal sequence
	jr nz,$+47
	dec hl
	dec hl
l473ch:
	dec bc
	dec l
	dec l
	inc l
	cpl
	inc bc
	ld b,05ah
	jr nz,l4746h
l4746h:
	dec hl
l4747h:
	call c,0150eh
	rst 20h
	dec c
	nop
	dec de
	cpl
	ld a,(de)
	inc de
	halt
	ld c,02bh
	pop bc
	inc c
l4756h:
	dec l
	cpl
	inc l
	inc de
	ld (hl),c
l475bh:
	dec c
	ccf
	sra d
	ccf
	sub 00eh
	di
	ccf
	ld (hl),b
	ld hl,(02a3fh)
	call p,0773fh
	ld hl,(01c3fh)
	ld h,(hl)
	nop
	inc b
	ld (hl),e
	rlca
	exx
	ld hl,(0e32bh)
	xor l
	ld c,h
	jr c,$-78
	ld b,a
l477ch:
	dec hl
	and e
	ld h,(hl)
	ld l,02eh
	rrca
	pop de
	ld d,0b5h
	jp po,0c10fh
	jp z,0090fh
	adc a,046h
	ld h,c
	nop
	add hl,bc
	dec hl
	ld bc,06e51h
	and c
	ld d,h
	inc (hl)
	dec (hl)
	nop
	dec bc
	djnz l47a7h
	ld a,(bc)
	ld c,d
	ld bc,00b0ch
	dec l
	rrc e
	ld (de),a
	rra
	ld c,b
l47a7h:
	dec hl
	add hl,hl
	and l
	defb 0ddh,01fh,037h ;illegal sequence
	jr nz,$+48
	rra
	jr nz,l482ah
	ret po
	ld a,d
	inc l
	rra
	cpl
	dec hl
	add hl,bc
	rra
	ld b,d
	ld a,(bc)
	inc c
	ld de,00bbah
l47c0h:
	ld l,a
	ld a,(00b0eh)
	ld l,a
	di
	nop
	inc a
	dec bc
	ld c,005h
	ld a,(hl)
	nop
	dec a
	add hl,de
	ld a,e
	ld l,000h
	dec a
	ld l,e
	nop
	and a
	rst 38h
	ei
	rst 30h
	add hl,hl
	nop
	call c,0fb20h
	nop
	sub d
	add hl,bc
	xor e
	ld l,(hl)
	ld (bc),a
	nop
	ld l,h
	ex af,af'
	dec b
	ld c,(hl)
	add a,b
	nop
	nop
	ld c,l
	ld c,l
	ld c,h
	ld c,e
	ld c,(hl)
	ld c,h
	ld c,h
	dec b
	rst 38h
	dec bc
	rst 30h
	rra
	ld e,(hl)
	ld c,a
	nop
	rra
	add hl,sp
	dec bc
	sbc a,(hl)
	ld h,h
	ld bc,0fe0ah
	adc a,a
	ld (hl),h
	ld b,002h
	ld b,d
	inc c
	ld c,e
	nop
	ld c,d
	ld c,e
	pop af
	ld b,04bh
	ld b,d
	ld b,d
	ld b,052h
	dec bc
	jp 00c1bh
	ld a,(bc)
	dec a
l481ah:
	ld b,c
	jp z,0d30ah
	ld h,h
	ld c,l
	nop
	ld c,a
	add hl,de
	ld c,l
	nop
	ld c,h
	ld b,d
	ld b,(hl)
	ld d,h
	ex af,af'
l482ah:
	nop
	push bc
	ld (hl),e
	and c
	ld d,c
	ld l,02fh
	call p,0942dh
	dec bc
	dec c
	inc sp
	xor a
	call nz,00f0eh
	dec hl
	dec c
	sbc a,d
	dec bc
	nop
	ld l,h
	ld c,h
	adc a,(hl)
	ld l,04bh
	ld c,e
	ld b,027h
	ld l,003h
	nop
	or e
	ld c,d
	nop
	in a,(013h)
	ld b,h
	nop
	ld c,00dh
	jr c,l4863h
	sbc a,e
	cp h
	dec bc
	add a,a
	ld c,a
	nop
	rlca
	ld b,b
	ld c,a
	nop
	inc a
	xor (hl)
	sbc a,b
l4863h:
	nop
	dec c
	ld b,(hl)
	inc bc
	ld e,a
	inc bc
	dec c
	add hl,bc
	call z,sub_410fh
	nop
	inc hl
	ld b,d
	ld c,a
	ld e,a
l4873h:
	ld c,a
	ld b,d
	add hl,bc
	ld (hl),c
	defb 0edh ;next byte illegal after ed
	dec a
	nop
	ld e,(hl)
	ld b,l
	nop
	rst 8
	dec c
	nop
	ld h,a
l4881h:
	ld c,e
	nop
	or h
	jp 0fb71h
	ld b,(hl)
	nop
	ret p
	ld a,(bc)
	ld b,b
	ret c
	nop
	cp c
	and e
	cp (hl)
	ld a,b
	ld a,(bc)
	adc a,h
	out (0c6h),a
	nop
	nop
	ld bc,0c162h
	ld h,d
	inc h
	ld b,b
	rst 18h
	ld (0b301h),a
	dec b
	rlca
	inc bc
	dec l
	rra
	scf
	cp b
	add hl,de
	jr nz,l4881h
	nop
	dec c
	ld de,0de1ah
l48b1h:
	ld h,066h
	rlca
	inc sp
	in a,(01eh)
	ld bc,06e00h
	and d
	rst 20h
	rra
	ld b,c
	inc e
	ld bc,l5f66h
	add a,b
	xor 01ah
	xor 001h
	ld c,e
	rst 20h
	ld (de),a
	ld e,083h
	ld c,l
	jr nz,l48f4h
	ex (sp),hl
	add a,0dch
	ld d,(hl)
	sbc a,a
	ld a,(05fdeh)
	dec e
	ld (hl),01fh
	cp e
	ld d,a
	jr nz,l4881h
	inc c
	dec c
	rra
	ld e,(hl)
	ld c,h
	jr nz,$+31
	ccf
	defb 0fdh,000h,04fh ;illegal sequence
	dec bc
	nop
	ld l,c
	sbc a,a
	ld (hl),a
	nop
	jp nc,l4cbbh
	ld a,001h
l48f4h:
	ld (0c308h),a
	ld (bc),a
	ld a,(0ffe8h)
	or 002h
	and 003h
	jr nz,l4881h
	ld (0f308h),a
	out (099h),a
	ld a,020h
	adc a,c
	ei
	inc b
	ld a,(0ffe7h)
	and 020h
	rst 18h
	ld (0af04h),a
	ld (0c10eh),a
	ld bc,l7c2ah
	dec b
	ld (hl),01ah
	ld hl,(0047fh)
	ex af,af'
	ret nc
	ld hl,(00482h)
	jp nz,06a2ah
	add a,l
	inc b
	adc a,b
	inc b
	djnz l493eh
	ld hl,(0048bh)
	call nc,08e2ah
	sub 009h
	sub c
	add hl,bc
	or l
	sub h
	add hl,bc
	sub a
	add hl,bc
	xor b
l493eh:
	sbc a,d
	inc b
	ret z
	ld hl,(09d40h)
	inc b
	jp nc,099cdh
	ld c,(hl)
	call 03940h
	ld (bc),a
	ld h,e
	dec b
	call 08028h
	inc h
	call 0059fh
	and d
	ld (bc),a
	and l
	add a,b
	ld (bc),a
	add a,04dh
	call 07f58h
	call 0f109h
	ld e,(hl)
	call 00baeh
	add hl,sp
sub_4968h:
	ld (bc),a
	jr nz,$-86
	ld (bc),a
	ld a,d
	ld h,e
	call 08aabh
	dec b
	ld c,c
	ld h,b
	dec bc
	inc l
	nop
	ld (hl),e
	ld e,e
	ld a,(0c13dh)
	or a
	jp z,0224ah
	ld c,l
	ld a,011h
	rrca
	dec b
	and d
	jr nc,l498eh
	pop bc
	ld (0fe3eh),hl
	and a
	rlca
l498eh:
	pop bc
	ld (0c3a3h),a
	ld a,08fh
	ld c,b
	rlca
	rlca
l4997h:
	and d
	jp 0cd21h
	inc bc
	ld a,(de)
	ld b,005h
	halt
	ld e,l
	sub c
	and b
	ld b,d
	dec hl
	ld a,(0c395h)
	ld l,026h
	adc a,e
	ld c,l
	jr c,$+80
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
	ld b,e
	ld (bc),a
	ld b,b
	ccf
	ld (bc),a
	ld (l4240h),a
	ld h,03eh
	pop bc
	cp 01eh
	jp c,0af08h
	ld c,l
	dec a
	ld (03a08h),a
	pop de
	djnz l4997h
	inc a
	ld (03a03h),a
	inc de
	pop bc
	and c
	dec c
	inc bc
	inc a
	jp nz,03d1dh
	and b
	xor a
	ret
	ld hl,l4dfah
	nop
	ld (04df6h),hl
	ld hl,l4e1ah
	ld (020f8h),hl
	ld c,l
	ld hl,(l5e08h)
	inc hl
	ld d,(hl)
	inc hl
	ld a,(bc)
	ld a,d
	or e
	jp z,00e38h
	dec bc
	dec b
	ex de,hl
	ld c,(hl)
	inc hl
l4a03h:
	ld b,(hl)
	ld hl,(01215h)
	cp b
l4a08h:
	inc e
	ex de,hl
	dec b
	ld (hl),c
	inc hl
	ld (hl),b
	jp 0b2d2h
	or b
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
	dec b
	ld sp,05b05h
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
	cp h
	ld e,e
	sub h
	ld e,e
	ccf
	nop
	ld e,e
	ld h,d
	ld e,e
	xor c
	ld e,e
	sub a
	ld e,e
	and e
	nop
	ld e,e
	cp e
	ld h,b
	dec hl
	ld e,e
	ld l,05bh
	sbc a,d
	nop
	ld e,e
	and b
	ld e,e
	and (hl)
	ld e,e
	sbc a,l
	ld e,e
	ld b,d
	rrca
	ld e,e
	ret
	di
l4a59h:
	ld hl,002a2h
	ld de,l4e96h
	ld bc,0c09eh
l4a62h:
	ldir
	ld hl,081b8h
	ld l,c
	add hl,sp
	nop
	ld a,0c3h
	ld (00212h),a
	ld a,013h
	ld (0fff1h),a
	adc a,h
	ld (hl),c
	sub e
	adc a,e
	jr c,l4a59h
	dec bc
	di
	or 010h
	ld (00d04h),a
	jr l4a03h
	inc bc
	ld (bc),a
	call nz,08f03h
	and d
	call po,sub_52ach
	dec (hl)
	ld de,07128h
	di
	add hl,sp
	inc hl
	add a,a
	and 0efh
	inc hl
	add a,e
	xor a
	ld (00362h),hl
	ei
	ret
	sbc a,(hl)
	ld (0465fh),a
	or a
	ld d,h
	push bc
	ld c,(hl)
	dec b
	sub h
	push de
	ld c,(hl)
	ld de,l4b0eh
	ld l,d
	ld e,d
	ld c,0e1h
	dec b
	jp nc,0c90eh
	push af
	rst 18h
	ld c,(hl)
l4ab8h:
	inc l
	ld b,d
	in a,(099h)
	rrca
	call c,sub_761ah
	xor a
	inc c
	ld (0a00bh),a
	pop bc
	rlca
	call c,sub_6d24h
	sbc a,c
	inc bc
	pop af
	ld hl,(0f878h)
	ld (hl),004h
	ld b,(hl)
	jr c,$+68
	inc a
	inc a
	rlca
	djnz $+78
	jr c,l4ae3h
	jr nc,l4ae6h
	dec sp
	ld (hl),044h
	rrca
	add hl,hl
l4ae3h:
	ld b,(hl)
	inc e
	dec b
l4ae6h:
	ex af,af'
	ld (01a07h),a
	ld b,h
	ld b,b
	rla
	ld a,(020d0h)
	jr nc,$+64
	ld l,038h
	sub c
	jr nc,l4b2bh
	rrca
	ld (0273ah),a
	ld d,h
	rra
	ld d,008h
	ld b,(hl)
	sbc a,b
	rla
	ld b,b
	jr c,l4b41h
	call 01f30h
	sbc a,c
	rla
	ld l,018h
	ld d,(hl)
	xor d
l4b0eh:
	jr c,$+41
	rla
	ld l,(hl)
	djnz l4b1bh
	ld d,b
	ld b,(hl)
	ld a,046h
	ld l,00eh
	ld b,l
l4b1bh:
	ld l,044h
	ld b,(hl)
	dec a
	ld e,04dh
	rra
	jr c,l4b73h
	call c,05f5eh
	ld h,h
	inc e
	ld a,047h
l4b2bh:
	ld a,(05fdch)
	ld b,(hl)
	call z,02137h
	cp c
	djnz l4b8ch
	call 03151h
	ld h,(hl)
	inc a
	ld a,b
	ld (hl),b
	adc a,l
	ld a,038h
	ld b,h
	daa
l4b41h:
	push bc
	ld h,034h
	ld h,d
	ld e,a
	xor c
	inc e
	ld e,d
	ld l,09fh
	dec d
l4b4ch:
	ld c,a
	inc de
	ld h,a
	ld (de),a
	ld d,a
	ld de,l4698h
	xor a
	ld b,(hl)
	or (hl)
	ld l,(hl)
	ld b,a
	ld h,b
	ld d,a
	ld a,022h
	scf
	ex af,af'
	ld l,0dfh
	in a,(017h)
	ld h,(hl)
	sbc a,b
	sbc a,b
	defb 0ddh,017h,0cdh ;illegal sequence
	jr nc,$+112
	adc a,l
	adc a,b
	pop hl
	ld d,03ch
	ld l,(hl)
	ld d,c
	ld c,(hl)
l4b73h:
	sbc a,a
	sub l
	cpl
	jr nc,l4bbfh
	sub b
	ld d,h
	jr l4baah
	ld a,(00c23h)
	ld b,d
	adc a,l
	adc a,e
	djnz l4bach
	ld d,c
	ld (0b1c7h),a
	ret m
	or (hl)
	ld a,c
	dec b
l4b8ch:
	ld b,(hl)
	ret
	pop af
	scf
	adc a,c
	inc e
	ld (hl),b
l4b93h:
	djnz $+18
	ld l,(hl)
	ld b,d
	ld b,(hl)
	rla
	ld h,a
	rra
l4b9bh:
	rla
	dec c
	ld b,d
	dec h
	or e
	rlca
	rrca
	ld e,a
	adc a,b
	sub 0d8h
	adc a,0e6h
	rst 10h
	ld c,h
l4baah:
	dec l
	add hl,hl
l4bach:
	ld a,(l5134h)
	sbc a,a
	ld e,h
	dec a
	add a,041h
	inc a
	ld c,l
	call 03c31h
	ld b,l
	adc a,041h
	rrca
	scf
	ld e,c
l4bbfh:
	ld l,l
	ld (hl),a
	ld l,c
	daa
	sbc a,l
	inc de
	ex (sp),hl
	dec bc
	ld (hl),l
	sbc a,(hl)
	dec hl
	dec sp
	ld b,e
	call c,02b3bh
	sbc a,017h
	inc de
	pop de
	ld (hl),0eeh
	cp e
	inc hl
	call z,03828h
	ret c
	ld c,e
	rrca
	jr c,l4c0dh
	adc a,l
	out (08dh),a
	adc a,h
	adc a,(hl)
	call z,01013h
	add a,d
	ld b,a
	ei
	ld d,c
	xor h
	or d
	cp h
	call nz,sub_66fbh
	ld h,c
	ld c,d
	di
	jr c,l4c32h
	rra
	sbc a,l
	cp h
	jp nz,0180fh
	ld b,d
l4bfdh:
	sub d
	ld a,b
	xor 016h
	call z,03e4dh
	ret c
	ld d,0f1h
	push de
	ld a,025h
	ld a,c
	sub c
	sub e
l4c0dh:
	adc a,l
	ld l,03eh
	ret
	ld e,0e2h
	and 0d2h
	sub (hl)
	adc a,d
	sub (hl)
	jp p,01f53h
	add hl,sp
	rla
	call c,02e4dh
	ld a,b
	inc c
	and b
	ld (0819dh),hl
	add hl,hl
	ld e,040h
	ret nz
l4c2ah:
	sbc a,c
	pop hl
	daa
	xor c
	ld d,l
	jr $+33
	dec d
l4c32h:
	ld d,026h
	ld l,016h
	jr nz,$+47
	sbc a,c
	jr z,$+32
	inc h
	ld b,l
	cp c
	rlca
	ex af,af'
	ld hl,(03d3ch)
	rlca
	ex af,af'
	rl a
	ld h,h
	rra
	add a,h
	ld (l52cbh),a
	ld h,l
	ld (03685h),hl
	rrca
	dec hl
	inc l
	ld (08cb9h),hl
	rlca
	call nz,03a47h
	jr nz,l4c87h
	sub 02fh
	jr c,$+17
	ld d,(hl)
	ret nz
	and e
	ld l,057h
	inc e
	ld b,b
	rrca
	adc a,d
	adc a,d
	ex (sp),hl
	halt
	dec l
	ld h,a
	ld (hl),0ach
	or b
	and (hl)
	ret m
	ld hl,(01f2eh)
	cp a
	halt
	exx
	sub d
	push hl
	ld (l56c1h),a
	call po,08556h
	halt
	ret z
	ld d,a
	inc c
	ld h,a
l4c87h:
	jp nz,0e969h
	add a,h
	inc e
	sub a
	ld l,a
	rla
l4c8fh:
	inc de
	xor l
	call nz,0afe4h
	rrca
	ld (0b5b3h),a
	rrca
	ld a,(bc)
	sub c
	ld e,e
	inc l
	ld d,l
	ld h,d
	and c
	cp b
	scf
	ld l,0e2h
	ld b,a
	xor d
	ld hl,(l5982h)
	and c
	jp c,0db90h
	xor l
	ld e,c
	add a,h
	ld c,d
	sbc a,036h
l4cb3h:
	ld c,h
	xor 096h
	rst 8
	sub (hl)
	sub e
	ld (hl),0e5h
l4cbbh:
	sub d
	inc e
	adc a,l
	sub e
	adc a,l
	sbc a,e
	adc a,(hl)
	sub e
	push hl
	pop bc
	adc a,d
	ld d,0b7h
	ld (hl),d
	jp nc,0e496h
	jp nc,0388ah
	ex (sp),hl
	ld d,03ch
	ld l,b
	ld c,0a1h
	jp c,0a5abh
	rst 28h
	sbc a,e
l4cdah:
	jp z,0c825h
	ld (hl),016h
	defb 0edh ;next byte illegal after ed
	ld (hl),a
	inc a
	ld e,e
	ld b,h
	dec (hl)
	pop bc
	ld a,b
	ld l,0e6h
	ld b,h
	rlca
	or (hl)
	ret pe
	cpl
	pop bc
	ld (hl),c
	dec l
	jr $-94
	ld a,h
	ld c,c
	xor (hl)
	rst 30h
	ld h,035h
l4cf9h:
	call 0f8bch
	ld a,e
	rst 28h
	ld a,h
	ld l,l
	ld l,e
	or a
	and l
	rst 0
	di
	cp h
	dec h
	rst 0
	xor (hl)
	ld (hl),d
	scf
	ld l,04ch
	ld e,e
	ld l,c
	ld c,h
	or e
	and 0d4h
	dec (hl)
	ld (hl),0eah
	dec a
	ld c,(hl)
l4d18h:
	adc a,e
	ld d,d
	sub d
	adc a,0dah
	ld (hl),a
	ld a,d
	rst 0
	dec de
	xor b
	ld c,d
	ld b,h
	ex (sp),hl
	ld a,d
	ld d,096h
	ld (hl),025h
	ld d,d
	ret pe
l4d2ch:
	add a,082h
	add hl,hl
	jr l4cf9h
	ld h,e
l4d32h:
	add a,d
	inc de
	ld e,0d2h
	and h
	ld (de),a
	inc d
	add a,e
	ld d,e
	adc a,d
	call nz,sub_6592h
	and l
	xor (hl)
	call nz,sub_5725h
	ret nz
	ld e,e
	ld (hl),e
	ld b,a
	cp d
	jr l4d91h
	ld b,(hl)
	sbc a,(hl)
	sub d
	inc sp
	ld a,h
	ld d,(hl)
	adc a,h
	adc a,e
	ld c,b
	sub h
	and 0b3h
	add hl,sp
	adc a,h
	cp e
	sub 057h
	inc a
	rra
	call pe,09d57h
	ld h,h
	sub b
	or e
	xor a
	dec hl
	ld h,a
	or c
	adc a,(hl)
	push bc
	and b
	ld (hl),b
	ld b,h
	jp pe,08227h
	ld e,b
	cp d
	rrca
	ld b,a
	or a
	ld l,017h
	rrca
	jr l4dbah
	exx
	jp z,0cd38h
	exx
	xor l
	rlca
	defb 0fdh,08ch ;adc a,iyh
	call p,09dcbh
	in a,(095h)
	ret c
	sbc a,l
	rst 10h
	ld b,d
	ld h,b
	inc d
	ex af,af'
	and b
	ld (hl),c
l4d91h:
	add hl,hl
	sub c
	rst 30h
	adc a,e
	ld (04739h),a
	ld l,b
	ld (bc),a
	ret z
	xor l
	add a,c
	ld b,l
	inc a
	ld (de),a
	ld b,h
	jr nz,l4d2ch
	inc a
	dec h
	ld a,(0a986h)
	sub a
	ld c,h
	ld e,d
	adc a,0fch
	dec d
	inc e
	cp d
	add a,095h
	ld (hl),c
	scf
	sub e
	rst 20h
	sub (hl)
	jp nz,046a8h
l4dbah:
	ret m
	in a,(09ah)
	ld e,d
	call nc,028ddh
	sub d
	or c
	rst 8
	ld d,d
	sub a
	ld b,h
	ld b,h
	cp b
	ld (hl),c
	dec iy
	add hl,sp
	ld d,d
	rra
	rrca
	jr nz,l4e32h
	sub h
	rst 30h
	ld (02012h),a
	rlca
	cp h
	halt
	cp b
l4ddbh:
	ld d,d
	rst 30h
	ld d,(hl)
	rrca
	sub 0cch
	ld (de),a
	jr nc,l4ddbh
	call c,0e596h
	cp e
	or c
	add a,e
	ld l,h
	ld l,l
	ex af,af'
	ex de,hl
	ld h,l
	cp h
	xor l
	cp e
	or e
	ret p
	dec h
	res 6,e
	add a,d
	ld a,h
	exx
l4dfah:
	djnz l4e1bh
	ret nc
	inc h
	adc a,b
	di
	and b
	dec de
	or d
	ld c,h
	ld c,(hl)
	or b
	set 5,b
	ld de,0b19fh
	rst 18h
	cp h
	and l
	jp nc,08f38h
	add hl,sp
	and h
	or h
	and 01fh
	ld a,a
	jp c,l7f37h
l4e1ah:
	cp a
l4e1bh:
	ld sp,0ac1ch
	call z,0d746h
	in a,(0ebh)
	ld (hl),0a3h
	call nz,0edc7h
l4e28h:
	and d
	pop af
	defb 0ddh,0cbh,080h,03bh ;srl (ix-080h) & ld e,(ix-080h)
	ret m
	dec l
	ld h,h
	cpl
l4e32h:
	adc a,b
	push af
l4e34h:
	jp c,0af25h
	ld sp,03599h
	adc a,031h
	defb 0edh ;next byte illegal after ed
	dec hl
	jp 0e79dh
	rst 8
	add hl,sp
	rlca
	rst 38h
	sbc a,(hl)
	dec de
	ld c,d
	di
	sbc a,h
	jp c,00f04h
l4e4dh:
	ld b,h
	sub h
	or d
	call 0ddebh
	ld d,e
	rla
	xor 099h
	ld (hl),c
	ld c,l
	ld b,d
	jp pe,09cabh
	ld e,e
	xor d
	call c,0f2ebh
	ld de,0c4d6h
	cp l
	ld (hl),c
	and (hl)
	inc l
	ld h,e
	ld sp,hl
	inc sp
	add a,a
	ld d,a
	di
	dec sp
	jr l4e28h
	ld e,h
	ret p
	rrca
	jr c,l4e4dh
	sub b
	ld h,e
	and (hl)
	ld h,e
	cp (hl)
	cp d
	defb 0edh ;next byte illegal after ed
	jp pe,03ad6h
	or (hl)
	exx
	ld h,d
	adc a,095h
	call nz,02fc7h
	ld e,037h
	ld (hl),h
	rst 30h
	call nz,0a4deh
	and l
	call pe,sub_6b90h
	inc d
	ld sp,hl
l4e96h:
	jr c,l4e34h
	sbc a,a
	ld (hl),e
	ld a,(0fc5fh)
	ret
	jp nc,04f9dh
	add a,(hl)
	dec d
	sub a
	call nc,02e57h
	sub (hl)
	sub (hl)
	ld h,l
	and (hl)
l4eabh:
	adc a,e
	or (hl)
	ld h,d
	adc a,a
	ld (hl),036h
	sub e
	sbc a,03fh
	ld l,e
	sbc a,a
	ld (0cf7fh),a
	cp b
	adc a,(hl)
	adc a,a
	ld (hl),e
	xor d
	jp 02cc7h
	add a,d
	rst 20h
	and d
	jr c,l4eabh
	xor h
	add a,0e5h
	dec h
	or b
	ld (hl),a
	rrca
	jp z,08d39h
	rst 30h
	adc a,0c2h
	ld a,c
	call z,03778h
	adc a,0aah
	add hl,de
	inc a
	xor d
	rst 10h
	adc a,h
	ld l,(hl)
	rlca
	ld e,d
	add a,b
	ld l,d
	inc l
	ld (l77efh),a
	ret po
	sbc a,b
	xor 08ch
	and d
	ex (sp),hl
l4eedh:
	call z,0ae95h
	jp m,0bc38h
	adc a,l
	xor h
	sub c
	call p,09b30h
	ld a,h
	rst 8
	ld a,e
	ld l,0e8h
	ld e,h
	rlca
	xor d
	add a,c
	di
	ret c
	sub l
	exx
	and (hl)
	sub 033h
	cp (hl)
	add hl,sp
	rlca
	ld d,e
	djnz l4eedh
	ld (094f7h),a
	defb 0ddh,0c7h,080h ;illegal sequence
	ld h,0f2h
	or c
	sub 04bh
	xor (hl)
	ld c,e
	adc a,a
	ld l,e
	add a,a
	add a,(hl)
	rrca
	inc sp
	ld (l75dfh),a
	sub h
	ld l,e
	xor (hl)
	adc a,b
	rst 30h
	ex (sp),hl
	and d
	ld a,(l447ah)
	and e
	out (0c6h),a
	ld d,a
	rst 0
	call c,0f78fh
	ret nc
	res 4,(hl)
	ld e,l
	ld d,d
	xor 0c6h
	rst 10h
	or e
	jr $-113
	adc a,c
	rst 10h
	call c,0e5cbh
	ld b,h
	ld (0a89eh),hl
	call 01483h
	call nc,0c0c7h
	or a
	cp a
	ld a,(de)
	ld b,b
	or 0c0h
	ld l,c
	adc a,d
	ld (hl),09fh
	pop hl
	ld b,e
	inc (hl)
	jp z,08b75h
	dec hl
	ld b,d
	or (hl)
sub_4f64h:
	ret m
	call p,0fe9ah
	adc a,06fh
	jp pe,07371h
	ld (09c9ah),a
	in a,(0a3h)
	inc (hl)
	cp h
	sub a
	sbc a,e
	sub h
	ld h,h
	add a,h
	pop af
	ld (hl),h
	sbc a,e
	sub h
	defb 0ddh,09ch ;sbc a,ixh
	jr nc,$+72
	adc a,d
	sub l
	call z,0ed7ch
	out (09ah),a
	sbc a,h
	ld h,e
	adc a,e
	ld d,a
	ld l,b
	ld l,e
	sub l
	adc a,h
	cp e
	dec hl
	jp m,0378dh
	inc sp
	jr $+66
	call p,0ec8bh
	ld c,h
	call pe,000e3h
	ccf
	adc a,h
	ld l,(hl)
	rrca
l4fa3h:
	add a,e
	ld h,e
	jp p,03455h
	add a,h
	dec hl
	xor 029h
	ld a,a
	jp 09528h
	or (hl)
	call z,0f457h
	ret c
	sub h
	call pe,sub_75d9h
	call po,00f5eh
	ld e,(hl)
l4fbdh:
	djnz l4fa3h
	call nz,06ee4h
	dec l
	rst 28h
	rrca
	jp nc,0c3eeh
	ld sp,09608h
	sub l
	jp l6f44h
	inc sp
	jp 0db76h
	cp h
	ei
	ld e,(hl)
	ld (de),a
	jp 0d3e7h
	ld (de),a
	push de
	call z,06697h
	and h
	ld (hl),c
	cp a
	dec de
	ret nc
	dec de
	call p,02e5ah
	sub (hl)
	xor b
	daa
	or l
	sbc a,b
	sbc a,a
	sbc a,092h
l4ff0h:
	ld e,d
	ld (hl),a
	defb 0fdh,051h,0ffh ;illegal sequence
	jp m,000b9h
	sub d
	dec d
	ld b,b
l4ffbh:
	or d
	jp nc,0a506h
	inc c
	adc a,h
	inc h
	call p,091a3h
	ex de,hl
	sub a
	xor l
	jr l4fbdh
	inc sp
	push de
	ld h,(hl)
	ld c,014h
	ld a,c
	ld e,d
	defb 0edh ;next byte illegal after ed
	ld h,020h
	dec de
	ld (02c23h),hl
	ld (de),a
	inc c
	or d
	ret z
	push hl
	call nc,0e220h
	sbc a,0a4h
	xor c
	ld (de),a
l5024h:
	inc c
	jr z,l4ff0h
	ld l,e
	ld sp,02299h
	ld b,059h
	ld (hl),c
	ld b,053h
	ld c,l
	jr c,l5051h
	inc de
	ld d,l
	jr l503fh
	ld b,021h
	ld d,h
	sub d
	adc a,(hl)
	push bc
	ld d,e
	ld b,l
l503fh:
	add a,l
l5040h:
	jr z,l5070h
	ld c,031h
	dec h
	jr nz,l4ffbh
	add hl,hl
	ld sp,0a38ch
	sub e
	ld (hl),d
	ld hl,(0f42fh)
	adc a,d
l5051h:
	adc a,l
l5052h:
	sub d
	call nc,0e4ffh
	or 00dh
	djnz l5090h
	djnz l506ch
	sub (hl)
	jp po,l7c00h
	ld c,(hl)
	nop
	inc bc
	ld b,008h
	ld a,(bc)
	rlca
	add a,c
	ld c,b
	ld c,d
	ld c,h
	rlca
l506ch:
	ret nz
	nop
	ld (bc),a
	inc b
l5070h:
	ret m
	inc h
	ld a,a
	nop
	add a,b
	ld (bc),a
l5076h:
	ld a,(0f3dfh)
	and 0efh
	ld (00804h),a
	out (099h),a
	ld a,080h
	inc bc
	ld a,(086e0h)
	dec c
	cp a
	ld (00de0h),a
	or c
	add a,c
	inc bc
	ld (bc),a
	inc bc
l5090h:
	adc a,b
	adc a,a
	inc bc
	in a,(099h)
	ld b,0e6h
	jr nz,$-60
	ld l,a
	ld e,d
	ld b,080h
	jp z,l5a76h
	ld a,(l732dh)
	or a
	inc bc
	call nz,06049h
	ld a,(0c1fch)
	dec e
	djnz l5040h
	inc bc
	push bc
	ld a,(03154h)
	pop bc
	ld b,a
	ld a,(bc)
	sub a
	ld a,083h
	pop af
	rst 38h
	add a,b
	add hl,bc
	jr l5052h
	add hl,bc
	rst 20h
	jr $+1
	and 0fdh
	ld a,(bc)
	adc a,b
	add a,00ah
	pop hl
	ld c,(hl)
	cp b
	add a,d
	ld e,h
	inc a
	or 042h
	ld e,h
	nop
	push de
	push hl
	exx
	ex af,af'
	push af
	push bc
	add a,b
	dec b
	ld a,(0c1f3h)
	cp 002h
	call z,0b100h
	ld a,l
	call sub_60a2h
	pop hl
	pop de
	pop bc
	jr $-13
	ex af,af'
	exx
	dec b
	ret
	jp 0f63eh
	ld (bc),a
	ld a,097h
	xor a
	ld e,d
	add a,a
	ld e,c
	ld d,c
	xor e
	inc d
	or 010h
	ld b,0b2h
	ld h,e
	ld a,06bh
	ld e,h
	ld e,a
	ld e,e
	rst 0
	xor d
	ld l,a
	push bc
	ld d,(hl)
	nop
	sbc a,h
	jp 0c2b7h
	nop
	jr nc,l516fh
	call 0055dh
	call 00560h
	ex af,af'
	ld a,(l6faah)
	sub 063h
	dec c
	ld a,c
	adc a,b
	ld b,h
	pop bc
	ld (089b6h),a
	call 0131eh
	ld (hl),l
	ld (bc),a
	ld b,h
	jp nz,08eafh
	ret nz
	ld a,b
	dec e
l5134h:
	ld bc,0f3cdh
	halt
	ld a,(0fff6h)
	ld (010cah),a
	ld a,(0c39fh)
	nop
	and 040h
	call nz,00521h
	ld a,001h
	ld (l5623h),a
l514ch:
	pop bc
	sub c
	call nz,021afh
	add a,b
	dec c
	cp (hl)
	jp z,l5b77h
	ld (hl),a
	call 01334h
	inc bc
	ld e,e
	jr nz,$+49
	nop
	call l672eh+2
	call sub_5e8ah
	call 0007dh
	ld e,h
	call sub_5bebh
	jr nz,l517bh
l516fh:
	call 09215h
	ld d,c
	jr l5177h
	ld h,(hl)
	ld (bc),a
l5177h:
	ld c,c
	ld (hl),d
	ld (bc),a
	ld l,c
l517bh:
	ld (bc),a
	jr nc,l5180h
	inc h
	ld l,a
l5180h:
	ld (bc),a
	dec l
	ld (bc),a
	ld a,(de)
	ld de,0cd7fh
	jp c,00286h
	cp a
	ld e,e
	ei
	call 00c0ch
	ld b,h
	inc bc
	ld (bc),a
	ld b,005h
	defb 0ddh,040h,0e9h ;illegal sequence
	ei
	and 010h
	jp nz,0d501h
	ld e,e
	ld a,(l5bd4h)
	or a
	ret nz
	ld h,a
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
	jr nz,l51e8h
	ld (bc),a
	ld b,e
	pop bc
sub_51b9h:
	ld a,0e0h
	ld (089a4h),a
	ld d,c
	rst 8
	ld l,e
	ld bc,03ac8h
	ret pe
	ei
	bit 6,a
	add hl,bc
	add a,d
	jp nz,l5c00h
	dec h
	add a,b
	ld b,0c9h
	ld (0c202h),a
	add a,004h
	inc b
	ld (0c206h),a
	ld a,(0e4d0h)
	ld h,c
	add hl,de
	ld e,h
	ld b,d
	adc a,d
	add hl,bc
	ld l,05ah
	inc d
	rrca
	dec b
l51e8h:
	xor a
	inc d
	ret nz
	ld b,h
	inc b
	pop bc
	jp m,03284h
	inc b
	djnz l51fah
	ld b,032h
	ex af,af'
	jp nz,00c32h
l51fah:
	inc h
	add a,(hl)
	and 007h
	jr nz,$+16
	ld a,000h
	add a,008h
	cp 060h
	jr nz,l520ah
	ld a,060h
l520ah:
	ld c,b
	ld b,d
	ld a,(0c200h)
	and h
	ld (0011ah),hl
	dec b
	dec b
	nop
	jp nz,00d21h
	pop bc
	ld b,(hl)
	ld (hl),016h
	xor a
	add hl,de
	call sub_5e1ch
	ld hl,(l74d6h)
	inc bc
	cp 001h
	and h
	ld b,030h
	call nc,sub_7f80h
	ld a,(08709h)
	jp nc,l57c0h
	jr $+99
	dec a
	sub b
	or a
	ld e,b
	ld a,a
	adc a,c
	rlca
	and a
	ret
	ld h,e
	ld h,b
	ld e,e
	xor c
	jr c,l527fh
	inc a
	ld a,(08002h)
	jp nz,l4011h
	jp nz,0a0c7h
	ld (0c15fh),a
	ld b,000h
	rlca
	push de
	ld a,(hl)
	and 01fh
	cp 015h
	jp z,l4500h
	ld e,l
	inc hl
	or a
	jp z,05cd5h
	cp 000h
	inc b
	jr z,l52aeh
	dec a
	call z,sub_5e3fh
	call nz,sub_7903h
	ld e,l
	pop de
	push hl
	ldi
	ld bc,0e196h
	inc b
	xor h
	ld a,(hl)
	adc a,(hl)
	ld bc,01313h
l527fh:
	ld bc,0000dh
	add hl,bc
	ld a,(01835h)
	add a,002h
	ld a,(000feh)
	ld e,0c2h
	sub (hl)
	ld e,h
l528fh:
	ret
	pop de
	ld bc,0850fh
	ld (de),a
	ex de,hl
	ld c,008h
	inc bc
	rla
	jp pe,0002bh
	ld a,(hl)
	cp 024h
	jr z,l52dfh
	inc hl
	push hl
	inc hl
	and c
	nop
	add hl,bc
	ld d,028h
	add hl,bc
	xor d
sub_52ach:
	djnz l528fh
l52aeh:
	call 00412h
	ld e,(hl)
	jp l5cafh
	inc hl
	ld c,b
l52b7h:
	ld (hl),a
	nop
	cp 00ch
	jr z,l52cfh
	and 003h
l52bfh:
	jr z,l52c5h
	ld h,d
	pop hl
	rrca
	dec hl
l52c5h:
	add hl,hl
	adc a,c
	pop hl
	ld (hl),a
	add hl,bc
	pop bc
l52cbh:
	ld (hl),022h
	inc hl
	and h
l52cfh:
	ld (hl),006h
	ex af,af'
	nop
	ld h,c
	inc hl
	rrca
	ld (hl),004h
	ld a,0a2h
	ld (hl),04bh
	inc hl
	rla
	ld e,l
l52dfh:
	inc hl
	ld de,0093eh
	ld (hl),001h
	inc hl
	pop af
	ret nz
	ld b,a
	ld a,(hl)
	sub b
	ld (hl),a
	sub 00fh
	push de
	ld a,000h
	dec hl
	djnz $+51
	pop hl
	ld a,(0c235h)
	inc c
	cp d
	ret c
	cp e
	ret nc
	ret pe
	add a,b
	jp nz,0d8b9h
	sub 010h
	cp c
	ld a,(bc)
	ret nc
	ld a,0f0h
	ld (08311h),a
	ld b,l
	ld (0ea0fh),a
	jr nz,l536fh
	ret
	ld a,(hl)
	ld (de),a
	sub 008h
	ld c,a
	ld c,c
	ld a,(hl)
	jr l531dh
	ld d,a
l531dh:
	add a,01eh
	ld e,a
	ld hl,0c229h
	call p,07e10h
	dec hl
	cp d
	inc b
	jp c,l5d55h
	cp e
	jp nc,l7e03h
	ld h,(hl)
	cp c
	ex af,af'
	ld (00a60h),a
	ld a,(0c151h)
	sub b
	add a,d
	or c
	ld e,l
	ld c,b
	ld a,b
	add a,e
	jp nc,00599h
	pop hl
	jr c,l538bh
	ld de,02377h
	sbc a,c
	ld d,03ah
	ld a,0a8h
	ld b,011h
	rlca
	nop
	add hl,de
	ld (hl),d
	ex af,af'
	jp c,05dd7h
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
	ld de,09610h
	inc hl
	ld e,c
	inc de
l536fh:
	add hl,bc
	ld (hl),024h
	inc hl
	cp 081h
	inc a
	jr z,$+27
	ld a,(l514ch)
	ld hl,(02fc0h)
	dec b
	or d
	jr nc,$-120
	ld (l4a62h),a
	dec e
	sub 080h
	add a,h
	ld c,e
	dec (hl)
l538bh:
	ret
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
	jr nc,$+106
	add hl,hl
	nop
	ld de,00b03h
	ld c,b
	add hl,de
	push hl
	ld l,a
	inc c
	dec bc
	add a,b
	nop
	ld (hl),h
	add hl,de
	call l4500h
	ld bc,00ee1h
	sbc a,b
l53b3h:
	call 005b4h
	ld (bc),a
	pop hl
	ret
	call 0806ah
	ld b,(hl)
	bit 2,b
	inc bc
	jp c,07b04h
	ld e,(hl)
	cp 0e3h
	jp nc,02b04h
	ld (bc),a
	cp 012h
	ld c,001h
	jr c,l53d5h
	call pe,00e60h
	pop hl
	ret c
l53d5h:
	ld a,(0dc99h)
	inc a
	add hl,de
	daa
	ret z
l53dch:
	ex (sp),hl
	ld bc,0ca3dh
	ld (hl),d
	ld e,(hl)
	ld a,c
	or 031h
	jp nz,0e778h
	jr c,l53b3h
	sbc a,b
	ex af,af'
	add hl,sp
	ex af,af'
	jr c,$-77
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
	ld a,(00247h)
	pop bc
	ld h,a
	ld a,(0c148h)
	ld l,a
	pop bc
	jr z,$+14
	inc hl
	ld e,(hl)
	inc b
	inc hl
	ld c,(hl)
	inc hl
	ld a,l
	ld (l7c0dh),a
	ld b,b
	ld (01615h),a
	nop
	ld hl,08823h
	ld (bc),a
	add hl,de
	ld (hl),c
	dec hl
	ex de,hl
	ld bc,00910h
	and b
	xor l
	ld a,(hl)
	or a
	jr $+42
	dec e
	add hl,bc
	inc b
	jr $-40
	inc b
	inc de
	inc b
	or l
	ld c,004h
l5436h:
	add hl,bc
	inc b
	xor h
l5439h:
	inc b
	inc b
	ld bc,0ebc0h
	ldir
	ret
	push hl
	ld de,0c42bh
	call c,014a4h
	inc bc
	ld de,01019h
	ld sp,hl
	or c
	nop
	ld hl,l60aah
	ld (l609dh),hl
	ld a,022h
	add hl,bc
	ld (0a1fdh),a
	cp 0f9h
	sbc a,(hl)
	ld (002f8h),hl
	ld c,c
	push af
	xor c
	and e
	ld b,d
	di
	rlca
	nop
	call p,021c1h
	rra
	ld h,e
	call 0048bh
	ld (0133ah),hl
	sbc a,b
	nop
	ld b,a
	add a,a
	add a,b
	add a,012h
	ld (l632eh),a
	inc (hl)
	ld hl,0112eh
	call sub_5a1bh
	dec b
	ret z
	djnz l54f7h
	ld h,e
	ld sp,l6370h
	ld (06a40h),a
	ld (bc),a
	ld l,h
	ld h,e
	ld a,(0c308h)
	ld b,c
	dec a
	ld e,e
	ld (bc),a
	jp z,l5f71h
	ld b,01ah
	ld d,b
	inc bc
	ld b,006h
	inc bc
	ld b,b
	ld de,004d8h
	jp z,0085bh
	ld bc,01190h
	adc a,b
	add hl,bc
	jp l4a08h
	rst 18h
	jr nc,l5436h
	ld h,l
	ld a,(0c9f2h)
	ld b,003h
	di
	call m,0fb8ah
	jp nz,03204h
	ld (0caaah),a
	sub e
	res 5,h
	dec bc
	sub 00ah
	ex de,hl
	jr z,$+6
	add hl,bc
	dec c
	jp nz,l7a05h
	ld (0c1f7h),a
	ld a,e
	ld hl,(0097eh)
	jp po,0194ch
	defb 0edh ;next byte illegal after ed
	add a,c
	di
	ld e,a
	ld b,006h
	push bc
	or d
	or d
	push bc
	rst 28h
	jr nz,$+96
	push hl
	ld hl,l4d32h
	ld h,d
	ex (sp),hl
	ld (hl),c
	sub d
	ex (sp),hl
	nop
	bit 0,a
l54f7h:
	jp z,l5fbdh
	and 0feh
	ld (020c6h),a
	ld a,h
	xor (hl)
	jr nc,l5570h
	ld h,e
	ld a,(de)
	jp 05fc5h
	ld a,(bc)
	inc bc
	push bc
	ld a,(bc)
	ld hl,0b620h
	dec de
	sbc a,e
	ld d,01dh
	ld b,e
	inc b
	pop hl
	inc hl
	pop bc
	sub d
	add hl,bc
	defb 0ddh,09bh,06eh ;illegal sequence
	dec c
	inc b
	ex af,af'
	djnz $-74
	ld hl,(01158h)
	jr nc,$-93
	xor d
	ld (00b06h),hl
	call sub_61d1h
	add a,a
	xor b
	call pe,01204h
	ld h,d
	ld de,l6222h
	call nz,09fa4h
	add a,c
	ld a,007h
	ld (0fcf1h),a
	ld (de),a
	rst 38h
	sbc a,(hl)
	dec h
	pop bc
	sub a
	ld h,c
	nop
	jp l68fdh
	inc d
	sub (hl)
	ld d,c
	ret po
	xor a
	ld (09e63h),hl
	sub b
	ld (bc),a
	ld c,h
	ld a,(bc)
	ret nc
	ld (08c50h),a
	di
	ld c,b
	ccf
	dec bc
	ld b,e
	ld (bc),a
	ld b,h
	ld h,e
	sub (hl)
	xor (hl)
	ld b,b
	call sub_6164h
	ld a,03fh
	ld (089dbh),a
	adc a,d
	ld a,b
l5570h:
	adc a,h
	ret nc
	jr l5595h
	jp p,l7c62h
	ret
	ret c
	jp nc,0da1fh
	jp nc,0de87h
	ld b,h
	ld l,a
	ld l,h
	inc bc
	ld c,d
	nop
	rst 28h
	adc a,c
	call nz,06061h
	ret p
	dec bc
	ret m
	ret
	jp pe,03d42h
	ld (hl),a
	adc a,082h
	ret nz
l5595h:
	ld (hl),a
	ret po
	ld l,h
	ex de,hl
	ret
l559ah:
	defb 0ddh,097h,0f7h ;illegal sequence
	adc a,e
	dec c
	nop
	jp z,0f389h
	or c
	rlca
	ld bc,09507h
	and e
	add a,e
	ld c,0c1h
	jp l6cb0h
	adc a,e
	ld c,d
	rlca
	xor c
	ld sp,0a623h
	add hl,de
	add hl,hl
	add hl,hl
	di
	adc a,d
	inc h
	inc bc
	jp nz,089c3h
	jp 0baadh
	inc c
	and (hl)
	add hl,sp
	sbc a,(hl)
	call nz,03a06h
	xor h
	exx
	ld b,h
	ld c,c
	and (hl)
	call 0ce5ah
	add hl,bc
	call po,0f21dh
	call po,0ab46h
	ld de,099c0h
	ex de,hl
	add a,h
	call 00e50h
	pop af
	call nz,00f0eh
	call nc,0fe61h
	ex af,af'
	dec h
l55eah:
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
	ld h,c
	call sub_617fh
	ld hl,0a910h
	ld e,b
	adc a,e
	push hl
	inc (hl)
	ld de,0edf6h
	cp c
	dec de
	and e
	ld d,c
	jp nz,0181dh
	jr c,$+3
	jr l559ah
	or 09ah
	ld h,b
	cp 0f0h
	jp nz,04a1ah
	ld h,c
	add a,l
l561ah:
	ld (hl),005h
	inc e
	or h
	and h
	ld c,d
	dec de
	ld c,h
	pop hl
l5623h:
	dec de
	ld d,b
	dec de
l5626h:
	and d
	ret po
	jp nz,01b36h
	sub l
	sub (hl)
	or e
	add a,02ah
l5630h:
	sub (hl)
	ld b,l
	ld hl,(0aacah)
	ld e,c
	jp 01c2ch
	ld hl,0283dh
	ld c,c
	xor a
	cp h
	add a,h
	or h
	or e
	sbc a,l
l5643h:
	jr l5643h
	ld b,l
	rra
	adc a,b
	cp d
	jr z,l568bh
	sub d
	ld (bc),a
	ld c,a
	ld (bc),a
	rla
	ld (bc),a
	add hl,bc
	ld h,d
	ld h,e
	xor 001h
	bit 2,h
	ld d,e
	ld (bc),a
	ex af,af'
l565bh:
	ld c,c
	ld h,e
	xor (hl)
	adc a,b
	inc (hl)
	sbc a,0c8h
	ld e,e
	adc a,l
	xor (hl)
	out (09dh),a
	ret po
	daa
	sbc a,(hl)
	ld h,c
	ret po
	add a,h
	ld e,l
	ret po
	jp pe,0e05eh
	ld h,e
	and (hl)
l5674h:
	ld h,c
	ld a,(bc)
	ld e,b
	inc bc
	ld a,(bc)
	inc hl
	dec de
	ex de,hl
	ld hl,l5a5bh
	rst 8
	sub d
	ld h,c
	push de
	halt
	inc b
	dec h
	jp nz,01b82h
	ld h,c
	ld e,(hl)
l568bh:
	xor b
	inc (hl)
	sbc hl,hl
	or 0b0h
	ld (hl),l
	ld a,(l4448h)
	pop de
l5696h:
	jp z,0df9ah
	rst 0
	ld d,d
	and d
	ld (hl),b
	push hl
	ld h,c
	inc h
	ld a,(0b5f9h)
	jp c,0b1abh
	ld (hl),e
	sbc a,h
	adc a,d
	inc de
	rst 10h
	sub b
	ld de,(0d792h)
	ret
	adc a,d
	adc a,045h
	ld e,a
	sub 017h
	call z,07662h
	ld a,(l5626h)
	ld e,a
	add a,(hl)
l56bfh:
	jr nz,$-6
l56c1h:
	dec d
	ex de,hl
	pop hl
	ld bc,0a402h
	adc a,e
	sub (hl)
	call m,020cfh
	nop
	ld bc,l40b5h
	ld bc,02010h
	ld b,b
	nop
	ld h,b
	ld b,b
	add a,b
sub_56d8h:
	ld c,040h
	and b
	ld h,b
	nop
	add a,l
	inc d
	ld h,b
sub_56e0h:
	ld a,(bc)
	nop
	add a,b
	ld (bc),a
	ld h,b
	and b
	add a,b
	nop
	add a,b
	jr nz,l56fdh
	ld d,b
	add a,b
l56edh:
	ld a,(bc)
	nop
	and b
	and b
	nop
	add hl,de
	and b
	jr nz,l5696h
	ld e,014h
	ld b,b
	ld a,(bc)
	ret nz
	nop
	ret nz
l56fdh:
	jr nz,l56bfh
	nop
	ld b,b
	ret nz
	ld h,b
	ret nz
	add a,b
	ret nz
	and b
	ret po
	nop
	nop
	ret po
	jr nz,l56edh
	ld b,b
	ret po
	ld h,b
	ret po
	ld hl,(0e080h)
	jr nz,l5761h
	nop
	xor d
	ld c,d
	ld b,b
	ld (hl),02eh
	or (hl)
	nop
	ld e,b
	ld c,(hl)
l5720h:
	and b
	ld b,h
	ld (hl),001h
	ld b,b
sub_5725h:
	ld hl,00040h
	ld b,c
	ld b,b
	ld h,c
	ld b,b
	add a,c
	ld b,b
	and c
	ld h,b
	ld (bc),a
	ld bc,02160h
	ld h,b
	ld b,c
	ld h,b
	ret
	add a,b
	add a,c
	ld h,b
	and c
	add a,b
	ld l,001h
	add a,b
	ret
	nop
	ld b,c
	add a,b
	ld h,c
l5745h:
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
	ld hl,l41c0h
	ret nz
	ld h,c
	ret nz
	nop
l5761h:
	add a,c
	ret nz
	and c
	ret po
	ld bc,021e0h
	ret po
	nop
	ld b,c
	ret po
	ld h,c
	ret po
	add a,c
	ret po
	and c
	jr nz,l5773h
l5773h:
	ld bc,02120h
	jr nz,l57b9h
	jr nz,$+99
	jr nz,$+8
	add a,c
	jr nz,l5720h
	nop
	ld bc,00585h
	nop
	ld b,c
	add a,c
	ld (bc),a
	nop
	add a,c
	nop
	dec bc
	and 000h
	ld de,001d3h
	nop
	ret nc
	dec bc
	ld h,d
	sub (hl)
	sbc a,b
	nop
	ld (bc),a
	ld (de),a
	sbc a,c
	sbc a,(hl)
	ld c,d
	nop
	ld e,012h
	ld (bc),a
l57a0h:
	add hl,bc
	ld (hl),c
	ld a,b
	nop
	rrca
	cp b
	ld (bc),a
	dec e
	dec d
	pop hl
	inc bc
	add hl,hl
	defb 0ddh,006h,002h ;illegal sequence
	ld b,000h
	dec b
	inc de
	jr l5745h
	jr nz,l57bbh
	djnz $-54
l57b9h:
	dec de
	rla
l57bbh:
	ex af,af'
	nop
	add a,04ah
	ret po
l57c0h:
	inc b
	push af
	ld c,d
	add hl,bc
	rlc e
	ld (de),a
	ld l,l
	dec bc
	daa
	ld l,(hl)
	sub b
	ld c,049h
	jp z,0e8c3h
	dec e
	call sub_649dh
	inc c
	call 005bdh
	ld hl,0b1d7h
	jp z,00142h
	ld (de),a
	adc a,c
	ld d,08eh
	jp nz,l63aah
	ex af,af'
	halt
	xor (hl)
	ex af,af'
	and c
	ld (hl),h
	adc a,d
	ex af,af'
	rst 38h
	ld (hl),b
	adc a,h
	ex af,af'
	ld (hl),b
	ld a,(de)
	inc hl
	ld (hl),c
	ld a,d
	sub d
	sub e
l57f9h:
	rst 18h
	jr z,l5875h
	cp c
	ex af,af'
	ld a,a
	ld l,d
	ld (00280h),a
	sub 069h
	nop
	ld (l64e5h),a
	ld (l6faah),a
	ld (092a9h),a
	ld (bc),a
	and a
	ld (bc),a
	xor b
	ld (bc),a
	dec c
	sbc a,e
	ld (hl),b
	ld (0dbd5h),a
	rrca
	call m,09075h
	sbc a,a
	halt
	xor (hl)
	ld c,b
	ld (bc),a
	inc d
	ld (bc),a
	sbc a,(hl)
	ld (hl),c
	inc b
	ld (l732dh+2),a
	ld (0391fh),a
	add hl,de
	ld a,(de)
	add a,e
	ld (0c9aeh),a
	add hl,de
	or b
	ld a,l
	rst 0
	add a,b
	dec e
	ld a,d
	ld a,05ah
	ld (01e40h),a
	inc b
	xor d
	ld (l719ch),a
	ld a,095h
	ld b,e
	sbc a,l
	inc b
	or c
	add a,e
	ld d,06ch
	ld a,08eh
	inc hl
	ld c,l
	ld l,c
	adc a,e
sub_5854h:
	djnz l5880h
	ld e,c
	ld a,(bc)
	ld a,014h
	ld (00e90h),a
	and l
	and e
	in a,(075h)
	inc b
	ld (de),a
	rst 10h
	ld c,a
	call c,04943h
	sbc a,a
	ld (bc),a
	jr nz,$+72
	inc hl
sub_586dh:
	ld (bc),a
	ld (00226h),hl
	add hl,hl
	ld (hl),e
	add a,e
	inc h
l5875h:
	ld l,006h
	ld (00292h),hl
	dec h
	ld (bc),a
	jr z,l5880h
	ld c,b
	dec hl
l5880h:
	ld (bc),a
	inc l
	ld (bc),a
	dec l
	ld (hl),e
	xor h
	xor c
	rrca
	and l
	ld a,a
	ld (0d9a6h),a
	add a,h
	add hl,de
	ld (00f24h),a
	daa
	sub h
	rrca
	dec l
	ld c,e
	rlca
	ld hl,l7301h
	ld hl,l648ah+1
	ld de,l7b15h
	pop hl
	dec d
	ex (sp),hl
	ld hl,08821h
	ld a,(bc)
	ld b,08eh
	ld bc,00401h
	jp m,0a029h
	ld de,0f6a4h
	push hl
	ld b,c
	ld hl,06c1eh
	ld (hl),a
	and (hl)
	add a,b
	call m,0d6c9h
	pop bc
	pop bc
	nop
	add a,c
	ld c,b
	djnz $-103
	ld bc,08a01h
	nop
	ld sp,l4102h
	inc bc
	ld h,c
	inc b
	ld h,e
	cp b
	rst 18h
	add a,005h
	adc a,h
	add a,c
	ld bc,0c3cch
	ld (0c3cbh),a
	ld a,(0a7d1h)
	ld a,c
	ld l,003h
	jp c,064bch
sub_58e5h:
	cp 005h
	sbc a,(hl)
	ld c,h
	ld b,011h
	jp l64c0h
	sbc a,c
	inc h
	ld d,a
	cp h
	cp h
	ld (bc),a
	sbc a,d
	adc a,b
	cp d
	jp c,l46cch
	ld h,h
	cp d
	ld a,(de)
	cp d
	adc a,b
	xor d
	ld b,(hl)
	ld (bc),a
	ld c,d
	adc a,b
	inc d
	xor h
	inc bc
	jp 0da2ah
	pop hl
	inc d
	ld a,014h
	pop bc
	ld e,c
	ld a,(0c396h)
	call m,03ad0h
	sub a
	jp 0f7eah
	inc bc
	inc bc
	jp z,l6502h
	cp 0b4h
	ret c
	xor a
	djnz l592bh
	jr nc,$+14
	call sub_7f80h
	ret
l592bh:
	ld (03d60h),hl
	exx
	sub l
	ld h,(hl)
	jp 00025h
	jr nz,$+16
	ld (bc),a
	jp z,0ff03h
	nop
	sbc a,c
	ld bc,00114h
	nop
	daa
	sbc a,b
	sub (iy+00fh)
	dec bc
	sbc a,b
	call pe,0040fh
	pop af
	ld h,c
	call pe,01404h
	pop af
	inc b
	add a,(hl)
	ld e,01eh
	inc b
	jr $-8
	inc hl
	inc b
	jp po,01961h
	inc b
	defb 0ddh,0fbh,009h ;illegal sequence
	xor h
	jp po,03104h
	dec b
	defb 0ddh,004h,023h ;illegal sequence
	add hl,bc
	and a
	ld e,005h
	ld (0007fh),hl
	ld (de),a
	ld a,(l48b1h)
	sub d
	jp l650bh
l5977h:
	sbc a,h
	jp nz,l6693h
	inc bc
	ld h,b
	ld d,b
	inc bc
	sub c
	ld h,l
	ret
l5982h:
	nop
	ld (hl),c
	dec b
	ld bc,0029ah
	ld hl,0658fh
	ld (hl),b
	ld a,0f2h
	sbc a,06bh
	ld (bc),a
	or b
	ld (l650dh),hl
	inc a
	ret z
	jp p,02f05h
	jp nz,015bch
	ret nc
	out (03eh),a
	cp 0d2h
	ret p
	ld a,008h
l59a5h:
	call m,02edfh
	ld a,(03c10h)
	and a
	cp d
	xor b
	cp c
	pop de
	ld e,a
	sbc a,c
	jp po,0dd65h
	ret po
	cp 0a0h
	jp nz,0c5d7h
	add hl,sp
	ld (0f153h),a
	ld (hl),c
	jr nz,$+103
	dec d
	ld h,b
	rra
	ld b,a
	call 003e7h
	ld h,l
l59cah:
	inc hl
	djnz $-4
	ret
	ld a,(hl)
	sub 080h
l59d1h:
	ld c,h
	ld h,(hl)
	ld a,(0be0eh)
	dec bc
	pop af
	dec c
	dec d
	ld h,l
	ld a,(0070fh)
	ld d,b
	rla
	inc b
l59e1h:
	ld sp,0c278h
	dec b
	ld c,h
	ld h,(hl)
	xor 0feh
	djnz l5977h
	jp nz,0060ch
	nop
	ld (08011h),a
	ld (de),a
	cp 014h
	jp nz,l6619h
	inc hl
	ex af,af'
	ld (hl),001h
	dec hl
	ld a,(hl)
	ld (hl),l
	ld bc,0d577h
	jp 0e60ah
	jr nz,l59d1h
	add hl,hl
	inc e
	ld a,c
	ex af,af'
	jr l5a72h
	exx
	ld a,(0fe33h)
	call pe,0214ch
	dec h
	call c,09089h
	exx
	jr nz,l59e1h
sub_5a1bh:
	inc d
	ld (hl),a
	ret nz
	ld (hl),c
	ld c,d
	ld h,(hl)
	ld e,003h
	jr $-17
	ld d,d
	ld (hl),0d4h
	ld a,h
	pop bc
	ld e,025h
	inc b
	add hl,de
	call 0ea64h
	sub 0f9h
	ex (sp),hl
	adc a,e
	ld (08c82h),hl
	adc a,d
	ld b,a
	ld c,08ah
	inc c
	xor a
	call po,000a4h
	ld (hl),c
	ld (bc),a
	djnz l5aa9h
	rst 30h
	inc h
	inc d
	ld a,(0fca1h)
	add a,0fch
	cp c
	rlca
	ld a,b
	and d
	ld b,a
	ld d,l
	ld a,(0a383h)
	call po,05495h
	pop bc
	sub c
l5a5bh:
	cp e
	add a,d
	ld a,(l650ch)
	and (hl)
	ld l,d
	inc bc
	and 022h
	jp nz,l77a5h
	ld l,b
	ld (bc),a
	ld de,0fecdh
	ld h,(hl)
	inc h
	ld a,r
	add a,h
l5a72h:
	ld (de),a
	jp nz,l66beh
l5a76h:
	add a,c
	defb 0edh ;next byte illegal after ed
	dec d
	adc a,b
	ccf
	inc a
	jp m,0a966h
	inc a
	inc bc
	add hl,bc
	ld c,a
	ld b,(hl)
	add a,h
	sub 028h
	dec bc
	call m,06664h
	ld e,e
	ex af,af'
	add a,c
	rra
	ld (l66fdh),a
	ei
	sbc a,a
	and l
	ld (hl),a
	adc a,(hl)
	inc bc
	jp z,l66f0h
	adc a,(hl)
	or a
	ret z
	ld b,b
	ei
	ld h,(hl)
	ld bc,0a403h
	rst 38h
	sbc a,b
	xor 024h
	ld h,h
l5aa9h:
	ld b,a
	ld h,h
	sbc a,010h
	ld d,e
	jp z,l670ah
	adc a,h
	defb 0fdh,000h,028h ;illegal sequence
	ld h,a
	ld a,(l6727h)
	cp 0f8h
	ld hl,02123h
	ld h,a
	rst 18h
	inc sp
	ld a,(bc)
	call nz,00472h
	ld h,e
	ret
	add a,c
	adc a,l
	ex (sp),hl
	adc a,099h
	ex (sp),hl
	ld b,d
	ld a,d
	ld h,l
	jp nc,03748h
	and 064h
	sbc a,l
	sub h
	and d
	dec b
	cp 0a2h
	add hl,sp
	sub d
	ld (hl),h
	call p,054c1h
	adc a,d
	add hl,sp
	inc b
	jp nz,0af04h
	ld (05c0ch),a
	ld a,(0b795h)
	ld bc,081c2h
	ld (hl),b
	call sub_6c94h
	ld a,(l74abh)
	add hl,bc
	dec a
	halt
	ld l,b
	call pe,00385h
	jp z,l680fh
	cp d
	ld b,h
	jp z,0041dh
	ld b,021h
	jp z,02c8ch
	ex af,af'
	jp z,004c3h
	ex af,af'
	add hl,bc
	jp z,00e34h
	ld a,(bc)
	jp z,02b42h
	inc b
	inc c
	jp z,l6ae9h
	sub d
	adc a,c
	ld h,064h
	or b
	call z,05bb1h
	ld h,a
	xor (hl)
	ld h,(hl)
	jp l5da0h
	sbc a,0e3h
	ccf
	ld de,l6d9fh
	call c,0a58bh
	ld l,b
	ld (00002h),hl
	inc sp
	ld (bc),a
	inc (hl)
	inc bc
	ld b,h
	inc bc
	ld d,(hl)
	inc b
	dec (hl)
	ld (hl),a
	ld b,036h
l5b44h:
	ld (hl),b
	ld (hl),03ch
	rst 10h
	ld (hl),0f6h
	dec h
	or c
	inc h
	ld de,00201h
	ld b,b
	ld (00301h),hl
	inc sp
	inc b
	ld d,l
	dec b
	call nc,03025h
	dec h
	defb 0fdh,0f8h,025h ;illegal sequence
	inc sp
	jp c,09164h
	cp b
	sub e
	ld (bc),a
	dec b
	ld a,(de)
	inc bc
	dec h
	inc b
	dec h
	add a,b
	ld (l59cah),hl
	sub b
	ex af,af'
	ret nz
	jp z,06871h
	sub b
l5b77h:
	ret po
	djnz l5b44h
	inc bc
	add hl,bc
	ld l,c
	cp 050h
	jp z,00da7h
	or a
	ret c
	ex af,af'
	ld sp,01c1fh
	ld l,c
	ex af,af'
	ld b,l
	sbc a,0b5h
	ld d,c
	ld sp,00369h
	ld sp,0034eh
	sbc a,(hl)
	inc bc
	adc a,h
l5b97h:
	cp e
	inc bc
	ld hl,06a81h
	inc bc
	ei
	ld l,e
	ret
	adc a,c
	add hl,hl
	rst 10h
	sub e
	ld a,0e2h
	jp l6c91h
	jp nc,0e533h
	inc sp
	jp l7024h
	call m,072e3h
	adc a,h
	ret p
	jp nz,008feh
	ld h,h
	jp nc,l6884h
	ret c
	ret z
	dec a
	ld a,018h
	ret
	rra
	ld hl,(00a04h)
	add a,e
	ld bc,08c66h
	dec h
	ld e,h
	inc d
	dec h
	inc c
	ld de,00898h
	or c
	and h
l5bd4h:
	or h
	inc hl
	ld a,e
	ld (03e69h),a
	inc c
	ld (03579h),hl
	ld c,l
	cp d
	dec (hl)
	ld (bc),a
	dec (hl)
	ld (hl),b
	ld a,(bc)
	dec (hl)
	inc bc
	out (035h),a
	pop bc
	adc a,e
sub_5bebh:
	dec (hl)
	ret z
	jr l5bf6h
	rst 28h
	dec (hl)
	jr nc,l5b97h
	and 030h
	dec b
l5bf6h:
	ret
	dec h
	dec hl
	ld b,02bh
	and h
	inc b
	adc a,(hl)
	add a,a
	ld a,b
l5c00h:
	adc a,a
	ld de,00ae8h
	ld h,c
	rlca
	ex af,af'
	ld c,(hl)
	ld d,c
	xor a
	ld l,d
	call p,0226ah
	dec d
	xor d
	add hl,sp
	adc a,h
	sub a
	call nz,0ff12h
	sub a
	ld a,c
	ld (bc),a
	ret
	inc d
	dec c
	ld a,(0e32fh)
	dec h
	ld (09903h),a
	ld h,c
	jr nc,l5c8fh
	ld b,095h
	cp h
	sub h
	dec c
	inc bc
	cp 002h
l5c2eh:
	ld c,d
	ret nz
	jp l7b27h
	inc d
	and 0a6h
	ld c,h
	inc e
	ld d,(hl)
	inc bc
	inc e
	ret
	sbc a,c
	ld b,01ch
	call nc,0e8fdh
	dec b
	jp nz,0d093h
	ld c,0feh
	jp m,l79cah
	ld e,b
	ld l,c
	or h
	jp z,08a4ah
	cp e
	ld c,b
	ld (09bd6h),hl
	sub (hl)
	ld c,l
	dec d
	jp pe,0d688h
	call nc,004adh
	djnz l5c92h
	add a,003h
	djnz l5c2eh
	daa
	xor (hl)
	xor c
	ld c,a
	ld h,06ch
	sbc a,h
	ld c,a
	ld d,d
	inc bc
	ld c,a
	sbc a,l
	ld c,a
	ld l,e
	sbc a,h
	ld b,b
	inc a
	ld l,h
	ld c,d
	ret z
	call z,0891bh
	dec (hl)
l5c7dh:
	cp c
	inc e
	sub h
	inc bc
	inc e
	cp d
	xor (hl)
	inc e
	ld b,01ch
	in a,(099h)
l5c89h:
	inc e
	out (037h),a
	nop
	ld c,a
	ld (bc),a
l5c8fh:
	dec b
	cpl
	add hl,bc
l5c92h:
	rrca
	inc d
	ld h,002h
	ld (bc),a
	ei
	inc b
	ld (hl),c
	rlca
	ld bc,0eff0h
	inc b
	ld (bc),a
	rlc (hl)
	rst 18h
	dec bc
	ld b,a
	ld bc,0983ah
	ld d,c
	adc a,d
	ld c,h
	inc bc
	ld e,a
	add a,c
	sub (hl)
l5cafh:
	ld hl,09605h
	ld b,l
	ld (091f3h),a
	adc a,d
	ld a,h
	sub h
	inc d
	ld (0aa03h),a
	ld b,(hl)
	ld a,(hl)
	ld l,d
	ld b,04bh
	sub a
	ld d,c
	jp nz,0033dh
	or (hl)
	dec hl
	call p,0c280h
	adc a,h
	ld l,d
l5cceh:
	call 08eabh
	ld a,(bc)
	ld b,b
	ld e,b
	jp z,l6a54h
	cp 060h
	sub c
	jr z,l5cceh
	ld a,(bc)
	nop
	ret nz
	and e
	ld c,b
	push af
	pop af
	dec sp
	ld a,c
	ld a,l
	dec sp
	ld h,h
	adc a,c
	ld l,h
	ld d,b
	xor 01ch
	inc b
	jp z,l6bbch
	ld (hl),l
	ld a,(08bbah)
	ld (hl),a
	ret nz
	ld l,b
	jp nz,06b14h
	ld bc,0e0cdh
	ld l,e
	ld (l6c1ah),a
	ld a,b
	xor e
	sub e
	ld l,h
	add hl,bc
	ld e,b
	jr c,$+11
	ld (hl),0e1h
	add hl,bc
	ld b,a
	add hl,bc
	adc a,(hl)
	ld b,l
	add hl,bc
	jr l5d6ah
	add hl,bc
	ld d,h
	pop hl
	add hl,bc
	ld h,l
	add hl,bc
	adc a,(hl)
	ld h,e
	add hl,bc
	jr l5d93h
	add hl,bc
	ld (hl),d
	pop hl
	add hl,bc
	add a,e
	add hl,bc
	add a,e
	add a,c
	ld l,h
	ld hl,0313eh
	add a,c
	inc de
	ld e,098h
	or c
	inc b
	ld a,(0071ah)
	xor c
	ld a,(de)
	dec d
	daa
	dec d
	jp 00d2dh
	ld d,e
	dec l
	dec c
	ld (hl),00dh
	add a,(hl)
	inc a
	dec c
	add a,004h
	ld a,(00738h)
	and a
	jr c,l5d61h
	ld b,l
	dec d
	dec c
	ld c,e
	dec c
	ld c,l
	ld c,e
	dec d
	ld b,a
l5d55h:
	rlca
	ld e,c
	ld b,a
	dec d
	ld (hl),b
	dec d
	adc a,l
	ld e,d
	dec c
	ld c,l
	ld e,d
	dec d
l5d61h:
	ld d,(hl)
	rlca
	adc a,(hl)
	inc b
	ld hl,01563h
	ld a,(de)
	ld l,c
l5d6ah:
	dec c
	ld l,c
	and d
	dec d
	adc a,(hl)
	call nz,06507h
	dec d
	ld (hl),d
l5d74h:
	pop hl
	dec d
	ld a,b
	dec c
	or c
	inc b
	ld a,(00774h)
	xor c
	ld (hl),h
	dec d
	add a,c
	dec d
	jp 00d87h
	ld d,e
	add a,a
	dec d
	add a,e
	rlca
	ld d,c
	add a,e
	rlca
	ld a,a
	ld l,d
	rst 20h
	inc h
	inc bc
	ret nz
l5d93h:
	and (hl)
	jp nz,03acch
	add a,b
	rrca
	or b
	inc bc
	jp pe,0c025h
	xor a
	or a
l5da0h:
	dec bc
	ld a,068h
	add a,a
	ld h,e
	adc a,0eah
	inc de
	inc bc
	push hl
	and d
	nop
	dec hl
	ld e,c
	add hl,de
	ld e,(hl)
	ld hl,l6232h
	add hl,de
	ld (hl),046h
	inc hl
	cp d
	ld c,b
	ld e,0fch
	ld a,(bc)
	ld (de),a
	ld a,(l6bf9h)
	jp z,00351h
	ld a,0fah
	ld l,e
	ld b,094h
	cp a
	jp c,0bf49h
	sbc a,b
	dec c
	nop
	ld (hl),b
	nop
	and b
	and l
	inc hl
	inc bc
	nop
	jr nz,l5d74h
	inc c
	and d
	ld b,(hl)
	ret nc
	add a,d
	or e
	ld c,033h
	djnz l5df0h
	add a,l
	ld d,c
	ld h,b
	dec e
	adc a,a
	jr nz,$+31
	dec e
	ld c,07ah
	ld b,b
	ld c,0bdh
	ld h,b
l5df0h:
	ld c,05eh
	add a,b
	ld c,0afh
	and b
	ld c,057h
	ret nz
	ld c,08ah
	ld bc,0cac4h
	cp a
	rra
	ret nc
	ex de,hl
	inc bc
	and h
	ret nc
	ld a,(08319h)
l5e08h:
	cp e
	ld b,d
	jp (hl)
	ld l,h
	call c,08a3bh
	and (hl)
	and h
	call pe,0f206h
	sbc a,(hl)
	or a
	inc h
	sub d
	ret p
	jp c,008c4h
sub_5e1ch:
	jp nz,l6cbdh
	push hl
	and c
	add hl,bc
	jp z,l6cd1h
	xor 083h
	exx
	ld (00838h),hl
	ld a,(l6ce1h)
	ld sp,hl
	ld l,093h
	ld l,a
	or a
	inc a
	jp 0c4deh
	ld (hl),h
	adc a,c
	rlca
	sbc a,l
	and 007h
	add a,06ch
sub_5e3fh:
	ld c,(hl)
	ld (bc),a
	call p,0c36ch
	xor 06dh
	ret
	call c,0db93h
	xor a
	jp m,01b08h
	add a,e
	cp 0a1h
	inc bc
	jp nz,l6dbah
	ld b,a
	ld b,(hl)
	dec de
	ld a,009h
	dec bc
	ld (hl),d
	adc a,03ah
	ld bc,0e093h
	ret nc
	sub e
	ld l,h
	ld l,h
	add a,b
	call 0e00eh
	sub (hl)
	daa
	ld l,l
	cp c
	cp b
	ld c,059h
	ld b,d
	ld b,04fh
	ld a,c
	ld (08813h),a
	ld e,(hl)
	adc a,l
	ld l,l
	inc bc
	ld h,b
	ld l,l
	nop
	ld hl,l6f0fh
	ld de,l6e8fh
l5e84h:
	ld bc,0d420h
	jp 02100h
sub_5e8ah:
	ld (hl),a
	ld l,(hl)
	ld de,07fd7h
	ld bc,0d515h
	ld a,(bc)
	ld l,e
	dec d
	ld (hl),d
	dec e
	ld bc,0151eh
	daa
	and a
	dec d
	jr l5e84h
	add hl,hl
	ld hl,00befh
	halt
	inc l
	ld e,a
	pop af
	inc l
	ld a,b
	ld c,l
	inc l
	cp h
	ld e,a
	inc l
	sbc a,(hl)
	rst 8
	inc l
	cpl
	ld b,a
	inc l
	rla
	cpl
	inc l
	adc a,e
	ld b,a
	inc l
	ret z
	xor a
	ld l,(hl)
	ld (0e9cdh),hl
l5ec0h:
	sbc a,080h
	dec b
	ld b,010h
	ld a,(hl)
	and 0f0h
	ld c,a
	add a,a
	inc bc
	rrca
	ld d,a
	ld a,c
	add a,a
	nop
	jp z,l6dd5h
	add a,010h
	nop
	ld c,a
	ld a,d
	cp 007h
	jp z,l6dddh
	inc a
	rrca
	ld d,a
	ld a,d
	or c
	ld (hl),a
	call po,00bc9h
	jp pe,l440bh
	ex af,af'
	djnz $-38
	ld sp,hl
	ld a,e
	ld de,06e02h
l5ef1h:
	ld sp,hl
	ld c,c
	call po,0e147h
	ld a,d
	sub c
	ld c,d
	push bc
	ld a,(de)
	ld c,e
	jr nc,l5f45h
	ld c,a
	cp b
	jp z,0240ch
	ld l,(hl)
	sub 010h
	add hl,bc
	dec bc
	rrca
	or b
	ld (hl),a
	ld a,(de)
	inc b
	ex af,af'
	ld h,c
	ld (de),a
	ld (hl),06eh
	dec a
	dec de
	xor b
	or b
	ld c,e
	inc de
	ld a,(de)
	and l
	ex af,af'
	rrca
	ld b,c
	rrca
	ld a,(bc)
	adc a,(hl)
	pop bc
	sub h
	rrca
	ret
	inc bc
	jp po,00702h
	dec b
	nop
	rlca
	or d
	add a,a
	dec b
	call 0c813h
	ld c,h
	ret
	inc b
	ld l,l
	inc b
	dec b
	nop
	rla
sub_5f39h:
	add a,l
	ld b,005h
	nop
	ld c,031h
	inc bc
	sbc a,a
	ld d,a
	nop
	ld b,016h
l5f45h:
	ld a,(00517h)
	sub a
	ld (de),a
	inc b
	inc c
	ret m
	add hl,de
	ld de,05b05h
	nop
	ld e,000h
	and b
	ld (hl),b
	dec b
	ld (hl),b
	inc bc
sub_5f59h:
	ld d,b
	call nz,0bac8h
	ld (00010h),a
	nop
	rla
	ld bc,00777h
	inc sp
l5f66h:
	inc bc
	ld b,l
	dec d
	inc b
	ld (hl),b
	rlca
	sub h
	ld a,(hl)
	nop
	rrca
	ccf
l5f71h:
	sbc a,065h
	ld (hl),005h
	ld d,h
	sub 00ah
	ld (bc),a
	jr nz,l5f7dh
	ld b,b
	ret nz
l5f7dh:
	cp (hl)
	rra
	ld b,b
	ld d,d
	inc bc
	ld b,d
	ld (bc),a
	dec a
	jr nc,l5f88h
	rst 18h
l5f88h:
	rrca
	inc bc
	ld (08b1fh),hl
	ld d,a
	ld (hl),a
	inc de
	ld e,a
	sbc a,(hl)
	ld h,c
	ld (hl),a
	dec b
	ld l,l
	sbc a,l
l5f97h:
	ld d,l
	sbc a,011h
	ld e,l
	ld a,c
	ld e,a
	sbc a,005h
	ld l,e
	ld (hl),a
	ld d,e
	ld de,05b79h
	rst 20h
	ld e,l
	dec b
	ld a,c
	ld l,c
	ei
	ld e,c
	ld (hl),h
	nop
	rst 38h
	ret nz
	ret nc
	rst 8
	push hl
	adc a,b
	xor h
	and e
	sbc a,h
	in a,(026h)
	ld l,a
	dec a
	out (0c6h),a
l5fbdh:
	inc bc
	rst 30h
	inc bc
	ld b,l
	sub a
	inc bc
	ld sp,00311h
	ld e,003h
	add a,b
	dec hl
	ld (hl),b
	ld b,04eh
	ld c,000h
	ld hl,(02216h)
	ld e,0d5h
	ld a,093h
	jp 03540h
l5fd9h:
	inc c
	inc h
	ld c,024h
	ld d,00fh
	dec c
	ld e,034h
	ld a,083h
	inc c
	nop
	ld e,00eh
	jr nc,l6000h
	ld sp,hl
	ld e,036h
	ld a,072h
	ld a,e
	add hl,de
	inc a
	inc bc
	ld d,0e0h
	ld e,032h
	ld a,08bh
	add hl,de
	sbc a,l
	inc sp
	ld (hl),d
	dec hl
	ld h,048h
l6000h:
	ret
	inc c
	inc sp
l6003h:
	call z,0cd40h
	ld c,l
	inc sp
	and e
	jp z,l733eh
	add hl,de
	sbc a,l
	inc sp
	inc de
	adc a,03eh
	sbc a,e
	call p,0233dh
	adc a,(hl)
	ld sp,01db1h
	ld b,a
	sbc a,b
	ld bc,08071h
	add a,e
	ld (06fadh),a
	xor b
	ret nc
	ld (hl),c
	add a,d
	ld (0e407h),a
	adc a,b
	ld bc,l6fabh
	xor h
	and (hl)
	dec de
	ld l,(hl)
	cp c
	ld bc,0c149h
	ld hl,0c280h
	ld de,084b0h
	jp (hl)
	ret nz
	ld a,(hl)
	or a
	jp z,l706dh
	ld bc,01019h
	ret m
	ret
	call sub_5e8ah
	jr l5fd9h
	ld b,09ah
	cp l
	ex de,hl
	jr nz,l6057h
	djnz l6087h
	rlca
	pop bc
l6057h:
	ret nz
	jp (hl)
	ld a,0ffh
	ret nz
	add hl,hl
	ld a,0c9h
	ld (0b88eh),a
	or 0aah
	ld l,a
	adc a,b
	jr z,l6088h
	ld a,d
	push bc
	adc a,b
	rst 18h
	ld a,c
	inc bc
	and b
	ld (hl),c
	ld b,(hl)
	ret
	pop af
	ld l,l
	ld bc,0fb00h
	dec de
	dec b
	sub 013h
	ld sp,hl
	ld b,0f7h
	jr l6087h
	rst 0
	ld l,097h
	add hl,bc
	ccf
l6085h:
	cp e
	ld l,(hl)
l6087h:
	daa
l6088h:
	dec bc
	pop af
	add hl,bc
	rlca
	rst 8
	rrca
	inc a
	ld b,c
	ld (hl),e
	dec c
	dec bc
	sbc a,h
	add hl,bc
	ld l,l
	inc de
	inc bc
	dec b
	rst 18h
	ld bc,00085h
l609dh:
	rra
	cp l
	dec b
	ld (hl),c
	dec h
sub_60a2h:
	ld b,0e5h
	jr l6085h
	rlca
	ld e,02eh
	ld e,h
l60aah:
	add hl,bc
	di
	ld c,(hl)
	dec bc
	cp l
	ld d,d
	di
	ld l,h
	ld l,(hl)
	push hl
	add a,h
	ld e,051h
	sub b
	rst 8
	dec b
	ld (hl),c
	cp d
	ret z
	nop
	call 00ed8h
	ld a,b
	call 071ddh
	push af
	inc b
	ld (hl),e
	or a
	ret nz
	ex (sp),hl
	and c
	sub 024h
	pop af
	jr nz,$+3
	jp nz,l4ab8h
	ret c
	or 013h
	sub 028h
	ld a,(bc)
	nop
	ld a,(bc)
	sub a
	add a,00ah
	ld a,(010b1h)
	rst 8
	jp 03e25h
	ld c,b
	ld (00694h),a
	ret
	or c
	ret z
	ld a,(l71dbh)
	sub b
	pop de
	di
	ld (hl),c
	cp d
	call pe,0d007h
	or a
	ld (de),a
	ld hl,01506h
	ld a,e
	ld a,000h
l6100h:
	jp z,0a389h
	call c,02011h
	inc bc
	jp nz,l720eh
	ld a,(02c23h)
	ld (hl),e
	rra
	ld h,a
	ld (hl),h
	or 037h
	dec c
	ld bc,008c3h
	ld (hl),h
	ld a,(01020h)
	inc de
	call nz,017ech
	inc hl
	ld b,013h
	or (hl)
	ld b,026h
	ld b,013h
	add a,b
	ld b,029h
	ld b,00ch
	dec hl
	ld (hl),d
	cp h
	ld (de),a
	dec hl
	rlca
	ret z
	add a,h
	inc (hl)
	jr l6169h
	ld b,l
	rst 10h
	sub c
	add a,c
	jr l6145h
	ld (bc),a
	ld (l71d8h),a
	call 073bah
	ld (hl),a
l6145h:
	jr z,l6171h
	ld (hl),e
	ld d,b
	inc bc
	jp nz,l615eh
	ld (hl),d
	rst 8
	dec hl
	ld c,021h
	adc a,d
	ld (hl),e
	xor e
	jp 09921h
	dec b
	ld c,h
	ld a,002h
l615ch:
	ld a,d
	sbc a,(hl)
l615eh:
	jp p,00453h
	jp p,007a9h
sub_6164h:
	jp p,0cdc1h
	ld l,h
	dec b
l6169h:
	adc a,h
	ld a,(de)
	xor b
	ld b,l
	ld (hl),e
	adc a,h
	sub (hl)
	cp d
l6171h:
	jr z,l615ch
	ld d,h
	djnz $+86
	ret
	add a,00ch
	ld d,h
	in a,(027h)
	ld d,h
	inc e
	daa
sub_617fh:
	ld d,h
sub_6180h:
	and a
	ld h,054h
	ld l,h
	ld d,h
	dec c
	ld a,e
	dec b
	ld b,a
	jp 03a12h
	dec h
	dec (hl)
	xor c
	sub 01ch
	dec (hl)
	in a,(024h)
	dec (hl)
	inc e
	inc h
l6197h:
	dec (hl)
	and a
	inc hl
	dec (hl)
	ld c,(hl)
	dec (hl)
	ld c,05dh
	dec (hl)
	call c,03522h
	rst 0
	cp (hl)
	cp e
	ld hl,01c33h
	ld hl,0a733h
	jr nz,$+53
	jr nc,l61e3h
	ld c,03fh
	inc sp
	or c
	sbc a,0dch
	ld a,b
	nop
	ld bc,003a8h
	cp b
	nop
	adc a,h
	nop
	ex af,af'
	ld bc,0ae9dh
	sbc a,d
	ld c,0c8h
	sbc a,l
	ld c,001h
	ld c,030h
	ld l,b
	ld c,0a4h
	nop
	ld (hl),a
	ld a,h
sub_61d1h:
	dec e
	ld c,0abh
	or h
	ld c,01dh
	or a
	ld (hl),b
	dec e
	ld c,09ch
	dec e
	push af
	ld c,0b4h
	ld c,076h
	dec e
l61e3h:
	ld h,b
	rst 0
	ld c,0a1h
	ld e,c
	adc a,(hl)
	ld c,0bch
	or c
	ld e,c
	ld (hl),c
	call nz,00002h
	ld h,(hl)
	ld b,076h
	ld bc,0073ah
	ld (hl),a
	ld bc,0212ch
	ld de,0d0ddh
	jp p,00806h
	ld b,h
sub_6202h:
	ld a,(0becdh)
	dec de
	jp nc,073f8h
	push af
	djnz $-64
	jp c,02b05h
	ld a,(0c4d8h)
	dec c
	ld sp,hl
	dec c
	ld c,0a0h
	dec c
	dec b
	ld a,b
	dec a
	jp nz,003f1h
	ld (hl),e
	ld a,(0c142h)
l6222h:
	cp 002h
	rlca
	daa
	add a,(hl)
	nop
	ld b,h
	pop bc
	scf
	ret
	ld (hl),000h
	ld de,03623h
	push af
l6232h:
	ld b,02bh
	ld a,b
	inc d
	add a,b
	inc b
	ld (hl),h
	ld hl,0c235h
	xor (hl)
	scf
	sbc a,d
	ld (0c9bbh),hl
	jp m,08ba2h
	or 074h
	jp z,08923h
	inc de
	bit 6,h
	add a,c
	ld d,(hl)
	jp c,0d205h
	ld d,0e9h
	ld c,(hl)
	rst 38h
	sub e
	jp z,0163ah
	jp (hl)
	ld d,087h
	ret m
	ld d,034h
	adc a,e
	ld d,d
	sbc a,l
	sub c
	jp z,01651h
	rlca
	ld (hl),l
	ld d,0adh
	ld d,005h
	and (hl)
	ld d,0cdh
	and l
	jp nz,0c81ch
	ld hl,01425h
	add hl,sp
	inc (hl)
	inc d
	sub c
	or 0c9h
	ld a,h
	sbc a,l
	ld e,a
	daa
	add a,h
	ld sp,01c43h
	dec c
	ld d,d
	dec b
	adc a,017h
	ld h,b
	sub e
	sbc a,h
	rla
	ld h,c
	rla
	add a,a
	ld (hl),b
	rla
	ld e,l
	ld h,c
	daa
	or h
	rla
	ld a,a
	rla
	ld c,08eh
	rla
	cp e
	ld h,d
	ld (hl),b
	sbc a,l
	dec d
	xor h
	ex de,hl
	dec d
	ld h,e
	inc b
	dec h
	nop
	inc e
	call m,0ecb9h
	ld c,0fch
	cp c
	ld a,b
	call nc,0972ch
	sbc a,03dh
	ld c,097h
	sbc a,029h
	inc l
	inc a
	sbc a,d
	ld a,07bh
	ld c,09ah
	ld a,04ch
	jr c,l62f1h
	sbc a,a
	call p,00e2dh
	sbc a,a
	call p,0a044h
	call p,0bcfah
	and b
	ld (hl),a
	and 0c7h
	ld c,a
	and b
	sub 0abh
	and b
	ld (hl),a
	call 03b70h
	push bc
	sub d
	add hl,sp
	ld l,a
	dec sp
	ld (hl),a
	add a,e
	ld a,b
	ld c,029h
	call pe,0a0d1h
	ld (hl),a
	rst 20h
	ld (ix+075h),b
	ld b,03fh
l62f1h:
	pop de
	xor c
	call z,03805h
	rra
	dec b
	inc b
	ld bc,03278h
	call nc,08a78h
	and c
	push de
	ld a,b
	call 00439h
	adc a,l
	nop
	jr nz,$+75
	ld b,(hl)
	ld a,(de)
	defb 0edh ;next byte illegal after ed
	dec b
	jr z,$+7
	jp nz,02014h
	ld sp,l76e2h
	jr nz,$-96
	in a,(0a3h)
	xor a
	inc b
	ld a,l
	jp z,074efh
	rst 38h
	nop
	nop
	push hl
	dec b
	cp 0beh
	xor h
	ld (hl),e
	dec b
	inc bc
	sbc a,h
	ld bc,0ff9dh
l632eh:
	ret nc
	sub h
	ld h,0fch
	ld e,d
l6333h:
	inc bc
	ex (sp),hl
	ret po
	ld d,h
	halt
	ld de,0978ah
	res 0,l
	push af
	jp po,0010dh
	push hl
	jp p,0155eh
	jp p,0ed5ah
	inc bc
	cp 064h
	jp c,07693h
	ret pe
	djnz l6354h
	jp z,08122h
l6354h:
	halt
	adc a,h
	ld c,08ah
	halt
	ld c,000h
	jp z,0c352h
	or (hl)
	ex af,af'
	ld b,006h
	ld d,0d4h
	ld e,0d8h
	ex af,af'
	add a,e
	inc c
	ld d,0c8h
	ld e,0ech
	ex af,af'
	jr c,l6395h
l6370h:
	ld h,d
	and a
	dec h
	or b
	inc de
	halt
	ld e,0a4h
	ex de,hl
	inc e
	jr l63a1h
	ld a,(de)
	jr z,l6387h
	ld (de),a
	rst 0
	dec h
	inc d
	call m,00038h
	add a,e
l6387h:
	inc hl
	ld (hl),a
	add a,b
	ld (l7642h),a
	push hl
	cp 08eh
	add hl,bc
	ld (080f4h),a
	adc a,(hl)
l6395h:
	ld b,b
	halt
	add a,b
	jp p,0efe4h
	ld l,d
	ret
	add a,(hl)
	or l
	sbc a,(hl)
	add a,(hl)
l63a1h:
	inc c
	call c,0e675h
	rst 18h
	or c
	add hl,de
	ld (hl),l
	rst 0
l63aah:
	ld a,(de)
	sbc a,h
	jp 089cch
	ex (sp),hl
	ld h,b
	ld (01603h),a
	call z,0d2e4h
	add hl,hl
	nop
	rst 8
	ld b,d
	jp nz,0770ch
	inc b
	sbc a,a
	or h
	jp nz,0c614h
	rlca
	ld h,007h
	ld sp,0071ch
	add hl,hl
	rlca
	adc a,d
	inc h
	rlca
	or (hl)
	ld b,d
	ld l,073h
	xor l
	ret nz
	jp z,07799h
	cp 012h
	inc b
	jp z,0046ch
	inc bc
	inc a
	ld h,l
	cpl
	jr l63f2h
	rst 18h
	jr z,l6423h
	ret
	rst 18h
	ld (hl),l
	cp a
	adc a,b
	add a,062h
	inc d
	ret nz
	ld h,d
	ei
l63f2h:
	ld h,l
	rlca
	inc b
	adc a,(hl)
	xor c
	rlca
	sub (hl)
	inc b
	pop bc
	ld h,(hl)
	rlca
	dec l
	daa
	ret m
	ld h,l
	cpl
	jp l782eh
	jr nc,l6434h
	ld (hl),096h
	ld (hl),a
	nop
	call 00500h
	ld a,005h
	call 0050fh
	sub (hl)
l6414h:
	and h
	ld d,d
	cp 0a4h
	xor c
	ex af,af'
	and h
	ld c,h
	ld c,084h
	rra
	ld (l650bh),a
	sbc a,d
l6423h:
	pop bc
	inc c
	ld h,l
	jp l5cafh+1
	ld b,(hl)
	or h
	call po,0b106h
	pop de
	rst 20h
	ld bc,l76e1h
	inc a
l6434h:
	cp b
	jp nz,038b0h
	dec d
	ld b,e
	halt
	inc e
	dec bc
	rst 28h
	inc l
	dec c
	push bc
	push hl
	ld a,(hl)
	sub h
	add a,d
	ret z
	ld (hl),a
	pop hl
	pop bc
	di
	ld e,b
	ex af,af'
	pop af
	ret
	ld de,00604h
	ld a,(hl)
	ld (0ba13h),a
	ld a,b
	inc hl
	inc b
	cp c
	inc b
	ld b,b
	or a
	ld a,b
	exx
	ld hl,l78b3h
	or h
	sbc a,e
	ld sp,0afd9h
	and l
	nop
	sbc hl,de
	ld d,000h
	ld e,(hl)
	push hl
	nop
	ld hl,l761ch
	add hl,de
	ex de,hl
	pop hl
	push hl
	push de
	jr nc,l648ah
	ld b,02bh
	add a,002h
	inc d
	cp 006h
	jp nz,000b2h
	xor a
	ld (hl),a
	ld e,a
	pop hl
	add hl,de
	ld b,(hl)
	inc hl
l648ah:
	ld (0e14eh),hl
	inc sp
	add a,b
	ld (hl),a
	inc bc
	jr nz,l6414h
	ld (hl),a
	ld l,h
	di
	and 020h
	jp z,01b52h
	ret z
	and h
sub_649dh:
	xor e
	ld c,b
	ld (hl),a
	rst 20h
	xor b
	dec hl
	dec hl
	push hl
	sub c
	inc e
	and 0a8h
	add hl,bc
	xor d
	ld a,b
	ld c,0feh
	add a,(hl)
	djnz $-36
	ld a,(001bah)
	and 0dah
	ld b,d
	ld a,b
	dec d
	ld h,d
	jp z,0230bh
	ld c,001h
	inc bc
l64c0h:
	dec h
	nop
	pop af
	pop bc
	add a,008h
	and 00fh
	ld l,(hl)
	ld b,a
	ld b,l
	jr z,l64eeh
	xor b
	ld hl,0d214h
	ld h,(hl)
	ld hl,0229ch
	ld (hl),h
	inc hl
	ld a,c
	sub h
	call p,0e6e0h
	add a,012h
	ret z
	sbc a,b
	sbc a,l
	ld a,b
	ld (00ed6h),a
l64e5h:
	and h
	ld d,e
	sbc a,l
	rra
	call nz,0b9c7h
	ld b,e
	add a,b
l64eeh:
	add a,00ah
	inc d
	rst 0
	call nz,0c2b5h
	ld b,077h
	add a,004h
	ld hl,0c1a4h
	ld l,d
	ret
	or e
	ret nz
	or b
	inc bc
l6502h:
	ld h,h
	nop
	sbc a,c
	ld bc,0010ch
	nop
	dec hl
	sbc a,b
l650bh:
	sbc a,d
l650ch:
	ld a,e
l650dh:
	ld c,02ah
	sbc a,c
	ld bc,0ea54h
	and h
	xor b
	ld c,(hl)
	cp e
	defb 0ddh,06ch ;ld ixl,ixh
	sub 078h
	sbc a,h
	ret po
	ld c,l
	sub 0e0h
	jp m,l53dch
	inc c
	rst 18h
	ld b,l
	inc bc
	call z,050c2h
	push af
	ld hl,(0acffh)
	ld b,09bh
	sub c
	ld l,e
	sub 014h
	and b
	ld (06e04h),a
	ld c,035h
	nop
	call nz,sub_6faeh
	ld a,(l7080h)
	inc a
	inc b
	cp 00ah
	jp nz,l7909h
	ret c
	sub l
	add hl,bc
	sbc a,c
	dec (hl)
	ex de,hl
	call pe,09b0eh
	ld (hl),b
	add a,0bbh
	and e
	inc b
	jp nz,01932h
	cpl
	ld b,0a1h
	ld h,b
	cpl
	ld a,c
	ld b,03eh
	rst 38h
	ld (l719fh),a
	ld a,(de)
	dec d
	ld e,a
	ld d,0f4h
	ld (de),a
	sbc a,h
	ld (hl),b
	or (hl)
	ld hl,(00d3ah)
	and l
	add a,c
	ld c,b
	ld a,c
	ld a,b
	neg
	ld e,d
	ld b,h
	jp z,05590h
	ld (09203h),a
	sub l
	adc a,a
	ld d,d
	inc bc
	add a,(hl)
	ld (089feh),hl
	ld bc,l7963h
	cp 0ffh
	jp z,079a1h
	ld d,l
	sbc a,(hl)
sub_6592h:
	rst 28h
	sub h
	inc bc
	and e
	and d
	inc a
	and d
	ld b,h
	ld (0fe05h),a
	ld (de),a
	ex af,af'
	jp z,01a92h
	rlca
	ld h,e
	sub l
	jp (hl)
	and a
	dec b
	djnz l65e7h
	ld d,019h
	ld h,0cdh
	ld b,l
	inc bc
	ld l,06bh
	ld d,0c8h
	dec b
	add hl,bc
	xor 020h
	call pe,0f38eh
	ret
	ld d,0bch
	ld h,022h
	jr c,$-52
	ret nc
	dec a
	ld a,(0c008h)
	ld h,0efh
	ld d,h
	ld h,h
	and a
	ret
	ld d,h
	ld e,(hl)
	dec a
	dec bc
	or 030h
	ld c,008h
	jp p,0d2c1h
	and a
	ret nc
	ld (de),a
	push af
	ld h,057h
	add hl,bc
	dec d
	jp z,079fdh
	cp c
	rst 10h
	sbc a,(hl)
	ret po
l65e7h:
	xor d
	ld l,a
	ld de,02c05h
	ld a,e
	ld hl,l7b00h
l65f0h:
	pop de
	nop
	call 00536h
	ld hl,0d8e0h
	call c,00145h
	xor b
	ret
	ld c,h
	ld bc,09804h
	jr nz,l65f0h
	or e
	ei
	ret z
	add a,b
	ld e,d
	nop
	ld de,00cf8h
	inc b
	ld a,d
	ld (0c1f7h),a
	ld a,e
	in a,(051h)
	dec sp
	ld e,07ah
	defb 0edh ;next byte illegal after ed
	ld (de),a
l6619h:
	ld (hl),00dh
	add a,b
	ld b,0c9h
	ld b,01bh
	call sub_7f80h
	dec c
	ld a,(07fd9h)
	or a
	ld e,d
	jp nz,00591h
	and h
	ld e,c
	ex (sp),hl
	add hl,sp
	ld e,d
	ld a,d
	ld h,d
	sub b
	add a,l
l6635h:
	and 0f0h
	ld (bc),a
	ld (07ae8h),a
	ld hl,l7ae2h
	cp h
	ld (hl),b
	ld a,(027e9h)
	ld a,d
	xor 015h
	jp (hl)
	dec c
	ld (hl),l
	ld d,0a7h
	jr l6668h
	ld a,(01f2ah)
	ld a,d
	ld a,a
	inc bc
	sbc a,d
	ld sp,0de3eh
	ld (hl),h
	cpl
	xor a
	call z,03b36h
	adc a,b
	adc a,e
	ld bc,0009ah
	ld (de),a
	ld hl,l7b15h
	ld a,000h
l6668h:
	jp 025deh
	ld (bc),a
	ret
	call pe,0900eh
	ld l,h
	ld d,c
	inc hl
	add a,e
	rst 8
	ld e,h
	xor (hl)
	ret nc
	ld e,(hl)
	ld d,h
	rst 18h
	xor a
	ld e,(hl)
	ld d,b
	jp l7af1h
	and l
	adc a,l
l6683h:
	ld l,d
	djnz l6635h
	jp pe,l52b7h
	xor (hl)
	ld a,c
	ld c,h
	ld a,l
l668dh:
	ld a,e
	ld e,0ech
	xor d
	djnz l6694h
l6693h:
	adc a,c
l6694h:
	ld b,b
	ld bc,00231h
	ld b,c
	inc b
	inc bc
	ld h,c
	inc b
	ld h,e
	dec b
	dec h
	ld a,c
	ld l,e
	ld h,e
	xor a
	jr z,l66e6h
	ld d,h
	ret nz
	jr nz,l6668h
	ld e,000h
	add a,b
	inc c
	ld c,026h
	ld h,0cbh
	jp z,0c810h
	cp h
	cp a
	dec (hl)
	cp a
	cp h
	call po,003eah
	ld (bc),a
l66beh:
	inc b
	inc bc
	inc bc
	inc b
	ld (bc),a
	djnz l668dh
	dec a
	defb 0fdh,03ch,0fdh ;illegal sequence
	dec a
	ld c,080h
	jr nc,l673eh
	ld h,h
	ld h,h
	ld (hl),b
	jr nc,$-29
	ld a,(bc)
	ld bc,0e014h
	ld b,0b8h
	defb 0edh ;next byte illegal after ed
	ld (bc),a
	dec b
	jr c,l66dfh
	add a,b
l66dfh:
	nop
	ld l,h
	nop
	ld bc,l6197h
	and b
l66e6h:
	add a,b
	jr nz,l673ch
	ld c,d
	nop
	nop
	ld bc,0010eh
	ld (bc),a
l66f0h:
	inc l
	ld e,b
	ld b,b
	nop
	nop
	push bc
	ld bc,0c2e0h
	adc a,h
l66fah:
	add a,b
sub_66fbh:
	ccf
	ld b,a
l66fdh:
	dec b
	ld d,004h
	ld b,044h
	add a,h
	ccf
	and b
	adc a,l
	rst 0
	ex (sp),hl
	ld b,b
	ld c,c
l670ah:
	sbc a,h
	inc (hl)
	ld e,e
	ld (bc),a
	ld b,e
	ld b,b
	nop
l6711h:
	sbc a,e
	ld b,b
	ld (de),a
	inc e
	ld h,b
	ret po
	ld b,b
	ld l,h
	ld b,a
	nop
	jr nz,l672eh
	jr $+18
	inc bc
l6720h:
	xor a
	ld b,a
	add a,a
	sub a
	ld h,e
	nop
	add a,b
l6727h:
	jr nc,$+34
	djnz l6733h
	ld b,a
	jr l66fah
l672eh:
	ld hl,0040bh
	dec e
	ld a,(bc)
l6733h:
	ld e,0ebh
	ld b,e
	ld c,b
	xor l
	ret c
	ld de,0346ch
l673ch:
	inc b
	ret p
l673eh:
	jp po,00e01h
	inc c
	inc b
	ex af,af'
	djnz l6775h
	ld a,(bc)
	inc b
	jr l6711h
	and h
	rst 8
	adc a,(hl)
	cp (hl)
	inc a
	nop
	ld d,d
	ld bc,0078dh
	dec de
	ld (hl),02ch
	jr nz,l67b4h
	ccf
	and a
	ld e,0b8h
	ld d,b
	ld e,0b1h
	and h
	or d
	ld hl,l4003h
	pop hl
	ld hl,04918h
	rlca
	jr nz,$+50
	add a,b
l676dh:
	ld b,b
	jr nz,l6720h
	ld a,(bc)
	dec e
	inc b
	ld c,e
	dec bc
l6775h:
	jp nc,00421h
	inc (hl)
	ld l,h
	ret c
	ld h,c
	ld a,b
	ld b,c
	and d
	jr $-85
	ld (de),a
	inc b
	inc c
	ld bc,0e7eeh
	call po,0a11bh
	ld (de),a
	ret nz
	ret nz
	jr z,$-93
	ret po
	jr nz,$+46
	ld (01b36h),hl
	pop hl
	adc a,a
	pop bc
	ld (hl),b
	ld d,b
	cp b
	jr nz,l676dh
	xor 063h
	ld h,019h
	inc c
	inc c
	dec c
	dec b
	nop
	pop hl
	adc a,(hl)
	ld b,h
	add a,e
	ld d,c
	and d
	call po,09208h
	inc a
	ld (de),a
	and c
	rst 20h
	xor h
l67b4h:
	ld b,l
	ld d,h
	and b
	rla
	jr nz,$-115
	inc l
	ld b,b
	ld c,d
	ld de,0a120h
	dec de
	add a,b
	inc l
	ld d,l
	ld c,b
	ld a,0c8h
	ld b,b
	ld (de),a
	ret nz
	xor (hl)
	and d
	ld (00210h),a
	ld h,d
	add hl,bc
	ld b,b
	inc c
	inc bc
	and a
	jp nz,02005h
	sbc a,l
	push bc
	inc h
	call z,01df4h
	ld c,083h
	ld a,(l7daeh)
	or a
	ret z
	xor b
	add hl,sp
	nop
	xor h
	ld a,l
	cp 0c8h
	jp nc,07eaeh
	ld a,(0b044h)
l67f2h:
	ld de,08bc2h
	ld b,0afh
	ld d,l
	ld a,l
	call p,sub_7603h
	xor b
	cpl
	ret p
	inc b
	ret nz
	ld c,053h
	ld a,(hl)
	xor l
	call nz,00460h
	rlca
	call c,0f109h
	djnz $+111
	inc b
l680fh:
	add hl,bc
	jp z,0347ah
	ld a,(hl)
	ret
	inc (hl)
	jr nc,l67f2h
	ret z
	inc (hl)
	rlca
	ld (0b745h),a
	dec b
	add a,b
	ld c,l
	xor l
	ld a,l
	add a,b
	cp (hl)
	xor d
	ld (bc),a
	ld b,h
	ld a,(hl)
	ld hl,0c280h
	ld de,02385h
	ld b,007h
	jp z,01ef0h
	ld a,(hl)
	ret po
	out (0f8h),a
	jp 02581h
	ex de,hl
	ld hl,l7e43h
	ld bc,01d13h
	ldir
	xor e
	rlc d
	xor e
	or l
	djnz $-83
	in a,(0e4h)
	sub b
	ei
	ld a,(hl)
	ld a,0c0h
	pop hl
	ld a,(iy+00ah)
	jp 07eb3h
	dec d
	and b
	add a,h
	in a,(037h)
	inc bc
	or b
	ld c,b
	ld a,(bc)
	jp nz,000e4h
	ld a,06bh
	and b
	inc e
	nop
	inc e
	sbc a,(hl)
	inc c
	ld a,d
	add hl,hl
	call p,0b236h
	jp nc,02ec9h
	djnz l68d5h
	nop
	djnz l68a2h
	ld (0b9cbh),a
	ld l,d
	ld a,e
	inc bc
	sub (hl)
	add a,e
	ld h,b
	inc sp
l6884h:
	exx
	ret
	call pe,0c6cdh
	jp nz,08031h
	adc a,h
	ld de,0c5ffh
	ret po
	and 00eh
	ret po
	ld (l7f01h),a
	cp a
	push hl
	in a,(032h)
	ld b,d
	ld b,(hl)
	ld (bc),a
	ld a,a
	ld hl,0c53ah
l68a2h:
	sub (hl)
	sbc a,d
	ex af,af'
	xor 00dh
	ld a,(02a8ch)
	sub 010h
	cpl
	call po,0c915h
	and b
	sub c
	jp c,0e003h
	inc l
	ld h,(hl)
	ld bc,0209eh
	ld a,00ah
	di
	dec bc
	out (099h),a
	ld a,090h
	inc bc
	adc a,b
	ld b,00ch
	call m,03a69h
	ld b,l
	or h
	xor b
	ld a,(0a534h)
	ld a,a
	sub 0a3h
	inc bc
	rlca
	and (hl)
l68d5h:
	ld a,a
	ld b,000h
	ld hl,l7fa7h
	ld de,07fd7h
	nop
	ld b,030h
	call 07f7ah
	inc hl
	inc de
	djnz $+18
	ld sp,hl
	ld hl,00ed7h
	rlca
	add a,b
	ld b,018h
	djnz $+128
	add a,a
l68f3h:
	nop
	inc hl
	ret p
	jp 02b81h
	ld b,c
	ld c,(hl)
	dec b
	ld (de),a
l68fdh:
	inc de
	ld a,c
	ld (de),a
	dec de
	djnz $-18
	ld hl,0cd18h
	jp (hl)
	ld (bc),a
	inc d
	ld a,(0c398h)
	ld a,003h
	ret nz
	or d
	ld e,e
	dec b
	sub c
	ld (03052h),a
	ld b,050h
	dec (hl)
	xor a
	inc hl
l691bh:
	nop
	djnz l691bh
	ret
	ld a,(de)
	cp (hl)
	ret z
	inc a
	ld (de),a
	ld a,e
	ret
	ld h,b
	ld b,a
	dec de
	ld a,(hl)
	dec a
	or l
	rlca
	jr nz,l6930h
	sub (hl)
l6930h:
	ret nc
	ld (0cdf5h),hl
	inc a
	ld (hl),b
	ld a,a
	jr c,$-53
	cp h
	adc a,l
	sbc a,c
	sub (hl)
	rlca
	add a,0f2h
	rlca
	xor a
	dec hl
	push af
	xor l
	pop bc
	cpl
	add a,031h
	add a,b
	dec hl
	push bc
	adc a,(hl)
	dec b
	ld a,(bc)
	ld bc,01d01h
	nop
	ret
	dec h
	ld d,005h
	rlca
	ld e,b
	ld h,0eeh
	push af
	ld a,(hl)
	nop
	cp b
	ld hl,08056h
	rla
	ld de,l5c7dh
	cp d
	ld d,d
	adc a,e
	call m,sub_56e0h
	rrca
	ld e,(hl)
	ret
	ld hl,01062h
	rlca
	ret
	inc e
	sbc a,e
	ret
	inc e
	ld h,(hl)
	and a
	ld c,h
	ld h,b
	cp b
	ld b,03ch
	ld (0be38h),a
	add hl,hl
	inc a
	jp nz,020b5h
	inc c
	jp l5c89h
	ld de,0f9c0h
	add hl,de
	ld e,(hl)
	ret p
	cp b
	push hl
	ld hl,07c20h
	add a,b
	rlca
l6998h:
	inc hl
	ld d,(hl)
	pop hl
	push de
	nop
	ret
	ld d,d
	add a,c
	call nc,01c81h
	add a,d
	ld h,c
	nop
	add a,d
	dec e
	add a,e
	res 0,e
	ld hl,l7184h
	nop
	add a,h
	push bc
	add a,h
	and 084h
	dec l
	add a,l
	inc bc
	nop
	add a,(hl)
	ld c,d
	add a,a
	ld l,h
	add a,a
	ld a,e
	add a,a
	ld de,00352h
	cpl
	adc a,h
	nop
	jp nz,080afh
	ld a,(0c148h)
l69cbh:
	and 042h
	inc bc
	ld b,l
	jp z,080aeh
	sub l
	ld b,c
	sbc hl,de
	ret
	call m,sub_7fc0h
	jp 090bah
	push af
	ccf
	push hl
	ld a,h
	ld a,(hl)
	and c
l69e3h:
	and b
	rrca
	ld (hl),a
	ld h,000h
	ld l,a
	add a,a
	cp h
	xor 020h
	pop hl
	dec hl
	nop
	add a,(hl)
	ld (hl),a
	dec hl
	ld a,(hl)
	ld (hl),080h
	ld (hl),a
	and l
	ld a,(000ffh)
	sub c
	ld a,h
	defb 0fdh,001h,0d5h ;illegal sequence
	add hl,de
	dec e
	jr nz,l69cbh
	ld bc,01ccbh
	sbc a,e
	ld e,0e3h
	adc a,e
	ld bc,0f1f2h
	dec e
	and l
	xor c
	ld bc,l68f3h
	jr nz,l69e3h
	sbc a,d
	add a,b
	adc a,h
	adc a,h
	or b
	xor 028h
	jp nz,l7300h
	add a,c
	ld a,r
	and 001h
	ld b,024h
	ld (bc),a
	jp z,08169h
	ld b,026h
	ld (hl),b
	inc de
	ld (bc),a
	call 08800h
	dec hl
	jp 0fb12h
	inc l
	dec d
	nop
	rra
	jp nz,08181h
	ld a,(hl)
	and 060h
	jp z,0880ah
	add a,c
	ld de,0a8d2h
	ld b,0b3h
	add a,b
	ret
	inc de
	dec e
	ld h,b
	ld (hl),a
	dec bc
	ld h,e
	ld h,h
	rst 38h
l6a54h:
	inc bc
l6a55h:
	ld (hl),e
	dec b
	inc bc
	adc a,a
	dec b
	ld l,019h
	cp c
	ld de,015efh
	rrca
	rlc h
	adc a,b
	add a,c
	exx
	cp c
	ld bc,007e6h
	ld (hl),a
	jp nz,l5ef1h
	ld c,c
	push bc
	or e
	jr nz,l6af1h
	xor 008h
	inc c
	ld (hl),a
	add hl,de
	and 008h
	ld c,000h
	ld (hl),002h
	dec hl
	ld de,08194h
	call 046b8h
	add a,b
	add a,h
	ld de,0ccb7h
	adc a,a
	nop
	ld a,(0c201h)
	add a,01eh
	cp (hl)
	jp nc,00f11h
	add a,d
	ld a,(hl)
	xor b
	ld (005cah),hl
	dec (hl)
	dec hl
	or c
	inc (hl)
	ret z
	inc (hl)
	inc d
	ld a,(0c152h)
	push af
	jr c,l6aadh
	ld b,a
	ld h,h
	inc a
	ld b,a
	rst 8
l6aadh:
	ld h,c
	jp nz,02236h
	ld e,b
	push af
	cp 002h
	in a,(0c2h)
	dec (hl)
	add a,d
	ld a,0bbh
	ret pe
	ld d,b
	sub 003h
	rra
	ld (hl),a
	ld a,(0fa57h)
	ld d,h
	sub a
	jr z,$+3
	jp c,0824fh
	cp 005h
	ld b,014h
	ld b,083h
	ld b,0f6h
	dec (hl)
	ld c,a
	nop
	add a,b
	cp (hl)
	jp c,0825fh
	ld de,0054ch
	cp h
	ld (hl),046h
	ld b,079h
	dec hl
	ret
	ld b,c
	sra e
	ld b,a
l6ae9h:
	sbc a,d
	inc hl
	sub d
	ld (00290h),hl
	halt
	add a,d
l6af1h:
	ld (hl),00ah
	inc hl
	inc (hl)
	ld c,(hl)
	ld h,h
	ld a,b
	or c
	add a,a
	jp (hl)
	ld d,b
	add a,(hl)
	ld d,b
	call nz,0ac93h
	adc a,a
	ld h,c
	ld a,(hl)
	add a,c
	ld a,(bc)
	dec de
	ld a,(07c4fh)
	adc a,e
	inc a
	pop af
	dec b
	inc bc
	ex (sp),hl
	dec b
	rst 18h
	ld bc,0febbh
	inc bc
	jp nz,l7dcdh
	ld (hl),a
	inc bc
	dec b
	cp a
	ld b,c
	ccf
	ld e,c
	ccf
	rst 10h
	ld l,l
	ld bc,0e503h
	nop
	push de
	rst 10h
	rla
	adc a,e
	ex af,af'
	jp z,08384h
	sbc a,e
	ret nz
	rrca
	jp nz,08364h
	inc c
	ld a,(08319h)
	or a
	ld b,0bch
	add a,088h
	ex af,af'
	ld (00e1ah),a
	inc e
	add a,e
	dec b
	add a,00fh
	ld (0831bh),a
	ret nc
	ld b,b
	adc a,a
	ld l,(hl)
	ld de,l6eafh
	ld h,c
	ld bc,0fdc4h
	ld d,e
	pop hl
	cp h
	inc a
	ld c,e
	ld (0f0a3h),a
	sbc a,c
	add hl,de
	cp a
	add a,e
	ld (0c3a2h),a
	ccf
	ld d,b
	ld (0362dh),a
	rst 38h
	dec hl
	jp 03600h
	ld c,c
	dec b
	add a,(hl)
	ld hl,00814h
	rlca
	jp nz,01482h
	inc h
	inc hl
	sub d
	and d
	or d
	sbc a,e
	inc e
	ld c,c
	jp nz,l6ca2h
	and a
	and d
	rla
	dec l
	ld h,036h
	dec e
	rst 10h
	ld (bc),a
	ld de,08299h
	sub (hl)
sub_6b90h:
	sub b
	ld a,c
	cp 000h
	ld a,(bc)
	jp z,083b6h
	cp 05eh
	jp z,058c4h
	add a,e
	inc de
	dec h
	inc bc
	sub h
	xor (hl)
	dec d
	inc hl
	ld (hl),08bh
	inc h
	dec c
	ld b,033h
	add a,e
	ld b,042h
	ld d,e
	dec a
	cp l
	ld c,b
	ret nz
	jp nz,0fa27h
	add a,e
	pop af
	ld h,l
	out (059h),a
	ccf
l6bbch:
	inc h
	call nc,03a30h
	ld a,(bc)
	jp nz,08ea8h
	ret c
	ld a,(00042h)
	dec b
	ld d,b
	jp c,042f8h
	ld b,078h
	ret c
	inc (hl)
	ret
	dec (hl)
	ld l,052h
	add a,d
	ld h,c
	rst 30h
	call p,004b5h
	jp nz,08210h
	adc a,b
	ld de,008b7h
	jp (hl)
	add a,e
	pop hl
	ld b,(hl)
	adc a,053h
	sub (hl)
	ld h,d
	add a,c
	jp nz,021fch
	ld (0c282h),a
	ld d,l
	adc a,c
	ld b,(hl)
	cp d
	jp po,094cdh
	ld c,l
l6bf9h:
	add a,h
	inc de
	inc hl
	dec (hl)
	inc hl
	exx
	sub e
	sub 064h
	ld c,d
	push hl
	ret nz
	ld b,l
	add a,h
	add hl,de
	inc (hl)
	dec e
	adc a,c
	dec bc
	jp 00762h
	dec (hl)
	rlca
	call z,sub_4968h
	cp d
	xor d
	add a,c
	add a,d
	ld h,c
	add a,h
l6c1ah:
	exx
	ld (hl),h
l6c1ch:
	di
	jp nz,0600ah
	add a,h
	ld a,0dbh
	xor d
	ld b,l
	add a,c
	sub a
	ret p
	cp 022h
	rst 30h
	ret c
	and (hl)
	ld d,c
	nop
	ld c,a
	ex de,hl
	adc a,(hl)
	xor a
	ld b,e
	inc hl
	sbc a,l
	xor b
	push af
	add a,d
	or h
	jp z,0848bh
	sbc a,d
	adc a,b
	add hl,de
	ld e,003h
	adc a,d
	ret z
	or (hl)
	ret nc
	jp z,0afb8h
	ld b,a
	call z,0fe58h
	cp l
	ld (l59a5h),hl
	ld (hl),001h
	jp p,0fef0h
	and b
	ld de,0b2cah
	add a,h
	xor l
	or l
	ld a,a
	ld h,012h
	ld (012ffh),a
	and a
	or h
	jp nz,098c1h
	ld h,b
	rst 38h
	sub d
	or d
	cp a
	jp nc,0e83dh
l6c70h:
	sub d
	call m,0d822h
	add a,h
	call m,0a63bh
	ret nc
	inc c
	sub 002h
	ld e,d
	xor (hl)
	add a,054h
	ld b,a
	ld b,0c0h
	jp nz,08506h
	inc a
	rst 8
	or a
	ld a,l
	ld c,b
	add a,046h
	add hl,bc
	ld (hl),004h
	xor d
l6c91h:
	ld (hl),h
	nop
	sub b
sub_6c94h:
	ret po
	jr l6c1ch
	and d
	inc l
	or (hl)
	inc bc
	or e
	jp nz,08517h
	ld a,0d3h
	ccf
l6ca2h:
	add a,(hl)
	ld a,a
	ccf
	ld e,b
	ld (l44e5h),a
	adc a,d
	call nc,0bb8ch
	ld l,h
	ld (bc),a
	ld b,(hl)
l6cb0h:
	dec h
	ld b,(hl)
	jp nz,0113fh
	inc b
	cp a
	ld a,(0c638h)
	adc a,h
	ld b,c
	ld e,a
l6cbdh:
	add hl,de
	rst 28h
	dec h
	ld h,b
	add a,l
	rst 28h
	call p,sub_5f59h
	add a,l
	rst 28h
	rla
	call pe,0d3c5h
	di
	jr $-86
	ret nz
	add a,h
l6cd1h:
	or b
	ld c,c
	jp c,00279h
	add a,l
	cp 0e4h
	jp c,0858ch
	add a,b
	jp m,03782h
	add a,d
l6ce1h:
	jp c,08589h
	sub 031h
	inc (hl)
	rst 0
	add hl,sp
	ld h,e
	and (hl)
	dec b
l6cech:
	inc b
	ld bc,000f4h
	inc bc
	sbc a,001h
	nop
	sbc a,e
	ld (bc),a
	ld bc,0d300h
	ld bc,07a01h
	nop
	adc a,097h
	xor e
	jp nc,0919ch
	ld (hl),b
	add hl,sp
	rst 38h
	cp 001h
	pop hl
	nop
	defb 0fdh,001h,0cfh ;illegal sequence
	nop
	dec l
	call m,0e901h
	nop
	ei
	ld bc,02baah
	add a,e
	ld de,0d770h
	ld de,08631h
	push de
	call nz,0e4edh
	adc a,057h
sub_6d24h:
	push bc
	adc a,l
	cp b
	cp (hl)
	add a,c
	jp c,08620h
	neg
	call nc,0eca9h
	jr c,l6cech
	rst 0
	dec c
	ld l,00dh
	ld b,023h
	push hl
	jp nz,l5ec0h
	ld hl,08591h
	add hl,de
	ld l,d
	ex de,hl
	jp p,0d54ah
	add a,e
	cp 006h
	jp nz,08647h
	sbc a,b
	ld h,b
	jp z,08650h
	inc de
	ret c
	xor h
	ld c,e
	add a,(hl)
	rrca
	ld a,(de)
	ld b,a
	push hl
	inc hl
	ld hl,0ae09h
	dec c
	jp z,01667h
	ld c,c
	ld h,d
	ld d,04fh
	jp po,l4b4ch
	ld c,(hl)
	ld a,c
	rst 10h
	jr z,l6d78h
sub_6d6eh:
	cp c
	ld l,h
	add a,a
	ld (hl),d
	call 023c0h
	ld a,b
	add a,005h
l6d78h:
	ld b,a
	ld b,c
	ld a,c
	inc bc
	ld d,a
	sla a
	ld e,a
	ld (bc),a
	ld b,b
	ld bc,08283h
	add a,b
	cp 03ch
	ld (de),a
	jp z,086c9h
	ld b,b
	ld e,a
	sub d
	and c
	call z,01986h
	sub 0b4h
	ld l,a
	ld b,003h
	ld b,c
	cp 092h
	jp nc,086bfh
	rst 28h
l6d9fh:
	ld l,c
	xor b
	scf
	ld b,09dh
	jp 0ca7bh
	ld b,006h
	dec sp
	cp 073h
	ld b,0a5h
	add hl,sp
	call po,03a01h
	ld e,a
	pop bc
	call 0f21ch
	push bc
	add a,b
	and b
l6dbah:
	sbc a,e
	sbc a,e
	ld (hl),e
	call po,09300h
	sub e
	cp c
	ld a,(bc)
	inc c
	ld c,(hl)
	sub e
	nop
	ld l,e
	ld a,(bc)
	ld (hl),b
	add hl,bc
	ld h,e
	ld l,e
	ex (sp),hl
	dec bc
	add hl,bc
	ld (hl),c
	ld a,(bc)
	ld l,e
	ld a,(bc)
	push bc
l6dd5h:
	add hl,bc
	ld a,(bc)
	cp c
	nop
	ex af,af'
	sbc a,h
	ld a,(bc)
	inc bc
l6dddh:
	adc a,e
	adc a,e
	ld a,e
	add a,e
	add a,e
	ld a,(bc)
	adc a,e
	add hl,bc
	ld a,(bc)
	ld (hl),e
	dec bc
	add hl,bc
	adc a,h
	nop
	adc a,00ch
	add hl,bc
	cp c
	ld a,(bc)
	ex (sp),hl
	add hl,bc
	dec bc
	ld l,c
	sbc a,h
	xor c
	sbc a,0c0h
	inc b
	ld b,0a3h
	jp c,l6003h
	add a,a
	cp 008h
	ld b,0abh
	ld b,054h
	inc c
	dec c
	and b
	ld h,l
	adc a,c
	inc hl
	ret nz
	ld hl,03682h
	inc e
	jp c,032d0h
	call po,0873dh
	xor a
	adc a,d
l6e18h:
	dec hl
	or l
	dec d
	inc hl
	cp h
	ld (bc),a
	cp (hl)
	jp z,0879ch
	ld (hl),a
	pop af
	ret m
	or c
	rlca
	cp d
	nop
	xor (hl)
	ld a,l
	ld (07db0h),a
	ld de,00816h
	nop
	xor a
	dec e
	sub a
	ld sp,06ca8h
	call c,0ac87h
	dec b
	ld a,l
	ld a,(0c1f3h)
	dec a
	xor b
	jp nc,01bb6h
	jp p,0a7c1h
	sub l
	rlca
	xor a
	djnz $+22
	xor l
	ld a,l
	call 0d151h
	djnz l6ea4h
	ld b,a
	ld a,(01251h)
	sub b
	ret z
	rst 10h
	ld (hl),d
	ld e,e
	ret
	ld d,d
	ld a,(0d944h)
	ld d,(hl)
	call m,0c0b9h
	ld d,b
	jr c,l6e18h
	ld a,l
	rst 8
	defb 0ddh,0a9h,006h ;illegal sequence
	ld bc,012d2h
	adc a,b
	ret
	ex af,af'
	cp e
	ld (bc),a
	ex af,af'
	halt
	inc bc
	ex af,af'
	inc b
	defb 0edh ;next byte illegal after ed
	ex af,af'
	dec b
	ex af,af'
	or c
	ld e,c
	ret z
	jp 0835eh
	rst 0
	jp 04023h
	dec de
	ret
	adc a,c
	ld (bc),a
	dec d
	nop
l6e8fh:
	call c,02863h
	defb 0ddh,095h ;sub ixl
	ld a,(bc)
	and 04ch
	ex (sp),hl
	rrca
	ld l,e
	rrca
	rrca
	ld c,00ah
	rrca
	ld (de),a
	sub e
	inc sp
	ld b,079h
l6ea4h:
	djnz l6eb5h
	djnz $-118
	dec l
	ld b,008h
	rst 38h
	ld de,00ff0h
l6eafh:
	ld hl,02fbbh
	ld b,004h
	ld a,(bc)
l6eb5h:
	inc c
	rrca
	ret po
	xor e
	ld c,a
	ld sp,00206h
	rrca
	inc hl
	in a,(037h)
	and l
	and e
	inc c
	ld a,(bc)
	defb 0fdh,00eh,00fh ;illegal sequence
	add a,(hl)
	rst 10h
	ld (hl),e
	ld hl,(03c6dh)
	rst 38h
	ld c,a
	ld e,0d6h
	rrca
	call sub_4f64h
	ld c,a
	ld (de),a
	ccf
	nop
	ld l,a
	ld d,a
	dec c
	rrca
	add a,h
	xor a
l6ee0h:
	ld l,d
	inc d
	ld sp,00fe8h
	ld h,h
	call c,08304h
	dec sp
	inc h
	inc h
	ld d,0b1h
	ld c,(hl)
	ld bc,0c90fh
	and e
	ld b,l
	ld b,018h
	or c
	rla
	rrca
	ld b,e
	ld (hl),l
	call c,00f38h
	ld c,01ah
	rst 38h
	ld c,a
	add a,b
	dec a
	nop
	add a,d
	ld b,a
	nop
	ld l,(hl)
	sub b
	ld (bc),a
	adc a,h
	ld (bc),a
	ld a,b
	inc bc
l6f0fh:
	ld (hl),b
	nop
	ld a,l
	ld bc,l6c70h
	jp m,08e80h
	ld (l5024h),a
	add a,d
	ld (bc),a
	ld d,b
	ld (bc),a
	ld l,(hl)
	sbc a,h
	ld (bc),a
	inc a
	dec b
	inc h
	ld e,d
	ld (bc),a
	ld h,h
	djnz l6fa2h
	inc bc
	inc d
	ld d,b
	adc a,h
	sub (hl)
	ld d,b
	sub (hl)
	ld (l4610h),a
	cpl
	and c
	nop
	sub (hl)
	ld (de),a
	ld (08c30h),a
	ld (bc),a
	ld b,b
	ld (bc),a
	rst 0
	ex af,af'
	ld (0040bh),a
l6f44h:
	inc a
	ld e,d
	dec bc
	sub (hl)
	dec b
	jr nc,l6fafh
	ld (l7440h),a
	ld (bc),a
	dec b
	adc a,c
	add a,h
	ld (bc),a
	ld a,b
	dec bc
	in a,(078h)
	dec b
	inc h
	ld e,a
	ld h,h
	ld e,a
	ld d,e
	inc b
	jr z,l6ee0h
	ld (hl),l
	sub (hl)
	ld b,b
	add a,a
	ld b,h
	jr nc,l6fcfh
l6f67h:
	cpl
	ld a,b
	nop
	inc a
	jr nc,l6fd6h
	ld e,030h
	add a,h
	ld d,b
	jr nc,l6fa2h
	ld l,(hl)
	adc a,h
	dec bc
	ld de,0be85h
	ld h,028h
	ld bc,01453h
	xor d
l6f7fh:
	inc a
	sub d
	dec b
	ld e,005h
	ld d,b
	dec b
	ld d,d
	adc a,h
	dec b
	ld b,a
	ld l,002h
	pop de
	dec b
	inc d
	ld b,b
	ld a,005h
	inc de
	or h
	ld e,005h
	jr z,l6fa3h
	ld e,b
	cp (hl)
	dec b
	ld a,(bc)
	sub b
	dec bc
	ld b,(hl)
	dec b
	inc b
	ld b,b
l6fa2h:
	inc a
l6fa3h:
	inc bc
	ex af,af'
	ld b,b
	dec l
	ld h,h
	ld b,b
	ld c,e
l6faah:
	cpl
l6fabh:
	inc b
	jr z,$+50
sub_6faeh:
	ld b,c
l6fafh:
	ld a,046h
	inc d
	ld b,(hl)
	jr nc,l7000h
	jr c,l6f7fh
	ld h,d
	dec l
	ld (bc),a
	ld c,b
	jr z,l6fbfh
	ld e,002h
l6fbfh:
	inc d
	ld a,(bc)
	ld (02450h),hl
	rlc b
	djnz l6fd8h
	ld d,b
	nop
	add hl,bc
	ld d,b
	ld a,(de)
	ld d,b
	and h
l6fcfh:
	ex af,af'
	dec bc
	ld a,(bc)
	ld (bc),a
	call m,0146ah
l6fd6h:
	ex af,af'
	nop
l6fd8h:
	ld (bc),a
	ld h,h
	ret p
	dec b
	inc hl
	djnz l6f67h
	ld (bc),a
	jr nz,l701ah
	dec b
	jr $-30
	jr z,l6fcfh
	ld a,b
	dec e
	cp c
	sub c
	call pe,003b9h
	in a,(096h)
	add a,b
	sub (iy+034h)
	add hl,hl
	ld (bc),a
	ld c,0d3h
	ld c,004h
	jp nz,080c8h
	call po,0be62h
l7000h:
	add a,b
	ld h,d
l7002h:
	xor a
	ld bc,0a8e0h
	ld sp,002a0h
	and b
	ld b,(hl)
	and b
	sbc a,e
	inc a
	and b
	adc a,d
	ld b,d
	and b
	adc a,h
	ld l,(hl)
	ld c,c
	ld a,l
	ld (hl),h
	sub c
	ld a,(de)
	add a,h
l701ah:
	ld a,(de)
	ld (0b68fh),hl
	add hl,hl
	add a,b
	ld h,h
	dec b
	or c
	add hl,hl
l7024h:
	dec e
	xor (hl)
	add hl,sp
	dec b
	ld c,c
l7029h:
	ld (01b05h),a
	cp l
	inc d
	ld hl,00832h
	xor d
	ld c,d
	ld b,d
	rst 20h
	sub d
	xor d
	jr c,l703eh
	jr z,l7040h
	ld c,b
	ld l,0deh
l703eh:
	ld e,015h
l7040h:
	ld d,b
	jp nc,00542h
	ld de,034a1h
	dec b
	jr z,l7002h
	dec b
	ld de,0dc38h
	inc h
	dec b
	ld e,h
	ld a,(de)
	inc hl
	dec bc
	ld (de),a
	ld l,(hl)
	inc d
	dec b
	djnz l705fh
l705ah:
	ld c,c
	ld a,(bc)
	add hl,hl
	djnz l7076h
l705fh:
	ld a,(bc)
	dec bc
	cp b
	dec b
	and 0c4h
	dec b
	ld h,h
	dec b
	inc h
	inc bc
	jr nz,l70dah
	dec a
l706dh:
	jr nz,l70e9h
	inc a
	rst 0
	jr z,l70f0h
	and 039h
	inc h
l7076h:
	jr nc,l705ah
	dec b
	call pe,sub_7811h
	sbc a,c
	ld de,01184h
l7080h:
	ex af,af'
	jp z,00520h
	ld e,b
	jr nz,l7092h
	dec b
	djnz l7024h
	dec b
	djnz l7092h
	add a,b
	in a,(005h)
	dec sp
	ld d,b
l7092h:
	ld sp,l7e05h
	dec b
	ld b,b
	ld h,05ah
	rra
	jr nz,$+94
	ld (02004h),a
	ld c,d
	ld h,h
	nop
	jr z,l70a6h
	inc d
	ld d,b
l70a6h:
	ld e,d
	call nc,0230bh
	ret po
	add a,008h
	or 064h
	defb 0edh ;next byte illegal after ed
	ret po
	ld h,l
	nop
	ret c
	ld e,062h
	jr nz,l70bah
	rst 20h
	ld (bc),a
l70bah:
	ld (hl),b
	call pe,0ba05h
	pop hl
	ld c,0bfh
	ld (bc),a
	ld (00bddh),a
	ld b,a
	ld bc,00ed3h
	ret po
	adc a,b
	or h
	jr nz,$-78
	sbc a,c
	ld (0999ch),hl
	ld b,b
	adc a,e
	inc d
	add a,b
	xor l
	sub h
	dec (hl)
	add a,d
l70dah:
	ld (bc),a
	sub l
	ld d,h
	jp c,00241h
	ld h,h
	sub (hl)
	nop
	ld e,d
	adc a,d
	inc h
	rst 30h
	sub e
	add a,d
l70e9h:
	ld c,c
	adc a,d
	add a,044h
l70edh:
	adc a,(hl)
	out (002h),a
l70f0h:
	ld (08005h),a
	ld a,(bc)
	inc e
	jr nc,l70f7h
l70f7h:
	ld de,0e034h
	rst 20h
	and a
	ld e,b
	defb 0cbh,030h ;sli b
	ld bc,02205h
	ld b,b
	dec b
	ld h,040h
	ld a,(bc)
	dec b
	daa
	nop
	dec b
	inc d
	dec b
	jr l711ah
	inc d
	adc a,e
	dec b
	rlca
	ld (01108h),hl
	sub l
	rst 38h
	ex af,af'
	ld (bc),a
l711ah:
	sub c
	rst 28h
	pop bc
	jp nc,0054ch
	ld b,h
	xor d
	ld l,h
	ld (de),a
	inc bc
	jr nz,l71a3h
	call po,0d202h
	ld a,(bc)
	jr nz,l719dh
	inc a
	call pe,0f329h
	ld (de),a
	ret c
	ld e,a
	or 005h
	dec sp
	and 03ch
	dec b
	xor c
	add a,a
	jp m,02008h
	ld e,008h
	inc h
	or h
	jr nc,l7179h
	and (hl)
	and c
	ld (de),a
	inc d
	dec b
	jr c,l70edh
	add a,d
	jr nz,$+72
	ld b,h
	inc d
	ld h,h
	djnz $+72
	cp c
	inc h
	ld d,b
	ld c,028h
l7159h:
	ld (bc),a
	ld b,d
	ld d,d
	jr z,l716fh
	dec bc
	ld b,(hl)
	or (hl)
	inc h
	ld d,b
	or (hl)
	ld b,c
	ccf
	call c,sub_6180h
	ex af,af'
	dec h
	ld b,(hl)
	ex af,af'
	dec (hl)
	add a,d
l716fh:
	add a,c
	ld d,a
	ret z
	jr nc,$-58
	ld a,020h
	ld a,(bc)
l7177h:
	ld a,0ech
l7179h:
	ld a,b
	jr nc,l7177h
	call z,00b05h
	ld l,d
	jp m,01c08h
	ex af,af'
l7184h:
	adc a,d
	cpl
	jr nc,l71b7h
	ex af,af'
	ld b,a
	sub b
	dec b
	jp m,01c05h
l718fh:
	ld b,b
	inc e
	ld c,c
	jr $+94
	ld h,005h
	ld c,005h
	inc h
	ld (01905h),hl
l719ch:
	dec b
l719dh:
	rst 38h
	xor e
l719fh:
	dec b
	and d
	ret pe
	dec hl
l71a3h:
	jr nc,l7159h
	call z,0382ah
	and d
	inc l
	ld (bc),a
l71abh:
	ex af,af'
	ld l,d
	ld d,b
	ex af,af'
	xor d
	out (064h),a
	or h
	ld (bc),a
	ret z
	sub d
	ld (bc),a
l71b7h:
	cp (hl)
	rst 38h
	ld h,d
	dec e
	ret z
	dec e
	ld (0a0dch),hl
	call nc,01e51h
	ex (sp),hl
	ld (bc),a
	call 00b17h
	call nc,0d5e3h
	xor (hl)
	or d
	ld (bc),a
	inc d
	ld de,08494h
	ld c,h
	ret z
	ld (bc),a
	jp nc,0c405h
l71d8h:
	dec e
	ld l,005h
l71dbh:
	ld h,b
	ld sp,0cd50h
	ex af,af'
	or (hl)
	ld de,028a9h
	ex af,af'
	inc a
	dec b
	ld d,032h
	cp 008h
	jr nz,l7232h
	dec bc
	call c,0a1ech
	cpl
	inc d
	ld d,d
	dec bc
	jr z,l718fh
	jr c,l71abh
	adc a,b
	ret m
	jr z,$-102
	pop hl
	ld (01198h),a
	ld h,028h
	ei
	ld (de),a
	call c,0c908h
	ld c,002h
	jp z,09111h
	ld (bc),a
l720eh:
	and 01eh
	dec e
	ld c,h
	ld (bc),a
	call nc,0e117h
	ld de,01128h
	jp nz,00234h
	ld h,l
	jp z,0d311h
	add a,h
	call c,09e32h
	ld c,b
	ld b,(hl)
	sbc a,(hl)
l7227h:
	adc a,b
	inc d
	and b
	inc d
	and b
	call c,0eda8h
	jp nc,0a0fah
l7232h:
	ex af,af'
	ld (bc),a
	ld l,(hl)
	jr z,$-110
	ld d,b
	sub d
	ld (bc),a
	ld b,h
	ld (bc),a
	jr c,l7240h
	ld c,b
	inc l
l7240h:
	ld (bc),a
	jr nz,l7245h
	inc d
	inc d
l7245h:
	inc h
	sub b
	ex af,af'
	ld (bc),a
	call nz,0fc08h
	sub d
	ld (bc),a
	ret p
	ld (bc),a
	call po,sub_6202h
	ret c
	dec b
	ld bc,01205h
	ld h,h
	or b
	ld h,h
	ld (bc),a
	ld b,(hl)
	ld (bc),a
	ld d,d
	jr z,l7263h
	rst 8
	dec bc
l7263h:
	or b
	call pe,0383ch
	ld (bc),a
	inc e
	ld b,c
	ld (bc),a
	jr c,$+52
	ld (bc),a
	ld e,b
	scf
	ld b,a
	ld (bc),a
	ld bc,026b1h
	ld c,l
	ld bc,l7029h
	dec b
	jr z,l72c6h
	inc hl
	ld d,(hl)
l727eh:
	ld e,056h
l7280h:
	ex af,af'
	and d
	ret m
	ld e,c
	call nz,01905h
	dec b
	add hl,de
	ex de,hl
	ld h,d
	ld (bc),a
	ld d,h
	ld d,l
	ld (bc),a
	or l
	ret nc
	rla
	ld (hl),b
	inc bc
	push af
	inc hl
	add a,b
	dec h
	push af
	add a,d
	ret z
	jr c,l7227h
	ld d,l
	call c,08908h
	ld l,008h
	ld (hl),008h
	dec l
	cp 09ah
	inc h
	or h
	adc a,d
	dec bc
	nop
	ld (hl),005h
	dec bc
	ld b,a
	rrca
	rst 10h
	ld l,b
	jp nc,0f2d7h
	ld c,d
	cp (hl)
	ld sp,hl
	ld h,d
	xor b
	dec hl
	ld d,b
	sub (hl)
	ld e,c
	ld b,(hl)
	pop bc
	and l
	jr nc,l731fh
	dec bc
l72c6h:
	xor d
	inc d
	ld (bc),a
	sbc a,h
	sub l
	ld (bc),a
	ld (hl),0d8h
	ld hl,(0ff01h)
	ld e,b
	inc hl
	xor h
	ld e,0a0h
	rst 28h
	ld l,020h
	inc b
	sbc a,(hl)
	rla
	jr nz,l7280h
	inc h
	dec b
	ccf
	inc h
	jr nz,l727eh
	ld (bc),a
	and h
	ex af,af'
	adc a,d
	adc a,d
	ld (bc),a
	sub h
	dec c
	ex af,af'
	add a,b
	inc h
	adc a,h
	add a,b
	ld c,h
	ld a,e
	sub b
	ld de,00e9dh
	add a,b
	ld de,02c1ah
	ld l,0b5h
	di
	dec e
	sub c
l7300h:
	ld c,l
l7301h:
	add a,d
	ld c,l
	adc a,h
	ld h,h
l7305h:
	ld (bc),a
	or a
	rst 28h
	ld e,h
	dec b
	dec bc
	djnz l7385h
	ret z
	dec b
	add hl,de
	ld d,b
	ld (hl),e
	ret po
	ld (bc),a
	ld l,c
	ld e,a
	ld (de),a
	ld d,b
	ld a,l
	add hl,de
	ld (bc),a
	ld b,c
	dec bc
	pop hl
	add hl,hl
l731fh:
	and b
	dec e
	rla
	xor d
	jp m,00002h
	rst 38h
	call m,03470h
	nop
	nop
	nop
l732dh:
	jp l4b93h
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
l733eh:
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
	jr l7372h
	inc e
	ld c,015h
	ld e,020h
	rra
	rla
	ld b,003h
	rrca
	ld c,01ch
	jr l737fh
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
l7372h:
	rlca
	inc c
	djnz l7395h
	ld h,b
	ccf
	jp p,03ffch
	cp 01eh
	cp (hl)
	ret nz
l737fh:
	nop
	ld b,b
	ld (bc),a
	djnz l73c3h
	rra
l7385h:
	ld e,h
	rlca
	ld bc,0381ch
	jr nc,l738ch
l738ch:
	nop
	ld (0f6d8h),hl
	ld (iy+078h),e
	inc b
	ccf
l7395h:
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
	jr c,l73c0h
	ld e,00fh
l73aeh:
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
l73bch:
	call po,05a00h
	rra
l73c0h:
	nop
	rst 38h
	inc bc
l73c3h:
	add hl,bc
	ld a,h
	add hl,bc
	inc bc
	rst 38h
	rra
	or b
	ld h,h
	jr nc,l741dh
	cp b
	nop
	call nc,0d8dah
	djnz l73bch
l73d4h:
	djnz l73aeh
	jp c,0d41ch
	cp b
	ld d,b
	ld c,e
	daa
	inc bc
	jr nz,l741ch
	dec e
	ld a,d
	nop
	ret nc
	nop
	ret pe
	ld d,0e8h
	jr l73d4h
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
	jr l7450h
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
l741ch:
	add a,b
l741dh:
	nop
	rst 0
	rlca
	adc a,a
	ccf
	rst 18h
	nop
	ret m
	jr nz,l7457h
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
l7440h:
	ex af,af'
	pop af
	djnz l7452h
	ld b,b
	ld a,(0ec57h)
	ld a,a
	jp 0f060h
	ret p
	ld h,b
	ld e,(hl)
	rst 20h
l7450h:
	and d
	sub (hl)
l7452h:
	sub l
	add a,(hl)
	jr nc,l7456h
l7456h:
	ld c,l
l7457h:
	and (hl)
	and d
	inc l
	jp 0385ch
	jr l746bh
	nop
	ld c,018h
	jr c,l74c7h
	ld b,b
	inc bc
	inc c
	inc de
	rla
	ld l,02ch
l746bh:
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
	jr nc,l74c2h
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
l749ch:
	nop
	ld h,028h
	ld c,b
	ld d,b
	ld d,b
	ld c,b
	jr z,$+40
	ld l,h
	ld de,03e40h
l74a9h:
	adc a,b
	nop
l74abh:
	ld h,h
	inc d
	ld (de),a
	ld a,(bc)
	ld a,(bc)
	ld (de),a
	inc d
	ld h,h
l74b3h:
	ld h,l
	adc a,b
	ld b,b
	push bc
	dec d
	sbc a,h
	inc c
	jr nz,l751ch
	ret nz
	nop
	nop
	ld h,b
	jr nz,l74c2h
l74c2h:
	inc c
	rlca
	inc bc
	ret nz
	ret po
l74c7h:
	ld d,b
	jr nc,l749ch
	ld b,061h
	inc bc
	nop
	ld b,004h
	ld sp,hl
	djnz l74b3h
	ret nz
	inc bc
	ld b,(hl)
l74d6h:
	inc b
	jp z,0cacah
	xor c
	ld b,b
	call pe,01f6ah
	dec h
	ex de,hl
	ld (l55eah),a
	ld (bc),a
	ex af,af'
	add a,b
	jr nz,l74a9h
	rst 38h
	ld a,b
	ld a,a
	nop
	ld bc,l477ch
	ld b,c
	inc e
	rst 38h
	cp e
	push af
	jr nc,l7544h
	ex af,af'
	ld e,(hl)
	ld b,0ffh
	nop
	ld sp,hl
	rst 38h
	ld (hl),079h
	ccf
	or b
	ld e,a
	ld d,(hl)
	inc b
	cpl
	ld h,010h
	sbc a,h
	ld (hl),b
	djnz $+129
	and h
	ld bc,l6100h
	inc l
	ld b,h
	jr z,l7592h
	ld a,03dh
	ld c,0f9h
	ret p
	nop
	nop
	jp (hl)
l751ch:
	add a,080h
	ret nz
	rst 8
	ld l,a
	ld l,a
	dec bc
	ld (hl),b
	ld a,b
	cp 0fch
	rra
	ccf
	and b
	ld (bc),a
	ld a,039h
	push af
	rra
	sub (hl)
	and h
	ld sp,l443fh
	rst 10h
	sub c
	ret nc
	rrca
	ld a,(hl)
	ld a,d
	ld bc,0863fh
	ret po
	jr nc,l7548h
	ld c,l
	nop
	push af
	cp e
l7544h:
	rst 38h
	inc e
	ld b,c
	ld b,a
l7548h:
	ld a,h
	ld bc,l7f2ah
	ld a,b
	xor a
	nop
	ld (hl),b
	sbc a,h
	djnz l7579h
	cpl
	ld d,(hl)
	ld e,a
	or b
	jr $+65
	ld a,c
	ld (hl),04ah
	ld b,0c0h
	rra
	inc b
	ld a,07eh
	ld b,h
	adc a,c
	or d
	ld h,c
	ld b,(hl)
	sbc a,c
	ld c,h
	rra
	inc b
	call m,sub_78feh
	ld (hl),b
	dec a
	rst 8
	ld bc,080c0h
	add a,0e9h
	nop
	ret p
	ld sp,hl
l7579h:
	djnz l757bh
l757bh:
	ld sp,096a4h
	push af
	add hl,sp
	ld a,002h
	jp m,0043fh
	ld bc,07e7ah
	adc a,096h
	call m,03f7dh
	rla
	cp e
	nop
	ld a,(bc)
	dec d
l7592h:
	ld hl,(l6a55h)
	ld d,l
	ld l,a
	call nc,07f3fh
	ld (de),a
	cp h
	rrca
	ld d,b
	and (hl)
	ld l,a
	sub 03fh
	jr z,$+34
	ld bc,0b808h
	add a,c
	rlca
	ld (03038h),hl
	inc bc
	ccf
	add a,b
	nop
	adc a,(hl)
	ret c
	ret nc
	cpl
	cpl
	ld c,a
	call m,0993fh
	push af
	ld (0233dh),hl
	ld sp,08e94h
	ccf
	add a,b
	ret nz
	xor 058h
	djnz l75f6h
	xor a
	ret m
	ccf
	rra
	dec b
	ccf
	ld b,d
	ld (bc),a
	push de
	ld h,d
	ld de,08138h
	daa
	nop
	ccf
	ld b,b
	ld h,b
sub_75d9h:
	ld l,018h
	sub b
	xor a
	ret p
	ccf
l75dfh:
	cp a
	rst 38h
	ret nz
	or l
	add a,b
	dec b
	jr l7624h
	defb 0edh ;next byte illegal after ed
	defb 0edh ;next byte illegal after ed
	dec a
	and h
	ld d,l
	or e
	jp po,01678h
	ld a,(hl)
	ld a,(hl)
	ld a,b
	sbc a,h
	ret nc
	rlca
l75f6h:
	jr l7579h
	nop
	rra
	pop af
	sbc a,(hl)
	inc a
	jr l7600h
	rrca
l7600h:
	rst 18h
	add hl,de
	sub h
sub_7603h:
	jr c,l760dh
	add a,c
	ld d,b
	and (hl)
l7608h:
	ld d,h
	nop
	call m,01efch
l760dh:
	ld a,0edh
	jp m,034a4h
	ld d,h
	add a,09bh
	dec bc
	ld (bc),a
	rrca
	jr c,l7681h
sub_761ah:
	ld a,(hl)
	ret po
l761ch:
	adc a,(hl)
	call z,086a8h
	ret nz
	ld c,(hl)
	ld l,a
	inc d
l7624h:
	jr l762bh
	djnz l7608h
l7628h:
	or b
	ret m
	xor b
l762bh:
	rst 38h
	and b
	ld h,b
	ld (00904h),a
	ret c
	ret c
	inc c
	inc b
	jp m,0109ch
	ccf
	jr z,$-95
	ccf
	ret z
	pop bc
	dec c
	ld (de),a
	nop
	ccf
l7642h:
	ret z
	defb 0fdh,0deh,0bdh ;illegal sequence
	ld (bc),a
	ld a,l
	ld e,(hl)
	cp (hl)
	ld a,c
	rst 10h
	ex de,hl
	rrca
	pop af
	ccf
	add a,041h
	dec c
	cp c
	and (hl)
	ccf
	ret nc
	xor l
	ld h,e
	ld (bc),a
	ld (bc),a
	dec h
	ld c,l
	sbc a,(hl)
	add hl,hl
	or 082h
	jr c,l7663h
l7663h:
	ld h,c
	ret p
	add hl,sp
	ld hl,(02a35h)
	ld hl,(0b639h)
	jp po,l7c04h
	call nc,02bach
	ld d,b
	inc c
	and b
	ld d,(hl)
	xor d
	and b
	cp (hl)
	inc bc
	jr l7628h
	call nc,0a17ch
	inc d
	ld b,c
l7681h:
	ld h,b
	inc bc
	ld bc,0151fh
	ld bc,l4160h
	and b
	ld (hl),0d5h
	jp nz,0f870h
	jp nz,l5880h
	call m,sub_5854h
	adc a,b
	call m,l70f7h+1
	sub b
	call nc,00507h
	dec sp
	ld b,063h
	ccf
	dec bc
	ld h,e
	ld b,005h
	rlca
	add a,(hl)
	ld e,0a0h
	ccf
	dec h
	and b
	ld h,b
	rst 38h
	ld d,e
	cp l
	ld a,b
	ccf
	xor h
	ld bc,0d70dh
	inc l
	ret po
	defb 0edh ;next byte illegal after ed
	ccf
	ret p
	jp 09424h
	ld h,b
	rrca
	ld e,e
	ld h,l
	djnz l76deh
	ld hl,(03fd5h)
	ld a,(de)
	ld h,l
	ld e,e
	ld e,d
	rrca
	sub e
	nop
	adc a,b
	sub b
	ld c,071h
	inc e
	xor b
	ld d,a
	ld bc,0a8a8h
	inc e
	ld (hl),c
	ld c,090h
	adc a,b
	ld (hl),c
l76deh:
	add a,b
	add a,d
	dec c
l76e1h:
	ld a,(de)
l76e2h:
	dec e
	ld d,l
	add a,c
	jr nz,l773ch
	dec e
	ld a,(de)
	dec c
	add a,d
	ld c,084h
	ld (hl),b
	call po,08034h
	ld c,h
	ld d,h
	jr nz,l7749h
	ld b,026h
	call po,0db70h
	nop
	ld e,064h
	adc a,055h
	add a,l
	dec b
	dec bc
	dec bc
	ld bc,08505h
	ld d,l
	adc a,064h
	ld e,004h
	cp 040h
	ld a,(de)
	ld (hl),e
	adc a,l
	nop
	sub b
	sbc a,(hl)
	set 1,e
	sbc a,(hl)
	sub b
	adc a,l
	ld (hl),e
	ld e,c
	ld a,(de)
	add a,b
	ld (hl),b
	inc bc
	ld a,(de)
	ld a,l
	ld a,(bc)
	adc a,d
	ld (bc),a
	jp po,00260h
	adc a,d
	ld a,(bc)
	ld a,l
	ld c,b
	ld a,(de)
	and e
	add a,b
	add a,b
	ccf
	adc a,(hl)
sub_7730h:
	ld (hl),d
	ld l,b
	ld l,b
	or (hl)
	ld (hl),089h
	inc bc
	ld (hl),b
	adc a,(hl)
	ccf
	add a,b
	cp a
l773ch:
	ld (hl),h
	defb 0ddh,0d1h,09ah ;illegal sequence
	ex af,af'
	di
	di
	ret m
	defb 0fdh,0cdh,00bh ;illegal sequence
	cp d
	cp a
l7749h:
	or e
	ex de,hl
	xor e
	dec de
	rrca
	call c,00f0dh
	ld b,080h
	dec bc
	adc a,h
	or d
	cp h
	xor e
	ex af,af'
	ld h,e
	rst 30h
	cp 063h
	or (iy+00bh)
	inc d
	adc a,h
	or h
	sbc a,b
	jp m,l6f7fh
	or d
	call nz,0d000h
	dec bc
	rra
	ccf
	ccf
	ld e,019h
	ld (bc),a
	inc bc
	ld h,e
	pop de
	ld b,0f8h
	ret m
	ld a,b
	ld sp,0a8bfh
	adc a,h
	ld e,01fh
	xor e
	inc de
	dec a
	call p,07893h
	rst 0
	ld c,d
	xor d
	ld a,(bc)
	ld c,01fh
	ld c,01eh
	ld e,c
	dec bc
	ld h,07fh
	ld (hl),c
	ld (hl),b
	jp m,08edah
	ret po
	adc a,(hl)
	cp 062h
	ld h,h
	or d
	inc h
	ld b,b
	ret
	or h
	rst 38h
	ld e,b
	inc e
	defb 0ddh,07ch ;ld a,ixh
l77a5h:
	inc d
	ld a,h
	scf
	inc bc
	adc a,b
	ld d,a
	ld b,0e1h
l77adh:
	ld h,01ch
	rrca
	jr c,$+8
	dec a
	ld a,(hl)
	add a,(hl)
	inc c
	inc l
	ld a,018h
	ld c,d
	jr c,l77adh
	adc a,b
	inc a
	jr c,$+23
	sbc a,b
	sbc a,h
	ld b,0a5h
	daa
	inc a
	call po,00f74h
	inc e
	ret pe
	sub b
	push hl
	ld h,b
	ret po
	sub e
	and b
	rrca
	add a,c
	ld bc,l7831h
	ld a,c
	add hl,bc
	rst 38h
	di
	ld h,b
	ret z
	ld de,0891eh
	ld b,l
	or (hl)
	sub h
	inc (hl)
	ld (hl),l
	ld a,b
	ld b,(hl)
	ld b,b
	pop bc
	ld b,e
	dec bc
	rra
	ld e,08ch
	cp a
	ld e,b
l77efh:
	ld b,020h
	ld (hl),b
	ld (hl),c
	ld a,a
	daa
	sub d
	ld h,d
	ld (bc),a
	adc a,d
	ld (l52bfh),a
	ld (hl),h
	ld h,(hl)
	ld b,b
	xor h
	ld b,064h
	cp 08eh
	ld c,09ah
	ld l,c
	ld a,(de)
	ld (de),a
	nop
	ld b,06dh
	ld b,b
	ld (hl),0b0h
	ret p
	ld b,b
sub_7811h:
	ret p
	dec c
	ld h,d
	dec l
	dec c
	sbc a,09eh
	ld h,e
	ld bc,0db1bh
	inc b
	ex af,af'
	inc c
	ret p
	ccf
	dec b
	dec l
	add hl,bc
	dec l
	ld l,l
	nop
	or b
	ld c,a
	or b
	cp l
	ld e,c
	dec e
	and h
l782eh:
	add a,b
	ret po
	jp (hl)
l7831h:
	ld e,h
	ld (004d1h),hl
	call c,0007fh
	ld (bc),a
	jr nz,l784ch
	dec l
	dec hl
	dec hl
	ld h,d
	inc l
	cpl
	inc bc
	ld l,e
	ld b,020h
	nop
	ld e,e
	dec hl
	ld c,015h
	sbc a,h
	dec c
l784ch:
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
	adc a,0a2h
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
	add a,a
	rrca
	ex af,af'
	ex af,af'
	rrca
	add hl,bc
	add hl,sp
	ld b,(hl)
	nop
	add a,l
	add hl,bc
	dec hl
	ld bc,l456eh
	and c
	inc (hl)
	ld d,l
	dec (hl)
	nop
	adc a,h
	ld b,h
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
	jr nz,l78ddh
	rra
	sbc a,020h
	ret po
l78b3h:
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
	ld de,l650bh
	ld d,d
	cpl
	dec d
	cpl
	cp e
	ld e,(hl)
	inc d
	dec bc
	adc a,0e7h
	dec b
	ld a,a
	nop
	ld e,019h
	cp l
	ld l,000h
	sbc a,(hl)
	ld l,e
	nop
	out (0c2h),a
	call m,00017h
	xor 03eh
l78ddh:
	add hl,hl
	nop
	rst 20h
	jr nz,l78e2h
l78e2h:
	call c,0d902h
	nop
	or b
	ld b,e
	ld c,00fh
	add hl,bc
	add a,b
	dec c
	inc hl
	inc hl
	dec hl
	ld (de),a
	inc hl
	jr z,l7917h
	push bc
	ld d,l
	ld b,01bh
	ld b,000h
	dec h
	ld bc,0011ah
sub_78feh:
	ld bc,0e200h
	ld b,0d7h
sub_7903h:
	nop
	ld b,d
	nop
	adc a,a
	rra
	cp e
l7909h:
	inc c
	nop
	ld e,(hl)
	ld b,(hl)
	nop
	ld a,(0031fh)
	jp p,0e11fh
	ld h,l
	ld c,h
	nop
l7917h:
	ex (sp),hl
	sbc a,a
	dec a
	ld d,c
	sbc a,h
	sbc a,a
	dec a
	ld a,(hl)
	ret m
	ld a,b
	inc l
	jp po,0490ch
	nop
	ld b,e
	ld b,d
	dec h
	ld (bc),a
	ld b,d
	dec bc
	inc (hl)
	jr l7971h
	inc c
	nop
	push hl
	ld b,l
	add hl,bc
	adc a,l
	ld (hl),a
	rlca
	ld (de),a
	jr nc,$+69
	add a,l
	inc (hl)
	ld c,c
	ld c,e
	call z,00026h
	add hl,sp
	ld b,e
	nop
	scf
	ld h,a
	add hl,bc
	nop
	ld b,a
	add hl,sp
	inc de
	ld e,09ah
	ld l,c
	ld c,c
	pop hl
	ld a,(bc)
	ld (bc),a
	nop
	call pe,0f641h
	nop
	ld a,e
	inc c
	nop
	ld a,e
	rra
	rst 0
	jp z,l5f97h
	ld e,(hl)
	nop
	and b
l7963h:
	jp nc,l4b9bh
l7966h:
	ld a,000h
	nop
	ld (0c308h),a
	ld a,(0ffe8h)
	or 002h
l7971h:
	inc b
	and 0ffh
	and 07fh
	ld (0f308h),a
	inc b
	out (099h),a
	ld a,089h
	ei
	inc b
	ld a,(0e744h)
	rrca
	rst 18h
	ld (0af04h),a
	ld bc,00e32h
	pop bc
	ld hl,(0057ch)
	ld (hl),0b6h
	or d
	ld a,a
	inc b
	djnz l7966h
	ld hl,(00482h)
	xor (hl)
	ld hl,(0d485h)
	inc b
	adc a,b
	inc b
	djnz l79c3h
	ld hl,(0048bh)
	call nc,08e2ah
	add hl,bc
	xor l
	sub c
	add hl,bc
	ld l,e
	sub h
	add hl,bc
	sub a
	add hl,bc
	ld d,b
	sbc a,d
	inc b
	ret z
	ld hl,(0809dh)
	inc b
	jp nc,l79cdh
	ld c,l
	call 08019h
	ld (bc),a
	ld h,e
	dec b
l79c3h:
	call sub_6d6eh
	call 09f49h
	dec b
l79cah:
	and d
	ld (bc),a
	and l
l79cdh:
	ld (bc),a
	nop
	and (hl)
	ld c,h
	call 06c9eh
	call 0124dh
	ld e,c
	call 00baeh
	add hl,sp
	ld (bc),a
	ld b,c
	xor b
	ld (bc),a
	rst 20h
	ld h,a
	call 005abh
	inc b
	ld h,(hl)
	ld e,d
	call 02c88h
	and b
	nop
	ld d,l
	ld a,(0c13dh)
	or a
	jp z,l4c2ah
	ld b,b
	ld a,011h
	rrca
	dec b
	ld a,001h
	ld (00608h),a
	pop bc
	ld a,0feh
	and a
	add a,e
	pop bc
l7a05h:
	ld (0c3a3h),a
	or l
	ld b,d
	ld (00707h),a
	dec bc
	and d
	jp 003cdh
	ld a,(de)
	add a,c
	and (hl)
	halt
	ld e,l
	ld b,l
	and b
	dec hl
	add hl,bc
	ld a,(0c395h)
	ld l,06bh
	ld d,e
	ld a,(de)
	ld d,e
	ld c,l
	add hl,bc
	ret
	sub d
	ld (de),a
	ld d,023h
	ccf
	ld (bc),a
	ld c,c
	ld d,d
	ld (bc),a
	ld c,a
	ld (bc),a
	ld b,e
	ld (bc),a
	ld hl,03f40h
	ld (bc),a
	ld (02642h),a
	nop
	ld a,0c1h
	cp 01eh
	jp c,l4c8fh
	djnz l7a81h
	ld (00b3eh),a
	pop de
	jp l423ch
	ld (03a03h),a
	inc de
	pop bc
	dec c
	add a,e
	inc bc
	inc a
	jp nz,l4bfdh
	dec a
	nop
	xor a
	ret
	ld hl,l4cdah
	ld (0d608h),hl
	ld c,h
	ld hl,005fah
	ret c
	ld c,h
	ld b,b
	ld hl,(l5e08h)
	inc hl
	ld d,(hl)
	inc hl
	ld a,d
	inc c
	or e
	jp z,l4d18h
	inc d
	dec b
	ex de,hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(01215h)
	cp b
	inc e
	ex de,hl
	dec b
l7a81h:
	ld (hl),c
	inc hl
	ld (hl),b
	jp 092b2h
	ld sp,0e096h
	ld d,005h
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
	jp (hl)
	nop
	ld d,l
	pop bc
	ld d,l
	sbc a,(hl)
	ld d,l
	add a,d
	ld d,l
	sub 000h
	ld d,l
	call nz,0d055h
	ld d,l
	ld l,(hl)
	ld e,d
	ld h,(hl)
	nop
	ld d,l
	ld l,c
	ld d,l
	rst 0
	ld d,l
	call 0d355h
	nop
	ld d,l
	defb 0edh ;next byte illegal after ed
	ld d,l
	ld a,d
	ld d,l
	ret
	di
	ld hl,0f9d8h
	ld de,l5076h
	ld c,l
	adc a,b
	nop
	ex af,af'
	ldir
	ld hl,l6998h
	add hl,sp
	nop
	ex af,af'
	ld a,0c3h
l7ae2h:
	ld (00438h),a
	inc de
	ld (0f127h),a
	rst 38h
	adc a,h
	inc de
	sub e
	adc a,e
	add a,b
	rst 18h
	di
l7af1h:
	or 010h
	ld (004b1h),a
	dec c
	add a,b
	inc bc
	adc a,h
	ld (bc),a
	inc bc
	ld c,(hl)
	adc a,a
	and d
	ld b,l
l7b00h:
	xor h
	dec (hl)
	daa
	ld de,0f328h
	add hl,sp
	jr l7b2ch
	and 078h
	rst 28h
	inc hl
	ld (hl),0afh
	ld (02303h),hl
	ei
	ret
	sbc a,(hl)
l7b15h:
	inc h
	ld e,a
	sub a
	ld d,h
	and l
	ld l,c
	ld c,l
	dec b
	or l
	ld c,l
	ld de,00e46h
	adc a,e
	ld d,h
	ld c,09ch
	inc e
l7b27h:
	ld d,l
	ld c,012h
	ret
	push af
l7b2ch:
	rst 18h
	ld (hl),d
	inc l
	in a,(013h)
	sbc a,c
	rrca
	call c,0af1ah
	inc c
	or b
	ld (0c1a0h),a
	rlca
	ld e,h
	call c,sub_6d24h
	ret
	inc bc
	pop af
l7b43h:
	ld hl,(0f018h)
	ld d,b
	inc a
	ld b,00ch
	ld bc,01898h
	rrca
	inc c
	inc a
	inc bc
	rrca
	ld b,003h
	inc c
	ld b,03ch
	dec d
	ld (de),a
	dec c
	inc e
	inc bc
	dec c
	cp c
	inc bc
	dec c
	ld c,(hl)
	nop
	dec c
	dec d
	dec de
	ld e,00ch
	dec c
	dec hl
	dec d
	jr nc,l7b87h
	ld c,b
	dec d
	dec d
	dec c
	ld b,d
	ld hl,(00784h)
	jr nc,l7b94h
	ld b,d
	add hl,bc
	ld b,d
	ld a,(de)
	ld e,036h
	dec l
	ld a,(bc)
	ld (hl),061h
l7b80h:
	ccf
	ld a,(bc)
	add hl,sp
	ld hl,(0e10ah)
	dec d
l7b87h:
	xor l
	ld (hl),009h
	ld a,b
	inc bc
	inc de
	inc sp
	inc bc
	ld (de),a
	ld a,d
	ld d,042h
	ld (bc),a
l7b94h:
	rlca
	sbc a,c
	inc sp
	inc h
	ld bc,08e61h
	rrca
	ex af,af'
	adc a,(hl)
	inc bc
	ld (de),a
	ex af,af'
	exx
	ld b,d
	ld b,009h
	jp 00906h
	jp 0c613h
	cp e
	ld a,(006eah)
	adc a,(hl)
	jr z,l7b43h
	and e
	sbc a,b
	ex af,af'
	ld (de),a
	dec d
	sbc a,b
	and 00dh
	di
	sbc a,b
	dec c
	or b
	daa
	ld hl,(00c1eh)
	ld e,036h
	inc c
	add hl,bc
	rlca
	ld (hl),c
	sub b
	sbc a,(hl)
	djnz $-65
	rlca
	and d
	ccf
	rst 20h
	sbc a,b
	dec de
	jr l7bddh
	ld hl,(008efh)
	ld (de),a
	rst 0
	ld b,l
	rst 20h
	inc h
	dec l
l7bddh:
	inc h
	adc a,l
	jp po,01807h
	or l
	ld l,(hl)
	jr l7c0ah
	jr nz,l7c2fh
	ret nz
	rra
	or (hl)
	ld b,l
	sbc a,c
	ld hl,0a423h
sub_7bf0h:
	xor c
	in a,(006h)
	and (hl)
	add hl,bc
	and (hl)
	inc d
	jr z,l7b80h
	and l
	jr z,l7c04h
	rrca
	inc sp
	dec de
	inc sp
l7c00h:
	ex af,af'
	ld h,003h
	rlca
l7c04h:
	ld e,h
	ld c,h
	rlca
	cp a
	dec de
	rlca
l7c0ah:
	ld a,(bc)
	xor b
	ld l,c
l7c0dh:
	ld c,e
	ld (hl),006h
	rst 28h
	add hl,de
	dec l
	inc a
	ld c,e
	ld bc,018f8h
	halt
	ld bc,l57f9h
	rla
	rst 20h
	ld sp,hl
	ld hl,028fch
	sbc a,(hl)
	inc a
	ld e,c
	ld c,a
	sbc a,e
	ld b,c
	ld e,h
	ld a,(de)
l7c2ah:
	call p,0d70ah
	inc e
	inc a
l7c2fh:
	ld de,01cddh
	push af
	cp h
	dec de
	ld a,(bc)
	ld c,09bh
	dec de
	inc e
	dec e
	sbc a,e
	inc hl
	cp 047h
	rra
l7c40h:
	ld hl,(094bch)
	cp b
	ld c,e
	sbc a,a
	jp 0a80dh
	ld b,0ffh
	or 0e1h
	add hl,bc
	ld (hl),009h
	pop af
	dec a
	inc sp
	inc de
	or 05fh
	sbc a,a
	ld a,(006ffh)
	dec b
	ld (0034bh),a
	nop
	ld b,049h
	inc sp
l7c62h:
	ex af,af'
	ld b,d
	rlca
	ld c,(hl)
	ex af,af'
	cp h
	ld a,(bc)
	ld c,d
	push bc
	ld c,e
	ret nc
	sub (hl)
	ex af,af'
	xor h
	ld b,l
	jp nc,l4873h
	add hl,bc
	pop af
	ld a,c
	daa
	push de
	ld (de),a
	ld sp,l45a9h
	ld c,b
	ccf
	inc h
	or c
	ld d,b
	ccf
	ld c,(hl)
	rlca
	and a
	ld b,d
	ld b,03ah
	ld d,009h
	ld (009f3h),a
	ld (0089ch),a
	rst 28h
	ld (03209h),a
	exx
	pop hl
	daa
	xor a
	inc a
	daa
	inc c
	cp a
	ld a,(0c326h)
	or d
	ld a,c
	or a
	inc a
	ld a,c
	pop de
	sub (hl)
	rra
	ld h,a
	inc e
	and h
	in a,(06ah)
	daa
	cp d
	sub 0d9h
	daa
	and h
	rlca
	jr l7ccah
l7cb6h:
	and h
	cp h
	rst 38h
	adc a,h
	nop
	ld hl,(09fa7h)
	adc a,006h
	jr nc,l7cb6h
	adc a,c
	rst 0
	ld (hl),087h
	sbc a,c
	add hl,bc
	ld h,(hl)
	and a
l7ccah:
	inc c
l7ccbh:
	ld (de),a
l7ccch:
	ld c,b
	ld b,l
	ex af,af'
	ld b,(hl)
	ld c,e
	ld b,04bh
	ld c,(hl)
	rlca
	jr nc,$+59
	and a
	ld d,d
	ld b,l
	djnz l7ce3h
	ld b,l
	cp c
	push hl
	ld c,(hl)
	djnz $+9
	ld c,e
l7ce3h:
	ld c,04eh
	call nc,032b2h
	ld b,038h
	ld b,l
	ccf
	ld sp,01e99h
	dec d
	call 008b9h
	add hl,sp
	ld (hl),e
	djnz l7ccbh
	adc a,b
	ld e,06dh
	ld hl,(04329h)
	add hl,de
	ld h,l
	djnz l7d3ah
	ld c,d
	dec (hl)
	ccf
	ld de,01a3fh
	ld (hl),048h
	ld hl,0cc0dh
	ld h,h
	rrca
	ld (hl),c
	ld hl,(00708h)
	dec de
	dec l
	ld (hl),008h
	add hl,sp
	adc a,h
	ccf
	jr z,l7ccch
	ld c,l
	ld sp,0391eh
	dec sp
	ld c,b
	add hl,bc
	call z,0c7a2h
	rlca
	ld b,d
	rlca
	ld e,c
	ex af,af'
	ex (sp),hl
	inc de
	ld (de),a
	ex af,af'
	jr $+56
	rst 30h
	ld b,l
	add a,d
	ld a,(bc)
	ld l,e
	add hl,bc
	ld (hl),007h
l7d38h:
	add hl,de
	inc sp
l7d3ah:
	ex af,af'
	and a
	ld d,098h
	sbc a,e
	rlca
	rra
	jr c,l7d7fh
	rlca
	adc a,c
	sbc a,c
	ld c,e
	rlca
	jp nz,01912h
	ret c
	rlca
	adc a,(hl)
	or c
	ld h,b
	inc sp
	halt
	cp e
	ex af,af'
	halt
	add a,008h
	ld l,l
	rlca
	scf
	rlca
	xor b
	ld hl,(0ceebh)
	rrca
	ld a,c
	rlca
	call z,0ebd9h
	djnz l7d6fh
	cp (hl)
	ld de,003d4h
	jp nz,009a7h
	add a,e
l7d6fh:
	ld b,0e4h
	cp h
	ld d,a
	nop
	ld e,a
	rst 10h
	dec bc
	call nz,sub_51b9h
	ld b,072h
	ld e,d
	ld b,05dh
l7d7fh:
	jp m,0fd2ch
	xor e
	call nc,0e03ah
	add a,(hl)
	dec c
	cp a
	ld (00de0h),a
	cp l
	add a,c
	defb 0ddh,0bfh,080h ;illegal sequence
	ld d,b
	and 020h
	jp nz,068afh
	ld d,h
	ld b,0cah
	or (hl)
	ld d,h
	inc bc
	ld a,(0c1f1h)
	dec a
	and 00fh
	add hl,de
	djnz l7d38h
	inc bc
	push bc
	ld a,(031f6h)
	rst 38h
	ld b,a
	ld a,(bc)
l7daeh:
	sub a
	ld a,(0a19fh)
	ccf
	add a,b
	and d
	and b
	rst 20h
	rst 38h
	and 0fdh
	add a,00ah
	adc a,b
	ld a,(bc)
	dec (hl)
	pop hl
	ld c,d
	add a,d
	ld e,b
	pop bc
	or 042h
	ld e,b
	ret po
	push de
	inc b
	push hl
	exx
	ex af,af'
l7dcdh:
	push af
	push bc
	dec b
	ld a,(01600h)
	ld l,c
	or a
	call nz,05d29h
	call 00170h
	ld e,d
	pop hl
	pop de
	pop bc
	pop af
	ex af,af'
	exx
	dec b
	adc a,h
	ret
	dec a
	add hl,sp
	or 002h
	dec a
	ld a,b
	xor a
	ld e,c
	ld a,a
l7deeh:
	ei
	sub l
	ld b,0adh
	add hl,de
	ei
	call m,sub_5f39h
	ld e,d
	adc a,(hl)
	and l
	sbc a,0c5h
	ld d,l
	nop
	sbc a,h
	jp 0c2b7h
	ld l,e
l7e03h:
	nop
	ld d,l
l7e05h:
	call 0055dh
	call 00560h
	ld hl,00004h
	halt
	call 00145h
	or e
	ld h,b
	add a,007h
	call 0c040h
	djnz $+119
	dec b
	ld a,(0c39fh)
	rlca
	and 040h
	call nz,00521h
	jp pe,032c0h
	ld d,(hl)
	pop bc
	call 02366h
	ld e,d
	xor a
	ret
	sbc a,b
	add a,b
	pop af
	inc b
	call 0051eh
	xor a
	ld hl,0be1ah
	ld bc,0a4cah
	ld d,l
	ld (hl),a
	call 00313h
l7e43h:
	ld c,l
	and b
	jr nz,l7e76h
	call 068c7h
	nop
	call sub_58e5h
	call sub_56d8h
	call 00446h
	ld d,(hl)
	jr nz,l7e63h
	call 04915h
	jr l7deeh
	ld (bc),a
	ld h,(hl)
	ld (bc),a
	rst 28h
	ld h,(hl)
	ld c,c
	ld l,c
l7e63h:
	dec b
	jr nc,l7e68h
	ld l,a
	ld (bc),a
l7e68h:
	jr nc,$+47
	ld l,a
	ld l,h
	call 03540h
	ld (l561ah),hl
	ei
	call 0910ch
l7e76h:
	inc c
	inc bc
	ld (bc),a
	ld b,005h
	ld c,(hl)
	ld (de),a
	ld (hl),d
	dec b
	or c
	ret
	add a,008h
	inc bc
	and d
	ld (0c1fbh),a
	sub h
	ld d,d
	ret z
	ld b,b
	rlca
	rlca
	ld (000fah),a
	pop bc
	ld de,0c201h
	call 0015eh
	ret nc
	jr nz,l7ed5h
	rst 8
	ld h,d
	ret nz
	ld a,048h
	ld (006a2h),a
	defb 0fdh,000h,0e9h ;illegal sequence
	ei
	and 010h
	jp nz,l5630h
	ld a,(02f32h)
	ld d,(hl)
	ld (de),a
	and d
	jr z,l7ebah
	jp 01951h
	dec b
	nop
	xor a
l7ebah:
	rlca
	ld a,(de)
	inc h
	jp pe,0011ah
	inc de
	jr nz,$+3
	ld (0c143h),a
	ld a,0e0h
	ld (0a9a4h),a
	add hl,hl
	ld (hl),080h
	ret z
	ld a,(0fbe8h)
	bit 4,b
	ld (hl),a
l7ed5h:
	add hl,bc
	jp nz,l565bh
	or b
	dec h
	ld b,b
	ld (00002h),a
	jp nz,004c6h
	ld (0c206h),a
	ld a,(094d0h)
	add a,h
	ld sp,l5674h
	ld b,d
	add hl,bc
	ld l,044h
	adc a,b
	rrca
	adc a,d
	out (014h),a
	adc a,c
	ld a,c
	inc b
	pop bc
	sbc a,c
	adc a,b
	ld (01004h),a
	ld b,032h
	dec c
l7f01h:
	ex af,af'
	jp nz,00c32h
	inc h
	inc c
	and 007h
	jr nz,$+16
	ld a,088h
	sbc a,b
	cp 060h
	inc hl
	jr nz,l7f15h
	add a,e
	add a,c
l7f15h:
	ld a,(0c200h)
	ld (01a48h),hl
	ld bc,00505h
	jp nz,02100h
	dec c
	pop bc
	ld b,(hl)
	ld (hl),016h
	xor a
	call sub_7730h
l7f2ah:
	ld e,b
	ld hl,(0323ch)
	add a,b
	inc bc
	cp 0a4h
	ld b,030h
	call nc,031c6h
l7f37h:
	ld l,h
	ld a,(0d209h)
	adc a,e
	ld d,057h
	jp po,03d61h
	rst 0
	ld b,d
	sbc a,(hl)
	ld l,h
	rlca
	ld h,0a7h
	ret
	ld h,e
	ld h,b
	ld e,e
	and h
	jr c,l7f89h
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
	jp z,l57a0h
	inc hl
	or a
	jp z,00030h
	ld d,a
	cp 004h
	jr z,l7fb8h
	dec a
	call z,0009ah
	ld e,b
	call nz,057d4h
	pop de
	push hl
	ldi
	push hl
sub_7f80h:
	ld bc,004e1h
	xor e
	ld a,(hl)
	push bc
	nop
	inc de
	inc de
l7f89h:
	ld bc,0000dh
	add hl,bc
	ld b,(hl)
	ld a,(0c635h)
	ld (bc),a
	ld a,(0fe04h)
	ld e,0c2h
	pop af
	jp m,0d142h
	ld bc,0120fh
	rla
	ex de,hl
	ld c,008h
	inc bc
	rla
	xor b
	dec hl
	ld a,(hl)
l7fa7h:
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
	pop hl
l7fb8h:
	call sub_586dh
	jp 00a50h
	ld h,(hl)
	ld c,b
sub_7fc0h:
	ld (hl),a
	cp 00ch
	ld bc,01228h
	and 003h
	jr z,l7fceh
	pop hl
	rrca
	adc a,d
	dec hl
l7fceh:
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
	add a,(hl)
	ld (hl),004h
	ld a,0dch
	ret p
	inc hl
	sub a
	rla
	inc hl
	ld de,0423eh
	ld (hl),001h
	inc hl
	ret c
	or h
	ld a,(hl)
	sub b
	ld l,e
	ld (hl),a
	rrca
	jr nc,$+64
	nop
	dec hl
	djnz $+51
	pop hl
	ld a,(00935h)
	defb 0c2h
