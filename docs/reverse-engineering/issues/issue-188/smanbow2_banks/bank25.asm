; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank25.asm /tmp/smanbow2_bank.bin

	org 04000h

	ld c,l
	ld h,c
	ld l,(hl)
	ld h,d
	ld l,a
	ld (hl),a
	jr nz,l403ah
	jr nz,$+47
l400ah:
	jr nz,l4051h
	ld l,(hl)
	ld h,h
	ld h,h
	ld h,l
	ld l,l
	ld l,a
	jr nz,$+47
	jr nz,l4059h
	ld (hl),d
	ld h,l
	ld h,h
	ld l,c
	ld (hl),h
	ld (hl),e
	jr nz,l403eh
	jr nz,l4040h
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
	jr nz,$+34
	jr nz,l405ah
l403ah:
	jr nz,l405ch
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
	scf
	nop
l4050h:
	ex af,af'
l4051h:
	nop
l4052h:
	ld bc,00302h
	inc b
l4056h:
	dec b
	ld b,007h
l4059h:
	ex af,af'
l405ah:
	add hl,bc
	ld a,(bc)
l405ch:
	dec bc
	ex af,af'
l405eh:
	add hl,bc
	ld a,(bc)
l4060h:
	dec bc
	ex af,af'
l4062h:
	add hl,bc
	ld a,(bc)
	dec bc
	ex af,af'
	add hl,bc
	ld a,(bc)
	dec bc
	inc c
	dec c
	ld c,00fh
	inc c
	dec c
	ld c,00fh
	djnz l4084h
	ld (de),a
	inc de
	inc d
	dec d
	ld d,017h
	jr l4094h
	ld a,(de)
	inc de
	inc d
	dec d
	ld d,017h
	djnz l4094h
	ld (de),a
l4084h:
	inc de
	djnz l4098h
	ld (de),a
	dec de
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
l4094h:
	nop
	nop
	nop
	nop
l4098h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	inc d
	inc hl
	inc hl
	dec (hl)
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
	nop
	nop
	inc (hl)
	nop
	add hl,sp
	nop
	inc (hl)
	nop
	add hl,sp
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l420bh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc (hl)
	nop
	add hl,sp
	nop
	cpl
	ld bc,00132h
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld sp,03401h
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld (03601h),a
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	inc (hl)
	ld bc,00139h
	nop
	nop
	nop
	nop
	inc (hl)
	ld bc,00139h
	cpl
	ld (bc),a
	ld (00002h),a
	nop
	nop
	nop
	cpl
	ld bc,00132h
	ld sp,03402h
	ld (bc),a
	nop
	nop
	nop
	nop
	ld sp,03401h
	ld bc,00332h
	ld (hl),003h
	nop
	nop
	nop
	nop
	ld (03601h),a
	ld bc,00334h
	add hl,sp
	inc bc
	nop
	nop
	nop
	nop
	inc (hl)
	ld bc,00139h
	ld (hl),004h
	dec sp
	inc b
	nop
	nop
	nop
	nop
	ld (hl),002h
	dec sp
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc (hl)
	inc b
	add hl,sp
	inc b
	nop
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld (hl),004h
	dec sp
	inc b
	nop
	nop
	nop
	nop
	inc (hl)
	ld (bc),a
	add hl,sp
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (hl),002h
	dec sp
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
	ld (03604h),a
	inc b
	nop
	rrca
	nop
	nop
	ld (03602h),a
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
	add hl,sp
	dec b
	dec sp
	dec b
	nop
	nop
	nop
	nop
	add hl,sp
	ld (bc),a
	dec sp
	ld (bc),a
	scf
	dec b
	add hl,sp
	dec b
	nop
	nop
	nop
	nop
	scf
	ld (bc),a
	add hl,sp
	ld (bc),a
	ld (hl),005h
	ld (hl),005h
	nop
	nop
	nop
	nop
	ld (hl),002h
	ld (hl),002h
	scf
	dec b
	add hl,sp
	dec b
	nop
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,sp
	dec b
	dec sp
	dec b
	nop
	nop
	nop
	nop
	scf
	ld (bc),a
	add hl,sp
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,sp
	ld (bc),a
	dec sp
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
	ld (03705h),a
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc (hl)
	dec b
	add hl,sp
	dec b
	nop
	nop
	nop
	nop
	ld (03702h),a
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc (hl)
	ld (bc),a
	add hl,sp
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
	ld (hl),006h
	ld (00006h),a
	rrca
	nop
	nop
	ld (hl),002h
	ld (00002h),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc (hl)
	ld b,031h
	ld b,000h
	nop
	nop
	nop
	inc (hl)
	ld (bc),a
	ld sp,00002h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (02f06h),a
	ld b,000h
	nop
	nop
	nop
	ld (02f02h),a
	ld (bc),a
	ld sp,02e06h
	ld b,000h
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld sp,02e02h
	ld (bc),a
	ld h,e
	ld bc,00163h
	nop
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,d
	ld bc,0016ch
	nop
	nop
	nop
	nop
	ld h,e
	ld bc,00163h
	ld h,e
	nop
	ld h,e
	nop
	nop
	nop
	nop
	nop
	ld l,d
	ld bc,0016ch
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	nop
	nop
	nop
	nop
	ld h,e
	nop
	ld h,e
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
	ld h,a
	ld (bc),a
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
	ld l,h
	ld bc,0016ch
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
	ld l,h
	ld bc,0016ch
	cpl
	rlca
	ld (00007h),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	cpl
	inc bc
	ld (03103h),a
	rlca
	inc (hl)
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld sp,03403h
	inc bc
	ld (03607h),a
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (03603h),a
	inc bc
	inc (hl)
	rlca
	add hl,sp
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc (hl)
	inc bc
	add hl,sp
	inc bc
	ld (hl),008h
	dec sp
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
	nop
	nop
	nop
	ld (hl),004h
	dec sp
	inc b
	nop
	nop
	nop
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
	ld bc,00167h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld bc,00167h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc (hl)
	ex af,af'
	add hl,sp
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (hl),008h
	dec sp
	ex af,af'
	nop
	nop
	nop
	nop
	inc (hl)
	inc b
	add hl,sp
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (hl),004h
	dec sp
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (03608h),a
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
	nop
	nop
	nop
	ld (03604h),a
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,sp
	add hl,bc
	dec sp
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,sp
	dec b
	dec sp
	dec b
	scf
	add hl,bc
	add hl,sp
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	scf
	dec b
	add hl,sp
	dec b
	ld (hl),009h
	ld (hl),009h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (hl),005h
	ld (hl),005h
	scf
	add hl,bc
	add hl,sp
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,sp
	add hl,bc
	dec sp
	add hl,bc
	nop
	nop
	nop
	nop
	scf
	dec b
	add hl,sp
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,sp
	dec b
	dec sp
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
	ld (03709h),a
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc (hl)
	add hl,bc
	add hl,sp
	add hl,bc
	nop
	nop
	nop
	nop
	ld (03705h),a
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc (hl)
	dec b
	add hl,sp
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
	ld (hl),00ah
	ld (0000ah),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (hl),005h
	ld (00005h),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc (hl)
	ld a,(bc)
	ld sp,0000ah
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc (hl)
	ld b,031h
	ld b,000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (02f0ah),a
	ld a,(bc)
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (02f06h),a
	ld b,031h
	ld a,(bc)
	ld l,00ah
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	dec bc
	rrca
	nop
	nop
	ld h,a
	ld bc,00163h
	ld h,e
	ld bc,01505h
	ld l,h
	ld (bc),a
	ld l,d
	ld bc,00000h
	ld l,d
	ld bc,0016ch
	nop
	nop
	ld l,e
	ld (bc),a
	ld (0000fh),a
	nop
	ld h,e
	nop
	ld h,e
	nop
	dec b
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,e
	ld bc,00267h
	ld h,a
	ld (bc),a
	inc b
	nop
	rla
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
	dec bc
	rrca
	ld h,a
	ld bc,00063h
	ld l,h
	ld bc,0016ch
	inc b
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
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,d
	jr l481bh
