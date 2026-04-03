; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank10.asm /tmp/smanbow2_bank.bin

	org 04000h

	ld c,l
	ld h,c
	ld l,(hl)
	ld h,d
	ld l,a
l4005h:
	ld (hl),a
	jr nz,l403ah
	jr nz,$+47
	jr nz,$+73
	ld h,c
	ld l,l
	ld h,l
	jr nz,l4060h
	halt
	ld h,l
	ld (hl),d
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
	jr nz,$+34
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
	ld (bc),a
	ld bc,00000h
l4052h:
	ld bc,00002h
l4055h:
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
l406ah:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l40dch:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_414dh:
	nop
	nop
	nop
	nop
	ld d,00fh
	rrca
	rrca
	rrca
	rrca
	ld de,03402h
	djnz l40dch
	add a,b
	add a,b
	add a,b
	add a,b
	djnz l4172h
	djnz l4174h
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
l4172h:
	nop
	nop
l4174h:
	nop
	nop
	nop
	nop
	nop
l4179h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4199h:
	nop
	nop
	nop
	nop
	nop
	nop
l419fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc d
	rrca
	inc hl
	ld a,(bc)
	jr nz,l41d5h
	inc hl
	ld b,000h
	nop
	dec b
	inc d
	ex af,af'
	rrca
	ld l,d
	ld bc,00169h
	ld (02305h),hl
l41d5h:
	inc bc
	nop
	nop
	inc d
	rrca
	ld (0230ah),hl
	rrca
	inc hl
	ld b,022h
	inc bc
	dec b
	nop
	ld l,c
	ld bc,00a27h
	daa
	rrca
	ld (02305h),hl
	inc bc
	dec b
	nop
	ex af,af'
	rrca
	jr nz,l41feh
	inc hl
	rrca
	jr nz,l41feh
	ld (00503h),hl
	nop
	nop
	nop
l41feh:
	nop
	nop
	nop
	nop
	ld e,005h
	jr nz,l4209h
	nop
	nop
	nop
l4209h:
	nop
	ld e,00ah
	inc hl
	rrca
	dec de
	ld b,01eh
	inc bc
	dec b
	nop
	nop
	nop
	dec h
	ld a,(bc)
	dec h
	rrca
	dec h
	dec b
	dec de
	inc bc
	nop
	nop
	ld b,00fh
	dec de
	ld a,(bc)
	jr nz,l4235h
	daa
	ld b,025h
	inc bc
	dec b
	nop
	nop
	nop
	nop
	nop
l4230h:
	nop
	nop
	dec h
	dec b
	daa
l4235h:
	inc bc
	nop
	nop
	inc b
	rrca
	dec h
	ld a,(bc)
	inc hl
	rrca
	daa
	ld b,025h
	inc bc
	dec b
	nop
	nop
	nop
	inc hl
	ld a,(bc)
	cpl
	ld a,(bc)
	dec h
	dec b
	daa
	inc bc
	nop
	nop
	inc bc
	rrca
	daa
	ld a,(bc)
	ld (0270fh),hl
	ld b,025h
	inc bc
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl,(02705h)
	inc bc
	nop
	nop
	dec c
	rrca
	nop
l426bh:
	nop
	nop
	nop
	daa
	ld b,02ah
	inc bc
l4272h:
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec h
	dec b
	daa
	inc bc
	dec b
	nop
	dec bc
	rrca
	ld hl,(01e0ah)
	rrca
	jr nz,l428eh
	dec h
l4289h:
	inc bc
	dec b
	nop
	nop
	nop
l428eh:
	nop
	nop
	nop
	nop
	ld (02005h),hl
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc hl
	ld b,022h
	inc bc
	dec b
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
	inc bc
	nop
	nop
	ld b,00fh
	nop
	nop
	dec de
	rrca
	daa
	ld b,025h
	inc bc
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	daa
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl,(02a06h)
	inc bc
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	daa
	inc bc
	dec b
	nop
	ex af,af'
	rrca
	inc l
	ld a,(bc)
	jr nz,l42f5h
	inc l
	ld b,02ah
	inc bc
	nop
	nop
	ld h,a
	ld bc,00167h
sub_42f0h:
	ld h,a
	ld bc,00167h
	inc l
l42f5h:
	inc bc
	nop
	ld bc,0016eh
	ld l,(hl)
	ld bc,0016eh
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,(hl)
	ld bc,00000h
	nop
l430fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,(hl)
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4385h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l43e4h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rst 38h
	jp c,0e521h
	defb 0edh ;next byte illegal after ed
	and 0e5h
	defb 0edh ;next byte illegal after ed
	and 0e5h
	defb 0edh ;next byte illegal after ed
	and 0e5h
	defb 0edh ;next byte illegal after ed
	and 0e5h
	defb 0edh ;next byte illegal after ed
	and 0e5h
	defb 0edh ;next byte illegal after ed
	and 065h
	defb 0edh ;next byte illegal after ed
	ld h,(hl)
	inc b
	rst 20h
	inc bc
	ld b,d
	defb 0edh ;next byte illegal after ed
	inc bc
	ld hl,0e703h
	ld (bc),a
	ld bc,00402h
	defb 0edh ;next byte illegal after ed
	ld hl,06723h
	ld bc,04402h
	defb 0edh ;next byte illegal after ed
	add a,006h
	dec h
	inc b
	ld b,025h
l4433h:
	dec h
	defb 0edh ;next byte illegal after ed
	ld h,006h
	dec b
	dec b
	inc b
	ld b,005h
	rlca
	inc h
	ld b,(hl)
	dec b
	defb 0edh ;next byte illegal after ed
	ld b,025h
	dec b
	ld b,006h
	rlca
	dec h
	dec b
	ld b,004h
	daa
	dec b
	ld hl,026edh
	inc bc
	rlca
	ld b,006h
	dec b
	dec b
	ld b,006h
	dec b
	dec b
	rlca
	ld b,006h
	defb 0edh ;next byte illegal after ed
	ld bc,02505h
	ld h,(hl)
	inc b
	ld (bc),a
l4464h:
	ld b,007h
	inc h
	ld b,(hl)
	defb 0edh ;next byte illegal after ed
	dec b
	ld b,007h
	inc b
	ld b,002h
	daa
	inc h
	dec b
	ld (bc),a
	rlca
	inc b
	ld h,(hl)
	defb 0edh ;next byte illegal after ed
	ld bc,04625h
	dec h
	rlca
	rlca
	dec b
	inc bc
	inc bc
	ld i,a
	ld b,004h
	nop
	ld b,003h
	daa
	ld b,000h
	ld b,003h
	ex af,af'
	ld (bc),a
	rrd
	ld hl,00104h
	dec b
	inc b
	daa
	ld b,004h
	inc b
	nop
	im 0
	rlca
	dec b
	inc b
	nop
	nop
	ld b,007h
	ex af,af'
	ld b,004h
	nop
	dec b
	dec b
	defb 0edh ;next byte illegal after ed
	rlca
	ex af,af'
	ex af,af'
	inc b
	nop
	ld b,007h
	dec h
	nop
	rlca
	rlca
	dec b
	ld b,004h
	dec b
	ld c,l
	dec b
	ld b,000h
	add hl,hl
	ex af,af'
	call pe,00805h
	ex af,af'
	ld hl,(00607h)
	add hl,bc
	nop
	ld hl,(00927h)
	ex af,af'
	ld a,(bc)
	call pe,00927h
	adc a,d
	ex af,af'
	inc b
	rlca
	dec b
	ld h,00bh
	ld hl,(0044ch)
	daa
	dec bc
	ld a,(bc)
	ld c,e
	ld b,08bh
	add hl,hl
	ld hl,(00807h)
	dec hl
	add hl,bc
	inc c
	inc b
	dec hl
	ld a,(bc)
	dec b
	dec hl
	ex af,af'
l44edh:
	call pe,0ca20h
	inc bc
	ex af,af'
	rlca
	dec b
	rlca
	dec b
	call pe,00809h
	ld a,(bc)
	ld b,a
	adc a,c
	jr z,l4527h
	ld hl,(0074bh)
	dec hl
	ld a,(bc)
	jr z,l450fh
	ld a,(bc)
	ld l,e
	ld c,e
	add hl,bc
	ex af,af'
	rlca
	ld a,(bc)
	inc b
	inc l
	dec hl
l450fh:
	ex af,af'
	ld (bc),a
	dec bc
	xor d
	inc b
	ld c,h
	ex af,af'
	add hl,bc
	dec b
	dec bc
	daa
	call z,00609h
	ld a,(bc)
l451eh:
	rlca
	ex af,af'
	inc b
	ld hl,(00b28h)
	inc b
	dec bc
	ld c,d
l4527h:
	ld b,04ch
	rlca
	ld a,(bc)
	add hl,hl
	inc bc
	dec bc
	ex af,af'
	inc l
	dec bc
l4531h:
	add hl,bc
	ld a,(bc)
	jr z,l4540h
	add hl,hl
	inc l
	add hl,bc
	dec bc
	ld a,(bc)
	dec bc
	add hl,bc
	ex af,af'
	ld a,(bc)
	ld a,(bc)
	ld c,d
l4540h:
	dec hl
	dec bc
	ld c,d
	ld hl,(00b09h)
	dec bc
	add hl,hl
	ld a,(bc)
	ld hl,(0084bh)
	ld c,e
	add hl,bc
	ld c,b
	ld a,(bc)
	dec hl
	inc c
	ld c,e
	add hl,bc
	ld a,(bc)
	ex af,af'
	add hl,bc
	ld hl,(00c0ah)
	add hl,hl
	adc a,e
	add hl,bc
	jp pe,0082ah
	add hl,bc
	adc a,h
	ex af,af'
	daa
	ex af,af'
	ld a,(bc)
	daa
	dec bc
	add hl,bc
	inc l
	ld c,d
	ex af,af'
	ld h,02bh
	dec hl
	rlca
	inc l
	add hl,bc
l4572h:
	ld a,(bc)
	ex af,af'
	dec hl
	add hl,bc
	rlca
	dec hl
	ld hl,(02b0ch)
	ex af,af'
	ex af,af'
	ld c,c
	ld hl,(00b2ch)
	dec bc
	inc bc
	ex af,af'
	ld a,(bc)
	ld b,00ch
	inc c
	add hl,bc
	ld c,e
	dec bc
	rlca
l458ch:
	add hl,bc
	dec b
	ld c,d
	add hl,bc
	inc l
	ex af,af'
	inc b
	dec bc
	add hl,bc
	dec b
	inc l
	dec bc
	add hl,bc
	ld hl,(02b08h)
	nop
	ld l,e
	add hl,bc
	inc c
	ld h,06bh
	dec b
	inc c
	add hl,bc
	dec hl
	rlca
	ld a,(bc)
	add hl,bc
	dec bc
	inc c
	ex af,af'
	ld a,(bc)
	dec bc
	dec b
	ex af,af'
	inc l
	dec bc
	dec bc
	ld b,001h
	dec bc
	add hl,bc
	ld a,(bc)
	xor h
	ld hl,(00709h)
	ex af,af'
	ld h,009h
	ld hl,(0080ah)
	ld a,(bc)
	ex af,af'
	add hl,bc
	inc l
	ld a,(bc)
	ld a,(bc)
	add hl,bc
	add hl,hl
	dec bc
	rlca
	inc l
l45cdh:
	ld c,c
	ld a,(bc)
	add hl,hl
	dec hl
	ld a,(bc)
	ld a,(bc)
	call pe,00809h
	ex af,af'
	ld c,c
	add hl,bc
	ex af,af'
	rlca
	ld c,d
	inc b
	ex af,af'
	dec b
	add hl,bc
	xor h
	rlca
	ld hl,(02509h)
	add hl,bc
	ld a,(bc)
	ld b,04bh
	rlca
	ld a,(bc)
	nop
	adc a,e
	ex af,af'
	inc c
	dec b
	dec hl
	ld (bc),a
	dec b
	call pe,00a06h
	inc bc
	dec hl
	ld b,003h
	ld a,(bc)
	ld b,009h
	inc b
	dec hl
	ld b,005h
	dec hl
	ld a,(bc)
	nop
	dec hl
	ld a,(bc)
	inc c
	ex af,af'
	dec hl
	ex af,af'
l460ah:
	nop
	ld a,(bc)
	add hl,bc
	inc l
	dec bc
	ld a,(bc)
	ld a,(bc)
	nop
	add hl,bc
	ex af,af'
	ex af,af'
	inc l
	inc c
	ld a,(bc)
	add hl,hl
	ld (bc),a
	dec bc
	ld a,(bc)
	ld c,h
	ex af,af'
	ex af,af'
	ld a,(bc)
	dec bc
	ex af,af'
	ld b,00bh
	ld b,009h
	xor h
	ld a,(bc)
	ld hl,(00407h)
	ex af,af'
	ld (bc),a
	ld a,(bc)
	add hl,bc
	dec bc
	ex af,af'
	ld l,d
	dec hl
	rlca
	add hl,bc
	inc c
	ld a,(bc)
	dec hl
	rlca
	add hl,bc
	add hl,bc
	ld a,(bc)
	inc c
	ld hl,(l6b08h)
	rlca
	ld l,e
	ld a,(bc)
	add hl,hl
	add hl,bc
	ex af,af'
	ld a,(bc)
	inc c
	ld a,(bc)
	dec bc
	dec bc
	add hl,bc
	ld hl,(0070ah)
	dec hl
	ld hl,(l4a0bh)
	ld a,(bc)
	ex af,af'
	dec bc
	add hl,bc
	inc c
	ld a,(bc)
	dec bc
	dec hl
	ld (bc),a
	ex af,af'
	add hl,bc
	dec bc
	ld c,h
	daa
	ld hl,(00904h)
	dec bc
	ld b,00ah
	dec c
	ld a,(bc)
	dec bc
	xor e
	ld bc,00909h
	ld c,e
	ex af,af'
	add hl,bc
	dec b
	add hl,bc
	ex af,af'
	dec hl
	inc l
	ld h,009h
	dec bc
	nop
	ex af,af'
	ld l,h
	ld a,(bc)
	ld a,(bc)
	ex af,af'
	rlca
	ld c,d
	ld a,(bc)
	ld h,00bh
	adc a,h
	dec bc
	ex af,af'
	add hl,bc
	dec b
	ld hl,(00807h)
	add hl,hl
	ld b,00bh
	ld a,(bc)
	dec c
	ld a,(bc)
	ld b,00ah
l4694h:
	add hl,bc
	add hl,hl
	ld l,h
	ld a,(bc)
	ex af,af'
	ex af,af'
	ld a,(bc)
	ld a,(bc)
	add hl,bc
	ex af,af'
	dec bc
	ex af,af'
l46a0h:
	add hl,bc
	inc c
	ld a,(bc)
	ld a,(bc)
	dec hl
	dec b
	dec b
	ld hl,(00c09h)
	ex af,af'
	dec bc
	ld b,009h
	inc l
	ex af,af'
	ld hl,(02b0ah)
	ex af,af'
	add hl,bc
	ld c,d
	ld hl,(0042ch)
	dec bc
	add hl,bc
	rlca
	inc l
	dec hl
	add hl,bc
	inc bc
	dec bc
	add hl,bc
	dec b
l46c3h:
	call z,0070ah
	dec bc
	ex af,af'
	add hl,bc
	nop
	ld a,(bc)
	jr z,l46d5h
	ld a,(bc)
	ld a,(bc)
	add hl,bc
	ld b,00bh
	ld a,(bc)
	add hl,bc
	inc c
l46d5h:
	dec bc
	rlca
	dec bc
	add hl,bc
	ld b,0ach
	ld c,d
	ex af,af'
	ld b,004h
	add hl,bc
	dec b
	ld hl,(02b29h)
	add hl,bc
	ex af,af'
	ex af,af'
	ld c,d
	inc c
	add hl,hl
	ld l,e
	ld a,(bc)
	dec hl
	add hl,hl
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	dec bc
	inc c
	dec bc
	ld hl,(00908h)
	add hl,bc
	ld hl,(00a0bh)
	ld a,(bc)
	rlca
	dec bc
	inc c
	jr z,l470ah
	dec bc
	dec bc
	inc c
	ld a,(bc)
	add hl,bc
l4706h:
	ld a,(bc)
	rlca
	ld a,(bc)
	inc c
l470ah:
	dec bc
	add hl,bc
	dec hl
	ld b,008h
	ld a,(bc)
	dec bc
	inc c
	ld (bc),a
	ex af,af'
	dec bc
	ld b,02bh
	xor h
	rlca
	inc b
	ld a,(bc)
	ex af,af'
	dec bc
	nop
	ld a,(bc)
	add hl,bc
	dec bc
	ld a,(bc)
	ld a,(bc)
	adc a,e
	dec b
	add hl,bc
	add hl,bc
	ld l,d
	ld a,(bc)
	ex af,af'
	add hl,bc
	add hl,bc
	ex af,af'
	dec bc
	dec hl
	ld a,(bc)
	inc c
	ld b,00bh
	add hl,bc
	ld bc,00b4ch
	ex af,af'
	ld a,(bc)
	dec b
l473ah:
	dec bc
	inc b
	dec bc
	add hl,bc
	jr z,l476ch
	ld a,(bc)
	dec bc
	rlca
	ld a,(bc)
	add hl,bc
	ld b,00bh
	dec hl
	ld a,(bc)
	inc c
	add hl,bc
	add hl,bc
	add hl,bc
	ld a,(bc)
	dec hl
	dec hl
	ld c,e
	ld a,(bc)
	ld hl,(00a09h)
	ld b,00bh
	inc c
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	inc bc
	add hl,bc
	dec bc
	ex af,af'
	ld hl,(0052ch)
	add hl,bc
	add hl,bc
	dec bc
	rlca
	ld hl,(0090dh)
	inc l
	dec b
	add hl,bc
l476ch:
	add hl,bc
	rlca
	dec bc
	ex af,af'
	add hl,bc
	inc c
	ld a,(bc)
	ex af,af'
	dec bc
	rlca
	rlca
	inc c
	ld a,(bc)
	add hl,bc
	dec bc
	add hl,bc
	ld hl,(02a2ch)
	rlca
	dec bc
	ld c,e
	dec bc
	inc c
	rlca
	ld a,(bc)
	ld a,(bc)
	ld c,e
	ld a,(bc)
	rlca
	dec bc
	dec bc
	rlca
	nop
	add hl,bc
	ld a,(bc)
	ld a,(bc)
	dec hl
	dec bc
	dec bc
	add hl,bc
	add hl,hl
	add hl,bc
	rlca
	inc c
	dec hl
	ld a,(bc)
	dec bc
	add hl,hl
	add hl,bc
	ld hl,(02a0ah)
	dec bc
	dec hl
	ld a,(bc)
	add hl,bc
	ex af,af'
	ld a,(bc)
	ld a,(bc)
	inc c
	dec bc
	dec bc
	dec bc
	ld hl,(00a09h)
	ld a,(bc)
	dec hl
	dec hl
	dec bc
	add hl,bc
	add hl,bc
	ex af,af'
	ex af,af'
	inc c
	inc c
	ld a,(bc)
	dec bc
	ld a,(bc)
	dec b
	ld a,(bc)
	dec bc
	ld hl,(00909h)
	ld hl,(00c0bh)
	rlca
	dec b
	nop
	ld a,(bc)
	inc l
	dec bc
	dec bc
	ex af,af'
	ld b,02bh
	ld a,(bc)
	adc a,d
	add hl,bc
	inc c
	dec bc
	ld a,(bc)
	ld a,(bc)
	add hl,bc
	add hl,bc
	dec hl
	dec bc
	inc c
	jr z,l4807h
	ld a,(bc)
	dec hl
	ld hl,(0292bh)
	dec b
	add hl,bc
	ld hl,(00b0ch)
	dec bc
	ld b,000h
	ld a,(bc)
	ld a,(bc)
	dec hl
	inc c
	dec bc
	dec hl
	ex af,af'
	add hl,bc
	add hl,hl
	ld a,(bc)
	inc l
	dec bc
	ld a,(bc)
	ld hl,(0070ah)
	dec hl
	dec bc
	dec bc
	ex af,af'
	ex af,af'
	ld a,(bc)
	ld b,00ah
	ld c,e
	ld hl,(00a0bh)
	ex af,af'
l4807h:
	add hl,bc
	ld a,(bc)
	rlca
	ld a,(bc)
	inc l
	dec bc
	inc c
	jr z,l4816h
	ld a,(bc)
	ld a,(bc)
	inc c
	dec bc
	dec bc
l4815h:
	dec bc
l4816h:
	ld b,008h
	ld hl,(00a28h)
	dec bc
	inc c
	dec bc
	ld a,(bc)
	ld hl,(00407h)
	dec hl
	inc c
	inc c
	dec bc
	ld hl,(00707h)
	ld a,(bc)
	dec bc
	inc c
	inc c
	ld a,(bc)
	dec bc
	ld a,(bc)
	add hl,bc
	ld a,(bc)
	ex af,af'
	ex af,af'
	dec bc
	dec bc
	inc c
	inc c
	add hl,bc
	ex af,af'
	ex af,af'
	inc bc
	dec bc
	dec bc
	add hl,hl
	ld a,(bc)
	ld a,(bc)
	dec bc
	inc c
	ld a,(bc)
	rlca
	ld a,(bc)
	rlca
	ld hl,(00c0ch)
	add hl,bc
	nop
	ld b,00bh
	inc c
	ld a,(bc)
	add hl,bc
	dec hl
	add hl,hl
	ex af,af'
	add hl,bc
	adc a,h
	ld hl,(0090ah)
	add hl,bc
	dec b
	ld a,(bc)
	ex af,af'
	add hl,hl
	dec bc
	dec c
	nop
	ld a,(bc)
	rlca
	ld a,(bc)
	inc c
	dec bc
	dec bc
	dec hl
	add hl,hl
	ld a,(bc)
	ld c,c
	add hl,bc
	dec b
	inc c
	dec bc
	dec hl
	ex af,af'
	rlca
	add hl,bc
	add hl,hl
	ld c,h
	dec bc
	ex af,af'
	rlca
	dec bc
	ld a,(bc)
	dec bc
	ex af,af'
	rlca
	inc c
	inc c
	add hl,bc
	ld a,(bc)
	add hl,bc
sub_4882h:
	ex af,af'
	dec hl
	ld c,e
	add hl,bc
	dec b
	ld a,(bc)
	add hl,bc
	dec bc
	inc c
	daa
	adc a,d
	dec bc
	ld c,h
	jr z,l489ah
	dec bc
	ld b,00bh
	inc c
	add hl,bc
	ld a,(bc)
	ld a,(bc)
	inc b
	add hl,bc
l489ah:
	dec bc
	ld a,(bc)
	dec hl
	ld c,d
	rlca
	ld a,(bc)
	inc c
	add hl,bc
	dec bc
	add hl,hl
	ld hl,(02b0ch)
	ex af,af'
	add hl,bc
	ld l,d
	ld c,d
	ld hl,(02b09h)
	dec bc
	dec bc
	ld a,(bc)
	dec b
	ld a,(bc)
	dec bc
	dec bc
	inc c
	ld a,(bc)
	rlca
	ld a,(bc)
	add hl,bc
	dec bc
	inc c
	dec bc
	add hl,bc
l48beh:
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	dec bc
	dec bc
	ex af,af'
	ld a,(bc)
	ld a,(bc)
	add hl,bc
	inc c
	inc c
	dec bc
	ld a,(bc)
	ld b,000h
	ex af,af'
	ex af,af'
	add hl,bc
	dec bc
	inc c
	inc c
l48d3h:
	ld a,(bc)
	ld hl,(00608h)
	dec hl
	dec bc
	inc c
	ld a,(bc)
	ld l,e
	ld a,(bc)
	add hl,bc
l48deh:
	rlca
	ex af,af'
	dec hl
	ld a,(bc)
	add hl,bc
	ld c,d
	ld a,(bc)
	ld b,00ch
	ld a,(bc)
	rrc c
	dec bc
	rlca
	add hl,bc
	ld a,(bc)
	ld a,(bc)
	add hl,bc
	dec bc
	dec b
	ld a,(bc)
	ld a,(bc)
	inc c
	add hl,bc
	dec bc
	add hl,bc
	ld b,04ch
	dec bc
	ld a,(bc)
	dec b
	ld b,00bh
	rlca
	dec bc
	add hl,bc
	dec b
	inc c
	dec bc
	rlca
	dec bc
	ld hl,(00c09h)
	ex af,af'
	rrc c
	add hl,bc
	ld c,d
	rlca
	add hl,bc
	rlca
	dec bc
	add hl,bc
	ld a,(bc)
	ld b,04bh
	add hl,bc
	inc l
	daa
	ld a,(bc)
	ld a,(bc)
	ld hl,(00b0bh)
	ld a,(bc)
	ld a,(bc)
	add hl,bc
	dec bc
	dec bc
	ld (bc),a
	add hl,bc
	ld a,(bc)
	add hl,bc
l4928h:
	ld a,(bc)
	dec hl
	ld a,(bc)
l492bh:
	dec bc
	ex af,af'
	rlca
	ld a,(bc)
	add hl,bc
	dec hl
	dec c
	dec bc
	dec bc
	dec b
	ld b,06ch
	dec bc
	dec bc
	ld bc,0092ah
	ld bc,00b00h
	add hl,hl
	dec bc
	dec c
	dec b
	ld a,(bc)
	nop
	add hl,bc
	ld c,h
	add hl,bc
	ld a,(bc)
