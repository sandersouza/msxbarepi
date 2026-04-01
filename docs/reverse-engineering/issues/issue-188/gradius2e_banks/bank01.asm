; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x0000 -o docs/reverse-engineering/issues/issue-188/gradius2e_banks/bank01.asm /tmp/gradius2e_bank01.bin

	org 00000h

l0000h:
	cp 003h			;0000
l0002h:
	ret z			;0002
	cp 004h			;0003
	ret z			;0005
l0006h:
	cp 00eh			;0006
l0008h:
	jr nc,l0017h		;0008
l000ah:
	cp 00bh			;000a
l000ch:
	ret nc			;000c
l000dh:
	cp 007h			;000d
l000fh:
	jr nz,l0017h		;000f
	ld a,(ix+006h)		;0011
	cp 0c1h			;0014
	ret nc			;0016
l0017h:
	ld a,(ix+007h)		;0017
	ld hl,0b65eh		;001a
	call 04b67h		;001d
l0020h:
	ld b,(ix+009h)		;0020
	ld c,(ix+00ah)		;0023
	ld l,(ix+004h)		;0026
	ld h,(ix+006h)		;0029
	ld a,(0f000h)		;002c
	and a			;002f
	jp z,06052h		;0030
	ld a,(ix+006h)		;0033
	cp 0c8h			;0036
	jp nc,05327h		;0038
	call 05c92h		;003b
	ex de,hl		;003e
	ld a,c			;003f
l0040h:
	push de			;0040
	ld c,(ix+009h)		;0041
	ld b,000h		;0044
	ldir			;0046
	pop de			;0048
	ld c,020h		;0049
	ex de,hl		;004b
	add hl,bc		;004c
sub_004dh:
	ex de,hl		;004d
	dec a			;004e
	jr nz,l0040h		;004f
	ret			;0051
	ld a,(ix+006h)		;0052
	cp 0c8h			;0055
	jp nc,0530ch		;0057
	call 05c92h		;005a
l005dh:
	ld b,(ix+009h)		;005d
	push hl			;0060
	xor a			;0061
l0062h:
	ld (hl),a		;0062
	inc hl			;0063
	djnz l0062h		;0064
	pop hl			;0066
	ld a,020h		;0067
	call 0407ah		;0069
	dec c			;006c
	jr nz,l005dh		;006d
	ret			;006f
	ld c,005h		;0070
	ld a,(ix+000h)		;0072
	cp 00fh			;0075
	jr nz,l007bh		;0077
	ld c,014h		;0079
l007bh:
	ld a,(ix+008h)		;007b
	dec a			;007e
	ld a,c			;007f
l0080h:
	call nz,04ae4h		;0080
	ld a,(ix+000h)		;0083
	cp 009h			;0086
	ret nz			;0088
	ld a,01bh		;0089
	ld (ix+001h),004h	;008b
	bit 0,(ix+00bh)		;008f
	jr z,l0096h		;0093
	inc a			;0095
l0096h:
	ld (ix+007h),a		;0096
	ld (ix+00dh),000h	;0099
	ret			;009d
	call 0413fh		;009e
	call 060a7h		;00a1
	jp 04157h		;00a4
	ld a,(ix+000h)		;00a7
	cp 00eh			;00aa
	jr z,l00c3h		;00ac
	cp 010h			;00ae
	jr z,l00bah		;00b0
	dec a			;00b2
	jr z,l00cch		;00b3
	ld (ix+000h),000h	;00b5
	ret			;00b9
l00bah:
	ld (ix+00dh),0ffh	;00ba
	ld (ix+001h),008h	;00be
	ret			;00c2
l00c3h:
	ld (ix+00dh),0ffh	;00c3
	ld (ix+001h),004h	;00c7
	ret			;00cb
l00cch:
	ld (ix+001h),008h	;00cc
	ret			;00d0
	call 04396h		;00d1
	call 05ba3h		;00d4
	ld hl,l0000h		;00d7
	ld (0e203h),hl		;00da
	call 068b9h		;00dd
l00e0h:
	call 047e0h		;00e0
	ld a,(0e1dbh)		;00e3
	or a			;00e6
	ret z			;00e7
	xor a			;00e8
	ld (0e1dbh),a		;00e9
	ld hl,04a00h		;00ec
	ld (0e403h),hl		;00ef
	ld h,050h		;00f2
l00f4h:
	ld (0e405h),hl		;00f4
	call 0aa2fh		;00f7
	jp 0aaech		;00fa
	ld a,(0e201h)		;00fd
l0100h:
	cp 008h			;0100
l0102h:
	jr nc,l011ch		;0102
	ld hl,0e206h		;0104
	cp (hl)			;0107
	jr c,l010bh		;0108
	ld (hl),a		;010a
l010bh:
	ld hl,0e22ch		;010b
	ld a,(hl)		;010e
	ld (hl),000h		;010f
	and a			;0111
	jr z,l0128h		;0112
	ld a,(0e201h)		;0114
	call 07c59h		;0117
	jr l011fh		;011a
l011ch:
	ld a,(0e22ah)		;011c
l011fh:
	ld (0e201h),a		;011f
	ld hl,l0020h		;0122
	ld (0e203h),hl		;0125
l0128h:
	call 04396h		;0128
	call 04c76h		;012b
	xor a			;012e
	ld (0e1d5h),a		;012f
	ld hl,0e300h		;0132
	ld de,0e301h		;0135
	ld bc,l0cffh		;0138
	ld (hl),a		;013b
	ldir			;013c
	call 068e4h		;013e
	call 068aah		;0141
	ld a,(0e1c2h)		;0144
	bit 6,a			;0147
	jr nz,l014fh		;0149
	xor a			;014b
	ld (0e228h),a		;014c
l014fh:
	call 06888h		;014f
	call 0aa2fh		;0152
	call 05366h		;0155
	jp 047e0h		;0158
	call 04a10h		;015b
	call 0413fh		;015e
	ld ix,055a7h		;0161
	call 04595h		;0165
	xor a			;0168
	ld (0f000h),a		;0169
	ld ix,055deh		;016c
	call 0cb15h		;0170
	ld a,(0002bh)		;0173
	and 00fh		;0176
	jr z,l018fh		;0178
	call 0413bh		;017a
	ld ix,0aa83h		;017d
	call 04595h		;0181
	xor a			;0184
	ld (0f000h),a		;0185
	ld ix,0aa96h		;0188
	call 0454eh		;018c
l018fh:
	call 04137h		;018f
	call 0b6cdh		;0192
	call 0413bh		;0195
	ld hl,01800h		;0198
	ld de,0aa75h		;019b
	call 04a8ch		;019e
	call 069efh		;01a1
	ld b,0e0h		;01a4
	call 05d25h		;01a6
	ld hl,02800h		;01a9
	call 061b8h		;01ac
	ld hl,l0000h		;01af
	call 061b8h		;01b2
	ld hl,00800h		;01b5
	xor a			;01b8
	ld de,0b8f5h		;01b9
	ld b,001h		;01bc
	jp 0a24ch		;01be
	ld a,(0e1c0h)		;01c1
	cp 002h			;01c4
	ld de,0b904h		;01c6
	jr c,l01e7h		;01c9
	ld de,0b937h		;01cb
	call 04a6bh		;01ce
	ld de,0b950h		;01d1
	ld a,(0002bh)		;01d4
	and 00fh		;01d7
	jr z,l01deh		;01d9
	ld de,0622dh		;01db
l01deh:
	call 04a6bh		;01de
	ld de,0b95ah		;01e1
l01e4h:
	jp 04a6bh		;01e4
l01e7h:
	call 04a6bh		;01e7
	jr l01e4h		;01ea
	ld hl,0e1c4h		;01ec
	bit 3,(hl)		;01ef
	ld c,0ffh		;01f1
	jr nz,l01f6h		;01f3
	inc c			;01f5
l01f6h:
	ld hl,03a2ah		;01f6
	ld de,03a6ah		;01f9
	ld a,(0e1d2h)		;01fc
l01ffh:
	or a			;01ff
	jr z,l0203h		;0200
	ex de,hl		;0202
l0203h:
	push de			;0203
	call 0620ah		;0204
	pop hl			;0207
	ld c,000h		;0208
	ld de,0b275h		;020a
	jp 04a73h		;020d
l0210h:
	ld hl,0e490h		;0210
	ld de,0e491h		;0213
	ld bc,00013h		;0216
	xor a			;0219
	ld (hl),a		;021a
	ldir			;021b
	ret			;021d
	call 04133h		;021e
	call 0615bh		;0221
	call 0b636h		;0224
	call 061c1h		;0227
	jp 04108h		;022a
	rlca			;022d
	ld a,(0252eh)		;022e
	dec l			;0231
	dec h			;0232
	inc sp			;0233
	add hl,hl		;0234
	inc sp			;0235
	rst 38h			;0236
	ld hl,l0000h		;0237
	ld (0e1ceh),hl		;023a
	call 04144h		;023d
l0240h:
	ld de,0b79fh		;0240
	call 04a86h		;0243
	call 04157h		;0246
	ld hl,00a00h		;0249
	ld bc,l03f0h		;024c
	xor a			;024f
	call 00056h		;0250
	ld hl,03907h		;0253
	ld a,040h		;0256
l0258h:
	ld c,006h		;0258
	ld de,l000ah+1		;025a
l025dh:
	ld b,015h		;025d
l025fh:
	call sub_004dh		;025f
	inc hl			;0262
	inc a			;0263
	djnz l025fh		;0264
	add hl,de		;0266
	dec c			;0267
	jr nz,l025dh		;0268
	ret			;026a
	ld bc,(0e1ceh)		;026b
	ld a,0ebh		;026f
	inc b			;0271
l0272h:
	add a,015h		;0272
	djnz l0272h		;0274
	ld l,a			;0276
	ld h,b			;0277
	add hl,hl		;0278
	add hl,hl		;0279
	add hl,hl		;027a
	ld de,00a00h		;027b
	add hl,de		;027e
	ld a,c			;027f
l0280h:
	call 0407ah		;0280
	ld b,015h		;0283
	ld de,l0008h		;0285
	ld a,0f0h		;0288
l028ah:
	call sub_004dh		;028a
	add hl,de		;028d
	djnz l028ah		;028e
	ld hl,0e1ceh		;0290
	ld a,(hl)		;0293
	inc a			;0294
	and 007h		;0295
	ld (hl),a		;0297
	ret nz			;0298
	inc hl			;0299
	inc (hl)		;029a
	ld a,(hl)		;029b
	cp 006h			;029c
	ret			;029e
	ld e,(ix+020h)		;029f
	ld d,(ix+021h)		;02a2
	call 05cadh		;02a5
	ld (ix+020h),e		;02a8
	ld (ix+021h),d		;02ab
	ret			;02ae
	ld (ix+020h),e		;02af
	ld (ix+021h),d		;02b2
	ret			;02b5
	ld a,d			;02b6
	or a			;02b7
	call m,05cadh		;02b8
	ld (ix+022h),e		;02bb
	ld (ix+023h),d		;02be
	ret			;02c1
	ld a,(ix+007h)		;02c2
	add a,(ix+020h)		;02c5
	ld (ix+007h),a		;02c8
	ld a,(ix+008h)		;02cb
	adc a,(ix+021h)		;02ce
	ld (ix+008h),a		;02d1
	ret			;02d4
	ld a,(ix+009h)		;02d5
	add a,(ix+020h)		;02d8
	ld (ix+009h),a		;02db
	ld a,(ix+00ah)		;02de
	adc a,(ix+021h)		;02e1
	ld (ix+00ah),a		;02e4
	ret			;02e7
	ld e,(ix+007h)		;02e8
	ld d,(ix+008h)		;02eb
	ld a,d			;02ee
	or a			;02ef
	call m,05cadh		;02f0
	ld l,(ix+022h)		;02f3
	ld h,(ix+023h)		;02f6
	rst 20h			;02f9
	ret			;02fa
	ld e,(ix+009h)		;02fb
	ld d,(ix+00ah)		;02fe
	call 05cadh		;0301
	ld (ix+009h),e		;0304
	ld (ix+00ah),d		;0307
	ret			;030a
	ld a,(0e1c3h)		;030b
	and 01fh		;030e
	ret			;0310
	call 0630bh		;0311
	jr nz,l031dh		;0314
	dec (ix+025h)		;0316
	jr nz,l031dh		;0319
	scf			;031b
	ret			;031c
l031dh:
	ld a,(0e201h)		;031d
	cp 007h			;0320
	jr z,l0333h		;0322
	ld hl,(0e323h)		;0324
	ld de,l000fh+1		;0327
	or a			;032a
	sbc hl,de		;032b
	ld de,(0e203h)		;032d
	rst 20h			;0331
	ret			;0332
l0333h:
	ld a,(0e3beh)		;0333
	or a			;0336
	ret nz			;0337
	ld de,(0e203h)		;0338
	ld hl,l00e0h		;033c
	or a			;033f
	sbc hl,de		;0340
	ret nc			;0342
	ld hl,001a0h		;0343
	or a			;0346
	sbc hl,de		;0347
	ccf			;0349
	ret c			;034a
	ld hl,l0210h		;034b
	or a			;034e
	sbc hl,de		;034f
	ret nc			;0351
	ld hl,l0240h		;0352
	or a			;0355
	sbc hl,de		;0356
	ccf			;0358
	ret c			;0359
	ld hl,002e0h		;035a
	or a			;035d
	sbc hl,de		;035e
	ret			;0360
	ld a,(0e1c3h)		;0361
	and b			;0364
	ret nz			;0365
	ld a,(ix+026h)		;0366
	inc a			;0369
	cp c			;036a
	jr c,l036eh		;036b
	xor a			;036d
l036eh:
	ld (ix+026h),a		;036e
	call 05ca6h		;0371
	ld (ix+030h),a		;0374
	ld (ix+032h),a		;0377
	ret			;037a
	ld a,r			;037b
	rrca			;037d
	rrca			;037e
	rrca			;037f
	ld hl,0e1c3h		;0380
	xor (hl)		;0383
	ret			;0384
	ld ix,0e600h		;0385
	ld b,00ch		;0389
l038bh:
	push bc			;038b
	ld a,(ix+000h)		;038c
	and a			;038f
	jr z,l03a5h		;0390
	call 063aeh		;0392
	ld a,(ix+000h)		;0395
	or a			;0398
	jr z,l03a5h		;0399
	call 06486h		;039b
	jr c,l03a5h		;039e
	call 064beh		;03a0
	jr nc,l03a5h		;03a3
l03a5h:
	ld bc,l0040h		;03a5
	add ix,bc		;03a8
	pop bc			;03aa
	djnz l038bh		;03ab
	ret			;03ad
	ld a,(ix+000h)		;03ae
	cp 026h			;03b1
	jr z,l03c6h		;03b3
	ld a,(0e3d0h)		;03b5
	or a			;03b8
	ret nz			;03b9
	ld a,(0e439h)		;03ba
	cp 005h			;03bd
	jr nz,l03c6h		;03bf
	ld a,(0e1c3h)		;03c1
l03c4h:
	rra			;03c4
	ret c			;03c5
l03c6h:
	ld a,(ix+000h)		;03c6
	dec a			;03c9
	call 04084h		;03ca
	inc h			;03cd
	ld h,(hl)		;03ce
	ld a,l			;03cf
	ld h,h			;03d0
	adc a,d			;03d1
	sbc a,b			;03d2
	jp m,097a2h		;03d3
	sbc a,l			;03d6
	ld c,a			;03d7
	ld h,h			;03d8
	sub e			;03d9
	and l			;03da
	inc de			;03db
	sbc a,d			;03dc
	ld e,c			;03dd
	sbc a,e			;03de
	ld c,a			;03df
	ld h,h			;03e0
	ld h,d			;03e1
	and (hl)		;03e2
	ld sp,hl		;03e3
	sbc a,d			;03e4
	push bc			;03e5
	sbc a,e			;03e6
	ld h,l			;03e7
	and e			;03e8
	inc c			;03e9
	sbc a,h			;03ea
	defb 0edh ;next byte illegal after ed	;03eb
	or a			;03ec
	cp a			;03ed
	sbc a,h			;03ee
	ld c,a			;03ef
l03f0h:
	ld h,h			;03f0
	ld c,a			;03f1
	ld h,h			;03f2
	ld e,e			;03f3
	sbc a,h			;03f4
	ld c,a			;03f5
	ld h,h			;03f6
	dec d			;03f7
	cp h			;03f8
	ld c,a			;03f9
	ld h,h			;03fa
	ld c,a			;03fb
	ld h,h			;03fc
	sub l			;03fd
	and h			;03fe
	ld c,a			;03ff
	ld h,h			;0400
	dec bc			;0401
	and l			;0402
	ld c,a			;0403
	ld h,h			;0404
	nop			;0405
	or a			;0406
	ld c,a			;0407
	ld h,h			;0408
