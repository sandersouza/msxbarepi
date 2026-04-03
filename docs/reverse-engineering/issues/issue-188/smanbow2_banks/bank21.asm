; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank21.asm /tmp/smanbow2_bank.bin

	org 04000h

	ld l,e
	ld bc,0016bh
	ld h,c
	nop
sub_4006h:
	nop
	nop
	dec b
	rrca
	jr l4018h
	ld h,003h
	ld h,003h
	ld (00105h),a
	nop
	nop
	nop
	ld h,c
	nop
l4018h:
	ld l,e
	ld bc,0016bh
	ld h,c
	nop
	nop
	nop
	nop
	nop
	jr l4030h
	nop
	nop
	nop
	nop
	ld (00305h),a
	nop
	nop
	nop
	ld h,c
	nop
l4030h:
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
	ld a,(de)
	inc c
	inc h
	inc bc
	inc h
	inc bc
l4040h:
	ld (00305h),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld bc,00900h
	rrca
	nop
	nop
	ld h,003h
	ld h,003h
	ld (00205h),a
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
	nop
	nop
	nop
	nop
	jr l4078h
	nop
	nop
	nop
	nop
	ld (00305h),a
	nop
	nop
	nop
	ld h,c
	nop
l4078h:
	ld l,e
	ld bc,0016bh
	ld h,c
	nop
	nop
	nop
	ld (bc),a
	rrca
	jr l4090h
	nop
	nop
	nop
	nop
	ld (00106h),a
	nop
	nop
	nop
	ld h,c
	nop
l4090h:
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
	ld a,(de)
	inc c
	ld h,003h
	ld h,003h
	ld (00006h),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld bc,00000h
	nop
	nop
	nop
	jr nc,$+5
	jr nc,l40bbh
	ld (00206h),a
l40bbh:
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
	nop
	nop
	dec b
	rrca
	jr l40d8h
	nop
	nop
	nop
	nop
	ld (00106h),a
	nop
	nop
	nop
	ld h,c
	nop
l40d8h:
	ld l,e
	ld bc,0016bh
	ld h,c
	nop
	nop
	nop
	nop
	nop
	jr l40f0h
	nop
	nop
	nop
	nop
	ld (00306h),a
	nop
	nop
	nop
	ld h,c
	nop
l40f0h:
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
	ld a,(de)
	inc c
	dec hl
	inc bc
	dec hl
	inc bc
	ld (00306h),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld bc,00900h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld (00206h),a
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
	nop
	nop
	nop
	nop
	jr l4138h
	ld l,e
	ld bc,0016bh
	ld (00306h),a
	nop
	nop
	nop
	ld h,c
	nop
l4138h:
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	inc b
	rrca
	inc e
	inc c
	jr z,$+5
	jr z,l414bh
	ld (00107h),a
l414bh:
	nop
	nop
	nop
	ld h,c
	nop
	ld l,e
	ld bc,0016bh
	ld h,c
	nop
	nop
	nop
	nop
	nop
	inc e
	inc c
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld (00007h),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (00207h),a
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,0016ch
	ld h,c
	nop
	nop
	nop
	dec b
	rrca
	dec e
	inc c
	ld l,h
	ld bc,0016ch
	ld (00107h),a
	nop
	nop
	nop
	ld h,c
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
	dec e
	inc c
	ld hl,02103h
l41a7h:
	inc bc
	ld (00307h),a
	nop
	nop
	nop
	ld h,c
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
	dec e
	inc c
	nop
	nop
	nop
	nop
	ld (00307h),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld bc,00400h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld (00207h),a
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,0016bh
	ld h,c
	nop
	nop
	nop
	nop
	nop
	inc e
	inc c
	nop
	nop
	nop
	nop
	ld (00307h),a
	nop
	nop
	nop
	ld h,c
	nop
	ld l,e
	ld bc,0016bh
	ld h,c
	nop
	nop
	nop
	add hl,bc
	inc bc
	add hl,bc
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
	nop
	nop
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	inc bc
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
	inc bc
	nop
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld (bc),a
	jr l423ah
l423ah:
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
	rla
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	inc bc
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
l4266h:
	nop
	nop
	nop
	nop
	nop
	nop
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
	sub d
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld bc,00017h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	jr l4305h
	ld b,b
	ld l,c
	ld b,d
	ld l,c
	ld b,h
	nop
	nop
	nop
	nop
	inc bc
	rla
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	ld (bc),a
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
	ld (bc),a
	nop
	nop
	nop
	ld l,d
	inc bc
	nop
	nop
	nop
	nop
	ld l,c
l4305h:
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
l436ah:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	rrca
	ld a,(de)
	rrca
	ld (02603h),a
	inc bc
	ld (00108h),a
	nop
	nop
	nop
	ld h,c
	nop
	ld h,a
	ld bc,00167h
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	rrca
	ld l,e
	ld bc,0016bh
	ld (00008h),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (00208h),a
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
	nop
	nop
	nop
	nop
	ld a,(de)
	rrca
	nop
	nop
	nop
	nop
	ld (00108h),a
	ld d,000h
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	dec d
	nop
	nop
	ld a,(de)
	rrca
	ld l,e
	ld bc,0016bh
	ld (00808h),a
	inc d
	nop
	nop
	ld h,c
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld h,c
	nop
	nop
	inc de
	nop
	nop
	ld a,(de)
	rrca
	nop
	nop
	nop
	nop
	ld (00808h),a
	ld (de),a
	nop
	nop
sub_4406h:
	ld h,c
l4407h:
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	nop
	ld de,00000h
	ld a,(de)
	dec bc
	nop
	nop
	nop
	nop
	ld (00808h),a
	djnz l441dh
l441dh:
	nop
	ld h,c
	nop
	ld l,h
	ld bc,00000h
	ld h,c
	nop
	nop
	dec c
	ld l,h
	ld bc,0051ah
	ld l,h
	ld bc,0016ch
	ld (00208h),a
	dec bc
	ld h,d
	nop
	ld h,d
	nop
	ld h,d
	nop
	ld h,d
	ld b,061h
	nop
	nop
	add hl,bc
l4440h:
	nop
	ld e,h
	inc (hl)
	nop
	nop
	ld (bc),a
	jr c,$+36
	ld h,e
	defb 0edh ;next byte illegal after ed
	rst 20h
	jp po,00e02h
	inc bc
	ld (bc),a
	inc bc
	ld (01205h),hl
	ld bc,00307h
	ex af,af'
	call po,00107h
	in h,(c)
	add a,a
	rlca
	ld bc,00664h
	inc a
	rlca
	ld b,012h
	ld c,(hl)
l4467h:
	ld h,a
	ld (bc),a
	ld de,l6750h
	ld a,(bc)
	inc b
	ld bc,l6c24h
	ld b,00eh
	jr nc,l447bh
	ld e,h
	inc b
	ld c,00dh
	ld h,h
	dec bc
l447bh:
	ex af,af'
	ld b,(hl)
	ld (bc),a
	dec b
	inc b
	ld b,005h
	and l
	and (hl)
	rra
	jp z,0140eh
	inc e
	di
	dec de
	inc hl
	add a,0a5h
	ld d,007h
	inc bc
	ld hl,02618h
	inc hl
	dec b
	add a,e
	ld d,a
	ld b,(hl)
	inc b
	dec b
	ld b,h
	ld c,h
	ld h,l
	ld hl,022edh
	jr l4467h
	ld d,025h
	ld b,(hl)
	ld b,00bh
	rlca
	ld h,017h
	or e
	daa
	scf
	ld a,d
	djnz l44d4h
	ld a,b
	ld (bc),a
	defb 0edh ;next byte illegal after ed
	dec b
	xor b
	ld h,h
	ld c,004h
	inc bc
	rlca
	xor h
	ld (de),a
	rlca
	dec c
	ex (sp),hl
	ld e,00fh
	sub l
	defb 0edh ;next byte illegal after ed
	ex af,af'
	ld (hl),048h
	ex af,af'
	and h
	sub (hl)
	push bc
	rlca
	ld l,(hl)
	ld b,l
	ld l,(hl)
	dec de
	dec b
	scf
	and h
	inc c
l44d4h:
	ld bc,02311h
	xor e
	or h
	ld c,077h
	dec b
	adc a,b
	ld (hl),h
	dec b
	rlca
	add hl,hl
	ld (bc),a
	daa
	defb 0edh ;next byte illegal after ed
	ld c,024h
	inc bc
	and c
	defb 0edh ;next byte illegal after ed
	rlca
	ld b,l
	ld b,006h
	ld de,02506h
	inc bc
	ld h,0edh
	inc b
	ld hl,(00ba6h)
	inc h
	inc c
	and (hl)
	add hl,bc
	dec c
	dec h
	inc bc
	ex (sp),hl
	ex af,af'
	and 011h
	ld b,b
	dec b
	neg
	and a
	inc bc
l4508h:
	nop
	and e
	ld h,a
	rlca
	add a,024h
	dec c
	inc h
	ld b,b
	rst 20h
	jr c,l4516h
	add a,c
	rrca
l4516h:
	inc h
	ld bc,000e7h
	defb 0edh ;next byte illegal after ed
	dec b
	ld l,e
	add hl,bc
	rst 20h
	rrca
	ld b,(hl)
	inc bc
	dec b
	inc bc
	ld de,00292h
	inc h
	ld b,000h
	ld h,a
	ld c,c
l452ch:
	inc b
	dec a
	and (hl)
	dec l
	add a,(hl)
l4531h:
	inc sp
	ld d,(hl)
	ld c,02eh
	ld de,0ed29h
	rra
	ld h,002h
	inc h
	adc a,b
	call sub_6776h
	ld h,004h
	inc bc
	add hl,bc
	call pe,00847h
	sbc a,(hl)
	ld d,c
	and c
	nop
	rlca
	ex af,af'
	ex af,af'
l454eh:
	add hl,bc
	ld l,c
	jp pe,020ech
	ex af,af'
	ld b,055h
	inc b
	jp pe,0ec05h
	sub c
	djnz l45a5h
	sub a
	ld (bc),a
	jp pe,0ec01h
	jr nz,l4567h
	sbc a,b
	ld c,d
	dec d
l4567h:
	inc d
	jr nc,l456bh
	ld (bc),a
l456bh:
	ld a,a
	jp pe,02007h
	call pe,02b28h
	dec h
	inc b
	ld c,d
	ld b,008h
	call pe,02807h
	ld c,e
	add hl,bc
	ld a,(bc)
	dec b
	ld (bc),a
	add hl,bc
	inc b
	ex af,af'
	nop
	ld h,0ech
	sub c
	jr z,$+68
	add hl,bc
	ex af,af'
	jr z,l45f6h
	ld c,c
	ld b,c
	add hl,hl
	ld c,b
	inc b
	ld (bc),a
	ld (bc),a
	ld h,009h
	ld a,(bc)
	ex af,af'
	ld l,e
	inc bc
	djnz $-18
	add hl,hl
	ld a,(bc)
	djnz l45a4h
	jr z,l45a4h
	jp nz,0270eh
l45a4h:
	ld c,e
l45a5h:
	jr c,l4531h
	inc b
	add hl,bc
	ld l,b
	ld c,l
	jr nz,l45efh
	add hl,hl
	ld d,04ah
	add hl,bc
	jr z,l45cbh
	inc h
	ex af,af'
	ld (bc),a
	jr nz,l45d8h
	ld hl,0808bh
	ld b,e
	ld c,b
	inc c
	ld hl,(0ab04h)
	rlca
	nop
	add hl,hl
	ld bc,02a06h
	daa
	ld l,e
	jr z,$-18
l45cbh:
	sub (hl)
	ld c,b
	ld hl,(00c79h)
	ld de,00428h
	adc a,h
	ld (bc),a
	add hl,hl
	add hl,bc
	ld l,d
l45d8h:
	ld a,(bc)
l45d9h:
	add hl,hl
	dec b
	and c
	ld l,(hl)
	ld h,b
	inc bc
	daa
	ld b,0a2h
	inc d
	ld (hl),04ah
	add a,b
	dec l
	call pe,04949h
	ld a,(bc)
	ld c,b
	ld l,d
	and h
	ld l,d
l45efh:
	ld e,h
	rlca
	ld a,049h
	ld b,d
	rlca
	add hl,de
l45f6h:
	ex af,af'
	ld b,a
	adc a,c
	inc c
	sub b
	call nc,0882ah
	inc b
	dec bc
	ld c,d
	call pe,02927h
	add a,e
l4605h:
	jp z,03a00h
	ld h,l
	adc a,d
sub_460ah:
	xor d
	sub b
	ld hl,(02d3dh)
	and e
	ld (hl),h
	xor e
	nop
	ld l,c
	add hl,bc
	adc a,d
	ex af,af'
	call z,04546h
	add hl,bc
	inc h
	daa
	daa
	inc bc
	sub b
	inc (hl)
	or h
	ret nc
	ld c,h
	ld b,(hl)
	rlca
	ld (bc),a
	sub b
	jp z,02120h
	ld b,h
	defb 0edh ;next byte illegal after ed
	sub 001h
	sbc a,b
	rst 20h
	ld c,b
	daa
	sub h
	inc bc
	ex af,af'
	pop bc
	sub c
	ei
	ld (0e803h),hl
	ld c,(hl)
	dec b
	and d
	out (020h),a
	ret nc
	ld b,l
	call nc,014eah
	jp z,0f693h
	inc d
	inc b
	ld hl,08addh
	dec b
	ld d,h
	ret z
	ld hl,(0cd03h)
	inc h
	nop
	ret z
	call nc,0f137h
	ld d,e
	and l
	daa
	ld h,a
	or c
	jr z,$-123
	ld b,l
	dec h
sub_4663h:
	xor h
	ret po
	ld c,b
	dec h
	xor d
	cpl
	ld (hl),e
	inc c
	ld d,a
	ld c,l
	ld h,0e9h
	sbc a,c
	ld a,(0a402h)
	inc h
	scf
	ld (bc),a
	call nc,00e96h
	ld c,l
	ld sp,00407h
	defb 0edh ;next byte illegal after ed
	ld l,h
	ld a,(bc)
	ld hl,00004h
	ld c,h
	ld a,(de)
	add hl,bc
	daa
	dec h
	ld c,b
	ld h,h
l468ah:
	xor 0a9h
	xor d
	ld (de),a
	dec b
	jr c,l46d8h
	jp p,02591h
	cp 028h
	ex af,af'
	ld d,l
	ld h,a
	add hl,hl
	ld (hl),a
	ret nc
	dec h
l469dh:
	ret
	ld h,h
	sbc a,l
	ld c,d
	ld b,a
	adc a,c
	ld b,l
	inc b
	or a
	inc h
	adc a,a
	ld h,l
	inc d
	sub 035h
	inc d
	or (hl)
	inc (hl)
	call po,0ed88h
	add hl,sp
	ld b,a
	dec h
	or c
	ld (hl),l
	ld d,l
	ld bc,l520bh
	jp nz,l48b2h
	ld e,b
	ret po
	adc a,h
	ld (hl),l
	ld d,l
	ld b,01dh
	jr z,$+77
	inc bc
	ld h,l
	ld h,a
	ld e,l
	scf
	sub d
	dec b
	rlca
	ld (bc),a
	dec b
	ld h,b
	ld (bc),a
	ld b,b
	dec b
	inc hl
	ld (hl),l
	sub b
l46d8h:
	ld (de),a
	jr z,l4730h
	ld c,l
	daa
	call nz,015d2h
	dec bc
	ld (hl),b
	ld b,l
	add a,c
	and l
	ld d,c
	nop
sub_46e7h:
	ld c,b
	or c
	ld d,h
	inc c
	add hl,bc
	and d
	ld (hl),e
	xor l
	xor d
	ld c,d
	inc (hl)
	dec a
	xor a
	ld l,c
	sub d
	ld b,h
	daa
	ld d,c
	ld h,0dbh
	dec bc
	sub h
	ld c,d
	dec c
	cp b
	ld hl,(0322fh)
	ld h,h
	ld b,a
	ld b,a
	sub 0a4h
	xor e
	ld h,c
	ld (bc),a
	dec h
	cp c
	ld (de),a
	ld l,b
	sbc a,b
	ld hl,(0a2a9h)
	add a,h
	ld d,l
	ex af,af'
	jp (hl)
	ld c,a
	ld d,l
	ld (bc),a
	ret p
	ld d,l
	dec b
	ld b,(hl)
	ld c,041h
	ld l,c
	ld a,b
	ld b,045h
	dec c
	ld b,l
	sub b
	cp a
	dec de
	sbc a,a
	inc h
	or b
	ld d,h
	inc bc
	xor l
	ld d,c
l4730h:
	xor b
	ld c,d
	dec hl
	ex af,af'
	call nc,0035ah
	and (hl)
	dec hl
	sbc a,l
l473ah:
	call z,09279h
	or l
	call c,0aa2bh
	ld c,b
	rst 30h
	sub h
	ld h,(hl)
	ld de,0a4c2h
	and l
	ld h,d
	inc hl
	adc a,b
	xor c
	jr nc,l47b5h
	cp 012h
	defb 0edh ;next byte illegal after ed
	call nc,0e989h
	ld b,d
	jr nz,l4798h
	sbc a,a
	ld d,d
	xor h
	jp nc,092e7h
	sub b
	or (hl)
	ret z
	add hl,hl
	ret m
	ld c,c
	or (hl)
	ld d,d
	nop
	ld b,l
	adc a,e
	jp (hl)
	sbc a,(hl)
	jp nz,0ed28h
	cp c
	ld d,d
	add a,a
	ld (05927h),a
	nop
	ex af,af'
	rla
	adc a,b
	ld e,c
	ld e,(hl)
	xor e
	daa
	ld a,h
	ld e,d
	inc h
	and e
	sbc a,d
	push bc
	ret c
	dec h
	ld b,a
	ld l,e
	call nz,01456h
	ld d,(hl)
	ld a,c
	dec de
	ld b,l
	ld d,d
	ld b,b
	ld (de),a
	inc bc
	xor (hl)
	exx
	adc a,d
	cp d
	out (0d9h),a
	ld c,(hl)
l4798h:
	inc bc
	push de
	ld b,l
	xor e
	rst 28h
	jr z,l47c6h
	dec h
	adc a,c
	ld c,b
	inc d
	jr z,l473ah
	sbc a,c
	ld b,h
	exx
	jr z,l47eeh
	cp d
	defb 0ddh,03eh,018h ;illegal sequence
	add a,b
	ld h,b
	ld (09c04h),bc
	ret
