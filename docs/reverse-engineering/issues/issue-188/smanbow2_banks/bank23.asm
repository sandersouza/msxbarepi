; z80dasm 1.2.0
; command line: z80dasm -g 0x4000 -l -o docs/reverse-engineering/issues/issue-188/smanbow2_banks/bank23.asm /tmp/smanbow2_bank.bin

	org 04000h

l4000h:
	inc bc
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
l401fh:
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
	jr nz,l4189h
	ld bc,0000fh
	nop
	nop
	nop
	nop
	nop
	dec h
l4189h:
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
	jr nz,l41b9h
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,02500h
l41b9h:
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
	jr nz,l41e9h
	ld bc,0000fh
	nop
	nop
	nop
	nop
	nop
	dec h
l41e9h:
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
	jr nz,l4219h
	ld bc,l610fh
	nop
	nop
	nop
	nop
	nop
	dec h
l4219h:
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
	jr nz,l4249h
	ld bc,0000fh
	nop
	ld h,c
	nop
	inc bc
	nop
	dec h
l4249h:
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
	jr nz,l4279h
	ld bc,0000fh
	nop
	nop
	nop
	ld bc,02500h
l4279h:
	rrca
	add hl,hl
	add hl,bc
	ld bc,0310fh
	rrca
	ld hl,(00308h)
	nop
	jr nz,l4295h
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
l4295h:
	nop
	inc sp
	rrca
	nop
	nop
	nop
	nop
	daa
	rrca
	jr nz,l42a9h
	ld bc,0000fh
	nop
	nop
	nop
	inc bc
	nop
	dec h
l42a9h:
	rrca
	add hl,hl
	add hl,bc
	nop
	nop
	dec (hl)
	rrca
	ld sp,00108h
	nop
	jr nz,l42c5h
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
l42c5h:
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
	jr c,l4397h
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
l4397h:
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
	jr c,l43c2h
	nop
	nop
	add hl,hl
	rrca
	ld (00309h),hl
	rrca
l43c2h:
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
	ld h,a
	ld (bc),a
	nop
	nop
	add hl,hl
	rrca
	daa
	add hl,bc
	ld bc,0380fh
	dec c
	inc sp
	dec bc
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
	dec c
	dec (hl)
	ld c,003h
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
	dec c
	ld (hl),00eh
	ld (bc),a
	nop
	daa
	rrca
	jr nz,l4489h
	ld bc,0350fh
	dec c
	jr c,$+16
	nop
	nop
	dec h
l4489h:
	rrca
	add hl,hl
	add hl,bc
	nop
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
	ld (hl),00dh
	ld a,(0020ah)
	nop
	daa
	rrca
	jr nz,l44b9h
	nop
	nop
	ld h,a
	ld (bc),a
	ld h,a
	ld (bc),a
	ld bc,02500h
l44b9h:
	rrca
	add hl,hl
	add hl,bc
	ld bc,0330fh
	dec c
	ld (hl),00ah
	inc bc
	nop
	jr nz,$+17
	daa
	add hl,bc
	ld bc,0350fh
	dec c
	jr c,l44d8h
	ld bc,02900h
	rrca
	dec h
	add hl,bc
	ld bc,l670fh
	inc bc
l44d8h:
	ld h,a
	inc bc
	inc bc
	nop
	daa
	rrca
	jr nz,l44e9h
	ld bc,0000fh
	nop
	nop
	nop
	nop
	nop
	dec h
l44e9h:
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
	ld bc,0360fh
	dec c
	ld a,(0010ah)
	nop
	daa
	rrca
	jr nz,l4519h
	ld bc,l610fh
	nop
	ld h,c
	nop
	nop
	nop
	dec h
l4519h:
	rrca
	add hl,hl
	add hl,bc
	nop
	nop
	dec (hl)
	dec c
	jr c,l452ch
	ld (bc),a
	nop
	jr nz,$+17
	daa
	add hl,bc
	nop
	nop
	nop
	nop
l452ch:
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
	ld (bc),a
	nop
	daa
	rrca
	jr nz,l4549h
	ld bc,0000fh
	nop
	nop
	nop
	ld bc,02500h
l4549h:
	rrca
	add hl,hl
	add hl,bc
	ld bc,0310fh
	rrca
	nop
	nop
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
	jr nz,l4579h
	ld bc,0000fh
	nop
	nop
	nop
	ld bc,02500h
l4579h:
	rrca
	add hl,hl
	add hl,bc
	ld bc,0350fh
	dec c
	jr c,l458ch
	nop
	nop
	jr nz,l4595h
	daa
	add hl,bc
	ld bc,0000fh
	nop
l458ch:
	nop
	nop
	nop
	nop
	add hl,hl
	rrca
	dec h
	add hl,bc
	nop
l4595h:
	nop
	inc sp
	dec c
	ld (hl),00ah
	ld bc,02700h
	rrca
	jr nz,l45a9h
	ld bc,0000fh
	nop
	nop
	nop
	nop
	nop
	dec h
l45a9h:
	rrca
	add hl,hl
	add hl,bc
	nop
	nop
	ld sp,0350dh
	ld a,(bc)
	ld (bc),a
	nop
	jr nz,l45c5h
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
	ld h,d
	rlca
	ld h,d
	rlca
	inc bc
l45c5h:
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld bc,06a00h
	inc b
	ld l,c
	inc b
	inc bc
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	daa
	ld c,027h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00f00h
	ld c,00fh
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	inc sp
	ld c,033h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	inc bc
	ld c,003h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00f00h
	ld c,00fh
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	rrca
	ld c,00fh
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	ld bc,01b00h
	ld c,01bh
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld c,003h
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	ld bc,00300h
	ld c,003h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00f00h
	ld c,00fh
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	inc bc
	ld c,003h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	inc bc
	ld c,003h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	rrca
	rrca
	rrca
	rrca
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
	ld h,c
	nop
	ld h,c
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
	nop
	daa
	ld c,027h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00f00h
	ld c,00fh
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	inc sp
	ld c,033h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	inc bc
	ld c,003h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00f00h
	ld c,00fh
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	rrca
	ld c,00fh
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec de
	ld c,01bh
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	inc bc
	ld c,003h
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	ld bc,00300h
	ld c,003h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	rrca
	ld c,00fh
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00300h
	ld c,003h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	inc bc
	ld c,003h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	rrca
	rrca
	rrca
	rrca
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
	ld bc,l6100h
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
	dec h
	ld c,025h
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00d00h
	ld c,00dh
l4767h:
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld sp,0310eh
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld bc,0010eh
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00d00h
	ld c,00dh
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	dec c
	ld c,00dh
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	ld c,019h
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld bc,0010eh
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	ld bc,00100h
	ld c,001h
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00d00h
	ld c,00dh
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,0010eh
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00100h
	ld c,001h
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	dec c
	ld c,00dh
	ld c,000h
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
	dec h
	ld c,025h
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00d00h
	ld c,00dh
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld sp,0310eh
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld bc,0010eh
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	dec c
	ld c,00dh
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	ld bc,00d00h
	ld c,00dh
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	add hl,de
	ld c,019h
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld bc,0010eh
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,0010eh
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	dec c
	ld c,00dh
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,0010eh
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld bc,0010eh
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00d00h
	ld c,00dh
	ld c,000h
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
	ld h,d
	rlca
	ld h,d
	rlca
	inc bc
	rrca
	ld h,c
	nop
	ld h,c
	nop
	ld bc,06a00h
	inc b
	ld l,c
	inc b
	inc bc
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	daa
	ld c,027h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00f00h
	ld c,00fh
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	inc sp
	ld c,033h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	inc bc
	ld c,003h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00f00h
	ld c,00fh
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	rrca
	ld c,00fh
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	ld bc,01b00h
	ld c,01bh
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld c,003h
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	ld bc,00300h
	ld c,003h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00f00h
	ld c,00fh
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	inc bc
	ld c,003h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	inc bc
	ld c,003h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	rrca
	rrca
	rrca
	rrca
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
	ld h,c
	nop
	ld h,c
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
	nop
	daa
	ld c,027h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00f00h
	ld c,00fh
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	inc sp
	ld c,033h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	inc bc
	ld c,003h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00f00h
	ld c,00fh
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	rrca
	ld c,00fh
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec de
	ld c,01bh
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	inc bc
	ld c,003h
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	ld bc,00300h
	ld c,003h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	rrca
	ld c,00fh
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00300h
	ld c,003h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	inc bc
	nop
	inc bc
	ld c,003h
	ld c,003h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	rrca
	rrca
	rrca
	rrca
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
	ld bc,l6100h
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
	dec h
	rrca
	dec h
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00d00h
	rrca
	dec c
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld sp,0310fh
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	ld bc,0010fh
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00d00h
	rrca
	dec c
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	dec c
	rrca
	dec c
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl,de
	rrca
	add hl,de
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld bc,0010fh
	ld c,000h
	nop
	nop
	nop
	nop
	nop
	ld bc,00100h
	rrca
	ld bc,0010eh
	rrca
	nop
	nop
	nop
	nop
	ld bc,00d00h
	rrca
	dec c
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,0010fh
	ld c,001h
	rrca
	nop
	nop
	nop
	nop
	ld bc,00100h
	rrca
	ld bc,0010eh
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	dec c
	rrca
	dec c
	ld c,000h
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
	dec h
	rrca
	dec h
	rrca
	ld bc,0000fh
	nop
	nop
	nop
	ld bc,00d00h
	rrca
	dec c
	rrca
	ld bc,0000fh
	nop
	nop
	nop
	nop
	nop
	ld sp,0310fh
	rrca
	ld bc,0000fh
	nop
	nop
	nop
	ld (bc),a
	nop
	ld bc,0010fh
	rrca
	ld bc,0000fh
	nop
	nop
	nop
	nop
	nop
	dec c
	rrca
	dec c
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00d00h
	rrca
	dec c
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	nop
	add hl,de
	rrca
	add hl,de
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	ld bc,0010fh
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,0010fh
	rrca
	ld bc,0000fh
	nop
	nop
	nop
	inc bc
	nop
	dec c
	rrca
	dec c
	rrca
	ld bc,0000fh
	nop
	nop
	nop
	nop
	nop
	ld bc,0010fh
	rrca
	ld bc,0000fh
	nop
	nop
	nop
	inc bc
	nop
	ld bc,0010fh
	rrca
	ld bc,0000fh
	nop
	nop
	nop
	ld bc,00d00h
	rrca
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
	ld h,d
	rlca
	ld h,d
l4bc3h:
	rlca
	rrca
	ld a,(bc)
	nop
	nop
	nop
	nop
	ld bc,06a00h
	inc b
	ld l,c
	inc b
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
	nop
	nop
	nop
	nop
	ld bc,00f00h
	rrca
	rrca
	rrca
	inc bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	inc sp
	rrca
	inc sp
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
	ld bc,01b00h
	rrca
	dec de
	rrca
	rrca
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
	ld bc,00300h
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
	inc bc
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
	nop
	rst 8
	jp 0c0b7h
	ld (hl),024h
	inc hl
	inc hl
	ld a,(hl)
	sub 020h
	ld (hl),a
	dec hl
	dec hl
	ld a,048h
	ld (0c3cfh),a
	ret
	ld a,(0c1f7h)
	cp 002h
	ret c
	ret nz
	ld a,(0c1f6h)
	cp 028h
	ret
	ld a,(0c145h)
	or a
	ret nz
	ld a,(l72aah)
	dec a
	ld (l72aah),a
	ret nz
	ld a,(l72abh)
	ld (l72aah),a
	ld hl,l72ach
	ld de,072dch
	ld b,030h
l4cbdh:
	call sub_727fh
	inc hl
	inc de
	djnz l4cbdh
	ld hl,072dch
	ld de,0730ch
	ld b,010h
l4ccch:
	ld a,(hl)
	add a,a
	add a,a
	add a,a
	add a,a
	inc hl
	inc hl
	ld c,(hl)
	add a,c
	dec hl
	ld c,(hl)
	inc hl
	inc hl
	ld (de),a
	inc de
	ld a,c
	ld (de),a
	inc de
	djnz l4ccch
	ld hl,0730ch
	call 002e9h
	ld a,(0c398h)
	dec a
	ld (0c398h),a
	ret nz
	ld a,00ah
	ld (0c398h),a
	ld a,001h
	ld (0c145h),a
	ld b,050h
	ld hl,072dch
	xor a
l4cfeh:
	inc hl
	djnz l4cfeh
	ret
	ld a,(de)
	cp (hl)
	ret z
	inc a
	ld (de),a
	ret
	ld a,(l72aah)
	dec a
	ld (l72aah),a
	ret nz
	ld a,(l72abh)
	ld (l72aah),a
	ld hl,072dch
l4d19h:
	ld a,(hl)
	dec a
	cp 0ffh
	jr nz,l4d20h
	xor a
