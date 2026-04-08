; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank22.asm /tmp/smanbow2_bank.bin

	org 04000h

	ld c,l
	ld h,c
	ld l,(hl)
	ld h,d
	ld l,a
	ld (hl),a
	jr nz,$+52
	jr nz,l4037h
	jr nz,$+78
	ld h,l
	halt
	ld h,l
	ld l,h
	jr nz,l4046h
	jr nz,l4041h
	jr nz,l4065h
	ld (hl),l
	ld (hl),h
	jr nz,l4083h
	ld l,(hl)
	jr nz,$+85
	ld (hl),b
	ld h,c
	ld h,e
	ld h,l
	jr nz,l4043h
	jr nz,l4045h
	jr nz,l4047h
	jr nz,l4049h
	jr nz,l404bh
	jr nz,l404dh
	jr nz,$+34
	jr nz,$+34
	jr nz,l4053h
	jr nz,l4055h
	jr nz,$+34
l4037h:
	jr nz,l4059h
	jr nz,l405bh
	jr nz,l405dh
	jr nz,$+34
	jr nz,l4061h
l4041h:
	jr nz,$+34
l4043h:
	ld c,l
	ld d,l
l4045h:
	ld d,e
l4046h:
	ld c,c
l4047h:
	ld c,(hl)
	ld d,e
l4049h:
	ld d,h
	ld d,d
l404bh:
	ld d,e
	ld b,d
l404dh:
	ld c,e
	ld l,000h
	ld bc,00100h
l4053h:
	ld (bc),a
	inc bc
l4055h:
	inc b
	ld bc,00302h
l4059h:
	inc b
	dec b
l405bh:
	ld b,007h
l405dh:
	ex af,af'
	ld bc,00302h
l4061h:
	inc b
	ld bc,00302h
l4065h:
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
	djnz l4084h
	ld (de),a
	inc de
	inc d
	dec d
	ld d,017h
	jr l4094h
	ld a,(de)
	dec de
	inc e
	dec e
	ld e,000h
	nop
	nop
l4083h:
	nop
l4084h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4094h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ex af,af'
	ex af,af'
	add hl,bc
	add hl,bc
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
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld l,d
	ld bc,00169h
	ld l,c
	nop
	rlca
	jr l422eh
	nop
	ld h,c
	nop
	ld h,d
	ld a,(bc)
	ld h,d
	ld a,(bc)
	ld h,d
	ld (hl),h
	nop
	add hl,de
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	add hl,de
	ex af,af'
	add hl,de
	ex af,af'
	add hl,de
	ex af,af'
	rlca
	jr l4246h
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
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	add hl,de
	ex af,af'
	add hl,de
	ex af,af'
	add hl,de
	ex af,af'
	rlca
	jr l425eh
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
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	add hl,de
	ex af,af'
	add hl,de
	ex af,af'
	add hl,de
	ex af,af'
	rlca
	jr l4276h
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
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld (02208h),hl
	ex af,af'
	ld (00708h),hl
	jr l428eh
	nop
l422eh:
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l4245h
l4245h:
	nop
l4246h:
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
	rlca
	ld a,(bc)
	rlca
	ld (02207h),hl
	rlca
	ld (00707h),hl
	jr l42beh
	nop
l425eh:
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l4275h
l4275h:
	nop
l4276h:
	nop
	nop
	ld h,d
	add hl,bc
	ld h,d
	add hl,bc
	nop
	nop
	nop
	add hl,de
	nop
	nop
	ld d,00fh
	ld sp,02e05h
	ld a,(bc)
	daa
	ld a,(bc)
	ld bc,01616h
	rrca
l428eh:
	ld h,c
	nop
	daa
	dec b
	ld l,h
	ld bc,0016ch
	inc bc
	nop
	ld h,c
	nop
	ld d,00fh
	inc l
	dec b
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld d,00fh
	ld h,c
	nop
	daa
	dec b
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld l,h
	add hl,bc
	ld l,005h
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
l42beh:
	rrca
	rrca
	daa
	dec b
	inc l
	add hl,bc
	dec h
	add hl,bc
	nop
	nop
	nop
	nop
	ld (de),a
	rrca
	ld sp,02a05h
	add hl,bc
	inc h
	add hl,bc
	inc bc
	nop
	nop
	nop
	inc d
	rrca
	daa
	dec b
	add hl,hl
	ld a,(bc)
	ld (0010ah),hl
	nop
	nop
	nop
	ld d,00fh
	inc sp
	dec b
	ld l,h
	ld bc,0016ch
	ld bc,01600h
	rrca
	ld h,c
	nop
	daa
	dec b
	ld l,h
	ld bc,0016ch
	inc bc
	nop
	ld h,c
	nop
	ld d,00fh
	inc l
	dec b
	ld l,009h
	daa
	add hl,bc
	ld bc,00000h
	nop
	add hl,de
	rrca
	daa
	dec b
	ld l,h
	ld bc,0016ch
	nop
	nop
	nop
	nop
	ld l,h
	add hl,bc
	ld l,005h
	inc l
	add hl,bc
	dec h
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	ld (de),a
	rrca
	daa
	dec b
	ld l,009h
	daa
	add hl,bc
	nop
	nop
	nop
	nop
	ld de,0310fh
	dec b
	inc l
	ld a,(bc)
	dec h
	ld a,(bc)
	inc bc
	nop
	nop
	nop
	dec c
	rrca
	daa
	dec b
	ld l,h
	ld bc,0016ch
	ld bc,00000h
	nop
	rrca
	rrca
	inc sp
	dec b
	ld sp,02a09h
	add hl,bc
	ld bc,00f00h
	rrca
	ld h,c
	nop
	ld hl,(l6c05h)
	ld bc,0016ch
	inc bc
	nop
	ld h,c
	nop
	rrca
	rrca
	jr nc,l4363h
	nop
	nop
	nop
	nop
	inc bc
l4363h:
	nop
	rrca
	rrca
	ld h,c
	nop
	ld hl,(00005h)
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld l,h
	add hl,bc
	ld sp,00005h
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	rrca
	rrca
	ld hl,(l6705h)
	ld (bc),a
	ld h,a
	ld (bc),a
	nop
	nop
	nop
	nop
	inc d
	rrca
	dec (hl)
	dec b
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld d,00fh
	ld hl,(l6c05h)
	ld bc,0016ch
	ld bc,00000h
	nop
	jr l43b3h
	ld (hl),005h
	nop
	nop
	nop
	nop
	ld bc,01800h
	rrca
	ld h,c
	nop
	ld hl,(00005h)
l43b3h:
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	jr l43cbh
	ld sp,00005h
	nop
	nop
	nop
	ld bc,00000h
	nop
	add hl,de
	rrca
	ld (hl),005h
	nop
l43cbh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	add hl,bc
	ld sp,00005h
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	ld (de),a
	rrca
	dec (hl)
	dec b
	ld l,h
	ld bc,0016ch
	nop
	nop
	nop
	nop
	ld de,0330fh
	dec b
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	dec c
	rrca
	jr nc,$+7
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	ld de,02c0fh
	dec b
	inc sp
	add hl,bc
	ld l,009h
	ld bc,01100h
	rrca
	ld h,c
	nop
	daa
	dec b
	ld l,h
	ld bc,0016ch
	inc bc
	nop
	ld h,c
	nop
	ld de,02c0fh
	dec b
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld de,l610fh
	nop
	daa
	dec b
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld l,h
	add hl,bc
	ld l,005h
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	rrca
	rrca
	daa
	dec b
	ld sp,02a09h
	add hl,bc
	nop
	nop
	nop
	nop
	ld (de),a
	rrca
	ld sp,03305h
	add hl,bc
	inc l
	add hl,bc
	inc bc
	nop
	nop
	nop
	inc d
	rrca
	daa
	dec b
	dec (hl)
	ld a,(bc)
	ld l,00ah
	ld bc,00000h
	nop
	ld d,00fh
	inc sp
	dec b
	ld l,h
	ld bc,0016ch
	ld bc,01600h
	rrca
	ld h,c
	nop
	daa
	dec b
	ld l,h
	ld bc,0016ch
	inc bc
	nop
	ld h,c
	nop
	ld d,00fh
	inc l
	dec b
	inc sp
	add hl,bc
	inc l
	add hl,bc
	ld bc,00000h
	nop
	add hl,de
	rrca
	daa
	dec b
	ld l,h
	ld bc,0016ch
	nop
	nop
	nop
	nop
	ld l,h
	add hl,bc
	ld l,005h
	ld sp,02a09h
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	ld (de),a
	rrca
	daa
	dec b
	jr nc,l44adh
	add hl,hl
	add hl,bc
	nop
	nop
	nop
	nop
	ld de,0310fh
l44adh:
	dec b
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	inc bc
	nop
	nop
	nop
	dec c
	rrca
	daa
	dec b
	inc l
	add hl,bc
	dec h
	add hl,bc
	ld bc,00000h
	nop
	ld a,(bc)
	rrca
	inc sp
	dec b
	ld l,009h
	daa
	add hl,bc
	ld bc,00a00h
	rrca
	ld h,c
	nop
	ld hl,(l6c05h)
	ld bc,0016ch
	inc bc
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	jr nc,l44e3h
	nop
	nop
	nop
	nop
	inc bc
l44e3h:
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	ld hl,(00005h)
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld l,h
	add hl,bc
	ld sp,00005h
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	ld a,(bc)
	rrca
	ld hl,(l6705h)
	ld (bc),a
	ld h,a
	ld (bc),a
	nop
	nop
	ld a,(bc)
	rrca
	ld h,c
	nop
	dec (hl)
	dec b
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld hl,(l6c05h)
	ld bc,0016ch
	ld bc,00a00h
	rrca
	ld h,c
	nop
	ld (hl),005h
	nop
	nop
	nop
	nop
	ld bc,l6100h
	nop
	ld l,h
	add hl,bc
	ld hl,(00005h)
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld a,(bc)
	rrca
	ld sp,00005h
	nop
	nop
	nop
	ld bc,00000h
	nop
	dec c
	rrca
	ld (hl),005h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,h
	add hl,bc
	ld sp,00005h
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	inc c
	rrca
	dec (hl)
	dec b
	ld l,h
	ld bc,0016ch
	nop
	nop
	nop
	nop
	dec c
	rrca
	inc sp
	dec b
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	rrca
	rrca
	jr nc,$+7
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	add hl,de
	rrca
	ld (02905h),hl
	add hl,bc
	dec h
	add hl,bc
	ld bc,00000h
	nop
	ld l,h
	rlca
	dec h
	dec b
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	jr l45abh
	add hl,hl
	dec b
	add hl,hl
	add hl,bc
	dec h
	add hl,bc
	ld bc,00000h
	nop
	ld l,h
	rlca
	ld (l6c05h),hl
l45abh:
	add hl,bc
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	nop
	inc h
	dec b
	ld l,009h
	inc h
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	dec de
	rrca
	daa
	dec b
	dec h
	add hl,bc
	ld (00109h),hl
	nop
	nop
	nop
	ld l,h
	rlca
	ld hl,(00005h)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc h
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	dec h
	dec b
	inc l
	add hl,bc
	daa
	add hl,bc
	ld bc,00000h
	nop
	ld l,h
	rlca
	add hl,hl
	dec b
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	jr l460bh
	inc l
	dec b
	inc l
	add hl,bc
	daa
	add hl,bc
	ld bc,00000h
	nop
	rrca
	rrca
	ld sp,l6c05h
l460bh:
	add hl,bc
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	ld l,h
	rlca
	dec (hl)
	dec b
	jr nc,l4621h
	dec h
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	inc d
	rrca
	inc sp
l4621h:
	dec b
	add hl,hl
	add hl,bc
	inc h
	add hl,bc
	ld bc,00000h
	nop
	ld (de),a
	rrca
	ld sp,00005h
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld de,0330fh
	dec b
	nop
	dec bc
	nop
	dec bc
	inc bc
	nop
	nop
	nop
	dec de
	rrca
	inc h
	dec b
	ld hl,(02509h)
	add hl,bc
	ld bc,00000h
	nop
	ld l,h
	rlca
	daa
	dec b
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	ld hl,(02a05h)
	add hl,bc
	dec h
	add hl,bc
	ld bc,00000h
	nop
	ld l,h
	rlca
	inc h
	dec b
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	inc bc
	nop
	nop
	nop
	nop
	nop
	daa
	dec b
	ld l,009h
	dec h
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	jr l468fh
	add hl,hl
	dec b
	jr nc,l468dh
	daa
	add hl,bc
	ld bc,00000h
	nop
	ld l,h
	rlca
	inc l
l468dh:
	dec b
	nop
l468fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec h
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec de
	rrca
	ld hl,(03105h)
	add hl,bc
	dec h
	add hl,bc
	ld bc,00000h
	nop
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
	nop
	dec de
	rrca
	ld hl,(00005h)
	nop
	nop
	nop
	ld bc,00000h
	nop
	ld l,h
	rlca
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
	add hl,de
	rrca
	add hl,hl
	dec b
	jr nc,l46e1h
	inc h
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	jr l46efh
	nop
l46e1h:
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
l46efh:
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
	inc bc
	nop
	nop
	nop
	ld d,00fh
	ld (l6c05h),hl
	ld (bc),a
	ld l,h
	ld (bc),a
	ld bc,00000h
	nop
	ld l,h
	rlca
	dec h
	dec b
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	nop
	nop
	nop
	nop
	ld d,00fh
	add hl,hl
	dec b
	add hl,hl
	add hl,bc
	dec h
	add hl,bc
	ld bc,00000h
	nop
	ld l,h
	rlca
	ld (l6c05h),hl
	add hl,bc
	ld l,h
	add hl,bc
	inc bc
	nop
	nop
	nop
	nop
	nop
	inc h
	dec b
	ld l,009h
	inc h
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	ld e,00fh
	daa
	dec b
	dec h
	add hl,bc
	ld (00109h),hl
	nop
	nop
	nop
	nop
	nop
	ld hl,(00005h)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc h
	dec b
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	add hl,de
	rrca
	dec h
	dec b
	inc l
	add hl,bc
	daa
	add hl,bc
	ld bc,00000h
	nop
	ld l,h
	rlca
	add hl,hl
	dec b
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	ld a,(bc)
	rrca
	inc l
	dec b
	inc l
	add hl,bc
	daa
	add hl,bc
	ld bc,00000h
	nop
	rrca
	rrca
	ld sp,l6c05h
	add hl,bc
	ld l,h
	add hl,bc
	inc bc
	nop
	nop
	nop
	ld l,h
	rlca
	dec (hl)
	dec b
	jr nc,l47a1h
	add hl,hl
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	inc d
	rrca
	inc sp