l47b5h:
	adc a,h
	call p,0d7b2h
	or l
	inc l
	add a,e
	ld b,h
	dec b
	add a,d
	ld b,c
	inc h
	inc hl
	add a,0edh
	xor e
	dec de
l47c6h:
	sub l
	adc a,c
	jr z,l47dbh
	ld (0df24h),hl
	adc a,b
	ld b,(hl)
	adc a,098h
	dec h
	dec bc
	ld b,(hl)
	inc d
	ld h,045h
	ld (bc),a
	cpl
	add a,l
	add a,d
l47dbh:
	ld h,a
	defb 0edh ;next byte illegal after ed
	inc hl
	add a,029h
	ret
	and (hl)
	defb 0ddh,044h ;ld b,ixh
	ld b,03fh
	dec h
l47e7h:
	ld (bc),a
	push bc
	ld e,b
	add a,(hl)
	adc a,d
	dec b
	ld a,d
l47eeh:
	ld (hl),e
	sub l
	ld c,d
	ld (08a5ch),hl
	ld b,h
	ld (0af27h),hl
	and l
	add hl,de
	adc a,e
	ld sp,00720h
	jp m,0b05bh
	ld e,c
	ei
	inc h
	dec b
	ex af,af'
	adc a,d
	and 0deh
	add hl,hl
	and e
	ld (0aacbh),hl
	exx
	add a,(hl)
	dec hl
	cp e
	ld de,0b409h
	inc d
	inc b
	add hl,hl
	sub b
	xor c
	adc a,h
	ret c
	ld c,b
	call pe,030a9h
	adc a,b
	dec h
	cp d
	ld l,d
	add a,c
	xor l
	ld bc,017a8h
l4829h:
	inc bc
	ret m
	sub b
	ld a,l
	add a,a
	daa
	ld l,b
	ld h,c
	jr z,l47e7h
	rst 20h
	ld c,c
	jr c,$+38
	ld b,l
	ld c,l
	inc b
	defb 0fdh,0adh ;xor iyl
	inc c
	add a,l
	and e
	ld b,l
	sub c
	ld b,h
	nop
	cp b
	ld h,l
	or 0c4h
	dec h
	inc hl
	and a
	ret z
	ld b,a
	sub b
	and (hl)
	di
	ld b,(hl)
	xor b
	ei
	ld hl,(02967h)
	jp m,08b59h
	ret
	dec l
	ld bc,05503h
	rlca
	xor b
	sub h
	xor e
	sub l
	or h
	ld l,d
	sbc a,b
	adc a,0edh
	sbc a,b
	ld h,068h
	ret po
	adc a,c
	rlca
	call nc,08233h
	ld l,c
	ld l,(hl)
	call 027c9h
	jr nz,l488fh
	ld c,(hl)
	or a
	adc a,c
	ld b,040h
	ld b,b
	add a,c
	ret nz
	call sub_4b09h
	ld a,(bc)
	ld de,00a2bh
	ld a,(bc)
	sbc a,c
	rla
	ld hl,(0b208h)
	ld b,l
	xor (hl)
	ld d,d
l488fh:
	ld d,h
	rst 38h
	rlca
	sbc a,h
	adc a,e
	xor b
	ld sp,0ac0eh
	and d
	cp h
	and (hl)
	ld d,h
	xor l
	ld d,c
	jr nz,l48fch
	and h
	add hl,de
	inc c
	jr z,l48f3h
	ei
	ld a,c
	adc a,d
	ld (de),a
	daa
	dec b
	call nz,0010ah
	ccf
	adc a,b
	sub h
	rst 18h
l48b2h:
	adc a,h
	cp l
	or h
	adc a,(hl)
	ret
	ld (hl),c
	ld d,a
	ld bc,02335h
	ld b,d
	add a,e
	dec h
	dec de
	ld bc,0d943h
	add hl,de
	inc d
	add a,d
	dec b
	nop
	ld (l6614h),hl
	ld hl,0ce87h
	sub c
	sub c
	inc b
	and a
	sub c
	ld (09c45h),a
	inc h
	and 045h
	di
	adc a,c
	xor a
	ld b,l
	cp 0b8h
	inc bc
	ld h,045h
	ld b,c
	ld b,a
	nop
	add hl,de
	ld b,(hl)
	xor l
	ld e,c
	ld a,0fch
	ld c,h
	call nz,sub_4406h
	ld (021afh),hl
	add hl,bc
l48f3h:
	rlca
	ld (0ed68h),hl
	ld (hl),d
	rlca
	ret m
	dec (hl)
	add hl,de
l48fch:
	cp d
	halt
sub_48feh:
	ret
	ex af,af'
	ld c,l
	adc a,l
	add a,l
	jp (hl)
	call pe,00b67h
	cp a
	ld b,d
	xor h
	sub a
	adc a,b
	add a,c
	add a,c
	add hl,bc
	dec hl
	ld hl,(00c8dh)
	or e
	inc d
	add a,c
	add a,c
	ld hl,(00b0ch)
	dec b
	ret po
	ld (0bc00h),hl
	jr nz,l492ah
	dec bc
	ex af,af'
	adc a,d
	inc b
	ld a,(bc)
	ld b,02bh
	jr z,$+46
l492ah:
	sub a
	ld b,(hl)
	add hl,hl
	ld l,e
	cp e
	dec h
	ld c,e
	ld (hl),b
	ld hl,(0d74ch)
	or h
	cp c
	and h
	call po,0d9c4h
	ld h,d
	ex af,af'
	push hl
	ld c,c
	defb 0ddh,0aah,049h ;illegal sequence
	or d
	xor c
	ld l,l
	ld bc,02827h
	ld h,069h
	dec b
	ld b,a
	adc a,c
	ld d,h
	and b
	ld d,e
	or a
	ld b,(hl)
	and (hl)
	ld b,l
	ld d,a
	jr nz,$+34
	cp h
	and l
	rst 0
	and h
	and d
	jp z,0e001h
	inc l
	call z,sub_7aadh
	xor e
	ld (0a888h),hl
	add hl,sp
l4968h:
	jp pe,0b194h
	and h
	pop hl
	ld b,l
	daa
	sbc a,d
	add a,e
	inc (hl)
	cp l
	or c
	or e
	ld l,c
	call pe,0ac79h
	dec d
	xor (hl)
	call pe,0e49dh
	adc a,h
l497fh:
	ld d,c
l4980h:
	call 09962h
	ld d,c
	ld l,(hl)
	sub (hl)
	ld b,(hl)
	defb 0ddh,0c5h,0d4h ;illegal sequence
sub_498ah:
	ld c,(hl)
	inc d
	ld bc,l4266h
	in a,(055h)
	ret m
	dec l
	dec h
	defb 0cbh,031h ;sli c
	sub e
	ld c,c
	ld b,a
	inc bc
	sbc a,h
	ld c,c
	in a,(0b1h)
	pop bc
	ld (0aa3eh),a
	sub 0e9h
	jp nc,028f5h
	sbc a,a
	and a
	jp c,05528h
	call m,09fa4h
	pop bc
	sub e
	ld c,d
	sbc a,d
	jr l49beh
	and c
	xor (hl)
	dec l
	and d
	ld d,090h
	and e
	ex af,af'
	sbc a,c
l49beh:
	ld c,c
	inc b
	ld c,c
	ld d,c
	ld h,l
	rst 28h
	push af
	sub h
	ex af,af'
	ld l,b
	cp e
	rst 30h
	ret
	ld l,c
	add a,h
	ld b,a
	inc c
	add a,c
	ld h,l
	ccf
	ld d,c
	add hl,hl
	jr z,l497fh
	inc l
	ld a,c
	ld h,a
	and h
	and a
	res 3,c
	ld l,c
	inc l
	adc a,e
	adc a,h
	add a,(hl)
	cp l
	adc a,h
	sbc a,h
	exx
	and e
	ld h,0f2h
	ld hl,(0a997h)
	ld l,a
	ld h,c
	ret pe
	call c,0ccaeh
	inc b
	xor l
	rra
	ret nz
	ld (0a707h),a
	or a
	push de
	inc c
	dec l
	ld h,(hl)
	ex af,af'
	ld c,c
	add a,084h
	ld bc,08247h
	ld c,b
	inc h
	cp c
	xor b
	adc a,08dh
	ret z
	and e
	ld b,(hl)
	rst 28h
	ld l,a
	in a,(032h)
	sbc a,b
	ld l,l
	defb 0edh ;next byte illegal after ed
	add hl,hl
	call nc,sub_4663h
	ld l,(hl)
	adc a,c
	ld a,(0e107h)
	ld e,h
	ld (0e726h),hl
	adc a,h
	call 0cc94h
	rlc h
	xor (hl)
	jp z,03f6ch
	push bc
	ld b,e
	jr nz,$-70
	ld h,h
	or a
	adc a,c
	nop
	sub l
	ld e,d
	ld (hl),h
	dec a
	xor h
	add a,l
	sbc a,c
	jr l4a62h
	call c,024b9h
	sub e
	inc d
	jp p,05f58h
	dec b
	ld a,d
	ld hl,0a4c6h
	dec h
	jp 0cfd5h
	ld c,c
	ld b,0f5h
	ld l,e
	cpl
	defb 0edh ;next byte illegal after ed
	ret z
	ld l,c
sub_4a56h:
	call p,0a925h
	inc l
	inc h
	add hl,de
	call nz,0fddah
	add a,d
	or e
	jp (hl)
l4a62h:
	jp z,093d7h
	out (0d0h),a
	ld e,b
	and c
	add a,(hl)
	inc hl
	jp 09c49h
	ld d,a
	ld bc,(00c20h)
	call z,09ed2h
	or 0a2h
	ld (02b9ah),a
	dec h
	in a,(0b2h)
	dec h
	ld c,(hl)
	add a,(hl)
	or h
	jr $+36
	ld b,a
	rla
	ld b,e
	ld l,d
	ld h,0a8h
	ld d,d
	ld d,e
	ret nc
	ld e,l
	cp h
	or a
	call po,0cfa4h
	ld hl,0cbb7h
	daa
	cp d
	dec bc
	ret
	or e
	xor h
	ld l,d
	jp pe,099b1h
	inc hl
	add a,c
	jr z,l4aeah
	sub c
	jr c,$+40
	adc a,h
	ld l,c
l4aa9h:
	call m,019e2h
	call nz,00345h
	sbc a,074h
	add a,c
	sub h
	ld (hl),08ah
	ld c,e
	ld h,(hl)
	add a,0a4h
	ex af,af'
	ld b,a
	ld h,d
	ld h,(hl)
	call z,0c2abh
	sbc a,b
	adc a,d
	add hl,hl
	cp b
	xor d
	and h
	cp a
	rra
	xor d
	ld d,h
	ld h,d
	ld l,(hl)
	jp nz,0e84ch
	jp z,0db4ch
	ld c,b
	inc bc
	jr z,$+75
	adc a,e
	or e
	cp b
	ld (hl),d
	add a,h
	ld c,e
	sbc a,b
	ld c,b
	call m,0f5bch
	push de
	jp m,0308ah
	add a,l
	rst 0
	add hl,hl
	ld h,0bch
l4aeah:
	ei
	cp b
	dec a
	exx
	dec hl
	ld bc,0cb22h
	add hl,sp
	and (hl)
	jr $-17
	ld sp,hl
	ld c,l
	xor l
	cp c
	add hl,de
	ld e,e
	inc b
	inc bc
	ld hl,0e700h
	ex (sp),hl
	ret c
	ld l,b
	rst 0
	ld h,(hl)
	ld h,052h
	rst 10h
sub_4b09h:
	inc c
	ld b,c
	pop af
	ld hl,(l5f0fh)
	add a,(hl)
	ld sp,l7f27h
	ld bc,06304h
	add a,l
	sbc hl,bc
	and 0dfh
	sbc a,c
	cp 011h
	and 0e6h
	adc a,c
l4b21h:
	ld l,c
	cp c
	jr l4b6ah
	ld b,d
	push hl
sub_4b27h:
	dec h
sub_4b28h:
	ld h,d
	inc bc
	add a,l
	ld c,b
	ld h,c
	defb 0edh ;next byte illegal after ed
	dec c
	ld (l41a7h),hl
	jr z,l4b21h
	inc l
	add a,c
	or l
	sbc a,035h
	ex af,af'
	jr z,l4b98h
	add hl,hl
	rst 0
	inc a
	xor e
	and d
	sbc a,020h
	dec b
	ld h,(hl)
	inc sp
	ld b,(hl)
	add a,a
	defb 0edh ;next byte illegal after ed
	add a,l
l4b4ah:
	jp z,l488fh
	add a,h
	inc (hl)
	ld b,b
	inc bc
	pop hl
	jr z,l4b75h
	add a,h
	ex af,af'
	ld h,h
	and d
	add a,l
	dec a
	ld b,e
	ld b,l
	add a,(hl)
	add a,h
l4b5eh:
	ld h,e
	ld hl,02d02h
	push bc
	defb 0edh ;next byte illegal after ed
	rst 0
	ld (hl),b
	ld de,0e604h
	ret
l4b6ah:
	and d
	ld (bc),a
	ld h,c
	and (hl)
	ccf
	sub (hl)
	ld (l7a43h),hl
	ret p
	ld h,c
l4b75h:
	jr nz,l4b5eh
	xor 043h
	ld b,e
	rst 38h
	inc h
	rst 20h
	ld (hl),h
	inc b
	jp nz,0e779h
	ld h,09ch
	ld (l4605h),a
	inc b
	xor (hl)
	dec h
	inc hl
	ld b,e
	rst 20h
	ld sp,hl
	ld c,l
	inc hl
	ld d,00ah
	inc hl
	daa
	ld h,h
	ret pe
	add hl,hl
	ld (hl),h
l4b98h:
	ld d,c
	nop
	and (hl)
	exx
	ld d,l
	inc e
	or b
	add hl,de
	call c,0ff25h
	ld (02f05h),hl
	xor h
	ld e,08eh
	ld l,c
	ld b,(hl)
	cp d
	ret pe
	add hl,hl
	dec h
	inc h
	ld b,d
	sla (hl)
	and 001h
	and (hl)
	ld b,044h
	retn
	ld h,(hl)
	add a,(hl)
	jr nz,l4c1dh
	jp pe,0031ch
	ld d,d
	or l
	out (027h),a
	jp z,00192h
	ld b,a
	add a,e
	sub c
l4bcbh:
	ex af,af'
	ld a,h
	ld c,d
	rst 20h
l4bcfh:
	dec l
	dec h
	ret z
	ld a,e
	xor b
	adc a,d
	and a
	rrc d
	rst 28h
	or (hl)
	sbc a,c
	jp p,093e6h
	ld d,c
	ld h,h
	sub 0b4h
	rst 30h
	call pe,0eafdh
	add a,(hl)
	sub (hl)
	ld (08c92h),a
	jr nz,l4bcfh
	ret nc
	ld b,0cah
	dec e
	xor b
	ld c,e
	sbc a,h
	sbc a,09eh
	jp z,033cfh
	or b
	dec hl
	push af
	add a,l
	dec h
	ex de,hl
	dec de
	or h
	sbc a,(hl)
	add a,c
	sbc a,c
	sbc a,e
	ld c,(hl)
	ret pe
	ld d,d
	pop bc
	ld d,c
	defb 0edh ;next byte illegal after ed
	adc a,b
	jp (hl)
	and b
	ex de,hl
	jp (hl)
	ld a,e
	inc hl
	ld h,d
	rst 28h
	ld d,h
	ld a,04dh
	cp l
	ld d,l
	inc de
	ld c,c
	rst 18h
	dec d
l4c1dh:
	jp c,01295h
	and d
	exx
	ld (0e593h),hl
	adc a,b
	add hl,de
	jr z,l4c1dh
	ld c,c
	rst 20h
	xor c
	pop de
	ret
	rst 28h
	jp pe,0ab08h
	jr nz,$-123
	dec l
	and a
	ld (09214h),a
	adc a,0cdh
	ld c,d
	in a,(0cch)
	dec b
	ret
	ld (bc),a
	ld a,a
	ex af,af'
	pop bc
	ld l,e
	adc a,019h
	or a
	add hl,de
	sbc a,l
sub_4c4ah:
	add hl,de
	cp a
	ei
	and d
	ret
	ld c,d
	xor l
	inc bc
	adc a,(hl)
	ld c,h
	ld (de),a
	call nz,0a393h
	and h
	ld d,l
	ld (00809h),a
	cp h
	and c
	or a
	ld a,029h
l4c62h:
	sub h
	jp p,036e4h
	ld c,(hl)
	call pe,0a4f2h
	sbc a,b
	rst 20h
	ld a,d
	sbc a,a
	ret m
	or h
	call nc,0c78ch
	adc a,c
	sbc a,h
	ex af,af'
	pop bc
	ld e,c
	add hl,hl
	ld e,(hl)
	and b
	jp c,l5ae5h
	pop bc
	ld h,d
	xor (hl)
	sbc a,098h
	jp m,0e98ah
	adc a,l
	jp po,0c219h
	xor e
	jp nz,0a4cbh
	sub (hl)
	ld hl,0a076h
	ld h,d
	rrca
	inc bc
	ex de,hl
	jr z,l4c62h
	rst 18h
	add a,l
	call c,0b508h
	in a,(099h)
	ld c,(hl)
	nop
l4ca1h:
	add hl,sp
	jp nz,087b4h
	and (hl)
	call 00362h
	cp 0b6h
	inc h
	or h
	ret m
	call pe,08dc0h
	ret nc
	or e
	scf
	rrca
	ld e,a
	ld l,a
	jr nz,l4ca1h
	ld c,e
	and e
	xor e
	or l
	inc h
	adc a,l
	ret z
l4cc0h:
	ld d,b
	rst 30h
	ret z
	sub c
	xor a
	rst 28h
	add hl,sp
	push de
	add hl,hl
	dec de
	ld hl,08705h
	add hl,sp
	jp nc,0b249h
	ex de,hl
	cp 029h
	jr z,l4d32h
	ld e,c
	jp po,01d93h
	ld h,0bah
	xor l
	defb 0fdh,0a7h,0a1h ;illegal sequence
	ld h,085h
	push bc
	pop af
	sub h
	or e
	and h
	call nz,0a1bch
	ld d,(hl)
	daa
	push bc
	ld h,(hl)
	ld e,a
	ret z
	daa
	or c
	ld l,(hl)
	ld d,c
	ld e,(hl)
	add a,a
	ld hl,(02f27h)
	ld (hl),l
	inc e
	cp h
	rst 18h