l4d20h:
	ld (hl),a
	inc hl
	djnz l4d19h
	call 07241h
	ld a,00ah
	ld (0c398h),a
	ret
	ld (bc),a
	inc bc
	nop
	nop
	ld bc,00203h
	nop
	ld b,005h
	nop
	rlca
	rlca
	inc b
	ld (bc),a
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
	ld bc,00101h
	nop
	nop
	nop
	ld bc,00701h
	rlca
	rlca
	rlca
	inc bc
	inc bc
	inc bc
	inc b
	inc b
	dec b
	rlca
	rlca
	nop
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(0c1b0h)
	or a
	ret z
	call 0056ch
	ld a,(0c1b0h)
	inc a
	ld (0c1b0h),a
	cp 002h
	jp z,l7357h
	cp 004h
	ret nz
	ld a,(0c1b1h)
	or a
	ld hl,l7361h
	jp z,07350h
	ld hl,073a1h
	ld bc,0209ah
	xor a
	jp 002deh
	ld bc,0209ah
	ld hl,l7381h
	xor a
	jp 002deh
	ld bc,03000h
	ld (bc),a
	ld h,b
	dec b
	ld (hl),h
	rlca
	ld (l6502h),hl
	ld b,054h
	dec b
	ld b,e
	inc b
	ld de,00001h
	nop
	rla
	ld bc,00777h
	inc sp
	inc bc
	ld b,l
	inc b
	ld (hl),b
	rlca
	ld (hl),b
	nop
	ld bc,03000h
	inc bc
	ld h,b
	ld b,075h
	rlca
	ld h,d
	ld (bc),a
	ld (hl),l
	ld b,064h
	dec b
	ld d,e
	inc b
	ld d,c
	ld bc,00000h
	rla
	ld bc,00777h
	ld (hl),d
	inc bc
	ld b,l
	inc b
	ld (hl),b
	rlca
	ld (hl),e
	inc bc
	ld bc,03000h
	ld bc,00360h
	ld (hl),e
	dec b
	ld (l7502h),hl
	ld b,073h
	dec b
	ld d,b
	ld (bc),a
	ld de,00001h
	nop
	rla
	ld bc,00777h
	inc sp
	inc bc
	ld b,l
	inc b
	ld (hl),b
	rlca
	ld (hl),b
	nop
	nop
	ld hl,l73f0h
	ld de,l5460h
	ld bc,0000ch
	ldir
	ld a,0feh
	ld (l5639h),a
	ret
	ld hl,l73fch
	ld de,l5460h
	ld bc,0000ch
	ldir
	ret
	ld hl,l73f0h
	ld de,l5460h
	ld bc,0000ch
	ldir
	ld a,0c9h
	ld (l5639h),a
	ret
	xor a
	ld (0c160h),a
	ld a,006h
	ld (0c238h),a
	ld (0c23ch),a
	ld a,002h
	ld (0c160h),a
	jp l546ch
	ld de,00006h
	add hl,de
	ld e,(hl)
	ld d,000h
	push hl
	ld hl,l7416h
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	pop hl
	push de
	ret
	adc a,a
	ld (hl),h
	ld d,a
	ld (hl),l
	and b
	halt
	add a,a
	ld (hl),a
	ld a,b
	ld a,b
	ld d,b
	ld a,c
	cp e
	ld a,c
	ld d,b
	ld a,e
	inc bc
	ld a,h
	add a,c
	ld (hl),a
	adc a,b
	ld a,c
	ld de,00003h
	add hl,de
	ld a,(hl)
	dec a
	jp nz,l7441h
	ld a,(0c148h)
	and 003h
	ld a,002h
	jp z,07440h
	xor a
	ld (hl),a
	sbc hl,de
	ret
	ld a,001h
	ld (0c39dh),a
	ld a,001h
	ld (0c39eh),a
	ret
	ld c,07fh
	jp sub_7454h+2
	ld c,03fh
	push hl
	ld a,(hl)
	add a,002h
	and c
	ld (hl),a
	ld h,000h
	ld l,a
	add hl,de
	ld b,(hl)
	inc hl
	ld c,(hl)
	pop hl
	dec hl
	dec hl
	dec hl
	ld a,(hl)
	add a,c
	ld (hl),a
	dec hl
	ld a,(hl)
	add a,b
	ld (hl),a
	ret
	nop
	cp 000h
	cp 000h
	cp 0ffh
	cp 0ffh
	cp 0ffh
	cp 0ffh
	cp 0ffh
	cp 0feh
	cp 0ffh
	cp 0feh
	rst 38h
	cp 000h
	cp 0feh
	cp 0ffh
	cp 0ffh
	cp 000h
	dec hl
	ld a,(hl)
	and 002h
	ld b,000h
	dec hl
	dec hl
	jp z,l74a4h
	ld b,0ffh
	ld a,r
	or a
	jp nz,l74a4h
	ld (hl),032h
	ld a,(hl)
	inc hl
	inc hl
	or a
	cp 031h
	ld b,001h
	ld c,002h
	jp nz,l74b5h
	ld c,0feh
	ld b,0ffh
	ld a,(hl)
	sub c
	and 01fh
	ld (hl),a
	ld e,a
	ld d,000h
	dec hl
	ld a,(hl)
	jp nz,l74c6h
	sub b
	and 003h
	ld (hl),a
	ld c,a
	push hl
	ld hl,0746fh
	add hl,de
	ld a,c
	or a
	jp z,074f7h
	dec a
	jp z,074eeh
	dec a
	jp z,074e2h
	ld e,(hl)
	inc hl
	ld a,(hl)
	neg
	ld d,a
	jp l74fah
	ld a,(hl)
	neg
	ld d,a
	inc hl
	ld a,(hl)
	neg
	ld e,a
	jp l74fah
	ld a,(hl)
	neg
	ld e,a
	inc hl
	ld d,(hl)
	jp l74fah
	ld d,(hl)
	inc hl
	ld e,(hl)
	pop hl
	dec hl
	dec hl
	dec hl
	ld a,(hl)
	add a,e
	add a,b
	cp 0ceh
	jp c,07507h
	dec a
	ld (hl),a
	ld a,r
	and 00fh
	call z,l7c66h+1
	dec hl
	ld a,(hl)
	add a,d
	ld (hl),a
	ret
	nop
	rst 38h
	rst 38h
	cp 0ffh
	rst 38h
	cp 0feh
	rst 38h
	rst 38h
	cp 0feh
	rst 38h
	defb 0fdh,0feh,0feh ;illegal sequence
	rst 38h
	cp 0feh
	rst 38h
	rst 38h
	rst 38h
	cp 000h
	rst 38h
	nop
	cp 000h
	rst 38h
	ld bc,001feh
	rst 38h
	ld bc,001feh
	rst 38h
	ld (bc),a
	cp 001h
	rst 38h
	ld bc,002feh
	rst 38h
	ld (bc),a
	cp 003h
	rst 38h
	ld bc,000feh
	rst 38h
	ld (bc),a
	cp 001h
	rst 38h
	ld bc,000feh
	rst 38h
	nop
	cp 000h
	rst 38h
	ld h,h
	ld h,h
	inc hl
	ld a,(hl)
	cp 082h
	jp nc,07563h
	ld a,001h
	ld (0c39eh),a
	dec hl
	dec hl
	ld a,(hl)
	or a
	jp nz,07582h
	ld (hl),001h
	xor a
	ld (0c39eh),a
	call sub_56c2h
	jp z,07582h
	xor a
	ld de,00004h
	sbc hl,de
	ld (hl),003h
	dec hl
	ld (hl),0e6h
	ret
	ld a,(0c1f2h)
	and 001h
	jp z,l75f0h
	ld de,00004h
	add hl,de
	ld a,(hl)
	sbc hl,de
	or a
	jp nz,l75a6h
	sbc hl,de
	ld a,(l7555h)
	ld (hl),a
	dec hl
	ld a,(l7556h)
	add a,010h
	ld (hl),a
	inc hl
	jp 075b6h
	dec hl
	ld de,l7515h
	call sub_7454h
	ld a,(hl)
	ld (l7556h),a
	inc hl
	ld a,(hl)
	ld (l7555h),a
	ld a,(hl)
	inc hl
	and 002h
	jp z,075c1h
	ld a,(hl)
	xor 010h
	ld (hl),a
	dec hl
	ld a,r
	or a
	jp nz,l75d0h
	ld a,(0c211h)
	and 004h
	call nz,l7c66h+1
	ld a,(hl)
	and 007h
	jp nz,l75e5h
	ld b,(hl)
	ld a,(0c201h)
	ld c,0ffh
	cp b
l5060h:
	jp c,l75e2h
	ld c,001h
	ld a,b
	add a,c
	ld (hl),a
	dec hl
	ld a,(0c39eh)
	or a
	ret z
	dec hl
	ld (hl),024h
	inc hl
	ret
	ld de,00005h
	xor a
	sbc hl,de
	ret
	nop
	call m,0fc01h
	ld bc,001fch
	call m,0fd02h
	ld bc,002fdh
	defb 0fdh,002h,0feh ;illegal sequence
	ld (bc),a
	cp 003h
	rst 38h
	ld (bc),a
	rst 38h
l5090h:
	inc bc
	nop
	ld (bc),a
	nop
	ld bc,00101h
	ld bc,00200h
	nop
	inc bc
	rst 38h
	inc bc
	rst 38h
	inc b
	cp 004h
	defb 0fdh,003h,0feh ;illegal sequence
	inc bc
	defb 0fdh,003h,0feh ;illegal sequence
	ld (bc),a
	cp 001h
	cp 000h
	rst 38h
	rst 38h
	cp 0ffh
	rst 38h
	cp 0ffh
	defb 0fdh,0ffh,0fdh ;illegal sequence
	nop
	defb 0fdh,000h,0fbh ;illegal sequence
	nop
	jp m,0f900h
	nop
	ret m
	nop
	ret m
	nop
	ret m
	nop
	ret m
	nop
	ld sp,hl
	nop
	jp m,0fb00h
	nop
	ei
	nop
	defb 0fdh,000h,0fdh ;illegal sequence
	nop
	cp 000h
	rst 38h
	nop
	nop
	nop
	inc bc
	nop
	inc b
	nop
	dec b
	nop
	ld b,000h
	ld b,000h
	rlca
	nop
	ld b,000h
	dec b
	nop
	dec b
	nop
	inc b
	nop
	inc b
	nop
	inc b
	nop
	inc bc
	nop
	ld (bc),a
	nop
	ld (bc),a
	nop
	ld bc,00776h
	ld (hl),h
	inc b
	ld b,d
	ld (bc),a
	ld a,(0c308h)
	or a
	ret z
	ld a,(0c3d0h)
	cp 0a4h
	jp c,l768bh
	ret
	ld a,(l5b60h)
	or a
	ret nz
	ex de,hl
	ld a,005h
	ld bc,0069ah
	call 002deh
	ex de,hl
	ld a,001h
	ld (l5b60h),a
	ret
	call 0742ch
	ld de,07677h
	call sub_767dh
	dec hl
	ld a,(hl)
	or a
	jp nz,l76beh
	inc a
	ld (hl),a
	dec hl
	dec hl
	ld a,r
	and 002h
	ld c,a
	ld a,035h
	xor c
	ld (hl),a
	inc hl
	inc hl
	ld a,(hl)
	cp 001h
	jp nz,l76d2h
	ld a,r
	and 01fh
	jp nz,l76e8h
	dec hl
	ld a,(hl)
	inc hl
	and a
	jp nz,l76e8h
	ld a,(hl)
	add a,008h
	ld (hl),a
	dec hl
	ld a,(hl)
	push af
	ld de,07637h
	call sub_7454h
	inc hl
	pop af
	cp 01eh
	call z,l7c66h+1
	dec hl
	ret
	dec hl
	ld de,075f7h
	call sub_7454h
	inc hl
	ld a,(hl)
	cp 064h
	jr c,l517eh
	ld a,r
	or a
	call z,l7c66h+1
l517eh:
	dec hl
	dec hl
	ld (hl),021h
	inc hl
	ret
	ld bc,001feh
	cp 002h
	rst 38h
	ld (bc),a
	rst 38h
	ld (bc),a
	rst 38h
	inc bc
	rst 38h
	ld (bc),a
	nop
	inc bc
	rst 38h
	inc bc
	nop
	inc bc
	nop
	ld (bc),a
	ld bc,00003h
	ld (bc),a
	ld bc,00202h
	ld bc,00002h
	ld (bc),a
	nop
	inc bc
	nop
	inc bc
	rst 38h
	ld (bc),a
	rst 38h
	ld (bc),a
	cp 001h
	cp 001h
	cp 001h
	defb 0fdh,000h,0fdh ;illegal sequence
	rst 38h
	defb 0fdh,0ffh,0feh ;illegal sequence
	cp 0fdh
	cp 0feh
	defb 0fdh,0feh,0feh ;illegal sequence
	rst 38h
	cp 0ffh
	cp 000h
	cp 000h
	defb 0fdh,0ffh,0feh ;illegal sequence
	rst 38h
	cp 0feh
	cp 0feh
	cp 0feh
	rst 38h
	defb 0fdh,000h,0fdh ;illegal sequence
	ld bc,002fdh
	cp 003h
	defb 0fdh,003h,0feh ;illegal sequence
	inc bc
	cp 002h
	rst 38h
	inc bc
	rst 38h
	ld (bc),a
	ld bc,00102h
	inc bc
	ld bc,00102h
	ld (bc),a
	ld bc,00103h
	ld (bc),a
	ld bc,00001h
	nop
	nop
	rst 38h
	nop
	nop
	nop
	rst 38h
	nop
	rst 38h
	nop
	cp 000h
	defb 0fdh,000h,0feh ;illegal sequence
	nop
	dec iy
	ld b,000h
	jp l77b7h
	dec hl
	ld a,(hl)
	dec a
	ld b,000h
	jp z,l77b7h
	dec a
	ld b,002h
	jp z,l77b7h
	ld a,(0c157h)
	cp 003h
	ld a,001h
	jp c,077b6h
	ld a,r
	and 000h
	ld a,001h
	jp z,077b6h
	ld de,00004h
	sbc hl,de
	ld (hl),00ah
	add hl,de
	dec hl
	ld (hl),010h
	inc hl
	ld a,002h
	ld (hl),a
	dec hl
	ld a,(0c1f2h)
	and 001h
	jp nz,l77d8h
	ld de,00003h
	sbc hl,de
	ld a,(hl)
	add a,b
	cp 014h
	jp nc,l77cdh
	dec a
	ld (hl),a
	ld a,r
	and 03fh
	call z,sub_7c3ah
	dec (hl)
	dec hl
	ret
	ld de,07701h
	call sub_744fh
	ld a,r
	and 007h
	ret nz
	ld b,(hl)
	ld a,(0c200h)
	cp b
	ld a,0ffh
	jp c,l77efh
	ld a,001h
	add a,b
	ld (hl),a
	ret
	call m,0fd00h
	nop
	defb 0fdh,000h,0feh ;illegal sequence
	nop
	defb 0fdh,000h,0fdh ;illegal sequence
	nop
	cp 000h
	defb 0fdh,000h,0feh ;illegal sequence
	nop
	defb 0fdh,000h,0feh ;illegal sequence
	nop
	cp 000h
	rst 38h
	nop
	cp 000h
	rst 38h
	nop
	nop
	nop
	nop
	nop
	ld bc,00200h
	nop
	ld bc,00200h
	nop
	ld (bc),a
	nop
	inc bc
	nop
	ld (bc),a
	nop
	inc bc
	nop
	ld (bc),a
	nop
	inc bc
	nop
	inc bc
	nop
	ld (bc),a
	nop
	inc bc
	nop
	inc bc
	nop
	inc b
	nop
	inc b
	nop
	inc bc
	nop
	inc bc
	nop
	ld (bc),a
	nop
	inc bc
	nop
	inc bc
	nop
	ld (bc),a
	nop
	inc bc
	nop
	ld (bc),a
	nop
	inc bc
	nop
	ld (bc),a
	nop
	ld (bc),a
	nop
	ld bc,00200h
	nop
	ld bc,00000h
	nop
	nop
	nop
	rst 38h
	nop
	cp 000h
	rst 38h
	nop
	cp 000h
	cp 000h
	defb 0fdh,000h,0feh ;illegal sequence
	nop
	defb 0fdh,000h,0feh ;illegal sequence
	nop
	defb 0fdh,000h,0fdh ;illegal sequence
	nop
	cp 000h
	defb 0fdh,000h,0fdh ;illegal sequence
	nop
	call m,sub_6300h
	ld b,042h
	dec b
	ld hl,0cd02h
	inc l
	ld (hl),h
	ld de,l7872h
	call sub_767dh
	ld de,00005h
	sbc hl,de
	ld a,(hl)
	dec a
	ld (hl),a
	cp 0c0h
	jp c,l7890h
	dec (hl)
	dec (hl)
	cp 0aah
	jp c,07896h
	dec (hl)
	cp 09dh
	dec hl
	jp nc,078c6h
	and 03fh
	cp 020h
	ret c
	cp 03fh
	call z,sub_78b9h
	dec e
	add hl,de
	inc hl
	ld a,(hl)
	dec hl
	or a
	ld de,077f2h
	jp z,l78b5h
	ld de,l7832h
	call sub_7454h
	ret
l533ch:
	ld a,r
	and 001h
	ret z
	add hl,de
	ld a,(hl)
	xor 001h
	ld (hl),a
	sbc hl,de
	ret
	ld a,r
	and 001h
	ret nz
	inc hl
	dec (hl)
	dec hl
	ret
	nop
l5353h:
	call m,0fc00h
	nop
	defb 0fdh,000h,0fdh ;illegal sequence
	nop
	call m,0fd00h
	nop
	defb 0fdh,000h,0fdh ;illegal sequence
	nop
	defb 0fdh,000h,0feh ;illegal sequence
	nop
	cp 000h
	cp 000h
	rst 38h
	nop
	rst 38h
	nop
	rst 38h
	nop
	rst 38h
	nop
	rst 38h
	ld bc,00200h
	ld bc,00101h
	ld (bc),a
	ld bc,00101h
	ld (bc),a
	ld bc,00103h
	nop
	ld bc,00002h
	ld (bc),a
	ld bc,00001h
	ld bc,000ffh
	rst 38h
	nop
	rst 38h
	nop
	rst 38h
	nop
	call m,0fc00h
	nop
	defb 0fdh,000h,0fdh ;illegal sequence
	nop
	call m,0fd00h
	nop
	defb 0fdh,000h,0fdh ;illegal sequence
	nop
	defb 0fdh,000h,0fdh ;illegal sequence
	nop
	defb 0fdh,000h,0fdh ;illegal sequence
	nop
	cp 000h
	cp 000h
	cp 000h
	cp 000h
	nop
	rst 38h
	ld bc,002feh
	rst 38h
	ld (bc),a
	cp 002h
	rst 38h
	ld (bc),a
	cp 002h
	defb 0fdh,002h,000h ;illegal sequence
	ld (bc),a
	cp 001h
	cp 002h
	rst 38h
	ld bc,000ffh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	call 0742ch
	dec hl
	dec hl
	ld de,078cfh
	ld a,(0794fh)
	cp 080h
	jp c,07963h
	ld de,0790fh
	call sub_7454h
	inc hl
	call 0015fh
	ex de,hl
	jp nc,l797bh
	push hl
	ld de,00006h
	add hl,de
	ld (hl),014h
	dec hl
	ld (hl),000h
	pop hl
	ret
	ret
	ld a,r
	and 003h
	ret nz
	ld a,(0794fh)
	inc a
	ld (0794fh),a
	ret
	dec hl
	ld a,(0c1f2h)
	and 00fh
	jp nz,l7998h
	ld a,(hl)
	cp 003h
	jp z,l7998h
	inc (hl)
	ld b,(hl)
	xor a
	ld de,00004h
	sbc hl,de
	ld a,(hl)
	sub b
	ld (hl),a
	dec hl
	ld a,r
	and 003h
	ret nz
	ld a,(0c200h)
	cp (hl)
	ld c,001h
	jp c,l79b3h
	ld c,0ffh
	ld a,(hl)
	sub c
	ld (hl),a
	ret
	ld h,h
	ld h,h
	nop
	nop
	inc hl
	inc hl
	inc hl
	ld b,(hl)
	dec hl
	dec hl
	ld a,(hl)
	cp 082h
	jp nc,l79cch
	ld a,001h
	ld (0c39dh),a
	dec hl
	dec hl
	dec hl
	ld a,(hl)
	or a
	jp nz,l79f0h
	dec hl
	dec hl
	dec hl
	dec (hl)
	ld a,(hl)
	ld (079b7h),a
	dec hl