sub_4949h:
	ld a,(bc)
	dec bc
	ld b,003h
	ld a,(bc)
	rlca
	inc c
	dec c
	ex af,af'
	ex af,af'
	inc c
	add hl,bc
	add hl,hl
	dec bc
	inc bc
	inc c
	ex af,af'
	dec bc
	dec c
	dec bc
	ex af,af'
	add hl,bc
	ex af,af'
	add hl,bc
	dec bc
	ld hl,(00c2bh)
	dec bc
	ld b,001h
	ld a,(bc)
	add hl,bc
	dec bc
	inc c
	ld a,(bc)
	ld a,(bc)
	dec bc
	rlca
	dec bc
	inc c
	ld a,(bc)
	ex af,af'
	ex af,af'
	dec bc
	inc c
	dec bc
	add hl,bc
	add hl,bc
	ex af,af'
	ld a,(bc)
	ld a,(bc)
	dec bc
	dec bc
	dec hl
	add hl,bc
	add hl,bc
	dec bc
	ld a,(bc)
	ld a,(bc)
	add hl,bc
	add hl,bc
	dec bc
	inc c
	dec bc
	add hl,bc
	ld b,006h
	ld hl,(00b0bh)
	rlca
	ex af,af'
	dec bc
	dec bc
	dec bc
	ld a,(bc)
	ex af,af'
	add hl,bc
	add hl,bc
	ld a,(bc)
	dec bc
	inc c
	dec bc
	ld l,d
	dec hl
	ld a,(bc)
	ex af,af'
	inc l
	dec bc
	add hl,bc
	inc bc
	ld a,(bc)
	ld hl,(00c0ah)
	ld bc,00509h
	add hl,hl
	inc c
	dec bc
	add hl,bc
	rlca
	rlca
	dec hl
	inc c
	dec bc
	ex af,af'
	rlca
	add hl,bc
	inc c
	inc c
	inc c
	dec bc
	add hl,hl
	add hl,bc
	ld a,(bc)
	dec hl
	dec hl
	dec bc
	add hl,hl
	dec b
	add hl,bc
	rlca
	ld hl,(0080ah)
	dec hl
	ld a,(bc)
	dec bc
	add hl,bc
	add hl,bc
	rlca
	nop
	inc l
	inc c
	ld a,(bc)
	dec hl
	add hl,bc
	ld a,(bc)
	dec bc
	dec bc
	add hl,bc
	add hl,bc
	ld a,(bc)
	dec hl
	inc c
	dec bc
	ld a,(bc)
	ld bc,00908h
	dec b
	ld a,(bc)
	inc c
	dec bc
	dec bc
	dec bc
	inc bc
	ld b,00ah
	add hl,hl
	dec bc
	inc c
	ld a,(bc)
	ld a,(bc)
	ld hl,(00c0ch)
	dec b
	inc bc
	ex af,af'
	dec bc
	dec c
	inc c
	rlca
	ex af,af'
	add hl,bc
	ex af,af'
	inc c
	dec c
	ld a,(bc)
l4a00h:
	rlca
	ex af,af'
	inc bc
	add hl,bc
	inc c
	dec bc
	inc c
	ld a,(bc)
	ld bc,00c07h
l4a0bh:
	inc c
	ld a,(bc)
	ex af,af'
	nop
	ex af,af'
	inc l
	dec bc
	dec bc
	ex af,af'
	ld b,00bh
	add hl,bc
	ld a,(bc)
	inc l
	ld a,(bc)
	dec bc
	dec b
	rlca
	dec bc
	ld a,(bc)
	ld a,(bc)
	ex af,af'
	add hl,bc
	inc c
	inc c
	dec bc
	ld a,(bc)
	inc bc
	ld (bc),a
	ex af,af'
l4a29h:
	add hl,bc
	dec bc
	inc l
	ld a,(bc)
	add hl,bc
	inc c
	dec bc
	dec bc
	ex af,af'
	ex af,af'
	ld a,(bc)
	ld c,e
	ld c,e
	dec bc
	ld a,(bc)
	dec bc
	ex af,af'
	ex af,af'
	ex af,af'
	ld a,(bc)
	dec bc
	inc c
	inc c
	ex af,af'
	ld bc,00606h
	ld a,(bc)
	inc c
sub_4a46h:
	dec bc
	dec bc
	ex af,af'
l4a49h:
	nop
	ld a,(bc)
	dec bc
	dec bc
	dec bc
	add hl,bc
	ex af,af'
	add hl,bc
	dec bc
	inc c
	inc c
	inc c
	dec bc
	add hl,hl
	add hl,bc
	add hl,bc
	inc c
	dec bc
	ld a,(bc)
	xor e
	ex af,af'
	rlca
	add hl,bc
	ex af,af'
	ld c,d
	ld a,(bc)
	add hl,bc
	rlca
	dec bc
	dec bc
	inc c
	ld hl,(l4b09h)
	rlca
	dec bc
	ld a,(bc)
	ld hl,(00906h)
	ld hl,(00b6bh)
	ld c,d
	ex af,af'
	ld a,(bc)
	add hl,bc
	ld a,(bc)
	dec bc
	dec bc
	dec bc
	add hl,bc
	ld (bc),a
	ex af,af'
	ld a,(bc)
	add hl,hl
	dec bc
	dec hl
	ld hl,(00a0ah)
	ex af,af'
	add hl,bc
	add hl,bc
	ld a,(bc)
	dec c
	inc l
	add hl,hl
	dec bc
	inc b
	ld hl,(00c0ch)
	nop
	ex af,af'
	dec bc
	dec bc
	add hl,bc
	add hl,bc
	nop
	dec b
	ld a,(bc)
	ex af,af'
	dec bc
	inc c
	dec bc
	ld a,(bc)
	add hl,bc
	nop
	add hl,bc
	ld c,h
	inc c
	inc c
	ld a,(bc)
	ld a,(bc)
	dec bc
	dec bc
	dec bc
	ex af,af'
	inc b
	ld hl,(0092ah)
	rlca
	ex af,af'
	dec b
	dec b
	dec hl
	ld hl,(00a29h)
	dec hl
	inc c
	inc c
	dec bc
	add hl,bc
	ex af,af'
	inc c
	inc c
	add hl,bc
	ld hl,(00a0bh)
	add hl,bc
	ex af,af'
	inc c
	dec bc
	inc b
	ld bc,00806h
	inc c
	inc c
	dec bc
	ld a,(bc)
	add hl,bc
	ex af,af'
	ex af,af'
	ld hl,(00b0ch)
	dec bc
	ld hl,(00c0bh)
	ld hl,(0060ah)
	dec bc
	add hl,bc
	ld c,e
	ld a,(bc)
	ld a,(bc)
	ld b,009h
	ld a,(bc)
	dec bc
	ld hl,(00a00h)
	ld a,(bc)
	inc c
	dec bc
	add hl,hl
	dec bc
	ld a,(bc)
	ld c,h
	dec bc
	ld a,(bc)
	ld a,(bc)
	add hl,hl
	add hl,hl
	dec bc
	ld a,(bc)
	inc c
	ex af,af'
	nop
	dec bc
	add hl,bc
	ld a,(bc)
	inc c
	rlca
	dec b
	add hl,bc
	nop
	ld a,(bc)
	dec c
	dec bc
	add hl,bc
	add hl,bc
	rlca
	ex af,af'
l4b09h:
	inc l
	inc c
	dec bc
	ld hl,(00a00h)
	add hl,bc
	dec c
	inc l
	ld b,02bh
	add hl,hl
	ld c,e
	ld a,(bc)
	rlca
	ex af,af'
	add hl,bc
	dec bc
	inc c
	ld a,(bc)
	add hl,bc
	add hl,bc
	nop
	rlca
	dec bc
	add hl,bc
	add hl,bc
	ld c,h
	ld a,(bc)
	ld hl,(00706h)
	dec bc
l4b2ah:
	dec c
	dec bc
	ex af,af'
	dec hl
	add hl,bc
	dec bc
	ld b,00ah
	inc c
	dec hl
	dec hl
	ld a,(bc)
	ld b,001h
	ld b,005h
	ld a,(bc)
	inc c
	dec hl
	add hl,bc
	ld a,(bc)
	dec bc
	add hl,bc
	ex af,af'
	ex af,af'
	ld a,(bc)
	ld c,e
	ld a,(bc)
	dec bc
	dec bc
	inc c
	rlca
	rlca
l4b4bh:
	ex af,af'
	ld a,(bc)
	inc l
	dec bc
	dec bc
	add hl,bc
	inc b
	ld a,(bc)
	ld a,(bc)
	dec bc
	inc c
	add hl,bc
	rlca
	ld a,(bc)
	dec bc
	dec bc
	inc c
	inc c
	ld a,(bc)
	ld hl,(0060ah)
	dec hl
	ld hl,(00a2bh)
	dec b
	add hl,hl
	dec bc
	ex af,af'
	ld a,(bc)
sub_4b6ah:
	rlca
	dec bc
	inc c
	dec bc
	ld a,(bc)
	dec bc
	add hl,bc
	ld c,e
	ld c,h
	daa
	add hl,bc
	adc a,d
	ld l,e
	rlca
	ld h,002h
	inc c
	jr z,l4ba8h
	ld c,e
	add hl,hl
	ld a,(bc)
	dec bc
	inc c
	dec bc
	inc c
	ld a,(bc)
	rlca
	ld a,(bc)
	dec bc
	dec bc
	ld c,e
	ld a,(bc)
	ld a,(bc)
	ex af,af'
	add hl,bc
	dec bc
	dec bc
	ld a,(bc)
	add hl,hl
	ex af,af'
	ld bc,00c0ch
	ld a,(bc)
	ld b,007h
	ex af,af'
	ld a,(bc)
	inc c
	dec bc
	dec b
	add hl,bc
	ld a,(bc)
	ld a,(bc)
	dec c
	inc c
	rlca
	rlca
	add hl,bc
	ld a,(bc)
	inc c
l4ba8h:
	ld c,e
	inc bc
	ld a,(bc)
	inc c
	inc c
	add hl,bc
	dec b
	nop
	nop
	dec hl
	dec bc
	inc c
	rlca
	ld a,(bc)
	inc c
	ld a,(bc)
	ld b,006h
	nop
	ld a,(bc)
	dec c
	dec bc
	rlca
	ld a,(bc)
	ex af,af'
	dec hl
	inc c
	ld a,(bc)
	dec bc
	ex af,af'
	add hl,bc
	inc c
	ld hl,(08b08h)
	add hl,bc
	dec bc
	dec bc
	ld hl,(00b09h)
	add hl,bc
	ld b,009h
	dec hl
	dec hl
	dec bc
	ld a,(bc)
	inc bc
	ld a,(bc)
	dec c
	dec bc
	rlca
	ex af,af'
	add hl,bc
	dec hl
	dec bc
	ld a,(bc)
	ld a,(bc)
	ld b,00ah
	dec bc
	ld a,(bc)
	dec bc
	ex af,af'
	ld bc,00a09h
	ld a,(bc)
	inc c
	dec bc
	nop
	ex af,af'
	ld a,(bc)
	ld a,(bc)
	inc c
	inc c
	inc bc
	ex af,af'
	dec bc
	add hl,bc
	inc c
	inc c
	daa
	dec hl
	dec bc
	inc c
	dec b
	ex af,af'
	add hl,bc
	rlca
	dec bc
	inc c
	ld c,c
	ld a,(bc)
	dec bc
	ld b,00ah
	ld a,(bc)
l4c0bh:
	ld c,h
l4c0ch:
	ld hl,(00b09h)
	ex af,af'
l4c10h:
	ex af,af'
	add hl,bc
	ld bc,00c2bh
	ld a,(bc)
	ld c,d
	ld b,00ah
	ld a,(bc)
	inc c
	add hl,hl
	dec hl
	ex af,af'
	dec bc
	dec bc
	ld a,(bc)
	rlca
	ld a,(bc)
	dec hl
	dec hl
	dec bc
	add hl,bc
	ld b,008h
	dec bc
	dec hl
	dec bc
	inc c
	add hl,bc
	ld a,(bc)
	ex af,af'
	dec bc
	inc c
	add hl,bc
	ld bc,00100h
	ld b,00ch
	dec c
	ld a,(bc)
	add hl,bc
	add hl,bc
	ex af,af'
	ld c,d
	inc c
	dec bc
	add hl,bc
	ex af,af'
	inc l
	inc c
	dec bc
	add hl,bc
	inc bc
	add hl,bc
	rlca
	ld l,b
	ld a,(bc)
	ld b,04ch
	ld a,(bc)
	add hl,bc
	dec bc
	add hl,bc
	ld a,(bc)
	ex af,af'
	ld c,e
	dec c
	dec bc
	dec bc
	dec b
	inc c
	nop
	ld a,(bc)
	dec bc
	ld a,(bc)
	inc c
	ld a,(bc)
	nop
	add hl,bc
	rlca
	ld a,(bc)
	inc c
	ld a,(bc)
	add hl,bc
	dec bc
sub_4c67h:
	ex af,af'
	ld a,(bc)
	inc c
	inc c
	jr z,l4c6dh
l4c6dh:
	nop
	inc c
	inc c
	add hl,bc
	ld a,(bc)
	dec bc
	rlca
	dec bc
	inc c
	ex af,af'
	ld a,(bc)
	ld a,(bc)
	inc b
	dec bc
	dec bc
	add hl,bc
	inc c
	inc c
	ld b,008h
	ex af,af'
	ld a,(bc)
	inc c
	inc c
	dec bc
	rlca
	nop
	ld (bc),a
	add hl,bc
	inc c
	inc c
	dec bc
l4c8dh:
	ld c,e
	ld b,008h
	inc c
	dec bc
	ex af,af'
	nop
	ex af,af'
	dec bc
	dec bc
	inc c
	ld hl,(02a08h)
	add hl,bc
	dec bc
	dec bc
	dec bc
	ex af,af'
	add hl,bc
	ld a,(bc)
	ld c,d
	ld l,e
	dec hl
	add hl,bc
	jr z,l4cb2h
	ld hl,(00a0bh)
l4cabh:
	add hl,bc
sub_4cach:
	add hl,bc
	dec bc
	inc c
	ld c,e
	add hl,bc
	add hl,bc
l4cb2h:
	dec bc
	inc c
	ex af,af'
	add hl,bc
	ld a,(bc)
	ld c,d
	dec bc
	inc c
	add hl,bc
	dec hl
	ld a,(bc)
	add hl,hl
	dec b
	ld a,(bc)
	ld a,(bc)
	inc c
	ld hl,(02b09h)
	dec bc
	ex af,af'
	dec b
	add hl,bc
	ld b,02bh
	dec c
	dec bc
	inc c
	ld a,(bc)
	add hl,hl
	ld bc,02c00h
	inc c
	inc c
	dec bc
	dec bc
	add hl,bc
	ex af,af'
	add hl,bc
	ld b,00ah
	inc c
	inc c
	dec bc
	dec bc
	rlca
	inc b
	ld a,(bc)
	ld a,(bc)
	rlca
	ex af,af'
	rlca
	add hl,bc
	dec bc
	dec bc
	inc c
	inc c
sub_4cech:
	ex af,af'
	ex af,af'
	ld a,(bc)
	dec hl
	dec bc
	inc c
	ld hl,(00909h)
	inc c
	dec bc
	dec bc
	dec hl
	add hl,bc
	ex af,af'
	ld a,(bc)
	inc b
	ex af,af'
	dec hl
	ld a,(bc)
	dec bc
	ex af,af'
	ld a,(bc)
	add hl,bc
	add hl,bc
	inc c
	inc c
	ex af,af'
	ex af,af'
	ld a,(bc)
	add hl,bc
	dec bc
	dec c
	dec bc
	add hl,hl
	ld a,(bc)
	ld a,(bc)
	inc c
	inc c
	ld a,(bc)
	ld a,(bc)
	inc b
	rlca
	dec bc
	ld hl,(00d0ch)
	nop
	nop
	nop
	ex af,af'
	dec c
	ld a,(bc)
	dec b
	inc c
	rlca
	add hl,bc
	dec c
	ld a,(bc)
	ld a,(bc)
	inc c
	nop
	dec b
	dec bc
	ex af,af'
	inc c
	dec c
	ld a,(bc)
	ld a,(bc)
	ld c,e
	ex af,af'
	add hl,bc
	ld a,(bc)
	dec bc
	ld l,c
	ld a,(bc)
	ld a,(bc)
	dec bc
	dec bc
	ex af,af'
	nop
	dec bc
	dec bc
	dec bc
	inc l
	add hl,hl
	add hl,bc
	ld bc,00a0bh
	ld hl,(00b0dh)
	dec bc
	nop
	ld bc,00a4ch
	ld a,(bc)
	rlca
	ld b,009h
	ld a,(bc)
	dec c
	rlca
	ld bc,0050ah
	ld hl,(00b0dh)
	dec bc
	ex af,af'
	add hl,bc
	inc c
	ld a,(bc)
	ex af,af'
	ld a,(bc)
	ld b,009h
	inc c
	inc c
	dec bc
	dec bc
	ld a,(bc)
	ex af,af'
	ld a,(bc)
	dec bc
	add hl,bc
	ex af,af'
	ld a,(bc)
	ld a,(bc)
	dec bc
	dec c
	inc c
	ld a,(bc)
	add hl,bc
	inc bc
	ex af,af'
	ld a,(bc)
	add hl,bc
	inc c
	dec c
	dec bc
	add hl,bc
	add hl,bc
	ld b,008h
	ld a,(bc)
	dec bc
	inc c
	inc c
	inc bc
	dec b
	dec bc
	dec bc
	inc c
	add hl,hl
	nop
	inc bc
	dec bc
	inc c
	inc c
	ld a,(bc)
	nop
	ld b,00bh
	inc c
	dec bc
	ld a,(bc)
	add hl,bc
	inc b
	ex af,af'
	dec bc
	inc c
	dec bc
	rlca
	add hl,bc
	add hl,bc
	ld a,(bc)
	inc c
	dec bc
	ex af,af'
	nop
	nop
	dec bc
	inc l
	dec bc
	inc c
	add hl,bc
	dec b
	add hl,bc
	ld hl,(00c0ch)
	dec hl
	ld hl,(00a08h)
	inc c
	inc c
	add hl,hl
	ld hl,(00b0ah)
	ld a,(bc)
	dec hl
	ld a,(bc)
	dec b
	inc c
	add hl,bc
	ld hl,(00108h)
	dec bc
	dec bc
	inc c
	ld a,(bc)
	ld a,(bc)
	dec bc
	ld b,005h
	ex af,af'
	add hl,bc
	dec bc
	inc c
	dec bc
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	dec bc
	inc c
	add hl,bc
	add hl,bc
	ld a,(bc)
	ex af,af'
	ld a,(bc)
	dec hl
	ld a,(bc)
	dec bc
	ex af,af'
	add hl,bc
	ld hl,(02b0ah)
	add hl,bc
	dec bc
	ld hl,(08a2ah)
	dec bc
	inc c
	inc bc
	add hl,bc
	ld hl,(0092bh)
	ex af,af'
sub_4deeh:
	ld a,(bc)
	ld a,(bc)
	ld c,d
	ld l,e
	dec hl
	add hl,bc
	ld b,00bh
	add hl,bc
	inc c
	inc c
	rlca
	dec hl
	dec bc
	ld b,008h
	dec b
	inc l
	dec bc
	dec bc
l4e02h:
	ld a,(bc)
	add hl,bc
	add hl,bc
	ex af,af'
	ld hl,(00a0bh)
	ld hl,(02b29h)
	dec bc
	ld a,(bc)
	ld hl,(0052ah)
	ld a,(bc)
	inc c
	dec bc
	add hl,bc
	ld a,(bc)
	add hl,bc
	ex af,af'
	dec bc
	inc c
	dec bc
	ld a,(bc)
	dec bc
	ex af,af'
	add hl,bc
	inc c
	inc c
	ld a,(bc)
	ex af,af'
	inc bc
	inc b
	add hl,bc
	ld hl,(00b0bh)
	daa
	ld hl,(l4a29h)
	inc l
	ld a,(bc)
	dec bc
	dec bc
	ex af,af'
	ex af,af'
	inc c
	inc c
	dec bc
	dec bc
	ld a,(bc)
	ld b,007h
	add hl,bc
	inc c
	inc c
	inc bc
	nop
	ex af,af'
	dec bc
	inc c
	dec bc
	ex af,af'
	rlca
	ex af,af'
	rlca
	ld hl,(00b0ch)
	dec bc
	ld a,(bc)
	dec bc
	inc c
	dec bc
	ld hl,(00008h)
	inc c
	dec c
	inc c
	ld bc,00800h
	ld hl,(00b0ch)
	ld c,e
	rlca
	add hl,bc
	ld a,(bc)
	dec bc
	ex af,af'
	add hl,bc
	add hl,bc
	dec bc
	inc c
	inc c
	ld b,009h
	add hl,bc
	ex af,af'
	dec bc
	ld a,(bc)
	add hl,bc
	inc c
	inc c
	ex af,af'
	add hl,bc
	ld a,(bc)
	add hl,bc
	inc c
l4e74h:
	inc c
	rlca
	ld hl,(00a0bh)
sub_4e79h:
	ld hl,(00901h)
	ex af,af'
	ld a,(bc)
	dec bc
	dec bc
	dec bc
	add hl,bc
	ld a,(bc)
	ld a,(bc)
	ld hl,(00909h)
	inc c
	inc c
	inc c
	dec bc
	inc b
	rlca
	ld hl,(02a2ah)
	rlca
	dec bc
	inc c
	ex af,af'
	ld b,005h
	add hl,bc
	inc c
	dec hl
	dec hl
	dec bc
	ld a,(bc)
	ex af,af'
	ld hl,(02b2bh)
	dec bc
	ld a,(bc)
	add hl,bc
	ex af,af'
	dec bc
	dec bc
	ld a,(bc)
	add hl,bc
	ex af,af'
	ex af,af'
	ld a,(bc)
	ld c,c
	ld a,(bc)
	dec bc
	ex af,af'
	ld a,(bc)
	ld a,(bc)
	inc c
	ld a,(bc)
	ld b,009h
	nop
	dec bc
	dec c
	ld a,(bc)
	ex af,af'
	dec bc
	nop
	add hl,bc
	dec c
	dec bc
	ld a,(bc)
	inc c
	add hl,bc
	add hl,bc
	ld a,(bc)
	ld b,00ah
	inc c
	ld a,(bc)
	add hl,bc
	dec bc
l4ecah:
	dec bc
	dec bc
	ld a,(bc)
	ld c,c
	inc c
	dec bc
	ld hl,(00b0ah)
	dec bc
	inc c
	inc c
	ld a,(bc)
	inc bc
	nop
	inc b
	dec bc
	dec bc
	inc c
	inc c
	ld bc,00900h
	ld a,(bc)
	inc c
	dec bc
	add hl,bc
	nop
	nop
	ld a,(bc)
	inc c
	dec c
	inc c
	inc b
	nop
	nop
	ex af,af'
	dec c
	inc c
	ld a,(bc)
	ld a,(bc)
	rlca
	ld b,00bh
	inc c
	dec c
	ld a,(bc)
	dec b
	nop
	inc b
	dec hl
	inc c
	inc c
	ld a,(bc)
	add hl,bc
	ld a,(bc)
	dec bc
	ld c,e
	add hl,bc
	ex af,af'
	dec bc
	inc c
	ld hl,(0094bh)
	nop
	nop
	inc c
	inc c
	inc c
	dec bc
	ld b,000h
	nop
	nop
	ld a,(bc)
	dec c
	inc c
	inc c
	ld c,e
	inc b
	add hl,bc
	add hl,bc
	ld a,(bc)
	nop
	ex af,af'
	inc l
	dec bc
	inc c
	add hl,bc
	ex af,af'
	rlca
	ld bc,00c0ah
	inc c
	inc c
	ld b,000h
	add hl,bc
	ld a,(bc)
	ld a,(bc)
	inc c
	dec bc
	jr z,l4f3eh
	ex af,af'
	inc c
	inc c
	ld a,(bc)
	ld a,(bc)
	ex af,af'
	ex af,af'
	dec bc
	ld a,(bc)
	dec bc
