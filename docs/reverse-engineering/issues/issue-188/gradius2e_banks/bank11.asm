; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x0000 -o docs/reverse-engineering/issues/issue-188/gradius2e_banks/bank11.asm /tmp/gradius2e_bank11.bin

	org 00000h

l0000h:
	ld de,0e280h		;0000
	ld a,(0e400h)		;0003
l0006h:
	or a			;0006
l0007h:
	jr z,l0071h		;0007
	jp m,0a079h		;0009
	ld hl,(0e446h)		;000c
	dec l			;000f
l0010h:
	jr nz,l001eh		;0010
	ld a,h			;0012
	cp 003h			;0013
	jr nc,l001eh		;0015
	ld a,(0e1c3h)		;0017
	bit 1,a			;001a
l001ch:
	jr z,l0071h		;001c
l001eh:
	ld hl,0e404h		;001e
	ldi			;0021
	inc l			;0023
	ldi			;0024
	ldi			;0026
l0028h:
	ldi			;0028
	ld hl,0e404h		;002a
l002dh:
	ld a,(0e400h)		;002d
l0030h:
	dec a			;0030
	jr z,l004bh		;0031
	dec a			;0033
	jr nz,l004bh		;0034
	ldi			;0036
l0038h:
	inc l			;0038
	ld a,(0f0f5h)		;0039
	bit 2,a			;003c
	ld b,008h		;003e
l0040h:
	jr z,l0044h		;0040
	ld b,000h		;0042
l0044h:
	ld a,(hl)		;0044
	add a,b			;0045
	ld (de),a		;0046
	inc e			;0047
	inc l			;0048
	jr l0050h		;0049
l004bh:
	ldi			;004b
	inc l			;004d
	ldi			;004e
l0050h:
	inc l			;0050
	inc l			;0051
	ldi			;0052
	ldi			;0054
sub_0056h:
	ld hl,0e410h		;0056
sub_0059h:
	call 0a05fh		;0059
	ld hl,0e420h		;005c
	ld a,(hl)		;005f
l0060h:
	or a			;0060
	jr z,l00aah		;0061
	ld a,l			;0063
	add a,004h		;0064
	ld l,a			;0066
	ldi			;0067
	inc l			;0069
	ldi			;006a
	ldi			;006c
	ldi			;006e
	ret			;0070
l0071h:
	ld b,004h		;0071
l0073h:
	call 0a0aah		;0073
	djnz l0073h		;0076
	ret			;0078
	ld hl,0e418h		;0079
	call 0a082h		;007c
	ld hl,0e428h		;007f
	ld bc,l0007h+1		;0082
	ldir			;0085
	ret			;0087
	ld de,0e290h		;0088
	ld hl,0e470h		;008b
	exx			;008e
	ld bc,l0906h		;008f
l0092h:
	exx			;0092
	push hl			;0093
	call 0a0b2h		;0094
	pop hl			;0097
	ld bc,l0010h		;0098
	add hl,bc		;009b
	exx			;009c
	djnz l0092h		;009d
	ld a,c			;009f
	exx			;00a0
	or a			;00a1
	ret z			;00a2
l00a3h:
	ld b,a			;00a3
l00a4h:
	call 0a0aah		;00a4
	djnz l00a4h		;00a7
l00a9h:
	ret			;00a9
l00aah:
	ld a,0e0h		;00aa
	ld (de),a		;00ac
l00adh:
	inc e			;00ad
	inc e			;00ae
l00afh:
	inc e			;00af
	inc e			;00b0
	ret			;00b1
	ld a,(hl)		;00b2
l00b3h:
	cp 00eh			;00b3
	jr z,l00c0h		;00b5
	cp 006h			;00b7
	jr z,l00d0h		;00b9
	sub 003h		;00bb
	cp 003h			;00bd
	ret nc			;00bf
l00c0h:
	inc l			;00c0
l00c1h:
	inc l			;00c1
	inc l			;00c2
	ldi			;00c3
	inc l			;00c5
	ldi			;00c6
	ldi			;00c8
	ldi			;00ca
	exx			;00cc
	dec c			;00cd
	exx			;00ce
	ret			;00cf
l00d0h:
	inc l			;00d0
	bit 0,(hl)		;00d1
	jr z,l00c1h		;00d3
	ret			;00d5
	ld ix,0e470h		;00d6
	ld de,0ec00h		;00da
	ld b,006h		;00dd
l00dfh:
	push bc			;00df
	call 0a0ech		;00e0
	ld bc,l0010h		;00e3
	add ix,bc		;00e6
	pop bc			;00e8
	djnz l00dfh		;00e9
	ret			;00eb
	ld a,(ix+000h)		;00ec
	dec a			;00ef
	ret m			;00f0
	call 04084h		;00f1
	ld (de),a		;00f4
	and c			;00f5
	ld (de),a		;00f6
	and c			;00f7
l00f8h:
	ld e,c			;00f8
	and c			;00f9
	ld e,c			;00fa
	and c			;00fb
	ld e,c			;00fc
	and c			;00fd
	ld e,c			;00fe
	and c			;00ff
	jr l00a3h		;0100
	jr $-93			;0102
	ld h,0a1h		;0104
	jr l00a9h		;0106
l0108h:
	jr $-93			;0108
	jr l00adh		;010a
	jr l00afh		;010c
	ld e,c			;010e
	and c			;010f
	jr c,l00b3h		;0110
	call 0a15ah		;0112
	ldi			;0115
	ret			;0117
l0118h:
	call 0a15ah		;0118
	ld a,(ix+00ah)		;011b
	or a			;011e
	ret z			;011f
	ld c,a			;0120
	ld b,000h		;0121
	ldir			;0123
	ret			;0125
	call 0a15ah		;0126
	ld a,(ix+00ah)		;0129
l012ch:
	or a			;012c
	ret z			;012d
l012eh:
	ldi			;012e
	ld bc,l001eh+1		;0130
	add hl,bc		;0133
	dec a			;0134
	jr nz,l012eh		;0135
	ret			;0137
l0138h:
	call 0a15ah		;0138
	ld (0f000h),hl		;013b
	ld a,(ix+00ah)		;013e
	or a			;0141
	ret z			;0142
	ld c,a			;0143
	ld b,000h		;0144
	ldir			;0146
	bit 0,(ix+006h)		;0148
	ret z			;014c
	ld hl,(0f000h)		;014d
	ld bc,l001eh+2		;0150
	add hl,bc		;0153
	ld c,(ix+00ah)		;0154
	ldir			;0157
	ret			;0159
	ld l,(ix+003h)		;015a
	ld h,(ix+005h)		;015d
	call 05c92h		;0160
	ld (ix+00eh),l		;0163
	ld (ix+00fh),h		;0166
	ret			;0169
	ld ix,0e470h		;016a
	ld de,0ec00h		;016e
	ld b,006h		;0171
l0173h:
	push bc			;0173
	call 0a180h		;0174
	ld bc,l0010h		;0177
	add ix,bc		;017a
	pop bc			;017c
	djnz l0173h		;017d
	ret			;017f
	ld a,(ix+000h)		;0180
	dec a			;0183
	ret m			;0184
	call 04084h		;0185
	and (hl)		;0188
	and c			;0189
	and (hl)		;018a
	and c			;018b
	ld e,c			;018c
	and c			;018d
	ld e,c			;018e
	and c			;018f
	ld e,c			;0190
	and c			;0191
	ld e,c			;0192
	and c			;0193
	or c			;0194
	and c			;0195
	or c			;0196
	and c			;0197
	call nz,0b1a1h		;0198
	and c			;019b
	or c			;019c
	and c			;019d
	or c			;019e
	and c			;019f
	or c			;01a0
	and c			;01a1
	ld e,c			;01a2
	and c			;01a3
	defb 0ddh,0a1h,0ebh ;illegal sequence	;01a4
	ld e,(ix+00eh)		;01a7
	ld d,(ix+00fh)		;01aa
	ldi			;01ad
	ex de,hl		;01af
	ret			;01b0
	ld a,(ix+00ah)		;01b1
	or a			;01b4
	ret z			;01b5
	ld c,a			;01b6
	ld b,000h		;01b7
	ex de,hl		;01b9
	ld e,(ix+00eh)		;01ba
	ld d,(ix+00fh)		;01bd
	ldir			;01c0
	ex de,hl		;01c2
	ret			;01c3
	ld a,(ix+00ah)		;01c4
	or a			;01c7
	ret z			;01c8
	ex de,hl		;01c9
	ld e,(ix+00eh)		;01ca
	ld d,(ix+00fh)		;01cd
l01d0h:
	ldi			;01d0
	ex de,hl		;01d2
	ld bc,l001eh+1		;01d3
	add hl,bc		;01d6
	ex de,hl		;01d7
	dec a			;01d8
	jr nz,l01d0h		;01d9
	ex de,hl		;01db
	ret			;01dc
	ld a,(ix+00ah)		;01dd
	or a			;01e0
	ret z			;01e1
	ld c,a			;01e2
	ld b,000h		;01e3
	ld l,(ix+00eh)		;01e5
	ld h,(ix+00fh)		;01e8
	ld (0f000h),hl		;01eb
	ex de,hl		;01ee
	ldir			;01ef
	ex de,hl		;01f1
	bit 0,(ix+006h)		;01f2
	ret z			;01f6
	ld hl,(0f000h)		;01f7
	ld bc,l001eh+2		;01fa
	add hl,bc		;01fd
	ld c,(ix+00ah)		;01fe
	ex de,hl		;0201
l0202h:
	ldir			;0202
	ex de,hl		;0204
	ret			;0205
	ld ix,0e470h		;0206
	ld b,009h		;020a
l020ch:
	push bc			;020c
	call 0a219h		;020d
l0210h:
	ld bc,l0010h		;0210
	add ix,bc		;0213
	pop bc			;0215
	djnz l020ch		;0216
	ret			;0218
	ld a,(ix+000h)		;0219
	dec a			;021c
	ret m			;021d
	call 04084h		;021e
	ccf			;0221
	and d			;0222
	ccf			;0223
	and d			;0224
	ld e,c			;0225
	and c			;0226
	ld e,c			;0227
	and c			;0228
	ld e,c			;0229
	and c			;022a
	ld e,c			;022b
	and c			;022c
	ld c,d			;022d
	and d			;022e
	ld c,d			;022f
	and d			;0230
	ld e,(hl)		;0231
	and d			;0232
	ld c,d			;0233
	and d			;0234
	ld c,d			;0235
	and d			;0236
	ld c,d			;0237
	and d			;0238
	ld c,d			;0239
	and d			;023a
	ld e,c			;023b
	and c			;023c
	ld (hl),l		;023d
	and d			;023e
	ld l,(ix+00eh)		;023f
	ld h,(ix+00fh)		;0242
	ld a,(ix+006h)		;0245
	ld (hl),a		;0248
	ret			;0249
	ld a,(ix+00ah)		;024a
	or a			;024d
	ret z			;024e
	ld b,a			;024f
	ld l,(ix+00eh)		;0250
	ld h,(ix+00fh)		;0253
	ld a,(ix+006h)		;0256
l0259h:
	ld (hl),a		;0259
	inc l			;025a
	djnz l0259h		;025b
	ret			;025d
	ld a,(ix+00ah)		;025e
	or a			;0261
	ret z			;0262
	ld b,a			;0263
	ld l,(ix+00eh)		;0264
	ld h,(ix+00fh)		;0267
	ld a,(ix+006h)		;026a
	ld de,l001eh+2		;026d
l0270h:
	ld (hl),a		;0270
	add hl,de		;0271
	djnz l0270h		;0272
	ret			;0274
	ld a,(ix+00ah)		;0275
	or a			;0278
	ret z			;0279
	ld b,a			;027a
	ld l,(ix+00eh)		;027b
	ld h,(ix+00fh)		;027e
	ld a,(ix+006h)		;0281
	add a,0f3h		;0284
l0286h:
	ld (hl),a		;0286
	inc l			;0287
	djnz l0286h		;0288
	bit 0,(ix+006h)		;028a
	ret z			;028e
	ld l,(ix+00eh)		;028f
	ld h,(ix+00fh)		;0292
	ld bc,l001eh+2		;0295
	add hl,bc		;0298
	ld b,(ix+00ah)		;0299
	inc a			;029c
l029dh:
	ld (hl),a		;029d
	inc l			;029e
	djnz l029dh		;029f
	ret			;02a1
	ld hl,0e3abh		;02a2
	ld a,(hl)		;02a5
	dec a			;02a6
	jr z,l02e7h		;02a7
	dec a			;02a9
	jr z,l0317h		;02aa
	dec a			;02ac
	jp z,0a349h		;02ad
	xor a			;02b0
	ld (0e3aeh),a		;02b1
	inc l			;02b4
	ld (hl),a		;02b5
	inc l			;02b6
	ld (hl),0f0h		;02b7
l02b9h:
	ld a,(0e3ach)		;02b9
	or a			;02bc
	jr nz,l02c1h		;02bd
l02bfh:
	ld a,01fh		;02bf
l02c1h:
	ld de,l1000h		;02c1
	call 0a357h		;02c4
	ld de,l0800h		;02c7
	call 0a354h		;02ca
	ld de,l0000h		;02cd
	call 0a354h		;02d0
	ld hl,0e3ach		;02d3
	ld a,(hl)		;02d6
	add a,040h		;02d7
	ld (hl),a		;02d9
	jr nz,l02b9h		;02da
	dec l			;02dc
	inc (hl)		;02dd
	inc l			;02de
	inc l			;02df
	ld (hl),0feh		;02e0
	ld a,038h		;02e2
	jp 04ae4h		;02e4
l02e7h:
	ld a,(0e3ach)		;02e7
	or a			;02ea
	jr nz,l02efh		;02eb
	ld a,01fh		;02ed
l02efh:
	ld de,03000h		;02ef
	call 0a357h		;02f2
	ld de,02800h		;02f5
	call 0a354h		;02f8
	ld de,02000h		;02fb
	call 0a354h		;02fe
	ld hl,0e3ach		;0301
	ld a,(hl)		;0304
	add a,040h		;0305
	ld (hl),a		;0307
	ret nz			;0308
	inc l			;0309
	ld a,(hl)		;030a
	and a			;030b
	jr z,l0311h		;030c
	sla (hl)		;030e
	ret			;0310
l0311h:
	ld a,002h		;0311
	ld (0e3abh),a		;0313
	ret			;0316
l0317h:
	ld hl,0ed00h		;0317
	ld de,0ed01h		;031a
	ld bc,l02bfh		;031d
	ld (hl),000h		;0320
	ldir			;0322
	ld hl,0e600h		;0324
	ld de,0e601h		;0327
	ld bc,002ffh		;032a
	ld (hl),000h		;032d
	ldir			;032f
	ld hl,0e350h		;0331
	ld de,0e351h		;0334
	ld bc,l0006h		;0337
	ld (hl),000h		;033a
	ldir			;033c
	ld a,03ch		;033e
	ld (0e349h),a		;0340
	ld a,003h		;0343
	ld (0e3abh),a		;0345
	ret			;0348
	ld hl,0e349h		;0349
	dec (hl)		;034c
	ret nz			;034d
	ld a,001h		;034e
	ld (0e3aeh),a		;0350
	ret			;0353
	ld a,(0e3ach)		;0354
	ld bc,l0108h		;0357
	cp 01fh			;035a
	jr z,l0368h		;035c
	ld bc,l0038h		;035e
	cp 0c0h			;0361
	jr nc,l0368h		;0363
	ld bc,00200h		;0365
l0368h:
	ld l,a			;0368
	ld h,000h		;0369
	add hl,hl		;036b
	add hl,hl		;036c
	add hl,hl		;036d
	add hl,de		;036e
	push hl			;036f
	ld de,0e600h		;0370
	push bc			;0373
	call sub_0059h		;0374
	pop bc			;0377
	push bc			;0378
	ld hl,0e600h		;0379
	ld a,(0e3adh)		;037c
	ld e,a			;037f
	call 0a38bh		;0380
	pop bc			;0383
	pop hl			;0384
	ld de,0e600h		;0385
	jp 04a33h		;0388
	ld a,(0e3abh)		;038b
	and a			;038e
	jr nz,l039bh		;038f
l0391h:
	ld a,(hl)		;0391
	and e			;0392
	ld (hl),a		;0393
	inc hl			;0394
	dec bc			;0395
	ld a,b			;0396
	or c			;0397
	jr nz,l0391h		;0398
	ret			;039a
l039bh:
	ld a,(hl)		;039b
	and e			;039c
	ld (hl),a		;039d
	inc hl			;039e
	rrc e			;039f
	rrc e			;03a1
	rrc e			;03a3
	dec bc			;03a5
	ld a,b			;03a6
	or c			;03a7
	jr nz,l039bh		;03a8
	ret			;03aa
	ld (ix+00dh),0ffh	;03ab
	ld (ix+002h),001h	;03af
	ld (ix+00ch),000h	;03b3
	bit 1,(ix+00bh)		;03b7
	ld a,00bh		;03bb
	jr z,l03c1h		;03bd
	ld a,00eh		;03bf
l03c1h:
	ld (ix+001h),a		;03c1
	ret			;03c4
	ld a,(ix+006h)		;03c5
	cp 0c1h			;03c8
	ret nc			;03ca
	ld a,(0e1c3h)		;03cb
	and 007h		;03ce
	ld a,011h		;03d0
	call z,04ae4h		;03d2
	dec (ix+002h)		;03d5
	ret nz			;03d8
	ld (ix+002h),007h	;03d9
	inc (ix+00ch)		;03dd
	dec (ix+001h)		;03e0
	jr nz,l03e9h		;03e3
	ld (ix+000h),000h	;03e5
l03e9h:
	bit 0,(ix+00bh)		;03e9
	jr z,l040ch		;03ed
	ld b,008h		;03ef
	call 0a42ah		;03f1
	ret c			;03f4
	ld hl,0a48dh		;03f5
	exx			;03f8
	ld b,(ix+00ch)		;03f9
l03fch:
	exx			;03fc
	ld bc,00004h		;03fd
	ldir			;0400
	ld bc,0ffdch		;0402
	ex de,hl		;0405
	add hl,bc		;0406
	ex de,hl		;0407
	exx			;0408
	djnz l03fch		;0409
	ret			;040b
