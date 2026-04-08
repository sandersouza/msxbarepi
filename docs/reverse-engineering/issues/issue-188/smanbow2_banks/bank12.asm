; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank12.asm /tmp/smanbow2_bank.bin

	org 04000h

	and d
	dec bc
	ld d,(hl)
l4003h:
	inc b
	and b
	add a,e
	call nc,sub_7e5ch
	ld h,d
	sbc a,e
	call pe,sub_45edh
	ld (0aeb2h),a
	sbc a,c
	jr z,l4049h
	ld l,a
	ei
	nop
	ld (bc),a
	ld l,a
	ld hl,06ea7h
	ld c,0a3h
	ld d,e
	rlca
	ld b,a
l4021h:
	xor a
	adc a,e
	add hl,bc
	nop
	ld (hl),c
	ld (bc),a
l4027h:
	inc e
	djnz l4021h
	ld b,l
	jr z,$+52
	rla
	sbc a,0ceh
	ld e,h
	ld hl,0cd27h
	rrca
	dec b
	cp (hl)
	ret p
	ld h,e
	add a,028h
	adc a,d
	cp h
	ret p
	inc h
	ld c,(hl)
	rlca
	ld e,09ah
	ld c,b
	ld l,(hl)
	ld c,(hl)
	ld b,09fh
	ld a,(de)
l4049h:
	cp 0e7h
	add a,a
sub_404ch:
	ld a,008h
	call p,0f5e6h
	ld h,b
	and 020h
	jp z,03c46h
	add a,d
	sbc a,b
	ld l,h
	ld e,l
	inc l
	sub 061h
	ld b,0e7h
	rlca
	ld e,h
	inc l
	defb 0edh ;next byte illegal after ed
	add a,b
	ld l,e
	ld e,l
	ld hl,l5d65h
l406ah:
	defb 0ddh,0abh,04eh ;illegal sequence
	ld a,(0c609h)
	add a,(hl)
	cp h
	ld c,025h
	add a,e
	ld e,b
	rst 38h
	ld bc,08c7ah
	push de
	ld l,d
	sbc a,c
	add a,014h
	sbc a,l
	ld (hl),l
	add a,h
	ld a,05ch
	or e
	ld (06358h),hl
	inc bc
	add a,e
	ld e,l
	add a,d
	add a,d
	ld h,b
	ld h,d
	ld de,04198h
	ld h,b
	ld de,04c9fh
sub_4096h:
	ld e,a
	inc bc
	call pe,02303h
	add hl,hl
	ld h,b
	inc bc
	ld h,(hl)
	ld h,b
	rst 10h
	ld d,c
	ld e,h
	push hl
	or b
	call po,0ed5dh
	add hl,bc
	ld e,a
	and 03fh
	call z,0048dh
	ld a,(l5bfeh)
	adc a,a
	adc a,c
	adc a,a
	ld b,0ffh
	ld b,084h
	add hl,hl
	ld e,a
	rrca
	ld a,l
	sub h
	cp 06eh
	ld d,a
	call po,0da1ah
	push de
	ld hl,0900fh
	add a,l
	jp c,02864h
	ld e,(hl)
	cp 099h
	ld a,(de)
	ld a,b
	ld e,(hl)
	ret
	ld c,0cah
	xor 00ch
	ld a,d
	ld de,0e23ah
	ld e,l
	ld c,(hl)
	inc h
	ld e,(hl)
	inc bc
	ld de,05df0h
	ld d,d
l40e4h:
	ex (sp),hl
	ld e,l
l40e6h:
	cp a
	cp e
	dec b
	ld d,l
	and 01fh
	inc (hl)
	inc bc
	cp c
	ld (bc),a
	ld h,c
	ld e,h
	sub 00dh
	ld (0adc8h),a
	ld b,c
l40f8h:
	ld h,d
	ld e,h
	add a,0a4h
	ld hl,0c3c7h
	call nc,0c918h
	sbc a,b
	or (hl)
	ld a,060h
	nop
	ld (l630ah),a
	ld a,068h
	ld (l630bh),a
	ld d,(hl)
	xor a
	out (c),d
	inc sp
	sbc a,d
	ld b,e
	ld e,h
	ret nz
	ld a,0d2h
	inc d
	ld e,c
	sub h
	inc d
	cp h
	xor c
	ld d,c
	ld b,a
	sbc a,h
	ld de,0a93fh
	jp 0328eh
	ld c,(hl)
	sub e
	daa
	xor (hl)
	ld b,014h
	inc de
	ld c,(hl)
	ld b,a
	ld (hl),b
	ld a,(0b889h)
	ld h,l
	ret nc
	ld b,a
	and (hl)
	and l
	dec h
	ccf
	ld d,d
	ld l,c
	ret nz
l4140h:
	xor e
	cp 0b0h
	ld c,08ch
	ld e,(hl)
l4146h:
	cp d
	xor l
	sub b
	jp 05113h
	rst 38h
	inc de
	ld h,05fh
	and h
	ld l,(hl)
	ld d,d
	and (hl)
	xor d
	ld a,(0a625h)
	ld h,0aah
	inc bc
	jr nc,l40f8h
	ld c,h
	adc a,(hl)
	ld e,(hl)
l4160h:
	adc a,e
	xor d
	adc a,b
	ret
	dec b
	ret nz
	ld b,l
	ld d,c
	ccf
	call nc,0f691h
	add hl,de
	jp l7b5eh
	ld (01361h),hl
	ld a,0a8h
l4175h:
	sbc a,e
	ld d,d
	ld h,e
	and a
	jr nc,$+7
	ld h,e
	adc a,(hl)
	sbc a,(hl)
	adc a,h
	ld a,(02d8dh)
	jp c,0058fh
	call po,079edh
	pop hl
	ld e,046h
	and e
	dec hl
	ld bc,023cah
	sbc a,c
	nop
	add a,045h
	ld (08037h),a
	ld a,014h
	ld l,e
	ld (00438h),a
	rst 10h
	ret
	inc a
	inc b
	call nc,0dc22h
	ld e,(hl)
	ld a,(0abb0h)
	dec sp
	add a,b
	sub l
	add a,e
	ld bc,l4f0ch
	ld e,0e0h
	call sub_560ch
	jp p,0a73ch
	inc bc
	jp p,00e53h
	jp p,09991h
	jp nz,09726h
	ld (hl),c
	ld b,l
	inc bc
	add a,h
	dec (hl)
	ld e,a
	ld (hl),c
	jr z,$+88
	ld e,a
	ld l,e
	pop hl
	ld c,e
	dec b
	ret nz
	sbc a,l
	ld b,h
	rst 38h
	sbc a,d
	ld (hl),d
	ld d,l
	ld b,(hl)
	ld e,a
	sbc a,d
	ld d,l
	inc hl
	ld c,e
	dec d
	rra
	ld (de),a
	daa
	ld e,a
	call po,027aah
	rra
	adc a,c
	ld (hl),c
	rlca
	adc a,a
	ld a,e
	ld e,l
	ld l,h
	ld h,h
	add a,h
	ld l,d
	jr z,l4175h
	dec (hl)
	ld h,e
	add a,h
	ld a,(de)
	inc e
	adc a,h
	add a,h
	sub 073h
	inc d
	ld (hl),e
	ld b,a
	and e
	ld e,078h
	xor l
	ld (de),a
	ld a,b
	or 0e2h
	jp z,082cdh
	and e
	dec c
	ret nc
	ld h,b
	ccf
	dec c
	ld d,032h
	djnz $+101
	dec (hl)
	ld (de),a
	inc (hl)
	ld (00712h),a
	ld (bc),a
l4219h:
	ld c,b
	ld c,c
	inc c
	dec b
	inc bc
	dec b
	ld c,005h
	ld d,(hl)
	sub (hl)
	jp nz,0ca3eh
	push de
	ld e,a
	sub e
	ld sp,00e13h
	ld b,c
	dec h
	cp 04ch
	jp c,0dfe6h
	dec h
	rra
	add a,c
	ld e,c
	sbc a,d
	add hl,de
	and h
	inc h
	sbc a,l
	ret pe
	add a,048h
	ld (01f69h),a
	ld a,032h
	ld hl,02405h
	inc b
	ld (hl),01bh
	dec b
	dec b
	sbc a,(hl)
	dec b
	dec e
	inc a
	ld b,012h
	ld h,b
	inc a
	ld h,022h
	ld c,01fh
	inc a
	cp b
	inc hl
	sbc a,d
	or l
	rra
	inc a
	inc bc
	inc a
	call c,sub_4ebbh
	ld l,03ch
	ld (de),a
	jr nc,$+7
	ld b,036h
	ld c,c
	ld hl,(00705h)
	dec b
	inc l
	inc a
	ret po
	ld c,a
	call nc,0313ch
	ld c,02eh
	push de
	inc a
	ld h,b
	inc a
	rra
	ld l,e
	inc a
	inc b
	inc a
	push bc
	dec a
	cp b
	inc e
	add hl,bc
	inc d
	ld (0073fh),a
	ex af,af'
	jr c,l42b2h
	add hl,sp
l428fh:
	dec b
	add hl,bc
	dec b
	dec sp
	sub e
	dec b
	ld h,c
	ld d,b
	ld c,h
	add hl,de
	adc a,e
	defb 0ddh,012h,04eh ;illegal sequence
	rlca
	ld a,(bc)
	inc de
	ld d,h
	ld c,b
	dec b
	call po,0321eh
	ld c,d
	ld e,b
	dec c
	xor b
	ld e,b
	ld c,c
	ld b,b
	ld de,0114fh
	dec a
	ld e,e
l42b2h:
	xor c
	cp h
	ld e,e
	add hl,sp
	ld e,e
	or (hl)
	call m,00d98h
	jp z,00dadh
	jr nc,l4329h
	ld (hl),b
	ld bc,0f769h
	ld c,h
	ld e,e
	and d
	call c,0beb4h
	jp pe,0e38bh
	sub l
	ret m
	ex (sp),hl
	ld b,c
	ld sp,hl
	ld e,e
	call po,0805bh
	inc h
	inc b
	cp 04dh
	ld a,b
	xor a
	rlca
	ld c,l
	jr nz,l428fh
	ld d,02fh
	call m,09660h
	add a,l
	ld a,(0bb07h)
	ld sp,l6158h
	call nc,sub_6062h
	cp l
	sub (hl)
	dec b
	sub 0cfh
	nop
	ld b,01fh
	jp nc,l6121h
	ld b,031h
	ccf
	jp z,l7f04h
	pop bc
	scf
	ret po
	sbc a,b
	dec e
	sub 0d8h
	adc a,b
	ld b,d
	ld h,c
	dec bc
	ld a,028h
	jp z,00434h
	or 044h
	cp 090h
	ld c,l
	add a,d
	call 00426h
	ld bc,0d645h
	rst 28h
	add hl,de
	and 0feh
	dec c
	adc a,a
sub_4322h:
	ld h,(hl)
	rlca
	cp d
	cp 015h
	ex (sp),hl
	ld a,e
l4329h:
	rst 28h
	ld (de),a
	sub b
	sub 01bh
	djnz $-70
	jp z,l4a85h
	cp 0dah
	ld (hl),c
	sbc a,b
	inc b
	ld (bc),a
	ld de,01080h
	cp 04eh
	jp c,0fe0fh
	and b
	jp nc,004a3h
	sub l
	ld bc,08ec3h
	ld h,c
	ld c,001h
	and a
l434dh:
	ld c,b
	rra
	ld (de),a
	jp z,l61b2h
	add a,l
	sub l
	ld l,042h
	ld l,021h
	or d
	add hl,hl
	ld bc,0a0d2h
	inc b
	ld (011ffh),a
	ld l,010h
	ld (0b2dah),hl
	ld l,08ch
	jp nc,0a3b2h
	ld l,00dh
	ret
	ld a,c
	sub a
	halt
	ret nz
	add hl,sp
	jp (hl)
	rlca
	ld bc,0edcfh
	ld a,e
	out (016h),a
	ld bc,0f102h
	inc bc
	inc b
	ret
	ld bc,00302h
	jp z,00102h
	sbc a,002h
	inc b
	ld a,h
	ex af,af'
	daa
	nop
	inc bc
	inc bc
	dec hl
	inc bc
	ld bc,l7902h
	inc b
	ret p
	ex af,af'
	sbc a,h
	nop
	inc b
	inc bc
	xor l
	inc b
	ld bc,0e702h
	inc b
	ex af,af'
	jp nz,l7200h
	dec b
	inc bc
	dec b
	or a
	ld bc,00402h
	sbc a,a
	ex af,af'
l43b0h:
	ld a,(bc)
	nop
	cp a
	cpl
	xor d
	dec l
	call m,0fd0eh
	ld e,e
	and l
	ld (01603h),hl
	nop
	adc a,(hl)
	and b
	call nz,01961h
	ld a,(hl)
	inc b
	cp 0ffh
	jp nz,l627eh
	cp e
	ld d,e
	add hl,de
	ret
	cp a
	jp nc,l48bfh
	jp 0bbb0h
	add hl,bc
	and b
	ld h,d
	ld a,(0cc0ch)
	add a,b
	ld a,d
	ld a,076h
	ld b,094h
	jp z,09903h
	ld h,d
	ld a,07ah
	ld b,0b4h
	or c
	ld h,e
	ld h,e
	ld a,b
	or e
	adc a,c
	pop af
	sbc a,b
	ld sp,hl
	dec e
	jp z,01d89h
	ld bc,09f63h
	xor d
	add a,a
	sbc a,c
	dec b
	jp nz,0fc0bh
l4401h:
	jr nc,l4401h
	adc a,b
	ld a,004h
	and 006h
	nop
	jp z,029c3h
	adc a,b
	inc l
	ld b,074h
	xor h
	call nz,00929h
	add hl,hl
	jp m,029c5h
	ret pe
	dec e
	adc a,h
	ld b,h
	add a,e
	ex (sp),hl
	jp nc,01047h
	pop hl
	dec e
	ld h,b
	ld b,068h
	call z,0a8b4h
	dec e
	adc a,092h
	ld h,(hl)
	dec de
	rla
	xor b
	di
	ret po
	ld b,060h
	jp z,095f9h
	rla
	xor b
	ld b,0fch
	ex (sp),hl
l443ch:
	ld a,b
	cp l
	rla
	sub h
	ld h,l
	or h
	rst 18h
	ex af,af'
	adc a,b
	ld bc,l6074h
	ld l,(hl)
	ld l,b
	and d
	jr nc,l4450h
	inc bc
	rst 38h
	ld e,b
l4450h:
	dec h
	nop
	jr nz,$-50
	dec e
	ret nc
	ld c,08fh
	inc l
	nop
	inc (hl)
	ld c,037h
	jr nz,l446dh
	xor b
	ld a,(de)
	nop
	ld (de),a
	di
	ld c,01ah
	jr z,l4468h
l4468h:
	ld l,00eh
	nop
	xor 0ach
l446dh:
	ld d,c
	ld d,a
	or l
	ld a,l
	cp b
	ld (hl),a
	ld hl,(08dd2h)
	inc sp
	dec b
	and a
	push bc
	ld a,(0a48ch)
	rst 38h
	jp c,0a1f9h
	sub l
	ld e,e
	adc a,a
	jr z,l4497h
	dec b
	sub b
	ld (hl),e
	ld hl,07b00h
	sub d
	inc bc
	call 00536h
	pop hl
	scf
	ret
	djnz $+32
	ret p
l4497h:
	ld sp,0f00eh
	add a,l
	rlca
	ld bc,0129ah
	cp c
	ld bc,0af5ch
	jp 0addeh
	ld b,d
	or 08eh
	and l
	nop
	add a,b
	sbc a,l
	call m,0aa9dh
	cp b
	inc b
	ld de,l54abh
	ld (de),a
	xor c
	ld b,(hl)
	or 00ch
	ld sp,hl
	and b
	ld c,l
	sub l
	push af
	sub l
	out (099h),a
	ld h,(hl)
	and h
	ld l,b
	ld h,c
	sub h
	ld e,e
	ld h,h
	and e
	add a,c
	call sub_75f0h
	ret
	or (hl)
	jp pe,0e203h
	call z,0f17ch
	sub d
	jp m,00304h
	dec b
	jp z,06403h
	ret
	ld c,h
	ld a,d
	cp c
	inc bc
	inc c
	ld h,h
	cp 0e0h
	jp z,00d1fh
	sub c
	or b
	jp z,00832h
	bit 1,b
	jp c,0082ah
	sbc a,h
	jr nc,l44ffh
	jp 00100h
	jp m,02180h
	ld b,a
	pop bc
l44ffh:
	ld d,00ah
	ld a,d
l4502h:
	ld (hl),b
	and d
	ld h,072h
l4506h:
	ld (de),a
	inc bc
	ld (de),a
	sbc a,(hl)
	xor b
	add a,c
	ld (de),a
	ld l,l
	inc b
	ld (de),a
	inc a
	ld a,(de)
	add a,d
	ld (de),a
	jp c,01205h
	adc a,a
	di
	ld (de),a
	or h
	exx
	inc l
	ld h,d
	ld h,l
	exx
	ld a,064h
	ld h,l
	add a,c
	call pe,sub_51aeh
	ex de,hl
	ld b,08eh
	sub c
	adc a,c
	jr z,$+120
	ld a,e
l452fh:
	adc a,c
	sbc a,h
	and a
	ld (hl),d
	ld hl,(0ffb7h)
	jr nz,l4502h
	or c
	ld c,0a8h
	ret nz
	ld hl,0917eh
	adc a,b
	adc a,(hl)
	sbc a,(hl)
	ld e,c
	add a,c
	ret
	rst 30h
	djnz l4558h
	ld hl,l4697h
	ld h,h
	rst 30h
	sub l
	inc hl
	inc b
	cp e
	nop
	ld (de),a
	ld (bc),a
	ld (l7103h),hl
	dec b
l4558h:
	inc (hl)
	add a,a
	ld bc,l4506h
	ld b,030h
	inc c
	jr nc,$+50
	nop
	ret
	ld hl,00320h
	ld (l6458h),hl
	ld e,012h
	ret nz
	ld c,064h
	xor b
	sub (hl)
	or (hl)
	add a,(hl)
l4573h:
	ld bc,0a006h
	nop
	ret
	ld h,h
	ld b,00ah
	exx
	jr c,l459fh
	ld a,e
	ld b,a
	push hl
	ret
	ld c,e
	exx
	and e
	ld l,c
	ld a,b
	inc bc
	ld e,e
	and a
	add hl,hl
	add a,d
	inc d
	cp (hl)
	or c
	adc a,d
	rla
	call pe,0efcbh
	defb 0fdh,0c7h,0f1h ;illegal sequence
	jp 032e9h
	ret p
	inc d
	ld (hl),0ffh
	add a,c
l459fh:
	dec b
	ld l,h
	ld a,050h
	ld (0043eh),a
	ld e,035h
	jp p,0f323h
	jr z,l4573h
	ld (0f411h),hl
	ld e,e
	adc a,e
	and h
	dec h
	ld h,l
	out (091h),a
	adc a,h
	add a,b
	ret
	halt
	ld bc,00656h
	ex af,af'
	ld b,h
	inc b
	ld (08d02h),hl
	add a,c
	nop
	rlca
	rlca
	dec b
	ld d,b
	xor d
	inc d
	ld h,(hl)
	ld a,(0372eh)
	ld h,l
	xor c
	jr c,$+55
	ld h,l
	or a
	cp h
	inc bc
	and 029h
	jp nz,0284dh
	ld c,e
	scf
	add hl,bc
	ld h,b
	add a,d
	ld d,a
	xor d
	add hl,bc
	ld b,c
	add hl,bc
	dec a
	inc e
	ld (bc),a
	ld hl,03d35h
sub_45edh:
	jp z,01489h
	ld h,e
	ld h,l
	add a,(hl)
	ld d,c
sub_45f4h:
	inc bc
	rst 38h
l45f6h:
	add a,a
	add a,c
	ld h,l
	rst 38h
	add a,l
	ld h,l
	xor 020h
	inc b
	ld b,076h
	ld hl,l65dch
	or h
	ld h,d
	halt
	jp 0a7f2h
	ld c,h
	inc e
	ld b,0cdh
	inc b
	ld l,h
	ld a,(0baf2h)
	ld b,b
	ld b,01ch
	jp z,l6596h
	ld de,0ee06h
	ld a,(00597h)
	add a,022h
	ld (01269h),a
	sbc a,d
	inc d
	ld h,c
	ld l,e
	jr $+110
	ld b,003h
	ld d,h
	dec b
	inc b
	ld l,a
	jp 07116h
	ld a,(l52cfh)
	ld b,(hl)
	ret z
	call nz,0c846h
	djnz $+115
	scf
	inc (hl)
	ret nz
	cp 0cah
	res 3,b
	inc (hl)
	ret nc
l4646h:
	inc (hl)
	sub 0d1h
	call c,012e0h
	ld l,b
	inc (hl)
	jp po,03765h
	adc a,0dfh
	jr $+1
	ld bc,00276h
	nop
	ld h,d
	nop
	sbc a,c
	ld bc,092c0h
	cp b
	sub h
	or c
	inc c
	ccf
	jp nz,l6608h
sub_4667h:
	xor h
	rst 10h
	ld (bc),a
	jp c,09554h
	ld (bc),a
	ld h,(hl)
	ld c,0aah
	ld e,030h
	ret
	ld d,b
	call 06d38h
	ld h,l
	ld e,e
	or c
	inc b
	ld a,(hl)
	ld h,a
	and a
	ld h,(hl)
	inc b
	inc sp
	dec b
	inc b
l4684h:
	ld e,h
	add hl,de
	cp 0ddh
	dec e
	adc a,a
	ld h,(hl)
	add a,l
	exx
	ld a,(00ff3h)
	sub (hl)
	rst 30h
	nop
	ld c,016h
	ld d,04eh
l4697h:
	ld e,02eh
	jp z,07135h
	ld h,(hl)
	xor c
	jr l46eeh
l46a0h:
	inc c
	ld d,(hl)
	call po,0030ch
	ld b,078h
	and h
	inc c
	and h
	inc b
	or b
	dec bc
	ld c,072h
	ld d,05eh
	ld e,e
	inc c
	ld b,a
	dec b
	ld b,0a2h
	inc c
	add a,d
	ld a,(l47dah)
	add a,b
	defb 0fdh,047h,06ch ;illegal sequence
	ld a,c
	adc a,(hl)
	adc a,h
	ld l,h
	ld a,(bc)
	dec c
	neg
	add a,d
l46c9h:
	ld d,a
	jp c,l6c95h
	ex (sp),hl
	add a,b
	cp 06bh
	ld a,e
	ld (l6f42h),a
	ld l,h
	jp p,09a64h
	ld h,(hl)
	sub a
	add a,a
	ccf
	ld l,h
	adc a,a
	djnz l46e3h
	ld e,l
	ld l,h
l46e3h:
	xor a
	inc hl
	sub d
	ld b,a
	jp c,0b802h
	jp nc,l6718h
	sub (hl)
l46eeh:
	ld d,h
	ld a,(de)
	ld (l5a44h),a
	and 01ah
	pop de
	cp 04bh
	sbc a,h
	ld hl,(0a9d6h)
	adc a,e
	ld e,h
	ld (de),a
	ld (bc),a
l4700h:
	inc b
	add a,00ah
	ld (l434dh),a
	ld bc,0d273h
	push de
	ld h,(hl)
	ld hl,l6c56h
	sbc a,b
	jp z,0d1f3h
	jp m,08204h
	ld de,0e1c2h
	defb 0ddh,015h,0c1h ;illegal sequence
	sub l
	ld d,h
	ld a,024h
	inc c
	add a,b
	add a,b
	add a,c
	ld hl,(01ee9h)
l4726h:
	ld c,a
	inc sp
l4728h:
	adc a,d
	ld (0ae04h),a
	xor (hl)
	dec c
	or d
	ld b,(hl)
	inc b
	sub l
	cp (hl)
	sbc a,l
	rlca
	ld c,e
	dec d
	and d
	call p,014eah
	ld c,d
	jp c,07240h
l473fh:
	add a,l
	ld h,c
	jr c,$+105
	xor l
	ld sp,l6731h
	xor l
l4748h:
	ld a,(025c3h)
	ld b,(hl)
	ld h,a
	call nc,01446h
	nop
	scf
	inc bc
	dec h
	ld (hl),b
	call nc,0214eh
	jr c,$+47
	ld (0298ah),hl
	add a,02eh
	rst 0
	dec c
	ld a,(0073ah)
	ld c,(hl)
	ld a,(0a9cah)
	inc a
	pop de
	inc h
	sub d
	ld d,e
	ret nz
	exx
	ld de,0aea9h
	ld e,h
	ld e,073h
	rlca
	ld e,012h
	push af
	rst 0
	sub d
	rst 18h
l477ch:
	sub (hl)
l477dh:
	add a,a
	sbc a,l
	xor l
	add a,h
	bit 5,b
	inc bc
	pop hl
	jp nz,0dc03h
	ld l,c
	inc bc
	ld (l6aa9h),hl
	inc bc
	ld (hl),d
	ld l,e
	inc bc
	ld h,b
	call z,09c0bh
	ld l,e
	sub 059h
	inc bc
	xor h
	jr l4726h
	ret pe
	jr z,l47cdh
	sbc a,0ddh
	rst 30h
	out (077h),a
	jp z,0e09dh
	pop hl
	nop
	jr l477dh
	rst 38h
	jp pe,0ed76h
	ld a,b
	ld c,e
	rst 38h
	nop
	cp 001h
	ld (bc),a
	inc sp
	ex af,af'
	djnz l4748h
	ld (bc),a
	ld (bc),a
	ld a,(l67a7h)
	inc a
	ld sp,hl
	ld h,h
	ld (02105h),a
	scf
	xor b
	ld h,a
	add a,a
	ex af,af'
	add hl,de
	ld b,(hl)
	ret po
l47cdh:
	ret nc
	ld (bc),a
	jp c,l680eh
	dec h
	ld e,01dh
	push de
	ld d,(hl)
	call m,08289h
l47dah:
	jp l6815h
	cp d
	sbc a,b
	sub c
	inc bc
	ld a,e
	cp b
	ld c,b
	cp b
	ld d,013h
	call m,0011eh
	xor a
	inc bc
	ld l,b
	cp 009h
	ld c,005h
	ld a,(bc)
	or (hl)
	inc d
	dec d
	dec c
	inc b
	ld e,0ffh
	ld a,(bc)
	ld (hl),l
	dec e
	or e
	ld a,(bc)
	ret c
	inc h
	ld c,003h
	adc a,020h
	ld a,(bc)