l481bh:
	nop
	nop
	nop
	dec b
	nop
	djnz $+17
	ld sp,02f0fh
	dec c
	cpl
	ld a,(bc)
	ld (0050ah),a
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	cpl
	rrca
	ld sp,0310dh
	ld a,(bc)
	inc (hl)
	ld a,(bc)
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld (de),a
	rrca
	ld hl,(0320fh)
	dec c
	ld (0360ah),a
	ld a,(bc)
	ex af,af'
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	dec b
	nop
	ld l,e
	ld (bc),a
	inc (hl)
	rrca
	inc (hl)
	dec c
	inc (hl)
	ld a,(bc)
	add hl,sp
	ld a,(bc)
	dec b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	rrca
	ld (0360fh),a
	dec c
	ld (hl),00ah
	dec sp
	ld a,(bc)
	inc bc
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	inc (hl)
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	ld h,a
	ld bc,00167h
	dec b
	nop
	dec d
	rrca
	add hl,sp
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	add hl,bc
	rrca
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld l,e
	ld (bc),a
	inc (hl)
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	dec b
	nop
	ld l,e
	ld (bc),a
	ld (0000fh),a
	nop
	inc (hl)
	ld a,(bc)
	add hl,sp
	ld a,(bc)
	dec b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	ld (hl),00ah
	dec sp
	ld a,(bc)
	nop
	nop
	ld l,e
	ld (bc),a
	ld sp,0000fh
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
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
	dec l
	rrca
	ld l,h
	ld bc,00a32h
	ld (hl),00ah
	ex af,af'
	nop
	inc b
	rrca
	nop
	nop
	ld h,a
	ld (bc),a
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
	dec b
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	nop
	rlca
	rrca
	ld h,a
	ld bc,00f32h
	nop
	nop
	nop
	nop
	dec b
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld l,h
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	dec hl
	rrca
	ld (0390fh),a
	ld a,(bc)
	dec sp
	ld a,(bc)
	dec b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00f2dh
	nop
	nop
	nop
	nop
	inc b
	nop
	inc de
	rrca
	dec l
	rrca
	ld l,h
	ex af,af'
	scf
	ld a,(bc)
	add hl,sp
	ld a,(bc)
	ex af,af'
	nop
	rlca
	rrca
	ld h,a
	ld bc,00f2dh
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld l,e
	ld (bc),a
	cpl
	rrca
	ld (0360fh),a
	ld a,(bc)
	ld (hl),00ah
	nop
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,0086ch
	nop
	nop
	nop
	nop
	dec b
	nop
	ld l,e
	ld (bc),a
	nop
	nop
	ld (0370fh),a
	ld a,(bc)
	add hl,sp
	ld a,(bc)
	inc b
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	inc (hl)
	rrca
	add hl,sp
	ld a,(bc)
	dec sp
	ld a,(bc)
	nop
	nop
	ld l,e
	ld (bc),a
	ld (l6c0fh),a
	ex af,af'
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00f34h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (0320fh),a
	ld a,(bc)
	scf
	ld a,(bc)
	ex af,af'
	nop
	inc b
	rrca
	nop
	nop
	ld l,h
	ex af,af'
	inc (hl)
	ld a,(bc)
	add hl,sp
	ld a,(bc)
	ex af,af'
	nop
	nop
	nop
	ld sp,0320fh
	rrca
	nop
	nop
	nop
	nop
	inc b
	nop
	nop
	nop
	ld h,a
	ld bc,00f31h
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	rrca
	cpl
	rrca
	cpl
	dec c
	ld (hl),00ah
	ld (0040ah),a
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	ld sp,0000fh
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,e
	ld (bc),a
	ld (0000fh),a
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,e
	ld (bc),a
	inc (hl)
	rrca
	ld sp,0000dh
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	cpl
	dec c
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld b,00fh
	ld (hl),00fh
	ld l,00dh
	inc (hl)
	ld c,031h
	ld c,004h
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	inc (hl)
	rrca
	ld (hl),00dh
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	nop
	nop
	inc (hl)
	dec c
	ld (02f0eh),a
	ld c,005h
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	ex af,af'
	nop
	ld l,e
	ld (bc),a
	ld sp,0310fh
	dec c
	ld sp,02e0ah
	ld a,(bc)
	ex af,af'
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	dec bc
	rrca
	nop
	nop
	ld h,a
	ld bc,00162h
	ld h,c
	nop
	inc b
	dec d
	ld l,h
	ld (bc),a
	ld l,d
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	ld (0000fh),a
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,e
	ld bc,00000h
	nop
	nop
	inc b
	nop
	rla
	rrca
	nop
	nop
	ld l,h
	ld bc,00a32h
	nop
	nop
	dec b
	nop
	dec bc
	rrca
	ld h,a
	ld bc,00063h
	nop
	nop
	nop
	nop
	inc b
	nop
	nop
	nop
	nop
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
	ld (bc),a
	nop
	nop
	ld l,h
	ld bc,00167h
	nop
	nop
	inc b
	nop
	djnz $+17
	ld sp,0000fh
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,0016ch
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	cpl
	rrca
	nop
	nop
	ld sp,0000ah
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,0016ch
	ld h,a
	ld bc,00000h
	nop
	nop
	ld (de),a
	rrca
	ld hl,(0000fh)
	nop
	cpl
	ld a,(bc)
	nop
	nop
	dec b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00162h
	ld h,a
	ld bc,00000h
	dec b
	nop
	ld l,e
	ld (bc),a
	inc (hl)
	rrca
	ld hl,(l610ah)
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	rrca
	ld (0340fh),a
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	inc (hl)
	rrca
	ld (0000ah),a
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	inc b
	nop
	dec d
	rrca
	add hl,sp
	rrca
	inc (hl)
	ld a,(bc)
	nop
	nop
	nop
	nop
	dec b
	nop
	add hl,bc
	rrca
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,e
	ld (bc),a
	inc (hl)
	rrca
	add hl,sp
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,e
	ld (bc),a
	ld (0340fh),a
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	ld sp,0320fh
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec l
	rrca
	ld sp,0000ah
	nop
	nop
	nop
	dec b
	nop
	inc b
	rrca
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	dec b
	nop
	nop
	nop
	nop
	nop
	dec l
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc b
	nop
	nop
	nop
	nop
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
	rrca
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
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
	ld l,e
	ld (bc),a
	dec hl
	rrca
	ld h,a
	ld bc,00000h
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	inc b
	nop
	inc de
	rrca
	dec l
	rrca
	dec hl
	ld a,(bc)
	nop
	nop
	nop
	nop
	dec b
	nop
	rlca
	rrca
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,e
	ld (bc),a
	cpl
	rrca
	dec l
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,e
	ld (bc),a
	nop
	nop
	cpl
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	ld (0000fh),a
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
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
	ld (0000ah),a
	nop
	nop
	nop
	dec b
	nop
	inc b
	rrca
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	dec b
	nop
	nop
	nop
	ld sp,0000fh
	nop
	nop
	nop
	nop
	nop
	inc b
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
	ld (bc),a
	rrca
	cpl
	rrca
	ld sp,0000ah
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	ld sp,02f0fh
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	inc b
	nop
	ld l,e
	ld (bc),a
	ld (0310fh),a
	ld a,(bc)
	nop
	nop
	nop
	nop
	dec b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,e
	ld (bc),a
	inc (hl)
	rrca
	ld (0000ah),a
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	inc b
	nop
	ld b,00fh
	ld (hl),00fh
	inc (hl)
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	inc (hl)
	rrca
	ld (hl),00ah
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	nop
	nop
	inc (hl)
	ld a,(bc)
	nop
	nop
	nop
	nop
	dec b
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	dec b
	nop
	ld l,e
	ld (bc),a
	ld sp,l6c0fh
	ld (bc),a
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00061h
	ld h,d
	inc a
	nop
	nop
	nop
	nop
	add hl,bc
	rrca
	nop
	nop
	ld h,a
	ld bc,00001h
	ld bc,00400h
	dec d
	ld l,h
	ld (bc),a
	ld l,d
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	dec hl
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,e
	ld bc,00000h
	nop
	nop
	inc b
	nop
	dec d
	rrca
	nop
	nop
	dec hl
	ld a,(bc)
	nop
	nop
	nop
	nop
	dec b
	nop
	add hl,bc
	rrca
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	inc b
	nop
	nop
	nop
	nop
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
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	inc b
	nop
	rlca
	rrca
	ld hl,(0000fh)
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	jr z,l4e4bh
	ld hl,(0000ah)
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
l4e4bh:
	nop
	nop
	nop
	nop
	nop
	inc de
	rrca
	ld h,00fh
	jr z,$+12
	nop
	nop
	nop
	nop
	dec b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	dec b
	nop
	ld l,e
	ld (bc),a
	jr z,l4e7bh
	ld h,00ah
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
l4e7bh:
	nop
	nop
	nop
	nop
	nop
	ld b,00fh
	ld hl,(0280fh)
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	jr z,l4eabh
	ld hl,(0000ah)
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
l4eabh:
	nop
	nop
	nop
	inc b
	nop
	ld (de),a
	rrca
	ld h,00fh
	jr z,$+12
	nop
	nop
	nop
	nop
	dec b
	nop
	ld b,00fh
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,e
	ld (bc),a
	cpl
	rrca
	ld h,00ah
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,e
	ld (bc),a
	nop
	nop
	cpl
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
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
	dec h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	nop
	inc b
	rrca
	ld h,a
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	dec b
	nop
	nop
	nop
	nop
	nop
	dec h
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc b
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
	nop
	nop
	rlca
	rrca
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
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
	ld l,e
	ld (bc),a
	dec hl
	rrca
	ld h,a
	ld bc,00000h
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	inc b
	nop
	inc de
	rrca
	dec l
	rrca
	dec hl
	ld a,(bc)
	nop
	nop
	nop
	nop
	dec b
	nop
	rlca
	rrca
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,e
	ld (bc),a
	cpl
	rrca
	dec l
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,e
	ld (bc),a
	nop
	nop
	cpl
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	ld (0000fh),a
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
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
	ld (0000ah),a
	nop
	nop
	nop
	dec b
	nop
	inc b
	rrca
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	dec b
	nop
	nop
	nop
	ld sp,0000fh
	nop
	nop
	nop
	nop
	nop
	inc b
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
	ld (bc),a
	rrca
	cpl
	rrca
	ld sp,02f0ah
	ld a,(bc)
	ld sp,00407h
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	ld h,a
	ld bc,00167h
	nop
	nop
	ld l,e
	ld (bc),a
	ld sp,02f0fh
	ld a,(bc)
	ld sp,02f0ah
	rlca
	inc b
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	ld h,a
	ld bc,00004h
	ld l,e
	ld (bc),a
	ld (0310fh),a
	ld a,(bc)
	ld (0310ah),a
	rlca
	ex af,af'
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	ld h,a
	ld bc,00000h
	inc b
	nop
	ld l,e
	ld (bc),a
	inc (hl)
	rrca
	ld (0340ah),a
	ld a,(bc)
	ld (00007h),a
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	ld h,a
	ld bc,00008h
	ld b,00fh
	ld (hl),00fh
	inc (hl)
	ld a,(bc)
	ld (hl),00ah
	inc (hl)
	rlca
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	ld h,a
	ld bc,00000h
	nop
	nop
	ld l,e
	ld (bc),a
	inc (hl)
	rrca
	ld (hl),00ah
	inc (hl)
	ld a,(bc)
	ld (hl),007h
	ex af,af'
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	ld h,a
	ld bc,00167h
	nop
	nop
	ld l,e
	ld (bc),a
	nop
	nop
	inc (hl)
	ld a,(bc)
	nop
	nop
	inc (hl)
	rlca
	dec b
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	ld h,a
	ld bc,00008h
	ld l,e
	ld (bc),a
	ld sp,0000fh
	nop
	ld sp,0000ah
	nop
	ex af,af'
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	ld h,a
	ld bc,00000h
	ex af,af'
	nop
	dec bc
	rrca
	nop
	nop
	ld h,a
	ld bc,03862h
	nop
	nop
	inc b
	dec d
	ld l,h
	ld (bc),a
	ld l,d
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	ld (0000fh),a
	nop
	dec sp
	ld a,(bc)
	ld (0040ah),a
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,e
	ld bc,00000h
	nop
	nop
	inc b
	nop
	rla
	rrca
	nop
	nop
	ld l,h
	ld bc,00a36h
	cpl
	ld a,(bc)
	dec b
	nop
	dec bc
	rrca
	ld h,a
	ld bc,00063h
	nop
	nop
	nop
	nop
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	ld bc,00167h
	nop
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	inc b
	nop
	djnz $+17
	ld sp,0000fh
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,0016ch
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	cpl
	rrca
	nop
	nop
	add hl,sp
	ld a,(bc)
	inc (hl)
	dec bc
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,0016ch
	nop
	nop
	nop
	nop
	nop
	nop
	ld (de),a
	rrca
	ld hl,(0000fh)
	nop
	inc (hl)
	ld a,(bc)
	dec sp
	dec bc
	dec b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00162h
	nop
	nop
	nop
	nop
	dec b
	nop
	ld l,e
	ld (bc),a
	inc (hl)
	rrca
	ld hl,(l670ah)
	ld (bc),a
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	rrca
	ld (0340fh),a
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	inc (hl)
	rrca
	ld (0000ah),a
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	inc b
	nop
	dec d
	rrca
	add hl,sp
	rrca
	inc (hl)
	ld a,(bc)
	ld l,h
	ld bc,00000h
	dec b
	nop
	add hl,bc
	rrca
	ld h,a
	ld bc,00167h
	ld l,h
	ld bc,00000h
	inc b
	nop
	ld l,e
	ld (bc),a
	inc (hl)
	rrca
	add hl,sp
	ld a,(bc)
	inc (hl)
	ld a,(bc)
	ld (hl),00ah
	nop
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	ld (0340ah),a
	ld a,(bc)
	inc b
	nop
	ld l,e
	ld (bc),a
	ld (0340fh),a
	ld a,(bc)
	inc (hl)
	ld a,(bc)
	ld (hl),00ah
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	ld sp,0320fh
	ld a,(bc)
	ld (0340ah),a
	ld a,(bc)
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec l
	rrca
	ld sp,l670ah
	ld (bc),a
	nop
	nop
	dec b
	nop
	inc b
	rrca
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	dec b
	nop
	nop
	nop
	nop
	nop
	dec l
	ld a,(bc)
	dec l
	ld a,(bc)
	ld (0040ah),a
	nop
	nop
	nop
	nop
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
	rrca
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
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
	ld l,e
	ld (bc),a
	dec hl
	rrca
	ld h,a
	ld bc,00000h
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	inc b
	nop
	inc de
	rrca
	dec l
	rrca
	dec hl
	ld a,(bc)
	cpl
	ld a,(bc)
	jr z,l5284h
	dec b
	nop
	rlca
	rrca
	ld h,a
	ld bc,00167h
	dec l
	ld a,(bc)
