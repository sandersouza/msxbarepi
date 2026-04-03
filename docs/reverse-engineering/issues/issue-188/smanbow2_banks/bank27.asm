; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank27.asm /tmp/smanbow2_bank.bin

	org 04000h

	ld c,l
	ld h,c
	ld l,(hl)
	ld h,d
	ld l,a
	ld (hl),a
	jr nz,l403ah
	jr nz,$+47
	jr nz,l4050h
	ld h,l
	ld l,l
	ld l,a
	jr nz,l4072h
	ld h,(hl)
	ld (hl),h
	ld h,l
	ld (hl),d
	jr nz,l4083h
	ld h,l
	halt
	ld h,l
	ld l,h
	ld (02020h),a
	jr nz,l4040h
l4020h:
	jr nz,l4042h
	jr nz,l4044h
	jr nz,l4046h
	jr nz,l4048h
	jr nz,l404ah
	jr nz,l404ch
	jr nz,l404eh
	jr nz,l4050h
	jr nz,l4052h
	jr nz,$+34
	jr nz,l4056h
	jr nz,l4058h
	jr nz,l405ah
l403ah:
	jr nz,l405ch
	jr nz,l405eh
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
	dec b
	nop
l4050h:
	inc bc
l4051h:
	nop
l4052h:
	ld bc,00302h
	inc b
l4056h:
	dec b
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
l4072h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4083h:
	nop
	nop
	nop
	nop
	nop
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
l40d3h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	jr nc,l4189h
	jr nc,l418bh
	add a,b
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4189h:
	nop
	nop
l418bh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	inc d
	dec b
	nop
	nop
	rrca
	ld b,02eh
	nop
	inc l
	nop
	nop
	ld bc,00267h
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld h,a
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,0016bh
	nop
	inc de
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,0016bh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,0016bh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,0016bh
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
	nop
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
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl,(02701h)
	ld bc,01300h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,0016bh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,0016bh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,0016bh
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
	nop
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
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,hl
	ld bc,00125h
	nop
	inc de
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,0016bh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,0016bh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,0016bh
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
	nop
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
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	daa
	ld bc,00123h
	nop
	inc de
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,0016bh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,0016bh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,0016bh
	nop
	ld bc,00000h
	nop
	nop
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
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	nop
	nop
	nop
	ld h,d
	jr nc,l4369h
l4369h:
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,0016ch
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,0016ch
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
l4397h:
	ld bc,00061h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,03762h
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	nop
	ld b,d
	inc b
	ld (hl),001h
	ld hl,(01e05h)
	dec b
	nop
	ld (bc),a
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
	inc bc
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	nop
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	rrca
l4402h:
	inc sp
	dec b
	dec de
	ld bc,00520h
	inc l
	dec b
	dec b
	inc d
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld bc,00267h
	ld h,a
	ld bc,00000h
	ld b,00fh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4421h:
	nop
	dec b
	nop
	ex af,af'
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	rrca
	nop
	nop
	nop
	nop
l4442h:
	nop
	nop
l4444h:
	nop
	nop
l4446h:
	dec b
	nop
l4448h:
	ex af,af'
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,00fh
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
	ex af,af'
	rrca
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,00fh
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
	ex af,af'
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l44a7h:
	nop
	dec c
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ex af,af'
	rrca
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
	inc bc
	rrca
	ld sp,02505h
	ld bc,00522h
	ld l,005h
	dec b
	nop
	ld b,00fh
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	rrca
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
	ld (hl),005h
	ld hl,(02301h)
	dec b
	cpl
	dec b
	dec b
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld h,a
	ld bc,00000h
	inc bc
	rrca
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
	ld b,00fh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	nop
	nop
	nop
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
	rrca
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
	ld b,00fh
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld b,00fh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	rrca
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
	ld b,00fh
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec bc
	rrca
	inc l
	dec b
	jr c,l45abh
	dec h
l45abh:
	dec b
l45ach:
	ld sp,00805h
	nop
	ld a,(bc)
	rrca
	ld h,a
	ld (bc),a
	ld h,a
	ld bc,00267h
	ld h,a
	ld bc,00008h
	nop
	nop
	nop
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
	rrca
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
	dec bc
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld a,(bc)
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld b,00fh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	ld a,(de)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4602h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l462ch:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l463eh:
	nop
	nop
	rst 38h
	jp l4b93h
l4644h:
	inc b
	ex af,af'
l4646h:
	ex af,af'
	inc b
	inc b
	inc bc
	inc bc
	rlca
	nop
	jp m,00001h
	nop
	nop
	ex af,af'
	inc c
	nop
	nop
	nop
	nop
	ret nz
	ret nz
	ret z
	jp nz,03cf8h
	nop
	nop
	ld h,b
	nop
	nop
	nop
	ld h,b
	ld h,b
	jr l4684h
	ld c,00ch
	nop
	ld e,020h
	rra
	rla
	inc bc
	rrca
	ld c,01ch
	jr l4675h
l4675h:
	nop
	nop
	nop
	nop
	nop
	ret po
	ret p
	call p,00fdeh
	rst 38h
	ret m
	nop
	nop
	nop
l4684h:
	nop
	inc b
	ex af,af'
	ex af,af'
	inc b
	inc b
	inc bc
	dec b
	nop
	defb 0fdh,001h,007h ;illegal sequence
	nop
	nop
	djnz $+26
	nop
	nop
	nop
	nop
	nop
	ret nz
	ret z
	jp p,03ffch
	cp 0beh
	ret nz
	nop
	nop
	nop
	nop
	ld h,b
	ld h,b
sub_46a7h:
	jr l46c5h
	ld c,00ch
	djnz $+65
	rra
	nop
	ex af,af'
	ld bc,0381ch
	jr nc,l46b5h
l46b5h:
	nop
	nop
	nop
	nop
	nop
	nop
	ret c
	or 0fdh
	inc bc
	rlca
	inc b
	nop
	nop
	nop
	nop
l46c5h:
	inc b
	ex af,af'
	ex af,af'
	inc b
	inc b
	ld bc,00107h
	jp p,00200h
	inc b
	nop
	djnz $+26
	nop
	nop
	nop
	nop
	nop
	ret nz
	call pe,0e0e2h
	ret p
	inc a
	nop
	ret nz
	nop
	nop
	nop
	nop
	ld h,b
	ld (hl),b
	jr l4705h
	ld c,00ch
	jr l472ch
	jr c,l4703h
	rrca
	rlca
	inc c
	jr c,l4724h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	ld a,h
	ld a,(hl)
	rra
	rrca
sub_4700h:
	rst 38h
	nop
	nop
l4703h:
	nop
	rst 38h
l4705h:
	rst 38h
l4706h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l4716h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l4724h:
	nop
	ld bc,01f07h
	rst 38h
	inc bc
	add hl,bc
	ld a,h
l472ch:
	add hl,bc
	inc bc
	rst 38h
	rra
	rlca
	ld bc,00000h
	nop
	ld d,b
	cp b
	call nc,0d8dah
	djnz l4724h
	djnz l4716h
	jp c,0b8d4h
	ld d,b
	nop
	nop
	nop
	nop
	nop
l4747h:
	inc bc
	rra
	rst 38h
	inc a
	inc bc
	rst 38h
	rra
	rlca
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ret nc
	ret pe
	ld d,0e8h
	jr l4747h
	call nc,0d0e8h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rlca
	ld a,a
	rst 38h
	ld a,a
	rrca
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
	and b
	xor b
	call nc,0d4d6h
	ret pe
	ret po
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,01f07h
	rst 38h
	inc bc
	inc a
	rst 38h
	rra
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,b
	xor b
	call nc,018d6h
	ret pe
	ld d,0e8h
	ld d,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc a
	inc a
	inc a
	inc a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_47b5h:
	nop
	nop
	nop
	nop
	nop
	inc a
	inc a
	inc a
	inc a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00101h
	ld bc,00101h
	nop
	nop
	ld bc,00101h
	ld bc,00101h
	nop
	nop
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	nop
	nop
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc a
	inc a
	inc a
	inc a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc a
	inc a
	inc a
	inc a
	nop
	nop
	nop
	nop
	nop
l4803h:
	nop
l4804h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nc,l4845h
	dec b
	dec d
	dec (hl)
	dec d
	dec b
	inc e
	jr nc,l4831h
l4831h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ret nz
	ret p
	call m,0c0f0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4845h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	ld e,c
	sub e
	or (hl)
	rst 8
	ld h,c
	ex af,af'
	nop
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
	ld a,(0ec57h)
	add a,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,b
	ret p
	ret p
	ld h,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4880h:
	nop
l4881h:
	nop
l4882h:
	nop
	nop
	nop
	nop
	inc bc
	rrca
	inc e
	jr l48bbh
	jr nc,l48bdh
	jr nc,l48a7h
	inc e
	rrca
	inc bc
	nop
	nop
	nop
	nop
	ret nz
	ret p
	jr c,l48b2h
	inc c
	inc c
	inc c
	inc c
	jr l48d8h
	ret p
	ret nz
	nop
	nop
	nop
	nop
	inc bc
l48a7h:
	inc c
	inc de
	rla
	ld l,02ch
	inc l
	ld l,017h
	inc de
	inc c
	inc bc
l48b2h:
	nop
	nop
	nop
	nop
	ret nz
	jr nc,l4881h
	ret pe
	ld (hl),h
l48bbh:
	inc (hl)
	inc (hl)
l48bdh:
	ld (hl),h
	ret pe
	ret z
	jr nc,l4882h
	nop
l48c3h:
	nop
	nop
	inc bc
	rrca
	ld e,038h
	jr nc,$+114
	ld h,b
	ld h,b
	ld (hl),b
	jr nc,l4908h
	ld e,00fh
	inc bc
	nop
	nop
	ret nz
	ret p
	ld a,b
l48d8h:
	inc e
	inc c
	ld c,006h
	ld b,00eh
	inc c
	inc e
	ld a,b
	ret p
	ret nz
	nop
	nop
	inc bc
	inc c
	ld de,02826h
	ld c,b
	ld d,b
	ld d,b
	ld c,b
	jr z,l4916h
	ld de,0030ch
	nop
	nop
	ret nz
	jr nc,l4880h
	ld h,h
	inc d
	ld (de),a
	ld a,(bc)
	ld a,(bc)
	ld (de),a
	inc d
	ld h,h
	adc a,b
	jr nc,l48c3h
l4903h:
	nop
l4904h:
	inc bc
	rlca
	inc c
	nop
l4908h:
	jr nz,l496ah
	ret nz
	ret nz
	ret nz
	ret nz
	ld h,b
	jr nz,l4911h
l4911h:
	inc c
	rlca
	inc bc
	ret nz
	ret po
l4916h:
	jr nc,l4918h
l4918h:
	inc b
	ld b,003h
	inc bc
	inc bc
	inc bc
	ld b,004h
	nop
	jr nc,l4903h
	ret nz
	inc bc
	inc b
	nop
	nop
	nop
	ld b,b
	add a,b
	add a,b
	add a,b
	add a,b
	ld b,b
	nop
	nop
	nop
	inc b
	inc bc
	ret nz
	jr nz,l4937h
l4937h:
	nop
	nop
	ld (bc),a
	ld bc,00101h
	ld bc,00002h
	nop
	nop
	jr nz,l4904h
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l496ah:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	call m,0fcc6h
	call z,000c6h
	nop
	nop
	inc bc
	ld b,006h
	ld b,003h
	nop
	nop
	nop
	ld a,h
	ld h,b
	ld sp,hl
	ld h,c
	ld a,l
	nop
	nop
	nop
	di
	inc bc
	rst 30h
	inc sp
	di
	nop
	nop
	nop
	ld (hl),c
	exx
	adc a,l
	defb 0fdh,08dh ;adc a,iyl
	nop
	nop
	nop
	rst 28h
	inc bc
	jp 0e303h
	nop
	nop
	nop
	pop af
	sbc a,b
	adc a,h
	sbc a,b
	pop af
	nop
	nop
	nop
	ret nz
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	adc a,h
	ret c
	ld (hl),b
	ret po
	ret nz
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc sp
	ld (hl),a
	ld (hl),a
	ld h,(hl)
	nop
	call z,00000h
	nop
	nop
	nop
	nop
	ld a,(hl)
	ret nz
	sbc a,0c6h
	ld a,(hl)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,h
	add a,0c6h
	add a,07ch
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_4a0ah:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4a62h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4a91h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4aa3h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4aabh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nc,l4b42h
	dec a
	defb 0edh ;next byte illegal after ed
	defb 0edh ;next byte illegal after ed
	dec a
	jr l4b60h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,b
	ld a,(hl)
	ld a,(hl)
	ld a,b
	nop
	nop
	nop
	nop
l4b42h:
	nop
	nop
	nop
	ld b,b
	ld d,b
	ld (hl),b
	jr c,l4b92h
l4b4ah:
	ld l,b
	ld a,h
	inc a
	jr l4b5bh
	ld (bc),a
	djnz l4b72h
	jr nz,l4b4ah
	nop
	nop
	ld b,012h
	inc d
	inc (hl)
	inc a
l4b5bh:
	inc h
	ld l,b
	ld a,b
	ld h,b
	ld b,b
l4b60h:
	nop
	nop
	nop
	xor (hl)
	ld h,b
	cp b
	xor b
	adc a,b
	call m,0b4b4h
	add a,d
	sbc a,066h
	dec sp
	dec b
	ld (bc),a
	nop
l4b72h:
	ld (bc),a
	add hl,de
	nop
	rlca
	rrca
	dec l
	ld l,d
	jp z,0dadeh
	sub h
	cp h
	sub b
	and b
	ret nz
	nop
	xor b
	ld d,d
	or 020h
	jr nz,l4b98h
	ld (bc),a
	inc b
	ld a,(bc)
	ld e,03eh
	ld l,(hl)
	ld c,(hl)
	ld a,07ch
	ld d,b
l4b92h:
	ld b,b
l4b93h:
	nop
	xor b
	nop
	nop
	nop
l4b98h:
	ld (hl),b
	jr c,$+58
l4b9bh:
	inc l
	ld h,01eh
	ld d,004h
	ld (bc),a
	ld b,000h
	nop
	add hl,de
	ld (bc),a
	ld (bc),a
	ld (bc),a
	dec b
	dec de
	ld (hl),l
	ld a,l
	ld b,c
	sub l
	or l
	ld a,c
	add a,e
	xor b
	cp b
	ld h,b
	ld d,h
	xor b
	add a,b
	ret nz
	cp h
	call nc,sub_577eh
	ld e,c
	dec a
	dec hl
	ld a,(de)
	dec c
	rrca
	rlca
l4bc3h:
	nop
	nop
	ld b,00dh
	ld (bc),a
	ld e,01ah
l4bcah:
	ld (de),a
	inc de
	rra
	inc c
	ld b,002h
	djnz l4bf2h
	jr nz,l4bcah
	nop
	nop
	ld h,b
	jr nz,$-14
	ret pe
	ld l,b
	jr l4c2dh
	ld (hl),b
	ld b,b
	nop
l4be0h:
	nop
	nop
	nop
	xor (hl)
	ld b,009h
l4be6h:
	ld (bc),a
	ld de,02d2fh
l4beah:
	dec l
	inc b
	cpl
	inc sp
	add hl,de
	dec b
	ld (bc),a
	nop
l4bf2h:
	ld (bc),a
	add hl,de
	nop
	ld (hl),b
	ld (hl),b
	ld e,b
	ld c,016h
	or 0e4h
	xor h
	call pe,0d0b8h
	add a,b
	nop
	xor b
	ld d,d
	or 020h
	jr nz,l4c18h
	ld (bc),a
	ld b,004h
	rrca
	dec de
	ld (de),a
	ld (bc),a
	ld c,002h
	dec b
	ld b,000h
	xor b
	nop
	nop
	nop
l4c18h:
	nop
	ld b,b
	ld (hl),b
	ld d,b
	djnz $+98
	ret po
	or b
	ret po
	ld b,b
l4c22h:
	nop
	nop
	add hl,de
	ld (bc),a
	ld (bc),a
	ld (bc),a
	dec b
	dec c
	dec de
l4c2bh:
	scf
	inc (hl)
l4c2dh:
	dec l
	dec a
	rra
	dec e
	ld a,(bc)
	add hl,bc
	ld b,054h
	xor b
	add a,b
	add a,b
	ret nz
	ret p
	ret pe
	ret m
	ret pe
	cp b
	jr l4c98h
	ret c
	ld (hl),b
	ld (hl),b
	nop
	ld bc,00804h
	inc de
	daa
	inc c
	ld e,b
	ld bc,0013eh
	inc (hl)
	ld sp,03031h
	ld (hl),c
	pop af
	add a,b
	and b
	djnz l4be0h
	call nz,01a30h
	add a,b
	ld a,h
	add a,b
	ld h,0cch
	call z,0ce0ch
	rst 8
	inc bc
	dec bc
	rla
	dec l
	ld e,e
	rst 30h
	and l
	cp 043h
	ld a,06bh
	ld l,d
	ld l,d
	ld l,c
	xor d
	ld hl,(0d0c0h)
	xor b
	call nz,08bf0h
	and l
	ld a,a
	jp nz,0d27eh
	halt
	halt
	sub 075h
	ld (hl),h
	ld (hl),b
	or c
l4c86h:
	pop de
	ret p
	pop af
	ld (hl),c
	ld (hl),b
	ld (hl),c
	ld sp,01110h
	add hl,bc
l4c90h:
	ex af,af'
	ex af,af'
	ex af,af'
	nop
	ld c,0cdh
	rrc a
l4c98h:
	rst 8
	adc a,00eh
	adc a,(hl)
	adc a,h
	ex af,af'
	ex af,af'
	djnz l4cb1h
	djnz l4cb3h
	nop
	xor l
	xor 06ah
sub_4ca7h:
	add hl,hl
	ld hl,(0b9aah)
	sbc a,d
	ld e,d
	add hl,sp
	ld a,(01d1eh)
l4cb1h:
	inc e
	inc d
l4cb3h:
	ex af,af'
	push af
	ld (hl),a
	halt
	call nc,sub_7574h
	defb 0ddh,0d9h,0dah ;illegal sequence
	sbc a,h
	sbc a,h
	cp b
	jr c,l4cfah
	jr z,l4cd4h
	nop
	ld c,02ah
	ld a,h
	adc a,d
	ei
	ld b,001h
	inc bc
	ld b,0fbh
	xor 07ch
	ld hl,(0000eh)
l4cd4h:
	nop
l4cd5h:
	ret nz
	ret p
l4cd7h:
	ld b,b
	ret po
l4cd9h:
	ld a,040h
l4cdbh:
	nop
	nop
	ld b,b
	ld a,0e0h
	ld b,b
	ret p
	ret nz
	nop
	rlca
	add hl,de
	ld b,027h
	or e
	rst 18h
	nop
	ld c,00ch
	nop
	rst 18h
	or e
	daa
	dec a
	add hl,de
	rlca
	add a,b
	cp b
	adc a,(hl)
	ret nz
	ret m
	pop af
l4cfah:
	add a,b
l4cfbh:
	jr nz,$+34
	add a,b
	pop af
	ret m
l4d00h:
	ret nz
	adc a,(hl)
l4d02h:
	cp b
	add a,b
	nop
	nop
l4d06h:
	ld bc,00c05h
	ld hl,00602h
	ld b,003h
	jr nz,l4d1ch
	dec b
	ld bc,00000h
	nop
	add a,b
	ret nz
	and b
	ld c,b
l4d19h:
	add a,h
sub_4d1ah:
	halt
	sbc a,b
l4d1ch:
	jp m,08476h
	ld c,b
	and b
	ret nz
	add a,b
	nop
	ld bc,01e03h
	ld e,d
	pop hl
	rst 18h
	dec h
	nop
	ex af,af'
	inc h
	rst 8
	di
	ld e,d
	ld e,003h
	ld bc,l60e0h
	jr nc,l4d00h
	sub 0cbh
	ld sp,hl
	ret m
	defb 0fdh,079h,08bh ;illegal sequence
	or 0d8h
	jr nc,l4da3h
	ret po
	nop
	rlca
	rra
l4d47h:
	ld bc,01f0eh
	ld (bc),a
	nop
	nop
	ld (bc),a
	rra
	ld c,001h
	rra
	rlca
	nop