l4f3eh:
	inc c
	inc c
	ld a,(bc)
	ex af,af'
	ld bc,l4b09h
	add hl,bc
	ld a,(bc)
	ld b,009h
	ld c,b
	ld l,d
	inc c
	dec bc
	ld l,h
	rlca
	add hl,bc
	ld c,e
	ld h,00bh
	inc b
	ld a,(bc)
	ld a,(bc)
	add hl,hl
	dec bc
	dec bc
	inc c
	inc c
	ld b,008h
	rlca
	ld c,b
	inc c
	dec c
	ld bc,00906h
	dec bc
	dec c
	inc c
	ld h,000h
	nop
	inc c
	inc c
	add hl,bc
	add hl,bc
	ex af,af'
	ex af,af'
	inc l
	dec bc
	ld a,(bc)
	add hl,bc
	add hl,bc
	dec bc
	ld b,008h
	dec c
	inc c
	dec bc
	add hl,bc
	ld b,009h
	dec hl
	ex af,af'
	ex af,af'
	dec hl
	dec bc
	inc c
	ld (bc),a
	nop
	add hl,bc
	inc c
	inc c
	dec hl
	rlca
	rlca
	inc c
	inc c
	inc c
	ex af,af'
	nop
	ld bc,00903h
	inc c
	inc c
	dec bc
	ld a,(bc)
	ex af,af'
	ex af,af'
	add hl,bc
	dec bc
	dec bc
	dec bc
	inc c
	ld b,008h
	dec bc
	dec hl
	inc c
	inc c
	ld a,(bc)
	add hl,bc
	dec b
	rlca
	dec bc
	inc c
	inc c
	ld a,(bc)
	ex af,af'
	add hl,bc
	add hl,bc
	ld hl,(02a6bh)
	rlca
	inc c
	dec bc
	dec hl
	nop
	nop
	ld a,(bc)
	dec c
	dec c
	inc bc
	nop
	nop
	ld bc,00c2ch
	ld a,(bc)
	adc a,e
	nop
	ld a,(bc)
	ld a,(bc)
	dec bc
	rlca
	ld a,(bc)
	dec bc
	inc c
	nop
	add hl,bc
	ld a,(bc)
	ld a,(bc)
	inc c
	dec c
	ld b,000h
	add hl,bc
	ld a,(bc)
	dec bc
	inc c
	dec bc
	add hl,bc
	ld a,(bc)
	add hl,bc
	dec bc
	dec c
	ld a,(bc)
	nop
	dec b
	nop
	ld b,00dh
	dec c
	ld a,(bc)
	dec bc
	ld b,000h
	add hl,bc
	dec bc
	dec bc
	inc c
	ld a,(bc)
	ex af,af'
	add hl,bc
	dec hl
	dec bc
	inc c
	inc b
	add hl,bc
	inc c
	ld a,(bc)
	rlca
	ex af,af'
	add hl,bc
	inc c
	dec c
	dec bc
	nop
	ld (bc),a
	inc b
	ex af,af'
	inc c
	dec bc
	ld l,d
	ld c,e
	ld hl,(00a09h)
	ld a,(bc)
	inc c
	dec hl
	rlca
	ld a,(bc)
	ld a,(bc)
	dec bc
	ld a,(bc)
	ld b,009h
	add hl,bc
	ld a,(bc)
	dec c
	inc c
	nop
	nop
	rlca
	ld b,00bh
	dec c
	ld a,(bc)
	add hl,bc
	dec bc
	dec b
	inc c
	dec c
	rlca
	inc b
	ld a,(bc)
	ld b,00ah
	inc l
	add hl,hl
	dec bc
	add hl,bc
	ld a,(bc)
	dec h
	dec bc
	inc l
	ld b,00bh
	ld a,(bc)
	dec bc
	nop
	ld b,00ch
	add hl,bc
	inc b
	dec bc
	dec bc
	dec bc
	dec c
	ld a,(bc)
	inc b
	nop
	nop
	rlca
	inc c
	dec c
	inc c
	dec bc
	add hl,bc
	nop
	dec b
	dec bc
	dec bc
	dec bc
	ld a,(bc)
	ex af,af'
	ld a,(bc)
	dec bc
	inc c
	dec bc
	ld hl,(00603h)
	ld a,(bc)
	dec hl
	dec bc
	dec bc
	ex af,af'
	rlca
	ld a,(bc)
	add hl,bc
	dec bc
	inc c
	dec bc
	ld hl,(00909h)
	dec bc
	dec bc
	dec bc
	ld a,(bc)
	rlca
	ex af,af'
	dec bc
	dec bc
	inc c
	ld hl,(00904h)
	add hl,bc
	inc c
	inc c
	ld b,009h
	add hl,bc
	rlca
	dec bc
	inc c
	ld a,(bc)
	inc c
	ld a,(bc)
	ld b,04bh
	ld c,e
	rlca
	ld (bc),a
	add hl,bc
	inc c
	ld hl,(02b06h)
	ld bc,0094bh
	inc c
	nop
	ld a,(bc)
	ld a,(bc)
	inc c
	inc c
	rlca
	add hl,bc
	ex af,af'
	inc b
	inc c
	dec c
	dec bc
	add hl,bc
	ex af,af'
	ld bc,00c07h
	inc c
	dec bc
	dec bc
	ex af,af'
	ld (bc),a
	add hl,bc
	dec hl
	dec bc
	dec hl
	ld a,(bc)
	ld a,(bc)
	add hl,bc
	rlca
	rlca
	inc c
	dec c
	ld a,(bc)
	ex af,af'
	ex af,af'
	ex af,af'
	dec bc
	inc c
	dec bc
	ld a,(bc)
	add hl,bc
	ld bc,00b08h
	dec bc
	inc c
	inc c
	ex af,af'
	nop
	ex af,af'
	add hl,bc
	dec bc
	inc c
	ld a,(bc)
	ld hl,(0290bh)
	inc c
	add hl,bc
	dec hl
	ex af,af'
	ld a,(bc)
	ld a,(bc)
	inc c
	inc c
	ex af,af'
	inc b
	add hl,bc
	ld a,(bc)
	dec bc
	dec c
	dec bc
	ex af,af'
	add hl,bc
	ex af,af'
	rlca
	dec hl
	inc c
	inc c
	ld b,005h
	ld a,(bc)
	dec bc
	dec bc
	dec bc
	ld a,(bc)
	rlca
	ld a,(bc)
	dec bc
	dec bc
	dec bc
	ld hl,(00908h)
	ld hl,(00b2bh)
	inc c
	dec bc
	add hl,bc
	ld a,(bc)
	nop
	inc bc
	dec bc
	ld a,(bc)
	dec hl
	inc c
	dec bc
	ld a,(bc)
	ld b,00ah
	dec bc
	add hl,bc
	ex af,af'
	add hl,bc
	ld a,(bc)
	inc c
	inc c
	dec bc
	ld a,(bc)
	ex af,af'
	rlca
	add hl,bc
	dec hl
	inc c
	dec bc
	dec bc
	jr z,l5112h
	rlca
	dec bc
	inc l
	ld hl,(00b2ah)
	ld (bc),a
	nop
l5112h:
	add hl,bc
	dec bc
	inc c
	dec c
	ld a,(bc)
	ex af,af'
	ld a,(bc)
	add hl,hl
	dec bc
	inc c
	rlca
	ld a,(bc)
	ld c,d
	dec bc
	inc c
	ex af,af'
	add hl,bc
l5123h:
	ld a,(bc)
	dec bc
	ld c,e
	add hl,bc
l5127h:
	ex af,af'
	ld a,(bc)
	dec bc
	inc bc
	ld a,(bc)
	inc c
	dec bc
	inc c
	dec bc
	ld (bc),a
	nop
	add hl,bc
	ld hl,(00d0ch)
	rlca
	ex af,af'
sub_5138h:
	ld (bc),a
	ld a,(bc)
	inc c
	add hl,bc
	dec b
l513dh:
	dec bc
	dec bc
	dec bc
	inc c
	ld b,000h
	dec hl
	add hl,bc
	ld a,(bc)
	ex af,af'
	dec hl
	dec c
	dec bc
	dec bc
	rlca
	ld bc,0090ah
	add hl,bc
	inc l
	dec bc
	dec bc
	add hl,hl
	rlca
	ld a,(bc)
	add hl,hl
	inc c
	dec bc
	dec hl
	ld a,(bc)
	ld a,(bc)
	add hl,bc
	ld b,00ah
	dec hl
	dec bc
	inc c
	add hl,bc
	ld hl,(00729h)
	ex af,af'
	dec bc
	dec hl
	ld a,(bc)
	inc c
	ld b,007h
	rlca
	add hl,bc
	inc c
	inc c
	dec hl
	ld a,(bc)
	add hl,hl
	dec bc
	add hl,bc
	ex af,af'
	ld hl,(00b0ch)
	dec bc
	rlca
	add hl,hl
	inc c
	ld a,(bc)
	ld a,(bc)
	dec b
	ld a,(bc)
	inc c
	dec bc
	dec bc
	dec bc
	dec b
	rlca
	ld a,(bc)
	ld a,(bc)
	dec bc
	inc c
	add hl,bc
	ld a,(bc)
	adc a,e
	ld b,04bh
	dec b
	ld b,009h
	inc c
	inc bc
	ld a,(bc)
	add hl,bc
	ex af,af'
	inc c
	dec bc
	dec b
	dec bc
	ld a,(bc)
	ex af,af'
	inc c
	dec bc
	rlca
	ld l,e
	ld a,(bc)
	ld b,02bh
	jr z,l51d2h
	daa
	call z,00608h
	add hl,bc
	rlca
	ld a,(bc)
	ex af,af'
	add hl,bc
	dec b
	ld l,d
	add hl,bc
	dec b
	dec hl
	rlca
	add hl,bc
	inc c
	dec bc
	jr z,l51c7h
	rlca
	inc c
	ld a,(bc)
	dec b
	dec bc
	add hl,bc
	add hl,hl
	inc c
	dec bc
	dec bc
	add hl,hl
l51c7h:
	rlca
	ld c,h
	ex af,af'
	ld a,(bc)
	add hl,hl
	add hl,bc
	dec bc
	ld b,008h
	inc l
	ld a,(bc)
l51d2h:
	dec bc
	ld b,007h
	dec bc
	rlca
	dec bc
	adc a,h
	ld b,08ah
	nop
	inc bc
	ld b,025h
	dec c
	add hl,hl
	inc l
	ld (bc),a
	ld b,l
	ld a,(bc)
	dec c
	dec b
	inc c
	ld a,(bc)
	defb 0edh ;next byte illegal after ed
	nop
	ld (bc),a
	dec b
	dec b
	inc hl
	ex af,af'
	ld (bc),a
	ld bc,00807h
	inc b
	inc bc
	ld bc,00706h
	defb 0edh ;next byte illegal after ed
	rlca
	nop
	nop
	inc bc
	dec b
	inc b
	daa
	rlca
	ld bc,00504h
	daa
	rlca
	nop
	defb 0edh ;next byte illegal after ed
	ld h,005h
	nop
	rlca
	ld b,009h
	nop
	inc bc
	ld bc,00308h
l5214h:
	rlca
	ld (bc),a
	inc b
	nop
	defb 0edh ;next byte illegal after ed
	ld b,026h
	ex af,af'
	rlca
	ex af,af'
	inc bc
	nop
	nop
	daa
	rlca
	inc bc
	nop
	nop
	daa
	defb 0edh ;next byte illegal after ed
	daa
	ex af,af'
	inc b
	inc b
	ld (bc),a
	inc bc
	inc b
	rlca
	ld b,005h
	dec b
	daa
	ld b,0edh
	ex af,af'
	dec h
	inc b
	ex af,af'
	inc bc
	ld b,000h
	inc b
	inc b
	ex af,af'
	dec b
	rlca
	rlca
	ex af,af'
	ld b,0edh
	rlca
	dec h
	ld b,007h
	rlca
	ld b,001h
	ld bc,00704h
	rlca
	ex af,af'
	dec b
	daa
	inc b
	defb 0edh ;next byte illegal after ed
	rlca
	add hl,bc
	inc b
	nop
	nop
	inc bc
	rlca
	dec b
	ex af,af'
	ld b,006h
	nop
	nop
	inc b
	ex af,af'
	defb 0edh ;next byte illegal after ed
	ex af,af'
	rlca
	inc hl
	inc bc
	jr z,l5273h
	ld b,h
	ld b,027h
	ld b,005h
	defb 0edh ;next byte illegal after ed
	inc b
l5273h:
	ld h,(hl)
	dec b
	ld b,025h
	rlca
	rlca
	ex af,af'
	ld b,007h
	inc b
	ld b,0edh
	dec b
	rlca
	ld b,006h
	dec b
	dec b
	ld b,024h
	dec b
	rlca
	dec b
	dec b
	inc b
	daa
	dec b
	defb 0edh ;next byte illegal after ed
	inc b
	ld b,005h
	daa
	ld b,0a5h
	ex af,af'
	ld b,027h
	defb 0edh ;next byte illegal after ed
	ld b,007h
	inc b
	inc bc
	dec b
	dec b
	ld b,h
	ld b,002h
	ld b,006h
	inc b
	dec b
	defb 0edh ;next byte illegal after ed
	ld h,047h
	inc b
	ld b,008h
	inc b
	rlca
	inc bc
	ex af,af'
	dec b
	ld h,a
	nop
	defb 0edh ;next byte illegal after ed
	inc b
	inc hl
	ld h,(hl)
	dec b
	inc bc
	dec b
l52bah:
	inc b
	dec b
	nop
	ld b,0edh
	dec b
	rlca
	inc hl
	ld b,007h
	ld (bc),a
	ex af,af'
	dec h
	ld h,a
	inc bc
	rlca
	defb 0edh ;next byte illegal after ed
	dec b
	ld h,003h
	ld b,007h
	dec b
	dec h
	inc b
	ld (bc),a
	ld b,(hl)
	inc bc
	inc b
	defb 0edh ;next byte illegal after ed
	ld bc,00403h
	ld b,005h
	dec b
	inc b
	ld (bc),a
	inc bc
	inc b
	dec b
	dec b
	ld b,004h
	dec b
	inc bc
	defb 0edh ;next byte illegal after ed
	ld b,0a5h
	daa
	ld b,0e7h
	inc b
	dec b
sub_52f0h:
	defb 0edh ;next byte illegal after ed
	inc b
	inc hl
	ld (bc),a
	rlca
	ld bc,00046h
	inc bc
	ld bc,085edh
	ld b,d
	inc hl
	ld h,(hl)
	inc b
	ld (bc),a
	inc bc
	defb 0edh ;next byte illegal after ed
	ld (bc),a
	daa
	dec b
	ld bc,00306h
	rlca
	ld (bc),a
	ex af,af'
	inc bc
	ld b,a
	ld (bc),a
	dec b
	defb 0edh ;next byte illegal after ed
	add a,(hl)
	ld h,004h
	ld b,005h
	dec b
	inc bc
	ld b,004h
	ld b,l
	defb 0edh ;next byte illegal after ed
	inc bc
	inc b
	dec b
	inc bc
	ld b,h
	inc h
	dec h
	inc bc
	ld bc,0ed26h
	ld (bc),a
	inc bc
	dec b
	nop
	ld h,(hl)
	ld (bc),a
	inc h
	inc bc
	rlca
	dec b
	ld b,0edh
	inc b
	ld b,a
	inc bc
	dec h
	ld b,004h
	and a
	dec b
l533bh:
	inc bc
	inc b
	ld (00226h),bc
	ld b,h
	dec h
	inc b
	dec b
	ld b,e
	defb 0edh ;next byte illegal after ed
	inc b
	push hl
	and d
	defb 0edh ;next byte illegal after ed
	inc hl
	dec h
	ld (bc),a
	ld h,004h
	ld bc,020e7h
	ld hl,002edh
	inc bc
	ld h,h
	rst 20h
	inc bc
	defb 0edh ;next byte illegal after ed
	add a,h
	rst 20h
	dec h
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	inc hl
	ld (bc),a
	ld h,c
	rst 20h
	nop
	defb 0edh ;next byte illegal after ed
	ld bc,0e7e0h
	defb 0edh ;next byte illegal after ed
	ret nz
	rst 20h
	defb 0edh ;next byte illegal after ed
	ld hl,00203h
	inc bc
	rst 20h
	ld (bc),a
	ld b,h
	defb 0edh ;next byte illegal after ed
	dec b
	inc b
	add a,l
	rst 20h
	defb 0edh ;next byte illegal after ed
	ld b,005h
	ld b,065h
	rst 20h
	ld b,0edh
	push hl
	rst 20h
	defb 0edh ;next byte illegal after ed
	dec b
	inc b
	dec b
	ld b,h
	rst 20h
	ld (bc),a
	inc hl
	defb 0edh ;next byte illegal after ed
	ld (00201h),hl
	ld h,a
	ld hl,0ed02h
	ld bc,004e6h
	inc bc
	inc b
	inc bc
	ld h,h
	defb 0edh ;next byte illegal after ed
	add a,003h
	inc h
	dec b
	inc h
	inc bc
	defb 0edh ;next byte illegal after ed
	rst 20h
	and c
	ld h,d
	defb 0edh ;next byte illegal after ed
	rst 20h
	ld b,e
	add a,h
	defb 0edh ;next byte illegal after ed
	rst 20h
	dec b
	inc b
	dec h
	inc b
	dec b
	defb 0edh ;next byte illegal after ed
	daa
	inc b
	ld h,(hl)
	ld b,007h
	ld b,007h
	dec b
	ld b,006h
	rlca
	dec b
	defb 0edh ;next byte illegal after ed
	ld b,006h
	ld h,a
	inc b
	ld b,004h
	ld h,006h
	rlca
	dec b
	ld b,(hl)
	rlca
	defb 0edh ;next byte illegal after ed
	ld b,027h
l53cdh:
	inc b
	ld b,(hl)
	ld b,007h
	dec b
	rlca
	inc b
	dec b
	rlca
	defb 0edh ;next byte illegal after ed
	ld h,006h
	rlca
	ld (bc),a
	ld h,007h
	dec b
	rlca
	ld b,004h
	dec b
	rlca
	inc b
	ld b,0edh
	ld b,007h
	ld bc,00706h
	dec b
	inc b
	ld b,007h
	inc b
	dec b
	ld b,007h
	ld bc,00605h
	defb 0edh ;next byte illegal after ed
	rlca
	nop
	ld b,006h
	dec b
	ld bc,00507h
	inc b
	inc h
	rlca
	ld bc,02606h
	ld bc,006edh
	dec b
	ld (bc),a
	rlca
	inc bc
	inc bc
l540dh:
	ld b,006h
	ld bc,00605h
	inc bc
	inc bc
	rlca
	inc b
	defb 0edh ;next byte illegal after ed
	ld (bc),a
	ld b,026h
	nop
	ld h,000h
	ld b,l
	inc b
	ld b,002h
	rlca
	inc bc
l5423h:
	defb 0edh ;next byte illegal after ed
	inc b
	dec b
	rlca
	nop
	inc b
	rlca
	dec b
	inc bc
	ld b,026h
	ld bc,00406h
	inc h
	rlca
	defb 0edh ;next byte illegal after ed
	inc bc
	ld b,026h
	ld bc,00307h
	inc bc
	rlca
	inc b
	inc bc
	rlca
	dec b
	inc b
	ld b,0edh
	daa
	nop
	dec b
	dec b
	inc b
	ex af,af'
	nop
	ld h,006h
	inc bc
	rlca
	ld b,001h
	rlca
	defb 0edh ;next byte illegal after ed
	ld b,005h
	dec b
l5455h:
	daa
	ld bc,00507h
	dec b
	rlca
	daa
	ld bc,00426h
	defb 0edh ;next byte illegal after ed
	rlca
	inc b
	ld b,008h
	inc b
	ld h,007h
	ld (bc),a
	rlca
	rlca
	inc b
	ld b,007h
	dec b
	dec h
	defb 0edh ;next byte illegal after ed
	ex af,af'
	dec b
	rlca
	ld b,005h
	rlca
	ld b,004h
	ex af,af'
	ld b,005h
	rlca
	daa
	dec b
	defb 0edh ;next byte illegal after ed
	rlca
	dec b
	dec b
	ex af,af'
	inc b
	ld b,007h
	rlca
	dec b
	ld b,008h
	dec b
	ld b,007h
	rlca
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	ex af,af'
	ld h,006h
	ex af,af'
	inc bc
	ld h,007h
	inc b
	rlca
	rlca
	inc b
	ld b,007h
	dec b
	defb 0edh ;next byte illegal after ed
	ld b,027h
	inc b
	add hl,bc
	ex af,af'
	nop
	nop
	dec b
	inc bc
	inc b
	ex af,af'
	ld b,027h
	ex af,af'
	inc c
	rlca
	ld b,(hl)
	defb 0edh ;next byte illegal after ed
	add hl,bc
	rlca
	nop
	ld (bc),a
	rlca
	daa
	dec h
	inc b
	rlca
	dec b
	ld b,006h
	defb 0edh ;next byte illegal after ed
	rlca
	ld bc,00725h
	ld h,007h
	ld (bc),a
	rlca
	inc b
	dec h
	rlca
	inc hl
	rlca
	defb 0edh ;next byte illegal after ed
	dec b
	ld b,027h
	nop
	rlca
	dec b
sub_54d2h:
	inc bc
	rlca
	ld b,004h
	inc hl
	rlca
	ld b,0edh
	inc b
	rlca
	ld bc,00526h
	ld bc,00607h
	inc bc
	inc bc
	rlca
	ld b,004h
	ld (bc),a
	ld b,0edh
	rlca
	ld (bc),a
	ld (bc),a
	dec h
	rlca
l54efh:
	ld bc,00504h
	rlca
	ld bc,00401h
	rlca
	ld b,003h
	defb 0edh ;next byte illegal after ed
	ld bc,00604h
	dec b
	ld (bc),a
	nop
	dec b
	rlca
	ld b,004h
	nop
	inc bc
	dec b
	ld b,002h
	inc bc
	defb 0edh ;next byte illegal after ed
	nop
	ld b,006h
	dec b
	dec b
	inc h
	ld b,020h
	nop
	ld b,007h
	inc b
	dec b
	ld bc,002edh
	dec h
	dec h
	ld bc,02502h
	ld b,000h
	nop
	ld bc,00606h
	dec b
	defb 0edh ;next byte illegal after ed
	inc bc
	ld h,d
	inc b
	dec b
	ld b,005h
	ld bc,00406h
	dec b
	ld (0ed24h),hl
	dec b
	ld b,004h
	inc bc
	inc hl
	ld (bc),a
	dec h
	ld b,004h
	ld bc,00303h
	dec b
	defb 0edh ;next byte illegal after ed
	dec b
	rlca
	inc b
	dec b
	jr nz,l554ah
	dec b
l554ah:
	ld h,006h
	inc bc
	inc bc
	nop
	ld (bc),a
	ld bc,006edh
	ld b,007h
	ld bc,00206h
	dec h
	nop
	dec b
	ld h,026h
	jr nz,l555fh
l555fh:
	defb 0edh ;next byte illegal after ed
	inc b
	add hl,bc
	dec b
	ld b,004h
	jr nz,l5567h
l5567h:
	inc b
	rlca
	ld b,006h
	inc b
	dec h
	dec b
	defb 0edh ;next byte illegal after ed
	inc b
	inc bc
	inc bc
	inc b
	inc b
	daa
	rlca
	inc b
	inc hl
	nop
	ld bc,00606h
	defb 0edh ;next byte illegal after ed
	rlca
	dec h
	ld h,023h
	inc b
	ld b,005h
	dec b
	daa
	rlca
	dec b
	nop
	defb 0edh ;next byte illegal after ed
	nop
	dec b
	ld b,007h
	inc bc
	ex af,af'
sub_5590h:
	rlca
	rlca
	dec b
	inc bc
	inc b
	inc b
	nop
	nop
	inc bc
	rlca
	defb 0edh ;next byte illegal after ed
	ex af,af'
	ld b,006h
	dec b
	rlca
	inc h
	ld h,001h
	dec b
	dec b
	daa
	ld b,004h
	defb 0edh ;next byte illegal after ed
	ld h,000h
	ld bc,00527h
	rlca
	ex af,af'
	ld b,027h
	ld (00406h),hl
	defb 0edh ;next byte illegal after ed
	inc b
	ld h,026h
	ex af,af'
	rlca
	rlca
	ld b,024h
	inc bc
	dec b
	ld b,008h
	rlca
	defb 0edh ;next byte illegal after ed
	ld h,008h
	ld h,005h
	nop
	and a
	inc b
	ld b,047h
	defb 0edh ;next byte illegal after ed
	ld b,004h
	nop
	dec h
	ld b,005h
	daa
	ld b,005h
	ex af,af'
	rlca
	ld b,0edh
	nop
	inc b
	ld b,006h
	daa
	ex af,af'
	ld b,a
	ld b,005h
	ld b,002h
	nop
	inc bc
	defb 0edh ;next byte illegal after ed
	ld b,006h
	ex af,af'
	rlca
	rlca
	ex af,af'
	ex af,af'
	ld b,007h
	rlca
	inc bc
	ld bc,00305h
	ex af,af'
	rlca
	defb 0edh ;next byte illegal after ed
l55fah:
	ld bc,00606h
	dec b
	rlca
	daa
	ex af,af'
	ld h,000h
	daa
	ex af,af'
	dec b
	ld b,0edh
	daa
	inc b
	ld b,008h
	dec b
	nop
	nop
	inc b
	ex af,af'
	ld b,006h
	dec b
	inc b
l5615h:
	inc bc
l5616h:
	ex af,af'
	defb 0edh ;next byte illegal after ed
	ld b,027h
	ex af,af'
	ld b,028h
	inc b
	ld b,004h
	ld (bc),a
	jr nz,l5623h
l5623h:
	ex af,af'
	ex af,af'
	defb 0edh ;next byte illegal after ed
	daa
	ld bc,00102h
	rlca
	ld b,004h
	ex af,af'
	ld a,(bc)
	inc b
	nop
	ex af,af'
	ld a,(bc)
	ld b,a
	ld b,06ch
	add hl,bc
	ex af,af'
	ex af,af'
	ld a,(bc)
	rlca
	rlca
	dec bc
	add hl,bc
	add hl,bc
	call pe,00a2ah
	ld b,00bh
	add hl,hl
	ld a,(bc)
	dec bc
	ex af,af'
	ex af,af'
	dec b
	add hl,bc
	ex af,af'
	ld hl,(08c07h)
	inc b
	add hl,bc
	nop
	ld a,(bc)
	rlca
	ld l,e
	ld b,000h
	ld a,(bc)
	ex af,af'
	dec hl
	rlca
	ld c,h
	ex af,af'
	ld a,(bc)
	inc b
	add hl,hl
	dec b
	defb 0edh ;next byte illegal after ed
	ex af,af'
	daa
	ld h,004h
	ex af,af'
	ld b,002h
	nop
	inc b
	dec b
	dec b
	inc bc
	nop
	ld bc,006edh
	dec b
	inc b
	nop
	dec b
	dec b
	inc bc
	ld bc,00727h
	ex af,af'
	inc bc
	dec b
	inc b
	rlca
	defb 0edh ;next byte illegal after ed
	jr z,$+10
	ld b,000h
	nop
	ld b,007h
	rlca
	ex af,af'
	jr nz,l568ch
l568ch:
	ld b,023h
	ex af,af'
	adc a,l
	ld b,020h
	nop
	ld bc,00722h
	dec b
	xor h
	rlca
	add hl,hl
	ld c,b
	ex af,af'
	ld c,c
	rlca
	ld a,(bc)
	dec bc
	add hl,hl
	ld a,(bc)
	ld c,h
	ld b,04ah
	ld a,(bc)
	add hl,bc
	dec bc
	ex af,af'
	ld a,(bc)
	add hl,bc
	ld a,(bc)
	inc c
	ld a,(bc)
	ld b,02bh
	dec bc
	add hl,bc
	ld a,(bc)
	inc b
	inc c
	dec hl
	ld h,02bh
	ld a,(bc)
	rlca
	inc l
	add hl,bc
	nop
	ld a,(bc)
	dec b
	dec bc
	nop
	nop
	ld l,h
	ld a,(bc)
	rlca
	ld c,c
	ex af,af'
	rlca
	ld (bc),a
	dec bc
	ld a,(bc)
	ld c,c
	inc l
	dec bc
	ld a,(bc)
	dec hl
	ex af,af'
	ld b,00ah
	ld a,(bc)
	inc c
	dec bc
	add hl,hl
	ld c,e
	ld a,(bc)
	add hl,bc
	ex af,af'
	ld a,(bc)
	ld hl,(0092ch)
	ld a,(bc)
	ld b,009h
	add hl,bc
	ld a,(bc)
	inc c
	adc a,d
	add hl,bc
	adc a,e
	jr z,l56f0h
	add hl,bc
	add hl,bc
	inc b
	ld a,(bc)
	dec bc
	add hl,bc
