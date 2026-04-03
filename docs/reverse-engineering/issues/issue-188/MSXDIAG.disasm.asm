; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/MSXDIAG.disasm.asm roms/games/roms/MSXDIAG.ROM

	org 04000h

	ld b,c
	ld b,d
	inc e
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
	ld c,l
	ld d,e
	ld e,b
	ld e,a
	ld b,h
	ld c,c
	ld b,c
	ld b,a
	nop
	nop
	nop
	nop
	call 00138h
	rrca
	rrca
	and 003h
	ld c,a
	ld hl,0fcc1h
	add a,l
	ld l,a
	ld a,(hl)
	and 080h
	or c
	ld c,a
	inc l
	inc l
	inc l
	inc l
	ld a,(hl)
	and 00ch
	or c
	ld h,080h
	call 00024h
	jp l403fh
	ret
l403fh:
	call sub_623dh
	call sub_4063h
	call sub_4568h
	call sub_4594h
	call 00041h
	call sub_622ch
	ld hl,00f0bh
	call sub_6229h
	ld hl,l7ebbh
	call sub_60f3h
	call 00044h
	call 00000h
sub_4063h:
	call sub_4080h
	call sub_4138h
	call sub_44c1h
	call sub_40a3h
l406fh:
	call sub_40aeh
	call sub_5e28h
	ld a,001h
	ld (0ec74h),a
	ld a,001h
	ld (0ed1ch),a
	ret
sub_4080h:
	ld b,003h
	ld d,00ch
l4084h:
	push bc
	push de
	xor a
	call 00132h
	call 000c0h
	pop de
	ld b,d
l408fh:
	halt
	djnz l408fh
	ld a,0ffh
	push de
	call 00132h
	pop de
	ld b,d
l409ah:
	halt
	djnz l409ah
	srl d
	pop bc
	djnz l4084h
	ret
sub_40a3h:
	ld hl,0ed14h
	ld b,006h
l40a8h:
	xor a
	ld (hl),a
	inc hl
	djnz l40a8h
	ret
sub_40aeh:
	ld hl,l8db6h
	ld (0ed1eh),hl
	ld a,(0002ch)
	and 00fh
	ld (0ed1dh),a
	cp 002h
	jr nz,l40c7h
	ld hl,l8ddeh
	ld (0ed1eh),hl
	ret
l40c7h:
	ret
sub_40c8h:
	call sub_5f33h
	call sub_5e97h
	call sub_5ed7h
	ld a,(0e3c5h)
	and 007h
	ld b,a
	ld a,(0e3d9h)
	and 007h
	or b
	ld (0ed14h),a
	ld a,(0e3c6h)
	and 007h
	ld b,a
	ld a,(0e3dah)
	and 007h
	or b
	ld (0ed15h),a
	ld a,(0e3c4h)
	and 007h
	ld b,a
	ld a,(0e3dbh)
	and 007h
	or b
	ld (0ed16h),a
	ld a,(0e3c7h)
	and 007h
	ld b,a
	ld a,(0e3dch)
	and 007h
	or b
	ld (0ed17h),a
	ld a,(0e3c0h)
	and 007h
	ld b,a
	ld a,(0e3ddh)
	and 007h
	or b
	ld (0ed18h),a
	ld a,(0e3bah)
	and 007h
	ld b,a
	ld a,(0e3deh)
	and 007h
	or b
	ld (0ed19h),a
	ret
sub_412ch:
	ld de,00e00h
	ld hl,l8d2eh
	ld bc,00080h
	jp 0005ch
sub_4138h:
	call sub_413fh
	call sub_415ch
	ret
sub_413fh:
	ld bc,00400h
l4142h:
	ld d,000h
	ld e,c
	ld hl,0fcc1h
	add hl,de
	ld a,(hl)
	ld hl,0ec7ah
	add hl,de
	bit 7,a
	jr z,l4156h
	ld (hl),00bh
	jr l4158h
l4156h:
	ld (hl),000h
l4158h:
	inc c
	djnz l4142h
	ret
sub_415ch:
	ld hl,0ec77h
	ld b,003h
l4161h:
	ld (hl),000h
	inc hl
	djnz l4161h
	ld hl,0ec7eh
	ld b,010h
l416bh:
	ld (hl),000h
	inc hl
	djnz l416bh
	ld hl,0ec8eh
	ld b,040h
l4175h:
	ld (hl),000h
	inc hl
	ld (hl),000h
	inc hl
	djnz l4175h
	ld bc,00400h
l4180h:
	push bc
	ld a,c
	and 003h
	ld (0ed13h),a
	ld hl,0ec7ah
	ld d,000h
	ld e,c
	add hl,de
	ld a,(hl)
	or a
	jp z,l41b5h
	ld a,(0ed13h)
	set 7,a
	ld (0ed13h),a
	ld bc,00400h
l419eh:
	push bc
	ld a,(0ed13h)
	and 083h
	sla c
	sla c
	or c
	ld (0ed13h),a
	call sub_41bdh
	pop bc
	inc c
	djnz l419eh
	jr l41b8h
l41b5h:
	call sub_41bdh
l41b8h:
	pop bc
	inc c
	djnz l4180h
	ret
sub_41bdh:
	ld hl,0e575h
	ld b,003h
	xor a
l41c3h:
	ld (hl),a
	inc hl
	djnz l41c3h
	call sub_41d7h
	call sub_4221h
	ld a,(0e575h)
	sub 040h
	ret c
	call sub_4355h
	ret
sub_41d7h:
	ld hl,00000h
	ld (0ed11h),hl
	ld b,00ch
l41dfh:
	push bc
	di
	ld a,(0ed13h)
	ld hl,(0ed11h)
	call 0000ch
	ld b,a
	cpl
	ld e,a
	ld c,a
	ld a,(0ed13h)
	ld hl,(0ed11h)
	push bc
	call 00014h
	ld a,(0ed13h)
	ld hl,(0ed11h)
	call 0000ch
	pop bc
	cp c
	jr nz,l4212h
	ld e,b
	ld a,(0ed13h)
	ld hl,(0ed11h)
	call 00014h
	call sub_42f0h
l4212h:
	ei
	pop bc
	ld hl,(0ed11h)
	ld de,01000h
	add hl,de
	ld (0ed11h),hl
	djnz l41dfh
	ret
sub_4221h:
	ld hl,0c000h
	ld (0ed11h),hl
	ld b,004h
l4229h:
	push bc
	di
	in a,(0a8h)
	ld b,a
	ld a,(0ffffh)
	cpl
	ld c,a
	exx
	ld c,003h
	ld a,(0ed13h)
	and c
	ld e,a
	ld a,(0ed13h)
	srl a
	srl a
	and c
	ld d,a
	ld hl,(0ed11h)
	call sub_44b6h
	ld b,a
	or a
	jr z,l425ch
l424eh:
	sla c
	sla c
	sla d
	sla d
	sla e
	sla e
	djnz l424eh
l425ch:
	ld a,c
	cpl
	ld c,a
	ld a,(0ed13h)
	bit 7,a
	jr z,l4280h
	rrc a
	rrc a
	and 0c0h
	ld b,a
	in a,(0a8h)
	and 03fh
	or b
	ld (0e574h),a
	in a,(0a8h)
	ld b,a
	ld a,(0e574h)
	call sub_42bch
	jr l4287h
l4280h:
	in a,(0a8h)
	and c
	or e
	call sub_42a0h
l4287h:
	ei
	ld a,0ffh
	cp e
	jr nz,l4290h
	call sub_42f0h
l4290h:
	pop bc
	ld hl,(0ed11h)
	ld de,01000h
	add hl,de
	ld (0ed11h),hl
	dec b
	jp nz,l4229h
	ret
sub_42a0h:
	out (0a8h),a
	ld a,(hl)
	ld b,a
	cpl
	ld c,a
	ld (hl),a
	ld a,(hl)
	cp c
	jr nz,l42b2h
	ld a,b
	ld (hl),a
	ld a,0ffh
	ex af,af'
	jr l42b5h
l42b2h:
	ld a,000h
	ex af,af'
l42b5h:
	exx
	ex af,af'
	ld e,a
	ld a,b
	out (0a8h),a
	ret
sub_42bch:
	out (0a8h),a
	ld a,(0ffffh)
	cpl
	and c
	or d
	ld (0ffffh),a
	in a,(0a8h)
	ld d,a
	ld a,b
	and c
	or e
	out (0a8h),a
	ld a,(hl)
	ld b,a
	cpl
	ld c,a
	ld (hl),a
	ld a,(hl)
	cp c
	jr nz,l42dfh
	ld a,b
	ld (hl),a
	ld a,0ffh
	ex af,af'
	jr l42e2h
l42dfh:
	ld a,000h
	ex af,af'
l42e2h:
	ld a,d
	out (0a0h),a
	exx
	ex af,af'
	ld e,a
	ld a,c
	ld (0ffffh),a
	ld a,b
	out (0a8h),a
	ret
sub_42f0h:
	ld hl,0e474h
	ld (hl),004h
	inc hl
	ld (hl),000h
	inc hl
	ld (hl),000h
	ld de,0ec77h
	ld hl,0e474h
	call sub_5d9fh
	ld de,0e575h
	ld hl,0e474h
	call sub_5d9fh
	ld de,00004h
	call sub_433ah
	call sub_4317h
	ret
sub_4317h:
	ld hl,(0ed11h)
	call sub_44b6h
	ld b,a
	ld c,001h
	or a
	jr z,l4327h
l4323h:
	sla c
	djnz l4323h
l4327h:
	push bc
	call sub_4457h
	pop bc
	ld a,(hl)
	or c
	and 00fh
	ld (hl),a
	ld a,(0e575h)
	sub 040h
	ret c
	set 6,(hl)
	ret
sub_433ah:
	push de
	ld hl,(0ed11h)
	call sub_44b6h
	call sub_447ah
	pop de
	push hl
	ld b,h
	ld c,l
	ld a,(bc)
	ld h,a
	inc bc
	ld a,(bc)
	ld l,a
	add hl,de
	ld b,h
	ld c,l
	pop hl
	ld (hl),b
	inc hl
	ld (hl),c
	ret
sub_4355h:
	ld hl,00000h
	ld (0e578h),hl
	di
	ld de,0e674h
	ld b,0ffh
l4361h:
	push bc
	push de
	ld a,b
	out (0fch),a
	ld a,(0ed13h)
	ld hl,00fffh
	call 0000ch
	pop de
	pop bc
	ld (de),a
	ld a,b
	or a
	jr z,l437ah
	inc de
	dec b
	jr l4361h
l437ah:
	ld bc,0ff00h
l437dh:
	push bc
	ld a,c
	out (0fch),a
	ld e,0ffh
	ld a,(0ed13h)
	ld hl,00fffh
	call 00014h
	pop bc
	ld a,b
	or a
	jr z,l4395h
	inc c
	dec b
	jr l437dh
l4395h:
	ld bc,0ff00h
l4398h:
	push bc
	ld a,c
	out (0fch),a
	ld a,(0ed13h)
	ld hl,00fffh
	call 0000ch
	pop bc
	sub c
	jr c,l43c4h
	ld hl,(0e578h)
	inc hl
	ld (0e578h),hl
	push bc
	ld e,c
	ld a,(0ed13h)
	ld hl,00fffh
	call 00014h
	pop bc
	ld a,b
	or a
	jr z,l43c4h
	inc c
	dec b
	jr l4398h
l43c4h:
	ld de,0e674h
	ld b,0ffh
l43c9h:
	push bc
	push de
	ld a,b
	out (0fch),a
	ld a,(de)
	ld e,a
	ld a,(0ed13h)
	ld hl,00fffh
	call 00014h
	pop de
	pop bc
	ld a,b
	or a
	jr z,l43e3h
	inc de
	dec b
	jr l43c9h
l43e3h:
	ei
	ld hl,(0e578h)
	ld de,00004h
	sbc hl,de
	ret c
	call sub_4457h
	set 7,(hl)
	xor a
	ld (0ed10h),a
	call sub_447ah
	ld b,008h
l43fbh:
	ld (hl),000h
	inc hl
	djnz l43fbh
	ld hl,0e474h
	ld (hl),064h
	inc hl
	ld (hl),000h
	inc hl
	ld (hl),000h
	ld de,0ec77h
	ld hl,0e474h
	call sub_5dabh
	ld a,001h
	ld (0ed10h),a
	call sub_447ah
	ld de,(0e578h)
	ld (hl),d
	inc hl
	ld (hl),e
	xor a
	ld (0ed10h),a
	call sub_447ah
	ld b,h
	ld c,l
	ld hl,(0e578h)
l442fh:
	push hl
	push bc
	ld hl,0e474h
	ld (hl),016h
	inc hl
	ld (hl),000h
	inc hl
	ld (hl),000h
	ld de,0ec77h
	ld hl,0e474h
	call sub_5d9fh
l4445h:
	pop bc
	ld h,b
	ld l,c
	push bc
	ld de,00010h
	call sub_433ah
	pop bc
	pop hl
	dec hl
	ld a,h
	or l
	jr nz,l442fh
	ret
sub_4457h:
	ld hl,0ec7eh
	ld a,(0ed13h)
	and 003h
	ld b,a
	or a
	jr z,l4469h
	ld de,00004h
l4466h:
	add hl,de
	djnz l4466h
l4469h:
	ld a,(0ed13h)
	srl a
	srl a
	and 003h
	ld b,a
	or a
	jr z,l4479h
l4476h:
	inc hl
	djnz l4476h
l4479h:
	ret
sub_447ah:
	ld a,(0ed13h)
	and 003h
	ld d,a
	ld a,(0ed13h)
	srl a
	srl a
	and 003h
	ld c,a
	ld e,000h
	xor a
	or d
	jr z,l4497h
	ld b,d
	ld a,e
l4492h:
	add a,020h
	djnz l4492h
	ld e,a
l4497h:
	xor a
	or c
	jr z,l44a2h
	ld b,c
	ld a,e
l449dh:
	add a,008h
	djnz l449dh
	ld e,a
l44a2h:
	ld a,(0ed10h)
	or a
	jr z,l44afh
	ld b,a
	ld a,e
l44aah:
	add a,002h
	djnz l44aah
	ld e,a
l44afh:
	ld d,000h
	ld hl,0ec8eh
	add hl,de
	ret
sub_44b6h:
	ld a,h
	ld b,006h
l44b9h:
	srl a
	djnz l44b9h
	ld (0ed10h),a
	ret
sub_44c1h:
	xor a
sub_44c2h:
	ld (0f3f6h),a
	ld (0fca2h),a
	ld a,(00006h)
	inc a
	ld c,a
	in a,(c)
	di
l44d0h:
	in a,(c)
	and a
	jp p,l44d0h
	ld a,(00007h)
	inc a
	ld c,a
	ld a,002h
	out (c),a
	ld a,08fh
	out (c),a
	ld a,(00006h)
	inc a
	ld c,a
	in a,(c)
	ei
	and 040h
	jr nz,l44f6h
	xor a
	ld (0ec75h),a
	jp l452ah
l44f6h:
	ld a,(00007h)
	inc a
	ld c,a
	ld a,001h
	di
	out (c),a
	ld a,08fh
	out (c),a
	ld a,(00006h)
	inc a
	ld c,a
	in a,(c)
	ei
	and 03eh
	or a
	jr nz,l4519h
	ld a,001h
	ld (0ec75h),a
	jp l452ah
l4519h:
	cp 004h
	jr nz,l4525h
	ld a,002h
	ld (0ec75h),a
	jp l452ah
l4525h:
	ld a,0ffh
	ld (0ec75h),a
l452ah:
	ld a,(00007h)
	inc a
	ld c,a
	xor a
	di
	out (c),a
	ld a,08fh
	out (c),a
	ei
	halt
	ld hl,00000h
	xor a
	ld (0f3f6h),a
	ld (0fca2h),a
	ld a,(00006h)
	inc a
	ld c,a
	in a,(c)
	di
l454bh:
	inc hl
	in a,(c)
	and a
	jp p,l454bh
	ei
	ld d,h
	ld e,l
	ld hl,006eeh
	sbc hl,de
	jr c,l4562h
	xor a
	ld (0ec76h),a
	jr l4567h
l4562h:
	ld a,001h
	ld (0ec76h),a
l4567h:
	ret
sub_4568h:
	ld a,001h
	ld (0ec74h),a
	ld bc,00f01h
	ld de,00500h
	call sub_5df3h
	ld hl,l6277h
	call sub_5fefh
	ld b,0ffh
l457eh:
	push bc
	call sub_5f33h
	pop bc
	ld a,(0e3d8h)
	and 002h
	jr nz,l4590h
	dec b
	jr z,l4590h
	halt
	jr l457eh
l4590h:
	call 00041h
	ret
sub_4594h:
	ld a,(0ed1ch)
	ld (0ed1ah),a
	ld (0ed1bh),a
	ld a,(0ec74h)
	or a
	jr z,l45b5h
	ld bc,00f04h
	ld de,00128h
	call sub_5db7h
	call sub_412ch
	xor a
	ld (0ec74h),a
	jr l45beh
l45b5h:
	call sub_622ch
	ld bc,00f04h
	call sub_6230h
l45beh:
	call 00041h
	call sub_4848h
	ld hl,00104h
	call sub_6229h
	ld hl,l7f67h
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,l7f78h
	call sub_60f3h
	call sub_485bh
	call sub_487ah
	call 00044h
l45e5h:
	call sub_40c8h
	ld a,(0e381h)
	and 002h
	jp nz,l468fh
	ld a,(0e382h)
	and 002h
	jp nz,l469dh
	ld a,(0e383h)
	and 002h
	jp nz,l46abh
sub_4600h:
	ld a,(0e384h)
	and 002h
	jp nz,l46b9h
	ld a,(0e385h)
	and 002h
	jp nz,l46c7h
	ld a,(0e386h)
	and 002h
	jp nz,l46d5h
	ld a,(0e389h)
	and 002h
	ret nz
	ld a,(0e380h)
l4621h:
	and 002h
	jp nz,l46e3h
	ld a,(0ed17h)
	and 002h
	jp nz,l46e3h
	ld a,(0ed14h)
	and 002h
	jr z,l4641h
	ld a,(0ed1ah)
	dec a
	cp 000h
	jr nz,l4653h
	ld a,001h
	jr l4653h
l4641h:
	ld a,(0ed15h)
	and 002h
	jr z,l4659h
	ld a,(0ed1ah)
	inc a
	cp 009h
	jp nz,l4653h
	ld a,008h
l4653h:
	ld (0ed1ah),a
	call sub_487ah
l4659h:
	ld a,(0ed18h)
	and 002h
	jp z,l468bh
	ld a,(0ed1ah)
	cp 001h
	jp z,l468fh
	cp 002h
	jp z,l469dh
	cp 003h
	jp z,l46abh
	cp 004h
	jp z,l46b9h
	cp 005h
	jp z,l46c7h
	cp 006h
	jp z,l46d5h
	cp 007h
	ret z
	cp 008h
	jp z,l46e3h
	ret
l468bh:
	halt
	jp l45e5h
l468fh:
	call sub_48a3h
	call 00041h
	ld a,001h
	ld (0ed1ch),a
	jp sub_4594h
l469dh:
	call sub_49aah
	call 00041h
	ld a,002h
	ld (0ed1ch),a
	jp sub_4594h
l46abh:
	call sub_4acbh
	call 00041h
	ld a,003h
	ld (0ed1ch),a
	jp sub_4594h
l46b9h:
	call sub_4bc1h
	call 00041h
	ld a,004h
	ld (0ed1ch),a
	jp sub_4594h
l46c7h:
	call sub_4cb0h
	call 00041h
	ld a,005h
	ld (0ed1ch),a
	jp sub_4594h
l46d5h:
	call sub_5a42h
	call 00041h
	ld a,006h
	ld (0ed1ch),a
	jp sub_4594h
l46e3h:
	call 00041h
	ld a,001h
	ld (0ed1ch),a
	jp l46eeh
l46eeh:
	ld a,(0ed1ch)
	ld (0ed1ah),a
	ld (0ed1bh),a
	ld a,(0ec74h)
	or a
	jr z,l470fh
	ld bc,00f04h
	ld de,00128h
	call sub_5db7h
	call sub_412ch
	xor a
	ld (0ec74h),a
	jr l4718h
l470fh:
	call sub_622ch
	ld bc,00f04h
	call sub_6230h
l4718h:
	call 00041h
	call sub_4848h
	ld hl,00104h
	call sub_6229h
	ld hl,l7ffch
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,l800dh
	call sub_60f3h
	call sub_485bh
	call sub_487ah
	call 00044h
l473fh:
	call sub_40c8h
	ld a,(0e381h)
	and 002h
	jp nz,l47e9h
	ld a,(0e382h)
	and 002h
	jp nz,l47f7h
	ld a,(0e383h)
	and 002h
	jp nz,l4805h
	ld a,(0e384h)
	and 002h
	jp nz,l4813h
	ld a,(0e385h)
	and 002h
	jp nz,l4821h
	ld a,(0e386h)
	and 002h
	jp nz,l482fh
	ld a,(0e389h)
	and 002h
	ret nz
	ld a,(0e380h)
	and 002h
	jp nz,l483dh
	ld a,(0ed16h)
	and 002h
	jp nz,l483dh
	ld a,(0ed14h)
	and 002h
	jr z,l479bh
	ld a,(0ed1ah)
	dec a
	cp 000h
	jr nz,l47adh
	ld a,001h
	jr l47adh
l479bh:
	ld a,(0ed15h)
	and 002h
	jr z,l47b3h
	ld a,(0ed1ah)
	inc a
	cp 009h
	jp nz,l47adh
	ld a,008h
l47adh:
	ld (0ed1ah),a
	call sub_487ah
l47b3h:
	ld a,(0ed18h)
	and 002h
	jp z,l47e5h
	ld a,(0ed1ah)
	cp 001h
	jp z,l47e9h
	cp 002h
	jp z,l47f7h
	cp 003h
	jp z,l4805h
	cp 004h
	jp z,l4813h
	cp 005h
	jp z,l4821h
	cp 006h
	jp z,l482fh
	cp 007h
	ret z
	cp 008h
	jp z,l483dh
	ret
l47e5h:
	halt
	jp l473fh
l47e9h:
	call sub_4de9h
	call 00041h
	ld a,001h
	ld (0ed1ch),a
	jp l46eeh
l47f7h:
	call sub_4f01h
	call 00041h
	ld a,002h
	ld (0ed1ch),a
	jp l46eeh
l4805h:
	call sub_50e2h
	call 00041h
	ld a,003h
	ld (0ed1ch),a
	jp l46eeh
l4813h:
	call sub_5bfdh
	call 00041h
	ld a,004h
	ld (0ed1ch),a
	jp l46eeh
l4821h:
	call sub_54e6h
	call 00041h
	ld a,005h
	ld (0ed1ch),a
	jp l46eeh
l482fh:
	call sub_5897h
	call 00041h
	ld a,006h
	ld (0ed1ch),a
	jp l46eeh
l483dh:
	call 00041h
	ld a,001h
	ld (0ed1ch),a
	jp sub_4594h
sub_4848h:
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,l7ef2h
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ret
sub_485bh:
	ld hl,l8090h
	call sub_60f3h
	ld hl,00114h
	call sub_6229h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,l80c7h
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ret
sub_487ah:
	ld h,002h
	ld a,(0ed1bh)
	add a,007h
	ld l,a
	call sub_6229h
	ld hl,l8108h
	call sub_60f3h
	ld h,002h
	ld a,(0ed1ah)
	add a,007h
	ld l,a
	call sub_6229h
	ld hl,l8106h
	call sub_60f3h
	ld a,(0ed1ah)
	ld (0ed1bh),a
	ret
sub_48a3h:
	call sub_622ch
	call 00041h
	call sub_4848h
	ld hl,00104h
	call sub_6229h
	ld hl,l810ah
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,l811dh
	call sub_60f3h
	ld hl,l7f0ch
	call sub_60f3h
	ld hl,l7f3eh
	call sub_60f3h
	call 00044h
l48d3h:
	call sub_40c8h
	ld a,(0ed18h)
	and 002h
	jp nz,l48e7h
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l48d3h
l48e7h:
	ld a,001h
	ld (0ec74h),a
	ld bc,00f04h
	ld de,00128h
	call sub_5db7h
	call 00041h
	ld a,020h
	ld bc,00000h
l48fdh:
	call 000a2h
	inc a
	cp 07fh
	jr nz,l4906h
	inc a
l4906h:
	cp 0ffh
	jr nz,l490ch
	ld a,020h
l490ch:
	ld d,a
	inc c
	ld a,c
	cp 028h
	jr nz,l491bh
	ld c,000h
	inc b
	ld a,b
	cp 017h
	jr z,l491eh
l491bh:
	ld a,d
	jr l48fdh
l491eh:
	call 00044h
	ld bc,00f04h
l4924h:
	push bc
	call sub_40c8h
	pop bc
	ld a,(0ed14h)
	and 002h
	jp nz,l495bh
	ld a,(0ed15h)
	and 002h
	jp nz,l496ch
	ld a,(0ed17h)
	and 002h
	jp nz,l497dh
	ld a,(0ed16h)
	and 002h
	jp nz,l498eh
	ld a,(0ed18h)
	and 002h
	jp nz,l499fh
l4951h:
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jp l4924h
l495bh:
	ld a,c
	inc a
	cp 010h
	jr nz,l4963h
	ld a,001h
l4963h:
	ld c,a
	push bc
	call sub_6230h
	pop bc
	jp l4951h
l496ch:
	ld a,c
	dec a
	cp 000h
	jr nz,l4974h
	ld a,00fh
l4974h:
	ld c,a
	push bc
	call sub_6230h
	pop bc
	jp l4951h
l497dh:
	ld a,b
	inc a
	cp 010h
	jr nz,l4985h
	ld a,001h
l4985h:
	ld b,a
	push bc
	call sub_6230h
	pop bc
	jp l4951h
l498eh:
	ld a,b
	dec a
	cp 000h
	jr nz,l4996h
	ld a,00fh
l4996h:
	ld b,a
	push bc
	call sub_6230h
	pop bc
	jp l4951h
l499fh:
	ld bc,00f04h
	push bc
	call sub_6230h
	pop bc
	jp l4951h