sub_4d54h:
	ret nz
	inc a
	inc h
	ret nz
	cp b
	nop
	sbc a,h
	sub b
	inc b
	sbc a,h
	nop
	cp b
	ret nz
	inc h
	inc a
	ret nz
	inc bc
	jr c,l4d47h
	ld b,03fh
	add hl,de
	nop
	nop
	nop
	nop
	add hl,de
	ccf
	ld b,0e0h
	jr c,$+5
	nop
	call po,0c0ffh
	nop
	ld h,e
sub_4d7ah:
	ld h,b
	ld h,b
	ret p
	ld h,b
	ld h,e
	nop
	ret nz
	rst 38h
	call po,00000h
	inc bc
	rrca
	nop
	rlca
sub_4d89h:
	ld a,a
	add a,c
	nop
	nop
	add a,c
	ld a,a
	rlca
	nop
	rrca
	inc bc
	nop
	ld h,b
	or b
	ret c
	ret m
l4d98h:
	ld (hl),h
l4d99h:
	cp (hl)
l4d9ah:
	ld (bc),a
	ld c,h
	ld a,h
l4d9dh:
	ld (bc),a
	cp (hl)
	ld (hl),h
l4da0h:
	ret m
	ret c
	or b
l4da3h:
	ld h,b
	ld bc,l7c1fh
	inc bc
	jr l4d9dh
	nop
	nop
	nop
	nop
	di
	jr $+5
	ld a,h
	rra
	ld bc,0c880h
l4db6h:
	call po,0cf66h
	ld h,a
	add hl,sp
	ld sp,03901h
	ld h,a
	rst 8
	ld h,(hl)
l4dc1h:
	call po,080c8h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4de0h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4df9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4e04h:
	inc bc
	inc a
	inc h
	inc bc
	nop
	ret nz
	nop
	ld a,000h
	nop
	ret nz
	nop
	inc bc
	inc h
	inc a
	inc bc
	ret nz
	inc a
	inc h
	ret nz
	ld b,070h
	jr nz,l4e1ch
l4e1ch:
	jr nz,l4e3eh
	ld (hl),b
	inc bc
	ret nz
	inc h
	inc a
	ret nz
	nop
	dec de
	in a,(000h)
	dec e
	nop
	ccf
	ld b,c
	ld a,a
	ccf
	nop
	dec e
	nop
	in a,(01bh)
	nop
	nop
	ret c
	in a,(002h)
	cp b
	nop
	nop
	add a,b
	add a,b
	nop
l4e3eh:
	nop
	cp b
	ld (bc),a
	in a,(0d8h)
	nop
	jr nz,l4e73h
	dec hl
	dec hl
	dec l
	dec l
	inc l
	cpl
	dec l
	dec l
	dec hl
	dec l
	dec l
	inc l
	jr nz,$+34
	jr nz,$+34
	jr nz,$+45
	dec l
	inc l
	cpl
	dec l
	dec hl
	dec hl
	dec l
	inc l
	jr nz,l4e82h
	jr nz,l4e84h
	jr nz,l4e86h
	jr nz,l4e88h
	cpl
	dec hl
	dec l
	dec l
	inc l
	inc l
	cpl
	jr nz,l4e91h
	jr nz,$+34
l4e73h:
	jr nz,$+34
	jr nz,$+34
	dec hl
	dec l
	inc l
	inc l
	dec l
	cpl
	inc l
	dec l
	dec l
	jr nz,l4ea2h
l4e82h:
	jr nz,l4ea4h
l4e84h:
	jr nz,l4eb3h
l4e86h:
	dec hl
	dec hl
l4e88h:
	dec l
	dec l
	inc l
	ld hl,(02d2dh)
	dec hl
	dec l
	dec l
l4e91h:
	inc l
	jr nz,$+34
	jr nz,$+34
	jr nz,$+45
	dec l
	inc l
	ld hl,(02b2dh)
	dec hl
	dec l
	inc l
	jr nz,l4ec2h
l4ea2h:
	jr nz,l4ec4h
l4ea4h:
	jr nz,l4ec6h
	jr nz,l4ec8h
	ld hl,(02d2bh)
	dec l
	inc l
	inc l
	ld hl,(02020h)
	jr nz,$+34
l4eb3h:
	jr nz,l4ed5h
l4eb5h:
	jr nz,l4ed7h
	dec hl
	dec l
	inc l
	inc l
	dec l
	ld hl,(02d2ch)
	dec l
	jr nz,l4ee2h
l4ec2h:
	jr nz,l4ee4h
l4ec4h:
	jr nz,$+44
l4ec6h:
	dec hl
	dec hl
l4ec8h:
	dec hl
	dec hl
	ld hl,(02b2bh)
	ld hl,(02b2bh)
	dec hl
	dec hl
	ld hl,(00020h)
l4ed5h:
	nop
	nop
l4ed7h:
	dec hl
	ld l,02ch
	dec l
	dec hl
	dec l
	inc l
	ld l,02bh
	nop
	nop
l4ee2h:
	nop
	nop
l4ee4h:
	nop
	nop
	nop
	nop
	ld l,02eh
	dec l
	dec hl
	dec l
	inc l
	dec hl
	ld l,000h
	nop
	nop
	nop
	nop
l4ef5h:
	nop
	nop
	nop
	nop
	nop
	rrca
	ex af,af'
	ex af,af'
	rrca
	nop
	nop
	nop
	nop
sub_4f02h:
	nop
	nop
	inc l
	dec l
	dec l
	dec l
	dec l
	dec l
	add hl,bc
	dec hl
	add hl,bc
	dec hl
	inc l
	jr nz,l4f40h
	jr nz,$+46
	ld l,02eh
	dec hl
	dec hl
	dec hl
l4f18h:
	dec bc
	dec bc
	ld a,(bc)
	ld c,d
	ld a,(bc)
	ld c,d
	inc c
	dec bc
	dec l
	dec hl
	dec hl
	dec hl
	jr nz,$+46
	dec l
	dec l
	dec l
	dec l
	dec hl
	add hl,hl
	dec hl
	dec hl
	dec l
	dec l
	cpl
	jr nz,l4f5fh
	ld l,020h
	ld l,02bh
	dec hl
	dec bc
	dec bc
	dec bc
	ld a,(bc)
	ld c,d
	ld a,(bc)
	ld c,00ch
l4f40h:
	inc l
	dec hl
	dec hl
	dec hl
	jr nz,l4f72h
	dec l
	dec l
	dec l
	dec l
	dec hl
	add hl,hl
	dec hl
	dec hl
	dec hl
	inc l
	dec l
	jr nz,l4f7fh
	ld l,020h
	ld l,02bh
	dec hl
	dec bc
	dec bc
	dec bc
	ld a,(bc)
l4f5ch:
	ld c,d
	ld a,(bc)
	ld a,(bc)
l4f5fh:
	inc c
	dec hl
	inc l
	dec hl
	dec hl
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	ld c,00bh
	rrca
	nop
	nop
	nop
	nop
l4f72h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4f7fh:
	nop
	dec bc
	ld c,000h
	nop
	nop
	nop
	dec bc
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec bc
	ld c,000h
	nop
	ld l,02eh
	ld l,02eh
	ld l,02eh
	ld l,02eh
	ld l,02eh
	ld l,02eh
	ld l,02eh
	ld l,02eh
	ld l,e
	ld l,e
	ld l,e
	ld l,e
	ld l,e
	ld l,e
	ld l,e
	ld l,e
	ld l,e
	ld l,e
	ld l,e
	ld l,e
	ld l,e
	ld l,e
	ld l,e
	ld l,e
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
l4fcch:
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	add a,(hl)
	add a,(hl)
	add a,(hl)
	add a,(hl)
	add a,(hl)
	add a,(hl)
	add a,(hl)
	add a,(hl)
	add a,(hl)
	add a,(hl)
	add a,(hl)
	add a,(hl)
	add a,(hl)
	add a,(hl)
l4ff2h:
	add a,(hl)
	add a,(hl)
	push bc
	push bc
	push bc
	push bc
	push bc
	push bc
	push bc
	push bc
	push bc
	push bc
	push bc
	push bc
	push bc
	push bc
	push bc
	push bc
	adc a,e
	adc a,e
	adc a,e
	adc a,e
	adc a,e
	adc a,e
	adc a,e
	adc a,e
	adc a,e
	adc a,e
	adc a,e
	adc a,e
	adc a,e
	adc a,e
	adc a,e
	adc a,e
	adc a,d
	adc a,d
	adc a,d
	adc a,d
	adc a,d
	adc a,d
	adc a,d
	adc a,d
	adc a,d
	adc a,d
	adc a,d
	adc a,d
	adc a,d
	adc a,d
	adc a,d
	adc a,d
sub_5024h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l5043h:
	nop
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
l504ch:
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	jr nz,l5086h
	jr nz,l5088h
	jr nz,l508ah
	jr nz,l508ch
	jr nz,l508eh
	jr nz,l5090h
	jr nz,l5092h
	jr nz,l5094h
	jr nz,l5096h
	jr nz,l5098h
	jr nz,l509ah
	jr nz,l509ch
	jr nz,l509eh
	jr nz,l50a0h
	jr nz,l50a2h
	jr nz,l50a4h
	ld (bc),a
	ld (bc),a
l5086h:
	ld (bc),a
	ld (bc),a
l5088h:
	ld (bc),a
	ld (bc),a
l508ah:
	ld (bc),a
	rrca
l508ch:
	inc c
	rrca
l508eh:
	ld (bc),a
	ld (bc),a
l5090h:
	ld (bc),a
	ld (bc),a
l5092h:
	ld (bc),a
	ld (bc),a
l5094h:
	ld b,c
	ld b,c
l5096h:
	ld b,c
	ld b,c
l5098h:
	ld b,c
	ld b,c
l509ah:
	ld b,c
	ld b,c
l509ch:
	ld b,e
	ld b,c
l509eh:
	ld b,c
	ld b,c
l50a0h:
	ld b,c
	ld b,c
l50a2h:
	ld b,c
	ld b,c
l50a4h:
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
sub_50bch:
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld c,00fh
	inc bc
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	nop
	ld c,c
	ld b,d
	ld b,c
	ld b,c
	ld b,c
l50d9h:
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	nop
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	inc bc
	rrca
	dec bc
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	nop
	ld b,d
	ld c,h
	nop
	nop
	nop
	nop
	nop
	nop
	cpl
	dec hl
	ld l,02fh
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
	ld (bc),a
	ld (bc),a
	ld c,00eh
	ld c,00eh
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	ld (bc),a
	nop
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld c,e
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	ld b,c
	nop
	dec b
	dec b
	dec b
	dec b
	dec b
	rrca
	rrca
	rrca
	rrca
	dec b
	dec b
	dec b
	dec b
	dec b
	nop
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld c,e
l514ch:
	ld c,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	inc bc
	ld bc,00101h
	ld (bc),a
	ld (bc),a
	ld (bc),a
	dec bc
	ld bc,00202h
	ld (bc),a
	ld bc,00101h
	inc bc
	nop
	ld b,d
	ld b,d
	ld b,d
	ld b,e
	nop
	ld c,a
	ld c,a
	ld c,a
	ld c,a
	nop
	ld b,e
	ld b,d
	ld b,d
	ld b,d
	nop
	ld bc,00101h
	ld bc,00101h
	inc bc
	ld a,(bc)
	ld a,(bc)
	inc bc
	ld bc,00101h
	ld bc,00101h
	ld b,d
	ld b,d
	ld b,d
	ld b,d
	ld b,d
	ld b,d
	ld c,h
	ld c,e
	ld c,e
	ld c,d
	ld b,d
	ld b,d
	ld b,d
	ld b,d
	ld b,d
	ld b,d
	ld b,005h
	dec b
	dec b
	dec b
	dec b
sub_519ah:
	dec b
	rrca
	dec b
	inc c
	dec b
	dec b
	dec b
	dec b
	dec b
	ld b,000h
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld c,a
	ld c,e
	ld c,a
	ld c,a
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	nop
	ld b,005h
	dec b
	dec b
	dec b
	dec b
	dec b
	ld a,(bc)
	dec b
	inc c
	dec b
	dec b
	dec b
	dec b
	dec b
	ld b,000h
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld c,d
	ld c,e
	ld c,d
sub_51cdh:
	ld c,d
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	nop
	jp nc,l4b9bh
	ld a,000h
	ld (0c308h),a
	ld a,(0ffe8h)
	or 002h
	and 0ffh
	and 07fh
	ld (0ffe8h),a
	di
	out (099h),a
	ld a,089h
	ei
	out (099h),a
	ld a,(0ffe7h)
	and 0dfh
	ld (0ffe7h),a
	ld a,001h
	ld (0c10eh),a
	ld hl,(0057ch)
	ld (hl),01ah
	ld hl,(0057fh)
	ld (hl),0d0h
	ld hl,(00582h)
	ld (hl),0aeh
	ld hl,(00585h)
	ld (hl),0aeh
	ld hl,(00588h)
	ld (hl),010h
	ld hl,(0058bh)
	ld (hl),0d4h
l521bh:
	ld hl,(0058eh)
	ld (hl),010h
	ld hl,(00591h)
	ld (hl),0d4h
	ld hl,(00594h)
	ld (hl),010h
	ld hl,(00597h)
	ld (hl),0d4h
	ld hl,(0059ah)
	ld (hl),0c8h
	ld hl,(0059dh)
	ld (hl),0d2h
	call sub_4d7ah
	call sub_4d1ah
l523fh:
	call 00563h
	call 073c2h
	call 0059fh
	call 005a2h
	call 005a5h
	call sub_4ca7h
	call sub_725dh
	call sub_56d4h
	call 005aeh
	call 00539h
	call 005a8h
	call 05b61h
	call 005abh
	call sub_582eh
	call sub_4d89h
	call sub_533dh
	ld a,(0c13dh)
	or a
	jp z,l4c2bh
	ld a,005h
	call 0050fh
	ld a,001h
	ld (0c106h),a
	ld a,0feh
	ld (0c108h),a
	ld (0c3a3h),a
	ld a,01ch
	ld (0c107h),a
	ld (0c3a2h),a
	call 00503h
	call 00506h
	halt
	call sub_4d7ah
	xor a
	ld (0c13dh),a
	ld a,(0c395h)
	or a
	jp z,04c6ch
	call sub_4d54h
	ld a,(0c395h)
	or a
	ret
	xor a
	ld (0c116h),a
l52b1h:
	ld (0c13fh),a
	ld (0c152h),a
	ld (0c14fh),a
	ld (0c143h),a
	ld (0c140h),a
	ld a,002h
	ld (0c142h),a
l52c5h:
	ld a,(0c13eh)
	cp 01eh
	jp c,l4c90h
	dec a
	ld (0c13eh),a
	ld a,(0c3d1h)
	inc a
	ld (0c3d1h),a
	ld a,(0c113h)
	dec a
	ld (0c113h),a
	inc a
	jp nz,04bfeh
	call sub_4d54h
	xor a
	ret
	ld hl,l4cdbh
	ld (l4cd7h),hl
	ld hl,l4cfbh
	ld (l4cd9h),hl
	ld hl,(l4cd7h)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,d
	or e
	jp z,l4d19h
l5300h:
	ld (l4cd7h),hl
	ex de,hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l4cd9h)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4cd9h),hl
	ex de,hl
	ld (hl),c
	inc hl
	ld (hl),b
	jp l4cb3h
	nop
	nop
	nop
	nop
	rlca
	dec b
l531eh:
	ld d,005h
	rra
	dec b
	ld (02e05h),hl
	dec b
	add hl,de
	dec b
	ld sp,05b05h
	dec b
	ld e,(hl)
	dec b
	ld h,c
	dec b
	ld h,a
	dec b
	ld l,d
	dec b
	ld (hl),b
	dec b
	ld (hl),e
	dec b
	halt
	dec b
	nop
	nop
l533ch:
	sub b
sub_533dh:
	ld d,e
	ld e,h
	ld d,e
	ld bc,01e53h
	ld d,e
	ld a,l
	ld d,e
	ld e,a
	ld d,e
	ld l,b
	ld d,e
	and b
	ld e,b
	ei
	ld d,d
	cp 052h
	ld h,d
	ld d,e
	ld h,l
	ld d,e
	sbc a,a
	ld d,e
	ld (hl),a
	ld d,e
	inc b
	ld d,e
	ret
	di
	ld hl,00038h
	ld de,04d77h
	ld bc,00003h
	ldir
	ld hl,l4d99h
	ld (00039h),hl
	ld a,0c3h
	ld (00038h),a
	ld a,013h
	ld (0fff1h),a
	out (099h),a
	ld a,093h
	out (099h),a
	ld a,(0f3dfh)
	or 010h
	ld (0f3dfh),a
	out (099h),a
	ld a,080h
	out (099h),a
	ld a,002h
	out (099h),a
	ld a,08fh
	ei
	out (099h),a
	ret
	ld hl,04d77h
	ld de,00038h
	di
	ld bc,00003h
	ldir
	ld a,(0f3dfh)
	and 0efh
	ld (0f3dfh),a
l53a9h:
	out (099h),a
	ld a,080h
	out (099h),a
	xor a
	out (099h),a
	ld a,08fh
	out (099h),a
	ei
l53b7h:
	ret
l53b8h:
	nop
	nop
	nop
	di
	ld hl,l4d98h
	ld (04da6h),hl
	ld hl,l4d98h
	ld (l4db6h),hl
	ei
	ret
	di
	ld hl,l521bh
sub_53ceh:
	ld (04da6h),hl
	ld hl,l52b1h
	ld (l4db6h),hl
	ei
	ret
	ret
	push af
	ld a,001h
	out (099h),a
	ld a,08fh
	out (099h),a
l53e3h:
	in a,(099h)
	rrca
	call c,l521bh
	xor a
	out (099h),a
	ld a,08fh
	out (099h),a
	in a,(099h)
	ld (0c1a0h),a
	rlca
	call c,l52b1h
	ld a,002h
	out (099h),a
	ld a,08fh
	out (099h),a
	pop af
	ei
	ret
	ld c,d
	ld c,d
	inc c
	jr c,l5441h
	jr c,l5419h
	ld c,d
	ld (01822h),hl
	ld b,(hl)
	ld b,h
	ld b,(hl)
	ld a,(de)
	ld (02222h),hl
	inc h
	ld b,h
	ld b,(hl)
l5419h:
	ld b,(hl)
	ld h,022h
	ld (00222h),hl
	ld b,(hl)
l5420h:
	ld b,(hl)
	ld b,h
	ld b,020h
	jr nz,$+34
	nop
	ld b,(hl)
	ld b,h
	ld b,h
	inc b
	ld (02020h),hl
	nop
	ld b,h
	ld b,(hl)
	ld b,(hl)
	inc b
	jr nz,l5457h
	ld (l4402h),hl
	ld b,h
	ld b,(hl)
	ld b,022h
	jr nz,l545eh
	nop
	ld b,(hl)
l5440h:
	ld b,h
l5441h:
	ld b,(hl)
	inc b
	jr nz,l5467h
	ld (l4402h),hl
	ld b,h
	ld b,h
	ld b,020h
	jr nz,l5470h
	ld (bc),a
	ld b,(hl)
	ld b,(hl)
	ld b,h
	inc b
	ld (02020h),hl
	nop
l5457h:
	ld b,(hl)
	ld b,h
	ld a,(02006h)
	jr nz,l547eh
l545eh:
	nop
	ld b,(hl)
sub_5460h:
	ld b,h
	ld b,(hl)
	inc b
	ld (02222h),hl
	nop
l5467h:
	ld b,h
	ld b,(hl)
	ld b,(hl)
	inc b
	ld (02020h),hl
	ld (bc),a
	ld b,(hl)
l5470h:
	ld b,(hl)
	ld b,h
	inc b
	jr nz,l5497h
	jr nz,l5479h
	ld b,h
	ld b,(hl)
l5479h:
	ld b,(hl)
	ld d,022h
	jr nz,l549eh
l547eh:
	ld (bc),a
	ld (de),a
	djnz $+20
	ld e,022h
sub_5484h:
	ld (l4c22h),hl
	ld d,d
	ld c,h
	ld d,d
	jr nz,l54ach
	jr nz,l54b2h
	ld b,(hl)
	inc b
	ld (bc),a
	ld (hl),02ah
	jr nz,$+42
	inc (hl)
	ld b,h
l5497h:
	ld d,014h
	ld b,(hl)
	ld (hl),02ah
	nop
	ld b,(hl)