l4cfdh:
	rst 0
	inc c
	ld b,0fch
	ld h,07fh
	ld (hl),c
	ld e,087h
	ld l,c
	cp c
	jr $+73
	ld (hl),e
	daa
	jr z,$+20
	jr nc,l4cfdh
	ex de,hl
	sbc a,b
	jr c,l4d34h
	and (hl)
	sub d
	push hl
	or d
	jp pe,l468ah
	push de
	ret
	dec b
	ld c,b
	sbc a,08ch
sub_4d21h:
	defb 0ddh,058h,029h ;illegal sequence
	ld d,h
	ret nc
	ld b,0dch
	ld a,d
	or h
	set 4,b
	xor d
	dec h
	ret nz
	ld b,(hl)
	ex af,af'
	ld c,d
l4d32h:
	or c
	ld b,l
l4d34h:
	sub (hl)
	ld d,e
	ld c,b
	jr nz,l4cc0h
	add a,(hl)
	jp nc,02d81h
	adc a,(hl)
	dec (hl)
	cp l
	ld h,l
	ld c,b
	ld b,l
	call p,0fe5ah
	sbc a,d
	jp nc,0e733h
	call c,0e862h
	ld d,d
	rst 0
	and d
	ld de,0eda7h
	xor d
	adc a,d
	and (hl)
	rst 20h
	jp nz,02702h
	cp a
	add a,0a8h
	dec hl
	ld h,d
	add a,052h
	rst 18h
	ld c,021h
	ld h,d
	ld b,l
	xor b
	jp nc,0a820h
	jp p,0ef2ah
	adc a,0bdh
	ld c,c
	add a,03eh
	xor e
	ld e,b
	inc hl
	ret
	ld hl,l4018h
	ld (bc),a
	inc h
	and d
	or b
	ld l,0c7h
	dec b
	add a,0b1h
	dec b
	or d
	jr z,l4db5h
	ld c,c
	ld hl,0b460h
	and a
	ret pe
	or b
	ld b,e
	inc b
	adc a,h
	xor h
	cp d
	ret pe
	sub h
	ret pe
	adc a,c
	call nc,00c21h
	ret po
	sub b
	and l
	and b
	defb 0edh ;next byte illegal after ed
	call p,08bf6h
	jr nz,$+40
	inc hl
	adc a,l
	ld (l6517h),hl
	ld b,h
	sub c
	ld l,c
	ret nz
	ld sp,l4040h
	sub h
	inc d
	out (098h),a
	ld l,e
	ld b,h
l4db5h:
	ld d,l
l4db6h:
	call po,0bf0ch
	ld a,044h
	xor e
	ld b,h
	inc h
	xor (hl)
	ld hl,0e85eh
	sub b
	ld c,b
	adc a,h
	ld c,b
	sub c
l4dc7h:
	cp a
	jr nz,l4db6h
	ld e,b
	inc bc
	ld h,082h
	push hl
	ld c,044h
	jp (hl)
	ld h,l
	ld (hl),l
	rla
	ld e,b
	ret pe
	add a,h
	sub h
	inc b
	ld h,l
	or b
	ld d,c
	inc b
	di
	ld e,c
	ei
	jp po,0afd6h
	ld d,b
	ld h,l
	ld h,e
	out (c),b
	ld b,l
	jp nz,l436ah
	rst 0
	out (09ch),a
	ex (sp),hl
	adc a,(hl)
	ret pe
	ld sp,hl
	ld de,0a702h
	ld d,c
	inc h
	inc sp
	ret pe
	ld h,l
	rst 8
	jr l4dc7h
	xor h
	ret nc
	call nz,0ac89h
	ld (hl),a
	call z,0a69ah
	cp (hl)
	ld d,e
	sub 0b2h
	adc a,l
	ld c,b
	ex de,hl
	and l
	add a,b
	dec h
	rst 10h
	dec hl
	ld (hl),c
	sub a
	call nc,08803h
	ld l,l
	dec h
	rr b
	nop
	and e
	rrca
	ret nc
	inc l
	ld e,004h
	and a
	rrca
	or l
	add hl,hl
	dec c
	xor (hl)
	jp z,02597h
	xor b
	add hl,sp
	and l
	add hl,hl
l4e31h:
	jp c,01432h
	jp z,0a4d7h
	cp c
	ld h,l
	ld b,0f8h
	daa
	inc h
	ld (0b7e1h),hl
	dec c
	ret
	dec de
	dec b
	sbc a,d
	sub h
	sbc a,03fh
	ex af,af'
	jp z,09027h
	inc de
	ld b,a
	ld a,(bc)
	add a,(hl)
	jp nc,083f2h
	jp nc,0f222h
	xor b
	sub e
	adc a,l
	xor (hl)
	exx
	add a,d
	add a,008h
	rla
	inc l
	ld b,l
	dec d
	adc a,c
	or d
	ld d,03ch
	cp l
	ex de,hl
	ld e,(hl)
	inc b
	ret z
	xor e
	defb 0edh ;next byte illegal after ed
	xor 05ch
	inc bc
	ld d,a
	ld d,d
	di
	ld d,(hl)
	ret z
	pop de
	add a,l
	jp po,00322h
	xor b
	ret m
	adc a,e
	add a,b
	inc l
	dec sp
	and d
	adc a,b
	and d
	ret z
	adc a,(hl)
	ret z
	sbc a,b
	jp z,026efh
	add a,0cah
	ld a,(de)
	ret z
	ld c,d
	dec b
	xor b
	jr z,l4e31h
	jp z,0c89dh
	or b
	in a,(085h)
	ld c,h
	cpl
	call z,0ad02h
	call z,0ed3eh
	sub b
	xor h
	jp 015c9h
	rst 20h
	inc hl
	jp pe,0c931h
	dec sp
	defb 0ddh,08ah,0d7h ;illegal sequence
	inc hl
	defb 0fdh,03bh,0cah ;illegal sequence
	adc a,d
	ld a,d
	rst 8
	ld b,a
	ld h,0c2h
	and 0e3h
	cpl
	call 08d6ch
	ld h,(hl)
	inc bc
	ld b,(hl)
	and l
	ld e,(hl)
	xor h
	ld h,h
	inc bc
	xor b
	ld h,h
	or l
	ld c,a
	ld h,a
	or c
	ld e,(hl)
	rst 20h
	ld d,h
	ld (bc),a
	push bc
	ld d,d
	or (hl)
	sub (hl)
	call m,0f691h
	ld b,l
	ret pe
	add hl,bc
	ld a,023h
	adc a,h
	sub l
	halt
	inc bc
	dec h
	dec b
	sbc a,a
	sbc a,c
	rst 20h
	ld d,(hl)
	cp c
	ld (hl),c
	call p,0cda4h
	ld h,l
	inc bc
	rst 10h
	ld a,(de)
	inc h
	xor h
	add a,a
	call p,08adeh
	and d
	cp c
	or d
	add a,l
	ld (0b2fbh),a
	in a,(0b2h)
	push bc
	ld hl,(0d8dch)
	sbc a,l
	and d
	cp h
	sbc a,l
	xor 028h
	ld (bc),a
	ld (0e28fh),hl
	call z,025cfh
	jr nz,$+14
	ret
	ld b,l
	sbc a,(hl)
	and l
	call z,0f7a4h
	call nc,094eeh
	jp po,0839ch
	sbc a,c
	sbc a,l
	sub h
	dec de
	sub b
	rst 10h
	xor d
	sub e
	cp b
	ld h,(hl)
	add a,(hl)
	ld (hl),d
	or (hl)
	ld e,e
	add hl,bc
	ex af,af'
	or e
	ld c,c
sub_4f31h:
	add a,e
	ld b,h
	xor d
	call po,0a4b1h
	sbc a,(hl)
	push hl
	ld hl,(0259dh)
	rla
	dec h
	and l
	ld b,c
	inc bc
	ld a,e
	and h
	ld a,h
	ld (l6c23h),a
	or b
	adc a,c
	push bc
	xor c
	cp (hl)
	dec e
	ld hl,095b0h
	ld d,h
	ld b,l
	xor a
l4f53h:
	add hl,hl
	adc a,a
	ld (0fc44h),hl
	adc a,0cdh
	jp po,0a278h
	or h
	cp e
	add a,004h
	ex (sp),hl
	ld h,b
	ld h,l
	jr z,l4f53h
	dec sp
	ld h,a
	inc hl
	and b
	scf
	jp nz,02211h
	and (hl)
	cpl
	ret pe
	or a
	scf
	and a
	inc l
	xor a
	pop bc
	rlca
	and (hl)
	daa
	ret pe
	sub d
	ld c,c
	call nc,0e878h
	xor a
	rrca
	call 0f328h
	cp h
	rst 20h
	sub h
	sub a
	sub l
	dec a
	ret pe
	xor e
	ld a,d
	sbc a,d
	inc d
	ld h,(hl)
	ret pe
	or c
	or c
	or c
	sub a
	dec h
	add a,d
	and h
	rla
	adc a,b
	sub h
	jp m,00015h
	ld (0f3e7h),hl
	add a,h
	inc h
	ld h,l
	xor a
	add a,(hl)
	call po,01d26h
	sub d
	ld (00d44h),hl
	dec h
	or d
	and e
	ld h,(hl)
	xor l
	xor h
	ld d,d
	add a,046h
	ex af,af'
	and 044h
	call pe,00503h
	add hl,bc
	ld d,d
	add hl,bc
	xor e
	ld c,b
	ld (bc),a
	ld hl,(02963h)
	call pe,013cbh
	rla
	sub h
	ret z
	ld d,h
	jp pe,l7907h
	call pe,0f1f4h
	djnz l4fdeh
	inc bc
	ld c,h
	call m,090deh
	inc d
	dec bc
	inc bc
	inc l
l4fdeh:
	dec bc
	ld a,(bc)
	ld (de),a
	add hl,bc
	inc b
	ld a,(bc)
	cp b
	ld h,(hl)
	ld b,00ah
	ld b,h
	or 06bh
	add a,l
	jr z,l5017h
	add hl,hl
	inc c
	jr l505fh
	nop
	ld a,(bc)
	dec bc
	dec hl
	inc l
	inc c
	ld hl,(02906h)
	ld a,(bc)
	rlca
	ld c,d
	ld a,(bc)
	inc c
	dec de
	ld c,h
	inc de
	ld b,032h
	ld b,b
	dec hl
	ld b,04ah
	nop
	ld a,(bc)
	ex af,af'
	dec bc
	ld (bc),a
	ld (bc),a
	ld a,(bc)
	adc a,e
	dec b
	dec bc
	ld b,034h
	inc b
	dec bc
l5017h:
	ex af,af'
	ld hl,(00a0ah)
	dec d
	inc c
	ld c,d
	ld a,(bc)
	ld a,(bc)
	inc c
	dec bc
	dec h
	call nc,0063bh
	ld b,l
	inc c
	and b
	ld l,055h
	nop
	inc c
	ex af,af'
	ld a,(bc)
	sub b
	ld e,d
	inc c
	dec b
	ld c,e
	add hl,bc
	nop
	ld h,h
	dec hl
	ld b,l
	nop
	inc l
	sub e
	inc c
	add hl,bc
	cp h
	sbc a,c
	ld c,(hl)
	dec c
	or h
	cpl
	ld d,c
	add hl,hl
	jr z,l5052h
	dec hl
	ld a,(bc)
	xor b
	sub d
	add hl,bc
	ld b,l
	ld c,e
	adc a,l
	jr nc,$+77
l5052h:
	inc c
	ld d,c
	inc l
	inc c
	call nz,sub_4a56h
	ld l,03ah
	dec d
	ld hl,(02c02h)
l505fh:
	ld (l452ch),a
	jp z,l5170h
	ld h,080h
	adc a,c
	rlca
	inc e
	adc a,d
	ld e,c
	adc a,d
	ld b,03eh
	dec bc
	adc a,e
	ld c,d
	dec bc
	ld hl,(0497dh)
	dec hl
	ld h,a
	nop
	ld a,d
	ld de,01d8bh
	adc a,e
	ex af,af'
	ld a,(hl)
	ld (de),a
	ld c,d
	ex af,af'
	ld l,04bh
	ret c
	jr nz,l508dh
	add hl,bc
l5089h:
	jr z,l50b5h
	ld d,d
	inc l
l508dh:
	scf
	ld d,04ah
	cp c
	ld (08a2fh),a
	add hl,hl
	dec hl
	ld l,b
	ld d,h
	daa
	inc sp
	nop
	dec c
	ld a,(l45d9h)
	ld l,h
	ld a,(bc)
	ret c
	ld (de),a
	add hl,hl
	add hl,bc
	adc a,d
	adc a,008h
	ld d,l
	jr z,$+7
	inc b
	jr nc,$-25
	ld (de),a
	call z,0953ch
	ld d,l
	inc bc
	dec l
l50b5h:
	dec hl
	ex af,af'
	ld b,(hl)
	pop af
	ld d,e
	ex af,af'
	nop
	ex af,af'
	ld e,(hl)
	inc c
	add hl,hl
	ld hl,(l557ch)
	xor h
	ld h,05eh
	ld l,b
	out (029h),a
	ld hl,(0b391h)
	ld b,e
	jr nc,l50dch
	dec bc
	jr z,l5128h
	inc b
	ld l,e
	add hl,hl
	dec hl
	cp 06ch
	jp c,02651h
	ld c,d
l50dch:
	ld a,(bc)
	ld h,d
	ld d,d
	ld a,e
	dec bc
	ld l,e
	jr c,l5089h
	ld de,028a3h
	daa
	xor b
	ret
	di
	ld (hl),053h
	ex af,af'
	sub c
	ld b,a
	add hl,hl
	and d
	ld b,(hl)
	and a
	ld l,h
	ld c,(hl)
	ld b,e
	ld c,e
	push de
	ld (0be29h),hl
	inc b
	inc c
	dec c
	and 052h
	sbc a,b
	ld b,h
	dec c
	inc l
	ld hl,(l528ch)
	add a,b
	ld b,l
	ret po
l510bh:
	or e
	ld d,06fh
	ld h,l
	or d
	rst 20h
	ld d,l
	jr l518fh
	adc a,c
	nop
	dec bc
	add hl,hl
	ld c,l
	ld d,c
	ld d,h
	ccf
	ld hl,(0c707h)
	dec d
	ld hl,(l553ah)
	ld sp,hl
	ld b,h
	ld d,d
	nop
	add a,a
l5128h:
	ld c,(hl)
	add a,e
	inc l
	inc c
	xor 093h
	ei
	ld (de),a
	ld h,074h
	ld b,007h
	jp nc,0222fh
	dec b
	jp (hl)
	ld (02ca3h),a
	ld a,e
	sbc a,h
	xor a
	and e
	ld a,(hl)
	in a,(025h)
	inc (hl)
	dec hl
	ld a,0bch
	jr z,l5154h
	call nc,sub_4b28h
	ld l,c
	adc a,e
	sbc a,h
	and d
	adc a,l
	push de
	and e
	dec bc
l5154h:
	defb 0ddh,062h ;ld ixh,d
	sbc a,c
	rst 0
	ld d,009h
	push hl
	inc h
	jp nz,0f6a4h
	pop de
	and c
	ld d,d
	adc a,b
	ld c,(hl)
	add a,a
	ld e,c
	inc c
	jr nc,l510bh
	exx
	ret nc
	add hl,hl
	ld l,(hl)
	sbc a,c
	inc e
	inc hl
l5170h:
	ld c,(hl)
	and a
	sub 00dh
	call p,00152h
	ld b,00dh
	add a,h
	scf
	dec e
	ld (de),a
	ld c,h
	rst 38h
	adc a,d
	ld hl,(0e25eh)
	and l
	inc l
	ld (de),a
	rst 0
	inc d
	or a
	ld d,h
	rla
	ld sp,hl
	ld d,c
	sub c
	ld c,c
l518fh:
	sub e
	or h
	ld h,h
	cp l
	ld d,c
	dec b
	dec h
	dec hl
	sub 034h
	sbc a,(hl)
	ret z
	ld l,d
	ld d,l
	dec bc
	inc bc
	and d
	inc bc
	xor a
	ld h,d
	inc bc
	ld l,a
	ld b,01ah
	sbc a,c
	ld b,(hl)
	inc bc
	ld (hl),b
	ld h,b
	call nz,0010fh
	sub d
	di
	ld c,d
	and a
	ccf
	call po,00d24h
	inc b
	sub h
	ld h,d
	ld l,h
	ret c
	ld d,l
	dec hl
	sbc a,e
	daa
	cp c
	sub l
l51c2h:
	add a,h
	sbc a,b
	dec d
	ld b,04eh
	ld l,e
	sub l
	ld h,l
	ld (hl),003h
	rst 18h
	add hl,sp
	call nc,sub_7049h
	ld h,h
	dec bc
	adc a,(hl)
	sub c
	adc a,093h
	sbc a,a
	cp c
	inc l
	ei
	inc e
	add hl,hl
	ld hl,(l6301h)
	ld a,(bc)
	call z,0fe4bh
	inc d
	add a,(hl)
	call pe,0a4a5h
	jp nz,013a4h
	ex af,af'
	xor e
	ld (hl),h
	rst 8
	ld d,l
	ex af,af'
	jp nz,094b3h
	ld d,h
	rla
	defb 0edh ;next byte illegal after ed
	or h
	and c
	sub h
	adc a,(hl)
	adc a,h
	ld l,e
	call pe,099a5h
	ld h,h
	or h
	and d
	ld sp,094b9h
	sbc a,b
	and e
	jr nz,l51c2h
