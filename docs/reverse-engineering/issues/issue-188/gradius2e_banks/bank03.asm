; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x0000 -o docs/reverse-engineering/issues/issue-188/gradius2e_banks/bank03.asm /tmp/gradius2e_bank03.bin

	org 00000h

l0000h:
	jr nc,$-53		;0000
	ld a,(0e1c3h)		;0002
l0005h:
	rra			;0005
	rra			;0006
l0007h:
	and 003h		;0007
l0009h:
	ld hl,0a013h		;0009
sub_000ch:
	call 05ca6h		;000c
	ld (ix+031h),a		;000f
	ret			;0012
	ld b,008h		;0013
	add hl,bc		;0015
	ex af,af'		;0016
	ld hl,l1e01h		;0017
	ld (0e388h),hl		;001a
	xor a			;001d
	ld (0e38ah),a		;001e
l0021h:
	ld hl,0e3cah		;0021
	ld de,0e3cbh		;0024
	ld bc,l0005h		;0027
	ld (hl),a		;002a
	ldir			;002b
	call 04c24h		;002d
	ld (0e38bh),a		;0030
	ld a,0d2h		;0033
	ld (0e39fh),a		;0035
	ld a,01eh		;0038
	ld (0e389h),a		;003a
	ld hl,l0258h		;003d
	ld a,(0e20ah)		;0040
	or a			;0043
	jr z,l0049h		;0044
	ld hl,00384h		;0046
l0049h:
	ld (0e349h),hl		;0049
	ret			;004c
	ld a,(0e388h)		;004d
	or a			;0050
	ret z			;0051
	ld b,a			;0052
	ld hl,(0e349h)		;0053
	dec hl			;0056
	ld (0e349h),hl		;0057
	ld a,l			;005a
	or h			;005b
	jr z,l0066h		;005c
	dec b			;005e
	jr z,l006fh		;005f
	dec b			;0061
	jp z,0a108h		;0062
	ret			;0065
l0066h:
	xor a			;0066
	ld (0e388h),a		;0067
	inc a			;006a
	ld (0e348h),a		;006b
	ret			;006e
l006fh:
	ld hl,0e39fh		;006f
	dec (hl)		;0072
	jr nz,l009dh		;0073
	ld (hl),01eh		;0075
	ld a,002h		;0077
	ld (0e388h),a		;0079
	ld ix,0e500h		;007c
l0080h:
	ld de,00010h		;0080
	ld bc,00805h		;0083
	ld hl,001ffh		;0086
l0089h:
	ld a,(ix+000h)		;0089
	or a			;008c
	jr z,l0098h		;008d
	ld (ix+001h),c		;008f
	ld (ix+00dh),l		;0092
	ld (ix+002h),h		;0095
l0098h:
	add ix,de		;0098
	djnz l0089h		;009a
	ret			;009c
l009dh:
	ld hl,0e389h		;009d
	dec (hl)		;00a0
	ret nz			;00a1
	ld a,r			;00a2
	and 01fh		;00a4
	add a,020h		;00a6
	ld (hl),a		;00a8
	ld a,(0e20ah)		;00a9
	ld b,002h		;00ac
	or a			;00ae
	jr z,l00b2h		;00af
	inc b			;00b1
l00b2h:
	ld a,(0e38ah)		;00b2
	cp b			;00b5
	jr c,l00beh		;00b6
l00b8h:
	ld a,001h		;00b8
	ld (0e389h),a		;00ba
	ret			;00bd
l00beh:
	call 04c24h		;00be
	and 003h		;00c1
	cp 003h			;00c3
	jr nz,l00c8h		;00c5
	xor a			;00c7
l00c8h:
	ld b,a			;00c8
	ld hl,0e3cah		;00c9
	ld a,(0e38bh)		;00cc
	bit 0,a			;00cf
	jr z,l00d5h		;00d1
	ld l,0cdh		;00d3
l00d5h:
	ld a,b			;00d5
	add a,l			;00d6
	ld l,a			;00d7
	ld a,(hl)		;00d8
	or a			;00d9
	jr nz,l00b8h		;00da
	push hl			;00dc
	ld a,(0e38bh)		;00dd
	bit 0,a			;00e0
	ld a,b			;00e2
	jr z,l00e7h		;00e3
	add a,003h		;00e5
l00e7h:
	ld b,a			;00e7
	ld hl,0a0fch		;00e8
	call 04b67h		;00eb
	ld a,007h		;00ee
	call 087dch		;00f0
	pop hl			;00f3
l00f4h:
	ret nc			;00f4
	ld (hl),001h		;00f5
	ld hl,0e38ah		;00f7
	inc (hl)		;00fa
	ret			;00fb
	ex af,af'		;00fc
	and b			;00fd
	ex af,af'		;00fe
	ld h,b			;00ff
l0100h:
	ex af,af'		;0100
l0101h:
	jr nz,$+122		;0101
	and b			;0103
	ld a,b			;0104
	ld h,b			;0105
l0106h:
	ld a,b			;0106
	jr nz,$+35		;0107
	sbc a,a			;0109
	ex (sp),hl		;010a
	dec (hl)		;010b
	ret nz			;010c
	ld (hl),0d2h		;010d
	ld hl,0e38bh		;010f
	inc (hl)		;0112
	ld a,001h		;0113
	ld (0e388h),a		;0115
	ret			;0118
	ld a,(ix+006h)		;0119
	or a			;011c
	jp z,0a210h		;011d
l0120h:
	ld (ix+009h),008h	;0120
	ld (ix+00ah),006h	;0124
	ld (ix+00dh),0ffh	;0128
	ld (ix+008h),020h	;012c
	ld (ix+00eh),000h	;0130
	call 0a229h		;0134
	ld a,01fh		;0137
	jr c,l013dh		;0139
	ld a,027h		;013b
l013dh:
	ld (ix+007h),a		;013d
	ret			;0140
sub_0141h:
	ld a,(ix+006h)		;0141
	or a			;0144
	jr nz,l014ch		;0145
	ld (ix+000h),000h	;0147
	ret			;014b
l014ch:
	ld hl,0a22fh		;014c
	push hl			;014f
	ld a,(ix+001h)		;0150
	call 04084h		;0153
	ld h,h			;0156
	and c			;0157
	ld (hl),b		;0158
	and c			;0159
	ld a,(hl)		;015a
	and c			;015b
	xor d			;015c
	and c			;015d
	jp z,0f9a1h		;015e
	and c			;0161
	djnz l0106h		;0162
l0164h:
	ld a,(ix+006h)		;0164
	cp 0c1h			;0167
	ret nc			;0169
	ld (ix+002h),001h	;016a
	jr l017ah		;016e
	dec (ix+002h)		;0170
	jp nz,0a255h		;0173
	ld (ix+002h),004h	;0176
l017ah:
	inc (ix+001h)		;017a
	ret			;017d
	dec (ix+002h)		;017e
	ret nz			;0181
	ld (ix+002h),004h	;0182
	call 0a229h		;0186
	ld b,023h		;0189
	jr c,l018fh		;018b
	ld b,02bh		;018d
l018fh:
	inc (ix+007h)		;018f
	ld a,(ix+007h)		;0192
	cp b			;0195
	ret c			;0196
	ld a,r			;0197
	and 01fh		;0199
	add a,030h		;019b
	ld (ix+002h),a		;019d
	ld a,r			;01a0
	and 00fh		;01a2
	inc a			;01a4
	ld (ix+00ch),a		;01a5
	jr l017ah		;01a8
	dec (ix+002h)		;01aa
	jr z,l01b5h		;01ad
	call 0a294h		;01af
	jp 0a2b1h		;01b2
l01b5h:
	ld a,(0e388h)		;01b5
	or a			;01b8
	jr nz,l01c1h		;01b9
	ld (ix+002h),004h	;01bb
	jr l017ah		;01bf
l01c1h:
	ld (ix+002h),002h	;01c1
	ld (ix+001h),005h	;01c5
	ret			;01c9
	dec (ix+002h)		;01ca
	ret nz			;01cd
	ld (ix+002h),004h	;01ce
	call 0a229h		;01d2
	ld b,020h		;01d5
	jr c,l01dbh		;01d7
	ld b,028h		;01d9
l01dbh:
	dec (ix+007h)		;01db
	ld a,(ix+007h)		;01de
	cp b			;01e1
	ret nc			;01e2
	ld (ix+001h),001h	;01e3
	ld (ix+00eh),000h	;01e7
	ld a,(0e20ah)		;01eb
	or a			;01ee
	ld a,032h		;01ef
	jr z,l01f5h		;01f1
	ld a,01eh		;01f3
l01f5h:
	ld (ix+002h),a		;01f5
	ret			;01f8
	dec (ix+002h)		;01f9
	ret nz			;01fc
	ld (ix+002h),002h	;01fd
	ld (ix+00eh),001h	;0201
	call 0a27ah		;0205
	bit 0,(ix+00eh)		;0208
	ret nz			;020c
	jp 0a17ah		;020d
	ld a,(0e388h)		;0210
	or a			;0213
	jr z,l0224h		;0214
	ld a,(ix+00bh)		;0216
	ld hl,0e3cah		;0219
	add a,l			;021c
	ld l,a			;021d
	ld (hl),000h		;021e
	ld hl,0e38ah		;0220
	dec (hl)		;0223
l0224h:
	ld (ix+000h),000h	;0224
	ret			;0228
	ld a,(ix+004h)		;0229
	cp 040h			;022c
	ret			;022e
	ld a,(ix+006h)		;022f
	cp 0c1h			;0232
	ld a,0ffh		;0234
	jr nc,l0241h		;0236
	ld a,(ix+007h)		;0238
	ld hl,0a226h		;023b
	call 05ca6h		;023e
l0241h:
	ld (ix+00dh),a		;0241
	ret			;0244
	ld a,(bc)		;0245
	dec bc			;0246
	inc c			;0247
	dec c			;0248
	add hl,bc		;0249
	add hl,bc		;024a
	add hl,bc		;024b
	add hl,bc		;024c
	ld c,00fh		;024d
	djnz $+19		;024f
	add hl,bc		;0251
	add hl,bc		;0252
	add hl,bc		;0253
	add hl,bc		;0254
	ld a,(0e1c3h)		;0255
l0258h:
	and 007h		;0258
	ret nz			;025a
	bit 0,(ix+00eh)		;025b
	jr nz,l027ah		;025f
	call 0a229h		;0261
	ld b,021h		;0264
	jr c,l026ah		;0266
	ld b,029h		;0268
l026ah:
	inc (ix+007h)		;026a
	ld a,(ix+007h)		;026d
	cp b			;0270
	ret c			;0271
	ld (ix+007h),b		;0272
	ld (ix+00eh),001h	;0275
	ret			;0279
l027ah:
	call 0a229h		;027a
	ld b,020h		;027d
	jr c,l0283h		;027f
	ld b,028h		;0281
l0283h:
	dec (ix+007h)		;0283
	ld a,(ix+007h)		;0286
	cp b			;0289
	ret nc			;028a
	dec b			;028b
	ld (ix+007h),b		;028c
	ld (ix+00eh),000h	;028f
	ret			;0293
	ld a,(0e1c3h)		;0294
	and 003h		;0297
	ret nz			;0299
	call 0a229h		;029a
	ld bc,02723h		;029d
	jr c,l02a5h		;02a0
	ld bc,02f2bh		;02a2
l02a5h:
	inc (ix+007h)		;02a5
	ld a,(ix+007h)		;02a8
	cp b			;02ab
	ret c			;02ac
	ld (ix+007h),c		;02ad
	ret			;02b0
	ld a,(0e354h)		;02b1
	or a			;02b4
	ret nz			;02b5
	dec (ix+00ch)		;02b6
	ret nz			;02b9
	ld a,r			;02ba
	and 007h		;02bc
	inc a			;02be
	ld c,a			;02bf
	ld a,(ix+008h)		;02c0
	cp 018h			;02c3
	jr nc,l02cfh		;02c5
	sla c			;02c7
	cp 008h			;02c9
	jr nc,l02cfh		;02cb
	sla c			;02cd
l02cfh:
	ld (ix+00ch),c		;02cf
	call 0a229h		;02d2
	ld e,014h		;02d5
	jr c,l02dbh		;02d7
	ld e,00ch		;02d9
l02dbh:
	ld a,(ix+004h)		;02db
	add a,e			;02de
	ld e,a			;02df
	ld a,(ix+006h)		;02e0
	add a,018h		;02e3
	ld d,a			;02e5
	ld bc,l0000h		;02e6
	ld a,025h		;02e9
	jp 04d16h		;02eb
	ld de,l0000h		;02ee
	call 04efbh		;02f1
	ld de,0fe80h		;02f4
	jp 04f02h		;02f7
	call 06770h		;02fa
	ld a,(0e404h)		;02fd
l0300h:
	sub (ix+004h)		;0300
	push af			;0303
l0304h:
	add a,003h		;0304
	cp 007h			;0306
	jr c,l0321h		;0308
	pop af			;030a
	jr c,l0317h		;030b
	ld a,070h		;030d
	ld de,0fe80h		;030f
	ld bc,l0120h		;0312
	jr l0335h		;0315
l0317h:
	ld a,06ch		;0317
	ld de,0fe80h		;0319
	ld bc,0fee0h		;031c
	jr l0335h		;031f
l0321h:
	pop af			;0321
	ld a,(0e406h)		;0322
	sub (ix+006h)		;0325
	ld de,0fc80h		;0328
	jr c,l0330h		;032b
	ld de,0fe80h		;032d
l0330h:
	ld bc,l0000h		;0330
	ld a,068h		;0333
l0335h:
	ld (ix+030h),a		;0335
	call 04f02h		;0338
	ld d,b			;033b
	ld e,c			;033c
	jp 04efbh		;033d
	ld a,(ix+019h)		;0340
	and a			;0343
	jr z,l0351h		;0344
	cp 002h			;0346
	ld c,080h		;0348
	jr z,l034eh		;034a
	ld c,000h		;034c
l034eh:
	ld (ix+006h),c		;034e
l0351h:
	call 0a35dh		;0351
	ld (ix+026h),000h	;0354
	ld d,(ix+006h)		;0358
	jr l0385h		;035b
	xor a			;035d
	ld (ix+02ah),a		;035e
	ld (ix+02bh),a		;0361
	ret			;0364
	ld a,(ix+001h)		;0365
	and a			;0368
	jr z,l0374h		;0369
	dec (ix+025h)		;036b
	ret nz			;036e
	dec (ix+001h)		;036f
	jr l037dh		;0372
l0374h:
	dec (ix+025h)		;0374
	ret nz			;0377
	ld a,(ix+029h)		;0378
	and a			;037b
	ret nz			;037c
l037dh:
	call 0a40eh		;037d
	call 0a385h		;0380
	jr l03b7h		;0383
l0385h:
	ld a,(ix+001h)		;0385
	cp 002h			;0388
	ret z			;038a
	ld e,(ix+004h)		;038b
	ld a,040h		;038e
	call 04ebah		;0390
	xor a			;0393
	bit 7,(ix+008h)		;0394
	jr nz,l039bh		;0398
	inc a			;039a
l039bh:
	ld c,(ix+027h)		;039b
	ld (ix+02ah),c		;039e
	ld (ix+027h),a		;03a1
	xor a			;03a4
	bit 7,(ix+00ah)		;03a5
	jr nz,l03ach		;03a9
	inc a			;03ab
l03ach:
	ld c,(ix+028h)		;03ac
	ld (ix+02bh),c		;03af
	ld (ix+028h),a		;03b2
	jr l0402h		;03b5
l03b7h:
	ld a,(ix+02ah)		;03b7
	ld c,(ix+027h)		;03ba
	xor c			;03bd
	jr nz,l03e5h		;03be
	ld a,(ix+02bh)		;03c0
	ld c,(ix+028h)		;03c3
	xor c			;03c6
	ret z			;03c7
	inc (ix+001h)		;03c8
	call 04f17h		;03cb
	ld de,00180h		;03ce
	ld b,001h		;03d1
	ld a,(0e404h)		;03d3
	cp (ix+004h)		;03d6
	jr nc,l03dfh		;03d9
	dec b			;03db
	call 05cadh		;03dc
l03dfh:
	ld (ix+027h),b		;03df
	jp 04efbh		;03e2
l03e5h:
	inc (ix+001h)		;03e5
	call 04f17h		;03e8
	ld de,00180h		;03eb
	ld b,001h		;03ee
	ld a,(0e406h)		;03f0
	cp (ix+006h)		;03f3
	jr nc,l03fch		;03f6
	dec b			;03f8
	call 05cadh		;03f9
l03fch:
	ld (ix+028h),b		;03fc
	jp 04f02h		;03ff
l0402h:
	call 0637bh		;0402
	and 003h		;0405
	ld c,008h		;0407
	add a,c			;0409
	ld (ix+025h),a		;040a
	ret			;040d
	ld a,(ix+026h)		;040e
	ld hl,0a43fh		;0411
	call 0407ah		;0414
	ld l,(hl)		;0417
	ld a,(ix+026h)		;0418
	inc a			;041b
	and 007h		;041c
	ld (ix+026h),a		;041e
	ld a,(ix+001h)		;0421
	and a			;0424
	jr z,l0439h		;0425
	ld a,(0e404h)		;0427
	sub (ix+004h)		;042a
	jr nc,l0439h		;042d
	ld a,(ix+006h)		;042f
	sub l			;0432
l0433h:
	jr nc,l0437h		;0433
	neg			;0435
l0437h:
	ld d,a			;0437
	ret			;0438
l0439h:
	ld a,(ix+006h)		;0439
	add a,l			;043c
	jr l0433h		;043d
	djnz l044dh		;043f
	ex af,af'		;0441
	ld b,004h		;0442
	ld (bc),a		;0444
	ld bc,0ed00h		;0445
	ld e,a			;0448
	and 007h		;0449
	jr nz,l044fh		;044b