l549eh:
	ld b,h
sub_549fh:
	ex af,af'
	ld a,(bc)
	ld (de),a
	djnz l54aah
	ld (bc),a
	ld b,(hl)
	ld b,h
	ld l,04ch
	ld d,d
l54aah:
	ld c,h
	ld d,d
l54ach:
	inc e
	djnz l54c1h
	ld e,00ah
	inc b
l54b2h:
	ld c,h
	ld d,d
	ld (0524ch),hl
	jr z,l54edh
	ld d,014h
	inc b
	ld (0524ch),hl
	ld (bc),a
	ld b,h
l54c1h:
	ex af,af'
	ld a,(bc)
	ld b,028h
	inc (hl)
	inc b
	ld (bc),a
	ld b,(hl)
	ex af,af'
	ld a,(bc)
	ld b,002h
	ld b,h
	inc b
	ld (bc),a
	ld b,h
	ex af,af'
	ld a,(bc)
	ld b,002h
	ld b,h
	ld b,000h
	ld (de),a
	ld e,00ah
	inc b
	nop
	ld b,(hl)
	ld b,000h
	inc b
	jr z,l5517h
	ld b,002h
	ld b,(hl)
	inc b
	ld (bc),a
	ld b,02ch
	ld b,(hl)
	inc b
	nop
l54edh:
	ld b,h
	inc b
	nop
	ld b,002h
	ld b,h
	ld b,000h
	ld b,(hl)
	ld d,000h
	inc b
	nop
	ld b,(hl)
	ld b,002h
	ld a,(00230h)
	ld b,000h
	ld b,(hl)
	inc b
sub_5504h:
	nop
	ld b,h
	inc b
	inc l
	inc b
	ld (bc),a
	ld b,h
	inc b
	nop
	ld b,h
	ld (hl),034h
	ld (hl),034h
	ld b,h
	ld b,04ch
	ld c,(hl)
	ld d,b
l5517h:
	ld d,b
	ld c,(hl)
	ld d,b
	ld d,b
	ld d,d
	nop
	ld b,h
	ld (de),a
	djnz l5533h
	djnz $+70
	inc b
	ld (bc),a
	ld b,(hl)
	inc b
	inc l
l5528h:
	inc b
	ld (bc),a
	ld b,(hl)
	inc b
	inc d
	ld b,(hl)
	inc b
	inc l
	inc b
	ld (bc),a
	ld b,(hl)
l5533h:
	inc b
	inc l
	ld b,(hl)
	ld (hl),034h
l5538h:
	ld (hl),034h
	ld b,(hl)
	ld b,04ch
	ld c,(hl)
	ld c,(hl)
	ld c,(hl)
	ld d,b
	ld c,(hl)
l5542h:
	ld d,b
	ld d,d
	nop
	ld b,h
	ld (de),a
	djnz l555bh
	djnz l5591h
	ld b,014h
	ld b,(hl)
	inc b
	inc l
	inc b
	ld (bc),a
l5552h:
	ld b,h
	ld b,014h
	ld b,h
	ld b,02ch
	inc b
	ld (bc),a
	ld b,h
l555bh:
	ld b,014h
	ld b,(hl)
	ld b,02ch
	inc b
	nop
	ld b,(hl)
	inc b
	inc l
	ld b,h
	ld (hl),034h
	ld (hl),034h
	ld b,(hl)
	ld b,000h
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,002h
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,h
	ld b,h
	ld b,(hl)
	inc b
	ld (bc),a
	ld b,(hl)
	ld b,h
	ld b,h
	ld b,h
	ld b,h
	ld b,(hl)
	inc b
	nop
	ld b,(hl)
	ld b,(hl)
	ld b,h
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,014h
	ld b,(hl)
	ld b,h
	ld b,(hl)
	ld b,h
l5591h:
	ld b,h
	ld b,(hl)
	inc b
l5594h:
	ld (l4442h),hl
	ld b,h
	ld b,(hl)
	ld b,(hl)
l559ah:
	ld (de),a
	ld e,02ch
	ld b,h
	ld b,(hl)
	ld b,h
	ld b,(hl)
	ld b,(hl)
	jr nc,$+36
	ld (bc),a
	ld b,(hl)
	ld b,(hl)
	ld b,h
	ld b,(hl)
	ld b,h
	ld (hl),02ah
	ld (bc),a
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,h
	ld b,(hl)
	inc b
	nop
	ld b,(hl)
	ld a,(l4444h)
	ld b,(hl)
l55bah:
	ld b,(hl)
	inc b
	ld (l4644h),a
	ld b,(hl)
	ld b,h
	ld b,(hl)
	ld b,(hl)
	inc b
	inc e
	djnz l560dh
	ld b,(hl)
	ld b,h
	ld b,h
	ld b,(hl)
	ld b,022h
	inc e
	djnz $+72
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	inc b
	ld (01c22h),hl
	djnz $+70
	ld b,h
	ld a,(02206h)
	ld (01c22h),hl
	djnz l5628h
	ld b,(hl)
	ld b,022h
	ld (02222h),hl
	inc e
	ld b,h
l55eah:
	ld b,(hl)
	ld b,022h
	ld (02222h),hl
	ld (l463eh),hl
	inc b
	ld (02222h),hl
	ld (l462ch),hl
	ld (de),a
	ld e,022h
	ld (01822h),hl
	inc (hl)
	ld b,(hl)
	ld d,020h
	ld (02222h),hl
	ld (bc),a
	ld a,(00844h)
	jr nz,l562fh
l560dh:
	ld (03428h),hl
	ld b,h
	ld b,(hl)
	jr nc,$+34
	ld (03428h),hl
	ld b,(hl)
	ld b,h
	ld b,(hl)
	ld (hl),02ah
	jr z,l5652h
	ld b,(hl)
	ld b,(hl)
	ld b,h
	ld b,h
sub_5622h:
	ld b,h
	ld b,002h
	ld b,(hl)
	ld b,(hl)
	ld b,h
l5628h:
	ld b,h
	ld b,h
	ld b,h
	ld d,01ch
	djnz l5675h
l562fh:
	ld b,h
	ld b,h
	ld b,h
	ld b,b
	ld (00a22h),hl
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld d,022h
	jr l5685h
	ld b,(hl)
	ld b,h
	ld b,(hl)
	inc a
	ld (02422h),hl
	ld b,(hl)
	ld b,h
	ld b,(hl)
	ld b,h
	ld a,(0282eh)
	inc (hl)
l564eh:
	ld b,(hl)
	ld b,(hl)
	ld b,h
	ld b,(hl)
l5652h:
	ld b,(hl)
	ld b,002h
l5655h:
	ld b,(hl)
	ld b,(hl)
	ld b,h
	ld b,(hl)
	ld b,h
	ld b,(hl)
	ld d,002h
	ld b,h
l565eh:
	ld b,h
	ld b,(hl)
	ld b,h
	ld b,(hl)
	ld b,b
	jr nz,l5665h
l5665h:
	ld a,(l4646h)
	ld b,h
	ld b,(hl)
	ld b,(hl)
	ld l,000h
sub_566dh:
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,002h
l5675h:
	ld b,(hl)
	ld b,(hl)
	ld b,h
	ld b,h
	ld b,(hl)
	ld b,(hl)
	ld b,002h
	ld b,(hl)
	ld b,h
	ld b,(hl)
	ld b,h
	ld b,(hl)
	ld (de),a
	ld e,014h
l5685h:
	ld b,h
	ld b,(hl)
	ld b,(hl)
	ld b,h
	ld (de),a
	ld e,022h
	inc e
	djnz $+72
	ld b,(hl)
l5690h:
	ld (de),a
	ld e,022h
	jr nz,l56b7h
	ld (bc),a
	ld b,(hl)
	ld (de),a
	ld e,020h
	jr nz,l56beh
	jr nz,l56a0h
	ld b,(hl)
	inc b
l56a0h:
	ld (02020h),hl
	jr nz,l56c7h
	ld (bc),a
	ld b,(hl)
	inc b
	ld (02220h),hl
	jr nz,$+34
	ld (bc),a
	ld b,(hl)
	inc b
	jr nz,$+34
	ld (02022h),hl
	ld (bc),a
	ld b,h
l56b7h:
	inc b
	ld (02222h),hl
	jr nz,l56ddh
	ld (bc),a
l56beh:
	ld b,(hl)
	inc b
	jr nz,$+36
	jr nz,$+34
	ld (l4602h),hl
l56c7h:
	ld (hl),02ah
	ld (02220h),hl
	jr nz,l56eah
	djnz $+70
	inc b
	ld (02022h),hl
sub_56d4h:
	ld (00222h),hl
	ld b,(hl)
	ld (hl),02ah
	ld (02022h),hl
l56ddh:
	jr nz,l56fbh
	djnz $+70
	ld (hl),02ah
	ld (02022h),hl
	ld (0101ch),hl
	ld b,(hl)
l56eah:
	inc b
	ld (02220h),hl
	ld (01c20h),hl
	ld b,(hl)
	inc b
	ld (02220h),hl
	jr nz,l571ah
	jr nz,l5738h
	inc b
l56fbh:
	ld (02020h),hl
	jr nz,l5722h
	inc l
	ld b,h
	inc b
	ld (02020h),hl
	ld (03418h),hl
	ld b,(hl)
	ld d,022h
	ld (02222h),hl
	ld (bc),a
	ld b,h
	ld b,b
	ld (02222h),hl
	ld (03428h),hl
	ld b,(hl)
	ld b,(hl)
l571ah:
	ld l,022h
sub_571ch:
	ld (03428h),hl
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
l5722h:
	ld d,022h
	jr nz,l5728h
	ld b,(hl)
	ld b,b
l5728h:
	ld (02222h),hl
	ld (00222h),hl
	ld b,h
	ld b,(hl)
	ld a,(de)
	jr nz,l5753h
	jr nz,$+34
l5735h:
	ld (bc),a
	ld b,h
	inc a
l5738h:
	jr nz,l575ch
	jr nz,$+36
	jr nz,l578ah
	ld c,(hl)
sub_573fh:
	ld d,b
l5740h:
	ld d,d
	ld (02220h),hl
	ld (l4602h),hl
	ld b,(hl)
	ld (hl),02ah
	ld (02022h),hl
	ld (bc),a
	ld b,h
	ld b,h
	ld b,(hl)
	ld d,020h
l5753h:
	ld (l4c22h),hl
l5756h:
	ld d,d
	ld (02020h),hl
	jr nz,sub_577eh
l575ch:
	ld (03602h),hl
	ld hl,(02020h)
	ld (02022h),hl
	ld (bc),a
	ld b,(hl)
	ld b,b
	ld (02222h),hl
	ld (00222h),hl
	ld b,h
	inc a
	jr nz,l5792h
	ld (02022h),hl
	ld (l504ch),hl
	ld d,d
	jr nz,l579dh
	jr nz,$+36
	ld a,(bc)
sub_577eh:
	ld b,(hl)
	ld b,(hl)
	ld b,h
	ld a,(de)
	ld (02022h),hl
	inc e
	djnz $+70
	ld b,(hl)
	ld a,(de)
l578ah:
	ld (02220h),hl
	ld (l4402h),hl
	ld b,(hl)
	ld a,(de)
l5792h:
	jr nz,$+34
	jr nz,$+34
	nop
	ld b,h
	ld b,(hl)
	ld a,(de)
	ld (02022h),hl
l579dh:
	ld (l4402h),hl
	ld b,(hl)
	ld a,(de)
l57a2h:
	jr nz,$+34
	ld (00020h),hl
	ld b,(hl)
	ld b,h
	ld a,(de)
l57aah:
	ld (02022h),hl
	ld (l4602h),hl
	ld b,(hl)
	ld h,020h
	jr nz,l57d7h
	jr nz,l57b9h
	ld b,h
	ld b,h
l57b9h:
	ld h,020h
	ld (02020h),hl
	nop
	ld b,(hl)
	ld b,(hl)
	ld a,(de)
	ld (02222h),hl
	jr nz,l57c7h
l57c7h:
	ld b,h
	ld b,(hl)
	ld h,020h
	ld (02022h),hl
	ld (bc),a
	ld b,(hl)
	ld b,(hl)
	ld a,(de)
	ld (02222h),hl
	jr l580bh
l57d7h:
	ld b,(hl)
l57d8h:
	ld b,(hl)
	ld l,022h
	ld (03418h),hl
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld (hl),02ah
l57e3h:
	ld (l4602h),hl
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld (hl),02ah
	inc (hl)
	ld b,(hl)
	ld b,(hl)
	ld b,h
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld (hl),03ah
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,h
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,h
	ld b,(hl)
	ld b,h
	ld b,(hl)
	ld b,h
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld a,(l4446h)
l580bh:
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
sub_5813h:
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld a,(l4646h)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,h
sub_582eh:
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
	ld b,(hl)
sub_5835h:
	ld b,(hl)
	ld a,(l6260h)
	ld b,(hl)
	ld b,(hl)
	ld a,(0b6b4h)
	cp b
	cp d
	cp h
	or h
	or (hl)
	cp b
	xor b
	xor d
sub_5846h:
	xor h
	xor (hl)
	or b
	xor b
	xor d
	xor h
	jr nz,$+36
	ld h,h
	ld h,(hl)
sub_5850h:
	ld l,b
	jr nz,$+36
	jr nz,$+34
	ld (l6664h),hl
	ld l,b
	jr nz,$+36
	jr nz,l5897h
	rst 18h
	di
	and 0efh
	ld (0f3dfh),a
	out (099h),a
	ld a,080h
	out (099h),a
	ld a,(0f3e0h)
	and 0bfh
	ld (0f3e0h),a
l5872h:
	out (099h),a
	ld a,081h
	out (099h),a
	ld a,002h
	out (099h),a
	ld a,08fh
	out (099h),a
	in a,(099h)
	and 020h
	jp nz,l523fh
l5887h:
	in a,(099h)
	and 020h
	jp z,05246h
	ld a,(0c1fch)
	out (099h),a
	ld a,092h
	out (099h),a
l5897h:
	push bc
	ld a,(0c154h)
	ld b,a
	out (099h),a
	ld a,097h
	out (099h),a
	ld a,(0fff1h)
	add a,b
	out (099h),a
	ld a,093h
	out (099h),a
	ld a,(0ffe7h)
	and 0fdh
	out (099h),a
	ld a,088h
	out (099h),a
	ld a,(l533ch)
	out (099h),a
	ld a,082h
	out (099h),a
	ld a,(0f3e0h)
	or 042h
	ld (0f3e0h),a
	out (099h),a
	ld a,081h
	out (099h),a
	push de
	push hl
	exx
	ex af,af'
	push af
	push bc
	push de
	push hl
	ld a,(l5e5dh)
	or a
	call nz,sub_6353h
	di
	call sub_5850h
	ld a,(l5e5dh)
	or a
l58e5h:
	call nz,sub_63e3h
	pop hl
	pop de
	pop bc
	pop af
	ex af,af'
	exx
	pop hl
	pop de
	pop bc
	ret
	ld a,(0ffe7h)
	or 002h
	out (099h),a
	ld a,088h
	out (099h),a
	xor a
	out (099h),a
	ld a,097h
l5902h:
	out (099h),a
	ld a,(0fff1h)
l5907h:
	out (099h),a
	ld a,093h
	out (099h),a
	ld a,(0f3dfh)
	or 010h
	out (099h),a
	ld (0f3dfh),a
	ld a,080h
	out (099h),a
l591bh:
	ld a,05fh
	out (099h),a
	ld a,082h
	out (099h),a
	ld a,002h
	out (099h),a
	ld a,08fh
	out (099h),a
	push bc
	push de
	push hl
	exx
l592fh:
	ex af,af'
	push af
	push bc
	push de
	push hl
	ld a,(0c39ch)
	or a
	jp nz,l5300h
	call 0055dh
	call 00560h
	call 0051eh
	call 00575h
	ld a,(0c1f1h)
	ld (0c1fch),a
	ld a,(0f3e1h)
	ld (l533ch),a
	ld a,(0fff6h)
	ld (0c154h),a
	ld a,(0c39fh)
	and 040h
	call nz,00521h
	ld a,001h
	ld (0c156h),a
	call sub_582eh
	xor a
	out (099h),a
	ld a,092h
	out (099h),a
	call sub_6b06h
	pop hl
	pop de
	pop bc
	pop af
	ex af,af'
	exx
	pop hl
	pop de
	pop bc
	ret
	nop
	xor a
	ld hl,0c156h
	cp (hl)
l5983h:
	jp z,05341h
	ld (hl),a
	ld a,(l5d38h)
	or a
l598bh:
	call z,00313h
	ld a,(0c39ch)
	or a
	jr nz,l59c9h
	call sub_5caeh
	call sub_53ceh
	jr nz,l59a5h
	call 00515h
	call 00518h
	call 00566h
l59a5h:
	call 00569h
	call 00530h
	call sub_7212h
l59aeh:
	jp c,05376h
	call sub_566dh
	call sub_5460h
	call 00572h
	call 05393h
	call 0052dh
	call sub_721fh
	call 053bdh
	call 053a2h
l59c9h:
	ei
sub_59cah:
	call 0050ch
	call 00503h
	call 00506h
	ret
	ld a,(l6596h)
	or a
	jp nz,l71c1h
	ld a,(0c308h)
	or a
	jp nz,0056fh
	ret
	ld a,(0fbe9h)
	and 010h
	jp nz,l53b8h
	ld a,(l53b7h)
	or a
	ret nz
	ld a,001h
	ld (l53b7h),a
	jp 00551h
	nop
	xor a
	ld (l53b7h),a
	ret
	ld a,(0fbeah)
	and 001h
	ret nz
	ld a,020h
	ld (0c143h),a
	ld a,0e0h
	ld (0c1a4h),a
	ret
	ld a,(0c3cfh)
	or a
	ret z
	ld a,(0fbe8h)
l5a17h:
	bit 6,a
	ld a,(0c3cfh)
	jp nz,l53e3h
	xor a
	ld (0c3cfh),a
	ret
	ld (0c202h),a
	add a,004h
	ld (0c206h),a
	ld a,(0c3d0h)
	or a
	jp nz,053fch
	ld a,001h
	ld (0c109h),a
	ld a,005h
	call 0050fh
	xor a
	ld (0c106h),a
	ld a,(0c104h)
	and 0fdh
	ld (0c104h),a
	ld a,006h
	ld (0c208h),a
	ld (0c20ch),a
	ld a,(0c3d0h)
	and 007h
	jr nz,l5a66h
	ld a,(0c3cfh)
	add a,008h
	cp 060h
	jr nz,l5a63h
	ld a,048h
l5a63h:
	ld (0c3cfh),a
l5a66h:
	ld a,(0c200h)
	ld (0c204h),a
	ld a,(0c201h)
	ld (0c205h),a
	ld hl,0c10dh
	ld b,(hl)
	ld (hl),016h
	xor a
	call 055ffh
	ld a,(0c3d0h)
	inc a
	ld (0c3d0h),a
	cp 0a4h
	ld b,030h
	call nc,07285h
	ld a,(0c3d0h)
	cp 0d2h
	ret nz
	ld a,005h
	call 0050fh
	ld a,001h
	ld (0c13dh),a
	call sub_725dh
	ld a,001h
	and a
	ret
	xor a
	ld (0c160h),a
	ld a,006h
	ld (0c238h),a
	ld (0c23ch),a
	ld hl,0c280h
	ld de,0c240h
	ld a,010h
	ld (0c15fh),a
	ld b,007h
	push de
	ld a,(hl)
	and 01fh
	cp 015h
	jp z,l5528h
	inc hl
	or a
	jp z,054b8h
	cp 004h
	jr z,l5b11h
	dec a
	call z,sub_5622h
	call nz,l555bh+1
	pop de
	push hl
	ldi
l5ad7h:
	ldi
	ldi
	ldi
	pop hl
	ldi
	ldi
	ld a,(hl)
	inc a
	ld (de),a
	inc de
l5ae6h:
	inc de
	ld bc,0000dh
l5aeah:
	add hl,bc
	ld a,(0c15fh)
	add a,002h
	ld (0c15fh),a
	cp 01eh
l5af5h:
	jp nz,l5479h
	ret
l5af9h:
	pop de
	ld bc,0000fh
	add hl,bc
	ex de,hl
	ld c,008h
	add hl,bc
	ex de,hl
	ld a,(0c15fh)
	add a,002h
	ld (0c15fh),a
	cp 01eh
	jp nz,l5479h
	ret