l0409h:
	jr nz,l03c4h		;0409
	add a,a			;040b
	cp d			;040c
	ld c,a			;040d
	ld h,h			;040e
	nop			;040f
	or a			;0410
	ld (hl),h		;0411
	ld h,h			;0412
	ld l,e			;0413
	ld h,h			;0414
	defb 0edh ;next byte illegal after ed	;0415
	sbc a,a			;0416
	ld b,h			;0417
	sub (hl)		;0418
	ld c,a			;0419
	ld h,h			;041a
	ld c,a			;041b
	ld h,h			;041c
	ld c,a			;041d
	ld h,h			;041e
	ld c,a			;041f
	ld h,h			;0420
	ld c,a			;0421
	ld h,h			;0422
	and c			;0423
	sub (hl)		;0424
	and c			;0425
	sub (hl)		;0426
	ld c,a			;0427
	ld h,h			;0428
	sbc a,096h		;0429
	defb 0edh ;next byte illegal after ed	;042b
	sbc a,a			;042c
	jp p,061bah		;042d
	ld (hl),h		;0430
	ld b,h			;0431
	sub (hl)		;0432
	ld e,c			;0433
	sub e			;0434
	ld c,a			;0435
	ld h,h			;0436
	ld (04f96h),a		;0437
	ld h,h			;043a
	ld h,d			;043b
	ld h,h			;043c
	ld c,(hl)		;043d
	sub a			;043e
	ld c,(hl)		;043f
	sub a			;0440
	ld de,01198h		;0441
	sbc a,b			;0444
	ld c,a			;0445
	ld h,h			;0446
	ld d,b			;0447
	ld h,h			;0448
	ld c,a			;0449
	ld h,h			;044a
	ld d,b			;044b
	ld h,h			;044c
	ld e,c			;044d
	ld h,h			;044e
	ret			;044f
	call 04137h		;0450
	call 0bf10h		;0453
	jp 04157h		;0456
	call 04137h		;0459
	call 0bc24h		;045c
	jp 04157h		;045f
	call 04137h		;0462
	call 0a644h		;0465
	jp 04157h		;0468
	call 04137h		;046b
	call 0af36h		;046e
	jp 04157h		;0471
	call 04137h		;0474
	call 0ac0ch		;0477
	jp 04157h		;047a
	call 04137h		;047d
	call 0b9a0h		;0480
	jp 04157h		;0483
	ld a,(0e3d0h)		;0486
	or a			;0489
	ld de,l0008h		;048a
	ld a,(ix+010h)		;048d
	call z,0cb5ah		;0490
	ld a,(0e320h)		;0493
	or d			;0496
	ret z			;0497
	ld a,(ix+006h)		;0498
	sub e			;049b
	ld (ix+006h),a		;049c
	ret nc			;049f
	call 064a8h		;04a0
	call 06514h		;04a3
	scf			;04a6
	ret			;04a7
	ld a,(ix+000h)		;04a8
	sub 02ch		;04ab
	cp 002h			;04ad
	jr c,l04b9h		;04af
	cp 003h			;04b1
	ret nz			;04b3
	ld a,(ix+02ah)		;04b4
	dec a			;04b7
	ret z			;04b8
l04b9h:
	xor a			;04b9
	ld (0e357h),a		;04ba
	ret			;04bd
	ld a,(0e439h)		;04be
	cp 005h			;04c1
	jr nz,l04cbh		;04c3
	ld a,(0e1c3h)		;04c5
	rra			;04c8
	jr c,l04dah		;04c9
l04cbh:
	bit 2,(ix+010h)		;04cb
	jr z,l04dah		;04cf
	call 064e1h		;04d1
	ret c			;04d4
	call 06514h		;04d5
	or a			;04d8
	ret			;04d9
l04dah:
	call 064f3h		;04da
	ret c			;04dd
	jp 064d5h		;04de
	push ix			;04e1
	pop hl			;04e3
	inc l			;04e4
	inc l			;04e5
	inc l			;04e6
	ld d,h			;04e7
	ld e,l			;04e8
	inc e			;04e9
	inc e			;04ea
	inc e			;04eb
	inc e			;04ec
	call 06509h		;04ed
	call 06509h		;04f0
	ld a,(ix+000h)		;04f3
	ld c,0b0h		;04f6
	cp 039h			;04f8
	jr z,l04feh		;04fa
	ld c,0a8h		;04fc
l04feh:
	ld a,(ix+004h)		;04fe
	cp c			;0501
	ret nc			;0502
	ld a,(ix+006h)		;0503
	cp 0f9h			;0506
	ret			;0508
	ld a,(de)		;0509
	add a,(hl)		;050a
	ld (hl),a		;050b
	inc l			;050c
	inc e			;050d
	ld a,(de)		;050e
	adc a,(hl)		;050f
	ld (hl),a		;0510
	inc l			;0511
	inc e			;0512
	ret			;0513
	ld hl,0e352h		;0514
	dec (hl)		;0517
	ld l,(ix+000h)		;0518
	ld h,000h		;051b
	ld e,l			;051d
	ld d,h			;051e
	add hl,hl		;051f
	add hl,hl		;0520
	add hl,hl		;0521
	or a			;0522
	sbc hl,de		;0523
	ld de,04f45h		;0525
	add hl,de		;0528
	ld a,(hl)		;0529
	bit 6,a			;052a
	jr nz,l0537h		;052c
	and 03fh		;052e
	ld hl,0e355h		;0530
	sub (hl)		;0533
	neg			;0534
	ld (hl),a		;0536
l0537h:
	ld a,(ix+000h)		;0537
	cp 02ah			;053a
	jr nz,l0542h		;053c
	ld hl,0e36dh		;053e
	dec (hl)		;0541
l0542h:
	ld (ix+000h),000h	;0542
	xor a			;0546
	ld (ix+00bh),a		;0547
	ld (ix+010h),a		;054a
	bit 0,(ix+016h)		;054d
	ret z			;0551
	ld a,(ix+017h)		;0552
	call 089a8h		;0555
	ret c			;0558
	inc l			;0559
	dec (hl)		;055a
	ret nz			;055b
	dec l			;055c
	ld (hl),000h		;055d
	ret			;055f
l0560h:
	call 0657ch		;0560
	jr z,l0560h		;0563
	ret c			;0565
	ld hl,0e358h		;0566
	inc (hl)		;0569
	jr l0560h		;056a
	ld a,(0e320h)		;056c
	and a			;056f
	ret z			;0570
	ld a,0f8h		;0571
	ld (0f004h),a		;0573
l0576h:
	call 0657ch		;0576
	jr z,l0576h		;0579
	ret			;057b
	call 0415bh		;057c
	ld a,(0e358h)		;057f
	ld hl,09554h		;0582
	call 04c32h		;0585
	push af			;0588
	call 04157h		;0589
	pop af			;058c
	ret nz			;058d
	ld hl,0e358h		;058e
	inc (hl)		;0591
	ld b,c			;0592
	ld a,c			;0593
	and 01fh		;0594
	add a,a			;0596
	add a,a			;0597
	add a,a			;0598
	ld e,a			;0599
	ld a,(0f004h)		;059a
	ld d,a			;059d
	xor a			;059e
	bit 6,c			;059f
	jr z,l05a9h		;05a1
	inc a			;05a3
	bit 7,c			;05a4
	jr z,l05a9h		;05a6
	inc a			;05a8
l05a9h:
	ld c,a			;05a9
	ld a,001h		;05aa
	call 04d1eh		;05ac
	xor a			;05af
	ret			;05b0
	ld c,002h		;05b1
	ld (ix+014h),c		;05b3
	ld (ix+013h),c		;05b6
	ld (ix+027h),000h	;05b9
	call 06667h		;05bd
	sra a			;05c0
	ld c,a			;05c2
	ld a,(0e358h)		;05c3
	and 003h		;05c6
	add a,c			;05c8
	ld (ix+015h),a		;05c9
	ld c,(ix+019h)		;05cc
	xor a			;05cf
	bit 5,c			;05d0
	jr z,l05d6h		;05d2
	ld a,002h		;05d4
l05d6h:
	bit 6,c			;05d6
	jr nz,l05dbh		;05d8
	inc a			;05da
l05dbh:
	ld (ix+026h),a		;05db
	ld (ix+010h),00bh	;05de
	ld a,(0e201h)		;05e2
	cp 006h			;05e5
	jp z,0673ah		;05e7
	ld c,000h		;05ea
	jr l060ah		;05ec
	ld e,(ix+004h)		;05ee
	ld d,(ix+006h)		;05f1
	call 0945bh		;05f4
	ld a,(0f018h)		;05f7
	cp 080h			;05fa
	jr c,l0600h		;05fc
	neg			;05fe
l0600h:
	ld bc,00505h		;0600
l0603h:
	sub 015h		;0603
	jr c,l060ah		;0605
	dec c			;0607
	djnz l0603h		;0608
l060ah:
	ld a,(ix+026h)		;060a
	add a,a			;060d
	add a,a			;060e
	ld e,a			;060f
	add a,a			;0610
	add a,e			;0611
	ld hl,066d0h		;0612
	call 0407ah		;0615
	ld a,(0e201h)		;0618
	call 0407ah		;061b
	ld a,(hl)		;061e
	add a,c			;061f
	ld (ix+032h),a		;0620
	ret			;0623
	ld a,(0e201h)		;0624
	cp 006h			;0627
	jp z,06700h		;0629
	dec (ix+015h)		;062c
	ld a,(ix+015h)		;062f
	and 003h		;0632
	ret nz			;0634
	call 065eeh		;0635
	ld a,(0f018h)		;0638
	bit 1,(ix+026h)		;063b
	jr nz,l0648h		;063f
	sub 010h		;0641
	cp 060h			;0643
	ret c			;0645
	jr l064dh		;0646
l0648h:
	sub 090h		;0648
	cp 060h			;064a
	ret c			;064c
l064dh:
	ld a,(ix+015h)		;064d
	and a			;0650
	ret nz			;0651
	ld hl,0e307h		;0652
	ld a,(hl)		;0655
	and a			;0656
	jr z,l065eh		;0657
	ld (ix+015h),001h	;0659
	ret			;065d
l065eh:
	ld e,(ix+004h)		;065e
	ld d,(ix+006h)		;0661
	call 0938fh		;0664
	ld hl,066c0h		;0667
	ld a,(0e206h)		;066a
	dec a			;066d
	ld a,(0e228h)		;066e
	jr nz,l0679h		;0671
	cp 002h			;0673
	jr c,l0679h		;0675
	ld a,002h		;0677
l0679h:
	call 0407ah		;0679
	ld c,(hl)		;067c
	inc (ix+027h)		;067d
	ld a,(ix+027h)		;0680
	and 003h		;0683
	jr nz,l0689h		;0685
	sla c			;0687
l0689h:
	ld a,(0e400h)		;0689
	cp 002h			;068c
	ld a,c			;068e
	jr nz,l0693h		;068f
	sub 004h		;0691
l0693h:
	ld c,a			;0693
	ld a,(0e206h)		;0694
	srl a			;0697
	srl a			;0699
	ld b,a			;069b
	ld a,c			;069c
	sub b			;069d
	jr nc,l06a1h		;069e
	xor a			;06a0
l06a1h:
	cp 00ch			;06a1
	jr nc,l06a7h		;06a3
	ld a,00ch		;06a5
l06a7h:
	ld c,a			;06a7
	ld a,(0e201h)		;06a8
	and a			;06ab
	jr z,l06b2h		;06ac
	cp 007h			;06ae
	jr nz,l06bch		;06b0
l06b2h:
	ld a,c			;06b2
	sub 008h		;06b3
	cp 004h			;06b5
	jr nc,l06bbh		;06b7
	ld a,004h		;06b9
l06bbh:
	ld c,a			;06bb
l06bch:
	ld (ix+015h),c		;06bc
	ret			;06bf
	ld d,b			;06c0
	ld b,b			;06c1
	jr nc,l06ech		;06c2
	inc h			;06c4
	ld (l1e20h),hl		;06c5
	inc e			;06c8
	ld a,(de)		;06c9
	jr l06e2h		;06ca
	inc d			;06cc
	ld (de),a		;06cd
	djnz l06dch		;06ce
	ld b,c			;06d0
	ld (de),a		;06d1
	nop			;06d2
	jr l06edh		;06d3
	nop			;06d5
	ld h,h			;06d6
	dec h			;06d7
	jr l06f2h		;06d8
	jr l06f4h		;06da
l06dch:
	dec h			;06dc
	nop			;06dd
	nop			;06de
	ld d,c			;06df
	ld a,b			;06e0
	nop			;06e1
l06e2h:
	ld h,b			;06e2
	dec sp			;06e3
	ld a,b			;06e4
	ld d,c			;06e5
	ld d,c			;06e6
	ld d,c			;06e7
	inc bc			;06e8
	inc c			;06e9
	nop			;06ea
	ld l,h			;06eb
l06ech:
	ld l,h			;06ec
l06edh:
	nop			;06ed
	ld l,b			;06ee
	dec hl			;06ef
	ld l,h			;06f0
	ld l,h			;06f1
l06f2h:
	ld l,h			;06f2
	ld l,h			;06f3
l06f4h:
	ld sp,l0000h		;06f4
	ld d,a			;06f7
	ld c,e			;06f8
	nop			;06f9
	ld b,a			;06fa
	ld sp,0574bh		;06fb
	ld d,a			;06fe
	ld d,a			;06ff
	ld hl,0673ah		;0700
	push hl			;0703
	ld a,(ix+001h)		;0704
	dec a			;0707
	jr z,l071ah		;0708
l070ah:
	call 0675ah		;070a
	ret c			;070d
	dec (ix+015h)		;070e
	ret nz			;0711
	ld (ix+015h),008h	;0712
	inc (ix+001h)		;0716
	ret			;0719
l071ah:
	dec (ix+015h)		;071a
	jr z,l0732h		;071d
	ld a,(ix+015h)		;071f
	cp 004h			;0722
	ret nz			;0724
	call 0675ah		;0725
	ret c			;0728
	ld e,(ix+004h)		;0729
	ld d,(ix+006h)		;072c
	jp 0938fh		;072f
l0732h:
	call 06667h		;0732
	ld (ix+001h),000h	;0735
	ret			;0739
	ld a,(ix+026h)		;073a
	ld hl,0676ch		;073d
	call 0407ah		;0740
	ld c,(hl)		;0743
	ld a,(ix+001h)		;0744
	and a			;0747
	jr z,l074bh		;0748
	inc c			;074a
l074bh:
	ld a,(0e406h)		;074b
	cp (ix+006h)		;074e
	ld a,c			;0751
	jr c,l0756h		;0752
	add a,002h		;0754
l0756h:
	ld (ix+032h),a		;0756
	ret			;0759
	ld a,(0e404h)		;075a
	cp (ix+004h)		;075d
	ld a,(ix+026h)		;0760
	jr c,l0768h		;0763
	cp 002h			;0765
	ret			;0767
l0768h:
	cp 002h			;0768
	ccf			;076a
	ret			;076b
	ld h,h			;076c
	ld h,b			;076d
	ld l,b			;076e
	ld b,a			;076f
	dec (ix+015h)		;0770
	ret nz			;0773
	ld hl,0e307h		;0774
	ld a,(hl)		;0777
	and a			;0778
	jr z,l0780h		;0779
	ld (ix+015h),001h	;077b
	ret			;077f
l0780h:
	ld e,(ix+004h)		;0780
	ld d,(ix+006h)		;0783
	call 0938fh		;0786
	call 04e93h		;0789
	ld (ix+015h),a		;078c
	ret			;078f
	ld a,(0e340h)		;0790
	dec a			;0793
	ret m			;0794
	ld c,a			;0795
	ld hl,(0e346h)		;0796
	inc hl			;0799
	ld a,l			;079a
	or h			;079b
	jr nz,l079fh		;079c
	dec hl			;079e
l079fh:
	ld (0e346h),hl		;079f
	call 04137h		;07a2
	ld a,c			;07a5
	call 067ach		;07a6
	jp 04157h		;07a9
	call 04084h		;07ac
	or l			;07af
	xor b			;07b0
	dec e			;07b1
	xor h			;07b2
	add hl,hl		;07b3
	xor (hl)		;07b4
	add hl,hl		;07b5
	xor l			;07b6
	ld (hl),d		;07b7
	xor a			;07b8
	call 06878h		;07b9
	ret z			;07bc
	call 04144h		;07bd
	ld c,001h		;07c0
	call 067ceh		;07c2
	jp 04108h		;07c5
	ld b,00dh		;07c8
	ld de,02d26h		;07ca
	ld sp,0c821h		;07cd
	ld h,a			;07d0
	ld de,0ea07h		;07d1
	ld a,(0ea00h)		;07d4
	and a			;07d7
	call nz,067ech		;07d8
	ld a,(0e340h)		;07db
	cp 005h			;07de
	ret nz			;07e0
	ld a,(0ea20h)		;07e1
	and a			;07e4
	ret z			;07e5
	ld hl,067cbh		;07e6
	ld de,0ea27h		;07e9
	ld b,003h		;07ec
l07eeh:
	push bc			;07ee
	ld a,(de)		;07ef
	push de			;07f0
	ld e,(hl)		;07f1
	inc hl			;07f2
	ld d,000h		;07f3
	push hl			;07f5
	ld hl,0ea00h		;07f6
	add hl,de		;07f9
	bit 0,c			;07fa
	jr z,l0803h		;07fc
	call 0680dh		;07fe
	jr l0806h		;0801
l0803h:
	call 06838h		;0803
l0806h:
	pop hl			;0806
	pop de			;0807
l0808h:
	inc de			;0808
	pop bc			;0809
	djnz l07eeh		;080a
	ret			;080c
	and a			;080d
	ret m			;080e
	call 06816h		;080f
	ret c			;0812
	jp 05327h		;0813
	push hl			;0816
	ld de,0bb01h		;0817
	call 04b60h		;081a
	ex de,hl		;081d
	ld c,(hl)		;081e
	inc hl			;081f
	ld b,(hl)		;0820
	inc hl			;0821
	ex de,hl		;0822
	pop hl			;0823
	jr l0841h		;0824
	call 06878h		;0826
	ret z			;0829
	call 04144h		;082a
	ld c,000h		;082d
	call 067ceh		;082f
	call 04108h		;0832
	jp 049a5h		;0835
	and a			;0838
	ret m			;0839
	call 06816h		;083a
	ret c			;083d
	jp 0530ch		;083e
l0841h:
	ld a,(hl)		;0841
	and a			;0842
	scf			;0843
	ret nz			;0844
	dec l			;0845
	dec l			;0846
	ld a,(hl)		;0847
	dec l			;0848
	and a			;0849
	jr z,l0871h		;084a
	scf			;084c
	ret p			;084d
	ld a,(hl)		;084e
	rra			;084f
	rra			;0850
	rra			;0851
	or 0e0h			;0852
	ld (0f000h),a		;0854
	add a,c			;0857
	ld c,a			;0858
	scf			;0859
	ret z			;085a
	ret m			;085b
	ld a,(0f000h)		;085c
l085fh:
	ex af,af'		;085f
	ld a,b			;0860
	add a,e			;0861
	ld e,a			;0862
	jr nc,l0866h		;0863
	inc d			;0865