l47a1h:
	dec b
	add hl,hl
	add hl,bc
	inc h
	add hl,bc
	ld bc,00000h
	nop
	ld (de),a
	rrca
	ld sp,00005h
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld de,0330fh
	dec b
	nop
	dec bc
	nop
	dec bc
	inc bc
	nop
	nop
	nop
	dec de
	rrca
	inc h
	dec b
	jr nc,l47d1h
	dec e
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	ld l,h
	rlca
	daa
l47d1h:
	dec b
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	dec de
	rrca
	ld hl,(03005h)
	add hl,bc
	dec e
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	ld l,h
	rlca
	inc h
	dec b
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	daa
	dec b
	jr nc,l4801h
	dec e
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	add hl,de
	rrca
	add hl,hl
l4801h:
	dec b
	ld sp,01e09h
	add hl,bc
	ld (bc),a
	nop
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
	nop
	nop
	nop
	nop
	nop
	dec h
	dec b
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	dec e
	rrca
	daa
	dec b
	inc sp
	add hl,bc
	jr nz,l4833h
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l4833h:
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld (bc),a
	nop
	nop
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
	inc d
	rrca
	inc l
	dec b
	jr c,l4861h
	ld sp,00209h
	nop
	nop
	nop
	nop
	nop
	ld l,h
l4861h:
	ld (bc),a
	ld h,a
	ld bc,00167h
	nop
	nop
	nop
	nop
	nop
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
	nop
	nop
	nop
	ld h,d
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld l,003h
	ld l,009h
	add hl,hl
	add hl,bc
	ld bc,00000h
	nop
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld l,003h
	ld a,(bc)
	rrca
	nop
	nop
	ld h,a
	ld bc,00167h
	inc bc
	nop
	nop
	nop
	ld l,h
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld h,a
	ld bc,00f0ah
	ld l,003h
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	ld de,0300fh
	inc bc
	ld sp,02c09h
	add hl,bc
	nop
	nop
	nop
	nop
	ld l,h
	rlca
	nop
	nop
	ld l,h
	rlca
	ld l,h
	rlca
	inc bc
	nop
	ld sp,01903h
	rrca
	ld sp,03003h
	add hl,bc
	dec hl
	add hl,bc
	ld bc,l6c00h
	rlca
	ld a,(bc)
	rrca
	dec (hl)
	inc bc
	ld l,009h
	add hl,hl
	add hl,bc
	ld bc,03000h
	inc bc
	ld l,h
	rlca
	nop
	nop
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	inc bc
	nop
	ld l,003h
	ld a,(bc)
	rrca
	inc sp
	inc bc
	inc sp
	add hl,bc
	ld l,009h
	ld bc,l6c00h
	add hl,bc
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
	inc sp
	inc bc
	ld a,(bc)
	rrca
	ld sp,03003h
	add hl,bc
	dec hl
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	ld d,00fh
	jr nc,l4925h
	ld sp,02c09h
l4925h:
	add hl,bc
	nop
	nop
	jr nc,l492dh
	ld l,h
	rlca
	nop
l492dh:
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld sp,01803h
	rrca
	inc l
	inc bc
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	ld (de),a
	rrca
	ld l,003h
	dec (hl)
	add hl,bc
	dec h
	add hl,bc
	ld bc,00000h
	nop
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	dec (hl)
	inc bc
	ld (de),a
	rrca
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
	ld l,h
	rlca
	ld l,h
	rlca
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld (de),a
	rrca
	ld l,003h
	inc sp
	add hl,bc
	inc h
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	inc d
	rrca
	jr nc,l4985h
	nop
	nop
	nop
l4985h:
	nop
	nop
	nop
	inc sp
	inc bc
	ld l,h
	rlca
	nop
	nop
	ld h,a
	ld bc,00167h
	inc bc
	nop
	nop
	nop
	ld d,00fh
	ld sp,00003h
	nop
	nop
	nop
	ld bc,l6700h
	ld bc,00f19h
	inc sp
	inc bc
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	ld l,h
	rlca
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
	dec de
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
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
	nop
	nop
	nop
	ld d,00fh
	dec (hl)
	inc bc
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	jr l49efh
	ld (hl),003h
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
	nop
	nop
	nop
l49efh:
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	jr l4a07h
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	ld de,0350fh
	inc bc
	inc l
l4a07h:
	add hl,bc
	dec h
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	ld l,h
	dec c
	dec (hl)
	inc bc
	jr nc,l4a1dh
	add hl,hl
	add hl,bc
	ld (bc),a
	nop
	ld l,h
	dec c
	ld de,0350fh
l4a1dh:
	inc bc
	inc l
	add hl,bc
	dec h
	add hl,bc
	ld (bc),a
	nop
	ld de,06c0fh
	dec c
	dec (hl)
	inc bc
	jr nc,l4a35h
	add hl,hl
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	ld h,c
	nop
	nop
l4a35h:
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld l,h
	dec c
	nop
	nop
	ld l,h
	inc bc
	ld l,h
	inc bc
	ld l,h
	inc bc
	nop
	nop
	ld de,0000fh
	nop
	dec (hl)
	inc bc
	inc l
	add hl,bc
	dec h
	add hl,bc
	ld (bc),a
	nop
	ld l,h
	dec c
	ld de,0350fh
	inc bc
	jr nc,l4a65h
	add hl,hl
	add hl,bc
	ld (bc),a
	nop
	ld de,06c0fh
	dec c
	dec (hl)
l4a65h:
	inc bc
	inc l
	add hl,bc
	dec h
	add hl,bc
	ld (bc),a
	nop
	ld l,h
	dec c
	ld de,0350fh
	inc bc
	jr nc,l4a7dh
	add hl,hl
	add hl,bc
	ld (bc),a
	nop
	ld h,c
	nop
	nop
	nop
	dec (hl)
l4a7dh:
	inc bc
	inc l
	add hl,bc
	dec h
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	ld l,h
	dec c
	ld l,h
	inc bc
	ld l,h
	inc bc
	ld l,h
	inc bc
	nop
	nop
	nop
	nop
	ld de,0350fh
	inc bc
	inc l
	add hl,bc
	dec h
	add hl,bc
	ld bc,00000h
	nop
	ld (de),a
	rrca
	ld (hl),003h
	ld l,009h
	daa
	add hl,bc
	ld bc,00000h
	nop
	nop
	nop
	ld l,h
	inc bc
	ld l,h
	inc bc
	ld l,h
	inc bc
	nop
	nop
	nop
	nop
	inc d
	rrca
	jr c,l4abfh
	jr nc,$+11
	add hl,hl
	add hl,bc
	inc bc
l4abfh:
	nop
	nop
	nop
	ld d,00fh
	ld l,003h
	ld l,009h
	dec (hl)
	add hl,bc
	ld bc,00000h
	nop
	ld l,h
	rlca
	nop
	nop
	ld l,h
	inc bc
	ld l,h
	inc bc
	inc bc
	nop
	ld l,003h
	ld d,00fh
	nop
	nop
	ld a,(03509h)
	add hl,bc
	nop
	nop
	ld l,h
	inc bc
	ld l,h
	rlca
	ld l,h
	rlca
	ld l,h
	rlca
	ld l,h
	rlca
	inc bc
	nop
	ld a,(01403h)
	rrca
	ld l,003h
	jr c,$+11
	inc sp
	add hl,bc
	ld (bc),a
	nop
	ld l,h
	rlca
	ld d,00fh
	jr nc,$+5
	ld (hl),009h
	ld sp,00009h
	nop
	jr c,l4b0dh
	ld l,h
	rlca
	ld l,h
l4b0dh:
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	inc bc
	nop
	ld (hl),003h
	ld d,00fh
	ld sp,03503h
	add hl,bc
	jr nc,$+11
	ld bc,l6c00h
	ld (bc),a
	dec c
	rrca
	dec (hl)
	inc bc
	ld (hl),009h
	ld sp,00109h
	nop
	dec (hl)
	inc bc
	ld l,h
	rlca
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,00003h
	ld (hl),003h
	dec c
	rrca
	inc sp
	inc bc
	dec (hl)
	add hl,bc
	jr nc,$+11
	ld bc,l6c00h
	ld bc,0076ch
	ld l,h
	ld bc,0016ch
	ld l,h
	ld bc,00000h
	dec (hl)
	inc bc
	inc d
	rrca
	jr c,$+5
	inc sp
	add hl,bc
	ld l,009h
	ld (bc),a
	nop
	ld l,h
	ld bc,00f12h
	ld (hl),003h
	ld sp,02c09h
	add hl,bc
	nop
	nop
	inc sp
	inc bc
	ld l,h
	rlca
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	inc bc
	nop
	ld sp,01103h
	rrca
	dec (hl)
	inc bc
	ld sp,02c09h
	add hl,bc
	ld bc,00000h
	nop
	jr l4b93h
	jr nc,l4b89h
	inc sp
	add hl,bc
	inc l
l4b89h:
	add hl,bc
	ld bc,01800h
	rrca
	ld l,h
	dec c
	ld hl,(00003h)
l4b93h:
	nop
	nop
	nop
	inc bc
	nop
	ld l,h
	dec c
	jr l4babh
	jr nc,l4ba1h
	nop
	nop
	nop
l4ba1h:
	nop
	nop
	nop
	jr $+17
	ld l,h
	dec c
	ld hl,(00003h)
l4babh:
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	jr nc,l4bb9h
	nop
	nop
	nop
l4bb9h:
	nop
	ld (bc),a
	nop
	ld l,h
	dec c
	nop
	nop
	ld l,h
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	jr $+17
	nop
	nop
	jr nc,l4bd1h
	jr c,$+11
	dec h
l4bd1h:
	add hl,bc
	inc bc
	nop
	ld l,h
	dec c
	jr l4be7h
	ld hl,(00003h)
	nop
	nop
	nop
	ld bc,01800h
	rrca
	ld l,h
	dec c
	jr nc,$+5
	ld h,a
l4be7h:
	ld bc,00167h
	ld bc,l6c00h
	dec c
	jr l4bffh
	ld hl,(00003h)
	nop
	nop
	nop
	inc bc
	nop
	ld h,c
	nop
	nop
	nop
	jr nc,l4c01h
	nop
l4bffh:
	nop
	nop
l4c01h:
	nop
	ld bc,00000h
	nop
	ld l,h
	dec c
	ld l,h
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l4c23h
	jr nc,l4c19h
	inc a
	add hl,bc
	add hl,hl
l4c19h:
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	add hl,de
	rrca
	ld sp,00005h
l4c23h:
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
	inc bc
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld de,l610fh
	nop
	inc sp
	dec b
	nop
	nop
	nop
	nop
	ld bc,l6c00h
	dec c
	ld de,0350fh
	inc bc
	inc l
	add hl,bc
	daa
	add hl,bc
	ld (bc),a
	nop
	ld de,06c0fh
	dec c
	dec (hl)
	inc bc
	daa
	rlca
	inc l
	dec bc
	ld (bc),a
	nop
	ld l,h
	dec c
	ld de,0350fh
	inc bc
	inc l
	add hl,bc
	daa
	add hl,bc
	ld (bc),a
	nop
	dec b
	rrca
	ld l,h
	dec c
	dec (hl)
	inc bc
	daa
	rlca
	inc l
	dec bc
	ld bc,00000h
	nop
	ld h,c
	nop
	dec (hl)
	inc bc
	inc l
	add hl,bc
	daa
	add hl,bc
	nop
	nop
	ld l,h
	dec c
	nop
	nop
	ld l,h
	inc bc
	ld l,h
	inc bc
	ld l,h
	inc bc
	nop
	nop
	ld de,0000fh
	nop
	dec (hl)
	inc bc
	inc l
	add hl,bc
	daa
	add hl,bc
	ld (bc),a
	nop
	ld l,h
	dec c
	ld de,0350fh
	inc bc
	daa
	rlca
	inc l
	dec bc
	ld (bc),a
	nop
	ld de,06c0fh
	dec c
	dec (hl)
	inc bc
	inc l
	add hl,bc
	daa
	add hl,bc
	ld (bc),a
	nop
	ld l,h
	dec c
	dec b
	rrca
	dec (hl)
	inc bc
	daa
	rlca
	inc l
	dec bc
	ld bc,l6100h
	nop
	nop
	nop
	dec (hl)
	inc bc
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	nop
	nop
	nop
	nop
	ld l,h
	dec c
	ld l,h
	ld bc,00000h
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
	ld h,005h
	inc l
	add hl,bc
	daa
	add hl,bc
	inc bc
	nop
	nop
	nop
	nop
	nop
	daa
	dec b
	ld hl,(02509h)
	add hl,bc
	inc bc
	nop
	nop
	nop
	nop
	nop
	jr z,l4cffh
	daa
	add hl,bc
	inc l
	add hl,bc
	inc bc
l4cffh:
	nop
	nop
	nop
	ld a,(bc)
	rrca
	add hl,hl
	add hl,bc
	add hl,hl
	add hl,bc
	ld l,009h
	ld bc,00000h
	nop
	ld l,h
	dec c
	nop
	nop
	daa
	add hl,bc
	inc l
	add hl,bc
	nop
	nop
	nop
	nop
	ld a,(bc)
	rrca
	ld h,a
	dec b
	add hl,hl
	add hl,bc
	ld l,009h
	ld bc,00a00h
	rrca
	ld l,h
	dec c
	nop
	nop
	inc l
	add hl,bc
	ld sp,00109h
	nop
	ld l,h
	dec c
	ld d,00fh
	ld l,e
	ld bc,00000h
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	ld l,h
	dec c
	nop
	nop
	jr nz,l4d4dh
	inc h
	add hl,bc
	nop
	nop
	nop
	nop
	ld d,00fh
	nop