l5b11h:
	dec hl
	ld a,(hl)
l5b13h:
	cp 024h
	jr z,l5b54h
	inc hl
	push hl
	inc hl
	inc hl
	inc hl
	ld a,(hl)
	cp 016h
	jr z,l5b2ah
	ld (hl),016h
	pop hl
l5b24h:
	call 055f5h
	jp 05492h
l5b2ah:
	inc hl
	ld a,(hl)
	inc a
	ld (hl),a
	cp 00ch
	jr z,l5b44h
	and 003h
l5b34h:
	jr z,l5b3ah
	pop hl
	jp 05492h
l5b3ah:
	dec hl
	dec hl
l5b3ch:
	ld a,(hl)
	add a,008h
	ld (hl),a
l5b40h:
	pop hl
	jp 05492h
l5b44h:
	dec hl
	ld (hl),022h
l5b47h:
	pop hl
	call 055f5h
	ld (hl),006h
	dec hl
	ld (hl),000h
	inc hl
l5b51h:
	jp 05492h
l5b54h:
	ld (hl),004h
	inc hl
	push hl
	inc hl
	inc hl
	ld (hl),04bh
	inc hl
	ld (hl),022h
	inc hl
	ld (hl),000h
	pop hl
	call 055f5h
	jp 05492h
	ld (hl),001h
l5b6bh:
	inc hl
	ld a,(0fff6h)
	ld b,a
	ld a,(hl)
	sub b
	ld (hl),a
	call 055f5h
	jp 054b8h
	dec hl
	dec hl
	dec hl
	djnz l5bafh
	pop hl
	ld a,(0c235h)
	cp d
	ret c
	cp e
	ret nc
	ld a,(0c234h)
	cp c
	ret c
	sub 010h
	cp c
	ret nc
	ld a,0f0h
	ld (0c235h),a
	ld a,005h
	ld (0c234h),a
	jp l559ah
	ret
	ld a,(hl)
	sub 008h
	ld c,a
	push hl
	inc hl
	ld a,(hl)
	sub 010h
	ld d,a
	add a,01eh
	ld e,a
	ld hl,0c229h
	ld b,007h
l5bafh:
	ld a,(hl)
	dec hl
	cp d
	jp c,l5538h
	cp e
	jp nc,l5538h
	ld a,(hl)
	cp c
	jp c,l5538h
	sub 010h
	cp c
	jp nc,l5538h
	ld a,(0c151h)
	or a
	jp z,l5594h
	ld a,b
	cp 004h
	jp nc,l5594h
	pop hl
	jp l559ah
	ld a,0f0h
	ld (hl),a
	inc hl
	ld (hl),a
	pop hl
	ld a,(0c13eh)
	ld b,a
	ld de,00007h
	add hl,de
	ld a,(hl)
	sub b
	ld (hl),a
	jp c,l55bah
	inc hl
	ld a,(hl)
	inc a
	ld (0c107h),a
	ld a,001h
	ld (0c106h),a
	ld (0c108h),a
	dec hl
	sbc hl,de
	ret
	inc hl
	ld a,(hl)
	ld (0c107h),a
	ld a,001h
	ld (0c106h),a
	ld (0c108h),a
	inc hl
	ld a,(hl)
	dec hl
l5c0bh:
	dec hl
	sbc hl,de
sub_5c0eh:
	ld (hl),024h
	inc hl
	or a
	ret z
	inc a
	jr z,l5c2fh
	ld a,(0c14ch)
	or a
	ret nz
	inc a
	ld (0c14ch),a
	ld a,(0fff6h)
	add a,(hl)
	ld (0c14ah),a
	inc hl
	ld a,(hl)
	sub 004h
	ld (0c14bh),a
	dec hl
	ret
l5c2fh:
	inc hl
	ld a,(hl)
	sub 020h
	ld (hl),a
	dec hl
	ret
	inc hl
	inc hl
	inc hl
	ld b,(hl)
	dec hl
	dec hl
	dec hl
	ld a,(0c15fh)
	push hl
	ld h,000h
	ld l,b
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,l4803h
	add hl,de
	push hl
	ld l,a
	ld h,000h
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,07400h
	add hl,de
	call 00145h
	pop hl
	ld c,098h
	call 005b4h
	pop hl
	ret
	call sub_7404h
	ld b,(hl)
	inc hl
	ld a,(hl)
	cp 003h
l5c6bh:
	jp c,l565eh
	cp 0e3h
	jp nc,l565eh
	dec hl
	cp 012h
	ld c,001h
	jr c,l5c7fh
	cp 0d2h
	ld c,0e1h
	ret c
l5c7fh:
	ld a,(0c160h)
	inc a
	cp 003h
	ret z
	ld (0c160h),a
	dec a
	jp z,l5655h
	ld a,c
	ld (0c23dh),a
	ld a,b
	ld (0c23ch),a
	ret
	ld a,c
	ld (0c239h),a
	ld a,b
	ld (0c238h),a
	ret
	ld a,(0c15fh)
	add a,a
	add a,a
	add a,a
	ld (hl),a
	dec hl
	ld (hl),006h
	dec hl
	ld (hl),000h
	inc hl
	ret
sub_5caeh:
	ld a,(0c149h)
	dec a
	ld (0c149h),a
	ret nz
	ld a,(0c147h)
	ld h,a
	ld a,(0c148h)
	ld l,a
	ld a,(hl)
	ld (0c149h),a
	inc hl
	ld e,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld a,l
	ld (0c148h),a
	ld a,h
	ld (0c147h),a
	ld d,000h
	ld hl,07c78h
	add hl,de
	ld (hl),c
	dec hl
	ex de,hl
	ld bc,00010h
	ld hl,0c280h
	ld a,(hl)
l5cdfh:
	or a
	jr z,l5cffh
	add hl,bc
	ld a,(hl)
	or a
	jr z,l5cffh
	add hl,bc
	ld a,(hl)
	or a
	jr z,l5cffh
	add hl,bc
	ld a,(hl)
	or a
	jr z,l5cffh
	add hl,bc
	ld a,(hl)
	or a
	jr z,l5cffh
	add hl,bc
	ld a,(hl)
	or a
	jr z,l5cffh
	add hl,bc
	ld a,(hl)
	or a
	ret nz
l5cffh:
	ex de,hl
	ldir
	ret
	push hl
	ld de,00010h
	ld hl,0c280h
	ld b,007h
l5d0ch:
	ld a,(hl)
	or a
	jr z,l5d13h
	add hl,de
	djnz l5d0ch
l5d13h:
	pop hl
	ret
	ld a,01ch
	ld (0fff6h),a
	xor a
	ld (0c1f9h),a
	ld (0c1f8h),a
	ld (0c1f5h),a
	ld a,001h
	ld (0c1f3h),a
	ld (0c1f4h),a
	ld hl,05b04h
	call 0048bh
	ld a,(0c113h)
	add a,a
	ld b,a
	add a,a
l5d38h:
	add a,b
	add a,012h
	ld (l5b13h),a
	ld hl,l5b13h
	call 0048bh
	call 0051bh
	ld a,020h
	ld (l5b51h+2),a
	xor a
	ld (l5b54h+1),a
	ld (05b4fh),a
	ld (l5b51h),a
	ld a,(0c308h)
	or a
	ld de,00000h
	jp z,l5735h
	dec a
	ld de,00210h
	ld b,005h
	jp z,l5740h
	dec a
	ld de,00370h
	jp z,l5756h
	ld de,00470h
	jp l5756h
	ld a,(05b5eh)
	cp 002h
	jp z,l5756h
	jp 0576ah
	ld a,(0fff6h)
	add a,b
	ld (0fff6h),a
	ld a,(0fff2h)
	add a,b
	ld (0fff2h),a
	di
	out (099h),a
	ld a,097h
	ei
	out (099h),a
	ld a,032h
	ld (0c201h),a
	add a,002h
	ld (0c205h),a
	sub 00ah
	ld (0c209h),a
	sub 002h
	ld (0c20dh),a
	ld a,d
	ld (0c1f7h),a
	ld a,e
	ld (0c1f6h),a
	ld hl,l4bc3h
	add hl,de
	or a
	jp z,l57d8h
l5dbbh:
	ld b,006h
l5dbdh:
	push bc
	ld b,008h
l5dc0h:
	push bc
	ld d,000h
	ld e,(hl)
	push hl
	ld hl,l5a17h
	add hl,de
	ld a,(hl)
	ld (05b4fh),a
	inc hl
	ld a,(hl)
	bit 0,a
	jp z,l57a2h
	and 0feh
	add a,020h
	ld (l5b51h),a
	ld a,002h
	ld (l5b51h+1),a
	jp l57aah
	ld (l5b51h),a
	ld a,003h
	ld (l5b51h+1),a
	ld hl,05b4fh
	call 0048bh
	ld a,(l5b54h+1)
	add a,020h
	ld (l5b54h+1),a
	pop hl
	inc hl
	pop bc
	djnz l5dc0h
	pop bc
	ld a,(l5b51h+2)
	add a,020h
sub_5e04h:
	ld (l5b51h+2),a
	djnz l5dbdh
	ld hl,(0c1f6h)
	ld de,00030h
	add hl,de
	ld (0c1f6h),hl
	call 059b6h
	jp l57e3h
	ld hl,059f7h
	ld de,05a07h
	ld bc,00010h
	ldir
	ld a,007h
	ld (0c1f1h),a
	ld a,0ffh
	ld (0c1f2h),a
	ld a,005h
	ld (0c300h),a
	ld a,010h
	ld (l5af9h),a
	ld a,0e0h
	ld (l5b44h),a
	ld (l5aeah),a
	ld (05b31h),a
	ld a,0d0h
	ld (l5b34h+1),a
	xor a
	ld (l5b24h),a
	ld (05b28h),a
	ld (05b29h),a
	ld (0c1f9h),a
	ld (0c1f8h),a
	call 05949h
	ld a,03fh
l5e5dh:
	ld (0f3e1h),a
	di
	out (099h),a
	ld a,082h
	ei
	out (099h),a
	ld hl,l5ad7h
	call 0048bh
	ret
	in a,(099h)
	rra
	jp c,sub_582eh
	ret
	ld hl,0c16fh
	ld de,00003h
	ld b,007h
l5e7eh:
	ld a,(hl)
	or a
	call nz,sub_5846h
	add hl,de
	djnz l5e7eh
	ret
	inc hl
	inc hl
	ld a,(hl)
	dec a
	ld (hl),a
	dec hl
	dec hl
	ret nz
	ld (hl),a
	ret
	ld a,(0c39ch)
	or a
	ret nz
	ld a,(0c1f7h)
	cp 000h
	jp z,0586eh
	ld a,(0c1f7h)
	cp 001h
	jp z,0586eh
	ld a,001h
	ld (0c10eh),a
	jp l5887h
	ret
	xor a
	ld (0c10eh),a
	ld hl,(0c1f6h)
	inc hl
	ld (0c1f6h),hl
	ret
	ld a,(0c1f3h)
	dec a
	ld (0c1f3h),a
	jp nz,l5740h
	jp 0588fh
	ld a,(0c1f3h)
	dec a
	ld (0c1f3h),a
	ret nz
	ld a,(0c1f4h)
	ld (0c1f3h),a
	ld a,(0c1f5h)
	or a
	ret nz
	ld a,(0c39ch)
	or a
	ret nz
	call 0055ah
	call 058c9h
	ld a,(0c1f2h)
	inc a
	and 01fh
	ld (0c1f2h),a
	and 001h
	ret nz
	call sub_5835h
	ld a,(0c1f1h)
	inc a
	and 00fh
	ld (0c1f1h),a
	cp 008h
	ret nz
	ld a,(0f3e1h)
	xor 020h
	ld (0f3e1h),a
	ret
	ld a,(0c300h)
	and 001h
	jp nz,l58e5h
	call 05964h
	ld hl,l5af5h
	call 0048bh
	ld a,(l5af9h)
	inc a
	and 01fh
	or 010h
	ld (l5af9h),a
l5f26h:
	ld a,(0c300h)
	cp 003h
	jp nz,l5902h
	ld hl,l5ae6h
	call 0048bh
	ld a,(l5aeah)
	add a,002h
	cp 0f0h
	jp nz,058ffh
	ld a,0e0h
	ld (l5aeah),a
l5f43h:
	ld a,(0c300h)
	dec a
	jp nz,l592fh
	ld hl,05b31h
	call 0048bh
	ld a,(l5b34h+1)
	add a,002h
	cp 0e0h
	jp nz,l591bh
	ld a,0d0h
	ld (l5b34h+1),a
	ld a,(05b31h)
	add a,002h
	cp 0f0h
	jp nz,0592ah
	ld a,0e0h
	ld (05b31h),a
	ld a,004h
	ld (0c300h),a
	ld hl,05b22h
	call 0048bh
	ld a,(l5b24h)
	add a,008h
	ld (l5b24h),a
	ld (05b28h),a
	ld a,(0c1f2h)
	cp 01fh
	ret nz
	ld a,(05b29h)
	ld (l5b24h+1),a
	ld (l5b34h),a
	ld (05afch),a
	ld (l5b47h),a
	xor 001h
	ld (05b29h),a
	ld (05b38h),a
	ld (05aedh),a
	ret
	ld hl,05a07h
	ld a,(hl)
	ld (l5b40h),a
	inc a
	ld (hl),a
	inc hl
	ld a,(hl)
	bit 0,a
	jp z,l5983h
	and 0feh
	add a,020h
	ld (05b42h),a
	ld a,002h
	ld (05b43h),a
	jp l598bh
	ld (05b42h),a
	ld a,003h
	ld (05b43h),a
	inc hl
	ex de,hl
	ld hl,l5b40h
	call 0048bh
	ex de,hl
	ld a,(05b46h)
	add a,020h
	ld (05b46h),a
	jp nz,05967h
	ld (05b46h),a
	ld a,(l5b44h)
	inc a
	and 00fh
	or 0e0h
	ld (l5b44h),a
	ld a,(05a07h)
	and 01fh
	jp z,059b6h
	ret
	xor a
	ld (0c1f8h),a
	call sub_59cah
sub_5ffeh:
	ld a,(l4df9h)
	ld h,c
	ld l,(hl)
	ld h,d
	ld l,a
	ld (hl),a
	jr nz,$+52
	jr nz,l6037h
	jr nz,$+71
	ld l,(hl)
	ld h,h
	ld h,h
	ld h,l
	ld l,l
	ld l,a
	jr nz,l6041h
	jr nz,l605bh
	ld (hl),e
	ld h,e
	ld h,c
	ld (hl),b
	ld h,l
	jr nz,l6063h
	ld (hl),d
	ld l,a
	ld l,l
sub_6020h:
	jr nz,l606fh
	ld h,c
	ld l,(hl)
	ld h,d
	ld l,a
	ld (hl),a
	jr nz,l6049h
	jr nz,l604bh
	jr nz,l604dh
	jr nz,l604fh
	jr nz,$+34
	jr nz,$+34
	jr nz,l6055h
	jr nz,l6057h
l6037h:
	jr nz,l6059h
	jr nz,l605bh
	jr nz,l605dh
	jr nz,l605fh
	jr nz,l6061h
l6041h:
	jr nz,l6063h
	ld c,l
	ld d,l
	ld d,e
	ld c,c
	ld c,(hl)
	ld d,e
l6049h:
	ld d,h
	ld d,d
l604bh:
	ld d,e
	ld b,d
l604dh:
	ld c,e
	add hl,bc
l604fh:
	ld bc,00000h
	ld bc,00302h
l6055h:
	inc b
	dec b
l6057h:
	ld b,007h
l6059h:
	ex af,af'
	add hl,bc
l605bh:
	nop
	nop
l605dh:
	nop
	nop
l605fh:
	nop
	nop
l6061h:
	nop
	nop
l6063h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l606fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_608dh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l60e0h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6100h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6112h:
	nop
	nop
l6114h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l612bh:
	nop
l612ch:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	nop
	nop
l6159h:
	add hl,bc
	add hl,bc
	add a,b
	add a,b
	add a,b
	add a,b
	add a,b
	djnz l6172h
	djnz l6174h
	djnz l6166h
l6166h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6172h:
	nop
	nop
l6174h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld de,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l61e5h
l61e5h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l61fdh
l61fdh:
	nop
sub_61feh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l6215h
l6215h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l622dh
l622dh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l6245h
l6245h:
	nop
	nop
	nop
	nop
	nop
	nop
l624bh:
	nop
	nop
	nop
	nop
	add hl,de
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l625dh
l625dh:
	nop
	nop
	nop
l6260h:
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
	nop
	jr l6275h
l6275h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld a,(bc)
	rrca
	ld h,c
	nop
	ld (hl),009h
	ld a,(01400h)
	rrca
	rlca
	ld d,061h
	nop
l628eh:
	ld a,(bc)
	rrca
	ld h,h
	djnz l62f6h
	inc bc
	nop
	nop
	ld bc,00a00h
	rrca
	ld h,c
	nop
	ld h,e
	djnz $+109
	ld bc,0046ch
	ld bc,l6100h
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l630fh
	inc bc
	nop
	nop
	ld bc,00a00h
	rrca
	ld h,c
	nop
	ld h,e
	djnz l62b7h
l62b7h:
	nop
	ld l,e
	inc b
	inc bc
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l6326h
	inc bc
	nop
	nop
	nop
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	ld h,e
	djnz l62cfh
l62cfh:
	nop
	ld l,h
	inc b
l62d2h:
	inc bc
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz $+102
	inc bc
	nop
	nop
	ld bc,00d00h
	rrca
	ld h,c
	nop
	ld h,e
	djnz l62e7h
l62e7h:
	nop
	ld l,e
	inc b
	ld bc,l6100h
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l6356h
	inc bc
	nop
	nop
l62f6h:
	inc bc
	nop
	dec c
	rrca
	ld h,c
	nop
	ld h,e
	djnz l62ffh
l62ffh:
	nop
	ld l,h
	inc b
	ld bc,l6100h
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l636fh
	inc bc
	nop
	nop
	nop
l630fh:
	nop
sub_6310h:
	rrca
	rrca
	ld h,c
	nop
	ld h,e
sub_6315h:
	djnz l6317h
l6317h:
	nop
	ld l,e
	inc b
	ld (bc),a
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l6386h
	inc bc
	nop
	nop
l6326h:
	nop
	nop
	inc c
	rrca
	ld h,c
	nop
	ld h,e
	djnz $+109
	ld bc,0046ch
	inc bc
	nop
	ld h,c
l6335h:
	nop
	dec c
	rrca
	ld h,h
	djnz $+102
	inc bc
	nop
	nop
	ld bc,00a00h
	rrca
	ld h,c
	nop
	ld h,e
	djnz l6347h
l6347h:
	nop
	ld l,e
	inc b
	ld bc,l6100h
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l63b6h
sub_6353h:
	inc bc
	nop
	nop
l6356h:
	inc bc
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	ld h,e
	djnz l635fh
l635fh:
	nop
	ld l,h
	inc b
	inc bc
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l63cfh
	inc bc
	nop
	nop
	inc bc
l636fh:
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	ld h,e
	djnz l6377h
l6377h:
	nop
	ld l,e
	inc b
	ld (bc),a
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l63e6h
	inc bc
	nop
	nop
l6386h:
	nop
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	ld h,e
	djnz l638fh
l638fh:
	nop
	ld l,h
	inc b
	inc bc
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l63ffh
	inc bc
	nop
	nop
	ld bc,00d00h
	rrca
	ld h,c
	nop
	ld h,e
	djnz l63a7h
l63a7h:
	nop
	ld l,e
	inc b
	ld bc,l6100h
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l6416h
	inc bc
	nop
	nop
l63b6h:
	inc bc
	nop
	dec c
	rrca
	ld h,c
	nop
	ld h,e
	djnz $+109
	ld bc,0046ch
	inc bc
	nop
l63c4h:
	ld h,c
l63c5h:
	nop
	ld a,(bc)
	rrca
	ld h,h
l63c9h:
	djnz l642fh
	inc bc
	nop
	nop
	inc bc
l63cfh:
	nop
	rrca
	rrca
	ld h,c
	nop
	ld h,e
	djnz l63d7h
l63d7h:
	nop
	ld l,e
	inc b
	inc bc
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l6446h
sub_63e3h:
	inc bc
	nop
	nop