l56f0h:
	dec hl
	ld l,d
	jr z,l571eh
	ld a,(bc)
	ex af,af'
	dec bc
l56f7h:
	inc c
	add hl,bc
	ld a,(bc)
	dec hl
	ld b,009h
	ld c,b
	dec bc
	inc c
	ld a,(bc)
	sra e
	ld a,(bc)
	rlca
	ld a,(bc)
	jr z,l5753h
	ld hl,(00a2ah)
	rlca
	inc l
	ld a,(bc)
	dec bc
	add hl,bc
	add hl,bc
	ld a,(bc)
	ld bc,0eb08h
	add hl,bc
	ld c,c
	ld a,(bc)
	add hl,bc
	rlca
	ld b,00ah
	ld a,(bc)
	add hl,hl
l571eh:
	add hl,hl
	ld hl,(l4b2ah)
	dec bc
	dec bc
	ld a,(bc)
	dec b
	ld a,(bc)
	dec bc
	rlca
	add hl,bc
	inc c
	add hl,bc
	ld hl,(0054bh)
	rlca
	add hl,bc
	ex af,af'
	dec bc
	inc l
	dec bc
	inc c
	add hl,bc
	add hl,bc
	dec bc
	ld a,(bc)
	ld a,(bc)
	inc c
	dec bc
	add hl,bc
	ld a,(bc)
	add hl,bc
	ld a,(bc)
	inc c
	ld a,(bc)
	rlca
	rlca
	nop
	add hl,bc
	dec hl
	dec bc
	inc c
	ld b,004h
	add hl,bc
	ex af,af'
	dec bc
	inc c
	dec bc
	ld a,(bc)
	ld a,(bc)
l5753h:
	dec b
	dec hl
	inc c
	dec bc
	ld a,(bc)
	add hl,bc
	ld a,(bc)
	dec hl
	dec bc
	dec bc
	ld a,(bc)
	ld b,008h
	dec hl
	ld a,(bc)
	ld hl,(02a0bh)
	ld a,(bc)
	add hl,bc
	dec hl
	ld a,(bc)
	dec hl
	dec bc
	add hl,bc
	dec b
	ld a,(bc)
	ld a,(bc)
	ld c,d
	dec bc
	dec bc
	add hl,bc
	add hl,bc
	dec hl
	dec bc
	add hl,bc
	ld a,(bc)
	ex af,af'
	ld a,(bc)
	dec hl
	add hl,bc
	dec bc
	daa
	ld a,(bc)
	add hl,bc
	inc c
	inc c
	add hl,bc
	dec hl
	ex af,af'
	nop
	dec bc
l5787h:
	add hl,bc
	inc c
	inc c
	nop
	dec bc
	dec bc
	rlca
	inc c
	inc c
	jr z,l579ch
	dec bc
	inc c
	inc c
	add hl,bc
	dec hl
	dec bc
	nop
	ld c,h
	ld a,(bc)
	inc c
l579ch:
	rlca
	dec hl
	ld (bc),a
	adc a,e
	ex af,af'
	inc c
	ld (bc),a
	dec bc
	add hl,bc
	inc c
	nop
	dec bc
	ex af,af'
	inc c
	inc c
	add hl,bc
	ld a,(bc)
	ld a,(bc)
	ex af,af'
	dec hl
	dec hl
	dec hl
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	add hl,bc
	dec bc
	dec bc
	ex af,af'
	add hl,bc
	ld a,(bc)
	ld a,(bc)
	dec bc
	inc c
	dec bc
	ex af,af'
	ex af,af'
	dec b
	ld hl,(02b0ch)
	dec bc
	rlca
	ld a,(bc)
	ld a,(bc)
	ld hl,(00b0bh)
	rlca
	add hl,bc
	dec hl
	dec hl
	dec bc
	ld hl,(00a08h)
	dec bc
	inc c
	add hl,bc
	ex af,af'
	dec bc
	ld a,(bc)
	inc c
	inc c
	add hl,bc
	add hl,bc
	add hl,hl
	rlca
l57e0h:
	dec hl
	ld (bc),a
	adc a,d
	rlca
	ld a,(bc)
	ld a,(bc)
	inc c
	add hl,hl
	dec bc
	ld a,(bc)
	dec bc
	inc c
	inc c
	inc c
l57eeh:
	dec bc
	dec bc
	add hl,bc
	ld a,(bc)
	inc c
	dec bc
	add hl,bc
	ld a,(bc)
	ex af,af'
	ld a,(bc)
	dec bc
	dec bc
	dec bc
	jr z,l57fdh
l57fdh:
	inc b
	ex af,af'
	ld c,c
	ld a,(bc)
	ld a,(bc)
	add hl,bc
	add hl,bc
	ld c,e
	dec bc
	dec bc
	ld a,(bc)
	add hl,bc
	dec bc
	inc c
	inc c
sub_580ch:
	ld c,d
	ld a,(bc)
	dec bc
	inc c
	inc c
	dec bc
	ld hl,(00a06h)
	ld hl,(00b0ch)
	dec hl
	rlca
	ld b,00ah
	dec bc
	inc c
	rlca
	ld a,(bc)
	dec bc
	add hl,bc
	dec hl
	ld l,h
	dec bc
	ex af,af'
	ld hl,(0292ah)
	dec bc
	add hl,hl
	inc c
	ld a,(bc)
	dec hl
	rlca
	ex af,af'
	add hl,bc
	ld c,d
	inc c
	ld a,(bc)
	dec bc
	ld b,02ch
	ex af,af'
	dec bc
	add hl,bc
	ld a,(bc)
	dec bc
	ex af,af'
	dec bc
	inc c
	add hl,bc
	ld a,(bc)
	ld a,(bc)
	jr z,l588fh
	dec bc
	ld a,(bc)
	add hl,bc
	dec hl
	rlca
	ld a,(bc)
	jr z,$+13
	inc c
	ld a,(bc)
	ld a,(bc)
	rlca
	ld c,e
	ld c,e
	jr z,l585dh
	inc c
	ld hl,(00a02h)
	rlca
	inc c
	inc c
	ld a,(bc)
	dec bc
l585dh:
	ld a,(bc)
	nop
	ld a,(bc)
	ld l,e
	ex af,af'
	dec bc
	dec b
	ld c,d
	ld c,b
	ld a,(bc)
	dec bc
	inc c
	add hl,bc
	add hl,bc
	add hl,bc
	daa
	ld a,(bc)
	ld a,(bc)
	dec hl
	dec hl
	jr z,l587ch
	add hl,bc
	inc b
	dec hl
	dec bc
	nop
	inc c
	add hl,bc
	inc c
	dec bc
l587ch:
	nop
sub_587dh:
	ex af,af'
	add hl,bc
	daa
	ld l,h
	inc c
	add hl,bc
sub_5883h:
	nop
	dec bc
	add hl,bc
	ld hl,(00b28h)
	inc c
	inc c
	rlca
	dec bc
	ld a,(bc)
	nop
l588fh:
	inc c
	inc c
	rlca
	ld c,e
	ld a,(bc)
	nop
	inc c
	ld a,(bc)
	dec hl
	add hl,bc
	add hl,bc
	rlca
	ld l,d
	inc c
	add hl,bc
	ld c,e
	jr z,l58a1h
l58a1h:
	ex af,af'
	inc l
	add hl,bc
	ld a,(bc)
	ex af,af'
	add hl,bc
	dec bc
l58a8h:
	dec b
l58a9h:
	ld a,(bc)
	call pe,00b08h
	ld bc,00609h
	dec bc
	dec b
	ld hl,(00900h)
	dec bc
	ex af,af'
	add hl,bc
	add hl,bc
	ld hl,(00b8ch)
	ld c,d
	add hl,bc
	rlca
	add hl,hl
	add hl,bc
	dec c
	ld a,(bc)
	daa
	inc l
	rlca
	add hl,bc
	dec bc
	dec c
	ld a,(bc)
	ld a,(bc)
	dec bc
	dec b
	add hl,bc
	ld l,h
	ex af,af'
	dec bc
	rlca
	ld hl,(00605h)
	rlca
	dec bc
	jr z,l58e4h
	adc a,h
l58dah:
	ld hl,(00007h)
	dec hl
	ld b,029h
	ld hl,(0cc0bh)
	ex af,af'
l58e4h:
	adc a,c
	add hl,bc
	jr z,l5911h
	ld hl,(00b0ah)
	rlca
	add hl,bc
	adc a,h
	ld a,(bc)
	ld a,(bc)
	ex af,af'
	add hl,hl
	add hl,bc
	inc b
	nop
	add hl,bc
	ld a,(bc)
	dec c
	ld a,(bc)
	ex af,af'
	call pe,00728h
	ex af,af'
	add hl,bc
	add hl,hl
	ld a,(bc)
	jr z,l590ah
	add hl,bc
	daa
	ld a,(bc)
	add hl,bc
	call pe,00a06h
l590ah:
	daa
	add hl,hl
	ld b,00ah
	ex af,af'
	rlca
	ld h,a
l5911h:
	add hl,bc
	rlca
	ld b,0ech
	ex af,af'
	ld bc,00906h
	daa
	inc b
	ld b,029h
	ld b,a
	ld a,(bc)
	rlca
	dec bc
	jr z,l592dh
	call pe,00729h
	ld b,008h
	rlca
	rlca
	ex af,af'
	add hl,bc
	inc b
l592dh:
	ld b,006h
	ld c,b
	dec b
	inc l
	inc bc
	rlca
	add hl,hl
	dec bc
	inc b
	inc c
	rlca
	ld a,(bc)
	dec hl
	inc bc
	add hl,bc
	add hl,bc
	dec bc
	inc c
	rlca
	add hl,bc
	dec bc
	inc b
	ld hl,(00a0ch)
	dec hl
	rlca
	rlca
	dec b
	add hl,bc
	inc c
	add hl,bc
	ld c,d
	dec bc
	dec b
	ld c,h
	ex af,af'
	nop
	add hl,bc
	jr z,l5962h
	dec c
	add hl,bc
	inc c
	nop
	ld hl,(0280dh)
	ld c,h
	adc a,e
	add hl,bc
	ex af,af'
l5962h:
	xor e
	rlca
	ld b,007h
	inc c
	ld b,00bh
	dec b
	ld a,(bc)
	ex af,af'
	ld c,h
	xor l
	ld c,e
	ld c,e
	ld hl,(00a29h)
	inc l
	add hl,bc
	ex af,af'
	rlca
	ld c,d
	nop
	nop
	dec b
	rlca
	ld h,048h
	ld c,c
	nop
	dec b
	ld a,(bc)
	ld c,e
	add hl,bc
	ld c,e
	jr z,$+12
	rlca
	ld a,(bc)
	add hl,bc
	add hl,bc
	adc a,e
	ld c,e
	ld a,(bc)
	add hl,bc
	ld hl,(02b2ah)
	call pe,0098bh
	ld a,(bc)
	ld c,c
	inc c
	dec bc
	ld c,b
	ld l,d
	dec hl
	rlca
	ld a,(bc)
	ld h,029h
	ld c,c
	ld bc,00347h
	ld hl,(00400h)
	ld h,02bh
	inc bc
	nop
	rlca
	call pe,00a27h
	add hl,hl
	inc b
	daa
	ld c,d
	ex af,af'
	rlca
	add hl,bc
	ld c,b
	ld a,(bc)
	xor h
	jr z,l59c2h
	ld b,006h
	rlca
	ld b,a
	ex af,af'
	ld c,c
	defb 0edh ;next byte illegal after ed
l59c2h:
	ld b,027h
	ld c,d
	inc bc
	jr nz,l59d3h
	inc c
	ld c,c
	ld c,l
	dec l
	inc c
	rlca
	ld c,h
	ld c,d
	inc b
	jr z,l59deh
l59d3h:
	ex af,af'
	jr nz,l59deh
	nop
	dec b
	ld bc,00801h
	ex af,af'
	ex af,af'
	add hl,bc
l59deh:
	rlca
	inc b
	ld b,020h
	nop
	dec b
	ld (bc),a
	ex af,af'
	add hl,bc
	add hl,bc
	ld hl,(04a0ah)
	add hl,bc
	add hl,bc
	dec b
	ex af,af'
	ld b,00bh
	ld a,(bc)
	ex af,af'
	inc l
	ld l,e
	add hl,bc
	ld c,b
	ld c,e
	call pe,0ec0ah
	add hl,hl
	ld a,(bc)
	dec bc
	inc l
	dec hl
	inc c
	inc c
	dec bc
	ld hl,(00a0bh)
	ld a,(bc)
	add hl,bc
	add hl,bc
	ex af,af'
	rlca
	ld b,060h
	ld h,b
	ld b,b
	ld bc,00303h
	ld b,005h
	dec b
	ex af,af'
	ex af,af'
	jr z,l5a23h
	add hl,bc
	dec bc
	jr z,l5a66h
	call pe,sub_4a46h
	dec b
	ld b,a
	dec hl
l5a23h:
	call pe,0094ch
	daa
	ld l,e
	ld b,004h
	ld bc,l4a00h
	ld bc,006cch
	rlca
	ld c,e
	ld b,007h
	ex af,af'
	inc c
	ld hl,(02d4dh)
	add hl,bc
	ld a,(bc)
	inc c
	inc c
	ex af,af'
	dec bc
	dec hl
	rlca
	ld hl,(00a08h)
	rlca
	add hl,bc
	rlca
	inc bc
	dec b
	inc h
	inc b
	ld bc,00207h
	daa
	add hl,hl
	dec b
	inc hl
	ld b,00ah
	ex af,af'
	dec bc
	ld b,a
	add hl,bc
	call pe,0222ah
	adc a,c
	ld bc,00220h
	ld hl,(0270ch)
	defb 0edh ;next byte illegal after ed
	dec bc
	jr z,l5a72h
l5a66h:
	call 00ca9h
	dec bc
	ex af,af'
	inc c
	ld a,(bc)
	rlca
	dec bc
	add hl,bc
	inc b
	ld a,(bc)
l5a72h:
	rlca
	dec b
	add hl,bc
	dec b
	ld bc,02128h
	nop
	inc bc
	add hl,bc
	ld b,026h
	ld a,(bc)
	ld h,a
	ex de,hl
	ex af,af'
	add hl,bc
	ld a,(bc)
	ex af,af'
	add hl,bc
	inc b
	jr z,l5a89h
l5a89h:
	ld bc,00209h
	ld c,d
	dec hl
	ld b,007h
	inc c
	ld c,b
	dec bc
	adc a,l
	inc c
	xor l
	add hl,hl
	ld hl,(00b0ch)
	add hl,hl
	add hl,hl
	inc c
	ex af,af'
	rrc b
	and h
	ld b,007h
	ld b,007h
	ex af,af'
	ld c,c
	ld (bc),a
	call z,00500h
	ld a,(bc)
	inc bc
	dec hl
	ld (bc),a
	ld b,00ch
	jp (hl)
	ld c,l
	ld c,l
	inc c
	inc c
	ld c,e
	dec hl
	ld a,(bc)
	ld a,(bc)
	rlca
	rlca
	daa
	jr nz,$+3
	ld b,009h
	ld b,(hl)
	ld l,b
	ld c,d
	ex af,af'
	dec bc
	ld c,c
	add hl,bc
	call pe,0090ah
	rlca
	ex af,af'
	inc b
	daa
	ld b,008h
	jr z,l5afch
	add hl,bc
	ld c,h
	ld a,(bc)
	ld a,(bc)
	dec bc
	ld l,e
	xor h
	xor l
	ld a,(bc)
	ex af,af'
	rlca
	dec bc
	ex af,af'
	inc c
	ld a,(bc)
	inc b
	dec bc
	ex af,af'
	jr nz,$+11
	ld h,068h
	inc bc
	rlca
	ld bc,00408h
	add hl,hl
	ld b,009h
	ex af,af'
	ld a,(bc)
	ld c,d
	add hl,hl
	ld c,e
	jr z,l5b01h
	adc a,d
	ex af,af'
	ld b,l
	rlca
l5afch:
	dec b
	nop
	ld b,001h
	rlca
l5b01h:
	dec bc
	nop
	add hl,bc
	inc c
	inc b
	dec bc
	xor l
	ex af,af'
	xor h
	ld a,(bc)
	ld l,e
	inc c
	ld a,(bc)
	dec bc
	dec bc
	add hl,bc
	ld a,(bc)
	ld a,(bc)
	xor b
	add hl,bc
	add hl,bc
	ex af,af'
	ex af,af'
	ld b,007h
	inc bc
	ex af,af'
	dec b
	add hl,hl
	ld b,009h
	ld l,b
	ld hl,(08baah)
	add hl,bc
	ld l,d
l5b26h:
	dec bc
	inc c
	inc c
	ld c,l
	ld c,l
	add hl,hl
	ld b,00ch
	ld c,h
	inc b
	ld c,e
	add hl,bc
	ld a,(bc)
	dec bc
	ex af,af'
	add hl,bc
	ex af,af'
	ld b,b
	jr nz,l5b5ah
	ld bc,00626h
	inc bc
	ld bc,00700h
	ld (bc),a
	inc bc
	add hl,bc
	inc b
	ld b,00bh
	ex af,af'
	add hl,bc
	call pe,0aa09h
	jr z,l5b57h
	ld a,(bc)
	adc a,e
	add hl,hl
	call pe,00b0ah
	adc a,h
	inc l
	ld l,e
l5b57h:
	dec bc
	inc c
	ld a,(bc)
l5b5ah:
	ld a,(bc)
	dec bc
	rlca
	rlca
	ld a,(bc)
	inc b
	dec b
	ex af,af'
	ld bc,00660h
	ld (bc),a
	ld bc,02020h
	ld bc,00505h
	ex af,af'
	ex af,af'
	ld b,00ah
	add hl,bc
	rlca
	dec hl
	ld a,(bc)
	ex af,af'
	ex de,hl
	rlca
	call pe,00948h
	ex af,af'
	add hl,hl
	dec bc
	ld hl,(0ac8ch)
	add hl,bc
	ld c,d
	dec bc
	add hl,bc
	ld a,(bc)
	dec bc
	ex af,af'
	add hl,hl
	ld a,(bc)
	rlca
	add hl,bc
	dec b
	ld c,b
	rlca
	ld h,b
	inc b
	ld b,029h
	rlca
	ex af,af'
	ld b,02ah
	add hl,bc
	rlca
	ld a,(bc)
	jr z,l5b26h
	dec hl
	daa
	ld c,h
	add hl,bc
	ld a,(bc)
	inc c
	ld l,l
	jp (hl)
	ld c,l
	inc c
	ld c,h
	ld c,e
	dec bc
	ld a,(bc)
	add hl,bc
	dec b
	inc bc
	nop
	nop
	nop
	inc bc
	inc bc
	ld h,048h
	inc b
	dec h
	dec b
	ld bc,00609h
	dec b
	dec bc
	adc a,c
	rlca
	call pe,00948h
	ld a,(bc)
	ld a,(bc)
	adc a,e
	add hl,bc
	ld hl,(00bech)
	call z,02b4ch
	ld hl,(00b0bh)
	ld a,(bc)
	ex af,af'
	add hl,bc
	ex af,af'
	ld b,007h
	ld b,005h
	dec b
	dec b
	inc bc
	ld b,b
	ld b,b
	jr nz,l5be0h
	ld b,007h
	ex af,af'
	ex af,af'
l5be0h:
	ex af,af'
	add hl,hl
	add hl,bc
	add hl,bc
	ld a,(bc)
	ld a,(bc)
	ld c,d
	dec bc
	ex de,hl
	call pe,00a09h
	dec hl
	ld c,d
	inc l
	xor h
	dec hl
	ld l,e
	ld hl,(00a09h)
	jr z,l5c02h
	add hl,bc
	ld a,(bc)
	rlca
	rlca
	add hl,bc
	dec b
	ld b,008h
	jr nz,l5c04h
	rlca
l5c02h:
	ld b,028h
l5c04h:
	dec b
	daa
	rlca
	add hl,hl
	ex af,af'
	ex af,af'
	add hl,bc
	add hl,bc
	ld l,d
	ld a,(bc)
	ld l,d
	ld l,e
	dec hl
	dec hl
	inc c
	inc c
	ld l,l
	ld a,(bc)
	ld c,l
	adc a,c
	inc c
	ld c,h
	ld c,e
	daa
	dec bc
	add hl,bc
	add hl,bc
	ld (bc),a
	ld (bc),a
	ld bc,02020h
	nop
	inc bc
	ld bc,00501h
	nop
	nop
	rlca
	ld bc,00901h
	ld b,005h
	dec bc
	ex af,af'
	ld b,a
	ld c,h
	add hl,bc
	ld c,d
	ld b,0edh
	daa
	ex de,hl
	jr z,l5c46h
	ld a,(bc)
	ld c,e
	adc a,l
	dec hl
	ld l,d
	ld a,(bc)
	add hl,hl
	inc c
	add hl,bc
l5c46h:
	dec bc
	rlca
	ld b,00ah
	inc b
	inc bc
	ex af,af'
	ld h,b
	ld h,b
	ld bc,00520h
	ld hl,00906h
	ex af,af'
	ld a,(bc)
	ld (bc),a
	add hl,bc
	dec bc
	ld b,00ah
	inc c
	jr z,l5c6ah
	defb 0edh ;next byte illegal after ed
	call pe,00a49h
	add hl,bc
	rlca
	ld bc,0402dh
	xor h
	inc c
l5c6ah:
	dec bc
	dec b
	ld hl,(00406h)
	add hl,bc
	ld h,00bh
	ex af,af'
	ld a,(bc)
	rlca
	dec b
	add hl,bc
	inc b
	ld hl,00528h
	ld b,002h
	add hl,bc
	ex af,af'
	dec h
	ld hl,(02a09h)
	ld (bc),a
	dec hl
	dec b
	adc a,e
	ld bc,004ach
	dec b
	rlca
	ld h,00ch
	ld l,l
	dec b
	ld l,l
	ld c,c
	inc c
	ld l,d
	ld c,h
	dec bc
	ld hl,(0090bh)
	ex af,af'
	add hl,bc
	inc bc
	ld h,b
	ld bc,02080h
	ld (bc),a
	ld (bc),a
	dec b
	dec b
	ex af,af'
	dec b
	rlca
	ld a,(bc)
	ex af,af'
	add hl,hl
	dec bc
	add hl,hl
	call pe,00aeah
	dec bc
	call pe,00aech
	dec bc
	ld a,(bc)
	ld c,h
	add hl,bc
	ex af,af'
	rlca
	dec bc
	ex af,af'
	ld a,(bc)
	rlca
	dec bc
	ex af,af'
	ld b,009h
	ld b,002h
	rlca
	ld h,b
	ld h,b
	ld h,b
	inc bc
	ld (bc),a
	ld b,008h
	dec b
	ex af,af'
	ld a,(bc)
	ld b,009h
	dec bc
	ex af,af'
	ld a,(bc)
	inc c
	add hl,bc
	dec bc
	call 0cc0ah
	dec hl
	ld hl,(00809h)
	inc l
	add hl,bc
	ld c,e
	jr z,l5cedh
	jp pe,00a27h
	ld l,c
	ld h,005h
	inc b
	rlca
	ld bc,02006h
l5cedh:
	dec h
	ld hl,(02605h)
	dec bc
	ld b,0ech
	dec b
	rlca
	daa
	ex af,af'
	add hl,bc
	ex af,af'
	adc a,d
	add hl,bc
	adc a,d
	inc l
	dec bc
	inc c
	ld l,l
	ld c,c
	ld c,l
	ld hl,(l4c0ch)
	dec bc
	add hl,bc
	ld hl,(00b28h)
	add hl,bc
	add hl,bc
	ld b,002h
	add a,b
	add a,b
	ld h,b
	ld b,005h
	dec b
	add hl,bc
	ex af,af'
	rlca
	dec bc
	add hl,bc
	ex af,af'
	call z,0290ah
	dec bc
	call pe,0eb0ah
	xor e
	xor h
	ld a,(bc)
	add hl,bc
	ld hl,(02928h)
	rlca
	dec bc
	ld b,007h
	ld a,(bc)
	ld bc,00803h
	add a,b
	ld h,b
	ld (bc),a
	ld b,b
	inc bc
	rlca
	inc b
	ex af,af'
	add hl,bc
	ld b,009h
	ld a,(bc)
	ex af,af'
	ld a,(bc)
	dec bc
	add hl,bc
	dec bc
	inc c
	ld a,(bc)
	inc c
	adc a,l
	ld l,c
	adc a,l
	ex af,af'
	ld c,h
	ld hl,(02b0ch)
	add hl,hl
	dec hl
	ld a,(bc)
	rlca
	add hl,bc
	ld a,(bc)
	ld b,007h
	jp (hl)
	inc b
	ld h,(hl)
	ld bc,00504h
	inc bc
	dec b
	ld bc,00026h
	ld h,e
	rlca
	ld a,(bc)
	ex af,af'
	dec bc
	add hl,bc
	call pe,0262ah
	dec hl
	ld b,a
	call z,00105h
	ld c,h
	nop
	ld b,009h
	ld c,l
	ex af,af'
	ld c,l
	add hl,bc
	ld hl,(00c2ch)
	ld c,c
	dec hl
	dec bc
	ld hl,(0080ah)
	add hl,bc
	ex af,af'
	inc bc
	ld (bc),a
	ld b,b
	ld h,b
	ld b,b
	inc bc
	ld bc,00308h
	nop
	ld a,(bc)
	ld b,004h
	dec bc
	add hl,bc
	rlca
	inc c
	ld hl,(0ed08h)
	add hl,hl
	ld l,e
	ld a,(bc)
	rrc d
	add hl,bc
	ex af,af'
	ld l,l
	daa
	ld b,08ah
	dec b
	ld c,h
	rlca
	ld b,025h
	dec bc
	add hl,bc
	ld a,(bc)
	ld (bc),a
	rlca
	ex af,af'
	ld h,b
	inc b
	dec b
	ld b,b
	ld b,b
	ld bc,00705h
	ld b,008h
	add hl,bc
	ex af,af'
	ld hl,(0290ah)
	dec bc
	dec bc
	inc c
	ld a,(bc)
	inc c
	adc a,l
	xor c
	xor l
	inc c
	ld c,e
	ld a,(bc)
	inc c
	add hl,bc
	dec hl
	daa
	ld a,(bc)
	ld a,(bc)
	add hl,bc
	ld b,009h
	rlca
	inc b
	jr z,$+8
	nop
	rlca
	inc bc
	adc a,c
	ex af,af'
	ld b,089h
	ld b,a
	ex af,af'
	ld hl,(l4a49h)
	dec bc
	call pe,0ebcah
	ex af,af'
	adc a,h
	ld b,02bh
	inc b
	rlca
	inc c
	xor c
	ld c,l
	ld c,l
	inc c
	inc c
	ld c,e
	dec hl
	jr z,l5dfch
	ld a,(bc)
	rlca
	ex af,af'
	ex af,af'
	ld h,b
	ld b,b
	ld b,b
	ld bc,00501h