l044dh:
	ld a,008h		;044d
l044fh:
	ld (ix+025h),a		;044f
	ld (ix+010h),017h	;0452
	ld a,r			;0456
	and 007h		;0458
	ld hl,0a48dh		;045a
	call 0407ah		;045d
	ld a,(0e228h)		;0460
	add a,a			;0463
	add a,(hl)		;0464
	ld b,a			;0465
	ld h,(ix+004h)		;0466
	ld l,000h		;0469
	ld a,r			;046b
	and 003h		;046d
	jr nz,l0481h		;046f
	ld a,(0e406h)		;0471
	ld l,a			;0474
	ld a,(0e404h)		;0475
	ld c,a			;0478
	ld a,r			;0479
	and 03fh		;047b
	sub 020h		;047d
	add a,c			;047f
l0480h:
	ld h,a			;0480
l0481h:
	ld a,b			;0481
	jp 04ed7h		;0482
	add a,b			;0485
	add a,b			;0486
	nop			;0487
	ld b,b			;0488
	ret nz			;0489
	jr nc,$-46		;048a
	ld h,b			;048c
	and b			;048d
	ret nz			;048e
	or b			;048f
	sub b			;0490
	add a,b			;0491
	ld h,b			;0492
	ret nc			;0493
	sbc a,b			;0494
	ld a,(ix+031h)		;0495
	xor 001h		;0498
	ld (ix+031h),a		;049a
	call 0a4c9h		;049d
	ld h,(ix+006h)		;04a0
	ld l,(ix+004h)		;04a3
	call 05c92h		;04a6
	call 0a4b0h		;04a9
	jp c,06514h		;04ac
	ret			;04af
	ld a,(0e305h)		;04b0
	ld c,a			;04b3
	ld a,(hl)		;04b4
	and a			;04b5
	jr z,l04bah		;04b6
	cp c			;04b8
	ret c			;04b9
l04bah:
	ld a,(ix+006h)		;04ba
	cp 0f8h			;04bd
	ret nc			;04bf
	ld de,l0021h		;04c0
	add hl,de		;04c3
	ld a,(hl)		;04c4
	and a			;04c5
	ret z			;04c6
	cp c			;04c7
	ret			;04c8
	dec (ix+025h)		;04c9
	ret nz			;04cc
	ld (ix+025h),008h	;04cd
	ld a,(ix+030h)		;04d1
	add a,004h		;04d4
	cp 0e0h			;04d6
	jr nz,l04dch		;04d8
	ld a,0d4h		;04da
l04dch:
	ld (ix+030h),a		;04dc
	ret			;04df
	ld (ix+013h),002h	;04e0
	ld (ix+014h),002h	;04e4
	ld (ix+002h),004h	;04e8
	ld (ix+025h),00ah	;04ec
	ld (ix+015h),008h	;04f0
	ld b,039h		;04f4
	ld a,(ix+019h)		;04f6
	and a			;04f9
	jr nz,l0501h		;04fa
	inc b			;04fc
	ld (ix+006h),008h	;04fd
l0501h:
	ld (ix+032h),b		;0501
	ld (ix+00dh),003h	;0504
	jp 04f17h		;0508
	ld a,(ix+001h)		;050b
	and a			;050e
	jr nz,l0543h		;050f
	ld a,(ix+002h)		;0511
	cp 002h			;0514
	jr nz,l0520h		;0516
	ld a,(ix+00bh)		;0518
	xor 080h		;051b
	ld (ix+00bh),a		;051d
l0520h:
	dec (ix+002h)		;0520
	ret nz			;0523
	ld (ix+002h),004h	;0524
	dec (ix+025h)		;0528
	ret nz			;052b
	inc (ix+001h)		;052c
	set 7,(ix+00bh)		;052f
	call 04f17h		;0533
	ld de,0fd00h		;0536
	ld a,(ix+019h)		;0539
	and a			;053c
	call z,05cadh		;053d
	jp 04f02h		;0540
l0543h:
	dec (ix+015h)		;0543
	ret nz			;0546
	jp 0bb4ah		;0547
	ld a,(0e35ch)		;054a
	ld (ix+027h),a		;054d
	and a			;0550
	jr nz,l0572h		;0551
	push ix			;0553
	pop de			;0555
	ld hl,(0e35dh)		;0556
	inc l			;0559
	inc l			;055a
	inc l			;055b
	ld (hl),e		;055c
	inc l			;055d
	inc l			;055e
	ld (hl),d		;055f
l0560h:
	call 04f21h		;0560
	ld d,004h		;0563
	ld a,(0e35ah)		;0565
	rra			;0568
	call nc,05cadh		;0569
	call 04efbh		;056c
	or 0ffh			;056f
	ret			;0571
l0572h:
	ld hl,(0e35dh)		;0572
	inc l			;0575
	inc l			;0576
	inc l			;0577
	ld e,(hl)		;0578
	inc l			;0579
	inc l			;057a
	ld d,(hl)		;057b
	ex de,hl		;057c
	ld a,005h		;057d
	add a,l			;057f
	ld l,a			;0580
	ld a,(hl)		;0581
	ld (ix+005h),a		;0582
	inc l			;0585
	ld a,(hl)		;0586
	ld (ix+006h),a		;0587
	inc l			;058a
	ld (ix+025h),l		;058b
	ld (ix+026h),h		;058e
	jr l0560h		;0591
	call 0a612h		;0593
	ld a,(ix+001h)		;0596
	and a			;0599
	jr nz,l05e4h		;059a
	ld a,(ix+027h)		;059c
	and a			;059f
	jr nz,l05eeh		;05a0
	ld a,(0e404h)		;05a2
	bit 7,(ix+008h)		;05a5
	jr nz,l05b1h		;05a9
	cp (ix+004h)		;05ab
	ret nc			;05ae
	jr l05b5h		;05af
l05b1h:
	cp (ix+004h)		;05b1
	ret c			;05b4
l05b5h:
	ld de,0fd00h		;05b5
	ld a,(0e406h)		;05b8
	cp (ix+006h)		;05bb
	call nc,05cadh		;05be
	call 04f02h		;05c1
l05c4h:
	inc (ix+001h)		;05c4
	call 0a621h		;05c7
	ld bc,0ff80h		;05ca
	ld a,(ix+027h)		;05cd
	and a			;05d0
	jr z,l05d9h		;05d1
	call 05cadh		;05d3
	ld bc,l0080h		;05d6
l05d9h:
	call 04efbh		;05d9
	call 062b6h		;05dc
	ld d,b			;05df
	ld e,c			;05e0
	jp 062a8h		;05e1
l05e4h:
	call 062c2h		;05e4
	call 062e8h		;05e7
	jp z,0629fh		;05ea
	ret			;05ed
l05eeh:
	ld l,(ix+025h)		;05ee
	ld h,(ix+026h)		;05f1
	ld a,l			;05f4
	ld c,l			;05f5
	sub 007h		;05f6
	ld l,a			;05f8
	ld a,(hl)		;05f9
	and a			;05fa
	jr z,l060dh		;05fb
	ld l,c			;05fd
	inc hl			;05fe
	inc hl			;05ff
	ld a,(hl)		;0600
	inc hl			;0601
	ld c,(hl)		;0602
	or c			;0603
	ret z			;0604
	ld d,(hl)		;0605
	dec hl			;0606
	ld e,(hl)		;0607
	call 04f02h		;0608
	jr l05c4h		;060b
l060dh:
	ld (ix+027h),000h	;060d
	ret			;0611
	ld a,(0e1c3h)		;0612
	and 007h		;0615
	ret nz			;0617
	ld a,(ix+030h)		;0618
	xor 004h		;061b
	ld (ix+030h),a		;061d
	ret			;0620
	ld hl,0a62ch		;0621
	ld a,(0e228h)		;0624
	srl a			;0627
	jp 04b67h		;0629
	add a,b			;062c
	ld (bc),a		;062d
	add a,b			;062e
	ld (bc),a		;062f
	add a,b			;0630
	ld (bc),a		;0631
	nop			;0632
	inc bc			;0633
	nop			;0634
	inc bc			;0635
	add a,b			;0636
	inc bc			;0637
	nop			;0638
	inc b			;0639
	nop			;063a
	inc b			;063b
	call 04e93h		;063c
	ld a,00ch		;063f
	ld (ix+006h),a		;0641
	ld b,000h		;0644
	ld a,(ix+004h)		;0646
	cp 060h			;0649
	jr c,l064eh		;064b
	inc b			;064d
l064eh:
	ld (ix+025h),b		;064e
	ld (ix+013h),002h	;0651
	ld (ix+014h),002h	;0655
	call 04f17h		;0659
	ld de,00400h		;065c
	jp 04f02h		;065f
	ld a,(0e20ah)		;0662
	and a			;0665
	call nz,0a711h		;0666
	call 0a704h		;0669
	ld a,(ix+001h)		;066c
	dec a			;066f
	jr z,l069fh		;0670
	dec a			;0672
	jr z,l06c2h		;0673
	dec a			;0675
	jr z,l06e7h		;0676
	dec a			;0678
	ret z			;0679
	ld bc,0b0b2h		;067a
	ld a,(ix+025h)		;067d
	and a			;0680
	jr z,l0684h		;0681
	ld b,c			;0683
l0684h:
	ld a,(ix+006h)		;0684
	cp b			;0687
	ret c			;0688
	inc (ix+001h)		;0689
	ld de,00400h		;068c
	ld a,(ix+025h)		;068f
	and a			;0692
	call nz,05cadh		;0693
	call 04efbh		;0696
	ld de,0fc00h		;0699
	jp 04f02h		;069c
l069fh:
	ld bc,08c90h		;069f
	ld a,(ix+025h)		;06a2
	and a			;06a5
	jr z,l06a9h		;06a6
	ld b,c			;06a8
l06a9h:
	ld a,(ix+006h)		;06a9
	cp b			;06ac
	ret nc			;06ad
	ld a,(ix+004h)		;06ae
	and 0f8h		;06b1
	ld (ix+004h),a		;06b3
	inc (ix+001h)		;06b6
	call 04f17h		;06b9
	ld de,0fc00h		;06bc
	jp 04f02h		;06bf
l06c2h:
	ld bc,05458h		;06c2
	ld a,(ix+025h)		;06c5
	and a			;06c8
	jr z,l06cch		;06c9
	ld b,c			;06cb
l06cch:
	ld a,(ix+006h)		;06cc
	cp b			;06cf
	ret nc			;06d0
	inc (ix+001h)		;06d1
	ld de,00400h		;06d4
	ld a,(ix+025h)		;06d7
	and a			;06da
	call nz,05cadh		;06db
	call 04efbh		;06de
	ld de,00400h		;06e1
	jp 04f02h		;06e4
l06e7h:
	ld bc,07478h		;06e7
	ld a,(ix+025h)		;06ea
	and a			;06ed
	jr z,l06f1h		;06ee
	ld b,c			;06f0
l06f1h:
	ld a,(ix+006h)		;06f1
	cp b			;06f4
	ret c			;06f5
	ld a,(ix+004h)		;06f6
	and 0f8h		;06f9
	ld (ix+004h),a		;06fb
	inc (ix+001h)		;06fe
	jp 0a659h		;0701
	ld bc,l0304h		;0704
	ld hl,0a70dh		;0707
	jp 06361h		;070a
	ld hl,02322h		;070d
	inc h			;0710
	dec (ix+015h)		;0711
	ret nz			;0714
	call 04e93h		;0715
	jp 0bb4ah		;0718
	ld (ix+024h),001h	;071b
	call 04c24h		;071f
	and 006h		;0722
	ld b,a			;0724
	add a,a			;0725
	add a,b			;0726
	ld hl,0a741h		;0727
	call 0407ah		;072a
	ld e,(hl)		;072d
	inc hl			;072e
	ld d,(hl)		;072f
	inc hl			;0730
	call 04efbh		;0731
	ld e,(hl)		;0734
	inc hl			;0735
	ld d,(hl)		;0736
	inc hl			;0737
	call 04f02h		;0738
	ld e,(hl)		;073b
	inc hl			;073c
	ld d,(hl)		;073d
	jp 062a8h		;073e
	nop			;0741
	jp m,0fe80h		;0742
	add a,b			;0745
	nop			;0746
	nop			;0747
	ret m			;0748
	nop			;0749
	cp 080h			;074a
	nop			;074c
	nop			;074d
	jp m,l0300h		;074e
	add a,b			;0751
	nop			;0752
	nop			;0753
	ret m			;0754
	nop			;0755
	rst 38h			;0756
	add a,b			;0757
	nop			;0758
l0759h:
	ld bc,(0e3c7h)		;0759
	ld de,l0000h		;075d
	call 0a93fh		;0760
	jr l078ch		;0763
	ld a,(0e3d0h)		;0765
	or a			;0768
	ret nz			;0769
	ld a,(0e400h)		;076a
	or a			;076d
	jp m,0a9ach		;076e
	ret z			;0771
	ld a,(0e22bh)		;0772
	or a			;0775
	jr nz,l078ch		;0776
	ld a,(0e3bfh)		;0778
	or a			;077b
	jr nz,l0759h		;077c
	ld a,(0e3c0h)		;077e
	or a			;0781
	ret nz			;0782
	call 0a902h		;0783
	call 0a93fh		;0786
	call 0a8c5h		;0789
l078ch:
	call 0a82eh		;078c
	ld a,(0e400h)		;078f
	cp 003h			;0792
	jp z,0a7beh		;0794
	ld bc,0e1c9h		;0797
	ld a,(0f0f5h)		;079a
	bit 2,a			;079d
	jr nz,l07f8h		;079f
	ld a,(bc)		;07a1
	and 003h		;07a2
	cp 003h			;07a4
	jp nz,0a7aah		;07a6
	xor a			;07a9
	add a,a			;07aa
	add a,a			;07ab
	ld c,a			;07ac
	ld a,(0e400h)		;07ad
	dec a			;07b0
	jr z,l07beh		;07b1
	ld a,(0e1c3h)		;07b3
	and 004h		;07b6
	jr z,l07beh		;07b8
	ld a,c			;07ba
	add a,00ch		;07bb
	ld c,a			;07bd
l07beh:
	ld b,000h		;07be
	add hl,bc		;07c0
	ld de,0e407h		;07c1
	ldi			;07c4
	ldi			;07c6
	ldi			;07c8
	ldi			;07ca
	ld a,(0e400h)		;07cc
	cp 002h			;07cf
	jr nz,l07e7h		;07d1
	ld a,(0e401h)		;07d3
	dec a			;07d6
	jr nz,l07e7h		;07d7
	ld a,(0e1c3h)		;07d9
	bit 1,a			;07dc
	ld a,006h		;07de
	jr z,l07e4h		;07e0
	ld a,009h		;07e2
l07e4h:
	ld (0e40ah),a		;07e4
l07e7h:
	ld a,(0e446h)		;07e7
	or a			;07ea
	ret z			;07eb
l07ech:
	ld a,003h		;07ec
	ld (0e408h),a		;07ee
	ret			;07f1
	ld hl,0a8adh		;07f2
	jp 0a7c1h		;07f5
l07f8h:
	ld de,0e407h		;07f8
	ldi			;07fb
	ldi			;07fd
	ldi			;07ff
	ldi			;0801
	ld a,(0e446h)		;0803
	or a			;0806
	jr nz,l07ech		;0807
	ld a,(0e400h)		;0809
	ld b,00ah		;080c
	cp 003h			;080e
l0810h:
	jr z,l0828h		;0810
	cp 002h			;0812
	ret nz			;0814
	ld a,(0e401h)		;0815
	dec a			;0818
	ld b,002h		;0819
	jr nz,l0828h		;081b
	ld a,(0e1c3h)		;081d
	bit 1,a			;0820
	ld b,006h		;0822
	jr z,l0828h		;0824
	ld b,009h		;0826
l0828h:
	ld a,b			;0828
	ld (0e40ah),a		;0829
	jr l07e7h		;082c
	ld a,(0e400h)		;082e
	cp 003h			;0831
	jr z,l0846h		;0833
	ld b,a			;0835
	ld a,(0f0f5h)		;0836
	bit 2,a			;0839
	jr nz,l0862h		;083b
	dec b			;083d
	ld hl,0a889h		;083e
	ret z			;0841
	ld hl,0a895h		;0842
	ret			;0845
l0846h:
	ld hl,0e440h		;0846
	dec (hl)		;0849
	jr nz,l085eh		;084a
	ld (hl),003h		;084c
	inc l			;084e
	inc (hl)		;084f
	ld a,(hl)		;0850
	cp 006h			;0851
	jr c,l0857h		;0853
	xor a			;0855
	ld (hl),a		;0856
l0857h:
	ld hl,0a8adh		;0857
	add a,a			;085a
	add a,a			;085b
	ld c,a			;085c
	ret			;085d
l085eh:
	inc l			;085e
	ld a,(hl)		;085f
	jr l0857h		;0860
l0862h:
	ld a,(0e1c2h)		;0862
	add a,a			;0865
	ld hl,0a879h		;0866
	jr nc,l086eh		;0869
	ld hl,0a881h		;086b
l086eh:
	ld a,(0e1c3h)		;086e
	bit 3,a			;0871
	ret z			;0873
	ld de,00004h		;0874
	add hl,de		;0877
	ret			;0878
	nop			;0879
	rrca			;087a
	inc b			;087b
	inc b			;087c
	ex af,af'		;087d
	rrca			;087e
	inc c			;087f
	inc b			;0880
	nop			;0881
	rrca			;0882
	inc b			;0883
	dec c			;0884
	ex af,af'		;0885
	rrca			;0886
	inc c			;0887
	dec c			;0888
	nop			;0889
	rrca			;088a
	inc b			;088b
	ex af,af'		;088c
	djnz l089eh		;088d
	inc d			;088f
	dec b			;0890
	ex af,af'		;0891
	rrca			;0892
	inc c			;0893
	ex af,af'		;0894
	nop			;0895
	rrca			;0896
	inc l			;0897
	rrca			;0898
	nop			;0899
	rrca			;089a
	inc l			;089b
	rrca			;089c
	ex af,af'		;089d
