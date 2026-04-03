; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank00.asm /tmp/smanbow2_bank.bin

	org 04000h

l4000h:
	ld b,c
	ld b,d
	ld h,h
	ld b,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4010h:
	call 0c0c2h
	ld (0c0c1h),a
	ld hl,00000h
	call 0c0dbh
	ld (0f341h),a
	ld hl,l4000h
	call 0c0dbh
	ld (0f342h),a
	ld hl,08000h
	call 0c0dbh
	ld (0f343h),a
	and 003h
	add a,a
	add a,a
	ld b,a
	ld a,(0f342h)
	and 003h
	or b
	add a,a
	add a,a
l403eh:
	ld b,a
	ld a,(0f341h)
	and 003h
	or b
	ld b,a
	call 00138h
	and 0c0h
	or b
	ld b,a
	ld (0c3f2h),a
	and 0f3h
	ld c,a
	ld a,(0c0c1h)
	and 003h
	add a,a
	add a,a
	or c
	ld (0c3f3h),a
	ld a,b
	and 0cfh
	ld c,a
	ld a,(0c0c1h)
	and 003h
	add a,a
	add a,a
	add a,a
	add a,a
	or c
	ld (0c3f4h),a
	ld a,b
l4070h:
	and 0c3h
	ld c,a
	ld a,(0c0c1h)
	and 003h
	ld b,a
	add a,a
	add a,a
	or b
	add a,a
	add a,a
	or c
	ld (0c3f5h),a
	ld a,(0c0c1h)
	ld h,080h
	call 00024h
	ld a,(0f342h)
	ld h,040h
	call 00024h
	ld a,(0c0c1h)
	ld h,040h
	call 00024h
	ld b,003h
	ld de,0c0b9h
	ld hl,03ffdh
	push hl
l40a3h:
	push bc
	push de
	push hl
	ld a,(de)
	ld e,a
	ld a,(0f341h)
	call 00014h
	pop hl
	pop de
	pop bc
	inc de
	inc hl
	djnz l40a3h
	ld a,(0f341h)
	push af
	pop iy
	pop ix
	ld (0c0bfh),sp
	jp 0001ch
l40c4h:
	ld sp,(0c0bfh)
	ret
	jp 0c0b4h
	nop
	nop
	nop
	nop
	nop
	nop
	call 00138h
	rrca
	rrca
	and 003h
	ld c,a
	ld b,000h
	ld hl,0fcc1h
	add hl,bc
	or (hl)
	ld c,a
	inc hl
	inc hl
	inc hl
	inc hl
	ld a,(hl)
	and 00ch
	or c
	ret
	ld bc,00400h
	ld (0c0bdh),hl
	ld hl,0fcc1h
l40f4h:
	push bc
	push hl
	ld a,(hl)
	bit 7,a
	jr nz,l410fh
	ld a,c
	call 0c111h
l40ffh:
	pop hl
	pop bc
	ld a,(0c0bch)
	ret c
	inc hl
	inc c
	djnz l40f4h
	ld a,0ffh
	ld (0c0bch),a
	ret
l410fh:
	and 080h
	or c
	ld b,004h
l4114h:
	push bc
	call 0c111h
l4118h:
	pop bc
	jr c,l40ffh
	add a,004h
	djnz l4114h
	jr l40ffh
	ld (0c0bch),a
	call 0c137h
	ld b,a
	cpl
	ld c,a
	call 0c145h
	call 0c137h
	cp c
	jr nz,l4142h
	cpl
	call 0c145h
	call 0c137h
	cp b
	jr nz,l4142h
	ld a,(0c0bch)
	scf
	ret
l4142h:
	ld a,(0c0bch)
	or a
	ret
	push bc
	push hl
	ld a,(0c0bch)
	ld hl,(0c0bdh)
	call 0000ch
	pop hl
	pop bc
	ret
	push bc
	push hl
	ld e,a
	ld a,(0c0bch)
	ld hl,(0c0bdh)
	call 00014h
	pop hl
	pop bc
	ret
	ld ix,001f5h
	call 0015fh
	ld (0c1fdh),a
	ld a,(0002dh)
	cp 003h
	jp c,l4179h
	xor a
	out (0a7h),a
l4179h:
	im 1
	ld bc,00154h
	ld de,0c000h
	ld hl,l4010h
	ldir
	call 0c000h
	xor a
	ld (0c3f6h),a
	ld (05000h),a
	inc a
	ld (0c3f7h),a
	ld (07000h),a
	inc a
	ld (0c3f8h),a
	ld (09000h),a
	inc a
	ld (0c3f9h),a
	ld (0b000h),a
	ld bc,003f6h
	ld de,00103h
	ld hl,l41d8h
	ldir
	ld hl,l45ceh
	ld de,00500h
	call 001a0h
	ld hl,l41d2h
	ld (00039h),hl
	ld a,0c3h
	ld (00038h),a
	ld bc,00ed7h
	ld de,0c400h
	ld hl,l6a23h
	ldir
	jp 0c400h
l41d2h:
	push af
	in a,(099h)
	pop af
	ei
	ret
l41d8h:
	ld a,020h
	di
	out (099h),a
	ld a,091h
	ei
	out (099h),a
	ld c,09bh
l41e4h:
	ld a,002h
	di
	out (099h),a
	ld a,08fh
	out (099h),a
	in a,(099h)
	rra
	ld a,000h
	out (099h),a
	ld a,08fh
	ei
	out (099h),a
	jr c,l41e4h
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	ret
	scf
	ld a,h
	rla
	rla
	rla
	and 007h
	di
	out (099h),a
	ld a,08eh
	out (099h),a
	ld a,l
	out (099h),a
	ld a,h
	and 03fh
	or 040h
	out (099h),a
	ret
	ex de,hl
	ld a,(0c1fbh)
	add a,(hl)
	ld e,a
	dec hl
l423ah:
	ld a,(0fff6h)
	add a,(hl)
	add a,009h
	ld d,a
	srl d
	rr e
	ld a,(0c1fah)
	or d
	ld d,a
	ex de,hl
	rlca
	rlca
	and 003h
	di
	out (099h),a
	ld a,08eh
	out (099h),a
	ld a,l
	out (099h),a
	ld a,h
	and 03fh
	out (099h),a
	ei
	in a,(098h)
	and 00fh
	sub 004h
	ret
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc hl
	inc hl
	inc hl
	inc hl
	ld a,080h
	exx
	ld de,00001h
	exx
l4280h:
	call 001f7h
	jr c,l4289h
sub_4285h:
	ldi
	jr l4280h
l4289h:
	ld c,(hl)
	inc hl
	ld b,000h
	bit 7,c
	jr z,l42a1h
	call 001f7h
	call 001f5h
	call 001f5h
	call 001f5h
	jr c,l42a1h
	res 7,c
l42a1h:
	inc bc
	exx
	ld h,d
	ld l,e
	ld b,e
l42a6h:
	exx
	call 001f7h
l42aah:
	exx
	jr nc,l42b7h
	inc b
	jr l42a6h
l42b0h:
	exx
	call 001f7h
	exx
	adc hl,hl
l42b7h:
	djnz l42b0h
	inc hl
	exx
	ret c
	push hl
	exx
	push hl
	exx
	ld h,d
	ld l,e
	sbc hl,bc
	pop bc
	ldir
	pop hl
	jr l4280h
	rl b
	add a,a
	ret nz
	ld a,(hl)
	inc hl
	rla
	ret
	call 00283h
	inc hl
	inc hl
	inc hl
	inc hl
	exx
	ld bc,00080h
	exx
l42deh:
	exx
	call 0025fh
	exx
	jr c,l42ech
	ld c,098h
	outi
	inc de
	jr l42deh
l42ech:
	ld a,(hl)
	inc hl
	or a
	jr z,l4322h
	exx
	ld e,a
	ld d,b
	rlca
	jr nc,l430dh
	call 0025fh
	rl d
	call 0025fh
	rl d
	call 0025fh
	rl d
	call 0025fh
	jr c,l430dh
	res 7,e
l430dh:
	inc de
	call 0026ch
	push hl
	exx
	push hl
	push de
	exx
	ld h,d
	ld l,e
	pop bc
	sbc hl,bc
	pop bc
	call 002a2h
	pop hl
	jr l42deh
l4322h:
	call 0026bh
	ret c
	push hl
	exx
	push hl
	exx
	pop bc
	ld h,d
	ld l,e
	dec hl
	call 002a2h
	pop hl
	jr l42deh
	sla c
	ret nz
	exx
	ld a,(hl)
	inc hl
	exx
	ld c,a
	sla c
	inc c
	ret
	exx
	ld hl,00001h
	ld b,001h
l4346h:
	call 0025fh
	jr nc,l4353h
	inc b
	jr l4346h
l434eh:
	call 0025fh
	adc hl,hl
l4353h:
	djnz l434eh
	inc hl
	exx
	ret
	ld a,d
	rla
	rla
	rla
	and 007h
	out (099h),a
	and 004h
	ld (002a9h),a
	ld (002c2h),a
	ld a,08eh
	out (099h),a
	ld a,e
	out (099h),a
	ld a,d
	and 03fh
	or 040h
	out (099h),a
	ret
l4377h:
	di
l4378h:
	ld a,h
	and 0c0h
	rlca
	rlca
	or 000h
	out (099h),a
	ld a,08eh
	out (099h),a
	ld a,l
	out (099h),a
	ld a,h
	and 03fh
	out (099h),a
	inc hl
	in a,(098h)
	push af
	ld a,d
	and 0c0h
	rlca
	rlca
	or 000h
	out (099h),a
	ld a,08eh
	out (099h),a
	ld a,e
	out (099h),a
	ld a,d
	and 03fh
	or 040h
	out (099h),a
	inc de
	pop af
	out (098h),a
	dec bc
	ld a,c
	or b
	jr nz,l4378h
	ei
	ret
	di
	out (099h),a
	ld a,090h
	out (099h),a
	otir
	ei
	ret
	xor a
	di
	out (099h),a
	ld a,090h
	out (099h),a
	ld bc,0209ah
sub_43c9h:
	otir
	ei
	ret
	in a,(0aah)
	and 0f0h
	ld d,a
	ld c,0a9h
	ld b,00bh
	ld hl,0fbf0h
	ld a,d
	or b
	out (0aah),a
	ind
	jp nz,00304h
	ld a,d
	out (0aah),a
	ind
	ret
	ld a,00fh
	di
	out (0a0h),a
	ld a,08fh
	out (0a1h),a
	ld a,00eh
	out (0a0h),a
	ei
	in a,(0a2h)
	cpl
	and 03fh
	ld c,a
	ld de,004f0h
	in a,(0aah)
	and e
	or 006h
	out (0aah),a
	in a,(0a9h)
	cpl
	and 020h
	rlca
	or c
	ld c,a
	in a,(0aah)
	and e
	or d
	out (0aah),a
	in a,(0a9h)
	cpl
	and d
	ld b,a
	in a,(0aah)
	and e
	or 008h
	out (0aah),a
	in a,(0a9h)
	cpl
sub_4423h:
	and 0f1h
	rlca
	or b
	rla
	rla
	rla
	ld b,a
	rla
	rla
	rla
	and d
l442fh:
	or b
	or c
	ld b,a
	ld hl,0c39ah
	ld a,(hl)
	xor b
	and b
	ld (0c39fh),a
	ld (hl),b
	ret
	ld hl,003f7h
	ld (0f323h),hl
	ld hl,003f9h
	ld (0f325h),hl
	nop
	nop
	nop
	ld a,(003fbh)
	or a
	ld a,000h
l4452h:
	ld (003fbh),a
	ret
	ld c,01ah
	call 003feh
	ld hl,003c5h
	ld de,003c6h
	ld bc,00024h
	ld (hl),b
	ldir
	ld hl,00405h
	ld de,003c6h
	ld bc,0000bh
	ldir
	ld c,00fh
	ld de,003c5h
	call 003feh
	ld hl,00000h
sub_447dh:
	ld (003e6h),hl
	ld (003e8h),hl
	inc hl
	ld (003d3h),hl
	ld hl,(003d5h)
	ld de,003c5h
	ld c,026h
	call 003feh
	ld c,010h
	ld de,003c5h
	jp 003feh
	nop
	ld a,b
	ld a,b
	ld a,b
	ld a,b
	ld a,b
	ld a,b
	ld a,b
	ld a,b
	ld a,b
	ld a,b
	ld a,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld c,000h
	ld a,001h
	ld (003fbh),a
	ld sp,(003fch)
	ret
	ret
	jp pe,0f603h
	inc bc
	nop
	nop
	nop
	ld (003fch),sp
	jp 00005h
	ld d,e
	ld h,c
	halt
	ld h,l
	ld b,h
	ld h,c
	ld (hl),h
	ld h,c
	ld h,h
	ld h,c
	ld (hl),h
	ld hl,003f7h
	ld (0f323h),hl
	ld hl,003f9h
	ld (0f325h),hl
	ld (00434h),de
	call 00436h
	ld de,(00434h)
	ld a,(003fbh)
	or a
	ret z
sub_4501h:
	xor a
	ld (003fbh),a
	jp 0041ch
	ret
	nop
	nop
	ld c,01ah
	call 003feh
	ld hl,0c1dbh
	ld de,00467h
	ld bc,0000bh
	ldir
	ld c,00fh
	ld de,00466h
	call 003feh
	ld hl,00000h
	ld (00487h),hl
	ld (00489h),hl
	inc hl
	ld (00474h),hl
	ld hl,(00476h)
	ld de,00466h
	ld c,027h
	jp 003feh
	nop
	ld b,(hl)
	ld c,c
	ld c,h
	ld b,l
	ld c,(hl)
	ld b,c
	ld c,l
	ld b,l
	ld b,l
	ld e,b
	ld d,h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4555h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,020h
	di
	out (099h),a
	ld a,091h
	ei
	out (099h),a
	ld c,09bh
l456ch:
	in a,(099h)
	rra
	jr c,l456ch
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	ret
	push de
	ld de,0c1dbh
	ld bc,0000bh
	ldir
	pop de
	jp 00410h
	ld de,0c1dbh
	ld bc,0000bh
	ldir
	ld de,0b000h
	call 00410h
	ld hl,0b000h
	ld de,08000h
	jp 001a0h
	push af
	push de
	ld de,l4000h
	call 004bbh
	pop de
	pop af
	ld hl,l4000h
	jp 001fdh
	ret
	nop
l45c6h:
	push bc
	call 0fd9fh
	pop bc
l45cbh:
	djnz l45c6h
	ret
l45ceh:
	rla
	scf
	nop
	nop
	nop
	jp 03a2bh
	jp 005e6h
	jp 00145h
	ld b,0c3h
	ld b,h
	add hl,de
	jp 00e77h
	ex af,af'
	ld c,b
	dec b
	ld d,(hl)
	ld (bc),a
	ld bc,0001ah
	jp 01c73h
l45eeh:
	jp 01d7dh
	jp 01276h
	dec de
	jp 002dch
	dec b
	dec bc
	ld c,c
	ld sp,03902h
	ld (bc),a
	pop hl
	ld (bc),a
	nop
	ld a,e
	ld e,0c3h
	inc d
	jr nz,l45cbh
	dec h
	add a,d
	ld (bc),a
	or b
	inc h
l460dh:
	jp 00275h
	ld c,b
	ld d,h
	ld (bc),a
	inc l
	ld (bc),a
	call pe,02023h
	jp 00286h
	ld e,h
	ld (0f9c3h),hl
	sub d
	rla
	sbc a,c
	ld (bc),a
	ld a,c
	ld (bc),a
	ld b,b
	ld c,e
	ld (bc),a
	cpl
	jr z,l45eeh
	xor a
	ld hl,(0c302h)
	cp a
	dec hl
	jp 03497h
	inc hl
	ld (bc),a
	inc l
	jp 03109h
	jp 008a1h
	ex af,af'
	ld a,d
	ld (hl),0c3h
	push de
	ld (bc),a
	jr nz,l467ch
	inc h
	jp l6222h
	ld h,h
	ld (bc),a
	ld l,b
	sub d
	ld (bc),a
	adc a,b
	ld (bc),a
	jp m,00802h
	jp po,0c332h
	rst 20h
	ld (bc),a
	pop bc
	inc sp
	inc h
	jp 002c6h
	ld (bc),a
	jr nz,l4668h
	add a,c
	ld (bc),a
	rst 10h
	cpl
	jp 030cdh
l4668h:
	add a,b
	ld (de),a
	scf
	ld e,h
	adc a,b
	ld (bc),a
	sub (hl)
	jr c,l46beh
	add hl,sp
	jp l7029h
	add hl,sp
	ld h,l
	ld (bc),a
	sbc a,l
	ld d,b
	inc h
	ld a,l
l467ch:
	ld (bc),a
	ld e,l
	ld (bc),a
	dec a
	sub c
	ld (bc),a
	add hl,sp
	cp h
	ld de,01b81h
	or b
	ld c,c
	dec b
	jp z,0e802h
	ld (bc),a
	nop
	ld h,03bh
	jp 03b4eh
	nop
	add a,b
	nop
	ld b,00fh
	ld (0c107h),a
	xor a
	ld (000a2h),a
	jp 0a33ah
	jp 00832h
	pop bc
	jp 00601h
	ld b,03ah
	ld b,0c1h
	or a
	ret z
	ld de,00548h
	ld a,(0b714h)
	jr nz,l46b9h
	pop hl
l46b9h:
	ld a,(0c104h)
	and 002h
l46beh:
	jp z,08116h
	dec b
	pop bc
	ld b,a
	ld a,(00120h)
	cp b
	ret c
	call 007cfh
	ld a,(03132h)
	ld l,a
	dec bc
	ld (00012h),a
	ld h,000h
	add hl,hl
	ld de,(005d2h)
	nop
	add hl,de
	ld de,00010h
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	dec b
	ld a,b
	cp 0ffh
	jp z,01edfh
	ld (0f608h),a
	inc b
	ld (0ed04h),a
	ld b,e
	nop
	rst 28h
	rlca
	call 007adh
	ld hl,00000h
	ld b,022h
	defb 0edh ;next byte illegal after ed
	rlca
	ld a,003h
	ld de,0c331h
	inc e
	sbc a,h
	ld d,l
	jr nc,$-62
	ld hl,047cbh
	ld (de),a
	ret z
	bit 1,a
	ld (bc),a
	ld d,a
	dec bc
	inc b
	xor 007h
	sub 001h
	ld (0d004h),a
	in a,(058h)
	daa
	add hl,bc
	ex af,af'
	ld hl,(008f1h)
	di
	rlca
	inc b
	and a
	jr z,l4734h
sub_472ah:
	dec a
	ld (0c206h),a
	add a,c
	ld (l7ec3h),a
	ld b,0cdh
l4734h:
	add a,a
	ld (bc),a
	dec bc
	djnz $+9
	ld (l4118h),hl
	nop
	ld a,(hl)
	ld c,a
	and 070h
	ret z
	cp 000h
	djnz l476eh
	add hl,de
	cp 020h
	jp z,006b3h
	ex af,af'
	cp 030h
	jp z,004d1h
	ld b,b
	jr z,l476dh
	ld d,a
	cp 050h
	inc bc
	ld h,b
	and h
	inc bc
	adc a,a
	inc c
	rlca
	ld a,c
	and 00fh
	add hl,sp
	ld l,b
	pop af
	ld l,l
	call p,03c07h
	ld d,b
	and 079h
	dec b
l476dh:
	ex de,hl
l476eh:
	ld hl,000f5h
	rlca
	ld b,a
	add a,a
	add a,b
	ld c,a
	ld b,000h
	add hl,bc
	ld b,b
	ld a,(de)
	dec e
	ld (hl),a
	inc hl
	ld (hl),e
	inc hl
	ld (hl),d
l4781h:
	ld (0c9ebh),a
	dec e
	inc e
	jp p,00819h
	dec (hl)
	jr z,$+8
	inc hl
	push bc
	adc a,l
	ld h,(hl)
	ld l,c
	jr l4805h
	dec a
	ld (hl),0c9h
	ld b,022h
	ld bc,0c908h
	ld hl,(06c03h)
	ld d,e
	sbc a,l
	ld (hl),b
	ret
	inc hl
	ld a,001h
	ret
	jr c,l4804h
	adc a,b
	rst 38h
	cp 0feh
	nop
	jp z,00812h
	ld de,00807h
	ld bc,0a305h
	dec a
	rst 38h
	inc b
	bit 7,(hl)
	jp z,080ceh
	push hl
	ld a,(de)
l47c0h:
	ld l,a
	inc de
	ld a,(de)
	nop
	ld h,a
	dec de
	add hl,bc
	ld b,h
	ld c,l
	pop hl
	bit 6,(hl)
	dec sp
	jp z,00f44h
	jr l4781h
	sbc hl,bc
	ld de,00023h
	ld a,004h
	out (0a0h),a
	ld a,c
	out (0a1h),a
	ld (de),a
	ld (de),a
	inc de
	ld a,005h
	ex af,af'
	ld a,b
	ld d,h
	call nc,0230ah
	inc c
	rlca
	add a,b
	inc c
	in a,(0a2h)
	and 0dbh
	ld c,a
	ld a,(hl)
	ld de,024e6h
	or c
	ld (de),a
	inc hl
	inc hl
	ld (de),a
	inc h
	inc de
	inc d
	ld a,(bc)
	inc d
	ld a,(hl)
	jr nz,l4826h
	ld c,a