l0866h:
	ex af,af'		;0866
	inc a			;0867
	jr nz,l085fh		;0868
	inc l			;086a
	inc l			;086b
	ld h,(hl)		;086c
	ld l,000h		;086d
	xor a			;086f
	ret			;0870
l0871h:
	ld a,(hl)		;0871
	inc l			;0872
	inc l			;0873
	ld h,(hl)		;0874
	ld l,a			;0875
	xor a			;0876
	ret			;0877
	ld a,(0e340h)		;0878
	and a			;087b
	ret z			;087c
	cp 005h			;087d
	jr z,l0886h		;087f
	ld a,(0ea00h)		;0881
	and a			;0884
	ret			;0885
l0886h:
	or a			;0886
	ret			;0887
	ld hl,06962h		;0888
	ld de,0e400h		;088b
	ld bc,l000fh		;088e
	ldir			;0891
	ld hl,06971h		;0893
	ld de,0e430h		;0896
	ld bc,l0008h+1		;0899
	ldir			;089c
	ld a,(0e201h)		;089e
	cp 008h			;08a1
	ret nz			;08a3
	ld a,050h		;08a4
	ld (0e406h),a		;08a6
	ret			;08a9
	ld a,(0e206h)		;08aa
	srl a			;08ad
	cp 00fh			;08af
	jr c,l08b5h		;08b1
	ld a,00fh		;08b3
l08b5h:
	ld (0e228h),a		;08b5
	ret			;08b8
	xor a			;08b9
	ld (0e22ch),a		;08ba
	ld (0e300h),a		;08bd
	ld hl,0eaa8h		;08c0
	ld de,0eaa9h		;08c3
	ld bc,l000fh		;08c6
	ld (hl),a		;08c9
	ldir			;08ca
	ld hl,0e340h		;08cc
	ld de,0e341h		;08cf
	ld bc,000bfh		;08d2
	ld (hl),a		;08d5
	ldir			;08d6
	ld hl,0e500h		;08d8
	ld de,0e501h		;08db
	ld bc,007ffh		;08de
	ld (hl),a		;08e1
	ldir			;08e2
	xor a			;08e4
	ld (0e1d5h),a		;08e5
	ld (0e369h),a		;08e8
	inc a			;08eb
	ld (0e35ch),a		;08ec
	ld (0e376h),a		;08ef
	ld (0e36eh),a		;08f2
	ld (0e365h),a		;08f5
	ld a,(0e201h)		;08f8
	ld hl,0697ah		;08fb
	call 05ca6h		;08fe
	ld (0e305h),a		;0901
	xor a			;0904
	ld (0e327h),a		;0905
	ld a,(0e201h)		;0908
	add a,a			;090b
	ld c,a			;090c
	add a,a			;090d
	add a,c			;090e
	ld hl,06986h		;090f
	call 0407ah		;0912
	ld de,0e321h		;0915
	ld bc,l0006h		;0918
	ldir			;091b
	ld a,(0e201h)		;091d
	ld hl,0694ah		;0920
	call 04b67h		;0923
	ld hl,(0e203h)		;0926
	rst 20h			;0929
	jr nc,l0938h		;092a
	ld de,l0020h		;092c
	ld a,(0e1c2h)		;092f
	bit 6,a			;0932
	jr nz,l0938h		;0934
	ld e,060h		;0936
l0938h:
	ld (0e203h),de		;0938
	xor a			;093c
	ld (0e205h),a		;093d
	inc a			;0940
	ld (0e202h),a		;0941
	ld a,040h		;0944
	ld (0e354h),a		;0946
	ret			;0949
	djnz $+3		;094a
	djnz l094fh		;094c
	nop			;094e
l094fh:
	ld bc,l0100h		;094f
	nop			;0952
	ld bc,l00f4h		;0953
	ret pe			;0956
	nop			;0957
	rst 18h			;0958
	ld bc,00fffh		;0959
	rst 38h			;095c
	rrca			;095d
	rst 38h			;095e
	rrca			;095f
	rst 38h			;0960
	rrca			;0961
	ld bc,l0000h		;0962
	nop			;0965
	ld c,d			;0966
	nop			;0967
	ld d,b			;0968
	nop			;0969
	rrca			;096a
	inc b			;096b
	ex af,af'		;096c
	nop			;096d
	nop			;096e
	nop			;096f
	nop			;0970
	ld (bc),a		;0971
	nop			;0972
	nop			;0973
	nop			;0974
	nop			;0975
	nop			;0976
	nop			;0977
	nop			;0978
	nop			;0979
	push bc			;097a
	cp l			;097b
	or e			;097c
	and c			;097d
	xor d			;097e
	and b			;097f
	sub b			;0980
	rst 0			;0981
	sbc a,l			;0982
	and c			;0983
	and c			;0984
	and c			;0985
	nop			;0986
	nop			;0987
	ret nz			;0988
	ld bc,001bfh		;0989
	add a,b			;098c
	nop			;098d
	ret nz			;098e
	ld bc,l01deh+1		;098f
	add a,b			;0992
	nop			;0993
	ret po			;0994
	ld bc,l01ffh		;0995
	ld h,b			;0998
	nop			;0999
	ret po			;099a
	ld bc,l01ffh		;099b
	add a,b			;099e
	nop			;099f
	nop			;09a0
	ld (bc),a		;09a1
	rst 38h			;09a2
	ld bc,l0080h		;09a3
	and b			;09a6
	ld bc,0019fh		;09a7
	ld h,b			;09aa
	nop			;09ab
	ret nz			;09ac
	ld bc,001bfh		;09ad
	ld h,b			;09b0
	nop			;09b1
	ret po			;09b2
	ld (bc),a		;09b3
	rst 18h			;09b4
	ld (bc),a		;09b5
	nop			;09b6
	nop			;09b7
	ret nz			;09b8
	nop			;09b9
	sbc a,a			;09ba
	nop			;09bb
	jr nz,l09beh		;09bc
l09beh:
	ld b,b			;09be
	ld bc,0015fh		;09bf
	jr nz,l09c4h		;09c2
l09c4h:
	ld b,b			;09c4
	ld bc,0015fh		;09c5
	jr nz,l09cah		;09c8
l09cah:
	ld b,b			;09ca
	ld bc,0015fh		;09cb
	call 04144h		;09ce
	ld ix,0a16dh		;09d1
	call 04595h		;09d5
	xor a			;09d8
	ld (0f000h),a		;09d9
	ld ix,0a174h		;09dc
	call 0454eh		;09e0
	ld a,001h		;09e3
	ld (0f000h),a		;09e5
	ld ix,0a187h		;09e8
	call 0454eh		;09ec
l09efh:
	call 04b43h		;09ef
	call 04108h		;09f2
	jp 04133h		;09f5
	call 04144h		;09f8
	ld ix,0a18bh		;09fb
	call 04595h		;09ff
l0a02h:
	xor a			;0a02
	ld (0f000h),a		;0a03
	ld ix,0a204h		;0a06
	call 0454eh		;0a0a
	jr l09efh		;0a0d
	call 0413bh		;0a0f
	ld ix,0b223h		;0a12
	call 04595h		;0a16
	jr l09efh		;0a19
	call 0413bh		;0a1b
	ld ix,0ac44h		;0a1e
	call 04595h		;0a22
	jr l09efh		;0a25
	ld a,(0e340h)		;0a27
	or a			;0a2a
	ret nz			;0a2b
	ld a,(0e3aah)		;0a2c
	and a			;0a2f
	ret nz			;0a30
	ld a,(0e201h)		;0a31
	ld b,a			;0a34
	cp 009h			;0a35
	ret nc			;0a37
	ld c,00fh		;0a38
	cp 004h			;0a3a
	jr z,l0a45h		;0a3c
	ld c,003h		;0a3e
	dec a			;0a40
	cp 007h			;0a41
	jr c,l0a4ah		;0a43
l0a45h:
	ld a,(0e1c3h)		;0a45
	and c			;0a48
	ret nz			;0a49
l0a4ah:
	ld a,(0e201h)		;0a4a
	ld de,0b901h		;0a4d
	call 04b60h		;0a50
	ex de,hl		;0a53
	ld a,l			;0a54
	or h			;0a55
	ret z			;0a56
	ld a,(hl)		;0a57
	ld (0f000h),a		;0a58
	and 07fh		;0a5b
	ld c,a			;0a5d
	inc hl			;0a5e
	ld a,(0e3bbh)		;0a5f
	inc a			;0a62
	cp c			;0a63
	jr c,l0a67h		;0a64
	xor a			;0a66
l0a67h:
	ld (0e3bbh),a		;0a67
	push hl			;0a6a
	ld l,a			;0a6b
	ld h,000h		;0a6c
	add hl,hl		;0a6e
	ld c,l			;0a6f
	ld b,h			;0a70
	add hl,hl		;0a71
	add hl,hl		;0a72
	add hl,bc		;0a73
	ld c,l			;0a74
	ld b,h			;0a75
	pop hl			;0a76
	add hl,bc		;0a77
	ld a,(hl)		;0a78
	ex de,hl		;0a79
	inc de			;0a7a
	ld l,a			;0a7b
	ld a,(0f000h)		;0a7c
	add a,a			;0a7f
	ld h,004h		;0a80
	jr nc,l0a86h		;0a82
	ld h,000h		;0a84
l0a86h:
	add hl,hl		;0a86
	add hl,hl		;0a87
	add hl,hl		;0a88
	ld a,(l0006h+1)		;0a89
	ld c,a			;0a8c
	ld a,(de)		;0a8d
	inc de			;0a8e
	exx			;0a8f
	ld b,003h		;0a90
	ld e,a			;0a92
l0a93h:
	rr e			;0a93
	exx			;0a95
	jr nc,l0aa7h		;0a96
	call 00053h		;0a98
	push de			;0a9b
	push hl			;0a9c
	ex de,hl		;0a9d
	ld b,008h		;0a9e
	outi			;0aa0
	jp nz,06aa0h		;0aa2
	pop hl			;0aa5
	pop de			;0aa6
l0aa7h:
	ld a,008h		;0aa7
	add a,h			;0aa9
	ld h,a			;0aaa
	exx			;0aab
	djnz l0a93h		;0aac
	ret			;0aae
	ld a,(0e201h)		;0aaf
	sub 003h		;0ab2
	cp 001h			;0ab4
	ret c			;0ab6
	sub 006h		;0ab7
	cp 003h			;0ab9
	ret			;0abb
	call 06aafh		;0abc
	ret nc			;0abf
l0ac0h:
	call 06adah		;0ac0
	jr z,l0ac0h		;0ac3
	ret c			;0ac5
	ld hl,0e369h		;0ac6
	inc (hl)		;0ac9
	jr l0ac0h		;0aca
	call 06aafh		;0acc
	ret nc			;0acf
	ld a,(0e320h)		;0ad0
	and a			;0ad3
	ret z			;0ad4
	ld a,0f8h		;0ad5
	ld (0f004h),a		;0ad7
l0adah:
	call 06ae0h		;0ada
	jr z,l0adah		;0add
	ret			;0adf
	call 0415bh		;0ae0
	ld hl,0a2a9h		;0ae3
	ld a,(0e201h)		;0ae6
	cp 003h			;0ae9
	jr z,l0af6h		;0aeb
	sub 009h		;0aed
	ld hl,06b7fh		;0aef
	call 04b67h		;0af2
	ex de,hl		;0af5
l0af6h:
	ld a,(0e369h)		;0af6
	ld c,a			;0af9
	add a,a			;0afa
	add a,c			;0afb
	call 0407ah		;0afc
	ld e,(hl)		;0aff
	inc hl			;0b00
	ld a,(hl)		;0b01
	and 001h		;0b02
	ld d,a			;0b04
	inc hl			;0b05
	ld (0f005h),hl		;0b06
	ld hl,(0e203h)		;0b09
	rst 20h			;0b0c
	jp nz,04108h		;0b0d
	ld hl,0e369h		;0b10
	inc (hl)		;0b13
	ld hl,0e580h		;0b14
	ld b,010h		;0b17
	ld de,l0008h		;0b19
	xor a			;0b1c
l0b1dh:
	cp (hl)			;0b1d
	jr z,l0b25h		;0b1e
	add hl,de		;0b20
	djnz l0b1dh		;0b21
	xor a			;0b23
	ret			;0b24
l0b25h:
	ex de,hl		;0b25
	ld hl,(0f005h)		;0b26
	push hl			;0b29
	ldi			;0b2a
	xor a			;0b2c
	dec hl			;0b2d
	dec hl			;0b2e
	bit 1,(hl)		;0b2f
	jr nz,l0b35h		;0b31
	ld a,080h		;0b33
l0b35h:
	ld (de),a		;0b35
	inc e			;0b36
	ld a,(hl)		;0b37
	and 0f8h		;0b38
	ld (de),a		;0b3a
	inc e			;0b3b
	ld a,(0f004h)		;0b3c
	ld (de),a		;0b3f
	inc e			;0b40
	pop hl			;0b41
	ld a,(hl)		;0b42
	add a,a			;0b43
	ld hl,0a55eh		;0b44
	call 0407ah		;0b47
	ldi			;0b4a
	ldi			;0b4c
	ex de,hl		;0b4e
	ld de,(0f005h)		;0b4f
	ld a,(de)		;0b53
	sub 005h		;0b54
	jr c,l0b75h		;0b56
	cp 006h			;0b58
	jr c,l0b5eh		;0b5a
	sub 006h		;0b5c
l0b5eh:
	push hl			;0b5e
	ld hl,06b7ch		;0b5f
	call 0407ah		;0b62
	ld b,(hl)		;0b65
	pop hl			;0b66
	ld a,(0e228h)		;0b67
	cp 006h			;0b6a
	jr c,l0b72h		;0b6c
	ld a,b			;0b6e
	add a,004h		;0b6f
	ld b,a			;0b71
l0b72h:
	ld (hl),b		;0b72
	jr l0b77h		;0b73
l0b75h:
	ld (hl),010h		;0b75
l0b77h:
	inc l			;0b77
	ld (hl),004h		;0b78
	xor a			;0b7a
	ret			;0b7b
	inc b			;0b7c
	ex af,af'		;0b7d
	inc c			;0b7e
	ld e,a			;0b7f
	and e			;0b80
	dec de			;0b81
	and h			;0b82
	ret z			;0b83
	and h			;0b84
	call 06878h		;0b85
	ret nz			;0b88
	call 06aafh		;0b89
	ret nc			;0b8c
	ld ix,0e580h		;0b8d
	ld b,010h		;0b91
l0b93h:
	push bc			;0b93
	ld a,(ix+000h)		;0b94
	or a			;0b97
	call nz,06ba4h		;0b98
	ld bc,l0008h		;0b9b
	add ix,bc		;0b9e
	pop bc			;0ba0
	djnz l0b93h		;0ba1
	ret			;0ba3
	call 06c34h		;0ba4
	ret c			;0ba7
	ld a,(0e439h)		;0ba8
	cp 005h			;0bab
	jr nz,l0bb4h		;0bad
	ld a,(0e1c3h)		;0baf
	rra			;0bb2
	ret nc			;0bb3
l0bb4h:
	ld a,(ix+000h)		;0bb4
	cp 005h			;0bb7
	jr c,l0be7h		;0bb9
	cp 00bh			;0bbb
	jr nc,l0bcdh		;0bbd
	ld b,008h		;0bbf
	call 06bcfh		;0bc1
	ld a,(ix+001h)		;0bc4
	and 07fh		;0bc7
	dec a			;0bc9
	jr z,l0c08h		;0bca
	ret			;0bcc
l0bcdh:
	ld b,00eh		;0bcd
	ld a,(ix+000h)		;0bcf
	cp b			;0bd2
	ret nc			;0bd3
	ld a,(ix+006h)		;0bd4
	cp 004h			;0bd7
	ret nc			;0bd9
	ld a,(ix+000h)		;0bda
	add a,003h		;0bdd
	ld (ix+000h),a		;0bdf
	ld a,024h		;0be2
	jp 04ae4h		;0be4
l0be7h:
	ld a,(ix+001h)		;0be7
	and 07fh		;0bea
	call 04084h		;0bec
	rst 30h			;0bef
	ld l,e			;0bf0
	rlca			;0bf1
	ld l,h			;0bf2
	ex af,af'		;0bf3
	ld l,h			;0bf4
	inc sp			;0bf5
	ld l,h			;0bf6
	ld a,(ix+005h)		;0bf7
	add a,a			;0bfa
	add a,a			;0bfb
	add a,a			;0bfc
	ld b,a			;0bfd
	xor a			;0bfe
	sub (ix+003h)		;0bff
	cp b			;0c02
	ret c			;0c03
	inc (ix+001h)		;0c04
	ret			;0c07
l0c08h:
	dec (ix+007h)		;0c08
	ret nz			;0c0b
	ld (ix+007h),004h	;0c0c
	ld l,(ix+002h)		;0c10
	ld h,(ix+003h)		;0c13
	call 05c92h		;0c16
	ld b,(ix+005h)		;0c19
	ld a,l			;0c1c
	and 01fh		;0c1d
	sub 020h		;0c1f
	jr c,l0c26h		;0c21
	neg			;0c23
	ld b,a			;0c25
l0c26h:
	xor a			;0c26
l0c27h:
	ld (hl),a		;0c27
	inc l			;0c28
	djnz l0c27h		;0c29
	ld a,(ix+002h)		;0c2b
	add a,008h		;0c2e
	ld (ix+002h),a		;0c30
	ret			;0c33
	ld a,(0e320h)		;0c34
	and a			;0c37
	ret z			;0c38
	ld a,(ix+003h)		;0c39
	sub 008h		;0c3c
	ld (ix+003h),a		;0c3e
	ret nc			;0c41
	ld (ix+000h),000h	;0c42
	scf			;0c46
	ret			;0c47
	call 06878h		;0c48
	ret nz			;0c4b
	call 06aafh		;0c4c
	ret nc			;0c4f
	ld ix,0e580h		;0c50
	ld b,010h		;0c54