l089eh:
	rrca			;089e
	inc (hl)		;089f
	rrca			;08a0
	nop			;08a1
	rrca			;08a2
	jr nc,$+9		;08a3
	nop			;08a5
	rrca			;08a6
	jr nc,l08b0h		;08a7
	ex af,af'		;08a9
	rrca			;08aa
	jr c,l08b4h		;08ab
	nop			;08ad
	add hl,bc		;08ae
	inc b			;08af
l08b0h:
	rrca			;08b0
	ex af,af'		;08b1
	add hl,bc		;08b2
	inc c			;08b3
l08b4h:
	rrca			;08b4
	djnz l08c0h		;08b5
	inc d			;08b7
	rrca			;08b8
	inc l			;08b9
	rrca			;08ba
	jr nc,l08c2h		;08bb
	inc c			;08bd
	dec b			;08be
	nop			;08bf
l08c0h:
	nop			;08c0
	inc (hl)		;08c1
l08c2h:
	rrca			;08c2
	jr c,$+7		;08c3
	ld hl,0e406h		;08c5
	ld a,(hl)		;08c8
	cp 008h			;08c9
	jr nc,l08cfh		;08cb
	ld a,008h		;08cd
l08cfh:
	cp 0d9h			;08cf
	jr c,l08d5h		;08d1
	ld a,0d8h		;08d3
l08d5h:
	ld (hl),a		;08d5
	dec l			;08d6
	dec l			;08d7
	ld a,(hl)		;08d8
	add a,010h		;08d9
	ld c,a			;08db
	ld a,(0e201h)		;08dc
	or a			;08df
	jr z,l08f7h		;08e0
	cp 004h			;08e2
	jr nc,l08f7h		;08e4
	ld a,c			;08e6
	cp 013h			;08e7
	jr nc,l08edh		;08e9
	ld a,013h		;08eb
l08edh:
	cp 0b6h			;08ed
	jr c,l08f3h		;08ef
	ld a,0b5h		;08f1
l08f3h:
	sub 010h		;08f3
	ld (hl),a		;08f5
	ret			;08f6
l08f7h:
	ld a,c			;08f7
	cp 010h			;08f8
	jp nc,0a8ffh		;08fa
	ld a,010h		;08fd
	jp 0a8edh		;08ff
	ld a,(0e1c9h)		;0902
	and 00fh		;0905
	add a,a			;0907
	add a,a			;0908
	ld c,a			;0909
	ld b,000h		;090a
	ld hl,0a94eh		;090c
	add hl,bc		;090f
	ld e,(hl)		;0910
	inc hl			;0911
	ld d,(hl)		;0912
	inc hl			;0913
	ld c,(hl)		;0914
	inc hl			;0915
	ld b,(hl)		;0916
	ld (0f002h),bc		;0917
	ld a,(0e402h)		;091b
	add a,003h		;091e
	ld (0f000h),a		;0920
	ld b,a			;0923
	ld l,e			;0924
	ld h,d			;0925
l0926h:
	add hl,de		;0926
	djnz l0926h		;0927
	ld (0f004h),hl		;0929
	ld hl,(0f002h)		;092c
	ld e,l			;092f
	ld d,h			;0930
	ld a,(0f000h)		;0931
	ld b,a			;0934
l0935h:
	add hl,de		;0935
	djnz l0935h		;0936
	ld c,l			;0938
	ld b,h			;0939
	ld de,(0f004h)		;093a
	ret			;093e
	ld hl,(0e403h)		;093f
	add hl,de		;0942
	ld (0e403h),hl		;0943
	ld hl,(0e405h)		;0946
	add hl,bc		;0949
	ld (0e405h),hl		;094a
	ret			;094d
	nop			;094e
	nop			;094f
	nop			;0950
	nop			;0951
	add a,b			;0952
	rst 38h			;0953
	nop			;0954
	nop			;0955
	add a,b			;0956
	nop			;0957
	nop			;0958
	nop			;0959
	nop			;095a
	nop			;095b
	nop			;095c
	nop			;095d
	nop			;095e
	nop			;095f
	add a,b			;0960
	rst 38h			;0961
	add a,b			;0962
	rst 38h			;0963
	add a,b			;0964
	rst 38h			;0965
	add a,b			;0966
	nop			;0967
	add a,b			;0968
	rst 38h			;0969
	nop			;096a
	nop			;096b
	add a,b			;096c
	rst 38h			;096d
	nop			;096e
	nop			;096f
	add a,b			;0970
	nop			;0971
	add a,b			;0972
	rst 38h			;0973
	add a,b			;0974
	nop			;0975
	add a,b			;0976
	nop			;0977
	add a,b			;0978
	nop			;0979
	nop			;097a
	nop			;097b
	add a,b			;097c
	nop			;097d
	nop			;097e
	nop			;097f
	nop			;0980
	nop			;0981
	add a,b			;0982
	rst 38h			;0983
	nop			;0984
	nop			;0985
	add a,b			;0986
	nop			;0987
	nop			;0988
	nop			;0989
	nop			;098a
	nop			;098b
	nop			;098c
	nop			;098d
l098eh:
	xor a			;098e
	ld (0e1d3h),a		;098f
	ret			;0992
	ld hl,0e400h		;0993
	ld a,(hl)		;0996
	or a			;0997
	ret m			;0998
	xor a			;0999
	ld (0e44eh),a		;099a
	dec a			;099d
	ld (hl),a		;099e
	ld (0e410h),a		;099f
	ld (0e420h),a		;09a2
	xor a			;09a5
	call 0a9b8h		;09a6
	jp 042ddh		;09a9
	ld hl,0e44fh		;09ac
	dec (hl)		;09af
	ret nz			;09b0
	dec l			;09b1
	inc (hl)		;09b2
	ld a,(hl)		;09b3
	cp 004h			;09b4
	jr nc,l098eh		;09b6
	ld hl,0a9f4h		;09b8
	call 04b67h		;09bb
	ex de,hl		;09be
	ld a,(hl)		;09bf
	ld (0e44fh),a		;09c0
	inc hl			;09c3
	ld a,(0e404h)		;09c4
	ld c,a			;09c7
	ld a,(0e406h)		;09c8
	ld b,a			;09cb
	ld de,0e418h		;09cc
	call 0a9e1h		;09cf
	ld de,0e41ch		;09d2
	call 0a9e1h		;09d5
	ld de,0e428h		;09d8
	call 0a9e1h		;09db
	ld de,0e42ch		;09de
	ld a,(hl)		;09e1
	add a,c			;09e2
	ld (de),a		;09e3
	inc hl			;09e4
	inc de			;09e5
	ld a,(hl)		;09e6
	add a,b			;09e7
	ld (de),a		;09e8
	inc hl			;09e9
	inc de			;09ea
	ld a,(hl)		;09eb
	ld (de),a		;09ec
	inc hl			;09ed
	inc de			;09ee
	ld a,(hl)		;09ef
	ld (de),a		;09f0
	inc hl			;09f1
	inc de			;09f2
	ret			;09f3
	ld e,0aah		;09f4
	call m,sub_0da9h	;09f6
	xor d			;09f9
	ld e,0aah		;09fa
	inc d			;09fc
	nop			;09fd
	nop			;09fe
	djnz l0a0ah		;09ff
	nop			;0a01
	nop			;0a02
	inc d			;0a03
	rrca			;0a04
	nop			;0a05
	ret m			;0a06
	inc c			;0a07
	ld b,000h		;0a08
l0a0ah:
	ex af,af'		;0a0a
	inc a			;0a0b
	ld b,00ah		;0a0c
	nop			;0a0e
	nop			;0a0f
	inc b			;0a10
	add hl,bc		;0a11
	nop			;0a12
	nop			;0a13
	ex af,af'		;0a14
	rrca			;0a15
	nop			;0a16
	ret m			;0a17
	nop			;0a18
	ld b,000h		;0a19
	ex af,af'		;0a1b
	jr c,l0a24h		;0a1c
	ld a,(bc)		;0a1e
	nop			;0a1f
	nop			;0a20
	inc (hl)		;0a21
	rrca			;0a22
	nop			;0a23
l0a24h:
	nop			;0a24
	jr nc,l0a30h		;0a25
	nop			;0a27
	nop			;0a28
	inc l			;0a29
	ld b,000h		;0a2a
	nop			;0a2c
	inc l			;0a2d
	ld b,011h		;0a2e
l0a30h:
	ld d,b			;0a30
	call po,0103eh		;0a31
l0a34h:
	ld hl,0e404h		;0a34
	ldi			;0a37
	inc l			;0a39
	ldi			;0a3a
	dec a			;0a3c
	jr nz,l0a34h		;0a3d
	ld (0e40eh),a		;0a3f
	ret			;0a42
	ld a,(0e40bh)		;0a43
	dec a			;0a46
	ld hl,0e410h		;0a47
	jr z,l0a4eh		;0a4a
	ld l,020h		;0a4c
l0a4eh:
	ld (hl),001h		;0a4e
	jp 0aaech		;0a50
	ld a,(0e400h)		;0a53
	dec a			;0a56
	ret m			;0a57
	ld a,(0e40bh)		;0a58
	or a			;0a5b
	ret z			;0a5c
	ld a,(0f0f5h)		;0a5d
	bit 2,a			;0a60
	ld b,002h		;0a62
	jr z,l0a68h		;0a64
	ld b,004h		;0a66
l0a68h:
	ld hl,0e40ch		;0a68
	inc (hl)		;0a6b
	ld a,(hl)		;0a6c
	cp b			;0a6d
	ret c			;0a6e
	ld (hl),000h		;0a6f
	inc l			;0a71
	inc (hl)		;0a72
	ld a,(0e40bh)		;0a73
	dec a			;0a76
	jr z,l0a7fh		;0a77
	ld de,0e427h		;0a79
	call 0aa82h		;0a7c
l0a7fh:
	ld de,0e417h		;0a7f
	ld a,(0e40dh)		;0a82
	and 003h		;0a85
	add a,a			;0a87
	ld hl,0aa93h		;0a88
	call 0407ah		;0a8b
	ldi			;0a8e
	ldi			;0a90
	ret			;0a92
	inc a			;0a93
	ld a,(bc)		;0a94
	inc a			;0a95
	add hl,bc		;0a96
	ld b,b			;0a97
	ex af,af'		;0a98
	ld b,b			;0a99
	ld b,03ah		;0a9a
	nop			;0a9c
	call po,0f83dh		;0a9d
	ld a,(0e3d0h)		;0aa0
	or a			;0aa3
	ret nz			;0aa4
	ld a,(0e22bh)		;0aa5
	or a			;0aa8
	ret nz			;0aa9
	ld a,(0e439h)		;0aaa
	cp 003h			;0aad
	ret z			;0aaf
	ld hl,0e3c2h		;0ab0
	ld a,(0e3c0h)		;0ab3
	or a			;0ab6
	jr nz,l0ac2h		;0ab7
	ld a,(0e3bfh)		;0ab9
	or a			;0abc
	jr nz,l0ac2h		;0abd
	ld hl,0e1c9h		;0abf
l0ac2h:
	ld a,(hl)		;0ac2
	and 00fh		;0ac3
	ret z			;0ac5
	cp 003h			;0ac6
	ret z			;0ac8
	cp 00ch			;0ac9
	ret z			;0acb
	cp 00fh			;0acc
	ret z			;0ace
	ld hl,0e450h		;0acf
	ld a,(0e40eh)		;0ad2
	add a,a			;0ad5
	add a,l			;0ad6
	ld l,a			;0ad7
	ld a,(0e404h)		;0ad8
	ld (hl),a		;0adb
	ld a,(0e406h)		;0adc
	inc l			;0adf
	ld (hl),a		;0ae0
	ld hl,0e40eh		;0ae1
	inc (hl)		;0ae4
	ld a,(hl)		;0ae5
	cp 010h			;0ae6
	jr c,l0aech		;0ae8
	ld (hl),000h		;0aea
l0aech:
	ld hl,0e40eh		;0aec
	ld a,(0e40bh)		;0aef
	dec a			;0af2
	ret m			;0af3
	jr z,l0afdh		;0af4
	ld bc,0e424h		;0af6
	ld a,(hl)		;0af9
	call 0ab07h		;0afa
l0afdh:
	ld bc,0e414h		;0afd
	ld a,(hl)		;0b00
	sub 008h		;0b01
	jr nc,l0b07h		;0b03
	add a,010h		;0b05
l0b07h:
	add a,a			;0b07
	ld de,0e450h		;0b08
	add a,e			;0b0b
	ld e,a			;0b0c
	ld a,(de)		;0b0d
	ld (bc),a		;0b0e
	inc e			;0b0f
	inc c			;0b10
	inc c			;0b11
	ld a,(de)		;0b12
	ld (bc),a		;0b13
	ret			;0b14
	ld a,(0e400h)		;0b15
	dec a			;0b18
	ret m			;0b19
	ld a,(0e439h)		;0b1a
	cp 003h			;0b1d
	ret nz			;0b1f
	ld a,(0e40bh)		;0b20
	dec a			;0b23
	ret m			;0b24
	jr z,l0b34h		;0b25
	exx			;0b27
	ld hl,0e424h		;0b28
	exx			;0b2b
	ld a,(0e1c3h)		;0b2c
	and 00fh		;0b2f
	call 0ab44h		;0b31
l0b34h:
	exx			;0b34
	ld hl,0e414h		;0b35
	exx			;0b38
	ld a,(0e1c3h)		;0b39
	and 00fh		;0b3c
	sub 008h		;0b3e
	jr nc,l0b44h		;0b40
	add a,010h		;0b42
l0b44h:
	ld hl,0e404h		;0b44
	ld de,0ab72h		;0b47
	add a,a			;0b4a
	call 0407fh		;0b4b
	ld a,(de)		;0b4e
	add a,(hl)		;0b4f
	inc l			;0b50
	inc l			;0b51
	exx			;0b52
	ld (hl),a		;0b53
	inc l			;0b54
	inc l			;0b55
	exx			;0b56
	inc de			;0b57
	ld a,(de)		;0b58
	or a			;0b59
	jp p,0ab69h		;0b5a
	neg			;0b5d
	ld d,a			;0b5f
	ld a,(hl)		;0b60
	sub d			;0b61
	jr nc,l0b65h		;0b62
	xor a			;0b64
l0b65h:
	exx			;0b65
	ld (hl),a		;0b66
	exx			;0b67
	ret			;0b68
	ld a,(de)		;0b69
	add a,(hl)		;0b6a
	jr nc,l0b65h		;0b6b
	ld a,0f8h		;0b6d
	jp 0ab65h		;0b6f
	ret po			;0b72
	nop			;0b73
	ex (sp),hl		;0b74
l0b75h:
	inc c			;0b75
	jp pe,0f416h		;0b76
	dec e			;0b79
	nop			;0b7a
	jr nz,l0b89h		;0b7b
	dec e			;0b7d
	ld d,016h		;0b7e
	dec e			;0b80
	inc c			;0b81
	jr nz,l0b84h		;0b82
l0b84h:
	dec e			;0b84
	call p,0ea16h		;0b85
	inc c			;0b88
l0b89h:
	ex (sp),hl		;0b89
	nop			;0b8a
	ret po			;0b8b
	call p,0eae3h		;0b8c
	jp pe,0f4e3h		;0b8f
	ld iy,0e470h		;0b92
	ld b,009h		;0b96
l0b98h:
	push bc			;0b98
	call 0aba5h		;0b99
	ld bc,00010h		;0b9c
	add iy,bc		;0b9f
	pop bc			;0ba1
	djnz l0b98h		;0ba2
	ret			;0ba4
	ld a,(iy+000h)		;0ba5
	or a			;0ba8
	ret z			;0ba9
	ld b,a			;0baa
	sub 007h		;0bab
	jr c,l0bbdh		;0bad
	sub 002h		;0baf
	jr z,l0bbdh		;0bb1
	sub 005h		;0bb3
	cp 002h			;0bb5
	jr c,l0bbdh		;0bb7
	ld hl,082feh		;0bb9
	push hl			;0bbc
l0bbdh:
	ld a,b			;0bbd
	dec a			;0bbe
	call 04084h		;0bbf
	rst 10h			;0bc2
	xor h			;0bc3
	ex (sp),hl		;0bc4
	xor h			;0bc5
	jr nz,l0b75h		;0bc6
	ld bc,001b1h		;0bc8
	or c			;0bcb
	or l			;0bcc
	or c			;0bcd
	ld b,0aeh		;0bce
	add a,h			;0bd0
	xor (hl)		;0bd1
	ld (hl),0afh		;0bd2
	or (hl)			;0bd4
	xor (hl)		;0bd5
	jp z,0daaeh		;0bd6
	xor (hl)		;0bd9
	xor (iy-05ah)		;0bda
	xor a			;0bdd
	jr z,$-78		;0bde
l0be0h:
	xor a			;0be0
	ld (0e437h),a		;0be1
	ret			;0be4
	ld b,000h		;0be5
	ld a,(0e400h)		;0be7
	dec a			;0bea
	ret m			;0beb
	ld a,(0e3d0h)		;0bec
	or a			;0bef
	ret nz			;0bf0
	ld a,(0e22bh)		;0bf1
	or a			;0bf4
	ret nz			;0bf5
	ld a,(0e3c0h)		;0bf6
	or a			;0bf9
	ret nz			;0bfa
	inc b			;0bfb
	ret			;0bfc
	call 0abe5h		;0bfd
	dec b			;0c00
	ret nz			;0c01
	ld a,(0e1c8h)		;0c02
	and 010h		;0c05
	jr nz,l0c18h		;0c07
	ld a,(0e1c9h)		;0c09
	and 010h		;0c0c
	jr z,l0be0h		;0c0e
	ld hl,0e437h		;0c10
	inc (hl)		;0c13
	ld a,(hl)		;0c14
	cp 00fh			;0c15
	ret c			;0c17