l4804h:
	inc hl
l4805h:
	bit 7,c
	jp z,08881h
	adc a,d
	add a,(hl)
	ex de,hl
	inc b
	bit 6,c
	jp z,0078fh
	ld c,047h
	ld (de),a
	ld a,(de)
	sub b
	jp nc,0af07h
	ex af,af'
	ld c,b
	ld (de),a
	cp b
	jp nc,09850h
	ex af,af'
	cpl
	ld c,0a1h
l4826h:
	ld a,043h
	dec bc
	dec hl
	outi
	inc a
	inc b
	ret nz
	ret
	push af
	inc de
	push hl
	push bc
	ld hl,(00198h)
	ld bc,00210h
	add hl,bc
	ld bc,(03086h)
	ld de,0000fh
	inc de
	ld a,b
	or c
	jr z,$-87
	add hl,bc
	dec bc
	jp 0c5beh
l484ch:
	ld d,b
	ex de,hl
	pop bc
	pop hl
	pop af
	adc a,h
	call po,0c300h
	out (0a8h),a
	ld a,022h
	di
l485ah:
	ld (098f8h),a
	ld sp,hl
	nop
	sub b
	ld c,h
	ei
	rrca
	jp p,0000fh
	ret
	ld d,e
	ld b,l
	ld b,l
	inc sp
	ld b,l
	ld b,h
	ld c,c
	ccf
	ld d,h
	nop
	nop
	inc c
	ld ix,00300h
	ex af,af'
	ld e,000h
	inc hl
	ld b,003h
	push bc
	adc a,(hl)
	call m,0c404h
	sub c
	ex af,af'
	pop af
	ld b,b
	call nz,0089dh
	inc hl
	ld a,c
	ld de,0b5cdh
	ex af,af'
	in a,(098h)
	dec b
	pop bc
	ld (0e410h),hl
	jp nz,0cb08h
	ld a,a
	call nz,01987h
	ld (hl),a
	call nz,08b0ch
	ex af,af'
	and 01fh
	inc de
	adc a,b
	ex (sp),hl
	ccf
	or 033h
	add a,b
	inc hl
	ex af,af'
	scf
	inc hl
	rst 18h
	xor l
	rra
	ex af,af'
	ld (hl),c
	call nz,008abh
	dec bc
	ld (ix+046h),a
	nop
	push de
	ex af,af'
	ld l,(hl)
	ex af,af'
	xor a
	ld hl,(023ddh)
	ld (l7bf5h),hl
	sla d
	inc e
	pop af
	rst 18h
	sub e
	ld b,l
	sub 02bh
	ld a,(hl)
	ld (01040h),a
	ld sp,hl
	ret
	add a,(ix+000h)
	add a,b
	inc bc
	sub (hl)
	nop
	neg
	ret
	push hl
	ld (l6eddh),hl
	add a,d
	ex af,af'
	ld h,(hl)
	ld bc,0e509h
	adc a,0bbh
	dec bc
	sub h
	push hl
	exx
	dec c
	and h
	ld b,d
	ld a,(ix-02ch)
	ld (0afd0h),hl
	add hl,hl
	cp h
	ld c,a
	ld b,a
	ld d,l
	ret
	rst 10h
	ld de,0f414h
	rst 28h
	nop
	ex af,af'
	ld a,(0f7f8h)
	or a
	jp z,000f9h
	ex af,af'
	dec a
	jp z,00959h
	sub 003h
	jp z,01626h
	add hl,bc
	ex af,af'
	jr nz,l491eh
	ld sp,0032ah
l491eh:
	dec (hl)
	inc bc
	adc a,h
	ld b,b
	inc bc
	ld h,b
	ld c,(hl)
	inc bc
	ld (hl),b
	add hl,bc
	ld a,060h
	ld h,l
	cpl
	ret
	nop
	ld a,(02600h)
	ret nz
	or a
l4933h:
	jp nz,0096ah
	call 001bfh
	add hl,bc
	jp c,00964h
	ld a,(00a79h)
	adc a,b
	ld h,b
	ld a,d
	ld a,(bc)
	add a,a
	add a,000h
	or b
	dec e
	push af
	inc e
	adc a,h
	ld (hl),e
	ld a,(bc)
	add hl,bc
	ld e,b
	jp z,0cb09h
	ld h,c
	dec bc
	add hl,bc
	cp 001h
	inc d
	xor (hl)
	push hl
	ld a,(bc)
	ld a,(de)
	ld (bc),a
	ld a,(bc)
	xor 074h
	dec bc
	rra
	ld a,(03d04h)
	ret nz
	ld b,a
	jp l5b91h
	ld bc,0888dh
	adc a,a
	dec bc
	jp 00a78h
	inc d
	and h
	ld a,(bc)
	ld h,h
	out (053h),a
	ld a,066h
	dec b
	ld h,d
	xor h
	ld (bc),a
	ld (0cd18h),a
	sub 00bh
	ret
	inc (hl)
	dec b
	adc a,e
	add hl,bc
	cp 02dh
	jp nc,08f04h
	ld h,c
	ld sp,02b18h
	sub e
	dec d
	ret
	ld h,0a8h
	dec bc
	and h
	inc d
	ld d,h
	ld a,097h
	and l
	ld b,b
	inc d
	ld hl,(014a6h)
	ld a,b
	ld (062ach),a
	inc d
	dec hl
	cp c
	dec hl
	jr z,l49b0h
	jp nc,09f04h
l49b0h:
	jp nc,l7b32h
	sub e
	add hl,hl
	ld e,b
	or a
	dec l
	ret nc
	ld (0c3ceh),sp
	rst 10h
	cp c
	ld (0d0cdh),hl
	sub c
	add a,h
	ld a,e
	add hl,bc
	ret
	sbc a,b
	cp l
	ld a,0ffh
	ld b,h
	ld (032cbh),a
	adc a,b
	jp z,0a8dbh
	jr nz,$+52
	ld (hl),a
	jr z,$+1
	rst 38h
	cpl
	ld (l7800h),a
	ld a,(bc)
	ld b,004h
	ld d,000h
	push bc
	call 01400h
	ld a,(bc)
	pop bc
	jp z,00a07h
	ld a,d
	add a,005h
	ld d,b
	ld d,a
	djnz $-12
	ld a,(0961bh)
	ld b,c
	ld a,(02878h)
	ld d,h
	jr nz,l4a61h
	ld d,b
	scf
	ld a,c
	ret
	djnz $+82
	ld e,d
	cpl
	ld c,000h
	call 02608h
	ld a,(bc)
	ret z
	ld a,c
	dec hl
	ld c,a
	djnz l4a55h
	or 090h
	ld de,04d52h
	call m,0b233h
	jr nz,l4a69h
	ld h,008h
	or c
	inc h
	ld a,(bc)
	push de
	ld a,03fh
	rst 18h
	ld b,h
l4a24h:
	ld a,(0fe02h)
	ex af,af'
	ccf
	jp z,00a72h
	rlca
	sbc a,b
	ld e,a
l4a2fh:
	ld d,02fh
	ld d,a
	ld (00805h),a
	inc de
	cp d
	jp nz,02f0fh
	ld a,(bc)
	sub (hl)
	cp e
	ld a,(bc)
	inc b
	pop de
	ld a,d
	and 030h
	sub c
	ld l,h
	ld h,h
	ld a,c
	ret z
	ex af,af'
	sub a
	and (hl)
	cp h
	ld l,l
	pop de
	ld d,b
	jp (hl)
	ld sp,02311h
	ld c,0c3h
l4a55h:
	ld b,03ah
	ld d,b
	ret nz
	ld e,c
	add hl,de
	ld d,c
	ret nz
	ld d,l
	jp l4e11h
l4a61h:
	ret nz
	adc a,e
	inc d
	cp d
	ld h,l
	ld (de),a
	cp d
	inc e
l4a69h:
	ld d,c
	inc d
	rst 18h
	ld b,e
	ld de,l7dcdh
	di
	jr nc,l4ab8h
	ld a,(0f342h)
	cp (hl)
	pop de
	rst 38h
	daa
	ld b,a
	and d
	ld de,08f47h
	sbc a,d
	rst 38h
	inc de
	and 0cfh
	or e
	ld d,e
	ld d,(hl)
	xor a
	ld bc,0c028h
	ret
	call 00aaah
	ret m
	add hl,de
	ret z
	add hl,hl
	or a
l4a94h:
	ld (00443h),hl
	inc bc
	djnz l4acch
	inc sp
	jr $+60
	ld (bc),a
	jp z,l4a24h
	ld b,l
	jp nc,086b2h
	adc a,c
	ret c
	jr $+62
	ld (006f9h),a
	or b
	jp nz,02b24h
	ret nz
	pop af
	inc h
	ld c,b
	ret po
	xor c
	inc l
	ret nz
l4ab8h:
	ld (hl),h
	dec bc
	add a,c
	ld b,a
	ld a,0f7h
	inc c
	ld (0122dh),a
	nop
	ld b,b
	inc d
	ld hl,0146bh
	ld de,0146ch
	ld a,(bc)
l4acch:
	ld bc,00041h
	ld (hl),086h
	add a,b
	or b
	ld hl,0c02eh
	ld de,l552fh
	ret nz
	add a,l
	inc c
	ret nz
	call 00bffh
l4ae0h:
	ret nc
	rrca
	add a,b
	sbc a,b
	ld bc,0c00ah
	dec c
	ld a,01fh
	ld (00c8fh),a
	sbc a,b
	call 00c13h
	call m,094c4h
	inc (hl)
	ld d,a
	inc de
l4af7h:
	add a,c
l4af8h:
	ld de,0347ch
	inc b
	ld (l5252h),a
	ld a,(bc)
	jr c,l4b34h
	ld l,d
	dec b
	ld a,(bc)
	ld h,b
	ld a,(bc)
	add hl,sp
	sbc a,a
	inc d
	ld a,(bc)
	ld c,(hl)
	ld e,e
	ld a,(bc)
	ld b,e
	ld a,(bc)
	and h
	sub c
	ld (de),a
	ld (01469h),hl
	call c,02122h
	jr nc,l4ae0h
	push hl
	sbc a,c
	dec a
	ret nc
	ld b,(hl)
	ld d,0e0h
	ld a,a
	ld de,02868h
	pop af
	djnz l4b47h
	defb 0fdh,03eh,024h ;illegal sequence
l4b2ch:
	add hl,de
	add a,h
	ld de,03e49h
	jr nz,$-112
	add a,l
l4b34h:
	ld d,(hl)
	ld hl,(00d3eh)
	jr c,$-19
	ld c,064h
	ex de,hl
	ld c,e
	add a,l
	ld h,b
	pop hl
	pop bc
	inc hl
	add hl,hl
	djnz l4af7h
	or e
l4b47h:
	ld hl,(0a486h)
	jp c,004b2h
	ld de,096ddh
	add a,d
	ld e,b
	inc sp
	ld d,0bfh
	add a,c
	ld d,(hl)
	ld a,d
	and c
	add a,(hl)
	ld a,002h
	ld a,(de)
	and 017h
	ld b,e
	ld b,a
	cp (hl)
	add a,a
	inc sp
	ld (de),a
	ex de,hl
	add a,(hl)
	dec h
	inc c
	or h
	inc sp
	ret nc
	dec sp
	ld b,d
	inc d
	ret po
	sbc a,b
	adc a,e
	ld (hl),b
	ld a,l
	ld a,(l7ce1h)
	ld a,(l621dh)
	cp a
	scf
	nop
	ret po
	adc a,b
	inc e
	ld (de),a
	pop bc
	adc a,a
	sbc a,e
	ld a,b
	jp nc,0ed85h
	ld d,e
	cp e
	ld b,b
	call z,0fe10h
	inc sp
	jp z,06801h
	inc c
	ld hl,08008h
	call 005a1h
	ld e,0b8h
	add a,h
	dec b
	ld h,000h
	add a,e
	dec b
	ld de,080c3h
	ex af,af'
	jr nc,l4b2ch
	ld c,0a7h
	ret c
	add a,a
	dec b
	or a
	adc a,d
	ld (hl),d
	sub b
	ld l,d
	inc c
	rst 30h
	call c,09fb5h
	adc a,l
	sub (hl)
	jp pe,0daa5h
	ld d,e
	call po,03e03h
	jr $-57
	or e
	pop de
	ld (0bd11h),hl
	pop de
	ld (00cddh),hl
	add a,d
	halt
	ex af,af'
	jp (hl)
	sub (hl)
	cp e
	inc c
	cp d
	ld (hl),d
	jp 0c18bh
	jp z,0043fh
	ldi
	defb 0fdh,001h,0d7h ;illegal sequence
	ret
	ret c
	ld (hl),d
	ld de,0c145h
	xor 003h
	ld e,0feh
	ei
	call po,00d02h
	cp 0fch
	jp z,00441h
	ld b,0fdh
	jp z,00d48h
	ret
	ex de,hl
	pop bc
	call 01945h
	pop af
	ld b,055h
	and (hl)
	defb 0fdh,016h,006h ;illegal sequence
	ld sp,00d04h
	xor a
	ld h,090h
	ld a,(bc)
	cp 0f9h
	jp nc,01e0dh
	dec c
	ld a,(039cfh)
	pop hl
	ld a,0a4h
	inc b
	ld c,0c2h
	push de
	dec c
	ld b,l
	jp po,051ech
	sbc a,c
	ld b,b
	jp (hl)
	ld hl,00493h
	ld h,e
	jp z,004a0h
	dec b
	ld h,h
	jp z,00da7h
	sub 050h
	inc h
	sub d
	dec c
	xor 08ah
	ld sp,hl
	inc b
	rla
	out (0abh),a
	ret
	jp nz,00d32h
	ex af,af'
	ld d,b
	ld (hl),e
	ex af,af'
	ld e,(hl)
	ld h,l
	adc a,059h
	jp z,08fe5h
	ld h,03ah
	out (0ebh),a
	add a,e
	cp b
	dec c
	ld a,026h
	ld (hl),h
	ld a,(0aa72h)
	cp c
	or e
	ld d,d
	cp e
	xor d
	jp c,0d6e2h
l4c5eh:
	cp b
	call po,sub_4285h
	and l
	add hl,hl
	dec d
	jp nc,073e7h
	inc a
	and (hl)
	jp 09aa9h
	rst 10h
	dec b
	xor e
	ld e,a
	ld de,0157dh
	inc bc
	ld bc,00dcah
	ld c,07dh
	djnz l4c9ah
	inc b
	dec b
	jp z,05a25h
	ld c,024h
	add hl,bc
	ld d,020h
	jp z,00431h
	rla
	jp z,00e3dh
	adc a,b
	scf
	cp 0c1h
	xor a
	or d
	ld c,l
	ld b,0f5h
	ld a,l
	dec sp
	ld a,023h
l4c9ah:
	ld l,(hl)
	rst 0
	dec bc
	dec (hl)
	dec bc
	adc a,l
	ld a,h
	in a,(014h)
	sbc a,b
	ld h,h
	and (hl)
	or l
	rst 18h
	add a,l
	ld h,d
	inc bc
	ld l,b
	jp po,l4c5eh
l4cafh:
	ld c,003h
	ld h,h
	inc bc
	add hl,sp
	ld h,l
	ld c,03fh
	ld c,h
	ret
	ld b,01ah
	inc sp
	adc a,h
	inc l
	add hl,bc
	pop bc
	rra
	ex (sp),hl
	ld a,(0b9a7h)
	dec e
l4cc6h:
	call 00e85h
	sbc a,a
	jp z,0193ah
	ld (de),a
	or a
	jr nz,$-68
	and c
	add a,d
	or a
	call nz,0b453h
	ld h,012h
	ld b,01ah
	ld h,00ch
	ret c
	pop bc
	ret p
	inc de
	xor a
	add hl,hl
	inc b
	ld c,d
	ld a,(05e27h)
	rst 20h
	add hl,hl
	add a,008h
	ld h,l
	ld (de),a
	sbc a,l
	push bc
	daa
	sub 0fch
	dec bc
	ld a,(0a5c1h)
	add a,(hl)
	ld (de),a
	ld a,(04284h)
	ld hl,011e5h
	ld a,(04081h)
	inc a
	cp 010h
	jp z,008a5h
	adc a,d
	dec bc
	ld hl,(0b041h)
	ld d,00ch
	out (030h),a
	ld (00206h),hl
	nop
	inc l
	ld hl,0fc80h
	ld (hl),h
	dec b
	and a
	inc b
	ld b,0cah
	rst 30h
	ld c,072h
	add hl,de
	rst 10h
	ld e,b
	dec de
	ld e,01ah
	ld a,(bc)
	add hl,de
	ld a,(040f8h)
	inc (hl)
	inc h
	rrca
	ld a,(hl)
l4d31h:
	ld (0ca42h),a
	ld l,(hl)
	rlca
	add a,(hl)
	or h
	cp 0c2h
	ld d,l
	rra
	rlca
	sub (hl)
	dec de
	bit 1,a
	rla
	sbc a,(hl)
	cp d
	inc hl
	sbc a,b
	dec e
	ld b,e
	dec e
	ld e,h
	nop
	rrca
	cp 01ah
	jp c,00f52h
	jp z,0804ah
	rlca
	jr z,l4d31h
	ld b,d
	rrca
	sub 028h
	call nz,023ebh
	jp 0075ch
	ld hl,0b632h
	inc c
	rlca
	sbc a,(hl)
	add a,l
l4d68h:
	inc sp
l4d69h:
	rlca
	jp 0c6a4h
	xor 051h
	sub b
	add a,083h
	jr nz,l4d95h
	sub l
	inc d
l4d76h:
	ld b,h
	exx
	ld (hl),h
	exx
	ld a,(de)
	sub b
	ld h,b
	ld l,(hl)
	rrca
	or 008h
	jr nz,l4d69h
	ret p
	ld (hl),a
	xor e
	rst 0
	inc a
	call pe,088deh
	ld b,(hl)
	ld de,082d2h
	dec hl
	or h
	djnz $-46
	pop de
l4d94h:
	defb 0edh ;next byte illegal after ed
l4d95h:
	inc c
	call m,086f0h
	rrca
	add a,b
	nop
	ld b,a
	ld a,c
	or (hl)
	ld (hl),a
	inc hl
	ld (hl),b
	inc hl
	inc de
	rra
	exx
l4da6h:
	djnz l4d76h
	add a,h
	inc hl
	jr c,l4d68h
	ld e,b
	ex de,hl
	rst 30h
	adc a,d
	ld bc,0a5c7h
	ld c,a
	dec a
	cp (hl)
	jp 00fefh
	inc de
	call p,0c6abh
	ld h,00fh
	ld (bc),a
l4dc0h:
	rrca
	dec sp
	ld a,00fh
	ld c,h
	ld (0040fh),a
	rrca
	halt
	ccf
	rrca
	inc (hl)
	sbc a,b
	rrca
	ld b,00fh
	ld b,b
	defb 0edh ;next byte illegal after ed
	rrca
	ld (hl),00fh
	ld sp,00f08h
	ld b,c
	rrca
	and d
	jp 01269h
	push bc
	jr nz,$+111
	ld de,061feh
	ld bc,076dah
	ld de,061d6h
	add a,a
	exx
	sub l
	ret nz
	ld e,a
	ld hl,00009h
	djnz l4e0eh
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
	exx
	ret
	nop
	ld e,l
	ld de,01025h
	call nc,0eb10h
	djnz l4e05h
l4e05h:
	xor d
	djnz l4dc0h
	djnz l4d94h
	djnz l4da6h
	djnz l4e0eh
l4e0eh:
	ei
	djnz l4e18h
l4e11h:
	ld de,01117h
	jr nz,l4e27h
	nop
	ccf
l4e18h:
	ld de,0114dh
	inc de
	ld a,c
	cp 008h
	add hl,de
	ret z
	sra c
l4e23h:
	cp b
	add a,a
	add hl,bc
	exx
l4e27h:
	add a,e
	ld l,b
	ld l,a
	ld h,000h
	cp h
	ld sp,hl
	ld h,(hl)
	add hl,de
	add a,c
	ld b,h
	exx
	cp (hl)
	nop
	ret z
	cp 0cfh
	ret nc
	ld (hl),a
	inc a
	exx
	ld b,a
	rst 8
	cp a
	xor b
	call 05efdh
	inc de
	ret nz
	rst 10h
	ex af,af'
	ret nz
	jr c,l4eb3h
	inc c
	cp d
	cp h
	jp nz,0e27dh
	add a,b
	sbc a,h
	sbc a,(hl)
	ex af,af'
	add hl,bc
	ld (hl),b
	ld hl,0048ah
	ld (hl),003h
	rrca
	inc de
	ld a,(de)
	inc hl
	ld (hl),a
	rrca
	daa
	ld (bc),a
	rrca
	dec l
	adc a,d
	rrca