l5dfch:
	rlca
	ld b,007h
	add hl,bc
	ex af,af'
	add hl,bc
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	dec hl
	dec bc
	ld c,e
	adc a,h
	xor h
	call pe,sub_6a0bh
	dec bc
	jp pe,00c29h
	adc a,e
	jr z,l5e3dh
	add hl,bc
	rlca
	ld a,(bc)
	rlca
	inc b
	add hl,bc
	inc hl
	nop
	ex af,af'
	inc bc
	rlca
	dec b
	dec b
	inc b
	ld b,006h
	jr nz,l5e2eh
	ex af,af'
	ld a,(bc)
	ld a,(bc)
	dec b
	dec bc
	dec hl
	ld b,04ch
l5e2eh:
	ld c,b
	inc c
	call 0896dh
	inc c
	dec hl
	jr z,$+14
	ld a,(bc)
	dec bc
	rlca
	add hl,bc
	ld a,(bc)
	inc bc
l5e3dh:
	rlca
	add hl,bc
	ld b,b
	inc b
	rlca
	jr nz,$+40
	inc bc
	dec b
	rlca
	ld b,008h
	ex af,af'
	ex af,af'
	add hl,hl
	add hl,bc
	add hl,hl
	ld c,d
	adc a,d
	ld a,(bc)
	dec hl
	ld l,e
	call z,00a8bh
	ld l,c
	ld hl,(008cbh)
	ld l,c
	rlca
	ld h,008h
	ld a,(bc)
	ld a,(bc)
	dec bc
	ld c,e
	inc c
	ld c,h
	ld c,l
	ld c,d
	dec bc
	inc c
	ld hl,(0292bh)
	add hl,bc
	ld a,(bc)
	ex af,af'
	rlca
	ex af,af'
	ld h,b
	ld b,b
	ld b,b
	dec b
	ld (00807h),hl
	add hl,bc
	ld a,(bc)
	inc bc
	ld a,(bc)
	dec bc
	rlca
	dec bc
	call pe,0ac08h
	ld a,(bc)
	adc a,e
	dec hl
	adc a,d
	ex de,hl
	ld l,d
	add hl,bc
	add hl,hl
	jr z,l5eb5h
	add hl,hl
	dec bc
	add hl,bc
	ld a,(bc)
	rlca
	rlca
	ex af,af'
	ld (bc),a
	inc bc
	ld h,(hl)
	nop
	ld bc,02321h
	jr nz,$+6
	ex af,af'
	ex af,af'
	ld a,(bc)
	ld b,00ah
	dec bc
	add hl,bc
	dec bc
	inc l
	ex af,af'
	inc l
	add hl,bc
	ld l,l
	ex af,af'
	ld l,l
	add hl,hl
	ld hl,(04c4ch)
	ex af,af'
	ld b,00bh
	ex af,af'
	dec bc
	ld a,(bc)
	rlca
l5eb5h:
	ld a,(bc)
	ex af,af'
	dec b
	add hl,bc
	dec b
	inc bc
	ex af,af'
	inc b
	ld bc,00127h
	jr nz,l5ec2h
l5ec2h:
	ex af,af'
	dec b
	inc bc
	add hl,bc
	ex af,af'
	ld b,00ah
	add hl,hl
	dec b
	ld l,e
	ld b,00ah
	dec b
	dec bc
	daa
	call pe,009ech
	adc a,d
	ex af,af'
	inc c
	daa
	inc c
	dec hl
	dec bc
	dec h
	ld a,(bc)
	ld a,(bc)
	ld l,c
	add hl,bc
	ld (bc),a
	ex af,af'
	dec b
	add hl,bc
	rlca
	ld a,(bc)
	jr z,l5ef2h
	dec hl
	dec hl
	ld a,(bc)
	inc c
	dec bc
	inc c
	ld c,l
	ld a,(bc)
	ld c,l
	ld l,c
l5ef2h:
	inc c
	inc c
	dec hl
	dec hl
	daa
	ld a,(bc)
	ld a,(bc)
	ex af,af'
	inc b
	dec b
	ld b,b
	ld b,b
	ld b,b
	rlca
	ld b,004h
	add hl,bc
	ex af,af'
	ld b,00ah
	add hl,bc
	ex af,af'
	dec bc
	ld a,(bc)
	ld hl,(0cb0ch)
	defb 0edh ;next byte illegal after ed
	ld l,e
	ld a,(bc)
	ex af,af'
	ld a,(bc)
	dec b
	add hl,hl
	ld bc,002edh
	ld hl,(00504h)
	add hl,bc
	ld (bc),a
	ex af,af'
	ld bc,00607h
	ex af,af'
	daa
	rlca
	inc c
	ld b,006h
	ld a,(bc)
	inc bc
	add a,b
	ex af,af'
	ld h,b
	rlca
	ex af,af'
	add hl,bc
	ld a,(bc)
	dec b
	ld b,00bh
	ex af,af'
	add hl,bc
	inc c
	xor c
	ld a,(bc)
	xor l
	dec bc
	inc c
	ld l,l
	ld hl,(00c4ch)
	add hl,bc
	dec hl
	dec h
	dec hl
	ld a,(bc)
	inc bc
	add hl,bc
	adc a,d
	dec b
	ex af,af'
	inc h
	rlca
	dec b
	ld (bc),a
	ld b,005h
	rlca
	ex de,hl
	inc b
	add hl,bc
	rlca
	ld hl,(l4928h)
	rlca
	ld h,04ah
	ex af,af'
	inc c
	add hl,hl
	call 02acbh
	ld c,e
	ld hl,(00a0ch)
	dec bc
	add hl,bc
	add hl,bc
	ld a,(bc)
	ex af,af'
	ex af,af'
	ld l,c
	rlca
	ld b,006h
	dec b
	dec b
	ld b,027h
	rlca
	ld hl,(02808h)
	add hl,bc
	dec hl
	ld a,(bc)
	add hl,bc
	dec bc
	inc c
	jr z,l5f89h
	ld l,l
	ld l,l
	add hl,hl
	ld hl,(00c2ch)
	add hl,hl
	dec bc
	dec bc
	ld a,(bc)
	ld a,(bc)
	ex af,af'
l5f89h:
	add hl,bc
	add hl,bc
	ld b,007h
	inc b
	ld h,b
	ld h,b
	ld b,b
	rlca
	rlca
	dec b
	add hl,bc
	add hl,bc
	ex af,af'
	ld a,(bc)
	ld a,(bc)
	add hl,bc
	dec hl
	dec bc
	xor d
	call pe,029ach
	ex de,hl
	ex af,af'
	ld l,h
	rlca
	add hl,hl
	adc a,d
	dec bc
	ld a,(bc)
	add hl,bc
	dec bc
	jr z,$+12
	add hl,bc
	add hl,bc
	inc b
	rlca
	dec b
	ld b,b
	ld b,b
	ld b,b
	ld bc,00503h
l5fb7h:
	ld b,007h
	ex af,af'
	ex af,af'
	add hl,bc
	ld a,(bc)
	add hl,bc
	dec bc
	dec bc
	ld hl,(00c2ch)
	adc a,l
	adc a,c
	adc a,l
	inc c
	ld hl,(00b0ch)
l5fcah:
	ld c,e
	ld a,(bc)
	add hl,bc
	add hl,bc
	rlca
	jr z,l5fd6h
	jp pe,l6743h
	ld (bc),a
	inc bc
l5fd6h:
	ex af,af'
	ld b,009h
	ex af,af'
	adc a,d
	rlca
	ld a,(bc)
	ld b,009h
	inc b
	ex af,af'
	inc bc
	add hl,bc
	ld h,00ah
	dec bc
	dec hl
	inc c
	jr z,l5fb7h
	adc a,h
	ld a,(bc)
	ld l,e
	dec hl
	ld a,(bc)
	inc c
	add hl,bc
	ld a,(bc)
	dec bc
	ex af,af'
	ex af,af'
	ld a,(bc)
	inc b
	ld b,009h
	jr nz,l5fffh
	jr z,l6002h
	inc bc
	rlca
l5fffh:
	add hl,bc
	dec b
	ex af,af'
l6002h:
	ld a,(bc)
	ld b,(hl)
	add hl,bc
	dec hl
	ld hl,(l458ch)
	dec bc
	inc c
	xor l
	ex af,af'
	ld a,(bc)
	ld c,l
	ret
	inc c
	inc c
	dec bc
	dec bc
	ld a,(bc)
	ld a,(bc)
	add hl,bc
	add hl,bc
	ex af,af'
	ex af,af'
	rlca
	inc b
	ld bc,l4060h
	ld b,b
	ld b,006h
	inc bc
	add hl,bc
	rlca
	ld b,00ah
	add hl,bc
	ex af,af'
	dec bc
	ld a,(bc)
	add hl,bc
	inc c
	sra b
	defb 0edh ;next byte illegal after ed
	add hl,bc
	ld a,(bc)
	dec hl
	xor d
	ld a,(bc)
	ld c,c
	ld c,l
	ld b,00ch
	ld b,a
	ld l,c
	dec bc
	ld hl,(00906h)
	inc b
	rlca
	dec b
	ld b,b
	jr nz,l6065h
	ld bc,00206h
	dec b
	ex af,af'
	inc bc
	rlca
	add hl,bc
	inc b
	add hl,bc
	ld a,(bc)
	rlca
	dec bc
	dec bc
	ex af,af'
	inc c
	ld c,h
	rlca
	call 00a09h
	ld l,l
	adc a,c
	inc l
	inc l
	daa
	dec hl
l6060h:
	dec bc
	ld b,00ah
	ld a,(bc)
	inc b
l6065h:
	add hl,bc
	jr z,l6088h
	ex af,af'
	ld b,(hl)
	daa
	ld (bc),a
	inc b
	jr z,l6074h
	inc b
	rlca
	daa
	add hl,hl
	ex af,af'
l6074h:
	add hl,bc
	ex af,af'
	jr z,l60a2h
	add hl,hl
	rlca
	ld c,e
	ld a,(bc)
	add hl,bc
	dec bc
	ld hl,(0cccch)
	dec bc
	ld l,h
	dec hl
	dec hl
	dec bc
	ld a,(bc)
	ld a,(bc)
l6088h:
	ld a,(bc)
	ex af,af'
	add hl,bc
	ex af,af'
	rlca
	rlca
	ld b,003h
	dec b
	dec b
	ld (bc),a
	inc b
	ld b,005h
	ld b,008h
	rlca
	ex af,af'
	add hl,bc
	add hl,bc
	add hl,hl
	ld a,(bc)
	ld c,d
	ex de,hl
	ld a,(bc)
	xor e
l60a2h:
	dec hl
	inc l
	adc a,l
	ld c,h
	dec hl
	ld c,d
	dec bc
	inc c
	ld hl,(0280bh)
	ld a,(bc)
	add hl,bc
	add hl,bc
	ex af,af'
	ld b,007h
	ld (bc),a
	ld h,b
	ld h,b
	ld b,b
	ld bc,00605h
	rlca
	rlca
	ex af,af'
	add hl,bc
	add hl,bc
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	dec hl
	dec bc
	ld c,e
	call z,sub_4cech
	dec bc
	ld c,d
	dec bc
	ld a,(bc)
	ld c,h
	add hl,bc
	add hl,bc
	ex af,af'
	jr z,l60f9h
	dec bc
	ld b,a
	ld a,(bc)
	ld b,(hl)
	add hl,bc
	ex af,af'
	ld b,007h
	dec b
	dec b
	dec b
	ld bc,00020h
	nop
	inc bc
	ld bc,00601h
	dec b
	ld b,008h
	rlca
l60e9h:
	ex af,af'
	ld a,(bc)
	ex af,af'
	ld a,(bc)
	dec bc
	add hl,hl
	dec bc
	inc c
	inc c
	call 0cd07h
	adc a,c
	ld b,a
	inc c
	inc c
l60f9h:
	dec bc
	dec bc
	ld a,(bc)
	inc bc
	ld a,(bc)
	ex af,af'
	inc b
	ex af,af'
	ld b,003h
l6103h:
	inc b
	ld b,b
	ld b,b
	ld b,b
	dec b
	ld bc,00804h
	dec b
	ld b,009h
	rlca
	ex af,af'
	ld a,(bc)
	jr z,l611ch
	dec hl
	jp z,0ec09h
	ex af,af'
	add hl,bc
	ld a,(bc)
	dec bc
	xor h
l611ch:
	ld c,e
	ld c,h
	ld hl,(0290bh)
	dec bc
	ld a,(bc)
	ld a,(bc)
	add hl,bc
	rlca
	add hl,bc
	rlca
l6128h:
	inc b
	ex af,af'
	dec b
	inc bc
	rlca
	inc bc
	ld bc,00006h
	dec b
	ex af,af'
	dec b
	jr z,$+11
	ld b,00ah
	ex af,af'
	add hl,hl
	dec bc
	daa
	ld c,h
	ld a,(bc)
	jr z,l616bh
	ld i,a
	call pe,00906h
	ld hl,(00c08h)
	ld (bc),a
	dec bc
	dec bc
	ld bc,00a0ah
	nop
	add hl,bc
	add hl,bc
	ld bc,00608h
	add a,b
	ld h,b
	ld b,b
	inc b
	inc b
	add hl,bc
	inc b
	ld b,00ah
	ld b,008h
	dec bc
	ex af,af'
	ld a,(bc)
	inc c
	ld l,c
	dec bc
	call 00acch
	dec hl
	add hl,bc
	ld l,h
l616bh:
	ld a,(bc)
	ld l,e
	add hl,hl
	jr z,$+13
	ld a,(bc)
	ld a,(bc)
	ld b,l
	add hl,bc
	ld c,c
	jr z,$+6
	rlca
	ex af,af'
	ld bc,00503h
	jr nz,l617eh
l617eh:
	inc bc
	ld b,007h
	inc b
	ex af,af'
	add hl,bc
	ld b,009h
	ld a,(bc)
	ld h,a
	ld a,(bc)
	dec bc
	dec bc
	inc c
	inc c
	call 089edh
	jr z,l619eh
	dec hl
	add hl,bc
	inc c
	ex af,af'
	dec bc
	ld a,(bc)
	rlca
	ld a,(bc)
	add hl,bc
	inc b
	add hl,hl
	rlca
l619eh:
	ld bc,l4005h
	ex af,af'
	inc bc
	rlca
	nop
	ld h,001h
	inc bc
	ld (bc),a
	ld b,008h
	dec b
	rlca
	add hl,bc
	rlca
	ex af,af'
	ld a,(bc)
	ex af,af'
	add hl,bc
	dec hl
	add hl,bc
	ld hl,(0ac2ah)
	ld l,e
	dec hl
	ld l,h
	xor h
	ld c,e
	dec bc
	ld c,d
	ld a,(bc)
	add hl,hl
	dec bc
	add hl,hl
	ld a,(bc)
	ex af,af'
	add hl,bc
	ld b,028h
	ex af,af'
	ld hl,02907h
	ld b,004h
	rlca
	ld b,00ah
	ex af,af'
	ld c,b
	dec bc
	add hl,bc
	inc c
	ex af,af'
	defb 0edh ;next byte illegal after ed
	ld b,009h
	inc bc
	adc a,d
	inc b
	rlca
	ld b,007h
	jr z,l61edh
	inc l
	ld l,l
	ld hl,(0094dh)
	ld hl,(00c0ch)
	dec bc
	add hl,bc
	dec bc
l61edh:
	ld a,(bc)
	ex af,af'
	ld a,(bc)
	ex af,af'
	ld b,008h
	ld b,004h
	inc bc
	ld h,b
	ld h,b
	ld b,b
	ld bc,00507h
	ex af,af'
	add hl,bc
	ex af,af'
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	dec hl
	dec bc
	dec hl
	call pe,sub_4cach
	ld l,e
	dec bc
	xor d
	adc a,h
	ld a,(bc)
	add hl,hl
	ex af,af'
	ld b,a
	dec bc
	add hl,bc
	ld a,(bc)
	ex af,af'
	add hl,bc
	inc b
	rlca
	ex af,af'
	ld h,b
	ld b,006h
	inc b
	inc hl
	ld bc,00605h
	inc b
	ex af,af'
	ex af,af'
	rlca
	ld a,(bc)
	ld a,(bc)
	ex af,af'
	dec bc
	dec bc
	add hl,bc
	inc l
	inc c
	ld hl,(0cd8dh)
	ld l,c
	inc c
	ld a,(bc)
	dec bc
	add hl,hl
	ld c,d
	inc c
	ex af,af'
	ex de,hl
	ld b,009h
	inc bc
	ld l,b
	ld (bc),a
	ld bc,00400h
	rlca
	inc bc
	dec b
	nop
	dec bc
	ld b,b
	inc hl
	ld c,d
	ld b,005h
	jr z,l6257h
	jr z,l625ah
	add hl,bc
	call 00a09h
	ld hl,(0ac0bh)
	ld c,e
	ld a,(bc)
l6257h:
	inc c
	add hl,bc
	dec bc
l625ah:
	ex af,af'
	dec bc
	ld a,(bc)
	ld b,00ah
	add hl,bc
	inc bc
	add hl,bc
	ex af,af'
	dec b
	ret z
	rlca
	ld b,026h
	ex af,af'
	add hl,bc
	dec b
	ld hl,(00302h)
	dec bc
	dec b
	inc l
	add hl,hl
	daa
	defb 0edh ;next byte illegal after ed
	ex af,af'
	jr z,l62c0h
	rlca
	ld b,068h
	inc b
	inc bc
	nop
	dec b
	call 00709h
	ld a,(bc)
	add hl,bc
	dec bc
	ld a,(bc)
	ld c,h
	ld l,e
	dec bc
	inc c
	ld a,(bc)
	ld a,(bc)
	dec bc
	ex af,af'
	ex af,af'
	add hl,bc
	ld b,005h
	rlca
	ld bc,00180h
	ld h,b
	jr nz,$+4
	ex af,af'
	ld b,006h
	ld a,(bc)
	ex af,af'
	add hl,bc
	dec bc
	add hl,bc
	ld hl,(02a0ch)
	outd
	dec hl
	ld a,(bc)
	jr z,l62d0h
	ld a,(bc)
	add hl,bc
	adc a,l
	ld b,048h
	dec b
	ld b,005h
	daa
	inc bc
	inc c
	dec h
	ld b,00bh
	inc hl
	ld a,(bc)
	ret nz
	ex af,af'
	ld b,b
	ld bc,00420h
	rlca
l62c0h:
	ex af,af'
	ld a,(bc)
	ld a,(bc)
	dec bc
	ld h,00bh
	inc c
	inc c
	adc a,l
	dec b
	adc a,l
	ld l,c
	ld c,h
	ld hl,(00b0ch)
l62d0h:
	add hl,bc
	ld a,(bc)
	dec hl
	ex af,af'
	add hl,hl
	ld b,0eah
	dec b
	jr z,l62deh
	ld h,007h
	ex af,af'
	ld c,b
l62deh:
	add hl,hl
	ex af,af'
	rlca
	ld b,009h
	dec b
	ld bc,02028h
	jr nz,l62f2h
	ld (bc),a
	dec b
	ld a,(bc)
	rlca
	ex af,af'
	dec bc
	add hl,bc
	ld a,(bc)
	inc c
l62f2h:
	ld a,(bc)
	dec bc
	xor l
	add hl,bc
	inc c
	ld a,(bc)
	adc a,l
	ld c,c
	daa
	inc c
	inc c
	dec bc
	add a,b
	dec bc
	ex af,af'
	add hl,bc
	ld b,006h
	nop
	nop
	dec b
	ld bc,00408h
	dec b
	ld a,(bc)
	rlca
	daa
	dec bc
	ex af,af'
	inc c
	ld b,004h
	defb 0edh ;next byte illegal after ed
	dec b
	ld h,003h
	ld b,007h
	rlca
	ld c,b
	dec b
	ld b,005h
	daa
	ld b,0edh
	daa
	jr z,$+10
	ld l,c
	daa
	ex af,af'
	rlca
	ld hl,(08d09h)
	ld hl,(l4c0bh)
	dec hl
	ld a,(bc)
	dec bc
	inc c
	add hl,bc
	ld a,(bc)
	ld a,(bc)
	ex af,af'
	ex af,af'
	ex af,af'
	dec b
	inc b
	inc bc
	ld h,b
	ld h,b
	ld h,b
	rlca
	inc bc
	rlca
	ld a,(bc)
	rlca
	add hl,bc
	dec bc
	add hl,bc
	ld a,(bc)
	adc a,h
	ld a,(bc)
	dec bc
	ex de,hl
	inc c
	defb 0edh ;next byte illegal after ed
	dec bc
	ld hl,(00a69h)
	add hl,bc
	ld c,l
	jr z,l635dh
	daa
	add hl,hl
	inc c
	dec bc
	ld b,007h
	ld a,(bc)
	ld (bc),a
l635dh:
	dec b
	add hl,bc
	ld h,b
	ld (bc),a
	ld b,040h
	inc b
	dec b
	ex af,af'
	ld (bc),a
	ld b,00ah
	ld b,009h
	dec bc
	ex af,af'
	ld a,(bc)
	inc c
	add hl,bc
	dec bc
	xor l
	ex af,af'
	inc c
	adc a,c
	adc a,l
	call pe,00c0ah
	add hl,bc
	dec bc
	ex af,af'
	ld a,(bc)
	rlca
	adc a,c
	ld h,004h
	nop
	dec hl
	ld b,028h
	dec b
	jp z,02724h
	ld (bc),a
	ld h,000h
	ld bc,02007h
	ex af,af'
	ld a,(bc)
	dec bc
	dec b
	dec bc
	inc c
	ld b,00ch
	xor l
	rlca
	xor l
	ld l,c
	rlca
	inc l
	ex af,af'
	inc c
	ld b,00bh
	dec bc
	dec b
	ld a,(bc)
	ld a,(bc)
	inc bc
	ex af,af'
	ex af,af'
	inc b
	ld b,004h
	ld bc,02002h
	dec b
	inc bc
	ex af,af'
	rlca
	inc b
	add hl,bc
	add hl,bc
	ld l,b
	ld a,(bc)
	ld hl,(0ebebh)
	rlca
	ld b,004h
	dec b
	ex af,af'
	add hl,hl
	xor e
	call pe,00928h
	ld c,b
	ld a,(bc)
	ld c,c
	ld (bc),a
	rlca
	call pe,00a06h
	ld c,b
	ld c,e
	ld a,(bc)
	ld c,h
	dec bc
	inc c
	dec bc
	dec bc
	dec bc
	ld a,(bc)
	add hl,bc
	add hl,bc
	rlca
	ld b,007h
	inc b
	nop
	nop
	ld h,b
	ld (bc),a
	ld bc,02040h
	ld bc,00607h
	add hl,bc
	ld a,(bc)
	jr z,l6435h
	dec hl
	add hl,hl
	ld l,h
	inc c
	ld a,(bc)
	call 00a0bh
	dec bc
	ex af,af'
	ld hl,(l4807h)
	xor e
	adc a,h
	ld b,002h
	dec b
	ld b,00ah
	inc bc
	dec bc
	rlca
	ld bc,0020ah
	jr nz,l642fh
	nop
	inc b
	ld (bc),a
	ex af,af'
	ld b,b
	ld bc,00407h
	ex af,af'
	ex af,af'
	ld a,(bc)
	rlca
	ld a,(bc)
	dec bc
	add hl,bc
	dec hl
	call z,sub_6c2ah
	dec bc
	call pe,02a0bh
	dec bc
	ld hl,(l69c9h)
	adc a,h
	ex af,af'
	ld b,(hl)
	ex af,af'
	dec bc
	rlca
	ld a,(bc)
	dec b
	dec b
	add hl,bc
	ld hl,02806h
	ex af,af'
l642fh:
	inc h
	add hl,hl
	add hl,bc
	ld a,(bc)
	dec b
	ld a,(bc)
l6435h:
	dec bc
	ld b,00bh
	inc c
	ex af,af'
	inc c
	adc a,l
	ld l,c
	adc a,l
	ex af,af'
	inc c
	add hl,bc
	inc c
	dec bc
	rlca
	dec bc
	ld a,(bc)
	ld b,00ah
	ld l,b
	inc b
	add hl,bc
	ld (bc),a
	ex af,af'
	dec b
	ld c,c
	nop
	add hl,hl
	inc h
	ld hl,(l460ah)
	ex de,hl
	ex de,hl
	rlca
	dec h
	inc b
	daa
	ld l,h
	dec b
	call pe,sub_6908h
	dec bc
	ld a,(bc)
	add hl,bc
	jr z,$+10
	rlca
	rlca
	inc c
	inc hl
	dec b
	dec hl
	ld bc,02300h
	ld a,(bc)
	dec b
	dec hl
	ex af,af'
	rlca
	add hl,bc
	add hl,bc
	inc l
	ld hl,(02b0ah)
	adc a,l
	add hl,bc
	ld hl,(00b6ch)
	ld a,(bc)
	inc c
	add hl,bc
	dec bc
	ld a,(bc)
	dec b
	ex af,af'
	ex af,af'
	add a,b
	inc bc
	ld h,b
	ld b,b
	ld bc,00606h
	ex af,af'
	add hl,bc
	ex af,af'
	add hl,bc
	dec bc
	add hl,hl
	ld c,b
	ld c,h
	ld a,(bc)
	ld c,e
	ld b,0edh
	rlca
	ex af,af'
	ld a,(bc)
	rlca
	add hl,hl
	dec b
	ex af,af'
	ld a,(bc)
	ld hl,(l492bh)
	ld l,l
	ld c,d
	jr z,l64b1h
	inc c
	ex af,af'
	dec b
	dec bc
	dec b
	ld h,b
	ld a,(bc)
	inc bc
	ld l,c