l4805h:
	ld (de),a
	inc l
	or 063h
l4809h:
	ld a,(bc)
	defb 0fdh,00ah,059h ;illegal sequence
	inc (hl)
	dec d
	jr nz,$+55
	inc bc
	ld a,(bc)
	inc a
	dec hl
	add a,041h
	add a,l
	jp l688bh
	ld a,c
	call po,sub_71a6h
	ld (l7082h),a
	add a,d
	jr c,l485ah
	jp nc,0758bh
	add a,e
	sbc a,l
	dec hl
	add a,a
l482ch:
	jr l482ch
	pop bc
	ld d,0feh
	jr $-46
l4833h:
	ld a,(bc)
	xor (hl)
	ld (bc),a
	ld hl,00772h
	inc b
l483ah:
	sub d
	xor b
	sbc a,h
	ld (hl),e
	djnz l48b0h
	or h
	ld e,(hl)
	ret nc
	di
	add a,b
	ld a,03ch
	jp z,l68bdh
	ld a,01dh
	adc a,h
	adc a,0beh
	or h
	ld d,a
	dec bc
	rst 20h
	sbc a,(hl)
	inc hl
sub_4855h:
	ld a,c
	ret
	sub d
l4858h:
	djnz l4809h
l485ah:
	adc a,e
	push bc
	ld l,b
	add a,e
	sub c
	dec b
	bit 5,c
	ld (0a397h),a
	ld (bc),a
	inc hl
	ld l,c
	ld a,(069c9h)
	ret c
	dec l
	rlca
	ld d,(hl)
	di
	ret pe
	xor d
	ld (de),a
	inc c
	ret pe
	xor c
	inc b
	cp d
	jp nc,l4728h
	adc a,a
	ret nc
	cp b
	ret c
	jr c,l48bfh
	ld b,046h
	ret p
	djnz l48fbh
	ret nc
	djnz l48bfh
	ld (hl),d
	ei
	call 0c005h
	jr c,$-110
	inc sp
	ld a,(00538h)
	jp nz,09948h
	jr c,l48e0h
	ld d,07dh
	ld c,d
	dec b
	jp z,l660bh
	ld e,h
	ld a,(0fd6bh)
	ld h,05dh
	inc d
	jp z,02355h
	jp nz,03e07h
	rlca
	add hl,sp
	adc a,d
l48b0h:
	dec c
	ld (009ach),hl
	dec b
	and e
	and l
	sbc a,b
	inc h
	add a,b
	ld l,0b6h
	ld l,c
	xor e
	or c
l48bfh:
	push af
	call m,0d309h
	dec b
	add hl,bc
	jp nz,09c13h
	dec e
	rst 38h
	add hl,bc
	ld l,a
	daa
	add hl,bc
	inc l
	inc bc
l48d0h:
	dec e
	push hl
	add hl,bc
l48d3h:
	inc b
	add hl,bc
	adc a,(hl)
l48d6h:
	defb 0fdh,013h,0a6h ;illegal sequence
	dec e
	inc bc
	add hl,bc
	ld b,(hl)
	jp pe,081a5h
l48e0h:
	sbc a,(hl)
	ld d,d
	ld a,0c7h
	sub d
	inc bc
	ld a,b
	add a,d
	ld d,d
	call pe,03af4h
	set 0,h
	ld l,(hl)
	rrca
	rst 28h
	ld h,l
	push af
	dec c
	inc bc
	ld a,(hl)
	rst 0
	dec b
	ld b,0a6h
	ld (de),a
l48fbh:
	jp nc,00832h
	or 031h
	and e
	jp 0070ch
	rlca
	ld de,0c3a2h
	jp l7a9bh
	adc a,(hl)
	ld (hl),b
	ex af,af'
	ld e,01ah
	ld bc,00326h
	ld l,021h
	jp z,06a44h
	rrca
	jr c,l492dh
	rrca
	rlca
	add hl,de
	ld h,006h
	ld l,026h
	rrca
	rrca
	rra
	rrca
	rlca
	inc e
	rrca
	inc de
	rst 10h
	jr c,l49a1h
l492dh:
	cpl
	inc e
	dec bc
	ld l,019h
	rrca
	ld a,(03f39h)
	sbc a,c
	rrca
	dec hl
sub_4939h:
	rrca
	ld a,a
	inc de
	sbc a,d
	ld l,d
	sub 009h
	sbc a,h
	ld l,d
	ld a,d
	ld e,(hl)
	ld l,d
	call nz,0a471h
	ld l,d
	sbc a,l
	jr l48d0h
	jr z,l4980h
	sbc a,(hl)
	ld b,099h
	add a,l
	add a,l
	ld (006a0h),a
	jp nc,0ca7ah
	daa
	ld l,h
	ld l,d
	xor c
	dec b
	and c
	ld l,d
	ld hl,0ae29h
	ld l,e
	inc e
	ld h,(hl)
	xor c
	ex af,af'
	ld h,a
	ld l,e
	ld a,(03210h)
	ld l,d
	ld (hl),d
	ld l,e
	ret nc
	ld b,l
	xor h
	jp c,0338ch
	ret z
	in a,(015h)
	ld a,(0ba31h)
	sub d
	inc bc
	ret
	cp d
l4980h:
	or h
	ld (bc),a
	rst 38h
	xor (hl)
	pop de
	ld h,e
	in a,(011h)
	sub b
	or a
	jp l7700h
	inc bc
	dec b
	ld e,017h
	ld h,0aeh
	inc b
	jp p,l6285h
	dec c
	sub l
	inc sp
	dec c
	ld e,h
	ld bc,03a0dh
	ld a,(de)
	dec de
l49a1h:
	ld (hl),b
	rst 38h
	dec c
	daa
	jp po,0c10dh
	daa
	cp 00dh
	dec d
	adc a,h
	jr c,$+119
	dec c
	ld h,h
	ld (bc),a
	dec c
	xor l
	ld a,h
	ld de,09d8ch
	cp a
	ld b,(hl)
	xor (hl)
	ld c,h
	ld (hl),h
	add a,h
	ld a,b
	adc a,a
	and c
	ld bc,01afeh
	ret nc
	ret p
	ld d,b
	jp c,l6b3dh
	adc a,092h
	ld h,h
	ld (hl),c
	ld l,0a8h
	ld d,c
	pop bc
	dec de
	ld c,d
	ld l,e
	cp l
	add a,b
	ld b,(hl)
	ld l,e
	ld hl,l6b43h
	adc a,024h
	rst 30h
	exx
	and 040h
	sub d
	nop
sub_49e4h:
	ld e,d
	nop
	push bc
	inc bc
	ld bc,00fb2h
	ld b,(hl)
	jp m,089d9h
	ret nz
	ld (hl),c
	ld (bc),a
	sub (hl)
	nop
	ld (00078h),hl
	xor l
	ld b,(hl)
	inc d
	cp b
	rst 28h
	add a,(hl)
	add a,h
	rrca
	cp b
	sbc a,086h
	scf
	ret c
	inc hl
	ld b,b
	ld h,e
	ld l,e
	ld h,l
	ld d,a
	ld h,a
	jp po,0e251h
	inc b
	dec d
	cp 006h
	push de
	cp e
	call po,0f350h
	sub e
	jp c,0ca64h
	dec hl
	cp a
	add a,l
	ret
	in a,(071h)
	push de
	ld e,(hl)
	ld d,095h
l4a25h:
	pop af
	ld c,h
	pop af
l4a28h:
	cp l
	jr l4a96h
	or a
	ret z
	call sub_404ch
	call m,024a4h
	ld d,e
	rst 28h
	ld d,e
	inc bc
	ld h,c
	ld bc,0a2d2h
	ld a,(de)
	or 0eeh
	dec c
	dec de
	call z,0b9eah
	inc b
	and 027h
	ld hl,(0e3c3h)
	ld c,000h
	nop
	ret z
	ld bc,08b04h
	jp po,l6f29h
	cp l
	dec de
	and b
	sbc a,(hl)
	sbc a,(hl)
	sbc a,b
	ld h,03ah
	di
	sbc a,(hl)
	sbc a,l
	rst 10h
	sbc a,d
	call 0cfech
	add a,b
	ld d,e
	ld h,06ch
	add a,b
	exx
	ld bc,00020h
	ld d,a
	ld b,007h
	inc b
	inc d
	adc a,(hl)
	ret m
	ld b,h
	inc (hl)
	ld (bc),a
	ld d,l
	add a,(hl)
	daa
	ld b,040h
	sbc a,l
	exx
	ret nc
	ex (sp),hl
	dec e
	call sub_4855h
	ld d,a
	defb 0edh ;next byte illegal after ed
l4a85h:
	ld c,034h
	djnz l4a25h
l4a89h:
	ld c,038h
	adc a,(hl)
	inc l
	ld h,a
	ld d,001h
	inc l
	sub (hl)
	djnz l4a89h
	inc l
	ret
l4a96h:
	ld de,06c85h
	call 0056bh
	ld de,0a3c2h
	rst 18h
	ld (0e765h),hl
	ld b,016h
	cp 042h
	jp nz,07da0h
	ld de,l6532h
	ld c,002h
	ld e,h
	jp c,0b361h
	ld l,h
	and l
	inc d
	rlca
	ld b,07ah
	ld c,083h
	or (hl)
	ld l,e
	sub d
	ld l,00ah
l4ac0h:
	jp 09585h
	dec b
	dec bc
	push de
	nop
	ld d,032h
	inc c
	jp 00d32h
	jp 0cd04h
	inc h
	dec b
	jp c,029ebh
	rst 8
	ld (0b7c3h),hl
	out (01bh),a
	ld c,b
	ld (01dcfh),a
	add a,(hl)
	add a,h
	or d
	ld c,b
	jp nc,0fe2dh
	ld b,(hl)
	ld e,h
	jp c,03704h
	rst 10h
l4aech:
	adc a,b
	rrca
	push af
	call pe,sub_6cd4h
	dec sp
	ld a,e
	call c,006a4h
	pop bc
	or a
	jp nz,l6d12h
	ld hl,(0d61eh)
	djnz l4aech
	xor l
	ld a,b
	rlca
	sub h
	inc b
	ld hl,09a71h
	ret pe
	ld a,h
	ld l,l
	dec a
	ld b,d
	ld (0c203h),a
	inc (hl)
	ld l,l
	call po,00772h
	dec h
	ld a,(0fa6dh)
	ld h,082h
	ld c,b
	jp z,0320eh
	add hl,bc
	ld a,(l4684h)
	ld l,h
	jr c,l4b7bh
	ld l,l
	ld h,e
	adc a,d
	ld d,0d2h
	ld a,e
	jr nz,l4b7eh
	and e
	djnz l4ac0h
	ld l,b
	dec sp
	sbc a,d
	call nc,0417ah
	ld (hl),h
	ret po
l4b3ah:
	ld b,c
	add a,(hl)
	ld l,h
	xor d
	ret z
	inc bc
	ret
	pop hl
	jp nz,03222h
	xor a
	ex af,af'
	ld d,c
	xor d
	ld b,d
	add hl,hl
	inc b
	rst 10h
	adc a,(hl)
	djnz l4b52h
	add a,e
	ld l,h
l4b52h:
	ret
	ld bc,l5f97h
	inc c
	sbc a,l
	ld l,l
	sub l
	sub a
	adc a,b
	dec b
	jp nz,l70bbh
	ld a,l
	ld l,l
	sub (hl)
	sub a
	inc d
	cp b
	ld (hl),d
	sub a
	adc a,c
	ld a,l
	ld c,003h
	sub a
	jr z,l4b3ah
	call nz,0034ah
	sub a
	xor d
	sub a
	rst 18h
	ld (l6d83h),hl
	sub a
	ld d,h
l4b7bh:
	add a,c
	ld l,l
	sub a
l4b7eh:
	sub a
	ld h,d
	inc bc
	ld l,(hl)
	sub a
	ld e,(hl)
	inc d
	sub a
	sub a
	xor l
	inc b
	scf
	call z,0b097h
	dec c
	ld b,(hl)
	ld l,(hl)
	rst 0
	jp z,0933bh
	ld d,a
	sub a
	ld d,l
	ld hl,(l5234h)
	ld c,b
	adc a,a
	adc a,c
	add a,c
	ld c,090h
	rlca
	or d
	inc b
	ld hl,08d71h
	push de
	inc h
	sub h
	ld l,(hl)
	sub a
	adc a,d
	inc bc
	jp nz,02e4ch
	sub a
	ld c,d
	rlca
	or (hl)
	ld h,h
	ld l,l
	sub a
	or c
	ld c,04dh
	cp d
	add hl,hl
	inc de
	sbc a,h
	ld l,l
	jr c,$+110
	jr c,l4c28h
	sub a
	dec de
	sub e
	ld c,a
	djnz l4c0fh
	adc a,(hl)
	pop de
	dec sp
	sbc a,d
	xor c
	sub d
	ld b,c
	adc a,h
l4bd1h:
	ld b,c
	pop bc
	sbc a,(hl)
	ld l,l
	sub a
	dec h
	inc bc
	sub a
	add hl,hl
	ld (0af32h),hl
	ex af,af'
	ld d,c
	xor d
	ld b,d
	add hl,hl
	inc b
	sub a
	ld d,e
	djnz l4c30h
	sbc a,e
	ld l,l
	sub a
	ld e,h
	nop
	dec h
	jp z,08903h
	ld d,(hl)
	inc d
	call nz,098c2h
	or h
	cp c
	ld l,c
	rrca
	dec bc
	call pe,0040fh
	add a,a
	pop af
	call pe,0eb86h
	pop af
	inc b
	inc c
	ld e,01eh
	inc b
	jr nc,$-8
	inc hl
	inc b
	jp po,0c319h
l4c0fh:
	inc b
	defb 0ddh,0fbh,009h ;illegal sequence
	ld e,b
	jp po,00504h
	ld h,c
	defb 0ddh,004h,023h ;illegal sequence
	jp po,0ae22h
	dec b
	ld (000feh),hl
	inc (hl)
	ld c,0e5h
	xor c
	inc b
	ld l,a
l4c28h:
	jp po,005bbh
	add hl,bc
	jp nz,06f36h
	xor h
l4c30h:
	ld e,l
	ld b,038h
	ld h,d
	ld h,l
	ld b,036h
	dec b
	ld l,a
	ld b,0cbh
	inc sp
	jp z,0355ah
sub_4c3fh:
	ld a,008h
	rst 0
	ld hl,(00392h)
	ld l,a
	dec a
	ld b,a
	add a,a
	add a,a
	add a,b
	ret
	ret nc
	ld hl,012aah
	ld l,(hl)
	add hl,de
	ld a,(hl)
	out (01ah),a
	jp nz,02351h
	inc b
	inc l
	ld e,h
	ret
	pop af
	dec sp
	ld l,a
	ld b,a
	and d
	ld c,(hl)
	add a,b
	cp 0f2h
	ld (de),a
	ld h,c
	inc de
	dec b
	rst 8
	ret nc
	ld hl,l58a7h
	ld l,(hl)
	jr z,$+52
l4c71h:
	ld b,a
	nop
l4c73h:
	call 06f74h
	inc hl
	djnz l4c73h
	ret
	ld a,(hl)
	sbc a,c
	or (hl)
	ret p
	ld e,b
	inc b
	sub l
	ld l,(hl)
	inc hl
	add a,(hl)
	and b
	sub d
	xor l
	inc (hl)
	sub (hl)
	rlca
	sbc a,(hl)
	ld l,(hl)
	sbc a,l
	cp d
	and a
	dec c
	cp d
	ld d,e
	inc d
l4c93h:
	cp d
	jp po,0a7a5h
	ld b,b
	or l
	ld d,b
	inc hl
l4c9bh:
	ld h,b
	ld a,b
	jp nz,041aeh
	ld l,a
	add hl,de
	cp 08ch
	jp nz,006b5h
	ld c,h
	call m,0b298h
	inc sp
	sbc a,e
	jr nz,l4c71h
	jp nz,0364dh
	ld bc,l7e2bh
l4cb5h:
	and h
	sbc a,a
	daa
	ld (hl),a
	ret nz
	call nz,0d294h
	add a,h
	ld l,b
	sbc a,a
	ld l,(hl)
	exx
	ld d,d
	ld hl,0e920h
	adc a,b
	exx
	dec de
	add a,014h
	ld b,(hl)
	ld (hl),a
	sbc a,e
	rra
	xor 06fh
	adc a,b
	nop
	sbc hl,de
	ld (hl),000h
	add hl,de
	inc hl
	ret
	add hl,de
	ld e,004h
	add hl,de
	sub b
	add a,b
	dec d
	ld h,h
	ld h,h
	jr c,l4d18h
	sub b
	adc a,022h
	rst 38h
	ld c,e
	inc c
	add a,e
	dec a
	rrca
	dec sp
	inc h
	rrca
	adc a,d
	adc a,c
	or b
	sub b
	ld a,(l4497h)
	ld l,(hl)
	jp m,04d06h
	ld l,a
	cp e
	out (c),d
l4d00h:
	call nz,0be88h
	ld d,h
	sbc a,b
	jp nc,0a006h
	xor l
	ld h,e
	rst 30h
	pop bc
	add a,d
	ret nc
	ld b,c
	ld (hl),b
	ret nc
	rlca
l4d12h:
	dec b
	jp z,l7053h
	ld h,c
	ret
l4d18h:
	rst 28h
	ex af,af'
	nop
	djnz l4d23h
	sub h
	jp z,l7065h
	cp 007h
l4d23h:
	ld d,b
	ld b,050h
	jp z,011aeh
	inc hl
	ld c,b
	ld b,082h
	ld de,08047h
	ld b,0b4h
	ld de,l4219h
	ld c,(hl)
	ld c,c
	ld d,0c6h
	cp e
	jr z,l4d40h
	and c
	rrc (hl)
	ret po
l4d40h:
	ld sp,0047ch
	add hl,bc
	ret z
	ld (00487h),a
	ret p
	ei
	ld l,c
	sub e
	or e
	ld l,e
	ld (de),a
	ld d,a
	ld l,l
	call po,0848bh
	cp (hl)
	ld bc,0c280h
	ld de,00010h
	and h
	ld d,h
l4d5dh:
	and (hl)
	and b
	and h
	ld (hl),b
	add hl,de
	nop
	djnz l4d5dh
	ret
	ex de,hl
	ld hl,l6ff6h
	ld bc,01184h
	ldir
	ret
	add a,h
	ld l,a
	ld c,b
	sbc a,l
	ld c,035h
	sub h
	cp d
	ld h,d
	ld c,b
	sbc a,a
	inc b
	xor b
	ld c,b
	ex de,hl
	ld e,e
l4d80h:
	ld a,b
	ld e,e
	ld (de),a
	adc a,e
	ld d,l
	ld c,b
	ei
	ld b,a
	ld c,b
	sub e
	in c,(c)
	and e
	ld b,070h
	ld c,b
	sbc a,h
	and b
	pop af
	ld e,d
	jr l4d80h
	in a,(096h)
	inc l
	ld c,0a9h
	ld b,d
	ld a,0fah
	sub e
	ld sp,l46c9h
	ld c,l
	xor l
	pop de
	ld a,e
	and e
	scf
	and a
	ld h,c
	ei
	ld (hl),b
	sub 07bh
	and (hl)
	ld (hl),086h
	ret po
	ld (iy+021h),b
	dec hl
	rst 30h
	ld (hl),b
	jp 0fe4dh
	ld (hl),b
	call po,0fe47h
	dec c
	ld d,a
	call z,03aa3h
	ld c,c
	pop bc
	sub c
	ld l,c
	inc sp
	pop af
	push bc
	xor b
	ld l,a
	sbc a,h
	rst 28h
	ld c,a
	ld c,0efh
	ld (bc),a
l4dd3h:
	xor a
l4dd4h:
	ld (hl),a
	inc hl
	nop
	ld b,h
	ld (hl),c
	ld (bc),a
	djnz l4dd3h
	xor e
	ld h,(hl)
	ret po
	and h
	rla
	ld (09758h),a
	sub (hl)
	rst 38h
	ld d,c
	ld (0802bh),a
	ret p
	ld e,d
	or e
	ld b,(hl)
	add a,b
	and e
	sub a
	add a,b
	ld h,d
	res 1,(hl)
	add a,b
	ld l,l
	cp d
	inc hl
	add a,b
	add a,l
	ld a,h
	jp c,080f1h
	inc e
	ld (bc),a
	ld a,(hl)
l4e02h:
	ld (hl),c
	ld hl,l7178h
	add a,b
	inc (hl)
l4e08h:
	ld a,a
	ld (hl),c
	adc a,h
	add a,b
	ld (hl),l
	ld a,a
	dec c
	or l
	ld l,e
	add a,b
	ld e,088h
	xor h
	add a,b
l4e16h:
	ld sp,hl
	sub c
	xor h
	add a,b
	jp po,00121h
	ld d,072h
	ld b,096h
	ld c,099h
	ld de,0b0a0h
	ld a,099h
	sbc hl,sp
	and e
	ld bc,l48d3h
	sbc a,b
	and l
	di
	nop
	ret
	ei
	ld d,013h
	ld (0328eh),a
	ld (0ef0eh),a
	call m,01632h
	rlca
	ld e,h
	inc sp
	rlca
	ld b,0aah
	call m,01a2ah
	rlca
	add a,(hl)
	cp c
	defb 0fdh,01eh,01dh ;illegal sequence
	rlca
	add a,(hl)
	xor c
	ld l,(iy+021h)
	rlca
	add a,(hl)
	jp (hl)
	defb 0fdh,03eh,025h ;illegal sequence
	rlca
	adc a,(hl)
	ex de,hl
	defb 0fdh,03fh,007h ;illegal sequence
	inc bc
	jp m,l52feh
	jr z,l4e85h
	adc a,d
	adc a,a
	inc e
	inc l
	ccf
	ld c,0feh
	ld hl,(0372fh)
	inc l
	cp l
	ld (hl),b
	inc sp
l4e74h:
	rra
	rst 38h
	jr c,l4e82h
	scf
	rla
	inc e
	rst 38h
	dec bc
	scf
	ld d,a
	ld c,0ffh
	dec h
l4e82h:
	dec sp
	rrca
	ld c,l
l4e85h:
	ld (0073eh),a
	ld c,0bah
	rst 38h
	ld c,e
	ld b,d
	ccf
	rlca
	rst 38h
	ld h,h
	ld b,l
	ld e,a
	inc d
	call z,sub_4939h
	ccf
	add hl,sp
	jr z,l4ee8h
	ld e,a
	jr c,l4f02h
	ld d,b
	daa
	inc e
	cp 00ah
	ld d,h
	ld (hl),a
	ld c,0feh
	dec bc
	ld d,h
	rla
	inc b
	ld b,(iy+058h)
	adc a,a
	ld (hl),d
	ld d,047h
	ld e,e
	and a
	daa
	ld d,d
	ld e,a
	ld b,a
	ld de,038c7h
sub_4ebbh:
	ld h,d
	rra
	ld de,l48fbh+1
	ld h,(hl)
	rst 8
	ret
	ld c,c
	ld h,(hl)
	ld (hl),a
	ret nz
	ei
	ld d,d
	ld l,e
	jp po,0ee27h
	or d
	cp h
	ret c
	dec c
	rrca
	ld (hl),e
	ld a,080h
	rl d
	ld (hl),e
	jp nz,0de94h
	dec bc
	and 00fh
l4edeh:
	rra
	call z,sub_7384h
	ld hl,0a313h
	adc a,c
	or h
	and e
l4ee8h:
	dec l
	adc a,l
	ld b,b
l4eebh:
	jr nz,l4ef4h
	ld a,(l5c64h)
	add a,(hl)
	sbc a,b
	sbc a,e
	ld (hl),e
l4ef4h:
	xor a
	cp d
	xor l
	ld a,b
	ld hl,03bd2h
	dec hl
	ld l,a
	ld (hl),a
	ld a,(00121h)
l4f01h:
	add a,(hl)
l4f02h:
	ld e,a
	inc hl
	ld d,(hl)
	inc hl
	ld a,(00334h)
	or d
	ld d,a
	ld a,d
l4f0ch:
	rlca
	rlca
	pop bc
	nop
	ld (hl),a
	di
	out (099h),a
	jr nz,l4f54h
	adc a,(hl)
	inc bc
	out (c),e
	ld a,d
	and 02dh
	ccf
	ld d,a
	rlca
	jp z,02850h
	rlca
	in a,(098h)
	nop
	cp 099h
	jp z,l737ch
	ei
	ld a,0fbh
	ld c,a
	add a,b
	sub c
	ld d,002h
	inc b
	ld (bc),a
	djnz $-85
	ret
	set 6,d
	call p,07355h
	ld (bc),a
	inc h
	ld (hl),d
	ld (bc),a
	dec c
	ld (bc),a
	ei
	nop
	inc c
	djnz l4edeh
	ret
	ld b,01fh
	ccf
	ld a,h
	jr $+114
	ret p
	ret po
l4f52h:
	nop
	ret p
l4f54h:
	nop
	jr nc,l4f93h
	rra
	rlca
	nop
	add a,b
	ret po
	ret m
	inc c
	inc a
	inc c
	ld c,006h
	nop
	nop
	ld c,00ch
	inc a
	ret m
	ret po
	nop
	rlca
	jr l4f6fh
	jr nz,l4fb2h
l4f6fh:
	ld c,h
	adc a,b
	sub b
	djnz l4f75h
	nop
l4f75h:
	ex af,af'
	ld c,h
	ld b,e
	jr nz,$+26
	rlca
	ret po
	jr l4f7eh
l4f7eh:
	inc b
	jp nz,01132h
	add hl,bc
	add hl,bc
	dec c
	dec c
	ld b,l
	add hl,de
	ld l,h
	call nz,02018h
	nop
	and (hl)
	ex af,af'
	rlca
	nop
	ld a,003h
l4f93h:
	or b
	ld e,a
	ex af,af'
	call 01026h
	jr nz,l4feah
	adc a,h
	ret nz
	ld h,b
	djnz $-12
	call pe,0060bh
	rrca
	dec bc
	dec bc
	add hl,bc
l4fa7h:
	rlca
	rra
	jr l4fc7h
l4fabh:
	ret nc
	sub b
	ld e,l
	ret nc
	inc b
	rra
	adc a,b
