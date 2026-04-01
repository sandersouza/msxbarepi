; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x0000 -o docs/reverse-engineering/issues/issue-188/gradius2e_banks/bank02.asm /tmp/gradius2e_bank02.bin

	org 00000h

l0000h:
	rrca			;0000
l0001h:
	jp po,l04feh		;0001
l0004h:
	ret c			;0004
l0005h:
	cp 006h			;0005
l0007h:
	jr c,$-74		;0007
l0009h:
	jr $-15			;0009
	ld a,(0e20fh)		;000b
	cp 001h			;000e
l0010h:
	jr z,l001dh		;0010
	cp 006h			;0012
	jr c,l0022h		;0014
l0016h:
	call 07fbdh		;0016
l0019h:
	xor a			;0019
	ld (0e337h),a		;001a
l001dh:
	xor a			;001d
	ld (0e336h),a		;001e
	ret			;0021
l0022h:
	xor a			;0022
	ld (0e338h),a		;0023
	jr l001dh		;0026
	ld a,(0e20fh)		;0028
	cp 002h			;002b
	ret c			;002d
	cp 006h			;002e
l0030h:
	jr c,l0036h		;0030
	xor a			;0032
	ld (0e338h),a		;0033
l0036h:
	xor a			;0036
	ld (0e337h),a		;0037
	ld (0e336h),a		;003a
	ld (0e335h),a		;003d
l0040h:
	ret			;0040
	ld a,(0e20fh)		;0041
	cp 006h			;0044
	jr c,l001dh		;0046
	jr l0019h		;0048
	ld a,(0e20fh)		;004a
	ld c,a			;004d
	add a,a			;004e
	add a,a			;004f
l0050h:
	add a,a			;0050
	add a,c			;0051
	ld c,a			;0052
	ld a,(0e33dh)		;0053
	add a,c			;0056
	ld c,a			;0057
	ld b,000h		;0058
	ld hl,08074h		;005a
	add hl,bc		;005d
	ld c,(hl)		;005e
	ret			;005f
	ld hl,0806dh		;0060
	ld a,(0e20fh)		;0063
	call 05ca6h		;0066
	ld (0e331h),a		;0069
	ret			;006c
	rlca			;006d
	ex af,af'		;006e
	add hl,bc		;006f
	add hl,bc		;0070
	add hl,bc		;0071
	add hl,bc		;0072
	ld a,(bc)		;0073
	ld a,(bc)		;0074
	rlca			;0075
	ld (bc),a		;0076
	ld bc,l0202h		;0077
	ld bc,l0000h		;007a
	nop			;007d
	rlca			;007e
l007fh:
	ld (bc),a		;007f
l0080h:
	ld bc,l0202h		;0080
	ld (bc),a		;0083
	ld bc,l0000h		;0084
	rlca			;0087
l0088h:
	ld (bc),a		;0088
	ld bc,l0202h		;0089
	ld (bc),a		;008c
	ld bc,l0001h		;008d
	rlca			;0090
	inc bc			;0091
	ld bc,l0202h		;0092
	ld (bc),a		;0095
	ld bc,l0001h		;0096
	rlca			;0099
	inc bc			;009a
	ld (bc),a		;009b
	ld (bc),a		;009c
	ld (bc),a		;009d
	ld (bc),a		;009e
	ld bc,l0001h		;009f
	rlca			;00a2
	inc bc			;00a3
	ld (bc),a		;00a4
	ld (bc),a		;00a5
	ld (bc),a		;00a6
	inc bc			;00a7
	ld (bc),a		;00a8
	ld bc,00700h		;00a9
	inc bc			;00ac
	ld bc,l0202h		;00ad
	ld (bc),a		;00b0
	inc bc			;00b1
	ld (bc),a		;00b2
	ld bc,l0307h		;00b3
	ld bc,l0203h		;00b6
	ld (bc),a		;00b9
	inc bc			;00ba
	ld (bc),a		;00bb
	ld bc,0c6cdh		;00bc
	add a,b			;00bf
	call 08060h		;00c0
	jp 05387h		;00c3
	ld b,a			;00c6
l00c7h:
	ld hl,0e20fh		;00c7
	ld a,(hl)		;00ca
	inc a			;00cb
	cp 008h			;00cc
	ret nc			;00ce
	ld (hl),a		;00cf
	push bc			;00d0
	call 080d8h		;00d1
	pop bc			;00d4
	djnz l00c7h		;00d5
	ret			;00d7
	ld hl,0f010h		;00d8
	ld de,0f011h		;00db
	ld bc,l0007h+1		;00de
	ld (hl),000h		;00e1
	ldir			;00e3
	ld a,(0e20fh)		;00e5
	ld hl,08146h		;00e8
	call 04b67h		;00eb
	ex de,hl		;00ee
l00efh:
	ld a,(hl)		;00ef
	or a			;00f0
	jr z,l0107h		;00f1
	inc hl			;00f3
	ld c,(hl)		;00f4
	inc hl			;00f5
	push hl			;00f6
	ld hl,0e333h		;00f7
	add a,l			;00fa
	ld l,a			;00fb
	ld de,0f00fh		;00fc
	ld a,c			;00ff
l0100h:
	add a,e			;0100
l0101h:
	ld e,a			;0101
	ldi			;0102
	pop hl			;0104
	jr l00efh		;0105
l0107h:
	ld hl,0f010h		;0107
	ld de,0e334h		;010a
	ld bc,l0009h		;010d
	ldir			;0110
	ld a,(0e20fh)		;0112
	cp 003h			;0115
	jr z,l013fh		;0117
	cp 004h			;0119
	jr z,l0136h		;011b
	cp 005h			;011d
	jr z,l012dh		;011f
	cp 007h			;0121
	ret nz			;0123
	ld hl,0e337h		;0124
	ld a,(hl)		;0127
	inc a			;0128
	ret nz			;0129
	ld (hl),002h		;012a
l012ch:
	ret			;012c
l012dh:
	ld hl,0e339h		;012d
	ld a,(hl)		;0130
	inc a			;0131
	ret nz			;0132
	ld (hl),002h		;0133
	ret			;0135
l0136h:
	ld hl,0e336h		;0136
	ld a,(hl)		;0139
	inc a			;013a
	ret nz			;013b
	ld (hl),001h		;013c
	ret			;013e
l013fh:
	ld hl,0e335h		;013f
	ld a,(hl)		;0142
	inc a			;0143
	ret nz			;0144
	ld (hl),002h		;0145
	ret			;0147
	ld d,(hl)		;0148
	add a,c			;0149
	ld h,e			;014a
	add a,c			;014b
	ld (hl),h		;014c
	add a,c			;014d
	ld (hl),h		;014e
	add a,c			;014f
	ld (hl),h		;0150
	add a,c			;0151
	add a,l			;0152
	add a,c			;0153
	ld (hl),d		;0154
	add a,c			;0155
	ld b,007h		;0156
	dec b			;0158
	ld b,004h		;0159
	dec b			;015b
	inc bc			;015c
	inc bc			;015d
	ld (bc),a		;015e
	ld (bc),a		;015f
	ld bc,l0001h		;0160
	rlca			;0163
	ex af,af'		;0164
	ld b,007h		;0165
	dec b			;0167
	ld b,004h		;0168
	inc b			;016a
	inc bc			;016b
	inc bc			;016c
	ld (bc),a		;016d
	ld (bc),a		;016e
	ld bc,l0001h		;016f
	add hl,bc		;0172
	add hl,bc		;0173
	ex af,af'		;0174
	ex af,af'		;0175
	rlca			;0176
	rlca			;0177
	ld b,006h		;0178
	dec b			;017a
	dec b			;017b
	inc b			;017c
	inc b			;017d
	inc bc			;017e
	inc bc			;017f
l0180h:
	ld (bc),a		;0180
	ld (bc),a		;0181
	ld bc,l0001h		;0182
	ex af,af'		;0185
	add hl,bc		;0186
	rlca			;0187
	ex af,af'		;0188
	ld b,007h		;0189
	dec b			;018b
l018ch:
	ld b,004h		;018c
	dec b			;018e
	inc bc			;018f
	inc b			;0190
	ld (bc),a		;0191
	ld (bc),a		;0192
	ld bc,l0001h		;0193
	ld a,007h		;0196
	ld (0e20fh),a		;0198
	ld a,00ah		;019b
	ld (0e331h),a		;019d
	ld hl,081cah		;01a0
	ld de,0e334h		;01a3
	ld bc,l0009h		;01a6
	ldir			;01a9
	ld de,0e430h		;01ab
	ld bc,l0007h		;01ae
	ldir			;01b1
	ld c,07fh		;01b3
	ld hl,0e400h		;01b5
	ld (hl),002h		;01b8
	inc l			;01ba
	ld (hl),c		;01bb
	inc l			;01bc
	ld (hl),002h		;01bd
	ld a,002h		;01bf
	ld (0e40bh),a		;01c1
	call 07e13h		;01c4
	jp 053a3h		;01c7
	ld (bc),a		;01ca
	rst 38h			;01cb
	nop			;01cc
	nop			;01cd
	rst 38h			;01ce
	nop			;01cf
	ld (bc),a		;01d0
	rst 38h			;01d1
	rst 38h			;01d2
	nop			;01d3
	nop			;01d4
	ld (bc),a		;01d5
	inc bc			;01d6
	ld (bc),a		;01d7
	nop			;01d8
	nop			;01d9
	exx			;01da
	ld a,(0e305h)		;01db
	ld c,a			;01de
	exx			;01df
	ld iy,0e470h		;01e0
	ld b,009h		;01e4
l01e6h:
	push bc			;01e6
	call 081f3h		;01e7
	ld bc,l0010h		;01ea
	add iy,bc		;01ed
	pop bc			;01ef
	djnz l01e6h		;01f0
	ret			;01f2
	ld a,(iy+000h)		;01f3
	dec a			;01f6
	ret m			;01f7
	call 04084h		;01f8
	add hl,de		;01fb
	add a,d			;01fc
	daa			;01fd
	add a,d			;01fe
	add hl,de		;01ff
l0200h:
	add a,d			;0200
	ld c,d			;0201
l0202h:
	add a,d			;0202
l0203h:
	ld c,d			;0203
	add a,d			;0204
	jp p,07c81h		;0205
	add a,d			;0208
	ld a,h			;0209
	add a,d			;020a
	ex af,af'		;020b
	add a,e			;020c
	ret c			;020d
	add a,d			;020e
	ret c			;020f
	add a,d			;0210
	ret c			;0211
	add a,d			;0212
	ret c			;0213
	add a,d			;0214
	ld h,(hl)		;0215
	add a,e			;0216
	ld a,h			;0217
	add a,d			;0218
	ld a,(iy+005h)		;0219
	sub 008h		;021c
	ld h,a			;021e
	call 0822ah		;021f
	ld a,(iy+000h)		;0222
	or a			;0225
	ret z			;0226
	ld h,(iy+005h)		;0227
	ld l,(iy+003h)		;022a
	call 08388h		;022d
	ret nc			;0230
	ld (iy+000h),000h	;0231
	ld a,(0e340h)		;0235
	or a			;0238
	jp z,08481h		;0239
	ld a,(0e309h)		;023c
	or a			;023f
	ret nz			;0240
	inc a			;0241
	ld (0e309h),a		;0242
	ld a,005h		;0245
	jp 04ae4h		;0247
	ld h,(iy+005h)		;024a
	ld l,(iy+003h)		;024d
	call 08388h		;0250
	jr nc,l026bh		;0253
	ld (iy+000h),000h	;0255
	ld a,(0e340h)		;0259
	or a			;025c
	jp nz,0823ch		;025d
	ld a,(0e201h)		;0260
	cp 005h			;0263
	ret nz			;0265
	ld a,012h		;0266
	jp 04ae4h		;0268
l026bh:
	ld a,(0e340h)		;026b
	or a			;026e
	ret nz			;026f
	ld h,(iy+005h)		;0270
	ld a,(iy+003h)		;0273
	add a,008h		;0276
	ld l,a			;0278
	jp 08388h		;0279
	ld h,(iy+005h)		;027c
	ld l,(iy+003h)		;027f
	call 05c92h		;0282
	ex de,hl		;0285
	ld a,(iy+00ah)		;0286
	or a			;0289
	ret z			;028a
	ld b,a			;028b
l028ch:
	call 082bch		;028c
	jr nc,l029ch		;028f
	ld a,(0e340h)		;0291
	or a			;0294
	jr nz,l02a0h		;0295
	call 08481h		;0297
	jr nc,l02a0h		;029a
l029ch:
	inc de			;029c
	djnz l028ch		;029d
	ret			;029f
l02a0h:
	ld a,(iy+00ah)		;02a0
	inc b			;02a3
	sub b			;02a4
	jp c,0ae01h		;02a5
	jp z,0ae01h		;02a8
	ld (iy+00ah),a		;02ab
	ld a,(iy+000h)		;02ae
	cp 00fh			;02b1
	ld a,001h		;02b3
	jr z,l02b8h		;02b5
	inc a			;02b7
l02b8h:
	ld (iy+001h),a		;02b8
	ret			;02bb
	ld a,(0e201h)		;02bc
	or a			;02bf
	jr z,l02cfh		;02c0
	sub 007h		;02c2
	cp 002h			;02c4
	jr c,l02cfh		;02c6
	ld a,(de)		;02c8
	and a			;02c9
	ret z			;02ca
	exx			;02cb
	cp c			;02cc
	exx			;02cd
	ret			;02ce
l02cfh:
	ld a,(de)		;02cf
	cp 009h			;02d0
	ccf			;02d2
	ret nc			;02d3
	exx			;02d4
	cp c			;02d5
	exx			;02d6
	ret			;02d7
	ld h,(iy+005h)		;02d8
	ld l,(iy+003h)		;02db
	call 05c92h		;02de
	ex de,hl		;02e1
	ld a,(iy+00ah)		;02e2
	or a			;02e5
	ret z			;02e6
	ld b,a			;02e7
l02e8h:
	call 082bch		;02e8
	jr nc,l02fah		;02eb
	ld a,(0e340h)		;02ed
	or a			;02f0
	jp nz,0ae01h		;02f1
	call 08481h		;02f4
	jp nc,0ae01h		;02f7
l02fah:
	inc de			;02fa
	djnz l02e8h		;02fb
	ret			;02fd
	ld a,(iy+00ah)		;02fe
	add a,a			;0301
l0302h:
	add a,a			;0302
	add a,a			;0303
	ld (iy+00ch),a		;0304
l0307h:
	ret			;0307
	ld h,(iy+005h)		;0308
	ld l,(iy+003h)		;030b
	call 05c92h		;030e
	ld (0f000h),hl		;0311
	ex de,hl		;0314
	ld a,(iy+00ah)		;0315
	or a			;0318
	jr z,l035ch		;0319
	ld b,a			;031b
l031ch:
	call 082bch		;031c
	jr nc,l032eh		;031f
	ld a,(0e340h)		;0321
	or a			;0324
	jp nz,0ae01h		;0325
	call 08481h		;0328
	jp nc,0ae01h		;032b
l032eh:
	ld a,020h		;032e
	call 0407fh		;0330
	djnz l031ch		;0333
	ld a,(0e320h)		;0335
	or a			;0338
	jr z,l035ch		;0339
	ld de,(0f000h)		;033b
	dec de			;033f
	ld b,(iy+00ah)		;0340
l0343h:
	call 082bch		;0343
	jr nc,l0355h		;0346
	ld a,(0e340h)		;0348
	or a			;034b
	jp nz,0ae01h		;034c
	call 08481h		;034f
	jp nc,0ae01h		;0352
l0355h:
	ld a,020h		;0355
	call 0407fh		;0357
	djnz l0343h		;035a
l035ch:
	ld a,(iy+00ah)		;035c
	add a,a			;035f
	add a,a			;0360
	add a,a			;0361
	ld (iy+00dh),a		;0362
	ret			;0365
	ld h,(iy+005h)		;0366
	ld l,(iy+003h)		;0369
	call 05c92h		;036c
	ex de,hl		;036f
	ld b,002h		;0370
l0372h:
	call 082bch		;0372
	jr nc,l0384h		;0375
	ld a,(0e340h)		;0377
	or a			;037a
	jp nz,0ae01h		;037b
	call 08481h		;037e
	jp nc,0ae01h		;0381
l0384h:
	inc de			;0384
	djnz l0372h		;0385
	ret			;0387
	call 05c92h		;0388
	ex de,hl		;038b
	call 08395h		;038c
	ret c			;038f
	inc de			;0390
	ld a,e			;0391
	and 01fh		;0392
	ret z			;0394
	ld a,(0e201h)		;0395
	or a			;0398
	jr z,l03a8h		;0399
	sub 007h		;039b
	cp 002h			;039d
	jr c,l03a8h		;039f
	ld a,(de)		;03a1
	and a			;03a2
	ret z			;03a3
	exx			;03a4
	cp c			;03a5
	exx			;03a6
	ret			;03a7
l03a8h:
	ld a,(de)		;03a8
	cp 009h			;03a9
	ccf			;03ab
	ret nc			;03ac
	exx			;03ad
	cp c			;03ae
	exx			;03af
	ret			;03b0
	ld a,(ix+004h)		;03b1
	sub 008h		;03b4
	ld l,a			;03b6