l5460h:
	ld a,(hl)
	ld (l79b8h),a
	ld de,00007h
	add hl,de
	ld (hl),0ffh
	ld a,0ffh
l546ch:
	ld (l79b9h+1),a
	xor a
	sbc hl,de
	ret
	ld a,r
	and 007h
	jp nz,l79f8h
	dec (hl)
	inc hl
	ld a,(hl)
	or a
	jp nz,07a1bh
	ld (hl),001h
	xor a
	ld (0c39dh),a
	call sub_56c2h
	jp z,07a1bh
	xor a
	ld de,00004h
	sbc hl,de
	ld (hl),003h
	dec hl
	ld (hl),0e6h
	ld a,001h
	ld (0c39dh),a
	ret
	ld a,b
	or a
	jp nz,07a41h
	inc hl
	inc hl
	ld a,(l79b9h+1)
	ld (hl),a
	dec hl
	dec hl
	ld de,00005h
	sbc hl,de
	ld a,(l79b8h)
	add a,010h
	ld (hl),a
	inc hl
	ld a,(079b7h)
	ld (hl),a
	ld a,r
	or a
	call z,l7c66h+1
	jp l7ae2h
	push af
	inc hl
	inc hl
	ld a,(hl)
	ld (l79b9h+1),a
	dec hl
	dec hl
	pop af
	ld de,00004h
	sbc hl,de
	ld a,(hl)
	cp 0dch
	jp nz,07a60h
	ld a,r
	and 003h
	jp z,07a60h
	ld a,006h
	ld (hl),a
	ld a,r
	and 007h
	cp 004h
	jp c,l7a81h
	cp 006h
	dec hl
	jp nc,l7a8fh
	ld a,(0c200h)
	sub 00ah
	cp (hl)
	ld a,0ffh
	jp c,l7a7ch
	ld a,001h
	add a,(hl)
	ld (hl),a
	jp l7a8fh
	ld a,(0c201h)
	cp (hl)
	ld a,0ffh
	jp c,l7a8ch
	ld a,001h
	add a,(hl)
	ld (hl),a
	dec hl
	ld a,(hl)
	ld (l79b8h),a
	add a,018h
	ld c,a
	inc hl
	ld a,r
	and 003h
	ld a,(hl)
	jp nz,l7aadh
	cp 096h
	jp c,l7aadh
	dec a
	ld (hl),a
	cp 0b4h
	jp c,l7aadh
	dec a
	ld (hl),a
	ld (079b7h),a
	add a,010h
	ld b,a
	ld a,001h
	ld (l79b9h),a
	ld de,0c211h
	exx
	ld a,(l79b9h)
	rlca
	dec a
	ld hl,0c119h
	ld e,a
	ld d,000h
	add hl,de
	ld a,(hl)
	cp 002h
	exx
	jp nc,l7b23h
	call sub_7aedh
	inc de
	inc de
	inc de
	inc de
	ld a,(l79b9h)
	inc a
	and 007h
	ld (l79b9h),a
	jp nz,l7abbh
	dec hl
	ld a,(0c39dh)
	or a
	ret z
	dec hl
	ld (hl),024h
	inc hl
	ret
	ld a,(de)
	cp b
	ret nc
	add a,020h
	cp b
	ret c
	dec de
	ld a,(de)
	inc de
	cp c
	ret nc
	add a,020h
	cp c
	ret c
	ld a,(0c201h)
	cp (hl)
	ld a,004h
	jp c,l7b08h
	ld a,0fch
	add a,(hl)
	cp 0b4h
	ret nc
	ld (hl),a
	ld (079b7h),a
	cp 0d6h
	ret c
	ld (hl),0dbh
	ld (079b7h),a
	ld a,r
	and 003h
	ret nz
	ld a,001h
	ld (0c39dh),a
	ret
	ld a,(de)
	cp b
	jp nc,l7ad2h
	add a,020h
	cp b
	jp c,l7ad2h
	dec de
	ld a,(de)
	inc de
	cp c
	jp nc,l7ad2h
	add a,020h
	cp c
	jp c,l7ad2h
	ld a,(0c200h)
	dec hl
	cp (hl)
	ld a,004h
	jp c,l7b47h
	ld a,0fbh
	add a,(hl)
	ld (hl),a
	inc hl
	ld (l79b8h),a
	jp l7ad2h
	inc hl
	ld a,(hl)
	cp 0ffh
	jp z,l7bbfh
	ld (hl),0ffh
	ld a,(l5e5dh)
	or a
	jp z,l7bbfh
	ld a,(l64bch)
	cp 003h
	jp z,l7bbfh
	or a
	jp z,l7bbfh
	ld a,001h
	ld (0c1b0h),a
	push hl
	ld hl,(l5e5fh)
	ld de,00096h
	sbc hl,de
	pop hl
	jp nc,l7b83h
	ld a,001h
	ld (0c1b1h),a
	push hl
	ld hl,(l5e5fh)
	ld a,(0c13eh)
	ld e,a
	ld d,000h
	sbc hl,de
	ld (l5e5fh),hl
	pop hl
	jp nc,l7bbfh
	ld a,001h
	ld (l5e61h),a
	ld a,(l623dh)
	or a
	jp z,l7badh
	ld a,000h
	ld (l5e61h),a
	ld hl,00001h
	ld (l5e5fh),hl
	ld a,(l623eh)
	or a
	jp z,l7bbfh
	ld a,000h
l5639h:
	ld (l5e61h),a
	ld hl,00001h
	ld (l5e5fh),hl
	dec hl
	dec hl
	dec hl
	dec hl
	ld a,(hl)
	inc a
	and 003h
	ld (hl),a
	dec hl
	ld c,000h
	jp nz,l7be6h
	ld a,(hl)
	add a,008h
	cp 09bh
	jp nz,l7bdch
	ld a,063h
	ld b,077h
	ld c,001h
	ld (hl),a
	cp 07bh
	jp nz,l7be6h
	ld b,073h
	ld c,001h
	dec hl
	ld a,(0c1f5h)
	or a
	jp nz,l7bf7h
	ld a,(0c1f2h)
	and 001h
	jp z,l7bf7h
	dec (hl)
	dec hl
	ld a,c
	or a
	ret z
	ld a,(0fff6h)
	ld c,a
	ld a,b
	sub c
	ld (hl),a
	ret
	dec hl
	ld a,(hl)
	inc a
	and 007h
	ld (hl),a
	dec hl
	ld a,(hl)
sub_568eh:
	ld b,a
	jp nz,07c10h
	inc (hl)
	dec hl
	ld a,(hl)
	inc a
	and 003h
	ld (hl),a
	dec hl
	jp nz,l7c25h
	ld a,(hl)
	add a,008h
	cp 0dbh
	jp nz,l7c24h
	ld a,0c3h
	ld (hl),a
	dec hl
	ld a,(hl)
	sub b
	ld (hl),a
	dec hl
	ld a,r
	and 007h
	cp 003h
	ret nc
	ld a,(0c200h)
	cp (hl)
	dec (hl)
	ret c
	inc (hl)
	inc (hl)
	ret
	ld a,(0c157h)
	cp 001h
sub_56c2h:
	jp nc,l7c66h+1
	ret
	ld a,(0c157h)
	cp 002h
	jp nc,l7c66h+1
	ret
	ld a,(0c157h)
	cp 003h
	jp nc,l7c66h+1
	ret
	ld a,(0c157h)
	cp 004h
	jp nc,l7c66h+1
	ret
	ld a,(0c157h)
	cp 005h
	jp nc,l7c66h+1
	ret
	ld a,(hl)
	ld (0c3c8h),a
	dec hl
	ld a,(hl)
	ld (0c3c7h),a
	inc hl
	ld a,001h
	ld (0c3c9h),a
	ret
	dec d
	nop
	call c,031fbh
	nop
	nop
	nop
	add hl,bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	nop
	call c,02aa3h
	cp 000h
	ld (bc),a
	and b
	ld c,001h
	rst 38h
	nop
	nop
	nop
	nop
	dec d
	nop
	in a,(0abh)
	jr z,l5720h
l5720h:
	ld bc,0a002h
	ld c,000h
	rst 38h
	nop
	nop
	nop
	nop
	dec d
	nop
	call c,035e3h
	nop
	nop
	inc b
	ld (de),a
	ld a,(bc)
	ld bc,00000h
	nop
	nop
	nop
	dec d
	nop
	call c,02ddbh
	nop
	nop
	ld b,009h
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	nop
	call c,02fd3h
	cp 000h
	ex af,af'
	add hl,bc
	ld a,(bc)
	ld bc,00000h
	nop
	nop
	nop
	dec d
	nop
	call c,033ebh
	nop
	nop
	ld a,(bc)
	add hl,bc
	ld a,(bc)
	ld bc,00000h
	nop
	nop
	nop
	dec d
	nop
	call c,024c3h
	ld b,(hl)
	nop
	inc c
	xor d
	ld c,001h
	rst 38h
	nop
	nop
	nop
	nop
	dec d
	nop
l577ch:
	in a,(0cbh)
	ld h,0ffh
	nop
	inc c
	xor d
	ld c,000h
	rst 38h
	nop
	nop
	nop
	nop
	dec d
	nop
	call c,031fbh
	nop
	nop
	nop
	add hl,bc
	ld a,(bc)
	ld (bc),a
	nop
	nop
	nop
	nop
	nop
	dec d
	nop
	rst 18h
	ld h,e
	jr l57a0h
l57a0h:
	nop
	ld c,0ffh
	ld b,000h
	nop
	nop
	nop
	nop
	nop
	dec d
	nop
	cp d
	and e
	ld a,(de)
	ld bc,01000h
	add hl,bc
	ld a,(bc)
	rst 38h
	nop
	nop
	nop
	nop
	nop
	inc h
	nop
	cp b
	and e
	ld a,(de)
	ld bc,01000h
l57c2h:
	add hl,bc
	ld a,(bc)
	rst 38h
	nop
	nop
	nop
	nop
	nop
	dec d
	nop
	call c,02ddbh
	nop
	nop
	ld (de),a
	add hl,bc
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,08c10h
	add hl,de
	jr nz,l577ch
	dec hl
	ld d,b
	and b
	ld b,b
	ld d,b
	sub (hl)
	ld sp,08250h
	ld b,a
	ld b,b
	add a,d
	inc d
	ld d,b
	ld h,h
	inc d
	ld d,b
	ld h,h
	rra
	ld b,b
	and b
	jr nz,l5837h
	sub (hl)
	add hl,hl
	ld b,b
	xor d
	ld c,(hl)
	ld b,b
	ld a,b
	ld bc,l6e70h
	ld (hl),e
	add a,b
	ld a,(hl)
	inc bc
	ld h,b
	ld h,h
	ld a,d
	ld h,b
	ld h,h
	inc bc
	ld h,b
	ld l,(hl)
	ld a,(hl)
	ld h,b
	ld l,(hl)
	ld bc,l7890h
	adc a,h
	sub b
	cp (hl)
	ld bc,09610h
	ld b,(hl)
	jr nz,l57c2h
	ld bc,l6490h
	adc a,h
	sub b
	cp (hl)
	ld bc,l5090h
	inc d
	sub b
	jp nc,l401fh
	ld h,h
	jr nc,l586dh
	ld l,(hl)
	rra
	ld b,b
	ld a,b
	jr nc,l5873h
	add a,d
	rra
	ld b,b
	cp b
l5837h:
	jr nc,l5879h
	xor (hl)
	ld (0be00h),a
	inc d
	nop
	ld d,b
	ld (05a00h),a
	inc bc
l5844h:
	ld h,b
	ret z
	add hl,hl
	ld h,b
	ret z
	inc bc
	ld h,b
	ld a,b
	add hl,hl
l584dh:
	ld h,b
	ld a,b
	inc bc
l5850h:
	ld h,b
	ld e,d
	add hl,hl
	ld h,b
	ld e,d
	inc bc
	ld h,b
	ret z
	add hl,hl
	ld h,b
	ret z
	inc bc
	ld h,b
	ld a,b
	dec a
	ld h,b
	ld a,b
	inc bc
	ld h,b
	ld e,d
	ld h,l
	ld h,b
	ld e,d
	ld bc,02810h
	scf
	jr nz,$+58
l586dh:
	ld bc,0c870h
	dec l
	add a,b
	ret c
l5873h:
	rra
	ld b,b
	ld h,h
	rra
	ld b,b
	or h
l5879h:
	jr nz,l58bbh
	ld h,h
	add hl,hl
	ld b,b
	ld l,(hl)
	ld c,(hl)
	ld b,b
	xor d
	jr nc,l58c4h
	ld l,(hl)
	rra
	ld b,b
	sub (hl)
	jr nz,l58cah
	ld h,h
	add hl,hl
	ld b,b
	and b
	or d
	ld b,b
	ld h,h
	rra
	sub b
	ld h,h
	jr z,l5896h
l5896h:
	cp (hl)
	add hl,hl
	nop
	ld a,b
	ld (0be90h),a
	inc sp
	nop
	ld h,h
	inc a
	nop
	ret z
	ld (0d200h),a
	inc d
	nop
	ld h,h
	ld (l6400h),a
	dec bc
	jr nc,$+72
	dec d
	jr nc,$+72
	dec bc
	jr nc,$-114
	ld l,h
	jr nc,l5844h
	dec bc
	jr nc,l5901h
l58bbh:
	dec d
	jr nc,$+72
	dec bc
	jr nc,l584dh
	sbc a,(hl)
	jr nc,l5850h
l58c4h:
	rra
	ret nc
	and b
	rra
	ret nc
	or h
l58cah:
	jr nz,$-46
	ret z
	add hl,hl
	ret nc
	ret z
	ld c,(hl)
	ret nc
	or h
	jr nc,$-46
	ret z
	rra
	ret nc
	or h
	jr nz,$-46
	cp (hl)
	ld hl,(0ce40h)
	add hl,hl
	ld b,b
	adc a,095h
	ld b,b
	adc a,02eh
	ld d,b
	cp c
	add hl,hl
	ld d,b
	xor a
	ld l,050h
	and l
	add hl,hl
	ld d,b
	sbc a,e
	ld b,d
	ld d,b
	adc a,h
	ld bc,09610h
	jr nz,l5919h
	and (hl)
	ld bc,l7d50h
	inc d
	nop
	sub (hl)
	ld a,(de)
l5901h:
	ld d,b
	ld a,b
	jr z,l5905h
l5905h:
	and b
	ld bc,06e50h
	inc d
	nop
	sub (hl)
	ld a,(de)
	ld d,b
	ld l,(hl)
	inc d
	nop
	ld d,b
	ld d,a
	ld d,b
	ld h,h
	ld bc,0c870h
	dec l
l5919h:
	add a,b
	ret c
	rra
	nop
	add a,d
	ld e,000h
	cp (hl)
	rra
	nop
	ld a,b
	ld e,000h
	cp (hl)
	inc d
	nop
	adc a,h
	inc d
	nop
	ret z
	inc d
	sub b
	jp nc,09014h
	ld h,h
	ld a,(bc)
	nop
	ld h,h
	dec bc
	nop
	ld a,b
	ld a,(bc)
	nop
	cp (hl)
	dec bc
	nop
	ld a,b
	ld a,(bc)
	nop
	cp (hl)
	ld a,(bc)
	nop
	ld h,h
	ld a,(bc)
	nop
	ret z
	ld a,(bc)
	nop
	jp nc,0000ah
	ld h,h
	xor d
	nop
	ld h,h
	inc bc
	ld h,b
	ld (l6029h),a
	ld (l6003h),a
	and b
	add hl,hl
	ld h,b
	and b
	inc bc
	ld h,b
	ld d,b
	dec a
	ld h,b
	ld d,b
	inc bc
	ld h,b
	add a,d
	ld bc,08260h
	dec bc
	jr nc,l59a8h
	ld a,c
	jr nc,l59abh
	dec bc
	jr nc,l59aeh
	add hl,hl
	jr nc,l59b1h
	ex af,af'
	nop
	ld d,b
	ex af,af'
	nop
	ld d,b
	ex af,af'
	nop
l597dh:
	ld d,b
	ex af,af'
	nop
l5980h:
	ld d,b
	ex af,af'
	nop
	ld d,b
	ex af,af'
	nop
	ld d,b
	ex af,af'
	nop
	ld d,b
	ld d,d
	nop
	ld d,b
	rlca
	nop
l598fh:
	ld d,b
	rlca
	nop
l5992h:
	ld d,b
	rlca
	nop
	ld d,b
	rlca
	nop
	ld d,b
	rlca
	nop
	ld d,b
	rlca
	nop
	ld d,b
	add hl,sp
	sub b
	ld d,b
	inc bc
	ld h,b
	ld d,b
	ld bc,l5060h