l63e6h:
	dec c
	nop
	inc c
	rrca
	ld h,c
	nop
	ld h,e
	djnz l63efh
l63efh:
	nop
	ld l,h
	inc b
	nop
	nop
	ld h,c
	nop
	dec c
	rrca
	ld h,h
	djnz l645fh
	inc bc
	nop
	nop
	dec c
l63ffh:
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	ld h,e
	djnz l646ah
	inc bc
	ld l,e
	inc b
	nop
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l6413h
l6413h:
	nop
	nop
	nop
l6416h:
	nop
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	ld h,e
	djnz l6483h
	inc bc
	ld l,h
	inc b
	nop
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l642bh
l642bh:
	nop
	nop
	nop
	dec c
l642fh:
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	ld h,e
	djnz l649ah
	inc bc
	ld l,e
	inc b
	nop
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz $+109
	ld bc,00000h
l6446h:
	nop
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	ld h,e
	djnz l64b3h
	inc bc
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l645bh
l645bh:
	nop
	ld l,e
	inc b
	nop
l645fh:
	nop
	dec c
	rrca
	ld h,c
	nop
	ld h,e
	djnz l64cah
	inc bc
	nop
	nop
l646ah:
	ld bc,l6100h
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l6473h
l6473h:
	nop
	ld h,e
	inc bc
	inc bc
	nop
	dec c
	rrca
	ld h,c
	nop
	ld h,e
	djnz l64e3h
	inc bc
	ld a,(0010fh)
l6483h:
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l648bh
l648bh:
	nop
	nop
	nop
	nop
	nop
	rrca
	rrca
	ld h,c
	nop
	ld h,e
	djnz $+101
	inc bc
	jr c,l64a9h
l649ah:
	ld (bc),a
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l64a3h
l64a3h:
	nop
	ld h,e
	inc b
	nop
	nop
	inc c
l64a9h:
	rrca
	ld h,c
	nop
	ld h,e
	djnz l6513h
	inc bc
	ld a,(0030fh)
l64b3h:
	nop
	ld h,c
	nop
	dec c
	rrca
	ld h,h
	djnz $+109
	ld bc,00000h
	ld bc,00a00h
	rrca
	ld h,c
	nop
	ld h,e
	djnz l652ah
	inc bc
	ld l,00fh
l64cah:
	ld bc,l6100h
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l64d3h
l64d3h:
	nop
	nop
	nop
	inc bc
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	ld h,e
	djnz $+102
	inc bc
	nop
	nop
	inc bc
l64e3h:
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l64ebh
l64ebh:
	nop
	nop
	nop
	inc bc
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	ld h,e
	djnz l655ah
	inc bc
	ld a,(0020fh)
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l6503h
l6503h:
	nop
	nop
	nop
	nop
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	ld h,e
	djnz l6573h
	inc bc
	jr c,l6521h
	inc bc
l6513h:
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l651bh
l651bh:
	nop
	ld h,a
	ld bc,00001h
	dec c
l6521h:
	rrca
	ld h,c
	nop
	ld h,e
	djnz l658ah
	inc bc
	nop
	nop
l652ah:
	ld bc,l6100h
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l6533h
l6533h:
	nop
	nop
	nop
l6536h:
	inc bc
	nop
	dec c
	rrca
	ld h,c
	nop
	ld h,e
	djnz l65a3h
	inc bc
	dec (hl)
	rrca
	ld bc,l6100h
	nop
	ld a,(bc)
l6547h:
	rrca
	ld h,h
	djnz l654bh
l654bh:
	nop
	nop
	nop
	nop
	nop
	rrca
	rrca
	ld h,c
	nop
	ld h,e
	djnz l65bah
	inc bc
	ld (hl),00fh
l655ah:
	ld (bc),a
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l6563h
l6563h:
	nop
	ld h,a
	ld bc,00000h
	inc c
	rrca
	ld h,c
	nop
	ld h,e
	djnz l65d3h
	inc bc
	nop
	nop
	inc bc
l6573h:
	nop
	ld h,c
	nop
	dec c
	rrca
	ld h,h
	djnz l657bh
l657bh:
	nop
	nop
	nop
	ld bc,00a00h
	rrca
	ld h,c
	nop
	jr c,l6593h
	inc l
	dec c
	daa
	rrca
l658ah:
	ld bc,l6100h
	nop
	ld a,(bc)
	rrca
	nop
	nop
	nop
l6593h:
	nop
	nop
	nop
l6596h:
	inc bc
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	ld a,(03a0dh)
	dec c
	add hl,hl
	rrca
	inc bc
l65a3h:
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l65bah:
	ld (bc),a
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l6626h
	inc bc
	nop
	nop
	nop
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	dec a
	dec c
	ld sp,0380dh
	rrca
	inc bc
l65d3h:
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00d00h
	rrca
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,l6100h
	nop
	ld a,(bc)
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	dec c
	rrca
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld l,h
	inc b
	ld bc,l6100h
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l660bh
l660bh:
	nop
	nop
	nop
	nop
	nop
	rrca
	rrca
	ld h,c
	nop
	ld h,e
	djnz l6617h
l6617h:
	nop
	ld l,e
	inc b
	ld (bc),a
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l6623h
l6623h:
	nop
	nop
	nop
l6626h:
	nop
	nop
	inc c
	rrca
	ld h,c
	nop
	ld h,e
	djnz l662fh
l662fh:
	nop
	ld l,h
	inc b
	inc bc
	nop
	ld h,c
	nop
	dec c
	rrca
	ld h,h
	djnz l663bh
l663bh:
	nop
	nop
	nop
	ld bc,00a00h
	rrca
	ld h,c
	nop
	ld h,e
	djnz l66b3h
	ld bc,0046bh
	ld bc,l6100h
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l66bah
	ld bc,00000h
	inc bc
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	ld h,e
	djnz l66cbh
	ld bc,0046ch
	inc bc
	nop
l6664h:
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l666bh
l666bh:
	nop
	nop
	nop
	inc bc
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	ld h,e
	djnz l66e3h
	ld bc,0046bh
	ld (bc),a
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l6683h
l6683h:
	nop
	nop
	nop
	nop
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	ld h,e
	djnz l66fbh
	ld bc,0046ch
	inc bc
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz $+102
	inc bc
	nop
	nop
	ld bc,00d00h
	rrca
	ld h,c
	nop
	ld h,e
	djnz l66a7h
l66a7h:
	nop
	ld l,e
	inc b
	ld bc,l6100h
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l6716h
l66b3h:
	inc bc
	nop
	nop
	inc bc
	nop
	dec c
	rrca
l66bah:
	ld h,c
	nop
	ld h,e
	djnz l672bh
	ld bc,0046ch
	ld bc,l6100h
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l672fh
l66cbh:
	inc bc
	nop
	nop
	nop
	nop
	rrca
	rrca
	ld h,c
	nop
	ld h,e
	djnz l66d7h
l66d7h:
	nop
	ld l,e
	inc b
	ld (bc),a
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld h,h
	djnz l6747h
l66e3h:
	jr nz,l66e5h
l66e5h:
	nop
	nop
	nop
	inc c
	rrca
	ld h,c
	nop
	ld h,e
	djnz l675ah
	ld bc,0046ch
	inc bc
	nop
	ld h,c
	nop
	dec c
	rrca
	ld h,h
	djnz l675eh
l66fbh:
	dec b
	nop
	nop
	ld bc,00a00h
	rrca
	ld h,c
	nop
	ccf
	rrca
	ld l,e
	ld bc,00f33h
	ld bc,l6100h
	nop
	ld a,(bc)
	rrca
	nop
	nop
	ld l,e
	ld bc,00000h
l6716h:
	inc bc
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	inc sp
	rrca
	ld l,e
	ld bc,00f27h
	inc bc
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	nop
	nop
	ld l,e
l672bh:
	ld bc,00000h
	inc bc
l672fh:
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	daa
	rrca
	ld l,e
	ld bc,00f1bh
	ld (bc),a
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	nop
	nop
	ld l,e
	ld bc,00000h
	nop
l6747h:
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	ld b,c
	rrca
	ld l,e
	ld bc,00f35h
	inc bc
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	nop
	nop
l675ah:
	ld l,e
	ld bc,00000h
l675eh:
	ld bc,00d15h
	rrca
	ld h,c
	nop
	dec (hl)
	rrca
	ld l,e
	ld bc,00f29h
	ld bc,l6114h
	nop
	ld a,(bc)
	rrca
	nop
	nop
	ld l,e
	ld bc,00000h
	inc bc
	inc de
	dec c
	rrca
	ld h,c
	nop
	add hl,hl
	rrca
	ld h,e
	ld b,01dh
	rrca
	ld bc,l6112h
	nop
	ld a,(bc)
	rrca
	nop
	nop
	ld l,e
	ld bc,00000h
	nop
	ld de,00f0fh
	ld h,c
	nop
	ld c,c
	rrca
	ld l,e
	ld bc,00f3dh
	ld (bc),a
	djnz l67feh
	nop
	ld a,(bc)
	rrca
	nop
	nop
	ld l,e
	ld bc,00000h
	nop
	rrca
	inc c
	rrca
	ld h,c
	nop
	nop
	nop
	ld l,e
	ld bc,0046ch
	inc bc
	ld c,061h
	nop
	dec c
	rrca
	ld h,h
	djnz l6826h
	ld bc,00000h
	ld bc,02e0dh
	dec c
	ld l,00dh
	ld a,(02e0dh)
	dec c
	ld l,00dh
	dec c
	jr l67cdh
l67cdh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	rlca
	ld l,h
	rlca
	ld l,h
	rlca
	ld l,h
	rlca
	ld l,h
	rlca
	nop
	add hl,de
	ld l,h
	rlca
	ld l,h
	rlca
	ld l,h
	rlca
	ld l,h
	rlca
	ld l,h
	rlca
	nop
	jr l685eh
	nop
l67feh:
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	ld l,00dh
	ld (0220ch),hl
	inc c
	ld d,00ch
	ld l,00dh
	dec c
	jr l6815h
l6815h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	nop
	nop
	nop
	nop
	nop
	nop
l6826h:
	nop
	nop
	nop
	nop
sub_682ah:
	nop
	nop
	ld l,h
	rlca
	ld l,h
	rlca
	ld l,h
	rlca
	ld l,h
	rlca
	ld l,h
	rlca
	nop
	add hl,de
	ld l,h
	rlca
	ld l,h
	rlca
	ld l,h
	rlca
	ld l,h
	rlca
	ld l,h
	rlca
	nop
	jr $+99
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	inc l
	dec c
	inc l
	dec c
	jr c,l6863h
	inc l
	dec c
	inc l
	dec c
	dec c
	jr l685dh
l685dh:
	nop
l685eh:
	nop
	nop
	nop
	nop
	nop
l6863h:
	nop
	nop
	nop
	nop
	add hl,de
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	rlca
	ld l,h
	rlca
	ld l,h
	rlca
	ld l,h
	rlca
	ld l,h
	rlca
	nop
	add hl,de
	ld l,00dh
	ld l,00dh
	ld a,(02e0dh)
	dec c
	ld l,00dh
	dec c
	ld b,064h
	inc b
	ld h,h
	inc bc
	ld h,h
	inc b
	ld h,h
	dec b
	ld h,h
	inc b
	nop
	ld c,06ch
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
	ld bc,00100h
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld d,026h
	nop
	nop
	nop
	jp l4aa3h
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
	jr l698bh
	inc e
	ld c,015h
	ld e,020h
	rra
	rla
	ld b,003h
	rrca
	ld c,01ch
	jr l6998h
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
l698bh:
	rlca
	inc c
	djnz l69aeh
	ld h,b
	ccf
	jp p,03ffch
	cp 01eh
	cp (hl)
	ret nz
l6998h:
	nop
	ld b,b
	ld (bc),a
	djnz l69dch
	rra
	ld e,h
	rlca
	ld bc,0381ch
	jr nc,l69a5h
l69a5h:
	nop
	ld (0f6d8h),hl
	ld (iy+078h),e
	inc b
	ccf
l69aeh:
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
	jr c,l69d9h
	ld e,00fh
l69c7h:
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
l69d5h:
	call po,05a00h
	rra
l69d9h:
	nop
	rst 38h
	inc bc
l69dch:
	add hl,bc
	ld a,h
	add hl,bc
	inc bc
	rst 38h
	rra
	or b
	ld h,h
	jr nc,l6a36h
	cp b
	nop
	call nc,0d8dah
	djnz l69d5h
l69edh:
	djnz l69c7h
	jp c,0d41ch
	cp b
	ld d,b
	ld c,e
	daa
	inc bc
	jr nz,l6a35h
	dec e
	ld a,d
	nop
	ret nc
	nop
	ret pe
	ld d,0e8h
	jr l69edh
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
	jr l6a69h
	ld e,l
	sbc a,(hl)
	nop
	add hl,de
l6a2ah:
	inc a
	nop
	dec c
	ex (sp),hl
	rrca
	ret pe
	ld bc,000e3h
	rlca
	push bc
l6a35h:
	add a,b
l6a36h:
	nop
	rst 0
	rlca
	adc a,a
	ccf
	rst 18h
	nop
	ret m
	jr nz,l6a70h
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
	call m,07bf0h
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
	djnz l6a6bh
	ld b,b
	ld a,(0ec57h)
	ld a,a
	jp 0f060h
	ret p
	ld h,b
	ld e,(hl)
	rst 20h
l6a69h:
	and d
	sub (hl)
l6a6bh:
	sub l
	add a,(hl)
	jr nc,l6a6fh
l6a6fh:
	ld c,l
l6a70h:
	and (hl)
	and d
	inc l
	jp 0385ch
	jr l6a84h
	nop
	ld c,018h
	jr c,l6ae0h
	ld b,b
	inc bc
	inc c
	inc de
	rla
	ld l,02ch
l6a84h:
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
	jr nc,l6adbh
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
l6ab5h:
	nop
	ld h,028h
	ld c,b
	ld d,b
	ld d,b
	ld c,b
	jr z,$+40
	ld l,h
	ld de,03e40h
l6ac2h:
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
l6acch:
	ld h,l
	adc a,b
	ld b,b
	push bc
	dec d
	sbc a,h
	inc c
	jr nz,l6b35h
	ret nz
	nop
	nop
	ld h,b
	jr nz,l6adbh
l6adbh:
	inc c
	rlca
	inc bc
	ret nz
	ret po
l6ae0h:
	ld d,b
	jr nc,l6ab5h
	ld b,061h
	inc bc
	nop
	ld b,004h
	ld sp,hl
	djnz l6acch
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
	add a,h
	jr nz,l6ac2h
	add a,d
	jp p,01205h
sub_6b06h:
	dec bc
	dec bc
	dec b
	call m,000bch
	pop bc
	dec hl
	and b
	ret nc
	ret nc
l6b11h:
	and b
	call m,0182eh
	cpl
	ld b,089h
	adc a,006h
	cpl
	or d
	sbc a,d
	jp c,0ee60h
	inc hl
	ld h,b
	ld b,b
	inc c
	and d
	inc c
	ld e,089h
	and h
	ld b,0f4h
	cp h
	ld hl,07c78h
	inc a
	jr l6b11h
	ld e,h
	ld b,l
	ld l,h
l6b35h:
	jr nz,l6b47h
	jp po,01b5eh
	ld a,c
	ld e,b
	ld de,08285h
	ld b,b
	rla
	inc d
	call po,01606h
	rrca
	rra
l6b47h:
	ld e,0fdh
	ret nz
	nop
	jr l6b89h
	ld e,07ch
	ld a,b
	jr nc,l6ba1h
	or 0a6h
	ld de,02010h
	or d
	ld l,h
	ld b,(hl)
	rlca
	ld b,b
	ld h,a
	add a,d
	dec c
	ld b,(hl)
	ld de,0889ah
	ld (bc),a
	ex de,hl
	push de
	rlca
	add a,d
	ld b,c
	ccf
	ld a,a
	add a,e
	ld bc,0d25eh
	ret nz
	cp h
	ret nz
	rst 38h
	cp 0f8h
	ret p
	adc a,c
	call m,09340h
	ld h,01fh
	ld hl,l5907h
	dec sp
l6b80h:
	ccf
	ccf
	rra
	ld (de),a
	sbc a,l
	ld c,09eh
	ld e,a
	cp e
l6b89h:
	nop
	cp b
	call c,0f7ceh
	cp 099h
	nop
	call m,08d22h
	dec hl
	rst 38h
	ld (de),a
	inc bc
	jp z,0c3c8h
	xor c
	inc e
	add a,c
	ld d,l
	ld b,b
	nop
l6ba1h:
	ld a,041h
	ld (0f8f8h),hl
	rst 38h
	call m,sub_573fh
	add a,b
	djnz $+65
	ld c,01dh
	ccf
	ld b,(hl)
	rst 38h
	ccf
	dec sp
	dec e
	ld (01f66h),hl
	inc e
	inc b
	call m,0e6eeh
	or 061h
	call m,0b851h
	ccf
	add a,e
	pop bc
	pop bc
	ld a,a
	dec a
	ld d,d
	nop
	inc e
	inc bc
	and a
	ld c,b
	sbc a,b
	add a,l
	jr l6be2h
	jr nc,l6b80h
	add hl,de
	ccf
	nop
	inc d
	cp 0c3h
	sbc a,a
	ret z
	rlca
	adc a,07fh
	add a,(hl)
	dec a
	scf
l6be2h:
	inc sp
	dec sp
	ld h,d
	ld (01f07h),a
	inc e
	ld a,(bc)
	ld a,b
	call m,0f6feh
	ld b,b
	add a,b
	dec h
	dec sp
	ccf
	ld (hl),b
	sub h
	cp b
	ld e,e
	ld e,b
	nop
	inc e
	jr z,l6c0bh
	or e
	adc a,c
	adc a,a
	ld (bc),a
	inc b
	add hl,sp
	ret m
	ccf
	ld de,0ccfch
	ld b,090h
	xor c
	inc sp
l6c0bh:
	sub a
	dec d
	ld e,03eh
	ccf
	pop bc
	add a,b
	ld c,00fh
	dec de
	ret nz
	rra
	call pe,038f8h
	ld a,h
	ld l,b
	cp 03eh
	inc e
	inc a
	or 062h
	pop hl
	or c
	ld h,l
	or e
	ld a,(000b8h)
	rra
	ld d,a
	ld a,a
	out (046h),a
	jp 03ebeh
	add a,085h
	ld h,h
	inc e
	ld (bc),a
	dec bc
	ret
	or (hl)
	rra
	ld a,(hl)
	adc a,b
	scf
	ccf
	ld a,(hl)
	rst 0
	adc a,(hl)
	rst 38h
	ld c,d
	dec sp
	cp 07fh
	add a,b
	jr z,$-63
	xor d
	and b
	ld d,a
	ret m
	rst 28h
	sub a
	nop
	cp 07ah
	add a,b
	jr nz,l6c82h
	dec hl
	dec hl
	dec l
	dec l
	inc l
	ld e,d
	cpl
	inc bc
	ld b,020h
	in a,(000h)
	ex af,af'
	ld c,033h
	dec d
	dec c
	sbc a,h
	nop
	ld l,l
	cpl
	ld a,(de)
	inc de
	ld c,0dbh
	dec hl
	inc c
	dec b
	dec l
	cpl
	inc l
	inc de
	dec c
	rst 0
	ccf
	cpl
	ld hl,(sub_573fh)
	ld hl,(0a33fh)
	ld hl,(0873fh)
l6c82h:
	ld hl,(0a33fh)
	ld hl,(0bb3fh)
	inc e
l6c89h:
	nop
	inc sp
	inc b
	rlca
	sbc a,h
	adc a,a
	rst 10h
	dec hl
	xor l
	add hl,de
	ld c,h
	or b
	jp nz,0a32bh
	dec sp
	ld (hl),02eh
	ld l,00fh
	ld d,08fh
	or l
	djnz l6cb1h
	ex af,af'
	ex af,af'
	rrca
	rst 20h
	add hl,bc
	ld b,(hl)
	jr nc,l6caah
l6caah:
	add hl,bc
	dec hl
	xor b
	ld bc,0a16eh
	xor d