l4e67h:
	ld h,b
	add a,b
	rrca
	rlca
	jp 078c3h
	djnz l4e7dh
l4e70h:
	sub d
	ld b,023h
	jp nc,00ec1h
	rst 38h
	dec h
	ld h,b
	add a,0d2h
	ld e,0cdh
l4e7dh:
	djnz l4ef0h
	add hl,hl
	ld b,l
	inc bc
	inc hl
	inc d
	jp p,0e811h
	djnz l4ec6h
	inc a
	dec hl
	ld b,b
	ld sp,hl
	ld d,b
	adc a,h
	ret nc
	ld d,c
	ld b,e
	inc c
	ld a,(bc)
	or 080h
	dec bc
	jp po,04ee6h
	ld a,a
	sub d
	ld h,h
	rrca
	or a
	rst 20h
	or (hl)
	pop bc
	jr nc,l4e67h
	ld h,011h
	ex af,af'
	jp nz,0b520h
	ld a,c
	ret
	ld e,0abh
	and 0f3h
	xor c
	xor e
	ex de,hl
l4eb3h:
	scf
	ld e,h
	sbc a,a
	scf
	ld c,l
	call c,09e64h
	dec c
	inc sp
	ret c
	or c
	rrca
	xor a
	ld (hl),a
	ld h,(hl)
	ld b,a
	add a,080h
l4ec6h:
	ld (hl),b
	inc de
	ret
	ret nc
	add hl,de
	ret z
	ld (ix+000h),a
	ld bc,008c9h
	ld a,c
	sra a
	exx
	ld c,a
	xor b
	ld (hl),074h
	ret nc
	call c,025e4h
	ld de,019d9h
	exx
	sbc a,e
	dec b
	jp nz,l6e9ah+1
	dec l
	dec e
	sla c
	cpl
	inc sp
	exx
	dec l
	inc l
l4ef0h:
	dec e
	ex af,af'
	push hl
	ld d,b
	rst 18h
	add a,b
	sbc a,h
	or h
	nop
	xor a
	ld de,0603eh
	or a
	ret z
	exx
	dec a
	ld a,(bc)
	add a,a
	ld c,a
	ld hl,01eadh
	or l
	ld (hl),b
	ld l,e
l4f0ah:
	ld h,d
	ld l,l
	ld c,099h
	inc a
	ld bc,080feh
	jp z,011dch
	dec b
	cp c
	djnz l4f48h
	inc a
	ld c,a
	pop bc
	dec c
	bit 7,a
	jp nz,l460dh
	call nz,sub_4f80h
	inc b
	add hl,bc
	push hl
	exx
	pop bc
	ld (hl),c
	adc a,h
sub_4f2ch:
	and h
	dec hl
	nop
	xor a
	sbc a,c
	dec bc
	ld a,(09d48h)
	ld b,b
	ld hl,03a12h
	dec hl
	adc a,h
	ret z
	ld (bc),a
	ld a,(0804eh)
	cp b
	jp nz,0cb01h
	sub 014h
	xor h
	dec de
l4f48h:
	and (hl)
	ld h,d
	ld a,b
	cp d
	ld (bc),a
	ld hl,08051h
	ld e,a
	ld d,0beh
	ld l,(hl)
	add a,a
	rst 0
	nop
	or c
	ld c,c
	ret nz
	rst 0
	in a,(0b5h)
	ld b,c
	jp 00ee8h
	xor l
	jp pe,0243ah
	ld c,a
	add a,b
	push bc
	ld l,l
	ld e,e
	cpl
	ld b,a
	cp h
	jp pe,0f810h
	inc sp
	ld e,0b4h
	inc sp
	add a,b
	call 00bcbh
	jp l7c97h
	inc de
	ret c
	add a,b
	ld h,d
	dec a
sub_4f80h:
	inc h
	jp 0e989h
	ld b,040h
	adc a,c
	ld l,e
l4f88h:
	sbc a,(hl)
	jp (hl)
	adc a,e
	ld h,b
	xor a
	ld c,(hl)
	inc hl
	ld h,h
	cp (hl)
	ret m
	ld (de),a
	ld c,b
	dec (hl)
	add a,c
	ld l,a
	ret nz
	ld b,0cbh
	ld h,a
	jp z,04595h
	ld (de),a
	and 0b9h
	ld de,0811ah
	sub b
	ld h,c
	jp c,l6291h
	rlca
	rrca
	ld (de),a
	jp 010a0h
	jr nz,$-109
	jp nc,0129fh
	xor a
	and (hl)
	ld bc,03dc1h
	djnz l4f88h
	defb 0fdh,08bh,0bch ;illegal sequence
	push bc
	ld a,(de)
	sub e
	ret nz
	jp z,012cch
	push bc
	push de
	inc l
	inc de
	set 0,c
	sub b
	cp h
	jr z,l4fd2h
	adc a,b
	and 005h
l4fd2h:
	ld c,a
	sub h
	add a,a
	ld bc,009ebh
	ex de,hl
	ld (hl),d
	dec hl
	ld (hl),e
l4fdch:
	pop de
	adc a,c
	push hl
	dec hl
	inc l
	rra
	in a,(021h)
	sub l
	inc b
	dec (hl)
	jp nz,01326h
	ei
	jp c,08a35h
	jp pe,0c235h
	xor c
	dec (hl)
	push hl
	ld a,c
	ex af,af'
	ld b,(hl)
	ld l,c
	ld h,b
	ld a,(01acah)
	ld (0ee13h),hl
	call m,0f192h
	cp d
	jr nc,$-71
	defb 0edh ;next byte illegal after ed
	add hl,bc
	ld d,d
	ld c,l
	ld b,h
	pop hl
	and e
	ld c,d
	inc a
	ld a,(0c8f0h)
	push de
	jp 037b2h
	rlca
	ex af,af'
	ld h,a
sub_5018h:
	call z,02308h
	ld h,d
	add hl,de
	jp 0bd01h
	or l
	ld de,01f4dh
	ld hl,0896dh
	rla
	add a,b
	sbc a,b
	rst 8
	ret nz
	inc de
	cp (hl)
	jp nz,l4452h
	call nz,0c944h
	ld d,h
	nop
	inc de
	dec hl
	ld a,(de)
	ld (hl),a
	ld (bc),a
	ld a,(de)
	inc bc
	ld (bc),a
	sbc a,d
	jp (hl)
	jr c,$+94
	inc bc
	cp c
	call po,0c30eh
	ld e,e
	inc de
	inc bc
	add hl,bc
	dec de
	jp c,l4af8h
	pop af
	ld de,01398h
	push af
	add a,h
	ld hl,03877h
	adc a,d
	and 038h
	ld sp,l7501h
	inc de
	ld (hl),a
	sub 004h
	jp nc,0d47bh
	sub e
	ld (bc),a
	ld h,087h
	call pe,0ed8bh
	or c
	cp d
	add a,(hl)
	call 0156dh
	ret
	cp d
	ret nc
	inc a
	jp z,013a6h
	sub d
	cp c
	rlca
	rra
	jp 013bfh
	ret z
	ld h,e
	rlca
	ld a,(000eeh)
	dec a
	jp m,013b5h
	call nz,0d9f5h
	call 00914h
	ld e,e
	dec d
	ret nc
	ld c,c
	push de
	jp nc,00e2bh
	add a,b
	ld c,a
	ld a,(hl)
	cp c
	jp c,022ceh
	inc de
	ld (hl),c
	cp c
	nop
	rst 30h
	jp 01362h
	ld hl,01840h
	ld b,060h
	inc bc
	inc d
	add a,007h
	cp 013h
	rrca
	jp c,03ce5h
	rrca
	dec e
	ld e,h
	call pe,0231dh
	ret
	ret
	ld h,0d1h
	ld (0988fh),a
	ld (hl),h
	and c
	ld (hl),e
	sbc a,a
	rst 18h
	add a,b
	ld a,a
	nop
	nop
	ld e,d
	ld e,l
	nop
l50cfh:
	dec c
	sbc a,h
	inc c
	rst 20h
	dec bc
	inc a
	dec bc
	sbc a,e
	add hl,bc
	ld a,(bc)
	ld (bc),a
	ld a,(bc)
	ld (hl),e
	call p,00880h
	ld l,e
	ex af,af'
	jp p,08007h
	nop
	rlca
	inc d
	rlca
	xor a
	ld b,04eh
l50ebh:
	ld b,0f4h
	nop
	dec b
	sbc a,(hl)
	dec b
	ld c,(hl)
	dec b
	ld bc,0ba05h
	inc bc
	inc b
	halt
	inc b
	ld (hl),004h
	ld sp,hl
	jp nc,003c0h
	adc a,d
	inc bc
	ld d,a
	nop
	inc bc
	daa
	inc bc
	jp m,0cf02h
	ld (bc),a
	and a
	nop
	ld (bc),a
	add a,c
	ld (bc),a
	ld e,l
	ld (bc),a
	add hl,sp
	ld (bc),a
	dec de
	nop
	ld (bc),a
	defb 0fdh,001h,0e0h ;illegal sequence
	ld bc,001c5h
	xor h
	nop
	ld bc,00194h
	ld a,l
	ld bc,00168h
	ld d,e
	nop
	ld bc,00140h
	ld l,001h
	dec e
	ld bc,0000dh
	ld bc,000feh
	ret p
	nop
	ex (sp),hl
	nop
	sub 000h
	nop
	jp z,0be00h
	nop
	or h
	nop
	xor d
	nop
	nop
	and b
	nop
	sub a
	nop
	adc a,a
	nop
	add a,a
	nop
	nop
	ld a,a
	nop
	ld a,b
	nop
	ld (hl),c
	nop
	ld l,e
	inc (hl)
	nop
	ld h,l
	xor d
	nop
	nop
	ld e,d
	nop
	ld d,l
	nop
	ld d,b
	nop
	ld c,h
	nop
	nop
	ld b,a
	nop
	ld b,e
	nop
	ld b,b
	nop
	inc a
	inc b
	nop
l516ch:
	add hl,sp
	nop
	dec (hl)
	nop
	xor l
	ret nz
	jr nc,l5174h
l5174h:
	dec l
	nop
	ld hl,(00065h)
	ret m
	sub d
	and b
	inc h
	nop
	ld (00000h),hl
	jr nz,l5183h
l5183h:
	ld e,000h
	inc e
	nop
	dec de
	and b
	or h
	nop
	jr l51ddh
	nop
	cp d
	dec d
	inc bc
	nop
	inc d
	nop
	inc de
	nop
	ld (de),a
	xor h
	ld d,b
	djnz l519bh
l519bh:
	cpl
	rrca
	nop
	xor h
	jr c,l516ch
	ld d,b
	inc a
	cp 0c4h
	ld (hl),d
	dec d
	call p,0d776h
	ld e,a
	rlca
	adc a,(hl)
	add hl,bc
	jp nz,01586h
	call p,00da0h
	ld hl,09fb0h
	ld de,0b86bh
	cp e
	nop
	rlca
	out (0a0h),a
	ld a,0bfh
	rlca
	out (0a1h),a
	ld (01834h),hl
	set 4,h
	rst 0
	in a,(0b8h)
	ld c,b
	ld (bc),a
	ld b,d
	ld (bc),a
	ld (hl),018h
	sbc a,c
	or h
	inc sp
	ld b,024h
	scf
	ld (bc),a
	inc a
	ld (bc),a
	dec a
	ld d,b
l51ddh:
	jr l5174h
	jr c,$-108
	ld (l6e00h),a
	ld a,024h
	jp m,l53f5h
	ld d,h
	ld a,(0ab17h)
	dec d
	ret nc
	dec d
	dec d
	rlca
	or a
l51f3h:
	ld b,l
	jr nz,l5201h
	ld (00bdch),a
	rlca
	and h
	dec bc
	ld (hl),047h
	ld b,l
	sub b
	push bc
l5201h:
	ld d,03ah
	inc a
	sbc a,060h
	jp nz,015f3h
	sub d
	ld b,l
	ld (02a16h),a
	ld e,e
	ld b,l
	ld a,(hl)
	inc hl
	add hl,de
	ld d,0f0h
	and e
	rst 0
	or 0e3h
	rst 18h
	rla
	push de
	or c
	cp 007h
	ld bc,01806h
	sub 01bh
	jp z,l5a12h
	djnz l51f3h
	add hl,hl
	ex af,af'
	ld de,0b8dah
	jr z,l5247h
	inc hl
	jp nz,00e44h
	call z,sub_7401h
	ld d,(hl)
	call m,005b2h
	jp z,017b4h
	ld a,(hl)
	dec hl
	xor (hl)
	ret nz
	jp nz,0172eh
	bit 6,a
l5247h:
	ex af,af'
	jp nz,01758h
	ld a,c
	and d
	sub c
	ld a,(hl)
	and c
	dec bc
	inc hl
l5252h:
	inc c
	ld a,(hl)
	cp h
	jp nz,0164dh
l5258h:
	or c
	inc (hl)
	in a,(0a2h)
	ld d,h
	or e
	djnz l5258h
	rlca
	ld d,07bh
	cpl
	ld e,a
	ld c,02bh
	and e
	ld c,00bh
	add hl,sp
	jr z,l529bh
l526dh:
	sla e
	ld hl,(015d3h)
	defb 0ddh,094h ;sub ixh
	sbc a,h
	dec de
	add a,b
	or 038h
	ld d,a
	ld bc,003f7h
	ld a,(hl)
	add a,b
	ld c,d
	jp z,01682h
	ld a,d
	and c
	ld d,a
	ret m
	sub b
	ccf
	jp z,09622h
	ld d,04ah
	jp nz,l5d7fh
l5291h:
	adc a,h
	ld h,d
	sub d
	rla
	di
	pop hl
	inc hl
	cp c
	ret nc
	scf
l529bh:
	rl c
	adc a,e
	sbc a,a
	ld sp,l7a55h
	ld b,d
	inc l
	add hl,de
	inc (hl)
	djnz $+126
	rra
	rla
	adc a,b
	cp b
	cp h
	ld d,01ch
	ld d,a
	ld a,006h
	ld d,04bh
	add a,025h
	push de
	ld d,098h
	and l
	jp p,l4e70h
	dec b
	cp c
	jp nc,016d2h
	ld (hl),a
	push hl
	ld h,a
	cp l
	jp p,089edh
	sbc a,e
	ld a,(bc)
	daa
	ld de,l423ah
	rst 8
	add hl,bc
	ld bc,0ebd2h
	dec bc
	ld bc,01830h
	ld a,008h
	rrca
	ld b,b
	rst 10h
	rrca
	ei
	rrca
	inc l
	add hl,bc
	rrca
	ld l,c
	ld b,c
	rrca
	dec bc
	rla
	rrca
	and h
	jp l7ea2h
	rra
	ld l,h
	ld b,a
	ld e,l
	and (hl)
	ld c,b
	sub b
	add hl,bc
	jp l78b4h
	ld d,00eh
	jr c,$-126
	ld c,046h
	push de
	jp nc,00b51h
	ret c
	ld (hl),03ch
	ld b,0bah
	daa
	push hl
	adc a,b
	and e
	ex de,hl
	jp 01513h
	inc de
	ld a,l
	dec a
	inc c
	ld b,010h
	ld a,h
	ld b,0e1h
	pop de
	inc hl
	sub h
	adc a,d
	ret m
	add hl,hl
	sbc a,a
	add hl,de
	ld h,012h
	push bc
	xor 020h
	ld b,a
	ld a,(ix+000h)
	daa
	add a,b
	pop bc
	adc a,h
	ld de,09393h
	ld a,h
	and d
	sub e
	call pe,09012h
	pop bc
	ld c,h
	jp nc,0af0bh
	rrca
	sbc a,h
	cp e
	and d
	and d
	inc bc
	sbc a,h
	or l
	ld hl,(00b11h)
	ld b,e
	sbc a,b
	ld b,e
	ret
	inc c
	jr c,$+6
	sub 01dh
	ld (0f8ddh),a
	ld h,0c3h
	set 3,c
	jp nc,02538h
	dec l
	jp nz,09507h
	and d
	rlca
	ld (0ef3ah),hl
	ld (hl),h
	ld (0dc39h),a
	rla
	ld d,027h
	cp 0ffh
	ex de,hl
	add hl,hl
	or c
	ld e,b
	inc a
	rlca
	ld a,(015b6h)
	ld c,e
l5375h:
	ld hl,l47c0h
	jp 015e6h
	sub 0d9h
	ret
	inc a
	ld h,0b4h
	ret
	sbc a,d
	ld (0e23dh),a
	ld (0a608h),a
	ld c,l
	add hl,bc
	cp b
	dec l
	ld l,e
	ld hl,(02a3eh)
	xor d
	adc a,(hl)
	add a,033h
	ld e,0abh
	nop
	defb 0cbh,031h ;sli c
	nop
	rst 38h
	jp m,0d77fh
	ld a,a
	nop
	adc a,l
	or (hl)
	ret
	cp l
	and b
	jp p,0c3f4h
	ld bc,0a8d3h
	call 008c3h
	ld a,(007f2h)
	add a,l
	ret
	di
	sbc a,l
	ret nz
	ret nz
	ld bc,03fffh
	ld a,005h
	ld a,(0b1edh)
l53c0h:
	jr nz,$+33
	pop bc
	add a,b
	cp 0f2h
	jr nz,$-10
	dec hl
	add a,b
	dec b
	ret z
	jr c,$-16
	cp 0cbh
	jr nc,$+10
	jp pe,0362bh
	in a,(012h)
	sub 0c7h
	ld hl,(0fcc6h)
	xor d
	ld h,b
	ld (hl),0a6h
	in a,(0a8h)
	and b
	di
	push af
	add hl,de
	and 003h
	add a,a
	nop
	call pe,021c8h
	nop
	ret
	call m,0f119h
	and 00ch
	ld e,a
l53f5h:
	add hl,de
	add a,b
	ld a,(de)
	jr nz,l5438h
	inc b
	ld (0c029h),a
	nop
	ld a,005h
	ld (0c02ah),a
	call 019adh
	cp b
	cp c
	ld h,0c0h
	inc c
	ret
	in a,(0a8h)
	ld b,a
	dec l
	call nc,sub_4f2ch
	ld (bc),a
	or c
	nop
	ld c,a
	ld a,b
	and 0c3h
	or c
	ld (0c046h),a
	dec bc
	ld a,(0ffffh)
	cpl
	add hl,bc
	add hl,de
	add a,(hl)
	inc c
	rla
	cp (hl)
	or b
	and d
	adc a,(hl)
	ld hl,(00100h)
	nop
	sbc a,(hl)
	ld (bc),a
	inc bc
	dec e
	ld bc,0005dh
l5438h:
	inc bc
	pop af
	nop
	cp h
	ld h,b
	pop bc
	and 0f8h
	ld h,b
	ld c,a
l5442h:
	dec b
	inc a
	and 007h
	xor b
	ld c,l
	ld b,084h
	pop de
	exx
	add hl,de
	add hl,de
	add a,090h
	bit 1,(hl)
	ld hl,06100h
	pop bc
	jp nz,01a40h
	ld a,(0c39ah)
	ld bc,0d21fh
	inc l
	ld a,(de)
	dec e
	dec (hl)
	dec (hl)
	ld b,002h
	inc sp
	ld a,(de)
	inc e
	inc (hl)
	inc (hl)
	ld b,011h
	jr c,l5489h
	dec d
	inc b
	ld e,a
	ld a,(de)
	sbc a,c
	out (05fh),a
	dec e
	sub b
	ld c,e
	ld a,(de)
	ld e,0feh
	push de
	ld e,053h
	ld e,01fh
	pop bc
	ld e,c
	ld a,(de)
	call c,02087h
	dec e
	or e
l5489h:
	ld h,h
	pop hl
	add a,d
	pop bc
	rst 18h
	jr c,$+16
	inc b
	ret nc
	jr nc,$+20
	ld (0c60bh),a
	ld (bc),a
	ld (bc),a
	ld (0c205h),a
	ld a,(01309h)
	ld b,b
	ld (03203h),a
	dec c
	jp nz,0b77bh
	nop
	ret z
	ld a,(0c200h)
	add a,e
	cp 018h
	ret c
	ld (bc),a
	cp 0c2h
	ret nc
	ld a,(0c10eh)
	call c,0f2e3h
	ld a,(de)
	add a,b
	cpl
	sbc a,a
	add a,a
	ld a,(019d8h)
	defb 0fdh,089h,032h ;illegal sequence
	inc b
	jp nz,00c0eh
	ld hl,(0c3a0h)
	ld (0fe10h),hl
	ld d,h
	jp c,0fe0ah
	add a,(hl)
	jp nc,0f240h
	ld a,(de)
	or 0ffh
	add a,e
	ld b,a
	sub h
	jr nc,$-40
	inc bc
	rrca
	ld a,b
	sub l
	push hl
	ld b,032h
	ld (de),a
	rlca
	ld c,e
	jp 01b37h
	ld h,0c0h
	sub 070h
	ld b,(hl)
	rra
	sub 070h
	sub e
	ld b,0c6h
	ld a,b
	rst 18h
	daa
	call p,03271h
	xor h
	add hl,bc
	sub a
	ld b,h
	inc b
	adc a,a
	ld d,0a2h
	ld a,b
	add a,a
	inc h
	ld e,e
	pop bc
	ld a,c
	inc hl
	inc e
	ex af,af'
	adc a,l
	inc e
	ld (01208h),a
	ld c,h
	dec a
	ld (de),a
	inc c
	dec bc
	sbc a,l
	inc bc
	ret
	rlca
	ld (hl),e
	inc de
	rra
	ret z
	ret
	ld hl,000a9h
	jp 00511h
	nop
	ld b,006h
	xor a
	cp (hl)
	inc de
	jr z,l5537h