l4d4dh:
	nop
	dec h
	add hl,bc
	add hl,hl
	add hl,bc
	ld (bc),a
	nop
	ld a,(bc)
	rrca
	ld l,h
	dec c
	nop
	nop
	inc h
	add hl,bc
	daa
	add hl,bc
	ld bc,l6c00h
	dec c
	ld a,(bc)
	rrca
	ld l,e
	ld bc,00925h
	add hl,hl
	add hl,bc
	ld bc,l6100h
	nop
	ld l,h
	dec c
	nop
	nop
	daa
	add hl,bc
	inc l
	add hl,bc
	nop
	nop
	nop
	nop
	ld a,(bc)
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	nop
	ld a,(bc)
	rrca
	ld l,h
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,l6c00h
	dec c
	ld a,(bc)
	rrca
	ld l,e
	ld bc,00929h
	dec e
	add hl,bc
	ld bc,l6100h
	nop
	ld l,h
	dec c
	nop
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
	nop
	nop
	ld h,a
	ld bc,00167h
	ld (bc),a
	nop
	ld d,00fh
	ld l,h
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	dec c
	rrca
	inc l
	add hl,bc
	inc l
	add hl,bc
	ld sp,00109h
	nop
	nop
	nop
	ld l,h
	dec c
	nop
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
	ld h,a
	dec b
	ld h,a
	ld bc,00167h
	ld bc,00d00h
	rrca
	ld l,h
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,l6c00h
	dec c
	add hl,de
	rrca
	ld l,e
	ld bc,00929h
	inc l
	add hl,bc
	ld (bc),a
	nop
	ld h,c
	nop
	ld l,h
	dec c
	nop
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
	rrca
	nop
	nop
	daa
	add hl,bc
	ld hl,(00209h)
	nop
	dec c
	rrca
	ld l,h
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,l6c00h
	dec c
	dec c
	rrca
	ld l,e
	ld bc,00929h
	inc l
	add hl,bc
	ex af,af'
	nop
	ld h,c
	nop
	ld l,h
	dec c
	nop
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
	dec h
	add hl,bc
	add hl,hl
	add hl,bc
	ld bc,00d00h
	rrca
	ld l,h
	dec c
	nop
	nop
	daa
	add hl,bc
	ld hl,(00109h)
	nop
	ld l,h
	dec c
	dec c
	rrca
	ld l,e
	ld bc,00000h
	nop
	nop
	ld bc,l6100h
	nop
	ld l,h
	dec c
	nop
	nop
	inc h
	add hl,bc
	daa
	add hl,bc
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	nop
	nop
	dec h
	add hl,bc
	add hl,hl
	add hl,bc
	ld (bc),a
	nop
	add hl,de
	rrca
	ld l,h
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	daa
	dec b
	ld (03309h),hl
	add hl,bc
	ld bc,00000h
	nop
	ld l,h
	dec c
	add hl,hl
	dec b
	inc h
	add hl,bc
	dec (hl)
	add hl,bc
	nop
	nop
	nop
	nop
	rrca
	rrca
	dec hl
	dec b
	nop
	nop
	nop
	nop
	ld bc,00f00h
	rrca
	ld l,h
	dec c
	daa
	dec b
	jr nz,l4eb5h
	ld sp,00109h
	nop
	ld l,h
	dec c
	dec de
	rrca
	add hl,hl
l4eb5h:
	dec b
	ld (03309h),hl
	add hl,bc
	ld (bc),a
	nop
	ld h,c
	nop
	ld l,h
	dec c
	dec hl
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec de
	rrca
	inc l
	dec b
	ld e,009h
	jr nc,$+11
	ld (bc),a
	nop
	rrca
	rrca
	ld l,h
	dec c
	add hl,hl
	dec b
	jr nz,l4ee5h
	ld sp,00109h
	nop
	ld l,h
	dec c
	rrca
	rrca
	dec hl
l4ee5h:
	dec b
	nop
	nop
	nop
	nop
	ld bc,l6100h
	nop
	ld l,h
	dec c
	inc l
	dec b
	ld e,009h
	ld l,009h
	nop
	nop
	nop
	nop
	rrca
	rrca
	ld l,005h
	dec e
	add hl,bc
	jr nc,l4f0bh
	ex af,af'
	nop
	rrca
	rrca
	ld l,h
	dec c
	dec hl
	dec b
	dec de
l4f0bh:
	add hl,bc
	inc l
	add hl,bc
	ex af,af'
	nop
	ld l,h
	dec c
	rrca
	rrca
	inc l
	dec b
	dec e
	add hl,bc
	ld l,009h
	ld bc,l6100h
	nop
	ld l,h
	dec c
	ld l,005h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec de
	rrca
	jr nc,l4f33h
	nop
	nop
	nop
	nop
	ld (bc),a
l4f33h:
	nop
	dec de
	rrca
	ld l,h
	dec c
	inc l
	dec b
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld l,005h
	add hl,hl
	add hl,bc
	inc l
	add hl,bc
	ld bc,00000h
	nop
	ld l,h
	dec c
	jr nc,l4f57h
	nop
	nop
	nop
	nop
	nop
l4f57h:
	nop
	nop
	nop
	ld a,(bc)
	rrca
	ld sp,00005h
	nop
	nop
	nop
	ex af,af'
	nop
	ld a,(bc)
	rrca
	ld l,h
	dec c
	ld l,005h
	ld h,a
	ld bc,00167h
	ex af,af'
	nop
	ld l,h
	dec c
	ld d,00fh
	jr nc,l4f7bh
	nop
	nop
	nop
	nop
	ld (bc),a
l4f7bh:
	nop
	ld h,c
	nop
	ld l,h
	dec c
	ld sp,00005h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,00fh
	inc sp
	dec b
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld a,(bc)
	rrca
	ld l,h
	dec c
	dec (hl)
	dec b
	nop
	nop
	nop
	nop
	ld bc,l6c00h
	dec c
	ld a,(bc)
	rrca
	inc sp
	dec b
	daa
	add hl,bc
	ld hl,(00109h)
	nop
	ld h,c
	nop
	ld l,h
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld de,0000fh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,l6c00h
	dec c
	ld de,0000fh
	nop
	ld h,a
	ld bc,00167h
	nop
	nop
	ld h,c
	nop
	rrca
	rrca
	ld sp,00005h
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	ld de,0000fh
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
	rrca
	nop
	nop
	ld sp,03509h
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	inc d
	rrca
	nop
	nop
	inc sp
	add hl,bc
	ld (hl),009h
	rlca
	nop
	nop
	nop
	ld a,(bc)
	rrca
	add hl,hl
	dec b
	dec (hl)
	add hl,bc
	jr c,$+11
	ld bc,00000h
	nop
	ld l,h
	dec c
	nop
	nop
	ld sp,03509h
	add hl,bc
	inc bc
	nop
	nop
	nop
	ld a,(bc)
	rrca
	ld h,a
	ex af,af'
	jr nc,l5029h
	inc sp
	add hl,bc
	ld bc,00a00h
	rrca
	ld l,h
	dec c
	nop
l5029h:
	nop
	ld sp,03509h
	add hl,bc
	ld bc,l6c00h
	dec c
	ld d,00fh
	ld l,e
	ld bc,00000h
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	ld l,h
	dec c
	nop
	nop
	inc l
	add hl,bc
	ld sp,00309h
	nop
	nop
	nop
	ld d,00fh
	nop
	nop
	ld sp,03509h
	add hl,bc
	ld (bc),a
	nop
	ld a,(bc)
	rrca
	ld l,h
	dec c
	nop
	nop
	jr nc,l5065h
	inc sp
	add hl,bc
	ld bc,l6c00h
	dec c
	ld a,(bc)
	rrca
	ld l,e
l5065h:
	ld bc,00931h
	dec (hl)
	add hl,bc
	ld bc,l6100h
	nop
	ld l,h
	dec c
	nop
	nop
	inc sp
	add hl,bc
	jr c,l507fh
	inc bc
	nop
	nop
	nop
	ld a,(bc)
	rrca
	nop
	nop
	nop
l507fh:
	nop
	nop
	nop
	ld bc,00a00h
	rrca
	ld l,h
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,l6c00h
	dec c
	ld a,(bc)
	rrca
	ld l,e
	ld bc,00c27h
	inc l
	inc c
	ld bc,l6100h
	nop
	ld l,h
	dec c
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
	ld d,00fh
	nop
	nop
	ld h,a
	ld bc,00167h
	ld (bc),a
	nop
	ld d,00fh
	ld l,h
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	dec c
	rrca
	inc l
	dec b
	jr c,l50d1h
	dec h
	add hl,bc
	ld bc,00000h
	nop
	ld l,h
	dec c
	nop
l50d1h:
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
	ld h,a
	ex af,af'
	ld h,a
	ld bc,00167h
	ld bc,00d00h
	rrca
	ld l,h
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,l6c00h
	dec c
	add hl,de
	rrca
	ld l,e
	ld bc,00935h
	ld l,009h
	ld (bc),a
	nop
	ld h,c
	nop
	ld l,h
	dec c
	nop
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
	rrca
	nop
	nop
	inc sp
	add hl,bc
	inc l
	add hl,bc
	ld (bc),a
	nop
	dec c
	rrca
	ld l,h
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,l6c00h
	dec c
	dec c
	rrca
	ld l,e
	ld bc,00935h
	ld l,009h
	ld bc,l6100h
	nop
	ld l,h
	dec c
	nop
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
	ld sp,02a09h
	add hl,bc
	ld bc,00d00h
	rrca
	ld l,h
	dec c
	nop
	nop
	inc sp
	add hl,bc
	inc l
	add hl,bc
	ld bc,l6c00h
	dec c
	dec c
	rrca
	ld l,e
	ld bc,00000h
	nop
	nop
	ld bc,l6100h
	nop
	ld l,h
	dec c
	nop
	nop
	jr nc,l516dh
	add hl,hl
	add hl,bc
	inc bc
	nop
	nop
	nop
	add hl,de
	rrca
	nop
l516dh:
	nop
	ld sp,02a09h
	add hl,bc
	ld (bc),a
	nop
	add hl,de
	rrca
	ld l,h
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	rrca
	rrca
	daa
	dec b
	dec hl
	add hl,bc
	jr nc,l5193h
	ld bc,00000h
	nop
	ld l,h
	dec c
	add hl,hl
	dec b
	nop
l5193h:
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	rrca
	rrca
	dec hl
	dec b
	inc l
	add hl,bc
	jr nc,l51abh
	ld bc,00f00h
	rrca
	ld l,h
	dec c
	daa
	dec b
	dec hl
l51abh:
	add hl,bc
	jr nc,l51b7h
	ld bc,l6c00h
	dec c
	dec de
	rrca
	add hl,hl
	dec b
	nop
l51b7h:
	nop
	nop
	nop
	ld (bc),a
	nop
	ld h,c
	nop
	ld l,h
	dec c
	dec hl
	dec b
	ld l,009h
	ld sp,00309h
	nop
	nop
	nop
	dec de
	rrca
	inc l
	dec b
	dec hl
	add hl,bc
	jr nc,l51dbh
	ld (bc),a
	nop
	rrca
	rrca
	ld l,h
	dec c
	add hl,hl
	dec b
	nop
l51dbh:
	nop
	nop
	nop
	ld bc,l6c00h
	dec c
	rrca
	rrca
	dec hl
	dec b
	jr nc,l51f1h
	inc sp
	add hl,bc
	ld bc,l6100h
	nop
	ld l,h
	dec c
	inc l
l51f1h:
	dec b
	dec hl
	add hl,bc
	jr nc,l51ffh
	inc bc
	nop
	nop
	nop
	rrca
	rrca
	ld l,005h
	nop
l51ffh:
	nop
	nop
	nop
	ld bc,00f00h
	rrca
	ld l,h
	dec c
	dec hl
	dec b
	ld sp,03509h
	add hl,bc
	ld bc,l6c00h
	dec c
	rrca
	rrca
	inc l
	dec b
	dec hl
	add hl,bc
	jr nc,l5223h
	ld bc,l6100h
	nop
	ld l,h
	dec c
	ld l,005h
	nop
l5223h:
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	dec de
	rrca
	jr nc,l5233h
	ld (03609h),a
	add hl,bc
	ld (bc),a
l5233h:
	nop
	dec de
	rrca
	ld l,h
	dec c
	inc l
	dec b
	dec hl
	add hl,bc
	jr nc,l5247h
	ld (bc),a
	nop
	ld h,c
	nop
	ld a,(bc)
	rrca
	ld l,005h
	inc sp
l5247h:
	add hl,bc
	scf
	add hl,bc
	ld bc,00000h
	nop
	ld l,h
	dec c
	ld l,005h
	dec hl
	add hl,bc
	jr nc,l525fh
	nop
	nop
	nop
	nop
	ld a,(bc)
	rrca
	ld l,005h
	nop
l525fh:
	nop
	nop
	nop
	ld bc,00a00h
	rrca
	ld l,h
	dec c
	ld l,h
	rlca
	inc (hl)
	add hl,bc
	jr c,l5277h
	ld bc,l6c00h
	dec c
	ld d,00fh
	ld l,005h
	dec hl
l5277h:
	add hl,bc
	jr nc,l5283h
	ld (bc),a
	nop
	ld h,c
	nop
	ld l,h
	dec c
	jr nc,l5287h
	nop
l5283h:
	nop
	nop
	nop
	nop
l5287h:
	nop
	nop
	nop
	ld d,00fh
	ld l,h
	rlca
	dec (hl)
	add hl,bc
	add hl,sp
	add hl,bc
	ld (bc),a
	nop
	ld a,(bc)
	rrca
	ld l,h
	dec c
	ld h,d
	ld a,(bc)
	dec hl
	add hl,bc
	jr nc,$+11
	ld bc,l6c00h
	dec c
	dec c
	rrca
	dec h
	rrca
	jr nc,l52b1h
	jr nc,l52b3h
	ld bc,l6100h
	nop
	nop
	nop
	ld h,d
l52b1h:
	dec bc
	inc a
l52b3h:
	add hl,bc
	dec (hl)
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	ld h,d
	ld a,(bc)
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld (bc),a
	nop
	nop
	nop
	nop
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
	nop
	rrca
	rrca
	jr nz,l52e5h
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	ld h,d
	dec bc
	nop
	nop
	nop
l52e5h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	dec bc
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	ld de,0290fh
	dec b
	inc l
	add hl,bc
	inc h
	add hl,bc
	ld bc,00500h
	rrca
	ld l,h
	dec c
	dec hl
	dec b
	dec hl
	add hl,bc
	ld (00309h),hl
	nop
	ld l,h
	dec c
	ld de,02c0fh
	dec b
	add hl,hl
	add hl,bc
	jr nz,l532bh
	inc bc
	nop
	ld de,06c0fh
	dec c
	add hl,hl
	dec b
	dec hl
l532bh:
	add hl,bc
	ld (00309h),hl
	nop
	nop
	nop
	ld h,c
	nop
	jr nc,l533bh
	inc l
	add hl,bc
	inc h
	add hl,bc
	ld (bc),a