l0c56h:
	push bc			;0c56
	ld a,(ix+000h)		;0c57
	or a			;0c5a
	call nz,06c67h		;0c5b
	ld bc,l0008h		;0c5e
	add ix,bc		;0c61
	pop bc			;0c63
	djnz l0c56h		;0c64
	ret			;0c66
	ld a,(ix+000h)		;0c67
	cp 005h			;0c6a
	jr c,l0c8eh		;0c6c
	cp 00bh			;0c6e
	ret nc			;0c70
	ld a,(ix+001h)		;0c71
	and 07fh		;0c74
	jr z,l0c80h		;0c76
	call 06ccbh		;0c78
	ret nc			;0c7b
	dec (ix+001h)		;0c7c
	ret			;0c7f
l0c80h:
	ld a,(ix+003h)		;0c80
	cp 0e1h			;0c83
	ret nc			;0c85
	call 06ccbh		;0c86
	ret c			;0c89
	inc (ix+001h)		;0c8a
	ret			;0c8d
l0c8eh:
	ld a,(ix+001h)		;0c8e
	and 07fh		;0c91
	call 04084h		;0c93
	xor a			;0c96
	ld l,h			;0c97
	sbc a,(hl)		;0c98
	ld l,h			;0c99
	or b			;0c9a
	ld l,h			;0c9b
	xor a			;0c9c
	ld l,h			;0c9d
	call 06ccbh		;0c9e
	ret c			;0ca1
	ld a,(ix+001h)		;0ca2
	rla			;0ca5
	jr c,l0cach		;0ca6
	call 06cbdh		;0ca8
	ret c			;0cab
l0cach:
	inc (ix+001h)		;0cac
	ret			;0caf
	call 06ccbh		;0cb0
	ret nc			;0cb3
	ld a,01eh		;0cb4
	call 04ae4h		;0cb6
	dec (ix+001h)		;0cb9
	ret			;0cbc
	ld a,(ix+002h)		;0cbd
	sub 008h		;0cc0
	ld l,a			;0cc2
	ld h,(ix+003h)		;0cc3
	ld b,(ix+005h)		;0cc6
	jr l0cddh		;0cc9
	ld a,(ix+004h)		;0ccb
	rla			;0cce
	rla			;0ccf
	rla			;0cd0
	and 0f8h		;0cd1
	add a,(ix+002h)		;0cd3
	ld l,a			;0cd6
	ld h,(ix+003h)		;0cd7
	ld b,(ix+005h)		;0cda
l0cddh:
	call 05c92h		;0cdd
	ld c,0a1h		;0ce0
l0ce2h:
	ld a,(hl)		;0ce2
	or a			;0ce3
	jr z,l0ce8h		;0ce4
	cp c			;0ce6
	ret c			;0ce7
l0ce8h:
	inc l			;0ce8
	djnz l0ce2h		;0ce9
	xor a			;0ceb
	ret			;0cec
	call 06878h		;0ced
	ret nz			;0cf0
	call 06aafh		;0cf1
	ret nc			;0cf4
	call 0415bh		;0cf5
	ld ix,0e580h		;0cf8
	ld b,010h		;0cfc
l0cfeh:
	push bc			;0cfe
l0cffh:
	ld a,(ix+000h)		;0cff
	or a			;0d02
	call nz,06d11h		;0d03
	ld bc,l0008h		;0d06
	add ix,bc		;0d09
	pop bc			;0d0b
	djnz l0cfeh		;0d0c
	jp 04157h		;0d0e
	ld de,0a57eh		;0d11
	call 04b60h		;0d14
	ld h,(ix+003h)		;0d17
	ld l,(ix+002h)		;0d1a
	ld c,(ix+004h)		;0d1d
	ld b,(ix+005h)		;0d20
	jp 05327h		;0d23
	ld (ix+000h),000h	;0d26
	ld e,(ix+002h)		;0d2a
	ld d,(ix+003h)		;0d2d
	call 08ba1h		;0d30
	ld a,013h		;0d33
	call 04ae4h		;0d35
	ld h,(ix+003h)		;0d38
	ld l,(ix+002h)		;0d3b
	ld c,(ix+004h)		;0d3e
	ld b,(ix+005h)		;0d41
	jp 0530ch		;0d44
	ld a,(0e3c0h)		;0d47
	or a			;0d4a
	ret nz			;0d4b
	call 0656ch		;0d4c
	ld a,(0e3d0h)		;0d4f
	or a			;0d52
	ret nz			;0d53
	ld a,(0e201h)		;0d54
	cp 009h			;0d57
	jr c,l0d60h		;0d59
	xor a			;0d5b
	ld (0e354h),a		;0d5c
	ret			;0d5f
l0d60h:
	call 06f54h		;0d60
	ld a,(0e3beh)		;0d63
	or a			;0d66
	call nz,0701ah		;0d67
	call 06d9bh		;0d6a
	ld a,(0e201h)		;0d6d
	cp 007h			;0d70
	jr nz,l0d7ch		;0d72
	ld a,(0e204h)		;0d74
	cp 002h			;0d77
	jp z,06dc2h		;0d79
l0d7ch:
	call 06da9h		;0d7c
	ret nz			;0d7f
	call 06e1dh		;0d80
	ld a,(0e390h)		;0d83
	and a			;0d86
	ret nz			;0d87
	ld a,(0e353h)		;0d88
	and a			;0d8b
	jr z,l0dc2h		;0d8c
	ld hl,0e352h		;0d8e
	ld a,00bh		;0d91
	sub (hl)		;0d93
	ld hl,0e392h		;0d94
	cp (hl)			;0d97
	ret c			;0d98
	jr l0dc2h		;0d99
	ld a,(0e201h)		;0d9b
	dec a			;0d9e
	ret nz			;0d9f
	call 04137h		;0da0
	call 0b11ah		;0da3
	jp 04157h		;0da6
	ld hl,0e354h		;0da9
	ld a,(hl)		;0dac
	and a			;0dad
	jr z,l0db4h		;0dae
	dec (hl)		;0db0
l0db1h:
	or 0ffh			;0db1
	ret			;0db3
l0db4h:
	ld a,(0e340h)		;0db4
	and a			;0db7
	ret nz			;0db8
	ld a,(0e204h)		;0db9
	cp 002h			;0dbc
	jr nc,l0db1h		;0dbe
	xor a			;0dc0
	ret			;0dc1
l0dc2h:
	call 0415bh		;0dc2
	ld a,(0e201h)		;0dc5
	ld de,099c4h		;0dc8
	call 04b60h		;0dcb
	ld hl,(0e203h)		;0dce
	ld a,l			;0dd1
	rr h			;0dd2
	rra			;0dd4
	rr h			;0dd5
	rra			;0dd7
	rra			;0dd8
	rra			;0dd9
	rra			;0dda
	and 01fh		;0ddb
	call 0407fh		;0ddd
	ld a,(de)		;0de0
	push af			;0de1
	rra			;0de2
	rra			;0de3
	rra			;0de4
	rra			;0de5
	and 00fh		;0de6
	push af			;0de8
	call 04157h		;0de9
	pop af			;0dec
	call 06e02h		;0ded
	pop bc			;0df0
	ld a,(0e228h)		;0df1
	cp 00ah			;0df4
	jp c,04157h		;0df6
	ld a,b			;0df9
	and 00fh		;0dfa
	call 06e02h		;0dfc
	jp 04157h		;0dff
	dec a			;0e02
	ret m			;0e03
	call 04084h		;0e04
	call nz,sub_1a6fh	;0e07
	ld (hl),b		;0e0a
	ld d,072h		;0e0b
	ld d,c			;0e0d
	ld (hl),c		;0e0e
	jp pe,0a271h		;0e0f
	ld (hl),c		;0e12
	ld b,071h		;0e13
	adc a,d			;0e15
	ld (hl),c		;0e16
	ld h,l			;0e17
	ld (hl),b		;0e18
	sbc a,a			;0e19
	ld (hl),b		;0e1a
	adc a,070h		;0e1b
	ld a,(0e201h)		;0e1d
	cp 008h			;0e20
	ret nc			;0e22
	ld hl,0e390h		;0e23
	ld a,(hl)		;0e26
	and a			;0e27
	jr z,l0e71h		;0e28
	dec a			;0e2a
	jr z,l0e69h		;0e2b
	inc l			;0e2d
	dec (hl)		;0e2e
	ret nz			;0e2f
	ld a,(0e393h)		;0e30
	ld b,004h		;0e33
	cp 00bh			;0e35
	jr z,l0e3bh		;0e37
	ld b,006h		;0e39
l0e3bh:
	ld (hl),b		;0e3b
	inc l			;0e3c
	dec (hl)		;0e3d
	jr nz,l0e44h		;0e3e
	dec l			;0e40
	dec l			;0e41
	ld (hl),000h		;0e42
l0e44h:
	ld hl,0e37eh		;0e44
	inc (hl)		;0e47
	ld b,(hl)		;0e48
	ld a,(0e395h)		;0e49
	ld e,a			;0e4c
	ld d,0f8h		;0e4d
	ld a,(0e393h)		;0e4f
	ld c,000h		;0e52
	call 04d1eh		;0e54
	ld a,(0e353h)		;0e57
	and a			;0e5a
	ret nz			;0e5b
	ld hl,0e37eh		;0e5c
	dec (hl)		;0e5f
	ld hl,0e392h		;0e60
	inc (hl)		;0e63
	dec l			;0e64
	dec l			;0e65
	ld (hl),001h		;0e66
	ret			;0e68
l0e69h:
	ld a,(0e352h)		;0e69
	cp 007h			;0e6c
	ret nc			;0e6e
	inc (hl)		;0e6f
	ret			;0e70
l0e71h:
	ld a,(0e320h)		;0e71
	and a			;0e74
	ret z			;0e75
	ld hl,06ec1h		;0e76
	ld a,(0e201h)		;0e79
	call 0407ah		;0e7c
	ld d,000h		;0e7f
	ld e,(hl)		;0e81
	ld hl,(0e203h)		;0e82
	rst 20h			;0e85
	ret nc			;0e86
	ld a,l			;0e87
	and 007h		;0e88
	ret nz			;0e8a
	ld hl,l0100h+1		;0e8b
	ld (0e390h),hl		;0e8e
	ld hl,0e396h		;0e91
	ld a,(hl)		;0e94
	inc a			;0e95
	jr nz,l0e99h		;0e96
	inc a			;0e98
l0e99h:
	ld (hl),a		;0e99
	ld a,(0e201h)		;0e9a
	ld hl,06ef2h		;0e9d
	call 05ca6h		;0ea0
	ld (0e393h),a		;0ea3
	call 06ed5h		;0ea6
	ld (0e395h),a		;0ea9
	ld a,006h		;0eac
	ld (0e392h),a		;0eae
	ld a,0ffh		;0eb1
	ld (0e37eh),a		;0eb3
	xor a			;0eb6
	call 089a8h		;0eb7
	jr nc,l0ec9h		;0eba
	xor a			;0ebc
	ld (0e390h),a		;0ebd
	ret			;0ec0
	nop			;0ec1
	add a,b			;0ec2
	add a,b			;0ec3
	ld h,b			;0ec4
	ld h,b			;0ec5
	add a,b			;0ec6
	ld h,b			;0ec7
	ld c,b			;0ec8
l0ec9h:
	ld a,(0e396h)		;0ec9
	ld (hl),a		;0ecc
	inc l			;0ecd
	ld a,(0e392h)		;0ece
	ld (hl),a		;0ed1
	inc l			;0ed2
	ld (hl),a		;0ed3
	ret			;0ed4
	ld hl,0e363h		;0ed5
	inc (hl)		;0ed8
	ld a,(0e393h)		;0ed9
	cp 00bh			;0edc
	jr z,l0ee9h		;0ede
	ld a,(hl)		;0ee0
	and 001h		;0ee1
	ld a,030h		;0ee3
	ret z			;0ee5
	xor 040h		;0ee6
	ret			;0ee8
l0ee9h:
	ld a,(hl)		;0ee9
	and 001h		;0eea
	ld a,01ch		;0eec
	ret z			;0eee
	ld a,08ch		;0eef
	ret			;0ef1
	dec bc			;0ef2
	dec bc			;0ef3
	dec bc			;0ef4
	ld sp,03131h		;0ef5
	dec bc			;0ef8
	dec bc			;0ef9
	dec bc			;0efa
	dec bc			;0efb
	dec bc			;0efc
	dec bc			;0efd
	dec bc			;0efe
	exx			;0eff
	ld hl,06f22h		;0f00
	exx			;0f03
	jp 06f17h		;0f04
	exx			;0f07
	ld hl,06f32h		;0f08
	exx			;0f0b
	jp 06f14h		;0f0c
	exx			;0f0f
	ld hl,06f22h		;0f10
	exx			;0f13
	ld hl,0e356h		;0f14
	ld a,(hl)		;0f17
	and 00fh		;0f18
	inc (hl)		;0f1a
	exx			;0f1b
	call 05ca6h		;0f1c
	exx			;0f1f
	ld c,a			;0f20
	ret			;0f21
	nop			;0f22
	nop			;0f23
	nop			;0f24
	ld bc,l0000h		;0f25
	nop			;0f28
	ld bc,l0000h		;0f29
	nop			;0f2c
	ld (bc),a		;0f2d
	nop			;0f2e
	nop			;0f2f
	nop			;0f30
	ld bc,l0000h		;0f31
	ld bc,l0000h+1		;0f34
	nop			;0f37
	ld bc,l0000h+1		;0f38
	nop			;0f3b
	ld bc,l0002h		;0f3c
	nop			;0f3f
	ld bc,03a01h		;0f40
	ld bc,0fee2h		;0f43
	add hl,bc		;0f46
	ret nc			;0f47
l0f48h:
	call 06f64h		;0f48
	jr z,l0f48h		;0f4b
	ret c			;0f4d
	ld hl,0e37ch		;0f4e
	inc (hl)		;0f51
	jr l0f48h		;0f52
	ld a,(0e320h)		;0f54
	and a			;0f57
	ret z			;0f58
	ld a,0f8h		;0f59
	ld (0f004h),a		;0f5b
l0f5eh:
	call 06f64h		;0f5e
	jr z,l0f5eh		;0f61
	ret			;0f63
	call 0415bh		;0f64
	ld a,(0e37ch)		;0f67
	ld hl,09a64h		;0f6a
	call 06f9ah		;0f6d
	jp nz,04157h		;0f70
	ld hl,0e37ch		;0f73
	inc (hl)		;0f76
	ld e,b			;0f77
	srl a			;0f78
	srl a			;0f7a
	ld b,a			;0f7c
	ld a,(0f004h)		;0f7d
	ld d,a			;0f80
	ld a,c			;0f81
	ld l,a			;0f82
	and 03fh		;0f83
	cp c			;0f85
	ld c,000h		;0f86
l0f88h:
	jr z,l0f90h		;0f88
	inc c			;0f8a
	rl l			;0f8b
	jr nc,l0f90h		;0f8d
	inc c			;0f8f
l0f90h:
	push af			;0f90
	call 04157h		;0f91
	pop af			;0f94
	call 04d1eh		;0f95
	xor a			;0f98
	ret			;0f99
	push af			;0f9a
	ld a,(0e201h)		;0f9b
	call 04b67h		;0f9e
	pop af			;0fa1
	add a,a			;0fa2
	add a,a			;0fa3
	call 0407fh		;0fa4
	ex de,hl		;0fa7
	ld e,(hl)		;0fa8
	inc hl			;0fa9
	ld a,(hl)		;0faa
	cp e			;0fab
	jr nz,l0fb5h		;0fac
	cp 0ffh			;0fae
	jr nz,l0fb5h		;0fb0
	or a			;0fb2
	scf			;0fb3
	ret			;0fb4
l0fb5h:
	and 003h		;0fb5
	ld d,a			;0fb7
	ld a,(hl)		;0fb8
	inc hl			;0fb9
	ld c,(hl)		;0fba
	inc hl			;0fbb
	ld b,(hl)		;0fbc
	ld hl,(0e203h)		;0fbd
	and a			;0fc0
	sbc hl,de		;0fc1
	ret			;0fc3
	ld hl,0e373h		;0fc4
	ld a,(hl)		;0fc7
	and a			;0fc8
	jr z,l0fe7h		;0fc9
	inc l			;0fcb
	dec (hl)		;0fcc
	ret nz			;0fcd
	ld (hl),008h		;0fce
	dec l			;0fd0
	dec (hl)		;0fd1
	ld b,000h		;0fd2
	ld d,0f0h		;0fd4
	ld a,(hl)		;0fd6
	and 003h		;0fd7
	ld hl,07006h		;0fd9
	call 0407ah		;0fdc
	ld e,(hl)		;0fdf
	ld c,000h		;0fe0
	ld a,004h		;0fe2
	jp 04d1eh		;0fe4
l0fe7h:
	ld de,0700ah		;0fe7
	ld a,(0e228h)		;0fea
	call 0407fh		;0fed
	ld a,(de)		;0ff0
	ld (hl),a		;0ff1
	inc l			;0ff2
	ld c,070h		;0ff3
	call 06ffdh		;0ff5
	ld hl,0e3b3h		;0ff8
	inc (hl)		;0ffb
	ret			;0ffc
	ld a,(0e228h)		;0ffd
	add a,a			;1000
	sub c			;1001
	neg			;1002
	ld (hl),a		;1004
	ret			;1005
	jr nz,l0f88h		;1006
	ld b,b			;1008
	ld (hl),b		;1009
	inc b			;100a
	inc b			;100b
	inc b			;100c
	dec b			;100d
	dec b			;100e
	dec b			;100f
	dec b			;1010
	ld b,006h		;1011
	ld b,006h		;1013
	ld b,007h		;1015
	rlca			;1017
	rlca			;1018
	rlca			;1019
	ld hl,0e36fh		;101a
	ld a,(hl)		;101d
	and a			;101e
	jr z,l104fh		;101f
	inc l			;1021
	dec (hl)		;1022
	ret nz			;1023
	ld a,(0e228h)		;1024
	add a,a			;1027
	add a,a			;1028
	sub 070h		;1029
	neg			;102b
	ld (hl),a		;102d
	dec l			;102e
	dec (hl)		;102f