l64b1h:
	dec b
	inc h
	inc b
	ld b,006h
	ld a,(bc)
	ex af,af'
	ex af,af'
	dec bc
	ld a,(bc)
	add hl,bc
	call pe,0080bh
	call pe,00827h
	add hl,hl
	ex af,af'
	rlca
	call z,08c26h
	ld b,a
	ld b,02bh
	rlca
	dec bc
	ld b,b
	ld a,(bc)
	ld a,(bc)
	add hl,bc
	ex af,af'
	ld b,007h
	ld bc,00602h
	ld (bc),a
	ld bc,00608h
	inc b
	add hl,bc
	ex af,af'
	ex af,af'
	ld a,(bc)
	add hl,bc
	add hl,bc
	dec hl
	ld a,(bc)
	ld hl,(08c4bh)
	dec bc
	adc a,h
	xor h
	dec bc
	ld a,(bc)
	dec bc
	add hl,bc
	add hl,bc
	ld b,a
	ex de,hl
	rlca
	dec b
	ld b,006h
	rlca
	daa
	ld b,005h
	dec b
	ld bc,00000h
	inc b
	ex de,hl
	ld bc,00005h
	nop
	ld b,004h
	jr z,l650fh
	add hl,bc
	add hl,hl
	ld a,(bc)
	dec bc
	ld a,(bc)
	adc a,h
	ld l,e
	dec bc
l650fh:
	call pe,00b0ah
	ex af,af'
	ld a,(bc)
	dec b
	ex af,af'
	nop
	rlca
	ld (0ec25h),hl
	ld bc,00020h
	inc b
	ld bc,00505h
	ld b,027h
	add hl,bc
	ld a,(bc)
	add hl,bc
	dec bc
	call pe,0ec48h
	daa
	add hl,bc
	ld a,(bc)
	dec bc
	inc c
	ld a,(bc)
	inc c
	dec bc
	add hl,bc
	dec bc
	ld a,(bc)
	ex af,af'
	ld a,(bc)
	add hl,bc
	dec b
	ld c,c
	ex af,af'
	ld b,007h
	dec b
	inc b
	nop
	ld a,(bc)
	ld b,005h
	rlc a
	inc b
	add hl,bc
	rlca
	ld c,d
	ex af,af'
	add hl,bc
	ld a,(bc)
	dec bc
	ld c,e
l654fh:
	call z,02aech
	add hl,bc
	ld a,(bc)
	add hl,bc
	ld c,e
	ld a,(bc)
	ld c,c
	call pe,0082ah
	ex af,af'
	ld b,042h
	ld bc,02025h
	jr nz,l654fh
	ld bc,00601h
	inc b
	rlca
	rlca
	ex af,af'
	ld c,b
	add hl,bc
	ld hl,(0ec89h)
	ex de,hl
	jr z,l6579h
	ld b,04ch
	dec bc
	dec h
	ld a,(bc)
	ld c,c
	ex af,af'
l6579h:
	xor e
	rlca
	dec b
	ex af,af'
	ld bc,00006h
	dec b
	inc b
	daa
	ld (bc),a
	call pe,00826h
	add hl,bc
	rlca
	ld a,(bc)
	ld c,b
	ex de,hl
	ld c,c
	xor h
	ld a,(bc)
	adc a,e
	ld l,e
	dec bc
	ld hl,(00a0ah)
	add hl,bc
	add hl,bc
	add hl,bc
	rlca
	ex af,af'
	jr z,l65c2h
	ld b,005h
	add hl,bc
	daa
	inc b
	ld hl,(00926h)
	ld c,e
	ld a,(bc)
	rlca
	dec bc
	ex af,af'
	call pe,0ec27h
	dec b
	rlca
	ex af,af'
	rlca
	ld l,b
	ld l,h
	ld l,h
	daa
	dec bc
	ex af,af'
	ex de,hl
	ld hl,(00007h)
	add hl,bc
	inc hl
	ex af,af'
	ld b,004h
	inc b
	ld (bc),a
	daa
l65c2h:
	dec h
	call pe,00628h
	ex af,af'
	add hl,hl
	add hl,bc
	xor d
	ld l,d
	adc a,h
	dec bc
	ld c,h
	dec bc
	inc c
	dec bc
	dec bc
	ld a,(bc)
	dec bc
	ld a,(bc)
	rlca
	add hl,bc
	add hl,bc
	dec b
	ex af,af'
	ex af,af'
	ld (bc),a
	rlca
	rlca
	ld bc,00305h
	nop
	jr nz,l65eah
	dec b
	ex af,af'
	nop
	inc bc
	ld c,d
	daa
l65eah:
	ex af,af'
	ld b,028h
	daa
	dec bc
	inc c
	add hl,bc
	add hl,bc
	defb 0edh ;next byte illegal after ed
	ld a,(bc)
	ld hl,(l4a0bh)
	ex af,af'
	rlca
	dec b
	xor e
	jr z,l6606h
	ld l,l
	ld a,(bc)
	ld c,e
	ld a,(bc)
	inc c
	ld l,c
	ld a,(bc)
	dec bc
	add hl,bc
l6606h:
	ld c,d
	jr z,$+10
	ld b,008h
	ld b,002h
	rlca
	dec h
	inc bc
	ld b,005h
	rlca
	ld b,007h
	ex af,af'
	ex af,af'
	ex af,af'
	add hl,hl
	add hl,bc
	add hl,bc
	ld hl,(00a0ah)
	dec bc
	ld c,e
	add hl,hl
	call pe,0ca08h
	add hl,bc
	ld a,(bc)
	ex de,hl
	adc a,h
	add hl,bc
	rlca
	ld b,002h
	ld c,e
	dec bc
	inc bc
	ld a,(bc)
	inc b
	add hl,bc
	ld b,00ah
	ex af,af'
	dec b
	add hl,bc
	rlca
	inc b
	jr z,$+40
	inc bc
	nop
	add hl,bc
	add hl,bc
	inc bc
	ld l,d
	ld a,(bc)
	ld b,00bh
	rlca
	call pe,0eb26h
	dec b
	rlca
	ex af,af'
	add hl,bc
	ld a,(bc)
	ld c,e
	call pe,00acbh
	add hl,bc
	ex af,af'
	add hl,bc
	daa
	ld c,e
	ex af,af'
	ld a,(bc)
	ld b,009h
	ld bc,l6a08h
	ld (bc),a
l665eh:
	rlca
	inc b
	ld b,006h
	rlca
	jr z,l668dh
	ex de,hl
	ld c,c
	xor c
	ld a,(bc)
	dec bc
	call pe,sub_4b6ah
	ld a,(bc)
	add hl,hl
	xor c
	jr z,l665eh
	add hl,hl
	daa
	jr z,$+38
	rlca
	ld b,003h
	rlca
	call z,00826h
	add hl,bc
	ld h,a
	ld a,(bc)
	add hl,bc
	ld c,d
	ex af,af'
	xor l
	ld b,00bh
	rlca
	ld l,h
	ld a,(bc)
	dec hl
	ld hl,(00c0bh)
l668dh:
	ld a,(bc)
	dec bc
	ld l,b
	add hl,hl
	ld a,(bc)
	jr z,$+44
	rlca
	ld b,a
	ld c,e
	ld b,007h
	jr z,l66a1h
	call pe,00721h
	ex af,af'
	nop
	add hl,bc
l66a1h:
	ld b,02ah
	rlca
	add hl,bc
	jr z,l66afh
	ld c,c
	inc l
	add hl,bc
	ld a,(bc)
	xor l
	dec hl
	xor d
	ld c,h
l66afh:
	dec bc
	inc c
	ld a,(bc)
	ld l,c
	dec bc
	ex af,af'
	ld a,(bc)
	rlca
	add hl,bc
	ld b,008h
l66bah:
	daa
	jr z,l66c4h
	ld b,008h
	add hl,bc
	inc b
	add hl,bc
	ld a,(bc)
	dec b
l66c4h:
	ld a,(bc)
	ex de,hl
	ld b,0ebh
	dec h
	ex af,af'
	add hl,hl
	ex af,af'
	ld b,06bh
	rlca
	dec bc
	add hl,bc
	xor h
	dec bc
	adc a,h
	ld c,h
	dec bc
	dec hl
	ld a,(bc)
	dec bc
	add hl,hl
	ld a,(bc)
	jp z,00809h
	daa
	rlca
	ld b,(hl)
	ld b,005h
	ld h,005h
	ex de,hl
	inc bc
	rlca
	ld b,a
	ex af,af'
	adc a,c
	ld h,007h
	ld h,02ah
	dec bc
	call pe,00b05h
	rlca
	xor h
	add hl,bc
	ld c,d
	ld c,c
	dec bc
	call pe,0080ah
	ex af,af'
	ld b,007h
	inc bc
	dec b
	ld (bc),a
	ld b,025h
	jr z,l670ch
	add hl,hl
	ld c,h
	ld b,a
	ex af,af'
	add hl,bc
	dec bc
l670ch:
	jr z,l6756h
	ld a,(bc)
	add hl,bc
	ld c,c
	jr z,l671ah
	ld c,c
	add hl,bc
	ld a,(bc)
	ld a,(bc)
	dec hl
	ld l,e
	ld a,(bc)
l671ah:
	call pe,00809h
	dec b
	ld a,(bc)
	nop
	add hl,hl
	ld hl,00708h
	add hl,bc
	ld b,008h
	call pe,00927h
	ex af,af'
l672bh:
	ex af,af'
	ld c,c
	rlca
	jr z,l66bah
	rlca
	ld l,b
	call pe,00909h
	ex af,af'
	ex af,af'
	add hl,hl
	rlca
	ld b,008h
	ld l,b
	rlca
	call pe,00908h
	jp z,00807h
l6743h:
	add hl,bc
	adc a,d
	call pe,00809h
	add hl,bc
	dec b
	ex af,af'
	inc bc
	dec b
	ld b,b
	rlca
	dec b
	call pe,00306h
	inc bc
	ld b,027h
l6756h:
	jr z,l6760h
	add hl,hl
	rlca
	dec h
	ld hl,(004ech)
	ex de,hl
	rlca
l6760h:
	ex af,af'
	add hl,bc
	ld l,d
	call pe,04b28h
	ld b,008h
	ld a,(bc)
	rlca
	ex af,af'
	ld b,004h
	nop
	jr nz,$+3
	call pe,00504h
	rlca
	inc b
	add hl,bc
	ld b,00ah
	dec h
	ex de,hl
	daa
	ld h,0ech
	rlca
	jr z,l672bh
	rlca
	inc b
	ld (bc),a
	dec b
	call pe,02806h
	ld a,(bc)
	add hl,bc
	rlca
	ex af,af'
	inc b
	rlca
	ld bc,00506h
	ld hl,0ec03h
	nop
	dec b
	ld b,008h
	daa
	ld l,d
	ld c,b
	ex de,hl
	ld h,0ech
	nop
	ld (bc),a
	ld bc,00305h
	nop
	ld l,e
	ld h,0ech
	daa
	ld a,(bc)
	ld h,009h
	rlca
	inc bc
	dec h
	ld b,005h
	call pe,02704h
	dec b
	ld b,028h
	rlca
	ex af,af'
	add hl,bc
	rlca
	ld l,d
	ld c,c
	call pe,00948h
	jr z,l67c6h
	add hl,bc
	dec b
	ld a,(bc)
	ld b,06bh
	ex af,af'
l67c6h:
	call pe,02809h
	ld a,(bc)
	rlca
	add hl,bc
	dec b
	rlca
	inc bc
	inc b
	nop
	rlca
	inc bc
	add hl,bc
	call pe,00a06h
	dec b
	rlc (hl)
	daa
	inc bc
	nop
	dec b
	call pe,00a07h
	ex af,af'
	add hl,hl
	rlca
	ex af,af'
	ex af,af'
	add hl,bc
	ld b,048h
	daa
	ex af,af'
	call pe,sub_4949h
	ex af,af'
	ex af,af'
	add hl,hl
	dec h
	ld hl,(l4706h)
	call pe,008ebh
	ld b,007h
	ld (bc),a
	ld bc,0ec02h
	xor e
	ld b,005h
l6801h:
	rlca
	ld b,007h
	ld b,00ah
	daa
	add hl,bc
	call pe,00828h
	add hl,hl
	ld c,c
	rlca
	ld (bc),a
	ex af,af'
	ld bc,00227h
	jr nz,l6801h
	ex af,af'
	add hl,hl
	ld b,008h
	jr z,l6824h
	jp pe,00809h
	rlca
	call pe,02948h
sub_6822h:
	ld l,c
	ex af,af'
l6824h:
	ld b,a
	call pe,00608h
	rlca
	dec b
	ex af,af'
	inc b
	add hl,bc
	ld b,b
	ex af,af'
	dec b
	nop
	inc bc
	dec b
	call pe,02805h
	rlca
	jr z,$+11
	ld hl,(0eb69h)
	call pe,00728h
	jr z,l684ah
	ld hl,(00608h)
	ld l,c
	call pe,00627h
	nop
	ex af,af'
l684ah:
	ld (bc),a
	daa
	ld h,026h
	inc b
	call pe,06705h
	ex af,af'
	add hl,bc
	ld a,(bc)
	sra b
	add hl,hl
	call pe,00a48h
	add hl,bc
	add hl,bc
	jp pe,00708h
	ld b,0ech
	rlca
	inc b
l6864h:
	ld bc,00605h
	jp pe,02004h
	call pe,00605h
	inc h
	ld b,0eah
	ex af,af'
	rlca
	ld b,0ech
	inc b
	inc bc
	rlca
	jr z,$-116
	rlca
	inc bc
	inc b
	call pe,00706h
	add hl,hl
	ex af,af'
	ld b,04ah
	rlca
	ld b,001h
	add hl,bc
	ld b,008h
	call pe,00704h
	nop
	ld b,001h
	rlca
	rlca
	ld h,008h
	add hl,hl
	ex af,af'
	add hl,bc
	ex af,af'
	ex af,af'
	defb 0edh ;next byte illegal after ed
	dec h
	add hl,hl
	nop
	ld l,d
	inc b
	inc bc
	dec b
	ld b,009h
	inc b
	jr z,$-17
	inc hl
	rlca
	ld bc,00303h
	ld bc,00505h
	ld b,002h
	inc bc
	nop
	ld bc,0ed01h
	inc b
	inc b
	inc bc
	ld (bc),a
	jr nz,l68bdh
	ld b,001h
	ex af,af'
l68bdh:
	inc b
	add hl,hl
	ld b,007h
	ex af,af'
	defb 0edh ;next byte illegal after ed
	ex af,af'
	rlca
	xor c
	ld h,003h
	nop
	ld bc,00805h
	ld b,0edh
	rlca
	dec b
	dec b
	inc b
	ld b,(hl)
	dec b
	nop
	ld bc,00703h
	ex af,af'
	jr z,l6864h
	ld c,l
	add hl,bc
	jr z,$-82
	rlca
	rlca
	ld b,003h
	nop
	nop
	ld (bc),a
	ld b,004h
	daa
	ld bc,027edh
	ex af,af'
	add hl,bc
	ex af,af'
	ex af,af'
	rlca
	rlca
	ld b,006h
	ld bc,l6060h
	defb 0edh ;next byte illegal after ed
	dec b
	ld b,026h
	dec b
	ld b,007h
	ex af,af'
	ld l,b
	rlca
	dec b
	defb 0edh ;next byte illegal after ed
	ld b,007h
	rlca
	ld b,045h
sub_6908h:
	ld bc,02503h
	inc bc
	ld bc,0ed06h
	nop
	ld c,b
	inc b
	ld b,005h
	ld b,001h
	jr nz,l6918h
l6918h:
	ld hl,02001h
	defb 0edh ;next byte illegal after ed
	dec b
	rlca
	dec h
	ld l,c
	ld (bc),a
	inc b
	ld b,008h
	inc bc
	ld h,006h
	defb 0edh ;next byte illegal after ed
	rlca
	inc bc
	ld b,005h
	rlca
	ld b,006h
	inc b
	dec b
	rlca
	ld (bc),a
	inc b
	dec b
	inc hl
	ld b,06dh
	inc bc
	rlca
	ld bc,00206h
	rlca
	rlca
	call pe,00828h
	dec b
	rlca
	ld b,006h
	dec b
	ld bc,00508h
	add hl,hl
	rlca
	ld l,c
	ld l,d
	call pe,0c908h
	rlca
	ld b,020h
	call pe,02526h
	ld a,(bc)
	adc a,e
	ld b,024h
	dec b
	call pe,00a26h
	ld c,c
	ld (bc),a
l6961h:
	inc b
	ld b,02ah
	rlca
	ex af,af'
	ld l,e
	add hl,bc
	call pe,00608h
	dec b
	ld a,(bc)
	ld (bc),a
	add hl,hl
	inc h
	ex af,af'
	rlca
	add hl,hl
	jr z,l6961h
	adc a,d
	ld c,c
	jr z,l69a2h
	ld b,a
	ex af,af'
	call pe,00609h
	ex af,af'
	daa
	add hl,bc
	ex af,af'
	add hl,hl
	rlca
	ld h,00ah
	add hl,hl
	ex af,af'
	call pe,06809h
	ex af,af'
	ld c,c
	add hl,bc
l698eh:
	ex af,af'
	jp pe,00605h
	call pe,00407h
	rlca
	ld h,007h
	jp z,00709h
	call pe,00648h
	daa
	adc a,e
	jr z,l698eh
l69a2h:
	add hl,bc
	ex af,af'
	ld hl,(00607h)
	ex af,af'
	inc b
	ld b,a
	ld b,004h
	rlca
	call pe,00828h
	ld c,c
	ld c,c
	jr z,l69dch
	ld b,007h
	ld c,b
	call pe,02806h
	add hl,hl
	add hl,bc
	ld c,d
	ld c,b
	add hl,hl
	add hl,hl
	call pe,02a27h
	ex af,af'
	add hl,bc
	add hl,bc
	jr z,l69d0h
	rlca
l69c9h:
	add hl,bc
	ex af,af'
	ex af,af'
	call pe,00907h
	adc a,b
l69d0h:
	ld c,d
	add hl,bc
	rlca
	ld b,a
	inc bc
	ld b,0ech
	jr z,$+10
	add hl,bc
	add hl,hl
	ld a,(bc)
l69dch:
	ld l,e
	ex af,af'
	dec b
	inc b
	jr nz,$-18
	ld a,(bc)
	add hl,hl
	ld b,007h
	ex af,af'
	ld l,c
	add hl,hl
	ld c,d
	ld c,b
	call pe,00629h
	ex af,af'
	rlca
	daa
	dec h
	ld h,007h
	inc hl
	defb 0edh ;next byte illegal after ed
	ld (bc),a
	dec b
	rlca
	ld b,e
	jr z,l6a02h
	dec b
	inc bc
	inc bc
	ld (bc),a
	ld (bc),a
	nop
l6a02h:
	defb 0edh ;next byte illegal after ed
	dec b
	inc bc
	ld b,006h
	rlca
l6a08h:
	rlca
	ex af,af'
	ret z
sub_6a0bh:
	ld b,005h
	nop
	dec b
	defb 0edh ;next byte illegal after ed
	inc b
	rlca
	ld h,007h
	dec b
	ld (bc),a
	nop
	ld bc,00324h
	ld (bc),a
	dec b
	defb 0edh ;next byte illegal after ed
	ld b,007h
	rlca
	ld b,005h
	dec h
	inc b
	inc bc
	add a,b
	ld h,b
	defb 0edh ;next byte illegal after ed
	dec b
	inc b
	ld b,003h
l6a2ch:
	rlca
	ld b,006h
	add a,a
	rlca
	dec h
	defb 0edh ;next byte illegal after ed
	nop
	inc bc
	ld b,000h
	rlca
	ld (bc),a
	ld h,006h
	ld b,a
	rlca
	jr z,l6a2ch
	jr z,$+7
	ld b,004h
	rlca
	nop
	ld b,005h
	inc bc
	rlca
	ld bc,00028h
	ld bc,005edh
	dec b
	ld bc,00400h
	ld bc,00602h
	ld b,004h
	ex af,af'
	ld (00406h),hl
	nop
	defb 0edh ;next byte illegal after ed
	jr nz,l6a85h
	inc b
	ex af,af'
	ld b,027h
	daa
	ld (bc),a
	ld h,004h
	ld bc,000edh
	ld h,a
	inc b
	dec b
	rlca
	ex af,af'
	ld b,027h
	inc b
	rlca
	ld b,003h
	defb 0edh ;next byte illegal after ed
	inc bc
	rlca
	inc b
	ld b,003h
	add a,a
	dec h
	ld b,005h
	rlca
	ld b,0edh
	dec b
	rlca
l6a85h:
	rlca
	ld (bc),a
	ld b,026h
l6a89h:
	dec b
	inc b
	dec b
	ld b,a
	inc bc
	ld b,027h
	defb 0edh ;next byte illegal after ed
	inc bc
	inc b
	ld b,b
	ld (bc),a
	nop
	ld bc,00605h
	ld b,(hl)
	jr z,l6a89h
	ld b,027h
	ld bc,08800h
	dec b
	rlca
	ld b,002h
	inc bc
	ld b,0edh
	inc b
	daa
	ld (bc),a
	rlca
	ex af,af'
	ld h,049h
	ld (bc),a
	dec b
	ld h,000h
	defb 0edh ;next byte illegal after ed
	ld bc,00000h
	ld (00004h),hl
	rlca
	inc b
	ex af,af'
	ld h,007h
	ex af,af'
	rlca
	rlca
	defb 0edh ;next byte illegal after ed
	nop
	ld b,004h
	ld (bc),a
	ld bc,02200h
	dec b
	ld b,005h
	ld c,b
	ld h,0edh
	dec b
	daa
	inc b
	nop
	ld b,004h
	rlca
	dec h
	ex af,af'
	rlca
	inc bc
	inc bc
	dec b
	ld bc,020edh
	rlca
	ex af,af'
	inc b
	rlca
	ld bc,02004h
	ld (bc),a
	inc b
	dec b
	ld h,006h
	defb 0edh ;next byte illegal after ed
	inc b
	inc b
	inc hl
	ld bc,00700h
	inc bc
	jr z,l6afah
	dec b
	ld b,006h
	dec b
l6afah:
	dec b
	defb 0edh ;next byte illegal after ed
	ld h,(hl)
	inc b
	ld b,067h
	rlca
	inc bc
	inc b
	ld (bc),a
	inc bc
	ld b,0edh
	nop
l6b08h:
	ld (bc),a
	ld bc,00205h
	daa
	inc b
	nop
	ex af,af'
	ld b,02ah
	add hl,de
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
	ld a,(0e704h)
	rst 38h
	and 0dfh
	ld (0af04h),a
	inc bc
	di
	out (099h),a
	ld a,097h
	ei
	inc b
	nop
	rrca
	ld (05524h),a
	call 00414h
	ld d,l
	ld a,01fh
	ld (00413h),a
	ld bc,03200h
	ld c,e
	ld c,e
	ld a,005h
	call 0050fh
	jr nc,l6b8ch
	inc b
	inc b
	call 092a5h
	ld (bc),a
	dec h
	inc e
	ld l,e
	ld (bc),a
	ld b,b
	rst 28h
	ld c,0c7h
	ld d,a
	ld a,(l5616h)
	nop
	or a
	jp nz,l406ah
	xor a
	ld hl,0c156h
	nop
	cp (hl)
l6b6bh:
	jp z,l4055h
	ld (hl),a
	ld a,(04767h)
	jr l6bb1h
	jp z,00358h
	ld (hl),b
	ld b,b
	ld b,b
	inc bc
	ld c,l
	ld c,e
	ret
	call 000c3h
	dec b
	jp l57e0h
	call l4091h
	call sub_7b00h
	ld b,b
l6b8ch:
	jp l404ah
	nop
	rst 38h
	ld a,(l7900h)
l6b94h:
	ld b,b
	or a
	ret z
	call sub_5883h
	ld a,(l7a48h)
	jr nz,$+52
	inc bc
	ret nz
	ld a,021h
	inc bc
	ld (0c932h),a
	ld a,(03237h)
	add a,h
	sub l
	ld b,l
	inc bc
	sbc a,l
	ld b,b
	ld b,b
l6bb1h:
	ld (l4531h),a
	call sub_42f0h
	ld (000cdh),hl
	ld (bc),a
	xor d
	ld b,b
	jr l6bc7h
	cp 041h
	inc a
	and 081h
	and c
	dec b
	ret nz
l6bc7h:
	ld a,(009ffh)
	djnz l6b94h
	ld (0fe04h),a
	ld h,h
	jp z,00642h
	inc b
	adc a,h
	jp z,00412h
	djnz l6b6bh
	jp z,0042ah
	sub (hl)
	jp z,0840ch
	inc b
	sbc a,e
	jp z,00431h
	and b
	ld hl,01ecah
	inc b
	and h
	jp z,00438h
	inc (hl)
	xor d
	inc de
	xor h
	jp z,03f42h
	inc b
	or e
	jp z,00446h
	ld b,l
	cp c
	adc a,c
	inc b
	ld b,h
	sbc a,(hl)
	ld d,(hl)
	add a,h
	inc b
	jp nz,l5fcah
	inc b
	cp d
	and b
	ld (hl),h
	ld d,c
	sbc hl,bc
	ret
	ld hl,0e001h
	ld b,c
	jp 00103h
	ld hl,005efh
	ret nz
	or e
	ld b,c
	call 005c7h
	and h
	dec bc
	ld c,0d1h
	dec bc
	ld a,(de)
	jp nz,03e0bh
	nop
	cp d