l6cb1h:
	inc (hl)
	dec (hl)
	nop
	ret c
	call z,sub_4a0ah
	adc a,b
	ld bc,00b0ch
	add a,h
	push bc
	dec hl
	ld (de),a
	rra
	and h
	dec hl
	add hl,hl
	and l
	ld l,(hl)
	rra
	sbc a,e
	jr nz,l6cf8h
	rra
	jr nz,l6c89h
	ret po
	dec a
	inc l
	rra
	jr z,l6d13h
	sub b
	cp h
	rra
	jp z,00c0ah
	ld de,0e90bh
	ld l,a
	ld c,0c5h
	add a,h
	cp e
	cp h
	daa
	dec bc
	ld c,005h
	adc a,a
	nop
	rst 0
	add hl,de
	xor a
	ld l,000h
	ld h,a
	ld l,e
	nop
	or h
	rst 38h
	rst 38h
	ld a,(hl)
	add hl,hl
	ei
	nop
	sbc a,a
l6cf8h:
	jr nz,l6cfah
l6cfah:
	ld (hl),h
	sbc a,l
	or l
	nop
	sbc a,e
	sbc a,l
	ld a,e
	sbc a,d
	ld a,(de)
	nop
	ld c,a
	ld h,e
	ld c,(hl)
	nop
	ld c,a
	ld a,(bc)
	add a,a
	dec bc
	nop
	or e
	ld c,a
	nop
	exx
	inc bc
	nop
l6d13h:
	call pe,0f648h
	nop
	nop
	jp nc,l4aabh
	ld a,001h
	ld (0c308h),a
	nop
	ld a,(0ffe8h)
sub_6d24h:
	or 002h
	and 07fh
	or 020h
	add a,b
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
	djnz l6d58h
l6d58h:
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
	sbc a,d
	inc b
	ret z
	ld hl,(09d40h)
	inc b
	jp nc,089cdh
	ld c,h
	call 02940h
	ld (bc),a
	ld h,e
	dec b
	call 062ceh
	inc h
	call 0059fh
	and d
	ld (bc),a
	and l
	add a,b
	ld (bc),a
	or (hl)
	ld c,e
	call sub_61feh
	call 03409h
	ld d,d
	call 00baeh
	add hl,sp
	ld (bc),a
	jr nz,$-86
	ld (bc),a
	jp c,0cd56h
	xor e
	add a,d
	dec b
	ld l,c
	ld d,e
	call 02c98h
	nop
	or c
	ld c,(hl)
	ld a,(0c13dh)
	or a
	jp z,0223ah
	ld c,e
	ld a,011h
	rrca
	dec b
	and d
	jr nc,l6db9h
	pop bc
	ld (0fe3eh),hl
	and a
	nop
l6db9h:
	pop bc
	ld (0c3a3h),a
	ld a,01ch
	ld (08207h),a
	rlca
	and d
	jp 003cdh
	ld a,(de)
	add hl,de
	ld b,005h
	halt
	ld e,l
	and b
	inc d
	dec hl
	ld a,(09522h)
	jp l7b2eh
	ld c,e
	ld h,l
	ld l,d
	ld c,h
	add hl,bc
	ret
	ld (de),a
	ld c,c
	ld d,023h
	ccf
	ld (bc),a
	ld d,d
	ld (bc),a
	inc h
	ld c,a
	ld (bc),a
	ld b,e
	ld (bc),a
	ld b,b
	add a,h
	ccf
	ld (bc),a
	ld (02642h),a
	ld a,000h
	pop bc
	cp 01eh
	jp c,04b9fh
	dec a
	ld (03e41h),a
	dec bc
	pop de
	jp 0323ch
	inc bc
	ld a,(bc)
	ld a,(0c113h)
	dec c
	inc bc
	ld a,(de)
	inc a
	jp nz,03d0dh
	xor a
	nop
	ret
	ld hl,l4beah
	ld (l4be6h),hl
	ld hl,00a02h
	ld c,h
	ld (04be8h),hl
	ld hl,(00008h)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,d
	or e
	jp z,0a028h
	ld c,00bh
	ex de,hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld e,e
	ld hl,(01215h)
	inc e
	add a,b
	ex de,hl
	ld (hl),c
	inc hl
	ld (hl),b
	jp 0c227h
	ld c,e
	sub (hl)
	ld b,b
	rlca
	dec b
	ld d,005h
	rra
	dec b
	nop
	ld (02e05h),hl
	dec b
	add hl,de
	dec b
	ld sp,00005h
	ld e,e
	dec b
	ld e,(hl)
	dec b
	ld h,c
	dec b
	ld h,a
	dec b
	inc b
	ld l,d
	dec b
	ld (hl),b
	dec b
	ld (hl),e
	and c
	ld c,b
	dec b
	rra
	rst 38h
	ld c,(hl)
	nop
	rst 10h
	ld c,(hl)
	ld (hl),e
	ld c,(hl)
	and b
	ld c,(hl)
	call pe,0004eh
	jp c,0e34eh
	ld c,(hl)
	in a,(053h)
	ld l,l
	ld c,(hl)
	nop
	ld (hl),b
	ld c,(hl)
	ld c,(ix-020h)
	ld c,(hl)
	and 04eh
	nop
	jp (hl)
	ld c,(hl)
	halt
	ld c,(hl)
	ret
	di
	ld hl,00738h
	nop
	ld de,l4c86h
	ld bc,081bfh
	ldir
	ld hl,069a8h
	ld bc,00039h
	ld a,0c3h
	ld (00438h),a
	inc b
	inc de
	ld (0fff1h),a
	adc a,h
	jp po,08b93h
	ld (hl),b
	rst 18h
	di
	ld d,0f6h
	djnz l6edeh
	inc b
	dec c
	ld sp,00380h
	ld (bc),a
	inc bc
	adc a,c
	adc a,a
	and d
	ret z
	xor h
	and h
	dec (hl)
	ld de,0f328h
	ex (sp),hl
	add hl,sp
	inc hl
	rrca
	and 0efh
	inc hl
	ld b,0afh
	ld (003c4h),hl
	ei
	ret
	sbc a,(hl)
	ld h,h
	ld e,a
	and a
	adc a,l
	ld d,h
	or l
	ld c,h
	dec b
	add hl,hl
	push bc
	ld c,h
	ld de,0e50eh
	ld c,0c1h
	inc hl
	ld c,(hl)
l6edeh:
	ld c,0c1h
	ret
	push af
	rst 18h
	daa
	inc l
	ld hl,099dbh
	rrca
	call c,03b1ah
	xor a
	inc c
	dec b
	ld (0c1a0h),a
	rlca
	call c,sub_6d24h
	call z,0f103h
	jp po,0004bh
	sub b
	in a,(0d3h)
	ld c,h
	sbc a,h
	sub c
	inc b
	jp nc,0c94ch
	ld (hl),a
	rlca
	dec c
	push bc
	ld b,0d5h
	push hl
	exx
	ex af,af'
	push af
	dec b
	jr nz,l6f4dh
	dec d
	or a
	jp nz,l4d06h
	adc a,a
	add a,l
l6f1ah:
	ld d,d
	jp 010abh
	add a,d
	jr z,$+63
	jp z,sub_4d7ah
	inc bc
	ld a,e
	ld c,h
	dec de
	ld (hl),c
	ld b,e
	ex (sp),hl
	inc e
	ld (bc),a
	ld a,(0fff6h)
	ld b,a
	ld a,(l4706h)
	add a,b
	ex de,hl
	jr nz,l6f39h
	sbc a,d
l6f39h:
	ld (bc),a
	ld hl,080e3h
	jr l6f43h
	call 002deh
	pop hl
l6f43h:
	pop de
	inc c
	pop bc
	pop af
	ex af,af'
	exx
	dec b
	ld l,e
	ret
	inc d
l6f4dh:
	pop hl
	inc d
	sub e
	ld a,003h
	scf
	rlca
	ld a,(l4cd5h)
	jr c,l6f1ah
	dec l
l6f5ah:
	jp po,0223ah
	call nc,0174ch
	sub 04ch
	call 0d4a6h
	jr z,l6f5ah
	ld a,(bc)
	rlca
	nop
	cp 0d2h
	jp nc,l4d9ah
	cp 028h
	ld (bc),a
	jp nc,l4da0h
	call l4cd7h
	sbc a,c
	ld (09391h),a
	ld c,b
	dec l
	ld (l4448h),hl
	ret po
	sbc a,c
	cp a
	ld e,b
	ld (l4804h),a
	add a,c
	sub (hl)
	rst 18h
	push hl
	add a,d
	ld b,c
	and 020h
	jp nz,l4dc1h
	ld b,0a4h
	jp z,0bdc8h
	ld c,d
	push af
	cp e
	ld (bc),a
	ld (bc),a
	jp z,l4de0h
	ld (hl),b
	ld h,d
	pop bc
	ld e,092h
	sub h
	ld (hl),b
	ld d,h
	pop bc
	ld h,e
	ld b,a
	add hl,bc
	sub a
	add hl,bc
	inc hl
	add a,e
	jp nz,0d5b4h
	defb 0fdh,00ah,08ch ;illegal sequence
	adc a,b
	ld a,(bc)
	ld l,e
	pop hl
	ld c,(hl)
	add a,d
	ex af,af'
	inc hl
	ld d,a
	or 042h
	ld e,h
	ret nz
	call sub_47b5h
	ld d,e
	xor b
	sub l
	ld l,0f7h
	ld h,a
	ld l,032h
	or 0bch
	ld c,d
	rst 8
	jp p,00695h
	xor (hl)
	add hl,hl
	xor h
	inc l
	add hl,sp
	ld e,a
l6fdbh:
	ld c,e
	adc a,(hl)
	sbc a,d
	push hl
	or 0c4h
	sbc a,h
	jp 0f690h
	ld (hl),d
	ld c,(hl)
	inc l
	call 08d5dh
	ld c,b
	ld h,b
	ld (bc),a
	ld e,002h
	ld (hl),l
	dec b
	adc a,(hl)
	xor b
	ld d,l
	adc a,d
	inc de
	res 1,b
	xor a
	xor c
	jp pe,l44a7h
	ld (l45ach),a
	ld a,(0e9f3h)
	ld b,b
	call z,sub_6020h
	call 000a3h
	ld e,b
	ld a,(0c39fh)
	and 040h
	call nz,0b521h
	ret c
	inc hl
	ld d,(hl)
	pop bc
	adc a,l
	call nz,021afh
	add a,b
	dec c
	cp (hl)
l701fh:
	jp z,l4eb5h
	ld (hl),a
	call 01334h
	inc bc
	ld d,a
	jr nz,$+54
	nop
	call l57d8h
	call sub_51cdh
	call 020c0h
	ld c,a
	ld a,040h
	ld c,c
	pop bc
	call 0042eh
	ld c,a
	jr nz,l7048h
	call sub_6315h
	jr l6fdbh
	ld (bc),a
	ld h,(hl)
	xor d
	sub d
l7048h:
	ld (bc),a
	jr nc,l704dh
	ld c,b
	ld l,a
l704dh:
	ld (bc),a
	ld (hl),d
	ld (bc),a
	dec l
	dec b
	xor (hl)
	inc h
	adc a,000h
	dec e
	ld c,a
	call sub_4f02h
	ei
	call 05f0ch
	dec b
	sbc a,h
	ld sp,000deh
	jp (hl)
	ei
	and 010h
	jp nz,l4f18h
	ld b,03ah
	rla
	ld c,a
	or a
	ret nz
	ld l,h
	ld b,d
	ld b,0c3h
	ld d,c
	dec b
	ret nz
l7078h:
	sub d
	rlca
	sub d
	ld a,(de)
	jp pe,0011ah
	inc de
	ld e,(hl)
	jr nz,l701fh
	inc b
	ld a,0e0h
	ld (08aa4h),a
	and d
	rst 8
	ld (hl),b
	ld h,h
	ret z
	add a,a
	ei
	jr nc,$-51
	ld (hl),a
	add hl,bc
	jp nz,l5043h
	ld c,a
	dec h
	ld b,0c9h
	ld (01702h),a
	jp nz,004c6h
	call m,0c208h
	ld a,(0e5d0h)
	jp l4f5ch
	ld b,d
	ld d,009h
	ld l,092h
	dec l
	dec e
	sub c
	add a,b
	ld a,(0c104h)
	sub b
	ex de,hl
	ld (09804h),a
	djnz l70c3h
	sbc a,c
	dec c
	jp nz,00c32h
	inc h
l70c3h:
	inc c
	and 007h
	jr nz,$+16
	ld a,005h
	add a,008h
	cp 060h
	jr nz,l7078h
	inc c
	ld c,b
	ld b,d
	inc d
	ld a,(0c200h)
	ld (0011ah),hl
	add a,b
	dec b
	dec b
	jp nz,00d21h
	pop bc
	ld b,(hl)
	ret z
	add a,0afh
	call 05f32h
	ld d,c
	ld hl,(0e8fbh)
	inc bc
	cp 0a4h
	ld b,006h
	jr nc,$-42
	ld h,062h
	dec c
	ld d,b
	sbc a,e
	ret nz
	add a,0eah
	ret p
	call z,099cch
	sbc a,b
	rlca
	and a
	call nz,sub_608dh
	ld e,e
	ld c,b
	jr c,$+60
	inc a
	ld a,(0c280h)
	dec bc
	ld de,0c240h
	ld a,083h
	add a,b
	ld e,a
	pop bc
	ld b,007h
	push de
	ld a,(hl)
	nop
	and 01fh
	cp 015h
	jp z,l5088h
	inc hl
	ret nz
	di
	jr l7177h
	add hl,bc
	cp 004h
	jr z,$+71
	rst 10h
	nop
	add a,d
	ld d,c
	call nz,sub_50bch
	pop de
	inc e
	push hl
	ldi
	ld bc,0e1b4h
	inc b
	ld a,(hl)
	inc a
	nop
	ld (de),a
	inc de
	inc de
	ld bc,0000dh
	add hl,bc
	ld a,(0358ch)
	add a,002h
	ld a,(0fbc0h)
	jp nz,088d9h
	jp m,001d1h
	ld b,d
	rrca
	ld (de),a
	ex de,hl
	ld c,008h
	inc bc
	push af
	rla
	nop
	dec hl
	ld a,(hl)
	cp 024h
	jr z,l71a1h
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
	call sub_5504h
	ld d,c
	jp l4ff2h
l7177h:
	ld c,03ch
	nop
	ld (hl),a
	cp 00ch
	jr z,$+20
	and 003h
	jr z,$+51
	inc b
	pop hl
	rrca
	dec hl
	add hl,hl
	ld b,h
	pop hl
	ld (hl),a
	ret po
	add hl,bc
	ld (hl),022h
l718fh:
	jp nc,03623h
	ld b,008h
	jr nc,l7196h
l7196h:
	inc hl
	rrca
	ld (hl),004h
	jp nc,0363eh
	ld c,e
	ld (bc),a
	ld l,022h
l71a1h:
	inc hl
	ld de,0853eh
	ld (hl),001h
	inc hl
	xor b
	xor b
	ld a,(hl)
	sub b
	ld (hl),a
	ret c
	rrca
	or b
	cp a
	adc a,h
	nop
	djnz $+51
	pop hl
	ld a,(0c235h)
	nop
	cp d
	ret c
	cp e
	ret nc
	ld a,(0c234h)
l71c1h:
	cp c
	nop
	ret c
l71c4h:
	sub 010h
	cp c
	ret nc
	ld a,0f0h
	ld (011a4h),a
	add a,e
	ld b,b
	ld (0c30fh),a
	jp m,0c950h
	ld a,(hl)
	ld a,(bc)
	sub 008h
	ld c,a
	push hl
	ld (hl),a
	jr l71dfh
	ld d,a
l71dfh:
	add a,01eh
	ld e,a
	ld hl,0c229h
	call p,sub_7e10h
	dec hl
	cp d
	inc b
	jp c,l5098h
	cp e
	jp nc,l7e03h
sub_71f2h:
	ld h,(hl)
	cp c
	ex af,af'
	ld (00a61h),a
	ld a,(0a551h)
	cp b
	call p,sub_5024h
	ld a,b
l7200h:
	add a,e
	ld c,h
	jp nc,0e105h
	jr c,l718fh
	ld b,l
	ld (hl),a
	inc hl
	sbc a,c
	or l
	and 00ch
	ld b,a
	ld de,0189ch
sub_7212h:
	add hl,de
	ld (hl),d
	jp c,01a23h
	ld d,c
	cp (hl)
	scf
	or d
	scf
	call nz,0c28dh
sub_721fh:
	ret nz
	dec hl
	sbc hl,de
	ret
	cp h
	ld de,09610h
	inc hl
	ld e,c
	inc de
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
	jr nc,l71c4h
	ld (l4a62h),a
	dec e
	sub 080h
	add a,h
	ld c,e
	dec (hl)
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
	ld a,d
	ld l,b
	jp 011bah
	push de
sub_725dh:
	rla
	add hl,de
	push hl
	ld l,a
	inc c
	dec bc
	nop
	nop
	ld (hl),h
	add hl,de
	call 00045h
	ld bc,00ee1h
	sbc a,b
	call 005b4h
	pop hl
	inc b
	ret
	call sub_6310h
	ld b,(hl)
	res 4,b
	inc bc
	jp c,008beh
	ld d,c
	cp 0e3h
	jp nc,02b04h
	cp 004h
	ld (de),a
	ld c,001h
	jr c,l7290h
	call pe,00ec0h
	pop hl
	ret c
l7290h:
	ld a,(0da60h)
	di
	add hl,de
	ld c,(hl)
	ret z
	ex (sp),hl
	ld hl,(0f23dh)
	ld h,051h
	ld a,c
	or 027h
	jp nz,0e778h
	inc de
	ret
	ex af,af'
	add hl,sp
	ex af,af'
	ld d,038h
	ex af,af'
	ld h,c
	ld hl,(00087h)
	ld (hl),c
	in a,(059h)
	sbc a,h
	ld c,049h
	and (hl)
	sub b
	inc bc
	ret nz
	ld a,(00147h)
	pop bc
	ld h,a
	ld a,(0c148h)
	ld l,a
	ld a,(hl)
	inc c
	adc a,(hl)
	inc hl
	adc a,c
	jr c,$-109
l72c9h:
	ld (0327dh),hl
	dec c
	ld a,h
	ld (00015h),a
	ld d,000h
	ld hl,l6547h
	add hl,de
	ld (hl),c
	dec hl
	dec d
	ex de,hl
	ld bc,00910h
	xor l
	nop
	ld a,(hl)
	or a
l72e2h:
	jr z,l7301h
	add hl,bc
	add a,004h
	jr $+6
	or l
	inc de
	inc b
	ld c,004h
	xor l
	add hl,bc
	inc b
	ld h,c
	inc b
	inc b
	ret nz
	ex de,hl
	or c
l72f7h:
	or b
	ret
	push hl
	ld de,02be2h
	call c,01452h
	ex af,af'
l7301h:
	inc bc
	add hl,de
	djnz $-5
	or c
	cp e
	push hl
	ld e,0f6h
	pop af
	adc a,c
	ld sp,hl
	sbc a,b
	inc de
	ret m
	ld (bc),a
	push af
	or h
	or l
	di
	rlca
	rlca
	call p,021c1h
	ccf
	sbc a,h
	add a,a
	adc a,e
	inc b
	xor d
	ld h,b
	add a,a
	ld b,a
	add a,a
	nop
	add a,b
	add a,012h
	ld (l564eh),a
	ld hl,0d14eh
	ld de,01bcdh
	dec b
	jp nz,08e68h
	ld b,c
	ld d,(hl)
	ld sp,l5690h
	ld (0028ah),a
	djnz $-114
	ld d,(hl)
	ld d,c