l1030h:
	ld a,(hl)		;1030
	and 007h		;1031
	ld b,a			;1033
	ld hl,07055h		;1034
	ld a,(0e201h)		;1037
	or a			;103a
	jr nz,l1040h		;103b
	ld hl,0705dh		;103d
l1040h:
	ld a,b			;1040
	call 05ca6h		;1041
	ld e,a			;1044
	ld d,000h		;1045
	call 06f0fh		;1047
	ld a,005h		;104a
	jp 04d1eh		;104c
l104fh:
	ld (hl),008h		;104f
	inc l			;1051
	ld (hl),001h		;1052
	ret			;1054
	ex af,af'		;1055
	sub b			;1056
	ex af,af'		;1057
	ex af,af'		;1058
	sub b			;1059
	ex af,af'		;105a
	sub b			;105b
	sub b			;105c
	ld d,b			;105d
	ld h,b			;105e
	ld d,b			;105f
	ld d,b			;1060
	ld h,b			;1061
	ld d,b			;1062
	ld h,b			;1063
	ld h,b			;1064
	ld hl,0e368h		;1065
	dec (hl)		;1068
	ret p			;1069
	ld hl,0e38eh		;106a
	inc (hl)		;106d
	ld a,(hl)		;106e
	and 007h		;106f
	ld hl,07097h		;1071
	call 05ca6h		;1074
	ld hl,0e368h		;1077
	ld (hl),a		;107a
	cp 018h			;107b
	jr c,l1086h		;107d
	ld a,(0e228h)		;107f
	sub (hl)		;1082
	neg			;1083
	ld (hl),a		;1085
l1086h:
	ld a,r			;1086
	and 07fh		;1088
	add a,010h		;108a
	ld e,a			;108c
	ld d,0f8h		;108d
	ld bc,l0000h		;108f
	ld a,019h		;1092
	jp 04d1eh		;1094
	ex af,af'		;1097
	inc bc			;1098
	ld b,030h		;1099
	dec b			;109b
	inc b			;109c
	rlca			;109d
	ld b,021h		;109e
	ld a,a			;10a0
	ex (sp),hl		;10a1
	dec (hl)		;10a2
	ret p			;10a3
	ld a,(0e228h)		;10a4
	sra a			;10a7
	neg			;10a9
	add a,014h		;10ab
	ld (hl),a		;10ad
	call 0637bh		;10ae
	and 007h		;10b1
	ld hl,070c6h		;10b3
	call 05ca6h		;10b6
	ld e,a			;10b9
	ld d,0f8h		;10ba
	call 06f07h		;10bc
	ld b,000h		;10bf
	ld a,00ch		;10c1
	jp 04d1eh		;10c3
	jr nc,$+58		;10c6
	ld b,b			;10c8
	ld c,b			;10c9
	ld d,b			;10ca
	ld e,b			;10cb
	ld h,b			;10cc
	ld (hl),b		;10cd
	ld hl,0e39dh		;10ce
	dec (hl)		;10d1
	ret p			;10d2
	ld a,(0e228h)		;10d3
	cp 006h			;10d6
	ld a,040h		;10d8
	jr nc,l10deh		;10da
	ld a,050h		;10dc
l10deh:
	ld (hl),a		;10de
	call 0637bh		;10df
l10e2h:
	and 007h		;10e2
	ld b,a			;10e4
	ld hl,070c6h		;10e5
	call 05ca6h		;10e8
	ld e,a			;10eb
	ld a,(0e404h)		;10ec
	sub e			;10ef
	jr nc,l10f4h		;10f0
	neg			;10f2
l10f4h:
	cp 018h			;10f4
	jr nc,l10fch		;10f6
	ld a,b			;10f8
	inc a			;10f9
	jr l10e2h		;10fa
l10fch:
	ld d,0f8h		;10fc
	ld bc,l0000h		;10fe
	ld a,008h		;1101
	jp 04d1eh		;1103
	ld hl,0e364h		;1106
	ld a,(hl)		;1109
	dec (hl)		;110a
	and a			;110b
	ret nz			;110c
	ld a,(0e406h)		;110d
	sub 030h		;1110
	cp 090h			;1112
	ret nc			;1114
	ld a,(0e404h)		;1115
	cp 0a0h			;1118
	ret z			;111a
	ld a,r			;111b
	and 03fh		;111d
	add a,060h		;111f
	ld (hl),a		;1121
	ld b,008h		;1122
l1124h:
	push bc			;1124
	ld a,b			;1125
	ld hl,0713fh		;1126
	call 04b67h		;1129
	ld a,(0e404h)		;112c
	add a,e			;112f
	ld e,a			;1130
	ld a,(0e406h)		;1131
	add a,d			;1134
	ld d,a			;1135
	ld c,000h		;1136
	ld a,014h		;1138
	call 04d1eh		;113a
	pop bc			;113d
	djnz l1124h		;113e
	ret			;1140
	rst 18h			;1141
	ld hl,02121h		;1142
	ld hl,0dfdfh		;1145
	rst 18h			;1148
	ret nc			;1149
	nop			;114a
	nop			;114b
	jr nc,l117eh		;114c
	nop			;114e
	nop			;114f
	ret nc			;1150
	ld hl,0e361h		;1151
	dec (hl)		;1154
	ret p			;1155
	ld a,r			;1156
	and 01fh		;1158
	add a,040h		;115a
	ld (hl),a		;115c
	dec l			;115d
	inc (hl)		;115e
	ld a,(hl)		;115f
	and 003h		;1160
	ld bc,l0600h		;1162
	jr nz,l1168h		;1165
	inc c			;1167
l1168h:
	ld de,0f810h		;1168
	ld a,(0e201h)		;116b
	cp 007h			;116e
	jr nz,l117ah		;1170
	ld a,(0e360h)		;1172
	and 007h		;1175
	jr nz,l117ah		;1177
	ld d,a			;1179
l117ah:
	push bc			;117a
	push de			;117b
	ld a,00dh		;117c
l117eh:
	call 04d1eh		;117e
	pop de			;1181
	ld a,e			;1182
	add a,018h		;1183
	ld e,a			;1185
	pop bc			;1186
	djnz l117ah		;1187
	ret			;1189
	ld hl,0e378h		;118a
	dec (hl)		;118d
	ret p			;118e
	ld (hl),050h		;118f
	ld de,0f830h		;1191
	call 0719ah		;1194
	ld de,0f870h		;1197
	ld bc,l0000h		;119a
	ld a,016h		;119d
	jp 04d1eh		;119f
	ld hl,0e386h		;11a2
	dec (hl)		;11a5
	ret p			;11a6
	ld a,(0e228h)		;11a7
	cp 006h			;11aa
	ld a,00ah		;11ac
	jr c,l11b2h		;11ae
	ld a,006h		;11b0
l11b2h:
	ld (hl),a		;11b2
	inc hl			;11b3
	inc (hl)		;11b4
	ld a,(hl)		;11b5
	and 003h		;11b6
	jr nz,l11c0h		;11b8
	dec hl			;11ba
	ld c,060h		;11bb
	jp 06ffdh		;11bd
l11c0h:
	and 001h		;11c0
	or a			;11c2
	ld de,l1030h		;11c3
	jr z,l11cbh		;11c6
	ld de,09070h		;11c8
l11cbh:
	ld a,(0e201h)		;11cb
	cp 005h			;11ce
	jr nz,l11d3h		;11d0
l11d2h:
	ld e,d			;11d2
l11d3h:
	ld d,0f8h		;11d3
	ld bc,l0000h+1		;11d5
	ld a,(0e201h)		;11d8
	cp 005h			;11db
	jr z,l11e5h		;11dd
	ld hl,0e38fh		;11df
	call 06effh		;11e2
l11e5h:
	ld a,011h		;11e5
	jp 04d1eh		;11e7
	ld a,(0e20ah)		;11ea
	or a			;11ed
	ret z			;11ee
	ld hl,0e379h		;11ef
	dec (hl)		;11f2
	ret p			;11f3
	ld (hl),010h		;11f4
	inc hl			;11f6
	inc (hl)		;11f7
	ld a,(hl)		;11f8
	and 003h		;11f9
	jr nz,l1203h		;11fb
	dec hl			;11fd
	ld c,070h		;11fe
	jp 06ffdh		;1200
l1203h:
	and 001h		;1203
	or a			;1205
	ld e,020h		;1206
	jr z,l120ch		;1208
	ld e,090h		;120a
l120ch:
	ld d,0f8h		;120c
	ld bc,l0000h+1		;120e
	ld a,00fh		;1211
	jp 04d1eh		;1213
	ld hl,0e382h		;1216
	ld a,(hl)		;1219
	and a			;121a
	jp z,06fe7h		;121b
	inc l			;121e
	dec (hl)		;121f
	ret nz			;1220
	ld (hl),001h		;1221
	ld a,(0e35bh)		;1223
	inc a			;1226
	and 007h		;1227
	ld (0e35bh),a		;1229
	ld hl,07240h		;122c
	call 05ca6h		;122f
	ld hl,0e382h		;1232
	dec (hl)		;1235
	ld e,a			;1236
	ld d,0f8h		;1237
	ld c,000h		;1239
	ld a,009h		;123b
	jp 04d1eh		;123d
	djnz l11d2h		;1240
	ld d,b			;1242
	jr nc,$-126		;1243
	ld h,b			;1245
	jr z,l12b8h		;1246
	ld a,(0e201h)		;1248
	ld hl,0a0b4h		;124b
	sub 007h		;124e
	ret z			;1250
	ld hl,0a0d8h		;1251
	sub 002h		;1254
	ret z			;1256
	ld hl,0a14ah		;1257
	dec a			;125a
	ret z			;125b
	ld hl,0a1ddh		;125c
	dec a			;125f
	ret			;1260
l1261h:
	call 07248h		;1261
	ret nz			;1264
	ld (0f010h),hl		;1265
	call 0728bh		;1268
	jr z,l1261h		;126b
	ret c			;126d
	ld hl,0e3b1h		;126e
	inc (hl)		;1271
	jr l1261h		;1272
	call 07248h		;1274
	ret nz			;1277
	ld (0f010h),hl		;1278
	ld a,(0e320h)		;127b
	and a			;127e
	ret z			;127f
	ld a,0f8h		;1280
	ld (0f004h),a		;1282
l1285h:
	call 0728bh		;1285
	jr z,l1285h		;1288
	ret			;128a
	call 072b2h		;128b
	ret nz			;128e
	ld hl,0e3b1h		;128f
	inc (hl)		;1292
	ld a,b			;1293
	and 0f8h		;1294
	ld e,a			;1296
	ld a,(0f004h)		;1297
	ld d,a			;129a
	bit 3,c			;129b
	jp z,072ach		;129d
	ld a,c			;12a0
	and 007h		;12a1
	add a,029h		;12a3
	ld c,000h		;12a5
	call 04d1eh		;12a7
	xor a			;12aa
	ret			;12ab
	inc c			;12ac
	ld a,02eh		;12ad
	jp 072a7h		;12af
	call 0415bh		;12b2
	ld a,(0e3b1h)		;12b5
l12b8h:
	ld b,a			;12b8
	add a,a			;12b9
	add a,b			;12ba
	ld l,a			;12bb
	ld h,000h		;12bc
	ld de,(0f010h)		;12be
	add hl,de		;12c2
	ld c,(hl)		;12c3
	inc hl			;12c4
	ld e,(hl)		;12c5
	inc hl			;12c6
	ld b,(hl)		;12c7
	ld a,b			;12c8
	and 007h		;12c9
	ld d,a			;12cb
	call 04157h		;12cc
	ld hl,(0e203h)		;12cf
	or a			;12d2
	sbc hl,de		;12d3
	ret			;12d5
	ld a,(0e34bh)		;12d6
	or a			;12d9
	ret z			;12da
	dec a			;12db
	call 04084h		;12dc
	rst 20h			;12df
	ld (hl),d		;12e0
	ld e,073h		;12e1
	daa			;12e3
	ld (hl),h		;12e4
	jr c,$+118		;12e5
	ld a,002h		;12e7
	ld (0e34ch),a		;12e9
	ld hl,0730eh		;12ec
	ld de,0ea70h		;12ef
	ld bc,l000fh+1		;12f2
	ldir			;12f5
	ld hl,(0ea71h)		;12f7
	call 05c92h		;12fa
	ld (0ea76h),hl		;12fd
	ld hl,(0ea79h)		;1300
	call 05c92h		;1303
	ld (0ea7eh),hl		;1306
	ld hl,0e34bh		;1309
	inc (hl)		;130c
	ret			;130d
	ld bc,0b828h		;130e
	jr nc,l1313h		;1311
l1313h:
	ld a,(bc)		;1313
	nop			;1314
	nop			;1315
	ld bc,0b870h		;1316
	jr nc,l131dh		;1319
	ld a,(bc)		;131b
	nop			;131c
l131dh:
	nop			;131d
	ld a,(0e34ch)		;131e
	and a			;1321
	jp z,073aah		;1322
	ld hl,0ea70h		;1325
	call 073e0h		;1328
	ld hl,0ea78h		;132b
	call 073e0h		;132e
	ld a,(0e1c3h)		;1331
	ld c,a			;1334
	rra			;1335
	ret c			;1336
	ld a,r			;1337
	and 01fh		;1339
	add a,070h		;133b
	ld b,a			;133d
	ld a,(0e406h)		;133e
	cp b			;1341
	jr nc,l1375h		;1342
	ld a,r			;1344
	and 01eh		;1346
	ld hl,073b8h		;1348
	call 0407ah		;134b
	ld e,(hl)		;134e
	inc hl			;134f
	ld d,(hl)		;1350
	bit 1,c			;1351
	call nz,05cadh		;1353
	ld (0f012h),de		;1356
	ld hl,0f900h		;135a
	ld (0f014h),hl		;135d
	ld hl,073d8h		;1360
	ld a,r			;1363
	and 006h		;1365
	ld c,a			;1367
	ld b,000h		;1368
	add hl,bc		;136a
	ld e,(hl)		;136b
	inc hl			;136c
	ld d,(hl)		;136d
	ld a,032h		;136e
	ld c,000h		;1370
	jp 04d1eh		;1372
l1375h:
	ld a,r			;1375
	and 01eh		;1377
	ld hl,073b8h		;1379
	call 0407ah		;137c
	ld e,(hl)		;137f
	inc hl			;1380
	ld d,(hl)		;1381
	bit 1,c			;1382
	call nz,05cadh		;1384
	ld a,(0e404h)		;1387
	cp 04dh			;138a
	ld hl,09747h		;138c
	jr c,l1393h		;138f
	ld l,05bh		;1391
l1393h:
	ex de,hl		;1393
	ld (0f014h),hl		;1394
	ld a,(0e404h)		;1397
	cp 04dh			;139a
	ld hl,l04feh+2		;139c
	jr nc,l13a4h		;139f
	ld hl,0fb00h		;13a1
l13a4h:
	ld (0f012h),hl		;13a4
	jp 0736eh		;13a7
	ld de,l0100h		;13aa
	call 05b04h		;13ad
	ld a,05ah		;13b0
	ld (0e349h),a		;13b2
	jp 07309h		;13b5
	nop			;13b8
	ld bc,l0280h		;13b9
	nop			;13bc
	ld (bc),a		;13bd
	nop			;13be
	dec b			;13bf
	ld b,b			;13c0
	inc bc			;13c1
	nop			;13c2
	inc b			;13c3
	add a,b			;13c4
	inc bc			;13c5
	and b			;13c6
	ld bc,00540h		;13c7
	jr nz,l13cch		;13ca
l13cch:
	nop			;13cc
	inc bc			;13cd
	add a,b			;13ce
	inc b			;13cf
	nop			;13d0
	ld b,0c0h		;13d1
	dec b			;13d3
	ld h,b			;13d4
	ld bc,l0080h		;13d5
	ld c,a			;13d8
	adc a,a			;13d9
	ld d,l			;13da
	adc a,a			;13db
	ld b,a			;13dc
	sub a			;13dd
	ld e,e			;13de
	sub a			;13df
	ld a,(hl)		;13e0
	or a			;13e1
	ret z			;13e2
	ld a,l			;13e3
	add a,005h		;13e4
	ld l,a			;13e6
	dec (hl)		;13e7
	ret nz			;13e8
	dec l			;13e9
	dec l			;13ea
	ld a,(hl)		;13eb
	cp 010h			;13ec
	ld a,002h		;13ee
	jr c,l13f4h		;13f0
	ld a,00ah		;13f2
l13f4h:
	inc l			;13f4
	inc l			;13f5
	ld (hl),a		;13f6
	dec l			;13f7
	ld a,(hl)		;13f8
	xor 001h		;13f9
	ld (hl),a		;13fb
	inc l			;13fc
	inc l			;13fd
	ld e,(hl)		;13fe
	inc l			;13ff
	ld d,(hl)		;1400
	ld hl,07417h		;1401
	add a,a			;1404
	add a,a			;1405
	call 0407ah		;1406
	ldi			;1409
	ldi			;140b
	ld a,01eh		;140d
	call 0407fh		;140f
	ldi			;1412
	ldi			;1414
	ret			;1416
	ld d,h			;1417
	ld d,l			;1418
	ld d,(hl)		;1419
	ld d,a			;141a
	ld h,e			;141b
	ld h,h			;141c
	ld h,l			;141d
	ld h,(hl)		;141e
	ld d,(hl)		;141f
	ld d,a			;1420
	ld d,h			;1421
	ld d,l			;1422
	ld h,l			;1423
	ld h,(hl)		;1424
	ld h,e			;1425
	ld h,h			;1426
	ld hl,0e349h		;1427
	dec (hl)		;142a
	ret nz			;142b
	call 07918h		;142c
	ld hl,l0000h+1		;142f
	ld (0e3aah),hl		;1432
	jp 07309h		;1435
	call 04137h		;1438
	call 0a2a2h		;143b
	call 04157h		;143e
	ld a,(0e3aeh)		;1441
	and a			;1444
	ret z			;1445
	xor a			;1446
	ld (0e3aah),a		;1447
	inc a			;144a
	ld (0e348h),a		;144b
	ret			;144e
	ld (ix+02fh),000h	;144f
	ld (ix+002h),004h	;1453
	ld de,(0f014h)		;1457
	ld hl,(0f012h)		;145b
	jp 04f26h		;145e
	dec (ix+002h)		;1461
	jr nz,l1478h		;1464
	ld (ix+002h),004h	;1466
	ld a,(ix+031h)		;146a
	cp 003h			;146d
	ld a,003h		;146f
	jr nz,l1475h		;1471
	ld a,009h		;1473