l0c18h:
	call 0abe0h		;0c18
	ld ix,0e400h		;0c1b
	exx			;0c1f
	ld de,l0300h		;0c20
l0c23h:
	exx			;0c23
	ld a,(ix+000h)		;0c24
	or a			;0c27
	call nz,0ac39h		;0c28
	ld bc,00010h		;0c2b
	add ix,bc		;0c2e
	exx			;0c30
	ld a,e			;0c31
	add a,020h		;0c32
	ld e,a			;0c34
	dec d			;0c35
	jr nz,l0c23h		;0c36
	ret			;0c38
	ld a,(0e439h)		;0c39
	cp 007h			;0c3c
	push af			;0c3e
	call z,0af03h		;0c3f
	pop af			;0c42
	jr z,l0c61h		;0c43
	ld a,(0e430h)		;0c45
	or a			;0c48
	call nz,0ac86h		;0c49
	ld a,(0e431h)		;0c4c
	or a			;0c4f
	call nz,0acf7h		;0c50
	ld a,(0e432h)		;0c53
	or a			;0c56
	call nz,0ad35h		;0c57
	ld a,(0e436h)		;0c5a
	or a			;0c5d
	call nz,0ac77h		;0c5e
l0c61h:
	ld a,(0e433h)		;0c61
	or a			;0c64
	call nz,0b0bah		;0c65
	ld a,(0e434h)		;0c68
	or a			;0c6b
	call nz,0adb9h		;0c6c
	ld a,(0e435h)		;0c6f
	or a			;0c72
	call nz,0adeeh		;0c73
	ret			;0c76
	ld hl,0e480h		;0c77
	call 0b214h		;0c7a
	ret nz			;0c7d
	ld (hl),002h		;0c7e
	inc l			;0c80
	ld de,00800h		;0c81
	jr l0cc4h		;0c84
	dec a			;0c86
	jr z,l0ca3h		;0c87
	ld hl,0e470h		;0c89
	call 0b214h		;0c8c
	jr z,l0cbeh		;0c8f
	ld hl,0e480h		;0c91
	call 0b214h		;0c94
	jr z,l0cbeh		;0c97
	ret			;0c99
l0c9ah:
	ld hl,0e470h		;0c9a
	call 0b214h		;0c9d
	ret nz			;0ca0
	jr l0cbeh		;0ca1
l0ca3h:
	ld a,(0e431h)		;0ca3
	or a			;0ca6
	jr z,l0c9ah		;0ca7
	ld hl,0e470h		;0ca9
	call 0b214h		;0cac
	jr nz,l0cedh		;0caf
	push hl			;0cb1
	ld bc,00010h		;0cb2
	add hl,bc		;0cb5
	ld a,(hl)		;0cb6
	or a			;0cb7
	pop hl			;0cb8
	jr nz,l0cedh		;0cb9
	call 0acf1h		;0cbb
l0cbeh:
	ld (hl),001h		;0cbe
	inc l			;0cc0
	ld de,00808h		;0cc1
l0cc4h:
	call 0b22ah		;0cc4
	and 0f8h		;0cc7
	ld (hl),a		;0cc9
	ld d,0f6h		;0cca
	call 0b239h		;0ccc
	ld a,l			;0ccf
	add a,006h		;0cd0
	ld l,a			;0cd2
	ld a,001h		;0cd3
	jr l0d18h		;0cd5
	ld a,(iy+005h)		;0cd7
	add a,00ch		;0cda
	jp c,0ae01h		;0cdc
l0cdfh:
	ld (iy+005h),a		;0cdf
	ret			;0ce2
	ld a,(iy+005h)		;0ce3
	sub 00ch		;0ce6
	jp c,0ae01h		;0ce8
	jr l0cdfh		;0ceb
l0cedh:
	ld a,001h		;0ced
	jr l0cf3h		;0cef
	ld a,000h		;0cf1
l0cf3h:
	ld (0e438h),a		;0cf3
	ret			;0cf6
	ld a,(0e438h)		;0cf7
	or a			;0cfa
	ret nz			;0cfb
	ld hl,0e480h		;0cfc
	call 0b214h		;0cff
	ret nz			;0d02
	ld (hl),003h		;0d03
	inc l			;0d05
	ld de,00808h		;0d06
	call 0b22ah		;0d09
	inc l			;0d0c
	ld (hl),018h		;0d0d
	inc l			;0d0f
	ld (hl),007h		;0d10
	ld a,l			;0d12
	add a,005h		;0d13
	ld l,a			;0d15
	ld a,002h		;0d16
l0d18h:
	ld (hl),008h		;0d18
	inc l			;0d1a
	ld (hl),002h		;0d1b
	jp 04ae4h		;0d1d
	ld a,(iy+003h)		;0d20
	sub 006h		;0d23
	jp c,0ae01h		;0d25
	ld (iy+003h),a		;0d28
	ld a,(iy+005h)		;0d2b
	add a,006h		;0d2e
	jp c,0ae01h		;0d30
	jr l0cdfh		;0d33
	ld hl,0e470h		;0d35
	call 0b214h		;0d38
	ret nz			;0d3b
	ld a,(0e432h)		;0d3c
	sub 003h		;0d3f
	jr c,l0d4fh		;0d41
	jr z,l0d84h		;0d43
	dec a			;0d45
	dec a			;0d46
	jp z,0af76h		;0d47
	dec a			;0d4a
	jp z,0afffh		;0d4b
	ret			;0d4e
l0d4fh:
	ld (hl),007h		;0d4f
	inc l			;0d51
	ld (hl),000h		;0d52
	ld de,l0810h		;0d54
	call 0b22ah		;0d57
	and 0f8h		;0d5a
	ld (hl),a		;0d5c
	ld d,0fah		;0d5d
	call 0b239h		;0d5f
	inc l			;0d62
	inc l			;0d63
	push ix			;0d64
	pop bc			;0d66
	ld (hl),c		;0d67
	inc l			;0d68
	ld (hl),b		;0d69
	inc l			;0d6a
	ld (hl),000h		;0d6b
	inc l			;0d6d
	ld a,(0e432h)		;0d6e
	dec a			;0d71
	ld a,00fh		;0d72
	jr z,l0d78h		;0d74
	ld a,01ch		;0d76
l0d78h:
	ld (hl),a		;0d78
	inc l			;0d79
	ld (hl),000h		;0d7a
	inc l			;0d7c
	ld (hl),002h		;0d7d
	ld a,003h		;0d7f
	jp 04ae4h		;0d81
l0d84h:
	ld (hl),008h		;0d84
	inc l			;0d86
	ld (hl),000h		;0d87
	ld a,(ix+004h)		;0d89
	add a,008h		;0d8c
	and 0f8h		;0d8e
	inc l			;0d90
	inc l			;0d91
	ld (hl),a		;0d92
	ld a,(ix+006h)		;0d93
	add a,010h		;0d96
	and 0f8h		;0d98
	inc l			;0d9a
	inc l			;0d9b
	ld (hl),a		;0d9c
	inc l			;0d9d
	ld (hl),0f1h		;0d9e
	inc l			;0da0
	inc l			;0da1
	push ix			;0da2
	pop bc			;0da4
	ld (hl),c		;0da5
	inc l			;0da6
	ld (hl),b		;0da7
	inc l			;0da8
sub_0da9h:
	ld (hl),000h		;0da9
	inc l			;0dab
	ld (hl),01ch		;0dac
	inc l			;0dae
	ld (hl),000h		;0daf
	inc l			;0db1
	ld (hl),008h		;0db2
	ld a,01ah		;0db4
	jp 04ae4h		;0db6
	ld hl,0e480h		;0db9
	call 0b214h		;0dbc
	ret nz			;0dbf
	ld a,(0e434h)		;0dc0
	dec a			;0dc3
	ld a,00ah		;0dc4
	jr z,l0dcah		;0dc6
	ld a,00ch		;0dc8
l0dcah:
	ld (hl),a		;0dca
	inc l			;0dcb
	ld (hl),004h		;0dcc
	ld de,00800h		;0dce
	call 0b22ah		;0dd1
	and 0f8h		;0dd4
	ld (hl),a		;0dd6
	ld d,0fah		;0dd7
	call 0b239h		;0dd9
	ld a,l			;0ddc
	add a,004h		;0ddd
	ld l,a			;0ddf
	ld (hl),002h		;0de0
	inc l			;0de2
	inc l			;0de3
	ld (hl),010h		;0de4
	inc l			;0de6
	ld (hl),008h		;0de7
	ld a,00eh		;0de9
	jp 04ae4h		;0deb
	ld hl,0e480h		;0dee
	call 0b214h		;0df1
	ret nz			;0df4
	ld a,(0e435h)		;0df5
	dec a			;0df8
	ld a,00bh		;0df9
	jr z,l0dcah		;0dfb
	ld a,00dh		;0dfd
	jr l0dcah		;0dff
l0e01h:
	ld (iy+000h),000h	;0e01
	ret			;0e05
	push iy			;0e06
	pop hl			;0e08
	inc l			;0e09
	ld a,(hl)		;0e0a
	dec a			;0e0b
	jr z,l0e5bh		;0e0c
	jp p,0ae6ah		;0e0e
	ld c,(iy+008h)		;0e11
	ld b,(iy+009h)		;0e14
	push bc			;0e17
	pop ix			;0e18
	ld de,l0810h		;0e1a
	call 0b22ah		;0e1d
	and 0f8h		;0e20
	cp 0f8h			;0e22
	jr nc,l0e01h		;0e24
	ld (hl),a		;0e26
	ld d,0fah		;0e27
	call 0b239h		;0e29
	ld a,004h		;0e2c
	add a,l			;0e2e
	ld l,a			;0e2f
	ld b,004h		;0e30
l0e32h:
	inc (hl)		;0e32
	inc l			;0e33
	dec (hl)		;0e34
	jr z,l0e3ch		;0e35
	dec l			;0e37
	djnz l0e32h		;0e38
	jr l0e3fh		;0e3a
l0e3ch:
	inc (iy+001h)		;0e3c
l0e3fh:
	ld a,(iy+00ah)		;0e3f
	add a,a			;0e42
	add a,a			;0e43
	add a,a			;0e44
	neg			;0e45
	sub (iy+005h)		;0e47
	ret nc			;0e4a
	neg			;0e4b
	rra			;0e4d
	rra			;0e4e
	rra			;0e4f
	and 01fh		;0e50
	sub (iy+00ah)		;0e52
	neg			;0e55
	ld (iy+00ah),a		;0e57
	ret			;0e5a
l0e5bh:
	call 0ae7bh		;0e5b
	jr c,l0e01h		;0e5e
	call 0ae3fh		;0e60
	ld a,(iy+00ah)		;0e63
	or a			;0e66
	ret nz			;0e67
	jr l0e01h		;0e68
	call 0ae7bh		;0e6a
	jr c,l0e01h		;0e6d
	ld a,(iy+00ah)		;0e6f
	sub 005h		;0e72
	jr c,l0e01h		;0e74
	inc a			;0e76
	ld (iy+00ah),a		;0e77
	ret			;0e7a
	ld a,(iy+005h)		;0e7b
	add a,020h		;0e7e
	ld (iy+005h),a		;0e80
	ret			;0e83
	push iy			;0e84
	pop hl			;0e86
	inc l			;0e87
	ld a,(hl)		;0e88
	dec a			;0e89
	jr z,l0e5bh		;0e8a
	jp p,0ae6ah		;0e8c
	ld c,(iy+008h)		;0e8f
	ld b,(iy+009h)		;0e92
	push bc			;0e95
	pop ix			;0e96
	ld a,(ix+004h)		;0e98
	add a,008h		;0e9b
	and 0f8h		;0e9d
	inc l			;0e9f
	inc l			;0ea0
	ld (hl),a		;0ea1
	ld a,(ix+006h)		;0ea2
	add a,010h		;0ea5
	and 0f8h		;0ea7
	cp 0f8h			;0ea9
	jp nc,0ae01h		;0eab
	inc l			;0eae
	inc l			;0eaf
	ld (hl),a		;0eb0
	ld a,005h		;0eb1
	jp 0ae2eh		;0eb3
	push iy			;0eb6
	pop hl			;0eb8
	inc l			;0eb9
	inc l			;0eba
	inc l			;0ebb
	ld a,(hl)		;0ebc
	sub 006h		;0ebd
	jp c,0ae01h		;0ebf
l0ec2h:
	ld (hl),a		;0ec2
	inc l			;0ec3
	inc l			;0ec4
	ld d,0fah		;0ec5
	jp 0b23ch		;0ec7
	push iy			;0eca
	pop hl			;0ecc
	inc l			;0ecd
	inc l			;0ece
	inc l			;0ecf
	ld a,(hl)		;0ed0
	add a,006h		;0ed1
	cp 0b0h			;0ed3
	jp nc,0ae01h		;0ed5
	jr l0ec2h		;0ed8
	call 0aeb6h		;0eda
	dec (iy+001h)		;0edd
	ret nz			;0ee0
	ld (iy+001h),004h	;0ee1
	ld a,(iy+005h)		;0ee5
	or a			;0ee8
	ld b,001h		;0ee9
	jr z,l0ef3h		;0eeb
	inc b			;0eed
	sub 008h		;0eee
	ld (iy+005h),a		;0ef0
l0ef3h:
	ld a,(iy+00ah)		;0ef3
	add a,b			;0ef6
	ld (iy+00ah),a		;0ef7
	jp 0ae3fh		;0efa
	call 0aecah		;0efd
	jp 0aeddh		;0f00
	ld hl,0e470h		;0f03
	call 0b214h		;0f06
	ret nz			;0f09
	ld (hl),009h		;0f0a
	inc l			;0f0c
	ld (hl),004h		;0f0d
	ld a,(ix+004h)		;0f0f
	inc l			;0f12
	inc l			;0f13
	and 0f8h		;0f14
	ld (hl),a		;0f16
	ld a,(ix+006h)		;0f17
	add a,010h		;0f1a
	inc l			;0f1c
	inc l			;0f1d
	and 0f8h		;0f1e
	ld (hl),a		;0f20
	inc l			;0f21
	ld (hl),0f2h		;0f22
	inc l			;0f24
	inc l			;0f25
	inc l			;0f26
	inc l			;0f27
	ld (hl),002h		;0f28
	inc l			;0f2a
	inc l			;0f2b
	ld (hl),010h		;0f2c
	inc l			;0f2e
	ld (hl),010h		;0f2f
	ld a,01dh		;0f31
	jp 04ae4h		;0f33
	ld a,(iy+005h)		;0f36
	add a,008h		;0f39
	jp c,0ae01h		;0f3b
	ld (iy+005h),a		;0f3e
	dec (iy+001h)		;0f41
	ret nz			;0f44
	ld (iy+001h),004h	;0f45
	ld a,(iy+003h)		;0f49
	or a			;0f4c
	ld b,001h		;0f4d
	jr z,l0f57h		;0f4f
	inc b			;0f51
	sub 008h		;0f52
	ld (iy+003h),a		;0f54
l0f57h:
	ld a,(iy+00ah)		;0f57
	add a,b			;0f5a
	ld (iy+00ah),a		;0f5b
	ld a,(iy+003h)		;0f5e
	rra			;0f61
	rra			;0f62
	rra			;0f63
	and 01fh		;0f64
	add a,(iy+00ah)		;0f66
	sub 017h		;0f69
	ret c			;0f6b
	inc a			;0f6c
	neg			;0f6d
	add a,(iy+00ah)		;0f6f
	ld (iy+00ah),a		;0f72
	ret			;0f75
	ld hl,0e470h		;0f76
	call 0b214h		;0f79
	ret nz			;0f7c
	push hl			;0f7d
	pop iy			;0f7e
	ld (hl),00eh		;0f80
	inc l			;0f82
	ld (hl),000h		;0f83
	ld (iy+00ah),010h	;0f85
	call 0afc5h		;0f89
	inc l			;0f8c
	ld (hl),018h		;0f8d
	inc l			;0f8f
	inc l			;0f90
	push ix			;0f91
	pop bc			;0f93
	ld (hl),c		;0f94
	inc l			;0f95
	ld (hl),b		;0f96
	inc l			;0f97
	ld (hl),010h		;0f98
	inc l			;0f9a
	inc l			;0f9b
	ld (hl),00ch		;0f9c
	inc l			;0f9e
	ld (hl),00ch		;0f9f
	ld a,01bh		;0fa1
	jp 04ae4h		;0fa3
	push iy			;0fa6
	pop hl			;0fa8
	inc l			;0fa9
	bit 0,(hl)		;0faa
	jr nz,l0ff0h		;0fac
	ld a,(iy+00ah)		;0fae
	add a,006h		;0fb1
	ld (iy+00ah),a		;0fb3
	cp 060h			;0fb6
	jr c,l0fbch		;0fb8
	ld (hl),001h		;0fba
l0fbch:
	ld c,(iy+008h)		;0fbc
	ld b,(iy+009h)		;0fbf
	push bc			;0fc2
	pop ix			;0fc3
	ld a,(ix+004h)		;0fc5
	inc a			;0fc8
	inc l			;0fc9
	inc l			;0fca
	ld (hl),a		;0fcb
	inc l			;0fcc
	inc l			;0fcd
	ld a,(ix+006h)		;0fce
	add a,(iy+00ah)		;0fd1
	jr c,l0fdah		;0fd4
	cp 0f0h			;0fd6
	jr c,l0fe0h		;0fd8