l03b7h:
	ld h,(ix+006h)		;03b7
	call 05c92h		;03ba
	ld a,(0e305h)		;03bd
	ld c,a			;03c0
	ld b,006h		;03c1
l03c3h:
	ld a,(hl)		;03c3
	inc l			;03c4
	and a			;03c5
	ret z			;03c6
	cp c			;03c7
	ret c			;03c8
	djnz l03c3h		;03c9
	xor a			;03cb
	ret			;03cc
	ld a,(ix+004h)		;03cd
	add a,030h		;03d0
	cp 0a0h			;03d2
	ccf			;03d4
	ret c			;03d5
	ld l,a			;03d6
	jr l03b7h		;03d7
	call 05c92h		;03d9
	ld c,08ah		;03dc
	ld a,(0e201h)		;03de
	dec a			;03e1
	jr z,l03f2h		;03e2
	ld c,067h		;03e4
	jr l03f2h		;03e6
	call 05c92h		;03e8
	ld (0e3bch),hl		;03eb
	ld a,(0e305h)		;03ee
	ld c,a			;03f1
l03f2h:
	call 083fbh		;03f2
	ret c			;03f5
	inc hl			;03f6
	ld a,l			;03f7
	and 01fh		;03f8
	ret z			;03fa
	ld a,(0e201h)		;03fb
	or a			;03fe
	jr z,l040ch		;03ff
	sub 007h		;0401
	cp 002h			;0403
	jr c,l040ch		;0405
	ld a,(hl)		;0407
l0408h:
	and a			;0408
	ret z			;0409
	cp c			;040a
	ret			;040b
l040ch:
	ld a,(hl)		;040c
	cp 009h			;040d
	ccf			;040f
	ret nc			;0410
	cp c			;0411
	ret			;0412
	ld a,(0e400h)		;0413
	dec a			;0416
	ret m			;0417
	ld a,(0e3d0h)		;0418
	or a			;041b
	ret nz			;041c
	exx			;041d
	ld a,(0e305h)		;041e
	ld c,a			;0421
	exx			;0422
	call 0844ah		;0423
	ret nc			;0426
	ld a,(0e400h)		;0427
	cp 003h			;042a
	jp nz,08e7ch		;042c
	call 08481h		;042f
	jp nc,08e7ch		;0432
	ld a,(0e404h)		;0435
	add a,008h		;0438
	ld l,a			;043a
	ld a,(0e406h)		;043b
	ld h,a			;043e
	call 05c92h		;043f
	ex de,hl		;0442
	call 08481h		;0443
	inc de			;0446
	jp 08481h		;0447
	ld a,(0e404h)		;044a
	add a,008h		;044d
	ld l,a			;044f
	ld a,(0e406h)		;0450
	ld h,a			;0453
	and 007h		;0454
	cp 004h			;0456
	push af			;0458
	call 05c92h		;0459
	ex de,hl		;045c
	pop af			;045d
	jr nc,l0464h		;045e
	call 08465h		;0460
	ret c			;0463
l0464h:
	inc de			;0464
	ld a,(0e201h)		;0465
	or a			;0468
	jr z,l0478h		;0469
	sub 007h		;046b
	cp 002h			;046d
	jr c,l0478h		;046f
	ld a,(de)		;0471
	or a			;0472
	ret z			;0473
	exx			;0474
	cp c			;0475
	exx			;0476
	ret			;0477
l0478h:
	ld a,(de)		;0478
	cp 009h			;0479
	ccf			;047b
	ret nc			;047c
	exx			;047d
	cp c			;047e
	exx			;047f
	ret			;0480
	ld hl,0af04h		;0481
	ld a,(0e201h)		;0484
	sub 002h		;0487
	jr z,l049fh		;0489
	ld h,067h		;048b
	sub 004h		;048d
	jr z,l049fh		;048f
	dec a			;0491
	jr z,l04aah		;0492
	ld hl,0a001h		;0494
	sub 002h		;0497
	cp 003h			;0499
	jr c,l049fh		;049b
	xor a			;049d
	ret			;049e
l049fh:
	ld a,(de)		;049f
	sub h			;04a0
	cp l			;04a1
	ret nc			;04a2
	xor a			;04a3
	ld (de),a		;04a4
	call 084bch		;04a5
	scf			;04a8
	ret			;04a9
l04aah:
	ld a,(de)		;04aa
	sub 01fh		;04ab
	cp 05ch			;04ad
	ret nc			;04af
	ld hl,084cah		;04b0
	call 05ca6h		;04b3
	ld (de),a		;04b6
	call 084bch		;04b7
	scf			;04ba
	ret			;04bb
	ld a,(0e308h)		;04bc
	or a			;04bf
	ret nz			;04c0
	inc a			;04c1
	ld (0e308h),a		;04c2
	ld a,004h		;04c5
	jp 04ae4h		;04c7
	nop			;04ca
	nop			;04cb
	nop			;04cc
	nop			;04cd
	nop			;04ce
	nop			;04cf
	nop			;04d0
	nop			;04d1
	nop			;04d2
	nop			;04d3
	and d			;04d4
	and d			;04d5
	and e			;04d6
	and e			;04d7
	and e			;04d8
	and h			;04d9
	and l			;04da
	and l			;04db
	and l			;04dc
	and (hl)		;04dd
	and (hl)		;04de
	and a			;04df
	and a			;04e0
	xor b			;04e1
	xor c			;04e2
	xor d			;04e3
	xor d			;04e4
	xor e			;04e5
	xor e			;04e6
	xor e			;04e7
	xor e			;04e8
	xor h			;04e9
	xor h			;04ea
	xor h			;04eb
	xor l			;04ec
	xor l			;04ed
	xor (hl)		;04ee
	xor (hl)		;04ef
	xor a			;04f0
	or b			;04f1
	or b			;04f2
	or b			;04f3
	or c			;04f4
	or c			;04f5
	or c			;04f6
	or c			;04f7
	or d			;04f8
	or d			;04f9
	or d			;04fa
	or d			;04fb
	or e			;04fc
	or e			;04fd
l04feh:
	or e			;04fe
	or e			;04ff
	or h			;0500
	or l			;0501
	or (hl)			;0502
	or (hl)			;0503
	or a			;0504
	or a			;0505
	cp b			;0506
	cp b			;0507
	cp b			;0508
	cp b			;0509
	cp c			;050a
	cp d			;050b
	cp d			;050c
	cp e			;050d
	cp e			;050e
	cp e			;050f
	cp e			;0510
	cp h			;0511
	cp h			;0512
	cp l			;0513
	cp l			;0514
	cp (hl)			;0515
	cp (hl)			;0516
	cp a			;0517
	cp a			;0518
	cp a			;0519
	ret nz			;051a
	pop bc			;051b
	pop bc			;051c
	jp nz,0c2c2h		;051d
	call nz,0c5c4h		;0520
	add a,0a1h		;0523
	jp 0603ah		;0525
	jp pe,0c8b7h		;0528
	ld a,(0e320h)		;052b
	or a			;052e
	ret z			;052f
	ld a,(0ea62h)		;0530
	sub 008h		;0533
	ld (0ea62h),a		;0535
	ret nc			;0538
	xor a			;0539
	ld (0ea60h),a		;053a
	ret			;053d
	ld a,(0ea60h)		;053e
	or a			;0541
	ret z			;0542
	ld hl,(0ea61h)		;0543
	ld a,h			;0546
	cp 0f8h			;0547
	ret nc			;0549
	call 05c92h		;054a
	ld (0ea63h),hl		;054d
	ld c,0e9h		;0550
	jp 05227h		;0552
	ld a,(0ea60h)		;0555
	or a			;0558
	ret z			;0559
	ld hl,(0ea61h)		;055a
	ld a,h			;055d
	cp 0f8h			;055e
	ret nc			;0560
	ld hl,(0ea63h)		;0561
	xor a			;0564
	ld (hl),a		;0565
	inc l			;0566
	ld (hl),a		;0567
	ld bc,0001fh		;0568
	add hl,bc		;056b
	ld (hl),a		;056c
	inc l			;056d
	ld (hl),a		;056e
	ret			;056f
	ld a,(0e201h)		;0570
	cp 008h			;0573
	ret nz			;0575
	ld a,(0e320h)		;0576
	or a			;0579
	ret z			;057a
	ld hl,(0e203h)		;057b
	ld de,l007fh		;057e
	rst 20h			;0581
	ret nz			;0582
	ld hl,0ea90h		;0583
	ld (hl),001h		;0586
	inc l			;0588
	ld (hl),040h		;0589
	inc l			;058b
	ld (hl),0e0h		;058c
	inc l			;058e
	ld (hl),018h		;058f
	ret			;0591
	ld hl,0ea90h		;0592
	ld a,(hl)		;0595
	or a			;0596
	ret z			;0597
	ld a,(0e320h)		;0598
	or a			;059b
	ret z			;059c
	inc l			;059d
	inc l			;059e
	ld a,(hl)		;059f
	sub 008h		;05a0
	ld (hl),a		;05a2
	ret nc			;05a3
	xor a			;05a4
	ld (0ea90h),a		;05a5
	ret			;05a8
	ld a,(0ea90h)		;05a9
	dec a			;05ac
	ret nz			;05ad
	ld iy,0e470h		;05ae
	ld b,009h		;05b2
l05b4h:
	push bc			;05b4
	ld a,(iy+000h)		;05b5
	or a			;05b8
	call nz,085c6h		;05b9
	pop bc			;05bc
	ret c			;05bd
	ld de,l0010h		;05be
	add iy,de		;05c1
	djnz l05b4h		;05c3
	ret			;05c5
	cp 006h			;05c6
	ret z			;05c8
	ld hl,0ea91h		;05c9
	ld a,(hl)		;05cc
	sub (iy+003h)		;05cd
	jp nc,085dbh		;05d0
	neg			;05d3
	cp 020h			;05d5
	jp c,085dfh		;05d7
	ret			;05da
	cp (iy+00dh)		;05db
	ret nc			;05de
	inc l			;05df
	ld a,(hl)		;05e0
	sub (iy+005h)		;05e1
	jp nc,085efh		;05e4
	neg			;05e7
	cp 020h			;05e9
	jp c,085f3h		;05eb
	ret			;05ee
	cp (iy+00ch)		;05ef
	ret nc			;05f2
	call 085f8h		;05f3
	scf			;05f6
	ret			;05f7
	ld a,(iy+000h)		;05f8
	cp 005h			;05fb
	jr nz,l0605h		;05fd
	call 08a0ch		;05ff
	jp 08609h		;0602
l0605h:
	ld (iy+000h),000h	;0605
	ld hl,0ea93h		;0609
	dec (hl)		;060c
	jp m,08626h		;060d
	ld e,(iy+003h)		;0610
	ld a,r			;0613
	and 00fh		;0615
	dec l			;0617
	add a,(hl)		;0618
	ld d,a			;0619
	ld a,033h		;061a
	ld c,000h		;061c
	call 04d1eh		;061e
	ld a,005h		;0621
	jp 04ae4h		;0623
	ld a,002h		;0626
	ld (0ea90h),a		;0628
	ld hl,(0ea91h)		;062b
	call 05c92h		;062e
	xor a			;0631
	ld de,0001ch		;0632
	ld c,004h		;0635
l0637h:
	ld b,004h		;0637
l0639h:
	ld (hl),a		;0639
	inc l			;063a
	djnz l0639h		;063b
	add hl,de		;063d
	dec c			;063e
	jr nz,l0637h		;063f
	ld de,(0ea91h)		;0641
	call 08ba1h		;0645
	ld a,009h		;0648
	call 04ae4h		;064a
	ld de,l0050h		;064d
	jp 05b04h		;0650
	ld a,(0ea90h)		;0653
	or a			;0656
	ret z			;0657
	ld a,(0e400h)		;0658
	dec a			;065b
	ret m			;065c
	ld a,(0e3c0h)		;065d
	or a			;0660
	ret nz			;0661
	ld a,(0ea92h)		;0662
	ld b,a			;0665
	ld a,(0e406h)		;0666
	cp b			;0669
	ret c			;066a
	ld a,001h		;066b
	ld (0e3c0h),a		;066d
	call 07918h		;0670
	ld a,0f1h		;0673
	jp 04ae4h		;0675
	ld ix,0ea40h		;0678
	ld de,l0007h+1		;067c
	ld b,004h		;067f
l0681h:
	ld a,(ix+000h)		;0681
	and a			;0684
	call nz,0868dh		;0685
	add ix,de		;0688
	djnz l0681h		;068a
	ret			;068c
	call 086a0h		;068d
	ld a,(0e320h)		;0690
	and a			;0693
	ret z			;0694
	ld a,(ix+003h)		;0695
	sub 008h		;0698
	jr c,l06ach		;069a
	ld (ix+003h),a		;069c
	ret			;069f
	dec (ix+001h)		;06a0
	ret nz			;06a3
	ld (ix+001h),004h	;06a4
	dec (ix+006h)		;06a8
	ret p			;06ab
l06ach:
	ld (ix+000h),000h	;06ac
	ret			;06b0
	ld ix,0ea40h		;06b1
	ld iy,0ecc0h		;06b5
	ld b,004h		;06b9
l06bbh:
	push bc			;06bb
	call 086cch		;06bc
	ld bc,l0007h+1		;06bf
	add ix,bc		;06c2
	ld c,010h		;06c4
	add iy,bc		;06c6
	pop bc			;06c8
	djnz l06bbh		;06c9
	ret			;06cb
	ld a,(ix+000h)		;06cc
	or a			;06cf
	ret z			;06d0
	ld l,(ix+002h)		;06d1
	ld h,(ix+003h)		;06d4
	call 05c92h		;06d7
	ld (ix+004h),l		;06da
	ld (ix+005h),h		;06dd
	push iy			;06e0
	pop de			;06e2
	ld a,004h		;06e3
l06e5h:
	ld bc,l0004h		;06e5
	ldir			;06e8
	ld c,01ch		;06ea
	add hl,bc		;06ec
	dec a			;06ed
	jr nz,l06e5h		;06ee
	ret			;06f0
	ld ix,0ea40h		;06f1
	ld iy,0ecc0h		;06f5
	ld b,004h		;06f9
l06fbh:
	push bc			;06fb
	call 0870ch		;06fc
	ld bc,l0007h+1		;06ff
	add ix,bc		;0702
	ld c,010h		;0704
	add iy,bc		;0706
	pop bc			;0708
	djnz l06fbh		;0709
	ret			;070b
	ld a,(ix+000h)		;070c
	or a			;070f
	ret z			;0710
	ld e,(ix+004h)		;0711
	ld d,(ix+005h)		;0714
	push iy			;0717
	pop hl			;0719
	ld a,004h		;071a
l071ch:
	ld bc,l0004h		;071c
	ldir			;071f
	ld c,01ch		;0721
	ex de,hl		;0723
	add hl,bc		;0724
	ex de,hl		;0725
	dec a			;0726
	jr nz,l071ch		;0727
	ret			;0729
	ld ix,0ea40h		;072a
	ld b,004h		;072e
l0730h:
	push bc			;0730
	call 0873dh		;0731
	ld bc,l0007h+1		;0734
	add ix,bc		;0737
	pop bc			;0739
	djnz l0730h		;073a
	ret			;073c
	ld a,(ix+000h)		;073d
	and a			;0740
	ret z			;0741
	ld a,(ix+006h)		;0742
	ld hl,08762h		;0745
	call 04b67h		;0748
	ex de,hl		;074b
	ld e,(ix+004h)		;074c
	ld d,(ix+005h)		;074f
	ld a,004h		;0752
l0754h:
	ld bc,l0004h		;0754
	ldir			;0757
	ld c,01ch		;0759
	ex de,hl		;075b
	add hl,bc		;075c
	ex de,hl		;075d
	dec a			;075e
	jr nz,l0754h		;075f
	ret			;0761
	ld l,b			;0762
	add a,a			;0763
	ld a,b			;0764
	add a,a			;0765
	adc a,b			;0766
	add a,a			;0767
	nop			;0768
	nop			;0769
	nop			;076a
	nop			;076b
	nop			;076c
	push hl			;076d
	and 000h		;076e
	nop			;0770
	rst 20h			;0771
	ret pe			;0772
	nop			;0773
	nop			;0774
	nop			;0775
	nop			;0776
	nop			;0777
	nop			;0778
	nop			;0779
	in a,(0dch)		;077a
	nop			;077c
	defb 0ddh,0deh,0dfh ;illegal sequence	;077d
	nop			;0780
	ret po			;0781
	pop hl			;0782
	jp po,0e300h		;0783
	call po,0cb00h		;0786
	call z,0cecdh		;0789
	rst 8			;078c
	ret nc			;078d
	pop de			;078e
	jp nc,0d4d3h		;078f
	push de			;0792
	sub 0d7h		;0793
	ret c			;0795
	exx			;0796
	jp c,0b4cdh		;0797
	add a,a			;079a
	jr z,$-3		;079b
	ret c			;079d
	ld hl,0e359h		;079e
	inc (hl)		;07a1
	jr $-10			;07a2
	ld a,(0e320h)		;07a4
	and a			;07a7
	ret z			;07a8
	ld a,0f8h		;07a9
	ld (0f004h),a		;07ab