l552fh:
	inc hl
	call 09103h
	ld (hl),a
	dec hl
	dec hl
	xor a
l5537h:
	cp (hl)
	ld h,b
	jp p,08021h
	jp nz,01124h
	rrca
	ld d,007h
	ld d,023h
	inc sp
	jr z,l554bh
	dec d
	inc de
	inc b
	push af
l554bh:
	ld hl,01310h
	inc b
	sub e
	inc de
	ld a,(bc)
	rst 38h
	dec b
	ld a,(bc)
	jp c,01b72h
sub_5558h:
	inc de
	ld (de),a
	sub b
	ld a,000h
	halt
	call sub_4501h
	ld bc,0f13ah
	pop bc
	add a,008h
	out (c),a
	xor h
	jr $+81
	and b
	ld de,01525h
	jp 0203eh
	nop
	ld (01bdbh),a
	ld a,(hl)
	add a,c
	cp 0d8h
	jp nz,09b00h
	dec de
	inc a
	ld (de),a
	inc hl
	inc de
	ld a,(hl)
	add a,b
	jp c,00304h
	inc b
	jr z,l559eh
	ld a,(0ac18h)
	and d
	inc bc
	jp nz,0a393h
	jr nz,l55aeh
	jp 0d7feh
	ld (bc),a
	jp nz,01bc4h
	ld a,0d6h
l559eh:
	ld (0c209h),a
	sbc a,d
	dec (hl)
	ld h,b
	ld hl,0d938h
	cp (hl)
	jp nz,0d234h
	dec de
	rrca
	ld (hl),a
l55aeh:
	ld c,0f8h
	call c,02b3dh
	ret nz
	ld (bc),a
	ret
	jr nz,l55f2h
	sbc a,h
	add hl,bc
	jp 0c2b7h
	call p,00627h
	ld l,e
	ld (de),a
	add hl,de
	ld a,0cfh
	ld b,d
	dec c
	ld a,(0c1f3h)
	rst 28h
	inc hl
	inc e
	ret
	push de
	ld c,h
	djnz $+110
	xor a
	rrca
	inc c
	ld (012a8h),a
	xor e
	inc d
	exx
	ld a,(0bf0bh)
	sub e
	sbc a,(hl)
	add a,b
	inc d
	ld c,a
	cp b
	jp c,l442fh
	inc e
	ret p
	jp 08035h
	cp c
	rlca
	ld a,(bc)
	dec d
	adc a,c
	nop
l55f2h:
	dec d
	ld (de),a
	dec d
	rrc l
	dec d
	ld de,0bad9h
	nop
	inc (hl)
	jp nz,00106h
	jp 01c55h
	adc a,h
	sub 08ah
	rst 20h
l5607h:
	cp c
	jr nc,$+89
	ld a,(0b4c9h)
	sub d
l560eh:
	inc b
	jr z,l561fh
	adc a,e
	inc d
	ld a,(0c310h)
	rst 0
l5617h:
	nop
	ld de,032c3h
	ld e,h
	inc e
	ld a,(hl)
	inc hl
l561fh:
	nop
	cp d
	jp c,01c6ch
	sub 0ffh
	cp d
	jp nc,06c4ch
	dec bc
	cp e
	ld a,(bc)
	ld sp,0bb91h
	add hl,bc
	ret
	add a,016h
	sbc a,e
	call nz,0afe4h
	rst 8
	adc a,h
	sbc a,a
	adc a,009h
	jr nz,l5607h
	push af
	ld h,d
	sub l
	jr nc,l564ah
	pop bc
	xor h
	rst 20h
	ld c,c
	rlca
	inc b
l564ah:
	ld (bc),a
	sub 001h
	pop bc
	ld hl,0c132h
	ld a,(hl)
	pop de
	or e
	jr z,l5617h
	and c
	jr z,l5663h
	xor a
	call m,016c3h
	cp 080h
	ret m
	jp 01cb5h
l5663h:
	adc a,d
	add hl,de
	ld c,003h
	cp a
	dec c
	ld e,004h
	ld a,(bc)
	inc b
	ld bc,0010eh
	ld d,002h
	ld a,(bc)
	call 0d919h
	inc e
	ld a,c
	inc bc
	adc a,h
	jr c,l560eh
	sbc a,l
	xor h
	ld d,d
	inc c
	rst 8
	add hl,hl
	inc c
	sub 066h
	sbc a,d
	and d
	inc bc
	and (hl)
	ret z
	ld b,003h
	ret
	ld b,059h
	ld (bc),a
	sbc a,06eh
	ld (l6dfbh),hl
	ld (de),a
	jp 00c67h
	in a,(099h)
	rra
	ret c
	ex af,af'
	ex af,af'
	dec a
	jp nz,01d37h
	rst 30h
	xor d
	rlca
	ind
	xor a
	nop
	and d
	jp c,01d14h
	ld hl,01e4eh
	call 08b15h
	inc b
	ld a,(09705h)
	ld h,h
	inc b
	ld a,(l526dh)
	rlca
	inc b
	jp po,03f13h
	ld d,086h
	ld b,e
	ld c,0a4h
	ld b,e
	ld d,013h
	scf
	ld (003afh),a
	adc a,c
	ld e,d
	inc de
	add hl,sp
	inc a
	rst 0
	inc de
	ret
	ld b,l
	ex af,af'
	ld h,c
	ld b,l
l56dah:
	ld b,b
	jp nc,l5a4eh
	ld b,l
	ld l,h
	ld l,024h
	dec b
	sub 02eh
	ld l,h
	sbc a,e
	ld l,070h
	rlca
	inc b
	ld c,(hl)
	ld b,l
	ld e,l
	ld d,01ah
	ld h,c
	ld c,061h
	sbc a,c
	ld d,014h
	ld b,l
	inc bc
	ld l,e
	ld b,l
	inc d
	add hl,sp
	ld l,d
	inc c
	inc bc
	adc a,b
	ld h,b
	ld l,e
l5702h:
	ld (01e16h),a
	ld a,(0033eh)
	add a,007h
	ld e,01eh
	dec b
	ld hl,02e12h
	add hl,bc
	ld d,074h
	dec bc
	inc d
	add a,c
	dec e
	jp nz,01d89h
	dec bc
	add a,(hl)
	sub 063h
	dec bc
	ld l,l
	xor h
	inc de
	dec (hl)
	add hl,bc
	inc hl
	ex af,af'
	inc hl
	xor 0adh
	sbc a,d
l572ah:
	ld a,e
	ld hl,02111h
	ld l,c
	jr nc,l5736h
	ld a,06ch
	sbc a,c
	jr l5774h
l5736h:
	ld b,(hl)
	jr nc,l5702h
	ld de,0a33eh
	add a,086h
	ld a,0a0h
	ld h,d
	jr c,l5781h
	sbc a,a
	ld d,h
	ld l,h
	inc b
	ld l,h
	adc a,a
	ld d,c
	cp (hl)
	add a,07bh
	add a,d
	ld a,0c1h
	sub 00ah
	jp z,l40c4h
	push af
	call 01cf1h
	ld c,b
	pop af
	sub b
	ld sp,hl
	sbc a,b
	ld h,(hl)
	ld d,l
	djnz l572ah
	and h
	ld c,09ah
	call nz,0080eh
	sub h
	ld b,b
	add a,a
	nop
	rst 20h
	inc bc
	ld l,e
	inc bc
	nop
	inc bc
l5772h:
	ld (bc),a
	inc c
l5774h:
	nop
	add hl,bc
	in a,(030h)
	sub b
	sub e
	nop
	nop
	rst 18h
	inc bc
	and e
	nop
	inc b
l5781h:
	ld (bc),a
	ld d,b
	ld (hl),000h
	ld a,(bc)
	ld c,002h
	jr c,l5772h
	inc bc
	add a,b
	ld b,00dh
	ld (bc),a
	cpl
	nop
	ex af,af'
	ld c,080h
	ld d,c
	nop
	jp po,06c03h
	nop
	rlca
	jp nz,021c6h
	sub 00eh
	jr nc,l57ddh
	ld l,l
	inc l
	ld c,03bh
	ret nc
	ex de,hl
	inc bc
	and b
	ex (sp),hl
	xor a
	dec e
	cp d
	inc a
	ld c,d
	ld h,e
	dec a
	dec sp
	ld (bc),a
	dec sp
	sub d
	ld a,(099cah)
	ld (hl),b
	call 0030bh
	rra
	call 01fbah
	ld a,(00ac9h)
	inc h
	out (0adh),a
	dec b
	rst 10h
	sub d
	ld a,(00ecbh)
	ld a,h
	ld b,0d9h
	xor c
	ld a,h
	ld e,0d3h
	ld a,(0cc5ah)
	ld a,(bc)
	ex af,af'
	ld b,02ch
	ld a,(hl)
	or a
l57ddh:
	pop de
	or b
	cp d
	ld sp,hl
	ret
	ld bc,03c16h
	ld (hl),001h
	inc hl
	ld a,(099c7h)
	ld e,h
	ld b,c
	ld l,a
	rrca
	ld c,0ffh
	add a,d
	defb 0ddh,081h,00eh ;illegal sequence
	cp 004h
	ld bc,00e11h
	defb 0fdh,0c3h,0dbh ;illegal sequence
	ld e,09fh
	ld b,b
	sub d
	jr c,l580ah
	ld hl,(0020eh)
	inc b
	or h
	ld b,b
	ld (hl),c
l580ah:
	inc hl
	ld a,b
	ld (hl),a
	sub l
	add hl,hl
	ret z
	exx
	rst 0
	add hl,hl
	cp c
	dec b
	rra
	add hl,hl
	rst 28h
	add a,l
	ld h,l
	xor 04ch
	rra
	push af
	ld c,b
	inc b
	jp z,08b36h
	adc a,a
	ld (hl),l
	inc b
	ret z
	ld hl,08bb8h
	ld b,b
	ld a,b
	jp nz,071cdh
	rra
	daa
	ld hl,008bdh
	ld a,h
	ex af,af'
	add hl,bc
	jp nz,03008h
	inc bc
	ld h,071h
	rra
	ld a,h
	ld hl,(004c4h)
	ld (00281h),a
	sub d
	adc a,b
	ld (bc),a
	sub a
	rra
	or a
	sbc a,02bh
	ld e,l
	xor (hl)
	dec hl
	or (hl)
	or e
	dec hl
	ret
	dec (hl)
	ret z
	jr nc,$-102
	and e
	adc a,h
	ld (de),a
	inc bc
	ld de,01213h
	ret
	rst 0
	add a,h
l5862h:
	jp p,00423h
	jp p,08016h
	rra
	add a,0c6h
	ex af,af'
	add a,d
	rra
	sub 0cch
	add a,b
	add a,(hl)
	ld (hl),a
	ld (de),a
	cp 0fch
	jr nc,l58adh
	add hl,hl
	inc de
	dec d
	sub (hl)
	dec d
	xor (hl)
	sbc a,b
	dec d
	ret nz
	ld (de),a
	jr c,l588eh
	cp 0ddh
	jr nc,$+3
	ld b,0e5h
	call 0015eh
	pop hl
l588eh:
	ret nc
	pop hl
	add a,a
	xor l
	ld a,(de)
	inc bc
	ret
	jp pe,09906h
	push af
	ld b,0b5h
	ld a,h
	ld de,l4f0ah
	cp d
	sub d
	and l
	jr z,$-31
	ld (hl),e
	or c
	adc a,b
	call 0aeeeh
l58aah:
	defb 0ddh,005h,089h ;illegal sequence
l58adh:
	and a
	jp 08e05h
	xor c
	dec bc
	inc e
	xor (hl)
	dec b
	ld b,l
	sub c
	ld h,c
	inc hl
	ret z
	add a,l
	inc c
	cp b
	ret nc
	or 00ch
	cp b
	ret c
	ex af,af'
	dec h
	cp c
	ret nc
	dec sp
	cp c
	sbc a,b
sub_58cah:
	add a,c
	rst 8
	jp 0c0a7h
	ld d,h
	ret z
	ld a,048h
	ld (00c98h),a
	ret
	pop bc
	sbc a,c
	sbc a,h
	nop
	ld hl,(0c19ah)
	ld b,e
	otir
	dec d
	ld d,0c2h
	add hl,de
	jr nz,l58aah
	nop
l58e8h:
	ld (0c19ch),hl
	ld (0c19eh),de
	ld h,b
	push bc
	ld d,0ebh
	ld bc,04498h
	nop
	ld d,0fbh
	ld hl,(02411h)
	call nc,05b15h
	dec d
l5900h:
	inc d
	ret nc
	ld a,(de)
	pop bc
	djnz l58e8h
	ret
	nop
	cp 0a0h
	jp z,02099h
	cp 0b0h
	jp z,08602h
	inc hl
	cp 090h
	jp z,004ech
	dec c
	add a,b
	jp z,0242ch
	rst 30h
	adc a,b
	jp z,00475h
	ret po
	jp z,l5442h
	inc b
	ret nz
	jp z,01d79h
	nop
	ret p
	jp z,0225ch
	cp 070h
	jp z,02ff9h
	jr nz,l5900h
	jp m,00595h
	jp m,080f7h
	exx
	sub h
	rla
	cp 020h
	cp 020h
	ret c
	rlca
	ld a,0e0h
	ld (0c1a4h),a
	rra
	ret nz
	ld e,c
	ld d,h
	pop bc
	sbc a,l
	or h
	di
	sub e
	or h
	ld h,h
	and a
	dec bc
	ld d,0eah
	xor h
	rst 38h
	xor l
	xor a
	rst 0
	push de
	rrca
	ld d,d
	adc a,c
	jr $-40
	djnz l58e8h
	xor h
	nop
	pop bc
	call 0de9dh
	sub h
	push bc
	and 0beh
	ex af,af'
	ex de,hl
	dec e
	nop
l5975h:
	ld (0d6dbh),a
	dec d
	jp 03851h
	dec c
	ex (sp),hl
	dec hl
	ld e,a
	rst 18h
	ld c,00ah
	ld d,d
	pop bc
	add a,c
	sbc a,d
	ld d,c
	and b
	dec h
	ccf
	ld (bc),a
	ld c,a
	ld (bc),a
	defb 0ddh,095h ;sub ixl
	xor e
	sub d
	ld (bc),a
	jr l5997h
	ld c,b
	inc l
l5997h:
	ld d,(hl)
	or a
	ld l,d
	ld (0a053h),a
	add hl,sp
	ld (bc),a
	or a
	ld hl,021ach
	inc l
	jp z,0f337h
	ld (de),a
	call pe,02221h
	sbc a,l
	inc bc
	ld de,00120h
	ld hl,086a0h
	inc hl
	inc d
	jr nz,l59cfh
	add a,h
	call z,sub_5018h
	adc a,(hl)
	jr l59cah
	ld (08c18h),hl
	nop
	ld a,d
	jr $+50
	ld a,034h
	and l
	add a,d
	ld b,b
l59cah:
	ld a,(de)
	jp nz,l403eh
	xor l
l59cfh:
	jr z,$+9
	ld l,0c2h
	ld a,(de)
	ld hl,l4933h
	ld e,030h
	adc a,h
	ld e,040h
	ld (hl),h
	ld e,038h
	ld hl,00e43h
	ld c,l
	djnz $+16
	or b
	ld c,0cbh
	add a,(hl)
	rst 38h
	or b
	and (hl)
	ld hl,03a31h
	ld e,b
	ld b,0a0h
	ld b,024h
	ld a,08ah
	daa
	ld c,c
	jp nc,03e0eh
	call 0a8c9h
	adc a,h
	ld b,(hl)
	sub b
	dec b
	jp c,l78b4h
	nop
	rlca
	ld sp,0ceceh
	ld sp,0980fh
	adc a,h
	ld (hl),e
	ld (hl),e
	ld a,h
	adc a,h
l5a12h:
	inc de
	ld l,a
	nop
	nop
	sbc a,h
	rst 38h
	rst 38h
	push af
	ld c,0e5h
	ld de,023ffh
	push af
	ld sp,hl
	nop
	sbc a,(hl)
	dec bc
	ld c,005h
	ccf
	rra
	inc a
	jp nz,0a2fbh
	ld d,b
	exx
	ld d,b
	ld a,099h
	halt
	ld de,03e22h
	ld (hl),b
	call 0af89h
	ret pe
	ld e,c
	jp p,0f125h
	ld h,l
	ex de,hl
	defb 0cbh,032h ;sli d
	inc e
	ld c,a
	add a,(hl)
	ld (de),a
	sub 022h
	rst 18h
	and 021h
	ld c,e
	or 0d5h
l5a4eh:
	and b
	ld hl,02356h
	sub (hl)
	or (hl)
	and l
	push bc
	sub e
	ld h,(hl)
	inc hl
	dec e
	and (hl)
	ld d,b
	ld c,092h
	ld a,044h
	di
	sub d
	xor c
	sbc a,b
	pop hl
	nop
	dec (hl)
	ld a,d
	rst 30h
	cp 0cdh
	rst 28h
	defb 0fdh,011h,07ah ;illegal sequence
	djnz l5a75h
	sub c
	adc a,0b5h
	ld b,b
l5a75h:
	ret nz
	jp m,0ecf7h
	add a,b
	jr c,l5a7ch
l5a7ch:
	ld b,b
	dec c
	ret nz
	rra
	ld e,d
	sub a
	cp e
l5a83h:
	jp nz,0d73ch
	adc a,l
	rra
	add a,a
	ld b,b
	ld a,(01f57h)
	add a,(hl)
	rrca
	nop
	ld (bc),a
	ld a,c
	jp p,0cff5h
	ld h,c
	ex af,af'
	adc a,a
	out (01eh),a
	ccf
	ld a,e
	nop
	add a,a
	rra
	ld e,c
	sub e
	or (hl)
	rra
	and a
	ccf
	ld a,000h
	ld hl,00e09h
	dec bc
	add hl,bc
	add hl,bc
	rrc (hl)
	nop
	exx
	ld c,e
	nop
	defb 0edh ;next byte illegal after ed
	adc a,h
	ld e,(hl)
	call p,0c2b8h
	ld d,0bbh
	sbc a,b
	and h
	add hl,de
	and a
	ld d,a
	xor a
	sub c
	or h
	or a
	or d
	ld a,015h
	ret z
	ld (00a11h),a
	and c
	rst 18h
	push af
	ld c,h
	ld (bc),a
	dec l
	jp p,0b00ah
	inc h
	pop bc
	ld h,b
	exx
	inc hl
	add hl,hl
	ld a,0f0h
	xor h
	ld h,l
	out (c),c
	jp z,00ce6h
	ld (hl),b
	cp a
	ld c,(hl)
	ccf
	ld h,l
	ld c,h
	adc a,h
	pop af
	ld h,b
	push hl
	rrca
	add a,073h
	ld (hl),e
	ld h,a
	add a,d
	ld e,e
	ld e,(hl)
l5af5h:
	sub (hl)
	or d
	pop af
	inc h
	ld b,b
	rra
	ld b,c
	rst 10h
	rst 0
	ld e,d
	pop bc
	or h
	set 1,b
	adc a,c
	push bc
	and l
	ld h,d
	sub a
	ex de,hl
	daa
	jp nc,0f706h
	ld a,h
	rla
	ld d,l
	xor (hl)
	nop
	cp 04fh
	jp z,0244fh
	ld (0df55h),a
	djnz l5b3ch
	adc a,c
	ld a,020h
	add a,c
	ld c,e
	jp nz,0249eh
	ld sp,hl
	ld a,b
	xor c
	cp l
	defb 0ddh,098h,04eh ;illegal sequence
	ret nz
	ld a,(bc)
	and a
	adc a,l
	ld c,(hl)
	ld (l653eh),a
	call p,044eah
	ld c,a
	call z,0fbc0h
	sbc a,a
	inc b
l5b3ch:
	ld l,l
	sub a
	ld b,04ah
	jp nc,0cee6h
	ld (bc),a
	add hl,hl
	jp nc,004dch
	djnz l5b5fh
	jp nc,004d2h
	ld a,(bc)
	jp nc,045c8h
	inc h
	xor 0b0h
	inc d
	xor 040h
	rst 30h
	inc h
	jp 025a1h
	ret po
	add hl,bc
	inc h
l5b5fh:
	dec h
	add hl,sp
	jp 009cfh
	ld c,d
	ld d,c
	add hl,bc
	add iy,bc
	call nc,02fd6h
	pop hl
	djnz l5bedh
	djnz l5b82h
	dec hl
	ld h,0e0h
	and d
	ld hl,0264fh
	add a,0fdh
	ld (01223h),a
	ld bc,0ca27h
	rla
	dec h