l5284h:
	ld h,00ah
	inc b
	nop
	ld l,e
	ld (bc),a
	cpl
	rrca
	dec l
	ld a,(bc)
	cpl
	ld a,(bc)
	jr z,l529ch
	nop
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
l529ch:
	nop
	nop
	inc b
	nop
	ld l,e
	ld (bc),a
	nop
	nop
	cpl
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	ld (0000fh),a
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	nop
	ld (02f0ah),a
	ld a,(bc)
	inc (hl)
	ld a,(bc)
	dec b
	nop
	inc b
	rrca
	nop
	nop
	ld h,a
	ld bc,0096ch
	ld l,h
	add hl,bc
	dec b
	nop
	nop
	nop
	ld sp,0000fh
	nop
	cpl
	ld a,(bc)
	inc (hl)
	ld a,(bc)
	inc b
	nop
	nop
	nop
	ld h,a
	ld bc,00000h
	dec l
	ld a,(bc)
	ld (0000ah),a
	nop
	ld (bc),a
	rrca
	cpl
	rrca
	ld sp,02f0ah
	ld a,(bc)
	scf
	dec bc
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	ld sp,02f0fh
	ld a,(bc)
	ld sp,0360ah
	ld a,(bc)
	inc b
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	inc b
	nop
	ld l,e
	ld (bc),a
	ld (0310fh),a
	ld a,(bc)
	ld (0340ah),a
	dec bc
	dec b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,e
	ld (bc),a
	inc (hl)
	rrca
	ld (0340ah),a
	ld a,(bc)
	add hl,sp
	dec bc
	nop
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	inc b
	nop
	ld b,00fh
	ld (hl),00fh
	inc (hl)
	ld a,(bc)
	ld (hl),00ah
	dec sp
	dec bc
	ex af,af'
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	inc (hl)
	rrca
	ld (hl),00ah
	inc (hl)
	ld a,(bc)
	dec a
	dec bc
	ex af,af'
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	ld l,e
	ld (bc),a
	nop
	nop
	inc (hl)
	ld a,(bc)
	cpl
	ld a,(bc)
	ld a,00bh
	ex af,af'
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	ld sp,l6c0fh
	ld (bc),a
	ld sp,l400ah
	dec bc
	ex af,af'
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00061h
	ld h,a
	ld bc,00167h
	nop
	nop
	add hl,bc
	rrca
	nop
	nop
	ld h,a
	ld bc,00000h
	ld h,a
	ld bc,01505h
	ld l,h
	ld (bc),a
	ld l,d
	ld bc,00000h
	ld l,d
	ld bc,0016ch
	nop
	nop
	ld l,e
	ld (bc),a
	dec hl
	rrca
	nop
	nop
	dec hl
	ld a,(bc)
	ld l,h
	ld bc,00005h
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,e
	ld bc,00000h
	ld l,h
	ld bc,00004h
	dec d
	rrca
	nop
	nop
	dec hl
	ld a,(bc)
	nop
	nop
	dec hl
	rlca
	ex af,af'
	nop
	add hl,bc
	rrca
	ld h,a
	ld bc,00000h
	ld h,a
	ld bc,00000h
	inc b
	nop
	nop
	nop
	nop
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
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	ld h,a
	ld bc,00005h
	rlca
	rrca
	ld hl,(0000fh)
	nop
	ld hl,(0000ah)
	nop
	dec b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	ld h,a
	ld bc,00000h
	nop
	nop
	ld l,e
	ld (bc),a
	jr z,l544bh
	ld hl,(0280ah)
	ld a,(bc)
	ld hl,(00407h)
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	ld h,a
l544bh:
	ld bc,00167h
	nop
	nop
	inc de
	rrca
	ld h,00fh
	jr z,$+12
	ld h,00ah
	jr z,$+9
	ex af,af'
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	ld h,a
	ld bc,00167h
	dec b
	nop
	ld l,e
	ld (bc),a
	jr z,l547bh
	ld h,00ah
	jr z,l547ah
	ld h,007h
	dec b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
