; z80dasm 1.2.0
; command line: z80dasm -g 0x0000 -l -o docs/reverse-engineering/issues/issue-188/MSXDIAG.disasm.0000.asm roms/games/roms/MSXDIAG.ROM

	org 00000h

sub_0000h:
	ld b,c
l0001h:
	ld b,d
l0002h:
	inc e
l0003h:
	ld b,b
l0004h:
	nop
	nop
l0006h:
	nop
l0007h:
	nop
l0008h:
	nop
l0009h:
	nop
l000ah:
	nop
	nop
sub_000ch:
	nop
	nop
	nop
sub_000fh:
	nop
l0010h:
	ld c,l
	ld d,e
l0012h:
	ld e,b
	ld e,a
sub_0014h:
	ld b,h
l0015h:
	ld c,c
l0016h:
	ld b,c
	ld b,a
l0018h:
	nop
	nop
	nop
	nop
l001ch:
	call sub_0138h
	rrca
l0020h:
	rrca
	and 003h
	ld c,a
sub_0024h:
	ld hl,0fcc1h
	add a,l
	ld l,a
	ld a,(hl)
l002ah:
	and 080h
l002ch:
	or c
l002dh:
	ld c,a
	inc l
	inc l
l0030h:
	inc l
l0031h:
	inc l
	ld a,(hl)
	and 00ch
	or c
	ld h,080h
l0038h:
	call sub_0024h
sub_003bh:
	jp 0403fh
	ret
l003fh:
	call sub_623dh
	call 04063h
	call sub_4568h
	call sub_4594h
	call l003fh+2
	call sub_622ch
	ld hl,00f0bh
	call sub_6229h
	ld hl,l7ebbh
	call sub_60f3h
	call 00044h
l0060h:
	call sub_0000h
	call sub_4080h
	call sub_4138h
sub_0069h:
	call 044c1h
l006ch:
	call l40a2h+1
l006fh:
	call 040aeh
l0072h:
	call sub_5e28h
l0075h:
	ld a,001h
	ld (0ec74h),a
	ld a,001h
	ld (0ed1ch),a
l007fh:
	ret
l0080h:
	ld b,003h
	ld d,00ch
l0084h:
	push bc
	push de
	xor a
	call sub_0132h
	call sub_00c0h
	pop de
	ld b,d
l008fh:
	halt
	djnz l008fh
	ld a,0ffh
	push de
	call sub_0132h
	pop de
	ld b,d
l009ah:
	halt
	djnz l009ah
	srl d
	pop bc
	djnz l0084h
sub_00a2h:
	ret
	ld hl,0ed14h
	ld b,006h
l00a8h:
	xor a
	ld (hl),a
	inc hl
	djnz l00a8h
	ret
	ld hl,08db6h
	ld (0ed1eh),hl
	ld a,(l002ch)
	and 00fh
	ld (0ed1dh),a
	cp 002h
	jr nz,l00c7h
sub_00c0h:
	ld hl,08ddeh
sub_00c3h:
	ld (0ed1eh),hl
sub_00c6h:
	ret
l00c7h:
	ret
	call sub_5f33h
	call sub_5e97h
l00ceh:
	call sub_5ed7h
	ld a,(0e3c5h)
l00d4h:
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
l0101h:
	and 007h
l0103h:
	ld b,a
l0104h:
	ld a,(0e3dch)
	and 007h
l0109h:
	or b
	ld (0ed17h),a
	ld a,(0e3c0h)
	and 007h
l0112h:
	ld b,a
	ld a,(0e3ddh)
	and 007h
l0118h:
	or b
	ld (0ed18h),a
	ld a,(0e3bah)
	and 007h
	ld b,a
	ld a,(0e3deh)
	and 007h
	or b
l0128h:
	ld (0ed19h),a
	ret
	ld de,00e00h
	ld hl,08d2eh
sub_0132h:
	ld bc,l0080h
	jp 0005ch
sub_0138h:
	call 0413fh
	call sub_415ch
sub_013eh:
	ret
	ld bc,l0400h
l0142h:
	ld d,000h
	ld e,c
	ld hl,0fcc1h
	add hl,de
	ld a,(hl)
	ld hl,0ec7ah
	add hl,de
	bit 7,a
	jr z,l0156h
	ld (hl),00bh
	jr l0158h
l0156h:
	ld (hl),000h
l0158h:
	inc c
	djnz l0142h
	ret
	ld hl,0ec77h
sub_015fh:
	ld b,003h
l0161h:
	ld (hl),000h
	inc hl
	djnz l0161h
	ld hl,0ec7eh
	ld b,010h
l016bh:
	ld (hl),000h
	inc hl
	djnz l016bh
	ld hl,0ec8eh
	ld b,040h
l0175h:
	ld (hl),000h
	inc hl
	ld (hl),000h
	inc hl
	djnz l0175h
	ld bc,l0400h
l0180h:
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
	ld bc,l0400h
l019eh:
	push bc
	ld a,(0ed13h)
	and 083h
	sla c
	sla c
	or c
	ld (0ed13h),a
	call 041bdh
	pop bc
	inc c
	djnz l019eh
	jr l01b8h
	call 041bdh
l01b8h:
	pop bc
	inc c
	djnz l0180h
	ret
	ld hl,0e575h
	ld b,003h
	xor a
l01c3h:
	ld (hl),a
	inc hl
	djnz l01c3h
	call sub_41d7h
	call sub_4221h
	ld a,(0e575h)
	sub 040h
	ret c
	call sub_4355h
	ret
	ld hl,sub_0000h
	ld (0ed11h),hl
	ld b,00ch
l01dfh:
	push bc
l01e0h:
	di
	ld a,(0ed13h)
	ld hl,(0ed11h)
	call sub_000ch
	ld b,a
	cpl
	ld e,a
	ld c,a
	ld a,(0ed13h)
	ld hl,(0ed11h)
	push bc
l01f5h:
	call sub_0014h
	ld a,(0ed13h)
	ld hl,(0ed11h)
	call sub_000ch
l0201h:
	pop bc
	cp c
l0203h:
	jr nz,l0212h
l0205h:
	ld e,b
	ld a,(0ed13h)
l0209h:
	ld hl,(0ed11h)
l020ch:
	call sub_0014h
	call sub_42f0h
l0212h:
	ei
	pop bc
	ld hl,(0ed11h)
	ld de,l1000h
	add hl,de
	ld (0ed11h),hl
	djnz l01dfh
	ret
	ld hl,0c000h
	ld (0ed11h),hl
	ld b,004h
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
	jr z,l025ch
l024eh:
	sla c
	sla c
	sla d
	sla d
	sla e
	sla e
	djnz l024eh
l025ch:
	ld a,c
	cpl
	ld c,a
	ld a,(0ed13h)
	bit 7,a
	jr z,l0280h
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
	jr l0287h
l0280h:
	in a,(0a8h)
	and c
	or e
	call sub_42a0h
l0287h:
	ei
	ld a,0ffh
	cp e
	jr nz,l0290h
	call sub_42f0h
l0290h:
	pop bc
	ld hl,(0ed11h)
	ld de,l1000h
	add hl,de
	ld (0ed11h),hl
	dec b
	jp nz,l4229h
	ret
	out (0a8h),a
	ld a,(hl)
	ld b,a
	cpl
	ld c,a
	ld (hl),a
	ld a,(hl)
	cp c
	jr nz,l02b2h
	ld a,b
	ld (hl),a
	ld a,0ffh
	ex af,af'
	jr l02b5h
l02b2h:
	ld a,000h
	ex af,af'
l02b5h:
	exx
	ex af,af'
	ld e,a
	ld a,b
	out (0a8h),a
	ret
	out (0a8h),a
	ld a,(0ffffh)
	cpl
l02c2h:
	and c
	or d
l02c4h:
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
	jr nz,l02dfh
	ld a,b
	ld (hl),a
	ld a,0ffh
	ex af,af'
	jr l02e2h
l02dfh:
	ld a,000h
	ex af,af'
l02e2h:
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
	ld hl,0e474h
	ld (hl),004h
	inc hl
	ld (hl),000h
	inc hl
	ld (hl),000h
	ld de,0ec77h
	ld hl,0e474h
l0301h:
	call sub_5d9fh
	ld de,0e575h
	ld hl,0e474h
	call sub_5d9fh
	ld de,l0004h
	call 0433ah
	call sub_4317h
	ret
	ld hl,(0ed11h)
	call sub_44b6h
	ld b,a
	ld c,001h
	or a
	jr z,l0327h
l0323h:
	sla c
	djnz l0323h
l0327h:
	push bc
	call sub_4457h
	pop bc
	ld a,(hl)
	or c
	and 00fh
	ld (hl),a
l0331h:
	ld a,(0e575h)
	sub 040h
	ret c
	set 6,(hl)
	ret
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
	ld hl,sub_0000h
	ld (0e578h),hl
	di
	ld de,0e674h
	ld b,0ffh
l0361h:
	push bc
	push de
	ld a,b
	out (0fch),a
	ld a,(0ed13h)
	ld hl,00fffh
	call sub_000ch
	pop de
	pop bc
	ld (de),a
	ld a,b
	or a
	jr z,l037ah
	inc de
	dec b
	jr l0361h
l037ah:
	ld bc,0ff00h
l037dh:
	push bc
	ld a,c
	out (0fch),a
	ld e,0ffh
	ld a,(0ed13h)
	ld hl,00fffh
	call sub_0014h
	pop bc
	ld a,b
	or a
	jr z,l0395h
	inc c
	dec b
	jr l037dh
l0395h:
	ld bc,0ff00h
l0398h:
	push bc
	ld a,c
	out (0fch),a
	ld a,(0ed13h)
	ld hl,00fffh
	call sub_000ch
	pop bc
	sub c
	jr c,l03c4h
	ld hl,(0e578h)
	inc hl
	ld (0e578h),hl
	push bc
	ld e,c
	ld a,(0ed13h)
	ld hl,00fffh
	call sub_0014h
	pop bc
	ld a,b
	or a
	jr z,l03c4h
	inc c
	dec b
l03c2h:
	jr l0398h
l03c4h:
	ld de,0e674h
	ld b,0ffh
l03c9h:
	push bc
	push de
	ld a,b
	out (0fch),a
	ld a,(de)
	ld e,a
	ld a,(0ed13h)
	ld hl,00fffh
	call sub_0014h
	pop de
	pop bc
	ld a,b
	or a
	jr z,l03e3h
	inc de
	dec b
	jr l03c9h
l03e3h:
	ei
	ld hl,(0e578h)
	ld de,l0004h
	sbc hl,de
	ret c
	call sub_4457h
	set 7,(hl)
	xor a
	ld (0ed10h),a
	call sub_447ah
	ld b,008h
l03fbh:
	ld (hl),000h
	inc hl
	djnz l03fbh
l0400h:
	ld hl,0e474h
	ld (hl),064h
l0405h:
	inc hl
	ld (hl),000h
	inc hl
	ld (hl),000h
	ld de,0ec77h
l040eh:
	ld hl,0e474h
	call sub_5dabh
	ld a,001h
	ld (0ed10h),a
	call sub_447ah
	ld de,(0e578h)
	ld (hl),d
	inc hl
	ld (hl),e
l0423h:
	xor a
	ld (0ed10h),a
	call sub_447ah
	ld b,h
	ld c,l
	ld hl,(0e578h)
l042fh:
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
	pop bc
	ld h,b
	ld l,c
	push bc
	ld de,l0010h
	call 0433ah
	pop bc
	pop hl
	dec hl
	ld a,h
	or l
	jr nz,l042fh
	ret
	ld hl,0ec7eh
	ld a,(0ed13h)
	and 003h
	ld b,a
	or a
	jr z,l0469h
	ld de,l0004h
l0466h:
	add hl,de
	djnz l0466h
l0469h:
	ld a,(0ed13h)
	srl a
	srl a
	and 003h
	ld b,a
	or a
	jr z,l0479h
l0476h:
	inc hl
	djnz l0476h
l0479h:
	ret
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
	jr z,l0497h
	ld b,d
	ld a,e
l0492h:
	add a,020h
	djnz l0492h
	ld e,a
l0497h:
	xor a
	or c
	jr z,l04a2h
	ld b,c
	ld a,e
l049dh:
	add a,008h
	djnz l049dh
	ld e,a
l04a2h:
	ld a,(0ed10h)
	or a
	jr z,l04afh
	ld b,a
	ld a,e
l04aah:
	add a,002h
	djnz l04aah
	ld e,a
l04afh:
	ld d,000h
	ld hl,0ec8eh
	add hl,de
	ret
	ld a,h
	ld b,006h
l04b9h:
	srl a
	djnz l04b9h
	ld (0ed10h),a
	ret
	xor a
l04c2h:
	ld (0f3f6h),a
	ld (0fca2h),a
	ld a,(l0006h)
	inc a
	ld c,a
	in a,(c)
	di
	in a,(c)
	and a
	jp p,l44d0h
	ld a,(l0007h)
	inc a
	ld c,a
	ld a,002h
	out (c),a
	ld a,08fh
	out (c),a
	ld a,(l0006h)
	inc a
	ld c,a
	in a,(c)
	ei
	and 040h
	jr nz,l04f6h
	xor a
	ld (0ec75h),a
	jp l452ah
l04f6h:
	ld a,(l0007h)
	inc a
	ld c,a
	ld a,001h
	di
	out (c),a
l0500h:
	ld a,08fh
	out (c),a
l0504h:
	ld a,(l0006h)
	inc a
	ld c,a
	in a,(c)
	ei
l050ch:
	and 03eh
l050eh:
	or a
	jr nz,l0519h
	ld a,001h
	ld (0ec75h),a
	jp l452ah
l0519h:
	cp 004h
	jr nz,l0525h
	ld a,002h
	ld (0ec75h),a
	jp l452ah
l0525h:
	ld a,0ffh
	ld (0ec75h),a
	ld a,(l0007h)
	inc a
	ld c,a
	xor a
	di
	out (c),a
	ld a,08fh
	out (c),a
	ei
	halt
	ld hl,sub_0000h
	xor a
	ld (0f3f6h),a
	ld (0fca2h),a
	ld a,(l0006h)
	inc a
	ld c,a
	in a,(c)
	di
	inc hl
	in a,(c)
	and a
	jp p,l454bh
	ei
	ld d,h
	ld e,l
	ld hl,l06eeh
	sbc hl,de
	jr c,l0562h
	xor a
	ld (0ec76h),a
	jr l0567h
l0562h:
	ld a,001h
	ld (0ec76h),a
l0567h:
	ret
	ld a,001h
	ld (0ec74h),a
	ld bc,l0f01h
	ld de,l0500h
	call sub_5df3h
	ld hl,l6277h
	call sub_5fefh
	ld b,0ffh
l057eh:
	push bc
	call sub_5f33h
	pop bc
	ld a,(0e3d8h)
	and 002h
	jr nz,l0590h
	dec b
	jr z,l0590h
	halt
	jr l057eh
l0590h:
	call l003fh+2
	ret
	ld a,(0ed1ch)
	ld (0ed1ah),a
	ld (0ed1bh),a
	ld a,(0ec74h)
	or a
	jr z,l05b5h
	ld bc,l0f04h
	ld de,l0128h
	call sub_5db7h
	call sub_412ch
	xor a
	ld (0ec74h),a
	jr l05beh
l05b5h:
	call sub_622ch
	ld bc,l0f04h
	call sub_6230h
l05beh:
	call l003fh+2
	call sub_4848h
	ld hl,l0104h
	call sub_6229h
	ld hl,l7f67h
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,l7f78h
	call sub_60f3h
	call 0485bh
	call sub_487ah
	call 00044h
	call 040c8h
	ld a,(0e381h)
	and 002h
	jp nz,l468fh
	ld a,(0e382h)
	and 002h
	jp nz,l469dh
	ld a,(0e383h)
	and 002h
	jp nz,l46abh
sub_0600h:
	ld a,(0e384h)
	and 002h
	jp nz,l46b9h
	ld a,(0e385h)
l060bh:
	and 002h
	jp nz,l46c5h+2
	ld a,(0e386h)
	and 002h
	jp nz,046d5h
	ld a,(0e389h)
	and 002h
	ret nz
	ld a,(0e380h)
	and 002h
	jp nz,046e3h
	ld a,(0ed17h)
	and 002h
	jp nz,046e3h
	ld a,(0ed14h)
	and 002h
	jr z,l0641h
	ld a,(0ed1ah)
	dec a
	cp 000h
	jr nz,l0653h
	ld a,001h
	jr l0653h
l0641h:
	ld a,(0ed15h)
	and 002h
	jr z,l0659h
	ld a,(0ed1ah)
	inc a
	cp 009h
	jp nz,l4653h
	ld a,008h
l0653h:
	ld (0ed1ah),a
	call sub_487ah
l0659h:
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
	jp z,l46c5h+2
	cp 006h
	jp z,046d5h
	cp 007h
	ret z
	cp 008h
	jp z,046e3h
	ret
	halt
	jp 045e5h
	call sub_48a3h
	call l003fh+2
	ld a,001h
	ld (0ed1ch),a
	jp sub_4594h
	call sub_49aah
	call l003fh+2
	ld a,002h
	ld (0ed1ch),a
	jp sub_4594h
	call 04acbh
	call l003fh+2
	ld a,003h
	ld (0ed1ch),a
	jp sub_4594h
	call sub_4bc1h
	call l003fh+2
	ld a,004h
	ld (0ed1ch),a
	jp sub_4594h
	call 04cb0h
	call l003fh+2
	ld a,005h
	ld (0ed1ch),a
	jp sub_4594h
	call sub_5a42h
	call l003fh+2
	ld a,006h
	ld (0ed1ch),a
	jp sub_4594h
	call l003fh+2
	ld a,001h
	ld (0ed1ch),a
	jp 046eeh
l06eeh:
	ld a,(0ed1ch)
	ld (0ed1ah),a
	ld (0ed1bh),a
	ld a,(0ec74h)
	or a
	jr z,l070fh
	ld bc,l0f04h
sub_0700h:
	ld de,l0128h
sub_0703h:
	call sub_5db7h
	call sub_412ch
	xor a
	ld (0ec74h),a
	jr l0718h
l070fh:
	call sub_622ch
	ld bc,l0f04h
	call sub_6230h
l0718h:
	call l003fh+2
	call sub_4848h
	ld hl,l0104h
	call sub_6229h
	ld hl,l7ffch
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,0800dh
	call sub_60f3h
	call 0485bh
	call sub_487ah
	call 00044h
	call 040c8h
	ld a,(0e381h)
	and 002h
	jp nz,047e9h
	ld a,(0e382h)
	and 002h
	jp nz,047f7h
	ld a,(0e383h)
	and 002h
	jp nz,l4804h+1
	ld a,(0e384h)
	and 002h
	jp nz,l4813h
	ld a,(0e385h)
	and 002h
	jp nz,l481fh+2
	ld a,(0e386h)
	and 002h
	jp nz,l482fh
	ld a,(0e389h)
	and 002h
	ret nz
l0778h:
	ld a,(0e380h)
	and 002h
	jp nz,l483dh
	ld a,(0ed16h)
	and 002h
	jp nz,l483dh
	ld a,(0ed14h)
	and 002h
	jr z,l079bh
	ld a,(0ed1ah)
	dec a
	cp 000h
	jr nz,l07adh
	ld a,001h
	jr l07adh
l079bh:
	ld a,(0ed15h)
	and 002h
	jr z,l07b3h
	ld a,(0ed1ah)
	inc a
	cp 009h
	jp nz,l47adh
	ld a,008h
l07adh:
	ld (0ed1ah),a
	call sub_487ah