l5b82h:
	ld hl,0277fh
	pop hl
	ld c,h
	add hl,hl
	inc bc
	pop hl
	sub a
	ret
	inc l
	rrca
	ld l,a
	inc l
	add a,l
l5b91h:
	ld e,a
	inc l
	daa
	ld b,h
	inc l
	adc a,a
	inc l
	call nz,0f88fh
	inc l
	ld d,d
	ld l,a
	inc l
	ld (hl),c
	inc l
	ld a,h
	sbc a,a
	inc l
	ld c,a
	xor a
	inc l
l5ba7h:
	ld b,c
	ld hl,0281fh
	ld (080e9h),hl
	ld c,h
	rra
	ld hl,l50cfh
	ld a,(bc)
	xor a
	ld d,b
	ld b,a
	jp nz,0df50h
	daa
	dec l
	call nz,0f8efh
	dec l
	ld d,c
	cp a
	dec l
	ret p
	dec h
	jr l5c43h
	dec l
	ld h,a
	rrca
	daa
	dec l
	ret nz
	rst 8
	add a,e
	dec l
	ld e,026h
	ld hl,02dffh
	ex (sp),hl
	ld a,d
	cpl
	dec l
	ld d,c
	inc a
	xor l
	ex de,hl
	xor 05ch
	or e
	inc a
	nop
	adc a,h
	inc e
	defb 0fdh,00fh,081h ;illegal sequence
	jr c,l5c65h
	add a,07ch
	jr c,$+17
l5bedh:
	call p,01c80h
	ld a,063h
	pop bc
	ld h,e
	ld a,01ch
	ld sp,hl
	rrca
	add a,b
	inc bc
	rrca
	ld e,038h
	jr nc,l5c6fh
	ld bc,07060h
	jr nc,l5c3ch
l5c04h:
	ld e,00fh
	inc bc
	sub h
	ld a,d
	ret p
	nop
	ld a,b
	inc e
	inc c
	ld c,006h
	ld c,00ch
	inc e
	inc e
	ld a,b
	ret p
	ret nz
	ld hl,0171ch
	ld bc,01d06h
	ld bc,03117h
	nop
	add a,b
	ret po
	ld (hl),b
	ld a,b
	jr c,$+122
	ld (hl),b
	ld e,a
	ret po
	sbc a,d
	jr nz,l5c5ch
	inc bc
	dec d
	nop
	dec b
	cp h
	sbc a,e
	dec bc
	nop
	dec d
	inc bc
	cpl
	push de
	call po,0f0e0h
l5c3ch:
	ld bc,l78f8h
	ld a,b
	ret m
	ret p
	ret po
l5c43h:
	ret nz
	ld e,0dbh
	ld bc,08e3eh
	jr nz,l5c04h
	ld e,0ech
	jr nz,l5c9eh
	ld bc,0131bh
	nop
	ld a,(bc)
	ld e,0b4h
	add a,b
l5c57h:
	ld (bc),a
	nop
	inc de
	jr z,l5c5dh
l5c5ch:
	ld c,a
l5c5dh:
	ld e,e
	ld a,(hl)
	call m,05c1ch
	cp (hl)
	pop de
	cp (hl)
l5c65h:
	jr z,$+30
	call m,sub_627fh
	jr nz,l5c96h
	ld h,(hl)
	dec hl
	nop
l5c6fh:
	inc b
	ld (hl),d
	rlca
l5c72h:
	jr nz,l5c57h
	ld h,c
	dec bc
	ld d,c
	ld hl,(0e3dfh)
	ld a,(de)
	rst 0
	djnz $-97
	ld (hl),h
	ld c,03dh
	cpl
	ld c,01eh
	ld l,00fh
	ld l,c
	cpl
	dec c
	dec hl
	ld de,01078h
	adc a,(hl)
	inc l
	dec l
	dec hl
	ld bc,02c1dh
	dec c
	ld l,(hl)
l5c96h:
	inc c
	rrca
l5c98h:
	ret p
	djnz $+46
	cp e
	dec b
	rrca
l5c9eh:
	adc a,00ah
	ccf
	ret m
	ld bc,02f75h
	dec c
	inc c
	cp e
	rrca
	djnz l5c72h
	ld c,05dh
	djnz l5c5dh
	cpl
	rrca
	ld l,038h
	cpl
	ld e,h
	ld l,00dh
	ld a,l
	cp b
	ld l,015h
	ret nc
	ld b,c
	ld a,(0c1f2h)
	and 000h
	ld bc,03ac8h
	inc a
	ld hl,(0c2b7h)
	dec a
	nop
	ld hl,(085cdh)
	add hl,hl
	call 029bfh
	ret c
	ld d,0cdh
	ld b,a
l5cd6h:
	jr z,l5cd6h
	jr z,$+78
	or l
	adc a,a
	ld d,04bh
	pop bc
	rst 28h
	add a,b
	jp nc,0286ah
	cp 012h
	jp c,00488h
	ld a,(00cf1h)
	rlca
	jp z,03234h
	add hl,hl
	rlca
	ld b,0cah
	ld d,l
	adc a,e
	ld (l50ebh),hl
	inc hl
	daa
	ld c,d
	pop bc
	sub 000h
	ld (de),a
l5d00h:
	cp c
	ret nc
	add a,024h
	cp c
	ret c
	ld c,(hl)
	adc a,02eh
	dec bc
	ret
	pop af
	jp 00030h
	and d
	ld h,b
	pop bc
	ld a,(hl)
	or a
	ld bc,l4e23h
	inc hl
	call nz,0286fh
	inc hl
	ex af,af'
	jp m,l5c98h
	cp 076h
	rst 28h
	ld a,a
	ld (06d31h),a
	ld hl,(0c660h)
	ex de,hl
	jp p,0076bh
	inc e
	pop hl
	di
	and 098h
	rlca
	ld bc,0efcah
	jr z,l5d00h
	jp nz,02a63h
	xor 0c6h
	and c
	ld l,(hl)
	ld hl,(0ba11h)
	ld b,e
	ld b,070h
	sub b
	jp z,0290ch
	add hl,de
	ld b,b
	ld a,b
	ld h,047h
	jp 028ffh
	call 09818h
	ld hl,(l4377h)
	inc hl
	xor b
	inc b
	jr c,l5d61h
	ld a,b
	ld (06f10h),a
l5d61h:
	ld hl,(03c21h)
	call 0048bh
	ld c,l
	ld a,(0d605h)
	ld b,a
	or h
	add a,b
	ld b,(hl)
	adc a,d
	jp pe,00351h
	jp pe,l5d91h
	ld (l5862h),a
	dec h
	ld l,e
	dec b
	ld h,b
	dec b
	ld (bc),a
l5d7fh:
	dec de
	and 0feh
	rlca
	ld h,(hl)
	ret nz
	nop
	jp nz,06257h
	add hl,hl
	jr z,l5defh
	dec sp
	ld l,h
	ld e,h
	dec sp
	push af
l5d91h:
	ld l,(hl)
	dec (hl)
	ld h,b
	inc hl
	cp 0b4h
	ret c
	xor b
	dec sp
	ld b,091h
	call z,08e2ah
	add a,(hl)
	dec sp
	inc hl
	adc a,h
	ld d,0cfh
	jp 080d9h
	ld hl,0c183h
	ld b,007h
	ld a,(00148h)
	ld a,03ah
	ld b,d
	ld e,a
	ld a,(0f601h)
	rst 38h
	add a,e
	ld e,a
	call 029a4h
	call p,01020h
	ld sp,hl
	ret
	inc b
	ld c,d
	ld a,(hl)
	dec hl
	sub 00eh
	xor b
	and d
	jr $-86
	ld b,b
	ld c,e
	ld a,(hl)
l5dcfh:
	sub 00ch
	push bc
	add hl,bc
	inc d
	add hl,bc
	sbc a,(hl)
	djnz $-64
	add hl,hl
	ret
	adc a,b
	jp nz,0c170h
	adc a,l
	jp z,037a1h
	inc c
	dec a
	jp z,0c9d2h
	ld d,02dh
	dec c
	ld a,b
	xor 007h
	nop
	inc h
l5defh:
	ld (l657ah),a
	pop af
	ret po
	add a,b
	rlca
	ret z
	dec a
	ret z
	ld a,(hl)
	ld (de),a
	ld (02a80h),a
	and h
	jr nc,$+73
	ld c,0c6h
	add hl,bc
	ld bc,00fe6h
	add a,b
	sub 00fh
	ld (0937eh),a
	ld l,004h
	inc bc
	ld hl,(08393h)
	add a,c
	ld hl,(l4cafh)
	ex af,af'
	ld (hl),a
	dec hl
	ld bc,0367eh
	rla
	nop
	call 0d44bh
	ld d,c
	ld a,(0b4f5h)
	ld d,0a3h
	ld h,d
	add a,c
	add hl,hl
	ld b,(hl)
	ld a,(hl)
	or e
	pop bc
	inc b
	cp 028h
	jp nc,08234h
	dec hl
	ei
	scf
	rra
	ld hl,(l7d37h)
	ld (hl),051h
	inc a
	ld e,05bh
	ld (0128fh),a
l5e44h:
	jr c,l5dcfh
	ld (0906bh),a
	ld (00d90h),a
	and b
	ret
	ld (hl),b
	nop
	pop af
	ld a,e
	inc bc
	exx
	inc l
	rrca
	dec b
	ld d,a
	sbc a,b
	cp l
	dec h
	ret p
	inc bc
	ld c,001h
	ld c,l
	nop
	ret nc
	ld a,(bc)
	cpl
	ld h,h
	nop
	ld bc,00b0eh
	pop de
	ld c,(hl)
	inc l
	inc hl
	ld bc,00199h
	rst 20h
	ld h,a
	and e
	sub e
	jr nz,l5e7ch
	jp nz,08ca2h
	sbc a,d
	add a,h
	add hl,bc
l5e7ch:
	ld de,0c1a4h
	adc a,l
	add a,h
	ld a,(de)
	ld (092ach),a
	xor c
	ret
	ld a,(0e761h)
	jr nc,$-105
	dec a
	jr nc,l5ec7h
	ld (bc),a
	add a,0bch
	pop bc
	add hl,bc
	xor d
	jp c,096cbh
	djnz l5e44h
	jp 089d2h
	and b
	add a,d
	adc a,l
	call nz,08209h
	ret nc
	inc de
	and b
	jr nc,$+39
	cp 000h
	adc a,h
	jr c,l5eb0h
	jp 02b1ch
l5eb0h:
	ld a,(09d62h)
	dec c
	rst 38h
	sbc a,h
	rrca
	ex af,af'
	ld (0ca02h),a
	ex af,af'
	inc c
	ld (02150h),a
	nop
	ret z
	and a
	ld b,l
	ld bc,03e01h
l5ec7h:
	rst 38h
	ld hl,048e3h
	jp 01d34h
	jp nz,01d01h
	ld l,e
	djnz l5ef1h
	inc d
	dec e
	rst 0
	call c,00323h
	ld c,c
	dec e
	sbc a,c
	jp (hl)
	sbc a,d
	xor a
	dec de
	inc b
	ret p
	dec de
	inc b
	xor a
	ld hl,048c3h
	ld (00e17h),a
	ld bc,0cd98h
	ld a,l
	dec hl
l5ef1h:
	ret
	outi
	ld bc,0eafdh
	ei
	adc a,a
	ld b,d
	ld a,(bc)
	jp nz,041a6h
	inc l
	jr nz,l5f03h
	sbc a,(hl)
	and d
l5f03h:
	ld (00009h),a
	ld (0c20eh),a
	ld b,a
	and 003h
	ret nz
	ld a,b
	nop
	add a,a
	add a,a
	sub 050h
	ld d,000h
	ld e,a
	ld hl,02046h
	or b
	call nz,047e8h
	ld b,l
	add hl,de
	xor l
	ld c,c
	rst 30h
	adc a,a
	ld e,030h
	add hl,de
	ld l,h
	jp nz,09a02h
	jp 010e6h
	jr nz,l5f37h
	sub c
	ld b,l
	inc d
	jp nc,l644bh
	set 1,d
l5f37h:
	ld b,0bdh
	jp 02c6ch
	sbc a,e
	call p,sub_58cah
	and (hl)
	ld b,011h
	inc a
	sbc a,d
	jr l5f5eh
	ret nz
	exx
	rra
	inc e
	ld b,(hl)
	sub b
	adc a,e
	inc de
	xor a
	inc bc
	inc de
	nop
	ld (0c117h),a
	call 02129h
	inc sp
	jp nz,00b2fh
	adc a,c
l5f5eh:
	pop de
	jp nz,02ca6h
	jp nc,0cafah
	ld c,h
	sbc a,e
	ld b,051h
	dec c
	ld (02cbeh),a
	add hl,de
	ex af,af'
	and c
	jp nc,02c2eh
	nop
	dec a
	ld l,032h
	dec sp
	ld l,021h
	add hl,de
	or b
	sub b
	inc bc
	call 0dd89h
	jp l6519h
	ld a,(bc)
	xor c
	ret nz
	call z,02d07h
	ld hl,0e91bh
	rlca
	dec e
	rlca
	rst 8
	ld a,e
	add hl,bc
	rst 8
	ccf
	ld h,l
	ld a,e
	push bc
	dec b
	sbc a,d
	ld b,e
	ld d,076h
	ld bc,0283dh
	dec d
	ld a,(0075bh)
	ld b,c
	ld c,(hl)
	jp nz,02ce1h
	inc a
	ld (hl),h
	sbc a,(hl)
	jp nc,l484ch
	ld (bc),a
	ld c,b
	jp po,0cd14h
	ld h,c
	or 02ch
	dec a
	inc d
	xor h
	inc hl
	inc d
l5fbch:
	add a,b
	ld b,h
	jr z,$+7
	inc hl
	inc hl
	djnz l5fbch
	call pe,036dbh
	ld (hl),a
	ld de,004d9h
	add hl,de
	ld a,(hl)
	sbc hl,de
	inc hl
	ex af,af'
	ld a,(de)
	ld c,(hl)
	pop bc
	ld b,029h
	out (08bh),a
	jp nz,08919h
	jp z,017e3h
	ld c,a
	sub e
l5fe0h:
	sub (hl)
	cp e
	jr nz,l5ffbh
	ld a,(00616h)
	jr z,$+11
	inc b
	dec a
	ld d,0fdh
	ld a,0eeh
	xor 080h
	neg
	add a,c
	ld (hl),a
	inc hl
	ld de,08278h
	ld (hl),a
	cp a
l5ffbh:
	xor h
	jr nz,l5fe0h
	sbc a,b
	ld c,a
	dec b
	ld (hl),08dh
	jp nc,02822h
	rrca
	cp e
	inc hl
	ex af,af'
	pop bc
	rst 0
	ld a,(de)
	rlca
	inc b
	ld b,08ch
	jp p,00dc7h
	nop
	dec c
	add a,(hl)
	ld b,l
	or l
	ret nz
	ld (de),a
	inc bc
	ld (de),a
	ret po
	defb 0edh ;next byte illegal after ed
	ld e,h
	ld e,a
	sub c
	ret z
	pop hl
	inc (hl)
	ld (bc),a
	inc de
	ret po
	ld a,(bc)
	ld de,0c8fch
	nop
	ld bc,01200h
	ld b,0c8h
	ld a,(de)
	call m,0d708h
	ld b,022h
	ld b,02dh
	ld hl,(01c06h)
	ld bc,0324eh
	dec c
	cp b
	ld a,(0390dh)
	ld d,b
	ld b,d
	dec c
	ld c,h
	ld c,d
	ld b,0fch
	ld b,072h
	ld d,d
	ld b,05ah
	call nz,00806h
	ld b,062h
	push hl
	ld b,06ah
	ld b,0a3h
	ld bc,0726eh
	dec c
	sub a
	ld a,d
	dec c
	inc bc
	or b
	ld bc,0e74ch
	or c
	ld d,d
	ret m
	ld l,b
	ld bc,003c6h
	ld (bc),a
	dec bc
	ld sp,0036ch
	or d
	dec bc
	adc a,h
	inc bc
	inc bc
	ld b,h
	inc b
	dec e
	ld bc,01d4dh
	ld bc,l5375h
	push hl
	rra
	inc d
	ld bc,01f51h
	dec e
	ld bc,06d41h
	dec e
	ld bc,001b3h
	ld l,a
	rra
	ld e,l
	dec e
	adc a,(hl)
sub_6094h:
	pop hl
	or e
	jr l60feh
	cp c
	and c
	ld b,0b8h
	add a,b
	rst 20h
	ld sp,0b511h
	ld e,d
	dec b
	ld a,(bc)
	dec b
	jp 0050ch
	ld d,e
	ld a,(l4cc6h)
	and b
	and c
	dec b
	cpl
	ld a,(02e3ah)
	add a,082h
	ret nc
	inc b
	ld (0c211h),a
	call nc,sub_43c9h
	dec d
	inc b
	jr nc,$+52
	add hl,de
	add hl,bc
	ld b,d
	dec l
	jp nz,03e3ah
	inc d
	sub d
	jp (hl)
	cp e
	ld c,c
	dec b
	inc d
	dec b
	inc h
	ld b,b
	dec b
	jr l60dah
	ld b,c
	sub l
	dec b
	inc l
	dec b
l60dah:
	add a,d
	inc de
	cp d
	ld c,d
	inc bc
	ld a,(0268dh)
	xor h
	add a,d
	inc bc
	cp 000h
	jp z,004dbh
	ld a,(bc)
	rst 38h
	jp nz,02f04h
	cp a
	inc b
	ld c,c
	ld (l6e9ah),hl
	jr nc,$-85
	rst 10h
	ld b,b
	defb 0ddh,053h,014h ;illegal sequence
	xor d
	daa
l60feh:
	ld b,e
	ld c,009h
	djnz l6111h
	or b
	ld c,0b2h
	ret z
	ld d,d
	ret nz
	ld e,c
	dec (hl)
	and l
	xor (hl)
	ld l,0f0h
	ld c,h
	ld e,e
l6111h:
	call z,sub_5558h
	ld l,(hl)
	ld b,c
	ld h,h
	ld h,c
	ld h,(hl)
	ld e,(hl)
	ld e,e
	ld b,a
	adc a,b
	ld sp,09186h
	add a,h
	sub c
	add a,d
	adc a,h
	ret
	ld l,e
	ld e,d
	add a,a
	xor a
	inc de
	ld a,(09d53h)
	ld d,b
	ret pe
	ld l,022h
	jp nz,l6418h
	ei
	dec l
	adc a,d
	adc a,d
	rst 0
	ld b,c
	jp z,02f81h
	or a
	and e
	cp 0a4h
	ld b,b
	ld l,l
	cpl
	cp 002h
	jr nz,$-52
	ld e,c
	inc b
	inc bc
	jp z,02f45h
	and e
	ld d,l
	sbc a,a
	add a,c
	ld hl,0762ch
	call c,0a669h
	cp b
	ei
	ld (098d3h),a
	ld l,c
	cp c
	jr c,$+63
	ld hl,01318h
	inc hl
	out (083h),a
	ld hl,01314h
	jp nc,038edh
	inc a
	ld hl,01310h
	sub e
	inc hl
	ld a,c
	ld e,(hl)
	jp c,01911h
	rst 30h
	adc a,d
	adc a,c
	and e
	rrca
	add a,h
	ld b,l
	jp z,02f99h
	call pe,00c96h
	dec e
	adc a,0e2h
	ld b,(hl)
	defb 0fdh,002h,010h ;illegal sequence
	jp z,03087h
	ld a,(0cc37h)
	rst 28h
	ld c,b
	sbc a,a
	jp z,0b611h
	rlca
	ret nz
	djnz $-94
	cpl
	ld de,0cd02h
	ld e,(hl)
	ld bc,0da38h
	rst 20h
	djnz l6222h
	ld (de),a
	djnz $+5
	cp 0c8h
	jp c,03004h
	add hl,sp
	ld l,d
	cp d
	xor d
	rrca
	ld (hl),l
	ld a,(l5291h)
	adc a,c
	ld l,h
	ld b,d
	adc a,h
	add a,b
	cp d
	or (hl)
	dec b
	ld d,d
	ccf
	dec b
	adc a,c
	adc a,d
	ld b,b
	dec b
	adc a,h
l61c8h:
	ld d,c
	ld b,c
	call po,sub_472ah
	ld b,087h
	ld c,a
	add a,a
	add a,c
	add a,b
	or h
	ld hl,(0fa8dh)
	ld hl,(0c4f0h)
l61dah:
	add a,(hl)
	and b
	xor h
	and (hl)
	sub e
	xor h
	call pe,03023h
	push hl
	inc hl
	nop
	call 02d6eh
	jr nc,$-29
	sbc a,c
	inc l
	ld (01a4eh),hl
	add hl,sp
	ld l,023h
	ld a,(bc)
	jp nc,l4a2fh
	jr nc,l61dah
	dec l
	rra
	dec bc
	ld (l56dah),a
	dec bc
	ld e,l
	push hl
	rla
	ld h,d
	dec bc
	sub e
	call z,sub_6094h
	call z,003d1h
	inc hl
	ret
	call nc,0f02bh
	ld e,068h
	adc a,(hl)
	jp po,03e88h
	adc a,e
	rst 20h
	jp c,l5ba7h
	cp h
