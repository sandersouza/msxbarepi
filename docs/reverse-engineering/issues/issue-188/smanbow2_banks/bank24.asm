; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank24.asm /tmp/smanbow2_bank.bin

	org 04000h

	ld c,l
	ld h,c
	ld l,(hl)
	ld h,d
	ld l,a
	ld (hl),a
	jr nz,l403ah
	jr nz,$+47
	jr nz,l4058h
	ld h,l
	halt
	ld h,l
	ld l,h
	jr nz,l4048h
	jr nz,$+47
	jr nz,l4062h
	ld l,c
	halt
	ld l,c
	ld l,(hl)
	ld h,a
	jr nz,l406dh
	ld l,h
	ld h,c
	ld l,(hl)
	ld h,l
	ld (hl),h
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
	jr nz,$+34
l403ah:
	jr nz,l405ch
	jr nz,l405eh
	jr nz,l4060h
	jr nz,l4062h
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
	rra
	nop
l4050h:
	nop
	nop
l4052h:
	ld bc,00302h
	inc b
l4056h:
	dec b
	nop
l4058h:
	ld bc,00302h
	inc b
l405ch:
	ld b,007h
l405eh:
	ex af,af'
	add hl,bc
l4060h:
	ld a,(bc)
	dec bc
l4062h:
	inc c
	dec c
	rlca
	ex af,af'
	add hl,bc
	ld a,(bc)
	dec bc
	ld c,00fh
	djnz l407eh
l406dh:
	ld (de),a
	inc de
	inc d
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l407eh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4129h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	rrca
	rrca
	rrca
	rrca
	dec de
	jr l4172h
	rla
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	djnz l41d1h
	ld l,008h
	ld h,c
	nop
	ld h,d
	rla
	inc l
	rrca
	ld (bc),a
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
l41d1h:
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	daa
	ex af,af'
	nop
	nop
	ld l,c
	ld bc,00463h
	add hl,bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	inc l
	add hl,bc
	nop
	nop
	nop
	add hl,de
	ld c,00fh
	cpl
	ex af,af'
	nop
	nop
	nop
	nop
	ld l,00fh
	ld bc,l6c16h
	rlca
	ld l,h
	rlca
	nop
	nop
	ld h,e
	inc b
	ld h,a
	ld (bc),a
	nop
	add hl,de
	dec c
	rrca
	ld sp,00008h
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	ld l,009h
	nop
	nop
	nop
	add hl,de
	ld d,00fh
	ld l,008h
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
	inc bc
	ld bc,l6c16h
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc bc
	rrca
	daa
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	ld h,a
	inc bc
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	ld hl,(00008h)
	nop
	nop
	nop
	daa
	inc c
	ld (bc),a
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	djnz l4279h
	daa
	ex af,af'
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	add hl,bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
l4279h:
	nop
	daa
	add hl,bc
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	daa
	ld b,000h
	nop
	nop
	nop
	ld hl,(0010ch)
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	nop
	add hl,de
	djnz l42a9h
	daa
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
l42a9h:
	nop
	ld hl,(00009h)
	nop
	nop
	add hl,de
	ld a,(bc)
	rrca
	inc l
	ex af,af'
	nop
	nop
	ld h,a
	ld (bc),a
	ld sp,0030ch
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	add hl,de
	inc b
	rrca
	ld l,008h
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,l6c16h
	rlca
	ld l,h
	rlca
	nop
	nop
	ld sp,00009h
	nop
	nop
	add hl,de
	djnz l42f1h
	ld l,008h
	nop
	nop
	ld h,a
	ld (bc),a
	ld l,00ch
	ld (bc),a
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
l42f1h:
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	daa
	ex af,af'
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	add hl,bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	ld l,009h
	nop
	nop
	nop
	add hl,de
	ld c,00fh
	cpl
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,l6c16h
	rlca
	ld l,h
	rlca
	nop
	nop
	ld h,a
	ld (bc),a
	nop
l4325h:
	nop
	nop
	add hl,de
	dec c
	rrca
	ld sp,00008h
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld d,00fh
	ld l,008h
	nop
	nop
	nop
	nop
sub_4348h:
	nop
	nop
	ld bc,l6c16h
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	ld h,a
	inc bc
	nop
	add hl,de
	inc bc
	rrca
	daa
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	ld hl,(00008h)
	nop
	ld h,a
	inc bc
	daa
	inc c
	ld (bc),a
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	add hl,de
	djnz l4399h
	daa
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
l4399h:
	nop
	daa
	add hl,bc
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	daa
	ld b,000h
	nop
	ld h,a
	ld (bc),a
	ld hl,(0010ch)
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	add hl,de
	djnz l43c9h
	daa
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	inc c
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
l43c9h:
	nop
	ld hl,(00009h)
	nop
	nop
	add hl,de
	ld a,(bc)
	rrca
	inc l
	ex af,af'
	nop
	nop
	ld h,a
	ld (bc),a
	ld sp,0000ch
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	add hl,de
	inc b
	rrca
	ld l,008h
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,l6c16h
	rlca
	ld l,h
	rlca
	nop
	nop
	ld sp,00009h
	nop
	nop
	add hl,de
	djnz l4411h
	ld l,008h
	nop
	nop
	ld h,a
	ld (bc),a
	cpl
	inc c
	ld (bc),a
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
l4411h:
	nop
	nop
	nop
	ld h,a
	ld bc,01900h
	rrca
	rrca
	daa
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	cpl
	add hl,bc
	nop
	nop
	nop
	add hl,de
	ld c,00fh
	cpl
	ex af,af'
	nop
	nop
	ld h,a
	ld bc,00267h
	ld bc,l6c16h
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	ld sp,00008h
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	nop
	nop
	add hl,de
	ld d,00fh
	ld l,008h
	nop
	nop
	nop
l4467h:
	nop
	nop
	nop
	ld bc,l6c16h
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	ld h,a
	inc bc
	nop
	add hl,de
	inc bc
	rrca
	daa
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
l448ah:
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	ld hl,(00008h)
	nop
	ld h,a
	inc bc
	ld sp,0020ch
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	ld h,a
	ld bc,01900h
	djnz l44b9h
	daa
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
l44b9h:
	nop
	ld sp,00009h
	nop
	nop
	add hl,de
	inc b
	rrca
	daa
	ld b,000h
	nop
	ld h,a
	ld bc,00267h
	ld bc,l6c16h
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
l44d8h:
	djnz l44e9h
	daa
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
l44e9h:
	nop
	ld h,a
	ld (bc),a
	nop
	nop
	nop
	add hl,de
	ld a,(bc)
	rrca
	inc l
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	ld h,a
	inc bc
	nop
	add hl,de
	inc b
	rrca
	ld l,008h
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,l6c16h
	rlca
	ld l,h
	rlca
l4518h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	djnz l4531h
	ld l,008h
	nop
	nop
	ld h,a
	inc bc
	inc sp
	inc c
	ld (bc),a
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
l4531h:
	nop
	nop
	nop
	ld h,a
	ld bc,01900h
	rrca
	rrca
	daa
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	inc sp
	add hl,bc
	nop
	nop
	nop
	add hl,de
	ld c,00fh
	cpl
	ex af,af'
	nop
	nop
	ld h,a
	ld bc,00000h
	ld bc,l6c16h
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	add hl,de
	dec c
	rrca
	ld sp,00008h
	nop
	nop
	nop
l4570h:
	nop
	nop
	add hl,bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld d,00fh
	ld l,008h
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	nop
	ld bc,l6c16h
	rlca
sub_458eh:
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
sub_4598h:
	inc bc
	rrca
	daa
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	ld hl,(00008h)
	nop
	nop
	nop
	jr c,l45c6h
	ld (bc),a
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
l45c6h:
	nop
	add hl,de
	djnz l45d9h
	daa
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
l45d9h:
	nop
	jr c,l45e5h
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	daa
	ld b,000h
l45e5h:
	nop
	ld h,a
	ld (bc),a
	nop
	nop
	ld bc,l6c16h
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	djnz l4609h
	daa
	inc b
	nop
	nop
	nop
	nop
	ld a,(00c0ch)
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
l4609h:
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	add hl,de
	ld a,(bc)
	rrca
	inc l
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	ld a,(00009h)
	nop
	nop
	add hl,de
	inc b
	rrca
	ld l,008h
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	nop
	ld bc,l6c16h
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld d,00fh
	ld l,008h
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,l6c16h
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc bc
	rrca
	daa
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	add hl,de
	rrca
	rrca
	ld hl,(00008h)
	nop
	nop
	nop
	dec sp
	inc c
	ld (bc),a
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	add hl,de
	djnz l4699h
	daa
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
l4699h:
	nop
	dec sp
	add hl,bc
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	daa
	ld b,000h
	nop
	ld h,a
	ld (bc),a
	ld a,(0020ch)
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	add hl,de
	djnz l46c9h
	daa
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
l46c9h:
	nop
	ld a,(00009h)
	nop
	nop
	add hl,de
	ld a,(bc)
	rrca
	inc l
	ex af,af'
	nop
	nop
	ld h,a
	ld (bc),a
	jr c,l46e6h
	ld (bc),a
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
l46e6h:
	nop
	add hl,de
	inc b
	rrca
	ld l,008h
	ld h,d
	jr nz,l46efh
l46efh:
	nop
	jr c,l46f6h
	ld (bc),a
	ld d,06ch
	rlca
l46f6h:
	ld l,h
	rlca
	ld l,d
	inc bc
	ld h,c
	nop
	dec sp
	ld a,(bc)
	nop
	add hl,de
	inc d
	rrca
	ld e,005h
	inc l
	ld a,(bc)
	ld h,d
	ld (de),a
	inc l
	ld a,(bc)
	ld bc,00016h
	nop
	ld h,d
	ld hl,(03362h)
	ld l,d
	ld bc,01063h
	nop
	add hl,de
	rrca
	rrca
	dec e
l471bh:
	dec b
	ld l,00ah
	inc l
	ld b,02eh
	ld a,(bc)
	inc bc
	ld d,000h
	nop
	ld l,h
	inc bc
	ld l,h
	add hl,bc
	ld h,e
	djnz l4799h
	add hl,bc
	nop
sub_472fh:
	add hl,de
	inc d
	rrca
	ld e,005h
	ld l,00ah
	ld l,006h
	ld l,00ah
	ld bc,00016h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	ld l,h
	add hl,bc
	ld h,c
	nop
	nop
	add hl,de
	ld d,00fh
	jr nz,$+7
	ld l,00ah
	ld l,006h
	ld l,00ah
	inc bc
	ld d,000h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	rla
	rrca
	ld e,005h
	nop
	nop
	ld l,006h
l4768h:
	ld l,c
	ld bc,01601h
	nop
	nop
	ld l,h
	inc bc
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	add hl,de
	add hl,de
	rrca
	ld d,005h
	inc l
	ld a,(bc)
	nop
	nop
	inc l
	ld a,(bc)
	inc bc
	ld d,000h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	nop
	nop
	ld h,c
	nop
	nop
	add hl,de
	dec de
	rrca
	add hl,de
	dec b
	nop
	nop
	inc l
	ld b,000h
l4799h:
	nop
	ld (bc),a
	ld d,000h
	nop
	ld l,h
	inc bc
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	dec de
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld d,000h
	nop
	ld l,h
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld d,00fh
	ld e,005h
	daa
	ld a,(bc)
	nop
	nop
	daa
	ld a,(bc)
	ld bc,00016h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	nop
	nop
	ld h,c
	nop
	nop
	add hl,de
	ld (de),a
	rrca
	add hl,de
	dec b
	daa
	ld a,(bc)
	daa
	ld b,027h
	ld a,(bc)
	inc bc
	ld d,000h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	add hl,de
	rrca
	dec h
	dec b
	add hl,hl
	ld a,(bc)
	daa
	ld b,029h
	ld a,(bc)
	inc bc
	ld d,000h
	nop
	ld l,h
	inc bc
	ld h,e
	ld b,061h
	nop
	ld h,e
	ld b,000h
	add hl,de
	inc d
	rrca
	daa
	dec b
	ld hl,(0290ah)
	ld b,02ah
	ld a,(bc)
	ld bc,00016h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	ld h,e
	ld b,061h
	nop
	nop
	add hl,de
	rrca
	rrca
	dec de
	dec b
	ld sp,02a02h
	ld b,031h
	ld (bc),a
	inc bc
	ld d,000h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	inc d
	rrca
	ld e,005h
	ld sp,03104h
	ld b,031h
	inc b
	ld bc,00016h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	ld d,00fh
	dec e
	dec b
	ld sp,03106h
	ld b,031h
	ld b,002h
	ld d,000h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	rla
	rrca
	ld e,005h
	ld sp,03108h
	ld b,031h
	ex af,af'
	ld bc,00016h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	add hl,de
	rrca
	jr nz,l4889h
	ld sp,0310ch
	ld b,031h
l4889h:
	inc c
	inc bc
l488bh:
	ld d,000h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	dec de
	rrca
	ld e,005h
	ld sp,0310ah
	ld b,031h
	ld a,(bc)
	ld bc,00016h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	rrca
	rrca
l48b2h:
	ld d,005h
	ld sp,03108h
	ld b,031h
	ex af,af'
	inc bc
	ld d,000h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	ld (de),a
	rrca
	add hl,de
	dec b
	ld sp,03106h
	ld b,031h
	ld b,002h
	ld d,000h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	ld d,00fh
	dec de
	dec b
	ld sp,03104h
	ld b,031h
	inc b
	inc bc
	ld d,000h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	rrca
	rrca
	ld e,005h
	ld sp,03102h
	ld b,031h
	ld (bc),a
	ld bc,00016h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	ld d,00fh
	add hl,de
	dec b
	nop
	nop
	ld sp,00006h
	nop
	inc bc
	ld d,000h
	nop
	ld l,h
	inc bc
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	dec de
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld d,000h
	nop
	ld l,h
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rla
	rrca
	rla
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld d,000h
	nop
	ld l,h
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	rrca
	dec de
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00016h
	nop
	ld l,h
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld (de),a
	rrca
	inc e
	dec b
	ld hl,(0000ah)
	nop
	ld hl,(0020ah)
	ld d,000h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	nop
	nop
	ld h,c
	nop
	nop
	add hl,de
	dec c
	rrca
	dec de
	dec b
	ld hl,(02a0ah)
	ld b,02ah
	ld a,(bc)
	ld bc,00016h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
sub_499dh:
	nop
	nop
	add hl,de
	ld (de),a
	rrca
	ld e,005h
	ld hl,(02a0ah)