sub_49aah:
	call sub_622ch
	call 00041h
	call sub_4848h
	ld hl,00104h
	call sub_6229h
	ld hl,l81b3h
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,l81c6h
	call sub_60f3h
	ld hl,l7f0ch
	call sub_60f3h
	ld hl,l7f3eh
	call sub_60f3h
	call 00044h
l49dah:
	call sub_40c8h
	ld a,(0ed18h)
	and 002h
	jp nz,l49eeh
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l49dah
l49eeh:
	ld a,001h
	ld (0ec74h),a
	ld bc,00f04h
	ld de,00120h
	call sub_5dd5h
	call 00041h
	ld a,020h
	ld bc,00000h
l4a04h:
	call 000a2h
	inc a
	cp 07fh
	jr nz,l4a0dh
	inc a
l4a0dh:
	cp 0ffh
	jr nz,l4a13h
	ld a,020h
l4a13h:
	ld d,a
	inc c
	ld a,c
	cp 020h
	jr nz,l4a22h
	ld c,000h
	inc b
	ld a,b
	cp 017h
	jr z,l4a25h
l4a22h:
	ld a,d
	jr l4a04h
l4a25h:
	call 00044h
	ld bc,00f04h
	ld de,00100h
l4a2eh:
	push bc
	push de
	call sub_40c8h
	pop de
	pop bc
	ld a,(0ed14h)
	and 002h
	jp nz,l4a67h
	ld a,(0ed15h)
	and 002h
	jp nz,l4a7ah
	ld a,(0ed17h)
	and 002h
	jp nz,l4a8dh
	ld a,(0ed16h)
	and 002h
	jp nz,l4aa0h
	ld a,(0ed18h)
	and 002h
	jp nz,l4ab3h
l4a5dh:
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jp l4a2eh
l4a67h:
	ld a,c
	inc a
	cp 010h
	jr nz,l4a6fh
	ld a,001h
l4a6fh:
	ld c,a
	push bc
	push de
	call sub_6230h
	pop de
	pop bc
	jp l4a5dh
l4a7ah:
	ld a,c
	dec a
	cp 000h
	jr nz,l4a82h
	ld a,00fh
l4a82h:
	ld c,a
	push bc
	push de
	call sub_6230h
	pop de
	pop bc
	jp l4a5dh
l4a8dh:
	ld a,b
	inc a
	cp 010h
	jr nz,l4a95h
	ld a,001h
l4a95h:
	ld b,a
	push bc
	push de
	call sub_6230h
	pop de
	pop bc
	jp l4a5dh
l4aa0h:
	ld a,b
	dec a
	cp 000h
	jr nz,l4aa8h
	ld a,00fh
l4aa8h:
	ld b,a
	push bc
	push de
	call sub_6230h
	pop de
	pop bc
	jp l4a5dh
l4ab3h:
	inc d
	ld a,d
	cp 010h
	jr nz,l4abbh
	ld d,001h
l4abbh:
	ld hl,0f3e9h
	inc l
	inc l
	ld (hl),d
	push bc
	push de
	call 00062h
	pop de
	pop bc
	jp l4a5dh
sub_4acbh:
	call sub_622ch
	call 00041h
	call sub_4848h
	ld hl,00104h
	call sub_6229h
	ld hl,l8267h
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,l827ah
	call sub_60f3h
	ld hl,l7f0ch
	call sub_60f3h
	ld hl,l7f3eh
	call sub_60f3h
	call 00044h
l4afbh:
	call sub_40c8h
	ld a,(0ed18h)
	and 002h
	jp nz,l4b0fh
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l4afbh
l4b0fh:
	ld a,001h
	ld (0ec74h),a
	ld bc,00f01h
	ld de,00100h
	call sub_5df3h
	ld bc,00101h
	push bc
	call sub_4b99h
	pop bc
l4b25h:
	push bc
	call sub_40c8h
	pop bc
	ld a,(0ed17h)
	and 002h
	jr z,l4b41h
	inc b
	ld a,b
	cp 005h
	jr nz,l4b39h
	ld b,001h
l4b39h:
	push bc
	call sub_4b99h
	pop bc
	jp l4b8fh
l4b41h:
	ld a,(0ed16h)
	and 002h
	jr z,l4b58h
	dec b
	ld a,b
	cp 000h
	jr nz,l4b50h
	ld b,004h
l4b50h:
	push bc
	call sub_4b99h
	pop bc
	jp l4b8fh
l4b58h:
	ld a,(0ed14h)
	and 002h
	jr z,l4b75h
	inc c
	ld a,c
	cp 010h
	jr nz,l4b67h
	ld c,001h
l4b67h:
	push bc
	ld hl,0f3e9h
	inc l
	inc l
	ld (hl),c
	call 00062h
	pop bc
	jp l4b8fh
l4b75h:
	ld a,(0ed15h)
	and 002h
	jr z,l4b8fh
	dec c
	ld a,c
	cp 000h
	jr nz,l4b84h
	ld c,00fh
l4b84h:
	push bc
	ld hl,0f3e9h
	inc l
	inc l
	ld (hl),c
	call 00062h
	pop bc
l4b8fh:
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jp l4b25h
sub_4b99h:
	push bc
	ld a,b
	cp 001h
	jr nz,l4ba5h
	ld hl,l6b5ch
	jp l4bbch
l4ba5h:
	cp 002h
	jr nz,l4bafh
	ld hl,l6f16h
	jp l4bbch
l4bafh:
	cp 003h
	jr nz,l4bb9h
	ld hl,l72beh
	jp l4bbch
l4bb9h:
	ld hl,l7764h
l4bbch:
	call sub_5fefh
	pop bc
	ret
sub_4bc1h:
	call sub_622ch
	call 00041h
	call sub_4848h
	ld hl,00104h
	call sub_6229h
	ld hl,l82dfh
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,l82f2h
	call sub_60f3h
	ld hl,l7f0ch
	call sub_60f3h
	ld hl,l7f3eh
	call sub_60f3h
	call 00044h
l4bf1h:
	call sub_40c8h
	ld a,(0ed18h)
	and 002h
	jp nz,l4c05h
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l4bf1h
l4c05h:
	ld a,001h
	ld (0ec74h),a
	ld bc,00f01h
	ld de,00100h
	call sub_5e0ch
	ld hl,00800h
	ld bc,00300h
	xor a
	call 00056h
	ld bc,00101h
	push bc
	call sub_4c98h
	pop bc
l4c25h:
	push bc
	call sub_40c8h
	pop bc
	ld a,(0ed17h)
	and 002h
	jp z,l4c42h
	inc b
	ld a,b
	cp 008h
	jp nz,l4c3bh
	ld b,001h
l4c3bh:
	push bc
	call sub_4c98h
	pop bc
	jr l4c58h
l4c42h:
	ld a,(0ed16h)
	and 002h
	jp z,l4c58h
	dec b
	ld a,b
	cp 000h
	jp nz,l4c53h
	ld b,007h
l4c53h:
	push bc
	call sub_4c98h
	pop bc
l4c58h:
	ld a,(0ed14h)
	and 002h
	jr z,l4c74h
	inc c
	ld a,c
	cp 010h
	jr nz,l4c67h
	ld c,001h
l4c67h:
	push bc
	ld hl,0f3e9h
	inc l
	inc l
	ld (hl),c
	call 00062h
	pop bc
	jr l4c8eh
l4c74h:
	ld a,(0ed15h)
	and 002h
	jr z,l4c8eh
	dec c
	ld a,c
	cp 000h
	jr nz,l4c83h
	ld c,00fh
l4c83h:
	push bc
	ld hl,0f3e9h
	inc l
	inc l
	ld (hl),c
	call 00062h
	pop bc
l4c8eh:
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jp l4c25h
sub_4c98h:
	ld de,00008h
	xor a
	ld hl,l7e83h
l4c9fh:
	inc a
	cp b
	jr z,l4ca6h
	add hl,de
	jr l4c9fh
l4ca6h:
	ld de,00000h
	ld bc,00008h
	call 0005ch
	ret
sub_4cb0h:
	call sub_622ch
	call 00041h
	call sub_4848h
	ld hl,00104h
	call sub_6229h
	ld hl,l8359h
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,l8378h
	call sub_60f3h
	ld hl,l7f0ch
	call sub_60f3h
	ld hl,l7f3eh
	call sub_60f3h
	call 00044h
l4ce0h:
	call sub_40c8h
	ld a,(0ed18h)
	and 002h
	jp nz,l4cf4h
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l4ce0h
l4cf4h:
	ld a,001h
	ld (0ec74h),a
	ld bc,00f01h
	ld de,00100h
	call sub_5df3h
	call sub_6085h
	call sub_606dh
	ld b,000h
	ld hl,l7dbfh
	call sub_60a0h
	call sub_4d57h
	call sub_4d85h
	ld b,000h
l4d18h:
	push bc
	call sub_40c8h
	ld a,(0ed14h)
	and 002h
	jr z,l4d29h
	call sub_4d57h
	call sub_4d85h
l4d29h:
	pop bc
	ld a,b
	cp 000h
	jr nz,l4d3ah
	ld a,(0ed18h)
	and 002h
	jr z,l4d4dh
	ld b,001h
	jr l4d4dh
l4d3ah:
	push bc
	call sub_4da3h
	call sub_6094h
	pop bc
	ld a,(0ed18h)
	and 002h
	jr z,l4d4dh
	ld b,000h
	jr l4d4dh
l4d4dh:
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jp l4d18h
sub_4d57h:
	xor a
	ld de,01803h
	ld bc,00002h
l4d5eh:
	push af
	push bc
	push de
	call sub_60c5h
	pop de
	pop bc
	ld a,d
	add a,040h
	ld d,a
	jr nc,l4d72h
	ld d,018h
	ld a,e
	add a,018h
	ld e,a
l4d72h:
	inc c
	ld a,c
	cp 010h
	jr nz,l4d7ah
	ld c,002h
l4d7ah:
	pop af
	inc a
	cp 020h
	jp nz,l4d5eh
	call sub_6094h
	ret
sub_4d85h:
	ld hl,0e474h
	ld b,000h
l4d8ah:
	push bc
	push hl
	call sub_5d86h
	pop hl
	pop bc
	add a,080h
	jr nc,l4d99h
	ld (hl),001h
	jr l4d9bh
l4d99h:
	ld (hl),000h
l4d9bh:
	inc hl
	inc b
	ld a,b
	cp 040h
	jr nz,l4d8ah
	ret
sub_4da3h:
	xor a
	ld bc,0e474h
	ld de,0e3e5h
l4daah:
	push af
	ld a,(bc)
	or a
	jr z,l4db9h
	ld a,(de)
	dec a
	ld (de),a
	or a
	jr nz,l4dc3h
	xor a
	ld (bc),a
	jr l4dc3h
l4db9h:
	ld a,(de)
	inc a
	ld (de),a
	cp 0afh
	jr nz,l4dc3h
	ld a,001h
	ld (bc),a
l4dc3h:
	inc bc
	inc de
	ld a,(bc)
	or a
	jr z,l4dd3h
	ld a,(de)
	dec a
	ld (de),a
	or a
	jr nz,l4dddh
	xor a
	ld (bc),a
	jr l4dddh
l4dd3h:
	ld a,(de)
	inc a
	ld (de),a
	cp 0efh
	jr nz,l4dddh
	ld a,001h
	ld (bc),a
l4dddh:
	inc bc
	inc de
	inc de
	inc de
	pop af
	inc a
	cp 020h
	jp nz,l4daah
	ret
sub_4de9h:
	call sub_622ch
	call 00041h
	call sub_4848h
	ld hl,00104h
	call sub_6229h
	ld hl,l83dbh
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,l83eeh
	call sub_60f3h
	ld hl,l7f3eh
	call sub_60f3h
	call 00044h
l4e13h:
	call sub_40c8h
	ld a,(0ed18h)
	and 002h
	jp nz,l4e27h
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l4e13h
l4e27h:
	call 00041h
	call sub_622ch
	ld hl,0060bh
	call sub_6229h
	ld hl,l84c9h
	call sub_60f3h
	call 00044h
l4e3ch:
	call sub_40c8h
	ld a,(0e3d8h)
	and 0ffh
	jp z,l4e50h
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l4e3ch
l4e50h:
	call 00041h
	call sub_622ch
	ld hl,l84e9h
	call sub_60f3h
	call 00044h
l4e5fh:
	call sub_40c8h
	call sub_4e87h
	call sub_4e9ch
	ld a,(0e3deh)
	and 002h
	jr nz,l4e83h
	ld a,(0e3b0h)
	and 001h
	jr z,l4e7dh
	ld a,(0e3bah)
	and 002h
	jr nz,l4e83h
l4e7dh:
	call sub_5ce7h
	halt
	jr l4e5fh
l4e83h:
	call sub_5cfah
	ret
sub_4e87h:
	ld a,(0e3d8h)
	and 001h
	jr nz,l4e95h
	ld bc,00f04h
	call sub_6230h
	ret
l4e95h:
	ld bc,0040eh
	call sub_6230h
	ret
sub_4e9ch:
	ld hl,0e380h
	ld de,00000h
l4ea2h:
	ld c,(hl)
	ld a,c
	and 002h
	call nz,sub_4eb7h
	ld a,c
	and 004h
	call nz,sub_4ecah
	inc hl
	inc e
	ld a,e
	cp 058h
	jr nz,l4ea2h
	ret
sub_4eb7h:
	push hl
	push de
	push bc
	call sub_4eddh
	ld hl,l8504h
	call sub_60f3h
	call sub_5cb4h
	pop bc
	pop de
	pop hl
	ret
sub_4ecah:
	push hl
	push de
	push bc
	call sub_4eddh
	ld hl,l8510h
	call sub_60f3h
	call sub_5ccdh
	pop bc
	pop de
	pop hl
	ret
sub_4eddh:
	ld a,007h
	sub e
	jr c,l4ee7h
	ld hl,l8daeh
	jr l4efch
l4ee7h:
	ld a,02fh
	sub e
	jr nc,l4ef5h
	ld a,e
	sub 030h
	ld e,a
	ld hl,l8e06h
	jr l4efch
l4ef5h:
	ld a,e
	sub 008h
	ld e,a
	ld hl,(0ed1eh)
l4efch:
	add hl,de
	ld a,(hl)
	jp 000a2h
sub_4f01h:
	call sub_622ch
	call 00041h
	call sub_4848h
	ld hl,00104h
	call sub_6229h
	ld hl,l851ah
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,l852eh
	call sub_60f3h
	ld hl,l7f3eh
	call sub_60f3h
	call 00044h
l4f2bh:
	call sub_40c8h
	ld a,(0ed18h)
	and 002h
	jp nz,l4f3fh
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l4f2bh
l4f3fh:
	ld a,001h
	ld (0ec74h),a
sub_4f44h:
	ld bc,00f01h
	ld de,00100h
	call sub_5df3h
	ld hl,07b6fh
	call sub_5fefh
	call 00041h
	call sub_6085h
	call sub_606dh
	ld b,000h
	ld hl,l7de1h
	call sub_60a0h
	xor a
	ld de,l403fh
	ld bc,00001h
	call sub_60c5h
	ld a,001h
	ld de,05857h
	ld bc,00101h
	call sub_60c5h
	ld a,002h
	ld de,l406fh
	ld bc,00201h
	call sub_60c5h
	ld a,003h
	ld de,02857h
	ld bc,00301h
	call sub_60c5h
	ld a,004h
	ld de,0308fh
	ld bc,00401h
	call sub_60c5h
	ld a,005h
	ld de,0508fh
	ld bc,00401h
	call sub_60c5h
	ld a,006h
	ld de,lb03fh
	ld bc,00001h
	call sub_60c5h
	ld a,007h
	ld de,0c857h
	ld bc,00101h
	call sub_60c5h
	ld a,008h
	ld de,lb06fh
	ld bc,00201h
	call sub_60c5h
	ld a,009h
	ld de,l9857h
	ld bc,00301h
	call sub_60c5h
	ld a,00ah
	ld de,la08fh
	ld bc,00401h
	call sub_60c5h
	ld a,00bh
	ld de,0c08fh
	ld bc,00401h
	call sub_60c5h
	call sub_6094h
	call 00044h
l4fedh:
	call sub_40c8h
	ld a,(0e3bah)
	and 002h
	ret nz
	ld a,(0e3d9h)
	and 001h
	jr z,l5003h
	ld a,(0e3ddh)
	and 002h
	ret nz
l5003h:
	ld hl,0e3e5h
	ld b,004h
	ld a,(0e3d9h)
	and 001h
	jp z,l5012h
	ld b,00ah
l5012h:
	call sub_60edh
	ld hl,0e3e9h
	ld b,004h
	ld a,(0e3dch)
	and 001h
	jp z,l5024h
	ld b,00ah
l5024h:
	call sub_60edh
	ld hl,0e3edh
	ld b,004h
	ld a,(0e3dah)
	and 001h
	jp z,l5036h
	ld b,00ah
l5036h:
	call sub_60edh
	ld hl,0e3f1h
	ld b,004h
	ld a,(0e3dbh)
	and 001h
	jp z,l5048h
	ld b,00ah
l5048h:
	call sub_60edh
	ld hl,0e3f5h
	ld b,004h
	ld a,(0e3ddh)
	and 001h
	jp z,l505ah
	ld b,00ah
l505ah:
	call sub_60edh
	ld hl,0e3f9h
	ld b,004h
	ld a,(0e3deh)
	and 001h
	jp z,l506ch
	ld b,00ah
l506ch:
	call sub_60edh
	ld hl,0e3fdh
	ld b,006h
	ld a,(0e3dfh)
	and 001h
	jp z,l507eh
	ld b,00ch
l507eh:
	call sub_60edh
	ld hl,0e401h
	ld b,006h
	ld a,(0e3e2h)
	and 001h
	jp z,l5090h
	ld b,00ch
l5090h:
	call sub_60edh
	ld hl,0e405h
	ld b,006h
	ld a,(0e3e0h)
	and 001h
	jp z,l50a2h
	ld b,00ch
l50a2h:
	call sub_60edh
	ld hl,0e409h
	ld b,006h
	ld a,(0e3e1h)
	and 001h
	jp z,l50b4h
	ld b,00ch
l50b4h:
	call sub_60edh
	ld hl,0e40dh
	ld b,006h
	ld a,(0e3e3h)
	and 001h
	jp z,l50c6h
	ld b,00ch
l50c6h:
	call sub_60edh
	ld hl,0e411h
	ld b,006h
	ld a,(0e3e4h)
	and 001h
	jp z,l50d8h
	ld b,00ch
l50d8h:
	call sub_60edh
	call sub_6094h
	halt
	jp l4fedh
sub_50e2h:
	call sub_622ch
	call 00041h
	call sub_4848h
	ld hl,00104h
	call sub_6229h
	ld hl,l85f9h
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,l8607h
	call sub_60f3h
	ld hl,l7f0ch
	call sub_60f3h
	ld hl,l7f3eh
	call sub_60f3h
	call 00044h
l5112h:
	call sub_40c8h
	ld a,(0ed18h)
	and 002h
	jp nz,l5126h
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l5112h
l5126h:
	call sub_5e43h
	di
	ld a,008h
	out (0a0h),a
	ld a,00fh
	out (0a1h),a
	ld a,009h
	out (0a0h),a
	ld a,00fh
	out (0a1h),a
	ld a,00ah
	out (0a0h),a
	ld a,00fh
	out (0a1h),a
	ei
	xor a
	ld (0e475h),a
	ld (0e476h),a
	ld (0e477h),a
	ld a,00fh
	ld (0e478h),a
	ld (0e479h),a
	ld (0e47ah),a
	xor a
	ld (0e47bh),a
	ld a,008h
	ld (0e47ch),a
	di
	ld a,006h
	out (0a0h),a
	ld a,(0e47ch)
	sla a
	ld b,a
	ld a,01fh
	sub b
	out (0a1h),a
	ei
	ld a,001h
	ld (0e474h),a
	ld a,003h
	ld (0e47dh),a
	ld (0e47fh),a
	ld a,(0e474h)
	sla a
	add a,004h
	ld (0e47eh),a
	ld (0e480h),a
	call sub_622ch
	call 00041h
	ld hl,l8666h
	call sub_60f3h
	call sub_521fh
	call 00044h
l519eh:
	call sub_40c8h
	ld a,(0ed19h)
	and 002h
	jp nz,l521bh
	ld a,(0ed14h)
	and 002h
	jr z,l51bch
	ld a,(0e474h)
	dec a
	cp 000h
	jr nz,l51ceh
	ld a,001h
	jr l51ceh
l51bch:
	ld a,(0ed15h)
	and 002h
	jr z,l51d4h
	ld a,(0e474h)
	inc a
	cp 009h
	jp nz,l51ceh
	ld a,008h
l51ceh:
	ld (0e474h),a
	call sub_521fh
l51d4h:
	xor a
	ld b,a
	ld a,(0ed17h)
	and 002h
	jr z,l51e2h
	ld a,001h
	ld b,a
	jr l51ech
l51e2h:
	ld a,(0ed16h)
	and 002h
	jr z,l5217h
	ld a,002h
	ld b,a
l51ech:
	ld a,(0e474h)
	cp 001h
	jp z,l5262h
	cp 002h
	jp z,l527fh
	cp 003h
	jp z,l529ch
	cp 004h
	jp z,l52b9h
	cp 005h
	jp z,l52d0h
	cp 006h
	jp z,l52e7h
	cp 007h
	jp z,l52feh
	cp 008h
	jp z,l5304h
l5217h:
	halt
	jp l519eh
l521bh:
	call sub_5e43h
	ret
sub_521fh:
	ld a,(0e47fh)
	ld h,a
	ld a,(0e480h)
	ld l,a
	call sub_6229h
	ld hl,l8108h
	call sub_60f3h
	ld a,(0e47dh)
	ld h,a
	ld a,(0e474h)
	ld b,a
	sla a
	add a,004h
	ld c,a
	ld a,b
	sub 007h
	jp c,l5247h
	ld a,c
	add a,002h
	ld c,a
l5247h:
	ld a,c
	ld l,a
	ld (0e47eh),a
	call sub_6229h
	ld hl,l8106h
	call sub_60f3h
	ld a,(0e47dh)
	ld (0e47fh),a
	ld a,(0e47eh)
	ld (0e480h),a
	ret
l5262h:
	ld a,001h
	ld (0e481h),a
	ld a,(0e475h)
	ld (0e483h),a
	ld a,(0e478h)
	ld (0e482h),a
	call sub_530ah
	ld a,(0e483h)
	ld (0e475h),a
	jp l5217h
l527fh:
	ld a,002h
	ld (0e481h),a
	ld a,(0e476h)
	ld (0e483h),a
	ld a,(0e479h)
	ld (0e482h),a
	call sub_530ah
	ld a,(0e483h)
	ld (0e476h),a
	jp l5217h
l529ch:
	ld a,003h
	ld (0e481h),a
	ld a,(0e477h)
	ld (0e483h),a
	ld a,(0e47ah)
	ld (0e482h),a
	call sub_530ah
	ld a,(0e483h)
	ld (0e477h),a
	jp l5217h
l52b9h:
	ld a,001h
	ld (0e481h),a
	ld a,(0e478h)
	ld (0e482h),a
	call sub_53abh
	ld a,(0e482h)
	ld (0e478h),a
	jp l5217h
l52d0h:
	ld a,002h
	ld (0e481h),a
	ld a,(0e479h)
	ld (0e482h),a
	call sub_53abh
	ld a,(0e482h)
	ld (0e479h),a
	jp l5217h
l52e7h:
	ld a,003h
	ld (0e481h),a
	ld a,(0e47ah)
	ld (0e482h),a
	call sub_53abh
	ld a,(0e482h)
	ld (0e47ah),a
	jp l5217h
l52feh:
	call sub_5417h
	jp l5217h
l5304h:
	call sub_548fh
	jp l5217h
sub_530ah:
	ld a,b
	cp 001h
	jp nz,l531ch
	ld a,(0e483h)
	cp 003h
	ret z
	inc a
	ld (0e483h),a
	jr l5326h
l531ch:
	ld a,(0e483h)
	cp 000h
	ret z
	dec a
	ld (0e483h),a
l5326h:
	cp 000h
	jr nz,l532fh
	ld bc,00000h
	jr l5344h
l532fh:
	cp 001h
	jr nz,l5338h
	ld bc,00174h
	jr l5344h
l5338h:
	cp 002h
	jr nz,l5341h
	ld bc,000dfh
	jr l5344h
l5341h:
	ld bc,0006fh
l5344h:
	ld a,(0e481h)
	cp 001h
	jr nz,l5353h
	ld de,00100h
	ld hl,00008h
	jr l536ah
l5353h:
	cp 002h
	jr nz,l535fh
	ld de,00302h
	ld hl,00009h
	jr l536ah
l535fh:
	cp 003h
	ret nz
	ld de,00504h
	ld hl,0000ah
	jr l536ah
l536ah:
	di
	ld a,e
	out (0a0h),a
	ld a,c
	out (0a1h),a
	ld a,d
	out (0a0h),a
	ld a,b
	out (0a1h),a
	ld a,l
	out (0a0h),a
	ld a,(0e482h)
	out (0a1h),a
	ei
	ld a,(0e47eh)
	ld l,a
	ld h,00bh
	xor a
	ld b,a
	ld a,(0e483h)
	ld c,a
l538ch:
	push hl
	push bc
	call 000c6h
	pop bc
	pop hl
	ld a,h
	add a,008h
	ld h,a
	ld a,b
	cp c
	jr z,l539fh
	ld a,0c2h
	jr l53a1h
l539fh:
	ld a,0c1h
l53a1h:
	call 000a2h
	inc b
	ld a,004h
	cp b
	jr nz,l538ch
	ret
sub_53abh:
	ld a,b
	cp 001h
	jp nz,l53bdh
	ld a,(0e482h)
	cp 00fh
	ret z
	inc a
	ld (0e482h),a
	jr l53c7h
l53bdh:
	ld a,(0e482h)
	cp 000h
	ret z
	dec a
	ld (0e482h),a
l53c7h:
	ld a,(0e481h)
	cp 001h
	jr nz,l53d3h
	ld de,00008h
	jr l53e2h