l0fdah:
	ld (iy+001h),001h	;0fda
	ld a,0f0h		;0fde
l0fe0h:
	ld (hl),a		;0fe0
	ld a,(0e1c3h)		;0fe1
	bit 1,a			;0fe4
	ld a,00bh		;0fe6
	jr z,l0fech		;0fe8
	ld a,009h		;0fea
l0fech:
	ld (iy+007h),a		;0fec
	ret			;0fef
l0ff0h:
	ld a,(iy+00ah)		;0ff0
	sub 006h		;0ff3
	ld (iy+00ah),a		;0ff5
	cp 010h			;0ff8
	jp c,0ae01h		;0ffa
	jr l0fbch		;0ffd
	ld hl,0e470h		;0fff
	call 0b214h		;1002
	ret nz			;1005
	push hl			;1006
	pop iy			;1007
	ld (hl),00fh		;1009
	inc l			;100b
	ld (hl),000h		;100c
	call 0b097h		;100e
	push ix			;1011
	pop bc			;1013
	inc l			;1014
	inc l			;1015
	ld (hl),c		;1016
	inc l			;1017
	ld (hl),b		;1018
	inc l			;1019
	xor a			;101a
	ld (hl),a		;101b
	inc l			;101c
	ld (hl),a		;101d
	inc l			;101e
	ld (hl),a		;101f
	inc l			;1020
	ld (hl),008h		;1021
	ld a,01ch		;1023
	jp 04ae4h		;1025
	push iy			;1028
	pop hl			;102a
	inc l			;102b
	bit 0,(hl)		;102c
	jr nz,l105fh		;102e
	call 0b08eh		;1030
	inc (iy+00bh)		;1033
	ld a,(iy+00bh)		;1036
	cp 008h			;1039
	jr c,l1041h		;103b
	ld (iy+001h),001h	;103d
l1041h:
	ld a,(iy+005h)		;1041
	rra			;1044
	rra			;1045
	rra			;1046
	and 01fh		;1047
	add a,(iy+00bh)		;1049
	sub 021h		;104c
	jr nc,l1055h		;104e
	ld a,(iy+00bh)		;1050
	jr l105bh		;1053
l1055h:
	inc a			;1055
	neg			;1056
	add a,(iy+00bh)		;1058
l105bh:
	ld (iy+00ah),a		;105b
	ret			;105e
l105fh:
	call 0b08eh		;105f
	dec (iy+00bh)		;1062
	jp z,0ae01h		;1065
	ld a,(0e432h)		;1068
	cp 006h			;106b
	jr nz,l1041h		;106d
	ld a,(0e439h)		;106f
	cp 007h			;1072
	jr z,l1041h		;1074
	call 0abe5h		;1076
	dec b			;1079
	jr nz,l1041h		;107a
	ld a,(0e1c8h)		;107c
	and 010h		;107f
	jr z,l1041h		;1081
	ld a,01ch		;1083
	call 04ae4h		;1085
	ld (iy+001h),000h	;1088
	jr l1041h		;108c
	ld c,(iy+008h)		;108e
	ld b,(iy+009h)		;1091
	push bc			;1094
	pop ix			;1095
	inc l			;1097
	inc l			;1098
	ld a,(ix+004h)		;1099
	add a,004h		;109c
	and 0fch		;109e
	ld (hl),a		;10a0
	ld b,a			;10a1
	inc l			;10a2
	inc l			;10a3
	ld a,(ix+006h)		;10a4
	add a,010h		;10a7
	and 0f8h		;10a9
	cp 0f8h			;10ab
	jp z,0ae01h		;10ad
	ld (hl),a		;10b0
	inc l			;10b1
	xor a			;10b2
	bit 2,b			;10b3
	jr z,l10b8h		;10b5
	inc a			;10b7
l10b8h:
	ld (hl),a		;10b8
	ret			;10b9
	ld a,(ix+004h)		;10ba
	cp 0a5h			;10bd
	ret nc			;10bf
	ld a,(ix+006h)		;10c0
	cp 0e8h			;10c3
	ret nc			;10c5
	ld hl,0e4d0h		;10c6
	exx			;10c9
	ld a,e			;10ca
	exx			;10cb
	sra a			;10cc
	add a,l			;10ce
	ld l,a			;10cf
	ld a,(hl)		;10d0
	or a			;10d1
	ret nz			;10d2
	ld a,(0e433h)		;10d3
	ld de,00400h		;10d6
	ld bc,0200ah		;10d9
	dec a			;10dc
	jr z,l10e7h		;10dd
	inc e			;10df
	dec a			;10e0
	jr z,l10e7h		;10e1
	inc d			;10e3
	ld bc,0280fh		;10e4
l10e7h:
	ld (hl),d		;10e7
	inc l			;10e8
	ld (hl),e		;10e9
	ld de,00808h		;10ea
	call 0b22ah		;10ed
	inc l			;10f0
	ld (hl),b		;10f1
	inc l			;10f2
	ld (hl),c		;10f3
	inc l			;10f4
	ld (hl),000h		;10f5
	ld a,l			;10f7
	add a,004h		;10f8
	ld l,a			;10fa
	ld (hl),008h		;10fb
	inc l			;10fd
	ld (hl),002h		;10fe
l1100h:
	ret			;1100
	push iy			;1101
	pop hl			;1103
	ld a,(0e201h)		;1104
	cp 005h			;1107
	jr z,l1146h		;1109
	ld h,(iy+005h)		;110b
	ld l,(iy+003h)		;110e
	ld a,l			;1111
	add a,008h		;1112
	ld l,a			;1114
	call 0b1ach		;1115
	jr nc,l1146h		;1118
	ld h,(iy+005h)		;111a
	ld l,(iy+003h)		;111d
	ld a,h			;1120
	add a,008h		;1121
	ld h,a			;1123
	ld a,l			;1124
	add a,008h		;1125
	ld l,a			;1127
	call 0b1ach		;1128
	jr nc,l1140h		;112b
	ld h,(iy+005h)		;112d
	ld l,(iy+003h)		;1130
	ld a,h			;1133
	add a,008h		;1134
	ld h,a			;1136
	call 0b1ach		;1137
	jp c,0ae01h		;113a
	jp 0b181h		;113d
l1140h:
	call 0b154h		;1140
	jp 0b181h		;1143
l1146h:
	bit 0,(iy+001h)		;1146
	ld de,l0100h		;114a
	jr z,l1151h		;114d
	ld e,080h		;114f
l1151h:
	call 0b19ah		;1151
	ld a,(iy+000h)		;1154
	cp 005h			;1157
	ld a,028h		;1159
	jr z,l115fh		;115b
	ld a,020h		;115d
l115fh:
	ld (iy+006h),a		;115f
	bit 0,(iy+001h)		;1162
	ld de,00400h		;1166
	jr z,l116dh		;1169
	ld d,006h		;116b
l116dh:
	ld a,(iy+002h)		;116d
	add a,e			;1170
	ld (iy+002h),a		;1171
	ld a,(iy+003h)		;1174
	adc a,d			;1177
	cp 0a8h			;1178
	jp nc,0ae01h		;117a
	ld (iy+003h),a		;117d
	ret			;1180
	ld a,(iy+000h)		;1181
	cp 005h			;1184
	ld a,024h		;1186
	jr z,l118ch		;1188
	ld a,01ch		;118a
l118ch:
	ld (iy+006h),a		;118c
	bit 0,(iy+001h)		;118f
	ld de,00400h		;1193
	jr z,l119ah		;1196
	ld d,006h		;1198
l119ah:
	ld a,(iy+004h)		;119a
	add a,e			;119d
	ld (iy+004h),a		;119e
	ld a,(iy+005h)		;11a1
	adc a,d			;11a4
	jp c,0ae01h		;11a5
	ld (iy+005h),a		;11a8
	ret			;11ab
	ld a,(0e305h)		;11ac
	exx			;11af
	ld c,a			;11b0
	exx			;11b1
	jp 08388h		;11b2
	ld a,(0e320h)		;11b5
	or a			;11b8
	jr z,l11c6h		;11b9
	ld a,(iy+005h)		;11bb
	sub 008h		;11be
	ld (iy+005h),a		;11c0
	jp c,0ae01h		;11c3
l11c6h:
	call 0b1feh		;11c6
	dec (iy+009h)		;11c9
	ret nz			;11cc
	ld (iy+009h),005h	;11cd
	ld a,(iy+008h)		;11d1
	cp 004h			;11d4
	jp nc,0ae01h		;11d6
	inc (iy+008h)		;11d9
	and 003h		;11dc
	add a,a			;11de
	ld hl,0b1f6h		;11df
	call 05ca6h		;11e2
	add a,(iy+003h)		;11e5
	ld e,a			;11e8
	inc hl			;11e9
	ld a,(hl)		;11ea
	add a,(iy+005h)		;11eb
	ld d,a			;11ee
	ld c,000h		;11ef
	ld a,036h		;11f1
	jp 04d1eh		;11f3
	ret m			;11f6
	ret m			;11f7
	ex af,af'		;11f8
	ex af,af'		;11f9
	ex af,af'		;11fa
	ret m			;11fb
	ret m			;11fc
	ex af,af'		;11fd
	ld a,(iy+00ah)		;11fe
	inc a			;1201
	cp 004h			;1202
	jr c,l1207h		;1204
	xor a			;1206
l1207h:
	ld (iy+00ah),a		;1207
	ld hl,09621h		;120a
	call 04b67h		;120d
	ld (iy+006h),e		;1210
	ret			;1213
	ld a,(ix+004h)		;1214
	cp 0a6h			;1217
	jr nc,l1228h		;1219
	ld a,(ix+006h)		;121b
	cp 0d9h			;121e
	jr nc,l1228h		;1220
	exx			;1222
	ld a,e			;1223
	exx			;1224
	add a,l			;1225
	ld l,a			;1226
	ld a,(hl)		;1227
l1228h:
	or a			;1228
	ret			;1229
	ld a,(ix+004h)		;122a
	add a,d			;122d
	inc l			;122e
	inc l			;122f
	ld (hl),a		;1230
	ld a,(ix+006h)		;1231
	add a,e			;1234
	inc l			;1235
	inc l			;1236
	ld (hl),a		;1237
	ret			;1238
	ld a,(ix+004h)		;1239
	rra			;123c
	and 003h		;123d
	add a,d			;123f
	inc l			;1240
	ld (hl),a		;1241
	ret			;1242
	di			;1243
	ld a,(l1413h)		;1244
	cp 0e1h			;1247
	ld a,(0fe11h)		;1249
	ret p			;124c
	ld a,(l0101h)		;124d
	cp 0fdh			;1250
	ld a,(l0101h)		;1252
	rst 38h			;1255
	and 03ah		;1256
	ld (bc),a		;1258
	ld (de),a		;1259
	rst 38h			;125a
	and 03ah		;125b
	inc bc			;125d
	ld (de),a		;125e
	rst 38h			;125f
	dec l			;1260
	ld a,(03011h)		;1261
	inc l			;1264
	ld hl,02539h		;1265
	ld (06dffh),a		;1268
	ld a,(03012h)		;126b
	inc l			;126e
	ld hl,02539h		;126f
	ld (0ff33h),a		;1272
	dec de			;1275
	inc e			;1276
	rst 38h			;1277
	call z,03038h		;1278
	inc l			;127b
	ld hl,02539h		;127c
	ld (l1100h),a		;127f
	rst 38h			;1282
	call z,03038h		;1283
	inc l			;1286
	ld hl,02539h		;1287
	ld (01200h),a		;128a
	rst 38h			;128d
	dec bc			;128e
	add hl,sp		;128f
	daa			;1290
	ld hl,0252dh		;1291
	nop			;1294
	nop			;1295
	cpl			;1296
	ld (hl),025h		;1297
	ld (04afeh),a		;1299
	add hl,sp		;129c
	inc hl			;129d
	cpl			;129e
	ld l,034h		;129f
	add hl,hl		;12a1
	ld l,035h		;12a2
	dec h			;12a4
	nop			;12a5
	nop			;12a6
	ld h,015h		;12a7
	rst 38h			;12a9
	call z,02839h		;12aa
	add hl,hl		;12ad
	nop			;12ae
	inc sp			;12af
	inc hl			;12b0
	cpl			;12b1
	ld (0ff25h),a		;12b2
	ld l,h			;12b5
	add hl,sp		;12b6
	ld a,(de)		;12b7
	ld c,00bh		;12b8
	nop			;12ba
	nop			;12bb
	dec bc			;12bc
	inc d			;12bd
	ld a,(bc)		;12be
	cp 02ah			;12bf
	ld a,(00093h)		;12c1
	dec bc			;12c4
	ld e,01ah		;12c5
	dec bc			;12c7
	inc d			;12c8
	ld a,(bc)		;12c9
	nop			;12ca
	inc c			;12cb
	ld (bc),a		;12cc
	nop			;12cd
	sub e			;12ce
	rst 38h			;12cf
	add hl,hl		;12d0
	ld a,(01b16h)		;12d1
	add hl,de		;12d4
	ld c,000h		;12d5
	add hl,de		;12d7
	ld d,007h		;12d8
	add hl,bc		;12da
	dec bc			;12db
	nop			;12dc
	ld de,l1f0bh		;12dd
	rst 38h			;12e0
	jr z,l131dh		;12e1
	add hl,de		;12e3
	dec bc			;12e4
	dec bc			;12e5
	nop			;12e6
	rra			;12e7
	dec d			;12e8
	dec de			;12e9
	nop			;12ea
	inc d			;12eb
	dec bc			;12ec
	ld e,01ah		;12ed
	ld hl,02121h		;12ef
	ld hl,06affh		;12f2
	add hl,sp		;12f5
	ld (de),a		;12f6
	dec bc			;12f7
	ld a,(de)		;12f8
	inc hl			;12f9
	add hl,de		;12fa
	nop			;12fb
	nop			;12fc
	add hl,de		;12fd
	ld a,(de)		;12fe
	rlca			;12ff
	jr l131ch		;1300
	rst 38h			;1302
	djnz l1305h		;1303
l1305h:
	jr l132fh		;1305
	ex af,af'		;1307
	nop			;1308
	jr l1333h		;1309
	nop			;130b
	nop			;130c
	jr l1337h		;130d
	ex af,af'		;130f
	nop			;1310
	jr l133bh		;1311
	djnz l1315h		;1313
l1315h:
	jr l133fh		;1315
	jr l1319h		;1317
l1319h:
	jr l1343h		;1319
	ex af,af'		;131b
l131ch:
	nop			;131c
l131dh:
	jr nz,l133fh		;131d
	inc b			;131f
	nop			;1320
	jr nz,l1343h		;1321
	nop			;1323
	nop			;1324
	jr nc,$+66		;1325
	nop			;1327
	nop			;1328
	djnz $+66		;1329
	nop			;132b
	nop			;132c
	jr $+66			;132d
l132fh:
	nop			;132f
	nop			;1330
	jr nz,$+66		;1331
l1333h:
	nop			;1333
	nop			;1334
	jr z,$+66		;1335
l1337h:
	jr nz,l1339h		;1337
l1339h:
	djnz l137bh		;1339
l133bh:
	jr l133dh		;133b
l133dh:
	jr l137fh		;133d
l133fh:
	djnz l1341h		;133f
l1341h:
	jr nz,l1383h		;1341
l1343h:
	ex af,af'		;1343
	nop			;1344
	jr z,l1387h		;1345
	djnz $+18		;1347
	inc c			;1349
	djnz l135ch		;134a
	djnz l135ah		;134c
	djnz l1360h		;134e
	nop			;1350
	inc c			;1351
	djnz l1364h		;1352
	nop			;1354
	inc c			;1355
	djnz l1368h		;1356
	jr nc,l1366h		;1358
l135ah:
	djnz l136ch		;135a
l135ch:
	jr nc,l136ah		;135c
	djnz l1370h		;135e
l1360h:
	djnz l136eh		;1360
	djnz l1374h		;1362
l1364h:
	djnz l1372h		;1364
l1366h:
	djnz l1378h		;1366
l1368h:
	nop			;1368
	inc c			;1369
l136ah:
	djnz l137ch		;136a
l136ch:
	nop			;136c
	inc c			;136d
l136eh:
	djnz l1380h		;136e
l1370h:
	jr nc,l137eh		;1370
l1372h:
	djnz $+18		;1372
l1374h:
	jr nc,l1382h		;1374
	djnz l1380h		;1376
l1378h:
	nop			;1378
	djnz l138bh		;1379
l137bh:
	nop			;137b
l137ch:
	nop			;137c
	nop			;137d
l137eh:
	nop			;137e
l137fh:
	nop			;137f
l1380h:
	nop			;1380
	nop			;1381
l1382h:
	nop			;1382
l1383h:
	djnz l1395h		;1383
	djnz l1397h		;1385
l1387h:
	djnz l1399h		;1387
	djnz l139bh		;1389
l138bh:
	nop			;138b
	nop			;138c
	nop			;138d
	nop			;138e
	nop			;138f
	ret m			;1390
	nop			;1391
	ret m			;1392
	nop			;1393
	nop			;1394
l1395h:
	nop			;1395
	ret m			;1396
l1397h:
	nop			;1397
	ret m			;1398
l1399h:
	nop			;1399
	nop			;139a
l139bh:
	nop			;139b
	nop			;139c
	ret m			;139d
	nop			;139e
	ret m			;139f
	ret m			;13a0
	ret m			;13a1
	ret m			;13a2
	ret m			;13a3
	ret m			;13a4
	ret m			;13a5
	nop			;13a6
	nop			;13a7
	nop			;13a8
	nop			;13a9
	nop			;13aa
	nop			;13ab
	nop			;13ac
	ld a,(ix+006h)		;13ad
	cp 020h			;13b0
	ret c			;13b2
	ld a,(ix+001h)		;13b3
	cp 005h			;13b6
	ret z			;13b8
	call 04084h		;13b9
	add a,0b3h		;13bc
	add a,0b3h		;13be
	sub 0b3h		;13c0
	ret p			;13c2
	or e			;13c3
	dec c			;13c4
	or h			;13c5
	dec (ix+002h)		;13c6
	ret nz			;13c9
	inc (ix+007h)		;13ca
	ld a,008h		;13cd