l49a7h:
	ld b,02ah
	ld a,(bc)
	inc bc
	ld d,000h
	nop
	ld l,h
	inc bc
l49b0h:
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	inc d
	rrca
	inc e
	dec b
	ld hl,(02a0ah)
	ld b,02ah
	ld a,(bc)
	ld bc,00016h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	dec d
	rrca
	dec d
	dec b
	nop
	nop
	ld hl,(00006h)
	nop
	inc bc
	ld d,000h
	nop
	ld l,h
	inc bc
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	add hl,de
	rla
	rrca
	rla
	dec b
	inc l
	ld a,(bc)
	nop
	nop
	inc l
	ld a,(bc)
	ld (bc),a
	ld d,000h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	nop
	nop
	ld h,c
	nop
	nop
	add hl,de
	add hl,de
	rrca
	inc d
	dec b
	nop
	nop
	inc l
	ld b,000h
	nop
	inc bc
	ld d,000h
	nop
	ld l,h
	inc bc
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	dec d
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00016h
	nop
	ld l,h
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	rla
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld d,000h
	nop
	ld l,h
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
l4a4ah:
	dec d
	dec b
	inc l
	ld a,(bc)
	nop
	nop
	inc l
	ld a,(bc)
	inc bc
	ld d,000h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	nop
	nop
	ld h,c
	nop
	nop
	add hl,de
	dec d
	rrca
	add hl,de
	dec b
	ld sp,02c0ah
	ld b,031h
	ld a,(bc)
	ld bc,00016h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	dec c
	rrca
	dec d
	dec b
	ld sp,0310ah
	ld b,031h
	ld a,(bc)
	ld bc,00016h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	rla
	rrca
	rla
	dec b
	inc l
	ld a,(bc)
	ld sp,02c06h
	ld a,(bc)
	ld (bc),a
	ld d,000h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	dec d
	rrca
	dec d
	dec b
	dec h
	ld a,(bc)
	inc l
	ld b,025h
	ld a,(bc)
	inc bc
	ld d,000h
	nop
	ld l,h
	inc bc
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	inc d
	rrca
	inc e
	dec b
	ld e,00bh
	dec h
	ld b,01eh
	dec bc
	ld bc,00016h
	nop
	ld l,h
	inc bc
	ld h,e
	djnz l4b34h
	nop
	ld h,e
	djnz l4ad7h
l4ad7h:
	add hl,de
	dec d
	rrca
	dec de
	dec b
	jr nz,l4ae9h
	ld e,006h
	jr nz,l4aedh
	inc bc
	ld d,000h
	nop
	ld l,h
	inc bc
	ld h,c
l4ae9h:
	nop
	ld h,e
	djnz l4b4eh
l4aedh:
	nop
	nop
	add hl,de
	rla
	rrca
	ld e,005h
	jr nz,l4b01h
	jr nz,l4afeh
	jr nz,l4b05h
	ld bc,00016h
	nop
l4afeh:
	ld l,h
	inc bc
	ld h,c
l4b01h:
	nop
	ld h,c
	nop
	ld h,c
l4b05h:
	nop
	nop
	add hl,de
	add hl,de
	rrca
	inc e
	dec b
	jr nz,l4b19h
	jr nz,l4b16h
	jr nz,l4b1dh
	inc bc
	ld d,000h
	nop
l4b16h:
	ld l,h
	inc bc
	ld h,c
l4b19h:
	nop
	ld h,c
	nop
	ld h,c
l4b1dh:
	nop
	nop
	add hl,de
	dec c
	rrca
	jr nz,$+7
	jr nz,l4b31h
	jr nz,l4b2eh
	jr nz,l4b35h
	ld (bc),a
	ld d,000h
	nop
l4b2eh:
	ld l,h
	inc bc
	ld h,c
l4b31h:
	nop
	ld h,c
	nop
l4b34h:
	ld h,c
l4b35h:
	nop
	nop
	add hl,de
	djnz l4b49h
	inc e
	dec b
	nop
	nop
	jr nz,l4b46h
	nop
	nop
	inc bc
	ld d,000h
	nop
l4b46h:
	ld l,h
	inc bc
	nop
l4b49h:
	nop
	ld h,c
	nop
	nop
	nop
l4b4eh:
	nop
	add hl,de
	inc d
	rrca
	ld (00005h),hl
	nop
	nop
	nop
	nop
	nop
	ld bc,00016h
	nop
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	inc hl
	dec b
	jr nz,l4b79h
	nop
	nop
	jr nz,l4b7dh
	inc bc
	ld d,000h
	nop
	ld l,h
	rlca
	ld h,c
l4b79h:
	nop
	nop
	nop
	ld h,c
l4b7dh:
	nop
	nop
	add hl,de
	ld (de),a
	rrca
	inc e
	dec b
	jr nz,l4b91h
	jr nz,l4b8eh
	jr nz,l4b95h
	inc bc
	ld d,000h
	nop
l4b8eh:
	ld l,h
	rlca
	ld h,c
l4b91h:
	nop
	ld h,c
	nop
	ld h,c
l4b95h:
	nop
	nop
	add hl,de
	ld de,01b0fh
	dec b
	jr nz,l4ba9h
	jr nz,l4ba6h
	jr nz,l4badh
	inc bc
	ld d,000h
	nop
l4ba6h:
	ld l,h
	rlca
	ld h,c
l4ba9h:
	nop
	ld h,c
	nop
	ld h,c
l4badh:
	nop
	nop
	add hl,de
	rrca
	rrca
	add hl,de
	dec b
	dec h
	ld a,(bc)
	jr nz,l4bbeh
	dec h
	ld a,(bc)
	ld (bc),a
	ld d,000h
	nop
l4bbeh:
	ld l,h
	rlca
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	add hl,de
	dec c
	rrca
	dec de
	dec b
	ld hl,(0250ah)
	ld b,02ah
	ld a,(bc)
	ld bc,00018h
	nop
	ld l,h
	rlca
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
	ld l,h
	inc b
	nop
	nop
	ld l,h
	inc b
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	dec h
	dec b
	ld e,00bh
	nop
	nop
	ld e,00bh
	ld bc,00016h
	nop
	ld l,h
	inc bc
	ld h,e
	djnz l4c53h
l4c53h:
	nop
	ld h,e
	djnz l4c57h
l4c57h:
	add hl,de
	inc d
	rrca
	inc l
	dec b
	jr nz,l4c69h
	ld e,006h
	jr nz,l4c6dh
	inc bc
	ld d,000h
	nop
	ld l,h
	inc bc
	ld h,c
l4c69h:
	nop
	ld h,e
	djnz l4cceh
l4c6dh:
	nop
	nop
	add hl,de
	dec c
	rrca
	dec h
	dec b
	jr nz,l4c81h
	jr nz,l4c7eh
	jr nz,l4c85h
	ld bc,00016h
	nop
l4c7eh:
	ld l,h
	inc bc
	ld h,c
l4c81h:
	nop
	ld h,c
	nop
	ld h,c
l4c85h:
	nop
	nop
	add hl,de
	dec d
	rrca
	dec l
	dec b
	jr nz,l4c99h
	jr nz,l4c96h
	jr nz,l4c9dh
	inc bc
	ld d,000h
	nop
l4c96h:
	ld l,h
	inc bc
	ld h,c
l4c99h:
	nop
	ld h,c
	nop
	ld h,c
l4c9dh:
	nop
	nop
	add hl,de
	dec c
	rrca
	dec h
	dec b
	jr nz,l4cb1h
	jr nz,l4caeh
	jr nz,l4cb5h
	ld (bc),a
	ld d,000h
	nop
l4caeh:
	ld l,h
	inc bc
	ld h,c
l4cb1h:
	nop
	ld h,c
	nop
	ld h,c
l4cb5h:
	nop
	nop
	add hl,de
	ld d,00fh
	cpl
	dec b
	nop
	nop
	jr nz,l4cc6h
	nop
	nop
	inc bc
	rla
	nop
	nop
l4cc6h:
	ld l,h
	inc bc
	ld h,d
	inc l
	nop
	nop
	nop
	nop
l4cceh:
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
	dec b
	rrca
	ld hl,02508h
	ex af,af'
	ld h,d
	inc (hl)
	dec h
	ld c,007h
	ld d,062h
	ld d,06ch
	inc bc
	nop
	nop
	nop
	nop
	ld h,a
	ex af,af'
	nop
	add hl,de
	add hl,bc
	dec bc
	jr nz,$+10
	inc hl
	ex af,af'
	dec h
	ld c,06ch
	ex af,af'
	rlca
	ld d,000h
	nop
	ld l,h
	inc bc
	nop
	nop
	ld h,a
	ex af,af'
	nop
	nop
	nop
	add hl,de
	dec d
	dec bc
	ld e,008h
	ld hl,l6c08h
	ex af,af'
	dec h
	ld c,007h
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
sub_4d46h:
	nop
	add hl,de
	djnz l4d55h
	jr nz,$+10
	inc hl
	ex af,af'
	ld h,c
	nop
	daa
	inc bc
	ld bc,00016h
l4d55h:
	nop
	nop
	nop
	nop
	nop
	ld h,d
	ld de,0036bh
	nop
	add hl,de
	inc d
	dec bc
	inc e
	ex af,af'
	ld e,008h
	ld hl,(l6b03h)
	inc bc
	rlca
	ld d,000h
	nop
	ld l,h
	inc bc
	nop
	nop
	ld l,e
	inc bc
	ld l,e
	inc bc
	nop
	add hl,de
	rla
	dec bc
	rla
	ex af,af'
	add hl,de
	ex af,af'
	ld l,e
	inc bc
	ld l,e
	inc bc
	ld bc,00017h
	nop
	ld h,d
	dec de
	ld l,d
	ld (bc),a
	ld l,e
	inc bc
	ld h,c
	nop
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
l4d9ch:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4da9h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	dec bc
	rrca
	ld h,c
	nop
	ld hl,(02a0dh)
	dec c
	rlca
	inc d
	ld l,d
	dec b
	ld b,00fh
	ld h,d
	inc l
	ld h,h
	djnz $+102
	djnz l4ddah
	nop
	rrca
	dec b
l4ddah:
	rrca
	rrca
	nop
	nop
	ld (hl),008h
	ld (hl),009h
	ld (bc),a
	nop
	ld (de),a
	dec b
	ld (de),a
	rrca
	nop
	nop
	ld h,h
	djnz l4e51h
	djnz l4defh
l4defh:
	nop
	rla
	dec b
	rla
	rrca
	nop
	nop
	jr c,l4e00h
	jr c,l4e03h
	inc bc
	nop
	dec c
	dec b
	dec c
	rrca
l4e00h:
	nop
	nop
	ld h,h
l4e03h:
	djnz l4e69h
	djnz l4e0ah
	nop
	rrca
	dec b
l4e0ah:
	rrca
	rrca
	inc sp
	ld a,(bc)
	ld l,00ah
	daa
	add hl,bc
	ld bc,01200h
	dec b
	ld (de),a
	rrca
	ld h,a
	ld (bc),a
	ld h,a
	inc b
	nop
	nop
	nop
	nop
	ld d,005h
	ld d,00fh
	ld h,h
	djnz l4e27h
l4e27h:
	nop
	ld l,d
	ld bc,00003h
	rla
	dec b
	rla
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld h,h
	djnz l4e37h
l4e37h:
	nop
	ld d,005h
	ld d,00fh
	ld h,d
	ld d,062h
	ld d,01bh
	add hl,bc
	ld (bc),a
	nop
	inc d
	dec b
	inc d
	rrca
	dec de
	add hl,bc
	nop
	nop
	ld h,c
	nop
	nop
	nop
	rrca
l4e51h:
	dec b
	rrca
	rrca
	ld h,c
	nop
	nop
	nop
	rrca
	add hl,bc
	ld bc,00a00h
	dec b
	ld a,(bc)
	rrca
	rrca
	add hl,bc
	nop
	nop
	ld h,c
	nop
	nop
	nop
	rrca
l4e69h:
	dec b
	rrca
	rrca
	ld h,c
	nop
	nop
	nop
	dec de
	add hl,bc
	ld (bc),a
	nop
	dec c
	dec b
	dec c
	rrca
	dec de
	add hl,bc
	nop
	nop
	ld h,c
	nop
	inc bc
	nop
	inc d
	dec b
	inc d
	rrca
	ld h,c
	nop
	nop
	nop
	rrca
	add hl,bc
	inc bc
	nop
	rrca
	dec b
	rrca
	rrca
	rrca
	add hl,bc
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld (de),a
	dec b
	ld (de),a
	rrca
	ld h,c
	nop
	nop
	nop
	dec de
	add hl,bc
	ld bc,01400h
	dec b
	inc d
	rrca
	dec de
	add hl,bc
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld d,005h
	ld d,00fh
	ld h,c
	nop
	nop
	nop
	rrca
	add hl,bc
	inc bc
	nop
	rla
	dec b
	rla
	rrca
	rrca
	add hl,bc
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld d,005h
	ld d,00fh
	ld h,c
	nop
	nop
	nop
	dec de
	add hl,bc
	ld (bc),a
	nop
	inc d
	dec b
	inc d
	rrca
	dec de
	add hl,bc
	ld h,d
	ld de,00061h
	nop
	nop
	dec bc
	dec b
	dec bc
	rrca
	ld h,c
	nop
	ld hl,(02a0fh)
	dec c
	ld bc,00600h
	dec b
	ld b,00fh
	ld h,d
	inc l
	ld h,h
	djnz $+102
	djnz l4ef7h
l4ef7h:
	nop
	rrca
	dec b
	rrca
	rrca
	ld (hl),009h
	ld (hl),008h
	ld (hl),009h
	ld (bc),a
	nop
	ld (de),a
	dec b
	ld (de),a
	rrca
	ld h,h
	djnz l4f6fh
	djnz l4f71h
	djnz l4f12h
	nop
	rla
	dec b
l4f12h:
	rla
	rrca
	jr c,l4f1fh
	jr c,l4f20h
	jr c,l4f23h
	inc bc
	nop
	rrca
	dec b
	rrca
l4f1fh:
	rrca
l4f20h:
	ld h,h
	djnz l4f87h
l4f23h:
	djnz l4f89h
	djnz l4f27h
l4f27h:
	nop
	dec c
	dec b
	dec c
	rrca
	inc sp
	ld a,(bc)
	ld l,00ah
	daa
	ld a,(bc)
	ld bc,00500h
	dec b
	dec b
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
	dec b
	ex af,af'
	rrca
	ld h,h
	djnz l4f47h
l4f47h:
	nop
	ld l,d
	ld bc,00000h
	dec c
	dec b
	dec c
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld h,h
	djnz l4f57h