l1475h:
	ld (ix+031h),a		;1475
l1478h:
	ld a,(0e305h)		;1478
	ld c,a			;147b
	ld l,(ix+004h)		;147c
	ld h,(ix+006h)		;147f
	call 05c92h		;1482
	ld a,(hl)		;1485
	and a			;1486
	jr z,l148dh		;1487
	cp c			;1489
	jp c,06514h		;148a
l148dh:
	bit 7,(ix+008h)		;148d
	ld de,l0020h		;1491
	jr nz,l1499h		;1494
	ld de,0ffe0h		;1496
l1499h:
	add hl,de		;1499
	ld a,(hl)		;149a
	or a			;149b
	ret z			;149c
	cp c			;149d
	jp c,06514h		;149e
	ret			;14a1
	ld a,(0e3c0h)		;14a2
	dec a			;14a5
	ret m			;14a6
	call 04084h		;14a7
	call nz,0e274h		;14aa
	ld (hl),h		;14ad
	rrca			;14ae
	ld (hl),l		;14af
	ld b,e			;14b0
	ld (hl),l		;14b1
	ld l,c			;14b2
	ld (hl),l		;14b3
	sub (hl)		;14b4
	ld (hl),l		;14b5
	sbc a,075h		;14b6
	rst 28h			;14b8
	ld (hl),l		;14b9
	inc d			;14ba
	halt			;14bb
	rra			;14bc
	halt			;14bd
	ld (hl),076h		;14be
	ld a,076h		;14c0
	add a,(hl)		;14c2
	halt			;14c3
	call 076e5h		;14c4
	ret nz			;14c7
	ld a,(0e327h)		;14c8
	or a			;14cb
	ret z			;14cc
l14cdh:
	ld hl,l0000h+1		;14cd
	ld (0e3c3h),hl		;14d0
	ld a,0f0h		;14d3
	call 04ae4h		;14d5
	ld a,037h		;14d8
	call 04ae4h		;14da
	ld hl,0e3c0h		;14dd
	inc (hl)		;14e0
	ret			;14e1
	ld hl,0e3c3h		;14e2
	dec (hl)		;14e5
	ret z			;14e6
	ld (hl),00ah		;14e7
	inc l			;14e9
	ld a,(hl)		;14ea
	inc (hl)		;14eb
	add a,a			;14ec
	add a,a			;14ed
	add a,a			;14ee
	ld hl,07738h		;14ef
	call 0407ah		;14f2
	ld de,0ee2ch		;14f5
	ld bc,00004h		;14f8
	ldir			;14fb
	ld de,0ee4ch		;14fd
	ld bc,00004h		;1500
	ldir			;1503
	ld a,(0e3c4h)		;1505
	cp 004h			;1508
	ret c			;150a
	ld a,03ch		;150b
	jr l155fh		;150d
	ld hl,0e3c3h		;150f
	dec (hl)		;1512
	jr z,l153ah		;1513
	bit 1,(hl)		;1515
	ld a,000h		;1517
	jr z,l151ch		;1519
	inc a			;151b
l151ch:
	add a,a			;151c
	add a,a			;151d
	add a,a			;151e
	add a,a			;151f
	ld hl,07758h		;1520
	call 0407ah		;1523
	ld a,004h		;1526
	ld de,0ee10h		;1528
l152bh:
	ld bc,00004h		;152b
	ldir			;152e
	ex de,hl		;1530
	ld bc,0001ch		;1531
	add hl,bc		;1534
	ex de,hl		;1535
	dec a			;1536
	jr nz,l152bh		;1537
	ret			;1539
l153ah:
	xor a			;153a
	call 0751ch		;153b
	ld hl,l000ah		;153e
	jr l14cdh		;1541
	ld hl,0e3c3h		;1543
	dec (hl)		;1546
	ret nz			;1547
	ld (hl),004h		;1548
	inc l			;154a
	ld c,(hl)		;154b
	inc (hl)		;154c
	ld b,000h		;154d
	ld hl,07565h		;154f
	add hl,bc		;1552
	ld a,(hl)		;1553
	call 0751ch		;1554
	ld a,(0e3c4h)		;1557
	cp 004h			;155a
	ret c			;155c
	ld a,01eh		;155d
l155fh:
	ld (0e3c3h),a		;155f
	jp 074ddh		;1562
	ld (bc),a		;1565
	inc bc			;1566
	inc b			;1567
	ld bc,0c321h		;1568
	ex (sp),hl		;156b
	dec (hl)		;156c
	ret nz			;156d
	ld hl,0eee4h		;156e
	ld a,005h		;1571
l1573h:
	ld d,h			;1573
	ld e,l			;1574
	inc de			;1575
	ld bc,l0017h		;1576
	ld (hl),000h		;1579
	ldir			;157b
	ld bc,l0008h+1		;157d
	add hl,bc		;1580
	dec a			;1581
	jr nz,l1573h		;1582
	call 04b17h		;1584
	ld hl,07725h		;1587
	ld de,0ef0ah		;158a
	ld bc,l000ch		;158d
	ldir			;1590
	ld a,01eh		;1592
	jr l155fh		;1594
	ld hl,0e3c3h		;1596
	dec (hl)		;1599
	ret nz			;159a
	ld a,(0e444h)		;159b
	dec a			;159e
	jr z,l15b3h		;159f
	dec a			;15a1
	jr z,l15c5h		;15a2
	ld hl,07731h		;15a4
	ld de,0ef4ch		;15a7
	ld bc,l0006h+1		;15aa
	ldir			;15ad
	ld a,01eh		;15af
	jr l155fh		;15b1
l15b3h:
	ld a,08bh		;15b3
	ld hl,03458h		;15b5
	ld de,0ef4ch		;15b8
	call 07690h		;15bb
	call 076cfh		;15be
	ld a,008h		;15c1
	jr l15d5h		;15c3
l15c5h:
	ld a,08bh		;15c5
	ld hl,03458h		;15c7
	ld de,0ef47h		;15ca
	call 07690h		;15cd
	call 076cfh		;15d0
	ld a,009h		;15d3
l15d5h:
	call 075ebh		;15d5
	ld a,03ch		;15d8
	ld (0e3c3h),a		;15da
	ret			;15dd
	ld hl,0e3c3h		;15de
	dec (hl)		;15e1
	ret nz			;15e2
l15e3h:
	ld hl,l0000h+1		;15e3
	ld (0e3aah),hl		;15e6
	ld a,00ch		;15e9
	ld (0e3c0h),a		;15eb
	ret			;15ee
	ld hl,0e3c3h		;15ef
	dec (hl)		;15f2
	jr z,l160fh		;15f3
l15f5h:
	ld hl,(0e3c5h)		;15f5
	call 04a1dh		;15f8
	ld a,(0e3c3h)		;15fb
	bit 2,a			;15fe
	ld a,00bh		;1600
	jr z,l1606h		;1602
	ld a,00dh		;1604
l1606h:
	exx			;1606
	out (c),a		;1607
	exx			;1609
	exx			;160a
	inc a			;160b
	out (c),a		;160c
	ret			;160e
l160fh:
	call 053a3h		;160f
	jr l15e3h		;1612
	ld hl,0e3c3h		;1614
	dec (hl)		;1617
	jr nz,l15f5h		;1618
	ld a,01eh		;161a
	jp 0755fh		;161c
	ld hl,0e3c3h		;161f
	dec (hl)		;1622
	ret nz			;1623
	ld a,093h		;1624
	ld hl,03498h		;1626
	ld de,0ef51h		;1629
	call 07690h		;162c
	call 076cfh		;162f
	ld a,00bh		;1632
	jr l15d5h		;1634
	ld hl,0e3c3h		;1636
	dec (hl)		;1639
	jr nz,l15f5h		;163a
	jr l160fh		;163c
	call 04137h		;163e
	call 0a2a2h		;1641
	call 04157h		;1644
	ld a,(0e3aeh)		;1647
	and a			;164a
	ret z			;164b
	xor a			;164c
	ld (0e3aah),a		;164d
	call 07656h		;1650
	jp 074ddh		;1653
	ld a,001h		;1656
	ld (0e3bfh),a		;1658
	ld hl,l0000h		;165b
	ld (0e3c7h),hl		;165e
	ld a,03ch		;1661
	jp 04ae4h		;1663
	ld hl,(0e3c7h)		;1666
	ld de,l0040h		;1669
	add hl,de		;166c
	ld (0e3c7h),hl		;166d
	ld a,008h		;1670
	ld (0e3c2h),a		;1672
	ld a,(0e406h)		;1675
	cp 0f0h			;1678
	ret c			;167a
	call 04a08h		;167b
	call 04c76h		;167e
	xor a			;1681
	ld (0e3bfh),a		;1682
	ret			;1685
	call 07666h		;1686
	ret c			;1689
	ld a,001h		;168a
	ld (0e3c1h),a		;168c
	ret			;168f
	ld (0f004h),a		;1690
	ld (0f000h),hl		;1693
	ld (0f002h),de		;1696
	ld a,(0e20fh)		;169a
	ld hl,077a8h		;169d
	call 05ca6h		;16a0
	ld hl,(0f000h)		;16a3
	call 053f9h		;16a6
	ld hl,(0f000h)		;16a9
	ld bc,0e000h		;16ac
	add hl,bc		;16af
	ld bc,l0040h		;16b0
	ld a,0a4h		;16b3
	call 00056h		;16b5
	ld b,008h		;16b8
	ld a,(0f004h)		;16ba
	ld hl,(0f002h)		;16bd
l16c0h:
	ld (hl),a		;16c0
	inc a			;16c1
	inc hl			;16c2
	djnz l16c0h		;16c3
	ld a,001h		;16c5
	call 080bdh		;16c7
	ld a,022h		;16ca
	jp 04ae4h		;16cc
	ld hl,077aeh		;16cf
	ld a,(0e20fh)		;16d2
	call 05ca6h		;16d5
	add a,a			;16d8
	sub 001h		;16d9
	ld hl,03ac0h		;16db
	call 0407ah		;16de
	ld (0e3c5h),hl		;16e1
	ret			;16e4
	ld hl,0e404h		;16e5
	ld a,(hl)		;16e8
	cp 048h			;16e9
	ld c,000h		;16eb
	jr z,l16f9h		;16ed
	ld bc,l0102h		;16ef
	jr c,l16f7h		;16f2
	ld bc,0ff01h		;16f4
l16f7h:
	add a,b			;16f7
	ld (hl),a		;16f8
l16f9h:
	ld d,a			;16f9
	inc l			;16fa
	inc l			;16fb
l16fch:
	ld a,(hl)		;16fc
	cp 050h			;16fd
	ld b,000h		;16ff
	jr z,l170fh		;1701
	ld e,001h		;1703
	ld b,008h		;1705
	jr c,l170dh		;1707
	ld e,0ffh		;1709
	ld b,004h		;170b
l170dh:
	add a,e			;170d
	ld (hl),a		;170e
l170fh:
	ld e,a			;170f
	push de			;1710
l1711h:
	push bc			;1711
	call 0a82eh		;1712
	pop bc			;1715
l1716h:
	ld a,c			;1716
l1717h:
	or b			;1717
	ld bc,0e3c2h		;1718
	ld (bc),a		;171b
l171ch:
	call 0a79ah		;171c
	pop de			;171f
	ld hl,04850h		;1720
	rst 20h			;1723
	ret			;1724
	cp e			;1725
	cp h			;1726
l1727h:
	cp l			;1727
	nop			;1728
	cp (hl)			;1729
	cp a			;172a
	ret nz			;172b
l172ch:
	pop bc			;172c
	cp l			;172d
	jp nz,0c4c3h		;172e
	push bc			;1731
	cp h			;1732
	pop bc			;1733
	add a,09bh		;1734
	push bc			;1736
	sbc a,h			;1737
	or c			;1738
	nop			;1739
	nop			;173a
	nop			;173b
l173ch:
	or d			;173c
	nop			;173d
	nop			;173e
	nop			;173f
	or c			;1740
l1741h:
	or e			;1741
	nop			;1742
	nop			;1743
	or d			;1744
	or h			;1745
	nop			;1746
	nop			;1747
	or c			;1748
	or e			;1749
	or l			;174a
	nop			;174b
	or d			;174c
	or h			;174d
	or (hl)			;174e
	nop			;174f
	or c			;1750
	or e			;1751
	or l			;1752
	or a			;1753
	or d			;1754
	or h			;1755
	or (hl)			;1756
	cp b			;1757
	jr z,l16f7h		;1758
	sbc a,(hl)		;175a
	jr c,l16fch		;175b
	and b			;175d
	and c			;175e
	and d			;175f
	and e			;1760
	and h			;1761
	and l			;1762
	and (hl)		;1763
	ld c,b			;1764
	ld h,l			;1765
	ld h,l			;1766
	ld e,b			;1767
	jr z,l1711h		;1768
	xor b			;176a
	jr c,l1716h		;176b
	xor d			;176d
	xor e			;176e
	xor h			;176f
	xor l			;1770
	xor (hl)		;1771
	xor a			;1772
	or b			;1773
	ld c,b			;1774
	cp d			;1775
	cp d			;1776
	ld e,b			;1777
	jr z,l1717h		;1778
	sbc a,(hl)		;177a
	jr c,l171ch		;177b
	and b			;177d
	and c			;177e
	xor h			;177f
	and e			;1780
	and h			;1781
	and l			;1782
	or b			;1783
	ld c,b			;1784
	ld h,l			;1785
	ld h,l			;1786
	ld e,b			;1787
	jr z,l1727h		;1788
	xor b			;178a
	jr c,l172ch		;178b
	and b			;178d
	xor e			;178e
	xor h			;178f
	and e			;1790
	and h			;1791
	xor a			;1792
	or b			;1793
	ld c,b			;1794
	ld h,l			;1795
	cp d			;1796
	ld e,b			;1797
	jr z,l1741h		;1798
	xor b			;179a
	jr c,l173ch		;179b
	xor d			;179d
	xor e			;179e
	xor h			;179f
	and e			;17a0
	xor (hl)		;17a1
	xor a			;17a2
	or b			;17a3
	ld c,b			;17a4
	cp d			;17a5
	cp d			;17a6
	ld e,b			;17a7
	ld a,(bc)		;17a8
	inc c			;17a9
	dec b			;17aa
	ex af,af'		;17ab
	djnz $+8		;17ac
	add hl,bc		;17ae
	inc b			;17af
	dec b			;17b0
	ld (bc),a		;17b1
	inc bc			;17b2
	ld b,003h		;17b3
	inc b			;17b5
	ld hl,03b00h		;17b6
	call 04a1dh		;17b9
	exx			;17bc
	ld a,(0e400h)		;17bd
	inc a			;17c0
	jr z,l17e6h		;17c1
	ld hl,0e304h		;17c3
	ld a,(hl)		;17c6
	add a,01ch		;17c7
	and 07ch		;17c9
	ld (hl),a		;17cb
	ld e,a			;17cc
	ld d,020h		;17cd
	jp 0cd0bh		;17cf
	nop			;17d2
	nop			;17d3
	nop			;17d4
	nop			;17d5
	nop			;17d6
	nop			;17d7
	nop			;17d8
	nop			;17d9
	nop			;17da
	nop			;17db
	nop			;17dc
	nop			;17dd
	nop			;17de
	nop			;17df
	nop			;17e0
	nop			;17e1
	nop			;17e2
	nop			;17e3
	nop			;17e4
	nop			;17e5
l17e6h:
	ld hl,0e280h		;17e6
	ld b,080h		;17e9
	outi			;17eb
	jp nz,077ebh		;17ed
	ret			;17f0
	ld hl,03800h		;17f1
	call 04a1dh		;17f4
	exx			;17f7
	ld hl,0ed00h		;17f8
	ld a,(0e34eh)		;17fb
	or a			;17fe
	jr z,l1808h		;17ff
	ld de,l0000h+1		;1801
	call m,05cadh		;1804
	add hl,de		;1807
l1808h:
	ld a,(0e202h)		;1808
	jp 0ccach		;180b
	nop			;180e
	nop			;180f
	nop			;1810
	nop			;1811
	nop			;1812
	nop			;1813
	nop			;1814
	nop			;1815
	nop			;1816
	nop			;1817
	nop			;1818
	nop			;1819
	nop			;181a
	ret			;181b
	ld hl,0ea98h		;181c
	ld a,(hl)		;181f
	dec a			;1820
	ret m			;1821
	call 04084h		;1822
	cpl			;1825
	ld a,b			;1826
	ld (hl),d		;1827
	ld a,b			;1828
	call 0e378h		;1829
	ld a,b			;182c
	dec bc			;182d
	ld a,c			;182e
	ld hl,0ea98h		;182f
	inc (hl)		;1832
	inc l			;1833
	ld (hl),050h		;1834
	inc l			;1836
	ld (hl),0a0h		;1837
	inc l			;1839
	ld (hl),001h		;183a
	inc l			;183c
	ld (hl),000h		;183d
	xor a			;183f
	ld (0e345h),a		;1840
	ld (0e348h),a		;1843
	ld a,003h		;1846
	ld (0e34dh),a		;1848
	ld a,064h		;184b
	ld (0ea12h),a		;184d
	call 04b51h		;1850