l07b3h:
	ld a,(0ed18h)
	and 002h
	jp z,047e5h
	ld a,(0ed1ah)
	cp 001h
	jp z,047e9h
	cp 002h
	jp z,047f7h
	cp 003h
	jp z,l4804h+1
	cp 004h
	jp z,l4813h
	cp 005h
	jp z,l481fh+2
	cp 006h
	jp z,l482fh
	cp 007h
	ret z
	cp 008h
	jp z,l483dh
	ret
	halt
	jp 0473fh
	call sub_4de9h
	call l003fh+2
	ld a,001h
	ld (0ed1ch),a
	jp 046eeh
	call sub_4f01h
	call l003fh+2
	ld a,002h
	ld (0ed1ch),a
	jp 046eeh
	call sub_50e2h
	call l003fh+2
	ld a,003h
	ld (0ed1ch),a
	jp 046eeh
	call sub_5bfdh
	call l003fh+2
	ld a,004h
	ld (0ed1ch),a
	jp 046eeh
	call sub_54e6h
	call l003fh+2
	ld a,005h
	ld (0ed1ch),a
	jp 046eeh
	call sub_5897h
	call l003fh+2
	ld a,006h
	ld (0ed1ch),a
	jp 046eeh
	call l003fh+2
	ld a,001h
	ld (0ed1ch),a
	jp sub_4594h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,l7ef2h
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ret
	ld hl,08090h
	call sub_60f3h
	ld hl,00114h
	call sub_6229h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,080c7h
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ret
	ld h,002h
	ld a,(0ed1bh)
	add a,007h
	ld l,a
	call sub_6229h
	ld hl,08108h
	call sub_60f3h
	ld h,002h
	ld a,(0ed1ah)
	add a,007h
	ld l,a
	call sub_6229h
	ld hl,08106h
	call sub_60f3h
	ld a,(0ed1ah)
	ld (0ed1bh),a
	ret
	call sub_622ch
	call l003fh+2
	call sub_4848h
	ld hl,l0104h
	call sub_6229h
	ld hl,0810ah
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,0811dh
	call sub_60f3h
	ld hl,l7f0ch
	call sub_60f3h
	ld hl,l7f3eh
	call sub_60f3h
	call 00044h
l08d3h:
	call 040c8h
	ld a,(0ed18h)
	and 002h
	jp nz,l48e7h
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l08d3h
	ld a,001h
	ld (0ec74h),a
	ld bc,l0f04h
	ld de,l0128h
	call sub_5db7h
	call l003fh+2
	ld a,020h
	ld bc,sub_0000h
l08fdh:
	call sub_00a2h
l0900h:
	inc a
	cp 07fh
	jr nz,l0906h
	inc a
l0906h:
	cp 0ffh
	jr nz,l090ch
l090ah:
	ld a,020h
l090ch:
	ld d,a
	inc c
	ld a,c
	cp 028h
	jr nz,l091bh
	ld c,000h
	inc b
	ld a,b
	cp 017h
	jr z,l091eh
l091bh:
	ld a,d
	jr l08fdh
l091eh:
	call 00044h
	ld bc,l0f04h
	push bc
	call 040c8h
	pop bc
	ld a,(0ed14h)
	and 002h
	jp nz,l495bh
	ld a,(0ed15h)
	and 002h
	jp nz,0496ch
	ld a,(0ed17h)
	and 002h
	jp nz,l497dh
	ld a,(0ed16h)
	and 002h
	jp nz,l498eh
	ld a,(0ed18h)
	and 002h
	jp nz,0499fh
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jp l4924h
	ld a,c
	inc a
	cp 010h
	jr nz,l0963h
	ld a,001h
l0963h:
	ld c,a
	push bc
	call sub_6230h
	pop bc
	jp 04951h
	ld a,c
	dec a
	cp 000h
	jr nz,l0974h
	ld a,00fh
l0974h:
	ld c,a
	push bc
	call sub_6230h
	pop bc
	jp 04951h
	ld a,b
	inc a
	cp 010h
	jr nz,l0985h
	ld a,001h
l0985h:
	ld b,a
	push bc
	call sub_6230h
	pop bc
	jp 04951h
	ld a,b
	dec a
	cp 000h
	jr nz,l0996h
	ld a,00fh
l0996h:
	ld b,a
	push bc
	call sub_6230h
	pop bc
	jp 04951h
	ld bc,l0f04h
	push bc
	call sub_6230h
	pop bc
	jp 04951h
	call sub_622ch
	call l003fh+2
	call sub_4848h
	ld hl,l0104h
	call sub_6229h
	ld hl,081b3h
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,081c6h
	call sub_60f3h
	ld hl,l7f0ch
	call sub_60f3h
	ld hl,l7f3eh
	call sub_60f3h
	call 00044h
l09dah:
	call 040c8h
	ld a,(0ed18h)
	and 002h
	jp nz,049eeh
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l09dah
	ld a,001h
	ld (0ec74h),a
	ld bc,l0f04h
	ld de,00120h
	call sub_5dd5h
	call l003fh+2
	ld a,020h
	ld bc,sub_0000h
l0a04h:
	call sub_00a2h
	inc a
	cp 07fh
	jr nz,l0a0dh
	inc a
l0a0dh:
	cp 0ffh
	jr nz,l0a13h
	ld a,020h
l0a13h:
	ld d,a
	inc c
	ld a,c
	cp 020h
	jr nz,l0a22h
	ld c,000h
	inc b
	ld a,b
	cp 017h
	jr z,l0a25h
l0a22h:
	ld a,d
	jr l0a04h
l0a25h:
	call 00044h
	ld bc,l0f04h
	ld de,00100h
	push bc
	push de
	call 040c8h
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
	jp nz,04a8dh
	ld a,(0ed16h)
	and 002h
	jp nz,l4aa0h
	ld a,(0ed18h)
	and 002h
	jp nz,l4ab3h
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jp l4a2eh
	ld a,c
	inc a
	cp 010h
	jr nz,l0a6fh
	ld a,001h
l0a6fh:
	ld c,a
	push bc
	push de
	call sub_6230h
	pop de
	pop bc
	jp 04a5dh
	ld a,c
	dec a
	cp 000h
	jr nz,l0a82h
	ld a,00fh
l0a82h:
	ld c,a
	push bc
	push de
	call sub_6230h
	pop de
	pop bc
	jp 04a5dh
	ld a,b
	inc a
	cp 010h
	jr nz,l0a95h
	ld a,001h
l0a95h:
	ld b,a
	push bc
	push de
	call sub_6230h
	pop de
	pop bc
	jp 04a5dh
	ld a,b
	dec a
	cp 000h
	jr nz,l0aa8h
	ld a,00fh
l0aa8h:
	ld b,a
	push bc
	push de
	call sub_6230h
	pop de
	pop bc
	jp 04a5dh
	inc d
	ld a,d
	cp 010h
	jr nz,l0abbh
	ld d,001h
l0abbh:
	ld hl,0f3e9h
	inc l
	inc l
	ld (hl),d
	push bc
	push de
	call l0060h+2
	pop de
	pop bc
	jp 04a5dh
	call sub_622ch
	call l003fh+2
	call sub_4848h
	ld hl,l0104h
	call sub_6229h
	ld hl,08267h
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,0827ah
	call sub_60f3h
	ld hl,l7f0ch
	call sub_60f3h
	ld hl,l7f3eh
	call sub_60f3h
	call 00044h
l0afbh:
	call 040c8h
	ld a,(0ed18h)
	and 002h
	jp nz,04b0fh
	ld a,(0ed19h)
	and 002h
	ret nz
l0b0ch:
	halt
	jr l0afbh
	ld a,001h
	ld (0ec74h),a
	ld bc,l0f01h
	ld de,00100h
	call sub_5df3h
	ld bc,l0101h
	push bc
	call sub_4b99h
	pop bc
	push bc
	call 040c8h
	pop bc
	ld a,(0ed17h)
	and 002h
	jr z,l0b41h
	inc b
	ld a,b
	cp 005h
	jr nz,l0b39h
	ld b,001h
l0b39h:
	push bc
	call sub_4b99h
	pop bc
	jp l4b8fh
l0b41h:
	ld a,(0ed16h)
	and 002h
	jr z,l0b58h
	dec b
	ld a,b
	cp 000h
	jr nz,l0b50h
	ld b,004h
l0b50h:
	push bc
	call sub_4b99h
	pop bc
	jp l4b8fh
l0b58h:
	ld a,(0ed14h)
	and 002h
	jr z,l0b75h
	inc c
	ld a,c
	cp 010h
	jr nz,l0b67h
	ld c,001h
l0b67h:
	push bc
	ld hl,0f3e9h
	inc l
	inc l
	ld (hl),c
	call l0060h+2
	pop bc
	jp l4b8fh
l0b75h:
	ld a,(0ed15h)
	and 002h
	jr z,l0b8fh
	dec c
	ld a,c
	cp 000h
	jr nz,l0b84h
	ld c,00fh
l0b84h:
	push bc
	ld hl,0f3e9h
	inc l
	inc l
	ld (hl),c
	call l0060h+2
	pop bc
l0b8fh:
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jp 04b25h
	push bc
	ld a,b
	cp 001h
	jr nz,l0ba5h
	ld hl,l6b5ch
	jp l4bbch
l0ba5h:
	cp 002h
	jr nz,l0bafh
	ld hl,l6f16h
	jp l4bbch
l0bafh:
	cp 003h
	jr nz,l0bb9h
	ld hl,l72beh
	jp l4bbch
l0bb9h:
	ld hl,l7764h
	call sub_5fefh
	pop bc
	ret
	call sub_622ch
	call l003fh+2
	call sub_4848h
	ld hl,l0104h
	call sub_6229h
	ld hl,082dfh
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,082f2h
	call sub_60f3h
	ld hl,l7f0ch
	call sub_60f3h
	ld hl,l7f3eh
	call sub_60f3h
	call 00044h
l0bf1h:
	call 040c8h
	ld a,(0ed18h)
	and 002h
	jp nz,l4c05h
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
l0c03h:
	jr l0bf1h
	ld a,001h
	ld (0ec74h),a
	ld bc,l0f01h
	ld de,00100h
	call sub_5e0ch
	ld hl,00800h
	ld bc,00300h
	xor a
	call 00056h
	ld bc,l0101h
	push bc
	call sub_4c98h
	pop bc
	push bc
	call 040c8h
	pop bc
	ld a,(0ed17h)
	and 002h
	jp z,l4c42h
	inc b
	ld a,b
	cp 008h
	jp nz,04c3bh
	ld b,001h
	push bc
	call sub_4c98h
	pop bc
	jr l0c58h
	ld a,(0ed16h)
	and 002h
	jp z,l4c58h
	dec b
	ld a,b
	cp 000h
	jp nz,04c53h
	ld b,007h
	push bc
	call sub_4c98h
	pop bc
l0c58h:
	ld a,(0ed14h)
	and 002h
	jr z,l0c74h
	inc c
	ld a,c
	cp 010h
	jr nz,l0c67h
	ld c,001h
l0c67h:
	push bc
	ld hl,0f3e9h
	inc l
	inc l
	ld (hl),c
	call l0060h+2
	pop bc
	jr l0c8eh
l0c74h:
	ld a,(0ed15h)
	and 002h
	jr z,l0c8eh
	dec c
	ld a,c
	cp 000h
	jr nz,l0c83h
	ld c,00fh
l0c83h:
	push bc
	ld hl,0f3e9h
	inc l
	inc l
	ld (hl),c
	call l0060h+2
	pop bc
l0c8eh:
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jp l4c25h
	ld de,l0008h
	xor a
	ld hl,l7e83h
l0c9fh:
	inc a
	cp b
	jr z,l0ca6h
	add hl,de
	jr l0c9fh
l0ca6h:
	ld de,sub_0000h
	ld bc,l0008h
	call 0005ch
	ret
	call sub_622ch
	call l003fh+2
	call sub_4848h
	ld hl,l0104h
	call sub_6229h
	ld hl,08359h
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,08378h
	call sub_60f3h
	ld hl,l7f0ch
	call sub_60f3h
	ld hl,l7f3eh
	call sub_60f3h
	call 00044h
l0ce0h:
	call 040c8h
	ld a,(0ed18h)
	and 002h
	jp nz,l4cf4h
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l0ce0h
	ld a,001h
	ld (0ec74h),a
	ld bc,l0f01h
	ld de,00100h
	call sub_5df3h
	call sub_6085h
	call sub_606dh
	ld b,000h
	ld hl,l7dbfh
	call sub_60a0h
	call sub_4d57h
	call 04d85h
	ld b,000h
	push bc
	call 040c8h
	ld a,(0ed14h)
	and 002h
	jr z,l0d29h
sub_0d23h:
	call sub_4d57h
	call 04d85h
l0d29h:
	pop bc
	ld a,b
	cp 000h
	jr nz,l0d3ah
	ld a,(0ed18h)
	and 002h
	jr z,l0d4dh
	ld b,001h
	jr l0d4dh
l0d3ah:
	push bc
	call 04da3h
	call sub_6094h
	pop bc
	ld a,(0ed18h)
	and 002h
	jr z,l0d4dh
	ld b,000h
	jr l0d4dh
l0d4dh:
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jp l4d18h
	xor a
	ld de,l1803h
	ld bc,l0002h
	push af
	push bc
	push de
	call sub_60c5h
	pop de
	pop bc
	ld a,d
	add a,040h
	ld d,a
	jr nc,l0d72h
	ld d,018h
	ld a,e
	add a,018h
	ld e,a
l0d72h:
	inc c
	ld a,c
	cp 010h
	jr nz,l0d7ah
	ld c,002h
l0d7ah:
	pop af
	inc a
	cp 020h
	jp nz,l4d5eh
	call sub_6094h
	ret
	ld hl,0e474h
	ld b,000h
l0d8ah:
	push bc
	push hl
	call sub_5d86h
	pop hl
	pop bc
	add a,080h
	jr nc,l0d99h
	ld (hl),001h
	jr l0d9bh
l0d99h:
	ld (hl),000h
l0d9bh:
	inc hl
	inc b
	ld a,b
	cp 040h
	jr nz,l0d8ah
	ret
	xor a
	ld bc,0e474h
	ld de,0e3e5h
	push af
	ld a,(bc)
	or a
	jr z,l0db9h
	ld a,(de)
	dec a
	ld (de),a
	or a
	jr nz,l0dc3h
	xor a
	ld (bc),a
	jr l0dc3h
l0db9h:
	ld a,(de)
	inc a
	ld (de),a
	cp 0afh
	jr nz,l0dc3h
	ld a,001h
	ld (bc),a
l0dc3h:
	inc bc
	inc de
	ld a,(bc)
l0dc6h:
	or a
	jr z,l0dd3h
	ld a,(de)
l0dcah:
	dec a
	ld (de),a
	or a
	jr nz,l0dddh
	xor a
	ld (bc),a
	jr l0dddh
l0dd3h:
	ld a,(de)
	inc a
	ld (de),a
	cp 0efh
	jr nz,l0dddh
	ld a,001h
	ld (bc),a
l0dddh:
	inc bc
	inc de
	inc de
	inc de
	pop af
	inc a
	cp 020h
	jp nz,04daah
	ret
	call sub_622ch
	call l003fh+2
	call sub_4848h
	ld hl,l0104h
	call sub_6229h
	ld hl,083dbh
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
l0e04h:
	ld hl,083eeh
	call sub_60f3h
	ld hl,l7f3eh
	call sub_60f3h
	call 00044h
l0e13h:
	call 040c8h
	ld a,(0ed18h)
	and 002h
	jp nz,l4e27h
l0e1eh:
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l0e13h
	call l003fh+2
	call sub_622ch
	ld hl,l060bh
	call sub_6229h
	ld hl,084c9h
	call sub_60f3h
	call 00044h
l0e3ch:
	call 040c8h
	ld a,(0e3d8h)
	and 0ffh
	jp z,l4e50h
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l0e3ch
	call l003fh+2
	call sub_622ch
	ld hl,084e9h
	call sub_60f3h
	call 00044h
l0e5fh:
	call 040c8h
	call sub_4e87h
	call sub_4e9ch
	ld a,(0e3deh)
	and 002h
	jr nz,l0e83h
	ld a,(0e3b0h)
	and 001h
	jr z,l0e7dh
	ld a,(0e3bah)
	and 002h
	jr nz,l0e83h
l0e7dh:
	call sub_5ce7h
	halt
	jr l0e5fh
l0e83h:
	call sub_5cfah
	ret
	ld a,(0e3d8h)
	and 001h
	jr nz,l0e95h
	ld bc,l0f04h
	call sub_6230h
	ret
l0e95h:
	ld bc,l040eh
	call sub_6230h
	ret
	ld hl,0e380h
	ld de,sub_0000h
l0ea2h:
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
	jr nz,l0ea2h
	ret
	push hl
	push de
	push bc
	call sub_4eddh
	ld hl,08504h
	call sub_60f3h
	call sub_5cb4h
	pop bc
	pop de
	pop hl
	ret
	push hl
	push de
	push bc
	call sub_4eddh
	ld hl,08510h
	call sub_60f3h
	call sub_5ccdh
	pop bc
	pop de
	pop hl
	ret
	ld a,007h
	sub e
	jr c,l0ee7h
	ld hl,08daeh
	jr l0efch
l0ee7h:
	ld a,02fh
	sub e
	jr nc,l0ef5h
	ld a,e
	sub 030h
	ld e,a
	ld hl,08e06h
	jr l0efch
l0ef5h:
	ld a,e
	sub 008h
	ld e,a
	ld hl,(0ed1eh)
l0efch:
	add hl,de
	ld a,(hl)
	jp sub_00a2h
l0f01h:
	call sub_622ch
l0f04h:
	call l003fh+2
l0f07h:
	call sub_4848h
	ld hl,l0104h
	call sub_6229h
	ld hl,0851ah
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,0852eh
l0f1fh:
	call sub_60f3h
	ld hl,l7f3eh
	call sub_60f3h
	call 00044h
l0f2bh:
	call 040c8h
	ld a,(0ed18h)
	and 002h
	jp nz,l4f3fh
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l0f2bh
	ld a,001h
	ld (0ec74h),a
	ld bc,l0f01h
	ld de,00100h
	call sub_5df3h
	ld hl,l7b6fh
	call sub_5fefh
	call l003fh+2
	call sub_6085h
	call sub_606dh
	ld b,000h
	ld hl,l7de1h
	call sub_60a0h
	xor a
	ld de,0403fh
	ld bc,l0001h
	call sub_60c5h
	ld a,001h
	ld de,l5857h
	ld bc,l0101h
	call sub_60c5h
	ld a,002h
	ld de,l406fh
	ld bc,l0201h
	call sub_60c5h
	ld a,003h
	ld de,l2857h
	ld bc,l0301h
	call sub_60c5h
	ld a,004h
	ld de,l308fh
	ld bc,l0400h+1
	call sub_60c5h
	ld a,005h
	ld de,l508fh
	ld bc,l0400h+1
	call sub_60c5h
	ld a,006h
	ld de,0b03fh
	ld bc,l0001h
	call sub_60c5h
	ld a,007h
	ld de,0c857h
	ld bc,l0101h
	call sub_60c5h
	ld a,008h
	ld de,0b06fh
	ld bc,l0201h
	call sub_60c5h
	ld a,009h
	ld de,09857h
	ld bc,l0301h
	call sub_60c5h
	ld a,00ah
	ld de,0a08fh
	ld bc,l0400h+1
	call sub_60c5h
	ld a,00bh
	ld de,0c08fh
	ld bc,l0400h+1
	call sub_60c5h
	call sub_6094h
	call 00044h
	call 040c8h
	ld a,(0e3bah)
	and 002h
	ret nz
	ld a,(0e3d9h)
	and 001h
	jr z,l1003h
	ld a,(0e3ddh)