l547ah:
	ld h,a
l547bh:
	ld bc,00167h
	nop
	nop
	ld b,00fh
	ld hl,(0280fh)
	ld a,(bc)
	ld hl,(0280ah)
	rlca
	dec b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	ld h,a
	ld bc,00167h
	nop
	nop
	ld l,e
	ld (bc),a
	jr z,l54abh
	ld hl,(0280ah)
	ld a,(bc)
	ld hl,(00507h)
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	ld h,a
l54abh:
	ld bc,00167h
	inc b
	nop
	ld (de),a
	rrca
	ld h,00fh
	jr z,$+12
	ld h,00ah
	jr z,$+9
	ex af,af'
	nop
	ld b,00fh
	ld h,a
	ld bc,00167h
	ld h,a
	ld bc,00167h
	inc b
	nop
	ld l,e
	ld (bc),a
	cpl
	rrca
	ld h,00ah
	cpl
	ld a,(bc)
	ld h,007h
	nop
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	ld h,a
	ld bc,00167h
	dec b
	nop
	ld l,e
	ld (bc),a
	nop
	nop
	cpl
	ld a,(bc)
	nop
	nop
	cpl
	rlca
	dec b
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	ld h,a
	ld bc,00000h
	ld l,e
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	dec h
	rrca
	nop
	nop
	dec h
	ld a,(bc)
	nop
	nop
	ex af,af'
	nop
	inc b
	rrca
	ld h,a
	ld (bc),a
	ld h,a
	ld bc,00267h
	ld h,a
	ld bc,00005h
	nop
	nop
	nop
	nop
	dec h
	ld a,(bc)
	nop
	nop
	dec h
	rlca
	dec b
	nop
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	nop
	rlca
	rrca
	ld h,a
	ld bc,00000h
	ld h,a
	ld bc,00000h
	dec b
	nop
	ld l,h
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
	ld l,e
	ld (bc),a
	dec hl
	rrca
	ld h,a
	ld bc,00a2bh
	ld h,a
	ld bc,00005h
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	ld h,a
	ld bc,00000h
	inc b
	nop
	inc de
	rrca
	dec l
	rrca
	dec hl
	ld a,(bc)
	dec l
	ld a,(bc)
	dec hl
	rlca
	ex af,af'
	nop
	rlca
	rrca
	ld h,a
	ld bc,00167h
	ld h,a
	ld bc,00167h
	ex af,af'
	nop
	ld l,e
	ld (bc),a
	cpl
	rrca
	dec l
	ld a,(bc)
	cpl
	ld a,(bc)
	dec l
	rlca
	nop
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	ld h,a
	ld bc,00167h
	dec b
	nop
	ld l,e
	ld (bc),a
	nop
	nop
	cpl
	ld a,(bc)
	nop
	nop
	cpl
	rlca
	inc b
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	ld h,a
	ld bc,00000h
	ld l,e
	ld (bc),a
	ld (0000fh),a
	nop
	ld (0000ah),a
	nop
	ex af,af'
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld (0000ah),a
	nop
	ld (00807h),a
	nop
	inc b
	rrca
	nop
	nop
	ld h,a
	ld bc,00000h
	ld h,a
	ld bc,00008h
	nop
	nop
	ld sp,0000fh
	nop
	ld sp,0000ah
	nop
	inc b
	nop
	nop
	nop
	ld h,a
	ld bc,00000h
	ld h,a
	ld bc,00000h
	nop
	nop
	ld (bc),a
	rrca
	cpl
	rrca
	ld sp,0000ah
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	ld sp,02f0fh
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	inc b
	nop
	ld l,e
	ld (bc),a
	ld (0310fh),a
	ld a,(bc)
	nop
	nop
	nop
	nop
	dec b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,e
	ld (bc),a
	inc (hl)
	rrca
	ld (0000ah),a
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	inc b
	nop
	ld b,00fh
	ld (hl),00fh
	inc (hl)
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	inc (hl)
	rrca
	ld (hl),00ah
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	nop
	nop
	inc (hl)
	ld a,(bc)
	nop
	nop
	nop
	nop
	dec b
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	dec b
	nop
	ld l,e
	ld (bc),a
	ld sp,l6c0fh
	ld (bc),a
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,h
	ld (bc),a
	ld h,a
	ld bc,00061h
	nop
	nop
	nop
	nop
	nop
	nop
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
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
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
	jr nz,l604bh
	jr nz,$+47
	jr nz,l605fh
	ld l,(hl)
	ld (hl),e
	ld l,c
	ld h,h
	ld h,l
	jr nz,l606ah
	ld h,c
	ld l,(hl)
	ld h,d
	ld l,a
	ld (hl),a
	jr nz,l6051h
	jr nz,l607bh
	ld l,(hl)
	ld h,h
	ld h,l
	ld (hl),d
	jr nz,l6083h
	ld h,c
	ld (hl),h
	ld h,l
	ld (hl),d
	jr nz,l6052h
	jr nz,$+34
	jr nz,l6056h
	jr nz,$+34
	jr nz,l605ah
l603ah:
	jr nz,$+34
	jr nz,l605eh
	jr nz,$+34
	jr nz,l6062h
	jr nz,l6091h
	ld d,l
	ld d,e
	ld c,c
	ld c,(hl)
	ld d,e
	ld d,h
	ld d,d
l604bh:
	ld d,e
	ld b,d
	ld c,e
	ld sp,00000h
l6051h:
	nop
l6052h:
	ld bc,00302h
	nop
l6056h:
	ld bc,00302h
	inc b
l605ah:
	dec b
	ld b,007h
	inc b
l605eh:
	dec b
l605fh:
	ld b,007h
	ex af,af'
l6062h:
	add hl,bc
	ld a,(bc)
	dec bc
	nop
	ld bc,00302h
	inc b