l520bh:
	ld (0bf1ch),a
	add hl,hl
	adc a,0c6h
	xor e
	ld (hl),a
	ld h,(hl)
	ld e,d
	add a,b
	ld d,l
	cp e
	sub c
	cp a
	ld c,d
	and h
	ld (08929h),hl
	xor h
	sbc a,h
	ex de,hl
	ret po
	ld h,d
	inc hl
	ret c
	ld (de),a
	ld bc,091e6h
	rst 30h
	sub h
	or e
	ld d,h
	ld l,0e0h
	ld b,(hl)
	cp a
	ld a,d
	jp pe,03b52h
	sbc a,h
	call nz,0d9a4h
	ld a,e
	rlca
	ld c,l
	and a
	jp (hl)
	inc d
	cp h
	sub d
	xor 0b2h
	sub 08ch
	ld (bc),a
	ld b,l
	exx
	dec l
	ld l,b
	inc bc
	ld a,b
	xor e
	inc l
	and c
	ld c,e
	sbc a,b
	ld c,d
	and b
	ld c,h
	ld d,08ah
	xor l
	call pe,0abd1h
	sub h
	add hl,hl
	or d
	add hl,sp
	ld e,c
	ld e,(hl)
	or e
	ld b,(hl)
	call 0844ah
	ld d,(hl)
	ld h,050h
	dec hl
	xor h
	dec hl
	ld c,0d6h
	ret
	rst 18h
	ld hl,(02811h)
	nop
	sub h
	jp p,091c2h
	ret c
	or d
	sbc a,a
	adc a,c
	djnz l528bh
	add a,e
	ld h,09bh
	sub h
	ld c,d
	ld c,b
	ld c,e
	sub h
	and h
	xor e
	ret nz
	ld a,02bh
l528bh:
	cp e
l528ch:
	jr nz,l529ch
	jr z,l529ch
	ld l,d
	dec hl
	cp c
	cp c
	ld hl,(090dbh)
	ld c,e
l5298h:
	ld c,e
	ld bc,l4bcbh
l529ch:
	ret
	ld c,c
	call sub_4c4ah
	sbc a,b
	ld (0f2c7h),a
	call c,0a28ah
	xor h
	push de
	or h
	sub d
l52ach:
	sub l
	call z,00d4ah
	xor (hl)
	inc h
	jr nz,l5298h
	adc a,d
	xor l
	ld e,(hl)
	and d
	ld a,(bc)
	pop bc
	jp nz,02c6eh
	dec l
	ld (de),a
	dec hl
	jr z,l52ebh
	ld (de),a
	ex de,hl
	push bc
	add hl,bc
	ld (hl),l
l52c7h:
	call po,009b1h
	dec l
	adc a,e
	add hl,de
	sbc a,c
	dec d
	ld a,(de)
	ret nz
	inc (hl)
	ret
	sub c
	defb 0fdh,095h ;sub iyl
	ld h,a
	ld c,l
	adc a,c
	add hl,sp
	adc a,b
	ld c,c
	ld b,a
	ld b,(hl)
	ex de,hl
	jp c,l469dh
l52e2h:
	adc a,b
	ld d,(hl)
	jp p,0bc45h
	ld d,(hl)
	ld d,c
	add hl,bc
	ret nc
l52ebh:
	cp c
	rrca
	jp m,00515h
	sbc a,d
	ld e,c
	xor e
	ld h,h
	ret z
	ld (hl),c
	dec e
	ld b,l
	and l
	or 049h
	and c
	ld a,c
	ret
	ld l,b
	ld b,09bh
	pop de
	inc (hl)
	ld hl,(0087fh)
	dec b
	ld de,0250dh
	inc l
	ei
	adc a,e
	dec c
	xor a
	ld c,c
	sub h
	ld (de),a
	dec l
	adc a,a
	add a,e
	jr z,l5343h
	ld (bc),a
	ret p
	ld l,d
	adc a,d
	ret
	cp 0b1h
	push af
	jr l52ach
	and d
	sub a
	adc a,c
	adc a,c
	ld (bc),a
	cp b
	ret
	xor (hl)
	ld e,b
	defb 0fdh,0c9h,08ch ;illegal sequence
	ld c,b
	res 6,b
	rst 20h
	adc a,d
	jp m,02210h
	rlca
	ld l,h
	push bc
	inc de
	nop
	dec h
	dec bc
	sbc a,c
	sub d
	add hl,de
	ld h,01eh
	adc a,h
	sub c
l5343h:
	ld b,(hl)
	jr nz,l52e2h
	add a,0e2h
	xor e
	ex af,af'
	ld h,c
	ex af,af'
	in a,(029h)
	ei
	ld sp,022fdh
	rla
	daa
	ld l,e
	ld b,0a3h
	adc a,h
	cp l
	add hl,hl
	add hl,de
	ld b,04fh
	inc h
	nop
	xor (hl)
	inc hl
	ld c,h
	add hl,bc
l5363h:
	adc a,(hl)
	ld h,l
	jp p,0ec12h
	rra
	inc bc
	jp pe,05472h
	cp h
	xor c
	ld (bc),a
	ld a,(bc)
	ld c,c
	add hl,bc
	ld l,h
	rlca
	ld l,c
	ld d,c
	and h
	push de
	sbc a,d
	pop af
	ret nz
	ld (08a00h),a
	adc a,d
	adc a,(hl)
	ld (hl),e
	adc a,d
	add hl,bc
	ccf
	dec hl
	call nc,009d8h
	xor d
	inc (hl)
	cp l
	and e
	add hl,bc
	rst 28h
	ld (0acf3h),hl
	ld b,c
	or a
	cp h
	dec b
	push bc
	and a
	ld c,d
	and h
	ld (hl),e
	ret p
	inc c
	ld bc,0e94bh
	daa
	xor d
	ld l,e
	and l
	dec d
	call pe,0b389h
	dec bc
	rlca
	push bc
	ld h,d
	jr z,l53d6h
	and h
	ld h,d
	xor h
	ld bc,0cd23h
	ld (hl),0f3h
	ld (0e625h),a
	ld hl,(0c5fbh)
	dec hl
	cp (hl)
	sub (hl)
	push de
	dec hl
	ld c,h
	or h
	inc (hl)
	jp pe,0f5adh
	ld (l4b4ah),hl
	rst 8
	ld e,b
	ld c,b
	ld (hl),a
	dec sp
	ld a,(bc)
	inc l
	ld (bc),a
	jr nz,l5363h
	ld e,l
	adc a,h
l53d6h:
	dec c
	ret pe
	adc a,d
	ex af,af'
	pop af
	ld d,l
	defb 0edh ;next byte illegal after ed
	and a
	dec h
	res 2,a
	ld a,(bc)
	jp nc,01125h
	out (043h),a
	ld c,b
	cp 06ah
	ld c,047h
	and b
	rst 30h
	dec h
	rlca
	adc a,d
	adc a,064h
	xor h
	add a,09bh
	sbc a,l
	cp 00ah
	ld d,h
	adc a,h
	or d
	defb 0ddh,0b3h,0c1h ;illegal sequence
	ld l,b
	ld c,(hl)
	adc a,d
	rlca
	jp (hl)
	and c
	ld b,a
	ex (sp),hl
	and l
	sbc a,c
	sub e
	defb 0edh ;next byte illegal after ed
	ld (de),a
	ld c,c
	res 4,b
	inc h
	ld hl,(0d4a4h)
	rst 0
	call z,0d298h
	cp (hl)
	inc hl
	ld h,007h
	add hl,hl
	defb 0edh ;next byte illegal after ed
	ld d,l
	ld l,e
	jr nc,$+80
	pop bc
	ld d,b
	dec c
	ld l,e
	ld l,e
	ld (bc),a
	sub h
	exx
	or l
	ex de,hl
	call nc,08cc7h
	ret pe
	call p,093dch
	ld b,a
	inc bc
	jp nc,02928h
	sub l
	ld d,c
	ex de,hl
	rra
	ret p
	jr l5488h
	daa
	neg
	adc a,a
	adc a,h
	inc hl
	ld c,d
	ld c,d
	ret
	ld l,d
	dec (hl)
	ret p
	and e
	sub 085h
	dec hl
	xor a
	and l
	dec (hl)
	adc a,b
	inc de
	ld l,b
	and 0a9h
	or 025h
	sbc a,l
	inc d
	xor d
	dec a
	ld e,(hl)
	ld c,c
	sbc a,h
	adc a,(hl)
	bit 0,d
	jp m,08fc9h
	ld c,h
	call po,0b54ah
	dec h
	cp (hl)
	dec l
	inc a
	cp l
	out (009h),a
	call z,02c0ah
	ld b,c
	call pe,08bc9h
	ld (0a185h),hl
	call nc,sub_5e6ch
	sub l
	ld b,d
	adc a,091h
	or h
	ld d,c
	ld l,(hl)
	or a
	add a,d
	dec h
	ld l,e
l5488h:
	adc a,h
	rlca
	ld h,028h
	call z,092b9h
	ld d,c
	inc l
	sbc a,l
	ld a,(bc)
	dec c
	ld c,c
	ld c,h
	ld c,(hl)
	dec bc
	ld (hl),l
	ld c,e
	add a,b
	adc a,049h
	rst 18h
	add hl,sp
	or b
	exx
	jp p,0e369h
	sbc a,b
	ex af,af'
	ld c,c
	ld c,b
	sub b
	defb 0ddh,07ah,004h ;illegal sequence
	daa
l54adh:
	ld l,d
	jr z,$+86
	call pe,0969bh
	ld h,l
	cp (hl)
	ld c,b
	ex af,af'
	ld bc,02aech
	jp pe,08c8fh
	ld hl,(l5f5bh)
	ld c,e
	daa
	dec bc
	add hl,hl
	pop bc
	ld c,l
	ex af,af'
	halt
	add hl,bc
	ret pe
	sub l
	call pe,sub_4d21h
	rst 30h
	call po,0070fh
	sub d
	xor c
	ex af,af'
	ld (de),a
	ld l,h
	ld c,b
	ld l,d
	sub d
	ld c,d
	ld b,002h
	jr l54adh
	adc a,c
	sub b
	dec hl
	call nc,02b09h
	ld c,c
	cp b
	daa
	defb 0ddh,06fh ;ld ixl,a
	add a,a
	ld d,d
	inc l
	add a,d
	adc a,l
	adc a,e
	xor l
	and a
	ret nc
	ld d,04ah
	dec de
	add a,(hl)
	daa
	or d
	ld l,h
	ld a,(de)
	ld c,d
	sub d
	and 0c1h
	ld (092b6h),a
	ld sp,0ec9ah
l5505h:
	push hl
	sub d
	ret c
	adc a,e
	dec sp
	rst 8
	jp z,0c886h
	ld d,l
	call pe,sub_460ah
	adc a,b
	rst 28h
	ld (09007h),a
	ret p
	cp (hl)
	add hl,bc
	xor h
	sub c
	inc h
	ld l,e
	jp z,03899h
	inc h
	ld c,(hl)
	cp a
	ld c,d
	bit 3,d
	sbc a,049h
	ld c,h
	ex af,af'
	xor h
	adc a,a
	ld hl,0e928h
	inc b
	xor d
	ld b,067h
	ld h,l
	dec b
	ld h,l
	xor h
	daa
	ld b,(hl)
l553ah:
	push hl
	xor c
	ld c,h
	ld h,002h
	sbc a,l
	and h
	dec (hl)
	ld (de),a
	ld c,c
	add a,h
	ld l,l
	or d
	daa
	add a,062h
	jr z,l5505h
	ld e,b
	or l
	ld h,e
	pop hl
	add a,c
	add hl,bc
	ld c,l
	inc l
	ret c
	ld c,b
	inc h
	ld h,d
	adc a,h
	dec bc
	ld c,e
	adc a,l
	ld (hl),c
	dec hl
	inc bc
	ld e,d
	cp h
	add hl,hl
	inc bc
	ld e,b
	ld b,006h
	and 046h
	daa
	ld e,d
	pop hl
	adc a,b
	ld b,a
	nop
	ld h,0e0h
	and d
	exx
	ld d,c
	xor d
	ld b,c
	adc a,b
	rla
	ld l,c
	ld c,c
	call 0a9c5h
l557ch:
	ld b,0ech
	inc b
	ex (sp),hl
	pop hl
l5581h:
	add hl,bc
	ld l,b
	inc h
	ld (0d806h),hl
	ld d,c
	call pe,00704h
l558bh:
	ld l,c
	inc b
	cp h
	ld h,d
	ld (bc),a
	sbc a,b
	xor b
	add a,d
	xor d
	call m,02752h
	sbc a,h
	ld c,h
	inc bc
	inc bc
	sbc a,(hl)
	ex af,af'
	ld (bc),a
	set 6,h
	rst 8
	add a,a
	add hl,sp
	rst 38h
	dec l
	add a,024h
	and l
	jp nc,0c5e1h
	add hl,hl
	and c
	ld c,(hl)
	or b
	ld c,e
	ret z
	ld b,a
	ld c,e
	ret c
	ld h,d
	inc bc
	res 6,e
	ret p
	ld d,d
	defb 0edh ;next byte illegal after ed
	jp pe,0a5e2h
	dec b
	ld c,h
	jp po,0f666h
	or b
	ld hl,(l4c62h)
	defb 0edh ;next byte illegal after ed
	sub c
	dec hl
	ld hl,(0b0d9h)
	ld h,h
	add hl,hl
	ld h,001h
	ld h,d
	inc b
l55d3h:
	sub e
	jr nc,l5581h
	rst 18h
	adc a,d
	adc a,d
	ret p
	ld c,l
	adc a,04ch
	out (0c9h),a
	out (0afh),a
	rst 8
	ex af,af'
	ld l,e
	xor e
	add a,0c5h
	ld c,c
	call po,0ec63h
	djnz l55f7h
	rlca
	ld bc,0c2afh
	inc hl
	ld b,0c1h
	ld hl,(099a0h)
l55f7h:
	ex af,af'
l55f8h:
	jr z,l558bh
	add hl,sp
	ld a,(bc)
	ld d,c
	ld e,d
	and l
	ld b,l
	call z,0f9eeh
	adc a,l
	ld h,06ah
	ld b,004h
	ld c,d
	call pe,0ea06h
	ld h,0c3h
	ld hl,(0d401h)
	jp nc,02aa1h
	pop af
	jr z,l55f8h
	or h
	rst 18h
	jp p,0f9cdh
	add hl,hl
	cp l
	inc l
	cp h
	adc a,c
	dec b
	inc bc
	ld b,0e8h
	sub e
	ld c,e
	adc a,h
	ld d,b
	ld a,(de)
	ld h,l
	ex af,af'
	adc a,h
	add a,a
	ld hl,(l4829h)
	or l
	and h
	inc (hl)
	add a,a
	jp nc,0dcbch
	jr z,l55d3h
	add a,b
	ld l,d
	ld c,c
	call pe,0eb28h
	rlca
	adc a,b
	ret z
	xor h
	add hl,hl
l5645h:
	ld b,c
	ld l,e
	ld l,e
	inc h
	ex de,hl
	ld a,(bc)
	ld b,l
	ld a,(bc)
	dec l
	jr z,l5645h
	ld (de),a
	inc h
	or c
	ld d,d
	or c
	ld h,d
	add a,00dh
	ld c,c
	ex af,af'
	defb 0edh ;next byte illegal after ed
	sbc a,a
	set 7,e
	inc de
	inc bc
	ei
	ld (de),a
	ld l,c
	jr z,$+12
	jr z,l5671h
	adc a,b
	add a,b
	dec h
	inc bc
	ld a,(de)
	jr nz,l568eh
	otdr
	sub h
l5671h:
	rla
	cp a
	adc a,h
	inc b
	cp (hl)
	ld e,c
	jr $+74
	ld sp,hl
	ld b,d
	add hl,bc
	dec c
	ret z
	ld (092e4h),a
	xor l
	ret z
l5683h:
	ld c,(hl)
	or e
	inc c
	inc b
	inc bc
	inc bc
	dec c
	ld e,d
	call pe,sub_6aebh
l568eh:
	add a,a
	ld h,l
	rrca
	djnz l569ah
	ld b,l
	inc a
	call z,01520h
	sub a
	ld h,h
l569ah:
	sbc a,(hl)
	ld d,d
	ret nc
	add a,h
	ld b,0edh
	and 0cah
	ld b,a
	ret m
	ld c,d
	adc a,c
	jp z,00af9h
	ld c,l
	ld a,(bc)
	call nc,0e1c8h
	and (hl)
	inc e
	jr nz,l5683h
	pop bc
	dec h
	ld hl,02200h
	dec l
	ld d,b
	add hl,sp
	ld e,a
	ld bc,00040h
	pop de
	xor c
	ld bc,09855h
	push de
	adc a,(hl)
	ld hl,(0dc8fh)
	ld a,h
	ld h,h
	jr z,l5709h
	or c
	ld d,a
	cp e
	ld de,l6926h
	ld d,027h
	call pe,04472h
	or 048h
	call z,sub_48feh
	ld b,b
	xor e
	ld l,e
	sub e
	and e
	and 053h
	add a,e
	ld (081ech),a
	call pe,sub_4b27h
	rst 20h
	ld l,c
	ret po
	inc h
	inc c
	ld b,a
	jr nc,l56f6h
	ex de,hl
	xor (hl)
	adc a,d
l56f5h:
	cp d
l56f6h:
	ld c,(hl)
	or b
	inc l
	cp d
	inc (hl)
	ld c,b
	ld b,a
	call z,017c7h
	add hl,bc
	sbc a,c
	push bc
	ld hl,(08ccch)
	and l
	ld sp,hl
	sub h
l5709h:
	inc b
	adc a,d
	call nz,02bedh
	cp b
	push de
	rst 20h
	or h
	inc a
	call po,04884h
	ld l,l
	xor (hl)
	ld d,h
	call po,0ae9ah
	ld (0bc06h),hl
	call p,026e4h
	ld c,d
	inc h
	inc bc
	ex af,af'
	xor (hl)
	ld e,c
	ret nz
	dec h
	xor h
	ret pe
	add hl,hl
	ld a,b
	ld e,a
	defb 0edh ;next byte illegal after ed
	ld a,(hl)
	ld h,d
	push de
	ld l,(hl)
	xor (hl)
	jp nz,l4407h
	ld h,a
	xor l
	ld d,e
	ld (l4968h),hl
	add a,c
	adc a,b
	rst 10h
	jr nz,l5764h
	ld b,(hl)
	rlca
	and d
	ld c,h
	xor a
	ld l,h
	sub e
	and h
	ld (iy-073h),b
	dec b
	dec (hl)
	ld c,l
	add hl,hl
	and b
	dec bc
	ld c,e
	adc a,h
	ld b,h
	sub l
	ld d,b
	ld c,d
	dec bc
	defb 0ddh,09ch ;sbc a,ixh
	or h
	cp d
	inc h
	daa
	inc b
	sub c
	sub d
l5764h:
	or b
	add a,e
	ld c,e
	adc a,c
	ld c,h
	add a,b
	ld h,086h
	sub d
	ld h,(hl)
	ld (bc),a
	dec b
	jr nz,l5775h
	cp a
	jr nc,l56f5h