l07aeh:
	call 087b4h		;07ae
	jr z,l07aeh		;07b1
	ret			;07b3
	call 08879h		;07b4
	ret nz			;07b7
	ld hl,0e359h		;07b8
	inc (hl)		;07bb
	call 087c1h		;07bc
	xor a			;07bf
	ret			;07c0
	bit 7,c			;07c1
	jr z,l07cah		;07c3
	ld a,(0e20ah)		;07c5
	or a			;07c8
	ret z			;07c9
l07cah:
	ld a,b			;07ca
	and 0f8h		;07cb
	ld e,a			;07cd
	ld a,(0f004h)		;07ce
	ld d,a			;07d1
	ld a,c			;07d2
	rlca			;07d3
	rlca			;07d4
	rlca			;07d5
	and 003h		;07d6
	ld b,a			;07d8
	ld a,c			;07d9
	and 01fh		;07da
	ld (0f010h),a		;07dc
	ld a,b			;07df
	ld (0f011h),a		;07e0
	ld (0f012h),de		;07e3
	ld hl,0e500h		;07e7
	ld de,l0010h		;07ea
	xor a			;07ed
	ld b,008h		;07ee
l07f0h:
	cp (hl)			;07f0
	jr z,l07f8h		;07f1
	add hl,de		;07f3
	djnz l07f0h		;07f4
	xor a			;07f6
	ret			;07f7
l07f8h:
	push hl			;07f8
	pop ix			;07f9
	ld a,(0f010h)		;07fb
	ld (hl),a		;07fe
	push af			;07ff
l0800h:
	inc l			;0800
	ld (hl),000h		;0801
	ld de,(0f012h)		;0803
	inc l			;0807
	ld a,d			;0808
	cp 0f8h			;0809
	ld a,000h		;080b
	jr z,l0810h		;080d
	dec a			;080f
l0810h:
	ld (hl),a		;0810
	inc l			;0811
	xor a			;0812
	ld (hl),a		;0813
	inc l			;0814
	ld (hl),e		;0815
	inc l			;0816
	ld (hl),a		;0817
	inc l			;0818
	ld (hl),d		;0819
	ld a,l			;081a
	add a,005h		;081b
	ld l,a			;081d
	ld a,(0f011h)		;081e
	ld (hl),a		;0821
	pop af			;0822
	call 08828h		;0823
	scf			;0826
	ret			;0827
	dec a			;0828
	call 04084h		;0829
	rra			;082c
	or a			;082d
	daa			;082e
	adc a,b			;082f
	daa			;0830
	adc a,b			;0831
	adc a,e			;0832
	cp b			;0833
	add hl,de		;0834
	cp d			;0835
	sub (hl)		;0836
	cp e			;0837
	add hl,de		;0838
	and c			;0839
	daa			;083a
	adc a,b			;083b
	ld c,(hl)		;083c
	or h			;083d
	ld d,e			;083e
	or a			;083f
	ld e,(hl)		;0840
	adc a,b			;0841
	ld h,a			;0842
	adc a,b			;0843
	ld (hl),b		;0844
	adc a,b			;0845
	ld c,h			;0846
	adc a,b			;0847
	daa			;0848
	adc a,b			;0849
	ld d,l			;084a
	adc a,b			;084b
	call 04137h		;084c
	call 0be49h		;084f
	jp 04157h		;0852
	call 04137h		;0855
	call 0badch		;0858
	jp 04157h		;085b
	call 04137h		;085e
	call 0a3abh		;0861
	jp 04157h		;0864
	call 04137h		;0867
	call 0a4d1h		;086a
	jp 04157h		;086d
	call 04137h		;0870
	call 0a811h		;0873
	jp 04157h		;0876
	call 0413bh		;0879
	ld a,(0e201h)		;087c
	ld hl,0ba12h		;087f
	call 04b67h		;0882
	ld a,(0e359h)		;0885
	ld b,a			;0888
	add a,a			;0889
	add a,b			;088a
	call 0407fh		;088b
	ex de,hl		;088e
	ld e,(hl)		;088f
	inc hl			;0890
	ld a,(hl)		;0891
	ld b,a			;0892
	and 007h		;0893
	ld d,a			;0895
	inc hl			;0896
	ld c,(hl)		;0897
	ld hl,(0e203h)		;0898
	rst 20h			;089b
	push af			;089c
	call 04157h		;089d
	pop af			;08a0
	ret			;08a1
	ld ix,0e600h		;08a2
	ld b,00ch		;08a6
l08a8h:
	push bc			;08a8
	bit 1,(ix+010h)		;08a9
	jr z,l08c5h		;08ad
	ld iy,0e470h		;08af
	ld de,l0010h		;08b3
	ld b,009h		;08b6
l08b8h:
	ld a,(iy+000h)		;08b8
	or a			;08bb
	call nz,088ceh		;08bc
	jr c,l08c5h		;08bf
	add iy,de		;08c1
	djnz l08b8h		;08c3
l08c5h:
	ld de,l0040h		;08c5
	add ix,de		;08c8
	pop bc			;08ca
	djnz l08a8h		;08cb
	ret			;08cd
	ld a,(ix+004h)		;08ce
	sub (iy+003h)		;08d1
	jp nc,088e1h		;08d4
	neg			;08d7
	dec a			;08d9
	cp (ix+00eh)		;08da
	jp c,088e5h		;08dd
	ret			;08e0
	cp (iy+00dh)		;08e1
	ret nc			;08e4
	ld a,(ix+006h)		;08e5
	sub (iy+005h)		;08e8
	jp nc,088f7h		;08eb
	neg			;08ee
	cp (ix+00fh)		;08f0
	jp c,088fbh		;08f3
	ret			;08f6
	cp (iy+00ch)		;08f7
	ret nc			;08fa
	call 08900h		;08fb
	scf			;08fe
	ret			;08ff
	ld a,(iy+000h)		;0900
	cp 006h			;0903
	jr nc,l0915h		;0905
	cp 005h			;0907
	jr nz,l0911h		;0909
	call 08a0ch		;090b
	jp 08915h		;090e
l0911h:
	ld (iy+000h),000h	;0911
l0915h:
	ld a,(ix+000h)		;0915
	cp 00fh			;0918
	jp z,089b6h		;091a
	bit 4,(ix+010h)		;091d
	jp nz,089fbh		;0921
	dec (ix+00dh)		;0924
	ret nz			;0927
	ld a,(ix+000h)		;0928
	cp 02eh			;092b
	jp z,089e8h		;092d
	cp 032h			;0930
	jr z,l093ah		;0932
	ld de,l0001h		;0934
	call 05b04h		;0937
l093ah:
	ld a,(ix+000h)		;093a
	ld b,012h		;093d
	cp 030h			;093f
	jr z,l0957h		;0941
	cp 025h			;0943
	jr z,l0957h		;0945
	ld b,008h		;0947
	cp 001h			;0949
	jr z,l0957h		;094b
	cp 003h			;094d
	jr z,l0957h		;094f
	cp 005h			;0951
	jr z,l0957h		;0953
	ld b,007h		;0955
l0957h:
	ld a,b			;0957
	call 04ae4h		;0958
	call 08988h		;095b
	ld a,(ix+000h)		;095e
	push af			;0961
	push bc			;0962
	call 06514h		;0963
	pop bc			;0966
	pop af			;0967
	sub 01dh		;0968
	ret z			;096a
	sub 005h		;096b
	cp 003h			;096d
	ret c			;096f
	sub 016h		;0970
	cp 003h			;0972
	ret c			;0974
	sub 009h		;0975
	ret z			;0977
	ld a,026h		;0978
	ld e,(ix+004h)		;097a
	ld d,(ix+006h)		;097d
	jp 04d16h		;0980
	ld a,009h		;0983
	jp 04ae4h		;0985
	ld c,(ix+00ch)		;0988
	ld a,(ix+016h)		;098b
	and a			;098e
	ret z			;098f
	ld c,000h		;0990
	ld a,(ix+017h)		;0992
	call 089a8h		;0995
	ret c			;0998
	ld a,(hl)		;0999
	inc l			;099a
	inc l			;099b
	dec (hl)		;099c
	ret nz			;099d
	dec l			;099e
	dec l			;099f
	ld (hl),000h		;09a0
	inc c			;09a2
	and 007h		;09a3
	ret nz			;09a5
	inc c			;09a6
	ret			;09a7
	ld hl,0ea80h		;09a8
	ld b,004h		;09ab
l09adh:
	cp (hl)			;09ad
	ret z			;09ae
	inc l			;09af
	inc l			;09b0
	inc l			;09b1
	djnz l09adh		;09b2
	scf			;09b4
	ret			;09b5
	call 08928h		;09b6
	ld a,(iy+000h)		;09b9
	ld (iy+000h),000h	;09bc
	sub 007h		;09c0
	cp 002h			;09c2
	ret nc			;09c4
	ld b,a			;09c5
	ld a,(ix+006h)		;09c6
	cp 010h			;09c9
	ret c			;09cb
	ld d,a			;09cc
	ld a,b			;09cd
	or a			;09ce
	jr nz,l09d6h		;09cf
	ld e,(iy+003h)		;09d1
	jr l09d9h		;09d4
l09d6h:
	ld e,(ix+004h)		;09d6
l09d9h:
	ld c,000h		;09d9
	ld a,03bh		;09db
	add a,b			;09dd
	ld b,00ch		;09de
	call 04d16h		;09e0
	ld a,020h		;09e3
	jp 04ae4h		;09e5
	ld a,(ix+00ch)		;09e8
	push af			;09eb
	call 06514h		;09ec
	pop af			;09ef
	add a,028h		;09f0
	ld e,(ix+004h)		;09f2
	ld d,(ix+006h)		;09f5
	jp 04d16h		;09f8
	ld (iy+000h),000h	;09fb
	ld a,(ix+000h)		;09ff
	cp 019h			;0a02
	jp nz,0823ch		;0a04
	ld a,014h		;0a07
	jp 04ae4h		;0a09
	ld a,(0e201h)		;0a0c
	cp 005h			;0a0f
	jr nz,l0a18h		;0a11
	ld (iy+000h),000h	;0a13
	ret			;0a17
l0a18h:
	push iy			;0a18
	pop hl			;0a1a
	ld (hl),006h		;0a1b
	inc l			;0a1d
	ld (hl),000h		;0a1e
	ld a,l			;0a20
	add a,004h		;0a21
	ld l,a			;0a23
	ld a,(hl)		;0a24
	cp 0f8h			;0a25
	jr c,l0a2ch		;0a27
	ld a,0f7h		;0a29
	ld (hl),a		;0a2b
l0a2ch:
	inc l			;0a2c
	ld (hl),044h		;0a2d
	inc l			;0a2f
	ld (hl),00fh		;0a30
	inc l			;0a32
	ld (hl),000h		;0a33
	inc l			;0a35
	ld (hl),001h		;0a36
	inc l			;0a38
	ld (hl),000h		;0a39
	inc l			;0a3b
	inc l			;0a3c
	ld (hl),018h		;0a3d
	inc l			;0a3f
	ld (hl),018h		;0a40
	ret			;0a42
	ld a,(0e340h)		;0a43
	or a			;0a46
	ret nz			;0a47
	ld a,(0e3b2h)		;0a48
	and a			;0a4b
	ret z			;0a4c
	ld b,a			;0a4d
	ld ix,0e500h		;0a4e
l0a52h:
	push bc			;0a52
	ld a,(ix+000h)		;0a53
	and a			;0a56
	jr z,l0a6fh		;0a57
	ld iy,0e470h		;0a59
	ld de,l0010h		;0a5d
	ld b,009h		;0a60
l0a62h:
	ld a,(iy+000h)		;0a62
	or a			;0a65
	call nz,08a78h		;0a66
	jr c,l0a6fh		;0a69
	add iy,de		;0a6b
	djnz l0a62h		;0a6d
l0a6fh:
	ld de,l0010h		;0a6f
	add ix,de		;0a72
	pop bc			;0a74
	djnz l0a52h		;0a75
	ret			;0a77
	sub 004h		;0a78
	cp 003h			;0a7a
	jr nc,l0a87h		;0a7c
	ld a,(ix+000h)		;0a7e
	sub 007h		;0a81
	cp 001h			;0a83
	ccf			;0a85
	ret nc			;0a86
l0a87h:
	ld a,(ix+00dh)		;0a87
	or a			;0a8a
	ret m			;0a8b
	jr z,l0acfh		;0a8c
	add a,a			;0a8e
	add a,a			;0a8f
	ld hl,0b2ffh		;0a90
	call 0407ah		;0a93
	ld (0f000h),hl		;0a96
	ld a,(ix+004h)		;0a99
	add a,(hl)		;0a9c
	sub (iy+003h)		;0a9d
	jp nc,08aadh		;0aa0
	neg			;0aa3
	dec a			;0aa5
	inc hl			;0aa6
	inc hl			;0aa7
	cp (hl)			;0aa8
	jp c,08ab1h		;0aa9
	ret			;0aac
	cp (iy+00dh)		;0aad
	ret nc			;0ab0
	ld hl,(0f000h)		;0ab1
	inc hl			;0ab4
	ld a,(ix+006h)		;0ab5
	add a,(hl)		;0ab8
	sub (iy+005h)		;0ab9
	jp nc,08ac8h		;0abc
	neg			;0abf
	inc hl			;0ac1
	inc hl			;0ac2
	cp (hl)			;0ac3
	jp c,08b0ah		;0ac4
	ret			;0ac7
	cp (iy+00ch)		;0ac8
	jp c,08b0ah		;0acb
	ret			;0ace
l0acfh:
	ld a,(ix+004h)		;0acf
	sub (iy+003h)		;0ad2
	jp nc,08ae9h		;0ad5
	neg			;0ad8
	dec a			;0ada
	ld c,(ix+00ah)		;0adb
	sla c			;0ade
	sla c			;0ae0
	sla c			;0ae2
	cp c			;0ae4
	jp c,08aedh		;0ae5
	ret			;0ae8
	cp (iy+00dh)		;0ae9
	ret nc			;0aec
	ld a,(ix+006h)		;0aed
	sub (iy+005h)		;0af0
	jp nc,08b06h		;0af3
	neg			;0af6
	ld c,(ix+009h)		;0af8
	sla c			;0afb
	sla c			;0afd
	sla c			;0aff
	cp c			;0b01
	jp c,08b0ah		;0b02
	ret			;0b05
	cp (iy+00ch)		;0b06
	ret nc			;0b09
	call 08b0fh		;0b0a
	scf			;0b0d
	ret			;0b0e
	ld a,(iy+000h)		;0b0f
	cp 006h			;0b12
	jr nc,l0b24h		;0b14
	cp 005h			;0b16
	jr nz,l0b20h		;0b18
	call 08a0ch		;0b1a
	jp 08b24h		;0b1d
l0b20h:
	ld (iy+000h),000h	;0b20
l0b24h:
	call 06070h		;0b24
	dec (ix+008h)		;0b27
	ret nz			;0b2a
	ld a,(ix+000h)		;0b2b
	cp 007h			;0b2e
	jp z,08bcch		;0b30
	cp 006h			;0b33
	jr z,l0b3bh		;0b35
	cp 00fh			;0b37
	jr nz,l0b45h		;0b39
l0b3bh:
	ld a,001h		;0b3b
	ld (0e38dh),a		;0b3d
l0b40h:
	ld de,l0050h		;0b40
	jr l0b48h		;0b43
l0b45h:
	ld de,l0010h		;0b45
l0b48h:
	call 05b04h		;0b48
	ld c,03bh		;0b4b
	ld a,(ix+000h)		;0b4d
	cp 00fh			;0b50
	jr z,l0b5eh		;0b52
	ld c,009h		;0b54
	sub 005h		;0b56
	cp 002h			;0b58
	jr c,l0b5eh		;0b5a
	ld c,013h		;0b5c
l0b5eh:
	ld a,c			;0b5e
	call 04ae4h		;0b5f
	call 0609eh		;0b62
	ld e,(ix+004h)		;0b65
	ld d,(ix+006h)		;0b68
	ld hl,0f8f8h		;0b6b
	ld a,(ix+000h)		;0b6e
	cp 00eh			;0b71
	jr z,l0b8ch		;0b73
	ld a,(ix+007h)		;0b75
	push de			;0b78
	cp 035h			;0b79
	jr c,l0b81h		;0b7b
	sub 035h		;0b7d
	add a,01fh		;0b7f
l0b81h:
	ld hl,0b37bh		;0b81
	call 0407ah		;0b84
	ld d,000h		;0b87
	ld e,(hl)		;0b89
	ex de,hl		;0b8a
	pop de			;0b8b
l0b8ch:
	ld a,l			;0b8c
	add a,e			;0b8d
	ld e,a			;0b8e
	ld c,d			;0b8f
	ld a,h			;0b90
	add a,d			;0b91
	ld d,a			;0b92
	cp 0e0h			;0b93
	jr c,l0ba1h		;0b95
	bit 7,c			;0b97
	ld d,0e0h		;0b99
	jr nz,l0ba1h		;0b9b
	ld d,000h		;0b9d
	jr l0ba1h		;0b9f
l0ba1h:
	ld a,d			;0ba1
	cp 0e8h			;0ba2
	ret nc			;0ba4
	ld a,e			;0ba5
	cp 0a8h			;0ba6
	ret nc			;0ba8
	ld hl,0ea40h		;0ba9
	ld b,004h		;0bac