l1000h:
	and 002h
	ret nz
l1003h:
	ld hl,0e3e5h
	ld b,004h
l1008h:
	ld a,(0e3d9h)
l100bh:
	and 001h
	jp z,l5012h
sub_1010h:
	ld b,00ah
	call sub_60edh
	ld hl,0e3e9h
	ld b,004h
	ld a,(0e3dch)
	and 001h
	jp z,l5024h
	ld b,00ah
	call sub_60edh
	ld hl,0e3edh
	ld b,004h
	ld a,(0e3dah)
	and 001h
	jp z,l5036h
	ld b,00ah
	call sub_60edh
	ld hl,0e3f1h
	ld b,004h
	ld a,(0e3dbh)
	and 001h
	jp z,l5048h
	ld b,00ah
	call sub_60edh
	ld hl,0e3f5h
	ld b,004h
	ld a,(0e3ddh)
	and 001h
	jp z,l505ah
	ld b,00ah
	call sub_60edh
	ld hl,0e3f9h
	ld b,004h
	ld a,(0e3deh)
	and 001h
	jp z,l506ch
	ld b,00ah
	call sub_60edh
	ld hl,0e3fdh
	ld b,006h
	ld a,(0e3dfh)
	and 001h
	jp z,l507eh
	ld b,00ch
	call sub_60edh
	ld hl,0e401h
	ld b,006h
	ld a,(0e3e2h)
	and 001h
	jp z,l5090h
	ld b,00ch
	call sub_60edh
	ld hl,0e405h
	ld b,006h
	ld a,(0e3e0h)
	and 001h
	jp z,l50a2h
	ld b,00ch
	call sub_60edh
	ld hl,0e409h
	ld b,006h
	ld a,(0e3e1h)
	and 001h
	jp z,l50b4h
	ld b,00ch
	call sub_60edh
	ld hl,0e40dh
	ld b,006h
	ld a,(0e3e3h)
	and 001h
	jp z,l50c6h
	ld b,00ch
	call sub_60edh
	ld hl,0e411h
	ld b,006h
	ld a,(0e3e4h)
	and 001h
	jp z,l50d8h
	ld b,00ch
	call sub_60edh
	call sub_6094h
	halt
	jp l4fedh
	call sub_622ch
	call l003fh+2
	call sub_4848h
	ld hl,l0104h
	call sub_6229h
	ld hl,085f9h
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,08607h
	call sub_60f3h
	ld hl,l7f0ch
	call sub_60f3h
	ld hl,l7f3eh
	call sub_60f3h
	call 00044h
l1112h:
	call 040c8h
	ld a,(0ed18h)
	and 002h
	jp nz,l5126h
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l1112h
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
sub_1144h:
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
	call l003fh+2
	ld hl,08666h
	call sub_60f3h
	call sub_521fh
	call 00044h
	call 040c8h
	ld a,(0ed19h)
	and 002h
	jp nz,l521bh
	ld a,(0ed14h)
	and 002h
	jr z,l11bch
	ld a,(0e474h)
	dec a
	cp 000h
	jr nz,l11ceh
	ld a,001h
	jr l11ceh
l11bch:
	ld a,(0ed15h)
	and 002h
	jr z,l11d4h
	ld a,(0e474h)
sub_11c6h:
	inc a
	cp 009h
	jp nz,l51ceh
	ld a,008h
l11ceh:
	ld (0e474h),a
	call sub_521fh
l11d4h:
	xor a
	ld b,a
	ld a,(0ed17h)
	and 002h
	jr z,l11e2h
	ld a,001h
	ld b,a
	jr l11ech
l11e2h:
	ld a,(0ed16h)
	and 002h
	jr z,l1217h
	ld a,002h
	ld b,a
l11ech:
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
l1214h:
	jp z,l5304h
l1217h:
	halt
	jp l519eh
	call sub_5e43h
	ret
	ld a,(0e47fh)
	ld h,a
	ld a,(0e480h)
	ld l,a
	call sub_6229h
	ld hl,08108h
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
	ld a,c
	ld l,a
	ld (0e47eh),a
	call sub_6229h
	ld hl,08106h
	call sub_60f3h
	ld a,(0e47dh)
	ld (0e47fh),a
	ld a,(0e47eh)
	ld (0e480h),a
	ret
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
	ld a,001h
	ld (0e481h),a
	ld a,(0e478h)
	ld (0e482h),a
	call sub_53abh
	ld a,(0e482h)
	ld (0e478h),a
	jp l5217h
	ld a,002h
	ld (0e481h),a
	ld a,(0e479h)
	ld (0e482h),a
	call sub_53abh
	ld a,(0e482h)
	ld (0e479h),a
	jp l5217h
	ld a,003h
	ld (0e481h),a
	ld a,(0e47ah)
	ld (0e482h),a
	call sub_53abh
	ld a,(0e482h)
	ld (0e47ah),a
	jp l5217h
	call sub_5417h
	jp l5217h
	call sub_548fh
	jp l5217h
	ld a,b
	cp 001h
	jp nz,l531ch
	ld a,(0e483h)
	cp 003h
	ret z
	inc a
	ld (0e483h),a
	jr l1326h
	ld a,(0e483h)
	cp 000h
	ret z
	dec a
	ld (0e483h),a
l1326h:
	cp 000h
	jr nz,l132fh
	ld bc,sub_0000h
	jr l1344h
l132fh:
	cp 001h
	jr nz,l1338h
	ld bc,00174h
	jr l1344h
l1338h:
	cp 002h
	jr nz,l1341h
	ld bc,000dfh
	jr l1344h
l1341h:
	ld bc,l006fh
l1344h:
	ld a,(0e481h)
	cp 001h
	jr nz,l1353h
	ld de,00100h
	ld hl,l0008h
	jr l136ah
l1353h:
	cp 002h
	jr nz,l135fh
	ld de,l0301h+1
	ld hl,l0009h
	jr l136ah
l135fh:
	cp 003h
	ret nz
	ld de,l0504h
	ld hl,l000ah
	jr l136ah
l136ah:
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
l138ch:
	push hl
	push bc
	call sub_00c6h
	pop bc
	pop hl
	ld a,h
	add a,008h
	ld h,a
	ld a,b
	cp c
	jr z,l139fh
	ld a,0c2h
	jr l13a1h
l139fh:
	ld a,0c1h
l13a1h:
	call sub_00a2h
	inc b
	ld a,004h
	cp b
	jr nz,l138ch
	ret
	ld a,b
	cp 001h
	jp nz,l53bdh
	ld a,(0e482h)
	cp 00fh
	ret z
	inc a
	ld (0e482h),a
	jr l13c7h
	ld a,(0e482h)
	cp 000h
l13c2h:
	ret z
	dec a
	ld (0e482h),a
l13c7h:
	ld a,(0e481h)
	cp 001h
	jr nz,l13d3h
	ld de,l0008h
	jr l13e2h
l13d3h:
	cp 002h
	jr nz,l13dch
	ld de,l0009h
	jr l13e2h
l13dch:
	cp 003h
	ret nz
	ld de,l000ah
l13e2h:
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
l13f9h:
	push hl
	push bc
	call sub_00c6h
	pop bc
	pop hl
l1400h:
	ld a,h
	inc a
	ld h,a
	ld a,c
	sub b
	jr nc,l140bh
	ld a,0c2h
	jr l140dh
l140bh:
	ld a,0c1h
l140dh:
	call sub_00a2h
	inc b
	ld a,010h
	cp b
	jr nz,l13f9h
	ret
	ld a,b
	cp 001h
	jp nz,l5429h
	ld a,(0e47bh)
	cp 003h
	ret z
	inc a
	ld (0e47bh),a
	jr l1433h
	ld a,(0e47bh)
	cp 000h
	ret z
	dec a
	ld (0e47bh),a
l1433h:
	ld a,(0e47bh)
	cp 000h
	jr nz,l143fh
	ld de,l0038h
	jr l1457h
l143fh:
	cp 001h
	jr nz,l1448h
	ld de,l0031h
	jr l1457h
l1448h:
	cp 002h
	jr nz,l1451h
	ld de,l002ah
	jr l1457h
l1451h:
	cp 003h
	ret nz
	ld de,l001ch
l1457h:
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
l1470h:
	push hl
	push bc
	call sub_00c6h
	pop bc
	pop hl
	ld a,h
	add a,006h
	ld h,a
	ld a,b
	cp c
	jr z,l1483h
	ld a,0c2h
	jr l1485h
l1483h:
	ld a,0c1h
l1485h:
	call sub_00a2h
	inc b
	ld a,004h
	cp b
	jr nz,l1470h
	ret
	ld a,b
	cp 001h
	jp nz,l54a1h
	ld a,(0e47ch)
	cp 00fh
	ret z
	inc a
	ld (0e47ch),a
	jr l14abh
	ld a,(0e47ch)
	cp 000h
	ret z
	dec a
	ld (0e47ch),a
l14abh:
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
l14c8h:
	push hl
	push bc
	call sub_00c6h
	pop bc
	pop hl
	ld a,h
	inc a
	ld h,a
	ld a,c
	sub b
	jr nc,l14dah
	ld a,0c2h
	jr l14dch
l14dah:
	ld a,0c1h
l14dch:
	call sub_00a2h
	inc b
	ld a,010h
	cp b
	jr nz,l14c8h
	ret
	call sub_622ch
	call l003fh+2
	ld a,(l002dh)
	or a
	jr nz,l14f7h
	ld hl,08a34h
	jr l1515h
l14f7h:
	cp 001h
	jr nz,l1500h
	ld hl,08a38h
	jr l1515h
l1500h:
	cp 002h
	jr nz,l1509h
	ld hl,08a3dh
	jr l1515h
l1509h:
	cp 003h
	jr nz,l1512h
	ld hl,08a43h
	jr l1515h
l1512h:
	ld hl,08a4bh
l1515h:
	ld (0e4f4h),hl
	ld a,(0fafch)
	and 006h
	jr nz,l1524h
	ld hl,l0016h
	jr l1542h
l1524h:
	cp 002h
	jr nz,l152dh
	ld hl,00064h
	jr l1542h
l152dh:
	cp 004h
	jr nz,l1536h
	ld hl,l0128h
	jr l1542h
l1536h:
	cp 006h
	jr nz,l153fh
	ld hl,00192h
	jr l1542h
l153fh:
	ld hl,0ffffh
l1542h:
	ld (0e4f8h),hl
	ld a,(0ec75h)
	or a
	jr nz,l155bh
	ld a,(0ec76h)
	or a
	jr z,l1556h
	ld hl,08a72h
	jr l1570h
l1556h:
	ld hl,08a65h
	jr l1570h
l155bh:
	cp 001h
	jr nz,l1564h
	ld hl,08a7bh
	jr l1570h
l1564h:
	cp 002h
	jr nz,l156dh
	ld hl,08a81h
	jr l1570h
l156dh:
	ld hl,08a4bh
l1570h:
	ld (0e4fah),hl
	ld a,(0ec76h)
	or a
	jr z,l157eh
	ld hl,00050h
	jr l1581h
l157eh:
	ld hl,l0060h
l1581h:
	ld (0e4fch),hl
	ld a,(0ed1dh)
	or a
	jr nz,l158fh
	ld hl,08a9ch
	jr l15bfh
l158fh:
	cp 001h
	jr nz,l1598h
	ld hl,08a9fh
	jr l15bfh
l1598h:
	cp 002h
	jr nz,l15a1h
	ld hl,08aa3h
	jr l15bfh
l15a1h:
	cp 003h
	jr nz,l15aah
	ld hl,08aa6h
	jr l15bfh
l15aah:
	cp 004h
	jr nz,l15b3h
	ld hl,08aa9h
	jr l15bfh
l15b3h:
	cp 005h
	jr nz,l15bch
	ld hl,08aach
	jr l15bfh
l15bch:
	ld hl,08ab1h
l15bfh:
	ld (0e4f6h),hl
	ld hl,08a16h
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,l0205h
	call sub_6229h
	ld hl,08a2ch
	call sub_60f3h
	ld hl,(0e4f4h)
	call sub_60f3h
	ld hl,01605h
	call sub_6229h
	ld hl,08a91h
	call sub_60f3h
	ld hl,(0e4f6h)
	call sub_60f3h
	ld hl,00207h
	call sub_6229h
	ld hl,08a52h
	call sub_60f3h
	ld hl,(0ec77h)
	ld c,h
	ld d,l
	ld a,(0ec79h)
	and 00fh
	ld b,a
l1609h:
	call sub_60fdh
	ld hl,08a4fh
	call sub_60f3h
	ld hl,l0209h
	call sub_6229h
	ld hl,08a58h
	call sub_60f3h
	ld b,000h
	ld hl,(0e4f8h)
	ld c,h
	ld d,l
	call sub_60fdh
	ld hl,08a4fh
	call sub_60f3h
	ld hl,01607h
	call sub_6229h
	ld hl,08a5fh
	call sub_60f3h
	ld hl,(0e4fah)
	call sub_60f3h
	ld hl,l1609h
	call sub_6229h
	ld hl,08a87h
	call sub_60f3h
	ld b,000h
	ld hl,(0e4fch)
	ld c,h
	ld d,l
	call sub_60fdh
	ld hl,08a8eh
	call sub_60f3h
	ld a,(l002ah+1)
	and 080h
	rlc a
	ld b,a
	ld a,(0ec76h)
	xor b
	jr z,l166fh
	ld a,0cfh
	call sub_00a2h
l166fh:
	ld hl,l0209h+2
	call sub_6229h
	ld hl,08ac2h
	call sub_60f3h
	ld hl,l020ch
	ld b,005h
l1680h:
	push hl
	push bc
	call sub_6229h
	ld hl,08adch
	call sub_60f3h
	pop bc
	pop hl
	inc hl
	inc hl
	djnz l1680h
	ld hl,l020ch+1
	ld b,004h
l1696h:
	push hl
	push bc
	call sub_6229h
	ld hl,08af6h
	call sub_60f3h
	pop bc
	pop hl
	inc hl
	inc hl
	djnz l1696h
	ld hl,00215h
	call sub_6229h
	ld hl,08b10h
	call sub_60f3h
	ld hl,0030ch
	push hl
	call sub_6229h
	ld a,053h
	call sub_00a2h
	pop hl
	inc hl
	inc hl
	ld bc,l0400h
l16c5h:
	push hl
	push bc
	call sub_6229h
	pop bc
	push bc
	ld d,c
	ld bc,sub_0000h
	call sub_60fdh
	pop bc
	pop hl
	inc c
	inc hl
	inc hl
	djnz l16c5h
	ld hl,0e474h
	ld (hl),053h
	inc hl
	ld (hl),055h
	inc hl
	ld (hl),042h
	inc hl
	inc hl
	ld (hl),000h
	ld hl,l050ch
	ld bc,l0400h
l16efh:
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
	ld de,l0500h
	add hl,de
	djnz l16efh
	ld hl,0190ch
	call sub_6229h
	ld a,045h
	call sub_00a2h
	ld hl,l190eh
	ld bc,l0400h
l171ch:
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
	call sub_00a2h
	pop bc
	pop hl
	inc c
	inc hl
	inc hl
	djnz l171ch
	ld hl,l050eh
	ld (0e574h),hl
	call sub_6229h
	ld hl,0ec7eh
	ld b,004h
l1745h:
	push bc
	ld b,004h
l1748h:
	push bc
	push hl
	call sub_5776h
	ld hl,(0e574h)
	ld de,l0500h
	add hl,de
	ld (0e574h),hl
	call sub_6229h
	pop hl
	pop bc
	inc hl
	djnz l1748h
	push hl
	ld hl,(0e574h)
	ld h,005h
	ld de,l0002h
	add hl,de
	ld (0e574h),hl
	call sub_6229h
	pop hl
	pop bc
	djnz l1745h
	jp l579ch
	ld a,(hl)
	ld d,a
	ld b,004h
	ld c,001h
	ld e,030h
l177eh:
	ld a,d
	and c
	jr z,l178dh
	bit 7,(hl)
	jr nz,l1789h
	ld a,e
	jr l178fh
l1789h:
	ld a,0c2h
	jr l178fh
l178dh:
	ld a,020h
l178fh:
	push bc
	push de
	call sub_00a2h
	pop de
	pop bc
	sla c
	inc e
	djnz l177eh
	ret
	ld hl,l1d0ch
	call sub_6229h
	ld hl,08ab8h
	call sub_60f3h
	ld hl,l1d12h
	call sub_6229h
	ld hl,08abdh
	call sub_60f3h
	ld hl,00117h
	call sub_6229h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,08b2ah
	call sub_60f3h
	call 00044h
l17c9h:
	call 040c8h
	ld a,(0ed18h)
	and 002h
	ret nz
	ld a,(0ed19h)
	and 002h
	ret nz
	call sub_57deh
	halt
	jr l17c9h
	ld hl,01d0eh
	call sub_6229h
	ld hl,l090ah
	call sub_5823h
	ld a,02fh
	call sub_00a2h
	ld hl,00708h
	call sub_5823h
	ld a,02fh
	call sub_00a2h
	ld hl,l0b0ch
	call sub_5823h
l1800h:
	ld hl,l1d14h
l1803h:
	call sub_6229h
l1806h:
	ld hl,l0405h
	call sub_5823h
	ld a,03ah
	call sub_00a2h
	ld hl,l0203h
	call sub_5823h
	ld a,03ah
	call sub_00a2h
l181ch:
	ld hl,l0001h
	call sub_5823h
	ret
	ld a,(l002dh)
	or a
	jp nz,l5833h
	ld bc,sub_0000h
	ld d,0ffh
	call sub_60fdh
	ret
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
	call z,sub_5870h
	call sub_60fdh
	ret
	ld bc,sub_0000h
	sla e
	sla e
	sla e
	sla e
	xor a
	or e
	ret nz
	ld b,010h
	ret
	push bc
	push de
	push hl
	ld ix,l01f5h
	call sub_015fh
	pop hl
	pop de
	pop bc
	ret
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
	call sub_622ch
	call l003fh+2
	ld hl,08c76h
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,l0104h
	call sub_6229h
	ld hl,08c84h
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld a,0ffh
	ld (0e678h),a
	ld hl,l0906h
	call sub_58edh
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,l0118h
	call sub_6229h
	ld hl,08b2ah
	call sub_60f3h
	call 00044h
l18dbh:
	call 040c8h
	ld a,(0ed18h)
	and 002h
	ret nz
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l18dbh
	ld (0e674h),hl
	ld hl,08cadh
	ld de,0e68bh
	ld bc,l0007h
	ldir
	xor a
	ld (0e676h),a
	ld (0e679h),a
	ld bc,l0400h
	push bc
	ld a,c
l1907h:
	ld (0ed0eh),a
	ld hl,0e68dh
	ld a,c
l190eh:
	add a,030h
	ld (hl),a
	ld bc,l0400h
	push bc
	ld a,(0ed0eh)
l1918h:
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
	jr z,l193bh
	ld a,(0ed13h)
	set 7,a
	ld (0ed13h),a
l193bh:
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
	ld bc,l0400h
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
	jr z,l1994h
	call sub_6167h
	ld a,04bh
	call sub_00a2h
	ld a,042h
	call sub_00a2h
	jr l199fh
l1994h:
	push bc
	ld b,006h
l1997h:
	ld a,0c3h
	call sub_00a2h
	djnz l1997h
	pop bc
l199fh:
	pop bc
	inc c
	ld hl,(0e674h)
	ld de,00800h
	add hl,de
	ld (0e674h),hl
	ld a,(0e677h)
	bit 7,a
	jr nz,l19b8h
	dec b
	jp nz,l5970h
	jr l1a00h
