; z80dasm 1.2.0
; command line: z80dasm -a -l -t -g 0x4000 -o docs/reverse-engineering/msxdiag/MSXDIAG.disasm.asm roms/games/roms/MSXDIAG.ROM

	org 04000h

	ld b,c			;4000	41		A
	ld b,d			;4001	42		B
	inc e			;4002	1c		.
	ld b,b			;4003	40		@
	nop			;4004	00		.
	nop			;4005	00		.
	nop			;4006	00		.
	nop			;4007	00		.
	nop			;4008	00		.
	nop			;4009	00		.
	nop			;400a	00		.
	nop			;400b	00		.
	nop			;400c	00		.
	nop			;400d	00		.
	nop			;400e	00		.
	nop			;400f	00		.
	ld c,l			;4010	4d		M
	ld d,e			;4011	53		S
	ld e,b			;4012	58		X
	ld e,a			;4013	5f		_
	ld b,h			;4014	44		D
	ld c,c			;4015	49		I
	ld b,c			;4016	41		A
	ld b,a			;4017	47		G
	nop			;4018	00		.
	nop			;4019	00		.
	nop			;401a	00		.
	nop			;401b	00		.
	call 00138h		;401c	cd 38 01	. 8 .
	rrca			;401f	0f		.
	rrca			;4020	0f		.
	and 003h		;4021	e6 03		. .
	ld c,a			;4023	4f		O
	ld hl,0fcc1h		;4024	21 c1 fc	! . .
	add a,l			;4027	85		.
	ld l,a			;4028	6f		o
	ld a,(hl)		;4029	7e		~
	and 080h		;402a	e6 80		. .
	or c			;402c	b1		.
	ld c,a			;402d	4f		O
	inc l			;402e	2c		,
	inc l			;402f	2c		,
	inc l			;4030	2c		,
	inc l			;4031	2c		,
	ld a,(hl)		;4032	7e		~
	and 00ch		;4033	e6 0c		. .
	or c			;4035	b1		.
	ld h,080h		;4036	26 80		& .
	call 00024h		;4038	cd 24 00	. $ .
	jp l403fh		;403b	c3 3f 40	. ? @
	ret			;403e	c9		.
l403fh:
	call sub_623dh		;403f	cd 3d 62	. = b
	call sub_4063h		;4042	cd 63 40	. c @
	call sub_4568h		;4045	cd 68 45	. h E
	call sub_4594h		;4048	cd 94 45	. . E
	call 00041h		;404b	cd 41 00	. A .
	call sub_622ch		;404e	cd 2c 62	. , b
	ld hl,00f0bh		;4051	21 0b 0f	! . .
	call sub_6229h		;4054	cd 29 62	. ) b
	ld hl,l7ebbh		;4057	21 bb 7e	! . ~
	call sub_60f3h		;405a	cd f3 60	. . `
	call 00044h		;405d	cd 44 00	. D .
	call 00000h		;4060	cd 00 00	. . .
sub_4063h:
	call sub_4080h		;4063	cd 80 40	. . @
	call sub_4138h		;4066	cd 38 41	. 8 A
	call sub_44c1h		;4069	cd c1 44	. . D
	call sub_40a3h		;406c	cd a3 40	. . @
l406fh:
	call sub_40aeh		;406f	cd ae 40	. . @
	call sub_5e28h		;4072	cd 28 5e	. ( ^
	ld a,001h		;4075	3e 01		> .
	ld (0ec74h),a		;4077	32 74 ec	2 t .
	ld a,001h		;407a	3e 01		> .
	ld (0ed1ch),a		;407c	32 1c ed	2 . .
	ret			;407f	c9		.
sub_4080h:
	ld b,003h		;4080	06 03		. .
	ld d,00ch		;4082	16 0c		. .
l4084h:
	push bc			;4084	c5		.
	push de			;4085	d5		.
	xor a			;4086	af		.
	call 00132h		;4087	cd 32 01	. 2 .
	call 000c0h		;408a	cd c0 00	. . .
	pop de			;408d	d1		.
	ld b,d			;408e	42		B
l408fh:
	halt			;408f	76		v
	djnz l408fh		;4090	10 fd		. .
	ld a,0ffh		;4092	3e ff		> .
	push de			;4094	d5		.
	call 00132h		;4095	cd 32 01	. 2 .
	pop de			;4098	d1		.
	ld b,d			;4099	42		B
l409ah:
	halt			;409a	76		v
	djnz l409ah		;409b	10 fd		. .
	srl d			;409d	cb 3a		. :
	pop bc			;409f	c1		.
	djnz l4084h		;40a0	10 e2		. .
	ret			;40a2	c9		.
sub_40a3h:
	ld hl,0ed14h		;40a3	21 14 ed	! . .
	ld b,006h		;40a6	06 06		. .
l40a8h:
	xor a			;40a8	af		.
	ld (hl),a		;40a9	77		w
	inc hl			;40aa	23		#
	djnz l40a8h		;40ab	10 fb		. .
	ret			;40ad	c9		.
sub_40aeh:
	ld hl,l8db6h		;40ae	21 b6 8d	! . .
	ld (0ed1eh),hl		;40b1	22 1e ed	" . .
	ld a,(0002ch)		;40b4	3a 2c 00	: , .
	and 00fh		;40b7	e6 0f		. .
	ld (0ed1dh),a		;40b9	32 1d ed	2 . .
	cp 002h			;40bc	fe 02		. .
	jr nz,l40c7h		;40be	20 07		  .
	ld hl,l8ddeh		;40c0	21 de 8d	! . .
	ld (0ed1eh),hl		;40c3	22 1e ed	" . .
	ret			;40c6	c9		.
l40c7h:
	ret			;40c7	c9		.
sub_40c8h:
	call sub_5f33h		;40c8	cd 33 5f	. 3 _
	call sub_5e97h		;40cb	cd 97 5e	. . ^
	call sub_5ed7h		;40ce	cd d7 5e	. . ^
	ld a,(0e3c5h)		;40d1	3a c5 e3	: . .
	and 007h		;40d4	e6 07		. .
	ld b,a			;40d6	47		G
	ld a,(0e3d9h)		;40d7	3a d9 e3	: . .
	and 007h		;40da	e6 07		. .
	or b			;40dc	b0		.
	ld (0ed14h),a		;40dd	32 14 ed	2 . .
	ld a,(0e3c6h)		;40e0	3a c6 e3	: . .
	and 007h		;40e3	e6 07		. .
	ld b,a			;40e5	47		G
	ld a,(0e3dah)		;40e6	3a da e3	: . .
	and 007h		;40e9	e6 07		. .
	or b			;40eb	b0		.
	ld (0ed15h),a		;40ec	32 15 ed	2 . .
	ld a,(0e3c4h)		;40ef	3a c4 e3	: . .
	and 007h		;40f2	e6 07		. .
	ld b,a			;40f4	47		G
	ld a,(0e3dbh)		;40f5	3a db e3	: . .
	and 007h		;40f8	e6 07		. .
	or b			;40fa	b0		.
	ld (0ed16h),a		;40fb	32 16 ed	2 . .
	ld a,(0e3c7h)		;40fe	3a c7 e3	: . .
	and 007h		;4101	e6 07		. .
	ld b,a			;4103	47		G
	ld a,(0e3dch)		;4104	3a dc e3	: . .
	and 007h		;4107	e6 07		. .
	or b			;4109	b0		.
	ld (0ed17h),a		;410a	32 17 ed	2 . .
	ld a,(0e3c0h)		;410d	3a c0 e3	: . .
	and 007h		;4110	e6 07		. .
	ld b,a			;4112	47		G
	ld a,(0e3ddh)		;4113	3a dd e3	: . .
	and 007h		;4116	e6 07		. .
	or b			;4118	b0		.
	ld (0ed18h),a		;4119	32 18 ed	2 . .
	ld a,(0e3bah)		;411c	3a ba e3	: . .
	and 007h		;411f	e6 07		. .
	ld b,a			;4121	47		G
	ld a,(0e3deh)		;4122	3a de e3	: . .
	and 007h		;4125	e6 07		. .
	or b			;4127	b0		.
	ld (0ed19h),a		;4128	32 19 ed	2 . .
	ret			;412b	c9		.
sub_412ch:
	ld de,00e00h		;412c	11 00 0e	. . .
	ld hl,l8d2eh		;412f	21 2e 8d	! . .
	ld bc,00080h		;4132	01 80 00	. . .
	jp 0005ch		;4135	c3 5c 00	. \ .
sub_4138h:
	call sub_413fh		;4138	cd 3f 41	. ? A
	call sub_415ch		;413b	cd 5c 41	. \ A
	ret			;413e	c9		.
sub_413fh:
	ld bc,00400h		;413f	01 00 04	. . .
l4142h:
	ld d,000h		;4142	16 00		. .
	ld e,c			;4144	59		Y
	ld hl,0fcc1h		;4145	21 c1 fc	! . .
	add hl,de		;4148	19		.
	ld a,(hl)		;4149	7e		~
	ld hl,0ec7ah		;414a	21 7a ec	! z .
	add hl,de		;414d	19		.
	bit 7,a			;414e	cb 7f		. .
	jr z,l4156h		;4150	28 04		( .
	ld (hl),00bh		;4152	36 0b		6 .
	jr l4158h		;4154	18 02		. .
l4156h:
	ld (hl),000h		;4156	36 00		6 .
l4158h:
	inc c			;4158	0c		.
	djnz l4142h		;4159	10 e7		. .
	ret			;415b	c9		.
sub_415ch:
	ld hl,0ec77h		;415c	21 77 ec	! w .
	ld b,003h		;415f	06 03		. .
l4161h:
	ld (hl),000h		;4161	36 00		6 .
	inc hl			;4163	23		#
	djnz l4161h		;4164	10 fb		. .
	ld hl,0ec7eh		;4166	21 7e ec	! ~ .
	ld b,010h		;4169	06 10		. .
l416bh:
	ld (hl),000h		;416b	36 00		6 .
	inc hl			;416d	23		#
	djnz l416bh		;416e	10 fb		. .
	ld hl,0ec8eh		;4170	21 8e ec	! . .
	ld b,040h		;4173	06 40		. @
l4175h:
	ld (hl),000h		;4175	36 00		6 .
	inc hl			;4177	23		#
	ld (hl),000h		;4178	36 00		6 .
	inc hl			;417a	23		#
	djnz l4175h		;417b	10 f8		. .
	ld bc,00400h		;417d	01 00 04	. . .
l4180h:
	push bc			;4180	c5		.
	ld a,c			;4181	79		y
	and 003h		;4182	e6 03		. .
	ld (0ed13h),a		;4184	32 13 ed	2 . .
	ld hl,0ec7ah		;4187	21 7a ec	! z .
	ld d,000h		;418a	16 00		. .
	ld e,c			;418c	59		Y
	add hl,de		;418d	19		.
	ld a,(hl)		;418e	7e		~
	or a			;418f	b7		.
	jp z,l41b5h		;4190	ca b5 41	. . A
	ld a,(0ed13h)		;4193	3a 13 ed	: . .
	set 7,a			;4196	cb ff		. .
	ld (0ed13h),a		;4198	32 13 ed	2 . .
	ld bc,00400h		;419b	01 00 04	. . .
l419eh:
	push bc			;419e	c5		.
	ld a,(0ed13h)		;419f	3a 13 ed	: . .
	and 083h		;41a2	e6 83		. .
	sla c			;41a4	cb 21		. !
	sla c			;41a6	cb 21		. !
	or c			;41a8	b1		.
	ld (0ed13h),a		;41a9	32 13 ed	2 . .
	call sub_41bdh		;41ac	cd bd 41	. . A
	pop bc			;41af	c1		.
	inc c			;41b0	0c		.
	djnz l419eh		;41b1	10 eb		. .
	jr l41b8h		;41b3	18 03		. .
l41b5h:
	call sub_41bdh		;41b5	cd bd 41	. . A
l41b8h:
	pop bc			;41b8	c1		.
	inc c			;41b9	0c		.
	djnz l4180h		;41ba	10 c4		. .
	ret			;41bc	c9		.
sub_41bdh:
	ld hl,0e575h		;41bd	21 75 e5	! u .
	ld b,003h		;41c0	06 03		. .
	xor a			;41c2	af		.
l41c3h:
	ld (hl),a		;41c3	77		w
	inc hl			;41c4	23		#
	djnz l41c3h		;41c5	10 fc		. .
	call sub_41d7h		;41c7	cd d7 41	. . A
	call sub_4221h		;41ca	cd 21 42	. ! B
	ld a,(0e575h)		;41cd	3a 75 e5	: u .
	sub 040h		;41d0	d6 40		. @
	ret c			;41d2	d8		.
	call sub_4355h		;41d3	cd 55 43	. U C
	ret			;41d6	c9		.
sub_41d7h:
	ld hl,00000h		;41d7	21 00 00	! . .
	ld (0ed11h),hl		;41da	22 11 ed	" . .
	ld b,00ch		;41dd	06 0c		. .
l41dfh:
	push bc			;41df	c5		.
	di			;41e0	f3		.
	ld a,(0ed13h)		;41e1	3a 13 ed	: . .
	ld hl,(0ed11h)		;41e4	2a 11 ed	* . .
	call 0000ch		;41e7	cd 0c 00	. . .
	ld b,a			;41ea	47		G
	cpl			;41eb	2f		/
	ld e,a			;41ec	5f		_
	ld c,a			;41ed	4f		O
	ld a,(0ed13h)		;41ee	3a 13 ed	: . .
	ld hl,(0ed11h)		;41f1	2a 11 ed	* . .
	push bc			;41f4	c5		.
	call 00014h		;41f5	cd 14 00	. . .
	ld a,(0ed13h)		;41f8	3a 13 ed	: . .
	ld hl,(0ed11h)		;41fb	2a 11 ed	* . .
	call 0000ch		;41fe	cd 0c 00	. . .
	pop bc			;4201	c1		.
	cp c			;4202	b9		.
	jr nz,l4212h		;4203	20 0d		  .
	ld e,b			;4205	58		X
	ld a,(0ed13h)		;4206	3a 13 ed	: . .
	ld hl,(0ed11h)		;4209	2a 11 ed	* . .
	call 00014h		;420c	cd 14 00	. . .
	call sub_42f0h		;420f	cd f0 42	. . B
l4212h:
	ei			;4212	fb		.
	pop bc			;4213	c1		.
	ld hl,(0ed11h)		;4214	2a 11 ed	* . .
	ld de,01000h		;4217	11 00 10	. . .
	add hl,de		;421a	19		.
	ld (0ed11h),hl		;421b	22 11 ed	" . .
	djnz l41dfh		;421e	10 bf		. .
	ret			;4220	c9		.
sub_4221h:
	ld hl,0c000h		;4221	21 00 c0	! . .
	ld (0ed11h),hl		;4224	22 11 ed	" . .
	ld b,004h		;4227	06 04		. .
l4229h:
	push bc			;4229	c5		.
	di			;422a	f3		.
	in a,(0a8h)		;422b	db a8		. .
	ld b,a			;422d	47		G
	ld a,(0ffffh)		;422e	3a ff ff	: . .
	cpl			;4231	2f		/
	ld c,a			;4232	4f		O
	exx			;4233	d9		.
	ld c,003h		;4234	0e 03		. .
	ld a,(0ed13h)		;4236	3a 13 ed	: . .
	and c			;4239	a1		.
	ld e,a			;423a	5f		_
	ld a,(0ed13h)		;423b	3a 13 ed	: . .
	srl a			;423e	cb 3f		. ?
	srl a			;4240	cb 3f		. ?
	and c			;4242	a1		.
	ld d,a			;4243	57		W
	ld hl,(0ed11h)		;4244	2a 11 ed	* . .
	call sub_44b6h		;4247	cd b6 44	. . D
	ld b,a			;424a	47		G
	or a			;424b	b7		.
	jr z,l425ch		;424c	28 0e		( .
l424eh:
	sla c			;424e	cb 21		. !
	sla c			;4250	cb 21		. !
	sla d			;4252	cb 22		. "
	sla d			;4254	cb 22		. "
	sla e			;4256	cb 23		. #
	sla e			;4258	cb 23		. #
	djnz l424eh		;425a	10 f2		. .
l425ch:
	ld a,c			;425c	79		y
	cpl			;425d	2f		/
	ld c,a			;425e	4f		O
	ld a,(0ed13h)		;425f	3a 13 ed	: . .
	bit 7,a			;4262	cb 7f		. .
	jr z,l4280h		;4264	28 1a		( .
	rrc a			;4266	cb 0f		. .
	rrc a			;4268	cb 0f		. .
	and 0c0h		;426a	e6 c0		. .
	ld b,a			;426c	47		G
	in a,(0a8h)		;426d	db a8		. .
	and 03fh		;426f	e6 3f		. ?
	or b			;4271	b0		.
	ld (0e574h),a		;4272	32 74 e5	2 t .
	in a,(0a8h)		;4275	db a8		. .
	ld b,a			;4277	47		G
	ld a,(0e574h)		;4278	3a 74 e5	: t .
	call sub_42bch		;427b	cd bc 42	. . B
	jr l4287h		;427e	18 07		. .
l4280h:
	in a,(0a8h)		;4280	db a8		. .
	and c			;4282	a1		.
	or e			;4283	b3		.
	call sub_42a0h		;4284	cd a0 42	. . B
l4287h:
	ei			;4287	fb		.
	ld a,0ffh		;4288	3e ff		> .
	cp e			;428a	bb		.
	jr nz,l4290h		;428b	20 03		  .
	call sub_42f0h		;428d	cd f0 42	. . B
l4290h:
	pop bc			;4290	c1		.
	ld hl,(0ed11h)		;4291	2a 11 ed	* . .
	ld de,01000h		;4294	11 00 10	. . .
	add hl,de		;4297	19		.
	ld (0ed11h),hl		;4298	22 11 ed	" . .
	dec b			;429b	05		.
	jp nz,l4229h		;429c	c2 29 42	. ) B
	ret			;429f	c9		.
sub_42a0h:
	out (0a8h),a		;42a0	d3 a8		. .
	ld a,(hl)		;42a2	7e		~
	ld b,a			;42a3	47		G
	cpl			;42a4	2f		/
	ld c,a			;42a5	4f		O
	ld (hl),a		;42a6	77		w
	ld a,(hl)		;42a7	7e		~
	cp c			;42a8	b9		.
	jr nz,l42b2h		;42a9	20 07		  .
	ld a,b			;42ab	78		x
	ld (hl),a		;42ac	77		w
	ld a,0ffh		;42ad	3e ff		> .
	ex af,af'		;42af	08		.
	jr l42b5h		;42b0	18 03		. .
l42b2h:
	ld a,000h		;42b2	3e 00		> .
	ex af,af'		;42b4	08		.
l42b5h:
	exx			;42b5	d9		.
	ex af,af'		;42b6	08		.
	ld e,a			;42b7	5f		_
	ld a,b			;42b8	78		x
	out (0a8h),a		;42b9	d3 a8		. .
	ret			;42bb	c9		.
sub_42bch:
	out (0a8h),a		;42bc	d3 a8		. .
	ld a,(0ffffh)		;42be	3a ff ff	: . .
	cpl			;42c1	2f		/
	and c			;42c2	a1		.
	or d			;42c3	b2		.
	ld (0ffffh),a		;42c4	32 ff ff	2 . .
	in a,(0a8h)		;42c7	db a8		. .
	ld d,a			;42c9	57		W
	ld a,b			;42ca	78		x
	and c			;42cb	a1		.
	or e			;42cc	b3		.
	out (0a8h),a		;42cd	d3 a8		. .
	ld a,(hl)		;42cf	7e		~
	ld b,a			;42d0	47		G
	cpl			;42d1	2f		/
	ld c,a			;42d2	4f		O
	ld (hl),a		;42d3	77		w
	ld a,(hl)		;42d4	7e		~
	cp c			;42d5	b9		.
	jr nz,l42dfh		;42d6	20 07		  .
	ld a,b			;42d8	78		x
	ld (hl),a		;42d9	77		w
	ld a,0ffh		;42da	3e ff		> .
	ex af,af'		;42dc	08		.
	jr l42e2h		;42dd	18 03		. .
l42dfh:
	ld a,000h		;42df	3e 00		> .
	ex af,af'		;42e1	08		.
l42e2h:
	ld a,d			;42e2	7a		z
	out (0a0h),a		;42e3	d3 a0		. .
	exx			;42e5	d9		.
	ex af,af'		;42e6	08		.
	ld e,a			;42e7	5f		_
	ld a,c			;42e8	79		y
	ld (0ffffh),a		;42e9	32 ff ff	2 . .
	ld a,b			;42ec	78		x
	out (0a8h),a		;42ed	d3 a8		. .
	ret			;42ef	c9		.
sub_42f0h:
	ld hl,0e474h		;42f0	21 74 e4	! t .
	ld (hl),004h		;42f3	36 04		6 .
	inc hl			;42f5	23		#
	ld (hl),000h		;42f6	36 00		6 .
	inc hl			;42f8	23		#
	ld (hl),000h		;42f9	36 00		6 .
	ld de,0ec77h		;42fb	11 77 ec	. w .
	ld hl,0e474h		;42fe	21 74 e4	! t .
	call sub_5d9fh		;4301	cd 9f 5d	. . ]
	ld de,0e575h		;4304	11 75 e5	. u .
	ld hl,0e474h		;4307	21 74 e4	! t .
	call sub_5d9fh		;430a	cd 9f 5d	. . ]
	ld de,00004h		;430d	11 04 00	. . .
	call sub_433ah		;4310	cd 3a 43	. : C
	call sub_4317h		;4313	cd 17 43	. . C
	ret			;4316	c9		.
sub_4317h:
	ld hl,(0ed11h)		;4317	2a 11 ed	* . .
	call sub_44b6h		;431a	cd b6 44	. . D
	ld b,a			;431d	47		G
	ld c,001h		;431e	0e 01		. .
	or a			;4320	b7		.
	jr z,l4327h		;4321	28 04		( .
l4323h:
	sla c			;4323	cb 21		. !
	djnz l4323h		;4325	10 fc		. .
l4327h:
	push bc			;4327	c5		.
	call sub_4457h		;4328	cd 57 44	. W D
	pop bc			;432b	c1		.
	ld a,(hl)		;432c	7e		~
	or c			;432d	b1		.
	and 00fh		;432e	e6 0f		. .
	ld (hl),a		;4330	77		w
	ld a,(0e575h)		;4331	3a 75 e5	: u .
	sub 040h		;4334	d6 40		. @
	ret c			;4336	d8		.
	set 6,(hl)		;4337	cb f6		. .
	ret			;4339	c9		.
sub_433ah:
	push de			;433a	d5		.
	ld hl,(0ed11h)		;433b	2a 11 ed	* . .
	call sub_44b6h		;433e	cd b6 44	. . D
	call sub_447ah		;4341	cd 7a 44	. z D
	pop de			;4344	d1		.
	push hl			;4345	e5		.
	ld b,h			;4346	44		D
	ld c,l			;4347	4d		M
	ld a,(bc)		;4348	0a		.
	ld h,a			;4349	67		g
	inc bc			;434a	03		.
	ld a,(bc)		;434b	0a		.
	ld l,a			;434c	6f		o
	add hl,de		;434d	19		.
	ld b,h			;434e	44		D
	ld c,l			;434f	4d		M
	pop hl			;4350	e1		.
	ld (hl),b		;4351	70		p
	inc hl			;4352	23		#
	ld (hl),c		;4353	71		q
	ret			;4354	c9		.
sub_4355h:
	ld hl,00000h		;4355	21 00 00	! . .
	ld (0e578h),hl		;4358	22 78 e5	" x .
	di			;435b	f3		.
	ld de,0e674h		;435c	11 74 e6	. t .
	ld b,0ffh		;435f	06 ff		. .
l4361h:
	push bc			;4361	c5		.
	push de			;4362	d5		.
	ld a,b			;4363	78		x
	out (0fch),a		;4364	d3 fc		. .
	ld a,(0ed13h)		;4366	3a 13 ed	: . .
	ld hl,00fffh		;4369	21 ff 0f	! . .
	call 0000ch		;436c	cd 0c 00	. . .
	pop de			;436f	d1		.
	pop bc			;4370	c1		.
	ld (de),a		;4371	12		.
	ld a,b			;4372	78		x
	or a			;4373	b7		.
	jr z,l437ah		;4374	28 04		( .
	inc de			;4376	13		.
	dec b			;4377	05		.
	jr l4361h		;4378	18 e7		. .
l437ah:
	ld bc,0ff00h		;437a	01 00 ff	. . .
l437dh:
	push bc			;437d	c5		.
	ld a,c			;437e	79		y
	out (0fch),a		;437f	d3 fc		. .
	ld e,0ffh		;4381	1e ff		. .
	ld a,(0ed13h)		;4383	3a 13 ed	: . .
	ld hl,00fffh		;4386	21 ff 0f	! . .
	call 00014h		;4389	cd 14 00	. . .
	pop bc			;438c	c1		.
	ld a,b			;438d	78		x
	or a			;438e	b7		.
	jr z,l4395h		;438f	28 04		( .
	inc c			;4391	0c		.
	dec b			;4392	05		.
	jr l437dh		;4393	18 e8		. .
l4395h:
	ld bc,0ff00h		;4395	01 00 ff	. . .
l4398h:
	push bc			;4398	c5		.
	ld a,c			;4399	79		y
	out (0fch),a		;439a	d3 fc		. .
	ld a,(0ed13h)		;439c	3a 13 ed	: . .
	ld hl,00fffh		;439f	21 ff 0f	! . .
	call 0000ch		;43a2	cd 0c 00	. . .
	pop bc			;43a5	c1		.
	sub c			;43a6	91		.
	jr c,l43c4h		;43a7	38 1b		8 .
	ld hl,(0e578h)		;43a9	2a 78 e5	* x .
	inc hl			;43ac	23		#
	ld (0e578h),hl		;43ad	22 78 e5	" x .
	push bc			;43b0	c5		.
	ld e,c			;43b1	59		Y
	ld a,(0ed13h)		;43b2	3a 13 ed	: . .
	ld hl,00fffh		;43b5	21 ff 0f	! . .
	call 00014h		;43b8	cd 14 00	. . .
	pop bc			;43bb	c1		.
	ld a,b			;43bc	78		x
	or a			;43bd	b7		.
	jr z,l43c4h		;43be	28 04		( .
	inc c			;43c0	0c		.
	dec b			;43c1	05		.
	jr l4398h		;43c2	18 d4		. .
l43c4h:
	ld de,0e674h		;43c4	11 74 e6	. t .
	ld b,0ffh		;43c7	06 ff		. .
l43c9h:
	push bc			;43c9	c5		.
	push de			;43ca	d5		.
	ld a,b			;43cb	78		x
	out (0fch),a		;43cc	d3 fc		. .
	ld a,(de)		;43ce	1a		.
	ld e,a			;43cf	5f		_
	ld a,(0ed13h)		;43d0	3a 13 ed	: . .
	ld hl,00fffh		;43d3	21 ff 0f	! . .
	call 00014h		;43d6	cd 14 00	. . .
	pop de			;43d9	d1		.
	pop bc			;43da	c1		.
	ld a,b			;43db	78		x
	or a			;43dc	b7		.
	jr z,l43e3h		;43dd	28 04		( .
	inc de			;43df	13		.
	dec b			;43e0	05		.
	jr l43c9h		;43e1	18 e6		. .
l43e3h:
	ei			;43e3	fb		.
	ld hl,(0e578h)		;43e4	2a 78 e5	* x .
	ld de,00004h		;43e7	11 04 00	. . .
	sbc hl,de		;43ea	ed 52		. R
	ret c			;43ec	d8		.
	call sub_4457h		;43ed	cd 57 44	. W D
	set 7,(hl)		;43f0	cb fe		. .
	xor a			;43f2	af		.
	ld (0ed10h),a		;43f3	32 10 ed	2 . .
	call sub_447ah		;43f6	cd 7a 44	. z D
	ld b,008h		;43f9	06 08		. .
l43fbh:
	ld (hl),000h		;43fb	36 00		6 .
	inc hl			;43fd	23		#
	djnz l43fbh		;43fe	10 fb		. .
	ld hl,0e474h		;4400	21 74 e4	! t .
	ld (hl),064h		;4403	36 64		6 d
	inc hl			;4405	23		#
	ld (hl),000h		;4406	36 00		6 .
	inc hl			;4408	23		#
	ld (hl),000h		;4409	36 00		6 .
	ld de,0ec77h		;440b	11 77 ec	. w .
	ld hl,0e474h		;440e	21 74 e4	! t .
	call sub_5dabh		;4411	cd ab 5d	. . ]
	ld a,001h		;4414	3e 01		> .
	ld (0ed10h),a		;4416	32 10 ed	2 . .
	call sub_447ah		;4419	cd 7a 44	. z D
	ld de,(0e578h)		;441c	ed 5b 78 e5	. [ x .
	ld (hl),d		;4420	72		r
	inc hl			;4421	23		#
	ld (hl),e		;4422	73		s
	xor a			;4423	af		.
	ld (0ed10h),a		;4424	32 10 ed	2 . .
	call sub_447ah		;4427	cd 7a 44	. z D
	ld b,h			;442a	44		D
	ld c,l			;442b	4d		M
	ld hl,(0e578h)		;442c	2a 78 e5	* x .
l442fh:
	push hl			;442f	e5		.
	push bc			;4430	c5		.
	ld hl,0e474h		;4431	21 74 e4	! t .
	ld (hl),016h		;4434	36 16		6 .
	inc hl			;4436	23		#
	ld (hl),000h		;4437	36 00		6 .
	inc hl			;4439	23		#
	ld (hl),000h		;443a	36 00		6 .
	ld de,0ec77h		;443c	11 77 ec	. w .
	ld hl,0e474h		;443f	21 74 e4	! t .
	call sub_5d9fh		;4442	cd 9f 5d	. . ]
l4445h:
	pop bc			;4445	c1		.
	ld h,b			;4446	60		`
	ld l,c			;4447	69		i
	push bc			;4448	c5		.
	ld de,00010h		;4449	11 10 00	. . .
	call sub_433ah		;444c	cd 3a 43	. : C
	pop bc			;444f	c1		.
	pop hl			;4450	e1		.
	dec hl			;4451	2b		+
	ld a,h			;4452	7c		|
	or l			;4453	b5		.
	jr nz,l442fh		;4454	20 d9		  .
	ret			;4456	c9		.
sub_4457h:
	ld hl,0ec7eh		;4457	21 7e ec	! ~ .
	ld a,(0ed13h)		;445a	3a 13 ed	: . .
	and 003h		;445d	e6 03		. .
	ld b,a			;445f	47		G
	or a			;4460	b7		.
	jr z,l4469h		;4461	28 06		( .
	ld de,00004h		;4463	11 04 00	. . .
l4466h:
	add hl,de		;4466	19		.
	djnz l4466h		;4467	10 fd		. .
l4469h:
	ld a,(0ed13h)		;4469	3a 13 ed	: . .
	srl a			;446c	cb 3f		. ?
	srl a			;446e	cb 3f		. ?
	and 003h		;4470	e6 03		. .
	ld b,a			;4472	47		G
	or a			;4473	b7		.
	jr z,l4479h		;4474	28 03		( .
l4476h:
	inc hl			;4476	23		#
	djnz l4476h		;4477	10 fd		. .
l4479h:
	ret			;4479	c9		.
sub_447ah:
	ld a,(0ed13h)		;447a	3a 13 ed	: . .
	and 003h		;447d	e6 03		. .
	ld d,a			;447f	57		W
	ld a,(0ed13h)		;4480	3a 13 ed	: . .
	srl a			;4483	cb 3f		. ?
	srl a			;4485	cb 3f		. ?
	and 003h		;4487	e6 03		. .
	ld c,a			;4489	4f		O
	ld e,000h		;448a	1e 00		. .
	xor a			;448c	af		.
	or d			;448d	b2		.
	jr z,l4497h		;448e	28 07		( .
	ld b,d			;4490	42		B
	ld a,e			;4491	7b		{
l4492h:
	add a,020h		;4492	c6 20		.  
	djnz l4492h		;4494	10 fc		. .
	ld e,a			;4496	5f		_
l4497h:
	xor a			;4497	af		.
	or c			;4498	b1		.
	jr z,l44a2h		;4499	28 07		( .
	ld b,c			;449b	41		A
	ld a,e			;449c	7b		{
l449dh:
	add a,008h		;449d	c6 08		. .
	djnz l449dh		;449f	10 fc		. .
	ld e,a			;44a1	5f		_
l44a2h:
	ld a,(0ed10h)		;44a2	3a 10 ed	: . .
	or a			;44a5	b7		.
	jr z,l44afh		;44a6	28 07		( .
	ld b,a			;44a8	47		G
	ld a,e			;44a9	7b		{
l44aah:
	add a,002h		;44aa	c6 02		. .
	djnz l44aah		;44ac	10 fc		. .
	ld e,a			;44ae	5f		_
l44afh:
	ld d,000h		;44af	16 00		. .
	ld hl,0ec8eh		;44b1	21 8e ec	! . .
	add hl,de		;44b4	19		.
	ret			;44b5	c9		.
sub_44b6h:
	ld a,h			;44b6	7c		|
	ld b,006h		;44b7	06 06		. .
l44b9h:
	srl a			;44b9	cb 3f		. ?
	djnz l44b9h		;44bb	10 fc		. .
	ld (0ed10h),a		;44bd	32 10 ed	2 . .
	ret			;44c0	c9		.
sub_44c1h:
	xor a			;44c1	af		.
sub_44c2h:
	ld (0f3f6h),a		;44c2	32 f6 f3	2 . .
	ld (0fca2h),a		;44c5	32 a2 fc	2 . .
	ld a,(00006h)		;44c8	3a 06 00	: . .
	inc a			;44cb	3c		<
	ld c,a			;44cc	4f		O
	in a,(c)		;44cd	ed 78		. x
	di			;44cf	f3		.
l44d0h:
	in a,(c)		;44d0	ed 78		. x
	and a			;44d2	a7		.
	jp p,l44d0h		;44d3	f2 d0 44	. . D
	ld a,(00007h)		;44d6	3a 07 00	: . .
	inc a			;44d9	3c		<
	ld c,a			;44da	4f		O
	ld a,002h		;44db	3e 02		> .
	out (c),a		;44dd	ed 79		. y
	ld a,08fh		;44df	3e 8f		> .
	out (c),a		;44e1	ed 79		. y
	ld a,(00006h)		;44e3	3a 06 00	: . .
	inc a			;44e6	3c		<
	ld c,a			;44e7	4f		O
	in a,(c)		;44e8	ed 78		. x
	ei			;44ea	fb		.
	and 040h		;44eb	e6 40		. @
	jr nz,l44f6h		;44ed	20 07		  .
	xor a			;44ef	af		.
	ld (0ec75h),a		;44f0	32 75 ec	2 u .
	jp l452ah		;44f3	c3 2a 45	. * E
l44f6h:
	ld a,(00007h)		;44f6	3a 07 00	: . .
	inc a			;44f9	3c		<
	ld c,a			;44fa	4f		O
	ld a,001h		;44fb	3e 01		> .
	di			;44fd	f3		.
	out (c),a		;44fe	ed 79		. y
	ld a,08fh		;4500	3e 8f		> .
	out (c),a		;4502	ed 79		. y
	ld a,(00006h)		;4504	3a 06 00	: . .
	inc a			;4507	3c		<
	ld c,a			;4508	4f		O
	in a,(c)		;4509	ed 78		. x
	ei			;450b	fb		.
	and 03eh		;450c	e6 3e		. >
	or a			;450e	b7		.
	jr nz,l4519h		;450f	20 08		  .
	ld a,001h		;4511	3e 01		> .
	ld (0ec75h),a		;4513	32 75 ec	2 u .
	jp l452ah		;4516	c3 2a 45	. * E
l4519h:
	cp 004h			;4519	fe 04		. .
	jr nz,l4525h		;451b	20 08		  .
	ld a,002h		;451d	3e 02		> .
	ld (0ec75h),a		;451f	32 75 ec	2 u .
	jp l452ah		;4522	c3 2a 45	. * E
l4525h:
	ld a,0ffh		;4525	3e ff		> .
	ld (0ec75h),a		;4527	32 75 ec	2 u .
l452ah:
	ld a,(00007h)		;452a	3a 07 00	: . .
	inc a			;452d	3c		<
	ld c,a			;452e	4f		O
	xor a			;452f	af		.
	di			;4530	f3		.
	out (c),a		;4531	ed 79		. y
	ld a,08fh		;4533	3e 8f		> .
	out (c),a		;4535	ed 79		. y
	ei			;4537	fb		.
	halt			;4538	76		v
	ld hl,00000h		;4539	21 00 00	! . .
	xor a			;453c	af		.
	ld (0f3f6h),a		;453d	32 f6 f3	2 . .
	ld (0fca2h),a		;4540	32 a2 fc	2 . .
	ld a,(00006h)		;4543	3a 06 00	: . .
	inc a			;4546	3c		<
	ld c,a			;4547	4f		O
	in a,(c)		;4548	ed 78		. x
	di			;454a	f3		.
l454bh:
	inc hl			;454b	23		#
	in a,(c)		;454c	ed 78		. x
	and a			;454e	a7		.
	jp p,l454bh		;454f	f2 4b 45	. K E
	ei			;4552	fb		.
	ld d,h			;4553	54		T
	ld e,l			;4554	5d		]
	ld hl,006eeh		;4555	21 ee 06	! . .
	sbc hl,de		;4558	ed 52		. R
	jr c,l4562h		;455a	38 06		8 .
	xor a			;455c	af		.
	ld (0ec76h),a		;455d	32 76 ec	2 v .
	jr l4567h		;4560	18 05		. .
l4562h:
	ld a,001h		;4562	3e 01		> .
	ld (0ec76h),a		;4564	32 76 ec	2 v .
l4567h:
	ret			;4567	c9		.
sub_4568h:
	ld a,001h		;4568	3e 01		> .
	ld (0ec74h),a		;456a	32 74 ec	2 t .
	ld bc,00f01h		;456d	01 01 0f	. . .
	ld de,00500h		;4570	11 00 05	. . .
	call sub_5df3h		;4573	cd f3 5d	. . ]
	ld hl,l6277h		;4576	21 77 62	! w b
	call sub_5fefh		;4579	cd ef 5f	. . _
	ld b,0ffh		;457c	06 ff		. .
l457eh:
	push bc			;457e	c5		.
	call sub_5f33h		;457f	cd 33 5f	. 3 _
	pop bc			;4582	c1		.
	ld a,(0e3d8h)		;4583	3a d8 e3	: . .
	and 002h		;4586	e6 02		. .
	jr nz,l4590h		;4588	20 06		  .
	dec b			;458a	05		.
	jr z,l4590h		;458b	28 03		( .
	halt			;458d	76		v
	jr l457eh		;458e	18 ee		. .
l4590h:
	call 00041h		;4590	cd 41 00	. A .
	ret			;4593	c9		.
sub_4594h:
	ld a,(0ed1ch)		;4594	3a 1c ed	: . .
	ld (0ed1ah),a		;4597	32 1a ed	2 . .
	ld (0ed1bh),a		;459a	32 1b ed	2 . .
	ld a,(0ec74h)		;459d	3a 74 ec	: t .
	or a			;45a0	b7		.
	jr z,l45b5h		;45a1	28 12		( .
	ld bc,00f04h		;45a3	01 04 0f	. . .
	ld de,00128h		;45a6	11 28 01	. ( .
	call sub_5db7h		;45a9	cd b7 5d	. . ]
	call sub_412ch		;45ac	cd 2c 41	. , A
	xor a			;45af	af		.
	ld (0ec74h),a		;45b0	32 74 ec	2 t .
	jr l45beh		;45b3	18 09		. .
l45b5h:
	call sub_622ch		;45b5	cd 2c 62	. , b
	ld bc,00f04h		;45b8	01 04 0f	. . .
	call sub_6230h		;45bb	cd 30 62	. 0 b
l45beh:
	call 00041h		;45be	cd 41 00	. A .
	call sub_4848h		;45c1	cd 48 48	. H H
	ld hl,00104h		;45c4	21 04 01	! . .
	call sub_6229h		;45c7	cd 29 62	. ) b
	ld hl,l7f67h		;45ca	21 67 7f	! g .
	call sub_60f3h		;45cd	cd f3 60	. . `
	ld hl,l7ec8h		;45d0	21 c8 7e	! . ~
	call sub_60f3h		;45d3	cd f3 60	. . `
	ld hl,l7f78h		;45d6	21 78 7f	! x .
	call sub_60f3h		;45d9	cd f3 60	. . `
	call sub_485bh		;45dc	cd 5b 48	. [ H
	call sub_487ah		;45df	cd 7a 48	. z H
	call 00044h		;45e2	cd 44 00	. D .
l45e5h:
	call sub_40c8h		;45e5	cd c8 40	. . @
	ld a,(0e381h)		;45e8	3a 81 e3	: . .
	and 002h		;45eb	e6 02		. .
	jp nz,l468fh		;45ed	c2 8f 46	. . F
	ld a,(0e382h)		;45f0	3a 82 e3	: . .
	and 002h		;45f3	e6 02		. .
	jp nz,l469dh		;45f5	c2 9d 46	. . F
	ld a,(0e383h)		;45f8	3a 83 e3	: . .
	and 002h		;45fb	e6 02		. .
	jp nz,l46abh		;45fd	c2 ab 46	. . F
sub_4600h:
	ld a,(0e384h)		;4600	3a 84 e3	: . .
	and 002h		;4603	e6 02		. .
	jp nz,l46b9h		;4605	c2 b9 46	. . F
	ld a,(0e385h)		;4608	3a 85 e3	: . .
	and 002h		;460b	e6 02		. .
	jp nz,l46c7h		;460d	c2 c7 46	. . F
	ld a,(0e386h)		;4610	3a 86 e3	: . .
	and 002h		;4613	e6 02		. .
	jp nz,l46d5h		;4615	c2 d5 46	. . F
	ld a,(0e389h)		;4618	3a 89 e3	: . .
	and 002h		;461b	e6 02		. .
	ret nz			;461d	c0		.
	ld a,(0e380h)		;461e	3a 80 e3	: . .
l4621h:
	and 002h		;4621	e6 02		. .
	jp nz,l46e3h		;4623	c2 e3 46	. . F
	ld a,(0ed17h)		;4626	3a 17 ed	: . .
	and 002h		;4629	e6 02		. .
	jp nz,l46e3h		;462b	c2 e3 46	. . F
	ld a,(0ed14h)		;462e	3a 14 ed	: . .
	and 002h		;4631	e6 02		. .
	jr z,l4641h		;4633	28 0c		( .
	ld a,(0ed1ah)		;4635	3a 1a ed	: . .
	dec a			;4638	3d		=
	cp 000h			;4639	fe 00		. .
	jr nz,l4653h		;463b	20 16		  .
	ld a,001h		;463d	3e 01		> .
	jr l4653h		;463f	18 12		. .
l4641h:
	ld a,(0ed15h)		;4641	3a 15 ed	: . .
	and 002h		;4644	e6 02		. .
	jr z,l4659h		;4646	28 11		( .
	ld a,(0ed1ah)		;4648	3a 1a ed	: . .
	inc a			;464b	3c		<
	cp 009h			;464c	fe 09		. .
	jp nz,l4653h		;464e	c2 53 46	. S F
	ld a,008h		;4651	3e 08		> .
l4653h:
	ld (0ed1ah),a		;4653	32 1a ed	2 . .
	call sub_487ah		;4656	cd 7a 48	. z H
l4659h:
	ld a,(0ed18h)		;4659	3a 18 ed	: . .
	and 002h		;465c	e6 02		. .
	jp z,l468bh		;465e	ca 8b 46	. . F
	ld a,(0ed1ah)		;4661	3a 1a ed	: . .
	cp 001h			;4664	fe 01		. .
	jp z,l468fh		;4666	ca 8f 46	. . F
	cp 002h			;4669	fe 02		. .
	jp z,l469dh		;466b	ca 9d 46	. . F
	cp 003h			;466e	fe 03		. .
	jp z,l46abh		;4670	ca ab 46	. . F
	cp 004h			;4673	fe 04		. .
	jp z,l46b9h		;4675	ca b9 46	. . F
	cp 005h			;4678	fe 05		. .
	jp z,l46c7h		;467a	ca c7 46	. . F
	cp 006h			;467d	fe 06		. .
	jp z,l46d5h		;467f	ca d5 46	. . F
	cp 007h			;4682	fe 07		. .
	ret z			;4684	c8		.
	cp 008h			;4685	fe 08		. .
	jp z,l46e3h		;4687	ca e3 46	. . F
	ret			;468a	c9		.
l468bh:
	halt			;468b	76		v
	jp l45e5h		;468c	c3 e5 45	. . E
l468fh:
	call sub_48a3h		;468f	cd a3 48	. . H
	call 00041h		;4692	cd 41 00	. A .
	ld a,001h		;4695	3e 01		> .
	ld (0ed1ch),a		;4697	32 1c ed	2 . .
	jp sub_4594h		;469a	c3 94 45	. . E
l469dh:
	call sub_49aah		;469d	cd aa 49	. . I
	call 00041h		;46a0	cd 41 00	. A .
	ld a,002h		;46a3	3e 02		> .
	ld (0ed1ch),a		;46a5	32 1c ed	2 . .
	jp sub_4594h		;46a8	c3 94 45	. . E
l46abh:
	call sub_4acbh		;46ab	cd cb 4a	. . J
	call 00041h		;46ae	cd 41 00	. A .
	ld a,003h		;46b1	3e 03		> .
	ld (0ed1ch),a		;46b3	32 1c ed	2 . .
	jp sub_4594h		;46b6	c3 94 45	. . E
l46b9h:
	call sub_4bc1h		;46b9	cd c1 4b	. . K
	call 00041h		;46bc	cd 41 00	. A .
	ld a,004h		;46bf	3e 04		> .
	ld (0ed1ch),a		;46c1	32 1c ed	2 . .
	jp sub_4594h		;46c4	c3 94 45	. . E
l46c7h:
	call sub_4cb0h		;46c7	cd b0 4c	. . L
	call 00041h		;46ca	cd 41 00	. A .
	ld a,005h		;46cd	3e 05		> .
	ld (0ed1ch),a		;46cf	32 1c ed	2 . .
	jp sub_4594h		;46d2	c3 94 45	. . E
l46d5h:
	call sub_5a42h		;46d5	cd 42 5a	. B Z
	call 00041h		;46d8	cd 41 00	. A .
	ld a,006h		;46db	3e 06		> .
	ld (0ed1ch),a		;46dd	32 1c ed	2 . .
	jp sub_4594h		;46e0	c3 94 45	. . E
l46e3h:
	call 00041h		;46e3	cd 41 00	. A .
	ld a,001h		;46e6	3e 01		> .
	ld (0ed1ch),a		;46e8	32 1c ed	2 . .
	jp l46eeh		;46eb	c3 ee 46	. . F
l46eeh:
	ld a,(0ed1ch)		;46ee	3a 1c ed	: . .
	ld (0ed1ah),a		;46f1	32 1a ed	2 . .
	ld (0ed1bh),a		;46f4	32 1b ed	2 . .
	ld a,(0ec74h)		;46f7	3a 74 ec	: t .
	or a			;46fa	b7		.
	jr z,l470fh		;46fb	28 12		( .
	ld bc,00f04h		;46fd	01 04 0f	. . .
	ld de,00128h		;4700	11 28 01	. ( .
	call sub_5db7h		;4703	cd b7 5d	. . ]
	call sub_412ch		;4706	cd 2c 41	. , A
	xor a			;4709	af		.
	ld (0ec74h),a		;470a	32 74 ec	2 t .
	jr l4718h		;470d	18 09		. .
l470fh:
	call sub_622ch		;470f	cd 2c 62	. , b
	ld bc,00f04h		;4712	01 04 0f	. . .
	call sub_6230h		;4715	cd 30 62	. 0 b
l4718h:
	call 00041h		;4718	cd 41 00	. A .
	call sub_4848h		;471b	cd 48 48	. H H
	ld hl,00104h		;471e	21 04 01	! . .
	call sub_6229h		;4721	cd 29 62	. ) b
	ld hl,l7ffch		;4724	21 fc 7f	! . .
	call sub_60f3h		;4727	cd f3 60	. . `
	ld hl,l7ec8h		;472a	21 c8 7e	! . ~
	call sub_60f3h		;472d	cd f3 60	. . `
	ld hl,l800dh		;4730	21 0d 80	! . .
	call sub_60f3h		;4733	cd f3 60	. . `
	call sub_485bh		;4736	cd 5b 48	. [ H
	call sub_487ah		;4739	cd 7a 48	. z H
	call 00044h		;473c	cd 44 00	. D .
l473fh:
	call sub_40c8h		;473f	cd c8 40	. . @
	ld a,(0e381h)		;4742	3a 81 e3	: . .
	and 002h		;4745	e6 02		. .
	jp nz,l47e9h		;4747	c2 e9 47	. . G
	ld a,(0e382h)		;474a	3a 82 e3	: . .
	and 002h		;474d	e6 02		. .
	jp nz,l47f7h		;474f	c2 f7 47	. . G
	ld a,(0e383h)		;4752	3a 83 e3	: . .
	and 002h		;4755	e6 02		. .
	jp nz,l4805h		;4757	c2 05 48	. . H
	ld a,(0e384h)		;475a	3a 84 e3	: . .
	and 002h		;475d	e6 02		. .
	jp nz,l4813h		;475f	c2 13 48	. . H
	ld a,(0e385h)		;4762	3a 85 e3	: . .
	and 002h		;4765	e6 02		. .
	jp nz,l4821h		;4767	c2 21 48	. ! H
	ld a,(0e386h)		;476a	3a 86 e3	: . .
	and 002h		;476d	e6 02		. .
	jp nz,l482fh		;476f	c2 2f 48	. / H
	ld a,(0e389h)		;4772	3a 89 e3	: . .
	and 002h		;4775	e6 02		. .
	ret nz			;4777	c0		.
	ld a,(0e380h)		;4778	3a 80 e3	: . .
	and 002h		;477b	e6 02		. .
	jp nz,l483dh		;477d	c2 3d 48	. = H
	ld a,(0ed16h)		;4780	3a 16 ed	: . .
	and 002h		;4783	e6 02		. .
	jp nz,l483dh		;4785	c2 3d 48	. = H
	ld a,(0ed14h)		;4788	3a 14 ed	: . .
	and 002h		;478b	e6 02		. .
	jr z,l479bh		;478d	28 0c		( .
	ld a,(0ed1ah)		;478f	3a 1a ed	: . .
	dec a			;4792	3d		=
	cp 000h			;4793	fe 00		. .
	jr nz,l47adh		;4795	20 16		  .
	ld a,001h		;4797	3e 01		> .
	jr l47adh		;4799	18 12		. .
l479bh:
	ld a,(0ed15h)		;479b	3a 15 ed	: . .
	and 002h		;479e	e6 02		. .
	jr z,l47b3h		;47a0	28 11		( .
	ld a,(0ed1ah)		;47a2	3a 1a ed	: . .
	inc a			;47a5	3c		<
	cp 009h			;47a6	fe 09		. .
	jp nz,l47adh		;47a8	c2 ad 47	. . G
	ld a,008h		;47ab	3e 08		> .
l47adh:
	ld (0ed1ah),a		;47ad	32 1a ed	2 . .
	call sub_487ah		;47b0	cd 7a 48	. z H
l47b3h:
	ld a,(0ed18h)		;47b3	3a 18 ed	: . .
	and 002h		;47b6	e6 02		. .
	jp z,l47e5h		;47b8	ca e5 47	. . G
	ld a,(0ed1ah)		;47bb	3a 1a ed	: . .
	cp 001h			;47be	fe 01		. .
	jp z,l47e9h		;47c0	ca e9 47	. . G
	cp 002h			;47c3	fe 02		. .
	jp z,l47f7h		;47c5	ca f7 47	. . G
	cp 003h			;47c8	fe 03		. .
	jp z,l4805h		;47ca	ca 05 48	. . H
	cp 004h			;47cd	fe 04		. .
	jp z,l4813h		;47cf	ca 13 48	. . H
	cp 005h			;47d2	fe 05		. .
	jp z,l4821h		;47d4	ca 21 48	. ! H
	cp 006h			;47d7	fe 06		. .
	jp z,l482fh		;47d9	ca 2f 48	. / H
	cp 007h			;47dc	fe 07		. .
	ret z			;47de	c8		.
	cp 008h			;47df	fe 08		. .
	jp z,l483dh		;47e1	ca 3d 48	. = H
	ret			;47e4	c9		.
l47e5h:
	halt			;47e5	76		v
	jp l473fh		;47e6	c3 3f 47	. ? G
l47e9h:
	call sub_4de9h		;47e9	cd e9 4d	. . M
	call 00041h		;47ec	cd 41 00	. A .
	ld a,001h		;47ef	3e 01		> .
	ld (0ed1ch),a		;47f1	32 1c ed	2 . .
	jp l46eeh		;47f4	c3 ee 46	. . F
l47f7h:
	call sub_4f01h		;47f7	cd 01 4f	. . O
	call 00041h		;47fa	cd 41 00	. A .
	ld a,002h		;47fd	3e 02		> .
	ld (0ed1ch),a		;47ff	32 1c ed	2 . .
	jp l46eeh		;4802	c3 ee 46	. . F
l4805h:
	call sub_50e2h		;4805	cd e2 50	. . P
	call 00041h		;4808	cd 41 00	. A .
	ld a,003h		;480b	3e 03		> .
	ld (0ed1ch),a		;480d	32 1c ed	2 . .
	jp l46eeh		;4810	c3 ee 46	. . F
l4813h:
	call sub_5bfdh		;4813	cd fd 5b	. . [
	call 00041h		;4816	cd 41 00	. A .
	ld a,004h		;4819	3e 04		> .
	ld (0ed1ch),a		;481b	32 1c ed	2 . .
	jp l46eeh		;481e	c3 ee 46	. . F
l4821h:
	call sub_54e6h		;4821	cd e6 54	. . T
	call 00041h		;4824	cd 41 00	. A .
	ld a,005h		;4827	3e 05		> .
	ld (0ed1ch),a		;4829	32 1c ed	2 . .
	jp l46eeh		;482c	c3 ee 46	. . F
l482fh:
	call sub_5897h		;482f	cd 97 58	. . X
	call 00041h		;4832	cd 41 00	. A .
	ld a,006h		;4835	3e 06		> .
	ld (0ed1ch),a		;4837	32 1c ed	2 . .
	jp l46eeh		;483a	c3 ee 46	. . F
l483dh:
	call 00041h		;483d	cd 41 00	. A .
	ld a,001h		;4840	3e 01		> .
	ld (0ed1ch),a		;4842	32 1c ed	2 . .
	jp sub_4594h		;4845	c3 94 45	. . E
sub_4848h:
	ld hl,l7ec8h		;4848	21 c8 7e	! . ~
	call sub_60f3h		;484b	cd f3 60	. . `
	ld hl,l7ef2h		;484e	21 f2 7e	! . ~
	call sub_60f3h		;4851	cd f3 60	. . `
	ld hl,l7ec8h		;4854	21 c8 7e	! . ~
	call sub_60f3h		;4857	cd f3 60	. . `
	ret			;485a	c9		.
sub_485bh:
	ld hl,l8090h		;485b	21 90 80	! . .
	call sub_60f3h		;485e	cd f3 60	. . `
	ld hl,00114h		;4861	21 14 01	! . .
	call sub_6229h		;4864	cd 29 62	. ) b
	ld hl,l7ec8h		;4867	21 c8 7e	! . ~
	call sub_60f3h		;486a	cd f3 60	. . `
	ld hl,l80c7h		;486d	21 c7 80	! . .
	call sub_60f3h		;4870	cd f3 60	. . `
	ld hl,l7ec8h		;4873	21 c8 7e	! . ~
	call sub_60f3h		;4876	cd f3 60	. . `
	ret			;4879	c9		.
sub_487ah:
	ld h,002h		;487a	26 02		& .
	ld a,(0ed1bh)		;487c	3a 1b ed	: . .
	add a,007h		;487f	c6 07		. .
	ld l,a			;4881	6f		o
	call sub_6229h		;4882	cd 29 62	. ) b
	ld hl,l8108h		;4885	21 08 81	! . .
	call sub_60f3h		;4888	cd f3 60	. . `
	ld h,002h		;488b	26 02		& .
	ld a,(0ed1ah)		;488d	3a 1a ed	: . .
	add a,007h		;4890	c6 07		. .
	ld l,a			;4892	6f		o
	call sub_6229h		;4893	cd 29 62	. ) b
	ld hl,l8106h		;4896	21 06 81	! . .
	call sub_60f3h		;4899	cd f3 60	. . `
	ld a,(0ed1ah)		;489c	3a 1a ed	: . .
	ld (0ed1bh),a		;489f	32 1b ed	2 . .
	ret			;48a2	c9		.
sub_48a3h:
	call sub_622ch		;48a3	cd 2c 62	. , b
	call 00041h		;48a6	cd 41 00	. A .
	call sub_4848h		;48a9	cd 48 48	. H H
	ld hl,00104h		;48ac	21 04 01	! . .
	call sub_6229h		;48af	cd 29 62	. ) b
	ld hl,l810ah		;48b2	21 0a 81	! . .
	call sub_60f3h		;48b5	cd f3 60	. . `
	ld hl,l7ec8h		;48b8	21 c8 7e	! . ~
	call sub_60f3h		;48bb	cd f3 60	. . `
	ld hl,l811dh		;48be	21 1d 81	! . .
	call sub_60f3h		;48c1	cd f3 60	. . `
	ld hl,l7f0ch		;48c4	21 0c 7f	! . .
	call sub_60f3h		;48c7	cd f3 60	. . `
	ld hl,l7f3eh		;48ca	21 3e 7f	! > .
	call sub_60f3h		;48cd	cd f3 60	. . `
	call 00044h		;48d0	cd 44 00	. D .
l48d3h:
	call sub_40c8h		;48d3	cd c8 40	. . @
	ld a,(0ed18h)		;48d6	3a 18 ed	: . .
	and 002h		;48d9	e6 02		. .
	jp nz,l48e7h		;48db	c2 e7 48	. . H
	ld a,(0ed19h)		;48de	3a 19 ed	: . .
	and 002h		;48e1	e6 02		. .
	ret nz			;48e3	c0		.
	halt			;48e4	76		v
	jr l48d3h		;48e5	18 ec		. .
l48e7h:
	ld a,001h		;48e7	3e 01		> .
	ld (0ec74h),a		;48e9	32 74 ec	2 t .
	ld bc,00f04h		;48ec	01 04 0f	. . .
	ld de,00128h		;48ef	11 28 01	. ( .
	call sub_5db7h		;48f2	cd b7 5d	. . ]
	call 00041h		;48f5	cd 41 00	. A .
	ld a,020h		;48f8	3e 20		>  
	ld bc,00000h		;48fa	01 00 00	. . .
l48fdh:
	call 000a2h		;48fd	cd a2 00	. . .
	inc a			;4900	3c		<
	cp 07fh			;4901	fe 7f		. .
	jr nz,l4906h		;4903	20 01		  .
	inc a			;4905	3c		<
l4906h:
	cp 0ffh			;4906	fe ff		. .
	jr nz,l490ch		;4908	20 02		  .
	ld a,020h		;490a	3e 20		>  
l490ch:
	ld d,a			;490c	57		W
	inc c			;490d	0c		.
	ld a,c			;490e	79		y
	cp 028h			;490f	fe 28		. (
	jr nz,l491bh		;4911	20 08		  .
	ld c,000h		;4913	0e 00		. .
	inc b			;4915	04		.
	ld a,b			;4916	78		x
	cp 017h			;4917	fe 17		. .
	jr z,l491eh		;4919	28 03		( .
l491bh:
	ld a,d			;491b	7a		z
	jr l48fdh		;491c	18 df		. .
l491eh:
	call 00044h		;491e	cd 44 00	. D .
	ld bc,00f04h		;4921	01 04 0f	. . .
l4924h:
	push bc			;4924	c5		.
	call sub_40c8h		;4925	cd c8 40	. . @
	pop bc			;4928	c1		.
	ld a,(0ed14h)		;4929	3a 14 ed	: . .
	and 002h		;492c	e6 02		. .
	jp nz,l495bh		;492e	c2 5b 49	. [ I
	ld a,(0ed15h)		;4931	3a 15 ed	: . .
	and 002h		;4934	e6 02		. .
	jp nz,l496ch		;4936	c2 6c 49	. l I
	ld a,(0ed17h)		;4939	3a 17 ed	: . .
	and 002h		;493c	e6 02		. .
	jp nz,l497dh		;493e	c2 7d 49	. } I
	ld a,(0ed16h)		;4941	3a 16 ed	: . .
	and 002h		;4944	e6 02		. .
	jp nz,l498eh		;4946	c2 8e 49	. . I
	ld a,(0ed18h)		;4949	3a 18 ed	: . .
	and 002h		;494c	e6 02		. .
	jp nz,l499fh		;494e	c2 9f 49	. . I
l4951h:
	ld a,(0ed19h)		;4951	3a 19 ed	: . .
	and 002h		;4954	e6 02		. .
	ret nz			;4956	c0		.
	halt			;4957	76		v
	jp l4924h		;4958	c3 24 49	. $ I
l495bh:
	ld a,c			;495b	79		y
	inc a			;495c	3c		<
	cp 010h			;495d	fe 10		. .
	jr nz,l4963h		;495f	20 02		  .
	ld a,001h		;4961	3e 01		> .
l4963h:
	ld c,a			;4963	4f		O
	push bc			;4964	c5		.
	call sub_6230h		;4965	cd 30 62	. 0 b
	pop bc			;4968	c1		.
	jp l4951h		;4969	c3 51 49	. Q I
l496ch:
	ld a,c			;496c	79		y
	dec a			;496d	3d		=
	cp 000h			;496e	fe 00		. .
	jr nz,l4974h		;4970	20 02		  .
	ld a,00fh		;4972	3e 0f		> .
l4974h:
	ld c,a			;4974	4f		O
	push bc			;4975	c5		.
	call sub_6230h		;4976	cd 30 62	. 0 b
	pop bc			;4979	c1		.
	jp l4951h		;497a	c3 51 49	. Q I
l497dh:
	ld a,b			;497d	78		x
	inc a			;497e	3c		<
	cp 010h			;497f	fe 10		. .
	jr nz,l4985h		;4981	20 02		  .
	ld a,001h		;4983	3e 01		> .
l4985h:
	ld b,a			;4985	47		G
	push bc			;4986	c5		.
	call sub_6230h		;4987	cd 30 62	. 0 b
	pop bc			;498a	c1		.
	jp l4951h		;498b	c3 51 49	. Q I
l498eh:
	ld a,b			;498e	78		x
	dec a			;498f	3d		=
	cp 000h			;4990	fe 00		. .
	jr nz,l4996h		;4992	20 02		  .
	ld a,00fh		;4994	3e 0f		> .
l4996h:
	ld b,a			;4996	47		G
	push bc			;4997	c5		.
	call sub_6230h		;4998	cd 30 62	. 0 b
	pop bc			;499b	c1		.
	jp l4951h		;499c	c3 51 49	. Q I
l499fh:
	ld bc,00f04h		;499f	01 04 0f	. . .
	push bc			;49a2	c5		.
	call sub_6230h		;49a3	cd 30 62	. 0 b
	pop bc			;49a6	c1		.
	jp l4951h		;49a7	c3 51 49	. Q I
sub_49aah:
	call sub_622ch		;49aa	cd 2c 62	. , b
	call 00041h		;49ad	cd 41 00	. A .
	call sub_4848h		;49b0	cd 48 48	. H H
	ld hl,00104h		;49b3	21 04 01	! . .
	call sub_6229h		;49b6	cd 29 62	. ) b
	ld hl,l81b3h		;49b9	21 b3 81	! . .
	call sub_60f3h		;49bc	cd f3 60	. . `
	ld hl,l7ec8h		;49bf	21 c8 7e	! . ~
	call sub_60f3h		;49c2	cd f3 60	. . `
	ld hl,l81c6h		;49c5	21 c6 81	! . .
	call sub_60f3h		;49c8	cd f3 60	. . `
	ld hl,l7f0ch		;49cb	21 0c 7f	! . .
	call sub_60f3h		;49ce	cd f3 60	. . `
	ld hl,l7f3eh		;49d1	21 3e 7f	! > .
	call sub_60f3h		;49d4	cd f3 60	. . `
	call 00044h		;49d7	cd 44 00	. D .
l49dah:
	call sub_40c8h		;49da	cd c8 40	. . @
	ld a,(0ed18h)		;49dd	3a 18 ed	: . .
	and 002h		;49e0	e6 02		. .
	jp nz,l49eeh		;49e2	c2 ee 49	. . I
	ld a,(0ed19h)		;49e5	3a 19 ed	: . .
	and 002h		;49e8	e6 02		. .
	ret nz			;49ea	c0		.
	halt			;49eb	76		v
	jr l49dah		;49ec	18 ec		. .
l49eeh:
	ld a,001h		;49ee	3e 01		> .
	ld (0ec74h),a		;49f0	32 74 ec	2 t .
	ld bc,00f04h		;49f3	01 04 0f	. . .
	ld de,00120h		;49f6	11 20 01	.   .
	call sub_5dd5h		;49f9	cd d5 5d	. . ]
	call 00041h		;49fc	cd 41 00	. A .
	ld a,020h		;49ff	3e 20		>  
	ld bc,00000h		;4a01	01 00 00	. . .
l4a04h:
	call 000a2h		;4a04	cd a2 00	. . .
	inc a			;4a07	3c		<
	cp 07fh			;4a08	fe 7f		. .
	jr nz,l4a0dh		;4a0a	20 01		  .
	inc a			;4a0c	3c		<
l4a0dh:
	cp 0ffh			;4a0d	fe ff		. .
	jr nz,l4a13h		;4a0f	20 02		  .
	ld a,020h		;4a11	3e 20		>  
l4a13h:
	ld d,a			;4a13	57		W
	inc c			;4a14	0c		.
	ld a,c			;4a15	79		y
	cp 020h			;4a16	fe 20		.  
	jr nz,l4a22h		;4a18	20 08		  .
	ld c,000h		;4a1a	0e 00		. .
	inc b			;4a1c	04		.
	ld a,b			;4a1d	78		x
	cp 017h			;4a1e	fe 17		. .
	jr z,l4a25h		;4a20	28 03		( .
l4a22h:
	ld a,d			;4a22	7a		z
	jr l4a04h		;4a23	18 df		. .
l4a25h:
	call 00044h		;4a25	cd 44 00	. D .
	ld bc,00f04h		;4a28	01 04 0f	. . .
	ld de,00100h		;4a2b	11 00 01	. . .
l4a2eh:
	push bc			;4a2e	c5		.
	push de			;4a2f	d5		.
	call sub_40c8h		;4a30	cd c8 40	. . @
	pop de			;4a33	d1		.
	pop bc			;4a34	c1		.
	ld a,(0ed14h)		;4a35	3a 14 ed	: . .
	and 002h		;4a38	e6 02		. .
	jp nz,l4a67h		;4a3a	c2 67 4a	. g J
	ld a,(0ed15h)		;4a3d	3a 15 ed	: . .
	and 002h		;4a40	e6 02		. .
	jp nz,l4a7ah		;4a42	c2 7a 4a	. z J
	ld a,(0ed17h)		;4a45	3a 17 ed	: . .
	and 002h		;4a48	e6 02		. .
	jp nz,l4a8dh		;4a4a	c2 8d 4a	. . J
	ld a,(0ed16h)		;4a4d	3a 16 ed	: . .
	and 002h		;4a50	e6 02		. .
	jp nz,l4aa0h		;4a52	c2 a0 4a	. . J
	ld a,(0ed18h)		;4a55	3a 18 ed	: . .
	and 002h		;4a58	e6 02		. .
	jp nz,l4ab3h		;4a5a	c2 b3 4a	. . J
l4a5dh:
	ld a,(0ed19h)		;4a5d	3a 19 ed	: . .
	and 002h		;4a60	e6 02		. .
	ret nz			;4a62	c0		.
	halt			;4a63	76		v
	jp l4a2eh		;4a64	c3 2e 4a	. . J
l4a67h:
	ld a,c			;4a67	79		y
	inc a			;4a68	3c		<
	cp 010h			;4a69	fe 10		. .
	jr nz,l4a6fh		;4a6b	20 02		  .
	ld a,001h		;4a6d	3e 01		> .
l4a6fh:
	ld c,a			;4a6f	4f		O
	push bc			;4a70	c5		.
	push de			;4a71	d5		.
	call sub_6230h		;4a72	cd 30 62	. 0 b
	pop de			;4a75	d1		.
	pop bc			;4a76	c1		.
	jp l4a5dh		;4a77	c3 5d 4a	. ] J
l4a7ah:
	ld a,c			;4a7a	79		y
	dec a			;4a7b	3d		=
	cp 000h			;4a7c	fe 00		. .
	jr nz,l4a82h		;4a7e	20 02		  .
	ld a,00fh		;4a80	3e 0f		> .
l4a82h:
	ld c,a			;4a82	4f		O
	push bc			;4a83	c5		.
	push de			;4a84	d5		.
	call sub_6230h		;4a85	cd 30 62	. 0 b
	pop de			;4a88	d1		.
	pop bc			;4a89	c1		.
	jp l4a5dh		;4a8a	c3 5d 4a	. ] J
l4a8dh:
	ld a,b			;4a8d	78		x
	inc a			;4a8e	3c		<
	cp 010h			;4a8f	fe 10		. .
	jr nz,l4a95h		;4a91	20 02		  .
	ld a,001h		;4a93	3e 01		> .
l4a95h:
	ld b,a			;4a95	47		G
	push bc			;4a96	c5		.
	push de			;4a97	d5		.
	call sub_6230h		;4a98	cd 30 62	. 0 b
	pop de			;4a9b	d1		.
	pop bc			;4a9c	c1		.
	jp l4a5dh		;4a9d	c3 5d 4a	. ] J
l4aa0h:
	ld a,b			;4aa0	78		x
	dec a			;4aa1	3d		=
	cp 000h			;4aa2	fe 00		. .
	jr nz,l4aa8h		;4aa4	20 02		  .
	ld a,00fh		;4aa6	3e 0f		> .
l4aa8h:
	ld b,a			;4aa8	47		G
	push bc			;4aa9	c5		.
	push de			;4aaa	d5		.
	call sub_6230h		;4aab	cd 30 62	. 0 b
	pop de			;4aae	d1		.
	pop bc			;4aaf	c1		.
	jp l4a5dh		;4ab0	c3 5d 4a	. ] J
l4ab3h:
	inc d			;4ab3	14		.
	ld a,d			;4ab4	7a		z
	cp 010h			;4ab5	fe 10		. .
	jr nz,l4abbh		;4ab7	20 02		  .
	ld d,001h		;4ab9	16 01		. .
l4abbh:
	ld hl,0f3e9h		;4abb	21 e9 f3	! . .
	inc l			;4abe	2c		,
	inc l			;4abf	2c		,
	ld (hl),d		;4ac0	72		r
	push bc			;4ac1	c5		.
	push de			;4ac2	d5		.
	call 00062h		;4ac3	cd 62 00	. b .
	pop de			;4ac6	d1		.
	pop bc			;4ac7	c1		.
	jp l4a5dh		;4ac8	c3 5d 4a	. ] J
sub_4acbh:
	call sub_622ch		;4acb	cd 2c 62	. , b
	call 00041h		;4ace	cd 41 00	. A .
	call sub_4848h		;4ad1	cd 48 48	. H H
	ld hl,00104h		;4ad4	21 04 01	! . .
	call sub_6229h		;4ad7	cd 29 62	. ) b
	ld hl,l8267h		;4ada	21 67 82	! g .
	call sub_60f3h		;4add	cd f3 60	. . `
	ld hl,l7ec8h		;4ae0	21 c8 7e	! . ~
	call sub_60f3h		;4ae3	cd f3 60	. . `
	ld hl,l827ah		;4ae6	21 7a 82	! z .
	call sub_60f3h		;4ae9	cd f3 60	. . `
	ld hl,l7f0ch		;4aec	21 0c 7f	! . .
	call sub_60f3h		;4aef	cd f3 60	. . `
	ld hl,l7f3eh		;4af2	21 3e 7f	! > .
	call sub_60f3h		;4af5	cd f3 60	. . `
	call 00044h		;4af8	cd 44 00	. D .
l4afbh:
	call sub_40c8h		;4afb	cd c8 40	. . @
	ld a,(0ed18h)		;4afe	3a 18 ed	: . .
	and 002h		;4b01	e6 02		. .
	jp nz,l4b0fh		;4b03	c2 0f 4b	. . K
	ld a,(0ed19h)		;4b06	3a 19 ed	: . .
	and 002h		;4b09	e6 02		. .
	ret nz			;4b0b	c0		.
	halt			;4b0c	76		v
	jr l4afbh		;4b0d	18 ec		. .
l4b0fh:
	ld a,001h		;4b0f	3e 01		> .
	ld (0ec74h),a		;4b11	32 74 ec	2 t .
	ld bc,00f01h		;4b14	01 01 0f	. . .
	ld de,00100h		;4b17	11 00 01	. . .
	call sub_5df3h		;4b1a	cd f3 5d	. . ]
	ld bc,00101h		;4b1d	01 01 01	. . .
	push bc			;4b20	c5		.
	call sub_4b99h		;4b21	cd 99 4b	. . K
	pop bc			;4b24	c1		.
l4b25h:
	push bc			;4b25	c5		.
	call sub_40c8h		;4b26	cd c8 40	. . @
	pop bc			;4b29	c1		.
	ld a,(0ed17h)		;4b2a	3a 17 ed	: . .
	and 002h		;4b2d	e6 02		. .
	jr z,l4b41h		;4b2f	28 10		( .
	inc b			;4b31	04		.
	ld a,b			;4b32	78		x
	cp 005h			;4b33	fe 05		. .
	jr nz,l4b39h		;4b35	20 02		  .
	ld b,001h		;4b37	06 01		. .
l4b39h:
	push bc			;4b39	c5		.
	call sub_4b99h		;4b3a	cd 99 4b	. . K
	pop bc			;4b3d	c1		.
	jp l4b8fh		;4b3e	c3 8f 4b	. . K
l4b41h:
	ld a,(0ed16h)		;4b41	3a 16 ed	: . .
	and 002h		;4b44	e6 02		. .
	jr z,l4b58h		;4b46	28 10		( .
	dec b			;4b48	05		.
	ld a,b			;4b49	78		x
	cp 000h			;4b4a	fe 00		. .
	jr nz,l4b50h		;4b4c	20 02		  .
	ld b,004h		;4b4e	06 04		. .
l4b50h:
	push bc			;4b50	c5		.
	call sub_4b99h		;4b51	cd 99 4b	. . K
	pop bc			;4b54	c1		.
	jp l4b8fh		;4b55	c3 8f 4b	. . K
l4b58h:
	ld a,(0ed14h)		;4b58	3a 14 ed	: . .
	and 002h		;4b5b	e6 02		. .
	jr z,l4b75h		;4b5d	28 16		( .
	inc c			;4b5f	0c		.
	ld a,c			;4b60	79		y
	cp 010h			;4b61	fe 10		. .
	jr nz,l4b67h		;4b63	20 02		  .
	ld c,001h		;4b65	0e 01		. .
l4b67h:
	push bc			;4b67	c5		.
	ld hl,0f3e9h		;4b68	21 e9 f3	! . .
	inc l			;4b6b	2c		,
	inc l			;4b6c	2c		,
	ld (hl),c		;4b6d	71		q
	call 00062h		;4b6e	cd 62 00	. b .
	pop bc			;4b71	c1		.
	jp l4b8fh		;4b72	c3 8f 4b	. . K
l4b75h:
	ld a,(0ed15h)		;4b75	3a 15 ed	: . .
	and 002h		;4b78	e6 02		. .
	jr z,l4b8fh		;4b7a	28 13		( .
	dec c			;4b7c	0d		.
	ld a,c			;4b7d	79		y
	cp 000h			;4b7e	fe 00		. .
	jr nz,l4b84h		;4b80	20 02		  .
	ld c,00fh		;4b82	0e 0f		. .
l4b84h:
	push bc			;4b84	c5		.
	ld hl,0f3e9h		;4b85	21 e9 f3	! . .
	inc l			;4b88	2c		,
	inc l			;4b89	2c		,
	ld (hl),c		;4b8a	71		q
	call 00062h		;4b8b	cd 62 00	. b .
	pop bc			;4b8e	c1		.
l4b8fh:
	ld a,(0ed19h)		;4b8f	3a 19 ed	: . .
	and 002h		;4b92	e6 02		. .
	ret nz			;4b94	c0		.
	halt			;4b95	76		v
	jp l4b25h		;4b96	c3 25 4b	. % K
sub_4b99h:
	push bc			;4b99	c5		.
	ld a,b			;4b9a	78		x
	cp 001h			;4b9b	fe 01		. .
	jr nz,l4ba5h		;4b9d	20 06		  .
	ld hl,l6b5ch		;4b9f	21 5c 6b	! \ k
	jp l4bbch		;4ba2	c3 bc 4b	. . K
l4ba5h:
	cp 002h			;4ba5	fe 02		. .
	jr nz,l4bafh		;4ba7	20 06		  .
	ld hl,l6f16h		;4ba9	21 16 6f	! . o
	jp l4bbch		;4bac	c3 bc 4b	. . K
l4bafh:
	cp 003h			;4baf	fe 03		. .
	jr nz,l4bb9h		;4bb1	20 06		  .
	ld hl,l72beh		;4bb3	21 be 72	! . r
	jp l4bbch		;4bb6	c3 bc 4b	. . K
l4bb9h:
	ld hl,l7764h		;4bb9	21 64 77	! d w
l4bbch:
	call sub_5fefh		;4bbc	cd ef 5f	. . _
	pop bc			;4bbf	c1		.
	ret			;4bc0	c9		.
sub_4bc1h:
	call sub_622ch		;4bc1	cd 2c 62	. , b
	call 00041h		;4bc4	cd 41 00	. A .
	call sub_4848h		;4bc7	cd 48 48	. H H
	ld hl,00104h		;4bca	21 04 01	! . .
	call sub_6229h		;4bcd	cd 29 62	. ) b
	ld hl,l82dfh		;4bd0	21 df 82	! . .
	call sub_60f3h		;4bd3	cd f3 60	. . `
	ld hl,l7ec8h		;4bd6	21 c8 7e	! . ~
	call sub_60f3h		;4bd9	cd f3 60	. . `
	ld hl,l82f2h		;4bdc	21 f2 82	! . .
	call sub_60f3h		;4bdf	cd f3 60	. . `
	ld hl,l7f0ch		;4be2	21 0c 7f	! . .
	call sub_60f3h		;4be5	cd f3 60	. . `
	ld hl,l7f3eh		;4be8	21 3e 7f	! > .
	call sub_60f3h		;4beb	cd f3 60	. . `
	call 00044h		;4bee	cd 44 00	. D .
l4bf1h:
	call sub_40c8h		;4bf1	cd c8 40	. . @
	ld a,(0ed18h)		;4bf4	3a 18 ed	: . .
	and 002h		;4bf7	e6 02		. .
	jp nz,l4c05h		;4bf9	c2 05 4c	. . L
	ld a,(0ed19h)		;4bfc	3a 19 ed	: . .
	and 002h		;4bff	e6 02		. .
	ret nz			;4c01	c0		.
	halt			;4c02	76		v
	jr l4bf1h		;4c03	18 ec		. .
l4c05h:
	ld a,001h		;4c05	3e 01		> .
	ld (0ec74h),a		;4c07	32 74 ec	2 t .
	ld bc,00f01h		;4c0a	01 01 0f	. . .
	ld de,00100h		;4c0d	11 00 01	. . .
	call sub_5e0ch		;4c10	cd 0c 5e	. . ^
	ld hl,00800h		;4c13	21 00 08	! . .
	ld bc,00300h		;4c16	01 00 03	. . .
	xor a			;4c19	af		.
	call 00056h		;4c1a	cd 56 00	. V .
	ld bc,00101h		;4c1d	01 01 01	. . .
	push bc			;4c20	c5		.
	call sub_4c98h		;4c21	cd 98 4c	. . L
	pop bc			;4c24	c1		.
l4c25h:
	push bc			;4c25	c5		.
	call sub_40c8h		;4c26	cd c8 40	. . @
	pop bc			;4c29	c1		.
	ld a,(0ed17h)		;4c2a	3a 17 ed	: . .
	and 002h		;4c2d	e6 02		. .
	jp z,l4c42h		;4c2f	ca 42 4c	. B L
	inc b			;4c32	04		.
	ld a,b			;4c33	78		x
	cp 008h			;4c34	fe 08		. .
	jp nz,l4c3bh		;4c36	c2 3b 4c	. ; L
	ld b,001h		;4c39	06 01		. .
l4c3bh:
	push bc			;4c3b	c5		.
	call sub_4c98h		;4c3c	cd 98 4c	. . L
	pop bc			;4c3f	c1		.
	jr l4c58h		;4c40	18 16		. .
l4c42h:
	ld a,(0ed16h)		;4c42	3a 16 ed	: . .
	and 002h		;4c45	e6 02		. .
	jp z,l4c58h		;4c47	ca 58 4c	. X L
	dec b			;4c4a	05		.
	ld a,b			;4c4b	78		x
	cp 000h			;4c4c	fe 00		. .
	jp nz,l4c53h		;4c4e	c2 53 4c	. S L
	ld b,007h		;4c51	06 07		. .
l4c53h:
	push bc			;4c53	c5		.
	call sub_4c98h		;4c54	cd 98 4c	. . L
	pop bc			;4c57	c1		.
l4c58h:
	ld a,(0ed14h)		;4c58	3a 14 ed	: . .
	and 002h		;4c5b	e6 02		. .
	jr z,l4c74h		;4c5d	28 15		( .
	inc c			;4c5f	0c		.
	ld a,c			;4c60	79		y
	cp 010h			;4c61	fe 10		. .
	jr nz,l4c67h		;4c63	20 02		  .
	ld c,001h		;4c65	0e 01		. .
l4c67h:
	push bc			;4c67	c5		.
	ld hl,0f3e9h		;4c68	21 e9 f3	! . .
	inc l			;4c6b	2c		,
	inc l			;4c6c	2c		,
	ld (hl),c		;4c6d	71		q
	call 00062h		;4c6e	cd 62 00	. b .
	pop bc			;4c71	c1		.
	jr l4c8eh		;4c72	18 1a		. .
l4c74h:
	ld a,(0ed15h)		;4c74	3a 15 ed	: . .
	and 002h		;4c77	e6 02		. .
	jr z,l4c8eh		;4c79	28 13		( .
	dec c			;4c7b	0d		.
	ld a,c			;4c7c	79		y
	cp 000h			;4c7d	fe 00		. .
	jr nz,l4c83h		;4c7f	20 02		  .
	ld c,00fh		;4c81	0e 0f		. .
l4c83h:
	push bc			;4c83	c5		.
	ld hl,0f3e9h		;4c84	21 e9 f3	! . .
	inc l			;4c87	2c		,
	inc l			;4c88	2c		,
	ld (hl),c		;4c89	71		q
	call 00062h		;4c8a	cd 62 00	. b .
	pop bc			;4c8d	c1		.
l4c8eh:
	ld a,(0ed19h)		;4c8e	3a 19 ed	: . .
	and 002h		;4c91	e6 02		. .
	ret nz			;4c93	c0		.
	halt			;4c94	76		v
	jp l4c25h		;4c95	c3 25 4c	. % L
sub_4c98h:
	ld de,00008h		;4c98	11 08 00	. . .
	xor a			;4c9b	af		.
	ld hl,l7e83h		;4c9c	21 83 7e	! . ~
l4c9fh:
	inc a			;4c9f	3c		<
	cp b			;4ca0	b8		.
	jr z,l4ca6h		;4ca1	28 03		( .
	add hl,de		;4ca3	19		.
	jr l4c9fh		;4ca4	18 f9		. .
l4ca6h:
	ld de,00000h		;4ca6	11 00 00	. . .
	ld bc,00008h		;4ca9	01 08 00	. . .
	call 0005ch		;4cac	cd 5c 00	. \ .
	ret			;4caf	c9		.
sub_4cb0h:
	call sub_622ch		;4cb0	cd 2c 62	. , b
	call 00041h		;4cb3	cd 41 00	. A .
	call sub_4848h		;4cb6	cd 48 48	. H H
	ld hl,00104h		;4cb9	21 04 01	! . .
	call sub_6229h		;4cbc	cd 29 62	. ) b
	ld hl,l8359h		;4cbf	21 59 83	! Y .
	call sub_60f3h		;4cc2	cd f3 60	. . `
	ld hl,l7ec8h		;4cc5	21 c8 7e	! . ~
	call sub_60f3h		;4cc8	cd f3 60	. . `
	ld hl,l8378h		;4ccb	21 78 83	! x .
	call sub_60f3h		;4cce	cd f3 60	. . `
	ld hl,l7f0ch		;4cd1	21 0c 7f	! . .
	call sub_60f3h		;4cd4	cd f3 60	. . `
	ld hl,l7f3eh		;4cd7	21 3e 7f	! > .
	call sub_60f3h		;4cda	cd f3 60	. . `
	call 00044h		;4cdd	cd 44 00	. D .
l4ce0h:
	call sub_40c8h		;4ce0	cd c8 40	. . @
	ld a,(0ed18h)		;4ce3	3a 18 ed	: . .
	and 002h		;4ce6	e6 02		. .
	jp nz,l4cf4h		;4ce8	c2 f4 4c	. . L
	ld a,(0ed19h)		;4ceb	3a 19 ed	: . .
	and 002h		;4cee	e6 02		. .
	ret nz			;4cf0	c0		.
	halt			;4cf1	76		v
	jr l4ce0h		;4cf2	18 ec		. .
l4cf4h:
	ld a,001h		;4cf4	3e 01		> .
	ld (0ec74h),a		;4cf6	32 74 ec	2 t .
	ld bc,00f01h		;4cf9	01 01 0f	. . .
	ld de,00100h		;4cfc	11 00 01	. . .
	call sub_5df3h		;4cff	cd f3 5d	. . ]
	call sub_6085h		;4d02	cd 85 60	. . `
	call sub_606dh		;4d05	cd 6d 60	. m `
	ld b,000h		;4d08	06 00		. .
	ld hl,l7dbfh		;4d0a	21 bf 7d	! . }
	call sub_60a0h		;4d0d	cd a0 60	. . `
	call sub_4d57h		;4d10	cd 57 4d	. W M
	call sub_4d85h		;4d13	cd 85 4d	. . M
	ld b,000h		;4d16	06 00		. .
l4d18h:
	push bc			;4d18	c5		.
	call sub_40c8h		;4d19	cd c8 40	. . @
	ld a,(0ed14h)		;4d1c	3a 14 ed	: . .
	and 002h		;4d1f	e6 02		. .
	jr z,l4d29h		;4d21	28 06		( .
	call sub_4d57h		;4d23	cd 57 4d	. W M
	call sub_4d85h		;4d26	cd 85 4d	. . M
l4d29h:
	pop bc			;4d29	c1		.
	ld a,b			;4d2a	78		x
	cp 000h			;4d2b	fe 00		. .
	jr nz,l4d3ah		;4d2d	20 0b		  .
	ld a,(0ed18h)		;4d2f	3a 18 ed	: . .
	and 002h		;4d32	e6 02		. .
	jr z,l4d4dh		;4d34	28 17		( .
	ld b,001h		;4d36	06 01		. .
	jr l4d4dh		;4d38	18 13		. .
l4d3ah:
	push bc			;4d3a	c5		.
	call sub_4da3h		;4d3b	cd a3 4d	. . M
	call sub_6094h		;4d3e	cd 94 60	. . `
	pop bc			;4d41	c1		.
	ld a,(0ed18h)		;4d42	3a 18 ed	: . .
	and 002h		;4d45	e6 02		. .
	jr z,l4d4dh		;4d47	28 04		( .
	ld b,000h		;4d49	06 00		. .
	jr l4d4dh		;4d4b	18 00		. .
l4d4dh:
	ld a,(0ed19h)		;4d4d	3a 19 ed	: . .
	and 002h		;4d50	e6 02		. .
	ret nz			;4d52	c0		.
	halt			;4d53	76		v
	jp l4d18h		;4d54	c3 18 4d	. . M
sub_4d57h:
	xor a			;4d57	af		.
	ld de,01803h		;4d58	11 03 18	. . .
	ld bc,00002h		;4d5b	01 02 00	. . .
l4d5eh:
	push af			;4d5e	f5		.
	push bc			;4d5f	c5		.
	push de			;4d60	d5		.
	call sub_60c5h		;4d61	cd c5 60	. . `
	pop de			;4d64	d1		.
	pop bc			;4d65	c1		.
	ld a,d			;4d66	7a		z
	add a,040h		;4d67	c6 40		. @
	ld d,a			;4d69	57		W
	jr nc,l4d72h		;4d6a	30 06		0 .
	ld d,018h		;4d6c	16 18		. .
	ld a,e			;4d6e	7b		{
	add a,018h		;4d6f	c6 18		. .
	ld e,a			;4d71	5f		_
l4d72h:
	inc c			;4d72	0c		.
	ld a,c			;4d73	79		y
	cp 010h			;4d74	fe 10		. .
	jr nz,l4d7ah		;4d76	20 02		  .
	ld c,002h		;4d78	0e 02		. .
l4d7ah:
	pop af			;4d7a	f1		.
	inc a			;4d7b	3c		<
	cp 020h			;4d7c	fe 20		.  
	jp nz,l4d5eh		;4d7e	c2 5e 4d	. ^ M
	call sub_6094h		;4d81	cd 94 60	. . `
	ret			;4d84	c9		.
sub_4d85h:
	ld hl,0e474h		;4d85	21 74 e4	! t .
	ld b,000h		;4d88	06 00		. .
l4d8ah:
	push bc			;4d8a	c5		.
	push hl			;4d8b	e5		.
	call sub_5d86h		;4d8c	cd 86 5d	. . ]
	pop hl			;4d8f	e1		.
	pop bc			;4d90	c1		.
	add a,080h		;4d91	c6 80		. .
	jr nc,l4d99h		;4d93	30 04		0 .
	ld (hl),001h		;4d95	36 01		6 .
	jr l4d9bh		;4d97	18 02		. .
l4d99h:
	ld (hl),000h		;4d99	36 00		6 .
l4d9bh:
	inc hl			;4d9b	23		#
	inc b			;4d9c	04		.
	ld a,b			;4d9d	78		x
	cp 040h			;4d9e	fe 40		. @
	jr nz,l4d8ah		;4da0	20 e8		  .
	ret			;4da2	c9		.
sub_4da3h:
	xor a			;4da3	af		.
	ld bc,0e474h		;4da4	01 74 e4	. t .
	ld de,0e3e5h		;4da7	11 e5 e3	. . .
l4daah:
	push af			;4daa	f5		.
	ld a,(bc)		;4dab	0a		.
	or a			;4dac	b7		.
	jr z,l4db9h		;4dad	28 0a		( .
	ld a,(de)		;4daf	1a		.
	dec a			;4db0	3d		=
	ld (de),a		;4db1	12		.
	or a			;4db2	b7		.
	jr nz,l4dc3h		;4db3	20 0e		  .
	xor a			;4db5	af		.
	ld (bc),a		;4db6	02		.
	jr l4dc3h		;4db7	18 0a		. .
l4db9h:
	ld a,(de)		;4db9	1a		.
	inc a			;4dba	3c		<
	ld (de),a		;4dbb	12		.
	cp 0afh			;4dbc	fe af		. .
	jr nz,l4dc3h		;4dbe	20 03		  .
	ld a,001h		;4dc0	3e 01		> .
	ld (bc),a		;4dc2	02		.
l4dc3h:
	inc bc			;4dc3	03		.
	inc de			;4dc4	13		.
	ld a,(bc)		;4dc5	0a		.
	or a			;4dc6	b7		.
	jr z,l4dd3h		;4dc7	28 0a		( .
	ld a,(de)		;4dc9	1a		.
	dec a			;4dca	3d		=
	ld (de),a		;4dcb	12		.
	or a			;4dcc	b7		.
	jr nz,l4dddh		;4dcd	20 0e		  .
	xor a			;4dcf	af		.
	ld (bc),a		;4dd0	02		.
	jr l4dddh		;4dd1	18 0a		. .
l4dd3h:
	ld a,(de)		;4dd3	1a		.
	inc a			;4dd4	3c		<
	ld (de),a		;4dd5	12		.
	cp 0efh			;4dd6	fe ef		. .
	jr nz,l4dddh		;4dd8	20 03		  .
	ld a,001h		;4dda	3e 01		> .
	ld (bc),a		;4ddc	02		.
l4dddh:
	inc bc			;4ddd	03		.
	inc de			;4dde	13		.
	inc de			;4ddf	13		.
	inc de			;4de0	13		.
	pop af			;4de1	f1		.
	inc a			;4de2	3c		<
	cp 020h			;4de3	fe 20		.  
	jp nz,l4daah		;4de5	c2 aa 4d	. . M
	ret			;4de8	c9		.
sub_4de9h:
	call sub_622ch		;4de9	cd 2c 62	. , b
	call 00041h		;4dec	cd 41 00	. A .
	call sub_4848h		;4def	cd 48 48	. H H
	ld hl,00104h		;4df2	21 04 01	! . .
	call sub_6229h		;4df5	cd 29 62	. ) b
	ld hl,l83dbh		;4df8	21 db 83	! . .
	call sub_60f3h		;4dfb	cd f3 60	. . `
	ld hl,l7ec8h		;4dfe	21 c8 7e	! . ~
	call sub_60f3h		;4e01	cd f3 60	. . `
	ld hl,l83eeh		;4e04	21 ee 83	! . .
	call sub_60f3h		;4e07	cd f3 60	. . `
	ld hl,l7f3eh		;4e0a	21 3e 7f	! > .
	call sub_60f3h		;4e0d	cd f3 60	. . `
	call 00044h		;4e10	cd 44 00	. D .
l4e13h:
	call sub_40c8h		;4e13	cd c8 40	. . @
	ld a,(0ed18h)		;4e16	3a 18 ed	: . .
	and 002h		;4e19	e6 02		. .
	jp nz,l4e27h		;4e1b	c2 27 4e	. ' N
	ld a,(0ed19h)		;4e1e	3a 19 ed	: . .
	and 002h		;4e21	e6 02		. .
	ret nz			;4e23	c0		.
	halt			;4e24	76		v
	jr l4e13h		;4e25	18 ec		. .
l4e27h:
	call 00041h		;4e27	cd 41 00	. A .
	call sub_622ch		;4e2a	cd 2c 62	. , b
	ld hl,0060bh		;4e2d	21 0b 06	! . .
	call sub_6229h		;4e30	cd 29 62	. ) b
	ld hl,l84c9h		;4e33	21 c9 84	! . .
	call sub_60f3h		;4e36	cd f3 60	. . `
	call 00044h		;4e39	cd 44 00	. D .
l4e3ch:
	call sub_40c8h		;4e3c	cd c8 40	. . @
	ld a,(0e3d8h)		;4e3f	3a d8 e3	: . .
	and 0ffh		;4e42	e6 ff		. .
	jp z,l4e50h		;4e44	ca 50 4e	. P N
	ld a,(0ed19h)		;4e47	3a 19 ed	: . .
	and 002h		;4e4a	e6 02		. .
	ret nz			;4e4c	c0		.
	halt			;4e4d	76		v
	jr l4e3ch		;4e4e	18 ec		. .
l4e50h:
	call 00041h		;4e50	cd 41 00	. A .
	call sub_622ch		;4e53	cd 2c 62	. , b
	ld hl,l84e9h		;4e56	21 e9 84	! . .
	call sub_60f3h		;4e59	cd f3 60	. . `
	call 00044h		;4e5c	cd 44 00	. D .
l4e5fh:
	call sub_40c8h		;4e5f	cd c8 40	. . @
	call sub_4e87h		;4e62	cd 87 4e	. . N
	call sub_4e9ch		;4e65	cd 9c 4e	. . N
	ld a,(0e3deh)		;4e68	3a de e3	: . .
	and 002h		;4e6b	e6 02		. .
	jr nz,l4e83h		;4e6d	20 14		  .
	ld a,(0e3b0h)		;4e6f	3a b0 e3	: . .
	and 001h		;4e72	e6 01		. .
	jr z,l4e7dh		;4e74	28 07		( .
	ld a,(0e3bah)		;4e76	3a ba e3	: . .
	and 002h		;4e79	e6 02		. .
	jr nz,l4e83h		;4e7b	20 06		  .
l4e7dh:
	call sub_5ce7h		;4e7d	cd e7 5c	. . \
	halt			;4e80	76		v
	jr l4e5fh		;4e81	18 dc		. .
l4e83h:
	call sub_5cfah		;4e83	cd fa 5c	. . \
	ret			;4e86	c9		.
sub_4e87h:
	ld a,(0e3d8h)		;4e87	3a d8 e3	: . .
	and 001h		;4e8a	e6 01		. .
	jr nz,l4e95h		;4e8c	20 07		  .
	ld bc,00f04h		;4e8e	01 04 0f	. . .
	call sub_6230h		;4e91	cd 30 62	. 0 b
	ret			;4e94	c9		.
l4e95h:
	ld bc,0040eh		;4e95	01 0e 04	. . .
	call sub_6230h		;4e98	cd 30 62	. 0 b
	ret			;4e9b	c9		.
sub_4e9ch:
	ld hl,0e380h		;4e9c	21 80 e3	! . .
	ld de,00000h		;4e9f	11 00 00	. . .
l4ea2h:
	ld c,(hl)		;4ea2	4e		N
	ld a,c			;4ea3	79		y
	and 002h		;4ea4	e6 02		. .
	call nz,sub_4eb7h	;4ea6	c4 b7 4e	. . N
	ld a,c			;4ea9	79		y
	and 004h		;4eaa	e6 04		. .
	call nz,sub_4ecah	;4eac	c4 ca 4e	. . N
	inc hl			;4eaf	23		#
	inc e			;4eb0	1c		.
	ld a,e			;4eb1	7b		{
	cp 058h			;4eb2	fe 58		. X
	jr nz,l4ea2h		;4eb4	20 ec		  .
	ret			;4eb6	c9		.
sub_4eb7h:
	push hl			;4eb7	e5		.
	push de			;4eb8	d5		.
	push bc			;4eb9	c5		.
	call sub_4eddh		;4eba	cd dd 4e	. . N
	ld hl,l8504h		;4ebd	21 04 85	! . .
	call sub_60f3h		;4ec0	cd f3 60	. . `
	call sub_5cb4h		;4ec3	cd b4 5c	. . \
	pop bc			;4ec6	c1		.
	pop de			;4ec7	d1		.
	pop hl			;4ec8	e1		.
	ret			;4ec9	c9		.
sub_4ecah:
	push hl			;4eca	e5		.
	push de			;4ecb	d5		.
	push bc			;4ecc	c5		.
	call sub_4eddh		;4ecd	cd dd 4e	. . N
	ld hl,l8510h		;4ed0	21 10 85	! . .
	call sub_60f3h		;4ed3	cd f3 60	. . `
	call sub_5ccdh		;4ed6	cd cd 5c	. . \
	pop bc			;4ed9	c1		.
	pop de			;4eda	d1		.
	pop hl			;4edb	e1		.
	ret			;4edc	c9		.
sub_4eddh:
	ld a,007h		;4edd	3e 07		> .
	sub e			;4edf	93		.
	jr c,l4ee7h		;4ee0	38 05		8 .
	ld hl,l8daeh		;4ee2	21 ae 8d	! . .
	jr l4efch		;4ee5	18 15		. .
l4ee7h:
	ld a,02fh		;4ee7	3e 2f		> /
	sub e			;4ee9	93		.
	jr nc,l4ef5h		;4eea	30 09		0 .
	ld a,e			;4eec	7b		{
	sub 030h		;4eed	d6 30		. 0
	ld e,a			;4eef	5f		_
	ld hl,l8e06h		;4ef0	21 06 8e	! . .
	jr l4efch		;4ef3	18 07		. .
l4ef5h:
	ld a,e			;4ef5	7b		{
	sub 008h		;4ef6	d6 08		. .
	ld e,a			;4ef8	5f		_
	ld hl,(0ed1eh)		;4ef9	2a 1e ed	* . .
l4efch:
	add hl,de		;4efc	19		.
	ld a,(hl)		;4efd	7e		~
	jp 000a2h		;4efe	c3 a2 00	. . .
sub_4f01h:
	call sub_622ch		;4f01	cd 2c 62	. , b
	call 00041h		;4f04	cd 41 00	. A .
	call sub_4848h		;4f07	cd 48 48	. H H
	ld hl,00104h		;4f0a	21 04 01	! . .
	call sub_6229h		;4f0d	cd 29 62	. ) b
	ld hl,l851ah		;4f10	21 1a 85	! . .
	call sub_60f3h		;4f13	cd f3 60	. . `
	ld hl,l7ec8h		;4f16	21 c8 7e	! . ~
	call sub_60f3h		;4f19	cd f3 60	. . `
	ld hl,l852eh		;4f1c	21 2e 85	! . .
	call sub_60f3h		;4f1f	cd f3 60	. . `
	ld hl,l7f3eh		;4f22	21 3e 7f	! > .
	call sub_60f3h		;4f25	cd f3 60	. . `
	call 00044h		;4f28	cd 44 00	. D .
l4f2bh:
	call sub_40c8h		;4f2b	cd c8 40	. . @
	ld a,(0ed18h)		;4f2e	3a 18 ed	: . .
	and 002h		;4f31	e6 02		. .
	jp nz,l4f3fh		;4f33	c2 3f 4f	. ? O
	ld a,(0ed19h)		;4f36	3a 19 ed	: . .
	and 002h		;4f39	e6 02		. .
	ret nz			;4f3b	c0		.
	halt			;4f3c	76		v
	jr l4f2bh		;4f3d	18 ec		. .
l4f3fh:
	ld a,001h		;4f3f	3e 01		> .
	ld (0ec74h),a		;4f41	32 74 ec	2 t .
sub_4f44h:
	ld bc,00f01h		;4f44	01 01 0f	. . .
	ld de,00100h		;4f47	11 00 01	. . .
	call sub_5df3h		;4f4a	cd f3 5d	. . ]
	ld hl,07b6fh		;4f4d	21 6f 7b	! o {
	call sub_5fefh		;4f50	cd ef 5f	. . _
	call 00041h		;4f53	cd 41 00	. A .
	call sub_6085h		;4f56	cd 85 60	. . `
	call sub_606dh		;4f59	cd 6d 60	. m `
	ld b,000h		;4f5c	06 00		. .
	ld hl,l7de1h		;4f5e	21 e1 7d	! . }
	call sub_60a0h		;4f61	cd a0 60	. . `
	xor a			;4f64	af		.
	ld de,l403fh		;4f65	11 3f 40	. ? @
	ld bc,00001h		;4f68	01 01 00	. . .
	call sub_60c5h		;4f6b	cd c5 60	. . `
	ld a,001h		;4f6e	3e 01		> .
	ld de,05857h		;4f70	11 57 58	. W X
	ld bc,00101h		;4f73	01 01 01	. . .
	call sub_60c5h		;4f76	cd c5 60	. . `
	ld a,002h		;4f79	3e 02		> .
	ld de,l406fh		;4f7b	11 6f 40	. o @
	ld bc,00201h		;4f7e	01 01 02	. . .
	call sub_60c5h		;4f81	cd c5 60	. . `
	ld a,003h		;4f84	3e 03		> .
	ld de,02857h		;4f86	11 57 28	. W (
	ld bc,00301h		;4f89	01 01 03	. . .
	call sub_60c5h		;4f8c	cd c5 60	. . `
	ld a,004h		;4f8f	3e 04		> .
	ld de,0308fh		;4f91	11 8f 30	. . 0
	ld bc,00401h		;4f94	01 01 04	. . .
	call sub_60c5h		;4f97	cd c5 60	. . `
	ld a,005h		;4f9a	3e 05		> .
	ld de,0508fh		;4f9c	11 8f 50	. . P
	ld bc,00401h		;4f9f	01 01 04	. . .
	call sub_60c5h		;4fa2	cd c5 60	. . `
	ld a,006h		;4fa5	3e 06		> .
	ld de,lb03fh		;4fa7	11 3f b0	. ? .
	ld bc,00001h		;4faa	01 01 00	. . .
	call sub_60c5h		;4fad	cd c5 60	. . `
	ld a,007h		;4fb0	3e 07		> .
	ld de,0c857h		;4fb2	11 57 c8	. W .
	ld bc,00101h		;4fb5	01 01 01	. . .
	call sub_60c5h		;4fb8	cd c5 60	. . `
	ld a,008h		;4fbb	3e 08		> .
	ld de,lb06fh		;4fbd	11 6f b0	. o .
	ld bc,00201h		;4fc0	01 01 02	. . .
	call sub_60c5h		;4fc3	cd c5 60	. . `
	ld a,009h		;4fc6	3e 09		> .
	ld de,l9857h		;4fc8	11 57 98	. W .
	ld bc,00301h		;4fcb	01 01 03	. . .
	call sub_60c5h		;4fce	cd c5 60	. . `
	ld a,00ah		;4fd1	3e 0a		> .
	ld de,la08fh		;4fd3	11 8f a0	. . .
	ld bc,00401h		;4fd6	01 01 04	. . .
	call sub_60c5h		;4fd9	cd c5 60	. . `
	ld a,00bh		;4fdc	3e 0b		> .
	ld de,0c08fh		;4fde	11 8f c0	. . .
	ld bc,00401h		;4fe1	01 01 04	. . .
	call sub_60c5h		;4fe4	cd c5 60	. . `
	call sub_6094h		;4fe7	cd 94 60	. . `
	call 00044h		;4fea	cd 44 00	. D .
l4fedh:
	call sub_40c8h		;4fed	cd c8 40	. . @
	ld a,(0e3bah)		;4ff0	3a ba e3	: . .
	and 002h		;4ff3	e6 02		. .
	ret nz			;4ff5	c0		.
	ld a,(0e3d9h)		;4ff6	3a d9 e3	: . .
	and 001h		;4ff9	e6 01		. .
	jr z,l5003h		;4ffb	28 06		( .
	ld a,(0e3ddh)		;4ffd	3a dd e3	: . .
	and 002h		;5000	e6 02		. .
	ret nz			;5002	c0		.
l5003h:
	ld hl,0e3e5h		;5003	21 e5 e3	! . .
	ld b,004h		;5006	06 04		. .
	ld a,(0e3d9h)		;5008	3a d9 e3	: . .
	and 001h		;500b	e6 01		. .
	jp z,l5012h		;500d	ca 12 50	. . P
	ld b,00ah		;5010	06 0a		. .
l5012h:
	call sub_60edh		;5012	cd ed 60	. . `
	ld hl,0e3e9h		;5015	21 e9 e3	! . .
	ld b,004h		;5018	06 04		. .
	ld a,(0e3dch)		;501a	3a dc e3	: . .
	and 001h		;501d	e6 01		. .
	jp z,l5024h		;501f	ca 24 50	. $ P
	ld b,00ah		;5022	06 0a		. .
l5024h:
	call sub_60edh		;5024	cd ed 60	. . `
	ld hl,0e3edh		;5027	21 ed e3	! . .
	ld b,004h		;502a	06 04		. .
	ld a,(0e3dah)		;502c	3a da e3	: . .
	and 001h		;502f	e6 01		. .
	jp z,l5036h		;5031	ca 36 50	. 6 P
	ld b,00ah		;5034	06 0a		. .
l5036h:
	call sub_60edh		;5036	cd ed 60	. . `
	ld hl,0e3f1h		;5039	21 f1 e3	! . .
	ld b,004h		;503c	06 04		. .
	ld a,(0e3dbh)		;503e	3a db e3	: . .
	and 001h		;5041	e6 01		. .
	jp z,l5048h		;5043	ca 48 50	. H P
	ld b,00ah		;5046	06 0a		. .
l5048h:
	call sub_60edh		;5048	cd ed 60	. . `
	ld hl,0e3f5h		;504b	21 f5 e3	! . .
	ld b,004h		;504e	06 04		. .
	ld a,(0e3ddh)		;5050	3a dd e3	: . .
	and 001h		;5053	e6 01		. .
	jp z,l505ah		;5055	ca 5a 50	. Z P
	ld b,00ah		;5058	06 0a		. .
l505ah:
	call sub_60edh		;505a	cd ed 60	. . `
	ld hl,0e3f9h		;505d	21 f9 e3	! . .
	ld b,004h		;5060	06 04		. .
	ld a,(0e3deh)		;5062	3a de e3	: . .
	and 001h		;5065	e6 01		. .
	jp z,l506ch		;5067	ca 6c 50	. l P
	ld b,00ah		;506a	06 0a		. .
l506ch:
	call sub_60edh		;506c	cd ed 60	. . `
	ld hl,0e3fdh		;506f	21 fd e3	! . .
	ld b,006h		;5072	06 06		. .
	ld a,(0e3dfh)		;5074	3a df e3	: . .
	and 001h		;5077	e6 01		. .
	jp z,l507eh		;5079	ca 7e 50	. ~ P
	ld b,00ch		;507c	06 0c		. .
l507eh:
	call sub_60edh		;507e	cd ed 60	. . `
	ld hl,0e401h		;5081	21 01 e4	! . .
	ld b,006h		;5084	06 06		. .
	ld a,(0e3e2h)		;5086	3a e2 e3	: . .
	and 001h		;5089	e6 01		. .
	jp z,l5090h		;508b	ca 90 50	. . P
	ld b,00ch		;508e	06 0c		. .
l5090h:
	call sub_60edh		;5090	cd ed 60	. . `
	ld hl,0e405h		;5093	21 05 e4	! . .
	ld b,006h		;5096	06 06		. .
	ld a,(0e3e0h)		;5098	3a e0 e3	: . .
	and 001h		;509b	e6 01		. .
	jp z,l50a2h		;509d	ca a2 50	. . P
	ld b,00ch		;50a0	06 0c		. .
l50a2h:
	call sub_60edh		;50a2	cd ed 60	. . `
	ld hl,0e409h		;50a5	21 09 e4	! . .
	ld b,006h		;50a8	06 06		. .
	ld a,(0e3e1h)		;50aa	3a e1 e3	: . .
	and 001h		;50ad	e6 01		. .
	jp z,l50b4h		;50af	ca b4 50	. . P
	ld b,00ch		;50b2	06 0c		. .
l50b4h:
	call sub_60edh		;50b4	cd ed 60	. . `
	ld hl,0e40dh		;50b7	21 0d e4	! . .
	ld b,006h		;50ba	06 06		. .
	ld a,(0e3e3h)		;50bc	3a e3 e3	: . .
	and 001h		;50bf	e6 01		. .
	jp z,l50c6h		;50c1	ca c6 50	. . P
	ld b,00ch		;50c4	06 0c		. .
l50c6h:
	call sub_60edh		;50c6	cd ed 60	. . `
	ld hl,0e411h		;50c9	21 11 e4	! . .
	ld b,006h		;50cc	06 06		. .
	ld a,(0e3e4h)		;50ce	3a e4 e3	: . .
	and 001h		;50d1	e6 01		. .
	jp z,l50d8h		;50d3	ca d8 50	. . P
	ld b,00ch		;50d6	06 0c		. .
l50d8h:
	call sub_60edh		;50d8	cd ed 60	. . `
	call sub_6094h		;50db	cd 94 60	. . `
	halt			;50de	76		v
	jp l4fedh		;50df	c3 ed 4f	. . O
sub_50e2h:
	call sub_622ch		;50e2	cd 2c 62	. , b
	call 00041h		;50e5	cd 41 00	. A .
	call sub_4848h		;50e8	cd 48 48	. H H
	ld hl,00104h		;50eb	21 04 01	! . .
	call sub_6229h		;50ee	cd 29 62	. ) b
	ld hl,l85f9h		;50f1	21 f9 85	! . .
	call sub_60f3h		;50f4	cd f3 60	. . `
	ld hl,l7ec8h		;50f7	21 c8 7e	! . ~
	call sub_60f3h		;50fa	cd f3 60	. . `
	ld hl,l8607h		;50fd	21 07 86	! . .
	call sub_60f3h		;5100	cd f3 60	. . `
	ld hl,l7f0ch		;5103	21 0c 7f	! . .
	call sub_60f3h		;5106	cd f3 60	. . `
	ld hl,l7f3eh		;5109	21 3e 7f	! > .
	call sub_60f3h		;510c	cd f3 60	. . `
	call 00044h		;510f	cd 44 00	. D .
l5112h:
	call sub_40c8h		;5112	cd c8 40	. . @
	ld a,(0ed18h)		;5115	3a 18 ed	: . .
	and 002h		;5118	e6 02		. .
	jp nz,l5126h		;511a	c2 26 51	. & Q
	ld a,(0ed19h)		;511d	3a 19 ed	: . .
	and 002h		;5120	e6 02		. .
	ret nz			;5122	c0		.
	halt			;5123	76		v
	jr l5112h		;5124	18 ec		. .
l5126h:
	call sub_5e43h		;5126	cd 43 5e	. C ^
	di			;5129	f3		.
	ld a,008h		;512a	3e 08		> .
	out (0a0h),a		;512c	d3 a0		. .
	ld a,00fh		;512e	3e 0f		> .
	out (0a1h),a		;5130	d3 a1		. .
	ld a,009h		;5132	3e 09		> .
	out (0a0h),a		;5134	d3 a0		. .
	ld a,00fh		;5136	3e 0f		> .
	out (0a1h),a		;5138	d3 a1		. .
	ld a,00ah		;513a	3e 0a		> .
	out (0a0h),a		;513c	d3 a0		. .
	ld a,00fh		;513e	3e 0f		> .
	out (0a1h),a		;5140	d3 a1		. .
	ei			;5142	fb		.
	xor a			;5143	af		.
	ld (0e475h),a		;5144	32 75 e4	2 u .
	ld (0e476h),a		;5147	32 76 e4	2 v .
	ld (0e477h),a		;514a	32 77 e4	2 w .
	ld a,00fh		;514d	3e 0f		> .
	ld (0e478h),a		;514f	32 78 e4	2 x .
	ld (0e479h),a		;5152	32 79 e4	2 y .
	ld (0e47ah),a		;5155	32 7a e4	2 z .
	xor a			;5158	af		.
	ld (0e47bh),a		;5159	32 7b e4	2 { .
	ld a,008h		;515c	3e 08		> .
	ld (0e47ch),a		;515e	32 7c e4	2 | .
	di			;5161	f3		.
	ld a,006h		;5162	3e 06		> .
	out (0a0h),a		;5164	d3 a0		. .
	ld a,(0e47ch)		;5166	3a 7c e4	: | .
	sla a			;5169	cb 27		. '
	ld b,a			;516b	47		G
	ld a,01fh		;516c	3e 1f		> .
	sub b			;516e	90		.
	out (0a1h),a		;516f	d3 a1		. .
	ei			;5171	fb		.
	ld a,001h		;5172	3e 01		> .
	ld (0e474h),a		;5174	32 74 e4	2 t .
	ld a,003h		;5177	3e 03		> .
	ld (0e47dh),a		;5179	32 7d e4	2 } .
	ld (0e47fh),a		;517c	32 7f e4	2 . .
	ld a,(0e474h)		;517f	3a 74 e4	: t .
	sla a			;5182	cb 27		. '
	add a,004h		;5184	c6 04		. .
	ld (0e47eh),a		;5186	32 7e e4	2 ~ .
	ld (0e480h),a		;5189	32 80 e4	2 . .
	call sub_622ch		;518c	cd 2c 62	. , b
	call 00041h		;518f	cd 41 00	. A .
	ld hl,l8666h		;5192	21 66 86	! f .
	call sub_60f3h		;5195	cd f3 60	. . `
	call sub_521fh		;5198	cd 1f 52	. . R
	call 00044h		;519b	cd 44 00	. D .
l519eh:
	call sub_40c8h		;519e	cd c8 40	. . @
	ld a,(0ed19h)		;51a1	3a 19 ed	: . .
	and 002h		;51a4	e6 02		. .
	jp nz,l521bh		;51a6	c2 1b 52	. . R
	ld a,(0ed14h)		;51a9	3a 14 ed	: . .
	and 002h		;51ac	e6 02		. .
	jr z,l51bch		;51ae	28 0c		( .
	ld a,(0e474h)		;51b0	3a 74 e4	: t .
	dec a			;51b3	3d		=
	cp 000h			;51b4	fe 00		. .
	jr nz,l51ceh		;51b6	20 16		  .
	ld a,001h		;51b8	3e 01		> .
	jr l51ceh		;51ba	18 12		. .
l51bch:
	ld a,(0ed15h)		;51bc	3a 15 ed	: . .
	and 002h		;51bf	e6 02		. .
	jr z,l51d4h		;51c1	28 11		( .
	ld a,(0e474h)		;51c3	3a 74 e4	: t .
	inc a			;51c6	3c		<
	cp 009h			;51c7	fe 09		. .
	jp nz,l51ceh		;51c9	c2 ce 51	. . Q
	ld a,008h		;51cc	3e 08		> .
l51ceh:
	ld (0e474h),a		;51ce	32 74 e4	2 t .
	call sub_521fh		;51d1	cd 1f 52	. . R
l51d4h:
	xor a			;51d4	af		.
	ld b,a			;51d5	47		G
	ld a,(0ed17h)		;51d6	3a 17 ed	: . .
	and 002h		;51d9	e6 02		. .
	jr z,l51e2h		;51db	28 05		( .
	ld a,001h		;51dd	3e 01		> .
	ld b,a			;51df	47		G
	jr l51ech		;51e0	18 0a		. .
l51e2h:
	ld a,(0ed16h)		;51e2	3a 16 ed	: . .
	and 002h		;51e5	e6 02		. .
	jr z,l5217h		;51e7	28 2e		( .
	ld a,002h		;51e9	3e 02		> .
	ld b,a			;51eb	47		G
l51ech:
	ld a,(0e474h)		;51ec	3a 74 e4	: t .
	cp 001h			;51ef	fe 01		. .
	jp z,l5262h		;51f1	ca 62 52	. b R
	cp 002h			;51f4	fe 02		. .
	jp z,l527fh		;51f6	ca 7f 52	. . R
	cp 003h			;51f9	fe 03		. .
	jp z,l529ch		;51fb	ca 9c 52	. . R
	cp 004h			;51fe	fe 04		. .
	jp z,l52b9h		;5200	ca b9 52	. . R
	cp 005h			;5203	fe 05		. .
	jp z,l52d0h		;5205	ca d0 52	. . R
	cp 006h			;5208	fe 06		. .
	jp z,l52e7h		;520a	ca e7 52	. . R
	cp 007h			;520d	fe 07		. .
	jp z,l52feh		;520f	ca fe 52	. . R
	cp 008h			;5212	fe 08		. .
	jp z,l5304h		;5214	ca 04 53	. . S
l5217h:
	halt			;5217	76		v
	jp l519eh		;5218	c3 9e 51	. . Q
l521bh:
	call sub_5e43h		;521b	cd 43 5e	. C ^
	ret			;521e	c9		.
sub_521fh:
	ld a,(0e47fh)		;521f	3a 7f e4	: . .
	ld h,a			;5222	67		g
	ld a,(0e480h)		;5223	3a 80 e4	: . .
	ld l,a			;5226	6f		o
	call sub_6229h		;5227	cd 29 62	. ) b
	ld hl,l8108h		;522a	21 08 81	! . .
	call sub_60f3h		;522d	cd f3 60	. . `
	ld a,(0e47dh)		;5230	3a 7d e4	: } .
	ld h,a			;5233	67		g
	ld a,(0e474h)		;5234	3a 74 e4	: t .
	ld b,a			;5237	47		G
	sla a			;5238	cb 27		. '
	add a,004h		;523a	c6 04		. .
	ld c,a			;523c	4f		O
	ld a,b			;523d	78		x
	sub 007h		;523e	d6 07		. .
	jp c,l5247h		;5240	da 47 52	. G R
	ld a,c			;5243	79		y
	add a,002h		;5244	c6 02		. .
	ld c,a			;5246	4f		O
l5247h:
	ld a,c			;5247	79		y
	ld l,a			;5248	6f		o
	ld (0e47eh),a		;5249	32 7e e4	2 ~ .
	call sub_6229h		;524c	cd 29 62	. ) b
	ld hl,l8106h		;524f	21 06 81	! . .
	call sub_60f3h		;5252	cd f3 60	. . `
	ld a,(0e47dh)		;5255	3a 7d e4	: } .
	ld (0e47fh),a		;5258	32 7f e4	2 . .
	ld a,(0e47eh)		;525b	3a 7e e4	: ~ .
	ld (0e480h),a		;525e	32 80 e4	2 . .
	ret			;5261	c9		.
l5262h:
	ld a,001h		;5262	3e 01		> .
	ld (0e481h),a		;5264	32 81 e4	2 . .
	ld a,(0e475h)		;5267	3a 75 e4	: u .
	ld (0e483h),a		;526a	32 83 e4	2 . .
	ld a,(0e478h)		;526d	3a 78 e4	: x .
	ld (0e482h),a		;5270	32 82 e4	2 . .
	call sub_530ah		;5273	cd 0a 53	. . S
	ld a,(0e483h)		;5276	3a 83 e4	: . .
	ld (0e475h),a		;5279	32 75 e4	2 u .
	jp l5217h		;527c	c3 17 52	. . R
l527fh:
	ld a,002h		;527f	3e 02		> .
	ld (0e481h),a		;5281	32 81 e4	2 . .
	ld a,(0e476h)		;5284	3a 76 e4	: v .
	ld (0e483h),a		;5287	32 83 e4	2 . .
	ld a,(0e479h)		;528a	3a 79 e4	: y .
	ld (0e482h),a		;528d	32 82 e4	2 . .
	call sub_530ah		;5290	cd 0a 53	. . S
	ld a,(0e483h)		;5293	3a 83 e4	: . .
	ld (0e476h),a		;5296	32 76 e4	2 v .
	jp l5217h		;5299	c3 17 52	. . R
l529ch:
	ld a,003h		;529c	3e 03		> .
	ld (0e481h),a		;529e	32 81 e4	2 . .
	ld a,(0e477h)		;52a1	3a 77 e4	: w .
	ld (0e483h),a		;52a4	32 83 e4	2 . .
	ld a,(0e47ah)		;52a7	3a 7a e4	: z .
	ld (0e482h),a		;52aa	32 82 e4	2 . .
	call sub_530ah		;52ad	cd 0a 53	. . S
	ld a,(0e483h)		;52b0	3a 83 e4	: . .
	ld (0e477h),a		;52b3	32 77 e4	2 w .
	jp l5217h		;52b6	c3 17 52	. . R
l52b9h:
	ld a,001h		;52b9	3e 01		> .
	ld (0e481h),a		;52bb	32 81 e4	2 . .
	ld a,(0e478h)		;52be	3a 78 e4	: x .
	ld (0e482h),a		;52c1	32 82 e4	2 . .
	call sub_53abh		;52c4	cd ab 53	. . S
	ld a,(0e482h)		;52c7	3a 82 e4	: . .
	ld (0e478h),a		;52ca	32 78 e4	2 x .
	jp l5217h		;52cd	c3 17 52	. . R
l52d0h:
	ld a,002h		;52d0	3e 02		> .
	ld (0e481h),a		;52d2	32 81 e4	2 . .
	ld a,(0e479h)		;52d5	3a 79 e4	: y .
	ld (0e482h),a		;52d8	32 82 e4	2 . .
	call sub_53abh		;52db	cd ab 53	. . S
	ld a,(0e482h)		;52de	3a 82 e4	: . .
	ld (0e479h),a		;52e1	32 79 e4	2 y .
	jp l5217h		;52e4	c3 17 52	. . R
l52e7h:
	ld a,003h		;52e7	3e 03		> .
	ld (0e481h),a		;52e9	32 81 e4	2 . .
	ld a,(0e47ah)		;52ec	3a 7a e4	: z .
	ld (0e482h),a		;52ef	32 82 e4	2 . .
	call sub_53abh		;52f2	cd ab 53	. . S
	ld a,(0e482h)		;52f5	3a 82 e4	: . .
	ld (0e47ah),a		;52f8	32 7a e4	2 z .
	jp l5217h		;52fb	c3 17 52	. . R
l52feh:
	call sub_5417h		;52fe	cd 17 54	. . T
	jp l5217h		;5301	c3 17 52	. . R
l5304h:
	call sub_548fh		;5304	cd 8f 54	. . T
	jp l5217h		;5307	c3 17 52	. . R
sub_530ah:
	ld a,b			;530a	78		x
	cp 001h			;530b	fe 01		. .
	jp nz,l531ch		;530d	c2 1c 53	. . S
	ld a,(0e483h)		;5310	3a 83 e4	: . .
	cp 003h			;5313	fe 03		. .
	ret z			;5315	c8		.
	inc a			;5316	3c		<
	ld (0e483h),a		;5317	32 83 e4	2 . .
	jr l5326h		;531a	18 0a		. .
l531ch:
	ld a,(0e483h)		;531c	3a 83 e4	: . .
	cp 000h			;531f	fe 00		. .
	ret z			;5321	c8		.
	dec a			;5322	3d		=
	ld (0e483h),a		;5323	32 83 e4	2 . .
l5326h:
	cp 000h			;5326	fe 00		. .
	jr nz,l532fh		;5328	20 05		  .
	ld bc,00000h		;532a	01 00 00	. . .
	jr l5344h		;532d	18 15		. .
l532fh:
	cp 001h			;532f	fe 01		. .
	jr nz,l5338h		;5331	20 05		  .
	ld bc,00174h		;5333	01 74 01	. t .
	jr l5344h		;5336	18 0c		. .
l5338h:
	cp 002h			;5338	fe 02		. .
	jr nz,l5341h		;533a	20 05		  .
	ld bc,000dfh		;533c	01 df 00	. . .
	jr l5344h		;533f	18 03		. .
l5341h:
	ld bc,0006fh		;5341	01 6f 00	. o .
l5344h:
	ld a,(0e481h)		;5344	3a 81 e4	: . .
	cp 001h			;5347	fe 01		. .
	jr nz,l5353h		;5349	20 08		  .
	ld de,00100h		;534b	11 00 01	. . .
	ld hl,00008h		;534e	21 08 00	! . .
	jr l536ah		;5351	18 17		. .
l5353h:
	cp 002h			;5353	fe 02		. .
	jr nz,l535fh		;5355	20 08		  .
	ld de,00302h		;5357	11 02 03	. . .
	ld hl,00009h		;535a	21 09 00	! . .
	jr l536ah		;535d	18 0b		. .
l535fh:
	cp 003h			;535f	fe 03		. .
	ret nz			;5361	c0		.
	ld de,00504h		;5362	11 04 05	. . .
	ld hl,0000ah		;5365	21 0a 00	! . .
	jr l536ah		;5368	18 00		. .
l536ah:
	di			;536a	f3		.
	ld a,e			;536b	7b		{
	out (0a0h),a		;536c	d3 a0		. .
	ld a,c			;536e	79		y
	out (0a1h),a		;536f	d3 a1		. .
	ld a,d			;5371	7a		z
	out (0a0h),a		;5372	d3 a0		. .
	ld a,b			;5374	78		x
	out (0a1h),a		;5375	d3 a1		. .
	ld a,l			;5377	7d		}
	out (0a0h),a		;5378	d3 a0		. .
	ld a,(0e482h)		;537a	3a 82 e4	: . .
	out (0a1h),a		;537d	d3 a1		. .
	ei			;537f	fb		.
	ld a,(0e47eh)		;5380	3a 7e e4	: ~ .
	ld l,a			;5383	6f		o
	ld h,00bh		;5384	26 0b		& .
	xor a			;5386	af		.
	ld b,a			;5387	47		G
	ld a,(0e483h)		;5388	3a 83 e4	: . .
	ld c,a			;538b	4f		O
l538ch:
	push hl			;538c	e5		.
	push bc			;538d	c5		.
	call 000c6h		;538e	cd c6 00	. . .
	pop bc			;5391	c1		.
	pop hl			;5392	e1		.
	ld a,h			;5393	7c		|
	add a,008h		;5394	c6 08		. .
	ld h,a			;5396	67		g
	ld a,b			;5397	78		x
	cp c			;5398	b9		.
	jr z,l539fh		;5399	28 04		( .
	ld a,0c2h		;539b	3e c2		> .
	jr l53a1h		;539d	18 02		. .
l539fh:
	ld a,0c1h		;539f	3e c1		> .
l53a1h:
	call 000a2h		;53a1	cd a2 00	. . .
	inc b			;53a4	04		.
	ld a,004h		;53a5	3e 04		> .
	cp b			;53a7	b8		.
	jr nz,l538ch		;53a8	20 e2		  .
	ret			;53aa	c9		.
sub_53abh:
	ld a,b			;53ab	78		x
	cp 001h			;53ac	fe 01		. .
	jp nz,l53bdh		;53ae	c2 bd 53	. . S
	ld a,(0e482h)		;53b1	3a 82 e4	: . .
	cp 00fh			;53b4	fe 0f		. .
	ret z			;53b6	c8		.
	inc a			;53b7	3c		<
	ld (0e482h),a		;53b8	32 82 e4	2 . .
	jr l53c7h		;53bb	18 0a		. .
l53bdh:
	ld a,(0e482h)		;53bd	3a 82 e4	: . .
	cp 000h			;53c0	fe 00		. .
	ret z			;53c2	c8		.
	dec a			;53c3	3d		=
	ld (0e482h),a		;53c4	32 82 e4	2 . .
l53c7h:
	ld a,(0e481h)		;53c7	3a 81 e4	: . .
	cp 001h			;53ca	fe 01		. .
	jr nz,l53d3h		;53cc	20 05		  .
	ld de,00008h		;53ce	11 08 00	. . .
	jr l53e2h		;53d1	18 0f		. .
l53d3h:
	cp 002h			;53d3	fe 02		. .
	jr nz,l53dch		;53d5	20 05		  .
	ld de,00009h		;53d7	11 09 00	. . .
	jr l53e2h		;53da	18 06		. .
l53dch:
	cp 003h			;53dc	fe 03		. .
	ret nz			;53de	c0		.
	ld de,0000ah		;53df	11 0a 00	. . .
l53e2h:
	di			;53e2	f3		.
	ld a,e			;53e3	7b		{
	out (0a0h),a		;53e4	d3 a0		. .
	ld a,(0e482h)		;53e6	3a 82 e4	: . .
	out (0a1h),a		;53e9	d3 a1		. .
	ei			;53eb	fb		.
	ld a,(0e47eh)		;53ec	3a 7e e4	: ~ .
	ld l,a			;53ef	6f		o
	ld h,011h		;53f0	26 11		& .
	ld a,001h		;53f2	3e 01		> .
	ld b,a			;53f4	47		G
	ld a,(0e482h)		;53f5	3a 82 e4	: . .
	ld c,a			;53f8	4f		O
l53f9h:
	push hl			;53f9	e5		.
	push bc			;53fa	c5		.
	call 000c6h		;53fb	cd c6 00	. . .
	pop bc			;53fe	c1		.
	pop hl			;53ff	e1		.
	ld a,h			;5400	7c		|
	inc a			;5401	3c		<
	ld h,a			;5402	67		g
	ld a,c			;5403	79		y
	sub b			;5404	90		.
	jr nc,l540bh		;5405	30 04		0 .
	ld a,0c2h		;5407	3e c2		> .
	jr l540dh		;5409	18 02		. .
l540bh:
	ld a,0c1h		;540b	3e c1		> .
l540dh:
	call 000a2h		;540d	cd a2 00	. . .
	inc b			;5410	04		.
	ld a,010h		;5411	3e 10		> .
	cp b			;5413	b8		.
	jr nz,l53f9h		;5414	20 e3		  .
	ret			;5416	c9		.
sub_5417h:
	ld a,b			;5417	78		x
	cp 001h			;5418	fe 01		. .
	jp nz,l5429h		;541a	c2 29 54	. ) T
	ld a,(0e47bh)		;541d	3a 7b e4	: { .
	cp 003h			;5420	fe 03		. .
	ret z			;5422	c8		.
	inc a			;5423	3c		<
	ld (0e47bh),a		;5424	32 7b e4	2 { .
	jr l5433h		;5427	18 0a		. .
l5429h:
	ld a,(0e47bh)		;5429	3a 7b e4	: { .
	cp 000h			;542c	fe 00		. .
	ret z			;542e	c8		.
	dec a			;542f	3d		=
	ld (0e47bh),a		;5430	32 7b e4	2 { .
l5433h:
	ld a,(0e47bh)		;5433	3a 7b e4	: { .
	cp 000h			;5436	fe 00		. .
	jr nz,l543fh		;5438	20 05		  .
	ld de,00038h		;543a	11 38 00	. 8 .
	jr l5457h		;543d	18 18		. .
l543fh:
	cp 001h			;543f	fe 01		. .
	jr nz,l5448h		;5441	20 05		  .
	ld de,00031h		;5443	11 31 00	. 1 .
	jr l5457h		;5446	18 0f		. .
l5448h:
	cp 002h			;5448	fe 02		. .
	jr nz,l5451h		;544a	20 05		  .
	ld de,0002ah		;544c	11 2a 00	. * .
	jr l5457h		;544f	18 06		. .
l5451h:
	cp 003h			;5451	fe 03		. .
	ret nz			;5453	c0		.
	ld de,0001ch		;5454	11 1c 00	. . .
l5457h:
	di			;5457	f3		.
	ld a,007h		;5458	3e 07		> .
	out (0a0h),a		;545a	d3 a0		. .
	ld a,e			;545c	7b		{
	and 03fh		;545d	e6 3f		. ?
	or 080h			;545f	f6 80		. .
	out (0a1h),a		;5461	d3 a1		. .
	ei			;5463	fb		.
	ld a,(0e47eh)		;5464	3a 7e e4	: ~ .
	ld l,a			;5467	6f		o
	ld h,012h		;5468	26 12		& .
	xor a			;546a	af		.
	ld b,a			;546b	47		G
	ld a,(0e47bh)		;546c	3a 7b e4	: { .
	ld c,a			;546f	4f		O
l5470h:
	push hl			;5470	e5		.
	push bc			;5471	c5		.
	call 000c6h		;5472	cd c6 00	. . .
	pop bc			;5475	c1		.
	pop hl			;5476	e1		.
	ld a,h			;5477	7c		|
	add a,006h		;5478	c6 06		. .
	ld h,a			;547a	67		g
	ld a,b			;547b	78		x
	cp c			;547c	b9		.
	jr z,l5483h		;547d	28 04		( .
	ld a,0c2h		;547f	3e c2		> .
	jr l5485h		;5481	18 02		. .
l5483h:
	ld a,0c1h		;5483	3e c1		> .
l5485h:
	call 000a2h		;5485	cd a2 00	. . .
	inc b			;5488	04		.
	ld a,004h		;5489	3e 04		> .
	cp b			;548b	b8		.
	jr nz,l5470h		;548c	20 e2		  .
	ret			;548e	c9		.
sub_548fh:
	ld a,b			;548f	78		x
	cp 001h			;5490	fe 01		. .
	jp nz,l54a1h		;5492	c2 a1 54	. . T
	ld a,(0e47ch)		;5495	3a 7c e4	: | .
	cp 00fh			;5498	fe 0f		. .
	ret z			;549a	c8		.
	inc a			;549b	3c		<
	ld (0e47ch),a		;549c	32 7c e4	2 | .
	jr l54abh		;549f	18 0a		. .
l54a1h:
	ld a,(0e47ch)		;54a1	3a 7c e4	: | .
	cp 000h			;54a4	fe 00		. .
	ret z			;54a6	c8		.
	dec a			;54a7	3d		=
	ld (0e47ch),a		;54a8	32 7c e4	2 | .
l54abh:
	sla a			;54ab	cb 27		. '
	ld b,a			;54ad	47		G
	ld a,01fh		;54ae	3e 1f		> .
	sub b			;54b0	90		.
	ld c,a			;54b1	4f		O
	di			;54b2	f3		.
	ld a,006h		;54b3	3e 06		> .
	out (0a0h),a		;54b5	d3 a0		. .
	ld a,c			;54b7	79		y
	out (0a1h),a		;54b8	d3 a1		. .
	ei			;54ba	fb		.
	ld a,(0e47eh)		;54bb	3a 7e e4	: ~ .
	ld l,a			;54be	6f		o
	ld h,011h		;54bf	26 11		& .
	ld a,001h		;54c1	3e 01		> .
	ld b,a			;54c3	47		G
	ld a,(0e47ch)		;54c4	3a 7c e4	: | .
	ld c,a			;54c7	4f		O
l54c8h:
	push hl			;54c8	e5		.
	push bc			;54c9	c5		.
	call 000c6h		;54ca	cd c6 00	. . .
	pop bc			;54cd	c1		.
	pop hl			;54ce	e1		.
	ld a,h			;54cf	7c		|
	inc a			;54d0	3c		<
	ld h,a			;54d1	67		g
	ld a,c			;54d2	79		y
	sub b			;54d3	90		.
	jr nc,l54dah		;54d4	30 04		0 .
	ld a,0c2h		;54d6	3e c2		> .
	jr l54dch		;54d8	18 02		. .
l54dah:
	ld a,0c1h		;54da	3e c1		> .
l54dch:
	call 000a2h		;54dc	cd a2 00	. . .
	inc b			;54df	04		.
	ld a,010h		;54e0	3e 10		> .
	cp b			;54e2	b8		.
	jr nz,l54c8h		;54e3	20 e3		  .
	ret			;54e5	c9		.
sub_54e6h:
	call sub_622ch		;54e6	cd 2c 62	. , b
	call 00041h		;54e9	cd 41 00	. A .
	ld a,(0002dh)		;54ec	3a 2d 00	: - .
	or a			;54ef	b7		.
	jr nz,l54f7h		;54f0	20 05		  .
	ld hl,l8a34h		;54f2	21 34 8a	! 4 .
	jr l5515h		;54f5	18 1e		. .
l54f7h:
	cp 001h			;54f7	fe 01		. .
	jr nz,l5500h		;54f9	20 05		  .
	ld hl,l8a38h		;54fb	21 38 8a	! 8 .
	jr l5515h		;54fe	18 15		. .
l5500h:
	cp 002h			;5500	fe 02		. .
	jr nz,l5509h		;5502	20 05		  .
	ld hl,08a3dh		;5504	21 3d 8a	! = .
	jr l5515h		;5507	18 0c		. .
l5509h:
	cp 003h			;5509	fe 03		. .
	jr nz,l5512h		;550b	20 05		  .
	ld hl,l8a43h		;550d	21 43 8a	! C .
	jr l5515h		;5510	18 03		. .
l5512h:
	ld hl,l8a4bh		;5512	21 4b 8a	! K .
l5515h:
	ld (0e4f4h),hl		;5515	22 f4 e4	" . .
	ld a,(0fafch)		;5518	3a fc fa	: . .
	and 006h		;551b	e6 06		. .
	jr nz,l5524h		;551d	20 05		  .
	ld hl,00016h		;551f	21 16 00	! . .
	jr l5542h		;5522	18 1e		. .
l5524h:
	cp 002h			;5524	fe 02		. .
	jr nz,l552dh		;5526	20 05		  .
	ld hl,00064h		;5528	21 64 00	! d .
	jr l5542h		;552b	18 15		. .
l552dh:
	cp 004h			;552d	fe 04		. .
	jr nz,l5536h		;552f	20 05		  .
	ld hl,00128h		;5531	21 28 01	! ( .
	jr l5542h		;5534	18 0c		. .
l5536h:
	cp 006h			;5536	fe 06		. .
	jr nz,l553fh		;5538	20 05		  .
	ld hl,00192h		;553a	21 92 01	! . .
	jr l5542h		;553d	18 03		. .
l553fh:
	ld hl,0ffffh		;553f	21 ff ff	! . .
l5542h:
	ld (0e4f8h),hl		;5542	22 f8 e4	" . .
	ld a,(0ec75h)		;5545	3a 75 ec	: u .
	or a			;5548	b7		.
	jr nz,l555bh		;5549	20 10		  .
	ld a,(0ec76h)		;554b	3a 76 ec	: v .
	or a			;554e	b7		.
	jr z,l5556h		;554f	28 05		( .
	ld hl,l8a72h		;5551	21 72 8a	! r .
	jr l5570h		;5554	18 1a		. .
l5556h:
	ld hl,l8a65h		;5556	21 65 8a	! e .
	jr l5570h		;5559	18 15		. .
l555bh:
	cp 001h			;555b	fe 01		. .
	jr nz,l5564h		;555d	20 05		  .
l555fh:
	ld hl,l8a7bh		;555f	21 7b 8a	! { .
	jr l5570h		;5562	18 0c		. .
l5564h:
	cp 002h			;5564	fe 02		. .
	jr nz,l556dh		;5566	20 05		  .
	ld hl,l8a81h		;5568	21 81 8a	! . .
	jr l5570h		;556b	18 03		. .
l556dh:
	ld hl,l8a4bh		;556d	21 4b 8a	! K .
l5570h:
	ld (0e4fah),hl		;5570	22 fa e4	" . .
	ld a,(0ec76h)		;5573	3a 76 ec	: v .
	or a			;5576	b7		.
	jr z,l557eh		;5577	28 05		( .
	ld hl,00050h		;5579	21 50 00	! P .
	jr l5581h		;557c	18 03		. .
l557eh:
	ld hl,00060h		;557e	21 60 00	! ` .
l5581h:
	ld (0e4fch),hl		;5581	22 fc e4	" . .
	ld a,(0ed1dh)		;5584	3a 1d ed	: . .
	or a			;5587	b7		.
	jr nz,l558fh		;5588	20 05		  .
	ld hl,l8a9ch		;558a	21 9c 8a	! . .
	jr l55bfh		;558d	18 30		. 0
l558fh:
	cp 001h			;558f	fe 01		. .
	jr nz,l5598h		;5591	20 05		  .
	ld hl,l8a9fh		;5593	21 9f 8a	! . .
	jr l55bfh		;5596	18 27		. '
l5598h:
	cp 002h			;5598	fe 02		. .
	jr nz,l55a1h		;559a	20 05		  .
	ld hl,l8aa3h		;559c	21 a3 8a	! . .
	jr l55bfh		;559f	18 1e		. .
l55a1h:
	cp 003h			;55a1	fe 03		. .
	jr nz,l55aah		;55a3	20 05		  .
	ld hl,l8aa6h		;55a5	21 a6 8a	! . .
	jr l55bfh		;55a8	18 15		. .
l55aah:
	cp 004h			;55aa	fe 04		. .
	jr nz,l55b3h		;55ac	20 05		  .
	ld hl,l8aa9h		;55ae	21 a9 8a	! . .
	jr l55bfh		;55b1	18 0c		. .
l55b3h:
	cp 005h			;55b3	fe 05		. .
	jr nz,l55bch		;55b5	20 05		  .
	ld hl,l8aach		;55b7	21 ac 8a	! . .
	jr l55bfh		;55ba	18 03		. .
l55bch:
	ld hl,l8ab1h		;55bc	21 b1 8a	! . .
l55bfh:
	ld (0e4f6h),hl		;55bf	22 f6 e4	" . .
l55c2h:
	ld hl,l8a16h		;55c2	21 16 8a	! . .
	call sub_60f3h		;55c5	cd f3 60	. . `
sub_55c8h:
	ld hl,l7ec8h		;55c8	21 c8 7e	! . ~
	call sub_60f3h		;55cb	cd f3 60	. . `
	ld hl,00205h		;55ce	21 05 02	! . .
	call sub_6229h		;55d1	cd 29 62	. ) b
	ld hl,l8a2ch		;55d4	21 2c 8a	! , .
	call sub_60f3h		;55d7	cd f3 60	. . `
	ld hl,(0e4f4h)		;55da	2a f4 e4	* . .
	call sub_60f3h		;55dd	cd f3 60	. . `
	ld hl,01605h		;55e0	21 05 16	! . .
	call sub_6229h		;55e3	cd 29 62	. ) b
	ld hl,l8a91h		;55e6	21 91 8a	! . .
	call sub_60f3h		;55e9	cd f3 60	. . `
	ld hl,(0e4f6h)		;55ec	2a f6 e4	* . .
	call sub_60f3h		;55ef	cd f3 60	. . `
	ld hl,00207h		;55f2	21 07 02	! . .
l55f5h:
	call sub_6229h		;55f5	cd 29 62	. ) b
	ld hl,l8a52h		;55f8	21 52 8a	! R .
	call sub_60f3h		;55fb	cd f3 60	. . `
	ld hl,(0ec77h)		;55fe	2a 77 ec	* w .
	ld c,h			;5601	4c		L
	ld d,l			;5602	55		U
	ld a,(0ec79h)		;5603	3a 79 ec	: y .
	and 00fh		;5606	e6 0f		. .
	ld b,a			;5608	47		G
	call sub_60fdh		;5609	cd fd 60	. . `
	ld hl,l8a4fh		;560c	21 4f 8a	! O .
	call sub_60f3h		;560f	cd f3 60	. . `
	ld hl,00209h		;5612	21 09 02	! . .
	call sub_6229h		;5615	cd 29 62	. ) b
	ld hl,l8a58h		;5618	21 58 8a	! X .
	call sub_60f3h		;561b	cd f3 60	. . `
	ld b,000h		;561e	06 00		. .
	ld hl,(0e4f8h)		;5620	2a f8 e4	* . .
	ld c,h			;5623	4c		L
	ld d,l			;5624	55		U
	call sub_60fdh		;5625	cd fd 60	. . `
	ld hl,l8a4fh		;5628	21 4f 8a	! O .
	call sub_60f3h		;562b	cd f3 60	. . `
	ld hl,01607h		;562e	21 07 16	! . .
	call sub_6229h		;5631	cd 29 62	. ) b
	ld hl,l8a5fh		;5634	21 5f 8a	! _ .
	call sub_60f3h		;5637	cd f3 60	. . `
	ld hl,(0e4fah)		;563a	2a fa e4	* . .
	call sub_60f3h		;563d	cd f3 60	. . `
	ld hl,01609h		;5640	21 09 16	! . .
	call sub_6229h		;5643	cd 29 62	. ) b
	ld hl,l8a87h		;5646	21 87 8a	! . .
	call sub_60f3h		;5649	cd f3 60	. . `
	ld b,000h		;564c	06 00		. .
	ld hl,(0e4fch)		;564e	2a fc e4	* . .
	ld c,h			;5651	4c		L
	ld d,l			;5652	55		U
	call sub_60fdh		;5653	cd fd 60	. . `
	ld hl,l8a8eh		;5656	21 8e 8a	! . .
	call sub_60f3h		;5659	cd f3 60	. . `
	ld a,(0002bh)		;565c	3a 2b 00	: + .
	and 080h		;565f	e6 80		. .
	rlc a			;5661	cb 07		. .
	ld b,a			;5663	47		G
	ld a,(0ec76h)		;5664	3a 76 ec	: v .
	xor b			;5667	a8		.
	jr z,l566fh		;5668	28 05		( .
	ld a,0cfh		;566a	3e cf		> .
	call 000a2h		;566c	cd a2 00	. . .
l566fh:
	ld hl,0020bh		;566f	21 0b 02	! . .
	call sub_6229h		;5672	cd 29 62	. ) b
	ld hl,l8ac2h		;5675	21 c2 8a	! . .
	call sub_60f3h		;5678	cd f3 60	. . `
	ld hl,0020ch		;567b	21 0c 02	! . .
	ld b,005h		;567e	06 05		. .
l5680h:
	push hl			;5680	e5		.
	push bc			;5681	c5		.
	call sub_6229h		;5682	cd 29 62	. ) b
	ld hl,l8adch		;5685	21 dc 8a	! . .
	call sub_60f3h		;5688	cd f3 60	. . `
	pop bc			;568b	c1		.
	pop hl			;568c	e1		.
	inc hl			;568d	23		#
	inc hl			;568e	23		#
	djnz l5680h		;568f	10 ef		. .
	ld hl,0020dh		;5691	21 0d 02	! . .
	ld b,004h		;5694	06 04		. .
l5696h:
	push hl			;5696	e5		.
	push bc			;5697	c5		.
	call sub_6229h		;5698	cd 29 62	. ) b
	ld hl,l8af6h		;569b	21 f6 8a	! . .
	call sub_60f3h		;569e	cd f3 60	. . `
	pop bc			;56a1	c1		.
	pop hl			;56a2	e1		.
	inc hl			;56a3	23		#
	inc hl			;56a4	23		#
	djnz l5696h		;56a5	10 ef		. .
	ld hl,00215h		;56a7	21 15 02	! . .
	call sub_6229h		;56aa	cd 29 62	. ) b
	ld hl,08b10h		;56ad	21 10 8b	! . .
	call sub_60f3h		;56b0	cd f3 60	. . `
	ld hl,0030ch		;56b3	21 0c 03	! . .
	push hl			;56b6	e5		.
	call sub_6229h		;56b7	cd 29 62	. ) b
	ld a,053h		;56ba	3e 53		> S
	call 000a2h		;56bc	cd a2 00	. . .
	pop hl			;56bf	e1		.
	inc hl			;56c0	23		#
	inc hl			;56c1	23		#
	ld bc,00400h		;56c2	01 00 04	. . .
l56c5h:
	push hl			;56c5	e5		.
	push bc			;56c6	c5		.
	call sub_6229h		;56c7	cd 29 62	. ) b
	pop bc			;56ca	c1		.
	push bc			;56cb	c5		.
	ld d,c			;56cc	51		Q
	ld bc,00000h		;56cd	01 00 00	. . .
	call sub_60fdh		;56d0	cd fd 60	. . `
	pop bc			;56d3	c1		.
	pop hl			;56d4	e1		.
	inc c			;56d5	0c		.
	inc hl			;56d6	23		#
	inc hl			;56d7	23		#
	djnz l56c5h		;56d8	10 eb		. .
	ld hl,0e474h		;56da	21 74 e4	! t .
	ld (hl),053h		;56dd	36 53		6 S
	inc hl			;56df	23		#
	ld (hl),055h		;56e0	36 55		6 U
	inc hl			;56e2	23		#
	ld (hl),042h		;56e3	36 42		6 B
	inc hl			;56e5	23		#
	inc hl			;56e6	23		#
	ld (hl),000h		;56e7	36 00		6 .
	ld hl,0050ch		;56e9	21 0c 05	! . .
	ld bc,00400h		;56ec	01 00 04	. . .
l56efh:
	push hl			;56ef	e5		.
	push bc			;56f0	c5		.
	call sub_6229h		;56f1	cd 29 62	. ) b
	pop bc			;56f4	c1		.
	ld a,030h		;56f5	3e 30		> 0
	add a,c			;56f7	81		.
	ld (0e477h),a		;56f8	32 77 e4	2 w .
	ld hl,0e474h		;56fb	21 74 e4	! t .
	push bc			;56fe	c5		.
	call sub_60f3h		;56ff	cd f3 60	. . `
	pop bc			;5702	c1		.
	pop hl			;5703	e1		.
	inc c			;5704	0c		.
	ld de,00500h		;5705	11 00 05	. . .
	add hl,de		;5708	19		.
	djnz l56efh		;5709	10 e4		. .
	ld hl,0190ch		;570b	21 0c 19	! . .
	call sub_6229h		;570e	cd 29 62	. ) b
	ld a,045h		;5711	3e 45		> E
	call 000a2h		;5713	cd a2 00	. . .
	ld hl,0190eh		;5716	21 0e 19	! . .
	ld bc,00400h		;5719	01 00 04	. . .
l571ch:
	push hl			;571c	e5		.
	push bc			;571d	c5		.
	call sub_6229h		;571e	cd 29 62	. ) b
	pop bc			;5721	c1		.
	push bc			;5722	c5		.
	ld hl,0ec7ah		;5723	21 7a ec	! z .
	ld b,000h		;5726	06 00		. .
	add hl,bc		;5728	09		.
	ld b,04eh		;5729	06 4e		. N
	ld a,(hl)		;572b	7e		~
	add a,b			;572c	80		.
	call 000a2h		;572d	cd a2 00	. . .
	pop bc			;5730	c1		.
	pop hl			;5731	e1		.
	inc c			;5732	0c		.
	inc hl			;5733	23		#
	inc hl			;5734	23		#
	djnz l571ch		;5735	10 e5		. .
	ld hl,0050eh		;5737	21 0e 05	! . .
	ld (0e574h),hl		;573a	22 74 e5	" t .
	call sub_6229h		;573d	cd 29 62	. ) b
	ld hl,0ec7eh		;5740	21 7e ec	! ~ .
	ld b,004h		;5743	06 04		. .
l5745h:
	push bc			;5745	c5		.
	ld b,004h		;5746	06 04		. .
l5748h:
	push bc			;5748	c5		.
	push hl			;5749	e5		.
	call sub_5776h		;574a	cd 76 57	. v W
	ld hl,(0e574h)		;574d	2a 74 e5	* t .
	ld de,00500h		;5750	11 00 05	. . .
	add hl,de		;5753	19		.
	ld (0e574h),hl		;5754	22 74 e5	" t .
	call sub_6229h		;5757	cd 29 62	. ) b
	pop hl			;575a	e1		.
	pop bc			;575b	c1		.
	inc hl			;575c	23		#
	djnz l5748h		;575d	10 e9		. .
	push hl			;575f	e5		.
	ld hl,(0e574h)		;5760	2a 74 e5	* t .
	ld h,005h		;5763	26 05		& .
	ld de,00002h		;5765	11 02 00	. . .
	add hl,de		;5768	19		.
	ld (0e574h),hl		;5769	22 74 e5	" t .
	call sub_6229h		;576c	cd 29 62	. ) b
	pop hl			;576f	e1		.
	pop bc			;5770	c1		.
	djnz l5745h		;5771	10 d2		. .
	jp l579ch		;5773	c3 9c 57	. . W
sub_5776h:
	ld a,(hl)		;5776	7e		~
	ld d,a			;5777	57		W
	ld b,004h		;5778	06 04		. .
	ld c,001h		;577a	0e 01		. .
	ld e,030h		;577c	1e 30		. 0
l577eh:
	ld a,d			;577e	7a		z
	and c			;577f	a1		.
	jr z,l578dh		;5780	28 0b		( .
	bit 7,(hl)		;5782	cb 7e		. ~
	jr nz,l5789h		;5784	20 03		  .
	ld a,e			;5786	7b		{
	jr l578fh		;5787	18 06		. .
l5789h:
	ld a,0c2h		;5789	3e c2		> .
	jr l578fh		;578b	18 02		. .
l578dh:
	ld a,020h		;578d	3e 20		>  
l578fh:
	push bc			;578f	c5		.
	push de			;5790	d5		.
	call 000a2h		;5791	cd a2 00	. . .
	pop de			;5794	d1		.
	pop bc			;5795	c1		.
	sla c			;5796	cb 21		. !
	inc e			;5798	1c		.
	djnz l577eh		;5799	10 e3		. .
	ret			;579b	c9		.
l579ch:
	ld hl,01d0ch		;579c	21 0c 1d	! . .
	call sub_6229h		;579f	cd 29 62	. ) b
	ld hl,l8ab8h		;57a2	21 b8 8a	! . .
	call sub_60f3h		;57a5	cd f3 60	. . `
	ld hl,01d12h		;57a8	21 12 1d	! . .
	call sub_6229h		;57ab	cd 29 62	. ) b
	ld hl,l8abdh		;57ae	21 bd 8a	! . .
	call sub_60f3h		;57b1	cd f3 60	. . `
	ld hl,00117h		;57b4	21 17 01	! . .
	call sub_6229h		;57b7	cd 29 62	. ) b
	ld hl,l7ec8h		;57ba	21 c8 7e	! . ~
	call sub_60f3h		;57bd	cd f3 60	. . `
	ld hl,l8b2ah		;57c0	21 2a 8b	! * .
	call sub_60f3h		;57c3	cd f3 60	. . `
	call 00044h		;57c6	cd 44 00	. D .
l57c9h:
	call sub_40c8h		;57c9	cd c8 40	. . @
	ld a,(0ed18h)		;57cc	3a 18 ed	: . .
	and 002h		;57cf	e6 02		. .
	ret nz			;57d1	c0		.
	ld a,(0ed19h)		;57d2	3a 19 ed	: . .
	and 002h		;57d5	e6 02		. .
	ret nz			;57d7	c0		.
	call sub_57deh		;57d8	cd de 57	. . W
	halt			;57db	76		v
	jr l57c9h		;57dc	18 eb		. .
sub_57deh:
	ld hl,01d0eh		;57de	21 0e 1d	! . .
	call sub_6229h		;57e1	cd 29 62	. ) b
	ld hl,0090ah		;57e4	21 0a 09	! . .
	call sub_5823h		;57e7	cd 23 58	. # X
	ld a,02fh		;57ea	3e 2f		> /
	call 000a2h		;57ec	cd a2 00	. . .
	ld hl,00708h		;57ef	21 08 07	! . .
	call sub_5823h		;57f2	cd 23 58	. # X
	ld a,02fh		;57f5	3e 2f		> /
	call 000a2h		;57f7	cd a2 00	. . .
	ld hl,00b0ch		;57fa	21 0c 0b	! . .
	call sub_5823h		;57fd	cd 23 58	. # X
	ld hl,01d14h		;5800	21 14 1d	! . .
	call sub_6229h		;5803	cd 29 62	. ) b
	ld hl,00405h		;5806	21 05 04	! . .
	call sub_5823h		;5809	cd 23 58	. # X
	ld a,03ah		;580c	3e 3a		> :
	call 000a2h		;580e	cd a2 00	. . .
	ld hl,00203h		;5811	21 03 02	! . .
	call sub_5823h		;5814	cd 23 58	. # X
	ld a,03ah		;5817	3e 3a		> :
	call 000a2h		;5819	cd a2 00	. . .
	ld hl,00001h		;581c	21 01 00	! . .
	call sub_5823h		;581f	cd 23 58	. # X
	ret			;5822	c9		.
sub_5823h:
	ld a,(0002dh)		;5823	3a 2d 00	: - .
	or a			;5826	b7		.
	jp nz,l5833h		;5827	c2 33 58	. 3 X
	ld bc,00000h		;582a	01 00 00	. . .
	ld d,0ffh		;582d	16 ff		. .
	call sub_60fdh		;582f	cd fd 60	. . `
	ret			;5832	c9		.
l5833h:
	ld c,h			;5833	4c		L
	call sub_5862h		;5834	cd 62 58	. b X
	and 00fh		;5837	e6 0f		. .
	ld d,a			;5839	57		W
	ld c,l			;583a	4d		M
	call sub_5862h		;583b	cd 62 58	. b X
	and 00fh		;583e	e6 0f		. .
	ld e,a			;5840	5f		_
	call sub_5851h		;5841	cd 51 58	. Q X
	ld a,d			;5844	7a		z
	or e			;5845	b3		.
	ld d,a			;5846	57		W
	ld a,h			;5847	7c		|
	cp 00bh			;5848	fe 0b		. .
l584ah:
	call z,sub_5870h	;584a	cc 70 58	. p X
	call sub_60fdh		;584d	cd fd 60	. . `
	ret			;5850	c9		.
sub_5851h:
	ld bc,00000h		;5851	01 00 00	. . .
	sla e			;5854	cb 23		. #
	sla e			;5856	cb 23		. #
	sla e			;5858	cb 23		. #
	sla e			;585a	cb 23		. #
	xor a			;585c	af		.
	or e			;585d	b3		.
	ret nz			;585e	c0		.
	ld b,010h		;585f	06 10		. .
	ret			;5861	c9		.
sub_5862h:
	push bc			;5862	c5		.
	push de			;5863	d5		.
	push hl			;5864	e5		.
	ld ix,001f5h		;5865	dd 21 f5 01	. ! . .
	call 0015fh		;5869	cd 5f 01	. _ .
	pop hl			;586c	e1		.
	pop de			;586d	d1		.
	pop bc			;586e	c1		.
	ret			;586f	c9		.
sub_5870h:
	ld hl,0e474h		;5870	21 74 e4	! t .
	ld (hl),080h		;5873	36 80		6 .
	inc hl			;5875	23		#
	ld (hl),019h		;5876	36 19		6 .
	inc hl			;5878	23		#
	ld (hl),000h		;5879	36 00		6 .
	ld hl,0e477h		;587b	21 77 e4	! w .
	ld (hl),d		;587e	72		r
	inc hl			;587f	23		#
	ld (hl),000h		;5880	36 00		6 .
	inc hl			;5882	23		#
	ld (hl),000h		;5883	36 00		6 .
	ld de,0e474h		;5885	11 74 e4	. t .
	ld hl,0e477h		;5888	21 77 e4	! w .
	call sub_5d9fh		;588b	cd 9f 5d	. . ]
	ld hl,0e474h		;588e	21 74 e4	! t .
	ld d,(hl)		;5891	56		V
	inc hl			;5892	23		#
	ld c,(hl)		;5893	4e		N
	inc hl			;5894	23		#
	ld b,(hl)		;5895	46		F
	ret			;5896	c9		.
sub_5897h:
	call sub_622ch		;5897	cd 2c 62	. , b
	call 00041h		;589a	cd 41 00	. A .
	ld hl,08c76h		;589d	21 76 8c	! v .
	call sub_60f3h		;58a0	cd f3 60	. . `
	ld hl,l7ec8h		;58a3	21 c8 7e	! . ~
	call sub_60f3h		;58a6	cd f3 60	. . `
	ld hl,00104h		;58a9	21 04 01	! . .
	call sub_6229h		;58ac	cd 29 62	. ) b
	ld hl,l8c84h		;58af	21 84 8c	! . .
	call sub_60f3h		;58b2	cd f3 60	. . `
	ld hl,l7ec8h		;58b5	21 c8 7e	! . ~
	call sub_60f3h		;58b8	cd f3 60	. . `
	ld a,0ffh		;58bb	3e ff		> .
	ld (0e678h),a		;58bd	32 78 e6	2 x .
	ld hl,00906h		;58c0	21 06 09	! . .
	call sub_58edh		;58c3	cd ed 58	. . X
	ld hl,l7ec8h		;58c6	21 c8 7e	! . ~
	call sub_60f3h		;58c9	cd f3 60	. . `
	ld hl,00118h		;58cc	21 18 01	! . .
	call sub_6229h		;58cf	cd 29 62	. ) b
	ld hl,l8b2ah		;58d2	21 2a 8b	! * .
	call sub_60f3h		;58d5	cd f3 60	. . `
	call 00044h		;58d8	cd 44 00	. D .
l58dbh:
	call sub_40c8h		;58db	cd c8 40	. . @
	ld a,(0ed18h)		;58de	3a 18 ed	: . .
	and 002h		;58e1	e6 02		. .
	ret nz			;58e3	c0		.
	ld a,(0ed19h)		;58e4	3a 19 ed	: . .
	and 002h		;58e7	e6 02		. .
	ret nz			;58e9	c0		.
	halt			;58ea	76		v
	jr l58dbh		;58eb	18 ee		. .
sub_58edh:
	ld (0e674h),hl		;58ed	22 74 e6	" t .
	ld hl,l8cadh		;58f0	21 ad 8c	! . .
	ld de,0e68bh		;58f3	11 8b e6	. . .
	ld bc,00007h		;58f6	01 07 00	. . .
	ldir			;58f9	ed b0		. .
	xor a			;58fb	af		.
	ld (0e676h),a		;58fc	32 76 e6	2 v .
	ld (0e679h),a		;58ff	32 79 e6	2 y .
	ld bc,00400h		;5902	01 00 04	. . .
l5905h:
	push bc			;5905	c5		.
	ld a,c			;5906	79		y
	ld (0ed0eh),a		;5907	32 0e ed	2 . .
	ld hl,0e68dh		;590a	21 8d e6	! . .
	ld a,c			;590d	79		y
	add a,030h		;590e	c6 30		. 0
	ld (hl),a		;5910	77		w
	ld bc,00400h		;5911	01 00 04	. . .
l5914h:
	push bc			;5914	c5		.
	ld a,(0ed0eh)		;5915	3a 0e ed	: . .
	ld e,a			;5918	5f		_
	ld a,c			;5919	79		y
	ld (0ed0fh),a		;591a	32 0f ed	2 . .
	sla a			;591d	cb 27		. '
	sla a			;591f	cb 27		. '
	or e			;5921	b3		.
	ld (0ed13h),a		;5922	32 13 ed	2 . .
	ld hl,0ec7ah		;5925	21 7a ec	! z .
	ld d,000h		;5928	16 00		. .
	ld a,(0ed0eh)		;592a	3a 0e ed	: . .
	ld e,a			;592d	5f		_
	add hl,de		;592e	19		.
	ld a,(hl)		;592f	7e		~
	or a			;5930	b7		.
	jr z,l593bh		;5931	28 08		( .
	ld a,(0ed13h)		;5933	3a 13 ed	: . .
	set 7,a			;5936	cb ff		. .
	ld (0ed13h),a		;5938	32 13 ed	2 . .
l593bh:
	xor a			;593b	af		.
	ld (0e68ah),a		;593c	32 8a e6	2 . .
	exx			;593f	d9		.
	ld a,(0e676h)		;5940	3a 76 e6	: v .
	ld e,a			;5943	5f		_
	ld d,000h		;5944	16 00		. .
	ld hl,0ec7eh		;5946	21 7e ec	! ~ .
	add hl,de		;5949	19		.
	ld a,(hl)		;594a	7e		~
	ld (0e677h),a		;594b	32 77 e6	2 w .
	exx			;594e	d9		.
	ld a,(0e678h)		;594f	3a 78 e6	: x .
	ld e,a			;5952	5f		_
	ld a,(0e677h)		;5953	3a 77 e6	: w .
	or a			;5956	b7		.
	or e			;5957	b3		.
	jp z,l5a13h		;5958	ca 13 5a	. . Z
	ld a,0ffh		;595b	3e ff		> .
	ld (0e68ah),a		;595d	32 8a e6	2 . .
	ld hl,0e68fh		;5960	21 8f e6	! . .
	ld a,c			;5963	79		y
	add a,030h		;5964	c6 30		. 0
	ld (hl),a		;5966	77		w
	ld hl,0e68bh		;5967	21 8b e6	! . .
	call sub_60f3h		;596a	cd f3 60	. . `
	ld bc,00400h		;596d	01 00 04	. . .
l5970h:
	push bc			;5970	c5		.
	ld a,c			;5971	79		y
	ld (0ed10h),a		;5972	32 10 ed	2 . .
	ld hl,(0e674h)		;5975	2a 74 e6	* t .
	call sub_6229h		;5978	cd 29 62	. ) b
	call sub_447ah		;597b	cd 7a 44	. z D
	ld b,(hl)		;597e	46		F
	inc hl			;597f	23		#
	ld c,(hl)		;5980	4e		N
	ld a,b			;5981	78		x
	or c			;5982	b1		.
	jr z,l5994h		;5983	28 0f		( .
	call sub_6167h		;5985	cd 67 61	. g a
	ld a,04bh		;5988	3e 4b		> K
	call 000a2h		;598a	cd a2 00	. . .
	ld a,042h		;598d	3e 42		> B
	call 000a2h		;598f	cd a2 00	. . .
	jr l599fh		;5992	18 0b		. .
l5994h:
	push bc			;5994	c5		.
	ld b,006h		;5995	06 06		. .
l5997h:
	ld a,0c3h		;5997	3e c3		> .
	call 000a2h		;5999	cd a2 00	. . .
	djnz l5997h		;599c	10 f9		. .
	pop bc			;599e	c1		.
l599fh:
	pop bc			;599f	c1		.
	inc c			;59a0	0c		.
	ld hl,(0e674h)		;59a1	2a 74 e6	* t .
	ld de,00800h		;59a4	11 00 08	. . .
	add hl,de		;59a7	19		.
	ld (0e674h),hl		;59a8	22 74 e6	" t .
	ld a,(0e677h)		;59ab	3a 77 e6	: w .
	bit 7,a			;59ae	cb 7f		. .
	jr nz,l59b8h		;59b0	20 06		  .
	dec b			;59b2	05		.
	jp nz,l5970h		;59b3	c2 70 59	. p Y
	jr l5a00h		;59b6	18 48		. H
l59b8h:
	exx			;59b8	d9		.
	ld hl,(0e674h)		;59b9	2a 74 e6	* t .
	call sub_6229h		;59bc	cd 29 62	. ) b
	ld hl,l8cb4h		;59bf	21 b4 8c	! . .
	call sub_60f3h		;59c2	cd f3 60	. . `
	ld hl,(0e674h)		;59c5	2a 74 e6	* t .
	ld de,00800h		;59c8	11 00 08	. . .
	add hl,de		;59cb	19		.
	ld (0e674h),hl		;59cc	22 74 e6	" t .
	call sub_6229h		;59cf	cd 29 62	. ) b
	ld a,049h		;59d2	3e 49		> I
	call 000a2h		;59d4	cd a2 00	. . .
	ld a,04eh		;59d7	3e 4e		> N
	call 000a2h		;59d9	cd a2 00	. . .
	ld a,020h		;59dc	3e 20		>  
	call 000a2h		;59de	cd a2 00	. . .
	call sub_447ah		;59e1	cd 7a 44	. z D
	inc hl			;59e4	23		#
	inc hl			;59e5	23		#
	ld b,(hl)		;59e6	46		F
	inc hl			;59e7	23		#
	ld c,(hl)		;59e8	4e		N
	call sub_6167h		;59e9	cd 67 61	. g a
	ld hl,(0e674h)		;59ec	2a 74 e6	* t .
	ld de,00800h		;59ef	11 00 08	. . .
	add hl,de		;59f2	19		.
	ld (0e674h),hl		;59f3	22 74 e6	" t .
	call sub_6229h		;59f6	cd 29 62	. ) b
	ld hl,l8cbbh		;59f9	21 bb 8c	! . .
	call sub_60f3h		;59fc	cd f3 60	. . `
	exx			;59ff	d9		.
l5a00h:
	ld a,00dh		;5a00	3e 0d		> .
	call 000a2h		;5a02	cd a2 00	. . .
	ld a,00ah		;5a05	3e 0a		> .
	call 000a2h		;5a07	cd a2 00	. . .
	ld hl,(0e674h)		;5a0a	2a 74 e6	* t .
	ld h,009h		;5a0d	26 09		& .
	inc l			;5a0f	2c		,
	ld (0e674h),hl		;5a10	22 74 e6	" t .
l5a13h:
	ld a,(0e676h)		;5a13	3a 76 e6	: v .
	inc a			;5a16	3c		<
	ld (0e676h),a		;5a17	32 76 e6	2 v .
	pop bc			;5a1a	c1		.
	ld a,(0e68ah)		;5a1b	3a 8a e6	: . .
	or a			;5a1e	b7		.
	jr z,l5a36h		;5a1f	28 15		( .
	ld a,(0e679h)		;5a21	3a 79 e6	: y .
	ld d,000h		;5a24	16 00		. .
	ld e,a			;5a26	5f		_
	ld hl,0e67ah		;5a27	21 7a e6	! z .
	add hl,de		;5a2a	19		.
	ld a,(0ed13h)		;5a2b	3a 13 ed	: . .
	ld (hl),a		;5a2e	77		w
	ld a,(0e679h)		;5a2f	3a 79 e6	: y .
	inc a			;5a32	3c		<
	ld (0e679h),a		;5a33	32 79 e6	2 y .
l5a36h:
	inc c			;5a36	0c		.
	dec b			;5a37	05		.
	jp nz,l5914h		;5a38	c2 14 59	. . Y
	pop bc			;5a3b	c1		.
	inc c			;5a3c	0c		.
	dec b			;5a3d	05		.
	jp nz,l5905h		;5a3e	c2 05 59	. . Y
	ret			;5a41	c9		.
sub_5a42h:
	call sub_622ch		;5a42	cd 2c 62	. , b
	call 00041h		;5a45	cd 41 00	. A .
	call sub_4848h		;5a48	cd 48 48	. H H
	ld hl,00104h		;5a4b	21 04 01	! . .
	call sub_6229h		;5a4e	cd 29 62	. ) b
	ld hl,l8b4bh		;5a51	21 4b 8b	! K .
	call sub_60f3h		;5a54	cd f3 60	. . `
	ld hl,l7ec8h		;5a57	21 c8 7e	! . ~
	call sub_60f3h		;5a5a	cd f3 60	. . `
	ld hl,l8b63h		;5a5d	21 63 8b	! c .
	call sub_60f3h		;5a60	cd f3 60	. . `
	ld hl,l7f0ch		;5a63	21 0c 7f	! . .
	call sub_60f3h		;5a66	cd f3 60	. . `
	ld hl,l7f3eh		;5a69	21 3e 7f	! > .
	call sub_60f3h		;5a6c	cd f3 60	. . `
	call 00044h		;5a6f	cd 44 00	. D .
l5a72h:
	call sub_40c8h		;5a72	cd c8 40	. . @
	ld a,(0ed18h)		;5a75	3a 18 ed	: . .
	and 002h		;5a78	e6 02		. .
	jp nz,l5a86h		;5a7a	c2 86 5a	. . Z
	ld a,(0ed19h)		;5a7d	3a 19 ed	: . .
	and 002h		;5a80	e6 02		. .
	ret nz			;5a82	c0		.
	halt			;5a83	76		v
	jr l5a72h		;5a84	18 ec		. .
l5a86h:
	call sub_622ch		;5a86	cd 2c 62	. , b
	xor a			;5a89	af		.
	ld (0e477h),a		;5a8a	32 77 e4	2 w .
	ld bc,0010fh		;5a8d	01 0f 01	. . .
	call sub_6230h		;5a90	cd 30 62	. 0 b
	ld hl,00f0bh		;5a93	21 0b 0f	! . .
	call sub_6229h		;5a96	cd 29 62	. ) b
	ld hl,l8bd6h		;5a99	21 d6 8b	! . .
	call sub_60f3h		;5a9c	cd f3 60	. . `
	ld hl,l8bd0h		;5a9f	21 d0 8b	! . .
	call sub_60f3h		;5aa2	cd f3 60	. . `
	ld a,001h		;5aa5	3e 01		> .
	ld (0e474h),a		;5aa7	32 74 e4	2 t .
l5aaah:
	call sub_40c8h		;5aaa	cd c8 40	. . @
	ld a,(0ed17h)		;5aad	3a 17 ed	: . .
	and 002h		;5ab0	e6 02		. .
	jp nz,l5ae8h		;5ab2	c2 e8 5a	. . Z
	ld a,(0ed16h)		;5ab5	3a 16 ed	: . .
	and 002h		;5ab8	e6 02		. .
	jp nz,l5af4h		;5aba	c2 f4 5a	. . Z
	ld a,(0e474h)		;5abd	3a 74 e4	: t .
	cp 006h			;5ac0	fe 06		. .
	jp z,l5ba7h		;5ac2	ca a7 5b	. . [
	ld a,(0e477h)		;5ac5	3a 77 e4	: w .
	cp 078h			;5ac8	fe 78		. x
	jr z,l5ad7h		;5aca	28 0b		( .
	inc a			;5acc	3c		<
	ld (0e477h),a		;5acd	32 77 e4	2 w .
	cp 078h			;5ad0	fe 78		. x
	jr nz,l5ad7h		;5ad2	20 03		  .
	call sub_622ch		;5ad4	cd 2c 62	. , b
l5ad7h:
	call sub_5ce7h		;5ad7	cd e7 5c	. . \
	ld a,(0ed19h)		;5ada	3a 19 ed	: . .
	and 002h		;5add	e6 02		. .
	jr nz,l5ae4h		;5adf	20 03		  .
	halt			;5ae1	76		v
	jr l5aaah		;5ae2	18 c6		. .
l5ae4h:
	call sub_5cfah		;5ae4	cd fa 5c	. . \
	ret			;5ae7	c9		.
l5ae8h:
	ld a,(0e474h)		;5ae8	3a 74 e4	: t .
	inc a			;5aeb	3c		<
	cp 007h			;5aec	fe 07		. .
	jr nz,l5b00h		;5aee	20 10		  .
	ld a,001h		;5af0	3e 01		> .
	jr l5b00h		;5af2	18 0c		. .
l5af4h:
	ld a,(0e474h)		;5af4	3a 74 e4	: t .
	dec a			;5af7	3d		=
	cp 000h			;5af8	fe 00		. .
	jr nz,l5b00h		;5afa	20 04		  .
	ld a,006h		;5afc	3e 06		> .
	jr l5b00h		;5afe	18 00		. .
l5b00h:
	ld (0e474h),a		;5b00	32 74 e4	2 t .
	push af			;5b03	f5		.
	call sub_622ch		;5b04	cd 2c 62	. , b
	xor a			;5b07	af		.
	ld (0e477h),a		;5b08	32 77 e4	2 w .
	pop af			;5b0b	f1		.
	cp 001h			;5b0c	fe 01		. .
	jr nz,l5b21h		;5b0e	20 11		  .
	ld hl,00f0bh		;5b10	21 0b 0f	! . .
	call sub_6229h		;5b13	cd 29 62	. ) b
	ld hl,l8bd6h		;5b16	21 d6 8b	! . .
	call sub_60f3h		;5b19	cd f3 60	. . `
	ld bc,0010fh		;5b1c	01 0f 01	. . .
	jr l5b9bh		;5b1f	18 7a		. z
l5b21h:
	cp 002h			;5b21	fe 02		. .
	jr nz,l5b36h		;5b23	20 11		  .
	ld hl,00f0bh		;5b25	21 0b 0f	! . .
	call sub_6229h		;5b28	cd 29 62	. ) b
	ld hl,l8bdch		;5b2b	21 dc 8b	! . .
	call sub_60f3h		;5b2e	cd f3 60	. . `
	ld bc,00f01h		;5b31	01 01 0f	. . .
	jr l5b9bh		;5b34	18 65		. e
l5b36h:
	cp 003h			;5b36	fe 03		. .
	jr nz,l5b4bh		;5b38	20 11		  .
	ld hl,0100bh		;5b3a	21 0b 10	! . .
	call sub_6229h		;5b3d	cd 29 62	. ) b
	ld hl,l8be2h		;5b40	21 e2 8b	! . .
	call sub_60f3h		;5b43	cd f3 60	. . `
	ld bc,00109h		;5b46	01 09 01	. . .
	jr l5b9bh		;5b49	18 50		. P
l5b4bh:
	cp 004h			;5b4b	fe 04		. .
	jr nz,l5b60h		;5b4d	20 11		  .
	ld hl,00f0bh		;5b4f	21 0b 0f	! . .
	call sub_6229h		;5b52	cd 29 62	. ) b
	ld hl,l8be6h		;5b55	21 e6 8b	! . .
	call sub_60f3h		;5b58	cd f3 60	. . `
	ld bc,00103h		;5b5b	01 03 01	. . .
	jr l5b9bh		;5b5e	18 3b		. ;
l5b60h:
	cp 005h			;5b60	fe 05		. .
	jr nz,l5b75h		;5b62	20 11		  .
	ld hl,00f0bh		;5b64	21 0b 0f	! . .
	call sub_6229h		;5b67	cd 29 62	. ) b
	ld hl,l8bech		;5b6a	21 ec 8b	! . .
	call sub_60f3h		;5b6d	cd f3 60	. . `
	ld bc,00105h		;5b70	01 05 01	. . .
	jr l5b9bh		;5b73	18 26		. &
l5b75h:
	ld hl,00e0bh		;5b75	21 0b 0e	! . .
	call sub_6229h		;5b78	cd 29 62	. ) b
	ld hl,l8bf2h		;5b7b	21 f2 8b	! . .
	call sub_60f3h		;5b7e	cd f3 60	. . `
	ld hl,l8bd0h		;5b81	21 d0 8b	! . .
	call sub_60f3h		;5b84	cd f3 60	. . `
	ld bc,00102h		;5b87	01 02 01	. . .
	ld a,002h		;5b8a	3e 02		> .
	ld (0e475h),a		;5b8c	32 75 e4	2 u .
	ld a,008h		;5b8f	3e 08		> .
	ld (0e476h),a		;5b91	32 76 e4	2 v .
	xor a			;5b94	af		.
	ld (0e477h),a		;5b95	32 77 e4	2 w .
	jp l5ad7h		;5b98	c3 d7 5a	. . Z
l5b9bh:
	call sub_6230h		;5b9b	cd 30 62	. 0 b
	ld hl,l8bd0h		;5b9e	21 d0 8b	! . .
	call sub_60f3h		;5ba1	cd f3 60	. . `
	jp l5ad7h		;5ba4	c3 d7 5a	. . Z
l5ba7h:
	ld a,(0ed14h)		;5ba7	3a 14 ed	: . .
	and 002h		;5baa	e6 02		. .
	call nz,sub_5be1h	;5bac	c4 e1 5b	. . [
	ld a,(0ed15h)		;5baf	3a 15 ed	: . .
	and 002h		;5bb2	e6 02		. .
	call nz,sub_5befh	;5bb4	c4 ef 5b	. . [
	ld a,(0e476h)		;5bb7	3a 76 e4	: v .
	ld b,a			;5bba	47		G
	ld a,(0e477h)		;5bbb	3a 77 e4	: w .
	inc a			;5bbe	3c		<
	ld (0e477h),a		;5bbf	32 77 e4	2 w .
	sub b			;5bc2	90		.
	jp c,l5ad7h		;5bc3	da d7 5a	. . Z
	xor a			;5bc6	af		.
	ld (0e477h),a		;5bc7	32 77 e4	2 w .
	ld a,(0e475h)		;5bca	3a 75 e4	: u .
	ld b,001h		;5bcd	06 01		. .
	ld c,a			;5bcf	4f		O
	inc a			;5bd0	3c		<
	cp 010h			;5bd1	fe 10		. .
	jp nz,l5bd8h		;5bd3	c2 d8 5b	. . [
	ld a,002h		;5bd6	3e 02		> .
l5bd8h:
	ld (0e475h),a		;5bd8	32 75 e4	2 u .
	call sub_6230h		;5bdb	cd 30 62	. 0 b
	jp l5ad7h		;5bde	c3 d7 5a	. . Z
sub_5be1h:
	ld a,(0e476h)		;5be1	3a 76 e4	: v .
	cp 001h			;5be4	fe 01		. .
	ret z			;5be6	c8		.
	srl a			;5be7	cb 3f		. ?
	ld (0e476h),a		;5be9	32 76 e4	2 v .
	jp sub_5cb4h		;5bec	c3 b4 5c	. . \
sub_5befh:
	ld a,(0e476h)		;5bef	3a 76 e4	: v .
	cp 040h			;5bf2	fe 40		. @
	ret z			;5bf4	c8		.
	sla a			;5bf5	cb 27		. '
	ld (0e476h),a		;5bf7	32 76 e4	2 v .
	jp sub_5ccdh		;5bfa	c3 cd 5c	. . \
sub_5bfdh:
	call sub_622ch		;5bfd	cd 2c 62	. , b
	call 00041h		;5c00	cd 41 00	. A .
	call sub_4848h		;5c03	cd 48 48	. H H
	ld hl,00104h		;5c06	21 04 01	! . .
	call sub_6229h		;5c09	cd 29 62	. ) b
	ld hl,l8bfah		;5c0c	21 fa 8b	! . .
	call sub_60f3h		;5c0f	cd f3 60	. . `
	ld hl,l7ec8h		;5c12	21 c8 7e	! . ~
	call sub_60f3h		;5c15	cd f3 60	. . `
	ld hl,l8c0fh		;5c18	21 0f 8c	! . .
	call sub_60f3h		;5c1b	cd f3 60	. . `
	ld hl,l7f0ch		;5c1e	21 0c 7f	! . .
	call sub_60f3h		;5c21	cd f3 60	. . `
	ld hl,l7f3eh		;5c24	21 3e 7f	! > .
	call sub_60f3h		;5c27	cd f3 60	. . `
	call 00044h		;5c2a	cd 44 00	. D .
l5c2dh:
	call sub_40c8h		;5c2d	cd c8 40	. . @
	ld a,(0ed18h)		;5c30	3a 18 ed	: . .
	and 002h		;5c33	e6 02		. .
	jp nz,l5c41h		;5c35	c2 41 5c	. A \
	ld a,(0ed19h)		;5c38	3a 19 ed	: . .
	and 002h		;5c3b	e6 02		. .
	ret nz			;5c3d	c0		.
	halt			;5c3e	76		v
	jr l5c2dh		;5c3f	18 ec		. .
l5c41h:
	ld a,001h		;5c41	3e 01		> .
	ld (0ec74h),a		;5c43	32 74 ec	2 t .
	ld bc,00f04h		;5c46	01 04 0f	. . .
	ld de,00400h		;5c49	11 00 04	. . .
	call sub_5df3h		;5c4c	cd f3 5d	. . ]
	ld bc,l9f03h		;5c4f	01 03 9f	. . .
	call 00047h		;5c52	cd 47 00	. G .
	ld bc,00004h		;5c55	01 04 00	. . .
	call 00047h		;5c58	cd 47 00	. G .
	call 00041h		;5c5b	cd 41 00	. A .
	ld a,0f4h		;5c5e	3e f4		> .
	ld bc,01800h		;5c60	01 00 18	. . .
	ld hl,02000h		;5c63	21 00 20	! .  
	call 00056h		;5c66	cd 56 00	. V .
	ld bc,00331h		;5c69	01 31 03	. 1 .
	ld hl,01800h		;5c6c	21 00 18	! . .
l5c6fh:
	push bc			;5c6f	c5		.
	push hl			;5c70	e5		.
	ld a,c			;5c71	79		y
	ld bc,00100h		;5c72	01 00 01	. . .
	call 00056h		;5c75	cd 56 00	. V .
	pop hl			;5c78	e1		.
	pop bc			;5c79	c1		.
	inc c			;5c7a	0c		.
	ld de,00100h		;5c7b	11 00 01	. . .
	add hl,de		;5c7e	19		.
	djnz l5c6fh		;5c7f	10 ee		. .
	ld bc,00800h		;5c81	01 00 08	. . .
	ld de,00000h		;5c84	11 00 00	. . .
	ld hl,(00004h)		;5c87	2a 04 00	* . .
	call 0005ch		;5c8a	cd 5c 00	. \ .
	ld b,003h		;5c8d	06 03		. .
	ld de,01800h		;5c8f	11 00 18	. . .
	ld hl,l8c56h		;5c92	21 56 8c	! V .
l5c95h:
	push bc			;5c95	c5		.
	push de			;5c96	d5		.
	push hl			;5c97	e5		.
	ld bc,00020h		;5c98	01 20 00	.   .
	call 0005ch		;5c9b	cd 5c 00	. \ .
	pop hl			;5c9e	e1		.
	pop de			;5c9f	d1		.
	pop bc			;5ca0	c1		.
	inc d			;5ca1	14		.
	djnz l5c95h		;5ca2	10 f1		. .
	call 00044h		;5ca4	cd 44 00	. D .
l5ca7h:
	call sub_40c8h		;5ca7	cd c8 40	. . @
	ld a,(0ed19h)		;5caa	3a 19 ed	: . .
	and 002h		;5cad	e6 02		. .
	ret nz			;5caf	c0		.
	halt			;5cb0	76		v
	jp l5ca7h		;5cb1	c3 a7 5c	. . \
sub_5cb4h:
	di			;5cb4	f3		.
	xor a			;5cb5	af		.
	out (0a0h),a		;5cb6	d3 a0		. .
	ld a,0bah		;5cb8	3e ba		> .
	out (0a1h),a		;5cba	d3 a1		. .
	ld a,001h		;5cbc	3e 01		> .
	out (0a0h),a		;5cbe	d3 a0		. .
	xor a			;5cc0	af		.
	out (0a1h),a		;5cc1	d3 a1		. .
	ld a,008h		;5cc3	3e 08		> .
	out (0a0h),a		;5cc5	d3 a0		. .
	ld a,00fh		;5cc7	3e 0f		> .
	out (0a1h),a		;5cc9	d3 a1		. .
	ei			;5ccb	fb		.
	ret			;5ccc	c9		.
sub_5ccdh:
	di			;5ccd	f3		.
	xor a			;5cce	af		.
	out (0a0h),a		;5ccf	d3 a0		. .
	ld a,018h		;5cd1	3e 18		> .
	out (0a1h),a		;5cd3	d3 a1		. .
	ld a,001h		;5cd5	3e 01		> .
	out (0a0h),a		;5cd7	d3 a0		. .
	ld a,001h		;5cd9	3e 01		> .
	out (0a1h),a		;5cdb	d3 a1		. .
	ld a,008h		;5cdd	3e 08		> .
	out (0a0h),a		;5cdf	d3 a0		. .
	ld a,00fh		;5ce1	3e 0f		> .
	out (0a1h),a		;5ce3	d3 a1		. .
	ei			;5ce5	fb		.
	ret			;5ce6	c9		.
sub_5ce7h:
	di			;5ce7	f3		.
	ld a,008h		;5ce8	3e 08		> .
	out (0a0h),a		;5cea	d3 a0		. .
	in a,(0a2h)		;5cec	db a2		. .
	ei			;5cee	fb		.
	or a			;5cef	b7		.
	ret z			;5cf0	c8		.
	di			;5cf1	f3		.
	dec a			;5cf2	3d		=
	out (0a1h),a		;5cf3	d3 a1		. .
	ei			;5cf5	fb		.
	or a			;5cf6	b7		.
	ret nz			;5cf7	c0		.
	jr sub_5cfah		;5cf8	18 00		. .
sub_5cfah:
	di			;5cfa	f3		.
	xor a			;5cfb	af		.
	out (0a0h),a		;5cfc	d3 a0		. .
	xor a			;5cfe	af		.
	out (0a1h),a		;5cff	d3 a1		. .
	ld a,001h		;5d01	3e 01		> .
	out (0a0h),a		;5d03	d3 a0		. .
	xor a			;5d05	af		.
	out (0a1h),a		;5d06	d3 a1		. .
	ld a,008h		;5d08	3e 08		> .
	out (0a0h),a		;5d0a	d3 a0		. .
	xor a			;5d0c	af		.
	out (0a1h),a		;5d0d	d3 a1		. .
	ei			;5d0f	fb		.
	ret			;5d10	c9		.
sub_5d11h:
	ld b,(hl)		;5d11	46		F
	inc hl			;5d12	23		#
	ld c,(hl)		;5d13	4e		N
	inc hl			;5d14	23		#
	push hl			;5d15	e5		.
	ld hl,0e46eh		;5d16	21 6e e4	! n .
	ld (hl),b		;5d19	70		p
	inc hl			;5d1a	23		#
	ld (hl),c		;5d1b	71		q
	pop hl			;5d1c	e1		.
	ld b,(hl)		;5d1d	46		F
	inc hl			;5d1e	23		#
	ld c,(hl)		;5d1f	4e		N
	inc hl			;5d20	23		#
	push hl			;5d21	e5		.
	ld hl,0e470h		;5d22	21 70 e4	! p .
	ld (hl),b		;5d25	70		p
	inc hl			;5d26	23		#
	ld (hl),c		;5d27	71		q
	pop hl			;5d28	e1		.
	push hl			;5d29	e5		.
	push de			;5d2a	d5		.
	ld d,h			;5d2b	54		T
	ld e,l			;5d2c	5d		]
	ld hl,0e472h		;5d2d	21 72 e4	! r .
	ld (hl),d		;5d30	72		r
	inc hl			;5d31	23		#
	ld (hl),e		;5d32	73		s
	pop de			;5d33	d1		.
	pop hl			;5d34	e1		.
l5d35h:
	ld a,(hl)		;5d35	7e		~
	and 0c0h		;5d36	e6 c0		. .
	cp 0c0h			;5d38	fe c0		. .
	jr z,l5d48h		;5d3a	28 0c		( .
	ld a,(hl)		;5d3c	7e		~
	ld (de),a		;5d3d	12		.
	inc hl			;5d3e	23		#
	inc de			;5d3f	13		.
	dec bc			;5d40	0b		.
	ld a,b			;5d41	78		x
	or c			;5d42	b1		.
	jr nz,l5d35h		;5d43	20 f0		  .
	jp l5d5fh		;5d45	c3 5f 5d	. _ ]
l5d48h:
	push bc			;5d48	c5		.
	ld a,(hl)		;5d49	7e		~
	and 03fh		;5d4a	e6 3f		. ?
	ld b,a			;5d4c	47		G
	inc hl			;5d4d	23		#
	ld a,(hl)		;5d4e	7e		~
	ld c,a			;5d4f	4f		O
	inc hl			;5d50	23		#
l5d51h:
	ld a,c			;5d51	79		y
	ld (de),a		;5d52	12		.
	inc de			;5d53	13		.
	dec b			;5d54	05		.
	jr nz,l5d51h		;5d55	20 fa		  .
	pop bc			;5d57	c1		.
	dec bc			;5d58	0b		.
	dec bc			;5d59	0b		.
	ld a,b			;5d5a	78		x
	or c			;5d5b	b1		.
	jp nz,l5d35h		;5d5c	c2 35 5d	. 5 ]
l5d5fh:
	ret			;5d5f	c9		.
sub_5d60h:
	ld b,078h		;5d60	06 78		. x
l5d62h:
	ei			;5d62	fb		.
	nop			;5d63	00		.
	nop			;5d64	00		.
	halt			;5d65	76		v
	nop			;5d66	00		.
	nop			;5d67	00		.
	djnz l5d62h		;5d68	10 f8		. .
	ret			;5d6a	c9		.
sub_5d6bh:
	ld hl,l5d7dh		;5d6b	21 7d 5d	! } ]
	ld (0fd9bh),hl		;5d6e	22 9b fd	" . .
	ld a,0c3h		;5d71	3e c3		> .
	ld (0fd9ah),a		;5d73	32 9a fd	2 . .
	ret			;5d76	c9		.
	ld a,0c9h		;5d77	3e c9		> .
	ld (0fd9ah),a		;5d79	32 9a fd	2 . .
	ret			;5d7c	c9		.
l5d7dh:
	call 0013eh		;5d7d	cd 3e 01	. > .
	bit 7,a			;5d80	cb 7f		. .
	ret nz			;5d82	c0		.
	ei			;5d83	fb		.
	halt			;5d84	76		v
	ret			;5d85	c9		.
sub_5d86h:
	ld a,(0e465h)		;5d86	3a 65 e4	: e .
	ld b,a			;5d89	47		G
l5d8ah:
	add a,001h		;5d8a	c6 01		. .
	rlca			;5d8c	07		.
	add a,00bh		;5d8d	c6 0b		. .
	rlca			;5d8f	07		.
	add a,01fh		;5d90	c6 1f		. .
	rlca			;5d92	07		.
	add a,029h		;5d93	c6 29		. )
	cp b			;5d95	b8		.
	jr nz,l5d9bh		;5d96	20 03		  .
	inc a			;5d98	3c		<
	jr l5d8ah		;5d99	18 ef		. .
l5d9bh:
	ld (0e465h),a		;5d9b	32 65 e4	2 e .
	ret			;5d9e	c9		.
sub_5d9fh:
	ld b,003h		;5d9f	06 03		. .
	or a			;5da1	b7		.
l5da2h:
	ld a,(de)		;5da2	1a		.
	adc a,(hl)		;5da3	8e		.
	daa			;5da4	27		'
	ld (de),a		;5da5	12		.
	inc de			;5da6	13		.
	inc hl			;5da7	23		#
	djnz l5da2h		;5da8	10 f8		. .
	ret			;5daa	c9		.
sub_5dabh:
	ld b,003h		;5dab	06 03		. .
	or a			;5dad	b7		.
l5daeh:
	ld a,(de)		;5dae	1a		.
	sbc a,(hl)		;5daf	9e		.
	daa			;5db0	27		'
	ld (de),a		;5db1	12		.
	inc de			;5db2	13		.
	inc hl			;5db3	23		#
	djnz l5daeh		;5db4	10 f8		. .
	ret			;5db6	c9		.
sub_5db7h:
	push bc			;5db7	c5		.
	push de			;5db8	d5		.
	xor a			;5db9	af		.
	call 000c3h		;5dba	cd c3 00	. . .
	pop de			;5dbd	d1		.
	pop bc			;5dbe	c1		.
	ld a,e			;5dbf	7b		{
	ld (0f3aeh),a		;5dc0	32 ae f3	2 . .
	ld hl,0f3e9h		;5dc3	21 e9 f3	! . .
	ld (hl),b		;5dc6	70		p
	inc l			;5dc7	2c		,
	ld (hl),c		;5dc8	71		q
	inc l			;5dc9	2c		,
	ld (hl),001h		;5dca	36 01		6 .
	call 00062h		;5dcc	cd 62 00	. b .
	call sub_5e2bh		;5dcf	cd 2b 5e	. + ^
	jp 0006ch		;5dd2	c3 6c 00	. l .
sub_5dd5h:
	push bc			;5dd5	c5		.
	push de			;5dd6	d5		.
	xor a			;5dd7	af		.
	call 000c3h		;5dd8	cd c3 00	. . .
	pop de			;5ddb	d1		.
	pop bc			;5ddc	c1		.
	ld a,e			;5ddd	7b		{
	ld (0f3afh),a		;5dde	32 af f3	2 . .
	ld hl,0f3e9h		;5de1	21 e9 f3	! . .
	ld (hl),b		;5de4	70		p
	inc l			;5de5	2c		,
	ld (hl),c		;5de6	71		q
	inc l			;5de7	2c		,
	ld (hl),001h		;5de8	36 01		6 .
	call 00062h		;5dea	cd 62 00	. b .
	call sub_5e2bh		;5ded	cd 2b 5e	. + ^
	jp 0006fh		;5df0	c3 6f 00	. o .
sub_5df3h:
	push bc			;5df3	c5		.
	push de			;5df4	d5		.
	xor a			;5df5	af		.
	call 000c3h		;5df6	cd c3 00	. . .
	pop de			;5df9	d1		.
	pop bc			;5dfa	c1		.
	ld hl,0f3e9h		;5dfb	21 e9 f3	! . .
	ld (hl),b		;5dfe	70		p
	inc l			;5dff	2c		,
	ld (hl),c		;5e00	71		q
	inc l			;5e01	2c		,
	ld (hl),d		;5e02	72		r
	call 00062h		;5e03	cd 62 00	. b .
	call sub_5e2bh		;5e06	cd 2b 5e	. + ^
	jp 00072h		;5e09	c3 72 00	. r .
sub_5e0ch:
	push bc			;5e0c	c5		.
	push de			;5e0d	d5		.
	xor a			;5e0e	af		.
	call 000c3h		;5e0f	cd c3 00	. . .
	pop de			;5e12	d1		.
	pop bc			;5e13	c1		.
	ld hl,0f3e9h		;5e14	21 e9 f3	! . .
	ld (hl),b		;5e17	70		p
	inc l			;5e18	2c		,
	ld (hl),c		;5e19	71		q
	inc l			;5e1a	2c		,
	ld (hl),d		;5e1b	72		r
	call 00062h		;5e1c	cd 62 00	. b .
	call sub_5e2bh		;5e1f	cd 2b 5e	. + ^
	jp 00075h		;5e22	c3 75 00	. u .
	jp 000cfh		;5e25	c3 cf 00	. . .
sub_5e28h:
	jp 000cch		;5e28	c3 cc 00	. . .
sub_5e2bh:
	di			;5e2b	f3		.
	ld bc,00200h		;5e2c	01 00 02	. . .
	call 00047h		;5e2f	cd 47 00	. G .
	ld bc,0e001h		;5e32	01 01 e0	. . .
	call 00047h		;5e35	cd 47 00	. G .
	ei			;5e38	fb		.
	ret			;5e39	c9		.
	di			;5e3a	f3		.
	ld a,b			;5e3b	78		x
	out (0a0h),a		;5e3c	d3 a0		. .
	ld a,c			;5e3e	79		y
	out (0a1h),a		;5e3f	d3 a1		. .
	ei			;5e41	fb		.
	ret			;5e42	c9		.
sub_5e43h:
	di			;5e43	f3		.
	ld a,007h		;5e44	3e 07		> .
	out (0a0h),a		;5e46	d3 a0		. .
	ld a,038h		;5e48	3e 38		> 8
	and 03fh		;5e4a	e6 3f		. ?
	or 080h			;5e4c	f6 80		. .
	out (0a1h),a		;5e4e	d3 a1		. .
	xor a			;5e50	af		.
	out (0a0h),a		;5e51	d3 a0		. .
	xor a			;5e53	af		.
	out (0a1h),a		;5e54	d3 a1		. .
	ld a,001h		;5e56	3e 01		> .
	out (0a0h),a		;5e58	d3 a0		. .
	xor a			;5e5a	af		.
	out (0a1h),a		;5e5b	d3 a1		. .
	ld a,008h		;5e5d	3e 08		> .
	out (0a0h),a		;5e5f	d3 a0		. .
	xor a			;5e61	af		.
	out (0a1h),a		;5e62	d3 a1		. .
	ld a,002h		;5e64	3e 02		> .
	out (0a0h),a		;5e66	d3 a0		. .
	xor a			;5e68	af		.
	out (0a1h),a		;5e69	d3 a1		. .
	ld a,003h		;5e6b	3e 03		> .
	out (0a0h),a		;5e6d	d3 a0		. .
	xor a			;5e6f	af		.
	out (0a1h),a		;5e70	d3 a1		. .
	ld a,009h		;5e72	3e 09		> .
	out (0a0h),a		;5e74	d3 a0		. .
	xor a			;5e76	af		.
	out (0a1h),a		;5e77	d3 a1		. .
	ld a,004h		;5e79	3e 04		> .
	out (0a0h),a		;5e7b	d3 a0		. .
	xor a			;5e7d	af		.
	out (0a1h),a		;5e7e	d3 a1		. .
	ld a,005h		;5e80	3e 05		> .
	out (0a0h),a		;5e82	d3 a0		. .
	xor a			;5e84	af		.
	out (0a1h),a		;5e85	d3 a1		. .
	ld a,00ah		;5e87	3e 0a		> .
	out (0a0h),a		;5e89	d3 a0		. .
	xor a			;5e8b	af		.
	out (0a1h),a		;5e8c	d3 a1		. .
	ld a,006h		;5e8e	3e 06		> .
	out (0a0h),a		;5e90	d3 a0		. .
	xor a			;5e92	af		.
	out (0a1h),a		;5e93	d3 a1		. .
	ei			;5e95	fb		.
	ret			;5e96	c9		.
sub_5e97h:
	di			;5e97	f3		.
	ld a,00fh		;5e98	3e 0f		> .
	out (0a0h),a		;5e9a	d3 a0		. .
	out (0a1h),a		;5e9c	d3 a1		. .
	ld a,00eh		;5e9e	3e 0e		> .
	out (0a0h),a		;5ea0	d3 a0		. .
	ei			;5ea2	fb		.
	in a,(0a2h)		;5ea3	db a2		. .
	ld c,a			;5ea5	4f		O
	ld hl,0e3d9h		;5ea6	21 d9 e3	! . .
	ld b,001h		;5ea9	06 01		. .
	call sub_5f19h		;5eab	cd 19 5f	. . _
	ld hl,0e3dah		;5eae	21 da e3	! . .
	ld b,002h		;5eb1	06 02		. .
	call sub_5f19h		;5eb3	cd 19 5f	. . _
	ld hl,0e3dbh		;5eb6	21 db e3	! . .
	ld b,004h		;5eb9	06 04		. .
	call sub_5f19h		;5ebb	cd 19 5f	. . _
	ld hl,0e3dch		;5ebe	21 dc e3	! . .
	ld b,008h		;5ec1	06 08		. .
	call sub_5f19h		;5ec3	cd 19 5f	. . _
	ld hl,0e3ddh		;5ec6	21 dd e3	! . .
	ld b,010h		;5ec9	06 10		. .
	call sub_5f19h		;5ecb	cd 19 5f	. . _
	ld hl,0e3deh		;5ece	21 de e3	! . .
	ld b,020h		;5ed1	06 20		.  
	call sub_5f19h		;5ed3	cd 19 5f	. . _
	ret			;5ed6	c9		.
sub_5ed7h:
	di			;5ed7	f3		.
	ld a,00fh		;5ed8	3e 0f		> .
	out (0a0h),a		;5eda	d3 a0		. .
	ld a,04fh		;5edc	3e 4f		> O
	out (0a1h),a		;5ede	d3 a1		. .
	ld a,00eh		;5ee0	3e 0e		> .
	out (0a0h),a		;5ee2	d3 a0		. .
	ei			;5ee4	fb		.
	in a,(0a2h)		;5ee5	db a2		. .
	ld c,a			;5ee7	4f		O
	ld hl,0e3dfh		;5ee8	21 df e3	! . .
	ld b,001h		;5eeb	06 01		. .
	call sub_5f19h		;5eed	cd 19 5f	. . _
	ld hl,0e3e0h		;5ef0	21 e0 e3	! . .
	ld b,002h		;5ef3	06 02		. .
	call sub_5f19h		;5ef5	cd 19 5f	. . _
	ld hl,0e3e1h		;5ef8	21 e1 e3	! . .
	ld b,004h		;5efb	06 04		. .
	call sub_5f19h		;5efd	cd 19 5f	. . _
	ld hl,0e3e2h		;5f00	21 e2 e3	! . .
	ld b,008h		;5f03	06 08		. .
	call sub_5f19h		;5f05	cd 19 5f	. . _
	ld hl,0e3e3h		;5f08	21 e3 e3	! . .
	ld b,010h		;5f0b	06 10		. .
	call sub_5f19h		;5f0d	cd 19 5f	. . _
	ld hl,0e3e4h		;5f10	21 e4 e3	! . .
	ld b,020h		;5f13	06 20		.  
	call sub_5f19h		;5f15	cd 19 5f	. . _
	ret			;5f18	c9		.
sub_5f19h:
	ld a,c			;5f19	79		y
	and b			;5f1a	a0		.
	jr z,l5f28h		;5f1b	28 0b		( .
	ld a,(hl)		;5f1d	7e		~
	and 008h		;5f1e	e6 08		. .
	jr z,l5f25h		;5f20	28 03		( .
	ld (hl),004h		;5f22	36 04		6 .
	ret			;5f24	c9		.
l5f25h:
	ld (hl),000h		;5f25	36 00		6 .
	ret			;5f27	c9		.
l5f28h:
	ld a,(hl)		;5f28	7e		~
	and 008h		;5f29	e6 08		. .
	jr z,l5f30h		;5f2b	28 03		( .
	ld (hl),009h		;5f2d	36 09		6 .
	ret			;5f2f	c9		.
l5f30h:
	ld (hl),00bh		;5f30	36 0b		6 .
	ret			;5f32	c9		.
sub_5f33h:
	di			;5f33	f3		.
	ld d,000h		;5f34	16 00		. .
	ld hl,0e380h		;5f36	21 80 e3	! . .
	ld bc,00000h		;5f39	01 00 00	. . .
l5f3ch:
	ld c,001h		;5f3c	0e 01		. .
l5f3eh:
	call sub_5f58h		;5f3e	cd 58 5f	. X _
	inc hl			;5f41	23		#
	ld a,c			;5f42	79		y
	cp 080h			;5f43	fe 80		. .
	jr z,l5f4bh		;5f45	28 04		( .
	sla c			;5f47	cb 21		. !
	jr l5f3eh		;5f49	18 f3		. .
l5f4bh:
	inc b			;5f4b	04		.
	ld a,b			;5f4c	78		x
	cp 00bh			;5f4d	fe 0b		. .
	jr nz,l5f3ch		;5f4f	20 eb		  .
	ei			;5f51	fb		.
	call sub_5f7ch		;5f52	cd 7c 5f	. | _
l5f55h:
	jp 00156h		;5f55	c3 56 01	. V .
sub_5f58h:
	in a,(0aah)		;5f58	db aa		. .
	and 0f0h		;5f5a	e6 f0		. .
	or b			;5f5c	b0		.
	out (0aah),a		;5f5d	d3 aa		. .
	in a,(0a9h)		;5f5f	db a9		. .
	and c			;5f61	a1		.
	jr z,l5f6fh		;5f62	28 0b		( .
	ld a,(hl)		;5f64	7e		~
	and 008h		;5f65	e6 08		. .
	jr z,l5f6ch		;5f67	28 03		( .
	ld (hl),004h		;5f69	36 04		6 .
	ret			;5f6b	c9		.
l5f6ch:
	ld (hl),000h		;5f6c	36 00		6 .
	ret			;5f6e	c9		.
l5f6fh:
	ld d,0ffh		;5f6f	16 ff		. .
	ld a,(hl)		;5f71	7e		~
	and 008h		;5f72	e6 08		. .
	jr z,l5f79h		;5f74	28 03		( .
	ld (hl),009h		;5f76	36 09		6 .
	ret			;5f78	c9		.
l5f79h:
	ld (hl),00bh		;5f79	36 0b		6 .
	ret			;5f7b	c9		.
sub_5f7ch:
	ld hl,0e3d8h		;5f7c	21 d8 e3	! . .
	ld a,d			;5f7f	7a		z
	cp 0ffh			;5f80	fe ff		. .
	jr z,l5f8fh		;5f82	28 0b		( .
	ld a,(hl)		;5f84	7e		~
	and 008h		;5f85	e6 08		. .
	jr z,l5f8ch		;5f87	28 03		( .
	ld (hl),004h		;5f89	36 04		6 .
	ret			;5f8b	c9		.
l5f8ch:
	ld (hl),000h		;5f8c	36 00		6 .
	ret			;5f8e	c9		.
l5f8fh:
	ld a,(hl)		;5f8f	7e		~
	and 008h		;5f90	e6 08		. .
	jr z,l5f97h		;5f92	28 03		( .
	ld (hl),009h		;5f94	36 09		6 .
	ret			;5f96	c9		.
l5f97h:
	ld (hl),00bh		;5f97	36 0b		6 .
	ret			;5f99	c9		.
	push hl			;5f9a	e5		.
	call 00041h		;5f9b	cd 41 00	. A .
	ld hl,01800h		;5f9e	21 00 18	! . .
	ld bc,00300h		;5fa1	01 00 03	. . .
	xor a			;5fa4	af		.
	call 00056h		;5fa5	cd 56 00	. V .
	pop hl			;5fa8	e1		.
	ld de,00000h		;5fa9	11 00 00	. . .
	call sub_5fe2h		;5fac	cd e2 5f	. . _
	ld de,00800h		;5faf	11 00 08	. . .
	call sub_5fe2h		;5fb2	cd e2 5f	. . _
	ld de,01000h		;5fb5	11 00 10	. . .
	call sub_5fe2h		;5fb8	cd e2 5f	. . _
	ld de,02000h		;5fbb	11 00 20	. .  
	call sub_5fe2h		;5fbe	cd e2 5f	. . _
	ld de,02800h		;5fc1	11 00 28	. . (
	call sub_5fe2h		;5fc4	cd e2 5f	. . _
	ld de,03000h		;5fc7	11 00 30	. . 0
	call sub_5fe2h		;5fca	cd e2 5f	. . _
	ld de,01800h		;5fcd	11 00 18	. . .
	call sub_5fe2h		;5fd0	cd e2 5f	. . _
	ld de,01900h		;5fd3	11 00 19	. . .
	call sub_5fe2h		;5fd6	cd e2 5f	. . _
	ld de,01a00h		;5fd9	11 00 1a	. . .
	call sub_5fe2h		;5fdc	cd e2 5f	. . _
	jp 00044h		;5fdf	c3 44 00	. D .
sub_5fe2h:
	ld b,(hl)		;5fe2	46		F
	inc hl			;5fe3	23		#
	ld c,(hl)		;5fe4	4e		N
	inc hl			;5fe5	23		#
	push hl			;5fe6	e5		.
	push bc			;5fe7	c5		.
	call 0005ch		;5fe8	cd 5c 00	. \ .
	pop bc			;5feb	c1		.
	pop hl			;5fec	e1		.
	add hl,bc		;5fed	09		.
	ret			;5fee	c9		.
sub_5fefh:
	push hl			;5fef	e5		.
	call 00041h		;5ff0	cd 41 00	. A .
	ld hl,01800h		;5ff3	21 00 18	! . .
	ld bc,00300h		;5ff6	01 00 03	. . .
	xor a			;5ff9	af		.
	call 00056h		;5ffa	cd 56 00	. V .
	pop hl			;5ffd	e1		.
	ld de,00000h		;5ffe	11 00 00	. . .
	call sub_6037h		;6001	cd 37 60	. 7 `
	ld de,00800h		;6004	11 00 08	. . .
	call sub_6037h		;6007	cd 37 60	. 7 `
	ld de,01000h		;600a	11 00 10	. . .
	call sub_6037h		;600d	cd 37 60	. 7 `
	ld de,02000h		;6010	11 00 20	. .  
	call sub_6037h		;6013	cd 37 60	. 7 `
	ld de,02800h		;6016	11 00 28	. . (
	call sub_6037h		;6019	cd 37 60	. 7 `
	ld de,03000h		;601c	11 00 30	. . 0
	call sub_6037h		;601f	cd 37 60	. 7 `
	ld de,01800h		;6022	11 00 18	. . .
	call sub_6037h		;6025	cd 37 60	. 7 `
	ld de,01900h		;6028	11 00 19	. . .
	call sub_6037h		;602b	cd 37 60	. 7 `
	ld de,01a00h		;602e	11 00 1a	. . .
	call sub_6037h		;6031	cd 37 60	. 7 `
	jp 00044h		;6034	c3 44 00	. D .
sub_6037h:
	push de			;6037	d5		.
	ld de,0e474h		;6038	11 74 e4	. t .
	call sub_5d11h		;603b	cd 11 5d	. . ]
	ld hl,0e46eh		;603e	21 6e e4	! n .
	ld b,(hl)		;6041	46		F
	inc hl			;6042	23		#
	ld c,(hl)		;6043	4e		N
	ld hl,0e474h		;6044	21 74 e4	! t .
	pop de			;6047	d1		.
	call 0005ch		;6048	cd 5c 00	. \ .
	ld hl,0e470h		;604b	21 70 e4	! p .
	ld b,(hl)		;604e	46		F
	inc hl			;604f	23		#
	ld c,(hl)		;6050	4e		N
	ld hl,0e472h		;6051	21 72 e4	! r .
	ld d,(hl)		;6054	56		V
	inc hl			;6055	23		#
	ld e,(hl)		;6056	5e		^
	ld h,d			;6057	62		b
	ld l,e			;6058	6b		k
	add hl,bc		;6059	09		.
	ret			;605a	c9		.
	ld a,(0f3e0h)		;605b	3a e0 f3	: . .
	and 0fch		;605e	e6 fc		. .
	jp l607ch		;6060	c3 7c 60	. | `
	ld a,(0f3e0h)		;6063	3a e0 f3	: . .
	and 0fch		;6066	e6 fc		. .
	or 001h			;6068	f6 01		. .
	jp l607ch		;606a	c3 7c 60	. | `
sub_606dh:
	ld a,(0f3e0h)		;606d	3a e0 f3	: . .
	and 0fch		;6070	e6 fc		. .
	or 002h			;6072	f6 02		. .
	jp l607ch		;6074	c3 7c 60	. | `
	ld a,(0f3e0h)		;6077	3a e0 f3	: . .
	or 003h			;607a	f6 03		. .
l607ch:
	di			;607c	f3		.
	ld b,a			;607d	47		G
	ld c,001h		;607e	0e 01		. .
	call 00047h		;6080	cd 47 00	. G .
	ei			;6083	fb		.
	ret			;6084	c9		.
sub_6085h:
	call 00069h		;6085	cd 69 00	. i .
	ld hl,01b00h		;6088	21 00 1b	! . .
	ld de,0e3e5h		;608b	11 e5 e3	. . .
	ld bc,00080h		;608e	01 80 00	. . .
	jp 00059h		;6091	c3 59 00	. Y .
sub_6094h:
	ld hl,0e3e5h		;6094	21 e5 e3	! . .
	ld bc,00080h		;6097	01 80 00	. . .
	ld de,01b00h		;609a	11 00 1b	. . .
	jp 0005ch		;609d	c3 5c 00	. \ .
sub_60a0h:
	push hl			;60a0	e5		.
	ld hl,03800h		;60a1	21 00 38	! . 8
	ld c,000h		;60a4	0e 00		. .
	ld a,(0f3e0h)		;60a6	3a e0 f3	: . .
	and 002h		;60a9	e6 02		. .
	jr nz,l60b0h		;60ab	20 03		  .
	ld de,00008h		;60ad	11 08 00	. . .
l60b0h:
	ld de,00020h		;60b0	11 20 00	.   .
l60b3h:
	ld a,c			;60b3	79		y
	cp b			;60b4	b8		.
	jr z,l60bbh		;60b5	28 04		( .
	add hl,de		;60b7	19		.
	inc c			;60b8	0c		.
	jr l60b3h		;60b9	18 f8		. .
l60bbh:
	ld d,h			;60bb	54		T
	ld e,l			;60bc	5d		]
	pop hl			;60bd	e1		.
	ld b,(hl)		;60be	46		F
	inc hl			;60bf	23		#
	ld c,(hl)		;60c0	4e		N
	inc hl			;60c1	23		#
	jp 0005ch		;60c2	c3 5c 00	. \ .
sub_60c5h:
	push af			;60c5	f5		.
	ld a,(0f3e0h)		;60c6	3a e0 f3	: . .
	and 002h		;60c9	e6 02		. .
	jr z,l60d3h		;60cb	28 06		( .
	ld a,b			;60cd	78		x
	sla a			;60ce	cb 27		. '
	sla a			;60d0	cb 27		. '
	ld b,a			;60d2	47		G
l60d3h:
	pop af			;60d3	f1		.
	push bc			;60d4	c5		.
	sla a			;60d5	cb 27		. '
	sla a			;60d7	cb 27		. '
	ld b,000h		;60d9	06 00		. .
	ld c,a			;60db	4f		O
	ld hl,0e3e5h		;60dc	21 e5 e3	! . .
	add hl,bc		;60df	09		.
	pop bc			;60e0	c1		.
	ld (hl),e		;60e1	73		s
	inc hl			;60e2	23		#
	ld (hl),d		;60e3	72		r
	inc hl			;60e4	23		#
	ld (hl),b		;60e5	70		p
	inc hl			;60e6	23		#
	ld (hl),c		;60e7	71		q
	ret			;60e8	c9		.
	ld (hl),c		;60e9	71		q
	inc hl			;60ea	23		#
	ld (hl),b		;60eb	70		p
	ret			;60ec	c9		.
sub_60edh:
	ld de,00003h		;60ed	11 03 00	. . .
	add hl,de		;60f0	19		.
	ld (hl),b		;60f1	70		p
	ret			;60f2	c9		.
sub_60f3h:
	ld a,(hl)		;60f3	7e		~
	cp 000h			;60f4	fe 00		. .
	ret z			;60f6	c8		.
	call 000a2h		;60f7	cd a2 00	. . .
	inc hl			;60fa	23		#
	jr sub_60f3h		;60fb	18 f6		. .
sub_60fdh:
	bit 7,b			;60fd	cb 78		. x
	jr z,l6106h		;60ff	28 05		( .
	ld a,02dh		;6101	3e 2d		> -
	call sub_615fh		;6103	cd 5f 61	. _ a
l6106h:
	ld a,b			;6106	78		x
	srl a			;6107	cb 3f		. ?
	srl a			;6109	cb 3f		. ?
	srl a			;610b	cb 3f		. ?
	srl a			;610d	cb 3f		. ?
	and 007h		;610f	e6 07		. .
	ld (0e474h),a		;6111	32 74 e4	2 t .
	ld e,b			;6114	58		X
	call sub_613bh		;6115	cd 3b 61	. ; a
	ld e,c			;6118	59		Y
	call sub_6133h		;6119	cd 33 61	. 3 a
	ld e,c			;611c	59		Y
	call sub_613bh		;611d	cd 3b 61	. ; a
	ld e,d			;6120	5a		Z
	call sub_6133h		;6121	cd 33 61	. 3 a
	ld a,d			;6124	7a		z
	and 00fh		;6125	e6 0f		. .
	jr nz,l612eh		;6127	20 05		  .
	ld a,001h		;6129	3e 01		> .
	ld (0e474h),a		;612b	32 74 e4	2 t .
l612eh:
	ld e,d			;612e	5a		Z
	call sub_613bh		;612f	cd 3b 61	. ; a
	ret			;6132	c9		.
sub_6133h:
	srl e			;6133	cb 3b		. ;
	srl e			;6135	cb 3b		. ;
	srl e			;6137	cb 3b		. ;
	srl e			;6139	cb 3b		. ;
sub_613bh:
	ld a,(0e474h)		;613b	3a 74 e4	: t .
	or e			;613e	b3		.
	and 00fh		;613f	e6 0f		. .
	jr nz,l6144h		;6141	20 01		  .
	ret			;6143	c9		.
l6144h:
	ld a,e			;6144	7b		{
	and 00fh		;6145	e6 0f		. .
	ld e,a			;6147	5f		_
	add a,030h		;6148	c6 30		. 0
	call sub_615fh		;614a	cd 5f 61	. _ a
	ld a,e			;614d	7b		{
	or a			;614e	b7		.
	jr z,l6157h		;614f	28 06		( .
	ld a,007h		;6151	3e 07		> .
	ld (0e474h),a		;6153	32 74 e4	2 t .
	ret			;6156	c9		.
l6157h:
	ld a,(0e474h)		;6157	3a 74 e4	: t .
	dec a			;615a	3d		=
	ld (0e474h),a		;615b	32 74 e4	2 t .
	ret			;615e	c9		.
sub_615fh:
	push bc			;615f	c5		.
	push de			;6160	d5		.
	call 000a2h		;6161	cd a2 00	. . .
	pop de			;6164	d1		.
	pop bc			;6165	c1		.
	ret			;6166	c9		.
sub_6167h:
	ld a,b			;6167	78		x
	ld (0e46ch),a		;6168	32 6c e4	2 l .
	ld a,c			;616b	79		y
	ld (0e46dh),a		;616c	32 6d e4	2 m .
	ld hl,0e466h		;616f	21 66 e4	! f .
	ld b,006h		;6172	06 06		. .
l6174h:
	ld (hl),000h		;6174	36 00		6 .
	inc hl			;6176	23		#
	djnz l6174h		;6177	10 fb		. .
l6179h:
	ld a,(0e46ch)		;6179	3a 6c e4	: l .
	ld b,a			;617c	47		G
	ld a,(0e46dh)		;617d	3a 6d e4	: m .
	ld c,a			;6180	4f		O
	ld a,b			;6181	78		x
	or c			;6182	b1		.
	jp z,l6217h		;6183	ca 17 62	. . b
	ld de,0e466h		;6186	11 66 e4	. f .
	ld hl,0e469h		;6189	21 69 e4	! i .
	ld a,b			;618c	78		x
	and 0f0h		;618d	e6 f0		. .
	jr z,l61afh		;618f	28 1e		( .
	ld (hl),096h		;6191	36 96		6 .
	inc hl			;6193	23		#
	ld (hl),040h		;6194	36 40		6 @
	inc hl			;6196	23		#
	ld (hl),000h		;6197	36 00		6 .
	ld a,b			;6199	78		x
	srl a			;619a	cb 3f		. ?
	srl a			;619c	cb 3f		. ?
	srl a			;619e	cb 3f		. ?
	srl a			;61a0	cb 3f		. ?
	and 00fh		;61a2	e6 0f		. .
	push af			;61a4	f5		.
	ld a,b			;61a5	78		x
	and 00fh		;61a6	e6 0f		. .
	ld (0e46ch),a		;61a8	32 6c e4	2 l .
	pop af			;61ab	f1		.
	ld b,a			;61ac	47		G
	jr l6206h		;61ad	18 57		. W
l61afh:
	ld a,b			;61af	78		x
	and 00fh		;61b0	e6 0f		. .
	jr z,l61cah		;61b2	28 16		( .
	ld (hl),056h		;61b4	36 56		6 V
	inc hl			;61b6	23		#
	ld (hl),002h		;61b7	36 02		6 .
	inc hl			;61b9	23		#
	ld (hl),000h		;61ba	36 00		6 .
	ld a,b			;61bc	78		x
	and 00fh		;61bd	e6 0f		. .
	push af			;61bf	f5		.
	ld a,b			;61c0	78		x
	and 0f0h		;61c1	e6 f0		. .
	ld (0e46ch),a		;61c3	32 6c e4	2 l .
	pop af			;61c6	f1		.
	ld b,a			;61c7	47		G
	jr l6206h		;61c8	18 3c		. <
l61cah:
	ld a,c			;61ca	79		y
	and 0f0h		;61cb	e6 f0		. .
	jr z,l61edh		;61cd	28 1e		( .
	ld (hl),016h		;61cf	36 16		6 .
	inc hl			;61d1	23		#
	ld (hl),000h		;61d2	36 00		6 .
	inc hl			;61d4	23		#
	ld (hl),000h		;61d5	36 00		6 .
	ld a,c			;61d7	79		y
	srl a			;61d8	cb 3f		. ?
	srl a			;61da	cb 3f		. ?
	srl a			;61dc	cb 3f		. ?
	srl a			;61de	cb 3f		. ?
	and 00fh		;61e0	e6 0f		. .
	push af			;61e2	f5		.
	ld a,c			;61e3	79		y
	and 00fh		;61e4	e6 0f		. .
	ld (0e46dh),a		;61e6	32 6d e4	2 m .
	pop af			;61e9	f1		.
	ld b,a			;61ea	47		G
	jr l6206h		;61eb	18 19		. .
l61edh:
	ld a,c			;61ed	79		y
	and 00fh		;61ee	e6 0f		. .
	jr z,l6206h		;61f0	28 14		( .
	ld (hl),001h		;61f2	36 01		6 .
	inc hl			;61f4	23		#
	ld (hl),000h		;61f5	36 00		6 .
	inc hl			;61f7	23		#
	ld (hl),000h		;61f8	36 00		6 .
	ld a,c			;61fa	79		y
	and 00fh		;61fb	e6 0f		. .
	push af			;61fd	f5		.
	ld a,c			;61fe	79		y
	and 0f0h		;61ff	e6 f0		. .
	ld (0e46dh),a		;6201	32 6d e4	2 m .
	pop af			;6204	f1		.
	ld b,a			;6205	47		G
l6206h:
	ld hl,0e469h		;6206	21 69 e4	! i .
l6209h:
	push hl			;6209	e5		.
	push de			;620a	d5		.
	push bc			;620b	c5		.
	call sub_5d9fh		;620c	cd 9f 5d	. . ]
	pop bc			;620f	c1		.
	pop de			;6210	d1		.
	pop hl			;6211	e1		.
	djnz l6209h		;6212	10 f5		. .
	jp l6179h		;6214	c3 79 61	. y a
l6217h:
	ld a,(0e466h)		;6217	3a 66 e4	: f .
	ld d,a			;621a	57		W
	ld a,(0e467h)		;621b	3a 67 e4	: g .
	ld c,a			;621e	4f		O
	ld a,(0e468h)		;621f	3a 68 e4	: h .
	and 00fh		;6222	e6 0f		. .
	ld b,a			;6224	47		G
	call sub_60fdh		;6225	cd fd 60	. . `
	ret			;6228	c9		.
sub_6229h:
	jp 000c6h		;6229	c3 c6 00	. . .
sub_622ch:
	xor a			;622c	af		.
	jp 000c3h		;622d	c3 c3 00	. . .
sub_6230h:
	ld hl,0f3e9h		;6230	21 e9 f3	! . .
	ld (hl),b		;6233	70		p
	inc l			;6234	2c		,
	ld (hl),c		;6235	71		q
	jp 00062h		;6236	c3 62 00	. b .
	ld (0f3aeh),a		;6239	32 ae f3	2 . .
	ret			;623c	c9		.
sub_623dh:
	call sub_5d60h		;623d	cd 60 5d	. ` ]
	call sub_5d6bh		;6240	cd 6b 5d	. k ]
	call sub_624eh		;6243	cd 4e 62	. N b
	call sub_5e43h		;6246	cd 43 5e	. C ^
	xor a			;6249	af		.
	ld (0f3dbh),a		;624a	32 db f3	2 . .
	ret			;624d	c9		.
sub_624eh:
	ld hl,0e380h		;624e	21 80 e3	! . .
	ld b,059h		;6251	06 59		. Y
l6253h:
	xor a			;6253	af		.
	ld (hl),a		;6254	77		w
	inc hl			;6255	23		#
	djnz l6253h		;6256	10 fb		. .
	ld hl,0e3d9h		;6258	21 d9 e3	! . .
	ld b,00ch		;625b	06 0c		. .
l625dh:
	xor a			;625d	af		.
	ld (hl),a		;625e	77		w
	inc hl			;625f	23		#
	djnz l625dh		;6260	10 fb		. .
	call 00069h		;6262	cd 69 00	. i .
	ld hl,01b00h		;6265	21 00 1b	! . .
	ld de,0e3e5h		;6268	11 e5 e3	. . .
	ld bc,00080h		;626b	01 80 00	. . .
	call 00059h		;626e	cd 59 00	. Y .
	ld a,00dh		;6271	3e 0d		> .
	ld (0e465h),a		;6273	32 65 e4	2 e .
	ret			;6276	c9		.
l6277h:
	ld (bc),a		;6277	02		.
	ret po			;6278	e0		.
	ld bc,0c863h		;6279	01 63 c8	. c .
	nop			;627c	00		.
	ccf			;627d	3f		?
	ld a,a			;627e	7f		.
	ret z			;627f	c8		.
	nop			;6280	00		.
	ccf			;6281	3f		?
	rst 0			;6282	c7		.
	nop			;6283	00		.
	inc bc			;6284	03		.
	push bc			;6285	c5		.
	nop			;6286	00		.
	inc bc			;6287	03		.
	ld bc,000c6h		;6288	01 c6 00	. . .
	jp nz,0c43fh		;628b	c2 3f c4	. ? .
	ld a,a			;628e	7f		.
	jp nz,01f00h		;628f	c2 00 1f	. . .
	call nz,0c30fh		;6292	c4 0f c3	. . .
	rlca			;6295	07		.
	call nz,0c40fh		;6296	c4 0f c4	. . .
	rra			;6299	1f		.
	jp 0c403h		;629a	c3 03 c4	. . .
	ld bc,000c4h		;629d	01 c4 00	. . .
	jp nz,00301h		;62a0	c2 01 03	. . .
	jp 03f07h		;62a3	c3 07 3f	. . ?
	ld a,a			;62a6	7f		.
	call 00100h		;62a7	cd 00 01	. . .
	jp z,0c200h		;62aa	ca 00 c2	. . .
	ld a,a			;62ad	7f		.
	ccf			;62ae	3f		?
	rra			;62af	1f		.
	ld c,00fh		;62b0	0e 0f		. .
	jp nz,0c21fh		;62b2	c2 1f c2	. . .
	ccf			;62b5	3f		?
	ld a,a			;62b6	7f		.
	push bc			;62b7	c5		.
	nop			;62b8	00		.
	jp nz,00301h		;62b9	c2 01 03	. . .
	jp nz,0c207h		;62bc	c2 07 c2	. . .
	ld a,a			;62bf	7f		.
	add a,000h		;62c0	c6 00		. .
	ccf			;62c2	3f		?
	ld a,a			;62c3	7f		.
	ret z			;62c4	c8		.
	nop			;62c5	00		.
	ccf			;62c6	3f		?
	rst 8			;62c7	cf		.
	nop			;62c8	00		.
	inc bc			;62c9	03		.
	push bc			;62ca	c5		.
	nop			;62cb	00		.
	inc bc			;62cc	03		.
	ld bc,000d0h		;62cd	01 d0 00	. . .
	call nz,0c601h		;62d0	c4 01 c6	. . .
	inc bc			;62d3	03		.
	call nz,0c401h		;62d4	c4 01 c4	. . .
	ccf			;62d7	3f		?
	call nz,0c37fh		;62d8	c4 7f c3	. . .
l62dbh:
	rrca			;62db	0f		.
	call nz,03070h		;62dc	c4 70 30	. p 0
	jp 00100h		;62df	c3 00 01	. . .
	jp nz,0d103h		;62e2	c2 03 d1	. . .
	nop			;62e5	00		.
	rrca			;62e6	0f		.
	rlc b			;62e7	cb 00		. .
	ld a,a			;62e9	7f		.
	jp nz,01f3fh		;62ea	c2 3f 1f	. ? .
	rrca			;62ed	0f		.
	jp nz,0cc04h		;62ee	c2 04 cc	. . .
	nop			;62f1	00		.
	ld bc,00f03h		;62f2	01 03 0f	. . .
	rra			;62f5	1f		.
	jp nz,l7f3fh		;62f6	c2 3f 7f	. ? .
	jp 03f00h		;62f9	c3 00 3f	. . ?
	ld a,a			;62fc	7f		.
	ret z			;62fd	c8		.
	nop			;62fe	00		.
	rra			;62ff	1f		.
l6300h:
	ccf			;6300	3f		?
	adc a,000h		;6301	ce 00		. .
	rlca			;6303	07		.
	inc bc			;6304	03		.
	call nz,00300h		;6305	c4 00 03	. . .
	ld bc,000ceh		;6308	01 ce 00	. . .
	inc bc			;630b	03		.
	add a,007h		;630c	c6 07		. .
	rrca			;630e	0f		.
	rst 0			;630f	c7		.
	nop			;6310	00		.
	ld bc,000c7h		;6311	01 c7 00	. . .
	ld b,b			;6314	40		@
	jr nc,$-60		;6315	30 c2		0 .
	jr c,l62dbh		;6317	38 c2		8 .
	inc e			;6319	1c		.
	ld e,01fh		;631a	1e 1f		. .
	rrca			;631c	0f		.
	rst 0			;631d	c7		.
	nop			;631e	00		.
	ccf			;631f	3f		?
	rlca			;6320	07		.
	ld bc,000c9h		;6321	01 c9 00	. . .
	ld a,a			;6324	7f		.
	ccf			;6325	3f		?
	jp nz,00f1fh		;6326	c2 1f 0f	. . .
	rlca			;6329	07		.
	call nz,00703h		;632a	c4 03 07	. . .
	rrca			;632d	0f		.
	rra			;632e	1f		.
	inc bc			;632f	03		.
	rlca			;6330	07		.
	jp 0070fh		;6331	c3 0f 07	. . .
	inc bc			;6334	03		.
	ld bc,l7f3fh		;6335	01 3f 7f	. ? .
	ret z			;6338	c8		.
	nop			;6339	00		.
	rrca			;633a	0f		.
	ccf			;633b	3f		?
	adc a,000h		;633c	ce 00		. .
	rrca			;633e	0f		.
	inc bc			;633f	03		.
	call nz,00300h		;6340	c4 00 03	. . .
	ld bc,000d4h		;6343	01 d4 00	. . .
	ld bc,0c203h		;6346	01 03 c2	. . .
	rrca			;6349	0f		.
	call nz,0c21fh		;634a	c4 1f c2	. . .
	ccf			;634d	3f		?
	call nz,0c403h		;634e	c4 03 c4	. . .
	rlca			;6351	07		.
	call nz,0c400h		;6352	c4 00 c4	. . .
	ld a,a			;6355	7f		.
	call nz,0c400h		;6356	c4 00 c4	. . .
	ld bc,03fc2h		;6359	01 c2 3f	. . ?
	call nz,0c41fh		;635c	c4 1f c4	. . .
	rrca			;635f	0f		.
	call nz,0c207h		;6360	c4 07 c2	. . .
	nop			;6363	00		.
	rra			;6364	1f		.
	ret z			;6365	c8		.
	nop			;6366	00		.
	ld bc,000c3h		;6367	01 c3 00	. . .
	ld bc,000c4h		;636a	01 c4 00	. . .
	ld a,a			;636d	7f		.
	ccf			;636e	3f		?
	ld a,a			;636f	7f		.
	jp 0c400h		;6370	c3 00 c4	. . .
	rrca			;6373	0f		.
	jp nz,0c20eh		;6374	c2 0e c2	. . .
	inc c			;6377	0c		.
	rra			;6378	1f		.
	ccf			;6379	3f		?
	ld a,a			;637a	7f		.
	ret			;637b	c9		.
	nop			;637c	00		.
	jp nz,00e04h		;637d	c2 04 0e	. . .
	rra			;6380	1f		.
	jp nz,l7f00h		;6381	c2 00 7f	. . .
	ccf			;6384	3f		?
	jp nz,00f1fh		;6385	c2 1f 0f	. . .
	rlca			;6388	07		.
	jp z,03300h		;6389	ca 00 33	. . 3
	jp nz,03300h		;638c	c2 00 33	. . 3
	call z,00300h		;638f	cc 00 03	. . .
	call 0c300h		;6392	cd 00 c3	. . .
	rrca			;6395	0f		.
	call nz,0c41fh		;6396	c4 1f c4	. . .
	ccf			;6399	3f		?
	call nz,00f1fh		;639a	c4 1f 0f	. . .
	jp 0c403h		;639d	c3 03 c4	. . .
	rlca			;63a0	07		.
	jp 0c50fh		;63a1	c3 0f c5	. . .
	rlca			;63a4	07		.
	inc bc			;63a5	03		.
	push bc			;63a6	c5		.
	nop			;63a7	00		.
	inc bc			;63a8	03		.
	rlca			;63a9	07		.
	rra			;63aa	1f		.
	jr l63bdh		;63ab	18 10		. .
	jr nc,l640fh		;63ad	30 60		0 `
	ccf			;63af	3f		?
	jp nz,0c57fh		;63b0	c2 7f c5	. . .
	nop			;63b3	00		.
	ld bc,003c2h		;63b4	01 c2 03	. . .
	rlca			;63b7	07		.
	jp nz,l7f3fh		;63b8	c2 3f 7f	. ? .
	push bc			;63bb	c5		.
	nop			;63bc	00		.
l63bdh:
	jp nz,03f7fh		;63bd	c2 7f 3f	. . ?
	rra			;63c0	1f		.
	rrca			;63c1	0f		.
	jp nz,0c307h		;63c2	c2 07 c3	. . .
	inc bc			;63c5	03		.
	ld bc,000c9h		;63c6	01 c9 00	. . .
	ld a,a			;63c9	7f		.
	jp nz,01f3fh		;63ca	c2 3f 1f	. ? .
	inc sp			;63cd	33		3
	jp nz,03300h		;63ce	c2 00 33	. . 3
	jp nz,03300h		;63d1	c2 00 33	. . 3
	ret			;63d4	c9		.
	nop			;63d5	00		.
l63d6h:
	inc bc			;63d6	03		.
	jp nc,00f00h		;63d7	d2 00 0f	. . .
	jp z,00100h		;63da	ca 00 01	. . .
	inc bc			;63dd	03		.
	ld bc,000b8h		;63de	01 b8 00	. . .
	and 0d1h		;63e1	e6 d1		. .
	nop			;63e3	00		.
	inc sp			;63e4	33		3
	jp nz,03300h		;63e5	c2 00 33	. . 3
	jp nz,03300h		;63e8	c2 00 33	. . 3
	ret			;63eb	c9		.
	nop			;63ec	00		.
	inc bc			;63ed	03		.
	call 00f00h		;63ee	cd 00 0f	. . .
	call nz,01f00h		;63f1	c4 00 1f	. . .
	adc a,000h		;63f4	ce 00		. .
	add a,007h		;63f6	c6 07		. .
	jp nz,01f01h		;63f8	c2 01 1f	. . .
	call nz,0000fh		;63fb	c4 0f 00	. . .
	jp 0003ch		;63fe	c3 3c 00	. < .
	jp 0c53ch		;6401	c3 3c c5	. < .
	nop			;6404	00		.
	jp 0c57fh		;6405	c3 7f c5	. . .
	nop			;6408	00		.
	ld a,a			;6409	7f		.
	ld e,01ch		;640a	1e 1c		. .
	call 0c300h		;640c	cd 00 c3	. . .
l640fh:
	jr c,l63d6h		;640f	38 c5		8 .
	nop			;6411	00		.
	inc bc			;6412	03		.
	ld a,b			;6413	78		x
	jr nc,$-57		;6414	30 c5		0 .
	nop			;6416	00		.
	inc bc			;6417	03		.
	ld bc,000c6h		;6418	01 c6 00	. . .
	rra			;641b	1f		.
	jp nz,0c23fh		;641c	c2 3f c2	. ? .
	nop			;641f	00		.
	jp 0c301h		;6420	c3 01 c3	. . .
	inc c			;6423	0c		.
	jp nz,0c300h		;6424	c2 00 c3	. . .
	rra			;6427	1f		.
	jp 00003h		;6428	c3 03 00	. . .
	jp 0000fh		;642b	c3 0f 00	. . .
	rrca			;642e	0f		.
	ld c,00ch		;642f	0e 0c		. .
l6431h:
	push bc			;6431	c5		.
	nop			;6432	00		.
	jp 0c20fh		;6433	c3 0f c2	. . .
	nop			;6436	00		.
	inc sp			;6437	33		3
	jp nz,03300h		;6438	c2 00 33	. . 3
	call z,00300h		;643b	cc 00 03	. . .
	jp z,l7f00h		;643e	ca 00 7f	. . .
	ret z			;6441	c8		.
	nop			;6442	00		.
	ld bc,0c403h		;6443	01 03 c4	. . .
	rlca			;6446	07		.
	call nz,0c300h		;6447	c4 00 c3	. . .
	rrca			;644a	0f		.
	rra			;644b	1f		.
	jp nz,00701h		;644c	c2 01 07	. . .
	nop			;644f	00		.
	rst 0			;6450	c7		.
	inc a			;6451	3c		<
	jp nz,l7f00h		;6452	c2 00 7f	. . .
	nop			;6455	00		.
	rra			;6456	1f		.
	jp nz,l7f00h		;6457	c2 00 7f	. . .
	nop			;645a	00		.
	push bc			;645b	c5		.
	inc e			;645c	1c		.
	ld e,01fh		;645d	1e 1f		. .
	nop			;645f	00		.
	ld a,0c2h		;6460	3e c2		> .
	ld a,(hl)		;6462	7e		~
	ld a,0c3h		;6463	3e c3		> .
	nop			;6465	00		.
	ld bc,038c7h		;6466	01 c7 38	. . 8
	ccf			;6469	3f		?
	rst 0			;646a	c7		.
	ld a,h			;646b	7c		|
	nop			;646c	00		.
	jr nc,l6431h		;646d	30 c2		0 .
	ld sp,030c2h		;646f	31 c2 30	1 . 0
	jr c,$+62		;6472	38 3c		8 <
	nop			;6474	00		.
	rrca			;6475	0f		.
	jp nz,00f07h		;6476	c2 07 0f	. . .
	nop			;6479	00		.
	ld bc,00003h		;647a	01 03 00	. . .
	jr c,l64beh		;647d	38 3f		8 ?
	rra			;647f	1f		.
	nop			;6480	00		.
	jp 0003fh		;6481	c3 3f 00	. ? .
	ld bc,00e1eh		;6484	01 1e 0e	. . .
	ld a,c			;6487	79		y
	ld b,0c2h		;6488	06 c2		. .
	rrca			;648a	0f		.
	nop			;648b	00		.
	call nz,0c21fh		;648c	c4 1f c2	. . .
	inc bc			;648f	03		.
	ld a,h			;6490	7c		|
	nop			;6491	00		.
	push bc			;6492	c5		.
	inc c			;6493	0c		.
	ld c,00fh		;6494	0e 0f		. .
	nop			;6496	00		.
	ccf			;6497	3f		?
	jp nz,03f7fh		;6498	c2 7f 3f	. . ?
	push bc			;649b	c5		.
	nop			;649c	00		.
	rra			;649d	1f		.
	rrca			;649e	0f		.
	ld a,b			;649f	78		x
	rlca			;64a0	07		.
	jp nz,0000fh		;64a1	c2 0f 00	. . .
	inc sp			;64a4	33		3
	jp nz,03300h		;64a5	c2 00 33	. . 3
	jp nz,03300h		;64a8	c2 00 33	. . 3
	call z,00300h		;64ab	cc 00 03	. . .
	call nz,00700h		;64ae	c4 00 07	. . .
	call 03f00h		;64b1	cd 00 3f	. . ?
	nop			;64b4	00		.
	jp 0c57fh		;64b5	c3 7f c5	. . .
	nop			;64b8	00		.
	jp nz,0cc3fh		;64b9	c2 3f cc	. ? .
	nop			;64bc	00		.
	ld a,a			;64bd	7f		.
l64beh:
	ccf			;64be	3f		?
	nop			;64bf	00		.
	inc sp			;64c0	33		3
	rst 8			;64c1	cf		.
	nop			;64c2	00		.
	ld bc,000cch		;64c3	01 cc 00	. . .
	ld bc,00103h		;64c6	01 03 01	. . .
	ret po			;64c9	e0		.
	ld bc,0c984h		;64ca	01 84 c9	. . .
	nop			;64cd	00		.
	jr nz,l6510h		;64ce	20 40		  @
	ld a,b			;64d0	78		x
	jp l7877h		;64d1	c3 77 78	. w x
	nop			;64d4	00		.
	ld (bc),a		;64d5	02		.
	ld bc,0c338h		;64d6	01 38 c3	. 8 .
	ld b,b			;64d9	40		@
	jr c,l64dch		;64da	38 00		8 .
l64dch:
	inc c			;64dc	0c		.
	ld (de),a		;64dd	12		.
	ld a,l			;64de	7d		}
	ld a,e			;64df	7b		{
	ld (hl),a		;64e0	77		w
	ld l,a			;64e1	6f		o
	ld h,c			;64e2	61		a
l64e3h:
	nop			;64e3	00		.
	ld h,e			;64e4	63		c
	ld l,(hl)		;64e5	6e		n
	ld c,(hl)		;64e6	4e		N
l64e7h:
	jp nz,l6e2eh		;64e7	c2 2e 6e	. . n
	ld h,c			;64ea	61		a
	nop			;64eb	00		.
	jr $-60			;64ec	18 c2		. .
	inc h			;64ee	24		$
	add hl,de		;64ef	19		.
	jp nz,01824h		;64f0	c2 24 18	. $ .
	nop			;64f3	00		.
	ld b,009h		;64f4	06 09		. .
	ld bc,0041dh		;64f6	01 1d 04	. . .
	ex af,af'		;64f9	08		.
	rrca			;64fa	0f		.
	nop			;64fb	00		.
	ld sp,l584ah		;64fc	31 4a 58	1 J X
	ld l,b			;64ff	68		h
	ld l,c			;6500	69		i
	ld c,d			;6501	4a		J
	inc sp			;6502	33		3
	nop			;6503	00		.
	ld (hl),e		;6504	73		s
	ld d,d			;6505	52		R
	ld d,(hl)		;6506	56		V
l6507h:
	ld h,l			;6507	65		e
	ld a,(de)		;6508	1a		.
	ld (de),a		;6509	12		.
	inc sp			;650a	33		3
	nop			;650b	00		.
	inc bc			;650c	03		.
	push bc			;650d	c5		.
	inc b			;650e	04		.
	inc bc			;650f	03		.
l6510h:
	nop			;6510	00		.
	ld a,a			;6511	7f		.
	nop			;6512	00		.
	jr l6539h		;6513	18 24		. $
	inc a			;6515	3c		<
	jr nz,$+101		;6516	20 63		  c
	jp l6e00h		;6518	c3 00 6e	. . n
	ld a,(hl)		;651b	7e		~
	ld b,a			;651c	47		G
	add hl,hl		;651d	29		)
	jr c,l64e3h		;651e	38 c3		8 .
	nop			;6520	00		.
	jr c,l64e7h		;6521	38 c4		8 .
	jr nz,l6525h		;6523	20 00		  .
l6525h:
	inc e			;6525	1c		.
	jp nz,01c12h		;6526	c2 12 1c	. . .
	jp nz,01214h		;6529	c2 14 12	. . .
	nop			;652c	00		.
	jr nz,l652fh		;652d	20 00		  .
l652fh:
	ld h,a			;652f	67		g
	jp l7424h		;6530	c3 24 74	. $ t
	jp 01c00h		;6533	c3 00 1c	. . .
	jp 0635eh		;6536	c3 5e 63	. ^ c
l6539h:
	jp 03100h		;6539	c3 00 31	. . 1
	jp 03629h		;653c	c3 29 36	. ) 6
	ld b,b			;653f	40		@
	jr nz,l6507h		;6540	20 c5		  .
	nop			;6542	00		.
	jp nz,00201h		;6543	c2 01 02	. . .
	push bc			;6546	c5		.
	nop			;6547	00		.
	ld bc,000c7h		;6548	01 c7 00	. . .
	jr $-55			;654b	18 c7		. .
	nop			;654d	00		.
	inc b			;654e	04		.
	nop			;654f	00		.
	inc e			;6550	1c		.
	jp l6c6eh		;6551	c3 6e 6c	. n l
	jp nz,00100h		;6554	c2 00 01	. . .
	dec e			;6557	1d		.
	add hl,hl		;6558	29		)
	ld sp,l4621h		;6559	31 21 46	1 ! F
	inc h			;655c	24		$
	jr l6563h		;655d	18 04		. .
	jr nc,$-59		;655f	30 c3		0 .
	inc h			;6561	24		$
	daa			;6562	27		'
l6563h:
	jp nz,02000h		;6563	c2 00 20	. .  
	ld hl,0c272h		;6566	21 72 c2	! r .
	ld (0c321h),hl		;6569	22 21 c3	" ! .
	nop			;656c	00		.
	ld l,l			;656d	6d		m
	ld c,h			;656e	4c		L
	ld c,b			;656f	48		H
	ld c,h			;6570	4c		L
	ld l,l			;6571	6d		m
	jp 01800h		;6572	c3 00 18	. . .
	inc d			;6575	14		.
	ld (hl),h		;6576	74		t
	ld l,e			;6577	6b		k
	ld (hl),h		;6578	74		t
	jp nz,00400h		;6579	c2 00 04	. . .
	inc e			;657c	1c		.
	jp 0635ah		;657d	c3 5a 63	. Z c
	jp 01900h		;6580	c3 00 19	. . .
	jp 01909h		;6583	c3 09 19	. . .
	jp 00100h		;6586	c3 00 01	. . .
	jp 01102h		;6589	c3 02 11	. . .
	jp 03300h		;658c	c3 00 33	. . 3
	jp 03312h		;658f	c3 12 33	. . 3
	jp 02f00h		;6592	c3 00 2f	. . /
l6595h:
	call nz,0c457h		;6595	c4 57 c4	. W .
	nop			;6598	00		.
	inc bc			;6599	03		.
	call nz,00f07h		;659a	c4 07 0f	. . .
	jp nz,l6300h		;659d	c2 00 63	. . c
	jp nz,02161h		;65a0	c2 61 21	. a !
	ld bc,000c3h		;65a3	01 c3 00	. . .
	ccf			;65a6	3f		?
	ld a,a			;65a7	7f		.
	nop			;65a8	00		.
	rra			;65a9	1f		.
	ld bc,000c3h		;65aa	01 c3 00	. . .
	jp nz,00103h		;65ad	c2 03 01	. . .
	jp nz,0780fh		;65b0	c2 0f 78	. . x
	jp nz,l7800h		;65b3	c2 00 78	. . x
	jp nz,01f0fh		;65b6	c2 0f 1f	. . .
	jp nz,0c53fh		;65b9	c2 3f c5	. ? .
	nop			;65bc	00		.
	ld a,07fh		;65bd	3e 7f		> .
	ld (hl),a		;65bf	77		w
	add a,000h		;65c0	c6 00		. .
	jp nz,0c206h		;65c2	c2 06 c2	. . .
	nop			;65c5	00		.
	call nz,00703h		;65c6	c4 03 07	. . .
	ld b,0c2h		;65c9	06 c2		. .
	nop			;65cb	00		.
	daa			;65cc	27		'
	ld (hl),a		;65cd	77		w
	dec bc			;65ce	0b		.
	ex af,af'		;65cf	08		.
	daa			;65d0	27		'
	jr nz,l6595h		;65d1	20 c2		  .
	nop			;65d3	00		.
	inc c			;65d4	0c		.
	inc b			;65d5	04		.
	ld e,033h		;65d6	1e 33		. 3
	ld sp,00024h		;65d8	31 24 00	1 $ .
	rst 0			;65db	c7		.
	rlca			;65dc	07		.
	jp nz,l7e00h		;65dd	c2 00 7e	. . ~
	jp nz,0c27fh		;65e0	c2 7f c2	. . .
	ld h,e			;65e3	63		c
	ld a,a			;65e4	7f		.
	nop			;65e5	00		.
	jp 0c307h		;65e6	c3 07 c3	. . .
	ld a,b			;65e9	78		x
	rlca			;65ea	07		.
	rrca			;65eb	0f		.
	jp nz,01e0eh		;65ec	c2 0e 1e	. . .
	jp nz,0c41ch		;65ef	c2 1c c4	. . .
	nop			;65f2	00		.
	ex af,af'		;65f3	08		.
	jp nz,l730ch		;65f4	c2 0c 73	. . s
	jp nz,l7f00h		;65f7	c2 00 7f	. . .
	rra			;65fa	1f		.
	ld bc,000c5h		;65fb	01 c5 00	. . .
	jr c,$+50		;65fe	38 30		8 0
	jr nz,l6623h		;6600	20 21		  !
	ld b,e			;6602	43		C
	ld a,b			;6603	78		x
	jp nz,03f00h		;6604	c2 00 3f	. . ?
	jp nz,00f1fh		;6607	c2 1f 0f	. . .
	ld a,b			;660a	78		x
	inc a			;660b	3c		<
	jp nz,06700h		;660c	c2 00 67	. . g
	rrca			;660f	0f		.
	ld e,03ch		;6610	1e 3c		. <
	ld a,b			;6612	78		x
	jp l777fh		;6613	c3 7f 77	. . w
	rlca			;6616	07		.
	ld e,03ch		;6617	1e 3c		. <
	jr c,$-59		;6619	38 c3		8 .
	ld a,a			;661b	7f		.
	jp nz,0c206h		;661c	c2 06 c2	. . .
	ld a,a			;661f	7f		.
	call nz,0c206h		;6620	c4 06 c2	. . .
l6623h:
	nop			;6623	00		.
	jp nz,0c41fh		;6624	c2 1f c4	. . .
	nop			;6627	00		.
	ld b,000h		;6628	06 00		. .
	ld b,00fh		;662a	06 0f		. .
	ld b,007h		;662c	06 07		. .
	jp nz,02000h		;662e	c2 00 20	. .  
	jp nz,l52feh+2		;6631	c2 00 53	. . S
	ld d,(hl)		;6634	56		V
	ld (hl),d		;6635	72		r
	jp nz,00c00h		;6636	c2 00 0c	. . .
	nop			;6639	00		.
	ld b,b			;663a	40		@
	ld (hl),e		;663b	73		s
	ld e,(hl)		;663c	5e		^
	ld (hl),a		;663d	77		w
	jp nz,0c300h		;663e	c2 00 c3	. . .
	rlca			;6641	07		.
	jp 00778h		;6642	c3 78 07	. x .
	nop			;6645	00		.
	ld a,a			;6646	7f		.
	push bc			;6647	c5		.
	ld h,c			;6648	61		a
	jp nz,l7800h		;6649	c2 00 78	. . x
	push bc			;664c	c5		.
	jr c,l6656h		;664d	38 07		8 .
	nop			;664f	00		.
	ld (bc),a		;6650	02		.
	ret po			;6651	e0		.
	ld bc,0c853h		;6652	01 53 c8	. S .
	ld d,l			;6655	55		U
l6656h:
	jp nz,0c815h		;6656	c2 15 c8	. . .
	ld de,0e1c1h		;6659	11 c1 e1	. . .
	rst 0			;665c	c7		.
	ld de,0c51eh		;665d	11 1e c5	. . .
	ld de,051c2h		;6660	11 c2 51	. . Q
	add a,011h		;6663	c6 11		. .
	add a,0f5h		;6665	c6 f5		. .
	jp nz,0c8ffh		;6667	c2 ff c8	. . .
	ld e,a			;666a	5f		_
	ret z			;666b	c8		.
	push af			;666c	f5		.
	rst 0			;666d	c7		.
	ld e,a			;666e	5f		_
	pop bc			;666f	c1		.
	rst 38h			;6670	ff		.
	jp 0c855h		;6671	c3 55 c8	. U .
	push af			;6674	f5		.
	call 05fffh		;6675	cd ff 5f	. . _
	rst 0			;6678	c7		.
	rst 38h			;6679	ff		.
	jp 0c555h		;667a	c3 55 c5	. U .
	ld e,a			;667d	5f		_
	add a,0f5h		;667e	c6 f5		. .
	push bc			;6680	c5		.
	rst 38h			;6681	ff		.
	rst 0			;6682	c7		.
	ld e,a			;6683	5f		_
	add a,055h		;6684	c6 55		. U
	jp nz,0c865h		;6686	c2 65 c8	. e .
	ld h,(hl)		;6689	66		f
	sub (hl)		;668a	96		.
	rst 0			;668b	c7		.
	ld h,(hl)		;668c	66		f
	sbc a,c			;668d	99		.
	rst 0			;668e	c7		.
	ld h,(hl)		;668f	66		f
	ld l,c			;6690	69		i
	push bc			;6691	c5		.
	ld h,(hl)		;6692	66		f
	jp nz,0c616h		;6693	c2 16 c6	. . .
	ld h,(hl)		;6696	66		f
	ret z			;6697	c8		.
	ld de,l55c2h		;6698	11 c2 55	. . U
	add a,0f5h		;669b	c6 f5		. .
	ret z			;669d	c8		.
	ld e,a			;669e	5f		_
	set 6,l			;669f	cb f5		. .
	push bc			;66a1	c5		.
	ld e,a			;66a2	5f		_
	jp 0c3ffh		;66a3	c3 ff c3	. . .
	ld e,a			;66a6	5f		_
	call nz,0c5ffh		;66a7	c4 ff c5	. . .
	ld d,l			;66aa	55		U
	jp 0c5ffh		;66ab	c3 ff c5	. . .
	ld d,l			;66ae	55		U
	ld e,a			;66af	5f		_
	jp nz,0c6ffh		;66b0	c2 ff c6	. . .
	ld d,l			;66b3	55		U
	jp 0c5ffh		;66b4	c3 ff c5	. . .
	push af			;66b7	f5		.
	jp nz,0cc5fh		;66b8	c2 5f cc	. _ .
	rst 38h			;66bb	ff		.
	rst 0			;66bc	c7		.
	ld e,a			;66bd	5f		_
	jp 0c255h		;66be	c3 55 c2	. U .
	push bc			;66c1	c5		.
	ret z			;66c2	c8		.
	call z,03cc2h		;66c3	cc c2 3c	. . <
l66c6h:
	add a,0cch		;66c6	c6 cc		. .
	jp nz,0c633h		;66c8	c2 33 c6	. 3 .
	call z,0c3c2h		;66cb	cc c2 c3	. . .
	call nz,0c2cch		;66ce	c4 cc c2	. . .
	ld l,h			;66d1	6c		l
	add a,0cch		;66d2	c6 cc		. .
	ret z			;66d4	c8		.
	ld h,(hl)		;66d5	66		f
	ret z			;66d6	c8		.
	push af			;66d7	f5		.
	rst 0			;66d8	c7		.
	rst 38h			;66d9	ff		.
	ld e,a			;66da	5f		_
	rst 0			;66db	c7		.
	rst 38h			;66dc	ff		.
	ret			;66dd	c9		.
	ld e,a			;66de	5f		_
	rst 0			;66df	c7		.
	rst 38h			;66e0	ff		.
	pop bc			;66e1	c1		.
	push af			;66e2	f5		.
	jp nz,0c65fh		;66e3	c2 5f c6	. _ .
	rst 38h			;66e6	ff		.
	jp 0c555h		;66e7	c3 55 c5	. U .
	ld e,a			;66ea	5f		_
	ret z			;66eb	c8		.
	push af			;66ec	f5		.
	ret z			;66ed	c8		.
	ld e,a			;66ee	5f		_
	jp nz,0c845h		;66ef	c2 45 c8	. E .
	ld b,h			;66f2	44		D
	jp nz,0c674h		;66f3	c2 74 c6	. t .
	ld b,h			;66f6	44		D
	jp nz,0c677h		;66f7	c2 77 c6	. w .
	ld b,h			;66fa	44		D
	jp nz,0c447h		;66fb	c2 47 c4	. G .
	ld b,h			;66fe	44		D
	jp nz,0c6c4h		;66ff	c2 c4 c6	. . .
	ld b,h			;6702	44		D
	ret z			;6703	c8		.
	call z,011c6h		;6704	cc c6 11	. . .
	jp nz,0c851h		;6707	c2 51 c8	. Q .
	push af			;670a	f5		.
	ret z			;670b	c8		.
	ld e,a			;670c	5f		_
	call nz,0c4ffh		;670d	c4 ff c4	. . .
	push af			;6710	f5		.
	call nz,0c4ffh		;6711	c4 ff c4	. . .
	ld e,a			;6714	5f		_
	ret z			;6715	c8		.
	push af			;6716	f5		.
	add a,05fh		;6717	c6 5f		. _
	jp nz,0c1ffh		;6719	c2 ff c1	. . .
	push af			;671c	f5		.
	push bc			;671d	c5		.
	ld d,l			;671e	55		U
	jp 0c1ffh		;671f	c3 ff c1	. . .
	push af			;6722	f5		.
	jp 0c155h		;6723	c3 55 c1	. U .
	push af			;6726	f5		.
	call nz,0c3ffh		;6727	c4 ff c3	. . .
	push af			;672a	f5		.
	jp 0c8ffh		;672b	c3 ff c8	. . .
	ld e,a			;672e	5f		_
	jp 0c9f5h		;672f	c3 f5 c9	. . .
	rst 38h			;6732	ff		.
	call nz,0c25fh		;6733	c4 5f c2	. _ .
	ld d,l			;6736	55		U
	add a,05fh		;6737	c6 5f		. _
	jp z,0c144h		;6739	ca 44 c1	. D .
	call p,sub_44c2h	;673c	f4 c2 44	. . D
	pop bc			;673f	c1		.
	call p,sub_44c2h+2	;6740	f4 c4 44	. . D
	pop bc			;6743	c1		.
	rst 38h			;6744	ff		.
	jp nz,0c144h		;6745	c2 44 c1	. D .
	rst 38h			;6748	ff		.
	call nz,sub_4f44h	;6749	c4 44 4f	. D O
	jp nz,0c144h		;674c	c2 44 c1	. D .
	rst 38h			;674f	ff		.
	rst 0			;6750	c7		.
	ld b,h			;6751	44		D
	pop bc			;6752	c1		.
	rst 38h			;6753	ff		.
	jp nz,0c844h		;6754	c2 44 c8	. D .
	ld e,a			;6757	5f		_
	ret z			;6758	c8		.
	push af			;6759	f5		.
	ret z			;675a	c8		.
	ld e,a			;675b	5f		_
	ret z			;675c	c8		.
	push af			;675d	f5		.
	push bc			;675e	c5		.
	rst 38h			;675f	ff		.
	rst 0			;6760	c7		.
	ld e,a			;6761	5f		_
	jp 0c5f5h		;6762	c3 f5 c5	. . .
	rst 38h			;6765	ff		.
	rst 0			;6766	c7		.
	ld e,a			;6767	5f		_
	push bc			;6768	c5		.
	ld d,l			;6769	55		U
	ret z			;676a	c8		.
	push af			;676b	f5		.
	jp 0c55fh		;676c	c3 5f c5	. _ .
	rst 38h			;676f	ff		.
	call nz,0c455h		;6770	c4 55 c4	. U .
	ld e,a			;6773	5f		_
	pop bc			;6774	c1		.
	call p,sub_44c2h	;6775	f4 c2 44	. . D
	pop bc			;6778	c1		.
	call p,sub_44c2h	;6779	f4 c2 44	. . D
	pop bc			;677c	c1		.
	call p,0c144h		;677d	f4 44 c1	. D .
	rst 38h			;6780	ff		.
	jp nz,0c144h		;6781	c2 44 c1	. D .
	rst 38h			;6784	ff		.
	jp nz,0c144h		;6785	c2 44 c1	. D .
	rst 38h			;6788	ff		.
	ld b,h			;6789	44		D
	ld c,a			;678a	4f		O
	jp nz,0c144h		;678b	c2 44 c1	. D .
	rst 38h			;678e	ff		.
	jp nz,0c144h		;678f	c2 44 c1	. D .
	rst 38h			;6792	ff		.
	call nz,0c144h		;6793	c4 44 c1	. D .
	rst 38h			;6796	ff		.
	jp nz,0c144h		;6797	c2 44 c1	. D .
	rst 38h			;679a	ff		.
	call nz,sub_4f44h	;679b	c4 44 4f	. D O
	jp nz,0c144h		;679e	c2 44 c1	. D .
	rst 38h			;67a1	ff		.
	ld b,h			;67a2	44		D
	add a,066h		;67a3	c6 66		. f
	jp nz,00156h		;67a5	c2 56 01	. V .
	cp b			;67a8	b8		.
	ld bc,0c826h		;67a9	01 26 c8	. & .
	ld d,l			;67ac	55		U
	ret			;67ad	c9		.
	ld b,h			;67ae	44		D
	pop bc			;67af	c1		.
	call p,sub_44c2h	;67b0	f4 c2 44	. . D
	pop bc			;67b3	c1		.
	call p,sub_44c2h	;67b4	f4 c2 44	. . D
	pop bc			;67b7	c1		.
	call p,0c144h		;67b8	f4 44 c1	. D .
	rst 38h			;67bb	ff		.
	jp nz,0c144h		;67bc	c2 44 c1	. D .
	rst 38h			;67bf	ff		.
	jp nz,0c144h		;67c0	c2 44 c1	. D .
	rst 38h			;67c3	ff		.
	ld b,h			;67c4	44		D
	ld c,a			;67c5	4f		O
	jp nz,0c144h		;67c6	c2 44 c1	. D .
	rst 38h			;67c9	ff		.
	jp nz,0c144h		;67ca	c2 44 c1	. D .
	rst 38h			;67cd	ff		.
	call nz,0c144h		;67ce	c4 44 c1	. D .
	rst 38h			;67d1	ff		.
	jp nz,sub_4f44h		;67d2	c2 44 4f	. D O
	call nz,sub_4f44h	;67d5	c4 44 4f	. D O
	jp 0c844h		;67d8	c3 44 c8	. D .
	call z,0ffc3h		;67db	cc c3 ff	. . .
	ret z			;67de	c8		.
	ld e,a			;67df	5f		_
	push bc			;67e0	c5		.
	push af			;67e1	f5		.
	ld d,l			;67e2	55		U
	jp l55f5h		;67e3	c3 f5 55	. . U
	jp 0c5f5h		;67e6	c3 f5 c5	. . .
	ld d,l			;67e9	55		U
	jp 0c5f5h		;67ea	c3 f5 c5	. . .
	ld d,l			;67ed	55		U
	jp 0c55fh		;67ee	c3 5f c5	. _ .
	ld d,l			;67f1	55		U
	jp 0c5ffh		;67f2	c3 ff c5	. . .
	ld d,l			;67f5	55		U
	jp 0c55fh		;67f6	c3 5f c5	. _ .
	ld d,l			;67f9	55		U
	pop bc			;67fa	c1		.
	push af			;67fb	f5		.
	jp nz,0c55fh		;67fc	c2 5f c5	. _ .
	ld d,l			;67ff	55		U
	jp nz,0c15fh		;6800	c2 5f c1	. _ .
	rst 38h			;6803	ff		.
	push bc			;6804	c5		.
	ld d,l			;6805	55		U
	jp 0c2f5h		;6806	c3 f5 c2	. . .
	ld d,l			;6809	55		U
	jp 0c3f5h		;680a	c3 f5 c3	. . .
	ld e,a			;680d	5f		_
	jp nz,0c655h		;680e	c2 55 c6	. U .
	ld e,a			;6811	5f		_
	ld d,l			;6812	55		U
	jp l555fh		;6813	c3 5f 55	. _ U
	jp 0c55fh		;6816	c3 5f c5	. _ .
	ld d,l			;6819	55		U
	jp 0c25fh		;681a	c3 5f c2	. _ .
	ld b,h			;681d	44		D
	pop bc			;681e	c1		.
	call p,sub_44c2h	;681f	f4 c2 44	. . D
	pop bc			;6822	c1		.
	call p,sub_44c2h+2	;6823	f4 c4 44	. . D
	pop bc			;6826	c1		.
	rst 38h			;6827	ff		.
	jp nz,0c144h		;6828	c2 44 c1	. D .
	rst 38h			;682b	ff		.
	call nz,sub_4f44h	;682c	c4 44 4f	. D O
	jp nz,0c144h		;682f	c2 44 c1	. D .
	rst 38h			;6832	ff		.
	rst 0			;6833	c7		.
	ld b,h			;6834	44		D
	ld c,a			;6835	4f		O
	jp nz,0c644h		;6836	c2 44 c6	. D .
	call z,05cc2h		;6839	cc c2 5c	. . \
	call nz,0c35fh		;683c	c4 5f c3	. _ .
	rst 38h			;683f	ff		.
	ld d,l			;6840	55		U
	call nz,0c3f5h		;6841	c4 f5 c3	. . .
	ld e,a			;6844	5f		_
	ld d,l			;6845	55		U
	rst 0			;6846	c7		.
	push af			;6847	f5		.
	jp nz,0c155h		;6848	c2 55 c1	. U .
	push af			;684b	f5		.
	pop bc			;684c	c1		.
	rst 38h			;684d	ff		.
	ld e,a			;684e	5f		_
	jp nz,0c1ffh		;684f	c2 ff c1	. . .
	push af			;6852	f5		.
	ld d,l			;6853	55		U
	rst 0			;6854	c7		.
	ld e,a			;6855	5f		_
	ld d,l			;6856	55		U
	call nz,0c35fh		;6857	c4 5f c3	. _ .
	rst 38h			;685a	ff		.
	pop bc			;685b	c1		.
	push af			;685c	f5		.
	rst 8			;685d	cf		.
	ld e,a			;685e	5f		_
	ld d,l			;685f	55		U
	rst 0			;6860	c7		.
	ld e,a			;6861	5f		_
	ld d,l			;6862	55		U
	call nz,0c1f5h		;6863	c4 f5 c1	. . .
	rst 38h			;6866	ff		.
	jp nz,l555fh		;6867	c2 5f 55	. _ U
	jp l55f5h		;686a	c3 f5 55	. . U
	jp l55f5h		;686d	c3 f5 55	. . U
	pop bc			;6870	c1		.
	push af			;6871	f5		.
	jp nz,0c15fh		;6872	c2 5f c1	. _ .
	push af			;6875	f5		.
	jp l555fh		;6876	c3 5f 55	. _ U
	add a,05fh		;6879	c6 5f		. _
	pop bc			;687b	c1		.
	push af			;687c	f5		.
	ld d,l			;687d	55		U
	rst 0			;687e	c7		.
	ld e,a			;687f	5f		_
	ld d,l			;6880	55		U
	call nz,0c35fh		;6881	c4 5f c3	. _ .
	rst 38h			;6884	ff		.
	jp nz,0c255h		;6885	c2 55 c2	. U .
	ld e,a			;6888	5f		_
	pop bc			;6889	c1		.
	push af			;688a	f5		.
	jp l555fh		;688b	c3 5f 55	. _ U
	pop bc			;688e	c1		.
	call p,sub_44c2h	;688f	f4 c2 44	. . D
	pop bc			;6892	c1		.
	call p,sub_44c2h	;6893	f4 c2 44	. . D
	pop bc			;6896	c1		.
	call p,0c144h		;6897	f4 44 c1	. D .
	rst 38h			;689a	ff		.
	jp nz,0c144h		;689b	c2 44 c1	. D .
	rst 38h			;689e	ff		.
	jp nz,0c144h		;689f	c2 44 c1	. D .
	rst 38h			;68a2	ff		.
	ld b,h			;68a3	44		D
	pop bc			;68a4	c1		.
	rst 38h			;68a5	ff		.
	jp nz,sub_4f44h		;68a6	c2 44 4f	. D O
	jp nz,0c144h		;68a9	c2 44 c1	. D .
	rst 38h			;68ac	ff		.
	ld b,h			;68ad	44		D
	ld c,a			;68ae	4f		O
	push bc			;68af	c5		.
	ld b,h			;68b0	44		D
	pop bc			;68b1	c1		.
	rst 38h			;68b2	ff		.
	rst 0			;68b3	c7		.
	ld b,h			;68b4	44		D
	ld c,a			;68b5	4f		O
	ld b,h			;68b6	44		D
	jp 0c5f5h		;68b7	c3 f5 c5	. . .
	ld d,l			;68ba	55		U
	jp nz,0c65fh		;68bb	c2 5f c6	. _ .
	ld d,l			;68be	55		U
	add a,044h		;68bf	c6 44		. D
	jp nz,l4445h		;68c1	c2 45 44	. E D
	pop bc			;68c4	c1		.
	call p,044c7h		;68c5	f4 c7 44	. . D
	pop bc			;68c8	c1		.
	rst 38h			;68c9	ff		.
	rst 0			;68ca	c7		.
	ld b,h			;68cb	44		D
	ld c,a			;68cc	4f		O
	call z,0c244h		;68cd	cc 44 c2	. D .
	ld d,h			;68d0	54		T
	ld bc,001e0h		;68d1	01 e0 01	. . .
	inc sp			;68d4	33		3
	ret			;68d5	c9		.
	ld d,l			;68d6	55		U
	jp nz,0c5f5h		;68d7	c2 f5 c5	. . .
	ld e,a			;68da	5f		_
	ld d,l			;68db	55		U
	rst 0			;68dc	c7		.
	push af			;68dd	f5		.
	ld d,l			;68de	55		U
	jp nz,0c5f5h		;68df	c2 f5 c5	. . .
	ld e,a			;68e2	5f		_
	ld d,l			;68e3	55		U
	pop bc			;68e4	c1		.
	push af			;68e5	f5		.
	push bc			;68e6	c5		.
	ld e,a			;68e7	5f		_
	pop bc			;68e8	c1		.
	push af			;68e9	f5		.
	ld d,l			;68ea	55		U
	rst 0			;68eb	c7		.
	push af			;68ec	f5		.
	ld d,l			;68ed	55		U
	jp 05ff5h		;68ee	c3 f5 5f	. . _
	jp l55f5h		;68f1	c3 f5 55	. . U
	rst 0			;68f4	c7		.
	push af			;68f5	f5		.
	ld d,l			;68f6	55		U
	ld e,a			;68f7	5f		_
	jp nz,05ff5h		;68f8	c2 f5 5f	. . _
	jp nz,05ff5h		;68fb	c2 f5 5f	. . _
	ld d,l			;68fe	55		U
	rst 0			;68ff	c7		.
	push af			;6900	f5		.
	ld d,l			;6901	55		U
	ld e,a			;6902	5f		_
	ld d,l			;6903	55		U
	call nz,05ff5h		;6904	c4 f5 5f	. . _
	jp 0c155h		;6907	c3 55 c1	. U .
	push af			;690a	f5		.
	ld e,a			;690b	5f		_
	jp nz,05ff5h		;690c	c2 f5 5f	. . _
	jp 0c555h		;690f	c3 55 c5	. U .
	push af			;6912	f5		.
	ld d,l			;6913	55		U
	rst 0			;6914	c7		.
	push af			;6915	f5		.
	ld d,l			;6916	55		U
	pop bc			;6917	c1		.
	push af			;6918	f5		.
	ld d,l			;6919	55		U
	push bc			;691a	c5		.
	push af			;691b	f5		.
	jp 0c155h		;691c	c3 55 c1	. U .
	push af			;691f	f5		.
	call nz,0c35fh		;6920	c4 5f c3	. _ .
	ld d,l			;6923	55		U
	ld e,a			;6924	5f		_
	jp 05ff5h		;6925	c3 f5 5f	. . _
	jp nz,0c5f5h		;6928	c2 f5 c5	. . .
	ld d,l			;692b	55		U
	jp 0c5f5h		;692c	c3 f5 c5	. . .
	ld d,l			;692f	55		U
	pop bc			;6930	c1		.
	push af			;6931	f5		.
	rst 0			;6932	c7		.
	ld d,l			;6933	55		U
	pop bc			;6934	c1		.
	push af			;6935	f5		.
	rst 0			;6936	c7		.
	ld d,l			;6937	55		U
	pop bc			;6938	c1		.
	push af			;6939	f5		.
	ld d,l			;693a	55		U
	push bc			;693b	c5		.
	ld e,a			;693c	5f		_
	jp nz,0c555h		;693d	c2 55 c5	. U .
	push af			;6940	f5		.
	ld e,a			;6941	5f		_
	jp 05ff5h		;6942	c3 f5 5f	. . _
	call nz,0c2f5h		;6945	c4 f5 c2	. . .
	ld d,l			;6948	55		U
	add a,0f5h		;6949	c6 f5		. .
	jp l5f55h		;694b	c3 55 5f	. U _
	jp 05ff5h		;694e	c3 f5 5f	. . _
	jp l5f55h		;6951	c3 55 5f	. U _
	jp nz,05ff5h		;6954	c2 f5 5f	. . _
	pop bc			;6957	c1		.
	push af			;6958	f5		.
	jp nz,0c255h		;6959	c2 55 c2	. U .
	push af			;695c	f5		.
	call nz,0c35fh		;695d	c4 5f c3	. _ .
	ld d,l			;6960	55		U
	ld e,a			;6961	5f		_
	jp 05ff5h		;6962	c3 f5 5f	. . _
	jp 0c555h		;6965	c3 55 c5	. U .
	push af			;6968	f5		.
	jp l5f55h		;6969	c3 55 5f	. U _
	jp 05ff5h		;696c	c3 f5 5f	. . _
	jp 0c555h		;696f	c3 55 c5	. U .
	ld e,a			;6972	5f		_
	jp nz,0c255h		;6973	c2 55 c2	. U .
	ld de,0f1c6h		;6976	11 c6 f1	. . .
	jp nz,0c511h		;6979	c2 11 c5	. . .
	rra			;697c	1f		.
	pop bc			;697d	c1		.
	rst 38h			;697e	ff		.
	jp nz,0c211h		;697f	c2 11 c2	. . .
	pop af			;6982	f1		.
	pop bc			;6983	c1		.
	rst 38h			;6984	ff		.
	jp nz,0c11fh		;6985	c2 1f c1	. . .
	rst 38h			;6988	ff		.
	jp nz,0c311h		;6989	c2 11 c3	. . .
	rra			;698c	1f		.
	jp nz,01ff1h		;698d	c2 f1 1f	. . .
	jp nz,0c111h		;6990	c2 11 c1	. . .
	pop af			;6993	f1		.
	push bc			;6994	c5		.
	rra			;6995	1f		.
	push bc			;6996	c5		.
	ld d,l			;6997	55		U
	jp 0c615h		;6998	c3 15 c6	. . .
	ld d,l			;699b	55		U
	jp nz,0c215h		;699c	c2 15 c2	. . .
	ld de,0f1c6h		;699f	11 c6 f1	. . .
	jp nz,0c211h		;69a2	c2 11 c2	. . .
	pop af			;69a5	f1		.
	call nz,0c21fh		;69a6	c4 1f c2	. . .
	ld de,01fc2h		;69a9	11 c2 1f	. . .
	pop bc			;69ac	c1		.
	pop af			;69ad	f1		.
	jp 0111fh		;69ae	c3 1f 11	. . .
	rst 0			;69b1	c7		.
	pop af			;69b2	f1		.
	ld de,0ffc1h		;69b3	11 c1 ff	. . .
	add a,01fh		;69b6	c6 1f		. .
	ld de,01fc3h		;69b8	11 c3 1f	. . .
	jp 01ff1h		;69bb	c3 f1 1f	. . .
	add a,0f1h		;69be	c6 f1		. .
	jp nz,0c211h		;69c0	c2 11 c2	. . .
	rst 38h			;69c3	ff		.
	jp 0c11fh		;69c4	c3 1f c1	. . .
	pop af			;69c7	f1		.
	jp nz,0c311h		;69c8	c2 11 c3	. . .
	pop af			;69cb	f1		.
	jp 0c2ffh		;69cc	c3 ff c2	. . .
	ld de,01fc5h		;69cf	11 c5 1f	. . .
	pop bc			;69d2	c1		.
	pop af			;69d3	f1		.
	jp nz,0c411h		;69d4	c2 11 c4	. . .
	rra			;69d7	1f		.
	jp nz,0c2f1h		;69d8	c2 f1 c2	. . .
	ld de,015d8h		;69db	11 d8 15	. . .
	jp nz,0c255h		;69de	c2 55 c2	. U .
	ld d,c			;69e1	51		Q
	call nz,0c155h		;69e2	c4 55 c1	. U .
	pop af			;69e5	f1		.
	ld de,0f1c4h		;69e6	11 c4 f1	. . .
	jp nz,01f11h		;69e9	c2 11 1f	. . .
	jp nz,0c311h		;69ec	c2 11 c3	. . .
	pop af			;69ef	f1		.
	jp nz,01f11h		;69f0	c2 11 1f	. . .
	ld de,0f1c4h		;69f3	11 c4 f1	. . .
	jp nz,0c311h		;69f6	c2 11 c3	. . .
	pop af			;69f9	f1		.
	jp 0c11fh		;69fa	c3 1f c1	. . .
	pop af			;69fd	f1		.
	ld de,01fc6h		;69fe	11 c6 1f	. . .
	pop bc			;6a01	c1		.
	rst 38h			;6a02	ff		.
	ld de,0f1c6h		;6a03	11 c6 f1	. . .
	rra			;6a06	1f		.
	ld de,00001h		;6a07	11 01 00	. . .
	nop			;6a0a	00		.
	adc a,e			;6a0b	8b		.
	rst 38h			;6a0c	ff		.
	nop			;6a0d	00		.
	in a,(000h)		;6a0e	db 00		. .
	ld bc,00302h		;6a10	01 02 03	. . .
	inc b			;6a13	04		.
	push bc			;6a14	c5		.
	nop			;6a15	00		.
	dec b			;6a16	05		.
	ld b,007h		;6a17	06 07		. .
	ex af,af'		;6a19	08		.
	add hl,bc		;6a1a	09		.
	ld a,(bc)		;6a1b	0a		.
	jp 00c0bh		;6a1c	c3 0b 0c	. . .
	dec c			;6a1f	0d		.
	ld c,00fh		;6a20	0e 0f		. .
	djnz $-55		;6a22	10 c7		. .
	nop			;6a24	00		.
	ld de,01312h		;6a25	11 12 13	. . .
	inc d			;6a28	14		.
	dec d			;6a29	15		.
	ld d,0c4h		;6a2a	16 c4		. .
	nop			;6a2c	00		.
	rla			;6a2d	17		.
	dec bc			;6a2e	0b		.
	jr $+27			;6a2f	18 19		. .
	dec bc			;6a31	0b		.
	ld a,(de)		;6a32	1a		.
	dec de			;6a33	1b		.
	inc e			;6a34	1c		.
	dec e			;6a35	1d		.
	ld e,01fh		;6a36	1e 1f		. .
	jr nz,l6a5bh		;6a38	20 21		  !
	ld (000c6h),hl		;6a3a	22 c6 00	" . .
	inc hl			;6a3d	23		#
	inc h			;6a3e	24		$
	jp nz,02625h		;6a3f	c2 25 26	. % &
	daa			;6a42	27		'
	jr z,l6a5bh		;6a43	28 16		( .
	call nz,02900h		;6a45	c4 00 29	. . )
	ld hl,(00bc2h)		;6a48	2a c2 0b	* . .
	dec hl			;6a4b	2b		+
	inc l			;6a4c	2c		,
	dec l			;6a4d	2d		-
	dec bc			;6a4e	0b		.
	ld l,02fh		;6a4f	2e 2f		. /
	jr nc,$+13		;6a51	30 0b		0 .
	ld sp,000c5h		;6a53	31 c5 00	1 . .
	ld (0c333h),a		;6a56	32 33 c3	2 3 .
	inc (hl)		;6a59	34		4
	dec (hl)		;6a5a	35		5
l6a5bh:
	ld (hl),037h		;6a5b	36 37		6 7
	jr z,$+58		;6a5d	28 38		( 8
	call nz,03900h		;6a5f	c4 00 39	. . 9
	ld a,(03c3bh)		;6a62	3a 3b 3c	: ; <
	dec a			;6a65	3d		=
	ld a,03fh		;6a66	3e 3f		> ?
	ld b,b			;6a68	40		@
	ld b,c			;6a69	41		A
	ld b,d			;6a6a	42		B
	ld b,e			;6a6b	43		C
	ld b,h			;6a6c	44		D
	inc c			;6a6d	0c		.
	ld b,l			;6a6e	45		E
	call nz,sub_4600h	;6a6f	c4 00 46	. . F
	ld b,a			;6a72	47		G
	jp nz,04948h		;6a73	c2 48 49	. H I
	ld c,d			;6a76	4a		J
	ld b,(hl)		;6a77	46		F
	scf			;6a78	37		7
	jr z,$-57		;6a79	28 c5		( .
	nop			;6a7b	00		.
	dec b			;6a7c	05		.
	ld c,e			;6a7d	4b		K
	ld c,h			;6a7e	4c		L
	ld c,l			;6a7f	4d		M
	ld c,(hl)		;6a80	4e		N
	jp 04f0bh		;6a81	c3 0b 4f	. . O
	ld d,b			;6a84	50		P
	ld d,c			;6a85	51		Q
	ld d,d			;6a86	52		R
	ld d,e			;6a87	53		S
	ld d,h			;6a88	54		T
	ld d,l			;6a89	55		U
	jp sub_4600h		;6a8a	c3 00 46	. . F
	ld d,(hl)		;6a8d	56		V
	ld d,a			;6a8e	57		W
	ld e,b			;6a8f	58		X
	ld e,c			;6a90	59		Y
	ld e,d			;6a91	5a		Z
	ld b,(hl)		;6a92	46		F
	scf			;6a93	37		7
	ld e,e			;6a94	5b		[
	jp 00100h		;6a95	c3 00 01	. . .
	nop			;6a98	00		.
	nop			;6a99	00		.
	ld d,e			;6a9a	53		S
	call nc,00100h		;6a9b	d4 00 01	. . .
	ld (bc),a		;6a9e	02		.
	inc bc			;6a9f	03		.
	inc b			;6aa0	04		.
	dec b			;6aa1	05		.
	ld b,001h		;6aa2	06 01		. .
	rlca			;6aa4	07		.
	add a,000h		;6aa5	c6 00		. .
	ex af,af'		;6aa7	08		.
	add hl,bc		;6aa8	09		.
	ld a,(bc)		;6aa9	0a		.
	dec bc			;6aaa	0b		.
	inc c			;6aab	0c		.
	dec c			;6aac	0d		.
	ld c,00dh		;6aad	0e 0d		. .
	rrca			;6aaf	0f		.
	djnz l6ac3h		;6ab0	10 11		. .
	ld (de),a		;6ab2	12		.
	inc de			;6ab3	13		.
	inc d			;6ab4	14		.
	dec c			;6ab5	0d		.
	ld de,00015h		;6ab6	11 15 00	. . .
	ld bc,0c216h		;6ab9	01 16 c2	. . .
	rla			;6abc	17		.
	jr l6ad8h		;6abd	18 19		. .
	ld bc,0c61ah		;6abf	01 1a c6	. . .
	nop			;6ac2	00		.
l6ac3h:
	dec de			;6ac3	1b		.
	inc e			;6ac4	1c		.
	dec e			;6ac5	1d		.
	ld e,01fh		;6ac6	1e 1f		. .
	jr nz,l6aebh		;6ac8	20 21		  !
	ld (02423h),hl		;6aca	22 23 24	" # $
	dec h			;6acd	25		%
	ld h,027h		;6ace	26 27		& '
	jr z,l6afbh		;6ad0	28 29		( )
	dec h			;6ad2	25		%
	ld hl,(00100h)		;6ad3	2a 00 01	* . .
	dec hl			;6ad6	2b		+
	inc l			;6ad7	2c		,
l6ad8h:
	dec l			;6ad8	2d		-
	ld l,02fh		;6ad9	2e 2f		. /
	ld bc,000cch		;6adb	01 cc 00	. . .
	jr nc,$+51		;6ade	30 31		0 1
	rlc b			;6ae0	cb 00		. .
	ld (0c333h),a		;6ae2	32 33 c3	2 3 .
	inc (hl)		;6ae5	34		4
	dec (hl)		;6ae6	35		5
	ld (hl),0ffh		;6ae7	36 ff		6 .
	nop			;6ae9	00		.
	rst 38h			;6aea	ff		.
l6aebh:
	nop			;6aeb	00		.
	rst 0			;6aec	c7		.
	nop			;6aed	00		.
	ld bc,00000h		;6aee	01 00 00	. . .
	ld l,d			;6af1	6a		j
	pop hl			;6af2	e1		.
	nop			;6af3	00		.
	ld bc,00302h		;6af4	01 02 03	. . .
	inc b			;6af7	04		.
	dec b			;6af8	05		.
	ld b,007h		;6af9	06 07		. .
l6afbh:
	ex af,af'		;6afb	08		.
	add hl,bc		;6afc	09		.
	ld a,(bc)		;6afd	0a		.
	dec bc			;6afe	0b		.
	inc c			;6aff	0c		.
	dec c			;6b00	0d		.
	ld c,00fh		;6b01	0e 0f		. .
	djnz $-46		;6b03	10 d0		. .
	nop			;6b05	00		.
	ld de,00012h		;6b06	11 12 00	. . .
	inc de			;6b09	13		.
	jp nz,01400h		;6b0a	c2 00 14	. . .
	exx			;6b0d	d9		.
	nop			;6b0e	00		.
	dec d			;6b0f	15		.
	ld d,017h		;6b10	16 17		. .
	jr $+27			;6b12	18 19		. .
	ld a,(de)		;6b14	1a		.
	dec de			;6b15	1b		.
	inc e			;6b16	1c		.
	dec e			;6b17	1d		.
	ld e,01fh		;6b18	1e 1f		. .
	push af			;6b1a	f5		.
	nop			;6b1b	00		.
	jr nz,l6b3fh		;6b1c	20 21		  !
	ld (02423h),hl		;6b1e	22 23 24	" # $
	jp nz,02000h		;6b21	c2 00 20	. .  
	ld hl,02322h		;6b24	21 22 23	! " #
	inc h			;6b27	24		$
	dec h			;6b28	25		%
	jp nz,02000h		;6b29	c2 00 20	. .  
	ld hl,02322h		;6b2c	21 22 23	! " #
	inc h			;6b2f	24		$
	dec h			;6b30	25		%
	ld h,0c2h		;6b31	26 c2		& .
	nop			;6b33	00		.
	daa			;6b34	27		'
	jr z,l6b60h		;6b35	28 29		( )
	ld hl,(02c2bh)		;6b37	2a 2b 2c	* + ,
	jp nz,02d00h		;6b3a	c2 00 2d	. . -
	ld l,02fh		;6b3d	2e 2f		. /
l6b3fh:
	jr nc,l6b72h		;6b3f	30 31		0 1
	jp nz,02d00h		;6b41	c2 00 2d	. . -
	ld l,02fh		;6b44	2e 2f		. /
	jr nc,l6b79h		;6b46	30 31		0 1
	ld (000c2h),a		;6b48	32 c2 00	2 . .
	dec l			;6b4b	2d		-
	ld l,02fh		;6b4c	2e 2f		. /
	jr nc,l6b81h		;6b4e	30 31		0 1
	inc sp			;6b50	33		3
	inc (hl)		;6b51	34		4
	dec (hl)		;6b52	35		5
	nop			;6b53	00		.
	ld (hl),037h		;6b54	36 37		6 7
	jr c,l6b91h		;6b56	38 39		8 9
	ld a,(0e13bh)		;6b58	3a 3b e1	: ; .
	nop			;6b5b	00		.
l6b5ch:
	nop			;6b5c	00		.
	ld c,b			;6b5d	48		H
	nop			;6b5e	00		.
	inc d			;6b5f	14		.
l6b60h:
	nop			;6b60	00		.
	rst 0			;6b61	c7		.
	ld a,a			;6b62	7f		.
	ret			;6b63	c9		.
	nop			;6b64	00		.
	rst 0			;6b65	c7		.
	ld bc,l7fc8h		;6b66	01 c8 7f	. . .
	ret z			;6b69	c8		.
	nop			;6b6a	00		.
	ret z			;6b6b	c8		.
	ld bc,l7fc7h		;6b6c	01 c7 7f	. . .
	ret			;6b6f	c9		.
	nop			;6b70	00		.
	rst 0			;6b71	c7		.
l6b72h:
	ld bc,00000h		;6b72	01 00 00	. . .
	ld c,b			;6b75	48		H
	nop			;6b76	00		.
	inc d			;6b77	14		.
	nop			;6b78	00		.
l6b79h:
	rst 0			;6b79	c7		.
	ld a,a			;6b7a	7f		.
	ret			;6b7b	c9		.
	nop			;6b7c	00		.
	rst 0			;6b7d	c7		.
	ld bc,l7fc8h		;6b7e	01 c8 7f	. . .
l6b81h:
	ret z			;6b81	c8		.
	nop			;6b82	00		.
	ret z			;6b83	c8		.
	ld bc,l7fc7h		;6b84	01 c7 7f	. . .
	ret			;6b87	c9		.
	nop			;6b88	00		.
	rst 0			;6b89	c7		.
	ld bc,00000h		;6b8a	01 00 00	. . .
	ld c,b			;6b8d	48		H
	nop			;6b8e	00		.
	inc d			;6b8f	14		.
	nop			;6b90	00		.
l6b91h:
	rst 0			;6b91	c7		.
	ld a,a			;6b92	7f		.
	ret			;6b93	c9		.
	nop			;6b94	00		.
	rst 0			;6b95	c7		.
	ld bc,l7fc8h		;6b96	01 c8 7f	. . .
	ret z			;6b99	c8		.
	nop			;6b9a	00		.
	ret z			;6b9b	c8		.
	ld bc,l7fc7h		;6b9c	01 c7 7f	. . .
	ret			;6b9f	c9		.
	nop			;6ba0	00		.
	rst 0			;6ba1	c7		.
	ld bc,00000h		;6ba2	01 00 00	. . .
	ld c,b			;6ba5	48		H
	nop			;6ba6	00		.
	ld e,0c1h		;6ba7	1e c1		. .
	rst 38h			;6ba9	ff		.
	rst 0			;6baa	c7		.
	rra			;6bab	1f		.
	pop bc			;6bac	c1		.
	rst 38h			;6bad	ff		.
	rst 0			;6bae	c7		.
	ld de,0ffc1h		;6baf	11 c1 ff	. . .
	rst 0			;6bb2	c7		.
	pop af			;6bb3	f1		.
	ret z			;6bb4	c8		.
	rra			;6bb5	1f		.
	ret z			;6bb6	c8		.
	ld de,0f1c8h		;6bb7	11 c8 f1	. . .
	rst 0			;6bba	c7		.
	rra			;6bbb	1f		.
	pop bc			;6bbc	c1		.
	rst 38h			;6bbd	ff		.
	rst 0			;6bbe	c7		.
	ld de,0ffc1h		;6bbf	11 c1 ff	. . .
	rst 0			;6bc2	c7		.
	pop af			;6bc3	f1		.
	pop bc			;6bc4	c1		.
	rst 38h			;6bc5	ff		.
	nop			;6bc6	00		.
	ld c,b			;6bc7	48		H
	nop			;6bc8	00		.
	ld e,0c1h		;6bc9	1e c1		. .
	rst 38h			;6bcb	ff		.
	rst 0			;6bcc	c7		.
	rra			;6bcd	1f		.
	pop bc			;6bce	c1		.
	rst 38h			;6bcf	ff		.
	rst 0			;6bd0	c7		.
	ld de,0ffc1h		;6bd1	11 c1 ff	. . .
	rst 0			;6bd4	c7		.
	pop af			;6bd5	f1		.
	ret z			;6bd6	c8		.
	rra			;6bd7	1f		.
	ret z			;6bd8	c8		.
	ld de,0f1c8h		;6bd9	11 c8 f1	. . .
	rst 0			;6bdc	c7		.
	rra			;6bdd	1f		.
	pop bc			;6bde	c1		.
	rst 38h			;6bdf	ff		.
	rst 0			;6be0	c7		.
	ld de,0ffc1h		;6be1	11 c1 ff	. . .
	rst 0			;6be4	c7		.
	pop af			;6be5	f1		.
	pop bc			;6be6	c1		.
	rst 38h			;6be7	ff		.
	nop			;6be8	00		.
	ld c,b			;6be9	48		H
	nop			;6bea	00		.
	ld e,0c1h		;6beb	1e c1		. .
	rst 38h			;6bed	ff		.
	rst 0			;6bee	c7		.
	rra			;6bef	1f		.
	pop bc			;6bf0	c1		.
	rst 38h			;6bf1	ff		.
	rst 0			;6bf2	c7		.
	ld de,0ffc1h		;6bf3	11 c1 ff	. . .
	rst 0			;6bf6	c7		.
	pop af			;6bf7	f1		.
	ret z			;6bf8	c8		.
	rra			;6bf9	1f		.
	ret z			;6bfa	c8		.
	ld de,0f1c8h		;6bfb	11 c8 f1	. . .
	rst 0			;6bfe	c7		.
	rra			;6bff	1f		.
	pop bc			;6c00	c1		.
	rst 38h			;6c01	ff		.
	rst 0			;6c02	c7		.
	ld de,0ffc1h		;6c03	11 c1 ff	. . .
	rst 0			;6c06	c7		.
	pop af			;6c07	f1		.
	pop bc			;6c08	c1		.
	rst 38h			;6c09	ff		.
	ld bc,00100h		;6c0a	01 00 01	. . .
	nop			;6c0d	00		.
	nop			;6c0e	00		.
	jp nz,00201h		;6c0f	c2 01 02	. . .
	nop			;6c12	00		.
	jp nz,00201h		;6c13	c2 01 02	. . .
	nop			;6c16	00		.
	jp nz,00201h		;6c17	c2 01 02	. . .
	nop			;6c1a	00		.
	jp nz,00201h		;6c1b	c2 01 02	. . .
	nop			;6c1e	00		.
	jp nz,00201h		;6c1f	c2 01 02	. . .
	nop			;6c22	00		.
	jp nz,00201h		;6c23	c2 01 02	. . .
	nop			;6c26	00		.
	jp nz,00201h		;6c27	c2 01 02	. . .
	nop			;6c2a	00		.
	jp nz,00201h		;6c2b	c2 01 02	. . .
	inc bc			;6c2e	03		.
	jp nz,00504h		;6c2f	c2 04 05	. . .
	inc bc			;6c32	03		.
	jp nz,00504h		;6c33	c2 04 05	. . .
	inc bc			;6c36	03		.
	jp nz,00504h		;6c37	c2 04 05	. . .
	inc bc			;6c3a	03		.
	jp nz,00504h		;6c3b	c2 04 05	. . .
	inc bc			;6c3e	03		.
	jp nz,00504h		;6c3f	c2 04 05	. . .
	inc bc			;6c42	03		.
	jp nz,00504h		;6c43	c2 04 05	. . .
	inc bc			;6c46	03		.
	jp nz,00504h		;6c47	c2 04 05	. . .
	inc bc			;6c4a	03		.
	jp nz,00504h		;6c4b	c2 04 05	. . .
	inc bc			;6c4e	03		.
	jp nz,00504h		;6c4f	c2 04 05	. . .
	inc bc			;6c52	03		.
	jp nz,00504h		;6c53	c2 04 05	. . .
	inc bc			;6c56	03		.
	jp nz,00504h		;6c57	c2 04 05	. . .
	inc bc			;6c5a	03		.
	jp nz,00504h		;6c5b	c2 04 05	. . .
	inc bc			;6c5e	03		.
	jp nz,00504h		;6c5f	c2 04 05	. . .
	inc bc			;6c62	03		.
	jp nz,00504h		;6c63	c2 04 05	. . .
	inc bc			;6c66	03		.
	jp nz,00504h		;6c67	c2 04 05	. . .
	inc bc			;6c6a	03		.
	jp nz,00504h		;6c6b	c2 04 05	. . .
l6c6eh:
	ld b,0c2h		;6c6e	06 c2		. .
	rlca			;6c70	07		.
	ex af,af'		;6c71	08		.
	ld b,0c2h		;6c72	06 c2		. .
	rlca			;6c74	07		.
	ex af,af'		;6c75	08		.
	ld b,0c2h		;6c76	06 c2		. .
	rlca			;6c78	07		.
	ex af,af'		;6c79	08		.
	ld b,0c2h		;6c7a	06 c2		. .
	rlca			;6c7c	07		.
	ex af,af'		;6c7d	08		.
	ld b,0c2h		;6c7e	06 c2		. .
	rlca			;6c80	07		.
	ex af,af'		;6c81	08		.
	ld b,0c2h		;6c82	06 c2		. .
	rlca			;6c84	07		.
	ex af,af'		;6c85	08		.
	ld b,0c2h		;6c86	06 c2		. .
	rlca			;6c88	07		.
	ex af,af'		;6c89	08		.
	ld b,0c2h		;6c8a	06 c2		. .
	rlca			;6c8c	07		.
	ex af,af'		;6c8d	08		.
	nop			;6c8e	00		.
	jp nz,00201h		;6c8f	c2 01 02	. . .
	nop			;6c92	00		.
	jp nz,00201h		;6c93	c2 01 02	. . .
	nop			;6c96	00		.
	jp nz,00201h		;6c97	c2 01 02	. . .
	nop			;6c9a	00		.
	jp nz,00201h		;6c9b	c2 01 02	. . .
	nop			;6c9e	00		.
	jp nz,00201h		;6c9f	c2 01 02	. . .
	nop			;6ca2	00		.
	jp nz,00201h		;6ca3	c2 01 02	. . .
	nop			;6ca6	00		.
	jp nz,00201h		;6ca7	c2 01 02	. . .
	nop			;6caa	00		.
	jp nz,00201h		;6cab	c2 01 02	. . .
	inc bc			;6cae	03		.
	jp nz,00504h		;6caf	c2 04 05	. . .
	inc bc			;6cb2	03		.
	jp nz,00504h		;6cb3	c2 04 05	. . .
	inc bc			;6cb6	03		.
	jp nz,00504h		;6cb7	c2 04 05	. . .
	inc bc			;6cba	03		.
	jp nz,00504h		;6cbb	c2 04 05	. . .
	inc bc			;6cbe	03		.
	jp nz,00504h		;6cbf	c2 04 05	. . .
	inc bc			;6cc2	03		.
	jp nz,00504h		;6cc3	c2 04 05	. . .
	inc bc			;6cc6	03		.
	jp nz,00504h		;6cc7	c2 04 05	. . .
	inc bc			;6cca	03		.
	jp nz,00504h		;6ccb	c2 04 05	. . .
	inc bc			;6cce	03		.
	jp nz,00504h		;6ccf	c2 04 05	. . .
	inc bc			;6cd2	03		.
	jp nz,00504h		;6cd3	c2 04 05	. . .
	inc bc			;6cd6	03		.
	jp nz,00504h		;6cd7	c2 04 05	. . .
	inc bc			;6cda	03		.
	jp nz,00504h		;6cdb	c2 04 05	. . .
	inc bc			;6cde	03		.
	jp nz,00504h		;6cdf	c2 04 05	. . .
	inc bc			;6ce2	03		.
	jp nz,00504h		;6ce3	c2 04 05	. . .
	inc bc			;6ce6	03		.
	jp nz,00504h		;6ce7	c2 04 05	. . .
	inc bc			;6cea	03		.
	jp nz,00504h		;6ceb	c2 04 05	. . .
	ld b,0c2h		;6cee	06 c2		. .
	rlca			;6cf0	07		.
	ex af,af'		;6cf1	08		.
	ld b,0c2h		;6cf2	06 c2		. .
	rlca			;6cf4	07		.
	ex af,af'		;6cf5	08		.
	ld b,0c2h		;6cf6	06 c2		. .
	rlca			;6cf8	07		.
	ex af,af'		;6cf9	08		.
	ld b,0c2h		;6cfa	06 c2		. .
	rlca			;6cfc	07		.
	ex af,af'		;6cfd	08		.
	ld b,0c2h		;6cfe	06 c2		. .
	rlca			;6d00	07		.
	ex af,af'		;6d01	08		.
	ld b,0c2h		;6d02	06 c2		. .
	rlca			;6d04	07		.
	ex af,af'		;6d05	08		.
	ld b,0c2h		;6d06	06 c2		. .
	rlca			;6d08	07		.
	ex af,af'		;6d09	08		.
	ld b,0c2h		;6d0a	06 c2		. .
	rlca			;6d0c	07		.
	ex af,af'		;6d0d	08		.
	ld bc,00100h		;6d0e	01 00 01	. . .
	nop			;6d11	00		.
	nop			;6d12	00		.
	jp nz,00201h		;6d13	c2 01 02	. . .
	nop			;6d16	00		.
	jp nz,00201h		;6d17	c2 01 02	. . .
	nop			;6d1a	00		.
	jp nz,00201h		;6d1b	c2 01 02	. . .
	nop			;6d1e	00		.
	jp nz,00201h		;6d1f	c2 01 02	. . .
	nop			;6d22	00		.
	jp nz,00201h		;6d23	c2 01 02	. . .
	nop			;6d26	00		.
	jp nz,00201h		;6d27	c2 01 02	. . .
	nop			;6d2a	00		.
	jp nz,00201h		;6d2b	c2 01 02	. . .
	nop			;6d2e	00		.
	jp nz,00201h		;6d2f	c2 01 02	. . .
	inc bc			;6d32	03		.
	jp nz,00504h		;6d33	c2 04 05	. . .
	inc bc			;6d36	03		.
	jp nz,00504h		;6d37	c2 04 05	. . .
	inc bc			;6d3a	03		.
	jp nz,00504h		;6d3b	c2 04 05	. . .
	inc bc			;6d3e	03		.
	jp nz,00504h		;6d3f	c2 04 05	. . .
	inc bc			;6d42	03		.
	jp nz,00504h		;6d43	c2 04 05	. . .
	inc bc			;6d46	03		.
	jp nz,00504h		;6d47	c2 04 05	. . .
	inc bc			;6d4a	03		.
	jp nz,00504h		;6d4b	c2 04 05	. . .
	inc bc			;6d4e	03		.
	jp nz,00504h		;6d4f	c2 04 05	. . .
	inc bc			;6d52	03		.
	jp nz,00504h		;6d53	c2 04 05	. . .
	inc bc			;6d56	03		.
	jp nz,00504h		;6d57	c2 04 05	. . .
	inc bc			;6d5a	03		.
	jp nz,00504h		;6d5b	c2 04 05	. . .
	inc bc			;6d5e	03		.
	jp nz,00504h		;6d5f	c2 04 05	. . .
	inc bc			;6d62	03		.
	jp nz,00504h		;6d63	c2 04 05	. . .
	inc bc			;6d66	03		.
	jp nz,00504h		;6d67	c2 04 05	. . .
	inc bc			;6d6a	03		.
	jp nz,00504h		;6d6b	c2 04 05	. . .
	inc bc			;6d6e	03		.
	jp nz,00504h		;6d6f	c2 04 05	. . .
	ld b,0c2h		;6d72	06 c2		. .
	rlca			;6d74	07		.
	ex af,af'		;6d75	08		.
	ld b,0c2h		;6d76	06 c2		. .
	rlca			;6d78	07		.
	ex af,af'		;6d79	08		.
	ld b,0c2h		;6d7a	06 c2		. .
	rlca			;6d7c	07		.
	ex af,af'		;6d7d	08		.
	ld b,0c2h		;6d7e	06 c2		. .
	rlca			;6d80	07		.
	ex af,af'		;6d81	08		.
	ld b,0c2h		;6d82	06 c2		. .
	rlca			;6d84	07		.
	ex af,af'		;6d85	08		.
	ld b,0c2h		;6d86	06 c2		. .
	rlca			;6d88	07		.
	ex af,af'		;6d89	08		.
	ld b,0c2h		;6d8a	06 c2		. .
	rlca			;6d8c	07		.
	ex af,af'		;6d8d	08		.
	ld b,0c2h		;6d8e	06 c2		. .
	rlca			;6d90	07		.
	ex af,af'		;6d91	08		.
	nop			;6d92	00		.
	jp nz,00201h		;6d93	c2 01 02	. . .
	nop			;6d96	00		.
	jp nz,00201h		;6d97	c2 01 02	. . .
	nop			;6d9a	00		.
	jp nz,00201h		;6d9b	c2 01 02	. . .
	nop			;6d9e	00		.
	jp nz,00201h		;6d9f	c2 01 02	. . .
	nop			;6da2	00		.
	jp nz,00201h		;6da3	c2 01 02	. . .
	nop			;6da6	00		.
	jp nz,00201h		;6da7	c2 01 02	. . .
	nop			;6daa	00		.
	jp nz,00201h		;6dab	c2 01 02	. . .
	nop			;6dae	00		.
	jp nz,00201h		;6daf	c2 01 02	. . .
	inc bc			;6db2	03		.
	jp nz,00504h		;6db3	c2 04 05	. . .
	inc bc			;6db6	03		.
	jp nz,00504h		;6db7	c2 04 05	. . .
	inc bc			;6dba	03		.
	jp nz,00504h		;6dbb	c2 04 05	. . .
	inc bc			;6dbe	03		.
	jp nz,00504h		;6dbf	c2 04 05	. . .
	inc bc			;6dc2	03		.
	jp nz,00504h		;6dc3	c2 04 05	. . .
	inc bc			;6dc6	03		.
	jp nz,00504h		;6dc7	c2 04 05	. . .
	inc bc			;6dca	03		.
	jp nz,00504h		;6dcb	c2 04 05	. . .
	inc bc			;6dce	03		.
	jp nz,00504h		;6dcf	c2 04 05	. . .
	inc bc			;6dd2	03		.
	jp nz,00504h		;6dd3	c2 04 05	. . .
	inc bc			;6dd6	03		.
	jp nz,00504h		;6dd7	c2 04 05	. . .
	inc bc			;6dda	03		.
	jp nz,00504h		;6ddb	c2 04 05	. . .
	inc bc			;6dde	03		.
	jp nz,00504h		;6ddf	c2 04 05	. . .
	inc bc			;6de2	03		.
	jp nz,00504h		;6de3	c2 04 05	. . .
	inc bc			;6de6	03		.
	jp nz,00504h		;6de7	c2 04 05	. . .
	inc bc			;6dea	03		.
	jp nz,00504h		;6deb	c2 04 05	. . .
	inc bc			;6dee	03		.
	jp nz,00504h		;6def	c2 04 05	. . .
	ld b,0c2h		;6df2	06 c2		. .
	rlca			;6df4	07		.
	ex af,af'		;6df5	08		.
	ld b,0c2h		;6df6	06 c2		. .
	rlca			;6df8	07		.
	ex af,af'		;6df9	08		.
	ld b,0c2h		;6dfa	06 c2		. .
	rlca			;6dfc	07		.
	ex af,af'		;6dfd	08		.
	ld b,0c2h		;6dfe	06 c2		. .
l6e00h:
	rlca			;6e00	07		.
	ex af,af'		;6e01	08		.
	ld b,0c2h		;6e02	06 c2		. .
	rlca			;6e04	07		.
	ex af,af'		;6e05	08		.
	ld b,0c2h		;6e06	06 c2		. .
	rlca			;6e08	07		.
	ex af,af'		;6e09	08		.
	ld b,0c2h		;6e0a	06 c2		. .
	rlca			;6e0c	07		.
	ex af,af'		;6e0d	08		.
	ld b,0c2h		;6e0e	06 c2		. .
	rlca			;6e10	07		.
	ex af,af'		;6e11	08		.
	ld bc,00100h		;6e12	01 00 01	. . .
	nop			;6e15	00		.
	nop			;6e16	00		.
	jp nz,00201h		;6e17	c2 01 02	. . .
	nop			;6e1a	00		.
	jp nz,00201h		;6e1b	c2 01 02	. . .
	nop			;6e1e	00		.
	jp nz,00201h		;6e1f	c2 01 02	. . .
	nop			;6e22	00		.
	jp nz,00201h		;6e23	c2 01 02	. . .
	nop			;6e26	00		.
	jp nz,00201h		;6e27	c2 01 02	. . .
	nop			;6e2a	00		.
	jp nz,00201h		;6e2b	c2 01 02	. . .
l6e2eh:
	nop			;6e2e	00		.
	jp nz,00201h		;6e2f	c2 01 02	. . .
	nop			;6e32	00		.
	jp nz,00201h		;6e33	c2 01 02	. . .
	inc bc			;6e36	03		.
	jp nz,00504h		;6e37	c2 04 05	. . .
	inc bc			;6e3a	03		.
	jp nz,00504h		;6e3b	c2 04 05	. . .
	inc bc			;6e3e	03		.
	jp nz,00504h		;6e3f	c2 04 05	. . .
	inc bc			;6e42	03		.
	jp nz,00504h		;6e43	c2 04 05	. . .
	inc bc			;6e46	03		.
	jp nz,00504h		;6e47	c2 04 05	. . .
	inc bc			;6e4a	03		.
	jp nz,00504h		;6e4b	c2 04 05	. . .
	inc bc			;6e4e	03		.
	jp nz,00504h		;6e4f	c2 04 05	. . .
	inc bc			;6e52	03		.
	jp nz,00504h		;6e53	c2 04 05	. . .
	inc bc			;6e56	03		.
	jp nz,00504h		;6e57	c2 04 05	. . .
	inc bc			;6e5a	03		.
	jp nz,00504h		;6e5b	c2 04 05	. . .
	inc bc			;6e5e	03		.
	jp nz,00504h		;6e5f	c2 04 05	. . .
	inc bc			;6e62	03		.
	jp nz,00504h		;6e63	c2 04 05	. . .
	inc bc			;6e66	03		.
	jp nz,00504h		;6e67	c2 04 05	. . .
	inc bc			;6e6a	03		.
	jp nz,00504h		;6e6b	c2 04 05	. . .
	inc bc			;6e6e	03		.
	jp nz,00504h		;6e6f	c2 04 05	. . .
	inc bc			;6e72	03		.
	jp nz,00504h		;6e73	c2 04 05	. . .
	ld b,0c2h		;6e76	06 c2		. .
	rlca			;6e78	07		.
	ex af,af'		;6e79	08		.
	ld b,0c2h		;6e7a	06 c2		. .
	rlca			;6e7c	07		.
	ex af,af'		;6e7d	08		.
	ld b,0c2h		;6e7e	06 c2		. .
	rlca			;6e80	07		.
	ex af,af'		;6e81	08		.
	ld b,0c2h		;6e82	06 c2		. .
	rlca			;6e84	07		.
	ex af,af'		;6e85	08		.
	ld b,0c2h		;6e86	06 c2		. .
	rlca			;6e88	07		.
	ex af,af'		;6e89	08		.
	ld b,0c2h		;6e8a	06 c2		. .
	rlca			;6e8c	07		.
	ex af,af'		;6e8d	08		.
	ld b,0c2h		;6e8e	06 c2		. .
	rlca			;6e90	07		.
	ex af,af'		;6e91	08		.
	ld b,0c2h		;6e92	06 c2		. .
	rlca			;6e94	07		.
	ex af,af'		;6e95	08		.
	nop			;6e96	00		.
	jp nz,00201h		;6e97	c2 01 02	. . .
	nop			;6e9a	00		.
	jp nz,00201h		;6e9b	c2 01 02	. . .
	nop			;6e9e	00		.
	jp nz,00201h		;6e9f	c2 01 02	. . .
	nop			;6ea2	00		.
	jp nz,00201h		;6ea3	c2 01 02	. . .
	nop			;6ea6	00		.
	jp nz,00201h		;6ea7	c2 01 02	. . .
	nop			;6eaa	00		.
	jp nz,00201h		;6eab	c2 01 02	. . .
	nop			;6eae	00		.
	jp nz,00201h		;6eaf	c2 01 02	. . .
	nop			;6eb2	00		.
	jp nz,00201h		;6eb3	c2 01 02	. . .
	inc bc			;6eb6	03		.
	jp nz,00504h		;6eb7	c2 04 05	. . .
	inc bc			;6eba	03		.
	jp nz,00504h		;6ebb	c2 04 05	. . .
	inc bc			;6ebe	03		.
	jp nz,00504h		;6ebf	c2 04 05	. . .
	inc bc			;6ec2	03		.
	jp nz,00504h		;6ec3	c2 04 05	. . .
	inc bc			;6ec6	03		.
	jp nz,00504h		;6ec7	c2 04 05	. . .
	inc bc			;6eca	03		.
	jp nz,00504h		;6ecb	c2 04 05	. . .
	inc bc			;6ece	03		.
	jp nz,00504h		;6ecf	c2 04 05	. . .
	inc bc			;6ed2	03		.
	jp nz,00504h		;6ed3	c2 04 05	. . .
	inc bc			;6ed6	03		.
	jp nz,00504h		;6ed7	c2 04 05	. . .
	inc bc			;6eda	03		.
	jp nz,00504h		;6edb	c2 04 05	. . .
	inc bc			;6ede	03		.
	jp nz,00504h		;6edf	c2 04 05	. . .
	inc bc			;6ee2	03		.
	jp nz,00504h		;6ee3	c2 04 05	. . .
	inc bc			;6ee6	03		.
	jp nz,00504h		;6ee7	c2 04 05	. . .
	inc bc			;6eea	03		.
	jp nz,00504h		;6eeb	c2 04 05	. . .
	inc bc			;6eee	03		.
	jp nz,00504h		;6eef	c2 04 05	. . .
	inc bc			;6ef2	03		.
	jp nz,00504h		;6ef3	c2 04 05	. . .
	ld b,0c2h		;6ef6	06 c2		. .
	rlca			;6ef8	07		.
	ex af,af'		;6ef9	08		.
	ld b,0c2h		;6efa	06 c2		. .
	rlca			;6efc	07		.
	ex af,af'		;6efd	08		.
	ld b,0c2h		;6efe	06 c2		. .
	rlca			;6f00	07		.
	ex af,af'		;6f01	08		.
	ld b,0c2h		;6f02	06 c2		. .
	rlca			;6f04	07		.
	ex af,af'		;6f05	08		.
	ld b,0c2h		;6f06	06 c2		. .
	rlca			;6f08	07		.
	ex af,af'		;6f09	08		.
	ld b,0c2h		;6f0a	06 c2		. .
	rlca			;6f0c	07		.
	ex af,af'		;6f0d	08		.
	ld b,0c2h		;6f0e	06 c2		. .
	rlca			;6f10	07		.
	ex af,af'		;6f11	08		.
	ld b,0c2h		;6f12	06 c2		. .
	rlca			;6f14	07		.
	ex af,af'		;6f15	08		.
l6f16h:
	nop			;6f16	00		.
	ld c,b			;6f17	48		H
	nop			;6f18	00		.
	inc d			;6f19	14		.
	nop			;6f1a	00		.
	rst 0			;6f1b	c7		.
	ld a,a			;6f1c	7f		.
	ret			;6f1d	c9		.
	nop			;6f1e	00		.
	rst 0			;6f1f	c7		.
	ld bc,l7fc8h		;6f20	01 c8 7f	. . .
	ret z			;6f23	c8		.
	nop			;6f24	00		.
	ret z			;6f25	c8		.
	ld bc,l7fc7h		;6f26	01 c7 7f	. . .
	ret			;6f29	c9		.
	nop			;6f2a	00		.
	rst 0			;6f2b	c7		.
	ld bc,00000h		;6f2c	01 00 00	. . .
	ld c,b			;6f2f	48		H
	nop			;6f30	00		.
	inc d			;6f31	14		.
	nop			;6f32	00		.
	rst 0			;6f33	c7		.
	ld a,a			;6f34	7f		.
	ret			;6f35	c9		.
	nop			;6f36	00		.
	rst 0			;6f37	c7		.
	ld bc,l7fc8h		;6f38	01 c8 7f	. . .
	ret z			;6f3b	c8		.
	nop			;6f3c	00		.
	ret z			;6f3d	c8		.
	ld bc,l7fc7h		;6f3e	01 c7 7f	. . .
	ret			;6f41	c9		.
	nop			;6f42	00		.
	rst 0			;6f43	c7		.
	ld bc,00000h		;6f44	01 00 00	. . .
	ld c,b			;6f47	48		H
	nop			;6f48	00		.
	inc d			;6f49	14		.
	nop			;6f4a	00		.
	rst 0			;6f4b	c7		.
	ld a,a			;6f4c	7f		.
	ret			;6f4d	c9		.
	nop			;6f4e	00		.
	rst 0			;6f4f	c7		.
	ld bc,l7fc8h		;6f50	01 c8 7f	. . .
	ret z			;6f53	c8		.
	nop			;6f54	00		.
	ret z			;6f55	c8		.
	ld bc,l7fc7h		;6f56	01 c7 7f	. . .
	ret			;6f59	c9		.
	nop			;6f5a	00		.
	rst 0			;6f5b	c7		.
	ld bc,00000h		;6f5c	01 00 00	. . .
	ld c,b			;6f5f	48		H
	nop			;6f60	00		.
	jr $+19			;6f61	18 11		. .
	rst 0			;6f63	c7		.
	pop af			;6f64	f1		.
	ld de,0ffc7h		;6f65	11 c7 ff	. . .
	ld de,01fc7h		;6f68	11 c7 1f	. . .
	ret z			;6f6b	c8		.
	pop af			;6f6c	f1		.
	ret z			;6f6d	c8		.
	rst 38h			;6f6e	ff		.
	ret z			;6f6f	c8		.
	rra			;6f70	1f		.
	rst 0			;6f71	c7		.
	pop af			;6f72	f1		.
	ld de,0ffc7h		;6f73	11 c7 ff	. . .
	ld de,01fc7h		;6f76	11 c7 1f	. . .
	ld de,04800h		;6f79	11 00 48	. . H
	nop			;6f7c	00		.
	jr $+19			;6f7d	18 11		. .
	rst 0			;6f7f	c7		.
	pop af			;6f80	f1		.
	ld de,0ffc7h		;6f81	11 c7 ff	. . .
	ld de,01fc7h		;6f84	11 c7 1f	. . .
	ret z			;6f87	c8		.
	pop af			;6f88	f1		.
	ret z			;6f89	c8		.
	rst 38h			;6f8a	ff		.
	ret z			;6f8b	c8		.
	rra			;6f8c	1f		.
	rst 0			;6f8d	c7		.
	pop af			;6f8e	f1		.
	ld de,0ffc7h		;6f8f	11 c7 ff	. . .
	ld de,01fc7h		;6f92	11 c7 1f	. . .
	ld de,04800h		;6f95	11 00 48	. . H
	nop			;6f98	00		.
	jr $+19			;6f99	18 11		. .
	rst 0			;6f9b	c7		.
	pop af			;6f9c	f1		.
	ld de,0ffc7h		;6f9d	11 c7 ff	. . .
	ld de,01fc7h		;6fa0	11 c7 1f	. . .
	ret z			;6fa3	c8		.
	pop af			;6fa4	f1		.
	ret z			;6fa5	c8		.
	rst 38h			;6fa6	ff		.
	ret z			;6fa7	c8		.
	rra			;6fa8	1f		.
	rst 0			;6fa9	c7		.
	pop af			;6faa	f1		.
	ld de,0ffc7h		;6fab	11 c7 ff	. . .
	ld de,01fc7h		;6fae	11 c7 1f	. . .
	ld de,00001h		;6fb1	11 01 00	. . .
	ld bc,00000h		;6fb4	01 00 00	. . .
	jp nz,00201h		;6fb7	c2 01 02	. . .
	nop			;6fba	00		.
	jp nz,00201h		;6fbb	c2 01 02	. . .
	nop			;6fbe	00		.
	jp nz,00201h		;6fbf	c2 01 02	. . .
	nop			;6fc2	00		.
	jp nz,00201h		;6fc3	c2 01 02	. . .
	nop			;6fc6	00		.
	jp nz,00201h		;6fc7	c2 01 02	. . .
	nop			;6fca	00		.
	jp nz,00201h		;6fcb	c2 01 02	. . .
	nop			;6fce	00		.
	jp nz,00201h		;6fcf	c2 01 02	. . .
	nop			;6fd2	00		.
	jp nz,00201h		;6fd3	c2 01 02	. . .
	inc bc			;6fd6	03		.
	jp nz,00504h		;6fd7	c2 04 05	. . .
	inc bc			;6fda	03		.
	jp nz,00504h		;6fdb	c2 04 05	. . .
	inc bc			;6fde	03		.
	jp nz,00504h		;6fdf	c2 04 05	. . .
	inc bc			;6fe2	03		.
	jp nz,00504h		;6fe3	c2 04 05	. . .
	inc bc			;6fe6	03		.
	jp nz,00504h		;6fe7	c2 04 05	. . .
	inc bc			;6fea	03		.
	jp nz,00504h		;6feb	c2 04 05	. . .
	inc bc			;6fee	03		.
	jp nz,00504h		;6fef	c2 04 05	. . .
	inc bc			;6ff2	03		.
	jp nz,00504h		;6ff3	c2 04 05	. . .
	inc bc			;6ff6	03		.
	jp nz,00504h		;6ff7	c2 04 05	. . .
	inc bc			;6ffa	03		.
	jp nz,00504h		;6ffb	c2 04 05	. . .
	inc bc			;6ffe	03		.
	jp nz,00504h		;6fff	c2 04 05	. . .
	inc bc			;7002	03		.
	jp nz,00504h		;7003	c2 04 05	. . .
	inc bc			;7006	03		.
	jp nz,00504h		;7007	c2 04 05	. . .
	inc bc			;700a	03		.
	jp nz,00504h		;700b	c2 04 05	. . .
	inc bc			;700e	03		.
	jp nz,00504h		;700f	c2 04 05	. . .
	inc bc			;7012	03		.
	jp nz,00504h		;7013	c2 04 05	. . .
	ld b,0c2h		;7016	06 c2		. .
	rlca			;7018	07		.
	ex af,af'		;7019	08		.
	ld b,0c2h		;701a	06 c2		. .
	rlca			;701c	07		.
	ex af,af'		;701d	08		.
	ld b,0c2h		;701e	06 c2		. .
	rlca			;7020	07		.
	ex af,af'		;7021	08		.
	ld b,0c2h		;7022	06 c2		. .
	rlca			;7024	07		.
	ex af,af'		;7025	08		.
	ld b,0c2h		;7026	06 c2		. .
	rlca			;7028	07		.
	ex af,af'		;7029	08		.
	ld b,0c2h		;702a	06 c2		. .
	rlca			;702c	07		.
	ex af,af'		;702d	08		.
	ld b,0c2h		;702e	06 c2		. .
	rlca			;7030	07		.
	ex af,af'		;7031	08		.
	ld b,0c2h		;7032	06 c2		. .
	rlca			;7034	07		.
	ex af,af'		;7035	08		.
	nop			;7036	00		.
	jp nz,00201h		;7037	c2 01 02	. . .
	nop			;703a	00		.
	jp nz,00201h		;703b	c2 01 02	. . .
	nop			;703e	00		.
	jp nz,00201h		;703f	c2 01 02	. . .
	nop			;7042	00		.
	jp nz,00201h		;7043	c2 01 02	. . .
	nop			;7046	00		.
	jp nz,00201h		;7047	c2 01 02	. . .
	nop			;704a	00		.
	jp nz,00201h		;704b	c2 01 02	. . .
	nop			;704e	00		.
	jp nz,00201h		;704f	c2 01 02	. . .
	nop			;7052	00		.
	jp nz,00201h		;7053	c2 01 02	. . .
	inc bc			;7056	03		.
	jp nz,00504h		;7057	c2 04 05	. . .
	inc bc			;705a	03		.
	jp nz,00504h		;705b	c2 04 05	. . .
	inc bc			;705e	03		.
	jp nz,00504h		;705f	c2 04 05	. . .
	inc bc			;7062	03		.
	jp nz,00504h		;7063	c2 04 05	. . .
	inc bc			;7066	03		.
	jp nz,00504h		;7067	c2 04 05	. . .
	inc bc			;706a	03		.
	jp nz,00504h		;706b	c2 04 05	. . .
	inc bc			;706e	03		.
	jp nz,00504h		;706f	c2 04 05	. . .
	inc bc			;7072	03		.
	jp nz,00504h		;7073	c2 04 05	. . .
	inc bc			;7076	03		.
	jp nz,00504h		;7077	c2 04 05	. . .
	inc bc			;707a	03		.
	jp nz,00504h		;707b	c2 04 05	. . .
	inc bc			;707e	03		.
	jp nz,00504h		;707f	c2 04 05	. . .
	inc bc			;7082	03		.
	jp nz,00504h		;7083	c2 04 05	. . .
	inc bc			;7086	03		.
	jp nz,00504h		;7087	c2 04 05	. . .
	inc bc			;708a	03		.
	jp nz,00504h		;708b	c2 04 05	. . .
	inc bc			;708e	03		.
	jp nz,00504h		;708f	c2 04 05	. . .
	inc bc			;7092	03		.
	jp nz,00504h		;7093	c2 04 05	. . .
	ld b,0c2h		;7096	06 c2		. .
	rlca			;7098	07		.
	ex af,af'		;7099	08		.
	ld b,0c2h		;709a	06 c2		. .
	rlca			;709c	07		.
	ex af,af'		;709d	08		.
	ld b,0c2h		;709e	06 c2		. .
	rlca			;70a0	07		.
	ex af,af'		;70a1	08		.
	ld b,0c2h		;70a2	06 c2		. .
	rlca			;70a4	07		.
	ex af,af'		;70a5	08		.
	ld b,0c2h		;70a6	06 c2		. .
	rlca			;70a8	07		.
	ex af,af'		;70a9	08		.
	ld b,0c2h		;70aa	06 c2		. .
	rlca			;70ac	07		.
	ex af,af'		;70ad	08		.
	ld b,0c2h		;70ae	06 c2		. .
	rlca			;70b0	07		.
	ex af,af'		;70b1	08		.
	ld b,0c2h		;70b2	06 c2		. .
	rlca			;70b4	07		.
	ex af,af'		;70b5	08		.
	ld bc,00100h		;70b6	01 00 01	. . .
	nop			;70b9	00		.
	nop			;70ba	00		.
	jp nz,00201h		;70bb	c2 01 02	. . .
	nop			;70be	00		.
	jp nz,00201h		;70bf	c2 01 02	. . .
	nop			;70c2	00		.
	jp nz,00201h		;70c3	c2 01 02	. . .
	nop			;70c6	00		.
	jp nz,00201h		;70c7	c2 01 02	. . .
	nop			;70ca	00		.
	jp nz,00201h		;70cb	c2 01 02	. . .
	nop			;70ce	00		.
	jp nz,00201h		;70cf	c2 01 02	. . .
	nop			;70d2	00		.
	jp nz,00201h		;70d3	c2 01 02	. . .
	nop			;70d6	00		.
	jp nz,00201h		;70d7	c2 01 02	. . .
	inc bc			;70da	03		.
	jp nz,00504h		;70db	c2 04 05	. . .
	inc bc			;70de	03		.
	jp nz,00504h		;70df	c2 04 05	. . .
	inc bc			;70e2	03		.
	jp nz,00504h		;70e3	c2 04 05	. . .
	inc bc			;70e6	03		.
	jp nz,00504h		;70e7	c2 04 05	. . .
	inc bc			;70ea	03		.
	jp nz,00504h		;70eb	c2 04 05	. . .
	inc bc			;70ee	03		.
	jp nz,00504h		;70ef	c2 04 05	. . .
	inc bc			;70f2	03		.
	jp nz,00504h		;70f3	c2 04 05	. . .
	inc bc			;70f6	03		.
	jp nz,00504h		;70f7	c2 04 05	. . .
	inc bc			;70fa	03		.
	jp nz,00504h		;70fb	c2 04 05	. . .
	inc bc			;70fe	03		.
	jp nz,00504h		;70ff	c2 04 05	. . .
	inc bc			;7102	03		.
	jp nz,00504h		;7103	c2 04 05	. . .
	inc bc			;7106	03		.
	jp nz,00504h		;7107	c2 04 05	. . .
	inc bc			;710a	03		.
	jp nz,00504h		;710b	c2 04 05	. . .
	inc bc			;710e	03		.
	jp nz,00504h		;710f	c2 04 05	. . .
	inc bc			;7112	03		.
	jp nz,00504h		;7113	c2 04 05	. . .
	inc bc			;7116	03		.
	jp nz,00504h		;7117	c2 04 05	. . .
	ld b,0c2h		;711a	06 c2		. .
	rlca			;711c	07		.
	ex af,af'		;711d	08		.
	ld b,0c2h		;711e	06 c2		. .
	rlca			;7120	07		.
	ex af,af'		;7121	08		.
	ld b,0c2h		;7122	06 c2		. .
	rlca			;7124	07		.
	ex af,af'		;7125	08		.
	ld b,0c2h		;7126	06 c2		. .
	rlca			;7128	07		.
	ex af,af'		;7129	08		.
	ld b,0c2h		;712a	06 c2		. .
	rlca			;712c	07		.
	ex af,af'		;712d	08		.
	ld b,0c2h		;712e	06 c2		. .
	rlca			;7130	07		.
	ex af,af'		;7131	08		.
	ld b,0c2h		;7132	06 c2		. .
	rlca			;7134	07		.
	ex af,af'		;7135	08		.
	ld b,0c2h		;7136	06 c2		. .
	rlca			;7138	07		.
	ex af,af'		;7139	08		.
	nop			;713a	00		.
	jp nz,00201h		;713b	c2 01 02	. . .
	nop			;713e	00		.
	jp nz,00201h		;713f	c2 01 02	. . .
	nop			;7142	00		.
	jp nz,00201h		;7143	c2 01 02	. . .
	nop			;7146	00		.
	jp nz,00201h		;7147	c2 01 02	. . .
	nop			;714a	00		.
	jp nz,00201h		;714b	c2 01 02	. . .
	nop			;714e	00		.
	jp nz,00201h		;714f	c2 01 02	. . .
	nop			;7152	00		.
	jp nz,00201h		;7153	c2 01 02	. . .
	nop			;7156	00		.
	jp nz,00201h		;7157	c2 01 02	. . .
	inc bc			;715a	03		.
	jp nz,00504h		;715b	c2 04 05	. . .
	inc bc			;715e	03		.
	jp nz,00504h		;715f	c2 04 05	. . .
	inc bc			;7162	03		.
	jp nz,00504h		;7163	c2 04 05	. . .
	inc bc			;7166	03		.
	jp nz,00504h		;7167	c2 04 05	. . .
	inc bc			;716a	03		.
	jp nz,00504h		;716b	c2 04 05	. . .
	inc bc			;716e	03		.
	jp nz,00504h		;716f	c2 04 05	. . .
	inc bc			;7172	03		.
	jp nz,00504h		;7173	c2 04 05	. . .
	inc bc			;7176	03		.
	jp nz,00504h		;7177	c2 04 05	. . .
	inc bc			;717a	03		.
	jp nz,00504h		;717b	c2 04 05	. . .
	inc bc			;717e	03		.
	jp nz,00504h		;717f	c2 04 05	. . .
	inc bc			;7182	03		.
	jp nz,00504h		;7183	c2 04 05	. . .
	inc bc			;7186	03		.
	jp nz,00504h		;7187	c2 04 05	. . .
	inc bc			;718a	03		.
	jp nz,00504h		;718b	c2 04 05	. . .
	inc bc			;718e	03		.
	jp nz,00504h		;718f	c2 04 05	. . .
	inc bc			;7192	03		.
	jp nz,00504h		;7193	c2 04 05	. . .
	inc bc			;7196	03		.
	jp nz,00504h		;7197	c2 04 05	. . .
	ld b,0c2h		;719a	06 c2		. .
	rlca			;719c	07		.
	ex af,af'		;719d	08		.
	ld b,0c2h		;719e	06 c2		. .
	rlca			;71a0	07		.
	ex af,af'		;71a1	08		.
	ld b,0c2h		;71a2	06 c2		. .
	rlca			;71a4	07		.
	ex af,af'		;71a5	08		.
	ld b,0c2h		;71a6	06 c2		. .
	rlca			;71a8	07		.
	ex af,af'		;71a9	08		.
	ld b,0c2h		;71aa	06 c2		. .
	rlca			;71ac	07		.
	ex af,af'		;71ad	08		.
	ld b,0c2h		;71ae	06 c2		. .
	rlca			;71b0	07		.
	ex af,af'		;71b1	08		.
	ld b,0c2h		;71b2	06 c2		. .
	rlca			;71b4	07		.
	ex af,af'		;71b5	08		.
	ld b,0c2h		;71b6	06 c2		. .
	rlca			;71b8	07		.
	ex af,af'		;71b9	08		.
	ld bc,00100h		;71ba	01 00 01	. . .
	nop			;71bd	00		.
	nop			;71be	00		.
	jp nz,00201h		;71bf	c2 01 02	. . .
	nop			;71c2	00		.
	jp nz,00201h		;71c3	c2 01 02	. . .
	nop			;71c6	00		.
	jp nz,00201h		;71c7	c2 01 02	. . .
	nop			;71ca	00		.
	jp nz,00201h		;71cb	c2 01 02	. . .
	nop			;71ce	00		.
	jp nz,00201h		;71cf	c2 01 02	. . .
	nop			;71d2	00		.
	jp nz,00201h		;71d3	c2 01 02	. . .
	nop			;71d6	00		.
	jp nz,00201h		;71d7	c2 01 02	. . .
	nop			;71da	00		.
	jp nz,00201h		;71db	c2 01 02	. . .
	inc bc			;71de	03		.
	jp nz,00504h		;71df	c2 04 05	. . .
	inc bc			;71e2	03		.
	jp nz,00504h		;71e3	c2 04 05	. . .
	inc bc			;71e6	03		.
	jp nz,00504h		;71e7	c2 04 05	. . .
	inc bc			;71ea	03		.
	jp nz,00504h		;71eb	c2 04 05	. . .
	inc bc			;71ee	03		.
	jp nz,00504h		;71ef	c2 04 05	. . .
	inc bc			;71f2	03		.
	jp nz,00504h		;71f3	c2 04 05	. . .
	inc bc			;71f6	03		.
	jp nz,00504h		;71f7	c2 04 05	. . .
	inc bc			;71fa	03		.
	jp nz,00504h		;71fb	c2 04 05	. . .
	inc bc			;71fe	03		.
	jp nz,00504h		;71ff	c2 04 05	. . .
	inc bc			;7202	03		.
	jp nz,00504h		;7203	c2 04 05	. . .
	inc bc			;7206	03		.
	jp nz,00504h		;7207	c2 04 05	. . .
	inc bc			;720a	03		.
	jp nz,00504h		;720b	c2 04 05	. . .
	inc bc			;720e	03		.
	jp nz,00504h		;720f	c2 04 05	. . .
	inc bc			;7212	03		.
	jp nz,00504h		;7213	c2 04 05	. . .
	inc bc			;7216	03		.
	jp nz,00504h		;7217	c2 04 05	. . .
	inc bc			;721a	03		.
	jp nz,00504h		;721b	c2 04 05	. . .
	ld b,0c2h		;721e	06 c2		. .
	rlca			;7220	07		.
	ex af,af'		;7221	08		.
	ld b,0c2h		;7222	06 c2		. .
	rlca			;7224	07		.
	ex af,af'		;7225	08		.
	ld b,0c2h		;7226	06 c2		. .
	rlca			;7228	07		.
	ex af,af'		;7229	08		.
	ld b,0c2h		;722a	06 c2		. .
	rlca			;722c	07		.
	ex af,af'		;722d	08		.
	ld b,0c2h		;722e	06 c2		. .
	rlca			;7230	07		.
	ex af,af'		;7231	08		.
	ld b,0c2h		;7232	06 c2		. .
	rlca			;7234	07		.
	ex af,af'		;7235	08		.
	ld b,0c2h		;7236	06 c2		. .
	rlca			;7238	07		.
	ex af,af'		;7239	08		.
	ld b,0c2h		;723a	06 c2		. .
	rlca			;723c	07		.
	ex af,af'		;723d	08		.
	nop			;723e	00		.
	jp nz,00201h		;723f	c2 01 02	. . .
	nop			;7242	00		.
	jp nz,00201h		;7243	c2 01 02	. . .
	nop			;7246	00		.
	jp nz,00201h		;7247	c2 01 02	. . .
	nop			;724a	00		.
	jp nz,00201h		;724b	c2 01 02	. . .
	nop			;724e	00		.
	jp nz,00201h		;724f	c2 01 02	. . .
	nop			;7252	00		.
	jp nz,00201h		;7253	c2 01 02	. . .
	nop			;7256	00		.
	jp nz,00201h		;7257	c2 01 02	. . .
	nop			;725a	00		.
	jp nz,00201h		;725b	c2 01 02	. . .
	inc bc			;725e	03		.
	jp nz,00504h		;725f	c2 04 05	. . .
	inc bc			;7262	03		.
	jp nz,00504h		;7263	c2 04 05	. . .
	inc bc			;7266	03		.
	jp nz,00504h		;7267	c2 04 05	. . .
	inc bc			;726a	03		.
	jp nz,00504h		;726b	c2 04 05	. . .
	inc bc			;726e	03		.
	jp nz,00504h		;726f	c2 04 05	. . .
	inc bc			;7272	03		.
	jp nz,00504h		;7273	c2 04 05	. . .
	inc bc			;7276	03		.
	jp nz,00504h		;7277	c2 04 05	. . .
	inc bc			;727a	03		.
	jp nz,00504h		;727b	c2 04 05	. . .
	inc bc			;727e	03		.
	jp nz,00504h		;727f	c2 04 05	. . .
	inc bc			;7282	03		.
	jp nz,00504h		;7283	c2 04 05	. . .
	inc bc			;7286	03		.
	jp nz,00504h		;7287	c2 04 05	. . .
	inc bc			;728a	03		.
	jp nz,00504h		;728b	c2 04 05	. . .
	inc bc			;728e	03		.
	jp nz,00504h		;728f	c2 04 05	. . .
	inc bc			;7292	03		.
	jp nz,00504h		;7293	c2 04 05	. . .
	inc bc			;7296	03		.
	jp nz,00504h		;7297	c2 04 05	. . .
	inc bc			;729a	03		.
	jp nz,00504h		;729b	c2 04 05	. . .
	ld b,0c2h		;729e	06 c2		. .
	rlca			;72a0	07		.
	ex af,af'		;72a1	08		.
	ld b,0c2h		;72a2	06 c2		. .
	rlca			;72a4	07		.
	ex af,af'		;72a5	08		.
	ld b,0c2h		;72a6	06 c2		. .
	rlca			;72a8	07		.
	ex af,af'		;72a9	08		.
	ld b,0c2h		;72aa	06 c2		. .
	rlca			;72ac	07		.
	ex af,af'		;72ad	08		.
	ld b,0c2h		;72ae	06 c2		. .
	rlca			;72b0	07		.
	ex af,af'		;72b1	08		.
	ld b,0c2h		;72b2	06 c2		. .
	rlca			;72b4	07		.
	ex af,af'		;72b5	08		.
	ld b,0c2h		;72b6	06 c2		. .
	rlca			;72b8	07		.
	ex af,af'		;72b9	08		.
	ld b,0c2h		;72ba	06 c2		. .
	rlca			;72bc	07		.
	ex af,af'		;72bd	08		.
l72beh:
	ld bc,00018h		;72be	01 18 00	. . .
	rra			;72c1	1f		.
	nop			;72c2	00		.
	ld a,a			;72c3	7f		.
	ld b,b			;72c4	40		@
	ld a,a			;72c5	7f		.
	ld b,b			;72c6	40		@
	ld a,a			;72c7	7f		.
	ld b,b			;72c8	40		@
	ld a,a			;72c9	7f		.
	rst 38h			;72ca	ff		.
	nop			;72cb	00		.
	rst 38h			;72cc	ff		.
	nop			;72cd	00		.
	jp 00100h		;72ce	c3 00 01	. . .
	add a,002h		;72d1	c6 02		. .
	ld b,b			;72d3	40		@
	ld a,a			;72d4	7f		.
	ld b,b			;72d5	40		@
	ld a,a			;72d6	7f		.
	ld b,b			;72d7	40		@
	ld a,a			;72d8	7f		.
	ld b,b			;72d9	40		@
	ld a,a			;72da	7f		.
	rst 38h			;72db	ff		.
	nop			;72dc	00		.
	ld sp,hl		;72dd	f9		.
	nop			;72de	00		.
	ret z			;72df	c8		.
	ld (bc),a		;72e0	02		.
	nop			;72e1	00		.
	sub b			;72e2	90		.
	nop			;72e3	00		.
	djnz $+66		;72e4	10 40		. @
	ld a,a			;72e6	7f		.
	ld b,b			;72e7	40		@
	ld a,a			;72e8	7f		.
	ld b,b			;72e9	40		@
	ld a,a			;72ea	7f		.
	ld b,b			;72eb	40		@
	ld a,a			;72ec	7f		.
	rst 38h			;72ed	ff		.
	nop			;72ee	00		.
	rst 38h			;72ef	ff		.
	nop			;72f0	00		.
	jp nz,0c800h		;72f1	c2 00 c8	. . .
	ld (bc),a		;72f4	02		.
	ld bc,00020h		;72f5	01 20 00	.   .
	ld hl,l7f40h		;72f8	21 40 7f	! @ .
	ld b,b			;72fb	40		@
	ld a,a			;72fc	7f		.
	ld b,b			;72fd	40		@
	ld a,a			;72fe	7f		.
	ld b,b			;72ff	40		@
	ld a,a			;7300	7f		.
	rst 38h			;7301	ff		.
	nop			;7302	00		.
	rst 38h			;7303	ff		.
	nop			;7304	00		.
	jp nz,0c800h		;7305	c2 00 c8	. . .
	ld (bc),a		;7308	02		.
	ld b,b			;7309	40		@
	ld a,a			;730a	7f		.
	ld b,b			;730b	40		@
l730ch:
	ld a,a			;730c	7f		.
	ld b,b			;730d	40		@
	jp nz,0ff7fh		;730e	c2 7f ff	. . .
	nop			;7311	00		.
	rst 38h			;7312	ff		.
	nop			;7313	00		.
	jp 0c600h		;7314	c3 00 c6	. . .
	ld (bc),a		;7317	02		.
	ld bc,00100h		;7318	01 00 01	. . .
	jr l731dh		;731b	18 00		. .
l731dh:
	ld a,(hl)		;731d	7e		~
	pop bc			;731e	c1		.
	rst 38h			;731f	ff		.
	rst 0			;7320	c7		.
	rra			;7321	1f		.
	pop bc			;7322	c1		.
	rst 38h			;7323	ff		.
	ld de,0ffc1h		;7324	11 c1 ff	. . .
	ld de,0ffc1h		;7327	11 c1 ff	. . .
	ld de,0ffc1h		;732a	11 c1 ff	. . .
	ld de,0ffc1h		;732d	11 c1 ff	. . .
	rst 0			;7330	c7		.
	ld de,0ffc1h		;7331	11 c1 ff	. . .
	ld de,022c6h		;7334	11 c6 22	. . "
	pop bc			;7337	c1		.
	rst 38h			;7338	ff		.
	ld de,033c6h		;7339	11 c6 33	. . 3
	pop bc			;733c	c1		.
	rst 38h			;733d	ff		.
	ld de,044c6h		;733e	11 c6 44	. . D
	pop bc			;7341	c1		.
	rst 38h			;7342	ff		.
	ld de,055c6h		;7343	11 c6 55	. . U
	pop bc			;7346	c1		.
	rst 38h			;7347	ff		.
	ld de,l66c6h		;7348	11 c6 66	. . f
	pop bc			;734b	c1		.
	rst 38h			;734c	ff		.
	ld de,l77c6h		;734d	11 c6 77	. . w
	pop bc			;7350	c1		.
	rst 38h			;7351	ff		.
	ld de,l88c6h		;7352	11 c6 88	. . .
	pop bc			;7355	c1		.
	rst 38h			;7356	ff		.
	ld de,l99c6h		;7357	11 c6 99	. . .
	pop bc			;735a	c1		.
	rst 38h			;735b	ff		.
	ld de,laac6h		;735c	11 c6 aa	. . .
	pop bc			;735f	c1		.
	rst 38h			;7360	ff		.
	ld de,lbbc6h		;7361	11 c6 bb	. . .
	pop bc			;7364	c1		.
	rst 38h			;7365	ff		.
	ld de,0ccc6h		;7366	11 c6 cc	. . .
	pop bc			;7369	c1		.
	rst 38h			;736a	ff		.
	ld de,0ddc6h		;736b	11 c6 dd	. . .
	pop bc			;736e	c1		.
	rst 38h			;736f	ff		.
	ld de,0eec6h		;7370	11 c6 ee	. . .
	pop bc			;7373	c1		.
	rst 38h			;7374	ff		.
	ld de,0ffc7h		;7375	11 c7 ff	. . .
	pop bc			;7378	c1		.
	pop af			;7379	f1		.
	adc a,01fh		;737a	ce 1f		. .
	ret z			;737c	c8		.
	ld de,022c8h		;737d	11 c8 22	. . "
	ret z			;7380	c8		.
	inc sp			;7381	33		3
	ret z			;7382	c8		.
	ld b,h			;7383	44		D
	ret z			;7384	c8		.
	ld d,l			;7385	55		U
	ret z			;7386	c8		.
	ld h,(hl)		;7387	66		f
	ret z			;7388	c8		.
	ld (hl),a		;7389	77		w
	ret z			;738a	c8		.
	adc a,b			;738b	88		.
	ret z			;738c	c8		.
	sbc a,c			;738d	99		.
	ret z			;738e	c8		.
	xor d			;738f	aa		.
	ret z			;7390	c8		.
	cp e			;7391	bb		.
	ret z			;7392	c8		.
	call z,0ddc8h		;7393	cc c8 dd	. . .
	ret z			;7396	c8		.
	xor 0c8h		;7397	ee c8		. .
	rst 38h			;7399	ff		.
	ret z			;739a	c8		.
	rra			;739b	1f		.
	nop			;739c	00		.
	sub b			;739d	90		.
	nop			;739e	00		.
	dec l			;739f	2d		-
	ret z			;73a0	c8		.
	rra			;73a1	1f		.
	pop bc			;73a2	c1		.
	rst 38h			;73a3	ff		.
	ld de,0ffc1h		;73a4	11 c1 ff	. . .
	ld de,0ffc1h		;73a7	11 c1 ff	. . .
	ld de,0ffc1h		;73aa	11 c1 ff	. . .
	ret			;73ad	c9		.
	ld de,022c8h		;73ae	11 c8 22	. . "
	ret z			;73b1	c8		.
	inc sp			;73b2	33		3
	ret z			;73b3	c8		.
	ld b,h			;73b4	44		D
	ret z			;73b5	c8		.
	ld d,l			;73b6	55		U
	ret z			;73b7	c8		.
	ld h,(hl)		;73b8	66		f
	ret z			;73b9	c8		.
	ld (hl),a		;73ba	77		w
	ret z			;73bb	c8		.
	adc a,b			;73bc	88		.
	ret z			;73bd	c8		.
	sbc a,c			;73be	99		.
	ret z			;73bf	c8		.
	xor d			;73c0	aa		.
	ret z			;73c1	c8		.
	cp e			;73c2	bb		.
	ret z			;73c3	c8		.
	call z,0ddc8h		;73c4	cc c8 dd	. . .
	ret z			;73c7	c8		.
	xor 0c8h		;73c8	ee c8		. .
	rst 38h			;73ca	ff		.
	ret z			;73cb	c8		.
	rra			;73cc	1f		.
	ld bc,00020h		;73cd	01 20 00	.   .
	add a,a			;73d0	87		.
	ret z			;73d1	c8		.
	rra			;73d2	1f		.
	pop bc			;73d3	c1		.
	rst 38h			;73d4	ff		.
	ld de,0ffc1h		;73d5	11 c1 ff	. . .
	ld de,0ffc1h		;73d8	11 c1 ff	. . .
	ld de,0ffc1h		;73db	11 c1 ff	. . .
	ret			;73de	c9		.
	ld de,022c8h		;73df	11 c8 22	. . "
	ret z			;73e2	c8		.
	inc sp			;73e3	33		3
	ret z			;73e4	c8		.
	ld b,h			;73e5	44		D
	ret z			;73e6	c8		.
	ld d,l			;73e7	55		U
	ret z			;73e8	c8		.
	ld h,(hl)		;73e9	66		f
	ret z			;73ea	c8		.
	ld (hl),a		;73eb	77		w
	ret z			;73ec	c8		.
	adc a,b			;73ed	88		.
	ret z			;73ee	c8		.
	sbc a,c			;73ef	99		.
	ret z			;73f0	c8		.
	xor d			;73f1	aa		.
	ret z			;73f2	c8		.
	cp e			;73f3	bb		.
	ret z			;73f4	c8		.
	call z,0ddc8h		;73f5	cc c8 dd	. . .
	ret z			;73f8	c8		.
	xor 0c8h		;73f9	ee c8		. .
	rst 38h			;73fb	ff		.
	rst 8			;73fc	cf		.
	rra			;73fd	1f		.
	jp nz,011ffh		;73fe	c2 ff 11	. . .
	pop bc			;7401	c1		.
	rst 38h			;7402	ff		.
	ld de,0ffc1h		;7403	11 c1 ff	. . .
	jp nz,0c111h		;7406	c2 11 c1	. . .
	rst 38h			;7409	ff		.
	rst 0			;740a	c7		.
	ld de,0ffc1h		;740b	11 c1 ff	. . .
	add a,022h		;740e	c6 22		. "
	ld de,0ffc1h		;7410	11 c1 ff	. . .
	add a,033h		;7413	c6 33		. 3
	ld de,0ffc1h		;7415	11 c1 ff	. . .
	add a,044h		;7418	c6 44		. D
	ld de,0ffc1h		;741a	11 c1 ff	. . .
	add a,055h		;741d	c6 55		. U
	ld de,0ffc1h		;741f	11 c1 ff	. . .
	add a,066h		;7422	c6 66		. f
l7424h:
	ld de,0ffc1h		;7424	11 c1 ff	. . .
	add a,077h		;7427	c6 77		. w
	ld de,0ffc1h		;7429	11 c1 ff	. . .
	add a,088h		;742c	c6 88		. .
	ld de,0ffc1h		;742e	11 c1 ff	. . .
	add a,099h		;7431	c6 99		. .
	ld de,0ffc1h		;7433	11 c1 ff	. . .
	add a,0aah		;7436	c6 aa		. .
	ld de,0ffc1h		;7438	11 c1 ff	. . .
	add a,0bbh		;743b	c6 bb		. .
	ld de,0ffc1h		;743d	11 c1 ff	. . .
	add a,0cch		;7440	c6 cc		. .
	ld de,0ffc1h		;7442	11 c1 ff	. . .
	add a,0ddh		;7445	c6 dd		. .
l7447h:
	ld de,0ffc1h		;7447	11 c1 ff	. . .
	add a,0eeh		;744a	c6 ee		. .
	ld de,0ffc7h		;744c	11 c7 ff	. . .
	ld de,0ffc1h		;744f	11 c1 ff	. . .
	add a,01fh		;7452	c6 1f		. .
	pop bc			;7454	c1		.
	pop af			;7455	f1		.
	pop bc			;7456	c1		.
	rst 38h			;7457	ff		.
	ld bc,00100h		;7458	01 00 01	. . .
	nop			;745b	00		.
	nop			;745c	00		.
	ld bc,002c2h		;745d	01 c2 02	. . .
	jp nz,0c203h		;7460	c2 03 c2	. . .
	inc b			;7463	04		.
	jp nz,0c205h		;7464	c2 05 c2	. . .
	ld b,0c2h		;7467	06 c2		. .
	rlca			;7469	07		.
	jp nz,0c208h		;746a	c2 08 c2	. . .
	add hl,bc		;746d	09		.
	jp nz,0c20ah		;746e	c2 0a c2	. . .
	dec bc			;7471	0b		.
	jp nz,0c20ch		;7472	c2 0c c2	. . .
	dec c			;7475	0d		.
	jp nz,0c20eh		;7476	c2 0e c2	. . .
	rrca			;7479	0f		.
	djnz $+19		;747a	10 11		. .
	ld (de),a		;747c	12		.
	ld bc,013c2h		;747d	01 c2 13	. . .
	jp nz,0c214h		;7480	c2 14 c2	. . .
	dec d			;7483	15		.
	jp nz,0c216h		;7484	c2 16 c2	. . .
	rla			;7487	17		.
	jp nz,0c218h		;7488	c2 18 c2	. . .
	add hl,de		;748b	19		.
	jp nz,0c21ah		;748c	c2 1a c2	. . .
	dec de			;748f	1b		.
	jp nz,0c21ch		;7490	c2 1c c2	. . .
	dec e			;7493	1d		.
	jp nz,0c21eh		;7494	c2 1e c2	. . .
	rra			;7497	1f		.
	jp nz,02120h		;7498	c2 20 21	.   !
	ld (00112h),hl		;749b	22 12 01	" . .
	jp nz,0c213h		;749e	c2 13 c2	. . .
	inc d			;74a1	14		.
	jp nz,0c215h		;74a2	c2 15 c2	. . .
	ld d,0c2h		;74a5	16 c2		. .
	rla			;74a7	17		.
	jp nz,0c218h		;74a8	c2 18 c2	. . .
	add hl,de		;74ab	19		.
	jp nz,0c21ah		;74ac	c2 1a c2	. . .
	dec de			;74af	1b		.
	jp nz,0c21ch		;74b0	c2 1c c2	. . .
	dec e			;74b3	1d		.
	jp nz,0c21eh		;74b4	c2 1e c2	. . .
	rra			;74b7	1f		.
	jp nz,02120h		;74b8	c2 20 21	.   !
	ld (00112h),hl		;74bb	22 12 01	" . .
	jp nz,0c213h		;74be	c2 13 c2	. . .
	inc d			;74c1	14		.
	jp nz,0c215h		;74c2	c2 15 c2	. . .
	ld d,0c2h		;74c5	16 c2		. .
	rla			;74c7	17		.
	jp nz,0c218h		;74c8	c2 18 c2	. . .
	add hl,de		;74cb	19		.
	jp nz,0c21ah		;74cc	c2 1a c2	. . .
	dec de			;74cf	1b		.
	jp nz,0c21ch		;74d0	c2 1c c2	. . .
	dec e			;74d3	1d		.
	jp nz,0c21eh		;74d4	c2 1e c2	. . .
	rra			;74d7	1f		.
	jp nz,02120h		;74d8	c2 20 21	.   !
	ld (00112h),hl		;74db	22 12 01	" . .
	jp nz,0c213h		;74de	c2 13 c2	. . .
	inc d			;74e1	14		.
	jp nz,0c215h		;74e2	c2 15 c2	. . .
	ld d,0c2h		;74e5	16 c2		. .
	rla			;74e7	17		.
	jp nz,0c218h		;74e8	c2 18 c2	. . .
	add hl,de		;74eb	19		.
	jp nz,0c21ah		;74ec	c2 1a c2	. . .
	dec de			;74ef	1b		.
	jp nz,0c21ch		;74f0	c2 1c c2	. . .
	dec e			;74f3	1d		.
	jp nz,0c21eh		;74f4	c2 1e c2	. . .
	rra			;74f7	1f		.
	jp nz,02120h		;74f8	c2 20 21	.   !
	ld (00112h),hl		;74fb	22 12 01	" . .
	jp nz,0c213h		;74fe	c2 13 c2	. . .
	inc d			;7501	14		.
	jp nz,0c215h		;7502	c2 15 c2	. . .
	ld d,0c2h		;7505	16 c2		. .
	rla			;7507	17		.
	jp nz,0c218h		;7508	c2 18 c2	. . .
	add hl,de		;750b	19		.
	jp nz,0c21ah		;750c	c2 1a c2	. . .
	dec de			;750f	1b		.
	jp nz,0c21ch		;7510	c2 1c c2	. . .
	dec e			;7513	1d		.
	jp nz,0c21eh		;7514	c2 1e c2	. . .
	rra			;7517	1f		.
	jp nz,02120h		;7518	c2 20 21	.   !
	ld (00112h),hl		;751b	22 12 01	" . .
	jp nz,0c213h		;751e	c2 13 c2	. . .
	inc d			;7521	14		.
	jp nz,0c215h		;7522	c2 15 c2	. . .
	ld d,0c2h		;7525	16 c2		. .
	rla			;7527	17		.
	jp nz,0c218h		;7528	c2 18 c2	. . .
	add hl,de		;752b	19		.
	jp nz,0c21ah		;752c	c2 1a c2	. . .
	dec de			;752f	1b		.
	jp nz,0c21ch		;7530	c2 1c c2	. . .
	dec e			;7533	1d		.
	jp nz,0c21eh		;7534	c2 1e c2	. . .
	rra			;7537	1f		.
	jp nz,02120h		;7538	c2 20 21	.   !
	ld (00112h),hl		;753b	22 12 01	" . .
	jp nz,0c213h		;753e	c2 13 c2	. . .
	inc d			;7541	14		.
	jp nz,0c215h		;7542	c2 15 c2	. . .
	ld d,0c2h		;7545	16 c2		. .
	rla			;7547	17		.
	jp nz,0c218h		;7548	c2 18 c2	. . .
	add hl,de		;754b	19		.
	jp nz,0c21ah		;754c	c2 1a c2	. . .
	dec de			;754f	1b		.
	jp nz,0c21ch		;7550	c2 1c c2	. . .
	dec e			;7553	1d		.
	jp nz,0c21eh		;7554	c2 1e c2	. . .
	rra			;7557	1f		.
	jp nz,02120h		;7558	c2 20 21	.   !
	ld (00001h),hl		;755b	22 01 00	" . .
	ld bc,00000h		;755e	01 00 00	. . .
	ld bc,002c2h		;7561	01 c2 02	. . .
	jp nz,0c203h		;7564	c2 03 c2	. . .
	inc b			;7567	04		.
	jp nz,0c205h		;7568	c2 05 c2	. . .
	ld b,0c2h		;756b	06 c2		. .
	rlca			;756d	07		.
	jp nz,0c208h		;756e	c2 08 c2	. . .
	add hl,bc		;7571	09		.
	jp nz,0c20ah		;7572	c2 0a c2	. . .
	dec bc			;7575	0b		.
	jp nz,0c20ch		;7576	c2 0c c2	. . .
	dec c			;7579	0d		.
	jp nz,0c20eh		;757a	c2 0e c2	. . .
	rrca			;757d	0f		.
	djnz l7591h		;757e	10 11		. .
	nop			;7580	00		.
	ld bc,002c2h		;7581	01 c2 02	. . .
	jp nz,0c203h		;7584	c2 03 c2	. . .
	inc b			;7587	04		.
	jp nz,0c205h		;7588	c2 05 c2	. . .
	ld b,0c2h		;758b	06 c2		. .
	rlca			;758d	07		.
	jp nz,0c208h		;758e	c2 08 c2	. . .
l7591h:
	add hl,bc		;7591	09		.
	jp nz,0c20ah		;7592	c2 0a c2	. . .
	dec bc			;7595	0b		.
	jp nz,0c20ch		;7596	c2 0c c2	. . .
	dec c			;7599	0d		.
	jp nz,0c20eh		;759a	c2 0e c2	. . .
	rrca			;759d	0f		.
	djnz l75b1h		;759e	10 11		. .
	nop			;75a0	00		.
	ld bc,002c2h		;75a1	01 c2 02	. . .
	jp nz,0c203h		;75a4	c2 03 c2	. . .
	inc b			;75a7	04		.
	jp nz,0c205h		;75a8	c2 05 c2	. . .
	ld b,0c2h		;75ab	06 c2		. .
	rlca			;75ad	07		.
	jp nz,0c208h		;75ae	c2 08 c2	. . .
l75b1h:
	add hl,bc		;75b1	09		.
	jp nz,0c20ah		;75b2	c2 0a c2	. . .
	dec bc			;75b5	0b		.
	jp nz,0c20ch		;75b6	c2 0c c2	. . .
	dec c			;75b9	0d		.
	jp nz,0c20eh		;75ba	c2 0e c2	. . .
	rrca			;75bd	0f		.
	djnz l75d1h		;75be	10 11		. .
	nop			;75c0	00		.
	ld bc,002c2h		;75c1	01 c2 02	. . .
	jp nz,0c203h		;75c4	c2 03 c2	. . .
	inc b			;75c7	04		.
	jp nz,0c205h		;75c8	c2 05 c2	. . .
	ld b,0c2h		;75cb	06 c2		. .
	rlca			;75cd	07		.
	jp nz,0c208h		;75ce	c2 08 c2	. . .
l75d1h:
	add hl,bc		;75d1	09		.
	jp nz,0c20ah		;75d2	c2 0a c2	. . .
	dec bc			;75d5	0b		.
	jp nz,0c20ch		;75d6	c2 0c c2	. . .
	dec c			;75d9	0d		.
	jp nz,0c20eh		;75da	c2 0e c2	. . .
	rrca			;75dd	0f		.
	djnz l75f1h		;75de	10 11		. .
	nop			;75e0	00		.
	ld bc,002c2h		;75e1	01 c2 02	. . .
	jp nz,0c203h		;75e4	c2 03 c2	. . .
	inc b			;75e7	04		.
	jp nz,0c205h		;75e8	c2 05 c2	. . .
	ld b,0c2h		;75eb	06 c2		. .
	rlca			;75ed	07		.
	jp nz,0c208h		;75ee	c2 08 c2	. . .
l75f1h:
	add hl,bc		;75f1	09		.
	jp nz,0c20ah		;75f2	c2 0a c2	. . .
	dec bc			;75f5	0b		.
	jp nz,0c20ch		;75f6	c2 0c c2	. . .
	dec c			;75f9	0d		.
	jp nz,0c20eh		;75fa	c2 0e c2	. . .
	rrca			;75fd	0f		.
	djnz l7611h		;75fe	10 11		. .
	nop			;7600	00		.
	ld bc,002c2h		;7601	01 c2 02	. . .
	jp nz,0c203h		;7604	c2 03 c2	. . .
	inc b			;7607	04		.
	jp nz,0c205h		;7608	c2 05 c2	. . .
	ld b,0c2h		;760b	06 c2		. .
	rlca			;760d	07		.
	jp nz,0c208h		;760e	c2 08 c2	. . .
l7611h:
	add hl,bc		;7611	09		.
	jp nz,0c20ah		;7612	c2 0a c2	. . .
	dec bc			;7615	0b		.
	jp nz,0c20ch		;7616	c2 0c c2	. . .
	dec c			;7619	0d		.
	jp nz,0c20eh		;761a	c2 0e c2	. . .
	rrca			;761d	0f		.
	djnz l7631h		;761e	10 11		. .
	nop			;7620	00		.
	ld bc,002c2h		;7621	01 c2 02	. . .
	jp nz,0c203h		;7624	c2 03 c2	. . .
	inc b			;7627	04		.
	jp nz,0c205h		;7628	c2 05 c2	. . .
	ld b,0c2h		;762b	06 c2		. .
	rlca			;762d	07		.
	jp nz,0c208h		;762e	c2 08 c2	. . .
l7631h:
	add hl,bc		;7631	09		.
	jp nz,0c20ah		;7632	c2 0a c2	. . .
	dec bc			;7635	0b		.
	jp nz,0c20ch		;7636	c2 0c c2	. . .
	dec c			;7639	0d		.
	jp nz,0c20eh		;763a	c2 0e c2	. . .
	rrca			;763d	0f		.
	djnz l7651h		;763e	10 11		. .
	nop			;7640	00		.
	ld bc,002c2h		;7641	01 c2 02	. . .
	jp nz,0c203h		;7644	c2 03 c2	. . .
	inc b			;7647	04		.
	jp nz,0c205h		;7648	c2 05 c2	. . .
	ld b,0c2h		;764b	06 c2		. .
	rlca			;764d	07		.
	jp nz,0c208h		;764e	c2 08 c2	. . .
l7651h:
	add hl,bc		;7651	09		.
	jp nz,0c20ah		;7652	c2 0a c2	. . .
	dec bc			;7655	0b		.
	jp nz,0c20ch		;7656	c2 0c c2	. . .
	dec c			;7659	0d		.
	jp nz,0c20eh		;765a	c2 0e c2	. . .
	rrca			;765d	0f		.
	djnz l7671h		;765e	10 11		. .
	ld bc,00100h		;7660	01 00 01	. . .
	nop			;7663	00		.
	nop			;7664	00		.
	ld bc,002c2h		;7665	01 c2 02	. . .
	jp nz,0c203h		;7668	c2 03 c2	. . .
	inc b			;766b	04		.
	jp nz,0c205h		;766c	c2 05 c2	. . .
	ld b,0c2h		;766f	06 c2		. .
l7671h:
	rlca			;7671	07		.
	jp nz,0c208h		;7672	c2 08 c2	. . .
	add hl,bc		;7675	09		.
	jp nz,0c20ah		;7676	c2 0a c2	. . .
	dec bc			;7679	0b		.
	jp nz,0c20ch		;767a	c2 0c c2	. . .
	dec c			;767d	0d		.
	jp nz,0c20eh		;767e	c2 0e c2	. . .
	rrca			;7681	0f		.
	djnz l7695h		;7682	10 11		. .
	nop			;7684	00		.
	ld bc,002c2h		;7685	01 c2 02	. . .
	jp nz,0c203h		;7688	c2 03 c2	. . .
	inc b			;768b	04		.
	jp nz,0c205h		;768c	c2 05 c2	. . .
	ld b,0c2h		;768f	06 c2		. .
	rlca			;7691	07		.
	jp nz,0c208h		;7692	c2 08 c2	. . .
l7695h:
	add hl,bc		;7695	09		.
	jp nz,0c20ah		;7696	c2 0a c2	. . .
	dec bc			;7699	0b		.
	jp nz,0c20ch		;769a	c2 0c c2	. . .
	dec c			;769d	0d		.
	jp nz,0c20eh		;769e	c2 0e c2	. . .
	rrca			;76a1	0f		.
	djnz l76b5h		;76a2	10 11		. .
	nop			;76a4	00		.
	ld bc,002c2h		;76a5	01 c2 02	. . .
	jp nz,0c203h		;76a8	c2 03 c2	. . .
	inc b			;76ab	04		.
	jp nz,0c205h		;76ac	c2 05 c2	. . .
	ld b,0c2h		;76af	06 c2		. .
	rlca			;76b1	07		.
	jp nz,0c208h		;76b2	c2 08 c2	. . .
l76b5h:
	add hl,bc		;76b5	09		.
	jp nz,0c20ah		;76b6	c2 0a c2	. . .
	dec bc			;76b9	0b		.
	jp nz,0c20ch		;76ba	c2 0c c2	. . .
	dec c			;76bd	0d		.
	jp nz,0c20eh		;76be	c2 0e c2	. . .
	rrca			;76c1	0f		.
	djnz l76d5h		;76c2	10 11		. .
	nop			;76c4	00		.
	ld bc,002c2h		;76c5	01 c2 02	. . .
	jp nz,0c203h		;76c8	c2 03 c2	. . .
	inc b			;76cb	04		.
	jp nz,0c205h		;76cc	c2 05 c2	. . .
	ld b,0c2h		;76cf	06 c2		. .
	rlca			;76d1	07		.
	jp nz,0c208h		;76d2	c2 08 c2	. . .
l76d5h:
	add hl,bc		;76d5	09		.
	jp nz,0c20ah		;76d6	c2 0a c2	. . .
	dec bc			;76d9	0b		.
	jp nz,0c20ch		;76da	c2 0c c2	. . .
	dec c			;76dd	0d		.
	jp nz,0c20eh		;76de	c2 0e c2	. . .
	rrca			;76e1	0f		.
	djnz l76f5h		;76e2	10 11		. .
	nop			;76e4	00		.
	ld bc,002c2h		;76e5	01 c2 02	. . .
	jp nz,0c203h		;76e8	c2 03 c2	. . .
	inc b			;76eb	04		.
	jp nz,0c205h		;76ec	c2 05 c2	. . .
	ld b,0c2h		;76ef	06 c2		. .
	rlca			;76f1	07		.
	jp nz,0c208h		;76f2	c2 08 c2	. . .
l76f5h:
	add hl,bc		;76f5	09		.
	jp nz,0c20ah		;76f6	c2 0a c2	. . .
	dec bc			;76f9	0b		.
	jp nz,0c20ch		;76fa	c2 0c c2	. . .
	dec c			;76fd	0d		.
	jp nz,0c20eh		;76fe	c2 0e c2	. . .
	rrca			;7701	0f		.
	djnz l7715h		;7702	10 11		. .
	nop			;7704	00		.
	ld bc,002c2h		;7705	01 c2 02	. . .
	jp nz,0c203h		;7708	c2 03 c2	. . .
	inc b			;770b	04		.
	jp nz,0c205h		;770c	c2 05 c2	. . .
	ld b,0c2h		;770f	06 c2		. .
	rlca			;7711	07		.
	jp nz,0c208h		;7712	c2 08 c2	. . .
l7715h:
	add hl,bc		;7715	09		.
	jp nz,0c20ah		;7716	c2 0a c2	. . .
	dec bc			;7719	0b		.
	jp nz,0c20ch		;771a	c2 0c c2	. . .
	dec c			;771d	0d		.
	jp nz,0c20eh		;771e	c2 0e c2	. . .
	rrca			;7721	0f		.
	djnz l7735h		;7722	10 11		. .
	nop			;7724	00		.
	ld bc,002c2h		;7725	01 c2 02	. . .
	jp nz,0c203h		;7728	c2 03 c2	. . .
	inc b			;772b	04		.
	jp nz,0c205h		;772c	c2 05 c2	. . .
	ld b,0c2h		;772f	06 c2		. .
	rlca			;7731	07		.
	jp nz,0c208h		;7732	c2 08 c2	. . .
l7735h:
	add hl,bc		;7735	09		.
	jp nz,0c20ah		;7736	c2 0a c2	. . .
	dec bc			;7739	0b		.
	jp nz,0c20ch		;773a	c2 0c c2	. . .
	dec c			;773d	0d		.
	jp nz,0c20eh		;773e	c2 0e c2	. . .
	rrca			;7741	0f		.
	djnz l7755h		;7742	10 11		. .
	ld (de),a		;7744	12		.
	inc de			;7745	13		.
	jp nz,0c214h		;7746	c2 14 c2	. . .
	dec d			;7749	15		.
	jp nz,0c216h		;774a	c2 16 c2	. . .
	rla			;774d	17		.
	jp nz,0c218h		;774e	c2 18 c2	. . .
	add hl,de		;7751	19		.
	jp nz,0c21ah		;7752	c2 1a c2	. . .
l7755h:
	dec de			;7755	1b		.
	jp nz,0c21ch		;7756	c2 1c c2	. . .
	dec e			;7759	1d		.
	jp nz,0c21eh		;775a	c2 1e c2	. . .
	rra			;775d	1f		.
	jp nz,0c220h		;775e	c2 20 c2	.   .
	ld hl,02322h		;7761	21 22 23	! " #
l7764h:
	ld bc,00030h		;7764	01 30 00	. 0 .
	ld e,d			;7767	5a		Z
	out (000h),a		;7768	d3 00		. .
	push bc			;776a	c5		.
	rlca			;776b	07		.
	out (000h),a		;776c	d3 00		. .
	push bc			;776e	c5		.
	rra			;776f	1f		.
	add a,000h		;7770	c6 00		. .
	jp nz,0c61fh		;7772	c2 1f c6	. . .
	rlca			;7775	07		.
	jp z,0c600h		;7776	ca 00 c6	. . .
	rra			;7779	1f		.
	ret z			;777a	c8		.
	nop			;777b	00		.
	jp nz,0c807h		;777c	c2 07 c8	. . .
l777fh:
	rra			;777f	1f		.
	ret nc			;7780	d0		.
	rlca			;7781	07		.
	ret z			;7782	c8		.
	rra			;7783	1f		.
	ret nc			;7784	d0		.
	rlca			;7785	07		.
	ret z			;7786	c8		.
	rra			;7787	1f		.
	ret z			;7788	c8		.
	nop			;7789	00		.
	add a,01fh		;778a	c6 1f		. .
	ret z			;778c	c8		.
	nop			;778d	00		.
	jp nz,0cb07h		;778e	c2 07 cb	. . .
	rra			;7791	1f		.
	ret z			;7792	c8		.
	nop			;7793	00		.
	push bc			;7794	c5		.
	rlca			;7795	07		.
	adc a,000h		;7796	ce 00		. .
	jp nz,0c61fh		;7798	c2 1f c6	. . .
	rlca			;779b	07		.
	jp nz,0c600h		;779c	c2 00 c6	. . .
	rra			;779f	1f		.
	ret z			;77a0	c8		.
	nop			;77a1	00		.
	ret z			;77a2	c8		.
	rlca			;77a3	07		.
	jp nz,0c300h		;77a4	c2 00 c3	. . .
	rlca			;77a7	07		.
	push bc			;77a8	c5		.
	nop			;77a9	00		.
	ret z			;77aa	c8		.
	rra			;77ab	1f		.
	jp 0c507h		;77ac	c3 07 c5	. . .
	nop			;77af	00		.
	jp 0c51fh		;77b0	c3 1f c5	. . .
	nop			;77b3	00		.
	jp 0c507h		;77b4	c3 07 c5	. . .
	nop			;77b7	00		.
	jp 0c51fh		;77b8	c3 1f c5	. . .
	nop			;77bb	00		.
	ret z			;77bc	c8		.
	rlca			;77bd	07		.
	jp 0c51fh		;77be	c3 1f c5	. . .
	nop			;77c1	00		.
	nop			;77c2	00		.
	xor b			;77c3	a8		.
	nop			;77c4	00		.
	inc a			;77c5	3c		<
l77c6h:
	ret z			;77c6	c8		.
	nop			;77c7	00		.
	add a,01fh		;77c8	c6 1f		. .
	ret z			;77ca	c8		.
	nop			;77cb	00		.
	jp nz,0ce07h		;77cc	c2 07 ce	. . .
	nop			;77cf	00		.
	jp nz,0c61fh		;77d0	c2 1f c6	. . .
	rlca			;77d3	07		.
	jp nz,0c800h		;77d4	c2 00 c8	. . .
	rlca			;77d7	07		.
	ret z			;77d8	c8		.
	nop			;77d9	00		.
	ret z			;77da	c8		.
	rra			;77db	1f		.
	call 0c300h		;77dc	cd 00 c3	. . .
	rlca			;77df	07		.
	ret z			;77e0	c8		.
	rra			;77e1	1f		.
	push bc			;77e2	c5		.
	rlca			;77e3	07		.
	jp 0c803h		;77e4	c3 03 c8	. . .
	rlca			;77e7	07		.
	jp 0c500h		;77e8	c3 00 c5	. . .
	rra			;77eb	1f		.
	jp 0c503h		;77ec	c3 03 c5	. . .
	nop			;77ef	00		.
	ret z			;77f0	c8		.
	rlca			;77f1	07		.
	add a,01fh		;77f2	c6 1f		. .
	jp nz,0c300h		;77f4	c2 00 c3	. . .
	rra			;77f7	1f		.
	push bc			;77f8	c5		.
	nop			;77f9	00		.
	jp 0c507h		;77fa	c3 07 c5	. . .
	nop			;77fd	00		.
	add a,007h		;77fe	c6 07		. .
l7800h:
	jp nz,00100h		;7800	c2 00 01	. . .
	ret z			;7803	c8		.
	nop			;7804	00		.
	ld a,(hl)		;7805	7e		~
	rlc b			;7806	cb 00		. .
	push bc			;7808	c5		.
	rlca			;7809	07		.
	rlc b			;780a	cb 00		. .
	push bc			;780c	c5		.
	rra			;780d	1f		.
	jp 0c500h		;780e	c3 00 c5	. . .
	rlca			;7811	07		.
	jp 0c500h		;7812	c3 00 c5	. . .
	rra			;7815	1f		.
	ret z			;7816	c8		.
	rlca			;7817	07		.
	add a,000h		;7818	c6 00		. .
	jp nz,0c61fh		;781a	c2 1f c6	. . .
	nop			;781d	00		.
	jp nz,0d007h		;781e	c2 07 d0	. . .
	rra			;7821	1f		.
	add a,000h		;7822	c6 00		. .
	jp nz,0c607h		;7824	c2 07 c6	. . .
	nop			;7827	00		.
	jp nz,0c81fh		;7828	c2 1f c8	. . .
	rlca			;782b	07		.
	ret z			;782c	c8		.
	rra			;782d	1f		.
	ret z			;782e	c8		.
	rlca			;782f	07		.
	ret z			;7830	c8		.
	rra			;7831	1f		.
	adc a,000h		;7832	ce 00		. .
	jp nz,0d01fh		;7834	c2 1f d0	. . .
	rlca			;7837	07		.
	add a,000h		;7838	c6 00		. .
	jp nz,0c61fh		;783a	c2 1f c6	. . .
	nop			;783d	00		.
	jp nz,0d007h		;783e	c2 07 d0	. . .
	rra			;7841	1f		.
	ret z			;7842	c8		.
	rlca			;7843	07		.
	ret z			;7844	c8		.
	rra			;7845	1f		.
	ret nc			;7846	d0		.
	rlca			;7847	07		.
	jp 0c81fh		;7848	c3 1f c8	. . .
	nop			;784b	00		.
	push bc			;784c	c5		.
	rlca			;784d	07		.
	ret nc			;784e	d0		.
	rra			;784f	1f		.
	ret z			;7850	c8		.
	rlca			;7851	07		.
	ret po			;7852	e0		.
	nop			;7853	00		.
	ret z			;7854	c8		.
	rlca			;7855	07		.
	ret z			;7856	c8		.
	nop			;7857	00		.
	adc a,01fh		;7858	ce 1f		. .
	jp z,0c800h		;785a	ca 00 c8	. . .
	rlca			;785d	07		.
	add a,01fh		;785e	c6 1f		. .
	jp nz,0c600h		;7860	c2 00 c6	. . .
	rlca			;7863	07		.
	jp nz,0c800h		;7864	c2 00 c8	. . .
	rra			;7867	1f		.
	ret z			;7868	c8		.
	nop			;7869	00		.
	add a,007h		;786a	c6 07		. .
	jp nz,0c800h		;786c	c2 00 c8	. . .
	rlca			;786f	07		.
	ret z			;7870	c8		.
	nop			;7871	00		.
	ret z			;7872	c8		.
	rra			;7873	1f		.
	jp 0cd07h		;7874	c3 07 cd	. . .
l7877h:
	nop			;7877	00		.
	jp 0c51fh		;7878	c3 1f c5	. . .
	nop			;787b	00		.
	jp 0c507h		;787c	c3 07 c5	. . .
	nop			;787f	00		.
	jp 0c51fh		;7880	c3 1f c5	. . .
	nop			;7883	00		.
	ld bc,00030h		;7884	01 30 00	. 0 .
	ld a,d			;7887	7a		z
	adc a,0eeh		;7888	ce ee		. .
	jp nz,0c311h		;788a	c2 11 c3	. . .
	xor 0c5h		;788d	ee c5		. .
	ld e,0c3h		;788f	1e c3		. .
	xor 0c8h		;7891	ee c8		. .
	ld de,0ffc5h		;7893	11 c5 ff	. . .
	jp 0c5eeh		;7896	c3 ee c5	. . .
	pop hl			;7899	e1		.
	add a,0eeh		;789a	c6 ee		. .
	jp nz,0c61eh		;789c	c2 1e c6	. . .
	pop af			;789f	f1		.
	jp z,0c6ffh		;78a0	ca ff c6	. . .
	rra			;78a3	1f		.
	jp nz,0c6ffh		;78a4	c2 ff c6	. . .
	xor 0c2h		;78a7	ee c2		. .
	pop hl			;78a9	e1		.
	ret z			;78aa	c8		.
	ld e,0c8h		;78ab	1e c8		. .
	pop hl			;78ad	e1		.
	ret z			;78ae	c8		.
	ld e,0c8h		;78af	1e c8		. .
	pop af			;78b1	f1		.
	ret z			;78b2	c8		.
	rra			;78b3	1f		.
	ret z			;78b4	c8		.
	pop af			;78b5	f1		.
	ret z			;78b6	c8		.
	rra			;78b7	1f		.
	add a,011h		;78b8	c6 11		. .
	jp nz,0c6ffh		;78ba	c2 ff c6	. . .
	pop af			;78bd	f1		.
	jp nz,0c6ffh		;78be	c2 ff c6	. . .
	ld de,01fc2h		;78c1	11 c2 1f	. . .
	ret z			;78c4	c8		.
	pop hl			;78c5	e1		.
	jp 0c5f1h		;78c6	c3 f1 c5	. . .
	ld de,0ffc3h		;78c9	11 c3 ff	. . .
	push bc			;78cc	c5		.
	pop af			;78cd	f1		.
	add a,0ffh		;78ce	c6 ff		. .
	jp nz,0c611h		;78d0	c2 11 c6	. . .
	rst 38h			;78d3	ff		.
	ret z			;78d4	c8		.
	pop af			;78d5	f1		.
	jp nz,0c611h		;78d6	c2 11 c6	. . .
	pop af			;78d9	f1		.
	jp nz,0c611h		;78da	c2 11 c6	. . .
	rst 38h			;78dd	ff		.
	jp nz,0c6f1h		;78de	c2 f1 c6	. . .
	rra			;78e1	1f		.
	jp nz,0c311h		;78e2	c2 11 c3	. . .
	ld e,0c5h		;78e5	1e c5		. .
	xor 0c3h		;78e7	ee c3		. .
	pop af			;78e9	f1		.
	push bc			;78ea	c5		.
	ld e,0c3h		;78eb	1e c3		. .
	rra			;78ed	1f		.
	push bc			;78ee	c5		.
	rst 38h			;78ef	ff		.
	jp 0c5f1h		;78f0	c3 f1 c5	. . .
	rst 38h			;78f3	ff		.
	jp 0c5f1h		;78f4	c3 f1 c5	. . .
	rst 38h			;78f7	ff		.
	jp 0c51fh		;78f8	c3 1f c5	. . .
	rst 38h			;78fb	ff		.
	jp 0c81fh		;78fc	c3 1f c8	. . .
	pop hl			;78ff	e1		.
	push bc			;7900	c5		.
	xor 000h		;7901	ee 00		. .
	xor b			;7903	a8		.
	nop			;7904	00		.
	ld c,b			;7905	48		H
	ret z			;7906	c8		.
	xor 0c6h		;7907	ee c6		. .
	ld e,0c2h		;7909	1e c2		. .
	xor 0c6h		;790b	ee c6		. .
	rst 38h			;790d	ff		.
	jp nz,0cef1h		;790e	c2 f1 ce	. . .
	rst 38h			;7911	ff		.
	jp nz,0c61fh		;7912	c2 1f c6	. . .
	pop hl			;7915	e1		.
	jp nz,0c3eeh		;7916	c2 ee c3	. . .
	pop af			;7919	f1		.
	push bc			;791a	c5		.
	ld e,0c3h		;791b	1e c3		. .
	rst 38h			;791d	ff		.
	push bc			;791e	c5		.
	ld de,01fc3h		;791f	11 c3 1f	. . .
	push bc			;7922	c5		.
	pop hl			;7923	e1		.
	push bc			;7924	c5		.
	ld de,0eec3h		;7925	11 c3 ee	. . .
	push bc			;7928	c5		.
	ld de,01ec3h		;7929	11 c3 1e	. . .
	ret z			;792c	c8		.
	pop af			;792d	f1		.
	push bc			;792e	c5		.
	rra			;792f	1f		.
	jp 0c8e1h		;7930	c3 e1 c8	. . .
	ld e,0c3h		;7933	1e c3		. .
	rst 38h			;7935	ff		.
	push bc			;7936	c5		.
	rra			;7937	1f		.
	jp 0c5e1h		;7938	c3 e1 c5	. . .
	xor 0c6h		;793b	ee c6		. .
	rra			;793d	1f		.
	ret z			;793e	c8		.
	pop hl			;793f	e1		.
	jp nz,0c3eeh		;7940	c2 ee c3	. . .
	pop af			;7943	f1		.
	push bc			;7944	c5		.
	ld de,0e1c3h		;7945	11 c3 e1	. . .
	push bc			;7948	c5		.
	xor 0c6h		;7949	ee c6		. .
	ld e,0c2h		;794b	1e c2		. .
	xor 001h		;794d	ee 01		. .
	ret z			;794f	c8		.
	nop			;7950	00		.
	or (hl)			;7951	b6		.
	set 5,(hl)		;7952	cb ee		. .
	push bc			;7954	c5		.
	ld e,0c3h		;7955	1e c3		. .
	xor 0c5h		;7957	ee c5		. .
	ld de,0eec3h		;7959	11 c3 ee	. . .
	push bc			;795c	c5		.
	pop hl			;795d	e1		.
	jp 0c5eeh		;795e	c3 ee c5	. . .
	pop hl			;7961	e1		.
	jp 0c5eeh		;7962	c3 ee c5	. . .
	ld e,0c8h		;7965	1e c8		. .
	ld h,c			;7967	61		a
	add a,066h		;7968	c6 66		. f
	jp nz,0c6f6h		;796a	c2 f6 c6	. . .
	ld h,(hl)		;796d	66		f
	jp nz,0c86fh		;796e	c2 6f c8	. o .
	ld d,0c8h		;7971	16 c8		. .
	ld e,0c6h		;7973	1e c6		. .
	call z,0fcc2h		;7975	cc c2 fc	. . .
	add a,0cch		;7978	c6 cc		. .
	jp nz,0c81fh		;797a	c2 1f c8	. . .
	inc e			;797d	1c		.
	ret z			;797e	c8		.
	pop hl			;797f	e1		.
	ret z			;7980	c8		.
	ld e,0c8h		;7981	1e c8		. .
	ld d,c			;7983	51		Q
	add a,055h		;7984	c6 55		. U
	jp nz,0c6ffh		;7986	c2 ff c6	. . .
	ld d,l			;7989	55		U
	jp nz,0c85fh		;798a	c2 5f c8	. _ .
	pop hl			;798d	e1		.
	ret z			;798e	c8		.
	and c			;798f	a1		.
	add a,0aah		;7990	c6 aa		. .
	jp nz,0c61ah		;7992	c2 1a c6	. . .
	xor d			;7995	aa		.
	jp nz,0c8afh		;7996	c2 af c8	. . .
	ld a,(de)		;7999	1a		.
	ret z			;799a	c8		.
	or 0c3h			;799b	f6 c3		. .
	ld l,a			;799d	6f		o
	push bc			;799e	c5		.
	ld h,c			;799f	61		a
	jp 0c5f6h		;79a0	c3 f6 c5	. . .
	ld d,0c8h		;79a3	16 c8		. .
	ld l,a			;79a5	6f		o
	ret z			;79a6	c8		.
	call m,01fc3h		;79a7	fc c3 1f	. . .
	ret z			;79aa	c8		.
	rst 38h			;79ab	ff		.
	push bc			;79ac	c5		.
	pop af			;79ad	f1		.
	ret z			;79ae	c8		.
	ld e,a			;79af	5f		_
	jp 0c51ah		;79b0	c3 1a c5	. . .
	jp m,lafc8h		;79b3	fa c8 af	. . .
	ret z			;79b6	c8		.
	ld h,(hl)		;79b7	66		f
	ret z			;79b8	c8		.
	call z,sub_55c8h	;79b9	cc c8 55	. . U
	ret z			;79bc	c8		.
	xor d			;79bd	aa		.
	add a,061h		;79be	c6 61		. a
	jp nz,0c61eh		;79c0	c2 1e c6	. . .
	ld h,(hl)		;79c3	66		f
	jp nz,0c611h		;79c4	c2 11 c6	. . .
	ld d,0c2h		;79c7	16 c2		. .
	pop hl			;79c9	e1		.
	add a,01eh		;79ca	c6 1e		. .
	jp nz,0c6eeh		;79cc	c2 ee c6	. . .
	call z,011c2h		;79cf	cc c2 11	. . .
	add a,01ch		;79d2	c6 1c		. .
	ret z			;79d4	c8		.
	pop hl			;79d5	e1		.
	jp nz,0c6eeh		;79d6	c2 ee c6	. . .
	ld e,0c2h		;79d9	1e c2		. .
	xor 0c6h		;79db	ee c6		. .
	ld d,c			;79dd	51		Q
	jp nz,0c61eh		;79de	c2 1e c6	. . .
	ld d,l			;79e1	55		U
	jp nz,0c611h		;79e2	c2 11 c6	. . .
	pop hl			;79e5	e1		.
	jp nz,0c6eeh		;79e6	c2 ee c6	. . .
	and c			;79e9	a1		.
	jp nz,0c61eh		;79ea	c2 1e c6	. . .
	xor d			;79ed	aa		.
	jp nz,0c611h		;79ee	c2 11 c6	. . .
	ld a,(de)		;79f1	1a		.
	jp nz,0c3e1h		;79f2	c2 e1 c3	. . .
	ld e,0c5h		;79f5	1e c5		. .
	xor 0c3h		;79f7	ee c3		. .
	ld de,0eec5h		;79f9	11 c5 ee	. . .
	jp 0c5e1h		;79fc	c3 e1 c5	. . .
	xor 0c3h		;79ff	ee c3		. .
	pop hl			;7a01	e1		.
	push bc			;7a02	c5		.
	xor 0c3h		;7a03	ee c3		. .
	ld e,0c5h		;7a05	1e c5		. .
	xor 001h		;7a07	ee 01		. .
	nop			;7a09	00		.
	nop			;7a0a	00		.
	ld a,h			;7a0b	7c		|
	jp z,0ce00h		;7a0c	ca 00 ce	. . .
	ld bc,000d0h		;7a0f	01 d0 00	. . .
	ld (bc),a		;7a12	02		.
	inc bc			;7a13	03		.
	adc a,004h		;7a14	ce 04		. .
	inc bc			;7a16	03		.
	dec b			;7a17	05		.
	call 00600h		;7a18	cd 00 06	. . .
	rlca			;7a1b	07		.
	ret nc			;7a1c	d0		.
	ex af,af'		;7a1d	08		.
	add hl,bc		;7a1e	09		.
	ld a,(bc)		;7a1f	0a		.
	call z,00b00h		;7a20	cc 00 0b	. . .
	jp nc,00c08h		;7a23	d2 08 0c	. . .
	rlc b			;7a26	cb 00		. .
	dec c			;7a28	0d		.
	ld c,0c2h		;7a29	0e c2		. .
	ex af,af'		;7a2b	08		.
	rrca			;7a2c	0f		.
	ld c,010h		;7a2d	0e 10		. .
	ld de,01312h		;7a2f	11 12 13	. . .
	djnz $+10		;7a32	10 08		. .
	rrca			;7a34	0f		.
	ld c,008h		;7a35	0e 08		. .
	ld de,00e14h		;7a37	11 14 0e	. . .
	jp nz,00f08h		;7a3a	c2 08 0f	. . .
	dec d			;7a3d	15		.
	jp z,00d00h		;7a3e	ca 00 0d	. . .
	ld c,0c2h		;7a41	0e c2		. .
	ex af,af'		;7a43	08		.
	rrca			;7a44	0f		.
	ld d,010h		;7a45	16 10		. .
	ld de,00817h		;7a47	11 17 08	. . .
	djnz $+10		;7a4a	10 08		. .
	rrca			;7a4c	0f		.
	ld c,008h		;7a4d	0e 08		. .
	ld de,00e0fh		;7a4f	11 0f 0e	. . .
	jp nz,00f08h		;7a52	c2 08 0f	. . .
	dec d			;7a55	15		.
	jp z,00d00h		;7a56	ca 00 0d	. . .
	ld c,0c2h		;7a59	0e c2		. .
	ex af,af'		;7a5b	08		.
	rrca			;7a5c	0f		.
	ld c,010h		;7a5d	0e 10		. .
	ld de,01918h		;7a5f	11 18 19	. . .
	ld a,(de)		;7a62	1a		.
	jr $+17			;7a63	18 0f		. .
	dec de			;7a65	1b		.
	inc e			;7a66	1c		.
	ld de,00e1dh		;7a67	11 1d 0e	. . .
	jp nz,00f08h		;7a6a	c2 08 0f	. . .
	dec d			;7a6d	15		.
	jp z,01e00h		;7a6e	ca 00 1e	. . .
	rra			;7a71	1f		.
	jp nz,02008h		;7a72	c2 08 20	. .  
	ld hl,02322h		;7a75	21 22 23	! " #
	inc b			;7a78	04		.
	ld hl,004c2h		;7a79	21 c2 04	! . .
	jr nz,$+6		;7a7c	20 04		  .
	ld (00423h),hl		;7a7e	22 23 04	" # .
	ld hl,008c2h		;7a81	21 c2 08	! . .
	inc h			;7a84	24		$
	dec h			;7a85	25		%
	call nz,00100h		;7a86	c4 00 01	. . .
	nop			;7a89	00		.
	nop			;7a8a	00		.
	inc sp			;7a8b	33		3
	rst 0			;7a8c	c7		.
	nop			;7a8d	00		.
	ld bc,0d002h		;7a8e	01 02 d0	. . .
	inc bc			;7a91	03		.
	inc b			;7a92	04		.
	dec b			;7a93	05		.
	call 00600h		;7a94	cd 00 06	. . .
	rlca			;7a97	07		.
	adc a,003h		;7a98	ce 03		. .
	rlca			;7a9a	07		.
	ex af,af'		;7a9b	08		.
	ret nc			;7a9c	d0		.
	nop			;7a9d	00		.
	call nz,00a09h		;7a9e	c4 09 0a	. . .
	dec bc			;7aa1	0b		.
	jp nz,00c03h		;7aa2	c2 03 0c	. . .
	push bc			;7aa5	c5		.
	add hl,bc		;7aa6	09		.
	sub 000h		;7aa7	d6 00		. .
	dec c			;7aa9	0d		.
	dec bc			;7aaa	0b		.
	inc bc			;7aab	03		.
	ld c,00fh		;7aac	0e 0f		. .
	in a,(000h)		;7aae	db 00		. .
	dec c			;7ab0	0d		.
	dec bc			;7ab1	0b		.
	djnz $+19		;7ab2	10 11		. .
	call c,00d00h		;7ab4	dc 00 0d	. . .
	ld (de),a		;7ab7	12		.
	inc de			;7ab8	13		.
	defb 0ddh,000h,014h ;illegal sequence	;7ab9	dd 00 14	. . .
	ld de,000f0h		;7abc	11 f0 00	. . .
	ld bc,00000h		;7abf	01 00 00	. . .
	xor h			;7ac2	ac		.
	jp po,00100h		;7ac3	e2 00 01	. . .
	call nz,00302h		;7ac6	c4 02 03	. . .
	jp nz,0c400h		;7ac9	c2 00 c4	. . .
	ld (bc),a		;7acc	02		.
	inc b			;7acd	04		.
	jp nz,00500h		;7ace	c2 00 05	. . .
	call nz,0c202h		;7ad1	c4 02 c2	. . .
	nop			;7ad4	00		.
	ld bc,002c4h		;7ad5	01 c4 02	. . .
	inc bc			;7ad8	03		.
	call nz,00600h		;7ad9	c4 00 06	. . .
	rlca			;7adc	07		.
	ex af,af'		;7add	08		.
	rlca			;7ade	07		.
	ex af,af'		;7adf	08		.
	add hl,bc		;7ae0	09		.
	nop			;7ae1	00		.
	ld a,(bc)		;7ae2	0a		.
	dec bc			;7ae3	0b		.
	inc c			;7ae4	0c		.
	dec bc			;7ae5	0b		.
	inc c			;7ae6	0c		.
	dec c			;7ae7	0d		.
l7ae8h:
	ld c,00fh		;7ae8	0e 0f		. .
	djnz l7afdh		;7aea	10 11		. .
	ld (de),a		;7aec	12		.
	ld de,01312h		;7aed	11 12 13	. . .
	nop			;7af0	00		.
	inc d			;7af1	14		.
	dec d			;7af2	15		.
	ld d,015h		;7af3	16 15		. .
	ld d,017h		;7af5	16 17		. .
	call nz,00600h		;7af7	c4 00 06	. . .
	jr l7b15h		;7afa	18 19		. .
	ld a,(de)		;7afc	1a		.
l7afdh:
	dec de			;7afd	1b		.
l7afeh:
	add hl,bc		;7afe	09		.
	nop			;7aff	00		.
	ld a,(bc)		;7b00	0a		.
	inc e			;7b01	1c		.
	dec e			;7b02	1d		.
	inc e			;7b03	1c		.
	dec e			;7b04	1d		.
	dec c			;7b05	0d		.
	ld c,00fh		;7b06	0e 0f		. .
	djnz l7b28h		;7b08	10 1e		. .
	rra			;7b0a	1f		.
	ld e,01fh		;7b0b	1e 1f		. .
	inc de			;7b0d	13		.
	nop			;7b0e	00		.
	inc d			;7b0f	14		.
	jr nz,l7b33h		;7b10	20 21		  !
	jr nz,$+35		;7b12	20 21		  !
	rla			;7b14	17		.
l7b15h:
	call nz,00600h		;7b15	c4 00 06	. . .
	call nz,00922h		;7b18	c4 22 09	. " .
	nop			;7b1b	00		.
	ld a,(bc)		;7b1c	0a		.
	call nz,00d23h		;7b1d	c4 23 0d	. # .
	ld c,00fh		;7b20	0e 0f		. .
	djnz l7ae8h		;7b22	10 c4		. .
	inc h			;7b24	24		$
	inc de			;7b25	13		.
	nop			;7b26	00		.
	inc d			;7b27	14		.
l7b28h:
	call nz,01725h		;7b28	c4 25 17	. % .
	call nz,00600h		;7b2b	c4 00 06	. . .
	call nz,00922h		;7b2e	c4 22 09	. " .
	nop			;7b31	00		.
	ld a,(bc)		;7b32	0a		.
l7b33h:
	call nz,00d23h		;7b33	c4 23 0d	. # .
	ld c,00fh		;7b36	0e 0f		. .
	djnz l7afeh		;7b38	10 c4		. .
	inc h			;7b3a	24		$
	inc de			;7b3b	13		.
	nop			;7b3c	00		.
	inc d			;7b3d	14		.
	call nz,01725h		;7b3e	c4 25 17	. % .
	call nz,02600h		;7b41	c4 00 26	. . &
	call nz,02827h		;7b44	c4 27 28	. ' (
	nop			;7b47	00		.
	add hl,hl		;7b48	29		)
	call nz,02b2ah		;7b49	c4 2a 2b	. * +
	inc l			;7b4c	2c		,
	dec l			;7b4d	2d		-
	ld l,0c4h		;7b4e	2e c4		. .
	cpl			;7b50	2f		/
	jr nc,l7b53h		;7b51	30 00		0 .
l7b53h:
	ld sp,032c4h		;7b53	31 c4 32	1 . 2
	inc sp			;7b56	33		3
	call nz,03400h		;7b57	c4 00 34	. . 4
	call nz,03635h		;7b5a	c4 35 36	. 5 6
	jp nz,0c400h		;7b5d	c2 00 c4	. . .
	dec (hl)		;7b60	35		5
	scf			;7b61	37		7
	jp nz,03800h		;7b62	c2 00 38	. . 8
	call nz,0c235h		;7b65	c4 35 c2	. 5 .
	nop			;7b68	00		.
	inc (hl)		;7b69	34		4
	call nz,03635h		;7b6a	c4 35 36	. 5 6
	jp nz,00000h		;7b6d	c2 00 00	. . .
	sub b			;7b70	90		.
	nop			;7b71	00		.
	ld h,h			;7b72	64		d
	ret			;7b73	c9		.
	nop			;7b74	00		.
	ld bc,01800h		;7b75	01 00 18	. . .
	jp 0181ch		;7b78	c3 1c 18	. . .
	nop			;7b7b	00		.
	rlca			;7b7c	07		.
	rrca			;7b7d	0f		.
	ld h,e			;7b7e	63		c
	call nz,00047h		;7b7f	c4 47 00	. G .
	inc a			;7b82	3c		<
	inc c			;7b83	0c		.
	ld (hl),e		;7b84	73		s
	call nz,0003bh		;7b85	c4 3b 00	. ; .
	rlca			;7b88	07		.
	inc bc			;7b89	03		.
	jp 06171h		;7b8a	c3 71 61	. q a
	inc bc			;7b8d	03		.
	jp 0c500h		;7b8e	c3 00 c5	. . .
	ld c,000h		;7b91	0e 00		. .
	jp nz,0c61fh		;7b93	c2 1f c6	. . .
	nop			;7b96	00		.
	inc e			;7b97	1c		.
	ld a,h			;7b98	7c		|
	inc bc			;7b99	03		.
	ld h,e			;7b9a	63		c
	jp 0c21ch		;7b9b	c3 1c c2	. . .
	nop			;7b9e	00		.
	jp nz,0c501h		;7b9f	c2 01 c5	. . .
	nop			;7ba2	00		.
	inc bc			;7ba3	03		.
	ld bc,0c370h		;7ba4	01 70 c3	. p .
	rlca			;7ba7	07		.
	ld c,000h		;7ba8	0e 00		. .
	ld bc,01fc4h		;7baa	01 c4 1f	. . .
	jp nz,0c300h		;7bad	c2 00 c3	. . .
	jr c,$+30		;7bb0	38 1c		8 .
	rra			;7bb2	1f		.
	rlca			;7bb3	07		.
l7bb4h:
	jp nz,0c300h		;7bb4	c2 00 c3	. . .
	dec sp			;7bb7	3b		;
l7bb8h:
	ld (hl),e		;7bb8	73		s
	inc e			;7bb9	1c		.
	inc a			;7bba	3c		<
	jp nz,00700h		;7bbb	c2 00 07	. . .
	jp nz,0c263h		;7bbe	c2 63 c2	. c .
	ld (hl),c		;7bc1	71		q
	ld a,b			;7bc2	78		x
	jp nz,0c600h		;7bc3	c2 00 c6	. . .
	ld c,0c2h		;7bc6	0e c2		. .
	nop			;7bc8	00		.
	call nz,0c81ch		;7bc9	c4 1c c8	. . .
	nop			;7bcc	00		.
	jp nz,0c201h		;7bcd	c2 01 c2	. . .
	nop			;7bd0	00		.
	inc e			;7bd1	1c		.
	jr c,$+114		;7bd2	38 70		8 p
	rra			;7bd4	1f		.
	call nz,00000h		;7bd5	c4 00 00	. . .
	adc a,b			;7bd8	88		.
	nop			;7bd9	00		.
	ld (hl),e		;7bda	73		s
	ret			;7bdb	c9		.
	nop			;7bdc	00		.
	jp nz,0c201h		;7bdd	c2 01 c2	. . .
	ld (bc),a		;7be0	02		.
	jp nz,00804h		;7be1	c2 04 08	. . .
	nop			;7be4	00		.
	jp nz,0c27fh		;7be5	c2 7f c2	. . .
	ld b,b			;7be8	40		@
	jp nz,01020h		;7be9	c2 20 10	.   .
	ex af,af'		;7bec	08		.
	jp nz,0c210h		;7bed	c2 10 c2	. . .
	jr nz,l7bb4h		;7bf0	20 c2		  .
	ld b,b			;7bf2	40		@
	nop			;7bf3	00		.
	djnz l7bb8h		;7bf4	10 c2		. .
l7bf6h:
	ex af,af'		;7bf6	08		.
	jp nz,0c204h		;7bf7	c2 04 c2	. . .
	ld (bc),a		;7bfa	02		.
	push bc			;7bfb	c5		.
	nop			;7bfc	00		.
	ld bc,01806h		;7bfd	01 06 18	. . .
	ld h,b			;7c00	60		`
	ld bc,01907h		;7c01	01 07 19	. . .
	ld h,c			;7c04	61		a
	ld a,(hl)		;7c05	7e		~
	jp l7f01h		;7c06	c3 01 7f	. . .
	rra			;7c09	1f		.
l7c0ah:
	ld h,a			;7c0a	67		g
	ld a,c			;7c0b	79		y
l7c0ch:
	ld a,(hl)		;7c0c	7e		~
	jp 0c47fh		;7c0d	c3 7f c4	. . .
	nop			;7c10	00		.
	ld a,a			;7c11	7f		.
	ld h,b			;7c12	60		`
	jr l7c1bh		;7c13	18 06		. .
	ld h,b			;7c15	60		`
	jr l7c1eh		;7c16	18 06		. .
	ld bc,000c4h		;7c18	01 c4 00	. . .
l7c1bh:
	jp l7e00h+1		;7c1b	c3 01 7e	. . ~
l7c1eh:
	ld h,c			;7c1e	61		a
	add hl,de		;7c1f	19		.
	rlca			;7c20	07		.
	ld bc,l7fc3h		;7c21	01 c3 7f	. . .
	ld a,(hl)		;7c24	7e		~
	ld a,c			;7c25	79		y
	ld h,a			;7c26	67		g
	rra			;7c27	1f		.
	ld a,a			;7c28	7f		.
	ld b,018h		;7c29	06 18		. .
	ld h,b			;7c2b	60		`
	ld a,a			;7c2c	7f		.
	push bc			;7c2d	c5		.
	nop			;7c2e	00		.
	jp nz,0c240h		;7c2f	c2 40 c2	. @ .
	jr nz,l7bf6h		;7c32	20 c2		  .
	djnz l7c3eh		;7c34	10 08		. .
	nop			;7c36	00		.
	jp nz,0c202h		;7c37	c2 02 c2	. . .
	inc b			;7c3a	04		.
	jp nz,01008h		;7c3b	c2 08 10	. . .
l7c3eh:
	ex af,af'		;7c3e	08		.
	jp nz,0c204h		;7c3f	c2 04 c2	. . .
	ld (bc),a		;7c42	02		.
	jp nz,00001h		;7c43	c2 01 00	. . .
	djnz l7c0ah		;7c46	10 c2		. .
	jr nz,l7c0ch		;7c48	20 c2		  .
	ld b,b			;7c4a	40		@
	jp nz,0007fh		;7c4b	c2 7f 00	. . .
	nop			;7c4e	00		.
	jr z,l7c51h		;7c4f	28 00		( .
l7c51h:
	ld e,0c8h		;7c51	1e c8		. .
	nop			;7c53	00		.
	rlca			;7c54	07		.
	jr $+34			;7c55	18 20		.  
	jp nz,0c340h		;7c57	c2 40 c3	. @ .
	ld a,a			;7c5a	7f		.
	rra			;7c5b	1f		.
	jr $+6			;7c5c	18 04		. .
	jp nz,0c302h		;7c5e	c2 02 c3	. . .
	ld bc,l7fc3h		;7c61	01 c3 7f	. . .
	jp nz,02040h		;7c64	c2 40 20	. @  
	jr l7c70h		;7c67	18 07		. .
	jp 0c201h		;7c69	c3 01 c2	. . .
	ld (bc),a		;7c6c	02		.
	inc b			;7c6d	04		.
	jr $+33			;7c6e	18 1f		. .
l7c70h:
	nop			;7c70	00		.
	sub b			;7c71	90		.
	nop			;7c72	00		.
	ld d,a			;7c73	57		W
	ret			;7c74	c9		.
	ld de,0c11fh		;7c75	11 1f c1	. . .
	rst 38h			;7c78	ff		.
	push bc			;7c79	c5		.
	rra			;7c7a	1f		.
	ld de,0f1c2h		;7c7b	11 c2 f1	. . .
	push bc			;7c7e	c5		.
	rra			;7c7f	1f		.
	ld de,01fc2h		;7c80	11 c2 1f	. . .
	push bc			;7c83	c5		.
	pop af			;7c84	f1		.
	ld de,01fc7h		;7c85	11 c7 1f	. . .
	ld de,0ffc2h		;7c88	11 c2 ff	. . .
	push bc			;7c8b	c5		.
	pop af			;7c8c	f1		.
	ld de,01fc2h		;7c8d	11 c2 1f	. . .
	add a,011h		;7c90	c6 11		. .
	jp nz,0c2f1h		;7c92	c2 f1 c2	. . .
	rra			;7c95	1f		.
	jp 0c2f1h		;7c96	c3 f1 c2	. . .
	ld de,0f1c2h		;7c99	11 c2 f1	. . .
	push bc			;7c9c	c5		.
	ld de,01fc3h		;7c9d	11 c3 1f	. . .
	call nz,0c1f1h		;7ca0	c4 f1 c1	. . .
	rst 38h			;7ca3	ff		.
	push bc			;7ca4	c5		.
	rra			;7ca5	1f		.
	jp nz,0c611h		;7ca6	c2 11 c6	. . .
	pop af			;7ca9	f1		.
	jp nz,0c411h		;7caa	c2 11 c4	. . .
	pop af			;7cad	f1		.
	jp nz,0c21fh		;7cae	c2 1f c2	. . .
	ld de,01fc6h		;7cb1	11 c6 1f	. . .
	jp nz,0c611h		;7cb4	c2 11 c6	. . .
	pop af			;7cb7	f1		.
	jp nz,0c411h		;7cb8	c2 11 c4	. . .
	pop af			;7cbb	f1		.
	jp nz,0c6ffh		;7cbc	c2 ff c6	. . .
	ld de,0f1c2h		;7cbf	11 c2 f1	. . .
	jp nz,0c311h		;7cc2	c2 11 c3	. . .
	pop af			;7cc5	f1		.
	rra			;7cc6	1f		.
	jp nz,0c2ffh		;7cc7	c2 ff c2	. . .
	ld de,l8800h		;7cca	11 00 88	. . .
	nop			;7ccd	00		.
	add hl,sp		;7cce	39		9
	ret			;7ccf	c9		.
	ld de,0f1c7h		;7cd0	11 c7 f1	. . .
	ld de,01fc2h		;7cd3	11 c2 1f	. . .
	call z,0c1f1h		;7cd6	cc f1 c1	. . .
	rst 38h			;7cd9	ff		.
	rst 0			;7cda	c7		.
	pop af			;7cdb	f1		.
	pop bc			;7cdc	c1		.
	rst 38h			;7cdd	ff		.
	call nz,0c811h		;7cde	c4 11 c8	. . .
	pop af			;7ce1	f1		.
	rra			;7ce2	1f		.
	jp 0c8f1h		;7ce3	c3 f1 c8	. . .
	rra			;7ce6	1f		.
	call nz,01f11h		;7ce7	c4 11 1f	. . .
	rst 0			;7cea	c7		.
	pop af			;7ceb	f1		.
	call nz,0c311h		;7cec	c4 11 c3	. . .
	pop af			;7cef	f1		.
	rra			;7cf0	1f		.
	call nz,0c8f1h		;7cf1	c4 f1 c8	. . .
	rra			;7cf4	1f		.
	jp 01ff1h		;7cf5	c3 f1 1f	. . .
	call nz,0c111h		;7cf8	c4 11 c1	. . .
	rst 38h			;7cfb	ff		.
	rst 0			;7cfc	c7		.
	pop af			;7cfd	f1		.
	pop bc			;7cfe	c1		.
	rst 38h			;7cff	ff		.
	adc a,0f1h		;7d00	ce f1		. .
	ld de,0f1c5h		;7d02	11 c5 f1	. . .
	jp nz,0111fh		;7d05	c2 1f 11	. . .
	nop			;7d08	00		.
	jr z,l7d0bh		;7d09	28 00		( .
l7d0bh:
	dec c			;7d0b	0d		.
	ret z			;7d0c	c8		.
	ld de,0f1c5h		;7d0d	11 c5 f1	. . .
	call nz,0c71fh		;7d10	c4 1f c7	. . .
	pop af			;7d13	f1		.
	jp 0cc1fh		;7d14	c3 1f cc	. . .
	pop af			;7d17	f1		.
	rra			;7d18	1f		.
	ld bc,00000h		;7d19	01 00 00	. . .
	jr nc,$+1		;7d1c	30 ff		0 .
	nop			;7d1e	00		.
	rst 38h			;7d1f	ff		.
	nop			;7d20	00		.
	rst 0			;7d21	c7		.
	nop			;7d22	00		.
	ld bc,00302h		;7d23	01 02 03	. . .
	inc b			;7d26	04		.
	dec b			;7d27	05		.
	ld b,000h		;7d28	06 00		. .
	rlca			;7d2a	07		.
	add a,000h		;7d2b	c6 00		. .
	ld bc,00302h		;7d2d	01 02 03	. . .
	inc b			;7d30	04		.
	dec b			;7d31	05		.
	ld b,008h		;7d32	06 08		. .
	add hl,bc		;7d34	09		.
	jp z,00a00h		;7d35	ca 00 0a	. . .
	dec bc			;7d38	0b		.
	inc c			;7d39	0c		.
	dec c			;7d3a	0d		.
	ld c,0c2h		;7d3b	0e c2		. .
	nop			;7d3d	00		.
	rrca			;7d3e	0f		.
	add a,000h		;7d3f	c6 00		. .
	ld a,(bc)		;7d41	0a		.
	dec bc			;7d42	0b		.
	inc c			;7d43	0c		.
	dec c			;7d44	0d		.
	ld c,000h		;7d45	0e 00		. .
	djnz l7d5ah		;7d47	10 11		. .
	rst 38h			;7d49	ff		.
	nop			;7d4a	00		.
	add a,000h		;7d4b	c6 00		. .
	ld bc,00000h		;7d4d	01 00 00	. . .
	ld b,d			;7d50	42		B
	ret z			;7d51	c8		.
	nop			;7d52	00		.
	ld bc,0cc02h		;7d53	01 02 cc	. . .
	nop			;7d56	00		.
	ld bc,0d002h		;7d57	01 02 d0	. . .
l7d5ah:
	nop			;7d5a	00		.
	inc bc			;7d5b	03		.
	inc b			;7d5c	04		.
	call z,00300h		;7d5d	cc 00 03	. . .
	inc b			;7d60	04		.
	defb 0edh ;next byte illegal after ed	;7d61	ed		.
	nop			;7d62	00		.
	dec b			;7d63	05		.
	ld b,0c4h		;7d64	06 c4		. .
	nop			;7d66	00		.
	rlca			;7d67	07		.
	ex af,af'		;7d68	08		.
	add a,000h		;7d69	c6 00		. .
	dec b			;7d6b	05		.
	ld b,0c4h		;7d6c	06 c4		. .
	nop			;7d6e	00		.
	rlca			;7d6f	07		.
	ex af,af'		;7d70	08		.
	jp z,00900h		;7d71	ca 00 09	. . .
	ld a,(bc)		;7d74	0a		.
	call nz,00b00h		;7d75	c4 00 0b	. . .
	inc c			;7d78	0c		.
	add a,000h		;7d79	c6 00		. .
	add hl,bc		;7d7b	09		.
	ld a,(bc)		;7d7c	0a		.
	call nz,00b00h		;7d7d	c4 00 0b	. . .
	inc c			;7d80	0c		.
	defb 0edh ;next byte illegal after ed	;7d81	ed		.
	nop			;7d82	00		.
	dec c			;7d83	0d		.
	ld c,0cch		;7d84	0e cc		. .
	nop			;7d86	00		.
	dec c			;7d87	0d		.
	ld c,0d0h		;7d88	0e d0		. .
	nop			;7d8a	00		.
	rrca			;7d8b	0f		.
	djnz l7d5ah		;7d8c	10 cc		. .
	nop			;7d8e	00		.
	rrca			;7d8f	0f		.
	djnz l7d5ah		;7d90	10 c8		. .
	nop			;7d92	00		.
	ld bc,00000h		;7d93	01 00 00	. . .
	jr z,$+1		;7d96	28 ff		( .
	nop			;7d98	00		.
	rst 0			;7d99	c7		.
	nop			;7d9a	00		.
	ld bc,0c202h		;7d9b	01 02 c2	. . .
	nop			;7d9e	00		.
	ld bc,0c802h		;7d9f	01 02 c8	. . .
	nop			;7da2	00		.
	ld bc,0c202h		;7da3	01 02 c2	. . .
	nop			;7da6	00		.
	ld bc,0cc02h		;7da7	01 02 cc	. . .
	nop			;7daa	00		.
	inc bc			;7dab	03		.
	inc b			;7dac	04		.
	jp nz,00300h		;7dad	c2 00 03	. . .
	inc b			;7db0	04		.
	ret z			;7db1	c8		.
	nop			;7db2	00		.
	inc bc			;7db3	03		.
	inc b			;7db4	04		.
	jp nz,00300h		;7db5	c2 00 03	. . .
	inc b			;7db8	04		.
	rst 38h			;7db9	ff		.
	nop			;7dba	00		.
	rst 38h			;7dbb	ff		.
	nop			;7dbc	00		.
	ret z			;7dbd	c8		.
	nop			;7dbe	00		.
l7dbfh:
	nop			;7dbf	00		.
	jr nz,$+9		;7dc0	20 07		  .
	rra			;7dc2	1f		.
	inc a			;7dc3	3c		<
	ld a,b			;7dc4	78		x
	ld a,c			;7dc5	79		y
	ld sp,hl		;7dc6	f9		.
	ret m			;7dc7	f8		.
	call m,0fffeh		;7dc8	fc fe ff	. . .
	rst 38h			;7dcb	ff		.
	ld a,e			;7dcc	7b		{
	ld a,b			;7dcd	78		x
	inc a			;7dce	3c		<
	rra			;7dcf	1f		.
	rlca			;7dd0	07		.
	ret po			;7dd1	e0		.
	ret m			;7dd2	f8		.
	inc a			;7dd3	3c		<
	ld e,0deh		;7dd4	1e de		. .
	rst 38h			;7dd6	ff		.
	ld a,a			;7dd7	7f		.
	ccf			;7dd8	3f		?
	rra			;7dd9	1f		.
	adc a,a			;7dda	8f		.
	rst 8			;7ddb	cf		.
	adc a,01eh		;7ddc	ce 1e		. .
	inc a			;7dde	3c		<
	ret m			;7ddf	f8		.
	ret po			;7de0	e0		.
l7de1h:
	nop			;7de1	00		.
	and b			;7de2	a0		.
	nop			;7de3	00		.
	nop			;7de4	00		.
	nop			;7de5	00		.
	ld bc,00301h		;7de6	01 01 03	. . .
	inc bc			;7de9	03		.
	rlca			;7dea	07		.
	rlca			;7deb	07		.
	rrca			;7dec	0f		.
	rrca			;7ded	0f		.
	rra			;7dee	1f		.
	rra			;7def	1f		.
	ccf			;7df0	3f		?
	ccf			;7df1	3f		?
	nop			;7df2	00		.
	nop			;7df3	00		.
	nop			;7df4	00		.
	nop			;7df5	00		.
	add a,b			;7df6	80		.
	add a,b			;7df7	80		.
	ret nz			;7df8	c0		.
	ret nz			;7df9	c0		.
	ret po			;7dfa	e0		.
	ret po			;7dfb	e0		.
	ret p			;7dfc	f0		.
	ret p			;7dfd	f0		.
	ret m			;7dfe	f8		.
	ret m			;7dff	f8		.
l7e00h:
	call m,000fch		;7e00	fc fc 00	. . .
	nop			;7e03	00		.
	nop			;7e04	00		.
	ld h,b			;7e05	60		`
	ld a,b			;7e06	78		x
	ld a,(hl)		;7e07	7e		~
	ld a,a			;7e08	7f		.
	ld a,a			;7e09	7f		.
	ld a,a			;7e0a	7f		.
	ld a,a			;7e0b	7f		.
	ld a,a			;7e0c	7f		.
	ld a,a			;7e0d	7f		.
	ld a,(hl)		;7e0e	7e		~
	ld a,b			;7e0f	78		x
	ld h,b			;7e10	60		`
	nop			;7e11	00		.
	nop			;7e12	00		.
	nop			;7e13	00		.
	nop			;7e14	00		.
	nop			;7e15	00		.
	nop			;7e16	00		.
	nop			;7e17	00		.
	add a,b			;7e18	80		.
	ret po			;7e19	e0		.
	ret m			;7e1a	f8		.
	ret m			;7e1b	f8		.
	ret po			;7e1c	e0		.
	add a,b			;7e1d	80		.
	nop			;7e1e	00		.
	nop			;7e1f	00		.
	nop			;7e20	00		.
	nop			;7e21	00		.
	nop			;7e22	00		.
	nop			;7e23	00		.
	ccf			;7e24	3f		?
	ccf			;7e25	3f		?
	rra			;7e26	1f		.
	rra			;7e27	1f		.
	rrca			;7e28	0f		.
	rrca			;7e29	0f		.
	rlca			;7e2a	07		.
	rlca			;7e2b	07		.
	inc bc			;7e2c	03		.
	inc bc			;7e2d	03		.
	ld bc,00001h		;7e2e	01 01 00	. . .
	nop			;7e31	00		.
	nop			;7e32	00		.
	nop			;7e33	00		.
	call m,0f8fch		;7e34	fc fc f8	. . .
	ret m			;7e37	f8		.
	ret p			;7e38	f0		.
	ret p			;7e39	f0		.
	ret po			;7e3a	e0		.
	ret po			;7e3b	e0		.
	ret nz			;7e3c	c0		.
	ret nz			;7e3d	c0		.
	add a,b			;7e3e	80		.
	add a,b			;7e3f	80		.
	nop			;7e40	00		.
	nop			;7e41	00		.
	nop			;7e42	00		.
	nop			;7e43	00		.
	nop			;7e44	00		.
	nop			;7e45	00		.
	nop			;7e46	00		.
	nop			;7e47	00		.
	ld bc,01f07h		;7e48	01 07 1f	. . .
	rra			;7e4b	1f		.
	rlca			;7e4c	07		.
	ld bc,00000h		;7e4d	01 00 00	. . .
	nop			;7e50	00		.
	nop			;7e51	00		.
	nop			;7e52	00		.
	nop			;7e53	00		.
	nop			;7e54	00		.
	ld b,01eh		;7e55	06 1e		. .
	ld a,(hl)		;7e57	7e		~
	cp 0feh			;7e58	fe fe		. .
	cp 0feh			;7e5a	fe fe		. .
	cp 0feh			;7e5c	fe fe		. .
	ld a,(hl)		;7e5e	7e		~
	ld e,006h		;7e5f	1e 06		. .
	nop			;7e61	00		.
	nop			;7e62	00		.
	nop			;7e63	00		.
	rlca			;7e64	07		.
	rra			;7e65	1f		.
	ccf			;7e66	3f		?
	ccf			;7e67	3f		?
	ld a,a			;7e68	7f		.
	ld a,a			;7e69	7f		.
	ld a,a			;7e6a	7f		.
	ld a,a			;7e6b	7f		.
	ld a,a			;7e6c	7f		.
	ld a,a			;7e6d	7f		.
	ccf			;7e6e	3f		?
	ccf			;7e6f	3f		?
	rra			;7e70	1f		.
	rlca			;7e71	07		.
	nop			;7e72	00		.
	nop			;7e73	00		.
	ret po			;7e74	e0		.
	ret m			;7e75	f8		.
	call m,0fefch		;7e76	fc fc fe	. . .
	cp 0feh			;7e79	fe fe		. .
	cp 0feh			;7e7b	fe fe		. .
	cp 0fch			;7e7d	fe fc		. .
	call m,0e0f8h		;7e7f	fc f8 e0	. . .
	nop			;7e82	00		.
l7e83h:
	rra			;7e83	1f		.
	pop af			;7e84	f1		.
	ld l,c			;7e85	69		i
	sub (hl)		;7e86	96		.
	jp nz,0472ch		;7e87	c2 2c 47	. , G
	ld (hl),h		;7e8a	74		t
	ld h,(hl)		;7e8b	66		f
	call z,01144h		;7e8c	cc 44 11	. D .
	xor 0ffh		;7e8f	ee ff		. .
	xor d			;7e91	aa		.
	defb 0ddh,01eh,0feh ;illegal sequence	;7e92	dd 1e fe	. . .
	ld e,0feh		;7e95	1e fe		. .
	ld e,0feh		;7e97	1e fe		. .
	ld e,0feh		;7e99	1e fe		. .
	rra			;7e9b	1f		.
	pop af			;7e9c	f1		.
	rst 28h			;7e9d	ef		.
	cp 01fh			;7e9e	fe 1f		. .
	pop af			;7ea0	f1		.
	rst 28h			;7ea1	ef		.
	cp 069h			;7ea2	fe 69		. i
	sub (hl)		;7ea4	96		.
	adc a,c			;7ea5	89		.
	sbc a,b			;7ea6	98		.
	ld l,c			;7ea7	69		i
	sub (hl)		;7ea8	96		.
	adc a,c			;7ea9	89		.
	sbc a,b			;7eaa	98		.
	jp 0233ch		;7eab	c3 3c 23	. < #
	ld (03cc3h),a		;7eae	32 c3 3c	2 . <
	inc hl			;7eb1	23		#
	ld (l7447h),a		;7eb2	32 47 74	2 G t
	ld d,a			;7eb5	57		W
	ld (hl),l		;7eb6	75		u
	ld b,a			;7eb7	47		G
	ld (hl),h		;7eb8	74		t
	ld d,a			;7eb9	57		W
	ld (hl),l		;7eba	75		u
l7ebbh:
	ld d,d			;7ebb	52		R
	ld b,l			;7ebc	45		E
	ld b,d			;7ebd	42		B
	ld c,a			;7ebe	4f		O
	ld c,a			;7ebf	4f		O
	ld d,h			;7ec0	54		T
	ld c,c			;7ec1	49		I
	ld c,(hl)		;7ec2	4e		N
	ld b,a			;7ec3	47		G
	ld l,02eh		;7ec4	2e 2e		. .
	ld l,000h		;7ec6	2e 00		. .
l7ec8h:
	jp 0c3c3h		;7ec8	c3 c3 c3	. . .
	jp 0c3c3h		;7ecb	c3 c3 c3	. . .
	jp 0c3c3h		;7ece	c3 c3 c3	. . .
	jp 0c3c3h		;7ed1	c3 c3 c3	. . .
	jp 0c3c3h		;7ed4	c3 c3 c3	. . .
	jp 0c3c3h		;7ed7	c3 c3 c3	. . .
	jp 0c3c3h		;7eda	c3 c3 c3	. . .
	jp 0c3c3h		;7edd	c3 c3 c3	. . .
	jp 0c3c3h		;7ee0	c3 c3 c3	. . .
	jp 0c3c3h		;7ee3	c3 c3 c3	. . .
	jp 0c3c3h		;7ee6	c3 c3 c3	. . .
	jp 0c3c3h		;7ee9	c3 c3 c3	. . .
	jp 0c3c3h		;7eec	c3 c3 c3	. . .
	dec c			;7eef	0d		.
	ld a,(bc)		;7ef0	0a		.
	nop			;7ef1	00		.
l7ef2h:
	jr nz,l7f41h		;7ef2	20 4d		  M
	ld d,e			;7ef4	53		S
	ld e,b			;7ef5	58		X
	jr nz,l7f3ch		;7ef6	20 44		  D
	ld c,c			;7ef8	49		I
	ld b,c			;7ef9	41		A
	ld b,a			;7efa	47		G
	ld c,(hl)		;7efb	4e		N
	ld c,a			;7efc	4f		O
	ld d,e			;7efd	53		S
	ld d,h			;7efe	54		T
	ld c,c			;7eff	49		I
l7f00h:
	ld b,e			;7f00	43		C
l7f01h:
	ld d,e			;7f01	53		S
	jr nz,l7f7ah		;7f02	20 76		  v
	ld sp,0322eh		;7f04	31 2e 32	1 . 2
	ld l,030h		;7f07	2e 30		. 0
	dec c			;7f09	0d		.
	ld a,(bc)		;7f0a	0a		.
	nop			;7f0b	00		.
l7f0ch:
	dec c			;7f0c	0d		.
	ld a,(bc)		;7f0d	0a		.
	jr nz,$-48		;7f0e	20 ce		  .
	jr nz,l7f62h		;7f10	20 50		  P
	ld d,d			;7f12	52		R
	ld b,l			;7f13	45		E
	ld d,e			;7f14	53		S
	ld d,e			;7f15	53		S
	jr nz,$+69		;7f16	20 43		  C
	ld b,c			;7f18	41		A
	ld c,(hl)		;7f19	4e		N
	ld b,e			;7f1a	43		C
	ld b,l			;7f1b	45		E
	ld c,h			;7f1c	4c		L
	jr nz,l7f73h		;7f1d	20 54		  T
	ld c,a			;7f1f	4f		O
	jr nz,$+68		;7f20	20 42		  B
	ld b,c			;7f22	41		A
	ld b,e			;7f23	43		C
	ld c,e			;7f24	4b		K
	jr nz,$+86		;7f25	20 54		  T
	ld c,a			;7f27	4f		O
	jr nz,l7f7eh		;7f28	20 54		  T
	ld c,b			;7f2a	48		H
	ld b,l			;7f2b	45		E
	dec c			;7f2c	0d		.
	ld a,(bc)		;7f2d	0a		.
	jr nz,l7f50h		;7f2e	20 20		   
	jr nz,$+79		;7f30	20 4d		  M
	ld b,c			;7f32	41		A
	ld c,c			;7f33	49		I
	ld c,(hl)		;7f34	4e		N
	jr nz,l7f84h		;7f35	20 4d		  M
	ld b,l			;7f37	45		E
	ld c,(hl)		;7f38	4e		N
	ld d,l			;7f39	55		U
	ld l,00dh		;7f3a	2e 0d		. .
l7f3ch:
	ld a,(bc)		;7f3c	0a		.
	nop			;7f3d	00		.
l7f3eh:
	dec c			;7f3e	0d		.
l7f3fh:
	ld a,(bc)		;7f3f	0a		.
l7f40h:
	dec c			;7f40	0d		.
l7f41h:
	ld a,(bc)		;7f41	0a		.
	dec c			;7f42	0d		.
	ld a,(bc)		;7f43	0a		.
	jr nz,l7f96h		;7f44	20 50		  P
	ld d,d			;7f46	52		R
	ld b,l			;7f47	45		E
	ld d,e			;7f48	53		S
	ld d,e			;7f49	53		S
	jr nz,$+67		;7f4a	20 41		  A
	ld b,e			;7f4c	43		C
	ld b,e			;7f4d	43		C
	ld b,l			;7f4e	45		E
	ld d,b			;7f4f	50		P
l7f50h:
	ld d,h			;7f50	54		T
	jr nz,$+86		;7f51	20 54		  T
	ld c,a			;7f53	4f		O
	jr nz,l7fa9h		;7f54	20 53		  S
	ld d,h			;7f56	54		T
	ld b,c			;7f57	41		A
	ld d,d			;7f58	52		R
	ld d,h			;7f59	54		T
	jr nz,l7fb0h		;7f5a	20 54		  T
	ld c,b			;7f5c	48		H
	ld b,l			;7f5d	45		E
	jr nz,l7fb4h		;7f5e	20 54		  T
	ld b,l			;7f60	45		E
	ld d,e			;7f61	53		S
l7f62h:
	ld d,h			;7f62	54		T
	ld l,00dh		;7f63	2e 0d		. .
	ld a,(bc)		;7f65	0a		.
	nop			;7f66	00		.
l7f67h:
	dec c			;7f67	0d		.
	ld a,(bc)		;7f68	0a		.
	jr nz,$+82		;7f69	20 50		  P
	ld b,c			;7f6b	41		A
	ld b,a			;7f6c	47		G
	ld b,l			;7f6d	45		E
	jr nz,l7fa1h		;7f6e	20 31		  1
	jr nz,l7fc1h		;7f70	20 4f		  O
	ld b,(hl)		;7f72	46		F
l7f73h:
	jr nz,$+52		;7f73	20 32		  2
	dec c			;7f75	0d		.
	ld a,(bc)		;7f76	0a		.
	nop			;7f77	00		.
l7f78h:
	dec c			;7f78	0d		.
	ld a,(bc)		;7f79	0a		.
l7f7ah:
	jr nz,l7f9ch		;7f7a	20 20		   
	jr nz,$+51		;7f7c	20 31		  1
l7f7eh:
	ld l,020h		;7f7e	2e 20		.  
	ld d,e			;7f80	53		S
	ld b,e			;7f81	43		C
	ld d,d			;7f82	52		R
	ld b,l			;7f83	45		E
l7f84h:
	ld b,l			;7f84	45		E
	ld c,(hl)		;7f85	4e		N
	jr nz,l7fb8h		;7f86	20 30		  0
	dec c			;7f88	0d		.
	ld a,(bc)		;7f89	0a		.
	jr nz,l7fach		;7f8a	20 20		   
	jr nz,l7fc0h		;7f8c	20 32		  2
	ld l,020h		;7f8e	2e 20		.  
	ld d,e			;7f90	53		S
	ld b,e			;7f91	43		C
	ld d,d			;7f92	52		R
	ld b,l			;7f93	45		E
	ld b,l			;7f94	45		E
	ld c,(hl)		;7f95	4e		N
l7f96h:
	jr nz,l7fc9h		;7f96	20 31		  1
	dec c			;7f98	0d		.
	ld a,(bc)		;7f99	0a		.
	jr nz,l7fbch		;7f9a	20 20		   
l7f9ch:
	jr nz,l7fd1h		;7f9c	20 33		  3
	ld l,020h		;7f9e	2e 20		.  
	ld d,e			;7fa0	53		S
l7fa1h:
	ld b,e			;7fa1	43		C
	ld d,d			;7fa2	52		R
	ld b,l			;7fa3	45		E
	ld b,l			;7fa4	45		E
	ld c,(hl)		;7fa5	4e		N
	jr nz,l7fdah		;7fa6	20 32		  2
	dec c			;7fa8	0d		.
l7fa9h:
	ld a,(bc)		;7fa9	0a		.
	jr nz,$+34		;7faa	20 20		   
l7fach:
	jr nz,l7fe2h		;7fac	20 34		  4
	ld l,020h		;7fae	2e 20		.  
l7fb0h:
	ld d,e			;7fb0	53		S
	ld b,e			;7fb1	43		C
	ld d,d			;7fb2	52		R
	ld b,l			;7fb3	45		E
l7fb4h:
	ld b,l			;7fb4	45		E
	ld c,(hl)		;7fb5	4e		N
	jr nz,l7febh		;7fb6	20 33		  3
l7fb8h:
	dec c			;7fb8	0d		.
	ld a,(bc)		;7fb9	0a		.
	jr nz,l7fdch		;7fba	20 20		   
l7fbch:
	jr nz,l7ff3h		;7fbc	20 35		  5
	ld l,020h		;7fbe	2e 20		.  
l7fc0h:
	ld d,e			;7fc0	53		S
l7fc1h:
	ld d,b			;7fc1	50		P
	ld d,d			;7fc2	52		R
l7fc3h:
	ld c,c			;7fc3	49		I
	ld d,h			;7fc4	54		T
	ld b,l			;7fc5	45		E
	ld d,e			;7fc6	53		S
l7fc7h:
	dec c			;7fc7	0d		.
l7fc8h:
	ld a,(bc)		;7fc8	0a		.
l7fc9h:
	jr nz,l7febh		;7fc9	20 20		   
	jr nz,l8003h		;7fcb	20 36		  6
	ld l,020h		;7fcd	2e 20		.  
	ld c,l			;7fcf	4d		M
	ld c,a			;7fd0	4f		O
l7fd1h:
	ld c,(hl)		;7fd1	4e		N
	ld c,c			;7fd2	49		I
	ld d,h			;7fd3	54		T
	ld c,a			;7fd4	4f		O
	ld d,d			;7fd5	52		R
	jr nz,l801bh		;7fd6	20 43		  C
	ld c,a			;7fd8	4f		O
	ld c,h			;7fd9	4c		L
l7fdah:
	ld c,a			;7fda	4f		O
	ld d,d			;7fdb	52		R
l7fdch:
	dec c			;7fdc	0d		.
	ld a,(bc)		;7fdd	0a		.
	jr nz,l8000h		;7fde	20 20		   
	jr nz,l801bh		;7fe0	20 39		  9
l7fe2h:
	ld l,020h		;7fe2	2e 20		.  
	ld d,d			;7fe4	52		R
	ld b,l			;7fe5	45		E
	ld b,d			;7fe6	42		B
	ld c,a			;7fe7	4f		O
	ld c,a			;7fe8	4f		O
	ld d,h			;7fe9	54		T
	dec c			;7fea	0d		.
l7febh:
	ld a,(bc)		;7feb	0a		.
	jr nz,l800eh		;7fec	20 20		   
	jr nz,$+50		;7fee	20 30		  0
	ld l,020h		;7ff0	2e 20		.  
	ld c,(hl)		;7ff2	4e		N
l7ff3h:
	ld b,l			;7ff3	45		E
	ld e,b			;7ff4	58		X
	ld d,h			;7ff5	54		T
	jr nz,l8036h		;7ff6	20 3e		  >
	ld a,00dh		;7ff8	3e 0d		> .
	ld a,(bc)		;7ffa	0a		.
	nop			;7ffb	00		.
l7ffch:
	dec c			;7ffc	0d		.
	ld a,(bc)		;7ffd	0a		.
	jr nz,l8050h		;7ffe	20 50		  P
l8000h:
	ld b,c			;8000	41		A
	ld b,a			;8001	47		G
	ld b,l			;8002	45		E
l8003h:
	jr nz,l8037h		;8003	20 32		  2
	jr nz,l8056h		;8005	20 4f		  O
	ld b,(hl)		;8007	46		F
	jr nz,l803ch		;8008	20 32		  2
	dec c			;800a	0d		.
	ld a,(bc)		;800b	0a		.
	nop			;800c	00		.
l800dh:
	dec c			;800d	0d		.
l800eh:
	ld a,(bc)		;800e	0a		.
	jr nz,l8031h		;800f	20 20		   
	jr nz,l8044h		;8011	20 31		  1
	ld l,020h		;8013	2e 20		.  
	ld c,e			;8015	4b		K
	ld b,l			;8016	45		E
	ld e,c			;8017	59		Y
	ld b,d			;8018	42		B
	ld c,a			;8019	4f		O
	ld b,c			;801a	41		A
l801bh:
	ld d,d			;801b	52		R
	ld b,h			;801c	44		D
	dec c			;801d	0d		.
	ld a,(bc)		;801e	0a		.
	jr nz,l8041h		;801f	20 20		   
	jr nz,l8055h		;8021	20 32		  2
	ld l,020h		;8023	2e 20		.  
	ld c,d			;8025	4a		J
	ld c,a			;8026	4f		O
	ld e,c			;8027	59		Y
	ld d,e			;8028	53		S
	ld d,h			;8029	54		T
	ld c,c			;802a	49		I
	ld b,e			;802b	43		C
	ld c,e			;802c	4b		K
	dec c			;802d	0d		.
	ld a,(bc)		;802e	0a		.
	jr nz,$+34		;802f	20 20		   
l8031h:
	jr nz,l8066h		;8031	20 33		  3
	ld l,020h		;8033	2e 20		.  
	ld d,b			;8035	50		P
l8036h:
	ld d,e			;8036	53		S
l8037h:
	ld b,a			;8037	47		G
	dec c			;8038	0d		.
	ld a,(bc)		;8039	0a		.
	jr nz,l805ch		;803a	20 20		   
l803ch:
	jr nz,l8072h		;803c	20 34		  4
	ld l,020h		;803e	2e 20		.  
	ld c,l			;8040	4d		M
l8041h:
	ld c,c			;8041	49		I
	ld e,b			;8042	58		X
	ld b,l			;8043	45		E
l8044h:
	ld b,h			;8044	44		D
	jr nz,l8094h		;8045	20 4d		  M
	ld c,a			;8047	4f		O
	ld b,h			;8048	44		D
	ld b,l			;8049	45		E
	dec c			;804a	0d		.
	ld a,(bc)		;804b	0a		.
	jr nz,l806eh		;804c	20 20		   
	jr nz,$+55		;804e	20 35		  5
l8050h:
	ld l,020h		;8050	2e 20		.  
	ld d,e			;8052	53		S
	ld e,c			;8053	59		Y
	ld d,e			;8054	53		S
l8055h:
	ld d,h			;8055	54		T
l8056h:
	ld b,l			;8056	45		E
	ld c,l			;8057	4d		M
	jr nz,$+75		;8058	20 49		  I
	ld c,(hl)		;805a	4e		N
	ld b,(hl)		;805b	46		F
l805ch:
	ld c,a			;805c	4f		O
	jr nz,l806ch		;805d	20 0d		  .
	ld a,(bc)		;805f	0a		.
	jr nz,l8082h		;8060	20 20		   
	jr nz,$+56		;8062	20 36		  6
	ld l,020h		;8064	2e 20		.  
l8066h:
	ld d,d			;8066	52		R
	ld b,c			;8067	41		A
	ld c,l			;8068	4d		M
	jr nz,l80b7h		;8069	20 4c		  L
	ld b,c			;806b	41		A
l806ch:
	ld e,c			;806c	59		Y
	ld c,a			;806d	4f		O
l806eh:
	ld d,l			;806e	55		U
	ld d,h			;806f	54		T
	dec c			;8070	0d		.
	ld a,(bc)		;8071	0a		.
l8072h:
	jr nz,l8094h		;8072	20 20		   
	jr nz,l80afh		;8074	20 39		  9
	ld l,020h		;8076	2e 20		.  
	ld d,d			;8078	52		R
	ld b,l			;8079	45		E
	ld b,d			;807a	42		B
	ld c,a			;807b	4f		O
	ld c,a			;807c	4f		O
	ld d,h			;807d	54		T
	dec c			;807e	0d		.
	ld a,(bc)		;807f	0a		.
	jr nz,l80a2h		;8080	20 20		   
l8082h:
	jr nz,l80b4h		;8082	20 30		  0
	ld l,020h		;8084	2e 20		.  
	ld b,d			;8086	42		B
	ld b,c			;8087	41		A
	ld b,e			;8088	43		C
	ld c,e			;8089	4b		K
	jr nz,$+62		;808a	20 3c		  <
	inc a			;808c	3c		<
	dec c			;808d	0d		.
	ld a,(bc)		;808e	0a		.
	nop			;808f	00		.
l8090h:
	dec c			;8090	0d		.
	ld a,(bc)		;8091	0a		.
	jr nz,l80d5h		;8092	20 41		  A
l8094h:
	ld b,e			;8094	43		C
	ld b,e			;8095	43		C
	ld b,l			;8096	45		E
	ld d,b			;8097	50		P
	ld d,h			;8098	54		T
	ld a,(05320h)		;8099	3a 20 53	:   S
	ld d,b			;809c	50		P
	ld b,c			;809d	41		A
	ld b,e			;809e	43		C
	ld b,l			;809f	45		E
	jr nz,$+49		;80a0	20 2f		  /
l80a2h:
	jr nz,l80e6h		;80a2	20 42		  B
	ld d,l			;80a4	55		U
	ld d,h			;80a5	54		T
	ld d,h			;80a6	54		T
	ld c,a			;80a7	4f		O
	ld c,(hl)		;80a8	4e		N
	jr nz,l80dch		;80a9	20 31		  1
	dec c			;80ab	0d		.
	ld a,(bc)		;80ac	0a		.
	jr nz,l80f2h		;80ad	20 43		  C
l80afh:
	ld b,c			;80af	41		A
	ld c,(hl)		;80b0	4e		N
	ld b,e			;80b1	43		C
	ld b,l			;80b2	45		E
	ld c,h			;80b3	4c		L
l80b4h:
	ld a,(04520h)		;80b4	3a 20 45	:   E
l80b7h:
	ld d,e			;80b7	53		S
	ld b,e			;80b8	43		C
	jr nz,l80eah		;80b9	20 2f		  /
	jr nz,$+68		;80bb	20 42		  B
	ld d,l			;80bd	55		U
	ld d,h			;80be	54		T
	ld d,h			;80bf	54		T
	ld c,a			;80c0	4f		O
	ld c,(hl)		;80c1	4e		N
	jr nz,l80f6h		;80c2	20 32		  2
	dec c			;80c4	0d		.
	ld a,(bc)		;80c5	0a		.
	nop			;80c6	00		.
l80c7h:
	jr nz,l80f1h		;80c7	20 28		  (
	ld h,e			;80c9	63		c
	ld h,e			;80ca	63		c
	add hl,hl		;80cb	29		)
	jr nz,l8100h		;80cc	20 32		  2
	jr nc,l8101h		;80ce	30 31		0 1
	jr c,$+47		;80d0	38 2d		8 -
	ld (03230h),a		;80d2	32 30 32	2 0 2
l80d5h:
	jr nc,l80f7h		;80d5	30 20		0  
	ld b,d			;80d7	42		B
	ld e,c			;80d8	59		Y
	jr nz,l811eh		;80d9	20 43		  C
	ld b,l			;80db	45		E
l80dch:
	ld d,e			;80dc	53		S
	ld b,c			;80dd	41		A
	ld d,d			;80de	52		R
	jr nz,$+84		;80df	20 52		  R
	ld c,c			;80e1	49		I
	ld c,(hl)		;80e2	4e		N
	ld b,e			;80e3	43		C
	ld c,a			;80e4	4f		O
	ld c,(hl)		;80e5	4e		N
l80e6h:
	dec c			;80e6	0d		.
	ld a,(bc)		;80e7	0a		.
	jr nz,l8152h		;80e8	20 68		  h
l80eah:
	ld (hl),h		;80ea	74		t
	ld (hl),h		;80eb	74		t
	ld (hl),b		;80ec	70		p
	ld (hl),e		;80ed	73		s
	ld a,(02f2fh)		;80ee	3a 2f 2f	: / /
l80f1h:
	ld l,(hl)		;80f1	6e		n
l80f2h:
	ld l,c			;80f2	69		i
	ld h,a			;80f3	67		g
	ld l,b			;80f4	68		h
	ld (hl),h		;80f5	74		t
l80f6h:
	ld h,(hl)		;80f6	66		f
l80f7h:
	ld l,a			;80f7	6f		o
	ld a,b			;80f8	78		x
	ld h,c			;80f9	61		a
	ld l,(hl)		;80fa	6e		n
	ld h,h			;80fb	64		d
	ld h,e			;80fc	63		c
	ld l,a			;80fd	6f		o
	ld l,063h		;80fe	2e 63		. c
l8100h:
	ld l,a			;8100	6f		o
l8101h:
	ld l,l			;8101	6d		m
	cpl			;8102	2f		/
	dec c			;8103	0d		.
	ld a,(bc)		;8104	0a		.
	nop			;8105	00		.
l8106h:
	ret nz			;8106	c0		.
	nop			;8107	00		.
l8108h:
	jr nz,l810ah		;8108	20 00		  .
l810ah:
	dec c			;810a	0d		.
	ld a,(bc)		;810b	0a		.
	jr nz,l8161h		;810c	20 53		  S
	ld b,e			;810e	43		C
	ld d,d			;810f	52		R
	ld b,l			;8110	45		E
	ld b,l			;8111	45		E
	ld c,(hl)		;8112	4e		N
	jr nz,$+50		;8113	20 30		  0
	jr nz,l816bh		;8115	20 54		  T
	ld b,l			;8117	45		E
	ld d,e			;8118	53		S
	ld d,h			;8119	54		T
	dec c			;811a	0d		.
	ld a,(bc)		;811b	0a		.
	nop			;811c	00		.
l811dh:
	dec c			;811d	0d		.
l811eh:
	ld a,(bc)		;811e	0a		.
	jr nz,$-48		;811f	20 ce		  .
	jr nz,$+82		;8121	20 50		  P
	ld d,d			;8123	52		R
l8124h:
	ld b,l			;8124	45		E
	ld d,e			;8125	53		S
	ld d,e			;8126	53		S
	jr nz,l817bh		;8127	20 52		  R
	ld c,c			;8129	49		I
	ld b,a			;812a	47		G
	ld c,b			;812b	48		H
	ld d,h			;812c	54		T
	cpl			;812d	2f		/
	ld c,h			;812e	4c		L
	ld b,l			;812f	45		E
	ld b,(hl)		;8130	46		F
	ld d,h			;8131	54		T
	jr nz,$+86		;8132	20 54		  T
	ld c,a			;8134	4f		O
	jr nz,l817ah		;8135	20 43		  C
	ld c,b			;8137	48		H
	ld b,c			;8138	41		A
	ld c,(hl)		;8139	4e		N
	ld b,a			;813a	47		G
	ld b,l			;813b	45		E
	dec c			;813c	0d		.
	ld a,(bc)		;813d	0a		.
	jr nz,l8160h		;813e	20 20		   
	jr nz,l8196h		;8140	20 54		  T
	ld c,b			;8142	48		H
	ld b,l			;8143	45		E
	jr nz,l819ah		;8144	20 54		  T
	ld b,l			;8146	45		E
	ld e,b			;8147	58		X
	ld d,h			;8148	54		T
	jr nz,l818eh		;8149	20 43		  C
	ld c,a			;814b	4f		O
	ld c,h			;814c	4c		L
	ld c,a			;814d	4f		O
	ld d,d			;814e	52		R
	ld l,00dh		;814f	2e 0d		. .
	ld a,(bc)		;8151	0a		.
l8152h:
	dec c			;8152	0d		.
	ld a,(bc)		;8153	0a		.
	jr nz,l8124h		;8154	20 ce		  .
	jr nz,l81a8h		;8156	20 50		  P
	ld d,d			;8158	52		R
	ld b,l			;8159	45		E
	ld d,e			;815a	53		S
	ld d,e			;815b	53		S
l815ch:
	jr nz,l81b3h		;815c	20 55		  U
	ld d,b			;815e	50		P
	cpl			;815f	2f		/
l8160h:
	ld b,h			;8160	44		D
l8161h:
	ld c,a			;8161	4f		O
	ld d,a			;8162	57		W
	ld c,(hl)		;8163	4e		N
	jr nz,l81bah		;8164	20 54		  T
	ld c,a			;8166	4f		O
	jr nz,l81ach		;8167	20 43		  C
	ld c,b			;8169	48		H
	ld b,c			;816a	41		A
l816bh:
	ld c,(hl)		;816b	4e		N
	ld b,a			;816c	47		G
	ld b,l			;816d	45		E
	dec c			;816e	0d		.
	ld a,(bc)		;816f	0a		.
	jr nz,l8192h		;8170	20 20		   
	jr nz,l81c8h		;8172	20 54		  T
	ld c,b			;8174	48		H
	ld b,l			;8175	45		E
	jr nz,l81bah		;8176	20 42		  B
	ld b,c			;8178	41		A
	ld b,e			;8179	43		C
l817ah:
	ld c,e			;817a	4b		K
l817bh:
	ld b,a			;817b	47		G
	ld d,d			;817c	52		R
	ld c,a			;817d	4f		O
	ld d,l			;817e	55		U
	ld c,(hl)		;817f	4e		N
	ld b,h			;8180	44		D
	jr nz,l81c6h		;8181	20 43		  C
	ld c,a			;8183	4f		O
	ld c,h			;8184	4c		L
	ld c,a			;8185	4f		O
	ld d,d			;8186	52		R
	ld l,00dh		;8187	2e 0d		. .
	ld a,(bc)		;8189	0a		.
	dec c			;818a	0d		.
	ld a,(bc)		;818b	0a		.
	jr nz,l815ch		;818c	20 ce		  .
l818eh:
	jr nz,l81e0h		;818e	20 50		  P
	ld d,d			;8190	52		R
	ld b,l			;8191	45		E
l8192h:
	ld d,e			;8192	53		S
	ld d,e			;8193	53		S
	jr nz,l81d7h		;8194	20 41		  A
l8196h:
	ld b,e			;8196	43		C
	ld b,e			;8197	43		C
l8198h:
	ld b,l			;8198	45		E
	ld d,b			;8199	50		P
l819ah:
	ld d,h			;819a	54		T
	jr nz,l81f1h		;819b	20 54		  T
	ld c,a			;819d	4f		O
	jr nz,l81f2h		;819e	20 52		  R
	ld b,l			;81a0	45		E
	ld d,e			;81a1	53		S
	ld d,h			;81a2	54		T
	ld c,a			;81a3	4f		O
	ld d,d			;81a4	52		R
	ld b,l			;81a5	45		E
	jr nz,l81ech		;81a6	20 44		  D
l81a8h:
	ld b,l			;81a8	45		E
	ld b,(hl)		;81a9	46		F
	ld b,c			;81aa	41		A
	ld d,l			;81ab	55		U
l81ach:
	ld c,h			;81ac	4c		L
	ld d,h			;81ad	54		T
	ld d,e			;81ae	53		S
	ld l,00dh		;81af	2e 0d		. .
	ld a,(bc)		;81b1	0a		.
	nop			;81b2	00		.
l81b3h:
	dec c			;81b3	0d		.
	ld a,(bc)		;81b4	0a		.
	jr nz,l820ah		;81b5	20 53		  S
	ld b,e			;81b7	43		C
	ld d,d			;81b8	52		R
	ld b,l			;81b9	45		E
l81bah:
	ld b,l			;81ba	45		E
	ld c,(hl)		;81bb	4e		N
	jr nz,l81efh		;81bc	20 31		  1
	jr nz,l8214h		;81be	20 54		  T
	ld b,l			;81c0	45		E
	ld d,e			;81c1	53		S
	ld d,h			;81c2	54		T
	dec c			;81c3	0d		.
	ld a,(bc)		;81c4	0a		.
	nop			;81c5	00		.
l81c6h:
	dec c			;81c6	0d		.
	ld a,(bc)		;81c7	0a		.
l81c8h:
	jr nz,l8198h		;81c8	20 ce		  .
	jr nz,$+82		;81ca	20 50		  P
	ld d,d			;81cc	52		R
l81cdh:
	ld b,l			;81cd	45		E
	ld d,e			;81ce	53		S
	ld d,e			;81cf	53		S
	jr nz,l8224h		;81d0	20 52		  R
	ld c,c			;81d2	49		I
	ld b,a			;81d3	47		G
	ld c,b			;81d4	48		H
	ld d,h			;81d5	54		T
	cpl			;81d6	2f		/
l81d7h:
	ld c,h			;81d7	4c		L
	ld b,l			;81d8	45		E
	ld b,(hl)		;81d9	46		F
	ld d,h			;81da	54		T
	jr nz,$+86		;81db	20 54		  T
	ld c,a			;81dd	4f		O
	jr nz,l8223h		;81de	20 43		  C
l81e0h:
	ld c,b			;81e0	48		H
	ld b,c			;81e1	41		A
	ld c,(hl)		;81e2	4e		N
	ld b,a			;81e3	47		G
	ld b,l			;81e4	45		E
	dec c			;81e5	0d		.
	ld a,(bc)		;81e6	0a		.
	jr nz,l8209h		;81e7	20 20		   
	jr nz,l823fh		;81e9	20 54		  T
	ld c,b			;81eb	48		H
l81ech:
	ld b,l			;81ec	45		E
	jr nz,l8243h		;81ed	20 54		  T
l81efh:
	ld b,l			;81ef	45		E
	ld e,b			;81f0	58		X
l81f1h:
	ld d,h			;81f1	54		T
l81f2h:
	jr nz,l8237h		;81f2	20 43		  C
	ld c,a			;81f4	4f		O
	ld c,h			;81f5	4c		L
	ld c,a			;81f6	4f		O
	ld d,d			;81f7	52		R
	ld l,00dh		;81f8	2e 0d		. .
	ld a,(bc)		;81fa	0a		.
	dec c			;81fb	0d		.
	ld a,(bc)		;81fc	0a		.
	jr nz,l81cdh		;81fd	20 ce		  .
	jr nz,l8251h		;81ff	20 50		  P
	ld d,d			;8201	52		R
	ld b,l			;8202	45		E
	ld d,e			;8203	53		S
	ld d,e			;8204	53		S
l8205h:
	jr nz,l825ch		;8205	20 55		  U
	ld d,b			;8207	50		P
	cpl			;8208	2f		/
l8209h:
	ld b,h			;8209	44		D
l820ah:
	ld c,a			;820a	4f		O
	ld d,a			;820b	57		W
	ld c,(hl)		;820c	4e		N
	jr nz,l8263h		;820d	20 54		  T
	ld c,a			;820f	4f		O
	jr nz,$+69		;8210	20 43		  C
	ld c,b			;8212	48		H
	ld b,c			;8213	41		A
l8214h:
	ld c,(hl)		;8214	4e		N
	ld b,a			;8215	47		G
	ld b,l			;8216	45		E
	dec c			;8217	0d		.
	ld a,(bc)		;8218	0a		.
	jr nz,l823bh		;8219	20 20		   
	jr nz,$+86		;821b	20 54		  T
	ld c,b			;821d	48		H
	ld b,l			;821e	45		E
	jr nz,l8263h		;821f	20 42		  B
	ld b,c			;8221	41		A
	ld b,e			;8222	43		C
l8223h:
	ld c,e			;8223	4b		K
l8224h:
	ld b,a			;8224	47		G
	ld d,d			;8225	52		R
	ld c,a			;8226	4f		O
	ld d,l			;8227	55		U
	ld c,(hl)		;8228	4e		N
	ld b,h			;8229	44		D
	jr nz,l826fh		;822a	20 43		  C
	ld c,a			;822c	4f		O
	ld c,h			;822d	4c		L
	ld c,a			;822e	4f		O
	ld d,d			;822f	52		R
	ld l,00dh		;8230	2e 0d		. .
	ld a,(bc)		;8232	0a		.
	dec c			;8233	0d		.
	ld a,(bc)		;8234	0a		.
	jr nz,l8205h		;8235	20 ce		  .
l8237h:
	jr nz,l8289h		;8237	20 50		  P
	ld d,d			;8239	52		R
	ld b,l			;823a	45		E
l823bh:
	ld d,e			;823b	53		S
	ld d,e			;823c	53		S
	jr nz,l8280h		;823d	20 41		  A
l823fh:
	ld b,e			;823f	43		C
	ld b,e			;8240	43		C
	ld b,l			;8241	45		E
	ld d,b			;8242	50		P
l8243h:
	ld d,h			;8243	54		T
	jr nz,l829ah		;8244	20 54		  T
	ld c,a			;8246	4f		O
	jr nz,l828ch		;8247	20 43		  C
	ld c,b			;8249	48		H
	ld b,c			;824a	41		A
	ld c,(hl)		;824b	4e		N
l824ch:
	ld b,a			;824c	47		G
	ld b,l			;824d	45		E
	jr nz,l82a4h		;824e	20 54		  T
	ld c,b			;8250	48		H
l8251h:
	ld b,l			;8251	45		E
	dec c			;8252	0d		.
	ld a,(bc)		;8253	0a		.
	jr nz,l8276h		;8254	20 20		   
	jr nz,l829ah		;8256	20 42		  B
	ld c,a			;8258	4f		O
	ld d,d			;8259	52		R
	ld b,h			;825a	44		D
	ld b,l			;825b	45		E
l825ch:
	ld d,d			;825c	52		R
	jr nz,$+69		;825d	20 43		  C
	ld c,a			;825f	4f		O
	ld c,h			;8260	4c		L
	ld c,a			;8261	4f		O
	ld d,d			;8262	52		R
l8263h:
	ld l,00dh		;8263	2e 0d		. .
	ld a,(bc)		;8265	0a		.
	nop			;8266	00		.
l8267h:
	dec c			;8267	0d		.
	ld a,(bc)		;8268	0a		.
	jr nz,l82beh		;8269	20 53		  S
	ld b,e			;826b	43		C
	ld d,d			;826c	52		R
	ld b,l			;826d	45		E
	ld b,l			;826e	45		E
l826fh:
	ld c,(hl)		;826f	4e		N
	jr nz,l82a4h		;8270	20 32		  2
	jr nz,l82c8h		;8272	20 54		  T
	ld b,l			;8274	45		E
	ld d,e			;8275	53		S
l8276h:
	ld d,h			;8276	54		T
	dec c			;8277	0d		.
	ld a,(bc)		;8278	0a		.
	nop			;8279	00		.
l827ah:
	dec c			;827a	0d		.
	ld a,(bc)		;827b	0a		.
l827ch:
	jr nz,l824ch		;827c	20 ce		  .
	jr nz,l82d0h		;827e	20 50		  P
l8280h:
	ld d,d			;8280	52		R
	ld b,l			;8281	45		E
	ld d,e			;8282	53		S
	ld d,e			;8283	53		S
	jr nz,l82d8h		;8284	20 52		  R
	ld c,c			;8286	49		I
	ld b,a			;8287	47		G
	ld c,b			;8288	48		H
l8289h:
	ld d,h			;8289	54		T
	cpl			;828a	2f		/
	ld c,h			;828b	4c		L
l828ch:
	ld b,l			;828c	45		E
	ld b,(hl)		;828d	46		F
	ld d,h			;828e	54		T
	jr nz,l82e5h		;828f	20 54		  T
	ld c,a			;8291	4f		O
	jr nz,l82d7h		;8292	20 43		  C
	ld c,b			;8294	48		H
	ld b,c			;8295	41		A
	ld c,(hl)		;8296	4e		N
	ld b,a			;8297	47		G
	ld b,l			;8298	45		E
	dec c			;8299	0d		.
l829ah:
	ld a,(bc)		;829a	0a		.
	jr nz,$+34		;829b	20 20		   
	jr nz,l82f3h		;829d	20 54		  T
	ld c,b			;829f	48		H
	ld b,l			;82a0	45		E
	jr nz,l82ech		;82a1	20 49		  I
	ld c,l			;82a3	4d		M
l82a4h:
	ld b,c			;82a4	41		A
	ld b,a			;82a5	47		G
	ld b,l			;82a6	45		E
	ld l,00dh		;82a7	2e 0d		. .
	ld a,(bc)		;82a9	0a		.
	dec c			;82aa	0d		.
	ld a,(bc)		;82ab	0a		.
	jr nz,l827ch		;82ac	20 ce		  .
	jr nz,l8300h		;82ae	20 50		  P
	ld d,d			;82b0	52		R
	ld b,l			;82b1	45		E
	ld d,e			;82b2	53		S
	ld d,e			;82b3	53		S
	jr nz,$+87		;82b4	20 55		  U
	ld d,b			;82b6	50		P
	cpl			;82b7	2f		/
	ld b,h			;82b8	44		D
	ld c,a			;82b9	4f		O
	ld d,a			;82ba	57		W
	ld c,(hl)		;82bb	4e		N
	jr nz,l8312h		;82bc	20 54		  T
l82beh:
	ld c,a			;82be	4f		O
	jr nz,l8304h		;82bf	20 43		  C
	ld c,b			;82c1	48		H
	ld b,c			;82c2	41		A
	ld c,(hl)		;82c3	4e		N
l82c4h:
	ld b,a			;82c4	47		G
	ld b,l			;82c5	45		E
	jr nz,l831ch		;82c6	20 54		  T
l82c8h:
	ld c,b			;82c8	48		H
	ld b,l			;82c9	45		E
	dec c			;82ca	0d		.
	ld a,(bc)		;82cb	0a		.
	jr nz,l82eeh		;82cc	20 20		   
	jr nz,l8312h		;82ce	20 42		  B
l82d0h:
	ld c,a			;82d0	4f		O
	ld d,d			;82d1	52		R
	ld b,h			;82d2	44		D
	ld b,l			;82d3	45		E
	ld d,d			;82d4	52		R
	jr nz,$+69		;82d5	20 43		  C
l82d7h:
	ld c,a			;82d7	4f		O
l82d8h:
	ld c,h			;82d8	4c		L
	ld c,a			;82d9	4f		O
	ld d,d			;82da	52		R
	ld l,00dh		;82db	2e 0d		. .
	ld a,(bc)		;82dd	0a		.
	nop			;82de	00		.
l82dfh:
	dec c			;82df	0d		.
	ld a,(bc)		;82e0	0a		.
	jr nz,l8336h		;82e1	20 53		  S
	ld b,e			;82e3	43		C
	ld d,d			;82e4	52		R
l82e5h:
	ld b,l			;82e5	45		E
	ld b,l			;82e6	45		E
	ld c,(hl)		;82e7	4e		N
	jr nz,l831dh		;82e8	20 33		  3
	jr nz,l8340h		;82ea	20 54		  T
l82ech:
	ld b,l			;82ec	45		E
	ld d,e			;82ed	53		S
l82eeh:
	ld d,h			;82ee	54		T
	dec c			;82ef	0d		.
	ld a,(bc)		;82f0	0a		.
	nop			;82f1	00		.
l82f2h:
	dec c			;82f2	0d		.
l82f3h:
	ld a,(bc)		;82f3	0a		.
	jr nz,l82c4h		;82f4	20 ce		  .
l82f6h:
	jr nz,l8348h		;82f6	20 50		  P
	ld d,d			;82f8	52		R
	ld b,l			;82f9	45		E
	ld d,e			;82fa	53		S
	ld d,e			;82fb	53		S
	jr nz,$+84		;82fc	20 52		  R
	ld c,c			;82fe	49		I
	ld b,a			;82ff	47		G
l8300h:
	ld c,b			;8300	48		H
	ld d,h			;8301	54		T
	cpl			;8302	2f		/
	ld c,h			;8303	4c		L
l8304h:
	ld b,l			;8304	45		E
	ld b,(hl)		;8305	46		F
	ld d,h			;8306	54		T
	jr nz,l835dh		;8307	20 54		  T
	ld c,a			;8309	4f		O
	jr nz,l834fh		;830a	20 43		  C
	ld c,b			;830c	48		H
	ld b,c			;830d	41		A
	ld c,(hl)		;830e	4e		N
	ld b,a			;830f	47		G
	ld b,l			;8310	45		E
	dec c			;8311	0d		.
l8312h:
	ld a,(bc)		;8312	0a		.
	jr nz,l8335h		;8313	20 20		   
	jr nz,$+86		;8315	20 54		  T
	ld c,b			;8317	48		H
	ld b,l			;8318	45		E
	jr nz,$+82		;8319	20 50		  P
	ld b,c			;831b	41		A
l831ch:
	ld d,h			;831c	54		T
l831dh:
	ld d,h			;831d	54		T
	ld b,l			;831e	45		E
	ld d,d			;831f	52		R
	ld c,(hl)		;8320	4e		N
	ld l,00dh		;8321	2e 0d		. .
	ld a,(bc)		;8323	0a		.
	dec c			;8324	0d		.
	ld a,(bc)		;8325	0a		.
	jr nz,l82f6h		;8326	20 ce		  .
	jr nz,l837ah		;8328	20 50		  P
	ld d,d			;832a	52		R
	ld b,l			;832b	45		E
	ld d,e			;832c	53		S
	ld d,e			;832d	53		S
	jr nz,l8385h		;832e	20 55		  U
	ld d,b			;8330	50		P
	cpl			;8331	2f		/
	ld b,h			;8332	44		D
	ld c,a			;8333	4f		O
	ld d,a			;8334	57		W
l8335h:
	ld c,(hl)		;8335	4e		N
l8336h:
	jr nz,l838ch		;8336	20 54		  T
	ld c,a			;8338	4f		O
	jr nz,l837eh		;8339	20 43		  C
	ld c,b			;833b	48		H
	ld b,c			;833c	41		A
	ld c,(hl)		;833d	4e		N
	ld b,a			;833e	47		G
	ld b,l			;833f	45		E
l8340h:
	jr nz,l8396h		;8340	20 54		  T
	ld c,b			;8342	48		H
	ld b,l			;8343	45		E
	dec c			;8344	0d		.
	ld a,(bc)		;8345	0a		.
	jr nz,l8368h		;8346	20 20		   
l8348h:
	jr nz,l838ch		;8348	20 42		  B
l834ah:
	ld c,a			;834a	4f		O
	ld d,d			;834b	52		R
	ld b,h			;834c	44		D
	ld b,l			;834d	45		E
	ld d,d			;834e	52		R
l834fh:
	jr nz,l8394h		;834f	20 43		  C
	ld c,a			;8351	4f		O
	ld c,h			;8352	4c		L
	ld c,a			;8353	4f		O
	ld d,d			;8354	52		R
	ld l,00dh		;8355	2e 0d		. .
	ld a,(bc)		;8357	0a		.
	nop			;8358	00		.
l8359h:
	dec c			;8359	0d		.
	ld a,(bc)		;835a	0a		.
	jr nz,l83b0h		;835b	20 53		  S
l835dh:
	ld d,b			;835d	50		P
	ld d,d			;835e	52		R
	ld c,c			;835f	49		I
	ld d,h			;8360	54		T
	ld b,l			;8361	45		E
	ld d,e			;8362	53		S
	jr nz,l83b9h		;8363	20 54		  T
	ld b,l			;8365	45		E
	ld d,e			;8366	53		S
	ld d,h			;8367	54		T
l8368h:
	jr nz,l8392h		;8368	20 28		  (
	ld sp,07836h		;836a	31 36 78	1 6 x
	ld sp,02036h		;836d	31 36 20	1 6  
	ld c,l			;8370	4d		M
	ld c,a			;8371	4f		O
	ld b,h			;8372	44		D
	ld b,l			;8373	45		E
	add hl,hl		;8374	29		)
	dec c			;8375	0d		.
	ld a,(bc)		;8376	0a		.
	nop			;8377	00		.
l8378h:
	dec c			;8378	0d		.
	ld a,(bc)		;8379	0a		.
l837ah:
	jr nz,l834ah		;837a	20 ce		  .
	jr nz,$+82		;837c	20 50		  P
l837eh:
	ld d,d			;837e	52		R
	ld b,l			;837f	45		E
	ld d,e			;8380	53		S
	ld d,e			;8381	53		S
	jr nz,l83c5h		;8382	20 41		  A
	ld b,e			;8384	43		C
l8385h:
	ld b,e			;8385	43		C
	ld b,l			;8386	45		E
	ld d,b			;8387	50		P
	ld d,h			;8388	54		T
	jr nz,l83dfh		;8389	20 54		  T
	ld c,a			;838b	4f		O
l838ch:
	jr nz,l83e1h		;838c	20 53		  S
	ld d,h			;838e	54		T
	ld b,c			;838f	41		A
	ld d,d			;8390	52		R
	ld d,h			;8391	54		T
l8392h:
	cpl			;8392	2f		/
	ld d,e			;8393	53		S
l8394h:
	ld d,h			;8394	54		T
	ld c,a			;8395	4f		O
l8396h:
	ld d,b			;8396	50		P
	jr nz,l83edh		;8397	20 54		  T
	ld c,b			;8399	48		H
	ld b,l			;839a	45		E
	dec c			;839b	0d		.
	ld a,(bc)		;839c	0a		.
	jr nz,l83bfh		;839d	20 20		   
	jr nz,l83f4h		;839f	20 53		  S
	ld d,b			;83a1	50		P
	ld d,d			;83a2	52		R
	ld c,c			;83a3	49		I
	ld d,h			;83a4	54		T
	ld b,l			;83a5	45		E
	ld d,e			;83a6	53		S
	jr nz,l83f6h		;83a7	20 4d		  M
	ld c,a			;83a9	4f		O
	ld d,(hl)		;83aa	56		V
	ld b,l			;83ab	45		E
	ld c,l			;83ac	4d		M
	ld b,l			;83ad	45		E
	ld c,(hl)		;83ae	4e		N
	ld d,h			;83af	54		T
l83b0h:
	ld l,00dh		;83b0	2e 0d		. .
	ld a,(bc)		;83b2	0a		.
	dec c			;83b3	0d		.
	ld a,(bc)		;83b4	0a		.
	jr nz,l8385h		;83b5	20 ce		  .
	jr nz,$+82		;83b7	20 50		  P
l83b9h:
	ld d,d			;83b9	52		R
	ld b,l			;83ba	45		E
	ld d,e			;83bb	53		S
	ld d,e			;83bc	53		S
	jr nz,l8414h		;83bd	20 55		  U
l83bfh:
	ld d,b			;83bf	50		P
l83c0h:
	jr nz,l8416h		;83c0	20 54		  T
	ld c,a			;83c2	4f		O
	jr nz,l8417h		;83c3	20 52		  R
l83c5h:
	ld b,l			;83c5	45		E
	ld d,e			;83c6	53		S
	ld b,l			;83c7	45		E
	ld d,h			;83c8	54		T
	jr nz,l841fh		;83c9	20 54		  T
	ld c,b			;83cb	48		H
	ld b,l			;83cc	45		E
	jr nz,l841fh		;83cd	20 50		  P
	ld c,a			;83cf	4f		O
	ld d,e			;83d0	53		S
	ld c,c			;83d1	49		I
	ld d,h			;83d2	54		T
	ld c,c			;83d3	49		I
	ld c,a			;83d4	4f		O
	ld c,(hl)		;83d5	4e		N
	ld d,e			;83d6	53		S
	ld l,00dh		;83d7	2e 0d		. .
	ld a,(bc)		;83d9	0a		.
	nop			;83da	00		.
l83dbh:
	dec c			;83db	0d		.
	ld a,(bc)		;83dc	0a		.
	jr nz,l842ah		;83dd	20 4b		  K
l83dfh:
	ld b,l			;83df	45		E
	ld e,c			;83e0	59		Y
l83e1h:
	ld b,d			;83e1	42		B
	ld c,a			;83e2	4f		O
	ld b,c			;83e3	41		A
	ld d,d			;83e4	52		R
	ld b,h			;83e5	44		D
	jr nz,l843ch		;83e6	20 54		  T
	ld b,l			;83e8	45		E
l83e9h:
	ld d,e			;83e9	53		S
	ld d,h			;83ea	54		T
	dec c			;83eb	0d		.
	ld a,(bc)		;83ec	0a		.
l83edh:
	nop			;83ed	00		.
l83eeh:
	dec c			;83ee	0d		.
	ld a,(bc)		;83ef	0a		.
	jr nz,l83c0h		;83f0	20 ce		  .
	jr nz,l8444h		;83f2	20 50		  P
l83f4h:
	ld d,d			;83f4	52		R
	ld b,l			;83f5	45		E
l83f6h:
	ld d,e			;83f6	53		S
	ld d,e			;83f7	53		S
	jr nz,l843bh		;83f8	20 41		  A
	ld c,(hl)		;83fa	4e		N
	ld b,h			;83fb	44		D
	jr nz,$+84		;83fc	20 52		  R
	ld b,l			;83fe	45		E
	ld c,h			;83ff	4c		L
	ld b,l			;8400	45		E
	ld b,c			;8401	41		A
	ld d,e			;8402	53		S
	ld b,l			;8403	45		E
	jr nz,$+86		;8404	20 54		  T
	ld c,b			;8406	48		H
	ld b,l			;8407	45		E
	jr nz,l8455h		;8408	20 4b		  K
	ld b,l			;840a	45		E
	ld e,c			;840b	59		Y
	jr nz,l8462h		;840c	20 54		  T
	ld c,a			;840e	4f		O
	jr nz,$+86		;840f	20 54		  T
	ld b,l			;8411	45		E
	ld d,e			;8412	53		S
	ld d,h			;8413	54		T
l8414h:
	ld l,00dh		;8414	2e 0d		. .
l8416h:
	ld a,(bc)		;8416	0a		.
l8417h:
	dec c			;8417	0d		.
	ld a,(bc)		;8418	0a		.
	jr nz,l83e9h		;8419	20 ce		  .
	jr nz,l8474h		;841b	20 57		  W
	ld c,b			;841d	48		H
	ld b,l			;841e	45		E
l841fh:
	ld c,(hl)		;841f	4e		N
	jr nz,$+67		;8420	20 41		  A
	jr nz,l846fh		;8422	20 4b		  K
	ld b,l			;8424	45		E
	ld e,c			;8425	59		Y
	jr nz,$+82		;8426	20 50		  P
	ld d,d			;8428	52		R
	ld b,l			;8429	45		E
l842ah:
	ld d,e			;842a	53		S
	ld d,e			;842b	53		S
	jr nz,l847dh		;842c	20 4f		  O
	ld d,d			;842e	52		R
	jr nz,l8483h		;842f	20 52		  R
	ld b,l			;8431	45		E
	ld c,h			;8432	4c		L
	ld b,l			;8433	45		E
	ld b,c			;8434	41		A
	ld d,e			;8435	53		S
	ld b,l			;8436	45		E
	jr nz,l8482h		;8437	20 49		  I
	ld d,e			;8439	53		S
	dec c			;843a	0d		.
l843bh:
	ld a,(bc)		;843b	0a		.
l843ch:
	jr nz,l845eh		;843c	20 20		   
	jr nz,$+70		;843e	20 44		  D
	ld b,l			;8440	45		E
	ld d,h			;8441	54		T
	ld b,l			;8442	45		E
	ld b,e			;8443	43		C
l8444h:
	ld d,h			;8444	54		T
	ld b,l			;8445	45		E
	ld b,h			;8446	44		D
	inc l			;8447	2c		,
	jr nz,l84a3h		;8448	20 59		  Y
	ld c,a			;844a	4f		O
	ld d,l			;844b	55		U
	daa			;844c	27		'
	ld c,h			;844d	4c		L
	ld c,h			;844e	4c		L
	jr nz,l8493h		;844f	20 42		  B
	ld b,l			;8451	45		E
	jr nz,l84abh		;8452	20 57		  W
	ld b,c			;8454	41		A
l8455h:
	ld d,d			;8455	52		R
	ld c,(hl)		;8456	4e		N
	ld b,l			;8457	45		E
l8458h:
	ld b,h			;8458	44		D
	jr nz,l84b2h		;8459	20 57		  W
	ld c,c			;845b	49		I
	ld d,h			;845c	54		T
	ld c,b			;845d	48		H
l845eh:
	jr nz,l84a1h		;845e	20 41		  A
	dec c			;8460	0d		.
	ld a,(bc)		;8461	0a		.
l8462h:
	jr nz,$+34		;8462	20 20		   
	jr nz,l84bah		;8464	20 54		  T
	ld b,l			;8466	45		E
	ld e,b			;8467	58		X
	ld d,h			;8468	54		T
	inc l			;8469	2c		,
	jr nz,l84afh		;846a	20 43		  C
	ld c,a			;846c	4f		O
	ld c,h			;846d	4c		L
	ld c,a			;846e	4f		O
l846fh:
	ld d,d			;846f	52		R
	jr nz,$+69		;8470	20 43		  C
	ld c,b			;8472	48		H
	ld b,c			;8473	41		A
l8474h:
	ld c,(hl)		;8474	4e		N
	ld b,a			;8475	47		G
	ld b,l			;8476	45		E
	jr nz,l84bah		;8477	20 41		  A
	ld c,(hl)		;8479	4e		N
	ld b,h			;847a	44		D
	jr nz,l84beh		;847b	20 41		  A
l847dh:
	jr nz,l84d2h		;847d	20 53		  S
	ld c,a			;847f	4f		O
	ld d,l			;8480	55		U
	ld c,(hl)		;8481	4e		N
l8482h:
	ld b,h			;8482	44		D
l8483h:
	ld l,00dh		;8483	2e 0d		. .
	ld a,(bc)		;8485	0a		.
	dec c			;8486	0d		.
	ld a,(bc)		;8487	0a		.
	jr nz,l8458h		;8488	20 ce		  .
	jr nz,l84dch		;848a	20 50		  P
	ld d,d			;848c	52		R
	ld b,l			;848d	45		E
	ld d,e			;848e	53		S
	ld d,e			;848f	53		S
	jr nz,l84e5h		;8490	20 53		  S
	ld c,b			;8492	48		H
l8493h:
	ld c,c			;8493	49		I
	ld b,(hl)		;8494	46		F
	ld d,h			;8495	54		T
	jr nz,l84c3h		;8496	20 2b		  +
	jr nz,l84dfh		;8498	20 45		  E
	ld d,e			;849a	53		S
	ld b,e			;849b	43		C
	jr nz,l84edh		;849c	20 4f		  O
	ld d,d			;849e	52		R
	jr nz,l84e3h		;849f	20 42		  B
l84a1h:
	ld d,l			;84a1	55		U
	ld d,h			;84a2	54		T
l84a3h:
	ld d,h			;84a3	54		T
	ld c,a			;84a4	4f		O
	ld c,(hl)		;84a5	4e		N
	jr nz,l84dah		;84a6	20 32		  2
	jr nz,l84feh		;84a8	20 54		  T
	ld c,a			;84aa	4f		O
l84abh:
	dec c			;84ab	0d		.
	ld a,(bc)		;84ac	0a		.
	jr nz,l84cfh		;84ad	20 20		   
l84afh:
	jr nz,l84f3h		;84af	20 42		  B
	ld b,c			;84b1	41		A
l84b2h:
	ld b,e			;84b2	43		C
	ld c,e			;84b3	4b		K
	jr nz,l850ah		;84b4	20 54		  T
	ld c,a			;84b6	4f		O
	jr nz,$+86		;84b7	20 54		  T
	ld c,b			;84b9	48		H
l84bah:
	ld b,l			;84ba	45		E
	jr nz,l850ah		;84bb	20 4d		  M
	ld b,c			;84bd	41		A
l84beh:
	ld c,c			;84be	49		I
	ld c,(hl)		;84bf	4e		N
	jr nz,l850fh		;84c0	20 4d		  M
	ld b,l			;84c2	45		E
l84c3h:
	ld c,(hl)		;84c3	4e		N
	ld d,l			;84c4	55		U
	ld l,00dh		;84c5	2e 0d		. .
	ld a,(bc)		;84c7	0a		.
	nop			;84c8	00		.
l84c9h:
	ld d,b			;84c9	50		P
	ld c,h			;84ca	4c		L
	ld b,l			;84cb	45		E
	ld b,c			;84cc	41		A
	ld d,e			;84cd	53		S
	ld b,l			;84ce	45		E
l84cfh:
	inc l			;84cf	2c		,
	jr nz,l8524h		;84d0	20 52		  R
l84d2h:
	ld b,l			;84d2	45		E
	ld c,h			;84d3	4c		L
	ld b,l			;84d4	45		E
	ld b,c			;84d5	41		A
	ld d,e			;84d6	53		S
	ld b,l			;84d7	45		E
	jr nz,l851bh		;84d8	20 41		  A
l84dah:
	ld c,h			;84da	4c		L
	ld c,h			;84db	4c		L
l84dch:
	jr nz,l8532h		;84dc	20 54		  T
	ld c,b			;84de	48		H
l84dfh:
	ld b,l			;84df	45		E
	jr nz,l852dh		;84e0	20 4b		  K
	ld b,l			;84e2	45		E
l84e3h:
	ld e,c			;84e3	59		Y
	ld d,e			;84e4	53		S
l84e5h:
	ld l,02eh		;84e5	2e 2e		. .
	ld l,000h		;84e7	2e 00		. .
l84e9h:
	ld c,e			;84e9	4b		K
	ld b,l			;84ea	45		E
	ld e,c			;84eb	59		Y
	ld b,d			;84ec	42		B
l84edh:
	ld c,a			;84ed	4f		O
	ld b,c			;84ee	41		A
	ld d,d			;84ef	52		R
	ld b,h			;84f0	44		D
	jr nz,l8547h		;84f1	20 54		  T
l84f3h:
	ld b,l			;84f3	45		E
	ld d,e			;84f4	53		S
	ld d,h			;84f5	54		T
	jr nz,l854ah		;84f6	20 52		  R
	ld b,l			;84f8	45		E
	ld b,c			;84f9	41		A
	ld b,h			;84fa	44		D
	ld e,c			;84fb	59		Y
	ld l,02eh		;84fc	2e 2e		. .
l84feh:
	ld l,00dh		;84fe	2e 0d		. .
l8500h:
	ld a,(bc)		;8500	0a		.
	dec c			;8501	0d		.
	ld a,(bc)		;8502	0a		.
	nop			;8503	00		.
l8504h:
	jr nz,$+75		;8504	20 49		  I
	ld d,e			;8506	53		S
	jr nz,$+70		;8507	20 44		  D
	ld c,a			;8509	4f		O
l850ah:
	ld d,a			;850a	57		W
	ld c,(hl)		;850b	4e		N
	ld l,00dh		;850c	2e 0d		. .
	ld a,(bc)		;850e	0a		.
l850fh:
	nop			;850f	00		.
l8510h:
	jr nz,$+75		;8510	20 49		  I
	ld d,e			;8512	53		S
	jr nz,l856ah		;8513	20 55		  U
	ld d,b			;8515	50		P
	ld l,00dh		;8516	2e 0d		. .
	ld a,(bc)		;8518	0a		.
	nop			;8519	00		.
l851ah:
	dec c			;851a	0d		.
l851bh:
	ld a,(bc)		;851b	0a		.
	jr nz,l8568h		;851c	20 4a		  J
	ld c,a			;851e	4f		O
	ld e,c			;851f	59		Y
	ld d,e			;8520	53		S
	ld d,h			;8521	54		T
	ld c,c			;8522	49		I
	ld b,e			;8523	43		C
l8524h:
	ld c,e			;8524	4b		K
	ld d,e			;8525	53		S
	jr nz,l857ch		;8526	20 54		  T
	ld b,l			;8528	45		E
	ld d,e			;8529	53		S
	ld d,h			;852a	54		T
	dec c			;852b	0d		.
	ld a,(bc)		;852c	0a		.
l852dh:
	nop			;852d	00		.
l852eh:
	dec c			;852e	0d		.
	ld a,(bc)		;852f	0a		.
	jr nz,l8500h		;8530	20 ce		  .
l8532h:
	jr nz,l8588h		;8532	20 54		  T
	ld b,l			;8534	45		E
	ld d,e			;8535	53		S
	ld d,h			;8536	54		T
	jr nz,$+86		;8537	20 54		  T
	ld c,b			;8539	48		H
	ld b,l			;853a	45		E
	jr nz,l8571h		;853b	20 34		  4
	jr nz,l8583h		;853d	20 44		  D
	ld c,c			;853f	49		I
	ld d,d			;8540	52		R
	ld b,l			;8541	45		E
l8542h:
	ld b,e			;8542	43		C
	ld d,h			;8543	54		T
	ld c,c			;8544	49		I
	ld c,a			;8545	4f		O
	ld c,(hl)		;8546	4e		N
l8547h:
	ld d,e			;8547	53		S
	jr nz,l858bh		;8548	20 41		  A
l854ah:
	ld c,(hl)		;854a	4e		N
	ld b,h			;854b	44		D
	jr nz,l8580h		;854c	20 32		  2
	jr nz,$+68		;854e	20 42		  B
	ld d,l			;8550	55		U
	ld d,h			;8551	54		T
	ld d,h			;8552	54		T
	ld c,a			;8553	4f		O
	ld c,(hl)		;8554	4e		N
	ld d,e			;8555	53		S
	dec c			;8556	0d		.
	ld a,(bc)		;8557	0a		.
	jr nz,l857ah		;8558	20 20		   
	jr nz,l85abh		;855a	20 4f		  O
	ld b,(hl)		;855c	46		F
	jr nz,l85b3h		;855d	20 54		  T
	ld c,b			;855f	48		H
	ld b,l			;8560	45		E
	jr nz,l8595h		;8561	20 32		  2
	jr nz,l85afh		;8563	20 4a		  J
	ld c,a			;8565	4f		O
	ld e,c			;8566	59		Y
	ld d,e			;8567	53		S
l8568h:
	ld d,h			;8568	54		T
	ld c,c			;8569	49		I
l856ah:
	ld b,e			;856a	43		C
	ld c,e			;856b	4b		K
	ld d,e			;856c	53		S
	ld l,00dh		;856d	2e 0d		. .
	ld a,(bc)		;856f	0a		.
	dec c			;8570	0d		.
l8571h:
	ld a,(bc)		;8571	0a		.
	jr nz,l8542h		;8572	20 ce		  .
	jr nz,$+69		;8574	20 43		  C
	ld c,a			;8576	4f		O
	ld c,h			;8577	4c		L
	ld c,a			;8578	4f		O
	ld d,d			;8579	52		R
l857ah:
	jr nz,l85cbh		;857a	20 4f		  O
l857ch:
	ld b,(hl)		;857c	46		F
	jr nz,l85d3h		;857d	20 54		  T
	ld c,b			;857f	48		H
l8580h:
	ld b,l			;8580	45		E
	jr nz,l85cch		;8581	20 49		  I
l8583h:
	ld c,(hl)		;8583	4e		N
	ld b,h			;8584	44		D
	ld c,c			;8585	49		I
l8586h:
	ld b,e			;8586	43		C
	ld b,c			;8587	41		A
l8588h:
	ld d,h			;8588	54		T
	ld c,a			;8589	4f		O
	ld d,d			;858a	52		R
l858bh:
	ld d,e			;858b	53		S
	jr nz,$+89		;858c	20 57		  W
	ld c,c			;858e	49		I
	ld c,h			;858f	4c		L
	ld c,h			;8590	4c		L
	jr nz,l85d6h		;8591	20 43		  C
	ld c,b			;8593	48		H
	ld b,c			;8594	41		A
l8595h:
	ld c,(hl)		;8595	4e		N
	ld b,a			;8596	47		G
	ld b,l			;8597	45		E
	dec c			;8598	0d		.
	ld a,(bc)		;8599	0a		.
	jr nz,l85bch		;859a	20 20		   
	jr nz,l85e7h		;859c	20 49		  I
	ld b,(hl)		;859e	46		F
	jr nz,$+82		;859f	20 50		  P
	ld d,d			;85a1	52		R
	ld b,l			;85a2	45		E
	ld d,e			;85a3	53		S
	ld d,e			;85a4	53		S
	jr nz,l85f0h		;85a5	20 49		  I
	ld d,e			;85a7	53		S
	jr nz,l85eeh		;85a8	20 44		  D
	ld b,l			;85aa	45		E
l85abh:
	ld d,h			;85ab	54		T
	ld b,l			;85ac	45		E
	ld b,e			;85ad	43		C
	ld d,h			;85ae	54		T
l85afh:
	ld b,l			;85af	45		E
	ld b,h			;85b0	44		D
	ld l,00dh		;85b1	2e 0d		. .
l85b3h:
	ld a,(bc)		;85b3	0a		.
	dec c			;85b4	0d		.
	ld a,(bc)		;85b5	0a		.
	jr nz,l8586h		;85b6	20 ce		  .
	jr nz,$+82		;85b8	20 50		  P
	ld d,d			;85ba	52		R
	ld b,l			;85bb	45		E
l85bch:
	ld d,e			;85bc	53		S
	ld d,e			;85bd	53		S
	jr nz,$+76		;85be	20 4a		  J
	ld c,a			;85c0	4f		O
	ld e,c			;85c1	59		Y
	ld sp,05520h		;85c2	31 20 55	1   U
	ld d,b			;85c5	50		P
	jr nz,l85f3h		;85c6	20 2b		  +
	jr nz,$+68		;85c8	20 42		  B
	ld d,l			;85ca	55		U
l85cbh:
	ld d,h			;85cb	54		T
l85cch:
	ld d,h			;85cc	54		T
	ld c,a			;85cd	4f		O
	ld c,(hl)		;85ce	4e		N
	jr nz,l8602h		;85cf	20 31		  1
	jr nz,l8622h		;85d1	20 4f		  O
l85d3h:
	ld d,d			;85d3	52		R
	jr nz,l861bh		;85d4	20 45		  E
l85d6h:
	ld d,e			;85d6	53		S
	ld b,e			;85d7	43		C
	dec c			;85d8	0d		.
l85d9h:
	ld a,(bc)		;85d9	0a		.
	jr nz,$+34		;85da	20 20		   
	jr nz,l8632h		;85dc	20 54		  T
	ld c,a			;85de	4f		O
	jr nz,l8623h		;85df	20 42		  B
	ld b,c			;85e1	41		A
	ld b,e			;85e2	43		C
	ld c,e			;85e3	4b		K
	jr nz,$+86		;85e4	20 54		  T
	ld c,a			;85e6	4f		O
l85e7h:
	jr nz,l863dh		;85e7	20 54		  T
	ld c,b			;85e9	48		H
	ld b,l			;85ea	45		E
	jr nz,$+79		;85eb	20 4d		  M
	ld b,c			;85ed	41		A
l85eeh:
	ld c,c			;85ee	49		I
	ld c,(hl)		;85ef	4e		N
l85f0h:
	jr nz,l863fh		;85f0	20 4d		  M
	ld b,l			;85f2	45		E
l85f3h:
	ld c,(hl)		;85f3	4e		N
	ld d,l			;85f4	55		U
	ld l,00dh		;85f5	2e 0d		. .
	ld a,(bc)		;85f7	0a		.
	nop			;85f8	00		.
l85f9h:
	dec c			;85f9	0d		.
	ld a,(bc)		;85fa	0a		.
	jr nz,l864dh		;85fb	20 50		  P
	ld d,e			;85fd	53		S
	ld b,a			;85fe	47		G
	jr nz,l8655h		;85ff	20 54		  T
	ld b,l			;8601	45		E
l8602h:
	ld d,e			;8602	53		S
	ld d,h			;8603	54		T
	dec c			;8604	0d		.
	ld a,(bc)		;8605	0a		.
	nop			;8606	00		.
l8607h:
	dec c			;8607	0d		.
	ld a,(bc)		;8608	0a		.
	jr nz,l85d9h		;8609	20 ce		  .
	jr nz,$+82		;860b	20 50		  P
	ld d,d			;860d	52		R
	ld b,l			;860e	45		E
	ld d,e			;860f	53		S
	ld d,e			;8610	53		S
	jr nz,$+87		;8611	20 55		  U
	ld d,b			;8613	50		P
	cpl			;8614	2f		/
	ld b,h			;8615	44		D
	ld c,a			;8616	4f		O
	ld d,a			;8617	57		W
	ld c,(hl)		;8618	4e		N
	jr nz,$+86		;8619	20 54		  T
l861bh:
	ld c,a			;861b	4f		O
	jr nz,l8661h		;861c	20 43		  C
	ld c,b			;861e	48		H
	ld b,c			;861f	41		A
	ld c,(hl)		;8620	4e		N
	ld b,a			;8621	47		G
l8622h:
	ld b,l			;8622	45		E
l8623h:
	dec c			;8623	0d		.
	ld a,(bc)		;8624	0a		.
	jr nz,l8647h		;8625	20 20		   
	jr nz,$+86		;8627	20 54		  T
	ld c,b			;8629	48		H
	ld b,l			;862a	45		E
	jr nz,l867ch		;862b	20 4f		  O
	ld d,b			;862d	50		P
	ld d,h			;862e	54		T
	ld c,c			;862f	49		I
	ld c,a			;8630	4f		O
	ld c,(hl)		;8631	4e		N
l8632h:
	ld l,00dh		;8632	2e 0d		. .
	ld a,(bc)		;8634	0a		.
	dec c			;8635	0d		.
	ld a,(bc)		;8636	0a		.
	jr nz,l8607h		;8637	20 ce		  .
	jr nz,l868bh		;8639	20 50		  P
	ld d,d			;863b	52		R
	ld b,l			;863c	45		E
l863dh:
	ld d,e			;863d	53		S
	ld d,e			;863e	53		S
l863fh:
	jr nz,$+78		;863f	20 4c		  L
	ld b,l			;8641	45		E
	ld b,(hl)		;8642	46		F
	ld d,h			;8643	54		T
	cpl			;8644	2f		/
	ld d,d			;8645	52		R
	ld c,c			;8646	49		I
l8647h:
	ld b,a			;8647	47		G
	ld c,b			;8648	48		H
	ld d,h			;8649	54		T
	jr nz,$+86		;864a	20 54		  T
	ld c,a			;864c	4f		O
l864dh:
	jr nz,l8692h		;864d	20 43		  C
	ld c,b			;864f	48		H
	ld b,c			;8650	41		A
	ld c,(hl)		;8651	4e		N
	ld b,a			;8652	47		G
	ld b,l			;8653	45		E
	dec c			;8654	0d		.
l8655h:
	ld a,(bc)		;8655	0a		.
	jr nz,$+34		;8656	20 20		   
	jr nz,$+86		;8658	20 54		  T
	ld c,b			;865a	48		H
	ld b,l			;865b	45		E
	jr nz,$+88		;865c	20 56		  V
	ld b,c			;865e	41		A
	ld c,h			;865f	4c		L
	ld d,l			;8660	55		U
l8661h:
	ld b,l			;8661	45		E
	ld l,00dh		;8662	2e 0d		. .
	ld a,(bc)		;8664	0a		.
	nop			;8665	00		.
l8666h:
	push bc			;8666	c5		.
	jp 0c3c3h		;8667	c3 c3 c3	. . .
	jp 0c3c3h		;866a	c3 c3 c3	. . .
	jp 0c3c3h		;866d	c3 c3 c3	. . .
	jp 0c3c3h		;8670	c3 c3 c3	. . .
	jp 0c3c3h		;8673	c3 c3 c3	. . .
	jp 0c3c3h		;8676	c3 c3 c3	. . .
	jp 0c3c3h		;8679	c3 c3 c3	. . .
l867ch:
	jp 0c3c3h		;867c	c3 c3 c3	. . .
	jp 0c3c3h		;867f	c3 c3 c3	. . .
	jp 0c3c3h		;8682	c3 c3 c3	. . .
	jp 0c3c3h		;8685	c3 c3 c3	. . .
	jp 0c3c3h		;8688	c3 c3 c3	. . .
l868bh:
	jp 00dc6h		;868b	c3 c6 0d	. . .
	ld a,(bc)		;868e	0a		.
	call nz,02020h		;868f	c4 20 20	.    
l8692h:
	jr nz,l86e4h		;8692	20 50		  P
	ld d,e			;8694	53		S
	ld b,a			;8695	47		G
	jr nz,l86ech		;8696	20 54		  T
	ld b,l			;8698	45		E
	ld d,e			;8699	53		S
	ld d,h			;869a	54		T
	jr nz,$+34		;869b	20 20		   
	jr nz,l86bfh		;869d	20 20		   
	jr nz,$+34		;869f	20 20		   
	jr nz,$+34		;86a1	20 20		   
	jr nz,l86c5h		;86a3	20 20		   
	jr nz,$+34		;86a5	20 20		   
	jr nz,$+34		;86a7	20 20		   
	jr nz,l86cbh		;86a9	20 20		   
	jr nz,$+34		;86ab	20 20		   
	jr nz,$+34		;86ad	20 20		   
	jr nz,l86d1h		;86af	20 20		   
	jr nz,$+34		;86b1	20 20		   
	jr nz,$+34		;86b3	20 20		   
	call nz,00a0dh		;86b5	c4 0d 0a	. . .
	ret			;86b8	c9		.
	jp 0c3c3h		;86b9	c3 c3 c3	. . .
l86bch:
	jp 0ccc3h		;86bc	c3 c3 cc	. . .
l86bfh:
	jp 0c3c3h		;86bf	c3 c3 c3	. . .
	jp 0c3c3h		;86c2	c3 c3 c3	. . .
l86c5h:
	jp 0c3cch		;86c5	c3 cc c3	. . .
	jp 0c3c3h		;86c8	c3 c3 c3	. . .
l86cbh:
	jp 0c3c3h		;86cb	c3 c3 c3	. . .
	call z,0c3c3h		;86ce	cc c3 c3	. . .
l86d1h:
	jp 0c3c3h		;86d1	c3 c3 c3	. . .
	jp 0ccc3h		;86d4	c3 c3 cc	. . .
	jp 0c3c3h		;86d7	c3 c3 c3	. . .
	jp 0c3c3h		;86da	c3 c3 c3	. . .
	jp 00dcah		;86dd	c3 ca 0d	. . .
	ld a,(bc)		;86e0	0a		.
	call nz,04620h		;86e1	c4 20 46	.   F
l86e4h:
	ld d,d			;86e4	52		R
	ld d,c			;86e5	51		Q
	jr nz,$-58		;86e6	20 c4		  .
	jr nz,l870ah		;86e8	20 20		   
	ld c,a			;86ea	4f		O
	ld b,(hl)		;86eb	46		F
l86ech:
	ld b,(hl)		;86ec	46		F
	jr nz,$+34		;86ed	20 20		   
	call nz,03320h		;86ef	c4 20 33	.   3
	jr nc,$+50		;86f2	30 30		0 0
	ld c,b			;86f4	48		H
	ld e,d			;86f5	5a		Z
	jr nz,l86bch		;86f6	20 c4		  .
	jr nz,$+55		;86f8	20 35		  5
	jr nc,$+50		;86fa	30 30		0 0
	ld c,b			;86fc	48		H
	ld e,d			;86fd	5a		Z
l86feh:
	jr nz,$-58		;86fe	20 c4		  .
	jr nz,l8733h		;8700	20 31		  1
	ld c,e			;8702	4b		K
	ld c,b			;8703	48		H
	ld e,d			;8704	5a		Z
	jr nz,$+34		;8705	20 20		   
	call nz,00a0dh		;8707	c4 0d 0a	. . .
l870ah:
	ret			;870a	c9		.
	jp 0c3c3h		;870b	c3 c3 c3	. . .
l870eh:
	jp 0cbc3h		;870e	c3 c3 cb	. . .
	jp 0c3c3h		;8711	c3 c3 c3	. . .
	jp 0c3c3h		;8714	c3 c3 c3	. . .
	jp 0c3cbh		;8717	c3 cb c3	. . .
	jp 0c3c3h		;871a	c3 c3 c3	. . .
	jp 0c3c3h		;871d	c3 c3 c3	. . .
	set 0,e			;8720	cb c3		. .
	jp 0c3c3h		;8722	c3 c3 c3	. . .
	jp 0c3c3h		;8725	c3 c3 c3	. . .
	set 0,e			;8728	cb c3		. .
	jp 0c3c3h		;872a	c3 c3 c3	. . .
	jp 0c3c3h		;872d	c3 c3 c3	. . .
	jp z,00a0dh		;8730	ca 0d 0a	. . .
l8733h:
	call nz,0c020h		;8733	c4 20 c0	.   .
	jr nz,$+67		;8736	20 41		  A
	jr nz,l86feh		;8738	20 c4		  .
	jr nz,l875ch		;873a	20 20		   
	jr nz,$-61		;873c	20 c1		  .
	jr nz,l8760h		;873e	20 20		   
	jr nz,$-58		;8740	20 c4		  .
	jr nz,$+34		;8742	20 20		   
	jr nz,$-60		;8744	20 c2		  .
	jr nz,$+34		;8746	20 20		   
	jr nz,l870eh		;8748	20 c4		  .
	jr nz,l876ch		;874a	20 20		   
	jr nz,$-60		;874c	20 c2		  .
	jr nz,$+34		;874e	20 20		   
l8750h:
	jr nz,$-58		;8750	20 c4		  .
	jr nz,l8774h		;8752	20 20		   
	jr nz,$-60		;8754	20 c2		  .
	jr nz,$+34		;8756	20 20		   
l8758h:
	jr nz,$-58		;8758	20 c4		  .
l875ah:
	dec c			;875a	0d		.
	ld a,(bc)		;875b	0a		.
l875ch:
	ret			;875c	c9		.
	jp 0c3c3h		;875d	c3 c3 c3	. . .
l8760h:
	jp 0cbc3h		;8760	c3 c3 cb	. . .
	jp 0c3c3h		;8763	c3 c3 c3	. . .
	jp 0c3c3h		;8766	c3 c3 c3	. . .
	jp 0c3cbh		;8769	c3 cb c3	. . .
l876ch:
	jp 0c3c3h		;876c	c3 c3 c3	. . .
	jp 0c3c3h		;876f	c3 c3 c3	. . .
	set 0,e			;8772	cb c3		. .
l8774h:
	jp 0c3c3h		;8774	c3 c3 c3	. . .
	jp 0c3c3h		;8777	c3 c3 c3	. . .
	set 0,e			;877a	cb c3		. .
	jp 0c3c3h		;877c	c3 c3 c3	. . .
	jp 0c3c3h		;877f	c3 c3 c3	. . .
	jp z,00a0dh		;8782	ca 0d 0a	. . .
	call nz,02020h		;8785	c4 20 20	.    
	jr nz,l87cch		;8788	20 42		  B
	jr nz,l8750h		;878a	20 c4		  .
	jr nz,l87aeh		;878c	20 20		   
	jr nz,$-61		;878e	20 c1		  .
	jr nz,l87b2h		;8790	20 20		   
	jr nz,l8758h		;8792	20 c4		  .
	jr nz,$+34		;8794	20 20		   
	jr nz,l875ah		;8796	20 c2		  .
	jr nz,$+34		;8798	20 20		   
	jr nz,l8760h		;879a	20 c4		  .
	jr nz,l87beh		;879c	20 20		   
	jr nz,$-60		;879e	20 c2		  .
	jr nz,$+34		;87a0	20 20		   
l87a2h:
	jr nz,$-58		;87a2	20 c4		  .
	jr nz,l87c6h		;87a4	20 20		   
	jr nz,$-60		;87a6	20 c2		  .
	jr nz,$+34		;87a8	20 20		   
l87aah:
	jr nz,$-58		;87aa	20 c4		  .
l87ach:
	dec c			;87ac	0d		.
	ld a,(bc)		;87ad	0a		.
l87aeh:
	ret			;87ae	c9		.
	jp 0c3c3h		;87af	c3 c3 c3	. . .
l87b2h:
	jp 0cbc3h		;87b2	c3 c3 cb	. . .
	jp 0c3c3h		;87b5	c3 c3 c3	. . .
	jp 0c3c3h		;87b8	c3 c3 c3	. . .
	jp 0c3cbh		;87bb	c3 cb c3	. . .
l87beh:
	jp 0c3c3h		;87be	c3 c3 c3	. . .
	jp 0c3c3h		;87c1	c3 c3 c3	. . .
	set 0,e			;87c4	cb c3		. .
l87c6h:
	jp 0c3c3h		;87c6	c3 c3 c3	. . .
	jp 0c3c3h		;87c9	c3 c3 c3	. . .
l87cch:
	set 0,e			;87cc	cb c3		. .
	jp 0c3c3h		;87ce	c3 c3 c3	. . .
	jp 0c3c3h		;87d1	c3 c3 c3	. . .
	jp z,00a0dh		;87d4	ca 0d 0a	. . .
	call nz,02020h		;87d7	c4 20 20	.    
	jr nz,l881fh		;87da	20 43		  C
	jr nz,l87a2h		;87dc	20 c4		  .
	jr nz,l8800h		;87de	20 20		   
	jr nz,$-61		;87e0	20 c1		  .
	jr nz,l8804h		;87e2	20 20		   
	jr nz,l87aah		;87e4	20 c4		  .
	jr nz,$+34		;87e6	20 20		   
	jr nz,l87ach		;87e8	20 c2		  .
	jr nz,$+34		;87ea	20 20		   
	jr nz,l87b2h		;87ec	20 c4		  .
	jr nz,l8810h		;87ee	20 20		   
	jr nz,$-60		;87f0	20 c2		  .
	jr nz,$+34		;87f2	20 20		   
	jr nz,$-58		;87f4	20 c4		  .
	jr nz,$+34		;87f6	20 20		   
	jr nz,$-60		;87f8	20 c2		  .
	jr nz,l881ch		;87fa	20 20		   
	jr nz,$-58		;87fc	20 c4		  .
	dec c			;87fe	0d		.
	ld a,(bc)		;87ff	0a		.
l8800h:
	ret			;8800	c9		.
	jp 0c3c3h		;8801	c3 c3 c3	. . .
l8804h:
	jp 0cdc3h		;8804	c3 c3 cd	. . .
	jp 0c3c3h		;8807	c3 c3 c3	. . .
	jp 0c3c3h		;880a	c3 c3 c3	. . .
	jp 0c3cbh		;880d	c3 cb c3	. . .
l8810h:
	jp 0c3c3h		;8810	c3 c3 c3	. . .
	jp 0c3c3h		;8813	c3 c3 c3	. . .
	call 0c3c3h		;8816	cd c3 c3	. . .
	jp 0c3c3h		;8819	c3 c3 c3	. . .
l881ch:
	jp 0cdc3h		;881c	c3 c3 cd	. . .
l881fh:
	jp 0c3cch		;881f	c3 cc c3	. . .
	jp 0c3c3h		;8822	c3 c3 c3	. . .
	jp 00dcah		;8825	c3 ca 0d	. . .
	ld a,(bc)		;8828	0a		.
	call nz,02020h		;8829	c4 20 20	.    
	jr nz,l8884h		;882c	20 56		  V
	ld c,a			;882e	4f		O
	ld c,h			;882f	4c		L
	ld d,l			;8830	55		U
	ld c,l			;8831	4d		M
	ld b,l			;8832	45		E
	jr nz,$+67		;8833	20 41		  A
	jr nz,$+34		;8835	20 20		   
	call nz,0c120h		;8837	c4 20 c1	.   .
	pop bc			;883a	c1		.
	pop bc			;883b	c1		.
	pop bc			;883c	c1		.
	pop bc			;883d	c1		.
	pop bc			;883e	c1		.
	pop bc			;883f	c1		.
	pop bc			;8840	c1		.
	pop bc			;8841	c1		.
	pop bc			;8842	c1		.
	pop bc			;8843	c1		.
	pop bc			;8844	c1		.
	pop bc			;8845	c1		.
	pop bc			;8846	c1		.
	pop bc			;8847	c1		.
	jr nz,$-58		;8848	20 c4		  .
	jr nz,$+34		;884a	20 20		   
	jr nz,l886eh		;884c	20 20		   
	jr nz,$-58		;884e	20 c4		  .
	dec c			;8850	0d		.
	ld a,(bc)		;8851	0a		.
	ret			;8852	c9		.
	jp 0c3c3h		;8853	c3 c3 c3	. . .
	jp 0c3c3h		;8856	c3 c3 c3	. . .
	jp 0c3c3h		;8859	c3 c3 c3	. . .
	jp 0c3c3h		;885c	c3 c3 c3	. . .
	jp 0c3cbh		;885f	c3 cb c3	. . .
	jp 0c3c3h		;8862	c3 c3 c3	. . .
	jp 0c3c3h		;8865	c3 c3 c3	. . .
	jp 0c3c3h		;8868	c3 c3 c3	. . .
	jp 0c3c3h		;886b	c3 c3 c3	. . .
l886eh:
	jp 0c3c3h		;886e	c3 c3 c3	. . .
	jp 0c3cbh		;8871	c3 cb c3	. . .
	jp 0c3c3h		;8874	c3 c3 c3	. . .
	jp 00dcah		;8877	c3 ca 0d	. . .
	ld a,(bc)		;887a	0a		.
	call nz,02020h		;887b	c4 20 20	.    
	jr nz,l88d6h		;887e	20 56		  V
	ld c,a			;8880	4f		O
	ld c,h			;8881	4c		L
	ld d,l			;8882	55		U
	ld c,l			;8883	4d		M
l8884h:
	ld b,l			;8884	45		E
	jr nz,l88c9h		;8885	20 42		  B
	jr nz,$+34		;8887	20 20		   
	call nz,0c120h		;8889	c4 20 c1	.   .
	pop bc			;888c	c1		.
	pop bc			;888d	c1		.
	pop bc			;888e	c1		.
	pop bc			;888f	c1		.
	pop bc			;8890	c1		.
	pop bc			;8891	c1		.
	pop bc			;8892	c1		.
	pop bc			;8893	c1		.
	pop bc			;8894	c1		.
	pop bc			;8895	c1		.
	pop bc			;8896	c1		.
	pop bc			;8897	c1		.
	pop bc			;8898	c1		.
	pop bc			;8899	c1		.
	jr nz,$-58		;889a	20 c4		  .
	jr nz,$+34		;889c	20 20		   
	jr nz,l88c0h		;889e	20 20		   
	jr nz,$-58		;88a0	20 c4		  .
	dec c			;88a2	0d		.
	ld a,(bc)		;88a3	0a		.
	ret			;88a4	c9		.
	jp 0c3c3h		;88a5	c3 c3 c3	. . .
	jp 0c3c3h		;88a8	c3 c3 c3	. . .
	jp 0c3c3h		;88ab	c3 c3 c3	. . .
	jp 0c3c3h		;88ae	c3 c3 c3	. . .
	jp 0c3cbh		;88b1	c3 cb c3	. . .
	jp 0c3c3h		;88b4	c3 c3 c3	. . .
	jp 0c3c3h		;88b7	c3 c3 c3	. . .
	jp 0c3c3h		;88ba	c3 c3 c3	. . .
	jp 0c3c3h		;88bd	c3 c3 c3	. . .
l88c0h:
	jp 0c3c3h		;88c0	c3 c3 c3	. . .
	jp 0c3cbh		;88c3	c3 cb c3	. . .
l88c6h:
	jp 0c3c3h		;88c6	c3 c3 c3	. . .
l88c9h:
	jp 00dcah		;88c9	c3 ca 0d	. . .
	ld a,(bc)		;88cc	0a		.
	call nz,02020h		;88cd	c4 20 20	.    
	jr nz,l8928h		;88d0	20 56		  V
	ld c,a			;88d2	4f		O
	ld c,h			;88d3	4c		L
	ld d,l			;88d4	55		U
	ld c,l			;88d5	4d		M
l88d6h:
	ld b,l			;88d6	45		E
	jr nz,$+69		;88d7	20 43		  C
	jr nz,$+34		;88d9	20 20		   
	call nz,0c120h		;88db	c4 20 c1	.   .
	pop bc			;88de	c1		.
	pop bc			;88df	c1		.
	pop bc			;88e0	c1		.
	pop bc			;88e1	c1		.
	pop bc			;88e2	c1		.
	pop bc			;88e3	c1		.
	pop bc			;88e4	c1		.
	pop bc			;88e5	c1		.
	pop bc			;88e6	c1		.
	pop bc			;88e7	c1		.
	pop bc			;88e8	c1		.
	pop bc			;88e9	c1		.
	pop bc			;88ea	c1		.
	pop bc			;88eb	c1		.
	jr nz,$-58		;88ec	20 c4		  .
	jr nz,$+34		;88ee	20 20		   
	jr nz,l8912h		;88f0	20 20		   
l88f2h:
	jr nz,$-58		;88f2	20 c4		  .
	dec c			;88f4	0d		.
	ld a,(bc)		;88f5	0a		.
	ret			;88f6	c9		.
	jp 0c3c3h		;88f7	c3 c3 c3	. . .
	jp 0c3c3h		;88fa	c3 c3 c3	. . .
	jp 0c3c3h		;88fd	c3 c3 c3	. . .
	jp 0c3c3h		;8900	c3 c3 c3	. . .
	jp 0c3cbh		;8903	c3 cb c3	. . .
	jp 0c3c3h		;8906	c3 c3 c3	. . .
	jp 0c3cch		;8909	c3 cc c3	. . .
	jp 0c3c3h		;890c	c3 c3 c3	. . .
	jp 0c3cch		;890f	c3 cc c3	. . .
l8912h:
	jp 0c3c3h		;8912	c3 c3 c3	. . .
	jp 0c3cbh		;8915	c3 cb c3	. . .
	jp 0c3c3h		;8918	c3 c3 c3	. . .
	jp 00dcah		;891b	c3 ca 0d	. . .
	ld a,(bc)		;891e	0a		.
	call nz,02020h		;891f	c4 20 20	.    
	jr nz,$+80		;8922	20 4e		  N
	ld c,a			;8924	4f		O
	ld c,c			;8925	49		I
	ld d,e			;8926	53		S
	ld b,l			;8927	45		E
l8928h:
	jr nz,$+34		;8928	20 20		   
	jr nz,l894ch		;892a	20 20		   
	jr nz,l88f2h		;892c	20 c4		  .
	jr nz,l897fh		;892e	20 4f		  O
	ld b,(hl)		;8930	46		F
	ld b,(hl)		;8931	46		F
	jr nz,$-58		;8932	20 c4		  .
	jr nz,$+34		;8934	20 20		   
	ld b,c			;8936	41		A
	jr nz,$+34		;8937	20 20		   
	call nz,02020h		;8939	c4 20 20	.    
	ld b,d			;893c	42		B
	jr nz,$+34		;893d	20 20		   
	call nz,02020h		;893f	c4 20 20	.    
	ld b,e			;8942	43		C
	jr nz,$+34		;8943	20 20		   
	call nz,00a0dh		;8945	c4 0d 0a	. . .
	ret			;8948	c9		.
	jp 0c3c3h		;8949	c3 c3 c3	. . .
l894ch:
	jp 0c3c3h		;894c	c3 c3 c3	. . .
	jp 0c3c3h		;894f	c3 c3 c3	. . .
	jp 0c3c3h		;8952	c3 c3 c3	. . .
	jp 0c3cbh		;8955	c3 cb c3	. . .
	jp 0c3c3h		;8958	c3 c3 c3	. . .
	jp 0c3cbh		;895b	c3 cb c3	. . .
	jp 0c3c3h		;895e	c3 c3 c3	. . .
	jp 0c3cbh		;8961	c3 cb c3	. . .
	jp 0c3c3h		;8964	c3 c3 c3	. . .
	jp 0c3cbh		;8967	c3 cb c3	. . .
	jp 0c3c3h		;896a	c3 c3 c3	. . .
	jp 00dcah		;896d	c3 ca 0d	. . .
	ld a,(bc)		;8970	0a		.
	call nz,02020h		;8971	c4 20 20	.    
	jr nz,$+71		;8974	20 45		  E
	ld c,(hl)		;8976	4e		N
	ld b,c			;8977	41		A
	ld b,d			;8978	42		B
	ld c,h			;8979	4c		L
	ld b,l			;897a	45		E
	jr nz,$+34		;897b	20 20		   
	jr nz,$+34		;897d	20 20		   
l897fh:
	call nz,02020h		;897f	c4 20 20	.    
	pop bc			;8982	c1		.
	jr nz,$+34		;8983	20 20		   
	call nz,02020h		;8985	c4 20 20	.    
	jp nz,02020h		;8988	c2 20 20	.    
	call nz,02020h		;898b	c4 20 20	.    
	jp nz,02020h		;898e	c2 20 20	.    
	call nz,02020h		;8991	c4 20 20	.    
	jp nz,02020h		;8994	c2 20 20	.    
	call nz,00a0dh		;8997	c4 0d 0a	. . .
	ret			;899a	c9		.
	jp 0c3c3h		;899b	c3 c3 c3	. . .
	jp 0c3c3h		;899e	c3 c3 c3	. . .
	jp 0c3c3h		;89a1	c3 c3 c3	. . .
	jp 0c3c3h		;89a4	c3 c3 c3	. . .
	jp 0c3cbh		;89a7	c3 cb c3	. . .
	jp 0c3c3h		;89aa	c3 c3 c3	. . .
	jp 0c3cdh		;89ad	c3 cd c3	. . .
	jp 0c3c3h		;89b0	c3 c3 c3	. . .
	jp 0c3cdh		;89b3	c3 cd c3	. . .
	jp 0c3c3h		;89b6	c3 c3 c3	. . .
	jp 0c3cbh		;89b9	c3 cb c3	. . .
	jp 0c3c3h		;89bc	c3 c3 c3	. . .
	jp 00dcah		;89bf	c3 ca 0d	. . .
	ld a,(bc)		;89c2	0a		.
	call nz,02020h		;89c3	c4 20 20	.    
	jr nz,l8a0eh		;89c6	20 46		  F
	ld d,d			;89c8	52		R
	ld b,l			;89c9	45		E
	ld d,c			;89ca	51		Q
	ld d,l			;89cb	55		U
	ld b,l			;89cc	45		E
	ld c,(hl)		;89cd	4e		N
	ld b,e			;89ce	43		C
	ld e,c			;89cf	59		Y
	jr nz,$-58		;89d0	20 c4		  .
	jr nz,$-61		;89d2	20 c1		  .
	pop bc			;89d4	c1		.
	pop bc			;89d5	c1		.
	pop bc			;89d6	c1		.
	pop bc			;89d7	c1		.
	pop bc			;89d8	c1		.
	pop bc			;89d9	c1		.
	pop bc			;89da	c1		.
	jp nz,0c2c2h		;89db	c2 c2 c2	. . .
	jp nz,0c2c2h		;89de	c2 c2 c2	. . .
	jp nz,0c420h		;89e1	c2 20 c4	.   .
	jr nz,$+34		;89e4	20 20		   
	jr nz,l8a08h		;89e6	20 20		   
	jr nz,$-58		;89e8	20 c4		  .
	dec c			;89ea	0d		.
	ld a,(bc)		;89eb	0a		.
	rst 0			;89ec	c7		.
	jp 0c3c3h		;89ed	c3 c3 c3	. . .
	jp 0c3c3h		;89f0	c3 c3 c3	. . .
	jp 0c3c3h		;89f3	c3 c3 c3	. . .
	jp 0c3c3h		;89f6	c3 c3 c3	. . .
	jp 0c3cdh		;89f9	c3 cd c3	. . .
	jp 0c3c3h		;89fc	c3 c3 c3	. . .
	jp 0c3c3h		;89ff	c3 c3 c3	. . .
	jp 0c3c3h		;8a02	c3 c3 c3	. . .
	jp 0c3c3h		;8a05	c3 c3 c3	. . .
l8a08h:
	jp 0c3c3h		;8a08	c3 c3 c3	. . .
	jp 0c3cdh		;8a0b	c3 cd c3	. . .
l8a0eh:
	jp 0c3c3h		;8a0e	c3 c3 c3	. . .
	jp 00dc8h		;8a11	c3 c8 0d	. . .
	ld a,(bc)		;8a14	0a		.
	nop			;8a15	00		.
l8a16h:
	jr nz,$+85		;8a16	20 53		  S
	ld e,c			;8a18	59		Y
	ld d,e			;8a19	53		S
	ld d,h			;8a1a	54		T
	ld b,l			;8a1b	45		E
	ld c,l			;8a1c	4d		M
	jr nz,l8a68h		;8a1d	20 49		  I
	ld c,(hl)		;8a1f	4e		N
	ld b,(hl)		;8a20	46		F
	ld c,a			;8a21	4f		O
	ld d,d			;8a22	52		R
	ld c,l			;8a23	4d		M
	ld b,c			;8a24	41		A
	ld d,h			;8a25	54		T
	ld c,c			;8a26	49		I
	ld c,a			;8a27	4f		O
	ld c,(hl)		;8a28	4e		N
	dec c			;8a29	0d		.
	ld a,(bc)		;8a2a	0a		.
	nop			;8a2b	00		.
l8a2ch:
	ld c,l			;8a2c	4d		M
	ld c,a			;8a2d	4f		O
	ld b,h			;8a2e	44		D
	ld b,l			;8a2f	45		E
	ld c,h			;8a30	4c		L
	ld a,(00020h)		;8a31	3a 20 00	:   .
l8a34h:
	ld c,l			;8a34	4d		M
	ld d,e			;8a35	53		S
	ld e,b			;8a36	58		X
	nop			;8a37	00		.
l8a38h:
	ld c,l			;8a38	4d		M
	ld d,e			;8a39	53		S
	ld e,b			;8a3a	58		X
	ld (04d00h),a		;8a3b	32 00 4d	2 . M
	ld d,e			;8a3e	53		S
	ld e,b			;8a3f	58		X
	ld (0002bh),a		;8a40	32 2b 00	2 + .
l8a43h:
	ld d,h			;8a43	54		T
	ld d,l			;8a44	55		U
	ld d,d			;8a45	52		R
	ld b,d			;8a46	42		B
	ld c,a			;8a47	4f		O
	dec l			;8a48	2d		-
	ld d,d			;8a49	52		R
	nop			;8a4a	00		.
l8a4bh:
	ccf			;8a4b	3f		?
	ccf			;8a4c	3f		?
	ccf			;8a4d	3f		?
	nop			;8a4e	00		.
l8a4fh:
	ld c,e			;8a4f	4b		K
	ld b,d			;8a50	42		B
	nop			;8a51	00		.
l8a52h:
	ld d,d			;8a52	52		R
	ld b,c			;8a53	41		A
	ld c,l			;8a54	4d		M
	ld a,(00020h)		;8a55	3a 20 00	:   .
l8a58h:
	ld d,(hl)		;8a58	56		V
	ld d,d			;8a59	52		R
	ld b,c			;8a5a	41		A
	ld c,l			;8a5b	4d		M
	ld a,(00020h)		;8a5c	3a 20 00	:   .
l8a5fh:
	ld d,(hl)		;8a5f	56		V
	ld b,h			;8a60	44		D
	ld d,b			;8a61	50		P
	ld a,(00020h)		;8a62	3a 20 00	:   .
l8a65h:
	ld d,h			;8a65	54		T
	ld c,l			;8a66	4d		M
	ld d,e			;8a67	53		S
l8a68h:
	add hl,sp		;8a68	39		9
	add hl,sp		;8a69	39		9
	ld sp,sub_4138h		;8a6a	31 38 41	1 8 A
	cpl			;8a6d	2f		/
	ld (sub_4138h),a	;8a6e	32 38 41	2 8 A
	nop			;8a71	00		.
l8a72h:
	ld d,h			;8a72	54		T
	ld c,l			;8a73	4d		M
	ld d,e			;8a74	53		S
	add hl,sp		;8a75	39		9
	add hl,sp		;8a76	39		9
	ld (sub_4138h+1),a	;8a77	32 39 41	2 9 A
	nop			;8a7a	00		.
l8a7bh:
	ld d,(hl)		;8a7b	56		V
	add hl,sp		;8a7c	39		9
	add hl,sp		;8a7d	39		9
	inc sp			;8a7e	33		3
	jr c,l8a81h		;8a7f	38 00		8 .
l8a81h:
	ld d,(hl)		;8a81	56		V
	add hl,sp		;8a82	39		9
	add hl,sp		;8a83	39		9
	dec (hl)		;8a84	35		5
	jr c,l8a87h		;8a85	38 00		8 .
l8a87h:
	ld b,(hl)		;8a87	46		F
	ld d,d			;8a88	52		R
	ld b,l			;8a89	45		E
	ld d,c			;8a8a	51		Q
	ld a,(00020h)		;8a8b	3a 20 00	:   .
l8a8eh:
	ld c,b			;8a8e	48		H
	ld e,d			;8a8f	5a		Z
	nop			;8a90	00		.
l8a91h:
	ld c,e			;8a91	4b		K
	ld b,l			;8a92	45		E
	ld e,c			;8a93	59		Y
	ld b,d			;8a94	42		B
	ld c,a			;8a95	4f		O
	ld b,c			;8a96	41		A
	ld d,d			;8a97	52		R
	ld b,h			;8a98	44		D
	ld a,(00020h)		;8a99	3a 20 00	:   .
l8a9ch:
	ld c,d			;8a9c	4a		J
	ld d,b			;8a9d	50		P
	nop			;8a9e	00		.
l8a9fh:
	ld c,c			;8a9f	49		I
	ld c,(hl)		;8aa0	4e		N
	ld d,h			;8aa1	54		T
	nop			;8aa2	00		.
l8aa3h:
	ld b,(hl)		;8aa3	46		F
	ld d,d			;8aa4	52		R
	nop			;8aa5	00		.
l8aa6h:
	ld b,a			;8aa6	47		G
	ld b,d			;8aa7	42		B
	nop			;8aa8	00		.
l8aa9h:
	ld b,h			;8aa9	44		D
	ld b,l			;8aaa	45		E
	nop			;8aab	00		.
l8aach:
	ld d,l			;8aac	55		U
	ld d,e			;8aad	53		S
	ld d,e			;8aae	53		S
	ld d,d			;8aaf	52		R
	nop			;8ab0	00		.
l8ab1h:
	ld d,e			;8ab1	53		S
	ld d,b			;8ab2	50		P
	nop			;8ab3	00		.
	jr nz,l8ae3h		;8ab4	20 2d		  -
	jr nz,l8ab8h		;8ab6	20 00		  .
l8ab8h:
	ld b,h			;8ab8	44		D
	ld b,c			;8ab9	41		A
	ld d,h			;8aba	54		T
	ld b,l			;8abb	45		E
	nop			;8abc	00		.
l8abdh:
	ld d,h			;8abd	54		T
	ld c,c			;8abe	49		I
	ld c,l			;8abf	4d		M
	ld b,l			;8ac0	45		E
	nop			;8ac1	00		.
l8ac2h:
	push bc			;8ac2	c5		.
	jp 0c3cch		;8ac3	c3 cc c3	. . .
	jp 0c3c3h		;8ac6	c3 c3 c3	. . .
	call z,0c3c3h		;8ac9	cc c3 c3	. . .
	jp 0ccc3h		;8acc	c3 c3 cc	. . .
	jp 0c3c3h		;8acf	c3 c3 c3	. . .
	jp 0c3cch		;8ad2	c3 cc c3	. . .
	jp 0c3c3h		;8ad5	c3 c3 c3	. . .
	call z,0c6c3h		;8ad8	cc c3 c6	. . .
	nop			;8adb	00		.
l8adch:
	call nz,0c420h		;8adc	c4 20 c4	.   .
	jr nz,$+34		;8adf	20 20		   
	jr nz,$+34		;8ae1	20 20		   
l8ae3h:
	call nz,02020h		;8ae3	c4 20 20	.    
	jr nz,$+34		;8ae6	20 20		   
	call nz,02020h		;8ae8	c4 20 20	.    
	jr nz,$+34		;8aeb	20 20		   
	call nz,02020h		;8aed	c4 20 20	.    
	jr nz,$+34		;8af0	20 20		   
	call nz,0c420h		;8af2	c4 20 c4	.   .
	nop			;8af5	00		.
l8af6h:
	ret			;8af6	c9		.
	jp 0c3cbh		;8af7	c3 cb c3	. . .
	jp 0c3c3h		;8afa	c3 c3 c3	. . .
	set 0,e			;8afd	cb c3		. .
	jp 0c3c3h		;8aff	c3 c3 c3	. . .
	set 0,e			;8b02	cb c3		. .
	jp 0c3c3h		;8b04	c3 c3 c3	. . .
	set 0,e			;8b07	cb c3		. .
	jp 0c3c3h		;8b09	c3 c3 c3	. . .
	set 0,e			;8b0c	cb c3		. .
	jp z,0c700h		;8b0e	ca 00 c7	. . .
	jp 0c3cdh		;8b11	c3 cd c3	. . .
	jp 0c3c3h		;8b14	c3 c3 c3	. . .
	call 0c3c3h		;8b17	cd c3 c3	. . .
	jp 0cdc3h		;8b1a	c3 c3 cd	. . .
	jp 0c3c3h		;8b1d	c3 c3 c3	. . .
	jp 0c3cdh		;8b20	c3 cd c3	. . .
	jp 0c3c3h		;8b23	c3 c3 c3	. . .
	call 0c8c3h		;8b26	cd c3 c8	. . .
	nop			;8b29	00		.
l8b2ah:
	jr nz,$+82		;8b2a	20 50		  P
	ld d,d			;8b2c	52		R
	ld b,l			;8b2d	45		E
	ld d,e			;8b2e	53		S
	ld d,e			;8b2f	53		S
	jr nz,l8b73h		;8b30	20 41		  A
	ld b,e			;8b32	43		C
	ld b,e			;8b33	43		C
	ld b,l			;8b34	45		E
l8b35h:
	ld d,b			;8b35	50		P
	ld d,h			;8b36	54		T
	jr nz,l8b88h		;8b37	20 4f		  O
	ld d,d			;8b39	52		R
	jr nz,l8b7fh		;8b3a	20 43		  C
	ld b,c			;8b3c	41		A
	ld c,(hl)		;8b3d	4e		N
	ld b,e			;8b3e	43		C
	ld b,l			;8b3f	45		E
	ld c,h			;8b40	4c		L
	jr nz,l8b97h		;8b41	20 54		  T
	ld c,a			;8b43	4f		O
	jr nz,$+71		;8b44	20 45		  E
	ld e,b			;8b46	58		X
	ld c,c			;8b47	49		I
	ld d,h			;8b48	54		T
	ld l,000h		;8b49	2e 00		. .
l8b4bh:
	dec c			;8b4b	0d		.
	ld a,(bc)		;8b4c	0a		.
	jr nz,l8b9ch		;8b4d	20 4d		  M
	ld c,a			;8b4f	4f		O
	ld c,(hl)		;8b50	4e		N
	ld c,c			;8b51	49		I
	ld d,h			;8b52	54		T
	ld c,a			;8b53	4f		O
	ld d,d			;8b54	52		R
	jr nz,l8b9ah		;8b55	20 43		  C
	ld c,a			;8b57	4f		O
	ld c,h			;8b58	4c		L
	ld c,a			;8b59	4f		O
	ld d,d			;8b5a	52		R
	jr nz,l8bb1h		;8b5b	20 54		  T
	ld b,l			;8b5d	45		E
	ld d,e			;8b5e	53		S
	ld d,h			;8b5f	54		T
	dec c			;8b60	0d		.
	ld a,(bc)		;8b61	0a		.
	nop			;8b62	00		.
l8b63h:
	dec c			;8b63	0d		.
	ld a,(bc)		;8b64	0a		.
l8b65h:
	jr nz,l8b35h		;8b65	20 ce		  .
	jr nz,l8bb9h		;8b67	20 50		  P
	ld d,d			;8b69	52		R
	ld b,l			;8b6a	45		E
	ld d,e			;8b6b	53		S
	ld d,e			;8b6c	53		S
	jr nz,l8bbbh		;8b6d	20 4c		  L
	ld b,l			;8b6f	45		E
	ld b,(hl)		;8b70	46		F
	ld d,h			;8b71	54		T
	cpl			;8b72	2f		/
l8b73h:
	ld d,d			;8b73	52		R
	ld c,c			;8b74	49		I
	ld b,a			;8b75	47		G
	ld c,b			;8b76	48		H
	ld d,h			;8b77	54		T
	jr nz,l8bceh		;8b78	20 54		  T
	ld c,a			;8b7a	4f		O
	jr nz,l8bc0h		;8b7b	20 43		  C
	ld c,b			;8b7d	48		H
	ld b,c			;8b7e	41		A
l8b7fh:
	ld c,(hl)		;8b7f	4e		N
	ld b,a			;8b80	47		G
	ld b,l			;8b81	45		E
	dec c			;8b82	0d		.
	ld a,(bc)		;8b83	0a		.
	jr nz,$+34		;8b84	20 20		   
	jr nz,l8bdch		;8b86	20 54		  T
l8b88h:
	ld c,b			;8b88	48		H
	ld b,l			;8b89	45		E
	jr nz,l8bcfh		;8b8a	20 43		  C
	ld c,a			;8b8c	4f		O
	ld c,h			;8b8d	4c		L
	ld c,a			;8b8e	4f		O
	ld d,d			;8b8f	52		R
	ld l,00dh		;8b90	2e 0d		. .
	ld a,(bc)		;8b92	0a		.
	dec c			;8b93	0d		.
	ld a,(bc)		;8b94	0a		.
	jr nz,l8b65h		;8b95	20 ce		  .
l8b97h:
	jr nz,l8be9h		;8b97	20 50		  P
	ld d,d			;8b99	52		R
l8b9ah:
	ld b,l			;8b9a	45		E
	ld d,e			;8b9b	53		S
l8b9ch:
	ld d,e			;8b9c	53		S
	jr nz,l8bf4h		;8b9d	20 55		  U
	ld d,b			;8b9f	50		P
	cpl			;8ba0	2f		/
	ld b,h			;8ba1	44		D
	ld c,a			;8ba2	4f		O
	ld d,a			;8ba3	57		W
	ld c,(hl)		;8ba4	4e		N
	jr nz,l8bfbh		;8ba5	20 54		  T
	ld c,a			;8ba7	4f		O
	jr nz,l8bedh		;8ba8	20 43		  C
	ld c,b			;8baa	48		H
	ld b,c			;8bab	41		A
	ld c,(hl)		;8bac	4e		N
	ld b,a			;8bad	47		G
	ld b,l			;8bae	45		E
	dec c			;8baf	0d		.
	ld a,(bc)		;8bb0	0a		.
l8bb1h:
	jr nz,l8bd3h		;8bb1	20 20		   
	jr nz,l8c09h		;8bb3	20 54		  T
	ld c,b			;8bb5	48		H
	ld b,l			;8bb6	45		E
	jr nz,l8c0ch		;8bb7	20 53		  S
l8bb9h:
	ld d,b			;8bb9	50		P
	ld b,l			;8bba	45		E
l8bbbh:
	ld b,l			;8bbb	45		E
	ld b,h			;8bbc	44		D
	jr nz,l8be7h		;8bbd	20 28		  (
	ld c,c			;8bbf	49		I
l8bc0h:
	ld b,(hl)		;8bc0	46		F
	jr nz,l8c04h		;8bc1	20 41		  A
	ld d,(hl)		;8bc3	56		V
	ld b,c			;8bc4	41		A
	ld c,c			;8bc5	49		I
	ld c,h			;8bc6	4c		L
	ld b,c			;8bc7	41		A
	ld b,d			;8bc8	42		B
	ld c,h			;8bc9	4c		L
	ld b,l			;8bca	45		E
	add hl,hl		;8bcb	29		)
	ld l,00dh		;8bcc	2e 0d		. .
l8bceh:
	ld a,(bc)		;8bce	0a		.
l8bcfh:
	nop			;8bcf	00		.
l8bd0h:
	jr nz,l8c26h		;8bd0	20 54		  T
	ld b,l			;8bd2	45		E
l8bd3h:
	ld d,e			;8bd3	53		S
	ld d,h			;8bd4	54		T
	nop			;8bd5	00		.
l8bd6h:
	ld d,a			;8bd6	57		W
	ld c,b			;8bd7	48		H
	ld c,c			;8bd8	49		I
	ld d,h			;8bd9	54		T
	ld b,l			;8bda	45		E
	nop			;8bdb	00		.
l8bdch:
	ld b,d			;8bdc	42		B
	ld c,h			;8bdd	4c		L
	ld b,c			;8bde	41		A
	ld b,e			;8bdf	43		C
	ld c,e			;8be0	4b		K
l8be1h:
	nop			;8be1	00		.
l8be2h:
	ld d,d			;8be2	52		R
	ld b,l			;8be3	45		E
	ld b,h			;8be4	44		D
	nop			;8be5	00		.
l8be6h:
	ld b,a			;8be6	47		G
l8be7h:
	ld d,d			;8be7	52		R
	ld b,l			;8be8	45		E
l8be9h:
	ld b,l			;8be9	45		E
	ld c,(hl)		;8bea	4e		N
	nop			;8beb	00		.
l8bech:
	ld b,d			;8bec	42		B
l8bedh:
	ld c,h			;8bed	4c		L
	ld d,l			;8bee	55		U
	ld b,l			;8bef	45		E
	jr nz,l8bf2h		;8bf0	20 00		  .
l8bf2h:
	ld c,h			;8bf2	4c		L
	ld c,a			;8bf3	4f		O
l8bf4h:
	ld c,a			;8bf4	4f		O
	ld d,b			;8bf5	50		P
	ld c,c			;8bf6	49		I
	ld c,(hl)		;8bf7	4e		N
	ld b,a			;8bf8	47		G
	nop			;8bf9	00		.
l8bfah:
	dec c			;8bfa	0d		.
l8bfbh:
	ld a,(bc)		;8bfb	0a		.
	jr nz,l8c4bh		;8bfc	20 4d		  M
	ld c,c			;8bfe	49		I
	ld e,b			;8bff	58		X
	ld b,l			;8c00	45		E
	ld b,h			;8c01	44		D
	jr nz,l8c51h		;8c02	20 4d		  M
l8c04h:
	ld c,a			;8c04	4f		O
	ld b,h			;8c05	44		D
	ld b,l			;8c06	45		E
	jr nz,l8c5dh		;8c07	20 54		  T
l8c09h:
	ld b,l			;8c09	45		E
	ld d,e			;8c0a	53		S
	ld d,h			;8c0b	54		T
l8c0ch:
	dec c			;8c0c	0d		.
	ld a,(bc)		;8c0d	0a		.
	nop			;8c0e	00		.
l8c0fh:
	dec c			;8c0f	0d		.
	ld a,(bc)		;8c10	0a		.
	jr nz,l8be1h		;8c11	20 ce		  .
	jr nz,$+91		;8c13	20 59		  Y
	ld c,a			;8c15	4f		O
	ld d,l			;8c16	55		U
	jr nz,l8c66h		;8c17	20 4d		  M
	ld d,l			;8c19	55		U
	ld d,e			;8c1a	53		S
	ld d,h			;8c1b	54		T
	jr nz,l8c71h		;8c1c	20 53		  S
	ld b,l			;8c1e	45		E
	ld b,l			;8c1f	45		E
	jr nz,l8c55h		;8c20	20 33		  3
	jr nz,l8c78h		;8c22	20 54		  T
	ld b,l			;8c24	45		E
	ld e,b			;8c25	58		X
l8c26h:
	ld d,h			;8c26	54		T
	jr nz,l8c6bh		;8c27	20 42		  B
	ld c,h			;8c29	4c		L
	ld c,a			;8c2a	4f		O
	ld b,e			;8c2b	43		C
	ld c,e			;8c2c	4b		K
	ld d,e			;8c2d	53		S
	jr nz,l8c79h		;8c2e	20 49		  I
	ld b,(hl)		;8c30	46		F
	dec c			;8c31	0d		.
	ld a,(bc)		;8c32	0a		.
	jr nz,l8c55h		;8c33	20 20		   
	jr nz,l8c90h		;8c35	20 59		  Y
	ld c,a			;8c37	4f		O
	ld d,l			;8c38	55		U
	ld d,d			;8c39	52		R
	jr nz,l8c92h		;8c3a	20 56		  V
	ld b,h			;8c3c	44		D
	ld d,b			;8c3d	50		P
	jr nz,$+85		;8c3e	20 53		  S
	ld d,l			;8c40	55		U
	ld d,b			;8c41	50		P
	ld d,b			;8c42	50		P
	ld c,a			;8c43	4f		O
	ld d,d			;8c44	52		R
	ld d,h			;8c45	54		T
	ld d,e			;8c46	53		S
	jr nz,l8c96h		;8c47	20 4d		  M
	ld c,c			;8c49	49		I
	ld e,b			;8c4a	58		X
l8c4bh:
	ld b,l			;8c4b	45		E
	ld b,h			;8c4c	44		D
	jr nz,l8c9ch		;8c4d	20 4d		  M
	ld c,a			;8c4f	4f		O
	ld b,h			;8c50	44		D
l8c51h:
	ld b,l			;8c51	45		E
	ld l,00dh		;8c52	2e 0d		. .
	ld a,(bc)		;8c54	0a		.
l8c55h:
	nop			;8c55	00		.
l8c56h:
	jr nz,l8c78h		;8c56	20 20		   
	ld e,c			;8c58	59		Y
	ld c,a			;8c59	4f		O
	ld d,l			;8c5a	55		U
	jr nz,l8caah		;8c5b	20 4d		  M
l8c5dh:
	ld d,l			;8c5d	55		U
	ld d,e			;8c5e	53		S
	ld d,h			;8c5f	54		T
	jr nz,l8cb5h		;8c60	20 53		  S
	ld b,l			;8c62	45		E
	ld b,l			;8c63	45		E
	jr nz,l8cb3h		;8c64	20 4d		  M
l8c66h:
	ld b,l			;8c66	45		E
	jr nz,l8cbdh		;8c67	20 54		  T
	ld c,b			;8c69	48		H
	ld d,d			;8c6a	52		R
l8c6bh:
	ld b,l			;8c6b	45		E
	ld b,l			;8c6c	45		E
	jr nz,l8cc3h		;8c6d	20 54		  T
	ld c,c			;8c6f	49		I
	ld c,l			;8c70	4d		M
l8c71h:
	ld b,l			;8c71	45		E
	ld d,e			;8c72	53		S
	jr nz,l8c95h		;8c73	20 20		   
	jr nz,l8c97h		;8c75	20 20		   
	ld d,d			;8c77	52		R
l8c78h:
	ld b,c			;8c78	41		A
l8c79h:
	ld c,l			;8c79	4d		M
	jr nz,l8cc8h		;8c7a	20 4c		  L
	ld b,c			;8c7c	41		A
	ld e,c			;8c7d	59		Y
	ld c,a			;8c7e	4f		O
	ld d,l			;8c7f	55		U
	ld d,h			;8c80	54		T
	dec c			;8c81	0d		.
	ld a,(bc)		;8c82	0a		.
	nop			;8c83	00		.
l8c84h:
	jr nz,l8cd9h		;8c84	20 53		  S
	ld c,h			;8c86	4c		L
	ld c,a			;8c87	4f		O
	ld d,h			;8c88	54		T
	jr nz,l8cabh		;8c89	20 20		   
	jr nz,$+82		;8c8b	20 50		  P
	ld b,c			;8c8d	41		A
	ld b,a			;8c8e	47		G
	ld b,l			;8c8f	45		E
l8c90h:
	jr nz,$+50		;8c90	20 30		  0
l8c92h:
	jr nz,l8cb4h		;8c92	20 20		   
	ld d,b			;8c94	50		P
l8c95h:
	ld b,c			;8c95	41		A
l8c96h:
	ld b,a			;8c96	47		G
l8c97h:
	ld b,l			;8c97	45		E
	jr nz,l8ccbh		;8c98	20 31		  1
	jr nz,l8cbch		;8c9a	20 20		   
l8c9ch:
	ld d,b			;8c9c	50		P
	ld b,c			;8c9d	41		A
	ld b,a			;8c9e	47		G
	ld b,l			;8c9f	45		E
	jr nz,l8cd4h		;8ca0	20 32		  2
	jr nz,l8cc4h		;8ca2	20 20		   
	ld d,b			;8ca4	50		P
	ld b,c			;8ca5	41		A
	ld b,a			;8ca6	47		G
	ld b,l			;8ca7	45		E
	jr nz,$+53		;8ca8	20 33		  3
l8caah:
	dec c			;8caa	0d		.
l8cabh:
	ld a,(bc)		;8cab	0a		.
	nop			;8cac	00		.
l8cadh:
	jr nz,l8ccfh		;8cad	20 20		   
	jr nc,l8cdeh		;8caf	30 2d		0 -
	jr nc,l8cd3h		;8cb1	30 20		0  
l8cb3h:
	nop			;8cb3	00		.
l8cb4h:
	ld c,l			;8cb4	4d		M
l8cb5h:
	ld b,c			;8cb5	41		A
	ld d,b			;8cb6	50		P
	ld d,b			;8cb7	50		P
	ld b,l			;8cb8	45		E
	ld b,h			;8cb9	44		D
	nop			;8cba	00		.
l8cbbh:
	ld d,b			;8cbb	50		P
l8cbch:
	ld b,c			;8cbc	41		A
l8cbdh:
	ld b,a			;8cbd	47		G
	ld b,l			;8cbe	45		E
	ld d,e			;8cbf	53		S
	nop			;8cc0	00		.
	jr nz,l8d0ch		;8cc1	20 49		  I
l8cc3h:
	ld c,(hl)		;8cc3	4e		N
l8cc4h:
	jr nz,l8cc6h		;8cc4	20 00		  .
l8cc6h:
	jr nz,l8d1bh		;8cc6	20 53		  S
l8cc8h:
	ld b,l			;8cc8	45		E
	ld c,h			;8cc9	4c		L
	ld b,l			;8cca	45		E
l8ccbh:
	ld b,e			;8ccb	43		C
	ld d,h			;8ccc	54		T
	jr nz,l8d10h		;8ccd	20 41		  A
l8ccfh:
	jr nz,l8d24h		;8ccf	20 53		  S
	ld c,h			;8cd1	4c		L
	ld c,a			;8cd2	4f		O
l8cd3h:
	ld d,h			;8cd3	54		T
l8cd4h:
	jr nz,l8d2ah		;8cd4	20 54		  T
	ld c,a			;8cd6	4f		O
	jr nz,l8d2dh		;8cd7	20 54		  T
l8cd9h:
	ld b,l			;8cd9	45		E
	ld d,e			;8cda	53		S
	ld d,h			;8cdb	54		T
	jr nz,l8d1fh		;8cdc	20 41		  A
l8cdeh:
	ld c,(hl)		;8cde	4e		N
	ld b,h			;8cdf	44		D
	jr nz,l8d32h		;8ce0	20 50		  P
	ld d,d			;8ce2	52		R
	ld b,l			;8ce3	45		E
	ld d,e			;8ce4	53		S
	ld d,e			;8ce5	53		S
	dec c			;8ce6	0d		.
	ld a,(bc)		;8ce7	0a		.
	jr nz,l8d2bh		;8ce8	20 41		  A
	ld b,e			;8cea	43		C
	ld b,e			;8ceb	43		C
	ld b,l			;8cec	45		E
	ld d,b			;8ced	50		P
	ld d,h			;8cee	54		T
	jr nz,l8d40h		;8cef	20 4f		  O
	ld d,d			;8cf1	52		R
	jr nz,l8d44h		;8cf2	20 50		  P
	ld d,d			;8cf4	52		R
	ld b,l			;8cf5	45		E
	ld d,e			;8cf6	53		S
	ld d,e			;8cf7	53		S
	jr nz,$+69		;8cf8	20 43		  C
	ld b,c			;8cfa	41		A
	ld c,(hl)		;8cfb	4e		N
	ld b,e			;8cfc	43		C
	ld b,l			;8cfd	45		E
	ld c,h			;8cfe	4c		L
	jr nz,$+86		;8cff	20 54		  T
	ld c,a			;8d01	4f		O
	jr nz,l8d49h		;8d02	20 45		  E
	ld e,b			;8d04	58		X
	ld c,c			;8d05	49		I
	ld d,h			;8d06	54		T
	ld l,000h		;8d07	2e 00		. .
	ld d,h			;8d09	54		T
	ld b,l			;8d0a	45		E
	ld d,e			;8d0b	53		S
l8d0ch:
	ld d,h			;8d0c	54		T
	ld c,c			;8d0d	49		I
	ld c,(hl)		;8d0e	4e		N
	ld b,a			;8d0f	47		G
l8d10h:
	jr nz,$+85		;8d10	20 53		  S
	ld c,h			;8d12	4c		L
	ld c,a			;8d13	4f		O
	ld d,h			;8d14	54		T
	jr nz,l8d17h		;8d15	20 00		  .
l8d17h:
	ld d,b			;8d17	50		P
	ld b,c			;8d18	41		A
	ld b,a			;8d19	47		G
	ld b,l			;8d1a	45		E
l8d1bh:
	jr nz,l8d1dh		;8d1b	20 00		  .
l8d1dh:
	jr nz,l8d64h		;8d1d	20 45		  E
l8d1fh:
	ld d,d			;8d1f	52		R
	ld d,d			;8d20	52		R
	ld c,a			;8d21	4f		O
	ld d,d			;8d22	52		R
	ld d,e			;8d23	53		S
l8d24h:
	jr nz,l8d6ch		;8d24	20 46		  F
	ld c,a			;8d26	4f		O
	ld d,l			;8d27	55		U
	ld c,(hl)		;8d28	4e		N
	ld b,h			;8d29	44		D
l8d2ah:
	nop			;8d2a	00		.
l8d2bh:
	dec c			;8d2b	0d		.
	ld a,(bc)		;8d2c	0a		.
l8d2dh:
	nop			;8d2d	00		.
l8d2eh:
	ret nz			;8d2e	c0		.
	ret po			;8d2f	e0		.
	ret p			;8d30	f0		.
	ret m			;8d31	f8		.
l8d32h:
	ret p			;8d32	f0		.
	ret po			;8d33	e0		.
	ret nz			;8d34	c0		.
	nop			;8d35	00		.
	call m,0fcfch		;8d36	fc fc fc	. . .
	call m,0fcfch		;8d39	fc fc fc	. . .
	call m,00000h		;8d3c	fc 00 00	. . .
	nop			;8d3f	00		.
l8d40h:
	ld a,b			;8d40	78		x
	ld a,b			;8d41	78		x
	ld a,b			;8d42	78		x
	nop			;8d43	00		.
l8d44h:
	nop			;8d44	00		.
	nop			;8d45	00		.
	nop			;8d46	00		.
	nop			;8d47	00		.
	nop			;8d48	00		.
l8d49h:
	rst 38h			;8d49	ff		.
	nop			;8d4a	00		.
	nop			;8d4b	00		.
	nop			;8d4c	00		.
	nop			;8d4d	00		.
	djnz l8d60h		;8d4e	10 10		. .
	djnz l8d62h		;8d50	10 10		. .
	djnz l8d64h		;8d52	10 10		. .
	djnz l8d66h		;8d54	10 10		. .
	nop			;8d56	00		.
	nop			;8d57	00		.
	nop			;8d58	00		.
	inc e			;8d59	1c		.
	djnz l8d6ch		;8d5a	10 10		. .
	djnz l8d6eh		;8d5c	10 10		. .
	nop			;8d5e	00		.
	nop			;8d5f	00		.
l8d60h:
	nop			;8d60	00		.
	ret p			;8d61	f0		.
l8d62h:
	djnz l8d74h		;8d62	10 10		. .
l8d64h:
	djnz l8d76h		;8d64	10 10		. .
l8d66h:
	djnz l8d78h		;8d66	10 10		. .
	djnz l8d86h		;8d68	10 1c		. .
	nop			;8d6a	00		.
	nop			;8d6b	00		.
l8d6ch:
	nop			;8d6c	00		.
	nop			;8d6d	00		.
l8d6eh:
	djnz l8d80h		;8d6e	10 10		. .
	djnz l8d62h		;8d70	10 f0		. .
l8d72h:
	nop			;8d72	00		.
	nop			;8d73	00		.
l8d74h:
	nop			;8d74	00		.
	nop			;8d75	00		.
l8d76h:
	djnz l8d88h		;8d76	10 10		. .
l8d78h:
	djnz l8d96h		;8d78	10 1c		. .
	djnz l8d8ch		;8d7a	10 10		. .
	djnz l8d8eh		;8d7c	10 10		. .
	djnz l8d90h		;8d7e	10 10		. .
l8d80h:
	djnz l8d72h		;8d80	10 f0		. .
	djnz l8d94h		;8d82	10 10		. .
	djnz l8d96h		;8d84	10 10		. .
l8d86h:
	djnz l8d98h		;8d86	10 10		. .
l8d88h:
	djnz l8d86h		;8d88	10 fc		. .
	djnz l8d9ch		;8d8a	10 10		. .
l8d8ch:
	djnz l8d9eh		;8d8c	10 10		. .
l8d8eh:
	nop			;8d8e	00		.
	nop			;8d8f	00		.
l8d90h:
	nop			;8d90	00		.
	call m,01010h		;8d91	fc 10 10	. . .
l8d94h:
	djnz l8da6h		;8d94	10 10		. .
l8d96h:
	djnz l8da8h		;8d96	10 10		. .
l8d98h:
	djnz l8d96h		;8d98	10 fc		. .
	nop			;8d9a	00		.
	nop			;8d9b	00		.
l8d9ch:
	nop			;8d9c	00		.
	nop			;8d9d	00		.
l8d9eh:
	nop			;8d9e	00		.
	djnz l8dd9h		;8d9f	10 38		. 8
	ld a,h			;8da1	7c		|
	jr c,l8db4h		;8da2	38 10		8 .
	nop			;8da4	00		.
	nop			;8da5	00		.
l8da6h:
	jr nc,$+122		;8da6	30 78		0 x
l8da8h:
	ld a,b			;8da8	78		x
	jr nc,l8dabh		;8da9	30 00		0 .
l8dabh:
	jr nc,l8dddh		;8dab	30 30		0 0
	nop			;8dad	00		.
l8daeh:
	jr nc,l8de1h		;8dae	30 31		0 1
	ld (03433h),a		;8db0	32 33 34	2 3 4
	dec (hl)		;8db3	35		5
l8db4h:
	ld (hl),037h		;8db4	36 37		6 7
l8db6h:
	jr c,l8df1h		;8db6	38 39		8 9
	dec l			;8db8	2d		-
	dec a			;8db9	3d		=
	ld e,h			;8dba	5c		\
	ld e,e			;8dbb	5b		[
	ld e,l			;8dbc	5d		]
	dec sp			;8dbd	3b		;
	daa			;8dbe	27		'
	ld h,b			;8dbf	60		`
	inc l			;8dc0	2c		,
	ld l,02fh		;8dc1	2e 2f		. /
	pop bc			;8dc3	c1		.
	ld b,c			;8dc4	41		A
	ld b,d			;8dc5	42		B
	ld b,e			;8dc6	43		C
	ld b,h			;8dc7	44		D
	ld b,l			;8dc8	45		E
	ld b,(hl)		;8dc9	46		F
	ld b,a			;8dca	47		G
	ld c,b			;8dcb	48		H
	ld c,c			;8dcc	49		I
	ld c,d			;8dcd	4a		J
	ld c,e			;8dce	4b		K
	ld c,h			;8dcf	4c		L
	ld c,l			;8dd0	4d		M
	ld c,(hl)		;8dd1	4e		N
	ld c,a			;8dd2	4f		O
	ld d,b			;8dd3	50		P
	ld d,c			;8dd4	51		Q
	ld d,d			;8dd5	52		R
	ld d,e			;8dd6	53		S
	ld d,h			;8dd7	54		T
	ld d,l			;8dd8	55		U
l8dd9h:
	ld d,(hl)		;8dd9	56		V
	ld d,a			;8dda	57		W
	ld e,b			;8ddb	58		X
	ld e,c			;8ddc	59		Y
l8dddh:
	ld e,d			;8ddd	5a		Z
l8ddeh:
	jr c,l8e19h		;8dde	38 39		8 9
	add hl,hl		;8de0	29		)
l8de1h:
	dec l			;8de1	2d		-
	inc a			;8de2	3c		<
	ld e,(hl)		;8de3	5e		^
	inc h			;8de4	24		$
	ld c,l			;8de5	4d		M
	dec h			;8de6	25		%
	inc hl			;8de7	23		#
	dec sp			;8de8	3b		;
	ld a,(0c13dh)		;8de9	3a 3d c1	: = .
	ld d,c			;8dec	51		Q
	ld b,d			;8ded	42		B
	ld b,e			;8dee	43		C
	ld b,h			;8def	44		D
	ld b,l			;8df0	45		E
l8df1h:
	ld b,(hl)		;8df1	46		F
	ld b,a			;8df2	47		G
	ld c,b			;8df3	48		H
	ld c,c			;8df4	49		I
	ld c,d			;8df5	4a		J
	ld c,e			;8df6	4b		K
	ld c,h			;8df7	4c		L
	inc l			;8df8	2c		,
	ld c,(hl)		;8df9	4e		N
	ld c,a			;8dfa	4f		O
	ld d,b			;8dfb	50		P
	ld b,c			;8dfc	41		A
	ld d,d			;8dfd	52		R
	ld d,e			;8dfe	53		S
	ld d,h			;8dff	54		T
	ld d,l			;8e00	55		U
	ld d,(hl)		;8e01	56		V
	ld e,d			;8e02	5a		Z
	ld e,b			;8e03	58		X
	ld e,c			;8e04	59		Y
	ld d,a			;8e05	57		W
l8e06h:
	pop bc			;8e06	c1		.
	pop bc			;8e07	c1		.
	pop bc			;8e08	c1		.
	pop bc			;8e09	c1		.
	pop bc			;8e0a	c1		.
	pop bc			;8e0b	c1		.
	pop bc			;8e0c	c1		.
	pop bc			;8e0d	c1		.
	pop bc			;8e0e	c1		.
	pop bc			;8e0f	c1		.
	pop bc			;8e10	c1		.
	pop bc			;8e11	c1		.
	pop bc			;8e12	c1		.
	pop bc			;8e13	c1		.
	pop bc			;8e14	c1		.
	pop bc			;8e15	c1		.
	pop bc			;8e16	c1		.
	pop bc			;8e17	c1		.
	pop bc			;8e18	c1		.
l8e19h:
	pop bc			;8e19	c1		.
	pop bc			;8e1a	c1		.
	pop bc			;8e1b	c1		.
	pop bc			;8e1c	c1		.
	pop bc			;8e1d	c1		.
	ld hl,(02f2bh)		;8e1e	2a 2b 2f	* + /
	jr nc,l8e54h		;8e21	30 31		0 1
	ld (03433h),a		;8e23	32 33 34	2 3 4
	dec (hl)		;8e26	35		5
	ld (hl),037h		;8e27	36 37		6 7
	jr c,l8e64h		;8e29	38 39		8 9
	dec l			;8e2b	2d		-
	inc l			;8e2c	2c		,
	ld l,000h		;8e2d	2e 00		. .
	nop			;8e2f	00		.
	nop			;8e30	00		.
	nop			;8e31	00		.
	nop			;8e32	00		.
	nop			;8e33	00		.
	nop			;8e34	00		.
	nop			;8e35	00		.
	nop			;8e36	00		.
	nop			;8e37	00		.
	nop			;8e38	00		.
	nop			;8e39	00		.
	nop			;8e3a	00		.
	nop			;8e3b	00		.
	nop			;8e3c	00		.
	nop			;8e3d	00		.
	nop			;8e3e	00		.
	nop			;8e3f	00		.
	nop			;8e40	00		.
	nop			;8e41	00		.
	nop			;8e42	00		.
	nop			;8e43	00		.
	nop			;8e44	00		.
	nop			;8e45	00		.
	nop			;8e46	00		.
	nop			;8e47	00		.
	nop			;8e48	00		.
	nop			;8e49	00		.
	nop			;8e4a	00		.
	nop			;8e4b	00		.
	nop			;8e4c	00		.
	nop			;8e4d	00		.
	nop			;8e4e	00		.
	nop			;8e4f	00		.
	nop			;8e50	00		.
	nop			;8e51	00		.
	nop			;8e52	00		.
	nop			;8e53	00		.
l8e54h:
	nop			;8e54	00		.
	nop			;8e55	00		.
	nop			;8e56	00		.
	nop			;8e57	00		.
	nop			;8e58	00		.
	nop			;8e59	00		.
	nop			;8e5a	00		.
	nop			;8e5b	00		.
	nop			;8e5c	00		.
	nop			;8e5d	00		.
	nop			;8e5e	00		.
	nop			;8e5f	00		.
	nop			;8e60	00		.
	nop			;8e61	00		.
	nop			;8e62	00		.
	nop			;8e63	00		.
l8e64h:
	nop			;8e64	00		.
	nop			;8e65	00		.
	nop			;8e66	00		.
	nop			;8e67	00		.
	nop			;8e68	00		.
	nop			;8e69	00		.
	nop			;8e6a	00		.
	nop			;8e6b	00		.
	nop			;8e6c	00		.
	nop			;8e6d	00		.
	nop			;8e6e	00		.
	nop			;8e6f	00		.
	nop			;8e70	00		.
	nop			;8e71	00		.
	nop			;8e72	00		.
	nop			;8e73	00		.
	nop			;8e74	00		.
	nop			;8e75	00		.
	nop			;8e76	00		.
	nop			;8e77	00		.
	nop			;8e78	00		.
	nop			;8e79	00		.
	nop			;8e7a	00		.
	nop			;8e7b	00		.
	nop			;8e7c	00		.
	nop			;8e7d	00		.
	nop			;8e7e	00		.
	nop			;8e7f	00		.
	nop			;8e80	00		.
	nop			;8e81	00		.
	nop			;8e82	00		.
	nop			;8e83	00		.
	nop			;8e84	00		.
	nop			;8e85	00		.
	nop			;8e86	00		.
	nop			;8e87	00		.
	nop			;8e88	00		.
	nop			;8e89	00		.
	nop			;8e8a	00		.
	nop			;8e8b	00		.
	nop			;8e8c	00		.
	nop			;8e8d	00		.
	nop			;8e8e	00		.
	nop			;8e8f	00		.
	nop			;8e90	00		.
	nop			;8e91	00		.
	nop			;8e92	00		.
	nop			;8e93	00		.
	nop			;8e94	00		.
	nop			;8e95	00		.
	nop			;8e96	00		.
	nop			;8e97	00		.
	nop			;8e98	00		.
	nop			;8e99	00		.
	nop			;8e9a	00		.
	nop			;8e9b	00		.
	nop			;8e9c	00		.
	nop			;8e9d	00		.
	nop			;8e9e	00		.
	nop			;8e9f	00		.
	nop			;8ea0	00		.
	nop			;8ea1	00		.
	nop			;8ea2	00		.
	nop			;8ea3	00		.
	nop			;8ea4	00		.
	nop			;8ea5	00		.
	nop			;8ea6	00		.
	nop			;8ea7	00		.
	nop			;8ea8	00		.
	nop			;8ea9	00		.
	nop			;8eaa	00		.
	nop			;8eab	00		.
	nop			;8eac	00		.
	nop			;8ead	00		.
	nop			;8eae	00		.
	nop			;8eaf	00		.
	nop			;8eb0	00		.
	nop			;8eb1	00		.
	nop			;8eb2	00		.
	nop			;8eb3	00		.
	nop			;8eb4	00		.
	nop			;8eb5	00		.
	nop			;8eb6	00		.
	nop			;8eb7	00		.
	nop			;8eb8	00		.
	nop			;8eb9	00		.
	nop			;8eba	00		.
	nop			;8ebb	00		.
	nop			;8ebc	00		.
	nop			;8ebd	00		.
	nop			;8ebe	00		.
	nop			;8ebf	00		.
	nop			;8ec0	00		.
	nop			;8ec1	00		.
	nop			;8ec2	00		.
	nop			;8ec3	00		.
	nop			;8ec4	00		.
	nop			;8ec5	00		.
	nop			;8ec6	00		.
	nop			;8ec7	00		.
	nop			;8ec8	00		.
	nop			;8ec9	00		.
	nop			;8eca	00		.
	nop			;8ecb	00		.
	nop			;8ecc	00		.
	nop			;8ecd	00		.
	nop			;8ece	00		.
	nop			;8ecf	00		.
	nop			;8ed0	00		.
	nop			;8ed1	00		.
	nop			;8ed2	00		.
	nop			;8ed3	00		.
	nop			;8ed4	00		.
	nop			;8ed5	00		.
	nop			;8ed6	00		.
	nop			;8ed7	00		.
	nop			;8ed8	00		.
	nop			;8ed9	00		.
	nop			;8eda	00		.
	nop			;8edb	00		.
	nop			;8edc	00		.
	nop			;8edd	00		.
	nop			;8ede	00		.
	nop			;8edf	00		.
	nop			;8ee0	00		.
	nop			;8ee1	00		.
	nop			;8ee2	00		.
	nop			;8ee3	00		.
	nop			;8ee4	00		.
	nop			;8ee5	00		.
	nop			;8ee6	00		.
	nop			;8ee7	00		.
	nop			;8ee8	00		.
	nop			;8ee9	00		.
	nop			;8eea	00		.
	nop			;8eeb	00		.
	nop			;8eec	00		.
	nop			;8eed	00		.
	nop			;8eee	00		.
	nop			;8eef	00		.
	nop			;8ef0	00		.
	nop			;8ef1	00		.
	nop			;8ef2	00		.
	nop			;8ef3	00		.
	nop			;8ef4	00		.
	nop			;8ef5	00		.
	nop			;8ef6	00		.
	nop			;8ef7	00		.
	nop			;8ef8	00		.
	nop			;8ef9	00		.
	nop			;8efa	00		.
	nop			;8efb	00		.
	nop			;8efc	00		.
	nop			;8efd	00		.
	nop			;8efe	00		.
	nop			;8eff	00		.
	nop			;8f00	00		.
	nop			;8f01	00		.
	nop			;8f02	00		.
	nop			;8f03	00		.
	nop			;8f04	00		.
	nop			;8f05	00		.
	nop			;8f06	00		.
	nop			;8f07	00		.
	nop			;8f08	00		.
	nop			;8f09	00		.
	nop			;8f0a	00		.
	nop			;8f0b	00		.
	nop			;8f0c	00		.
	nop			;8f0d	00		.
	nop			;8f0e	00		.
	nop			;8f0f	00		.
	nop			;8f10	00		.
	nop			;8f11	00		.
	nop			;8f12	00		.
	nop			;8f13	00		.
	nop			;8f14	00		.
	nop			;8f15	00		.
	nop			;8f16	00		.
	nop			;8f17	00		.
	nop			;8f18	00		.
	nop			;8f19	00		.
	nop			;8f1a	00		.
	nop			;8f1b	00		.
	nop			;8f1c	00		.
	nop			;8f1d	00		.
	nop			;8f1e	00		.
	nop			;8f1f	00		.
	nop			;8f20	00		.
	nop			;8f21	00		.
	nop			;8f22	00		.
	nop			;8f23	00		.
	nop			;8f24	00		.
	nop			;8f25	00		.
	nop			;8f26	00		.
	nop			;8f27	00		.
	nop			;8f28	00		.
	nop			;8f29	00		.
	nop			;8f2a	00		.
	nop			;8f2b	00		.
	nop			;8f2c	00		.
	nop			;8f2d	00		.
	nop			;8f2e	00		.
	nop			;8f2f	00		.
	nop			;8f30	00		.
	nop			;8f31	00		.
	nop			;8f32	00		.
	nop			;8f33	00		.
	nop			;8f34	00		.
	nop			;8f35	00		.
	nop			;8f36	00		.
	nop			;8f37	00		.
	nop			;8f38	00		.
	nop			;8f39	00		.
	nop			;8f3a	00		.
	nop			;8f3b	00		.
	nop			;8f3c	00		.
	nop			;8f3d	00		.
	nop			;8f3e	00		.
	nop			;8f3f	00		.
	nop			;8f40	00		.
	nop			;8f41	00		.
	nop			;8f42	00		.
	nop			;8f43	00		.
	nop			;8f44	00		.
	nop			;8f45	00		.
	nop			;8f46	00		.
	nop			;8f47	00		.
	nop			;8f48	00		.
	nop			;8f49	00		.
	nop			;8f4a	00		.
	nop			;8f4b	00		.
	nop			;8f4c	00		.
	nop			;8f4d	00		.
	nop			;8f4e	00		.
	nop			;8f4f	00		.
	nop			;8f50	00		.
	nop			;8f51	00		.
	nop			;8f52	00		.
	nop			;8f53	00		.
	nop			;8f54	00		.
	nop			;8f55	00		.
	nop			;8f56	00		.
	nop			;8f57	00		.
	nop			;8f58	00		.
	nop			;8f59	00		.
	nop			;8f5a	00		.
	nop			;8f5b	00		.
	nop			;8f5c	00		.
	nop			;8f5d	00		.
	nop			;8f5e	00		.
	nop			;8f5f	00		.
	nop			;8f60	00		.
	nop			;8f61	00		.
	nop			;8f62	00		.
	nop			;8f63	00		.
	nop			;8f64	00		.
	nop			;8f65	00		.
	nop			;8f66	00		.
	nop			;8f67	00		.
	nop			;8f68	00		.
	nop			;8f69	00		.
	nop			;8f6a	00		.
	nop			;8f6b	00		.
	nop			;8f6c	00		.
	nop			;8f6d	00		.
	nop			;8f6e	00		.
	nop			;8f6f	00		.
	nop			;8f70	00		.
	nop			;8f71	00		.
	nop			;8f72	00		.
	nop			;8f73	00		.
	nop			;8f74	00		.
	nop			;8f75	00		.
	nop			;8f76	00		.
	nop			;8f77	00		.
	nop			;8f78	00		.
	nop			;8f79	00		.
	nop			;8f7a	00		.
	nop			;8f7b	00		.
	nop			;8f7c	00		.
	nop			;8f7d	00		.
	nop			;8f7e	00		.
	nop			;8f7f	00		.
	nop			;8f80	00		.
	nop			;8f81	00		.
	nop			;8f82	00		.
	nop			;8f83	00		.
	nop			;8f84	00		.
	nop			;8f85	00		.
	nop			;8f86	00		.
	nop			;8f87	00		.
	nop			;8f88	00		.
	nop			;8f89	00		.
	nop			;8f8a	00		.
	nop			;8f8b	00		.
	nop			;8f8c	00		.
	nop			;8f8d	00		.
	nop			;8f8e	00		.
	nop			;8f8f	00		.
	nop			;8f90	00		.
	nop			;8f91	00		.
	nop			;8f92	00		.
	nop			;8f93	00		.
	nop			;8f94	00		.
	nop			;8f95	00		.
	nop			;8f96	00		.
	nop			;8f97	00		.
	nop			;8f98	00		.
	nop			;8f99	00		.
	nop			;8f9a	00		.
	nop			;8f9b	00		.
	nop			;8f9c	00		.
	nop			;8f9d	00		.
	nop			;8f9e	00		.
	nop			;8f9f	00		.
	nop			;8fa0	00		.
	nop			;8fa1	00		.
	nop			;8fa2	00		.
	nop			;8fa3	00		.
	nop			;8fa4	00		.
	nop			;8fa5	00		.
	nop			;8fa6	00		.
	nop			;8fa7	00		.
	nop			;8fa8	00		.
	nop			;8fa9	00		.
	nop			;8faa	00		.
	nop			;8fab	00		.
	nop			;8fac	00		.
	nop			;8fad	00		.
	nop			;8fae	00		.
	nop			;8faf	00		.
	nop			;8fb0	00		.
	nop			;8fb1	00		.
	nop			;8fb2	00		.
	nop			;8fb3	00		.
	nop			;8fb4	00		.
	nop			;8fb5	00		.
	nop			;8fb6	00		.
	nop			;8fb7	00		.
	nop			;8fb8	00		.
	nop			;8fb9	00		.
	nop			;8fba	00		.
	nop			;8fbb	00		.
	nop			;8fbc	00		.
	nop			;8fbd	00		.
	nop			;8fbe	00		.
	nop			;8fbf	00		.
	nop			;8fc0	00		.
	nop			;8fc1	00		.
	nop			;8fc2	00		.
	nop			;8fc3	00		.
	nop			;8fc4	00		.
	nop			;8fc5	00		.
	nop			;8fc6	00		.
	nop			;8fc7	00		.
	nop			;8fc8	00		.
	nop			;8fc9	00		.
	nop			;8fca	00		.
	nop			;8fcb	00		.
	nop			;8fcc	00		.
	nop			;8fcd	00		.
	nop			;8fce	00		.
	nop			;8fcf	00		.
	nop			;8fd0	00		.
	nop			;8fd1	00		.
	nop			;8fd2	00		.
	nop			;8fd3	00		.
	nop			;8fd4	00		.
	nop			;8fd5	00		.
	nop			;8fd6	00		.
	nop			;8fd7	00		.
	nop			;8fd8	00		.
	nop			;8fd9	00		.
	nop			;8fda	00		.
	nop			;8fdb	00		.
	nop			;8fdc	00		.
	nop			;8fdd	00		.
	nop			;8fde	00		.
	nop			;8fdf	00		.
	nop			;8fe0	00		.
	nop			;8fe1	00		.
	nop			;8fe2	00		.
	nop			;8fe3	00		.
	nop			;8fe4	00		.
	nop			;8fe5	00		.
	nop			;8fe6	00		.
	nop			;8fe7	00		.
	nop			;8fe8	00		.
	nop			;8fe9	00		.
	nop			;8fea	00		.
	nop			;8feb	00		.
	nop			;8fec	00		.
	nop			;8fed	00		.
	nop			;8fee	00		.
	nop			;8fef	00		.
	nop			;8ff0	00		.
	nop			;8ff1	00		.
	nop			;8ff2	00		.
	nop			;8ff3	00		.
	nop			;8ff4	00		.
	nop			;8ff5	00		.
	nop			;8ff6	00		.
	nop			;8ff7	00		.
	nop			;8ff8	00		.
	nop			;8ff9	00		.
	nop			;8ffa	00		.
	nop			;8ffb	00		.
	nop			;8ffc	00		.
	nop			;8ffd	00		.
	nop			;8ffe	00		.
	nop			;8fff	00		.
	nop			;9000	00		.
	nop			;9001	00		.
	nop			;9002	00		.
	nop			;9003	00		.
	nop			;9004	00		.
	nop			;9005	00		.
	nop			;9006	00		.
	nop			;9007	00		.
	nop			;9008	00		.
	nop			;9009	00		.
	nop			;900a	00		.
	nop			;900b	00		.
	nop			;900c	00		.
	nop			;900d	00		.
	nop			;900e	00		.
	nop			;900f	00		.
	nop			;9010	00		.
	nop			;9011	00		.
	nop			;9012	00		.
	nop			;9013	00		.
	nop			;9014	00		.
	nop			;9015	00		.
	nop			;9016	00		.
	nop			;9017	00		.
	nop			;9018	00		.
	nop			;9019	00		.
	nop			;901a	00		.
	nop			;901b	00		.
	nop			;901c	00		.
	nop			;901d	00		.
	nop			;901e	00		.
	nop			;901f	00		.
	nop			;9020	00		.
	nop			;9021	00		.
	nop			;9022	00		.
	nop			;9023	00		.
	nop			;9024	00		.
	nop			;9025	00		.
	nop			;9026	00		.
	nop			;9027	00		.
	nop			;9028	00		.
	nop			;9029	00		.
	nop			;902a	00		.
	nop			;902b	00		.
	nop			;902c	00		.
	nop			;902d	00		.
	nop			;902e	00		.
	nop			;902f	00		.
	nop			;9030	00		.
	nop			;9031	00		.
	nop			;9032	00		.
	nop			;9033	00		.
	nop			;9034	00		.
	nop			;9035	00		.
	nop			;9036	00		.
	nop			;9037	00		.
	nop			;9038	00		.
	nop			;9039	00		.
	nop			;903a	00		.
	nop			;903b	00		.
	nop			;903c	00		.
	nop			;903d	00		.
	nop			;903e	00		.
	nop			;903f	00		.
	nop			;9040	00		.
	nop			;9041	00		.
	nop			;9042	00		.
	nop			;9043	00		.
	nop			;9044	00		.
	nop			;9045	00		.
	nop			;9046	00		.
	nop			;9047	00		.
	nop			;9048	00		.
	nop			;9049	00		.
	nop			;904a	00		.
	nop			;904b	00		.
	nop			;904c	00		.
	nop			;904d	00		.
	nop			;904e	00		.
	nop			;904f	00		.
	nop			;9050	00		.
	nop			;9051	00		.
	nop			;9052	00		.
	nop			;9053	00		.
	nop			;9054	00		.
	nop			;9055	00		.
	nop			;9056	00		.
	nop			;9057	00		.
	nop			;9058	00		.
	nop			;9059	00		.
	nop			;905a	00		.
	nop			;905b	00		.
	nop			;905c	00		.
	nop			;905d	00		.
	nop			;905e	00		.
	nop			;905f	00		.
	nop			;9060	00		.
	nop			;9061	00		.
	nop			;9062	00		.
	nop			;9063	00		.
	nop			;9064	00		.
	nop			;9065	00		.
	nop			;9066	00		.
	nop			;9067	00		.
	nop			;9068	00		.
	nop			;9069	00		.
	nop			;906a	00		.
	nop			;906b	00		.
	nop			;906c	00		.
	nop			;906d	00		.
	nop			;906e	00		.
	nop			;906f	00		.
	nop			;9070	00		.
	nop			;9071	00		.
	nop			;9072	00		.
	nop			;9073	00		.
	nop			;9074	00		.
	nop			;9075	00		.
	nop			;9076	00		.
	nop			;9077	00		.
	nop			;9078	00		.
	nop			;9079	00		.
	nop			;907a	00		.
	nop			;907b	00		.
	nop			;907c	00		.
	nop			;907d	00		.
	nop			;907e	00		.
	nop			;907f	00		.
	nop			;9080	00		.
	nop			;9081	00		.
	nop			;9082	00		.
	nop			;9083	00		.
	nop			;9084	00		.
	nop			;9085	00		.
	nop			;9086	00		.
	nop			;9087	00		.
	nop			;9088	00		.
	nop			;9089	00		.
	nop			;908a	00		.
	nop			;908b	00		.
	nop			;908c	00		.
	nop			;908d	00		.
	nop			;908e	00		.
	nop			;908f	00		.
	nop			;9090	00		.
	nop			;9091	00		.
	nop			;9092	00		.
	nop			;9093	00		.
	nop			;9094	00		.
	nop			;9095	00		.
	nop			;9096	00		.
	nop			;9097	00		.
	nop			;9098	00		.
	nop			;9099	00		.
	nop			;909a	00		.
	nop			;909b	00		.
	nop			;909c	00		.
	nop			;909d	00		.
	nop			;909e	00		.
	nop			;909f	00		.
	nop			;90a0	00		.
	nop			;90a1	00		.
	nop			;90a2	00		.
	nop			;90a3	00		.
	nop			;90a4	00		.
	nop			;90a5	00		.
	nop			;90a6	00		.
	nop			;90a7	00		.
	nop			;90a8	00		.
	nop			;90a9	00		.
	nop			;90aa	00		.
	nop			;90ab	00		.
	nop			;90ac	00		.
	nop			;90ad	00		.
	nop			;90ae	00		.
	nop			;90af	00		.
	nop			;90b0	00		.
	nop			;90b1	00		.
	nop			;90b2	00		.
	nop			;90b3	00		.
	nop			;90b4	00		.
	nop			;90b5	00		.
	nop			;90b6	00		.
	nop			;90b7	00		.
	nop			;90b8	00		.
	nop			;90b9	00		.
	nop			;90ba	00		.
	nop			;90bb	00		.
	nop			;90bc	00		.
	nop			;90bd	00		.
	nop			;90be	00		.
	nop			;90bf	00		.
	nop			;90c0	00		.
	nop			;90c1	00		.
	nop			;90c2	00		.
	nop			;90c3	00		.
	nop			;90c4	00		.
	nop			;90c5	00		.
	nop			;90c6	00		.
	nop			;90c7	00		.
	nop			;90c8	00		.
	nop			;90c9	00		.
	nop			;90ca	00		.
	nop			;90cb	00		.
	nop			;90cc	00		.
	nop			;90cd	00		.
	nop			;90ce	00		.
	nop			;90cf	00		.
	nop			;90d0	00		.
	nop			;90d1	00		.
	nop			;90d2	00		.
	nop			;90d3	00		.
	nop			;90d4	00		.
	nop			;90d5	00		.
	nop			;90d6	00		.
	nop			;90d7	00		.
	nop			;90d8	00		.
	nop			;90d9	00		.
	nop			;90da	00		.
	nop			;90db	00		.
	nop			;90dc	00		.
	nop			;90dd	00		.
	nop			;90de	00		.
	nop			;90df	00		.
	nop			;90e0	00		.
	nop			;90e1	00		.
	nop			;90e2	00		.
	nop			;90e3	00		.
	nop			;90e4	00		.
	nop			;90e5	00		.
	nop			;90e6	00		.
	nop			;90e7	00		.
	nop			;90e8	00		.
	nop			;90e9	00		.
	nop			;90ea	00		.
	nop			;90eb	00		.
	nop			;90ec	00		.
	nop			;90ed	00		.
	nop			;90ee	00		.
	nop			;90ef	00		.
	nop			;90f0	00		.
	nop			;90f1	00		.
	nop			;90f2	00		.
	nop			;90f3	00		.
	nop			;90f4	00		.
	nop			;90f5	00		.
	nop			;90f6	00		.
	nop			;90f7	00		.
	nop			;90f8	00		.
	nop			;90f9	00		.
	nop			;90fa	00		.
	nop			;90fb	00		.
	nop			;90fc	00		.
	nop			;90fd	00		.
	nop			;90fe	00		.
	nop			;90ff	00		.
	nop			;9100	00		.
	nop			;9101	00		.
	nop			;9102	00		.
	nop			;9103	00		.
	nop			;9104	00		.
	nop			;9105	00		.
	nop			;9106	00		.
	nop			;9107	00		.
	nop			;9108	00		.
	nop			;9109	00		.
	nop			;910a	00		.
	nop			;910b	00		.
	nop			;910c	00		.
	nop			;910d	00		.
	nop			;910e	00		.
	nop			;910f	00		.
	nop			;9110	00		.
	nop			;9111	00		.
	nop			;9112	00		.
	nop			;9113	00		.
	nop			;9114	00		.
	nop			;9115	00		.
	nop			;9116	00		.
	nop			;9117	00		.
	nop			;9118	00		.
	nop			;9119	00		.
	nop			;911a	00		.
	nop			;911b	00		.
	nop			;911c	00		.
	nop			;911d	00		.
	nop			;911e	00		.
	nop			;911f	00		.
	nop			;9120	00		.
	nop			;9121	00		.
	nop			;9122	00		.
	nop			;9123	00		.
	nop			;9124	00		.
	nop			;9125	00		.
	nop			;9126	00		.
	nop			;9127	00		.
	nop			;9128	00		.
	nop			;9129	00		.
	nop			;912a	00		.
	nop			;912b	00		.
	nop			;912c	00		.
	nop			;912d	00		.
	nop			;912e	00		.
	nop			;912f	00		.
	nop			;9130	00		.
	nop			;9131	00		.
	nop			;9132	00		.
	nop			;9133	00		.
	nop			;9134	00		.
	nop			;9135	00		.
	nop			;9136	00		.
	nop			;9137	00		.
	nop			;9138	00		.
	nop			;9139	00		.
	nop			;913a	00		.
	nop			;913b	00		.
	nop			;913c	00		.
	nop			;913d	00		.
	nop			;913e	00		.
	nop			;913f	00		.
	nop			;9140	00		.
	nop			;9141	00		.
	nop			;9142	00		.
	nop			;9143	00		.
	nop			;9144	00		.
	nop			;9145	00		.
	nop			;9146	00		.
	nop			;9147	00		.
	nop			;9148	00		.
	nop			;9149	00		.
	nop			;914a	00		.
	nop			;914b	00		.
	nop			;914c	00		.
	nop			;914d	00		.
	nop			;914e	00		.
	nop			;914f	00		.
	nop			;9150	00		.
	nop			;9151	00		.
	nop			;9152	00		.
	nop			;9153	00		.
	nop			;9154	00		.
	nop			;9155	00		.
	nop			;9156	00		.
	nop			;9157	00		.
	nop			;9158	00		.
	nop			;9159	00		.
	nop			;915a	00		.
	nop			;915b	00		.
	nop			;915c	00		.
	nop			;915d	00		.
	nop			;915e	00		.
	nop			;915f	00		.
	nop			;9160	00		.
	nop			;9161	00		.
	nop			;9162	00		.
	nop			;9163	00		.
	nop			;9164	00		.
	nop			;9165	00		.
	nop			;9166	00		.
	nop			;9167	00		.
	nop			;9168	00		.
	nop			;9169	00		.
	nop			;916a	00		.
	nop			;916b	00		.
	nop			;916c	00		.
	nop			;916d	00		.
	nop			;916e	00		.
	nop			;916f	00		.
	nop			;9170	00		.
	nop			;9171	00		.
	nop			;9172	00		.
	nop			;9173	00		.
	nop			;9174	00		.
	nop			;9175	00		.
	nop			;9176	00		.
	nop			;9177	00		.
	nop			;9178	00		.
	nop			;9179	00		.
	nop			;917a	00		.
	nop			;917b	00		.
	nop			;917c	00		.
	nop			;917d	00		.
	nop			;917e	00		.
	nop			;917f	00		.
	nop			;9180	00		.
	nop			;9181	00		.
	nop			;9182	00		.
	nop			;9183	00		.
	nop			;9184	00		.
	nop			;9185	00		.
	nop			;9186	00		.
	nop			;9187	00		.
	nop			;9188	00		.
	nop			;9189	00		.
	nop			;918a	00		.
	nop			;918b	00		.
	nop			;918c	00		.
	nop			;918d	00		.
	nop			;918e	00		.
	nop			;918f	00		.
	nop			;9190	00		.
	nop			;9191	00		.
	nop			;9192	00		.
	nop			;9193	00		.
	nop			;9194	00		.
	nop			;9195	00		.
	nop			;9196	00		.
	nop			;9197	00		.
	nop			;9198	00		.
	nop			;9199	00		.
	nop			;919a	00		.
	nop			;919b	00		.
	nop			;919c	00		.
	nop			;919d	00		.
	nop			;919e	00		.
	nop			;919f	00		.
	nop			;91a0	00		.
	nop			;91a1	00		.
	nop			;91a2	00		.
	nop			;91a3	00		.
	nop			;91a4	00		.
	nop			;91a5	00		.
	nop			;91a6	00		.
	nop			;91a7	00		.
	nop			;91a8	00		.
	nop			;91a9	00		.
	nop			;91aa	00		.
	nop			;91ab	00		.
	nop			;91ac	00		.
	nop			;91ad	00		.
	nop			;91ae	00		.
	nop			;91af	00		.
	nop			;91b0	00		.
	nop			;91b1	00		.
	nop			;91b2	00		.
	nop			;91b3	00		.
	nop			;91b4	00		.
	nop			;91b5	00		.
	nop			;91b6	00		.
	nop			;91b7	00		.
	nop			;91b8	00		.
	nop			;91b9	00		.
	nop			;91ba	00		.
	nop			;91bb	00		.
	nop			;91bc	00		.
	nop			;91bd	00		.
	nop			;91be	00		.
	nop			;91bf	00		.
	nop			;91c0	00		.
	nop			;91c1	00		.
	nop			;91c2	00		.
	nop			;91c3	00		.
	nop			;91c4	00		.
	nop			;91c5	00		.
	nop			;91c6	00		.
	nop			;91c7	00		.
	nop			;91c8	00		.
	nop			;91c9	00		.
	nop			;91ca	00		.
	nop			;91cb	00		.
	nop			;91cc	00		.
	nop			;91cd	00		.
	nop			;91ce	00		.
	nop			;91cf	00		.
	nop			;91d0	00		.
	nop			;91d1	00		.
	nop			;91d2	00		.
	nop			;91d3	00		.
	nop			;91d4	00		.
	nop			;91d5	00		.
	nop			;91d6	00		.
	nop			;91d7	00		.
	nop			;91d8	00		.
	nop			;91d9	00		.
	nop			;91da	00		.
	nop			;91db	00		.
	nop			;91dc	00		.
	nop			;91dd	00		.
	nop			;91de	00		.
	nop			;91df	00		.
	nop			;91e0	00		.
	nop			;91e1	00		.
	nop			;91e2	00		.
	nop			;91e3	00		.
	nop			;91e4	00		.
	nop			;91e5	00		.
	nop			;91e6	00		.
	nop			;91e7	00		.
	nop			;91e8	00		.
	nop			;91e9	00		.
	nop			;91ea	00		.
	nop			;91eb	00		.
	nop			;91ec	00		.
	nop			;91ed	00		.
	nop			;91ee	00		.
	nop			;91ef	00		.
	nop			;91f0	00		.
	nop			;91f1	00		.
	nop			;91f2	00		.
	nop			;91f3	00		.
	nop			;91f4	00		.
	nop			;91f5	00		.
	nop			;91f6	00		.
	nop			;91f7	00		.
	nop			;91f8	00		.
	nop			;91f9	00		.
	nop			;91fa	00		.
	nop			;91fb	00		.
	nop			;91fc	00		.
	nop			;91fd	00		.
	nop			;91fe	00		.
	nop			;91ff	00		.
	nop			;9200	00		.
	nop			;9201	00		.
	nop			;9202	00		.
	nop			;9203	00		.
	nop			;9204	00		.
	nop			;9205	00		.
	nop			;9206	00		.
	nop			;9207	00		.
	nop			;9208	00		.
	nop			;9209	00		.
	nop			;920a	00		.
	nop			;920b	00		.
	nop			;920c	00		.
	nop			;920d	00		.
	nop			;920e	00		.
	nop			;920f	00		.
	nop			;9210	00		.
	nop			;9211	00		.
	nop			;9212	00		.
	nop			;9213	00		.
	nop			;9214	00		.
	nop			;9215	00		.
	nop			;9216	00		.
	nop			;9217	00		.
	nop			;9218	00		.
	nop			;9219	00		.
	nop			;921a	00		.
	nop			;921b	00		.
	nop			;921c	00		.
	nop			;921d	00		.
	nop			;921e	00		.
	nop			;921f	00		.
	nop			;9220	00		.
	nop			;9221	00		.
	nop			;9222	00		.
	nop			;9223	00		.
	nop			;9224	00		.
	nop			;9225	00		.
	nop			;9226	00		.
	nop			;9227	00		.
	nop			;9228	00		.
	nop			;9229	00		.
	nop			;922a	00		.
	nop			;922b	00		.
	nop			;922c	00		.
	nop			;922d	00		.
	nop			;922e	00		.
	nop			;922f	00		.
	nop			;9230	00		.
	nop			;9231	00		.
	nop			;9232	00		.
	nop			;9233	00		.
	nop			;9234	00		.
	nop			;9235	00		.
	nop			;9236	00		.
	nop			;9237	00		.
	nop			;9238	00		.
	nop			;9239	00		.
	nop			;923a	00		.
	nop			;923b	00		.
	nop			;923c	00		.
	nop			;923d	00		.
	nop			;923e	00		.
	nop			;923f	00		.
	nop			;9240	00		.
	nop			;9241	00		.
	nop			;9242	00		.
	nop			;9243	00		.
	nop			;9244	00		.
	nop			;9245	00		.
	nop			;9246	00		.
	nop			;9247	00		.
	nop			;9248	00		.
	nop			;9249	00		.
	nop			;924a	00		.
	nop			;924b	00		.
	nop			;924c	00		.
	nop			;924d	00		.
	nop			;924e	00		.
	nop			;924f	00		.
	nop			;9250	00		.
	nop			;9251	00		.
	nop			;9252	00		.
	nop			;9253	00		.
	nop			;9254	00		.
	nop			;9255	00		.
	nop			;9256	00		.
	nop			;9257	00		.
	nop			;9258	00		.
	nop			;9259	00		.
	nop			;925a	00		.
	nop			;925b	00		.
	nop			;925c	00		.
	nop			;925d	00		.
	nop			;925e	00		.
	nop			;925f	00		.
	nop			;9260	00		.
	nop			;9261	00		.
	nop			;9262	00		.
	nop			;9263	00		.
	nop			;9264	00		.
	nop			;9265	00		.
	nop			;9266	00		.
	nop			;9267	00		.
	nop			;9268	00		.
	nop			;9269	00		.
	nop			;926a	00		.
	nop			;926b	00		.
	nop			;926c	00		.
	nop			;926d	00		.
	nop			;926e	00		.
	nop			;926f	00		.
	nop			;9270	00		.
	nop			;9271	00		.
	nop			;9272	00		.
	nop			;9273	00		.
	nop			;9274	00		.
	nop			;9275	00		.
	nop			;9276	00		.
	nop			;9277	00		.
	nop			;9278	00		.
	nop			;9279	00		.
	nop			;927a	00		.
	nop			;927b	00		.
	nop			;927c	00		.
	nop			;927d	00		.
	nop			;927e	00		.
	nop			;927f	00		.
	nop			;9280	00		.
	nop			;9281	00		.
	nop			;9282	00		.
	nop			;9283	00		.
	nop			;9284	00		.
	nop			;9285	00		.
	nop			;9286	00		.
	nop			;9287	00		.
	nop			;9288	00		.
	nop			;9289	00		.
	nop			;928a	00		.
	nop			;928b	00		.
	nop			;928c	00		.
	nop			;928d	00		.
	nop			;928e	00		.
	nop			;928f	00		.
	nop			;9290	00		.
	nop			;9291	00		.
	nop			;9292	00		.
	nop			;9293	00		.
	nop			;9294	00		.
	nop			;9295	00		.
	nop			;9296	00		.
	nop			;9297	00		.
	nop			;9298	00		.
	nop			;9299	00		.
	nop			;929a	00		.
	nop			;929b	00		.
	nop			;929c	00		.
	nop			;929d	00		.
	nop			;929e	00		.
	nop			;929f	00		.
	nop			;92a0	00		.
	nop			;92a1	00		.
	nop			;92a2	00		.
	nop			;92a3	00		.
	nop			;92a4	00		.
	nop			;92a5	00		.
	nop			;92a6	00		.
	nop			;92a7	00		.
	nop			;92a8	00		.
	nop			;92a9	00		.
	nop			;92aa	00		.
	nop			;92ab	00		.
	nop			;92ac	00		.
	nop			;92ad	00		.
	nop			;92ae	00		.
	nop			;92af	00		.
	nop			;92b0	00		.
	nop			;92b1	00		.
	nop			;92b2	00		.
	nop			;92b3	00		.
	nop			;92b4	00		.
	nop			;92b5	00		.
	nop			;92b6	00		.
	nop			;92b7	00		.
	nop			;92b8	00		.
	nop			;92b9	00		.
	nop			;92ba	00		.
	nop			;92bb	00		.
	nop			;92bc	00		.
	nop			;92bd	00		.
	nop			;92be	00		.
	nop			;92bf	00		.
	nop			;92c0	00		.
	nop			;92c1	00		.
	nop			;92c2	00		.
	nop			;92c3	00		.
	nop			;92c4	00		.
	nop			;92c5	00		.
	nop			;92c6	00		.
	nop			;92c7	00		.
	nop			;92c8	00		.
	nop			;92c9	00		.
	nop			;92ca	00		.
	nop			;92cb	00		.
	nop			;92cc	00		.
	nop			;92cd	00		.
	nop			;92ce	00		.
	nop			;92cf	00		.
	nop			;92d0	00		.
	nop			;92d1	00		.
	nop			;92d2	00		.
	nop			;92d3	00		.
	nop			;92d4	00		.
	nop			;92d5	00		.
	nop			;92d6	00		.
	nop			;92d7	00		.
	nop			;92d8	00		.
	nop			;92d9	00		.
	nop			;92da	00		.
	nop			;92db	00		.
	nop			;92dc	00		.
	nop			;92dd	00		.
	nop			;92de	00		.
	nop			;92df	00		.
	nop			;92e0	00		.
	nop			;92e1	00		.
	nop			;92e2	00		.
	nop			;92e3	00		.
	nop			;92e4	00		.
	nop			;92e5	00		.
	nop			;92e6	00		.
	nop			;92e7	00		.
	nop			;92e8	00		.
	nop			;92e9	00		.
	nop			;92ea	00		.
	nop			;92eb	00		.
	nop			;92ec	00		.
	nop			;92ed	00		.
	nop			;92ee	00		.
	nop			;92ef	00		.
	nop			;92f0	00		.
	nop			;92f1	00		.
	nop			;92f2	00		.
	nop			;92f3	00		.
	nop			;92f4	00		.
	nop			;92f5	00		.
	nop			;92f6	00		.
	nop			;92f7	00		.
	nop			;92f8	00		.
	nop			;92f9	00		.
	nop			;92fa	00		.
	nop			;92fb	00		.
	nop			;92fc	00		.
	nop			;92fd	00		.
	nop			;92fe	00		.
	nop			;92ff	00		.
	nop			;9300	00		.
	nop			;9301	00		.
	nop			;9302	00		.
	nop			;9303	00		.
	nop			;9304	00		.
	nop			;9305	00		.
	nop			;9306	00		.
	nop			;9307	00		.
	nop			;9308	00		.
	nop			;9309	00		.
	nop			;930a	00		.
	nop			;930b	00		.
	nop			;930c	00		.
	nop			;930d	00		.
	nop			;930e	00		.
	nop			;930f	00		.
	nop			;9310	00		.
	nop			;9311	00		.
	nop			;9312	00		.
	nop			;9313	00		.
	nop			;9314	00		.
	nop			;9315	00		.
	nop			;9316	00		.
	nop			;9317	00		.
	nop			;9318	00		.
	nop			;9319	00		.
	nop			;931a	00		.
	nop			;931b	00		.
	nop			;931c	00		.
	nop			;931d	00		.
	nop			;931e	00		.
	nop			;931f	00		.
	nop			;9320	00		.
	nop			;9321	00		.
	nop			;9322	00		.
	nop			;9323	00		.
	nop			;9324	00		.
	nop			;9325	00		.
	nop			;9326	00		.
	nop			;9327	00		.
	nop			;9328	00		.
	nop			;9329	00		.
	nop			;932a	00		.
	nop			;932b	00		.
	nop			;932c	00		.
	nop			;932d	00		.
	nop			;932e	00		.
	nop			;932f	00		.
	nop			;9330	00		.
	nop			;9331	00		.
	nop			;9332	00		.
	nop			;9333	00		.
	nop			;9334	00		.
	nop			;9335	00		.
	nop			;9336	00		.
	nop			;9337	00		.
	nop			;9338	00		.
	nop			;9339	00		.
	nop			;933a	00		.
	nop			;933b	00		.
	nop			;933c	00		.
	nop			;933d	00		.
	nop			;933e	00		.
	nop			;933f	00		.
	nop			;9340	00		.
	nop			;9341	00		.
	nop			;9342	00		.
	nop			;9343	00		.
	nop			;9344	00		.
	nop			;9345	00		.
	nop			;9346	00		.
	nop			;9347	00		.
	nop			;9348	00		.
	nop			;9349	00		.
	nop			;934a	00		.
	nop			;934b	00		.
	nop			;934c	00		.
	nop			;934d	00		.
	nop			;934e	00		.
	nop			;934f	00		.
	nop			;9350	00		.
	nop			;9351	00		.
	nop			;9352	00		.
	nop			;9353	00		.
	nop			;9354	00		.
	nop			;9355	00		.
	nop			;9356	00		.
	nop			;9357	00		.
	nop			;9358	00		.
	nop			;9359	00		.
	nop			;935a	00		.
	nop			;935b	00		.
	nop			;935c	00		.
	nop			;935d	00		.
	nop			;935e	00		.
	nop			;935f	00		.
	nop			;9360	00		.
	nop			;9361	00		.
	nop			;9362	00		.
	nop			;9363	00		.
	nop			;9364	00		.
	nop			;9365	00		.
	nop			;9366	00		.
	nop			;9367	00		.
	nop			;9368	00		.
	nop			;9369	00		.
	nop			;936a	00		.
	nop			;936b	00		.
	nop			;936c	00		.
	nop			;936d	00		.
	nop			;936e	00		.
	nop			;936f	00		.
	nop			;9370	00		.
	nop			;9371	00		.
	nop			;9372	00		.
	nop			;9373	00		.
	nop			;9374	00		.
	nop			;9375	00		.
	nop			;9376	00		.
	nop			;9377	00		.
	nop			;9378	00		.
	nop			;9379	00		.
	nop			;937a	00		.
	nop			;937b	00		.
	nop			;937c	00		.
	nop			;937d	00		.
	nop			;937e	00		.
	nop			;937f	00		.
	nop			;9380	00		.
	nop			;9381	00		.
	nop			;9382	00		.
	nop			;9383	00		.
	nop			;9384	00		.
	nop			;9385	00		.
	nop			;9386	00		.
	nop			;9387	00		.
	nop			;9388	00		.
	nop			;9389	00		.
	nop			;938a	00		.
	nop			;938b	00		.
	nop			;938c	00		.
	nop			;938d	00		.
	nop			;938e	00		.
	nop			;938f	00		.
	nop			;9390	00		.
	nop			;9391	00		.
	nop			;9392	00		.
	nop			;9393	00		.
	nop			;9394	00		.
	nop			;9395	00		.
	nop			;9396	00		.
	nop			;9397	00		.
	nop			;9398	00		.
	nop			;9399	00		.
	nop			;939a	00		.
	nop			;939b	00		.
	nop			;939c	00		.
	nop			;939d	00		.
	nop			;939e	00		.
	nop			;939f	00		.
	nop			;93a0	00		.
	nop			;93a1	00		.
	nop			;93a2	00		.
	nop			;93a3	00		.
	nop			;93a4	00		.
	nop			;93a5	00		.
	nop			;93a6	00		.
	nop			;93a7	00		.
	nop			;93a8	00		.
	nop			;93a9	00		.
	nop			;93aa	00		.
	nop			;93ab	00		.
	nop			;93ac	00		.
	nop			;93ad	00		.
	nop			;93ae	00		.
	nop			;93af	00		.
	nop			;93b0	00		.
	nop			;93b1	00		.
	nop			;93b2	00		.
	nop			;93b3	00		.
	nop			;93b4	00		.
	nop			;93b5	00		.
	nop			;93b6	00		.
	nop			;93b7	00		.
	nop			;93b8	00		.
	nop			;93b9	00		.
	nop			;93ba	00		.
	nop			;93bb	00		.
	nop			;93bc	00		.
	nop			;93bd	00		.
	nop			;93be	00		.
	nop			;93bf	00		.
	nop			;93c0	00		.
	nop			;93c1	00		.
	nop			;93c2	00		.
	nop			;93c3	00		.
	nop			;93c4	00		.
	nop			;93c5	00		.
	nop			;93c6	00		.
	nop			;93c7	00		.
	nop			;93c8	00		.
	nop			;93c9	00		.
	nop			;93ca	00		.
	nop			;93cb	00		.
	nop			;93cc	00		.
	nop			;93cd	00		.
	nop			;93ce	00		.
	nop			;93cf	00		.
	nop			;93d0	00		.
	nop			;93d1	00		.
	nop			;93d2	00		.
	nop			;93d3	00		.
	nop			;93d4	00		.
	nop			;93d5	00		.
	nop			;93d6	00		.
	nop			;93d7	00		.
	nop			;93d8	00		.
	nop			;93d9	00		.
	nop			;93da	00		.
	nop			;93db	00		.
	nop			;93dc	00		.
	nop			;93dd	00		.
	nop			;93de	00		.
	nop			;93df	00		.
	nop			;93e0	00		.
	nop			;93e1	00		.
	nop			;93e2	00		.
	nop			;93e3	00		.
	nop			;93e4	00		.
	nop			;93e5	00		.
	nop			;93e6	00		.
	nop			;93e7	00		.
	nop			;93e8	00		.
	nop			;93e9	00		.
	nop			;93ea	00		.
	nop			;93eb	00		.
	nop			;93ec	00		.
	nop			;93ed	00		.
	nop			;93ee	00		.
	nop			;93ef	00		.
	nop			;93f0	00		.
	nop			;93f1	00		.
	nop			;93f2	00		.
	nop			;93f3	00		.
	nop			;93f4	00		.
	nop			;93f5	00		.
	nop			;93f6	00		.
	nop			;93f7	00		.
	nop			;93f8	00		.
	nop			;93f9	00		.
	nop			;93fa	00		.
	nop			;93fb	00		.
	nop			;93fc	00		.
	nop			;93fd	00		.
	nop			;93fe	00		.
	nop			;93ff	00		.
	nop			;9400	00		.
	nop			;9401	00		.
	nop			;9402	00		.
	nop			;9403	00		.
	nop			;9404	00		.
	nop			;9405	00		.
	nop			;9406	00		.
	nop			;9407	00		.
	nop			;9408	00		.
	nop			;9409	00		.
	nop			;940a	00		.
	nop			;940b	00		.
	nop			;940c	00		.
	nop			;940d	00		.
	nop			;940e	00		.
	nop			;940f	00		.
	nop			;9410	00		.
	nop			;9411	00		.
	nop			;9412	00		.
	nop			;9413	00		.
	nop			;9414	00		.
	nop			;9415	00		.
	nop			;9416	00		.
	nop			;9417	00		.
	nop			;9418	00		.
	nop			;9419	00		.
	nop			;941a	00		.
	nop			;941b	00		.
	nop			;941c	00		.
	nop			;941d	00		.
	nop			;941e	00		.
	nop			;941f	00		.
	nop			;9420	00		.
	nop			;9421	00		.
	nop			;9422	00		.
	nop			;9423	00		.
	nop			;9424	00		.
	nop			;9425	00		.
	nop			;9426	00		.
	nop			;9427	00		.
	nop			;9428	00		.
	nop			;9429	00		.
	nop			;942a	00		.
	nop			;942b	00		.
	nop			;942c	00		.
	nop			;942d	00		.
	nop			;942e	00		.
	nop			;942f	00		.
	nop			;9430	00		.
	nop			;9431	00		.
	nop			;9432	00		.
	nop			;9433	00		.
	nop			;9434	00		.
	nop			;9435	00		.
	nop			;9436	00		.
	nop			;9437	00		.
	nop			;9438	00		.
	nop			;9439	00		.
	nop			;943a	00		.
	nop			;943b	00		.
	nop			;943c	00		.
	nop			;943d	00		.
	nop			;943e	00		.
	nop			;943f	00		.
	nop			;9440	00		.
	nop			;9441	00		.
	nop			;9442	00		.
	nop			;9443	00		.
	nop			;9444	00		.
	nop			;9445	00		.
	nop			;9446	00		.
	nop			;9447	00		.
	nop			;9448	00		.
	nop			;9449	00		.
	nop			;944a	00		.
	nop			;944b	00		.
	nop			;944c	00		.
	nop			;944d	00		.
	nop			;944e	00		.
	nop			;944f	00		.
	nop			;9450	00		.
	nop			;9451	00		.
	nop			;9452	00		.
	nop			;9453	00		.
	nop			;9454	00		.
	nop			;9455	00		.
	nop			;9456	00		.
	nop			;9457	00		.
	nop			;9458	00		.
	nop			;9459	00		.
	nop			;945a	00		.
	nop			;945b	00		.
	nop			;945c	00		.
	nop			;945d	00		.
	nop			;945e	00		.
	nop			;945f	00		.
	nop			;9460	00		.
	nop			;9461	00		.
	nop			;9462	00		.
	nop			;9463	00		.
	nop			;9464	00		.
	nop			;9465	00		.
	nop			;9466	00		.
	nop			;9467	00		.
	nop			;9468	00		.
	nop			;9469	00		.
	nop			;946a	00		.
	nop			;946b	00		.
	nop			;946c	00		.
	nop			;946d	00		.
	nop			;946e	00		.
	nop			;946f	00		.
	nop			;9470	00		.
	nop			;9471	00		.
	nop			;9472	00		.
	nop			;9473	00		.
	nop			;9474	00		.
	nop			;9475	00		.
	nop			;9476	00		.
	nop			;9477	00		.
	nop			;9478	00		.
	nop			;9479	00		.
	nop			;947a	00		.
	nop			;947b	00		.
	nop			;947c	00		.
	nop			;947d	00		.
	nop			;947e	00		.
	nop			;947f	00		.
	nop			;9480	00		.
	nop			;9481	00		.
	nop			;9482	00		.
	nop			;9483	00		.
	nop			;9484	00		.
	nop			;9485	00		.
	nop			;9486	00		.
	nop			;9487	00		.
	nop			;9488	00		.
	nop			;9489	00		.
	nop			;948a	00		.
	nop			;948b	00		.
	nop			;948c	00		.
	nop			;948d	00		.
	nop			;948e	00		.
	nop			;948f	00		.
	nop			;9490	00		.
	nop			;9491	00		.
	nop			;9492	00		.
	nop			;9493	00		.
	nop			;9494	00		.
	nop			;9495	00		.
	nop			;9496	00		.
	nop			;9497	00		.
	nop			;9498	00		.
	nop			;9499	00		.
	nop			;949a	00		.
	nop			;949b	00		.
	nop			;949c	00		.
	nop			;949d	00		.
	nop			;949e	00		.
	nop			;949f	00		.
	nop			;94a0	00		.
	nop			;94a1	00		.
	nop			;94a2	00		.
	nop			;94a3	00		.
	nop			;94a4	00		.
	nop			;94a5	00		.
	nop			;94a6	00		.
	nop			;94a7	00		.
	nop			;94a8	00		.
	nop			;94a9	00		.
	nop			;94aa	00		.
	nop			;94ab	00		.
	nop			;94ac	00		.
	nop			;94ad	00		.
	nop			;94ae	00		.
	nop			;94af	00		.
	nop			;94b0	00		.
	nop			;94b1	00		.
	nop			;94b2	00		.
	nop			;94b3	00		.
	nop			;94b4	00		.
	nop			;94b5	00		.
	nop			;94b6	00		.
	nop			;94b7	00		.
	nop			;94b8	00		.
	nop			;94b9	00		.
	nop			;94ba	00		.
	nop			;94bb	00		.
	nop			;94bc	00		.
	nop			;94bd	00		.
	nop			;94be	00		.
	nop			;94bf	00		.
	nop			;94c0	00		.
	nop			;94c1	00		.
	nop			;94c2	00		.
	nop			;94c3	00		.
	nop			;94c4	00		.
	nop			;94c5	00		.
	nop			;94c6	00		.
	nop			;94c7	00		.
	nop			;94c8	00		.
	nop			;94c9	00		.
	nop			;94ca	00		.
	nop			;94cb	00		.
	nop			;94cc	00		.
	nop			;94cd	00		.
	nop			;94ce	00		.
	nop			;94cf	00		.
	nop			;94d0	00		.
	nop			;94d1	00		.
	nop			;94d2	00		.
	nop			;94d3	00		.
	nop			;94d4	00		.
	nop			;94d5	00		.
	nop			;94d6	00		.
	nop			;94d7	00		.
	nop			;94d8	00		.
	nop			;94d9	00		.
	nop			;94da	00		.
	nop			;94db	00		.
	nop			;94dc	00		.
	nop			;94dd	00		.
	nop			;94de	00		.
	nop			;94df	00		.
	nop			;94e0	00		.
	nop			;94e1	00		.
	nop			;94e2	00		.
	nop			;94e3	00		.
	nop			;94e4	00		.
	nop			;94e5	00		.
	nop			;94e6	00		.
	nop			;94e7	00		.
	nop			;94e8	00		.
	nop			;94e9	00		.
	nop			;94ea	00		.
	nop			;94eb	00		.
	nop			;94ec	00		.
	nop			;94ed	00		.
	nop			;94ee	00		.
	nop			;94ef	00		.
	nop			;94f0	00		.
	nop			;94f1	00		.
	nop			;94f2	00		.
	nop			;94f3	00		.
	nop			;94f4	00		.
	nop			;94f5	00		.
	nop			;94f6	00		.
	nop			;94f7	00		.
	nop			;94f8	00		.
	nop			;94f9	00		.
	nop			;94fa	00		.
	nop			;94fb	00		.
	nop			;94fc	00		.
	nop			;94fd	00		.
	nop			;94fe	00		.
	nop			;94ff	00		.
	nop			;9500	00		.
	nop			;9501	00		.
	nop			;9502	00		.
	nop			;9503	00		.
	nop			;9504	00		.
	nop			;9505	00		.
	nop			;9506	00		.
	nop			;9507	00		.
	nop			;9508	00		.
	nop			;9509	00		.
	nop			;950a	00		.
	nop			;950b	00		.
	nop			;950c	00		.
	nop			;950d	00		.
	nop			;950e	00		.
	nop			;950f	00		.
	nop			;9510	00		.
	nop			;9511	00		.
	nop			;9512	00		.
	nop			;9513	00		.
	nop			;9514	00		.
	nop			;9515	00		.
	nop			;9516	00		.
	nop			;9517	00		.
	nop			;9518	00		.
	nop			;9519	00		.
	nop			;951a	00		.
	nop			;951b	00		.
	nop			;951c	00		.
	nop			;951d	00		.
	nop			;951e	00		.
	nop			;951f	00		.
	nop			;9520	00		.
	nop			;9521	00		.
	nop			;9522	00		.
	nop			;9523	00		.
	nop			;9524	00		.
	nop			;9525	00		.
	nop			;9526	00		.
	nop			;9527	00		.
	nop			;9528	00		.
	nop			;9529	00		.
	nop			;952a	00		.
	nop			;952b	00		.
	nop			;952c	00		.
	nop			;952d	00		.
	nop			;952e	00		.
	nop			;952f	00		.
	nop			;9530	00		.
	nop			;9531	00		.
	nop			;9532	00		.
	nop			;9533	00		.
	nop			;9534	00		.
	nop			;9535	00		.
	nop			;9536	00		.
	nop			;9537	00		.
	nop			;9538	00		.
	nop			;9539	00		.
	nop			;953a	00		.
	nop			;953b	00		.
	nop			;953c	00		.
	nop			;953d	00		.
	nop			;953e	00		.
	nop			;953f	00		.
	nop			;9540	00		.
	nop			;9541	00		.
	nop			;9542	00		.
	nop			;9543	00		.
	nop			;9544	00		.
	nop			;9545	00		.
	nop			;9546	00		.
	nop			;9547	00		.
	nop			;9548	00		.
	nop			;9549	00		.
	nop			;954a	00		.
	nop			;954b	00		.
	nop			;954c	00		.
	nop			;954d	00		.
	nop			;954e	00		.
	nop			;954f	00		.
	nop			;9550	00		.
	nop			;9551	00		.
	nop			;9552	00		.
	nop			;9553	00		.
	nop			;9554	00		.
	nop			;9555	00		.
	nop			;9556	00		.
	nop			;9557	00		.
	nop			;9558	00		.
	nop			;9559	00		.
	nop			;955a	00		.
	nop			;955b	00		.
	nop			;955c	00		.
	nop			;955d	00		.
	nop			;955e	00		.
	nop			;955f	00		.
	nop			;9560	00		.
	nop			;9561	00		.
	nop			;9562	00		.
	nop			;9563	00		.
	nop			;9564	00		.
	nop			;9565	00		.
	nop			;9566	00		.
	nop			;9567	00		.
	nop			;9568	00		.
	nop			;9569	00		.
	nop			;956a	00		.
	nop			;956b	00		.
	nop			;956c	00		.
	nop			;956d	00		.
	nop			;956e	00		.
	nop			;956f	00		.
	nop			;9570	00		.
	nop			;9571	00		.
	nop			;9572	00		.
	nop			;9573	00		.
	nop			;9574	00		.
	nop			;9575	00		.
	nop			;9576	00		.
	nop			;9577	00		.
	nop			;9578	00		.
	nop			;9579	00		.
	nop			;957a	00		.
	nop			;957b	00		.
	nop			;957c	00		.
	nop			;957d	00		.
	nop			;957e	00		.
	nop			;957f	00		.
	nop			;9580	00		.
	nop			;9581	00		.
	nop			;9582	00		.
	nop			;9583	00		.
	nop			;9584	00		.
	nop			;9585	00		.
	nop			;9586	00		.
	nop			;9587	00		.
	nop			;9588	00		.
	nop			;9589	00		.
	nop			;958a	00		.
	nop			;958b	00		.
	nop			;958c	00		.
	nop			;958d	00		.
	nop			;958e	00		.
	nop			;958f	00		.
	nop			;9590	00		.
	nop			;9591	00		.
	nop			;9592	00		.
	nop			;9593	00		.
	nop			;9594	00		.
	nop			;9595	00		.
	nop			;9596	00		.
	nop			;9597	00		.
	nop			;9598	00		.
	nop			;9599	00		.
	nop			;959a	00		.
	nop			;959b	00		.
	nop			;959c	00		.
	nop			;959d	00		.
	nop			;959e	00		.
	nop			;959f	00		.
	nop			;95a0	00		.
	nop			;95a1	00		.
	nop			;95a2	00		.
	nop			;95a3	00		.
	nop			;95a4	00		.
	nop			;95a5	00		.
	nop			;95a6	00		.
	nop			;95a7	00		.
	nop			;95a8	00		.
	nop			;95a9	00		.
	nop			;95aa	00		.
	nop			;95ab	00		.
	nop			;95ac	00		.
	nop			;95ad	00		.
	nop			;95ae	00		.
	nop			;95af	00		.
	nop			;95b0	00		.
	nop			;95b1	00		.
	nop			;95b2	00		.
	nop			;95b3	00		.
	nop			;95b4	00		.
	nop			;95b5	00		.
	nop			;95b6	00		.
	nop			;95b7	00		.
	nop			;95b8	00		.
	nop			;95b9	00		.
	nop			;95ba	00		.
	nop			;95bb	00		.
	nop			;95bc	00		.
	nop			;95bd	00		.
	nop			;95be	00		.
	nop			;95bf	00		.
	nop			;95c0	00		.
	nop			;95c1	00		.
	nop			;95c2	00		.
	nop			;95c3	00		.
	nop			;95c4	00		.
	nop			;95c5	00		.
	nop			;95c6	00		.
	nop			;95c7	00		.
	nop			;95c8	00		.
	nop			;95c9	00		.
	nop			;95ca	00		.
	nop			;95cb	00		.
	nop			;95cc	00		.
	nop			;95cd	00		.
	nop			;95ce	00		.
	nop			;95cf	00		.
	nop			;95d0	00		.
	nop			;95d1	00		.
	nop			;95d2	00		.
	nop			;95d3	00		.
	nop			;95d4	00		.
	nop			;95d5	00		.
	nop			;95d6	00		.
	nop			;95d7	00		.
	nop			;95d8	00		.
	nop			;95d9	00		.
	nop			;95da	00		.
	nop			;95db	00		.
	nop			;95dc	00		.
	nop			;95dd	00		.
	nop			;95de	00		.
	nop			;95df	00		.
	nop			;95e0	00		.
	nop			;95e1	00		.
	nop			;95e2	00		.
	nop			;95e3	00		.
	nop			;95e4	00		.
	nop			;95e5	00		.
	nop			;95e6	00		.
	nop			;95e7	00		.
	nop			;95e8	00		.
	nop			;95e9	00		.
	nop			;95ea	00		.
	nop			;95eb	00		.
	nop			;95ec	00		.
	nop			;95ed	00		.
	nop			;95ee	00		.
	nop			;95ef	00		.
	nop			;95f0	00		.
	nop			;95f1	00		.
	nop			;95f2	00		.
	nop			;95f3	00		.
	nop			;95f4	00		.
	nop			;95f5	00		.
	nop			;95f6	00		.
	nop			;95f7	00		.
	nop			;95f8	00		.
	nop			;95f9	00		.
	nop			;95fa	00		.
	nop			;95fb	00		.
	nop			;95fc	00		.
	nop			;95fd	00		.
	nop			;95fe	00		.
	nop			;95ff	00		.
	nop			;9600	00		.
	nop			;9601	00		.
	nop			;9602	00		.
	nop			;9603	00		.
	nop			;9604	00		.
	nop			;9605	00		.
	nop			;9606	00		.
	nop			;9607	00		.
	nop			;9608	00		.
	nop			;9609	00		.
	nop			;960a	00		.
	nop			;960b	00		.
	nop			;960c	00		.
	nop			;960d	00		.
	nop			;960e	00		.
	nop			;960f	00		.
	nop			;9610	00		.
	nop			;9611	00		.
	nop			;9612	00		.
	nop			;9613	00		.
	nop			;9614	00		.
	nop			;9615	00		.
	nop			;9616	00		.
	nop			;9617	00		.
	nop			;9618	00		.
	nop			;9619	00		.
	nop			;961a	00		.
	nop			;961b	00		.
	nop			;961c	00		.
	nop			;961d	00		.
	nop			;961e	00		.
	nop			;961f	00		.
	nop			;9620	00		.
	nop			;9621	00		.
	nop			;9622	00		.
	nop			;9623	00		.
	nop			;9624	00		.
	nop			;9625	00		.
	nop			;9626	00		.
	nop			;9627	00		.
	nop			;9628	00		.
	nop			;9629	00		.
	nop			;962a	00		.
	nop			;962b	00		.
	nop			;962c	00		.
	nop			;962d	00		.
	nop			;962e	00		.
	nop			;962f	00		.
	nop			;9630	00		.
	nop			;9631	00		.
	nop			;9632	00		.
	nop			;9633	00		.
	nop			;9634	00		.
	nop			;9635	00		.
	nop			;9636	00		.
	nop			;9637	00		.
	nop			;9638	00		.
	nop			;9639	00		.
	nop			;963a	00		.
	nop			;963b	00		.
	nop			;963c	00		.
	nop			;963d	00		.
	nop			;963e	00		.
	nop			;963f	00		.
	nop			;9640	00		.
	nop			;9641	00		.
	nop			;9642	00		.
	nop			;9643	00		.
	nop			;9644	00		.
	nop			;9645	00		.
	nop			;9646	00		.
	nop			;9647	00		.
	nop			;9648	00		.
	nop			;9649	00		.
	nop			;964a	00		.
	nop			;964b	00		.
	nop			;964c	00		.
	nop			;964d	00		.
	nop			;964e	00		.
	nop			;964f	00		.
	nop			;9650	00		.
	nop			;9651	00		.
	nop			;9652	00		.
	nop			;9653	00		.
	nop			;9654	00		.
	nop			;9655	00		.
	nop			;9656	00		.
	nop			;9657	00		.
	nop			;9658	00		.
	nop			;9659	00		.
	nop			;965a	00		.
	nop			;965b	00		.
	nop			;965c	00		.
	nop			;965d	00		.
	nop			;965e	00		.
	nop			;965f	00		.
	nop			;9660	00		.
	nop			;9661	00		.
	nop			;9662	00		.
	nop			;9663	00		.
	nop			;9664	00		.
	nop			;9665	00		.
	nop			;9666	00		.
	nop			;9667	00		.
	nop			;9668	00		.
	nop			;9669	00		.
	nop			;966a	00		.
	nop			;966b	00		.
	nop			;966c	00		.
	nop			;966d	00		.
	nop			;966e	00		.
	nop			;966f	00		.
	nop			;9670	00		.
	nop			;9671	00		.
	nop			;9672	00		.
	nop			;9673	00		.
	nop			;9674	00		.
	nop			;9675	00		.
	nop			;9676	00		.
	nop			;9677	00		.
	nop			;9678	00		.
	nop			;9679	00		.
	nop			;967a	00		.
	nop			;967b	00		.
	nop			;967c	00		.
	nop			;967d	00		.
	nop			;967e	00		.
	nop			;967f	00		.
	nop			;9680	00		.
	nop			;9681	00		.
	nop			;9682	00		.
	nop			;9683	00		.
	nop			;9684	00		.
	nop			;9685	00		.
	nop			;9686	00		.
	nop			;9687	00		.
	nop			;9688	00		.
	nop			;9689	00		.
	nop			;968a	00		.
	nop			;968b	00		.
	nop			;968c	00		.
	nop			;968d	00		.
	nop			;968e	00		.
	nop			;968f	00		.
	nop			;9690	00		.
	nop			;9691	00		.
	nop			;9692	00		.
	nop			;9693	00		.
	nop			;9694	00		.
	nop			;9695	00		.
	nop			;9696	00		.
	nop			;9697	00		.
	nop			;9698	00		.
	nop			;9699	00		.
	nop			;969a	00		.
	nop			;969b	00		.
	nop			;969c	00		.
	nop			;969d	00		.
	nop			;969e	00		.
	nop			;969f	00		.
	nop			;96a0	00		.
	nop			;96a1	00		.
	nop			;96a2	00		.
	nop			;96a3	00		.
	nop			;96a4	00		.
	nop			;96a5	00		.
	nop			;96a6	00		.
	nop			;96a7	00		.
	nop			;96a8	00		.
	nop			;96a9	00		.
	nop			;96aa	00		.
	nop			;96ab	00		.
	nop			;96ac	00		.
	nop			;96ad	00		.
	nop			;96ae	00		.
	nop			;96af	00		.
	nop			;96b0	00		.
	nop			;96b1	00		.
	nop			;96b2	00		.
	nop			;96b3	00		.
	nop			;96b4	00		.
	nop			;96b5	00		.
	nop			;96b6	00		.
	nop			;96b7	00		.
	nop			;96b8	00		.
	nop			;96b9	00		.
	nop			;96ba	00		.
	nop			;96bb	00		.
	nop			;96bc	00		.
	nop			;96bd	00		.
	nop			;96be	00		.
	nop			;96bf	00		.
	nop			;96c0	00		.
	nop			;96c1	00		.
	nop			;96c2	00		.
	nop			;96c3	00		.
	nop			;96c4	00		.
	nop			;96c5	00		.
	nop			;96c6	00		.
	nop			;96c7	00		.
	nop			;96c8	00		.
	nop			;96c9	00		.
	nop			;96ca	00		.
	nop			;96cb	00		.
	nop			;96cc	00		.
	nop			;96cd	00		.
	nop			;96ce	00		.
	nop			;96cf	00		.
	nop			;96d0	00		.
	nop			;96d1	00		.
	nop			;96d2	00		.
	nop			;96d3	00		.
	nop			;96d4	00		.
	nop			;96d5	00		.
	nop			;96d6	00		.
	nop			;96d7	00		.
	nop			;96d8	00		.
	nop			;96d9	00		.
	nop			;96da	00		.
	nop			;96db	00		.
	nop			;96dc	00		.
	nop			;96dd	00		.
	nop			;96de	00		.
	nop			;96df	00		.
	nop			;96e0	00		.
	nop			;96e1	00		.
	nop			;96e2	00		.
	nop			;96e3	00		.
	nop			;96e4	00		.
	nop			;96e5	00		.
	nop			;96e6	00		.
	nop			;96e7	00		.
	nop			;96e8	00		.
	nop			;96e9	00		.
	nop			;96ea	00		.
	nop			;96eb	00		.
	nop			;96ec	00		.
	nop			;96ed	00		.
	nop			;96ee	00		.
	nop			;96ef	00		.
	nop			;96f0	00		.
	nop			;96f1	00		.
	nop			;96f2	00		.
	nop			;96f3	00		.
	nop			;96f4	00		.
	nop			;96f5	00		.
	nop			;96f6	00		.
	nop			;96f7	00		.
	nop			;96f8	00		.
	nop			;96f9	00		.
	nop			;96fa	00		.
	nop			;96fb	00		.
	nop			;96fc	00		.
	nop			;96fd	00		.
	nop			;96fe	00		.
	nop			;96ff	00		.
	nop			;9700	00		.
	nop			;9701	00		.
	nop			;9702	00		.
	nop			;9703	00		.
	nop			;9704	00		.
	nop			;9705	00		.
	nop			;9706	00		.
	nop			;9707	00		.
	nop			;9708	00		.
	nop			;9709	00		.
	nop			;970a	00		.
	nop			;970b	00		.
	nop			;970c	00		.
	nop			;970d	00		.
	nop			;970e	00		.
	nop			;970f	00		.
	nop			;9710	00		.
	nop			;9711	00		.
	nop			;9712	00		.
	nop			;9713	00		.
	nop			;9714	00		.
	nop			;9715	00		.
	nop			;9716	00		.
	nop			;9717	00		.
	nop			;9718	00		.
	nop			;9719	00		.
	nop			;971a	00		.
	nop			;971b	00		.
	nop			;971c	00		.
	nop			;971d	00		.
	nop			;971e	00		.
	nop			;971f	00		.
	nop			;9720	00		.
	nop			;9721	00		.
	nop			;9722	00		.
	nop			;9723	00		.
	nop			;9724	00		.
	nop			;9725	00		.
	nop			;9726	00		.
	nop			;9727	00		.
	nop			;9728	00		.
	nop			;9729	00		.
	nop			;972a	00		.
	nop			;972b	00		.
	nop			;972c	00		.
	nop			;972d	00		.
	nop			;972e	00		.
	nop			;972f	00		.
	nop			;9730	00		.
	nop			;9731	00		.
	nop			;9732	00		.
	nop			;9733	00		.
	nop			;9734	00		.
	nop			;9735	00		.
	nop			;9736	00		.
	nop			;9737	00		.
	nop			;9738	00		.
	nop			;9739	00		.
	nop			;973a	00		.
	nop			;973b	00		.
	nop			;973c	00		.
	nop			;973d	00		.
	nop			;973e	00		.
	nop			;973f	00		.
	nop			;9740	00		.
	nop			;9741	00		.
	nop			;9742	00		.
	nop			;9743	00		.
	nop			;9744	00		.
	nop			;9745	00		.
	nop			;9746	00		.
	nop			;9747	00		.
	nop			;9748	00		.
	nop			;9749	00		.
	nop			;974a	00		.
	nop			;974b	00		.
	nop			;974c	00		.
	nop			;974d	00		.
	nop			;974e	00		.
	nop			;974f	00		.
	nop			;9750	00		.
	nop			;9751	00		.
	nop			;9752	00		.
	nop			;9753	00		.
	nop			;9754	00		.
	nop			;9755	00		.
	nop			;9756	00		.
	nop			;9757	00		.
	nop			;9758	00		.
	nop			;9759	00		.
	nop			;975a	00		.
	nop			;975b	00		.
	nop			;975c	00		.
	nop			;975d	00		.
	nop			;975e	00		.
	nop			;975f	00		.
	nop			;9760	00		.
	nop			;9761	00		.
	nop			;9762	00		.
	nop			;9763	00		.
	nop			;9764	00		.
	nop			;9765	00		.
	nop			;9766	00		.
	nop			;9767	00		.
	nop			;9768	00		.
	nop			;9769	00		.
	nop			;976a	00		.
	nop			;976b	00		.
	nop			;976c	00		.
	nop			;976d	00		.
	nop			;976e	00		.
	nop			;976f	00		.
	nop			;9770	00		.
	nop			;9771	00		.
	nop			;9772	00		.
	nop			;9773	00		.
	nop			;9774	00		.
	nop			;9775	00		.
	nop			;9776	00		.
	nop			;9777	00		.
	nop			;9778	00		.
	nop			;9779	00		.
	nop			;977a	00		.
	nop			;977b	00		.
	nop			;977c	00		.
	nop			;977d	00		.
	nop			;977e	00		.
	nop			;977f	00		.
	nop			;9780	00		.
	nop			;9781	00		.
	nop			;9782	00		.
	nop			;9783	00		.
	nop			;9784	00		.
	nop			;9785	00		.
	nop			;9786	00		.
	nop			;9787	00		.
	nop			;9788	00		.
	nop			;9789	00		.
	nop			;978a	00		.
	nop			;978b	00		.
	nop			;978c	00		.
	nop			;978d	00		.
	nop			;978e	00		.
	nop			;978f	00		.
	nop			;9790	00		.
	nop			;9791	00		.
	nop			;9792	00		.
	nop			;9793	00		.
	nop			;9794	00		.
	nop			;9795	00		.
	nop			;9796	00		.
	nop			;9797	00		.
	nop			;9798	00		.
	nop			;9799	00		.
	nop			;979a	00		.
	nop			;979b	00		.
	nop			;979c	00		.
	nop			;979d	00		.
	nop			;979e	00		.
	nop			;979f	00		.
	nop			;97a0	00		.
	nop			;97a1	00		.
	nop			;97a2	00		.
	nop			;97a3	00		.
	nop			;97a4	00		.
	nop			;97a5	00		.
	nop			;97a6	00		.
	nop			;97a7	00		.
	nop			;97a8	00		.
	nop			;97a9	00		.
	nop			;97aa	00		.
	nop			;97ab	00		.
	nop			;97ac	00		.
	nop			;97ad	00		.
	nop			;97ae	00		.
	nop			;97af	00		.
	nop			;97b0	00		.
	nop			;97b1	00		.
	nop			;97b2	00		.
	nop			;97b3	00		.
	nop			;97b4	00		.
	nop			;97b5	00		.
	nop			;97b6	00		.
	nop			;97b7	00		.
	nop			;97b8	00		.
	nop			;97b9	00		.
	nop			;97ba	00		.
	nop			;97bb	00		.
	nop			;97bc	00		.
	nop			;97bd	00		.
	nop			;97be	00		.
	nop			;97bf	00		.
	nop			;97c0	00		.
	nop			;97c1	00		.
	nop			;97c2	00		.
	nop			;97c3	00		.
	nop			;97c4	00		.
	nop			;97c5	00		.
	nop			;97c6	00		.
	nop			;97c7	00		.
	nop			;97c8	00		.
	nop			;97c9	00		.
	nop			;97ca	00		.
	nop			;97cb	00		.
	nop			;97cc	00		.
	nop			;97cd	00		.
	nop			;97ce	00		.
	nop			;97cf	00		.
	nop			;97d0	00		.
	nop			;97d1	00		.
	nop			;97d2	00		.
	nop			;97d3	00		.
	nop			;97d4	00		.
	nop			;97d5	00		.
	nop			;97d6	00		.
	nop			;97d7	00		.
	nop			;97d8	00		.
	nop			;97d9	00		.
	nop			;97da	00		.
	nop			;97db	00		.
	nop			;97dc	00		.
	nop			;97dd	00		.
	nop			;97de	00		.
	nop			;97df	00		.
	nop			;97e0	00		.
	nop			;97e1	00		.
	nop			;97e2	00		.
	nop			;97e3	00		.
	nop			;97e4	00		.
	nop			;97e5	00		.
	nop			;97e6	00		.
	nop			;97e7	00		.
	nop			;97e8	00		.
	nop			;97e9	00		.
	nop			;97ea	00		.
	nop			;97eb	00		.
	nop			;97ec	00		.
	nop			;97ed	00		.
	nop			;97ee	00		.
	nop			;97ef	00		.
	nop			;97f0	00		.
	nop			;97f1	00		.
	nop			;97f2	00		.
	nop			;97f3	00		.
	nop			;97f4	00		.
	nop			;97f5	00		.
	nop			;97f6	00		.
	nop			;97f7	00		.
	nop			;97f8	00		.
	nop			;97f9	00		.
	nop			;97fa	00		.
	nop			;97fb	00		.
	nop			;97fc	00		.
	nop			;97fd	00		.
	nop			;97fe	00		.
	nop			;97ff	00		.
	nop			;9800	00		.
	nop			;9801	00		.
	nop			;9802	00		.
	nop			;9803	00		.
	nop			;9804	00		.
	nop			;9805	00		.
	nop			;9806	00		.
	nop			;9807	00		.
	nop			;9808	00		.
	nop			;9809	00		.
	nop			;980a	00		.
	nop			;980b	00		.
	nop			;980c	00		.
	nop			;980d	00		.
	nop			;980e	00		.
	nop			;980f	00		.
	nop			;9810	00		.
	nop			;9811	00		.
	nop			;9812	00		.
	nop			;9813	00		.
	nop			;9814	00		.
	nop			;9815	00		.
	nop			;9816	00		.
	nop			;9817	00		.
	nop			;9818	00		.
	nop			;9819	00		.
	nop			;981a	00		.
	nop			;981b	00		.
	nop			;981c	00		.
	nop			;981d	00		.
	nop			;981e	00		.
	nop			;981f	00		.
	nop			;9820	00		.
	nop			;9821	00		.
	nop			;9822	00		.
	nop			;9823	00		.
	nop			;9824	00		.
	nop			;9825	00		.
	nop			;9826	00		.
	nop			;9827	00		.
	nop			;9828	00		.
	nop			;9829	00		.
	nop			;982a	00		.
	nop			;982b	00		.
	nop			;982c	00		.
	nop			;982d	00		.
	nop			;982e	00		.
	nop			;982f	00		.
	nop			;9830	00		.
	nop			;9831	00		.
	nop			;9832	00		.
	nop			;9833	00		.
	nop			;9834	00		.
	nop			;9835	00		.
	nop			;9836	00		.
	nop			;9837	00		.
	nop			;9838	00		.
	nop			;9839	00		.
	nop			;983a	00		.
	nop			;983b	00		.
	nop			;983c	00		.
	nop			;983d	00		.
	nop			;983e	00		.
	nop			;983f	00		.
	nop			;9840	00		.
	nop			;9841	00		.
	nop			;9842	00		.
	nop			;9843	00		.
	nop			;9844	00		.
	nop			;9845	00		.
	nop			;9846	00		.
	nop			;9847	00		.
	nop			;9848	00		.
	nop			;9849	00		.
	nop			;984a	00		.
	nop			;984b	00		.
	nop			;984c	00		.
	nop			;984d	00		.
	nop			;984e	00		.
	nop			;984f	00		.
	nop			;9850	00		.
	nop			;9851	00		.
	nop			;9852	00		.
	nop			;9853	00		.
	nop			;9854	00		.
	nop			;9855	00		.
	nop			;9856	00		.
l9857h:
	nop			;9857	00		.
	nop			;9858	00		.
	nop			;9859	00		.
	nop			;985a	00		.
	nop			;985b	00		.
	nop			;985c	00		.
	nop			;985d	00		.
	nop			;985e	00		.
	nop			;985f	00		.
	nop			;9860	00		.
	nop			;9861	00		.
	nop			;9862	00		.
	nop			;9863	00		.
	nop			;9864	00		.
	nop			;9865	00		.
	nop			;9866	00		.
	nop			;9867	00		.
	nop			;9868	00		.
	nop			;9869	00		.
	nop			;986a	00		.
	nop			;986b	00		.
	nop			;986c	00		.
	nop			;986d	00		.
	nop			;986e	00		.
	nop			;986f	00		.
	nop			;9870	00		.
	nop			;9871	00		.
	nop			;9872	00		.
	nop			;9873	00		.
	nop			;9874	00		.
	nop			;9875	00		.
	nop			;9876	00		.
	nop			;9877	00		.
	nop			;9878	00		.
	nop			;9879	00		.
	nop			;987a	00		.
	nop			;987b	00		.
	nop			;987c	00		.
	nop			;987d	00		.
	nop			;987e	00		.
	nop			;987f	00		.
	nop			;9880	00		.
	nop			;9881	00		.
	nop			;9882	00		.
	nop			;9883	00		.
	nop			;9884	00		.
	nop			;9885	00		.
	nop			;9886	00		.
	nop			;9887	00		.
	nop			;9888	00		.
	nop			;9889	00		.
	nop			;988a	00		.
	nop			;988b	00		.
	nop			;988c	00		.
	nop			;988d	00		.
	nop			;988e	00		.
	nop			;988f	00		.
	nop			;9890	00		.
	nop			;9891	00		.
	nop			;9892	00		.
	nop			;9893	00		.
	nop			;9894	00		.
	nop			;9895	00		.
	nop			;9896	00		.
	nop			;9897	00		.
	nop			;9898	00		.
	nop			;9899	00		.
	nop			;989a	00		.
	nop			;989b	00		.
	nop			;989c	00		.
	nop			;989d	00		.
	nop			;989e	00		.
	nop			;989f	00		.
	nop			;98a0	00		.
	nop			;98a1	00		.
	nop			;98a2	00		.
	nop			;98a3	00		.
	nop			;98a4	00		.
	nop			;98a5	00		.
	nop			;98a6	00		.
	nop			;98a7	00		.
	nop			;98a8	00		.
	nop			;98a9	00		.
	nop			;98aa	00		.
	nop			;98ab	00		.
	nop			;98ac	00		.
	nop			;98ad	00		.
	nop			;98ae	00		.
	nop			;98af	00		.
	nop			;98b0	00		.
	nop			;98b1	00		.
	nop			;98b2	00		.
	nop			;98b3	00		.
	nop			;98b4	00		.
	nop			;98b5	00		.
	nop			;98b6	00		.
	nop			;98b7	00		.
	nop			;98b8	00		.
	nop			;98b9	00		.
	nop			;98ba	00		.
	nop			;98bb	00		.
	nop			;98bc	00		.
	nop			;98bd	00		.
	nop			;98be	00		.
	nop			;98bf	00		.
	nop			;98c0	00		.
	nop			;98c1	00		.
	nop			;98c2	00		.
	nop			;98c3	00		.
	nop			;98c4	00		.
	nop			;98c5	00		.
	nop			;98c6	00		.
	nop			;98c7	00		.
	nop			;98c8	00		.
	nop			;98c9	00		.
	nop			;98ca	00		.
	nop			;98cb	00		.
	nop			;98cc	00		.
	nop			;98cd	00		.
	nop			;98ce	00		.
	nop			;98cf	00		.
	nop			;98d0	00		.
	nop			;98d1	00		.
	nop			;98d2	00		.
	nop			;98d3	00		.
	nop			;98d4	00		.
	nop			;98d5	00		.
	nop			;98d6	00		.
	nop			;98d7	00		.
	nop			;98d8	00		.
	nop			;98d9	00		.
	nop			;98da	00		.
	nop			;98db	00		.
	nop			;98dc	00		.
	nop			;98dd	00		.
	nop			;98de	00		.
	nop			;98df	00		.
	nop			;98e0	00		.
	nop			;98e1	00		.
	nop			;98e2	00		.
	nop			;98e3	00		.
	nop			;98e4	00		.
	nop			;98e5	00		.
	nop			;98e6	00		.
	nop			;98e7	00		.
	nop			;98e8	00		.
	nop			;98e9	00		.
	nop			;98ea	00		.
	nop			;98eb	00		.
	nop			;98ec	00		.
	nop			;98ed	00		.
	nop			;98ee	00		.
	nop			;98ef	00		.
	nop			;98f0	00		.
	nop			;98f1	00		.
	nop			;98f2	00		.
	nop			;98f3	00		.
	nop			;98f4	00		.
	nop			;98f5	00		.
	nop			;98f6	00		.
	nop			;98f7	00		.
	nop			;98f8	00		.
	nop			;98f9	00		.
	nop			;98fa	00		.
	nop			;98fb	00		.
	nop			;98fc	00		.
	nop			;98fd	00		.
	nop			;98fe	00		.
	nop			;98ff	00		.
	nop			;9900	00		.
	nop			;9901	00		.
	nop			;9902	00		.
	nop			;9903	00		.
	nop			;9904	00		.
	nop			;9905	00		.
	nop			;9906	00		.
	nop			;9907	00		.
	nop			;9908	00		.
	nop			;9909	00		.
	nop			;990a	00		.
	nop			;990b	00		.
	nop			;990c	00		.
	nop			;990d	00		.
	nop			;990e	00		.
	nop			;990f	00		.
	nop			;9910	00		.
	nop			;9911	00		.
	nop			;9912	00		.
	nop			;9913	00		.
	nop			;9914	00		.
	nop			;9915	00		.
	nop			;9916	00		.
	nop			;9917	00		.
	nop			;9918	00		.
	nop			;9919	00		.
	nop			;991a	00		.
	nop			;991b	00		.
	nop			;991c	00		.
	nop			;991d	00		.
	nop			;991e	00		.
	nop			;991f	00		.
	nop			;9920	00		.
	nop			;9921	00		.
	nop			;9922	00		.
	nop			;9923	00		.
	nop			;9924	00		.
	nop			;9925	00		.
	nop			;9926	00		.
	nop			;9927	00		.
	nop			;9928	00		.
	nop			;9929	00		.
	nop			;992a	00		.
	nop			;992b	00		.
	nop			;992c	00		.
	nop			;992d	00		.
	nop			;992e	00		.
	nop			;992f	00		.
	nop			;9930	00		.
	nop			;9931	00		.
	nop			;9932	00		.
	nop			;9933	00		.
	nop			;9934	00		.
	nop			;9935	00		.
	nop			;9936	00		.
	nop			;9937	00		.
	nop			;9938	00		.
	nop			;9939	00		.
	nop			;993a	00		.
	nop			;993b	00		.
	nop			;993c	00		.
	nop			;993d	00		.
	nop			;993e	00		.
	nop			;993f	00		.
	nop			;9940	00		.
	nop			;9941	00		.
	nop			;9942	00		.
	nop			;9943	00		.
	nop			;9944	00		.
	nop			;9945	00		.
	nop			;9946	00		.
	nop			;9947	00		.
	nop			;9948	00		.
	nop			;9949	00		.
	nop			;994a	00		.
	nop			;994b	00		.
	nop			;994c	00		.
	nop			;994d	00		.
	nop			;994e	00		.
	nop			;994f	00		.
	nop			;9950	00		.
	nop			;9951	00		.
	nop			;9952	00		.
	nop			;9953	00		.
	nop			;9954	00		.
	nop			;9955	00		.
	nop			;9956	00		.
	nop			;9957	00		.
	nop			;9958	00		.
	nop			;9959	00		.
	nop			;995a	00		.
	nop			;995b	00		.
	nop			;995c	00		.
	nop			;995d	00		.
	nop			;995e	00		.
	nop			;995f	00		.
	nop			;9960	00		.
	nop			;9961	00		.
	nop			;9962	00		.
	nop			;9963	00		.
	nop			;9964	00		.
	nop			;9965	00		.
	nop			;9966	00		.
	nop			;9967	00		.
	nop			;9968	00		.
	nop			;9969	00		.
	nop			;996a	00		.
	nop			;996b	00		.
	nop			;996c	00		.
	nop			;996d	00		.
	nop			;996e	00		.
	nop			;996f	00		.
	nop			;9970	00		.
	nop			;9971	00		.
	nop			;9972	00		.
	nop			;9973	00		.
	nop			;9974	00		.
	nop			;9975	00		.
	nop			;9976	00		.
	nop			;9977	00		.
	nop			;9978	00		.
	nop			;9979	00		.
	nop			;997a	00		.
	nop			;997b	00		.
	nop			;997c	00		.
	nop			;997d	00		.
	nop			;997e	00		.
	nop			;997f	00		.
	nop			;9980	00		.
	nop			;9981	00		.
	nop			;9982	00		.
	nop			;9983	00		.
	nop			;9984	00		.
	nop			;9985	00		.
	nop			;9986	00		.
	nop			;9987	00		.
	nop			;9988	00		.
	nop			;9989	00		.
	nop			;998a	00		.
	nop			;998b	00		.
	nop			;998c	00		.
	nop			;998d	00		.
	nop			;998e	00		.
	nop			;998f	00		.
	nop			;9990	00		.
	nop			;9991	00		.
	nop			;9992	00		.
	nop			;9993	00		.
	nop			;9994	00		.
	nop			;9995	00		.
	nop			;9996	00		.
	nop			;9997	00		.
	nop			;9998	00		.
	nop			;9999	00		.
	nop			;999a	00		.
	nop			;999b	00		.
	nop			;999c	00		.
	nop			;999d	00		.
	nop			;999e	00		.
	nop			;999f	00		.
	nop			;99a0	00		.
	nop			;99a1	00		.
	nop			;99a2	00		.
	nop			;99a3	00		.
	nop			;99a4	00		.
	nop			;99a5	00		.
	nop			;99a6	00		.
	nop			;99a7	00		.
	nop			;99a8	00		.
	nop			;99a9	00		.
	nop			;99aa	00		.
	nop			;99ab	00		.
	nop			;99ac	00		.
	nop			;99ad	00		.
	nop			;99ae	00		.
	nop			;99af	00		.
	nop			;99b0	00		.
	nop			;99b1	00		.
	nop			;99b2	00		.
	nop			;99b3	00		.
	nop			;99b4	00		.
	nop			;99b5	00		.
	nop			;99b6	00		.
	nop			;99b7	00		.
	nop			;99b8	00		.
	nop			;99b9	00		.
	nop			;99ba	00		.
	nop			;99bb	00		.
	nop			;99bc	00		.
	nop			;99bd	00		.
	nop			;99be	00		.
	nop			;99bf	00		.
	nop			;99c0	00		.
	nop			;99c1	00		.
	nop			;99c2	00		.
	nop			;99c3	00		.
	nop			;99c4	00		.
	nop			;99c5	00		.
l99c6h:
	nop			;99c6	00		.
	nop			;99c7	00		.
	nop			;99c8	00		.
	nop			;99c9	00		.
	nop			;99ca	00		.
	nop			;99cb	00		.
	nop			;99cc	00		.
	nop			;99cd	00		.
	nop			;99ce	00		.
	nop			;99cf	00		.
	nop			;99d0	00		.
	nop			;99d1	00		.
	nop			;99d2	00		.
	nop			;99d3	00		.
	nop			;99d4	00		.
	nop			;99d5	00		.
	nop			;99d6	00		.
	nop			;99d7	00		.
	nop			;99d8	00		.
	nop			;99d9	00		.
	nop			;99da	00		.
	nop			;99db	00		.
	nop			;99dc	00		.
	nop			;99dd	00		.
	nop			;99de	00		.
	nop			;99df	00		.
	nop			;99e0	00		.
	nop			;99e1	00		.
	nop			;99e2	00		.
	nop			;99e3	00		.
	nop			;99e4	00		.
	nop			;99e5	00		.
	nop			;99e6	00		.
	nop			;99e7	00		.
	nop			;99e8	00		.
	nop			;99e9	00		.
	nop			;99ea	00		.
	nop			;99eb	00		.
	nop			;99ec	00		.
	nop			;99ed	00		.
	nop			;99ee	00		.
	nop			;99ef	00		.
	nop			;99f0	00		.
	nop			;99f1	00		.
	nop			;99f2	00		.
	nop			;99f3	00		.
	nop			;99f4	00		.
	nop			;99f5	00		.
	nop			;99f6	00		.
	nop			;99f7	00		.
	nop			;99f8	00		.
	nop			;99f9	00		.
	nop			;99fa	00		.
	nop			;99fb	00		.
	nop			;99fc	00		.
	nop			;99fd	00		.
	nop			;99fe	00		.
	nop			;99ff	00		.
	nop			;9a00	00		.
	nop			;9a01	00		.
	nop			;9a02	00		.
	nop			;9a03	00		.
	nop			;9a04	00		.
	nop			;9a05	00		.
	nop			;9a06	00		.
	nop			;9a07	00		.
	nop			;9a08	00		.
	nop			;9a09	00		.
	nop			;9a0a	00		.
	nop			;9a0b	00		.
	nop			;9a0c	00		.
	nop			;9a0d	00		.
	nop			;9a0e	00		.
	nop			;9a0f	00		.
	nop			;9a10	00		.
	nop			;9a11	00		.
	nop			;9a12	00		.
	nop			;9a13	00		.
	nop			;9a14	00		.
	nop			;9a15	00		.
	nop			;9a16	00		.
	nop			;9a17	00		.
	nop			;9a18	00		.
	nop			;9a19	00		.
	nop			;9a1a	00		.
	nop			;9a1b	00		.
	nop			;9a1c	00		.
	nop			;9a1d	00		.
	nop			;9a1e	00		.
	nop			;9a1f	00		.
	nop			;9a20	00		.
	nop			;9a21	00		.
	nop			;9a22	00		.
	nop			;9a23	00		.
	nop			;9a24	00		.
	nop			;9a25	00		.
	nop			;9a26	00		.
	nop			;9a27	00		.
	nop			;9a28	00		.
	nop			;9a29	00		.
	nop			;9a2a	00		.
	nop			;9a2b	00		.
	nop			;9a2c	00		.
	nop			;9a2d	00		.
	nop			;9a2e	00		.
	nop			;9a2f	00		.
	nop			;9a30	00		.
	nop			;9a31	00		.
	nop			;9a32	00		.
	nop			;9a33	00		.
	nop			;9a34	00		.
	nop			;9a35	00		.
	nop			;9a36	00		.
	nop			;9a37	00		.
	nop			;9a38	00		.
	nop			;9a39	00		.
	nop			;9a3a	00		.
	nop			;9a3b	00		.
	nop			;9a3c	00		.
	nop			;9a3d	00		.
	nop			;9a3e	00		.
	nop			;9a3f	00		.
	nop			;9a40	00		.
	nop			;9a41	00		.
	nop			;9a42	00		.
	nop			;9a43	00		.
	nop			;9a44	00		.
	nop			;9a45	00		.
	nop			;9a46	00		.
	nop			;9a47	00		.
	nop			;9a48	00		.
	nop			;9a49	00		.
	nop			;9a4a	00		.
	nop			;9a4b	00		.
	nop			;9a4c	00		.
	nop			;9a4d	00		.
	nop			;9a4e	00		.
	nop			;9a4f	00		.
	nop			;9a50	00		.
	nop			;9a51	00		.
	nop			;9a52	00		.
	nop			;9a53	00		.
	nop			;9a54	00		.
	nop			;9a55	00		.
	nop			;9a56	00		.
	nop			;9a57	00		.
	nop			;9a58	00		.
	nop			;9a59	00		.
	nop			;9a5a	00		.
	nop			;9a5b	00		.
	nop			;9a5c	00		.
	nop			;9a5d	00		.
	nop			;9a5e	00		.
	nop			;9a5f	00		.
	nop			;9a60	00		.
	nop			;9a61	00		.
	nop			;9a62	00		.
	nop			;9a63	00		.
	nop			;9a64	00		.
	nop			;9a65	00		.
	nop			;9a66	00		.
	nop			;9a67	00		.
	nop			;9a68	00		.
	nop			;9a69	00		.
	nop			;9a6a	00		.
	nop			;9a6b	00		.
	nop			;9a6c	00		.
	nop			;9a6d	00		.
	nop			;9a6e	00		.
	nop			;9a6f	00		.
	nop			;9a70	00		.
	nop			;9a71	00		.
	nop			;9a72	00		.
	nop			;9a73	00		.
	nop			;9a74	00		.
	nop			;9a75	00		.
	nop			;9a76	00		.
	nop			;9a77	00		.
	nop			;9a78	00		.
	nop			;9a79	00		.
	nop			;9a7a	00		.
	nop			;9a7b	00		.
	nop			;9a7c	00		.
	nop			;9a7d	00		.
	nop			;9a7e	00		.
	nop			;9a7f	00		.
	nop			;9a80	00		.
	nop			;9a81	00		.
	nop			;9a82	00		.
	nop			;9a83	00		.
	nop			;9a84	00		.
	nop			;9a85	00		.
	nop			;9a86	00		.
	nop			;9a87	00		.
	nop			;9a88	00		.
	nop			;9a89	00		.
	nop			;9a8a	00		.
	nop			;9a8b	00		.
	nop			;9a8c	00		.
	nop			;9a8d	00		.
	nop			;9a8e	00		.
	nop			;9a8f	00		.
	nop			;9a90	00		.
	nop			;9a91	00		.
	nop			;9a92	00		.
	nop			;9a93	00		.
	nop			;9a94	00		.
	nop			;9a95	00		.
	nop			;9a96	00		.
	nop			;9a97	00		.
	nop			;9a98	00		.
	nop			;9a99	00		.
	nop			;9a9a	00		.
	nop			;9a9b	00		.
	nop			;9a9c	00		.
	nop			;9a9d	00		.
	nop			;9a9e	00		.
	nop			;9a9f	00		.
	nop			;9aa0	00		.
	nop			;9aa1	00		.
	nop			;9aa2	00		.
	nop			;9aa3	00		.
	nop			;9aa4	00		.
	nop			;9aa5	00		.
	nop			;9aa6	00		.
	nop			;9aa7	00		.
	nop			;9aa8	00		.
	nop			;9aa9	00		.
	nop			;9aaa	00		.
	nop			;9aab	00		.
	nop			;9aac	00		.
	nop			;9aad	00		.
	nop			;9aae	00		.
	nop			;9aaf	00		.
	nop			;9ab0	00		.
	nop			;9ab1	00		.
	nop			;9ab2	00		.
	nop			;9ab3	00		.
	nop			;9ab4	00		.
	nop			;9ab5	00		.
	nop			;9ab6	00		.
	nop			;9ab7	00		.
	nop			;9ab8	00		.
	nop			;9ab9	00		.
	nop			;9aba	00		.
	nop			;9abb	00		.
	nop			;9abc	00		.
	nop			;9abd	00		.
	nop			;9abe	00		.
	nop			;9abf	00		.
	nop			;9ac0	00		.
	nop			;9ac1	00		.
	nop			;9ac2	00		.
	nop			;9ac3	00		.
	nop			;9ac4	00		.
	nop			;9ac5	00		.
	nop			;9ac6	00		.
	nop			;9ac7	00		.
	nop			;9ac8	00		.
	nop			;9ac9	00		.
	nop			;9aca	00		.
	nop			;9acb	00		.
	nop			;9acc	00		.
	nop			;9acd	00		.
	nop			;9ace	00		.
	nop			;9acf	00		.
	nop			;9ad0	00		.
	nop			;9ad1	00		.
	nop			;9ad2	00		.
	nop			;9ad3	00		.
	nop			;9ad4	00		.
	nop			;9ad5	00		.
	nop			;9ad6	00		.
	nop			;9ad7	00		.
	nop			;9ad8	00		.
	nop			;9ad9	00		.
	nop			;9ada	00		.
	nop			;9adb	00		.
	nop			;9adc	00		.
	nop			;9add	00		.
	nop			;9ade	00		.
	nop			;9adf	00		.
	nop			;9ae0	00		.
	nop			;9ae1	00		.
	nop			;9ae2	00		.
	nop			;9ae3	00		.
	nop			;9ae4	00		.
	nop			;9ae5	00		.
	nop			;9ae6	00		.
	nop			;9ae7	00		.
	nop			;9ae8	00		.
	nop			;9ae9	00		.
	nop			;9aea	00		.
	nop			;9aeb	00		.
	nop			;9aec	00		.
	nop			;9aed	00		.
	nop			;9aee	00		.
	nop			;9aef	00		.
	nop			;9af0	00		.
	nop			;9af1	00		.
	nop			;9af2	00		.
	nop			;9af3	00		.
	nop			;9af4	00		.
	nop			;9af5	00		.
	nop			;9af6	00		.
	nop			;9af7	00		.
	nop			;9af8	00		.
	nop			;9af9	00		.
	nop			;9afa	00		.
	nop			;9afb	00		.
	nop			;9afc	00		.
	nop			;9afd	00		.
	nop			;9afe	00		.
	nop			;9aff	00		.
	nop			;9b00	00		.
	nop			;9b01	00		.
	nop			;9b02	00		.
	nop			;9b03	00		.
	nop			;9b04	00		.
	nop			;9b05	00		.
	nop			;9b06	00		.
	nop			;9b07	00		.
	nop			;9b08	00		.
	nop			;9b09	00		.
	nop			;9b0a	00		.
	nop			;9b0b	00		.
	nop			;9b0c	00		.
	nop			;9b0d	00		.
	nop			;9b0e	00		.
	nop			;9b0f	00		.
	nop			;9b10	00		.
	nop			;9b11	00		.
	nop			;9b12	00		.
	nop			;9b13	00		.
	nop			;9b14	00		.
	nop			;9b15	00		.
	nop			;9b16	00		.
	nop			;9b17	00		.
	nop			;9b18	00		.
	nop			;9b19	00		.
	nop			;9b1a	00		.
	nop			;9b1b	00		.
	nop			;9b1c	00		.
	nop			;9b1d	00		.
	nop			;9b1e	00		.
	nop			;9b1f	00		.
	nop			;9b20	00		.
	nop			;9b21	00		.
	nop			;9b22	00		.
	nop			;9b23	00		.
	nop			;9b24	00		.
	nop			;9b25	00		.
	nop			;9b26	00		.
	nop			;9b27	00		.
	nop			;9b28	00		.
	nop			;9b29	00		.
	nop			;9b2a	00		.
	nop			;9b2b	00		.
	nop			;9b2c	00		.
	nop			;9b2d	00		.
	nop			;9b2e	00		.
	nop			;9b2f	00		.
	nop			;9b30	00		.
	nop			;9b31	00		.
	nop			;9b32	00		.
	nop			;9b33	00		.
	nop			;9b34	00		.
	nop			;9b35	00		.
	nop			;9b36	00		.
	nop			;9b37	00		.
	nop			;9b38	00		.
	nop			;9b39	00		.
	nop			;9b3a	00		.
	nop			;9b3b	00		.
	nop			;9b3c	00		.
	nop			;9b3d	00		.
	nop			;9b3e	00		.
	nop			;9b3f	00		.
	nop			;9b40	00		.
	nop			;9b41	00		.
	nop			;9b42	00		.
	nop			;9b43	00		.
	nop			;9b44	00		.
	nop			;9b45	00		.
	nop			;9b46	00		.
	nop			;9b47	00		.
	nop			;9b48	00		.
	nop			;9b49	00		.
	nop			;9b4a	00		.
	nop			;9b4b	00		.
	nop			;9b4c	00		.
	nop			;9b4d	00		.
	nop			;9b4e	00		.
	nop			;9b4f	00		.
	nop			;9b50	00		.
	nop			;9b51	00		.
	nop			;9b52	00		.
	nop			;9b53	00		.
	nop			;9b54	00		.
	nop			;9b55	00		.
	nop			;9b56	00		.
	nop			;9b57	00		.
	nop			;9b58	00		.
	nop			;9b59	00		.
	nop			;9b5a	00		.
	nop			;9b5b	00		.
	nop			;9b5c	00		.
	nop			;9b5d	00		.
	nop			;9b5e	00		.
	nop			;9b5f	00		.
	nop			;9b60	00		.
	nop			;9b61	00		.
	nop			;9b62	00		.
	nop			;9b63	00		.
	nop			;9b64	00		.
	nop			;9b65	00		.
	nop			;9b66	00		.
	nop			;9b67	00		.
	nop			;9b68	00		.
	nop			;9b69	00		.
	nop			;9b6a	00		.
	nop			;9b6b	00		.
	nop			;9b6c	00		.
	nop			;9b6d	00		.
	nop			;9b6e	00		.
	nop			;9b6f	00		.
	nop			;9b70	00		.
	nop			;9b71	00		.
	nop			;9b72	00		.
	nop			;9b73	00		.
	nop			;9b74	00		.
	nop			;9b75	00		.
	nop			;9b76	00		.
	nop			;9b77	00		.
	nop			;9b78	00		.
	nop			;9b79	00		.
	nop			;9b7a	00		.
	nop			;9b7b	00		.
	nop			;9b7c	00		.
	nop			;9b7d	00		.
	nop			;9b7e	00		.
	nop			;9b7f	00		.
	nop			;9b80	00		.
	nop			;9b81	00		.
	nop			;9b82	00		.
	nop			;9b83	00		.
	nop			;9b84	00		.
	nop			;9b85	00		.
	nop			;9b86	00		.
	nop			;9b87	00		.
	nop			;9b88	00		.
	nop			;9b89	00		.
	nop			;9b8a	00		.
	nop			;9b8b	00		.
	nop			;9b8c	00		.
	nop			;9b8d	00		.
	nop			;9b8e	00		.
	nop			;9b8f	00		.
	nop			;9b90	00		.
	nop			;9b91	00		.
	nop			;9b92	00		.
	nop			;9b93	00		.
	nop			;9b94	00		.
	nop			;9b95	00		.
	nop			;9b96	00		.
	nop			;9b97	00		.
	nop			;9b98	00		.
	nop			;9b99	00		.
	nop			;9b9a	00		.
	nop			;9b9b	00		.
	nop			;9b9c	00		.
	nop			;9b9d	00		.
	nop			;9b9e	00		.
	nop			;9b9f	00		.
	nop			;9ba0	00		.
	nop			;9ba1	00		.
	nop			;9ba2	00		.
	nop			;9ba3	00		.
	nop			;9ba4	00		.
	nop			;9ba5	00		.
	nop			;9ba6	00		.
	nop			;9ba7	00		.
	nop			;9ba8	00		.
	nop			;9ba9	00		.
	nop			;9baa	00		.
	nop			;9bab	00		.
	nop			;9bac	00		.
	nop			;9bad	00		.
	nop			;9bae	00		.
	nop			;9baf	00		.
	nop			;9bb0	00		.
	nop			;9bb1	00		.
	nop			;9bb2	00		.
	nop			;9bb3	00		.
	nop			;9bb4	00		.
	nop			;9bb5	00		.
	nop			;9bb6	00		.
	nop			;9bb7	00		.
	nop			;9bb8	00		.
	nop			;9bb9	00		.
	nop			;9bba	00		.
	nop			;9bbb	00		.
	nop			;9bbc	00		.
	nop			;9bbd	00		.
	nop			;9bbe	00		.
	nop			;9bbf	00		.
	nop			;9bc0	00		.
	nop			;9bc1	00		.
	nop			;9bc2	00		.
	nop			;9bc3	00		.
	nop			;9bc4	00		.
	nop			;9bc5	00		.
	nop			;9bc6	00		.
	nop			;9bc7	00		.
	nop			;9bc8	00		.
	nop			;9bc9	00		.
	nop			;9bca	00		.
	nop			;9bcb	00		.
	nop			;9bcc	00		.
	nop			;9bcd	00		.
	nop			;9bce	00		.
	nop			;9bcf	00		.
	nop			;9bd0	00		.
	nop			;9bd1	00		.
	nop			;9bd2	00		.
	nop			;9bd3	00		.
	nop			;9bd4	00		.
	nop			;9bd5	00		.
	nop			;9bd6	00		.
	nop			;9bd7	00		.
	nop			;9bd8	00		.
	nop			;9bd9	00		.
	nop			;9bda	00		.
	nop			;9bdb	00		.
	nop			;9bdc	00		.
	nop			;9bdd	00		.
	nop			;9bde	00		.
	nop			;9bdf	00		.
	nop			;9be0	00		.
	nop			;9be1	00		.
	nop			;9be2	00		.
	nop			;9be3	00		.
	nop			;9be4	00		.
	nop			;9be5	00		.
	nop			;9be6	00		.
	nop			;9be7	00		.
	nop			;9be8	00		.
	nop			;9be9	00		.
	nop			;9bea	00		.
	nop			;9beb	00		.
	nop			;9bec	00		.
	nop			;9bed	00		.
	nop			;9bee	00		.
	nop			;9bef	00		.
	nop			;9bf0	00		.
	nop			;9bf1	00		.
	nop			;9bf2	00		.
	nop			;9bf3	00		.
	nop			;9bf4	00		.
	nop			;9bf5	00		.
	nop			;9bf6	00		.
	nop			;9bf7	00		.
	nop			;9bf8	00		.
	nop			;9bf9	00		.
	nop			;9bfa	00		.
	nop			;9bfb	00		.
	nop			;9bfc	00		.
	nop			;9bfd	00		.
	nop			;9bfe	00		.
	nop			;9bff	00		.
	nop			;9c00	00		.
	nop			;9c01	00		.
	nop			;9c02	00		.
	nop			;9c03	00		.
	nop			;9c04	00		.
	nop			;9c05	00		.
	nop			;9c06	00		.
	nop			;9c07	00		.
	nop			;9c08	00		.
	nop			;9c09	00		.
	nop			;9c0a	00		.
	nop			;9c0b	00		.
	nop			;9c0c	00		.
	nop			;9c0d	00		.
	nop			;9c0e	00		.
	nop			;9c0f	00		.
	nop			;9c10	00		.
	nop			;9c11	00		.
	nop			;9c12	00		.
	nop			;9c13	00		.
	nop			;9c14	00		.
	nop			;9c15	00		.
	nop			;9c16	00		.
	nop			;9c17	00		.
	nop			;9c18	00		.
	nop			;9c19	00		.
	nop			;9c1a	00		.
	nop			;9c1b	00		.
	nop			;9c1c	00		.
	nop			;9c1d	00		.
	nop			;9c1e	00		.
	nop			;9c1f	00		.
	nop			;9c20	00		.
	nop			;9c21	00		.
	nop			;9c22	00		.
	nop			;9c23	00		.
	nop			;9c24	00		.
	nop			;9c25	00		.
	nop			;9c26	00		.
	nop			;9c27	00		.
	nop			;9c28	00		.
	nop			;9c29	00		.
	nop			;9c2a	00		.
	nop			;9c2b	00		.
	nop			;9c2c	00		.
	nop			;9c2d	00		.
	nop			;9c2e	00		.
	nop			;9c2f	00		.
	nop			;9c30	00		.
	nop			;9c31	00		.
	nop			;9c32	00		.
	nop			;9c33	00		.
	nop			;9c34	00		.
	nop			;9c35	00		.
	nop			;9c36	00		.
	nop			;9c37	00		.
	nop			;9c38	00		.
	nop			;9c39	00		.
	nop			;9c3a	00		.
	nop			;9c3b	00		.
	nop			;9c3c	00		.
	nop			;9c3d	00		.
	nop			;9c3e	00		.
	nop			;9c3f	00		.
	nop			;9c40	00		.
	nop			;9c41	00		.
	nop			;9c42	00		.
	nop			;9c43	00		.
	nop			;9c44	00		.
	nop			;9c45	00		.
	nop			;9c46	00		.
	nop			;9c47	00		.
	nop			;9c48	00		.
	nop			;9c49	00		.
	nop			;9c4a	00		.
	nop			;9c4b	00		.
	nop			;9c4c	00		.
	nop			;9c4d	00		.
	nop			;9c4e	00		.
	nop			;9c4f	00		.
	nop			;9c50	00		.
	nop			;9c51	00		.
	nop			;9c52	00		.
	nop			;9c53	00		.
	nop			;9c54	00		.
	nop			;9c55	00		.
	nop			;9c56	00		.
	nop			;9c57	00		.
	nop			;9c58	00		.
	nop			;9c59	00		.
	nop			;9c5a	00		.
	nop			;9c5b	00		.
	nop			;9c5c	00		.
	nop			;9c5d	00		.
	nop			;9c5e	00		.
	nop			;9c5f	00		.
	nop			;9c60	00		.
	nop			;9c61	00		.
	nop			;9c62	00		.
	nop			;9c63	00		.
	nop			;9c64	00		.
	nop			;9c65	00		.
	nop			;9c66	00		.
	nop			;9c67	00		.
	nop			;9c68	00		.
	nop			;9c69	00		.
	nop			;9c6a	00		.
	nop			;9c6b	00		.
	nop			;9c6c	00		.
	nop			;9c6d	00		.
	nop			;9c6e	00		.
	nop			;9c6f	00		.
	nop			;9c70	00		.
	nop			;9c71	00		.
	nop			;9c72	00		.
	nop			;9c73	00		.
	nop			;9c74	00		.
	nop			;9c75	00		.
	nop			;9c76	00		.
	nop			;9c77	00		.
	nop			;9c78	00		.
	nop			;9c79	00		.
	nop			;9c7a	00		.
	nop			;9c7b	00		.
	nop			;9c7c	00		.
	nop			;9c7d	00		.
	nop			;9c7e	00		.
	nop			;9c7f	00		.
	nop			;9c80	00		.
	nop			;9c81	00		.
	nop			;9c82	00		.
	nop			;9c83	00		.
	nop			;9c84	00		.
	nop			;9c85	00		.
	nop			;9c86	00		.
	nop			;9c87	00		.
	nop			;9c88	00		.
	nop			;9c89	00		.
	nop			;9c8a	00		.
	nop			;9c8b	00		.
	nop			;9c8c	00		.
	nop			;9c8d	00		.
	nop			;9c8e	00		.
	nop			;9c8f	00		.
	nop			;9c90	00		.
	nop			;9c91	00		.
	nop			;9c92	00		.
	nop			;9c93	00		.
	nop			;9c94	00		.
	nop			;9c95	00		.
	nop			;9c96	00		.
	nop			;9c97	00		.
	nop			;9c98	00		.
	nop			;9c99	00		.
	nop			;9c9a	00		.
	nop			;9c9b	00		.
	nop			;9c9c	00		.
	nop			;9c9d	00		.
	nop			;9c9e	00		.
	nop			;9c9f	00		.
	nop			;9ca0	00		.
	nop			;9ca1	00		.
	nop			;9ca2	00		.
	nop			;9ca3	00		.
	nop			;9ca4	00		.
	nop			;9ca5	00		.
	nop			;9ca6	00		.
	nop			;9ca7	00		.
	nop			;9ca8	00		.
	nop			;9ca9	00		.
	nop			;9caa	00		.
	nop			;9cab	00		.
	nop			;9cac	00		.
	nop			;9cad	00		.
	nop			;9cae	00		.
	nop			;9caf	00		.
	nop			;9cb0	00		.
	nop			;9cb1	00		.
	nop			;9cb2	00		.
	nop			;9cb3	00		.
	nop			;9cb4	00		.
	nop			;9cb5	00		.
	nop			;9cb6	00		.
	nop			;9cb7	00		.
	nop			;9cb8	00		.
	nop			;9cb9	00		.
	nop			;9cba	00		.
	nop			;9cbb	00		.
	nop			;9cbc	00		.
	nop			;9cbd	00		.
	nop			;9cbe	00		.
	nop			;9cbf	00		.
	nop			;9cc0	00		.
	nop			;9cc1	00		.
	nop			;9cc2	00		.
	nop			;9cc3	00		.
	nop			;9cc4	00		.
	nop			;9cc5	00		.
	nop			;9cc6	00		.
	nop			;9cc7	00		.
	nop			;9cc8	00		.
	nop			;9cc9	00		.
	nop			;9cca	00		.
	nop			;9ccb	00		.
	nop			;9ccc	00		.
	nop			;9ccd	00		.
	nop			;9cce	00		.
	nop			;9ccf	00		.
	nop			;9cd0	00		.
	nop			;9cd1	00		.
	nop			;9cd2	00		.
	nop			;9cd3	00		.
	nop			;9cd4	00		.
	nop			;9cd5	00		.
	nop			;9cd6	00		.
	nop			;9cd7	00		.
	nop			;9cd8	00		.
	nop			;9cd9	00		.
	nop			;9cda	00		.
	nop			;9cdb	00		.
	nop			;9cdc	00		.
	nop			;9cdd	00		.
	nop			;9cde	00		.
	nop			;9cdf	00		.
	nop			;9ce0	00		.
	nop			;9ce1	00		.
	nop			;9ce2	00		.
	nop			;9ce3	00		.
	nop			;9ce4	00		.
	nop			;9ce5	00		.
	nop			;9ce6	00		.
	nop			;9ce7	00		.
	nop			;9ce8	00		.
	nop			;9ce9	00		.
	nop			;9cea	00		.
	nop			;9ceb	00		.
	nop			;9cec	00		.
	nop			;9ced	00		.
	nop			;9cee	00		.
	nop			;9cef	00		.
	nop			;9cf0	00		.
	nop			;9cf1	00		.
	nop			;9cf2	00		.
	nop			;9cf3	00		.
	nop			;9cf4	00		.
	nop			;9cf5	00		.
	nop			;9cf6	00		.
	nop			;9cf7	00		.
	nop			;9cf8	00		.
	nop			;9cf9	00		.
	nop			;9cfa	00		.
	nop			;9cfb	00		.
	nop			;9cfc	00		.
	nop			;9cfd	00		.
	nop			;9cfe	00		.
	nop			;9cff	00		.
	nop			;9d00	00		.
	nop			;9d01	00		.
	nop			;9d02	00		.
	nop			;9d03	00		.
	nop			;9d04	00		.
	nop			;9d05	00		.
	nop			;9d06	00		.
	nop			;9d07	00		.
	nop			;9d08	00		.
	nop			;9d09	00		.
	nop			;9d0a	00		.
	nop			;9d0b	00		.
	nop			;9d0c	00		.
	nop			;9d0d	00		.
	nop			;9d0e	00		.
	nop			;9d0f	00		.
	nop			;9d10	00		.
	nop			;9d11	00		.
	nop			;9d12	00		.
	nop			;9d13	00		.
	nop			;9d14	00		.
	nop			;9d15	00		.
	nop			;9d16	00		.
	nop			;9d17	00		.
	nop			;9d18	00		.
	nop			;9d19	00		.
	nop			;9d1a	00		.
	nop			;9d1b	00		.
	nop			;9d1c	00		.
	nop			;9d1d	00		.
	nop			;9d1e	00		.
	nop			;9d1f	00		.
	nop			;9d20	00		.
	nop			;9d21	00		.
	nop			;9d22	00		.
	nop			;9d23	00		.
	nop			;9d24	00		.
	nop			;9d25	00		.
	nop			;9d26	00		.
	nop			;9d27	00		.
	nop			;9d28	00		.
	nop			;9d29	00		.
	nop			;9d2a	00		.
	nop			;9d2b	00		.
	nop			;9d2c	00		.
	nop			;9d2d	00		.
	nop			;9d2e	00		.
	nop			;9d2f	00		.
	nop			;9d30	00		.
	nop			;9d31	00		.
	nop			;9d32	00		.
	nop			;9d33	00		.
	nop			;9d34	00		.
	nop			;9d35	00		.
	nop			;9d36	00		.
	nop			;9d37	00		.
	nop			;9d38	00		.
	nop			;9d39	00		.
	nop			;9d3a	00		.
	nop			;9d3b	00		.
	nop			;9d3c	00		.
	nop			;9d3d	00		.
	nop			;9d3e	00		.
	nop			;9d3f	00		.
	nop			;9d40	00		.
	nop			;9d41	00		.
	nop			;9d42	00		.
	nop			;9d43	00		.
	nop			;9d44	00		.
	nop			;9d45	00		.
	nop			;9d46	00		.
	nop			;9d47	00		.
	nop			;9d48	00		.
	nop			;9d49	00		.
	nop			;9d4a	00		.
	nop			;9d4b	00		.
	nop			;9d4c	00		.
	nop			;9d4d	00		.
	nop			;9d4e	00		.
	nop			;9d4f	00		.
	nop			;9d50	00		.
	nop			;9d51	00		.
	nop			;9d52	00		.
	nop			;9d53	00		.
	nop			;9d54	00		.
	nop			;9d55	00		.
	nop			;9d56	00		.
	nop			;9d57	00		.
	nop			;9d58	00		.
	nop			;9d59	00		.
	nop			;9d5a	00		.
	nop			;9d5b	00		.
	nop			;9d5c	00		.
	nop			;9d5d	00		.
	nop			;9d5e	00		.
	nop			;9d5f	00		.
	nop			;9d60	00		.
	nop			;9d61	00		.
	nop			;9d62	00		.
	nop			;9d63	00		.
	nop			;9d64	00		.
	nop			;9d65	00		.
	nop			;9d66	00		.
	nop			;9d67	00		.
	nop			;9d68	00		.
	nop			;9d69	00		.
	nop			;9d6a	00		.
	nop			;9d6b	00		.
	nop			;9d6c	00		.
	nop			;9d6d	00		.
	nop			;9d6e	00		.
	nop			;9d6f	00		.
	nop			;9d70	00		.
	nop			;9d71	00		.
	nop			;9d72	00		.
	nop			;9d73	00		.
	nop			;9d74	00		.
	nop			;9d75	00		.
	nop			;9d76	00		.
	nop			;9d77	00		.
	nop			;9d78	00		.
	nop			;9d79	00		.
	nop			;9d7a	00		.
	nop			;9d7b	00		.
	nop			;9d7c	00		.
	nop			;9d7d	00		.
	nop			;9d7e	00		.
	nop			;9d7f	00		.
	nop			;9d80	00		.
	nop			;9d81	00		.
	nop			;9d82	00		.
	nop			;9d83	00		.
	nop			;9d84	00		.
	nop			;9d85	00		.
	nop			;9d86	00		.
	nop			;9d87	00		.
	nop			;9d88	00		.
	nop			;9d89	00		.
	nop			;9d8a	00		.
	nop			;9d8b	00		.
	nop			;9d8c	00		.
	nop			;9d8d	00		.
	nop			;9d8e	00		.
	nop			;9d8f	00		.
	nop			;9d90	00		.
	nop			;9d91	00		.
	nop			;9d92	00		.
	nop			;9d93	00		.
	nop			;9d94	00		.
	nop			;9d95	00		.
	nop			;9d96	00		.
	nop			;9d97	00		.
	nop			;9d98	00		.
	nop			;9d99	00		.
	nop			;9d9a	00		.
	nop			;9d9b	00		.
	nop			;9d9c	00		.
	nop			;9d9d	00		.
	nop			;9d9e	00		.
	nop			;9d9f	00		.
	nop			;9da0	00		.
	nop			;9da1	00		.
	nop			;9da2	00		.
	nop			;9da3	00		.
	nop			;9da4	00		.
	nop			;9da5	00		.
	nop			;9da6	00		.
	nop			;9da7	00		.
	nop			;9da8	00		.
	nop			;9da9	00		.
	nop			;9daa	00		.
	nop			;9dab	00		.
	nop			;9dac	00		.
	nop			;9dad	00		.
	nop			;9dae	00		.
	nop			;9daf	00		.
	nop			;9db0	00		.
	nop			;9db1	00		.
	nop			;9db2	00		.
	nop			;9db3	00		.
	nop			;9db4	00		.
	nop			;9db5	00		.
	nop			;9db6	00		.
	nop			;9db7	00		.
	nop			;9db8	00		.
	nop			;9db9	00		.
	nop			;9dba	00		.
	nop			;9dbb	00		.
	nop			;9dbc	00		.
	nop			;9dbd	00		.
	nop			;9dbe	00		.
	nop			;9dbf	00		.
	nop			;9dc0	00		.
	nop			;9dc1	00		.
	nop			;9dc2	00		.
	nop			;9dc3	00		.
	nop			;9dc4	00		.
	nop			;9dc5	00		.
	nop			;9dc6	00		.
	nop			;9dc7	00		.
	nop			;9dc8	00		.
	nop			;9dc9	00		.
	nop			;9dca	00		.
	nop			;9dcb	00		.
	nop			;9dcc	00		.
	nop			;9dcd	00		.
	nop			;9dce	00		.
	nop			;9dcf	00		.
	nop			;9dd0	00		.
	nop			;9dd1	00		.
	nop			;9dd2	00		.
	nop			;9dd3	00		.
	nop			;9dd4	00		.
	nop			;9dd5	00		.
	nop			;9dd6	00		.
	nop			;9dd7	00		.
	nop			;9dd8	00		.
	nop			;9dd9	00		.
	nop			;9dda	00		.
	nop			;9ddb	00		.
	nop			;9ddc	00		.
	nop			;9ddd	00		.
	nop			;9dde	00		.
	nop			;9ddf	00		.
	nop			;9de0	00		.
	nop			;9de1	00		.
	nop			;9de2	00		.
	nop			;9de3	00		.
	nop			;9de4	00		.
	nop			;9de5	00		.
	nop			;9de6	00		.
	nop			;9de7	00		.
	nop			;9de8	00		.
	nop			;9de9	00		.
	nop			;9dea	00		.
	nop			;9deb	00		.
	nop			;9dec	00		.
	nop			;9ded	00		.
	nop			;9dee	00		.
	nop			;9def	00		.
	nop			;9df0	00		.
	nop			;9df1	00		.
	nop			;9df2	00		.
	nop			;9df3	00		.
	nop			;9df4	00		.
	nop			;9df5	00		.
	nop			;9df6	00		.
	nop			;9df7	00		.
	nop			;9df8	00		.
	nop			;9df9	00		.
	nop			;9dfa	00		.
	nop			;9dfb	00		.
	nop			;9dfc	00		.
	nop			;9dfd	00		.
	nop			;9dfe	00		.
	nop			;9dff	00		.
	nop			;9e00	00		.
	nop			;9e01	00		.
	nop			;9e02	00		.
	nop			;9e03	00		.
	nop			;9e04	00		.
	nop			;9e05	00		.
	nop			;9e06	00		.
	nop			;9e07	00		.
	nop			;9e08	00		.
	nop			;9e09	00		.
	nop			;9e0a	00		.
	nop			;9e0b	00		.
	nop			;9e0c	00		.
	nop			;9e0d	00		.
	nop			;9e0e	00		.
	nop			;9e0f	00		.
	nop			;9e10	00		.
	nop			;9e11	00		.
	nop			;9e12	00		.
	nop			;9e13	00		.
	nop			;9e14	00		.
	nop			;9e15	00		.
	nop			;9e16	00		.
	nop			;9e17	00		.
	nop			;9e18	00		.
	nop			;9e19	00		.
	nop			;9e1a	00		.
	nop			;9e1b	00		.
	nop			;9e1c	00		.
	nop			;9e1d	00		.
	nop			;9e1e	00		.
	nop			;9e1f	00		.
	nop			;9e20	00		.
	nop			;9e21	00		.
	nop			;9e22	00		.
	nop			;9e23	00		.
	nop			;9e24	00		.
	nop			;9e25	00		.
	nop			;9e26	00		.
	nop			;9e27	00		.
	nop			;9e28	00		.
	nop			;9e29	00		.
	nop			;9e2a	00		.
	nop			;9e2b	00		.
	nop			;9e2c	00		.
	nop			;9e2d	00		.
	nop			;9e2e	00		.
	nop			;9e2f	00		.
	nop			;9e30	00		.
	nop			;9e31	00		.
	nop			;9e32	00		.
	nop			;9e33	00		.
	nop			;9e34	00		.
	nop			;9e35	00		.
	nop			;9e36	00		.
	nop			;9e37	00		.
	nop			;9e38	00		.
	nop			;9e39	00		.
	nop			;9e3a	00		.
	nop			;9e3b	00		.
	nop			;9e3c	00		.
	nop			;9e3d	00		.
	nop			;9e3e	00		.
	nop			;9e3f	00		.
	nop			;9e40	00		.
	nop			;9e41	00		.
	nop			;9e42	00		.
	nop			;9e43	00		.
	nop			;9e44	00		.
	nop			;9e45	00		.
	nop			;9e46	00		.
	nop			;9e47	00		.
	nop			;9e48	00		.
	nop			;9e49	00		.
	nop			;9e4a	00		.
	nop			;9e4b	00		.
	nop			;9e4c	00		.
	nop			;9e4d	00		.
	nop			;9e4e	00		.
	nop			;9e4f	00		.
	nop			;9e50	00		.
	nop			;9e51	00		.
	nop			;9e52	00		.
	nop			;9e53	00		.
	nop			;9e54	00		.
	nop			;9e55	00		.
	nop			;9e56	00		.
	nop			;9e57	00		.
	nop			;9e58	00		.
	nop			;9e59	00		.
	nop			;9e5a	00		.
	nop			;9e5b	00		.
	nop			;9e5c	00		.
	nop			;9e5d	00		.
	nop			;9e5e	00		.
	nop			;9e5f	00		.
	nop			;9e60	00		.
	nop			;9e61	00		.
	nop			;9e62	00		.
	nop			;9e63	00		.
	nop			;9e64	00		.
	nop			;9e65	00		.
	nop			;9e66	00		.
	nop			;9e67	00		.
	nop			;9e68	00		.
	nop			;9e69	00		.
	nop			;9e6a	00		.
	nop			;9e6b	00		.
	nop			;9e6c	00		.
	nop			;9e6d	00		.
	nop			;9e6e	00		.
	nop			;9e6f	00		.
	nop			;9e70	00		.
	nop			;9e71	00		.
	nop			;9e72	00		.
	nop			;9e73	00		.
	nop			;9e74	00		.
	nop			;9e75	00		.
	nop			;9e76	00		.
	nop			;9e77	00		.
	nop			;9e78	00		.
	nop			;9e79	00		.
	nop			;9e7a	00		.
	nop			;9e7b	00		.
	nop			;9e7c	00		.
	nop			;9e7d	00		.
	nop			;9e7e	00		.
	nop			;9e7f	00		.
	nop			;9e80	00		.
	nop			;9e81	00		.
	nop			;9e82	00		.
	nop			;9e83	00		.
	nop			;9e84	00		.
	nop			;9e85	00		.
	nop			;9e86	00		.
	nop			;9e87	00		.
	nop			;9e88	00		.
	nop			;9e89	00		.
	nop			;9e8a	00		.
	nop			;9e8b	00		.
	nop			;9e8c	00		.
	nop			;9e8d	00		.
	nop			;9e8e	00		.
	nop			;9e8f	00		.
	nop			;9e90	00		.
	nop			;9e91	00		.
	nop			;9e92	00		.
	nop			;9e93	00		.
	nop			;9e94	00		.
	nop			;9e95	00		.
	nop			;9e96	00		.
	nop			;9e97	00		.
	nop			;9e98	00		.
	nop			;9e99	00		.
	nop			;9e9a	00		.
	nop			;9e9b	00		.
	nop			;9e9c	00		.
	nop			;9e9d	00		.
	nop			;9e9e	00		.
	nop			;9e9f	00		.
	nop			;9ea0	00		.
	nop			;9ea1	00		.
	nop			;9ea2	00		.
	nop			;9ea3	00		.
	nop			;9ea4	00		.
	nop			;9ea5	00		.
	nop			;9ea6	00		.
	nop			;9ea7	00		.
	nop			;9ea8	00		.
	nop			;9ea9	00		.
	nop			;9eaa	00		.
	nop			;9eab	00		.
	nop			;9eac	00		.
	nop			;9ead	00		.
	nop			;9eae	00		.
	nop			;9eaf	00		.
	nop			;9eb0	00		.
	nop			;9eb1	00		.
	nop			;9eb2	00		.
	nop			;9eb3	00		.
	nop			;9eb4	00		.
	nop			;9eb5	00		.
	nop			;9eb6	00		.
	nop			;9eb7	00		.
	nop			;9eb8	00		.
	nop			;9eb9	00		.
	nop			;9eba	00		.
	nop			;9ebb	00		.
	nop			;9ebc	00		.
	nop			;9ebd	00		.
	nop			;9ebe	00		.
	nop			;9ebf	00		.
	nop			;9ec0	00		.
	nop			;9ec1	00		.
	nop			;9ec2	00		.
	nop			;9ec3	00		.
	nop			;9ec4	00		.
	nop			;9ec5	00		.
	nop			;9ec6	00		.
	nop			;9ec7	00		.
	nop			;9ec8	00		.
	nop			;9ec9	00		.
	nop			;9eca	00		.
	nop			;9ecb	00		.
	nop			;9ecc	00		.
	nop			;9ecd	00		.
	nop			;9ece	00		.
	nop			;9ecf	00		.
	nop			;9ed0	00		.
	nop			;9ed1	00		.
	nop			;9ed2	00		.
	nop			;9ed3	00		.
	nop			;9ed4	00		.
	nop			;9ed5	00		.
	nop			;9ed6	00		.
	nop			;9ed7	00		.
	nop			;9ed8	00		.
	nop			;9ed9	00		.
	nop			;9eda	00		.
	nop			;9edb	00		.
	nop			;9edc	00		.
	nop			;9edd	00		.
	nop			;9ede	00		.
	nop			;9edf	00		.
	nop			;9ee0	00		.
	nop			;9ee1	00		.
	nop			;9ee2	00		.
	nop			;9ee3	00		.
	nop			;9ee4	00		.
	nop			;9ee5	00		.
	nop			;9ee6	00		.
	nop			;9ee7	00		.
	nop			;9ee8	00		.
	nop			;9ee9	00		.
	nop			;9eea	00		.
	nop			;9eeb	00		.
	nop			;9eec	00		.
	nop			;9eed	00		.
	nop			;9eee	00		.
	nop			;9eef	00		.
	nop			;9ef0	00		.
	nop			;9ef1	00		.
	nop			;9ef2	00		.
	nop			;9ef3	00		.
	nop			;9ef4	00		.
	nop			;9ef5	00		.
	nop			;9ef6	00		.
	nop			;9ef7	00		.
	nop			;9ef8	00		.
	nop			;9ef9	00		.
	nop			;9efa	00		.
	nop			;9efb	00		.
	nop			;9efc	00		.
	nop			;9efd	00		.
	nop			;9efe	00		.
	nop			;9eff	00		.
	nop			;9f00	00		.
	nop			;9f01	00		.
	nop			;9f02	00		.
l9f03h:
	nop			;9f03	00		.
	nop			;9f04	00		.
	nop			;9f05	00		.
	nop			;9f06	00		.
	nop			;9f07	00		.
	nop			;9f08	00		.
	nop			;9f09	00		.
	nop			;9f0a	00		.
	nop			;9f0b	00		.
	nop			;9f0c	00		.
	nop			;9f0d	00		.
	nop			;9f0e	00		.
	nop			;9f0f	00		.
	nop			;9f10	00		.
	nop			;9f11	00		.
	nop			;9f12	00		.
	nop			;9f13	00		.
	nop			;9f14	00		.
	nop			;9f15	00		.
	nop			;9f16	00		.
	nop			;9f17	00		.
	nop			;9f18	00		.
	nop			;9f19	00		.
	nop			;9f1a	00		.
	nop			;9f1b	00		.
	nop			;9f1c	00		.
	nop			;9f1d	00		.
	nop			;9f1e	00		.
	nop			;9f1f	00		.
	nop			;9f20	00		.
	nop			;9f21	00		.
	nop			;9f22	00		.
	nop			;9f23	00		.
	nop			;9f24	00		.
	nop			;9f25	00		.
	nop			;9f26	00		.
	nop			;9f27	00		.
	nop			;9f28	00		.
	nop			;9f29	00		.
	nop			;9f2a	00		.
	nop			;9f2b	00		.
	nop			;9f2c	00		.
	nop			;9f2d	00		.
	nop			;9f2e	00		.
	nop			;9f2f	00		.
	nop			;9f30	00		.
	nop			;9f31	00		.
	nop			;9f32	00		.
	nop			;9f33	00		.
	nop			;9f34	00		.
	nop			;9f35	00		.
	nop			;9f36	00		.
	nop			;9f37	00		.
	nop			;9f38	00		.
	nop			;9f39	00		.
	nop			;9f3a	00		.
	nop			;9f3b	00		.
	nop			;9f3c	00		.
	nop			;9f3d	00		.
	nop			;9f3e	00		.
	nop			;9f3f	00		.
	nop			;9f40	00		.
	nop			;9f41	00		.
	nop			;9f42	00		.
	nop			;9f43	00		.
	nop			;9f44	00		.
	nop			;9f45	00		.
	nop			;9f46	00		.
	nop			;9f47	00		.
	nop			;9f48	00		.
	nop			;9f49	00		.
	nop			;9f4a	00		.
	nop			;9f4b	00		.
	nop			;9f4c	00		.
	nop			;9f4d	00		.
	nop			;9f4e	00		.
	nop			;9f4f	00		.
	nop			;9f50	00		.
	nop			;9f51	00		.
	nop			;9f52	00		.
	nop			;9f53	00		.
	nop			;9f54	00		.
	nop			;9f55	00		.
	nop			;9f56	00		.
	nop			;9f57	00		.
	nop			;9f58	00		.
	nop			;9f59	00		.
	nop			;9f5a	00		.
	nop			;9f5b	00		.
	nop			;9f5c	00		.
	nop			;9f5d	00		.
	nop			;9f5e	00		.
	nop			;9f5f	00		.
	nop			;9f60	00		.
	nop			;9f61	00		.
	nop			;9f62	00		.
	nop			;9f63	00		.
	nop			;9f64	00		.
	nop			;9f65	00		.
	nop			;9f66	00		.
	nop			;9f67	00		.
	nop			;9f68	00		.
	nop			;9f69	00		.
	nop			;9f6a	00		.
	nop			;9f6b	00		.
	nop			;9f6c	00		.
	nop			;9f6d	00		.
	nop			;9f6e	00		.
	nop			;9f6f	00		.
	nop			;9f70	00		.
	nop			;9f71	00		.
	nop			;9f72	00		.
	nop			;9f73	00		.
	nop			;9f74	00		.
	nop			;9f75	00		.
	nop			;9f76	00		.
	nop			;9f77	00		.
	nop			;9f78	00		.
	nop			;9f79	00		.
	nop			;9f7a	00		.
	nop			;9f7b	00		.
	nop			;9f7c	00		.
	nop			;9f7d	00		.
	nop			;9f7e	00		.
	nop			;9f7f	00		.
	nop			;9f80	00		.
	nop			;9f81	00		.
	nop			;9f82	00		.
	nop			;9f83	00		.
	nop			;9f84	00		.
	nop			;9f85	00		.
	nop			;9f86	00		.
	nop			;9f87	00		.
	nop			;9f88	00		.
	nop			;9f89	00		.
	nop			;9f8a	00		.
	nop			;9f8b	00		.
	nop			;9f8c	00		.
	nop			;9f8d	00		.
	nop			;9f8e	00		.
	nop			;9f8f	00		.
	nop			;9f90	00		.
	nop			;9f91	00		.
	nop			;9f92	00		.
	nop			;9f93	00		.
	nop			;9f94	00		.
	nop			;9f95	00		.
	nop			;9f96	00		.
	nop			;9f97	00		.
	nop			;9f98	00		.
	nop			;9f99	00		.
	nop			;9f9a	00		.
	nop			;9f9b	00		.
	nop			;9f9c	00		.
	nop			;9f9d	00		.
	nop			;9f9e	00		.
	nop			;9f9f	00		.
	nop			;9fa0	00		.
	nop			;9fa1	00		.
	nop			;9fa2	00		.
	nop			;9fa3	00		.
	nop			;9fa4	00		.
	nop			;9fa5	00		.
	nop			;9fa6	00		.
	nop			;9fa7	00		.
	nop			;9fa8	00		.
	nop			;9fa9	00		.
	nop			;9faa	00		.
	nop			;9fab	00		.
	nop			;9fac	00		.
	nop			;9fad	00		.
	nop			;9fae	00		.
	nop			;9faf	00		.
	nop			;9fb0	00		.
	nop			;9fb1	00		.
	nop			;9fb2	00		.
	nop			;9fb3	00		.
	nop			;9fb4	00		.
	nop			;9fb5	00		.
	nop			;9fb6	00		.
	nop			;9fb7	00		.
	nop			;9fb8	00		.
	nop			;9fb9	00		.
	nop			;9fba	00		.
	nop			;9fbb	00		.
	nop			;9fbc	00		.
	nop			;9fbd	00		.
	nop			;9fbe	00		.
	nop			;9fbf	00		.
	nop			;9fc0	00		.
	nop			;9fc1	00		.
	nop			;9fc2	00		.
	nop			;9fc3	00		.
	nop			;9fc4	00		.
	nop			;9fc5	00		.
	nop			;9fc6	00		.
	nop			;9fc7	00		.
	nop			;9fc8	00		.
	nop			;9fc9	00		.
	nop			;9fca	00		.
	nop			;9fcb	00		.
	nop			;9fcc	00		.
	nop			;9fcd	00		.
	nop			;9fce	00		.
	nop			;9fcf	00		.
	nop			;9fd0	00		.
	nop			;9fd1	00		.
	nop			;9fd2	00		.
	nop			;9fd3	00		.
	nop			;9fd4	00		.
	nop			;9fd5	00		.
	nop			;9fd6	00		.
	nop			;9fd7	00		.
	nop			;9fd8	00		.
	nop			;9fd9	00		.
	nop			;9fda	00		.
	nop			;9fdb	00		.
	nop			;9fdc	00		.
	nop			;9fdd	00		.
	nop			;9fde	00		.
	nop			;9fdf	00		.
	nop			;9fe0	00		.
	nop			;9fe1	00		.
	nop			;9fe2	00		.
	nop			;9fe3	00		.
	nop			;9fe4	00		.
	nop			;9fe5	00		.
	nop			;9fe6	00		.
	nop			;9fe7	00		.
	nop			;9fe8	00		.
	nop			;9fe9	00		.
	nop			;9fea	00		.
	nop			;9feb	00		.
	nop			;9fec	00		.
	nop			;9fed	00		.
	nop			;9fee	00		.
	nop			;9fef	00		.
	nop			;9ff0	00		.
	nop			;9ff1	00		.
	nop			;9ff2	00		.
	nop			;9ff3	00		.
	nop			;9ff4	00		.
	nop			;9ff5	00		.
	nop			;9ff6	00		.
	nop			;9ff7	00		.
	nop			;9ff8	00		.
	nop			;9ff9	00		.
	nop			;9ffa	00		.
	nop			;9ffb	00		.
	nop			;9ffc	00		.
	nop			;9ffd	00		.
	nop			;9ffe	00		.
	nop			;9fff	00		.
	nop			;a000	00		.
	nop			;a001	00		.
	nop			;a002	00		.
	nop			;a003	00		.
	nop			;a004	00		.
	nop			;a005	00		.
	nop			;a006	00		.
	nop			;a007	00		.
	nop			;a008	00		.
	nop			;a009	00		.
	nop			;a00a	00		.
	nop			;a00b	00		.
	nop			;a00c	00		.
	nop			;a00d	00		.
	nop			;a00e	00		.
	nop			;a00f	00		.
	nop			;a010	00		.
	nop			;a011	00		.
	nop			;a012	00		.
	nop			;a013	00		.
	nop			;a014	00		.
	nop			;a015	00		.
	nop			;a016	00		.
	nop			;a017	00		.
	nop			;a018	00		.
	nop			;a019	00		.
	nop			;a01a	00		.
	nop			;a01b	00		.
	nop			;a01c	00		.
	nop			;a01d	00		.
	nop			;a01e	00		.
	nop			;a01f	00		.
	nop			;a020	00		.
	nop			;a021	00		.
	nop			;a022	00		.
	nop			;a023	00		.
	nop			;a024	00		.
	nop			;a025	00		.
	nop			;a026	00		.
	nop			;a027	00		.
	nop			;a028	00		.
	nop			;a029	00		.
	nop			;a02a	00		.
	nop			;a02b	00		.
	nop			;a02c	00		.
	nop			;a02d	00		.
	nop			;a02e	00		.
	nop			;a02f	00		.
	nop			;a030	00		.
	nop			;a031	00		.
	nop			;a032	00		.
	nop			;a033	00		.
	nop			;a034	00		.
	nop			;a035	00		.
	nop			;a036	00		.
	nop			;a037	00		.
	nop			;a038	00		.
	nop			;a039	00		.
	nop			;a03a	00		.
	nop			;a03b	00		.
	nop			;a03c	00		.
	nop			;a03d	00		.
	nop			;a03e	00		.
	nop			;a03f	00		.
	nop			;a040	00		.
	nop			;a041	00		.
	nop			;a042	00		.
	nop			;a043	00		.
	nop			;a044	00		.
	nop			;a045	00		.
	nop			;a046	00		.
	nop			;a047	00		.
	nop			;a048	00		.
	nop			;a049	00		.
	nop			;a04a	00		.
	nop			;a04b	00		.
	nop			;a04c	00		.
	nop			;a04d	00		.
	nop			;a04e	00		.
	nop			;a04f	00		.
	nop			;a050	00		.
	nop			;a051	00		.
	nop			;a052	00		.
	nop			;a053	00		.
	nop			;a054	00		.
	nop			;a055	00		.
	nop			;a056	00		.
	nop			;a057	00		.
	nop			;a058	00		.
	nop			;a059	00		.
	nop			;a05a	00		.
	nop			;a05b	00		.
	nop			;a05c	00		.
	nop			;a05d	00		.
	nop			;a05e	00		.
	nop			;a05f	00		.
	nop			;a060	00		.
	nop			;a061	00		.
	nop			;a062	00		.
	nop			;a063	00		.
	nop			;a064	00		.
	nop			;a065	00		.
	nop			;a066	00		.
	nop			;a067	00		.
	nop			;a068	00		.
	nop			;a069	00		.
	nop			;a06a	00		.
	nop			;a06b	00		.
	nop			;a06c	00		.
	nop			;a06d	00		.
	nop			;a06e	00		.
	nop			;a06f	00		.
	nop			;a070	00		.
	nop			;a071	00		.
	nop			;a072	00		.
	nop			;a073	00		.
	nop			;a074	00		.
	nop			;a075	00		.
	nop			;a076	00		.
	nop			;a077	00		.
	nop			;a078	00		.
	nop			;a079	00		.
	nop			;a07a	00		.
	nop			;a07b	00		.
	nop			;a07c	00		.
	nop			;a07d	00		.
	nop			;a07e	00		.
	nop			;a07f	00		.
	nop			;a080	00		.
	nop			;a081	00		.
	nop			;a082	00		.
	nop			;a083	00		.
	nop			;a084	00		.
	nop			;a085	00		.
	nop			;a086	00		.
	nop			;a087	00		.
	nop			;a088	00		.
	nop			;a089	00		.
	nop			;a08a	00		.
	nop			;a08b	00		.
	nop			;a08c	00		.
	nop			;a08d	00		.
	nop			;a08e	00		.
la08fh:
	nop			;a08f	00		.
	nop			;a090	00		.
	nop			;a091	00		.
	nop			;a092	00		.
	nop			;a093	00		.
	nop			;a094	00		.
	nop			;a095	00		.
	nop			;a096	00		.
	nop			;a097	00		.
	nop			;a098	00		.
	nop			;a099	00		.
	nop			;a09a	00		.
	nop			;a09b	00		.
	nop			;a09c	00		.
	nop			;a09d	00		.
	nop			;a09e	00		.
	nop			;a09f	00		.
	nop			;a0a0	00		.
	nop			;a0a1	00		.
	nop			;a0a2	00		.
	nop			;a0a3	00		.
	nop			;a0a4	00		.
	nop			;a0a5	00		.
	nop			;a0a6	00		.
	nop			;a0a7	00		.
	nop			;a0a8	00		.
	nop			;a0a9	00		.
	nop			;a0aa	00		.
	nop			;a0ab	00		.
	nop			;a0ac	00		.
	nop			;a0ad	00		.
	nop			;a0ae	00		.
	nop			;a0af	00		.
	nop			;a0b0	00		.
	nop			;a0b1	00		.
	nop			;a0b2	00		.
	nop			;a0b3	00		.
	nop			;a0b4	00		.
	nop			;a0b5	00		.
	nop			;a0b6	00		.
	nop			;a0b7	00		.
	nop			;a0b8	00		.
	nop			;a0b9	00		.
	nop			;a0ba	00		.
	nop			;a0bb	00		.
	nop			;a0bc	00		.
	nop			;a0bd	00		.
	nop			;a0be	00		.
	nop			;a0bf	00		.
	nop			;a0c0	00		.
	nop			;a0c1	00		.
	nop			;a0c2	00		.
	nop			;a0c3	00		.
	nop			;a0c4	00		.
	nop			;a0c5	00		.
	nop			;a0c6	00		.
	nop			;a0c7	00		.
	nop			;a0c8	00		.
	nop			;a0c9	00		.
	nop			;a0ca	00		.
	nop			;a0cb	00		.
	nop			;a0cc	00		.
	nop			;a0cd	00		.
	nop			;a0ce	00		.
	nop			;a0cf	00		.
	nop			;a0d0	00		.
	nop			;a0d1	00		.
	nop			;a0d2	00		.
	nop			;a0d3	00		.
	nop			;a0d4	00		.
	nop			;a0d5	00		.
	nop			;a0d6	00		.
	nop			;a0d7	00		.
	nop			;a0d8	00		.
	nop			;a0d9	00		.
	nop			;a0da	00		.
	nop			;a0db	00		.
	nop			;a0dc	00		.
	nop			;a0dd	00		.
	nop			;a0de	00		.
	nop			;a0df	00		.
	nop			;a0e0	00		.
	nop			;a0e1	00		.
	nop			;a0e2	00		.
	nop			;a0e3	00		.
	nop			;a0e4	00		.
	nop			;a0e5	00		.
	nop			;a0e6	00		.
	nop			;a0e7	00		.
	nop			;a0e8	00		.
	nop			;a0e9	00		.
	nop			;a0ea	00		.
	nop			;a0eb	00		.
	nop			;a0ec	00		.
	nop			;a0ed	00		.
	nop			;a0ee	00		.
	nop			;a0ef	00		.
	nop			;a0f0	00		.
	nop			;a0f1	00		.
	nop			;a0f2	00		.
	nop			;a0f3	00		.
	nop			;a0f4	00		.
	nop			;a0f5	00		.
	nop			;a0f6	00		.
	nop			;a0f7	00		.
	nop			;a0f8	00		.
	nop			;a0f9	00		.
	nop			;a0fa	00		.
	nop			;a0fb	00		.
	nop			;a0fc	00		.
	nop			;a0fd	00		.
	nop			;a0fe	00		.
	nop			;a0ff	00		.
	nop			;a100	00		.
	nop			;a101	00		.
	nop			;a102	00		.
	nop			;a103	00		.
	nop			;a104	00		.
	nop			;a105	00		.
	nop			;a106	00		.
	nop			;a107	00		.
	nop			;a108	00		.
	nop			;a109	00		.
	nop			;a10a	00		.
	nop			;a10b	00		.
	nop			;a10c	00		.
	nop			;a10d	00		.
	nop			;a10e	00		.
	nop			;a10f	00		.
	nop			;a110	00		.
	nop			;a111	00		.
	nop			;a112	00		.
	nop			;a113	00		.
	nop			;a114	00		.
	nop			;a115	00		.
	nop			;a116	00		.
	nop			;a117	00		.
	nop			;a118	00		.
	nop			;a119	00		.
	nop			;a11a	00		.
	nop			;a11b	00		.
	nop			;a11c	00		.
	nop			;a11d	00		.
	nop			;a11e	00		.
	nop			;a11f	00		.
	nop			;a120	00		.
	nop			;a121	00		.
	nop			;a122	00		.
	nop			;a123	00		.
	nop			;a124	00		.
	nop			;a125	00		.
	nop			;a126	00		.
	nop			;a127	00		.
	nop			;a128	00		.
	nop			;a129	00		.
	nop			;a12a	00		.
	nop			;a12b	00		.
	nop			;a12c	00		.
	nop			;a12d	00		.
	nop			;a12e	00		.
	nop			;a12f	00		.
	nop			;a130	00		.
	nop			;a131	00		.
	nop			;a132	00		.
	nop			;a133	00		.
	nop			;a134	00		.
	nop			;a135	00		.
	nop			;a136	00		.
	nop			;a137	00		.
	nop			;a138	00		.
	nop			;a139	00		.
	nop			;a13a	00		.
	nop			;a13b	00		.
	nop			;a13c	00		.
	nop			;a13d	00		.
	nop			;a13e	00		.
	nop			;a13f	00		.
	nop			;a140	00		.
	nop			;a141	00		.
	nop			;a142	00		.
	nop			;a143	00		.
	nop			;a144	00		.
	nop			;a145	00		.
	nop			;a146	00		.
	nop			;a147	00		.
	nop			;a148	00		.
	nop			;a149	00		.
	nop			;a14a	00		.
	nop			;a14b	00		.
	nop			;a14c	00		.
	nop			;a14d	00		.
	nop			;a14e	00		.
	nop			;a14f	00		.
	nop			;a150	00		.
	nop			;a151	00		.
	nop			;a152	00		.
	nop			;a153	00		.
	nop			;a154	00		.
	nop			;a155	00		.
	nop			;a156	00		.
	nop			;a157	00		.
	nop			;a158	00		.
	nop			;a159	00		.
	nop			;a15a	00		.
	nop			;a15b	00		.
	nop			;a15c	00		.
	nop			;a15d	00		.
	nop			;a15e	00		.
	nop			;a15f	00		.
	nop			;a160	00		.
	nop			;a161	00		.
	nop			;a162	00		.
	nop			;a163	00		.
	nop			;a164	00		.
	nop			;a165	00		.
	nop			;a166	00		.
	nop			;a167	00		.
	nop			;a168	00		.
	nop			;a169	00		.
	nop			;a16a	00		.
	nop			;a16b	00		.
	nop			;a16c	00		.
	nop			;a16d	00		.
	nop			;a16e	00		.
	nop			;a16f	00		.
	nop			;a170	00		.
	nop			;a171	00		.
	nop			;a172	00		.
	nop			;a173	00		.
	nop			;a174	00		.
	nop			;a175	00		.
	nop			;a176	00		.
	nop			;a177	00		.
	nop			;a178	00		.
	nop			;a179	00		.
	nop			;a17a	00		.
	nop			;a17b	00		.
	nop			;a17c	00		.
	nop			;a17d	00		.
	nop			;a17e	00		.
	nop			;a17f	00		.
	nop			;a180	00		.
	nop			;a181	00		.
	nop			;a182	00		.
	nop			;a183	00		.
	nop			;a184	00		.
	nop			;a185	00		.
	nop			;a186	00		.
	nop			;a187	00		.
	nop			;a188	00		.
	nop			;a189	00		.
	nop			;a18a	00		.
	nop			;a18b	00		.
	nop			;a18c	00		.
	nop			;a18d	00		.
	nop			;a18e	00		.
	nop			;a18f	00		.
	nop			;a190	00		.
	nop			;a191	00		.
	nop			;a192	00		.
	nop			;a193	00		.
	nop			;a194	00		.
	nop			;a195	00		.
	nop			;a196	00		.
	nop			;a197	00		.
	nop			;a198	00		.
	nop			;a199	00		.
	nop			;a19a	00		.
	nop			;a19b	00		.
	nop			;a19c	00		.
	nop			;a19d	00		.
	nop			;a19e	00		.
	nop			;a19f	00		.
	nop			;a1a0	00		.
	nop			;a1a1	00		.
	nop			;a1a2	00		.
	nop			;a1a3	00		.
	nop			;a1a4	00		.
	nop			;a1a5	00		.
	nop			;a1a6	00		.
	nop			;a1a7	00		.
	nop			;a1a8	00		.
	nop			;a1a9	00		.
	nop			;a1aa	00		.
	nop			;a1ab	00		.
	nop			;a1ac	00		.
	nop			;a1ad	00		.
	nop			;a1ae	00		.
	nop			;a1af	00		.
	nop			;a1b0	00		.
	nop			;a1b1	00		.
	nop			;a1b2	00		.
	nop			;a1b3	00		.
	nop			;a1b4	00		.
	nop			;a1b5	00		.
	nop			;a1b6	00		.
	nop			;a1b7	00		.
	nop			;a1b8	00		.
	nop			;a1b9	00		.
	nop			;a1ba	00		.
	nop			;a1bb	00		.
	nop			;a1bc	00		.
	nop			;a1bd	00		.
	nop			;a1be	00		.
	nop			;a1bf	00		.
	nop			;a1c0	00		.
	nop			;a1c1	00		.
	nop			;a1c2	00		.
	nop			;a1c3	00		.
	nop			;a1c4	00		.
	nop			;a1c5	00		.
	nop			;a1c6	00		.
	nop			;a1c7	00		.
	nop			;a1c8	00		.
	nop			;a1c9	00		.
	nop			;a1ca	00		.
	nop			;a1cb	00		.
	nop			;a1cc	00		.
	nop			;a1cd	00		.
	nop			;a1ce	00		.
	nop			;a1cf	00		.
	nop			;a1d0	00		.
	nop			;a1d1	00		.
	nop			;a1d2	00		.
	nop			;a1d3	00		.
	nop			;a1d4	00		.
	nop			;a1d5	00		.
	nop			;a1d6	00		.
	nop			;a1d7	00		.
	nop			;a1d8	00		.
	nop			;a1d9	00		.
	nop			;a1da	00		.
	nop			;a1db	00		.
	nop			;a1dc	00		.
	nop			;a1dd	00		.
	nop			;a1de	00		.
	nop			;a1df	00		.
	nop			;a1e0	00		.
	nop			;a1e1	00		.
	nop			;a1e2	00		.
	nop			;a1e3	00		.
	nop			;a1e4	00		.
	nop			;a1e5	00		.
	nop			;a1e6	00		.
	nop			;a1e7	00		.
	nop			;a1e8	00		.
	nop			;a1e9	00		.
	nop			;a1ea	00		.
	nop			;a1eb	00		.
	nop			;a1ec	00		.
	nop			;a1ed	00		.
	nop			;a1ee	00		.
	nop			;a1ef	00		.
	nop			;a1f0	00		.
	nop			;a1f1	00		.
	nop			;a1f2	00		.
	nop			;a1f3	00		.
	nop			;a1f4	00		.
	nop			;a1f5	00		.
	nop			;a1f6	00		.
	nop			;a1f7	00		.
	nop			;a1f8	00		.
	nop			;a1f9	00		.
	nop			;a1fa	00		.
	nop			;a1fb	00		.
	nop			;a1fc	00		.
	nop			;a1fd	00		.
	nop			;a1fe	00		.
	nop			;a1ff	00		.
	nop			;a200	00		.
	nop			;a201	00		.
	nop			;a202	00		.
	nop			;a203	00		.
	nop			;a204	00		.
	nop			;a205	00		.
	nop			;a206	00		.
	nop			;a207	00		.
	nop			;a208	00		.
	nop			;a209	00		.
	nop			;a20a	00		.
	nop			;a20b	00		.
	nop			;a20c	00		.
	nop			;a20d	00		.
	nop			;a20e	00		.
	nop			;a20f	00		.
	nop			;a210	00		.
	nop			;a211	00		.
	nop			;a212	00		.
	nop			;a213	00		.
	nop			;a214	00		.
	nop			;a215	00		.
	nop			;a216	00		.
	nop			;a217	00		.
	nop			;a218	00		.
	nop			;a219	00		.
	nop			;a21a	00		.
	nop			;a21b	00		.
	nop			;a21c	00		.
	nop			;a21d	00		.
	nop			;a21e	00		.
	nop			;a21f	00		.
	nop			;a220	00		.
	nop			;a221	00		.
	nop			;a222	00		.
	nop			;a223	00		.
	nop			;a224	00		.
	nop			;a225	00		.
	nop			;a226	00		.
	nop			;a227	00		.
	nop			;a228	00		.
	nop			;a229	00		.
	nop			;a22a	00		.
	nop			;a22b	00		.
	nop			;a22c	00		.
	nop			;a22d	00		.
	nop			;a22e	00		.
	nop			;a22f	00		.
	nop			;a230	00		.
	nop			;a231	00		.
	nop			;a232	00		.
	nop			;a233	00		.
	nop			;a234	00		.
	nop			;a235	00		.
	nop			;a236	00		.
	nop			;a237	00		.
	nop			;a238	00		.
	nop			;a239	00		.
	nop			;a23a	00		.
	nop			;a23b	00		.
	nop			;a23c	00		.
	nop			;a23d	00		.
	nop			;a23e	00		.
	nop			;a23f	00		.
	nop			;a240	00		.
	nop			;a241	00		.
	nop			;a242	00		.
	nop			;a243	00		.
	nop			;a244	00		.
	nop			;a245	00		.
	nop			;a246	00		.
	nop			;a247	00		.
	nop			;a248	00		.
	nop			;a249	00		.
	nop			;a24a	00		.
	nop			;a24b	00		.
	nop			;a24c	00		.
	nop			;a24d	00		.
	nop			;a24e	00		.
	nop			;a24f	00		.
	nop			;a250	00		.
	nop			;a251	00		.
	nop			;a252	00		.
	nop			;a253	00		.
	nop			;a254	00		.
	nop			;a255	00		.
	nop			;a256	00		.
	nop			;a257	00		.
	nop			;a258	00		.
	nop			;a259	00		.
	nop			;a25a	00		.
	nop			;a25b	00		.
	nop			;a25c	00		.
	nop			;a25d	00		.
	nop			;a25e	00		.
	nop			;a25f	00		.
	nop			;a260	00		.
	nop			;a261	00		.
	nop			;a262	00		.
	nop			;a263	00		.
	nop			;a264	00		.
	nop			;a265	00		.
	nop			;a266	00		.
	nop			;a267	00		.
	nop			;a268	00		.
	nop			;a269	00		.
	nop			;a26a	00		.
	nop			;a26b	00		.
	nop			;a26c	00		.
	nop			;a26d	00		.
	nop			;a26e	00		.
	nop			;a26f	00		.
	nop			;a270	00		.
	nop			;a271	00		.
	nop			;a272	00		.
	nop			;a273	00		.
	nop			;a274	00		.
	nop			;a275	00		.
	nop			;a276	00		.
	nop			;a277	00		.
	nop			;a278	00		.
	nop			;a279	00		.
	nop			;a27a	00		.
	nop			;a27b	00		.
	nop			;a27c	00		.
	nop			;a27d	00		.
	nop			;a27e	00		.
	nop			;a27f	00		.
	nop			;a280	00		.
	nop			;a281	00		.
	nop			;a282	00		.
	nop			;a283	00		.
	nop			;a284	00		.
	nop			;a285	00		.
	nop			;a286	00		.
	nop			;a287	00		.
	nop			;a288	00		.
	nop			;a289	00		.
	nop			;a28a	00		.
	nop			;a28b	00		.
	nop			;a28c	00		.
	nop			;a28d	00		.
	nop			;a28e	00		.
	nop			;a28f	00		.
	nop			;a290	00		.
	nop			;a291	00		.
	nop			;a292	00		.
	nop			;a293	00		.
	nop			;a294	00		.
	nop			;a295	00		.
	nop			;a296	00		.
	nop			;a297	00		.
	nop			;a298	00		.
	nop			;a299	00		.
	nop			;a29a	00		.
	nop			;a29b	00		.
	nop			;a29c	00		.
	nop			;a29d	00		.
	nop			;a29e	00		.
	nop			;a29f	00		.
	nop			;a2a0	00		.
	nop			;a2a1	00		.
	nop			;a2a2	00		.
	nop			;a2a3	00		.
	nop			;a2a4	00		.
	nop			;a2a5	00		.
	nop			;a2a6	00		.
	nop			;a2a7	00		.
	nop			;a2a8	00		.
	nop			;a2a9	00		.
	nop			;a2aa	00		.
	nop			;a2ab	00		.
	nop			;a2ac	00		.
	nop			;a2ad	00		.
	nop			;a2ae	00		.
	nop			;a2af	00		.
	nop			;a2b0	00		.
	nop			;a2b1	00		.
	nop			;a2b2	00		.
	nop			;a2b3	00		.
	nop			;a2b4	00		.
	nop			;a2b5	00		.
	nop			;a2b6	00		.
	nop			;a2b7	00		.
	nop			;a2b8	00		.
	nop			;a2b9	00		.
	nop			;a2ba	00		.
	nop			;a2bb	00		.
	nop			;a2bc	00		.
	nop			;a2bd	00		.
	nop			;a2be	00		.
	nop			;a2bf	00		.
	nop			;a2c0	00		.
	nop			;a2c1	00		.
	nop			;a2c2	00		.
	nop			;a2c3	00		.
	nop			;a2c4	00		.
	nop			;a2c5	00		.
	nop			;a2c6	00		.
	nop			;a2c7	00		.
	nop			;a2c8	00		.
	nop			;a2c9	00		.
	nop			;a2ca	00		.
	nop			;a2cb	00		.
	nop			;a2cc	00		.
	nop			;a2cd	00		.
	nop			;a2ce	00		.
	nop			;a2cf	00		.
	nop			;a2d0	00		.
	nop			;a2d1	00		.
	nop			;a2d2	00		.
	nop			;a2d3	00		.
	nop			;a2d4	00		.
	nop			;a2d5	00		.
	nop			;a2d6	00		.
	nop			;a2d7	00		.
	nop			;a2d8	00		.
	nop			;a2d9	00		.
	nop			;a2da	00		.
	nop			;a2db	00		.
	nop			;a2dc	00		.
	nop			;a2dd	00		.
	nop			;a2de	00		.
	nop			;a2df	00		.
	nop			;a2e0	00		.
	nop			;a2e1	00		.
	nop			;a2e2	00		.
	nop			;a2e3	00		.
	nop			;a2e4	00		.
	nop			;a2e5	00		.
	nop			;a2e6	00		.
	nop			;a2e7	00		.
	nop			;a2e8	00		.
	nop			;a2e9	00		.
	nop			;a2ea	00		.
	nop			;a2eb	00		.
	nop			;a2ec	00		.
	nop			;a2ed	00		.
	nop			;a2ee	00		.
	nop			;a2ef	00		.
	nop			;a2f0	00		.
	nop			;a2f1	00		.
	nop			;a2f2	00		.
	nop			;a2f3	00		.
	nop			;a2f4	00		.
	nop			;a2f5	00		.
	nop			;a2f6	00		.
	nop			;a2f7	00		.
	nop			;a2f8	00		.
	nop			;a2f9	00		.
	nop			;a2fa	00		.
	nop			;a2fb	00		.
	nop			;a2fc	00		.
	nop			;a2fd	00		.
	nop			;a2fe	00		.
	nop			;a2ff	00		.
	nop			;a300	00		.
	nop			;a301	00		.
	nop			;a302	00		.
	nop			;a303	00		.
	nop			;a304	00		.
	nop			;a305	00		.
	nop			;a306	00		.
	nop			;a307	00		.
	nop			;a308	00		.
	nop			;a309	00		.
	nop			;a30a	00		.
	nop			;a30b	00		.
	nop			;a30c	00		.
	nop			;a30d	00		.
	nop			;a30e	00		.
	nop			;a30f	00		.
	nop			;a310	00		.
	nop			;a311	00		.
	nop			;a312	00		.
	nop			;a313	00		.
	nop			;a314	00		.
	nop			;a315	00		.
	nop			;a316	00		.
	nop			;a317	00		.
	nop			;a318	00		.
	nop			;a319	00		.
	nop			;a31a	00		.
	nop			;a31b	00		.
	nop			;a31c	00		.
	nop			;a31d	00		.
	nop			;a31e	00		.
	nop			;a31f	00		.
	nop			;a320	00		.
	nop			;a321	00		.
	nop			;a322	00		.
	nop			;a323	00		.
	nop			;a324	00		.
	nop			;a325	00		.
	nop			;a326	00		.
	nop			;a327	00		.
	nop			;a328	00		.
	nop			;a329	00		.
	nop			;a32a	00		.
	nop			;a32b	00		.
	nop			;a32c	00		.
	nop			;a32d	00		.
	nop			;a32e	00		.
	nop			;a32f	00		.
	nop			;a330	00		.
	nop			;a331	00		.
	nop			;a332	00		.
	nop			;a333	00		.
	nop			;a334	00		.
	nop			;a335	00		.
	nop			;a336	00		.
	nop			;a337	00		.
	nop			;a338	00		.
	nop			;a339	00		.
	nop			;a33a	00		.
	nop			;a33b	00		.
	nop			;a33c	00		.
	nop			;a33d	00		.
	nop			;a33e	00		.
	nop			;a33f	00		.
	nop			;a340	00		.
	nop			;a341	00		.
	nop			;a342	00		.
	nop			;a343	00		.
	nop			;a344	00		.
	nop			;a345	00		.
	nop			;a346	00		.
	nop			;a347	00		.
	nop			;a348	00		.
	nop			;a349	00		.
	nop			;a34a	00		.
	nop			;a34b	00		.
	nop			;a34c	00		.
	nop			;a34d	00		.
	nop			;a34e	00		.
	nop			;a34f	00		.
	nop			;a350	00		.
	nop			;a351	00		.
	nop			;a352	00		.
	nop			;a353	00		.
	nop			;a354	00		.
	nop			;a355	00		.
	nop			;a356	00		.
	nop			;a357	00		.
	nop			;a358	00		.
	nop			;a359	00		.
	nop			;a35a	00		.
	nop			;a35b	00		.
	nop			;a35c	00		.
	nop			;a35d	00		.
	nop			;a35e	00		.
	nop			;a35f	00		.
	nop			;a360	00		.
	nop			;a361	00		.
	nop			;a362	00		.
	nop			;a363	00		.
	nop			;a364	00		.
	nop			;a365	00		.
	nop			;a366	00		.
	nop			;a367	00		.
	nop			;a368	00		.
	nop			;a369	00		.
	nop			;a36a	00		.
	nop			;a36b	00		.
	nop			;a36c	00		.
	nop			;a36d	00		.
	nop			;a36e	00		.
	nop			;a36f	00		.
	nop			;a370	00		.
	nop			;a371	00		.
	nop			;a372	00		.
	nop			;a373	00		.
	nop			;a374	00		.
	nop			;a375	00		.
	nop			;a376	00		.
	nop			;a377	00		.
	nop			;a378	00		.
	nop			;a379	00		.
	nop			;a37a	00		.
	nop			;a37b	00		.
	nop			;a37c	00		.
	nop			;a37d	00		.
	nop			;a37e	00		.
	nop			;a37f	00		.
	nop			;a380	00		.
	nop			;a381	00		.
	nop			;a382	00		.
	nop			;a383	00		.
	nop			;a384	00		.
	nop			;a385	00		.
	nop			;a386	00		.
	nop			;a387	00		.
	nop			;a388	00		.
	nop			;a389	00		.
	nop			;a38a	00		.
	nop			;a38b	00		.
	nop			;a38c	00		.
	nop			;a38d	00		.
	nop			;a38e	00		.
	nop			;a38f	00		.
	nop			;a390	00		.
	nop			;a391	00		.
	nop			;a392	00		.
	nop			;a393	00		.
	nop			;a394	00		.
	nop			;a395	00		.
	nop			;a396	00		.
	nop			;a397	00		.
	nop			;a398	00		.
	nop			;a399	00		.
	nop			;a39a	00		.
	nop			;a39b	00		.
	nop			;a39c	00		.
	nop			;a39d	00		.
	nop			;a39e	00		.
	nop			;a39f	00		.
	nop			;a3a0	00		.
	nop			;a3a1	00		.
	nop			;a3a2	00		.
	nop			;a3a3	00		.
	nop			;a3a4	00		.
	nop			;a3a5	00		.
	nop			;a3a6	00		.
	nop			;a3a7	00		.
	nop			;a3a8	00		.
	nop			;a3a9	00		.
	nop			;a3aa	00		.
	nop			;a3ab	00		.
	nop			;a3ac	00		.
	nop			;a3ad	00		.
	nop			;a3ae	00		.
	nop			;a3af	00		.
	nop			;a3b0	00		.
	nop			;a3b1	00		.
	nop			;a3b2	00		.
	nop			;a3b3	00		.
	nop			;a3b4	00		.
	nop			;a3b5	00		.
	nop			;a3b6	00		.
	nop			;a3b7	00		.
	nop			;a3b8	00		.
	nop			;a3b9	00		.
	nop			;a3ba	00		.
	nop			;a3bb	00		.
	nop			;a3bc	00		.
	nop			;a3bd	00		.
	nop			;a3be	00		.
	nop			;a3bf	00		.
	nop			;a3c0	00		.
	nop			;a3c1	00		.
	nop			;a3c2	00		.
	nop			;a3c3	00		.
	nop			;a3c4	00		.
	nop			;a3c5	00		.
	nop			;a3c6	00		.
	nop			;a3c7	00		.
	nop			;a3c8	00		.
	nop			;a3c9	00		.
	nop			;a3ca	00		.
	nop			;a3cb	00		.
	nop			;a3cc	00		.
	nop			;a3cd	00		.
	nop			;a3ce	00		.
	nop			;a3cf	00		.
	nop			;a3d0	00		.
	nop			;a3d1	00		.
	nop			;a3d2	00		.
	nop			;a3d3	00		.
	nop			;a3d4	00		.
	nop			;a3d5	00		.
	nop			;a3d6	00		.
	nop			;a3d7	00		.
	nop			;a3d8	00		.
	nop			;a3d9	00		.
	nop			;a3da	00		.
	nop			;a3db	00		.
	nop			;a3dc	00		.
	nop			;a3dd	00		.
	nop			;a3de	00		.
	nop			;a3df	00		.
	nop			;a3e0	00		.
	nop			;a3e1	00		.
	nop			;a3e2	00		.
	nop			;a3e3	00		.
	nop			;a3e4	00		.
	nop			;a3e5	00		.
	nop			;a3e6	00		.
	nop			;a3e7	00		.
	nop			;a3e8	00		.
	nop			;a3e9	00		.
	nop			;a3ea	00		.
	nop			;a3eb	00		.
	nop			;a3ec	00		.
	nop			;a3ed	00		.
	nop			;a3ee	00		.
	nop			;a3ef	00		.
	nop			;a3f0	00		.
	nop			;a3f1	00		.
	nop			;a3f2	00		.
	nop			;a3f3	00		.
	nop			;a3f4	00		.
	nop			;a3f5	00		.
	nop			;a3f6	00		.
	nop			;a3f7	00		.
	nop			;a3f8	00		.
	nop			;a3f9	00		.
	nop			;a3fa	00		.
	nop			;a3fb	00		.
	nop			;a3fc	00		.
	nop			;a3fd	00		.
	nop			;a3fe	00		.
	nop			;a3ff	00		.
	nop			;a400	00		.
	nop			;a401	00		.
	nop			;a402	00		.
	nop			;a403	00		.
	nop			;a404	00		.
	nop			;a405	00		.
	nop			;a406	00		.
	nop			;a407	00		.
	nop			;a408	00		.
	nop			;a409	00		.
	nop			;a40a	00		.
	nop			;a40b	00		.
	nop			;a40c	00		.
	nop			;a40d	00		.
	nop			;a40e	00		.
	nop			;a40f	00		.
	nop			;a410	00		.
	nop			;a411	00		.
	nop			;a412	00		.
	nop			;a413	00		.
	nop			;a414	00		.
	nop			;a415	00		.
	nop			;a416	00		.
	nop			;a417	00		.
	nop			;a418	00		.
	nop			;a419	00		.
	nop			;a41a	00		.
	nop			;a41b	00		.
	nop			;a41c	00		.
	nop			;a41d	00		.
	nop			;a41e	00		.
	nop			;a41f	00		.
	nop			;a420	00		.
	nop			;a421	00		.
	nop			;a422	00		.
	nop			;a423	00		.
	nop			;a424	00		.
	nop			;a425	00		.
	nop			;a426	00		.
	nop			;a427	00		.
	nop			;a428	00		.
	nop			;a429	00		.
	nop			;a42a	00		.
	nop			;a42b	00		.
	nop			;a42c	00		.
	nop			;a42d	00		.
	nop			;a42e	00		.
	nop			;a42f	00		.
	nop			;a430	00		.
	nop			;a431	00		.
	nop			;a432	00		.
	nop			;a433	00		.
	nop			;a434	00		.
	nop			;a435	00		.
	nop			;a436	00		.
	nop			;a437	00		.
	nop			;a438	00		.
	nop			;a439	00		.
	nop			;a43a	00		.
	nop			;a43b	00		.
	nop			;a43c	00		.
	nop			;a43d	00		.
	nop			;a43e	00		.
	nop			;a43f	00		.
	nop			;a440	00		.
	nop			;a441	00		.
	nop			;a442	00		.
	nop			;a443	00		.
	nop			;a444	00		.
	nop			;a445	00		.
	nop			;a446	00		.
	nop			;a447	00		.
	nop			;a448	00		.
	nop			;a449	00		.
	nop			;a44a	00		.
	nop			;a44b	00		.
	nop			;a44c	00		.
	nop			;a44d	00		.
	nop			;a44e	00		.
	nop			;a44f	00		.
	nop			;a450	00		.
	nop			;a451	00		.
	nop			;a452	00		.
	nop			;a453	00		.
	nop			;a454	00		.
	nop			;a455	00		.
	nop			;a456	00		.
	nop			;a457	00		.
	nop			;a458	00		.
	nop			;a459	00		.
	nop			;a45a	00		.
	nop			;a45b	00		.
	nop			;a45c	00		.
	nop			;a45d	00		.
	nop			;a45e	00		.
	nop			;a45f	00		.
	nop			;a460	00		.
	nop			;a461	00		.
	nop			;a462	00		.
	nop			;a463	00		.
	nop			;a464	00		.
	nop			;a465	00		.
	nop			;a466	00		.
	nop			;a467	00		.
	nop			;a468	00		.
	nop			;a469	00		.
	nop			;a46a	00		.
	nop			;a46b	00		.
	nop			;a46c	00		.
	nop			;a46d	00		.
	nop			;a46e	00		.
	nop			;a46f	00		.
	nop			;a470	00		.
	nop			;a471	00		.
	nop			;a472	00		.
	nop			;a473	00		.
	nop			;a474	00		.
	nop			;a475	00		.
	nop			;a476	00		.
	nop			;a477	00		.
	nop			;a478	00		.
	nop			;a479	00		.
	nop			;a47a	00		.
	nop			;a47b	00		.
	nop			;a47c	00		.
	nop			;a47d	00		.
	nop			;a47e	00		.
	nop			;a47f	00		.
	nop			;a480	00		.
	nop			;a481	00		.
	nop			;a482	00		.
	nop			;a483	00		.
	nop			;a484	00		.
	nop			;a485	00		.
	nop			;a486	00		.
	nop			;a487	00		.
	nop			;a488	00		.
	nop			;a489	00		.
	nop			;a48a	00		.
	nop			;a48b	00		.
	nop			;a48c	00		.
	nop			;a48d	00		.
	nop			;a48e	00		.
	nop			;a48f	00		.
	nop			;a490	00		.
	nop			;a491	00		.
	nop			;a492	00		.
	nop			;a493	00		.
	nop			;a494	00		.
	nop			;a495	00		.
	nop			;a496	00		.
	nop			;a497	00		.
	nop			;a498	00		.
	nop			;a499	00		.
	nop			;a49a	00		.
	nop			;a49b	00		.
	nop			;a49c	00		.
	nop			;a49d	00		.
	nop			;a49e	00		.
	nop			;a49f	00		.
	nop			;a4a0	00		.
	nop			;a4a1	00		.
	nop			;a4a2	00		.
	nop			;a4a3	00		.
	nop			;a4a4	00		.
	nop			;a4a5	00		.
	nop			;a4a6	00		.
	nop			;a4a7	00		.
	nop			;a4a8	00		.
	nop			;a4a9	00		.
	nop			;a4aa	00		.
	nop			;a4ab	00		.
	nop			;a4ac	00		.
	nop			;a4ad	00		.
	nop			;a4ae	00		.
	nop			;a4af	00		.
	nop			;a4b0	00		.
	nop			;a4b1	00		.
	nop			;a4b2	00		.
	nop			;a4b3	00		.
	nop			;a4b4	00		.
	nop			;a4b5	00		.
	nop			;a4b6	00		.
	nop			;a4b7	00		.
	nop			;a4b8	00		.
	nop			;a4b9	00		.
	nop			;a4ba	00		.
	nop			;a4bb	00		.
	nop			;a4bc	00		.
	nop			;a4bd	00		.
	nop			;a4be	00		.
	nop			;a4bf	00		.
	nop			;a4c0	00		.
	nop			;a4c1	00		.
	nop			;a4c2	00		.
	nop			;a4c3	00		.
	nop			;a4c4	00		.
	nop			;a4c5	00		.
	nop			;a4c6	00		.
	nop			;a4c7	00		.
	nop			;a4c8	00		.
	nop			;a4c9	00		.
	nop			;a4ca	00		.
	nop			;a4cb	00		.
	nop			;a4cc	00		.
	nop			;a4cd	00		.
	nop			;a4ce	00		.
	nop			;a4cf	00		.
	nop			;a4d0	00		.
	nop			;a4d1	00		.
	nop			;a4d2	00		.
	nop			;a4d3	00		.
	nop			;a4d4	00		.
	nop			;a4d5	00		.
	nop			;a4d6	00		.
	nop			;a4d7	00		.
	nop			;a4d8	00		.
	nop			;a4d9	00		.
	nop			;a4da	00		.
	nop			;a4db	00		.
	nop			;a4dc	00		.
	nop			;a4dd	00		.
	nop			;a4de	00		.
	nop			;a4df	00		.
	nop			;a4e0	00		.
	nop			;a4e1	00		.
	nop			;a4e2	00		.
	nop			;a4e3	00		.
	nop			;a4e4	00		.
	nop			;a4e5	00		.
	nop			;a4e6	00		.
	nop			;a4e7	00		.
	nop			;a4e8	00		.
	nop			;a4e9	00		.
	nop			;a4ea	00		.
	nop			;a4eb	00		.
	nop			;a4ec	00		.
	nop			;a4ed	00		.
	nop			;a4ee	00		.
	nop			;a4ef	00		.
	nop			;a4f0	00		.
	nop			;a4f1	00		.
	nop			;a4f2	00		.
	nop			;a4f3	00		.
	nop			;a4f4	00		.
	nop			;a4f5	00		.
	nop			;a4f6	00		.
	nop			;a4f7	00		.
	nop			;a4f8	00		.
	nop			;a4f9	00		.
	nop			;a4fa	00		.
	nop			;a4fb	00		.
	nop			;a4fc	00		.
	nop			;a4fd	00		.
	nop			;a4fe	00		.
	nop			;a4ff	00		.
	nop			;a500	00		.
	nop			;a501	00		.
	nop			;a502	00		.
	nop			;a503	00		.
	nop			;a504	00		.
	nop			;a505	00		.
	nop			;a506	00		.
	nop			;a507	00		.
	nop			;a508	00		.
	nop			;a509	00		.
	nop			;a50a	00		.
	nop			;a50b	00		.
	nop			;a50c	00		.
	nop			;a50d	00		.
	nop			;a50e	00		.
	nop			;a50f	00		.
	nop			;a510	00		.
	nop			;a511	00		.
	nop			;a512	00		.
	nop			;a513	00		.
	nop			;a514	00		.
	nop			;a515	00		.
	nop			;a516	00		.
	nop			;a517	00		.
	nop			;a518	00		.
	nop			;a519	00		.
	nop			;a51a	00		.
	nop			;a51b	00		.
	nop			;a51c	00		.
	nop			;a51d	00		.
	nop			;a51e	00		.
	nop			;a51f	00		.
	nop			;a520	00		.
	nop			;a521	00		.
	nop			;a522	00		.
	nop			;a523	00		.
	nop			;a524	00		.
	nop			;a525	00		.
	nop			;a526	00		.
	nop			;a527	00		.
	nop			;a528	00		.
	nop			;a529	00		.
	nop			;a52a	00		.
	nop			;a52b	00		.
	nop			;a52c	00		.
	nop			;a52d	00		.
	nop			;a52e	00		.
	nop			;a52f	00		.
	nop			;a530	00		.
	nop			;a531	00		.
	nop			;a532	00		.
	nop			;a533	00		.
	nop			;a534	00		.
	nop			;a535	00		.
	nop			;a536	00		.
	nop			;a537	00		.
	nop			;a538	00		.
	nop			;a539	00		.
	nop			;a53a	00		.
	nop			;a53b	00		.
	nop			;a53c	00		.
	nop			;a53d	00		.
	nop			;a53e	00		.
	nop			;a53f	00		.
	nop			;a540	00		.
	nop			;a541	00		.
	nop			;a542	00		.
	nop			;a543	00		.
	nop			;a544	00		.
	nop			;a545	00		.
	nop			;a546	00		.
	nop			;a547	00		.
	nop			;a548	00		.
	nop			;a549	00		.
	nop			;a54a	00		.
	nop			;a54b	00		.
	nop			;a54c	00		.
	nop			;a54d	00		.
	nop			;a54e	00		.
	nop			;a54f	00		.
	nop			;a550	00		.
	nop			;a551	00		.
	nop			;a552	00		.
	nop			;a553	00		.
	nop			;a554	00		.
	nop			;a555	00		.
	nop			;a556	00		.
	nop			;a557	00		.
	nop			;a558	00		.
	nop			;a559	00		.
	nop			;a55a	00		.
	nop			;a55b	00		.
	nop			;a55c	00		.
	nop			;a55d	00		.
	nop			;a55e	00		.
	nop			;a55f	00		.
	nop			;a560	00		.
	nop			;a561	00		.
	nop			;a562	00		.
	nop			;a563	00		.
	nop			;a564	00		.
	nop			;a565	00		.
	nop			;a566	00		.
	nop			;a567	00		.
	nop			;a568	00		.
	nop			;a569	00		.
	nop			;a56a	00		.
	nop			;a56b	00		.
	nop			;a56c	00		.
	nop			;a56d	00		.
	nop			;a56e	00		.
	nop			;a56f	00		.
	nop			;a570	00		.
	nop			;a571	00		.
	nop			;a572	00		.
	nop			;a573	00		.
	nop			;a574	00		.
	nop			;a575	00		.
	nop			;a576	00		.
	nop			;a577	00		.
	nop			;a578	00		.
	nop			;a579	00		.
	nop			;a57a	00		.
	nop			;a57b	00		.
	nop			;a57c	00		.
	nop			;a57d	00		.
	nop			;a57e	00		.
	nop			;a57f	00		.
	nop			;a580	00		.
	nop			;a581	00		.
	nop			;a582	00		.
	nop			;a583	00		.
	nop			;a584	00		.
	nop			;a585	00		.
	nop			;a586	00		.
	nop			;a587	00		.
	nop			;a588	00		.
	nop			;a589	00		.
	nop			;a58a	00		.
	nop			;a58b	00		.
	nop			;a58c	00		.
	nop			;a58d	00		.
	nop			;a58e	00		.
	nop			;a58f	00		.
	nop			;a590	00		.
	nop			;a591	00		.
	nop			;a592	00		.
	nop			;a593	00		.
	nop			;a594	00		.
	nop			;a595	00		.
	nop			;a596	00		.
	nop			;a597	00		.
	nop			;a598	00		.
	nop			;a599	00		.
	nop			;a59a	00		.
	nop			;a59b	00		.
	nop			;a59c	00		.
	nop			;a59d	00		.
	nop			;a59e	00		.
	nop			;a59f	00		.
	nop			;a5a0	00		.
	nop			;a5a1	00		.
	nop			;a5a2	00		.
	nop			;a5a3	00		.
	nop			;a5a4	00		.
	nop			;a5a5	00		.
	nop			;a5a6	00		.
	nop			;a5a7	00		.
	nop			;a5a8	00		.
	nop			;a5a9	00		.
	nop			;a5aa	00		.
	nop			;a5ab	00		.
	nop			;a5ac	00		.
	nop			;a5ad	00		.
	nop			;a5ae	00		.
	nop			;a5af	00		.
	nop			;a5b0	00		.
	nop			;a5b1	00		.
	nop			;a5b2	00		.
	nop			;a5b3	00		.
	nop			;a5b4	00		.
	nop			;a5b5	00		.
	nop			;a5b6	00		.
	nop			;a5b7	00		.
	nop			;a5b8	00		.
	nop			;a5b9	00		.
	nop			;a5ba	00		.
	nop			;a5bb	00		.
	nop			;a5bc	00		.
	nop			;a5bd	00		.
	nop			;a5be	00		.
	nop			;a5bf	00		.
	nop			;a5c0	00		.
	nop			;a5c1	00		.
	nop			;a5c2	00		.
	nop			;a5c3	00		.
	nop			;a5c4	00		.
	nop			;a5c5	00		.
	nop			;a5c6	00		.
	nop			;a5c7	00		.
	nop			;a5c8	00		.
	nop			;a5c9	00		.
	nop			;a5ca	00		.
	nop			;a5cb	00		.
	nop			;a5cc	00		.
	nop			;a5cd	00		.
	nop			;a5ce	00		.
	nop			;a5cf	00		.
	nop			;a5d0	00		.
	nop			;a5d1	00		.
	nop			;a5d2	00		.
	nop			;a5d3	00		.
	nop			;a5d4	00		.
	nop			;a5d5	00		.
	nop			;a5d6	00		.
	nop			;a5d7	00		.
	nop			;a5d8	00		.
	nop			;a5d9	00		.
	nop			;a5da	00		.
	nop			;a5db	00		.
	nop			;a5dc	00		.
	nop			;a5dd	00		.
	nop			;a5de	00		.
	nop			;a5df	00		.
	nop			;a5e0	00		.
	nop			;a5e1	00		.
	nop			;a5e2	00		.
	nop			;a5e3	00		.
	nop			;a5e4	00		.
	nop			;a5e5	00		.
	nop			;a5e6	00		.
	nop			;a5e7	00		.
	nop			;a5e8	00		.
	nop			;a5e9	00		.
	nop			;a5ea	00		.
	nop			;a5eb	00		.
	nop			;a5ec	00		.
	nop			;a5ed	00		.
	nop			;a5ee	00		.
	nop			;a5ef	00		.
	nop			;a5f0	00		.
	nop			;a5f1	00		.
	nop			;a5f2	00		.
	nop			;a5f3	00		.
	nop			;a5f4	00		.
	nop			;a5f5	00		.
	nop			;a5f6	00		.
	nop			;a5f7	00		.
	nop			;a5f8	00		.
	nop			;a5f9	00		.
	nop			;a5fa	00		.
	nop			;a5fb	00		.
	nop			;a5fc	00		.
	nop			;a5fd	00		.
	nop			;a5fe	00		.
	nop			;a5ff	00		.
	nop			;a600	00		.
	nop			;a601	00		.
	nop			;a602	00		.
	nop			;a603	00		.
	nop			;a604	00		.
	nop			;a605	00		.
	nop			;a606	00		.
	nop			;a607	00		.
	nop			;a608	00		.
	nop			;a609	00		.
	nop			;a60a	00		.
	nop			;a60b	00		.
	nop			;a60c	00		.
	nop			;a60d	00		.
	nop			;a60e	00		.
	nop			;a60f	00		.
	nop			;a610	00		.
	nop			;a611	00		.
	nop			;a612	00		.
	nop			;a613	00		.
	nop			;a614	00		.
	nop			;a615	00		.
	nop			;a616	00		.
	nop			;a617	00		.
	nop			;a618	00		.
	nop			;a619	00		.
	nop			;a61a	00		.
	nop			;a61b	00		.
	nop			;a61c	00		.
	nop			;a61d	00		.
	nop			;a61e	00		.
	nop			;a61f	00		.
	nop			;a620	00		.
	nop			;a621	00		.
	nop			;a622	00		.
	nop			;a623	00		.
	nop			;a624	00		.
	nop			;a625	00		.
	nop			;a626	00		.
	nop			;a627	00		.
	nop			;a628	00		.
	nop			;a629	00		.
	nop			;a62a	00		.
	nop			;a62b	00		.
	nop			;a62c	00		.
	nop			;a62d	00		.
	nop			;a62e	00		.
	nop			;a62f	00		.
	nop			;a630	00		.
	nop			;a631	00		.
	nop			;a632	00		.
	nop			;a633	00		.
	nop			;a634	00		.
	nop			;a635	00		.
	nop			;a636	00		.
	nop			;a637	00		.
	nop			;a638	00		.
	nop			;a639	00		.
	nop			;a63a	00		.
	nop			;a63b	00		.
	nop			;a63c	00		.
	nop			;a63d	00		.
	nop			;a63e	00		.
	nop			;a63f	00		.
	nop			;a640	00		.
	nop			;a641	00		.
	nop			;a642	00		.
	nop			;a643	00		.
	nop			;a644	00		.
	nop			;a645	00		.
	nop			;a646	00		.
	nop			;a647	00		.
	nop			;a648	00		.
	nop			;a649	00		.
	nop			;a64a	00		.
	nop			;a64b	00		.
	nop			;a64c	00		.
	nop			;a64d	00		.
	nop			;a64e	00		.
	nop			;a64f	00		.
	nop			;a650	00		.
	nop			;a651	00		.
	nop			;a652	00		.
	nop			;a653	00		.
	nop			;a654	00		.
	nop			;a655	00		.
	nop			;a656	00		.
	nop			;a657	00		.
	nop			;a658	00		.
	nop			;a659	00		.
	nop			;a65a	00		.
	nop			;a65b	00		.
	nop			;a65c	00		.
	nop			;a65d	00		.
	nop			;a65e	00		.
	nop			;a65f	00		.
	nop			;a660	00		.
	nop			;a661	00		.
	nop			;a662	00		.
	nop			;a663	00		.
	nop			;a664	00		.
	nop			;a665	00		.
	nop			;a666	00		.
	nop			;a667	00		.
	nop			;a668	00		.
	nop			;a669	00		.
	nop			;a66a	00		.
	nop			;a66b	00		.
	nop			;a66c	00		.
	nop			;a66d	00		.
	nop			;a66e	00		.
	nop			;a66f	00		.
	nop			;a670	00		.
	nop			;a671	00		.
	nop			;a672	00		.
	nop			;a673	00		.
	nop			;a674	00		.
	nop			;a675	00		.
	nop			;a676	00		.
	nop			;a677	00		.
	nop			;a678	00		.
	nop			;a679	00		.
	nop			;a67a	00		.
	nop			;a67b	00		.
	nop			;a67c	00		.
	nop			;a67d	00		.
	nop			;a67e	00		.
	nop			;a67f	00		.
	nop			;a680	00		.
	nop			;a681	00		.
	nop			;a682	00		.
	nop			;a683	00		.
	nop			;a684	00		.
	nop			;a685	00		.
	nop			;a686	00		.
	nop			;a687	00		.
	nop			;a688	00		.
	nop			;a689	00		.
	nop			;a68a	00		.
	nop			;a68b	00		.
	nop			;a68c	00		.
	nop			;a68d	00		.
	nop			;a68e	00		.
	nop			;a68f	00		.
	nop			;a690	00		.
	nop			;a691	00		.
	nop			;a692	00		.
	nop			;a693	00		.
	nop			;a694	00		.
	nop			;a695	00		.
	nop			;a696	00		.
	nop			;a697	00		.
	nop			;a698	00		.
	nop			;a699	00		.
	nop			;a69a	00		.
	nop			;a69b	00		.
	nop			;a69c	00		.
	nop			;a69d	00		.
	nop			;a69e	00		.
	nop			;a69f	00		.
	nop			;a6a0	00		.
	nop			;a6a1	00		.
	nop			;a6a2	00		.
	nop			;a6a3	00		.
	nop			;a6a4	00		.
	nop			;a6a5	00		.
	nop			;a6a6	00		.
	nop			;a6a7	00		.
	nop			;a6a8	00		.
	nop			;a6a9	00		.
	nop			;a6aa	00		.
	nop			;a6ab	00		.
	nop			;a6ac	00		.
	nop			;a6ad	00		.
	nop			;a6ae	00		.
	nop			;a6af	00		.
	nop			;a6b0	00		.
	nop			;a6b1	00		.
	nop			;a6b2	00		.
	nop			;a6b3	00		.
	nop			;a6b4	00		.
	nop			;a6b5	00		.
	nop			;a6b6	00		.
	nop			;a6b7	00		.
	nop			;a6b8	00		.
	nop			;a6b9	00		.
	nop			;a6ba	00		.
	nop			;a6bb	00		.
	nop			;a6bc	00		.
	nop			;a6bd	00		.
	nop			;a6be	00		.
	nop			;a6bf	00		.
	nop			;a6c0	00		.
	nop			;a6c1	00		.
	nop			;a6c2	00		.
	nop			;a6c3	00		.
	nop			;a6c4	00		.
	nop			;a6c5	00		.
	nop			;a6c6	00		.
	nop			;a6c7	00		.
	nop			;a6c8	00		.
	nop			;a6c9	00		.
	nop			;a6ca	00		.
	nop			;a6cb	00		.
	nop			;a6cc	00		.
	nop			;a6cd	00		.
	nop			;a6ce	00		.
	nop			;a6cf	00		.
	nop			;a6d0	00		.
	nop			;a6d1	00		.
	nop			;a6d2	00		.
	nop			;a6d3	00		.
	nop			;a6d4	00		.
	nop			;a6d5	00		.
	nop			;a6d6	00		.
	nop			;a6d7	00		.
	nop			;a6d8	00		.
	nop			;a6d9	00		.
	nop			;a6da	00		.
	nop			;a6db	00		.
	nop			;a6dc	00		.
	nop			;a6dd	00		.
	nop			;a6de	00		.
	nop			;a6df	00		.
	nop			;a6e0	00		.
	nop			;a6e1	00		.
	nop			;a6e2	00		.
	nop			;a6e3	00		.
	nop			;a6e4	00		.
	nop			;a6e5	00		.
	nop			;a6e6	00		.
	nop			;a6e7	00		.
	nop			;a6e8	00		.
	nop			;a6e9	00		.
	nop			;a6ea	00		.
	nop			;a6eb	00		.
	nop			;a6ec	00		.
	nop			;a6ed	00		.
	nop			;a6ee	00		.
	nop			;a6ef	00		.
	nop			;a6f0	00		.
	nop			;a6f1	00		.
	nop			;a6f2	00		.
	nop			;a6f3	00		.
	nop			;a6f4	00		.
	nop			;a6f5	00		.
	nop			;a6f6	00		.
	nop			;a6f7	00		.
	nop			;a6f8	00		.
	nop			;a6f9	00		.
	nop			;a6fa	00		.
	nop			;a6fb	00		.
	nop			;a6fc	00		.
	nop			;a6fd	00		.
	nop			;a6fe	00		.
	nop			;a6ff	00		.
	nop			;a700	00		.
	nop			;a701	00		.
	nop			;a702	00		.
	nop			;a703	00		.
	nop			;a704	00		.
	nop			;a705	00		.
	nop			;a706	00		.
	nop			;a707	00		.
	nop			;a708	00		.
	nop			;a709	00		.
	nop			;a70a	00		.
	nop			;a70b	00		.
	nop			;a70c	00		.
	nop			;a70d	00		.
	nop			;a70e	00		.
	nop			;a70f	00		.
	nop			;a710	00		.
	nop			;a711	00		.
	nop			;a712	00		.
	nop			;a713	00		.
	nop			;a714	00		.
	nop			;a715	00		.
	nop			;a716	00		.
	nop			;a717	00		.
	nop			;a718	00		.
	nop			;a719	00		.
	nop			;a71a	00		.
	nop			;a71b	00		.
	nop			;a71c	00		.
	nop			;a71d	00		.
	nop			;a71e	00		.
	nop			;a71f	00		.
	nop			;a720	00		.
	nop			;a721	00		.
	nop			;a722	00		.
	nop			;a723	00		.
	nop			;a724	00		.
	nop			;a725	00		.
	nop			;a726	00		.
	nop			;a727	00		.
	nop			;a728	00		.
	nop			;a729	00		.
	nop			;a72a	00		.
	nop			;a72b	00		.
	nop			;a72c	00		.
	nop			;a72d	00		.
	nop			;a72e	00		.
	nop			;a72f	00		.
	nop			;a730	00		.
	nop			;a731	00		.
	nop			;a732	00		.
	nop			;a733	00		.
	nop			;a734	00		.
	nop			;a735	00		.
	nop			;a736	00		.
	nop			;a737	00		.
	nop			;a738	00		.
	nop			;a739	00		.
	nop			;a73a	00		.
	nop			;a73b	00		.
	nop			;a73c	00		.
	nop			;a73d	00		.
	nop			;a73e	00		.
	nop			;a73f	00		.
	nop			;a740	00		.
	nop			;a741	00		.
	nop			;a742	00		.
	nop			;a743	00		.
	nop			;a744	00		.
	nop			;a745	00		.
	nop			;a746	00		.
	nop			;a747	00		.
	nop			;a748	00		.
	nop			;a749	00		.
	nop			;a74a	00		.
	nop			;a74b	00		.
	nop			;a74c	00		.
	nop			;a74d	00		.
	nop			;a74e	00		.
	nop			;a74f	00		.
	nop			;a750	00		.
	nop			;a751	00		.
	nop			;a752	00		.
	nop			;a753	00		.
	nop			;a754	00		.
	nop			;a755	00		.
	nop			;a756	00		.
	nop			;a757	00		.
	nop			;a758	00		.
	nop			;a759	00		.
	nop			;a75a	00		.
	nop			;a75b	00		.
	nop			;a75c	00		.
	nop			;a75d	00		.
	nop			;a75e	00		.
	nop			;a75f	00		.
	nop			;a760	00		.
	nop			;a761	00		.
	nop			;a762	00		.
	nop			;a763	00		.
	nop			;a764	00		.
	nop			;a765	00		.
	nop			;a766	00		.
	nop			;a767	00		.
	nop			;a768	00		.
	nop			;a769	00		.
	nop			;a76a	00		.
	nop			;a76b	00		.
	nop			;a76c	00		.
	nop			;a76d	00		.
	nop			;a76e	00		.
	nop			;a76f	00		.
	nop			;a770	00		.
	nop			;a771	00		.
	nop			;a772	00		.
	nop			;a773	00		.
	nop			;a774	00		.
	nop			;a775	00		.
	nop			;a776	00		.
	nop			;a777	00		.
	nop			;a778	00		.
	nop			;a779	00		.
	nop			;a77a	00		.
	nop			;a77b	00		.
	nop			;a77c	00		.
	nop			;a77d	00		.
	nop			;a77e	00		.
	nop			;a77f	00		.
	nop			;a780	00		.
	nop			;a781	00		.
	nop			;a782	00		.
	nop			;a783	00		.
	nop			;a784	00		.
	nop			;a785	00		.
	nop			;a786	00		.
	nop			;a787	00		.
	nop			;a788	00		.
	nop			;a789	00		.
	nop			;a78a	00		.
	nop			;a78b	00		.
	nop			;a78c	00		.
	nop			;a78d	00		.
	nop			;a78e	00		.
	nop			;a78f	00		.
	nop			;a790	00		.
	nop			;a791	00		.
	nop			;a792	00		.
	nop			;a793	00		.
	nop			;a794	00		.
	nop			;a795	00		.
	nop			;a796	00		.
	nop			;a797	00		.
	nop			;a798	00		.
	nop			;a799	00		.
	nop			;a79a	00		.
	nop			;a79b	00		.
	nop			;a79c	00		.
	nop			;a79d	00		.
	nop			;a79e	00		.
	nop			;a79f	00		.
	nop			;a7a0	00		.
	nop			;a7a1	00		.
	nop			;a7a2	00		.
	nop			;a7a3	00		.
	nop			;a7a4	00		.
	nop			;a7a5	00		.
	nop			;a7a6	00		.
	nop			;a7a7	00		.
	nop			;a7a8	00		.
	nop			;a7a9	00		.
	nop			;a7aa	00		.
	nop			;a7ab	00		.
	nop			;a7ac	00		.
	nop			;a7ad	00		.
	nop			;a7ae	00		.
	nop			;a7af	00		.
	nop			;a7b0	00		.
	nop			;a7b1	00		.
	nop			;a7b2	00		.
	nop			;a7b3	00		.
	nop			;a7b4	00		.
	nop			;a7b5	00		.
	nop			;a7b6	00		.
	nop			;a7b7	00		.
	nop			;a7b8	00		.
	nop			;a7b9	00		.
	nop			;a7ba	00		.
	nop			;a7bb	00		.
	nop			;a7bc	00		.
	nop			;a7bd	00		.
	nop			;a7be	00		.
	nop			;a7bf	00		.
	nop			;a7c0	00		.
	nop			;a7c1	00		.
	nop			;a7c2	00		.
	nop			;a7c3	00		.
	nop			;a7c4	00		.
	nop			;a7c5	00		.
	nop			;a7c6	00		.
	nop			;a7c7	00		.
	nop			;a7c8	00		.
	nop			;a7c9	00		.
	nop			;a7ca	00		.
	nop			;a7cb	00		.
	nop			;a7cc	00		.
	nop			;a7cd	00		.
	nop			;a7ce	00		.
	nop			;a7cf	00		.
	nop			;a7d0	00		.
	nop			;a7d1	00		.
	nop			;a7d2	00		.
	nop			;a7d3	00		.
	nop			;a7d4	00		.
	nop			;a7d5	00		.
	nop			;a7d6	00		.
	nop			;a7d7	00		.
	nop			;a7d8	00		.
	nop			;a7d9	00		.
	nop			;a7da	00		.
	nop			;a7db	00		.
	nop			;a7dc	00		.
	nop			;a7dd	00		.
	nop			;a7de	00		.
	nop			;a7df	00		.
	nop			;a7e0	00		.
	nop			;a7e1	00		.
	nop			;a7e2	00		.
	nop			;a7e3	00		.
	nop			;a7e4	00		.
	nop			;a7e5	00		.
	nop			;a7e6	00		.
	nop			;a7e7	00		.
	nop			;a7e8	00		.
	nop			;a7e9	00		.
	nop			;a7ea	00		.
	nop			;a7eb	00		.
	nop			;a7ec	00		.
	nop			;a7ed	00		.
	nop			;a7ee	00		.
	nop			;a7ef	00		.
	nop			;a7f0	00		.
	nop			;a7f1	00		.
	nop			;a7f2	00		.
	nop			;a7f3	00		.
	nop			;a7f4	00		.
	nop			;a7f5	00		.
	nop			;a7f6	00		.
	nop			;a7f7	00		.
	nop			;a7f8	00		.
	nop			;a7f9	00		.
	nop			;a7fa	00		.
	nop			;a7fb	00		.
	nop			;a7fc	00		.
	nop			;a7fd	00		.
	nop			;a7fe	00		.
	nop			;a7ff	00		.
	nop			;a800	00		.
	nop			;a801	00		.
	nop			;a802	00		.
	nop			;a803	00		.
	nop			;a804	00		.
	nop			;a805	00		.
	nop			;a806	00		.
	nop			;a807	00		.
	nop			;a808	00		.
	nop			;a809	00		.
	nop			;a80a	00		.
	nop			;a80b	00		.
	nop			;a80c	00		.
	nop			;a80d	00		.
	nop			;a80e	00		.
	nop			;a80f	00		.
	nop			;a810	00		.
	nop			;a811	00		.
	nop			;a812	00		.
	nop			;a813	00		.
	nop			;a814	00		.
	nop			;a815	00		.
	nop			;a816	00		.
	nop			;a817	00		.
	nop			;a818	00		.
	nop			;a819	00		.
	nop			;a81a	00		.
	nop			;a81b	00		.
	nop			;a81c	00		.
	nop			;a81d	00		.
	nop			;a81e	00		.
	nop			;a81f	00		.
	nop			;a820	00		.
	nop			;a821	00		.
	nop			;a822	00		.
	nop			;a823	00		.
	nop			;a824	00		.
	nop			;a825	00		.
	nop			;a826	00		.
	nop			;a827	00		.
	nop			;a828	00		.
	nop			;a829	00		.
	nop			;a82a	00		.
	nop			;a82b	00		.
	nop			;a82c	00		.
	nop			;a82d	00		.
	nop			;a82e	00		.
	nop			;a82f	00		.
	nop			;a830	00		.
	nop			;a831	00		.
	nop			;a832	00		.
	nop			;a833	00		.
	nop			;a834	00		.
	nop			;a835	00		.
	nop			;a836	00		.
	nop			;a837	00		.
	nop			;a838	00		.
	nop			;a839	00		.
	nop			;a83a	00		.
	nop			;a83b	00		.
	nop			;a83c	00		.
	nop			;a83d	00		.
	nop			;a83e	00		.
	nop			;a83f	00		.
	nop			;a840	00		.
	nop			;a841	00		.
	nop			;a842	00		.
	nop			;a843	00		.
	nop			;a844	00		.
	nop			;a845	00		.
	nop			;a846	00		.
	nop			;a847	00		.
	nop			;a848	00		.
	nop			;a849	00		.
	nop			;a84a	00		.
	nop			;a84b	00		.
	nop			;a84c	00		.
	nop			;a84d	00		.
	nop			;a84e	00		.
	nop			;a84f	00		.
	nop			;a850	00		.
	nop			;a851	00		.
	nop			;a852	00		.
	nop			;a853	00		.
	nop			;a854	00		.
	nop			;a855	00		.
	nop			;a856	00		.
	nop			;a857	00		.
	nop			;a858	00		.
	nop			;a859	00		.
	nop			;a85a	00		.
	nop			;a85b	00		.
	nop			;a85c	00		.
	nop			;a85d	00		.
	nop			;a85e	00		.
	nop			;a85f	00		.
	nop			;a860	00		.
	nop			;a861	00		.
	nop			;a862	00		.
	nop			;a863	00		.
	nop			;a864	00		.
	nop			;a865	00		.
	nop			;a866	00		.
	nop			;a867	00		.
	nop			;a868	00		.
	nop			;a869	00		.
	nop			;a86a	00		.
	nop			;a86b	00		.
	nop			;a86c	00		.
	nop			;a86d	00		.
	nop			;a86e	00		.
	nop			;a86f	00		.
	nop			;a870	00		.
	nop			;a871	00		.
	nop			;a872	00		.
	nop			;a873	00		.
	nop			;a874	00		.
	nop			;a875	00		.
	nop			;a876	00		.
	nop			;a877	00		.
	nop			;a878	00		.
	nop			;a879	00		.
	nop			;a87a	00		.
	nop			;a87b	00		.
	nop			;a87c	00		.
	nop			;a87d	00		.
	nop			;a87e	00		.
	nop			;a87f	00		.
	nop			;a880	00		.
	nop			;a881	00		.
	nop			;a882	00		.
	nop			;a883	00		.
	nop			;a884	00		.
	nop			;a885	00		.
	nop			;a886	00		.
	nop			;a887	00		.
	nop			;a888	00		.
	nop			;a889	00		.
	nop			;a88a	00		.
	nop			;a88b	00		.
	nop			;a88c	00		.
	nop			;a88d	00		.
	nop			;a88e	00		.
	nop			;a88f	00		.
	nop			;a890	00		.
	nop			;a891	00		.
	nop			;a892	00		.
	nop			;a893	00		.
	nop			;a894	00		.
	nop			;a895	00		.
	nop			;a896	00		.
	nop			;a897	00		.
	nop			;a898	00		.
	nop			;a899	00		.
	nop			;a89a	00		.
	nop			;a89b	00		.
	nop			;a89c	00		.
	nop			;a89d	00		.
	nop			;a89e	00		.
	nop			;a89f	00		.
	nop			;a8a0	00		.
	nop			;a8a1	00		.
	nop			;a8a2	00		.
	nop			;a8a3	00		.
	nop			;a8a4	00		.
	nop			;a8a5	00		.
	nop			;a8a6	00		.
	nop			;a8a7	00		.
	nop			;a8a8	00		.
	nop			;a8a9	00		.
	nop			;a8aa	00		.
	nop			;a8ab	00		.
	nop			;a8ac	00		.
	nop			;a8ad	00		.
	nop			;a8ae	00		.
	nop			;a8af	00		.
	nop			;a8b0	00		.
	nop			;a8b1	00		.
	nop			;a8b2	00		.
	nop			;a8b3	00		.
	nop			;a8b4	00		.
	nop			;a8b5	00		.
	nop			;a8b6	00		.
	nop			;a8b7	00		.
	nop			;a8b8	00		.
	nop			;a8b9	00		.
	nop			;a8ba	00		.
	nop			;a8bb	00		.
	nop			;a8bc	00		.
	nop			;a8bd	00		.
	nop			;a8be	00		.
	nop			;a8bf	00		.
	nop			;a8c0	00		.
	nop			;a8c1	00		.
	nop			;a8c2	00		.
	nop			;a8c3	00		.
	nop			;a8c4	00		.
	nop			;a8c5	00		.
	nop			;a8c6	00		.
	nop			;a8c7	00		.
	nop			;a8c8	00		.
	nop			;a8c9	00		.
	nop			;a8ca	00		.
	nop			;a8cb	00		.
	nop			;a8cc	00		.
	nop			;a8cd	00		.
	nop			;a8ce	00		.
	nop			;a8cf	00		.
	nop			;a8d0	00		.
	nop			;a8d1	00		.
	nop			;a8d2	00		.
	nop			;a8d3	00		.
	nop			;a8d4	00		.
	nop			;a8d5	00		.
	nop			;a8d6	00		.
	nop			;a8d7	00		.
	nop			;a8d8	00		.
	nop			;a8d9	00		.
	nop			;a8da	00		.
	nop			;a8db	00		.
	nop			;a8dc	00		.
	nop			;a8dd	00		.
	nop			;a8de	00		.
	nop			;a8df	00		.
	nop			;a8e0	00		.
	nop			;a8e1	00		.
	nop			;a8e2	00		.
	nop			;a8e3	00		.
	nop			;a8e4	00		.
	nop			;a8e5	00		.
	nop			;a8e6	00		.
	nop			;a8e7	00		.
	nop			;a8e8	00		.
	nop			;a8e9	00		.
	nop			;a8ea	00		.
	nop			;a8eb	00		.
	nop			;a8ec	00		.
	nop			;a8ed	00		.
	nop			;a8ee	00		.
	nop			;a8ef	00		.
	nop			;a8f0	00		.
	nop			;a8f1	00		.
	nop			;a8f2	00		.
	nop			;a8f3	00		.
	nop			;a8f4	00		.
	nop			;a8f5	00		.
	nop			;a8f6	00		.
	nop			;a8f7	00		.
	nop			;a8f8	00		.
	nop			;a8f9	00		.
	nop			;a8fa	00		.
	nop			;a8fb	00		.
	nop			;a8fc	00		.
	nop			;a8fd	00		.
	nop			;a8fe	00		.
	nop			;a8ff	00		.
	nop			;a900	00		.
	nop			;a901	00		.
	nop			;a902	00		.
	nop			;a903	00		.
	nop			;a904	00		.
	nop			;a905	00		.
	nop			;a906	00		.
	nop			;a907	00		.
	nop			;a908	00		.
	nop			;a909	00		.
	nop			;a90a	00		.
	nop			;a90b	00		.
	nop			;a90c	00		.
	nop			;a90d	00		.
	nop			;a90e	00		.
	nop			;a90f	00		.
	nop			;a910	00		.
	nop			;a911	00		.
	nop			;a912	00		.
	nop			;a913	00		.
	nop			;a914	00		.
	nop			;a915	00		.
	nop			;a916	00		.
	nop			;a917	00		.
	nop			;a918	00		.
	nop			;a919	00		.
	nop			;a91a	00		.
	nop			;a91b	00		.
	nop			;a91c	00		.
	nop			;a91d	00		.
	nop			;a91e	00		.
	nop			;a91f	00		.
	nop			;a920	00		.
	nop			;a921	00		.
	nop			;a922	00		.
	nop			;a923	00		.
	nop			;a924	00		.
	nop			;a925	00		.
	nop			;a926	00		.
	nop			;a927	00		.
	nop			;a928	00		.
	nop			;a929	00		.
	nop			;a92a	00		.
	nop			;a92b	00		.
	nop			;a92c	00		.
	nop			;a92d	00		.
	nop			;a92e	00		.
	nop			;a92f	00		.
	nop			;a930	00		.
	nop			;a931	00		.
	nop			;a932	00		.
	nop			;a933	00		.
	nop			;a934	00		.
	nop			;a935	00		.
	nop			;a936	00		.
	nop			;a937	00		.
	nop			;a938	00		.
	nop			;a939	00		.
	nop			;a93a	00		.
	nop			;a93b	00		.
	nop			;a93c	00		.
	nop			;a93d	00		.
	nop			;a93e	00		.
	nop			;a93f	00		.
	nop			;a940	00		.
	nop			;a941	00		.
	nop			;a942	00		.
	nop			;a943	00		.
	nop			;a944	00		.
	nop			;a945	00		.
	nop			;a946	00		.
	nop			;a947	00		.
	nop			;a948	00		.
	nop			;a949	00		.
	nop			;a94a	00		.
	nop			;a94b	00		.
	nop			;a94c	00		.
	nop			;a94d	00		.
	nop			;a94e	00		.
	nop			;a94f	00		.
	nop			;a950	00		.
	nop			;a951	00		.
	nop			;a952	00		.
	nop			;a953	00		.
	nop			;a954	00		.
	nop			;a955	00		.
	nop			;a956	00		.
	nop			;a957	00		.
	nop			;a958	00		.
	nop			;a959	00		.
	nop			;a95a	00		.
	nop			;a95b	00		.
	nop			;a95c	00		.
	nop			;a95d	00		.
	nop			;a95e	00		.
	nop			;a95f	00		.
	nop			;a960	00		.
	nop			;a961	00		.
	nop			;a962	00		.
	nop			;a963	00		.
	nop			;a964	00		.
	nop			;a965	00		.
	nop			;a966	00		.
	nop			;a967	00		.
	nop			;a968	00		.
	nop			;a969	00		.
	nop			;a96a	00		.
	nop			;a96b	00		.
	nop			;a96c	00		.
	nop			;a96d	00		.
	nop			;a96e	00		.
	nop			;a96f	00		.
	nop			;a970	00		.
	nop			;a971	00		.
	nop			;a972	00		.
	nop			;a973	00		.
	nop			;a974	00		.
	nop			;a975	00		.
	nop			;a976	00		.
	nop			;a977	00		.
	nop			;a978	00		.
	nop			;a979	00		.
	nop			;a97a	00		.
	nop			;a97b	00		.
	nop			;a97c	00		.
	nop			;a97d	00		.
	nop			;a97e	00		.
	nop			;a97f	00		.
	nop			;a980	00		.
	nop			;a981	00		.
	nop			;a982	00		.
	nop			;a983	00		.
	nop			;a984	00		.
	nop			;a985	00		.
	nop			;a986	00		.
	nop			;a987	00		.
	nop			;a988	00		.
	nop			;a989	00		.
	nop			;a98a	00		.
	nop			;a98b	00		.
	nop			;a98c	00		.
	nop			;a98d	00		.
	nop			;a98e	00		.
	nop			;a98f	00		.
	nop			;a990	00		.
	nop			;a991	00		.
	nop			;a992	00		.
	nop			;a993	00		.
	nop			;a994	00		.
	nop			;a995	00		.
	nop			;a996	00		.
	nop			;a997	00		.
	nop			;a998	00		.
	nop			;a999	00		.
	nop			;a99a	00		.
	nop			;a99b	00		.
	nop			;a99c	00		.
	nop			;a99d	00		.
	nop			;a99e	00		.
	nop			;a99f	00		.
	nop			;a9a0	00		.
	nop			;a9a1	00		.
	nop			;a9a2	00		.
	nop			;a9a3	00		.
	nop			;a9a4	00		.
	nop			;a9a5	00		.
	nop			;a9a6	00		.
	nop			;a9a7	00		.
	nop			;a9a8	00		.
	nop			;a9a9	00		.
	nop			;a9aa	00		.
	nop			;a9ab	00		.
	nop			;a9ac	00		.
	nop			;a9ad	00		.
	nop			;a9ae	00		.
	nop			;a9af	00		.
	nop			;a9b0	00		.
	nop			;a9b1	00		.
	nop			;a9b2	00		.
	nop			;a9b3	00		.
	nop			;a9b4	00		.
	nop			;a9b5	00		.
	nop			;a9b6	00		.
	nop			;a9b7	00		.
	nop			;a9b8	00		.
	nop			;a9b9	00		.
	nop			;a9ba	00		.
	nop			;a9bb	00		.
	nop			;a9bc	00		.
	nop			;a9bd	00		.
	nop			;a9be	00		.
	nop			;a9bf	00		.
	nop			;a9c0	00		.
	nop			;a9c1	00		.
	nop			;a9c2	00		.
	nop			;a9c3	00		.
	nop			;a9c4	00		.
	nop			;a9c5	00		.
	nop			;a9c6	00		.
	nop			;a9c7	00		.
	nop			;a9c8	00		.
	nop			;a9c9	00		.
	nop			;a9ca	00		.
	nop			;a9cb	00		.
	nop			;a9cc	00		.
	nop			;a9cd	00		.
	nop			;a9ce	00		.
	nop			;a9cf	00		.
	nop			;a9d0	00		.
	nop			;a9d1	00		.
	nop			;a9d2	00		.
	nop			;a9d3	00		.
	nop			;a9d4	00		.
	nop			;a9d5	00		.
	nop			;a9d6	00		.
	nop			;a9d7	00		.
	nop			;a9d8	00		.
	nop			;a9d9	00		.
	nop			;a9da	00		.
	nop			;a9db	00		.
	nop			;a9dc	00		.
	nop			;a9dd	00		.
	nop			;a9de	00		.
	nop			;a9df	00		.
	nop			;a9e0	00		.
	nop			;a9e1	00		.
	nop			;a9e2	00		.
	nop			;a9e3	00		.
	nop			;a9e4	00		.
	nop			;a9e5	00		.
	nop			;a9e6	00		.
	nop			;a9e7	00		.
	nop			;a9e8	00		.
	nop			;a9e9	00		.
	nop			;a9ea	00		.
	nop			;a9eb	00		.
	nop			;a9ec	00		.
	nop			;a9ed	00		.
	nop			;a9ee	00		.
	nop			;a9ef	00		.
	nop			;a9f0	00		.
	nop			;a9f1	00		.
	nop			;a9f2	00		.
	nop			;a9f3	00		.
	nop			;a9f4	00		.
	nop			;a9f5	00		.
	nop			;a9f6	00		.
	nop			;a9f7	00		.
	nop			;a9f8	00		.
	nop			;a9f9	00		.
	nop			;a9fa	00		.
	nop			;a9fb	00		.
	nop			;a9fc	00		.
	nop			;a9fd	00		.
	nop			;a9fe	00		.
	nop			;a9ff	00		.
	nop			;aa00	00		.
	nop			;aa01	00		.
	nop			;aa02	00		.
	nop			;aa03	00		.
	nop			;aa04	00		.
	nop			;aa05	00		.
	nop			;aa06	00		.
	nop			;aa07	00		.
	nop			;aa08	00		.
	nop			;aa09	00		.
	nop			;aa0a	00		.
	nop			;aa0b	00		.
	nop			;aa0c	00		.
	nop			;aa0d	00		.
	nop			;aa0e	00		.
	nop			;aa0f	00		.
	nop			;aa10	00		.
	nop			;aa11	00		.
	nop			;aa12	00		.
	nop			;aa13	00		.
	nop			;aa14	00		.
	nop			;aa15	00		.
	nop			;aa16	00		.
	nop			;aa17	00		.
	nop			;aa18	00		.
	nop			;aa19	00		.
	nop			;aa1a	00		.
	nop			;aa1b	00		.
	nop			;aa1c	00		.
	nop			;aa1d	00		.
	nop			;aa1e	00		.
	nop			;aa1f	00		.
	nop			;aa20	00		.
	nop			;aa21	00		.
	nop			;aa22	00		.
	nop			;aa23	00		.
	nop			;aa24	00		.
	nop			;aa25	00		.
	nop			;aa26	00		.
	nop			;aa27	00		.
	nop			;aa28	00		.
	nop			;aa29	00		.
	nop			;aa2a	00		.
	nop			;aa2b	00		.
	nop			;aa2c	00		.
	nop			;aa2d	00		.
	nop			;aa2e	00		.
	nop			;aa2f	00		.
	nop			;aa30	00		.
	nop			;aa31	00		.
	nop			;aa32	00		.
	nop			;aa33	00		.
	nop			;aa34	00		.
	nop			;aa35	00		.
	nop			;aa36	00		.
	nop			;aa37	00		.
	nop			;aa38	00		.
	nop			;aa39	00		.
	nop			;aa3a	00		.
	nop			;aa3b	00		.
	nop			;aa3c	00		.
	nop			;aa3d	00		.
	nop			;aa3e	00		.
	nop			;aa3f	00		.
	nop			;aa40	00		.
	nop			;aa41	00		.
	nop			;aa42	00		.
	nop			;aa43	00		.
	nop			;aa44	00		.
	nop			;aa45	00		.
	nop			;aa46	00		.
	nop			;aa47	00		.
	nop			;aa48	00		.
	nop			;aa49	00		.
	nop			;aa4a	00		.
	nop			;aa4b	00		.
	nop			;aa4c	00		.
	nop			;aa4d	00		.
	nop			;aa4e	00		.
	nop			;aa4f	00		.
	nop			;aa50	00		.
	nop			;aa51	00		.
	nop			;aa52	00		.
	nop			;aa53	00		.
	nop			;aa54	00		.
	nop			;aa55	00		.
	nop			;aa56	00		.
	nop			;aa57	00		.
	nop			;aa58	00		.
	nop			;aa59	00		.
	nop			;aa5a	00		.
	nop			;aa5b	00		.
	nop			;aa5c	00		.
	nop			;aa5d	00		.
	nop			;aa5e	00		.
	nop			;aa5f	00		.
	nop			;aa60	00		.
	nop			;aa61	00		.
	nop			;aa62	00		.
	nop			;aa63	00		.
	nop			;aa64	00		.
	nop			;aa65	00		.
	nop			;aa66	00		.
	nop			;aa67	00		.
	nop			;aa68	00		.
	nop			;aa69	00		.
	nop			;aa6a	00		.
	nop			;aa6b	00		.
	nop			;aa6c	00		.
	nop			;aa6d	00		.
	nop			;aa6e	00		.
	nop			;aa6f	00		.
	nop			;aa70	00		.
	nop			;aa71	00		.
	nop			;aa72	00		.
	nop			;aa73	00		.
	nop			;aa74	00		.
	nop			;aa75	00		.
	nop			;aa76	00		.
	nop			;aa77	00		.
	nop			;aa78	00		.
	nop			;aa79	00		.
	nop			;aa7a	00		.
	nop			;aa7b	00		.
	nop			;aa7c	00		.
	nop			;aa7d	00		.
	nop			;aa7e	00		.
	nop			;aa7f	00		.
	nop			;aa80	00		.
	nop			;aa81	00		.
	nop			;aa82	00		.
	nop			;aa83	00		.
	nop			;aa84	00		.
	nop			;aa85	00		.
	nop			;aa86	00		.
	nop			;aa87	00		.
	nop			;aa88	00		.
	nop			;aa89	00		.
	nop			;aa8a	00		.
	nop			;aa8b	00		.
	nop			;aa8c	00		.
	nop			;aa8d	00		.
	nop			;aa8e	00		.
	nop			;aa8f	00		.
	nop			;aa90	00		.
	nop			;aa91	00		.
	nop			;aa92	00		.
	nop			;aa93	00		.
	nop			;aa94	00		.
	nop			;aa95	00		.
	nop			;aa96	00		.
	nop			;aa97	00		.
	nop			;aa98	00		.
	nop			;aa99	00		.
	nop			;aa9a	00		.
	nop			;aa9b	00		.
	nop			;aa9c	00		.
	nop			;aa9d	00		.
	nop			;aa9e	00		.
	nop			;aa9f	00		.
	nop			;aaa0	00		.
	nop			;aaa1	00		.
	nop			;aaa2	00		.
	nop			;aaa3	00		.
	nop			;aaa4	00		.
	nop			;aaa5	00		.
	nop			;aaa6	00		.
	nop			;aaa7	00		.
	nop			;aaa8	00		.
	nop			;aaa9	00		.
	nop			;aaaa	00		.
	nop			;aaab	00		.
	nop			;aaac	00		.
	nop			;aaad	00		.
	nop			;aaae	00		.
	nop			;aaaf	00		.
	nop			;aab0	00		.
	nop			;aab1	00		.
	nop			;aab2	00		.
	nop			;aab3	00		.
	nop			;aab4	00		.
	nop			;aab5	00		.
	nop			;aab6	00		.
	nop			;aab7	00		.
	nop			;aab8	00		.
	nop			;aab9	00		.
	nop			;aaba	00		.
	nop			;aabb	00		.
	nop			;aabc	00		.
	nop			;aabd	00		.
	nop			;aabe	00		.
	nop			;aabf	00		.
	nop			;aac0	00		.
	nop			;aac1	00		.
	nop			;aac2	00		.
	nop			;aac3	00		.
	nop			;aac4	00		.
	nop			;aac5	00		.
laac6h:
	nop			;aac6	00		.
	nop			;aac7	00		.
	nop			;aac8	00		.
	nop			;aac9	00		.
	nop			;aaca	00		.
	nop			;aacb	00		.
	nop			;aacc	00		.
	nop			;aacd	00		.
	nop			;aace	00		.
	nop			;aacf	00		.
	nop			;aad0	00		.
	nop			;aad1	00		.
	nop			;aad2	00		.
	nop			;aad3	00		.
	nop			;aad4	00		.
	nop			;aad5	00		.
	nop			;aad6	00		.
	nop			;aad7	00		.
	nop			;aad8	00		.
	nop			;aad9	00		.
	nop			;aada	00		.
	nop			;aadb	00		.
	nop			;aadc	00		.
	nop			;aadd	00		.
	nop			;aade	00		.
	nop			;aadf	00		.
	nop			;aae0	00		.
	nop			;aae1	00		.
	nop			;aae2	00		.
	nop			;aae3	00		.
	nop			;aae4	00		.
	nop			;aae5	00		.
	nop			;aae6	00		.
	nop			;aae7	00		.
	nop			;aae8	00		.
	nop			;aae9	00		.
	nop			;aaea	00		.
	nop			;aaeb	00		.
	nop			;aaec	00		.
	nop			;aaed	00		.
	nop			;aaee	00		.
	nop			;aaef	00		.
	nop			;aaf0	00		.
	nop			;aaf1	00		.
	nop			;aaf2	00		.
	nop			;aaf3	00		.
	nop			;aaf4	00		.
	nop			;aaf5	00		.
	nop			;aaf6	00		.
	nop			;aaf7	00		.
	nop			;aaf8	00		.
	nop			;aaf9	00		.
	nop			;aafa	00		.
	nop			;aafb	00		.
	nop			;aafc	00		.
	nop			;aafd	00		.
	nop			;aafe	00		.
	nop			;aaff	00		.
	nop			;ab00	00		.
	nop			;ab01	00		.
	nop			;ab02	00		.
	nop			;ab03	00		.
	nop			;ab04	00		.
	nop			;ab05	00		.
	nop			;ab06	00		.
	nop			;ab07	00		.
	nop			;ab08	00		.
	nop			;ab09	00		.
	nop			;ab0a	00		.
	nop			;ab0b	00		.
	nop			;ab0c	00		.
	nop			;ab0d	00		.
	nop			;ab0e	00		.
	nop			;ab0f	00		.
	nop			;ab10	00		.
	nop			;ab11	00		.
	nop			;ab12	00		.
	nop			;ab13	00		.
	nop			;ab14	00		.
	nop			;ab15	00		.
	nop			;ab16	00		.
	nop			;ab17	00		.
	nop			;ab18	00		.
	nop			;ab19	00		.
	nop			;ab1a	00		.
	nop			;ab1b	00		.
	nop			;ab1c	00		.
	nop			;ab1d	00		.
	nop			;ab1e	00		.
	nop			;ab1f	00		.
	nop			;ab20	00		.
	nop			;ab21	00		.
	nop			;ab22	00		.
	nop			;ab23	00		.
	nop			;ab24	00		.
	nop			;ab25	00		.
	nop			;ab26	00		.
	nop			;ab27	00		.
	nop			;ab28	00		.
	nop			;ab29	00		.
	nop			;ab2a	00		.
	nop			;ab2b	00		.
	nop			;ab2c	00		.
	nop			;ab2d	00		.
	nop			;ab2e	00		.
	nop			;ab2f	00		.
	nop			;ab30	00		.
	nop			;ab31	00		.
	nop			;ab32	00		.
	nop			;ab33	00		.
	nop			;ab34	00		.
	nop			;ab35	00		.
	nop			;ab36	00		.
	nop			;ab37	00		.
	nop			;ab38	00		.
	nop			;ab39	00		.
	nop			;ab3a	00		.
	nop			;ab3b	00		.
	nop			;ab3c	00		.
	nop			;ab3d	00		.
	nop			;ab3e	00		.
	nop			;ab3f	00		.
	nop			;ab40	00		.
	nop			;ab41	00		.
	nop			;ab42	00		.
	nop			;ab43	00		.
	nop			;ab44	00		.
	nop			;ab45	00		.
	nop			;ab46	00		.
	nop			;ab47	00		.
	nop			;ab48	00		.
	nop			;ab49	00		.
	nop			;ab4a	00		.
	nop			;ab4b	00		.
	nop			;ab4c	00		.
	nop			;ab4d	00		.
	nop			;ab4e	00		.
	nop			;ab4f	00		.
	nop			;ab50	00		.
	nop			;ab51	00		.
	nop			;ab52	00		.
	nop			;ab53	00		.
	nop			;ab54	00		.
	nop			;ab55	00		.
	nop			;ab56	00		.
	nop			;ab57	00		.
	nop			;ab58	00		.
	nop			;ab59	00		.
	nop			;ab5a	00		.
	nop			;ab5b	00		.
	nop			;ab5c	00		.
	nop			;ab5d	00		.
	nop			;ab5e	00		.
	nop			;ab5f	00		.
	nop			;ab60	00		.
	nop			;ab61	00		.
	nop			;ab62	00		.
	nop			;ab63	00		.
	nop			;ab64	00		.
	nop			;ab65	00		.
	nop			;ab66	00		.
	nop			;ab67	00		.
	nop			;ab68	00		.
	nop			;ab69	00		.
	nop			;ab6a	00		.
	nop			;ab6b	00		.
	nop			;ab6c	00		.
	nop			;ab6d	00		.
	nop			;ab6e	00		.
	nop			;ab6f	00		.
	nop			;ab70	00		.
	nop			;ab71	00		.
	nop			;ab72	00		.
	nop			;ab73	00		.
	nop			;ab74	00		.
	nop			;ab75	00		.
	nop			;ab76	00		.
	nop			;ab77	00		.
	nop			;ab78	00		.
	nop			;ab79	00		.
	nop			;ab7a	00		.
	nop			;ab7b	00		.
	nop			;ab7c	00		.
	nop			;ab7d	00		.
	nop			;ab7e	00		.
	nop			;ab7f	00		.
	nop			;ab80	00		.
	nop			;ab81	00		.
	nop			;ab82	00		.
	nop			;ab83	00		.
	nop			;ab84	00		.
	nop			;ab85	00		.
	nop			;ab86	00		.
	nop			;ab87	00		.
	nop			;ab88	00		.
	nop			;ab89	00		.
	nop			;ab8a	00		.
	nop			;ab8b	00		.
	nop			;ab8c	00		.
	nop			;ab8d	00		.
	nop			;ab8e	00		.
	nop			;ab8f	00		.
	nop			;ab90	00		.
	nop			;ab91	00		.
	nop			;ab92	00		.
	nop			;ab93	00		.
	nop			;ab94	00		.
	nop			;ab95	00		.
	nop			;ab96	00		.
	nop			;ab97	00		.
	nop			;ab98	00		.
	nop			;ab99	00		.
	nop			;ab9a	00		.
	nop			;ab9b	00		.
	nop			;ab9c	00		.
	nop			;ab9d	00		.
	nop			;ab9e	00		.
	nop			;ab9f	00		.
	nop			;aba0	00		.
	nop			;aba1	00		.
	nop			;aba2	00		.
	nop			;aba3	00		.
	nop			;aba4	00		.
	nop			;aba5	00		.
	nop			;aba6	00		.
	nop			;aba7	00		.
	nop			;aba8	00		.
	nop			;aba9	00		.
	nop			;abaa	00		.
	nop			;abab	00		.
	nop			;abac	00		.
	nop			;abad	00		.
	nop			;abae	00		.
	nop			;abaf	00		.
	nop			;abb0	00		.
	nop			;abb1	00		.
	nop			;abb2	00		.
	nop			;abb3	00		.
	nop			;abb4	00		.
	nop			;abb5	00		.
	nop			;abb6	00		.
	nop			;abb7	00		.
	nop			;abb8	00		.
	nop			;abb9	00		.
	nop			;abba	00		.
	nop			;abbb	00		.
	nop			;abbc	00		.
	nop			;abbd	00		.
	nop			;abbe	00		.
	nop			;abbf	00		.
	nop			;abc0	00		.
	nop			;abc1	00		.
	nop			;abc2	00		.
	nop			;abc3	00		.
	nop			;abc4	00		.
	nop			;abc5	00		.
	nop			;abc6	00		.
	nop			;abc7	00		.
	nop			;abc8	00		.
	nop			;abc9	00		.
	nop			;abca	00		.
	nop			;abcb	00		.
	nop			;abcc	00		.
	nop			;abcd	00		.
	nop			;abce	00		.
	nop			;abcf	00		.
	nop			;abd0	00		.
	nop			;abd1	00		.
	nop			;abd2	00		.
	nop			;abd3	00		.
	nop			;abd4	00		.
	nop			;abd5	00		.
	nop			;abd6	00		.
	nop			;abd7	00		.
	nop			;abd8	00		.
	nop			;abd9	00		.
	nop			;abda	00		.
	nop			;abdb	00		.
	nop			;abdc	00		.
	nop			;abdd	00		.
	nop			;abde	00		.
	nop			;abdf	00		.
	nop			;abe0	00		.
	nop			;abe1	00		.
	nop			;abe2	00		.
	nop			;abe3	00		.
	nop			;abe4	00		.
	nop			;abe5	00		.
	nop			;abe6	00		.
	nop			;abe7	00		.
	nop			;abe8	00		.
	nop			;abe9	00		.
	nop			;abea	00		.
	nop			;abeb	00		.
	nop			;abec	00		.
	nop			;abed	00		.
	nop			;abee	00		.
	nop			;abef	00		.
	nop			;abf0	00		.
	nop			;abf1	00		.
	nop			;abf2	00		.
	nop			;abf3	00		.
	nop			;abf4	00		.
	nop			;abf5	00		.
	nop			;abf6	00		.
	nop			;abf7	00		.
	nop			;abf8	00		.
	nop			;abf9	00		.
	nop			;abfa	00		.
	nop			;abfb	00		.
	nop			;abfc	00		.
	nop			;abfd	00		.
	nop			;abfe	00		.
	nop			;abff	00		.
	nop			;ac00	00		.
	nop			;ac01	00		.
	nop			;ac02	00		.
	nop			;ac03	00		.
	nop			;ac04	00		.
	nop			;ac05	00		.
	nop			;ac06	00		.
	nop			;ac07	00		.
	nop			;ac08	00		.
	nop			;ac09	00		.
	nop			;ac0a	00		.
	nop			;ac0b	00		.
	nop			;ac0c	00		.
	nop			;ac0d	00		.
	nop			;ac0e	00		.
	nop			;ac0f	00		.
	nop			;ac10	00		.
	nop			;ac11	00		.
	nop			;ac12	00		.
	nop			;ac13	00		.
	nop			;ac14	00		.
	nop			;ac15	00		.
	nop			;ac16	00		.
	nop			;ac17	00		.
	nop			;ac18	00		.
	nop			;ac19	00		.
	nop			;ac1a	00		.
	nop			;ac1b	00		.
	nop			;ac1c	00		.
	nop			;ac1d	00		.
	nop			;ac1e	00		.
	nop			;ac1f	00		.
	nop			;ac20	00		.
	nop			;ac21	00		.
	nop			;ac22	00		.
	nop			;ac23	00		.
	nop			;ac24	00		.
	nop			;ac25	00		.
	nop			;ac26	00		.
	nop			;ac27	00		.
	nop			;ac28	00		.
	nop			;ac29	00		.
	nop			;ac2a	00		.
	nop			;ac2b	00		.
	nop			;ac2c	00		.
	nop			;ac2d	00		.
	nop			;ac2e	00		.
	nop			;ac2f	00		.
	nop			;ac30	00		.
	nop			;ac31	00		.
	nop			;ac32	00		.
	nop			;ac33	00		.
	nop			;ac34	00		.
	nop			;ac35	00		.
	nop			;ac36	00		.
	nop			;ac37	00		.
	nop			;ac38	00		.
	nop			;ac39	00		.
	nop			;ac3a	00		.
	nop			;ac3b	00		.
	nop			;ac3c	00		.
	nop			;ac3d	00		.
	nop			;ac3e	00		.
	nop			;ac3f	00		.
	nop			;ac40	00		.
	nop			;ac41	00		.
	nop			;ac42	00		.
	nop			;ac43	00		.
	nop			;ac44	00		.
	nop			;ac45	00		.
	nop			;ac46	00		.
	nop			;ac47	00		.
	nop			;ac48	00		.
	nop			;ac49	00		.
	nop			;ac4a	00		.
	nop			;ac4b	00		.
	nop			;ac4c	00		.
	nop			;ac4d	00		.
	nop			;ac4e	00		.
	nop			;ac4f	00		.
	nop			;ac50	00		.
	nop			;ac51	00		.
	nop			;ac52	00		.
	nop			;ac53	00		.
	nop			;ac54	00		.
	nop			;ac55	00		.
	nop			;ac56	00		.
	nop			;ac57	00		.
	nop			;ac58	00		.
	nop			;ac59	00		.
	nop			;ac5a	00		.
	nop			;ac5b	00		.
	nop			;ac5c	00		.
	nop			;ac5d	00		.
	nop			;ac5e	00		.
	nop			;ac5f	00		.
	nop			;ac60	00		.
	nop			;ac61	00		.
	nop			;ac62	00		.
	nop			;ac63	00		.
	nop			;ac64	00		.
	nop			;ac65	00		.
	nop			;ac66	00		.
	nop			;ac67	00		.
	nop			;ac68	00		.
	nop			;ac69	00		.
	nop			;ac6a	00		.
	nop			;ac6b	00		.
	nop			;ac6c	00		.
	nop			;ac6d	00		.
	nop			;ac6e	00		.
	nop			;ac6f	00		.
	nop			;ac70	00		.
	nop			;ac71	00		.
	nop			;ac72	00		.
	nop			;ac73	00		.
	nop			;ac74	00		.
	nop			;ac75	00		.
	nop			;ac76	00		.
	nop			;ac77	00		.
	nop			;ac78	00		.
	nop			;ac79	00		.
	nop			;ac7a	00		.
	nop			;ac7b	00		.
	nop			;ac7c	00		.
	nop			;ac7d	00		.
	nop			;ac7e	00		.
	nop			;ac7f	00		.
	nop			;ac80	00		.
	nop			;ac81	00		.
	nop			;ac82	00		.
	nop			;ac83	00		.
	nop			;ac84	00		.
	nop			;ac85	00		.
	nop			;ac86	00		.
	nop			;ac87	00		.
	nop			;ac88	00		.
	nop			;ac89	00		.
	nop			;ac8a	00		.
	nop			;ac8b	00		.
	nop			;ac8c	00		.
	nop			;ac8d	00		.
	nop			;ac8e	00		.
	nop			;ac8f	00		.
	nop			;ac90	00		.
	nop			;ac91	00		.
	nop			;ac92	00		.
	nop			;ac93	00		.
	nop			;ac94	00		.
	nop			;ac95	00		.
	nop			;ac96	00		.
	nop			;ac97	00		.
	nop			;ac98	00		.
	nop			;ac99	00		.
	nop			;ac9a	00		.
	nop			;ac9b	00		.
	nop			;ac9c	00		.
	nop			;ac9d	00		.
	nop			;ac9e	00		.
	nop			;ac9f	00		.
	nop			;aca0	00		.
	nop			;aca1	00		.
	nop			;aca2	00		.
	nop			;aca3	00		.
	nop			;aca4	00		.
	nop			;aca5	00		.
	nop			;aca6	00		.
	nop			;aca7	00		.
	nop			;aca8	00		.
	nop			;aca9	00		.
	nop			;acaa	00		.
	nop			;acab	00		.
	nop			;acac	00		.
	nop			;acad	00		.
	nop			;acae	00		.
	nop			;acaf	00		.
	nop			;acb0	00		.
	nop			;acb1	00		.
	nop			;acb2	00		.
	nop			;acb3	00		.
	nop			;acb4	00		.
	nop			;acb5	00		.
	nop			;acb6	00		.
	nop			;acb7	00		.
	nop			;acb8	00		.
	nop			;acb9	00		.
	nop			;acba	00		.
	nop			;acbb	00		.
	nop			;acbc	00		.
	nop			;acbd	00		.
	nop			;acbe	00		.
	nop			;acbf	00		.
	nop			;acc0	00		.
	nop			;acc1	00		.
	nop			;acc2	00		.
	nop			;acc3	00		.
	nop			;acc4	00		.
	nop			;acc5	00		.
	nop			;acc6	00		.
	nop			;acc7	00		.
	nop			;acc8	00		.
	nop			;acc9	00		.
	nop			;acca	00		.
	nop			;accb	00		.
	nop			;accc	00		.
	nop			;accd	00		.
	nop			;acce	00		.
	nop			;accf	00		.
	nop			;acd0	00		.
	nop			;acd1	00		.
	nop			;acd2	00		.
	nop			;acd3	00		.
	nop			;acd4	00		.
	nop			;acd5	00		.
	nop			;acd6	00		.
	nop			;acd7	00		.
	nop			;acd8	00		.
	nop			;acd9	00		.
	nop			;acda	00		.
	nop			;acdb	00		.
	nop			;acdc	00		.
	nop			;acdd	00		.
	nop			;acde	00		.
	nop			;acdf	00		.
	nop			;ace0	00		.
	nop			;ace1	00		.
	nop			;ace2	00		.
	nop			;ace3	00		.
	nop			;ace4	00		.
	nop			;ace5	00		.
	nop			;ace6	00		.
	nop			;ace7	00		.
	nop			;ace8	00		.
	nop			;ace9	00		.
	nop			;acea	00		.
	nop			;aceb	00		.
	nop			;acec	00		.
	nop			;aced	00		.
	nop			;acee	00		.
	nop			;acef	00		.
	nop			;acf0	00		.
	nop			;acf1	00		.
	nop			;acf2	00		.
	nop			;acf3	00		.
	nop			;acf4	00		.
	nop			;acf5	00		.
	nop			;acf6	00		.
	nop			;acf7	00		.
	nop			;acf8	00		.
	nop			;acf9	00		.
	nop			;acfa	00		.
	nop			;acfb	00		.
	nop			;acfc	00		.
	nop			;acfd	00		.
	nop			;acfe	00		.
	nop			;acff	00		.
	nop			;ad00	00		.
	nop			;ad01	00		.
	nop			;ad02	00		.
	nop			;ad03	00		.
	nop			;ad04	00		.
	nop			;ad05	00		.
	nop			;ad06	00		.
	nop			;ad07	00		.
	nop			;ad08	00		.
	nop			;ad09	00		.
	nop			;ad0a	00		.
	nop			;ad0b	00		.
	nop			;ad0c	00		.
	nop			;ad0d	00		.
	nop			;ad0e	00		.
	nop			;ad0f	00		.
	nop			;ad10	00		.
	nop			;ad11	00		.
	nop			;ad12	00		.
	nop			;ad13	00		.
	nop			;ad14	00		.
	nop			;ad15	00		.
	nop			;ad16	00		.
	nop			;ad17	00		.
	nop			;ad18	00		.
	nop			;ad19	00		.
	nop			;ad1a	00		.
	nop			;ad1b	00		.
	nop			;ad1c	00		.
	nop			;ad1d	00		.
	nop			;ad1e	00		.
	nop			;ad1f	00		.
	nop			;ad20	00		.
	nop			;ad21	00		.
	nop			;ad22	00		.
	nop			;ad23	00		.
	nop			;ad24	00		.
	nop			;ad25	00		.
	nop			;ad26	00		.
	nop			;ad27	00		.
	nop			;ad28	00		.
	nop			;ad29	00		.
	nop			;ad2a	00		.
	nop			;ad2b	00		.
	nop			;ad2c	00		.
	nop			;ad2d	00		.
	nop			;ad2e	00		.
	nop			;ad2f	00		.
	nop			;ad30	00		.
	nop			;ad31	00		.
	nop			;ad32	00		.
	nop			;ad33	00		.
	nop			;ad34	00		.
	nop			;ad35	00		.
	nop			;ad36	00		.
	nop			;ad37	00		.
	nop			;ad38	00		.
	nop			;ad39	00		.
	nop			;ad3a	00		.
	nop			;ad3b	00		.
	nop			;ad3c	00		.
	nop			;ad3d	00		.
	nop			;ad3e	00		.
	nop			;ad3f	00		.
	nop			;ad40	00		.
	nop			;ad41	00		.
	nop			;ad42	00		.
	nop			;ad43	00		.
	nop			;ad44	00		.
	nop			;ad45	00		.
	nop			;ad46	00		.
	nop			;ad47	00		.
	nop			;ad48	00		.
	nop			;ad49	00		.
	nop			;ad4a	00		.
	nop			;ad4b	00		.
	nop			;ad4c	00		.
	nop			;ad4d	00		.
	nop			;ad4e	00		.
	nop			;ad4f	00		.
	nop			;ad50	00		.
	nop			;ad51	00		.
	nop			;ad52	00		.
	nop			;ad53	00		.
	nop			;ad54	00		.
	nop			;ad55	00		.
	nop			;ad56	00		.
	nop			;ad57	00		.
	nop			;ad58	00		.
	nop			;ad59	00		.
	nop			;ad5a	00		.
	nop			;ad5b	00		.
	nop			;ad5c	00		.
	nop			;ad5d	00		.
	nop			;ad5e	00		.
	nop			;ad5f	00		.
	nop			;ad60	00		.
	nop			;ad61	00		.
	nop			;ad62	00		.
	nop			;ad63	00		.
	nop			;ad64	00		.
	nop			;ad65	00		.
	nop			;ad66	00		.
	nop			;ad67	00		.
	nop			;ad68	00		.
	nop			;ad69	00		.
	nop			;ad6a	00		.
	nop			;ad6b	00		.
	nop			;ad6c	00		.
	nop			;ad6d	00		.
	nop			;ad6e	00		.
	nop			;ad6f	00		.
	nop			;ad70	00		.
	nop			;ad71	00		.
	nop			;ad72	00		.
	nop			;ad73	00		.
	nop			;ad74	00		.
	nop			;ad75	00		.
	nop			;ad76	00		.
	nop			;ad77	00		.
	nop			;ad78	00		.
	nop			;ad79	00		.
	nop			;ad7a	00		.
	nop			;ad7b	00		.
	nop			;ad7c	00		.
	nop			;ad7d	00		.
	nop			;ad7e	00		.
	nop			;ad7f	00		.
	nop			;ad80	00		.
	nop			;ad81	00		.
	nop			;ad82	00		.
	nop			;ad83	00		.
	nop			;ad84	00		.
	nop			;ad85	00		.
	nop			;ad86	00		.
	nop			;ad87	00		.
	nop			;ad88	00		.
	nop			;ad89	00		.
	nop			;ad8a	00		.
	nop			;ad8b	00		.
	nop			;ad8c	00		.
	nop			;ad8d	00		.
	nop			;ad8e	00		.
	nop			;ad8f	00		.
	nop			;ad90	00		.
	nop			;ad91	00		.
	nop			;ad92	00		.
	nop			;ad93	00		.
	nop			;ad94	00		.
	nop			;ad95	00		.
	nop			;ad96	00		.
	nop			;ad97	00		.
	nop			;ad98	00		.
	nop			;ad99	00		.
	nop			;ad9a	00		.
	nop			;ad9b	00		.
	nop			;ad9c	00		.
	nop			;ad9d	00		.
	nop			;ad9e	00		.
	nop			;ad9f	00		.
	nop			;ada0	00		.
	nop			;ada1	00		.
	nop			;ada2	00		.
	nop			;ada3	00		.
	nop			;ada4	00		.
	nop			;ada5	00		.
	nop			;ada6	00		.
	nop			;ada7	00		.
	nop			;ada8	00		.
	nop			;ada9	00		.
	nop			;adaa	00		.
	nop			;adab	00		.
	nop			;adac	00		.
	nop			;adad	00		.
	nop			;adae	00		.
	nop			;adaf	00		.
	nop			;adb0	00		.
	nop			;adb1	00		.
	nop			;adb2	00		.
	nop			;adb3	00		.
	nop			;adb4	00		.
	nop			;adb5	00		.
	nop			;adb6	00		.
	nop			;adb7	00		.
	nop			;adb8	00		.
	nop			;adb9	00		.
	nop			;adba	00		.
	nop			;adbb	00		.
	nop			;adbc	00		.
	nop			;adbd	00		.
	nop			;adbe	00		.
	nop			;adbf	00		.
	nop			;adc0	00		.
	nop			;adc1	00		.
	nop			;adc2	00		.
	nop			;adc3	00		.
	nop			;adc4	00		.
	nop			;adc5	00		.
	nop			;adc6	00		.
	nop			;adc7	00		.
	nop			;adc8	00		.
	nop			;adc9	00		.
	nop			;adca	00		.
	nop			;adcb	00		.
	nop			;adcc	00		.
	nop			;adcd	00		.
	nop			;adce	00		.
	nop			;adcf	00		.
	nop			;add0	00		.
	nop			;add1	00		.
	nop			;add2	00		.
	nop			;add3	00		.
	nop			;add4	00		.
	nop			;add5	00		.
	nop			;add6	00		.
	nop			;add7	00		.
	nop			;add8	00		.
	nop			;add9	00		.
	nop			;adda	00		.
	nop			;addb	00		.
	nop			;addc	00		.
	nop			;addd	00		.
	nop			;adde	00		.
	nop			;addf	00		.
	nop			;ade0	00		.
	nop			;ade1	00		.
	nop			;ade2	00		.
	nop			;ade3	00		.
	nop			;ade4	00		.
	nop			;ade5	00		.
	nop			;ade6	00		.
	nop			;ade7	00		.
	nop			;ade8	00		.
	nop			;ade9	00		.
	nop			;adea	00		.
	nop			;adeb	00		.
	nop			;adec	00		.
	nop			;aded	00		.
	nop			;adee	00		.
	nop			;adef	00		.
	nop			;adf0	00		.
	nop			;adf1	00		.
	nop			;adf2	00		.
	nop			;adf3	00		.
	nop			;adf4	00		.
	nop			;adf5	00		.
	nop			;adf6	00		.
	nop			;adf7	00		.
	nop			;adf8	00		.
	nop			;adf9	00		.
	nop			;adfa	00		.
	nop			;adfb	00		.
	nop			;adfc	00		.
	nop			;adfd	00		.
	nop			;adfe	00		.
	nop			;adff	00		.
	nop			;ae00	00		.
	nop			;ae01	00		.
	nop			;ae02	00		.
	nop			;ae03	00		.
	nop			;ae04	00		.
	nop			;ae05	00		.
	nop			;ae06	00		.
	nop			;ae07	00		.
	nop			;ae08	00		.
	nop			;ae09	00		.
	nop			;ae0a	00		.
	nop			;ae0b	00		.
	nop			;ae0c	00		.
	nop			;ae0d	00		.
	nop			;ae0e	00		.
	nop			;ae0f	00		.
	nop			;ae10	00		.
	nop			;ae11	00		.
	nop			;ae12	00		.
	nop			;ae13	00		.
	nop			;ae14	00		.
	nop			;ae15	00		.
	nop			;ae16	00		.
	nop			;ae17	00		.
	nop			;ae18	00		.
	nop			;ae19	00		.
	nop			;ae1a	00		.
	nop			;ae1b	00		.
	nop			;ae1c	00		.
	nop			;ae1d	00		.
	nop			;ae1e	00		.
	nop			;ae1f	00		.
	nop			;ae20	00		.
	nop			;ae21	00		.
	nop			;ae22	00		.
	nop			;ae23	00		.
	nop			;ae24	00		.
	nop			;ae25	00		.
	nop			;ae26	00		.
	nop			;ae27	00		.
	nop			;ae28	00		.
	nop			;ae29	00		.
	nop			;ae2a	00		.
	nop			;ae2b	00		.
	nop			;ae2c	00		.
	nop			;ae2d	00		.
	nop			;ae2e	00		.
	nop			;ae2f	00		.
	nop			;ae30	00		.
	nop			;ae31	00		.
	nop			;ae32	00		.
	nop			;ae33	00		.
	nop			;ae34	00		.
	nop			;ae35	00		.
	nop			;ae36	00		.
	nop			;ae37	00		.
	nop			;ae38	00		.
	nop			;ae39	00		.
	nop			;ae3a	00		.
	nop			;ae3b	00		.
	nop			;ae3c	00		.
	nop			;ae3d	00		.
	nop			;ae3e	00		.
	nop			;ae3f	00		.
	nop			;ae40	00		.
	nop			;ae41	00		.
	nop			;ae42	00		.
	nop			;ae43	00		.
	nop			;ae44	00		.
	nop			;ae45	00		.
	nop			;ae46	00		.
	nop			;ae47	00		.
	nop			;ae48	00		.
	nop			;ae49	00		.
	nop			;ae4a	00		.
	nop			;ae4b	00		.
	nop			;ae4c	00		.
	nop			;ae4d	00		.
	nop			;ae4e	00		.
	nop			;ae4f	00		.
	nop			;ae50	00		.
	nop			;ae51	00		.
	nop			;ae52	00		.
	nop			;ae53	00		.
	nop			;ae54	00		.
	nop			;ae55	00		.
	nop			;ae56	00		.
	nop			;ae57	00		.
	nop			;ae58	00		.
	nop			;ae59	00		.
	nop			;ae5a	00		.
	nop			;ae5b	00		.
	nop			;ae5c	00		.
	nop			;ae5d	00		.
	nop			;ae5e	00		.
	nop			;ae5f	00		.
	nop			;ae60	00		.
	nop			;ae61	00		.
	nop			;ae62	00		.
	nop			;ae63	00		.
	nop			;ae64	00		.
	nop			;ae65	00		.
	nop			;ae66	00		.
	nop			;ae67	00		.
	nop			;ae68	00		.
	nop			;ae69	00		.
	nop			;ae6a	00		.
	nop			;ae6b	00		.
	nop			;ae6c	00		.
	nop			;ae6d	00		.
	nop			;ae6e	00		.
	nop			;ae6f	00		.
	nop			;ae70	00		.
	nop			;ae71	00		.
	nop			;ae72	00		.
	nop			;ae73	00		.
	nop			;ae74	00		.
	nop			;ae75	00		.
	nop			;ae76	00		.
	nop			;ae77	00		.
	nop			;ae78	00		.
	nop			;ae79	00		.
	nop			;ae7a	00		.
	nop			;ae7b	00		.
	nop			;ae7c	00		.
	nop			;ae7d	00		.
	nop			;ae7e	00		.
	nop			;ae7f	00		.
	nop			;ae80	00		.
	nop			;ae81	00		.
	nop			;ae82	00		.
	nop			;ae83	00		.
	nop			;ae84	00		.
	nop			;ae85	00		.
	nop			;ae86	00		.
	nop			;ae87	00		.
	nop			;ae88	00		.
	nop			;ae89	00		.
	nop			;ae8a	00		.
	nop			;ae8b	00		.
	nop			;ae8c	00		.
	nop			;ae8d	00		.
	nop			;ae8e	00		.
	nop			;ae8f	00		.
	nop			;ae90	00		.
	nop			;ae91	00		.
	nop			;ae92	00		.
	nop			;ae93	00		.
	nop			;ae94	00		.
	nop			;ae95	00		.
	nop			;ae96	00		.
	nop			;ae97	00		.
	nop			;ae98	00		.
	nop			;ae99	00		.
	nop			;ae9a	00		.
	nop			;ae9b	00		.
	nop			;ae9c	00		.
	nop			;ae9d	00		.
	nop			;ae9e	00		.
	nop			;ae9f	00		.
	nop			;aea0	00		.
	nop			;aea1	00		.
	nop			;aea2	00		.
	nop			;aea3	00		.
	nop			;aea4	00		.
	nop			;aea5	00		.
	nop			;aea6	00		.
	nop			;aea7	00		.
	nop			;aea8	00		.
	nop			;aea9	00		.
	nop			;aeaa	00		.
	nop			;aeab	00		.
	nop			;aeac	00		.
	nop			;aead	00		.
	nop			;aeae	00		.
	nop			;aeaf	00		.
	nop			;aeb0	00		.
	nop			;aeb1	00		.
	nop			;aeb2	00		.
	nop			;aeb3	00		.
	nop			;aeb4	00		.
	nop			;aeb5	00		.
	nop			;aeb6	00		.
	nop			;aeb7	00		.
	nop			;aeb8	00		.
	nop			;aeb9	00		.
	nop			;aeba	00		.
	nop			;aebb	00		.
	nop			;aebc	00		.
	nop			;aebd	00		.
	nop			;aebe	00		.
	nop			;aebf	00		.
	nop			;aec0	00		.
	nop			;aec1	00		.
	nop			;aec2	00		.
	nop			;aec3	00		.
	nop			;aec4	00		.
	nop			;aec5	00		.
	nop			;aec6	00		.
	nop			;aec7	00		.
	nop			;aec8	00		.
	nop			;aec9	00		.
	nop			;aeca	00		.
	nop			;aecb	00		.
	nop			;aecc	00		.
	nop			;aecd	00		.
	nop			;aece	00		.
	nop			;aecf	00		.
	nop			;aed0	00		.
	nop			;aed1	00		.
	nop			;aed2	00		.
	nop			;aed3	00		.
	nop			;aed4	00		.
	nop			;aed5	00		.
	nop			;aed6	00		.
	nop			;aed7	00		.
	nop			;aed8	00		.
	nop			;aed9	00		.
	nop			;aeda	00		.
	nop			;aedb	00		.
	nop			;aedc	00		.
	nop			;aedd	00		.
	nop			;aede	00		.
	nop			;aedf	00		.
	nop			;aee0	00		.
	nop			;aee1	00		.
	nop			;aee2	00		.
	nop			;aee3	00		.
	nop			;aee4	00		.
	nop			;aee5	00		.
	nop			;aee6	00		.
	nop			;aee7	00		.
	nop			;aee8	00		.
	nop			;aee9	00		.
	nop			;aeea	00		.
	nop			;aeeb	00		.
	nop			;aeec	00		.
	nop			;aeed	00		.
	nop			;aeee	00		.
	nop			;aeef	00		.
	nop			;aef0	00		.
	nop			;aef1	00		.
	nop			;aef2	00		.
	nop			;aef3	00		.
	nop			;aef4	00		.
	nop			;aef5	00		.
	nop			;aef6	00		.
	nop			;aef7	00		.
	nop			;aef8	00		.
	nop			;aef9	00		.
	nop			;aefa	00		.
	nop			;aefb	00		.
	nop			;aefc	00		.
	nop			;aefd	00		.
	nop			;aefe	00		.
	nop			;aeff	00		.
	nop			;af00	00		.
	nop			;af01	00		.
	nop			;af02	00		.
	nop			;af03	00		.
	nop			;af04	00		.
	nop			;af05	00		.
	nop			;af06	00		.
	nop			;af07	00		.
	nop			;af08	00		.
	nop			;af09	00		.
	nop			;af0a	00		.
	nop			;af0b	00		.
	nop			;af0c	00		.
	nop			;af0d	00		.
	nop			;af0e	00		.
	nop			;af0f	00		.
	nop			;af10	00		.
	nop			;af11	00		.
	nop			;af12	00		.
	nop			;af13	00		.
	nop			;af14	00		.
	nop			;af15	00		.
	nop			;af16	00		.
	nop			;af17	00		.
	nop			;af18	00		.
	nop			;af19	00		.
	nop			;af1a	00		.
	nop			;af1b	00		.
	nop			;af1c	00		.
	nop			;af1d	00		.
	nop			;af1e	00		.
	nop			;af1f	00		.
	nop			;af20	00		.
	nop			;af21	00		.
	nop			;af22	00		.
	nop			;af23	00		.
	nop			;af24	00		.
	nop			;af25	00		.
	nop			;af26	00		.
	nop			;af27	00		.
	nop			;af28	00		.
	nop			;af29	00		.
	nop			;af2a	00		.
	nop			;af2b	00		.
	nop			;af2c	00		.
	nop			;af2d	00		.
	nop			;af2e	00		.
	nop			;af2f	00		.
	nop			;af30	00		.
	nop			;af31	00		.
	nop			;af32	00		.
	nop			;af33	00		.
	nop			;af34	00		.
	nop			;af35	00		.
	nop			;af36	00		.
	nop			;af37	00		.
	nop			;af38	00		.
	nop			;af39	00		.
	nop			;af3a	00		.
	nop			;af3b	00		.
	nop			;af3c	00		.
	nop			;af3d	00		.
	nop			;af3e	00		.
	nop			;af3f	00		.
	nop			;af40	00		.
	nop			;af41	00		.
	nop			;af42	00		.
	nop			;af43	00		.
	nop			;af44	00		.
	nop			;af45	00		.
	nop			;af46	00		.
	nop			;af47	00		.
	nop			;af48	00		.
	nop			;af49	00		.
	nop			;af4a	00		.
	nop			;af4b	00		.
	nop			;af4c	00		.
	nop			;af4d	00		.
	nop			;af4e	00		.
	nop			;af4f	00		.
	nop			;af50	00		.
	nop			;af51	00		.
	nop			;af52	00		.
	nop			;af53	00		.
	nop			;af54	00		.
	nop			;af55	00		.
	nop			;af56	00		.
	nop			;af57	00		.
	nop			;af58	00		.
	nop			;af59	00		.
	nop			;af5a	00		.
	nop			;af5b	00		.
	nop			;af5c	00		.
	nop			;af5d	00		.
	nop			;af5e	00		.
	nop			;af5f	00		.
	nop			;af60	00		.
	nop			;af61	00		.
	nop			;af62	00		.
	nop			;af63	00		.
	nop			;af64	00		.
	nop			;af65	00		.
	nop			;af66	00		.
	nop			;af67	00		.
	nop			;af68	00		.
	nop			;af69	00		.
	nop			;af6a	00		.
	nop			;af6b	00		.
	nop			;af6c	00		.
	nop			;af6d	00		.
	nop			;af6e	00		.
	nop			;af6f	00		.
	nop			;af70	00		.
	nop			;af71	00		.
	nop			;af72	00		.
	nop			;af73	00		.
	nop			;af74	00		.
	nop			;af75	00		.
	nop			;af76	00		.
	nop			;af77	00		.
	nop			;af78	00		.
	nop			;af79	00		.
	nop			;af7a	00		.
	nop			;af7b	00		.
	nop			;af7c	00		.
	nop			;af7d	00		.
	nop			;af7e	00		.
	nop			;af7f	00		.
	nop			;af80	00		.
	nop			;af81	00		.
	nop			;af82	00		.
	nop			;af83	00		.
	nop			;af84	00		.
	nop			;af85	00		.
	nop			;af86	00		.
	nop			;af87	00		.
	nop			;af88	00		.
	nop			;af89	00		.
	nop			;af8a	00		.
	nop			;af8b	00		.
	nop			;af8c	00		.
	nop			;af8d	00		.
	nop			;af8e	00		.
	nop			;af8f	00		.
	nop			;af90	00		.
	nop			;af91	00		.
	nop			;af92	00		.
	nop			;af93	00		.
	nop			;af94	00		.
	nop			;af95	00		.
	nop			;af96	00		.
	nop			;af97	00		.
	nop			;af98	00		.
	nop			;af99	00		.
	nop			;af9a	00		.
	nop			;af9b	00		.
	nop			;af9c	00		.
	nop			;af9d	00		.
	nop			;af9e	00		.
	nop			;af9f	00		.
	nop			;afa0	00		.
	nop			;afa1	00		.
	nop			;afa2	00		.
	nop			;afa3	00		.
	nop			;afa4	00		.
	nop			;afa5	00		.
	nop			;afa6	00		.
	nop			;afa7	00		.
	nop			;afa8	00		.
	nop			;afa9	00		.
	nop			;afaa	00		.
	nop			;afab	00		.
	nop			;afac	00		.
	nop			;afad	00		.
	nop			;afae	00		.
	nop			;afaf	00		.
	nop			;afb0	00		.
	nop			;afb1	00		.
	nop			;afb2	00		.
	nop			;afb3	00		.
	nop			;afb4	00		.
	nop			;afb5	00		.
	nop			;afb6	00		.
	nop			;afb7	00		.
	nop			;afb8	00		.
	nop			;afb9	00		.
	nop			;afba	00		.
	nop			;afbb	00		.
	nop			;afbc	00		.
	nop			;afbd	00		.
	nop			;afbe	00		.
	nop			;afbf	00		.
	nop			;afc0	00		.
	nop			;afc1	00		.
	nop			;afc2	00		.
	nop			;afc3	00		.
	nop			;afc4	00		.
	nop			;afc5	00		.
	nop			;afc6	00		.
	nop			;afc7	00		.
lafc8h:
	nop			;afc8	00		.
	nop			;afc9	00		.
	nop			;afca	00		.
	nop			;afcb	00		.
	nop			;afcc	00		.
	nop			;afcd	00		.
	nop			;afce	00		.
	nop			;afcf	00		.
	nop			;afd0	00		.
	nop			;afd1	00		.
	nop			;afd2	00		.
	nop			;afd3	00		.
	nop			;afd4	00		.
	nop			;afd5	00		.
	nop			;afd6	00		.
	nop			;afd7	00		.
	nop			;afd8	00		.
	nop			;afd9	00		.
	nop			;afda	00		.
	nop			;afdb	00		.
	nop			;afdc	00		.
	nop			;afdd	00		.
	nop			;afde	00		.
	nop			;afdf	00		.
	nop			;afe0	00		.
	nop			;afe1	00		.
	nop			;afe2	00		.
	nop			;afe3	00		.
	nop			;afe4	00		.
	nop			;afe5	00		.
	nop			;afe6	00		.
	nop			;afe7	00		.
	nop			;afe8	00		.
	nop			;afe9	00		.
	nop			;afea	00		.
	nop			;afeb	00		.
	nop			;afec	00		.
	nop			;afed	00		.
	nop			;afee	00		.
	nop			;afef	00		.
	nop			;aff0	00		.
	nop			;aff1	00		.
	nop			;aff2	00		.
	nop			;aff3	00		.
	nop			;aff4	00		.
	nop			;aff5	00		.
	nop			;aff6	00		.
	nop			;aff7	00		.
	nop			;aff8	00		.
	nop			;aff9	00		.
	nop			;affa	00		.
	nop			;affb	00		.
	nop			;affc	00		.
	nop			;affd	00		.
	nop			;affe	00		.
	nop			;afff	00		.
	nop			;b000	00		.
	nop			;b001	00		.
	nop			;b002	00		.
	nop			;b003	00		.
	nop			;b004	00		.
	nop			;b005	00		.
	nop			;b006	00		.
	nop			;b007	00		.
	nop			;b008	00		.
	nop			;b009	00		.
	nop			;b00a	00		.
	nop			;b00b	00		.
	nop			;b00c	00		.
	nop			;b00d	00		.
	nop			;b00e	00		.
	nop			;b00f	00		.
	nop			;b010	00		.
	nop			;b011	00		.
	nop			;b012	00		.
	nop			;b013	00		.
	nop			;b014	00		.
	nop			;b015	00		.
	nop			;b016	00		.
	nop			;b017	00		.
	nop			;b018	00		.
	nop			;b019	00		.
	nop			;b01a	00		.
	nop			;b01b	00		.
	nop			;b01c	00		.
	nop			;b01d	00		.
	nop			;b01e	00		.
	nop			;b01f	00		.
	nop			;b020	00		.
	nop			;b021	00		.
	nop			;b022	00		.
	nop			;b023	00		.
	nop			;b024	00		.
	nop			;b025	00		.
	nop			;b026	00		.
	nop			;b027	00		.
	nop			;b028	00		.
	nop			;b029	00		.
	nop			;b02a	00		.
	nop			;b02b	00		.
	nop			;b02c	00		.
	nop			;b02d	00		.
	nop			;b02e	00		.
	nop			;b02f	00		.
	nop			;b030	00		.
	nop			;b031	00		.
	nop			;b032	00		.
	nop			;b033	00		.
	nop			;b034	00		.
	nop			;b035	00		.
	nop			;b036	00		.
	nop			;b037	00		.
	nop			;b038	00		.
	nop			;b039	00		.
	nop			;b03a	00		.
	nop			;b03b	00		.
	nop			;b03c	00		.
	nop			;b03d	00		.
	nop			;b03e	00		.
lb03fh:
	nop			;b03f	00		.
	nop			;b040	00		.
	nop			;b041	00		.
	nop			;b042	00		.
	nop			;b043	00		.
	nop			;b044	00		.
	nop			;b045	00		.
	nop			;b046	00		.
	nop			;b047	00		.
	nop			;b048	00		.
	nop			;b049	00		.
	nop			;b04a	00		.
	nop			;b04b	00		.
	nop			;b04c	00		.
	nop			;b04d	00		.
	nop			;b04e	00		.
	nop			;b04f	00		.
	nop			;b050	00		.
	nop			;b051	00		.
	nop			;b052	00		.
	nop			;b053	00		.
	nop			;b054	00		.
	nop			;b055	00		.
	nop			;b056	00		.
	nop			;b057	00		.
	nop			;b058	00		.
	nop			;b059	00		.
	nop			;b05a	00		.
	nop			;b05b	00		.
	nop			;b05c	00		.
	nop			;b05d	00		.
	nop			;b05e	00		.
	nop			;b05f	00		.
	nop			;b060	00		.
	nop			;b061	00		.
	nop			;b062	00		.
	nop			;b063	00		.
	nop			;b064	00		.
	nop			;b065	00		.
	nop			;b066	00		.
	nop			;b067	00		.
	nop			;b068	00		.
	nop			;b069	00		.
	nop			;b06a	00		.
	nop			;b06b	00		.
	nop			;b06c	00		.
	nop			;b06d	00		.
	nop			;b06e	00		.
lb06fh:
	nop			;b06f	00		.
	nop			;b070	00		.
	nop			;b071	00		.
	nop			;b072	00		.
	nop			;b073	00		.
	nop			;b074	00		.
	nop			;b075	00		.
	nop			;b076	00		.
	nop			;b077	00		.
	nop			;b078	00		.
	nop			;b079	00		.
	nop			;b07a	00		.
	nop			;b07b	00		.
	nop			;b07c	00		.
	nop			;b07d	00		.
	nop			;b07e	00		.
	nop			;b07f	00		.
	nop			;b080	00		.
	nop			;b081	00		.
	nop			;b082	00		.
	nop			;b083	00		.
	nop			;b084	00		.
	nop			;b085	00		.
	nop			;b086	00		.
	nop			;b087	00		.
	nop			;b088	00		.
	nop			;b089	00		.
	nop			;b08a	00		.
	nop			;b08b	00		.
	nop			;b08c	00		.
	nop			;b08d	00		.
	nop			;b08e	00		.
	nop			;b08f	00		.
	nop			;b090	00		.
	nop			;b091	00		.
	nop			;b092	00		.
	nop			;b093	00		.
	nop			;b094	00		.
	nop			;b095	00		.
	nop			;b096	00		.
	nop			;b097	00		.
	nop			;b098	00		.
	nop			;b099	00		.
	nop			;b09a	00		.
	nop			;b09b	00		.
	nop			;b09c	00		.
	nop			;b09d	00		.
	nop			;b09e	00		.
	nop			;b09f	00		.
	nop			;b0a0	00		.
	nop			;b0a1	00		.
	nop			;b0a2	00		.
	nop			;b0a3	00		.
	nop			;b0a4	00		.
	nop			;b0a5	00		.
	nop			;b0a6	00		.
	nop			;b0a7	00		.
	nop			;b0a8	00		.
	nop			;b0a9	00		.
	nop			;b0aa	00		.
	nop			;b0ab	00		.
	nop			;b0ac	00		.
	nop			;b0ad	00		.
	nop			;b0ae	00		.
	nop			;b0af	00		.
	nop			;b0b0	00		.
	nop			;b0b1	00		.
	nop			;b0b2	00		.
	nop			;b0b3	00		.
	nop			;b0b4	00		.
	nop			;b0b5	00		.
	nop			;b0b6	00		.
	nop			;b0b7	00		.
	nop			;b0b8	00		.
	nop			;b0b9	00		.
	nop			;b0ba	00		.
	nop			;b0bb	00		.
	nop			;b0bc	00		.
	nop			;b0bd	00		.
	nop			;b0be	00		.
	nop			;b0bf	00		.
	nop			;b0c0	00		.
	nop			;b0c1	00		.
	nop			;b0c2	00		.
	nop			;b0c3	00		.
	nop			;b0c4	00		.
	nop			;b0c5	00		.
	nop			;b0c6	00		.
	nop			;b0c7	00		.
	nop			;b0c8	00		.
	nop			;b0c9	00		.
	nop			;b0ca	00		.
	nop			;b0cb	00		.
	nop			;b0cc	00		.
	nop			;b0cd	00		.
	nop			;b0ce	00		.
	nop			;b0cf	00		.
	nop			;b0d0	00		.
	nop			;b0d1	00		.
	nop			;b0d2	00		.
	nop			;b0d3	00		.
	nop			;b0d4	00		.
	nop			;b0d5	00		.
	nop			;b0d6	00		.
	nop			;b0d7	00		.
	nop			;b0d8	00		.
	nop			;b0d9	00		.
	nop			;b0da	00		.
	nop			;b0db	00		.
	nop			;b0dc	00		.
	nop			;b0dd	00		.
	nop			;b0de	00		.
	nop			;b0df	00		.
	nop			;b0e0	00		.
	nop			;b0e1	00		.
	nop			;b0e2	00		.
	nop			;b0e3	00		.
	nop			;b0e4	00		.
	nop			;b0e5	00		.
	nop			;b0e6	00		.
	nop			;b0e7	00		.
	nop			;b0e8	00		.
	nop			;b0e9	00		.
	nop			;b0ea	00		.
	nop			;b0eb	00		.
	nop			;b0ec	00		.
	nop			;b0ed	00		.
	nop			;b0ee	00		.
	nop			;b0ef	00		.
	nop			;b0f0	00		.
	nop			;b0f1	00		.
	nop			;b0f2	00		.
	nop			;b0f3	00		.
	nop			;b0f4	00		.
	nop			;b0f5	00		.
	nop			;b0f6	00		.
	nop			;b0f7	00		.
	nop			;b0f8	00		.
	nop			;b0f9	00		.
	nop			;b0fa	00		.
	nop			;b0fb	00		.
	nop			;b0fc	00		.
	nop			;b0fd	00		.
	nop			;b0fe	00		.
	nop			;b0ff	00		.
	nop			;b100	00		.
	nop			;b101	00		.
	nop			;b102	00		.
	nop			;b103	00		.
	nop			;b104	00		.
	nop			;b105	00		.
	nop			;b106	00		.
	nop			;b107	00		.
	nop			;b108	00		.
	nop			;b109	00		.
	nop			;b10a	00		.
	nop			;b10b	00		.
	nop			;b10c	00		.
	nop			;b10d	00		.
	nop			;b10e	00		.
	nop			;b10f	00		.
	nop			;b110	00		.
	nop			;b111	00		.
	nop			;b112	00		.
	nop			;b113	00		.
	nop			;b114	00		.
	nop			;b115	00		.
	nop			;b116	00		.
	nop			;b117	00		.
	nop			;b118	00		.
	nop			;b119	00		.
	nop			;b11a	00		.
	nop			;b11b	00		.
	nop			;b11c	00		.
	nop			;b11d	00		.
	nop			;b11e	00		.
	nop			;b11f	00		.
	nop			;b120	00		.
	nop			;b121	00		.
	nop			;b122	00		.
	nop			;b123	00		.
	nop			;b124	00		.
	nop			;b125	00		.
	nop			;b126	00		.
	nop			;b127	00		.
	nop			;b128	00		.
	nop			;b129	00		.
	nop			;b12a	00		.
	nop			;b12b	00		.
	nop			;b12c	00		.
	nop			;b12d	00		.
	nop			;b12e	00		.
	nop			;b12f	00		.
	nop			;b130	00		.
	nop			;b131	00		.
	nop			;b132	00		.
	nop			;b133	00		.
	nop			;b134	00		.
	nop			;b135	00		.
	nop			;b136	00		.
	nop			;b137	00		.
	nop			;b138	00		.
	nop			;b139	00		.
	nop			;b13a	00		.
	nop			;b13b	00		.
	nop			;b13c	00		.
	nop			;b13d	00		.
	nop			;b13e	00		.
	nop			;b13f	00		.
	nop			;b140	00		.
	nop			;b141	00		.
	nop			;b142	00		.
	nop			;b143	00		.
	nop			;b144	00		.
	nop			;b145	00		.
	nop			;b146	00		.
	nop			;b147	00		.
	nop			;b148	00		.
	nop			;b149	00		.
	nop			;b14a	00		.
	nop			;b14b	00		.
	nop			;b14c	00		.
	nop			;b14d	00		.
	nop			;b14e	00		.
	nop			;b14f	00		.
	nop			;b150	00		.
	nop			;b151	00		.
	nop			;b152	00		.
	nop			;b153	00		.
	nop			;b154	00		.
	nop			;b155	00		.
	nop			;b156	00		.
	nop			;b157	00		.
	nop			;b158	00		.
	nop			;b159	00		.
	nop			;b15a	00		.
	nop			;b15b	00		.
	nop			;b15c	00		.
	nop			;b15d	00		.
	nop			;b15e	00		.
	nop			;b15f	00		.
	nop			;b160	00		.
	nop			;b161	00		.
	nop			;b162	00		.
	nop			;b163	00		.
	nop			;b164	00		.
	nop			;b165	00		.
	nop			;b166	00		.
	nop			;b167	00		.
	nop			;b168	00		.
	nop			;b169	00		.
	nop			;b16a	00		.
	nop			;b16b	00		.
	nop			;b16c	00		.
	nop			;b16d	00		.
	nop			;b16e	00		.
	nop			;b16f	00		.
	nop			;b170	00		.
	nop			;b171	00		.
	nop			;b172	00		.
	nop			;b173	00		.
	nop			;b174	00		.
	nop			;b175	00		.
	nop			;b176	00		.
	nop			;b177	00		.
	nop			;b178	00		.
	nop			;b179	00		.
	nop			;b17a	00		.
	nop			;b17b	00		.
	nop			;b17c	00		.
	nop			;b17d	00		.
	nop			;b17e	00		.
	nop			;b17f	00		.
	nop			;b180	00		.
	nop			;b181	00		.
	nop			;b182	00		.
	nop			;b183	00		.
	nop			;b184	00		.
	nop			;b185	00		.
	nop			;b186	00		.
	nop			;b187	00		.
	nop			;b188	00		.
	nop			;b189	00		.
	nop			;b18a	00		.
	nop			;b18b	00		.
	nop			;b18c	00		.
	nop			;b18d	00		.
	nop			;b18e	00		.
	nop			;b18f	00		.
	nop			;b190	00		.
	nop			;b191	00		.
	nop			;b192	00		.
	nop			;b193	00		.
	nop			;b194	00		.
	nop			;b195	00		.
	nop			;b196	00		.
	nop			;b197	00		.
	nop			;b198	00		.
	nop			;b199	00		.
	nop			;b19a	00		.
	nop			;b19b	00		.
	nop			;b19c	00		.
	nop			;b19d	00		.
	nop			;b19e	00		.
	nop			;b19f	00		.
	nop			;b1a0	00		.
	nop			;b1a1	00		.
	nop			;b1a2	00		.
	nop			;b1a3	00		.
	nop			;b1a4	00		.
	nop			;b1a5	00		.
	nop			;b1a6	00		.
	nop			;b1a7	00		.
	nop			;b1a8	00		.
	nop			;b1a9	00		.
	nop			;b1aa	00		.
	nop			;b1ab	00		.
	nop			;b1ac	00		.
	nop			;b1ad	00		.
	nop			;b1ae	00		.
	nop			;b1af	00		.
	nop			;b1b0	00		.
	nop			;b1b1	00		.
	nop			;b1b2	00		.
	nop			;b1b3	00		.
	nop			;b1b4	00		.
	nop			;b1b5	00		.
	nop			;b1b6	00		.
	nop			;b1b7	00		.
	nop			;b1b8	00		.
	nop			;b1b9	00		.
	nop			;b1ba	00		.
	nop			;b1bb	00		.
	nop			;b1bc	00		.
	nop			;b1bd	00		.
	nop			;b1be	00		.
	nop			;b1bf	00		.
	nop			;b1c0	00		.
	nop			;b1c1	00		.
	nop			;b1c2	00		.
	nop			;b1c3	00		.
	nop			;b1c4	00		.
	nop			;b1c5	00		.
	nop			;b1c6	00		.
	nop			;b1c7	00		.
	nop			;b1c8	00		.
	nop			;b1c9	00		.
	nop			;b1ca	00		.
	nop			;b1cb	00		.
	nop			;b1cc	00		.
	nop			;b1cd	00		.
	nop			;b1ce	00		.
	nop			;b1cf	00		.
	nop			;b1d0	00		.
	nop			;b1d1	00		.
	nop			;b1d2	00		.
	nop			;b1d3	00		.
	nop			;b1d4	00		.
	nop			;b1d5	00		.
	nop			;b1d6	00		.
	nop			;b1d7	00		.
	nop			;b1d8	00		.
	nop			;b1d9	00		.
	nop			;b1da	00		.
	nop			;b1db	00		.
	nop			;b1dc	00		.
	nop			;b1dd	00		.
	nop			;b1de	00		.
	nop			;b1df	00		.
	nop			;b1e0	00		.
	nop			;b1e1	00		.
	nop			;b1e2	00		.
	nop			;b1e3	00		.
	nop			;b1e4	00		.
	nop			;b1e5	00		.
	nop			;b1e6	00		.
	nop			;b1e7	00		.
	nop			;b1e8	00		.
	nop			;b1e9	00		.
	nop			;b1ea	00		.
	nop			;b1eb	00		.
	nop			;b1ec	00		.
	nop			;b1ed	00		.
	nop			;b1ee	00		.
	nop			;b1ef	00		.
	nop			;b1f0	00		.
	nop			;b1f1	00		.
	nop			;b1f2	00		.
	nop			;b1f3	00		.
	nop			;b1f4	00		.
	nop			;b1f5	00		.
	nop			;b1f6	00		.
	nop			;b1f7	00		.
	nop			;b1f8	00		.
	nop			;b1f9	00		.
	nop			;b1fa	00		.
	nop			;b1fb	00		.
	nop			;b1fc	00		.
	nop			;b1fd	00		.
	nop			;b1fe	00		.
	nop			;b1ff	00		.
	nop			;b200	00		.
	nop			;b201	00		.
	nop			;b202	00		.
	nop			;b203	00		.
	nop			;b204	00		.
	nop			;b205	00		.
	nop			;b206	00		.
	nop			;b207	00		.
	nop			;b208	00		.
	nop			;b209	00		.
	nop			;b20a	00		.
	nop			;b20b	00		.
	nop			;b20c	00		.
	nop			;b20d	00		.
	nop			;b20e	00		.
	nop			;b20f	00		.
	nop			;b210	00		.
	nop			;b211	00		.
	nop			;b212	00		.
	nop			;b213	00		.
	nop			;b214	00		.
	nop			;b215	00		.
	nop			;b216	00		.
	nop			;b217	00		.
	nop			;b218	00		.
	nop			;b219	00		.
	nop			;b21a	00		.
	nop			;b21b	00		.
	nop			;b21c	00		.
	nop			;b21d	00		.
	nop			;b21e	00		.
	nop			;b21f	00		.
	nop			;b220	00		.
	nop			;b221	00		.
	nop			;b222	00		.
	nop			;b223	00		.
	nop			;b224	00		.
	nop			;b225	00		.
	nop			;b226	00		.
	nop			;b227	00		.
	nop			;b228	00		.
	nop			;b229	00		.
	nop			;b22a	00		.
	nop			;b22b	00		.
	nop			;b22c	00		.
	nop			;b22d	00		.
	nop			;b22e	00		.
	nop			;b22f	00		.
	nop			;b230	00		.
	nop			;b231	00		.
	nop			;b232	00		.
	nop			;b233	00		.
	nop			;b234	00		.
	nop			;b235	00		.
	nop			;b236	00		.
	nop			;b237	00		.
	nop			;b238	00		.
	nop			;b239	00		.
	nop			;b23a	00		.
	nop			;b23b	00		.
	nop			;b23c	00		.
	nop			;b23d	00		.
	nop			;b23e	00		.
	nop			;b23f	00		.
	nop			;b240	00		.
	nop			;b241	00		.
	nop			;b242	00		.
	nop			;b243	00		.
	nop			;b244	00		.
	nop			;b245	00		.
	nop			;b246	00		.
	nop			;b247	00		.
	nop			;b248	00		.
	nop			;b249	00		.
	nop			;b24a	00		.
	nop			;b24b	00		.
	nop			;b24c	00		.
	nop			;b24d	00		.
	nop			;b24e	00		.
	nop			;b24f	00		.
	nop			;b250	00		.
	nop			;b251	00		.
	nop			;b252	00		.
	nop			;b253	00		.
	nop			;b254	00		.
	nop			;b255	00		.
	nop			;b256	00		.
	nop			;b257	00		.
	nop			;b258	00		.
	nop			;b259	00		.
	nop			;b25a	00		.
	nop			;b25b	00		.
	nop			;b25c	00		.
	nop			;b25d	00		.
	nop			;b25e	00		.
	nop			;b25f	00		.
	nop			;b260	00		.
	nop			;b261	00		.
	nop			;b262	00		.
	nop			;b263	00		.
	nop			;b264	00		.
	nop			;b265	00		.
	nop			;b266	00		.
	nop			;b267	00		.
	nop			;b268	00		.
	nop			;b269	00		.
	nop			;b26a	00		.
	nop			;b26b	00		.
	nop			;b26c	00		.
	nop			;b26d	00		.
	nop			;b26e	00		.
	nop			;b26f	00		.
	nop			;b270	00		.
	nop			;b271	00		.
	nop			;b272	00		.
	nop			;b273	00		.
	nop			;b274	00		.
	nop			;b275	00		.
	nop			;b276	00		.
	nop			;b277	00		.
	nop			;b278	00		.
	nop			;b279	00		.
	nop			;b27a	00		.
	nop			;b27b	00		.
	nop			;b27c	00		.
	nop			;b27d	00		.
	nop			;b27e	00		.
	nop			;b27f	00		.
	nop			;b280	00		.
	nop			;b281	00		.
	nop			;b282	00		.
	nop			;b283	00		.
	nop			;b284	00		.
	nop			;b285	00		.
	nop			;b286	00		.
	nop			;b287	00		.
	nop			;b288	00		.
	nop			;b289	00		.
	nop			;b28a	00		.
	nop			;b28b	00		.
	nop			;b28c	00		.
	nop			;b28d	00		.
	nop			;b28e	00		.
	nop			;b28f	00		.
	nop			;b290	00		.
	nop			;b291	00		.
	nop			;b292	00		.
	nop			;b293	00		.
	nop			;b294	00		.
	nop			;b295	00		.
	nop			;b296	00		.
	nop			;b297	00		.
	nop			;b298	00		.
	nop			;b299	00		.
	nop			;b29a	00		.
	nop			;b29b	00		.
	nop			;b29c	00		.
	nop			;b29d	00		.
	nop			;b29e	00		.
	nop			;b29f	00		.
	nop			;b2a0	00		.
	nop			;b2a1	00		.
	nop			;b2a2	00		.
	nop			;b2a3	00		.
	nop			;b2a4	00		.
	nop			;b2a5	00		.
	nop			;b2a6	00		.
	nop			;b2a7	00		.
	nop			;b2a8	00		.
	nop			;b2a9	00		.
	nop			;b2aa	00		.
	nop			;b2ab	00		.
	nop			;b2ac	00		.
	nop			;b2ad	00		.
	nop			;b2ae	00		.
	nop			;b2af	00		.
	nop			;b2b0	00		.
	nop			;b2b1	00		.
	nop			;b2b2	00		.
	nop			;b2b3	00		.
	nop			;b2b4	00		.
	nop			;b2b5	00		.
	nop			;b2b6	00		.
	nop			;b2b7	00		.
	nop			;b2b8	00		.
	nop			;b2b9	00		.
	nop			;b2ba	00		.
	nop			;b2bb	00		.
	nop			;b2bc	00		.
	nop			;b2bd	00		.
	nop			;b2be	00		.
	nop			;b2bf	00		.
	nop			;b2c0	00		.
	nop			;b2c1	00		.
	nop			;b2c2	00		.
	nop			;b2c3	00		.
	nop			;b2c4	00		.
	nop			;b2c5	00		.
	nop			;b2c6	00		.
	nop			;b2c7	00		.
	nop			;b2c8	00		.
	nop			;b2c9	00		.
	nop			;b2ca	00		.
	nop			;b2cb	00		.
	nop			;b2cc	00		.
	nop			;b2cd	00		.
	nop			;b2ce	00		.
	nop			;b2cf	00		.
	nop			;b2d0	00		.
	nop			;b2d1	00		.
	nop			;b2d2	00		.
	nop			;b2d3	00		.
	nop			;b2d4	00		.
	nop			;b2d5	00		.
	nop			;b2d6	00		.
	nop			;b2d7	00		.
	nop			;b2d8	00		.
	nop			;b2d9	00		.
	nop			;b2da	00		.
	nop			;b2db	00		.
	nop			;b2dc	00		.
	nop			;b2dd	00		.
	nop			;b2de	00		.
	nop			;b2df	00		.
	nop			;b2e0	00		.
	nop			;b2e1	00		.
	nop			;b2e2	00		.
	nop			;b2e3	00		.
	nop			;b2e4	00		.
	nop			;b2e5	00		.
	nop			;b2e6	00		.
	nop			;b2e7	00		.
	nop			;b2e8	00		.
	nop			;b2e9	00		.
	nop			;b2ea	00		.
	nop			;b2eb	00		.
	nop			;b2ec	00		.
	nop			;b2ed	00		.
	nop			;b2ee	00		.
	nop			;b2ef	00		.
	nop			;b2f0	00		.
	nop			;b2f1	00		.
	nop			;b2f2	00		.
	nop			;b2f3	00		.
	nop			;b2f4	00		.
	nop			;b2f5	00		.
	nop			;b2f6	00		.
	nop			;b2f7	00		.
	nop			;b2f8	00		.
	nop			;b2f9	00		.
	nop			;b2fa	00		.
	nop			;b2fb	00		.
	nop			;b2fc	00		.
	nop			;b2fd	00		.
	nop			;b2fe	00		.
	nop			;b2ff	00		.
	nop			;b300	00		.
	nop			;b301	00		.
	nop			;b302	00		.
	nop			;b303	00		.
	nop			;b304	00		.
	nop			;b305	00		.
	nop			;b306	00		.
	nop			;b307	00		.
	nop			;b308	00		.
	nop			;b309	00		.
	nop			;b30a	00		.
	nop			;b30b	00		.
	nop			;b30c	00		.
	nop			;b30d	00		.
	nop			;b30e	00		.
	nop			;b30f	00		.
	nop			;b310	00		.
	nop			;b311	00		.
	nop			;b312	00		.
	nop			;b313	00		.
	nop			;b314	00		.
	nop			;b315	00		.
	nop			;b316	00		.
	nop			;b317	00		.
	nop			;b318	00		.
	nop			;b319	00		.
	nop			;b31a	00		.
	nop			;b31b	00		.
	nop			;b31c	00		.
	nop			;b31d	00		.
	nop			;b31e	00		.
	nop			;b31f	00		.
	nop			;b320	00		.
	nop			;b321	00		.
	nop			;b322	00		.
	nop			;b323	00		.
	nop			;b324	00		.
	nop			;b325	00		.
	nop			;b326	00		.
	nop			;b327	00		.
	nop			;b328	00		.
	nop			;b329	00		.
	nop			;b32a	00		.
	nop			;b32b	00		.
	nop			;b32c	00		.
	nop			;b32d	00		.
	nop			;b32e	00		.
	nop			;b32f	00		.
	nop			;b330	00		.
	nop			;b331	00		.
	nop			;b332	00		.
	nop			;b333	00		.
	nop			;b334	00		.
	nop			;b335	00		.
	nop			;b336	00		.
	nop			;b337	00		.
	nop			;b338	00		.
	nop			;b339	00		.
	nop			;b33a	00		.
	nop			;b33b	00		.
	nop			;b33c	00		.
	nop			;b33d	00		.
	nop			;b33e	00		.
	nop			;b33f	00		.
	nop			;b340	00		.
	nop			;b341	00		.
	nop			;b342	00		.
	nop			;b343	00		.
	nop			;b344	00		.
	nop			;b345	00		.
	nop			;b346	00		.
	nop			;b347	00		.
	nop			;b348	00		.
	nop			;b349	00		.
	nop			;b34a	00		.
	nop			;b34b	00		.
	nop			;b34c	00		.
	nop			;b34d	00		.
	nop			;b34e	00		.
	nop			;b34f	00		.
	nop			;b350	00		.
	nop			;b351	00		.
	nop			;b352	00		.
	nop			;b353	00		.
	nop			;b354	00		.
	nop			;b355	00		.
	nop			;b356	00		.
	nop			;b357	00		.
	nop			;b358	00		.
	nop			;b359	00		.
	nop			;b35a	00		.
	nop			;b35b	00		.
	nop			;b35c	00		.
	nop			;b35d	00		.
	nop			;b35e	00		.
	nop			;b35f	00		.
	nop			;b360	00		.
	nop			;b361	00		.
	nop			;b362	00		.
	nop			;b363	00		.
	nop			;b364	00		.
	nop			;b365	00		.
	nop			;b366	00		.
	nop			;b367	00		.
	nop			;b368	00		.
	nop			;b369	00		.
	nop			;b36a	00		.
	nop			;b36b	00		.
	nop			;b36c	00		.
	nop			;b36d	00		.
	nop			;b36e	00		.
	nop			;b36f	00		.
	nop			;b370	00		.
	nop			;b371	00		.
	nop			;b372	00		.
	nop			;b373	00		.
	nop			;b374	00		.
	nop			;b375	00		.
	nop			;b376	00		.
	nop			;b377	00		.
	nop			;b378	00		.
	nop			;b379	00		.
	nop			;b37a	00		.
	nop			;b37b	00		.
	nop			;b37c	00		.
	nop			;b37d	00		.
	nop			;b37e	00		.
	nop			;b37f	00		.
	nop			;b380	00		.
	nop			;b381	00		.
	nop			;b382	00		.
	nop			;b383	00		.
	nop			;b384	00		.
	nop			;b385	00		.
	nop			;b386	00		.
	nop			;b387	00		.
	nop			;b388	00		.
	nop			;b389	00		.
	nop			;b38a	00		.
	nop			;b38b	00		.
	nop			;b38c	00		.
	nop			;b38d	00		.
	nop			;b38e	00		.
	nop			;b38f	00		.
	nop			;b390	00		.
	nop			;b391	00		.
	nop			;b392	00		.
	nop			;b393	00		.
	nop			;b394	00		.
	nop			;b395	00		.
	nop			;b396	00		.
	nop			;b397	00		.
	nop			;b398	00		.
	nop			;b399	00		.
	nop			;b39a	00		.
	nop			;b39b	00		.
	nop			;b39c	00		.
	nop			;b39d	00		.
	nop			;b39e	00		.
	nop			;b39f	00		.
	nop			;b3a0	00		.
	nop			;b3a1	00		.
	nop			;b3a2	00		.
	nop			;b3a3	00		.
	nop			;b3a4	00		.
	nop			;b3a5	00		.
	nop			;b3a6	00		.
	nop			;b3a7	00		.
	nop			;b3a8	00		.
	nop			;b3a9	00		.
	nop			;b3aa	00		.
	nop			;b3ab	00		.
	nop			;b3ac	00		.
	nop			;b3ad	00		.
	nop			;b3ae	00		.
	nop			;b3af	00		.
	nop			;b3b0	00		.
	nop			;b3b1	00		.
	nop			;b3b2	00		.
	nop			;b3b3	00		.
	nop			;b3b4	00		.
	nop			;b3b5	00		.
	nop			;b3b6	00		.
	nop			;b3b7	00		.
	nop			;b3b8	00		.
	nop			;b3b9	00		.
	nop			;b3ba	00		.
	nop			;b3bb	00		.
	nop			;b3bc	00		.
	nop			;b3bd	00		.
	nop			;b3be	00		.
	nop			;b3bf	00		.
	nop			;b3c0	00		.
	nop			;b3c1	00		.
	nop			;b3c2	00		.
	nop			;b3c3	00		.
	nop			;b3c4	00		.
	nop			;b3c5	00		.
	nop			;b3c6	00		.
	nop			;b3c7	00		.
	nop			;b3c8	00		.
	nop			;b3c9	00		.
	nop			;b3ca	00		.
	nop			;b3cb	00		.
	nop			;b3cc	00		.
	nop			;b3cd	00		.
	nop			;b3ce	00		.
	nop			;b3cf	00		.
	nop			;b3d0	00		.
	nop			;b3d1	00		.
	nop			;b3d2	00		.
	nop			;b3d3	00		.
	nop			;b3d4	00		.
	nop			;b3d5	00		.
	nop			;b3d6	00		.
	nop			;b3d7	00		.
	nop			;b3d8	00		.
	nop			;b3d9	00		.
	nop			;b3da	00		.
	nop			;b3db	00		.
	nop			;b3dc	00		.
	nop			;b3dd	00		.
	nop			;b3de	00		.
	nop			;b3df	00		.
	nop			;b3e0	00		.
	nop			;b3e1	00		.
	nop			;b3e2	00		.
	nop			;b3e3	00		.
	nop			;b3e4	00		.
	nop			;b3e5	00		.
	nop			;b3e6	00		.
	nop			;b3e7	00		.
	nop			;b3e8	00		.
	nop			;b3e9	00		.
	nop			;b3ea	00		.
	nop			;b3eb	00		.
	nop			;b3ec	00		.
	nop			;b3ed	00		.
	nop			;b3ee	00		.
	nop			;b3ef	00		.
	nop			;b3f0	00		.
	nop			;b3f1	00		.
	nop			;b3f2	00		.
	nop			;b3f3	00		.
	nop			;b3f4	00		.
	nop			;b3f5	00		.
	nop			;b3f6	00		.
	nop			;b3f7	00		.
	nop			;b3f8	00		.
	nop			;b3f9	00		.
	nop			;b3fa	00		.
	nop			;b3fb	00		.
	nop			;b3fc	00		.
	nop			;b3fd	00		.
	nop			;b3fe	00		.
	nop			;b3ff	00		.
	nop			;b400	00		.
	nop			;b401	00		.
	nop			;b402	00		.
	nop			;b403	00		.
	nop			;b404	00		.
	nop			;b405	00		.
	nop			;b406	00		.
	nop			;b407	00		.
	nop			;b408	00		.
	nop			;b409	00		.
	nop			;b40a	00		.
	nop			;b40b	00		.
	nop			;b40c	00		.
	nop			;b40d	00		.
	nop			;b40e	00		.
	nop			;b40f	00		.
	nop			;b410	00		.
	nop			;b411	00		.
	nop			;b412	00		.
	nop			;b413	00		.
	nop			;b414	00		.
	nop			;b415	00		.
	nop			;b416	00		.
	nop			;b417	00		.
	nop			;b418	00		.
	nop			;b419	00		.
	nop			;b41a	00		.
	nop			;b41b	00		.
	nop			;b41c	00		.
	nop			;b41d	00		.
	nop			;b41e	00		.
	nop			;b41f	00		.
	nop			;b420	00		.
	nop			;b421	00		.
	nop			;b422	00		.
	nop			;b423	00		.
	nop			;b424	00		.
	nop			;b425	00		.
	nop			;b426	00		.
	nop			;b427	00		.
	nop			;b428	00		.
	nop			;b429	00		.
	nop			;b42a	00		.
	nop			;b42b	00		.
	nop			;b42c	00		.
	nop			;b42d	00		.
	nop			;b42e	00		.
	nop			;b42f	00		.
	nop			;b430	00		.
	nop			;b431	00		.
	nop			;b432	00		.
	nop			;b433	00		.
	nop			;b434	00		.
	nop			;b435	00		.
	nop			;b436	00		.
	nop			;b437	00		.
	nop			;b438	00		.
	nop			;b439	00		.
	nop			;b43a	00		.
	nop			;b43b	00		.
	nop			;b43c	00		.
	nop			;b43d	00		.
	nop			;b43e	00		.
	nop			;b43f	00		.
	nop			;b440	00		.
	nop			;b441	00		.
	nop			;b442	00		.
	nop			;b443	00		.
	nop			;b444	00		.
	nop			;b445	00		.
	nop			;b446	00		.
	nop			;b447	00		.
	nop			;b448	00		.
	nop			;b449	00		.
	nop			;b44a	00		.
	nop			;b44b	00		.
	nop			;b44c	00		.
	nop			;b44d	00		.
	nop			;b44e	00		.
	nop			;b44f	00		.
	nop			;b450	00		.
	nop			;b451	00		.
	nop			;b452	00		.
	nop			;b453	00		.
	nop			;b454	00		.
	nop			;b455	00		.
	nop			;b456	00		.
	nop			;b457	00		.
	nop			;b458	00		.
	nop			;b459	00		.
	nop			;b45a	00		.
	nop			;b45b	00		.
	nop			;b45c	00		.
	nop			;b45d	00		.
	nop			;b45e	00		.
	nop			;b45f	00		.
	nop			;b460	00		.
	nop			;b461	00		.
	nop			;b462	00		.
	nop			;b463	00		.
	nop			;b464	00		.
	nop			;b465	00		.
	nop			;b466	00		.
	nop			;b467	00		.
	nop			;b468	00		.
	nop			;b469	00		.
	nop			;b46a	00		.
	nop			;b46b	00		.
	nop			;b46c	00		.
	nop			;b46d	00		.
	nop			;b46e	00		.
	nop			;b46f	00		.
	nop			;b470	00		.
	nop			;b471	00		.
	nop			;b472	00		.
	nop			;b473	00		.
	nop			;b474	00		.
	nop			;b475	00		.
	nop			;b476	00		.
	nop			;b477	00		.
	nop			;b478	00		.
	nop			;b479	00		.
	nop			;b47a	00		.
	nop			;b47b	00		.
	nop			;b47c	00		.
	nop			;b47d	00		.
	nop			;b47e	00		.
	nop			;b47f	00		.
	nop			;b480	00		.
	nop			;b481	00		.
	nop			;b482	00		.
	nop			;b483	00		.
	nop			;b484	00		.
	nop			;b485	00		.
	nop			;b486	00		.
	nop			;b487	00		.
	nop			;b488	00		.
	nop			;b489	00		.
	nop			;b48a	00		.
	nop			;b48b	00		.
	nop			;b48c	00		.
	nop			;b48d	00		.
	nop			;b48e	00		.
	nop			;b48f	00		.
	nop			;b490	00		.
	nop			;b491	00		.
	nop			;b492	00		.
	nop			;b493	00		.
	nop			;b494	00		.
	nop			;b495	00		.
	nop			;b496	00		.
	nop			;b497	00		.
	nop			;b498	00		.
	nop			;b499	00		.
	nop			;b49a	00		.
	nop			;b49b	00		.
	nop			;b49c	00		.
	nop			;b49d	00		.
	nop			;b49e	00		.
	nop			;b49f	00		.
	nop			;b4a0	00		.
	nop			;b4a1	00		.
	nop			;b4a2	00		.
	nop			;b4a3	00		.
	nop			;b4a4	00		.
	nop			;b4a5	00		.
	nop			;b4a6	00		.
	nop			;b4a7	00		.
	nop			;b4a8	00		.
	nop			;b4a9	00		.
	nop			;b4aa	00		.
	nop			;b4ab	00		.
	nop			;b4ac	00		.
	nop			;b4ad	00		.
	nop			;b4ae	00		.
	nop			;b4af	00		.
	nop			;b4b0	00		.
	nop			;b4b1	00		.
	nop			;b4b2	00		.
	nop			;b4b3	00		.
	nop			;b4b4	00		.
	nop			;b4b5	00		.
	nop			;b4b6	00		.
	nop			;b4b7	00		.
	nop			;b4b8	00		.
	nop			;b4b9	00		.
	nop			;b4ba	00		.
	nop			;b4bb	00		.
	nop			;b4bc	00		.
	nop			;b4bd	00		.
	nop			;b4be	00		.
	nop			;b4bf	00		.
	nop			;b4c0	00		.
	nop			;b4c1	00		.
	nop			;b4c2	00		.
	nop			;b4c3	00		.
	nop			;b4c4	00		.
	nop			;b4c5	00		.
	nop			;b4c6	00		.
	nop			;b4c7	00		.
	nop			;b4c8	00		.
	nop			;b4c9	00		.
	nop			;b4ca	00		.
	nop			;b4cb	00		.
	nop			;b4cc	00		.
	nop			;b4cd	00		.
	nop			;b4ce	00		.
	nop			;b4cf	00		.
	nop			;b4d0	00		.
	nop			;b4d1	00		.
	nop			;b4d2	00		.
	nop			;b4d3	00		.
	nop			;b4d4	00		.
	nop			;b4d5	00		.
	nop			;b4d6	00		.
	nop			;b4d7	00		.
	nop			;b4d8	00		.
	nop			;b4d9	00		.
	nop			;b4da	00		.
	nop			;b4db	00		.
	nop			;b4dc	00		.
	nop			;b4dd	00		.
	nop			;b4de	00		.
	nop			;b4df	00		.
	nop			;b4e0	00		.
	nop			;b4e1	00		.
	nop			;b4e2	00		.
	nop			;b4e3	00		.
	nop			;b4e4	00		.
	nop			;b4e5	00		.
	nop			;b4e6	00		.
	nop			;b4e7	00		.
	nop			;b4e8	00		.
	nop			;b4e9	00		.
	nop			;b4ea	00		.
	nop			;b4eb	00		.
	nop			;b4ec	00		.
	nop			;b4ed	00		.
	nop			;b4ee	00		.
	nop			;b4ef	00		.
	nop			;b4f0	00		.
	nop			;b4f1	00		.
	nop			;b4f2	00		.
	nop			;b4f3	00		.
	nop			;b4f4	00		.
	nop			;b4f5	00		.
	nop			;b4f6	00		.
	nop			;b4f7	00		.
	nop			;b4f8	00		.
	nop			;b4f9	00		.
	nop			;b4fa	00		.
	nop			;b4fb	00		.
	nop			;b4fc	00		.
	nop			;b4fd	00		.
	nop			;b4fe	00		.
	nop			;b4ff	00		.
	nop			;b500	00		.
	nop			;b501	00		.
	nop			;b502	00		.
	nop			;b503	00		.
	nop			;b504	00		.
	nop			;b505	00		.
	nop			;b506	00		.
	nop			;b507	00		.
	nop			;b508	00		.
	nop			;b509	00		.
	nop			;b50a	00		.
	nop			;b50b	00		.
	nop			;b50c	00		.
	nop			;b50d	00		.
	nop			;b50e	00		.
	nop			;b50f	00		.
	nop			;b510	00		.
	nop			;b511	00		.
	nop			;b512	00		.
	nop			;b513	00		.
	nop			;b514	00		.
	nop			;b515	00		.
	nop			;b516	00		.
	nop			;b517	00		.
	nop			;b518	00		.
	nop			;b519	00		.
	nop			;b51a	00		.
	nop			;b51b	00		.
	nop			;b51c	00		.
	nop			;b51d	00		.
	nop			;b51e	00		.
	nop			;b51f	00		.
	nop			;b520	00		.
	nop			;b521	00		.
	nop			;b522	00		.
	nop			;b523	00		.
	nop			;b524	00		.
	nop			;b525	00		.
	nop			;b526	00		.
	nop			;b527	00		.
	nop			;b528	00		.
	nop			;b529	00		.
	nop			;b52a	00		.
	nop			;b52b	00		.
	nop			;b52c	00		.
	nop			;b52d	00		.
	nop			;b52e	00		.
	nop			;b52f	00		.
	nop			;b530	00		.
	nop			;b531	00		.
	nop			;b532	00		.
	nop			;b533	00		.
	nop			;b534	00		.
	nop			;b535	00		.
	nop			;b536	00		.
	nop			;b537	00		.
	nop			;b538	00		.
	nop			;b539	00		.
	nop			;b53a	00		.
	nop			;b53b	00		.
	nop			;b53c	00		.
	nop			;b53d	00		.
	nop			;b53e	00		.
	nop			;b53f	00		.
	nop			;b540	00		.
	nop			;b541	00		.
	nop			;b542	00		.
	nop			;b543	00		.
	nop			;b544	00		.
	nop			;b545	00		.
	nop			;b546	00		.
	nop			;b547	00		.
	nop			;b548	00		.
	nop			;b549	00		.
	nop			;b54a	00		.
	nop			;b54b	00		.
	nop			;b54c	00		.
	nop			;b54d	00		.
	nop			;b54e	00		.
	nop			;b54f	00		.
	nop			;b550	00		.
	nop			;b551	00		.
	nop			;b552	00		.
	nop			;b553	00		.
	nop			;b554	00		.
	nop			;b555	00		.
	nop			;b556	00		.
	nop			;b557	00		.
	nop			;b558	00		.
	nop			;b559	00		.
	nop			;b55a	00		.
	nop			;b55b	00		.
	nop			;b55c	00		.
	nop			;b55d	00		.
	nop			;b55e	00		.
	nop			;b55f	00		.
	nop			;b560	00		.
	nop			;b561	00		.
	nop			;b562	00		.
	nop			;b563	00		.
	nop			;b564	00		.
	nop			;b565	00		.
	nop			;b566	00		.
	nop			;b567	00		.
	nop			;b568	00		.
	nop			;b569	00		.
	nop			;b56a	00		.
	nop			;b56b	00		.
	nop			;b56c	00		.
	nop			;b56d	00		.
	nop			;b56e	00		.
	nop			;b56f	00		.
	nop			;b570	00		.
	nop			;b571	00		.
	nop			;b572	00		.
	nop			;b573	00		.
	nop			;b574	00		.
	nop			;b575	00		.
	nop			;b576	00		.
	nop			;b577	00		.
	nop			;b578	00		.
	nop			;b579	00		.
	nop			;b57a	00		.
	nop			;b57b	00		.
	nop			;b57c	00		.
	nop			;b57d	00		.
	nop			;b57e	00		.
	nop			;b57f	00		.
	nop			;b580	00		.
	nop			;b581	00		.
	nop			;b582	00		.
	nop			;b583	00		.
	nop			;b584	00		.
	nop			;b585	00		.
	nop			;b586	00		.
	nop			;b587	00		.
	nop			;b588	00		.
	nop			;b589	00		.
	nop			;b58a	00		.
	nop			;b58b	00		.
	nop			;b58c	00		.
	nop			;b58d	00		.
	nop			;b58e	00		.
	nop			;b58f	00		.
	nop			;b590	00		.
	nop			;b591	00		.
	nop			;b592	00		.
	nop			;b593	00		.
	nop			;b594	00		.
	nop			;b595	00		.
	nop			;b596	00		.
	nop			;b597	00		.
	nop			;b598	00		.
	nop			;b599	00		.
	nop			;b59a	00		.
	nop			;b59b	00		.
	nop			;b59c	00		.
	nop			;b59d	00		.
	nop			;b59e	00		.
	nop			;b59f	00		.
	nop			;b5a0	00		.
	nop			;b5a1	00		.
	nop			;b5a2	00		.
	nop			;b5a3	00		.
	nop			;b5a4	00		.
	nop			;b5a5	00		.
	nop			;b5a6	00		.
	nop			;b5a7	00		.
	nop			;b5a8	00		.
	nop			;b5a9	00		.
	nop			;b5aa	00		.
	nop			;b5ab	00		.
	nop			;b5ac	00		.
	nop			;b5ad	00		.
	nop			;b5ae	00		.
	nop			;b5af	00		.
	nop			;b5b0	00		.
	nop			;b5b1	00		.
	nop			;b5b2	00		.
	nop			;b5b3	00		.
	nop			;b5b4	00		.
	nop			;b5b5	00		.
	nop			;b5b6	00		.
	nop			;b5b7	00		.
	nop			;b5b8	00		.
	nop			;b5b9	00		.
	nop			;b5ba	00		.
	nop			;b5bb	00		.
	nop			;b5bc	00		.
	nop			;b5bd	00		.
	nop			;b5be	00		.
	nop			;b5bf	00		.
	nop			;b5c0	00		.
	nop			;b5c1	00		.
	nop			;b5c2	00		.
	nop			;b5c3	00		.
	nop			;b5c4	00		.
	nop			;b5c5	00		.
	nop			;b5c6	00		.
	nop			;b5c7	00		.
	nop			;b5c8	00		.
	nop			;b5c9	00		.
	nop			;b5ca	00		.
	nop			;b5cb	00		.
	nop			;b5cc	00		.
	nop			;b5cd	00		.
	nop			;b5ce	00		.
	nop			;b5cf	00		.
	nop			;b5d0	00		.
	nop			;b5d1	00		.
	nop			;b5d2	00		.
	nop			;b5d3	00		.
	nop			;b5d4	00		.
	nop			;b5d5	00		.
	nop			;b5d6	00		.
	nop			;b5d7	00		.
	nop			;b5d8	00		.
	nop			;b5d9	00		.
	nop			;b5da	00		.
	nop			;b5db	00		.
	nop			;b5dc	00		.
	nop			;b5dd	00		.
	nop			;b5de	00		.
	nop			;b5df	00		.
	nop			;b5e0	00		.
	nop			;b5e1	00		.
	nop			;b5e2	00		.
	nop			;b5e3	00		.
	nop			;b5e4	00		.
	nop			;b5e5	00		.
	nop			;b5e6	00		.
	nop			;b5e7	00		.
	nop			;b5e8	00		.
	nop			;b5e9	00		.
	nop			;b5ea	00		.
	nop			;b5eb	00		.
	nop			;b5ec	00		.
	nop			;b5ed	00		.
	nop			;b5ee	00		.
	nop			;b5ef	00		.
	nop			;b5f0	00		.
	nop			;b5f1	00		.
	nop			;b5f2	00		.
	nop			;b5f3	00		.
	nop			;b5f4	00		.
	nop			;b5f5	00		.
	nop			;b5f6	00		.
	nop			;b5f7	00		.
	nop			;b5f8	00		.
	nop			;b5f9	00		.
	nop			;b5fa	00		.
	nop			;b5fb	00		.
	nop			;b5fc	00		.
	nop			;b5fd	00		.
	nop			;b5fe	00		.
	nop			;b5ff	00		.
	nop			;b600	00		.
	nop			;b601	00		.
	nop			;b602	00		.
	nop			;b603	00		.
	nop			;b604	00		.
	nop			;b605	00		.
	nop			;b606	00		.
	nop			;b607	00		.
	nop			;b608	00		.
	nop			;b609	00		.
	nop			;b60a	00		.
	nop			;b60b	00		.
	nop			;b60c	00		.
	nop			;b60d	00		.
	nop			;b60e	00		.
	nop			;b60f	00		.
	nop			;b610	00		.
	nop			;b611	00		.
	nop			;b612	00		.
	nop			;b613	00		.
	nop			;b614	00		.
	nop			;b615	00		.
	nop			;b616	00		.
	nop			;b617	00		.
	nop			;b618	00		.
	nop			;b619	00		.
	nop			;b61a	00		.
	nop			;b61b	00		.
	nop			;b61c	00		.
	nop			;b61d	00		.
	nop			;b61e	00		.
	nop			;b61f	00		.
	nop			;b620	00		.
	nop			;b621	00		.
	nop			;b622	00		.
	nop			;b623	00		.
	nop			;b624	00		.
	nop			;b625	00		.
	nop			;b626	00		.
	nop			;b627	00		.
	nop			;b628	00		.
	nop			;b629	00		.
	nop			;b62a	00		.
	nop			;b62b	00		.
	nop			;b62c	00		.
	nop			;b62d	00		.
	nop			;b62e	00		.
	nop			;b62f	00		.
	nop			;b630	00		.
	nop			;b631	00		.
	nop			;b632	00		.
	nop			;b633	00		.
	nop			;b634	00		.
	nop			;b635	00		.
	nop			;b636	00		.
	nop			;b637	00		.
	nop			;b638	00		.
	nop			;b639	00		.
	nop			;b63a	00		.
	nop			;b63b	00		.
	nop			;b63c	00		.
	nop			;b63d	00		.
	nop			;b63e	00		.
	nop			;b63f	00		.
	nop			;b640	00		.
	nop			;b641	00		.
	nop			;b642	00		.
	nop			;b643	00		.
	nop			;b644	00		.
	nop			;b645	00		.
	nop			;b646	00		.
	nop			;b647	00		.
	nop			;b648	00		.
	nop			;b649	00		.
	nop			;b64a	00		.
	nop			;b64b	00		.
	nop			;b64c	00		.
	nop			;b64d	00		.
	nop			;b64e	00		.
	nop			;b64f	00		.
	nop			;b650	00		.
	nop			;b651	00		.
	nop			;b652	00		.
	nop			;b653	00		.
	nop			;b654	00		.
	nop			;b655	00		.
	nop			;b656	00		.
	nop			;b657	00		.
	nop			;b658	00		.
	nop			;b659	00		.
	nop			;b65a	00		.
	nop			;b65b	00		.
	nop			;b65c	00		.
	nop			;b65d	00		.
	nop			;b65e	00		.
	nop			;b65f	00		.
	nop			;b660	00		.
	nop			;b661	00		.
	nop			;b662	00		.
	nop			;b663	00		.
	nop			;b664	00		.
	nop			;b665	00		.
	nop			;b666	00		.
	nop			;b667	00		.
	nop			;b668	00		.
	nop			;b669	00		.
	nop			;b66a	00		.
	nop			;b66b	00		.
	nop			;b66c	00		.
	nop			;b66d	00		.
	nop			;b66e	00		.
	nop			;b66f	00		.
	nop			;b670	00		.
	nop			;b671	00		.
	nop			;b672	00		.
	nop			;b673	00		.
	nop			;b674	00		.
	nop			;b675	00		.
	nop			;b676	00		.
	nop			;b677	00		.
	nop			;b678	00		.
	nop			;b679	00		.
	nop			;b67a	00		.
	nop			;b67b	00		.
	nop			;b67c	00		.
	nop			;b67d	00		.
	nop			;b67e	00		.
	nop			;b67f	00		.
	nop			;b680	00		.
	nop			;b681	00		.
	nop			;b682	00		.
	nop			;b683	00		.
	nop			;b684	00		.
	nop			;b685	00		.
	nop			;b686	00		.
	nop			;b687	00		.
	nop			;b688	00		.
	nop			;b689	00		.
	nop			;b68a	00		.
	nop			;b68b	00		.
	nop			;b68c	00		.
	nop			;b68d	00		.
	nop			;b68e	00		.
	nop			;b68f	00		.
	nop			;b690	00		.
	nop			;b691	00		.
	nop			;b692	00		.
	nop			;b693	00		.
	nop			;b694	00		.
	nop			;b695	00		.
	nop			;b696	00		.
	nop			;b697	00		.
	nop			;b698	00		.
	nop			;b699	00		.
	nop			;b69a	00		.
	nop			;b69b	00		.
	nop			;b69c	00		.
	nop			;b69d	00		.
	nop			;b69e	00		.
	nop			;b69f	00		.
	nop			;b6a0	00		.
	nop			;b6a1	00		.
	nop			;b6a2	00		.
	nop			;b6a3	00		.
	nop			;b6a4	00		.
	nop			;b6a5	00		.
	nop			;b6a6	00		.
	nop			;b6a7	00		.
	nop			;b6a8	00		.
	nop			;b6a9	00		.
	nop			;b6aa	00		.
	nop			;b6ab	00		.
	nop			;b6ac	00		.
	nop			;b6ad	00		.
	nop			;b6ae	00		.
	nop			;b6af	00		.
	nop			;b6b0	00		.
	nop			;b6b1	00		.
	nop			;b6b2	00		.
	nop			;b6b3	00		.
	nop			;b6b4	00		.
	nop			;b6b5	00		.
	nop			;b6b6	00		.
	nop			;b6b7	00		.
	nop			;b6b8	00		.
	nop			;b6b9	00		.
	nop			;b6ba	00		.
	nop			;b6bb	00		.
	nop			;b6bc	00		.
	nop			;b6bd	00		.
	nop			;b6be	00		.
	nop			;b6bf	00		.
	nop			;b6c0	00		.
	nop			;b6c1	00		.
	nop			;b6c2	00		.
	nop			;b6c3	00		.
	nop			;b6c4	00		.
	nop			;b6c5	00		.
	nop			;b6c6	00		.
	nop			;b6c7	00		.
	nop			;b6c8	00		.
	nop			;b6c9	00		.
	nop			;b6ca	00		.
	nop			;b6cb	00		.
	nop			;b6cc	00		.
	nop			;b6cd	00		.
	nop			;b6ce	00		.
	nop			;b6cf	00		.
	nop			;b6d0	00		.
	nop			;b6d1	00		.
	nop			;b6d2	00		.
	nop			;b6d3	00		.
	nop			;b6d4	00		.
	nop			;b6d5	00		.
	nop			;b6d6	00		.
	nop			;b6d7	00		.
	nop			;b6d8	00		.
	nop			;b6d9	00		.
	nop			;b6da	00		.
	nop			;b6db	00		.
	nop			;b6dc	00		.
	nop			;b6dd	00		.
	nop			;b6de	00		.
	nop			;b6df	00		.
	nop			;b6e0	00		.
	nop			;b6e1	00		.
	nop			;b6e2	00		.
	nop			;b6e3	00		.
	nop			;b6e4	00		.
	nop			;b6e5	00		.
	nop			;b6e6	00		.
	nop			;b6e7	00		.
	nop			;b6e8	00		.
	nop			;b6e9	00		.
	nop			;b6ea	00		.
	nop			;b6eb	00		.
	nop			;b6ec	00		.
	nop			;b6ed	00		.
	nop			;b6ee	00		.
	nop			;b6ef	00		.
	nop			;b6f0	00		.
	nop			;b6f1	00		.
	nop			;b6f2	00		.
	nop			;b6f3	00		.
	nop			;b6f4	00		.
	nop			;b6f5	00		.
	nop			;b6f6	00		.
	nop			;b6f7	00		.
	nop			;b6f8	00		.
	nop			;b6f9	00		.
	nop			;b6fa	00		.
	nop			;b6fb	00		.
	nop			;b6fc	00		.
	nop			;b6fd	00		.
	nop			;b6fe	00		.
	nop			;b6ff	00		.
	nop			;b700	00		.
	nop			;b701	00		.
	nop			;b702	00		.
	nop			;b703	00		.
	nop			;b704	00		.
	nop			;b705	00		.
	nop			;b706	00		.
	nop			;b707	00		.
	nop			;b708	00		.
	nop			;b709	00		.
	nop			;b70a	00		.
	nop			;b70b	00		.
	nop			;b70c	00		.
	nop			;b70d	00		.
	nop			;b70e	00		.
	nop			;b70f	00		.
	nop			;b710	00		.
	nop			;b711	00		.
	nop			;b712	00		.
	nop			;b713	00		.
	nop			;b714	00		.
	nop			;b715	00		.
	nop			;b716	00		.
	nop			;b717	00		.
	nop			;b718	00		.
	nop			;b719	00		.
	nop			;b71a	00		.
	nop			;b71b	00		.
	nop			;b71c	00		.
	nop			;b71d	00		.
	nop			;b71e	00		.
	nop			;b71f	00		.
	nop			;b720	00		.
	nop			;b721	00		.
	nop			;b722	00		.
	nop			;b723	00		.
	nop			;b724	00		.
	nop			;b725	00		.
	nop			;b726	00		.
	nop			;b727	00		.
	nop			;b728	00		.
	nop			;b729	00		.
	nop			;b72a	00		.
	nop			;b72b	00		.
	nop			;b72c	00		.
	nop			;b72d	00		.
	nop			;b72e	00		.
	nop			;b72f	00		.
	nop			;b730	00		.
	nop			;b731	00		.
	nop			;b732	00		.
	nop			;b733	00		.
	nop			;b734	00		.
	nop			;b735	00		.
	nop			;b736	00		.
	nop			;b737	00		.
	nop			;b738	00		.
	nop			;b739	00		.
	nop			;b73a	00		.
	nop			;b73b	00		.
	nop			;b73c	00		.
	nop			;b73d	00		.
	nop			;b73e	00		.
	nop			;b73f	00		.
	nop			;b740	00		.
	nop			;b741	00		.
	nop			;b742	00		.
	nop			;b743	00		.
	nop			;b744	00		.
	nop			;b745	00		.
	nop			;b746	00		.
	nop			;b747	00		.
	nop			;b748	00		.
	nop			;b749	00		.
	nop			;b74a	00		.
	nop			;b74b	00		.
	nop			;b74c	00		.
	nop			;b74d	00		.
	nop			;b74e	00		.
	nop			;b74f	00		.
	nop			;b750	00		.
	nop			;b751	00		.
	nop			;b752	00		.
	nop			;b753	00		.
	nop			;b754	00		.
	nop			;b755	00		.
	nop			;b756	00		.
	nop			;b757	00		.
	nop			;b758	00		.
	nop			;b759	00		.
	nop			;b75a	00		.
	nop			;b75b	00		.
	nop			;b75c	00		.
	nop			;b75d	00		.
	nop			;b75e	00		.
	nop			;b75f	00		.
	nop			;b760	00		.
	nop			;b761	00		.
	nop			;b762	00		.
	nop			;b763	00		.
	nop			;b764	00		.
	nop			;b765	00		.
	nop			;b766	00		.
	nop			;b767	00		.
	nop			;b768	00		.
	nop			;b769	00		.
	nop			;b76a	00		.
	nop			;b76b	00		.
	nop			;b76c	00		.
	nop			;b76d	00		.
	nop			;b76e	00		.
	nop			;b76f	00		.
	nop			;b770	00		.
	nop			;b771	00		.
	nop			;b772	00		.
	nop			;b773	00		.
	nop			;b774	00		.
	nop			;b775	00		.
	nop			;b776	00		.
	nop			;b777	00		.
	nop			;b778	00		.
	nop			;b779	00		.
	nop			;b77a	00		.
	nop			;b77b	00		.
	nop			;b77c	00		.
	nop			;b77d	00		.
	nop			;b77e	00		.
	nop			;b77f	00		.
	nop			;b780	00		.
	nop			;b781	00		.
	nop			;b782	00		.
	nop			;b783	00		.
	nop			;b784	00		.
	nop			;b785	00		.
	nop			;b786	00		.
	nop			;b787	00		.
	nop			;b788	00		.
	nop			;b789	00		.
	nop			;b78a	00		.
	nop			;b78b	00		.
	nop			;b78c	00		.
	nop			;b78d	00		.
	nop			;b78e	00		.
	nop			;b78f	00		.
	nop			;b790	00		.
	nop			;b791	00		.
	nop			;b792	00		.
	nop			;b793	00		.
	nop			;b794	00		.
	nop			;b795	00		.
	nop			;b796	00		.
	nop			;b797	00		.
	nop			;b798	00		.
	nop			;b799	00		.
	nop			;b79a	00		.
	nop			;b79b	00		.
	nop			;b79c	00		.
	nop			;b79d	00		.
	nop			;b79e	00		.
	nop			;b79f	00		.
	nop			;b7a0	00		.
	nop			;b7a1	00		.
	nop			;b7a2	00		.
	nop			;b7a3	00		.
	nop			;b7a4	00		.
	nop			;b7a5	00		.
	nop			;b7a6	00		.
	nop			;b7a7	00		.
	nop			;b7a8	00		.
	nop			;b7a9	00		.
	nop			;b7aa	00		.
	nop			;b7ab	00		.
	nop			;b7ac	00		.
	nop			;b7ad	00		.
	nop			;b7ae	00		.
	nop			;b7af	00		.
	nop			;b7b0	00		.
	nop			;b7b1	00		.
	nop			;b7b2	00		.
	nop			;b7b3	00		.
	nop			;b7b4	00		.
	nop			;b7b5	00		.
	nop			;b7b6	00		.
	nop			;b7b7	00		.
	nop			;b7b8	00		.
	nop			;b7b9	00		.
	nop			;b7ba	00		.
	nop			;b7bb	00		.
	nop			;b7bc	00		.
	nop			;b7bd	00		.
	nop			;b7be	00		.
	nop			;b7bf	00		.
	nop			;b7c0	00		.
	nop			;b7c1	00		.
	nop			;b7c2	00		.
	nop			;b7c3	00		.
	nop			;b7c4	00		.
	nop			;b7c5	00		.
	nop			;b7c6	00		.
	nop			;b7c7	00		.
	nop			;b7c8	00		.
	nop			;b7c9	00		.
	nop			;b7ca	00		.
	nop			;b7cb	00		.
	nop			;b7cc	00		.
	nop			;b7cd	00		.
	nop			;b7ce	00		.
	nop			;b7cf	00		.
	nop			;b7d0	00		.
	nop			;b7d1	00		.
	nop			;b7d2	00		.
	nop			;b7d3	00		.
	nop			;b7d4	00		.
	nop			;b7d5	00		.
	nop			;b7d6	00		.
	nop			;b7d7	00		.
	nop			;b7d8	00		.
	nop			;b7d9	00		.
	nop			;b7da	00		.
	nop			;b7db	00		.
	nop			;b7dc	00		.
	nop			;b7dd	00		.
	nop			;b7de	00		.
	nop			;b7df	00		.
	nop			;b7e0	00		.
	nop			;b7e1	00		.
	nop			;b7e2	00		.
	nop			;b7e3	00		.
	nop			;b7e4	00		.
	nop			;b7e5	00		.
	nop			;b7e6	00		.
	nop			;b7e7	00		.
	nop			;b7e8	00		.
	nop			;b7e9	00		.
	nop			;b7ea	00		.
	nop			;b7eb	00		.
	nop			;b7ec	00		.
	nop			;b7ed	00		.
	nop			;b7ee	00		.
	nop			;b7ef	00		.
	nop			;b7f0	00		.
	nop			;b7f1	00		.
	nop			;b7f2	00		.
	nop			;b7f3	00		.
	nop			;b7f4	00		.
	nop			;b7f5	00		.
	nop			;b7f6	00		.
	nop			;b7f7	00		.
	nop			;b7f8	00		.
	nop			;b7f9	00		.
	nop			;b7fa	00		.
	nop			;b7fb	00		.
	nop			;b7fc	00		.
	nop			;b7fd	00		.
	nop			;b7fe	00		.
	nop			;b7ff	00		.
	nop			;b800	00		.
	nop			;b801	00		.
	nop			;b802	00		.
	nop			;b803	00		.
	nop			;b804	00		.
	nop			;b805	00		.
	nop			;b806	00		.
	nop			;b807	00		.
	nop			;b808	00		.
	nop			;b809	00		.
	nop			;b80a	00		.
	nop			;b80b	00		.
	nop			;b80c	00		.
	nop			;b80d	00		.
	nop			;b80e	00		.
	nop			;b80f	00		.
	nop			;b810	00		.
	nop			;b811	00		.
	nop			;b812	00		.
	nop			;b813	00		.
	nop			;b814	00		.
	nop			;b815	00		.
	nop			;b816	00		.
	nop			;b817	00		.
	nop			;b818	00		.
	nop			;b819	00		.
	nop			;b81a	00		.
	nop			;b81b	00		.
	nop			;b81c	00		.
	nop			;b81d	00		.
	nop			;b81e	00		.
	nop			;b81f	00		.
	nop			;b820	00		.
	nop			;b821	00		.
	nop			;b822	00		.
	nop			;b823	00		.
	nop			;b824	00		.
	nop			;b825	00		.
	nop			;b826	00		.
	nop			;b827	00		.
	nop			;b828	00		.
	nop			;b829	00		.
	nop			;b82a	00		.
	nop			;b82b	00		.
	nop			;b82c	00		.
	nop			;b82d	00		.
	nop			;b82e	00		.
	nop			;b82f	00		.
	nop			;b830	00		.
	nop			;b831	00		.
	nop			;b832	00		.
	nop			;b833	00		.
	nop			;b834	00		.
	nop			;b835	00		.
	nop			;b836	00		.
	nop			;b837	00		.
	nop			;b838	00		.
	nop			;b839	00		.
	nop			;b83a	00		.
	nop			;b83b	00		.
	nop			;b83c	00		.
	nop			;b83d	00		.
	nop			;b83e	00		.
	nop			;b83f	00		.
	nop			;b840	00		.
	nop			;b841	00		.
	nop			;b842	00		.
	nop			;b843	00		.
	nop			;b844	00		.
	nop			;b845	00		.
	nop			;b846	00		.
	nop			;b847	00		.
	nop			;b848	00		.
	nop			;b849	00		.
	nop			;b84a	00		.
	nop			;b84b	00		.
	nop			;b84c	00		.
	nop			;b84d	00		.
	nop			;b84e	00		.
	nop			;b84f	00		.
	nop			;b850	00		.
	nop			;b851	00		.
	nop			;b852	00		.
	nop			;b853	00		.
	nop			;b854	00		.
	nop			;b855	00		.
	nop			;b856	00		.
	nop			;b857	00		.
	nop			;b858	00		.
	nop			;b859	00		.
	nop			;b85a	00		.
	nop			;b85b	00		.
	nop			;b85c	00		.
	nop			;b85d	00		.
	nop			;b85e	00		.
	nop			;b85f	00		.
	nop			;b860	00		.
	nop			;b861	00		.
	nop			;b862	00		.
	nop			;b863	00		.
	nop			;b864	00		.
	nop			;b865	00		.
	nop			;b866	00		.
	nop			;b867	00		.
	nop			;b868	00		.
	nop			;b869	00		.
	nop			;b86a	00		.
	nop			;b86b	00		.
	nop			;b86c	00		.
	nop			;b86d	00		.
	nop			;b86e	00		.
	nop			;b86f	00		.
	nop			;b870	00		.
	nop			;b871	00		.
	nop			;b872	00		.
	nop			;b873	00		.
	nop			;b874	00		.
	nop			;b875	00		.
	nop			;b876	00		.
	nop			;b877	00		.
	nop			;b878	00		.
	nop			;b879	00		.
	nop			;b87a	00		.
	nop			;b87b	00		.
	nop			;b87c	00		.
	nop			;b87d	00		.
	nop			;b87e	00		.
	nop			;b87f	00		.
	nop			;b880	00		.
	nop			;b881	00		.
	nop			;b882	00		.
	nop			;b883	00		.
	nop			;b884	00		.
	nop			;b885	00		.
	nop			;b886	00		.
	nop			;b887	00		.
	nop			;b888	00		.
	nop			;b889	00		.
	nop			;b88a	00		.
	nop			;b88b	00		.
	nop			;b88c	00		.
	nop			;b88d	00		.
	nop			;b88e	00		.
	nop			;b88f	00		.
	nop			;b890	00		.
	nop			;b891	00		.
	nop			;b892	00		.
	nop			;b893	00		.
	nop			;b894	00		.
	nop			;b895	00		.
	nop			;b896	00		.
	nop			;b897	00		.
	nop			;b898	00		.
	nop			;b899	00		.
	nop			;b89a	00		.
	nop			;b89b	00		.
	nop			;b89c	00		.
	nop			;b89d	00		.
	nop			;b89e	00		.
	nop			;b89f	00		.
	nop			;b8a0	00		.
	nop			;b8a1	00		.
	nop			;b8a2	00		.
	nop			;b8a3	00		.
	nop			;b8a4	00		.
	nop			;b8a5	00		.
	nop			;b8a6	00		.
	nop			;b8a7	00		.
	nop			;b8a8	00		.
	nop			;b8a9	00		.
	nop			;b8aa	00		.
	nop			;b8ab	00		.
	nop			;b8ac	00		.
	nop			;b8ad	00		.
	nop			;b8ae	00		.
	nop			;b8af	00		.
	nop			;b8b0	00		.
	nop			;b8b1	00		.
	nop			;b8b2	00		.
	nop			;b8b3	00		.
	nop			;b8b4	00		.
	nop			;b8b5	00		.
	nop			;b8b6	00		.
	nop			;b8b7	00		.
	nop			;b8b8	00		.
	nop			;b8b9	00		.
	nop			;b8ba	00		.
	nop			;b8bb	00		.
	nop			;b8bc	00		.
	nop			;b8bd	00		.
	nop			;b8be	00		.
	nop			;b8bf	00		.
	nop			;b8c0	00		.
	nop			;b8c1	00		.
	nop			;b8c2	00		.
	nop			;b8c3	00		.
	nop			;b8c4	00		.
	nop			;b8c5	00		.
	nop			;b8c6	00		.
	nop			;b8c7	00		.
	nop			;b8c8	00		.
	nop			;b8c9	00		.
	nop			;b8ca	00		.
	nop			;b8cb	00		.
	nop			;b8cc	00		.
	nop			;b8cd	00		.
	nop			;b8ce	00		.
	nop			;b8cf	00		.
	nop			;b8d0	00		.
	nop			;b8d1	00		.
	nop			;b8d2	00		.
	nop			;b8d3	00		.
	nop			;b8d4	00		.
	nop			;b8d5	00		.
	nop			;b8d6	00		.
	nop			;b8d7	00		.
	nop			;b8d8	00		.
	nop			;b8d9	00		.
	nop			;b8da	00		.
	nop			;b8db	00		.
	nop			;b8dc	00		.
	nop			;b8dd	00		.
	nop			;b8de	00		.
	nop			;b8df	00		.
	nop			;b8e0	00		.
	nop			;b8e1	00		.
	nop			;b8e2	00		.
	nop			;b8e3	00		.
	nop			;b8e4	00		.
	nop			;b8e5	00		.
	nop			;b8e6	00		.
	nop			;b8e7	00		.
	nop			;b8e8	00		.
	nop			;b8e9	00		.
	nop			;b8ea	00		.
	nop			;b8eb	00		.
	nop			;b8ec	00		.
	nop			;b8ed	00		.
	nop			;b8ee	00		.
	nop			;b8ef	00		.
	nop			;b8f0	00		.
	nop			;b8f1	00		.
	nop			;b8f2	00		.
	nop			;b8f3	00		.
	nop			;b8f4	00		.
	nop			;b8f5	00		.
	nop			;b8f6	00		.
	nop			;b8f7	00		.
	nop			;b8f8	00		.
	nop			;b8f9	00		.
	nop			;b8fa	00		.
	nop			;b8fb	00		.
	nop			;b8fc	00		.
	nop			;b8fd	00		.
	nop			;b8fe	00		.
	nop			;b8ff	00		.
	nop			;b900	00		.
	nop			;b901	00		.
	nop			;b902	00		.
	nop			;b903	00		.
	nop			;b904	00		.
	nop			;b905	00		.
	nop			;b906	00		.
	nop			;b907	00		.
	nop			;b908	00		.
	nop			;b909	00		.
	nop			;b90a	00		.
	nop			;b90b	00		.
	nop			;b90c	00		.
	nop			;b90d	00		.
	nop			;b90e	00		.
	nop			;b90f	00		.
	nop			;b910	00		.
	nop			;b911	00		.
	nop			;b912	00		.
	nop			;b913	00		.
	nop			;b914	00		.
	nop			;b915	00		.
	nop			;b916	00		.
	nop			;b917	00		.
	nop			;b918	00		.
	nop			;b919	00		.
	nop			;b91a	00		.
	nop			;b91b	00		.
	nop			;b91c	00		.
	nop			;b91d	00		.
	nop			;b91e	00		.
	nop			;b91f	00		.
	nop			;b920	00		.
	nop			;b921	00		.
	nop			;b922	00		.
	nop			;b923	00		.
	nop			;b924	00		.
	nop			;b925	00		.
	nop			;b926	00		.
	nop			;b927	00		.
	nop			;b928	00		.
	nop			;b929	00		.
	nop			;b92a	00		.
	nop			;b92b	00		.
	nop			;b92c	00		.
	nop			;b92d	00		.
	nop			;b92e	00		.
	nop			;b92f	00		.
	nop			;b930	00		.
	nop			;b931	00		.
	nop			;b932	00		.
	nop			;b933	00		.
	nop			;b934	00		.
	nop			;b935	00		.
	nop			;b936	00		.
	nop			;b937	00		.
	nop			;b938	00		.
	nop			;b939	00		.
	nop			;b93a	00		.
	nop			;b93b	00		.
	nop			;b93c	00		.
	nop			;b93d	00		.
	nop			;b93e	00		.
	nop			;b93f	00		.
	nop			;b940	00		.
	nop			;b941	00		.
	nop			;b942	00		.
	nop			;b943	00		.
	nop			;b944	00		.
	nop			;b945	00		.
	nop			;b946	00		.
	nop			;b947	00		.
	nop			;b948	00		.
	nop			;b949	00		.
	nop			;b94a	00		.
	nop			;b94b	00		.
	nop			;b94c	00		.
	nop			;b94d	00		.
	nop			;b94e	00		.
	nop			;b94f	00		.
	nop			;b950	00		.
	nop			;b951	00		.
	nop			;b952	00		.
	nop			;b953	00		.
	nop			;b954	00		.
	nop			;b955	00		.
	nop			;b956	00		.
	nop			;b957	00		.
	nop			;b958	00		.
	nop			;b959	00		.
	nop			;b95a	00		.
	nop			;b95b	00		.
	nop			;b95c	00		.
	nop			;b95d	00		.
	nop			;b95e	00		.
	nop			;b95f	00		.
	nop			;b960	00		.
	nop			;b961	00		.
	nop			;b962	00		.
	nop			;b963	00		.
	nop			;b964	00		.
	nop			;b965	00		.
	nop			;b966	00		.
	nop			;b967	00		.
	nop			;b968	00		.
	nop			;b969	00		.
	nop			;b96a	00		.
	nop			;b96b	00		.
	nop			;b96c	00		.
	nop			;b96d	00		.
	nop			;b96e	00		.
	nop			;b96f	00		.
	nop			;b970	00		.
	nop			;b971	00		.
	nop			;b972	00		.
	nop			;b973	00		.
	nop			;b974	00		.
	nop			;b975	00		.
	nop			;b976	00		.
	nop			;b977	00		.
	nop			;b978	00		.
	nop			;b979	00		.
	nop			;b97a	00		.
	nop			;b97b	00		.
	nop			;b97c	00		.
	nop			;b97d	00		.
	nop			;b97e	00		.
	nop			;b97f	00		.
	nop			;b980	00		.
	nop			;b981	00		.
	nop			;b982	00		.
	nop			;b983	00		.
	nop			;b984	00		.
	nop			;b985	00		.
	nop			;b986	00		.
	nop			;b987	00		.
	nop			;b988	00		.
	nop			;b989	00		.
	nop			;b98a	00		.
	nop			;b98b	00		.
	nop			;b98c	00		.
	nop			;b98d	00		.
	nop			;b98e	00		.
	nop			;b98f	00		.
	nop			;b990	00		.
	nop			;b991	00		.
	nop			;b992	00		.
	nop			;b993	00		.
	nop			;b994	00		.
	nop			;b995	00		.
	nop			;b996	00		.
	nop			;b997	00		.
	nop			;b998	00		.
	nop			;b999	00		.
	nop			;b99a	00		.
	nop			;b99b	00		.
	nop			;b99c	00		.
	nop			;b99d	00		.
	nop			;b99e	00		.
	nop			;b99f	00		.
	nop			;b9a0	00		.
	nop			;b9a1	00		.
	nop			;b9a2	00		.
	nop			;b9a3	00		.
	nop			;b9a4	00		.
	nop			;b9a5	00		.
	nop			;b9a6	00		.
	nop			;b9a7	00		.
	nop			;b9a8	00		.
	nop			;b9a9	00		.
	nop			;b9aa	00		.
	nop			;b9ab	00		.
	nop			;b9ac	00		.
	nop			;b9ad	00		.
	nop			;b9ae	00		.
	nop			;b9af	00		.
	nop			;b9b0	00		.
	nop			;b9b1	00		.
	nop			;b9b2	00		.
	nop			;b9b3	00		.
	nop			;b9b4	00		.
	nop			;b9b5	00		.
	nop			;b9b6	00		.
	nop			;b9b7	00		.
	nop			;b9b8	00		.
	nop			;b9b9	00		.
	nop			;b9ba	00		.
	nop			;b9bb	00		.
	nop			;b9bc	00		.
	nop			;b9bd	00		.
	nop			;b9be	00		.
	nop			;b9bf	00		.
	nop			;b9c0	00		.
	nop			;b9c1	00		.
	nop			;b9c2	00		.
	nop			;b9c3	00		.
	nop			;b9c4	00		.
	nop			;b9c5	00		.
	nop			;b9c6	00		.
	nop			;b9c7	00		.
	nop			;b9c8	00		.
	nop			;b9c9	00		.
	nop			;b9ca	00		.
	nop			;b9cb	00		.
	nop			;b9cc	00		.
	nop			;b9cd	00		.
	nop			;b9ce	00		.
	nop			;b9cf	00		.
	nop			;b9d0	00		.
	nop			;b9d1	00		.
	nop			;b9d2	00		.
	nop			;b9d3	00		.
	nop			;b9d4	00		.
	nop			;b9d5	00		.
	nop			;b9d6	00		.
	nop			;b9d7	00		.
	nop			;b9d8	00		.
	nop			;b9d9	00		.
	nop			;b9da	00		.
	nop			;b9db	00		.
	nop			;b9dc	00		.
	nop			;b9dd	00		.
	nop			;b9de	00		.
	nop			;b9df	00		.
	nop			;b9e0	00		.
	nop			;b9e1	00		.
	nop			;b9e2	00		.
	nop			;b9e3	00		.
	nop			;b9e4	00		.
	nop			;b9e5	00		.
	nop			;b9e6	00		.
	nop			;b9e7	00		.
	nop			;b9e8	00		.
	nop			;b9e9	00		.
	nop			;b9ea	00		.
	nop			;b9eb	00		.
	nop			;b9ec	00		.
	nop			;b9ed	00		.
	nop			;b9ee	00		.
	nop			;b9ef	00		.
	nop			;b9f0	00		.
	nop			;b9f1	00		.
	nop			;b9f2	00		.
	nop			;b9f3	00		.
	nop			;b9f4	00		.
	nop			;b9f5	00		.
	nop			;b9f6	00		.
	nop			;b9f7	00		.
	nop			;b9f8	00		.
	nop			;b9f9	00		.
	nop			;b9fa	00		.
	nop			;b9fb	00		.
	nop			;b9fc	00		.
	nop			;b9fd	00		.
	nop			;b9fe	00		.
	nop			;b9ff	00		.
	nop			;ba00	00		.
	nop			;ba01	00		.
	nop			;ba02	00		.
	nop			;ba03	00		.
	nop			;ba04	00		.
	nop			;ba05	00		.
	nop			;ba06	00		.
	nop			;ba07	00		.
	nop			;ba08	00		.
	nop			;ba09	00		.
	nop			;ba0a	00		.
	nop			;ba0b	00		.
	nop			;ba0c	00		.
	nop			;ba0d	00		.
	nop			;ba0e	00		.
	nop			;ba0f	00		.
	nop			;ba10	00		.
	nop			;ba11	00		.
	nop			;ba12	00		.
	nop			;ba13	00		.
	nop			;ba14	00		.
	nop			;ba15	00		.
	nop			;ba16	00		.
	nop			;ba17	00		.
	nop			;ba18	00		.
	nop			;ba19	00		.
	nop			;ba1a	00		.
	nop			;ba1b	00		.
	nop			;ba1c	00		.
	nop			;ba1d	00		.
	nop			;ba1e	00		.
	nop			;ba1f	00		.
	nop			;ba20	00		.
	nop			;ba21	00		.
	nop			;ba22	00		.
	nop			;ba23	00		.
	nop			;ba24	00		.
	nop			;ba25	00		.
	nop			;ba26	00		.
	nop			;ba27	00		.
	nop			;ba28	00		.
	nop			;ba29	00		.
	nop			;ba2a	00		.
	nop			;ba2b	00		.
	nop			;ba2c	00		.
	nop			;ba2d	00		.
	nop			;ba2e	00		.
	nop			;ba2f	00		.
	nop			;ba30	00		.
	nop			;ba31	00		.
	nop			;ba32	00		.
	nop			;ba33	00		.
	nop			;ba34	00		.
	nop			;ba35	00		.
	nop			;ba36	00		.
	nop			;ba37	00		.
	nop			;ba38	00		.
	nop			;ba39	00		.
	nop			;ba3a	00		.
	nop			;ba3b	00		.
	nop			;ba3c	00		.
	nop			;ba3d	00		.
	nop			;ba3e	00		.
	nop			;ba3f	00		.
	nop			;ba40	00		.
	nop			;ba41	00		.
	nop			;ba42	00		.
	nop			;ba43	00		.
	nop			;ba44	00		.
	nop			;ba45	00		.
	nop			;ba46	00		.
	nop			;ba47	00		.
	nop			;ba48	00		.
	nop			;ba49	00		.
	nop			;ba4a	00		.
	nop			;ba4b	00		.
	nop			;ba4c	00		.
	nop			;ba4d	00		.
	nop			;ba4e	00		.
	nop			;ba4f	00		.
	nop			;ba50	00		.
	nop			;ba51	00		.
	nop			;ba52	00		.
	nop			;ba53	00		.
	nop			;ba54	00		.
	nop			;ba55	00		.
	nop			;ba56	00		.
	nop			;ba57	00		.
	nop			;ba58	00		.
	nop			;ba59	00		.
	nop			;ba5a	00		.
	nop			;ba5b	00		.
	nop			;ba5c	00		.
	nop			;ba5d	00		.
	nop			;ba5e	00		.
	nop			;ba5f	00		.
	nop			;ba60	00		.
	nop			;ba61	00		.
	nop			;ba62	00		.
	nop			;ba63	00		.
	nop			;ba64	00		.
	nop			;ba65	00		.
	nop			;ba66	00		.
	nop			;ba67	00		.
	nop			;ba68	00		.
	nop			;ba69	00		.
	nop			;ba6a	00		.
	nop			;ba6b	00		.
	nop			;ba6c	00		.
	nop			;ba6d	00		.
	nop			;ba6e	00		.
	nop			;ba6f	00		.
	nop			;ba70	00		.
	nop			;ba71	00		.
	nop			;ba72	00		.
	nop			;ba73	00		.
	nop			;ba74	00		.
	nop			;ba75	00		.
	nop			;ba76	00		.
	nop			;ba77	00		.
	nop			;ba78	00		.
	nop			;ba79	00		.
	nop			;ba7a	00		.
	nop			;ba7b	00		.
	nop			;ba7c	00		.
	nop			;ba7d	00		.
	nop			;ba7e	00		.
	nop			;ba7f	00		.
	nop			;ba80	00		.
	nop			;ba81	00		.
	nop			;ba82	00		.
	nop			;ba83	00		.
	nop			;ba84	00		.
	nop			;ba85	00		.
	nop			;ba86	00		.
	nop			;ba87	00		.
	nop			;ba88	00		.
	nop			;ba89	00		.
	nop			;ba8a	00		.
	nop			;ba8b	00		.
	nop			;ba8c	00		.
	nop			;ba8d	00		.
	nop			;ba8e	00		.
	nop			;ba8f	00		.
	nop			;ba90	00		.
	nop			;ba91	00		.
	nop			;ba92	00		.
	nop			;ba93	00		.
	nop			;ba94	00		.
	nop			;ba95	00		.
	nop			;ba96	00		.
	nop			;ba97	00		.
	nop			;ba98	00		.
	nop			;ba99	00		.
	nop			;ba9a	00		.
	nop			;ba9b	00		.
	nop			;ba9c	00		.
	nop			;ba9d	00		.
	nop			;ba9e	00		.
	nop			;ba9f	00		.
	nop			;baa0	00		.
	nop			;baa1	00		.
	nop			;baa2	00		.
	nop			;baa3	00		.
	nop			;baa4	00		.
	nop			;baa5	00		.
	nop			;baa6	00		.
	nop			;baa7	00		.
	nop			;baa8	00		.
	nop			;baa9	00		.
	nop			;baaa	00		.
	nop			;baab	00		.
	nop			;baac	00		.
	nop			;baad	00		.
	nop			;baae	00		.
	nop			;baaf	00		.
	nop			;bab0	00		.
	nop			;bab1	00		.
	nop			;bab2	00		.
	nop			;bab3	00		.
	nop			;bab4	00		.
	nop			;bab5	00		.
	nop			;bab6	00		.
	nop			;bab7	00		.
	nop			;bab8	00		.
	nop			;bab9	00		.
	nop			;baba	00		.
	nop			;babb	00		.
	nop			;babc	00		.
	nop			;babd	00		.
	nop			;babe	00		.
	nop			;babf	00		.
	nop			;bac0	00		.
	nop			;bac1	00		.
	nop			;bac2	00		.
	nop			;bac3	00		.
	nop			;bac4	00		.
	nop			;bac5	00		.
	nop			;bac6	00		.
	nop			;bac7	00		.
	nop			;bac8	00		.
	nop			;bac9	00		.
	nop			;baca	00		.
	nop			;bacb	00		.
	nop			;bacc	00		.
	nop			;bacd	00		.
	nop			;bace	00		.
	nop			;bacf	00		.
	nop			;bad0	00		.
	nop			;bad1	00		.
	nop			;bad2	00		.
	nop			;bad3	00		.
	nop			;bad4	00		.
	nop			;bad5	00		.
	nop			;bad6	00		.
	nop			;bad7	00		.
	nop			;bad8	00		.
	nop			;bad9	00		.
	nop			;bada	00		.
	nop			;badb	00		.
	nop			;badc	00		.
	nop			;badd	00		.
	nop			;bade	00		.
	nop			;badf	00		.
	nop			;bae0	00		.
	nop			;bae1	00		.
	nop			;bae2	00		.
	nop			;bae3	00		.
	nop			;bae4	00		.
	nop			;bae5	00		.
	nop			;bae6	00		.
	nop			;bae7	00		.
	nop			;bae8	00		.
	nop			;bae9	00		.
	nop			;baea	00		.
	nop			;baeb	00		.
	nop			;baec	00		.
	nop			;baed	00		.
	nop			;baee	00		.
	nop			;baef	00		.
	nop			;baf0	00		.
	nop			;baf1	00		.
	nop			;baf2	00		.
	nop			;baf3	00		.
	nop			;baf4	00		.
	nop			;baf5	00		.
	nop			;baf6	00		.
	nop			;baf7	00		.
	nop			;baf8	00		.
	nop			;baf9	00		.
	nop			;bafa	00		.
	nop			;bafb	00		.
	nop			;bafc	00		.
	nop			;bafd	00		.
	nop			;bafe	00		.
	nop			;baff	00		.
	nop			;bb00	00		.
	nop			;bb01	00		.
	nop			;bb02	00		.
	nop			;bb03	00		.
	nop			;bb04	00		.
	nop			;bb05	00		.
	nop			;bb06	00		.
	nop			;bb07	00		.
	nop			;bb08	00		.
	nop			;bb09	00		.
	nop			;bb0a	00		.
	nop			;bb0b	00		.
	nop			;bb0c	00		.
	nop			;bb0d	00		.
	nop			;bb0e	00		.
	nop			;bb0f	00		.
	nop			;bb10	00		.
	nop			;bb11	00		.
	nop			;bb12	00		.
	nop			;bb13	00		.
	nop			;bb14	00		.
	nop			;bb15	00		.
	nop			;bb16	00		.
	nop			;bb17	00		.
	nop			;bb18	00		.
	nop			;bb19	00		.
	nop			;bb1a	00		.
	nop			;bb1b	00		.
	nop			;bb1c	00		.
	nop			;bb1d	00		.
	nop			;bb1e	00		.
	nop			;bb1f	00		.
	nop			;bb20	00		.
	nop			;bb21	00		.
	nop			;bb22	00		.
	nop			;bb23	00		.
	nop			;bb24	00		.
	nop			;bb25	00		.
	nop			;bb26	00		.
	nop			;bb27	00		.
	nop			;bb28	00		.
	nop			;bb29	00		.
	nop			;bb2a	00		.
	nop			;bb2b	00		.
	nop			;bb2c	00		.
	nop			;bb2d	00		.
	nop			;bb2e	00		.
	nop			;bb2f	00		.
	nop			;bb30	00		.
	nop			;bb31	00		.
	nop			;bb32	00		.
	nop			;bb33	00		.
	nop			;bb34	00		.
	nop			;bb35	00		.
	nop			;bb36	00		.
	nop			;bb37	00		.
	nop			;bb38	00		.
	nop			;bb39	00		.
	nop			;bb3a	00		.
	nop			;bb3b	00		.
	nop			;bb3c	00		.
	nop			;bb3d	00		.
	nop			;bb3e	00		.
	nop			;bb3f	00		.
	nop			;bb40	00		.
	nop			;bb41	00		.
	nop			;bb42	00		.
	nop			;bb43	00		.
	nop			;bb44	00		.
	nop			;bb45	00		.
	nop			;bb46	00		.
	nop			;bb47	00		.
	nop			;bb48	00		.
	nop			;bb49	00		.
	nop			;bb4a	00		.
	nop			;bb4b	00		.
	nop			;bb4c	00		.
	nop			;bb4d	00		.
	nop			;bb4e	00		.
	nop			;bb4f	00		.
	nop			;bb50	00		.
	nop			;bb51	00		.
	nop			;bb52	00		.
	nop			;bb53	00		.
	nop			;bb54	00		.
	nop			;bb55	00		.
	nop			;bb56	00		.
	nop			;bb57	00		.
	nop			;bb58	00		.
	nop			;bb59	00		.
	nop			;bb5a	00		.
	nop			;bb5b	00		.
	nop			;bb5c	00		.
	nop			;bb5d	00		.
	nop			;bb5e	00		.
	nop			;bb5f	00		.
	nop			;bb60	00		.
	nop			;bb61	00		.
	nop			;bb62	00		.
	nop			;bb63	00		.
	nop			;bb64	00		.
	nop			;bb65	00		.
	nop			;bb66	00		.
	nop			;bb67	00		.
	nop			;bb68	00		.
	nop			;bb69	00		.
	nop			;bb6a	00		.
	nop			;bb6b	00		.
	nop			;bb6c	00		.
	nop			;bb6d	00		.
	nop			;bb6e	00		.
	nop			;bb6f	00		.
	nop			;bb70	00		.
	nop			;bb71	00		.
	nop			;bb72	00		.
	nop			;bb73	00		.
	nop			;bb74	00		.
	nop			;bb75	00		.
	nop			;bb76	00		.
	nop			;bb77	00		.
	nop			;bb78	00		.
	nop			;bb79	00		.
	nop			;bb7a	00		.
	nop			;bb7b	00		.
	nop			;bb7c	00		.
	nop			;bb7d	00		.
	nop			;bb7e	00		.
	nop			;bb7f	00		.
	nop			;bb80	00		.
	nop			;bb81	00		.
	nop			;bb82	00		.
	nop			;bb83	00		.
	nop			;bb84	00		.
	nop			;bb85	00		.
	nop			;bb86	00		.
	nop			;bb87	00		.
	nop			;bb88	00		.
	nop			;bb89	00		.
	nop			;bb8a	00		.
	nop			;bb8b	00		.
	nop			;bb8c	00		.
	nop			;bb8d	00		.
	nop			;bb8e	00		.
	nop			;bb8f	00		.
	nop			;bb90	00		.
	nop			;bb91	00		.
	nop			;bb92	00		.
	nop			;bb93	00		.
	nop			;bb94	00		.
	nop			;bb95	00		.
	nop			;bb96	00		.
	nop			;bb97	00		.
	nop			;bb98	00		.
	nop			;bb99	00		.
	nop			;bb9a	00		.
	nop			;bb9b	00		.
	nop			;bb9c	00		.
	nop			;bb9d	00		.
	nop			;bb9e	00		.
	nop			;bb9f	00		.
	nop			;bba0	00		.
	nop			;bba1	00		.
	nop			;bba2	00		.
	nop			;bba3	00		.
	nop			;bba4	00		.
	nop			;bba5	00		.
	nop			;bba6	00		.
	nop			;bba7	00		.
	nop			;bba8	00		.
	nop			;bba9	00		.
	nop			;bbaa	00		.
	nop			;bbab	00		.
	nop			;bbac	00		.
	nop			;bbad	00		.
	nop			;bbae	00		.
	nop			;bbaf	00		.
	nop			;bbb0	00		.
	nop			;bbb1	00		.
	nop			;bbb2	00		.
	nop			;bbb3	00		.
	nop			;bbb4	00		.
	nop			;bbb5	00		.
	nop			;bbb6	00		.
	nop			;bbb7	00		.
	nop			;bbb8	00		.
	nop			;bbb9	00		.
	nop			;bbba	00		.
	nop			;bbbb	00		.
	nop			;bbbc	00		.
	nop			;bbbd	00		.
	nop			;bbbe	00		.
	nop			;bbbf	00		.
	nop			;bbc0	00		.
	nop			;bbc1	00		.
	nop			;bbc2	00		.
	nop			;bbc3	00		.
	nop			;bbc4	00		.
	nop			;bbc5	00		.
lbbc6h:
	nop			;bbc6	00		.
	nop			;bbc7	00		.
	nop			;bbc8	00		.
	nop			;bbc9	00		.
	nop			;bbca	00		.
	nop			;bbcb	00		.
	nop			;bbcc	00		.
	nop			;bbcd	00		.
	nop			;bbce	00		.
	nop			;bbcf	00		.
	nop			;bbd0	00		.
	nop			;bbd1	00		.
	nop			;bbd2	00		.
	nop			;bbd3	00		.
	nop			;bbd4	00		.
	nop			;bbd5	00		.
	nop			;bbd6	00		.
	nop			;bbd7	00		.
	nop			;bbd8	00		.
	nop			;bbd9	00		.
	nop			;bbda	00		.
	nop			;bbdb	00		.
	nop			;bbdc	00		.
	nop			;bbdd	00		.
	nop			;bbde	00		.
	nop			;bbdf	00		.
	nop			;bbe0	00		.
	nop			;bbe1	00		.
	nop			;bbe2	00		.
	nop			;bbe3	00		.
	nop			;bbe4	00		.
	nop			;bbe5	00		.
	nop			;bbe6	00		.
	nop			;bbe7	00		.
	nop			;bbe8	00		.
	nop			;bbe9	00		.
	nop			;bbea	00		.
	nop			;bbeb	00		.
	nop			;bbec	00		.
	nop			;bbed	00		.
	nop			;bbee	00		.
	nop			;bbef	00		.
	nop			;bbf0	00		.
	nop			;bbf1	00		.
	nop			;bbf2	00		.
	nop			;bbf3	00		.
	nop			;bbf4	00		.
	nop			;bbf5	00		.
	nop			;bbf6	00		.
	nop			;bbf7	00		.
	nop			;bbf8	00		.
	nop			;bbf9	00		.
	nop			;bbfa	00		.
	nop			;bbfb	00		.
	nop			;bbfc	00		.
	nop			;bbfd	00		.
	nop			;bbfe	00		.
	nop			;bbff	00		.
	nop			;bc00	00		.
	nop			;bc01	00		.
	nop			;bc02	00		.
	nop			;bc03	00		.
	nop			;bc04	00		.
	nop			;bc05	00		.
	nop			;bc06	00		.
	nop			;bc07	00		.
	nop			;bc08	00		.
	nop			;bc09	00		.
	nop			;bc0a	00		.
	nop			;bc0b	00		.
	nop			;bc0c	00		.
	nop			;bc0d	00		.
	nop			;bc0e	00		.
	nop			;bc0f	00		.
	nop			;bc10	00		.
	nop			;bc11	00		.
	nop			;bc12	00		.
	nop			;bc13	00		.
	nop			;bc14	00		.
	nop			;bc15	00		.
	nop			;bc16	00		.
	nop			;bc17	00		.
	nop			;bc18	00		.
	nop			;bc19	00		.
	nop			;bc1a	00		.
	nop			;bc1b	00		.
	nop			;bc1c	00		.
	nop			;bc1d	00		.
	nop			;bc1e	00		.
	nop			;bc1f	00		.
	nop			;bc20	00		.
	nop			;bc21	00		.
	nop			;bc22	00		.
	nop			;bc23	00		.
	nop			;bc24	00		.
	nop			;bc25	00		.
	nop			;bc26	00		.
	nop			;bc27	00		.
	nop			;bc28	00		.
	nop			;bc29	00		.
	nop			;bc2a	00		.
	nop			;bc2b	00		.
	nop			;bc2c	00		.
	nop			;bc2d	00		.
	nop			;bc2e	00		.
	nop			;bc2f	00		.
	nop			;bc30	00		.
	nop			;bc31	00		.
	nop			;bc32	00		.
	nop			;bc33	00		.
	nop			;bc34	00		.
	nop			;bc35	00		.
	nop			;bc36	00		.
	nop			;bc37	00		.
	nop			;bc38	00		.
	nop			;bc39	00		.
	nop			;bc3a	00		.
	nop			;bc3b	00		.
	nop			;bc3c	00		.
	nop			;bc3d	00		.
	nop			;bc3e	00		.
	nop			;bc3f	00		.
	nop			;bc40	00		.
	nop			;bc41	00		.
	nop			;bc42	00		.
	nop			;bc43	00		.
	nop			;bc44	00		.
	nop			;bc45	00		.
	nop			;bc46	00		.
	nop			;bc47	00		.
	nop			;bc48	00		.
	nop			;bc49	00		.
	nop			;bc4a	00		.
	nop			;bc4b	00		.
	nop			;bc4c	00		.
	nop			;bc4d	00		.
	nop			;bc4e	00		.
	nop			;bc4f	00		.
	nop			;bc50	00		.
	nop			;bc51	00		.
	nop			;bc52	00		.
	nop			;bc53	00		.
	nop			;bc54	00		.
	nop			;bc55	00		.
	nop			;bc56	00		.
	nop			;bc57	00		.
	nop			;bc58	00		.
	nop			;bc59	00		.
	nop			;bc5a	00		.
	nop			;bc5b	00		.
	nop			;bc5c	00		.
	nop			;bc5d	00		.
	nop			;bc5e	00		.
	nop			;bc5f	00		.
	nop			;bc60	00		.
	nop			;bc61	00		.
	nop			;bc62	00		.
	nop			;bc63	00		.
	nop			;bc64	00		.
	nop			;bc65	00		.
	nop			;bc66	00		.
	nop			;bc67	00		.
	nop			;bc68	00		.
	nop			;bc69	00		.
	nop			;bc6a	00		.
	nop			;bc6b	00		.
	nop			;bc6c	00		.
	nop			;bc6d	00		.
	nop			;bc6e	00		.
	nop			;bc6f	00		.
	nop			;bc70	00		.
	nop			;bc71	00		.
	nop			;bc72	00		.
	nop			;bc73	00		.
	nop			;bc74	00		.
	nop			;bc75	00		.
	nop			;bc76	00		.
	nop			;bc77	00		.
	nop			;bc78	00		.
	nop			;bc79	00		.
	nop			;bc7a	00		.
	nop			;bc7b	00		.
	nop			;bc7c	00		.
	nop			;bc7d	00		.
	nop			;bc7e	00		.
	nop			;bc7f	00		.
	nop			;bc80	00		.
	nop			;bc81	00		.
	nop			;bc82	00		.
	nop			;bc83	00		.
	nop			;bc84	00		.
	nop			;bc85	00		.
	nop			;bc86	00		.
	nop			;bc87	00		.
	nop			;bc88	00		.
	nop			;bc89	00		.
	nop			;bc8a	00		.
	nop			;bc8b	00		.
	nop			;bc8c	00		.
	nop			;bc8d	00		.
	nop			;bc8e	00		.
	nop			;bc8f	00		.
	nop			;bc90	00		.
	nop			;bc91	00		.
	nop			;bc92	00		.
	nop			;bc93	00		.
	nop			;bc94	00		.
	nop			;bc95	00		.
	nop			;bc96	00		.
	nop			;bc97	00		.
	nop			;bc98	00		.
	nop			;bc99	00		.
	nop			;bc9a	00		.
	nop			;bc9b	00		.
	nop			;bc9c	00		.
	nop			;bc9d	00		.
	nop			;bc9e	00		.
	nop			;bc9f	00		.
	nop			;bca0	00		.
	nop			;bca1	00		.
	nop			;bca2	00		.
	nop			;bca3	00		.
	nop			;bca4	00		.
	nop			;bca5	00		.
	nop			;bca6	00		.
	nop			;bca7	00		.
	nop			;bca8	00		.
	nop			;bca9	00		.
	nop			;bcaa	00		.
	nop			;bcab	00		.
	nop			;bcac	00		.
	nop			;bcad	00		.
	nop			;bcae	00		.
	nop			;bcaf	00		.
	nop			;bcb0	00		.
	nop			;bcb1	00		.
	nop			;bcb2	00		.
	nop			;bcb3	00		.
	nop			;bcb4	00		.
	nop			;bcb5	00		.
	nop			;bcb6	00		.
	nop			;bcb7	00		.
	nop			;bcb8	00		.
	nop			;bcb9	00		.
	nop			;bcba	00		.
	nop			;bcbb	00		.
	nop			;bcbc	00		.
	nop			;bcbd	00		.
	nop			;bcbe	00		.
	nop			;bcbf	00		.
	nop			;bcc0	00		.
	nop			;bcc1	00		.
	nop			;bcc2	00		.
	nop			;bcc3	00		.
	nop			;bcc4	00		.
	nop			;bcc5	00		.
	nop			;bcc6	00		.
	nop			;bcc7	00		.
	nop			;bcc8	00		.
	nop			;bcc9	00		.
	nop			;bcca	00		.
	nop			;bccb	00		.
	nop			;bccc	00		.
	nop			;bccd	00		.
	nop			;bcce	00		.
	nop			;bccf	00		.
	nop			;bcd0	00		.
	nop			;bcd1	00		.
	nop			;bcd2	00		.
	nop			;bcd3	00		.
	nop			;bcd4	00		.
	nop			;bcd5	00		.
	nop			;bcd6	00		.
	nop			;bcd7	00		.
	nop			;bcd8	00		.
	nop			;bcd9	00		.
	nop			;bcda	00		.
	nop			;bcdb	00		.
	nop			;bcdc	00		.
	nop			;bcdd	00		.
	nop			;bcde	00		.
	nop			;bcdf	00		.
	nop			;bce0	00		.
	nop			;bce1	00		.
	nop			;bce2	00		.
	nop			;bce3	00		.
	nop			;bce4	00		.
	nop			;bce5	00		.
	nop			;bce6	00		.
	nop			;bce7	00		.
	nop			;bce8	00		.
	nop			;bce9	00		.
	nop			;bcea	00		.
	nop			;bceb	00		.
	nop			;bcec	00		.
	nop			;bced	00		.
	nop			;bcee	00		.
	nop			;bcef	00		.
	nop			;bcf0	00		.
	nop			;bcf1	00		.
	nop			;bcf2	00		.
	nop			;bcf3	00		.
	nop			;bcf4	00		.
	nop			;bcf5	00		.
	nop			;bcf6	00		.
	nop			;bcf7	00		.
	nop			;bcf8	00		.
	nop			;bcf9	00		.
	nop			;bcfa	00		.
	nop			;bcfb	00		.
	nop			;bcfc	00		.
	nop			;bcfd	00		.
	nop			;bcfe	00		.
	nop			;bcff	00		.
	nop			;bd00	00		.
	nop			;bd01	00		.
	nop			;bd02	00		.
	nop			;bd03	00		.
	nop			;bd04	00		.
	nop			;bd05	00		.
	nop			;bd06	00		.
	nop			;bd07	00		.
	nop			;bd08	00		.
	nop			;bd09	00		.
	nop			;bd0a	00		.
	nop			;bd0b	00		.
	nop			;bd0c	00		.
	nop			;bd0d	00		.
	nop			;bd0e	00		.
	nop			;bd0f	00		.
	nop			;bd10	00		.
	nop			;bd11	00		.
	nop			;bd12	00		.
	nop			;bd13	00		.
	nop			;bd14	00		.
	nop			;bd15	00		.
	nop			;bd16	00		.
	nop			;bd17	00		.
	nop			;bd18	00		.
	nop			;bd19	00		.
	nop			;bd1a	00		.
	nop			;bd1b	00		.
	nop			;bd1c	00		.
	nop			;bd1d	00		.
	nop			;bd1e	00		.
	nop			;bd1f	00		.
	nop			;bd20	00		.
	nop			;bd21	00		.
	nop			;bd22	00		.
	nop			;bd23	00		.
	nop			;bd24	00		.
	nop			;bd25	00		.
	nop			;bd26	00		.
	nop			;bd27	00		.
	nop			;bd28	00		.
	nop			;bd29	00		.
	nop			;bd2a	00		.
	nop			;bd2b	00		.
	nop			;bd2c	00		.
	nop			;bd2d	00		.
	nop			;bd2e	00		.
	nop			;bd2f	00		.
	nop			;bd30	00		.
	nop			;bd31	00		.
	nop			;bd32	00		.
	nop			;bd33	00		.
	nop			;bd34	00		.
	nop			;bd35	00		.
	nop			;bd36	00		.
	nop			;bd37	00		.
	nop			;bd38	00		.
	nop			;bd39	00		.
	nop			;bd3a	00		.
	nop			;bd3b	00		.
	nop			;bd3c	00		.
	nop			;bd3d	00		.
	nop			;bd3e	00		.
	nop			;bd3f	00		.
	nop			;bd40	00		.
	nop			;bd41	00		.
	nop			;bd42	00		.
	nop			;bd43	00		.
	nop			;bd44	00		.
	nop			;bd45	00		.
	nop			;bd46	00		.
	nop			;bd47	00		.
	nop			;bd48	00		.
	nop			;bd49	00		.
	nop			;bd4a	00		.
	nop			;bd4b	00		.
	nop			;bd4c	00		.
	nop			;bd4d	00		.
	nop			;bd4e	00		.
	nop			;bd4f	00		.
	nop			;bd50	00		.
	nop			;bd51	00		.
	nop			;bd52	00		.
	nop			;bd53	00		.
	nop			;bd54	00		.
	nop			;bd55	00		.
	nop			;bd56	00		.
	nop			;bd57	00		.
	nop			;bd58	00		.
	nop			;bd59	00		.
	nop			;bd5a	00		.
	nop			;bd5b	00		.
	nop			;bd5c	00		.
	nop			;bd5d	00		.
	nop			;bd5e	00		.
	nop			;bd5f	00		.
	nop			;bd60	00		.
	nop			;bd61	00		.
	nop			;bd62	00		.
	nop			;bd63	00		.
	nop			;bd64	00		.
	nop			;bd65	00		.
	nop			;bd66	00		.
	nop			;bd67	00		.
	nop			;bd68	00		.
	nop			;bd69	00		.
	nop			;bd6a	00		.
	nop			;bd6b	00		.
	nop			;bd6c	00		.
	nop			;bd6d	00		.
	nop			;bd6e	00		.
	nop			;bd6f	00		.
	nop			;bd70	00		.
	nop			;bd71	00		.
	nop			;bd72	00		.
	nop			;bd73	00		.
	nop			;bd74	00		.
	nop			;bd75	00		.
	nop			;bd76	00		.
	nop			;bd77	00		.
	nop			;bd78	00		.
	nop			;bd79	00		.
	nop			;bd7a	00		.
	nop			;bd7b	00		.
	nop			;bd7c	00		.
	nop			;bd7d	00		.
	nop			;bd7e	00		.
	nop			;bd7f	00		.
	nop			;bd80	00		.
	nop			;bd81	00		.
	nop			;bd82	00		.
	nop			;bd83	00		.
	nop			;bd84	00		.
	nop			;bd85	00		.
	nop			;bd86	00		.
	nop			;bd87	00		.
	nop			;bd88	00		.
	nop			;bd89	00		.
	nop			;bd8a	00		.
	nop			;bd8b	00		.
	nop			;bd8c	00		.
	nop			;bd8d	00		.
	nop			;bd8e	00		.
	nop			;bd8f	00		.
	nop			;bd90	00		.
	nop			;bd91	00		.
	nop			;bd92	00		.
	nop			;bd93	00		.
	nop			;bd94	00		.
	nop			;bd95	00		.
	nop			;bd96	00		.
	nop			;bd97	00		.
	nop			;bd98	00		.
	nop			;bd99	00		.
	nop			;bd9a	00		.
	nop			;bd9b	00		.
	nop			;bd9c	00		.
	nop			;bd9d	00		.
	nop			;bd9e	00		.
	nop			;bd9f	00		.
	nop			;bda0	00		.
	nop			;bda1	00		.
	nop			;bda2	00		.
	nop			;bda3	00		.
	nop			;bda4	00		.
	nop			;bda5	00		.
	nop			;bda6	00		.
	nop			;bda7	00		.
	nop			;bda8	00		.
	nop			;bda9	00		.
	nop			;bdaa	00		.
	nop			;bdab	00		.
	nop			;bdac	00		.
	nop			;bdad	00		.
	nop			;bdae	00		.
	nop			;bdaf	00		.
	nop			;bdb0	00		.
	nop			;bdb1	00		.
	nop			;bdb2	00		.
	nop			;bdb3	00		.
	nop			;bdb4	00		.
	nop			;bdb5	00		.
	nop			;bdb6	00		.
	nop			;bdb7	00		.
	nop			;bdb8	00		.
	nop			;bdb9	00		.
	nop			;bdba	00		.
	nop			;bdbb	00		.
	nop			;bdbc	00		.
	nop			;bdbd	00		.
	nop			;bdbe	00		.
	nop			;bdbf	00		.
	nop			;bdc0	00		.
	nop			;bdc1	00		.
	nop			;bdc2	00		.
	nop			;bdc3	00		.
	nop			;bdc4	00		.
	nop			;bdc5	00		.
	nop			;bdc6	00		.
	nop			;bdc7	00		.
	nop			;bdc8	00		.
	nop			;bdc9	00		.
	nop			;bdca	00		.
	nop			;bdcb	00		.
	nop			;bdcc	00		.
	nop			;bdcd	00		.
	nop			;bdce	00		.
	nop			;bdcf	00		.
	nop			;bdd0	00		.
	nop			;bdd1	00		.
	nop			;bdd2	00		.
	nop			;bdd3	00		.
	nop			;bdd4	00		.
	nop			;bdd5	00		.
	nop			;bdd6	00		.
	nop			;bdd7	00		.
	nop			;bdd8	00		.
	nop			;bdd9	00		.
	nop			;bdda	00		.
	nop			;bddb	00		.
	nop			;bddc	00		.
	nop			;bddd	00		.
	nop			;bdde	00		.
	nop			;bddf	00		.
	nop			;bde0	00		.
	nop			;bde1	00		.
	nop			;bde2	00		.
	nop			;bde3	00		.
	nop			;bde4	00		.
	nop			;bde5	00		.
	nop			;bde6	00		.
	nop			;bde7	00		.
	nop			;bde8	00		.
	nop			;bde9	00		.
	nop			;bdea	00		.
	nop			;bdeb	00		.
	nop			;bdec	00		.
	nop			;bded	00		.
	nop			;bdee	00		.
	nop			;bdef	00		.
	nop			;bdf0	00		.
	nop			;bdf1	00		.
	nop			;bdf2	00		.
	nop			;bdf3	00		.
	nop			;bdf4	00		.
	nop			;bdf5	00		.
	nop			;bdf6	00		.
	nop			;bdf7	00		.
	nop			;bdf8	00		.
	nop			;bdf9	00		.
	nop			;bdfa	00		.
	nop			;bdfb	00		.
	nop			;bdfc	00		.
	nop			;bdfd	00		.
	nop			;bdfe	00		.
	nop			;bdff	00		.
	nop			;be00	00		.
	nop			;be01	00		.
	nop			;be02	00		.
	nop			;be03	00		.
	nop			;be04	00		.
	nop			;be05	00		.
	nop			;be06	00		.
	nop			;be07	00		.
	nop			;be08	00		.
	nop			;be09	00		.
	nop			;be0a	00		.
	nop			;be0b	00		.
	nop			;be0c	00		.
	nop			;be0d	00		.
	nop			;be0e	00		.
	nop			;be0f	00		.
	nop			;be10	00		.
	nop			;be11	00		.
	nop			;be12	00		.
	nop			;be13	00		.
	nop			;be14	00		.
	nop			;be15	00		.
	nop			;be16	00		.
	nop			;be17	00		.
	nop			;be18	00		.
	nop			;be19	00		.
	nop			;be1a	00		.
	nop			;be1b	00		.
	nop			;be1c	00		.
	nop			;be1d	00		.
	nop			;be1e	00		.
	nop			;be1f	00		.
	nop			;be20	00		.
	nop			;be21	00		.
	nop			;be22	00		.
	nop			;be23	00		.
	nop			;be24	00		.
	nop			;be25	00		.
	nop			;be26	00		.
	nop			;be27	00		.
	nop			;be28	00		.
	nop			;be29	00		.
	nop			;be2a	00		.
	nop			;be2b	00		.
	nop			;be2c	00		.
	nop			;be2d	00		.
	nop			;be2e	00		.
	nop			;be2f	00		.
	nop			;be30	00		.
	nop			;be31	00		.
	nop			;be32	00		.
	nop			;be33	00		.
	nop			;be34	00		.
	nop			;be35	00		.
	nop			;be36	00		.
	nop			;be37	00		.
	nop			;be38	00		.
	nop			;be39	00		.
	nop			;be3a	00		.
	nop			;be3b	00		.
	nop			;be3c	00		.
	nop			;be3d	00		.
	nop			;be3e	00		.
	nop			;be3f	00		.
	nop			;be40	00		.
	nop			;be41	00		.
	nop			;be42	00		.
	nop			;be43	00		.
	nop			;be44	00		.
	nop			;be45	00		.
	nop			;be46	00		.
	nop			;be47	00		.
	nop			;be48	00		.
	nop			;be49	00		.
	nop			;be4a	00		.
	nop			;be4b	00		.
	nop			;be4c	00		.
	nop			;be4d	00		.
	nop			;be4e	00		.
	nop			;be4f	00		.
	nop			;be50	00		.
	nop			;be51	00		.
	nop			;be52	00		.
	nop			;be53	00		.
	nop			;be54	00		.
	nop			;be55	00		.
	nop			;be56	00		.
	nop			;be57	00		.
	nop			;be58	00		.
	nop			;be59	00		.
	nop			;be5a	00		.
	nop			;be5b	00		.
	nop			;be5c	00		.
	nop			;be5d	00		.
	nop			;be5e	00		.
	nop			;be5f	00		.
	nop			;be60	00		.
	nop			;be61	00		.
	nop			;be62	00		.
	nop			;be63	00		.
	nop			;be64	00		.
	nop			;be65	00		.
	nop			;be66	00		.
	nop			;be67	00		.
	nop			;be68	00		.
	nop			;be69	00		.
	nop			;be6a	00		.
	nop			;be6b	00		.
	nop			;be6c	00		.
	nop			;be6d	00		.
	nop			;be6e	00		.
	nop			;be6f	00		.
	nop			;be70	00		.
	nop			;be71	00		.
	nop			;be72	00		.
	nop			;be73	00		.
	nop			;be74	00		.
	nop			;be75	00		.
	nop			;be76	00		.
	nop			;be77	00		.
	nop			;be78	00		.
	nop			;be79	00		.
	nop			;be7a	00		.
	nop			;be7b	00		.
	nop			;be7c	00		.
	nop			;be7d	00		.
	nop			;be7e	00		.
	nop			;be7f	00		.
	nop			;be80	00		.
	nop			;be81	00		.
	nop			;be82	00		.
	nop			;be83	00		.
	nop			;be84	00		.
	nop			;be85	00		.
	nop			;be86	00		.
	nop			;be87	00		.
	nop			;be88	00		.
	nop			;be89	00		.
	nop			;be8a	00		.
	nop			;be8b	00		.
	nop			;be8c	00		.
	nop			;be8d	00		.
	nop			;be8e	00		.
	nop			;be8f	00		.
	nop			;be90	00		.
	nop			;be91	00		.
	nop			;be92	00		.
	nop			;be93	00		.
	nop			;be94	00		.
	nop			;be95	00		.
	nop			;be96	00		.
	nop			;be97	00		.
	nop			;be98	00		.
	nop			;be99	00		.
	nop			;be9a	00		.
	nop			;be9b	00		.
	nop			;be9c	00		.
	nop			;be9d	00		.
	nop			;be9e	00		.
	nop			;be9f	00		.
	nop			;bea0	00		.
	nop			;bea1	00		.
	nop			;bea2	00		.
	nop			;bea3	00		.
	nop			;bea4	00		.
	nop			;bea5	00		.
	nop			;bea6	00		.
	nop			;bea7	00		.
	nop			;bea8	00		.
	nop			;bea9	00		.
	nop			;beaa	00		.
	nop			;beab	00		.
	nop			;beac	00		.
	nop			;bead	00		.
	nop			;beae	00		.
	nop			;beaf	00		.
	nop			;beb0	00		.
	nop			;beb1	00		.
	nop			;beb2	00		.
	nop			;beb3	00		.
	nop			;beb4	00		.
	nop			;beb5	00		.
	nop			;beb6	00		.
	nop			;beb7	00		.
	nop			;beb8	00		.
	nop			;beb9	00		.
	nop			;beba	00		.
	nop			;bebb	00		.
	nop			;bebc	00		.
	nop			;bebd	00		.
	nop			;bebe	00		.
	nop			;bebf	00		.
	nop			;bec0	00		.
	nop			;bec1	00		.
	nop			;bec2	00		.
	nop			;bec3	00		.
	nop			;bec4	00		.
	nop			;bec5	00		.
	nop			;bec6	00		.
	nop			;bec7	00		.
	nop			;bec8	00		.
	nop			;bec9	00		.
	nop			;beca	00		.
	nop			;becb	00		.
	nop			;becc	00		.
	nop			;becd	00		.
	nop			;bece	00		.
	nop			;becf	00		.
	nop			;bed0	00		.
	nop			;bed1	00		.
	nop			;bed2	00		.
	nop			;bed3	00		.
	nop			;bed4	00		.
	nop			;bed5	00		.
	nop			;bed6	00		.
	nop			;bed7	00		.
	nop			;bed8	00		.
	nop			;bed9	00		.
	nop			;beda	00		.
	nop			;bedb	00		.
	nop			;bedc	00		.
	nop			;bedd	00		.
	nop			;bede	00		.
	nop			;bedf	00		.
	nop			;bee0	00		.
	nop			;bee1	00		.
	nop			;bee2	00		.
	nop			;bee3	00		.
	nop			;bee4	00		.
	nop			;bee5	00		.
	nop			;bee6	00		.
	nop			;bee7	00		.
	nop			;bee8	00		.
	nop			;bee9	00		.
	nop			;beea	00		.
	nop			;beeb	00		.
	nop			;beec	00		.
	nop			;beed	00		.
	nop			;beee	00		.
	nop			;beef	00		.
	nop			;bef0	00		.
	nop			;bef1	00		.
	nop			;bef2	00		.
	nop			;bef3	00		.
	nop			;bef4	00		.
	nop			;bef5	00		.
	nop			;bef6	00		.
	nop			;bef7	00		.
	nop			;bef8	00		.
	nop			;bef9	00		.
	nop			;befa	00		.
	nop			;befb	00		.
	nop			;befc	00		.
	nop			;befd	00		.
	nop			;befe	00		.
	nop			;beff	00		.
	nop			;bf00	00		.
	nop			;bf01	00		.
	nop			;bf02	00		.
	nop			;bf03	00		.
	nop			;bf04	00		.
	nop			;bf05	00		.
	nop			;bf06	00		.
	nop			;bf07	00		.
	nop			;bf08	00		.
	nop			;bf09	00		.
	nop			;bf0a	00		.
	nop			;bf0b	00		.
	nop			;bf0c	00		.
	nop			;bf0d	00		.
	nop			;bf0e	00		.
	nop			;bf0f	00		.
	nop			;bf10	00		.
	nop			;bf11	00		.
	nop			;bf12	00		.
	nop			;bf13	00		.
	nop			;bf14	00		.
	nop			;bf15	00		.
	nop			;bf16	00		.
	nop			;bf17	00		.
	nop			;bf18	00		.
	nop			;bf19	00		.
	nop			;bf1a	00		.
	nop			;bf1b	00		.
	nop			;bf1c	00		.
	nop			;bf1d	00		.
	nop			;bf1e	00		.
	nop			;bf1f	00		.
	nop			;bf20	00		.
	nop			;bf21	00		.
	nop			;bf22	00		.
	nop			;bf23	00		.
	nop			;bf24	00		.
	nop			;bf25	00		.
	nop			;bf26	00		.
	nop			;bf27	00		.
	nop			;bf28	00		.
	nop			;bf29	00		.
	nop			;bf2a	00		.
	nop			;bf2b	00		.
	nop			;bf2c	00		.
	nop			;bf2d	00		.
	nop			;bf2e	00		.
	nop			;bf2f	00		.
	nop			;bf30	00		.
	nop			;bf31	00		.
	nop			;bf32	00		.
	nop			;bf33	00		.
	nop			;bf34	00		.
	nop			;bf35	00		.
	nop			;bf36	00		.
	nop			;bf37	00		.
	nop			;bf38	00		.
	nop			;bf39	00		.
	nop			;bf3a	00		.
	nop			;bf3b	00		.
	nop			;bf3c	00		.
	nop			;bf3d	00		.
	nop			;bf3e	00		.
	nop			;bf3f	00		.
	nop			;bf40	00		.
	nop			;bf41	00		.
	nop			;bf42	00		.
	nop			;bf43	00		.
	nop			;bf44	00		.
	nop			;bf45	00		.
	nop			;bf46	00		.
	nop			;bf47	00		.
	nop			;bf48	00		.
	nop			;bf49	00		.
	nop			;bf4a	00		.
	nop			;bf4b	00		.
	nop			;bf4c	00		.
	nop			;bf4d	00		.
	nop			;bf4e	00		.
	nop			;bf4f	00		.
	nop			;bf50	00		.
	nop			;bf51	00		.
	nop			;bf52	00		.
	nop			;bf53	00		.
	nop			;bf54	00		.
	nop			;bf55	00		.
	nop			;bf56	00		.
	nop			;bf57	00		.
	nop			;bf58	00		.
	nop			;bf59	00		.
	nop			;bf5a	00		.
	nop			;bf5b	00		.
	nop			;bf5c	00		.
	nop			;bf5d	00		.
	nop			;bf5e	00		.
	nop			;bf5f	00		.
	nop			;bf60	00		.
	nop			;bf61	00		.
	nop			;bf62	00		.
	nop			;bf63	00		.
	nop			;bf64	00		.
	nop			;bf65	00		.
	nop			;bf66	00		.
	nop			;bf67	00		.
	nop			;bf68	00		.
	nop			;bf69	00		.
	nop			;bf6a	00		.
	nop			;bf6b	00		.
	nop			;bf6c	00		.
	nop			;bf6d	00		.
	nop			;bf6e	00		.
	nop			;bf6f	00		.
	nop			;bf70	00		.
	nop			;bf71	00		.
	nop			;bf72	00		.
	nop			;bf73	00		.
	nop			;bf74	00		.
	nop			;bf75	00		.
	nop			;bf76	00		.
	nop			;bf77	00		.
	nop			;bf78	00		.
	nop			;bf79	00		.
	nop			;bf7a	00		.
	nop			;bf7b	00		.
	nop			;bf7c	00		.
	nop			;bf7d	00		.
	nop			;bf7e	00		.
	nop			;bf7f	00		.
	nop			;bf80	00		.
	nop			;bf81	00		.
	nop			;bf82	00		.
	nop			;bf83	00		.
	nop			;bf84	00		.
	nop			;bf85	00		.
	nop			;bf86	00		.
	nop			;bf87	00		.
	nop			;bf88	00		.
	nop			;bf89	00		.
	nop			;bf8a	00		.
	nop			;bf8b	00		.
	nop			;bf8c	00		.
	nop			;bf8d	00		.
	nop			;bf8e	00		.
	nop			;bf8f	00		.
	nop			;bf90	00		.
	nop			;bf91	00		.
	nop			;bf92	00		.
	nop			;bf93	00		.
	nop			;bf94	00		.
	nop			;bf95	00		.
	nop			;bf96	00		.
	nop			;bf97	00		.
	nop			;bf98	00		.
	nop			;bf99	00		.
	nop			;bf9a	00		.
	nop			;bf9b	00		.
	nop			;bf9c	00		.
	nop			;bf9d	00		.
	nop			;bf9e	00		.
	nop			;bf9f	00		.
	nop			;bfa0	00		.
	nop			;bfa1	00		.
	nop			;bfa2	00		.
	nop			;bfa3	00		.
	nop			;bfa4	00		.
	nop			;bfa5	00		.
	nop			;bfa6	00		.
	nop			;bfa7	00		.
	nop			;bfa8	00		.
	nop			;bfa9	00		.
	nop			;bfaa	00		.
	nop			;bfab	00		.
	nop			;bfac	00		.
	nop			;bfad	00		.
	nop			;bfae	00		.
	nop			;bfaf	00		.
	nop			;bfb0	00		.
	nop			;bfb1	00		.
	nop			;bfb2	00		.
	nop			;bfb3	00		.
	nop			;bfb4	00		.
	nop			;bfb5	00		.
	nop			;bfb6	00		.
	nop			;bfb7	00		.
	nop			;bfb8	00		.
	nop			;bfb9	00		.
	nop			;bfba	00		.
	nop			;bfbb	00		.
	nop			;bfbc	00		.
	nop			;bfbd	00		.
	nop			;bfbe	00		.
	nop			;bfbf	00		.
	nop			;bfc0	00		.
	nop			;bfc1	00		.
	nop			;bfc2	00		.
	nop			;bfc3	00		.
	nop			;bfc4	00		.
	nop			;bfc5	00		.
	nop			;bfc6	00		.
	nop			;bfc7	00		.
	nop			;bfc8	00		.
	nop			;bfc9	00		.
	nop			;bfca	00		.
	nop			;bfcb	00		.
	nop			;bfcc	00		.
	nop			;bfcd	00		.
	nop			;bfce	00		.
	nop			;bfcf	00		.
	nop			;bfd0	00		.
	nop			;bfd1	00		.
	nop			;bfd2	00		.
	nop			;bfd3	00		.
	nop			;bfd4	00		.
	nop			;bfd5	00		.
	nop			;bfd6	00		.
	nop			;bfd7	00		.
	nop			;bfd8	00		.
	nop			;bfd9	00		.
	nop			;bfda	00		.
	nop			;bfdb	00		.
	nop			;bfdc	00		.
	nop			;bfdd	00		.
	nop			;bfde	00		.
	nop			;bfdf	00		.
	nop			;bfe0	00		.
	nop			;bfe1	00		.
	nop			;bfe2	00		.
	nop			;bfe3	00		.
	nop			;bfe4	00		.
	nop			;bfe5	00		.
	nop			;bfe6	00		.
	nop			;bfe7	00		.
	nop			;bfe8	00		.
	nop			;bfe9	00		.
	nop			;bfea	00		.
	nop			;bfeb	00		.
	nop			;bfec	00		.
	nop			;bfed	00		.
	nop			;bfee	00		.
	nop			;bfef	00		.
	nop			;bff0	00		.
	nop			;bff1	00		.
	nop			;bff2	00		.
	nop			;bff3	00		.
	nop			;bff4	00		.
	nop			;bff5	00		.
	nop			;bff6	00		.
	nop			;bff7	00		.
	nop			;bff8	00		.
	nop			;bff9	00		.
	nop			;bffa	00		.
	nop			;bffb	00		.
	nop			;bffc	00		.
	nop			;bffd	00		.
	nop			;bffe	00		.
	nop			;bfff	00		.