l533bh:
	nop
	ld l,h
	dec c
	nop
	nop
	ld l,005h
	ld l,009h
	dec h
	add hl,bc
	nop
	nop
	ld de,0000fh
	nop
	inc l
	dec b
	inc l
	add hl,bc
	inc h
	add hl,bc
	inc bc
	nop
	ld l,h
	dec c
	ld de,02e0fh
	dec b
	ld l,009h
	dec h
	add hl,bc
	ld bc,00500h
	rrca
	ld l,h
	dec c
	jr nc,$+7
	inc l
	add hl,bc
	inc h
	add hl,bc
	ld bc,l6c00h
	dec c
	rrca
	rrca
	inc l
	dec b
	add hl,hl
	add hl,bc
	ld (00309h),hl
	nop
	ld h,c
	nop
	ld l,h
	dec c
	inc sp
	dec b
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	inc bc
	nop
	nop
	nop
	nop
	nop
	ld sp,00005h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld de,0300fh
	dec b
	inc l
	add hl,bc
	inc h
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	rrca
	rrca
	ld l,005h
	daa
	add hl,bc
	ld (00309h),hl
	nop
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
	inc bc
	nop
	nop
	nop
	nop
	nop
	dec hl
	dec b
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	dec c
	rrca
	dec h
	dec b
	add hl,hl
	add hl,bc
	dec e
	add hl,bc
	ld bc,00d00h
	rrca
	ld l,h
	dec c
	daa
	dec b
	dec h
	add hl,bc
	add hl,de
	add hl,bc
	inc bc
	nop
	ld l,h
	dec c
	dec c
	rrca
	add hl,hl
	dec b
	add hl,hl
	add hl,bc
	dec e
	add hl,bc
	inc bc
	nop
	dec c
	rrca
	ld l,h
	dec c
	dec h
	dec b
	dec h
	add hl,bc
	add hl,de
	add hl,bc
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	inc l
	dec b
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld (bc),a
	nop
	ld l,h
	dec c
	nop
	nop
	add hl,hl
	dec b
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
	jr nc,l5413h
	add hl,hl
	add hl,bc
	dec e
	add hl,bc
	inc bc
l5413h:
	nop
	ld l,h
	dec c
	dec c
	rrca
	inc l
	dec b
	dec h
	add hl,bc
	add hl,de
	add hl,bc
	ld bc,00d00h
	rrca
	ld l,h
	dec c
	ld l,005h
	add hl,hl
	add hl,bc
	dec e
	add hl,bc
	ld bc,l6c00h
	dec c
	inc c
	rrca
	jr nc,l5437h
	dec h
	add hl,bc
	add hl,de
	add hl,bc
	inc bc
l5437h:
	nop
	ld h,c
	nop
	ld l,h
	dec c
	ld sp,l6c05h
	rlca
	ld l,h
	rlca
	inc bc
	nop
	nop
	nop
	nop
	nop
	jr nc,l544fh
	nop
	nop
	nop
	nop
	nop
l544fh:
	nop
	nop
	nop
	ex af,af'
	rrca
	jr c,l545bh
	ld l,009h
	daa
	add hl,bc
	ld (bc),a
l545bh:
	nop
	nop
	nop
	rrca
	rrca
	scf
	dec b
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
	dec (hl)
	dec b
	inc l
	add hl,bc
	dec h
	add hl,bc
	inc bc
	nop
	nop
	nop
	nop
	nop
	inc sp
	dec b
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	dec b
	rrca
	add hl,hl
	dec b
	jr nc,l5491h
	daa
	add hl,bc
	ld bc,01100h
	rrca
	ld l,h
	dec c
	dec hl
l5491h:
	dec b
	ld l,009h
	dec h
	add hl,bc
	inc bc
	nop
	ld l,h
	dec c
	dec b
	rrca
	inc l
	dec b
	inc l
	add hl,bc
	inc h
	add hl,bc
	inc bc
	nop
	ld de,06c0fh
	dec c
	add hl,hl
	dec b
	jr nc,$+11
	daa
	add hl,bc
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	jr nc,l54bbh
	ld l,009h
	dec h
	add hl,bc
	ld (bc),a
l54bbh:
	nop
	ld l,h
	dec c
	nop
	nop
	ld l,005h
	inc l
	add hl,bc
	inc h
	add hl,bc
	nop
	nop
	ld de,0000fh
	nop
	inc l
	dec b
	dec hl
	add hl,bc
	ld (00309h),hl
	nop
	ld l,h
	dec c
	dec b
	rrca
	ld l,005h
	ld l,009h
	dec h
	add hl,bc
	ld bc,01100h
	rrca
	ld l,h
	dec c
	jr nc,$+7
	inc l
	add hl,bc
	inc h
	add hl,bc
	ld bc,l6c00h
	dec c
	inc de
	rrca
	inc l
	dec b
	add hl,hl
	add hl,bc
	ld (00309h),hl
	nop
	ld h,c
	nop
	ld l,h
	ld (bc),a
	inc sp
	dec b
	ld l,h
	dec c
	ld l,h
	dec c
	inc bc
	nop
	nop
	nop
	ld l,h
	add hl,bc
	ld sp,00005h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	rrca
	jr nc,l551bh
	add hl,hl
	add hl,bc
	ld (00209h),hl
l551bh:
	nop
	nop
	nop
	rrca
	rrca
	ld l,005h
	dec hl
	add hl,bc
	inc h
	add hl,bc
	inc bc
	nop
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
	inc bc
	nop
	nop
	nop
	nop
	nop
	dec hl
	dec b
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	inc d
	rrca
	dec h
	dec b
	add hl,hl
	add hl,bc
	dec e
	add hl,bc
	ld bc,01400h
	rrca
	ld l,h
	dec c
	daa
	dec b
	dec h
	add hl,bc
	add hl,de
	add hl,bc
	inc bc
	nop
	ld l,h
	dec c
	ex af,af'
	rrca
	add hl,hl
	dec b
	add hl,hl
	add hl,bc
	dec e
	add hl,bc
	inc bc
	nop
	inc d
	rrca
	ld l,h
	dec c
	dec h
	dec b
	dec h
	add hl,bc
	add hl,de
	add hl,bc
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	inc l
	dec b
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld (bc),a
	nop
	ld l,h
	dec c
	nop
	nop
	add hl,hl
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	inc d
	rrca
	nop
	nop
	jr nc,l5593h
	add hl,hl
	add hl,bc
	jr nz,l559bh
	inc bc
l5593h:
	nop
	ld h,c
	nop
	inc d
	rrca
	inc l
	dec b
	dec hl
l559bh:
	add hl,bc
	ld (00109h),hl
	nop
	nop
	nop
	ld de,02e0fh
	dec b
	inc l
	add hl,bc
	inc h
	add hl,bc
	ld bc,00000h
	nop
	inc de
	rrca
	jr nc,l55b7h
	dec hl
	add hl,bc
	ld (00309h),hl
l55b7h:
	nop
	inc de
	rrca
	ld l,h
	dec c
	ld sp,02905h
	add hl,bc
	jr nz,l55cbh
	inc bc
	nop
	ld h,c
	nop
	nop
	nop
	jr nc,l55cfh
	daa
l55cbh:
	add hl,bc
	rra
	add hl,bc
	nop
l55cfh:
	nop
	nop
	nop
	inc de
	rrca
	jr c,l55dbh
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	ld (bc),a
l55dbh:
	nop
	nop
	nop
	rrca
	rrca
	scf
	dec b
	daa
	add hl,bc
	rra
	add hl,bc
	inc bc
	nop
	nop
	nop
	nop
	nop
	dec (hl)
	dec b
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
	inc sp
	dec b
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld de,0290fh
	dec b
	inc sp
	add hl,bc
	inc l
	add hl,bc
	ld bc,00500h
	rrca
	ld l,h
	dec c
	dec hl
	dec b
	ld sp,02b09h
	add hl,bc
	inc bc
	nop
	ld l,h
	dec c
	ld de,02c0fh
	dec b
	jr nc,l5629h
	add hl,hl
	add hl,bc
	inc bc
	nop
	ld de,06c0fh
	dec c
	add hl,hl
l5629h:
	dec b
	ld sp,02b09h
	add hl,bc
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	jr nc,l563bh
	jr nc,$+11
	add hl,hl
	add hl,bc
	ld (bc),a
l563bh:
	nop
	ld l,h
	dec c
	nop
	nop
	ld l,005h
	ld l,009h
	daa
	add hl,bc
	nop
	nop
	ld de,0000fh
	nop
	inc l
	dec b
	inc l
	add hl,bc
	dec h
	add hl,bc
	inc bc
	nop
	ld l,h
	dec c
	ld de,02e0fh
	dec b
	jr nc,$+11
	add hl,hl
	add hl,bc
	ld bc,00500h
	rrca
	ld l,h
	dec c
	jr nc,$+7
	ld l,009h
	daa
	add hl,bc
	ld bc,l6c00h
	dec c
	rrca
	rrca
	inc l
	dec b
	inc l
	add hl,bc
	dec h
	add hl,bc
	inc bc
	nop
	ld h,c
	nop
	ld l,h
	dec c
	inc sp
	dec b
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	inc bc
	nop
	nop
	nop
	nop
	nop
	ld sp,00005h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld de,0300fh
	dec b
	dec hl
	add hl,bc
	inc h
	add hl,bc
	ld (bc),a
	nop
	nop
	nop
	rrca
	rrca
	ld l,005h
	inc l
	add hl,bc
	dec h
	add hl,bc
	inc bc
	nop
	nop
	nop
	nop
	nop
	inc l
	dec b
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	inc bc
	nop
	nop
	nop
	nop
	nop
	dec hl
	dec b
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	dec c
	rrca
	dec h
	dec b
	jr nz,l56d1h
	dec h
	add hl,bc
	ld bc,00d00h
	rrca
	ld l,h
	dec c
	daa
l56d1h:
	dec b
	ld (02709h),hl
	add hl,bc
	inc bc
	nop
	ld l,h
	dec c
	dec c
	rrca
	add hl,hl
	dec b
	dec h
	add hl,bc
	add hl,hl
	add hl,bc
	inc bc
	nop
	dec c
	rrca
	ld l,h
	dec c
	dec h
	dec b
	daa
	add hl,bc
	inc l
	add hl,bc
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	inc l
	dec b
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld (bc),a
	nop
	ld l,h
	dec c
	nop
	nop
	add hl,hl
	dec b
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
	jr nc,l5713h
	add hl,hl
	add hl,bc
	ld l,009h
	inc bc
l5713h:
	nop
	ld l,h
	dec c
	dec c
	rrca
	inc l
	dec b
	inc l
	add hl,bc
	inc l
	add hl,bc
	ld bc,00d00h
	rrca
	ld l,h
	dec c
	ld l,005h
	ld l,009h
	dec hl
	add hl,bc
	ld bc,l6c00h
	dec c
	inc c
	rrca
	jr nc,l5737h
	jr nc,$+11
	add hl,hl
	add hl,bc
	inc bc
l5737h:
	nop
	ld h,c
	nop
	ld l,h
	dec c
	ld sp,l6c05h
	add hl,bc
	ld l,h
	add hl,bc
	inc bc
	nop
	nop
	nop
	nop
	nop
	jr nc,l574fh
	nop
	nop
	nop
	nop
	nop
l574fh:
	nop
	nop
	nop
	ex af,af'
	rrca
	jr c,l575bh
	ld l,009h
	daa
	add hl,bc
	ld (bc),a
l575bh:
	nop
	nop
	nop
	rrca
	rrca
	scf
	dec b
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
	dec (hl)
	dec b
	inc l
	add hl,bc
	add hl,hl
	add hl,bc
	inc bc
	nop
	nop
	nop
	nop
	nop
	inc sp
	dec b
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	dec b
	rrca
	add hl,hl
	dec b
	jr nc,l5791h
	daa
	add hl,bc
	ld bc,01100h
	rrca
	ld l,h
	dec c
	dec hl
l5791h:
	dec b
	inc l
	add hl,bc
	inc h
	add hl,bc
	inc bc
	nop
	ld l,h
	dec c
	dec b
	rrca
	inc l
	dec b
	jr nc,l57a9h
	daa
	add hl,bc
	inc bc
	nop
	ld de,06c0fh
	dec c
	add hl,hl
l57a9h:
	dec b
	inc l
	add hl,bc
	inc h
	add hl,bc
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	jr nc,l57bbh
	jr nc,$+11
	daa
	add hl,bc
	ld (bc),a
l57bbh:
	nop
	ld l,h
	dec c
	nop
	nop
	ld l,005h
	ld l,h
	rlca
	ld l,h
	rlca
	nop
	nop
	ld de,0000fh
	nop
	inc l
	dec b
	inc l
	add hl,bc
	inc h
	add hl,bc
	inc bc
	nop
	ld l,h
	dec c
	dec b
	rrca
	ld l,005h
	jr nc,$+11
	daa
	add hl,bc
	ld bc,01100h
	rrca
	ld l,h
	dec c
	jr nc,$+7
	inc l
	add hl,bc
	inc h
	add hl,bc
	ld bc,l6c00h
	dec c
	dec b
	rrca
	inc l
	dec b
	jr nc,l57fdh
	daa
	add hl,bc
	inc bc
	nop
	ld h,c
	nop
	ld l,h
	dec c
	inc sp
l57fdh:
	dec b
	ld l,h
	add hl,bc
	ld l,h
	add hl,bc
	inc bc
	nop
	nop
	nop
	dec b
	rrca
	ld sp,00005h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nc,l581bh
	jr nc,$+11
	add hl,hl
	add hl,bc
	ld (bc),a
l581bh:
	nop
	nop
	nop
	dec c
	rrca
	ld l,005h
	ld sp,02b09h
	add hl,bc
	inc bc
	nop
	nop
	nop
	rrca
	rrca
	inc l
	dec b
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	ld de,02b0fh
	dec b
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	inc bc
	rrca
	scf
	dec b
	inc sp
	add hl,bc
	ld l,009h
	ld (bc),a
	nop
	rrca
	rrca
	ld l,h
	dec c
	scf
	dec b
	ld l,009h
	daa
	add hl,bc
	ld (bc),a
	nop
	ld l,h
	dec c
	inc bc
	rrca
	scf
	dec b
	inc sp
	add hl,bc
	ld l,009h
	inc bc
	nop
	rrca
	rrca
	ld l,h
	dec c
	scf
	dec b
	ld l,009h
	daa
	add hl,bc
	inc bc
	nop
	nop
	nop
	ld h,c
	nop
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld (bc),a
	nop
	ld l,h
	dec c
	nop
	nop
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	inc bc
	nop
	rrca
	rrca
	nop
	nop
	scf
	dec b
	inc sp
	add hl,bc
	ld l,009h
	inc bc
	nop
	ld l,h
	dec c
	inc bc
	rrca
	scf
	dec b
	ld l,009h
	daa
	add hl,bc
	nop
	nop
	rrca
	rrca
	ld l,h
	dec c
	scf
	dec b
	inc sp
	add hl,bc
	ld l,009h
	ld (bc),a
	nop
	ld l,h
	dec c
	inc bc
	rrca
	scf
	dec b
	ld l,009h
	daa
	add hl,bc
	inc bc
	nop
	ld h,c
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	inc bc
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	nop
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	ld l,h
	ld (bc),a
	inc bc
	nop
	nop
	nop
	ld l,h
	ld (bc),a
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld (bc),a
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
	ld (bc),a
	nop
	rrca
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
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
	jr nz,$+52
	jr nz,l6037h
	jr nz,$+78
	ld h,l
	halt
	ld h,l
	ld l,h
	jr nz,l6047h
	jr nz,l6041h
	jr nz,l605ah
	ld h,l
	ld h,l
	ld (hl),b
	jr nz,l605eh
	ld l,a
	ld (hl),d
	ld h,l
	jr nz,$+82
	ld l,h
	ld h,c
	ld l,(hl)
	ld h,l
	ld (hl),h
	jr nz,l6047h
	jr nz,l6049h
	jr nz,l604bh
	jr nz,l604dh
	jr nz,$+34
	jr nz,$+34
	jr nz,l6053h
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
l6047h:
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
	jr c,l6050h