l040ch:
	ld b,0f8h		;040c
	call 0a42ah		;040e
	ret c			;0411
	ld hl,0a44dh		;0412
	exx			;0415
	ld b,(ix+00ch)		;0416
l0419h:
	exx			;0419
	ld bc,00004h		;041a
	ldir			;041d
	ld a,01ch		;041f
	add a,e			;0421
	ld e,a			;0422
	jr nc,l0426h		;0423
	inc d			;0425
l0426h:
	exx			;0426
	djnz l0419h		;0427
	ret			;0429
	ld a,(ix+004h)		;042a
	ld l,a			;042d
	add a,b			;042e
	ld (ix+004h),a		;042f
	ld h,(ix+006h)		;0432
	ld a,(0e320h)		;0435
	or a			;0438
	jr z,l0441h		;0439
	ld a,h			;043b
	sub 008h		;043c
	jr z,l0447h		;043e
	ld h,a			;0440
l0441h:
	call 05c92h		;0441
	ex de,hl		;0444
	xor a			;0445
	ret			;0446
l0447h:
	ld (ix+000h),000h	;0447
	scf			;044b
	ret			;044c
	or h			;044d
	or l			;044e
	adc a,b			;044f
	adc a,c			;0450
	sub e			;0451
	sub a			;0452
	sbc a,d			;0453
	add a,a			;0454
	and (hl)		;0455
	xor b			;0456
	xor e			;0457
	and a			;0458
	or (hl)			;0459
	xor l			;045a
	xor (hl)		;045b
	cp b			;045c
	cp b			;045d
	xor e			;045e
	xor h			;045f
	xor d			;0460
	and a			;0461
	xor b			;0462
	xor c			;0463
	xor d			;0464
	sub h			;0465
	sub l			;0466
	sub (hl)		;0467
	or h			;0468
	or l			;0469
	sbc a,d			;046a
	sub e			;046b
	sbc a,d			;046c
	or e			;046d
	sbc a,c			;046e
	sbc a,d			;046f
	sub (hl)		;0470
	sub e			;0471
	sub h			;0472
	sub a			;0473
	or h			;0474
	sub e			;0475
	add a,l			;0476
	add a,(hl)		;0477
	or l			;0478
	or l			;0479
	sub l			;047a
	sbc a,c			;047b
	sbc a,d			;047c
	or (hl)			;047d
	xor l			;047e
	xor (hl)		;047f
	sub (hl)		;0480
	sub h			;0481
	sbc a,d			;0482
	adc a,d			;0483
	or h			;0484
	sub a			;0485
	sbc a,b			;0486
	sbc a,c			;0487
	sbc a,d			;0488
	ld a,l			;0489
	ld a,d			;048a
	ld a,e			;048b
	ld a,h			;048c
	or (hl)			;048d
	cp b			;048e
	xor b			;048f
	or a			;0490
	or (hl)			;0491
	and (hl)		;0492
	sbc a,d			;0493
	or a			;0494
	cp b			;0495
	xor l			;0496
	and (hl)		;0497
	xor d			;0498
	or (hl)			;0499
	xor h			;049a
	xor c			;049b
	or a			;049c
	xor l			;049d
	xor (hl)		;049e
	and e			;049f
	and a			;04a0
	and a			;04a1
	xor b			;04a2
	xor c			;04a3
	xor d			;04a4
	cp b			;04a5
	xor e			;04a6
	xor h			;04a7
	xor d			;04a8
	or (hl)			;04a9
	xor l			;04aa
	xor (hl)		;04ab
	cp b			;04ac
	and (hl)		;04ad
	xor b			;04ae
	xor e			;04af
	and a			;04b0
	sub e			;04b1
	sub h			;04b2
	sub a			;04b3
	or h			;04b4
	or e			;04b5
	sbc a,c			;04b6
	sbc a,d			;04b7
	sub (hl)		;04b8
	or l			;04b9
	sbc a,d			;04ba
	sub e			;04bb
	sbc a,d			;04bc
	sub h			;04bd
	sub l			;04be
	sub (hl)		;04bf
	or h			;04c0
	or (hl)			;04c1
	cp b			;04c2
	and h			;04c3
	and l			;04c4
	and a			;04c5
	or (hl)			;04c6
	xor b			;04c7
	xor c			;04c8
	and (hl)		;04c9
	and h			;04ca
	xor h			;04cb
	xor l			;04cc
	sbc a,h			;04cd
	sbc a,l			;04ce
	sbc a,(hl)		;04cf
	sbc a,a			;04d0
	ld (ix+00dh),0ffh	;04d1
	ld (ix+00ch),00bh	;04d5
	ld (ix+00eh),000h	;04d9
	ld (ix+00fh),006h	;04dd
	ret			;04e1
	ld a,(ix+001h)		;04e2
	dec a			;04e5
	jr z,l04f2h		;04e6
	ld a,(ix+006h)		;04e8
	cp 080h			;04eb
	ret nc			;04ed
	inc (ix+001h)		;04ee
	ret			;04f1
l04f2h:
	dec (ix+00fh)		;04f2
	ret nz			;04f5
	ld (ix+00fh),006h	;04f6
	call 0a51ch		;04fa
	call 0a50ch		;04fd
l0500h:
	inc (ix+00eh)		;0500
	dec (ix+00ch)		;0503
	ret nz			;0506
	ld (ix+000h),000h	;0507
	ret			;050b
	ld a,014h		;050c
	sub (ix+00eh)		;050e
	call 0a54eh		;0511
	ld a,015h		;0514
	sub (ix+00eh)		;0516
	add a,a			;0519
	jr l0526h		;051a
	ld a,(ix+00eh)		;051c
	call 0a54eh		;051f
	ld a,(ix+00eh)		;0522
	add a,a			;0525
l0526h:
	call 0407ah		;0526
	ld e,(hl)		;0529
	inc hl			;052a
	ld d,(hl)		;052b
	ld hl,(0f000h)		;052c
	ex de,hl		;052f
	ld bc,l1000h		;0530
l0533h:
	add hl,hl		;0533
	jr nc,l0544h		;0534
	ld a,r			;0536
	xor l			;0538
	and 00fh		;0539
	ld a,067h		;053b
	jr z,l0541h		;053d
	ld a,069h		;053f
l0541h:
	ld (de),a		;0541
	ld c,001h		;0542
l0544h:
	inc de			;0544
	djnz l0533h		;0545
	dec c			;0547
	ret nz			;0548
	ld a,011h		;0549
	jp 04ae4h		;054b
	add a,a			;054e
	add a,a			;054f
	add a,a			;0550
	ld l,a			;0551
	ld h,(ix+006h)		;0552
	call 05c92h		;0555
	ld (0f000h),hl		;0558
	ld a,(ix+00bh)		;055b
	ld de,0a566h		;055e
	call 04b60h		;0561
	ex de,hl		;0564
	ret			;0565
	ld l,h			;0566
	and l			;0567
	sbc a,b			;0568
	and l			;0569
	call nz,l00a4h+1	;056a
	nop			;056d
	ld b,b			;056e
	nop			;056f
	ret m			;0570
	ld a,l			;0571
	call m,0feffh		;0572
	ld a,a			;0575
	ret m			;0576
	ld a,a			;0577
	ret p			;0578
	rst 38h			;0579
	call m,0fe7fh		;057a
	ccf			;057d
	call m,07c3fh		;057e
	jr c,l05a1h		;0581
	ld a,b			;0583
	jr c,$+122		;0584
	inc e			;0586
	ret p			;0587
	inc a			;0588
	ld a,b			;0589
	inc a			;058a
	ld a,0fch		;058b
	ld a,a			;058d
	ret m			;058e
	rst 38h			;058f
	ret nc			;0590
	rst 38h			;0591
	nop			;0592
	ret po			;0593
	nop			;0594
	ld b,b			;0595
	nop			;0596
	nop			;0597
	nop			;0598
	nop			;0599
	nop			;059a
	nop			;059b
	nop			;059c
	add a,b			;059d
	nop			;059e
	ret po			;059f
	ret po			;05a0
l05a1h:
	rst 38h			;05a1
	call p,07c7fh		;05a2
	ld (hl),b		;05a5
	ld a,038h		;05a6
	inc e			;05a8
	ret m			;05a9
	ld a,0f8h		;05aa
	ld a,h			;05ac
	ld a,h			;05ad
	call m,0fcfeh		;05ae
	ld a,a			;05b1
	ret m			;05b2
	ccf			;05b3
	call m,0fc7fh		;05b4
	ld a,a			;05b7
	ret m			;05b8
	ld a,a			;05b9
	cp 0ffh			;05ba
	nop			;05bc
	ret p			;05bd
	nop			;05be
	nop			;05bf
	nop			;05c0
	nop			;05c1
	nop			;05c2
	nop			;05c3
	nop			;05c4
	nop			;05c5
	nop			;05c6
	nop			;05c7
	nop			;05c8
	nop			;05c9
	nop			;05ca
	nop			;05cb
	inc a			;05cc
	nop			;05cd
	cp 001h			;05ce
	call m,03e0fh		;05d0
	rra			;05d3
	ld c,03eh		;05d4
	rlca			;05d6
	ld a,a			;05d7
	ld c,07ch		;05d8
	sbc a,a			;05da
	pop af			;05db
	cp a			;05dc
	ld sp,hl		;05dd
	cp (hl)			;05de
	ld a,(hl)		;05df
	ccf			;05e0
	ld a,a			;05e1
	rst 8			;05e2
	rra			;05e3
	cp 003h			;05e4
	call m,l0000h		;05e6
	nop			;05e9
	nop			;05ea
	nop			;05eb
	nop			;05ec
	nop			;05ed
	nop			;05ee
	nop			;05ef
	ld a,(ix+006h)		;05f0
	sub 020h		;05f3
	ld (ix+029h),a		;05f5
	ld a,0e0h		;05f8
	ld (ix+034h),a		;05fa
	ld (ix+038h),a		;05fd
	ld (ix+03ch),a		;0600
	ld (ix+024h),008h	;0603
	xor a			;0607
	ld (0e39ah),a		;0608
	inc a			;060b
	ld (ix+010h),a		;060c
	ld (ix+025h),a		;060f
	inc a			;0612
	ld (ix+02bh),a		;0613
	ld (ix+02ch),a		;0616
	inc (ix+02bh)		;0619
	ld a,(ix+02bh)		;061c
	and 00fh		;061f
	ld hl,0a634h		;0621
	call 05ca6h		;0624
	ld (ix+031h),a		;0627
	ld (ix+037h),a		;062a
	ld (ix+03bh),a		;062d
	ld (ix+03fh),a		;0630
	ret			;0633
	ex af,af'		;0634
	ld a,(bc)		;0635
	dec b			;0636
	inc bc			;0637
	ld (bc),a		;0638
	rlca			;0639
	dec b			;063a
	rrca			;063b
	dec c			;063c
	dec bc			;063d
	dec c			;063e
	dec bc			;063f
	dec b			;0640
	add hl,bc		;0641
	ld a,(bc)		;0642
	dec c			;0643
	call 0a619h		;0644
	dec (ix+02ch)		;0647
	ret nz			;064a
	ld (ix+02ch),002h	;064b
	ld a,(ix+001h)		;064f
	or a			;0652
	jr nz,l0658h		;0653
	dec (ix+02ch)		;0655
l0658h:
	call 04084h		;0658
	ld h,e			;065b
	and (hl)		;065c
	sbc a,e			;065d
	and (hl)		;065e
	xor d			;065f
	and (hl)		;0660
	pop bc			;0661
	and (hl)		;0662
	dec (ix+024h)		;0663
	jr z,l067ch		;0666
	bit 0,(ix+024h)		;0668
	ret z			;066c
	ld a,(ix+030h)		;066d
	add a,004h		;0670
	cp 0e4h			;0672
	jr nz,l0678h		;0674
	ld a,0d0h		;0676
l0678h:
	ld (ix+030h),a		;0678
	ret			;067b
l067ch:
	ld a,(ix+006h)		;067c
	sub 010h		;067f
	ld (ix+006h),a		;0681
	ld a,(ix+004h)		;0684
	ld (ix+02ah),a		;0687
	call 0a6fah		;068a
	ld b,001h		;068d
	call 0a744h		;068f
	ld a,017h		;0692
	call 04ae4h		;0694
l0697h:
	inc (ix+001h)		;0697
	ret			;069a
	call 0a6b4h		;069b
	ld a,(ix+025h)		;069e
	inc a			;06a1
	cp 004h			;06a2
	jr z,l0697h		;06a4
	ld (ix+025h),a		;06a6
	ret			;06a9
	ld a,(ix+03dh)		;06aa
	cp 009h			;06ad
	jr c,l0697h		;06af
	call 0a6cfh		;06b1
	call 0a766h		;06b4
	push af			;06b7
	call 0a78bh		;06b8
	pop af			;06bb
	ld b,001h		;06bc
	jp 0a744h		;06be
	call 0a6cfh		;06c1
	dec (ix+025h)		;06c4
	jp m,06514h		;06c7
	ld (ix+03ch),0e0h	;06ca
	ret			;06ce
	ld a,(ix+034h)		;06cf
	ld (ix+004h),a		;06d2
	ld a,(ix+035h)		;06d5
	ld (ix+006h),a		;06d8
	ld a,(ix+036h)		;06db
	ld (ix+030h),a		;06de
	ld a,(ix+037h)		;06e1
	ld (ix+031h),a		;06e4
	push ix			;06e7
	pop de			;06e9
	ld a,034h		;06ea
	call 0407fh		;06ec
	ld h,d			;06ef
	ld a,e			;06f0
	add a,004h		;06f1
	ld l,a			;06f3
	ld bc,l0007h+1		;06f4
	ldir			;06f7
	ret			;06f9
	ld hl,0e39ah		;06fa
	inc (hl)		;06fd
	ld a,(hl)		;06fe
l06ffh:
	and 003h		;06ff
	jr z,l0733h		;0701
	ld bc,l0500h		;0703
	ld hl,0a73ah		;0706
	ld a,(0e404h)		;0709
	sub (ix+004h)		;070c
	jr c,l0716h		;070f
	ld de,00005h		;0711
	ld c,e			;0714
	add hl,de		;0715
l0716h:
	cp (hl)			;0716
	jr c,l071eh		;0717
	inc c			;0719
	inc hl			;071a
	djnz l0716h		;071b
	dec c			;071d
l071eh:
	ld a,c			;071e
l071fh:
	add a,a			;071f
	add a,a			;0720
	add a,a			;0721
	ld hl,0a7bfh		;0722
	call 05ca6h		;0725
	inc hl			;0728
	ld (ix+026h),h		;0729
	ld (ix+027h),l		;072c
	ld (ix+030h),a		;072f
	ret			;0732
l0733h:
	call 0637bh		;0733
	and 007h		;0736
	jr l071fh		;0738
	in a,(0e7h)		;073a
	call pe,0fff6h		;073c
	inc b			;073f
	ex af,af'		;0740
	dec c			;0741
	jr $+42			;0742
	sub 0d0h		;0744
	rra			;0746
	rra			;0747
	and 03fh		;0748
	djnz l0756h		;074a
	ld hl,0a75ch		;074c
	call 05ca6h		;074f
	ld (ix+028h),a		;0752
	ret			;0755
l0756h:
	ld hl,0a761h		;0756
	jp 05ca6h		;0759
	ld bc,l0a06h		;075c
	ld a,(bc)		;075f
	ld c,006h		;0760
	rlca			;0762
	nop			;0763
	rrca			;0764
	inc b			;0765
	ld a,(ix+025h)		;0766
	dec a			;0769
	ld hl,0a788h		;076a
	call 05ca6h		;076d
	inc a			;0770
	inc a			;0771
	push ix			;0772
	pop de			;0774
	call 0407fh		;0775
	ld h,(ix+026h)		;0778
	ld l,(ix+027h)		;077b
	ld a,(hl)		;077e
	ldi			;077f
	ld (ix+026h),h		;0781
	ld (ix+027h),l		;0784
	ret			;0787
	inc (hl)		;0788
	jr c,l07c7h		;0789
	ld b,000h		;078b
	call 0a744h		;078d
	ld b,a			;0790
	ld a,(ix+02ah)		;0791
	add a,(ix+028h)		;0794
	sub b			;0797
	cp 0d0h			;0798
	jr c,l079eh		;079a
	ld a,0e0h		;079c
l079eh:
	ld (ix+02ah),a		;079e
	ld c,a			;07a1
	push ix			;07a2
	pop hl			;07a4
	ld de,0a788h		;07a5
	ld a,(ix+025h)		;07a8
	dec a			;07ab
	call 0407fh		;07ac
	ld a,(de)		;07af
	call 0407ah		;07b0
	ld (hl),c		;07b3
	inc l			;07b4
	ld a,(ix+029h)		;07b5
	ld (hl),a		;07b8
	add a,0f0h		;07b9
	ld (ix+029h),a		;07bb
	ret			;07be
	call c,0dcd0h		;07bf
	ret nc			;07c2
	ret nc			;07c3
	call c,0dcd0h		;07c4
l07c7h:
	call c,0dcd0h		;07c7
	call nc,0dcd0h		;07ca
	call c,0dcd0h		;07cd
	call nc,0d0dch		;07d0
	call c,0d0dch		;07d3
	call nc,0dcd0h		;07d6
	ret nc			;07d9
	ret c			;07da
	call c,0d0d4h		;07db
	call c,0dcd0h		;07de
	ret c			;07e1
	call c,0d0e0h		;07e2
	ret c			;07e5
	call c,0e0dch		;07e6
	call nc,0d0dch		;07e9
	ret c			;07ec
	ret po			;07ed
	ret nc			;07ee
	ret c			;07ef
	call c,0e0d0h		;07f0
	ret po			;07f3
	ret nc			;07f4
	ret c			;07f5
	call c,0d8d0h		;07f6
	ret po			;07f9
	call nc,0d8dch		;07fa
	ret po			;07fd
	ret nc			;07fe
	ret po			;07ff
l0800h:
	ret nc			;0800
	call c,0e0d8h		;0801
	ret c			;0804
	ret po			;0805
	ret c			;0806
	ret c			;0807
	ret po			;0808