l53d3h:
	cp 002h
	jr nz,l53dch
	ld de,00009h
	jr l53e2h
l53dch:
	cp 003h
	ret nz
	ld de,0000ah
l53e2h:
	di
	ld a,e
	out (0a0h),a
	ld a,(0e482h)
	out (0a1h),a
	ei
	ld a,(0e47eh)
	ld l,a
	ld h,011h
	ld a,001h
	ld b,a
	ld a,(0e482h)
	ld c,a
l53f9h:
	push hl
	push bc
	call 000c6h
	pop bc
	pop hl
	ld a,h
	inc a
	ld h,a
	ld a,c
	sub b
	jr nc,l540bh
	ld a,0c2h
	jr l540dh
l540bh:
	ld a,0c1h
l540dh:
	call 000a2h
	inc b
	ld a,010h
	cp b
	jr nz,l53f9h
	ret
sub_5417h:
	ld a,b
	cp 001h
	jp nz,l5429h
	ld a,(0e47bh)
	cp 003h
	ret z
	inc a
	ld (0e47bh),a
	jr l5433h
l5429h:
	ld a,(0e47bh)
	cp 000h
	ret z
	dec a
	ld (0e47bh),a
l5433h:
	ld a,(0e47bh)
	cp 000h
	jr nz,l543fh
	ld de,00038h
	jr l5457h
l543fh:
	cp 001h
	jr nz,l5448h
	ld de,00031h
	jr l5457h
l5448h:
	cp 002h
	jr nz,l5451h
	ld de,0002ah
	jr l5457h
l5451h:
	cp 003h
	ret nz
	ld de,0001ch
l5457h:
	di
	ld a,007h
	out (0a0h),a
	ld a,e
	and 03fh
	or 080h
	out (0a1h),a
	ei
	ld a,(0e47eh)
	ld l,a
	ld h,012h
	xor a
	ld b,a
	ld a,(0e47bh)
	ld c,a
l5470h:
	push hl
	push bc
	call 000c6h
	pop bc
	pop hl
	ld a,h
	add a,006h
	ld h,a
	ld a,b
	cp c
	jr z,l5483h
	ld a,0c2h
	jr l5485h
l5483h:
	ld a,0c1h
l5485h:
	call 000a2h
	inc b
	ld a,004h
	cp b
	jr nz,l5470h
	ret
sub_548fh:
	ld a,b
	cp 001h
	jp nz,l54a1h
	ld a,(0e47ch)
	cp 00fh
	ret z
	inc a
	ld (0e47ch),a
	jr l54abh
l54a1h:
	ld a,(0e47ch)
	cp 000h
	ret z
	dec a
	ld (0e47ch),a
l54abh:
	sla a
	ld b,a
	ld a,01fh
	sub b
	ld c,a
	di
	ld a,006h
	out (0a0h),a
	ld a,c
	out (0a1h),a
	ei
	ld a,(0e47eh)
	ld l,a
	ld h,011h
	ld a,001h
	ld b,a
	ld a,(0e47ch)
	ld c,a
l54c8h:
	push hl
	push bc
	call 000c6h
	pop bc
	pop hl
	ld a,h
	inc a
	ld h,a
	ld a,c
	sub b
	jr nc,l54dah
	ld a,0c2h
	jr l54dch
l54dah:
	ld a,0c1h
l54dch:
	call 000a2h
	inc b
	ld a,010h
	cp b
	jr nz,l54c8h
	ret
sub_54e6h:
	call sub_622ch
	call 00041h
	ld a,(0002dh)
	or a
	jr nz,l54f7h
	ld hl,l8a34h
	jr l5515h
l54f7h:
	cp 001h
	jr nz,l5500h
	ld hl,l8a38h
	jr l5515h
l5500h:
	cp 002h
	jr nz,l5509h
	ld hl,08a3dh
	jr l5515h
l5509h:
	cp 003h
	jr nz,l5512h
	ld hl,l8a43h
	jr l5515h
l5512h:
	ld hl,l8a4bh
l5515h:
	ld (0e4f4h),hl
	ld a,(0fafch)
	and 006h
	jr nz,l5524h
	ld hl,00016h
	jr l5542h
l5524h:
	cp 002h
	jr nz,l552dh
	ld hl,00064h
	jr l5542h
l552dh:
	cp 004h
	jr nz,l5536h
	ld hl,00128h
	jr l5542h
l5536h:
	cp 006h
	jr nz,l553fh
	ld hl,00192h
	jr l5542h
l553fh:
	ld hl,0ffffh
l5542h:
	ld (0e4f8h),hl
	ld a,(0ec75h)
	or a
	jr nz,l555bh
	ld a,(0ec76h)
	or a
	jr z,l5556h
	ld hl,l8a72h
	jr l5570h
l5556h:
	ld hl,l8a65h
	jr l5570h
l555bh:
	cp 001h
	jr nz,l5564h
l555fh:
	ld hl,l8a7bh
	jr l5570h
l5564h:
	cp 002h
	jr nz,l556dh
	ld hl,l8a81h
	jr l5570h
l556dh:
	ld hl,l8a4bh
l5570h:
	ld (0e4fah),hl
	ld a,(0ec76h)
	or a
	jr z,l557eh
	ld hl,00050h
	jr l5581h
l557eh:
	ld hl,00060h
l5581h:
	ld (0e4fch),hl
	ld a,(0ed1dh)
	or a
	jr nz,l558fh
	ld hl,l8a9ch
	jr l55bfh
l558fh:
	cp 001h
	jr nz,l5598h
	ld hl,l8a9fh
	jr l55bfh
l5598h:
	cp 002h
	jr nz,l55a1h
	ld hl,l8aa3h
	jr l55bfh
l55a1h:
	cp 003h
	jr nz,l55aah
	ld hl,l8aa6h
	jr l55bfh
l55aah:
	cp 004h
	jr nz,l55b3h
	ld hl,l8aa9h
	jr l55bfh
l55b3h:
	cp 005h
	jr nz,l55bch
	ld hl,l8aach
	jr l55bfh
l55bch:
	ld hl,l8ab1h
l55bfh:
	ld (0e4f6h),hl
l55c2h:
	ld hl,l8a16h
	call sub_60f3h
sub_55c8h:
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,00205h
	call sub_6229h
	ld hl,l8a2ch
	call sub_60f3h
	ld hl,(0e4f4h)
	call sub_60f3h
	ld hl,01605h
	call sub_6229h
	ld hl,l8a91h
	call sub_60f3h
	ld hl,(0e4f6h)
	call sub_60f3h
	ld hl,00207h
l55f5h:
	call sub_6229h
	ld hl,l8a52h
	call sub_60f3h
	ld hl,(0ec77h)
	ld c,h
	ld d,l
	ld a,(0ec79h)
	and 00fh
	ld b,a
	call sub_60fdh
	ld hl,l8a4fh
	call sub_60f3h
	ld hl,00209h
	call sub_6229h
	ld hl,l8a58h
	call sub_60f3h
	ld b,000h
	ld hl,(0e4f8h)
	ld c,h
	ld d,l
	call sub_60fdh
	ld hl,l8a4fh
	call sub_60f3h
	ld hl,01607h
	call sub_6229h
	ld hl,l8a5fh
	call sub_60f3h
	ld hl,(0e4fah)
	call sub_60f3h
	ld hl,01609h
	call sub_6229h
	ld hl,l8a87h
	call sub_60f3h
	ld b,000h
	ld hl,(0e4fch)
	ld c,h
	ld d,l
	call sub_60fdh
	ld hl,l8a8eh
	call sub_60f3h
	ld a,(0002bh)
	and 080h
	rlc a
	ld b,a
	ld a,(0ec76h)
	xor b
	jr z,l566fh
	ld a,0cfh
	call 000a2h
l566fh:
	ld hl,0020bh
	call sub_6229h
	ld hl,l8ac2h
	call sub_60f3h
	ld hl,0020ch
	ld b,005h
l5680h:
	push hl
	push bc
	call sub_6229h
	ld hl,l8adch
	call sub_60f3h
	pop bc
	pop hl
	inc hl
	inc hl
	djnz l5680h
	ld hl,0020dh
	ld b,004h
l5696h:
	push hl
	push bc
	call sub_6229h
	ld hl,l8af6h
	call sub_60f3h
	pop bc
	pop hl
	inc hl
	inc hl
	djnz l5696h
	ld hl,00215h
	call sub_6229h
	ld hl,08b10h
	call sub_60f3h
	ld hl,0030ch
	push hl
	call sub_6229h
	ld a,053h
	call 000a2h
	pop hl
	inc hl
	inc hl
	ld bc,00400h
l56c5h:
	push hl
	push bc
	call sub_6229h
	pop bc
	push bc
	ld d,c
	ld bc,00000h
	call sub_60fdh
	pop bc
	pop hl
	inc c
	inc hl
	inc hl
	djnz l56c5h
	ld hl,0e474h
	ld (hl),053h
	inc hl
	ld (hl),055h
	inc hl
	ld (hl),042h
	inc hl
	inc hl
	ld (hl),000h
	ld hl,0050ch
	ld bc,00400h
l56efh:
	push hl
	push bc
	call sub_6229h
	pop bc
	ld a,030h
	add a,c
	ld (0e477h),a
	ld hl,0e474h
	push bc
	call sub_60f3h
	pop bc
	pop hl
	inc c
	ld de,00500h
	add hl,de
	djnz l56efh
	ld hl,0190ch
	call sub_6229h
	ld a,045h
	call 000a2h
	ld hl,0190eh
	ld bc,00400h
l571ch:
	push hl
	push bc
	call sub_6229h
	pop bc
	push bc
	ld hl,0ec7ah
	ld b,000h
	add hl,bc
	ld b,04eh
	ld a,(hl)
	add a,b
	call 000a2h
	pop bc
	pop hl
	inc c
	inc hl
	inc hl
	djnz l571ch
	ld hl,0050eh
	ld (0e574h),hl
	call sub_6229h
	ld hl,0ec7eh
	ld b,004h
l5745h:
	push bc
	ld b,004h
l5748h:
	push bc
	push hl
	call sub_5776h
	ld hl,(0e574h)
	ld de,00500h
	add hl,de
	ld (0e574h),hl
	call sub_6229h
	pop hl
	pop bc
	inc hl
	djnz l5748h
	push hl
	ld hl,(0e574h)
	ld h,005h
	ld de,00002h
	add hl,de
	ld (0e574h),hl
	call sub_6229h
	pop hl
	pop bc
	djnz l5745h
	jp l579ch
sub_5776h:
	ld a,(hl)
	ld d,a
	ld b,004h
	ld c,001h
	ld e,030h
l577eh:
	ld a,d
	and c
	jr z,l578dh
	bit 7,(hl)
	jr nz,l5789h
	ld a,e
	jr l578fh
l5789h:
	ld a,0c2h
	jr l578fh
l578dh:
	ld a,020h
l578fh:
	push bc
	push de
	call 000a2h
	pop de
	pop bc
	sla c
	inc e
	djnz l577eh
	ret
l579ch:
	ld hl,01d0ch
	call sub_6229h
	ld hl,l8ab8h
	call sub_60f3h
	ld hl,01d12h
	call sub_6229h
	ld hl,l8abdh
	call sub_60f3h
	ld hl,00117h
	call sub_6229h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,l8b2ah
	call sub_60f3h
	call 00044h
l57c9h:
	call sub_40c8h
	ld a,(0ed18h)
	and 002h
	ret nz
	ld a,(0ed19h)
	and 002h
	ret nz
	call sub_57deh
	halt
	jr l57c9h
sub_57deh:
	ld hl,01d0eh
	call sub_6229h
	ld hl,0090ah
	call sub_5823h
	ld a,02fh
	call 000a2h
	ld hl,00708h
	call sub_5823h
	ld a,02fh
	call 000a2h
	ld hl,00b0ch
	call sub_5823h
	ld hl,01d14h
	call sub_6229h
	ld hl,00405h
	call sub_5823h
	ld a,03ah
	call 000a2h
	ld hl,00203h
	call sub_5823h
	ld a,03ah
	call 000a2h
	ld hl,00001h
	call sub_5823h
	ret
sub_5823h:
	ld a,(0002dh)
	or a
	jp nz,l5833h
	ld bc,00000h
	ld d,0ffh
	call sub_60fdh
	ret
l5833h:
	ld c,h
	call sub_5862h
	and 00fh
	ld d,a
	ld c,l
	call sub_5862h
	and 00fh
	ld e,a
	call sub_5851h
	ld a,d
	or e
	ld d,a
	ld a,h
	cp 00bh
l584ah:
	call z,sub_5870h
	call sub_60fdh
	ret
sub_5851h:
	ld bc,00000h
	sla e
	sla e
	sla e
	sla e
	xor a
	or e
	ret nz
	ld b,010h
	ret
sub_5862h:
	push bc
	push de
	push hl
	ld ix,001f5h
	call 0015fh
	pop hl
	pop de
	pop bc
	ret
sub_5870h:
	ld hl,0e474h
	ld (hl),080h
	inc hl
	ld (hl),019h
	inc hl
	ld (hl),000h
	ld hl,0e477h
	ld (hl),d
	inc hl
	ld (hl),000h
	inc hl
	ld (hl),000h
	ld de,0e474h
	ld hl,0e477h
	call sub_5d9fh
	ld hl,0e474h
	ld d,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ret
sub_5897h:
	call sub_622ch
	call 00041h
	ld hl,08c76h
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,00104h
	call sub_6229h
	ld hl,l8c84h
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld a,0ffh
	ld (0e678h),a
	ld hl,00906h
	call sub_58edh
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,00118h
	call sub_6229h
	ld hl,l8b2ah
	call sub_60f3h
	call 00044h
l58dbh:
	call sub_40c8h
	ld a,(0ed18h)
	and 002h
	ret nz
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l58dbh
sub_58edh:
	ld (0e674h),hl
	ld hl,l8cadh
	ld de,0e68bh
	ld bc,00007h
	ldir
	xor a
	ld (0e676h),a
	ld (0e679h),a
	ld bc,00400h
l5905h:
	push bc
	ld a,c
	ld (0ed0eh),a
	ld hl,0e68dh
	ld a,c
	add a,030h
	ld (hl),a
	ld bc,00400h
l5914h:
	push bc
	ld a,(0ed0eh)
	ld e,a
	ld a,c
	ld (0ed0fh),a
	sla a
	sla a
	or e
	ld (0ed13h),a
	ld hl,0ec7ah
	ld d,000h
	ld a,(0ed0eh)
	ld e,a
	add hl,de
	ld a,(hl)
	or a
	jr z,l593bh
	ld a,(0ed13h)
	set 7,a
	ld (0ed13h),a
l593bh:
	xor a
	ld (0e68ah),a
	exx
	ld a,(0e676h)
	ld e,a
	ld d,000h
	ld hl,0ec7eh
	add hl,de
	ld a,(hl)
	ld (0e677h),a
	exx
	ld a,(0e678h)
	ld e,a
	ld a,(0e677h)
	or a
	or e
	jp z,l5a13h
	ld a,0ffh
	ld (0e68ah),a
	ld hl,0e68fh
	ld a,c
	add a,030h
	ld (hl),a
	ld hl,0e68bh
	call sub_60f3h
	ld bc,00400h
l5970h:
	push bc
	ld a,c
	ld (0ed10h),a
	ld hl,(0e674h)
	call sub_6229h
	call sub_447ah
	ld b,(hl)
	inc hl
	ld c,(hl)
	ld a,b
	or c
	jr z,l5994h
	call sub_6167h
	ld a,04bh
	call 000a2h
	ld a,042h
	call 000a2h
	jr l599fh
l5994h:
	push bc
	ld b,006h
l5997h:
	ld a,0c3h
	call 000a2h
	djnz l5997h
	pop bc
l599fh:
	pop bc
	inc c
	ld hl,(0e674h)
	ld de,00800h
	add hl,de
	ld (0e674h),hl
	ld a,(0e677h)
	bit 7,a
	jr nz,l59b8h
	dec b
	jp nz,l5970h
	jr l5a00h
l59b8h:
	exx
	ld hl,(0e674h)
	call sub_6229h
	ld hl,l8cb4h
	call sub_60f3h
	ld hl,(0e674h)
	ld de,00800h
	add hl,de
	ld (0e674h),hl
	call sub_6229h
	ld a,049h
	call 000a2h
	ld a,04eh
	call 000a2h
	ld a,020h
	call 000a2h
	call sub_447ah
	inc hl
	inc hl
	ld b,(hl)
	inc hl
	ld c,(hl)
	call sub_6167h
	ld hl,(0e674h)
	ld de,00800h
	add hl,de
	ld (0e674h),hl
	call sub_6229h
	ld hl,l8cbbh
	call sub_60f3h
	exx
l5a00h:
	ld a,00dh
	call 000a2h
	ld a,00ah
	call 000a2h
	ld hl,(0e674h)
	ld h,009h
	inc l
	ld (0e674h),hl
l5a13h:
	ld a,(0e676h)
	inc a
	ld (0e676h),a
	pop bc
	ld a,(0e68ah)
	or a
	jr z,l5a36h
	ld a,(0e679h)
	ld d,000h
	ld e,a
	ld hl,0e67ah
	add hl,de
	ld a,(0ed13h)
	ld (hl),a
	ld a,(0e679h)
	inc a
	ld (0e679h),a
l5a36h:
	inc c
	dec b
	jp nz,l5914h
	pop bc
	inc c
	dec b
	jp nz,l5905h
	ret
sub_5a42h:
	call sub_622ch
	call 00041h
	call sub_4848h
	ld hl,00104h
	call sub_6229h
	ld hl,l8b4bh
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,l8b63h
	call sub_60f3h
	ld hl,l7f0ch
	call sub_60f3h
	ld hl,l7f3eh
	call sub_60f3h
	call 00044h
l5a72h:
	call sub_40c8h
	ld a,(0ed18h)
	and 002h
	jp nz,l5a86h
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l5a72h
l5a86h:
	call sub_622ch
	xor a
	ld (0e477h),a
	ld bc,0010fh
	call sub_6230h
	ld hl,00f0bh
	call sub_6229h
	ld hl,l8bd6h
	call sub_60f3h
	ld hl,l8bd0h
	call sub_60f3h
	ld a,001h
	ld (0e474h),a
l5aaah:
	call sub_40c8h
	ld a,(0ed17h)
	and 002h
	jp nz,l5ae8h
	ld a,(0ed16h)
	and 002h
	jp nz,l5af4h
	ld a,(0e474h)
	cp 006h
	jp z,l5ba7h
	ld a,(0e477h)
	cp 078h
	jr z,l5ad7h
	inc a
	ld (0e477h),a
	cp 078h
	jr nz,l5ad7h
	call sub_622ch
l5ad7h:
	call sub_5ce7h
	ld a,(0ed19h)
	and 002h
	jr nz,l5ae4h
	halt
	jr l5aaah
l5ae4h:
	call sub_5cfah
	ret
l5ae8h:
	ld a,(0e474h)
	inc a
	cp 007h
	jr nz,l5b00h
	ld a,001h
	jr l5b00h
l5af4h:
	ld a,(0e474h)
	dec a
	cp 000h
	jr nz,l5b00h
	ld a,006h
	jr l5b00h
l5b00h:
	ld (0e474h),a
	push af
	call sub_622ch
	xor a
	ld (0e477h),a
	pop af
	cp 001h
	jr nz,l5b21h
	ld hl,00f0bh
	call sub_6229h
	ld hl,l8bd6h
	call sub_60f3h
	ld bc,0010fh
	jr l5b9bh
l5b21h:
	cp 002h
	jr nz,l5b36h
	ld hl,00f0bh
	call sub_6229h
	ld hl,l8bdch
	call sub_60f3h
	ld bc,00f01h
	jr l5b9bh
l5b36h:
	cp 003h
	jr nz,l5b4bh
	ld hl,0100bh
	call sub_6229h
	ld hl,l8be2h
	call sub_60f3h
	ld bc,00109h
	jr l5b9bh
l5b4bh:
	cp 004h
	jr nz,l5b60h
	ld hl,00f0bh
	call sub_6229h
	ld hl,l8be6h
	call sub_60f3h
	ld bc,00103h
	jr l5b9bh
l5b60h:
	cp 005h
	jr nz,l5b75h
	ld hl,00f0bh
	call sub_6229h
	ld hl,l8bech
	call sub_60f3h
	ld bc,00105h
	jr l5b9bh
l5b75h:
	ld hl,00e0bh
	call sub_6229h
	ld hl,l8bf2h
	call sub_60f3h
	ld hl,l8bd0h
	call sub_60f3h
	ld bc,00102h
	ld a,002h
	ld (0e475h),a
	ld a,008h
	ld (0e476h),a
	xor a
	ld (0e477h),a
	jp l5ad7h
l5b9bh:
	call sub_6230h
	ld hl,l8bd0h
	call sub_60f3h
	jp l5ad7h
l5ba7h:
	ld a,(0ed14h)
	and 002h
	call nz,sub_5be1h
	ld a,(0ed15h)
	and 002h
	call nz,sub_5befh
	ld a,(0e476h)
	ld b,a
	ld a,(0e477h)
	inc a
	ld (0e477h),a
	sub b
	jp c,l5ad7h
	xor a
	ld (0e477h),a
	ld a,(0e475h)
	ld b,001h
	ld c,a
	inc a
	cp 010h
	jp nz,l5bd8h
	ld a,002h
l5bd8h:
	ld (0e475h),a
	call sub_6230h
	jp l5ad7h
sub_5be1h:
	ld a,(0e476h)
	cp 001h
	ret z
	srl a
	ld (0e476h),a
	jp sub_5cb4h
sub_5befh:
	ld a,(0e476h)
	cp 040h
	ret z
	sla a
	ld (0e476h),a
	jp sub_5ccdh
sub_5bfdh:
	call sub_622ch
	call 00041h
	call sub_4848h
	ld hl,00104h
	call sub_6229h
	ld hl,l8bfah
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,l8c0fh
	call sub_60f3h
	ld hl,l7f0ch
	call sub_60f3h
	ld hl,l7f3eh
	call sub_60f3h
	call 00044h
l5c2dh:
	call sub_40c8h
	ld a,(0ed18h)
	and 002h
	jp nz,l5c41h
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l5c2dh
l5c41h:
	ld a,001h
	ld (0ec74h),a
	ld bc,00f04h
	ld de,00400h
	call sub_5df3h
	ld bc,l9f03h
	call 00047h
	ld bc,00004h
	call 00047h
	call 00041h
	ld a,0f4h
	ld bc,01800h
	ld hl,02000h
	call 00056h
	ld bc,00331h
	ld hl,01800h
l5c6fh:
	push bc
	push hl
	ld a,c
	ld bc,00100h
	call 00056h
	pop hl
	pop bc
	inc c
	ld de,00100h
	add hl,de
	djnz l5c6fh
	ld bc,00800h
	ld de,00000h
	ld hl,(00004h)
	call 0005ch
	ld b,003h
	ld de,01800h
	ld hl,l8c56h
l5c95h:
	push bc
	push de
	push hl
	ld bc,00020h
	call 0005ch
	pop hl
	pop de
	pop bc
	inc d
	djnz l5c95h
	call 00044h
l5ca7h:
	call sub_40c8h
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jp l5ca7h
sub_5cb4h:
	di
	xor a
	out (0a0h),a
	ld a,0bah
	out (0a1h),a
	ld a,001h
	out (0a0h),a
	xor a
	out (0a1h),a
	ld a,008h
	out (0a0h),a
	ld a,00fh
	out (0a1h),a
	ei
	ret
sub_5ccdh:
	di
	xor a
	out (0a0h),a
	ld a,018h
	out (0a1h),a
	ld a,001h
	out (0a0h),a
	ld a,001h
	out (0a1h),a
	ld a,008h
	out (0a0h),a
	ld a,00fh
	out (0a1h),a
	ei
	ret
sub_5ce7h:
	di
	ld a,008h
	out (0a0h),a
	in a,(0a2h)
	ei
	or a
	ret z
	di
	dec a
	out (0a1h),a
	ei
	or a
	ret nz
	jr sub_5cfah
sub_5cfah:
	di
	xor a
	out (0a0h),a
	xor a
	out (0a1h),a
	ld a,001h
	out (0a0h),a
	xor a
	out (0a1h),a
	ld a,008h
	out (0a0h),a
	xor a
	out (0a1h),a
	ei
	ret
sub_5d11h:
	ld b,(hl)
	inc hl
	ld c,(hl)
	inc hl
	push hl
	ld hl,0e46eh
	ld (hl),b
	inc hl
	ld (hl),c
	pop hl
	ld b,(hl)
	inc hl
	ld c,(hl)
	inc hl
	push hl
	ld hl,0e470h
	ld (hl),b
	inc hl
	ld (hl),c
	pop hl
	push hl
	push de
	ld d,h
	ld e,l
	ld hl,0e472h
	ld (hl),d
	inc hl
	ld (hl),e
	pop de
	pop hl
l5d35h:
	ld a,(hl)
	and 0c0h
	cp 0c0h
	jr z,l5d48h
	ld a,(hl)
	ld (de),a
	inc hl
	inc de
	dec bc
	ld a,b
	or c
	jr nz,l5d35h
	jp l5d5fh
l5d48h:
	push bc
	ld a,(hl)
	and 03fh
	ld b,a
	inc hl
	ld a,(hl)
	ld c,a
	inc hl
l5d51h:
	ld a,c
	ld (de),a
	inc de
	dec b
	jr nz,l5d51h
	pop bc
	dec bc
	dec bc
	ld a,b
	or c
	jp nz,l5d35h
l5d5fh:
	ret
sub_5d60h:
	ld b,078h
l5d62h:
	ei
	nop
	nop
	halt
	nop
	nop
	djnz l5d62h
	ret
sub_5d6bh:
	ld hl,l5d7dh
	ld (0fd9bh),hl
	ld a,0c3h
	ld (0fd9ah),a
	ret
	ld a,0c9h
	ld (0fd9ah),a
	ret
l5d7dh:
	call 0013eh
	bit 7,a
	ret nz
	ei
	halt
	ret
sub_5d86h:
	ld a,(0e465h)
	ld b,a
l5d8ah:
	add a,001h
	rlca
	add a,00bh
	rlca
	add a,01fh
	rlca
	add a,029h
	cp b
	jr nz,l5d9bh
	inc a
	jr l5d8ah