l621dh:
	xor l
	ld c,l
	ld d,e
	sbc a,e
	dec sp
l6222h:
	add a,0a9h
l6224h:
	daa
	inc d
	xor b
	ld h,e
	di
	ld d,c
	ld b,0f3h
	ret p
	sub c
	pop de
	jr nc,l6224h
	defb 0edh ;next byte illegal after ed
	djnz l61c8h
	ret po
	and b
	cp 0d2h
	jp c,030f3h
	adc a,a
	jp (hl)
	or (hl)
	add a,a
	cp (hl)
	add a,b
	ret
	call 03395h
	adc a,086h
	ld d,042h
	inc h
	call nc,0ae28h
	ld sp,0113eh
l6250h:
	jr c,l6284h
	ld d,033h
	ld a,(de)
	jp nz,l7aa1h
	sub 025h
	ex af,af'
	ld b,a
	push de
	ld b,c
	add a,d
	ld a,01eh
	jp c,01835h
	ld b,00ah
	ld (0316fh),a
	ld h,c
	dec hl
	add a,b
	or d
	ld h,e
l626eh:
	adc a,b
	inc b
	inc b
	jp nc,01349h
	add a,d
	adc a,04dh
	inc de
	inc e
	jr $+21
	add hl,bc
	jr nz,l6250h
	ld e,l
sub_627fh:
	inc de
	and b
	ld e,h
	sbc a,d
	and h
l6284h:
	and d
	jp nz,0316eh
	sbc a,l
	ld d,a
	ld a,(de)
	ld c,h
	xor l
	ld sp,0a2a8h
	ret
l6291h:
	or l
	dec b
	ld c,(hl)
	sub b
	add a,l
	add hl,de
	sub e
	ret c
l6299h:
	sub 02dh
	ld (0c0afh),a
	ld h,(hl)
	jp (hl)
	or l
	xor (hl)
	dec a
	ld h,e
	pop bc
	ret nz
	rra
	ld h,e
	dec c
	jr nz,l626eh
	call nz,sub_7831h
	nop
	add hl,hl
	sbc a,h
	ld de,00502h
	inc (hl)
	inc b
	dec b
	ld a,006h
	bit 0,h
	add a,(hl)
	ei
	ld a,(de)
	ret
	ret nz
	sub l
	pop de
	or c
	jp c,036c2h
	add a,b
	ld c,d
	add hl,hl
	sub h
	inc l
	ld b,0ebh
	ld e,a
	ld a,(bc)
	ex af,af'
	ld a,034h
	call pe,03ec2h
	ld b,b
	xor 039h
	daa
	ld bc,0bb47h
	ld de,0dd3ch
	xor b
	ld bc,088c9h
	inc de
	add a,b
	exx
	defb 0ddh,00fh,077h ;illegal sequence
	jr l62fah
	push de
	add hl,de
	ex de,hl
	sbc a,c
	sub e
	ld d,a
	ld b,a
	ld (02106h),a
	rst 0
	inc h
	ld a,e
	adc a,c
	ld h,h
l62fah:
	ld de,08581h
l62fdh:
	ld a,(de)
	cp e
	jp nc,0166ah
	add hl,sp
	ld (03d93h),a
	ld a,(bc)
	ld c,h
	ld h,h
	ld d,a
	jp po,0053dh
	ld c,002h
	ld a,e
	jp 01adfh
	adc a,b
	jr c,l6299h
	ret nz
	ld b,h
	cp 0fah
	jp c,0d97ch
	rla
	ld b,l
	ld c,e
	ld d,0a3h
	ld c,a
	ld a,005h
	dec b
	ld d,04bh
	rst 20h
	dec c
	sla e
	ld hl,045f2h
	ld e,a
	jp (hl)
	sbc a,h
	sub a
	ld e,e
	ld b,c
	xor c
	and b
	ld b,016h
	jr nc,l62fdh
	cp d
	ld l,b
	ld (0c3eah),a
	xor h
	inc b
	ld sp,hl
	ld l,016h
	inc l
	ld a,d
	ld d,05dh
	jp m,00116h
	add a,(hl)
	ld (hl),a
	cp 014h
	jp c,01af1h
	ld (de),a
	and 0d2h
	inc b
	inc hl
	adc a,c
	inc (hl)
	jp z,086d1h
	rlca
	ld (hl),d
	dec hl
	ld a,e
	adc a,d
	rlc l
	ld a,(01152h)
	dec a
	add hl,hl
	jr nz,$+14
	inc h
	adc a,l
	djnz l6393h
	ld h,b
	call nc,0c524h
	call 01c5fh
	ld bc,0d0c1h
	push de
	and b
	nop
	add hl,bc
	ld (hl),b
	sla c
	ret nz
	ld l,l
	add hl,bc
	ld (hl),006h
	ret
l6386h:
	call 000c2h
	jr nc,l63a3h
	dec a
	defb 0edh ;next byte illegal after ed
	defb 0edh ;next byte illegal after ed
	dec a
	jr $+50
	ld a,b
	nop
l6393h:
	nop
	rlca
	ld a,b
	ld a,(hl)
	ld a,(hl)
	ld a,b
	add hl,bc
	add hl,sp
	sub h
	halt
	ret z
	sub l
	ld b,h
	pop bc
	sbc a,(hl)
	add a,(hl)
l63a3h:
	scf
	jp nz,03004h
	ld b,c
	ld l,b
	ld b,e
	inc sp
l63abh:
	call nz,0e985h
	jp 0be42h
	dec h
	sub c
	ret nc
	inc b
	ld hl,l79e0h
	cp l
	adc a,09eh
	ex af,af'
	or a
	ex de,hl
	nop
	ld b,c
	jp z,03356h
	ld hl,03301h
	ret p
	ret p
	call sub_447dh
	dec hl
	inc hl
	ld l,h
	pop bc
	or l
	add a,h
	ld l,c
	pop bc
	ret po
	ld b,l
	ld (02c6ah),a
	cp e
	ex (sp),hl
	rra
	or 060h
	jp nc,03372h
	cpl
	inc b
	ld (0c16bh),a
	rlca
	ld c,a
	ret nc
	and h
	xor h
	adc a,c
	inc (hl)
	ret nc
	ld h,e
	adc a,e
	add a,l
	dec (hl)
	sbc a,(hl)
	call pe,0325ch
	ld de,03649h
	ld a,02fh
	ld (hl),0c2h
	sub d
	ld d,069h
	sub 073h
	ld d,b
	push af
	jr nz,l6444h
	inc (hl)
	ld a,(016afh)
	sub a
	ld bc,02ffeh
	jp z,033b2h
	add a,b
	adc a,c
	inc c
	jr nz,l6436h
	ld (bc),a
	add hl,de
	ld b,(hl)
l6418h:
	inc hl
	ld c,(hl)
	ld d,h
	ld a,(04135h)
	inc bc
	cp 028h
	rrca
	jp c,0de47h
	push bc
	ld (l4e27h),a
	jr nc,l63abh
	ld d,d
	ld (l4a94h),a
	inc sp
	sub d
	ld e,b
	ex af,af'
	ld a,(bc)
	exx
	ld d,(hl)
l6436h:
	ld de,09e1fh
	add a,l
	exx
	ld a,(00d12h)
	adc a,h
	ret nc
	jr nz,$+104
	sub b
	rlca
l6444h:
	ld l,e
	ld e,h
	ld b,c
	add hl,de
	ret z
	ld (de),a
	ld c,l
l644bh:
	call 03aceh
	inc c
	sub 005h
	ld a,(de)
	rst 28h
	dec d
	ld c,0e1h
	ld a,b
	ld a,(bc)
	ld c,0a3h
	xor a
	xor d
	ld h,h
	adc a,a
	and h
	call p,01292h
	ret
	sbc a,b
	and e
	jp z,035a7h
	ld (0fe02h),hl
	dec b
	jp nz,l485ah
	inc hl
	ld h,a
	pop bc
	push de
	ld d,l
	ld l,b
	dec b
	dec hl
	ld a,(de)
	sub c
	call sub_4423h
	jp 07740h
	dec (hl)
	cp 030h
	jp z,08088h
	inc b
	ld sp,096cah
	dec (hl)
	and 003h
	ld de,0cdc0h
	dec hl
	cpl
	ld h,l
	dec (hl)
	and d
	ld h,c
	cp 080h
	pop bc
	ld (de),a
	inc (hl)
	ld c,l
	or c
	ld a,(bc)
	or 065h
	jp 02180h
	xor e
	inc (hl)
	add hl,de
	sub (hl)
	cp d
	ld (0b8fdh),a
	sbc a,b
	ld h,a
	inc (hl)
	adc a,c
	ld a,06ch
	inc (hl)
	add hl,bc
	jr l64bdh
l64b4h:
	ret c
	call nz,020c0h
	nop
	ld c,01fh
	ld a,e
	dec d
l64bdh:
	dec de
	cp a
l64bfh:
	rra
	rlca
	rrca
	ld a,e
	cp a
	cp 06fh
	cp l
	add a,b
	add a,(hl)
	ld h,b
	call nc,0feeeh
	call p,0f000h
	dec hl
	call p,0daffh
	ld a,d
	ret p
	or 000h
	ld (hl),b
	add a,b
	ld c,b
	nop
	ld b,00fh
	adc a,e
	rra
	sbc a,b
	rst 30h
	ccf
	rra
	sub b
	sbc a,h
	ld e,00ch
	halt
	djnz l64bfh
	nop
	ld b,h
	jp po,0f0f0h
	ret po
	add a,b
	jp p,0760ah
	ret nc
	ld a,b
	ret p
	ld a,b
	ld c,054h
	inc bc
	and h
	inc b
	nop
	ld a,(de)
	jr l6505h
	scf
	ccf
	inc de
l6505h:
	rlca
	ld (de),a
	sbc a,(hl)
	defb 0ddh,040h,064h ;illegal sequence
	jp p,00c78h
	xor b
	cp b
	ld b,042h
	sub b
	cp b
	djnz l6518h
	ld c,0d8h
l6518h:
	cp b
l6519h:
	inc l
	djnz l6529h
	ld bc,03b0dh
	ld hl,00c0ch
	ld l,b
	add a,b
	ld c,040h
	nop
	ret nz
	nop
l6529h:
	ret po
	jp (hl)
	ret nz
	inc l
	call z,0c0e0h
	djnz l64b4h
	dec c
	ld hl,03566h
	ld a,(hl)
	add a,c
	ld h,l
	cp 0ech
	ld b,h
	jr c,$+55
l653eh:
	jp l7788h
	or h
	ret
	add a,(hl)
l6544h:
	jp po,l5af5h
	adc a,d
	ret m
	sub b
	ld a,d
	ld a,032h
	ld l,b
	ret nz
	dec a
	ld c,00bh
	nop
	ld e,00eh
	call nc,sub_7a4fh
	ld (bc),a
	call nc,03c48h
	nop
	add iy,bc
	cp 0feh
	defb 0fdh,000h,093h ;illegal sequence
	inc b
	ld hl,074d0h
	rst 28h
	ld l,c
	ld d,l
	dec (hl)
	xor 018h
	sbc a,l
	ld (de),a
	dec hl
	jp 08773h
	sbc a,h
	ld b,h
	ld (hl),l
	ld b,b
	ld e,0d1h
l657ah:
	sub e
	ld c,b
	ld e,0cch
	and c
	pop af
	ret po
	jr z,l6544h
	sub d
	cp b
	ret po
	ld e,h
	and a
	ret z
	inc h
	sbc a,09bh
	add a,c
	ld a,h
	cp h
	scf
	ld d,c
	ld a,(08ff0h)
	ld (hl),d
	ret po
	inc h
	and c
	ex de,hl
	and 0dch
	ld d,c
	ld a,(de)
	ld (hl),0b5h
	add hl,hl
	ld (de),a
	ld d,c
	jp m,0e4c0h
	inc bc
	jp nz,0f645h
	or e
	add a,(hl)
	ld e,h
l65ach:
	dec hl
	ld l,c
	sub d
	adc a,h
	ld b,062h
	ld b,a
	ld (0c080h),a
	sbc a,l
	daa
	rst 18h
	adc a,0dah
	ld (hl),l
	ld l,e
	inc hl
	sub c
	defb 0ddh,098h,077h ;illegal sequence
	jr z,l660ah
	ld (hl),0e3h
	out (0d6h),a
	jr l65eeh
	push bc
l65cbh:
	sla l
	rst 0
	inc sp
	ld a,l
	ld e,l
	add hl,hl
	jp nc,0cb0ah
	jr z,l65ach
	ld e,d
	or h
	adc a,c
l65dah:
	dec b
	inc b
	sbc a,01dh
	inc bc
	nop
	cp h
	ld (bc),a
	inc bc
	dec c
	ld (bc),a
	inc b
	ld bc,0016bh
	inc bc
	dec b
	inc bc
	adc a,0b0h
l65eeh:
	ret nz
	and b
	pop bc
	and 020h
	ld (de),a
	ret z
	ld de,0d711h
	ld sp,0df82h
	ld b,l
	add a,00ah
	ld b,a
	adc a,l
	xor b
	djnz l6652h
	exx
	nop
l6605h:
	ld b,007h
	exx
	ld a,(hl)
	dec hl
l660ah:
	cp c
	jp nc,004adh
	ld (hl),0c6h
	jr l65cbh
	jp c,l7e05h
	ld l,d
	cp b
	ld a,(bc)
	djnz l661fh
	ld d,h
	or d
	rst 30h
	exx
	ld (bc),a
l661fh:
	djnz l6605h
	ret
	dec hl
	ld a,(hl)
	dec a
	add a,l
	jp po,0c3cfh
	adc a,d
	ret po
	ld (hl),024h
	ld a,048h
	ld b,c
	ld (01108h),a
	dec bc
	nop
	add hl,de
	and h
	pop af
	rst 38h
	ret nz
	sub b
	jr l65dah
	ld h,c
	jp 09e04h
	jp 011bah
	pop af
	pop bc
	and 0b6h
	rst 20h
	sbc a,e
	jp pe,0fb88h
	and d
	adc a,c
	pop hl
	di
	ld h,(hl)
l6652h:
	add a,a
	and h
	sub d
	jp m,0eba7h
	ld e,(hl)
	add a,c
	ld de,03bd0h
	add a,06ah
	ld c,b
	add a,a
	ld bc,l77a2h
	in a,(0aeh)
	ld b,003h
	add hl,de
	ld (hl),c
	inc de
	dec a
	inc de
	call 00306h
	jr c,$-46
	ld e,h
	sbc a,c
	adc a,c
	add a,b
	rst 20h
	jr nz,l6687h
	ld (0d25eh),a
	exx
	add a,b
l667eh:
	adc a,b
	sub a
	sub l
	ld a,(08207h)
	push hl
	inc b
	ld l,(hl)
l6687h:
	nop
	ld hl,00428h
	add hl,de
	djnz l667eh
	ret
	ex af,af'
	ld (hl),001h
	ld e,004h
	ld a,h
l6695h:
	ld (l5975h),a
	scf
l6699h:
	ex (sp),hl
	dec d
	ld b,06fh
	ld h,000h
	add hl,hl
	nop
	dec sp
	ld de,095dbh
	ld a,(01014h)
	exx
	inc bc
	ld c,b
	push de
	ld e,h
	xor b
	exx
	ret c
	dec b
	add hl,de
	ld e,010h
	djnz $-69
	ret po
	jp po,09743h
	ret nz
	jr nz,$+64
	ret nz
	jp c,08202h
	scf
	ld a,0e0h
	ld (0a3aah),a
	inc h
	ld e,d
	or a
	jp nz,01428h
	ld a,0e4h
	ld b,(hl)
	xor e
	ld a,(bc)
	jp c,018b1h
	and h
	scf
	or 0b8h
	ld b,03eh
	ld l,e
	ret nc
	inc de
	ld e,c
	or 030h
	ret nc
	jr z,l6756h
	ld (bc),a
	ret nc
	jr l6695h
	pop bc
	jr nc,l6699h
	sbc a,b
	ld de,01d5ch
	jp nz,01d9ah
	or b
	dec bc
	ld a,091h
	ld sp,0154ah
	jp z,02cceh
	xor b
	xor a
	push hl
	and b
	ld c,(hl)
l6701h:
	ld de,0c1a4h
	ld bc,0e3c8h
	ldir
	sbc a,h
	pop af
	ld c,h
	and e
	rrca
	ld l,a
	rst 28h
	add a,b
	dec d
l6712h:
	ld (hl),000h
	inc hl
	djnz l6712h
	ld de,006c9h
	add a,b
	call 00a9ch
	inc bc
	ld hl,0c3a9h
	ld b,01eh
	add hl,bc
	sbc a,l
	adc a,(hl)
	ld b,a
	inc h
	add hl,bc
	ld (03816h),hl
	ld de,l6386h
	ld bc,03880h
	dec b
	ret
	ld h,h
	ret z
	xor 042h
	ld h,e
	jp z,0f204h
	ld (01cc0h),hl
	inc bc
	ld h,c
	cp (hl)
	inc bc
	nop
	inc (hl)
	inc bc
	call po,0f42ch
	inc bc
	or l
	nop
	inc de
	ld b,h
	inc bc
	adc a,b
	inc a
	ld a,(bc)
	ld bc,0e018h
l6756h:
	inc bc
	ld e,00ah
	ex af,af'
	ld h,b
	ei
	ld hl,(0033ch)
	ld b,b
	ld h,h
	ex af,af'
	ld h,b
	call m,0c852h
	inc bc
	ld e,d
	ld b,(hl)
	ex af,af'
	ld h,b
	defb 0fdh,064h ;ld iyh,iyh
	inc d
	inc bc
	ld l,(hl)
	ld a,b
	ex af,af'
	ld h,b
	cp 078h
	ld e,d
	rlca
	add a,d
	ret p
	adc a,b
	rlca
	adc a,h
	ld bc,09607h
	ld h,c
	adc a,b
	inc bc
	and b
	sub (hl)
	inc bc
	xor d
	inc a
	adc a,e
	inc hl
	or h
	ret p
	inc bc
	ld b,a
	sbc a,c
	inc bc
	xor a
	jp m,03228h
	ld c,d
	ret nc
	ld (bc),a
	dec c
	rst 20h
	cp h
	cp a
	jp po,002c1h
	ld c,c
	rla
	ld (bc),a
	ld b,h
	ld (bc),a
	ld b,002h
	inc h
	rlca
	ld (bc),a
	ex af,af'
	ld (bc),a
	inc b
	sub d
	ld (bc),a
	dec b
	ld (bc),a
	and d
	jr nz,l67fah
	add hl,bc
	dec b
	ld a,(bc)
	ld (bc),a
	ld b,l
	ld (bc),a
	ld hl,(0024ch)
	adc a,(hl)
	cp h
	ret nc
	sub d
	ld (bc),a
	ld (de),a
	ld (bc),a
	or b
	ld (bc),a
	ld c,c
	or c
	ld (bc),a
	ld h,e
	ld (bc),a
	ld d,c
	ld c,095h
	inc hl
	adc a,d
	sbc a,(hl)
	call m,032c9h
	inc l
	ld (bc),a
	inc h
	ld h,d
	ld de,011c9h
	rst 0
	sub e
	ld (bc),a
	ret z
	ld (bc),a
	sbc a,d
	ld a,024h
	ld (bc),a
	sbc a,h
	ld (bc),a
	sub (hl)
	sub d
	ld (bc),a
	sub a
	ld (bc),a
	sub l
	ld (bc),a
	ld d,d
	and h
l67ech:
	cp a
	xor h
	jp z,0ed04h
	sub d
	sbc a,b
	inc b
	rlca
	ld (0ec91h),a
	inc (hl)
	ld b,b
l67fah:
	ld e,(hl)
	inc (hl)
	sbc a,c
	ld a,d
	sub a
	dec b
	ld a,096h
	ld (0ed61h),a
	and a
	ret m
	ld h,c
	call nz,0ee86h
	jp 0064fh
	inc bc
	ld e,h
	ld (0523ah),hl
	ld b,002h
	ld sp,hl
	jr nz,l6852h
	ld d,08dh
	ld (hl),b
	ld l,e
	add hl,sp
	inc b
	dec a
	jp z,03958h
	ld (0cd0ah),a
	rla
	sbc a,c
	jr nz,l67ech
	inc c
	xor d
	ld l,b
	jp nz,03961h
	ld sp,0023eh
	ld h,(hl)
	xor a
	dec d
	call z,00606h
	add a,c
	ld b,b
	call 03b26h
	ld a,(l69d3h)
	dec h
	jp nc,0055fh
	and h
	inc bc
	add hl,de
	ld a,004h
	inc b
	nop
	ret
	dec h
	dec h
	ld a,(0f3e0h)
	nop