l4f57h:
	nop
	ld de,01105h
l4f5bh:
	rrca
	ld h,d
	ld d,062h
	ld d,01bh
	add hl,bc
	ld (bc),a
	nop
	inc d
	dec b
	inc d
	rrca
	dec de
	add hl,bc
	nop
	nop
	ld h,c
	nop
	nop
l4f6fh:
	nop
	rrca
l4f71h:
	dec b
	rrca
	rrca
	ld h,c
	nop
	nop
	nop
	rrca
	add hl,bc
	ld bc,00a00h
	dec b
	ld a,(bc)
	rrca
	rrca
	add hl,bc
	nop
	nop
	ld h,c
	nop
	nop
l4f87h:
	nop
	ld (de),a
l4f89h:
	dec b
	ld (de),a
	rrca
	ld h,c
	nop
	nop
	nop
	dec de
	add hl,bc
	ld (bc),a
	nop
	ld a,(bc)
	dec b
	ld a,(bc)
	rrca
	dec de
	add hl,bc
	nop
	nop
	ld h,c
	nop
	inc bc
	nop
	inc d
	dec b
	inc d
	rrca
	ld h,c
	nop
	nop
	nop
	rrca
	add hl,bc
	inc bc
	nop
	ld a,(bc)
	dec b
	ld a,(bc)
	rrca
	rrca
	add hl,bc
	nop
	nop
	ld h,c
	nop
	inc bc
	nop
	ld d,005h
	ld d,00fh
	ld h,c
	nop
	nop
	nop
	dec de
	add hl,bc
	ld bc,00a00h
	dec b
	ld a,(bc)
	rrca
	dec de
	add hl,bc
	nop
	nop
	ld h,c
	nop
	nop
	nop
	rla
	dec b
	rla
	rrca
	ld h,c
	nop
	nop
	nop
	rrca
	add hl,bc
	inc bc
	nop
	dec bc
	dec b
	dec bc
	rrca
	rrca
	add hl,bc
	nop
	nop
	ld h,c
	nop
	nop
	nop
	add hl,de
	dec b
	add hl,de
	rrca
	ld h,c
	nop
	nop
	nop
	dec de
	add hl,bc
	ld (bc),a
	nop
	dec c
	dec b
	dec c
	rrca
	dec de
	add hl,bc
	ld h,d
	ld de,00061h
	nop
	nop
	dec bc
	dec b
	dec bc
	rrca
	ld h,c
	nop
	cpl
	rrca
	cpl
	ld a,(bc)
	ld bc,00600h
	dec b
	ld b,00fh
	ld h,d
	inc l
	ld h,h
	djnz $+102
	djnz l501ah
	nop
	rrca
	dec b
l501ah:
	rrca
	rrca
	ld l,009h
	ld l,009h
	ld l,00ah
	ld (bc),a
	nop
	ld (de),a
	dec b
	ld (de),a
	rrca
	ld h,h
	add hl,bc
	ld h,h
	add hl,bc
	ld h,h
	add hl,bc
	nop
	nop
	rla
	dec b
	rla
	rrca
	inc l
	add hl,bc
	inc l
	add hl,bc
	inc l
	ld a,(bc)
	inc bc
	nop
	dec c
	dec b
	dec c
	rrca
	ld h,h
	djnz l50a7h
	djnz l50a9h
	djnz l504ah
	nop
	rrca
	dec b
l504ah:
	rrca
	rrca
	ld hl,(02a0ah)
	ld a,(bc)
	ld l,00ah
	ld bc,01200h
	dec b
	ld (de),a
	rrca
	ld h,a
	add hl,bc
	ld h,a
	inc bc
	ld h,a
	inc bc
	nop
	nop
	ld d,005h
	ld d,00fh
	ld h,h
	djnz l5067h
l5067h:
	nop
	ld l,d
	ld bc,00003h
	rla
	dec b
	rla
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld h,h
	djnz l5077h
l5077h:
	nop
	ld d,005h
	ld d,00fh
	ld h,d
	ld d,062h
	ld d,006h
	ex af,af'
	ld (bc),a
	nop
	inc d
	dec b
	inc d
	rrca
	ld (de),a
	ex af,af'
	nop
	nop
	ld h,c
	nop
	nop
	nop
	rrca
	dec b
	rrca
	rrca
	ld h,c
	nop
	nop
	nop
	ld (de),a
	ex af,af'
	ld bc,00a00h
	dec b
	ld a,(bc)
	rrca
	ld b,008h
	nop
	nop
	ld h,c
	nop
	nop
l50a7h:
	nop
	rrca
l50a9h:
	dec b
	rrca
	rrca
	ld h,c
	nop
	nop
	nop
	ld b,008h
	ld (bc),a
	nop
	dec c
	dec b
	dec c
	rrca
	ld (de),a
	ex af,af'
	nop
	nop
	ld h,c
	nop
	inc bc
	nop
	inc d
	dec b
	inc d
	rrca
	ld h,c
	nop
	nop
	nop
	ld (de),a
	ex af,af'
	inc bc
	nop
	rrca
	dec b
	rrca
	rrca
	ld (de),a
	ex af,af'
	nop
	nop
	ld h,c
	nop
	inc bc
	nop
	ld (de),a
	dec b
	ld (de),a
	rrca
	ld h,c
	nop
	nop
	nop
	ld b,008h
	ld bc,01400h
	dec b
	inc d
	rrca
	ld b,008h
	nop
	nop
	ld h,c
	nop
	inc bc
	nop
	ld d,005h
	ld d,00fh
	ld h,c
	nop
	nop
	nop
	ld (de),a
	ex af,af'
	inc bc
	nop
	rla
	dec b
	rla
	rrca
	ld (de),a
	ex af,af'
	nop
	nop
	ld h,c
	nop
	ld (bc),a
	nop
	ld d,005h
	ld d,00fh
	ld h,c
	nop
	nop
	nop
	ld b,008h
	ld (bc),a
	nop
	inc d
	dec b
	inc d
	rrca
	ld b,008h
	ld h,d
	ld de,00061h
	inc bc
	nop
	dec bc
	dec b
	dec bc
	rrca
	ld h,c
	nop
	cpl
	rrca
	cpl
	ld a,(bc)
	ld bc,00600h
	dec b
	ld b,00fh
	ld h,d
	inc l
	ld h,h
	djnz l5199h
	djnz l513ah
	nop
	rrca
	dec b
l513ah:
	rrca
	rrca
	ld l,009h
	ld l,009h
	ld l,00ah
	ld (bc),a
	nop
	ld (de),a
	dec b
	ld (de),a
	rrca
	ld h,h
	djnz $+102
	djnz l51b1h
	djnz l5152h
	nop
	rla
	dec b
l5152h:
	rla
	rrca
	inc l
	add hl,bc
	inc l
	add hl,bc
	inc l
	ld a,(bc)
	inc bc
	nop
	rrca
	dec b
	rrca
	rrca
	ld l,d
	ld bc,01064h
	ld h,h
	djnz l5168h
	nop
l5168h:
	dec c
	dec b
	dec c
	rrca
	daa
	ex af,af'
	daa
	ex af,af'
	daa
	ld a,(bc)
	ld (bc),a
	nop
	dec b
	dec b
	dec b
	rrca
	ld h,a
	inc b
	ld h,a
	dec b
	ld h,a
	ld (bc),a
	ld bc,00800h
	dec b
	ex af,af'
	rrca
	nop
	nop
	nop
	nop
	ld l,c
	ld bc,00003h
	dec c
	dec b
	dec c
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,01100h
l5199h:
	dec b
	ld de,0000fh
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	inc d
	dec b
	inc d
	rrca
	ld h,e
	ld bc,00163h
	ld h,e
	ld bc,00001h
	rla
l51b1h:
	dec b
	rla
	rrca
	ld h,e
	inc bc
	ld h,e
	inc bc
	ld h,e
	inc bc
	ld (bc),a
	nop
	ld d,005h
	ld d,00fh
	add hl,hl
	ex af,af'
	add hl,hl
	ex af,af'
	add hl,hl
	add hl,bc
	ld bc,01400h
	dec b
	inc d
	rrca
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	inc bc
	nop
	ld (de),a
	dec b
	ld (de),a
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	djnz l51e7h
	djnz $+17
	nop
	nop
	nop
l51e7h:
	nop
	nop
	nop
	ld bc,00f00h
	dec b
	rrca
	rrca
	ld h,e
	ld bc,00163h
	ld h,e
	ld bc,00003h
	dec bc
	dec b
	dec bc
	rrca
	ld hl,(02a08h)
	ex af,af'
	ld hl,(00209h)
	nop
	rrca
	dec b
	rrca
	rrca
	ld h,a
	ld (bc),a
	ld h,a
	rlca
	ld h,a
	ld (bc),a
	nop
	nop
	ld l,c
	nop
	ld (de),a
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,d
	dec de
	rla
	rrca
	ld h,e
	ld bc,00163h
	ld h,e
	ld bc,00002h
	add hl,de
	rrca
	ld h,c
	nop
	ld h,e
	inc b
	ld h,e
	ld (bc),a
	ld h,e
	ld (bc),a
	ld (bc),a
	nop
	inc e
	rrca
	ld h,d
	jr l5239h
l5239h:
	nop
	ld h,c
	nop
	nop
	nop
	ld (bc),a
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
sub_5283h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l52a9h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_54dah:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_5592h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_5685h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5966h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5acdh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5e08h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	ld c,l
	ld h,c
	ld l,(hl)
	ld h,d
	ld l,a
	ld (hl),a
	jr nz,l603ah
	jr nz,$+47
	jr nz,$+78
	ld h,l
	halt
	ld h,l
	ld l,h
	jr nz,l6049h
	jr nz,$+47
	jr nz,l6066h
	ld l,h
	ld h,c
	ld l,(hl)
	ld h,l
	ld (hl),h
	jr nz,$+81
	ld (hl),e
	ld l,c
	ld (hl),d
	ld l,c
	ld (hl),e
	jr nz,l6044h
	jr nz,l6046h
	jr nz,l6048h
	jr nz,l604ah
	jr nz,l604ch
	jr nz,l604eh
	jr nz,l6050h
	jr nz,l6052h
	jr nz,$+34
	jr nz,l6056h
	jr nz,$+34
	jr nz,l605ah
l603ah:
	jr nz,l605ch
	jr nz,l605eh
	jr nz,$+34
	jr nz,l6062h
	jr nz,l6091h
l6044h:
	ld d,l
	ld d,e
l6046h:
	ld c,c
	ld c,(hl)
l6048h:
	ld d,e
l6049h:
	ld d,h
l604ah:
	ld d,d
	ld d,e
l604ch:
	ld b,d
	ld c,e
l604eh:
	cpl
	nop
l6050h:
	inc bc
	nop
l6052h:
	ld bc,00302h
	inc b
l6056h:
	dec b
	ld b,007h
	ex af,af'
l605ah:
	add hl,bc
	ld a,(bc)
l605ch:
	dec bc
	inc c
l605eh:
	dec c
	ld c,003h
	inc b
l6062h:
	dec b
	ld b,007h
	ex af,af'
l6066h:
	add hl,bc
	ld a,(bc)
	dec bc
	inc c
	dec c
	ld c,003h
	inc b
	dec b
	ld b,007h
	ex af,af'
	add hl,bc
	ld a,(bc)
	dec bc
	inc c
	dec c
	ld c,00fh
	ld de,01012h
	ld de,01012h
	ld de,00013h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6091h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6109h:
	nop
	nop
	nop
	nop
l610dh:
	nop
	nop
l610fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	rrca
	rrca
	rrca
	rrca
	rrca
	daa
	ld sp,00d02h
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
	ld l,d
	ld (bc),a
	ex af,af'
	dec c
	nop
	nop
	ld l,d
	ld bc,00169h
	ld bc,00f16h
	rrca
	ld l,c
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	inc d
	rrca
	inc d
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,008h
	rrca
	ex af,af'
	dec c
	dec h
	ld a,(bc)
	ld hl,(0000fh)
	nop
	ld a,(bc)
	dec d
	rrca
	rrca
	rrca
	dec c
	ld h,c
	nop
	ld h,c
	nop
	dec h
	ex af,af'
	ld (bc),a
	ld d,014h
	rrca
	inc d
	dec c
	dec h
	ld a,(bc)
	ld hl,(l610fh)
	nop
	ld (bc),a
	dec d
	ex af,af'
	rrca
	ex af,af'
	dec c
l620ch:
	ld h,c
	nop
	ld h,c
	nop
	dec h
	ex af,af'
	ld bc,00f16h
	rrca
	rrca
	dec c
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	dec d
	inc d
	rrca
	inc d
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,008h
	rrca
	ex af,af'
	dec c
	daa
	ld a,(bc)
	inc l
	rrca
	nop
	nop
	ld (bc),a
	dec d
	rrca
	rrca
	rrca
	dec c
	ld h,c
	nop
	ld h,c
	nop
	daa
	ex af,af'
	ld a,(bc)
	ld d,014h
	rrca
	inc d
	dec c
	daa
	ld a,(bc)
	inc l
	rrca
	ld h,c
	nop
	ld (bc),a
	dec d
	ex af,af'
	rrca
	ex af,af'
	dec c
	ld h,c
	nop
	ld h,c
	nop
	daa
	ex af,af'
	ld bc,00f16h
	rrca
	rrca
	dec c
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	dec d
	inc d
	rrca
	inc d
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,008h
	rrca
	ex af,af'
	dec c
	dec h
	ld a,(bc)
	ld hl,(0000fh)
	nop
	ld (bc),a
	dec d
	rrca
	rrca
	rrca
	dec c
	ld h,c
	nop
	ld h,c
	nop
	dec h
	ex af,af'
	ld (bc),a
	ld d,014h
	rrca
	inc d
	dec c
	dec h
	ld a,(bc)
	ld hl,(l610fh)
	nop
	ld (bc),a
	dec d
	ex af,af'
	rrca
	ex af,af'
	dec c
	ld h,c
	nop
	ld h,c
	nop
	dec h
	ex af,af'
	ld bc,00f16h
	rrca
	rrca
	dec c
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	dec d
	inc d
	rrca
	inc d
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,008h
	rrca
	ex af,af'
	dec c
	jr z,l62cch
	inc l
	dec bc
	nop
	nop
	ld (bc),a
	dec d
	rrca
	rrca
	rrca
	dec c