l0baeh:
	ld a,(hl)		;0bae
	and a			;0baf
	jr z,l0bbah		;0bb0
	ld a,008h		;0bb2
	add a,l			;0bb4
	ld l,a			;0bb5
	djnz l0baeh		;0bb6
	xor a			;0bb8
	ret			;0bb9
l0bbah:
	ld a,005h		;0bba
	sub b			;0bbc
	ld (hl),a		;0bbd
	inc l			;0bbe
	ld (hl),004h		;0bbf
	inc l			;0bc1
	ld (hl),e		;0bc2
	inc l			;0bc3
	ld (hl),d		;0bc4
	inc l			;0bc5
	inc l			;0bc6
	inc l			;0bc7
	ld (hl),002h		;0bc8
	scf			;0bca
	ret			;0bcb
	ld (ix+001h),005h	;0bcc
	ld (ix+00dh),0ffh	;0bd0
	ld (ix+002h),001h	;0bd4
	ld de,l0010h		;0bd8
	call 05b04h		;0bdb
	ld a,013h		;0bde
	jp 04ae4h		;0be0
	ld a,(0e340h)		;0be3
	or a			;0be6
	ret nz			;0be7
	ld a,(0e201h)		;0be8
	cp 003h			;0beb
	jr z,l0bf4h		;0bed
	sub 009h		;0bef
	cp 003h			;0bf1
	ret nc			;0bf3
l0bf4h:
	ld ix,0e580h		;0bf4
	ld b,010h		;0bf8
l0bfah:
	push bc			;0bfa
	ld a,(ix+000h)		;0bfb
	cp 005h			;0bfe
	jr c,l0c20h		;0c00
	ld iy,0e470h		;0c02
	ld de,l0010h		;0c06
	ld b,009h		;0c09
l0c0bh:
	ld a,(iy+000h)		;0c0b
	or a			;0c0e
	jr z,l0c1ch		;0c0f
	sub 004h		;0c11
	cp 003h			;0c13
	jr c,l0c1ch		;0c15
	call 08c29h		;0c17
	jr c,l0c20h		;0c1a
l0c1ch:
	add iy,de		;0c1c
	djnz l0c0bh		;0c1e
l0c20h:
	ld bc,l0007h+1		;0c20
	add ix,bc		;0c23
	pop bc			;0c25
	djnz l0bfah		;0c26
	ret			;0c28
	ld a,(ix+003h)		;0c29
	cp 0e8h			;0c2c
	ret nc			;0c2e
	sub (iy+005h)		;0c2f
	jp nc,08c45h		;0c32
	neg			;0c35
	ld c,(ix+005h)		;0c37
	sla c			;0c3a
	sla c			;0c3c
	sla c			;0c3e
	cp c			;0c40
	jp c,08c49h		;0c41
	ret			;0c44
	cp (iy+00ch)		;0c45
	ret nc			;0c48
	ld a,(ix+002h)		;0c49
	sub (iy+003h)		;0c4c
	jp nc,08c63h		;0c4f
	neg			;0c52
	dec a			;0c54
	ld c,(ix+004h)		;0c55
	sla c			;0c58
	sla c			;0c5a
	sla c			;0c5c
	cp c			;0c5e
	jp c,08c67h		;0c5f
	ret			;0c62
	cp (iy+00dh)		;0c63
	ret nc			;0c66
	call 08c6ch		;0c67
	scf			;0c6a
	ret			;0c6b
	ld a,(iy+000h)		;0c6c
	cp 006h			;0c6f
	jr nc,l0c77h		;0c71
	ld (iy+000h),000h	;0c73
l0c77h:
	dec (ix+006h)		;0c77
	jp nz,0823ch		;0c7a
	call 06d26h		;0c7d
	ld de,l0010h		;0c80
	jp 05b04h		;0c83
	ld a,(0e340h)		;0c86
	or a			;0c89
	ret nz			;0c8a
	ld a,(0e201h)		;0c8b
	cp 005h			;0c8e
	ret nz			;0c90
	ld ix,0e580h		;0c91
	call 08c9ch		;0c95
	ld ix,0e590h		;0c98
	ld a,(ix+000h)		;0c9c
	or a			;0c9f
	ret z			;0ca0
	ld iy,0e470h		;0ca1
	ld de,l0010h		;0ca5
	ld b,009h		;0ca8
l0caah:
	ld a,(iy+000h)		;0caa
	or a			;0cad
	jr z,l0cbah		;0cae
	sub 004h		;0cb0
	cp 003h			;0cb2
	jr c,l0cbah		;0cb4
	call 08cbfh		;0cb6
	ret c			;0cb9
l0cbah:
	add iy,de		;0cba
	djnz l0caah		;0cbc
	ret			;0cbe
	ld a,(ix+003h)		;0cbf
	sub (iy+005h)		;0cc2
	jp nc,08cd1h		;0cc5
	neg			;0cc8
	cp (ix+005h)		;0cca
	jp c,08cd5h		;0ccd
	ret			;0cd0
	cp (iy+00ch)		;0cd1
	ret nc			;0cd4
	ld a,(ix+002h)		;0cd5
	sub (iy+003h)		;0cd8
	jp nc,08ce7h		;0cdb
	neg			;0cde
	dec a			;0ce0
	cp 020h			;0ce1
	jp c,08cebh		;0ce3
	ret			;0ce6
	cp (iy+00dh)		;0ce7
	ret nc			;0cea
	call 08d07h		;0ceb
	call 08cf6h		;0cee
	call 08d39h		;0cf1
	scf			;0cf4
	ret			;0cf5
	ld a,(ix+006h)		;0cf6
	cp 004h			;0cf9
	ret nc			;0cfb
	ld a,(iy+000h)		;0cfc
	cp 00fh			;0cff
	ret z			;0d01
	ld (iy+000h),000h	;0d02
	ret			;0d06
	ld (ix+007h),018h	;0d07
	dec (ix+008h)		;0d0b
	jp nz,08d2eh		;0d0e
	ld (ix+008h),004h	;0d11
	ld a,(ix+001h)		;0d15
	ld (ix+001h),001h	;0d18
	or a			;0d1c
	jr z,l0d29h		;0d1d
	ld a,(ix+006h)		;0d1f
	cp 004h			;0d22
	ret nc			;0d24
	inc (ix+006h)		;0d25
	ret			;0d28
l0d29h:
	ld (ix+006h),000h	;0d29
	ret			;0d2d
	ld a,(ix+006h)		;0d2e
	cp 004h			;0d31
	ret nc			;0d33
	ld a,012h		;0d34
	jp 04ae4h		;0d36
	ld a,(ix+006h)		;0d39
	cp 004h			;0d3c
	ret nc			;0d3e
	call 04c24h		;0d3f
	and 00fh		;0d42
	ret nz			;0d44
	ld a,(ix+003h)		;0d45
	sub 010h		;0d48
	cp 0e0h			;0d4a
	ret nc			;0d4c
	add a,010h		;0d4d
	ld d,a			;0d4f
	ld a,(ix+002h)		;0d50
	add a,008h		;0d53
	ld e,a			;0d55
	ld bc,l0000h		;0d56
	ld a,030h		;0d59
	jp 04d16h		;0d5b
	ld a,(0e400h)		;0d5e
	dec a			;0d61
	ret m			;0d62
	ld a,(0e3d0h)		;0d63
	or a			;0d66
	ret nz			;0d67
	ld ix,0e900h		;0d68
	ld l,00ah		;0d6c
	ld bc,l0202h		;0d6e
	call 08d7ch		;0d71
	ret nc			;0d74
	ld (ix+000h),000h	;0d75
	jp 08e71h		;0d79
	ld a,(0e404h)		;0d7c
	add a,004h		;0d7f
	ld e,a			;0d81
	ld a,(0e406h)		;0d82
	inc a			;0d85
	ld d,a			;0d86
	exx			;0d87
	ld de,l0010h		;0d88
	ld bc,00c08h		;0d8b
	exx			;0d8e
l0d8fh:
	ld a,(ix+000h)		;0d8f
	or a			;0d92
	jr z,l0dabh		;0d93
	ld a,(ix+004h)		;0d95
	sub e			;0d98
	exx			;0d99
	cp c			;0d9a
	exx			;0d9b
	jr c,l0da1h		;0d9c
	add a,c			;0d9e
	jr nc,l0dabh		;0d9f
l0da1h:
	ld a,(ix+006h)		;0da1
	sub d			;0da4
	exx			;0da5
	cp b			;0da6
	exx			;0da7
	ret c			;0da8
	add a,b			;0da9
	ret c			;0daa
l0dabh:
	exx			;0dab
	add ix,de		;0dac
	exx			;0dae
	dec l			;0daf
	jr nz,l0d8fh		;0db0
	xor a			;0db2
	ret			;0db3
	ld a,(0e400h)		;0db4
	cp 002h			;0db7
	ret nz			;0db9
	ld a,(0e3d0h)		;0dba
	or a			;0dbd
	ret nz			;0dbe
	ld a,(0e404h)		;0dbf
	ld l,a			;0dc2
	ld a,(0e406h)		;0dc3
	add a,00ch		;0dc6
	ld h,a			;0dc8
	ld ix,0e900h		;0dc9
	ld de,l0010h		;0dcd
	ld b,00ah		;0dd0
l0dd2h:
	ld a,(ix+000h)		;0dd2
	and a			;0dd5
	jp z,08dedh		;0dd6
	ld a,l			;0dd9
	sub (ix+004h)		;0dda
	add a,010h		;0ddd
	cp 013h			;0ddf
	jr nc,l0dedh		;0de1
	ld a,h			;0de3
	sub (ix+006h)		;0de4
	add a,00ch		;0de7
	cp 00bh			;0de9
	jr c,l0df2h		;0deb
l0dedh:
	add ix,de		;0ded
	djnz l0dd2h		;0def
	ret			;0df1
l0df2h:
	ld (ix+000h),000h	;0df2
	jp 08e33h		;0df6
	ld a,(0e400h)		;0df9
	cp 002h			;0dfc
	ret nz			;0dfe
	ld a,(0e3d0h)		;0dff
	or a			;0e02
	ret nz			;0e03
	ld a,(0e404h)		;0e04
	ld e,a			;0e07
	ld a,(0e406h)		;0e08
	add a,00ch		;0e0b
	ld d,a			;0e0d
	ld hl,00c10h		;0e0e
	call 08ee2h		;0e11
	ret nc			;0e14
	ld a,(ix+000h)		;0e15
	ld b,a			;0e18
	cp 020h			;0e19
	jr z,l0e38h		;0e1b
	sub 029h		;0e1d
	cp 006h			;0e1f
	ret c			;0e21
	push bc			;0e22
	call 08928h		;0e23
	pop af			;0e26
	sub 022h		;0e27
	cp 003h			;0e29
	jr c,l0e38h		;0e2b
	sub 016h		;0e2d
	cp 005h			;0e2f
	jr c,l0e38h		;0e31
	ld hl,0e401h		;0e33
	dec (hl)		;0e36
	ret nz			;0e37
l0e38h:
	xor a			;0e38
	ld (0e401h),a		;0e39
	inc a			;0e3c
	ld (0e400h),a		;0e3d
	jp 0553eh		;0e40
	ld a,(0e400h)		;0e43
	inc a			;0e46
	ret z			;0e47
	ld a,(0e3d0h)		;0e48
	or a			;0e4b
	ret nz			;0e4c
	ld a,(0e404h)		;0e4d
	add a,004h		;0e50
	ld e,a			;0e52
	ld a,(0e406h)		;0e53
	add a,002h		;0e56
	ld d,a			;0e58
	ld hl,00806h		;0e59
	call 08ee2h		;0e5c
	ret nc			;0e5f
	ld a,(ix+000h)		;0e60
	cp 020h			;0e63
	jr z,l0e71h		;0e65
	sub 029h		;0e67
	cp 006h			;0e69
	jp c,08f67h		;0e6b
	call 08928h		;0e6e
l0e71h:
	ld a,(0e1c2h)		;0e71
	bit 6,a			;0e74
	ret z			;0e76
	ld a,(0e446h)		;0e77
	or a			;0e7a
	ret nz			;0e7b
	ld a,(0e3c0h)		;0e7c
	or a			;0e7f
	ret nz			;0e80
	xor a			;0e81
	ld (0e20bh),a		;0e82
	ld a,(0f0f5h)		;0e85
	bit 3,a			;0e88
	jr nz,l0e94h		;0e8a
	ld a,(0e330h)		;0e8c
	ld (0e20dh),a		;0e8f
	jr l0eceh		;0e92
l0e94h:
	ld hl,0e334h		;0e94
	ld b,009h		;0e97
	xor a			;0e99
l0e9ah:
	cp (hl)			;0e9a
	jr nz,l0ea8h		;0e9b
	inc hl			;0e9d
	djnz l0e9ah		;0e9e
	ld a,(0e330h)		;0ea0
	ld (0e20dh),a		;0ea3
	jr l0eceh		;0ea6
l0ea8h:
	ld a,001h		;0ea8
	ld (0e20bh),a		;0eaa
	ld de,0e210h		;0ead
	ld hl,0e330h		;0eb0
	ld bc,0000dh		;0eb3
	ldir			;0eb6
	ld hl,0e430h		;0eb8
	ld bc,l0007h		;0ebb
	ldir			;0ebe
	ld a,(0e401h)		;0ec0
	ld (de),a		;0ec3
	inc e			;0ec4
	ld a,(0e402h)		;0ec5
	ld (de),a		;0ec8
	inc e			;0ec9
	ld a,(0e40bh)		;0eca
	ld (de),a		;0ecd
l0eceh:
	ld a,03dh		;0ece
	call 04ae4h		;0ed0
	ld a,0f0h		;0ed3
	call 04ae4h		;0ed5
	xor a			;0ed8
	ld (0e439h),a		;0ed9
	ld (0e1d5h),a		;0edc
	jp 0a993h		;0edf
	ld ix,0e600h		;0ee2
	ld b,00ch		;0ee6
	exx			;0ee8
	ld de,l0040h		;0ee9
	exx			;0eec
l0eedh:
	bit 0,(ix+010h)		;0eed
	jr z,l0f19h		;0ef1
	ld a,(ix+004h)		;0ef3
	sub e			;0ef6
	jp nc,08f05h		;0ef7
	neg			;0efa
	cp (ix+00eh)		;0efc
	jp c,08f08h		;0eff
	jp 08f19h		;0f02
	cp l			;0f05
	jr nc,l0f19h		;0f06
	ld a,(ix+006h)		;0f08
	sub d			;0f0b
	jp nc,08f17h		;0f0c
	neg			;0f0f
	cp (ix+00fh)		;0f11
	jr nc,l0f19h		;0f14
	ret			;0f16
	cp h			;0f17
	ret c			;0f18
l0f19h:
	ld a,(ix+000h)		;0f19
	cp 038h			;0f1c
	jr nz,l0f24h		;0f1e
	call 08f2ch		;0f20
	ret c			;0f23
l0f24h:
	exx			;0f24
	add ix,de		;0f25
	exx			;0f27
	djnz l0eedh		;0f28
	xor a			;0f2a
	ret			;0f2b
	push bc			;0f2c
	push ix			;0f2d
	pop bc			;0f2f
	ld a,034h		;0f30
	add a,c			;0f32
	ld c,a			;0f33
	exx			;0f34
	ld c,003h		;0f35
	exx			;0f37
l0f38h:
	ld a,(bc)		;0f38
	inc c			;0f39
	inc c			;0f3a
	sub e			;0f3b
	jp nc,08f48h		;0f3c
	neg			;0f3f
	cp 008h			;0f41
	jp c,08f4bh		;0f43
	jr l0f5dh		;0f46
	cp l			;0f48
	jr nc,l0f5dh		;0f49
	dec c			;0f4b
	ld a,(bc)		;0f4c
	inc c			;0f4d
	sub d			;0f4e
	jp nc,08f5ah		;0f4f
	neg			;0f52
	cp 010h			;0f54
	jr nc,l0f5dh		;0f56
l0f58h:
	pop bc			;0f58
	ret			;0f59
	cp h			;0f5a
	jr c,l0f58h		;0f5b
l0f5dh:
	inc c			;0f5d
	inc c			;0f5e
	exx			;0f5f
	dec c			;0f60
	exx			;0f61
	jr nz,l0f38h		;0f62
	pop bc			;0f64
	xor a			;0f65
	ret			;0f66
	push af			;0f67
	cp 002h			;0f68
	call c,06514h		;0f6a
	pop af			;0f6d
	call 04084h		;0f6e
	ld a,l			;0f71
	adc a,a			;0f72
	sbc a,h			;0f73
	adc a,a			;0f74
	and 08fh		;0f75
	pop de			;0f77
	adc a,a			;0f78
	pop de			;0f79
	adc a,a			;0f7a
	ret pe			;0f7b
	adc a,c			;0f7c
	xor a			;0f7d
	ld (0e20bh),a		;0f7e
	ld hl,0e330h		;0f81
	ld a,(hl)		;0f84
	inc a			;0f85
	inc l			;0f86
	cp (hl)			;0f87
	jr c,l0f8ch		;0f88
	ld a,001h		;0f8a