l5d9bh:
	ld (0e465h),a
	ret
sub_5d9fh:
	ld b,003h
	or a
l5da2h:
	ld a,(de)
	adc a,(hl)
	daa
	ld (de),a
	inc de
	inc hl
	djnz l5da2h
	ret
sub_5dabh:
	ld b,003h
	or a
l5daeh:
	ld a,(de)
	sbc a,(hl)
	daa
	ld (de),a
	inc de
	inc hl
	djnz l5daeh
	ret
sub_5db7h:
	push bc
	push de
	xor a
	call 000c3h
	pop de
	pop bc
	ld a,e
	ld (0f3aeh),a
	ld hl,0f3e9h
	ld (hl),b
	inc l
	ld (hl),c
	inc l
	ld (hl),001h
	call 00062h
	call sub_5e2bh
	jp 0006ch
sub_5dd5h:
	push bc
	push de
	xor a
	call 000c3h
	pop de
	pop bc
	ld a,e
	ld (0f3afh),a
	ld hl,0f3e9h
	ld (hl),b
	inc l
	ld (hl),c
	inc l
	ld (hl),001h
	call 00062h
	call sub_5e2bh
	jp 0006fh
sub_5df3h:
	push bc
	push de
	xor a
	call 000c3h
	pop de
	pop bc
	ld hl,0f3e9h
	ld (hl),b
	inc l
	ld (hl),c
	inc l
	ld (hl),d
	call 00062h
	call sub_5e2bh
	jp 00072h
sub_5e0ch:
	push bc
	push de
	xor a
	call 000c3h
	pop de
	pop bc
	ld hl,0f3e9h
	ld (hl),b
	inc l
	ld (hl),c
	inc l
	ld (hl),d
	call 00062h
	call sub_5e2bh
	jp 00075h
	jp 000cfh
sub_5e28h:
	jp 000cch
sub_5e2bh:
	di
	ld bc,00200h
	call 00047h
	ld bc,0e001h
	call 00047h
	ei
	ret
	di
	ld a,b
	out (0a0h),a
	ld a,c
	out (0a1h),a
	ei
	ret
sub_5e43h:
	di
	ld a,007h
	out (0a0h),a
	ld a,038h
	and 03fh
	or 080h
	out (0a1h),a
	xor a
	out (0a0h),a
	xor a
	out (0a1h),a
	ld a,001h
	out (0a0h),a
	xor a
	out (0a1h),a
	ld a,008h
	out (0a0h),a
	xor a
	out (0a1h),a
	ld a,002h
	out (0a0h),a
	xor a
	out (0a1h),a
	ld a,003h
	out (0a0h),a
	xor a
	out (0a1h),a
	ld a,009h
	out (0a0h),a
	xor a
	out (0a1h),a
	ld a,004h
	out (0a0h),a
	xor a
	out (0a1h),a
	ld a,005h
	out (0a0h),a
	xor a
	out (0a1h),a
	ld a,00ah
	out (0a0h),a
	xor a
	out (0a1h),a
	ld a,006h
	out (0a0h),a
	xor a
	out (0a1h),a
	ei
	ret
sub_5e97h:
	di
	ld a,00fh
	out (0a0h),a
	out (0a1h),a
	ld a,00eh
	out (0a0h),a
	ei
	in a,(0a2h)
	ld c,a
	ld hl,0e3d9h
	ld b,001h
	call sub_5f19h
	ld hl,0e3dah
	ld b,002h
	call sub_5f19h
	ld hl,0e3dbh
	ld b,004h
	call sub_5f19h
	ld hl,0e3dch
	ld b,008h
	call sub_5f19h
	ld hl,0e3ddh
	ld b,010h
	call sub_5f19h
	ld hl,0e3deh
	ld b,020h
	call sub_5f19h
	ret
sub_5ed7h:
	di
	ld a,00fh
	out (0a0h),a
	ld a,04fh
	out (0a1h),a
	ld a,00eh
	out (0a0h),a
	ei
	in a,(0a2h)
	ld c,a
	ld hl,0e3dfh
	ld b,001h
	call sub_5f19h
	ld hl,0e3e0h
	ld b,002h
	call sub_5f19h
	ld hl,0e3e1h
	ld b,004h
	call sub_5f19h
	ld hl,0e3e2h
	ld b,008h
	call sub_5f19h
	ld hl,0e3e3h
	ld b,010h
	call sub_5f19h
	ld hl,0e3e4h
	ld b,020h
	call sub_5f19h
	ret
sub_5f19h:
	ld a,c
	and b
	jr z,l5f28h
	ld a,(hl)
	and 008h
	jr z,l5f25h
	ld (hl),004h
	ret
l5f25h:
	ld (hl),000h
	ret
l5f28h:
	ld a,(hl)
	and 008h
	jr z,l5f30h
	ld (hl),009h
	ret
l5f30h:
	ld (hl),00bh
	ret
sub_5f33h:
	di
	ld d,000h
	ld hl,0e380h
	ld bc,00000h
l5f3ch:
	ld c,001h
l5f3eh:
	call sub_5f58h
	inc hl
	ld a,c
	cp 080h
	jr z,l5f4bh
	sla c
	jr l5f3eh
l5f4bh:
	inc b
	ld a,b
	cp 00bh
	jr nz,l5f3ch
	ei
	call sub_5f7ch
l5f55h:
	jp 00156h
sub_5f58h:
	in a,(0aah)
	and 0f0h
	or b
	out (0aah),a
	in a,(0a9h)
	and c
	jr z,l5f6fh
	ld a,(hl)
	and 008h
	jr z,l5f6ch
	ld (hl),004h
	ret
l5f6ch:
	ld (hl),000h
	ret
l5f6fh:
	ld d,0ffh
	ld a,(hl)
	and 008h
	jr z,l5f79h
	ld (hl),009h
	ret
l5f79h:
	ld (hl),00bh
	ret
sub_5f7ch:
	ld hl,0e3d8h
	ld a,d
	cp 0ffh
	jr z,l5f8fh
	ld a,(hl)
	and 008h
	jr z,l5f8ch
	ld (hl),004h
	ret
l5f8ch:
	ld (hl),000h
	ret
l5f8fh:
	ld a,(hl)
	and 008h
	jr z,l5f97h
	ld (hl),009h
	ret
l5f97h:
	ld (hl),00bh
	ret
	push hl
	call 00041h
	ld hl,01800h
	ld bc,00300h
	xor a
	call 00056h
	pop hl
	ld de,00000h
	call sub_5fe2h
	ld de,00800h
	call sub_5fe2h
	ld de,01000h
	call sub_5fe2h
	ld de,02000h
	call sub_5fe2h
	ld de,02800h
	call sub_5fe2h
	ld de,03000h
	call sub_5fe2h
	ld de,01800h
	call sub_5fe2h
	ld de,01900h
	call sub_5fe2h
	ld de,01a00h
	call sub_5fe2h
	jp 00044h
sub_5fe2h:
	ld b,(hl)
	inc hl
	ld c,(hl)
	inc hl
	push hl
	push bc
	call 0005ch
	pop bc
	pop hl
	add hl,bc
	ret
sub_5fefh:
	push hl
	call 00041h
	ld hl,01800h
	ld bc,00300h
	xor a
	call 00056h
	pop hl
	ld de,00000h
	call sub_6037h
	ld de,00800h
	call sub_6037h
	ld de,01000h
	call sub_6037h
	ld de,02000h
	call sub_6037h
	ld de,02800h
	call sub_6037h
	ld de,03000h
	call sub_6037h
	ld de,01800h
	call sub_6037h
	ld de,01900h
	call sub_6037h
	ld de,01a00h
	call sub_6037h
	jp 00044h
sub_6037h:
	push de
	ld de,0e474h
	call sub_5d11h
	ld hl,0e46eh
	ld b,(hl)
	inc hl
	ld c,(hl)
	ld hl,0e474h
	pop de
	call 0005ch
	ld hl,0e470h
	ld b,(hl)
	inc hl
	ld c,(hl)
	ld hl,0e472h
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld h,d
	ld l,e
	add hl,bc
	ret
	ld a,(0f3e0h)
	and 0fch
	jp l607ch
	ld a,(0f3e0h)
	and 0fch
	or 001h
	jp l607ch
sub_606dh:
	ld a,(0f3e0h)
	and 0fch
	or 002h
	jp l607ch
	ld a,(0f3e0h)
	or 003h
l607ch:
	di
	ld b,a
	ld c,001h
	call 00047h
	ei
	ret
sub_6085h:
	call 00069h
	ld hl,01b00h
	ld de,0e3e5h
	ld bc,00080h
	jp 00059h
sub_6094h:
	ld hl,0e3e5h
	ld bc,00080h
	ld de,01b00h
	jp 0005ch
sub_60a0h:
	push hl
	ld hl,03800h
	ld c,000h
	ld a,(0f3e0h)
	and 002h
	jr nz,l60b0h
	ld de,00008h
l60b0h:
	ld de,00020h
l60b3h:
	ld a,c
	cp b
	jr z,l60bbh
	add hl,de
	inc c
	jr l60b3h
l60bbh:
	ld d,h
	ld e,l
	pop hl
	ld b,(hl)
	inc hl
	ld c,(hl)
	inc hl
	jp 0005ch
sub_60c5h:
	push af
	ld a,(0f3e0h)
	and 002h
	jr z,l60d3h
	ld a,b
	sla a
	sla a
	ld b,a
l60d3h:
	pop af
	push bc
	sla a
	sla a
	ld b,000h
	ld c,a
	ld hl,0e3e5h
	add hl,bc
	pop bc
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),b
	inc hl
	ld (hl),c
	ret
	ld (hl),c
	inc hl
	ld (hl),b
	ret
sub_60edh:
	ld de,00003h
	add hl,de
	ld (hl),b
	ret
sub_60f3h:
	ld a,(hl)
	cp 000h
	ret z
	call 000a2h
	inc hl
	jr sub_60f3h
sub_60fdh:
	bit 7,b
	jr z,l6106h
	ld a,02dh
	call sub_615fh
l6106h:
	ld a,b
	srl a
	srl a
	srl a
	srl a
	and 007h
	ld (0e474h),a
	ld e,b
	call sub_613bh
	ld e,c
	call sub_6133h
	ld e,c
	call sub_613bh
	ld e,d
	call sub_6133h
	ld a,d
	and 00fh
	jr nz,l612eh
	ld a,001h
	ld (0e474h),a
l612eh:
	ld e,d
	call sub_613bh
	ret
sub_6133h:
	srl e
	srl e
	srl e
	srl e
sub_613bh:
	ld a,(0e474h)
	or e
	and 00fh
	jr nz,l6144h
	ret
l6144h:
	ld a,e
	and 00fh
	ld e,a
	add a,030h
	call sub_615fh
	ld a,e
	or a
	jr z,l6157h
	ld a,007h
	ld (0e474h),a
	ret
l6157h:
	ld a,(0e474h)
	dec a
	ld (0e474h),a
	ret
sub_615fh:
	push bc
	push de
	call 000a2h
	pop de
	pop bc
	ret
sub_6167h:
	ld a,b
	ld (0e46ch),a
	ld a,c
	ld (0e46dh),a
	ld hl,0e466h
	ld b,006h
l6174h:
	ld (hl),000h
	inc hl
	djnz l6174h
l6179h:
	ld a,(0e46ch)
	ld b,a
	ld a,(0e46dh)
	ld c,a
	ld a,b
	or c
	jp z,l6217h
	ld de,0e466h
	ld hl,0e469h
	ld a,b
	and 0f0h
	jr z,l61afh
	ld (hl),096h
	inc hl
	ld (hl),040h
	inc hl
	ld (hl),000h
	ld a,b
	srl a
	srl a
	srl a
	srl a
	and 00fh
	push af
	ld a,b
	and 00fh
	ld (0e46ch),a
	pop af
	ld b,a
	jr l6206h
l61afh:
	ld a,b
	and 00fh
	jr z,l61cah
	ld (hl),056h
	inc hl
	ld (hl),002h
	inc hl
	ld (hl),000h
	ld a,b
	and 00fh
	push af
	ld a,b
	and 0f0h
	ld (0e46ch),a
	pop af
	ld b,a
	jr l6206h
l61cah:
	ld a,c
	and 0f0h
	jr z,l61edh
	ld (hl),016h
	inc hl
	ld (hl),000h
	inc hl
	ld (hl),000h
	ld a,c
	srl a
	srl a
	srl a
	srl a
	and 00fh
	push af
	ld a,c
	and 00fh
	ld (0e46dh),a
	pop af
	ld b,a
	jr l6206h
l61edh:
	ld a,c
	and 00fh
	jr z,l6206h
	ld (hl),001h
	inc hl
	ld (hl),000h
	inc hl
	ld (hl),000h
	ld a,c
	and 00fh
	push af
	ld a,c
	and 0f0h
	ld (0e46dh),a
	pop af
	ld b,a
l6206h:
	ld hl,0e469h
l6209h:
	push hl
	push de
	push bc
	call sub_5d9fh
	pop bc
	pop de
	pop hl
	djnz l6209h
	jp l6179h
l6217h:
	ld a,(0e466h)
	ld d,a
	ld a,(0e467h)
	ld c,a
	ld a,(0e468h)
	and 00fh
	ld b,a
	call sub_60fdh
	ret
sub_6229h:
	jp 000c6h
sub_622ch:
	xor a
	jp 000c3h
sub_6230h:
	ld hl,0f3e9h
	ld (hl),b
	inc l
	ld (hl),c
	jp 00062h
	ld (0f3aeh),a
	ret
sub_623dh:
	call sub_5d60h
	call sub_5d6bh
	call sub_624eh
	call sub_5e43h
	xor a
	ld (0f3dbh),a
	ret
sub_624eh:
	ld hl,0e380h
	ld b,059h
l6253h:
	xor a
	ld (hl),a
	inc hl
	djnz l6253h
	ld hl,0e3d9h
	ld b,00ch
l625dh:
	xor a
	ld (hl),a
	inc hl
	djnz l625dh
	call 00069h
	ld hl,01b00h
	ld de,0e3e5h
	ld bc,00080h
	call 00059h
	ld a,00dh
	ld (0e465h),a
	ret
l6277h:
	ld (bc),a
	ret po
	ld bc,0c863h
	nop
	ccf
	ld a,a
	ret z
	nop
	ccf
	rst 0
	nop
	inc bc
	push bc
	nop
	inc bc
	ld bc,000c6h
	jp nz,0c43fh
	ld a,a
	jp nz,01f00h
	call nz,0c30fh
	rlca
	call nz,0c40fh
	rra
	jp 0c403h
	ld bc,000c4h
	jp nz,00301h
	jp 03f07h
	ld a,a
	call 00100h
	jp z,0c200h
	ld a,a
	ccf
	rra
	ld c,00fh
	jp nz,0c21fh
	ccf
	ld a,a
	push bc
	nop
	jp nz,00301h
	jp nz,0c207h
	ld a,a
	add a,000h
	ccf
	ld a,a
	ret z
	nop
	ccf
	rst 8
	nop
	inc bc
	push bc
	nop
	inc bc
	ld bc,000d0h
	call nz,0c601h
	inc bc
	call nz,0c401h
	ccf
	call nz,0c37fh
l62dbh:
	rrca
	call nz,03070h
	jp 00100h
	jp nz,0d103h
	nop
	rrca
	rlc b
	ld a,a
	jp nz,01f3fh
	rrca
	jp nz,0cc04h
	nop
	ld bc,00f03h
	rra
	jp nz,l7f3fh
	jp 03f00h
	ld a,a
	ret z
	nop
	rra
l6300h:
	ccf
	adc a,000h
	rlca
	inc bc
	call nz,00300h
	ld bc,000ceh
	inc bc
	add a,007h
	rrca
	rst 0
	nop
	ld bc,000c7h
	ld b,b
	jr nc,$-60
	jr c,l62dbh
	inc e
	ld e,01fh
	rrca
	rst 0
	nop
	ccf
	rlca
	ld bc,000c9h
	ld a,a
	ccf
	jp nz,00f1fh
	rlca
	call nz,00703h
	rrca
	rra
	inc bc
	rlca
	jp 0070fh
	inc bc
	ld bc,l7f3fh
	ret z
	nop
	rrca
	ccf
	adc a,000h
	rrca
	inc bc
	call nz,00300h
	ld bc,000d4h
	ld bc,0c203h
	rrca
	call nz,0c21fh
	ccf
	call nz,0c403h
	rlca
	call nz,0c400h
	ld a,a
	call nz,0c400h
	ld bc,03fc2h
	call nz,0c41fh
	rrca
	call nz,0c207h
	nop
	rra
	ret z
	nop
	ld bc,000c3h
	ld bc,000c4h
	ld a,a
	ccf
	ld a,a
	jp 0c400h
	rrca
	jp nz,0c20eh
	inc c
	rra
	ccf
	ld a,a
	ret
	nop
	jp nz,00e04h
	rra
	jp nz,l7f00h
	ccf
	jp nz,00f1fh
	rlca
	jp z,03300h
	jp nz,03300h
	call z,00300h
	call 0c300h
	rrca
	call nz,0c41fh
	ccf
	call nz,00f1fh
	jp 0c403h
	rlca
	jp 0c50fh
	rlca
	inc bc
	push bc
	nop
	inc bc
	rlca
	rra
	jr l63bdh
	jr nc,l640fh
	ccf
	jp nz,0c57fh
	nop
	ld bc,003c2h
	rlca
	jp nz,l7f3fh
	push bc
	nop
l63bdh:
	jp nz,03f7fh
	rra
	rrca
	jp nz,0c307h
	inc bc
	ld bc,000c9h
	ld a,a
	jp nz,01f3fh
	inc sp
	jp nz,03300h
	jp nz,03300h
	ret
	nop
l63d6h:
	inc bc
	jp nc,00f00h
	jp z,00100h
	inc bc
	ld bc,000b8h
	and 0d1h
	nop
	inc sp
	jp nz,03300h
	jp nz,03300h
	ret
	nop
	inc bc
	call 00f00h
	call nz,01f00h
	adc a,000h
	add a,007h
	jp nz,01f01h
	call nz,0000fh
	jp 0003ch
	jp 0c53ch
	nop
	jp 0c57fh
	nop
	ld a,a
	ld e,01ch
	call 0c300h
l640fh:
	jr c,l63d6h
	nop
	inc bc
	ld a,b
	jr nc,$-57
	nop
	inc bc
	ld bc,000c6h
	rra
	jp nz,0c23fh
	nop
	jp 0c301h
	inc c
	jp nz,0c300h
	rra
	jp 00003h
	jp 0000fh
	rrca
	ld c,00ch
l6431h:
	push bc
	nop
	jp 0c20fh
	nop
	inc sp
	jp nz,03300h
	call z,00300h
	jp z,l7f00h
	ret z
	nop
	ld bc,0c403h
	rlca
	call nz,0c300h
	rrca
	rra
	jp nz,00701h
	nop
	rst 0
	inc a
	jp nz,l7f00h
	nop
	rra
	jp nz,l7f00h
	nop
	push bc
	inc e
	ld e,01fh
	nop
	ld a,0c2h
	ld a,(hl)
	ld a,0c3h
	nop
	ld bc,038c7h
	ccf
	rst 0
	ld a,h
	nop
	jr nc,l6431h
	ld sp,030c2h
	jr c,$+62
	nop
	rrca
	jp nz,00f07h
	nop
	ld bc,00003h
	jr c,l64beh
	rra
	nop
	jp 0003fh
	ld bc,00e1eh
	ld a,c
	ld b,0c2h
	rrca
	nop
	call nz,0c21fh
	inc bc
	ld a,h
	nop
	push bc
	inc c
	ld c,00fh
	nop
	ccf
	jp nz,03f7fh
	push bc
	nop
	rra
	rrca
	ld a,b
	rlca
	jp nz,0000fh
	inc sp
	jp nz,03300h
	jp nz,03300h
	call z,00300h
	call nz,00700h
	call 03f00h
	nop
	jp 0c57fh
	nop
	jp nz,0cc3fh
	nop
	ld a,a
l64beh:
	ccf
	nop
	inc sp
	rst 8
	nop
	ld bc,000cch
	ld bc,00103h
	ret po
	ld bc,0c984h
	nop
	jr nz,l6510h
	ld a,b
	jp l7877h
	nop
	ld (bc),a
	ld bc,0c338h
	ld b,b
	jr c,l64dch
l64dch:
	inc c
	ld (de),a
	ld a,l
	ld a,e
	ld (hl),a
	ld l,a
	ld h,c
l64e3h:
	nop
	ld h,e
	ld l,(hl)
	ld c,(hl)
l64e7h:
	jp nz,l6e2eh
	ld h,c
	nop
	jr $-60
	inc h
	add hl,de
	jp nz,01824h
	nop
	ld b,009h
	ld bc,0041dh
	ex af,af'
	rrca
	nop
	ld sp,l584ah
	ld l,b
	ld l,c
	ld c,d
	inc sp
	nop
	ld (hl),e
	ld d,d
	ld d,(hl)
l6507h:
	ld h,l
	ld a,(de)
	ld (de),a
	inc sp
	nop
	inc bc
	push bc
	inc b
	inc bc
l6510h:
	nop
	ld a,a
	nop
	jr l6539h
	inc a
	jr nz,$+101
	jp l6e00h
	ld a,(hl)
	ld b,a
	add hl,hl
	jr c,l64e3h
	nop
	jr c,l64e7h
	jr nz,l6525h
l6525h:
	inc e
	jp nz,01c12h
	jp nz,01214h
	nop
	jr nz,l652fh
l652fh:
	ld h,a
	jp l7424h
	jp 01c00h
	jp 0635eh
l6539h:
	jp 03100h
	jp 03629h
	ld b,b
	jr nz,l6507h
	nop
	jp nz,00201h
	push bc
	nop
	ld bc,000c7h
	jr $-55
	nop
	inc b
	nop
	inc e
	jp l6c6eh
	jp nz,00100h
	dec e
	add hl,hl
	ld sp,l4621h
	inc h
	jr l6563h
	jr nc,$-59
	inc h
	daa
l6563h:
	jp nz,02000h
	ld hl,0c272h
	ld (0c321h),hl
	nop
	ld l,l
	ld c,h
	ld c,b
	ld c,h
	ld l,l
	jp 01800h
	inc d
	ld (hl),h
	ld l,e
	ld (hl),h
	jp nz,00400h
	inc e
	jp 0635ah
	jp 01900h
	jp 01909h
	jp 00100h
	jp 01102h
	jp 03300h
	jp 03312h
	jp 02f00h
l6595h:
	call nz,0c457h
	nop
	inc bc
	call nz,00f07h
	jp nz,l6300h
	jp nz,02161h
	ld bc,000c3h
	ccf
	ld a,a
	nop
	rra
	ld bc,000c3h
	jp nz,00103h
	jp nz,0780fh
	jp nz,l7800h
	jp nz,01f0fh
	jp nz,0c53fh
	nop
	ld a,07fh
	ld (hl),a
	add a,000h
	jp nz,0c206h
	nop
	call nz,00703h
	ld b,0c2h
	nop
	daa
	ld (hl),a
	dec bc
	ex af,af'
	daa
	jr nz,l6595h
	nop
	inc c
	inc b
	ld e,033h
	ld sp,00024h
	rst 0
	rlca
	jp nz,l7e00h
	jp nz,0c27fh
	ld h,e
	ld a,a
	nop
	jp 0c307h
	ld a,b
	rlca
	rrca
	jp nz,01e0eh
	jp nz,0c41ch
	nop
	ex af,af'
	jp nz,l730ch
	jp nz,l7f00h
	rra
	ld bc,000c5h
	jr c,$+50
	jr nz,l6623h
	ld b,e
	ld a,b
	jp nz,03f00h
	jp nz,00f1fh
	ld a,b
	inc a
	jp nz,06700h
	rrca
	ld e,03ch
	ld a,b
	jp l777fh
	rlca
	ld e,03ch
	jr c,$-59
	ld a,a
	jp nz,0c206h
	ld a,a
	call nz,0c206h
l6623h:
	nop
	jp nz,0c41fh
	nop
	ld b,000h
	ld b,00fh
	ld b,007h
	jp nz,02000h
	jp nz,l52feh+2
	ld d,(hl)
	ld (hl),d
	jp nz,00c00h
	nop
	ld b,b
	ld (hl),e
	ld e,(hl)
	ld (hl),a
	jp nz,0c300h
	rlca
	jp 00778h
	nop
	ld a,a
	push bc
	ld h,c
	jp nz,l7800h
	push bc
	jr c,l6656h
	nop
	ld (bc),a
	ret po
	ld bc,0c853h
	ld d,l
l6656h:
	jp nz,0c815h
	ld de,0e1c1h
	rst 0
	ld de,0c51eh
	ld de,051c2h
	add a,011h
	add a,0f5h
	jp nz,0c8ffh
	ld e,a
	ret z
	push af
	rst 0
	ld e,a
	pop bc
	rst 38h
	jp 0c855h
	push af
	call 05fffh
	rst 0
	rst 38h
	jp 0c555h
	ld e,a
	add a,0f5h
	push bc
	rst 38h
	rst 0
	ld e,a
	add a,055h
	jp nz,0c865h
	ld h,(hl)
	sub (hl)
	rst 0
	ld h,(hl)
	sbc a,c
	rst 0
	ld h,(hl)
	ld l,c
	push bc
	ld h,(hl)
	jp nz,0c616h
	ld h,(hl)
	ret z
	ld de,l55c2h
	add a,0f5h
	ret z
	ld e,a
	set 6,l
	push bc
	ld e,a
	jp 0c3ffh
	ld e,a
	call nz,0c5ffh
	ld d,l
	jp 0c5ffh
	ld d,l
	ld e,a
	jp nz,0c6ffh
	ld d,l
	jp 0c5ffh
	push af
	jp nz,0cc5fh
	rst 38h
	rst 0
	ld e,a
	jp 0c255h
	push bc
	ret z
	call z,03cc2h