l0809h:
	ret po			;0809
	ret c			;080a
	call nc,0e0d8h		;080b
	ret c			;080e
	ret c			;080f
	call c,036ddh		;0810
	dec c			;0813
	rst 38h			;0814
	ld (ix+002h),001h	;0815
	ld (ix+00ch),000h	;0819
	ld a,(ix+00bh)		;081d
	ld hl,0a82ah		;0820
	call 05ca6h		;0823
	ld (ix+00bh),a		;0826
	ret			;0829
	ld (hl),c		;082a
	sub c			;082b
	or c			;082c
	pop de			;082d
	ld a,(ix+006h)		;082e
	cp (ix+00bh)		;0831
	ret nc			;0834
	dec (ix+002h)		;0835
	ret nz			;0838
	ld (ix+002h),018h	;0839
	inc (ix+00ch)		;083d
	ld a,(ix+00ch)		;0840
	cp 004h			;0843
	jr c,l084bh		;0845
	ld (ix+000h),000h	;0847
l084bh:
	add a,a			;084b
	add a,a			;084c
	add a,a			;084d
	add a,a			;084e
	ld de,0a865h		;084f
	call 0407fh		;0852
	ld l,(ix+004h)		;0855
	ld h,(ix+006h)		;0858
	call 05c92h		;085b
	ex de,hl		;085e
	exx			;085f
	ld b,004h		;0860
l0862h:
	exx			;0862
	ld bc,00004h		;0863
	ldir			;0866
	ld a,01ch		;0868
	call 0407fh		;086a
	exx			;086d
l086eh:
	djnz l0862h		;086e
	ld a,025h		;0870
	jp 04ae4h		;0872
	push bc			;0875
	push bc			;0876
	push bc			;0877
	push bc			;0878
	nop			;0879
	nop			;087a
	nop			;087b
	nop			;087c
	nop			;087d
	nop			;087e
	nop			;087f
l0880h:
	nop			;0880
	add a,0c6h		;0881
	add a,0c6h		;0883
	call nz,0c4c4h		;0885
	call nz,l0000h		;0888
	nop			;088b
	nop			;088c
	nop			;088d
	nop			;088e
	nop			;088f
	nop			;0890
	call nz,0c4c4h		;0891
	call nz,0c4c4h		;0894
	call nz,0c5c4h		;0897
	push bc			;089a
	push bc			;089b
	push bc			;089c
	add a,0c6h		;089d
	add a,0c6h		;089f
	call nz,0c4c4h		;08a1
	call nz,0c4c4h		;08a4
	call nz,0c4c4h		;08a7
	call nz,0c4c4h		;08aa
	call nz,0c4c4h		;08ad
	call nz,0c4c4h		;08b0
	call nz,0ddc4h		;08b3
	ld hl,0ea00h		;08b6
	ld a,(0e341h)		;08b9
	call 04084h		;08bc
	call 00aa8h		;08bf
	xor c			;08c2
	jr z,l086eh		;08c3
	ld sp,05ba9h		;08c5
	xor c			;08c8
	adc a,(hl)		;08c9
	xor c			;08ca
	sbc a,a			;08cb
	xor c			;08cc
	call 0a8f4h		;08cd
	ret nz			;08d0
	ld a,011h		;08d1
	ld hl,0a900h		;08d3
	call 0a8e1h		;08d6
	call 0aa20h		;08d9
l08dch:
	ld hl,0e341h		;08dc
	inc (hl)		;08df
	ret			;08e0
	ld de,0ea00h		;08e1
	ld bc,0000ah		;08e4
	ldir			;08e7
	ld (0ea12h),a		;08e9
	ld a,0e0h		;08ec
	ld (0ea13h),a		;08ee
	jp 04b20h		;08f1
	call 04b70h		;08f4
	ret nz			;08f7
	ld hl,0e343h		;08f8
	ld a,(hl)		;08fb
	and a			;08fc
	ret z			;08fd
	dec (hl)		;08fe
	ret			;08ff
l0900h:
	ld bc,l0800h		;0900
	ret nz			;0903
	nop			;0904
	sub b			;0905
l0906h:
	nop			;0906
	djnz l0909h		;0907
l0909h:
	inc d			;0909
	ld c,040h		;090a
	call 0a915h		;090c
	call c,0a8dch		;090f
	jp 0aa20h		;0912
	and a			;0915
	dec (ix+002h)		;0916
	ret nz			;0919
	ld (ix+002h),008h	;091a
	ld a,(0ea03h)		;091e
	sub 008h		;0921
	ld (0ea03h),a		;0923
	cp c			;0926
	ret			;0927
	call 0ab7bh		;0928
	ld (ix+002h),001h	;092b
	jr l08dch		;092f
	call 0aa3bh		;0931
	call 0aa20h		;0934
	ld de,l001eh+2		;0937
	ld c,010h		;093a
	call 0a9adh		;093c
	ld a,(0e345h)		;093f
	and a			;0942
	ret z			;0943
	ld a,015h		;0944
	ld (0ea09h),a		;0946
	ld hl,l012ch		;0949
	ld a,(0e201h)		;094c
	cp 007h			;094f
	jr nz,l0956h		;0951
	ld hl,l0000h+1		;0953
l0956h:
	ld (0e343h),hl		;0956
	jr l08dch		;0959
	ld a,(0e201h)		;095b
	cp 007h			;095e
	call nz,092a4h		;0960
	ld a,(0e22bh)		;0963
	and a			;0966
	jr nz,l0979h		;0967
	ld hl,(0e343h)		;0969
	dec hl			;096c
	ld (0e343h),hl		;096d
	ld a,h			;0970
	or l			;0971
	ret nz			;0972
	call 0a9c8h		;0973
	jp 0a8dch		;0976
l0979h:
	ld a,01eh		;0979
	ld (0e343h),a		;097b
	ld hl,l0000h+1		;097e
	ld (0e3aah),hl		;0981
	xor a			;0984
	ld (0e400h),a		;0985
	ld hl,0e341h		;0988
	inc (hl)		;098b
	inc (hl)		;098c
	ret			;098d
	ld hl,0e343h		;098e
	dec (hl)		;0991
	ret nz			;0992
l0993h:
	xor a			;0993
	ld (0e340h),a		;0994
	ld (0e34fh),a		;0997
	inc a			;099a
	ld (0e342h),a		;099b
	ret			;099e
	call 0a2a2h		;099f
	ld a,(0e3aeh)		;09a2
	and a			;09a5
	ret z			;09a6
	xor a			;09a7
	ld (0e3aah),a		;09a8
	jr l0993h		;09ab
	ld l,(ix+003h)		;09ad
	ld h,(ix+004h)		;09b0
	add hl,de		;09b3
	ld a,h			;09b4
	and a			;09b5
	jr nz,l09c3h		;09b6
	ld (ix+013h),l		;09b8
	ld a,(ix+005h)		;09bb
	add a,c			;09be
	ld (ix+014h),a		;09bf
	ret			;09c2
l09c3h:
	ld (ix+013h),0e0h	;09c3
	ret			;09c7
	ld a,(ix+000h)		;09c8
	ld b,a			;09cb
	xor a			;09cc
	ld (ix+000h),a		;09cd
	ld a,05ah		;09d0
	ld (0e343h),a		;09d2
	ld l,(ix+00eh)		;09d5
	ld h,(ix+00fh)		;09d8
	ld a,h			;09db
	and a			;09dc
	ret nz			;09dd
	ld e,l			;09de
	push bc			;09df
	ld a,(ix+010h)		;09e0
	ld d,a			;09e3
	call 08ba1h		;09e4
	pop af			;09e7
	cp 005h			;09e8
	ld a,009h		;09ea
	jr z,l09f0h		;09ec
	ld a,03bh		;09ee
l09f0h:
	jp 04ae4h		;09f0
	ld l,(ix+003h)		;09f3
	ld h,(ix+004h)		;09f6
	ld d,000h		;09f9
	ld e,a			;09fb
	add hl,de		;09fc
	ld (ix+00ah),l		;09fd
	ld (ix+00bh),h		;0a00
	ld (ix+00eh),l		;0a03
l0a06h:
	ld (ix+00fh),h		;0a06
	ld l,(ix+005h)		;0a09
	ld h,(ix+006h)		;0a0c
	ld e,b			;0a0f
	add hl,de		;0a10
	ld (ix+00ch),l		;0a11
	ld (ix+00dh),h		;0a14
	ld e,c			;0a17
	add hl,de		;0a18
	ld (ix+010h),l		;0a19
	ld (ix+011h),h		;0a1c
	ret			;0a1f
	ld a,020h		;0a20
	ld bc,01028h		;0a22
	call 0a9f3h		;0a25
	ld bc,00200h		;0a28
	ld a,(ix+012h)		;0a2b
l0a2eh:
	sub b			;0a2e
	jr c,l0a37h		;0a2f
	jp m,0aa37h		;0a31
	inc c			;0a34
	jr l0a2eh		;0a35
l0a37h:
	ld (ix+008h),c		;0a37
	ret			;0a3a
	ld a,(0e20ah)		;0a3b
	and a			;0a3e
	jr z,l0a44h		;0a3f
	call 0aa59h		;0a41
l0a44h:
	ld a,(ix+001h)		;0a44
	dec a			;0a47
	jr z,l0a78h		;0a48
	dec a			;0a4a
	jp z,0aa68h		;0a4b
	dec (ix+002h)		;0a4e
	ret nz			;0a51
	call 0aa8ah		;0a52
	inc (ix+001h)		;0a55
	ret			;0a58
	call 0aa68h		;0a59
	ret nz			;0a5c
	ld a,(0e228h)		;0a5d
	neg			;0a60
	add a,038h		;0a62
	ld (ix+018h),a		;0a64
	ret			;0a67
	dec (ix+018h)		;0a68
	ret nz			;0a6b
	call 0ab7bh		;0a6c
l0a6fh:
	ld (ix+002h),008h	;0a6f
	xor a			;0a73
	ld (ix+001h),a		;0a74
	ret			;0a77
l0a78h:
	call 0aafdh		;0a78
	ret nc			;0a7b
	ld a,(0e20ah)		;0a7c
	and a			;0a7f
	jr nz,l0a6fh		;0a80
	ld (ix+018h),004h	;0a82
	inc (ix+001h)		;0a86
	ret			;0a89
	ld a,r			;0a8a
	and 00fh		;0a8c
	cp 00ch			;0a8e
	jr nc,l0aech		;0a90
	ld a,(ix+004h)		;0a92
	and a			;0a95
	jr z,l0aa0h		;0a96
	ld a,002h		;0a98
	jp m,0aacbh		;0a9a
	dec a			;0a9d
	jr l0acbh		;0a9e
l0aa0h:
	ld a,(0e406h)		;0aa0
	cp 080h			;0aa3
	jr c,l0ab0h		;0aa5
	ld a,(ix+005h)		;0aa7
	cp 060h			;0aaa
	ld a,004h		;0aac
	jr c,l0acbh		;0aae
l0ab0h:
	ld a,(0e340h)		;0ab0
	dec a			;0ab3
	ld hl,0aaf9h		;0ab4
	call 0407ah		;0ab7
	ld c,(hl)		;0aba
	ld a,(ix+003h)		;0abb
	add a,c			;0abe
	jr c,l0ac9h		;0abf
	ld hl,0e404h		;0ac1
	cp (hl)			;0ac4
	ld a,002h		;0ac5
	jr c,l0acbh		;0ac7
l0ac9h:
	ld a,001h		;0ac9
l0acbh:
	ld (ix+015h),a		;0acb
	ld (ix+002h),0ffh	;0ace
	cp 003h			;0ad2
	ld c,008h		;0ad4
	jr c,l0adah		;0ad6
	ld c,00ah		;0ad8
l0adah:
	ld a,r			;0ada
	and 003h		;0adc
	add a,c			;0ade
	ld (ix+016h),a		;0adf
	ld a,(0e228h)		;0ae2
	add a,a			;0ae5
	add a,040h		;0ae6
	ld (ix+017h),a		;0ae8
	ret			;0aeb
l0aech:
	ld a,(0e406h)		;0aec
	cp (ix+005h)		;0aef
	ld a,003h		;0af2
	jr c,l0acbh		;0af4
	inc a			;0af6
	jr l0acbh		;0af7
	jr z,l0b2bh		;0af9
	ld b,b			;0afb
	ld b,b			;0afc
	ld a,(ix+017h)		;0afd
	add a,(ix+002h)		;0b00
	ld (ix+002h),a		;0b03
	ret nc			;0b06
	dec (ix+016h)		;0b07
	jr z,l0b79h		;0b0a
	ld (ix+002h),a		;0b0c
	ld a,(ix+015h)		;0b0f
	and a			;0b12
	ret z			;0b13
	dec a			;0b14
	jr z,l0b55h		;0b15
	dec a			;0b17
	jr z,l0b36h		;0b18
	dec a			;0b1a
	jr z,l0b2bh		;0b1b
	ld a,(ix+005h)		;0b1d
	add a,008h		;0b20
	cp 0b0h			;0b22
	jr nc,l0b79h		;0b24
l0b26h:
	ld (ix+005h),a		;0b26
	and a			;0b29
	ret			;0b2a
l0b2bh:
	ld a,(ix+005h)		;0b2b
	sub 008h		;0b2e
	cp 019h			;0b30
	jr c,l0b79h		;0b32
	jr l0b26h		;0b34
l0b36h:
	ld hl,(0ea03h)		;0b36
	ld de,l0007h+1		;0b39
	add hl,de		;0b3c
	ld a,h			;0b3d
	and a			;0b3e
	jr nz,l0b50h		;0b3f
	ld de,00080h		;0b41
	cp 002h			;0b44
	jr nz,l0b4ah		;0b46
	ld e,068h		;0b48
l0b4ah:
	ld a,(0e340h)		;0b4a
	rst 20h			;0b4d
	jr nc,l0b70h		;0b4e
l0b50h:
	ld (0ea03h),hl		;0b50
	and a			;0b53
	ret			;0b54
l0b55h:
	ld hl,(0ea03h)		;0b55
	ld de,0fff8h		;0b58
	add hl,de		;0b5b
	ld (0ea03h),hl		;0b5c
	ld a,h			;0b5f
	and a			;0b60
	ret p			;0b61
	ld a,(0e340h)		;0b62
	cp 003h			;0b65
	ld c,0f0h		;0b67
	jr nz,l0b6dh		;0b69
	ld c,0c0h		;0b6b
l0b6dh:
	ld a,l			;0b6d
	cp c			;0b6e
	ret nc			;0b6f
l0b70h:
	ld a,(ix+015h)		;0b70
	xor 003h		;0b73
	ld (ix+015h),a		;0b75
	ret			;0b78
l0b79h:
	scf			;0b79
	ret			;0b7a
	ld de,0abbah		;0b7b
	ld b,006h		;0b7e
l0b80h:
	push bc			;0b80
	push de			;0b81
	ld l,(ix+003h)		;0b82
	ld h,(ix+004h)		;0b85
	ld a,(de)		;0b88
	ld c,a			;0b89
	inc de			;0b8a
	ld a,(de)		;0b8b
	ld b,a			;0b8c
	add hl,bc		;0b8d
	ld a,h			;0b8e
	and a			;0b8f
	jr nz,l0badh		;0b90
	ld a,l			;0b92
	cp 0b0h			;0b93
	jr nc,l0badh		;0b95
	ex de,hl		;0b97
	ld a,(ix+005h)		;0b98
	inc hl			;0b9b
	add a,(hl)		;0b9c
	ld d,a			;0b9d
	cp 0e0h			;0b9e
	jr nc,l0badh		;0ba0
	inc hl			;0ba2
	ld b,(hl)		;0ba3
	and 07fh		;0ba4
	ld c,000h		;0ba6
	ld a,023h		;0ba8
	call 04d16h		;0baa
l0badh:
	pop de			;0bad
	pop bc			;0bae
	inc de			;0baf
	inc de			;0bb0
	inc de			;0bb1
	inc de			;0bb2
	djnz l0b80h		;0bb3
	ld a,016h		;0bb5
	jp 04ae4h		;0bb7
	djnz l0bbch		;0bba
l0bbch:
	ret p			;0bbc
	nop			;0bbd
	ld a,(de)		;0bbe
	nop			;0bbf
	ret m			;0bc0
	ld bc,00032h		;0bc1
	ret m			;0bc4
	ld (bc),a		;0bc5
	inc a			;0bc6
	nop			;0bc7
	ret p			;0bc8
	inc bc			;0bc9
	ex af,af'		;0bca
	nop			;0bcb
	jr nc,$+5		;0bcc
	ld c,b			;0bce
	nop			;0bcf
	jr nc,l0bd2h		;0bd0
l0bd2h:
	call 0abf4h		;0bd2
	call 05cb5h		;0bd5
	ld de,l0000h		;0bd8
	ex de,hl		;0bdb
	call 04f26h		;0bdc
	ld (ix+013h),001h	;0bdf
	ld (ix+014h),002h	;0be3
	ld (ix+010h),005h	;0be7
	ld a,(ix+019h)		;0beb
	add a,072h		;0bee
	ld (ix+032h),a		;0bf0
	ret			;0bf3
	ld a,(0e228h)		;0bf4
	ld l,a			;0bf7
	ld h,000h		;0bf8
	add hl,hl		;0bfa
	add hl,hl		;0bfb
	add hl,hl		;0bfc
	add hl,hl		;0bfd
	add hl,hl		;0bfe
	ld de,l06ffh+1		;0bff
	add hl,de		;0c02
	ld de,l0900h		;0c03
	rst 20h			;0c06
	ret c			;0c07
	ld hl,l06ffh		;0c08
	ret			;0c0b