l62cch:
	ld h,c
	nop
	ld h,c
	nop
	jr z,$+10
	ld a,(bc)
	ld d,014h
	rrca
	inc d
	dec c
	ld hl,(02d0ah)
	dec bc
	ld h,c
	nop
	ld a,(bc)
	dec d
	dec c
	rrca
	dec c
	dec c
	ld h,c
	nop
	ld h,c
	nop
	ld hl,(00108h)
	ld d,019h
	rrca
	add hl,de
	dec c
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	dec d
	ld bc,0010fh
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,00dh
	rrca
	dec c
	dec c
	ld sp,02c0ah
	rrca
	nop
	nop
	ld a,(bc)
	dec d
	add hl,de
	rrca
	add hl,de
	dec c
	ld h,c
	nop
	ld h,c
	nop
	ld sp,00208h
	ld d,001h
	rrca
	ld bc,0310dh
	ld a,(bc)
	cpl
	rrca
	ld h,c
	nop
	ld (bc),a
	dec d
	dec c
	rrca
	dec c
	dec c
	ld h,c
	nop
	ld h,c
	nop
	ld sp,00108h
	ld d,019h
	rrca
	add hl,de
	dec c
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	dec d
	ld bc,0010fh
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,00dh
	rrca
	dec c
	dec c
	inc sp
	ld a,(bc)
	cpl
	rrca
	nop
	nop
	ld a,(bc)
	dec d
	add hl,de
	rrca
	add hl,de
	dec c
	ld h,c
	nop
	ld h,c
	nop
	inc sp
	ex af,af'
	ld (bc),a
	ld d,001h
	rrca
	ld bc,0340dh
	ld a,(bc)
	ld sp,l610fh
	nop
	ld (bc),a
	dec d
	dec c
	rrca
	dec c
	dec c
	ld h,c
	nop
	ld h,c
	nop
	inc (hl)
	ex af,af'
	ld bc,01916h
	rrca
	add hl,de
	dec c
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	dec d
	ld bc,0010fh
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,00dh
	rrca
	dec c
	dec c
	ld (hl),00ah
	inc sp
	rrca
	nop
	nop
	ld (bc),a
	dec d
	add hl,de
	rrca
	add hl,de
	dec c
	ld h,c
	nop
	ld h,c
	nop
	ld (hl),008h
	ld (bc),a
	ld d,001h
	rrca
	ld bc,0380dh
	ld a,(bc)
	inc (hl)
	rrca
	ld h,c
	nop
	ld (bc),a
	dec d
	djnz l63c9h
	djnz l63c9h
	ld h,c
	nop
	ld h,c
	nop
	jr c,l63cah
	ld (bc),a
	ld d,00fh
	rrca
	rrca
	dec c
	dec c
l63c9h:
	ld a,(bc)
l63cah:
	dec c
	ld a,(bc)
	dec c
	ld a,(bc)
	nop
	dec d
	dec bc
	rrca
	dec bc
	dec c
	add hl,de
	ld a,(bc)
	add hl,de
	ld a,(bc)
	add hl,de
	ld a,(bc)
	ld a,(bc)
	ld d,010h
	rrca
	djnz $+15
	dec h
	ld a,(bc)
	dec h
	ld a,(bc)
	dec h
	ld a,(bc)
	ld (bc),a
	dec d
	rrca
	rrca
	rrca
	dec c
	ld sp,0310ah
	ld a,(bc)
	ld sp,0000ah
	ld d,00bh
	rrca
	dec bc
	dec c
	dec a
	ld a,(bc)
	dec a
	ld a,(bc)
	dec a
	ld a,(bc)
	ld (bc),a
	dec d
	dec c
	rrca
	dec c
	dec c
	cpl
	inc c
	ld hl,(0360ch)
	inc c
	ld bc,01216h
	rrca
	ld (de),a
	dec c
	ld l,d
	ld bc,00169h
	nop
	nop
	nop
	dec d
	inc d
	rrca
	inc d
	dec c
	ld sp,02c0ch
	inc c
	jr c,l642eh
	ld bc,00d16h
	rrca
	dec c
	dec c
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
l642eh:
	ld a,(bc)
	dec d
	ld (de),a
	rrca
	ld (de),a
	dec c
	ld sp,02c0ch
	inc c
	jr c,l6446h
	nop
	ld d,014h
	rrca
	inc d
	dec c
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
l6446h:
	nop
	dec d
	dec c
	rrca
	dec c
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,01216h
	rrca
	ld (de),a
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	inc d
	rrca
	inc d
	dec c
	ld sp,02c09h
	rrca
	ld sp,0010ch
	ld d,00dh
	rrca
	dec c
	dec c
l6470h:
	ld l,h
	ld (bc),a
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	ld (de),a
	rrca
	ld (de),a
	dec c
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	ld d,014h
	rrca
	inc d
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	ld d,00fh
	ld d,00dh
	inc (hl)
	add hl,bc
	dec l
	rrca
	ld h,c
	nop
	ld bc,01916h
	rrca
	add hl,de
	dec c
	inc sp
	add hl,bc
	ld h,c
	nop
	cpl
	rrca
	nop
	dec d
	ld e,00fh
	ld e,00dh
	ld sp,02d09h
	rrca
	ld h,c
	nop
	ld bc,01616h
	rrca
	ld d,00dh
	inc sp
	add hl,bc
	ld h,c
	nop
	dec l
	rrca
	ld a,(bc)
	dec d
	add hl,de
	rrca
	add hl,de
	dec c
	ld h,c
	nop
	nop
	nop
	ld h,c
	nop
	nop
	ld d,01eh
	rrca
	ld e,00dh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	dec d
	rrca
	dec d
	dec c
	inc (hl)
	add hl,bc
	cpl
	rrca
	nop
	nop
	ld bc,01216h
	rrca
	ld (de),a
	dec c
	inc sp
	add hl,bc
	ld h,c
	nop
	cpl
	rrca
	nop
	dec d
	djnz l6501h
	djnz l6501h
	ld sp,02f09h
	rrca
	ld h,c
	nop
	ld bc,01516h
	rrca
	dec d
	dec c
	inc sp
l6501h:
	add hl,bc
sub_6502h:
	dec l
	rrca
	cpl
	add hl,bc
	ld (bc),a
	dec d
	ld (de),a
	rrca
	ld (de),a
	dec c
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
sub_6512h:
	nop
	ld d,010h
	rrca
	djnz $+15
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	dec d
	rrca
	dec d
l6523h:
	dec c
	ld sp,02a09h
	rrca
	nop
	nop
	ld bc,01016h
	rrca
	djnz $+15
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	dec c
	rrca
	dec c
	dec c
	jr c,l6547h
	jr z,l654fh
	nop
	nop
	ld bc,01516h
	rrca
	dec d
l6547h:
	dec c
	ld sp,02c09h
	rrca
	nop
	nop
	ld a,(bc)
l654fh:
	dec d
	djnz l6561h
	djnz l6561h
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	nop
	nop
	nop
	ld d,00dh
	rrca
	dec c
	dec c
	ld l,h
l6561h:
	ld bc,0016ch
	nop
	nop
	nop
	dec d
	dec bc
	rrca
	dec bc
	dec c
	ld l,h
	ld bc,0016ch
	nop
	nop
	ld bc,01216h
	rrca
	ld (de),a
	dec c
	ld l,h
	ld bc,0016ch
	nop
	nop
	nop
	dec d
	rla
	rrca
	rla
	dec c
	ld l,h
	ld bc,0016ch
	nop
	nop
	ld bc,00b16h
	rrca
	dec bc
	dec c
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	nop
sub_6595h:
	nop
	ld a,(bc)
	dec d
	ld (de),a
	rrca
	ld (de),a
	dec c
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	nop
	nop
	nop
	ld d,017h
	rrca
	rla
	dec c
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	nop
	nop
	nop
	dec d
	add hl,bc
	rrca
	add hl,bc
	dec c
	cpl
	dec bc
	daa
	rrca
	nop
	nop
	ld bc,00b16h
	rrca
	dec bc
	dec c
	nop
	nop
	nop
	nop
	daa
	add hl,bc
	nop
	dec d
	dec c
	rrca
	dec c
	dec c
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld h,a
	ld (bc),a
	ld bc,00916h
	rrca
	add hl,bc
	dec c
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	nop
	nop
	ld (bc),a
	dec d
	dec bc
	rrca
	dec bc
	dec c
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	nop
	nop
	nop
	ld d,00dh
	rrca
	dec c
	dec c
	jr z,l6601h
	rla
	rrca
	nop
	nop
	nop
	dec d
	add hl,bc
	rrca
	add hl,bc
	dec c
	daa
	rrca
	add hl,de
	rrca
	inc hl
l6601h:
	add hl,bc
l6602h:
	ld (bc),a
	ld d,00bh
	rrca
	dec bc
	dec c
	ld h,c
	nop
	ld h,c
	nop
	dec h
	add hl,bc
	ld (bc),a
	dec d
	dec c
	rrca
	dec c
	dec c
	jr z,l6625h
	add hl,de
	rrca
	nop
	nop
	ld (bc),a
	ld d,009h
	rrca
	add hl,bc
	dec c
	daa
	rrca
	dec de
	rrca
	dec h
l6625h:
	add hl,bc
	ld a,(bc)
	dec d
	dec bc
	rrca
	dec bc
	dec c
	nop
	nop
	nop
	nop
	daa
	add hl,bc
	ld (bc),a
	ld d,00dh
	rrca
	dec c
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	dec c
	rrca
	dec c
	dec c
	cpl
	add hl,bc
	ld hl,(02f0fh)
	add hl,bc
	ld bc,01416h
	rrca
	inc d
	dec c
	nop
l6651h:
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	add hl,de
	rrca
	add hl,de
	dec c
	ld sp,02c09h
	rrca
	ld sp,00109h
	ld d,00dh
	rrca
	dec c
	dec c
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld (bc),a
	dec d
	inc d
	rrca
	inc d
	dec c
	ld sp,02c09h
	rrca
	ld sp,00009h
	ld d,019h
	rrca
	add hl,de
	dec c
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	dec d
	dec c
	rrca
	dec c
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,01416h
	rrca
	inc d
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	add hl,de
	rrca
	add hl,de
	dec c
	ld sp,02c09h
	rrca
	nop
	nop
	ld bc,00d16h
	rrca
	dec c
	dec c
	nop
	nop
	nop
	nop
	inc l
	add hl,bc
	ld a,(bc)
	dec d
	inc d
	rrca
	inc d
	dec c
	ld h,a
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	ld d,019h
	rrca
	add hl,de
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l66cfh:
	dec d
	dec c
	rrca
	dec c
	dec c
	inc (hl)
	add hl,bc
	dec l
	rrca
	ld h,c
	nop
	ld bc,01216h
	rrca
	ld (de),a
	dec c
	inc sp
	add hl,bc
	ld h,c
	nop
	cpl
	rrca
	nop
	dec d
	add hl,de
	rrca
	add hl,de
	dec c
	ld sp,02d09h
	rrca
	ld h,c
	nop
	ld bc,00d16h
	rrca
	dec c
	dec c
	inc sp
	add hl,bc
	ld h,c
	nop
	dec l
	rrca
	ld a,(bc)
	dec d
	ld (de),a
	rrca
	ld (de),a
	dec c
	ld h,c
	nop
	nop
	nop
	ld h,c
	nop
	nop
	ld d,019h
	rrca
	add hl,de
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	dec c
	rrca
	dec c
	dec c
	jr z,l672dh
	ld hl,(02f0fh)
	inc c
	ld bc,01016h
	rrca
	djnz l6735h
	daa
	rrca
	ld h,c
	nop
	dec l
l672dh:
	inc c
	nop
	dec d
	add hl,de
	rrca
	add hl,de
	dec c
	dec h
l6735h:
	rrca
	ld hl,(02c0fh)
	inc c
	ld bc,00d16h
	rrca
	dec c
	dec c
	daa
	rrca
	ld h,c
	nop
	dec l
	inc c
	ld (bc),a
	dec d
	djnz l6759h
	djnz l6759h
	ld h,c
	nop
	nop
	nop
	ld h,c
	nop
	nop
	ld d,019h
	rrca
	add hl,de
	dec c
	nop
l6759h:
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	dec bc
	rrca
	dec bc
	dec c
	ld sp,0280dh
	rrca
	nop
	nop
	ld bc,01016h
	rrca
	djnz $+15
	ld h,c
	nop
	ld h,c
	nop
	jr z,l6785h
	nop
	dec d
	rla
	rrca
	rla
	dec c
	jr c,l678bh
	jr z,$+15
	ld h,c
	nop
	ld bc,00b16h
l6785h:
	rrca
	dec bc
	dec c
	ld sp,l610dh
l678bh:
	nop
	jr z,l679bh
	ld a,(bc)
	dec d
	djnz l67a1h
	djnz l67a1h
	ld h,a
	ld (bc),a
	jr z,$+13
	ld h,c
	nop
	nop
l679bh:
	ld d,017h
	rrca
	rla
	dec c
	ld l,h
l67a1h:
	ld bc,00061h
	jr z,l67b1h
	nop
	dec d
	ld b,00fh
	ld b,00dh
	ld l,h
	ld bc,00928h
	ld h,c
l67b1h:
	nop
	ld bc,00d16h
	rrca
	dec c
	dec c
	ld l,h
	ld bc,00061h
	jr z,$+11
	nop
	dec d
	ld (de),a
	rrca
	ld (de),a
	dec c
	nop
	nop
	jr z,$+9
	ld h,c
	nop
	ld bc,00616h
	rrca
	ld b,00dh
	inc l
	add hl,bc
	nop
	nop
	jr z,l67e5h
	ld (bc),a
	dec d
	dec c
	rrca
	dec c
	dec c
	ld hl,(l6109h)
	nop
	ld hl,(0020fh)
	ld d,012h
l67e5h:
	rrca
	ld (de),a
	dec c
	inc l
	add hl,bc
	ld hl,(l610fh)
	nop
	ld (bc),a
	dec d
	ex af,af'
	rrca
	ex af,af'
	dec c
	inc l
	ld a,(bc)
	inc h
	rrca
	ld hl,(00209h)
	ld d,00fh
	rrca
	rrca
	dec c
	ld l,h
	ld bc,00000h
	inc h
	add hl,bc
	nop
	dec d
	inc d
	rrca
	inc d
	dec c
	ld l,h
	ld bc,00267h
	nop
	nop
	ld bc,00816h
	rrca
	ex af,af'
	dec c
	ld l,h
	ld bc,00000h
	ld h,a
	ld (bc),a
	nop
	dec d
	rrca
	rrca
	rrca
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,014h
	rrca
	inc d
	dec c
	inc (hl)
	dec c
	inc l
	inc c
	nop
	nop
	ld (bc),a
	dec d
	rrca
	rrca
	rrca
	dec c
	inc sp
	dec c
	daa
	rrca
	nop
	nop
	ld bc,01416h
	rrca
	inc d
	dec c
	nop
	nop
	ld h,a
	ld (bc),a
	daa
	add hl,bc
	nop
	dec d
	rrca
	rrca
	rrca
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00816h
	rrca
	ex af,af'
	dec c
	ccf
	ld b,000h
	nop
	ld h,a
	ld bc,01500h
	rrca
	rrca
	rrca
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,01416h
	rrca
	inc d
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	add hl,bc
	rrca
	add hl,bc
	dec c
	inc l
	dec bc
	cpl
	dec c
	nop
	nop
	ld bc,01016h
	rrca
	djnz l689dh
	ld h,a
	ld (bc),a
	nop
	nop
	ld sp,00007h
	dec d
	dec d
	rrca
	dec d
	dec c
	nop