l59a8h:
	inc bc
	ld h,b
	ld h,h
l59abh:
	rrca
	ld h,b
	ld h,h
l59aeh:
	rlca
	nop
	ld e,d
l59b1h:
	rlca
	nop
	ld e,d
	cpl
	nop
	ld e,d
	rlca
	nop
	ld e,d
l59bah:
	rlca
	nop
	ld e,d
	rlca
	nop
	ld e,d
	rlca
	nop
	add a,d
	rlca
	nop
l59c5h:
	add a,d
	rlca
	nop
	add a,d
	rlca
	nop
	add a,d
	rlca
	nop
	add a,d
	rlca
	nop
l59d1h:
	add a,d
	inc bc
	ld h,b
	add a,d
	ld h,h
	ld h,b
l59d7h:
	add a,d
	inc bc
	ld h,b
	add a,d
	add hl,sp
	ld h,b
	add a,d
	dec bc
	jr nc,l598fh
	ld l,a
	jr nc,l5992h
	dec bc
	jr nc,l597dh
	adc a,b
	jr nc,l5980h
	ld bc,08c10h
	jr nz,l5a0fh
	sbc a,h
	rra
	ret nc
	adc a,h
	jr nc,l59c5h
	add a,d
	rra
	ret nc
	ld (0d030h),a
	ld (0d01fh),a
	ld b,b
	jr nc,l59d1h
	ld (hl),01fh
	ret nc
	ld b,(hl)
	jr nc,l59d7h
l5a07h:
	ld e,d
	rra
	ld b,b
	ld d,b
	jr nc,l5a4dh
	ld e,d
	rra
l5a0fh:
	ld b,b
l5a10h:
	ld c,d
	jr nc,l5a53h
	ld e,d
	inc bc
	ld h,b
	ld d,b
l5a17h:
	dec l
	ld h,b
	ld d,b
	inc bc
	ld h,b
	ld d,b
	dec l
	ld h,b
	ld d,b
	inc bc
	ld h,b
	ld b,(hl)
	dec l
	ld h,b
	ld b,(hl)
	inc bc
	ld h,b
	ld b,(hl)
	dec l
	ld h,b
	ld b,(hl)
	inc bc
	ld h,b
	ld e,d
	scf
	ld h,b
	ld e,d
	inc bc
	ld h,b
	ld e,d
	scf
	ld h,b
	ld e,d
	inc bc
	ld h,b
	ld d,b
	scf
	ld h,b
	ld d,b
	inc bc
	ld h,b
	ld d,b
	ld e,a
	ld h,b
	ld d,b
	ld bc,l5a10h
	jr nz,l5a69h
	ld l,d
	inc d
	ret nc
	ld h,h
l5a4dh:
	inc de
	ret nc
	ld a,l
	inc d
	ret nc
	ld l,c
l5a53h:
	inc de
	ret nc
	ld a,b
	inc bc
	ld h,b
	ld d,b
	add hl,de
	ld h,b
	ld d,b
	inc bc
	ld h,b
	ld d,b
	add hl,de
	ld h,b
	ld d,b
	inc d
	ld b,b
	ld h,h
	inc de
	ld b,b
	ld a,l
	inc d
l5a69h:
	ld b,b
	ld l,c
	inc de
	ld b,b
	ld a,b
	ld bc,l6440h
	ld c,(hl)
	ld b,b
	ld a,b
	ld (07850h),a
	ld hl,07850h
	inc d
	nop
	add a,d
	ld d,050h
	ld l,(hl)
	add hl,de
	ld d,b
	ld l,(hl)
	ld e,000h
	ld a,b
	dec l
	ld d,b
	ld h,h
	add hl,de
	nop
	ld l,(hl)
	ld h,050h
	ld h,h
	ld d,050h
	ld a,b
	jr z,l5a94h
l5a94h:
	add a,d
	ld (07850h),a
	jr z,l5aeah
	ld l,(hl)
	ld h,050h
	ld h,h
	jr nz,l5aa0h
l5aa0h:
	adc a,h
	ld hl,(07850h)
	rst 38h
	ld d,b
	ld h,h
	rst 38h
	ld d,b
	ld h,h
	rst 38h
	ld d,b
	ld h,h
	rst 38h
	ld d,b
	ld h,h
	rst 38h
	ld d,b
	ld h,h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5aeah:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5b5eh:
	rst 38h
l5b5fh:
	rst 38h
l5b60h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5b91h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5bb7h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5c3eh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5c4dh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5c5ch:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5c6bh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5c7ah:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5c89h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5caah:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5cbbh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_5cf4h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5d11h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5d17h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5d37h:
	rst 38h
l5d38h:
	rst 38h
sub_5d39h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5d4eh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5d76h:
	rst 38h
l5d77h:
	rst 38h
l5d78h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5d94h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5dcdh:
	rst 38h
l5dceh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5de0h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_5e2eh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5e4bh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5e51h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5e56h:
	rst 38h
l5e57h:
	rst 38h
l5e58h:
	rst 38h
l5e59h:
	rst 38h
l5e5ah:
	rst 38h
l5e5bh:
	rst 38h
l5e5ch:
	rst 38h
l5e5dh:
	rst 38h
l5e5eh:
	rst 38h
l5e5fh:
	rst 38h
	rst 38h
l5e61h:
	rst 38h
l5e62h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_5eb9h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5ee3h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5f03h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5f2ch:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_5f3ah:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5f54h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
sub_5f5dh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5fb7h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5fc3h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5fd0h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5fdeh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5fe5h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5fedh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5ff4h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l5ffch:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l6000h:
	ld c,l
	ld h,c
	ld l,(hl)
l6003h:
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
	jr nz,l6047h
l6012h:
	jr nz,$+47
	jr nz,l605ah
	ld h,l
	ld h,l
	ld (hl),b
	jr nz,l605eh
	ld l,a
	ld (hl),d
	ld h,l
	jr nz,l6070h
	ld l,h
	ld h,c
	ld l,(hl)
	ld h,l
l6024h:
	ld (hl),h
	jr nz,l6054h
	jr nz,l606ch
l6029h:
	ld l,b
	ld h,l
	ld l,l
	ld l,c
	ld h,e
	ld h,c
	ld l,h
	jr nz,l6082h
	ld (hl),l
	ld l,h
	ld (hl),e
	ld h,l
	jr nz,$+34
	jr nz,l605ah
l603ah:
	jr nz,l605ch
	jr nz,l605eh
	jr nz,l6060h
	jr nz,l6062h
	jr nz,l6091h
	ld d,l
	ld d,e
	ld c,c
l6047h:
	ld c,(hl)
	ld d,e
	ld d,h
	ld d,d
	ld d,e
	ld b,d
	ld c,e
	rlca
	nop
	ld bc,00100h
	ld (bc),a
l6054h:
	inc bc
	inc b
	dec b
	ld b,007h
	nop
l605ah:
	nop
	nop
l605ch:
	nop
	nop
l605eh:
	nop
	nop
l6060h:
	nop
	nop
l6062h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l606ch:
	nop
	nop
	nop
	nop
l6070h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6082h:
	nop
	nop
	nop
	nop
	nop
	nop
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
l60d4h:
	nop
sub_60d5h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_60dfh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_60efh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
l6114h:
	nop
sub_6115h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6123h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr $+17
	rrca
	rrca
	rrca
	rrca
	ld e,b
sub_6158h:
	ld d,(hl)
	ld d,(hl)
	ld e,b
	add a,d
	add a,b
	add a,h
	ld a,a
	add a,c
	dec bc
	djnz l6173h
	djnz l6175h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_6172h:
	nop
l6173h:
	nop
	nop
l6175h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l618ah:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l619bh:
	nop
	nop
	nop
	nop
l619fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l61aah:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld bc,00108h
	nop
	nop
	ld l,c
	inc b
	nop
	ld bc,00000h
	ld l,e
	ld bc,00000h
	nop
	nop
	ex af,af'
	inc bc
	nop
	nop
	nop
	nop
	ld h,d
	ld l,062h
	ld l,000h
	nop
	ld h,e
	ld bc,00000h
	nop
	nop
	ld l,e
	ld bc,0016bh
	nop
	nop
	nop
	nop
l61eeh:
	nop
	nop
	nop
	nop
l61f2h:
	nop
	nop
l61f4h:
	nop
	nop
	ex af,af'
	ld bc,00000h
	nop
	nop
	nop
l61fdh:
	nop
	nop
	nop
	nop
l6201h:
	nop
	ld l,e
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	nop
sub_620ch:
	ld l,e
	ld bc,02e62h
	nop
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
	add hl,de
l622dh:
	nop
	ld l,e
l622fh:
	ld bc,0016bh
	nop
l6233h:
	nop
	nop
	nop
	nop
	nop
	ld h,e
	inc bc
	ld h,d
	dec l
l623ch:
	nop
l623dh:
	nop
l623eh:
	nop
l623fh:
	nop
l6240h:
	ex af,af'
l6241h:
	ld bc,00a00h
	nop
	ld (bc),a
	ld l,e
	ld bc,02f62h
	nop
	nop
	ld l,e
	ld bc,01400h
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
	dec d
	nop
	ld b,062h
	inc l
	nop
	nop
	ld l,e
	ld bc,0016bh
	nop
	ld d,000h
	ex af,af'
	ld l,e
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	rla
	nop
	ld a,(bc)
	ld h,d
	dec hl
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l62e5h
	ld b,000h
sub_6283h:
	nop
	nop
	nop
	nop
l6287h:
	nop
	nop
	nop
	nop
	nop
	nop
	inc c
	ld l,h
	ld bc,0016ch
	nop
	nop
	nop
	nop
	nop
	nop
sub_6298h:
	nop
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
l62a5h:
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00000h
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
	nop
l62bch:
	nop
	rrca
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00000h
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
	nop
	nop
	nop
	rrca
	nop
	nop
	nop
l62e5h:
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
sub_62f3h:
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	ld l,e
	ld bc,0016bh
	nop
	nop
sub_6300h:
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
	ld l,h
	ld bc,00000h
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
l6317h:
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
	nop
	nop
	nop
	rrca
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00000h
	nop
	nop
	nop
	rrca
	ld l,e
	ld bc,0016bh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	ld h,d
	dec l
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
	ld h,d
	dec l
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
	nop
	nop
	nop
	rrca
	ld h,d
	inc l
	nop
	nop
	ld l,e
l636bh:
	ld bc,00000h
	nop
	nop
	nop
	rrca
	nop
	nop
	ld h,d
	inc l
	ld h,d
	dec l
	ld l,e
	ld bc,00000h
	nop
	rrca
	ld h,d
	dec hl
	nop
	nop
	nop
	nop
	nop
l6385h:
	nop
	nop
	nop
	nop
	rrca
	nop
	nop
	ld h,d
	dec hl
	nop
	nop
	nop
l6391h:
	nop
	nop
	nop
	nop
	rrca
	nop
	nop
	nop
	nop
	ld h,d
	inc l
	nop
	nop
	nop
	nop
	nop
	rrca
	ld h,d
	ld hl,(00000h)
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
	ld h,d
	ld hl,(02b62h)
	ld l,e
	ld bc,00000h
	nop
	rrca
	ld h,d
	add hl,hl
	nop
	nop
	nop
	nop
	ld h,d
	dec l
	nop
	nop
	nop
	rrca
	nop
	nop
	ld h,d
	add hl,hl
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
	ld h,d
	ld hl,(00000h)
	nop
	nop
	nop
l63ddh:
	rrca
	ld h,d
	jr z,l63e1h
l63e1h:
	nop
	nop
	nop
	ld h,d
	inc l
	nop
	nop
	nop
	rrca
	nop
	nop
	ld h,d
	jr z,l6451h
	add hl,hl
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
	ld h,d
	dec hl
	nop
	nop
l6400h:
	nop
	rrca
	nop
	nop
	nop
	nop
	ex af,af'
	ld bc,00000h
	nop
	nop
	nop
	rrca
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00000h
	nop
	nop
	nop
	rrca
	nop
	nop
	nop
	nop
	ld h,d
	ld l,062h
	ld hl,(00000h)
	nop
	rrca
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00000h
	nop
	nop
	nop
	rrca
	ld h,d
	daa
	nop
	nop
	nop
	nop
	ld h,d
	add hl,hl
	nop
	nop
	nop
	rrca
	nop
	nop
l6440h:
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	nop
	nop
	rrca
	ld l,h
	ld bc,02762h
l644eh:
	nop
	nop
	nop
l6451h:
	nop
	nop
	nop
l6454h:
	nop
	rrca
	nop
	nop
	ld l,h
	ld bc,00000h
	ld h,d
	jr z,l645fh
l645fh:
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
	nop
	nop
	nop
	rrca
	ld l,h
	ld bc,00000h
	ld l,e
	ld bc,00000h
l6476h:
	nop
	nop
	nop
	rrca
	nop
	nop
	nop
l647dh:
	nop
l647eh:
	nop
	nop
l6480h:
	nop
	nop
l6482h:
	nop
	nop
l6484h:
	nop
l6485h:
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l648dh:
	nop
	nop
l648fh:
	nop
l6490h:
	nop
l6491h:
	rrca
	nop
l6493h:
	nop
l6494h:
	ld l,h
	ld bc,00000h
	nop
	nop
	nop
	nop
l649ch:
	nop
	rrca
l649eh:
	nop
	nop
l64a0h:
	nop
	nop
l64a2h:
	nop
l64a3h:
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	nop
l64abh:
	nop
	nop
l64adh:
	nop
	nop
l64afh:
	nop
	ld h,d
l64b1h:
	daa
l64b2h:
	nop
	nop
	nop
	rrca
	nop
	nop
	nop
	nop
l64bah:
	nop
l64bbh:
	nop
l64bch:
	nop
sub_64bdh:
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
	ld l,h
	ld bc,00000h
	nop
l64cdh:
	rrca
	nop
	nop
	nop
	nop
	ld l,h
	ld bc,00000h
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
	ex af,af'
	ld bc,00000h
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
l64f7h:
	nop
	ld l,e
	ld bc,00000h
	nop
	rrca
	nop
	nop
	nop
	nop
l6502h:
	nop
	nop
	ld h,d
	ld l,000h
	nop
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00000h
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
	nop
	ld h,e
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
	rrca
	nop
	nop
l6530h:
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
	ld l,e
	ld bc,00000h
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
	nop
	nop
	nop
	rrca
	ld h,d
	jr z,l65b7h
	jr z,l6557h
l6557h:
	nop
	ld l,e
	ld bc,00000h
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
	nop
	nop
l6569h:
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
l6570h:
	nop
	nop
	nop
	nop
	nop
	rrca
	ld l,e
	ld bc,0016bh
	ld l,e
	ld bc,00000h
	nop
l657fh:
	nop
	nop
	rrca
	nop
	nop
	nop
	nop
	ld h,d
l6587h:
	dec l
	nop
	nop
	nop
	nop
	nop
	rrca
l658eh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6596h:
	nop
sub_6597h:
	nop
	nop
	rrca
	ld h,d
	add hl,hl
	ld h,d
	add hl,hl
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	ld l,e
	ld bc,0016bh
	ld h,d
	inc l
l65ach:
	nop
	nop
	nop
	nop
	nop
	rrca
	ld h,d
	ld hl,(02a62h)
	nop
l65b7h:
	nop
	ld l,h
	ld bc,00000h
	nop
	rrca
	nop
	nop
	nop
	nop
	ld h,d
	dec hl
	nop
	nop
	nop
	nop
	nop
	rrca
	ld l,e
	ld bc,0016bh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
l65d6h:
	ld h,d
l65d7h:
	dec hl
l65d8h:
	ld h,d
l65d9h:
	dec hl
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
	ld h,d
	ld hl,(00000h)
	nop
	nop
	nop
	rrca
l65eeh:
	ld h,d
	inc l
	ld h,d
	inc l
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	ld l,e
	ld bc,0016bh
	ld h,d
	add hl,hl
l6600h:
	nop
	nop
	nop
	nop
	nop
	rrca
	ld h,d
	dec l
	ld h,d
	dec l
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
	nop
	nop
	nop
	rrca
	ld l,e
	ld bc,0016bh
	ld h,d
	jr z,$+109
	ld bc,00000h
	nop
	rrca
	ld h,d
l662bh:
	ld l,062h
	ld l,000h
	nop
	nop
sub_6631h:
	nop
	nop
	nop
	nop
	rrca
	ld l,e
	ld bc,0016bh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	ld h,d
	cpl
	ld h,d
l6645h:
	cpl
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	ld h,d
	jr nc,l66b3h
	jr nc,l6653h