l6852h:
	or 002h
	di
	out (099h),a
	ld a,081h
	ei
	ret nz
	inc b
	rst 28h
	ld (0f3e4h),a
	sub 00ch
	add a,l
	inc bc
	ld b,(hl)
	ccf
	jp pe,006ffh
	inc sp
	adc a,e
	inc bc
	cp c
	add a,(hl)
	push hl
	dec d
	or b
	add a,(hl)
	ld (00321h),hl
	dec d
	ld c,d
	ld (0939ah),hl
	add a,e
	jr nz,l689eh
	nop
	xor b
	inc b
	inc d
	dec b
	add a,h
	ld (hl),b
	add hl,sp
	ld c,00eh
	sbc a,e
	ld c,075h
	ld c,014h
	sbc a,b
	cp l
	add a,b
	jp 00148h
	sbc a,b
	jr nz,l68adh
	otir
	ei
	call z,00ee1h
	inc (hl)
	djnz l68ach
l689eh:
	add a,e
	ld c,b
	ret po
	inc l
	rlca
	ld hl,l4070h
	dec sp
	jp 04ae5h
	ld (bc),a
	add a,d
l68ach:
	or e
l68adh:
	ld (hl),l
	ld c,0cah
	cpl
	ld l,l
	ret nz
	dec e
	cp e
	ld c,b
	ld b,b
	ld c,l
	ld a,b
	ld b,00bh
	ex af,af'
	call 02025h
	adc a,d
	ld e,e
	add a,l
	ld h,d
	rst 30h
	push bc
	add hl,de
	call z,03d25h
	dec c
	ld d,d
	and b
	add hl,bc
	ld c,0afh
	ld (hl),a
	dec c
	call m,03623h
	halt
	ld h,d
	cp (hl)
	sub b
	sbc a,b
	add a,b
	ret z
	ld h,d
	inc e
	jp (hl)
	di
	ld b,036h
	dec bc
	inc hl
	ld (hl),009h
	ld (bc),a
	ld (bc),a
	ld hl,03a7fh
	call 01a03h
	ld (hl),b
	adc a,(hl)
	dec b
	sbc a,l
	pop hl
	dec b
	xor h
	dec b
	ret nz
	cp e
	ld a,(0bdc3h)
	dec b
	xor 0a5h
	ld (bc),a
	or h
	nop
	jr z,l6902h
l6902h:
	sbc a,c
	ld bc,08bc0h
	add hl,bc
	rst 18h
	inc bc
	ld h,d
	xor e
	ld bc,000e1h
	ld de,08d15h
	sub b
	ld a,(de)
	or (hl)
	rla
	ret pe
	xor c
	sbc a,a
	ld b,01dh
	call z,0ea00h
	ld b,l
	nop
	xor c
	sub 067h
	ld c,000h
	in a,(000h)
	ex de,hl
	inc bc
	ld (hl),0c6h
	dec e
	inc h
	jp m,02c1ah
	ld a,(01365h)
	jp c,082c2h
	or d
	adc a,d
	ld (hl),b
	pop hl
	ld a,(0f510h)
	ld a,(00cb5h)
	add a,b
	ld b,a
	pop af
	ei
	out (0dfh),a
	ld h,b
	srl a
	ld (09357h),a
	rst 30h
	rst 8
	pop de
	djnz $-33
	add a,b
	inc d
	cp (hl)
	ret c
	inc c
	sub 01ch
	cp (hl)
	ret nc
	ret pe
	ld h,b
	inc hl
	cp (hl)
	ld e,e
	dec hl
	ex af,af'
	call z,0c618h
	ld e,008h
	ret c
	ld l,h
	inc hl
	exx
	ld b,00ch
	ld (hl),a
	dec hl
	ld de,0ca07h
	ld bc,0ff36h
	xor a
	sbc hl,de
	add a,(hl)
	ld c,c
	xor e
	ld (hl),004h
	dec h
	ex af,af'
	inc b
	rra
	jp p,0f624h
	call 0c5d9h
	jr l69b6h
	ret nc
	inc bc
	ld (01376h),a
	ld a,(009dah)
	sub e
	sub e
	rlca
	add a,047h
	ex af,af'
	inc c
	ld h,c
	push hl
	ld d,032h
	push af
	ld (bc),a
	inc b
	dec b
	rla
	ret
	di
	ret z
	ret po
	and 0bfh
	ld (004a7h),a
	jp z,00362h
	ld a,(00ddfh)
	inc a
	pop af
	or 0a8h
	ld l,e
	rst 18h
	rrca
	add a,b
l69b6h:
	rrca
	ld sp,0e41dh
	ret pe
	scf
	rra
	add a,(hl)
	ld e,h
	ld h,l
	sbc a,l
	ld b,08ch
	add a,d
	ld a,(de)
	ld l,e
	jp pe,08708h
	ex af,af'
	ld a,(de)
	ex de,hl
	ex af,af'
	adc a,h
	xor b
	inc bc
	xor (hl)
	ld c,(hl)
	pop af
l69d3h:
	ld sp,hl
	or l
	sub d
	add hl,bc
	or 009h
	xor c
	sub a
	rst 30h
	jp nz,03bfdh
	cp d
	ld d,b
	call 0140ch
	inc a
	ld a,00ch
	sbc a,a
	jp nc,09c00h
	sbc a,d
	ld d,d
	rrca
	sbc a,c
	ret p
	ld h,c
	or 078h
	ld b,d
	ld a,a
	add a,c
	rst 20h
	rst 38h
	and 0ddh
	ld (03ce7h),a
	xor h
	adc a,b
	dec c
	ld h,0e8h
	rst 38h
	ld a,e
	or 0e4h
	dec c
	ret pe
	rrca
	ld d,e
	adc a,c
	inc bc
	and (hl)
	ld c,e
	defb 0fdh,057h,0b2h ;illegal sequence
	sbc a,d
	ld bc,092c0h
	push de
	ld c,(hl)
	ld bc,0fe10h
	dec a
	jp nz,03c10h
	ret
	nop
	rst 38h
	rst 38h
	nop
l6a23h:
	jp 0c6d7h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00005h
	nop
	ld bc,000c0h
	nop
	ret nz
	inc bc
	nop
	nop
	nop
	nop
	dec b
	nop
	dec b
	nop
	nop
	nop
	sbc a,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	nop
	nop
	nop
	sbc a,b
	ld (0c5edh),a
	and 001h
	ld (0c5eeh),a
	xor a
	ld (0c416h),a
	ld a,b
	ld (0c5efh),a
	ld a,0fah
	ld (0c418h),a
	ld (0c423h),a
	ld (0c409h),a
	call 0c451h
	call 0c45ah
	exx
	ld hl,0c403h
	call 00103h
	exx
	ret
	ld a,(hl)
	exx
	or a
	jp z,0c48eh
	sub 041h
	ld d,a
	add a,a
	add a,d
	ld d,000h
	ld e,a
	ld hl,0c4e4h
	add hl,de
	ld a,(hl)
	ld (0c412h),a
	inc hl
	ld a,(hl)
	ld (0c414h),a
	inc hl
	ld a,(hl)
	ld (0c41ah),a
	ld d,a
	ld hl,0c412h
	call 00103h
	ld a,(0c416h)
	add a,d
	inc a
	ld (0c416h),a
	exx
	inc hl
	jp 0c45ah
	ld a,(0c5edh)
	ld (0c427h),a
	ld a,(0c416h)
	ld (0c429h),a
	srl a
	ld b,a
	ld a,080h
	sub b
	ld (0c425h),a
	ld a,(0c5eeh)
	or a
	jp z,0c4b0h
	ld a,(0c5efh)
	ld (0c425h),a
	ld hl,0c421h
	jp 00103h
	ld b,a
	ld b,c
	ld c,l
	ld b,l
	ld e,e
	ld c,a
	ld d,(hl)
	ld b,l
	ld d,d
	nop
	ld b,e
	ld c,a
	ld c,(hl)
	ld d,h
	ld c,c
	ld c,(hl)
	ld d,l
	ld b,l
	ld e,e
	ld d,h
	ld c,a
	ld e,e
	ld b,(hl)
	ld h,c
	nop
	ld h,(hl)
	ld b,e
	ld c,a
	ld c,(hl)
	ld d,h
	ld c,c
	ld c,(hl)
	ld d,l
	ld b,l
	ld h,(hl)
	nop
	ld b,e
	ld d,d
	ld b,l
	ld b,h
	ld c,c
	ld d,h
	ld d,e
	ld e,e
	ld e,a
	nop
	nop
	ret nz
	rlca
	rlca
	ret nz
	rlca
	ld c,0c0h
	rlca
	dec d
	ret nz
	rlca
	dec de
	ret nz
	ld b,021h
	ret nz
	dec b
l6b19h:
	ld h,0c0h
	rlca
	dec l
	ret nz
	rlca
	ld (002c0h),a
	ld (hl),0c0h
	ld b,03ch
	ret nz
	rlca
	ld b,e
	ret nz
	ld b,049h
	ret nz
	rlca
	ld c,a
	ret nz
	rlca
	ld d,(hl)
	ret nz
	rlca
	ld e,l
	ret nz
	rlca
	ld h,h
	ret nz
	rlca
	ld l,e
	ret nz
	rlca
	nop
	push bc
	rlca
	rlca
	push bc
	ld b,00dh
	push bc
	rlca
	inc d
	push bc
	rlca
	dec de
	push bc
	rlca
	ld (007c5h),hl
	add hl,hl
	push bc
	rlca
	jr nc,l6b19h
	ld b,068h
	push bc
	inc b
	ld (hl),0c5h
	ld b,03ch
	push bc
	inc bc
	ccf
	push bc
	dec b
	ld b,h
	push bc
	dec b
	ld c,c
	push bc
	dec b
	ld c,(hl)
	push bc
	ld b,054h
	push bc
	dec b
	ld e,c
	push bc
	dec b
	ld e,(hl)
	push bc
	dec b
	ld h,e
	push bc
	dec b
	cpl
	ret nz
	inc bc
	scf
	pop bc
	ld (bc),a
	ld a,(0c5e5h)
	inc a
	and 003h
	ld (0c5e5h),a
	ret nz
	ld a,(0c5e3h)
	add a,011h
	ld (0c5e3h),a
	ld a,(0c5e4h)
	inc a
	ld (0c5e4h),a
	ld hl,0c5e3h
	ld bc,0029ah
	ld a,00bh
	call 002deh
	ld hl,0c5e3h
	ld bc,0029ah
	ld a,00eh
	call 002deh
	ld a,(0c5e4h)
	cp 007h
	ret nz
	xor a
	ld (0c5eah),a
	ld a,001h
	ld (0c5ech),a
	ret
	ld a,(0c5e9h)
	inc a
	ld (0c5e9h),a
	ret nz
	xor a
	ld (0c5ech),a
	ld a,001h
	ld (0c5ebh),a
	ret
	ld a,(0c5e8h)
	inc a
	and 003h
	ld (0c5e8h),a
	ret nz
	ld a,(0c5e6h)
	sub 011h
	ld (0c5e6h),a
	ld a,(0c5e7h)
	dec a
	ld (0c5e7h),a
	ld hl,0c5e6h
	ld bc,0029ah
	ld a,00bh
	call 002deh
	ld hl,0c5e6h
	ld bc,0029ah
	ld a,00eh
	call 002deh
	ld a,(0c5e7h)
	or a
	ret nz
	xor a
	ld (0c5ebh),a
	ret
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,000h
l6c15h:
	push bc
	call 0fd9fh
	pop bc
	djnz l6c15h
	ret
	ld a,(0c3f5h)
	out (0a8h),a
	ld a,038h
	call 0cbcch
	ld a,(l4000h)
	cp 0ffh
	jp z,0c6c6h
	ld hl,l4000h
	ld bc,00023h
	ld a,0ffh
	add hl,bc
	cp (hl)
	jp nz,0c614h
	xor a
	sbc hl,bc
	ld de,0c1b8h
	ldir
	dec hl
	ld a,(hl)
	cp 0ffh
	jp z,0c6c6h
	ld a,(0c3f2h)
	out (0a8h),a
	ret
	ld a,(0c3f5h)
	out (0a8h),a
	ld a,038h
	call 0cc4eh
	ld a,(l4fdch)
	cp 0ffh
	jp z,0c66ah
	ld a,0aah
	ld (l4555h),a
	ld a,055h
	ld (l42aah),a
	ld a,080h
	ld (l4555h),a
	ld a,0aah
	ld (l4555h),a
	ld a,055h
	ld (l42aah),a
	ld a,030h
	ld (l4000h),a
	ld b,000h
	ei
l6c84h:
	halt
	djnz l6c84h
	ld hl,l4000h
	jp 0c677h
	ld hl,03fddh
	ld bc,00023h
	ld a,0ffh
	add hl,bc
	cp (hl)
	jp nz,0c672h
	ex de,hl
	ld hl,0c1b8h
	ld bc,00023h
	call 0c687h
	ld a,(0c3f2h)
	out (0a8h),a
	ret
	ld a,0aah
	ld (l4555h),a
	ld a,055h
	ld (l42aah),a
	ld a,0a0h
	ld (l4555h),a
	ld a,(hl)
	ld (de),a
l6cbbh:
	ld a,(de)
	cp (hl)
	jr nz,l6cbbh
	inc hl
	inc de
	dec c
	jp nz,0c687h
	ret
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	djnz $+17
	ld hl,0c6a3h
	ld de,0c1b8h
	ld bc,00023h
	ldir
	ld a,(0c3f2h)
	out (0a8h),a
	ret
	ld hl,0caf0h
	ld (00039h),hl
	ld a,0c3h
	ld (00038h),a
	call 002f8h
	ld hl,0c80fh
	call 002e9h
	ld a,(0fbebh)
	and 0e0h
	cp 0e0h
	jp z,0c8ddh
	call 0c5fah
	ld hl,0f3e9h
	ld (hl),00fh
	inc hl
	ld (hl),00fh
	inc hl
	ld (hl),00fh
	call 005cfh
	ld hl,0c82fh
	call 00103h
	ld a,(0c3f5h)
	out (0a8h),a
	ld a,011h
	call 0cc10h
	ld hl,0a08eh
	xor a
	ld de,00000h
	call 001fdh
	ld hl,0d26eh
	call 00103h
	call 005cfh
	ld a,(0f3e0h)
	and 0bfh
	ld (0f3e0h),a
	out (099h),a
	ld a,081h
	out (099h),a
	ld hl,0c7ceh
	call 002e9h
	ld a,012h
	call 0cc10h
	ld hl,08840h
	scf
	ld de,00000h
	call 001fdh
	ld a,(0c1fdh)
	and 003h
	ld d,000h
	ld e,000h
	jp z,0c76dh
	dec a
	ld d,069h
	ld e,000h
	jp z,0c76dh
	dec a
	ld d,000h
	ld e,039h
	jp z,0c76dh
	dec a
	ld d,069h
	ld e,039h
	ld a,d
	ld (0c7b0h),a
	ld a,e
	ld (0c7b2h),a
	ld hl,0c7b0h
	call 00103h
	ld a,(0f3e0h)
	or 042h
	ld (0f3e0h),a
	out (099h),a
	ld a,081h
	out (099h),a
	call 002f8h
	ld a,(0fbeah)
	bit 6,a
	jp z,0c79fh
	ld a,(0fbe9h)
	bit 3,a
	jp z,0c7adh
	jp 0c789h
	ld hl,0c7eeh
	ld de,0c1b8h
	ld bc,00021h
	ldir
	jp 0c868h
	jp 0c868h
	nop
	nop
	nop
	ld (bc),a
	ld c,h
	nop
	ld d,b
	nop
	ld l,c
	nop
	add hl,sp
	nop
	nop
	nop
	sub b
	nop
	nop
	ld hl,00000h
	nop
	ret nz
	inc bc
	ld a,l
	nop
	ld a,(bc)
	nop
	nop
	nop
	sub b
	ld bc,l6701h
	rlca
	dec d
	inc bc
	ld (hl),004h
	inc de
	ld (bc),a
l6dfbh:
	ld b,(hl)
	dec b
	ld h,003h
	inc d
l6e00h:
	ld (bc),a
	ld h,003h
	inc d
	ld (bc),a
	ld h,004h
	inc d
	inc bc
	ld (de),a
	ld bc,00657h
	inc d
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00400h
	rst 38h
	ld bc,l53c0h
	ld b,l
	ld c,h
	ld b,l
	ld b,e
	ld d,h
	ld e,e
	ld d,e
	ld b,e
	ld b,e
	ld e,e
	ld d,(hl)
	ld c,a
	ld c,h
	ld d,l
	ld c,l
	ld b,l
	ld h,a
	ld h,a
	ld h,a
	nop
	ld d,e
	ld b,l
	ld c,h
	ld b,l
	ld b,e
	ld d,h
	ld e,e
	ld d,b
	ld d,e
	ld b,a
	ld e,e
	ld d,(hl)
	ld c,a
	ld c,h
	ld d,l
	ld c,l
	ld b,l
	ld h,a
	ld h,a
	ld h,a
	nop
	ld hl,0c80fh
	call 002e9h
	ld hl,0f3e9h
	ld (hl),00bh
	inc hl
	ld (hl),009h
	inc hl
l6e9ah:
	ld (hl),009h
	call 005cfh
	ld a,r
	and 007h
	ld b,026h
	jp z,0c8ach
	dec a
	ld b,027h
	jp z,0c8ach
	dec a
l6eafh:
	ld b,02bh
	jp z,0c8ach
	dec a
	ld b,02ch
	jp z,0c8ach
	dec a
	ld b,02dh
	jp z,0c8ach
	dec a
	ld b,030h
	jp z,0c8ach
	dec a
	ld b,031h
	jp z,0c8ach
	dec a
	ld b,021h
	ld a,b
	ld (0c3d2h),a
	ld a,050h
	ld hl,0c83eh
	call 0c430h
	ld a,078h
l6eddh:
	ld hl,0c853h
	call 0c430h
	ld a,(0c3f4h)
	out (0a8h),a
	ld a,023h
	call 0cc10h
	ld hl,08840h
	ld de,l4000h
	ld bc,08000h
	ldir
	ld a,(0c3f2h)
	out (0a8h),a
	jp l4000h
	call 0ca1dh
	call 0d227h
	call 00512h
	call 00509h
	call 0cb16h
	ld a,(0c3a8h)
	dec a
	jp z,0cb43h
	dec a
	call z,0cb49h
	call 0cbb9h
	jp 0c915h
	jp 0c963h
	jp 0c97fh
	jp 0c995h
	jp 0c9abh
	jp 0c9c1h
	jp 0c9d7h
	jp 0c9edh
	jp 0ca02h
	call 0cc6ch
	scf
	call l4000h
	call 0cf91h
	jp z,0c919h
	jp nc,0c8e9h
	call 0cbb9h
	ld b,000h
	ld a,(0c15ah)
	or a
	call nz,0ca1bh
	ld a,(0c158h)
	or a
	call nz,0ca1bh
	ld a,(0c159h)
	or a
	call nz,0ca1bh
	ld a,(0c15ch)
	or a
	call nz,0ca1bh
	ld a,b
	cp 002h
	jp z,0c959h
	ld a,(0c1b6h)
	ld b,a
	ld a,(0c1b5h)
	add a,b
	cp 003h
	jp z,0c8fdh
	ld a,(0c39bh)
	inc a
	ld (0c39bh),a
	jp 0c900h
	call 0cce5h
	call l4000h
	call 0cf91h
	jp z,0c966h
	jp nc,0c8e9h
	xor a
	ld (0c143h),a
	call 0cb75h
	call 0cbb9h
	jp 0c900h
	call 0cd14h
	scf
	call l4000h
	call 0cf91h
	jp z,0c983h
	jp nc,0c8e9h
	call 0cbb9h
	jp 0c903h
	call 0cd4dh
	scf
	call l4000h
	call 0cf91h
	jp z,0c999h
	jp nc,0c8e9h
	call 0cbb9h
	jp 0c906h
	call 0cdb5h
	scf
	call l4000h
	call 0cf91h
	jp z,0c9afh
	jp nc,0c8e9h
	call 0cbb9h
	jp 0c909h
	call 0cdeeh
	scf
	call l4000h
	call 0cf91h
	jp z,0c9c5h
	jp nc,0c8e9h
	call 0cbb9h
	jp 0c90ch
	call 0ce1dh
	scf
	call l4000h
	call 0cf91h
	jp z,0c9dbh
	jp nc,0c8e9h
	call 0cbb9h
	jp 0c90fh
	call 0ce4ch
	call l4000h
	call 0cf91h
	jp z,0c9f0h
	jp nc,0c8e9h
	call 0cbb9h
	jp 0c912h
	call 0ce7bh
	scf