l689dh:
	nop
	ld h,a
	ld (bc),a
	nop
	nop
	ld bc,00916h
	rrca
	add hl,bc
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	djnz l68c1h
	djnz l68c1h
	jr z,l68c1h
	dec l
	dec c
	nop
	nop
	nop
	ld d,015h
	rrca
	dec d
	dec c
	dec h
l68c1h:
	dec bc
	inc l
	dec c
	inc l
	rlca
	nop
	dec d
	add hl,bc
	rrca
	add hl,bc
	dec c
	jr z,l68d9h
	dec l
	dec c
	ld hl,(00107h)
	ld d,010h
	rrca
	djnz l68e5h
	nop
l68d9h:
	nop
	ld h,a
	ld (bc),a
	inc l
	rlca
	nop
	dec d
	dec d
	rrca
	dec d
	dec c
	nop
l68e5h:
	nop
	nop
	nop
	nop
	nop
	ld bc,00916h
	rrca
	add hl,bc
	dec c
	cpl
	dec bc
	inc (hl)
	rrca
	nop
	nop
	ld a,(bc)
	dec d
	djnz l6909h
	djnz l6909h
	nop
	nop
	nop
	nop
	inc (hl)
	rlca
	nop
	ld d,015h
	rrca
	dec d
	dec c
	nop
l6909h:
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	add hl,bc
	rrca
	add hl,bc
	dec c
	ld hl,(0330bh)
	rrca
	nop
	nop
	ld bc,00f16h
	rrca
	rrca
	dec c
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	dec d
	dec d
	rrca
	dec d
	dec c
	nop
	nop
	ld h,a
	ld bc,0016ch
	ld bc,00916h
	rrca
	add hl,bc
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(bc)
	dec d
	rrca
	rrca
	rrca
	dec c
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	ld d,015h
	rrca
	dec d
	dec c
	nop
	nop
	ld l,h
	ld bc,00000h
	nop
	dec d
	add hl,bc
	rrca
	add hl,bc
	dec c
	nop
	nop
	ld l,d
	nop
	ld l,h
	ld bc,01601h
	rrca
	rrca
	rrca
	dec c
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	dec d
	dec d
	rrca
	dec d
	dec c
	nop
	nop
	ld l,h
	ld bc,0006ah
	ld bc,00916h
	rrca
	add hl,bc
	dec c
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,01502h
	rrca
	rrca
	rrca
	dec c
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	ld d,015h
	rrca
	dec d
	dec c
	nop
	nop
	ld l,h
	ld bc,00000h
	nop
	dec d
	add hl,bc
	rrca
	add hl,bc
	dec c
	jr c,l69b2h
	ld sp,l610fh
	nop
	ld bc,01016h
	rrca
	djnz l69bdh
	ld (hl),00ch
l69b2h:
	inc l
	rrca
	ld sp,00007h
	dec d
	dec d
	rrca
	dec d
	dec c
	inc (hl)
l69bdh:
	inc c
	jr z,l69cfh
	inc l
	rlca
	nop
	ld d,009h
	rrca
	add hl,bc
	dec c
	ld sp,0250ch
	rrca
	jr z,l69d5h
	ld a,(bc)
l69cfh:
	dec d
	djnz l69e1h
	djnz l69e1h
	ld l,h
l69d5h:
	ld bc,0016ch
	dec h
	rlca
	ld a,(bc)
	ld d,015h
	rrca
	dec d
	dec c
	ld l,h
l69e1h:
	ld bc,0016ch
	nop
	nop
	ld (bc),a
	dec d
	add hl,bc
	rrca
	add hl,bc
	dec c
	ld l,h
	ld bc,0062ch
	ld sp,0010fh
	ld d,010h
	rrca
	djnz l6a05h
	ld l,h
	ld bc,0062ah
	inc l
	rrca
	nop
	dec d
	dec d
	rrca
	dec d
	dec c
	ld l,h
l6a05h:
	ld bc,00628h
	jr z,l6a19h
	ld bc,00916h
	rrca
	add hl,bc
	dec c
	ld l,h
	ld bc,00625h
	dec h
	rrca
	ld a,(bc)
	dec d
	dec bc
l6a19h:
	rrca
	dec bc
	dec c
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,01600h
	dec d
	rrca
	dec d
	dec c
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,0150ah
	dec c
	rrca
	dec c
	dec c
	jr c,l6a42h
	daa
	rrca
	inc l
	ld a,(bc)
	ld bc,00816h
	rrca
	ex af,af'
	dec c
	dec sp
	inc c
l6a42h:
	jr z,l6a53h
	cpl
	ld a,(bc)
	nop
	dec d
	add hl,de
	rrca
	add hl,de
	dec c
	ld sp,0310ch
	rrca
	dec h
	ld a,(bc)
	nop
l6a53h:
	ld d,00dh
	rrca
	dec c
	dec c
	ld h,a
	ld (bc),a
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	ex af,af'
	rrca
	ex af,af'
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(bc)
	ld d,019h
	rrca
	add hl,de
	dec c
	nop
	nop
	ld h,a
	ld bc,00000h
	ld a,(bc)
	dec d
	dec c
	rrca
	dec c
	dec c
	ld l,h
	ld bc,00838h
	daa
	dec bc
	ld bc,00816h
	rrca
	ex af,af'
	rrca
	nop
	nop
	inc (hl)
	ex af,af'
	jr z,$+13
	nop
	dec d
	add hl,de
	rrca
	add hl,de
	dec c
	ld l,h
	ld bc,0043dh
	ld sp,0020fh
	ld d,00dh
	rrca
	dec c
	dec c
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,01502h
	ex af,af'
	rrca
	ex af,af'
	dec c
	ld l,h
	ld bc,00267h
	ld l,h
	ld bc,01602h
	add hl,de
sub_6ab5h:
	rrca
	add hl,de
	dec c
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0150ah
	add hl,bc
	rrca
	add hl,bc
	dec c
	add hl,sp
	ld b,02dh
	rrca
	ld l,h
	ld bc,01601h
	djnz l6addh
	djnz l6addh
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,01500h
	dec d
	rrca
	dec d
	dec c
	nop
l6addh:
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld bc,00916h
	rrca
	add hl,bc
	dec c
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld a,(bc)
	dec d
	djnz l6b01h
	djnz l6b01h
	jr z,l6b03h
	cpl
	ld a,(bc)
	ld h,c
	nop
	nop
	ld d,015h
	rrca
	dec d
	dec c
	dec h
l6b01h:
	dec c
	dec l
l6b03h:
	ld a,(bc)
	nop
	nop
	nop
	dec d
	add hl,bc
	rrca
	add hl,bc
	dec c
	jr z,l6b1bh
	inc l
	rrca
	nop
	nop
	ld bc,01016h
	rrca
	djnz l6b25h
	nop
	nop
	nop
l6b1bh:
	nop
	inc l
	rlca
	nop
	dec d
	dec d
	rrca
	dec d
	dec c
	nop
l6b25h:
	nop
	inc e
	rrca
	nop
	nop
	ld bc,00916h
	rrca
	add hl,bc
	dec c
	inc hl
	dec c
	jr z,l6b43h
	inc e
	rlca
	ld (bc),a
	dec d
	djnz l6b49h
	djnz l6b49h
	nop
	nop
	nop
	nop
	jr z,l6b49h
	nop
l6b43h:
	ld d,015h
	rrca
	dec d
	dec c
	nop
l6b49h:
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	add hl,bc
	rrca
	add hl,bc
	dec c
	ld hl,(02f0dh)
	rrca
	nop
	nop
	ld bc,00f16h
	rrca
	rrca
	dec c
	nop
	nop
	nop
	nop
	cpl
	rlca
	nop
	dec d
	dec d
	rrca
	dec d
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00916h
	rrca
	add hl,bc
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	rrca
	rrca
	rrca
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,015h
	rrca
	dec d
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	add hl,bc
	rrca
	add hl,bc
	dec c
	ld sp,02f09h
	rrca
	nop
	nop
	ld bc,00f16h
	rrca
	rrca
	dec c
	ld h,c
	nop
	ld h,c
	nop
	cpl
	rlca
	nop
	dec d
	dec d
	rrca
	dec d
	dec c
	ld sp,02f09h
	rrca
	ld h,c
	nop
	ld bc,00916h
	rrca
	add hl,bc
	dec c
	jr z,l6bcch
	dec l
	rrca
	cpl
	rlca
	ld a,(bc)
	dec d
	rrca
	rrca
	rrca
	dec c
l6bcch:
	nop
	nop
	nop
	nop
	dec l
	rlca
	nop
	ld d,015h
	rrca
	dec d
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	ex af,af'
	rrca
	ex af,af'
	dec c
	inc l
	ld c,02fh
	rrca
	nop
	nop
	ld bc,00d16h
	rrca
	dec c
	dec c
	ld hl,(0310eh)
	rrca
	cpl
	rlca
	nop
	dec d
	inc d
	rrca
	inc d
	dec c
	jr z,l6c0ch
	inc l
	rrca
	ld sp,00007h
	ld d,008h
	rrca
	ex af,af'
	dec c
l6c08h:
	inc l
	ld c,025h
	rrca
l6c0ch:
	inc l
	rlca
	ld a,(bc)
	dec d
	dec c
	rrca
	dec c
	dec c
	nop
	nop
l6c16h:
	nop
	nop
	dec h
	rlca
	nop
	ld d,014h
	rrca
	inc d
	dec c
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	dec d
	ld b,00fh
	ld b,00dh
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00d16h
	rrca
	dec c
	dec c
	ld h,a
	ld bc,00000h
	nop
	nop
	ld a,(bc)
	dec d
	ld (de),a
	rrca
	ld (de),a
	dec c
	nop
	nop
	ld l,h
	ld bc,00000h
	ld a,(bc)
	ld d,006h
	rrca
	ld b,00dh
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,01502h
	dec c
	rrca
	dec c
	dec c
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	ld (bc),a
	ld d,012h
	rrca
	ld (de),a
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	dec b
	rrca
	dec b
	dec c
	ld l,h
	ld bc,00267h
	nop
	nop
	ld bc,00d16h
	rrca
	dec c
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	ld de,0110fh
	dec c
	nop
	nop
	ld l,h
	ld bc,00000h
	ld (bc),a
	ld d,005h
	rrca
	dec b
	dec c
	ld h,a
	ld (bc),a
	nop
	nop
	ld l,h
	ld bc,01502h
	dec c
	rrca
	dec c
	dec c
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	ld d,011h
	rrca
	ld de,0000dh
	nop
	nop
	nop
	ld h,a
	inc bc
	ld (bc),a
	dec d
	ld bc,0010fh
	dec c
	ld l,h
	ld bc,0016ch
	nop
	nop
	ld (bc),a
	ld d,00dh
	rrca
	dec c
	dec c
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,01500h
	rrca
	rrca
	rrca
	dec c
	ld l,h
	ld bc,00000h
	nop
	nop
	ld (bc),a
	ld d,003h
	rrca
	inc bc
	dec c
	nop
	nop
	ld l,h
	ld bc,00000h
	ld (bc),a
	dec d
	rrca
	rrca
	rrca
	dec c
	ld l,h
	ld bc,00000h
	nop
	nop
	ld (bc),a
	ld d,014h
	rrca
	inc d
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	dec c
	rrca
	dec c
	inc c
	ld h,d
	jr nc,l6d69h
	ld (00061h),a
	ld bc,00116h
	rrca
	ld bc,00d0ch
	rrca
	dec c
	add hl,bc
	dec c
	add hl,bc
	nop
	dec d
	add hl,de
	rrca
	add hl,de
	inc c
	nop
	nop
	ld h,e
	add hl,bc
	ld h,e
	ld a,(bc)
	ld bc,00d16h
	rrca
	dec c
	inc c
	ld h,d
	cpl
	nop
	nop
	nop
	nop
	ld a,(bc)
	dec d
	ld bc,0010fh
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,019h
	rrca
	add hl,de
	inc c
	ld h,d
	ld l,000h
	nop
	nop
	nop
	nop
	dec d
	dec c
	rrca
	dec c
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00116h
	rrca
	ld bc,l620ch
	dec l
	nop
	nop
	nop
	nop
	nop
	dec d
	add hl,de
	rrca
	add hl,de
	inc c
	nop
	nop
	nop
	nop
	nop
l6d69h:
	nop
	ld bc,00d16h
	rrca
	dec c
	inc c
	ld h,d
	inc l
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	ld bc,0010fh
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,019h
	rrca
	add hl,de
	inc c
	ld h,d
	dec hl
	nop
	nop
	nop
	nop
	nop
	dec d
	dec c
	rrca
	dec c
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00116h
	rrca
	ld bc,l620ch
	ld hl,(00000h)
	nop
	nop
	nop
	dec d
	add hl,de
	rrca
	add hl,de
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00d16h
	rrca
	dec c
	inc c
	ld h,d
	add hl,hl
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	dec c
	rrca
	dec c
	inc c
	cpl
	inc c
	ld hl,(0360ch)
	inc c
	ld bc,00116h
	rrca
	ld bc,0000ch
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	add hl,de
	rrca
	add hl,de
	inc c
	ld sp,02c0ch
	inc c
	jr c,l6deeh
	ld bc,00d16h
	rrca
	dec c
	inc c
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
l6deeh:
	ld a,(bc)
	dec d
	ld bc,0010fh
	inc c
	ld sp,02c0ch
	inc c
	jr c,l6e06h
	nop
	ld d,019h
	rrca
	add hl,de
	inc c
	ld h,c
	nop
	ld h,c
	nop
	dec c
	add hl,bc