l13cfh:
	inc (ix+001h)		;13cf
	ld (ix+002h),a		;13d2
	ret			;13d5
	call 0b40dh		;13d6
	ld a,(ix+00ch)		;13d9
	and a			;13dc
	ret nz			;13dd
	dec (ix+007h)		;13de
	ld a,008h		;13e1
	jr l13cfh		;13e3
l13e5h:
	ld a,(ix+001h)		;13e5
	cp 002h			;13e8
	ld a,008h		;13ea
	jr z,l1408h		;13ec
	jr l140bh		;13ee
	dec (ix+002h)		;13f0
	ret nz			;13f3
	call 0b472h		;13f4
	ld (ix+001h),0ffh	;13f7
	ld (ix+00ch),005h	;13fb
	ld b,040h		;13ff
	ld a,(0e228h)		;1401
	add a,a			;1404
	neg			;1405
	add a,b			;1407
l1408h:
	dec (ix+007h)		;1408
l140bh:
	jr l13cfh		;140b
	ld a,(ix+00bh)		;140d
	ld (0e35ah),a		;1410
l1413h:
	ld a,(ix+00ch)		;1413
	and a			;1416
	jr z,l13e5h		;1417
	dec (ix+002h)		;1419
	ret nz			;141c
	ld (ix+002h),008h	;141d
	dec (ix+00ch)		;1421
	call 0b477h		;1424
	and a			;1427
	jr nz,l142eh		;1428
	ld (ix+002h),004h	;142a
l142eh:
	ld a,(ix+004h)		;142e
	ld c,0f8h		;1431
	bit 0,(ix+00bh)		;1433
	jr z,l143bh		;1437
	ld c,010h		;1439
l143bh:
	add a,c			;143b
	ld e,a			;143c
	ld a,(ix+006h)		;143d
	ld c,008h		;1440
	add a,c			;1442
	ld d,a			;1443
	ld c,000h		;1444
	ld a,007h		;1446
	call 04d16h		;1448
	ret nz			;144b
	jr l1472h		;144c
	call 0b472h		;144e
	ld a,(ix+00bh)		;1451
	ld c,a			;1454
	add a,a			;1455
	add a,c			;1456
	ld c,015h		;1457
	add a,c			;1459
	ld (ix+007h),a		;145a
	ld (ix+008h),006h	;145d
	ld (ix+002h),034h	;1461
	ld (ix+009h),006h	;1465
	ld (ix+00ah),003h	;1469
	ld (ix+00ch),005h	;146d
	ret			;1471
l1472h:
	ld (ix+00fh),001h	;1472
	ret			;1476
	ld a,(ix+00fh)		;1477
	xor 001h		;147a
	ld (ix+00fh),a		;147c
	ld (0e35ch),a		;147f
	push ix			;1482
	pop hl			;1484
	ld (0e35dh),hl		;1485
	ret			;1488
	ld (ix+00fh),000h	;1489
	ld a,(ix+006h)		;148d
	cp 020h			;1490
	call z,0b605h		;1492
	ld a,(ix+001h)		;1495
	call 04084h		;1498
	cp a			;149b
	or h			;149c
	cp a			;149d
	or h			;149e
	or c			;149f
	or h			;14a0
	ld de,080b5h		;14a1
	or l			;14a4
	ld a,(de)		;14a5
	or l			;14a6
	adc a,d			;14a7
	or l			;14a8
	ld (0cbb5h),hl		;14a9
	or l			;14ac
	call po,02bb5h		;14ad
	or (hl)			;14b0
	dec (ix+002h)		;14b1
	ret nz			;14b4
	ld (ix+002h),004h	;14b5
	ld (ix+00eh),002h	;14b9
	jr l14edh		;14bd
	dec (ix+002h)		;14bf
	ret nz			;14c2
	ld (ix+002h),008h	;14c3
	ld a,(0e20ah)		;14c7
	cp 002h			;14ca
	ld b,004h		;14cc
	jr nc,l14eah		;14ce
	ld b,002h		;14d0
	ld a,(0e40bh)		;14d2
	cp 002h			;14d5
	jr c,l14eah		;14d7
	ld b,001h		;14d9
	jr l14eah		;14db
	ld b,002h		;14dd
	ld a,(0e40bh)		;14df
	and a			;14e2
	jr z,l14eah		;14e3
	dec b			;14e5
	dec a			;14e6
	jr z,l14eah		;14e7
	dec b			;14e9
l14eah:
	ld (ix+00eh),b		;14ea
l14edh:
	inc (ix+007h)		;14ed
	inc (ix+001h)		;14f0
	ld a,(ix+007h)		;14f3
	ld hl,0b501h		;14f6
	call 0407ah		;14f9
	ld a,(hl)		;14fc
	ld (ix+00dh),a		;14fd
	ret			;1500
	rst 38h			;1501
	rst 38h			;1502
	rst 38h			;1503
	ld bc,l0300h+2		;1504
	inc bc			;1507
	rst 38h			;1508
	rst 38h			;1509
	rst 38h			;150a
	rst 38h			;150b
	inc b			;150c
	dec b			;150d
	ld b,006h		;150e
	rst 38h			;1510
	ld a,(0e40bh)		;1511
	cp 002h			;1514
	jr nc,l1533h		;1516
	jr l152fh		;1518
	ld a,(0e40bh)		;151a
	and a			;151d
	jr nz,l1533h		;151e
	jr l152fh		;1520
	ld a,(0e40bh)		;1522
	and a			;1525
	jr z,l1533h		;1526
	ld a,(0e400h)		;1528
	cp 002h			;152b
	jr nc,l1533h		;152d
l152fh:
	ld (ix+00fh),001h	;152f
l1533h:
	dec (ix+002h)		;1533
	ret nz			;1536
	ld a,(ix+003h)		;1537
	ld (0e35dh),a		;153a
	call 0b66ch		;153d
	cp 003h			;1540
	jp z,0b636h		;1542
	call 0b679h		;1545
	bit 0,(ix+00fh)		;1548
	jr nz,l1555h		;154c
	ld a,01dh		;154e
	ld c,000h		;1550
	call 04d16h		;1552
l1555h:
	inc (ix+00eh)		;1555
	ld b,001h		;1558
	ld a,(ix+001h)		;155a
	cp 006h			;155d
	jr c,l157ch		;155f
	ld b,004h		;1561
	ld a,(0e20ah)		;1563
	and a			;1566
	jr nz,l157ch		;1567
	ld b,00fh		;1569
	ld a,(0e400h)		;156b
	cp 002h			;156e
	jr nz,l157ch		;1570
	ld a,(0e228h)		;1572
	srl a			;1575
	ld c,a			;1577
	ld a,00ch		;1578
	sub c			;157a
	ld b,a			;157b
l157ch:
	ld (ix+002h),b		;157c
	ret			;157f
	ld a,(0e40bh)		;1580
	and a			;1583
	jr nz,l158ah		;1584
	ld (ix+00fh),001h	;1586
l158ah:
	dec (ix+002h)		;158a
	ret nz			;158d
	ld a,(ix+003h)		;158e
	ld (0e35dh),a		;1591
	call 0b66ch		;1594
	ld a,(ix+00eh)		;1597
	cp 003h			;159a
	jp z,0b65ah		;159c
	call 0b679h		;159f
	push de			;15a2
	call 0b692h		;15a3
	pop de			;15a6
	call 0b555h		;15a7
	bit 0,(ix+00fh)		;15aa
	ret nz			;15ae
	call 093b1h		;15af
	push ix			;15b2
	push hl			;15b4
	pop ix			;15b5
	ld bc,0fff4h		;15b7
	add ix,bc		;15ba
	ld (ix+000h),082h	;15bc
	ld (ix+002h),00ch	;15c0
	ld (ix+00ch),00ah	;15c4
	pop ix			;15c8
	ret			;15ca
	inc (ix+001h)		;15cb
	ld a,007h		;15ce
	bit 0,(ix+003h)		;15d0
	jr nz,l15d8h		;15d4
	ld a,00fh		;15d6
l15d8h:
	ld (ix+007h),a		;15d8
	ld (ix+002h),00dh	;15db
	ld (ix+00dh),0ffh	;15df
	ret			;15e3
	dec (ix+002h)		;15e4
	ret nz			;15e7
l15e8h:
	ld (ix+000h),000h	;15e8
	ld a,(ix+00bh)		;15ec
	or a			;15ef
	ret z			;15f0
	ld b,a			;15f1
	ld a,(ix+004h)		;15f2
	add a,010h		;15f5
	ld e,a			;15f7
	ld d,(ix+006h)		;15f8
	ld c,005h		;15fb
	dec b			;15fd
	jr z,l1602h		;15fe
	ld c,003h		;1600
l1602h:
	jp 05157h		;1602
	ld a,(0e320h)		;1605
	and a			;1608
	ret z			;1609
	ld a,(ix+001h)		;160a
	cp 006h			;160d
	jr c,l1626h		;160f
	cp 008h			;1611
	ret nc			;1613
	ld (ix+001h),00ah	;1614
	ld (ix+00eh),006h	;1618
l161ch:
	ld (ix+002h),004h	;161c
	dec (ix+007h)		;1620
	jp 0b4f3h		;1623
l1626h:
	ld (ix+00dh),0ffh	;1626
	ret			;162a
	dec (ix+002h)		;162b
	ret nz			;162e
	dec (ix+00eh)		;162f
	jr z,l15e8h		;1632
	jr l161ch		;1634
	ld (ix+002h),004h	;1636
	ld a,(ix+001h)		;163a
	cp 007h			;163d
	jp nz,0b4b5h		;163f
	dec (ix+001h)		;1642
	dec (ix+001h)		;1645
l1648h:
	ld a,(0e228h)		;1648
	srl a			;164b
	neg			;164d
	add a,010h		;164f
	ld (ix+002h),a		;1651
	dec (ix+007h)		;1654
	jp 0b4c7h		;1657
	ld (ix+002h),004h	;165a
	bit 1,(ix+003h)		;165e
	ld a,(ix+001h)		;1662
	cp 006h			;1665
	jp nz,0b4b5h		;1667
	jr l1648h		;166a
	ld a,(ix+00ch)		;166c
	inc a			;166f
	and 003h		;1670
	ld (ix+00ch),a		;1672
	ld (0e35ch),a		;1675
	ret			;1678
	ld hl,0b6dbh		;1679
	ld a,(ix+00dh)		;167c
	dec a			;167f
	add a,a			;1680
	call 0407ah		;1681
	ld a,(hl)		;1684
	inc hl			;1685
	ld e,(ix+004h)		;1686
	add a,e			;1689
	ld e,a			;168a
	ld a,(hl)		;168b
	ld d,(ix+006h)		;168c
	add a,d			;168f
	ld d,a			;1690
	ret			;1691
	ld hl,0b6d7h		;1692
	ld a,(0e35ch)		;1695
	call 0407ah		;1698
	ld l,(hl)		;169b
	ld a,(0e35dh)		;169c
	and a			;169f
	jr z,l16ceh		;16a0
	cp 003h			;16a2
	jr z,l16ceh		;16a4
	ld a,(0e404h)		;16a6
	add a,l			;16a9
	ld h,a			;16aa
	jr nc,l16b1h		;16ab
l16adh:
	ld a,(0e404h)		;16ad
	ld h,a			;16b0
l16b1h:
	ld a,(0e406h)		;16b1
	ld l,a			;16b4
	ld a,060h		;16b5
	ld e,(ix+004h)		;16b7
	ld d,(ix+006h)		;16ba
	ld (0f00fh),a		;16bd
	ld a,h			;16c0
	ld (0f000h),a		;16c1
	ld a,l			;16c4
	ld (0f001h),a		;16c5
	call 09467h		;16c8
	jp 093fbh		;16cb
l16ceh:
	ld a,(0e404h)		;16ce
	sub l			;16d1
	ld h,a			;16d2
	jr nc,l16b1h		;16d3
	jr l16adh		;16d5
	nop			;16d7
	djnz l16fah		;16d8
	djnz $+26		;16da
	ex af,af'		;16dc
	djnz l16e7h		;16dd
	ex af,af'		;16df
	ex af,af'		;16e0
	djnz $+18		;16e1
	jr $+18			;16e3
	jr nz,$+18		;16e5
l16e7h:
	res 1,(ix+010h)		;16e7
	call 0b692h		;16eb
	ld (ix+002h),00ch	;16ee
	ld (ix+02fh),001h	;16f2
	ld de,(0f014h)		;16f6
l16fah:
	ld hl,(0f012h)		;16fa
	jp 04f26h		;16fd
	ld a,(ix+001h)		;1700
	and a			;1703
	ret nz			;1704
	dec (ix+002h)		;1705
	ret nz			;1708
	ld (ix+02fh),000h	;1709
	inc (ix+001h)		;170d
	ret			;1710
	bit 7,(ix+000h)		;1711
	ret z			;1715
	dec (ix+002h)		;1716
	ret nz			;1719
	res 7,(ix+000h)		;171a
	ret			;171e
	ld a,(ix+004h)		;171f
	cp 028h			;1722
	ld bc,l0000h+1		;1724
	jr nc,l172ch		;1727
	ld bc,00800h		;1729
l172ch:
	ld (ix+007h),b		;172c
	ld (ix+003h),c		;172f
	ld b,007h		;1732
	ld a,(0e20ah)		;1734
	jr z,l173bh		;1737
	ld b,00ah		;1739
l173bh:
	ld (ix+008h),b		;173b
	ld (ix+002h),030h	;173e
	ld (ix+009h),005h	;1742
	ld (ix+00ah),006h	;1746
	xor a			;174a
	ld (ix+00ch),a		;174b
	dec a			;174e
	ld (ix+00dh),a		;174f
	ret			;1752
	ld c,01dh		;1753
	ld a,(0e201h)		;1755
	cp 007h			;1758
	jr z,l175eh		;175a
	ld c,038h		;175c
l175eh:
	ld a,(ix+00bh)		;175e
	and a			;1761
	jr z,l1765h		;1762
	inc c			;1764
l1765h:
	ld (ix+007h),c		;1765
	ld (ix+008h),008h	;1768
	ld (ix+009h),004h	;176c
	ld (ix+00ah),003h	;1770
	ld (ix+002h),030h	;1774
	ret			;1778
	ld a,(ix+001h)		;1779
	dec a			;177c
	jr z,l178fh		;177d
	dec (ix+002h)		;177f
	ret nz			;1782
	inc (ix+001h)		;1783
	ld (ix+002h),006h	;1786
	ld (ix+00ch),006h	;178a
	ret			;178e
l178fh:
	dec (ix+002h)		;178f
	ret nz			;1792
	ld (ix+002h),006h	;1793
	ld a,(ix+004h)		;1797
	ld bc,l00f4h		;179a
	bit 0,(ix+00bh)		;179d
	jr z,l17a6h		;17a1
	ld bc,00114h		;17a3
l17a6h:
	add a,c			;17a6
	ld e,a			;17a7
	ld a,(ix+006h)		;17a8
	add a,008h		;17ab
	ld d,a			;17ad
	ld a,010h		;17ae
	ld c,000h		;17b0
	call 04d16h		;17b2
	dec (ix+00ch)		;17b5
	ret nz			;17b8
	ld (ix+002h),060h	;17b9
	ld (ix+001h),000h	;17bd
	ret			;17c1
	ld (ix+002h),010h	;17c2
	ld a,(ix+006h)		;17c6
	ld (ix+026h),a		;17c9
	call 04e93h		;17cc
	ld (ix+015h),a		;17cf
	ld a,(ix+004h)		;17d2
	bit 0,(ix+019h)		;17d5
	jr z,l17e4h		;17d9
	ld hl,l0480h		;17db
	ld de,l0300h		;17de
	jp 04f26h		;17e1
l17e4h:
	ld hl,0fb80h		;17e4
	ld de,0fd00h		;17e7
	jp 04f26h		;17ea
	call 0b83ah		;17ed
	call 0b847h		;17f0
	ld a,(ix+001h)		;17f3
	dec a			;17f6
	jr z,l1813h		;17f7
	dec a			;17f9
	ret z			;17fa
	call 0b87fh		;17fb
	call 0b86ah		;17fe
	dec (ix+002h)		;1801
	ret nz			;1804
	ld (ix+002h),05ah	;1805
	ld a,(ix+004h)		;1809
	ld (ix+025h),a		;180c
	inc (ix+001h)		;180f
	ret			;1812
l1813h:
	call 0b87fh		;1813
	call 0b855h		;1816
	dec (ix+002h)		;1819
	ret nz			;181c
	ld e,070h		;181d
	ld a,(0e228h)		;181f
	add a,a			;1822
	add a,e			;1823
	ld e,(ix+004h)		;1824
	ld d,(ix+006h)		;1827
	call 093f5h		;182a
	inc (ix+001h)		;182d
	ld hl,(0f012h)		;1830
	ld de,(0f014h)		;1833
	jp 04f26h		;1837
	ld a,(0e1c3h)		;183a
	and 003h		;183d
	add a,a			;183f
	add a,a			;1840
	add a,058h		;1841
	ld (ix+030h),a		;1843
	ret			;1846
	dec (ix+015h)		;1847
	ret nz			;184a
	call 0bb4ah		;184b
	call 04e93h		;184e
	ld (ix+015h),a		;1851
	ret			;1854
	ld h,000h		;1855
	ld a,(ix+025h)		;1857
	sub (ix+004h)		;185a
	jr nc,l1860h		;185d
	dec h			;185f