l0f8ch:
	dec l			;0f8c
	ld (hl),a		;0f8d
	ld de,l0005h		;0f8e
	call 05b04h		;0f91
	ld a,00ah		;0f94
	call 04ae4h		;0f96
	jp 053a3h		;0f99
	ld de,l0005h		;0f9c
	call 05b04h		;0f9f
	ld ix,0e8c0h		;0fa2
	ld b,00ch		;0fa6
l0fa8h:
	push bc			;0fa8
	ld a,(ix+000h)		;0fa9
	or a			;0fac
	jr z,l0fc4h		;0fad
	cp 01dh			;0faf
	jr z,l0fc4h		;0fb1
	cp 020h			;0fb3
	jr z,l0fc4h		;0fb5
	cp 026h			;0fb7
	jr z,l0fc4h		;0fb9
	sub 029h		;0fbb
	cp 006h			;0fbd
	jr c,l0fc4h		;0fbf
	call 08928h		;0fc1
l0fc4h:
	ld bc,0ffc0h		;0fc4
	add ix,bc		;0fc7
	pop bc			;0fc9
	djnz l0fa8h		;0fca
	ld a,00bh		;0fcc
	jp 04ae4h		;0fce
	call 08ff0h		;0fd1
	call 0900dh		;0fd4
	ld a,(0e357h)		;0fd7
	add a,a			;0fda
	add a,a			;0fdb
	add a,094h		;0fdc
	ld (ix+030h),a		;0fde
	ld a,023h		;0fe1
	jp 04ae4h		;0fe3
	call 08ff0h		;0fe6
	ld (ix+030h),094h	;0fe9
	jp 05b92h		;0fed
	ld a,(ix+000h)		;0ff0
	ld (ix+028h),a		;0ff3
	ld (ix+000h),02fh	;0ff6
	ld a,(ix+004h)		;0ffa
	ld (ix+029h),a		;0ffd
	ld (ix+00bh),081h	;1000
	ld (ix+010h),008h	;1004
	ld (ix+002h),00ah	;1008
	ret			;100c
	call 09019h		;100d
l1010h:
	ld hl,09024h		;1010
	call 04b67h		;1013
	jp 05b04h		;1016
	ld hl,0e357h		;1019
	ld a,(hl)		;101c
	inc a			;101d
	cp 008h			;101e
	jr c,l1024h		;1020
	ld a,007h		;1022
l1024h:
	ld (hl),a		;1024
	ret			;1025
	ld bc,l0200h		;1026
	nop			;1029
	dec b			;102a
	nop			;102b
	djnz l102eh		;102c
l102eh:
	jr nz,l1030h		;102e
l1030h:
	ld d,b			;1030
	nop			;1031
	nop			;1032
	ld bc,0403ah		;1033
	ex (sp),hl		;1036
	or a			;1037
	ret nz			;1038
	ld a,(0ea60h)		;1039
	sub 002h		;103c
	ret c			;103e
	ld a,(0e400h)		;103f
	dec a			;1042
	ret m			;1043
	ld a,(0e404h)		;1044
	add a,004h		;1047
	ld e,a			;1049
	ld a,(0e406h)		;104a
	inc a			;104d
	ld d,a			;104e
	ld a,(0ea61h)		;104f
	sub e			;1052
	cp 008h			;1053
	jr c,l105ah		;1055
	add a,00fh		;1057
	ret nc			;1059
l105ah:
	ld a,(0ea62h)		;105a
	sub d			;105d
	cp 00bh			;105e
	jr c,l1065h		;1060
	add a,00fh		;1062
	ret nc			;1064
l1065h:
	ld a,01fh		;1065
	call 04ae4h		;1067
	ld de,l0030h		;106a
	call 05b04h		;106d
	ld hl,0ea60h		;1070
	ld a,(hl)		;1073
	ld (hl),000h		;1074
	sub 003h		;1076
	jr z,l108ah		;1078
	dec a			;107a
	jr z,l10a1h		;107b
	dec a			;107d
	jr z,l10bfh		;107e
	sub 002h		;1080
	ret nz			;1082
	ld hl,l1507h		;1083
	ld b,017h		;1086
	jr l1094h		;1088
l108ah:
	ld a,00fh		;108a
	call 04ae4h		;108c
	ld hl,l1503h		;108f
	ld b,019h		;1092
l1094h:
	di			;1094
	ld (0e439h),hl		;1095
	ld a,03ch		;1098
	ld (0e43bh),a		;109a
	ei			;109d
	jp 054c7h		;109e
l10a1h:
	ld a,003h		;10a1
	ld (0e400h),a		;10a3
	ld hl,l0001h		;10a6
	ld (0e440h),hl		;10a9
	ld hl,l1504h		;10ac
	ld b,016h		;10af
	call 09094h		;10b1
	call 0a7f2h		;10b4
	call 042f5h		;10b7
	ld a,010h		;10ba
	jp 04ae4h		;10bc
l10bfh:
	ld hl,l1505h		;10bf
	ld b,018h		;10c2
	jr l1094h		;10c4
	ld a,(0e34bh)		;10c6
	or a			;10c9
	ret z			;10ca
	ld hl,0ea70h		;10cb
	call 090d4h		;10ce
	ld hl,0ea78h		;10d1
	ld a,(hl)		;10d4
	or a			;10d5
	ret z			;10d6
	ld iy,0e470h		;10d7
	ld de,l0010h		;10db
	ld bc,00910h		;10de
l10e1h:
	ld a,(iy+000h)		;10e1
	or a			;10e4
	jr z,l10edh		;10e5
	push hl			;10e7
	call 090f2h		;10e8
	pop hl			;10eb
	ret c			;10ec
l10edh:
	add iy,de		;10ed
	djnz l10e1h		;10ef
	ret			;10f1
	inc l			;10f2
	ld a,(hl)		;10f3
	sub (iy+003h)		;10f4
	jp nc,09101h		;10f7
	neg			;10fa
	cp c			;10fc
	jp c,09105h		;10fd
	ret			;1100
	cp (iy+00dh)		;1101
	ret nc			;1104
	inc l			;1105
	ld a,(hl)		;1106
	sub (iy+005h)		;1107
	jp nc,09114h		;110a
	neg			;110d
	cp c			;110f
	jp c,09118h		;1110
	ret			;1113
	cp (iy+00ch)		;1114
	ret nc			;1117
	call 09121h		;1118
	ld (iy+000h),000h	;111b
	scf			;111f
	ret			;1120
	inc l			;1121
	dec (hl)		;1122
	jr z,l1142h		;1123
	ld a,(hl)		;1125
	and 003h		;1126
	ret nz			;1128
	dec l			;1129
	ld a,r			;112a
	and 00fh		;112c
	sub 007h		;112e
	add a,(hl)		;1130
	ld d,a			;1131
	ld a,r			;1132
	and 00fh		;1134
	sub 007h		;1136
	dec l			;1138
	add a,(hl)		;1139
	ld e,a			;113a
	ld a,033h		;113b
	ld c,000h		;113d
	jp 04d1eh		;113f
l1142h:
	dec l			;1142
	ld a,(hl)		;1143
	sub 008h		;1144
	ld d,a			;1146
	dec l			;1147
	ld a,(hl)		;1148
	sub 008h		;1149
	ld e,a			;114b
	dec l			;114c
	ld (hl),000h		;114d
	call 08ba1h		;114f
	ld hl,0e34ch		;1152
	dec (hl)		;1155
	jr z,l115dh		;1156
	ld a,009h		;1158
	jp 04ae4h		;115a
l115dh:
	ld a,001h		;115d
	ld (0e34fh),a		;115f
	ld a,03bh		;1162
	jp 04ae4h		;1164
	ld a,(0e340h)		;1167
	cp 005h			;116a
	jr nz,l117bh		;116c
	ld ix,0ea00h		;116e
	call 09188h		;1172
	ld ix,0ea20h		;1175
	jr l1188h		;1179
l117bh:
	call 06878h		;117b
	ret z			;117e
	ld a,(0e345h)		;117f
	and a			;1182
	ret nz			;1183
	ld ix,0ea00h		;1184
l1188h:
	ld a,(ix+000h)		;1188
	and a			;118b
	ret z			;118c
	ld iy,0e470h		;118d
	ld b,009h		;1191
l1193h:
	push bc			;1193
	ld a,(iy+000h)		;1194
	or a			;1197
	call nz,091a4h		;1198
	ld de,l0010h		;119b
	add iy,de		;119e
	pop bc			;11a0
	djnz l1193h		;11a1
	ret			;11a3
	ld l,(ix+013h)		;11a4
	ld h,(ix+014h)		;11a7
	ld (0e3d7h),hl		;11aa
	ld hl,0e3d7h		;11ad
	ld bc,l1010h		;11b0
	cp 006h			;11b3
	ret z			;11b5
	ld a,(0e345h)		;11b6
	and a			;11b9
	ret nz			;11ba
	ld a,(hl)		;11bb
	inc a			;11bc
	sub (iy+003h)		;11bd
	jp nc,091cah		;11c0
	neg			;11c3
	cp c			;11c5
	jp c,091ceh		;11c6
	ret			;11c9
	cp (iy+00dh)		;11ca
	ret nc			;11cd
	inc l			;11ce
	ld a,(hl)		;11cf
	sub (iy+005h)		;11d0
	jp nc,091ddh		;11d3
	neg			;11d6
	cp b			;11d8
	jp c,091e1h		;11d9
	ret			;11dc
	cp (iy+00ch)		;11dd
	ret nc			;11e0
	ld a,(iy+000h)		;11e1
	cp 005h			;11e4
	jr nz,l11eeh		;11e6
	call 08a0ch		;11e8
	jp 091f2h		;11eb
l11eeh:
	ld (iy+000h),000h	;11ee
	dec (ix+012h)		;11f2
	jp m,09218h		;11f5
	ld a,(0e34dh)		;11f8
	cp 003h			;11fb
	jr z,l126fh		;11fd
	ld a,027h		;11ff
	call 04ae4h		;1201
	ld e,(ix+013h)		;1204
	ld a,(ix+014h)		;1207
	add a,010h		;120a
	jr nc,l1210h		;120c
	ld a,0f0h		;120e
l1210h:
	ld d,a			;1210
	ld a,026h		;1211
	ld c,000h		;1213
	jp 04d16h		;1215
	ld a,(0e340h)		;1218
	cp 005h			;121b
	jr nz,l1224h		;121d
	ld (ix+01fh),001h	;121f
	ret			;1223
l1224h:
	ld a,001h		;1224
	ld (0e345h),a		;1226
	ld a,(0e34dh)		;1229
	cp 003h			;122c
	ret z			;122e
	ld a,001h		;122f
	ld (0e22ch),a		;1231
	ld hl,(0e346h)		;1234
	ld de,l012ch		;1237
	rst 20h			;123a
	ld b,002h		;123b
	jr c,l124ah		;123d
	ld de,l0384h		;123f
	rst 20h			;1242
	ld b,001h		;1243
	jr c,l124ah		;1245
	xor a			;1247
	jr l125ch		;1248
l124ah:
	ld hl,0e20fh		;124a
	ld a,(hl)		;124d
	cp 007h			;124e
	ld c,000h		;1250
	jr nc,l125bh		;1252
	cp 006h			;1254
	ld c,b			;1256
	jr c,l125bh		;1257
	ld c,001h		;1259
l125bh:
	ld a,c			;125b
l125ch:
	ld (0e444h),a		;125c
	ld a,03ah		;125f
	call 04ae4h		;1261
	ld a,001h		;1264
	ld (0e34fh),a		;1266
	ld de,l0100h		;1269
	jp 05b04h		;126c
l126fh:
	ld de,(0ea99h)		;126f
	ld c,000h		;1273
	ld a,038h		;1275
	jp 04d1eh		;1277
	ld hl,0ea98h		;127a
	ld a,(hl)		;127d
	or a			;127e
	ret z			;127f
	ld iy,0e470h		;1280
	ld b,009h		;1284
l1286h:
	push bc			;1286
	ld a,(iy+000h)		;1287
	or a			;128a
	call nz,09297h		;128b
	ld de,l0010h		;128e
	add iy,de		;1291
	pop bc			;1293
	djnz l1286h		;1294
	ret			;1296
	ld ix,0ea00h		;1297
	ld hl,0ea99h		;129b
	ld bc,l1010h		;129e
	jp 091b3h		;12a1
	ld hl,0ea0eh		;12a4
	ld a,(0e404h)		;12a7
	sub (hl)		;12aa
	add a,010h		;12ab
	cp 020h			;12ad
	ret nc			;12af
	inc l			;12b0
	inc l			;12b1
	ld a,(0e406h)		;12b2
	sub (hl)		;12b5
	add a,018h		;12b6
	cp 028h			;12b8
	ret nc			;12ba
	ld a,001h		;12bb
	ld (0e22bh),a		;12bd
	ret			;12c0
	ld a,(0e439h)		;12c1
	cp 005h			;12c4
	jr nz,l12cdh		;12c6
	ld a,(0e1c3h)		;12c8
	rra			;12cb
	ret c			;12cc
l12cdh:
	ld ix,0e900h		;12cd
	ld b,00ah		;12d1
l12d3h:
	ld a,(ix+000h)		;12d3
	and a			;12d6
	jr z,l12eeh		;12d7
	cp 082h			;12d9
	call z,0b711h		;12db
	call 064e1h		;12de
	jr nc,l12eah		;12e1
	ld a,(ix+006h)		;12e3
	cp 0f0h			;12e6
	jr c,l12eeh		;12e8
l12eah:
	ld (ix+000h),000h	;12ea
l12eeh:
	ld de,l0010h		;12ee
	add ix,de		;12f1
	djnz l12d3h		;12f3
	ret			;12f5
	ld ix,0e900h		;12f6
	ld b,00ah		;12fa
l12fch:
	ld a,(ix+000h)		;12fc
	and a			;12ff
	jr z,l130fh		;1300
	bit 7,a			;1302
	jr nz,l130fh		;1304
	call 09317h		;1306
	jr nc,l130fh		;1309
	ld (ix+000h),000h	;130b
l130fh:
	ld de,l0010h		;130f
	add ix,de		;1312
	djnz l12fch		;1314
	ret			;1316
	ld l,(ix+004h)		;1317
	ld h,(ix+006h)		;131a
	call 05c92h		;131d
	ld a,(0e201h)		;1320
	or a			;1323
	jr z,l1335h		;1324
	sub 007h		;1326
	cp 002h			;1328
	jr c,l1335h		;132a
	ld a,(hl)		;132c
	and a			;132d
	ret z			;132e
	ld a,(0e305h)		;132f
	cp (hl)			;1332
	ccf			;1333
	ret			;1334
l1335h:
	ld a,(hl)		;1335
	cp 009h			;1336
	ccf			;1338
	ret nc			;1339
	jp 0932fh		;133a
	ld a,050h		;133d
	ld (0f00fh),a		;133f
	ld e,(ix+004h)		;1342
	ld d,(ix+006h)		;1345
	call 093f8h		;1348
	ld de,(0f012h)		;134b
	call 04efbh		;134f
	ld de,(0f014h)		;1352
	jp 04f02h		;1356
	call 09360h		;1359
	ret nc			;135c
	jp 06514h		;135d
	ld l,(ix+004h)		;1360
	ld a,(ix+006h)		;1363
	bit 7,(ix+00ah)		;1366
	jr nz,l136eh		;136a
	add a,008h		;136c
l136eh:
	ld h,a			;136e
	call 05c92h		;136f
	call 0932ch		;1372
	ret c			;1375
	ld de,00020h		;1376
	add hl,de		;1379
	jp 0932ch		;137a
	ld (0f012h),bc		;137d
	ld (0f014h),hl		;1381
	ld a,e			;1384
	add a,008h		;1385
	ld e,a			;1387
	ld a,(0f00eh)		;1388
	and a			;138b
	ret nz			;138c
	jr l13b1h		;138d
	ld a,e			;138f
	add a,008h		;1390
	ld e,a			;1392
	ld a,(0e228h)		;1393
	add a,a			;1396
	add a,050h		;1397
	cp 060h			;1399
	jr c,l139fh		;139b
	ld a,060h		;139d
l139fh:
	ld (0f00fh),a		;139f
	push de			;13a2
	call 093f8h		;13a3
	pop de			;13a6
	ld a,(0f00eh)		;13a7
	and a			;13aa
	ret nz			;13ab
	ld a,(0e354h)		;13ac
	and a			;13af
	ret nz			;13b0
l13b1h:
	ld hl,0e900h		;13b1
	ld b,00ah		;13b4
l13b6h:
	ld a,(hl)		;13b6
	and a			;13b7
	jr z,l13c1h		;13b8
	ld a,010h		;13ba
	add a,l			;13bc
	ld l,a			;13bd
	djnz l13b6h		;13be
	ret			;13c0
l13c1h:
	ld a,001h		;13c1
	ld (0e307h),a		;13c3
	ld (hl),a		;13c6
	inc l			;13c7
	inc l			;13c8
	inc l			;13c9
	xor a			;13ca
	ld (hl),a		;13cb
	inc l			;13cc
	ld (hl),e		;13cd
	inc l			;13ce
	ld (hl),a		;13cf
	inc l			;13d0
	ld (hl),d		;13d1
	inc l			;13d2
	ld de,(0f012h)		;13d3
	ld (hl),e		;13d7
	inc l			;13d8
	ld (hl),d		;13d9
	ld de,(0f014h)		;13da
	inc l			;13de
	ld (hl),e		;13df
	inc l			;13e0
	ld (hl),d		;13e1
	inc l			;13e2
	ld (hl),054h		;13e3
	inc l			;13e5
	ld (hl),009h		;13e6
	ret			;13e8
	ld (0f00fh),a		;13e9
	call 0945bh		;13ec
	ld d,001h		;13ef
	jr l13fdh		;13f1
	ld a,080h		;13f3
	ld (0f00fh),a		;13f5
	call 0945bh		;13f8
	ld d,000h		;13fb