l1853h:
	ld hl,0786ah		;1853
l1856h:
	ld de,0ee57h		;1856
	ldi			;1859
	ldi			;185b
	ld de,0ee77h		;185d
	ldi			;1860
	ldi			;1862
	ret			;1864
l1865h:
	ld hl,0786eh		;1865
	jr l1856h		;1868
	sub (hl)		;186a
	and d			;186b
	xor (hl)		;186c
	cp d			;186d
	sub l			;186e
	and c			;186f
	xor l			;1870
	cp c			;1871
	ld a,(0e345h)		;1872
	or a			;1875
	jr nz,l188bh		;1876
	call 078aeh		;1878
	ld a,(0ea12h)		;187b
	cp 020h			;187e
	jr nc,l1853h		;1880
	ld a,(0e1c3h)		;1882
	bit 2,a			;1885
	jr z,l1853h		;1887
	jr l1865h		;1889
l188bh:
	ld de,l04feh+2		;188b
	call 05b04h		;188e
	call 07865h		;1891
	xor a			;1894
	ld (0e345h),a		;1895
	ld a,078h		;1898
	ld (0ea9dh),a		;189a
	ld a,039h		;189d
	call 04ae4h		;189f
	ld a,a			;18a2
	ld (0e300h),a		;18a3
	call 07918h		;18a6
l18a9h:
	ld hl,0ea98h		;18a9
	inc (hl)		;18ac
	ret			;18ad
	ld hl,0ea9bh		;18ae
	dec (hl)		;18b1
	ret nz			;18b2
	ld a,(0ea12h)		;18b3
	cp 020h			;18b6
	ld a,012h		;18b8
	jr nc,l18beh		;18ba
	ld a,00ch		;18bc
l18beh:
	ld (hl),a		;18be
	inc l			;18bf
	inc (hl)		;18c0
	bit 1,(hl)		;18c1
	ld de,09c38h		;18c3
	jr z,l18cah		;18c6
	ld e,063h		;18c8
l18cah:
	jp 0938fh		;18ca
	ld hl,0ea9dh		;18cd
	dec (hl)		;18d0
	jr z,l18dbh		;18d1
	ld a,(hl)		;18d3
	rra			;18d4
	and 001h		;18d5
	ld (0e34eh),a		;18d7
	ret			;18da
l18dbh:
	ld hl,l0000h+1		;18db
	ld (0e3aah),hl		;18de
	jr l18a9h		;18e1
	ld a,(0e1c3h)		;18e3
	and 003h		;18e6
	dec a			;18e8
	cp 002h			;18e9
	jr nz,l18eeh		;18eb
	xor a			;18ed
l18eeh:
	ld (0e34eh),a		;18ee
	call 04137h		;18f1
	call 0a2a2h		;18f4
	call 04157h		;18f7
	ld a,(0e3aeh)		;18fa
	and a			;18fd
	ret z			;18fe
	xor a			;18ff
	ld (0e3aah),a		;1900
	ld (0e34eh),a		;1903
	call 07656h		;1906
	jr l18a9h		;1909
	call 07666h		;190b
	ret c			;190e
	xor a			;190f
	ld (0ea98h),a		;1910
	inc a			;1913
	ld (0e348h),a		;1914
	ret			;1917
	ld hl,0e600h		;1918
	ld de,0e601h		;191b
	ld bc,0039fh		;191e
	ld (hl),000h		;1921
	ldir			;1923
	xor a			;1925
	ld (0e352h),a		;1926
	ld (0e355h),a		;1929
	ld (0e36dh),a		;192c
	ret			;192f
	ld hl,0e570h		;1930
	ld de,0fff0h		;1933
	ld bc,l0808h		;1936
l1939h:
	ld a,(hl)		;1939
	and a			;193a
	jr nz,l1941h		;193b
	dec c			;193d
	add hl,de		;193e
	djnz l1939h		;193f
l1941h:
	ld a,c			;1941
	ld (0e3b2h),a		;1942
	ret			;1945
	call 06878h		;1946
	ret nz			;1949
	ld ix,0e500h		;194a
	ld a,(0e3b2h)		;194e
	and a			;1951
	ret z			;1952
	ld b,a			;1953
l1954h:
	push bc			;1954
	call 07961h		;1955
	pop bc			;1958
	ld de,l000fh+1		;1959
	add ix,de		;195c
	djnz l1954h		;195e
	ret			;1960
	ld a,(ix+000h)		;1961
	and a			;1964
	ret z			;1965
	call 079afh		;1966
	call 07981h		;1969
	ld a,(0e320h)		;196c
	and a			;196f
	ret z			;1970
	ld a,(ix+006h)		;1971
	sub 008h		;1974
	jr c,l197ch		;1976
	ld (ix+006h),a		;1978
	ret			;197b
l197ch:
	ld (ix+000h),000h	;197c
	ret			;1980
	ld a,(ix+000h)		;1981
	cp 002h			;1984
	ret z			;1986
	cp 004h			;1987
	ret z			;1989
	cp 006h			;198a
	ret z			;198c
	cp 007h			;198d
	ret z			;198f
	cp 00bh			;1990
	ret z			;1992
	cp 00eh			;1993
	ret z			;1995
	cp 010h			;1996
	ret z			;1998
	ld a,(ix+006h)		;1999
	cp 0e0h			;199c
	ld a,0ffh		;199e
	jr nc,l19abh		;19a0
	ld a,(ix+000h)		;19a2
	dec a			;19a5
	ret z			;19a6
	cp 002h			;19a7
	ret z			;19a9
	xor a			;19aa
l19abh:
	ld (ix+00dh),a		;19ab
	ret			;19ae
	dec a			;19af
	call 04084h		;19b0
	adc a,c			;19b3
	or h			;19b4
	xor (hl)		;19b5
	ld a,c			;19b6
	xor (hl)		;19b7
	ld a,c			;19b8
	and l			;19b9
	cp b			;19ba
	sbc a,b			;19bb
	cp c			;19bc
	cp h			;19bd
	cp e			;19be
	ld b,c			;19bf
	and c			;19c0
	dec l			;19c1
	ld a,d			;19c2
	xor l			;19c3
	or e			;19c4
	ld a,c			;19c5
	or a			;19c6
	push hl			;19c7
	ld a,c			;19c8
	xor 079h		;19c9
	rst 30h			;19cb
	ld a,c			;19cc
	out (079h),a		;19cd
	xor (hl)		;19cf
	ld a,c			;19d0
	call c,0cd79h		;19d1
	scf			;19d4
	ld b,c			;19d5
	call 0be62h		;19d6
	jp 04157h		;19d9
	call 04137h		;19dc
	call 0bb06h		;19df
	jp 04157h		;19e2
	call 04137h		;19e5
	call 0a3c5h		;19e8
	jp 04157h		;19eb
	call 04137h		;19ee
	call 0a4e2h		;19f1
	jp 04157h		;19f4
	call 04137h		;19f7
	call 0a82eh		;19fa
	jp 04157h		;19fd
	ld ix,0e600h		;1a00
	ld b,00ch		;1a04
l1a06h:
	ld a,(ix+02fh)		;1a06
	and a			;1a09
	jr nz,l1a26h		;1a0a
	ld a,(ix+000h)		;1a0c
	and a			;1a0f
	jr z,l1a26h		;1a10
	cp 01dh			;1a12
	jr z,l1a1eh		;1a14
	cp 020h			;1a16
	jr z,l1a1eh		;1a18
	cp 022h			;1a1a
	jr nz,l1a26h		;1a1c
l1a1eh:
	call 09317h		;1a1e
	jr nc,l1a26h		;1a21
	call 06514h		;1a23
l1a26h:
	ld de,l0040h		;1a26
	add ix,de		;1a29
	djnz l1a06h		;1a2b
	ret			;1a2d
	ld a,(0e201h)		;1a2e
	call 04084h		;1a31
	ld c,h			;1a34
	ld a,d			;1a35
	ld (hl),b		;1a36
	ld a,d			;1a37
	and b			;1a38
	ld a,d			;1a39
	or h			;1a3a
	ld a,d			;1a3b
	and 07ah		;1a3c
	dec l			;1a3e
	ld a,e			;1a3f
	ld h,a			;1a40
	ld a,e			;1a41
	sbc a,d			;1a42
	ld a,e			;1a43
	rst 8			;1a44
	ld a,e			;1a45
	inc c			;1a46
	ld a,h			;1a47
	defb 0fdh,07bh,00ch ;illegal sequence	;1a48
	ld a,h			;1a4b
	ld a,(0e205h)		;1a4c
	dec a			;1a4f
	jr z,l1a5fh		;1a50
	ld a,(0e327h)		;1a52
	and a			;1a55
	ret z			;1a56
	ld a,001h		;1a57
	ld (0ea98h),a		;1a59
	jp 07b62h		;1a5c
l1a5fh:
	ld a,(0e348h)		;1a5f
	or a			;1a62
	ret z			;1a63
	xor a			;1a64
	ld (0e348h),a		;1a65
	inc a			;1a68
	ld (0e1e6h),a		;1a69
	ld (0e1d6h),a		;1a6c
sub_1a6fh:
	ret			;1a6f
	ld a,(0e205h)		;1a70
	dec a			;1a73
	jp z,07be3h		;1a74
	ld a,(0e327h)		;1a77
	or a			;1a7a
	ret z			;1a7b
	call 07b62h		;1a7c
	ld l,001h		;1a7f
	xor a			;1a81
	ld (0e345h),a		;1a82
	ld (0e342h),a		;1a85
	ld h,a			;1a88
	ld (0e340h),hl		;1a89
	ld l,a			;1a8c
	ld (0e346h),hl		;1a8d
	ld a,001h		;1a90
	ld (0e34dh),a		;1a92
	ld a,008h		;1a95
	ld (0e343h),a		;1a97
	ld a,070h		;1a9a
	ld (0e305h),a		;1a9c
	ret			;1a9f
	ld a,(0e205h)		;1aa0
	dec a			;1aa3
	jp z,07be3h		;1aa4
	ld a,(0e327h)		;1aa7
	and a			;1aaa
	ret z			;1aab
	ld l,004h		;1aac
	call 07a81h		;1aae
	jp 07b62h		;1ab1
	ld a,(0e3d0h)		;1ab4
	and a			;1ab7
	jr z,l1ad3h		;1ab8
	ld a,(0e327h)		;1aba
	and a			;1abd
	ret z			;1abe
	ld bc,l0409h		;1abf
	ld a,(0e20ah)		;1ac2
	bit 0,a			;1ac5
	jr z,l1acbh		;1ac7
	dec b			;1ac9
	dec b			;1aca
l1acbh:
	ld a,b			;1acb
	ld (0e22ah),a		;1acc
	ld a,c			;1acf
	jp 07c7eh		;1ad0
l1ad3h:
	ld a,(0e205h)		;1ad3
	dec a			;1ad6
	jp z,07be3h		;1ad7
	ld a,(0e327h)		;1ada
	and a			;1add
	ret z			;1ade
	ld l,004h		;1adf
	call 07a81h		;1ae1
	jr l1b62h		;1ae4
	ld a,(0e205h)		;1ae6
	dec a			;1ae9
	jr z,l1b03h		;1aea
	dec a			;1aec
	jr z,l1b15h		;1aed
	dec a			;1aef
	jr z,l1b21h		;1af0
	dec a			;1af2
	jp z,07be3h		;1af3
	ld a,(0e327h)		;1af6
	and a			;1af9
	ret z			;1afa
	ld hl,l0258h		;1afb
	ld (0e3a8h),hl		;1afe
	jr l1b62h		;1b01
l1b03h:
	ld hl,(0e3a8h)		;1b03
	dec hl			;1b06
	ld (0e3a8h),hl		;1b07
	ld a,l			;1b0a
	or h			;1b0b
	ret nz			;1b0c
	ld hl,00220h		;1b0d
	ld (0e325h),hl		;1b10
	jr l1b62h		;1b13
l1b15h:
	ld a,(0e327h)		;1b15
	and a			;1b18
	ret z			;1b19
	ld l,005h		;1b1a
	call 07a81h		;1b1c
	jr l1b62h		;1b1f
l1b21h:
	ld a,(0e342h)		;1b21
	and a			;1b24
	ret z			;1b25
	ld l,002h		;1b26
	call 07a81h		;1b28
	jr l1b62h		;1b2b
	ld a,(0e205h)		;1b2d
	dec a			;1b30
	jr z,l1b48h		;1b31
	dec a			;1b33
	jr z,l1b58h		;1b34
	dec a			;1b36
	jp z,07be3h		;1b37
	ld a,(0e327h)		;1b3a
	and a			;1b3d
	ret z			;1b3e
	xor a			;1b3f
	ld (0e348h),a		;1b40
	call 0a017h		;1b43
	jr l1b62h		;1b46
l1b48h:
	ld hl,0e348h		;1b48
	ld a,(hl)		;1b4b
	or a			;1b4c
	ret z			;1b4d
	xor a			;1b4e
	ld (hl),a		;1b4f
	ld de,l0020h		;1b50
	call 07bdbh		;1b53
	jr l1b62h		;1b56
l1b58h:
	ld a,(0e327h)		;1b58
	and a			;1b5b
	ret z			;1b5c
	ld l,002h		;1b5d
	call 07a81h		;1b5f
l1b62h:
	ld hl,0e205h		;1b62
	inc (hl)		;1b65
	ret			;1b66
	ld a,(0e3d0h)		;1b67
	and a			;1b6a
	jr z,l1b78h		;1b6b
	ld a,(0e327h)		;1b6d
	and a			;1b70
	ret z			;1b71
	ld bc,l070ah		;1b72
	jp 07ac2h		;1b75
l1b78h:
	ld a,(0e205h)		;1b78
	dec a			;1b7b
	jr z,l1b8dh		;1b7c
	ld a,(0e327h)		;1b7e
	and a			;1b81
	ret z			;1b82
	xor a			;1b83
	ld (0e348h),a		;1b84
	inc a			;1b87
	ld (0e34bh),a		;1b88
	jr l1b62h		;1b8b
l1b8dh:
	ld hl,0e348h		;1b8d
	ld a,(hl)		;1b90
	or a			;1b91
	ret z			;1b92
	xor a			;1b93
	ld (hl),a		;1b94
	ld (0e34bh),a		;1b95
	jr l1c11h		;1b98
	ld a,(0e205h)		;1b9a
	dec a			;1b9d
	jr z,l1bb2h		;1b9e
	dec a			;1ba0
	jr z,l1bc3h		;1ba1
	dec a			;1ba3
	jr z,l1beah		;1ba4
	ld a,(0e327h)		;1ba6
	and a			;1ba9
	ret z			;1baa
	ld a,001h		;1bab
	ld (0e3beh),a		;1bad
	jr l1b62h		;1bb0
l1bb2h:
	ld a,(0e38dh)		;1bb2
	and a			;1bb5
	ret z			;1bb6
	xor a			;1bb7
	ld (0e3beh),a		;1bb8
	ld de,l0020h		;1bbb
	call 07bdbh		;1bbe
	jr l1b62h		;1bc1
l1bc3h:
	ld a,(0e327h)		;1bc3
	and a			;1bc6
	ret z			;1bc7
	ld l,003h		;1bc8
	call 07a81h		;1bca
	jr l1b62h		;1bcd
	ld hl,0e3c1h		;1bcf
	ld a,(hl)		;1bd2
	or a			;1bd3
	ret z			;1bd4
	xor a			;1bd5
	ld (hl),a		;1bd6
	dec l			;1bd7
	ld (hl),a		;1bd8
	jr l1c11h		;1bd9
	ld hl,(0e325h)		;1bdb
	add hl,de		;1bde
	ld (0e325h),hl		;1bdf
	ret			;1be2
	ld a,(0e342h)		;1be3
	and a			;1be6
	ret z			;1be7
	jr l1c11h		;1be8
l1beah:
	ld a,(0e342h)		;1bea
	and a			;1bed
	ret z			;1bee
	ld a,(0e400h)		;1bef
	and a			;1bf2
	ret m			;1bf3
	xor a			;1bf4
	ld (0e1d6h),a		;1bf5
	inc a			;1bf8
	ld (0e1e6h),a		;1bf9
	ret			;1bfc
	ld a,(0e3d0h)		;1bfd
	and a			;1c00
	jr z,l1c0ch		;1c01
	ld a,(0e327h)		;1c03
	and a			;1c06
	ret z			;1c07
	ld a,00bh		;1c08
	jr l1c7eh		;1c0a
l1c0ch:
	ld a,(0e327h)		;1c0c
	and a			;1c0f
	ret z			;1c10
l1c11h:
	ld a,(0e400h)		;1c11
	and a			;1c14
	ret m			;1c15
	ld a,001h		;1c16
	ld (0e1dah),a		;1c18
	ret			;1c1b
	ld a,(0e22bh)		;1c1c
	and a			;1c1f
	jr nz,l1c2dh		;1c20
	ld a,(0e201h)		;1c22
	cp 008h			;1c25
	jr z,l1c3fh		;1c27
	jr nc,l1c44h		;1c29
	jr l1c6eh		;1c2b
l1c2dh:
	xor a			;1c2d
	ld (0e22bh),a		;1c2e
	inc a			;1c31
	ld (0e1dbh),a		;1c32
	call 07c56h		;1c35
	ld (0e22ah),a		;1c38
	ld a,008h		;1c3b
	jr l1c7eh		;1c3d
l1c3fh:
	ld a,002h		;1c3f
	ld (0e1dbh),a		;1c41
l1c44h:
	ld hl,0e206h		;1c44
	inc (hl)		;1c47
	jr nz,l1c4bh		;1c48
	dec (hl)		;1c4a
l1c4bh:
	ld de,l0080h		;1c4b
	call 07fa4h		;1c4e
	ld a,(0e22ah)		;1c51
	jr l1c7eh		;1c54
	ld a,(0e201h)		;1c56
	ld hl,0e20ah		;1c59
	bit 0,(hl)		;1c5c
	jr z,l1c66h		;1c5e
	dec a			;1c60
	ret p			;1c61
	ld a,001h		;1c62
	inc (hl)		;1c64
	ret			;1c65