l1860h:
	ld l,a			;1860
	add hl,hl		;1861
	add hl,hl		;1862
	ex de,hl		;1863
	call 062a8h		;1864
	call 062c2h		;1867
	ld h,000h		;186a
	ld a,(ix+026h)		;186c
	sub (ix+006h)		;186f
	jr nc,l1875h		;1872
	dec h			;1874
l1875h:
	ld l,a			;1875
	add hl,hl		;1876
	add hl,hl		;1877
	ex de,hl		;1878
	call 062afh		;1879
	jp 062d5h		;187c
	dec (ix+006h)		;187f
	ld a,(ix+026h)		;1882
	and a			;1885
	ret z			;1886
	dec (ix+026h)		;1887
	ret			;188a
	ld (ix+008h),008h	;188b
	ld (ix+009h),003h	;188f
	ld (ix+00ah),001h	;1893
	ld (ix+00dh),0ffh	;1897
	ld a,r			;189b
	and 00fh		;189d
	add a,020h		;189f
	ld (ix+002h),a		;18a1
	ret			;18a4
	ld a,(ix+001h)		;18a5
	dec a			;18a8
	jr z,l18dah		;18a9
	dec a			;18ab
	jr z,l18e6h		;18ac
	dec (ix+002h)		;18ae
	ret nz			;18b1
	ld de,00808h		;18b2
	bit 0,(ix+00bh)		;18b5
	jr nz,l18bdh		;18b9
	ld e,0f8h		;18bb
l18bdh:
	ld a,(ix+004h)		;18bd
	add a,e			;18c0
	ld e,a			;18c1
	ld a,(ix+006h)		;18c2
	add a,d			;18c5
	ld d,a			;18c6
	ld c,000h		;18c7
	ld a,(ix+00bh)		;18c9
	ld b,a			;18cc
	ld a,01fh		;18cd
	call 04d16h		;18cf
	ld (ix+002h),018h	;18d2
	inc (ix+001h)		;18d6
	ret			;18d9
l18dah:
	dec (ix+002h)		;18da
	ret nz			;18dd
	ld (ix+002h),004h	;18de
	inc (ix+001h)		;18e2
	ret			;18e5
l18e6h:
	dec (ix+002h)		;18e6
	ret nz			;18e9
	ld a,r			;18ea
	and 007h		;18ec
	ld c,a			;18ee
	ld a,(0e228h)		;18ef
	rra			;18f2
	and 007h		;18f3
	sub 018h		;18f5
	neg			;18f7
	add a,c			;18f9
	ld (ix+002h),a		;18fa
	ld (ix+001h),000h	;18fd
	ret			;1901
	ld c,080h		;1902
	bit 0,(ix+019h)		;1904
	jr z,l190ch		;1908
	ld c,074h		;190a
l190ch:
	ld (ix+030h),c		;190c
	ld (ix+002h),000h	;190f
	set 3,(ix+010h)		;1913
	ld (ix+025h),018h	;1917
	call 04f17h		;191b
	jr l197ch		;191e
	call 0b976h		;1920
	ld a,(ix+001h)		;1923
	dec a			;1926
	jr z,l195eh		;1927
	dec (ix+025h)		;1929
	ld a,(ix+025h)		;192c
	cp 008h			;192f
	jr z,l1955h		;1931
	and a			;1933
	ret nz			;1934
	call 0b955h		;1935
	inc (ix+001h)		;1938
l193bh:
	res 3,(ix+010h)		;193b
	bit 0,(ix+019h)		;193f
	jr z,l194ah		;1943
	ld de,00400h		;1945
	jr l194dh		;1948
l194ah:
	ld de,0fc00h		;194a
l194dh:
	call 04efbh		;194d
	ld (ix+025h),01eh	;1950
	ret			;1954
l1955h:
	ld a,(ix+030h)		;1955
	add a,004h		;1958
	ld (ix+030h),a		;195a
	ret			;195d
l195eh:
	dec (ix+025h)		;195e
	jr z,l193bh		;1961
	ld de,00020h		;1963
	bit 0,(ix+019h)		;1966
	call nz,05cadh		;196a
	ex de,hl		;196d
	call 04f10h		;196e
	add hl,de		;1971
	ex de,hl		;1972
	jp 04efbh		;1973
	ld a,(0e1c3h)		;1976
	and 003h		;1979
	ret nz			;197b
l197ch:
	ld a,(ix+002h)		;197c
	inc a			;197f
	cp 006h			;1980
	jr c,l1985h		;1982
	xor a			;1984
l1985h:
	ld (ix+002h),a		;1985
	ld hl,0b992h		;1988
	call 05ca6h		;198b
	ld (ix+031h),a		;198e
	ret			;1991
	ex af,af'		;1992
	add hl,bc		;1993
	ld a,(bc)		;1994
	rrca			;1995
	ld a,(bc)		;1996
	add hl,bc		;1997
	ld a,(ix+006h)		;1998
	cp 028h			;199b
	call nc,0b9eeh		;199d
	dec (ix+002h)		;19a0
	jr z,l19b4h		;19a3
	ld a,(ix+002h)		;19a5
	cp (ix+00ch)		;19a8
	ret nz			;19ab
	ld (ix+007h),011h	;19ac
	inc (ix+00dh)		;19b0
	ret			;19b3
l19b4h:
	ld a,(ix+00ch)		;19b4
	add a,a			;19b7
	ld (ix+002h),a		;19b8
	dec (ix+00dh)		;19bb
	bit 7,(ix+00eh)		;19be
	jr nz,l19dch		;19c2
	ld (ix+007h),012h	;19c4
	ld a,(ix+004h)		;19c8
	add a,008h		;19cb
	ld (ix+004h),a		;19cd
	cp 058h			;19d0
	ret nz			;19d2
l19d3h:
	ld a,(ix+00eh)		;19d3
	neg			;19d6
	ld (ix+00eh),a		;19d8
	ret			;19db
l19dch:
	ld (ix+007h),010h	;19dc
	ld a,(ix+004h)		;19e0
	sub 008h		;19e3
	ld (ix+004h),a		;19e5
	cp (ix+00fh)		;19e8
	ret nz			;19eb
	jr l19d3h		;19ec
	dec (ix+001h)		;19ee
	ret nz			;19f1
	dec (ix+003h)		;19f2
	ld a,004h		;19f5
	jr nz,l19ffh		;19f7
	ld a,034h		;19f9
	ld (ix+003h),010h	;19fb
l19ffh:
	ld (ix+001h),a		;19ff
	call 0ba0ch		;1a02
	ld a,022h		;1a05
	ld c,000h		;1a07
	jp 04d16h		;1a09
	ld a,010h		;1a0c
	add a,(ix+004h)		;1a0e
	ld e,a			;1a11
	ld a,0fch		;1a12
	add a,(ix+006h)		;1a14
	ld d,a			;1a17
	ret			;1a18
	ld a,(ix+00bh)		;1a19
	add a,a			;1a1c
	add a,002h		;1a1d
	ld (ix+00ch),a		;1a1f
	add a,a			;1a22
	ld (ix+002h),a		;1a23
	ld (ix+00eh),001h	;1a26
	ld (ix+007h),010h	;1a2a
	ld (ix+008h),028h	;1a2e
	ld (ix+001h),004h	;1a32
	ld (ix+009h),004h	;1a36
	ld (ix+00ah),005h	;1a3a
	ld (ix+003h),010h	;1a3e
	ld (ix+00dh),007h	;1a42
	ld a,(ix+004h)		;1a46
	ld (ix+00fh),a		;1a49
	ret			;1a4c
	ld hl,l0000h		;1a4d
	ld (0f012h),hl		;1a50
	ld hl,0fc00h		;1a53
	ld (0f014h),hl		;1a56
	jp 0b6eeh		;1a59
	ld (ix+010h),01bh	;1a5c
	ld (ix+014h),004h	;1a60
	ld (ix+013h),002h	;1a64
	ld a,(ix+019h)		;1a68
	and a			;1a6b
	ld a,010h		;1a6c
	jr z,l1a72h		;1a6e
	ld a,008h		;1a70
l1a72h:
	ld (ix+028h),a		;1a72
	ld (ix+02ah),a		;1a75
	ld (ix+029h),008h	;1a78
	ld a,(ix+004h)		;1a7c
	cp 068h			;1a7f
	ret c			;1a81
	ld (ix+029h),0f8h	;1a82
	ret			;1a86
	ld a,(ix+001h)		;1a87
	dec a			;1a8a
	jr z,l1a97h		;1a8b
	ld a,(ix+006h)		;1a8d
	cp 0d8h			;1a90
	ret nc			;1a92
	inc (ix+001h)		;1a93
	ret			;1a96
l1a97h:
	dec (ix+028h)		;1a97
	ret nz			;1a9a
	call 0baaeh		;1a9b
	ld a,(ix+02ah)		;1a9e
	ld (ix+028h),a		;1aa1
	ld a,(ix+004h)		;1aa4
	add a,(ix+029h)		;1aa7
	ld (ix+004h),a		;1aaa
	ret			;1aad
	bit 7,(ix+029h)		;1aae
	jr nz,l1acah		;1ab2
	ld a,(ix+004h)		;1ab4
	add a,010h		;1ab7
l1ab9h:
	ld l,a			;1ab9
	ld h,(ix+006h)		;1aba
	call 083e8h		;1abd
	ret nc			;1ac0
	ld a,(ix+029h)		;1ac1
	neg			;1ac4
	ld (ix+029h),a		;1ac6
	ret			;1ac9
l1acah:
	ld a,(ix+004h)		;1aca
	sub 008h		;1acd
	jr l1ab9h		;1acf
	ld (ix+025h),010h	;1ad1
	ld a,(ix+004h)		;1ad5
	ld (ix+026h),a		;1ad8
	cp 058h			;1adb
	ld hl,00400h		;1add
	jr c,l1aech		;1ae0
	ld a,(ix+019h)		;1ae2
	add a,006h		;1ae5
	ld (ix+019h),a		;1ae7
	ld h,004h		;1aea
l1aech:
	ld de,0fd60h		;1aec
	jp 04f26h		;1aef
	call 0bb56h		;1af2
	ld a,(ix+001h)		;1af5
	dec a			;1af8
	jr z,l1b43h		;1af9
	dec a			;1afb
	ret z			;1afc
	ld a,(0e228h)		;1afd
	cp 009h			;1b00
	call nc,0bb39h		;1b02
	ld (ix+001h),000h	;1b05
	ld a,(ix+026h)		;1b09
	ld de,l006fh+1		;1b0c
	call 09c27h		;1b0f
	ld a,(ix+006h)		;1b12
	cp 020h			;1b15
	ret nc			;1b17
	ld (ix+025h),008h	;1b18
	inc (ix+001h)		;1b1c
	ld a,(0e228h)		;1b1f
	ld b,004h		;1b22
	cp 006h			;1b24
	jr c,l1b2ah		;1b26
	ld b,006h		;1b28
l1b2ah:
	ld a,(ix+019h)		;1b2a
	ld hl,0bb8ah		;1b2d
	call 05ca6h		;1b30
	call 04cb7h		;1b33
	jp 04f26h		;1b36
	ld a,(ix+025h)		;1b39
	and a			;1b3c
	jr nz,l1b43h		;1b3d
	ld (ix+025h),009h	;1b3f
l1b43h:
	dec (ix+025h)		;1b43
	ret nz			;1b46
	inc (ix+001h)		;1b47
	ld e,(ix+004h)		;1b4a
	ld a,(ix+006h)		;1b4d
	add a,008h		;1b50
	ld d,a			;1b52
	jp 0938fh		;1b53
	ld hl,0bb7eh		;1b56
	ld a,(0e201h)		;1b59
	cp 005h			;1b5c
	jr z,l1b69h		;1b5e
	cp 003h			;1b60
	jr nz,l1b6ch		;1b62
	ld hl,0bb86h		;1b64
	jr l1b6ch		;1b67
l1b69h:
	ld hl,0bb82h		;1b69
l1b6ch:
	call 09b31h		;1b6c
	ld a,(0e1c3h)		;1b6f
	and 003h		;1b72
	ret nz			;1b74
	ld a,(ix+031h)		;1b75
	xor 004h		;1b78
	ld (ix+031h),a		;1b7a
	ret			;1b7d
	or h			;1b7e
	cp b			;1b7f
	cp h			;1b80
	ret nz			;1b81
	sub b			;1b82
	sub h			;1b83
	sbc a,b			;1b84
	sbc a,h			;1b85
	ld a,h			;1b86
	add a,b			;1b87
	add a,h			;1b88
	adc a,b			;1b89
	nop			;1b8a
	rrca			;1b8b
	ld c,00dh		;1b8c
	ld c,00fh		;1b8e
	nop			;1b90
	ld bc,l0300h+2		;1b91
	ld (bc),a		;1b94
	ld bc,036ddh		;1b95
	rlca			;1b98
	inc de			;1b99
	ld (ix+008h),030h	;1b9a
	ld (ix+009h),004h	;1b9e
	ld (ix+00ah),004h	;1ba2
	ld (ix+00dh),000h	;1ba6
	ld (ix+002h),001h	;1baa
	ld a,(0e228h)		;1bae
	cp 006h			;1bb1
	ld a,001h		;1bb3
	jr c,l1bb8h		;1bb5
	inc a			;1bb7
l1bb8h:
	ld (ix+00eh),a		;1bb8
	ret			;1bbb
	call 0bbdch		;1bbc
	ld a,(ix+004h)		;1bbf
	cp 060h			;1bc2
	jr z,l1bcah		;1bc4
	cp 030h			;1bc6
	jr nz,l1bd2h		;1bc8
l1bcah:
	ld a,(ix+00eh)		;1bca
	neg			;1bcd
	ld (ix+00eh),a		;1bcf
l1bd2h:
	ld a,(ix+004h)		;1bd2
	add a,(ix+00eh)		;1bd5
	ld (ix+004h),a		;1bd8
	ret			;1bdb
	dec (ix+002h)		;1bdc
	ret nz			;1bdf
	ld e,(ix+004h)		;1be0
	ld a,(ix+006h)		;1be3
	sub 008h		;1be6
	ld d,a			;1be8
	ld (ix+002h),012h	;1be9
	ld a,(0e228h)		;1bed
	cp 006h			;1bf0
	jp c,0938fh		;1bf2
	ld (ix+002h),00ch	;1bf5
	jp 0938fh		;1bf9
	ld de,0fa00h		;1bfc
	ld a,(0e228h)		;1bff
	cp 006h			;1c02
	ld a,028h		;1c04
	jr nc,l1c0ch		;1c06
	ld d,0fch		;1c08
	ld a,018h		;1c0a
l1c0ch:
	ld (ix+027h),a		;1c0c
	call 04f02h		;1c0f
	jp 04f1ch		;1c12
	call 0bca2h		;1c15
	ld a,(ix+001h)		;1c18
	dec a			;1c1b
	jr z,l1c32h		;1c1c
	dec a			;1c1e
	jr z,$+74		;1c1f
	dec a			;1c21
	jr z,l1c8bh		;1c22
	call 0bc83h		;1c24
	rl h			;1c27
	ret c			;1c29
	ld (ix+025h),020h	;1c2a
	inc (ix+001h)		;1c2e
	ret			;1c31
l1c32h:
	call 0bc83h		;1c32
	dec (ix+025h)		;1c35
	ret nz			;1c38
	inc (ix+001h)		;1c39
	ld (ix+025h),004h	;1c3c
	call 04f21h		;1c40
	ld hl,0bc63h		;1c43
	ld b,003h		;1c46
l1c48h:
	push bc			;1c48
	xor a			;1c49
	ld b,(hl)		;1c4a
	ld c,a			;1c4b
	inc hl			;1c4c
	ld d,(hl)		;1c4d
	ld e,a			;1c4e
	inc hl			;1c4f
	push hl			;1c50
	ex de,hl		;1c51
	ld e,(ix+004h)		;1c52
	ld a,(ix+006h)		;1c55
	add a,008h		;1c58
	ld d,a			;1c5a
	call 0937dh		;1c5b
	pop hl			;1c5e
	pop bc			;1c5f
	djnz l1c48h		;1c60
	ret			;1c62
	cp 0feh			;1c63
	nop			;1c65
	cp 002h			;1c66
	cp 0ddh			;1c68
	dec (hl)		;1c6a
	dec h			;1c6b
	ret nz			;1c6c
	inc (ix+001h)		;1c6d
	ld (ix+025h),008h	;1c70
	ld a,(0e228h)		;1c74
	cp 006h			;1c77
	ld de,0fc00h		;1c79
	jr c,l1c80h		;1c7c
	ld d,0fah		;1c7e
l1c80h:
	jp 04f02h		;1c80
	ld d,000h		;1c83
	ld e,(ix+027h)		;1c85
	jp 09d50h		;1c88
l1c8bh:
	dec (ix+025h)		;1c8b
	ret nz			;1c8e
	ld a,(0e228h)		;1c8f
	cp 006h			;1c92
	ld (ix+025h),010h	;1c94
	jp c,0bb4ah		;1c98
	ld (ix+025h),008h	;1c9b
	jp 0bb4ah		;1c9f
	ld a,(0e1c3h)		;1ca2
	and 003h		;1ca5
	ret nz			;1ca7
	ld a,(ix+030h)		;1ca8
	add a,004h		;1cab
	cp 0e8h			;1cad
	jr nz,l1cb3h		;1caf
	ld a,0dch		;1cb1
l1cb3h:
	ld (ix+030h),a		;1cb3
	ret			;1cb6
	xor a			;1cb7
	ld (0f0f5h),a		;1cb8
	ld (0e229h),a		;1cbb
	ld bc,00400h		;1cbe
	ld hl,0fcc1h		;1cc1