l4fb2h:
	ld b,002h
	inc bc
	inc e
	rrca
	dec sp
	rst 10h
	and e
	ld hl,0f8c0h
	ret p
	ccf
	ld c,080h
	ret nz
	ld b,b
	rra
	xor b
	ld e,03fh
l4fc7h:
	rrca
	ccf
	ld a,b
	inc bc
	ld e,081h
	jr nz,l4fa7h
	ret p
	ret nc
	and b
	ret nz
	rra
	call c,00300h
	dec h
	rra
	rrca
	ld a,a
	ld bc,00c00h
	jp 03940h
	ld sp,0f87fh
	ld c,(hl)
	jp po,00603h
	inc b
	dec de
l4feah:
	rrca
	dec bc
	dec b
	jr nz,$+118
	rra
	ret nz
	rlca
	and b
	ret nc
	ret nc
	ret p
	cp b
	ret p
	ld (hl),b
	ld a,(l452fh)
	pop bc
	pop hl
	ld c,01bh
	ld (hl),l
	call po,00328h
	rlca
	inc e
	ld (hl),l
	ret nz
sub_5008h:
	ld b,021h
	dec e
	ld (hl),l
	ld de,l4d00h
	ld (hl),l
	ld b,030h
	call sub_74f0h
	inc hl
	inc b
	inc de
	djnz $-5
	ld hl,00e4dh
	ld a,l
	add a,(hl)
	ld c,010h
	ld a,(hl)
	add a,a
	nop
	ld c,b
	rst 0
	ld c,(hl)
	djnz $-125
	dec hl
	ld c,(hl)
	dec b
	ld (de),a
	inc de
	ld a,c
	ld b,h
	ld (de),a
	dec de
	call pe,01821h
	call 0e905h
	ld (bc),a
	ld a,(0c398h)
l503ch:
	ld a,003h
	ld (hl),h
	pop af
	ld a,(bc)
	jp z,0f805h
	bit 2,d
	sbc a,b
	inc l
	dec (hl)
	ld c,b
	xor a
	di
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
	ld bc,03d7eh
	cp 0ffh
	jr nz,l5060h
	sbc a,h
l5060h:
	jr c,l5072h
	ld c,0f5h
	call 074b2h
	jr c,l5071h
	ret
	ld (bc),a
	and b
	cp c
	push bc
	inc de
	ld b,083h
l5071h:
	inc b
l5072h:
	inc b
	rlca
	ld bc,00303h
	dec b
	inc b
	ld bc,00204h
	inc b
l507dh:
	dec b
	ld bc,09a07h
	adc a,d
	or e
	call 08a00h
l5086h:
	cp (hl)
	and 058h
	ld e,c
	inc bc
	dec de
	inc d
	dec h
	ld e,a
	ld bc,0c800h
	ld (de),a
	ld a,(08cb0h)
	ld b,0c8h
	call 0056ch
	rlca
	ld a,c
	or d
	inc bc
	ld a,b
	or d
	jp z,0c828h
	ld (hl),l
	call m,0b589h
	or c
	ld d,002h
	ld hl,l5c65h
	jp z,0b9c1h
	jr nz,l503ch
	ld e,h
	ld bc,0069ah
	ld (de),a
	xor a
	jp 002deh
	ld b,00dh
	ld hl,05c77h
	add hl,bc
	nop
	nop
	ld hl,l7601h
	ld de,053deh
	ld bc,00c66h
	rst 20h
	halt
	or c
	rla
	or a
	ld d,l
	jp pe,00d3ch
	djnz l50f6h
	ret
	inc e
	ld l,l
	ret
	inc e
	pop bc
	cp e
	ld h,b
	ret
	and b
	ld b,032h
	jr c,l5086h
	push bc
	inc a
	jp nz,0b9d4h
	add a,c
	inc c
	jp l53eah
	ld de,0aa06h
	jp 0b25eh
l50f6h:
	and b
	push hl
	ld hl,l7627h
	xor d
	rlca
	ret po
	nop
	pop hl
	push de
	ret
	adc a,d
	ld (hl),a
l5104h:
	xor l
	ld (hl),a
	defb 0ddh,000h,077h ;illegal sequence
	dec e
	ld a,b
	ld e,e
	ld a,b
	call nc,01a78h
	nop
	ld a,c
	jr z,l518dh
	sbc a,l
sub_5115h:
	ld a,c
	inc de
	ld a,d
	ld c,a
	nop
	ld a,d
	ld e,c
	ld a,e
	adc a,b
	ld a,e
	or d
	ld a,e
	or c
	nop
	ld a,h
	ex de,hl
	ld a,h
	ld e,a
	ld a,l
	ld c,b
	ld a,(hl)
	or b
	inc d
	ld a,(hl)
	ld de,03703h
	ret
	add a,b
	jp nz,07662h
	ld a,(l5948h)
	pop bc
l5139h:
	adc a,h
	ld c,l
	add hl,bc
	jp z,07661h
	jp nc,0f838h
	ld d,h
	ret
	push de
	rst 38h
	ld b,0c3h
	ld (hl),d
	halt
	ld b,07fh
l514ch:
	inc b
	sbc a,l
	ccf
	push hl
	sub h
	nop
	ld (bc),a
	and b
	ld (hl),a
	ld h,000h
	ld l,a
	add hl,de
	ld (hl),h
	ld b,(hl)
	rst 10h
	pop hl
	ld b,a
	dec hl
	nop
	add a,(hl)
	ld (hl),a
	and a
	ld b,d
	add a,b
	ld (hl),a
	ret
	cp b
	inc l
	ld bc,0ff38h
	ld bc,08e05h
	inc bc
	ld bc,00dffh
	dec sp
	dec b
	sub a
	inc bc
	cp 005h
	inc bc
	ld h,000h
	cp 007h
	cp c
	nop
	inc bc
	call 0c40dh
	jr c,l518bh
	pop hl
	ld bc,00dffh
	sbc a,h
l518bh:
	dec b
	ld e,h
l518dh:
	inc bc
	rlca
	ld (hl),a
	dec b
	inc bc
	rst 0
	ex af,af'
	ld e,c
	ld (0df05h),hl
	jr nc,l5139h
	ld bc,l543bh
	ld d,(hl)
	rst 0
	ld l,b
	ld a,005h
	ld de,0c282h
	rst 38h
	sub b
	dec sp
	adc a,(hl)
	and (hl)
	jr c,l51afh
	adc a,l
l51adh:
	or h
sub_51aeh:
	ex (sp),hl
l51afh:
	inc de
	ld bc,00196h
	dec c
	ld (hl),c
	dec b
	inc bc
	ld (hl),c
	rlca
	dec b
	rst 18h
	inc bc
	dec e
	ex af,af'
	ld h,a
	ld (l7e03h+2),hl
	jr nc,l5224h
	nop
	call sub_764dh
	ld (hl),025h
	ld (bc),a
	xor a
	jp m,0b024h
	ld a,l
	ld a,(hl)
	pop de
	jp m,l77d3h
	xor d
	di
l51d7h:
	or d
	call po,0beafh
	and (hl)
	ex af,af'
	or (hl)
	ld a,(0ab08h)
	ld b,b
	ld de,l768ah
	call 06648h
	sbc a,0f3h
	jr l51adh
	dec a
	ret nz
	in a,(092h)
	ld h,0c8h
	jp nz,03d47h
	pop hl
	jp nz,0d2aah
sub_51f9h:
	jp nc,044e6h
	ld e,a
	pop af
	add a,b
	call z,sub_7f33h
	dec hl
	ret
	xor d
	inc hl
	adc a,c
	sbc a,e
	cpl
	rst 38h
	cpl
	ld d,d
	sub d
	jp c,0e16eh
	ld e,(hl)
	ld a,(bc)
	add a,c
	nop
	dec b
	ld a,b
	dec a
	jp z,l77fah
	inc (hl)
	ld b,d
	inc (hl)
	daa
	or a
	call z,0262ah
	add hl,sp
	dec (hl)
l5224h:
	ret
	ld a,(bc)
	ld b,e
	inc a
	ld a,(bc)
	inc (hl)
	ret
	ld a,(hl)
	exx
	adc a,c
	add a,e
	add a,b
	cp 01fh
	ret nc
	ld a,(hl)
l5234h:
	inc e
	add hl,de
	sub c
	ld d,d
	ld b,07bh
	add hl,de
	ld a,b
	add a,d
	add a,e
	ld (hl),b
	ccf
	or (hl)
	inc a
	adc a,e
	add a,b
	ld (hl),a
	ld b,a
	dec hl
	jp nz,0703fh
	ld a,b
	ld c,b
	ld a,(00000h)
	jp nz,00ebeh
	rst 38h
	jp c,0783bh
	ld h,00eh
	ld bc,011eah
	add a,c
	ld (hl),a
	ld c,(hl)
	sub d
	nop
	ld a,b
	or a
	jp nz,l784bh
	ld a,(hl)
	xor 05ch
	ex af,af'
	ld b,c
	ld c,a
	sub b
	dec (hl)
	dec hl
	rla
	cp 0eah
	ret nc
	ld a,b
	ld (hl),a
	dec a
	adc a,b
	jp nz,l78a6h
	rst 10h
	sbc a,l
	dec b
	inc a
	ld (03c06h),hl
	ld a,b
	ld a,b
	ld h,e
	pop de
	or h
	ld bc,08148h
	ld bc,084d2h
	ld a,b
	ld c,l
	inc d
	dec e
	add hl,de
	add a,b
	or b
	inc bc
	cp 024h
	jp nz,09348h
	add hl,hl
	ld (hl),a
	ld d,l
	ld b,0feh
	inc hl
	jp p,0829eh
	nop
	neg
	cp 004h
	jp c,02ea4h
	ld a,b
	ld (hl),b
	sbc a,00ch
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld e,(hl)
	ld c,0e6h
	rlca
	jp nz,l6ab6h
	ld c,b
	ld a,(hl)
l52bah:
	add a,e
	ret p
	ret nc
	ccf
	call z,sub_7f21h
	sub d
	ld a,(bc)
	add a,d
	add a,b
	ld bc,030e2h
	ld b,03ah
l52cah:
	ld d,d
	pop bc
	or d
	ld (hl),b
	dec b
l52cfh:
	inc hl
	ld (hl),038h
	ld bc,0782bh
	ld l,d
	dec hl
	ld a,d
	rlca
	jr z,l5314h
	jp nz,030e7h
	sub l
	or d
	ld (de),a
	jp nz,078f8h
	or h
	jp nz,007cah
	adc a,e
	and h
	ld a,052h
	ret nz
	cp l
	ld c,b
	cp e
	jp c,00725h
	ld a,c
	ld (081c6h),a
	adc a,b
	add hl,de
	ld b,0e5h
	ld e,054h
	ld d,b
l52feh:
	sbc a,h
	ld a,(bc)
	dec d
	ld c,a
	call 0f20ch
	ld a,h
	and b
	ld (hl),047h
	ld c,0b4h
	ld d,l
	jr $+64
	or c
	add a,d
l5310h:
	ld d,a
	cp 0c0h
	rlca
l5314h:
	jp c,l7934h
	sub h
	ld h,b
	rst 38h
	ld e,d
	adc a,l
	ld l,h
	exx
	ld (hl),b
	dec hl
	adc a,b
	ld e,a
	sub d
	ld a,c
	ret
	ret c
	push de
	pop bc
	ld c,(hl)
	ld a,c
	ld b,07bh
	ld c,e
	sbc a,(hl)
	ld de,011d5h
	ld e,d
	ld a,c
	push de
	ld e,023h
	push hl
	ei
	sub e
	sub l
	and d
	jp nz,l797bh
	sbc a,020h
	jp p,l7974h
	cp 002h
	cp 0c2h
	ld a,d
	ld a,c
	inc a
	jp 0bb03h
	rst 0
	ex af,af'
	ld h,0b6h
	add a,h
	ld a,h
	add a,c
	jp p,00c8ah
	defb 0fdh,031h,0c2h ;illegal sequence
	sub b
	dec d
	sub b
	ex af,af'
	ld d,h
	jr z,$+6
	dec d
	pop hl
	adc a,h
	jp c,0d38ch
	dec h
	cp 0f0h
	pop bc
	and h
	ld c,(hl)
	ret
	ld (hl),c
	exx
	call nz,0b869h
	cp d
	ld b,(hl)
	sbc a,b
	ld bc,0ebfeh
	jp nz,l79b7h
	ld a,0d3h
	call pe,0102ch
	jp z,011cfh
	cp 0b4h
	jp z,0e24dh
	ld a,(0048ch)
	inc b
	ld h,h
	jp z,l79deh
	dec (hl)
	ld (0090dh),hl
	ld (l7a12h),a
	dec hl
	sbc a,d
	adc a,095h
	inc c
	ld a,d
	ret
	adc a,a
	jr $+6
	dec bc
	inc hl
	add hl,bc
	cp 046h
	jp nc,034efh
	ld bc,0810ch
	cp 0a0h
	jp c,009f9h
	ld (009ffh),a
	sbc a,c
	dec (hl)
	dec a
	adc a,c
	add hl,de
	add hl,bc
	daa
	dec a
	ret c
	ld a,(bc)
	add hl,de
	ld (hl),a
	xor a
	ld b,b
	ld c,000h
	jp l61d0h
	ld a,c
	push af
	ld (hl),l
	jp pe,l602ch
	ld a,d
	ld (hl),l
	jp nc,l7a2bh
	dec h
sub_53d4h:
	ld a,0ebh
	call nz,05923h
	ld (hl),a
	dec a
	ld e,(hl)
	dec b
	ld (l7fe7h),a
	dec bc
	ld e,(hl)
	ld e,b
	ld h,e
	ld b,h
	ld a,a
	ld c,b
	ret nz
	or l
	sub b
l53eah:
	sub d
	ld (0b505h),hl
	call z,0b2b2h
	dec (hl)
	sub d
	sbc a,0bfh
	ld c,l
sub_53f6h:
	nop
	or h
	and e
	rlc c
	adc a,0feh
	and e
	djnz l5433h
	jr nc,l5404h
	ld a,d
	nop
l5404h:
	call z,00154h
l5407h:
	cp a
	adc a,0eah
	dec sp
	pop af
	ld a,c
	or e
	dec sp
	sub 089h
	push bc
	ld d,h
	ld b,(hl)
	call nz,09c96h
	inc d
	ld (hl),c
	ld a,e
	add a,h
	call nz,02306h
	xor b
	adc a,b
	ld bc,0b477h
	xor (hl)
	nop
	ld de,07a59h
	jp z,07b7ch
	ld de,005d9h
	ld a,d
	call sub_766bh
l5432h:
	inc hl
l5433h:
	or e
	xor l
	call nz,0ac65h
	cp b
	pop bc
l543ah:
	dec b
l543bh:
	jp nz,l7b97h
	inc (hl)
	sub (hl)
	xor h
	ld d,a
	pop hl
	ld a,e
	ccf
	xor 075h
	exx
	jr nz,l547fh
	ret c
	inc (hl)
	cp c
	xor h
	inc hl
	cp (hl)
	jr nc,$-64
	jp z,001fdh
	ld a,e
	ld (hl),a
	exx
	xor a
	ld a,(0c13eh)
	and h
	or b
	ld e,a
	ld hl,(l4858h)
	ld h,h
	pop af
	ld (00488h),hl
	exx
	jp nc,0cd14h
	xor a
	ld (de),a
	ld h,l
	jp c,05adeh
	ld a,(bc)
	add a,e
	ld h,h
	ld d,e
	djnz l543ah
	cp e
	rrca
	call m,0060eh
	pop bc
	add a,h
	ld b,b
l547fh:
	ex af,af'
	pop bc
	ld (0f0a3h),a
	adc a,c
	ex af,af'
	ld (00746h),a
	rlca
	and d
	jp 033e3h
	xor b
	ld l,e
	defb 0edh ;next byte illegal after ed
	adc a,l
	inc bc
	cp 03ch
	jp nc,l7c0dh
	ei
	ld a,(bc)
	call po,03cc0h
	ld l,h
	cp 0beh
	sbc a,c
	ex de,hl
l54a2h:
	ld a,h
	add a,e
	ld h,h
	ex de,hl
	pop hl
	jp p,09d5bh
	ld b,b
l54abh:
	ld b,0e5h
	jp nz,02508h
	ld a,h
	ld b,013h
	ld l,b
	ld l,h
	sub b
	xor b
	adc a,l
	ld (hl),0cch
	add hl,bc
	dec hl
	ld (hl),0e6h
	ret
	sbc a,059h
	defb 0fdh,05ch ;ld e,iyh
	rlca
	sub (hl)
	ret p
	rst 20h
	sbc a,a
	adc a,(hl)
	add hl,bc
	ld h,a
	dec b
	ld bc,l5d07h
	rla
	jp z,0738eh
	daa
	adc a,c
	ld c,h
	ld h,d
	rlca
	defb 0fdh,0feh,053h ;illegal sequence
	ld bc,0f625h
	ld l,(hl)
	ld bc,029b0h
	ld bc,059d2h
	bit 1,(hl)
	ld b,019h
	nop
	djnz l5504h
	pop bc
	ld (bc),a
	cp 026h
	jp nz,02efdh
	sbc a,(hl)
	jp p,l4833h
	ld b,08ah
	ld c,09fh
	ld b,e
	ld c,a
	add a,0adh
l54ffh:
	cpl
	add a,e
	add a,b
	and b
	cp b
l5504h:
	jp nz,l7cc1h
	ld a,(hl)
	adc a,b
	sub (hl)
	ex de,hl
	ld b,0e8h
	ret p
	ld sp,0707ch
	add hl,bc
	bit 1,(hl)
	inc sp
	ex de,hl
	xor a
	and c
	adc a,d
	jp m,0cecch
	ld d,b
	cp 0fah
	jp nc,000e6h
	ld a,h
	add hl,de
	ld de,l7c71h
	call 07670h
	sub d
l552bh:
	or e
	ld (ix-072h),071h
	ld c,(hl)
	ex (sp),hl
	dec l
	inc c
	jp nz,l7d3ch
	xor 044h
	adc a,h
	cp l
	add a,b
	jp c,l7d14h
	cp 0c8h
	ld e,l
	ld d,0b0h
	ld b,05eh
	push bc
	sbc a,c
	ld d,0ffh
	rrca
	dec c
	ld h,b
	ld a,(de)
	sub (hl)
	ld e,000h
	ld (02dd2h),hl
	ld a,(de)
	inc a
l5556h:
	jp c,09504h
	ret m
	ld d,d
	ld e,021h
	ex af,af'
	ld e,0d2h
	call pe,0bc00h
	sbc a,(hl)
	or b
	inc bc
	jp p,09fb4h
	ld c,(hl)
	dec hl
	push de
	rla
	ld c,h
	ld a,l
	sub e
	xor l
	add a,e
	add a,c
	rlca
	ld a,l
	ld a,06bh
	halt
	ld d,0f9h
	or a
	cp e
	jr c,l5556h
	ld (hl),b
	and h
l5580h:
	add a,l
	or c
	ld hl,(022afh)
	or a
	inc de
l5587h:
	jp z,l7db8h
	adc a,d
	jp z,08a04h
	ld (hl),b
	ld a,007h
	sbc a,h
	add a,a
	rst 8
	ld c,0d0h
	and a
	ret nz
	nop
	ld b,a
	ld a,(07d5ch)
	sub b
	ld (00388h),a
	jp nc,l68a4h
	ld e,l
	ld a,l
	or d
	call c,09c03h
	dec l
	jp nz,0002dh
	ld h,e
	ld e,h
	exx
	call 00500h
	exx
	ld (hl),0c3h
	cp b
	jr l5580h
	adc a,(hl)
	ld b,02eh
	ex (sp),hl
	ld (hl),b
	jp nc,0b11bh
	add a,b
	ld a,(05bf7h)
	dec a
	call z,sub_7e13h
	ret nz
	dec bc
	ld e,(hl)
	ld a,l
	ld (0fb01h),a
	ret m
	xor d
	add hl,sp
	ld d,d
	ld (de),a
	jp po,03222h
	inc b
	jp z,02ce6h
	add hl,bc
	ld h,c
	ld e,h
	add a,028h
	push bc
	call nz,00662h
	ld e,09bh
	cp d
	dec c
l55eah:
	ret
	ld (l48d6h),a
	and a
	and (hl)
	call 0d811h
	cp d
	inc hl
	inc c
	sla a
	call pe,0cd1ch
	sub b
	ld (hl),c
	add a,d
	di
	add hl,sp
	inc b
	ld d,c
	djnz $-73
	ld h,b
	inc l
l5606h:
	cp 0a7h
	ret c
	call nc,0a8cfh
sub_560ch:
	xor c
	ld (hl),b
	rla
	dec b
	jp nz,07e34h
	ld a,(0094fh)
	ld b,0aeh
	ld b,(hl)
	ld b,005h
	ld de,00bb8h
	call c,0af11h
	inc sp
	xor a
	ld (hl),a
	ld (hl),e
	add a,d
	ld (hl),0d2h
	sub l
	add a,d
	jp m,095f1h
	cp c
	dec h
	ld a,(hl)
	ld a,(hl)
	sub a
	ld (hl),e
	exx
	ld a,(bc)
	inc hl
	jp nz,0dc0ah
	sbc a,e
	ld (de),a
	jr z,$-36
	ld l,e
	rst 8
	add a,(hl)
	jp c,08675h
	ld e,c
	nop
	push af
	ld b,a
	sub a
	ld l,a
	sub 048h
	dec hl
	cp b
	jp nz,l5c02h
	add a,b
	cp d
l5652h:
	xor h
	rst 18h
	ld b,b
	ld bc,0ca07h
	adc a,a
	ld a,(hl)
	ld b,0f0h
	nop
	ld a,(l6c69h)
	sub 00fh
	sub b
	cp 0d2h
	ld (09cdah),hl
	jp c,0d256h
	add a,h
	cp b
	pop bc
	ld a,(de)
	ld l,c
l5670h:
	xor d
	ld a,(de)
	ld l,e
	ld l,h
	sbc a,027h
	ld h,a
	cpl
	and 067h
	rla
	and 067h
	sub e
	out (067h),a
l5680h:
	ld e,a
	defb 0ddh,067h ;ld ixh,a
	inc bc
	inc bc
	ld h,a
	exx
	rst 30h
	ld c,h
	and a
	add a,c
	ld l,l
	ld h,a
	daa
	inc b
	ld a,a
	ld h,a
	sbc a,c
	ld (de),a
	ld a,a
	ld a,(de)
	add a,(hl)
	add a,e
	ld l,l
	ld h,a
	ld l,(hl)
l569ah:
	rst 28h
	call z,sub_45f4h
	ld (hl),b
	ld a,a
	ex af,af'
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	ex af,af'
sub_56a4h:
	inc bc
	ex af,af'
	in a,(004h)
	ex af,af'
	or (hl)
	dec b
	ex af,af'
	add a,h
	ld a,(hl)
l56aeh:
	ld (0c3c8h),a
	adc a,a
	ld b,c
	ld (0c3c7h),a
	inc hl
	ld l,(hl)
	adc a,(hl)
	ret
	add a,(hl)
	add a,c
	dec d
	nop
	call c,02663h
l56c1h:
	cp 09ah
	ld a,(bc)
	xor e
	ret nc
	nop
	ld (hl),b
	rrca
	ld l,e
	jr z,l5652h
	ld b,004h
	ld a,(bc)
	inc c
	sbc a,d
	ld sp,0a40fh
	add a,e
	jr l56ddh
	ld b,078h
	ld a,(bc)
	rra
	sub c
	ld (hl),e
l56ddh:
	inc h
	dec l
	ex af,af'
	jr z,l569ah
l56e2h:
	ld (hl),a
	rrca
	ld h,l
	sub e
	ld a,(de)
	ld b,01eh
	ld a,b
	rrca
	sub b
	cp e
	inc sp
	ld a,(0a00ch)
l56f1h:
	inc c
	ret p
	rrca
	inc hl
	out (02fh),a
	ld b,010h
	or h
	ccf
	ret nz
	rst 10h
	ex de,hl
	ld bc,00031h
	push af
l5702h:
	ld (de),a
	ld (0010ah),a
	rrca
	call po,0f20ch
	rrca
	inc de
	ld h,h
	or e
	inc e
	ld b,014h
	ld c,a
	ret z
	sra l
	sub h
	ld a,(00f16h)
	adc a,a
	ld a,b
	inc bc
	jp 0fb35h
	call m,00f18h
	ret z
	jr c,l575ah
	add a,a
	ld b,01ah
	rst 38h
	ld b,02fh
	add a,d
	and e
	adc a,a
	dec a
	ld de,0df75h
	inc hl
	ld e,0deh
	ld a,h
	ld c,a
	inc b
	cp (hl)
	jr c,l5774h
	ld b,020h
sub_573dh:
	call pe,01e2fh
	djnz $+101
	add hl,sp
	ld (bc),a
	ld d,b
	dec b
	ld e,b
sub_5747h:
	or h
	ld (bc),a
	jp m,005ddh
	ld de,00140h
	ld (bc),a
	ld a,(bc)
	ld h,b
	adc a,c
	ld bc,00e80h
	sub e
	ld b,h
	ld (hl),b
	ld a,a
l575ah:
	ld a,(de)
	ld d,b
	sub (hl)
	ld (bc),a
	jr c,$-78
	ld (02d16h),a
	or b
	ld h,h
	adc a,l
	rlca
	ld d,b
	jp m,l43b0h
	jr c,l56f1h
	ld c,03ch
	sbc a,c
	ld (bc),a
	ld e,d
	inc d
	ld (bc),a
l5774h:
	inc h
	jr z,l5779h
	ld b,(hl)
	ld (bc),a
l5779h:
	ld e,002h
	sub (hl)
	or b
	ld c,l
	inc a
	and b
	ld h,h
	ld (bc),a
	ld b,(hl)
	ld e,b
	ld (bc),a
	ld a,b
	ld h,h
	ex af,af'
	and h
	ld b,(hl)
	ld (bc),a
	adc a,d
	ld (bc),a
	and b
	ld d,d
	inc a
	ld bc,l4e02h
	ld (bc),a
	ld h,d
	ld d,b
	inc d
	ld h,l
	ld (bc),a
	add a,b
	add hl,hl
	adc a,h
	ld a,l
l579dh:
	or b
	and b
	ld bc,00940h
	ld b,h
	ld bc,078b0h
l57a6h:
	ex af,af'
	adc a,c
	ld (080c2h),a
	ld (bc),a
	ld c,c
	add a,d
	ld (bc),a
	xor d
l57b0h:
	ld (bc),a
	adc a,h
	inc hl
	inc sp