l6050h:
	ld bc,00100h
l6053h:
	ld (bc),a
	inc bc
l6055h:
	inc b
	dec b
l6057h:
	ld b,007h
l6059h:
	ex af,af'
l605ah:
	add hl,bc
l605bh:
	ld a,(bc)
	dec bc
l605dh:
	inc c
l605eh:
	dec c
l605fh:
	ld c,00fh
l6061h:
	djnz $+19
l6063h:
	ld (de),a
	inc de
	inc d
	dec d
	ld d,017h
	jr $+27
	ld a,(de)
	dec de
	inc e
	dec e
	ld e,01fh
	jr nz,l6094h
	ld (02423h),hl
	dec h
	ld h,027h
	jr z,l60a4h
	ld hl,(02c2bh)
	dec l
	ld l,02fh
	jr nc,l60b4h
	ld (03433h),a
	dec (hl)
	ld (hl),037h
	jr c,l608bh
l608bh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6094h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l60a4h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l60b4h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld d,00fh
	rrca
	rrca
	rrca
	rrca
	rra
	ld (01800h),hl
	add a,b
	add a,c
	add a,b
	add a,b
	add a,c
	ld c,00eh
	ld c,010h
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	rlca
	ld h,d
	rlca
	rrca
	ld a,(bc)
	ld h,d
	inc d
	ld h,c
	nop
	ld bc,l6a00h
	inc b
	ld l,c
	inc b
	rrca
	ld a,(bc)
	ld l,d
	inc b
	ld l,c
	inc b
	nop
	nop
	daa
	rrca
	daa
	rrca
	rrca
	ld a,(bc)
	inc sp
	dec bc
	inc sp
	dec bc
	ld bc,00f00h
	rrca
	rrca
	rrca
	inc bc
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	inc sp
	rrca
	inc sp
	rrca
	inc bc
	ld a,(bc)
	inc sp
	add hl,bc
	inc sp
	add hl,bc
	ld (bc),a
	nop
	inc bc
	rrca
	inc bc
	rrca
	inc bc
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00f00h
	rrca
	rrca
	rrca
	rrca
l620dh:
	ld a,(bc)
	inc sp
l620fh:
	ld b,033h
	ld b,003h
	nop
	rrca
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	ld bc,01b00h
	rrca
	dec de
	rrca
	rrca
	ld a,(bc)
	inc sp
	inc b
	inc sp
	inc b
	nop
	nop
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00300h
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	inc sp
	ld (bc),a
	inc sp
	ld (bc),a
	ld bc,00f00h
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	inc bc
	nop
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	inc sp
	ld bc,00133h
	ld (bc),a
	nop
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	rrca
	rrca
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc bc
	nop
	inc bc
	rrca
	inc bc
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc bc
	nop
	rrca
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	daa
	rrca
	daa
	rrca
	rrca
	ld a,(bc)
	inc sp
	add hl,bc
	inc sp
	add hl,bc
	ld bc,00f00h
	rrca
	rrca
	rrca
	inc bc
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	inc sp
	rrca
	inc sp
	rrca
	inc bc
	ld a,(bc)
	inc sp
	ld b,033h
	ld b,002h
	nop
	inc bc
	rrca
	inc bc
	rrca
	inc bc
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00f00h
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	inc sp
	inc b
	inc sp
	inc b
	inc bc
	nop
	rrca
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	dec de
	rrca
	dec de
	rrca
	rrca
	ld a,(bc)
	inc sp
	ld (bc),a
	inc sp
	ld (bc),a
	inc bc
	nop
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00600h
	rrca
	ld b,00fh
	ld b,00ah
	inc sp
	ld bc,00133h
	inc bc
	nop
	ld (de),a
	rrca
	ld (de),a
	rrca
	ld b,00ah
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00600h
	rrca
	ld b,00fh
	ld b,00ah
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld b,00fh
	ld b,00fh
	ld b,00ah
	nop
	nop
	nop
	nop
	nop
	nop
	ld (de),a
	rrca
	ld (de),a
	rrca
	ld b,00ah
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld b,00fh
	ld b,00fh
	ld b,00ah
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld bc,00f00h
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	daa
	rrca
	daa
	rrca
	rrca
	ld a,(bc)
	inc sp
	dec bc
	inc sp
	dec bc
	ld bc,00f00h
	rrca
	rrca
	rrca
	inc bc
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	inc sp
	rrca
	inc sp
	rrca
	inc bc
	ld a,(bc)
	inc sp
	add hl,bc
	inc sp
	add hl,bc
	ld (bc),a
	nop
	inc bc
	rrca
	inc bc
	rrca
	inc bc
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00f00h
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	inc sp
	ld b,033h
	ld b,003h
	nop
	rrca
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	dec de
	rrca
	dec de
	rrca
	rrca
	ld a,(bc)
	inc sp
	inc b
	inc sp
	inc b
	inc bc
	nop
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00300h
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	inc sp
	ld (bc),a
	inc sp
	ld (bc),a
	ld bc,00f00h
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	inc sp
	ld bc,00133h
	ld bc,00300h
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	rrca
	rrca
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	inc bc
	rrca
	inc bc
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc bc
	nop
	rrca
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	daa
	rrca
	daa
	rrca
	rrca
	ld a,(bc)
	inc sp
	add hl,bc
	inc sp
	add hl,bc
	ld bc,00f00h
	rrca
	rrca
	rrca
	inc bc
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	inc sp
	rrca
	inc sp
	rrca
	inc bc
	ld a,(bc)
	inc sp
	ld b,033h
	ld b,002h
	nop
	inc bc
	rrca
	inc bc
	rrca
	inc bc
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	rrca
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	inc sp
	inc b
	inc sp
	inc b
	ld bc,00f00h
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	ld (bc),a
	nop
	dec de
	rrca
	dec de
	rrca
	rrca
	ld a,(bc)
	inc sp
	ld (bc),a
	inc sp
	ld (bc),a
	inc bc
	nop
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	dec b
	rrca
	dec b
	rrca
	dec b
	ld a,(bc)
	inc sp
	ld bc,00133h
	inc bc
	nop
	ld de,0110fh
	rrca
	dec b
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	dec b
	rrca
	dec b
	rrca
	dec b
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc bc
	nop
	dec b
	rrca
	dec b
	rrca
	dec b
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld bc,01100h
	rrca
	ld de,0050fh
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	dec b
	rrca
	dec b
	rrca
	dec b
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld bc,00f00h
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	ld h,d
	inc d
	nop
	nop
	nop
	nop
	daa
	rrca
	daa
	rrca
	rrca
	ld a,(bc)
	inc sp
	inc c
	inc sp
	dec bc
	ld bc,00f00h
	rrca
	rrca
	rrca
	inc bc
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	inc sp
	rrca
	inc sp
	rrca
	inc bc
	ld a,(bc)
	inc sp
	ld a,(bc)
	inc sp
	add hl,bc
	ld (bc),a
	nop
	inc bc
	rrca
	inc bc
	rrca
	inc bc
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00f00h
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	inc sp
	ex af,af'
	inc sp
	ld b,003h
	nop
	rrca
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	ld bc,01b00h
	rrca
	dec de
	rrca
	rrca
	ld a,(bc)
	inc sp
	ld b,033h
	inc b
	nop
	nop
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00300h
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	inc sp
	inc b
	inc sp
	ld (bc),a
	ld bc,00f00h
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	inc bc
	nop
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	inc sp
	ld (bc),a
	inc sp
	ld bc,00002h
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	rrca
	rrca
	rrca
	rrca
	inc bc
	ld a,(bc)
	inc sp
	ld bc,00000h
	inc bc
	nop
	inc bc
	rrca
	inc bc
	rrca
	inc bc
	ld a,(bc)
	ld h,c
	nop
	nop
	nop
	nop
	nop
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc bc
	nop
	rrca
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	daa
	rrca
	daa
	rrca
	rrca
	ld a,(bc)
	inc sp
	add hl,bc
	inc sp
	add hl,bc
	ld bc,00f00h
	rrca
	rrca
	rrca
	inc bc
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	inc sp
	rrca
	inc sp
	rrca
	inc bc
	ld a,(bc)
	inc sp
	ld b,033h
	ld b,002h
	nop
	inc bc
	rrca
	inc bc
	rrca
	inc bc
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00f00h
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	inc sp
	inc b
	inc sp
	inc b
	inc bc
	nop
	rrca
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	dec de
	rrca
	dec de
	rrca
	rrca
	ld a,(bc)
	inc sp
	ld (bc),a
	inc sp
	ld (bc),a
	inc bc
	nop
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00600h
	rrca
	ld b,00fh
	ld b,00ah
	inc sp
	ld bc,00133h
	inc bc
	nop
	ld (de),a
	rrca
	ld (de),a
	rrca
	ld b,00ah
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00600h
	rrca
	ld b,00fh
	ld b,00ah
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld b,00fh
	ld b,00fh
	ld b,00ah
	nop
	nop
	nop
	nop
	nop
	nop
	ld (de),a
	rrca
	ld (de),a
	rrca
	ld b,00ah
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld b,00fh
	ld b,00fh
	ld b,00ah
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld bc,00f00h
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	daa
	rrca
	daa
	rrca
	rrca
	ld a,(bc)
	inc sp
	inc c
	inc sp
	dec bc
	ld bc,00f00h
	rrca
	rrca
	rrca
	inc bc
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	inc sp
	rrca
	inc sp
	rrca
	inc bc
	ld a,(bc)
	inc sp
	ld a,(bc)
	inc sp
	add hl,bc
	ld (bc),a
	nop
	inc bc
	rrca
	inc bc
	rrca
	inc bc
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00f00h
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	inc sp
	ex af,af'
	inc sp
	ld b,003h
	nop
	rrca
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	dec de
	rrca
	dec de
	rrca
	rrca
	ld a,(bc)
	inc sp
	ld b,033h
	inc b
	inc bc
	nop
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00300h
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	inc sp
	inc b
	inc sp
	ld (bc),a
	ld bc,00f00h
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	inc sp
	ld (bc),a
	inc sp
	ld bc,00001h
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	rrca
	rrca
	rrca
	rrca
	inc bc
	ld a,(bc)
	inc sp
	ld bc,00000h
	ld (bc),a
	nop
	inc bc
	rrca
	inc bc
	rrca
	inc bc
	ld a,(bc)
	ld h,c
	nop
	nop
	nop
	nop
	nop
l6700h:
	inc bc
	rrca
	inc bc
	rrca
	rrca
l6705h:
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc bc
	nop
	rrca
	rrca
	rrca
l670fh:
	rrca
	rrca
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	daa
	rrca
	daa
	rrca
	rrca
	ld a,(bc)
	inc sp
	add hl,bc
	inc sp
	add hl,bc
	ld bc,00f00h
	rrca
	rrca
	rrca
	inc bc
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	inc sp
	rrca
	inc sp
	rrca
	inc bc
	ld a,(bc)
	inc sp
	ld b,033h
	ld b,002h
	nop
	inc bc
	rrca
	inc bc
	rrca
	inc bc
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	rrca
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	inc sp
	inc b
	inc sp
	inc b
	ld bc,00f00h
	rrca
	rrca
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	ld (bc),a
	nop
	dec de
	rrca
	dec de
	rrca
	rrca
	ld a,(bc)
	inc sp
	ld (bc),a
	inc sp
	ld (bc),a
	inc bc
	nop
	inc bc
	rrca
	inc bc
	rrca
	rrca
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	dec b
	rrca
	dec b
	rrca
	dec b
	ld a,(bc)
	inc sp
	ld bc,00133h
	inc bc
	nop
	ld de,0110fh
	rrca
	dec b
	ld a,(bc)
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	dec b
	rrca
	dec b
	rrca
	dec b
	ld a,(bc)
	nop
	nop
	nop
	nop
	inc bc
	nop
	dec b
	rrca
	dec b
	rrca
	dec b
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld bc,01100h
	rrca
	ld de,0050fh
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	dec b
	rrca
	dec b
	rrca
	dec b
	ld a,(bc)
	ld l,d
	ld bc,00169h
	nop
	nop
	ld h,d
	ld (03262h),a
	rrca
	rrca
	ld h,d
	dec hl
	dec de
	rrca
	ld bc,01700h
	rrca
	ld d,00fh
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	nop
	nop
	ld h,e
	dec b
	ld h,e
	inc bc
	rrca
	rrca
	inc sp
	rrca
	dec de
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	inc bc
	rrca
	ld h,e
	ld b,b
	ld h,e
	ld b,b
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	rrca
	ccf
	ld c,027h
	rrca
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
l6800h:
	inc bc
	rrca
	ccf
	ld c,027h
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	nop
	nop
	nop
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	dec a
	ld c,025h
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	nop
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld (bc),a
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	ccf
	rrca
	daa
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	dec de
	rrca
	rrca
	rrca
	nop
	nop
	ld h,h
	dec b
	ld h,h
	inc bc
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	inc bc
	rrca
	inc sp
	rrca
	dec de
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	ld h,e
	inc sp
	ld h,e
	inc sp
	ld (bc),a
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	inc sp
	ld c,01bh
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	ccf
	ld c,027h
	rrca
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	ld h,c
	nop
	ld h,c
	nop
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	ccf
	ld c,027h
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	ld b,00fh
	ld (hl),00eh
	ld e,00fh
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	ld b,00fh
	ld (hl),00eh
	ld e,00fh
	ld bc,00000h
	rrca
	nop
	rrca
	ld b,00fh
	ld h,c
	nop
	ld h,c
	nop
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	ld b,00fh
	ld hl,(0120eh)
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	ld b,00fh
	ld (hl),00eh
	ld e,00fh
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	ld b,00fh
	ld (hl),00eh
	ld e,00fh
	ld (bc),a
	nop
	ld h,e
	dec b
	ld h,e
	ld b,00fh
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	rrca
	dec de
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	inc bc
	rrca
	ld h,e
	ld b,b
	ld h,e
	ld b,b
	nop
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	ccf
	ld c,027h
	rrca
	ld (bc),a
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	ccf
	ld c,027h
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	nop
	nop
	nop
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	dec a
	ld c,025h
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	nop
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	inc sp
	ld c,01bh
	ld c,002h
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	ccf
	ld c,027h
	ld c,000h
	nop