l6653h:
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	ld h,d
	cpl
	ld h,d
	cpl
	nop
	nop
	ld l,e
	ld bc,00000h
	nop
	rrca
	ld h,d
	ld l,062h
	ld l,000h
	nop
	ld h,d
	dec l
	nop
	nop
	nop
	rrca
	ld h,d
	dec l
	ld h,d
	dec l
	ld h,d
	daa
	nop
	nop
	nop
	nop
	nop
	rrca
	ld l,h
	ld bc,0016ch
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	ld h,d
	dec hl
	ld h,d
	dec hl
	ld l,h
	ld bc,02c62h
	nop
	nop
	nop
	rrca
	ld h,d
	ld hl,(02a62h)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	ld h,d
	add hl,hl
	ld h,d
	add hl,hl
	nop
	nop
	ld h,d
	dec hl
	nop
	nop
	nop
	rrca
	ld h,d
	jr z,l6713h
	jr z,l671fh
l66b3h:
	ld bc,00000h
l66b6h:
	nop
	nop
	nop
	rrca
	ld h,d
	daa
	ld h,d
	daa
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	ld h,d
	jr z,l672bh
	jr z,l66cbh
l66cbh:
	nop
	ld h,d
	ld hl,(00000h)
	nop
	rrca
	ld l,h
	ld bc,0016ch
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	ld h,d
	ld hl,(02a62h)
	nop
	nop
	ld h,d
	add hl,hl
	nop
	nop
	nop
	rrca
	ld h,d
	dec hl
	ld h,d
	dec hl
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	ld h,d
	inc l
	ld h,d
	inc l
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	ld h,d
	dec l
	ld h,d
	dec l
	nop
	nop
	ld h,d
	jr z,l670bh
l670bh:
	nop
	nop
	rrca
	nop
l670fh:
	nop
	nop
	nop
	nop
l6713h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	ld l,062h
	ld l,000h
l671fh:
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
l672bh:
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	ld h,d
	cpl
	ld h,d
	cpl
l6736h:
	nop
l6737h:
	nop
	nop
	nop
l673ah:
	nop
l673bh:
	nop
	nop
	rrca
	nop
	nop
l6740h:
	nop
	nop
	nop
	nop
	nop
l6745h:
	nop
	nop
	nop
	nop
	rrca
l674ah:
	ld h,d
	jr nc,l67afh
	jr nc,l674fh
l674fh:
	nop
	nop
	nop
	nop
	nop
l6754h:
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,d
	daa
	nop
	nop
	nop
	rrca
	ld h,d
	cpl
	ld h,d
	cpl
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
sub_6772h:
	nop
	nop
	ld l,h
	ld bc,00000h
	nop
	rrca
	ld h,d
	ld l,062h
	ld l,000h
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
l678ch:
	nop
	nop
	nop
	nop
l6790h:
	nop
	rrca
	ld h,d
	dec l
	ld h,d
	dec l
l6796h:
	ld h,d
	jr z,l6805h
	ld bc,00000h
	nop
l679dh:
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
	rrca
	nop
	nop
	nop
	nop
	nop
l67afh:
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
l67b6h:
	nop
	nop
	nop
	nop
	ld l,e
	ld bc,00000h
	nop
	nop
	rst 38h
	pop bc
	dec a
	and 007h
l67c5h:
	ld (0c1f9h),a
	jp nz,l59bah
	ret
	ld hl,l4bc3h
	ld de,(0c1f6h)
	add hl,de
	ld a,(hl)
	ld hl,l5a17h
	ld e,a
	ld d,000h
	add hl,de
	push hl
	ld hl,l5a07h
	ld a,(0c1f8h)
	ld e,a
	add a,002h
	ld (0c1f8h),a
	add hl,de
	ex de,hl
l67ebh:
	pop hl
	ld bc,00002h
	ldir
	ld hl,(0c1f6h)
	inc hl
	ld (0c1f6h),hl
	ret
	jr nz,l67fbh
l67fbh:
	jr nz,l67fdh
l67fdh:
	jr nz,l67ffh
l67ffh:
	jr nz,l6801h
l6801h:
	jr nz,l6803h
l6803h:
	jr nz,l6805h
l6805h:
	jr nz,l6807h
l6807h:
	jr nz,l6809h
l6809h:
	jr nz,l680bh
l680bh:
	jr nz,l680dh
l680dh:
	jr nz,l680fh
l680fh:
	jr nz,l6811h
l6811h:
	jr nz,l6813h
l6813h:
	jr nz,l6815h
l6815h:
	jr nz,l6817h
l6817h:
	jr nz,l6819h
l6819h:
	ld b,b
	nop
	ld b,b
	jr nz,l685eh
	ld b,b
	ld b,b
	ld h,b
	ld b,b
	add a,b
	ld b,b
	and b
	ld h,b
	nop
sub_6827h:
	ld h,b
	jr nz,l688ah
	ld b,b
	ld h,b
	ld h,b
	ld h,b
	add a,b
	ld h,b
	and b
	add a,b
	nop
	add a,b
	jr nz,l67b6h
	ld b,b
	add a,b
	ld h,b
	add a,b
l683ah:
	add a,b
	add a,b
	and b
	and b
	nop
	and b
	jr nz,$-94
	ld b,b
	and b
	ld h,b
	and b
	add a,b
	and b
	and b
	ret nz
	nop
	ret nz
l684ch:
	jr nz,$-62
	ld b,b
	ret nz
	ld h,b
	ret nz
	add a,b
	ret nz
	and b
l6855h:
	ret po
	nop
	ret po
	jr nz,l683ah
	ld b,b
sub_685bh:
	ret po
	ld h,b
	ret po
l685eh:
	add a,b
	ret po
	and b
	jr nz,l6863h
l6863h:
	jr nz,l6885h
	jr nz,l68a7h
l6867h:
	jr nz,l68c9h
	jr nz,l67ebh
	jr nz,l680dh
	nop
l686eh:
	nop
	nop
	jr nz,l6872h
l6872h:
	ld b,b
	nop
	ld h,b
	nop
	add a,b
	nop
	and b
	ld b,b
	ld bc,02140h
	ld b,b
	ld b,c
	ld b,b
	ld h,c
	ld b,b
	add a,c
	ld b,b
	and c
l6885h:
	ld h,b
	ld bc,02160h
	ld h,b
l688ah:
	ld b,c
	ld h,b
	ld h,c
l688dh:
	ld h,b
	add a,c
	ld h,b
	and c
	add a,b
	ld bc,02180h
	add a,b
	ld b,c
	add a,b
	ld h,c
	add a,b
	add a,c
	add a,b
	and c
	and b
	ld bc,021a0h
	and b
l68a2h:
	ld b,c
	and b
	ld h,c
	and b
	add a,c
l68a7h:
	and b
	and c
	ret nz
	ld bc,021c0h
	ret nz
	ld b,c
l68afh:
	ret nz
	ld h,c
	ret nz
	add a,c
	ret nz
	and c
	ret po
	ld bc,021e0h
	ret po
	ld b,c
	ret po
	ld h,c
	ret po
	add a,c
l68bfh:
	ret po
	and c
	jr nz,$+3
l68c3h:
	jr nz,$+35
	jr nz,l6908h
	jr nz,l692ah
l68c9h:
	jr nz,l684ch
	jr nz,l686eh
	nop
	ld bc,02100h
	nop
	ld b,c
	nop
	ld h,c
	nop
	add a,c
	nop
	and c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00100h
l68e3h:
	nop
l68e4h:
	ld bc,00000h
	ret nc
	nop
	nop
	nop
	nop
	ret po
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	ld bc,00199h
	ret nz
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00000h
	ld bc,00109h
	add a,b
	nop
	nop
l6908h:
	nop
	nop
	nop
	nop
	nop
l690dh:
	nop
	nop
	ld bc,00200h
	sbc a,c
	ld bc,000c0h
	nop
	pop hl
	inc bc
	add hl,hl
	nop
	ld b,002h
	ld b,000h
	dec b
	nop
l6921h:
	nop
	nop
	sub b
	jr nz,l6926h
l6926h:
	nop
	nop
	djnz l692ah
l692ah:
	nop
	ld bc,000c0h
	ex af,af'
	nop
	nop
	nop
	ret nc
	ret po
	nop
	nop
	nop
	ret nc
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	ld bc,00000h
	ret nc
	nop
	nop
	nop
l6945h:
	inc bc
	ret po
	nop
	nop
	nop
	ld bc,02000h
	nop
	nop
	nop
	sub b
	nop
	nop
	nop
	inc bc
	nop
	nop
	nop
	nop
	jr nz,l695bh
l695bh:
	jr nz,l695dh
l695dh:
	nop
	nop
	ret nc
	ld (bc),a
	ld bc,0cd01h
	add hl,hl
	ld e,h
	ld a,(0c308h)
	or a
	call nz,005bdh
	ld hl,0c147h
l6970h:
	ld a,(0c308h)
	or a
	ld bc,l7d57h
	ld d,00eh
	jp z,l5b91h
	dec a
	ld bc,l7d6fh
	ld d,02dh
	jp z,l5b91h
	dec a
	ld bc,l7e3bh
	ld d,02ah
	jp z,l5b91h
	ld bc,l7ef8h
	ld d,055h
	ld (hl),b
	inc hl
	ld (hl),c
	ld a,d
	ld (0c149h),a
	ld hl,(0057ch)
	ld (hl),01ah
	ld hl,(00588h)
	ld (hl),010h
	ld hl,(0058eh)
	ld (hl),010h
sub_69a9h:
	ld hl,(00594h)
	ld (hl),010h
	ld a,(l5b5eh)
	or a
	jp z,l5bb7h
	dec a
	ld (l5b5eh),a
	xor a
	ld (06aa7h),a
	ld (l5e56h),a
	ld (l5e57h),a
	ld (l5e59h),a
	ld (l5e5ah),a
	ld (l5e5bh),a
	ld (l5e5ch),a
	ld (l5e5dh),a
	ld (l5e5eh),a
	ld (l64bbh),a
	ld (l64bah),a
	ld (l6596h),a
	ld (l5e61h),a
	ld (l623dh),a
	ld (l623eh),a
	ld (069d3h),a
	ld a,010h
l69ech:
	ld (05564h),a
	ld a,001h
	ld (l5b5fh),a
	ld a,077h
	ld (l6b04h),a
	ld a,007h
	ld (l6b05h),a
	ld hl,l6736h
	ld de,00003h
	ld b,00ch
l6a06h:
	ld (hl),000h
	inc hl
	inc hl
	ld (hl),000h
	add hl,de
	djnz l6a06h
	ld hl,06a3ah
	ld de,0018eh
	ld bc,0000ah
	ldir
	xor a
	ld hl,l6c61h
	ld de,00020h
	ld b,00bh
l6a23h:
	ld (hl),a
	add hl,de
	djnz l6a23h
sub_6a27h:
	xor a
	ld r,a
	ret
	call 005c6h
	xor a
	ld (0c3cbh),a
	ld (0c3cch),a
	ld a,(0c157h)
	or a
	ld a,000h
	jp z,l5c3eh
	ld a,001h
	ld (0c3cah),a
sub_6a43h:
	ld a,(0c157h)
	cp 005h
	ld a,0ffh
	jp c,l5c4dh
	ld a,007h
	ld (l6287h),a
	ld a,(0c157h)
	cp 004h
	ld a,00fh
	jp c,l5c5ch
	ld a,007h
	ld (l679dh),a
	ld a,(0c157h)
	cp 008h
	ld a,000h
	jp c,l5c6bh
	ld a,001h
	ld (077a2h),a
	ld a,(0c157h)
	cp 007h
	ld a,000h
	jp c,l5c7ah
	ld a,003h
l6a7ch:
	ld (l7a59h),a
	ld a,(0c157h)
	cp 005h
	ld a,00fh
	jp c,l5c89h
	ld a,003h
	ld (l6b43h),a
	ld a,(0c157h)
	cp 001h
	ld hl,000c8h
	jp c,l5caah
	cp 003h
	ld hl,00190h
	jp c,l5caah
l6aa1h:
	cp 005h
	ld hl,002bch
	jp c,l5caah
	ld hl,00578h
	ld (l5e5fh),hl
	ret
	ld a,(0c3d0h)
	cp 0a4h
	jp c,l5cbbh
	ld a,001h
	ld (l5b60h),a
	call 069a3h
	call sub_5cf4h
	call 06aa8h
	call sub_5cf4h
	call sub_6a43h
	call sub_5e2eh
	call sub_5eb9h
	call sub_5f5dh
	call sub_5d39h
	call sub_5cf4h
	ld a,(l5e59h)
	or a
	ret nz
	ld a,(l68e3h)
	or a
	jp nz,l68e4h+2
	ld a,001h
	ld (l68e3h),a
	ld a,r
	and 07fh
	add a,032h
l6af2h:
	ld (l68e4h),a
	ret
	ld a,(0c308h)
	or a
	ret nz
	ld a,(0c145h)
	or a
	ret z
	ld a,(0c3cfh)
	or a
l6b04h:
	ret nz
l6b05h:
	ld a,(0c1f7h)
	cp 002h
	jp nz,l5d11h
	ld a,(0c1f6h)
	cp 032h
	ret c
	ld hl,l5d17h
	jp 002e9h
	ld bc,03000h
	ld (bc),a
	ld h,b
	dec b
	ld (hl),h
	rlca
	ld (l7702h),hl
	rlca
	ld (hl),a
	rlca
	ld (hl),a
	rlca
	ld de,00001h
	nop
	rla
	ld bc,00777h
l6b31h:
	inc sp
	inc bc
	ld b,l
l6b34h:
	inc b
	ld (hl),b
	rlca
	ld (hl),b
	nop
	ld bc,03a00h
	ld e,(hl)
	ld e,e
	or a
	ret z
	ld a,(l5d37h)
l6b43h:
	dec a
sub_6b44h:
	jp z,l5d4eh
	dec a
	jp z,l5d78h
	dec a
	jp z,l5dceh
	ret
	xor a
	ld (0c3cah),a
	ld a,002h
	ld (l5d37h),a
	ld hl,l75e0h
	call 00145h
	ld a,00bh
	ld b,020h
l6b63h:
	out (098h),a
	djnz l6b63h
	ei
	ld hl,l74c0h
	call 00145h
	ld a,00bh
	ld b,010h
l6b72h:
	out (098h),a
	djnz l6b72h
	ei
	ret
	ld a,b
	nop
	ld a,001h
l6b7ch:
	ld (l5d38h),a
l6b7fh:
	ld a,008h
	ld (0c39ah),a
	ld a,(l5d77h)
	inc a
sub_6b88h:
	and 01fh
	ld (l5d77h),a
	cp 00eh
	ld a,028h
	jp c,l5d94h
	ld a,006h
	ld (0c230h),a
	ld (0c278h),a
	ld (0c27ch),a
	ld a,064h
	ld (0c231h),a
	add a,010h
	ld (0c279h),a
	add a,010h
	ld (0c27dh),a
sub_6baeh:
	ld a,068h
	ld (0c232h),a
	add a,004h
	ld (0c27ah),a
	add a,004h
	ld (0c27eh),a
	ld a,(l5d76h)
	dec a
	ld (l5d76h),a
	ret nz
	xor a
	ld (l5d38h),a
	ld a,003h
	ld (l5d37h),a
	ret
	inc a
	ld a,(l5d77h)
	inc a
	and 01fh
	ld (l5d77h),a
	cp 00eh
	ld a,028h
	jp c,l5de0h
	ld a,006h
	ld (0c278h),a
	ld a,074h
	ld (0c279h),a
	ld a,074h
	ld (0c27ah),a
	ld a,(l5dcdh)
	dec a
	ld (l5dcdh),a
	ret nz
	xor a
	ld (l5b5eh),a
	ld a,001h
	ld (0c3cah),a
l6c00h:
	ld a,044h
	ld (0c232h),a
	ld (0c27ah),a
	ld (0c27eh),a
sub_6c0bh:
	ld hl,l74c0h
	call 00145h
	ld hl,04ac3h
	ld bc,01098h
	otir
	ei
	ld hl,l75e0h
	call 00145h
	ld hl,04ac3h
	ld b,010h
	otir
	ld hl,04ac3h
l6c2ah:
	ld b,010h
l6c2ch:
	otir
	ei
	ret
	ld hl,(0c1f6h)
	ld a,h
	cp 002h
	jp z,l5e4bh
	ld a,l
	cp 0b0h
	ret nz
	ld a,h
	cp 003h
	ld b,002h
	jp z,l5e51h
	cp 004h
	ld b,003h
	jp z,l5e51h
	ret
	ld b,001h
	ld a,l
	cp 020h
	ret c
	ld a,b
	ld (0c308h),a
	ret
	nop
	nop
	nop
	nop