l57b4h:
	sub (hl)
sub_57b5h:
	dec b
	dec (hl)
	add a,d
	ld c,(hl)
	or h
	ld (00156h),a
	ld e,h
	ld (bc),a
	dec b
	ld l,l
	sub e
	ld (09847h),a
	jr z,l57c8h
	sbc a,b
l57c8h:
	xor e
l57c9h:
	ld c,0cfh
	jr z,l5847h
	ld (bc),a
	add a,d
	ld l,c
	dec hl
	or b
	xor d
	dec b
	ld sp,hl
	xor c
	ld a,l
	ld (bc),a
	ld l,(hl)
	ld c,d
	inc a
	sub (hl)
	inc l
	scf
	ld e,a
	dec bc
	or h
	sbc a,h
	dec bc
	ld (hl),e
	ld d,000h
	ld e,l
	ld l,d
	or e
	ld b,a
	sbc a,e
	add a,d
	ld (hl),e
	ex af,af'
	add a,d
	ld de,l57f9h
	nop
	sub 00bh
	inc c
	ld e,d
	push af
	and b
l57f9h:
	ld (0006eh),a
	ld l,(hl)
	and b
	jr z,l5837h
	ret nc
	ld b,h
	ld d,b
	ld b,b
	nop
	ld h,c
	inc hl
	jr nc,l5871h
	add hl,de
	jr nc,$-120
	rrca
	nop
	jr nc,l57b4h
	dec b
	jr nc,$+86
	ld b,c
	jr nc,l57b0h
	ld d,c
	ld d,l
	ex af,af'
	ld c,07ch
	ld bc,02559h
	dec l
sub_581fh:
	dec bc
	ld bc,00547h
l5823h:
	jp 00578h
	ld e,056h
	ld e,a
	ld d,d
	sbc a,h
	ld b,0a0h
	rst 38h
l582eh:
	jr nc,l582eh
	ld (bc),a
	dec h
	ld e,0c3h
	xor (hl)
	dec b
	sub d
l5837h:
	ld h,h
	in a,(0dah)
	ld c,e
	ld (bc),a
	ld (de),a
	scf
	jr nc,l57c9h
	ld (bc),a
	ld l,e
	ld (bc),a
	ld c,c
	ld d,a
	ld (bc),a
	ld a,a
l5847h:
	ld (bc),a
	cpl
	ld (bc),a
	daa
	ld c,l
	cpl
	add hl,sp
	inc d
	add a,075h
	sub d
	dec b
	cp e
	ld (bc),a
	sbc a,l
	ld (bc),a
	ld c,(hl)
	or c
	ld (bc),a
	sub e
	ex af,af'
	ld e,e
	rst 38h
	ex af,af'
	add hl,hl
	rst 20h
	ld de,005ceh
	add a,c
	ld e,d
	jr nz,l5823h
	sub (hl)
	jr nz,l58a4h
	dec b
	adc a,c
	ld b,(hl)
	dec b
	jr z,l5891h
l5871h:
	ld l,028h
	ld h,005h
	add hl,bc
	ld d,a
	ld a,(bc)
	ld e,h
	sub (hl)
	dec b
	inc h
	ld c,e
	ld c,d
	ld c,e
	inc hl
	inc hl
	add a,h
	add hl,hl
	jr z,l58a5h
	ld c,l
	dec b
	ld a,a
	adc a,d
	dec b
	ld l,e
	inc hl
	ld de,l4805h
	sbc a,l
	dec b
l5891h:
	ld d,a
	ld (bc),a
	ld b,e
	inc hl
	or e
	inc l
	ld a,(de)
	rla
	inc sp
	inc d
	ld (bc),a
	ex (sp),hl
	sbc a,023h
	ld (hl),a
	ld de,092b1h
	adc a,l
l58a4h:
	ld b,c
l58a5h:
	ld c,l
	inc h
l58a7h:
	ld b,e
	ld c,e
	ld c,04bh
	ld c,087h
	sbc a,l
	ld c,087h
	ld h,0b8h
	inc h
	ld h,0e7h
	ld de,0db26h
l58b8h:
	ld b,a
	jp c,l79bbh
	ld c,l
	ld h,h
	cp e
	ld d,b
	call z,0f9c1h
	and h
	and l
	inc hl
	pop hl
	inc hl
	rrca
	cp b
	inc d
	ld (bc),a
	ld c,(hl)
	ld d,a
	ld (bc),a
	ld b,e
	ex af,af'
	out (061h),a
	ld (bc),a
	add hl,sp
	rla
	ret po
	pop af
	dec bc
	ld c,c
	ld bc,00108h
	ex af,af'
	ld bc,0be08h
	dec bc
	dec a
	dec e
	xor d
sub_58e5h:
	ld l,e
	ld (bc),a
	and a
	inc h
	rst 8
	sbc a,h
	ld (bc),a
	sub e
	ld de,l4d00h+2
	rlca
	jr nc,l58b8h
	dec b
	dec bc
	ld c,e
	ld b,017h
	inc hl
	inc d
	ld a,(de)
	jr z,l590bh
	sub d
	cp b
	add hl,hl
l5900h:
	adc a,d
	inc d
	ld l,e
	ld (bc),a
	ld c,002h
	ld c,d
	and a
	rst 8
	ld (hl),e
	ld (bc),a
l590bh:
	nop
	rst 38h
l590dh:
	rst 38h
	nop
	ld h,e
	ld b,c
	nop
	nop
	nop
	jp l4c93h
l5917h:
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
	jr l5959h
	inc e
	ld c,015h
	ld e,020h
	rra
	rla
	ld b,003h
	rrca
	ld c,01ch
	jr l5966h
	ret nz
l5948h:
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
l5959h:
	rlca
	inc c
	djnz l597ch
	ld h,b
	ccf
	jp p,03ffch
	cp 01eh
	cp (hl)
	ret nz
l5966h:
	nop
	ld b,b
	ld (bc),a
	djnz l59aah
	rra
l596ch:
	ld e,h
	rlca
	ld bc,0381ch
	jr nc,l5973h
l5973h:
	nop
	ld (0f6d8h),hl
	ld (iy+078h),e
	inc b
	ccf
l597ch:
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
	jr c,l59a7h
	ld e,00fh
l5995h:
	rlca
	inc c
	ccf
	ld bc,07c40h
	ld a,(hl)
	rra
	add a,b
	ld d,008h
	ld a,0ffh
	nop
l59a3h:
	call po,05a00h
	rra
l59a7h:
	nop
	rst 38h
	inc bc
l59aah:
	add hl,bc
	ld a,h
	add hl,bc
l59adh:
	inc bc
	rst 38h
	rra
	or b
	ld h,h
	jr nc,l5a04h
	cp b
	nop
	call nc,0d8dah
	djnz l59a3h
l59bbh:
	djnz l5995h
	jp c,0d41ch
	cp b
	ld d,b
	ld c,e
	daa
	inc bc
	jr nz,l5a03h
	dec e
	ld a,d
	nop
	ret nc
	nop
	ret pe
	ld d,0e8h
	jr l59bbh
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
l59edh:
	rrca
	and (hl)
	ld d,b
	ld e,033h
	jr l5a37h
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
l5a03h:
	add a,b
l5a04h:
	nop
	rst 0
l5a06h:
	rlca
	adc a,a
	ccf
	rst 18h
	nop
	ret m
	jr nz,l5a3eh
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
	djnz l5a39h
	ld b,b
	ld a,(0ec57h)
	ld a,a
	jp 0f060h
	ret p
	ld h,b
	ld e,(hl)
	rst 20h
l5a37h:
	and d
l5a38h:
	sub (hl)
l5a39h:
	sub l
	add a,(hl)
	jr nc,l5a3dh
l5a3dh:
	ld c,l
l5a3eh:
	and (hl)
	and d
	inc l
	jp 0385ch
l5a44h:
	jr l5a52h
	nop
	ld c,018h
	jr c,l5aaeh
	ld b,b
l5a4ch:
	inc bc
	inc c
	inc de
	rla
	ld l,02ch
l5a52h:
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
	jr nc,l5aa9h
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
l5a83h:
	nop
	ld h,028h
	ld c,b
	ld d,b
	ld d,b
	ld c,b
	jr z,$+40
	ld l,h
l5a8dh:
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
l5a9ah:
	ld h,l
	adc a,b
	ld b,b
	push bc
	dec d
	sbc a,h
	inc c
	jr nz,l5b03h
	ret nz
	nop
	nop
	ld h,b
	jr nz,l5aa9h
l5aa9h:
	inc c
	rlca
	inc bc
	ret nz
	ret po
l5aaeh:
	ld d,b
l5aafh:
	jr nc,l5a83h
	ld b,061h
	inc bc
	nop
	ld b,004h
	ld sp,hl
	djnz l5a9ah
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
l5acdh:
	adc a,c
	jr nz,$-121
	ld (hl),a
	defb 0fdh,000h,018h ;illegal sequence
	ld c,b
	dec c
	ld e,000h
	rla
	ld a,(bc)
	dec de
	ld a,(de)
	dec bc
	ld d,01fh
	inc c
	sbc a,l
	ret nz
	adc a,c
	ld l,b
	or b
	ld a,b
	jp m,0d880h
l5ae9h:
	ld e,b
	ret nc
	ld l,b
	ret m
	jr nc,l5a8dh
	ret nz
	jr c,l5b11h
	add hl,sp
	dec sp
	ld a,(0ce1fh)
	jr nc,$+33
	ld c,0dch
	ld e,h
	rra
	ld (hl),a
	ld b,c
sub_5affh:
	rra
	ld c,(hl)
	ld a,e
	ld a,d
l5b03h:
	rra
	jr c,l5b57h
l5b06h:
	out (01fh),a
	sbc a,05eh
	rra
	adc a,(hl)
	ld h,b
	ld a,03fh
	ret po
	ld (bc),a
l5b11h:
	inc h
	dec sp
	add hl,sp
	ld (01001h),hl
	jp nc,l4027h
	ld b,0b7h
	xor b
	ld d,090h
	add a,b
	ld b,l
	ex af,af'
	jp p,l5587h
	call z,005b2h
	dec bc
	add hl,bc
	ld (bc),a
	inc bc
	jr l5b06h
	add a,l
	ld (00138h),a
	cp l
	ld (hl),h
	add a,b
	sub b
	xor e
	ld e,014h
	ld c,030h
	ld c,b
	jr c,$-94
	rra
	ld l,h
	or 001h
	dec bc
	add hl,bc
	add hl,bc
	jr c,l5b73h
	ld (de),a
	djnz l5ae9h
	ld (hl),a
	ccf
	add a,b
	sub b
	ld a,(de)
	inc (hl)
	rla
	ld c,b
	ex af,af'
	sub b
	ld l,d
	ccf
	add a,b
l5b57h:
	ld b,b
	jp nz,03c01h
	ex af,af'
	dec b
	ccf
	ld b,b
	jr l5b62h
	ld b,d
l5b62h:
	add a,b
	djnz l5b85h
	halt
	add a,b
	ccf
	ld (bc),a
	dec b
	ld d,c
l5b6bh:
	djnz l5b99h
	ld (0c908h),a
	defb 0ddh,03fh,082h ;illegal sequence
l5b73h:
	ld b,b
	adc a,b
	ex af,af'
	inc (hl)
	ld c,c
	defb 0ddh,0f8h,0e4h ;illegal sequence
	ccf
	ret nz
	ld a,b
	ld b,h
	ex af,af'
sub_5b80h:
	sbc a,a
	inc b
	ld a,b
	add hl,bc
	ccf
l5b85h:
	ld (bc),a
	ex af,af'
	jr l5b99h
	ld b,b
	add a,(hl)
	sbc a,h
	ld l,l
	ccf
	ld (bc),a
	rrca
	add hl,de
	nop
	xor c
l5b93h:
	xor c
	ld a,a
	ld b,090h
	add hl,bc
	ld a,a
l5b99h:
	rlca
	nop
	add hl,de
	rrca
	nop
	ld b,b
	rst 38h
	cp 0feh
	and h
	rst 38h
	dec b
	ld h,l
	add hl,bc
	dec b
	dec b
	rst 38h
	and h
	add hl,bc
	rst 38h
	or h
	jr nc,$+8
	ld d,056h
	ld e,h
	ld d,(hl)
	add a,b
	djnz l5b6bh
	defb 0ddh,091h,007h ;illegal sequence
	ld d,0e2h
	inc de
	ccf
	ld a,a
	add hl,hl
	ld e,b
	rst 38h
	ld bc,0f090h
	ret po
	ld b,092h
	inc sp
	ccf
	cp a
	ld a,a
	add a,b
	adc a,l
	and c
	ld (bc),a
	ld a,07fh
	inc hl
	or 07fh
	ld a,0dfh
	ld a,(0ddcdh)
	inc c
	ld a,a
	jr nc,l5c0ah
	ld (hl),a
	ld h,c
	call pe,03a1fh
	ld d,c
	rrca
	call c,05289h
	ld a,(0101fh)
	jr nc,l5c07h
	ld c,a
	ld e,b
	ld d,016h
	jr nc,l5b93h
	cp c
l5bf4h:
	ret c
	dec c
	ld a,045h
	ld b,022h
	pop af
	ld c,h
	rst 38h
	ld a,(hl)
l5bfeh:
	add a,c
	inc (hl)
	djnz l5c18h
l5c02h:
	or b
	ld h,a
	add a,b
	or c
	ld (bc),a
l5c07h:
	and b
	jr nz,l5c31h
l5c0ah:
	or b
	or h
	and c
	sbc a,c
	nop
	inc bc
	ld a,(bc)
	add a,h
	add hl,bc
	or b
	adc a,h
	jp l7271h
l5c18h:
	ld e,01fh
	and b
	ld h,0b4h
	ld b,(hl)
	jp l5606h
	ret nc
	ld b,b
	add a,e
sub_5c24h:
	inc b
	rra
	call nc,03fffh
	nop
	ld a,b
	rst 0
	ex af,af'
	add a,l
	jr z,$-55
	ld a,b
l5c31h:
	ccf
	xor l
	cp 015h
	call nc,030b7h
	jp po,07001h
	add a,b
	sbc a,b
	add a,b
	ld (hl),b
	ret nz
	cp (hl)
	ld d,c
	or a
	call nc,sub_5affh
	inc sp
	nop
	ld c,b
	add a,b
	inc hl
	ld h,b
	inc bc
	add a,b
	ld c,b
	inc sp
	ld l,b
	inc c
	rra
	inc hl
	add a,b
	ld h,b
	ld e,h
	ret po
	adc a,e
	ld h,0abh
	ld h,b
	dec b
	ld d,01fh
	nop
	ld b,02dh
	ccf
	rst 38h
l5c64h:
	ld c,h
l5c65h:
	pop af
	add hl,de
	ld (03c45h),hl
	and b
	call nc,0f77dh
	djnz l5ce0h
	ret po
	ld (hl),b
	rlca
	daa
	or h
	or b
	call po,0337dh
	ld b,e
	ld (bc),a
	sub a
	adc a,h
	or b
	add hl,bc
	add a,b
	ld (0d9fdh),a
	ret nz
	ld a,l
	jp nc,0d010h
	ld h,(hl)
	adc a,(hl)
	dec de
	ld d,e
	inc b
	rra
	ld h,b
	nop
	jr c,l5cc0h
	inc de
	rra
	ld e,b
	inc bc
	sbc a,c
	dec hl
	ld (hl),052h
	ld h,h
	sbc a,a
	ret nc
	rrca
	ld (hl),b
	call z,03814h
	sbc a,b
	and e
	add a,b
	jr nc,l5cbbh
	sub b
	call pe,0a158h
	ret nz
	jr z,l5cc0h
	dec l
	ld d,h
	ld (de),a
	inc a
	ret nz
	ld c,06dh
	ld e,d
	inc h
	rra
	ld bc,03440h
l5cbbh:
	call pe,sub_6048h
	ld a,a
	inc bc
l5cc0h:
	ld d,b
	ld l,b
	sub h
	ld h,h
	jr l5cf3h
	ld bc,0db28h
	and h
	ld e,(hl)
	dec hl
	ccf
	and c
	ld e,(hl)
	and h
	exx
	jr z,l5d4bh
	ld bc,09cfch
	ld h,(hl)
	adc a,d
	sbc a,d
	and h
	ccf
	sub h
l5cdch:
	pop de
	inc b
	adc a,d
	ld h,(hl)
l5ce0h:
	sbc a,h
	call m,sub_581fh
	dec c
	and a
	in a,(065h)
	ld (00c3fh),a
	ld h,l
	in a,(0a5h)
	ld e,b
	rra
	ld b,0e2h
	sbc a,d
l5cf3h:
	halt
	ld h,0dch
	ccf
	ld bc,0ae5ch
	halt
	sbc a,d
	jp po,0f8fch
	ld b,b
	ld d,(hl)
	ld e,a
	ld e,e
	jr nc,l5d72h
	ld (hl),03fh
l5d07h:
	ld l,h
	in a,(000h)
	or a
	or a
	xor h
	ld e,b
	jr c,l5cdch
	cp (hl)
	or (hl)
	jr l5d8ah
	ld l,(hl)
	call c,sub_4c3fh
	inc b
	or (hl)
	jp c,l6adah
	inc (hl)
	sbc a,l
	ld b,b
	inc a
	inc l
	scf
	dec sp
	add hl,de
	add a,b
	ld e,008h
	inc sp
	ld (hl),a
	ld l,a
	ld e,b
	ld a,b
	ld b,b
	ld (hl),b
	rrca
	ld a,h
	call m,0bcdch
	ld a,b
	ld e,h
	ld b,b
l5d37h:
	cp d
	cp b
l5d39h:
	dec b
	ld e,h
	ld l,h
	inc (hl)
	inc a
	inc e
	jp nc,01ec0h
	scf
	ld l,e
l5d44h:
	ld l,h
	ld l,(hl)
	ret nz
	ccf
	ld l,b
	in a,(0d7h)
l5d4bh:
	ld l,a
	jr l5d86h
	djnz l5d50h
l5d50h:
	add a,b
	ld b,0b0h
	ld e,b
	ret c
	ret c
	ccf
	ld (bc),a
	call pe,0ac6ch
	ret c
	ld (hl),b
	defb 0edh ;next byte illegal after ed
	call p,03f1ch
l5d61h:
	sub b
	ld b,b
	ex af,af'
	ccf
l5d65h:
	scf
	ld l,a
	ld a,a
	ret z
	ld e,0beh
	ret
	sbc a,08ch
	or b
	ld (hl),b
	ccf
l5d71h:
	inc e
l5d72h:
	ld a,b
	cp b
	ret m
	ld e,062h
	xor (hl)
	ld (de),a
	add hl,bc
	rlca
	and (hl)
	ld d,l
	inc b
	or b
	call c,0f000h
	dec b
	sbc a,b
	ret nc
	ret po
l5d86h:
	and b
	jr nc,l5d4bh
	and h
l5d8ah:
	rst 18h
	jp p,03109h
	ld b,001h
	dec b
	rrca
	sbc a,a
	call 0bac4h
	sub b
	ld c,b
	ld l,b
	cp e
	ret po
	jr $-46
	and b
	ld b,b
	add a,e
	pop hl
	add a,l
	ld (0fd0dh),a
	jp c,0e296h
	ld (0068fh),a
	ld b,b
	ld a,b
	ld l,b
	adc a,b
	ret nz
	cp (hl)
	ret m
	ld (hl),b
	and c
	add hl,bc
	ld sp,0060bh
	xor c
	dec (hl)
	exx
	or h
	and b
	cp h
	ld b,h
	ld c,b
	ld e,b
	rst 20h
	in a,(03fh)
	defb 0fdh,0d4h,0c3h ;illegal sequence
	sbc a,c
	rst 28h
	ld h,(hl)
	xor h
	ret m
	ld e,(hl)
	ld (hl),d
	inc hl
	ret nz
	inc e
	or b
	scf
	inc d
	rra
	ld b,l
	or e
	sbc a,c
	ld (hl),l
	inc e
	add a,h
	inc d
	add a,c
	ld e,(hl)
	dec e
	jr z,l5d61h
	sbc a,e
	out (023h),a
	inc d
	sbc a,h
	cp c
	ld l,c
	ld (bc),a
	ld sp,hl
	ld e,l
	ld a,e
	ccf
l5dedh:
	add a,(hl)
	ld b,h
	call z,sub_70a4h
	ret p
	di
	push de
	ret pe
	djnz $-6
	ccf
	push af
	sbc a,(hl)
	dec (hl)
	add a,c
	ld b,b
	dec l
	dec hl
	dec hl
	dec l
	dec l
	inc l
	ld e,d
	cpl
	inc bc
l5e07h:
	ld b,020h
	sub 000h
	dec hl
	ld c,0e7h
	dec d
	dec c
	jr c,l5e12h
l5e12h:
	cpl
	in a,(01ah)
	inc de
l5e16h:
	ld c,0b6h
	dec hl
	inc c
l5e1ah:
	dec bc
	dec l
	cpl
	inc l
	inc de
	dec c
	adc a,(hl)
	ccf
	ld e,(hl)
	ld hl,(0af3fh)
	ld hl,(l473fh)
	ld hl,(00f3fh)
	ld hl,(l473fh)
	ld hl,(l763fh)
	inc e
	nop
	ld h,a
	inc b
	rlca
	inc sp
	sub b
	xor (hl)
	dec hl
	xor l
	inc sp
	ld c,h
	or b
	add a,h
	dec hl
	xor l
	halt
	ld l,06dh
	ld l,00fh
	ld d,0bfh
	ld e,029h
	rrca
	sub (hl)
	inc e
	rrca
	add hl,bc
	and 046h
	nop
	dec d
	add hl,bc
	dec hl
	ld bc,0a16eh
	dec d
	inc (hl)
	dec (hl)
	ld b,c
	nop
	dec bc
	dec bc
	ld a,(bc)
	ld c,d
	ld bc,00c0ch
	dec bc
	dec l
	dec bc
	or h
	ld (de),a
	rra
	dec hl
	add hl,hl
	adc a,l
	and l
	out (01fh),a
	jr nz,l5ea1h
	rra
	ld (hl),a
	jr nz,$-30
	add a,a
	inc l
	rra
	and d
	dec hl
	add hl,bc
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
	in a,(0bfh)
	ccf
	add a,e
	defb 0fdh,000h,0b7h ;illegal sequence
	add hl,hl
l5ea1h:
	nop
	call c,0fb20h
	nop
	or h
	sbc a,h
	pop hl
	nop
	rrca
	nop
	ld (hl),d
	ex af,af'
	nop
	ld (hl),d
	ld b,(hl)
	nop
	ld c,(hl)
	ex de,hl
	rlca
	adc a,c
	rst 30h
	nop
	rla
	ld a,(bc)
	nop
	ex af,af'
	cpl
	ld b,(hl)
	rra
	ld h,a
	ld b,000h
	or e
	ld b,l
	nop
	in a,(016h)
	and a
	rrca
	rra
	rst 8
	push bc
	inc e
	xor b
	cpl
	sbc a,h
	ld b,a
	cpl
	jp nc,0dd87h
	rst 28h
	sub d
	ld d,d
	ld (bc),a
	ld bc,0baf0h
	ld (de),a
	ld c,a
	ld b,d
	ld c,(hl)
	nop
	nop
	ld (bc),a
	dec sp
	ld b,d
	ld c,a
	jr nz,$-99
	sbc a,b
	ld hl,00e87h
	jr nz,$+111
	ld c,(hl)
	ld (l4f52h),hl
	nop
	xor a
	ret m
	ld e,(hl)
	xor d
	ld hl,(0020ah)
	inc bc
	and b
	add a,(hl)
	ex af,af'
	ld b,0c0h
	ld (bc),a
	ld c,e
	ld c,h
	ld c,l
	ld c,e
	ld c,l
	ld h,c
	rst 38h
	dec sp
	ld c,a
	rst 38h
	ex af,af'
	add a,h
	ld c,h
	ld c,e
	rst 8
	ld a,l
	xor 000h
	dec d
	dec c
	inc bc
	dec bc
	xor l
	cp b
	ex af,af'
	or l
	ld d,b
	inc d
	ld b,e
	sbc a,h
	jr l5f6fh
	ld b,a
	ld b,e
	adc a,026h
	rrca
l5f26h:
	ld (bc),a
	nop
	ld c,d
	adc a,063h
	rlca
	inc bc
	ex af,af'
	dec a
	rrca
	call c,00001h
	rst 20h
	rrca
	ex af,af'
	ld l,042h
	nop
	sbc a,l
	ld c,(hl)
	rlca
	add hl,sp
	ld (bc),a
	nop
	sub h
	rst 28h
	push hl
	ex af,af'
	ld b,c
	nop
	out (04eh),a
	rlca
	and a
sub_5f49h:
	dec b
	nop
	add a,e
	ld bc,08305h
	ld c,h
	ld c,c
	nop
	or a
	ld c,h
	nop
	add hl,de
	rla
	nop
	ld a,b
	inc h
	sbc a,01fh
	nop
	ld l,c
	ld c,e
	nop
	inc c
	dec a
	pop hl
	dec h
	bit 1,l
	dec a
	jp nc,0f500h
	dec a
	dec a
	dec b
l5f6dh:
	inc bc
	ccf
l5f6fh:
	sbc a,00eh
	nop
	pop de
	sbc a,a
	rst 18h
	nop
	ld h,b
	jp nc,l4c9bh
	ld a,001h
	nop
l5f7dh:
	ld (0c308h),a
	ld a,(0ffe8h)
	or 002h
	djnz l5f6dh
	ld a,a
	ld (0f306h),a
	out (099h),a
	djnz $+64
	adc a,c
	ei
	inc b
	ld a,(0ffe7h)
	djnz l5f7dh
l5f97h:
	rst 18h
	ld (0af04h),a
	ld (0000eh),a
	pop bc
l5f9fh:
	ld hl,(0057ch)
	ld (hl),01ah
	ld hl,(0847fh)
	inc b
	ret nc
	ld hl,(00482h)
	xor (hl)
	dec (hl)
	ld hl,(00485h)
	adc a,b
	inc b
	ex af,af'
	djnz l5fe0h
	adc a,e
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
sub_5fc3h:
	call nc,09a09h
	inc b
	ret z
	jr nz,l5ff4h
	sbc a,l
	inc b
	jp nc,l77cdh
	ld c,(hl)
	jr nz,l5f9fh
	rla
	ld (bc),a
	ld h,e
	dec b
	call 01287h