sub_6c2ah:
	ld b,028h
	jp l4179h
	ld a,0bfh
	inc (hl)
	ld b,025h
	ld b,0c4h
	ld b,06ch
	ld (08106h),hl
	ld c,l
	dec e
	ld b,01ah
	pop de
	ld b,017h
	ld b,0cbh
	ld (bc),a
	ld b,02eh
	ld c,002h
	jp 00868h
	ld b,0d0h
	ld b,02bh
	ld c,004h
	ex af,af'
	and e
	sub 034h
	ld c,006h
	ex af,af'
	nop
	ld (l4199h),a
	ld a,b
	ld (0019bh),a
l6c61h:
	ld b,c
	ld a,c
	ld (l419fh),a
	ld hl,04e95h
	and (hl)
	ld (0108ah),a
	ld h,08ch
	inc c
	add a,(hl)
	inc c
	or b
	nop
	nop
	jp z,09a00h
	add a,d
	ex af,af'
	rlca
	ld (bc),a
	nop
	ld (hl),a
	ld bc,00e80h
	or b
	ld e,d
	nop
	or b
	nop
	ld (bc),a
	cp d
	nop
	ld l,000h
	ld a,(de)
	nop
	jr nz,$-62
	jr l6c61h
	ld d,d
	nop
	or (hl)
	nop
	ld (bc),a
	or d
	nop
	inc (hl)
	nop
	ld b,000h
	inc d
	exx
	ld c,01dh
	xor (hl)
	dec e
	adc a,a
	jr nc,l6cc2h
	ld d,0b4h
	dec e
	dec sp
	ld (hl),01dh
	add a,b
	ex af,af'
	adc a,(hl)
	ld (bc),a
	sub (hl)
	nop
	ld c,000h
	ld h,(hl)
	ld b,(hl)
	ld bc,0310eh
	ld d,b
	inc l
	or b
	ld c,d
	adc a,h
	inc h
	ld bc,00ec4h
	nop
l6cc2h:
	ld h,00ah
	nop
	ld hl,l4289h
	push hl
	push bc
l6ccah:
	ld a,(hl)
	or a
	call nz,01500h
	ld b,d
	pop bc
	pop hl
	ld de,0000ah
	add hl,de
	ld a,(bc)
	djnz l6ccah
	ret
	inc hl
	ld c,0c0h
	ld b,c
	ld b,d
	dec a
	ld (hl),a
	ex af,af'
	add a,b
	inc hl
	add a,(hl)
	ld (hl),a
	ld (00080h),a
	ld b,d
	cp 03eh
	jp nc,l4230h
	inc hl
	inc hl
	inc e
	jp l4272h
	ld de,l7e84h
	ld b,d
	ld a,(0147eh)
	ld (hl),06ch
	jp c,0ba0fh
	jp c,l7c04h
	sub 004h
	add a,d
	inc b
	or h
	add a,h
	dec de
	ld b,a
	ld a,(00b80h)
	add a,b
	cp 0c4h
	jp c,l426bh
	dec (hl)
	sub 0c2h
	dec bc
	sub b
	dec de
	adc a,d
	ld hl,0cc28h
	ld d,b
	ret
	ld de,00504h
	nop
	xor a
	sbc hl,de
	ld e,e
	ld h,d
	adc a,b
	xor a
	ld (bc),a
	ld (hl),d
	inc c
	nop
	ld l,b
	nop
	ld d,001h
	adc a,h
	adc a,d
	ld b,b
	ld bc,0847ah
	call m,062beh
	ld (hl),001h
	inc c
	djnz $+3
	jr z,$+1
	ld h,d
	add iy,bc
	nop
	ld b,h
	ld c,012h
	ld bc,0ff46h
	ld (hl),b
	ret nz
	inc de
	jr nz,l6d69h
	ld d,001h
	ex af,af'
	ld e,d
	ld bc,0fb72h
	add hl,bc
	ld d,h
	inc d
	ld (bc),a
	ld c,001h
	ld h,h
	rst 38h
	halt
	cp 009h
	dec b
	ld h,d
	inc c
	ld a,(bc)
l6d69h:
	ld bc,00b78h
	daa
	add a,b
	ld l,d
	djnz l6d77h
	ld bc,03096h
	rst 38h
	ld a,b
	add hl,bc
l6d77h:
	ld l,(hl)
	inc c
	add a,(hl)
	ld sp,000aah
	ld l,(hl)
	add hl,bc
	djnz l6d93h
	ld (de),a
	daa
	cp (hl)
	rst 38h
	sub b
	ld (hl),d
	cp 04fh
	jp m,00030h
	ld e,d
	add hl,bc
	ld h,h
	ex af,af'
	ld c,d
	ld b,0d0h
l6d93h:
	ld h,03ah
	defb 0edh ;next byte illegal after ed
	adc a,b
	in a,(08dh)
	ld b,h
	ld (0ee3ah),hl
	sbc a,011h
	jp z,l430fh
	inc bc
	ld c,b
	ld b,e
	rlca
	jp po,00a66h
	ld b,e
	ret
	ld a,r
	jp po,0c600h
	adc a,b
	ld (l4464h),a
	ld hl,l5127h
	ld b,h
	ld sp,hl
	ld e,d
	ld h,b
	dec b
	ld a,(02622h)
	ld b,l
	cp (hl)
	sub d
	ld (00528h),a
	add a,h
	rla
	ld (hl),b
	ld a,(hl)
	ld de,l54efh
	ld b,d
	adc a,e
	rlca
	ld c,h
	ld (0c005h),a
	ld c,b
	ld hl,(0323ch)
	inc bc
	pop bc
	inc e
	ld l,a
	cpl
	ld a,b
	dec e
	cp h
	inc bc
	dec e
	pop de
	ld a,(0323eh)
	ld b,(hl)
	ld b,c
	inc h
	add a,h
	dec b
	ld c,b
	ld b,c
	ld b,d
	ret po
	inc hl
	scf
	ld b,h
	nop
	sub 004h
	cp 034h
	jp c,l4385h
	ld (009aeh),a
	ld e,d
	inc c
	nop
	jp nc,l43e4h
	add a,002h
	cp 065h
	ld e,006h
	sbc a,d
	xor l
	sbc a,d
	ld l,h
	ld b,03eh
	nop
	ld e,032h
	xor b
l6e12h:
	ld e,b
	ld (l58a9h),a
	ld hl,0b402h
	ld b,e
	ld de,l58dah
	ld bc,061e6h
	ldir
	ret
	xor (hl)
	jr z,l6e2ah
	add hl,de
	ld bc,00501h
l6e2ah:
	ld (bc),a
	ld b,a
	ld b,b
l6e2dh:
	ld (bc),a
	ld (bc),a
	ld b,004h
	ld (bc),a
	rlca
	adc a,h
	inc bc
	rlca
	rlca
	ld (bc),a
	ld hl,(00306h)
	nop
	inc e
	rlca
	sub h
	nop
	dec b
	nop
	inc de
	inc b
	call z,02c0fh
	inc hl
	ld (l6128h),a
	inc l
	ld b,h
	ld e,d
	inc b
	ld d,b
	jp nc,l6ef4h
	inc l
	sub h
	inc c
	inc h
	ld l,(hl)
	inc c
	ld b,(hl)
	ld (001dah),hl
	adc a,(hl)
	and e
	add hl,bc
	adc a,b
	jr nz,$+123
	ld hl,l4433h
	call nc,0bd8ch
	and e
	dec c
	sbc a,c
	ld d,c
	add a,d
	adc a,h
	jp nz,0f2d8h
	ld (039ceh),a
	ld (bc),a
	ret
	ld l,h
	nop
	add a,d
	ld (bc),a
	sbc a,d
	rst 10h
	ld b,e
	nop
	inc c
	ld bc,0d229h
	adc a,c
	ld c,086h
	ld c,094h
	rst 18h
	ld (hl),c
	ld c,0ach
	ld e,e
l6e8dh:
	ld c,0aah
	jr nz,l6e12h
	ret
	ret po
	dec e
	ret nz
	ld c,0a9h
	djnz l6e8dh
	jr nc,l6ea9h
	ld b,h
	nop
	add hl,bc
	halt
	ld (bc),a
	adc a,b
	nop
	rst 20h
	sub l
	ex af,af'
	sub b
	sbc a,h
	dec sp
	ld b,e
l6ea9h:
	ld c,087h
	nop
	ld l,a
	dec de
	ld a,(l533bh)
	cp b
	add a,e
	inc e
	dec sp
	ld (bc),a
	nop
	sbc a,b
	ld hl,04522h
	add a,b
	inc (hl)
	add a,044h
	ld b,l
	xor 0fah
	inc b
	ld b,0c8h
	ld a,(l451eh)
	pop de
	inc b
	rst 0
	ld b,h
	add a,a
	and h
	ex af,af'
	ld a,(01d28h)
	ld b,l
	and (hl)
	inc h
	ld e,a
	add a,0d5h
	add a,d
	rlca
	ld hl,l44edh
	add hl,de
	and 082h
	ld hl,0eb45h
	sub c
	rra
	inc b
	and d
	jr nz,$+71
	ret
	sub 069h
	ld c,03dh
	ld (de),a
	add a,c
	jp nz,044d6h
	xor a
l6ef4h:
	inc l
	sub d
	rst 28h
	ld c,c
	jr l6f41h
	xor a
	call nz,0f980h
	ld d,l
	jr c,l6f1fh
	ld a,(bc)
	ld sp,00a26h
	ld h,016h
	jr nc,l6f13h
	call p,00c50h
	add a,d
	add hl,bc
	add a,d
	ld l,c
	inc bc
	rst 38h
	rst 38h
l6f13h:
	dec b
	dec bc
	dec bc
	ld a,(bc)
	rst 38h
	nop
	dec b
	dec bc
	inc d
	ld sp,01805h
l6f1fh:
	rla
	ld b,b
	dec b
	ld bc,0ff19h
l6f25h:
	ld bc,0f2ffh
	dec bc
	ld (hl),e
	nop
	nop
	and e
	ld e,061h
	ret nc
	ld hl,l4572h
	or e
	ld h,d
	ld a,0d3h
	ld b,d
	sub d
	ld b,l
	ld a,c
	ld l,b
	adc a,h
	ld a,(hl)
	adc a,d
	ld b,l
	exx
l6f41h:
	cp b
	call nz,0fe45h
	ld de,0da3ch
	ld d,d
	inc b
	cp (hl)
	call c,010beh
	exx
	ld a,0bbh
	out (01ch),a
	add a,006h
	add hl,de
	dec e
	ld (hl),a
	ld a,(de)
	ld a,(01a6dh)
	nop
	inc hl
	djnz l6f25h
	ret
	ld d,h
	nop
	ld e,c
	ld c,e
	nop
	ld h,b
	xor a
	ld h,a
	ld (0e16eh),a
	ld (hl),a
	add hl,de
	nop
	ld a,a
	ld h,h
	add a,(hl)
	ld e,08dh
	pop hl
	sbc a,b
	sub (hl)
	ret c
	ld h,l
	ld d,e
	ld h,h
	nop
	xor l
	and c
	ld c,b
	cp e
	or h
	ld hl,03806h
	ld b,a
	call 002e9h
	ld h,h
	ld l,b
	ei
	ld hl,01700h
	ld d,(hl)
	ld (0c19ah),hl
	ld de,02010h
	nop
	ld hl,l7400h
	call 00533h
	ld hl,0e547h
	ld c,008h
	ld c,0d3h
	ld d,a
	ld c,099h
	ex af,af'
	add a,b
	ld c,0c7h
	inc l
	ld d,e
	ex af,af'
	ret nc
	ld c,087h
	ld h,a
	ld c,066h
	jr nz,l702ah
	ld c,0bbh
	ld (hl),a
	ld c,06ah
	ld (hl),b
	ld c,006h
	ld d,d
	ld b,087h
	ld d,(hl)
	ld (hl),0e6h
	inc hl
	call m,097ech
	ld b,b
	or 006h
	ex af,af'
	ld a,046h
	jr nc,l6fddh
	sbc a,e
	ld (de),a
	call 018a9h
	ld b,(hl)
	ld b,005h
	dec bc
	ccf
l6fd9h:
	ld a,(0a721h)
	dec bc
l6fddh:
	inc b
	ld c,e
	ld c,036h
	ld hl,00bbbh
	or h
	call po,0380bh
	ld hl,0cf78h
	dec bc
	dec c
	add hl,sp
	ld hl,00be3h
	nop
	ld a,06ch
	ld (l56f7h),a
	ld a,016h
	ld (0f852h),a
	inc b
	add hl,bc
	ei
	inc b
	ld bc,03226h
	call m,02156h
	cp a
	ld b,(hl)
	srl c
	and (hl)
	and b
	ld (l46c3h),a
	call po,0210ah
	adc a,0e0h
	djnz l6fd9h
	ld (0d24eh),a
	djnz $-48
	djnz $+30
	defb 0ddh,005h,038h ;illegal sequence
	call pe,07005h
l7023h:
	ei
	dec b
	ld a,(bc)
	ld l,e
	ld b,a
	dec b
	add hl,de
l702ah:
	dec b
	add a,(hl)
	jr z,l7033h
	add a,c
	halt
	call sub_580ch
l7033h:
	ld a,002h
	and d
	ld h,a
	sub a
	ld bc,02371h
	ld (hl),a
	inc hl
	nop
	ld de,010c6h
	xor c
	daa
	ret
	ex af,af'
	ld (hl),c
	ld a,(bc)
	ld (hl),d
	cp b
	cp c
	ret c
	dec (hl)
	ld d,b
	and a
	dec b
	ld c,h
	nop
	call z,032fch
	ld c,b
	add a,00eh
	ld bc,0350eh
	sbc a,c
	rst 0
	sbc a,b
	dec e
	ld c,(hl)
	nop
	ld c,e
	add a,b
	sub 03ch
	ld c,0b8h
	ld c,a
	ld c,072h
	sbc a,c
	ld c,0f0h
	jp z,0a903h
	sub l
	call nc,0dbb8h
	add a,008h
	ld e,03ah
	ld c,02ch
	adc a,b
	ex af,af'
	ld d,(hl)
	ld a,(bc)
	cp b
	di
	ld c,000h
	inc de
	ld h,h
	ld bc,00468h
	ld c,069h
	sbc a,d
	inc b
	ld b,c
	ld bc,00151h
	inc bc
	nop
	ld d,d
	inc bc
l7092h:
	ld h,d
	inc b
	ld (hl),h
	ld b,074h
	rlca
	ld b,076h
	rlca
	inc sp
	inc bc
	rlca
	xor h
	ret nz
	rlca
	ld d,l
	dec b
	ld h,h
	inc b
	ld e,d
	ld h,e
	call p,0cd00h
	dec e
	ld e,b
	call sub_4882h
	call sub_6822h
	ld b,a
	ret nz
	halt
	ld c,c
	im 0
	ld d,l
	add a,b
	ld c,b
	ret po
	ld (bc),a
	ld (hl),e
	ld b,a
	ld (0a906h),a
	sbc a,h
	inc d
	ld a,(bc)
l70c5h:
	ld de,098c2h
	jr l70c5h
	ld d,a
	jp m,0e3a4h
	ld l,h
	rst 18h
	ld h,a
	rst 30h
	ld h,(hl)
	ld e,(hl)
	add a,l
l70d5h:
	jr l70d7h
l70d7h:
	ld h,b
	nop
	adc a,e
	dec c
	ld l,060h
	ld e,b
	ld (0fc24h),a
	ld d,h
	ccf
	add a,l
	dec bc
	ld hl,l4815h
	sub e
	ld d,b
	add hl,de
	ld c,b
	sub 008h
	ld b,c
	ld (03a04h),a
	dec de
	ld c,b
	add a,02eh
	ld d,a
	inc b
	xor d
	ld (hl),b
	dec d
	jr z,l7092h
	dec d
	rlca
	ex (sp),hl
	ld c,d
	dec d
	ld hl,(01507h)
	xor (hl)
	inc b
	add a,0e1h
	dec d
	scf
	dec c
	ld d,c
	call m,01504h
	ld a,(02b39h)
	cp d
	sub (hl)
	inc b
	ret p
	inc e
	dec d
	ld h,046h
	dec d
	inc b
	add a,h
	ld d,d
	dec d
l7120h:
	ld c,b
	dec d
	and d
	rlca
	inc b
	ld a,(09013h)
	jr nc,l712eh
	ld c,b
	jp m,090d6h
l712eh:
	inc l
	ex de,hl
	cp b
	jr nz,l719dh
	ld d,l
	jr nz,l718bh
	ld c,036h
	ex af,af'
	jr l70d5h
	sub c
	ret nc
	ret z
	defb 0fdh,045h ;ld b,iyl
	and l
	or 062h
	sbc a,d
	ld b,002h
	jp 0b431h
	ld c,008h
	ld c,0c9h
	ld (de),a
	ld (bc),a
	inc c
	ld d,h
	xor h
	inc d
	call pe,01e1dh
	ld (bc),a
	ld b,(hl)
	call c,023b6h
	ld d,0beh
	jr c,l716dh
	ld h,l
	ld (hl),00eh
	dec e
	dec de
	cpl
	ld c,0e1h
	sub b
	jr nc,l716bh
	ld b,c
l716bh:
	ld (bc),a
	sub a
l716dh:
	and a
	adc a,(hl)
	call c,0b8dah
	cp d
	dec bc
	ld c,c
	ld l,l
	dec a
	sub c
	adc a,b
	dec d
	ld b,099h
	jr nz,l7188h
	ld c,c
	inc a
	ld a,0feh
	dec sp
	jp c,00682h
	cp 03ah
l7188h:
	jp nz,0b8b2h
l718bh:
	inc h
	and e
	sub a
	ld l,h
	sbc a,c
	or b
	ld hl,(0000eh)
	ld e,h
	nop
	ld (059a8h),hl
	sbc a,c
	nop
	cp 028h
l719dh:
	jp c,l48d3h
	jp nz,0cc44h
	ret nz
	rst 38h
	adc a,b
	ret z
	jr nc,$+52
	sub c
	inc b
	ld a,0b4h
	dec b
	ex af,af'
	ld c,c
	ld a,022h
	rst 30h
	ld a,(de)
	ld de,0c83dh
	djnz $-37
	add a,(hl)
	ld d,l
	cp 03fh
	or h
	inc bc
	jp z,l48deh
	adc a,e
	ld (bc),a
	ld (bc),a
	ld c,c
	exx
	adc a,b
	call c,016e2h
	adc a,h
	call c,01bc1h
	inc bc
	ld c,c
	add a,0dch
	sub d
	ld h,062h
	ld d,e
	inc bc
	ld l,l
	jp z,0ba23h
	push hl
	daa
	ld d,a
	ld b,080h
	ld (hl),d
	nop
	ld c,b
	ret z
	or b
	ld c,c
	xor l
	ccf
	inc bc
	ret m
	jr nc,$-25
	add a,h
	dec b
	ld a,(l4b4bh)
	sub (hl)
	ld c,b
	ld a,(0c69ah)
	sub a
	inc bc
	ld sp,003c0h
	ret pe
	inc bc
	adc a,h
	xor 003h
	ld hl,l4a00h
	inc bc
	ld (de),a
	ld c,d
	ret
	ld d,d
	ld (0ac66h),hl
	ld a,(bc)
	and 03fh
	ld (02f66h),a
	rst 20h
	pop bc
	ld c,c
	ld de,09baah
	cp h
	ret nz
	ld (hl),c
	ld b,l
	pop bc
	ld a,00ah
	ld (0980dh),a
	jp 00e3eh
	or a
	and 0dch
	ld (hl),d
	ld c,b
	adc a,(hl)
	jp nz,0071ch
	nop
	ld l,(hl)
	or d
	ld h,(hl)
	dec b
	or d
	call m,000e9h
	sub h
	ld (hl),b
	cp b
	ld sp,hl
	dec a
	and 05eh
	rrca
	rst 38h
l7240h:
	inc b
	cp 00fh
	jp z,08db5h
	adc a,a
	ld (bc),a
	adc a,(hl)
	adc a,b
	ld c,d
	cp 0d1h
	sub b
	inc h
	inc b
	nop
	jp z,0942ah
	ld a,e
	ld a,076h
	ex (sp),hl
	ld d,c
	and l
	sbc a,c
	ld e,c
	jr z,l7240h
	ld c,021h
	jp z,01e30h
	dec c
	jp z,0043ch
	add hl,bc
	inc c
	jp z,00442h
	dec bc
	jp nc,004d4h
	ld a,(bc)
	ld hl,l4ecah
	inc b
	add hl,bc
	jp z,03254h
	adc a,l
	dec b
	dec l
	pop bc
	or l
	ld c,e
	jp c,00f6ah
l7282h:
	out (005h),a
	ld a,006h
	ld de,01e87h
	ld de,02d0eh
	ld de,0cb28h
	rst 10h
	ld de,00b3ch
	ld c,008h
	dec bc
	ld b,06ah
	ld c,d
	jp 0381dh
	ld a,c
	dec b
	ld (hl),b
	adc a,b
	dec b
	sub a
	ld l,e
	ld c,d
	cpl
	and (hl)
	dec bc
	add a,a
	or l
	dec b
	ld c,0c4h
	dec b
	inc e
	out (005h),a
	inc (hl)
	jp po,03e05h
	rra
	adc a,l
	sbc a,(hl)
	adc a,0bdh
	dec de
	pop af
	dec l
	and c
	add hl,sp
	ld c,e
	adc a,d
	inc (hl)
	call nc,0e641h
	nop
	jr z,$-55
	xor b
	inc e
	defb 0ddh,0ebh,0d9h ;illegal sequence
	ld c,0fdh
	dec e
	and b
	ld c,0b1h
	nop
	ld c,0dah
	ret
	ld b,d
	nop
	ld d,076h
	ld l,01dh
	or 09eh
	inc l
	ld bc,02b1dh
	nop
	add a,d
	push de
	jr nc,l7282h
	di
	dec e
	xor e
	jp po,0cf8ch
	dec sp
	daa
	sub 0e3h
	adc a,001h
	dec sp
	sub d
	ld (hl),015h
	ld (bc),a
	call 0f26bh
	dec b
	inc l
	nop
	ld e,b
	add a,c
	ld (hl),d
	ld l,05ch
	ld (bc),a
	rst 10h
	inc l
	ld c,(hl)
	ld bc,08616h
	add a,c
	and 01dh
l730dh:
	ld d,a
	call nz,0101dh
	dec e
	ld (hl),a
	nop
	ld c,08bh
	ret nz
	ld c,d
	sbc a,e
	ld a,(bc)
	ld c,d
	sub a
	ret nc
	ld c,0afh
	ld (hl),a
	ld (hl),c
	or e
	rst 10h
	dec sp
	ld e,00eh
	jr nc,$+61
	ld bc,l53cdh
	ld e,(hl)
	ld c,e
	ex de,hl
	inc d
	ld a,(0b94ch)
	adc a,h
	ld e,a
	inc bc
	inc h
	ld l,a
	ld c,h
	ret nz
	dec h
	ld a,055h
	add a,b
	dec (hl)
	jp pe,01186h
	cp b
	ld a,(de)
l7343h:
	defb 0edh ;next byte illegal after ed
	inc c
	add hl,de
	djnz l7343h
	ret c
	sub h
	ld c,h
	xor l
	ret p
	xor c
	inc c
	xor l
	and b
	nop
	ld hl,l513dh
	rlca
	call sub_4c67h
	ld hl,0054fh
	ld c,06ch
	dec b
	inc e
	adc a,l
	dec b
	jr c,l730dh
	dec b
	ld (hl),b
	rst 0
	dec b
	push hl
	pop hl
	dec b
	rst 38h
	dec b
	pop bc
	inc c
	ld d,d
	dec b
	xor (hl)
	jr z,l7379h
	inc e
	ld b,h
	dec b
	jr c,$+98
l7379h:
	dec b
	ld (hl),b
	ld a,l
	dec b
	sub (hl)
	pop hl
	dec b
	xor e
	dec b
	pop bc
	ld e,b
	ld c,h
	cp c
	dec sp
	sub b
	inc e
	ld d,(hl)
	sub l
	ld b,l
	and h
	xor 030h
	di
	out (099h),a
	add hl,de
	ld a,097h
	ei
	inc b
	or b
	dec sp
	inc c
	xor l
	add a,d
	inc c
	dec de
	dec b
	call 0db0fh
	ld (hl),032h
	and (hl)
	rra
	jp 006fbh
	xor l
l73aah:
	inc de
	djnz l73aah
	cp l
	ld h,d
	rrca
	ret
	adc a,c
	ld d,h
	ld (bc),a
	inc bc
	dec c
	dec b
	ld (bc),a
	dec b
	ld bc,00682h
	ld b,006h
	rlca
	dec bc
	ld c,c
	nop
	inc b
	nop
	dec b
	dec bc
	ld d,a
	ret nz
	and h
	inc b
	inc bc
	xor e
	call nc,03b0eh
	nop
	adc a,c
	ld a,(bc)
	ld bc,0aa5ah
	ld d,b
	push af
	call 0c430h
	ld a,c
	pop af
	sub d
	xor (hl)
	ld d,b
	pop de
	ld d,h
	or a
	ld d,d
	ret nz
	adc a,a
	ld b,e
	ld b,0cdh
	cp b
	ld c,h
	and e
	ld d,h
	rlca
	ld c,a
	nop
	call sub_4e79h
	call sub_4deeh
	call 0928eh
	xor h
	or 0b0h
	adc a,h
	ld c,h
	nop
	or a
	ret z