l606ah:
	dec b
	ld b,007h
	inc c
	dec c
	ld c,00fh
	inc c
	dec c
	ld c,00fh
	djnz l6088h
	ld (de),a
	inc de
	djnz l608ch
l607bh:
	ld (de),a
	inc de
	inc c
	dec c
	ld c,00fh
	inc c
	inc d
l6083h:
	nop
	nop
	nop
	nop
	nop
l6088h:
	nop
	nop
	nop
	nop
l608ch:
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
	nop
l610ah:
	nop
	nop
	nop
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
	ld d,00fh
	rrca
	rrca
	rrca
	rrca
	ld hl,03232h
	ld (08080h),a
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
	ld (de),a
	inc c
	ld hl,(l610fh)
	nop
	ld h,c
	nop
	ld hl,(00500h)
	dec d
	nop
	nop
	ld h,h
	djnz l61d1h
l61d1h:
	nop
	ld l,d
	ld bc,00169h
	add hl,bc
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	dec b
	add hl,bc
	rla
	nop
	nop
	ld e,00bh
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	dec d
	nop
	nop
	ld h,h
	djnz l61f5h
l61f5h:
	nop
	ld hl,(0000bh)
	nop
	add hl,bc
	dec d
	ld b,00ch
	nop
	nop
	nop
	nop
	ld h,h
	djnz l6270h
	inc bc
	ex af,af'
	dec d
	nop
	nop
	ld (de),a
	dec bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	ld (de),a
	inc c
	ld h,h
	djnz l6219h
l6219h:
	nop
	ld e,00bh
	nop
	nop
	dec b
	dec d
	nop
	nop
	nop
	nop
	dec l
	nop
	ld h,h
	djnz l6229h
l6229h:
	nop
	add hl,bc
	rla
	nop
	nop
	nop
	nop
	ld h,a
	inc b
	nop
	nop
	ld l,e
	ld bc,01709h
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	ld (de),a
	dec bc
	nop
	nop
	add hl,bc
	dec d
	nop
	nop
	ld l,h
	ld bc,00000h
	ld h,h
	djnz l624dh
l624dh:
	nop
	add hl,bc
	dec d
	ld b,00ch
	ld l,h
	ld bc,0016bh
	nop
	nop
	nop
	nop
	ex af,af'
	dec d
	nop
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	ld l,e
	ld bc,01509h
	nop
	nop
	ld h,c
	nop
	ld l,e
	ld bc,00000h
l6270h:
	nop
	nop
	add hl,bc
	rrca
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,0016ch
	ld l,e
	ld bc,00f09h
	ld (de),a
	inc c
	ld hl,(0000fh)
	nop
	ld l,h
	ld bc,0002dh
	dec b
	dec d
	nop
	nop
	ld h,h
	djnz l6291h
l6291h:
	nop
	ld l,h
	ld bc,0016bh
	add hl,bc
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld h,a
	dec b
	add hl,bc
	rla
	nop
	nop
	dec l
	dec bc
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	dec d
	nop
	nop
	ld h,h
	djnz l62b5h
l62b5h:
	nop
	ld hl,(0000bh)
	nop
	add hl,bc
	dec d
	ld b,00ch
	nop
	nop
	nop
	nop
	ld h,h
	djnz l6330h
	inc bc
	ex af,af'
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
	dec d
	ld (de),a
	inc c
	ld e,00bh
	nop
	nop
	dec l
	dec bc
	nop
	nop
	dec b
	dec d
	nop
	nop
	ld h,h
	djnz l62e5h
l62e5h:
	nop
	ld h,h
	djnz l62e9h
l62e9h:
	nop
	add hl,bc
	rla
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00000h
	ld l,e
	ld bc,01709h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	dec d
	nop
	nop
	ld l,h
	ld bc,0016ch
	ld e,00bh
	nop
	nop
	add hl,bc
	dec d
	dec d
	inc c
	ld l,h
	ld bc,00000h
	ld h,h
	djnz l6319h
l6319h:
	nop
	dec b
	dec d
	nop
	nop
	ld l,h
	ld bc,0016ch
	nop
	nop
	ld l,e
	ld bc,01508h
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
l6330h:
	nop
	nop
	dec b
	rrca
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
	ld l,e
	ld bc,00f09h
	ld (de),a
	inc c
	ld sp,0000fh
	nop
	ld l,h
	ld bc,00031h
	dec b
	dec d
	nop
	nop
	ld h,h
	djnz l6351h
l6351h:
	nop
	ld l,h
	ld bc,0016bh
	add hl,bc
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld h,a
	dec b
	add hl,bc
	rla
	nop
	nop
	dec h
	dec bc
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	dec d
	nop
	nop
	ld h,h
	djnz l6375h
l6375h:
	nop
	ld sp,0000bh
	nop
	add hl,bc
	dec d
	ld b,00ch
	nop
	nop
	nop
	nop
	ld h,h
	djnz l63f0h
	inc bc
	ex af,af'
	dec d
	nop
	nop
	add hl,de
	dec bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	ld (de),a
	inc c
	ld h,h
	djnz l6399h
l6399h:
	nop
	dec h
	dec bc
	nop
	nop
	dec b
	dec d
	nop
	nop
	nop
	nop
	ld sp,l6400h
	djnz l63a9h
l63a9h:
	nop
	add hl,bc
	rla
	nop
	nop
	nop
	nop
	ld h,a
	inc b
	nop
	nop
	ld l,e
	ld bc,01709h
	nop
	nop
	nop
	nop
	ld l,e
	ld (bc),a
	add hl,de
	dec bc
	nop
	nop
	add hl,bc
	dec d
	nop
	nop
	ld l,h
	ld bc,00000h
	ld h,h
	djnz l63cdh
l63cdh:
	nop
	add hl,bc
	dec d
	ld b,00ch
	ld l,h
	ld bc,0016bh
	nop
	nop
	nop
	nop
	ex af,af'
	dec d
	nop
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	ld l,e
	ld bc,01509h
	nop
	nop
	ld h,c
	nop
	ld l,e
	ld bc,00000h
l63f0h:
	nop
	nop
	add hl,bc
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016bh
	add hl,bc
	rrca
l6400h:
	ld (de),a
	inc c
	ld hl,(0000fh)
	nop
l6406h:
	ld l,h
	ld bc,00036h
	dec b
	dec d
	nop
	nop
	ld h,h
	djnz l6411h
l6411h:
	nop
	ld l,h
	ld bc,0016bh
	add hl,bc
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld h,a
	dec b
	add hl,bc
	rla
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
	add hl,bc
	dec d
	ld b,00ch
	ld sp,0000fh
	nop
	ld hl,(0000bh)
	nop
	add hl,bc
	dec d
	ld h,c
	nop
	ld h,h
	ld de,00000h
	ld h,h
	djnz $+109
	ld (bc),a
	ex af,af'
	dec d
	ld b,00ch
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
	nop
	nop
	ld (hl),00fh
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld sp,0000bh
	nop
	add hl,bc
	rla
	nop
	nop
	ld h,a
	ld bc,0016ch
	ld h,h
	ld de,0016bh
	add hl,bc
	rla
	ld (de),a
	inc c
	ld h,h
	djnz l647dh
l647dh:
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	dec d
	nop
	nop
	ld l,h
	ld bc,0016ch
	ld (hl),00bh
	nop
	nop
	add hl,bc
	dec d
	djnz l649eh
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	nop
	dec b
	dec d
	nop
	nop
l649eh:
	ld l,h
	ld (bc),a
	ld l,h
	ld bc,00167h
	ld l,e
	ld bc,01508h
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld h,h
	djnz l64b1h
l64b1h:
	nop
	dec b
	rrca
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,00f09h
	ld (de),a
	inc c
	ld e,00fh
	ld e,00fh
	ld hl,(l610fh)
	nop
	dec b
	dec d
	nop
	nop
	ld l,d
	ex af,af'
	ld l,c
	ex af,af'
	ld h,h
	djnz l64d5h
l64d5h:
	nop
	nop
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	ld e,00fh
	nop
	nop
	add hl,bc
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,h
	djnz l64f9h