l19b8h:
	exx
	ld hl,(0e674h)
	call sub_6229h
	ld hl,08cb4h
	call sub_60f3h
	ld hl,(0e674h)
	ld de,00800h
	add hl,de
	ld (0e674h),hl
	call sub_6229h
	ld a,049h
	call sub_00a2h
	ld a,04eh
	call sub_00a2h
	ld a,020h
	call sub_00a2h
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
	ld hl,08cbbh
	call sub_60f3h
	exx
l1a00h:
	ld a,00dh
	call sub_00a2h
	ld a,00ah
	call sub_00a2h
	ld hl,(0e674h)
	ld h,009h
	inc l
	ld (0e674h),hl
	ld a,(0e676h)
	inc a
	ld (0e676h),a
	pop bc
	ld a,(0e68ah)
	or a
	jr z,l1a36h
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
l1a36h:
	inc c
	dec b
	jp nz,l5914h
	pop bc
	inc c
	dec b
	jp nz,l5905h
	ret
	call sub_622ch
	call l003fh+2
	call sub_4848h
	ld hl,l0104h
	call sub_6229h
	ld hl,08b4bh
	call sub_60f3h
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,08b63h
	call sub_60f3h
	ld hl,l7f0ch
	call sub_60f3h
	ld hl,l7f3eh
	call sub_60f3h
	call 00044h
l1a72h:
	call 040c8h
	ld a,(0ed18h)
	and 002h
	jp nz,l5a86h
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l1a72h
	call sub_622ch
	xor a
	ld (0e477h),a
	ld bc,0010fh
	call sub_6230h
	ld hl,00f0bh
	call sub_6229h
	ld hl,08bd6h
	call sub_60f3h
	ld hl,08bd0h
	call sub_60f3h
	ld a,001h
	ld (0e474h),a
l1aaah:
	call 040c8h
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
	jr z,l1ad7h
	inc a
	ld (0e477h),a
	cp 078h
	jr nz,l1ad7h
	call sub_622ch
l1ad7h:
	call sub_5ce7h
	ld a,(0ed19h)
	and 002h
	jr nz,l1ae4h
	halt
	jr l1aaah
l1ae4h:
	call sub_5cfah
	ret
	ld a,(0e474h)
	inc a
	cp 007h
	jr nz,l1b00h
	ld a,001h
	jr l1b00h
	ld a,(0e474h)
	dec a
	cp 000h
	jr nz,l1b00h
	ld a,006h
	jr l1b00h
l1b00h:
	ld (0e474h),a
	push af
	call sub_622ch
	xor a
	ld (0e477h),a
	pop af
	cp 001h
	jr nz,l1b21h
	ld hl,00f0bh
	call sub_6229h
	ld hl,08bd6h
	call sub_60f3h
	ld bc,0010fh
	jr l1b9bh
l1b21h:
	cp 002h
	jr nz,l1b36h
	ld hl,00f0bh
	call sub_6229h
	ld hl,08bdch
	call sub_60f3h
	ld bc,l0f01h
	jr l1b9bh
l1b36h:
	cp 003h
	jr nz,l1b4bh
	ld hl,l100bh
	call sub_6229h
	ld hl,08be2h
	call sub_60f3h
	ld bc,l0109h
	jr l1b9bh
l1b4bh:
	cp 004h
	jr nz,l1b60h
	ld hl,00f0bh
	call sub_6229h
	ld hl,08be6h
	call sub_60f3h
	ld bc,l0103h
	jr l1b9bh
l1b60h:
	cp 005h
	jr nz,l1b75h
	ld hl,00f0bh
	call sub_6229h
	ld hl,08bech
	call sub_60f3h
	ld bc,l0104h+1
	jr l1b9bh
l1b75h:
	ld hl,00e0bh
	call sub_6229h
	ld hl,08bf2h
	call sub_60f3h
	ld hl,08bd0h
	call sub_60f3h
	ld bc,l0101h+1
	ld a,002h
	ld (0e475h),a
	ld a,008h
	ld (0e476h),a
	xor a
	ld (0e477h),a
	jp l5ad7h
l1b9bh:
	call sub_6230h
	ld hl,08bd0h
	call sub_60f3h
	jp l5ad7h
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
	ld (0e475h),a
	call sub_6230h
	jp l5ad7h
	ld a,(0e476h)
	cp 001h
	ret z
	srl a
	ld (0e476h),a
	jp sub_5cb4h
	ld a,(0e476h)
	cp 040h
	ret z
	sla a
	ld (0e476h),a
	jp sub_5ccdh
	call sub_622ch
l1c00h:
	call l003fh+2
	call sub_4848h
	ld hl,l0104h
	call sub_6229h
	ld hl,08bfah
	call sub_60f3h
l1c12h:
	ld hl,l7ec8h
	call sub_60f3h
	ld hl,08c0fh
	call sub_60f3h
	ld hl,l7f0ch
	call sub_60f3h
	ld hl,l7f3eh
	call sub_60f3h
	call 00044h
l1c2dh:
	call 040c8h
	ld a,(0ed18h)
	and 002h
	jp nz,l5c41h
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jr l1c2dh
	ld a,001h
	ld (0ec74h),a
	ld bc,l0f04h
	ld de,l0400h
	call sub_5df3h
	ld bc,09f03h
	call 00047h
	ld bc,l0004h
	call 00047h
	call l003fh+2
	ld a,0f4h
	ld bc,l1800h
	ld hl,02000h
	call 00056h
	ld bc,l0331h
	ld hl,l1800h
l1c6fh:
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
	djnz l1c6fh
	ld bc,00800h
	ld de,sub_0000h
	ld hl,(l0004h)
	call 0005ch
	ld b,003h
	ld de,l1800h
	ld hl,08c56h
l1c95h:
	push bc
	push de
	push hl
	ld bc,l0020h
	call 0005ch
	pop hl
	pop de
	pop bc
	inc d
	djnz l1c95h
	call 00044h
	call 040c8h
	ld a,(0ed19h)
	and 002h
	ret nz
	halt
	jp l5ca7h
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
	jr l1cfah
l1cfah:
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
l1d0ch:
	xor a
	out (0a1h),a
	ei
	ret
	ld b,(hl)
l1d12h:
	inc hl
	ld c,(hl)
l1d14h:
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
l1d35h:
	ld a,(hl)
	and 0c0h
	cp 0c0h
	jr z,l1d48h
	ld a,(hl)
	ld (de),a
	inc hl
	inc de
	dec bc
	ld a,b
	or c
	jr nz,l1d35h
	jp l5d5fh
l1d48h:
	push bc
	ld a,(hl)
	and 03fh
	ld b,a
	inc hl
	ld a,(hl)
	ld c,a
	inc hl
l1d51h:
	ld a,c
	ld (de),a
	inc de
	dec b
	jr nz,l1d51h
	pop bc
	dec bc
	dec bc
	ld a,b
	or c
	jp nz,l5d35h
	ret
	ld b,078h
l1d62h:
	ei
	nop
	nop
	halt
	nop
	nop
	djnz l1d62h
	ret
	ld hl,l5d7dh
	ld (0fd9bh),hl
	ld a,0c3h
	ld (0fd9ah),a
	ret
	ld a,0c9h
	ld (0fd9ah),a
	ret
	call sub_013eh
	bit 7,a
	ret nz
	ei
	halt
	ret
	ld a,(0e465h)
	ld b,a
l1d8ah:
	add a,001h
	rlca
	add a,00bh
	rlca
	add a,01fh
	rlca
	add a,029h
	cp b
	jr nz,l1d9bh
	inc a
	jr l1d8ah
l1d9bh:
	ld (0e465h),a
	ret
	ld b,003h
	or a
l1da2h:
	ld a,(de)
	adc a,(hl)
	daa
	ld (de),a
	inc de
	inc hl
	djnz l1da2h
	ret
	ld b,003h
	or a
l1daeh:
	ld a,(de)
	sbc a,(hl)
	daa
	ld (de),a
	inc de
	inc hl
	djnz l1daeh
	ret
	push bc
	push de
	xor a
	call sub_00c3h
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
	call l0060h+2
	call sub_5e2bh
	jp l006ch
	push bc
	push de
	xor a
	call sub_00c3h
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
	call l0060h+2
	call sub_5e2bh
	jp l006fh
	push bc
	push de
	xor a
	call sub_00c3h
	pop de
	pop bc
	ld hl,0f3e9h
	ld (hl),b
	inc l
l1e00h:
	ld (hl),c
	inc l
	ld (hl),d
	call l0060h+2
	call sub_5e2bh
	jp l0072h
	push bc
	push de
l1e0eh:
	xor a
	call sub_00c3h
	pop de
	pop bc
	ld hl,0f3e9h
	ld (hl),b
	inc l
	ld (hl),c
	inc l
	ld (hl),d
	call l0060h+2
	call sub_5e2bh
	jp l0075h
	jp l00ceh+1
	jp 000cch
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
l1ec3h:
	call sub_5f19h
	ld hl,0e3ddh
	ld b,010h
	call sub_5f19h
	ld hl,0e3deh
	ld b,020h
	call sub_5f19h
	ret
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
l1f00h:
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
	ld a,c
	and b
	jr z,l1f28h
	ld a,(hl)
	and 008h
	jr z,l1f25h
	ld (hl),004h
	ret
l1f25h:
	ld (hl),000h
	ret
l1f28h:
	ld a,(hl)
	and 008h
	jr z,l1f30h
	ld (hl),009h
	ret
l1f30h:
	ld (hl),00bh
	ret
	di
	ld d,000h
	ld hl,0e380h
	ld bc,sub_0000h
l1f3ch:
	ld c,001h
l1f3eh:
	call sub_5f58h
	inc hl
	ld a,c
	cp 080h
	jr z,l1f4bh
	sla c
	jr l1f3eh
l1f4bh:
	inc b
	ld a,b
	cp 00bh
	jr nz,l1f3ch
	ei
	call sub_5f7ch
	jp l0156h
	in a,(0aah)
	and 0f0h
	or b
	out (0aah),a
	in a,(0a9h)
	and c
	jr z,l1f6fh
	ld a,(hl)
	and 008h
	jr z,l1f6ch
	ld (hl),004h
	ret
l1f6ch:
	ld (hl),000h
	ret
l1f6fh:
	ld d,0ffh
	ld a,(hl)
	and 008h
	jr z,l1f79h
	ld (hl),009h
	ret
l1f79h:
	ld (hl),00bh
	ret
	ld hl,0e3d8h
	ld a,d
	cp 0ffh
	jr z,l1f8fh
	ld a,(hl)
	and 008h
	jr z,l1f8ch
	ld (hl),004h
	ret
l1f8ch:
	ld (hl),000h
	ret
l1f8fh:
	ld a,(hl)
	and 008h
	jr z,l1f97h
	ld (hl),009h
	ret
l1f97h:
	ld (hl),00bh
	ret
	push hl
	call l003fh+2
	ld hl,l1800h
	ld bc,00300h
	xor a
	call 00056h
	pop hl
	ld de,sub_0000h
	call sub_5fe2h
	ld de,00800h
	call sub_5fe2h
	ld de,l1000h
	call sub_5fe2h
	ld de,02000h
	call sub_5fe2h
	ld de,l2800h
l1fc4h:
	call sub_5fe2h
l1fc7h:
	ld de,03000h
	call sub_5fe2h
	ld de,l1800h
	call sub_5fe2h
	ld de,01900h
	call sub_5fe2h
	ld de,l1a00h
	call sub_5fe2h
	jp 00044h
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
	push hl
	call l003fh+2
	ld hl,l1800h
	ld bc,00300h
	xor a
	call 00056h
	pop hl
	ld de,sub_0000h
	call sub_6037h
	ld de,00800h
	call sub_6037h
	ld de,l1000h
	call sub_6037h
	ld de,02000h
	call sub_6037h
	ld de,l2800h
	call sub_6037h
	ld de,03000h
	call sub_6037h
	ld de,l1800h
	call sub_6037h
	ld de,01900h
	call sub_6037h
	ld de,l1a00h
	call sub_6037h
	jp 00044h
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
	ld a,(0f3e0h)
	and 0fch
	or 002h
	jp l607ch
	ld a,(0f3e0h)
	or 003h
	di
	ld b,a
	ld c,001h
	call 00047h
	ei
	ret
	call sub_0069h
	ld hl,l1b00h
	ld de,0e3e5h
	ld bc,l0080h
	jp 00059h
	ld hl,0e3e5h
	ld bc,l0080h
	ld de,l1b00h
	jp 0005ch
	push hl
	ld hl,l3800h
	ld c,000h
	ld a,(0f3e0h)
	and 002h
	jr nz,l20b0h
	ld de,l0008h
l20b0h:
	ld de,l0020h
l20b3h:
	ld a,c
	cp b
	jr z,l20bbh
	add hl,de
	inc c
	jr l20b3h
l20bbh:
	ld d,h
	ld e,l
	pop hl
	ld b,(hl)
	inc hl
	ld c,(hl)
	inc hl
	jp 0005ch
	push af
	ld a,(0f3e0h)
	and 002h
	jr z,l20d3h
	ld a,b
	sla a
	sla a
	ld b,a
l20d3h:
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
	ld de,l0003h
	add hl,de
	ld (hl),b
	ret
l20f3h:
	ld a,(hl)
	cp 000h
	ret z
	call sub_00a2h
	inc hl
	jr l20f3h
	bit 7,b
	jr z,l2106h
	ld a,02dh
	call sub_615fh
l2106h:
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
l2120h:
	ld e,d
	call sub_6133h
	ld a,d
	and 00fh
	jr nz,l212eh
	ld a,001h
	ld (0e474h),a
l212eh:
	ld e,d
	call sub_613bh
	ret
	srl e
	srl e
	srl e
	srl e
	ld a,(0e474h)
	or e
	and 00fh
	jr nz,l2144h
	ret
l2144h:
	ld a,e
	and 00fh
	ld e,a
	add a,030h
	call sub_615fh
	ld a,e
	or a
	jr z,l2157h
	ld a,007h
	ld (0e474h),a
	ret
l2157h:
	ld a,(0e474h)
	dec a
	ld (0e474h),a
	ret
	push bc
	push de
l2161h:
	call sub_00a2h
	pop de
	pop bc
	ret
	ld a,b
	ld (0e46ch),a
	ld a,c
	ld (0e46dh),a
	ld hl,0e466h
	ld b,006h
l2174h:
	ld (hl),000h
	inc hl
	djnz l2174h
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
	jr z,l21afh
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
	jr l2206h
l21afh:
	ld a,b
	and 00fh
	jr z,l21cah
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
	jr l2206h
l21cah:
	ld a,c
	and 0f0h
	jr z,l21edh
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
	jr l2206h
l21edh:
	ld a,c
	and 00fh
	jr z,l2206h
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
l2206h:
	ld hl,0e469h
l2209h:
	push hl
	push de
	push bc
	call sub_5d9fh
	pop bc
	pop de
	pop hl
	djnz l2209h
	jp l6179h
	ld a,(0e466h)
	ld d,a
	ld a,(0e467h)
	ld c,a
	ld a,(0e468h)
	and 00fh
	ld b,a
	call sub_60fdh
	ret
	jp sub_00c6h
	xor a
	jp sub_00c3h
	ld hl,0f3e9h
	ld (hl),b
	inc l
	ld (hl),c
	jp l0060h+2
	ld (0f3aeh),a
	ret
	call sub_5d60h
	call sub_5d6bh
	call sub_624eh
	call sub_5e43h
	xor a
	ld (0f3dbh),a
	ret
	ld hl,0e380h
	ld b,059h
l2253h:
	xor a
	ld (hl),a
	inc hl
	djnz l2253h
	ld hl,0e3d9h
	ld b,00ch
l225dh:
	xor a
	ld (hl),a
	inc hl
	djnz l225dh
	call sub_0069h
	ld hl,l1b00h
	ld de,0e3e5h
	ld bc,l0080h
	call 00059h
	ld a,00dh
	ld (0e465h),a
	ret
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
	ld bc,sub_00c6h
	jp nz,0c43fh
	ld a,a
	jp nz,l1f00h
	call nz,0c30fh
	rlca
	call nz,0c40fh
	rra
	jp 0c403h
	ld bc,sub_00c3h+1
	jp nz,l0301h
	jp l3f07h
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
	jp nz,l0301h
	jp nz,0c207h
	ld a,a
	add a,000h
	ccf
	ld a,a
	ret z
	nop
l22c6h:
	ccf
	rst 8
l22c8h:
	nop
	inc bc
	push bc
	nop
	inc bc
	ld bc,l00ceh+2
	call nz,0c601h
	inc bc
	call nz,0c401h
	ccf
	call nz,0c37fh
l22dbh:
	rrca
	call nz,03070h
	jp 00100h
	jp nz,0d103h
	nop
	rrca
	rlc b
	ld a,a
	jp nz,l1f3eh+1
	rrca
	jp nz,0cc04h
	nop
	ld bc,l0f01h+2
	rra
	jp nz,l7f3fh
	jp l3f00h
	ld a,a
	ret z
	nop
	rra
	ccf
	adc a,000h
	rlca
	inc bc
	call nz,00300h
	ld bc,l00ceh
	inc bc
	add a,007h
	rrca
	rst 0
	nop
	ld bc,l00c7h
	ld b,b
	jr nc,$-60
	jr c,l22dbh
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
	jp nz,l0f1fh
	rlca
	call nz,sub_0703h
	rrca
	rra
	inc bc
	rlca
	jp l070fh
	inc bc
	ld bc,l7f3fh
	ret z
	nop
	rrca
	ccf
l233ch:
	adc a,000h
	rrca
	inc bc
	call nz,00300h
	ld bc,l00d4h
	ld bc,0c203h
	rrca
	call nz,0c21fh
	ccf
	call nz,0c403h
	rlca
	call nz,0c400h
	ld a,a
	call nz,0c400h
	ld bc,l3fc2h
	call nz,0c41fh
	rrca
	call nz,0c207h
	nop
	rra
	ret z
	nop
	ld bc,sub_00c3h
	ld bc,sub_00c3h+1
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
	jp nz,l0e04h
	rra
	jp nz,l7f00h
	ccf
	jp nz,l0f1fh
	rlca
	jp z,l3300h
	jp nz,l3300h
	call z,00300h
	call 0c300h
	rrca
	call nz,0c41fh
	ccf
	call nz,l0f1fh
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
	jr l23bdh
	jr nc,l240fh
	ccf
	jp nz,0c57fh
	nop
	ld bc,l03c2h
	rlca
	jp nz,l7f3fh
	push bc
	nop
l23bdh:
	jp nz,l3f7eh+1
	rra
	rrca
	jp nz,0c307h
	inc bc
	ld bc,000c9h
	ld a,a
	jp nz,l1f3eh+1
	inc sp
	jp nz,l3300h
	jp nz,l3300h
	ret
	nop
l23d6h:
	inc bc
	jp nc,00f00h
	jp z,00100h
	inc bc
	ld bc,000b8h
	and 0d1h
	nop
	inc sp
	jp nz,l3300h
	jp nz,l3300h
	ret
	nop
	inc bc
	call 00f00h
	call nz,l1f00h
	adc a,000h
	add a,007h
	jp nz,l1f00h+1
	call nz,sub_000fh
	jp sub_003bh+1
	jp 0c53ch
	nop
	jp 0c57fh
	nop
	ld a,a
	ld e,01ch
	call 0c300h
l240fh:
	jr c,l23d6h
	nop
	inc bc
	ld a,b
	jr nc,$-57
	nop
	inc bc
	ld bc,sub_00c6h
	rra
	jp nz,0c23fh
	nop
	jp 0c301h