l66c6h:
	add a,0cch
	jp nz,0c633h
	call z,0c3c2h
	call nz,0c2cch
	ld l,h
	add a,0cch
	ret z
	ld h,(hl)
	ret z
	push af
	rst 0
	rst 38h
	ld e,a
	rst 0
	rst 38h
	ret
	ld e,a
	rst 0
	rst 38h
	pop bc
	push af
	jp nz,0c65fh
	rst 38h
	jp 0c555h
	ld e,a
	ret z
	push af
	ret z
	ld e,a
	jp nz,0c845h
	ld b,h
	jp nz,0c674h
	ld b,h
	jp nz,0c677h
	ld b,h
	jp nz,0c447h
	ld b,h
	jp nz,0c6c4h
	ld b,h
	ret z
	call z,011c6h
	jp nz,0c851h
	push af
	ret z
	ld e,a
	call nz,0c4ffh
	push af
	call nz,0c4ffh
	ld e,a
	ret z
	push af
	add a,05fh
	jp nz,0c1ffh
	push af
	push bc
	ld d,l
	jp 0c1ffh
	push af
	jp 0c155h
	push af
	call nz,0c3ffh
	push af
	jp 0c8ffh
	ld e,a
	jp 0c9f5h
	rst 38h
	call nz,0c25fh
	ld d,l
	add a,05fh
	jp z,0c144h
	call p,sub_44c2h
	pop bc
	call p,sub_44c2h+2
	pop bc
	rst 38h
	jp nz,0c144h
	rst 38h
	call nz,sub_4f44h
	jp nz,0c144h
	rst 38h
	rst 0
	ld b,h
	pop bc
	rst 38h
	jp nz,0c844h
	ld e,a
	ret z
	push af
	ret z
	ld e,a
	ret z
	push af
	push bc
	rst 38h
	rst 0
	ld e,a
	jp 0c5f5h
	rst 38h
	rst 0
	ld e,a
	push bc
	ld d,l
	ret z
	push af
	jp 0c55fh
	rst 38h
	call nz,0c455h
	ld e,a
	pop bc
	call p,sub_44c2h
	pop bc
	call p,sub_44c2h
	pop bc
	call p,0c144h
	rst 38h
	jp nz,0c144h
	rst 38h
	jp nz,0c144h
	rst 38h
	ld b,h
	ld c,a
	jp nz,0c144h
	rst 38h
	jp nz,0c144h
	rst 38h
	call nz,0c144h
	rst 38h
	jp nz,0c144h
	rst 38h
	call nz,sub_4f44h
	jp nz,0c144h
	rst 38h
	ld b,h
	add a,066h
	jp nz,00156h
	cp b
	ld bc,0c826h
	ld d,l
	ret
	ld b,h
	pop bc
	call p,sub_44c2h
	pop bc
	call p,sub_44c2h
	pop bc
	call p,0c144h
	rst 38h
	jp nz,0c144h
	rst 38h
	jp nz,0c144h
	rst 38h
	ld b,h
	ld c,a
	jp nz,0c144h
	rst 38h
	jp nz,0c144h
	rst 38h
	call nz,0c144h
	rst 38h
	jp nz,sub_4f44h
	call nz,sub_4f44h
	jp 0c844h
	call z,0ffc3h
	ret z
	ld e,a
	push bc
	push af
	ld d,l
	jp l55f5h
	jp 0c5f5h
	ld d,l
	jp 0c5f5h
	ld d,l
	jp 0c55fh
	ld d,l
	jp 0c5ffh
	ld d,l
	jp 0c55fh
	ld d,l
	pop bc
	push af
	jp nz,0c55fh
	ld d,l
	jp nz,0c15fh
	rst 38h
	push bc
	ld d,l
	jp 0c2f5h
	ld d,l
	jp 0c3f5h
	ld e,a
	jp nz,0c655h
	ld e,a
	ld d,l
	jp l555fh
	jp 0c55fh
	ld d,l
	jp 0c25fh
	ld b,h
	pop bc
	call p,sub_44c2h
	pop bc
	call p,sub_44c2h+2
	pop bc
	rst 38h
	jp nz,0c144h
	rst 38h
	call nz,sub_4f44h
	jp nz,0c144h
	rst 38h
	rst 0
	ld b,h
	ld c,a
	jp nz,0c644h
	call z,05cc2h
	call nz,0c35fh
	rst 38h
	ld d,l
	call nz,0c3f5h
	ld e,a
	ld d,l
	rst 0
	push af
	jp nz,0c155h
	push af
	pop bc
	rst 38h
	ld e,a
	jp nz,0c1ffh
	push af
	ld d,l
	rst 0
	ld e,a
	ld d,l
	call nz,0c35fh
	rst 38h
	pop bc
	push af
	rst 8
	ld e,a
	ld d,l
	rst 0
	ld e,a
	ld d,l
	call nz,0c1f5h
	rst 38h
	jp nz,l555fh
	jp l55f5h
	jp l55f5h
	pop bc
	push af
	jp nz,0c15fh
	push af
	jp l555fh
	add a,05fh
	pop bc
	push af
	ld d,l
	rst 0
	ld e,a
	ld d,l
	call nz,0c35fh
	rst 38h
	jp nz,0c255h
	ld e,a
	pop bc
	push af
	jp l555fh
	pop bc
	call p,sub_44c2h
	pop bc
	call p,sub_44c2h
	pop bc
	call p,0c144h
	rst 38h
	jp nz,0c144h
	rst 38h
	jp nz,0c144h
	rst 38h
	ld b,h
	pop bc
	rst 38h
	jp nz,sub_4f44h
	jp nz,0c144h
	rst 38h
	ld b,h
	ld c,a
	push bc
	ld b,h
	pop bc
	rst 38h
	rst 0
	ld b,h
	ld c,a
	ld b,h
	jp 0c5f5h
	ld d,l
	jp nz,0c65fh
	ld d,l
	add a,044h
	jp nz,l4445h
	pop bc
	call p,044c7h
	pop bc
	rst 38h
	rst 0
	ld b,h
	ld c,a
	call z,0c244h
	ld d,h
	ld bc,001e0h
	inc sp
	ret
	ld d,l
	jp nz,0c5f5h
	ld e,a
	ld d,l
	rst 0
	push af
	ld d,l
	jp nz,0c5f5h
	ld e,a
	ld d,l
	pop bc
	push af
	push bc
	ld e,a
	pop bc
	push af
	ld d,l
	rst 0
	push af
	ld d,l
	jp 05ff5h
	jp l55f5h
	rst 0
	push af
	ld d,l
	ld e,a
	jp nz,05ff5h
	jp nz,05ff5h
	ld d,l
	rst 0
	push af
	ld d,l
	ld e,a
	ld d,l
	call nz,05ff5h
	jp 0c155h
	push af
	ld e,a
	jp nz,05ff5h
	jp 0c555h
	push af
	ld d,l
	rst 0
	push af
	ld d,l
	pop bc
	push af
	ld d,l
	push bc
	push af
	jp 0c155h
	push af
	call nz,0c35fh
	ld d,l
	ld e,a
	jp 05ff5h
	jp nz,0c5f5h
	ld d,l
	jp 0c5f5h
	ld d,l
	pop bc
	push af
	rst 0
	ld d,l
	pop bc
	push af
	rst 0
	ld d,l
	pop bc
	push af
	ld d,l
	push bc
	ld e,a
	jp nz,0c555h
	push af
	ld e,a
	jp 05ff5h
	call nz,0c2f5h
	ld d,l
	add a,0f5h
	jp l5f55h
	jp 05ff5h
	jp l5f55h
	jp nz,05ff5h
	pop bc
	push af
	jp nz,0c255h
	push af
	call nz,0c35fh
	ld d,l
	ld e,a
	jp 05ff5h
	jp 0c555h
	push af
	jp l5f55h
	jp 05ff5h
	jp 0c555h
	ld e,a
	jp nz,0c255h
	ld de,0f1c6h
	jp nz,0c511h
	rra
	pop bc
	rst 38h
	jp nz,0c211h
	pop af
	pop bc
	rst 38h
	jp nz,0c11fh
	rst 38h
	jp nz,0c311h
	rra
	jp nz,01ff1h
	jp nz,0c111h
	pop af
	push bc
	rra
	push bc
	ld d,l
	jp 0c615h
	ld d,l
	jp nz,0c215h
	ld de,0f1c6h
	jp nz,0c211h
	pop af
	call nz,0c21fh
	ld de,01fc2h
	pop bc
	pop af
	jp 0111fh
	rst 0
	pop af
	ld de,0ffc1h
	add a,01fh
	ld de,01fc3h
	jp 01ff1h
	add a,0f1h
	jp nz,0c211h
	rst 38h
	jp 0c11fh
	pop af
	jp nz,0c311h
	pop af
	jp 0c2ffh
	ld de,01fc5h
	pop bc
	pop af
	jp nz,0c411h
	rra
	jp nz,0c2f1h
	ld de,015d8h
	jp nz,0c255h
	ld d,c
	call nz,0c155h
	pop af
	ld de,0f1c4h
	jp nz,01f11h
	jp nz,0c311h
	pop af
	jp nz,01f11h
	ld de,0f1c4h
	jp nz,0c311h
	pop af
	jp 0c11fh
	pop af
	ld de,01fc6h
	pop bc
	rst 38h
	ld de,0f1c6h
	rra
	ld de,00001h
	nop
	adc a,e
	rst 38h
	nop
	in a,(000h)
	ld bc,00302h
	inc b
	push bc
	nop
	dec b
	ld b,007h
	ex af,af'
	add hl,bc
	ld a,(bc)
	jp 00c0bh
	dec c
	ld c,00fh
	djnz $-55
	nop
	ld de,01312h
	inc d
	dec d
	ld d,0c4h
	nop
	rla
	dec bc
	jr $+27
	dec bc
	ld a,(de)
	dec de
	inc e
	dec e
	ld e,01fh
	jr nz,l6a5bh
	ld (000c6h),hl
	inc hl
	inc h
	jp nz,02625h
	daa
	jr z,l6a5bh
	call nz,02900h
	ld hl,(00bc2h)
	dec hl
	inc l
	dec l
	dec bc
	ld l,02fh
	jr nc,$+13
	ld sp,000c5h
	ld (0c333h),a
	inc (hl)
	dec (hl)
l6a5bh:
	ld (hl),037h
	jr z,$+58
	call nz,03900h
	ld a,(03c3bh)
	dec a
	ld a,03fh
	ld b,b
	ld b,c
	ld b,d
	ld b,e
	ld b,h
	inc c
	ld b,l
	call nz,sub_4600h
	ld b,a
	jp nz,04948h
	ld c,d
	ld b,(hl)
	scf
	jr z,$-57
	nop
	dec b
	ld c,e
	ld c,h
	ld c,l
	ld c,(hl)
	jp 04f0bh
	ld d,b
	ld d,c
	ld d,d
	ld d,e
	ld d,h
	ld d,l
	jp sub_4600h
	ld d,(hl)
	ld d,a
	ld e,b
	ld e,c
	ld e,d
	ld b,(hl)
	scf
	ld e,e
	jp 00100h
	nop
	nop
	ld d,e
	call nc,00100h
	ld (bc),a
	inc bc
	inc b
	dec b
	ld b,001h
	rlca
	add a,000h
	ex af,af'
	add hl,bc
	ld a,(bc)
	dec bc
	inc c
	dec c
	ld c,00dh
	rrca
	djnz l6ac3h
	ld (de),a
	inc de
	inc d
	dec c
	ld de,00015h
	ld bc,0c216h
	rla
	jr l6ad8h
	ld bc,0c61ah
	nop
l6ac3h:
	dec de
	inc e
	dec e
	ld e,01fh
	jr nz,l6aebh
	ld (02423h),hl
	dec h
	ld h,027h
	jr z,l6afbh
	dec h
	ld hl,(00100h)
	dec hl
	inc l
l6ad8h:
	dec l
	ld l,02fh
	ld bc,000cch
	jr nc,$+51
	rlc b
	ld (0c333h),a
	inc (hl)
	dec (hl)
	ld (hl),0ffh
	nop
	rst 38h
l6aebh:
	nop
	rst 0
	nop
	ld bc,00000h
	ld l,d
	pop hl
	nop
	ld bc,00302h
	inc b
	dec b
	ld b,007h
l6afbh:
	ex af,af'
	add hl,bc
	ld a,(bc)
	dec bc
	inc c
	dec c
	ld c,00fh
	djnz $-46
	nop
	ld de,00012h
	inc de
	jp nz,01400h
	exx
	nop
	dec d
	ld d,017h
	jr $+27
	ld a,(de)
	dec de
	inc e
	dec e
	ld e,01fh
	push af
	nop
	jr nz,l6b3fh
	ld (02423h),hl
	jp nz,02000h
	ld hl,02322h
	inc h
	dec h
	jp nz,02000h
	ld hl,02322h
	inc h
	dec h
	ld h,0c2h
	nop
	daa
	jr z,l6b60h
	ld hl,(02c2bh)
	jp nz,02d00h
	ld l,02fh
l6b3fh:
	jr nc,l6b72h
	jp nz,02d00h
	ld l,02fh
	jr nc,l6b79h
	ld (000c2h),a
	dec l
	ld l,02fh
	jr nc,l6b81h
	inc sp
	inc (hl)
	dec (hl)
	nop
	ld (hl),037h
	jr c,l6b91h
	ld a,(0e13bh)
	nop
l6b5ch:
	nop
	ld c,b
	nop
	inc d
l6b60h:
	nop
	rst 0
	ld a,a
	ret
	nop
	rst 0
	ld bc,l7fc8h
	ret z
	nop
	ret z
	ld bc,l7fc7h
	ret
	nop
	rst 0
l6b72h:
	ld bc,00000h
	ld c,b
	nop
	inc d
	nop
l6b79h:
	rst 0
	ld a,a
	ret
	nop
	rst 0
	ld bc,l7fc8h
l6b81h:
	ret z
	nop
	ret z
	ld bc,l7fc7h
	ret
	nop
	rst 0
	ld bc,00000h
	ld c,b
	nop
	inc d
	nop
l6b91h:
	rst 0
	ld a,a
	ret
	nop
	rst 0
	ld bc,l7fc8h
	ret z
	nop
	ret z
	ld bc,l7fc7h
	ret
	nop
	rst 0
	ld bc,00000h
	ld c,b
	nop
	ld e,0c1h
	rst 38h
	rst 0
	rra
	pop bc
	rst 38h
	rst 0
	ld de,0ffc1h
	rst 0
	pop af
	ret z
	rra
	ret z
	ld de,0f1c8h
	rst 0
	rra
	pop bc
	rst 38h
	rst 0
	ld de,0ffc1h
	rst 0
	pop af
	pop bc
	rst 38h
	nop
	ld c,b
	nop
	ld e,0c1h
	rst 38h
	rst 0
	rra
	pop bc
	rst 38h
	rst 0
	ld de,0ffc1h
	rst 0
	pop af
	ret z
	rra
	ret z
	ld de,0f1c8h
	rst 0
	rra
	pop bc
	rst 38h
	rst 0
	ld de,0ffc1h
	rst 0
	pop af
	pop bc
	rst 38h
	nop
	ld c,b
	nop
	ld e,0c1h
	rst 38h
	rst 0
	rra
	pop bc
	rst 38h
	rst 0
	ld de,0ffc1h
	rst 0
	pop af
	ret z
	rra
	ret z
	ld de,0f1c8h
	rst 0
	rra
	pop bc
	rst 38h
	rst 0
	ld de,0ffc1h
	rst 0
	pop af
	pop bc
	rst 38h
	ld bc,00100h
	nop
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
l6c6eh:
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld bc,00100h
	nop
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
l6e00h:
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld bc,00100h
	nop
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
l6e2eh:
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
l6f16h:
	nop
	ld c,b
	nop
	inc d
	nop
	rst 0
	ld a,a
	ret
	nop
	rst 0
	ld bc,l7fc8h
	ret z
	nop
	ret z
	ld bc,l7fc7h
	ret
	nop
	rst 0
	ld bc,00000h
	ld c,b
	nop
	inc d
	nop
	rst 0
	ld a,a
	ret
	nop
	rst 0
	ld bc,l7fc8h
	ret z
	nop
	ret z
	ld bc,l7fc7h
	ret
	nop
	rst 0
	ld bc,00000h
	ld c,b
	nop
	inc d
	nop
	rst 0
	ld a,a
	ret
	nop
	rst 0
	ld bc,l7fc8h
	ret z
	nop
	ret z
	ld bc,l7fc7h
	ret
	nop
	rst 0
	ld bc,00000h
	ld c,b
	nop
	jr $+19
	rst 0
	pop af
	ld de,0ffc7h
	ld de,01fc7h
	ret z
	pop af
	ret z
	rst 38h
	ret z
	rra
	rst 0
	pop af
	ld de,0ffc7h
	ld de,01fc7h
	ld de,04800h
	nop
	jr $+19
	rst 0
	pop af
	ld de,0ffc7h
	ld de,01fc7h
	ret z
	pop af
	ret z
	rst 38h
	ret z
	rra
	rst 0
	pop af
	ld de,0ffc7h
	ld de,01fc7h
	ld de,04800h
	nop
	jr $+19
	rst 0
	pop af
	ld de,0ffc7h
	ld de,01fc7h
	ret z
	pop af
	ret z
	rst 38h
	ret z
	rra
	rst 0
	pop af
	ld de,0ffc7h
	ld de,01fc7h
	ld de,00001h
	ld bc,00000h
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld bc,00100h
	nop
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld bc,00100h
	nop
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	nop
	jp nz,00201h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	inc bc
	jp nz,00504h
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
l72beh:
	ld bc,00018h
	rra
	nop
	ld a,a
	ld b,b
	ld a,a
	ld b,b
	ld a,a
	ld b,b
	ld a,a
	rst 38h
	nop
	rst 38h
	nop
	jp 00100h
	add a,002h
	ld b,b
	ld a,a
	ld b,b
	ld a,a
	ld b,b
	ld a,a
	ld b,b
	ld a,a
	rst 38h
	nop
	ld sp,hl
	nop
	ret z
	ld (bc),a
	nop
	sub b
	nop
	djnz $+66
	ld a,a
	ld b,b
	ld a,a
	ld b,b
	ld a,a
	ld b,b
	ld a,a
	rst 38h
	nop
	rst 38h
	nop
	jp nz,0c800h
	ld (bc),a
	ld bc,00020h
	ld hl,l7f40h
	ld b,b
	ld a,a
	ld b,b
	ld a,a
	ld b,b
	ld a,a
	rst 38h
	nop
	rst 38h
	nop
	jp nz,0c800h
	ld (bc),a
	ld b,b
	ld a,a
	ld b,b
l730ch:
	ld a,a
	ld b,b
	jp nz,0ff7fh
	nop
	rst 38h
	nop
	jp 0c600h
	ld (bc),a
	ld bc,00100h
	jr l731dh
l731dh:
	ld a,(hl)
	pop bc
	rst 38h
	rst 0
	rra
	pop bc
	rst 38h
	ld de,0ffc1h
	ld de,0ffc1h
	ld de,0ffc1h
	ld de,0ffc1h
	rst 0
	ld de,0ffc1h
	ld de,022c6h
	pop bc
	rst 38h
	ld de,033c6h
	pop bc
	rst 38h
	ld de,044c6h
	pop bc
	rst 38h
	ld de,055c6h
	pop bc
	rst 38h
	ld de,l66c6h
	pop bc
	rst 38h
	ld de,l77c6h
	pop bc
	rst 38h
	ld de,l88c6h
	pop bc
	rst 38h
	ld de,l99c6h
	pop bc
	rst 38h
	ld de,laac6h
	pop bc
	rst 38h
	ld de,lbbc6h
	pop bc
	rst 38h
	ld de,0ccc6h
	pop bc
	rst 38h
	ld de,0ddc6h
	pop bc
	rst 38h
	ld de,0eec6h
	pop bc
	rst 38h
	ld de,0ffc7h
	pop bc
	pop af
	adc a,01fh
	ret z
	ld de,022c8h
	ret z
	inc sp
	ret z
	ld b,h
	ret z
	ld d,l
	ret z
	ld h,(hl)
	ret z
	ld (hl),a
	ret z
	adc a,b
	ret z
	sbc a,c
	ret z
	xor d
	ret z
	cp e
	ret z
	call z,0ddc8h
	ret z
	xor 0c8h
	rst 38h
	ret z
	rra
	nop
	sub b
	nop
	dec l
	ret z
	rra
	pop bc
	rst 38h
	ld de,0ffc1h
	ld de,0ffc1h
	ld de,0ffc1h
	ret
	ld de,022c8h
	ret z
	inc sp
	ret z
	ld b,h
	ret z
	ld d,l
	ret z
	ld h,(hl)
	ret z
	ld (hl),a
	ret z
	adc a,b
	ret z
	sbc a,c
	ret z
	xor d
	ret z
	cp e
	ret z
	call z,0ddc8h
	ret z
	xor 0c8h
	rst 38h
	ret z
	rra
	ld bc,00020h
	add a,a
	ret z
	rra
	pop bc
	rst 38h
	ld de,0ffc1h
	ld de,0ffc1h
	ld de,0ffc1h
	ret
	ld de,022c8h
	ret z
	inc sp
	ret z
	ld b,h
	ret z
	ld d,l
	ret z
	ld h,(hl)
	ret z
	ld (hl),a
	ret z
	adc a,b
	ret z
	sbc a,c
	ret z
	xor d
	ret z
	cp e
	ret z
	call z,0ddc8h
	ret z
	xor 0c8h
	rst 38h
	rst 8
	rra
	jp nz,011ffh
	pop bc
	rst 38h
	ld de,0ffc1h
	jp nz,0c111h
	rst 38h
	rst 0
	ld de,0ffc1h
	add a,022h
	ld de,0ffc1h
	add a,033h
	ld de,0ffc1h
	add a,044h
	ld de,0ffc1h
	add a,055h
	ld de,0ffc1h
	add a,066h
l7424h:
	ld de,0ffc1h
	add a,077h
	ld de,0ffc1h
	add a,088h
	ld de,0ffc1h
	add a,099h
	ld de,0ffc1h
	add a,0aah
	ld de,0ffc1h
	add a,0bbh
	ld de,0ffc1h
	add a,0cch
	ld de,0ffc1h
	add a,0ddh
l7447h:
	ld de,0ffc1h
	add a,0eeh
	ld de,0ffc7h
	ld de,0ffc1h
	add a,01fh
	pop bc
	pop af
	pop bc
	rst 38h
	ld bc,00100h
	nop
	nop
	ld bc,002c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz $+19
	ld (de),a
	ld bc,013c2h
	jp nz,0c214h
	dec d
	jp nz,0c216h
	rla
	jp nz,0c218h
	add hl,de
	jp nz,0c21ah
	dec de
	jp nz,0c21ch
	dec e
	jp nz,0c21eh
	rra
	jp nz,02120h
	ld (00112h),hl
	jp nz,0c213h
	inc d
	jp nz,0c215h
	ld d,0c2h
	rla
	jp nz,0c218h
	add hl,de
	jp nz,0c21ah
	dec de
	jp nz,0c21ch
	dec e
	jp nz,0c21eh
	rra
	jp nz,02120h
	ld (00112h),hl
	jp nz,0c213h
	inc d
	jp nz,0c215h
	ld d,0c2h
	rla
	jp nz,0c218h
	add hl,de
	jp nz,0c21ah
	dec de
	jp nz,0c21ch
	dec e
	jp nz,0c21eh
	rra
	jp nz,02120h
	ld (00112h),hl
	jp nz,0c213h
	inc d
	jp nz,0c215h
	ld d,0c2h
	rla
	jp nz,0c218h
	add hl,de
	jp nz,0c21ah
	dec de
	jp nz,0c21ch
	dec e
	jp nz,0c21eh
	rra
	jp nz,02120h
	ld (00112h),hl
	jp nz,0c213h
	inc d
	jp nz,0c215h
	ld d,0c2h
	rla
	jp nz,0c218h
	add hl,de
	jp nz,0c21ah
	dec de
	jp nz,0c21ch
	dec e
	jp nz,0c21eh
	rra
	jp nz,02120h
	ld (00112h),hl
	jp nz,0c213h
	inc d
	jp nz,0c215h
	ld d,0c2h
	rla
	jp nz,0c218h
	add hl,de
	jp nz,0c21ah
	dec de
	jp nz,0c21ch
	dec e
	jp nz,0c21eh
	rra
	jp nz,02120h
	ld (00112h),hl
	jp nz,0c213h
	inc d
	jp nz,0c215h
	ld d,0c2h
	rla
	jp nz,0c218h
	add hl,de
	jp nz,0c21ah
	dec de
	jp nz,0c21ch
	dec e
	jp nz,0c21eh
	rra
	jp nz,02120h
	ld (00001h),hl
	ld bc,00000h
	ld bc,002c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l7591h
	nop
	ld bc,002c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l7591h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l75b1h
	nop
	ld bc,002c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l75b1h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l75d1h
	nop
	ld bc,002c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l75d1h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l75f1h
	nop
	ld bc,002c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l75f1h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l7611h
	nop
	ld bc,002c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l7611h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l7631h
	nop
	ld bc,002c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l7631h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l7651h
	nop
	ld bc,002c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l7651h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l7671h
	ld bc,00100h
	nop
	nop
	ld bc,002c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
l7671h:
	rlca
	jp nz,0c208h
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l7695h
	nop
	ld bc,002c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l7695h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l76b5h
	nop
	ld bc,002c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l76b5h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l76d5h
	nop
	ld bc,002c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l76d5h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l76f5h
	nop
	ld bc,002c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l76f5h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l7715h
	nop
	ld bc,002c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l7715h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l7735h
	nop
	ld bc,002c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l7735h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l7755h
	ld (de),a
	inc de
	jp nz,0c214h
	dec d
	jp nz,0c216h
	rla
	jp nz,0c218h
	add hl,de
	jp nz,0c21ah
l7755h:
	dec de
	jp nz,0c21ch
	dec e
	jp nz,0c21eh
	rra
	jp nz,0c220h
	ld hl,02322h
l7764h:
	ld bc,00030h
	ld e,d
	out (000h),a
	push bc
	rlca
	out (000h),a
	push bc
	rra
	add a,000h
	jp nz,0c61fh
	rlca
	jp z,0c600h
	rra
	ret z
	nop
	jp nz,0c807h