l5775h:
	ld d,a
	defb 0edh ;next byte illegal after ed
	defb 0fdh,09ah,0bfh ;illegal sequence
	adc a,d
	jr z,l578ch
	sub e
	ret nc
	ld l,d
	ld l,l
	ld l,(hl)
	ld c,e
	and b
	ld d,c
	ld (hl),a
	adc a,b
	ld h,d
	add a,c
	inc de
	adc a,e
	ld l,c
l578ch:
	sub (hl)
	ld d,d
	add hl,de
	jp (hl)
	adc a,b
	inc bc
	adc a,e
	adc a,c
	ld bc,0ed02h
	ld c,c
	in a,(0cah)
	jr z,$-77
	ex de,hl
	out (03ah),a
	call nz,02a92h
	inc hl
	jp nz,0ee45h
	xor c
	inc h
	ld b,h
	ld c,h
	ret z
	ex af,af'
	jp nc,001d5h
	ld (hl),l
	inc sp
	ld l,(hl)
	xor e
	ld hl,(08b2ah)
	call po,0c189h
	cp d
	dec b
	dec b
	dec sp
	adc a,e
	call nc,02b13h
	djnz l57e9h
	adc a,c
	pop bc
	add hl,bc
	xor l
	ld l,d
	add a,b
	adc a,b
	adc a,h
	ld a,d
	dec b
	jp c,0a85ah
	sbc a,091h
	ld c,h
	sbc a,e
	adc a,d
	ld h,b
	ld (bc),a
	call m,0d325h
	and a
	jp nz,0e948h
	xor (hl)
	ld b,e
	sbc a,(hl)
	ld c,d
	pop bc
	ld d,02bh
	inc c
	cp a
l57e7h:
	inc d
	inc hl
l57e9h:
	dec (hl)
	ld l,l
	xor d
	inc h
	or b
	ld (de),a
	ld b,06ch
	ld bc,02889h
	ld a,(bc)
	inc bc
	and l
	add a,(hl)
	ld c,l
	ld c,c
	ld c,l
	adc a,c
	sub c
	sub a
	dec l
	jr nz,l57e7h
	ld a,0b1h
	or h
	push hl
	call c,08adfh
	and d
	ld c,c
l580ah:
	adc a,c
	sub d
	ld c,c
	cpl
	ld h,d
	ld d,d
	ld c,c
	sub l
	jr c,$-34
	and l
	and d
	ld l,l
	add a,(hl)
	jp c,00694h
	call c,023e6h
	call pe,0952ch
	ld h,a
	defb 0edh ;next byte illegal after ed
	dec hl
	xor h
	inc c
l5826h:
	dec hl
	call pe,0d41ch
	ei
	and d
	cp d
	adc a,a
	ld l,e
	jp z,0beaah
	ld de,02468h
	rlca
	rst 18h
	ld c,h
	ld e,04dh
	rst 30h
	ld h,0b4h
	sbc a,e
	sbc a,(hl)
	or c
	ld b,h
	ld (bc),a
	pop de
	ld d,h
	dec l
	cp c
	ld h,h
	and b
	and b
	jr nz,l5871h
	nop
	xor d
	call p,027f0h
	jr z,l5826h
	and b
sub_5853h:
	inc hl
	ld c,c
	adc a,e
	ld e,c
	ld h,097h
	ld (09645h),a
	call po,088a5h
	ld e,b
	ret
	inc sp
	dec hl
	add a,(hl)
	ld (hl),a
	call z,sub_7a65h
	adc a,l
	call z,sub_498ah
	jp pe,00a91h
	or h
	sbc a,d
l5871h:
	add a,c
	ld h,(hl)
	and (hl)
	ld (hl),d
	rst 18h
	add a,0d4h
	ld b,(hl)
	add a,b
	ld c,b
	ex de,hl
	jr nz,l580ah
	jp nz,01293h
	add hl,bc
	xor e
	or h
	inc d
	dec b
l5886h:
	ld c,b
	cp l
	rst 10h
	and e
	adc a,(hl)
	ld e,h
	inc l
	sub d
	jr z,l58f9h
	dec bc
	cp h
	ld d,l
	xor e
	add a,d
	ld b,c
	ld h,l
	cp h
	sub a
	jr c,l5886h
	xor h
	ret c
	adc a,d
	adc a,(hl)
	or b
	ld h,028h
	sub h
	pop hl
	inc hl
	dec bc
	sub h
	ld b,(hl)
	adc a,(hl)
	ld d,(hl)
	pop af
	sub e
	xor d
	ld d,h
	inc b
	inc l
	ld sp,hl
	ld c,c
	ld c,d
	and b
	ld e,d
	ld e,(hl)
	add a,e
	sub d
	adc a,d
	xor e
	add a,(hl)
	ex af,af'
	daa
	ld l,d
	call po,0dbc9h
	ld (l454eh),a
	jp (hl)
	adc a,b
	add hl,bc
	pop de
	add hl,de
	sbc a,(hl)
	add hl,hl
	jp 082bbh
	dec d
	ex af,af'
	call m,0dea7h
	and c
	inc c
	ld l,l
	ret m
	scf
	xor b
	inc d
	ld b,e
	jp z,0bc9dh
	ld h,b
	and e
	dec hl
	adc a,l
	sub c
	xor l
	or d
	ld hl,(026ebh)
	xor e
	sbc a,d
	cp b
	or l
	or d
	ld d,a
	ld (de),a
	ld c,d
	xor e
	ld b,0a7h
	ld (hl),c
	jp nc,l4440h
	cp b
	ld l,h
l58f9h:
	xor h
	cp d
	jp 0e1c3h
	ld b,h
	ld b,a
	rst 38h
	ld d,d
	xor (hl)
	ld e,c
	jp c,016b4h
	pop hl
	ld hl,003cch
	jp p,00da6h
	ld d,e
	ld l,l
	and h
	add hl,hl
	defb 0edh ;next byte illegal after ed
	call po,0da63h
	inc h
	sbc a,c
	xor d
	cp (hl)
	add a,a
	call nz,0c94dh
	ld h,(hl)
	inc c
	inc l
	inc c
	sbc a,l
	sbc a,l
	adc a,e
	dec l
	ld b,0cbh
	ld b,h
	push de
	call z,0cad6h
	pop bc
	ld b,a
	ld hl,(09180h)
	pop de
	jr c,l593ah
	cp (hl)
	call z,05cbdh
	ld c,c
l593ah:
	ld (hl),c
	or l
	ld b,(hl)
	sub c
	push de
	halt
	or d
	ld d,c
	scf
	and c
	rla
	ld c,c
	inc l
	call p,0ac46h
	ld hl,(0c869h)
	adc a,e
	jp 053c9h
	add a,b
	inc l
	ret p
	adc a,e
	ld c,b
	ld c,d
	push bc
	sbc a,e
	add hl,bc
	inc h
	xor h
	ld c,c
	jp nz,02852h
	ld d,e
	jp nz,004bbh
	adc a,d
	and h
	in a,(0b0h)
	daa
	ld bc,00354h
	call z,09900h
	rlca
	adc a,d
	ld (hl),c
	jp nc,0ad54h
	ret c
	jp po,0df94h
	ld b,(hl)
	rst 8
	inc l
	dec b
	rst 10h
	call pe,0cc9ch
	ld a,a
	and h
	inc (hl)
	xor l
	xor h
	inc d
	pop de
	or l
	ld (02be7h),hl
	inc c
	jp nc,02798h
	cp a
	sbc a,c
	add hl,de
	ret p
	sub c
	ld l,c
	dec hl
	adc a,a
	ld sp,hl
	sub l
	cp c
	rst 10h
	ld h,d
	call pe,096d5h
	jp (hl)
	inc sp
	sbc a,h
	ld d,b
	ex de,hl
	inc b
	ld e,h
	ld l,h
	defb 0ddh,00bh,091h ;illegal sequence
	ex af,af'
	nop
	rst 8
	ld b,l
	push af
	xor e
	sbc a,e
	ld b,e
	cp c
	jp pe,0c94dh
	xor d
	add hl,hl
	ld d,d
	ld c,l
	rst 38h
	jp p,0a025h
	ld l,l
	sbc a,a
	ld h,(hl)
	in a,(0c9h)
	jp z,00266h
	ld (hl),e
	add hl,hl
	adc a,c
	inc d
	pop hl
	ld c,c
	ld d,d
	ld h,l
	or (hl)
	djnz l5a1ch
	ld b,a
	ind
	or l
	ld a,(de)
	call z,091ddh
	defb 0fdh,06dh ;ld iyl,iyl
	ld c,d
	ld b,l
	xor h
	sbc a,(hl)
	ld sp,hl
	xor l
	halt
	call po,0f5a7h
	and 0d9h
	inc h
	or l
	ld c,e
	ld l,d
	and 00ch
	ld (0c00bh),hl
	sbc a,a
	adc a,e
	sbc a,c
	sub c
	cp a
	ld c,(hl)
	adc a,d
sub_59f8h:
	ret
	out (057h),a
	ld (01107h),hl
	inc l
	call pe,sub_77e4h
	sbc a,d
	dec d
	add hl,bc
	ld sp,09a48h
	ld l,d
	or e
	ld e,h
	ld (l72bah),a
	ld (0cf92h),hl
	call po,025f5h
	ld (bc),a
	ld c,(hl)
	ld h,b
	call pe,sub_59f8h
	sbc a,d
	ret
l5a1ch:
	ld l,l
	inc b
	adc a,b
	ld b,c
	ld l,b
	ld h,00eh
	add a,05ah
	ld e,c
	ld e,b
	sbc a,b
	ld e,b
	res 1,c
	inc d
	dec b
	ld h,a
	ex af,af'
	add a,c
	adc a,c
	and a
	dec d
	add hl,hl
	ret p
	push af
	rst 8
	ld c,(hl)
	call pe,0cfc9h
	and (hl)
	ld c,b
	sub 0c4h
	inc c
	ret
	call po,0d889h
	cp 08ah
	ld h,a
	inc bc
	push de
	halt
	or d
	dec hl
	add a,b
	add a,006h
	cp a
	add a,06bh
	ld h,a
	call 0250ch
	sbc a,a
	xor e
	ret po
	inc hl
	ret po
	ld h,(hl)
	ret nz
	ld b,(hl)
	jp pe,02bd0h
	add hl,bc
	add a,l
	ld (0d623h),a
	add hl,hl
	push bc
	ld b,a
	inc bc
	rst 0
	daa
	rst 28h
	call po,098d2h
	adc a,(hl)
	ld (hl),d
	call 005a4h
	adc a,(hl)
	ld d,h
	ld b,a
	pop af
	ld bc,02849h
	inc c
	dec b
	call nz,009abh
	and e
	ld (0cccah),hl
	jp (hl)
	jp po,0989ch
	ld l,b
	ld d,b
	call pe,0a149h
	adc a,b
	adc a,d
	dec bc
	dec a
	inc bc
	jp p,0eb15h
	ld a,d
	ld b,a
	or h
	cp c
	rst 8
	ld l,e
	ld e,l
	ld d,l
	jr z,l5ad9h
	cpl
	rl l
	ld d,b
	jp (hl)
	add a,(hl)
	cp d
	pop de
	ld b,e
	ld l,c
	ld c,b
	ld h,d
	ld l,d
	adc a,e
	push de
	add a,0fch
	xor e
	ld a,e
	ld b,l
	rst 20h
	rra
	ld e,c
	add a,l
	adc a,a
	dec d
	ld b,c
	adc a,b
	jp m,0aa29h
	ret p
	rst 8
	ld l,d
	ld a,d
	in a,(08ch)
	ld (hl),a
	or h
	adc a,h
	or h
	sbc a,e
	adc a,e
	sub c
	xor b
	add hl,hl
	dec bc
	ld h,0c6h
	ld h,0b0h
	and b
	ld c,b
	add hl,hl
	jp pe,0d4a5h
l5ad9h:
	ld sp,001ech
	ld a,(0fe69h)
	ld c,c
	rst 10h
	sbc a,b
	add a,a
	xor (hl)
	ld l,h
l5ae5h:
	cp d
	sub e
	xor (hl)
	ei
	ld l,d
	cp c
	ld c,h
	dec hl
	sbc a,l
	ld (hl),c
	ld b,b
	ld sp,hl
	ld hl,(02328h)
	ld b,c
	ld (l7198h),hl
	ld b,043h
	ret z
	ld h,009h
	ld l,d
	ld (hl),b
	xor b
	jr nc,l5b4bh
	adc a,a
	ld a,e
	ld c,l
	or h
	rst 8
	cp b
	adc a,c
	ret p
	xor a
	xor b
	ld l,b
	and l
	and b
	ld b,l
	add hl,bc
	ld d,b
	ld b,023h
	inc a
	cp (hl)
	exx
	ret
	sub 020h
	ld d,b
	dec l
	inc (hl)
	call pe,02925h
	xor e
	jp (hl)
	and a
	jp p,0f2a6h
	jp c,0b62fh
	add a,(hl)
	rlca
	ld b,(hl)
	ld (0deb0h),hl
	pop de
	ld (de),a
	ld h,(hl)
	ex de,hl
	ret po
	dec hl
	jr z,l5b6ch
	pop af
	inc (hl)
	jp po,l61a7h
	rst 20h
	jr z,l5ad9h
	daa
	jp pe,l6220h
	ld (bc),a
	adc a,a
	dec d
	pop de
	sub e
	cp (hl)
	ld d,d
	ld b,h
l5b4bh:
	inc d
	ld b,(hl)
	xor b
	xor l
	xor b
	and d
	sub c
	jp nc,032e5h
	ld h,h
	ld l,b
	sub h
	inc b
	or d
	ld c,b
	add hl,bc
	rst 0
	rst 20h
	inc b
	defb 0edh ;next byte illegal after ed
	ld h,(hl)
	ld b,0e0h
	cp b
	nop
	and l
	ld (bc),a
	djnz $+34
	defb 0ddh,027h,083h ;illegal sequence
l5b6ch:
	dec l
	ld b,b
	rst 38h
	ld b,b
	defb 0edh ;next byte illegal after ed
	ld h,026h
	xor d
	or h
	adc a,e
	xor 0e1h
	ld b,b
	inc bc
	ld bc,0ed24h
	ld b,l
	ld (bc),a
	call nc,045a2h
	ld e,h
	or b
	inc e
	ld b,h
	dec a
	defb 0edh ;next byte illegal after ed
	ld bc,08a9dh
	adc a,b
	jr nc,l5badh
	or d
	defb 0fdh,00bh,093h ;illegal sequence
	call m,0a2efh
	ld b,(hl)
	dec b
	add a,e
	ld h,h
	adc a,b
	ld a,(03402h)
	defb 0edh ;next byte illegal after ed
	nop
	call po,sub_4006h
l5ba2h:
	ex af,af'
	jp (hl)
	ld (bc),a
	ld h,0cch
	out (0eah),a
	inc h
	add hl,hl
	inc h
	inc h
l5badh:
	ld de,l4980h
	add a,b
	ret z
	sub 025h
	ld e,h
	ld a,092h
	ld (hl),l
	dec b
	add hl,hl
	and h
	and h
	ld b,l
	dec b
	inc (hl)
	inc hl
	jr nz,l5bcfh
	jp (hl)
	sub 0b4h
	push hl
	inc de
	xor d
	call nc,058ddh
	rst 8
	sub e
	ld e,c
	dec h
l5bcfh:
	ld l,l
	ld (hl),085h
	sub (hl)
	ld c,a
	dec b
	dec b
	sub c
	ld d,c
	add a,b
	ld d,c
	rlca
	ret p
	push bc
	rrca
	and c
	ld (de),a
	ld (bc),a
	xor a
	ld c,b
	and l
	and l
	rrca
	ld b,l
	ld (hl),b
	ld b,(hl)
	inc (hl)
	nop
	ret nc
	ret nz
	ld c,d
	inc bc
	ld (bc),a
	ret po
	ret po
	ld h,(hl)
	cpdr
	inc h
	inc b
	dec a
	add a,a
	sub b
	ld e,b
	jr c,l5c21h
	ld (0ed21h),a
	jr l5c2bh
	ld d,c
	ld c,b
	ld l,e
	pop af
	ld e,020h
	ld c,b
	ret nz
	sub c
	xor b
	add hl,hl
	adc a,b
	rlc h
	ld c,c
	defb 0edh ;next byte illegal after ed
	daa
	and h
	ld e,b
	inc a
	inc b
	adc a,d
	add a,a
	rst 18h
	ld hl,(l7a1ah)
	or d
	ret c
	or c
	ld c,e
l5c21h:
	ld b,l
	jp 0bdd8h
	ld d,(hl)
	jp pe,08422h
	xor d
	rla
l5c2bh:
	xor d
	ld d,d
	ld b,085h
	adc a,0adh
	inc h
	jr nz,l5c62h
	inc h
	ld (hl),h
	dec b
	sbc a,d
	call 0f31eh
	defb 0fdh,07ah,03fh ;illegal sequence
	add a,a
	ld hl,(01f20h)
	ld d,h
	ld h,(hl)
	daa
	ld h,0cfh
	ld h,l
	jp 08bach
	ld d,d
	jp z,08e48h
	defb 0edh ;next byte illegal after ed
	adc a,d
	ld a,e
	ld h,b
	ld b,b
	ld b,d
	or (hl)
	pop af
	dec b
	adc a,(hl)
	jr z,l5c7bh
	adc a,h
	jp po,08892h
	adc a,c
	ld c,(hl)
	cp b
l5c62h:
	and h
	or a
	and h
	ld a,(bc)
	add a,l
	sub h
	sub d
	adc a,h
	sbc a,h
	sub c
	add a,l
	ld b,0e4h
	djnz l5c71h
l5c71h:
	ld b,d
	ld b,0b8h
	rla
	add a,(hl)
	ld sp,hl
	call nz,0dc27h
	xor c
l5c7bh:
	out (016h),a
	ld sp,hl
	sub d
	rra
	rlca
	ld c,e
	ret
	ld b,c
	add a,d
	ld (de),a
	dec b
	ld a,(bc)
	ld h,(hl)
	adc a,(hl)
	ret z
	xor e
	or h
	sbc a,(hl)
	exx
	sub h
	ld l,b
	sbc a,c
	inc d
	dec d
	ld h,08bh
	and c
	ld b,h
	inc h
	call pe,0c6aah
	add hl,de
	cp a
	ld a,l
	sbc a,(hl)
	ld a,(bc)
	ld (0e224h),hl
	set 1,d
	ld e,b
	adc a,h
	ret nz
	dec b
	add a,b
	ld h,b
	ld h,0a2h
	ld (de),a
	jp c,l5ba2h
	sub h
	ld h,(hl)
	dec b
	or 0d4h
	ld a,008h
	inc a
	xor b