l7029h:
	call l4000h
	call 0cf91h
	jp z,0ca06h
	jp nc,0c8e9h
	call 0cbb9h
	call 0cb8dh
	jp 0c8ddh
	inc b
	ret
	xor a
	ld (0c103h),a
	inc a
	ld (0c102h),a
	inc a
	ld (0c101h),a
	inc a
	ld (0c100h),a
	ld hl,0f3e9h
	ld (hl),00bh
	inc hl
	ld (hl),009h
	inc hl
	ld (hl),009h
	call 005cfh
	xor a
	out (099h),a
	ld a,097h
	out (099h),a
	xor a
	out (099h),a
	ld a,092h
	out (099h),a
	ld hl,0cad4h
	call 00103h
	ld hl,0cae3h
	ld de,0c1a3h
	ld bc,0000dh
	ldir
	xor a
	ld (0f3dbh),a
	ld (0c13dh),a
	ld (0c143h),a
	ld (0c309h),a
	ld (0c14fh),a
	ld (0c152h),a
	ld (0c146h),a
	ld (0c140h),a
	ld (0c14dh),a
	ld (0c13fh),a
	ld (0c116h),a
	ld (0c15bh),a
	ld (0c142h),a
	ld a,002h
	ld (0c159h),a
	ld a,002h
	ld (0c15ah),a
	ld a,001h
	ld (0c158h),a
	ld (0c15ch),a
	xor a
	ld (0c14eh),a
	ld (0c150h),a
	ld (0c153h),a
	ld a,005h
	ld (0c157h),a
	ld a,001h
	ld (0c1b6h),a
	ld a,001h
	ld (0c1b2h),a
	ld a,002h
	ld (0c1b5h),a
	ld a,002h
	ld (0c113h),a
	ld a,000h
	ld (0c39bh),a
	ld a,00ah
	ld (0c155h),a
	ld a,(0c158h)
	or a
	ld a,00ah
	ld a,049h
	jp z,0cad0h
	ld a,014h
	ld a,049h
	ld (0c13eh),a
	ret
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00400h
	sbc a,c
	ld bc,005c0h
	ret nz
	ret nc
	ret po
	ret nc
	ret po
	ret nc
	ret nz
	ret nc
	ret po
	ret nc
	ret po
	ret nc
	push af
	ld a,001h
	out (099h),a
	ld a,08fh
	out (099h),a
	in a,(099h)
	xor a
	out (099h),a
	ld a,08fh
	out (099h),a
	in a,(099h)
	pop af
	ei
	ret
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00300h
	nop
	ld bc,03ac0h
	call p,0d3c3h
	xor b
	ld a,021h
	call 0cc10h
	ld hl,09181h
	call 0cee9h
	call l4000h
	call 005cfh
	ld a,(0f3e0h)
	and 0bfh
	ld (0f3e0h),a
	out (099h),a
	ld a,081h
	out (099h),a
	ld hl,0cad4h
	call 00103h
	jp 0d22ah
	call 0cb49h
	jp 0c8e9h
	ld a,034h
	ld (0c3d2h),a
	ld a,(0c3f5h)
	out (0a8h),a
	ld a,00dh
	call 0cc4eh
	ld hl,08c0dh
	xor a
	ld de,08000h
	call 001fdh
	ld a,(0c3f4h)
	out (0a8h),a
	ld a,01ah
	call 0cc4eh
	ld hl,0aae1h
	call 0cee9h
	jp l4000h
	ld a,036h
	ld (0c3d2h),a
	ld a,(0c3f4h)
	out (0a8h),a
	ld a,01eh
	call 0cc10h
	ld hl,0b9d8h
	call 0cee9h
	jp l4000h
	ld a,037h
	ld (0c3d2h),a
	ld a,(0c3f5h)
	out (0a8h),a
	ld a,00fh
	call 0cc4eh
	ld hl,l7cd3h
	scf
	ld de,00000h
	call 001fdh
	ld a,(0c3f4h)
	out (0a8h),a
	ld a,014h
	call 0cc10h
	ld hl,0ab11h
	call 0cee9h
	jp l4000h
	ld a,(0c3f4h)
	out (0a8h),a
	ld a,023h
	call 0cc10h
	ld hl,08281h
	call 0cee9h
	jp l4000h
	di
	ld (0c3f6h),a
	ld (05000h),a
	ei
	ret
	di
	ld (0c3f7h),a
	ld (07000h),a
	ei
	ret
	di
	ld (0c3f8h),a
	ld (09000h),a
	ei
	ret
	di
	ld (0c3f9h),a
	ld (0b000h),a
	ei
	ret
	di
	ld (0c3f6h),a
	ld (05000h),a
	inc a
	ld (0c3f7h),a
	ld (07000h),a
	ei
	ret
	di
	ld (0c3f7h),a
	ld (07000h),a
	inc a
	ld (0c3f8h),a
	ld (09000h),a
	ei
	ret
	di
	ld (0c3f8h),a
	ld (09000h),a
	inc a
	ld (0c3f9h),a
	ld (0b000h),a
	ei
	ret
	di
	ld (0c3f6h),a
	ld (05000h),a
	inc a
	ld (0c3f7h),a
	ld (07000h),a
	inc a
	ld (0c3f8h),a
	ld (09000h),a
	ei
	ret
	di
	ld (0c3f7h),a
	ld (07000h),a
	inc a
	ld (0c3f8h),a
	ld (09000h),a
	inc a
	ld (0c3f9h),a
	ld (0b000h),a
	ei
	ret
	di
	ld (0c3f6h),a
	ld (05000h),a
	inc a
	ld (0c3f7h),a
	ld (07000h),a
	inc a
	ld (0c3f8h),a
	ld (09000h),a
	inc a
	ld (0c3f9h),a
	ld (0b000h),a
	ei
	ret
	ld hl,0cf0ah
	call 00103h
	ld a,027h
	ld (0c3d3h),a
	ld a,(0c3f5h)
	out (0a8h),a
	ld a,002h
	call 0cc4eh
	ld hl,l4000h
	scf
	ld de,08000h
	call 001fdh
	ld hl,l6eafh
	scf
	ld de,01000h
	call 001fdh
	ld a,(0c3f4h)
	out (0a8h),a
	ld a,036h
	call 0cbe7h
	ld hl,0a641h
	ld de,l4000h
	ld bc,019bfh
	ldir
	ld a,02fh
	call 0cbe7h
	ld hl,0a7c1h
	ld de,059bfh
	ld bc,0183fh
	ldir
	ld a,02eh
	call 0cbe7h
	ld hl,0ac81h
	ld de,071feh
	ld bc,00e02h
	ldir
	ld a,(0c3f3h)
	out (0a8h),a
	ld a,02eh
	call 0cbcch
	ld hl,l5a83h
	ld de,08000h
	ld bc,0002dh
	ldir
	ld a,(0c3f2h)
	out (0a8h),a
	ret
	ld hl,0cf0ah
	call 00103h
	ld a,029h
	ld (0c3d3h),a
	ld a,(0c3f5h)
	out (0a8h),a
	ld a,002h
	call 0cc4eh
	ld hl,08bd9h
	scf
	ld de,08000h
	call 001fdh
	ld a,(0c3f4h)
	out (0a8h),a
	ld a,037h
	call 0cc10h
	ld hl,08941h
	jp 0cee9h
	ld hl,0cf0ah
	call 00103h
	ld a,02bh
	ld (0c3d3h),a
	ld a,(0c3f5h)
	out (0a8h),a
	ld a,003h
	call 0cc4eh
	ld hl,08376h
	scf
	ld de,08000h
	call 001fdh
	ld hl,0a85dh
	scf
	ld de,01000h
	call 001fdh
	ld a,(0c3f4h)
	out (0a8h),a
	ld a,016h
	call 0cc10h
	ld hl,08000h
	jp 0cee9h
	ld hl,0cf0ah
	call 00103h
	ld a,02ch
	ld (0c3d3h),a
	ld a,(0c3f5h)
	out (0a8h),a
	ld a,005h
	call 0cc4eh
	ld hl,076d6h
	xor a
	ld de,00000h
	call 001fdh
	ld hl,0cd97h
	call 00103h
	ld hl,0cda6h
	call 00103h
	ld a,006h
	call 0cc4eh
	ld hl,0841dh
	scf
	ld de,00b00h
	call 001fdh
	ld a,(0c3f4h)
	out (0a8h),a
	ld a,016h
	call 0cc37h
	ld hl,08dfch
	jp 0cee9h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld bc,000c0h
	nop
	nop
	ret nc
	ld a,(hl)
	nop
	ret nz
	nop
	ld a,(hl)
	nop
	ret nz
	inc bc
	add a,d
	nop
	djnz l73d5h
l73d5h:
	nop
	nop
	ret nc
	ld hl,0cf0ah
	call 00103h
	ld a,02dh
	ld (0c3d3h),a
	ld a,(0c3f5h)
	out (0a8h),a
	ld a,007h
	call 0cc4eh
	ld hl,08cd9h
	scf
	ld de,08000h
	call 001fdh
	ld hl,0a694h
	scf
	ld de,00c00h
	call 001fdh
sub_7401h:
	ld a,(0c3f4h)
	out (0a8h),a
	ld a,018h
	call 0cc10h
	ld hl,0990fh
	jp 0cee9h
	ld hl,0cf0ah
	call 00103h
	ld a,030h
	ld (0c3d3h),a
	ld a,(0c3f5h)
	out (0a8h),a
	ld a,008h
	call 0cc4eh
	ld hl,09769h
	scf
	ld de,08000h
	call 001fdh
	ld a,(0c3f4h)
	out (0a8h),a
	ld a,01ah
	call 0cc10h
	ld hl,08281h
	jp 0cee9h
	ld hl,0cf0ah
	call 00103h
	ld a,031h
	ld (0c3d3h),a
	ld a,(0c3f5h)
	out (0a8h),a
	ld a,009h
	call 0cc4eh
	ld hl,099d7h
	scf
	ld de,08000h
	call 001fdh
	ld a,(0c3f4h)
	out (0a8h),a
	ld a,01ah
	call 0cc37h
	ld hl,09328h
	jp 0cee9h
	ld hl,0cf0ah
	call 00103h
	ld a,029h
	ld (0c3d3h),a
	ld a,(0c3f5h)
	out (0a8h),a
	ld a,00ah
	call 0cc4eh
	ld hl,096fbh
	scf
	ld de,08000h
	call 001fdh
	ld a,(0c3f4h)
	out (0a8h),a
	ld a,01ah
	call 0cc4eh
	ld hl,09487h
	jp 0cee9h
	ld hl,0cf0ah
	call 00103h
	ld a,021h
	ld (0c3d3h),a
	ld a,(0c3f5h)
	out (0a8h),a
	ld a,00bh
	call 0cc4eh
	ld hl,08aech
	scf
	ld de,01000h
	call 001fdh
	ld hl,0cf19h
	call 00103h
	ld hl,0cf28h
	call 00103h
	ld a,00ch
	call 0cc4eh
	ld hl,091f5h
	xor a
	ld de,01000h
	call 001fdh
	ld hl,0cf37h
	call 00103h
	ld hl,0cf46h
	call 00103h
	ld hl,0cf55h
	call 00103h
	ld hl,0cf64h
	call 00103h
	ld hl,0cf73h
	call 00103h
	ld hl,0cf82h
	call 00103h
	ld a,(0c3f4h)
	out (0a8h),a
l7501h:
	ld a,01eh
	call 0cc10h
	ld hl,08000h
	jp 0cee9h
	ld de,l4000h
	ld bc,l4000h
	ldir
	ld a,(0c3f2h)
	out (0a8h),a
	ld hl,l4000h
	ld de,08000h
	ld bc,l4000h
	ldir
	ld hl,08000h
	ld de,l4000h
	jp 001a0h
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,002h
	nop
	ld bc,0000ah
	sbc a,c
	ld bc,000c0h
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld bc,000c0h
	sbc a,c
	ld bc,000c0h
	nop
	jr nz,l7551h
	nop
	nop
l7551h:
	nop
	inc bc
	nop
	ld bc,000c0h
	nop
	nop
	sbc a,b
	jr nz,l755ch
l755ch:
	ld h,b
	nop
	jr nz,l7560h
l7560h:
	add a,b
	ld (bc),a
	ld b,b
	nop
	ld b,b
	nop
	nop
	nop
	ret nc
	nop
	nop
	add a,b
	nop
	nop
	nop
	and b
	ld (bc),a
	and b
	nop
	ld c,b
	nop
	nop
	nop
	ret nc
	add a,b
	nop
	jr nz,l757ch
l757ch:
	add a,b
	nop
	ld b,b
	ld (bc),a
	ld b,b
	nop
	add a,b
	nop
	nop
	nop
	ret nc
	ret nz
	nop
	ld b,b
	nop
	ret nz
	nop
	ld h,b
	ld (bc),a
	ld b,b
	nop
	ld b,b
	nop
	nop
	nop
	ret nc
	ret nz
	nop
	add a,b
	nop
	ret nz
	nop
	and b
	ld (bc),a
	jr nz,l75a0h
l75a0h:
	jr nz,l75a2h
l75a2h:
	nop
	nop
	ret nc
	ret po
	nop
	add a,b
	nop
	ret po
	nop
	add a,b
	inc bc
	jr nz,l75afh
l75afh:
	ld b,b
	nop
	nop
	nop
	ret nc
	ld a,(0c395h)
	or a
	jp z,0cf9ch
	sub 00ah
	scf
	ret
	ld a,(0c1b5h)
	ld (0c113h),a
	ld a,(0c158h)
	or a
	ld c,00fh
	jp z,0cfadh
	ld c,019h
	ld a,(0c13eh)
	cp c
	jp c,0cfb9h
	sub 005h
	ld (0c13eh),a
	ld a,(0c155h)
	cp 00fh
	jp c,0cfc6h
	sub 004h
	ld (0c155h),a
	call 005cfh
	ld a,011h
	ld (0c5e3h),a
	ld a,001h
	ld (0c5e4h),a
	ld a,077h
	ld (0c5e6h),a
	ld a,007h
	ld (0c5e7h),a
	ld a,001h
	ld (0c5eah),a
	xor a
	ld (0c5e9h),a
	ld (0c5ebh),a
	ld (0c5ech),a
	ld (0c1b3h),a
	ld (0c1b4h),a
	ld (0d105h),a
	ld (0d106h),a
	ld a,014h
	ld (0c3d2h),a
	ld a,005h
	call 0050fh
	ld a,004h
	call 0050fh
	call 0d1ebh
	ld a,(0c1b2h)
	dec a
	ld (0c1b2h),a
	cp 0ffh
	jp z,0d04ah
	ld a,05ah
	ld hl,0c4b6h
	call 0c430h
	ld a,06eh
	ld hl,0c4c0h
	call 0c430h
	ld a,001h
	ld (0d103h),a
	xor a
	ld (0d102h),a
	ld (0d104h),a
	ld a,(0d105h)
	or a
	jp z,0d032h
	di
	ld a,005h
	call 0050fh
	ei
	halt
	halt
	call 0d204h
	ld a,(0d106h)
	or a
	ret
	ld hl,0c4b6h
	ld a,064h
	call 0c430h
	ld a,001h
	ld (0d102h),a
	xor a
	ld (0d103h),a
	ld (0d104h),a
	ld a,(0d105h)
	or a
	jp z,0d05eh
	di
	ld a,005h
	call 0050fh
	ei
	halt
	halt
	call 0d204h
	ld a,(0d106h)
	or a
	ret
	call 0d212h
	ld a,011h
	ld (0c5e3h),a
	ld a,001h
	ld (0c5e4h),a
	ld a,077h
	ld (0c5e6h),a
	ld a,007h
	ld (0c5e7h),a
	ld a,001h
	ld (0c5eah),a
	xor a
	ld (0c5e9h),a
	ld (0c5ebh),a
	ld (0c5ech),a
	ld hl,0c4b6h
	ld a,064h
	call 0c430h
	xor a
	ld (0d103h),a
	ld (0d104h),a
	ld a,001h
	ld (0d102h),a
	ret
	xor a
	ld (0d102h),a
	ld (0d103h),a
	call 0d212h
	ld a,(0c1b2h)
	add a,05ch
	ld (0c4e2h),a
	ld a,0bah
	ld hl,0c4dah
	call 0c430h
	ld a,064h
	ld hl,0c4cfh
	call 0c430h
	ld a,011h
	ld (0c5e3h),a
	ld a,001h
	ld (0c5e4h),a
	ld a,077h
	ld (0c5e6h),a
	ld a,007h
	ld (0c5e7h),a
	ld a,001h
	ld (0c5eah),a
	xor a
	ld (0c5e9h),a
	ld (0c5ebh),a
	ld (0c5ech),a
	ld (0c1b3h),a
	ld (0c1b4h),a
	ld a,001h
	ld (0d104h),a
	ret
	nop
	nop
	nop
	nop
	nop
	push bc
	push de
	push hl
	exx
	ex af,af'
	push af
	push bc
	push de
	push hl
	push iy
	push ix
	ld a,(0d102h)
	or a
	call nz,0d17bh
	ld a,(0d103h)
	or a
	call nz,0d199h
	ld a,(0d104h)
	or a
	call nz,0d1bch
	call 002f8h
	call 00313h
	call 0050ch
	pop ix
	pop iy
	pop hl
	pop de
	pop bc
	pop af
	ex af,af'
	exx
	pop hl
	pop de
	pop bc
	pop af
	ei
	ret
	ld a,(0fbech)
	bit 1,a
	jp z,0d150h
	ld a,(0c39ah)
	bit 5,a
	ret z
	ld a,(0c1b4h)
	or a
	ret nz
	ld a,001h
	ld (0c1b3h),a
	ld (0c1b4h),a
	ld a,(0c5ebh)
	or a
	ret nz
	ld a,(0c5e3h)
l7788h:
	ld (0c5e6h),a
	ld a,(0c5e4h)
	ld (0c5e7h),a
	ld a,001h
	ld (0c5ebh),a
	xor a
	ld (0c5ech),a
	ld (0c5eah),a
	ret
	ld a,(0c5eah)
	or a
l77a2h:
	jp nz,0c559h
	ld a,(0c5ech)
	or a
	jp nz,0c598h
	ld a,(0c5ebh)
	or a
	jp nz,0c5aah
	ld a,001h
	ld (0d105h),a
	ld (0d106h),a
	ret
	call 0d142h
	ld a,(0c5eah)
	or a
	jp nz,0c559h
	ld a,(0c5ech)
	or a
	jp nz,0c598h
	ld a,(0c5ebh)
	or a
	jp nz,0c5aah
	ld a,(0c1b3h)
	or a
	jp nz,0d0b1h
	call 0d076h
	ret
	ld a,(0c5eah)
	or a
	jp nz,0c559h
	call 0d142h
	ld a,(0c5ech)
	or a
	jp nz,0c598h
	ld a,(0c5ebh)
	or a
	jp nz,0c5aah
	ld a,001h
	ld (0d105h),a
	xor a
	ld (0d106h),a
l7800h:
	ret
	push af
	in a,(099h)
	rlca
	jp c,0d107h
	pop af
	ei
	ret
	nop
	nop
	nop
	di
	ld hl,00038h
	ld de,0d1e8h
	ld bc,00003h
	ldir
	ld hl,0d1deh
	ld (00039h),hl
	ld a,0c3h
	ld (00038h),a
	ei
	ret
	ld hl,0d1e8h
	ld de,00038h
	di
	ld bc,00003h
sub_7831h:
	ldir
	ei
	ret
	ld hl,0d218h
	jp 00103h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00100h
	nop
	ld bc,0cdc0h
	jp m,03ac5h
	push af
	jp 0a8d3h
	ld a,00fh
	call 0cc4eh
	ld hl,0a08eh
	xor a
	ld de,00000h
	call 001fdh
	ld hl,0d27dh
	call 00103h
	ld hl,0d28ch
	call 00103h
	ld hl,0d29bh
	call 00103h
	ld hl,0d2aah
	call 00103h
	ld hl,0d2b9h
	call 00103h
	ld hl,0d2c8h
	call 00103h
	ld hl,0d26eh
	call 00103h
	ld a,(0c3f2h)
	out (0a8h),a
	ret
	nop
	nop
	ld hl,00000h
	nop
	ret nz
	inc bc
	ld a,l
	nop
	ld a,(bc)
	nop
	nop
	nop
	sub b
	nop
	nop
	nop
	nop
	nop
	nop
	rst 18h
	inc bc
	nop
	ld bc,00021h
	nop
	nop
	sub b
	adc a,b
	nop
	ld hl,00000h
l78b4h:
	nop
	jp z,07803h
	nop
	inc d
	nop
	nop
	nop
	sub b
	nop
	nop
	rst 18h
	inc bc
	djnz l78c4h
l78c4h:
	inc b
	ld (bc),a
	pop hl
	nop
	ld de,00000h
	nop
	sub b
	nop
	nop
	nop
	nop
	jr z,l78d3h
l78d3h:
	ld b,002h
	ld (hl),000h
	ld b,000h
	sbc a,c
	ld bc,000c0h
	nop
	nop
	nop
	jp pe,01000h
	ld (bc),a
	ld h,000h
	ld b,000h
	sbc a,c
	ld bc,0dbc0h
	nop
	ex de,hl
	inc bc
	ld (hl),000h
	ld b,002h
	inc h
	nop
	dec b
	nop
	nop
l78f8h:
	nop
	sub b
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l79e0h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_7a4fh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7a55h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7aa1h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7b32h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7bf5h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7c97h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7cd3h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7ce1h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7d37h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7dcdh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7e05h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7ea2h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7ec3h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