l2423h:
	inc c
	jp nz,0c300h
	rra
	jp l0003h
	jp sub_000fh
	rrca
	ld c,00ch
l2431h:
	push bc
	nop
	jp 0c20fh
	nop
	inc sp
	jp nz,l3300h
	call z,00300h
	jp z,l7f00h
	ret z
	nop
	ld bc,0c403h
	rlca
	call nz,0c300h
	rrca
	rra
	jp nz,sub_0700h+1
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
	jr nc,l2431h
	ld sp,l30c2h
	jr c,$+62
	nop
	rrca
	jp nz,l0f07h
	nop
	ld bc,l0003h
	jr c,l24beh
	rra
	nop
	jp l003fh
	ld bc,l0e1eh
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
	jp nz,l3f7eh+1
	push bc
	nop
	rra
	rrca
	ld a,b
	rlca
	jp nz,sub_000fh
	inc sp
	jp nz,l3300h
	jp nz,l3300h
	call z,00300h
	call nz,sub_0700h
	call l3f00h
	nop
	jp 0c57fh
	nop
	jp nz,0cc3fh
	nop
	ld a,a
l24beh:
	ccf
	nop
	inc sp
	rst 8
	nop
	ld bc,000cch
	ld bc,l0103h
	ret po
	ld bc,0c984h
	nop
	jr nz,l2510h
	ld a,b
	jp l7877h
	nop
	ld (bc),a
	ld bc,0c338h
	ld b,b
	jr c,l24dch
l24dch:
	inc c
	ld (de),a
	ld a,l
	ld a,e
	ld (hl),a
	ld l,a
	ld h,c
l24e3h:
	nop
	ld h,e
	ld l,(hl)
	ld c,(hl)
l24e7h:
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
l2507h:
	ld h,l
	ld a,(de)
	ld (de),a
	inc sp
	nop
	inc bc
	push bc
	inc b
	inc bc
l2510h:
	nop
	ld a,a
	nop
	jr l2539h
	inc a
	jr nz,$+101
	jp l6e00h
	ld a,(hl)
	ld b,a
	add hl,hl
	jr c,l24e3h
	nop
	jr c,l24e7h
	jr nz,l2525h
l2525h:
	inc e
	jp nz,l1c12h
	jp nz,l1214h
	nop
	jr nz,l252fh
l252fh:
	ld h,a
	jp l7424h
	jp l1c00h
	jp l635eh
l2539h:
	jp 03100h
	jp 03629h
	ld b,b
	jr nz,l2507h
	nop
	jp nz,l0201h
	push bc
	nop
	ld bc,l00c7h
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
	jr l2563h
	jr nc,$-59
	inc h
	daa
l2563h:
	jp nz,02000h
	ld hl,0c272h
	ld (0c321h),hl
	nop
	ld l,l
	ld c,h
	ld c,b
	ld c,h
	ld l,l
	jp l1800h
	inc d
	ld (hl),h
	ld l,e
	ld (hl),h
	jp nz,l0400h
	inc e
	jp l635ah
	jp 01900h
	jp l1907h+2
	jp 00100h
	jp 01102h
	jp l3300h
	jp l3312h
	jp l2f00h
l2595h:
	call nz,0c457h
	nop
	inc bc
	call nz,l0f07h
	jp nz,l6300h
	jp nz,l2161h
	ld bc,sub_00c3h
	ccf
	ld a,a
	nop
	rra
	ld bc,sub_00c3h
	jp nz,l0103h
	jp nz,l780fh
	jp nz,l7800h
	jp nz,01f0fh
	jp nz,0c53fh
	nop
	ld a,07fh
	ld (hl),a
	add a,000h
	jp nz,0c206h
	nop
	call nz,sub_0703h
	ld b,0c2h
	nop
	daa
	ld (hl),a
	dec bc
	ex af,af'
	daa
	jr nz,l2595h
	nop
	inc c
	inc b
	ld e,033h
	ld sp,sub_0024h
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
	jp nz,l1e0eh
	jp nz,0c41ch
	nop
	ex af,af'
	jp nz,l730ch
	jp nz,l7f00h
	rra
	ld bc,sub_00c3h+2
	jr c,$+50
sub_2600h:
	jr nz,l2623h
	ld b,e
	ld a,b
	jp nz,l3f00h
	jp nz,l0f1fh
	ld a,b
	inc a
	jp nz,l6700h
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
l2623h:
	nop
	jp nz,0c41fh
	nop
	ld b,000h
	ld b,00fh
	ld b,007h
	jp nz,02000h
	jp nz,l5300h
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
	jp l0778h
	nop
	ld a,a
	push bc
	ld h,c
	jp nz,l7800h
	push bc
	jr c,l2656h
	nop
	ld (bc),a
	ret po
	ld bc,0c853h
	ld d,l
l2656h:
	jp nz,0c815h
	ld de,0e1c1h
	rst 0
	ld de,0c51eh
	ld de,l51c2h
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
	call sub_5fffh
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
	call z,sub_3cc2h
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
	call z,sub_11c6h
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
	call p,sub_44c4h
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
	jp nz,l0156h
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
l2800h:
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
	call p,sub_44c4h
	pop bc
sub_2827h:
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
	call z,sub_5cc2h
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
l2857h:
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
	call p,sub_44c7h
	pop bc
	rst 38h
	rst 0
	ld b,h
	ld c,a
	call z,0c244h
	ld d,h
	ld bc,l01e0h
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
	jp l5ff5h
	jp l55f5h
	rst 0
	push af
	ld d,l
	ld e,a
	jp nz,l5ff5h
	jp nz,l5ff5h
	ld d,l
	rst 0
sub_2900h:
	push af
	ld d,l
	ld e,a
	ld d,l
	call nz,l5ff5h
	jp 0c155h
	push af
	ld e,a
	jp nz,l5ff5h
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
	jp l5ff5h
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
	jp l5ff5h
	call nz,0c2f5h
	ld d,l
	add a,0f5h
	jp l5f55h
	jp l5ff5h
	jp l5f55h
	jp nz,l5ff5h
	pop bc
	push af
	jp nz,0c255h
	push af
	call nz,0c35fh
	ld d,l
	ld e,a
	jp l5ff5h
	jp 0c555h
	push af
	jp l5f55h
	jp l5ff5h
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
	ld de,l1fc4h+1
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
	ld de,l1fc4h+2
	pop bc
	rst 38h
	ld de,0f1c6h
	rra
	ld de,l0001h
	nop
	adc a,e
	rst 38h
	nop
	in a,(000h)
	ld bc,l0301h+1
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
	jr nz,l2a5bh
	ld (sub_00c6h),hl
	inc hl
	inc h
	jp nz,02625h
	daa
	jr z,l2a5bh
	call nz,sub_2900h
	ld hl,(00bc2h)
	dec hl
	inc l
	dec l
	dec bc
	ld l,02fh
	jr nc,$+13
	ld sp,sub_00c3h+2
	ld (0c333h),a
	inc (hl)
	dec (hl)
l2a5bh:
	ld (hl),037h
	jr z,$+58
	call nz,sub_3900h
	ld a,(l3c3bh)
	dec a
	ld a,03fh
	ld b,b
	ld b,c
	ld b,d
	ld b,e
	ld b,h
	inc c
	ld b,l
	call nz,04600h
	ld b,a
	jp nz,l4948h
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
	jp l4f0bh
	ld d,b
	ld d,c
	ld d,d
	ld d,e
	ld d,h
	ld d,l
	jp 04600h
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
	djnz l2ac3h
	ld (de),a
	inc de
	inc d
	dec c
	ld de,l0015h
	ld bc,0c216h
	rla
	jr l2ad8h
	ld bc,0c61ah
	nop
l2ac3h:
	dec de
	inc e
	dec e
	ld e,01fh
	jr nz,l2aebh
	ld (l2423h),hl
	dec h
	ld h,027h
	jr z,l2afbh
	dec h
	ld hl,(00100h)
	dec hl
	inc l
l2ad8h:
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
l2aebh:
	nop
	rst 0
	nop
	ld bc,sub_0000h
	ld l,d
	pop hl
	nop
	ld bc,l0301h+1
	inc b
	dec b
	ld b,007h
l2afbh:
	ex af,af'
	add hl,bc
	ld a,(bc)
	dec bc
	inc c
	dec c
	ld c,00fh
	djnz $-46
	nop
	ld de,l0012h
	inc de
	jp nz,l1400h
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
	jr nz,l2b3fh
	ld (l2423h),hl
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
	jr z,l2b60h
	ld hl,(l2c2bh)
	jp nz,l2d00h
	ld l,02fh
l2b3fh:
	jr nc,l2b72h
	jp nz,l2d00h
	ld l,02fh
	jr nc,l2b79h
	ld (sub_00c0h+2),a
	dec l
	ld l,02fh
	jr nc,l2b81h
	inc sp
	inc (hl)
	dec (hl)
	nop
	ld (hl),037h
	jr c,l2b91h
	ld a,(0e13bh)
	nop
	nop
	ld c,b
	nop
	inc d
l2b60h:
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
l2b72h:
	ld bc,sub_0000h
	ld c,b
	nop
	inc d
	nop
l2b79h:
	rst 0
	ld a,a
	ret
	nop
	rst 0
	ld bc,l7fc8h
l2b81h:
	ret z
	nop
	ret z
	ld bc,l7fc7h
	ret
	nop
	rst 0
	ld bc,sub_0000h
	ld c,b
	nop
	inc d
	nop
l2b91h:
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
	ld bc,sub_0000h
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
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
l2c2bh:
	jp nz,l0201h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
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
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
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
l2d00h:
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
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
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
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
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
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
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
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
	rlca
	ex af,af'
	ld b,0c2h
l2f00h:
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
l2f2bh:
	rst 0
	ld bc,sub_0000h
l2f2fh:
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
	ld bc,sub_0000h
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
	ld bc,sub_0000h
	ld c,b
	nop
	jr $+19
	rst 0
	pop af
	ld de,0ffc7h
	ld de,l1fc7h
	ret z
	pop af
	ret z
	rst 38h
	ret z
	rra
	rst 0
	pop af
	ld de,0ffc7h
	ld de,l1fc7h
	ld de,l4800h
	nop
	jr $+19
	rst 0
	pop af
	ld de,0ffc7h
	ld de,l1fc7h
	ret z
	pop af
	ret z
	rst 38h
	ret z
	rra
	rst 0
	pop af
	ld de,0ffc7h
	ld de,l1fc7h
	ld de,l4800h
	nop
	jr $+19
	rst 0
	pop af
	ld de,0ffc7h
	ld de,l1fc7h
	ret z
	pop af
	ret z
	rst 38h
	ret z
	rra
	rst 0
	pop af
	ld de,0ffc7h
	ld de,l1fc7h
	ld de,l0001h
	ld bc,sub_0000h
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
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
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
l308fh:
	jp nz,l0504h
	inc bc
	jp nz,l0504h
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
	jp nz,l0201h
	nop
	jp nz,l0201h
l30c2h:
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
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
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
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
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
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
l322eh:
	ld b,0c2h
l3230h:
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
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	nop
	jp nz,l0201h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
	inc bc
	jp nz,l0504h
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
	ld bc,l0018h
	rra
	nop
	ld a,a
l32c4h:
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
	ld bc,l0020h
	ld hl,l7f40h
	ld b,b
	ld a,a
	ld b,b
	ld a,a
	ld b,b
l3300h:
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
	ld a,a
	ld b,b
	jp nz,0ff7fh
	nop
l3312h:
	rst 38h
	nop
	jp 0c600h
	ld (bc),a
	ld bc,00100h
	jr l331dh
l331dh:
	ld a,(hl)
	pop bc
	rst 38h
sub_3320h:
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
	ld de,l22c6h
	pop bc
	rst 38h
	ld de,033c6h
	pop bc
	rst 38h
	ld de,044c6h
	pop bc
	rst 38h
	ld de,l55c6h
	pop bc
	rst 38h
	ld de,l66c6h
	pop bc
	rst 38h
	ld de,l77c6h
	pop bc
	rst 38h
	ld de,088c6h
	pop bc
	rst 38h
	ld de,099c6h
	pop bc
	rst 38h
	ld de,0aac6h
	pop bc
	rst 38h
	ld de,0bbc6h
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
	ld de,l22c8h
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
	ld de,l22c8h
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
	ld bc,l0020h
	add a,a
	ret z
	rra
	pop bc
	rst 38h
	ld de,0ffc1h
	ld de,0ffc1h
	ld de,0ffc1h
	ret
	ld de,l22c8h
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
	ld de,0ffc1h
	add a,077h
	ld de,0ffc1h
	add a,088h
	ld de,0ffc1h
	add a,099h
l3433h:
	ld de,0ffc1h
	add a,0aah
	ld de,0ffc1h
	add a,0bbh
	ld de,0ffc1h
	add a,0cch
	ld de,0ffc1h
	add a,0ddh
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
	ld bc,l02c2h
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
	ld bc,l13c2h
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
	jp nz,l2120h
	ld (l0112h),hl
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
	jp nz,l2120h
	ld (l0112h),hl
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
	jp nz,l2120h
	ld (l0112h),hl
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
	jp nz,l2120h
	ld (l0112h),hl
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
	jp nz,l2120h
	ld (l0112h),hl
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
	jp nz,l2120h
	ld (l0112h),hl
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
	jp nz,l2120h
	ld (l0001h),hl
	ld bc,sub_0000h
	ld bc,l02c2h
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
	djnz l3591h
	nop
	ld bc,l02c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l3591h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l35b1h
	nop
	ld bc,l02c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l35b1h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l35d1h
	nop
	ld bc,l02c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l35d1h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l35f1h
	nop
	ld bc,l02c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l35f1h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l3611h
	nop
	ld bc,l02c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l3611h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l3631h
	nop
	ld bc,l02c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l3631h:
	add hl,bc
	jp nz,0c20ah
sub_3635h:
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l3651h
	nop
	ld bc,l02c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l3651h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l3671h
	ld bc,00100h
	nop
	nop
	ld bc,l02c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
l3671h:
	rlca
	jp nz,0c208h
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l3695h
	nop
	ld bc,l02c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l3695h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l36b5h
	nop
	ld bc,l02c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l36b5h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l36d5h
	nop
	ld bc,l02c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l36d5h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l36f5h
	nop
	ld bc,l02c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l36f5h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l3715h
	nop
	ld bc,l02c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l3715h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l3735h
	nop
	ld bc,l02c2h
	jp nz,0c203h
	inc b
	jp nz,0c205h
	ld b,0c2h
	rlca
	jp nz,0c208h
l3735h:
	add hl,bc
	jp nz,0c20ah
	dec bc
	jp nz,0c20ch
	dec c
	jp nz,0c20eh
	rrca
	djnz l3755h
	ld (de),a
	inc de
	jp nz,0c214h
	dec d
	jp nz,0c216h
	rla
	jp nz,0c218h
	add hl,de
	jp nz,0c21ah
l3755h:
	dec de
	jp nz,0c21ch
	dec e
	jp nz,0c21eh
	rra
	jp nz,0c220h
	ld hl,02322h
	ld bc,l0030h
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
l3800h:
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
	nop
	jp 0c51fh
	nop
	jp 0c507h
	nop
	jp 0c51fh
	nop
	ld bc,l0030h
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
sub_3900h:
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
	ld de,l1ec3h
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
	jp m,0afc8h
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
	ld bc,l00ceh+2
	ld (bc),a
	inc bc
	adc a,004h
	inc bc
	dec b
	call sub_0600h
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
	ld de,l0e13h+1
	jp nz,l0f07h+1
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
	jp nz,l0f07h+1
	dec d
	jp z,00d00h
	ld c,0c2h
	ex af,af'
	rrca
	ld c,010h
	ld de,l1918h
	ld a,(de)
	jr $+17
	dec de
	inc e
	ld de,00e1dh
	jp nz,l0f07h+1
	dec d
	jp z,l1e00h
	rra
	jp nz,02008h
	ld hl,02322h
	inc b
	ld hl,l04c2h
	jr nz,$+6
	ld (l0423h),hl
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
	call sub_0600h
	rlca
	adc a,003h
	rlca
	ex af,af'
	ret nc
	nop
	call nz,00a09h
	dec bc
	jp nz,l0c03h
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
	ld bc,sub_0000h
	xor h
	jp po,00100h
	call nz,l0301h+1
	jp nz,0c400h
	ld (bc),a
	inc b
	jp nz,l0500h
	call nz,0c202h
	nop
	ld bc,l02c4h
	inc bc
	call nz,sub_0600h
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
l3ae8h:
	ld c,00fh
	djnz l3afdh
	ld (de),a
	ld de,01312h
	nop
	inc d
	dec d
	ld d,015h
	ld d,017h
	call nz,sub_0600h
	jr l3b15h
	ld a,(de)
l3afdh:
	dec de
l3afeh:
	add hl,bc
	nop
	ld a,(bc)
	inc e
	dec e
	inc e
	dec e
	dec c
	ld c,00fh
	djnz l3b28h
	rra
	ld e,01fh
	inc de
	nop
	inc d
	jr nz,l3b33h
	jr nz,$+35
	rla
l3b15h:
	call nz,sub_0600h
	call nz,00922h
	nop
	ld a,(bc)
	call nz,sub_0d23h
	ld c,00fh
	djnz l3ae8h
	inc h
	inc de
	nop
	inc d
l3b28h:
	call nz,01725h
	call nz,sub_0600h
	call nz,00922h
	nop
	ld a,(bc)
l3b33h:
	call nz,sub_0d23h
	ld c,00fh
	djnz l3afeh
	inc h
	inc de
	nop
	inc d
	call nz,01725h
	call nz,sub_2600h
	call nz,sub_2827h
	nop
	add hl,hl
	call nz,02b2ah
	inc l
	dec l
	ld l,0c4h
	cpl
	jr nc,l3b53h
l3b53h:
	ld sp,l32c4h
	inc sp
	call nz,03400h
	call nz,sub_3635h
	jp nz,0c400h
	dec (hl)
	scf
	jp nz,l3800h
	call nz,0c235h
	nop
	inc (hl)
	call nz,sub_3635h
	jp nz,sub_0000h
	sub b
	nop
	ld h,h
	ret
	nop
	ld bc,l1800h
	jp l181ch
	nop
	rlca
	rrca
	ld h,e
	call nz,00047h
	inc a
	inc c
	ld (hl),e
	call nz,sub_003bh
	rlca
	inc bc
	jp l6171h
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
	ld bc,l1fc4h
	jp nz,0c300h
	jr c,$+30
	rra
	rlca
l3bb4h:
	jp nz,0c300h
	dec sp
l3bb8h:
	ld (hl),e
	inc e
	inc a
	jp nz,sub_0700h
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
	call nz,sub_0000h
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
	jr nz,l3bb4h
	ld b,b
	nop
	djnz l3bb8h
l3bf6h:
	ex af,af'
	jp nz,0c204h
	ld (bc),a
	push bc
	nop
	ld bc,l1806h
	ld h,b
	ld bc,l1907h
	ld h,c
	ld a,(hl)
	jp l7f01h
	rra
l3c0ah:
	ld h,a
	ld a,c
l3c0ch:
	ld a,(hl)
	jp 0c47fh
	nop
	ld a,a
	ld h,b
	jr l3c1bh
	ld h,b
	jr l3c1eh
	ld bc,sub_00c3h+1
l3c1bh:
	jp l7e01h
l3c1eh:
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
	jr nz,l3bf6h
	djnz l3c3eh
	nop
	jp nz,0c202h
	inc b
l3c3bh:
	jp nz,l1008h