l1c66h:
	inc a			;1c66
	cp 008h			;1c67
	ret c			;1c69
	ld a,006h		;1c6a
	inc (hl)		;1c6c
	ret			;1c6d
l1c6eh:
	ld hl,0e206h		;1c6e
	inc (hl)		;1c71
	jr nz,l1c75h		;1c72
	dec (hl)		;1c74
l1c75h:
	ld de,l0080h		;1c75
	call 07fa4h		;1c78
	call 07c56h		;1c7b
l1c7eh:
	ld (0e201h),a		;1c7e
	ld a,043h		;1c81
	call 04ae4h		;1c83
	xor a			;1c86
	ld (0e205h),a		;1c87
	ld (0e342h),a		;1c8a
	jp 060d1h		;1c8d
	ld a,(0e300h)		;1c90
	and a			;1c93
	ret nz			;1c94
	ld a,(0e400h)		;1c95
	and a			;1c98
	ret m			;1c99
	ld a,(0e3d0h)		;1c9a
	and a			;1c9d
	ret nz			;1c9e
	ld a,(0e3aah)		;1c9f
	or a			;1ca2
	ret nz			;1ca3
	ld a,(0e3c0h)		;1ca4
	or a			;1ca7
	ret nz			;1ca8
	ld a,(0e34fh)		;1ca9
	or a			;1cac
	ret nz			;1cad
	ld a,(0e190h)		;1cae
	bit 0,a			;1cb1
	ret nz			;1cb3
	ld a,(0e201h)		;1cb4
	ld hl,07ce6h		;1cb7
	call 04b67h		;1cba
	ld c,e			;1cbd
	ld b,d			;1cbe
	ld hl,(0e203h)		;1cbf
l1cc2h:
	ld a,(bc)		;1cc2
	ld e,a			;1cc3
	inc bc			;1cc4
	ld a,(bc)		;1cc5
	ld d,a			;1cc6
	inc bc			;1cc7
	rst 20h			;1cc8
	jr z,l1ce1h		;1cc9
	jr c,l1cd0h		;1ccb
	inc bc			;1ccd
	jr l1cc2h		;1cce
l1cd0h:
	ld a,(bc)		;1cd0
	ld hl,0e0a0h		;1cd1
	cp (hl)			;1cd4
	ret z			;1cd5
	cp 0ffh			;1cd6
	ret z			;1cd8
	call 04ae4h		;1cd9
	ld a,0f0h		;1cdc
	jp 04ae4h		;1cde
l1ce1h:
	ld a,0f1h		;1ce1
	jp 04ae4h		;1ce3
	cp 07ch			;1ce6
	inc b			;1ce8
	ld a,l			;1ce9
	dec c			;1cea
	ld a,l			;1ceb
	ld d,07dh		;1cec
	jr z,l1d6dh		;1cee
	rra			;1cf0
	ld a,l			;1cf1
	ld sp,03a7dh		;1cf2
	ld a,l			;1cf5
	ld b,e			;1cf6
	ld a,l			;1cf7
	ld c,c			;1cf8
	ld a,l			;1cf9
	ld c,c			;1cfa
	ld a,l			;1cfb
	ld c,c			;1cfc
	ld a,l			;1cfd
	or b			;1cfe
	ld bc,0ff29h		;1cff
	rst 38h			;1d02
	dec (hl)		;1d03
	add a,b			;1d04
	nop			;1d05
	dec hl			;1d06
	and b			;1d07
	ld bc,0ff2ch		;1d08
	rst 38h			;1d0b
	inc (hl)		;1d0c
	add a,h			;1d0d
	nop			;1d0e
	dec hl			;1d0f
	sbc a,001h		;1d10
	dec l			;1d12
	rst 38h			;1d13
	rst 38h			;1d14
	inc (hl)		;1d15
	ld h,b			;1d16
	nop			;1d17
	dec hl			;1d18
	jp m,02e01h		;1d19
	rst 38h			;1d1c
	rst 38h			;1d1d
	inc (hl)		;1d1e
	add a,l			;1d1f
	nop			;1d20
	dec hl			;1d21
	sbc a,d			;1d22
	ld bc,0ff30h		;1d23
	rst 38h			;1d26
	inc (hl)		;1d27
	add a,l			;1d28
	nop			;1d29
	dec hl			;1d2a
	jp m,03101h		;1d2b
	rst 38h			;1d2e
	rst 38h			;1d2f
	inc (hl)		;1d30
	ld h,b			;1d31
	nop			;1d32
	dec hl			;1d33
	cp d			;1d34
	ld bc,0ff32h		;1d35
	rst 38h			;1d38
	inc (hl)		;1d39
	ld h,b			;1d3a
	nop			;1d3b
	dec hl			;1d3c
	jp c,03302h		;1d3d
	rst 38h			;1d40
	rst 38h			;1d41
	inc (hl)		;1d42
	sub b			;1d43
	nop			;1d44
	dec (hl)		;1d45
	rst 38h			;1d46
	rst 38h			;1d47
	ld b,e			;1d48
	ld c,a			;1d49
	ld bc,0ff36h		;1d4a
	rst 38h			;1d4d
	ld hl,(0003ah)		;1d4e
	call po,0f83dh		;1d51
	ld a,(0e3c0h)		;1d54
	or a			;1d57
	ret nz			;1d58
	ld a,(0e1c8h)		;1d59
	and 020h		;1d5c
	ret z			;1d5e
	ld hl,0e330h		;1d5f
	ld a,(hl)		;1d62
	or a			;1d63
	ret z			;1d64
	ld (0e33dh),a		;1d65
	ld hl,0e333h		;1d68
	add a,l			;1d6b
	ld l,a			;1d6c
l1d6dh:
	ld a,(hl)		;1d6d
	or a			;1d6e
	ret m			;1d6f
	xor a			;1d70
	ld (0e330h),a		;1d71
	ld hl,053a3h		;1d74
	push hl			;1d77
	ld hl,07d8dh		;1d78
	ld a,(0e20fh)		;1d7b
	call 04b67h		;1d7e
	ex de,hl		;1d81
	ld a,(0e33dh)		;1d82
	call 04085h		;1d85
	ld a,006h		;1d88
	jp 04ae4h		;1d8a
	sbc a,e			;1d8d
	ld a,l			;1d8e
	and a			;1d8f
	ld a,l			;1d90
	or l			;1d91
	ld a,l			;1d92
	or l			;1d93
	ld a,l			;1d94
	or l			;1d95
	ld a,l			;1d96
	or l			;1d97
	ld a,l			;1d98
	push bc			;1d99
	ld a,l			;1d9a
	push bc			;1d9b
	ld a,l			;1d9c
	exx			;1d9d
	ld a,l			;1d9e
	ld (06b7eh),a		;1d9f
	ld a,(hl)		;1da2
	ccf			;1da3
	ld a,a			;1da4
	ld h,(hl)		;1da5
	ld a,a			;1da6
	add a,a			;1da7
	ld a,a			;1da8
	exx			;1da9
	ld a,l			;1daa
	ld (06b7eh),a		;1dab
	ld a,(hl)		;1dae
	exx			;1daf
	ld a,(hl)		;1db0
	ccf			;1db1
	ld a,a			;1db2
	ld h,(hl)		;1db3
	ld a,a			;1db4
	add a,a			;1db5
	ld a,a			;1db6
	exx			;1db7
	ld a,l			;1db8
	ld (06b7eh),a		;1db9
	ld a,(hl)		;1dbc
	exx			;1dbd
	ld a,(hl)		;1dbe
	dec bc			;1dbf
	ld a,a			;1dc0
	ccf			;1dc1
	ld a,a			;1dc2
	ld h,(hl)		;1dc3
	ld a,a			;1dc4
	add a,a			;1dc5
	ld a,a			;1dc6
	exx			;1dc7
	ld a,l			;1dc8
	ld (04f7eh),a		;1dc9
	ld a,(hl)		;1dcc
	ld l,e			;1dcd
	ld a,(hl)		;1dce
	exx			;1dcf
	ld a,(hl)		;1dd0
	dec bc			;1dd1
	ld a,a			;1dd2
	ccf			;1dd3
	ld a,a			;1dd4
	ld h,(hl)		;1dd5
	ld a,a			;1dd6
	add a,a			;1dd7
	ld a,a			;1dd8
	ld hl,0e20bh		;1dd9
	ld a,(hl)		;1ddc
	or a			;1ddd
	jr z,l1e23h		;1dde
	ld (hl),000h		;1de0
	ld hl,0e210h		;1de2
	ld de,0e330h		;1de5
	ld bc,l000dh		;1de8
	ldir			;1deb
	xor a			;1ded
	ld (0e330h),a		;1dee
	ld de,0e430h		;1df1
	ld bc,l0006h+1		;1df4
	ldir			;1df7
	ld a,(hl)		;1df9
	or a			;1dfa
	jr z,l1e05h		;1dfb
	ld (0e401h),a		;1dfd
	ld a,002h		;1e00
	ld (0e400h),a		;1e02
l1e05h:
	inc l			;1e05
	ld a,(hl)		;1e06
	ld (0e402h),a		;1e07
	inc l			;1e0a
	ld a,(hl)		;1e0b
	ld (0e40bh),a		;1e0c
	dec a			;1e0f
	ret m			;1e10
	jr z,l1e20h		;1e11
	ld a,001h		;1e13
	ld (0e40bh),a		;1e15
	call 0aa43h		;1e18
	ld a,002h		;1e1b
	ld (0e40bh),a		;1e1d
l1e20h:
	jp 0aa43h		;1e20
l1e23h:
	ld hl,0e334h		;1e23
	inc (hl)		;1e26
	ld a,(hl)		;1e27
	cp 007h			;1e28
	jr c,l1e2eh		;1e2a
	ld (hl),0ffh		;1e2c
l1e2eh:
	ld (0e402h),a		;1e2e
	ret			;1e31
	xor a			;1e32
	ld (0e435h),a		;1e33
	call 0804ah		;1e36
	ld hl,0e335h		;1e39
	inc (hl)		;1e3c
	ld a,(hl)		;1e3d
	cp c			;1e3e
	jr c,l1e43h		;1e3f
	ld (hl),0ffh		;1e41
l1e43h:
	ld (0e433h),a		;1e43
	call 07fb3h		;1e46
	ld de,l0080h		;1e49
	jp 07fa4h		;1e4c
	xor a			;1e4f
	ld (0e431h),a		;1e50
	ld (0e432h),a		;1e53
	ld (0e434h),a		;1e56
	ld (0e435h),a		;1e59
	inc a			;1e5c
	ld (0e436h),a		;1e5d
	ld (0e430h),a		;1e60
	ld a,0ffh		;1e63
	ld (0e336h),a		;1e65
	jp 07fc7h		;1e68
	call 0804ah		;1e6b
	ld a,(0e33dh)		;1e6e
	ld hl,0e333h		;1e71
	add a,l			;1e74
	ld l,a			;1e75
	inc (hl)		;1e76
	ld a,(hl)		;1e77
	cp c			;1e78
	jr c,l1e7dh		;1e79
	ld (hl),0ffh		;1e7b
l1e7dh:
	dec a			;1e7d
	jr z,l1ea5h		;1e7e
	dec a			;1e80
	jr z,l1e8ah		;1e81
	call 07ff4h		;1e83
	ld a,006h		;1e86
	jr l1e95h		;1e88
l1e8ah:
	call 07ec6h		;1e8a
	call 04482h		;1e8d
	call 07fffh		;1e90
	ld a,005h		;1e93
l1e95h:
	ld (0e432h),a		;1e95
	xor a			;1e98
	ld (0e430h),a		;1e99
	ld (0e431h),a		;1e9c
	ld de,l0080h		;1e9f
	jp 07fa4h		;1ea2
l1ea5h:
	xor a			;1ea5
	ld (0e432h),a		;1ea6
	ld (0e434h),a		;1ea9
	ld (0e435h),a		;1eac
	ld (0e436h),a		;1eaf
	inc a			;1eb2
	ld (0e430h),a		;1eb3
	ld (0e431h),a		;1eb6
	call 07fd8h		;1eb9
	call 07ec2h		;1ebc
	jp 0448eh		;1ebf
	ld a,00eh		;1ec2
	jr l1ec8h		;1ec4
	ld a,003h		;1ec6
l1ec8h:
	ld hl,0e470h		;1ec8
	ld de,l000fh+1		;1ecb
	ld b,009h		;1ece
l1ed0h:
	cp (hl)			;1ed0
	jr nz,l1ed5h		;1ed1
	ld (hl),000h		;1ed3
l1ed5h:
	add hl,de		;1ed5
	djnz l1ed0h		;1ed6
	ret			;1ed8
	ld hl,0e430h		;1ed9
	ld a,(hl)		;1edc
	cp 002h			;1edd
	jr nz,l1ee3h		;1edf
	ld (hl),001h		;1ee1
l1ee3h:
	xor a			;1ee3
	ld (0e431h),a		;1ee4
	ld (0e435h),a		;1ee7
	ld (0e436h),a		;1eea
	call 0800bh		;1eed
	call 0804ah		;1ef0
	ld a,(0e33dh)		;1ef3
	ld hl,0e333h		;1ef6
	add a,l			;1ef9
	ld l,a			;1efa
	inc (hl)		;1efb
	ld a,(hl)		;1efc
	ld (0e434h),a		;1efd
	cp c			;1f00
	jr c,l1f05h		;1f01
	ld (hl),0ffh		;1f03
l1f05h:
	ld de,l0080h		;1f05
	jp 07fa4h		;1f08
	ld hl,0e430h		;1f0b
	ld a,(hl)		;1f0e
	cp 002h			;1f0f
	jr nz,l1f15h		;1f11
	ld (hl),001h		;1f13
l1f15h:
	xor a			;1f15
	ld (0e433h),a		;1f16
	ld (0e431h),a		;1f19
	ld (0e434h),a		;1f1c
	ld (0e436h),a		;1f1f
	call 0804ah		;1f22
	ld a,(0e33dh)		;1f25
	ld hl,0e333h		;1f28
	add a,l			;1f2b
	ld l,a			;1f2c
	inc (hl)		;1f2d
	ld a,(hl)		;1f2e
	ld (0e435h),a		;1f2f
	cp c			;1f32
	jr c,l1f37h		;1f33
	ld (hl),0ffh		;1f35
l1f37h:
	call 08028h		;1f37
	ld de,l0080h		;1f3a
	jr l1fa4h		;1f3d
	xor a			;1f3f
	ld (0e430h),a		;1f40
	ld (0e431h),a		;1f43
	ld (0e436h),a		;1f46
	call 0804ah		;1f49
	ld a,(0e33dh)		;1f4c
	ld hl,0e333h		;1f4f
	add a,l			;1f52
	ld l,a			;1f53
	inc (hl)		;1f54
	ld a,(hl)		;1f55
	ld (0e432h),a		;1f56
	cp c			;1f59
	jr c,l1f5eh		;1f5a
	ld (hl),0ffh		;1f5c
l1f5eh:
	call 08041h		;1f5e
	ld de,l0040h		;1f61
	jr l1fa4h		;1f64
	ld a,(0e33dh)		;1f66
	ld hl,0e333h		;1f69
	add a,l			;1f6c
	ld l,a			;1f6d
	inc (hl)		;1f6e
	ld a,(hl)		;1f6f
	ld (0e40bh),a		;1f70
	cp 002h			;1f73
	jr c,l1f79h		;1f75
	ld (hl),0ffh		;1f77
l1f79h:
	call 0aa43h		;1f79
	ld de,l0080h		;1f7c
	jr l1fa4h		;1f7f
l1f81h:
	ld a,001h		;1f81
	ld (0e445h),a		;1f83
	ret			;1f86
	ld a,(0e33dh)		;1f87
	ld hl,0e333h		;1f8a
	add a,l			;1f8d
	ld l,a			;1f8e
	ld (hl),0ffh		;1f8f
	ld a,(0e400h)		;1f91
	cp 003h			;1f94
	jr z,l1f81h		;1f96
	ld hl,l0a02h		;1f98
	ld (0e400h),hl		;1f9b
	ld de,l0100h		;1f9e
	ld de,l0100h		;1fa1
l1fa4h:
	ld hl,(0e227h)		;1fa4
	add hl,de		;1fa7
	ld a,h			;1fa8
	cp 010h			;1fa9
	jr c,l1fafh		;1fab
	ld h,00fh		;1fad
l1fafh:
	ld (0e227h),hl		;1faf
	ret			;1fb2
	ld a,(0e20fh)		;1fb3
	cp 002h			;1fb6
	ret c			;1fb8
	cp 006h			;1fb9
	jr c,l1fc2h		;1fbb
	xor a			;1fbd
	ld (0e339h),a		;1fbe
	ret			;1fc1
l1fc2h:
	xor a			;1fc2
	ld (0e338h),a		;1fc3
	ret			;1fc6
	xor a			;1fc7
	ld (0e33ah),a		;1fc8
l1fcbh:
	xor a			;1fcb
	ld (0e339h),a		;1fcc
l1fcfh:
	xor a			;1fcf
	ld (0e338h),a		;1fd0
l1fd3h:
	xor a			;1fd3
	ld (0e337h),a		;1fd4
	ret			;1fd7
	ld a,(0e20fh)		;1fd8
	or a			;1fdb
	jr z,l1fd3h		;1fdc
	cp 001h			;1fde
	jr z,l1fcfh		;1fe0
	cp 006h			;1fe2
	jr c,l1fcbh		;1fe4
	xor a			;1fe6
	ld (0e33ah),a		;1fe7
	ld (0e339h),a		;1fea
	ld (0e338h),a		;1fed
	ld (0e336h),a		;1ff0
	ret			;1ff3
	ld a,(0e20fh)		;1ff4
	cp 007h			;1ff7
	ret c			;1ff9
	xor a			;1ffa
	ld (0e33ah),a		;1ffb
	ret			;1ffe
	defb 03ah		;1fff