l13fdh:
	ld a,(0f017h)		;13fd
	ld e,a			;1400
	ld a,(0e228h)		;1401
	cp 007h			;1404
	jr c,l1425h		;1406
	dec d			;1408
	jr z,l1425h		;1409
	ld a,r			;140b
	ld b,a			;140d
	and 00fh		;140e
	bit 6,b			;1410
	jr z,l141dh		;1412
	ld b,a			;1414
	ld a,c			;1415
	sub b			;1416
	jr nc,l141ah		;1417
	xor a			;1419
l141ah:
	ld e,a			;141a
	jr l1425h		;141b
l141dh:
	add a,e			;141d
	cp 03fh			;141e
	jr c,l1424h		;1420
	ld a,03fh		;1422
l1424h:
	ld e,a			;1424
l1425h:
	ld d,000h		;1425
	ld a,e			;1427
	sub 03fh		;1428
	neg			;142a
	ld hl,095d9h		;142c
	push hl			;142f
	add hl,de		;1430
	ld c,(hl)		;1431
	pop hl			;1432
	ld e,a			;1433
	add hl,de		;1434
	ld a,(hl)		;1435
	ld (0f016h),a		;1436
	ld e,c			;1439
	call 094bbh		;143a
	ld a,(0f010h)		;143d
	and a			;1440
	call nz,05cadh		;1441
	ld (0f012h),de		;1444
	ld a,(0f016h)		;1448
	ld e,a			;144b
	call 094bbh		;144c
	ld a,(0f011h)		;144f
	and a			;1452
	call nz,05cadh		;1453
	ld (0f014h),de		;1456
	ret			;145a
	ld a,(0e404h)		;145b
	ld (0f000h),a		;145e
	ld a,(0e406h)		;1461
	ld (0f001h),a		;1464
	ld hl,0f010h		;1467
	ld (hl),000h		;146a
	ld a,(0f000h)		;146c
	sub e			;146f
	jr nc,l1475h		;1470
	neg			;1472
	inc (hl)		;1474
l1475h:
	inc hl			;1475
	ld (hl),000h		;1476
	and 0f0h		;1478
	ld e,a			;147a
	ld a,(0f001h)		;147b
	sub d			;147e
	jr nc,l1484h		;147f
	neg			;1481
	inc (hl)		;1483
l1484h:
	ld d,a			;1484
	ld hl,0f00eh		;1485
	ld (hl),000h		;1488
	add a,e			;148a
	jr c,l1492h		;148b
	cp 030h			;148d
	jr nc,l1492h		;148f
	inc (hl)		;1491
l1492h:
	ld a,d			;1492
	rra			;1493
	rra			;1494
	rra			;1495
	rra			;1496
	and 00fh		;1497
	add a,e			;1499
	ld hl,094d9h		;149a
	call 0407ah		;149d
	ld a,(hl)		;14a0
	ld (0f017h),a		;14a1
	ld c,a			;14a4
	ld hl,(0f010h)		;14a5
	ld a,h			;14a8
	ld b,000h		;14a9
	and a			;14ab
	jr z,l14b0h		;14ac
	ld b,080h		;14ae
l14b0h:
	cp l			;14b0
	ld a,c			;14b1
	jr z,l14b6h		;14b2
	neg			;14b4
l14b6h:
	add a,b			;14b6
	ld (0f018h),a		;14b7
	ret			;14ba
	ld a,(0f00fh)		;14bb
	ld h,a			;14be
	call 094cdh		;14bf
	xor a			;14c2
	add hl,hl		;14c3
	adc a,a			;14c4
	add hl,hl		;14c5
	adc a,a			;14c6
	add hl,hl		;14c7
	adc a,a			;14c8
	ld l,h			;14c9
	ld h,a			;14ca
	ex de,hl		;14cb
	ret			;14cc
	ld b,008h		;14cd
	ld l,000h		;14cf
	ld d,l			;14d1
l14d2h:
	add hl,hl		;14d2
	jr nc,l14d6h		;14d3
	add hl,de		;14d5
l14d6h:
	djnz l14d2h		;14d6
	ret			;14d8
	jr nz,l14e8h		;14d9
	ex af,af'		;14db
	ld b,004h		;14dc
	inc b			;14de
	inc bc			;14df
	inc bc			;14e0
	ld (bc),a		;14e1
	ld (bc),a		;14e2
	ld (bc),a		;14e3
	ld (bc),a		;14e4
	ld bc,l0101h		;14e5
l14e8h:
	ld bc,02033h		;14e8
	ld d,010h		;14eb
	dec c			;14ed
	dec bc			;14ee
	add hl,bc		;14ef
	ex af,af'		;14f0
	rlca			;14f1
	ld b,006h		;14f2
	dec b			;14f4
	dec b			;14f5
	inc b			;14f6
	inc b			;14f7
	inc b			;14f8
	jr c,l1525h		;14f9
	jr nz,l1516h		;14fb
	dec d			;14fd
	ld de,00d0fh		;14fe
	inc c			;1501
	ld a,(bc)		;1502
l1503h:
	add hl,bc		;1503
l1504h:
	add hl,bc		;1504
l1505h:
	ex af,af'		;1505
	rlca			;1506
l1507h:
	rlca			;1507
	ld b,03ah		;1508
	cpl			;150a
	daa			;150b
	jr nz,l1529h		;150c
	rla			;150e
	inc d			;150f
	ld (de),a		;1510
	djnz $+16		;1511
	dec c			;1513
	inc c			;1514
	dec bc			;1515
l1516h:
	ld a,(bc)		;1516
	ld a,(bc)		;1517
	add hl,bc		;1518
	dec sp			;1519
	inc sp			;151a
	dec hl			;151b
	dec h			;151c
	jr nz,l153bh		;151d
	add hl,de		;151f
	ld d,014h		;1520
	ld (de),a		;1522
	djnz l1534h		;1523
l1525h:
	ld c,00dh		;1525
	inc c			;1527
	dec bc			;1528
l1529h:
	inc a			;1529
	dec (hl)		;152a
	ld l,029h		;152b
	inc h			;152d
	jr nz,l154ch		;152e
	ld a,(de)		;1530
	rla			;1531
	dec d			;1532
	inc d			;1533
l1534h:
	ld (de),a		;1534
	ld de,00f10h		;1535
	ld c,03dh		;1538
	scf			;153a
l153bh:
	ld sp,0272ch		;153b
	inc hl			;153e
	jr nz,l155eh		;153f
	ld a,(de)		;1541
	jr l155ah		;1542
	dec d			;1544
	inc de			;1545
	ld (de),a		;1546
	ld de,03d10h		;1547
	jr c,l157fh		;154a
l154ch:
	ld l,02ah		;154c
	ld h,023h		;154e
	jr nz,l156fh		;1550
	dec de			;1552
	add hl,de		;1553
	rla			;1554
	ld d,015h		;1555
	inc de			;1557
	ld (de),a		;1558
	dec a			;1559
l155ah:
	add hl,sp		;155a
	inc (hl)		;155b
	jr nc,l158ah		;155c
l155eh:
	jr z,l1585h		;155e
	ld (01e20h),hl		;1560
	inc e			;1563
	ld a,(de)		;1564
	jr l157eh		;1565
	dec d			;1567
	inc d			;1568
	ld a,039h		;1569
	dec (hl)		;156b
	ld sp,02a2eh		;156c
l156fh:
	daa			;156f
	dec h			;1570
	ld (01e20h),hl		;1571
	inc e			;1574
	ld a,(de)		;1575
	add hl,de		;1576
	rla			;1577
	ld d,03eh		;1578
	ld a,(03336h)		;157a
	cpl			;157d
l157eh:
	inc l			;157e
l157fh:
	add hl,hl		;157f
	daa			;1580
	inc h			;1581
	ld (01e20h),hl		;1582
l1585h:
	inc e			;1585
	dec de			;1586
	add hl,de		;1587
	jr $+64			;1588
l158ah:
	dec sp			;158a
	scf			;158b
	inc (hl)		;158c
	ld sp,02b2eh		;158d
	jr z,l15b8h		;1590
	inc h			;1592
	ld (01e20h),hl		;1593
	dec e			;1596
	dec de			;1597
	ld a,(de)		;1598
	ld a,03bh		;1599
	jr c,l15d2h		;159b
	ld (02c2fh),a		;159d
	ld hl,(02528h)		;15a0
	inc hl			;15a3
	ld (01e20h),hl		;15a4
	dec e			;15a7
	inc e			;15a8
	ld a,03bh		;15a9
	jr c,$+56		;15ab
	inc sp			;15ad
	jr nc,l15deh		;15ae
	dec hl			;15b0
	add hl,hl		;15b1
	daa			;15b2
	dec h			;15b3
	inc hl			;15b4
	ld hl,01e20h		;15b5
l15b8h:
	dec e			;15b8
	ld a,03ch		;15b9
	add hl,sp		;15bb
	ld (hl),034h		;15bc
	ld sp,02c2fh		;15be
	ld hl,(02628h)		;15c1
	dec h			;15c4
	inc hl			;15c5
	ld hl,01e20h		;15c6
	ccf			;15c9
	inc a			;15ca
	add hl,sp		;15cb
	scf			;15cc
	inc (hl)		;15cd
	ld (02d30h),a		;15ce
	dec hl			;15d1
l15d2h:
	add hl,hl		;15d2
	jr z,l15fbh		;15d3
	inc h			;15d5
	inc hl			;15d6
	ld hl,00020h		;15d7
	ld b,00ch		;15da
	ld (de),a		;15dc
	add hl,de		;15dd
l15deh:
	rra			;15de
	ld h,02ch		;15df
	ld (03e38h),a		;15e1
	ld b,h			;15e4
	ld c,d			;15e5
	ld d,b			;15e6
	ld d,(hl)		;15e7
	ld e,h			;15e8
	ld h,d			;15e9
	ld l,b			;15ea
	ld l,l			;15eb
	ld (hl),e		;15ec
	ld a,c			;15ed
	ld a,(hl)		;15ee
	add a,h			;15ef
	adc a,c			;15f0
	adc a,(hl)		;15f1
	sub e			;15f2
	sbc a,c			;15f3
	sbc a,(hl)		;15f4
	and d			;15f5
	and a			;15f6
	xor h			;15f7
	or c			;15f8
	or l			;15f9
	cp c			;15fa
l15fbh:
	cp (hl)			;15fb
	jp nz,0cac6h		;15fc
	adc a,0d1h		;15ff
	push de			;1601
	ret c			;1602
	call c,0e2dfh		;1603
	push hl			;1606
	rst 20h			;1607
	jp pe,0efedh		;1608
	pop af			;160b
	di			;160c
	push af			;160d
	rst 30h			;160e
	ret m			;160f
	jp m,0fcfbh		;1610
	defb 0fdh,0feh,0feh ;illegal sequence	;1613
	rst 38h			;1616
	rst 38h			;1617
	rst 38h			;1618
	ld b,h			;1619
	rrca			;161a
	ld c,b			;161b
	add hl,bc		;161c
	ld c,h			;161d
	ld b,050h		;161e
	dec c			;1620
	ld b,h			;1621
	rrca			;1622
	ld c,b			;1623
	rrca			;1624
	ld b,h			;1625
	rrca			;1626
	ld c,b			;1627
	rrca			;1628
	ld (ix+002h),000h	;1629
	ld (ix+010h),008h	;162d
	ret			;1631
	ld a,(ix+002h)		;1632
	inc a			;1635
	cp 004h			;1636
	jp nc,06514h		;1638
	ld (ix+002h),a		;163b
	add a,a			;163e
	ld hl,09621h		;163f
	jr l1658h		;1642
	ld (ix+016h),000h	;1644
	ld a,(ix+002h)		;1648
	cp 010h			;164b
	jr nc,l1664h		;164d
	inc (ix+002h)		;164f
	rra			;1652
	and 006h		;1653
	ld hl,09619h		;1655
l1658h:
	call 05ca6h		;1658
	ld (ix+030h),a		;165b
	inc hl			;165e
	ld a,(hl)		;165f
	ld (ix+031h),a		;1660
	ret			;1663
l1664h:
	ld a,(ix+00ch)		;1664
	dec a			;1667
	jp m,06514h		;1668
	ld bc,02901h		;166b
	jr z,l1672h		;166e
	inc b			;1670
	inc c			;1671
l1672h:
	ld (ix+000h),b		;1672
	ld (ix+032h),c		;1675
	ld hl,0e355h		;1678
	dec (hl)		;167b
	ld (ix+00bh),0c0h	;167c
	call 09694h		;1680
	ld a,(ix+004h)		;1683
	and 0f8h		;1686
	ld (ix+004h),a		;1688
	ld a,(ix+006h)		;168b
	and 0f8h		;168e
	ld (ix+006h),a		;1690
	ret			;1693
	ld a,009h		;1694
l1696h:
	ld (ix+010h),a		;1696
	ld a,002h		;1699
	ld (ix+013h),a		;169b
	ld (ix+014h),a		;169e
	ret			;16a1
	ld (ix+00bh),000h	;16a2
	ld a,00bh		;16a6
	jr l1696h		;16a8
	ld (ix+00bh),0c0h	;16aa
	ld c,037h		;16ae
	jr l16c1h		;16b0
	ld b,008h		;16b2
	jr l16b8h		;16b4
	ld b,001h		;16b6
l16b8h:
	ld (ix+02ah),b		;16b8
	ld (ix+00bh),0c0h	;16bb
	ld c,038h		;16bf
l16c1h:
	ld (ix+032h),c		;16c1
	ld a,009h		;16c4
	call 09696h		;16c6
	ld l,(ix+004h)		;16c9
	ld h,(ix+006h)		;16cc
	call 05c92h		;16cf
	xor a			;16d2
	ld (hl),a		;16d3
	inc hl			;16d4
	ld (hl),a		;16d5
	ld bc,0001fh		;16d6
	add hl,bc		;16d9
	ld (hl),a		;16da
	inc hl			;16db
	ld (hl),a		;16dc
	ret			;16dd
	ld a,(ix+004h)		;16de
	or a			;16e1
	jp z,096e8h		;16e2
	dec (ix+004h)		;16e5
	dec (ix+002h)		;16e8
	ret nz			;16eb
	ld a,(ix+028h)		;16ec
	cp 02bh			;16ef
	jp z,06514h		;16f1
	dec (ix+02ah)		;16f4
	jp z,06514h		;16f7
	ld (ix+000h),02dh	;16fa
	ld (ix+00bh),0c0h	;16fe
	set 0,(ix+010h)		;1702
	ld a,(ix+029h)		;1706
	ld (ix+004h),a		;1709
	ret			;170c
	ld a,0c6h		;170d
	call 09714h		;170f
	jr l1725h		;1712
	ld (ix+032h),a		;1714
	ld a,(ix+004h)		;1717
	and 0f8h		;171a
	ld (ix+004h),a		;171c
	ret			;171f
	ld c,0c7h		;1720
	call 09743h		;1722
l1725h:
	ld a,(ix+00ch)		;1725
	ld (ix+002h),a		;1728
	ld (ix+00ch),000h	;172b
	ld a,001h		;172f
	ld (ix+010h),a		;1731
	ld (ix+013h),a		;1734
	ld (ix+014h),a		;1737
	ld a,(ix+006h)		;173a
	and 0f8h		;173d
	ld (ix+006h),a		;173f
	ret			;1742
	ld a,(ix+004h)		;1743
	rra			;1746
	and 003h		;1747
	add a,c			;1749
	ld (ix+032h),a		;174a
	ret			;174d
	ld a,(ix+001h)		;174e
	dec a			;1751
	jr z,l17bdh		;1752
	dec a			;1754
	jr z,l17d2h		;1755
	jp p,097dah		;1757
	ld a,(ix+006h)		;175a
	sub 008h		;175d
	ld (ix+006h),a		;175f
	jr z,l17cdh		;1762
	ld a,(0e340h)		;1764
	or a			;1767
	jr z,l178eh		;1768
	ld hl,097b8h		;176a
	ld a,(ix+002h)		;176d
	call 05ca6h		;1770
	ld a,(0ea03h)		;1773
	add a,(hl)		;1776
	ld (ix+004h),a		;1777
	cp 0b0h			;177a
	jp nc,06514h		;177c
	ld a,(ix+000h)		;177f
	cp 039h			;1782
	jr z,l178eh		;1784
	ld a,(ix+004h)		;1786
	and 0f8h		;1789
	ld (ix+004h),a		;178b
l178eh:
	call 097f3h		;178e
	jr c,l17ach		;1791
	inc (ix+014h)		;1793
	ld a,(ix+014h)		;1796
	cp (ix+019h)		;1799
	jr c,l17a2h		;179c
	ld (ix+001h),001h	;179e