l7400h:
	call sub_5883h
	ld a,(l4c8dh)
	ld hl,0323ch
	inc bc
	jp z,l4cabh
	cp h
	pop hl
	ret nz
	di
	adc a,e
	ld d,h
	add a,c
	ld h,c
	ei
	ret
	rlca
	dec (hl)
	dec b
	rlca
	ld a,0d3h
	sub b
	ld d,056h
	ret
	jp nc,0c029h
	ld a,(l48beh)
	ld l,0edh
	ld e,a
	xor b
	rst 38h
	ld hl,091e0h
	dec hl
	rst 8
	pop hl
	rlca
	ret c
	ld c,h
	ld bc,0c69ah
	ld d,e
	add a,(hl)
	nop
	sbc a,002h
	ret
	inc hl
	ld (bc),a
	ld d,l
	ld (bc),a
	ex af,af'
	ld (de),a
	ld bc,00667h
	inc bc
	ld b,h
	ld bc,0038bh
	ld d,(hl)
	dec b
	out (054h),a
	jp (hl)
	ld (02dc2h),a
	ld hl,03a4dh
	rlca
	inc c
	ld a,(de)
	ld c,l
	ld a,(06be8h)
	ld sp,0ea3ah
	ld l,b
	jp pe,03065h
	jr c,l747fh
	ld a,098h
	inc de
	ld (l540dh),a
	sub d
	ld e,c
	ld d,061h
	ld (0ba4ch),hl
	ld c,062h
	ld d,h
	defb 0fdh,08ah,03ah ;illegal sequence
	ld e,h
	ld c,l
	ld hl,0c003h
l747fh:
	and d
	ld e,a
	ld hl,00580h
	add hl,de
	ld b,(hl)
	ld a,b
	cp 080h
	jp nz,l473ah
	ld c,l
	dec h
	adc a,e
	add a,e
	dec e
	add hl,de
	dec a
	dec e
	dec h
	inc b
	inc bc
	ld d,h
	add a,b
	ld (03a03h),a
	ld h,l
	ld (de),a
	ld b,003h
	sbc a,d
	inc sp
	ld d,e
	cp b
	jr c,l7509h
	ld (bc),a
	nop
	ld bc,0af03h
	nop
	ld e,h
	ld de,0016bh
	ld bc,00301h
	add a,(hl)
	nop
	ld (bc),a
	and 001h
	nop
	scf
	rst 38h
	ld bc,l4e02h
	rst 38h
	cp 003h
	inc sp
	ld bc,l7902h
	inc b
	ex (sp),hl
	ex af,af'
	nop
	or 083h
	add a,b
	ld a,(l4e74h)
	xor l
	ld (bc),a
	ld a,a
	ld (09005h),a
	cp d
	ld (hl),l
	ld c,(hl)
	adc a,d
	sub 003h
	ld (hl),b
	sub 0dfh
	dec sp
	ld a,(de)
	ld d,c
	jp z,00776h
	ld c,l
	push de
	rlca
	dec a
	pop af
	call c,0b906h
	adc a,e
	ld b,072h
	and a
	ld b,0c5h
	push hl
	ld b,0e3h
	ld hl,(003c0h)
	ld hl,0e4fdh
	ld c,00ah
	ld d,d
	pop hl
	ld b,026h
	ld b,0cbh
	ld b,d
	ld b,097h
	ld e,(hl)
	ld b,02eh
l7509h:
	ld a,e
	ld b,05bh
	sub h
	ld b,0f9h
	and l
	cp l
	ld e,h
	ld c,025h
	ret nz
	or e
	inc de
	ret pe
	rst 20h
	xor c
	ld (hl),0d7h
	ld b,d
	inc b
	ld c,a
	cp c
	ld c,d
	inc bc
	adc a,b
	inc h
	dec b
	rlca
	and 0a8h
	ld d,005h
	add hl,bc
	ld b,04fh
	adc a,d
	sub d
	inc bc
	or c
	or a
	and a
	add hl,hl
	ld h,l
	call p,08c03h
	jp l6103h
	pop de
	inc bc
	rst 18h
	ld c,(hl)
	adc a,h
	jr nc,l759bh
	ld d,h
	ld d,000h
	add a,b
	ld a,0ffh
	ld b,08ch
	ld c,00eh
	jp 0ed09h
	ld c,(hl)
	ld hl,00d98h
	ld a,h
	dec c
	add a,e
	ld h,h
	ld c,03eh
	dec c
	ld e,l
	ld l,(hl)
	dec de
	or l
	ld (de),a
	dec c
	xor l
	dec c
	jr nc,l75dch
	dec c
	ld b,(hl)
	ld c,06ah
	ld c,b
	dec c
	add a,e
	dec c
	ld (hl),b
	sbc a,b
	dec c
	jr z,$-57
	dec c
	ld (hl),d
	add a,e
	ret po
	add hl,de
	ld (hl),a
	inc hl
	ld hl,l7023h
	ld (bc),a
	ld (hl),c
	ld de,00a05h
	ld h,c
	adc a,e
	ex af,af'
	ld b,(hl)
	adc a,d
	ld d,d
	sbc a,e
	jp p,039b3h
	rra
	or e
	inc c
	inc de
	ld c,a
	or a
	ret nz
	ret
	ld d,h
	ld (0929fh),a
l7596h:
	ld (bc),a
	or h
	ld (bc),a
	ld h,b
	ld (bc),a
l759bh:
	ld c,c
	ld (hl),l
	ld (bc),a
	adc a,d
	ld (bc),a
	inc h
	ld (bc),a
	inc h
	inc sp
	ld (bc),a
	ld b,d
	ld (bc),a
	ld d,c
	add a,c
	ld (bc),a
	cp e
	ld d,d
	ld (l5123h),a
	and a
	inc d
	ex af,af'
	dec d
	ld b,(hl)
	ld d,h
	add a,a
	inc c
	call 05352h
	ld (hl),c
	rst 10h
	dec b
	ld e,c
	dec b
	ld c,06eh
	dec b
	inc l
	ld (hl),l
	dec b
	ld hl,(0b9cdh)
	in a,(04ah)
	adc a,e
	dec b
	di
	rst 20h
l75ceh:
	adc a,l
	ld l,050h
	add hl,hl
	scf
	ei
	ld d,d
	add hl,hl
	dec b
	inc sp
	add hl,hl
	dec b
	inc e
	ld l,(hl)
l75dch:
	dec b
	inc (hl)
	add a,e
	dec b
	call 0abebh
	cp e
	jr nz,l7602h
	jp 03820h
	jp l7120h
	jp 00520h
	adc a,l
	add a,e
	dec b
	adc a,h
	sbc a,(hl)
	cpl
	xor 020h
	and e
	dec bc
	halt
	halt
	and l
	defb 0edh ;next byte illegal after ed
	ret
	or a
	jr c,l75ceh
	ld c,(hl)
l7602h:
	inc d
	ld d,a
	ld c,l
	dec b
	inc e
	ld l,d
	dec b
	jr c,l7596h
	dec b
	ld (hl),b
	and a
l760eh:
	dec b
	push bc
	pop hl
	dec b
	ex (sp),hl
	dec b
l7614h:
	jp 005fdh
	adc a,c
	xor l
	or l
	dec b
	ld h,005h
	jp 00542h
	add a,a
	ld e,(hl)
	dec b
	ld c,07bh
	dec b
	inc e
	sub h
	dec b
	inc (hl)
	xor c
	dec b
	ret
	ld a,(hl)
	or b
	sub a
	inc hl
	ld a,(hl)
	inc b
	ld (l52bah),a
	dec hl
	dec hl
	dec b
	cp b
	inc b
	ld d,d
	add a,a
	cpl
	ld (086bch),a
	ld c,d
	or h
	add hl,de
	adc a,h
	call nc,sub_5138h
	ex de,hl
	di
	rst 30h
	adc a,b
	dec b
	jp nz,l4694h
	ld d,b
	add a,b
	sub c
	dec hl
	ld d,c
	add a,b
	cp b
	dec b
	ld l,d
	pop hl
	dec b
	adc a,e
	dec b
	jp 005a7h
	add a,a
	push bc
	dec b
	ld c,0e3h
	dec b
	inc e
	defb 0fdh,005h,046h ;illegal sequence
	add a,b
	ld h,e
	dec b
	ld h,005h
	add a,a
	ld b,d
	dec b
	ld c,05eh
	dec b
	inc e
	ld a,e
	dec b
	jr c,l760eh
	dec b
	ld (hl),c
	xor c
	dec b
	ld e,c
	adc a,b
	rst 28h
	jp c,005e3h
	inc e
	ld l,d
	dec b
	jr c,l7614h
	dec b
	ld (hl),b
	and a
	dec b
	push bc
	pop hl
	dec b
	ex (sp),hl
	dec b
	jp 005fdh
	adc a,h
	ld e,c
	rst 0
	dec b
	ld h,005h
	ld c,042h
	dec b
	inc e
	ld e,(hl)
	dec b
	jr c,l771eh
	dec b
	ld (hl),b
	sub h
	dec b
	xor c
	ret c
	dec b
	jp c,022e8h
	ld d,c
	adc a,l
	jp c,01c23h
	ld d,c
	jp c,02400h
	ld d,c
	srl a
	ld b,a
	ld a,00ah
	add a,b
	sub b
	ld (01320h),a
	ld (de),a
	ld d,h
	ld e,07bh
	dec d
	ret pe
	ld l,e
	inc hl
	xor a
	ld (09797h),a
	jp z,0c53ah
	cp (hl)
	ld (hl),c
	sbc a,b
	dec sp
	xor b
	ld h,b
	ld (hl),a
	ret nz
	dec hl
	and e
	or a
	dec de
	nop
	ld c,d
	nop
	call c,sub_414dh
	ld c,(hl)
	nop
	ld b,d
	ld c,a
	ld d,a
	ld e,e
	ld e,(hl)
	ld e,e
	ld d,h
	ld b,l
	inc b
	ld b,c
	ld c,l
	nop
	ld b,028h
	ld de,00041h
	ld c,h
	ld b,d
	ld b,l
	ld d,d
	ld d,h
	ld e,e
	ld h,(hl)
	ld b,d
	inc b
	ld c,c
	ld b,(hl)
	ld c,c
	ld h,(hl)
	ld e,e
	dec bc
	ld b,l
	nop
	ld d,(hl)
	ld b,l
	ld c,(hl)
	ld b,h
	ld c,a
	ld d,d
	ld d,b
	nop
	jr nz,l771ch
	jr l772eh
	ld d,b
	ld b,c
	ld d,h
	ld d,d
	djnz l7761h
	ld b,l
	ld c,e
	dec e
	ld b,a
l771ch:
	ld d,l
	ld e,c
l771eh:
	ld b,d
	ld d,(hl)
	ld h,064h
	ld e,h
	ld e,h
	ld (l4c10h),hl
	ld b,l
	ld d,e
	ld d,052h
	ld d,d
	ld b,l
	add hl,de
l772eh:
	nop
	ld (de),a
	ld hl,(0363dh)
	ld b,b
	inc e
	ld c,(hl)
	ld c,a
	ld e,d
	ld b,l
	ld c,l
	sub l
	jr l7793h
	ld e,e
	ld d,(hl)
	ld d,l
	djnz $+71
	ld c,h
	ld b,b
	nop
	jr $+36
	ret c
	ld l,e
	ld d,a
	ld c,c
	ld c,(hl)
	and b
	ld e,007h
	ld b,(hl)
	ld b,e
	ld b,c
	ld d,e
	ld b,b
	ld b,l
	jr nz,$+77
	ld d,d
	ld c,a
	ld c,a
	ld d,e
	ld e,048h
	ld c,a
	ld b,(hl)
	or h
	inc h
l7761h:
	dec e
	dec e
	ld c,b
	dec l
	ld d,e
	and h
	dec de
	ld hl,(01a56h)
	ld b,c
	add a,06fh
	ld b,c
	ccf
	ld b,04fh
	ld c,(hl)
	ld b,e
	ld c,e
	dec sp
	ld (de),a
	inc h
	rra
	dec e
	ld d,h
	dec bc
	ret z
	ld e,b
	ld h,a
	ld d,l
	ld c,h
	sub c
	sbc a,l
	ld c,e
	ld a,(de)
	ld (0a547h),hl
	or (hl)
	ld a,(hl)
	sub (hl)
	inc sp
	ld hl,(0195ch)
	jr c,l779ch
	ld e,b
	ld e,e
l7793h:
	rra
	exx
	call nz,00c29h
	ld b,a
	add a,h
	ld c,l
	ld d,e
l779ch:
	ld d,h
	ld d,a
	and d
	ld d,c
	call 0b044h
	ld e,e
	sub b
	ld h,050h
	ld l,(hl)
	ld b,a
	ld d,b
	ld c,a
	xor (hl)
	inc bc
	xor l
	adc a,h
	ret c
	ld h,047h
	ld d,d
	dec a
	ld d,a
	inc d
	ld d,l
	dec b
	halt
	ld a,(bc)
	ex af,af'
	or c
	adc a,(hl)
	ld d,c
	rlca
	dec de
	inc a
	dec l
	dec de
	ld (0d456h),hl
	jr nc,$+76
	ld c,a
	djnz l780eh
	ld c,b
	ld b,(hl)
	ld c,c
	sub 050h
	add hl,bc
	inc e
	ld b,l
	ld b,h
	ld d,a
	ld c,h
	ld c,c
	ld a,d
	ld b,d
	scf
	adc a,h
	ld b,b
	ld c,c
	ld d,e
	ld a,l
	ld h,h
	ld b,e
	inc d
	ld h,l
	ld c,a
	ld h,c
	ld b,d
	ld b,044h
	ld h,(hl)
	sub 010h
	ld c,c
	ld c,h
	nop
	dec h
	ld c,b
	ld (hl),0bfh
	add a,h
	ld d,l
	ret po
	ld e,d
	ld l,d
	ld c,a
	adc a,e
	xor d
	ld b,004h
	ld d,a
	ld c,a
	ld c,h
	adc a,059h
	sub a
	ld b,d
	jr l7853h
	ld e,c
	ld e,c
	add a,(hl)
	ld hl,l4b4bh
	ld c,c
	inc de
	adc a,c
l780eh:
	ld d,e
	adc a,a
	ld bc,l5455h
	nop
	ld d,h
	ld d,b
	defb 0edh ;next byte illegal after ed
	ld l,03ch
	call c,0b0e1h
	and e
	ex af,af'
	inc b
	dec b
	ret nz
	ld de,0c90fh
	out (09bh),a
	add a,b
	xor a
	sbc hl,de
	ld de,0c510h
	add hl,bc
	dec a
	ret po
	ret nz
	push hl
	call z,sub_52f0h
	pop hl
	ld h,d
	inc hl
	add hl,bc
	ret nz
	rst 18h
	call po,0d646h
	ret nz
	dec hl
	ld (hl),a
	ld de,0000ch
	ret nz
	ld e,07eh
	add a,b
	ld (hl),a
	ret
	ret p
	inc c
	inc a
	dec (hl)
	ret
	scf
	ld e,b
	push hl
	sub a
l7853h:
	and b
	ld a,(hl)
	cp 002h
	jp nz,01a34h
	ld d,e
	ld de,00909h
	inc b
	ld e,l
	jp z,0a509h
	ld c,(hl)
	add hl,hl
	dec b
	ld (hl),019h
	ld b,a
	ld e,006h
	dec l
	add a,(hl)
	ld c,006h
	rst 0
	ld b,h
	pop hl
	cpl
	ld hl,0cab7h
	ld c,d
	ld d,e
	sbc a,h
	sub b
	ld c,b
	ld d,e
	pop hl
	and l
	or b
	ld c,h
	pop hl
	ld c,(hl)
	dec bc
	ret nc
	ld d,a
	pop hl
	ld d,(hl)
	ld a,c
	ld c,03bh
	xor a
	add a,0e9h
	dec b
	add a,054h
	inc hl
	or a
	add hl,hl
	ld (007c8h),a
	cp (hl)
	add a,e
	inc e
	ld (007cah),a
	ld a,b
	add a,e
	call z,007cah
	adc a,h
	add a,0cfh
	add a,00eh
	jp nz,l60e9h
	ld hl,000d7h
	ld d,e
	ld b,008h
	ld de,l5423h
	exx
	ld hl,01d57h
	inc bc
	call p,00c43h
	inc b
	ld de,00c32h
	dec e
	inc l
	inc c
	pop de
	cp l
	inc c
	dec sp
	dec sp
	inc c
	ld h,e
	ld d,b
	inc c
	ld c,d
	inc c
	adc a,b
l78cdh:
	jp nc,01290h
	ld b,l
	dec de
	dec de
	ld (de),a
	ld b,013h
	inc de
	inc hl
	exx
	push hl
	ld b,a
	nop
	pop hl
	exx
	djnz l78cdh
	ret
	ld a,(bc)
	inc a
	nop
	inc d
	ret p
	jr z,l78f2h
	ld e,d
	ret z
	ld h,h
	ld h,h
	ld bc,l46a0h
	xor d
	cp (hl)
	cp (hl)
l78f2h:
	ld e,01eh
	ld b,000h
	jr z,$+112
	ld c,e
	or h
	jp nc,l6e2dh
	nop
	ld e,d
	inc b
l7900h:
	xor d
	xor a
l7902h:
	ret z
	jp m,02d1eh
	nop
	ld c,e
	ld a,h
	add a,a
	ld d,l
	and e
	call c,000c4h
	jr z,l796fh
	ld (bc),a
	add a,(hl)
	inc b
	ld (hl),d
	nop
	ld b,b
	nop
	ld l,0cah
	add a,(hl)
	inc b
	ret nc
	ld c,03ch
	nop
	ld c,054h
	ret nz
	and e
	inc b
	ld a,d
	ld (bc),a
	ld h,h
	nop
	ld bc,0cf06h
	ld bc,0c9c4h
	add a,e
	sbc a,h
	ld a,h
	ld c,033h
	inc b
	ld bc,0260eh
	sub l
	ld a,c
	ld a,d
	ld c,08eh
	ld e,b
	nop
	ld a,(hl)
	ld c,019h
	ld (bc),a
	ld bc,0890eh
	add a,b
	ld b,h
	ld (bc),a
	rst 0
	ret nc
	adc a,h
	nop
	ld c,0aah
	exx
	cp h
	rst 10h
	adc a,e
	ret nc
l7954h:
	dec c
	dec c
	ld c,(hl)
	ld bc,l5214h
	inc d
	daa
	ld (de),a
	inc c
	inc d
	ld c,a
	ld hl,01dabh
	sbc a,b
	add hl,hl
	ld hl,(0c928h)
	pop af
	inc d
	ld e,b
	ld a,h
	djnz l7982h
	add a,d
l796fh:
	jr z,l7971h
l7971h:
	ld a,0a8h
	ret po
	inc d
	inc bc
	inc bc
	dec bc
	ld d,016h
	rst 38h
	ld a,b
	add hl,bc
	inc d
	jr l79dah
	ld (de),a
	ld b,b
l7982h:
	ret po
	inc d
	inc b
	inc b
	cp l
	inc d
	or l
	add a,a
	xor d
	add hl,hl
	ld (hl),h
	adc a,l
	nop
	nop
	push bc
	push de
	push hl
	exx
	ex af,af'
	push af
	pop bc
	dec b
	call 0050ch
	call sub_5590h
	call 08ec5h
	ld (bc),a
	ld bc,0f855h
	ld b,b
	ld d,(hl)
	pop bc
	ld a,(04cd1h)
	ld d,h
	or e
	rst 30h
	ld (hl),c
	ld d,h
	or 007h
	ld bc,0d1e1h
	pop bc
	pop af
	ex af,af'
	exx
	dec b
	sbc a,c
	jp nc,06703h
	ld b,a
	cp 003h
	ret z
	ret po
	ld d,e
	exx
	ld e,h
	jr c,l7954h
	inc bc
	inc h
	ld d,l
	add a,008h
	and 00fh
	djnz $+94
	sub d
	djnz $+4
	ld hl,l58dah
	call 095e9h
l79dah:
	dec h
	ld a,049h
	sbc a,026h
	sub (hl)
	ld e,h
	dec b
	dec (hl)
	ld e,h
	dec b
	ret
	adc a,d
	ld e,(hl)
	ld c,h
	ld (bc),a
	ld a,e
	xor h
	ld a,h
	ld b,003h
	adc a,h
	sbc a,l
	ld c,d
	call nc,0eb82h
	ld c,0d0h
	dec de
	inc e
	jr nc,$+16
	add a,e
	ld a,(0f3e0h)
	or 002h
	ld d,h
	ld e,b
	add a,c
	ld d,h
	ld a,00dh
	rst 28h
	ld (0f3e4h),a
	inc c
	ld h,l
	add a,l
	inc bc
	sbc a,e
	ld b,0eah
	rst 38h
	ld b,033h
	adc a,e
	inc bc
	sub c
	ld h,0e5h
	dec d
	or b
	add a,(hl)
	ld (02721h),hl
	nop
	ld d,(hl)
	ld (0c19ah),hl
	ld de,01020h
	ld hl,00001h
	ld (hl),h
	call 00533h
	ld hl,00e17h
	pop bc
	djnz l7a43h
	ld c,0c8h
	ld de,l5787h
	sub h
	ex af,af'
	ld a,b
	or b
	inc b
	call 00536h
	ret
l7a43h:
	ex af,af'
	halt
	ld de,l45cdh
l7a48h:
	ld bc,080b6h
l7a4bh:
	ld c,a
	ld hl,05687h
	ld de,00701h
	ld d,a
	ld b,020h
l7a55h:
	ld a,(l5615h)
	xor b
	cp e
	dec b
	ld b,(hl)
	sbc a,000h
	dec a
	jp nz,l55fah
	ld a,b
	cp 013h
	ld e,c
	jp nc,01505h
	call po,0da52h
	rlca
	dec b
	ld a,0fah
	jp l55fah+1
	or (hl)
	jr nz,l7a89h
	ld a,(hl)
	add a,c
	jp c,00304h
	inc b
	ex af,af'
	inc de
	djnz l7a55h
	ld hl,00138h
	sbc a,b
	ex af,af'
	add a,b
	otir
	ei
l7a89h:
	sub 0c7h
	rrca
	nop
	or e
	inc c
	rrca
	exx
	dec b
	rrca
	call pe,sub_7b09h
	dec bc
	ld hl,000f9h
	adc a,a
	dec bc
	add hl,bc
	inc c
	nop
	ld h,a
	add hl,bc
	nop
	or c
	rst 38h
	ret p
	ld (hl),e
	sbc a,b
	inc bc
	rra
	add a,003h
	cpl
	inc bc
	ld sp,0033fh
	ld c,a
	inc bc
	adc a,h
	ld e,a
	inc bc
	ld h,e
	ld l,a
	inc bc
	ld a,a
	inc bc
	jr l7a4bh
	inc bc
	sbc a,a
	add a,003h
	xor a
	inc bc
	ld sp,003b5h
	push bc
	inc bc
	add a,l
	ld a,(bc)
	ld h,h
	ei
	inc b
	inc d
	inc a
	inc bc
	ld e,045h
	ld a,b
	inc bc
	jr z,l7af3h
	inc bc
	xor d
	call nc,03c03h
	ld b,h
	adc a,h
	inc bc
	ld b,(hl)
	add a,d
	inc bc
	ld d,h
	ld b,h
	ld b,(hl)
	inc bc
	ld h,h
	xor d
	inc bc
	ld (hl),h
	ld b,h
	jr z,l7aeeh
	ld a,h
	inc d
	inc bc
l7aeeh:
	adc a,d
	ld c,h
	ld d,b
	inc bc
	sub (hl)
l7af3h:
	inc hl
	ld hl,(096a0h)
	inc bc
	or b
	ld (0b403h),hl
	ld l,(hl)
	inc bc
	ld h,0beh
sub_7b00h:
	ld e,d
	inc bc
l7b02h:
	ret z
	inc hl
	ld a,a
	nop
	ld a,(hl)
	rst 38h
	ei
sub_7b09h:
	nop
	sbc a,a
	ld bc,0703fh
	di
	ld hl,01338h
	nop
	ld de,0bff8h
	ld (0a103h),a
	ld (bc),a
	or b
	ld hl,l57eeh
	ld (08e39h),hl
	jp nz,032c3h
	ld (de),a
	ld d,c
	ei
	sbc a,d
	inc d
	rla
	ld de,01e38h
	jr $+18
	dec c
	push af
	in a,(099h)
l7b33h:
	ld (bc),a
	rlca
	call c,sub_54d2h
	pop af
	ei
	cp c
	or (hl)
	adc a,a
l7b3dh:
	or b
	and 0bfh
	ld d,l
	ld (09204h),a
	jp c,0a0c9h
	or l
	ld b,d
	djnz l7b33h
	ld b,l
	ld (bc),a
	pop bc
	or a
	ret nz
	ld a,(l58a8h)
	or c
	jp z,00703h
	jr nc,l7b02h
	ld e,b
	ld b,021h
	xor d
	inc l
	ld e,b
	ld de,0028dh
	ld b,030h
	call sub_587dh
	inc hl
	or e
	add a,l
	ld sp,hl
	sbc a,c
	and b
	ld de,l590ah
	inc c
	ld b,010h
	ld a,(hl)
	add a,a
	nop
	and b
	add a,04eh
	add a,c
	inc l
	dec hl
	ld c,(hl)
	dec b
	adc a,d
	adc a,b
	ld a,c
	ld (de),a
	dec de
	call pe,0ad21h
	jr l7b3dh
	dec b
	ld a,(0c398h)
	ld a,003h
	inc c
	ret nz
	ld a,00ah
	dec b
	cp h
	add a,(hl)
	adc a,h
	ld d,d
	ld b,050h
	dec (hl)
	nop
	xor a
l7b9ch:
	inc hl
	djnz l7b9ch
	ret
	ld a,(de)
	cp (hl)
	ret z
	cpl
	inc a
	ld (de),a
	ld h,l
	ld h,b
	ld e,e
	dec de
	cp b
	ld h,b
	cp 0ffh
	jr nz,$+3
	jr nz,$-79
	ld (hl),a
	ld (0cdf5h),hl
	ccf
	ld e,b
	ex (sp),hl
	jr c,$-46
	daa
	ld a,(bc)
	adc a,l
	jp pe,0b601h
	ld h,c
	ld (bc),a
	ld bc,00605h
	ld b,h
	ld (bc),a
	ld (bc),a
	ld b,009h
	rlca
	adc a,h
	inc bc
	rlca
	rlca
	ld (bc),a
	ld h,c
	ld b,09ch
	and a
	ld sp,hl
	rlca
	ld c,d
	nop
	dec b
	nop
	and d
	ld a,a
	sbc a,b
	rst 38h
	nop
	rst 38h
	add a,b
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7c04h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7e84h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