sub_5fd9h:
	ld (hl),a
	call 0059fh
	and d
	ld (bc),a
	ld b,b
l5fe0h:
	and l
	ld (bc),a
	and h
	ld c,l
	call sub_76b7h
	inc b
	call 0581ch
	call 00baeh
	add hl,sp
	sub b
	ld (bc),a
	xor b
	ld (bc),a
	dec (hl)
l5ff4h:
	ld e,(hl)
	call 0ab41h
	dec b
	ret m
l5ffah:
	ld e,c
	call 02c86h
	nop
	sbc a,(hl)
l6000h:
	ld d,h
	ld a,(0c13dh)
	or a
	jp z,02815h
	ld c,l
	ld a,011h
	ret pe
	ld d,c
	and b
	add a,c
	ld b,0c1h
	ld a,0feh
l6013h:
	and l
	djnz $-61
	ld (004a3h),a
	jp 01c3eh
	ld (00707h),a
l601fh:
	and d
	ld de,0cdc3h
	inc bc
	ld a,(de)
	ld b,005h
	ld b,d
	ld d,c
	ld e,l
	and b
	ld b,d
l602ch:
	dec hl
	ld a,(0c395h)
	ld l,046h
	ld l,c
	ld d,e
	ld d,c
	ld c,(hl)
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
sub_6048h:
	ld (bc),a
	ld (04240h),a
	ld h,03eh
	pop bc
l604fh:
	cp 01eh
	jp c,08d04h
	ld c,l
	dec a
	ld (00b3eh),a
	pop de
	djnz l601fh
	inc a
	ld (03a03h),a
	inc de
	pop bc
sub_6062h:
	and b
	dec c
	inc bc
	inc a
	jp nz,04cfbh
	ret nz
l606ah:
	dec a
	xor a
	ret
	ld hl,002d8h
	ld c,l
	ld (l4dd4h),hl
l6074h:
	ld hl,005f8h
	djnz l604fh
	ld c,l
	ld hl,(l5e07h+1)
	inc hl
	ld d,(hl)
l607fh:
	inc bc
	inc hl
	ld a,d
	or e
	jp z,l4e16h
	inc d
	ld bc,l4eebh
	inc hl
	ld b,(hl)
	ld hl,(l6e15h)
	ld (de),a
l6090h:
	inc e
	nop
	ex de,hl
	ld (hl),c
	inc hl
	ld (hl),b
	jp 04db0h
	and 092h
	nop
	dec b
	ld d,005h
	rra
	dec b
	ld (00500h),hl
	ld l,005h
	add hl,de
	dec b
	ld sp,05b05h
	nop
	dec b
	ld e,(hl)
	dec b
	ld h,c
	dec b
	ld h,a
	dec b
	ld l,d
	ex af,af'
	dec b
	ld (hl),b
	dec b
	ld (hl),e
	and c
	sub b
	dec b
	rra
	rst 20h
	ld d,h
	cp a
	nop
	ld d,h
	ld l,l
	ld d,h
	adc a,l
	ld d,h
	call nc,0c254h
	nop
	ld d,h
	bit 2,h
	ld l,d
	ld e,d
	ld h,h
	ld d,h
	ld h,a
	nop
	ld d,h
	push bc
	ld d,h
	ret z
	ld d,h
	adc a,054h
	pop de
	add a,e
	dec c
	ld d,h
	ret
	di
	ld hl,0e0e7h
	ld de,l4e74h
	ld bc,00302h
	nop
	ldir
	ld hl,l6996h
	ld (bc),a
	add hl,sp
	nop
	ld a,0c3h
	ld (00438h),a
	add hl,bc
	inc de
	ld (0fff1h),a
	adc a,h
	call nz,08b93h
	ret po
	rst 18h
	di
	or 02ch
	djnz l6139h
	inc b
	dec c
	ld h,e
	add a,b
	inc bc
	ld (bc),a
	inc bc
	inc de
	adc a,a
	and d
	sub c
	xor h
	ld c,c
	dec (hl)
	ld de,0f328h
	add hl,sp
	add a,023h
	ld e,0e6h
	rst 28h
	inc hl
	dec c
	xor a
l6121h:
	ld (00388h),hl
	ei
	ret
	sbc a,(hl)
	ret
	ld e,a
	sub l
	ld d,h
	ld a,(de)
	and e
	ld c,(hl)
	dec b
	or e
	ld d,c
	ld c,(hl)
	ld de,07b0eh
	ld d,e
	ld c,0a7h
	inc de
l6139h:
	ld d,h
	ld c,004h
	ret
	push af
	rst 18h
	sbc a,h
	inc l
	add a,l
	in a,(099h)
	rrca
l6145h:
	call c,0391ah
	call nc,0320ch
	dec bc
	and b
	pop bc
	rlca
	call c,06d24h
	sbc a,c
	inc bc
	pop af
	ld hl,(03400h)
l6158h:
	jr z,l6192h
	ld (hl),036h
	ld a,(l4a28h)
	ld b,b
	rlca
	ld b,h
	ld sp,hl
	sbc a,e
	ld b,(hl)
	rlca
	rrca
	ret c
	ld b,b
	ld (l7c22h),hl
	inc (hl)
	rla
l616eh:
	ld a,a
	daa
	cp (hl)
	ld b,b
	jr c,l61a4h
	ld (02d07h),a
	ld a,03ch
	ld bc,0b507h
	jp p,007dah
	ld h,000h
	jp nc,03207h
	jr nc,$+3
	jp po,01f27h
	ld a,h
	inc (hl)
	ld e,a
	ld a,l
	daa
	sub a
	ld (0012eh),hl
l6192h:
	ccf
	sbc a,a
	ld (hl),a
	cp a
	daa
	ld a,(hl)
	rra
	dec bc
	ld a,(l4f01h)
	add a,c
	inc (hl)
	ld b,h
l61a0h:
	ld b,(hl)
	ld e,a
	rst 8
	cpl
l61a4h:
	ld (hl),c
	adc a,a
	call z,0401dh
	call po,sub_4667h
	ld b,b
	ex de,hl
	rrca
	daa
	and (hl)
	inc (hl)
l61b2h:
	scf
	and e
	jr z,l6145h
	sbc a,h
	nop
	adc a,h
	adc a,a
	ld l,c
	inc a
	rlca
	ld b,h
	ld (04108h),a
	dec b
	ld c,02ch
	jr c,$+64
	or b
	rla
	ld b,00ah
	ld l,020h
	rlca
	call nc,02e0dh
l61d0h:
	cp a
	ld c,l
	inc l
	dec c
	dec h
	jr nc,l621dh
	ld b,h
	jr nc,l61ffh
	ld b,037h
	ld e,03ch
	ld b,013h
	ld c,007h
	ld l,006h
	ld (hl),d
	rlca
	ld b,e
	or (hl)
	ld d,h
	ld c,h
	adc a,h
	ld d,a
	rlca
	ld c,a
	inc (hl)
	ld b,b
	rlca
	ret
	ex (sp),hl
	ld (bc),a
	rlca
	xor c
	and h
	ld l,(hl)
	or e
	ld c,b
	xor h
	pop hl
	ld b,h
	inc bc
	ld d,c
l61ffh:
	ld e,(hl)
	inc bc
	ld c,020h
	ld l,0bfh
	inc bc
	ld a,a
	ld d,b
	ccf
	rlca
	inc l
	sbc a,e
	rst 20h
	nop
	inc bc
	jr nz,l6233h
	ld hl,(019e5h)
	call m,sub_6708h
	ld hl,(l4e08h)
	ld (0b108h),hl
l621dh:
	ld (de),a
	inc c
	nop
	ld (hl),d
	dec de
	inc c
	rst 28h
	inc h
	djnz l6285h
	inc c
	ccf
l6229h:
	xor 00ch
	ccf
	sbc a,(hl)
	inc c
	ccf
	dec de
	ld de,0498bh
l6233h:
	and a
	rra
	ld h,a
	rlca
	jp nz,08d2ah
	rst 38h
	sub d
	rst 38h
	rst 18h
	ld d,d
	call nz,0f476h
	sbc a,e
	and h
	sub h
	ld l,l
	ex af,af'
	ret nc
	sbc a,a
	jr nz,l629dh
	ld d,b
	ld d,d
	ld bc,01614h
	ld d,028h
	ld d,b
	ld b,004h
	ld bc,028a1h
	inc b
	ld (de),a
	djnz l625dh
	and c
l625dh:
	jr z,$+18
	ld c,(hl)
	ld c,h
	ld bc,028a7h
	ld c,h
	rst 8
	ld e,d
	ld bc,03828h
	nop
	ld a,(bc)
	nop
	xor l
	ld (0002bh),a
	xor c
	ld (0298eh),a
	cp a
	ld b,d
	jr c,l62bdh
	inc a
	ld b,(hl)
	sub (hl)
	add a,l
	ld b,(hl)
l627eh:
	ld b,a
	rrca
	ret po
	ld b,(hl)
	or 00fh
	rst 38h
l6285h:
	rra
	add a,l
	add a,d
	inc bc
	inc c
	inc bc
	add hl,bc
l628ch:
	ld bc,0837eh
	ld b,013h
	ld d,h
	ld b,097h
	ld d,a
	nop
	adc a,d
	rst 10h
	ld (bc),a
	ld (hl),d
	ld d,c
	ld b,05ah
l629dh:
	push hl
	ld b,05dh
	ld b,0a1h
	rst 10h
	push bc
	push de
	push hl
	and b
	xor (hl)
	or b
	ld l,(hl)
	ld e,l
	cp 002h
	inc b
	call z,sub_73e7h
	ld a,(015e0h)
	cp a
	dec (hl)
	ld (015e0h),a
	add a,c
	jp c,0e6adh
l62bdh:
	defb 0fdh,080h,0e6h ;illegal sequence
	jr nz,l628ch
	xor d
	ld d,e
	ld a,(063f1h)
	pop bc
	rrca
	sub d
	dec l
	ld b,054h
	pop bc
	ld b,a
	add hl,bc
	inc sp
	sub a
	add hl,bc
	sub e
	ld h,(hl)
	add a,b
	sub h
	push af
	and b
	ret pe
	defb 0fdh,0c6h,00ah ;illegal sequence
	adc a,b
	ld a,(bc)
	dec (hl)
	pop hl
	ccf
	add a,d
	ex af,af'
	sub c
	ld c,b
	or 042h
	ld c,l
	ret po
	exx
	scf
	ex af,af'
	push af
	ld (hl),a
	ld l,c
	nop
	dec b
	call z,l630bh
	call 0685fh
	ld e,d
	ld a,(bc)
	inc bc
	call z,001f9h
	ld h,c
	pop hl
	pop de
	pop bc
	pop af
	ex af,af'
	exx
	dec b
	adc a,h
	ret
	ld b,h
	di
l630ah:
	rst 30h
l630bh:
	ld b,h
	sub a
	xor a
	ld h,b
	add a,(hl)
	call p,sub_51f9h
l6313h:
	ld b,0b1h
	sbc a,e
	call p,sub_5fc3h
	ld h,c
	sbc a,b
	and c
	rst 28h
	ld e,b
	ld a,(0005eh)
	ccf
	ld e,l
	or a
	call nz,sub_6c7dh
	ld a,(0e89ch)
	rst 30h
	jp nz,01e6ch
	ld d,h
	call 0965dh
	inc h
	ld h,b
	ld (bc),a
	ld (hl),l
	ld (bc),a
	ld e,0f5h
	call z,sub_53d4h
	sub d
	call pe,0db76h
	adc a,b
	call pe,0fff6h
	ld a,(l5432h)
	ld sp,hl
	inc bc
	sbc a,a
	jp l40e6h
	call nz,0d721h
	call nc,0c156h
	adc a,a
	adc a,d
	ld (de),a
	xor a
	ld hl,00f0dh
	cp (hl)
	jp z,l54a2h
	and l
	adc a,l
	inc de
l6361h:
	inc bc
	ld c,l
	nop
	jr nz,l6395h
	call sub_5fd9h
	call sub_57b5h
	ret m
	sbc a,h
	ld d,l
	call 01602h
	ld d,l
	jr nz,l637eh
	call sub_5115h
	ld c,c
	jr l637dh
	ld h,(hl)
	ld (bc),a
l637dh:
	ld l,c
l637eh:
	ld (bc),a
	inc h
	jr nc,l6384h
	ld l,a
	ld (bc),a
l6384h:
	ld (hl),d
	sub e
	ld (bc),a
	dec l
	ld (bc),a
	ld a,c
	add a,l
	call po,02205h
	jp pe,l5407h
	ei
	call 0050ch
l6395h:
	sub (hl)
	di
	sub 010h
	jp (hl)
	ei
	and 000h
	djnz l6361h
	nop
	ld d,l
	ld a,(l54ffh)
	or a
	ld h,h
	ret nz
	ld h,a
	ld b,0c3h
	ld a,b
	ld d,c
	adc a,b
	xor a
	ret
	rlca
	ld a,(de)
	jp pe,02b1ah
	ld bc,0ac13h
	sbc a,a
	ld b,e
	sub e
	add hl,bc
	ret po
	ld (082a4h),a
	ld b,h
	rst 8
	ld l,e
	ret z
	ld b,03ah
	ret pe
	ei
	bit 6,a
	add hl,bc
	ld a,(bc)
	jp nz,l552bh
	dec h
	ld b,003h
	ret
	ld (0c202h),a
	add a,004h
	or 0e1h
	jp nz,0d03ah
	sub 018h
	ld b,h
	ld h,d
	ld d,l
	ld b,d
	add hl,bc
	ld l,089h
	ld e,d
	rrca
	dec b
	dec e
	ld b,0c0h
	ld de,0c104h
	ld sp,hl
	ld hl,00432h
	djnz $+3
	ld b,032h
	ex af,af'
	jp nz,00c32h
	inc h
	and c
	and 007h
	jr nz,$+16
	ld a,080h
	add a,008h
	cp 060h
	jr nz,$+26
	ld (bc),a
	ld a,048h
	ld b,d
	ld a,(00049h)
	ld a,(de)
	inc b
	ld a,(de)
	ld bc,00005h
	dec b
	jp nz,00d21h
	pop bc
	ld b,(hl)
	ld (hl),006h
	ld d,0afh
	call sub_5747h
	ld hl,(0f57dh)
	inc bc
	nop
	cp 0a4h
	ld b,030h
	call nc,sub_76dfh
	ld h,c
	ld a,(0d209h)
	ret nz
	ld d,a
	add a,061h
	ld (bc),a
	dec a
	pop bc
	call sub_76b7h
	rlca
	ld c,b
	and a
	adc a,c
	ld (l606ah),a
	ld e,e
	jr c,l6480h
	ld b,b
	inc a
	ld a,(0c280h)
	ld de,0c240h
	ld a,b
	ld a,0fdh
	ld e,a
	nop
	pop bc
	ld b,007h
	push de
	ld a,(hl)
l6458h:
	and 01fh
	cp 000h
	dec d
	jp z,l5670h
	inc hl
	or a
	jp z,03000h
	ld d,(hl)
	cp 092h
	nop
	ld b,l
	dec a
	call z,0576ah
	call nz,sub_56a4h
	ld c,0d1h
	push hl
	ldi
	ld bc,0e15ah
	inc b
	ld a,(hl)
	nop
	inc a
	ld (de),a
	inc de
	inc de
l6480h:
	ld bc,0000dh
	add hl,bc
	ld b,(hl)
	ld a,(0c635h)
	ld (bc),a
	ld a,(0fe00h)
	ld e,0c2h
	pop bc
	ld d,l
	ret
	pop de
	ld hl,00f01h
	ld (de),a
	ex de,hl
	ld c,008h
	inc bc
	ld a,d
	rla
	add a,b
	dec hl
	ld a,(hl)
	cp 024h
	jr z,l64e0h
	inc hl
	dec hl
	push hl
	inc hl
	nop
	add hl,bc
	cp l
	inc b
	add hl,bc
	xor d
	ld b,b
	pop hl
	call sub_573dh
	jp 0da10h
	ld d,l
	inc hl
	ld c,b
	ld (hl),a
	cp 00ch
	inc c
	jr z,l64d0h
	and 003h
	call m,0e118h
	rrca
	dec hl
	and d
	add hl,hl
	pop hl
	ld (hl),b
	ld (hl),a
	add hl,bc
	ld (hl),069h
	ld (03623h),hl
l64d0h:
	ld b,008h
	jr l64d4h
l64d4h:
	inc hl
	rrca
	ld (hl),068h
	inc b
	ld a,036h
	ld c,e
	inc hl
	sub a
l64deh:
	rla
	inc hl
l64e0h:
	ld de,0423eh
	ld (hl),001h
	inc hl
	pop af
	ld (hl),b
	ld b,a
	ld a,(hl)
	ld (hl),090h
l64ech:
	ld (hl),a
	rrca
	or b
	inc h
	dec hl
	nop
	djnz l64f4h
l64f4h:
	ld sp,03ae1h
	dec (hl)
	jp nz,0d8bah
	cp e
	nop
	ret nc
	ld a,(0c234h)
	cp c
	ret c
	sub 010h
	dec b
	cp c
	ret nc
	ld a,0f0h
	ld (08311h),a
	ld (00f32h),hl
	nop
	jp l56e2h
	ret
	ld a,(hl)
	sub 008h
	ld c,a
	ld d,b
	push hl
	ld (hl),a
	jr $+89
	add a,01eh
	ex af,af'
	ld e,a
	ld hl,0c229h
	call p,sub_7e80h
	dec hl
	cp d
	jp c,l5680h
	inc hl
	cp e
	jp nc,l7e03h
l6532h:
	cp c
	ex af,af'
	inc sp
	ld (0040ah),a
	ld a,(0c151h)
	add a,d
	add a,d
	call c,sub_7856h
	add a,e
	ld b,h
l6542h:
	jp nc,0e105h
	ret z
	jr c,l658dh
	ld (hl),a
	inc hl
	ld c,e
	ld (hl),a
	ld e,e
	ld a,0a7h
	inc bc
	ld de,00007h
	add hl,de
	ld (hl),d
	inc b
	jp c,l5702h
	cp (hl)
	ld h,b
	ld (0c107h),a
	sub h
	exx
	sbc a,d
	or d
	xor b
	ld h,b
	pop bc
	dec hl
	sbc hl,de
	ld e,(hl)
	ret
	ld de,l5310h
	inc c
	dec hl
	inc de
	inc b
	ld (hl),024h
	inc hl
	cp 0dch
	ret nz
	add hl,bc
	add hl,de
	ld a,(l514ch)
	ret nz
	cpl
	ld d,c
	dec b
	or d
	add a,e
	add a,(hl)
	ld (01d4ah),a
	inc d
	sub 080h
	inc l
	ld c,e
	dec (hl)
	inc sp
l658dh:
	add hl,de
	sub 020h
	ld (hl),a
	ld b,000h
	inc hl
	ld b,(hl)
	ret nz
l6596h:
	dec h
	cp c
	ld bc,026e5h
	nop
	ld l,b
	add hl,hl
	nop
	add a,b
	ld de,04803h
	add hl,de
	push hl
	ld e,h
	ld l,a
	inc c
	dec bc
	nop
	nop
	ld (hl),h
	add hl,de
	call 00145h
	pop hl
	nop
	ld c,098h
	call 005b4h
	pop hl
	ret
	call 0c912h
	ld (hl),a
	ld b,(hl)
	res 0,b
	inc bc
	jp c,l57a6h
	cp 020h
	ex (sp),hl
	jp nc,02b04h
	cp 012h
	ld c,013h
	ld bc,00538h
	call pe,00e04h
	pop hl
	ret c
	ld a,(0c9dch)
	inc a
	add hl,de
	ret z
l65dch:
	ex (sp),hl
	jr c,$+63
	add hl,bc
	jp z,l579dh
	ld a,c
	or 089h
	jp nz,0e778h
	call nz,008c9h
	add hl,sp
	ret
	ex af,af'
	di
	sbc a,b
	ret
	ld h,c
	add a,a
	xor c
	nop
	ld (hl),c
	in a,(066h)
	ld c,048h
	ld c,c
	daa
	ld (0c003h),a
	ld a,(l4700h)
	pop bc
	ld h,a
	ld a,(0c148h)
l6608h:
	ld l,a
	ld a,(hl)
	ret nz
l660bh:
	inc c
	inc hl
	ld e,(hl)
	inc hl
	ld c,(hl)
	ld de,07d23h
	ld (l7c0dh),a
	ld (00015h),a
	ld d,000h
	ld hl,l7e81h
	add hl,de
	ld (hl),c
	ld a,(bc)
	dec hl
	ex de,hl
l6623h:
	ld bc,00910h
	xor l
	add a,b
	ld a,(hl)
	or a
	jr z,l6649h
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
	inc b
	ret nz
	ex de,hl
	rlca
	ldir
	ret
	push hl
	ld de,0122bh
	call c,01490h
l6649h:
	inc bc
	add hl,de
	djnz l6691h
	ld sp,hl
	or c
	ld hl,l5900h
	ld e,d
	ld (l5a4ch),hl
	ld a,014h
	ld (0fd8ah),a
	cp 084h
	ld sp,hl
	sbc a,(hl)
	adc a,c
	ret m
	ld (bc),a
	push af
	xor c
	ld hl,(080f3h)
	rlca
	call p,021c1h
	adc a,05ch
	call 08b08h
	inc b
	ld a,(09813h)
	add a,b
	ld b,a
	add a,a
	add a,b
	add a,012h
	ld (0dd0dh),a
	ld e,h
	ld hl,011ddh
	ld d,0cdh
	dec de
	dec b
	ret z
	add a,h
	dec e
	ld e,l
	ld sp,0101fh
	ld e,l
	ld (00219h),a
	dec de
l6691h:
	ld e,l
	ld hl,0aa00h
	ld e,b
	ld de,l7706h
	ld bc,00030h
	add a,d
	ld h,h
	ld b,0a0h
	ld a,(0bc08h)
	ret
	sbc a,b
	ld bc,0ca00h
	inc (hl)
	ld e,c
	dec a
	ld l,a
	inc c
	ld (bc),a
	jp z,00620h
	ld (hl),d
	ret po
	ld b,0a0h
	dec de
	inc bc
	jp z,00d0ah
	ld b,0c1h
	ld hl,033dah
	ret po
	ld de,09824h
	inc b
	ld (hl),0c3h
	inc de
	ld b,05dh
	ld bc,000adh
	ld b,005h
	ld bc,00301h
	ld b,00eh
	ld bc,00702h
	defb 0fdh,088h,007h ;illegal sequence
	inc b
	ld (de),a
	ld (bc),a
	ld bc,00b9ah
	inc b
	djnz l66e3h
	ld h,d
l66e3h:
	rlca
	nop
	inc bc
	nop
	ld de,00404h
	dec b
	rlca
	nop
	rlca
	ld de,02f64h
	jr nz,l66f5h
	ret p
	cpl
l66f5h:
	call z,01900h
	rra
	ld (bc),a
	inc bc
	rlca
	cpl
	inc a
	ex (sp),hl
	jp po,0e980h
	jr nc,$+60
	jp p,006c9h
	inc bc
sub_6708h:
	di
	ld sp,hl
	sbc a,d
	ei
	jp nz,03204h
	ld (0ebaeh),a
	sub a
	ld c,e
	or b
	adc a,e
	sub 00ah
l6718h:
	rst 28h
	xor b
	inc b
	add hl,bc
	dec c
	jp nz,l7a05h
	ld (0c1f7h),a
l6723h:
	ld a,e
	ld hl,(02082h)
	ret nz
	ld c,h
	add hl,de
	ld h,l
	or a
	sbc a,l
	sbc a,c
	djnz l6736h
	push bc
l6731h:
	ld b,024h
	ex af,af'
	push bc
	di
l6736h:
	dec b
	ld e,(hl)
	push hl
	ld hl,05be1h
	rst 20h
	ld de,093f5h
	rst 20h
	nop
	bit 0,a
	jp z,l596ch
	and 0feh
	dec h
	add a,020h
	add a,b
	djnz $+64
	inc (hl)
	inc e
	ld e,l
	jp l7435h
	ld e,c
	ld a,(bc)
	inc bc
	ld a,(bc)
	adc a,d
	ld hl,0ba20h
	ld d,(hl)
	sbc a,a
	ld c,h
	dec e
	add a,(hl)
l6762h:
	inc b
	pop hl
	inc hl
	pop bc
	sub (hl)
	ld d,h
	pop hl
	ld (hl),01dh
	dec c
	inc b
	ld de,0b410h
	ld hl,(01158h)
	jr nc,l6723h
	ld d,d
	ld (00006h),hl
	call sub_5b80h
	jp l59adh
	ld hl,009c1h
	ld e,e
	ld de,05bd1h
	ret z
	ret
	adc a,d
	ld (bc),a
	ld a,007h
	ld (080f1h),a
	ld h,h
	rst 38h
	sbc a,(hl)
	ld c,e
	pop bc
	sbc a,e
	ld b,e
	nop
	jp 01081h
	jp 0cc5ch
	or b
	ld c,b
	ld c,0e5h
	or h
	inc de
	ld e,h
l67a4h:
	ld (00afbh),a
l67a7h:
	ret nc
	call z,sub_5c24h
	rst 30h
	add a,l
	xor 05ch
	jr nz,l67b3h
	inc de
	di
l67b3h:
	ld e,h
	or d
	adc a,0b9h
	add a,c
	ld e,e
	ld a,03fh
	ld (0c78ch),a
	adc a,l
	ld sp,018d0h
	ld hl,0a14eh
	and l
	cp b
	ret
	call 01f36h
l67cbh:
	jp c,0998bh
	jp po,06c6fh
	ld c,c
	sbc a,a
	di
	ld a,(026c4h)
	djnz l6833h
	call p,0f82fh
	ret
	xor 00ah
	dec a
	ld (hl),a
	jp nc,0c08ah
	ld (hl),a
	call po,0ef35h
	jr z,l67cbh
	ld h,c
	rst 30h
	adc a,a
	xor h
	ld sp,l5a38h
	rlca
	xor h
	ld bc,09c07h
	inc (iy+00eh)
	pop bc
	or a
	ld h,(hl)
	ld e,d
	adc a,a
	ld d,c
	rlca
	xor c
	adc a,b
	inc hl
	and (hl)
	ret
	add hl,hl
	di
	adc a,(hl)
	ld e,c
	inc bc
	ld h,0c2h
	and e
	ld d,c
l680eh:
	jp 00cb1h
	push de
	add hl,sp
	and d
	ld b,(hl)