l6e06h:
	nop
	dec d
	dec c
	rrca
	dec c
	inc c
	nop
	nop
	ld h,d
	ld (00a63h),a
	ld bc,00116h
	rrca
	ld bc,l620ch
	dec l
	dec c
	add hl,bc
	nop
	nop
	nop
	dec d
	add hl,de
	rrca
	add hl,de
	inc c
	nop
	nop
	ld h,e
	add hl,bc
	nop
	nop
	ld bc,00d16h
	rrca
	dec c
	inc c
	ld h,d
	inc l
	nop
l6e33h:
	nop
	nop
	nop
	ld (bc),a
	dec d
	ld bc,0010fh
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,019h
	rrca
	add hl,de
	inc c
	ld h,d
	dec hl
	nop
	nop
	nop
	nop
	nop
	dec d
	dec c
	rrca
	dec c
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00116h
	rrca
	ld bc,l620ch
	ld hl,(00000h)
	nop
	nop
	nop
	dec d
	add hl,de
	rrca
	add hl,de
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00d16h
	rrca
	dec c
	inc c
	ld h,d
	add hl,hl
	nop
	nop
	nop
	nop
	ld (bc),a
	dec d
	ld bc,0010fh
	inc c
	nop
	nop
	ld h,h
	inc bc
	ld h,h
	inc bc
	nop
	ld d,019h
	rrca
	add hl,de
	inc c
	ld h,d
	jr z,l6e93h
l6e93h:
	nop
	nop
	nop
	nop
	dec d
	dec c
	rrca
	dec c
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00116h
	rrca
	ld bc,l620ch
	daa
	nop
	nop
	nop
	nop
	nop
	dec d
	add hl,de
	rrca
	add hl,de
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00d16h
	rrca
	dec c
	inc c
	ld h,d
	jr z,l6ec3h
l6ec3h:
	nop
	nop
	nop
	ld a,(bc)
	dec d
	ld bc,0010fh
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,019h
	rrca
	add hl,de
	inc c
	ld h,d
	add hl,hl
	nop
	nop
	nop
	nop
	nop
	dec d
	dec c
	rrca
	dec c
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00116h
	rrca
	ld bc,l620ch
	ld hl,(00000h)
	nop
	nop
	nop
l6ef7h:
	dec d
	add hl,de
	rrca
	add hl,de
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,00dh
	rrca
	dec c
	inc c
	ld h,d
	dec hl
	ld h,e
	inc b
	ld h,e
	inc b
	ld a,(bc)
	dec d
	ld bc,0010fh
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,019h
	rrca
	add hl,de
	inc c
	ld h,d
	inc l
	nop
	nop
	nop
	nop
	nop
	dec d
	dec c
	rrca
	dec c
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00116h
	rrca
	ld bc,l620ch
	dec l
	nop
	nop
	nop
	nop
	ld a,(bc)
	dec d
	add hl,de
	rrca
	add hl,de
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(bc)
	ld d,00dh
	rrca
	dec c
	inc c
	ld h,d
	ld l,000h
	nop
	nop
	nop
	ld bc,00115h
	rrca
	ld bc,0000ch
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,019h
	rrca
	add hl,de
	inc c
	ld h,d
	cpl
	nop
	nop
	nop
	nop
	nop
	dec d
	dec c
	rrca
	dec c
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00116h
	rrca
	ld bc,l620ch
	jr nc,l6f83h
l6f83h:
	nop
	nop
	nop
	ld a,(bc)
	dec d
	add hl,de
	rrca
	add hl,de
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	ld d,00dh
	rrca
	dec c
	inc c
	ld h,d
	cpl
	nop
	nop
	nop
	nop
	ld bc,00115h
	rrca
	ld bc,0000ch
	nop
	nop
	nop
	ld l,h
	ld bc,01600h
	add hl,de
	rrca
	add hl,de
	inc c
	ld h,d
	ld l,000h
	nop
	nop
	nop
	nop
	dec d
	dec c
	rrca
	dec c
	inc c
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,01601h
	ld bc,0010fh
	inc c
	ld h,d
	dec l
	ld l,h
	ld bc,00000h
	nop
	dec d
	add hl,de
	rrca
	add hl,de
	inc c
	nop
	nop
	ld l,h
	ld bc,0016ch
	ld (bc),a
	ld d,00dh
	rrca
	dec c
	rrca
	ld h,d
	inc l
	ld l,h
	ld bc,00000h
	ld (bc),a
	dec d
	ld bc,0010fh
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld (bc),a
	ld d,019h
	rrca
	add hl,de
	rrca
	ld h,d
	ld (bc),a
	ld h,d
	dec c
	nop
	nop
	ld (bc),a
	dec d
	add hl,de
	rrca
	add hl,de
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(bc)
	ld d,00dh
	rrca
	dec c
	inc c
	ld h,d
	ld l,000h
	nop
	nop
	nop
	ld bc,00115h
	rrca
	ld bc,0000ch
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,019h
	rrca
	add hl,de
	inc c
	ld h,d
	cpl
	nop
	nop
	nop
	nop
	nop
	dec d
	dec c
	rrca
	dec c
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00116h
	rrca
	ld bc,l620ch
	jr nc,l7043h
l7043h:
	nop
	nop
	nop
	ld a,(bc)
	dec d
	add hl,de
	rrca
	add hl,de
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	ld d,00dh
	rrca
	dec c
	inc c
	ld h,d
	cpl
	nop
	nop
	nop
	nop
	ld bc,00115h
	rrca
	ld bc,0000ch
	nop
	nop
	nop
	ld l,h
	ld bc,01600h
	add hl,de
	rrca
	add hl,de
	inc c
	ld h,d
	ld l,000h
	nop
	nop
	nop
	nop
	dec d
	dec c
	rrca
	dec c
	inc c
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,01601h
	ld bc,0010fh
	inc c
	ld h,d
	dec l
	ld l,h
	ld bc,00000h
	nop
	dec d
	add hl,de
	rrca
	add hl,de
	inc c
	nop
	nop
	ld l,h
	ld bc,0016ch
	ld (bc),a
	ld d,00dh
	rrca
	dec c
	rrca
	ld h,d
	inc l
	ld l,h
	ld bc,00000h
	ld (bc),a
	dec d
	ld bc,0010fh
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld (bc),a
	ld d,019h
	rrca
	add hl,de
	rrca
	ld h,d
	ld (bc),a
	ld h,d
	dec c
	nop
	nop
	ld (bc),a
	dec d
	rst 38h
	ret nc
	ld b,h
	ld b,l
	and (hl)
	ld h,l
	ret nz
	ld d,h
	call sub_6595h
	scf
	sub l
	ld a,e
	sbc a,059h
	cp h
	inc d
	jp (hl)
	ld (hl),c
	cp d
	adc a,c
	add a,h
	sub (hl)
	or l
	push hl
	ld c,h
	add a,(hl)
	ld c,c
	jp po,0c914h
	ld d,e
	add a,b
	sub h
	ld b,h
	jp nz,04754h
	sub d
	ld h,h
	and h
	call po,sub_5685h
l70edh:
	inc b
	out (02bh),a
	ld (bc),a
	cp 068h
	add a,d
	jp z,09a63h
	ld (l49a7h),a
	xor a
	jp z,l48b2h
	sbc a,(hl)
	jp z,0c523h
	or d
	add a,c
	or d
	sbc a,0f3h
	add a,h
	ld (hl),a
	ex de,hl
	inc sp
	ld b,h
	daa
	and a
	daa
	exx
	add a,h
	ex af,af'
	ld sp,0fccdh
	jp c,0b3aah
	push de
	jp nc,0b789h
	xor 0f0h
	ld b,b
	ld l,d
	sub d
	ld l,b
	add hl,hl
	out (008h),a
	ld a,(bc)
	inc c
	ld h,h
	sub h
	and l
	add a,h
	inc sp
	cp h
	ld d,(hl)
	rlca
	add a,a
	cp c
	halt
	exx
	ld h,l
	rst 10h
	sub (hl)
	ld bc,0a657h
	add hl,bc
	sbc a,(hl)
	adc a,h
	cp a
	sbc a,h
	or l
	sub d
	xor (hl)
	inc hl
	ld b,(hl)
	dec b
	call nz,0ef4ah
	add a,091h
	exx
	cp c
	adc a,c
	exx
	di
	add hl,de
	jp z,0349bh
	ld h,h
	rra
	sub e
	ld h,l
	jr nc,l70edh
	cp b
	ld (bc),a
	sbc a,l
	call nc,0bd8ch
	jp z,09cc7h
	sub d
	daa
	jp pe,09792h
	adc a,b
	sbc a,0a8h
	call 0af8ch
	sbc a,h
	or (hl)
	cp h
	and c
	sbc a,d
	xor c
	pop bc
	xor c
	add hl,hl
	ld h,0c5h
	ld c,e
	rla
	ld sp,0f008h
	scf
	sub a
	dec sp
	add a,(hl)
	ld l,08fh
	or e
	sub e
	push de
	ld d,c
	jr nz,l71c7h
	ld c,b
	ret nz
	jr nz,l71dah
	add hl,hl
	adc a,l
	ld hl,(01904h)
	pop hl
	call z,035a5h
	dec (hl)
	dec h
	sbc a,b
	exx
	ld b,065h
	add a,l
	cp (hl)
	add hl,hl
	or b
	jr c,$+7
	call z,0b49eh
	call c,08e8eh
	ld (0d4c5h),a
	jp nc,0a98ch
	xor c
	add hl,de
	xor b
	add hl,de
	inc h
	add a,a
	sub d
	and b
	adc a,l
	inc h
	jp z,02115h
	ld a,(l7e3eh)
	ld de,02027h
	call nc,084b2h
	sub d
	push bc
	ld c,d
	dec bc
l71c7h:
	defb 0edh ;next byte illegal after ed
	rst 20h
	xor b
	sbc a,c
	or h
	add a,c
	or h
	or b
	ld b,(hl)
	add hl,bc
	sbc a,c
	inc c
	ex af,af'
	inc h
	add hl,bc
	adc a,c
	and e
	rst 8
	daa
l71dah:
	xor d
	inc hl
	ret p
	ld h,0e2h
	sbc a,h
	add a,(hl)
	call z,0a5fch
	ld e,d
	sbc a,(hl)
	ld hl,(0ba53h)
	ld sp,026b5h
	add a,l
	sub l
	xor 092h
	call z,098b5h
	sub e
	and b
	add a,d
	jp nc,l4a4ah
	ld h,0efh
	ld h,(hl)
	sbc a,a
	jp z,0b5c9h
	nop
	call p,sub_6512h
	sbc a,(hl)
	ld l,c
	jp (hl)
	rst 8
	ld a,c
	and c
	ld c,c
	ret m
	cp e
	ld a,(bc)
	ld b,l
	call c,014e2h
	or 0e2h
	dec h
	rst 28h
	ld (0f6c2h),a
	inc c
	sbc a,b
	ld b,024h
	xor e
	sub c
	ld d,e
	inc h
	ld c,b
	pop af
	jr l724ch
	and d
	dec de
	add a,h
	ld h,(hl)
	defb 0edh ;next byte illegal after ed
	rst 8
	out (04dh),a
	sbc a,a
	ld d,(hl)
	or h
	ld h,l
	dec hl
	ret nc
	ld d,a
	jp z,l6651h
	rst 38h
	ld e,(hl)
	xor d
	ld c,(hl)
	and c
	ld c,c
	rst 0
	ld e,091h
	xor h
	ld d,c
	and e
	ex (sp),hl
	add a,h
	add a,c
	ld d,c
	or (hl)
	ld b,(hl)
	rst 8
	add a,08ah
l724ch:
	ld e,d
	inc e
	sbc a,(hl)
	sbc a,e
	inc bc
	sbc a,h
	add hl,hl
	cp (hl)
	ld (de),a
	ld h,(hl)
	adc a,h
	scf
	rst 20h
	or d
	and d
	ld (09381h),a
	or a
	ld (de),a
	cp l
	sub d
	sbc a,02dh
	ld sp,hl
	ld b,c
	ld h,009h
	jr z,l7298h
	inc h
	ld h,a
	adc a,0a9h
l726eh:
	or 024h
	push hl
	add hl,de
	call po,0df25h
	ld l,h
	ld sp,hl
	xor (hl)
	jp pe,09827h
	defb 0edh ;next byte illegal after ed
	dec b
	ld d,h
	ld h,l
	halt
	ld d,e
	sbc a,e
	ret
	rst 20h
	inc h
	xor h
	sub c
	sbc a,h
	ld c,c
	push hl
	ld b,h
	ld h,002h
	xor c
	or d
	ld (hl),a
	call m,0a5d5h
	sub e
	push af
	xor l
	ld (hl),a
	sub a
l7298h:
	ld (hl),d
	scf
	ld d,a
	ld h,026h
	sbc a,(hl)
	or c
	rlca
	ld h,023h
	ld e,b
	ld c,h
	defb 0edh ;next byte illegal after ed
	dec b
	and h
	ld d,d
	sbc a,l
	dec (hl)
	ld hl,0d226h
	inc de
	nop
	add a,h
	or d
	call m,0f693h
	ld b,(hl)
	or (hl)
	ld (hl),d
	or b
	ld h,d
	retn
	ret nz
	add a,d
	add a,e
	jr z,l726eh
	ld (hl),0a2h
	ld d,c
	ld h,a
	jp z,0f635h
	push hl
	call z,00c66h
	ld c,l
	ei
	adc a,c
	dec d
	inc b
	ld h,099h
	sbc a,(hl)
	sbc a,(hl)
	cp 092h
	ld d,(hl)
	defb 0edh ;next byte illegal after ed
	sbc a,c
	or e
	defb 0cbh,035h ;sli l
	ld bc,025c6h
	and h
	ld h,h
	ld b,a
	ld b,(hl)
	ld b,(hl)
	dec b
	sub e
	sub (hl)
	inc b
	ld h,(hl)
	dec b
	ei
	sbc a,b
	or a
	cp h
	pop af
l72efh:
	xor c
	ld (bc),a
	add a,(hl)
	jp z,l6e33h
	cp 0c1h
	ld (0bcd9h),hl
	and a
	sub h
	exx
	ld h,(hl)
	add hl,bc
	and 054h
	call m,0f526h
	call 036c9h
	adc a,(hl)
	bit 2,h
	jp nz,0a06ch
	ld c,d
	ld b,h
	cp l
	halt
	cpl
	push hl
	sub b
	and h
	rst 0
	jp 038eah
	inc d
	jr nz,l7342h
	rst 18h
	ld d,h
	call po,0c576h
	ld e,c
	and 005h
	ld d,d
	ld l,d
	dec bc
	ld c,b
	cp d
	push bc
	ld (0b366h),hl
	adc a,c
	and h
	ld a,e
	ex (sp),hl
	ld e,c
	ret p
	add hl,hl
	add a,a
	ei
	add a,a
	ld l,c
	sbc a,d
	ld c,d
	ld b,a
	and e
	or h
	sbc a,h
	ld (hl),d
	rst 30h
	ld (hl),a
	adc a,c