l6c5ch:
	nop
	nop
	nop
	nop
	nop
l6c61h:
	nop
	nop
l6c63h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l6c6ah:
	nop
	ld bc,00000h
	nop
	nop
	nop
	nop
	ld bc,00000h
	nop
	nop
	nop
	ld bc,00000h
	nop
	nop
	ld bc,00000h
	nop
	nop
	ld bc,00000h
	nop
	ld bc,00000h
	nop
	ld bc,00000h
	ld bc,00000h
	nop
	ld bc,00000h
	ld bc,00000h
	ld bc,00000h
	ld bc,00100h
	nop
	nop
	ld bc,00000h
	ld bc,00100h
	nop
	ld bc,00100h
	nop
	ld bc,00001h
	ld bc,00101h
	nop
	ld bc,00101h
	nop
	ld bc,00101h
	ld bc,00200h
	ld hl,(0c1f6h)
	ld a,h
	cp 006h
	ret nz
	ld a,l
	cp 010h
	jp z,l5ee3h
	cp 040h
	jp z,l5f03h
	cp 048h
	ret nz
	ld hl,(0c1f6h)
	ld de,00008h
	add hl,de
	ld (0c1f6h),hl
	ld a,001h
	ld (l5e56h),a
	ld a,0ffh
	ld (l5e58h),a
	ret
	ld hl,(0c1f6h)
	ld de,00008h
	add hl,de
	ld (0c1f6h),hl
	ld a,001h
	ld (0c111h),a
	ld (l5e59h),a
	call 00500h
	ld a,001h
	ld (l5b60h),a
	ld hl,l7361h
	jp 002e9h
	ld a,(l5e5ch)
	or a
	ret nz
	ld a,001h
	ld (l5e5ch),a
	ld de,l6e01h
	ld hl,l7b00h
	ld b,004h
	halt
	call 00536h
	ld c,077h
	ld e,0a0h
	call sub_568eh
	ld hl,l5f2ch
	ld de,0018eh
	ld bc,0000eh
	ldir
	ret
	cp 004h
	ret z
	cp 008h
	ret z
	cp 009h
	ret z
	cp 00ch
	ret z
	scf
	ret
	ld a,(0c396h)
	or a
	ret z
	ld a,(0c397h)
	inc a
	ld (0c397h),a
	jp z,l5f54h
	cp 0b4h
	ret c
	and 001h
	ret nz
	ld b,030h
	jp l7285h
	ld a,001h
	ld (0c13dh),a
	ld (0c395h),a
	ret
	ld a,(l5e59h)
	or a
	ret z
	ld a,001h
	ld (l5b60h),a
	ld a,0ffh
	ld (0c149h),a
	call sub_5f3ah
	call 0732ch
	ld a,(l5e61h)
	or a
	jp nz,l5fb7h
	ld a,(l5e5dh)
	or a
	call nz,sub_6283h
	ld a,(l5e5bh)
	or a
	call nz,sub_620ch
	ld a,(l5e5ah)
	or a
	call nz,sub_6158h
	ld a,(l5e56h)
	or a
	call nz,sub_60efh
	ld a,(l5e57h)
	or a
	call nz,sub_6115h
	ld a,(l5e5dh)
	or a
	call nz,sub_64bdh
	ld a,(l5e5dh)
	or a
	call nz,sub_6631h
	ld a,(l5e5dh)
	or a
	call nz,sub_6597h
	ld a,r
	ld (l6240h),a
	ret
	ld a,(l5e61h)
	dec a
	jp z,0601ah
	dec a
	jp z,l5fc3h
	ret
	ld a,(l60d4h)
	inc a
	and 00fh
	jp z,l5fd0h
	ld (l60d4h),a
	ret
	ld hl,0c249h
	ld de,00004h
	ld b,00ch
l6ddah:
	ld (hl),000h
	add hl,de
	djnz l6ddah
	ret
	ld h,b
	nop
	add a,b
	ld (bc),a
	and b
	nop
	halt
	nop
	ld c,000h
	djnz l6dech
l6dech:
	nop
	nop
	ret nc
	ld l,(hl)
	nop
	add a,b
	ld (bc),a
	sub (hl)
	nop
	ld h,(hl)
	nop
	ex af,af'
	nop
	inc d
	nop
	nop
	nop
	ret nc
	halt
	nop
	add a,b
l6e01h:
	ld (bc),a
	sub (hl)
	nop
	adc a,b
	nop
	ex af,af'
	nop
	ld (de),a
	nop
	nop
	nop
	ret nc
	sub d
	nop
	ld d,b
	nop
	sub d
	nop
	ld (hl),b
	nop
	ld b,000h
	inc e
	nop
	nop
	nop
	ret nc
	ld a,(0f3e1h)
	and 020h
	jp z,l6024h
	ld a,001h
	ld (l5fe5h),a
	ld (l5ff4h),a
	ld (l6003h),a
	ld (l6012h),a
	ld hl,0600bh
	call 0048bh
	ld hl,l5fdeh
	call 0048bh
	ld hl,l5fedh
	call 0048bh
	ld hl,l5ffch
	call 0048bh
	ld a,005h
	call 0050fh
	ld a,001h
	ld (0c106h),a
	ld a,0feh
	ld (0c108h),a
	ld (0c3a3h),a
	ld a,008h
	ld (0c107h),a
	ld (0c3a2h),a
	ld a,001h
	ld (0c396h),a
	ld a,098h
	ld (l7d39h),a
	ld a,066h
l6e70h:
	ld (l7d38h),a
	ld hl,l7d37h
	ld de,0c280h
	ld bc,00010h
	ldir
	ld hl,0c248h
	ld de,00004h
	ld a,(l6736h)
	call sub_60d5h
	ld a,(l673bh)
	call sub_60d5h
	ld a,(l6740h)
	call sub_60d5h
	ld a,(l6745h)
	call sub_60d5h
	ld a,(l674ah)
	call sub_60d5h
	ld a,(l674fh)
	call sub_60d5h
	ld a,(l6754h)
	call sub_60d5h
	ld a,(l6754h)
	call sub_60d5h
	ld a,(l6754h)
	call sub_60d5h
	ld a,(l6754h)
	call sub_60d5h
	ld a,(l6754h)
	call sub_60d5h
	ld a,(l6754h)
	call sub_60d5h
	ld a,002h
	ld (l5e61h),a
	xor a
	ld (l60d4h),a
	ret
	nop
	or a
	push hl
	push de
	call nz,sub_60dfh
	pop de
	pop hl
	add hl,de
	ret
	ld a,(hl)
	sub 008h
	ld c,a
	inc hl
	ld a,(hl)
	sub 028h
	ld (l7d39h),a
	ld e,0c0h
	jp sub_568eh
	call 073d3h
	ld a,(l5e58h)
	inc a
	ld (l5e58h),a
	ld d,000h
	ld e,a
	ld hl,l5e62h
	add hl,de
	ld a,(hl)
	cp 002h
	jp z,l610ah
	ld (0c1f5h),a
	ret
	xor a
	ld (l5e56h),a
	ld a,001h
	ld (l5e57h),a
	ret
	nop
	ld a,(l6114h)
	inc a
	and 003h
	ld (l6114h),a
	jp z,l6123h
	ld a,001h
	ld (0c1f5h),a
	ld a,(0c1f1h)
	or a
	ret nz
	xor a
	ld (l5e57h),a
	ld a,001h
	ld (l5e5ah),a
	ld a,038h
	ld (l619bh),a
	ld a,018h
	ld (l619fh),a
	ld a,088h
	ld (l61eeh),a
	ld a,0e8h
	ld (l61f2h),a
	ld a,048h
	ld (l61fdh),a
	ld a,0e8h
	ld (l6201h),a
	ld a,01fh
	ld (0f3e1h),a
	ret
	ld hl,(0057ch)
	ld (hl),002h
	ld hl,(00588h)
	ld (hl),000h
	ld hl,(0058eh)
	ld (hl),000h
	ld hl,(00594h)
	ld (hl),000h
	call sub_6172h
	jp l61aah
	ld hl,l619bh
	call 0048bh
	ld a,(l619fh)
	dec a
	jp z,l618ah
	ld (l619fh),a
	ld a,(l619bh)
	dec a
	ld (l619bh),a
	ret
	xor a
	ld (l5e5ah),a
	ld a,001h
	ld (l5e5bh),a
	xor a
	ld (l622fh),a
	ld (l6233h),a
	ret
	jr c,l6f9fh
l6f9fh:
	nop
	nop
	jr l6fa3h
l6fa3h:
	nop
	nop
	ld bc,00000h
	ld bc,00000h
	sub b
	ld a,000h
	ld (l61f4h),a
	ld hl,l61eeh
	call 0048bh
	ld a,0a0h
	ld (l61f4h),a
	ld hl,l61eeh
	call 0048bh
	ld a,0e0h
	ld (l61f4h),a
	ld hl,l61eeh
	call 0048bh
	ld hl,l61fdh
	call 0048bh
	ld a,(l6201h)
	inc a
	ld (l6201h),a
	ld a,(l61fdh)
	inc a
	ld (l61fdh),a
	ld a,(l61f2h)
	inc a
	ld (l61f2h),a
	ld a,(l61eeh)
	inc a
	ld (l61eeh),a
	ret
	adc a,b
	nop
	add a,b
	inc bc
	ret pe
	nop
	nop
	nop
	ld bc,l4000h
	nop
	nop
	nop
	sub b
	ld c,b
	nop
	ld h,b
	ld (bc),a
	ret pe
	nop
	ld b,b
	nop
	ld bc,l6000h
	nop
	nop
	nop
	sub b
	ld hl,l622dh
	call 0048bh
	ld a,(l622fh)
	add a,010h
	ld (l622fh),a
	ld a,(l6233h)
	add a,010h
	ld (l6233h),a
	ret nz
	xor a
	ld (l5e5bh),a
	ld a,001h
	ld (l5e5dh),a
	ret
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00100h
	djnz l703bh
l703bh:
	nop
	nop
	ret nc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	cp 000h
	cp 0feh
	cp 000h
	cp 0feh
	cp 000h
	cp 000h
	cp 000h
	cp 000h
	cp 000h
	nop
	nop
	cp 000h
	nop
	nop
	cp 000h
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
	ld (bc),a
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	ld (bc),a
	nop
	ld (bc),a
	nop
	ld (bc),a
	nop
	ld (bc),a
	nop
	ld (bc),a
	nop
	ld (bc),a
	ld (bc),a
	ld (bc),a
	nop
	ld (bc),a
	ld (bc),a
	ld a,(l6240h)
	and 007h
	ret nz
	ld a,(l623dh)
	or a
	call z,sub_6298h
	ld a,(l623eh)
	or a
	call z,sub_62f3h
	ret
	ld a,(l623eh)
	or a
	jp z,l62a5h
	ld a,(l64a0h)
	cp 06eh
	ret nc
	ld a,(l5e5eh)
	or a
	ret z
	ld a,(l66b3h)
	cp 0ffh
	jp z,l62bch
	ld a,001h
	ld (l64bbh),a
	xor a
	ld (l64bah),a
	ret
	ld a,(l623ch)
	or a
	ret nz
	ld a,002h
	ld (l64bbh),a
	xor a
	ld (l64bah),a
	ld a,001h
	ld (0c106h),a
	ld a,002h
	ld (0c108h),a
	ld a,015h
	ld (0c107h),a
	ld a,001h
	ld (l623dh),a
	ld a,090h
	ld (l6482h),a
	ld a,06eh
	ld (l6484h),a
	ld a,r
	and 007h
	add a,a
	add a,a
	add a,a
	ld (l6241h),a
	ret
	ld a,(l623dh)
	or a
	jp z,sub_6300h
	ld a,(l6482h)
	cp 06eh
	ret nc
	ld a,(l5e5eh)
	or a
	ret z
	ld a,(l66b3h)
	cp 0ffh
	jp z,l6317h
	ld a,001h
	ld (l64bbh),a
	xor a
	ld (l64bah),a
	ret
	ld a,(l623ch)
	or a
	ret nz
	ld a,(l623ch)
	or a
	ret nz
	ld a,002h
	ld (l64bbh),a
	xor a
	ld (l64bah),a
	ld a,001h
	ld (0c106h),a
	ld a,002h
	ld (0c108h),a
	ld a,015h
	ld (0c107h),a
	ld a,001h
	ld (l623eh),a
	ld a,090h
	ld (l64a0h),a
	ld a,06eh
	ld (l64a2h),a
	ld a,r
	and 007h
	add a,a
	add a,a
	add a,a
	ld (l6241h+1),a
	ret
	ld a,(l5e61h)
	or a
	ret nz
	ld a,(l623ch)
	or a
	jp z,l6385h
	ld a,(0f3e1h)
	and 020h
	ld a,001h
	jp z,l636bh
	ld a,000h
	ld (l6494h),a
	ld (l64b2h),a
	ld a,(l623dh)
	or a
	ld hl,l648dh
	call nz,0048bh
	ld a,(l6491h)
	or a
	ret nz
	xor a
	ld (l623dh),a
	ret
	ld a,(0f3e1h)
	and 020h
	ld a,001h
	jp z,l6391h
	ld a,000h
	ld (l6485h),a
	ld (l64a3h),a
	ld a,(l623fh)
	inc a
	and 007h
	ld (l623fh),a
	ld b,a
	ld a,(l623dh)
	or a
	ret z
	ld a,(l6241h)
	add a,b
	ld d,000h
	ld e,a
	ld hl,l6241h+2
	add hl,de
	ld b,(hl)
	ld a,(0c39ch)
	or a
	jp nz,l63ddh
	ld a,(l6484h)
	ld (l6493h),a
	add a,020h
	ld (l648fh),a
	ld a,(l6484h)
	add a,b
	ld (l6484h),a
	ld a,(l6482h)
	ld (l648dh),a
	ld (l6491h),a
	sub 002h
	ld (l6482h),a
	ret c
	cp 006h
	ret c
	ld hl,l647eh
	jp 0048bh
	ld a,(l5e61h)
	or a
	ret nz
	ld a,(l623ch)
	or a
	jp z,06408h
	ld a,(l623eh)
l71f4h:
	or a
	ld hl,l64abh
	call nz,0048bh
	ld a,000h
	ld (l623ch),a
	ld a,(l64afh)
	or a
	ret nz
	xor a
	ld (l623eh),a
	ret
	ld a,(l623eh)
	or a
	jp z,l6454h
	ld a,(l623fh)
	ld b,a
	ld a,(l6241h+1)
	add a,b
	ld d,000h
	ld e,a
	ld hl,l6241h+2
	add hl,de
	ld b,(hl)
	ld a,(0c39ch)
	or a
	jp nz,l644eh
	ld a,(l64a2h)
	ld (l64b1h),a
	add a,020h
	ld (l64adh),a
	ld a,(l64a2h)
	add a,b
	ld (l64a2h),a
	ld a,(l64a0h)
	ld (l64abh),a
	ld (l64afh),a
	sub 002h
	ld (l64a0h),a
	jp c,l6454h
	cp 006h
	jp c,l6454h
	ld hl,l649ch
	call 0048bh
	ld a,(0f3e1h)
	xor 020h
	ld (0f3e1h),a
	ld a,001h
	ld (l623ch),a
	ld a,(l647dh)
	xor 001h
	ld (l647dh),a
	ret z
	ld a,(l6480h)
	cp 020h
	ld a,03ah
	jp z,l6476h
	ld a,020h
	ld (l6480h),a
	ld (l649eh),a
	ret
sub_727fh:
	nop
	ld a,c
	nop
	jr nz,l7286h
	nop
l7285h:
	nop
l7286h:
	nop
	nop
	ld a,(de)
	nop
	ld a,(de)
	nop
	nop
	inc b
	sbc a,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	nop
	ld a,(de)
	nop
	nop
	inc b
	ret nc
	ld a,c
	nop
	jr nz,l72a4h
	nop
	nop
l72a4h:
	nop
	nop
	ld a,(de)
	nop
	ld a,(de)
	nop
l72aah:
	nop
l72abh:
	inc b