l777fh:
	rra
	ret nc
	rlca
	ret z
	rra
	ret nc
	rlca
	ret z
	rra
	ret z
	nop
	add a,01fh
	ret z
	nop
	jp nz,0cb07h
	rra
	ret z
	nop
	push bc
	rlca
	adc a,000h
	jp nz,0c61fh
	rlca
	jp nz,0c600h
	rra
	ret z
	nop
	ret z
	rlca
	jp nz,0c300h
	rlca
	push bc
	nop
	ret z
	rra
	jp 0c507h
	nop
	jp 0c51fh
	nop
	jp 0c507h
	nop
	jp 0c51fh
	nop
	ret z
	rlca
	jp 0c51fh
	nop
	nop
	xor b
	nop
	inc a
l77c6h:
	ret z
	nop
	add a,01fh
	ret z
	nop
	jp nz,0ce07h
	nop
	jp nz,0c61fh
	rlca
	jp nz,0c800h
	rlca
	ret z
	nop
	ret z
	rra
	call 0c300h
	rlca
	ret z
	rra
	push bc
	rlca
	jp 0c803h
	rlca
	jp 0c500h
	rra
	jp 0c503h
	nop
	ret z
	rlca
	add a,01fh
	jp nz,0c300h
	rra
	push bc
	nop
	jp 0c507h
	nop
	add a,007h
l7800h:
	jp nz,00100h
	ret z
	nop
	ld a,(hl)
	rlc b
	push bc
	rlca
	rlc b
	push bc
	rra
	jp 0c500h
	rlca
	jp 0c500h
	rra
	ret z
	rlca
	add a,000h
	jp nz,0c61fh
	nop
	jp nz,0d007h
	rra
	add a,000h
	jp nz,0c607h
	nop
	jp nz,0c81fh
	rlca
	ret z
	rra
	ret z
	rlca
	ret z
	rra
	adc a,000h
	jp nz,0d01fh
	rlca
	add a,000h
	jp nz,0c61fh
	nop
	jp nz,0d007h
	rra
	ret z
	rlca
	ret z
	rra
	ret nc
	rlca
	jp 0c81fh
	nop
	push bc
	rlca
	ret nc
	rra
	ret z
	rlca
	ret po
	nop
	ret z
	rlca
	ret z
	nop
	adc a,01fh
	jp z,0c800h
	rlca
	add a,01fh
	jp nz,0c600h
	rlca
	jp nz,0c800h
	rra
	ret z
	nop
	add a,007h
	jp nz,0c800h
	rlca
	ret z
	nop
	ret z
	rra
	jp 0cd07h
l7877h:
	nop
	jp 0c51fh
	nop
	jp 0c507h
	nop
	jp 0c51fh
	nop
	ld bc,00030h
	ld a,d
	adc a,0eeh
	jp nz,0c311h
	xor 0c5h
	ld e,0c3h
	xor 0c8h
	ld de,0ffc5h
	jp 0c5eeh
	pop hl
	add a,0eeh
	jp nz,0c61eh
	pop af
	jp z,0c6ffh
	rra
	jp nz,0c6ffh
	xor 0c2h
	pop hl
	ret z
	ld e,0c8h
	pop hl
	ret z
	ld e,0c8h
	pop af
	ret z
	rra
	ret z
	pop af
	ret z
	rra
	add a,011h
	jp nz,0c6ffh
	pop af
	jp nz,0c6ffh
	ld de,01fc2h
	ret z
	pop hl
	jp 0c5f1h
	ld de,0ffc3h
	push bc
	pop af
	add a,0ffh
	jp nz,0c611h
	rst 38h
	ret z
	pop af
	jp nz,0c611h
	pop af
	jp nz,0c611h
	rst 38h
	jp nz,0c6f1h
	rra
	jp nz,0c311h
	ld e,0c5h
	xor 0c3h
	pop af
	push bc
	ld e,0c3h
	rra
	push bc
	rst 38h
	jp 0c5f1h
	rst 38h
	jp 0c5f1h
	rst 38h
	jp 0c51fh
	rst 38h
	jp 0c81fh
	pop hl
	push bc
	xor 000h
	xor b
	nop
	ld c,b
	ret z
	xor 0c6h
	ld e,0c2h
	xor 0c6h
	rst 38h
	jp nz,0cef1h
	rst 38h
	jp nz,0c61fh
	pop hl
	jp nz,0c3eeh
	pop af
	push bc
	ld e,0c3h
	rst 38h
	push bc
	ld de,01fc3h
	push bc
	pop hl
	push bc
	ld de,0eec3h
	push bc
	ld de,01ec3h
	ret z
	pop af
	push bc
	rra
	jp 0c8e1h
	ld e,0c3h
	rst 38h
	push bc
	rra
	jp 0c5e1h
	xor 0c6h
	rra
	ret z
	pop hl
	jp nz,0c3eeh
	pop af
	push bc
	ld de,0e1c3h
	push bc
	xor 0c6h
	ld e,0c2h
	xor 001h
	ret z
	nop
	or (hl)
	set 5,(hl)
	push bc
	ld e,0c3h
	xor 0c5h
	ld de,0eec3h
	push bc
	pop hl
	jp 0c5eeh
	pop hl
	jp 0c5eeh
	ld e,0c8h
	ld h,c
	add a,066h
	jp nz,0c6f6h
	ld h,(hl)
	jp nz,0c86fh
	ld d,0c8h
	ld e,0c6h
	call z,0fcc2h
	add a,0cch
	jp nz,0c81fh
	inc e
	ret z
	pop hl
	ret z
	ld e,0c8h
	ld d,c
	add a,055h
	jp nz,0c6ffh
	ld d,l
	jp nz,0c85fh
	pop hl
	ret z
	and c
	add a,0aah
	jp nz,0c61ah
	xor d
	jp nz,0c8afh
	ld a,(de)
	ret z
	or 0c3h
	ld l,a
	push bc
	ld h,c
	jp 0c5f6h
	ld d,0c8h
	ld l,a
	ret z
	call m,01fc3h
	ret z
	rst 38h
	push bc
	pop af
	ret z
	ld e,a
	jp 0c51ah
	jp m,lafc8h
	ret z
	ld h,(hl)
	ret z
	call z,sub_55c8h
	ret z
	xor d
	add a,061h
	jp nz,0c61eh
	ld h,(hl)
	jp nz,0c611h
	ld d,0c2h
	pop hl
	add a,01eh
	jp nz,0c6eeh
	call z,011c2h
	add a,01ch
	ret z
	pop hl
	jp nz,0c6eeh
	ld e,0c2h
	xor 0c6h
	ld d,c
	jp nz,0c61eh
	ld d,l
	jp nz,0c611h
	pop hl
	jp nz,0c6eeh
	and c
	jp nz,0c61eh
	xor d
	jp nz,0c611h
	ld a,(de)
	jp nz,0c3e1h
	ld e,0c5h
	xor 0c3h
	ld de,0eec5h
	jp 0c5e1h
	xor 0c3h
	pop hl
	push bc
	xor 0c3h
	ld e,0c5h
	xor 001h
	nop
	nop
	ld a,h
	jp z,0ce00h
	ld bc,000d0h
	ld (bc),a
	inc bc
	adc a,004h
	inc bc
	dec b
	call 00600h
	rlca
	ret nc
	ex af,af'
	add hl,bc
	ld a,(bc)
	call z,00b00h
	jp nc,00c08h
	rlc b
	dec c
	ld c,0c2h
	ex af,af'
	rrca
	ld c,010h
	ld de,01312h
	djnz $+10
	rrca
	ld c,008h
	ld de,00e14h
	jp nz,00f08h
	dec d
	jp z,00d00h
	ld c,0c2h
	ex af,af'
	rrca
	ld d,010h
	ld de,00817h
	djnz $+10
	rrca
	ld c,008h
	ld de,00e0fh
	jp nz,00f08h
	dec d
	jp z,00d00h
	ld c,0c2h
	ex af,af'
	rrca
	ld c,010h
	ld de,01918h
	ld a,(de)
	jr $+17
	dec de
	inc e
	ld de,00e1dh
	jp nz,00f08h
	dec d
	jp z,01e00h
	rra
	jp nz,02008h
	ld hl,02322h
	inc b
	ld hl,004c2h
	jr nz,$+6
	ld (00423h),hl
	ld hl,008c2h
	inc h
	dec h
	call nz,00100h
	nop
	nop
	inc sp
	rst 0
	nop
	ld bc,0d002h
	inc bc
	inc b
	dec b
	call 00600h
	rlca
	adc a,003h
	rlca
	ex af,af'
	ret nc
	nop
	call nz,00a09h
	dec bc
	jp nz,00c03h
	push bc
	add hl,bc
	sub 000h
	dec c
	dec bc
	inc bc
	ld c,00fh
	in a,(000h)
	dec c
	dec bc
	djnz $+19
	call c,00d00h
	ld (de),a
	inc de
	defb 0ddh,000h,014h ;illegal sequence
	ld de,000f0h
	ld bc,00000h
	xor h
	jp po,00100h
	call nz,00302h
	jp nz,0c400h
	ld (bc),a
	inc b
	jp nz,00500h
	call nz,0c202h
	nop
	ld bc,002c4h
	inc bc
	call nz,00600h
	rlca
	ex af,af'
	rlca
	ex af,af'
	add hl,bc
	nop
	ld a,(bc)
	dec bc
	inc c
	dec bc
	inc c
	dec c
l7ae8h:
	ld c,00fh
	djnz l7afdh
	ld (de),a
	ld de,01312h
	nop
	inc d
	dec d
	ld d,015h
	ld d,017h
	call nz,00600h
	jr l7b15h
	ld a,(de)
l7afdh:
	dec de
l7afeh:
	add hl,bc
	nop
	ld a,(bc)
	inc e
	dec e
	inc e
	dec e
	dec c
	ld c,00fh
	djnz l7b28h
	rra
	ld e,01fh
	inc de
	nop
	inc d
	jr nz,l7b33h
	jr nz,$+35
	rla
l7b15h:
	call nz,00600h
	call nz,00922h
	nop
	ld a,(bc)
	call nz,00d23h
	ld c,00fh
	djnz l7ae8h
	inc h
	inc de
	nop
	inc d
l7b28h:
	call nz,01725h
	call nz,00600h
	call nz,00922h
	nop
	ld a,(bc)
l7b33h:
	call nz,00d23h
	ld c,00fh
	djnz l7afeh
	inc h
	inc de
	nop
	inc d
	call nz,01725h
	call nz,02600h
	call nz,02827h
	nop
	add hl,hl
	call nz,02b2ah
	inc l
	dec l
	ld l,0c4h
	cpl
	jr nc,l7b53h
l7b53h:
	ld sp,032c4h
	inc sp
	call nz,03400h
	call nz,03635h
	jp nz,0c400h
	dec (hl)
	scf
	jp nz,03800h
	call nz,0c235h
	nop
	inc (hl)
	call nz,03635h
	jp nz,00000h
	sub b
	nop
	ld h,h
	ret
	nop
	ld bc,01800h
	jp 0181ch
	nop
	rlca
	rrca
	ld h,e
	call nz,00047h
	inc a
	inc c
	ld (hl),e
	call nz,0003bh
	rlca
	inc bc
	jp 06171h
	inc bc
	jp 0c500h
	ld c,000h
	jp nz,0c61fh
	nop
	inc e
	ld a,h
	inc bc
	ld h,e
	jp 0c21ch
	nop
	jp nz,0c501h
	nop
	inc bc
	ld bc,0c370h
	rlca
	ld c,000h
	ld bc,01fc4h
	jp nz,0c300h
	jr c,$+30
	rra
	rlca
l7bb4h:
	jp nz,0c300h
	dec sp
l7bb8h:
	ld (hl),e
	inc e
	inc a
	jp nz,00700h
	jp nz,0c263h
	ld (hl),c
	ld a,b
	jp nz,0c600h
	ld c,0c2h
	nop
	call nz,0c81ch
	nop
	jp nz,0c201h
	nop
	inc e
	jr c,$+114
	rra
	call nz,00000h
	adc a,b
	nop
	ld (hl),e
	ret
	nop
	jp nz,0c201h
	ld (bc),a
	jp nz,00804h
	nop
	jp nz,0c27fh
	ld b,b
	jp nz,01020h
	ex af,af'
	jp nz,0c210h
	jr nz,l7bb4h
	ld b,b
	nop
	djnz l7bb8h
l7bf6h:
	ex af,af'
	jp nz,0c204h
	ld (bc),a
	push bc
	nop
	ld bc,01806h
	ld h,b
	ld bc,01907h
	ld h,c
	ld a,(hl)
	jp l7f01h
	rra
l7c0ah:
	ld h,a
	ld a,c
l7c0ch:
	ld a,(hl)
	jp 0c47fh
	nop
	ld a,a
	ld h,b
	jr l7c1bh
	ld h,b
	jr l7c1eh
	ld bc,000c4h
l7c1bh:
	jp l7e00h+1
l7c1eh:
	ld h,c
	add hl,de
	rlca
	ld bc,l7fc3h
	ld a,(hl)
	ld a,c
	ld h,a
	rra
	ld a,a
	ld b,018h
	ld h,b
	ld a,a
	push bc
	nop
	jp nz,0c240h
	jr nz,l7bf6h
	djnz l7c3eh
	nop
	jp nz,0c202h
	inc b
	jp nz,01008h
l7c3eh:
	ex af,af'
	jp nz,0c204h
	ld (bc),a
	jp nz,00001h
	djnz l7c0ah
	jr nz,l7c0ch
	ld b,b
	jp nz,0007fh
	nop
	jr z,l7c51h
l7c51h:
	ld e,0c8h
	nop
	rlca
	jr $+34
	jp nz,0c340h
	ld a,a
	rra
	jr $+6
	jp nz,0c302h
	ld bc,l7fc3h
	jp nz,02040h
	jr l7c70h
	jp 0c201h
	ld (bc),a
	inc b
	jr $+33
l7c70h:
	nop
	sub b
	nop
	ld d,a
	ret
	ld de,0c11fh
	rst 38h
	push bc
	rra
	ld de,0f1c2h
	push bc
	rra
	ld de,01fc2h
	push bc
	pop af
	ld de,01fc7h
	ld de,0ffc2h
	push bc
	pop af
	ld de,01fc2h
	add a,011h
	jp nz,0c2f1h
	rra
	jp 0c2f1h
	ld de,0f1c2h
	push bc
	ld de,01fc3h
	call nz,0c1f1h
	rst 38h
	push bc
	rra
	jp nz,0c611h
	pop af
	jp nz,0c411h
	pop af
	jp nz,0c21fh
	ld de,01fc6h
	jp nz,0c611h
	pop af
	jp nz,0c411h
	pop af
	jp nz,0c6ffh
	ld de,0f1c2h
	jp nz,0c311h
	pop af
	rra
	jp nz,0c2ffh
	ld de,l8800h
	nop
	add hl,sp
	ret
	ld de,0f1c7h
	ld de,01fc2h
	call z,0c1f1h
	rst 38h
	rst 0
	pop af
	pop bc
	rst 38h
	call nz,0c811h
	pop af
	rra
	jp 0c8f1h
	rra
	call nz,01f11h
	rst 0
	pop af
	call nz,0c311h
	pop af
	rra
	call nz,0c8f1h
	rra
	jp 01ff1h
	call nz,0c111h
	rst 38h
	rst 0
	pop af
	pop bc
	rst 38h
	adc a,0f1h
	ld de,0f1c5h
	jp nz,0111fh
	nop
	jr z,l7d0bh
l7d0bh:
	dec c
	ret z
	ld de,0f1c5h
	call nz,0c71fh
	pop af
	jp 0cc1fh
	pop af
	rra
	ld bc,00000h
	jr nc,$+1
	nop
	rst 38h
	nop
	rst 0
	nop
	ld bc,00302h
	inc b
	dec b
	ld b,000h
	rlca
	add a,000h
	ld bc,00302h
	inc b
	dec b
	ld b,008h
	add hl,bc
	jp z,00a00h
	dec bc
	inc c
	dec c
	ld c,0c2h
	nop
	rrca
	add a,000h
	ld a,(bc)
	dec bc
	inc c
	dec c
	ld c,000h
	djnz l7d5ah
	rst 38h
	nop
	add a,000h
	ld bc,00000h
	ld b,d
	ret z
	nop
	ld bc,0cc02h
	nop
	ld bc,0d002h
l7d5ah:
	nop
	inc bc
	inc b
	call z,00300h
	inc b
	defb 0edh ;next byte illegal after ed
	nop
	dec b
	ld b,0c4h
	nop
	rlca
	ex af,af'
	add a,000h
	dec b
	ld b,0c4h
	nop
	rlca
	ex af,af'
	jp z,00900h
	ld a,(bc)
	call nz,00b00h
	inc c
	add a,000h
	add hl,bc
	ld a,(bc)
	call nz,00b00h
	inc c
	defb 0edh ;next byte illegal after ed
	nop
	dec c
	ld c,0cch
	nop
	dec c
	ld c,0d0h
	nop
	rrca
	djnz l7d5ah
	nop
	rrca
	djnz l7d5ah
	nop
	ld bc,00000h
	jr z,$+1
	nop
	rst 0
	nop
	ld bc,0c202h
	nop
	ld bc,0c802h
	nop
	ld bc,0c202h
	nop
	ld bc,0cc02h
	nop
	inc bc
	inc b
	jp nz,00300h
	inc b
	ret z
	nop
	inc bc
	inc b
	jp nz,00300h
	inc b
	rst 38h
	nop
	rst 38h
	nop
	ret z
	nop
l7dbfh:
	nop
	jr nz,$+9
	rra
	inc a
	ld a,b
	ld a,c
	ld sp,hl
	ret m
	call m,0fffeh
	rst 38h
	ld a,e
	ld a,b
	inc a
	rra
	rlca
	ret po
	ret m
	inc a
	ld e,0deh
	rst 38h
	ld a,a
	ccf
	rra
	adc a,a
	rst 8
	adc a,01eh
	inc a
	ret m
	ret po
l7de1h:
	nop
	and b
	nop
	nop
	nop
	ld bc,00301h
	inc bc
	rlca
	rlca
	rrca
	rrca
	rra
	rra
	ccf
	ccf
	nop
	nop
	nop
	nop
	add a,b
	add a,b
	ret nz
	ret nz
	ret po
	ret po
	ret p
	ret p
	ret m
	ret m
l7e00h:
	call m,000fch
	nop
	nop
	ld h,b
	ld a,b
	ld a,(hl)
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,(hl)
	ld a,b
	ld h,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add a,b
	ret po
	ret m
	ret m
	ret po
	add a,b
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	ccf
	rra
	rra
	rrca
	rrca
	rlca
	rlca
	inc bc
	inc bc
	ld bc,00001h
	nop
	nop
	nop
	call m,0f8fch
	ret m
	ret p
	ret p
	ret po
	ret po
	ret nz
	ret nz
	add a,b
	add a,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,01f07h
	rra
	rlca
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld b,01eh
	ld a,(hl)
	cp 0feh
	cp 0feh
	cp 0feh
	ld a,(hl)
	ld e,006h
	nop
	nop
	nop
	rlca
	rra
	ccf
	ccf
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ld a,a
	ccf
	ccf
	rra
	rlca
	nop
	nop
	ret po
	ret m
	call m,0fefch
	cp 0feh
	cp 0feh
	cp 0fch
	call m,0e0f8h
	nop
l7e83h:
	rra
	pop af
	ld l,c
	sub (hl)
	jp nz,0472ch
	ld (hl),h
	ld h,(hl)
	call z,01144h
	xor 0ffh
	xor d
	defb 0ddh,01eh,0feh ;illegal sequence
	ld e,0feh
	ld e,0feh
	ld e,0feh
	rra
	pop af
	rst 28h
	cp 01fh
	pop af
	rst 28h
	cp 069h
	sub (hl)
	adc a,c
	sbc a,b
	ld l,c
	sub (hl)
	adc a,c
	sbc a,b
	jp 0233ch
	ld (03cc3h),a
	inc hl
	ld (l7447h),a
	ld d,a
	ld (hl),l
	ld b,a
	ld (hl),h
	ld d,a
	ld (hl),l
l7ebbh:
	ld d,d
	ld b,l
	ld b,d
	ld c,a
	ld c,a
	ld d,h
	ld c,c
	ld c,(hl)
	ld b,a
	ld l,02eh
	ld l,000h
l7ec8h:
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	dec c
	ld a,(bc)
	nop
l7ef2h:
	jr nz,l7f41h
	ld d,e
	ld e,b
	jr nz,l7f3ch
	ld c,c
	ld b,c
	ld b,a
	ld c,(hl)
	ld c,a
	ld d,e
	ld d,h
	ld c,c
l7f00h:
	ld b,e
l7f01h:
	ld d,e
	jr nz,l7f7ah
	ld sp,0322eh
	ld l,030h
	dec c
	ld a,(bc)
	nop
l7f0ch:
	dec c
	ld a,(bc)
	jr nz,$-48
	jr nz,l7f62h
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,$+69
	ld b,c
	ld c,(hl)
	ld b,e
	ld b,l
	ld c,h
	jr nz,l7f73h
	ld c,a
	jr nz,$+68
	ld b,c
	ld b,e
	ld c,e
	jr nz,$+86
	ld c,a
	jr nz,l7f7eh
	ld c,b
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l7f50h
	jr nz,$+79
	ld b,c
	ld c,c
	ld c,(hl)
	jr nz,l7f84h
	ld b,l
	ld c,(hl)
	ld d,l
	ld l,00dh
l7f3ch:
	ld a,(bc)
	nop
l7f3eh:
	dec c
l7f3fh:
	ld a,(bc)
l7f40h:
	dec c
l7f41h:
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l7f96h
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,$+67
	ld b,e
	ld b,e
	ld b,l
	ld d,b
l7f50h:
	ld d,h
	jr nz,$+86
	ld c,a
	jr nz,l7fa9h
	ld d,h
	ld b,c
	ld d,d
	ld d,h
	jr nz,l7fb0h
	ld c,b
	ld b,l
	jr nz,l7fb4h
	ld b,l
	ld d,e
l7f62h:
	ld d,h
	ld l,00dh
	ld a,(bc)
	nop
l7f67h:
	dec c
	ld a,(bc)
	jr nz,$+82
	ld b,c
	ld b,a
	ld b,l
	jr nz,l7fa1h
	jr nz,l7fc1h
	ld b,(hl)
l7f73h:
	jr nz,$+52
	dec c
	ld a,(bc)
	nop
l7f78h:
	dec c
	ld a,(bc)
l7f7ah:
	jr nz,l7f9ch
	jr nz,$+51
l7f7eh:
	ld l,020h
	ld d,e
	ld b,e
	ld d,d
	ld b,l
l7f84h:
	ld b,l
	ld c,(hl)
	jr nz,l7fb8h
	dec c
	ld a,(bc)
	jr nz,l7fach
	jr nz,l7fc0h
	ld l,020h
	ld d,e
	ld b,e
	ld d,d
	ld b,l
	ld b,l
	ld c,(hl)
l7f96h:
	jr nz,l7fc9h
	dec c
	ld a,(bc)
	jr nz,l7fbch
l7f9ch:
	jr nz,l7fd1h
	ld l,020h
	ld d,e
l7fa1h:
	ld b,e
	ld d,d
	ld b,l
	ld b,l
	ld c,(hl)
	jr nz,l7fdah
	dec c
l7fa9h:
	ld a,(bc)
	jr nz,$+34
l7fach:
	jr nz,l7fe2h
	ld l,020h
l7fb0h:
	ld d,e
	ld b,e
	ld d,d
	ld b,l
l7fb4h:
	ld b,l
	ld c,(hl)
	jr nz,l7febh
l7fb8h:
	dec c
	ld a,(bc)
	jr nz,l7fdch
l7fbch:
	jr nz,l7ff3h
	ld l,020h
l7fc0h:
	ld d,e
l7fc1h:
	ld d,b
	ld d,d
l7fc3h:
	ld c,c
	ld d,h
	ld b,l
	ld d,e
l7fc7h:
	dec c
l7fc8h:
	ld a,(bc)
l7fc9h:
	jr nz,l7febh
	jr nz,l8003h
	ld l,020h
	ld c,l
	ld c,a
l7fd1h:
	ld c,(hl)
	ld c,c
	ld d,h
	ld c,a
	ld d,d
	jr nz,l801bh
	ld c,a
	ld c,h
l7fdah:
	ld c,a
	ld d,d
l7fdch:
	dec c
	ld a,(bc)
	jr nz,l8000h
	jr nz,l801bh
l7fe2h:
	ld l,020h
	ld d,d
	ld b,l
	ld b,d
	ld c,a
	ld c,a
	ld d,h
	dec c
l7febh:
	ld a,(bc)
	jr nz,l800eh
	jr nz,$+50
	ld l,020h
	ld c,(hl)
l7ff3h:
	ld b,l
	ld e,b
	ld d,h
	jr nz,l8036h
	ld a,00dh
	ld a,(bc)
	nop
l7ffch:
	dec c
	ld a,(bc)
	jr nz,l8050h
l8000h:
	ld b,c
	ld b,a
	ld b,l
l8003h:
	jr nz,l8037h
	jr nz,l8056h
	ld b,(hl)
	jr nz,l803ch
	dec c
	ld a,(bc)
	nop
l800dh:
	dec c
l800eh:
	ld a,(bc)
	jr nz,l8031h
	jr nz,l8044h
	ld l,020h
	ld c,e
	ld b,l
	ld e,c
	ld b,d
	ld c,a
	ld b,c
l801bh:
	ld d,d
	ld b,h
	dec c
	ld a,(bc)
	jr nz,l8041h
	jr nz,l8055h
	ld l,020h
	ld c,d
	ld c,a
	ld e,c
	ld d,e
	ld d,h
	ld c,c
	ld b,e
	ld c,e
	dec c
	ld a,(bc)
	jr nz,$+34
l8031h:
	jr nz,l8066h
	ld l,020h
	ld d,b
l8036h:
	ld d,e
l8037h:
	ld b,a
	dec c
	ld a,(bc)
	jr nz,l805ch
l803ch:
	jr nz,l8072h
	ld l,020h
	ld c,l
l8041h:
	ld c,c
	ld e,b
	ld b,l