l5cbbh:
	sbc a,h
	call nz,0d98ah
	ret c
	ld (hl),03fh
	or h
	push af
	cp e
	jp z,01118h
	ld b,b
	rst 0
	ld d,l
	djnz $-48
	ld l,b
	adc a,l
	ld b,b
	ld d,(hl)
	ld b,b
	dec c
	inc hl
	ld b,e
	ld b,(hl)
	adc a,(hl)
	ld h,d
	ld e,c
	inc hl
	ld d,(hl)
	call z,sub_4f31h
	cp d
	jp nc,09241h
	ld h,l
	inc h
	inc h
	nop
	ld (hl),l
	ld d,h
	inc b
	djnz $-9
	sbc a,d
	pop bc
	adc a,b
	ld c,b
	or b
	and h
	or 0ach
	push af
	call p,0b3beh
	exx
	ld a,(de)
	inc c
	inc hl
	defb 0edh ;next byte illegal after ed
	inc a
	sub d
	ld c,0a8h
	dec a
	ld hl,0c935h
	jr nz,l5cbbh
	ld h,0d8h
	ld h,l
	jr nz,$+117
	rla
	and d
	inc h
	pop de
	sub c
	and l
	ld b,l
	jp p,02954h
	ld (bc),a
	and b
	ld (de),a
	ldir
	sub (hl)
	ld bc,044c1h
	dec b
	ld (02433h),hl
	and h
	or a
	ld (02548h),a
	ld e,a
	ld e,b
	and l
	inc sp
	ret nc
	daa
	cp l
	ld d,l
	ld bc,0a91ah
	call po,04a92h
	inc b
	jp z,02a4ah
	ccf
	sub h
	ld (hl),b
	jr nz,$+88
	ld e,e
	jr z,l5d85h
	inc h
	xor b
	ld (bc),a
	adc a,c
	sub d
	nop
	ld b,b
	dec h
	ld h,(hl)
	call c,0aa28h
	adc a,c
	sbc a,d
	ld b,b
	call c,0cc34h
	sub (hl)
	ret m
	or b
	ld hl,00440h
	ld b,b
	adc a,d
	or b
	or h
	ld c,d
	jr nc,l5dd5h
	sbc a,d
	or b
	ld b,b
	or h
	sub l
	ld d,h
	xor c
	ld a,(de)
	ld hl,(091bch)
	and h
	ld d,(hl)
	ret po
	ld c,d
	ret c
	ld b,h
	ld a,a
	nop
	ld b,l
	xor l
	ld b,l
	inc bc
	dec h
	sbc a,d
	dec d
	ret z
	sub c
	call 0488ah
	add a,e
	ld c,d
	call p,0d624h
	sbc a,h
l5d85h:
	push hl
	adc a,l
	adc a,(hl)
	adc a,d
	sbc a,e
	jp m,03d2ah
l5d8dh:
	sbc a,h
	ld l,d
	jp nc,09849h
	jp po,0b6f9h
	xor e
	ld (0b2d2h),a
	sbc hl,de
	halt
	and d
	ld b,c
	call p,0da9ch
	sub d
	add a,d
	jp nc,l4968h+2
	ld sp,0c28ah
	ld (de),a
	ld d,h
	daa
	ld a,e
	ld c,e
	or 053h
	ld a,(de)
	ld b,(hl)
	adc a,e
	call sub_46e7h
	ld h,0a8h
	ld h,d
	ld (bc),a
	xor h
	ld l,d
	sub b
	push bc
	rlca
	or l
	inc de
	jp (hl)
	ld (09422h),hl
	sbc a,h
	sub d
	call nz,09485h
	sbc a,b
	and h
	sbc a,l
	adc a,d
	and c
	sub d
	or d
	ld d,d
	call nc,0a9b1h
l5dd5h:
	ex af,af'
	ld e,l
	and (hl)
	add hl,hl
	ld c,b
	jp p,02155h
	ld c,e
	exx
	add hl,de
	jp 0cb75h
	dec b
	defb 0edh ;next byte illegal after ed
	inc h
	ld sp,hl
	inc c
	ld h,09fh
	ret c
	sub c
	sub d
	ld b,(hl)
	sbc a,(hl)
	inc h
	ld h,a
	rra
	jr nz,l5d8dh
	call po,09990h
	add a,d
	ld e,d
	xor b
	ld h,(hl)
	xor b
	call nc,sub_5853h
	xor a
	push hl
	ld l,h
	jp 00459h
	sbc a,e
	and c
	sub a
	sub b
	sub c
	ret nz
	ld b,(hl)
	in a,(023h)
	ld h,0d9h
	add hl,de
	jr z,l5e77h
	xor l
	add hl,hl
	xor h
	add hl,sp
	dec d
	add hl,hl
	ld b,(hl)
	adc a,l
	daa
	sub c
	add hl,hl
	ld b,h
	add hl,de
	ld h,0ach
	dec d
	sbc a,h
	exx
	jp nz,03799h
	ld h,(hl)
	or (hl)
	rst 0
	adc a,d
	ld (bc),a
	jp nz,l4aa9h
	ld l,h
	ld c,b
	dec hl
	ld l,l
	or a
	jp c,l78a5h
	ld a,(de)
	ld d,l
	add hl,sp
	adc a,h
	sub e
	and h
	ld d,l
	jr nz,$+35
	ld b,d
	and b
	dec sp
	ret nc
	add hl,sp
	cp (hl)
	ld e,c
	or b
	ld c,c
	add a,a
	ld c,c
	add a,l
	dec d
	adc a,b
	and l
	or (hl)
	dec h
	rlca
	sbc a,l
	add a,l
	ld l,(hl)
	ld (hl),a
	ld d,d
	dec bc
	ld e,e
	nop
	dec hl
	and (hl)
	add hl,hl
	and a
	pop hl
	ld sp,hl
	ld bc,(0a976h)
	add a,082h
	add hl,hl
	ld l,b
	and e
	ld l,h
	ld a,c
sub_5e6ch:
	ld a,(09194h)
	ld d,e
	jr z,l5eb8h
	jp z,0c84dh
	and c
	dec d
l5e77h:
	sub h
	dec h
	rst 18h
	sub h
	xor e
	sub h
	sub h
	sub d
	rst 8
	adc a,d
	inc bc
	dec b
	and b
	ld (hl),d
	add a,e
	ld c,c
	sbc a,(hl)
	ld b,(hl)
	ld b,b
	add a,025h
	defb 0edh ;next byte illegal after ed
	and h
	jp c,02063h
	ld (hl),d
	dec h
	sub (hl)
	dec h
	sbc a,h
	daa
	push de
	inc e
	ld h,09ah
	ld d,c
	adc a,e
	dec c
	ld e,b
	ld b,a
	xor b
	sub l
	ret c
	ld b,(hl)
	add a,h
	ld c,(hl)
	or l
	ld de,l4508h
	ei
	ld d,h
	dec a
	ld d,a
	and 0abh
	defb 0edh ;next byte illegal after ed
	in a,(017h)
	jr l5ee7h
	rra
	sbc a,e
	inc h
l5eb8h:
	ld l,b
	call c,0f7eeh
	ld (0e004h),hl
	ld d,c
	add a,b
	ld b,058h
	ld h,e
	ld e,d
	inc hl
	adc a,d
	add a,e
	sub d
	add hl,hl
	and e
	xor b
	ld (hl),b
	ret nc
	cp e
	rl d
	nop
	or d
	ld d,l
	ld h,c
	call p,08e93h
	sbc a,c
	jr nc,$+124
	cpl
	ld b,b
	call nc,00055h
	di
	or a
	or 095h
	ld h,l
	ld l,09bh
l5ee7h:
	ld a,e
	rst 0
	ld d,h
	jp po,09d93h
	ld c,b
	ld c,b
	nop
	jp nc,0bbcch
	ld e,l
	adc a,0a4h
	sub a
	or c
	inc bc
	sub (hl)
	inc hl
	ld l,(hl)
	inc bc
	add hl,hl
	sbc a,l
	jr nc,l5f49h
	ld (bc),a
	and h
	rst 38h
	ret z
	ld l,(hl)
	pop bc
	ret
	ret po
	ld c,b
	pop bc
	xor c
	add a,h
	dec l
	adc a,c
l5f0fh:
	inc h
	add a,l
	and l
	ld b,0b9h
	ld sp,l69a6h
	ld h,(hl)
	ret pe
	and h
	ld e,a
	ld h,09dh
	and (hl)
	ld d,c
	ld b,l
	xor e
	ld a,a
	ld l,d
	and c
	call 08581h
	ld l,c
	sub d
	ld (0ce47h),hl
	adc a,e
	and (hl)
	and h
	defb 0ddh,0a2h,0f3h ;illegal sequence
	ld (hl),h
	adc a,e
	cp a
	or e
	ld (l52c7h),a
	defb 0fdh,0e8h,0f4h ;illegal sequence
	ret
	add a,d
	ld c,c
	and c
	xor c
	add hl,bc
	and e
	ld (0bca2h),hl
	defb 0ddh,08ah,0a0h ;illegal sequence
l5f49h:
	and l
	ld d,(hl)
	ld e,a
	ld d,e
	ld b,01ch
	defb 0fdh,092h,0cdh ;illegal sequence
	ld l,b
	adc a,d
	ld hl,0d38bh
	call nz,08852h
	ld d,d
l5f5bh:
	dec hl
	adc a,e
	adc a,(hl)
	ld e,036h
	ld a,(hl)
	sub d
	ld c,e
	dec b
	xor a
	dec hl
	and a
	inc hl
	or 029h
	ld d,d
	sbc a,(hl)
	xor b
	cp h
	xor l
	or c
	or h
	cp 094h
	add a,d
	adc a,d
	ex (sp),hl
	and b
	pop af
	ld b,(hl)
	sub (hl)
	ld d,0f9h
	ld h,d
	ld l,b
	adc a,e
	jp nc,0d42eh
	or l
	jp m,0f2a9h
	adc a,0ech
	ld e,c
	xor d
	jp z,0cf74h
	inc sp
	ld c,b
	inc sp
	adc a,(hl)
	inc h
	inc e
	inc h
	jp (hl)
	ld d,e
	push bc
	adc a,h
	ld h,l
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
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
	jr nz,l6058h
	ld h,l
	halt
	ld h,l
	ld l,h
	jr nz,l6045h
	jr nz,$+47
	jr nz,l606ah
	ld l,b
	ld h,l
	jr nz,l605eh
	ld h,l
	ld (hl),e
	ld h,e
	ld h,l
	ld l,(hl)
	ld h,h
	jr nz,l6042h
	jr nz,l6044h
	jr nz,l6046h
	jr nz,l6048h
	jr nz,l604ah
	jr nz,l604ch
	jr nz,l604eh
	jr nz,l6050h
	jr nz,$+34
	jr nz,l6054h
	jr nz,l6056h
	jr nz,l6058h
	jr nz,$+34
l603ah:
	jr nz,l605ch
	jr nz,l605eh
	jr nz,l6060h
	jr nz,l6062h
l6042h:
	jr nz,l6091h
l6044h:
	ld d,l
l6045h:
	ld d,e
l6046h:
	ld c,c
	ld c,(hl)
l6048h:
	ld d,e
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
	nop
	ld bc,00302h
l6054h:
	inc b
	dec b
l6056h:
	ld b,007h
l6058h:
	ex af,af'
	ld bc,00302h
l605ch:
	inc b
	dec b
l605eh:
	ld b,007h
l6060h:
	ex af,af'
	add hl,bc
l6062h:
	ld a,(bc)
	dec bc
	inc c
	dec c
	ld c,00fh
	djnz l6073h
l606ah:
	ld a,(bc)
	dec bc
	inc c
	dec c
	ld c,00fh
	djnz l6083h
	ld (de),a
l6073h:
	inc de
	inc d
	dec d
	ld d,017h
	jr l6093h
	ld a,(de)
	dec de
	inc e
	dec e
	ld e,01fh
	jr nz,l6082h
l6082h:
	nop
l6083h:
	nop
	nop
	nop
	nop
	nop
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
l6093h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld sp,0171ch
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
l61a7h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l6220h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	ld (de),a
	rrca
	ld (hl),004h
	nop
	nop
	inc l
	ld a,(bc)
	dec h
	rlca
	dec b
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	ld h,e
	djnz $+105
	ld (bc),a
	nop
	add hl,de
	dec c
	rrca
	ld sp,00004h
	nop
	ld sp,02a0ah
	rlca
	inc bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	ld l,d
	ld bc,01900h
	inc d
	rrca
	jr c,l62b8h
	nop
	nop
	nop
	nop
l62b8h:
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
	dec c
	rrca
	ld sp,00004h
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	dec b
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
	add hl,de
	rrca
	dec a
	inc b
	nop
	nop
	cpl
	ld a,(bc)
	dec h
	rlca
	inc bc
	rla
	ld l,h
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
	rla
	dec c
	rrca
	ld sp,00004h
	nop
	ld l,00ah
	inc l
l6301h:
	rlca
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
	inc d
	rrca
	jr c,l6318h
	nop
	nop
	ld h,a
	ld (bc),a
l6318h:
	ld h,a
	ld (bc),a
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
	dec c
	rrca
	ld sp,00004h
	nop
	nop
	nop
	nop
	nop
	dec b
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
	rla
	rrca
	dec sp
	inc b
	nop
	nop
	ld sp,0250ah
	rlca
	ld (bc),a
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	ld h,e
	djnz l63b8h
	djnz l6357h
l6357h:
	add hl,de
	dec c
	rrca
	ld sp,00004h
	nop
	ld (hl),00ah
	ld sp,00307h
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
	ld a,(00004h)
	nop
	ld h,a
	ld bc,00167h
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
	dec c
	rrca
	ld sp,00004h
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
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	jr c,l63a8h
	nop
	nop
	jr c,l63b2h
l63a8h:
	ld sp,00307h
	rla
	ld l,h
	rlca
	ld l,h
	rlca
	nop
	nop
l63b2h:
	nop
	nop
	nop
	nop
	inc bc
	rla
l63b8h:
	dec c
	rrca
	ld sp,00004h
	nop
	ld a,(0360ah)
	rlca
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
	ld (de),a
	rrca
	ld (hl),004h
	nop
	nop
	dec sp
	ld a,(bc)
	jr c,l63e1h
	dec b
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
l63e1h:
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	ld sp,00004h
	nop
	nop
	nop
	nop
	nop
	dec b
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
	inc d
	rrca
	jr c,l6408h
	nop
	nop
	nop
	nop
l6408h:
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
	dec c
	rrca
	ld sp,00004h
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	nop
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
	dec c
	rrca
	ld sp,00004h
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
	dec c
	rrca
	ld sp,00004h
	nop
	nop
	nop
	nop
	nop
	dec b
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
	djnz l6471h
	inc (hl)
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	rlca
	ld l,h
	rlca
	nop
l6471h:
	nop
	nop
	nop
	nop
	nop
	inc bc
	rla
	dec c
	rrca
	ld sp,00004h
	nop
	dec a
	ld a,(bc)
	inc (hl)
	rlca
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
	ld (de),a
	rrca
	ld (hl),004h
	nop
	nop
	dec sp
	ld a,(bc)
	inc sp
	rlca
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
	dec c
	rrca
	ld sp,00004h
	nop
	ld a,(0310ah)
	rlca
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
	inc sp
	inc b
	nop
	nop
	dec sp
	ld a,(bc)
	inc sp
	rlca
	inc bc
	rla
	ld l,h
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
	rla
	djnz l64e9h
	inc (hl)
	inc b
	nop
	nop
	ld a,(0340ah)
	rlca
	inc bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
l64e9h:
	nop
	ld h,a
	ld (bc),a
	ld l,h
	add hl,bc
	nop
	add hl,de
	dec bc
	rrca
	cpl
	inc b
	nop
	nop
	jr c,l6502h
	inc (hl)
	rlca
	ld (bc),a
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
l6502h:
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	jr z,l6510h
	nop
	nop
	nop
	nop
l6510h:
	nop
	nop
	inc bc
	ld d,06ch
	rlca
	ld l,h
l6517h:
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	djnz l6531h
	inc (hl)
	inc b
	nop
	nop
	inc (hl)
	ld a,(bc)
	cpl
	rlca
	inc bc
	rla
	ld l,h
	rlca
	ld l,h
	rlca
	nop
l6531h:
	nop
	nop
	nop
	nop
	nop
	inc bc
	rla
	rrca
	rrca
	inc sp
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
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld c,00fh
	ld (00004h),a
	nop
	ld h,a
	ld bc,00167h
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
	dec bc
	rrca
	cpl
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld (de),a
	rrca
	ld (hl),004h
	nop
	nop
	jr c,l6592h
	ld sp,00507h
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
l6592h:
	ld l,h
	rlca
	ld l,h
	rlca
	nop
	add hl,de
	dec c
	rrca
	ld sp,00004h
	nop
	jr c,l65aah
	ld sp,00307h
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
l65aah:
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	jr c,l65b8h
	nop
	nop
	nop
	nop
l65b8h:
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
	dec c
	rrca
	ld sp,00004h
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	dec b
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
	add hl,de
	rrca
	dec a
	inc b
	nop
	nop
	inc l
	ld a,(bc)
	cpl
	rlca
	inc bc
	rla
	ld l,h
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
	rla
	dec c
	rrca
	ld sp,00004h
	nop
	jr c,l660ah
	ld sp,00307h
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
l660ah:
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	jr c,l6618h
l6614h:
	nop
	nop
	ld h,a
	ld (bc),a
l6618h:
	ld h,a
	ld (bc),a
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
	dec c
	rrca
	ld sp,00004h
	nop
	nop
	nop
	nop
	nop
	dec b
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
	rla
	rrca
	dec sp
	inc b
	nop
	nop
	ld sp,0340ah
	rlca
	ld (bc),a
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	ld h,e
	djnz l66b8h
	djnz l6657h
l6657h:
	add hl,de
	dec c
	rrca
	ld sp,00004h
	nop
	ld (hl),00ah
	dec sp
	rlca
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
	ld a,(00004h)
	nop
	ld h,a
	ld bc,00167h
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
	dec c
	rrca
	ld sp,00004h
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
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc d
	rrca
	jr c,l66a8h
	nop
	nop
	jr c,l66b2h