l1cc4h:
	push bc			;1cc4
	push hl			;1cc5
	ld a,(hl)		;1cc6
	bit 7,a			;1cc7
	jr nz,l1cdah		;1cc9
	call 0bcf6h		;1ccb
l1cceh:
	pop hl			;1cce
	pop bc			;1ccf
	ld a,(0f0f5h)		;1cd0
	and a			;1cd3
	ret nz			;1cd4
	inc hl			;1cd5
	inc c			;1cd6
	djnz l1cc4h		;1cd7
	ret			;1cd9
l1cdah:
	call 0bcdfh		;1cda
	jr l1cceh		;1cdd
	and 080h		;1cdf
	or c			;1ce1
	ld c,a			;1ce2
	ld b,004h		;1ce3
l1ce5h:
	push bc			;1ce5
	call 0bcf6h		;1ce6
	pop bc			;1ce9
	ld a,(0f0f5h)		;1cea
	and a			;1ced
	ret nz			;1cee
	ld a,c			;1cef
	add a,004h		;1cf0
	ld c,a			;1cf2
	djnz l1ce5h		;1cf3
	ret			;1cf5
	ld de,0bd5bh		;1cf6
	ld hl,07ffah		;1cf9
	ld b,006h		;1cfc
	call 0bd46h		;1cfe
	jr nc,l1d09h		;1d01
	ld hl,0f0f5h		;1d03
	set 1,(hl)		;1d06
	ret			;1d08
l1d09h:
	ld de,0bd61h		;1d09
	ld hl,04010h		;1d0c
	ld b,004h		;1d0f
	call 0bd46h		;1d11
	jr nc,l1d1ch		;1d14
	ld hl,0f0f5h		;1d16
	set 3,(hl)		;1d19
	ret			;1d1b
l1d1ch:
	ld de,0bd65h		;1d1c
	ld hl,04010h		;1d1f
	ld b,004h		;1d22
	call 0bd46h		;1d24
	jr nc,l1d2fh		;1d27
	ld hl,0f0f5h		;1d29
	set 2,(hl)		;1d2c
	ret			;1d2e
l1d2fh:
	ld de,0bd69h		;1d2f
	ld hl,04010h		;1d32
	ld b,004h		;1d35
	call 0bd46h		;1d37
	ret nc			;1d3a
	ld hl,0f0f5h		;1d3b
	set 0,(hl)		;1d3e
	ld a,001h		;1d40
	ld (0e229h),a		;1d42
	ret			;1d45
l1d46h:
	push bc			;1d46
	push de			;1d47
	ld a,c			;1d48
	call sub_000ch		;1d49
	pop de			;1d4c
	pop bc			;1d4d
	ex de,hl		;1d4e
	cp (hl)			;1d4f
	ex de,hl		;1d50
	jr nz,l1d59h		;1d51
	inc hl			;1d53
	inc de			;1d54
	djnz l1d46h		;1d55
	scf			;1d57
	ret			;1d58
l1d59h:
	and a			;1d59
	ret			;1d5a
	nop			;1d5b
	jr nc,$+51		;1d5c
	inc de			;1d5e
	dec (hl)		;1d5f
	xor d			;1d60
	ld b,e			;1d61
	ld b,h			;1d62
	rlca			;1d63
	ld d,c			;1d64
	ld b,e			;1d65
	ld b,h			;1d66
	rlca			;1d67
	ld b,e			;1d68
	ld b,e			;1d69
	ld b,h			;1d6a
	rlca			;1d6b
	ld d,c			;1d6c
	push hl			;1d6d
	push bc			;1d6e
	ld hl,l0000h		;1d6f
	ld (0e3e0h),hl		;1d72
	ld hl,0e3e8h		;1d75
	ld b,008h		;1d78
l1d7ah:
	ld (hl),000h		;1d7a
	inc hl			;1d7c
	djnz l1d7ah		;1d7d
	pop bc			;1d7f
	pop hl			;1d80
	ret			;1d81
	ld a,(0e400h)		;1d82
	and a			;1d85
	ret m			;1d86
	ld a,(0f0f5h)		;1d87
	bit 0,a			;1d8a
	ret z			;1d8c
	call 0bed0h		;1d8d
	and a			;1d90
	ret z			;1d91
	ld hl,0e3e1h		;1d92
	cp (hl)			;1d95
	ret z			;1d96
	ld (hl),a		;1d97
	ld c,a			;1d98
	cp 00dh			;1d99
	jr z,l1dadh		;1d9b
	ld hl,0e3e0h		;1d9d
	ld a,(hl)		;1da0
	cp 008h			;1da1
	ret nc			;1da3
	inc (hl)		;1da4
	ld hl,0e3e8h		;1da5
	call 0407ah		;1da8
	ld (hl),c		;1dab
	ret			;1dac
l1dadh:
	ld hl,0bd6dh		;1dad
	push hl			;1db0
	ld bc,l0300h		;1db1
l1db4h:
	push bc			;1db4
	call 0bdbfh		;1db5
	pop bc			;1db8
	jr nc,l1dd4h		;1db9
	inc c			;1dbb
	djnz l1db4h		;1dbc
	ret			;1dbe
	ld hl,0beb0h		;1dbf
	ld a,c			;1dc2
	call 04b67h		;1dc3
	ld hl,0e3e8h		;1dc6
l1dc9h:
	ld a,(de)		;1dc9
	cp 00dh			;1dca
	ret z			;1dcc
	cp (hl)			;1dcd
	inc de			;1dce
	inc hl			;1dcf
	jr z,l1dc9h		;1dd0
	scf			;1dd2
	ret			;1dd3
l1dd4h:
	ld a,c			;1dd4
	call 04084h		;1dd5
	sbc a,0bdh		;1dd8
	adc a,l			;1dda
	cp (hl)			;1ddb
	sub (hl)		;1ddc
	cp (hl)			;1ddd
	ld a,(0e20fh)		;1dde
	add a,a			;1de1
	add a,a			;1de2
	add a,a			;1de3
	add a,a			;1de4
	ld hl,0be0dh		;1de5
	call 0407ah		;1de8
	ld de,0e334h		;1deb
	ld bc,l0009h		;1dee
	ldir			;1df1
	ld de,0e430h		;1df3
	ld bc,l0007h		;1df6
	ldir			;1df9
	call 08060h		;1dfb
	call 081b5h		;1dfe
l1e01h:
	call 0448eh		;1e01
	ld a,(0e20fh)		;1e04
	cp 004h			;1e07
	ret nz			;1e09
	jp 04482h		;1e0a
	ld (bc),a		;1e0d
	rst 38h			;1e0e
	nop			;1e0f
	rst 38h			;1e10
	rst 38h			;1e11
	rst 38h			;1e12
	nop			;1e13
	nop			;1e14
	nop			;1e15
	nop			;1e16
	nop			;1e17
	ld (bc),a		;1e18
	ld (bc),a		;1e19
	nop			;1e1a
	nop			;1e1b
	nop			;1e1c
	ld (bc),a		;1e1d
	rst 38h			;1e1e
	nop			;1e1f
	rst 38h			;1e20
	rst 38h			;1e21
	rst 38h			;1e22
	rst 38h			;1e23
	nop			;1e24
	nop			;1e25
	nop			;1e26
	nop			;1e27
	ld (bc),a		;1e28
	ld (bc),a		;1e29
	ld (bc),a		;1e2a
	nop			;1e2b
	nop			;1e2c
	ld (bc),a		;1e2d
	nop			;1e2e
	nop			;1e2f
	nop			;1e30
	rst 38h			;1e31
	rst 38h			;1e32
	rst 38h			;1e33
	rst 38h			;1e34
	nop			;1e35
	nop			;1e36
	nop			;1e37
	ld (bc),a		;1e38
	nop			;1e39
	nop			;1e3a
	ld (bc),a		;1e3b
	nop			;1e3c
	ld (bc),a		;1e3d
	rst 38h			;1e3e
	nop			;1e3f
	rst 38h			;1e40
	nop			;1e41
	rst 38h			;1e42
	rst 38h			;1e43
	rst 38h			;1e44
	nop			;1e45
	nop			;1e46
	nop			;1e47
	ld (bc),a		;1e48
	inc bc			;1e49
	ld (bc),a		;1e4a
	nop			;1e4b
	nop			;1e4c
	ld (bc),a		;1e4d
	rst 38h			;1e4e
	rst 38h			;1e4f
	nop			;1e50
	nop			;1e51
	nop			;1e52
	rst 38h			;1e53
	rst 38h			;1e54
	nop			;1e55
	nop			;1e56
	nop			;1e57
	dec b			;1e58
	inc bc			;1e59
	nop			;1e5a
	nop			;1e5b
	nop			;1e5c
	ld (bc),a		;1e5d
	rst 38h			;1e5e
	nop			;1e5f
	rst 38h			;1e60
	nop			;1e61
	rst 38h			;1e62
	rst 38h			;1e63
	rst 38h			;1e64
	nop			;1e65
	nop			;1e66
	nop			;1e67
	inc bc			;1e68
	inc bc			;1e69
	ld (bc),a		;1e6a
	nop			;1e6b
	nop			;1e6c
	ld (bc),a		;1e6d
	rst 38h			;1e6e
	rst 38h			;1e6f
	nop			;1e70
	nop			;1e71
	nop			;1e72
	nop			;1e73
	rst 38h			;1e74
	rst 38h			;1e75
	ld bc,l0000h		;1e76
	inc bc			;1e79
	nop			;1e7a
	nop			;1e7b
	ld bc,0ff02h		;1e7c
	nop			;1e7f
	rst 38h			;1e80
	rst 38h			;1e81
	nop			;1e82
	nop			;1e83
	rst 38h			;1e84
	nop			;1e85
	nop			;1e86
	nop			;1e87
	ld b,003h		;1e88
	ld (bc),a		;1e8a
	nop			;1e8b
	nop			;1e8c
	call 04a08h		;1e8d
	call 04c76h		;1e90
	jp 07c11h		;1e93
	ld hl,l1e01h		;1e96
	ld (0e446h),hl		;1e99
	ret			;1e9c
	ld hl,0e446h		;1e9d
	ld a,(hl)		;1ea0
	or a			;1ea1
	ret z			;1ea2
	ld a,(0e1c3h)		;1ea3
	and 01fh		;1ea6
	ret nz			;1ea8
	inc l			;1ea9
	dec (hl)		;1eaa
	ret nz			;1eab
	dec l			;1eac
	ld (hl),000h		;1ead
	ret			;1eaf
	or (hl)			;1eb0
	cp (hl)			;1eb1
	cp a			;1eb2
	cp (hl)			;1eb3
	rst 0			;1eb4
	cp (hl)			;1eb5
	ld c,h			;1eb6
	ld b,c			;1eb7
	ld d,d			;1eb8
	ld d,e			;1eb9
	ld sp,05438h		;1eba
	ld c,b			;1ebd
	dec c			;1ebe
	ld c,(hl)		;1ebf
	ld b,l			;1ec0
	ld c,l			;1ec1
	ld b,l			;1ec2
	ld d,e			;1ec3
	ld c,c			;1ec4
	ld d,e			;1ec5
	dec c			;1ec6
	ld c,l			;1ec7
	ld b,l			;1ec8
	ld d,h			;1ec9
	ld b,c			;1eca
	ld c,h			;1ecb
	ld c,c			;1ecc
	ld c,a			;1ecd
	ld c,(hl)		;1ece
	dec c			;1ecf
	ld b,008h		;1ed0
	ld e,000h		;1ed2
l1ed4h:
	ld a,e			;1ed4
	call sub_0141h		;1ed5
	cpl			;1ed8
	and a			;1ed9
	jr nz,l1ee4h		;1eda
	inc e			;1edc
	djnz l1ed4h		;1edd
	xor a			;1edf
	ld (0e3e1h),a		;1ee0
	ret			;1ee3
l1ee4h:
	ld b,a			;1ee4
	ld a,e			;1ee5
	add a,a			;1ee6
	add a,a			;1ee7
	add a,a			;1ee8
	ld hl,0bef8h		;1ee9
	call 0407ah		;1eec
	ld a,b			;1eef
l1ef0h:
	rra			;1ef0
	jr c,l1ef6h		;1ef1
	inc hl			;1ef3
	jr l1ef0h		;1ef4
l1ef6h:
	ld a,(hl)		;1ef6
	ret			;1ef7
	jr nc,l1f2bh		;1ef8
	ld (03433h),a		;1efa
	dec (hl)		;1efd
	ld (hl),037h		;1efe
	jr c,l1f3bh		;1f00
	dec l			;1f02
	ld e,(hl)		;1f03
	add hl,bc		;1f04
	ld b,b			;1f05
	ld e,e			;1f06
	dec sp			;1f07
	ld a,(02c5dh)		;1f08
l1f0bh:
	ld l,02fh		;1f0b
	ld e,a			;1f0d
	ld b,c			;1f0e
	ld b,d			;1f0f
	ld b,e			;1f10
	ld b,h			;1f11
	ld b,l			;1f12
	ld b,(hl)		;1f13
	ld b,a			;1f14
	ld c,b			;1f15
	ld c,c			;1f16
	ld c,d			;1f17
	ld c,e			;1f18
	ld c,h			;1f19
	ld c,l			;1f1a
	ld c,(hl)		;1f1b
	ld c,a			;1f1c
	ld d,b			;1f1d
	ld d,c			;1f1e
	ld d,d			;1f1f
	ld d,e			;1f20
	ld d,h			;1f21
	ld d,l			;1f22
	ld d,(hl)		;1f23
	ld d,a			;1f24
	ld e,b			;1f25
	ld e,c			;1f26
	ld e,d			;1f27
	nop			;1f28
	nop			;1f29
	nop			;1f2a
l1f2bh:
	nop			;1f2b
	nop			;1f2c
	nop			;1f2d
	nop			;1f2e
	nop			;1f2f
	nop			;1f30
	nop			;1f31
	nop			;1f32
	nop			;1f33
	nop			;1f34
	nop			;1f35
	nop			;1f36
	dec c			;1f37
	nop			;1f38
	nop			;1f39
	nop			;1f3a
l1f3bh:
	nop			;1f3b
	nop			;1f3c
	nop			;1f3d
	nop			;1f3e
	nop			;1f3f
	ld a,(0e400h)		;1f40
	dec a			;1f43
	ret m			;1f44
	ld a,(0e3d0h)		;1f45
	and a			;1f48
	jr z,l1f5ah		;1f49
	ld hl,0e3d5h		;1f4b
	dec (hl)		;1f4e
	ret nz			;1f4f
	ld a,002h		;1f50
	ld (0e3d0h),a		;1f52
	ld a,03ch		;1f55
	jp 04ae4h		;1f57
l1f5ah:
	call 0bf68h		;1f5a
	ld a,(0e3d1h)		;1f5d
	and a			;1f60
	ret z			;1f61
	call 0bfb8h		;1f62
	jp 0bfa6h		;1f65
	ld a,(0e320h)		;1f68
	and a			;1f6b
	ret z			;1f6c
	ld a,(0e201h)		;1f6d
	ld hl,(0e203h)		;1f70
	cp 003h			;1f73
	jr z,l1f80h		;1f75
	cp 006h			;1f77
	jr z,l1f89h		;1f79
	cp 00ah			;1f7b
	jr z,l1f92h		;1f7d
	ret			;1f7f
l1f80h:
	ld de,00174h		;1f80
	rst 20h			;1f83
	ret nz			;1f84
	ld e,090h		;1f85
	jr l1f9bh		;1f87
l1f89h:
	ld de,l0164h		;1f89
	rst 20h			;1f8c
	ret nz			;1f8d
	ld e,088h		;1f8e
	jr l1f9bh		;1f90
l1f92h:
	ld de,000dfh		;1f92
	rst 20h			;1f95
	ret nz			;1f96
	ld e,030h		;1f97
	jr l1f9bh		;1f99
l1f9bh:
	ld hl,0e3d1h		;1f9b
	ld (hl),001h		;1f9e
	inc l			;1fa0
	ld (hl),e		;1fa1
	inc l			;1fa2
	ld (hl),0f0h		;1fa3
	ret			;1fa5
	ld a,(0e320h)		;1fa6
	and a			;1fa9
	ret z			;1faa
	ld hl,0e3d3h		;1fab
	ld a,(hl)		;1fae
	sub 008h		;1faf
	ld (hl),a		;1fb1
	ret nc			;1fb2
	dec l			;1fb3
	dec l			;1fb4
	ld (hl),000h		;1fb5
	ret			;1fb7
	ld hl,0e3d2h		;1fb8
	ld a,(0e404h)		;1fbb
	sub (hl)		;1fbe
	add a,008h		;1fbf
	cp 018h			;1fc1
	ret nc			;1fc3
	inc l			;1fc4
	ld a,(0e406h)		;1fc5
	sub (hl)		;1fc8
	cp 010h			;1fc9
	ret nc			;1fcb
	ld a,(0e201h)		;1fcc
	cp 003h			;1fcf
	jr z,l1fe1h		;1fd1
	cp 006h			;1fd3
	jr z,l1fdch		;1fd5
	ld hl,0017fh		;1fd7
	jr l1fe4h		;1fda
l1fdch:
	ld hl,001dfh		;1fdc
	jr l1fe4h		;1fdf
l1fe1h:
	ld hl,001ffh		;1fe1
l1fe4h:
	ld (0e325h),hl		;1fe4
	ld a,040h		;1fe7
	ld (0e3d5h),a		;1fe9
	xor a			;1fec
	ld (0e3d1h),a		;1fed
	inc a			;1ff0
	ld (0e3d0h),a		;1ff1
	call 08fa2h		;1ff4
	ld a,043h		;1ff7
	jp 04ae4h		;1ff9
	rst 38h			;1ffc
	rst 38h			;1ffd
	rst 38h			;1ffe
	rst 38h			;1fff