l8044h:
	ld b,h
	jr nz,l8094h
	ld c,a
	ld b,h
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l806eh
	jr nz,$+55
l8050h:
	ld l,020h
	ld d,e
	ld e,c
	ld d,e
l8055h:
	ld d,h
l8056h:
	ld b,l
	ld c,l
	jr nz,$+75
	ld c,(hl)
	ld b,(hl)
l805ch:
	ld c,a
	jr nz,l806ch
	ld a,(bc)
	jr nz,l8082h
	jr nz,$+56
	ld l,020h
l8066h:
	ld d,d
	ld b,c
	ld c,l
	jr nz,l80b7h
	ld b,c
l806ch:
	ld e,c
	ld c,a
l806eh:
	ld d,l
	ld d,h
	dec c
	ld a,(bc)
l8072h:
	jr nz,l8094h
	jr nz,l80afh
	ld l,020h
	ld d,d
	ld b,l
	ld b,d
	ld c,a
	ld c,a
	ld d,h
	dec c
	ld a,(bc)
	jr nz,l80a2h
l8082h:
	jr nz,l80b4h
	ld l,020h
	ld b,d
	ld b,c
	ld b,e
	ld c,e
	jr nz,$+62
	inc a
	dec c
	ld a,(bc)
	nop
l8090h:
	dec c
	ld a,(bc)
	jr nz,l80d5h
l8094h:
	ld b,e
	ld b,e
	ld b,l
	ld d,b
	ld d,h
	ld a,(05320h)
	ld d,b
	ld b,c
	ld b,e
	ld b,l
	jr nz,$+49
l80a2h:
	jr nz,l80e6h
	ld d,l
	ld d,h
	ld d,h
	ld c,a
	ld c,(hl)
	jr nz,l80dch
	dec c
	ld a,(bc)
	jr nz,l80f2h
l80afh:
	ld b,c
	ld c,(hl)
	ld b,e
	ld b,l
	ld c,h
l80b4h:
	ld a,(04520h)
l80b7h:
	ld d,e
	ld b,e
	jr nz,l80eah
	jr nz,$+68
	ld d,l
	ld d,h
	ld d,h
	ld c,a
	ld c,(hl)
	jr nz,l80f6h
	dec c
	ld a,(bc)
	nop
l80c7h:
	jr nz,l80f1h
	ld h,e
	ld h,e
	add hl,hl
	jr nz,l8100h
	jr nc,l8101h
	jr c,$+47
	ld (03230h),a
l80d5h:
	jr nc,l80f7h
	ld b,d
	ld e,c
	jr nz,l811eh
	ld b,l
l80dch:
	ld d,e
	ld b,c
	ld d,d
	jr nz,$+84
	ld c,c
	ld c,(hl)
	ld b,e
	ld c,a
	ld c,(hl)
l80e6h:
	dec c
	ld a,(bc)
	jr nz,l8152h
l80eah:
	ld (hl),h
	ld (hl),h
	ld (hl),b
	ld (hl),e
	ld a,(02f2fh)
l80f1h:
	ld l,(hl)
l80f2h:
	ld l,c
	ld h,a
	ld l,b
	ld (hl),h
l80f6h:
	ld h,(hl)
l80f7h:
	ld l,a
	ld a,b
	ld h,c
	ld l,(hl)
	ld h,h
	ld h,e
	ld l,a
	ld l,063h
l8100h:
	ld l,a
l8101h:
	ld l,l
	cpl
	dec c
	ld a,(bc)
	nop
l8106h:
	ret nz
	nop
l8108h:
	jr nz,l810ah
l810ah:
	dec c
	ld a,(bc)
	jr nz,l8161h
	ld b,e
	ld d,d
	ld b,l
	ld b,l
	ld c,(hl)
	jr nz,$+50
	jr nz,l816bh
	ld b,l
	ld d,e
	ld d,h
	dec c
	ld a,(bc)
	nop
l811dh:
	dec c
l811eh:
	ld a,(bc)
	jr nz,$-48
	jr nz,$+82
	ld d,d
l8124h:
	ld b,l
	ld d,e
	ld d,e
	jr nz,l817bh
	ld c,c
	ld b,a
	ld c,b
	ld d,h
	cpl
	ld c,h
	ld b,l
	ld b,(hl)
	ld d,h
	jr nz,$+86
	ld c,a
	jr nz,l817ah
	ld c,b
	ld b,c
	ld c,(hl)
	ld b,a
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l8160h
	jr nz,l8196h
	ld c,b
	ld b,l
	jr nz,l819ah
	ld b,l
	ld e,b
	ld d,h
	jr nz,l818eh
	ld c,a
	ld c,h
	ld c,a
	ld d,d
	ld l,00dh
	ld a,(bc)
l8152h:
	dec c
	ld a,(bc)
	jr nz,l8124h
	jr nz,l81a8h
	ld d,d
	ld b,l
	ld d,e
	ld d,e
l815ch:
	jr nz,l81b3h
	ld d,b
	cpl
l8160h:
	ld b,h
l8161h:
	ld c,a
	ld d,a
	ld c,(hl)
	jr nz,l81bah
	ld c,a
	jr nz,l81ach
	ld c,b
	ld b,c
l816bh:
	ld c,(hl)
	ld b,a
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l8192h
	jr nz,l81c8h
	ld c,b
	ld b,l
	jr nz,l81bah
	ld b,c
	ld b,e
l817ah:
	ld c,e
l817bh:
	ld b,a
	ld d,d
	ld c,a
	ld d,l
	ld c,(hl)
	ld b,h
	jr nz,l81c6h
	ld c,a
	ld c,h
	ld c,a
	ld d,d
	ld l,00dh
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l815ch
l818eh:
	jr nz,l81e0h
	ld d,d
	ld b,l
l8192h:
	ld d,e
	ld d,e
	jr nz,l81d7h
l8196h:
	ld b,e
	ld b,e
l8198h:
	ld b,l
	ld d,b
l819ah:
	ld d,h
	jr nz,l81f1h
	ld c,a
	jr nz,l81f2h
	ld b,l
	ld d,e
	ld d,h
	ld c,a
	ld d,d
	ld b,l
	jr nz,l81ech
l81a8h:
	ld b,l
	ld b,(hl)
	ld b,c
	ld d,l
l81ach:
	ld c,h
	ld d,h
	ld d,e
	ld l,00dh
	ld a,(bc)
	nop
l81b3h:
	dec c
	ld a,(bc)
	jr nz,l820ah
	ld b,e
	ld d,d
	ld b,l
l81bah:
	ld b,l
	ld c,(hl)
	jr nz,l81efh
	jr nz,l8214h
	ld b,l
	ld d,e
	ld d,h
	dec c
	ld a,(bc)
	nop
l81c6h:
	dec c
	ld a,(bc)
l81c8h:
	jr nz,l8198h
	jr nz,$+82
	ld d,d
l81cdh:
	ld b,l
	ld d,e
	ld d,e
	jr nz,l8224h
	ld c,c
	ld b,a
	ld c,b
	ld d,h
	cpl
l81d7h:
	ld c,h
	ld b,l
	ld b,(hl)
	ld d,h
	jr nz,$+86
	ld c,a
	jr nz,l8223h
l81e0h:
	ld c,b
	ld b,c
	ld c,(hl)
	ld b,a
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l8209h
	jr nz,l823fh
	ld c,b
l81ech:
	ld b,l
	jr nz,l8243h
l81efh:
	ld b,l
	ld e,b
l81f1h:
	ld d,h
l81f2h:
	jr nz,l8237h
	ld c,a
	ld c,h
	ld c,a
	ld d,d
	ld l,00dh
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l81cdh
	jr nz,l8251h
	ld d,d
	ld b,l
	ld d,e
	ld d,e
l8205h:
	jr nz,l825ch
	ld d,b
	cpl
l8209h:
	ld b,h
l820ah:
	ld c,a
	ld d,a
	ld c,(hl)
	jr nz,l8263h
	ld c,a
	jr nz,$+69
	ld c,b
	ld b,c
l8214h:
	ld c,(hl)
	ld b,a
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l823bh
	jr nz,$+86
	ld c,b
	ld b,l
	jr nz,l8263h
	ld b,c
	ld b,e
l8223h:
	ld c,e
l8224h:
	ld b,a
	ld d,d
	ld c,a
	ld d,l
	ld c,(hl)
	ld b,h
	jr nz,l826fh
	ld c,a
	ld c,h
	ld c,a
	ld d,d
	ld l,00dh
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l8205h
l8237h:
	jr nz,l8289h
	ld d,d
	ld b,l
l823bh:
	ld d,e
	ld d,e
	jr nz,l8280h
l823fh:
	ld b,e
	ld b,e
	ld b,l
	ld d,b
l8243h:
	ld d,h
	jr nz,l829ah
	ld c,a
	jr nz,l828ch
	ld c,b
	ld b,c
	ld c,(hl)
l824ch:
	ld b,a
	ld b,l
	jr nz,l82a4h
	ld c,b
l8251h:
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l8276h
	jr nz,l829ah
	ld c,a
	ld d,d
	ld b,h
	ld b,l
l825ch:
	ld d,d
	jr nz,$+69
	ld c,a
	ld c,h
	ld c,a
	ld d,d
l8263h:
	ld l,00dh
	ld a,(bc)
	nop
l8267h:
	dec c
	ld a,(bc)
	jr nz,l82beh
	ld b,e
	ld d,d
	ld b,l
	ld b,l
l826fh:
	ld c,(hl)
	jr nz,l82a4h
	jr nz,l82c8h
	ld b,l
	ld d,e
l8276h:
	ld d,h
	dec c
	ld a,(bc)
	nop
l827ah:
	dec c
	ld a,(bc)
l827ch:
	jr nz,l824ch
	jr nz,l82d0h
l8280h:
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,l82d8h
	ld c,c
	ld b,a
	ld c,b
l8289h:
	ld d,h
	cpl
	ld c,h
l828ch:
	ld b,l
	ld b,(hl)
	ld d,h
	jr nz,l82e5h
	ld c,a
	jr nz,l82d7h
	ld c,b
	ld b,c
	ld c,(hl)
	ld b,a
	ld b,l
	dec c
l829ah:
	ld a,(bc)
	jr nz,$+34
	jr nz,l82f3h
	ld c,b
	ld b,l
	jr nz,l82ech
	ld c,l
l82a4h:
	ld b,c
	ld b,a
	ld b,l
	ld l,00dh
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l827ch
	jr nz,l8300h
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,$+87
	ld d,b
	cpl
	ld b,h
	ld c,a
	ld d,a
	ld c,(hl)
	jr nz,l8312h
l82beh:
	ld c,a
	jr nz,l8304h
	ld c,b
	ld b,c
	ld c,(hl)
l82c4h:
	ld b,a
	ld b,l
	jr nz,l831ch
l82c8h:
	ld c,b
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l82eeh
	jr nz,l8312h
l82d0h:
	ld c,a
	ld d,d
	ld b,h
	ld b,l
	ld d,d
	jr nz,$+69
l82d7h:
	ld c,a
l82d8h:
	ld c,h
	ld c,a
	ld d,d
	ld l,00dh
	ld a,(bc)
	nop
l82dfh:
	dec c
	ld a,(bc)
	jr nz,l8336h
	ld b,e
	ld d,d
l82e5h:
	ld b,l
	ld b,l
	ld c,(hl)
	jr nz,l831dh
	jr nz,l8340h
l82ech:
	ld b,l
	ld d,e
l82eeh:
	ld d,h
	dec c
	ld a,(bc)
	nop
l82f2h:
	dec c
l82f3h:
	ld a,(bc)
	jr nz,l82c4h
l82f6h:
	jr nz,l8348h
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,$+84
	ld c,c
	ld b,a
l8300h:
	ld c,b
	ld d,h
	cpl
	ld c,h
l8304h:
	ld b,l
	ld b,(hl)
	ld d,h
	jr nz,l835dh
	ld c,a
	jr nz,l834fh
	ld c,b
	ld b,c
	ld c,(hl)
	ld b,a
	ld b,l
	dec c
l8312h:
	ld a,(bc)
	jr nz,l8335h
	jr nz,$+86
	ld c,b
	ld b,l
	jr nz,$+82
	ld b,c
l831ch:
	ld d,h
l831dh:
	ld d,h
	ld b,l
	ld d,d
	ld c,(hl)
	ld l,00dh
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l82f6h
	jr nz,l837ah
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,l8385h
	ld d,b
	cpl
	ld b,h
	ld c,a
	ld d,a
l8335h:
	ld c,(hl)
l8336h:
	jr nz,l838ch
	ld c,a
	jr nz,l837eh
	ld c,b
	ld b,c
	ld c,(hl)
	ld b,a
	ld b,l
l8340h:
	jr nz,l8396h
	ld c,b
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l8368h
l8348h:
	jr nz,l838ch
l834ah:
	ld c,a
	ld d,d
	ld b,h
	ld b,l
	ld d,d
l834fh:
	jr nz,l8394h
	ld c,a
	ld c,h
	ld c,a
	ld d,d
	ld l,00dh
	ld a,(bc)
	nop
l8359h:
	dec c
	ld a,(bc)
	jr nz,l83b0h
l835dh:
	ld d,b
	ld d,d
	ld c,c
	ld d,h
	ld b,l
	ld d,e
	jr nz,l83b9h
	ld b,l
	ld d,e
	ld d,h
l8368h:
	jr nz,l8392h
	ld sp,07836h
	ld sp,02036h
	ld c,l
	ld c,a
	ld b,h
	ld b,l
	add hl,hl
	dec c
	ld a,(bc)
	nop
l8378h:
	dec c
	ld a,(bc)
l837ah:
	jr nz,l834ah
	jr nz,$+82
l837eh:
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,l83c5h
	ld b,e
l8385h:
	ld b,e
	ld b,l
	ld d,b
	ld d,h
	jr nz,l83dfh
	ld c,a
l838ch:
	jr nz,l83e1h
	ld d,h
	ld b,c
	ld d,d
	ld d,h
l8392h:
	cpl
	ld d,e
l8394h:
	ld d,h
	ld c,a
l8396h:
	ld d,b
	jr nz,l83edh
	ld c,b
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l83bfh
	jr nz,l83f4h
	ld d,b
	ld d,d
	ld c,c
	ld d,h
	ld b,l
	ld d,e
	jr nz,l83f6h
	ld c,a
	ld d,(hl)
	ld b,l
	ld c,l
	ld b,l
	ld c,(hl)
	ld d,h
l83b0h:
	ld l,00dh
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l8385h
	jr nz,$+82
l83b9h:
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,l8414h
l83bfh:
	ld d,b
l83c0h:
	jr nz,l8416h
	ld c,a
	jr nz,l8417h
l83c5h:
	ld b,l
	ld d,e
	ld b,l
	ld d,h
	jr nz,l841fh
	ld c,b
	ld b,l
	jr nz,l841fh
	ld c,a
	ld d,e
	ld c,c
	ld d,h
	ld c,c
	ld c,a
	ld c,(hl)
	ld d,e
	ld l,00dh
	ld a,(bc)
	nop
l83dbh:
	dec c
	ld a,(bc)
	jr nz,l842ah
l83dfh:
	ld b,l
	ld e,c
l83e1h:
	ld b,d
	ld c,a
	ld b,c
	ld d,d
	ld b,h
	jr nz,l843ch
	ld b,l
l83e9h:
	ld d,e
	ld d,h
	dec c
	ld a,(bc)
l83edh:
	nop
l83eeh:
	dec c
	ld a,(bc)
	jr nz,l83c0h
	jr nz,l8444h
l83f4h:
	ld d,d
	ld b,l
l83f6h:
	ld d,e
	ld d,e
	jr nz,l843bh
	ld c,(hl)
	ld b,h
	jr nz,$+84
	ld b,l
	ld c,h
	ld b,l
	ld b,c
	ld d,e
	ld b,l
	jr nz,$+86
	ld c,b
	ld b,l
	jr nz,l8455h
	ld b,l
	ld e,c
	jr nz,l8462h
	ld c,a
	jr nz,$+86
	ld b,l
	ld d,e
	ld d,h
l8414h:
	ld l,00dh
l8416h:
	ld a,(bc)
l8417h:
	dec c
	ld a,(bc)
	jr nz,l83e9h
	jr nz,l8474h
	ld c,b
	ld b,l
l841fh:
	ld c,(hl)
	jr nz,$+67
	jr nz,l846fh
	ld b,l
	ld e,c
	jr nz,$+82
	ld d,d
	ld b,l
l842ah:
	ld d,e
	ld d,e
	jr nz,l847dh
	ld d,d
	jr nz,l8483h
	ld b,l
	ld c,h
	ld b,l
	ld b,c
	ld d,e
	ld b,l
	jr nz,l8482h
	ld d,e
	dec c
l843bh:
	ld a,(bc)
l843ch:
	jr nz,l845eh
	jr nz,$+70
	ld b,l
	ld d,h
	ld b,l
	ld b,e
l8444h:
	ld d,h
	ld b,l
	ld b,h
	inc l
	jr nz,l84a3h
	ld c,a
	ld d,l
	daa
	ld c,h
	ld c,h
	jr nz,l8493h
	ld b,l
	jr nz,l84abh
	ld b,c
l8455h:
	ld d,d
	ld c,(hl)
	ld b,l
l8458h:
	ld b,h
	jr nz,l84b2h
	ld c,c
	ld d,h
	ld c,b
l845eh:
	jr nz,l84a1h
	dec c
	ld a,(bc)
l8462h:
	jr nz,$+34
	jr nz,l84bah
	ld b,l
	ld e,b
	ld d,h
	inc l
	jr nz,l84afh
	ld c,a
	ld c,h
	ld c,a
l846fh:
	ld d,d
	jr nz,$+69
	ld c,b
	ld b,c
l8474h:
	ld c,(hl)
	ld b,a
	ld b,l
	jr nz,l84bah
	ld c,(hl)
	ld b,h
	jr nz,l84beh
l847dh:
	jr nz,l84d2h
	ld c,a
	ld d,l
	ld c,(hl)
l8482h:
	ld b,h
l8483h:
	ld l,00dh
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l8458h
	jr nz,l84dch
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,l84e5h
	ld c,b
l8493h:
	ld c,c
	ld b,(hl)
	ld d,h
	jr nz,l84c3h
	jr nz,l84dfh
	ld d,e
	ld b,e
	jr nz,l84edh
	ld d,d
	jr nz,l84e3h
l84a1h:
	ld d,l
	ld d,h
l84a3h:
	ld d,h
	ld c,a
	ld c,(hl)
	jr nz,l84dah
	jr nz,l84feh
	ld c,a
l84abh:
	dec c
	ld a,(bc)
	jr nz,l84cfh
l84afh:
	jr nz,l84f3h
	ld b,c
l84b2h:
	ld b,e
	ld c,e
	jr nz,l850ah
	ld c,a
	jr nz,$+86
	ld c,b
l84bah:
	ld b,l
	jr nz,l850ah
	ld b,c
l84beh:
	ld c,c
	ld c,(hl)
	jr nz,l850fh
	ld b,l
l84c3h:
	ld c,(hl)
	ld d,l
	ld l,00dh
	ld a,(bc)
	nop
l84c9h:
	ld d,b
	ld c,h
	ld b,l
	ld b,c
	ld d,e
	ld b,l
l84cfh:
	inc l
	jr nz,l8524h
l84d2h:
	ld b,l
	ld c,h
	ld b,l
	ld b,c
	ld d,e
	ld b,l
	jr nz,l851bh
l84dah:
	ld c,h
	ld c,h
l84dch:
	jr nz,l8532h
	ld c,b
l84dfh:
	ld b,l
	jr nz,l852dh
	ld b,l
l84e3h:
	ld e,c
	ld d,e
l84e5h:
	ld l,02eh
	ld l,000h
l84e9h:
	ld c,e
	ld b,l
	ld e,c
	ld b,d
l84edh:
	ld c,a
	ld b,c
	ld d,d
	ld b,h
	jr nz,l8547h
l84f3h:
	ld b,l
	ld d,e
	ld d,h
	jr nz,l854ah
	ld b,l
	ld b,c
	ld b,h
	ld e,c
	ld l,02eh
l84feh:
	ld l,00dh
l8500h:
	ld a,(bc)
	dec c
	ld a,(bc)
	nop
l8504h:
	jr nz,$+75
	ld d,e
	jr nz,$+70
	ld c,a
l850ah:
	ld d,a
	ld c,(hl)
	ld l,00dh
	ld a,(bc)
l850fh:
	nop
l8510h:
	jr nz,$+75
	ld d,e
	jr nz,l856ah
	ld d,b
	ld l,00dh
	ld a,(bc)
	nop
l851ah:
	dec c
l851bh:
	ld a,(bc)
	jr nz,l8568h
	ld c,a
	ld e,c
	ld d,e
	ld d,h
	ld c,c
	ld b,e
l8524h:
	ld c,e
	ld d,e
	jr nz,l857ch
	ld b,l
	ld d,e
	ld d,h
	dec c
	ld a,(bc)
l852dh:
	nop
l852eh:
	dec c
	ld a,(bc)
	jr nz,l8500h
l8532h:
	jr nz,l8588h
	ld b,l
	ld d,e
	ld d,h
	jr nz,$+86
	ld c,b
	ld b,l
	jr nz,l8571h
	jr nz,l8583h
	ld c,c
	ld d,d
	ld b,l
l8542h:
	ld b,e
	ld d,h
	ld c,c
	ld c,a
	ld c,(hl)
l8547h:
	ld d,e
	jr nz,l858bh
l854ah:
	ld c,(hl)
	ld b,h
	jr nz,l8580h
	jr nz,$+68
	ld d,l
	ld d,h
	ld d,h
	ld c,a
	ld c,(hl)
	ld d,e
	dec c
	ld a,(bc)
	jr nz,l857ah
	jr nz,l85abh
	ld b,(hl)
	jr nz,l85b3h
	ld c,b
	ld b,l
	jr nz,l8595h
	jr nz,l85afh
	ld c,a
	ld e,c
	ld d,e
l8568h:
	ld d,h
	ld c,c
l856ah:
	ld b,e
	ld c,e
	ld d,e
	ld l,00dh
	ld a,(bc)
	dec c
l8571h:
	ld a,(bc)
	jr nz,l8542h
	jr nz,$+69
	ld c,a
	ld c,h
	ld c,a
	ld d,d
l857ah:
	jr nz,l85cbh
l857ch:
	ld b,(hl)
	jr nz,l85d3h
	ld c,b
l8580h:
	ld b,l
	jr nz,l85cch
l8583h:
	ld c,(hl)
	ld b,h
	ld c,c
l8586h:
	ld b,e
	ld b,c
l8588h:
	ld d,h
	ld c,a
	ld d,d
l858bh:
	ld d,e
	jr nz,$+89
	ld c,c
	ld c,h
	ld c,h
	jr nz,l85d6h
	ld c,b
	ld b,c
l8595h:
	ld c,(hl)
	ld b,a
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l85bch
	jr nz,l85e7h
	ld b,(hl)
	jr nz,$+82
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,l85f0h
	ld d,e
	jr nz,l85eeh
	ld b,l
l85abh:
	ld d,h
	ld b,l
	ld b,e
	ld d,h
l85afh:
	ld b,l
	ld b,h
	ld l,00dh
l85b3h:
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l8586h
	jr nz,$+82
	ld d,d
	ld b,l
l85bch:
	ld d,e
	ld d,e
	jr nz,$+76
	ld c,a
	ld e,c
	ld sp,05520h
	ld d,b
	jr nz,l85f3h
	jr nz,$+68
	ld d,l
l85cbh:
	ld d,h
l85cch:
	ld d,h
	ld c,a
	ld c,(hl)
	jr nz,l8602h
	jr nz,l8622h
l85d3h:
	ld d,d
	jr nz,l861bh
l85d6h:
	ld d,e
	ld b,e
	dec c
l85d9h:
	ld a,(bc)
	jr nz,$+34
	jr nz,l8632h
	ld c,a
	jr nz,l8623h
	ld b,c
	ld b,e
	ld c,e
	jr nz,$+86
	ld c,a
l85e7h:
	jr nz,l863dh
	ld c,b
	ld b,l
	jr nz,$+79
	ld b,c
l85eeh:
	ld c,c
	ld c,(hl)
l85f0h:
	jr nz,l863fh
	ld b,l
l85f3h:
	ld c,(hl)
	ld d,l
	ld l,00dh
	ld a,(bc)
	nop
l85f9h:
	dec c
	ld a,(bc)
	jr nz,l864dh
	ld d,e
	ld b,a
	jr nz,l8655h
	ld b,l
l8602h:
	ld d,e
	ld d,h
	dec c
	ld a,(bc)
	nop
l8607h:
	dec c
	ld a,(bc)
	jr nz,l85d9h
	jr nz,$+82
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,$+87
	ld d,b
	cpl
	ld b,h
	ld c,a
	ld d,a
	ld c,(hl)
	jr nz,$+86
l861bh:
	ld c,a
	jr nz,l8661h
	ld c,b
	ld b,c
	ld c,(hl)
	ld b,a
l8622h:
	ld b,l
l8623h:
	dec c
	ld a,(bc)
	jr nz,l8647h
	jr nz,$+86
	ld c,b
	ld b,l
	jr nz,l867ch
	ld d,b
	ld d,h
	ld c,c
	ld c,a
	ld c,(hl)
l8632h:
	ld l,00dh
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l8607h
	jr nz,l868bh
	ld d,d
	ld b,l
l863dh:
	ld d,e
	ld d,e
l863fh:
	jr nz,$+78
	ld b,l
	ld b,(hl)
	ld d,h
	cpl
	ld d,d
	ld c,c
l8647h:
	ld b,a
	ld c,b
	ld d,h
	jr nz,$+86
	ld c,a
l864dh:
	jr nz,l8692h
	ld c,b
	ld b,c
	ld c,(hl)
	ld b,a
	ld b,l
	dec c
l8655h:
	ld a,(bc)
	jr nz,$+34
	jr nz,$+86
	ld c,b
	ld b,l
	jr nz,$+88
	ld b,c
	ld c,h
	ld d,l
l8661h:
	ld b,l
	ld l,00dh
	ld a,(bc)
	nop