l6a00h:
	ld h,h
	dec b
	ld h,h
	ld b,00fh
	rrca
	ld h,c
	nop
	ld h,c
	nop
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	inc bc
	rrca
	inc sp
	rrca
	dec de
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	ld h,e
	inc sp
	ld h,e
	inc sp
	ld (bc),a
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	inc sp
	ld c,01bh
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	ccf
	ld c,027h
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	ld (bc),a
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	rrca
	nop
	rrca
	dec b
	rrca
	dec (hl)
	ld c,01dh
	rrca
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	dec b
	rrca
	ld h,a
	inc bc
	ld h,a
	inc bc
	nop
	nop
	nop
	rrca
	nop
	rrca
	dec b
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	dec b
	rrca
	nop
	nop
	nop
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	dec b
	rrca
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	rrca
	ld h,e
	ld b,005h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,e
	dec b
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	rrca
	dec de
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	inc bc
	rrca
	ld h,e
	ld b,b
	ld h,e
	ld b,b
	nop
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	ccf
	ld c,027h
	rrca
	ld (bc),a
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	dec a
	ld c,025h
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld (bc),a
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	ccf
	ld c,027h
	rrca
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	ccf
	ld c,027h
	rrca
	nop
	nop
	ld h,h
	dec b
	ld h,h
	ld b,00fh
	rrca
	ld h,c
	nop
	ld h,c
	nop
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	inc bc
	rrca
	inc sp
	rrca
	dec de
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	ld h,e
	inc sp
	ld h,e
	inc sp
	ld (bc),a
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	inc sp
	ld c,01bh
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	ld h,c
	nop
	ld h,c
	nop
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	ccf
	ld c,027h
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	ld b,00fh
	ld (hl),00eh
l6c00h:
	ld e,00fh
	inc bc
	nop
	nop
l6c05h:
	rrca
	nop
l6c07h:
	rrca
	ld b,00fh
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	ld b,00fh
	ld (hl),00eh
	ld e,00fh
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	ld b,00fh
	ld hl,(0120eh)
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	ld b,00fh
	ld h,c
	nop
	ld h,c
	nop
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	ld b,00fh
	ld (hl),00eh
	ld e,00fh
	ld (bc),a
	nop
	ld h,e
	dec b
	ld h,e
	rlca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	inc bc
	rrca
	ccf
	dec c
	daa
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	ld h,e
	ld h,b
	ld h,e
	ld b,b
	ld (bc),a
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	ccf
	ld c,027h
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	nop
	nop
	nop
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	dec a
	ld c,025h
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	nop
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	ccf
	ld c,027h
	rrca
	ld (bc),a
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	ccf
	ld c,027h
	rrca
	nop
	nop
	ld h,h
	dec b
	ld h,h
	rlca
	rrca
	rrca
	ld h,c
	nop
	ld h,c
	nop
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	inc sp
	ld c,01bh
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	inc bc
	rrca
	inc sp
	rrca
	dec de
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	ld h,e
	inc sp
	ld h,e
	inc sp
	ld (bc),a
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	inc sp
	ld c,01bh
	rrca
	nop
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	ccf
	ld c,027h
	rrca
	ld bc,00000h
	rrca
	nop
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld (bc),a
	nop
	nop
	rrca
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	rrca
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
	nop
	rrca
	nop
	rrca
	dec b
	rrca
	dec (hl)
	ld c,01dh
	rrca
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	ld de,l670fh
	inc bc
	ld h,a
	inc bc
	ld bc,00000h
	rrca
	nop
	rrca
	ld de,0000fh
	nop
	nop
	nop
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	dec b
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	dec b
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,d
	ld (03262h),a
	rrca
	dec c
	ld h,d
	rra
	daa
	ld bc,00001h
	rla
	rrca
	ld d,00fh
	rrca
	rrca
	dec de
	ld b,01bh
	ld b,000h
	nop
	ld h,e
	dec b
	ld h,e
	inc bc
	rrca
	rrca
	ld l,c
	dec b
	ld l,d
	ld bc,00001h
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	dec de
	ld b,01bh
	ld b,000h
	nop
	nop
	rrca
	nop
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld (bc),a
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	dec de
	ld b,01bh
	ld b,000h
	nop
	nop
	rrca
	nop
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	rrca
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
	nop
	rrca
	nop
	rrca
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,h
	dec b
	ld h,h
	inc bc
	rrca
	rrca
	jr nz,l6e8eh
	jr nz,l6e90h
	inc bc
	nop
	nop
	rrca
l6e8eh:
	nop
	rrca
l6e90h:
	rrca
	rrca
	dec de
	ld b,01bh
	ld b,000h
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	ld l,h
	ld b,06ch
	ld b,001h
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	dec de
	ld b,01bh
	ld b,000h
	nop
	nop
	rrca
	nop
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld (bc),a
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	ld l,h
	ld b,06ch
	ld b,001h
	nop
	nop
	rrca
	nop
	rrca
	rrca
	rrca
	dec de
	ld b,01bh
	ld b,003h
	nop
	nop
	rrca
	nop
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	rrca
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	ld b,00fh
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	ld b,00fh
	nop
	nop
	nop
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	ld h,c
	nop
	ld e,006h
	ld e,006h
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	ld b,00fh
	ld e,006h
	ld e,006h
	nop
	nop
	nop
	rrca
	nop
	rrca
	ld b,00fh
	ld (02206h),hl
	ld b,003h
	nop
	nop
	rrca
	nop
	rrca
	ld b,00fh
	ld (02206h),hl
	ld b,002h
	nop
	ld h,e
	dec b
	ld h,e
	ld b,014h
	rrca
	jr nz,l6f4eh
	jr nz,l6f50h
	ld bc,00000h
	rrca
l6f4eh:
	nop
	rrca
l6f50h:
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	rrca
	nop
	rrca
	inc d
	rrca
	jr nz,l6f66h
	jr nz,l6f68h
	ld bc,00000h
	rrca
l6f66h:
	nop
	rrca
l6f68h:
	ex af,af'
	rrca
	jr nz,l6f72h
	jr nz,l6f74h
	nop
	nop
	nop
	rrca
l6f72h:
	nop
	rrca
l6f74h:
	ex af,af'
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld (bc),a
	nop
	nop
	rrca
	nop
	rrca
	ex af,af'
	rrca
	jr nz,l6f8ah
	jr nz,l6f8ch
	nop
	nop
	nop
	rrca
l6f8ah:
	nop
	rrca
l6f8ch:
	inc d
	rrca
	jr nz,l6f96h
	jr nz,l6f98h
	nop
	nop
	nop
	rrca
l6f96h:
	nop
	rrca
l6f98h:
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	rrca
	nop
	rrca
	inc d
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	rrca
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
	nop
	rrca
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	inc d
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	nop
	rrca
	ex af,af'
	rrca
	jr nz,l6ff6h
	jr nz,l6ff8h
	ld (bc),a
	nop
	nop
	rrca
l6ff6h:
	nop
	rrca
l6ff8h:
	ex af,af'
	rrca
	jr nz,l7002h
	jr nz,$+8
	nop
	nop
	ld h,h
	dec b
l7002h:
	ld h,h
	ld b,014h
	rrca
	ld (02206h),hl
	ld b,003h
	nop
	nop
	rrca
	nop
	rrca
	inc d
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	rrca
	nop
	rrca
	inc d
	rrca
	ld (02206h),hl
	ld b,001h
	nop
	nop
	rrca
	nop
	rrca
	ld h,c
	nop
	jr nz,l7032h
	jr nz,l7034h
	nop
	nop
	nop
	rrca
l7032h:
	nop
	rrca
l7034h:
	nop
	nop
	jr nz,l703fh
	ld d,007h
	ld (bc),a
	nop
	nop
	rrca
	nop
l703fh:
	rrca
	nop
	nop
	jr nz,l704bh
	ld h,c
	nop
	nop
	nop
	nop
	rrca
	nop
l704bh:
	rrca
	nop
	nop
	ld e,007h
	ld hl,(00101h)
	nop
	nop
	rrca
	nop
	rrca
	nop
	nop
	ld l,b
	dec b
	ld h,c
	nop
	ld (bc),a
	nop
	nop
	rrca
	nop
	rrca
	inc d
	rrca
	jr nz,l706fh
	inc l
	ld bc,00000h
	nop
	rrca
	nop
l706fh:
	rrca
	inc d
	rrca
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	rrca
	nop
	rrca
	ld a,(bc)
	rrca
	ld l,h
	ld bc,00729h
	nop
	nop
	nop
	rrca
	nop
	rrca
	ld a,(bc)
	rrca
	ld h,a
	ld (bc),a
	ld h,a
	inc b
	nop
	nop
	nop
	rrca
	nop
	rrca
	ld a,(bc)
	rrca
	ld h,a
	inc b
	nop
	nop
	nop
	nop
	nop
	rrca
	nop
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	nop
	nop
	nop
	nop
	ld d,007h
	ld (bc),a
	nop
	nop
	rrca
	ld h,e
	ld b,000h
	nop
	nop
	nop
	ld h,c
	nop
	nop
	nop
	ld h,d
	ld (03262h),a
	rrca
	rrca
	ld h,d
	rra
	nop
	nop
	ld (bc),a
	nop
	rla
	rrca
	ld d,00fh
	rrca
	rrca
	dec de
	rlca
	ld d,007h
	ld bc,06300h
	dec b
	ld h,e
	inc bc
	rrca
	rrca
	ld h,c
	nop
	add hl,hl
	ld bc,00000h
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	dec de
	rlca
	nop
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld hl,(00201h)
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	dec de
	rlca
	ld l,001h
	nop
	nop
	nop
	rrca
	nop
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	rrca
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	rrca
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
	nop
	rrca
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
	nop
	rrca
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
	nop
	rrca
	nop
	rrca
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,h
	dec b
	ld h,h
	inc bc
	rrca
	rrca
	jr nz,l718fh
	nop
	nop
	ld (bc),a
	nop
	nop
	rrca
	nop
l718fh:
	rrca
	rrca
	rrca
	dec de
	rlca
	ld d,007h
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	ld l,h
	ld b,061h
	nop
	nop
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	dec de
	rlca
	nop
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld e,007h
	ld (bc),a
	nop
	nop
	rrca
	nop
	rrca
	inc bc
	rrca
	ld l,h
	ld b,061h
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	rrca
	rrca
	dec de
	rlca
	ld (00007h),hl
	nop
	nop
	rrca
	nop
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	rrca
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	rrca
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
	nop
	rrca
	nop
	rrca
	ld b,00fh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	nop
	rrca
	ld b,00fh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	nop
	rrca
	ld h,c
	nop
	ld e,007h
	nop
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	ld b,00fh
	ld e,007h
	nop
	nop
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	ld b,00fh
	ld (00007h),hl
	nop
	nop
	nop
	nop
	rrca
	nop
	rrca
	ld b,00fh
	ld (00007h),hl
	nop
	nop
	nop
	ld h,e
	dec b
	ld h,e
	ld b,011h
	dec c
	dec e
	rlca
	ld de,0010bh
	nop
	nop
	rrca
	nop
	rrca
	ld de,01d0dh
	rlca
	dec e
	dec bc
	nop
	nop
	nop
	rrca
	nop
	rrca
	ld de,l610dh
	nop
	ld h,c
	nop
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	dec b
	dec c
	dec e
	rlca
	ld de,0030bh
	nop
	nop
	rrca
	nop
	rrca
	dec b
	dec c
	dec e
	rlca
	dec b
	dec bc
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	ld h,c
	nop
	dec e
	rlca
	ld de,0000bh
	nop
	nop
	rrca
	nop
	rrca
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	rrca
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
	nop
	rrca
	nop
	rrca
	dec b
	rrca
	dec e
	rlca
	inc h
	add hl,bc
	nop
	nop
	nop
	rrca
	nop
	rrca
	dec b
	rrca
	dec e
	rlca
	jr l72d7h
	nop
	nop
	nop
	rrca
	nop
	rrca
	ld de,l610fh
l72d7h:
	nop
	ld h,c
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	ld de,01d0fh
	rlca
	inc h
	add hl,bc
	nop
	nop
	nop
	rrca
	nop
	rrca
	dec b
	rrca
	dec e
	rlca
	jr l72fbh
	nop
	nop
	nop
	rrca
	nop
	rrca
	dec b
	rrca
	ld h,c
l72fbh:
	nop
	ld h,c
	nop
	nop
	nop
	ld h,h
	dec b
	ld h,h
	ld b,006h
	rrca
	ld e,007h
	ld (de),a
	inc c
	inc bc
	nop
	nop
	rrca
	nop
	rrca
	ld (de),a
	rrca
	ld e,007h
	ld e,00ch
	nop
	nop
	nop
	rrca
	nop
	rrca
	ld (de),a
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	ld b,00fh
	ld e,007h
	ld (de),a
	inc c
	nop
	nop
	nop
	rrca
	nop
	rrca
	ld b,00fh
	ld e,007h
	ld (de),a
	inc c
	ld (bc),a
	nop
	nop
	rrca
	nop
	rrca
	ld b,00fh
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	rrca
	nop
	rrca
	ld (de),a
	rrca
	nop
	nop
	nop
	nop
	ld bc,00000h
	rrca
	nop
	rrca
	ld h,c
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
	rrca
	nop
	nop
	nop
	nop
	ld l,d
	nop
	ld (bc),a
	nop
	nop
	rrca
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
	nop
	rrca
	nop
	rrca
	nop
	nop
	jr nz,l7387h
	nop
	nop
	ld (bc),a
	nop
	nop
	rrca
	nop
l7387h:
	rrca
	inc d
	rrca
	jr nz,l7393h
	inc d
	inc c
	ld (bc),a
	nop
	nop
	rrca
	nop
l7393h:
	rrca
	ex af,af'
	rrca
	ld h,c
	nop
	ex af,af'
	inc c
	ld bc,00000h
	rrca
	nop
	rrca
	ex af,af'
	rrca
	jr nz,l73abh
	ex af,af'
	inc c
	nop
	nop
	nop
	rrca
	nop
l73abh:
	rrca
	ex af,af'
	rrca
	jr nz,l73b7h
	ex af,af'
	inc c
	ld (bc),a
	nop
	nop
	rrca
	ld h,e
l73b7h:
	ld b,008h
	rrca
	ld l,d
	ld bc,00169h
	nop
	nop
	nop
	nop
	inc sp
	add hl,bc
	rrca
	dec c
	daa
	rlca
	daa
	rlca
	inc bc
	nop
	dec de
	rrca
	inc sp
	add hl,bc
	rrca
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	ld l,d
	dec b
	inc sp
	add hl,bc
	rrca
	rrca
	add hl,hl
	rlca
	add hl,hl
	rlca
	nop
	nop
	dec de
	rrca
	daa
	add hl,bc
	inc bc
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld hl,(02a07h)
	rlca
	ld bc,00000h
	nop
	daa
	add hl,bc
	inc bc
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	dec de
	rrca
	inc sp
	add hl,bc
	rrca
	rrca
	ld l,007h
	ld l,007h
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld l,c
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld l,c
	ld bc,0016bh
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,d
	nop
	ld h,a
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld (l6800h),hl
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00167h
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	ld h,h
	jr nc,l745ch
	nop