l3c3eh:
	ex af,af'
	jp nz,0c204h
	ld (bc),a
	jp nz,l0001h
	djnz l3c0ah
	jr nz,l3c0ch
	ld b,b
	jp nz,l007fh
	nop
	jr z,l3c51h
l3c51h:
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
	jr l3c70h
	jp 0c201h
	ld (bc),a
	inc b
	jr $+33
l3c70h:
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
	ld de,l1fc7h
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
	ld de,l1fc4h+2
	jp nz,0c611h
	pop af
	jp nz,0c411h
	pop af
	jp nz,0c6ffh
	ld de,0f1c2h
sub_3cc2h:
	jp nz,0c311h
	pop af
	rra
	jp nz,0c2ffh
	ld de,08800h
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
	jr z,l3d0bh
l3d0bh:
	dec c
	ret z
	ld de,0f1c5h
	call nz,0c71fh
	pop af
	jp 0cc1fh
	pop af
	rra
	ld bc,sub_0000h
	jr nc,$+1
	nop
	rst 38h
	nop
	rst 0
	nop
	ld bc,l0301h+1
	inc b
	dec b
	ld b,000h
	rlca
	add a,000h
	ld bc,l0301h+1
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
	djnz l3d5ah
	rst 38h
	nop
	add a,000h
	ld bc,sub_0000h
	ld b,d
	ret z
	nop
	ld bc,0cc02h
	nop
	ld bc,0d002h
l3d5ah:
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
	jp z,l0900h
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
	djnz l3d5ah
	nop
	rrca
	djnz l3d5ah
	nop
	ld bc,sub_0000h
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
	nop
	and b
	nop
	nop
	nop
	ld bc,l0301h
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
	ld bc,l0001h
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
	ld bc,sub_0000h
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
	rra
	pop af
	ld l,c
	sub (hl)
	jp nz,0472ch
	ld (hl),h
	ld h,(hl)
	call z,sub_1144h
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
	jp l233ch
	ld (sub_3cc2h+1),a
	inc hl
	ld (l7447h),a
	ld d,a
	ld (hl),l
	ld b,a
	ld (hl),h
	ld d,a
	ld (hl),l
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
	jr nz,l3f41h
	ld d,e
	ld e,b
	jr nz,l3f3ch
	ld c,c
	ld b,c
	ld b,a
	ld c,(hl)
	ld c,a
	ld d,e
	ld d,h
	ld c,c
l3f00h:
	ld b,e
	ld d,e
	jr nz,l3f7ah
	ld sp,l322eh
l3f07h:
	ld l,030h
	dec c
	ld a,(bc)
	nop
	dec c
	ld a,(bc)
	jr nz,$-48
	jr nz,l3f62h
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
	jr nz,l3f73h
	ld c,a
	jr nz,$+68
	ld b,c
	ld b,e
	ld c,e
	jr nz,$+86
	ld c,a
	jr nz,l3f7eh
	ld c,b
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l3f50h
	jr nz,$+79
	ld b,c
	ld c,c
	ld c,(hl)
	jr nz,l3f84h
	ld b,l
	ld c,(hl)
	ld d,l
	ld l,00dh
l3f3ch:
	ld a,(bc)
	nop
	dec c
	ld a,(bc)
	dec c
l3f41h:
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l3f96h
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,$+67
	ld b,e
	ld b,e
	ld b,l
	ld d,b
l3f50h:
	ld d,h
	jr nz,$+86
	ld c,a
	jr nz,l3fa9h
	ld d,h
	ld b,c
	ld d,d
	ld d,h
	jr nz,l3fb0h
	ld c,b
	ld b,l
	jr nz,l3fb4h
	ld b,l
	ld d,e
l3f62h:
	ld d,h
	ld l,00dh
	ld a,(bc)
	nop
	dec c
	ld a,(bc)
	jr nz,$+82
	ld b,c
	ld b,a
	ld b,l
	jr nz,l3fa1h
	jr nz,l3fc1h
	ld b,(hl)
l3f73h:
	jr nz,$+52
	dec c
	ld a,(bc)
	nop
	dec c
	ld a,(bc)
l3f7ah:
	jr nz,l3f9ch
	jr nz,$+51
l3f7eh:
	ld l,020h
	ld d,e
	ld b,e
	ld d,d
	ld b,l
l3f84h:
	ld b,l
	ld c,(hl)
	jr nz,l3fb8h
	dec c
	ld a,(bc)
	jr nz,l3fach
	jr nz,l3fc0h
	ld l,020h
	ld d,e
	ld b,e
	ld d,d
	ld b,l
	ld b,l
	ld c,(hl)
l3f96h:
	jr nz,l3fc9h
	dec c
	ld a,(bc)
	jr nz,l3fbch
l3f9ch:
	jr nz,l3fd1h
	ld l,020h
	ld d,e
l3fa1h:
	ld b,e
	ld d,d
	ld b,l
	ld b,l
	ld c,(hl)
	jr nz,l3fdah
	dec c
l3fa9h:
	ld a,(bc)
	jr nz,$+34
l3fach:
	jr nz,l3fe2h
	ld l,020h
l3fb0h:
	ld d,e
	ld b,e
	ld d,d
	ld b,l
l3fb4h:
	ld b,l
	ld c,(hl)
	jr nz,l3febh
l3fb8h:
	dec c
	ld a,(bc)
	jr nz,l3fdch
l3fbch:
	jr nz,l3ff3h
	ld l,020h
l3fc0h:
	ld d,e
l3fc1h:
	ld d,b
l3fc2h:
	ld d,d
	ld c,c
	ld d,h
	ld b,l
	ld d,e
	dec c
	ld a,(bc)
l3fc9h:
	jr nz,l3febh
	jr nz,l4003h
	ld l,020h
	ld c,l
	ld c,a
l3fd1h:
	ld c,(hl)
	ld c,c
	ld d,h
	ld c,a
	ld d,d
	jr nz,l401bh
	ld c,a
	ld c,h
l3fdah:
	ld c,a
	ld d,d
l3fdch:
	dec c
	ld a,(bc)
	jr nz,l4000h
	jr nz,l401bh
l3fe2h:
	ld l,020h
	ld d,d
	ld b,l
	ld b,d
	ld c,a
	ld c,a
	ld d,h
	dec c
l3febh:
	ld a,(bc)
	jr nz,l400eh
	jr nz,$+50
	ld l,020h
	ld c,(hl)
l3ff3h:
	ld b,l
	ld e,b
	ld d,h
	jr nz,l4036h
	ld a,00dh
	ld a,(bc)
	nop
	dec c
	ld a,(bc)
	jr nz,l4050h
l4000h:
	ld b,c
	ld b,a
	ld b,l
l4003h:
	jr nz,l4037h
	jr nz,l4056h
	ld b,(hl)
	jr nz,l403ch
	dec c
	ld a,(bc)
	nop
	dec c
l400eh:
	ld a,(bc)
	jr nz,l4031h
	jr nz,l4044h
	ld l,020h
	ld c,e
	ld b,l
	ld e,c
	ld b,d
	ld c,a
	ld b,c
l401bh:
	ld d,d
	ld b,h
	dec c
	ld a,(bc)
	jr nz,l4041h
	jr nz,l4055h
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
l4031h:
	jr nz,l4066h
	ld l,020h
	ld d,b
l4036h:
	ld d,e
l4037h:
	ld b,a
	dec c
	ld a,(bc)
	jr nz,l405ch
l403ch:
	jr nz,l4072h
	ld l,020h
	ld c,l
l4041h:
	ld c,c
	ld e,b
	ld b,l
l4044h:
	ld b,h
	jr nz,l4094h
	ld c,a
	ld b,h
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l406eh
	jr nz,$+55
l4050h:
	ld l,020h
	ld d,e
	ld e,c
	ld d,e
l4055h:
	ld d,h
l4056h:
	ld b,l
	ld c,l
	jr nz,$+75
	ld c,(hl)
	ld b,(hl)
l405ch:
	ld c,a
	jr nz,l406ch
	ld a,(bc)
	jr nz,l4082h
	jr nz,$+56
	ld l,020h
l4066h:
	ld d,d
	ld b,c
	ld c,l
	jr nz,l40b7h
	ld b,c
l406ch:
	ld e,c
	ld c,a
l406eh:
	ld d,l
l406fh:
	ld d,h
	dec c
	ld a,(bc)
l4072h:
	jr nz,l4094h
	jr nz,l40afh
	ld l,020h
	ld d,d
	ld b,l
	ld b,d
	ld c,a
	ld c,a
	ld d,h
	dec c
	ld a,(bc)
sub_4080h:
	jr nz,l40a2h
l4082h:
	jr nz,l40b4h
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
	dec c
	ld a,(bc)
	jr nz,l40d5h
l4094h:
	ld b,e
	ld b,e
	ld b,l
	ld d,b
	ld d,h
	ld a,(l5320h)
	ld d,b
	ld b,c
	ld b,e
	ld b,l
	jr nz,$+49
l40a2h:
	jr nz,l40e6h
	ld d,l
	ld d,h
	ld d,h
	ld c,a
	ld c,(hl)
	jr nz,l40dch
	dec c
	ld a,(bc)
	jr nz,l40f2h
l40afh:
	ld b,c
	ld c,(hl)
	ld b,e
	ld b,l
	ld c,h
l40b4h:
	ld a,(l4520h)
l40b7h:
	ld d,e
	ld b,e
	jr nz,l40eah
	jr nz,$+68
	ld d,l
	ld d,h
	ld d,h
	ld c,a
	ld c,(hl)
	jr nz,l40f6h
	dec c
	ld a,(bc)
	nop
	jr nz,l40f1h
	ld h,e
	ld h,e
	add hl,hl
	jr nz,l4100h
	jr nc,l4101h
	jr c,$+47
	ld (l3230h),a
l40d5h:
	jr nc,l40f7h
	ld b,d
	ld e,c
	jr nz,l411eh
	ld b,l
l40dch:
	ld d,e
	ld b,c
	ld d,d
	jr nz,$+84
	ld c,c
	ld c,(hl)
	ld b,e
	ld c,a
	ld c,(hl)
l40e6h:
	dec c
	ld a,(bc)
	jr nz,l4152h
l40eah:
	ld (hl),h
	ld (hl),h
	ld (hl),b
	ld (hl),e
	ld a,(l2f2fh)
l40f1h:
	ld l,(hl)
l40f2h:
	ld l,c
	ld h,a
	ld l,b
	ld (hl),h
l40f6h:
	ld h,(hl)
l40f7h:
	ld l,a
	ld a,b
	ld h,c
	ld l,(hl)
	ld h,h
	ld h,e
	ld l,a
	ld l,063h
l4100h:
	ld l,a
l4101h:
	ld l,l
	cpl
	dec c
	ld a,(bc)
	nop
	ret nz
	nop
	jr nz,l410ah
l410ah:
	dec c
	ld a,(bc)
	jr nz,l4161h
	ld b,e
	ld d,d
	ld b,l
	ld b,l
	ld c,(hl)
	jr nz,$+50
	jr nz,l416bh
	ld b,l
	ld d,e
	ld d,h
	dec c
	ld a,(bc)
	nop
	dec c
l411eh:
	ld a,(bc)
	jr nz,$-48
	jr nz,$+82
	ld d,d
l4124h:
	ld b,l
	ld d,e
	ld d,e
	jr nz,l417bh
	ld c,c
	ld b,a
	ld c,b
sub_412ch:
	ld d,h
	cpl
	ld c,h
	ld b,l
	ld b,(hl)
	ld d,h
	jr nz,$+86
	ld c,a
	jr nz,l417ah
	ld c,b
sub_4138h:
	ld b,c
l4139h:
	ld c,(hl)
	ld b,a
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l4160h
	jr nz,l4196h
	ld c,b
	ld b,l
	jr nz,l419ah
	ld b,l
	ld e,b
	ld d,h
	jr nz,l418eh
	ld c,a
	ld c,h
	ld c,a
	ld d,d
	ld l,00dh
	ld a,(bc)
l4152h:
	dec c
	ld a,(bc)
	jr nz,l4124h
	jr nz,l41a8h
	ld d,d
	ld b,l
	ld d,e
	ld d,e
sub_415ch:
	jr nz,l41b3h
	ld d,b
	cpl
l4160h:
	ld b,h
l4161h:
	ld c,a
	ld d,a
	ld c,(hl)
	jr nz,l41bah
	ld c,a
	jr nz,l41ach
	ld c,b
	ld b,c
l416bh:
	ld c,(hl)
	ld b,a
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l4192h
	jr nz,l41c8h
	ld c,b
	ld b,l
	jr nz,l41bah
	ld b,c
	ld b,e
l417ah:
	ld c,e
l417bh:
	ld b,a
	ld d,d
	ld c,a
	ld d,l
	ld c,(hl)
	ld b,h
	jr nz,l41c6h
	ld c,a
	ld c,h
	ld c,a
	ld d,d
	ld l,00dh
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,sub_415ch
l418eh:
	jr nz,l41e0h
	ld d,d
	ld b,l
l4192h:
	ld d,e
	ld d,e
	jr nz,sub_41d7h
l4196h:
	ld b,e
	ld b,e
l4198h:
	ld b,l
	ld d,b
l419ah:
	ld d,h
	jr nz,l41f1h
	ld c,a
	jr nz,l41f2h
	ld b,l
	ld d,e
	ld d,h
	ld c,a
	ld d,d
	ld b,l
	jr nz,l41ech
l41a8h:
	ld b,l
	ld b,(hl)
	ld b,c
	ld d,l
l41ach:
	ld c,h
	ld d,h
	ld d,e
	ld l,00dh
	ld a,(bc)
	nop
l41b3h:
	dec c
	ld a,(bc)
l41b5h:
	jr nz,l420ah
	ld b,e
	ld d,d
	ld b,l
l41bah:
	ld b,l
	ld c,(hl)
	jr nz,l41efh
	jr nz,l4214h
	ld b,l
	ld d,e
	ld d,h
	dec c
	ld a,(bc)
	nop
l41c6h:
	dec c
	ld a,(bc)
l41c8h:
	jr nz,l4198h
	jr nz,$+82
	ld d,d
l41cdh:
	ld b,l
	ld d,e
	ld d,e
	jr nz,l4224h
	ld c,c
	ld b,a
	ld c,b
	ld d,h
	cpl
sub_41d7h:
	ld c,h
	ld b,l
	ld b,(hl)
	ld d,h
	jr nz,$+86
	ld c,a
	jr nz,l4223h
l41e0h:
	ld c,b
	ld b,c
	ld c,(hl)
	ld b,a
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l4209h
	jr nz,l423fh
	ld c,b
l41ech:
	ld b,l
	jr nz,l4243h
l41efh:
	ld b,l
	ld e,b
l41f1h:
	ld d,h
l41f2h:
	jr nz,l4237h
	ld c,a
	ld c,h
	ld c,a
	ld d,d
	ld l,00dh
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l41cdh
	jr nz,l4251h
	ld d,d
	ld b,l
	ld d,e
	ld d,e
l4205h:
	jr nz,l425ch
	ld d,b
	cpl
l4209h:
	ld b,h
l420ah:
	ld c,a
	ld d,a
	ld c,(hl)
	jr nz,l4263h
	ld c,a
	jr nz,$+69
	ld c,b
	ld b,c
l4214h:
	ld c,(hl)
	ld b,a
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l423bh
	jr nz,$+86
	ld c,b
	ld b,l
	jr nz,l4263h
sub_4221h:
	ld b,c
	ld b,e
l4223h:
	ld c,e
l4224h:
	ld b,a
	ld d,d
	ld c,a
	ld d,l
	ld c,(hl)
l4229h:
	ld b,h
	jr nz,l426fh
	ld c,a
	ld c,h
	ld c,a
	ld d,d
	ld l,00dh
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l4205h
l4237h:
	jr nz,l4289h
	ld d,d
	ld b,l
l423bh:
	ld d,e
	ld d,e
	jr nz,l4280h
l423fh:
	ld b,e
	ld b,e
	ld b,l
	ld d,b
l4243h:
	ld d,h
	jr nz,l429ah
	ld c,a
	jr nz,l428ch
	ld c,b
	ld b,c
	ld c,(hl)
l424ch:
	ld b,a
	ld b,l
	jr nz,l42a4h
	ld c,b
l4251h:
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l4276h
	jr nz,l429ah
	ld c,a
	ld d,d
	ld b,h
	ld b,l
l425ch:
	ld d,d
	jr nz,$+69
	ld c,a
	ld c,h
	ld c,a
	ld d,d
l4263h:
	ld l,00dh
	ld a,(bc)
	nop
	dec c
	ld a,(bc)
	jr nz,l42beh
	ld b,e
	ld d,d
	ld b,l
	ld b,l
l426fh:
	ld c,(hl)
	jr nz,l42a4h
	jr nz,l42c8h
	ld b,l
	ld d,e
l4276h:
	ld d,h
	dec c
	ld a,(bc)
	nop
	dec c
	ld a,(bc)
l427ch:
	jr nz,l424ch
	jr nz,l42d0h
l4280h:
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,l42d8h
	ld c,c
	ld b,a
	ld c,b
l4289h:
	ld d,h
	cpl
	ld c,h
l428ch:
	ld b,l
	ld b,(hl)
	ld d,h
	jr nz,l42e5h
	ld c,a
	jr nz,l42d7h
	ld c,b
	ld b,c
	ld c,(hl)
	ld b,a
	ld b,l
	dec c
l429ah:
	ld a,(bc)
	jr nz,$+34
	jr nz,l42f3h
	ld c,b
sub_42a0h:
	ld b,l
	jr nz,l42ech
	ld c,l
l42a4h:
	ld b,c
	ld b,a
	ld b,l
	ld l,00dh
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l427ch
	jr nz,l4300h
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
sub_42bch:
	jr nz,l4312h
l42beh:
	ld c,a
	jr nz,l4304h
	ld c,b
	ld b,c
	ld c,(hl)
l42c4h:
	ld b,a
	ld b,l
	jr nz,l431ch
l42c8h:
	ld c,b
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l42eeh
	jr nz,l4312h
l42d0h:
	ld c,a
	ld d,d
	ld b,h
	ld b,l
	ld d,d
	jr nz,$+69
l42d7h:
	ld c,a
l42d8h:
	ld c,h
	ld c,a
	ld d,d
	ld l,00dh
	ld a,(bc)
	nop
	dec c
	ld a,(bc)
	jr nz,l4336h
	ld b,e
	ld d,d
l42e5h:
	ld b,l
	ld b,l
	ld c,(hl)
	jr nz,l431dh
	jr nz,l4340h
l42ech:
	ld b,l
	ld d,e
l42eeh:
	ld d,h
	dec c
sub_42f0h:
	ld a,(bc)
	nop
	dec c
l42f3h:
	ld a,(bc)
	jr nz,l42c4h
l42f6h:
	jr nz,l4348h
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,$+84
	ld c,c
	ld b,a
l4300h:
	ld c,b
	ld d,h
	cpl
	ld c,h
l4304h:
	ld b,l
	ld b,(hl)
	ld d,h
	jr nz,l435dh
	ld c,a
	jr nz,l434fh
	ld c,b
	ld b,c
	ld c,(hl)
	ld b,a
	ld b,l
	dec c
l4312h:
	ld a,(bc)
	jr nz,l4335h
	jr nz,$+86
sub_4317h:
	ld c,b
	ld b,l
	jr nz,$+82
	ld b,c
l431ch:
	ld d,h
l431dh:
	ld d,h
	ld b,l
	ld d,d
	ld c,(hl)
	ld l,00dh
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l42f6h
	jr nz,l437ah
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,l4385h
	ld d,b
	cpl
	ld b,h
	ld c,a
	ld d,a
l4335h:
	ld c,(hl)