l64f9h:
	nop
	add hl,bc
	dec d
	add hl,bc
	inc c
	ld hl,0210fh
	rrca
	nop
	nop
	nop
	nop
	ex af,af'
	dec d
	ld b,00ch
	ld e,00fh
	ld e,00fh
	ld (de),a
	rrca
	nop
	nop
	nop
	dec d
	nop
	nop
	ld l,h
	ld bc,0016ch
	ld h,h
	djnz l651dh
l651dh:
	nop
	ex af,af'
	dec d
	nop
	nop
	ld l,h
	inc bc
	ld l,h
	inc bc
	ld l,h
	ld bc,0002dh
	nop
	rla
	ld b,00ch
	ld e,00fh
	ld e,00fh
	ld l,h
	ld bc,00467h
	nop
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld l,e
	ld (bc),a
	add hl,bc
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	add hl,bc
	dec d
	add hl,bc
	inc c
	ld hl,0210fh
	rrca
	ld h,c
	nop
	ld l,e
	ld bc,01508h
	ld b,00ch
	ld e,00fh
	ld e,00fh
	nop
	nop
	nop
	nop
	ld (bc),a
	inc d
	nop
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00f08h
	ld (de),a
	inc c
	ld e,00fh
	ld e,00fh
	ld hl,(0000fh)
	nop
	dec b
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,h
	djnz l6595h
l6595h:
	nop
	nop
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	dec l
	rrca
	nop
	nop
	add hl,bc
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,h
	djnz l65b9h
l65b9h:
	nop
	add hl,bc
	dec d
	ld b,00ch
	ld hl,0210fh
	rrca
	nop
	nop
	nop
	nop
	ex af,af'
	dec d
	nop
	nop
	ld e,00fh
	ld e,00fh
	nop
	nop
	nop
	nop
	nop
	dec d
	ld (de),a
	inc c
	ld l,h
	ld bc,0016ch
	ld e,00fh
	nop
	nop
	dec b
	dec d
	nop
	nop
	ld l,h
	inc bc
	ld l,h
	inc bc
	ld h,h
	djnz l65e9h
l65e9h:
	nop
	nop
	rla
	nop
	nop
	ld e,00fh
	ld e,00fh
	ld l,h
	ld bc,00000h
	nop
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00000h
	ex af,af'
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld l,h
	ld bc,01509h
	add hl,bc
	inc c
	ld hl,0210fh
	rrca
	ld l,h
	ld (bc),a
	nop
	nop
	nop
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ex af,af'
	inc d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ex af,af'
	rrca
	ld (de),a
	inc c
	ld e,00fh
	ld e,00fh
	ld sp,0000fh
	nop
	dec b
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,h
	djnz l6655h
l6655h:
	nop
	nop
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	dec h
	rrca
	nop
	nop
	add hl,bc
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,h
	djnz l6679h
l6679h:
	nop
	add hl,bc
	dec d
	add hl,bc
	inc c
	ld hl,0210fh
	rrca
	nop
	nop
	nop
	nop
	ex af,af'
	dec d
	ld b,00ch
	ld e,00fh
	ld e,00fh
	add hl,de
	rrca
	nop
	nop
	nop
	dec d
	nop
	nop
	ld l,h
	ld bc,0016ch
	ld h,h
	djnz l669dh
l669dh:
	nop
	dec b
	dec d
	nop
	nop
	ld l,h
	inc bc
	ld l,h
	inc bc
	ld l,h
	ld bc,00031h
	nop
	rla
	ld b,00ch
	ld e,00fh
	ld e,00fh
	ld l,h
	ld bc,00467h
	nop
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0026bh
	add hl,bc
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	add hl,bc
	dec d
	add hl,bc
	inc c
	ld hl,0210fh
	rrca
	ld h,c
	nop
	ld l,e
	ld bc,01508h
	ld b,00ch
	ld e,00fh
	ld e,00fh
	nop
	nop
	nop
	nop
	ex af,af'
	inc d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00f05h
	nop
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
	ld (de),a
	inc c
	ld e,00fh
l6704h:
	ld e,00fh
	ld hl,(0000fh)
	nop
l670ah:
	dec b
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,h
	djnz l6715h
l6715h:
	nop
	nop
	rla
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rla
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
	ex af,af'
	dec d
	ld b,00ch
	nop
	nop
	nop
	nop
	ld sp,0000fh
	nop
	nop
	inc d
	ld h,c
	nop
	ld hl,0210fh
	rrca
	ld h,h
	ld de,00000h
	dec b
	dec d
	ld b,00ch
	ld e,00fh
	ld e,00fh
	nop
	nop
	nop
	nop
	nop
	dec d
	nop
	nop
	ld l,h
	ld bc,0016ch
	ld (hl),00fh
	nop
	nop
	ex af,af'
	dec d
	nop
	nop
	ld l,h
	inc bc
	ld l,h
	inc bc
	nop
	nop
	nop
	nop
	nop
	rla
	nop
	nop
	ld e,00fh
	ld e,00fh
	ld h,a
	ld bc,0016ch
	nop
	rla
	ld (de),a
	inc c
	nop
	nop
	nop
	nop
	ld h,h
	djnz l6781h
l6781h:
	nop
	add hl,bc
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
	add hl,bc
	dec d
	djnz l679eh
	ld hl,0210fh
	rrca
	ld l,h
	ld bc,00000h
	nop
	dec d
	nop
	nop
l679eh:
	inc hl
	dec c
	inc hl
	dec c
	ld l,h
	ld bc,0016ch
	ex af,af'
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	rrca
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
	inc bc
	nop
	nop
	ld l,h
	ld (bc),a
	ex af,af'
	rrca
	ld c,00ch
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	ld hl,(00500h)
	dec d
	nop
	nop
	ld a,(de)
	ld (bc),a
	rrca
	ld b,000h
	nop
	ld l,e
	inc bc
	add hl,bc
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	dec b
	dec b
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	dec d
	ld (bc),a
	inc c
	nop
	nop
	nop
	nop
	ld a,(de)
	ex af,af'
	nop
	nop
	ex af,af'
	dec d
	nop
	nop
	ld h,e
	jr nz,l6864h
	jr nz,l6829h
	ex af,af'
	nop
	nop
	add hl,bc
	dec d
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ex af,af'
	nop
	nop
	nop
	dec d
	ld c,00ch
	ld h,h
	jr nc,l687dh
	jr nc,l687ch
	nop
	nop
	nop
	add hl,bc
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld (00005h),a
l6829h:
	nop
	add hl,bc
	dec d
	nop
	nop
	ld h,e
	ld b,b
	ld h,e
	ld b,b
	ld h,c
	nop
	ld l,e
	ld bc,01500h
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ex af,af'
	nop
	nop
	dec b
	dec d
	ld (bc),a
	inc c
	ld h,h
	jr nc,l68adh
	jr nc,l6871h
	ex af,af'
	nop
	nop
	nop
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ex af,af'
	nop
	nop
	ex af,af'
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,008h
l6864h:
	nop
	nop
	dec b
	dec d
	ld (bc),a
	inc c
	ld h,e
	ld (03263h),a
	ld h,c
	nop
	nop
l6871h:
	nop
	nop
	dec d
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,008h
l687ch:
	ld l,e
l687dh:
	ld bc,01500h
	ld h,c
	nop
	ld l,e
	ld bc,0016bh
	ld a,(de)
	ex af,af'
	nop
	nop
	dec b
	dec d
	ld c,00ch
	ld h,h
	jr nc,l68f5h
	jr nc,l68b9h
	ex af,af'
	nop
	nop
	nop
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ex af,af'
	nop
	nop
	dec b
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld (l6c05h),a
l68adh:
	ld bc,01500h
	ld (bc),a
	inc c
	ld h,e
	jr nc,l6918h
	jr nc,l6918h
	nop
	nop
l68b9h:
	nop
	ex af,af'
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
	dec b
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
	add hl,bc
	dec d
	ld c,00ch
	ld h,h
	jr nc,l693dh
	jr nc,l68dbh
l68dbh:
	nop
	nop
	nop
	dec b
	dec d
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ex af,af'
	nop
	nop
	dec b
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,008h
	nop
l68f5h:
	nop
	nop
	dec d
	nop
	nop
	ld h,e
	jr nc,l6960h
	jr nc,l6919h
	ex af,af'
	nop
	nop
	dec b
	dec d
	ld (bc),a
	inc c
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,008h
l6918h:
	nop