l6815h:
	ld b,028h
	ld a,(0cdb0h)
	ld b,h
	ld c,c
	ld (l5acdh),a
	jp nc,0934ah
	dec e
	jp p,0b2e8h
	xor a
	adc a,h
	ret nz
	call nc,01defh
	call 059ffh
	call z,00e92h
	rrca
l6833h:
	call nc,0fe30h
	ex af,af'
	and d
	dec h
	and e
	ld c,c
	xor 081h
	inc b
	ld d,c
	ld c,(hl)
	exx
	ld b,b
	dec e
	jp nz,l5aafh
	call 0142eh
	ld e,e
	ld hl,0e4bfh
	call nz,sub_58e5h
	inc (hl)
	or 08dh
	defb 0edh ;next byte illegal after ed
l6854h:
	rr e
	and a
	ld bc,0ccc2h
	ld e,d
	ld hl,018b0h
	call nz,sub_53f6h
	sbc a,d
	ld d,0feh
	ret p
	sbc a,a
	dec h
	ld e,d
	add a,l
	dec de
	or h
	inc e
	cp b
	ld h,d
	ld sp,hl
	dec de
	ld (hl),b
	ei
	dec de
	rst 38h
	pop de
	dec de
	ret po
	jp nz,01be5h
	ld c,d
	sub (hl)
	sbc a,h
	ld a,(02afbh)
	or (hl)
	call p,0aa2ah
	ld d,d
	rst 0
	ret pe
	inc l
	ld hl,0e2ech
l688bh:
	jr z,$-79
	ld c,h
	ret nz
	and l
	or h
	sbc a,b
	sbc a,l
	jp nz,01ffeh
	adc a,b
	add hl,hl
	cp d
	ld b,h
	rst 28h
	ld (bc),a
	cp 090h
	ld (bc),a
	add a,002h
	ld de,0ee5dh
l68a4h:
	ld c,d
	ld bc,0a4cbh
l68a8h:
	ld (bc),a
	ex (sp),hl
	inc h
	or a
	ld e,h
	xor (hl)
	sbc a,d
	adc a,b
	sbc a,063h
	ld a,(bc)
	ld e,l
	add a,c
	ld c,c
	ret po
	ret po
	ld c,l
	ld e,e
	sbc a,(hl)
l68bbh:
	ret po
	inc de
l68bdh:
	inc c
	ret po
	xor c
	dec c
	ret po
	adc a,l
	ld d,l
	ld e,e
	ld a,(bc)
	ld h,b
	inc bc
	ld a,(bc)
	inc hl
	ex de,hl
	ld hl,024b3h
	ld e,d
	out (044h),a
	djnz l68a8h
	call pe,0c204h
	ld d,d
	ld sp,0051bh
	ld a,(l68a8h)
	defb 0edh ;next byte illegal after ed
	call nz,0b0f6h
	jp pe,l483ah
	adc a,c
	pop de
	jp z,034dfh
l68e9h:
	rst 0
	and h
	and d
	ret po
	sub h
	ld e,e
	ld a,(0f949h)
	or l
	xor a
	call nz,0e1b1h
	jp nz,01384h
	ld d,d
	rst 10h
	ld (de),a
	ld de,(l51d7h)
	ret
	adc a,048h
	ld e,a
l6905h:
	and e
	sub 0d0h
	inc c
	halt
	ld c,d
	ld a,(l5f26h)
	add a,(hl)
l690fh:
	ret z
	dec b
	add hl,de
	ex de,hl
	ld d,l
	pop hl
	call z,0498bh
	call m,09f2dh
	jr nz,l691dh
l691dh:
	ld bc,l406ah
	ld bc,02020h
	ld b,b
	nop
	ld h,b
	ld b,b
	add a,b
	ld b,b
	dec e
	and b
	ld h,b
	nop
	adc a,c
	jr z,$+98
	ld a,(bc)
	nop
	add a,b
	ld h,b
	ld (bc),a
	and b
	add a,b
	nop
	add a,b
	jr nz,l68bbh
	inc d
	and b
l693dh:
	ld a,(bc)
	nop
	and b
	and b
	nop
	and b
	ld (0a020h),a
	ld e,014h
	add a,b
	ld a,(bc)
	ret nz
	nop
	ret nz
l694dh:
	jr nz,l690fh
	ld b,b
	nop
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
	jr nz,l693dh
	ld b,b
	ret po
	ld h,b
	ret po
	add a,b
	ld d,l
	ret po
	jr nz,l69b1h
	nop
	ld c,d
	ld d,l
	ld b,b
	ld (hl),02eh
	nop
	ld l,l
	ld e,b
	ld c,(hl)
	ld b,h
	ld b,b
	ld (hl),001h
	ld b,b
	ld hl,l4140h
	nop
	ld b,b
	ld h,c
	ld b,b
	add a,c
	ld b,b
	and c
	ld h,b
	ld bc,l6000h
	ld hl,l4160h
	ld h,b
	ld h,c
	ld h,b
	add a,c
	ld b,060h
	and c
	add a,b
	ld bc,0cd80h
	nop
	ld b,c
	add a,b
	ld h,c
	add a,b
l6996h:
	add a,c
	nop
	add a,b
	and c
	and b
	ld bc,021a0h
	and b
	ld b,c
	ld bc,l61a0h
	and b
	add a,c
	and b
	and c
	ret nz
	ret m
	inc (hl)
	rst 18h
	ld b,b
	ld b,c
	ret nz
	ld h,c
	ret nz
	add a,c
l69b1h:
	nop
	ret nz
	and c
	ret po
	ld bc,021e0h
	ret po
	ld b,c
	nop
	ret po
	ld h,c
	ret po
	add a,c
	ret po
	and c
	jr nz,l69c4h
	nop
l69c4h:
	jr nz,l69e7h
	jr nz,l6a09h
	jr nz,l6a2bh
	jr nz,l694dh
	ld l,020h
	and c
	sbc a,l
l69d0h:
	ret z
	adc a,c
	nop
	ld b,c
	dec b
	nop
	ld h,c
	nop
	add a,c
	nop
	dec bc
	nop
	rlc c
	ld bc,00083h
	ret nc
	dec bc
	ld e,b
	ret po
	inc bc
	ld (bc),a
l69e7h:
	push bc
	ld (de),a
	sbc a,c
	ld c,d
	dec e
	sub 01ah
	sub e
	ld bc,l7109h
	nop
	rrca
	push bc
	ld (bc),a
	dec e
	ret nz
	pop hl
	inc bc
	add hl,hl
	xor b
	defb 0ddh,002h,006h ;illegal sequence
	ld h,d
	nop
	cp d
	sbc a,b
	sub b
	jr nz,l6a0ah
	djnz l69d0h
	dec de
l6a09h:
	rla
l6a0ah:
	ex af,af'
	nop
	add a,04ah
	ret po
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
	jp z,0f0c3h
	dec e
	dec b
	adc a,b
	xor 0ffh
	rst 38h
	ld a,h
	nop
	nop
	cp e
	ld a,b
l6a2bh:
	ld l,l
	sub a
	and h
	sub c
	and d
	call nc,sub_73b1h
	ld c,0c3h
	ld b,b
	inc b
	ld h,003h
	inc sp
	inc hl
	ld a,(05710h)
	call m,09400h
	sub (hl)
	scf
	ld bc,003a8h
	ld c,b
	add a,d
	sbc a,e
	inc l
	ld c,d
	ld c,0e2h
	ld (bc),a
	jp p,0a968h
	dec bc
	sub b
	dec h
	adc a,e
	sub a
	inc bc
	inc l
	adc a,e
	sbc a,b
	ld c,0c5h
	ld (bc),a
	ld c,0d7h
	nop
	pop af
	nop
	call sub_5f49h
	call 038bdh
	dec b
	ld hl,0dce7h
	call 03d4ch
	jp l607fh
	ld d,09ah
	ld l,e
	ld b,a
	ld e,(hl)
	ex af,af'
	scf
	add a,b
	ex af,af'
	ld c,(hl)
	ld a,h
	ex af,af'
	defb 0ddh,0b2h,008h ;illegal sequence
	and b
	call c,sub_5008h
	ld (hl),b
	inc hl
	ld (hl),c
	pop de
	cp c
	ld c,c
	inc sp
	ld (bc),a
	rst 20h
	rst 38h
	and 0dfh
	ld (02e04h),a
	ld a,013h
	rst 30h
	nop
	rst 38h
	ld hl,l5d44h
	ld de,l5d71h
	ld bc,02d56h
	ret nc
	ld (de),a
	ld hl,00a9eh
	jp (hl)
	ld a,(bc)
l6aa9h:
	ld h,l
	ld c,e
	ld a,(bc)
	sub h
	adc a,e
	jr z,$-16
	ld (de),a
	cpl
	ld (bc),a
	jr nc,$+4
	ld c,c
l6ab6h:
	ld sp,03302h
	ld (bc),a
	inc (hl)
	ld (bc),a
	inc h
	dec (hl)
	ld (bc),a
	add hl,hl
	ld (bc),a
	or b
	djnz $+110
	ld (002b1h),a
	ld e,06dh
	ld (l7c41h),a
	dec b
	ld a,(bc)
	ld h,e
	ld (008a1h),a
	inc h
	ccf
	inc d
	ld (hl),002h
	ld a,092h
	ld (bc),a
l6adah:
	dec a
	ld (bc),a
	dec sp
	ld (bc),a
	ld c,c
	inc a
	ld (bc),a
	add hl,sp
	ld (bc),a
	ld a,(02402h)
	scf
	ld (bc),a
	ld b,d
	ld (bc),a
	ld b,e
	adc a,e
	ld (bc),a
	inc h
	ld (hl),b
	sub 000h
	ld e,a
	ld (l5ffah),a
	ld a,05ah
	ld a,(de)
	ld (05d41h),a
	or a
	add a,b
	sbc a,d
	ld (hl),e
	ld a,0fbh
	ld (0a23bh),a
	ld l,l
	and h
	inc c
	ret nz
	ld l,(hl)
	ld c,042h
	ld hl,(l6013h)
	ld (0042bh),a
	pop de
	push de
	dec l
	dec hl
	dec h
	ex af,af'
	ld d,d
	ld l,00ah
	ret p
	ld (hl),d
	ld b,b
	jp nc,09bf5h
	jr z,$+56
	inc d
l6b23h:
	jp p,l6313h
	ld a,00ah
	ld a,(hl)
	ld e,(hl)
sub_6b2ah:
	inc de
	ld (de),a
	ld a,e
	ld (hl),c
	call pe,0064ah
	jp nc,0326fh
	sbc a,a
	ld (hl),b
	inc e
	ld (hl),032h
	push bc
	ld c,046h
	ld e,a
l6b3dh:
	ld de,0dd8eh
	ld e,a
	cp e
	ld b,e
l6b43h:
	sub 004h
	sbc a,0e7h
	add a,0f7h
	ld d,b
	inc h
	call z,032c3h
	ld l,0cbh
	jp 0c9dch
	and h
	ld (bc),a
	sub c
	ret nz
	jp c,05f68h
l6b5ah:
	jr c,l6b5ah
	inc b
	sbc a,e
	pop bc
	ld b,0c3h
	ld l,h
	ld e,a
	add a,0f2h
	ld d,a
	ld sp,hl
	jr z,l6b6bh
	cp 005h
l6b6bh:
	adc a,b
	ld l,b
	jp c,08b78h
	or h
	add a,d
	dec (hl)
	ld e,b
	ld a,e
	ld c,002h
	ld c,08bh
	add a,a
	ld c,0a0h
	ld h,e
	dec h
	ld a,c
	ld c,051h
	inc bc
	ld e,c
	jp c,00e96h
	ld b,(hl)
	ld b,a
	inc b
	ld h,(hl)
	ld c,0a2h
	inc b
	ld a,e
	jp c,00ea5h
	adc a,b
l6b92h:
	sbc a,d
	xor b
	ld a,(hl)
	and 01dh
	ld c,069h
	or h
	ld c,018h
	ld a,a
	dec sp
	call z,0c30eh
	sub d
l6ba2h:
	ld c,0b4h
	xor h
	ld (hl),c
	ld c,02ch
	xor l
	jp nc,0041dh
	jr c,$+129
	ld (l7f48h),a
	adc a,a
	ld c,c
	ei
	and e
	add a,h
	inc hl
	ld h,b
	ld a,(081c8h)
	or a
	jp nz,l6090h
	cp (hl)
	cp e
	rst 10h
	pop hl
	ld b,a
	ld h,b
	inc h
	djnz l6b92h
	ld d,b
	inc b
	dec b
	jp z,03b67h
	ld h,b
	ret
	ret p
	ld de,01b38h
	ret z
	xor a
	ld l,065h
	adc a,h
	sbc a,a
	ld (0143ch),hl
	ld l,h
	ld b,0e7h
	inc d
	sub d
	adc a,c
	ld a,(bc)
	jr nc,l6bech
	cp 07fh
	ld b,0c1h
	ld c,c
	ld a,b
l6bech:
	adc a,h
	push hl
	ret nz
	ld a,(de)
	ld (0dc07h),a
	sbc a,020h
	sub (hl)
	jp 03a27h
	sub a
	jp l443ch
	ld (0ca03h),a
	ld a,03eh
	or h
	ld l,(hl)
	ret c
	cp h
	ld bc,03006h
	call sub_76dfh
	ret
l6c0dh:
	add hl,hl
	adc a,l
	dec a
	and 089h
	sub l
	jp 0f623h
	ld h,b
	dec bc
	ld e,b
	jp z,l56aeh
	ex af,af'
	ld h,h
	ld c,b
	add a,025h
	jr c,$+39
	jp z,004e5h
	ret p
	ex de,hl
	ret nz
	ld (hl),b
	ld h,b
	call 002e9h
	ret po
	ld d,020h
	jp z,01e00h
	ld h,c
	ret
	ld h,l
	ld bc,00472h
	ld d,c
	call m,0f8d7h
	or a
	ld (01e02h),hl
	ld b,a
	dec b
	daa
	cp 05ah
	jp m,01700h
	ld bc,00777h
	inc sp
	inc bc
	ld b,l
	inc b
	inc b
	ld (hl),b
	rlca
	ld (hl),b
	nop
l6c56h:
	or b
	ld h,b
	dec a
l6c59h:
	jp z,04224h
	ld h,c
	inc bc
	sbc a,h
	ld (hl),e
	dec a
	inc b
	jr nc,l6ca3h
	ld h,d
	inc b
	ex de,hl
	ld h,h
	adc a,b
l6c69h:
	inc bc
	call nz,0036ch
	call nc,0d46fh
	ld l,a
	jr z,l6c0dh
	defb 0edh ;next byte illegal after ed
	or 00ch
	ld bc,0a9bah
	rst 38h
	jr z,l6c59h
	and h
sub_6c7dh:
	call nc,0230ch
	ld (hl),d
	ret
	di
	inc de
	adc a,018h
	and c
	jr z,$-45
	ld l,(hl)
	ei
	add a,c
	ld h,e
	ld e,082h
	ld e,0cfh
	ld (de),a
	ld sp,0041dh
l6c95h:
	rla
l6c96h:
	xor a
	or l
	rla
	jr z,l6c96h
	sub c
	add a,l
	sub b
	ld h,(hl)
	ld d,01bh
l6ca1h:
	dec (hl)
	dec b
l6ca3h:
	dec de
	exx
	dec de
	push hl
	ld l,c
	sbc a,e
	inc e
	rla
	ld d,c
	inc e
	cp h
	ld d,c
	and e
l6cb0h:
	jp nc,003d4h
	ret nz
	adc a,h
	call nz,00600h
	ld a,(bc)
	cp 060h
l6cbbh:
	jp c,l616eh
	ld b,01ah
	add hl,bc
	cp 068h
	ld b,007h
	inc (hl)
	cp 070h
	ld b,005h
	cp 068h
	ld a,b
	ld b,003h
	cp 080h
	push hl
	dec c
	adc a,b
sub_6cd4h:
	dec de
	res 2,b
	add hl,hl
	sub (hl)
	sbc a,b
	ld b,08ch
	dec bc
	cp 0a0h
	ld b,061h
	ld a,b
	ld b,(hl)
	ld a,(0e12bh)
	jr $+81
	ld d,d
	ld (hl),h
	di
	ld c,d
	ld c,a
	rst 38h
	ld d,a
	inc bc
	jr nc,l6cbbh
	cp 0d8h
	ld a,b
	ld bc,07c00h
	ld a,(bc)
	sbc a,a
	add hl,bc
	rla
	ex af,af'
	ret nz
	rst 38h
	di
	ld b,0e3h
	dec b
	inc b
	jp 0ae03h
	ld (bc),a
	push af
	ld bc,0defeh
	call m,0e3c5h
	push de
	dec (hl)
	inc bc
l6d12h:
	call po,021c8h
	cp b
	dec b
	rst 28h
	ld bc,0fffeh
	jp z,l6229h
	cp 0feh
	ld d,0ach
	dec a
	ld d,08eh
	rst 30h
	push hl
	call c,02a11h
	xor h
	or l
	ld hl,(0c903h)
	ld c,d
	inc b
	sub l
	adc a,c
	add hl,bc
	cp 0b8h
	jp z,0a001h
	inc a
	ld b,b
	add a,e
	ld sp,hl
	ld h,c
	sbc hl,de
	ld b,c
	ld e,l
	ld l,h
	ld b,c
	rra
	sub 00bh
	ld b,d
	ld sp,0b2feh
	cp 018h
	ret
	ld b,a
	ld (bc),a
	xor b
	inc a
	ld b,0f1h
	dec b
	inc b
	cp a
	inc bc
	ld (hl),a
	ld (bc),a
	add a,a
	inc c
	sbc a,a
	inc b
	adc a,a
	ld (bc),a
	or e
	inc bc
	dec d
	scf
	dec b
	ld (bc),a
	jr c,l6d6ch
	rst 18h
	ld (bc),a
	ld b,02eh
l6d6ch:
	inc bc
	ret c
	inc b
	ld b,005h
	call c,096d9h
	sub c
	inc bc
	call 06478h
	ld a,(00bd8h)
	or e
	ld b,04ch
	ld h,e
	ld a,(0118ch)
l6d83h:
	xor l
	ld d,c
	inc bc
	jp c,l79a4h
	ld h,d
l6d8ah:
	sbc a,e
	xor b
	ld a,000h
	ld (0f514h),a
	pop bc
	ret nz
	sbc a,b
	sub e
	dec b
	ld a,(00996h)
	jp 04198h
	xor h
	ld d,d
	ld b,081h
	dec c
	pop af
	pop bc
l6da3h:
	or a
	inc d
	and h
	inc (hl)
l6da7h:
	ld a,(bc)
	ld (l64ech),a
	inc bc
	jp nz,0d360h
	or e
	dec bc
	add a,007h
	ld a,(l56c1h)
	sub 03eh
	dec c
	call po,026a6h
	ex af,af'
	ld hl,l40e4h
	call 0048bh
	ld a,(02a73h)
	ld e,l
	add a,0a3h
	ld c,l
	ld (hl),e
	add hl,de
	ld (hl),a
	rlca
	sub e
	inc b
	jp 03a29h
	ex (sp),hl
	ld hl,(00365h)
	dec bc
	cp 011h
	jp nz,l52bah
	ex af,af'
	inc c
	ld a,(03431h)
	inc l
	ld de,018cah
	ld sp,hl
	call z,sub_4096h
	pop hl
	di
	ld hl,0e18fh
	add hl,sp
	sub c
	ld sp,091a9h
	ld e,095h
	rlca
	xor l
	sub l
	add hl,sp
	di
	defb 0ddh,018h,086h ;illegal sequence
	add a,d
	djnz l6da7h
	add a,d
	jr l6d8ah
	rlca
	in a,(004h)
	ld d,d
	ret z
	sub h
	ld c,c
	dec l
	adc a,d
	ld de,0c1f4h
	ld e,c
	inc bc
	ld h,d
	ret nz
	sub c
l6e15h:
	add hl,de
	di
	pop bc
	ex af,af'
	or (hl)
	jr $-53
	ld a,e
	ld bc,l4fabh
	nop
	ex af,af'
	ld c,a
	inc bc
	cpl
	ld b,09fh
	ld (bc),a
	adc a,a
	inc b
	ld a,001h
	dec sp
	inc b
	pop af
	inc bc
	jp p,0eb04h
	dec b
	ld b,0bfh
	rlca
	add hl,bc
	rst 28h
	ret po
	ld bc,0453ah
	inc sp
	di
	sbc a,d
	and d
	or d
	call pe,0da4dh
	and d
	and l
	add a,(hl)
	inc bc
	and 00fh
	jp nz,0560bh
	inc de
	dec bc
	rla
	add hl,sp
	dec bc
	dec bc
	ld h,(hl)
	dec a
	dec bc
	xor b
	and d
	pop hl
	call c,006e5h
	and d
	xor 00eh
	and l
	xor a
	and c
	ld e,c
	ld l,025h
	inc bc
	ld c,(hl)
	sub a
	sub e
	xor 063h
	sub a
	inc (hl)
	ld b,a
	add a,a
	dec d
	jp nz,l64deh
	jr l6e87h
	ld a,0e2h
	sbc a,0efh
	ld a,006h
	ld a,(bc)
	add a,b
	ld b,a
	or 045h
	add a,b
	and 0aeh
	ld (hl),d
l6e85h:
	add a,h
	dec (hl)
l6e87h:
	jp z,l6542h
	jp p,0e2ach
	and c
	ld (bc),a
	ld h,l
	ld c,h
	adc a,c
	call 00cf5h
	ld a,(03635h)
	ld b,(hl)
	dec (hl)
	add a,c
	sbc a,l
	dec (hl)
	ld h,l
l6e9eh:
	ld (hl),019h
	cp 036h
	dec bc
	defb 0fdh,02ch ;inc iyl
	nop
	ld de,07454h
	ld hl,l7bc0h
	ld b,01dh
	ld (bc),a
	call 0ee36h
	inc bc
	ld h,b
	ld a,a
	ld de,0c280h
	sbc a,l
	dec c
	rst 28h
	call z,0f026h
	ld d,l
	ld c,d
l6ec0h:
	nop
	rst 18h
	ld (hl),l
	call nc,04880h
	ccf
	push hl
	jp 08800h
	jp nz,09832h
	jp nz,0e03ah
	jp nz,0fe74h
	or 0a0h
	ld h,(hl)
	ld h,l
	pop af
	ld hl,l46a0h
	jp m,01132h
	ld e,0a9h
	ld b,004h
	cp 0d2h
	xor d
	ex af,af'
	call nc,009d2h
	ld a,024h
	ld (02880h),a
	sub b
	ld (bc),a
	inc h
	and b
	ld (bc),a
	or b
	ld (bc),a
	ret nz
	sub b
	ld (bc),a
	ret nc
	inc (hl)
	sub d
	jp nz,017d6h
	ld c,032h
	sub d
	rlca
	call 0d151h
	inc c
	jp z,l6ca1h
	rlca
l6f0bh:
	adc a,d
l6f0ch:
	sub (hl)
	inc bc
	inc c
	ld b,035h
	ld a,(0af40h)
	ld b,d
	ret z
	ld h,l
l6f17h:
	inc bc
	ld h,c
	ret pe
	inc bc
	or d
	ld h,(hl)
	inc bc
	ld de,l6762h
	inc bc
	inc (hl)
	ld l,b
	inc bc
	jr nc,l6f0ch
	inc bc
	sub (hl)
l6f29h:
	ld l,c
	add a,b
	inc bc
	ld d,l
	ld l,d
	jp 06a83h
	ld a,(l4146h)
	cp c
	jr nz,$+67
	ld a,(0c23ch)
	call c,0e065h
	rst 38h
l6f3eh:
	jp nz,0eac6h
	cp c
l6f42h:
	inc b
	ld (006b7h),hl
	rst 0
	xor l
	add hl,de
	jp m,04124h
	ret
	sbc a,e
	ld h,c
	ld (0bd66h),hl
	call nc,0a302h
	nop
	ld h,a
	ld (l6854h),a
	ld (l6905h),a
	ld (0c424h),a
	ld l,c
	or h
	ld c,c
	ld b,e
	and c
	and h
	jp po,020d6h
	xor h
	inc b
	ld h,a
	ld hl,(0ed01h)
	ld e,a
	and 007h
	jp z,0661ch
	sbc a,0b1h
	add a,003h
	inc sp
	jp 00505h
	ld d,h
	rst 38h
	add a,l
	rst 20h
	rst 28h
	dec a
	or 005h
	ld (bc),a
	ld h,a
	ld (bc),a
	ld (bc),a
	inc b
	ld hl,(00103h)
	nop
	ld (hl),a
	ld (bc),a
	dec c
	add hl,de
	rst 0
	ld h,034h
	call pe,0e3ceh
	ld e,h
	inc bc
	pop af
	ld (bc),a
	ld bc,0029ah
	rst 38h
	rst 28h
	dec b
	or c
	inc c
	ld (bc),a
	push hl
	inc b
	defb 0fdh,001h,02eh ;illegal sequence
	defb 0fdh,003h,00dh ;illegal sequence
	ret m
	add hl,de
	rst 20h
	ld h,040h
	adc a,b
	nop
	add a,b
	ld a,(0c78ah)
	sbc a,b
	ld c,d
	inc bc
	cp 060h
	ld e,a
	ld hl,l6623h
	cp h
	sub a
	sub b
	ret
	call z,08e66h
	ex (sp),hl
	ld b,h
	add a,035h
	ld b,a
	adc a,c
	and l
	cpl
	dec h
	adc a,(hl)
	cp 002h
	cp d
	inc b
	jp p,0d901h
	ld (bc),a
	nop
	call m,0d703h
	dec c
	dec sp
	inc b
	add hl,de
	rst 0
	scf
	ld e,h
	inc bc
	add hl,sp
	ld (bc),a
	inc bc
	ex (sp),hl
	ld (bc),a
	inc b
	xor a
	ld bc,0022dh
	sbc a,l
	nop
	inc b
	inc bc
	ld (hl),d
	dec c
l6ff6h:
	nop
	rst 20h
	inc bc
	cpl
	cp (hl)
	inc bc
	ld d,e
	add a,b
	pop bc
	adc a,b
	jp nc,0cab1h
	inc bc
	or c
	dec (hl)
	out (0b1h),a
	inc e
	sub c
	ld a,(hl)
	ld h,a
	or c
	call z,0e080h
	or a
	jp m,00e94h
	ld h,a
	ld a,(l5e1ah)
	or e
	ld c,b
	cp d
	and a
	sub b
	ld h,a
	bit 6,b
	ld c,048h
	jp nc,00ef0h
	sbc a,a
	add a,b
	pop hl
	rst 38h
	nop
	add a,a
	sbc a,d
	add a,c
	jp 0cf88h
	xor b
	inc bc
	rst 8
	jp nc,l67a4h
	rst 8
	jr c,l7042h
	ld c,(hl)
	ld l,b
	ld a,007h
	add a,c
	jp p,0ea9fh
	pop hl