l4336h:
	jr nz,l438ch
	ld c,a
	jr nz,l437eh
	ld c,b
	ld b,c
	ld c,(hl)
	ld b,a
	ld b,l
l4340h:
	jr nz,l4396h
	ld c,b
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l4368h
l4348h:
	jr nz,l438ch
l434ah:
	ld c,a
	ld d,d
	ld b,h
	ld b,l
	ld d,d
l434fh:
	jr nz,l4394h
	ld c,a
	ld c,h
	ld c,a
	ld d,d
sub_4355h:
	ld l,00dh
	ld a,(bc)
	nop
	dec c
	ld a,(bc)
	jr nz,l43b0h
l435dh:
	ld d,b
	ld d,d
	ld c,c
	ld d,h
	ld b,l
	ld d,e
	jr nz,l43b9h
	ld b,l
	ld d,e
	ld d,h
l4368h:
	jr nz,l4392h
	ld sp,l7836h
	ld sp,02036h
	ld c,l
	ld c,a
	ld b,h
	ld b,l
	add hl,hl
	dec c
	ld a,(bc)
	nop
	dec c
	ld a,(bc)
l437ah:
	jr nz,l434ah
	jr nz,$+82
l437eh:
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,l43c5h
	ld b,e
l4385h:
	ld b,e
	ld b,l
	ld d,b
	ld d,h
	jr nz,l43dfh
	ld c,a
l438ch:
	jr nz,l43e1h
	ld d,h
	ld b,c
	ld d,d
	ld d,h
l4392h:
	cpl
	ld d,e
l4394h:
	ld d,h
	ld c,a
l4396h:
	ld d,b
	jr nz,l43edh
	ld c,b
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l43bfh
	jr nz,l43f4h
	ld d,b
	ld d,d
	ld c,c
	ld d,h
	ld b,l
	ld d,e
	jr nz,l43f6h
	ld c,a
	ld d,(hl)
	ld b,l
	ld c,l
	ld b,l
	ld c,(hl)
	ld d,h
l43b0h:
	ld l,00dh
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l4385h
	jr nz,$+82
l43b9h:
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,l4414h
l43bfh:
	ld d,b
l43c0h:
	jr nz,l4416h
	ld c,a
	jr nz,l4417h
l43c5h:
	ld b,l
	ld d,e
	ld b,l
	ld d,h
	jr nz,l441fh
	ld c,b
	ld b,l
	jr nz,l441fh
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
	dec c
	ld a,(bc)
	jr nz,l442ah
l43dfh:
	ld b,l
	ld e,c
l43e1h:
	ld b,d
	ld c,a
	ld b,c
	ld d,d
	ld b,h
	jr nz,l443ch
	ld b,l
l43e9h:
	ld d,e
	ld d,h
	dec c
	ld a,(bc)
l43edh:
	nop
	dec c
	ld a,(bc)
	jr nz,l43c0h
	jr nz,l4444h
l43f4h:
	ld d,d
	ld b,l
l43f6h:
	ld d,e
	ld d,e
	jr nz,l443bh
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
	jr nz,l4455h
	ld b,l
	ld e,c
	jr nz,l4462h
	ld c,a
	jr nz,$+86
	ld b,l
	ld d,e
	ld d,h
l4414h:
	ld l,00dh
l4416h:
	ld a,(bc)
l4417h:
	dec c
	ld a,(bc)
	jr nz,l43e9h
	jr nz,l4474h
	ld c,b
	ld b,l
l441fh:
	ld c,(hl)
	jr nz,$+67
	jr nz,l446fh
	ld b,l
	ld e,c
	jr nz,$+82
	ld d,d
	ld b,l
l442ah:
	ld d,e
	ld d,e
	jr nz,l447dh
	ld d,d
	jr nz,l4483h
	ld b,l
	ld c,h
	ld b,l
	ld b,c
	ld d,e
	ld b,l
	jr nz,l4482h
	ld d,e
	dec c
l443bh:
	ld a,(bc)
l443ch:
	jr nz,l445eh
	jr nz,$+70
	ld b,l
	ld d,h
	ld b,l
	ld b,e
l4444h:
	ld d,h
l4445h:
	ld b,l
	ld b,h
	inc l
	jr nz,l44a3h
	ld c,a
	ld d,l
	daa
	ld c,h
	ld c,h
	jr nz,l4493h
	ld b,l
	jr nz,l44abh
	ld b,c
l4455h:
	ld d,d
	ld c,(hl)
sub_4457h:
	ld b,l
l4458h:
	ld b,h
	jr nz,l44b2h
	ld c,c
	ld d,h
	ld c,b
l445eh:
	jr nz,l44a1h
	dec c
	ld a,(bc)
l4462h:
	jr nz,$+34
	jr nz,l44bah
	ld b,l
	ld e,b
	ld d,h
	inc l
	jr nz,l44afh
	ld c,a
	ld c,h
	ld c,a
l446fh:
	ld d,d
	jr nz,$+69
	ld c,b
	ld b,c
l4474h:
	ld c,(hl)
	ld b,a
	ld b,l
	jr nz,l44bah
	ld c,(hl)
sub_447ah:
	ld b,h
	jr nz,l44beh
l447dh:
	jr nz,l44d2h
	ld c,a
	ld d,l
	ld c,(hl)
l4482h:
	ld b,h
l4483h:
	ld l,00dh
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l4458h
	jr nz,l44dch
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,l44e5h
	ld c,b
l4493h:
	ld c,c
	ld b,(hl)
	ld d,h
	jr nz,l44c3h
	jr nz,l44dfh
	ld d,e
	ld b,e
	jr nz,l44edh
	ld d,d
	jr nz,l44e3h
l44a1h:
	ld d,l
	ld d,h
l44a3h:
	ld d,h
	ld c,a
	ld c,(hl)
	jr nz,l44dah
	jr nz,l44feh
	ld c,a
l44abh:
	dec c
	ld a,(bc)
	jr nz,l44cfh
l44afh:
	jr nz,l44f3h
	ld b,c
l44b2h:
	ld b,e
	ld c,e
	jr nz,l450ah
sub_44b6h:
	ld c,a
	jr nz,$+86
	ld c,b
l44bah:
	ld b,l
	jr nz,l450ah
	ld b,c
l44beh:
	ld c,c
	ld c,(hl)
	jr nz,l450fh
sub_44c2h:
	ld b,l
l44c3h:
	ld c,(hl)
sub_44c4h:
	ld d,l
	ld l,00dh
sub_44c7h:
	ld a,(bc)
	nop
	ld d,b
	ld c,h
	ld b,l
	ld b,c
	ld d,e
	ld b,l
l44cfh:
	inc l
l44d0h:
	jr nz,l4524h
l44d2h:
	ld b,l
	ld c,h
	ld b,l
	ld b,c
	ld d,e
	ld b,l
	jr nz,l451bh
l44dah:
	ld c,h
	ld c,h
l44dch:
	jr nz,l4532h
	ld c,b
l44dfh:
	ld b,l
	jr nz,l452dh
	ld b,l
l44e3h:
	ld e,c
	ld d,e
l44e5h:
	ld l,02eh
	ld l,000h
	ld c,e
	ld b,l
	ld e,c
	ld b,d
l44edh:
	ld c,a
	ld b,c
	ld d,d
	ld b,h
	jr nz,l4547h
l44f3h:
	ld b,l
	ld d,e
	ld d,h
	jr nz,l454ah
	ld b,l
	ld b,c
	ld b,h
	ld e,c
	ld l,02eh
l44feh:
	ld l,00dh
l4500h:
	ld a,(bc)
	dec c
	ld a,(bc)
	nop
	jr nz,$+75
	ld d,e
	jr nz,$+70
	ld c,a
l450ah:
	ld d,a
	ld c,(hl)
	ld l,00dh
	ld a,(bc)
l450fh:
	nop
	jr nz,$+75
	ld d,e
	jr nz,l456ah
	ld d,b
	ld l,00dh
	ld a,(bc)
	nop
	dec c
l451bh:
	ld a,(bc)
	jr nz,sub_4568h
	ld c,a
	ld e,c
l4520h:
	ld d,e
	ld d,h
	ld c,c
	ld b,e
l4524h:
	ld c,e
	ld d,e
	jr nz,l457ch
	ld b,l
	ld d,e
l452ah:
	ld d,h
	dec c
	ld a,(bc)
l452dh:
	nop
	dec c
	ld a,(bc)
	jr nz,l4500h
l4532h:
	jr nz,l4588h
	ld b,l
	ld d,e
	ld d,h
	jr nz,$+86
	ld c,b
	ld b,l
	jr nz,l4571h
	jr nz,l4583h
	ld c,c
	ld d,d
	ld b,l
l4542h:
	ld b,e
	ld d,h
	ld c,c
	ld c,a
	ld c,(hl)
l4547h:
	ld d,e
	jr nz,l458bh
l454ah:
	ld c,(hl)
l454bh:
	ld b,h
	jr nz,l4580h
	jr nz,$+68
	ld d,l
	ld d,h
	ld d,h
	ld c,a
	ld c,(hl)
	ld d,e
	dec c
	ld a,(bc)
	jr nz,l457ah
	jr nz,l45abh
	ld b,(hl)
	jr nz,l45b3h
	ld c,b
	ld b,l
	jr nz,l4595h
	jr nz,l45afh
	ld c,a
	ld e,c
	ld d,e
sub_4568h:
	ld d,h
	ld c,c
l456ah:
	ld b,e
	ld c,e
	ld d,e
	ld l,00dh
	ld a,(bc)
	dec c
l4571h:
	ld a,(bc)
	jr nz,l4542h
	jr nz,$+69
	ld c,a
	ld c,h
	ld c,a
	ld d,d
l457ah:
	jr nz,l45cbh
l457ch:
	ld b,(hl)
	jr nz,l45d3h
	ld c,b
l4580h:
	ld b,l
	jr nz,l45cch
l4583h:
	ld c,(hl)
	ld b,h
	ld c,c
l4586h:
	ld b,e
	ld b,c
l4588h:
	ld d,h
	ld c,a
	ld d,d
l458bh:
	ld d,e
	jr nz,$+89
	ld c,c
	ld c,h
	ld c,h
	jr nz,l45d6h
	ld c,b
sub_4594h:
	ld b,c
l4595h:
	ld c,(hl)
	ld b,a
	ld b,l
	dec c
	ld a,(bc)
	jr nz,l45bch
	jr nz,l45e7h
	ld b,(hl)
	jr nz,$+82
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,l45f0h
	ld d,e
	jr nz,l45eeh
	ld b,l
l45abh:
	ld d,h
	ld b,l
	ld b,e
	ld d,h
l45afh:
	ld b,l
	ld b,h
	ld l,00dh
l45b3h:
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l4586h
	jr nz,$+82
	ld d,d
	ld b,l
l45bch:
	ld d,e
	ld d,e
	jr nz,$+76
	ld c,a
	ld e,c
	ld sp,l5520h
	ld d,b
	jr nz,l45f3h
	jr nz,$+68
	ld d,l
l45cbh:
	ld d,h
l45cch:
	ld d,h
	ld c,a
	ld c,(hl)
	jr nz,l4602h
	jr nz,l4622h
l45d3h:
	ld d,d
	jr nz,l461bh
l45d6h:
	ld d,e
	ld b,e
	dec c
l45d9h:
	ld a,(bc)
	jr nz,$+34
	jr nz,l4632h
	ld c,a
	jr nz,l4623h
	ld b,c
	ld b,e
	ld c,e
	jr nz,$+86
	ld c,a
l45e7h:
	jr nz,l463dh
	ld c,b
	ld b,l
	jr nz,$+79
	ld b,c
l45eeh:
	ld c,c
	ld c,(hl)
l45f0h:
	jr nz,l463fh
	ld b,l
l45f3h:
	ld c,(hl)
	ld d,l
	ld l,00dh
	ld a,(bc)
	nop
	dec c
	ld a,(bc)
	jr nz,l464dh
	ld d,e
	ld b,a
	jr nz,l4655h
	ld b,l
l4602h:
	ld d,e
	ld d,h
	dec c
	ld a,(bc)
	nop
l4607h:
	dec c
	ld a,(bc)
	jr nz,l45d9h
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
l461bh:
	ld c,a
	jr nz,l4661h
	ld c,b
	ld b,c
sub_4620h:
	ld c,(hl)
l4621h:
	ld b,a
l4622h:
	ld b,l
l4623h:
	dec c
	ld a,(bc)
	jr nz,l4647h
	jr nz,$+86
	ld c,b
	ld b,l
	jr nz,l467ch
	ld d,b
	ld d,h
	ld c,c
	ld c,a
	ld c,(hl)
l4632h:
	ld l,00dh
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l4607h
	jr nz,l468bh
	ld d,d
	ld b,l
l463dh:
	ld d,e
	ld d,e
l463fh:
	jr nz,$+78
	ld b,l
	ld b,(hl)
	ld d,h
	cpl
	ld d,d
	ld c,c
l4647h:
	ld b,a
	ld c,b
	ld d,h
	jr nz,$+86
	ld c,a
l464dh:
	jr nz,l4692h
	ld c,b
	ld b,c
	ld c,(hl)
	ld b,a
l4653h:
	ld b,l
	dec c
l4655h:
	ld a,(bc)
	jr nz,$+34
	jr nz,$+86
	ld c,b
	ld b,l
	jr nz,$+88
	ld b,c
	ld c,h
	ld d,l
l4661h:
	ld b,l
	ld l,00dh
	ld a,(bc)
	nop
	push bc
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
l467ch:
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
l468bh:
	jp l0dc6h
	ld a,(bc)
l468fh:
	call nz,02020h
l4692h:
	jr nz,l46e4h
	ld d,e
	ld b,a
	jr nz,l46ech
	ld b,l
	ld d,e
	ld d,h
	jr nz,$+34
l469dh:
	jr nz,l46bfh
	jr nz,$+34
	jr nz,$+34
	jr nz,l46c5h
	jr nz,$+34
	jr nz,$+34
	jr nz,l46cbh
l46abh:
	jr nz,$+34
	jr nz,$+34
	jr nz,l46d1h
	jr nz,$+34
	jr nz,$+34
	call nz,l0a0dh
	ret
l46b9h:
	jp 0c3c3h
l46bch:
	jp 0ccc3h
l46bfh:
	jp 0c3c3h
	jp 0c3c3h
l46c5h:
	jp 0c3cch
	jp 0c3c3h
l46cbh:
	jp 0c3c3h
	call z,0c3c3h
l46d1h:
	jp 0c3c3h
	jp 0ccc3h
	jp 0c3c3h
	jp 0c3c3h
	jp l0dcah
	ld a,(bc)
	call nz,sub_4620h
l46e4h:
	ld d,d
	ld d,c
	jr nz,$-58
	jr nz,l470ah
	ld c,a
	ld b,(hl)
l46ech:
	ld b,(hl)
	jr nz,$+34
	call nz,sub_3320h
	jr nc,$+50
	ld c,b
	ld e,d
	jr nz,l46bch
	jr nz,$+55
	jr nc,$+50
	ld c,b
	ld e,d
l46feh:
	jr nz,$-58
	jr nz,l4733h
	ld c,e
	ld c,b
	ld e,d
	jr nz,$+34
	call nz,l0a0dh
l470ah:
	ret
	jp 0c3c3h
l470eh:
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
	jp z,l0a0dh
l4733h:
	call nz,0c020h
	jr nz,$+67
	jr nz,l46feh
	jr nz,l475ch
	jr nz,$-61
	jr nz,l4760h
	jr nz,$-58
	jr nz,$+34
	jr nz,$-60
	jr nz,$+34
	jr nz,l470eh
	jr nz,l476ch
	jr nz,$-60
	jr nz,$+34
l4750h:
	jr nz,$-58
	jr nz,l4774h
	jr nz,$-60
	jr nz,$+34
l4758h:
	jr nz,$-58
l475ah:
	dec c
	ld a,(bc)
l475ch:
	ret
	jp 0c3c3h
l4760h:
	jp 0cbc3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3cbh
l476ch:
	jp 0c3c3h
	jp 0c3c3h
	set 0,e
l4774h:
	jp 0c3c3h
	jp 0c3c3h
	set 0,e
	jp 0c3c3h
	jp 0c3c3h
	jp z,l0a0dh
	call nz,02020h
	jr nz,l47cch
	jr nz,l4750h
	jr nz,l47aeh
	jr nz,$-61
	jr nz,l47b2h
	jr nz,l4758h
	jr nz,$+34
	jr nz,l475ah
	jr nz,$+34
	jr nz,l4760h
	jr nz,l47beh
	jr nz,$-60
	jr nz,$+34
l47a2h:
	jr nz,$-58
	jr nz,l47c6h
	jr nz,$-60
	jr nz,$+34
l47aah:
	jr nz,$-58
l47ach:
	dec c
l47adh:
	ld a,(bc)
l47aeh:
	ret
	jp 0c3c3h
l47b2h:
	jp 0cbc3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3cbh
l47beh:
	jp 0c3c3h
	jp 0c3c3h
	set 0,e
l47c6h:
	jp 0c3c3h
	jp 0c3c3h
l47cch:
	set 0,e
	jp 0c3c3h
	jp 0c3c3h
	jp z,l0a0dh
	call nz,02020h
	jr nz,l481fh
	jr nz,l47a2h
	jr nz,l4800h
	jr nz,$-61
	jr nz,l4804h
	jr nz,l47aah
	jr nz,$+34
	jr nz,l47ach
	jr nz,$+34
	jr nz,l47b2h
	jr nz,l4810h
	jr nz,$-60
	jr nz,$+34
	jr nz,$-58
	jr nz,$+34
	jr nz,$-60
	jr nz,l481ch
	jr nz,$-58
	dec c
	ld a,(bc)
l4800h:
	ret
	jp 0c3c3h
l4804h:
	jp 0cdc3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3cbh
l4810h:
	jp 0c3c3h
l4813h:
	jp 0c3c3h
	call 0c3c3h
	jp 0c3c3h
l481ch:
	jp 0cdc3h
l481fh:
	jp 0c3cch
	jp 0c3c3h
	jp l0dcah
	ld a,(bc)
	call nz,02020h
	jr nz,l4884h
	ld c,a
l482fh:
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
l483dh:
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
sub_4848h:
	jr nz,$-58
	jr nz,$+34
	jr nz,l486eh
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
l486eh:
	jp 0c3c3h
	jp 0c3cbh
	jp 0c3c3h
	jp l0dcah
sub_487ah:
	ld a,(bc)
	call nz,02020h
	jr nz,l48d6h
	ld c,a
	ld c,h
	ld d,l
	ld c,l
l4884h:
	ld b,l
	jr nz,l48c9h
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
	jr nz,l48c0h
	jr nz,$-58
	dec c
sub_48a3h:
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
l48c0h:
	jp 0c3c3h
	jp 0c3cbh
	jp 0c3c3h
l48c9h:
	jp l0dcah
	ld a,(bc)
	call nz,02020h
	jr nz,l4928h
	ld c,a
	ld c,h
	ld d,l
	ld c,l
l48d6h:
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
l48e7h:
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	jr nz,$-58
	jr nz,$+34
	jr nz,l4912h
l48f2h:
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
l4912h:
	jp 0c3c3h
	jp 0c3cbh
	jp 0c3c3h
	jp l0dcah
	ld a,(bc)
	call nz,02020h
	jr nz,$+80
l4924h:
	ld c,a
	ld c,c
	ld d,e
	ld b,l
l4928h:
	jr nz,$+34
	jr nz,l494ch
	jr nz,l48f2h
	jr nz,l497fh
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
	call nz,l0a0dh
l4948h:
	ret
	jp 0c3c3h
l494ch:
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3cbh
	jp 0c3c3h