l17a2h:
	ld a,(ix+014h)		;17a2
	add a,a			;17a5
	add a,a			;17a6
	add a,a			;17a7
	ld (ix+00fh),a		;17a8
	ret			;17ab
l17ach:
	ld a,(ix+006h)		;17ac
	add a,008h		;17af
	ld (ix+006h),a		;17b1
	ld (ix+001h),003h	;17b4
	ret			;17b8
	djnz $+48		;17b9
	ld d,b			;17bb
	ld l,(hl)		;17bc
l17bdh:
	ld a,(ix+006h)		;17bd
	sub 008h		;17c0
	ld (ix+006h),a		;17c2
	jr z,l17cdh		;17c5
	call 097f3h		;17c7
	jr c,l17ach		;17ca
	ret			;17cc
l17cdh:
	ld (ix+001h),002h	;17cd
	ret			;17d1
l17d2h:
	dec (ix+014h)		;17d2
	jr nz,l17a2h		;17d5
	jp 06514h		;17d7
	dec (ix+014h)		;17da
	jp z,06514h		;17dd
	call 097a2h		;17e0
	ld a,(0e320h)		;17e3
	or a			;17e6
	ret z			;17e7
	ld a,(ix+006h)		;17e8
	sub 008h		;17eb
	ld (ix+006h),a		;17ed
	ret nz			;17f0
	jr l17cdh		;17f1
	ld a,(0e340h)		;17f3
	or a			;17f6
	ret nz			;17f7
	ld l,(ix+004h)		;17f8
	ld h,(ix+006h)		;17fb
	call 05c92h		;17fe
	ld a,(hl)		;1801
	or a			;1802
	ret z			;1803
	ld hl,0e305h		;1804
	cp (hl)			;1807
	ret			;1808
	ld c,0fah		;1809
	call 09743h		;180b
	jp 0972bh		;180e
	ld a,(ix+001h)		;1811
	dec a			;1814
	jr z,l1841h		;1815
	dec a			;1817
	jr z,l1852h		;1818
	jp p,09840h		;181a
	ld b,004h		;181d
l181fh:
	ld a,(ix+006h)		;181f
	sub 008h		;1822
	ld (ix+006h),a		;1824
	jp z,0983ch		;1827
	inc (ix+014h)		;182a
	dec (ix+019h)		;182d
	jr z,l1837h		;1830
	djnz l181fh		;1832
	jp 097a2h		;1834
l1837h:
	ld (ix+001h),001h	;1837
	ret			;183b
l183ch:
	ld (ix+001h),002h	;183c
	ret			;1840
l1841h:
	ld b,004h		;1841
l1843h:
	ld a,(ix+006h)		;1843
	sub 008h		;1846
	ld (ix+006h),a		;1848
	jr z,l183ch		;184b
	djnz l1843h		;184d
	jp 097a2h		;184f
l1852h:
	ld b,004h		;1852
l1854h:
	dec (ix+014h)		;1854
	jp z,06514h		;1857
	djnz l1854h		;185a
	jp 097a2h		;185c
	ld a,0f1h		;185f
	call 09714h		;1861
	jp 0972bh		;1864
	ld (ix+024h),006h	;1867
	ld (ix+027h),000h	;186b
	res 2,(ix+010h)		;186f
	call 04f1ch		;1873
	ld de,0fe80h		;1876
	call 04f02h		;1879
	ld (ix+015h),008h	;187c
	ld a,(ix+019h)		;1880
	and a			;1883
	ret z			;1884
	ld (ix+030h),0b4h	;1885
	ret			;1889
	call 09989h		;188a
	ld a,(ix+001h)		;188d
	dec a			;1890
	jr z,l18cch		;1891
	dec a			;1893
	jr z,l1904h		;1894
	dec a			;1896
	jp z,09918h		;1897
	ld bc,l0408h		;189a
l189dh:
	push bc			;189d
	ld a,(ix+006h)		;189e
	sub c			;18a1
	ld h,a			;18a2
	ld a,(ix+004h)		;18a3
	bit 0,(ix+019h)		;18a6
	jr nz,l18aeh		;18aa
	add a,008h		;18ac
l18aeh:
	ld l,a			;18ae
	call 083d9h		;18af
	pop bc			;18b2
	jr c,l18c3h		;18b3
	ld a,c			;18b5
	add a,008h		;18b6
	ld c,a			;18b8
	djnz l189dh		;18b9
	set 2,(ix+010h)		;18bb
	inc (ix+001h)		;18bf
	ret			;18c2
l18c3h:
	ld (ix+001h),003h	;18c3
	set 3,(ix+010h)		;18c7
	ret			;18cb
l18cch:
	call 0995dh		;18cc
	call c,04f2ch		;18cf
	call 09929h		;18d2
	jr c,l18f7h		;18d5
	inc (ix+001h)		;18d7
	ld d,(ix+00ah)		;18da
	ld e,(ix+009h)		;18dd
	ld (ix+026h),d		;18e0
	ld (ix+025h),e		;18e3
	ld hl,0fc00h		;18e6
	ld a,(ix+019h)		;18e9
	and a			;18ec
	jr nz,l18f1h		;18ed
	ld h,004h		;18ef
l18f1h:
	ld de,l0100h		;18f1
	call 04f26h		;18f4
l18f7h:
	dec (ix+015h)		;18f7
	ret nz			;18fa
	call 09eb0h		;18fb
	ld (ix+015h),a		;18fe
	jp 0bb4ah		;1901
l1904h:
	call 09929h		;1904
	ret nc			;1907
	ld e,(ix+026h)		;1908
	ld d,(ix+025h)		;190b
	call 04f02h		;190e
	ld (ix+001h),001h	;1911
	jp 04f1ch		;1915
	ld a,(ix+006h)		;1918
	cp 0c0h			;191b
	ret nz			;191d
	ld (ix+001h),001h	;191e
	ld (ix+010h),007h	;1922
	jp 04f2ch		;1926
	bit 0,(ix+019h)		;1929
	ld a,010h		;192d
	jr z,l1933h		;192f
	ld a,0ffh		;1931
l1933h:
	ld h,(ix+006h)		;1933
	add a,(ix+004h)		;1936
	ld l,a			;1939
	push hl			;193a
	call 083d9h		;193b
	pop hl			;193e
	jr c,l1956h		;193f
	ld a,(ix+004h)		;1941
	add a,068h		;1944
	cp 071h			;1946
	jr nc,l1956h		;1948
l194ah:
	ld de,l0180h		;194a
	call 04f02h		;194d
	scf			;1950
	ret			;1951
	cp 018h			;1952
	jr nc,l194ah		;1954
l1956h:
	ld a,h			;1956
	add a,008h		;1957
	ld h,a			;1959
	jp 083d9h		;195a
	bit 0,(ix+019h)		;195d
	ld a,(ix+004h)		;1961
	jr nz,l1968h		;1964
	add a,008h		;1966
l1968h:
	ld l,a			;1968
	ld a,(ix+006h)		;1969
	bit 7,(ix+00ah)		;196c
	jr z,l197bh		;1970
	cp 008h			;1972
	ccf			;1974
	ret nc			;1975
	dec a			;1976
	ld h,a			;1977
	jp 083d9h		;1978
l197bh:
	add a,008h		;197b
	ld h,a			;197d
	call 083d9h		;197e
	ret c			;1981
	ld a,(ix+006h)		;1982
	cp 0f0h			;1985
	ccf			;1987
	ret			;1988
	bit 0,(ix+019h)		;1989
	ld hl,09998h		;198d
	jr z,l1995h		;1990
	ld hl,0999ch		;1992
l1995h:
	jp 09b31h		;1995
	call c,0e8e0h		;1998
	call po,0b8b4h		;199b
	ret nz			;199e
	cp h			;199f
	ld (ix+002h),022h	;19a0
	ld a,(ix+019h)		;19a4
	and a			;19a7
	jr nz,l19c5h		;19a8
	ld (ix+02ah),006h	;19aa
	ld a,r			;19ae
	and 001h		;19b0
	jr z,l19bch		;19b2
	ld (ix+02ah),00eh	;19b4
	ld (ix+006h),004h	;19b8
l19bch:
	ld a,(ix+02ah)		;19bc
	inc a			;19bf
	inc a			;19c0
	and 00fh		;19c1
	jr l19ebh		;19c3
l19c5h:
	ld (ix+030h),0c4h	;19c5
	inc (ix+001h)		;19c9
	ld a,(ix+019h)		;19cc
	bit 7,a			;19cf
	jr z,l19d4h		;19d1
	xor a			;19d3
l19d4h:
	ld (ix+026h),018h	;19d4
	jr l19efh		;19d8
	call 0637bh		;19da
	and 003h		;19dd
	add a,(ix+02ah)		;19df
	and 00fh		;19e2
	jr l19ebh		;19e4
	call 0637bh		;19e6
	and 00fh		;19e9
l19ebh:
	ld (ix+026h),010h	;19eb
l19efh:
	ld (ix+025h),a		;19ef
	ld c,a			;19f2
	ld a,(0e228h)		;19f3
	ld b,001h		;19f6
	cp 006h			;19f8
	jr c,l19fdh		;19fa
	inc b			;19fc
l19fdh:
	ld a,c			;19fd
	call 04cb7h		;19fe
	jp 04f26h		;1a01
	ld (ix+027h),020h	;1a04
	ld (ix+024h),004h	;1a08
	ld (ix+028h),000h	;1a0c
	jp 04f17h		;1a10
	ld a,(ix+031h)		;1a13
	xor 005h		;1a16
	ld (ix+031h),a		;1a18
	call 09aaeh		;1a1b
	call 09ac3h		;1a1e
	ld a,(ix+001h)		;1a21
	dec a			;1a24
	jr z,l1a74h		;1a25
	dec a			;1a27
	jr z,l1a8ah		;1a28
	dec (ix+002h)		;1a2a
	jr nz,l1a6dh		;1a2d
	ld c,000h		;1a2f
	ld d,(ix+006h)		;1a31
	ld e,(ix+004h)		;1a34
	ld a,(ix+025h)		;1a37
	add a,002h		;1a3a
	and 00fh		;1a3c
	jr nz,l1a42h		;1a3e
	ld a,080h		;1a40
l1a42h:
	ld b,a			;1a42
	ld a,008h		;1a43
	push de			;1a45
	push bc			;1a46
	call 04d16h		;1a47
	pop bc			;1a4a
	pop de			;1a4b
	ld a,b			;1a4c
	sub 004h		;1a4d
	and 00fh		;1a4f
	jr nz,l1a55h		;1a51
	ld a,080h		;1a53
l1a55h:
	ld b,a			;1a55
	ld a,008h		;1a56
	ld c,000h		;1a58
	call 04d16h		;1a5a
	ld (ix+030h),0c4h	;1a5d
	inc (ix+001h)		;1a61
	ld (ix+019h),0ffh	;1a64
	ld (ix+026h),010h	;1a68
	ret			;1a6c
l1a6dh:
	dec (ix+026h)		;1a6d
	ret nz			;1a70
	jp 099dah		;1a71
l1a74h:
	ld a,(ix+019h)		;1a74
	or a			;1a77
	jr z,l1a6dh		;1a78
	dec (ix+026h)		;1a7a
	ret nz			;1a7d
	res 2,(ix+010h)		;1a7e
	inc (ix+001h)		;1a82
	ld (ix+026h),008h	;1a85
	ret			;1a89
l1a8ah:
	dec (ix+026h)		;1a8a
	ret nz			;1a8d
	dec (ix+001h)		;1a8e
	set 2,(ix+010h)		;1a91
	ld (ix+026h),028h	;1a95
	ld a,(0e228h)		;1a99
	srl a			;1a9c
	srl a			;1a9e
	ld hl,09aaah		;1aa0
	call 0407ah		;1aa3
	ld a,(hl)		;1aa6
	jp 04ecah		;1aa7
	jr nz,l1adch		;1aaa
	ld b,b			;1aac
	ld d,b			;1aad
	bit 7,(ix+008h)		;1aae
	ld a,(ix+004h)		;1ab2
	jr z,l1abdh		;1ab5
	cp 008h			;1ab7
	jp c,04f3ch		;1ab9
	ret			;1abc
l1abdh:
	cp 0a0h			;1abd
	jp nc,04f3ch		;1abf
	ret			;1ac2
	ld a,(ix+001h)		;1ac3
	or a			;1ac6
	jr nz,l1ae4h		;1ac7
	ld b,0b4h		;1ac9
	ld a,(ix+002h)		;1acb
	cp 014h			;1ace
	jr nc,l1ae0h		;1ad0
	ld b,0b8h		;1ad2
	cp 00fh			;1ad4
	jr nc,l1ae0h		;1ad6
	ld b,0bch		;1ad8
	cp 004h			;1ada
l1adch:
	jr nc,l1ae0h		;1adc
	ld b,0c0h		;1ade
l1ae0h:
	ld (ix+030h),b		;1ae0
	ret			;1ae3
l1ae4h:
	ld a,(0e1c3h)		;1ae4
	and 003h		;1ae7
	ret nz			;1ae9
	ld a,(ix+030h)		;1aea
	add a,004h		;1aed
	cp 0dch			;1aef
	jr nz,l1af5h		;1af1
	ld a,0c4h		;1af3
l1af5h:
	ld (ix+030h),a		;1af5
	ret			;1af8
	dec (ix+006h)		;1af9
	call 09b2eh		;1afc
	ld a,(ix+001h)		;1aff
	dec a			;1b02
	jr z,l1b14h		;1b03
	dec a			;1b05
	jr z,l1b1fh		;1b06
	dec (ix+027h)		;1b08
	ret nz			;1b0b
	ld (ix+026h),001h	;1b0c
	inc (ix+001h)		;1b10
	ret			;1b13
l1b14h:
	dec (ix+026h)		;1b14
	ret nz			;1b17
	call 099e6h		;1b18
	inc (ix+001h)		;1b1b
	ret			;1b1e
l1b1fh:
	dec (ix+026h)		;1b1f
	ret nz			;1b22
	ld (ix+026h),008h	;1b23
	call 04f17h		;1b27
	dec (ix+001h)		;1b2a
	ret			;1b2d
	ld hl,09b48h		;1b2e
	ld c,000h		;1b31
	dec (ix+024h)		;1b33
	ld a,(ix+024h)		;1b36
	rra			;1b39
	rra			;1b3a
	dec c			;1b3b
	jr nz,l1b3fh		;1b3c
	rra			;1b3e
l1b3fh:
	and 003h		;1b3f
	call 05ca6h		;1b41
	ld (ix+030h),a		;1b44
	ret			;1b47
	call nz,0ccc8h		;1b48
	ret z			;1b4b
	ld (ix+02bh),008h	;1b4c
	ld de,0fd00h		;1b50
	call 04f02h		;1b53
	jp 04f1ch		;1b56
	call 09b85h		;1b59
	call 06770h		;1b5c
	call 09b77h		;1b5f
	ld a,(0e404h)		;1b62
	ld de,l0016h		;1b65
	cp (ix+004h)		;1b68
	call c,05cadh		;1b6b
	ex de,hl		;1b6e
	call 04f10h		;1b6f
	add hl,de		;1b72
	ex de,hl		;1b73
	jp 04efbh		;1b74
	ld a,(0e406h)		;1b77
	cp (ix+006h)		;1b7a
	ret c			;1b7d
	dec (ix+02bh)		;1b7e
	ret nz			;1b81
	jp 0bb4ah		;1b82
	ld hl,09b98h		;1b85
	ld a,(0e201h)		;1b88
	cp 004h			;1b8b
	jr nz,l1b92h		;1b8d
	ld hl,09b9fh		;1b8f
l1b92h:
	ld bc,l0307h		;1b92
	jp 06361h		;1b95
	and h			;1b98
	xor b			;1b99
	xor h			;1b9a
	or b			;1b9b
	xor h			;1b9c
	xor b			;1b9d
	and h			;1b9e
	ld (hl),h		;1b9f
	ld a,b			;1ba0
	ld a,h			;1ba1
	add a,b			;1ba2
	ld a,h			;1ba3
	ld a,b			;1ba4
	ld (hl),h		;1ba5
	ld a,(0e201h)		;1ba6
	cp 004h			;1ba9
	jr nz,l1bb1h		;1bab
	ld (ix+030h),084h	;1bad
l1bb1h:
	ld a,(0e228h)		;1bb1
	srl a			;1bb4
	srl a			;1bb6
	ld hl,09bc1h		;1bb8
	call 05ca6h		;1bbb
	jp 04ecah		;1bbe
	ld (hl),b		;1bc1
	sub b			;1bc2
	and b			;1bc3
	ret nz			;1bc4
	ld a,(0e1c3h)		;1bc5
	and 003h		;1bc8
	ret nz			;1bca
	ld hl,09bebh		;1bcb
	ld a,(0e201h)		;1bce
	cp 004h			;1bd1
	jr nz,l1bd8h		;1bd3
	ld hl,09bf1h		;1bd5
l1bd8h:
	ld a,(ix+025h)		;1bd8
	inc a			;1bdb
	cp 006h			;1bdc
	jr c,l1be1h		;1bde
	xor a			;1be0