l7341h:
	ld (bc),a
	jp l4a91h
	ld d,d
	cp h
	jr nc,l72c9h
	ld c,b
	ld a,(0c9f2h)
	ld b,003h
	di
	jp c,0fb8ah
	jp nz,03204h
	ld (0ca87h),a
	ret p
	ld c,e
	adc a,c
	dec bc
	sub 00ah
	ret z
	jr z,$+6
	add hl,bc
	dec c
	jp nz,07a05h
	ld (0c1f7h),a
	ld a,e
	ld hl,(00961h)
	and (hl)
	ld h,e
	add hl,de
	jp z,01380h
	ld d,e
	ld b,006h
	push bc
	ld b,022h
	ex af,af'
	push bc
	call z,sub_5e04h
	push hl
	ld hl,l5552h
	ret nz
	exx
	ld d,h
	ret nz
	jr nz,$-51
	ld b,a
	jp z,0dd05h
	ld d,d
	and 0feh
	add a,069h
	ld e,a
	ld b,(hl)
	sub c
	inc bc
	adc a,l
	ld d,(hl)
	jp 052e5h
	ld a,(bc)
	ld e,b
	inc bc
	ld a,(bc)
	ld hl,020a3h
	sbc a,c
	ld l,h
	ld a,(hl)
	dec e
	add a,l
	inc b
	pop hl
	inc hl
	pop bc
	rst 28h
	out (0bah),a
	ld (hl),08eh
	dec c
	inc b
	ld de,0b410h
	ld hl,(01158h)
	jr nc,l7341h
	ld b,d
	ld (00006h),hl
	call 054f1h
	jp l531eh
	ld hl,00932h
	ld d,l
	ld de,l5542h
	and c
	ld c,b
	call m,03e86h
	rlca
	ld (098c8h),a
	sub 085h
	jp p,0f4c1h
	ld hl,0c300h
	jp c,03468h
	or b
	ld d,c
	adc a,c
	ld b,h
	ld a,a
	call nz,09025h
	ld (bc),a
	ld l,h
	ld a,(bc)
	ret nc
	ld (08c70h),a
	sub 048h
	ld e,a
l73f1h:
	dec bc
	ld h,e
	ld (bc),a
	ld h,h
	ld d,(hl)
	sub (hl)
	sub c
	ld b,b
	call sub_5484h
	ld a,03fh
	ld (0d7d3h),a
	ret c
	ld e,b
	adc a,h
sub_7404h:
	ret nc
	dec (hl)
	ld hl,l7c12h
	ret
	and b
	or c
	rra
	jp c,097ebh
	adc a,h
	adc a,e
	ld l,a
	ld l,h
	adc a,b
	ret
	call z,0c451h
	add a,c
	ld d,e
	call 0f821h
	ret
	rst 0
	ld l,b
	dec a
	ld d,b
	ld (hl),a
	xor e
	ret nz
	inc sp
	ld (hl),a
	ret
	call 0ba66h
	ld e,b
	rst 30h
	ret pe
	nop
	ld a,(de)
	jp z,l53a9h
	rlca
	ld bc,007cah
	add a,b
	jp 0c10eh
	jp pe,0380ah
	ld h,(hl)
	and e
	rlca
	xor c
	ld a,0d4h
	xor l
	inc bc
	add hl,hl
	and h
	ld c,c
	di
	ld b,b
	jp nz,l612ch
	jp 0ca5ch
	add hl,hl
	inc c
	out (039h),a
	add a,c
	ld h,(hl)
	ld b,0d7h
	and (hl)
	ld b,h
	ld l,c
	ld c,c
	call 0ab5ah
	add a,c
	inc b
	ld d,h
	defb 0ddh,025h ;dec ixh
	pop bc
	jr l73f1h
	ld b,(hl)
	ret nz
	ld h,(hl)
	ret z
	inc de
	call 02c70h
	pop af
	ld c,011h
	rrca
	call nc,0fe85h
	ex af,af'
	dec h
	and e
	ld (de),a
	xor 081h
	ld c,d
	inc b
	ld c,(hl)
	adc a,d
	exx
	dec e
	nop
	jp nz,l5420h
	call sub_549fh
	ld hl,09630h
	xor c
	ld (0c4e5h),hl
	inc (hl)
	or 0edh
	ld l,(hl)
	dec de
	ld d,h
	add a,b
	jp nz,03d4eh
	jr $+35
	jr $+36
	or 098h
	sbc a,d
	cp 0f0h
	ld (hl),c
	jp nz,085d5h
	jr z,l74d0h
	jp c,0911ch
	sub e
	ld l,d
	dec de
	ld l,h
	dec de
	add a,(hl)
	ld (hl),b
	dec de
	adc a,d
	ret po
	jp nz,01b56h
	sub (hl)
	ld d,h
	ld a,(0e56ch)
	ld hl,(02a65h)
	or d
	xor d
	sub (hl)
	and b
	ld b,a
	inc l
	ld hl,0285dh
	ld (de),a
	xor a
	ld h,c
	sbc a,c
l74d0h:
	or h
	inc l
	add a,09dh
	ld de,01ffeh
	adc a,b
	ld c,d
	cp d
	inc h
	ld h,b
	ld (bc),a
	ld l,a
	ld (bc),a
	scf
	add a,h
	ld (bc),a
	add a,d
	ld d,(hl)
	xor 0f2h
	ld e,b
	djnz l755ch
	adc a,c
	ld (bc),a
	jr z,l7543h
	xor (hl)
	ld h,088h
	sbc a,b
	sbc a,07bh
	ld d,(hl)
	jp nz,0e0dah
	ld a,b
	daa
	cp (hl)
	ld d,h
	ret po
l74fch:
	add a,h
	ld a,l
	ret po
	jp (hl)
	ld a,(hl)
	ld d,(hl)
	pop bc
	and e
	ld d,h
	ld a,(bc)
	ld e,b
	inc bc
	ld a,(bc)
	inc hl
	dec de
	ex de,hl
	ld hl,05a7bh
	xor h
	sub d
	add a,c
	push de
	halt
	inc b
	dec h
	jp nz,01ba2h
	add a,c
	ld e,(hl)
	xor b
	inc (hl)
	sbc hl,hl
	or 0b0h
	ld (hl),l
	ld a,(l4448h)
	pop de
l7526h:
	jp z,0df9ah
	rst 0
	ld d,d
	and d
	ld (hl),b
	dec b
	ld d,l
	inc h
	ld a,(0b5f9h)
	jp c,0b188h
	ld (hl),b
	jp nz,0a9f5h
	inc de
	rst 10h
	add hl,bc
	ld de,(028d7h)
	ret
	and h
l7543h:
	adc a,051h
	ld e,a
	sub 0a9h
	halt
	halt
	dec h
	ld a,(l5f26h)
	add a,(hl)
	ld h,d
l7550h:
	ret m
	dec d
	ld a,(bc)
	ex de,hl
	pop hl
	ld bc,08b02h
	ld c,c
	call m,0206ch
l755ch:
	nop
	ei
	ld bc,l4051h
	ld bc,l4020h
	nop
	nop
	ld h,b
	ld b,b
	add a,b
	ld b,b
	and b
	ld h,b
	nop
	ld (hl),l
	ld h,b
	rrc d
	ld b,b
	nop
	add a,b
sub_7574h:
	ld h,b
	and b
	add a,b
	nop
	dec d
	add a,b
	jr nz,l74fch
	inc d
l757dh:
	ld a,(bc)
	nop
	ld bc,0a0a0h
	nop
	and b
	jr nz,l7526h
	ld e,094h
	inc d
	ld a,(bc)
	ret nz
	nop
	nop
	ret nz
l758eh:
	jr nz,l7550h
	ld b,b
	ret nz
	ld h,b
	ret nz
	nop
	add a,b
	ret nz
	and b
	ret po
	nop
	ret po
	jr nz,l757dh
	ld (bc),a
	ld b,b
	ret po
	ld h,b
	ret po
	add a,b
	ret po
	jr nz,l7550h
	ld c,e
	nop
	ld c,d
	ld b,b
	xor e
	ld (hl),02eh
	nop
	ld e,b
	ld l,d
l75b0h:
	ld c,(hl)
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
	and (hl)
	nop
	ld b,c
	add a,b
	ld h,c
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
	add a,a
	ld hl,l41c0h
	ret m
	ld b,b
	ret nz
	add a,c
	ret nz
	and c
	ret po
	nop
	ld bc,021e0h
	ret po
	ld b,c
	ret po
	ld h,c
	ret po
	nop
	add a,c
	ret po
	and c
	jr nz,$+3
	jr nz,l7627h
	jr nz,l7608h
l7608h:
	ld b,c
	jr nz,l766ch
	jr nz,l758eh
	jr nz,l75b0h
	nop
	ld e,h
	ld bc,000e2h
	ld (bc),a
	ld b,c
	nop
	ld h,c
	nop
	add a,c
	nop
	dec bc
	and 000h
	ld de,001d3h
	nop
	ret nc
	dec bc
	ld e,b
	ret po
	inc bc
l7627h:
	ld (bc),a
	call nz,09912h
	ld c,d
	nop
	ret p
	ld e,097h
	ld (bc),a
	add hl,bc
	ld (hl),c
	ld c,078h
	rrca
	ld (bc),a
	ret po
	dec e
	pop hl
	inc bc
	ld d,h
	add hl,hl
	defb 0ddh,002h,018h ;illegal sequence
	ld b,000h
	dec b
	inc de
	sub b
	ld h,l
	jr nz,l764ch
	add a,094h
	dec de
	rla
l764ch:
	ex af,af'
	ld h,e
	nop
	ld c,d
	ret po
	inc b
	ld a,d
	ld c,d
	push hl
	add hl,bc
	inc bc
	ld (de),a
	or e
	dec bc
	jr nz,l7688h
	ld (hl),a
	ld c,049h
	ld h,l
	jp 0777ah
	rst 30h
	nop
	nop
	inc bc
	ld (bc),a
	ld bc,00707h
	inc b
l766ch:
	dec b
	ld b,060h
	ld bc,0070bh
	dec b
	inc bc
	ex af,af'
	ld b,004h
	ld (bc),a
	dec b
	ld de,00401h
	jp c,0060eh
	add hl,de
	sub d
	nop
	inc bc
	nop
	inc b
	rra
	xor b
	rlca
l7688h:
	dec e
	ld de,0bdcdh
	xor b
	rst 38h
	rst 18h
	ld h,d
	or h
	cp a
	inc c
	jp nc,0214ch
	xor d
	jp p,l4d02h
	ld h,d
	ld bc,0c530h
	ld (hl),d
	cp 065h
	sbc a,d
	ret c
	nop
	sub 057h
	ld (05f42h),a
	inc b
	ld (l5c6bh),a
	ld (00b9fh),a
	and b
	sub d
	ld (bc),a
	and d
	ld (bc),a
	and e
	ld (bc),a
	ld c,c
	and c
	ld (bc),a
	and h
	ld (bc),a
	and l
	ld (bc),a
	inc h
	and (hl)
	ld (bc),a
	and a
l76c2h:
	ld (bc),a
	xor b
	adc a,e
	ld (bc),a
	xor c
	ld d,(hl)
	ret z
	ret nz
	ld hl,(0325eh)
	adc a,c
	ld h,d
	ld e,e
	ld b,l
	ret z
	inc sp
	ld b,d
	sbc a,(hl)
	ld (de),a
	rst 10h
	ld d,a
	ld a,0bdh
	ret nz
	ret
	ld d,a
	call 082d7h
	ld d,e
	ld d,l
	ld d,a
	ld de,l758eh
	ld h,c
	ld b,053h
	ld hl,00acah
	ld b,0efh
	ld c,a
	ld bc,0b003h
	inc l
	jr z,l76c2h
	jr c,l7759h
	ret
	adc a,l
	rrca
	ret nz
	jp 0575bh
	ex (sp),hl
	rst 0
	or a
	or b
	adc a,00bh
	push bc
	ld l,a
	inc b
	rla
	ex af,af'
	sbc a,(hl)
	and c
	cp 002h
	jp nz,01babh
	dec de
	out (04ch),a
	pop de
	ld hl,(l4c98h)
	inc de
	ex af,af'
	inc b
	ld a,(de)
	cp 064h
	jp c,00a9ah
	xor d
	ld bc,0d432h
	ld c,h
	ld a,0beh
	ld (004d5h),a
	ld (0a0f4h),hl
	inc (hl)
	ld c,h
	scf
	push hl
	ld l,e
	add hl,de
	djnz l7762h
	djnz $+94
	inc c
	djnz l7751h
	ld a,r
	and l
	nop
	scf
	ret z
	ld bc,0029ah
	ld hl,0b4e1h
	ld (de),a
	push de
	inc hl
	sbc a,002h
	sub l
	adc a,h
	inc b
	adc a,d
	adc a,a
	inc e
l7751h:
	adc a,b
	rst 28h
	call nz,0bfcdh
	ld d,l
	and l
	rla
l7759h:
	djnz l77d5h
	ex (sp),hl
	sub 00dh
	inc l
	add hl,sp
	inc bc
	sbc a,d
l7762h:
	ld a,(078a3h)
	ld h,l
	rst 8
	ld e,l
	nop
	call sub_5ffeh
	call sub_5c0eh
	call 010beh
	ld e,e
	call 0026dh
	push de
	ld e,d
	call 01941h
	ld (bc),a
	ld sp,hl
	ld e,c
	call 0022ah
	ld bc,l5872h+1
	call sub_5813h
	ld a,(02091h)
	or a
	jp nz,l628eh
	ld e,l
	pop af
	add a,(hl)
	ld (bc),a
	jp z,05d72h
	adc a,(hl)
	ld de,075f7h
	push hl
	cp h
	inc e
l779ch:
	ld a,(hl)
	sub c
	call c,0c2e3h
	nop
	add a,b
	cp 069h
	jp z,sub_5835h
	cp 06ah
	sub 004h
	ld l,e
	inc b
	ld d,c
	ld hl,0b1c5h
	dec e
	ld b,l
	pop bc
	daa
	add hl,bc
	ld a,000h
	ld (02106h),a
	call c,0a926h
	add a,l
	ld b,030h
l77c2h:
	and h
	ret nz
	djnz l77c2h
	ld a,048h
	ld (039a3h),a
	sub e
	add hl,bc
	sub l
	jp 04be8h
	sbc a,e
	add a,09bh
	sbc a,a
l77d5h:
	and d
	sbc a,h
	or a
	ld b,l
	sbc a,l
	or d
	jp pe,0ca99h
	ld b,d
	sbc a,b
	ld e,(hl)
	xor c
	inc h
	ld a,(098dah)
	ld e,a
	push af
	jp nc,0856dh
	ld e,b
	dec e
	cp h
	dec c
	add a,d
	ld b,0b9h
	ld e,(hl)
	ld a,(l5872h)
	and a
	ld l,l
	dec b
	ld d,(hl)
	ld d,d
	ld h,09ah
	jr l779ch
	ld e,b
	dec l
	ret
	ret z
	ld b,a
	adc a,e
	and h
	ld l,l
	and a
	adc a,a
	ld (hl),h
	jp nz,0c523h
	ld e,b
	sub 070h
	ld b,03eh
	inc d
	sub a
	push de
	ld b,c
	ld hl,l59aeh
	rst 10h
	adc a,d
	or d
	jr nc,l7877h
	sub 0d7h
	adc a,c
	inc b
	jp nc,01fdbh
	ld b,h
	rlca
	add a,a
	ld hl,0159fh
	dec c
	and e
	dec d
	ld c,l
	and e
	dec d
	pop af
	dec d
	ld c,(hl)
	and e
	dec d
	call z,01a15h
	ret nc
	dec d
	ret nc
	adc a,h
	dec d
	rlca
	ld e,c
	dec d
	ld c,(hl)
	ret nc
	dec d
	cp l
	dec d
	ld a,(de)
	pop bc
	dec d
	pop bc
	sbc a,e
	dec d
	dec e
	dec d
	rlca
	ld a,(de)
	ld hl,015dbh
	ld hl,0ea6ch
	dec b
	add a,(hl)
	ld d,h
	sub a
	ld b,(hl)
	add a,(hl)
	ld b,(hl)
	adc a,e
	ld c,e
	sub (hl)
	adc a,b
	ld e,d
	ret c
	cp 008h
	ld a,h
	ret nc
	ld a,013h
	adc a,e
	ret p
	pop af
	sub a
	ex af,af'
	add hl,bc
	or a
	inc hl
	ld l,c
	add hl,de
	ld b,b
	and c
	ld d,d
	push bc
l7877h:
	add a,l
	add hl,sp
	jp pe,08b5fh
	ld sp,01910h
	rst 8
	add a,d
	ld c,a
	push hl
	ld e,l
	ld a,0deh
	ld b,h
	or d
	ld (hl),e
	ld a,(bc)
	jp nz,03e1bh
	daa
	adc a,(hl)
	jr nc,l78cfh
	inc l
	jp z,0bd22h
	ret nz
	ret
	rst 38h
	nop
	ld (hl),00bh
	inc bc
	ld b,h
	nop
	ld d,b
	push bc
	ld b,h
	ld a,(bc)
	out (0c3h),a
	inc b
	ret nc
	rst 28h
	ld c,0d7h
	dec e
	sub a
	sub d
	dec e
	xor a
	ld c,085h
	or e
	or e
	inc l
	call 0f8b9h
	dec sp
	sub d
	ld c,08ah
	adc a,e
	adc a,036h
	jp nc,085a9h
	add a,d
	ret z
	cp 004h
	ret z
l78c5h:
	add a,e
	sub l
	ret nz
	call c,03f28h
	dec bc
	ret nz
	ld c,038h
l78cfh:
	ld e,0bah
	ld (bc),a
	xor 051h
	ret
	ld hl,(0cc9bh)
	xor 0a0h
	inc bc
	ld de,006d6h
	defb 0edh ;next byte illegal after ed
	ld bc,0ca52h
	ld h,c
	ld e,d
	ld de,00258h
	rlca
	adc a,b
	ld h,a
	rlca
	inc l
	ld bc,007c7h
	ld l,l
	rlca
	ld c,b
	ld a,b
	rlca
	ret z
	nop
	rst 0
	rlca
	ld a,(hl)
	rlca
	ld c,c
	adc a,c
	rlca
	sub b
	rla
	xor (hl)
	sub h
	rrca
l7902h:
	adc a,c
	xor e
	ld e,d
	jp 0d9dbh
	dec h
	dec b
	rrca
	ret z
	and (hl)
	dec b
	in a,(0cbh)
	ld d,0f0h
	ld l,h
	ld d,080h
	ld e,e
	adc a,h
	sub c
	dec de
	ld hl,0934ch
	ld d,h
	sbc a,0a6h
	djnz l7945h
	and h
	or a
	ld h,(hl)
	ld a,a
	jr nz,l7931h
	call c,02186h
	dec h
	or (hl)
	ld e,d
l792dh:
	sbc a,l
	ld e,e
	push bc
	dec b
l7931h:
	djnz l78c5h
	call m,0166dh
	xor e
	ld d,095h
	sub h
	sbc a,b
	adc a,l
	ret pe
l793dh:
	adc a,h
	inc hl
	jp (hl)
	jr z,l793dh
	jr l795ch
	nop
l7945h:
	inc e
	xor e
	or e
	ld c,05ch
	ld c,030h
	pop bc
	jp (hl)
	ld c,000h
	call sub_571ch
	and h
	ld b,b
	call nc,0b75ah
	jp z,066ffh
	ld e,d
l795ch:
	ld b,0eeh
	rst 10h
	call z,00545h
	cp 039h
	ld (de),a
	ld (hl),e
	ld b,l
	ld sp,hl
	ld (hl),l
	call nc,sub_71f2h
	inc e
	pop hl
	add hl,de
	ret
	ld e,e
	ld e,e
	ld (hl),d
	xor c
	dec d
	push de
	ret p
	ld e,(hl)
	inc bc
	or a
	jp z,089a8h
	jp z,l5b3ch
	xor d
	nop
	jp z,l5b44h
	ld c,06bh
	ld e,04ah
	jr nc,l792dh
	ex (sp),hl
	rlca
	ld b,b
	rlca
	and (hl)
	ld d,b
	rlca
	ret p
	cp c
	ld l,h
	jr nz,l799ah
	ld d,(hl)
	inc bc
	nop
l799ah:
	inc d
	nop
	ld (de),a
	adc a,l
	add a,(hl)
	sub 00eh
	ld e,d
	ld c,039h
	ld c,00eh
	ret z
	inc bc
	sub d
	jp (hl)
	and l
	ex de,hl
	inc l
	add a,a
	ld a,a
	jp z,05bb4h
	and l
	adc a,c
	ld e,e
	add a,l
	jp l5b6bh
	sub h
	or 005h
	pop bc
	xor l
	ld (de),a
	ld (hl),l
	ret po
	ld (bc),a
	out (075h),a
	ld l,d
	ld e,e
	adc a,h
	jp nc,09c04h
	sub e
	djnz $+18
	jp z,006b0h
	and b
	ld e,020h
	call c,03467h
	ret
	ld d,004h
	ret
	ld d,b
	call c,0f3bch
	jp p,0bd18h
	jp c,00418h
	ld d,c
	ld h,h
	and h
	ld de,l72e2h
	ld a,047h
	ld d,0c8h
	and b
	call 00503h
	call 0830ch
	ld c,e
	sbc a,b
	pop af
	xor a
	ld (hl),e
	sbc a,b
	xor b
	and b
	ret p
	ld d,c
	and d
	dec a
	ex de,hl
	inc b
	ld e,h
	ld a,(l5c0bh)
	ld b,031h
	add a,h
	ld b,00dh
	ld e,h
	inc a
	sbc a,l
	and h
	dec b
	ret nz
	xor c
	jr nc,$+19
	or c
	ld c,e
	add a,a
	xor h