l7342h:
	rst 30h
	add a,e
	jp p,0b2f6h
	push hl
	ld c,d
	adc a,d
	or e
	pop de
	jr z,l72efh
	push hl
	ret z
	ld b,(hl)
	add hl,hl
	sub a
	ld c,(hl)
	call z,0995ah
	call c,006dfh
	ld a,(de)
	ld h,a
	dec h
	inc hl
	sub 0b2h
	cp b
	inc de
	ld b,a
	ld b,l
	or e
	ld a,d
	call po,004b7h
	cp (hl)
	ld l,d
	ld a,h
	add a,c
	jr z,l737ch
	rst 38h
	ret
	and c
	adc a,e
	add a,(hl)
	ld (bc),a
	ld (hl),h
	defb 0ddh,091h,005h ;illegal sequence
	ld h,052h
	add a,d
l737ch:
	ld e,l
	sbc a,a
	dec bc
	ld d,(hl)
	xor e
	jp m,024aeh
	ld (091a5h),hl
	or d
	ld h,068h
	sbc a,(hl)
	add a,c
	dec h
l738dh:
	add hl,bc
	in a,(01dh)
	ld bc,0a28dh
	add hl,bc
	add hl,bc
	ld a,(bc)
	or l
	ld l,c
	ret m
	ld c,c
	ret
	call 02386h
	add a,c
	ld h,041h
	add hl,hl
	sub 081h
	dec c
	daa
	daa
	ld l,h
	add hl,de
	inc b
	rlca
	ld c,d
	add hl,bc
	dec hl
	ld a,(de)
	ld c,c
	ld sp,005cch
	ld (02229h),hl
l73b6h:
	ld l,d
	and l
	ld (hl),d
	ret pe
	ld d,a
	ld b,a
	ld a,b
	jp (hl)
	inc h
	call pe,0ca5fh
	sbc a,b
	adc a,b
	sub a
	and c
	adc a,d
	jr nz,l738dh
	sbc a,b
	ld b,l
	add hl,de
	inc b
	sbc a,h
	defb 0edh ;next byte illegal after ed
	sub d
	or c
	adc a,(hl)
	sub d
	call c,0b72dh
	ld e,b
	sub (hl)
	jp c,01cdeh
	ld c,b
	cp (hl)
	ld d,l
	sbc a,l
	ret po
	add hl,de
	cp c
	ret c
	inc b
	ld l,h
	daa
	and h
	outd
	inc b
	djnz l73b6h
	cpl
	sub h
	inc d
	add hl,bc
	ld hl,(093b5h)
	add a,e
	sub d
	in a,(058h)
	ld (hl),h
	jp po,l488bh
	cp 04bh
	jp m,0c44ah
	and a
	jp nz,0f162h
	and (hl)
	ld h,0d7h
	jp m,0eee0h
	or (hl)
	cp e
	sub e
	sub (hl)
	rst 8
	ret po
	xor d
	inc d
	inc l
	call nz,098aah
	jp z,l4d9ch
	ld l,c
	call po,09acch
	xor e
	jp nc,0cab2h
	halt
	add a,l
	ret z
	rst 18h
	call z,0e3a1h
	and (hl)
	ld (hl),e
	cp h
	or a
	adc a,h
	sub d
	ld h,e
	xor h
	adc a,e
	sbc a,c
	or e
	add hl,hl
	ret nc
	add hl,sp
	xor c
	ld a,d
	ld c,b
	ret nz
	push hl
	call pe,01329h
	ld c,c
	ld a,(bc)
	ld l,c
	and (hl)
	ld b,h
	dec bc
	ld hl,(0d008h)
	ld c,c
	ld l,c
	ld (0a329h),hl
	djnz l74b8h
	ld l,e
	ld b,088h
	exx
	ld c,c
	ld l,e
	ld b,(hl)
	ld a,(bc)
	sbc a,005h
	dec bc
	rlca
	ld a,(bc)
	ld c,h
	inc c
	pop hl
	ld (de),a
	ld b,(hl)
	add a,(hl)
	ld (l7893h),a
	push de
l7465h:
	adc a,(hl)
	call p,0b4adh
	rst 38h
	cp h
	cp (hl)
	push hl
	ld sp,hl
	push bc
	ld l,(hl)
	dec h
	jp (hl)
	and 0ebh
	ld hl,(0cc27h)
	add hl,hl
	add a,h
	cpl
	rst 20h
	ld (0daa4h),hl
	ld l,(hl)
	or l
	jp z,l49b0h
	ret nz
	ld b,c
	inc hl
	ld h,045h
	rra
	ld e,l
	rst 28h
	and 0d9h
	ex de,hl
	ld c,c
	add a,c
	ret c
	inc hl
	xor e
	ld d,a
	sbc a,d
	ld de,0c907h
	ld l,d
	sbc a,b
	jp nc,0ce5ah
	ld e,(hl)
	rst 18h
	ld c,c
	or d
	and a
	ld d,086h
	ld h,h
	jr c,l74eeh
	and h
	rst 0
	ld c,b
	dec b
	ret
	ld h,h
	and h
	sub a
	sbc a,h
	ret
	ld (02740h),hl
	pop de
	adc a,c
	ret pe
	ld b,b
l74b8h:
	and l
	push hl
	rst 30h
	and d
	inc hl
	jp c,031d2h
	xor a
	ld a,(bc)
	adc a,c
	inc sp
	call p,0bc75h
	jr z,l7465h
	sbc a,d
	sub l
	and d
	adc a,h
	dec a
	xor h
	xor b
	xor h
	ret nz
	xor l
	sbc a,h
	call nc,06cceh
	inc bc
	ret pe
	ld hl,(0aa94h)
	ld h,(hl)
	add hl,bc
	ld c,l
	ld (de),a
	push bc
	pop hl
	ld h,b
	sub a
	ret c
	sub c
	cp c
	or (hl)
	ld sp,hl
	sub a
	call z,0e895h
	and b
l74eeh:
	dec c
	jr z,l7518h
	call pe,08846h
	add hl,de
	ld hl,(02d01h)
	jr nz,$+108
	ld c,a
	adc a,h
	ld (hl),c
	add hl,hl
	jp c,089dah
	ld (09cc1h),hl
	or a
	defb 0edh ;next byte illegal after ed
	call sub_472fh
	inc hl
	ex de,hl
	ld h,040h
	xor b
	and d
	sub h
	ld c,d
	jp p,l4768h
	inc h
	ld (09dc2h),hl
l7518h:
	pop bc
	or d
	xor c
	jp nz,00242h
	jp po,0dc2eh
	jp po,028c1h
	and a
l7525h:
	jp z,l4da9h
	call pe,0dc5ch
	jr l7534h
	jp po,0dc92h
	ld e,d
	ret c
	ld d,d
	xor c
l7534h:
	ld e,c
	adc a,(hl)
	jp nc,0c1abh
	ld sp,02747h
	sbc a,l
	xor c
	or (hl)
	ld e,c
	ex (sp),hl
	dec d
	ld e,(hl)
	sbc a,(hl)
	dec h
	add a,c
	sbc a,h
	rst 30h
	or c
	sub 025h
	add hl,hl
	inc b
	add a,b
	inc hl
	sbc a,h
	ld l,c
	or h
	jr l7556h
	ld e,c
	ld h,b
l7556h:
	sbc a,b
	xor b
	and h
	adc a,b
	sbc a,e
l755bh:
	add a,l
	ld h,b
	ld b,l
	inc hl
	ld b,l
	ld bc,0edd4h
	call z,0dcf7h
	add a,(hl)
	ld e,e
	ld b,a
	ld e,e
l756ah:
	rst 8
	sub c
	rst 8
	sub (hl)
	jp c,0d6b8h
	sub l
	dec c
	ld a,e
	rlca
	ld d,c
l7576h:
	sbc a,e
	cp 0a1h
	ld bc,018a8h
	adc a,c
	daa
	ld h,(hl)
	add hl,hl
	add a,(hl)
	ld a,c
	ld e,l
	rla
	adc a,l
	ld (bc),a
	adc a,0bfh
	call nc,0b69ch
	ld sp,0b969h
	jr nc,l7576h
	adc a,h
	call po,08808h
	add hl,hl
	ld l,h
	jr z,l7556h
	jp z,0280eh
	jp 0fcbfh
	jr nc,l7525h
	add a,a
	adc a,l
	res 2,d
	sbc a,b
	ld c,e
	add a,d
	ld a,l
	jr nz,l75f3h
	ld hl,l5e08h
	jp m,0809fh
	out (0beh),a
	adc a,(hl)
	sub a
	ld c,b
	sub e
	xor h
	sbc a,e
	or d
	jp c,02f8ah
	xor e
	ld (09ad1h),hl
	and c
	inc c
	and d
	ld a,(bc)
	pop hl
	sbc a,c
	inc (hl)
	inc h
	jr l755bh
	set 6,l
	dec (hl)
	cp 0a4h
	defb 0fdh,062h ;ld iyh,d
	jr z,l756ah
	ld (hl),e
	call pe,sub_5592h
	ld l,d
	ld c,c
	adc a,(hl)
	ld c,c
	jp nc,0e8c9h
	jr z,l760eh
	dec h
	ld b,a
	ld sp,l66cfh
	ex de,hl
	ld d,d
	add a,d
	inc sp
	xor a
	jp nc,0aaa6h
	ld b,e
	sbc a,l
	ld d,d
	adc a,e
	pop de
	dec b
l75f3h:
	pop de
	ld a,c
	rrca
	ld d,000h
	inc hl
	ei
	ld b,(hl)
	jp c,l6470h
	inc bc
	cp h
	rst 38h
	xor e
	call z,032a9h
	call z,0e755h
	call 0ca14h
	jp po,0b445h
l760eh:
	ld c,h
	rst 38h
	ld d,h
	jr nz,$-117
	ld d,c
	and e
	ld de,02668h
	adc a,e
	halt
	adc a,0bfh
	add hl,hl
	call pe,0c929h
	jr c,$-25
	or e
	ld (de),a
	sbc a,(hl)
	inc hl
	add a,l
	ld d,d
	inc h
	sub (hl)
	ld c,d
	pop hl
	ld h,d
	add a,a
	ld h,b
	ld d,d
	ld hl,02021h
	sub e
	adc a,c
	ld h,b
	ld sp,013c3h
	ld b,(hl)
	in a,(044h)
	and h
	ld h,(hl)
	sbc a,h
	sub 0ach
	add a,b
	call c,029efh
	ld b,l
	ex af,af'
	cp h
	ld e,a
	ld l,b
	add a,d
	or d
	and h
	ld d,h
	inc l
	rst 8
	sub d
	and b
	ld c,c
	ei
	dec h
	ld a,(08423h)
	ld e,h
	ld h,l
	call sub_6502h
	inc hl
	dec bc
	rrca
	ld b,e
	ld h,d
	call po,0c9e7h
	ld d,0c8h
	adc a,h
	ld b,0abh
	add a,065h
	call p,0476ah
	cp (hl)
	jp p,03f72h
	ld (bc),a
	add hl,bc
	adc a,021h
	dec bc
	ld b,068h
	and (hl)
	cp (hl)
	ld a,c
	sub a
	ld e,c
	adc a,l
	ld sp,hl
	jr nz,l76cch
	adc a,c
	ret nc
	ret pe
	ld h,b
	call z,0fa40h
	ld e,l
	push hl
	rst 10h
	inc hl
	pop bc
	ld hl,l4102h
	call nc,0e959h
	ld sp,02147h
	inc hl
	ld (09c46h),hl
	cp h
	cp c
	and e
	sub a
	or 072h
	or (hl)
	ld sp,0bb47h
	add hl,sp
	rst 28h
	add hl,sp
	add a,d
	ld d,0d7h
l76ach:
	ld h,l
	sub l
	and (hl)
	ld l,(hl)
	ld (hl),l
	rst 28h
	sbc a,b
	dec (hl)
	xor l
	ld de,l7bedh
	xor e
	ex af,af'
	ld b,0edh
	call sub_499dh
	jr nz,l7726h
	xor h
	dec d
	sub h
	ld e,b
	jr z,l76c9h
	and h
	pop de
l76c9h:
	cp h
	sbc a,e
	cp d
l76cch:
	call pe,0d8d3h
	ret z
	ld e,c
	xor b
	defb 0cbh,035h ;sli l
	ret pe
	ld (de),a
	ld (hl),l
	call nz,08a95h
	xor a
	ret p
	inc h
	nop
	and h
	sub a
	inc a
	rst 38h
	ld e,b
	or (hl)
	adc a,d
	ld h,a
	dec sp
	xor a
	sub d
	call p,086abh
	ld (l6ef7h),hl
	ret z
	pop af
	jr z,l7715h
	ld h,l
	rst 20h
	sub d
	ld b,(hl)
	dec l
	daa
	and b
	xor c
	xor d
	add hl,hl
	ld (hl),l
	sub l
	jr z,l76ach
	xor c
	dec de
	jp m,0ce37h
	inc h
	call p,0d293h
	rst 28h
	ld (hl),a
	adc a,033h
	add hl,sp
	rrca
	ld bc,0b4a7h
	ld c,d
	ld d,(hl)
l7715h:
	add a,c
	cpl
	and b
	ld c,e
	ld (hl),d
	sbc a,c
	ld c,a
	add a,l
	inc h
	dec bc
	dec b
	add a,c
	or b
	defb 0edh ;next byte illegal after ed
	call pe,sub_7a93h
l7726h:
	ex af,af'
	ex (sp),hl
	sub e
	inc h
	daa
	jp p,0db9ah
	or h
	ld d,e
	add a,d
l7731h:
	ld e,h
	sbc a,b
	ld c,(hl)
	jp nc,l4518h
	defb 0edh ;next byte illegal after ed
	exx
	ld b,l
	cp l
	ret pe
	add a,h
	sbc a,a
	ld e,b
	push hl
	or c
	add a,a
	sub c
	ret pe
	ld b,l
	add a,a
	and h
	jr l7731h
	ld h,c
	defb 0edh ;next byte illegal after ed
	jp p,0159dh
	ei
	call nc,09296h
	and c
	sub c
	inc bc
	ld hl,0a028h
	call nz,sub_54dah
	ret nz
	ld e,c
	inc hl
	ld d,b
	add a,(hl)
	add a,d
	inc b
	rst 18h
	halt
	or c
	ld d,e
	jp nc,0edb2h
	sub a
	sub l
	halt
	ret pe
	ld d,d
	add a,h