l0c0ch:
	call 04f09h		;0c0c
	ld l,(ix+005h)		;0c0f
	ld h,(ix+006h)		;0c12
	add hl,de		;0c15
	ld a,h			;0c16
	cp 0f0h			;0c17
	ret c			;0c19
	jp 06514h		;0c1a
	ld ix,0ea00h		;0c1d
	ld a,(0e341h)		;0c21
	call 04084h		;0c24
	dec (hl)		;0c27
	xor h			;0c28
	ld d,e			;0c29
	xor h			;0c2a
	ld e,(hl)		;0c2b
	xor h			;0c2c
	ld (hl),a		;0c2d
	xor h			;0c2e
	ld e,e			;0c2f
	xor c			;0c30
	adc a,(hl)		;0c31
	xor c			;0c32
	sbc a,a			;0c33
	xor c			;0c34
	call 0a8f4h		;0c35
	ret nz			;0c38
	ld hl,0ac49h		;0c39
	ld a,022h		;0c3c
	call 0a8e1h		;0c3e
l0c41h:
	call 0ac88h		;0c41
l0c44h:
	ld hl,0e341h		;0c44
	inc (hl)		;0c47
	ret			;0c48
	ld (bc),a		;0c49
	nop			;0c4a
	ex af,af'		;0c4b
	ret nz			;0c4c
	nop			;0c4d
	add a,b			;0c4e
	nop			;0c4f
	ld de,l1409h		;0c50
	ld c,040h		;0c53
	call 0a915h		;0c55
	call c,0ac44h		;0c58
	jp 0ac88h		;0c5b
	call 0ad0fh		;0c5e
	ld (ix+002h),001h	;0c61
	ld (ix+018h),040h	;0c65
	ld (ix+01ah),020h	;0c69
	ld (ix+01bh),000h	;0c6d
	ld (ix+001h),002h	;0c71
	jr l0c44h		;0c75
	call 0ac96h		;0c77
	call 0ac88h		;0c7a
	ld de,l0028h		;0c7d
	ld c,028h		;0c80
	call 0a9adh		;0c82
	jp 0a93fh		;0c85
	ld a,028h		;0c88
	ld bc,03020h		;0c8a
	call 0a9f3h		;0c8d
	ld bc,00509h		;0c90
	jp 0aa2bh		;0c93
	call 0ace4h		;0c96
	ld a,(ix+001h)		;0c99
	call 04084h		;0c9c
	xor c			;0c9f
	xor h			;0ca0
	xor a			;0ca1
	xor h			;0ca2
	cp e			;0ca3
	xor h			;0ca4
	jp 0d0ach		;0ca5
	xor h			;0ca8
	inc (ix+001h)		;0ca9
	jp 0aa92h		;0cac
	call 0aafdh		;0caf
	ret nc			;0cb2
	dec (ix+001h)		;0cb3
	ld (ix+002h),004h	;0cb6
	ret			;0cba
	dec (ix+01ah)		;0cbb
	ret nz			;0cbe
l0cbfh:
	inc (ix+001h)		;0cbf
	ret			;0cc2
	ld a,(ix+005h)		;0cc3
	cp 008h			;0cc6
	jr z,l0cbfh		;0cc8
	add a,0f8h		;0cca
	ld (ix+005h),a		;0ccc
	ret			;0ccf
	ld a,(ix+005h)		;0cd0
	cp 080h			;0cd3
	jr z,l0cddh		;0cd5
	add a,008h		;0cd7
	ld (ix+005h),a		;0cd9
	ret			;0cdc
l0cddh:
	ld a,(ix+01bh)		;0cdd
	ld (ix+001h),a		;0ce0
	ret			;0ce3
	ld a,(ix+001h)		;0ce4
	cp 003h			;0ce7
	ret nc			;0ce9
	dec (ix+018h)		;0cea
	ret nz			;0ced
	ld a,(ix+001h)		;0cee
	ld (ix+01bh),a		;0cf1
	ld (ix+001h),002h	;0cf4
	ld (ix+01ah),020h	;0cf8
	ld a,r			;0cfc
	and 003h		;0cfe
	ld a,020h		;0d00
	jr z,l0d0ch		;0d02
	ld a,(0e228h)		;0d04
	add a,a			;0d07
	sub 040h		;0d08
	neg			;0d0a
l0d0ch:
	ld (ix+018h),a		;0d0c
	ld bc,l0210h		;0d0f
l0d12h:
	push bc			;0d12
	ld d,(ix+005h)		;0d13
	ld a,(ix+003h)		;0d16
	add a,c			;0d19
	ld e,a			;0d1a
	ld bc,l0000h		;0d1b
	ld a,038h		;0d1e
	call 04d16h		;0d20
	pop bc			;0d23
	ld c,040h		;0d24
	djnz l0d12h		;0d26
	ret			;0d28
	ld ix,0ea00h		;0d29
	ld a,(0e341h)		;0d2d
	call 04084h		;0d30
	ld b,c			;0d33
	xor l			;0d34
	ld e,l			;0d35
	xor l			;0d36
	ld l,b			;0d37
	xor l			;0d38
	ld (hl),a		;0d39
	xor l			;0d3a
	ld e,e			;0d3b
	xor c			;0d3c
	adc a,(hl)		;0d3d
	xor c			;0d3e
	sbc a,a			;0d3f
	xor c			;0d40
	call 0a8f4h		;0d41
	ret nz			;0d44
	ld a,01ah		;0d45
	ld hl,0ad53h		;0d47
	call 0a8e1h		;0d4a
	call 0ad88h		;0d4d
	jp 0a8dch		;0d50
	inc b			;0d53
	nop			;0d54
	ex af,af'		;0d55
	ret nz			;0d56
	nop			;0d57
	and b			;0d58
	nop			;0d59
	inc de			;0d5a
	nop			;0d5b
	inc d			;0d5c
	ld c,018h		;0d5d
	call 0a915h		;0d5f
	call c,0a8dch		;0d62
	jp 0ad88h		;0d65
	ld hl,l0000h+1		;0d68
	ld (0ea18h),hl		;0d6b
	ld (ix+002h),l		;0d6e
	ld (ix+01ch),l		;0d71
	jp 0a8dch		;0d74
	call 0ad96h		;0d77
	call 0ad88h		;0d7a
	ld de,l0038h		;0d7d
	ld c,018h		;0d80
	call 0a9adh		;0d82
	jp 0a93fh		;0d85
	ld a,038h		;0d88
	ld bc,l1820h		;0d8a
	call 0a9f3h		;0d8d
	ld bc,00300h		;0d90
	jp 0aa2bh		;0d93
	ld a,(ix+001h)		;0d96
	dec a			;0d99
	jr z,l0da7h		;0d9a
	dec (ix+002h)		;0d9c
	jr nz,l0db3h		;0d9f
	inc (ix+001h)		;0da1
	jp 0aa92h		;0da4
l0da7h:
	call 0aafdh		;0da7
	jr nc,l0db3h		;0daa
	ld hl,l1000h		;0dac
	ld (0ea01h),hl		;0daf
	ret			;0db2
l0db3h:
	ld a,(ix+019h)		;0db3
	or a			;0db6
	jr nz,l0dcdh		;0db7
	dec (ix+018h)		;0db9
	ret nz			;0dbc
	ld hl,00618h		;0dbd
	ld a,(0e20ah)		;0dc0
	rra			;0dc3
	jr nc,l0dc9h		;0dc4
	ld hl,l0c0ch		;0dc6
l0dc9h:
	ld (0ea18h),hl		;0dc9
	ret			;0dcc
l0dcdh:
	dec (ix+018h)		;0dcd
	ret nz			;0dd0
	ld a,(0e201h)		;0dd1
	cp 002h			;0dd4
	ld b,018h		;0dd6
	jr z,l0ddch		;0dd8
	ld b,00ch		;0dda
l0ddch:
	ld (ix+018h),b		;0ddc
	dec (ix+019h)		;0ddf
	jr nz,l0de8h		;0de2
	ld (ix+018h),03ch	;0de4
l0de8h:
	ld b,004h		;0de8
l0deah:
	push bc			;0dea
	ld a,b			;0deb
	ld hl,0ae1fh		;0dec
	call 04b67h		;0def
	ld a,(0ea03h)		;0df2
	add a,e			;0df5
	cp 0b0h			;0df6
	jr nc,l0e19h		;0df8
	ld e,a			;0dfa
	inc hl			;0dfb
	ld a,(0ea05h)		;0dfc
	add a,d			;0dff
	ld d,a			;0e00
	ld c,b			;0e01
	ld b,00ch		;0e02
	ld a,(0e201h)		;0e04
l0e07h:
	cp 002h			;0e07
	jr z,l0e0dh		;0e09
	ld b,006h		;0e0b
l0e0dh:
	ld a,(0e20ah)		;0e0d
	rra			;0e10
	ld a,039h		;0e11
	jr nc,l0e16h		;0e13
	inc a			;0e15
l0e16h:
	call 04d16h		;0e16
l0e19h:
	pop bc			;0e19
	djnz l0deah		;0e1a
	ld a,019h		;0e1c
	jp 04ae4h		;0e1e
	djnz l0e3bh		;0e21
	ld l,018h		;0e23
	ld d,b			;0e25
	jr l0e96h		;0e26
	jr l0e07h		;0e28
	ld hl,0ea00h		;0e2a
	ld a,(0e341h)		;0e2d
	call 04084h		;0e30
	ld b,c			;0e33
	xor (hl)		;0e34
	ld h,d			;0e35
	xor (hl)		;0e36
	ld l,l			;0e37
	xor (hl)		;0e38
	ld (hl),a		;0e39
	xor (hl)		;0e3a
l0e3bh:
	ld e,e			;0e3b
	xor c			;0e3c
	adc a,(hl)		;0e3d
	xor c			;0e3e
	sbc a,a			;0e3f
	xor c			;0e40
	call 0a8f4h		;0e41
	ret nz			;0e44
	call 04b20h		;0e45
	ld hl,0ae58h		;0e48
	ld a,037h		;0e4b
	call 0a8e1h		;0e4d
	call 0ae88h		;0e50
l0e53h:
	ld hl,0e341h		;0e53
	inc (hl)		;0e56
	ret			;0e57
	inc bc			;0e58
	nop			;0e59
	ex af,af'		;0e5a
	ret nz			;0e5b
	nop			;0e5c
	ld a,b			;0e5d
	nop			;0e5e
	ld (de),a		;0e5f
	add hl,bc		;0e60
	inc d			;0e61
	ld c,020h		;0e62
	call 0a915h		;0e64
	call c,0ae53h		;0e67
	jp 0ae88h		;0e6a
	ld (ix+002h),001h	;0e6d
	ld (ix+018h),001h	;0e71
	jr l0e53h		;0e75
	call 0ae96h		;0e77
	call 0ae88h		;0e7a
	ld de,l0038h		;0e7d
	ld c,018h		;0e80
	call 0a9adh		;0e82
	jp 0a93fh		;0e85
	ld a,038h		;0e88
	ld bc,l1818h		;0e8a
	call 0a9f3h		;0e8d
	ld bc,l0809h		;0e90
	jp 0aa2bh		;0e93
l0e96h:
	call 0aeaah		;0e96
	ld a,(ix+001h)		;0e99
	dec a			;0e9c
	jr z,l0ed3h		;0e9d
	dec (ix+002h)		;0e9f
	ret nz			;0ea2
	call 0aeffh		;0ea3
	inc (ix+001h)		;0ea6
	ret			;0ea9
	dec (ix+018h)		;0eaa
	ret nz			;0ead
	ld (ix+018h),028h	;0eae
	ld hl,(0ea03h)		;0eb2
	ld de,l0030h		;0eb5
	add hl,de		;0eb8
l0eb9h:
	ld a,h			;0eb9
	and a			;0eba
	ret nz			;0ebb
	ld a,l			;0ebc
	cp 0b0h			;0ebd
	ret nc			;0ebf
	ld e,a			;0ec0
	ld a,(ix+005h)		;0ec1
	sub 008h		;0ec4
	ld d,a			;0ec6
	ld c,000h		;0ec7
	ld a,024h		;0ec9
	call 04d16h		;0ecb
	ld a,018h		;0ece
	jp 04ae4h		;0ed0
l0ed3h:
	call 0aafdh		;0ed3
	jr c,l0edfh		;0ed6
	call 0aee7h		;0ed8
	jp c,0ab70h		;0edb
	ret			;0ede
l0edfh:
	ld (ix+002h),010h	;0edf
	dec (ix+001h)		;0ee3
	ret			;0ee6
	ld hl,(0ea03h)		;0ee7
	bit 0,(ix+015h)		;0eea
	jr nz,l0ef8h		;0eee
	ld a,h			;0ef0
	and a			;0ef1
	ret m			;0ef2
	ld a,l			;0ef3
	cp 060h			;0ef4
	ccf			;0ef6
	ret			;0ef7
l0ef8h:
	ld a,h			;0ef8
	and a			;0ef9
	ret z			;0efa
	ld a,l			;0efb
	cp 0d8h			;0efc
	ret			;0efe
	ld a,(ix+004h)		;0eff
	and a			;0f02
	jr z,l0f0eh		;0f03
	ld a,002h		;0f05
	jp m,0aacbh		;0f07
	dec a			;0f0a
	jp 0aacbh		;0f0b
l0f0eh:
	ld a,(ix+003h)		;0f0e
	add a,020h		;0f11
	ld hl,0e404h		;0f13
	cp (hl)			;0f16
	ld a,002h		;0f17
	jp c,0aacbh		;0f19
	dec a			;0f1c
	jp 0aacbh		;0f1d
	xor a			;0f20
	ld (ix+013h),004h	;0f21
	ld (ix+014h),001h	;0f25
	ld (ix+010h),001h	;0f29
	ld a,(ix+019h)		;0f2d
	add a,000h		;0f30
	ld (ix+032h),a		;0f32
	ret			;0f35
	ld a,(0e345h)		;0f36
	and a			;0f39
	jp nz,06514h		;0f3a
	ld hl,(0ea03h)		;0f3d
	ld de,l0030h		;0f40
	add hl,de		;0f43
	ld (ix+004h),l		;0f44
	ld a,(ix+001h)		;0f47
	dec a			;0f4a
	jr z,l0f6bh		;0f4b
	ld a,(ix+00fh)		;0f4d
	add a,008h		;0f50
	ld (ix+00fh),a		;0f52
	inc (ix+014h)		;0f55
	ld a,(ix+006h)		;0f58
	sub 008h		;0f5b
	and 0f8h		;0f5d
	ld (ix+006h),a		;0f5f
	ret nz			;0f62
	ld (ix+002h),010h	;0f63
	inc (ix+001h)		;0f67
	ret			;0f6a
l0f6bh:
	dec (ix+002h)		;0f6b
	ret nz			;0f6e
	jp 06514h		;0f6f
	ld a,(0e341h)		;0f72
	call 04084h		;0f75
	ld a,(hl)		;0f78
	xor a			;0f79
	sub h			;0f7a
	xor a			;0f7b
	xor (hl)		;0f7c
	xor a			;0f7d
	call 04b70h		;0f7e
	ret nz			;0f81
	call 04c84h		;0f82
	ld a,00ah		;0f85
	ld (0e3d6h),a		;0f87
	ld a,001h		;0f8a
	ld (0e343h),a		;0f8c
l0f8fh:
	ld hl,0e341h		;0f8f
	inc (hl)		;0f92
	ret			;0f93
	call 0afbch		;0f94
	call 0b008h		;0f97
	ld a,(0e3d6h)		;0f9a
	and a			;0f9d
	ret nz			;0f9e
	ld a,(0ea00h)		;0f9f
	ld hl,0ea20h		;0fa2
	or (hl)			;0fa5
	ret nz			;0fa6
	ld a,01eh		;0fa7
	ld (0e343h),a		;0fa9
	jr l0f8fh		;0fac
	ld hl,0e343h		;0fae
	dec (hl)		;0fb1
	ret nz			;0fb2
	xor a			;0fb3
	ld (0e340h),a		;0fb4
	inc a			;0fb7
	ld (0e342h),a		;0fb8
	ret			;0fbb
	ld hl,0e343h		;0fbc
	dec (hl)		;0fbf
	ret nz			;0fc0
	ld (hl),090h		;0fc1
	ld de,0ea00h		;0fc3
	ld a,(de)		;0fc6
	and a			;0fc7
	jr z,l0fcfh		;0fc8
	ld e,020h		;0fca
	ld a,(de)		;0fcc
	and a			;0fcd
	ret nz			;0fce
l0fcfh:
	ld hl,0e3d6h		;0fcf
	ld a,(hl)		;0fd2
	and a			;0fd3
	ret z			;0fd4
	dec (hl)		;0fd5
	push de			;0fd6
	pop ix			;0fd7
	ld hl,0affeh		;0fd9
	ld bc,0000ah		;0fdc
	ldir			;0fdf
	ld a,(0e3d6h)		;0fe1
	rra			;0fe4
	ld a,020h		;0fe5
	jr nc,l0febh		;0fe7
	ld a,068h		;0fe9
l0febh:
	ld (ix+003h),a		;0feb
	ld a,017h		;0fee
	ld (ix+012h),a		;0ff0
	ld (ix+016h),00ah	;0ff3
	ld (ix+01fh),000h	;0ff7
	jp 0b0e3h		;0ffb
	dec b			;0ffe
	nop			;0fff
l1000h:
	inc b			;1000
	ld d,b			;1001
	nop			;1002
	ret m			;1003
	nop			;1004
	ld d,017h		;1005
	ld e,0ddh		;1007
	ld hl,0ea00h		;1009
	call 0b013h		;100c
	ld ix,0ea20h		;100f
	ld a,(ix+000h)		;1013
	and a			;1016
	ret z			;1017
l1018h:
	call 0b02eh		;1018
	ld de,00018h		;101b
	ld c,000h		;101e
	call 0a9adh		;1020
	call 0b0e3h		;1023
	ld a,(ix+01fh)		;1026
	and a			;1029
	ret z			;102a
	jp 0b0d5h		;102b
	ld a,(ix+001h)		;102e
	call 04084h		;1031
	ld a,(088b0h)		;1034
	or b			;1037
	sbc a,c			;1038
	or b			;1039
	dec (ix+002h)		;103a
	ret nz			;103d
	call 0b070h		;103e
	ld a,(ix+005h)		;1041
	sub 008h		;1044
	ld (ix+005h),a		;1046
	cp 010h			;1049
	jr c,l1059h		;104b
	dec (ix+016h)		;104d
	ret nz			;1050
	ld (ix+016h),00ah	;1051
	inc (ix+001h)		;1055
	ret			;1058