l745ch:
	nop
	nop
	inc sp
	add hl,bc
	rrca
	rrca
	ld l,e
	ld bc,0016bh
	inc bc
	nop
	nop
	nop
	daa
	add hl,bc
	inc bc
	rrca
	ld h,h
	jr nc,$+99
	nop
	nop
	nop
	nop
	nop
	daa
	add hl,bc
	inc bc
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz,l7491h
	inc sp
	add hl,bc
	rrca
	rrca
	jr nz,l748fh
	nop
	nop
	inc bc
	nop
	dec de
	rrca
	inc sp
l748fh:
	add hl,bc
	rrca
l7491h:
	rrca
	dec de
	rlca
	nop
	nop
	nop
	nop
	ld l,h
	ld b,033h
	add hl,bc
	rrca
	rrca
	ld l,h
	ld b,000h
	nop
	nop
	nop
	dec de
	rrca
	daa
	add hl,bc
	inc bc
	rrca
	dec de
	rlca
	nop
	nop
	nop
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
	ld bc,l6c00h
	ld b,027h
	add hl,bc
	inc bc
	rrca
	ld l,h
	ld b,000h
	nop
	nop
	nop
	dec de
	rrca
	inc sp
	add hl,bc
	rrca
	rrca
	dec de
	rlca
	ld l,h
	ld bc,00003h
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
	ld hl,(00609h)
	rrca
	nop
	nop
	ld l,h
	ld bc,00000h
	nop
	nop
	ld hl,(00609h)
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld e,00fh
	ld h,c
	nop
	ld h,c
	nop
	ld e,007h
	nop
	nop
	ld bc,01e00h
	rrca
	ld hl,(00609h)
	rrca
	ld e,007h
	nop
	nop
	inc bc
	nop
	ld (02a0fh),hl
	add hl,bc
	ld b,00fh
	ld (l6c07h),hl
	ld bc,00000h
	ld (02a0fh),hl
	add hl,bc
	ld b,00fh
	ld (00007h),hl
	nop
	nop
	nop
	jr nz,l7551h
	jr c,l754dh
	inc d
	rrca
	jr nz,l754fh
	ld h,c
	nop
	ld bc,l6100h
l754dh:
	nop
	ld h,c
l754fh:
	nop
	ld h,c
l7551h:
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	jr nz,l7569h
	jr c,l7565h
	inc d
	rrca
	jr nz,l7567h
	add hl,hl
	ex af,af'
	ld bc,02000h
l7565h:
	rrca
	inc l
l7567h:
	add hl,bc
	ex af,af'
l7569h:
	rrca
	jr nz,l7573h
	ld h,c
	nop
	nop
	nop
	ld h,c
	nop
	inc l
l7573h:
	add hl,bc
	ex af,af'
	rrca
	ld l,d
	ld (bc),a
	ld l,00ah
	nop
	nop
	jr nz,l758dh
	inc l
	add hl,bc
	ex af,af'
	rrca
	ld l,006h
	ld l,007h
	nop
	nop
	jr nz,l7599h
	jr c,l7595h
	inc d
l758dh:
	rrca
	inc l
	ld b,02ch
	rlca
	inc bc
	nop
	ld h,c
l7595h:
	nop
	ld h,c
	nop
	ld h,c
l7599h:
	nop
	ld hl,(02a06h)
	rlca
	ld bc,00000h
	nop
	jr c,l75adh
	inc d
	rrca
	inc l
	ld b,02ch
	rlca
	ld (bc),a
	nop
	nop
l75adh:
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
	ld h,h
	jr nz,l75dch
	nop
l75dch:
	nop
	nop
	jr c,$+11
	inc d
	rrca
	ld l,c
	nop
	nop
	nop
	nop
	nop
	jr nz,l75f9h
	inc l
	add hl,bc
	ex af,af'
	rrca
	jr nz,l75f7h
	ld hl,(00008h)
	nop
	jr nz,l7605h
	inc l
l75f7h:
	add hl,bc
	ex af,af'
l75f9h:
	rrca
	jr nz,l7603h
	add hl,hl
	ex af,af'
	nop
	nop
	ld (0380fh),hl
l7603h:
	add hl,bc
	inc d
l7605h:
	rrca
	ld (02c07h),hl
	rlca
	inc bc
	nop
	ld h,c
	nop
	jr c,$+11
	inc d
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	ld (0380fh),hl
	add hl,bc
	inc d
	rrca
	ld (02c07h),hl
	rlca
	ld bc,02000h
	rrca
	ld h,c
	nop
	ld h,c
	nop
	jr nz,l7633h
	inc l
	inc b
	nop
	nop
	jr nz,l7641h
	nop
l7633h:
	nop
	nop
	nop
	jr nz,l763fh
	inc l
	inc b
	ld (bc),a
	nop
	jr nz,l764dh
	nop
l763fh:
	nop
	nop
l7641h:
	nop
	jr nz,l764bh
	ld h,c
	nop
	nop
	nop
	ld e,00fh
	nop
l764bh:
	nop
	nop
l764dh:
	nop
	ld e,007h
	ld hl,(00104h)
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld l,b
	dec b
	ld h,c
	nop
	nop
	nop
	jr nz,l7671h
	jr c,$+11
	inc d
	rrca
	jr nz,$+9
	inc l
	inc b
	nop
	nop
	jr nz,l767dh
	jr c,$+11
	inc d
l7671h:
	rrca
	ld h,a
	ld bc,00000h
	nop
	nop
	jr nz,l7689h
	ld l,009h
	ld a,(bc)
l767dh:
	rrca
	ld l,h
	ld bc,00631h
	inc bc
	nop
	jr nz,$+13
	ld l,009h
	ld a,(bc)
l7689h:
	rrca
	ld h,a
	ld (bc),a
	ld h,a
	ld bc,00003h
	jr nz,l769ah
	ld l,009h
	ld a,(bc)
	rrca
	ld h,a
	inc b
	nop
	nop
l769ah:
	inc bc
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
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,e
	ld (bc),a
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
	ld h,e
	inc bc
	nop
	nop
	nop
	nop
	inc sp
	add hl,bc
	rrca
	rrca
	nop
	nop
	ld h,c
	nop
	inc bc
	nop
	dec de
	rrca
	inc sp
	add hl,bc
	rrca
	rrca
	ld l,d
	ld (bc),a
	ld l,c
	nop
	nop
	nop
	ld h,c
	nop
	inc sp
	add hl,bc
	rrca
	rrca
	add hl,hl
	rlca
	add hl,hl
	rlca
	nop
	nop
	dec de
	rrca
	daa
	add hl,bc
	inc bc
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld hl,(02a07h)
	rlca
	ld bc,00000h
	nop
	daa
	add hl,bc
	inc bc
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	dec de
	rrca
	inc sp
	add hl,bc
	rrca
	rrca
	ld l,007h
	ld l,007h
	nop
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
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	ld l,c
	ld bc,00000h
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
	ld h,c
	nop
	ld h,c
	nop
	ld l,h
	ld bc,00167h
	ld bc,00000h
	nop
	inc sp
	add hl,bc
	rrca
	rrca
	ld l,h
	ld bc,03064h
	inc bc
	nop
	nop
	nop
	daa
	add hl,bc
	inc bc
	rrca
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	nop
	daa
	add hl,bc
	inc bc
	rrca
	ld l,h
	ld bc,00061h
	nop
	nop
	jr nz,l7791h
	inc sp
	add hl,bc
	rrca
	rrca
	jr nz,l778fh
	nop
	nop
	inc bc
	nop
	dec de
	rrca
	inc sp
l778fh:
	add hl,bc
	rrca
l7791h:
	rrca
	dec de
	rlca
	nop
	nop
	nop
	nop
	ld l,h
	ld b,033h
	add hl,bc
	rrca
	rrca
	ld l,h
	ld b,000h
	nop
	nop
	nop
	dec de
	rrca
	daa
	add hl,bc
	inc bc
	rrca
	dec de
	rlca
	nop
	nop
	nop
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
	ld bc,l6c00h
	ld b,027h
	add hl,bc
	inc bc
	rrca
	ld l,h
	ld b,000h
	nop
	nop
	nop
	dec de
	rrca
	inc sp
	add hl,bc
	rrca
	rrca
	dec de
	rlca
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
	ld h,c
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
	ld hl,(00609h)
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl,(00609h)
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld e,00fh
	ld h,c
	nop
	ld h,c
	nop
	ld e,007h
	nop
	nop
	ld bc,01e00h
	rrca
	ld hl,(00609h)
	rrca
	ld e,007h
	nop
	nop
	inc bc
	nop
	ld (02a0fh),hl
	add hl,bc
	ld b,00fh
	ld (00007h),hl
	nop
	nop
	nop
	ld (02a0fh),hl
	add hl,bc
	ld b,00fh
	ld (00007h),hl
	nop
	nop
	nop
	dec e
	dec c
	dec (hl)
	add hl,bc
	ld de,l620dh
	inc h
	add hl,hl
	ld b,001h
	nop
	dec e
	dec c
	dec (hl)
	add hl,bc
	ld de,01d0dh
	rlca
	dec (hl)
	ld b,000h
	nop
	ld h,c
	nop
	dec (hl)
	add hl,bc
	ld de,l610dh
	nop
	ld h,c
	nop
	inc bc
	nop
	dec e
	dec c
	add hl,hl
	add hl,bc
	dec b
	dec c
	dec e
	rlca
	add hl,hl
	ld b,003h
	nop
	dec e
	dec c
	add hl,hl
	add hl,bc
	dec b
	dec c
	dec e
	rlca
	dec e
	ld b,002h
	nop
	dec e
	dec c
	ld h,c
	nop
	ld h,c
	nop
	dec e
	rlca
	add hl,hl
	ld b,000h
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld h,c
	nop
	ld h,c
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
	dec e
	rrca
	add hl,hl
	add hl,bc
	dec b
	rrca
	dec e
	rlca
	jr nc,l78c8h
	ld bc,01d00h
	rrca
	add hl,hl
	add hl,bc
l78c8h:
	dec b
	rrca
	dec e
	rlca
	inc h
	ld b,000h
	nop
	ld h,c
	nop
	dec (hl)
	add hl,bc
	ld de,l610fh
	nop
	ld h,c
	nop
	ld (bc),a
	nop
	dec e
	rrca
	dec (hl)
	add hl,bc
	ld de,01d0fh
	rlca
	jr nc,l78ech
	nop
	nop
	dec e
	rrca
	add hl,hl
	add hl,bc
l78ech:
	dec b
	rrca
	dec e
	rlca
	inc h
	ld b,001h
	nop
	ld h,c
	nop
	add hl,hl
	add hl,bc
	dec b
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	ld e,00fh
	ld hl,(00609h)
	rrca
	ld e,007h
	ld hl,(00208h)
	nop
	ld e,00fh
	ld (hl),009h
	ld (de),a
	rrca
	ld e,007h
	ld (hl),006h
	nop
	nop
	ld h,c
	nop
	ld (hl),009h
	ld (de),a
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld bc,01e00h
	rrca
	ld hl,(00609h)
	rrca
	ld e,007h
	ld hl,(00006h)
	nop
	ld e,00fh
	ld hl,(00609h)
	rrca
	ld e,007h
	ld hl,(00206h)
	nop
	ld h,c
	nop
	ld hl,(00609h)
	rrca
	ld h,c
	nop
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld (hl),009h
	ld (de),a
	rrca
	nop
	nop
	nop
	nop
	ld bc,00000h
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
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	rra
	nop
	nop
	ld bc,00a00h
	dec bc
	ld a,(bc)
	dec bc
	ld a,(bc)
	dec bc
	ld a,(bc)
	rlca
	ld a,(bc)
	rlca
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld h,a
	inc bc
	ld h,a
	inc bc
	ld h,a
	ld (bc),a
	ld (bc),a
	nop
	ld h,d
	ld (02262h),hl
	ld h,d
	nop
	ld l,d
	nop
	nop
	nop
	nop
	nop
	ld hl,(0000fh)
	nop
	inc bc
	rrca
	ld h,d
	inc c
	ld h,c
	nop
	ld bc,02900h
	rrca
	nop
	nop
	inc bc
	rrca
	nop
	nop
	ld l,c
	ld bc,00000h
	daa
	rrca
	ld hl,(00309h)
	rrca
	ld l,00fh
	nop
	nop
	inc bc
	nop
	ld (0290fh),hl
	add hl,bc
	inc bc
	rrca
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld hl,(0270fh)
	add hl,bc
	inc bc
	rrca
	ld l,00dh
	nop
	nop
	ld (bc),a
	nop
	add hl,hl
	rrca
	ld (00309h),hl
	rrca
	inc l
	rrca
	nop
	nop
	nop
	nop
	daa
	rrca
	ld hl,(00009h)
	nop
	ld h,c
	nop
	ld l,008h
	ld bc,02200h
	rrca
	add hl,hl
	add hl,bc
	nop
	nop
	inc sp
	rrca
	ld h,c
	nop
	ld (bc),a
	nop
	ld hl,(0270fh)
	add hl,bc
	nop
	nop
	nop
	nop
	ld l,008h
	ld (bc),a
	nop
	add hl,hl
	rrca
	ld (00009h),hl
	nop
	nop
	nop
	inc l
	ex af,af'
	ld bc,02700h
	rrca
	ld hl,(00309h)
	rrca
	nop
	nop
	ld l,008h
	inc bc
	nop
	ld (0290fh),hl
	add hl,bc
	inc bc
	rrca
	nop
	nop
	inc sp
	ex af,af'
	ld bc,02a00h
	rrca
	daa
	add hl,bc
	inc bc
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	add hl,hl
	rrca
	ld (00309h),hl
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	daa
	rrca
	ld hl,(00009h)
	nop
	ld l,00fh
	nop
	nop
	inc bc
	nop
	ld (0290fh),hl
	add hl,bc
	nop
	nop
	inc l
	rrca
	nop
	nop
	inc bc
	nop
	ld hl,(0270fh)
	add hl,bc
	inc bc
	rrca
	dec (hl)
	rrca
	nop
	nop
	ld bc,02900h
	rrca
	ld (00309h),hl
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	daa
	rrca
	ld hl,(00009h)
	nop
	nop
	nop
	ld l,008h
	inc bc
	nop
	ld (0290fh),hl
	add hl,bc
	inc bc
	rrca
	ld (hl),00fh
	inc l
	ex af,af'
	ld (bc),a
	nop
	ld hl,(0270fh)
	add hl,bc
	inc bc
	rrca
	nop
	nop
	dec (hl)
	ex af,af'
	nop
	nop
	add hl,hl
	rrca
	ld (00309h),hl
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	daa
	rrca
	ld hl,(00009h)
	nop
	dec (hl)
	rrca
	nop
	nop
	ld bc,02200h
	rrca
	add hl,hl
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	ld (hl),008h
	nop
	nop
	ld hl,(0270fh)
	add hl,bc
	inc bc
	rrca
	inc sp
	rrca
	nop
	nop
	ld (bc),a
	nop
	add hl,hl
	rrca
	ld (00309h),hl
	rrca
	nop
	nop
	nop
	nop
	ld bc,02700h
	rrca
	ld hl,(00309h)
	rrca
	ld l,h
	ld bc,00835h
	inc bc
	nop
	ld (0290fh),hl
	add hl,bc
	inc bc
	rrca
	nop
	nop
	nop
	nop
	ld bc,02a00h
	rrca
	daa
	add hl,bc
	inc bc
	rrca
	ld l,h
	ld bc,00833h
	nop
	nop
	add hl,hl
	rrca
	ld (00309h),hl
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	daa
	rrca
	ld hl,(00009h)
	nop
	ld l,h
	ld bc,0016ch
	ld bc,02200h
	rrca
	add hl,hl
	add hl,bc
	inc bc
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,hl
	rrca
	daa
	add hl,bc
	ld bc,0380fh
	rrca
	ld l,h
	ld bc,00001h
	daa
	rrca
	ld (00109h),hl
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	dec h
	rrca
	add hl,hl
	add hl,bc
	ld bc,0000fh
	nop
	ld l,h
	ld bc,00003h
	jr nz,$+17
	daa
	add hl,bc
	ld bc,0000fh
	nop
	nop
	nop
	nop
	nop
	add hl,hl
	rrca
	dec h
	add hl,bc
	ld bc,0000fh
	nop
	jr c,$+10
	ld (bc),a
	nop
	daa
	rrca
	jr nz,l7b89h
	ld bc,0000fh
	nop
	nop
	nop
	nop
	nop
	dec h