l8666h:
	push bc
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
l867ch:
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
l868bh:
	jp 00dc6h
	ld a,(bc)
	call nz,02020h
l8692h:
	jr nz,l86e4h
	ld d,e
	ld b,a
	jr nz,l86ech
	ld b,l
	ld d,e
	ld d,h
	jr nz,$+34
	jr nz,l86bfh
	jr nz,$+34
	jr nz,$+34
	jr nz,l86c5h
	jr nz,$+34
	jr nz,$+34
	jr nz,l86cbh
	jr nz,$+34
	jr nz,$+34
	jr nz,l86d1h
	jr nz,$+34
	jr nz,$+34
	call nz,00a0dh
	ret
	jp 0c3c3h
l86bch:
	jp 0ccc3h
l86bfh:
	jp 0c3c3h
	jp 0c3c3h
l86c5h:
	jp 0c3cch
	jp 0c3c3h
l86cbh:
	jp 0c3c3h
	call z,0c3c3h
l86d1h:
	jp 0c3c3h
	jp 0ccc3h
	jp 0c3c3h
	jp 0c3c3h
	jp 00dcah
	ld a,(bc)
	call nz,04620h
l86e4h:
	ld d,d
	ld d,c
	jr nz,$-58
	jr nz,l870ah
	ld c,a
	ld b,(hl)
l86ech:
	ld b,(hl)
	jr nz,$+34
	call nz,03320h
	jr nc,$+50
	ld c,b
	ld e,d
	jr nz,l86bch
	jr nz,$+55
	jr nc,$+50
	ld c,b
	ld e,d
l86feh:
	jr nz,$-58
	jr nz,l8733h
	ld c,e
	ld c,b
	ld e,d
	jr nz,$+34
	call nz,00a0dh
l870ah:
	ret
	jp 0c3c3h
l870eh:
	jp 0cbc3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3cbh
	jp 0c3c3h
	jp 0c3c3h
	set 0,e
	jp 0c3c3h
	jp 0c3c3h
	set 0,e
	jp 0c3c3h
	jp 0c3c3h
	jp z,00a0dh
l8733h:
	call nz,0c020h
	jr nz,$+67
	jr nz,l86feh
	jr nz,l875ch
	jr nz,$-61
	jr nz,l8760h
	jr nz,$-58
	jr nz,$+34
	jr nz,$-60
	jr nz,$+34
	jr nz,l870eh
	jr nz,l876ch
	jr nz,$-60
	jr nz,$+34
l8750h:
	jr nz,$-58
	jr nz,l8774h
	jr nz,$-60
	jr nz,$+34
l8758h:
	jr nz,$-58
l875ah:
	dec c
	ld a,(bc)
l875ch:
	ret
	jp 0c3c3h
l8760h:
	jp 0cbc3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3cbh
l876ch:
	jp 0c3c3h
	jp 0c3c3h
	set 0,e
l8774h:
	jp 0c3c3h
	jp 0c3c3h
	set 0,e
	jp 0c3c3h
	jp 0c3c3h
	jp z,00a0dh
	call nz,02020h
	jr nz,l87cch
	jr nz,l8750h
	jr nz,l87aeh
	jr nz,$-61
	jr nz,l87b2h
	jr nz,l8758h
	jr nz,$+34
	jr nz,l875ah
	jr nz,$+34
	jr nz,l8760h
	jr nz,l87beh
	jr nz,$-60
	jr nz,$+34
l87a2h:
	jr nz,$-58
	jr nz,l87c6h
	jr nz,$-60
	jr nz,$+34
l87aah:
	jr nz,$-58
l87ach:
	dec c
	ld a,(bc)
l87aeh:
	ret
	jp 0c3c3h
l87b2h:
	jp 0cbc3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3cbh
l87beh:
	jp 0c3c3h
	jp 0c3c3h
	set 0,e
l87c6h:
	jp 0c3c3h
	jp 0c3c3h
l87cch:
	set 0,e
	jp 0c3c3h
	jp 0c3c3h
	jp z,00a0dh
	call nz,02020h
	jr nz,l881fh
	jr nz,l87a2h
	jr nz,l8800h
	jr nz,$-61
	jr nz,l8804h
	jr nz,l87aah
	jr nz,$+34
	jr nz,l87ach
	jr nz,$+34
	jr nz,l87b2h
	jr nz,l8810h
	jr nz,$-60
	jr nz,$+34
	jr nz,$-58
	jr nz,$+34
	jr nz,$-60
	jr nz,l881ch
	jr nz,$-58
	dec c
	ld a,(bc)
l8800h:
	ret
	jp 0c3c3h
l8804h:
	jp 0cdc3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3cbh
l8810h:
	jp 0c3c3h
	jp 0c3c3h
	call 0c3c3h
	jp 0c3c3h
l881ch:
	jp 0cdc3h
l881fh:
	jp 0c3cch
	jp 0c3c3h
	jp 00dcah
	ld a,(bc)
	call nz,02020h
	jr nz,l8884h
	ld c,a
	ld c,h
	ld d,l
	ld c,l
	ld b,l
	jr nz,$+67
	jr nz,$+34
	call nz,0c120h
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	jr nz,$-58
	jr nz,$+34
	jr nz,l886eh
	jr nz,$-58
	dec c
	ld a,(bc)
	ret
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3cbh
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
l886eh:
	jp 0c3c3h
	jp 0c3cbh
	jp 0c3c3h
	jp 00dcah
	ld a,(bc)
	call nz,02020h
	jr nz,l88d6h
	ld c,a
	ld c,h
	ld d,l
	ld c,l
l8884h:
	ld b,l
	jr nz,l88c9h
	jr nz,$+34
	call nz,0c120h
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	jr nz,$-58
	jr nz,$+34
	jr nz,l88c0h
	jr nz,$-58
	dec c
	ld a,(bc)
	ret
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3cbh
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
l88c0h:
	jp 0c3c3h
	jp 0c3cbh
l88c6h:
	jp 0c3c3h
l88c9h:
	jp 00dcah
	ld a,(bc)
	call nz,02020h
	jr nz,l8928h
	ld c,a
	ld c,h
	ld d,l
	ld c,l
l88d6h:
	ld b,l
	jr nz,$+69
	jr nz,$+34
	call nz,0c120h
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	jr nz,$-58
	jr nz,$+34
	jr nz,l8912h
l88f2h:
	jr nz,$-58
	dec c
	ld a,(bc)
	ret
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3cbh
	jp 0c3c3h
	jp 0c3cch
	jp 0c3c3h
	jp 0c3cch
l8912h:
	jp 0c3c3h
	jp 0c3cbh
	jp 0c3c3h
	jp 00dcah
	ld a,(bc)
	call nz,02020h
	jr nz,$+80
	ld c,a
	ld c,c
	ld d,e
	ld b,l
l8928h:
	jr nz,$+34
	jr nz,l894ch
	jr nz,l88f2h
	jr nz,l897fh
	ld b,(hl)
	ld b,(hl)
	jr nz,$-58
	jr nz,$+34
	ld b,c
	jr nz,$+34
	call nz,02020h
	ld b,d
	jr nz,$+34
	call nz,02020h
	ld b,e
	jr nz,$+34
	call nz,00a0dh
	ret
	jp 0c3c3h
l894ch:
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3cbh
	jp 0c3c3h
	jp 0c3cbh
	jp 0c3c3h
	jp 0c3cbh
	jp 0c3c3h
	jp 0c3cbh
	jp 0c3c3h
	jp 00dcah
	ld a,(bc)
	call nz,02020h
	jr nz,$+71
	ld c,(hl)
	ld b,c
	ld b,d
	ld c,h
	ld b,l
	jr nz,$+34
	jr nz,$+34
l897fh:
	call nz,02020h
	pop bc
	jr nz,$+34
	call nz,02020h
	jp nz,02020h
	call nz,02020h
	jp nz,02020h
	call nz,02020h
	jp nz,02020h
	call nz,00a0dh
	ret
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3cbh
	jp 0c3c3h
	jp 0c3cdh
	jp 0c3c3h
	jp 0c3cdh
	jp 0c3c3h
	jp 0c3cbh
	jp 0c3c3h
	jp 00dcah
	ld a,(bc)
	call nz,02020h
	jr nz,l8a0eh
	ld d,d
	ld b,l
	ld d,c
	ld d,l
	ld b,l
	ld c,(hl)
	ld b,e
	ld e,c
	jr nz,$-58
	jr nz,$-61
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	jp nz,0c2c2h
	jp nz,0c2c2h
	jp nz,0c420h
	jr nz,$+34
	jr nz,l8a08h
	jr nz,$-58
	dec c
	ld a,(bc)
	rst 0
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3cdh
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
l8a08h:
	jp 0c3c3h
	jp 0c3cdh
l8a0eh:
	jp 0c3c3h
	jp 00dc8h
	ld a,(bc)
	nop
l8a16h:
	jr nz,$+85
	ld e,c
	ld d,e
	ld d,h
	ld b,l
	ld c,l
	jr nz,l8a68h
	ld c,(hl)
	ld b,(hl)
	ld c,a
	ld d,d
	ld c,l
	ld b,c
	ld d,h
	ld c,c
	ld c,a
	ld c,(hl)
	dec c
	ld a,(bc)
	nop
l8a2ch:
	ld c,l
	ld c,a
	ld b,h
	ld b,l
	ld c,h
	ld a,(00020h)
l8a34h:
	ld c,l
	ld d,e
	ld e,b
	nop
l8a38h:
	ld c,l
	ld d,e
	ld e,b
	ld (04d00h),a
	ld d,e
	ld e,b
	ld (0002bh),a
l8a43h:
	ld d,h
	ld d,l
	ld d,d
	ld b,d
	ld c,a
	dec l
	ld d,d
	nop
l8a4bh:
	ccf
	ccf
	ccf
	nop
l8a4fh:
	ld c,e
	ld b,d
	nop
l8a52h:
	ld d,d
	ld b,c
	ld c,l
	ld a,(00020h)
l8a58h:
	ld d,(hl)
	ld d,d
	ld b,c
	ld c,l
	ld a,(00020h)
l8a5fh:
	ld d,(hl)
	ld b,h
	ld d,b
	ld a,(00020h)
l8a65h:
	ld d,h
	ld c,l
	ld d,e
l8a68h:
	add hl,sp
	add hl,sp
	ld sp,sub_4138h
	cpl
	ld (sub_4138h),a
	nop
l8a72h:
	ld d,h
	ld c,l
	ld d,e
	add hl,sp
	add hl,sp
	ld (sub_4138h+1),a
	nop
l8a7bh:
	ld d,(hl)
	add hl,sp
	add hl,sp
	inc sp
	jr c,l8a81h
l8a81h:
	ld d,(hl)
	add hl,sp
	add hl,sp
	dec (hl)
	jr c,l8a87h
l8a87h:
	ld b,(hl)
	ld d,d
	ld b,l
	ld d,c
	ld a,(00020h)
l8a8eh:
	ld c,b
	ld e,d
	nop
l8a91h:
	ld c,e
	ld b,l
	ld e,c
	ld b,d
	ld c,a
	ld b,c
	ld d,d
	ld b,h
	ld a,(00020h)
l8a9ch:
	ld c,d
	ld d,b
	nop
l8a9fh:
	ld c,c
	ld c,(hl)
	ld d,h
	nop
l8aa3h:
	ld b,(hl)
	ld d,d
	nop
l8aa6h:
	ld b,a
	ld b,d
	nop
l8aa9h:
	ld b,h
	ld b,l
	nop
l8aach:
	ld d,l
	ld d,e
	ld d,e
	ld d,d
	nop
l8ab1h:
	ld d,e
	ld d,b
	nop
	jr nz,l8ae3h
	jr nz,l8ab8h
l8ab8h:
	ld b,h
	ld b,c
	ld d,h
	ld b,l
	nop
l8abdh:
	ld d,h
	ld c,c
	ld c,l
	ld b,l
	nop
l8ac2h:
	push bc
	jp 0c3cch
	jp 0c3c3h
	call z,0c3c3h
	jp 0ccc3h
	jp 0c3c3h
	jp 0c3cch
	jp 0c3c3h
	call z,0c6c3h
	nop
l8adch:
	call nz,0c420h
	jr nz,$+34
	jr nz,$+34
l8ae3h:
	call nz,02020h
	jr nz,$+34
	call nz,02020h
	jr nz,$+34
	call nz,02020h
	jr nz,$+34
	call nz,0c420h
	nop
l8af6h:
	ret
	jp 0c3cbh
	jp 0c3c3h
	set 0,e
	jp 0c3c3h
	set 0,e
	jp 0c3c3h
	set 0,e
	jp 0c3c3h
	set 0,e
	jp z,0c700h
	jp 0c3cdh
	jp 0c3c3h
	call 0c3c3h
	jp 0cdc3h
	jp 0c3c3h
	jp 0c3cdh
	jp 0c3c3h
	call 0c8c3h
	nop
l8b2ah:
	jr nz,$+82
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,l8b73h
	ld b,e
	ld b,e
	ld b,l
l8b35h:
	ld d,b
	ld d,h
	jr nz,l8b88h
	ld d,d
	jr nz,l8b7fh
	ld b,c
	ld c,(hl)
	ld b,e
	ld b,l
	ld c,h
	jr nz,l8b97h
	ld c,a
	jr nz,$+71
	ld e,b
	ld c,c
	ld d,h
	ld l,000h
l8b4bh:
	dec c
	ld a,(bc)
	jr nz,l8b9ch
	ld c,a
	ld c,(hl)
	ld c,c
	ld d,h
	ld c,a
	ld d,d
	jr nz,l8b9ah
	ld c,a
	ld c,h
	ld c,a
	ld d,d
	jr nz,l8bb1h
	ld b,l
	ld d,e
	ld d,h
	dec c
	ld a,(bc)
	nop
l8b63h:
	dec c
	ld a,(bc)
l8b65h:
	jr nz,l8b35h
	jr nz,l8bb9h
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,l8bbbh
	ld b,l
	ld b,(hl)
	ld d,h
	cpl
l8b73h:
	ld d,d
	ld c,c
	ld b,a
	ld c,b
	ld d,h
	jr nz,l8bceh
	ld c,a
	jr nz,l8bc0h
	ld c,b
	ld b,c
l8b7fh:
	ld c,(hl)
	ld b,a
	ld b,l
	dec c
	ld a,(bc)
	jr nz,$+34
	jr nz,l8bdch
l8b88h:
	ld c,b
	ld b,l
	jr nz,l8bcfh
	ld c,a
	ld c,h
	ld c,a
	ld d,d
	ld l,00dh
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l8b65h
l8b97h:
	jr nz,l8be9h
	ld d,d
l8b9ah:
	ld b,l
	ld d,e
l8b9ch:
	ld d,e
	jr nz,l8bf4h
	ld d,b
	cpl
	ld b,h
	ld c,a
	ld d,a
	ld c,(hl)
	jr nz,l8bfbh
	ld c,a
	jr nz,l8bedh
	ld c,b
	ld b,c
	ld c,(hl)
	ld b,a
	ld b,l
	dec c
	ld a,(bc)
l8bb1h:
	jr nz,l8bd3h
	jr nz,l8c09h
	ld c,b
	ld b,l
	jr nz,l8c0ch
l8bb9h:
	ld d,b
	ld b,l
l8bbbh:
	ld b,l
	ld b,h
	jr nz,l8be7h
	ld c,c
l8bc0h:
	ld b,(hl)
	jr nz,l8c04h
	ld d,(hl)
	ld b,c
	ld c,c
	ld c,h
	ld b,c
	ld b,d
	ld c,h
	ld b,l
	add hl,hl
	ld l,00dh
l8bceh:
	ld a,(bc)
l8bcfh:
	nop
l8bd0h:
	jr nz,l8c26h
	ld b,l
l8bd3h:
	ld d,e
	ld d,h
	nop
l8bd6h:
	ld d,a
	ld c,b
	ld c,c
	ld d,h
	ld b,l
	nop
l8bdch:
	ld b,d
	ld c,h
	ld b,c
	ld b,e
	ld c,e
l8be1h:
	nop
l8be2h:
	ld d,d
	ld b,l
	ld b,h
	nop
l8be6h:
	ld b,a
l8be7h:
	ld d,d
	ld b,l
l8be9h:
	ld b,l
	ld c,(hl)
	nop
l8bech:
	ld b,d
l8bedh:
	ld c,h
	ld d,l
	ld b,l
	jr nz,l8bf2h
l8bf2h:
	ld c,h
	ld c,a
l8bf4h:
	ld c,a
	ld d,b
	ld c,c
	ld c,(hl)
	ld b,a
	nop
l8bfah:
	dec c
l8bfbh:
	ld a,(bc)
	jr nz,l8c4bh
	ld c,c
	ld e,b
	ld b,l
	ld b,h
	jr nz,l8c51h
l8c04h:
	ld c,a
	ld b,h
	ld b,l
	jr nz,l8c5dh
l8c09h:
	ld b,l
	ld d,e
	ld d,h
l8c0ch:
	dec c
	ld a,(bc)
	nop
l8c0fh:
	dec c
	ld a,(bc)
	jr nz,l8be1h
	jr nz,$+91
	ld c,a
	ld d,l
	jr nz,l8c66h
	ld d,l
	ld d,e
	ld d,h
	jr nz,l8c71h
	ld b,l
	ld b,l
	jr nz,l8c55h
	jr nz,l8c78h
	ld b,l
	ld e,b
l8c26h:
	ld d,h
	jr nz,l8c6bh
	ld c,h
	ld c,a
	ld b,e
	ld c,e
	ld d,e
	jr nz,l8c79h
	ld b,(hl)
	dec c
	ld a,(bc)
	jr nz,l8c55h
	jr nz,l8c90h
	ld c,a
	ld d,l
	ld d,d
	jr nz,l8c92h
	ld b,h
	ld d,b
	jr nz,$+85
	ld d,l
	ld d,b
	ld d,b
	ld c,a
	ld d,d
	ld d,h
	ld d,e
	jr nz,l8c96h
	ld c,c
	ld e,b
l8c4bh:
	ld b,l
	ld b,h
	jr nz,l8c9ch
	ld c,a
	ld b,h
l8c51h:
	ld b,l
	ld l,00dh
	ld a,(bc)
l8c55h:
	nop
l8c56h:
	jr nz,l8c78h
	ld e,c
	ld c,a
	ld d,l
	jr nz,l8caah
l8c5dh:
	ld d,l
	ld d,e
	ld d,h
	jr nz,l8cb5h
	ld b,l
	ld b,l
	jr nz,l8cb3h
l8c66h:
	ld b,l
	jr nz,l8cbdh
	ld c,b
	ld d,d
l8c6bh:
	ld b,l
	ld b,l
	jr nz,l8cc3h
	ld c,c
	ld c,l
l8c71h:
	ld b,l
	ld d,e
	jr nz,l8c95h
	jr nz,l8c97h
	ld d,d
l8c78h:
	ld b,c
l8c79h:
	ld c,l
	jr nz,l8cc8h
	ld b,c
	ld e,c
	ld c,a
	ld d,l
	ld d,h
	dec c
	ld a,(bc)
	nop
l8c84h:
	jr nz,l8cd9h
	ld c,h
	ld c,a
	ld d,h
	jr nz,l8cabh
	jr nz,$+82
	ld b,c
	ld b,a
	ld b,l
l8c90h:
	jr nz,$+50
l8c92h:
	jr nz,l8cb4h
	ld d,b
l8c95h:
	ld b,c
l8c96h:
	ld b,a
l8c97h:
	ld b,l
	jr nz,l8ccbh
	jr nz,l8cbch
l8c9ch:
	ld d,b
	ld b,c
	ld b,a
	ld b,l
	jr nz,l8cd4h
	jr nz,l8cc4h
	ld d,b
	ld b,c
	ld b,a
	ld b,l
	jr nz,$+53
l8caah:
	dec c
l8cabh:
	ld a,(bc)
	nop
l8cadh:
	jr nz,l8ccfh
	jr nc,l8cdeh
	jr nc,l8cd3h
l8cb3h:
	nop
l8cb4h:
	ld c,l
l8cb5h:
	ld b,c
	ld d,b
	ld d,b
	ld b,l
	ld b,h
	nop
l8cbbh:
	ld d,b
l8cbch:
	ld b,c
l8cbdh:
	ld b,a
	ld b,l
	ld d,e
	nop
	jr nz,l8d0ch
l8cc3h:
	ld c,(hl)
l8cc4h:
	jr nz,l8cc6h
l8cc6h:
	jr nz,l8d1bh
l8cc8h:
	ld b,l
	ld c,h
	ld b,l
l8ccbh:
	ld b,e
	ld d,h
	jr nz,l8d10h
l8ccfh:
	jr nz,l8d24h
	ld c,h
	ld c,a
l8cd3h:
	ld d,h
l8cd4h:
	jr nz,l8d2ah
	ld c,a
	jr nz,l8d2dh
l8cd9h:
	ld b,l
	ld d,e
	ld d,h
	jr nz,l8d1fh
l8cdeh:
	ld c,(hl)
	ld b,h
	jr nz,l8d32h
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	dec c
	ld a,(bc)
	jr nz,l8d2bh
	ld b,e
	ld b,e
	ld b,l
	ld d,b
	ld d,h
	jr nz,l8d40h
	ld d,d
	jr nz,l8d44h
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,$+69
	ld b,c
	ld c,(hl)
	ld b,e
	ld b,l
	ld c,h
	jr nz,$+86
	ld c,a
	jr nz,l8d49h
	ld e,b
	ld c,c
	ld d,h
	ld l,000h
	ld d,h
	ld b,l
	ld d,e
l8d0ch:
	ld d,h
	ld c,c
	ld c,(hl)
	ld b,a
l8d10h:
	jr nz,$+85
	ld c,h
	ld c,a
	ld d,h
	jr nz,l8d17h
l8d17h:
	ld d,b
	ld b,c
	ld b,a
	ld b,l
l8d1bh:
	jr nz,l8d1dh
l8d1dh:
	jr nz,l8d64h
l8d1fh:
	ld d,d
	ld d,d
	ld c,a
	ld d,d
	ld d,e
l8d24h:
	jr nz,l8d6ch
	ld c,a
	ld d,l
	ld c,(hl)
	ld b,h
l8d2ah:
	nop
l8d2bh:
	dec c
	ld a,(bc)
l8d2dh:
	nop
l8d2eh:
	ret nz
	ret po
	ret p
	ret m
l8d32h:
	ret p
	ret po
	ret nz
	nop
	call m,0fcfch
	call m,0fcfch
	call m,00000h
	nop
l8d40h:
	ld a,b
	ld a,b
	ld a,b
	nop
l8d44h:
	nop
	nop
	nop
	nop
	nop
l8d49h:
	rst 38h
	nop
	nop
	nop
	nop
	djnz l8d60h
	djnz l8d62h
	djnz l8d64h
	djnz l8d66h
	nop
	nop
	nop
	inc e
	djnz l8d6ch
	djnz l8d6eh
	nop
	nop
l8d60h:
	nop
	ret p
l8d62h:
	djnz l8d74h
l8d64h:
	djnz l8d76h
l8d66h:
	djnz l8d78h
	djnz l8d86h
	nop
	nop
l8d6ch:
	nop
	nop
l8d6eh:
	djnz l8d80h
	djnz l8d62h
l8d72h:
	nop
	nop
l8d74h:
	nop
	nop
l8d76h:
	djnz l8d88h
l8d78h:
	djnz l8d96h
	djnz l8d8ch
	djnz l8d8eh
	djnz l8d90h
l8d80h:
	djnz l8d72h
	djnz l8d94h
	djnz l8d96h
l8d86h:
	djnz l8d98h
l8d88h:
	djnz l8d86h
	djnz l8d9ch
l8d8ch:
	djnz l8d9eh
l8d8eh:
	nop
	nop
l8d90h:
	nop
	call m,01010h
l8d94h:
	djnz l8da6h
l8d96h:
	djnz l8da8h
l8d98h:
	djnz l8d96h
	nop
	nop
l8d9ch:
	nop
	nop
l8d9eh:
	nop
	djnz l8dd9h
	ld a,h
	jr c,l8db4h
	nop
	nop
l8da6h:
	jr nc,$+122
l8da8h:
	ld a,b
	jr nc,l8dabh
l8dabh:
	jr nc,l8dddh
	nop
l8daeh:
	jr nc,l8de1h
	ld (03433h),a
	dec (hl)
l8db4h:
	ld (hl),037h
l8db6h:
	jr c,l8df1h
	dec l
	dec a
	ld e,h
	ld e,e
	ld e,l
	dec sp
	daa
	ld h,b
	inc l
	ld l,02fh
	pop bc
	ld b,c
	ld b,d
	ld b,e
	ld b,h
	ld b,l
	ld b,(hl)
	ld b,a
	ld c,b
	ld c,c
	ld c,d
	ld c,e
	ld c,h
	ld c,l
	ld c,(hl)
	ld c,a
	ld d,b
	ld d,c
	ld d,d
	ld d,e
	ld d,h
	ld d,l
l8dd9h:
	ld d,(hl)
	ld d,a
	ld e,b
	ld e,c
l8dddh:
	ld e,d
l8ddeh:
	jr c,l8e19h
	add hl,hl
l8de1h:
	dec l
	inc a
	ld e,(hl)
	inc h
	ld c,l
	dec h
	inc hl
	dec sp
	ld a,(0c13dh)
	ld d,c
	ld b,d
	ld b,e
	ld b,h
	ld b,l
l8df1h:
	ld b,(hl)
	ld b,a
	ld c,b
	ld c,c
	ld c,d
	ld c,e
	ld c,h
	inc l
	ld c,(hl)
	ld c,a
	ld d,b
	ld b,c
	ld d,d
	ld d,e
	ld d,h
	ld d,l
	ld d,(hl)
	ld e,d
	ld e,b
	ld e,c
	ld d,a
l8e06h:
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
l8e19h:
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	ld hl,(02f2bh)
	jr nc,l8e54h
	ld (03433h),a
	dec (hl)
	ld (hl),037h
	jr c,l8e64h
	dec l
	inc l
	ld l,000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l8e54h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l8e64h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l9857h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l99c6h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l9f03h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
la08fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
laac6h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
lafc8h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
lb03fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
lb06fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
lbbc6h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