l72ach:
	sbc a,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a,(de)
	nop
	ld a,(de)
	nop
	nop
	inc b
	ret nc
	nop
	nop
	nop
	ld a,(l64bbh)
	dec a
	jp z,l64f7h
	dec a
	jp z,l64cdh
	dec a
	jp z,l6530h
	ret
	ld hl,l6569h
	call 0048bh
	ld a,(l6570h)
	xor 001h
	ld (l6570h),a
	ld a,(l64bah)
	inc a
	and 003h
	ld (l64bah),a
	ret nz
	ld a,(l64bbh)
	ld b,a
	ld a,(l64bch)
	cp b
	ret z
	ld a,b
	ld (l64bch),a
	xor a
	ld (l64bbh),a
	ret
	ld hl,06578h
	call 0048bh
	ld a,(l657fh)
	xor 001h
	ld (l657fh),a
	ld a,(l64bah)
	inc a
	and 003h
	ld (l64bah),a
	ret nz
	ld a,(l64bbh)
	ld b,a
	ld a,(l64bch)
	cp b
	ret z
	ld a,b
	ld (l64bch),a
	ld a,001h
	ld (0c106h),a
	ld a,002h
	ld (0c108h),a
	ld a,009h
	ld (0c107h),a
	xor a
	ld (l64bbh),a
	ret
	ld hl,l6587h
	call 0048bh
	ld a,(l658eh)
	xor 001h
	ld (l658eh),a
	ld a,(l64bah)
	inc a
	and 003h
	ld (l64bah),a
	ret nz
	ld a,(l64bbh)
	ld b,a
	ld a,(l64bch)
	cp b
	ret z
	ld a,b
	ld (l64bch),a
l7357h:
	ld a,001h
	ld (0c106h),a
	ld a,002h
	ld (0c108h),a
l7361h:
	ld a,009h
	ld (0c107h),a
	xor a
	ld (l64bbh),a
	ret
	ld l,(hl)
	nop
	ld d,(hl)
	ld (bc),a
	sub d
	nop
	ld l,d
	nop
	ld c,000h
	ld hl,(00000h)
	nop
	ret nc
	ld h,b
	nop
	ld d,(hl)
	ld (bc),a
	sub d
	nop
	ld l,d
l7381h:
	nop
	ld c,000h
	ld hl,(00000h)
	nop
	ret nc
	ld d,d
	nop
	ld hl,(09202h)
	nop
	ld l,d
	nop
	ld c,000h
	ld hl,(00000h)
	nop
	ret nc
	nop
	ld a,(l6596h)
	or a
	jp nz,l65d9h
	ld a,(0c157h)
	cp 005h
	ret c
	ld a,r
	and 00fh
	jp z,l65ach
	ret
	ld a,(l5e5eh)
	or a
	ret nz
	ld a,(l6596h)
	or a
	ret nz
	ld a,(0c283h)
	cp 08bh
	ret nz
	ld a,001h
	ld (l6596h),a
	ld a,030h
	ld (05564h),a
	ld a,0b7h
	ld (0c282h),a
	ld a,01ch
	ld (0c284h),a
	ld a,015h
	ld (0c280h),a
	ret
	nop
	ex af,af'
	nop
	ld a,(l65d6h)
	add a,004h
	ld (l65d6h),a
	jp nz,l6600h
	ld a,(l65d7h)
	dec a
	ld (l65d7h),a
	jp nz,l6600h
l73f0h:
	ld a,(0c283h)
	cp 08bh
	ret nz
	xor a
	ld (l6596h),a
	ld a,008h
l73fch:
	ld (l65d7h),a
	jp l6645h
	ld a,(l65d7h)
	cp 001h
	ret z
	cp 000h
	jp z,l65eeh
	ld a,(l65d8h)
	inc a
	and 003h
	ld (l65d8h),a
l7416h:
	ret nz
	ld a,r
	add a,a
	cp 050h
	jp c,l662bh
	cp 096h
	jp nc,l662bh
	and 002h
	ld a,050h
	jp z,l662bh
	ld a,096h
	ld c,a
	ld e,0b0h
	jp sub_568eh
	ld a,(l6596h)
	or a
	ret nz
	ld a,(l5e5eh)
	or a
	call nz,sub_6772h
	ld a,r
l7441h:
	and 00fh
	jp z,l6645h
	ret
	ld a,(l5e5eh)
	or a
	ret nz
	ld a,(0c283h)
sub_744fh:
	cp 08bh
	ret nz
	ld a,0feh
sub_7454h:
	ld (l6790h),a
	ld a,0ffh
	ld (l66b3h),a
	ld a,001h
	ld (l5e5eh),a
	ld a,010h
	ld (05564h),a
	ld a,097h
	ld (0c282h),a
	ld a,018h
	ld (0c284h),a
	ld a,015h
	ld (0c280h),a
	ld a,001h
	ld (l64bbh),a
	xor a
	ld (l64bah),a
	ld hl,l68c3h
	ld (0c19ah),hl
	ld de,00620h
	ld hl,l7520h
	call 00533h
	ld a,098h
	ld (0c24ah),a
	ld (0c24eh),a
	ld (0c252h),a
	ld (0c256h),a
	ld (0c25ah),a
	ld (0c25eh),a
	ld (0c262h),a
l74a4h:
	ld (0c266h),a
	ld (0c26ah),a
	ld (0c26eh),a
	ld (0c272h),a
	ld (0c276h),a
	ret
	nop
l74b5h:
	nop
	nop
	nop
	rst 38h
	rst 38h
	rst 38h
	cp 0ffh
	rst 38h
	rst 38h
	rst 38h
l74c0h:
	rst 38h
	rst 38h
	rst 38h
	nop
	rst 38h
	rst 38h
l74c6h:
	rst 38h
	rst 38h
	rst 38h
	nop
	rst 38h
	nop
	rst 38h
	nop
	rst 38h
	nop
	rst 38h
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
	ld bc,00100h
	nop
	ld bc,00100h
	nop
	ld bc,00101h
	nop
	ld bc,00101h
	ld bc,00101h
	ld bc,00102h
	ld bc,00101h
	cp 0feh
l74fah:
	cp 0feh
	cp 0feh
	cp 0feh
	cp 0feh
l7502h:
	cp 000h
	cp 0feh
	cp 0feh
	cp 000h
	cp 000h
	cp 000h
	cp 000h
	cp 000h
	nop
	cp 000h
l7515h:
	nop
	nop
	nop
	ld (bc),a
	nop
	nop
	ld (bc),a
	nop
	nop
	nop
	nop
l7520h:
	ld (bc),a
	nop
	ld (bc),a
	nop
	ld (bc),a
	nop
	ld (bc),a
	nop
	ld (bc),a
	ld (bc),a
	ld (bc),a
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
	nop
	ei
	nop
	nop
	ld a,h
	nop
	call m,00800h
	ld a,h
	nop
	defb 0fdh,000h,010h ;illegal sequence
	ld a,h
	nop
	call m,01800h
	ld a,h
	nop
	call m,02000h
	ld a,h
	nop
	call m,02800h
l7555h:
	ld a,h
l7556h:
	nop
	call m,03000h
	ld a,h
	nop
	call m,03800h
	ld a,h
	nop
	call m,02800h
	ld a,h
	nop
	call m,02000h
	ld a,h
	nop
	call m,01800h
	ld a,h
	nop
	call m,01000h
	ld a,h
	ld a,r
	and 007h
	jp nz,0679ah
	ld hl,l6736h
	ld de,00005h
	ld b,00ch
l7583h:
	ld a,(hl)
	or a
	jp z,l678ch
	add hl,de
	djnz l7583h
	jp 0679ah
	ld (hl),001h
	inc hl
	ld (hl),0fah
	inc hl
	ld (hl),0b6h
	inc hl
	ld (hl),000h
	inc hl
	ld (hl),07ch
	ld a,r
	and 00fh
	add a,a
	add a,a
	add a,a
	ld (l6796h),a
l75a6h:
	ld a,(l66b3h+2)
	inc a
	and 007h
	ld (l66b3h+2),a
	ld a,(066b2h)
	inc a
	and 01fh
	ld (066b2h),a
	jp nz,067e8h
	ld a,(l66b3h)
	cp 0ffh
	ld b,0ffh
	jp z,l67c5h
	ld b,001h
	ld a,(l6790h)
	add a,b
	ld (l6790h),a
	cp 002h
l75d0h:
	jp nz,067deh
	xor a
	ld (l5e5eh),a
	ld a,003h
	ld (l64bbh),a
	xor a
	ld (l64bah),a
l75e0h:
	cp 0fah
l75e2h:
	jp nz,067e8h
l75e5h:
	ld a,001h
	ld (l66b3h),a
	ld a,(l66b3h+1)
	inc a
	and 007h
l75f0h:
	ld (l66b3h+1),a
	jp nz,l67ffh+1
	ld hl,l6737h
	ld de,00005h
	ld b,00ch
l75feh:
	inc (hl)
	add hl,de
	djnz l75feh
	call sub_685bh
	call sub_6827h
	ld a,(0fff6h)
	ld c,a
	ld de,l673ah
	ld hl,0c248h
	ld b,00ch
l7614h:
	ld a,(de)
	sub c
	ld (hl),a
	dec de
	dec de
	inc hl
	ld a,(de)
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	inc de
	inc de
	inc de
	inc de
	inc de
	inc de
	djnz l7614h
	ret
	ld a,(0c200h)
	add a,00ch
	ld e,a
	ld a,(0c201h)
	add a,02dh
	ld c,a
	ld hl,0c275h
	ld b,00ch
l763ah:
	ld a,(hl)
	dec hl
	cp c
	jp nc,l6855h
	add a,010h
	cp c
	jp c,l6855h
	ld a,(hl)
	cp e
	jp nc,l6855h
	add a,006h
	cp e
	jp c,l6855h
	ld a,048h
	ld (0c3cfh),a
	ret
	dec hl
	dec hl
	dec hl
	djnz l763ah
	ret
	ld a,(0fff6h)
	cp 050h
	ld a,004h
	jp c,l6867h
	ld a,0ech
	ld (l68a2h),a
	inc a
	ld (l68a7h),a
	ld hl,l6736h
	ld de,00005h
	ld b,00ch
l7678h:
	ld a,(hl)
	or a
	jp z,l68bfh
sub_767dh:
	inc hl
	ld a,(hl)
	inc hl
	add a,(hl)
	ld (hl),a
	cp 0b7h
	jp c,l688dh
	dec hl
	dec hl
	ld (hl),000h
l768bh:
	inc hl
	inc hl
	ld (hl),000h
	inc hl
	ld a,(hl)
	exx
	ld d,000h
	ld e,a
	ld hl,l66b6h
	add hl,de
	ld a,(l66b3h+2)
	ld e,a
	add hl,de
	ld a,(hl)
	exx
	inc hl
	add a,(hl)
	ld (hl),a
	cp 0f1h
	jp z,l68afh
	cp 0f0h
	jp z,l68afh
	inc hl
	djnz l7678h
	ret
	dec hl
	dec hl
	dec hl
	dec hl
	ld (hl),000h
	inc hl
	inc hl
	ld (hl),000h
	inc hl
	inc hl
	inc hl
l76beh:
	djnz l7678h
	ret
	add hl,de
	djnz l7678h
	ret
	adc a,d
	adc a,e
	adc a,d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l76d2h:
	nop
	nop
	nop
	adc a,a
	adc a,e
	adc a,a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l76e8h:
	ld hl,06a3ah
	ld de,0018eh
	ld bc,0000ah
	ldir
	ld a,(0c157h)
	cp 004h
	jp c,l690dh
	ld a,(l68e3h)
	dec a
	jp z,l6921h
l7702h:
	dec a
	jp z,l6945h
	dec a
	jp z,l6970h
	dec a
	jp z,06987h
	ret
	ld a,(l68e3h)
	dec a
	jp z,l6921h
	dec a
	jp z,06987h
	dec a
	jp z,l6970h
	dec a
	jp z,06987h
	ret
	ld de,069dah
	ld hl,069d4h
	call 069f2h
	ld a,(l68e4h)
	dec a
	ld (l68e4h),a
	ret nz
	ld a,r
	and 01fh
	add a,082h
	ld (l68e4h),a
	ld a,r
	and 001h
	add a,002h
	ld (l68e3h),a
	ret
	ld hl,06a3dh
	ld de,0018eh
	ld bc,0000ah
	ldir
	ld de,069e6h
	ld hl,069d4h
	call 069f2h
	ld a,(l68e4h)
	dec a
	ld (l68e4h),a
	ret nz
	ld a,046h
	ld (l68e4h),a
	ld a,r
	and 001h
	add a,003h
	ld (l68e3h),a
	ret
	ld de,069e0h
	ld hl,069d4h
	call 069f2h
	ld a,(l68e4h)
	dec a
	ld (l68e4h),a
	ret nz
	ld a,000h
	ld (l68e3h),a
	ret
	ld de,l69ech
	ld hl,069d4h
	call 069f2h
	ld a,r
	and 003h
	ret nz
	ld a,(l68e4h)
	dec a
	ld (l68e4h),a
	ret nz
	ld a,000h
	ld (l68e3h),a
	ret
	ld a,(0c1f7h)
	cp 002h
	ret c
	ld a,(l5b60h)
	or a
	ret nz
	ld a,(0c308h)
	or a
	jp nz,069c8h
l77b7h:
	ld hl,(0c1f6h)
	ld a,h
	cp 002h
	jp z,069c8h
	ld a,(069d3h)
	inc a
	and 03fh
	ret z
	ld (069d3h),a
	ld hl,069d4h
l77cdh:
	ld a,005h
	ld bc,0069ah
	jp 002deh
	nop
	nop
	nop
l77d8h:
	nop
	nop
	nop
	nop
	ld h,l
	rlca
	ld b,h
	ld b,022h
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	halt
	ld b,065h
	dec b
	ld h,d
	ld (bc),a
	ld d,l
l77efh:
	dec b
	ld (02203h),a
	ld (bc),a
	ld a,(l68e4h+1)
	dec a
	ld (l68e4h+1),a
	ret nz
	ld a,006h
	ld (l68e4h+1),a
	ld b,003h
l7803h:
	push bc
	call 06a13h
	call sub_6a27h
	inc hl
	inc de
	call sub_6a27h
	inc hl
	inc de
	pop bc
	djnz l7803h
	ret
	ld a,(de)
	and 0f0h
	ld b,a
	ld a,(hl)
	and 0f0h
	cp b
	ret z
	ld b,010h
	jp c,l6a23h
	ld b,0f0h
	ld a,(hl)
	add a,b
	ld (hl),a
	ret
	ld a,(de)
	and 00fh
	ld b,a
	ld a,(hl)
	and 00fh
	cp b
	ret z
l7832h:
	ld b,001h
	jp c,l6a23h
	ld b,0ffh
	jp l6a23h
	sub 004h
	ret
	cp 004h
	ret z
	sub 008h
	ret
	ld a,(l5b5fh)
	or a
	ret z
	ld a,(0c1f7h)
	cp 002h
	jp c,06a5fh
	cp 002h
	jp z,06a56h
	ret
	ld a,(0c1f6h)
	cp 032h
	jp c,06a5fh
	ret
	ld c,000h
	ld b,00eh
	ld hl,0c240h
	ld a,(0c3cfh)
	or a
	jp nz,l6a7ch
	ld a,(0c39ah)
l7872h:
	bit 1,a
	jp z,06a76h
	dec c
	bit 0,a
	jp z,l6a7ch
	inc c
l787eh:
	ld a,(hl)
	add a,c
	ld (hl),a
	cp 014h
	jp z,l6aa1h
	cp 0b4h
	jp nz,06a8ch
	ld a,014h
	ld (hl),a
	inc hl
	ld a,(hl)
l7890h:
	inc hl
	inc hl
	add a,(hl)
	dec hl
	dec hl
	cp 012h
	jp nc,06a9ah
	ld a,0d7h
	ld (hl),a
	inc hl
	inc hl
	inc hl
	djnz l787eh
	ret
	ld a,0b4h
	ld (hl),a
	jp 06a8ch
	nop
	ld a,(l5b60h)
	or a
	jp z,06ab4h
	xor a
	ld (l5b60h),a
l78b5h:
	ret
	call sub_69a9h
sub_78b9h:
	ld a,(0c1f7h)
	cp 002h
	jp c,06ae6h
	ret nz
	ld a,(0c1f6h)
	cp 032h
	ret nc
	ld a,(06aa7h)
	dec a
	and 03fh
	ld (06aa7h),a
	jp nz,06ae6h
	ld a,(l6b04h)
	sub 011h
	cp 028h
	jp c,l6af2h
	ld (l6b04h),a
	ld a,(l6b05h)
	dec a
	ld (l6b05h),a
	ld hl,l6b04h
	ld de,069d4h
	ld bc,00002h
	ldir
	ret
	xor a
	ld (l5b5fh),a
	ld hl,0c240h
	ld de,00004h
	ld b,00eh
	xor a