l6919h:
	nop
	ex af,af'
	dec d
	nop
	nop
	ld h,h
	jr nc,l6985h
	jr nc,$+40
	ex af,af'
	ld l,h
	ld bc,01505h
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ex af,af'
	nop
	nop
	nop
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,002h
	nop
l693dh:
	nop
	nop
	dec d
	ld c,00ch
	ld h,e
	jr nc,l69a8h
	jr nc,l696dh
	ex af,af'
	ld hl,(00500h)
	dec d
	ld h,c
	nop
	ld l,e
	ld bc,0016bh
	ld h,008h
	ld l,e
	inc bc
	add hl,bc
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
l6960h:
	ld h,a
	dec b
	dec b
	dec d
	nop
	nop
	ld h,h
	jr nc,l69cdh
	jr nc,l699dh
	dec b
	nop
l696dh:
	nop
	nop
	dec d
	ld (bc),a
	inc c
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ex af,af'
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,002h
	nop
l6985h:
	nop
	add hl,bc
	dec d
	nop
	nop
	ld h,e
	jr nc,l69f0h
	jr nc,l69f0h
	nop
	nop
	nop
	nop
	dec d
	ld c,00ch
	nop
	nop
	nop
	nop
	ld (00005h),a
l699dh:
	nop
	add hl,bc
	dec d
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ex af,af'
l69a8h:
	nop
	nop
	add hl,bc
	dec d
	nop
	nop
	ld h,h
	jr nc,l6a15h
	jr nc,l6a14h
	nop
	ld l,e
	ld bc,01500h
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ex af,af'
	nop
	nop
	dec b
	dec d
	ld (bc),a
	inc c
	nop
	nop
	nop
	nop
	ld (00005h),a
l69cdh:
	nop
	nop
	dec d
	nop
	nop
	ld h,e
	jr nc,l6a38h
	jr nc,l69fdh
	ex af,af'
	nop
	nop
	ex af,af'
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld (l6b05h),a
	ld bc,01505h
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
l69f0h:
	nop
	nop
	nop
	dec d
	nop
	nop
	ld h,h
	jr nc,l6a5dh
	jr nc,l6a2dh
	dec b
	ld l,e
l69fdh:
	ld bc,01500h
	ld c,00ch
	nop
	nop
	nop
	nop
	ld h,008h
	ld l,h
	ld bc,01505h
	nop
	nop
	ld l,e
	ld bc,0016bh
	ld h,c
	nop
l6a14h:
	nop
l6a15h:
	nop
	nop
	dec d
	nop
	nop
	ld h,e
	jr nc,l6a80h
	jr nc,l6a45h
	ex af,af'
	nop
	nop
	dec b
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld (00005h),a
l6a2dh:
	nop
	nop
	dec d
	ld (bc),a
	inc c
	nop
	nop
	nop
	nop
	ld h,c
	nop
l6a38h:
	nop
	nop
	ex af,af'
	dec d
	nop
	nop
	ld h,h
	jr nc,l6aa5h
	jr nc,l6a75h
	dec b
	nop
l6a45h:
	nop
	dec b
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	ex af,af'
	nop
	nop
	add hl,bc
	dec d
	ld c,00ch
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
l6a5dh:
	nop
	dec b
	dec d
	nop
	nop
	ld h,e
	jr nc,l6ac8h
	jr nc,l6a67h
l6a67h:
	nop
	ld l,h
	ld bc,01505h
	nop
	nop
	nop
	nop
	nop
	nop
	ld (00005h),a
l6a75h:
	nop
	nop
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,002h
l6a80h:
	nop
	nop
	dec b
	dec d
	nop
	nop
	ld h,h
	jr nc,l6aedh
	jr nc,l6abdh
	ex af,af'
	nop
	nop
	nop
	dec d
	djnz l6a9eh
	ld l,h
	ld bc,0016ch
	ld (00005h),a
	nop
	ex af,af'
	dec d
	nop
	nop
l6a9eh:
	ld l,h
	ld bc,0016ch
	inc e
	ex af,af'
	ld l,h
l6aa5h:
	ld bc,01505h
	nop
	nop
	ld h,e
	jr nc,l6b10h
	jr nc,l6aefh
	ld (bc),a
	nop
	nop
	nop
	dec d
	nop
	nop
	ld l,d
	ld bc,00169h
	inc e
	ex af,af'
	nop
l6abdh:
	nop
	nop
	dec d
	ld c,00ch
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
l6ac8h:
	ld h,c
	nop
	dec b
	dec d
	nop
	nop
	ld l,d
	ld bc,00169h
	nop
	nop
	nop
	nop
	add hl,bc
	dec d
	nop
	nop
	nop
	nop
	ld hl,(0260ch)
	rrca
	nop
	nop
	dec b
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	djnz l6aedh
l6aedh:
	nop
	nop
l6aefh:
	dec d
	ld (bc),a
	inc c
	nop
	nop
	dec l
	inc c
	ld hl,(0000fh)
	nop
	ex af,af'
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
l6b05h:
	nop
	add hl,bc
	dec d
	nop
	nop
	ld h,009h
	nop
	nop
	nop
	nop
l6b10h:
	nop
	nop
	nop
	dec d
	ld c,00ch
	ld h,a
	djnz l6b19h
l6b19h:
	nop
	nop
	nop
	ld sp,00900h
	dec d
	nop
	nop
	ld hl,(00009h)
	nop
	nop
	nop
	ld l,e
	inc bc
	add hl,bc
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0036bh
	nop
	dec d
	nop
	nop
	ld h,a
	ld bc,00000h
	ld l,h
	ld bc,00a2fh
	dec b
	dec d
	ld (bc),a
	inc c
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00000h
	nop
	dec d
	nop
	nop
	nop
	nop
	dec l
	inc c
	ld l,h
	ld bc,00a2ah
	ex af,af'
	dec d
	nop
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	nop
	dec b
	dec d
	nop
	nop
	ld l,h
	ld bc,00c28h
	nop
	nop
	inc l
	ld a,(bc)
	nop
	dec d
	nop
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	dec d
	ld c,00ch
	ld l,h
	ld bc,00c26h
	dec l
	rrca
	ld h,c
	nop
	dec b
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
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,sp
	nop
	dec b
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,01500h
	ld (bc),a
	inc c
	dec l
	add hl,bc
	nop
	nop
	nop
	nop
	ld h,a
	djnz l6bc3h
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6bc3h:
	nop
	ld l,e
	ld bc,01505h
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	add hl,bc
	dec d
	ld c,00ch
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,b
	ld (bc),a
	dec b
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
	dec b
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
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	ld b,005h
	dec d
l6c04h:
	ld (bc),a
l6c05h:
	inc c
	ld l,h
	ld bc,00000h
	nop
l6c0bh:
	nop
	nop
	nop
	nop
l6c0fh:
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,01508h
	nop
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	nop
	dec b
	dec d
	nop
	nop
	nop
	nop
	ld h,00ch
	inc l
	rrca
	nop
	nop
	nop
	dec d
	nop
	nop
	ld l,h
	ld bc,00c25h
	dec l
	rrca
	nop
	nop
	nop
	dec d
	ld b,00ch
	ld h,c
	nop
	cpl
	inc c
	inc l
	rrca
	inc l
	nop
	dec b
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
	add hl,bc
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld l,e
	ld (bc),a
	dec b
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld l,e
	ld (bc),a
	nop
	dec d
	ld (de),a
	inc c
	nop
	nop
	dec l
	inc c
	ld hl,(l610fh)
	nop
	ex af,af'
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
	add hl,bc
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (hl),002h
	dec b
	dec d
	ld b,00ch
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	ld b,000h
	dec d
	nop
	nop
	ld (00007h),a
	nop
	nop
	nop
	ld l,e
	ld bc,01509h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,01509h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,h
	djnz l6cc8h
	dec d
	nop
	nop
	ld h,a
	ld (bc),a