l7b89h:
	rrca
	add hl,hl
	add hl,bc
	nop
	nop
	ld (hl),00fh
	nop
	nop
	ld bc,02000h
	rrca
	daa
	add hl,bc
	nop
	nop
	dec (hl)
	rrca
	nop
	nop
	ld (bc),a
	nop
	add hl,hl
	rrca
	dec h
	add hl,bc
	nop
	nop
	inc sp
	rrca
	nop
	nop
	ld (bc),a
	nop
	daa
	rrca
	jr nz,l7bb9h
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,02500h
l7bb9h:
	rrca
	add hl,hl
	add hl,bc
	ld bc,0000fh
	nop
	ld (hl),008h
	inc bc
	nop
	jr nz,$+17
	daa
	add hl,bc
	ld bc,0000fh
	nop
	dec (hl)
	ex af,af'
	ld bc,02900h
	rrca
	dec h
	add hl,bc
	ld bc,0000fh
	nop
	inc sp
	ex af,af'
	inc bc
	nop
	daa
	rrca
	jr nz,l7be9h
	ld bc,0000fh
	nop
	nop
	nop
	nop
	nop
	dec h
l7be9h:
	rrca
	add hl,hl
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,02000h
	rrca
	daa
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,hl
	rrca
	dec h
	add hl,bc
	ld bc,02c0fh
	rrca
	nop
	nop
	ld bc,02700h
	rrca
	jr nz,l7c19h
	ld bc,l610fh
	nop
	nop
	nop
	nop
	nop
	dec h
l7c19h:
	rrca
	add hl,hl
	add hl,bc
	nop
	nop
	inc l
	rrca
	nop
	nop
	inc bc
	nop
	jr nz,$+17
	daa
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	add hl,hl
	rrca
	dec h
	add hl,bc
	ld bc,0000fh
	nop
	inc l
	ex af,af'
	nop
	nop
	daa
	rrca
	jr nz,l7c49h
	ld bc,0000fh
	nop
	ld h,c
	nop
	inc bc
	nop
	dec h
l7c49h:
	rrca
	add hl,hl
	add hl,bc
	ld bc,02a0fh
	rrca
	inc l
	ex af,af'
	ld bc,02000h
	rrca
	daa
	add hl,bc
	ld bc,02c0fh
	rrca
	nop
	nop
	nop
	nop
	add hl,hl
	rrca
	dec h
	add hl,bc
	ld bc,0000fh
	nop
	nop
	nop
	ld (bc),a
	nop
	daa
	rrca
	jr nz,l7c79h
	ld bc,0000fh
	nop
	nop
	nop
	ld bc,02500h
l7c79h:
	rrca
	add hl,hl
	add hl,bc
	ld bc,0310fh
	rrca
	ld hl,(00308h)
	nop
	jr nz,l7c95h
	daa
	add hl,bc
	ld bc,0000fh
	nop
	inc l
	ex af,af'
	ld bc,02900h
	rrca
	dec h
	add hl,bc
	nop
l7c95h:
	nop
	inc sp
	rrca
	nop
	nop
	nop
	nop
	daa
	rrca
	jr nz,l7ca9h
	ld bc,0000fh
	nop
	nop
	nop
	inc bc
	nop
	dec h
l7ca9h:
	rrca
	add hl,hl
	add hl,bc
	nop
	nop
	dec (hl)
	rrca
	ld sp,00108h
	nop
	jr nz,l7cc5h
	daa
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl,(0000fh)
	nop
	inc bc
l7cc5h:
	rrca
	nop
	nop
	inc sp
	ex af,af'
	ld bc,02900h
	rrca
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
	daa
	rrca
	ld hl,(00309h)
	rrca
	ld l,00fh
	dec (hl)
	ex af,af'
	inc bc
	nop
	ld (0290fh),hl
	add hl,bc
	inc bc
	rrca
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld hl,(0270fh)
	add hl,bc
	inc bc
	rrca
	ld l,00fh
	nop
	nop
	ld (bc),a
	nop
	add hl,hl
	rrca
	ld (00309h),hl
	rrca
	inc l
	rrca
	nop
	nop
	nop
	nop
	daa
	rrca
	ld hl,(00009h)
	nop
	ld l,00fh
	ld l,008h
	ld bc,02200h
	rrca
	add hl,hl
	add hl,bc
	nop
	nop
	inc sp
	rrca
	ld h,c
	nop
	ld (bc),a
	nop
	ld hl,(0270fh)
	add hl,bc
	nop
	nop
	nop
	nop
	ld l,008h
	ld (bc),a
	nop
	add hl,hl
	rrca
	ld (00009h),hl
	nop
	nop
	nop
	inc l
	ex af,af'
	ld bc,02700h
	rrca
	ld hl,(00309h)
	rrca
	nop
	nop
	ld l,008h
	inc bc
	nop
	ld (0290fh),hl
	add hl,bc
	inc bc
	rrca
	nop
	nop
	inc sp
	ex af,af'
	ld bc,02a00h
	rrca
	daa
	add hl,bc
	inc bc
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	add hl,hl
	rrca
	ld (00309h),hl
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	daa
	rrca
	ld hl,(00009h)
	nop
	ld l,00fh
	nop
	nop
	inc bc
	nop
	ld (0290fh),hl
	add hl,bc
	nop
	nop
	inc l
	rrca
	nop
	nop
	inc bc
	nop
	ld hl,(0270fh)
	add hl,bc
	inc bc
	rrca
	jr c,l7d97h
	nop
	nop
	ld bc,02900h
	rrca
	ld (00309h),hl
	rrca
	nop
	nop
	nop
	nop
	nop
l7d97h:
	nop
	daa
	rrca
	ld hl,(00009h)
	nop
	nop
	nop
	ld l,008h
	inc bc
	nop
	ld (0290fh),hl
	add hl,bc
	inc bc
	rrca
	ld (hl),00fh
	inc l
	ex af,af'
	ld (bc),a
	nop
	ld hl,(0270fh)
	add hl,bc
	inc bc
	rrca
	nop
	nop
	jr c,l7dc2h
	nop
	nop
	add hl,hl
	rrca
	ld (00309h),hl
	rrca
l7dc2h:
	nop
	nop
	nop
	nop
	inc bc
	nop
	daa
	rrca
	ld hl,(00009h)
	nop
	dec (hl)
	rrca
	nop
	nop
	ld bc,02200h
	rrca
	add hl,hl
	add hl,bc
	inc bc
	add hl,bc
	nop
	nop
	ld (hl),008h
	nop
	nop
	ld hl,(0270fh)
	add hl,bc
	inc bc
	rrca
	dec a
	rrca
	nop
	nop
	ld (bc),a
	nop
	add hl,hl
	rrca
	ld (00309h),hl
	rrca
	nop
	nop
	nop
	nop
	ld bc,02700h
	rrca
	ld hl,(00309h)
	rrca
	ld l,h
	ld bc,00835h
	inc bc
	nop
	ld (0290fh),hl
	add hl,bc
	inc bc
	rrca
	ld h,a
	ld (bc),a
	nop
	nop
	ld bc,02a00h
	rrca
	daa
	add hl,bc
	inc bc
	rrca
	ld l,h
	ld bc,0083dh
	nop
	nop
	add hl,hl
	rrca
	ld (00309h),hl
	rrca
	nop
	nop
	ld h,a
	ld (bc),a
	inc bc
	nop
	daa
	rrca
	ld hl,(00009h)
	nop
	ld l,h
	ld bc,0016ch
	ld bc,02200h
	rrca
	add hl,hl
	add hl,bc
	inc bc
	rrca
	ld h,d
	ld (00000h),hl
	nop
	nop
	add hl,hl
	rrca
	daa
	add hl,bc
	ld bc,0380fh
	ld a,(bc)
	inc sp
	rlca
	ld bc,02700h
	rrca
	ld (00109h),hl
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	dec h
	rrca
	add hl,hl
	add hl,bc
	ld bc,0310fh
	ld a,(bc)
	dec (hl)
	rlca
	inc bc
	nop
	jr nz,$+17
	daa
	add hl,bc
	ld bc,0000fh
	nop
	nop
	nop
	nop
	nop
	add hl,hl
	rrca
	dec h
	add hl,bc
	ld bc,0330fh
	ld a,(bc)
	ld (hl),007h
	ld (bc),a
	nop
	daa
	rrca
	jr nz,l7e89h
	ld bc,0350fh
	ld a,(bc)
	jr c,l7e8dh
	nop
	nop
	dec h
l7e89h:
	rrca
	add hl,hl
	add hl,bc
	nop
l7e8dh:
	nop
	ld h,a
	inc bc
	ld h,a
	inc bc
	ld bc,02000h
	rrca
	daa
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	add hl,hl
	rrca
	dec h
	add hl,bc
	nop
	nop
	ld h,c
	nop
	ld h,c
	nop
	ld (bc),a
	nop
	daa
	rrca
	jr nz,l7eb9h
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,02500h
l7eb9h:
	rrca
	add hl,hl
	add hl,bc
	ld bc,0310fh
	ld a,(bc)
	dec (hl)
	rlca
	inc bc
	nop
	jr nz,$+17
	daa
	add hl,bc
	ld bc,0000fh
	nop
	nop
	nop
	ld bc,02900h
	rrca
	dec h
	add hl,bc
	ld bc,0330fh
	ld a,(bc)
	ld (hl),007h
	inc bc
	nop
	daa
	rrca
	jr nz,l7ee9h
	ld bc,0350fh
	ld a,(bc)
	jr c,l7eedh
	nop
	nop
	dec h
l7ee9h:
	rrca
	add hl,hl
	add hl,bc
	nop
l7eedh:
	nop
	ld h,a
	inc bc
	ld h,a
	inc bc
	ld bc,02000h
	rrca
	daa
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,hl
	rrca
	dec h
	add hl,bc
	ld bc,0000fh
	nop
	nop
	nop
	ld bc,02700h
	rrca
	jr nz,l7f19h
	ld bc,l610fh
	nop
	ld h,c
	nop
	nop
	nop
	dec h
l7f19h:
	rrca
	add hl,hl
	add hl,bc
	nop
	nop
	dec (hl)
	ld a,(bc)
	jr c,l7f29h
	inc bc
	nop
	jr nz,$+17
	daa
	add hl,bc
	nop
l7f29h:
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	add hl,hl
	rrca
	dec h
	add hl,bc
	ld bc,0000fh
	nop
	nop
	nop
	nop
	nop
	daa
	rrca
	jr nz,l7f49h
	ld bc,l610fh
	nop
	ld h,c
	nop
	inc bc
	nop
	dec h
l7f49h:
	rrca
	add hl,hl
	add hl,bc
	ld bc,0350fh
	ld a,(bc)
	jr c,$+9
	ld bc,02000h
	rrca
	daa
	add hl,bc
	ld bc,0000fh
	nop
	nop
	nop
	nop
	nop
	add hl,hl
	rrca
	dec h
	add hl,bc
	ld bc,l610fh
	nop
	ld h,c
	nop
	ld (bc),a
	nop
	daa
	rrca
	jr nz,l7f79h
	ld bc,l620fh
	inc c
	nop
	nop
	ld bc,02500h
l7f79h:
	rrca
	add hl,hl
	add hl,bc
	ld bc,0350fh
	dec c
	jr c,l7f8ch
	inc bc
	nop
	jr nz,l7f95h
	daa
	add hl,bc
	ld bc,0000fh
	nop
l7f8ch:
	nop
	nop
	ld bc,02900h
	rrca
	dec h
	add hl,bc
	nop
l7f95h:
	nop
	inc sp
	dec c
	ld (hl),00ah
	nop
	nop
	daa
	rrca
	jr nz,l7fa9h
	ld bc,0000fh
	nop
	nop
	nop
	inc bc
	nop
	dec h
l7fa9h:
	rrca
	add hl,hl
	add hl,bc
	nop
	nop
	ld sp,0350dh
	ld a,(bc)
	ld bc,02000h
	rrca
	daa
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl,(0000fh)
	nop
	inc bc
	rrca
	nop
	nop
	nop
	nop
	ld bc,02900h
	rrca
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
	daa
	rrca
	ld hl,(00309h)
	rrca
	ld l,00fh
	nop
	nop
	inc bc
	nop
	ld (0290fh),hl
	add hl,bc
	inc bc
	rrca
	ld h,c
	nop
	nop
	nop
	nop
	nop
	ld hl,(0270fh)
	add hl,bc
	inc bc
	rrca
	ld l,00fh
	nop
	nop
	ld (bc),a
	nop
	add hl,hl
	rrca
	defb 022h,009h