l7901h:
	ld (hl),a
	add hl,de
	djnz l7901h
	ret
	ld (hl),a
	rlca
	ld a,(0c39ch)
	or a
	ret nz
	ld a,(0c1f7h)
	cp 001h
	jp c,l6b31h
	ld a,00fh
	ld (l6b43h),a
	ret nz
	ld a,(0c1f6h)
	cp 0beh
	jp c,l6b31h
	cp 0ffh
	jp nz,l6b34h
	ld a,(0f3e1h)
	and 0dfh
	ld (0f3e1h),a
	jp l6b34h
	call sub_6b44h
	call sub_6b88h
	call sub_6baeh
	call 06bbfh
	call sub_6c0bh
	jp l6c2ch
	inc bc
	ld a,(l6b43h)
	ld b,a
	ld a,r
	and b
	ret nz
	ld hl,l6c61h
	ld de,00020h
	ld b,00bh
l7956h:
	ld a,(hl)
	or a
	jr z,l795eh
	add hl,de
	djnz l7956h
	ret
l795eh:
	ld (hl),001h
	inc hl
	ld a,(l6c2ah+1)
	ld (hl),a
	ld a,(l5d38h)
	or a
	jp z,l6b7ch
	ld a,(l6c2ah)
	cp 070h
	jp c,l6b7fh
	cp 096h
	jp nc,l6b7fh
	ld a,070h
l797bh:
	jp l6b7fh
	ld a,(l6c2ah)
	ld e,016h
	add hl,de
	ld (hl),a
	dec hl
	dec hl
	ld (hl),004h
	ret
	ld a,(0f3e1h)
	xor 020h
	ld (0f3e1h),a
	ld (l533ch),a
	ld hl,l6c6ah
l7998h:
	ld a,(hl)
	xor 001h
	ld (hl),a
	ld de,0000fh
	ld bc,00011h
	add hl,de
	ld (hl),a
	exx
	ld b,00ah
l79a7h:
	exx
	add hl,bc
	ld (hl),a
	add hl,de
	ld (hl),a
	exx
	djnz l79a7h
	ret
	ld hl,l6c63h
l79b3h:
	ld b,00bh
	ld de,00011h
l79b8h:
	push bc
l79b9h:
	call 0048bh
	add hl,de
	pop bc
	djnz l79b8h
	ret
	ld hl,l6c61h
	ld b,00bh
	ld d,000h
l79c8h:
	ld a,(hl)
	or a
	jr z,l7a07h
l79cch:
	inc hl
	ld c,(hl)
	ld a,(l5d38h)
	or a
	jp nz,06bdah
	ld a,r
	and 007h
	jp z,06bdch
	ld c,000h
	ld e,016h
	add hl,de
	ld a,(hl)
	ld e,00fh
	or a
	sbc hl,de
	ld (hl),a
	sub c
	add hl,de
	ld (hl),a
	dec hl
	dec hl
	ld a,(hl)
	ld e,00fh
l79f0h:
	or a
	sbc hl,de
	ld (hl),a
	add hl,de
	add a,004h
	ld (hl),a
l79f8h:
	or a
	jp z,l6c00h
	ld e,00bh
	add hl,de
	djnz l79c8h
	ret
	ld e,015h
	sbc hl,de
	ld (hl),a
l7a07h:
	ld e,020h
	add hl,de
	djnz l79c8h
	ret
	ld hl,l6c61h
	ld d,000h
	xor a
	exx
	ld b,00bh
l7a16h:
	exx
	cp (hl)
	jr z,l7a25h
	ld e,011h
	add hl,de
	call 0048bh
	xor a
	exx
	djnz l7a16h
	ret
l7a25h:
	ld e,020h
	add hl,de
	exx
	djnz l7a16h
	ret
	nop
	nop
	ld a,(0c200h)
	cp 064h
	ld c,03ah
	jr c,l7a39h
	ld c,055h
l7a39h:
	ld a,r
	or a
	cp 098h
	ret nc
	add a,c
	ld (l6c2ah),a
	cp 0beh
	ld c,000h
	jr c,l7a4bh
	ld c,001h
l7a4bh:
	ld a,r
	and 003h
	add a,c
	ld b,0ffh
	jp z,l6c5ch
	cp 001h
	ld b,001h
l7a59h:
	jp z,l6c5ch
	ld b,000h
	ld a,b
	ld (l6c2ah+1),a
	ret
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld (hl),d
	nop
	djnz l7a6fh
l7a6fh:
	ld c,000h
	sbc a,c
	nop
	ret nz
	djnz l7a76h
l7a76h:
	and b
	inc bc
	inc b
	nop
	ld (hl),d
	nop
l7a7ch:
	djnz l7a7eh
l7a7eh:
	ld c,000h
	nop
l7a81h:
	nop
	ret nc
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld (hl),d
l7a8ch:
	nop
	ld b,000h
l7a8fh:
	ex af,af'
	nop
	sbc a,c
	nop
	ret nz
	inc d
	nop
	sbc a,b
	inc bc
	inc b
	nop
	ld (hl),d
	nop
	ld b,000h
	ex af,af'
	nop
	nop
	nop
	ret nc
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld (hl),d
	nop
l7aadh:
	inc c
	nop
	ld a,(bc)
	nop
	sbc a,c
	nop
	ret nz
	nop
	nop
	xor b
	inc bc
	inc b
	nop
	ld (hl),d
l7abbh:
	nop
	inc c
	nop
	ld a,(bc)
	nop
	nop
	nop
	ret nc
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld (hl),d
	nop
	ex af,af'
	nop
	ex af,af'
	nop
	sbc a,c
l7ad2h:
	nop
	ret nz
	jr l7ad6h
l7ad6h:
	or b
	inc bc
	inc b
	nop
	ld (hl),d
	nop
	ex af,af'
	nop
	ex af,af'
	nop
	nop
	nop
l7ae2h:
	ret nc
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	inc a
	nop
sub_7aedh:
	ld b,000h
	ex af,af'
	nop
	sbc a,c
	nop
	ret nz
	ld a,(de)
	nop
	sbc a,b
	inc bc
	inc b
	nop
	inc a
	nop
	ld b,000h
	ex af,af'
	nop
l7b00h:
	nop
	nop
	ret nc
	nop
	nop
	nop
	nop
	nop
l7b08h:
	nop
	inc b
	nop
	inc a
	nop
	ld b,000h
	ld b,000h
	sbc a,c
	nop
	ret nz
	ex af,af'
	nop
	and b
	inc bc
	inc b
	nop
	inc a
	nop
	ld b,000h
	ld b,000h
	nop
	nop
	ret nc
l7b23h:
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,(hl)
	nop
	inc c
	nop
	ld a,(bc)
	nop
	sbc a,c
	nop
	ret nz
	nop
	nop
	or d
	inc bc
	inc b
	nop
	ld l,(hl)
	nop
	inc c
	nop
	ld a,(bc)
	nop
	nop
	nop
	ret nc
	nop
	nop
	nop
	nop
l7b47h:
	nop
	nop
	inc b
	nop
	ld l,(hl)
	nop
	ex af,af'
	nop
	ex af,af'
	nop
	sbc a,c
	nop
	ret nz
	nop
	nop
	and b
	inc bc
	inc b
	nop
	ld l,(hl)
	nop
	ex af,af'
	nop
	ex af,af'
	nop
	nop
	nop
	ret nc
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,(hl)
	nop
	ex af,af'
	nop
	ex af,af'
	nop
	sbc a,c
	nop
	ret nz
	djnz l7b76h
l7b76h:
	cp b
	inc bc
	inc b
	nop
	ld l,(hl)
	nop
	ex af,af'
	nop
	ex af,af'
	nop
	nop
	nop
	ret nc
l7b83h:
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,(hl)
	nop
	ex af,af'
	nop
	ex af,af'
	nop
	sbc a,c
	nop
	ret nz
	jr l7b96h
l7b96h:
	cp b
	inc bc
	inc b
	nop
	ld l,(hl)
	nop
	ex af,af'
	nop
	ex af,af'
	nop
	nop
	nop
	ret nc
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,(hl)
	nop
l7badh:
	inc c
	nop
	ex af,af'
	nop
	sbc a,c
	nop
	ret nz
	ex af,af'
	nop
	sbc a,b
	inc bc
	inc b
	nop
	ld l,(hl)
	nop
	inc c
	nop
	ex af,af'
l7bbfh:
	nop
	nop
	nop
	ret nc
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld l,(hl)
	nop
	ex af,af'
	nop
	ex af,af'
	nop
	sbc a,c
	nop
	ret nz
	djnz l7bd6h
l7bd6h:
	or b
	inc bc
	inc b
	nop
	ld l,(hl)
	nop
l7bdch:
	ex af,af'
	nop
	ex af,af'
	nop
	nop
	nop
	ret nc
	nop
	nop
	nop
l7be6h:
	nop
	nop
	nop
	inc b
	nop
	ld l,(hl)
	nop
	ex af,af'
	nop
	ex af,af'
	nop
	sbc a,c
	nop
	ret nz
	djnz l7bf6h
l7bf6h:
	or b
l7bf7h:
	inc bc
	inc b
	nop
	ld l,(hl)
	nop
	ex af,af'
	nop
	ex af,af'
	nop
	nop
	nop
	ret nc
	nop
	nop
	nop
	nop
	nop
	nop
	ld b,b
	ld b,b
	ld b,b
	ld b,b
	jr nz,l7c2fh
	djnz l7c1dh
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
l7c1dh:
	nop
	nop
	nop
	nop
	ret po
	nop
l7c23h:
	nop
l7c24h:
	nop
l7c25h:
	nop
	nop
	nop
	ld b,b
	and b
	and b
	and b
	and b
	ld d,b
	ld d,b
l7c2fh:
	inc l
	inc de
	inc c
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
sub_7c3ah:
	nop
	nop
	nop
	nop
	nop
	nop
	ret po
	djnz l7c23h
	nop
	djnz l7c66h
	jr nz,l7c68h
	jr nz,l7c5ah
	djnz l7c54h
	inc b
	ld (bc),a
	ld bc,00000h
	nop
	nop
	nop
l7c54h:
	nop
	nop
	nop
	nop
	nop
	nop
l7c5ah:
	nop
	nop
	nop
	nop
	add a,b
	ld (hl),b
	nop
	nop
	nop
	nop
	jr nz,l7c76h
l7c66h:
	djnz l7cb8h
l7c68h:
	ld d,b
	jr z,l7c93h
	inc d
	ld a,(bc)
	dec b
	ld (bc),a
	ld bc,00000h
	nop
	nop
	nop
	nop
l7c76h:
	nop
	nop
	nop
	nop
	nop
	nop
l7c7ch:
	nop
	add a,b
	ld (hl),b
	add a,b
	ld (hl),b
	nop
	nop
	nop
	djnz l7c96h
	ex af,af'
	ex af,af'
	inc b
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
l7c93h:
	nop
	nop
	nop
l7c96h:
	nop
	nop
	nop
	nop
	ret nz
	jr c,l7c9dh
l7c9dh:
	nop
	nop
	nop
	nop
	nop
	nop
	djnz l7ccdh
	jr z,$+22
	inc d
	dec bc
	inc b
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
l7cb8h:
	nop
	ret nz
	jr c,l7c7ch
	jr c,l7cbeh
l7cbeh:
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
	ld bc,00000h
	nop
	nop
l7ccdh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add a,b
	ld b,b
	jr nz,l7cedh
	ex af,af'
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld (bc),a
	dec b
	ld (bc),a
	ld bc,00000h
	nop
l7cedh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add a,b
	ld b,b
	and b
	ld d,b
	jr z,l7d12h
	inc c
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
	nop
	nop
l7d12h:
	nop
	nop
	ret po
	djnz l7d1fh
	inc b
	inc b
	ld (bc),a
	ld (bc),a
	nop
	nop
	nop
l7d1eh:
	nop
l7d1fh:
	nop
	nop
	nop
	nop
	ld bc,00102h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ret po
	djnz l7d1eh
	inc d
l7d37h:
	ex af,af'
l7d38h:
	ex af,af'
l7d39h:
	inc b
	inc b
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
l7d50h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7d57h:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7d6fh:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h,b
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00301h
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
	add a,b
	ret nz
	add a,b
l7e1ch:
	add a,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00200h
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
	add a,b
	ld b,b
l7e3bh:
	nop
	add a,b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00402h
	add hl,bc
	rlca
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
	ret nz
	ret po
	ld h,b
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
	ld bc,00301h
	ld c,000h
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
	add a,b
	jr nz,l7e1ch
	jr nz,l7ebeh
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,00909h
	dec bc
	ld a,(bc)
	ld b,007h
	rlca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l7e97h:
	nop
	or b
	add a,b
	ld l,b
	jr z,l7ed5h
	jr c,l7e97h
	jr nc,l7ea1h
l7ea1h:
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,0060eh
	inc b
	dec c
	ld bc,00400h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,b
	ld (hl),b
	sub b
	ret nc
	ret nz
	ret z
l7ebeh:
	ex af,af'
	jr nc,l7ec1h
l7ec1h:
	nop
	nop
	nop
	nop
	inc bc
	rlca
	rrca
	dec de
	daa
	daa
	cpl
	ld l,a
	ccf
	ccf
	rra
	ld b,000h
	nop
	nop
	nop
l7ed5h:
	ret z
	call nz,0fce4h
	call m,0bcfch
	inc a
	ret p
	ret po
	ret nz
	nop
	nop
	nop
	nop
	nop
	inc bc
	inc b
	ex af,af'
	inc d
	jr c,l7f23h
	djnz l7f3dh
	jr nz,l7f0fh
	ld de,00006h
	nop
	nop
	nop
	or b
	inc a
	inc e
l7ef8h:
	nop
	nop
	nop
	ld b,h
	call nz,02010h
	ret nz
	nop
	nop
	nop
	nop
	inc bc
	ld c,018h
	jr nc,l7f69h
	ld h,b
	ret nz
	rst 8
	rst 38h
	ld a,a
	ld a,a
l7f0fh:
	ccf
	rlca
	ld bc,00000h
	ret nz
	ld a,h
	ld h,d
	ld b,a
	ld h,a
	ld l,a
	rst 8
	rst 18h
	cp 0fch
	ret m
	ret m
	ret p
	ret po
l7f22h:
	nop
l7f23h:
	nop
	ld (bc),a
	add hl,bc
	rla
	cpl
	ld e,a
	rra
	cp a
	or b
	add a,b
	nop
	ld b,b
	jr nc,l7f37h
	ld bc,00000h
	ld b,b
	or b
	sbc a,h
l7f37h:
	cp c
	sbc a,b
	sub b
	ld sp,00221h
l7f3dh:
	inc b
	ex af,af'
	ex af,af'
	djnz l7f22h
	nop
	nop
	rlca
	ld a,(l4767h)
	ld c,a
	ld c,(hl)
	ld l,h
	ld l,h
	inc a
l7f4dh:
	inc a
	ld e,01fh
	rrca
	nop
	nop
	nop
	nop
	ld (hl),b
	sbc a,h
	add a,h
	jp po,03676h
	ccf
	rra
	rra
	ld a,0feh
	call m,00038h
	nop
	rlca
	dec h
	ld e,b
	jr c,l7f99h
l7f69h:
	ld sp,l5353h
	inc bc
	inc hl
	ld bc,00c10h
	nop
	nop
	nop
	nop
	or b
	ld l,h
	ld a,h
	ld e,088h
	ret z
	pop bc
	pop hl
	pop hl
	jp nz,08402h
l7f81h:
	jr c,l7f83h
l7f83h:
	nop
	inc bc
	rrca
	dec de
	scf
	daa
	ld c,a
	ld c,a
	ld e,a
	rst 18h
	rst 38h
	ld a,a
	ld a,a
	ccf
	ld c,000h
	ld a,b
	call nz,0f2c2h
	cp 0feh
l7f99h:
	cp 0feh
	sbc a,(hl)
	ld a,07ch
	ret m
	ret p
	ret nz
	nop
	nop
	nop
	inc bc
	ex af,af'
	inc d
	jr z,l7fc1h
	ld (hl),b
	ld (hl),b
	jr nz,l7f4dh
	add a,b
	ld b,b
	ld b,b
	ld hl,0000eh
	ld a,b
	cp b
	ld a,00eh
	nop
	nop
	nop
	nop
	ld h,d
	jp nz,00884h
	jr nc,l7f81h
l7fc1h:
	nop
	nop
	ld a,(0c1a0h)
	and 020h
	ret z
	ld de,00011h
	ld hl,0c282h
	ld a,(0c200h)
	add a,00ah
	ld b,a
	ld a,(0c201h)
	add a,030h
	ld c,a
	exx
	ld b,007h
l7fdeh:
	exx
	ld a,(hl)
	dec hl
	cp c
	jp nc,l71f4h
	add a,018h
	cp c
	jp c,l71f4h
	ld a,(hl)
	cp b
	jp nc,l71f4h
	add a,010h
	cp b
	jp nc,071f9h
	add hl,de
	exx
	djnz l7fdeh
	ret
	dec hl
	ld a,(hl)
	dec a
	ret nz
	defb 03ah