l495bh:
	jp 0c3cbh
	jp 0c3c3h
	jp 0c3cbh
	jp 0c3c3h
	jp 0c3cbh
	jp 0c3c3h
	jp l0dcah
	ld a,(bc)
	call nz,02020h
	jr nz,$+71
	ld c,(hl)
	ld b,c
	ld b,d
	ld c,h
	ld b,l
	jr nz,$+34
l497dh:
	jr nz,$+34
l497fh:
	call nz,02020h
	pop bc
	jr nz,$+34
	call nz,02020h
	jp nz,02020h
	call nz,02020h
l498eh:
	jp nz,02020h
	call nz,02020h
	jp nz,02020h
	call nz,l0a0dh
	ret
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3c3h
	jp 0c3cbh
sub_49aah:
	jp 0c3c3h
	jp 0c3cdh
	jp 0c3c3h
	jp 0c3cdh
	jp 0c3c3h
	jp 0c3cbh
	jp 0c3c3h
	jp l0dcah
	ld a,(bc)
	call nz,02020h
	jr nz,l4a0eh
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
	jr nz,l4a08h
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
l4a08h:
	jp 0c3c3h
	jp 0c3cdh
l4a0eh:
	jp 0c3c3h
	jp 00dc8h
	ld a,(bc)
	nop
	jr nz,$+85
	ld e,c
	ld d,e
	ld d,h
	ld b,l
	ld c,l
	jr nz,l4a68h
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
	ld c,l
	ld c,a
l4a2eh:
	ld b,h
	ld b,l
	ld c,h
	ld a,(l0020h)
	ld c,l
	ld d,e
	ld e,b
	nop
	ld c,l
	ld d,e
	ld e,b
	ld (04d00h),a
	ld d,e
	ld e,b
	ld (l002ah+1),a
	ld d,h
	ld d,l
	ld d,d
	ld b,d
	ld c,a
	dec l
	ld d,d
	nop
	ccf
	ccf
	ccf
	nop
	ld c,e
	ld b,d
	nop
	ld d,d
	ld b,c
	ld c,l
	ld a,(l0020h)
	ld d,(hl)
	ld d,d
	ld b,c
	ld c,l
	ld a,(l0020h)
	ld d,(hl)
	ld b,h
	ld d,b
	ld a,(l0020h)
	ld d,h
	ld c,l
l4a67h:
	ld d,e
l4a68h:
	add hl,sp
	add hl,sp
	ld sp,sub_4138h
	cpl
	ld (sub_4138h),a
	nop
	ld d,h
	ld c,l
	ld d,e
	add hl,sp
	add hl,sp
	ld (l4139h),a
l4a7ah:
	nop
	ld d,(hl)
	add hl,sp
	add hl,sp
	inc sp
	jr c,l4a81h
l4a81h:
	ld d,(hl)
	add hl,sp
	add hl,sp
	dec (hl)
	jr c,l4a87h
l4a87h:
	ld b,(hl)
	ld d,d
	ld b,l
	ld d,c
	ld a,(l0020h)
	ld c,b
	ld e,d
	nop
	ld c,e
	ld b,l
	ld e,c
	ld b,d
	ld c,a
	ld b,c
	ld d,d
	ld b,h
	ld a,(l0020h)
	ld c,d
	ld d,b
	nop
	ld c,c
l4aa0h:
	ld c,(hl)
	ld d,h
	nop
	ld b,(hl)
	ld d,d
	nop
	ld b,a
	ld b,d
	nop
	ld b,h
	ld b,l
	nop
	ld d,l
	ld d,e
	ld d,e
	ld d,d
	nop
	ld d,e
	ld d,b
l4ab3h:
	nop
	jr nz,l4ae3h
	jr nz,l4ab8h
l4ab8h:
	ld b,h
	ld b,c
	ld d,h
	ld b,l
	nop
	ld d,h
	ld c,c
	ld c,l
	ld b,l
	nop
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
	call nz,0c420h
	jr nz,$+34
	jr nz,$+34
l4ae3h:
	call nz,02020h
	jr nz,$+34
	call nz,02020h
	jr nz,$+34
	call nz,02020h
	jr nz,$+34
	call nz,0c420h
	nop
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
	jr nz,$+82
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,l4b73h
	ld b,e
	ld b,e
	ld b,l
l4b35h:
	ld d,b
	ld d,h
	jr nz,l4b88h
	ld d,d
	jr nz,l4b7fh
	ld b,c
	ld c,(hl)
	ld b,e
	ld b,l
	ld c,h
	jr nz,l4b97h
	ld c,a
	jr nz,$+71
	ld e,b
	ld c,c
	ld d,h
	ld l,000h
	dec c
	ld a,(bc)
	jr nz,l4b9ch
	ld c,a
	ld c,(hl)
	ld c,c
	ld d,h
	ld c,a
	ld d,d
	jr nz,l4b9ah
	ld c,a
	ld c,h
	ld c,a
	ld d,d
	jr nz,l4bb1h
	ld b,l
	ld d,e
	ld d,h
	dec c
	ld a,(bc)
	nop
	dec c
	ld a,(bc)
l4b65h:
	jr nz,l4b35h
	jr nz,l4bb9h
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	jr nz,l4bbbh
	ld b,l
	ld b,(hl)
	ld d,h
	cpl
l4b73h:
	ld d,d
	ld c,c
	ld b,a
	ld c,b
	ld d,h
	jr nz,l4bceh
	ld c,a
	jr nz,l4bc0h
	ld c,b
	ld b,c
l4b7fh:
	ld c,(hl)
	ld b,a
	ld b,l
	dec c
	ld a,(bc)
	jr nz,$+34
	jr nz,l4bdch
l4b88h:
	ld c,b
	ld b,l
	jr nz,l4bcfh
	ld c,a
	ld c,h
	ld c,a
l4b8fh:
	ld d,d
	ld l,00dh
	ld a,(bc)
	dec c
	ld a,(bc)
	jr nz,l4b65h
l4b97h:
	jr nz,l4be9h
sub_4b99h:
	ld d,d
l4b9ah:
	ld b,l
	ld d,e
l4b9ch:
	ld d,e
	jr nz,l4bf4h
	ld d,b
	cpl
	ld b,h
	ld c,a
	ld d,a
	ld c,(hl)
	jr nz,l4bfbh
	ld c,a
	jr nz,l4bedh
	ld c,b
	ld b,c
	ld c,(hl)
	ld b,a
	ld b,l
	dec c
	ld a,(bc)
l4bb1h:
	jr nz,l4bd3h
	jr nz,l4c09h
	ld c,b
	ld b,l
	jr nz,l4c0ch
l4bb9h:
	ld d,b
	ld b,l
l4bbbh:
	ld b,l
l4bbch:
	ld b,h
	jr nz,l4be7h
	ld c,c
l4bc0h:
	ld b,(hl)
sub_4bc1h:
	jr nz,l4c04h
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
l4bceh:
	ld a,(bc)
l4bcfh:
	nop
	jr nz,l4c26h
	ld b,l
l4bd3h:
	ld d,e
	ld d,h
	nop
	ld d,a
	ld c,b
	ld c,c
	ld d,h
	ld b,l
	nop
l4bdch:
	ld b,d
	ld c,h
	ld b,c
	ld b,e
	ld c,e
l4be1h:
	nop
	ld d,d
	ld b,l
	ld b,h
	nop
	ld b,a
l4be7h:
	ld d,d
	ld b,l
l4be9h:
	ld b,l
	ld c,(hl)
	nop
	ld b,d
l4bedh:
	ld c,h
	ld d,l
	ld b,l
	jr nz,l4bf2h
l4bf2h:
	ld c,h
	ld c,a
l4bf4h:
	ld c,a
	ld d,b
	ld c,c
	ld c,(hl)
	ld b,a
	nop
	dec c
l4bfbh:
	ld a,(bc)
	jr nz,l4c4bh
	ld c,c
	ld e,b
	ld b,l
	ld b,h
	jr nz,l4c51h
l4c04h:
	ld c,a
l4c05h:
	ld b,h
	ld b,l
	jr nz,l4c5dh
l4c09h:
	ld b,l
	ld d,e
	ld d,h
l4c0ch:
	dec c
	ld a,(bc)
	nop
	dec c
	ld a,(bc)
	jr nz,l4be1h
	jr nz,$+91
	ld c,a
	ld d,l
	jr nz,l4c66h
	ld d,l
	ld d,e
	ld d,h
	jr nz,l4c71h
	ld b,l
	ld b,l
	jr nz,l4c55h
	jr nz,l4c78h
	ld b,l
l4c25h:
	ld e,b
l4c26h:
	ld d,h
	jr nz,l4c6bh
	ld c,h
	ld c,a
	ld b,e
	ld c,e
	ld d,e
	jr nz,l4c79h
	ld b,(hl)
	dec c
	ld a,(bc)
	jr nz,l4c55h
	jr nz,l4c90h
	ld c,a
	ld d,l
	ld d,d
	jr nz,l4c92h
	ld b,h
	ld d,b
	jr nz,$+85
	ld d,l
	ld d,b
l4c42h:
	ld d,b
	ld c,a
	ld d,d
	ld d,h
	ld d,e
	jr nz,l4c96h
	ld c,c
	ld e,b
l4c4bh:
	ld b,l
	ld b,h
	jr nz,l4c9ch
	ld c,a
	ld b,h
l4c51h:
	ld b,l
	ld l,00dh
	ld a,(bc)
l4c55h:
	nop
	jr nz,l4c78h
l4c58h:
	ld e,c
	ld c,a
	ld d,l
	jr nz,l4caah
l4c5dh:
	ld d,l
	ld d,e
	ld d,h
	jr nz,l4cb5h
	ld b,l
	ld b,l
	jr nz,l4cb3h
l4c66h:
	ld b,l
	jr nz,l4cbdh
	ld c,b
	ld d,d
l4c6bh:
	ld b,l
	ld b,l
	jr nz,l4cc3h
	ld c,c
	ld c,l
l4c71h:
	ld b,l
	ld d,e
	jr nz,l4c95h
	jr nz,l4c97h
	ld d,d
l4c78h:
	ld b,c
l4c79h:
	ld c,l
	jr nz,l4cc8h
	ld b,c
	ld e,c
	ld c,a
	ld d,l
	ld d,h
	dec c
	ld a,(bc)
	nop
	jr nz,l4cd9h
	ld c,h
	ld c,a
	ld d,h
	jr nz,l4cabh
	jr nz,$+82
	ld b,c
	ld b,a
	ld b,l
l4c90h:
	jr nz,$+50
l4c92h:
	jr nz,l4cb4h
	ld d,b
l4c95h:
	ld b,c
l4c96h:
	ld b,a
l4c97h:
	ld b,l
sub_4c98h:
	jr nz,l4ccbh
	jr nz,l4cbch
l4c9ch:
	ld d,b
	ld b,c
	ld b,a
	ld b,l
	jr nz,l4cd4h
	jr nz,l4cc4h
	ld d,b
	ld b,c
	ld b,a
	ld b,l
	jr nz,$+53
l4caah:
	dec c
l4cabh:
	ld a,(bc)
	nop
	jr nz,l4ccfh
	jr nc,l4cdeh
	jr nc,l4cd3h
l4cb3h:
	nop
l4cb4h:
	ld c,l
l4cb5h:
	ld b,c
	ld d,b
	ld d,b
	ld b,l
	ld b,h
	nop
	ld d,b
l4cbch:
	ld b,c
l4cbdh:
	ld b,a
	ld b,l
	ld d,e
	nop
	jr nz,l4d0ch
l4cc3h:
	ld c,(hl)
l4cc4h:
	jr nz,l4cc6h
l4cc6h:
	jr nz,l4d1bh
l4cc8h:
	ld b,l
	ld c,h
	ld b,l
l4ccbh:
	ld b,e
	ld d,h
	jr nz,l4d10h
l4ccfh:
	jr nz,l4d24h
	ld c,h
	ld c,a
l4cd3h:
	ld d,h
l4cd4h:
	jr nz,l4d2ah
	ld c,a
	jr nz,l4d2dh
l4cd9h:
	ld b,l
	ld d,e
	ld d,h
	jr nz,l4d1fh
l4cdeh:
	ld c,(hl)
	ld b,h
	jr nz,l4d32h
	ld d,d
	ld b,l
	ld d,e
	ld d,e
	dec c
	ld a,(bc)
	jr nz,l4d2bh
	ld b,e
	ld b,e
	ld b,l
	ld d,b
	ld d,h
	jr nz,l4d40h
	ld d,d
	jr nz,l4d44h
l4cf4h:
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
	jr nz,l4d49h
	ld e,b
	ld c,c
	ld d,h
	ld l,000h
	ld d,h
	ld b,l
	ld d,e
l4d0ch:
	ld d,h
	ld c,c
	ld c,(hl)
	ld b,a
l4d10h:
	jr nz,$+85
	ld c,h
	ld c,a
	ld d,h
	jr nz,l4d17h
l4d17h:
	ld d,b
l4d18h:
	ld b,c
	ld b,a
	ld b,l
l4d1bh:
	jr nz,l4d1dh
l4d1dh:
	jr nz,l4d64h
l4d1fh:
	ld d,d
	ld d,d
	ld c,a
	ld d,d
	ld d,e
l4d24h:
	jr nz,l4d6ch
	ld c,a
	ld d,l
	ld c,(hl)
	ld b,h
l4d2ah:
	nop
l4d2bh:
	dec c
	ld a,(bc)
l4d2dh:
	nop
	ret nz
	ret po
	ret p
	ret m
l4d32h:
	ret p
	ret po
	ret nz
	nop
	call m,0fcfch
	call m,0fcfch
	call m,sub_0000h
	nop
l4d40h:
	ld a,b
	ld a,b
	ld a,b
	nop
l4d44h:
	nop
	nop
	nop
	nop
	nop
l4d49h:
	rst 38h
	nop
	nop
	nop
	nop
	djnz l4d60h
	djnz l4d62h
	djnz l4d64h
	djnz l4d66h
	nop
sub_4d57h:
	nop
	nop
	inc e
	djnz l4d6ch
	djnz l4d6eh
l4d5eh:
	nop
	nop
l4d60h:
	nop
	ret p
l4d62h:
	djnz l4d74h
l4d64h:
	djnz l4d76h
l4d66h:
	djnz l4d78h
	djnz l4d86h
	nop
	nop
l4d6ch:
	nop
	nop
l4d6eh:
	djnz l4d80h
	djnz l4d62h
l4d72h:
	nop
	nop
l4d74h:
	nop
	nop
l4d76h:
	djnz l4d88h
l4d78h:
	djnz l4d96h
	djnz l4d8ch
	djnz l4d8eh
	djnz l4d90h
l4d80h:
	djnz l4d72h
	djnz l4d94h
	djnz l4d96h
l4d86h:
	djnz l4d98h
l4d88h:
	djnz l4d86h
	djnz l4d9ch
l4d8ch:
	djnz l4d9eh
l4d8eh:
	nop
	nop
l4d90h:
	nop
	call m,sub_1010h
l4d94h:
	djnz l4da6h
l4d96h:
	djnz l4da8h
l4d98h:
	djnz l4d96h
	nop
	nop
l4d9ch:
	nop
	nop
l4d9eh:
	nop
	djnz l4dd9h
	ld a,h
	jr c,l4db4h
	nop
	nop
l4da6h:
	jr nc,$+122
l4da8h:
	ld a,b
	jr nc,l4dabh
l4dabh:
	jr nc,l4dddh
	nop
	jr nc,l4de1h
	ld (l3433h),a
	dec (hl)
l4db4h:
	ld (hl),037h
	jr c,l4df1h
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
l4dd9h:
	ld d,(hl)
	ld d,a
	ld e,b
	ld e,c
l4dddh:
	ld e,d
	jr c,l4e19h
	add hl,hl
l4de1h:
	dec l
	inc a
	ld e,(hl)
	inc h
	ld c,l
	dec h
	inc hl
	dec sp
sub_4de9h:
	ld a,(0c13dh)
	ld d,c
	ld b,d
	ld b,e
	ld b,h
	ld b,l
l4df1h:
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
l4e19h:
	pop bc
	pop bc
	pop bc
	pop bc
	pop bc
	ld hl,(l2f2bh)
	jr nc,l4e54h
	ld (l3433h),a
	dec (hl)
l4e27h:
	ld (hl),037h
	jr c,l4e64h
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
l4e50h:
	nop
	nop
	nop
	nop
l4e54h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4e64h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_4e87h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_4e9ch:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_4eb7h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_4ecah:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_4eddh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_4f01h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4f0bh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4f3fh:
	nop
	nop
	nop
	nop
	nop
sub_4f44h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4fedh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5012h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5024h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5036h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5048h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l505ah:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l506ch:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l507eh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l508fh:
	nop
l5090h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l50a2h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l50b4h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l50c6h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l50d8h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_50e2h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5126h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l519eh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l51c2h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l51ceh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5217h:
	nop
	nop
	nop
	nop
l521bh:
	nop
	nop
	nop
	nop
sub_521fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5247h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5262h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l527fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l529ch:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l52b9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l52d0h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l52e7h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l52feh:
	nop
	nop
l5300h:
	nop
	nop
	nop
	nop
l5304h:
	nop
	nop
	nop
	nop
	nop
	nop
sub_530ah:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l531ch:
	nop
	nop
	nop
	nop
l5320h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_53abh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l53bdh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5417h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5429h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_548fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l54a1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_54e6h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5520h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l555fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l55c2h:
	nop
	nop
	nop
	nop
l55c6h:
	nop
	nop
sub_55c8h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l55f5h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5776h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l579ch:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_57deh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5823h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5833h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l584ah:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5851h:
	nop
	nop
	nop
	nop
	nop
	nop
l5857h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5862h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5870h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5897h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_58edh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5905h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5914h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5970h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5a13h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5a42h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5a86h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5ad7h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5ae8h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5af4h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5ba7h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5bd8h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5be1h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5befh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5bfdh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5c41h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5ca7h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5cb4h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5cc2h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5ccdh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5ce7h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5cfah:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5d11h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5d35h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5d5fh:
	nop
sub_5d60h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5d6bh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5d7dh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5d86h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5d9fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5dabh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5db7h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5dd5h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5df3h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5e0ch:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5e28h:
	nop
	nop
	nop
sub_5e2bh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5e43h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5e97h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5ed7h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5f19h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5f33h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5f55h:
	nop
	nop
	nop
sub_5f58h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5f7ch:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5fe2h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5fefh:
	nop
	nop
	nop
	nop
	nop
	nop
l5ff5h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_5fffh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_6037h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_606dh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l607ch:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_6085h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_6094h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_60a0h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_60c5h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_60edh:
	nop
	nop
	nop
	nop
	nop
	nop
sub_60f3h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_60fdh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_6133h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_613bh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_615fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_6167h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6171h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6179h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6217h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_6229h:
	nop
	nop
	nop
sub_622ch:
	nop
	nop
	nop
	nop
sub_6230h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_623dh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_624eh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6277h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6300h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l635ah:
	nop
	nop
	nop
	nop
l635eh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l66c6h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6700h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6b5ch:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6c6eh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6e00h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6e2eh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6f16h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l72beh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l730ch:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7424h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7447h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7764h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l777fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l77c6h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7800h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l780fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7836h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7877h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7b6fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7dbfh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
l7e00h:
	nop
l7e01h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7e83h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7ebbh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7ec8h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7ef2h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7f00h:
	nop
l7f01h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7f0ch:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7f3eh:
	nop
l7f3fh:
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7f67h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7f78h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7fc3h:
	nop
	nop
	nop
	nop
l7fc7h:
	nop
l7fc8h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7ffch:
	nop
	nop
	nop
	nop