l1059h:
	ld c,001h		;1059
	ld a,(0e404h)		;105b
	sub 018h		;105e
	jr c,l1068h		;1060
	cp (ix+003h)		;1062
	jr c,l1068h		;1065
	dec c			;1067
l1068h:
	ld (ix+017h),c		;1068
	ld (ix+001h),002h	;106b
	ret			;106f
l1070h:
	ld a,(0e228h)		;1070
	srl a			;1073
	ld hl,0b080h		;1075
	call 0407ah		;1078
	ld a,(hl)		;107b
	ld (ix+002h),a		;107c
	ret			;107f
	dec b			;1080
	dec b			;1081
	inc b			;1082
	inc b			;1083
	inc bc			;1084
	inc bc			;1085
	ld (bc),a		;1086
	ld (bc),a		;1087
	dec (ix+016h)		;1088
	ret nz			;108b
	call 0b0f1h		;108c
	ld (ix+016h),008h	;108f
	ld (ix+001h),000h	;1093
	jr l1070h		;1097
	dec (ix+002h)		;1099
	ret nz			;109c
	call 0b070h		;109d
	ld l,(ix+003h)		;10a0
	ld h,(ix+004h)		;10a3
	ld de,l0007h+1		;10a6
	bit 0,(ix+017h)		;10a9
	jr z,l10b2h		;10ad
	ld de,0fff8h		;10af
l10b2h:
	add hl,de		;10b2
	ld (ix+003h),l		;10b3
	ld (ix+004h),h		;10b6
	ld a,h			;10b9
	and a			;10ba
	ld a,l			;10bb
	jr z,l10c8h		;10bc
	bit 0,(ix+017h)		;10be
	ret z			;10c2
	cp 0c0h			;10c3
	jr c,l10d0h		;10c5
	ret			;10c7
l10c8h:
	bit 0,(ix+017h)		;10c8
	ret nz			;10cc
	cp 0c0h			;10cd
	ret c			;10cf
l10d0h:
	ld (ix+000h),000h	;10d0
	ret			;10d4
	ld a,(ix+000h)		;10d5
	and a			;10d8
	ret z			;10d9
	ld de,l0030h		;10da
	call 05b04h		;10dd
	jp 0a9c8h		;10e0
	ld a,018h		;10e3
	ld bc,l1018h		;10e5
	call 0a9f3h		;10e8
	ld bc,00417h		;10eb
	jp 0aa2bh		;10ee
	ld de,0b0f9h		;10f1
	ld b,004h		;10f4
	jp 0ab80h		;10f6
	ex af,af'		;10f9
	nop			;10fa
	ret m			;10fb
	inc b			;10fc
	ld (de),a		;10fd
	nop			;10fe
	ret p			;10ff
	dec b			;1100
	ld hl,(0f000h)		;1101
	inc b			;1104
	jr nc,l1107h		;1105
l1107h:
	ret m			;1107
	dec b			;1108
	ld a,(0e201h)		;1109
	dec a			;110c
	ret nz			;110d
l110eh:
	call 0b124h		;110e
	jr z,l1124h		;1111
	ret c			;1113
	ld hl,0e377h		;1114
	inc (hl)		;1117
	jr l110eh		;1118
	ld a,(0e320h)		;111a
	and a			;111d
	ret z			;111e
	ld a,0f8h		;111f
	ld (0f004h),a		;1121
l1124h:
	ld hl,0b179h		;1124
	ld a,(0e377h)		;1127
	ld c,a			;112a
	add a,a			;112b
	add a,c			;112c
	call 0407ah		;112d
	ld e,(hl)		;1130
	inc hl			;1131
	ld d,(hl)		;1132
	inc hl			;1133
	ld b,(hl)		;1134
	ld a,d			;1135
	and 0c0h		;1136
	or 001h			;1138
	ld c,a			;113a
	ld a,d			;113b
	and 03fh		;113c
	ld d,a			;113e
	ld hl,(0e203h)		;113f
	rst 20h			;1142
	ret nz			;1143
	ld hl,0e377h		;1144
	inc (hl)		;1147
	call 0b14dh		;1148
	xor a			;114b
	ret			;114c
	ld e,b			;114d
	ld hl,0ea20h		;114e
	ld b,004h		;1151
l1153h:
	ld a,(hl)		;1153
	and a			;1154
	jr z,l1161h		;1155
	ld a,008h		;1157
	add a,l			;1159
	ld l,a			;115a
	jr nc,l115eh		;115b
	inc h			;115d
l115eh:
	djnz l1153h		;115e
	ret			;1160
l1161h:
	ld (hl),c		;1161
	inc l			;1162
	ld (hl),008h		;1163
	inc l			;1165
	ld (hl),000h		;1166
	inc l			;1168
	ld a,(0f004h)		;1169
	ld (hl),a		;116c
	inc l			;116d
	ld (hl),e		;116e
	inc l			;116f
	ld (hl),000h		;1170
	inc l			;1172
	ld (hl),010h		;1173
	inc l			;1175
	ld (hl),005h		;1176
	ret			;1178
	ret pe			;1179
	ld b,b			;117a
	nop			;117b
	ld (l0c41h),hl		;117c
	ld l,041h		;117f
	ex af,af'		;1181
	add a,c			;1182
	ld bc,09300h		;1183
	ld bc,0a103h		;1186
	add a,c			;1189
	dec b			;118a
	xor a			;118b
	ld bc,0b704h		;118c
	ld bc,0ff01h		;118f
	rst 38h			;1192
	ld ix,0ea20h		;1193
	ld b,004h		;1197
l1199h:
	push bc			;1199
	ld a,(ix+000h)		;119a
	and a			;119d
	call nz,0b1aah		;119e
	pop bc			;11a1
	ld de,l0007h+1		;11a2
	add ix,de		;11a5
	djnz l1199h		;11a7
	ret			;11a9
	call 0b1b6h		;11aa
	call 0b1d8h		;11ad
	call 0b202h		;11b0
	jp 0b221h		;11b3
	ld a,(0e320h)		;11b6
	and a			;11b9
	ret z			;11ba
	ld a,(ix+003h)		;11bb
	sub 008h		;11be
	ld (ix+003h),a		;11c0
	ret nc			;11c3
	ld (ix+003h),000h	;11c4
	inc (ix+000h)		;11c8
	ld a,(ix+000h)		;11cb
	and 03fh		;11ce
	cp 005h			;11d0
	ret c			;11d2
	ld (ix+000h),000h	;11d3
	ret			;11d7
	bit 6,(ix+000h)		;11d8
	ret nz			;11dc
	dec (ix+001h)		;11dd
	ret nz			;11e0
	ld (ix+001h),008h	;11e1
	bit 7,(ix+000h)		;11e5
	jr z,l11f4h		;11e9
	dec (ix+004h)		;11eb
	ret p			;11ee
	ld (ix+004h),00dh	;11ef
	ret			;11f3
l11f4h:
	inc (ix+004h)		;11f4
	ld a,(ix+004h)		;11f7
	cp 00eh			;11fa
	ret c			;11fc
	ld (ix+004h),000h	;11fd
	ret			;1201
	dec (ix+006h)		;1202
	ret nz			;1205
	ld (ix+006h),010h	;1206
	ld a,(ix+002h)		;120a
	inc a			;120d
	cp 006h			;120e
	jr c,l1213h		;1210
	xor a			;1212
l1213h:
	ld (ix+002h),a		;1213
	ld hl,0b35ch		;1216
	call 0407ah		;1219
	ld a,(hl)		;121c
	ld (ix+005h),a		;121d
	ret			;1220
	dec (ix+007h)		;1221
	ret nz			;1224
	ld a,(0e228h)		;1225
	bit 6,(ix+000h)		;1228
	jr z,l1230h		;122c
	add a,008h		;122e
l1230h:
	cp 00fh			;1230
	jr c,l1236h		;1232
	ld a,00fh		;1234
l1236h:
	ld hl,0b2a8h		;1236
	call 05ca6h		;1239
	ld (ix+007h),a		;123c
	ld hl,0e406h		;123f
	ld a,(ix+005h)		;1242
	and a			;1245
	jr z,l1262h		;1246
	cp 002h			;1248
	ret nz			;124a
	ld a,(ix+000h)		;124b
	and 03fh		;124e
	dec a			;1250
	add a,a			;1251
	add a,a			;1252
	add a,a			;1253
	sub 018h		;1254
	neg			;1256
	ld c,a			;1258
	ld a,(ix+003h)		;1259
	add a,c			;125c
	ret c			;125d
	cp (hl)			;125e
	ret nc			;125f
	jr l1270h		;1260
l1262h:
	ld a,(ix+000h)		;1262
	and 03fh		;1265
	dec a			;1267
	ret nz			;1268
	ld a,(ix+003h)		;1269
	sub 008h		;126c
	cp (hl)			;126e
	ret c			;126f
l1270h:
	ld d,a			;1270
	call 0b2b8h		;1271
	call 0b290h		;1274
	ret c			;1277
	ld a,d			;1278
	sub (ix+003h)		;1279
	jr nc,l1280h		;127c
	neg			;127e
l1280h:
	cp 080h			;1280
	ret nc			;1282
	ld a,034h		;1283
	ld bc,l0000h		;1285
	call 04d16h		;1288
	ld a,015h		;128b
	jp 04ae4h		;128d
	ld a,(0e228h)		;1290
	cp 005h			;1293
	ret nc			;1295
	ld a,(0e406h)		;1296
	sub d			;1299
	add a,020h		;129a
	cp 040h			;129c
	ret nc			;129e
	ld a,(0e404h)		;129f
	sub e			;12a2
	add a,020h		;12a3
	cp 040h			;12a5
	ret			;12a7
	jr $+24			;12a8
	inc d			;12aa
	ld (de),a		;12ab
	djnz $+16		;12ac
	inc c			;12ae
	dec bc			;12af
	ld a,(bc)		;12b0
	add hl,bc		;12b1
	ex af,af'		;12b2
	rlca			;12b3
	ld b,006h		;12b4
	dec b			;12b6
	dec b			;12b7
	ld a,(ix+004h)		;12b8
	sub 005h		;12bb
	jr nc,l12c8h		;12bd
	neg			;12bf
l12c1h:
	add a,a			;12c1
	add a,a			;12c2
	add a,a			;12c3
	add a,018h		;12c4
	ld e,a			;12c6
	ret			;12c7
l12c8h:
	neg			;12c8
	add a,00eh		;12ca
	jr l12c1h		;12cc
	ld ix,0ea20h		;12ce
	ld b,004h		;12d2
l12d4h:
	push bc			;12d4
	ld a,(ix+000h)		;12d5
	and a			;12d8
	call nz,0b2e5h		;12d9
	pop bc			;12dc
	ld de,l0007h+1		;12dd
	add ix,de		;12e0
	djnz l12d4h		;12e2
	ret			;12e4
	ld a,(ix+005h)		;12e5
	ld de,0b362h		;12e8
	call 04b60h		;12eb
	ld a,(ix+000h)		;12ee
	and 03fh		;12f1
	dec a			;12f3
	call 0407fh		;12f4
	ld (0f000h),de		;12f7
	ld a,(ix+004h)		;12fb
	add a,a			;12fe
	add a,a			;12ff
	call 0407fh		;1300
	ld (0f002h),de		;1303
	ld h,(ix+003h)		;1307
	ld l,020h		;130a
	call 05c92h		;130c
	ld (0f004h),hl		;130f
	ld a,(ix+000h)		;1312
	and 03fh		;1315
	sub 005h		;1317
	neg			;1319
	ld b,a			;131b
	ld a,(ix+003h)		;131c
	cp 0e8h			;131f
	jr c,l132bh		;1321
	rra			;1323
	rra			;1324
	rra			;1325
	or 0e0h			;1326
	neg			;1328
	ld b,a			;132a
l132bh:
	ld a,(ix+004h)		;132b
	ex af,af'		;132e
	ld c,00eh		;132f
	ld de,(0f002h)		;1331
	ld hl,(0f004h)		;1335
l1338h:
	push bc			;1338
	push de			;1339
	push hl			;133a
l133bh:
	ld a,(de)		;133b
	ld (hl),a		;133c
	inc l			;133d
	inc de			;133e
	djnz l133bh		;133f
	pop hl			;1341
	ld de,l001eh+2		;1342
	add hl,de		;1345
	pop de			;1346
	inc de			;1347
	inc de			;1348
	inc de			;1349
	inc de			;134a
	ex af,af'		;134b
	inc a			;134c
	cp 00eh			;134d
	jr c,l1356h		;134f
	ld de,(0f000h)		;1351
	xor a			;1355
l1356h:
	ex af,af'		;1356
	pop bc			;1357
	dec c			;1358
	jr nz,l1338h		;1359
	ret			;135b
	nop			;135c
	nop			;135d
	ld bc,l0202h		;135e
	ld bc,0b368h		;1361
	and b			;1364
	or e			;1365
	ret c			;1366
	or e			;1367
	ld h,e			;1368
	ld h,d			;1369
	ld h,c			;136a
	ld h,b			;136b
	ld h,a			;136c
	ld h,(hl)		;136d
	ld h,l			;136e
	ld h,h			;136f
	ld l,d			;1370
	add a,b			;1371
	ld l,c			;1372
	ld l,b			;1373
	ld l,(hl)		;1374
	ld l,l			;1375
	ld l,h			;1376
	ld l,e			;1377
	ld (hl),c		;1378
	add a,e			;1379
	ld (hl),b		;137a
	ld l,a			;137b
	ld (hl),l		;137c
	ld (hl),h		;137d
	ld (hl),e		;137e
	ld (hl),d		;137f
	ld a,c			;1380
	ld a,b			;1381
	ld (hl),a		;1382
	halt			;1383
	ld d,d			;1384
	ld d,e			;1385
	ld a,e			;1386
	ld a,d			;1387
	nop			;1388
	nop			;1389
	nop			;138a
	nop			;138b
	nop			;138c
	nop			;138d
	nop			;138e
	nop			;138f
	nop			;1390
	nop			;1391
	nop			;1392
	nop			;1393
	nop			;1394
	nop			;1395
	nop			;1396
	nop			;1397
	nop			;1398
	nop			;1399
	nop			;139a
	nop			;139b
	nop			;139c
	nop			;139d
	nop			;139e
	nop			;139f
	jr c,l13f6h		;13a0
	ld a,h			;13a2
	dec sp			;13a3
	ld d,l			;13a4
	ld d,(hl)		;13a5
	ld a,(hl)		;13a6
	ld a,l			;13a7
	ld d,a			;13a8
	ld e,b			;13a9
	add a,b			;13aa
	ld a,a			;13ab
	ld b,b			;13ac
	ld e,c			;13ad
	add a,c			;13ae
	ld b,d			;13af
	ld e,d			;13b0
	ld e,e			;13b1
	add a,e			;13b2
	add a,d			;13b3
	ld e,h			;13b4
	ld e,l			;13b5
	add a,l			;13b6
	add a,h			;13b7
	ld e,(hl)		;13b8
	ld e,a			;13b9
	add a,a			;13ba
	add a,(hl)		;13bb
	ld d,d			;13bc
	ld d,e			;13bd
	ld a,e			;13be
	ld a,d			;13bf
	nop			;13c0
	nop			;13c1
	nop			;13c2
	nop			;13c3
	nop			;13c4
	nop			;13c5
	nop			;13c6
	nop			;13c7
	nop			;13c8
	nop			;13c9
	nop			;13ca
	nop			;13cb
	nop			;13cc
	nop			;13cd
	nop			;13ce
	nop			;13cf
	nop			;13d0
	nop			;13d1
	nop			;13d2
	nop			;13d3
	nop			;13d4
	nop			;13d5
	nop			;13d6
	nop			;13d7
	jr c,l1413h		;13d8
	ld a,(03c3bh)		;13da
	dec a			;13dd
	ld a,03fh		;13de
	ld b,b			;13e0
	ld b,c			;13e1
	ld e,b			;13e2
	ld b,d			;13e3
	ld b,e			;13e4
	ld b,h			;13e5
	ld b,l			;13e6
	ld b,(hl)		;13e7
	ld b,a			;13e8
	ld c,b			;13e9
	ld e,e			;13ea
	ld c,c			;13eb
	ld c,d			;13ec
	ld c,e			;13ed
	ld c,h			;13ee
	ld c,l			;13ef
	ld c,(hl)		;13f0
	ld c,a			;13f1
	ld d,b			;13f2
	ld d,c			;13f3
	ld d,d			;13f4
	ld d,e			;13f5
l13f6h:
	ld a,e			;13f6
	ld a,d			;13f7
	nop			;13f8
	nop			;13f9
	nop			;13fa
	nop			;13fb
	nop			;13fc
	nop			;13fd
	nop			;13fe
	nop			;13ff
	nop			;1400
	nop			;1401
	nop			;1402
	nop			;1403
	nop			;1404
	nop			;1405
	nop			;1406
	nop			;1407
	nop			;1408
l1409h:
	nop			;1409
	nop			;140a
	nop			;140b
	nop			;140c
	nop			;140d
	nop			;140e
	nop			;140f
l1410h:
	ld a,(0e201h)		;1410
l1413h:
	cp 005h			;1413
	ret nz			;1415
	call 0b432h		;1416
	jr z,l1410h		;1419
	ret c			;141b
	ld hl,0e36bh		;141c
	inc (hl)		;141f
	jr l1410h		;1420
	ld a,(0e201h)		;1422
	cp 005h			;1425
	ret nz			;1427
	ld a,(0e320h)		;1428
	or a			;142b
	ret z			;142c
	ld a,0f8h		;142d
	ld (0f004h),a		;142f
	ld hl,0b49eh		;1432
	ld a,(0e36bh)		;1435
	call 04b67h		;1438
	ld hl,(0e203h)		;143b
	or a			;143e
	sbc hl,de		;143f
	ret nz			;1441
	ld hl,0e36bh		;1442
	inc (hl)		;1445
	xor a			;1446
	ld hl,0e580h		;1447
	cp (hl)			;144a
	jr z,l1452h		;144b
	ld hl,0e590h		;144d
	cp (hl)			;1450
	ret nz			;1451