l66a8h:
	inc sp
	add hl,bc
	inc bc
	rla
	ld l,h
	rlca
	ld l,h
	rlca
	nop
	nop
l66b2h:
	ld l,h
	rlca
	ld l,h
	rlca
	inc bc
	rla
l66b8h:
	dec c
	rrca
	ld sp,00004h
	nop
	jr c,l66cah
	inc (hl)
	add hl,bc
	inc bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
l66cah:
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld (de),a
	rrca
	ld (hl),004h
	nop
	nop
	ccf
	ld a,(bc)
	ld (hl),009h
	dec b
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
	dec c
	rrca
	ld sp,00004h
	nop
	ld h,a
	ld bc,00167h
	dec b
	rla
	ld l,h
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
	rla
	inc d
	rrca
	jr c,l6708h
	nop
	nop
	nop
	nop
l6708h:
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
	dec c
	rrca
	ld sp,00004h
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
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	ld sp,00004h
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
	dec c
	rrca
	ld sp,00004h
	nop
	nop
	nop
l6750h:
	nop
	nop
	dec b
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
	djnz l6771h
	inc (hl)
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	rla
	ld l,h
	rlca
	ld l,h
	rlca
	nop
l6771h:
	nop
	nop
	nop
	nop
	nop
sub_6776h:
	inc bc
	rla
	dec c
	rrca
	ld sp,00004h
	nop
	dec a
	ld a,(bc)
	jr c,l678bh
	inc bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
l678bh:
	nop
	nop
	nop
	nop
	add hl,de
	ld (de),a
	rrca
	ld (hl),004h
	nop
	nop
	dec sp
	ld a,(bc)
	ld (hl),009h
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
	dec c
	rrca
	ld sp,00004h
	nop
	ld a,(0310ah)
	add hl,bc
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
	inc sp
	inc b
	nop
	nop
	dec a
	ld a,(bc)
	ld (hl),009h
	inc bc
	rla
	ld l,h
	rlca
	ld l,h
	rlca
	nop
	nop
	ld h,e
	ld (bc),a
	ld h,e
	ld (bc),a
	inc bc
	rla
	djnz l67e9h
	inc (hl)
	inc b
	nop
	nop
	dec sp
	ld a,(bc)
	inc (hl)
	add hl,bc
	inc bc
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
l67e9h:
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec bc
	rrca
	cpl
	inc b
	nop
	nop
	ld a,(0330ah)
	add hl,bc
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
	inc b
	rrca
	jr z,l6810h
	nop
	nop
	ld (hl),00ah
l6810h:
	cpl
	add hl,bc
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
	djnz l6831h
	inc (hl)
	inc b
	nop
	nop
	inc (hl)
	ld a,(bc)
	inc l
	add hl,bc
	inc bc
	rla
	ld l,h
	rlca
	ld l,h
	rlca
	nop
l6831h:
	nop
	nop
	nop
	nop
	nop
	inc bc
	rla
	rrca
	rrca
	inc sp
	inc b
	nop
	nop
	ld h,a
	ld bc,00167h
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
	ld c,00fh
	ld (00004h),a
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
	dec bc
	rrca
	cpl
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	ld d,06ch
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	ld h,e
	ld d,000h
	add hl,de
	dec c
	rrca
	dec h
	ex af,af'
	jr c,l6892h
	ld h,d
	dec (hl)
	ld h,e
	inc d
	ld bc,l6c16h
	rlca
	ld h,d
	jr nc,l68f2h
	nop
l6892h:
	nop
	nop
	ld h,e
	nop
	nop
	add hl,de
	dec c
	rrca
	inc hl
	ex af,af'
	jr c,l68a6h
	jr c,l68aah
	nop
	nop
	dec b
	ld d,06ch
	rlca
l68a6h:
	ld h,d
	cpl
	ld h,c
	nop
l68aah:
	nop
	nop
	ld l,h
	ld bc,01900h
	dec c
	rrca
	ld (03808h),hl
	ex af,af'
	ld (hl),00ah
	nop
	nop
	add hl,bc
	ld d,06ch
	rlca
	ld h,d
	ld l,061h
	nop
	nop
	nop
	ld l,h
	ld bc,01900h
	dec c
	rrca
	ld (03808h),hl
	ld b,038h
	ld a,(bc)
	nop
	nop
	ld bc,l6c16h
	rlca
	ld h,d
	dec l
	ld h,c
	nop
	nop
	nop
	ld l,h
	ld bc,01900h
	dec c
	rrca
	ld (03808h),hl
	inc b
	dec a
	ld a,(bc)
	nop
	nop
	ld (bc),a
	ld d,06ch
	rlca
	ld h,d
	inc l
	ld h,c
	nop
l68f2h:
	nop
	nop
	ld l,h
	ld bc,01900h
	dec c
	rrca
	dec h
	ex af,af'
	jr c,l6900h
	nop
	nop
l6900h:
	nop
	nop
	add hl,bc
	rla
	ld l,h
	rlca
	ld h,d
	dec hl
	ld h,c
	nop
	ld h,a
	ld bc,0016ch
	add hl,bc
	rla
	dec c
	rrca
	ld (00007h),hl
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld d,06ch
	rlca
	ld h,d
	ld hl,(00000h)
	nop
	nop
	ld h,c
	nop
l6926h:
	nop
	add hl,de
	dec c
	rrca
	inc hl
	ld b,000h
	nop
	jr z,l6936h
	jr c,l693ch
	ld (bc),a
	ld d,06ch
	rlca
l6936h:
	ld h,d
	add hl,hl
	nop
	nop
	nop
	nop
l693ch:
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	jr nz,l6949h
	nop
	nop
	daa
	ld b,036h
l6949h:
	ld a,(bc)
	ld bc,l6c16h
	rlca
	ld h,d
	jr z,l6951h
l6951h:
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	inc hl
	dec b
	nop
	nop
	jr z,l6966h
	jr c,l696ch
	dec b
	ld d,06ch
	rlca
l6966h:
	ld h,d
	daa
	nop
	nop
	nop
	nop
l696ch:
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	ld (02a04h),hl
	ld a,(bc)
	dec h
	ld b,03dh
	ld a,(bc)
	ld (bc),a
	ld d,06ch
	rlca
	ld h,d
	daa
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	ld (02c04h),hl
	ld a,(bc)
	nop
	nop
	nop
	nop
	add hl,bc
	rla
	ld l,h
	rlca
	ld h,d
	jr z,l69fah
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	rla
	ex af,af'
	rrca
	dec de
	dec b
	cpl
	ld a,(bc)
l69a6h:
	ld h,a
	ld bc,00167h
	inc bc
	ld d,06ch
	rlca
	ld h,d
	add hl,hl
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	ld d,005h
	ld l,00ah
	nop
	nop
	nop
	nop
	dec b
	ld d,06ch
	rlca
	ld h,d
	ld hl,(00061h)
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	add hl,de
	ld b,02ch
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	ld d,06ch
	rlca
	ld h,d
	dec hl
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	dec de
	ld b,02ah
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld bc,l6c16h
	rlca
	ld h,d
	dec l
	ld h,c
	nop
l69fah:
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	dec h
	rlca
	inc sp
	inc c
	ld sp,l6c0ah
	ld bc,01601h
	ld l,h
	rlca
	ld h,d
	dec l
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	inc hl
	rlca
	inc sp
	ld a,(bc)
	inc sp
	ld a,(bc)
	nop
	nop
	dec b
	ld d,06ch
	rlca
	ld h,d
	ld l,061h
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	ld (03308h),hl
	ex af,af'
	nop
	nop
	nop
	nop
	add hl,bc
	ld d,06ch
	rlca
	ld h,d
	cpl
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	ld (03308h),hl
	ld b,034h
	ld a,(bc)
	nop
	nop
	ld bc,l6c16h
	rlca
	ld h,d
	jr nc,l6abah
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	dec h
	ex af,af'
	inc sp
	inc b
	nop
	nop
	nop
	nop
	ld (bc),a
	ld d,06ch
	rlca
	ld h,d
	cpl
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	inc hl
	ex af,af'
	inc sp
	ld (bc),a
	jr c,l6a8ah
	nop
	nop
	add hl,bc
	ld d,06ch
	rlca
	ld h,d
	ld l,061h
	nop
l6a8ah:
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	ld (00008h),hl
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	ld d,06ch
	rlca
	ld h,d
	dec l
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	ld (00008h),hl
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	rla
	ld l,h
	rlca
	ld h,d
	dec l
	nop
	nop
l6abah:
	nop
	nop
	nop
	nop
	ex af,af'
	rla
	inc b
	rrca
	dec h
	ex af,af'
	ld hl,(03f0bh)
	ld a,(bc)
	ld l,h
	ld bc,01602h
	ld l,h
	rlca
	ld h,d
	add hl,hl
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	daa
	ex af,af'
	inc l
	inc c
	nop
	nop
	nop
	nop
	ld (bc),a
	ld d,06ch
	rlca
	ld h,d
	dec hl
	ld h,c
	nop
	nop
sub_6aebh:
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	inc hl
	ex af,af'
	inc l
	ld a,(bc)
	ld b,b
	ld a,(bc)
	nop
	nop
	add hl,bc
	ld d,06ch
	rlca
	ld h,d
	dec l
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	ld (02c08h),hl
	ex af,af'
	dec a
	ld a,(bc)
	nop
	nop
	ex af,af'
	rla
	ld l,h
	rlca
	ld h,d
	cpl
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	rla
	inc b
	rrca
	dec h
	ex af,af'
	inc l
	ld b,000h
	nop
	nop
	nop
	ld (bc),a
	ld d,06ch
	rlca
	ld h,d
	jr nc,l6b92h
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	inc hl
	ex af,af'
	inc l
	inc b
	ld h,a
	ld bc,00000h
	ld (bc),a
	ld d,06ch
	rlca
	ld h,d
	ld l,061h
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	ld (02c08h),hl
	ld (bc),a
	nop
	nop
	nop
	nop
	inc bc
	ld d,06ch
	rlca
	ld h,d
	inc l
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	ld e,008h
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	rla
	ld l,h
	rlca
	ld h,d
	ld hl,(00000h)
	nop
	nop
	nop
	nop
	ex af,af'
	nop
	dec c
	rrca
	dec h
	ex af,af'
	jr c,l6b92h
	ld h,c
	nop
	ld h,c
	nop
	ld bc,l6c16h
	rlca
	ld h,d
	jr nc,l6bf2h
	nop
l6b92h:
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	inc hl
	ex af,af'
	jr c,l6ba8h
	jr c,l6baah
	nop
	nop
	dec b
	ld d,06ch
	rlca
	ld h,d
	cpl
l6ba8h:
	ld h,c
	nop
l6baah:
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	ld (03808h),hl
	ex af,af'
	ld (hl),00ah
	nop
	nop
	add hl,bc
	ld d,06ch
	rlca
	ld h,d
	ld l,061h
	nop
	nop
	nop
	nop
	nop
	add hl,bc
	add hl,de
	dec c
	rrca
	ld (03808h),hl
	ld b,038h
	ld a,(bc)
	nop
	nop
	ld bc,l6c16h
	rlca
	ld h,d
	dec l
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	ld (03808h),hl
	inc b
	dec a
	ld a,(bc)
	nop
	nop
	ld (bc),a
	ld d,06ch
	rlca
	ld h,d
	inc l
	ld h,c
	nop
l6bf2h:
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	dec h
	ex af,af'
	jr c,l6c00h
	nop
	nop
l6c00h:
	nop
	nop
	add hl,bc
	rla
	ld l,h
l6c05h:
	rlca
	ld h,d
	dec hl
	ld h,c
l6c09h:
	nop
l6c0ah:
	ld h,a
	ld bc,00000h
	add hl,bc
	rla
	dec c
	rrca
	ld (00007h),hl
	nop
l6c16h:
	nop
	nop
	nop
	nop
	inc bc
	ld d,06ch
	rlca
	ld h,d
	ld hl,(00000h)
	nop
l6c23h:
	nop
l6c24h:
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	inc hl
	ld b,000h
	nop
	jr c,l6c33h
	nop
	nop
	ld (bc),a
l6c33h:
	ld d,06ch
	rlca
	ld h,d
	add hl,hl
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	jr nz,l6c49h
	nop
	nop
	ld sp,03606h
l6c49h:
	ld a,(bc)
	ld bc,l6c16h
	rlca
	ld h,d
	jr z,l6c51h
l6c51h:
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	inc hl
	dec b
	nop
	nop
	cpl
	ld b,034h
	ld a,(bc)
	dec b
	ld d,06ch
	rlca
	ld h,d
	daa
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	ld (02a04h),hl
	ld a,(bc)
	inc l
	ld b,033h
	ld a,(bc)
	ld (bc),a
	ld d,06ch
	rlca
	ld h,d
	daa
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	ld (02c04h),hl
	ld a,(bc)
	cpl
	ld b,034h
	ld a,(bc)
	add hl,bc
	ld d,06ch
	rlca
	ld h,d
	jr z,l6cfah
	nop
	ld h,e
	ld (bc),a
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	dec de
	dec b
	cpl
	ld a,(bc)
	nop
	nop
	nop
	nop
	add hl,bc
	ld d,06ch
	rlca
	ld h,d
	add hl,hl
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	ld d,005h
	ld l,00ah
	jr c,l6cc6h
	inc sp
	ld a,(bc)
	dec b
	ld d,06ch
	rlca
l6cc6h:
	ld h,d
	ld hl,(00061h)
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	add hl,de
	ld b,02ch
	ld a,(bc)
	ld h,a
	inc b
	nop
	nop
	ld (bc),a
	ld d,06ch
	rlca
	ld h,d
	dec hl
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ex af,af'
	rrca
	dec de
	ld b,02ah
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld bc,l6c16h
	rlca
	ld h,d
	dec l
	ld h,c
	nop
l6cfah:
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	dec h
	rlca
	inc sp
	inc c
	inc (hl)
	ld a,(bc)
	ld b,b
	inc bc
	ld bc,l6c16h
	rlca
	ld h,d
	dec l
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	inc hl
	rlca
	inc sp
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld bc,l6c16h
	rlca
	ld h,d
	ld l,061h
	nop
	ld h,a
	ld bc,00167h
	nop
	add hl,de
	inc b
	rrca
	ld (03308h),hl
	ex af,af'
	nop
	nop
	nop
	nop
	inc bc
	ld d,06ch
	rlca
	ld h,d
	cpl
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	ld (03308h),hl
	ld b,000h
	nop
	nop
	nop
	ld bc,l6c16h
	rlca
	ld h,d
	jr nc,l6dbah
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	dec h
	ex af,af'
	inc sp
	inc b
	inc sp
	ld a,(bc)
	ccf
	inc bc
	ld (bc),a
	ld d,06ch
	rlca
	ld h,d
	cpl
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	inc hl
	ex af,af'
	inc sp
	ld (bc),a
	nop
	nop
	nop
	nop
	add hl,bc
	ld d,06ch
	rlca
	ld h,d
	ld l,061h
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	ld (00008h),hl
	nop
	cpl
	ld a,(bc)
	dec sp
	inc bc
	ex af,af'
	ld d,06ch
	rlca
	ld h,d
	dec l
	nop
	nop
	ld h,a
	ld bc,00167h
	nop
	add hl,de
	inc b
	rrca
	ld (00008h),hl
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	ld d,06ch
	rlca
	ld h,d
	dec l
	nop
	nop
l6dbah:
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	dec h
	ex af,af'
	ld hl,(0000bh)
	nop
	nop
	nop
	ld (bc),a
	ld d,06ch
	rlca
	ld h,d
	add hl,hl
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	daa
	ex af,af'
	inc l
	inc c
	nop
	nop
	nop
	nop
	ex af,af'
	rla
	ld l,h
	rlca
	ld h,d
	dec hl
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ex af,af'
	rla
	inc b
	rrca
	inc hl
	ex af,af'
	inc l
	ld a,(bc)
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld (bc),a
	ld d,06ch
	rlca
	ld h,d
	dec l
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	ld (02c08h),hl
	ex af,af'
	nop
	nop
	nop
	nop
	dec b
	ld d,06ch
	rlca
	ld h,d
	cpl
	ld h,c
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	dec h
	ex af,af'
	inc l
	ld b,031h
	ld a,(bc)
	dec a
	inc bc
	ld (bc),a
	ld d,06ch
	rlca
	ld h,d
	jr nc,l6e92h
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	inc hl
	ex af,af'
	inc l
	inc b
	inc sp
	ld a,(bc)
	ccf
	inc bc
	ld (bc),a
	ld d,06ch
	rlca
	ld h,d
	ld l,061h
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	inc b
	rrca
	ld (02c08h),hl
	ld (bc),a
	nop
	nop
	nop
	nop
	ex af,af'
	rla
	ld l,h
	rlca
	ld h,d
	inc l
	ld h,c
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ex af,af'
	rla
	inc b
	rrca
	ld e,008h
	nop
	nop
	ld h,d
	dec h
	nop
	nop
	ld (bc),a
	ld d,06ch
	rlca
	ld h,d
	ld hl,(00000h)
	cpl
	rlca
	cpl
	dec bc
	nop
	add hl,de
	dec c
	rrca
	jr c,l6e89h
	nop
	nop
	ld sp,l6c09h
l6e89h:
	ld (bc),a
	ld bc,l6c16h
	rlca
	nop
	nop
	nop
	nop
l6e92h:
	nop
	nop
	ld l,h
	ld (bc),a
	nop
	add hl,de
	dec c
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	inc bc
	ld d,06ch
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	dec h
	dec b
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
	ld sp,00505h
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
	add hl,de
	ld (de),a
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
	ld d,06ch
	rlca
	ld (hl),005h
	nop
	nop
	inc sp
	add hl,bc
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	jr c,l6ee9h
	nop
	nop
	inc (hl)
	add hl,bc
	nop
l6ee9h:
	nop
	ld (bc),a
	ld d,06ch
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
	add hl,bc
	ld d,000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc sp
	dec b
	nop
	add hl,de
	ld (de),a
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	inc (hl)
	dec b
	dec b
	ld d,06ch
	rlca
	ld sp,00005h
	nop
	ld hl,(00009h)
	nop
	nop
	add hl,de
	inc d
	rrca
	inc sp
	dec b
	nop
	nop
	inc l
	add hl,bc
	nop
	nop
	dec b
	ld d,06ch
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
	add hl,de
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
	ld bc,l6c16h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl,(00005h)
	add hl,de
	dec c
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	inc l
	dec b
	inc bc
	ld d,06ch
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
	add hl,de
	inc d
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
	ld d,06ch
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
	add hl,de
	dec d
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
	ld d,06ch
	rlca
	cpl
	dec b
	nop
	nop
	jr z,l6fa5h
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	dec h
	dec b
	nop