l6cc8h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	ld (de),a
	inc c
	ld sp,02507h
	inc c
	nop
	nop
	ld l,h
	ld bc,01508h
	nop
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
	dec d
	nop
	nop
	ld h,a
	ld (bc),a
	ld sp,0000ch
	nop
	nop
	nop
	nop
	dec d
	nop
	nop
	ld h,h
	ld bc,00000h
	nop
	nop
	ld h,c
	nop
	nop
	dec d
	ld b,00ch
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	dec b
	dec d
	nop
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
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
	dec b
	dec d
	nop
	nop
	ld l,h
	ld bc,00000h
	ld l,h
	ld bc,00000h
	nop
	dec d
	ld (de),a
	inc c
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	dec d
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
	inc b
	nop
	nop
	dec b
	dec d
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00000h
	add hl,hl
	ld bc,01509h
	ld (de),a
	inc c
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00163h
	dec b
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,01505h
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00867h
	ld l,e
	ld bc,01500h
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl,(l610fh)
	nop
	dec b
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
	dec d
	ld b,00ch
	nop
	nop
	ld l,h
	ld bc,00f28h
	nop
	nop
	ex af,af'
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc (hl)
	inc b
	dec b
	dec d
	nop
	nop
	ld hl,(00007h)
	nop
	dec h
	rrca
	ld sp,00004h
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
	dec d
	inc b
	inc c
	ld h,c
	nop
	ld h,c
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	dec b
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
	add hl,bc
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld (hl),00fh
	ld hl,(00504h)
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
	dec d
	djnz l6dfeh
	nop
	nop
	nop
	nop
	cpl
	rrca
	dec sp
	inc b
	ex af,af'
	dec d
	nop
	nop
l6dfeh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	dec d
	inc b
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,01509h
	nop
	nop
	ld (02a04h),a
	ex af,af'
	ld l,h
	ld bc,00167h
	add hl,bc
	dec d
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
	dec b
	dec d
	djnz l6e52h
	ld sp,02804h
	ex af,af'
	ld l,h
	ld bc,00000h
	nop
	dec d
	nop
	nop
l6e52h:
	nop
	nop
	nop
	nop
	ld h,a
	dec b
	jr z,l6e5dh
	ex af,af'
	dec d
	nop
l6e5dh:
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
	dec d
	nop
	nop
	ld hl,(02504h)
	ex af,af'
	ld e,00fh
	ld sp,00008h
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
	dec d
	ld c,00ch
	ld hl,l420bh
	inc bc
	ld hl,0360fh
	ex af,af'
	dec b
	dec d
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	ld a,(bc)
	nop
	nop
	nop
	dec d
	nop
	nop
	ld hl,l6c0bh
	ld bc,00a00h
	nop
	nop
	dec b
	dec d
	nop
	nop
	nop
	nop
	ld h,h
	ld bc,00000h
	nop
	nop
	nop
	dec d
	ld (bc),a
	inc c
	ld h,c
	nop
	nop
	nop
	nop
	ld a,(bc)
	nop
	nop
	ex af,af'
	dec d
	nop
	nop
	ld a,(de)
	dec bc
	cpl
	ld b,06ch
	ld bc,00000h
	dec b
	dec d
	nop
	nop
	nop
	nop
	ld sp,00006h
	nop
	nop
	nop
	add hl,bc
	dec d
	ld c,00ch
	ld h,c
	nop
	cpl
	ld b,000h
	nop
	nop
	nop
	dec b
	dec d
	nop
	nop
	nop
	nop
	ld sp,l6406h
	djnz l6ee9h
l6ee9h:
	nop
	dec b
	dec d
	nop
	nop
	nop
	nop
	ld h,a
	ld bc,01063h
	nop
	nop
	nop
	dec d
	add hl,bc
	inc c
	nop
	nop
	nop
	nop
	ld h,a
	djnz l6f68h
	ld bc,01505h
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	ld a,(bc)
	nop
	nop
	nop
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	dec l
	rrca
	ld h,a
	ld (bc),a
	ex af,af'
	dec d
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00a00h
	nop
	nop
	dec b
	dec d
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,01500h
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	dec bc
	inc c
	nop
	nop
	nop
	nop
	ld h,a
	ld bc,00000h
	dec b
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,01509h
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	inc bc
	nop
	nop
	dec b
	dec d
	nop
	nop
	nop
	nop
l6f68h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	rla
	inc c
	nop
	nop
	cpl
	inc b
	nop
	nop
	nop
	nop
	ex af,af'
	dec d
	nop
	nop
	nop
	nop
	ld sp,l6704h
	ld b,000h
	nop
	add hl,bc
	dec d
	nop
	nop
	nop
	nop
	cpl
	inc b
	nop
	nop
	nop
	nop
	nop
	dec d
	dec bc
	inc c
	cpl
	inc b
	ld sp,l6c04h
	ld bc,0043bh
	add hl,bc
	dec d
	nop
	nop
	ld sp,l6c04h
	ld bc,00000h
	dec a
	inc b
	add hl,bc
	dec d
	nop
	nop
	cpl
	inc b
	nop
	nop
	ld h,e
	ld bc,0043bh
	nop
	dec d
	nop
	nop
	ld sp,l6c04h
	ld bc,00000h
	dec a
	inc b
	dec b
	dec d
	nop
	nop
	ld l,h
	ld bc,00000h
	ld l,h
	ld bc,00000h
	nop
	dec d
	rla
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,a
	ld (bc),a
	ex af,af'
	dec d
	nop
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	ld l,h
	ld bc,01505h
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld l,h
	ld bc,00367h
	nop
	dec d
	nop
	nop
	ld l,d
	ld (bc),a
	ld l,c
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	dec d
	add hl,bc
	inc c
	inc l
	ld b,000h
	nop
	nop
	nop
	ld l,h
	ld bc,01505h
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	dec b
	dec d
	nop
	nop
	nop
	nop
	inc l
	dec b
	nop
	nop
	nop
	nop
	nop
	dec d
	dec d
	inc c
	dec l
	ld b,067h
	ld (bc),a
	nop
	nop
	nop
	nop
	ex af,af'
	dec d
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	nop
	ld l,h
	ld bc,00000h
	dec b
	dec d
	nop
	nop
	ld hl,(00006h)
	nop
	nop
	nop
	daa
	inc bc
	add hl,bc
	dec d
	add hl,bc
	inc c
	nop
	nop
	dec l
	dec b
	nop
	nop
	ld h,e
	ld bc,01505h
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	nop
	nop
	ld l,e
	ld bc,01505h
	nop
	nop
	nop
	nop
	ld hl,(l6704h+1)
	ex af,af'
	ld l,e
	ld bc,01500h
	nop
	nop
	nop
	nop
	nop
	nop
	jr z,l708fh
	ld h,c
	nop
	dec b
	dec d
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
	nop
l708fh:
	dec d
	ld b,00ch
	cpl
	ld b,000h
	nop
	ld hl,(0360fh)
	dec b
	ex af,af'
	dec d
	nop
	nop
	ld h,a
	ld (bc),a
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld bc,01505h
	nop
	nop
	ld l,d
	ld bc,00169h
	cpl
	rrca
	dec sp
	dec b
	nop
	dec d
	nop
	nop
	nop
	nop
	cpl
	dec b
	ld h,a
	ld bc,00167h
	nop
	dec d
	ld c,00ch
	nop
	nop
	nop
	nop
	dec l
	ld a,(bc)
	ld h,c
	nop
	dec b
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
	ex af,af'
	dec d
	nop
	nop
	ld a,000h
	dec sp
	nop
	ld h,a
	ld bc,00039h
	dec b
	dec d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,01505h
	ld (bc),a
	inc c
	ld h,a
	djnz l715ch
	djnz l70f7h
l70f7h:
	nop
	ld h,a
	djnz l7103h
	dec d
	nop
	nop
	ld l,e
	ld bc,0016bh
	nop
l7103h:
	nop
	ld l,e
	ld bc,01508h
	nop
	nop
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
	ld c,00ch
	ld l,b
	ld (bc),a
	ld l,b
	ld (bc),a
	nop
	nop
	ld l,b
	ld (bc),a
	nop
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
	ex af,af'
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
	ex af,af'
	dec d
	nop
	nop
	ld h,a
	ld b,067h
	ld b,000h
	nop
	ld h,a
	ld b,005h
	dec d
	ld (bc),a
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	dec d
	nop
	nop
	ld l,h
	ld bc,0016ch
	nop
	nop
	ld l,h
	ld bc,01508h
l715ch:
	nop
	nop
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
	nop
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
	dec d
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