l1452h:
	call 04c24h		;1452
	and 007h		;1455
	cp 006h			;1457
	jr c,l145dh		;1459
	sub 006h		;145b
l145dh:
	add a,a			;145d
	add a,a			;145e
	add a,a			;145f
	add a,040h		;1460
	ld c,a			;1462
	ld a,(0f004h)		;1463
	cp 0c9h			;1466
	ld de,00207h		;1468
	jr c,l1477h		;146b
	ld d,001h		;146d
	neg			;146f
	rra			;1471
	rra			;1472
	rra			;1473
	and 00fh		;1474
	ld e,a			;1476
l1477h:
	ld (hl),d		;1477
	inc l			;1478
	ld (hl),000h		;1479
	inc l			;147b
	ld (hl),c		;147c
	inc l			;147d
	ld a,(0f004h)		;147e
	ld (hl),a		;1481
	inc l			;1482
	ld (hl),e		;1483
	inc l			;1484
	ld a,e			;1485
	add a,a			;1486
	add a,a			;1487
	add a,a			;1488
	ld (hl),a		;1489
	inc l			;148a
	ld (hl),000h		;148b
	inc l			;148d
	ld (hl),018h		;148e
	inc l			;1490
	ld (hl),004h		;1491
	ld a,l			;1493
	add a,004h		;1494
	ld l,a			;1496
	ld (hl),000h		;1497
	inc l			;1499
	ld (hl),003h		;149a
	xor a			;149c
	ret			;149d
	sub 000h		;149e
	ld a,(de)		;14a0
	ld bc,l0138h		;14a1
	ld h,h			;14a4
	ld bc,00172h		;14a5
	rst 38h			;14a8
	rst 38h			;14a9
	ld a,(0e201h)		;14aa
	cp 005h			;14ad
	ret nz			;14af
	ld ix,0e580h		;14b0
	call 0b4bbh		;14b4
	ld ix,0e590h		;14b7
	ld a,(ix+000h)		;14bb
	or a			;14be
	ret z			;14bf
	call 0b4f6h		;14c0
	ret c			;14c3
	call 0b4e0h		;14c4
	ld a,(ix+001h)		;14c7
	or a			;14ca
	ret z			;14cb
	dec (ix+007h)		;14cc
	ret nz			;14cf
	ld (ix+007h),018h	;14d0
	dec (ix+006h)		;14d4
	ret p			;14d7
l14d8h:
	xor a			;14d8
	ld (ix+001h),a		;14d9
	ld (ix+006h),a		;14dc
	ret			;14df
	dec (ix+00dh)		;14e0
	ret nz			;14e3
	ld (ix+00dh),003h	;14e4
	inc (ix+00ch)		;14e8
	ld a,(ix+00ch)		;14eb
	cp 003h			;14ee
	ret c			;14f0
	ld (ix+00ch),000h	;14f1
	ret			;14f5
	ld a,(0e320h)		;14f6
	or a			;14f9
	ret z			;14fa
	ld a,(ix+003h)		;14fb
	sub 008h		;14fe
	jr c,l1520h		;1500
	ld (ix+003h),a		;1502
	cp 0d0h			;1505
	jr nc,l1516h		;1507
	ld (ix+000h),002h	;1509
	ld (ix+004h),007h	;150d
	ld a,038h		;1511
	jp 0b52fh		;1513
l1516h:
	ld (ix+000h),001h	;1516
	inc (ix+004h)		;151a
	jp 0b529h		;151d
l1520h:
	ld (ix+000h),003h	;1520
	dec (ix+004h)		;1524
	jr z,l1534h		;1527
	ld a,(ix+004h)		;1529
	add a,a			;152c
	add a,a			;152d
	add a,a			;152e
	ld (ix+005h),a		;152f
	or a			;1532
	ret			;1533
l1534h:
	ld (ix+000h),000h	;1534
	scf			;1538
	ret			;1539
	ld a,(0e201h)		;153a
	cp 005h			;153d
	ret nz			;153f
	ld ix,0e580h		;1540
	call 0b54bh		;1544
	ld ix,0e590h		;1547
	ld a,(ix+000h)		;154b
	or a			;154e
	ret z			;154f
	call 0b5b8h		;1550
	ld a,(ix+001h)		;1553
	or a			;1556
	ret z			;1557
	ld l,(ix+002h)		;1558
	ld h,(ix+003h)		;155b
	call 05c92h		;155e
	push hl			;1561
	ld a,(ix+006h)		;1562
	ld hl,0b5d5h		;1565
	call 04b67h		;1568
	ex de,hl		;156b
	pop de			;156c
	ld a,004h		;156d
	ld (0f000h),a		;156f
	ld a,(ix+000h)		;1572
	sub 002h		;1575
	jr z,l15a5h		;1577
	jp p,0b599h		;1579
	ld c,(ix+004h)		;157c
	ld a,(0f000h)		;157f
	ld b,a			;1582
l1583h:
	push bc			;1583
	push hl			;1584
	push de			;1585
	ld b,000h		;1586
	ldir			;1588
	pop hl			;158a
	ld bc,l001eh+2		;158b
	add hl,bc		;158e
	ex de,hl		;158f
	pop hl			;1590
	ld bc,l0007h		;1591
	add hl,bc		;1594
	pop bc			;1595
	djnz l1583h		;1596
	ret			;1598
	ld a,007h		;1599
	sub (ix+004h)		;159b
	ld c,a			;159e
	ld b,000h		;159f
	add hl,bc		;15a1
	jp 0b57ch		;15a2
l15a5h:
	ld a,(0f000h)		;15a5
	ld b,a			;15a8
l15a9h:
	push bc			;15a9
	ld bc,l0007h		;15aa
	ldir			;15ad
	ld a,019h		;15af
	call 0407fh		;15b1
	pop bc			;15b4
	djnz l15a9h		;15b5
	ret			;15b7
	ld l,028h		;15b8
	ld h,(ix+003h)		;15ba
	call 05c92h		;15bd
	ex de,hl		;15c0
	ld hl,0b66bh		;15c1
	ld a,(ix+00ch)		;15c4
	ld c,a			;15c7
	add a,a			;15c8
	add a,a			;15c9
	add a,a			;15ca
	sub c			;15cb
	ld c,a			;15cc
	ld b,000h		;15cd
	add hl,bc		;15cf
	ld a,00ch		;15d0
	jp 0b56fh		;15d2
	rst 18h			;15d5
	or l			;15d6
	ei			;15d7
l15d8h:
	or l			;15d8
	rla			;15d9
	or (hl)			;15da
	inc sp			;15db
	or (hl)			;15dc
	ld c,a			;15dd
	or (hl)			;15de
	and e			;15df
	ld e,c			;15e0
	ld c,l			;15e1
	ld c,a			;15e2
	ld e,(hl)		;15e3
	and h			;15e4
	nop			;15e5
	or b			;15e6
	ld l,a			;15e7
	ld b,e			;15e8
	ld c,(hl)		;15e9
	ld e,d			;15ea
	or (hl)			;15eb
	nop			;15ec
	or e			;15ed
	ld a,c			;15ee
	ld c,b			;15ef
	ld c,h			;15f0
	ld e,e			;15f1
	or a			;15f2
	nop			;15f3
	and e			;15f4
	ld e,c			;15f5
	ld c,l			;15f6
	ld c,(hl)		;15f7
	ld e,(hl)		;15f8
	and h			;15f9
	nop			;15fa
	xor c			;15fb
	ld e,l			;15fc
	ld d,h			;15fd
	ld d,l			;15fe
	ld e,d			;15ff
	or (hl)			;1600
	nop			;1601
	or c			;1602
	ld (hl),b		;1603
	ld (hl),c		;1604
	ld b,e			;1605
	ld e,e			;1606
	or a			;1607
	nop			;1608
	or h			;1609
	ld a,d			;160a
	ld a,e			;160b
	ld c,b			;160c
	ld e,(hl)		;160d
	and h			;160e
	nop			;160f
	xor e			;1610
	ld e,h			;1611
	ld c,e			;1612
	ld c,h			;1613
	ld e,d			;1614
	or (hl)			;1615
	nop			;1616
	and (hl)		;1617
	ld e,h			;1618
	ld c,e			;1619
	ld c,h			;161a
	ld e,e			;161b
	and h			;161c
	nop			;161d
	or c			;161e
	ld (hl),b		;161f
	ld (hl),c		;1620
	ld (hl),d		;1621
	ld (hl),e		;1622
	or d			;1623
	cp c			;1624
	and a			;1625
	ld a,d			;1626
	ld a,e			;1627
	ld a,h			;1628
	ld a,l			;1629
	cp d			;162a
	cp e			;162b
	and l			;162c
	ld e,l			;162d
	ld d,h			;162e
	ld d,l			;162f
	ld e,d			;1630
	ld (hl),a		;1631
	or a			;1632
	ld a,a			;1633
	add a,b			;1634
	add a,c			;1635
	add a,d			;1636
	add a,e			;1637
	add a,h			;1638
	add a,l			;1639
	nop			;163a
	cp (hl)			;163b
	cp a			;163c
	ret nz			;163d
	pop bc			;163e
	and a			;163f
	nop			;1640
	nop			;1641
	jp 0c5c4h		;1642
	add a,0c2h		;1645
	nop			;1647
	adc a,d			;1648
	adc a,e			;1649
	adc a,h			;164a
	adc a,l			;164b
	adc a,(hl)		;164c
	adc a,a			;164d
	jp nz,070b1h		;164e
	ld (hl),c		;1651
	ld (hl),d		;1652
	ld (hl),e		;1653
	or d			;1654
	cp c			;1655
	nop			;1656
	or h			;1657
	nop			;1658
	cp e			;1659
	and a			;165a
	nop			;165b
	nop			;165c
	cp e			;165d
	nop			;165e
	xor b			;165f
	cp c			;1660
	nop			;1661
	pop bc			;1662
	jp nz,07ab4h		;1663
	ld a,e			;1666
	ld a,h			;1667
	ld a,l			;1668
	cp d			;1669
	cp e			;166a
	and e			;166b
	ld e,c			;166c
	ld c,l			;166d
	ld c,(hl)		;166e
	ld e,(hl)		;166f
	and h			;1670
	nop			;1671
	and l			;1672
	ld e,l			;1673
	ld d,h			;1674
	ld d,l			;1675
	ld e,d			;1676
	or (hl)			;1677
	nop			;1678
	and (hl)		;1679
	ld e,h			;167a
	ld c,e			;167b
	ld c,h			;167c
	ld e,e			;167d
	or a			;167e
	nop			;167f
	and e			;1680
	ld e,c			;1681
	ld c,l			;1682
	ld c,(hl)		;1683
	ld e,(hl)		;1684
	and h			;1685
	nop			;1686
	and l			;1687
	ld e,l			;1688
	ld d,h			;1689
	ld d,l			;168a
	ld e,d			;168b
	or (hl)			;168c
	nop			;168d
	and (hl)		;168e
	ld e,h			;168f
	ld c,e			;1690
	ld c,h			;1691
	ld e,e			;1692
	or a			;1693
	nop			;1694
	and e			;1695
	ld e,c			;1696
	ld c,l			;1697
	ld c,(hl)		;1698
	ld e,(hl)		;1699
	and h			;169a
	nop			;169b
	and l			;169c
	ld e,l			;169d
	ld d,h			;169e
	ld d,l			;169f
	ld e,d			;16a0
	or (hl)			;16a1
	nop			;16a2
	and (hl)		;16a3
	ld e,h			;16a4
	ld c,e			;16a5
	ld c,h			;16a6
	ld e,e			;16a7
	or a			;16a8
	nop			;16a9
	and e			;16aa
	ld e,c			;16ab
	ld c,l			;16ac
	ld c,(hl)		;16ad
	ld e,(hl)		;16ae
	and h			;16af
	nop			;16b0
	and l			;16b1
	ld e,l			;16b2
	ld d,h			;16b3
	ld d,l			;16b4
	ld e,d			;16b5
	or (hl)			;16b6
	nop			;16b7
	and (hl)		;16b8
	ld e,h			;16b9
	ld c,e			;16ba
	ld c,h			;16bb
	ld e,e			;16bc
	or a			;16bd
	nop			;16be
	and e			;16bf
	ld e,c			;16c0
	ld c,l			;16c1
	ld c,(hl)		;16c2
	ld e,(hl)		;16c3
	and h			;16c4
	nop			;16c5
	and l			;16c6
	ld e,l			;16c7
	ld d,h			;16c8
	ld d,l			;16c9
	ld e,d			;16ca
	or (hl)			;16cb
	nop			;16cc
	ld de,0b7b4h		;16cd
	ld hl,02080h		;16d0
	ld bc,00068h		;16d3
	call 04a37h		;16d6
	ld de,0b81ch		;16d9
	ld hl,02100h		;16dc
	ld bc,000d8h		;16df
	call 04a37h		;16e2
	ld a,0f0h		;16e5
	ld hl,00080h		;16e7
	ld bc,00158h		;16ea
	jp 04a4ah		;16ed
	ld de,0b7b4h		;16f0
	ld hl,02080h		;16f3
	ld bc,00068h		;16f6
	call 04a33h		;16f9
	ld de,0b81ch		;16fc
	ld hl,02100h		;16ff
	ld bc,000d8h		;1702
	call 04a33h		;1705
	ld a,0f0h		;1708
	ld hl,00080h		;170a
	ld bc,00158h		;170d
	call sub_0056h		;1710
	ld de,0b7b4h		;1713
	ld hl,02880h		;1716
	ld bc,00068h		;1719
	call 04a33h		;171c
	ld de,0b81ch		;171f
	ld hl,02900h		;1722
	ld bc,000d8h		;1725
	call 04a33h		;1728
	ld a,0f0h		;172b
	ld hl,l0880h		;172d
	ld bc,00158h		;1730
	jp sub_0056h		;1733
	ld hl,01008h		;1736
	ld bc,l0050h		;1739
	ld a,0f0h		;173c
	call sub_0056h		;173e
	ld hl,01090h		;1741
	ld bc,00018h		;1744
	ld a,0f0h		;1747
	call sub_0056h		;1749
	ld de,0b7b4h		;174c
	ld hl,03008h		;174f
	ld bc,l0050h		;1752
	call 04a33h		;1755
	ld de,0b77bh		;1758
	ld hl,03090h		;175b
l175eh:
	push de			;175e
	call 04a1dh		;175f
	exx			;1762
	pop hl			;1763
l1764h:
	ld a,(hl)		;1764
	inc hl			;1765
	and a			;1766
	ret z			;1767
	add a,a			;1768
	add a,a			;1769
	add a,a			;176a
	ld de,0b81ch		;176b
	call 0407fh		;176e
	ld b,008h		;1771
l1773h:
	ld a,(de)		;1773
	inc de			;1774
	out (c),a		;1775
	djnz l1773h		;1777
	jr l1764h		;1779
	djnz l1785h		;177b
	add hl,bc		;177d
	nop			;177e
	ld hl,l15d8h		;177f
	ld bc,l0060h		;1782
l1785h:
	ld a,0f0h		;1785
	call sub_0056h		;1787
	ld hl,l14d8h		;178a
	ld bc,l0010h		;178d
	call sub_0056h		;1790
	ld de,0b7a4h		;1793
	ld hl,035d8h		;1796
	call 0b75eh		;1799
	ld de,0b7b1h		;179c
	ld hl,034d8h		;179f
	jr l175eh		;17a2
	add hl,de		;17a4
	rrca			;17a5
	dec d			;17a6
	inc bc			;17a7
	ld bc,l1410h		;17a8
	ld (de),a		;17ab
	dec b			;17ac
	inc b			;17ad
	ld c,008h		;17ae
	nop			;17b0
	add hl,bc		;17b1
	rlca			;17b2
	nop			;17b3
	nop			;17b4
	inc e			;17b5
	ld (06363h),hl		;17b6
	ld h,e			;17b9
	ld (l001ch),hl		;17ba
	jr l17f7h		;17bd
	jr l17d9h		;17bf
	jr l17dbh		;17c1
	ld a,(hl)		;17c3
	nop			;17c4
	ld a,063h		;17c5
	inc bc			;17c7
	ld c,03ch		;17c8
	ld (hl),b		;17ca
	ld a,a			;17cb
	nop			;17cc
	ld a,063h		;17cd
	inc bc			;17cf
	ld c,003h		;17d0
	ld h,e			;17d2
	ld a,000h		;17d3
	ld c,01eh		;17d5
	ld (hl),066h		;17d7
l17d9h:
	ld h,(hl)		;17d9
	ld a,a			;17da
l17dbh:
	ld b,000h		;17db
	ld a,a			;17dd
	ld h,b			;17de
	ld a,(hl)		;17df
	ld h,e			;17e0
	inc bc			;17e1
	ld h,e			;17e2
	ld a,000h		;17e3
	ld a,063h		;17e5
	ld h,b			;17e7
	ld a,(hl)		;17e8
	ld h,e			;17e9
	ld h,e			;17ea
	ld a,000h		;17eb
	ld a,a			;17ed
	ld h,e			;17ee
	ld b,00ch		;17ef
	jr l180bh		;17f1
	jr l17f5h		;17f3
l17f5h:
	ld a,063h		;17f5
l17f7h:
	ld h,e			;17f7
	ld a,063h		;17f8
	ld h,e			;17fa
	ld a,000h		;17fb
	ld a,063h		;17fd
	ld h,e			;17ff
	ccf			;1800
	inc bc			;1801
	ld h,e			;1802
	ld a,03ch		;1803
	ld b,d			;1805
	sbc a,c			;1806
	and c			;1807
	and c			;1808
	sbc a,c			;1809
	ld b,d			;180a
l180bh:
	inc a			;180b
	ret nz			;180c
	ld h,b			;180d
	ld a,b			;180e
	ld a,(hl)		;180f
	cp a			;1810
	cp a			;1811
	ld a,a			;1812
	ret p			;1813
	nop			;1814
	nop			;1815
	nop			;1816
	nop			;1817
l1818h:
	ret po			;1818
	cp 080h			;1819
	nop			;181b
	nop			;181c
	nop			;181d
	nop			;181e
	nop			;181f