l7042h:
	and e
	or b
	ret m
	sbc a,d
	pop af
	and d
	or b
	and e
	inc bc
	or b
	ld c,b
	ld d,l
	ld l,b
	or b
	pop hl
	rst 38h
	or b
l7053h:
	ld (de),a
	ex af,af'
	or d
	sbc a,a
	sub c
	adc a,a
	or b
	jp po,0b329h
	ld l,0a1h
	adc a,d
	or d
	inc bc
	adc a,l
	or d
	inc hl
l7065h:
	ld b,069h
	or d
	add a,e
	or d
	ld l,c
	add a,a
	ld d,d
	or e
	sbc a,c
	and a
	and b
	ld a,d
	xor d
	cp 01ah
	cp (hl)
	ccf
	adc a,e
	jp nz,0beddh
	ld hl,(0be03h)
	dec (hl)
	push bc
	cp (hl)
l7081h:
	inc e
l7082h:
	or e
	ld (hl),c
	adc a,b
	xor b
	cp (hl)
	jp pe,0bceeh
	exx
	ld a,(l68e9h)
	defb 0fdh,032h,080h ;illegal sequence
	dec b
	jp nz,l6b23h+1
	ld a,(l5d39h)
	ld l,b
	xor 0abh
	add hl,sp
	add a,b
	ld a,(bc)
l709eh:
	and e
	ld l,d
	ld c,000h
	ld d,0ech
sub_70a4h:
	ex af,af'
	ld e,00ah
	jp 008aeh
	jr nz,l70c2h
	ld a,(de)
	inc d
	ld e,0f6h
	jp nz,03880h
	ld e,l
	ld a,b
	ld (08f3ch),a
	dec a
	ld a,05dh
l70bbh:
	sbc a,(hl)
	adc a,h
	ld e,l
	ld l,e
	rrca
	add a,b
	ex af,af'
l70c2h:
	ld a,c
	ld (l5e16h),a
	ld (01825h),a
	ld e,(hl)
	ld a,b
	add a,d
	rla
	ld a,d
	nop
	cp 014h
	ld d,0f8h
	ld a,07bh
	ld (00583h),a
	jp nz,0833eh
	ld (00493h),a
	cp (hl)
	or d
	add a,h
	inc b
	inc de
	ld b,c
	ld (00494h),a
	ld hl,l59edh
	ld h,0c2h
l70ech:
	inc c
	inc (hl)
	adc a,e
	ld e,0b5h
	sub e
	ld e,043h
	ld e,0afh
	ld b,l
	ld e,020h
	ld d,008h
	ld a,b
	sub 036h
	dec (hl)
	add a,d
	rst 10h
	ld (hl),081h
l7103h:
	jp nz,0bcd7h
	inc bc
	ret p
	ret z
l7109h:
	ld b,003h
	ld b,e
	jp 08418h
	ld l,e
	rst 28h
	rla
	ld c,a
	dec b
	ld a,(l6b23h)
	add a,c
l7118h:
	ld (08003h),a
	dec de
	dec c
	ld c,h
	inc h
	and c
	dec e
	ld c,h
	and c
	inc h
	or c
	ld b,08ch
	inc bc
	ld a,(006c1h)
	or l
	inc bc
	or 024h
	ld b,0d1h
	ld b,0e1h
	ret
	ld b,003h
	xor a
	sbc a,(hl)
	jr $+60
	adc a,d
	rst 18h
	ld hl,(0a262h)
	ld c,0a2h
	dec d
	ld h,d
	or d
	ld b,0b2h
	ld b,065h
	jp nz,00306h
	sub c
	add a,(hl)
	ld b,026h
	jp nc,0e206h
	ld b,052h
	inc bc
	ld d,h
	dec sp
	ld hl,(l7c0ah)
	ld l,h
	or a
	ret z
	inc sp
	dec b
	ld (hl),03ah
	rst 28h
	call nz,0d603h
	jp c,l6ba2h
	ld hl,0def8h
	push af
	jp 08d08h
	jp (hl)
	ex af,af'
	rra
	ld hl,l5e07h
	ldd
	inc e
l7178h:
	xor 0b0h
	rra
	ld h,h
	jp c,0c102h
	ld l,e
	sub 033h
	ld (0bdebh),a
	ld b,c
	add a,06bh
	add a,007h
	or d
	pop de
	add a,b
	ld (l5dedh),a
	ld (092e9h),a
	ld (bc),a
	call m,0f802h
	ld (bc),a
	ld d,c
	dec bc
	ld c,02fh
	ld a,(00520h)
	ld (080f3h),hl
	inc b
	ld a,02ch
	sub b
sub_71a6h:
	ld (00c02h),a
	inc a
	adc a,h
	adc a,d
	xor c
	dec a
	ld l,(hl)
	inc bc
	ld e,a
	call po,0b728h
	ld bc,00d16h
	jp z,06bffh
l71bah:
	ld d,0fdh
	push bc
	ret c
	defb 0edh ;next byte illegal after ed
	inc b
	ld b,h
	add a,e
	add a,d
	sub 038h
	jp p,0c661h
	djnz l71bah
	jr l7206h
	ld h,l
	dec sp
	daa
	ld c,l
	daa
	ld h,c
	ld d,c
	add hl,hl
	ld e,(hl)
	dec sp
	inc l
	ld (03644h),a
	adc a,h
	sub c
	inc bc
	ld d,c
	ld l,h
	sub 0d4h
	ld (04e3dh),a
	sbc a,h
	inc de
	ld b,a
	dec a
	ld h,h
	cpl
	ld e,(hl)
	inc c
	add hl,bc
	daa
	inc c
	ld (hl),091h
	jr c,l7251h
	ld de,0216ch
	dec h
	and d
	rst 0
	inc c
	ld c,(hl)
	ld d,00ch
	add hl,bc
	dec e
	ld e,(hl)
l7200h:
	adc a,0c4h
	dec e
	ld c,d
	inc l
	sub d
l7206h:
	ld (bc),a
l7207h:
	ret p
	ld sp,002ech
	ld c,a
	rst 38h
	ld (bc),a
	ei
	xor b
	ld hl,07b13h
	ld l,h
	ret
	sub l
	sub b
	ld a,(0c39ch)
	inc d
	or a
	ret nz
	ld a,(0f90ah)
	ld l,h
	dec b
	ld a,(0eef0h)
	xor 020h
	call p,08cf3h
	sub e
	cp e
	sub (hl)
	jp c,025d3h
	ld d,07ch
	dec h
	ret c
	daa
	call m,0afcfh
	ld d,(ix+01fh)
	dec de
	jr z,l7207h
	defb 0ddh,004h,035h ;illegal sequence
	ld (hl),037h
	jr c,l727eh
	and (hl)
	ld b,b
	ld a,(bc)
	add hl,bc
	ex af,af'
	rlca
	ld b,032h
	dec b
	inc b
	ret p
	pop bc
l7251h:
	ld b,(hl)
	or c
	ld l,h
	ld e,a
	jp (hl)
	ld b,b
	ld hl,l6cb0h+2
	and b
	ret pe
	ld b,a
	or a
	rra
	jp z,l6da3h
	sbc a,d
	ret nc
	ld a,(l6cb0h)
	and d
	rst 10h
	inc (hl)
	and l
	dec b
	ld h,d
	or c
	add hl,bc
	and a
	inc (hl)
l7271h:
	ld c,e
	ld a,(01e33h)
	ld l,l
	jr z,$+7
	jr z,l7287h
	inc bc
	call 00ab7h
l727eh:
	ld (hl),b
	ld hl,06d1fh
	ld (0fc7ch),a
	xor h
	ld d,e
l7287h:
	ld d,034h
	ld de,0153dh
	ld sp,02a96h
	ld l,(hl)
	jr z,l72cfh
	cp a
	inc c
	call c,0b975h
	adc a,l
	rst 38h
	ld l,e
	ex af,af'
	rst 0
	inc bc
	rlc (hl)
	rst 20h
	sbc a,0ach
	cp h
	inc b
	ld (hl),a
	cp d
	cp l
	cp a
	ex de,hl
	inc bc
	rst 8
	inc b
	rlc l
	xor (hl)
	ld b,0f7h
	rst 18h
	ex af,af'
	nop
	ei
	adc a,h
	ret z
	xor a
	xor h
	inc bc
	ret po
	ex af,af'
	jp nz,09eb4h
	sub h
	ld bc,l45f6h
	xor d
	ld (bc),a
	ld b,h
	or h
	ld a,(011c0h)
	ld e,0d4h
	defb 0edh ;next byte illegal after ed
	ld l,h
	and d
l72cfh:
	rst 18h
	call 00332h
	adc a,h
	jp 0e542h
	inc b
	ld (bc),a
	jp z,004ech
	djnz l72e1h
	jp z,004f3h
l72e1h:
	inc b
	jp z,00008h
	ld l,(hl)
	cp 005h
	jp z,l6e85h
	jp 0048ch
	ld l,(hl)
	ret
	ld hl,l6e9eh
	adc a,h
	call po,0ad06h
	ret po
	ld b,006h
	inc b
	inc b
	push bc
	ld a,(l6ec0h)
	add a,0eah
	sub c
	inc b
	ld hl,011bch
	and d
	pop bc
	djnz $-16
	dec de
	ld l,h
	rrc c
	jp nz,005d0h
	jp (hl)
	ld (bc),a
	ld a,(0e714h)
	rst 38h
	or 01dh
	inc b
	di
	inc b
	out (099h),a
	ld a,088h
	ei
	inc b
	ret
	nop
	ld d,h
	inc b
	ld (hl),c
	dec b
	ld d,c
	ld bc,00030h
	sub b
	ex de,hl
	ld h,(hl)
	dec b
	inc b
	ld b,a
	dec b
	daa
	inc bc
	inc b
	out (060h),a
	rla
	ld bc,00077h
	rlca
	inc sp
	inc bc
	ld b,l
	inc b
	ld (hl),b
	rlca
	ld (hl),b
	rra
	nop
	ld d,h
	dec b
	rra
	ld l,c
	ld d,l
	ld b,01fh
	ret po
	ld b,0f8h
	rra
	ret z
	ld hl,09fdah
	call po,05d80h
	and l
	or e
	dec hl
	add a,d
	ld e,l
	adc a,c
	ld (03204h),hl
	add a,(hl)
	add a,a
	ld h,b
	sub l
	nop
	jr nz,$+5
	ld c,d
	dec d
	out (02ch),a
	dec hl
	rlca
	dec b
	inc hl
	sub b
	add a,b
	inc bc
	inc bc
	ret nz
	ex af,af'
	inc e
	jr z,l7388h
	add a,002h
l737ch:
	inc l
	inc bc
	ex af,af'
	jp c,00503h
	ret nc
	add a,h
sub_7384h:
	ld (bc),a
	jr l7389h
	ld d,(hl)
l7388h:
	and h
l7389h:
	sub c
	adc a,l
	inc e
	nop
	ld a,00eh
	or d
	ld d,(hl)
	ld c,000h
	sbc a,h
	ld c,00ah
	ld c,000h
	ld a,(06ee9h)
	inc a
	cp 046h
	ret z
	or d
	and h
	sub a
	ld b,b
	ld b,l
	jp z,l6f17h
	adc a,(hl)
	jp pe,00db2h
	or h
	ld b,d
	ld a,b
	ld l,a
l73afh:
	or h
	ld d,b
sub_73b1h:
	ld l,e
	ld l,a
	ld b,d
	and 004h
	ld c,b
	ld l,a
	sub 00eh
	ld (l6f3eh),hl
	adc a,d
	nop
	inc hl
	ld l,a
	ld de,l7736h
	ld bc,0001bh
	inc d
	ldir
	ret
	call po,00404h
	rlca
	dec b
	ld bc,00101h
	ld c,(hl)
	inc bc
	defb 0ddh,0a8h,002h ;illegal sequence
	call p,0c090h
	dec b
	dec b
	pop af
	ex de,hl
	rlca
	dec bc
	nop
	inc b
	ld a,r
	and 03fh
sub_73e7h:
	add a,050h
	inc l
	ld (030b3h),a
	add hl,bc
	ld d,h
	ld bc,l6ff6h
	sbc a,h
	sbc a,a
	ld (bc),a
	ld b,0c1h
	ld a,0feh
	ld (00408h),a
	ld e,h
	ex af,af'
	add a,d
	pop bc
	ld c,(hl)
	ld a,(04719h)
	inc hl
	inc b
	ld e,d
	jp 0718eh
	or h
	ld c,d
	ld l,a
	jp po,0c3b6h
	dec b
	add a,h
	ld h,b
	ld h,h
	ld a,064h
	call 01383h
	ld b,046h
	ld a,03ch
	ld b,05ch
	add a,d
	ld b,068h
	sbc a,h
	or d
	ld sp,l786fh
	ld c,l
	ld hl,09090h
	ld de,00010h
	dec d
	ld b,007h
l7431h:
	ld a,(hl)
	call 0a700h
l7435h:
	ld l,a
	add hl,de
	djnz l7431h
	pop af
	ret
	inc c
	ex de,hl
	ld hl,06fb1h
	ld a,a
	adc a,h
l7442h:
	adc a,l
	ex af,af'
	inc h
	ld h,h
	ld h,h
	ld (hl),h
	exx
	call nz,08b66h
	ld h,b
	inc (hl)
	nop
sub_744fh:
	inc b
	adc a,l
	exx
	sbc a,b
	ld c,018h
	ld c,0c2h
	ret z
	ld c,0f7h
	pop hl
	ld bc,00a06h
	rst 38h
	ld (l7a49h),a
	exx
	dec hl
	add a,a
	adc a,h
	jp pe,0e96eh
	dec b
	ld l,a
	or a
	call nz,05ce9h
	ld b,038h
	and b
	ld b,039h
	call z,006efh
	ld b,h
	dec h
	ld b,0d3h
	ld l,a
	ld h,b
	rra
	ld d,c
	ld (hl),b
	cp (hl)
	rlca
	dec b
	cp 006h
	jp z,08e15h
	adc a,c
	ld h,l
	sub d
	ld d,l
	jp 09b11h
	inc l
	or d
	xor a
	rla
	sub c
	inc h
	add hl,de
	cp l
	and b
	ld a,(07024h)
	sub c
	jr z,l7508h
	cpl
	jr nz,l7511h
	sub l
	ld h,h
	inc bc
	ret nz
	jp nc,0338bh
	inc (hl)
	cp 00ch
	adc a,l
	ld de,0ca70h
	ld e,d
	inc de
	ld (01270h),hl
	add a,d
	ld a,(l70ech)
	rst 20h
	pop af
	call pe,00010h
	adc a,h
	ld (hl),b
	ld a,05ah
	ld (l709eh),a
	rla
	call 0717eh
	cp b
	ld (0188ch),a
	ld b,e
	or c
	dec h
	rla
	jp l5917h
	out (03dh),a
	in a,(021h)
	ld sp,094e7h
	xor c
	inc de
	rrca
	jp nz,00f98h
	ret z
	rra
	inc c
	ld a,082h
	inc d
	inc bc
	ret
sub_74e8h:
	ld h,h
	ld bc,09f3ah
	ld (hl),b
	sbc a,l
	ld d,005h
sub_74f0h:
	add hl,bc
	ld hl,l7fd0h
	ld de,00996h
l74f7h:
	ld bc,08310h
	ld e,d
	add a,l
	ld a,(bc)
	ld a,(l4cb5h)
	xor (hl)
	ld h,l
	ld (04e05h),a
	ld (009b6h),hl
l7508h:
	jp nz,02fcah
	xor c
	inc c
	ex af,af'
	push bc
	push bc
	push hl
l7511h:
	inc b
	ret nz
	ld (0cadeh),a
	ld a,(0c947h)
	ret z
	inc sp
	ld b,045h
	ld b,089h
	sbc a,l
	ld b,e
	ld a,(037edh)
	jr nc,l74f7h
	xor d
	dec b
	scf
	ld a,e
	out (020h),a
	dec h
	ld (hl),c
	ld a,(08deeh)
	add a,a
	add a,b
	inc b
	jp z,l7118h
	ld hl,l71bah+1
	sbc a,l
	sbc a,a
	ld l,h
	xor h
	dec b
	ld (0e19dh),a
	inc c
	adc a,(hl)
	inc c
	rst 0
	inc h
	add a,d
	dec a
	inc h
	ld (hl),b
	rst 30h
	rla
	ret pe
	push hl
	inc h
	exx
	inc c
	jp 00ccah
	adc a,c
	jp m,l52cah
	dec b
	ld l,a
	nop
	dec b
	or e
	call 01872h
	ld l,h
	dec d
	dec b
	inc c
	inc h
	pop hl
	inc c
	inc sp
	inc c
	call z,sub_7a98h
	add a,b
	ld b,a
	pop bc
	ld bc,08160h
	ld (hl),b
	inc hl
	ld bc,02371h
	ld (hl),001h
	call sub_57b5h
	and c
	jr l75e2h
	ld a,(bc)
	ld (bc),a
	ld l,d
	nop
	and 0d7h
	adc a,d
	nop
	ld a,(de)
	jp nz,l7ce5h
	ld c,095h
	and 094h
	adc a,e
	ld l,e
	ld c,02ch
	dec e
	push de
	inc l
	dec e
	jp pe,0f558h
	dec e
	ld a,d
	ld e,b
	dec e
	cp l
	add a,h
	dec e
	ld e,(hl)
	add a,h
	dec e
	or (hl)
	and e
	add hl,hl
	ld (hl),0c2h
	add a,c
	ex af,af'
l75ach:
	nop
	inc c
	ld c,0ach
	ld e,h
	ld c,078h
	sub d
	ld c,0c8h
	di
	jr l75ach
	dec e
	ld h,a
	inc a
	ld c,01dh
	sub d
	daa
	ret z
	call m,0adb2h
	nop
	ld (01102h),hl
l75c8h:
	ld bc,00112h
	jr nz,l75cfh
	cp l
	sub c
l75cfh:
	ret m
	nop
	ei
	rra
	sbc a,c
	add hl,bc
	ld (l590dh),a
	ld e,d
	ld bc,00300h
	xor h
	in a,(0d5h)
	cp e
	di
	ccf
l75e2h:
	rst 10h
sub_75e3h:
	rra
	jr nz,l7605h
	or l
	dec b
	rra
	sbc a,0cch
	ld b,043h
	ld bc,0361fh
sub_75f0h:
	ld bc,0111fh
	inc c
	inc d
	ld (bc),a
	inc d
	ld bc,0b452h
	adc a,a
	adc a,d
	adc a,c
	ld hl,02301h
	ld (bc),a
l7601h:
	ld sp,l4003h
	nop
l7605h:
	ld h,l
	rra
	adc a,e
	ld b,c
	add hl,hl
	scf
	inc l
	ld de,l5bf4h
	cp l
	ret c
	call pe,0aba3h
	or a
	ld h,b
	rra
	add hl,de
	sub h
	bit 6,h
	sbc a,(hl)
	ld hl,l5104h
	ld (bc),a
	sub h
	sbc a,(hl)
	call pe,05076h
	sub d
	or e
l7627h:
	daa
	jr nz,l764eh
	ld (bc),a
	ld de,00658h
	jr c,l7634h
	ld (00325h),hl
	ld h,a
l7634h:
	scf
	inc bc
	rra
	add hl,de
	ld b,h
	inc b
	ld c,h
	xor 00dh
	rlca
	ld (hl),e
l763fh:
	inc bc
	rra
	dec hl
	ld (hl),l
	dec b
	rlca
	rla
	rra
	sub e
	ld (hl),003h
	ld h,a
	dec e
	inc b
sub_764dh:
	rra
l764eh:
	sbc a,e
	halt
	ld b,01fh
	dec b
	inc sp
l7654h:
	ld (hl),h
	rla
	rra
	sbc a,d
	dec de
	rlca
	dec sp
	ld d,a
	dec b
	rra
	cp (hl)
	rlca
	ld bc,0e2fch
	ld sp,017c2h
	or 0c7h
	dec d
	sbc a,e
	ld (hl),e
sub_766bh:
	pop de
	nop
	ret z
	or a
	ld b,0ffh
	jp z,l73afh
sub_7674h:
	ld e,b
	ld b,08eh
	sbc a,d
	ld c,073h
	add a,b
	cp 0ffh
	or c
	add a,c
	ld a,(bc)
	jp z,073d6h
	ld (00b0bh),a
	ld a,(l5d37h)
	sbc a,l
l768ah:
	inc de
	ld a,b
	djnz l764eh
	rla
	ld (hl),0f2h
	nop
	ret nz
	call sub_744fh
	ld a,013h
	ld (0eaf1h),a
	or a
	or b
	jp z,0b535h
	and b
	ret nc
	jp 0a4feh
	ld bc,021d0h
	ld b,d
	ld (hl),d
	jp l7654h
	dec bc
	ret z
	ld a,(0c157h)
	or b
	ld c,e
	ld hl,(l7a21h)
sub_76b7h:
	ld de,0da72h
	cp 005h
	ld e,d
	ld (hl),d
	add a,c
	ld h,l
	add a,h
	ld e,b
	inc c
	dec a
	rlca
	jp z,l7442h
	ld hl,0069ah
	ld l,0bah
	ld b,05ch
	jp c,0b906h
	jp m,03806h
	ld a,(de)
	ld (hl),e
	ld b,072h
sub_76d9h:
	ld a,(l5a06h)
	push hl
	ld b,07ah
sub_76dfh:
	ld b,0c5h
	ld l,e
	and (hl)
	jp z,08090h
	inc bc
	ld c,09ah
	jp 005b4h
	xor a
	push af
	cp l
	inc b
	ld d,03fh
	ld h,c
	ld h,c
	ret nz
	nop
	ld h,c
	add a,b
	nop
	ex af,af'
	ld l,h
	ld e,h
	ld (de),a
	xor 0a9h
	sub b
l7700h:
	add a,a
	add a,b
	add a,b
	call 0040fh
l7706h:
	nop
	ld h,b
	ld d,b
	ld c,b
	ld d,(hl)
	ld sp,hl
l770ch:
	inc e
l770dh:
	ld h,d
	out (020h),a
	jp 000a1h
	out (0d3h),a
	or e
	djnz $+6
	sbc a,b
	ret pe
	call pe,sub_7674h
	ld e,040h
	jr z,$+66
	and b
	nop
	inc b
	ld h,b
	and b
	nop
	add a,b
	ret po
	ret p
	ret m
	sbc a,(hl)
	ld c,l
	and l
	out (000h),a
	ld d,c
	add hl,hl
	jp pe,0a5cah
	ex de,hl
l7736h:
	push de
	cp d
	nop
	ld d,a
	ld l,b
	inc e
	inc e
	inc c
	rst 8
	add a,a
	add a,e
	ld bc,01426h
	ld c,h
	add a,0c3h
	add a,e
	add a,d
l7749h:
	ld sp,hl
	and d
	ex af,af'
	ret c
	ld h,b
	ld d,b
	or d
	jp m,080ffh
	nop
	dec (hl)
	dec (hl)
	ld e,d
	inc e
	ld l,047h
	ld c,(hl)
	jr nz,$+1
	add a,b
	sbc a,(hl)
	call 0f4e2h
	ret c
	adc a,b
	inc b
	ld c,c
	ld (bc),a
	ret p
	ld e,010h
	djnz l770ch
	ld c,d
	ld bc,00c07h
	ld bc,0180ch
	jr l770dh
	call z,sub_74e8h
	ret p
	ld d,b
	or l
	ld (hl),c
	ld l,005h
	sbc a,d
	nop
	ret po
	jr nc,$+50
	rrca
	inc de
	jr nz,l778fh
	ld bc,02e14h
	ld hl,002efh
	rst 38h
	ld (bc),a
l778fh:
	inc c
	ld a,(de)
	ld a,(de)
	inc (hl)
	nop
	nop
	ld a,(de)
	cp h
	sbc a,b
	ret m
	jr l77f9h
	sbc a,(hl)
	rst 10h
	ld b,077h
	add a,b
	ld d,b
	ld l,b
	ld l,b
	ld c,028h
	jr l77c5h
	ccf
	jr l77c8h
	nop
	ld e,(hl)
	dec d
	ld (l4d12h),hl
	sbc a,l
	defb 0ddh,026h,00dh ;ld ixh,00dh
	call m,02e5eh
	dec bc
	jp pe,0039fh
	adc a,e
	add a,b
	inc de
	ld d,014h
	ld l,b
	ret c
	add a,c
	nop
	ld a,h
l77c5h:
	xor h
	ld h,d
	add a,(hl)
l77c8h:
	and 0f7h
	ld d,c
	add a,l
	ld (bc),a
l77cdh:
	ld a,l
	add a,b
	ld h,a
	ld h,0dbh
	add a,e
l77d3h:
	ld h,c
	ld d,(hl)
	ld hl,01e72h
	ld a,a
	add a,b
	call c,0b0f8h
	and b
	jr nz,l7800h
	adc a,b
	inc b
	ret z
	call nz,00464h
	add a,h
	or (hl)
	jp z,0b805h
	ret nc
	ld (hl),b
	ld (hl),c
	ld a,a
	daa
	add a,c
	inc a
	inc bc
	ld (bc),a
	ld c,01fh
	ld c,00dh
	inc b
l77f9h:
	ld (hl),b
l77fah:
	ret m
	ld (hl),b
	ld b,b
	ei
	ld h,b
	ld h,h
l7800h:
	cp 08eh
	ld l,(hl)
	ld c,0b1h
	call nc,03192h
	ld (bc),a
	ld e,b
sub_780ah:
	adc a,b
	adc a,c
	add a,b
	call nc,03d66h
	ld (bc),a
	inc e
l7812h:
	ld sp,01120h
	rrca
	ret p
	cp e
	ld (0388ch),hl
	sbc a,h
	ld b,b
	ld h,(hl)
	ld l,e
	pop bc
	sub c
	dec e
	ld de,08c1ah
	call po,0ec55h
	ld d,(hl)
	add a,a
	ld bc,08463h
	rst 0
	ld h,e
	ld bc,0090bh
	add a,b
	cp e
	ld d,b
	add a,b
	add a,07fh
	ld l,a
	ld h,(hl)
	add a,006h
	dec bc
	ld d,l
	xor d
	ld a,b
	nop
	nop
	ld h,c