l1be1h:
	ld (ix+025h),a		;1be1
	call 05ca6h		;1be4
	ld (ix+030h),a		;1be7
	ret			;1bea
	or h			;1beb
	cp b			;1bec
	cp h			;1bed
	ret nz			;1bee
	cp h			;1bef
	cp b			;1bf0
	add a,h			;1bf1
	adc a,b			;1bf2
	adc a,h			;1bf3
	sub b			;1bf4
	adc a,h			;1bf5
	adc a,b			;1bf6
	ld de,0fe80h		;1bf7
	call 04f02h		;1bfa
	ld de,l0800h		;1bfd
	ld a,(ix+004h)		;1c00
	cp 060h			;1c03
	jr c,l1c09h		;1c05
	ld d,0f8h		;1c07
l1c09h:
	jp 04efbh		;1c09
	call 09c40h		;1c0c
	call 09c36h		;1c0f
	ld a,(ix+001h)		;1c12
	dec a			;1c15
	jr z,l1c22h		;1c16
	ld a,048h		;1c18
	cp (ix+004h)		;1c1a
	ret nz			;1c1d
	inc (ix+001h)		;1c1e
	ret			;1c21
l1c22h:
	ld de,l0080h		;1c22
	ld a,048h		;1c25
	cp (ix+004h)		;1c27
	call c,05cadh		;1c2a
	ex de,hl		;1c2d
	call 04f10h		;1c2e
	add hl,de		;1c31
	ex de,hl		;1c32
	jp 04efbh		;1c33
	ld hl,09c3ch		;1c36
	jp 09b31h		;1c39
	call p,0f4f8h		;1c3c
	ret m			;1c3f
	ld a,(0e228h)		;1c40
	cp 006h			;1c43
	ret c			;1c45
	dec (ix+015h)		;1c46
	ret nz			;1c49
	call 04e93h		;1c4a
	jp 0bb4ah		;1c4d
	ld (ix+025h),020h	;1c50
	ld (ix+010h),002h	;1c54
	jp 09bb1h		;1c58
	ld a,(ix+001h)		;1c5b
	and a			;1c5e
	ret nz			;1c5f
	dec (ix+025h)		;1c60
	jr nz,l1c71h		;1c63
	inc (ix+001h)		;1c65
	ld (ix+031h),005h	;1c68
	ld (ix+010h),007h	;1c6c
	ret			;1c70
l1c71h:
	ld hl,09c87h		;1c71
	ld a,(ix+027h)		;1c74
	inc a			;1c77
	cp 006h			;1c78
	jr c,l1c7dh		;1c7a
	xor a			;1c7c
l1c7dh:
	ld (ix+027h),a		;1c7d
	call 05ca6h		;1c80
	ld (ix+031h),a		;1c83
	ret			;1c86
	inc b			;1c87
	dec b			;1c88
	rlca			;1c89
	rrca			;1c8a
	rlca			;1c8b
	dec b			;1c8c
	ld (ix+024h),008h	;1c8d
	ld (ix+02bh),000h	;1c91
	ld a,(0e228h)		;1c95
	cp 006h			;1c98
	ld de,0fa00h		;1c9a
	jr nc,l1ca1h		;1c9d
	ld d,0fch		;1c9f
l1ca1h:
	ld (ix+02ah),d		;1ca1
	call 04f02h		;1ca4
	call 04f1ch		;1ca7
	ld a,(0e228h)		;1caa
	srl a			;1cad
	srl a			;1caf
	ld hl,09cbbh		;1cb1
	call 05ca6h		;1cb4
	ld (ix+02ch),a		;1cb7
	ret			;1cba
	jr z,$+34		;1cbb
	jr $+18			;1cbd
	ld a,(ix+006h)		;1cbf
	cp 008h			;1cc2
	jp c,06514h		;1cc4
	call 09d59h		;1cc7
	ld hl,09d63h		;1cca
	ld a,(0e201h)		;1ccd
	cp 005h			;1cd0
	jr nz,l1cd7h		;1cd2
	ld hl,09d67h		;1cd4
l1cd7h:
	ld c,001h		;1cd7
	call 09b33h		;1cd9
	ld a,(ix+001h)		;1cdc
	dec a			;1cdf
	jr z,l1d16h		;1ce0
	dec a			;1ce2
	jr z,l1d4dh		;1ce3
	ld hl,09d6bh		;1ce5
	ld a,(ix+02bh)		;1ce8
	ld c,a			;1ceb
	call 05ca6h		;1cec
	cp (ix+006h)		;1cef
	ret c			;1cf2
	inc c			;1cf3
	ld (ix+02bh),c		;1cf4
	inc (ix+001h)		;1cf7
	ld a,(ix+004h)		;1cfa
	cp 058h			;1cfd
	ld a,001h		;1cff
	jr c,l1d05h		;1d01
	ld a,0ffh		;1d03
l1d05h:
	ld (ix+028h),a		;1d05
	ld (ix+002h),002h	;1d08
	ld a,008h		;1d0c
	ld b,004h		;1d0e
	ld (ix+027h),a		;1d10
	jp 04cb7h		;1d13
l1d16h:
	dec (ix+002h)		;1d16
	ret nz			;1d19
	ld (ix+002h),002h	;1d1a
	ld a,(ix+027h)		;1d1e
	add a,(ix+028h)		;1d21
	and 00fh		;1d24
	cp 008h			;1d26
	jr z,l1d35h		;1d28
	ld (ix+027h),a		;1d2a
	ld b,004h		;1d2d
	call 04cb7h		;1d2f
	jp 04f26h		;1d32
l1d35h:
	call 04f1ch		;1d35
	ld d,(ix+02ah)		;1d38
	ld e,000h		;1d3b
	call 04f02h		;1d3d
	ld (ix+001h),e		;1d40
	ld a,(ix+02bh)		;1d43
	dec a			;1d46
	ret z			;1d47
	ld (ix+001h),002h	;1d48
	ret			;1d4c
l1d4dh:
	ld de,0ffc8h		;1d4d
	ex de,hl		;1d50
	call 04f09h		;1d51
	add hl,de		;1d54
	ex de,hl		;1d55
	jp 04f02h		;1d56
	dec (ix+02ch)		;1d59
	ret nz			;1d5c
	call 09caah		;1d5d
	jp 0bb4ah		;1d60
	call pe,0f4f0h		;1d63
	ret p			;1d66
	and h			;1d67
	xor b			;1d68
	xor h			;1d69
	xor b			;1d6a
	sub b			;1d6b
	ld l,b			;1d6c
	ld a,(ix+004h)		;1d6d
	cp 060h			;1d70
	ld bc,00098h		;1d72
	jr c,l1d7ah		;1d75
	ld bc,l018ch		;1d77
l1d7ah:
	ld (ix+027h),b		;1d7a
	ld (ix+030h),c		;1d7d
	ld (ix+025h),00ah	;1d80
	call 04f1ch		;1d84
	ld de,l0200h		;1d87
	call 04f02h		;1d8a
	ld a,r			;1d8d
	and 01fh		;1d8f
	add a,02dh		;1d91
	ld (ix+002h),a		;1d93
	ret			;1d96
	call 09f46h		;1d97
	jp c,0893ah		;1d9a
	call 09f75h		;1d9d
	jp c,06514h		;1da0
	ld a,(ix+001h)		;1da3
	dec a			;1da6
	jr z,l1de1h		;1da7
	jp p,09e12h		;1da9
	call 06311h		;1dac
	jr c,l1dd3h		;1daf
	dec (ix+002h)		;1db1
	jr z,l1dbch		;1db4
	call 09e1bh		;1db6
	jp 09efch		;1db9
l1dbch:
	inc (ix+001h)		;1dbc
	ld (ix+002h),05ah	;1dbf
	call 09f20h		;1dc3
	call 09e17h		;1dc6
	call 09eb0h		;1dc9
	ld (ix+010h),00bh	;1dcc
	jp 04f21h		;1dd0
l1dd3h:
	ld (ix+010h),007h	;1dd3
	ld (ix+001h),002h	;1dd7
	ld de,0fe00h		;1ddb
	jp 04f02h		;1dde
l1de1h:
	call 06311h		;1de1
	jr c,l1dd3h		;1de4
	dec (ix+002h)		;1de6
	jr z,l1df6h		;1de9
	call 09ebch		;1deb
	ld a,(0e201h)		;1dee
	or a			;1df1
	ret nz			;1df2
	jp 09e1bh		;1df3
l1df6h:
	ld a,(0e406h)		;1df6
	cp (ix+006h)		;1df9
	ld de,l0200h		;1dfc
	jr nc,l1e04h		;1dff
	ld de,0fe00h		;1e01
l1e04h:
	call 04f02h		;1e04
l1e07h:
	ld (ix+010h),007h	;1e07
	ld (ix+001h),000h	;1e0b
	jp 09d8dh		;1e0f
	call 09efch		;1e12
	jr l1e1bh		;1e15
	ld a,001h		;1e17
	jr l1e1ch		;1e19
l1e1bh:
	xor a			;1e1b
l1e1ch:
	ld (0e366h),a		;1e1c
	ld a,(ix+004h)		;1e1f
	ld (ix+028h),a		;1e22
	bit 0,(ix+027h)		;1e25
	jr z,l1e74h		;1e29
l1e2bh:
	ld h,(ix+006h)		;1e2b
	ld a,(ix+004h)		;1e2e
	add a,010h		;1e31
	ld l,a			;1e33
	call 083e8h		;1e34
	jr nc,l1e62h		;1e37
l1e39h:
	ld hl,(0e3bch)		;1e39
	ld bc,0ffe0h		;1e3c
	add hl,bc		;1e3f
	ld (0e3bch),hl		;1e40
	call 083eeh		;1e43
	ret nc			;1e46
	ld a,(ix+004h)		;1e47
	sub 008h		;1e4a
	ld (ix+004h),a		;1e4c
	cp 010h			;1e4f
	jr nc,l1e39h		;1e51
l1e53h:
	call 062fbh		;1e53
	ld (ix+025h),005h	;1e56
	ld a,(ix+028h)		;1e5a
	ld (ix+004h),a		;1e5d
	jr l1e07h		;1e60
l1e62h:
	ld a,(ix+004h)		;1e62
	cp 098h			;1e65
	ret nc			;1e67
	add a,008h		;1e68
	ld (ix+004h),a		;1e6a
	ld a,(0e366h)		;1e6d
	or a			;1e70
	jr nz,l1e2bh		;1e71
	ret			;1e73
l1e74h:
	ld h,(ix+006h)		;1e74
	ld l,(ix+004h)		;1e77
	call 083e8h		;1e7a
	jr nc,l1e8dh		;1e7d
	ld a,(ix+004h)		;1e7f
	add a,008h		;1e82
	ld (ix+004h),a		;1e84
	cp 080h			;1e87
	jr c,l1e74h		;1e89
	jr l1e53h		;1e8b
l1e8dh:
	ld hl,(0e3bch)		;1e8d
	ld bc,0ffe0h		;1e90
	add hl,bc		;1e93
	ld (0e3bch),hl		;1e94
	call 083eeh		;1e97
	ret c			;1e9a
	ld a,(ix+004h)		;1e9b
	cp 009h			;1e9e
	ret c			;1ea0
	ld a,(ix+004h)		;1ea1
	sub 008h		;1ea4
	ld (ix+004h),a		;1ea6
	ld a,(0e366h)		;1ea9
	or a			;1eac
	jr nz,l1e8dh		;1ead
	ret			;1eaf
	ld a,(0e228h)		;1eb0
	add a,a			;1eb3
	sub 03ch		;1eb4
	neg			;1eb6
	ld (ix+015h),a		;1eb8
	ret			;1ebb
	dec (ix+015h)		;1ebc
	ret nz			;1ebf
	call 09eb0h		;1ec0
	call 09f20h		;1ec3
	bit 0,(ix+027h)		;1ec6
	jr z,l1ed5h		;1eca
	ld a,(0e404h)		;1ecc
	cp (ix+004h)		;1ecf
	ret nc			;1ed2
	jr l1edch		;1ed3
l1ed5h:
	ld a,(0e404h)		;1ed5
	cp (ix+004h)		;1ed8
	ret c			;1edb
l1edch:
	ld e,(ix+004h)		;1edc
	ld d,(ix+006h)		;1edf
	call 0945bh		;1ee2
	ld a,(0f018h)		;1ee5
	cp 080h			;1ee8
	jr c,l1eeeh		;1eea
	neg			;1eec
l1eeeh:
	cp 040h			;1eee
	jr c,l1ef4h		;1ef0
	sub 040h		;1ef2
l1ef4h:
	sub 008h		;1ef4
	cp 030h			;1ef6
	ret nc			;1ef8
	jp 06774h		;1ef9
	ld a,(ix+00ah)		;1efc
	or a			;1eff
	ld hl,09f18h		;1f00
	jp p,09f08h		;1f03
	inc hl			;1f06
	inc hl			;1f07
	bit 0,(ix+027h)		;1f08
	jr z,l1f12h		;1f0c
	ld bc,l0004h		;1f0e
	add hl,bc		;1f11
l1f12h:
	ld bc,l0302h		;1f12
	jp 06361h		;1f15
	sbc a,b			;1f18
	sbc a,h			;1f19
	ld (hl),h		;1f1a
	ld a,b			;1f1b
	adc a,h			;1f1c
	sub b			;1f1d
	add a,b			;1f1e
	add a,h			;1f1f
	bit 0,(ix+027h)		;1f20
	jr z,l1f36h		;1f24
	ld b,094h		;1f26
	ld a,(0e406h)		;1f28
	cp (ix+006h)		;1f2b
	jr nc,l1f32h		;1f2e
	ld b,088h		;1f30
l1f32h:
	ld (ix+030h),b		;1f32
	ret			;1f35
l1f36h:
	ld b,0a0h		;1f36
	ld a,(0e406h)		;1f38
	cp (ix+006h)		;1f3b
	jr nc,l1f42h		;1f3e
	ld b,07ch		;1f40
l1f42h:
	ld (ix+030h),b		;1f42
	ret			;1f45
	ld a,(0e201h)		;1f46
	or a			;1f49
	ret nz			;1f4a
	ld l,(ix+004h)		;1f4b
	ld h,(ix+006h)		;1f4e
	call 05c92h		;1f51
	ld (0f000h),hl		;1f54
	ld (0f002h),hl		;1f57
	ld de,002c3h		;1f5a
	ld bc,00020h		;1f5d
	call 09f6ch		;1f60
	ret c			;1f63
	ld hl,(0f000h)		;1f64
	ld a,l			;1f67
	and 01fh		;1f68
	ret z			;1f6a
	inc hl			;1f6b
	ld a,(hl)		;1f6c
	sub e			;1f6d
	cp d			;1f6e
	ret nc			;1f6f
	add hl,bc		;1f70
	ld a,(hl)		;1f71
	sub e			;1f72
	cp d			;1f73
	ret			;1f74
	ld a,(0e201h)		;1f75
	or a			;1f78
	ret nz			;1f79
	ld a,(0e320h)		;1f7a
	or a			;1f7d
	ret nz			;1f7e
	ld a,(0e305h)		;1f7f
	ld c,a			;1f82
	ld hl,(0f002h)		;1f83
	call 09f98h		;1f86
	ret nc			;1f89
	inc hl			;1f8a
	call 09f98h		;1f8b
	ret nc			;1f8e
	ld de,0001fh		;1f8f
	add hl,de		;1f92
	call 09f98h		;1f93
	ret nc			;1f96
	inc hl			;1f97
	ld a,(hl)		;1f98
	or a			;1f99
	ret z			;1f9a
	cp c			;1f9b
	ret			;1f9c
	ld a,r			;1f9d
	and 007h		;1f9f
	add a,a			;1fa1
	ld hl,09fcdh		;1fa2
	call 04b67h		;1fa5
	ld a,(ix+004h)		;1fa8
	or a			;1fab
	call m,05cadh		;1fac
	call 04efbh		;1faf
	inc hl			;1fb2
	ld e,(hl)		;1fb3
	inc hl			;1fb4
	ld d,(hl)		;1fb5
	ld a,r			;1fb6
	and 001h		;1fb8
	call nz,05cadh		;1fba
	call 04f02h		;1fbd
	ld de,l0088h		;1fc0
	ld a,(ix+004h)		;1fc3
	or a			;1fc6
	call p,05cadh		;1fc7
	jp 062a8h		;1fca
	nop			;1fcd
	dec bc			;1fce
	add a,b			;1fcf
	ld bc,00a80h		;1fd0
	nop			;1fd3
	ld (bc),a		;1fd4
	add a,b			;1fd5
	dec bc			;1fd6
	nop			;1fd7
	inc b			;1fd8
	nop			;1fd9
	ld a,(bc)		;1fda
	sub b			;1fdb
	ld bc,00a80h		;1fdc
	or b			;1fdf
	ld bc,l0b40h		;1fe0
	nop			;1fe3
	inc bc			;1fe4
	ld (hl),b		;1fe5
	ld a,(bc)		;1fe6
	add a,b			;1fe7
	ld (bc),a		;1fe8
	ld h,b			;1fe9
	ld a,(bc)		;1fea
	ld b,b			;1feb
	ld (bc),a		;1fec
	call 062c2h		;1fed
	call 0a002h		;1ff0
	ld a,(0e1c3h)		;1ff3
	and 003h		;1ff6
	ret nz			;1ff8
	ld a,(ix+030h)		;1ff9
	xor 004h		;1ffc
	defb 0ddh,077h		;1ffe