l1820h:
	ld a,(hl)		;1820
	nop			;1821
	nop			;1822
	nop			;1823
	nop			;1824
	inc e			;1825
	ld (hl),063h		;1826
	ld h,e			;1828
	ld a,a			;1829
	ld h,e			;182a
	ld h,e			;182b
	nop			;182c
	ld a,(hl)		;182d
	ld h,e			;182e
	ld h,e			;182f
	ld a,(hl)		;1830
	ld h,e			;1831
	ld h,e			;1832
	ld a,(hl)		;1833
	nop			;1834
	ld a,063h		;1835
	ld h,b			;1837
	ld h,b			;1838
	ld h,b			;1839
	ld h,e			;183a
	ld a,000h		;183b
	ld a,h			;183d
	ld h,(hl)		;183e
	ld h,e			;183f
	ld h,e			;1840
	ld h,e			;1841
	ld h,(hl)		;1842
	ld a,h			;1843
	nop			;1844
	ld a,a			;1845
	ld h,b			;1846
	ld h,b			;1847
	ld a,(hl)		;1848
	ld h,b			;1849
	ld h,b			;184a
	ld a,a			;184b
	nop			;184c
	ld a,a			;184d
	ld h,b			;184e
	ld h,b			;184f
	ld a,(hl)		;1850
	ld h,b			;1851
	ld h,b			;1852
	ld h,b			;1853
	nop			;1854
	ld a,063h		;1855
	ld h,b			;1857
	ld h,a			;1858
	ld h,e			;1859
	ld h,e			;185a
	ccf			;185b
	nop			;185c
	ld h,e			;185d
	ld h,e			;185e
	ld h,e			;185f
	ld a,a			;1860
	ld h,e			;1861
	ld h,e			;1862
	ld h,e			;1863
	nop			;1864
	inc a			;1865
	jr l1880h		;1866
	jr l1882h		;1868
	jr l18a8h		;186a
	nop			;186c
	rra			;186d
	ld b,006h		;186e
	ld b,006h		;1870
	ld h,(hl)		;1872
	inc a			;1873
	nop			;1874
	ld h,e			;1875
	ld h,(hl)		;1876
	ld l,h			;1877
	ld a,b			;1878
	ld a,h			;1879
	ld l,(hl)		;187a
	ld h,a			;187b
	nop			;187c
	ld h,b			;187d
	ld h,b			;187e
	ld h,b			;187f
l1880h:
	ld h,b			;1880
	ld h,b			;1881
l1882h:
	ld h,b			;1882
	ld a,a			;1883
	nop			;1884
	ld h,e			;1885
	ld (hl),a		;1886
	ld a,a			;1887
	ld a,a			;1888
	ld l,e			;1889
	ld h,e			;188a
	ld h,e			;188b
	nop			;188c
	ld h,e			;188d
	ld (hl),e		;188e
	ld a,e			;188f
	ld a,a			;1890
	ld l,a			;1891
	ld h,a			;1892
	ld h,e			;1893
	nop			;1894
	ld a,063h		;1895
	ld h,e			;1897
	ld h,e			;1898
	ld h,e			;1899
	ld h,e			;189a
	ld a,000h		;189b
	ld a,(hl)		;189d
	ld h,e			;189e
	ld h,e			;189f
	ld h,e			;18a0
	ld a,(hl)		;18a1
	ld h,b			;18a2
	ld h,b			;18a3
	nop			;18a4
	ld a,063h		;18a5
	ld h,e			;18a7
l18a8h:
	ld h,e			;18a8
	ld l,a			;18a9
	ld h,(hl)		;18aa
	dec a			;18ab
	nop			;18ac
	ld a,(hl)		;18ad
	ld h,e			;18ae
	ld h,e			;18af
	ld h,d			;18b0
	ld a,h			;18b1
	ld h,(hl)		;18b2
	ld h,e			;18b3
	nop			;18b4
	ld a,063h		;18b5
	ld h,b			;18b7
	ld a,003h		;18b8
	ld h,e			;18ba
	ld a,000h		;18bb
	ld a,(hl)		;18bd
	jr l18d8h		;18be
	jr l18dah		;18c0
	jr $+26			;18c2
	nop			;18c4
	ld h,e			;18c5
	ld h,e			;18c6
	ld h,e			;18c7
	ld h,e			;18c8
	ld h,e			;18c9
	ld h,e			;18ca
	ld a,000h		;18cb
	ld h,e			;18cd
	ld h,e			;18ce
	ld h,e			;18cf
	ld h,e			;18d0
	ld (hl),01ch		;18d1
	ex af,af'		;18d3
	nop			;18d4
	ld h,e			;18d5
	ld h,e			;18d6
	ld l,e			;18d7
l18d8h:
	ld l,e			;18d8
	ld a,a			;18d9
l18dah:
	ld (hl),a		;18da
	ld (06300h),hl		;18db
	halt			;18de
	inc a			;18df
	inc e			;18e0
	ld e,037h		;18e1
	ld h,e			;18e3
	nop			;18e4
	ld h,(hl)		;18e5
	ld h,(hl)		;18e6
	ld a,(hl)		;18e7
	inc a			;18e8
	jr l1903h		;18e9
	jr l18edh		;18eb
l18edh:
	ld a,a			;18ed
	rlca			;18ee
	ld c,01ch		;18ef
	jr c,$+114		;18f1
	ld a,a			;18f3
	ld a,(0e201h)		;18f4
	cp 003h			;18f7
	jr nz,l18ffh		;18f9
	ld (ix+030h),074h	;18fb
l18ffh:
	ld (ix+02bh),001h	;18ff
l1903h:
	ld (ix+02ch),007h	;1903
	res 2,(ix+010h)		;1907
	ld a,(ix+004h)		;190b
	ld (ix+025h),a		;190e
	ld (ix+028h),000h	;1911
	ld de,0ff00h		;1915
	call 04f02h		;1918
	ld d,0fdh		;191b
	ld a,(ix+004h)		;191d
	cp 060h			;1920
	jr nc,l1932h		;1922
	ld (ix+032h),001h	;1924
	ld a,(ix+030h)		;1928
	add a,004h		;192b
	ld (ix+030h),a		;192d
	ld d,003h		;1930
l1932h:
	call 04efbh		;1932
	ld a,(0e39ch)		;1935
	inc a			;1938
	and 007h		;1939
	ld (0e39ch),a		;193b
	ld hl,0b997h		;193e
	call 05ca6h		;1941
	ld (ix+02dh),a		;1944
	ld b,010h		;1947
	ld a,(ix+004h)		;1949
	cp 058h			;194c
	jr nc,l1952h		;194e
	ld b,0f0h		;1950
l1952h:
	add a,b			;1952
	ld l,a			;1953
	ld h,0f8h		;1954
	call 05c92h		;1956
	ld de,0b987h		;1959
	ld a,(ix+032h)		;195c
	dec a			;195f
	jr z,l1965h		;1960
	ld de,0b98bh		;1962
l1965h:
	ld a,(0e201h)		;1965
	cp 003h			;1968
	jr nz,l1971h		;196a
	ld a,008h		;196c
	call 0407fh		;196e
l1971h:
	ld a,(ix+028h)		;1971
	and a			;1974
	jr z,l1979h		;1975
	inc de			;1977
	inc de			;1978
l1979h:
	ex de,hl		;1979
	ldi			;197a
	ld a,01fh		;197c
l197eh:
	call 0407fh		;197e
	ldi			;1981
	inc (ix+028h)		;1983
	ret			;1986
	ld (hl),034h		;1987
	scf			;1989
	dec (hl)		;198a
	inc (hl)		;198b
	ld (hl),035h		;198c
	scf			;198e
	ld e,(hl)		;198f
	ld e,h			;1990
	ld e,a			;1991
	ld e,l			;1992
	ld e,h			;1993
	ld e,(hl)		;1994
	ld e,l			;1995
	ld e,a			;1996
	and b			;1997
	ret po			;1998
	add a,b			;1999
	ld (hl),b		;199a
	ld h,b			;199b
	ld d,b			;199c
	sub b			;199d
	ret nz			;199e
	jr nz,l197eh		;199f
	ld a,(hl)		;19a1
l19a2h:
	jr z,l19a2h		;19a2
	ld (bc),a		;19a4
	jr z,l19afh		;19a5
	ld a,(ix+006h)		;19a7
	cp 0f0h			;19aa
	call z,0b947h		;19ac
l19afh:
	call 0b9c4h		;19af
	ld a,(ix+001h)		;19b2
	call 04084h		;19b5
	call c,0eab9h		;19b8
	cp c			;19bb
	jp m,l0eb9h		;19bc
	cp d			;19bf
	ld d,h			;19c0
	cp d			;19c1
	ld h,h			;19c2
	cp d			;19c3
	dec (ix+02ch)		;19c4
	ret nz			;19c7
	ld (ix+02ch),008h	;19c8
	ret			;19cc
	ld a,(ix+006h)		;19cd
	ld b,a			;19d0
	ld a,(l002dh)		;19d1
	call 0cb3ch		;19d4
	ld (ix+006h),a		;19d7
	ret			;19da
	nop			;19db
	call 0b9cdh		;19dc
	ld a,(ix+006h)		;19df
	cp (ix+02dh)		;19e2
	ret nc			;19e5
	inc (ix+001h)		;19e6
	ret			;19e9
	inc (ix+001h)		;19ea
	ld (ix+00dh),001h	;19ed
	ld (ix+002h),00ah	;19f1
	set 2,(ix+010h)		;19f5
	ret			;19f9
	call 0bac1h		;19fa
	call 0ba70h		;19fd
	ld a,(ix+004h)		;1a00
	add a,070h		;1a03
	cp 080h			;1a05
	ret nc			;1a07
	inc (ix+001h)		;1a08
	jp 04f3ch		;1a0b
	call 0bac1h		;1a0e
	bit 7,(ix+008h)		;1a11
	ld a,(ix+004h)		;1a15
	jr nz,l1a4dh		;1a18
	cp (ix+025h)		;1a1a
	ret c			;1a1d
l1a1eh:
	ld a,(ix+025h)		;1a1e
	ld (ix+004h),a		;1a21
	res 2,(ix+010h)		;1a24
	dec (ix+006h)		;1a28
	inc (ix+001h)		;1a2b
	ld b,0f8h		;1a2e
	ld a,(0e201h)		;1a30
	cp 003h			;1a33
	jr nz,l1a39h		;1a35
	ld b,074h		;1a37
l1a39h:
	ld (ix+00dh),0ffh	;1a39
	ld a,(ix+004h)		;1a3d
	cp 060h			;1a40
	ld a,b			;1a42
	jr nc,l1a47h		;1a43
	add a,004h		;1a45
l1a47h:
	ld (ix+030h),a		;1a47
	jp 04f3ch		;1a4a
l1a4dh:
	inc a			;1a4d
	cp (ix+025h)		;1a4e
	jr c,l1a1eh		;1a51
	ret			;1a53
	dec (ix+006h)		;1a54
	ld a,(0e320h)		;1a57
	or a			;1a5a
	ret z			;1a5b
	inc (ix+001h)		;1a5c
	ld (ix+002h),008h	;1a5f
	ret			;1a63
	call 0b9cdh		;1a64
	dec (ix+002h)		;1a67
	ret nz			;1a6a
	ld (ix+001h),000h	;1a6b
	ret			;1a6f
	ld a,(ix+002h)		;1a70
	and a			;1a73
	ret z			;1a74
	dec a			;1a75
	ld (ix+002h),a		;1a76
	jr z,l1a8dh		;1a79
	cp 004h			;1a7b
	ret nz			;1a7d
	ld d,(ix+007h)		;1a7e
	ld e,(ix+008h)		;1a81
	ld (ix+029h),d		;1a84
	ld (ix+02ah),e		;1a87
	jp 04f1ch		;1a8a
l1a8dh:
	ld e,(ix+029h)		;1a8d
	ld d,(ix+02ah)		;1a90
	call 04efbh		;1a93
	ld hl,0babbh		;1a96
	ld b,006h		;1a99
l1a9bh:
	push bc			;1a9b
	push hl			;1a9c
	ld a,b			;1a9d
	dec a			;1a9e
	call 05ca6h		;1a9f
	ld b,002h		;1aa2
	call 04cb7h		;1aa4
	ex de,hl		;1aa7
	ld b,d			;1aa8
	ld c,e			;1aa9
	ld e,(ix+004h)		;1aaa
	ld a,(ix+006h)		;1aad
	add a,008h		;1ab0
	ld d,a			;1ab2
	call 0937dh		;1ab3
	pop hl			;1ab6
	pop bc			;1ab7
	djnz l1a9bh		;1ab8
	ret			;1aba
	nop			;1abb
	ld (bc),a		;1abc
	ld b,008h		;1abd
	ld a,(bc)		;1abf
	ld c,0ddh		;1ac0
	dec (hl)		;1ac2
	dec hl			;1ac3
	ret nz			;1ac4
	ld (ix+02bh),002h	;1ac5
	ld b,004h		;1ac9
	ld a,(0e201h)		;1acb
	cp 003h			;1ace
	jr nz,l1ad4h		;1ad0
	ld b,00ch		;1ad2
l1ad4h:
	ld a,(ix+030h)		;1ad4
	xor b			;1ad7
	ld (ix+030h),a		;1ad8
	ret			;1adb
	bit 0,(ix+00bh)		;1adc
	ld a,03ah		;1ae0
	call 0bafah		;1ae2
	ld (ix+008h),006h	;1ae5
	ld (ix+009h),004h	;1ae9
	ld (ix+00ah),003h	;1aed
	ld (ix+002h),030h	;1af1
	ld (ix+00dh),0ffh	;1af5
	ret			;1af9
	bit 0,(ix+00bh)		;1afa
	jr z,l1b02h		;1afe
	add a,007h		;1b00
l1b02h:
	ld (ix+007h),a		;1b02
	ret			;1b05
	ld a,(ix+001h)		;1b06
	call 04084h		;1b09
	ld e,0bbh		;1b0c
	ld c,c			;1b0e
	cp e			;1b0f
	ld h,b			;1b10
	cp e			;1b11
	add a,c			;1b12
	cp e			;1b13
	adc a,h			;1b14
	cp e			;1b15
	sub l			;1b16
	cp e			;1b17
	call z,0dcbbh		;1b18
	cp e			;1b1b
	ret m			;1b1c
	cp e			;1b1d
	dec (ix+002h)		;1b1e
	ret nz			;1b21
	inc (ix+002h)		;1b22
	ld a,(0e406h)		;1b25
	sub (ix+006h)		;1b28
	add a,020h		;1b2b
	cp 040h			;1b2d
	ret nc			;1b2f
	ld (ix+00dh),000h	;1b30
	ld (ix+002h),001h	;1b34
	ld (ix+00ch),003h	;1b38
	inc (ix+001h)		;1b3c
	ld a,(0e203h)		;1b3f
	rra			;1b42
	and 001h		;1b43
	ld (ix+00fh),a		;1b45
	ret			;1b48
	dec (ix+002h)		;1b49
	ret nz			;1b4c
	ld (ix+002h),001h	;1b4d
	inc (ix+007h)		;1b51
	dec (ix+00ch)		;1b54
	ret nz			;1b57
	ld (ix+002h),006h	;1b58
	inc (ix+001h)		;1b5c
	ret			;1b5f
	call 0bb74h		;1b60
	dec (ix+002h)		;1b63
	ret nz			;1b66
	ld a,03eh		;1b67
	call 0bafah		;1b69
	ld (ix+00ch),002h	;1b6c
	inc (ix+001h)		;1b70
	ret			;1b73
	bit 0,(ix+002h)		;1b74
	ld a,03dh		;1b78
	jr z,l1b7eh		;1b7a
	ld a,03eh		;1b7c
l1b7eh:
	jp 0bafah		;1b7e
	inc (ix+007h)		;1b81
	dec (ix+00ch)		;1b84
	ret nz			;1b87
	inc (ix+001h)		;1b88
	ret			;1b8b
	ld a,03dh		;1b8c
	call 0bafah		;1b8e
	inc (ix+001h)		;1b91
	ret			;1b94
	call 0bba0h		;1b95
	ld (ix+002h),006h	;1b98
	inc (ix+001h)		;1b9c
	ret			;1b9f
	bit 0,(ix+00bh)		;1ba0
	ld bc,l00f8h		;1ba4
	jr z,l1bach		;1ba7
	ld bc,l0118h		;1ba9
l1bach:
	ld a,(ix+004h)		;1bac
	add a,c			;1baf
	ld e,a			;1bb0
	ld a,(0e320h)		;1bb1
	and a			;1bb4
	ld c,010h		;1bb5
	jr z,l1bbbh		;1bb7
	ld c,008h		;1bb9
l1bbbh:
	ld a,(ix+006h)		;1bbb
	add a,c			;1bbe
	ld d,a			;1bbf
	ld c,000h		;1bc0
	ld a,041h		;1bc2
	call 04d16h		;1bc4
	ld a,026h		;1bc7
	jp 04ae4h		;1bc9
	dec (ix+002h)		;1bcc
	ret nz			;1bcf
	ld (ix+002h),001h	;1bd0
	ld (ix+00ch),003h	;1bd4
	inc (ix+001h)		;1bd8
	ret			;1bdb
	dec (ix+002h)		;1bdc
	ret nz			;1bdf
	ld (ix+002h),001h	;1be0
	dec (ix+007h)		;1be4
	dec (ix+00ch)		;1be7
	ret nz			;1bea
	ld (ix+00dh),0ffh	;1beb
	ld (ix+002h),020h	;1bef
	ld (ix+001h),000h	;1bf3
	ret			;1bf7
	ld a,(ix+00bh)		;1bf8
	and a			;1bfb
	jr nz,l1c0bh		;1bfc
	ld (ix+00dh),0ffh	;1bfe
	ld a,(ix+00fh)		;1c02
	add a,033h		;1c05
	ld (ix+007h),a		;1c07
	ret			;1c0a