l776fh:
	jr nc,$+9
	adc a,b
	cp l
	and d
	sbc a,h
	xor h
	adc a,c
	or 009h
	cp 0d8h
	jr nz,l776fh
	sbc a,c
	call 02431h
	sbc a,h
	ld b,l
	dec de
	jr z,l77a1h
	ld b,b
	jr nz,$-91
	sub c
	add a,l
	sbc a,b
	sbc a,e
	sub h
	cp a
	ld h,(hl)
	jp l4f5bh
	sbc a,(hl)
	halt
	jp z,0045ah
	push bc
	sub l
	ld d,a
	inc sp
	xor a
	dec d
	adc a,e
	sub a
	ld b,d
l77a1h:
	di
	ld l,(hl)
	ei
	sub l
	add a,0b5h
	add a,h
	ld b,l
	pop de
	jp c,02e29h
	inc (hl)
	inc hl
	pop af
	sub e
	add a,l
	rst 28h
	or d
	xor b
	ld d,d
	jp (hl)
	ld d,d
	rst 28h
	ld c,b
	cp d
	xor a
	xor e
	ld (de),a
	ld bc,07689h
l77c1h:
	jp m,0ae72h
	ld d,e
	dec sp
	push de
	dec h
	ld b,0f4h
	cp e
	or l
	inc hl
	adc a,d
	ld d,d
	daa
	dec hl
	ld c,b
	ret pe
	ret
	xor c
	call nc,0f7edh
	sub d
	and l
	dec d
	ld hl,09901h
	or l
	pop bc
	adc a,d
	defb 0edh ;next byte illegal after ed
	inc a
	add hl,de
	and d
	and d
	ei
	ret z
	ret z
	xor e
	sub (hl)
	cpl
	defb 0ddh,031h,03dh ;illegal sequence
	jr nz,l781dh
	ld c,a
	ld b,b
	ld (l5acdh),hl
	xor c
	ld c,h
	out (045h),a
	rlca
	ld l,h
	ld c,a
	sub (hl)
	adc a,e
	xor h
	ld h,a
	add a,e
	ld b,c
	ld b,l
	add a,(hl)
	defb 0edh ;next byte illegal after ed
	exx
	scf
	ex (sp),hl
	ld l,e
	ld h,09dh
	ld sp,0f725h
	exx
	xor (hl)
	ld de,00465h
	and 019h
	adc a,d
	inc h
	ret c
	ld c,e
	ld h,l
	cpl
	rst 30h
l781dh:
	ld l,e
	sbc a,a
	inc hl
	ret p
	ld sp,038a4h
	ex (sp),hl
	add a,0c7h
	inc sp
	sub (hl)
	dec de
	dec b
	or (hl)
	sbc a,e
	jp nz,0f9ceh
	and l
	ld b,c
	call pe,sub_6ab5h
	sbc a,e
	dec (hl)
	or c
	jr l77c1h
	ld (0c826h),hl
	xor c
	add a,(hl)
	rlca
	jr nc,l7888h
	ld hl,l4467h
	jp c,03bach
	adc a,b
	adc a,d
	adc a,d
	inc e
	ld d,(hl)
	ld h,a
	xor a
	ld (02c46h),a
	rst 18h
	ld (l448ah),a
	ld b,(hl)
	sbc a,0e4h
	inc a
	ld h,c
	sub l
	ld a,a
	inc h
	ld b,e
l785fh:
	add a,c
	inc d
	and 045h
	cp h
	ld a,(hl)
	ld c,l
	out (011h),a
	inc hl
	ld b,a
	rst 38h
	ld l,a
	rst 8
	dec l
	add a,d
	add hl,hl
	dec a
	dec bc
	ld h,l
	ld a,062h
	xor h
	ld c,(hl)
	sbc a,c
	dec sp
	defb 0edh ;next byte illegal after ed
	adc a,b
	ex af,af'
	ld b,h
	inc bc
	jp c,02ecah
	ld l,h
	ld d,l
	cpd
	or a
	cp c
	adc a,e
l7888h:
	xor c
	ld l,a
	ld c,(hl)
	bit 0,l
	xor (hl)
	rst 18h
	adc a,d
	ld bc,0c2f5h
l7893h:
	and h
	add a,097h
	ld a,h
	nop
	rst 0
	ld c,c
	xor a
	ld b,d
	dec hl
	daa
	jp nc,0b225h
	inc l
	ld d,049h
	push de
	ret po
	or d
	or a
	pop af
	ld sp,034a7h
	sbc a,l
	adc a,095h
	and b
	sub h
	and b
	ld e,(hl)
	ret m
	ld e,d
	cp d
	push bc
	sub h
	in a,(05bh)
	adc a,l
	cp c
	xor d
	ld (hl),08bh
	jr l7928h
	jr z,l785fh
	sbc a,d
	ld c,l
	ld b,0ebh
	ret z
	ld a,e
	call p,027c8h
	or c
	scf
	adc a,e
	ld h,0d8h
	cp h
	rst 38h
	sub c
	and b
	ld hl,015aah
	cp e
	ld e,l
	sub h
	or h
	sub a
	adc a,e
	ld b,e
	ld c,c
	ld b,c
	ld (0aeefh),hl
	ld e,(hl)
	ccf
	sub (hl)
	cp l
	adc a,a
	ld (hl),0b6h
	xor l
	inc a
	di
	ld b,000h
	xor b
	ld b,h
	and (hl)
	ld d,09ch
	sub d
	call pe,0018bh
	adc a,049h
	ld e,e
	dec h
	ld a,b
	ld e,c
	push af
	xor a
	dec d
	jp nz,0b917h
	ld b,l
	ex de,hl
	ld a,(bc)
	ld bc,l6602h
	inc hl
	ld hl,l4325h
	add a,(hl)
	sub l
	and d
	ld h,(hl)
	ld h,a
	ld d,(hl)
	and c
	ld c,l
	add a,0e8h
	dec d
	rst 0
	ld h,h
	sub c
	ret p
	ld h,0c4h
	and e
	ret z
	ld a,a
	di
	add a,067h
	and e
	dec e
l7928h:
	jp po,09193h
	sub (hl)
	rst 28h
	or l
	ld b,e
	cp (hl)
	ld d,d
	or e
	sub l
	ld c,092h
	inc h
	call z,0b0e4h
	ld h,l
	inc de
	sbc a,(hl)
	ld sp,00466h
	call pe,0ca24h
	and h
	call po,0eb6dh
	inc bc
	ld h,l
	ld h,a
	defb 0edh ;next byte illegal after ed
	jp nc,l4570h
	and (hl)
	sbc a,e
	add a,0f7h
	jp nc,025b9h
	ld (0cf48h),hl
	add a,h
	call po,0ca56h
	sbc a,b
	retn
	push bc
	jp nz,l44d8h
	and e
	ld hl,0269fh
	ret c
	push af
	rst 28h
	or e
	adc a,h
	cp h
	or e
	ld a,(08804h)
	nop
	ld hl,l52a9h
	in a,(0b2h)
	ld a,(hl)
	ld h,025h
	sub e
	jp pe,0176ch
	ld b,(hl)
	ld e,e
	add a,066h
	add a,l
	ld c,h
	ld (bc),a
	ld l,(hl)
	xor h
	xor b
	sbc a,h
	bit 3,e
	inc h
	inc sp
	or h
	sbc a,c
	ld a,e
	and c
	ld d,026h
	ld d,(hl)
	jp p,06c4ch
	dec h
	sbc a,h
	ld c,d
	inc c
	ld h,095h
	scf
	ld h,0d2h
	and e
	ld b,c
	ex af,af'
	and a
	and b
	ld d,b
	ld (08c24h),hl
	ex de,hl
	call 0cdbdh
	add a,09bh
	and l
	ld d,(hl)
	add hl,bc
	ld (bc),a
	rst 20h
	add a,(hl)
	ld hl,(00147h)
	sbc a,h
	ld d,d
	and h
	ld d,(hl)
	rst 18h
	sub 08fh
	ld (hl),a
	dec b
	ld hl,(00e1dh)
	adc a,b
	inc (hl)
	ld h,l
	ld b,(hl)
	cp l
	or h
	ld h,d
	ld b,a
	sbc a,l
	ld (de),a
	ld b,045h
	call sub_458eh
	dec d
	ld h,e
	or 026h
	call 09ce4h
	sub d
	dec (hl)
	dec h
	ex af,af'
	nop
	cp b
	dec l
	inc l
	jp z,0ee9bh
	ld (hl),e
	add a,d
	ret m
	call m,0929ah
	adc a,062h
	xor a
	inc (hl)
	add a,h
	scf
	adc a,c
	adc a,c
	djnz $+70
	xor a
	inc h
	rra
	defb 0edh ;next byte illegal after ed
	call z,08cd8h
	add a,c
	cp h
	jp (hl)
	ld c,e
	ld h,(hl)
	cp b
	ld (09387h),a
	cp d
	ld b,l
	sbc a,c
	xor (hl)
	ld d,l
	sbc a,c
	inc h
	cp c
	ld l,l
	dec d
	and h
	call nz,06484h
	add a,l
l7a13h:
	sub d
	add a,a
	adc a,e
	inc h
	inc (hl)
	ld d,e
	dec (hl)
	pop de
	jr $+8
	ld a,a
	rst 0
	or d
	di
	ex af,af'
	ld h,002h
l7a24h:
	jr nz,$-119
	ld c,d
	rst 20h
	add hl,hl
	ld hl,02d56h
	adc a,d
	sub c
	rrca
	jp po,0bea8h
	pop af
	rst 0
	and e
	ret c
	inc hl
	call z,0a597h
	cp a
	ld c,d
	ld b,(hl)
	push bc
	add hl,de
	add a,a
	ld (bc),a
	jr $+120
	adc a,d
	inc hl
	add hl,hl
	rst 10h
	jp nc,0d2d9h
	cp l
	ld b,l
	ld b,l
	set 2,h
	rlca
	and e
	ld l,c
	add a,(hl)
	ld h,l
	cp b
	ld (l7a24h),hl
	sbc a,d
	sbc a,l
	inc h
	exx
	ld b,e
	call nc,08158h
	xor b
	xor e
	xor l
	ld a,(0298dh)
	dec e
	rst 30h
	ld c,h
	ld b,d
	ld c,(hl)
	dec h
	sbc a,e
	call z,sub_4598h
	ld l,d
	ld b,a
	adc a,h
	ld b,(hl)
	rst 0
	dec l
	ld b,l
	adc a,l
	add hl,de
	ld h,a
	rst 30h
	inc l
	ld b,l
	dec e
	xor h
	ld sp,l471bh
	ld d,c
	ld b,(hl)
l7a84h:
	call p,0ea4dh
	adc a,h
	ld c,c
	adc a,h
	jr l7a13h
	inc hl
	inc bc
	ld b,c
	or (hl)
	dec hl
	ld c,l
	or c
sub_7a93h:
	or b
l7a94h:
	ld l,b
	ld h,(hl)
	ld b,l
	ld e,e
	inc b
	djnz l7b0ch
	sub h
	sbc a,e
	add a,e
	add hl,sp
	dec d
	ld d,d
	dec bc
	add a,l
	ld h,d
	sbc a,h
	ld c,h
	sub h
	add a,0bch
	and (hl)
	adc a,h
	djnz l7a94h
	ld (0751dh),hl
	ld (bc),a
	jp pe,l7bffh
	ld b,a
	sub c
	or d
	call z,sub_5283h
	ret
	sbc a,l
	or d
	ld h,d
	ld e,d
	rlca
	and l
	rst 30h
	and e
	xor l
	ld b,c
	sub (hl)
	exx
	inc d
	ld h,l
	call nc,0ad91h
	ld d,c
	rra
	xor e
	adc a,l
	ld (0d9dch),hl
	ld (025edh),hl
	add a,0feh
	call po,0b1a7h
	ld e,e
	sub c
	sbc a,c
	sbc a,a
	ret c
	ld l,h
	rlca
	ld (hl),062h
	adc a,d
	rst 20h
	and d
	ld l,c
	ret pe
	xor c
	jr c,l7a84h
	call nc,08c04h
	ld c,c
	ld h,l
	and a
	call nc,0da87h
	defb 0edh ;next byte illegal after ed
	dec bc
	adc a,l
	add hl,sp
	jp p,l4129h
	ld c,d
	ret z
	ld d,c
	jp nc,0289bh
	add a,04ah
	push bc
	add a,098h
	ld (l6523h),hl
	rst 20h
	ld b,(hl)
l7b0ch:
	add a,d
	ret nc
	ld b,h
	sbc a,a
	and l
	adc a,l
	sbc a,l
	push bc
	ld a,b
	ld b,d
	ld b,017h
	and (hl)
	inc bc
	and d
	rlca
	exx
	inc bc
	add hl,bc
	ld bc,01b91h
	and 0e5h
	sub b
	add hl,hl
	bit 2,h
	dec l
	defb 0edh ;next byte illegal after ed
	dec h
	ld b,d
	ld bc,0c769h
	ld (hl),0e3h
	ld h,076h
	and b
	defb 0edh ;next byte illegal after ed
	ld (hl),a
	ld h,d
	ld bc,0ede2h
	jp nc,0d298h
	ld c,b
	ei
	xor h
	ld d,c
	call p,sub_4348h
	add a,d
	rst 20h
	push hl
	and l
	adc a,l
	sub d
	sub h
	sub h
	ld d,c
	and d
	ld l,(hl)
	ret nz
	ld e,h
	inc hl
	ld d,(hl)
	ld (hl),b
	ld c,d
	defb 0edh ;next byte illegal after ed
	or (hl)
	dec a
	ld e,b
	ex af,af'
	rst 10h
	ld h,(hl)
	ld h,d
	jp p,l5966h
	ld (hl),e
	ld (bc),a
	jp m,09e19h
	ld h,03ah
	ld c,l
	ld e,b
	rst 20h
	ld h,0e5h
	ld c,b
	ld b,d
	ld (hl),0a5h
	sbc hl,hl
	ld (hl),a
	ld hl,(02d54h)
	defb 0ddh,00fh,0e6h ;illegal sequence
	defb 0edh ;next byte illegal after ed
	push hl
	ld (bc),a
	pop hl
	call sub_4d46h
	sub c
	adc a,a
	dec c
	dec b
	nop
	rst 38h
	ret m
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7bedh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7bffh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7e3eh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