l7a19h:
	dec de
	ld b,e
	ld b,h
	dec bc
	add hl,de
	inc de
	pop bc
	dec bc
	ld d,e
	sbc a,h
	ld b,0b2h
	ld b,099h
	inc c
	ld e,h
	ld a,h
	inc b
	ld d,d
	call nc,0c0dch
	ld l,04ch
	ld e,l
	inc bc
	ld e,003h
	ld h,0f7h
	ld e,h
	inc bc
	rst 20h
	inc bc
	ld hl,(039c0h)
	ld e,(hl)
	xor a
	xor (hl)
	inc bc
	dec sp
	ld (bc),a
	ret pe
	inc b
	rst 38h
	rst 38h
	call pe,0dfd6h
	dec b
	ld de,0020fh
	ld e,003h
	add hl,sp
	xor (hl)
	adc a,(hl)
	pop af
	ld h,e
	ld (bc),a
	xor (hl)
	inc b
	or h
	defb 0fdh,0a4h ;and iyh
	jr c,l7a19h
	adc a,e
	sbc a,l
	ret
	ld (hl),e
	or l
	ret p
	ld hl,l7c87h
	ld e,h
	ret nz
	ld b,a
	inc b
	cp 080h
	jp nz,l5cdfh
	cp h
	and d
	sbc a,(hl)
	sbc a,032h
	ld d,092h
	xor d
	xor d
	jp po,03290h
	inc bc
	jp c,02607h
	inc bc
	ld d,0feh
	rrca
	ret nz
	jp (hl)
	sub e
	dec de
	ret
	ld (hl),0e2h
	inc (hl)
	ld d,05dh
	call nc,036f2h
	ld (hl),h
	add a,b
	ld (hl),03dh
	call nc,0ec36h
	ld (hl),003h
	or 036h
	ld (hl),h
	ld l,h
	ld (hl),04dh
	sbc a,a
	ld (hl),002h
	ld (hl),006h
	sub (hl)
	out (0d5h),a
	sbc a,e
	sub (hl)
	ld d,h
	dec sp
	inc bc
	or l
	and l
	dec c
	or h
	cp d
	ex (sp),hl
	sbc a,0b4h
	ld (hl),d
	inc h
l7ab7h:
	ex (sp),hl
	ld b,b
	ld (hl),b
	jp z,05d83h
	daa
	cp 068h
	ld d,h
	ld bc,0648ah
	djnz l7ab7h
	sub d
	cp a
	ld a,(bc)
	and h
	ld b,h
	ei
	sub d
	ld a,(bc)
	sbc a,e
	cp d
	adc a,h
	ret po
	rst 38h
	add a,03fh
	inc bc
	dec h
	exx
	cp (hl)
	dec de
	and d
	adc a,(hl)
	halt
	or c
	adc a,e
	ld hl,l5dbbh
	adc a,h
	ld d,(hl)
	jp z,08105h
	ld a,(0c104h)
	and 0fdh
	ld (l4e04h),a
	xor a
	jp nc,l50d9h
	rst 18h
	ld l,0cbh
	dec b
	rst 18h
	jp po,086eeh
	ld b,b
	ld c,029h
	inc h
	xor 09dh
	or b
	ld h,b
	rst 30h
	ld e,l
	call z,sub_46a7h
	ld b,a
	sub (hl)
	add a,h
	cp 063h
	jp c,l72f7h
	ld a,b
	ld e,e
	jp nc,0a104h
	add a,0f1h
	and b
	ld a,042h
	ld (0ae4ch),a
	inc b
	ld a,(de)
	rst 30h
	ld e,05eh
	sbc a,(hl)
	add hl,hl
	ld e,(hl)
	xor b
	ld e,b
	jr l7b33h
	ld a,067h
	ld hl,(00f14h)
l7b2eh:
	ld c,a
	ld (de),a
	ld a,(bc)
	ld a,(bc)
	ret po
l7b33h:
	inc d
	ld e,(hl)
	add a,d
	or (hl)
	dec b
	sbc a,h
	call pe,09080h
	inc bc
	cp 00ah
	ret nz
	sub h
	xor h
	ld l,a
	sbc a,e
	cp c
	ld a,(00f1ch)
	jp (hl)
	inc e
	dec a
	inc e
	sub c
	sub 0b6h
	dec b
	ei
	ret p
	ld a,053h
	rla
	call m,00482h
	call m,sub_519ah
	ld a,b
	jp p,03855h
	sbc a,e
	ld h,b
	adc a,a
	add a,b
	and b
	ret
	ld (hl),a
	ld b,(hl)
	rlca
	jp nz,0f802h
	nop
	ld a,b
	inc bc
	ld e,h
	ret nc
	ld sp,0d008h
	inc e
	or c
	call c,0520eh
	ld c,088h
	ld a,(de)
	rst 18h
	jp (hl)
	sbc a,b
	ld l,h
	sub (hl)
	inc bc
	ld (hl),h
	jp po,03a06h
	ld d,h
	ld (bc),a
	add a,012h
	cp 0c0h
	jp nz,l40d3h
	out (060h),a
	ld (063ach),a
	xor b
	and b
	jp po,0a0e6h
	cp 006h
	jp c,l4ef5h
	ld e,(hl)
	add a,h
	adc a,c
	sub (hl)
	ld e,(hl)
	xor a
	add a,e
	call nz,0063ah
	sub 023h
	ld de,00432h
	ld a,(l4397h)
	ld (0fe03h),hl
	rst 38h
	or d
	ld h,077h
	ld c,075h
	jp 0990ch
	dec l
	adc a,015h
	ex af,af'
	dec b
	ld l,(hl)
	ld e,c
	call m,0c951h
	sub l
	ld e,e
	ld de,069a7h
	sbc a,b
	ld l,c
	and h
	add hl,sp
	di
	add hl,de
	adc a,b
	djnz $-116
	inc bc
	ld d,b
	sub a
	ret pe
	dec d
	nop
	and c
	ld a,b
	ld a,c
	ex af,af'
	ld a,c
	dec b
	ld a,b
	inc b
	ld d,a
	or l
	dec sp
	ld (bc),a
	inc bc
	rst 0
	inc b
	daa
	ld bc,00302h
	dec hl
	ld (bc),a
	ld bc,l7902h
	inc b
	ret p
	ex af,af'
	sbc a,h
	nop
	inc bc
	inc bc
	xor l
	inc bc
	ld bc,0e702h
	inc b
	ex af,af'
	jp nz,l7200h
	inc b
	inc bc
	inc b
	or a
	ld bc,00402h
	sbc a,a
	ex af,af'
	add hl,bc
	nop
	dec b
	inc bc
	jp z,00105h
l7c12h:
	sbc a,002h
	inc b
	ld a,h
	ex af,af'
	ld hl,0ff00h
	ld a,(0a8d6h)
	ld e,d
	rst 10h
l7c1fh:
	ld b,l
	ld d,a
	rst 18h
	inc bc
	ld d,h
	out (05fh),a
	dec d
	ld hl,l5f43h
l7c2ah:
	call nc,08d48h
	jp nz,01c15h
	ld h,b
	xor a
	sbc a,b
	and b
	ld (05f42h),a
	ret
	ld hl,03d00h
	ld h,b
	ld b,096h
	ld c,099h
l7c40h:
	ld de,0d004h
	defb 0edh ;next byte illegal after ed
	sbc a,c
	sbc hl,sp
	and e
	ld bc,000d3h
	sbc a,b
	add hl,de
	djnz $-11
	ret
	ei
	ld d,0ebh
	nop
	ld (0328eh),a
	ld (0fc5ah),a
	ld (0d1eeh),a
	rlca
	and l
	call m,00733h
	ret nz
	push bc
	call m,sub_682ah
	jp p,0ba07h
	defb 0fdh,01eh,068h ;illegal sequence
	push af
	rlca
	or l
	ld l,(iy+072h)
	ld sp,hl
	rrca
	ld a,068h
	defb 0fdh,007h,0aah ;illegal sequence
	defb 0fdh,03fh,0e0h ;illegal sequence
	rlca
	ld e,h
	cp 038h
	ld h,(hl)
	nop
	rla
	inc e
	cp 050h
l7c87h:
	inc b
	rrca
	sbc a,h
	ld hl,(00f07h)
	pop hl
	exx
	ld b,a
	ret nz
	rst 38h
	ld a,(bc)
	rrca
	ret nc
	rlca
	call z,00bffh
	rrca
	ret po
	ld e,a
	rst 38h
	dec h
	ld l,(hl)
	inc de
	rlca
	call z,032c7h
	ld d,077h
	inc bc
	rst 38h
	ld c,e
	ld a,(de)
	ld e,a
	add a,c
	rst 38h
	ld h,h
	dec e
	rlca
	and c
	cp h
	cp 048h
	ld hl,0c00fh
	cp 028h
	dec h
	ret po
	rra
	cp 064h
	ld (hl),c
	jr z,l7d08h
	xor e
	ld d,e
	inc l
	rlca
	ld b,e
	ld d,l
	cp 00bh
l7cc9h:
	inc l
	ccf
	add a,c
	ld b,(iy+030h)
	rlca
	and c
	ld e,e
	defb 0fdh,016h,033h ;illegal sequence
	sub a
	inc e
	sbc a,h
	ld h,(hl)
	scf
	scf
	ld b,h
	rst 0
	ld a,(0cf8eh)
	ld c,b
	ld c,b
	ld a,0c7h
	push hl
	ld c,c
	rlca
	ret nz
	xor h
	ei
	ld e,h
	ld (hl),c
	ld b,e
	cpl
	sbc a,l
	xor b
	pop hl
	ld bc,0e6f3h
	jr nz,$-52
	ld (hl),061h
	ld a,0e4h
	ld (hl),c
	ld hl,(0b561h)
	ld a,b
	add a,054h
	ex af,af'
	rst 30h
	rra
	inc b
	ld (l612bh),a
l7d08h:
	ld hl,0a33ah
l7d0bh:
	adc a,c
	or h
	and e
l7d0eh:
	jr z,l7cc9h
	or b
	pop af
	jr nz,$+9
	ld c,b
	ld a,(086b4h)
	ld (bc),a
	jp m,l6159h
	xor a
	inc hl
	add a,(hl)
	ld a,b
	ld hl,l62d2h
	dec hl
	ld l,a
	ld (hl),a
	ld a,(00f21h)
	add a,(hl)
	ld e,a
	inc hl
	call 03a10h
	inc (hl)
	or d
	ld d,a
	ld a,(l5440h)
	ld (hl),01eh
	srl a
	add a,d
	ld d,a
	nop
	ld a,d
	rlca
	rlca
	and 003h
	ld (hl),a
	di
	out (010h),a
	sbc a,c
	ld a,08eh
	inc bc
	out (c),e
	ld a,d
	or b
	rst 18h
	ld d,a
	out (098h),a
	ld b,d
	jp p,0008ah
	jr z,l7d5eh
	in a,(098h)
	cp 099h
	jp z,0ac00h
l7d5eh:
	ld h,c
	ei
	ld a,0fbh
	add a,b
	ld b,a
	xor a
	ld d,077h
	inc hl
	inc hl
	ld (bc),a
	inc b
	ld (bc),a
	djnz l7d0eh
	ret
	set 6,d
	defb 0fdh,055h ;ld d,iyl
	ld (hl),e
	ld (bc),a
	inc h
	ld (hl),d
	ld (bc),a
	dec c
	ld (bc),a
	ei
	jr l7d89h
	djnz l7d0bh
	or c
	ld sp,0bc45h
	dec b
	ld a,(l624bh)
	rst 0
	ld d,h
l7d89h:
	inc bc
	rlca
	ld c,h
	ld h,b
	ld h,d
	ld b,021h
	ld c,l
	ld h,d
	ld c,011h
	ld a,l
	ld h,d
	ld b,0a2h
l7d98h:
	add a,b
	jr nz,$+100
	inc hl
	inc de
	djnz l7d98h
	inc h
	ld hl,00e7dh
	xor l
	ld c,010h
	ld (0877eh),a
	nop
	ld b,a
	ex af,af'
	ld c,(hl)
	add a,c
	dec hl
	ld c,(hl)
	dec b
	ld (de),a
	inc de
	ld (01279h),hl
	dec de
	call pe,01821h
	ld d,0cdh
	jp (hl)
	ld (bc),a
	jp z,0c32dh
	jp z,0c315h
	sbc a,032h
	ld a,(bc)
	dec b
	xor l
	jp p,03152h
	ld b,050h
	dec (hl)
	xor a
	ld (hl),e
	nop
	defb 0fdh,0c9h,01ah ;illegal sequence
	cp (hl)
	ret z
	inc a
	ld (de),a
	ld a,e
	ret
	ld h,b
	ld b,l
l7dddh:
	dec de
	ld a,(hl)
	dec a
	and (hl)
	inc b
	jr nz,l7de5h
	sbc a,h
l7de5h:
	ld h,b
	djnz l7dddh
	call 0e238h
	ld h,c
	jr c,l7e43h
	ret
	sub c
	call po,0f059h
	ld c,e
	nop
	ld (00006h),a
	dec b
	ld d,l
	inc bc
l7dfbh:
	jp po,l52c5h
	nop
	xor c
	and c
	nop
	rlca
l7e03h:
	inc b
	add a,e
	ld l,h
l7e06h:
	ld (0f201h),hl
	xor e
	nop
	or b
	ld l,d
	ld (01407h),hl
sub_7e10h:
	ld a,a
	nop
	nop
	ld (l4421h),hl
	call m,0c0ebh
	nop
	ld c,a
	ld bc,0000ch
	ldir
	ld a,0feh
	cp c
	cp d
	ld d,c
	cp (hl)
	ld d,c
	ex af,af'
	ld h,e
	djnz l7e06h
	ret
	inc e
	call 01cc9h
	or l
	call po,06032h
	sub a
	cp b
	pop hl
	jr c,l7dfbh
	rla
	ld (0c23ch),a
	jp c,00c90h
	jp l4fcch
l7e43h:
	dec b
	ld de,00006h
	add hl,de
	ld e,(hl)
	adc a,d
	add a,c
	push hl
	ld hl,06322h
	rlca
	ld c,h
	or h
	pop hl
	nop
	push de
	ret
	ld c,(hl)
	ld h,e
	sub (hl)
	ld h,e
	and d
	ld h,e
	nop
	xor (hl)
	ld h,e
	ld c,c
	ld h,h
	jp (hl)
	ld h,h
	ld b,07fh
	nop
	jp l6335h
	ld b,03fh
	push hl
	ld a,(hl)
	add a,000h
	ld (bc),a
	and b
	ld (hl),a
	ld h,000h
	ld l,a
	add hl,de
	ld b,(hl)
	ex af,af'
	inc hl
	ld a,(hl)
	pop hl
	dec hl
	nop
	add a,(hl)
	ld (hl),a
	nop
	dec hl
	ld a,(hl)
	add a,b
	ld (hl),a
	ret
	ret
	dec hl
	ld b,(hl)
	xor h
	rlca
	ld a,(de)
	cp (hl)
	ex af,af'
	ld (hl),a
	add a,b
	ld b,b
	halt
	ld h,e
	call po,04ca6h
	add hl,de
	or 05eh
	out (020h),a
	ld a,(hl)
	add a,e
	ld hl,08200h
	ld (hl),a
	cp 0f0h
	ret nz
	inc hl
	ld (bc),a
	ld (hl),002h
	dec hl
	ret
	ld bc,001ffh
	defb 0edh ;next byte illegal after ed
	jp (hl)
	call c,00907h
	sub e
	sbc a,d
	rlca
	ld (hl),c
	sbc a,l
	ld a,c
	dec b
	ex af,af'
	nop
	xor a
	ld de,0a505h
	add a,d
	ld d,d
	dec (hl)
	dec (hl)
	dec hl
	ld (bc),a
	ld a,b
	ret
	dec bc
	dec c
	inc (hl)
	inc (hl)
	ret
	ld c,c
	ret
	sbc a,l
	ld bc,0084bh
l7ed1h:
	jp nz,l63c5h
	ld l,b
	ex af,af'
	cp 002h
	and e
	jp nz,l63c4h
	ld a,07bh
	ld c,0a4h
	inc e
	defb 0fdh,06dh ;ld iyl,iyl
	rst 38h
	ld bc,00540h
	in a,(001h)
	dec b
	jp 0af64h
	dec b
	ld c,003h
	sbc a,(hl)
	cp 0fch
	rst 10h
	rlca
	ld e,0fdh
	adc a,(hl)
	cp 005h
	ld a,a
	add a,a
	ld a,c
	rlca
	rst 20h
l7effh:
	add hl,bc
	rlca
	rst 8
	dec hl
	ld (hl),a
	dec b
	inc bc
	sub e
	cp 0feh
	ld (bc),a
	ld (hl),e
	inc bc
	nop
	ex af,af'
	rst 38h
	defb 0fdh,09ah,0f1h ;illegal sequence
	inc hl
	ld h,b
	ld h,h
	sbc a,d
	sub d
	ld e,a
	ld h,h
	sbc a,d
	ld (080eah),a
	ld de,l63c9h
	call 02e19h
	ld h,e
	ret
	inc l
	jr c,l7effh
	ld a,05eh
	dec b
	ld e,063h
	ld l,a
	nop
	inc bc
	jr l7ed1h
	jp pe,039a7h
	ld b,a
	ld bc,01a9fh
	dec b
	ld bc,00deah
	out (03ch),a
	ld a,h
	rlca
	ld (hl),a
	dec hl
	dec b
	ld a,c
	inc bc
	ld e,e
	ld (bc),a
	inc bc
	or e
	ld h,l
	add hl,bc
	rlca
	add hl,bc
	sub c
	sbc a,a
	call po,sub_4700h
	ld h,l
	sbc a,a
	jr z,$+1
	sbc a,a
	ret pe
	ld l,c
	ld h,h
	adc a,l
	sbc a,a
	djnz l7f99h
	ld d,a
	pop bc
	dec h
	jp nc,l6536h
	pop hl
	ex af,af'
	ld (bc),a
	ex af,af'
	in a,(003h)
	ex af,af'
	or a
	inc b
	ex af,af'
	ld l,l
	dec b
	ex af,af'
	ld a,h
	ld a,(hl)
	out (0c3h),a
	ld b,d
	dec hl
	inc b
	rst 0
	jp 0ae23h
	pop de
	ret
	jp m,01550h
	nop
	ld e,h
	ld (hl),c
	ld h,e
	adc a,(hl)
	nop
	ld h,l
	xor e
	add a,a
	ld e,h
	push bc
	rrca
	scf
	ld l,e
	sbc a,(hl)
	dec d
	defb 0fdh,079h,00fh ;illegal sequence
	ld sp,00f73h
	inc b
l7f99h:
	rrca
	jp po,0274bh
	ld a,e
	jr z,l7fa6h
	ld b,00fh
	or e
	ex af,af'
	rrca
	exx
l7fa6h:
	ld a,(bc)
	rrca
	in a,(054h)
	nop
	rst 30h
	pop bc
	ld d,(hl)
	ld e,b
	ld e,d
	ld e,h
	ld e,(hl)
	rlca
	add a,b
	ld c,d
	ld c,h
	ld c,(hl)
	ld d,b
	ld d,d
	and d
	ld b,099h
	nop
	inc b
	ld b,008h
	ld a,(bc)
	inc h
	ld h,00ch
	ld c,00dh
	djnz $+20
	inc d
	ld d,08fh
	nop
	jr l7fe8h
	inc e
	ld e,020h
	ld (03c60h),hl
	jr nz,l7ffeh
	ld hl,(05f2ch)
	ld l,005h
	nop
	rst 38h
	ret p
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7fe8h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7ffeh:
	rst 38h
	rst 38h