l1c0bh:
	ld (ix+000h),000h	;1c0b
	ret			;1c0f
	xor a			;1c10
	ld (ix+02fh),a		;1c11
	inc a			;1c14
	ld (ix+013h),a		;1c15
	ld (ix+014h),a		;1c18
	ld (ix+010h),009h	;1c1b
	ld (ix+002h),00ah	;1c1f
	ret			;1c23
	ld a,(ix+001h)		;1c24
	dec a			;1c27
	jr z,l1c5ch		;1c28
	bit 0,(ix+019h)		;1c2a
	jr nz,l1c3eh		;1c2e
	bit 0,(ix+02fh)		;1c30
	jr nz,l1c54h		;1c34
	ld a,(ix+004h)		;1c36
	sub 020h		;1c39
	ld (ix+004h),a		;1c3b
l1c3eh:
	ld a,(ix+013h)		;1c3e
	add a,004h		;1c41
	ld (ix+013h),a		;1c43
	ld a,(ix+00eh)		;1c46
	add a,020h		;1c49
	ld (ix+00eh),a		;1c4b
	call 0bd08h		;1c4e
	call 0bc76h		;1c51
l1c54h:
	dec (ix+002h)		;1c54
	ret nz			;1c57
	inc (ix+001h)		;1c58
	ret			;1c5b
l1c5ch:
	bit 0,(ix+02fh)		;1c5c
	jr nz,l1c8fh		;1c60
	bit 0,(ix+019h)		;1c62
	ld c,0e0h		;1c66
	jr z,l1c6ch		;1c68
	ld c,020h		;1c6a
l1c6ch:
	ld a,(ix+004h)		;1c6c
	add a,c			;1c6f
	ld (ix+004h),a		;1c70
	call 0bd08h		;1c73
	ld l,(ix+004h)		;1c76
	ld h,(ix+006h)		;1c79
	bit 0,(ix+019h)		;1c7c
	jr z,l1cb3h		;1c80
	call 05c92h		;1c82
	ld de,l001eh+2		;1c85
	call 0bccch		;1c88
	ret nc			;1c8b
	jp 06514h		;1c8c
l1c8fh:
	ld a,(ix+013h)		;1c8f
	sub 004h		;1c92
	ld (ix+013h),a		;1c94
	jp c,06514h		;1c97
	dec a			;1c9a
	jp m,06514h		;1c9b
	inc a			;1c9e
	add a,a			;1c9f
	add a,a			;1ca0
	add a,a			;1ca1
	ld (ix+00eh),a		;1ca2
	bit 0,(ix+019h)		;1ca5
	ret z			;1ca9
	ld a,(ix+004h)		;1caa
	add a,020h		;1cad
	ld (ix+004h),a		;1caf
	ret			;1cb2
l1cb3h:
	ld a,(ix+013h)		;1cb3
	dec a			;1cb6
	add a,a			;1cb7
	add a,a			;1cb8
	add a,a			;1cb9
	add a,l			;1cba
	ld l,a			;1cbb
	ld (0f000h),a		;1cbc
	call 05c92h		;1cbf
	ld de,0ffe0h		;1cc2
	call 0bccch		;1cc5
	ret nc			;1cc8
	jp 06514h		;1cc9
	ld a,(0e305h)		;1ccc
	ld c,a			;1ccf
	ld b,(ix+013h)		;1cd0
	exx			;1cd3
	ld c,000h		;1cd4
	exx			;1cd6
l1cd7h:
	ld a,(hl)		;1cd7
	and a			;1cd8
	jr z,l1cdeh		;1cd9
	cp c			;1cdb
	jr c,l1ce6h		;1cdc
l1cdeh:
	exx			;1cde
	inc c			;1cdf
	exx			;1ce0
	add hl,de		;1ce1
	djnz l1cd7h		;1ce2
	and a			;1ce4
	ret			;1ce5
l1ce6h:
	ld (ix+02fh),001h	;1ce6
	exx			;1cea
	ld (ix+013h),c		;1ceb
	ld a,c			;1cee
	dec a			;1cef
	scf			;1cf0
	ret m			;1cf1
	ld a,c			;1cf2
	add a,a			;1cf3
	add a,a			;1cf4
	add a,a			;1cf5
	ld c,a			;1cf6
	ld (ix+00eh),a		;1cf7
	ld a,(ix+019h)		;1cfa
	and a			;1cfd
	ret nz			;1cfe
	ld a,(0f000h)		;1cff
	sub c			;1d02
	ld (ix+004h),a		;1d03
	and a			;1d06
	ret			;1d07
	ld (0f000h),a		;1d08
	ld a,(ix+004h)		;1d0b
	bit 0,(ix+019h)		;1d0e
	jr z,l1d23h		;1d12
	ld a,(ix+013h)		;1d14
	add a,a			;1d17
	add a,a			;1d18
	add a,a			;1d19
	add a,(ix+004h)		;1d1a
	sub 0c0h		;1d1d
	ret c			;1d1f
	ret z			;1d20
	jr l1d2ch		;1d21
l1d23h:
	cp 0e0h			;1d23
	ret c			;1d25
	neg			;1d26
	ld (ix+004h),000h	;1d28
l1d2ch:
	ld c,a			;1d2c
	ld a,(ix+00eh)		;1d2d
	sub c			;1d30
	ld (ix+00eh),a		;1d31
	ld a,c			;1d34
	rra			;1d35
	rra			;1d36
	rra			;1d37
	and 01fh		;1d38
	ld b,a			;1d3a
	ld a,(ix+013h)		;1d3b
	sub b			;1d3e
	ld (ix+013h),a		;1d3f
	dec a			;1d42
	jp m,06514h		;1d43
	ret			;1d46
	ld a,(0e3aah)		;1d47
	or a			;1d4a
	ret nz			;1d4b
	ld de,0eb00h		;1d4c
	ld ix,0e600h		;1d4f
	ld b,00ch		;1d53
l1d55h:
	push bc			;1d55
	call 0bd64h		;1d56
	exx			;1d59
	ld de,l0040h		;1d5a
	add ix,de		;1d5d
	exx			;1d5f
	pop bc			;1d60
	djnz l1d55h		;1d61
	ret			;1d63
	bit 6,(ix+00bh)		;1d64
	ret z			;1d68
	ld a,(ix+000h)		;1d69
	and a			;1d6c
	ret z			;1d6d
	cp 024h			;1d6e
	ret z			;1d70
	sub 039h		;1d71
	cp 004h			;1d73
	jr c,l1db3h		;1d75
	ld a,(ix+006h)		;1d77
	cp 0f8h			;1d7a
	ret nc			;1d7c
	ld h,a			;1d7d
	ld l,(ix+004h)		;1d7e
	call 05c92h		;1d81
	ld (ix+011h),l		;1d84
	ld (ix+012h),h		;1d87
	ld b,(ix+013h)		;1d8a
	ld c,(ix+006h)		;1d8d
	xor a			;1d90
	sub c			;1d91
	jr nz,l1d96h		;1d92
	ld a,0f8h		;1d94
l1d96h:
	rra			;1d96
	rra			;1d97
	rra			;1d98
	and 01fh		;1d99
	ld c,(ix+014h)		;1d9b
	cp c			;1d9e
	jr nc,l1da2h		;1d9f
	ld c,a			;1da1
l1da2h:
	push bc			;1da2
	ld b,000h		;1da3
	ldir			;1da5
	pop bc			;1da7
	ld a,020h		;1da8
	sub c			;1daa
	add a,l			;1dab
	ld l,a			;1dac
	jr nc,l1db0h		;1dad
	inc h			;1daf
l1db0h:
	djnz l1da2h		;1db0
	ret			;1db2
l1db3h:
	ld a,(ix+014h)		;1db3
	or a			;1db6
	ret z			;1db7
	ld c,a			;1db8
	ld l,(ix+004h)		;1db9
	ld h,(ix+006h)		;1dbc
	call 05c92h		;1dbf
	ld (ix+011h),l		;1dc2
	ld (ix+012h),h		;1dc5
	ld b,000h		;1dc8
	ldir			;1dca
	ret			;1dcc
	ld a,(0e3aah)		;1dcd
	or a			;1dd0
	ret nz			;1dd1
	ld hl,0eb00h		;1dd2
	ld ix,0e600h		;1dd5
	ld b,00ch		;1dd9
l1ddbh:
	push bc			;1ddb
	bit 6,(ix+00bh)		;1ddc
	jr z,l1e27h		;1de0
	ld a,(ix+000h)		;1de2
	and a			;1de5
	jr z,l1e27h		;1de6
	cp 024h			;1de8
	jr z,l1e30h		;1dea
	sub 039h		;1dec
	cp 004h			;1dee
	jr c,l1e37h		;1df0
	ld a,(ix+006h)		;1df2
	cp 0f8h			;1df5
	jr nc,l1e27h		;1df7
	ld e,(ix+011h)		;1df9
	ld d,(ix+012h)		;1dfc
	ld b,(ix+013h)		;1dff
	ld c,(ix+006h)		;1e02
	xor a			;1e05
	sub c			;1e06
	jr nz,l1e0bh		;1e07
	ld a,0f8h		;1e09
l1e0bh:
	rra			;1e0b
	rra			;1e0c
	rra			;1e0d
	and 01fh		;1e0e
	ld c,(ix+014h)		;1e10
	cp c			;1e13
	jr nc,l1e17h		;1e14
	ld c,a			;1e16
l1e17h:
	push bc			;1e17
	ld b,000h		;1e18
	ldir			;1e1a
	pop bc			;1e1c
	ld a,020h		;1e1d
	sub c			;1e1f
	add a,e			;1e20
	ld e,a			;1e21
	jr nc,l1e25h		;1e22
	inc d			;1e24
l1e25h:
	djnz l1e17h		;1e25
l1e27h:
	pop bc			;1e27
	ld de,l0040h		;1e28
	add ix,de		;1e2b
	djnz l1ddbh		;1e2d
	ret			;1e2f
l1e30h:
	push hl			;1e30
	call 04bc7h		;1e31
	pop hl			;1e34
	jr l1e27h		;1e35
l1e37h:
	ld a,(ix+014h)		;1e37
	or a			;1e3a
	ret z			;1e3b
	ld c,a			;1e3c
	ld b,000h		;1e3d
	ld e,(ix+011h)		;1e3f
	ld d,(ix+012h)		;1e42
	ldir			;1e45
	jr l1e27h		;1e47
	ld (ix+007h),02fh	;1e49
	ld (ix+008h),004h	;1e4d
	ld (ix+009h),002h	;1e51
	ld (ix+00ah),002h	;1e55
	ld (ix+002h),030h	;1e59
	ld (ix+00dh),0ffh	;1e5d
	ret			;1e61
	ld a,(ix+001h)		;1e62
	call 04084h		;1e65
	ld (hl),d		;1e68
	cp (hl)			;1e69
	add a,(hl)		;1e6a
	cp (hl)			;1e6b
	and c			;1e6c
	cp (hl)			;1e6d
	ret nc			;1e6e
	cp (hl)			;1e6f
	pop hl			;1e70
	cp (hl)			;1e71
	dec (ix+002h)		;1e72
	ret nz			;1e75
	inc (ix+001h)		;1e76
	ld (ix+002h),001h	;1e79
	ld (ix+00ch),002h	;1e7d
	ld (ix+00dh),01eh	;1e81
	ret			;1e85
	dec (ix+002h)		;1e86
	ret nz			;1e89
	ld (ix+002h),003h	;1e8a
	inc (ix+007h)		;1e8e
	dec (ix+00ch)		;1e91
	ret nz			;1e94
	ld (ix+002h),001h	;1e95
	ld (ix+00ch),005h	;1e99
	inc (ix+001h)		;1e9d
	ret			;1ea0
	dec (ix+002h)		;1ea1
	ret nz			;1ea4
	ld (ix+002h),008h	;1ea5
	ld a,(ix+004h)		;1ea9
	add a,0f4h		;1eac
	ld e,a			;1eae
	ld a,(ix+006h)		;1eaf
	sub 004h		;1eb2
	ld d,a			;1eb4
	ld a,040h		;1eb5
	ld b,(ix+00ch)		;1eb7
	ld c,000h		;1eba
	call 04d16h		;1ebc
	ld a,015h		;1ebf
	call 04ae4h		;1ec1
	dec (ix+00ch)		;1ec4
	ret nz			;1ec7
	ld (ix+002h),040h	;1ec8
	inc (ix+001h)		;1ecc
	ret			;1ecf
	dec (ix+002h)		;1ed0
	ret nz			;1ed3
	ld (ix+002h),001h	;1ed4
	ld (ix+00ch),005h	;1ed8
	ld (ix+001h),002h	;1edc
	ret			;1ee0
	ld (ix+007h),032h	;1ee1
	ret			;1ee5
	ld a,(ix+019h)		;1ee6
	dec a			;1ee9
	ld hl,0bf0bh		;1eea
	call 0407ah		;1eed
	ld a,(hl)		;1ef0
	ld (ix+002h),a		;1ef1
	call 04e93h		;1ef4
	ld (ix+015h),a		;1ef7
	ld (ix+024h),004h	;1efa
	ld (ix+025h),000h	;1efe
	ld de,l0000h		;1f02
	ld hl,0fd00h		;1f05
	jp 04f26h		;1f08
	inc c			;1f0b
	djnz l1f22h		;1f0c
	jr $+30			;1f0e
	call 0bf47h		;1f10
	call 06770h		;1f13
	ld a,(ix+001h)		;1f16
	dec a			;1f19
	jp z,09b62h		;1f1a
	ld a,(ix+004h)		;1f1d
	cp 008h			;1f20
l1f22h:
	jr c,l1f31h		;1f22
	ld a,(0e327h)		;1f24
	and a			;1f27
	jr nz,l1f2dh		;1f28
	dec (ix+006h)		;1f2a
l1f2dh:
	dec (ix+002h)		;1f2d
	ret nz			;1f30
l1f31h:
	ld de,00280h		;1f31
	ld a,(0e406h)		;1f34
	sub (ix+006h)		;1f37
	call c,05cadh		;1f3a
	ld hl,l0000h		;1f3d
	call 04f26h		;1f40
	inc (ix+001h)		;1f43
	ret			;1f46
	dec (ix+024h)		;1f47
	ret nz			;1f4a
	ld (ix+024h),004h	;1f4b
	ld a,(ix+025h)		;1f4f
	inc a			;1f52
	cp 003h			;1f53
	jr c,l1f58h		;1f55
	xor a			;1f57
l1f58h:
	ld (ix+025h),a		;1f58
	add a,a			;1f5b
	add a,a			;1f5c
	add a,0c4h		;1f5d
	ld (ix+030h),a		;1f5f
	ret			;1f62
	rlca			;1f63
	ld (hl),b		;1f64
	cp a			;1f65
	ldd			;1f66
	cp a			;1f68
	rlca			;1f69
	sub c			;1f6a
	cp a			;1f6b
	or 0bch			;1f6c
	cp a			;1f6e
	nop			;1f6f
	inc bc			;1f70
	nop			;1f71
	sbc a,l			;1f72
	ld b,00fh		;1f73
	rlca			;1f75
	rrca			;1f76
	ld b,000h		;1f77
	nop			;1f79
	jr l1fech		;1f7a
	call m,0ce38h		;1f7c
	call p,03f19h		;1f7f
	ld a,a			;1f82
	rst 38h			;1f83
	call m,03f03h		;1f84
	nop			;1f87
	ld a,d			;1f88
	cp b			;1f89
	adc a,l			;1f8a
	or a			;1f8b
	sbc a,d			;1f8c
	ld l,e			;1f8d
	cp c			;1f8e
	nop			;1f8f
	nop			;1f90
	add a,e			;1f91
	and l			;1f92
	rst 20h			;1f93
	ld b,d			;1f94
	rlca			;1f95
	nop			;1f96
	add a,e			;1f97
	and l			;1f98
	rst 20h			;1f99
	ld b,d			;1f9a
	ld b,000h		;1f9b
	add a,e			;1f9d
	and l			;1f9e
	rst 20h			;1f9f
	ld b,d			;1fa0
	rlca			;1fa1
	nop			;1fa2
	add a,e			;1fa3
	and l			;1fa4
	rst 20h			;1fa5
	ld b,d			;1fa6
	nop			;1fa7
	rlca			;1fa8
	ret p			;1fa9
	add a,c			;1faa
	ret po			;1fab
	ld b,090h		;1fac
	inc b			;1fae
	add a,b			;1faf
	ld (bc),a		;1fb0
	ld h,b			;1fb1
	add a,(hl)		;1fb2
	halt			;1fb3
	ld (hl),b		;1fb4
	ld b,b			;1fb5
	ld b,b			;1fb6
	add a,b			;1fb7
	add a,b			;1fb8
	ld b,060h		;1fb9
	nop			;1fbb
	jr nz,$-126		;1fbc
	nop			;1fbe
	rlca			;1fbf
	add a,0bfh		;1fc0
	rst 0			;1fc2
	ret pe			;1fc3
	cp a			;1fc4
	nop			;1fc5
	ld (bc),a		;1fc6
	nop			;1fc7
	add a,(hl)		;1fc8
	ld b,0cbh		;1fc9
	ld l,e			;1fcb
	cpl			;1fcc
	ld h,(hl)		;1fcd
	ret nz			;1fce
	inc bc			;1fcf
	nop			;1fd0
	sub l			;1fd1
	ld bc,05403h		;1fd2
	rst 38h			;1fd5
	cp l			;1fd6
	dec sp			;1fd7
	add hl,sp		;1fd8
	inc a			;1fd9
	ld e,01fh		;1fda
	rlca			;1fdc
	nop			;1fdd
	nop			;1fde
	exx			;1fdf
	ret c			;1fe0
	djnz $+50		;1fe1
	ret po			;1fe3
	ret nz			;1fe4
	nop			;1fe5
	nop			;1fe6
	nop			;1fe7
	rlca			;1fe8
	and b			;1fe9
	add a,c			;1fea
	and h			;1feb
l1fech:
	dec b			;1fec
	ret p			;1fed
	add a,a			;1fee
	call p,05044h		;1fef
	ld d,b			;1ff2
	ld (hl),b		;1ff3
	ret p			;1ff4
	ret p			;1ff5
	inc b			;1ff6
	ret po			;1ff7
	add a,c			;1ff8
	ld (hl),b		;1ff9
	inc bc			;1ffa
	ret p			;1ffb
	inc b			;1ffc
	ret po			;1ffd
	nop			;1ffe
	rst 38h			;1fff