l6fa5h:
	nop
	ld hl,(00009h)
	nop
	ld (bc),a
	ld d,06ch
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
	add hl,de
	nop
	nop
	cpl
	dec b
	nop
	nop
	jr z,l6fc9h
	nop
	nop
	add hl,bc
	ld d,000h
	nop
	nop
	nop
	nop
l6fc9h:
	nop
	nop
	nop
	jr z,l6fd3h
	nop
	add hl,de
	dec d
	rrca
	dec l
l6fd3h:
	dec b
	nop
	nop
	daa
	add hl,bc
	ld hl,(00105h)
	ld d,06ch
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
	add hl,de
	rla
	rrca
	inc l
	dec b
	nop
	nop
	dec h
	add hl,bc
	jr z,l6ff7h
	dec b
	ld d,06ch
	rlca
	nop
l6ff7h:
	nop
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
	ld l,h
	ld bc,00000h
	ld l,h
	ld bc,00527h
	ld bc,l6c16h
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
	add hl,de
	dec c
	rrca
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00525h
	inc bc
	rla
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	rla
	nop
	nop
	ld l,h
	ld bc,00938h
	ld l,h
	ld bc,0016ch
	dec b
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
	add hl,de
	ld (de),a
sub_7049h:
	rrca
	nop
	nop
	ld (hl),009h
	ld l,h
	ld bc,0016ch
	dec b
	ld d,06ch
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
	add hl,de
	dec c
	rrca
	ld l,h
	ld bc,00938h
	ld l,h
	ld bc,00438h
	ld (bc),a
	ld d,06ch
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
	add hl,de
	nop
	nop
	nop
	nop
	inc (hl)
	add hl,bc
	ld l,h
	ld bc,00436h
	dec b
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
	dec b
	rla
	ld (de),a
	rrca
	ld l,h
	ld bc,00938h
	ld l,h
	ld bc,00438h
	dec b
	ld d,06ch
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
	add hl,de
	inc d
	rrca
	nop
	nop
	ld sp,l6c09h
	ld bc,00434h
	dec b
	ld d,06ch
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
	add hl,de
	dec c
	rrca
	ld h,c
	nop
	ld l,h
	ld bc,00000h
	jr c,l70ceh
	ld bc,l6c16h
	rlca
l70ceh:
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
	dec c
	rrca
	nop
	nop
	ld l,h
	ld bc,00000h
	ld sp,00904h
	ld d,06ch
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
	add hl,de
	inc d
	rrca
	inc l
	dec b
	ld l,h
	ld bc,00934h
	nop
	nop
	dec b
	ld d,06ch
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
	add hl,de
	dec d
	rrca
	ld hl,(l6c05h)
	ld bc,00933h
	nop
	nop
	dec b
	ld d,06ch
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
	add hl,de
	dec c
	rrca
	inc l
	dec b
	ld l,h
	ld bc,00934h
	inc (hl)
	dec b
	ld (bc),a
	ld d,06ch
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
	add hl,de
	dec c
	rrca
	ld hl,(l6c05h)
	ld bc,00933h
	inc sp
	dec b
	add hl,bc
	ld d,06ch
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
	add hl,de
	rla
	rrca
	cpl
	dec b
	ld l,h
	ld bc,00938h
	inc (hl)
	dec b
	ld bc,l6c16h
	rlca
	ld h,a
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	add hl,de
	rrca
	nop
	nop
	ld l,h
	ld bc,00931h
	inc sp
	dec b
	dec b
	ld d,06ch
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
	add hl,de
	dec c
	rrca
	jr c,l7189h
	nop
	nop
	ld sp,l6c09h
l7189h:
	ld (bc),a
	ld bc,l6c16h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	nop
	add hl,de
l7198h:
	dec c
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	inc bc
	ld d,06ch
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	dec h
	dec b
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
	ld sp,00505h
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
	add hl,de
	ld (de),a
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
	ld d,06ch
	rlca
	ld (hl),005h
	nop
	nop
	inc sp
	add hl,bc
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	jr c,l71e9h
	nop
	nop
	inc (hl)
	add hl,bc
	nop
l71e9h:
	nop
	ld (bc),a
	ld d,06ch
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
	add hl,bc
	ld d,000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc sp
	dec b
	nop
	add hl,de
	ld (de),a
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	inc (hl)
	dec b
	dec b
	ld d,06ch
	rlca
	ld sp,00005h
	nop
	ld hl,(00009h)
	nop
	nop
	add hl,de
	inc d
	rrca
	inc sp
	dec b
	nop
	nop
	inc l
	add hl,bc
	nop
	nop
	dec b
	ld d,06ch
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
	add hl,de
	dec c
	rrca
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	nop
	ld bc,l6c16h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl,(00005h)
	add hl,de
	dec c
	rrca
	ld l,h
	ld bc,00000h
	nop
	nop
	inc l
	dec b
	inc bc
	ld d,06ch
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
	add hl,de
	inc d
	rrca
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	nop
	dec b
	ld d,06ch
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
	add hl,de
	dec d
	rrca
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	nop
	dec b
	ld d,06ch
	rlca
	cpl
	dec b
	nop
	nop
	jr z,l72a5h
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	dec h
	dec b
	nop
l72a5h:
	nop
	ld hl,(00009h)
	nop
	ld (bc),a
	ld d,06ch
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
	add hl,de
	nop
	nop
l72bah:
	cpl
	dec b
	nop
	nop
	jr z,l72c9h
	nop
	nop
	add hl,bc
	ld d,000h
	nop
	nop
	nop
	nop
l72c9h:
	nop
	nop
	nop
	jr z,l72d3h
	nop
	add hl,de
	dec d
	rrca
	dec l
l72d3h:
	dec b
	nop
	nop
	daa
	add hl,bc
	ld hl,(00105h)
	ld d,06ch
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
	add hl,de
	rla
	rrca
	inc l
	dec b
	nop
	nop
	dec h
	add hl,bc
	jr z,l72f7h
	dec b
	ld d,06ch
	rlca
	nop
l72f7h:
	nop
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
	ld l,h
	ld bc,00000h
	ld l,h
	ld bc,00527h
	ld bc,l6c16h
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
	add hl,de
	dec c
	rrca
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00525h
	add hl,bc
	rla
	ld l,h
	rlca
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
	ld l,h
	ld bc,00938h
	ld l,h
	ld bc,0016ch
	dec b
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
	add hl,de
	ld (de),a
	rrca
	nop
	nop
	ld (hl),009h
	ld l,h
	ld bc,0016ch
	dec b
	ld d,06ch
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
	add hl,de
	dec c
	rrca
	ld l,h
	ld bc,00938h
	ld l,h
	ld bc,00438h
	ld (bc),a
	ld d,06ch
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
	add hl,de
	nop
	nop
	nop
	nop
	inc (hl)
	add hl,bc
	ld l,h
	ld bc,00436h
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
	nop
	nop
	add hl,bc
	rla
	ld (de),a
	rrca
	ld l,h
	ld bc,00938h
	ld l,h
	ld bc,00438h
	dec b
	ld d,06ch
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
	add hl,de
	inc d
	rrca
	nop
	nop
	ld sp,l6c09h
	ld bc,00434h
	dec b
	ld d,06ch
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
	add hl,de
	dec c
	rrca
	ld h,c
	nop
	ld l,h
	ld bc,00000h
	jr c,l73ceh
	ld bc,l6c16h
	rlca
l73ceh:
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
	dec c
	rrca
	nop
	nop
	ld l,h
	ld bc,00000h
	ld sp,00904h
	ld d,06ch
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
	add hl,de
	inc d
	rrca
	inc l
	dec b
	ld l,h
	ld bc,00934h
	nop
	nop
	dec b
	ld d,06ch
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
	add hl,de
	dec d
	rrca
	ld hl,(l6c05h)
	ld bc,00933h
	nop
	nop
	dec b
	ld d,06ch
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
	add hl,de
	dec c
	rrca
	inc l
	dec b
	ld l,h
	ld bc,00934h
	inc (hl)
	dec b
	ld (bc),a
	ld d,06ch
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
	add hl,de
	dec c
	rrca
	ld hl,(l6c05h)
	ld bc,00933h
	inc sp
	dec b
	add hl,bc
	ld d,06ch
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
	add hl,de
	rla
	rrca
	cpl
	dec b
	ld l,h
	ld bc,00938h
	inc (hl)
	dec b
	ld bc,l6c16h
	rlca
	ld h,a
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	add hl,de
	rrca
	nop
	nop
	ld l,h
	ld bc,00931h
	inc sp
	dec b
	dec b
	ld d,06ch
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
	add hl,de
	dec c
	rrca
	jr c,l7489h
	nop
	nop
	ld sp,l6c09h
l7489h:
	ld (bc),a
	ld bc,l6c16h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	nop
	add hl,de
	dec c
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	inc bc
	ld d,06ch
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	dec h
	dec b
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
	ld sp,00505h
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
	add hl,de
	ld (de),a
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
	ld d,06ch
	rlca
	ld (hl),005h
	nop
	nop
	inc sp
	add hl,bc
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	jr c,l74e9h
	nop
	nop
	inc (hl)
	add hl,bc
	nop
l74e9h:
	nop
	ld (bc),a
	ld d,06ch
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
	add hl,bc
	ld d,000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc sp
	dec b
	nop
	add hl,de
	ld (de),a
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	inc (hl)
	dec b
	dec b
	ld d,06ch
	rlca
	ld sp,00005h
	nop
	ld hl,(00009h)
	nop
	nop
	add hl,de
	inc d
	rrca
	inc sp
	dec b
	nop
	nop
	inc l
	add hl,bc
	nop
	nop
	dec b
	ld d,06ch
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
	add hl,de
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
	ld bc,l6c16h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl,(00005h)
	add hl,de
	dec c
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	inc l
	dec b
	inc bc
	ld d,06ch
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
	add hl,de
	inc d
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
	ld d,06ch
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
	add hl,de
	dec d
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
	ld d,06ch
	rlca
	cpl
	dec b
	nop
	nop
	jr z,l75a5h
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	dec h
	dec b
	nop
l75a5h:
	nop
	ld hl,(00009h)
	nop
	ld (bc),a
	ld d,06ch
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
	add hl,de
	nop
	nop
	cpl
	dec b
	nop
	nop
	jr z,l75c9h
	nop
	nop
	add hl,bc
	ld d,000h
	nop
	nop
	nop
	nop
l75c9h:
	nop
	nop
	nop
	jr z,l75d3h
	nop
	add hl,de
	dec d
	rrca
	dec l
l75d3h:
	dec b
	nop
	nop
	daa
	add hl,bc
	ld hl,(00105h)
	ld d,06ch
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
	add hl,de
	rla
	rrca
	inc l
	dec b
	nop
	nop
	dec h
	add hl,bc
	jr z,l75f7h
	dec b
	ld d,06ch
	rlca
	nop
l75f7h:
	nop
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
	ld l,h
	ld bc,00000h
	ld l,h
	ld bc,00527h
	ld bc,l6c16h
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
	add hl,de
	dec c
	rrca
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00525h
	dec b
	rla
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	rla
	nop
	nop
	ld l,h
	ld bc,00938h
	ld l,h
	ld bc,0016ch
	dec b
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
	add hl,de
	ld (de),a
	rrca
	nop
	nop
	ld (hl),009h
	ld l,h
	ld bc,0016ch
	dec b
	ld d,06ch
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
	add hl,de
	dec c
	rrca
	ld l,h
	ld bc,00938h
	ld l,h
	ld bc,00438h
	ld (bc),a
	ld d,06ch
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
	add hl,de
	nop
	nop
	nop
	nop
	inc (hl)
	add hl,bc
	ld l,h
	ld bc,00436h
	inc bc
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
	inc bc
	rla
	ld (de),a
	rrca
	ld l,h
	ld bc,00938h
	ld l,h
	ld bc,00438h
	dec b
	ld d,06ch
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
	add hl,de
	inc d
	rrca
	nop
	nop
	ld sp,l6c09h
	ld bc,00434h
	dec b
	ld d,06ch
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
	add hl,de
	dec c
	rrca
	ld h,c
	nop
	ld l,h
	ld bc,00000h
	jr c,l76ceh
	ld bc,l6c16h
	rlca
l76ceh:
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
	dec c
	rrca
	nop
	nop
	ld l,h
	ld bc,00000h
	ld sp,00904h
	ld d,06ch
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
	add hl,de
	nop
	nop
	inc l
	dec b
	ld l,h
	ld bc,00934h
	nop
	nop
	dec b
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
	add hl,de
	dec d
	rrca
	ld hl,(l6c05h)
	ld bc,00933h
	nop
	nop
	dec b
	ld d,06ch
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
	add hl,de
	dec c
	rrca
	inc l
	dec b
	ld l,h
	ld bc,00934h
	inc (hl)
	dec b
	ld (bc),a
	ld d,06ch
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
	add hl,de
	nop
	nop
	ld hl,(l6c05h)
	ld bc,00933h
	inc sp
	dec b
	add hl,bc
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
	add hl,de
	rla
	rrca
	cpl
	dec b
	ld l,h
	ld bc,00938h
	inc (hl)
	dec b
	ld bc,l6c16h
	rlca
	ld h,a
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	add hl,de
	rrca
	nop
	nop
	ld l,h
	ld bc,00931h
	inc sp
	dec b
	dec b
	ld d,06ch
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
	add hl,de
	dec c
	rrca
	jr c,$+7
	nop
	nop
	nop
	nop
	jr c,l778fh
	ld bc,l6c16h
	rlca
	nop
l778fh:
	nop
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
	nop
	nop
	nop
	nop
	nop
	nop
	ld sp,00305h
	ld d,06ch
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
	dec b
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
	add hl,de
	ld (de),a
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
	ld d,06ch
	rlca
	ld (hl),005h
	nop
	nop
	inc sp
	add hl,bc
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	jr c,l77e9h
sub_77e4h:
	nop
	nop
	inc (hl)
	add hl,bc
	nop
l77e9h:
	nop
	ld (bc),a
	ld d,06ch
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
	add hl,bc
	ld d,000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc sp
	dec b
	nop
	add hl,de
	ld (de),a
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	inc (hl)
	dec b
	dec b
	ld d,06ch
	rlca
	ld sp,00005h
	nop
	ld hl,(00009h)
	nop
	nop
	add hl,de
	inc d
	rrca
	inc sp
	dec b
	nop
	nop
	inc l
	add hl,bc
	nop
	nop
	dec b
	ld d,06ch
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
	add hl,de
	dec c
	rrca
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	nop
	ld bc,l6c16h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl,(00005h)
	add hl,de
	dec c
	rrca
	ld l,h
	ld bc,00000h
	nop
	nop
	inc l
	dec b
	inc bc
	ld d,06ch
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
	add hl,de
	inc d
	rrca
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	nop
	dec b
	ld d,06ch
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
	add hl,de
	dec d
	rrca
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	nop
	dec b
	ld d,06ch
	rlca
	cpl
	dec b
	nop
	nop
	jr z,l78a5h
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	dec h
	dec b
	nop
l78a5h:
	nop
	ld hl,(00009h)
	nop
	ld (bc),a
	ld d,06ch
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
	add hl,de
	dec c
	rrca
	cpl
	dec b
	nop
	nop
	jr z,l78c9h
	nop
	nop
	add hl,bc
	ld d,06ch
	rlca
	nop
	nop
	nop
l78c9h:
	nop
	nop
	nop
	jr z,l78d3h
	nop
	add hl,de
	dec d
	rrca
	dec l
l78d3h:
	dec b
	nop
	nop
	daa
	add hl,bc
	ld hl,(00105h)
	ld d,06ch
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
	add hl,de
	rla
	rrca
	inc l
	dec b
	nop
	nop
	dec h
	add hl,bc
	jr z,l78f7h
	dec b
	ld d,06ch
	rlca
	nop
l78f7h:
	nop
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
	ld l,h
	ld bc,00000h
	nop
l7907h:
	nop
	daa
	dec b
	ld (bc),a
	ld d,06ch
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
	add hl,de
	dec c
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	dec h
	dec b
	nop
	ld d,06ch
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
	add hl,de
	djnz l7941h
	ld l,h
	ld bc,00938h
	ld l,h
	ld bc,00000h
	ld (bc),a
	ld d,06ch
	rlca
	nop
	nop
	nop
l7941h:
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld (de),a
	rrca
	nop
	nop
	ld (hl),009h
	nop
	nop
	nop
	nop
	dec b
	ld d,06ch
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
	add hl,de
	dec c
	rrca
	ld l,h
	ld bc,00938h
	ld l,h
	ld bc,0016ch
	dec b
	rla
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	rla
	dec c
	rrca
	nop
	nop
	inc (hl)
	add hl,bc
	nop
	nop
	nop
	nop
	ld (bc),a
	ld d,06ch
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
	add hl,de
	ld (de),a
	rrca
	ld l,h
	ld bc,00938h
	ld l,h
	ld bc,0016ch
	ld (bc),a
	ld d,06ch
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
	add hl,de
	inc d
	rrca
	nop
	nop
	ld sp,00009h
	nop
	nop
	nop
	inc bc
	ld d,06ch
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
	add hl,de
	dec c
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,01601h
	ld l,h
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
	add hl,de
	dec c
	rrca
	nop
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	inc bc
	ld d,06ch
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
	add hl,de
	inc d
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
	ld d,06ch
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
	add hl,de
	dec d
	rrca
	nop
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	ld (bc),a
	ld d,06ch
	rlca
	nop
	nop
	nop
	nop
l7a1ah:
	nop
	nop
	nop
	nop
	nop
	add hl,de
	dec c
	rrca
	nop
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	dec b
	rla
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	rla
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	dec b
l7a43h:
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
	add hl,de
	rla
	rrca
	nop
	nop
	dec bc
	add hl,bc
	ld h,c
	nop
	nop
	nop
	rlca
	ld d,06ch
	rlca
	nop
	nop
	ld h,c
	nop
	nop
	nop
	nop
sub_7a65h:
	nop
	nop
	add hl,de
	ld l,h
	add hl,bc
	ld l,c
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,061h
	nop
	ld h,d
	ld sp,00000h
	ld h,d
	rla
	nop
	nop
	nop
	add hl,de
	add hl,de
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_7aadh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7f27h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