l7843h:
	sub b
	inc b
	ld b,093h
	ld h,c
	ld l,d
	nop
	dec bc
l784bh:
	ld b,b
	ld a,e
	sub b
	sub l
	add a,(hl)
	ret
	rlca
	ld h,b
	ld h,b
	ret
	add a,(hl)
sub_7856h:
	nop
	dec bc
	add hl,de
	ld (hl),h
	sbc a,c
	rla
	and b
	ld b,c
	ld h,07fh
	ld (hl),c
	ld (hl),b
	add a,a
	ld a,l
	ld bc,00e04h
	adc a,(hl)
	cp 064h
	ld h,b
	dec sp
	inc hl
	ld b,b
	adc a,d
l786fh:
	nop
	nop
	rrca
	ld de,03120h
	inc e
	add a,b
	ld e,d
	ld h,h
	sub 083h
	adc a,c
	adc a,b
	ld e,b
	daa
	ld sp,09e01h
l7882h:
	nop
	adc a,h
	ld a,(de)
	ld de,0c191h
	ld l,e
	ld b,b
	ld h,(hl)
	ld e,d
	jr c,$-114
	inc b
	adc a,b
	ret p
	call p,017c8h
	inc a
	jr c,l78aeh
	ccf
	add a,b
	ld b,c
	dec e
	inc a
	inc a
	jr l78ddh
	or b
	rrca
	inc e
	xor b
	ret po
	adc a,(hl)
	ld e,a
l78a6h:
	ret nz
	ret m
	rrca
	ld b,b
l78aah:
	inc e
	ld h,042h
	ld b,h
l78aeh:
	ld l,c
	jr nc,$-126
	ld a,a
	inc sp
	ld h,c
	ld b,b
	ld b,d
	ld h,01ch
	add a,b
	rrca
	jr c,l7920h
	ld b,d
	ld (0cc96h),hl
	add a,b
	rra
	call z,00286h
	ld b,d
	ld h,h
	jr c,l78aah
	rst 38h
	ld a,(bc)
	sub d
	ld c,(hl)
	rlca
	outi
l78d0h:
	ld bc,0fbcah
	xor b
	sbc a,l
	ld b,l
	pop bc
	ld d,l
	or a
	or (hl)
	xor a
	ld h,a
	sub e
l78ddh:
	dec d
	inc bc
	rlca
	sub a
	ld h,(hl)
	ld b,068h
	or l
	ld (hl),a
l78e6h:
	call p,000f4h
	ld b,030h
	call sub_76d9h
	inc hl
	inc de
	djnz l7904h
	ld sp,hl
	ld hl,00e36h
	ld h,(hl)
	ld c,018h
	djnz l7979h
	add a,a
	nop
	inc hl
	inc b
	inc hl
	ld c,(hl)
	add a,c
l7902h:
	dec hl
	ld c,(hl)
l7904h:
	dec b
	ld (de),a
l7906h:
	ld hl,07913h
l7909h:
	ld (bc),a
	djnz $-18
	ld hl,l7e18h
	cp l
	sub h
	sbc a,b
	jp 0033eh
	ret nz
	or e
	ld (hl),b
	dec b
	rst 38h
	ld d,d
	ld d,d
	jr nc,$+8
	ld d,b
	dec (hl)
l7920h:
	xor a
	inc hl
l7922h:
	nop
	djnz l7922h
	ret
	ld a,(de)
	cp (hl)
	ret z
	inc a
	ld (de),a
	ld a,e
	ret
	ld h,b
	ld b,l
l792fh:
	dec de
	ld a,(hl)
	dec a
	xor l
	sbc a,b
l7934h:
	or l
	djnz l78e6h
	ld (hl),a
	ld (0cdf5h),hl
	sbc a,e
	ld (hl),b
	halt
	jr c,l7909h
	sub d
	xor e
	ret c
	ret
	or h
	rst 18h
	jp po,08bf0h
	ld sp,hl
	pop af
	push hl
	inc b
	ld (de),a
	sbc a,c
	add a,a
	jp po,010e6h
	pop de
	ret nc
	nop
	adc a,c
	inc bc
	nop
	inc b
	ret m
	call p,00007h
	cp a
	ld bc,09100h
	ld (0b521h),hl
	ex de,hl
	ld c,0a8h
	ld d,l
	ld bc,0dd0ch
l796ch:
	ret nz
	ld a,0feh
	ld (l7081h),a
	ld d,a
	sbc a,c
l7974h:
	pop bc
	ret p
	djnz l79f1h
	ret
l7979h:
	inc e
	or (hl)
l797bh:
	ret
	inc e
	push hl
	ret nz
	ld h,b
	pop bc
l7981h:
	ld a,006h
	nop
	ld (0c238h),a
	ld (0c23ch),a
	ld a,002h
	rrc h
	ld sp,hl
l798fh:
	inc c
	ld d,l
	ld de,080dbh
	add hl,de
	ld e,(hl)
	ld d,000h
	push hl
	ld hl,0db20h
	ld (hl),a
	rlca
	inc hl
	ld d,(hl)
	pop hl
	push de
	nop
	ret
l79a4h:
	ld b,b
	ld a,b
	and e
	ld a,b
	dec de
	ld a,d
	jr z,l79ach
l79ach:
	ld a,e
	ld h,e
	ld a,e
	ret z
	ld a,e
	and a
	ld a,h
	dec (hl)
	nop
	ld a,b
	ld e,h
l79b7h:
	ld a,h
	rla
	ld a,l
	dec h
l79bbh:
	ld a,l
l79bch:
	or e
	ld bc,l507dh
	ld a,h
	or 07dh
	rla
	ld a,(hl)
	rst 0
	jr nz,$-101
	ld a,c
	ld de,0034fh
	inc sp
	ld a,(hl)
	cp l
	ld bc,l7812h
	ld a,(0c148h)
	call sub_49e4h
	jp z,01124h
l79dbh:
	ld a,b
	sbc a,c
	nop
l79deh:
	sbc hl,de
	ret
	ret
	ld b,07fh
	jp 0001dh
	ld a,b
	ld b,03fh
l79eah:
	push hl
	ld a,(hl)
	add a,002h
	and b
	nop
	ld (hl),a
l79f1h:
	ld h,000h
	ld l,a
	add hl,de
	ld b,(hl)
	inc hl
	ld a,(hl)
	jr nz,l79dbh
	dec hl
	nop
	add a,(hl)
	ld (hl),a
	dec hl
	ld a,(hl)
	jr $-126
	ld (hl),a
	ret
	add hl,bc
l7a05h:
	ld (hl),020h
	nop
	inc hl
	nop
	jp l7843h
	call 0fd60h
	ld (de),a
	dec a
l7a12h:
	ld (hl),a
	jp nz,l4f01h
	ld a,b
	ld (hl),00ah
	dec hl
	inc (hl)
	inc hl
	and d
	ld sp,0462bh
	inc e
l7a21h:
	ld a,(hl)
	ret z
	nop
	ccf
	call z,sub_7e5eh
	ld a,(hl)
	add a,c
	ld (hl),a
l7a2bh:
	rlca
	cp 0d7h
	jp nc,07869h
	inc sp
	jr l7a62h
	ld a,(hl)
	ld d,0b7h
	jp p,06a9eh
	add a,e
	ld l,b
	jp nc,0787ah
	nop
	inc a
	add a,a
	cp 006h
	jp c,l7882h
	ld a,014h
l7a49h:
	dec b
	neg
	ld (hl),d
	cpl
	ld a,a
	add hl,de
	add a,022h
	dec hl
	nop
	jr nc,l7a88h
	ld h,c
	jp (hl)
	ld h,0d2h
	sbc a,c
	ld a,e
	ld bc,l792fh
	sub a
	ld (de),a
	xor l
l7a62h:
	ret
	ld e,a
	ld (0b5cah),hl
	sbc a,c
	ld c,l
	ld de,09ba3h
	djnz l7aech
	sub 004h
	jp 0364bh
	ld e,00dh
	sbc a,h
	jr c,l7aa8h
	rra
	add a,085h
	ret nz
	ld b,001h
	jp z,l78d0h
	inc bc
	ld a,b
	add a,066h
	ld b,a
	ld (hl),b
	dec hl
l7a88h:
	and 0f5h
	rst 38h
	inc bc
	pop hl
	dec b
	call c,0fe01h
	ex de,hl
	rlca
	ld de,0015eh
	inc bc
	dec e
sub_7a98h:
	dec b
	adc a,001h
l7a9bh:
	ld (bc),a
	rlca
	sub c
	ld bc,01172h
	out (0d7h),a
	ld (de),a
	dec de
	xor c
	inc hl
	inc h
l7aa8h:
	ld (hl),b
	sbc a,a
	ld b,e
	ld l,079h
	ld e,h
	ex af,af'
	rst 38h
	jp nz,02306h
	call sub_4322h
	ld a,(hl)
	adc a,c
	sub b
	and l
	jp nz,l4646h
	ld a,c
	jp z,0ee91h
	ld (bc),a
	rst 30h
	add a,l
	xor 008h
	inc b
	adc a,d
	jr z,l7aebh
	ld l,d
	inc hl
	ld hl,(08206h)
	jr nz,l7b2ch
	ld a,c
	ld a,(01588h)
	ld a,c
	inc a
	and 088h
	ld b,d
	dec b
	add a,001h
	ld b,a
	push af
l7adfh:
	jr nc,l7adfh
	sbc a,a
	ld bc,0fed8h
	and (hl)
	jp z,l796ch
	ret nc
	ld b,h
l7aebh:
	add a,h
l7aech:
	inc bc
	ret nz
	dec (hl)
	add a,004h
	dec bc
	ld (0798dh),a
	ld (hl),061h
	ld a,(0f600h)
	rst 38h
	add a,(hl)
	add a,004h
	ld (l798fh),a
	sbc a,b
	xor (hl)
	adc a,c
	ld a,c
	ld e,h
	call 0e1e1h
	adc a,e
	or h
	add a,d
	jp po,00258h
	adc a,c
	sub l
	ld a,(bc)
	ld bc,00090h
	sbc a,b
	nop
	ld a,(01658h)
	sbc a,a
	jr z,l7b65h
	rrca
	xor d
	jr z,$+26
	ld b,03ah
	ld e,e
	add hl,bc
	dec b
	xor h
	sbc a,08ah
	ld h,h
	inc hl
	ld b,(hl)
l7b2ch:
	jp p,l7981h
	cp b
	jp z,l79bch
	dec c
	add a,c
	out (06fh),a
	ld a,b
	ld (0000ch),a
	ld a,(hl)
	cp 050h
	jp nc,l79deh
	dec hl
l7b42h:
	sub h
	and e
	inc e
	jp z,l79eah
	sub (hl)
	rlca
	jp nz,079d9h
	push af
	add hl,hl
	ld a,(bc)
	pop af
	pop hl
	and h
	and l
	add hl,hl
	rst 38h
	xor a
	sub l
	inc h
	and l
	ld de,09e3ah
	ld (hl),b
l7b5eh:
	and a
	dec h
	ret
	or c
	sbc a,c
	rst 28h
	dec c
l7b65h:
	call 04b0fh
	ld d,c
	ld b,0c0h
	rst 20h
	ld b,d
	ex af,af'
	inc b
	pop hl
	jp po,00407h
	ld b,b
	ld c,096h
	jp 0e932h
	ld l,(hl)
	inc bc
	ld a,024h
	ld hl,0c280h
	ld de,l4bd1h
	rst 30h
	xor b
	jp nz,01025h
	call m,022f7h
	cp 012h
	adc a,c
	ld a,d
	ld b,(hl)
	ld b,03ch
	cp e
	add hl,hl
	ret po
	add a,h
	inc sp
l7b97h:
	ld a,d
	dec hl
	ret p
	ld (hl),c
	ld d,(hl)
	ld b,(hl)
	cp l
	ld c,h
	jp nz,01090h
	jp nc,07a7fh
	ld a,e
	jr z,$-60
	ld c,e
	ld c,(hl)
	ld a,d
	call pe,006e1h
	ld (hl),0ceh
	ld c,08ah
	jp z,08e14h
	ld b,b
	di
	inc hl
	inc a
	ld (hl),a
	ld (de),a
	ld a,(0c1f2h)
	add a,(hl)
	inc h
l7bc0h:
	ld b,0b7h
	jp z,08d0fh
	ld h,b
	dec hl
	ret nz
	sbc a,d
	cp b
	add a,d
	and 023h
	inc b
	adc a,c
	call sub_7e55h
	add a,a
	dec hl
	ld b,04ch
	inc b
	add hl,hl
	ret
	dec h
	and l
	add hl,hl
	sbc a,a
	adc a,c
	jp 09ce1h
	ld b,(hl)
	ld c,d
	cp 04ah
	jp nc,00261h
	ex af,af'
	ret
	cp a
	rla
	dec bc
	ex af,af'
	exx
	ld (bc),a
sub_7bf0h:
	or (hl)
	ret
	daa
	ld bc,001ffh
	ld (bc),a
	inc bc
	inc e
	dec b
	ex de,hl
	rrca
	nop
	inc bc
	jp 09b01h
	nop
	inc bc
	cp d
	nop
	push hl
	defb 0edh ;next byte illegal after ed
	inc bc
	rst 20h
	dec b
l7c0ah:
	nop
	cp a
	inc de
l7c0dh:
	ld a,a
	ld sp,0011eh
	ld a,h
	ld d,c
	ld a,(hl)
	ld l,e
	ld a,(de)
	rst 20h
	exx
	cp 0c0h
	rrca
	jp nz,l7b42h
	ret nz
	rlca
	sub 008h
l7c22h:
	cp 09bh
	inc bc
	jp nz,07b3fh
	ld a,0bbh
	ld (hl),a
	sub a
	ld (0e19bh),a
	ld a,d
	call 0d716h
	ld e,h
	add a,h
	ret c
	ld a,c
	and 002h
	and 0cah
	dec (hl)
	or d
	ld d,l
	call z,020aeh
l7c41h:
	ld a,(0c14fh)
	pop bc
	defb 0ddh,005h,03ah ;illegal sequence
	and d
	ld d,(hl)
	dec hl
	ld e,(hl)
	rst 0
	ld e,c
	add hl,bc
	dec hl
	jp nz,07b7eh
	ex af,af'
	cp 0cfh
	ld (03d7dh),hl
	ld e,c
	ld l,b
	dec c
	add hl,hl
	ex (sp),hl
	jr nc,l7c6dh
	jp c,06089h
	ld a,e
	inc sp
	or a
	call z,0a04ch
	ld (0fe06h),a
	ld b,b
l7c6dh:
	ret c
	ld a,(hl)
	ld d,b
	add a,e
l7c71h:
	cp c
	ld b,d
	ld bc,0b7dah
	ld a,e
	cp 08ch
	jp nc,004a8h
	dec d
	add a,e
	jp nc,0f209h
	ld h,c
	ld (bc),a
	dec hl
	and a
	add hl,sp
l7c86h:
	rst 28h
	or 004h
	ld a,(hl)
	in a,(017h)
	ld de,0b904h
	sub (hl)
	cp c
	sbc a,h
	dec c
	cpl
	xor a
	or d
	ld (de),a
	inc hl
	xor h
	add a,l
	jp 02766h
	rst 0
	dec e
	ld d,l
	push bc
	or l
	inc e
	ld d,a
	rst 8
	inc e
	nop
	ld h,(hl)
	push bc
	rst 10h
	ret po
	ld a,h
	dec c
	rst 20h
	dec e
	ld (de),a
	ld (0cacbh),a
	nop
	rst 0
	ld e,l
	dec h
	call nz,09a99h
	ld h,a
	ld c,b
	sbc a,h
	rlca
	rst 28h
	ccf
	dec c
l7cc1h:
	sbc a,h
	dec e
	ld (hl),l
	ld bc,0312eh
	sub 00ch
	out (0e5h),a
	inc sp
	push bc
	sub l
	ld (bc),a
	ret nz
	inc h
	inc b
	or a
	pop af
	xor a
	ld a,h
	xor h
	add hl,de
	xor d
	ld a,h
	ld e,h
	ex (sp),hl
l7cdch:
	ld (l7749h),a
	rla
	ret nz
	xor c
	ld h,c
	ret nc
	rst 28h
l7ce5h:
	ld a,(l75c8h)
	inc hl
	jr z,l7c86h
	ld hl,(09407h)
	sbc a,e
	add hl,hl
	sub h
	ld a,h
	jp po,01191h
l7cf5h:
	ret nc
	ld a,e
	jp nc,0f729h
	ld a,c
	pop de
	ld d,e
	ret nc
	inc hl
	ld d,d
	ret
	jp 0dab8h
	ld (hl),d
	ld d,023h
	and b
	ret pe
	cp (hl)
	jp c,0c965h
	ret nc
	pop af
	sbc a,e
	ld c,e
	sbc a,h
	sbc a,l
l7d13h:
	cp c
l7d14h:
	or h
	sub d
	cp b
	add a,c
	ld h,h
	jp c,l7cf5h
	and b
	ld h,b
	ld bc,0b8c2h
	inc bc
	ld a,0ffh
	jp c,l7cdch
	ld a,0b7h
	push bc
	sub c
	inc (hl)
	rrca
	jr c,l7d2fh
l7d2fh:
	rrca
	ld l,d
	call pe,0770fh
	sub b
	ld a,c
	adc a,08bh
	inc l
	ld l,a
	rst 30h
	sub l
l7d3ch:
	ld a,l
	jp nc,l7dd4h
	ld (hl),a
	add a,l
	inc a
	jp nz,l7d13h
	or d
	and d
	ld (bc),a
	jp p,0ac96h
	in a,(003h)
	ld a,(l5e1ah)
	add a,018h
	ld (hl),a
	dec c
	sbc a,00bh
	push hl
	ld bc,00104h
	ld (003ffh),hl
	inc bc
	rst 38h
	ld bc,00224h
	cp 001h
	ld bc,0fd01h
	call nz,sub_75e3h
l7d6bh:
	defb 0fdh,001h,0e1h ;illegal sequence
	ld b,d
	push iy
	adc a,l
	nop
	and c
	ld b,001h
	call m,0fc00h
	inc bc
	adc a,a
	ei
	ld bc,0156ch
	dec h
	ld bc,02afch
	ld bc,03e01h
	sub h
	ex de,hl
	cp e
	adc a,l
	ld l,002h
	ld c,(hl)
	ld bc,0029dh
	adc a,d
	ld (hl),l
	add a,a
	nop
	or l
	ld b,001h
	ld l,c
	sbc a,c
	inc bc
	ld (hl),a
	jp c,0f323h
	call p,sub_7dc9h
	cp (hl)
	di
	jr z,l7d6bh
	sub h
	xor l
	ld d,(hl)
	jp z,0aa0ch
	add a,09dh
	ld l,e
	pop hl
	rla
	ld d,l
	add a,09eh
	ld bc,0c2bbh
	sbc a,07dh
l7db8h:
	ld a,09bh
	jp z,0332ah
	ld d,(hl)
	ld a,l
l7dbfh:
	sbc a,l
	add a,l
	ld b,b
	ld e,l
	dec a
	ret z
	jp po,09c25h
	ld e,c
sub_7dc9h:
	add a,0aeh
	ret
	ld b,d
	ld d,009h
	ex af,af'
	ld b,d
	ld sp,hl
	rst 18h
	xor d
l7dd4h:
	adc a,l
	inc hl
	rlca
	ex (sp),hl
	inc hl
	jp pe,020adh
	ld c,0feh
	jp nc,l7e3bh
	ret pe
	nop
	jp nc,0326fh
	call pe,03e70h
	add hl,bc
	ld h,d
	ld (0c111h),a
	xor b
	sbc a,b
	jr nz,l7dbfh
	add a,0b2h
	ld b,a
	dec h
	ld l,(hl)
	ei
	and d
	pop hl
	or l
	ld l,h
	defb 0ddh,065h ;ld ixh,ixl
	ret
	rst 8
	ld a,(01c01h)
l7e03h:
	jp nc,07e70h
	ex af,af'
	dec sp
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
	and b
sub_7e13h:
	ld a,(hl)
	ld (0c3c8h),a
	dec hl
l7e18h:
	add a,l
	inc b
	rst 0
	jp 0ba23h
	ld h,d
	ret
	adc a,h
	ld h,b
	dec d
	nop
	call c,03393h
	inc sp
	defb 0fdh,0f4h,01bh ;illegal sequence
l7e2bh:
	ld a,(bc)
	adc a,c
	or (hl)
	nop
	rrca
	ex af,af'
	ld a,e
	dec l
	cp 0feh
	adc a,(hl)
	inc a
	inc c
	rrca
	ret nz
	ld (hl),b
l7e3bh:
	ex (sp),hl
	dec l
	nop
	ld hl,(09d02h)
	rra
	nop
	rra
	sub h
	ld l,b
	add hl,sp
	ret m
	rrca
	ld a,(bc)
	rst 38h
	inc c
l7e4ch:
	cpl
	ld (bc),a
	or e
	ld hl,(l7906h)
	ld b,03fh
	ld l,b
sub_7e55h:
	rra
	ex af,af'
	rst 38h
	ld a,(bc)
	halt
	ld (bc),a
	rrca
sub_7e5ch:
	di
	ld c,a
sub_7e5eh:
	dec (hl)
	ld b,004h
	rra
	ld (024c3h),hl
	ld b,03ch
	inc c
	ld e,00fh
	ld c,l
	out (026h),a
	rrca
	inc a
	ld c,001h
	cpl
	inc e
	jr z,l7ea4h
	halt
	ccf
	exx
	adc a,b
	sbc a,a
	call m,sub_780ah
	ld c,00fh
	ret z
sub_7e80h:
	ccf
l7e81h:
	dec sp
	ld b,010h
	ld e,0d3h
	and (hl)
	ccf
	pop bc
	dec a
	rrca
	xor a
	ld a,(bc)
	rrca
	ld b,a
	jr l7ea0h
	add a,b
	ld (hl),l
	ld h,h
	ld a,e
	ld b,e
	ccf
	ld b,012h
	rst 38h
	ld b,00fh
	and b
	add a,l
	ld h,h
	add a,e
l7ea0h:
	ld b,c
	sbc a,(hl)
	ld b,014h
l7ea4h:
	rrca
	nop
	ld a,h
l7ea7h:
	adc a,b
	sbc a,e
	ld b,a
	ld b,b
	dec e
	ld b,016h
	rst 38h
	cpl
	sub c
	ld d,b
	sbc a,h
	rrca
	ld h,b
	add hl,bc
	rrca
	jp po,l477ch
	or b
	rrca
	nop
	dec bc
	rrca
	adc a,e
	sbc a,l
	rra
	rrca
	jr nz,l7ed3h
	rrca
	djnz l7e4ch
	adc a,h
	sbc a,e
	ld (0001eh),hl
	rrca
	ld a,(de)
	ld c,a
	nop
	and 058h
l7ed3h:
	jr c,l7ef5h
	nop
	inc a
	ld h,01ch
	rrca
	nop
	ld (hl),b
	ld (0805fh),a
	and (hl)
	ld d,c
	ld b,070h
	ld e,d
	inc de
	ld b,b
	adc a,h
	ld (bc),a
	jr z,l7f1bh
	ld (bc),a
	dec bc
l7eech:
	xor d
	ld a,c
	inc b
	ld (hl),b
	inc a
	ld b,c
	add a,b
	ld a,b
	ld a,(de)
l7ef5h:
	sub (hl)
	push hl
	inc d
	ld a,(bc)
	ld (bc),a
	inc b
	add hl,de
	add a,b
	xor d
	ld c,e
	inc hl
	dec bc
l7f01h:
	or d
	inc l
	ex af,af'
l7f04h:
	dec b
	jr l7ea7h
	ld c,e
l7f08h:
	nop
	rla
	ld d,b
	defb 0edh ;next byte illegal after ed
	ld (bc),a
	adc a,h
	ld (bc),a
	ret
	ld e,a
	nop
	ex af,af'
	pop de
	rst 0
	ld b,b
	dec e
	jp nc,00263h
	ld c,e
l7f1bh:
	dec l
	inc d
	scf
	ld (bc),a
	cpl
	add hl,sp
sub_7f21h:
	ex af,af'
	sbc a,b
	inc d
	ld b,(hl)
	ld (bc),a
	ld h,e
	cp h
	ld (bc),a
	rla
	ld h,00eh
	call pe,03702h
	ld h,e
	dec b
	ld a,(de)
	xor c
sub_7f33h:
	dec b
	add hl,de
	ld (bc),a
	adc a,l
	rst 38h
	ld (bc),a
	ld h,b
	adc a,h
	ld (bc),a
	ex de,hl
	jr nc,$+12
	ex af,af'
	rst 10h
	ld d,b
	ld (002c3h),a
	xor a
	jr nc,l7f6eh
l7f48h:
	ld (005a5h),a
	and l
	dec bc
	ld l,030h
	dec bc
	ex af,af'
	inc d
	rst 38h
	ex af,af'
	jr nz,l7eech
	ret p
	ld (bc),a
	add hl,sp
	scf
	ld d,b
	ex af,af'
	jr c,l7f08h
	add a,d
	ld (bc),a
	add hl,hl
	ld d,b
	sub b
	ld hl,03c02h
	dec b
	jp 0051eh
	inc b
	ld h,b
	ld d,b
	ld c,d
l7f6eh:
	ld (bc),a
	jr z,l7f01h
	ld (bc),a
	rst 38h
	ld (bc),a
	sbc a,e
	ret nc
	ret nz
	ld (bc),a
	sbc a,e
	and b
	rst 38h
	ld e,d
	and b
	jp m,00902h
	ld (0a014h),a
	ld d,002h
	ld (bc),a
	ld (bc),a
	jr nz,l7fa9h
	ld (bc),a
	inc (hl)
	ld a,(bc)
	and b
l7f8dh:
	ld hl,(0ad8fh)
	inc b
	rst 38h
	ld (bc),a
	dec d
	ccf
	or b
	ret nz
	ld (bc),a
	add a,b
	ld (hl),b
	rst 30h
	ld (bc),a
	ret nz
	ld h,e
	rst 38h
	ld (bc),a
	ret nc
	ld (bc),a
	ex (sp),hl
	ccf
	jr nz,l7f8dh
	nop
	rst 38h
	ret po
l7fa9h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7fd0h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7fe7h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
