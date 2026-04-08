; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x0000 -o docs/reverse-engineering/issues/issue-188/gradius2e_banks/bank10.asm /tmp/gradius2e_bank10.bin

	org 00000h

l0000h:
	ld a,(0e1d7h)		;0000
l0003h:
	dec a			;0003
l0004h:
	call 04084h		;0004
l0007h:
	ld b,l			;0007
l0008h:
	and b			;0008
	adc a,b			;0009
	and b			;000a
	cp c			;000b
	and b			;000c
	push bc			;000d
l000eh:
	and b			;000e
	jp m,024a0h		;000f
	and c			;0012
l0013h:
	ld l,e			;0013
	and c			;0014
	ld (hl),a		;0015
	and c			;0016
	xor b			;0017
	and c			;0018
	or h			;0019
	and c			;001a
	ret pe			;001b
	and c			;001c
	rlca			;001d
	and d			;001e
	push bc			;001f
	and d			;0020
	ld e,l			;0021
	and e			;0022
	ld (hl),d		;0023
	and e			;0024
	add a,(hl)		;0025
	and e			;0026
	rst 0			;0027
	and e			;0028
l0029h:
	rst 38h			;0029
	and e			;002a
l002bh:
	dec bc			;002b
	and h			;002c
l002dh:
	ld c,h			;002d
	and h			;002e
	ld e,d			;002f
	and h			;0030
	ld l,0a5h		;0031
	ld c,h			;0033
	and l			;0034
	ld a,d			;0035
	and l			;0036
	sbc a,b			;0037
	and l			;0038
l0039h:
	ld (hl),a		;0039
	and e			;003a
	xor (hl)		;003b
l003ch:
	and l			;003c
	rst 28h			;003d
	and l			;003e
	daa			;003f
l0040h:
	and (hl)		;0040
	ld a,h			;0041
	and e			;0042
	inc sp			;0043
	and (hl)		;0044
	ld de,l02dbh		;0045
	call 05d89h		;0048
	jp c,0a7a2h		;004b
	call 0a056h		;004e
l0051h:
	ld hl,0e1d7h		;0051
	inc (hl)		;0054
	ret			;0055
l0056h:
	ld hl,l0008h		;0056
sub_0059h:
	ld c,003h		;0059
l005bh:
	xor a			;005b
l005ch:
	ld b,0feh		;005c
l005eh:
	jp 0a717h		;005e
	ld hl,l1008h		;0061
l0064h:
	ld c,001h		;0064
	jr l005bh		;0066
	ld hl,l0008h		;0068
	jr l0080h		;006b
	ld c,002h		;006d
	ld hl,00980h		;006f
	ld b,0d0h		;0072
	jr l0084h		;0074
	ld c,003h		;0076
l0078h:
	ld hl,l0008h		;0078
	jr l0082h		;007b
	ld hl,l1008h		;007d
l0080h:
	ld c,001h		;0080
l0082h:
	ld b,0feh		;0082
l0084h:
	ld a,003h		;0084
l0086h:
	jr l005eh		;0086
	call 0a7a2h		;0088
	ld a,(0e490h)		;008b
	and a			;008e
l008fh:
	ret nz			;008f
	call 04a10h		;0090
l0093h:
	call 05e14h		;0093
	call 069ceh		;0096
	ld de,03843h		;0099
	ld hl,0acabh		;009c
	ld c,01bh		;009f
	call 0a67bh		;00a1
	call 0a07dh		;00a4
	ld a,(l002bh)		;00a7
	and 00fh		;00aa
	ld de,0a933h		;00ac
	jr z,l00b4h		;00af
	ld de,0b151h		;00b1
l00b4h:
	call 04a6bh		;00b4
	jr l0051h		;00b7
	ld de,004bbh		;00b9
	call 05d89h		;00bc
	jp nc,0a04eh		;00bf
	jp 0a7a2h		;00c2
	call 0a7a2h		;00c5
	ld a,(0e490h)		;00c8
	and a			;00cb
	ret nz			;00cc
	ld (0e496h),a		;00cd
	call 04a10h		;00d0
	call 05e14h		;00d3
	call 069f8h		;00d6
	ld de,03866h		;00d9
	ld hl,0adbdh		;00dc
	ld c,015h		;00df
	call 0a67bh		;00e1
	call 0a07dh		;00e4
	ld a,(l002bh)		;00e7
	and 00fh		;00ea
	ld de,0a981h		;00ec
	jr z,l00f4h		;00ef
	ld de,0b1aah		;00f1
l00f4h:
	call 04a6bh		;00f4
l00f7h:
	jp 0a051h		;00f7
	ld de,l06d7h		;00fa
	call 05d89h		;00fd
l0100h:
	jp nc,0a04eh		;0100
	call 0a7a2h		;0103
	ld a,(0e1c3h)		;0106
	and 007h		;0109
	ret nz			;010b
	ld a,(0e496h)		;010c
	xor 001h		;010f
	ld (0e496h),a		;0111
	ld hl,0b0abh		;0114
	jr z,l011ch		;0117
	ld hl,0b0b1h		;0119
l011ch:
	ld c,004h		;011c
	ld de,038ech		;011e
	jp 0a67bh		;0121
	call 0a7a2h		;0124
	ld a,(0e490h)		;0127
	and a			;012a
	ret nz			;012b
l012ch:
	call 04a10h		;012c
	call 05e14h		;012f
	call 06a0fh		;0132
	ld de,0382eh		;0135
	ld hl,0ae67h		;0138
	ld c,00eh		;013b
	call 0a67bh		;013d
	ld de,03902h		;0140
	ld hl,0ae96h		;0143
	ld c,008h		;0146
	call 0a67bh		;0148
	ld de,0394ah		;014b
	ld hl,0aea8h		;014e
	ld c,006h		;0151
	call 0a67bh		;0153
	call 0a07dh		;0156
	ld a,(l002bh)		;0159
	and 00fh		;015c
	ld de,0a9cdh		;015e
	jr z,l0166h		;0161
	ld de,0b214h		;0163
l0166h:
	call 04a6bh		;0166
l0169h:
	jr l00f7h		;0169
	ld de,008b7h		;016b
	call 05d89h		;016e
	jp c,0a7a2h		;0171
	jp 0a04eh		;0174
	call 0a7a2h		;0177
	ld a,(0e490h)		;017a
	and a			;017d
	ret nz			;017e
	call 04a10h		;017f
	call 05e14h		;0182
	call 06a1bh		;0185
	ld de,03801h		;0188
	ld hl,0afe6h		;018b
	ld c,01fh		;018e
	call 0a67bh		;0190
	call 0a07dh		;0193
	ld a,(l002bh)		;0196
	and 00fh		;0199
	ld de,0aa0fh		;019b
	jr z,l01a3h		;019e
	ld de,0b24eh		;01a0
l01a3h:
	call 04a6bh		;01a3
	jr l0169h		;01a6
	ld de,l0a5bh		;01a8
	call 05d89h		;01ab
	jp nc,0a04eh		;01ae
	jp 0a7a2h		;01b1
	call 0a7a2h		;01b4
	ld a,(0e490h)		;01b7
	and a			;01ba
	ret nz			;01bb
	call 04a10h		;01bc
	call 05e14h		;01bf
	ld de,0ab29h		;01c2
	call 0a245h		;01c5
	ld a,(l002bh)		;01c8
	and 00fh		;01cb
	call nz,0a2aah		;01cd
	call 0a432h		;01d0
	call 0a06dh		;01d3
	ld a,(l002bh)		;01d6
	and 00fh		;01d9
	ld de,0aa50h		;01db
	jr z,l01e3h		;01de
l01e0h:
	ld de,0b29eh		;01e0
l01e3h:
	call 04a6bh		;01e3
l01e6h:
	jr l0169h		;01e6
	ld de,00bc3h		;01e8
	call 05d89h		;01eb
	jp nc,0a04eh		;01ee
	call 0a7a2h		;01f1
	ld a,(0e1c3h)		;01f4
	bit 3,a			;01f7
	jp nz,0a441h		;01f9
	ld de,038ach		;01fc
l01ffh:
	ld hl,0afe3h		;01ff
	ld c,009h		;0202
	jp 0a67bh		;0204
l0207h:
	call 0a7a2h		;0207
	ld a,(0e490h)		;020a
	and a			;020d
	ret nz			;020e
	call 04a10h		;020f
	call 05e14h		;0212
	ld a,(l002bh)		;0215
	and 00fh		;0218
	push af			;021a
	call z,0a242h		;021b
	pop af			;021e
	call nz,0a2aah		;021f
	call 069f8h		;0222
	ld a,001h		;0225
	ld hl,l1008h		;0227
	ld b,05fh		;022a
	ld c,a			;022c
	call 0a717h		;022d
	ld a,(l002bh)		;0230
	and 00fh		;0233
	ld de,0aab4h		;0235
	jr z,l023dh		;0238
	ld de,0b332h		;023a
l023dh:
	call 04a6bh		;023d
	jr l01e6h		;0240
	ld de,0ab02h		;0242
	ld hl,02800h		;0245
	ld a,001h		;0248
	ld b,002h		;024a
	ld (0e498h),a		;024c
	ld (0e49ah),hl		;024f
	ld a,b			;0252
	ld (0e49dh),a		;0253
l0256h:
	ld a,(de)		;0256
	or a			;0257
	ret z			;0258
	push de			;0259
	call 0a29eh		;025a
	ld de,0e500h		;025d
	ld bc,l0008h		;0260
	call sub_0059h		;0263
	pop de			;0266
	inc de			;0267
	ld a,(de)		;0268
	push de			;0269
	push de			;026a
	call 0a29eh		;026b
	ld de,0e500h		;026e
	ld bc,l0008h		;0271
	exx			;0274
	ld a,(0e49dh)		;0275
	ld b,a			;0278
	call 04a3ah		;0279
	pop de			;027c
	ld a,(de)		;027d
	call 0a29eh		;027e
	ld a,(0e498h)		;0281
	bit 0,a			;0284
	jr z,l029ah		;0286
	xor a			;0288
	ld de,02000h		;0289
	sbc hl,de		;028c
	ld bc,l0008h		;028e
	ld a,(0e49dh)		;0291
	ld d,a			;0294
	ld a,0f0h		;0295
	call 04a4ch		;0297
l029ah:
	pop de			;029a
	inc de			;029b
	jr l0256h		;029c
	ld h,000h		;029e
	ld l,a			;02a0
	add hl,hl		;02a1
	add hl,hl		;02a2
	add hl,hl		;02a3
	ld de,(0e49ah)		;02a4
	add hl,de		;02a8
	ret			;02a9
	ld hl,03008h		;02aa
	ld de,0e500h		;02ad
	ld bc,00128h		;02b0
	call sub_0059h		;02b3
	ld de,0e500h		;02b6
	ld hl,02b08h		;02b9
	ld bc,00128h		;02bc
	exx			;02bf
	ld b,002h		;02c0
	jp 04a3ah		;02c2
	call 0a7a2h		;02c5
	ld a,(0e490h)		;02c8
	and a			;02cb
	ret nz			;02cc
	ld de,l0c77h		;02cd
	call 05d89h		;02d0
	ret c			;02d3
	xor a			;02d4
	ld (0e496h),a		;02d5
	ld hl,0ed00h		;02d8
l02dbh:
	ld de,0aebdh		;02db
	call 0a6ebh		;02de
	jp 0a240h		;02e1
	call 0a671h		;02e4
	ld a,(0e496h)		;02e7
	ld de,0a352h		;02ea
	call 0407fh		;02ed
	ld a,(de)		;02f0
	call 0a319h		;02f1
	ld b,002h		;02f4
	ld c,017h		;02f6
	ld a,c			;02f8
	ld (0e497h),a		;02f9
l02fch:
	ld a,(0e497h)		;02fc
l02ffh:
	ld c,a			;02ff
l0300h:
	xor a			;0300
	ld (0f000h),a		;0301
	push hl			;0304
	push de			;0305
	push bc			;0306
l0307h:
	call 0a691h		;0307
	pop bc			;030a
	pop de			;030b
	pop hl			;030c
	ld a,c			;030d
	call 0407fh		;030e
	ld a,020h		;0311
	call 0407ah		;0313
	djnz l02fch		;0316
	ret			;0318
	ld c,a			;0319
	add a,002h		;031a
	call 0a334h		;031c
	ld de,03800h		;031f
	add hl,de		;0322
	ld de,l0004h+1		;0323
l0326h:
	add hl,de		;0326
	ex de,hl		;0327
	push de			;0328
	ld a,c			;0329
	call 0a342h		;032a
	ld de,0ed00h		;032d
	add hl,de		;0330
	pop de			;0331
	ex de,hl		;0332
	ret			;0333
	ld h,000h		;0334
	ld l,a			;0336
	add hl,hl		;0337
l0338h:
	add hl,hl		;0338
	add hl,hl		;0339
	add hl,hl		;033a
	add hl,hl		;033b
	ret			;033c
	ld h,000h		;033d
	ld l,a			;033f
	jr l0338h		;0340
	ld h,000h		;0342
	ld l,a			;0344
	ld c,l			;0345
	ld b,h			;0346
	add hl,hl		;0347
	add hl,hl		;0348
	add hl,hl		;0349
	ld e,l			;034a
	ld d,h			;034b
	add hl,hl		;034c
	add hl,de		;034d
	and a			;034e
	sbc hl,bc		;034f
	ret			;0351
	ld a,(bc)		;0352
	add hl,bc		;0353
	ex af,af'		;0354
	rlca			;0355
	ld b,005h		;0356
	ld b,007h		;0358
	ex af,af'		;035a
	add hl,bc		;035b
	ld a,(bc)		;035c
	ld a,(0e1c3h)		;035d
	and 007h		;0360
	ret nz			;0362
	ld a,(0e496h)		;0363
	inc a			;0366
	cp 006h			;0367
	jp z,0a051h		;0369
	ld (0e496h),a		;036c
l036fh:
	jp 0a2e4h		;036f
	ld de,00cefh		;0372
	jr l037fh		;0375
	ld de,01c2bh		;0377
	jr l037fh		;037a
	ld de,l1f37h		;037c
l037fh:
	call 05d89h		;037f
	ret c			;0382
	jp 0a04eh		;0383
	ld a,(0e1c3h)		;0386
	and 00fh		;0389
	ret nz			;038b
	ld a,(0e496h)		;038c
	inc a			;038f
	cp 00bh			;0390
	jr z,l0399h		;0392
	ld (0e496h),a		;0394
	jr l036fh		;0397
l0399h:
	ld a,009h		;0399
	ld (0e496h),a		;039b
	call 0a051h		;039e
l03a1h:
	ld a,(0e496h)		;03a1
	ld de,0b0b7h		;03a4
	call 04b60h		;03a7
	ex de,hl		;03aa
	ld a,(0e496h)		;03ab
	ld de,0b0cbh		;03ae
	call 0407fh		;03b1
	ld a,(de)		;03b4
	ld b,a			;03b5
	ld a,002h		;03b6
	ld c,a			;03b8
	call 0a717h		;03b9
	ld a,(0e496h)		;03bc
	call 0a319h		;03bf
sub_03c2h:
	ld b,001h		;03c2
	jp 0a2f6h		;03c4
	ld a,(0e1c3h)		;03c7
	and 003h		;03ca
	ret nz			;03cc
	call 0a7a2h		;03cd
	ld a,(0e490h)		;03d0
	and a			;03d3
	ret nz			;03d4
	ld a,(0e496h)		;03d5
	dec a			;03d8
	jp m,0a3e1h		;03d9
	ld (0e496h),a		;03dc
	jr l03a1h		;03df
	ld a,001h		;03e1
	ld hl,l1300h		;03e3
	ld b,09ch		;03e6
	ld c,a			;03e8
	call 0a717h		;03e9
	ld a,(l002bh)		;03ec
	and 00fh		;03ef
	ld de,0aad9h		;03f1
	jr z,l03f9h		;03f4
	ld de,0b34eh		;03f6
l03f9h:
	call 04a6bh		;03f9
	jp 0a051h		;03fc
	ld de,00fbfh		;03ff
	call 05d89h		;0402
	jp nc,0a04eh		;0405
	jp 0a7a2h		;0408
	call 0a7a2h		;040b
	ld a,(0e490h)		;040e
	and a			;0411
	ret nz			;0412
	call 04a10h		;0413
	call 05e14h		;0416
	call 0a432h		;0419
	call 0a07dh		;041c
	ld a,(l002bh)		;041f
	and 00fh		;0422
	ld de,0ab2eh		;0424
	jr z,l042ch		;0427
	ld de,0b39fh		;0429
l042ch:
	call 04a6bh		;042c
l042fh:
	jp 0a051h		;042f
	call 05ea3h		;0432
	ld hl,00170h		;0435
l0438h:
	xor a			;0438
	ld bc,l0008h		;0439
	ld d,002h		;043c
	call 04a4ch		;043e
	ld hl,0af6dh		;0441
	ld de,03885h		;0444
	ld c,017h		;0447
	jp 0a67bh		;0449
	call 0a7a2h		;044c
	ld a,(0e490h)		;044f
	and a			;0452
	ret nz			;0453
	xor a			;0454
	ld (0e496h),a		;0455
	jr l042fh		;0458
	ld de,l128fh		;045a
	call 05d89h		;045d
	jp nc,0a515h		;0460
	ld a,(0e1c3h)		;0463
	and 007h		;0466
	ret nz			;0468
	call 0a474h		;0469
	cp 00ch			;046c
	ret z			;046e
	inc a			;046f
l0470h:
	ld (0e496h),a		;0470
	ret			;0473
	call 0a4dfh		;0474
	call 0a4a2h		;0477
	ld a,(0e496h)		;047a
	cp 003h			;047d
	push af			;047f
	call nc,0a4b4h		;0480
	pop af			;0483
	ret			;0484
	call 0a490h		;0485
	call 0a4a2h		;0488
	call 0a4b4h		;048b
	jr l04c3h		;048e
	ld a,(0e1c3h)		;0490
	and 007h		;0493
	ret nz			;0495
	call 0a4dfh		;0496
	ld a,(0e496h)		;0499
	inc a			;049c
	cp 01eh			;049d
	ret z			;049f
	jr l0470h		;04a0
	call 0a4d7h		;04a2
	ld de,03925h		;04a5
	bit 0,a			;04a8
	jr z,l04d2h		;04aa
	ld hl,0b13bh		;04ac
l04afh:
	ld c,005h		;04af
	jp 0a67bh		;04b1
	call 0a4d7h		;04b4
	ld de,0398ah		;04b7
	bit 0,a			;04ba
	jr z,l04d2h		;04bc
	ld hl,0b142h		;04be
	jr l04afh		;04c1
l04c3h:
	call 0a4d7h		;04c3
	ld de,038d8h		;04c6
	bit 0,a			;04c9
	jr z,l04d2h		;04cb
l04cdh:
	ld hl,0b148h		;04cd
	jr l04afh		;04d0
l04d2h:
	ld hl,0b14eh		;04d2
	jr l04afh		;04d5
	ld a,(0e1c3h)		;04d7
	rrca			;04da
	rrca			;04db
	rrca			;04dc
	rrca			;04dd
	ret			;04de
	ld de,0b0e1h		;04df
	ld a,(0e496h)		;04e2
	ld c,a			;04e5
	add a,a			;04e6
	add a,c			;04e7
	call 0407fh		;04e8
	ld a,(de)		;04eb
	ld b,a			;04ec
	inc de			;04ed
	ld a,(de)		;04ee
	ld c,a			;04ef
	inc de			;04f0
	ld a,(de)		;04f1
	call 0a334h		;04f2
	ld e,c			;04f5
	ld d,000h		;04f6
	add hl,de		;04f8
	ld de,03800h		;04f9
	add hl,de		;04fc
	ld a,b			;04fd
	ld bc,l0000h+1		;04fe
	jp l0056h		;0501
l0504h:
	ld de,03925h		;0504
	call 0a4ach		;0507
	ld de,0398ah		;050a
	call 0a4beh		;050d
	ld de,038d8h		;0510
	jr l04cdh		;0513
l0515h:
	ld a,(l002bh)		;0515
	and 00fh		;0518
	jp nz,0a051h		;051a
	ld de,0ab72h		;051d
l0520h:
	call 0a5a4h		;0520
	push de			;0523
	call 0a07dh		;0524
	pop de			;0527
	call 04a6bh		;0528
	jp 0a051h		;052b
	ld de,014abh		;052e
	call 05d89h		;0531
	jr nc,l053ch		;0534
	call 0a7a2h		;0536
	jp 0a485h		;0539
l053ch:
	call 0a504h		;053c
	ld a,(l002bh)		;053f
	and 00fh		;0542
	jp nz,0a051h		;0544
	ld de,0abd1h		;0547
	jr l0520h		;054a
	ld de,l17f3h		;054c
	call 05d89h		;054f
	jp nc,0a04eh		;0552
	jp 0a7a2h		;0555
	call 04a10h		;0558
	call 05e14h		;055b
	call 0bfcdh		;055e
l0561h:
	ld hl,0b586h		;0561
	ld de,03906h		;0564
	ld c,014h		;0567
	call 0a67bh		;0569
	jp 0a07dh		;056c
	call 04a10h		;056f
	call 05e0ch		;0572
	call 0bfd6h		;0575
	jr l0561h		;0578
	call 0a7a2h		;057a
	ld a,(0e490h)		;057d
sub_0580h:
	and a			;0580
	ret nz			;0581
	call 0a558h		;0582
	ld de,0ac19h		;0585
	ld a,(l002bh)		;0588
	and 00fh		;058b
	jr z,l0592h		;058d
	ld de,0b3f0h		;058f
l0592h:
	call 04a6bh		;0592
	jp 0a051h		;0595
	ld de,l1ca3h		;0598
	call 05d89h		;059b
	jp nc,0a04eh		;059e
	jp 0a7a2h		;05a1
	ld bc,l0100h		;05a4
	ld hl,03a00h		;05a7
	xor a			;05aa
	jp l0056h		;05ab
	call 0a7a2h		;05ae
	ld a,(0e490h)		;05b1
	and a			;05b4
	ret nz			;05b5
	call 04a10h		;05b6
	call 05e14h		;05b9
	call 05ed7h		;05bc
	xor a			;05bf
	ld (0e496h),a		;05c0
	call 0a051h		;05c3
	ld hl,0ed00h		;05c6
	ld de,0b06fh		;05c9
	call 0a6ebh		;05cc
	ld hl,0b0d5h		;05cf
	ld (0f000h),hl		;05d2
	ld hl,l0809h		;05d5
	ld (0f002h),hl		;05d8
	ld hl,l01ffh+2		;05db
	ld (0f004h),hl		;05de
	ld hl,0b0dbh		;05e1
	ld (0f006h),hl		;05e4
	ld a,008h		;05e7
	ld (0f008h),a		;05e9
	jp 0b685h		;05ec
	ld a,(0e1c3h)		;05ef
	and 003h		;05f2
	ret nz			;05f4
	call 0a7a2h		;05f5
	call 0a863h		;05f8
	ld a,(0e490h)		;05fb
	ld hl,0e498h		;05fe
	or (hl)			;0601
	ret nz			;0602
	ld a,(0e496h)		;0603
	inc a			;0606
	cp 002h			;0607
	jr z,l0611h		;0609
	ld (0e496h),a		;060b
	jp 0a5cfh		;060e
l0611h:
	call 0a07dh		;0611
	ld a,(l002bh)		;0614
	and 00fh		;0617
	ld de,0ac70h		;0619
	jr z,l0621h		;061c
	ld de,0b41dh		;061e
l0621h:
	call 04a6bh		;0621
	jp 0a051h		;0624
	ld de,l1febh		;0627
	call 05d89h		;062a
	jp c,0a7a2h		;062d
	jp 0a04eh		;0630
	call 0a7a2h		;0633
	ld a,(0e490h)		;0636
	and a			;0639
	ret nz			;063a
	call 04a10h		;063b
	xor a			;063e
	ld (0e1d7h),a		;063f
	ret			;0642
	ld a,03fh		;0643
	call 04ae4h		;0645
	ld hl,l0000h		;0648
	ld (0f0f7h),hl		;064b
	ld a,(l002bh)		;064e
	and 00fh		;0651
	jr nz,l0669h		;0653
	ld a,001h		;0655
	ld (0e1d7h),a		;0657
	call 04a10h		;065a
	call 05e14h		;065d
	call 0a076h		;0660
	ld de,0a8b9h		;0663
	jp 04a6bh		;0666
l0669h:
	ld a,002h		;0669
	ld (0e1d7h),a		;066b
	jp 0a090h		;066e
	ld hl,03800h		;0671
	ld bc,l01ffh+1		;0674
	xor a			;0677
	jp l0056h		;0678
	ld a,c			;067b
	ld (0f000h),a		;067c
	ex de,hl		;067f
	ld (0f001h),hl		;0680
l0683h:
	ld a,(de)		;0683
	inc de			;0684
	ld b,a			;0685
	and a			;0686
	ret z			;0687
	jp p,0a6a8h		;0688
	res 7,b			;068b
	cp 080h			;068d
	jr z,l06d2h		;068f
l0691h:
	ld a,(de)		;0691
	and a			;0692
	inc de			;0693
	call nz,0004dh		;0694
	inc hl			;0697
	dec c			;0698
	call z,0a6b7h		;0699
	ld a,(0f000h)		;069c
	and a			;069f
	jr z,l0691h		;06a0
	inc a			;06a2
	ret z			;06a3
	djnz l0691h		;06a4
	jr l0683h		;06a6
l06a8h:
	ld a,(de)		;06a8
	and a			;06a9
	call nz,0004dh		;06aa
	inc hl			;06ad
	dec c			;06ae
	call z,0a6b7h		;06af
	djnz l06a8h		;06b2
l06b4h:
	inc de			;06b4
	jr l0683h		;06b5
	push af			;06b7
	ld hl,(0f001h)		;06b8
	ld a,020h		;06bb
	call 0407ah		;06bd
	ld (0f001h),hl		;06c0
	ld a,(0f000h)		;06c3
	and a			;06c6
	jr z,l06cch		;06c7
	ld c,a			;06c9
	pop af			;06ca
l06cbh:
	ret			;06cb
l06cch:
	pop af			;06cc
	ld hl,0f000h		;06cd
	dec (hl)		;06d0
	ret			;06d1
l06d2h:
	ld a,(de)		;06d2
	ld b,a			;06d3
	inc de			;06d4
	ld a,(de)		;06d5
	exx			;06d6
l06d7h:
	ld d,a			;06d7
	exx			;06d8
l06d9h:
	and a			;06d9
	call nz,0004dh		;06da
	inc hl			;06dd
	dec c			;06de
	call z,0a6b7h		;06df
	exx			;06e2
	ld a,d			;06e3
	inc a			;06e4
	ld d,a			;06e5
	exx			;06e6
	djnz l06d9h		;06e7
	jr l06b4h		;06e9
l06ebh:
	ld a,(de)		;06eb
	inc de			;06ec
	and a			;06ed
	ret z			;06ee
	cp 080h			;06ef
	jr z,l070ah		;06f1
	ld b,a			;06f3
	and 07fh		;06f4
	cp b			;06f6
	jr z,l0702h		;06f7
	ld b,a			;06f9
l06fah:
	ld a,(de)		;06fa
	inc de			;06fb
	ld (hl),a		;06fc
	inc hl			;06fd
	djnz l06fah		;06fe
	jr l06ebh		;0700
l0702h:
	ld a,(de)		;0702
	inc de			;0703
l0704h:
	ld (hl),a		;0704
	inc hl			;0705
	djnz l0704h		;0706
	jr l06ebh		;0708
l070ah:
	ld a,(de)		;070a
	ld b,a			;070b
	inc de			;070c
l070dh:
	ld a,(de)		;070d
	inc de			;070e
	ld c,a			;070f
l0710h:
	ld (hl),c		;0710
l0711h:
	inc c			;0711
	inc hl			;0712
	djnz l0710h		;0713
	jr l06ebh		;0715
	ld (0e495h),a		;0717
	ld a,b			;071a
	ld (0e494h),a		;071b
	ld a,c			;071e
	ld (0e4a0h),a		;071f
	ld (0e492h),hl		;0722
	xor a			;0725
	ld (0e491h),a		;0726
	inc a			;0729
	ld (0e490h),a		;072a
	ld a,(0e495h)		;072d
	call 04084h		;0730
	adc a,(hl)		;0733
	and a			;0734
	adc a,a			;0735
	and a			;0736
	sbc a,c			;0737
	and a			;0738
	adc a,a			;0739
	and a			;073a
	ld a,b			;073b
	ld (0e49ch),a		;073c
	ld (0e49ah),hl		;073f
	xor a			;0742
	ld (0e499h),a		;0743
	inc a			;0746
	ld (0e498h),a		;0747
	jp 0a794h		;074a
l074dh:
	call 0a765h		;074d
	ld hl,(0e492h)		;0750
	ld a,(0e4a0h)		;0753
	ld d,a			;0756
l0757h:
	xor a			;0757
	jp 04a4ch		;0758
l075bh:
	call 0a771h		;075b
	ld hl,(0e49ah)		;075e
	ld d,002h		;0761
	jr l0757h		;0763
	ld a,(0e494h)		;0765
l0768h:
	ld l,a			;0768
	ld h,000h		;0769
	add hl,hl		;076b
	add hl,hl		;076c
	add hl,hl		;076d
	ld c,l			;076e
	ld b,h			;076f
	ret			;0770
	ld a,(0e49ch)		;0771
	jr l0768h		;0774
	call 0a765h		;0776
	ld hl,(0e492h)		;0779
	ld de,0e500h		;077c
	jp sub_0059h		;077f
	call 0a771h		;0782
	ld hl,(0e49ah)		;0785
	ld de,0e800h		;0788
	jp sub_0059h		;078b
	ret			;078e
	call 0a776h		;078f
	jr l074dh		;0792
	call 0a782h		;0794
	jr l075bh		;0797
	call 0a78fh		;0799
	ld a,007h		;079c
	ld (0e491h),a		;079e
	ret			;07a1
	ld a,(0e490h)		;07a2
	and a			;07a5
	ret z			;07a6
	ld a,(0e495h)		;07a7
	call 04084h		;07aa
	or l			;07ad
	and a			;07ae
	jp pe,l1da7h		;07af
	xor b			;07b2
	jp pe,02aa7h		;07b3
	sub d			;07b6
	call po,0943ah		;07b7
	call po,0e547h		;07ba
	push bc			;07bd
	ld a,(0e491h)		;07be
	and 007h		;07c1
	call 0407ah		;07c3
	ld bc,l0000h+1		;07c6
	ld a,(0e4a0h)		;07c9
	ld d,a			;07cc
	xor a			;07cd
	call 04a4ch		;07ce
	pop bc			;07d1
	ld de,l0008h		;07d2
	pop hl			;07d5
	add hl,de		;07d6
	djnz $-27		;07d7
	ld a,(0e491h)		;07d9
	inc a			;07dc
	cp 008h			;07dd
	jr z,l07e5h		;07df
	ld (0e491h),a		;07e1
	ret			;07e4
l07e5h:
	xor a			;07e5
	ld (0e490h),a		;07e6
	ret			;07e9
	ld hl,(0e492h)		;07ea
	ld a,(0e494h)		;07ed
	ld b,a			;07f0
	ld de,0e500h		;07f1
l07f4h:
	push bc			;07f4
	push de			;07f5
	push hl			;07f6
	ld a,(0e491h)		;07f7
	call 0a855h		;07fa
	exx			;07fd
	ld a,(0e4a0h)		;07fe
	ld b,a			;0801
	call 04a3ah		;0802
	ld bc,l0008h		;0805
	pop hl			;0808
l0809h:
	add hl,bc		;0809
	pop de			;080a
	ex de,hl		;080b
	add hl,bc		;080c
	ex de,hl		;080d
	pop bc			;080e
	djnz l07f4h		;080f
	ld a,(0e491h)		;0811
	inc a			;0814
	cp 008h			;0815
	jr z,l07e5h		;0817
	ld (0e491h),a		;0819
	ret			;081c
	ld hl,(0e492h)		;081d
	ld a,(0e494h)		;0820
	ld b,a			;0823
	ld de,0e500h		;0824
	ld a,(0e491h)		;0827
	call 0a838h		;082a
	ld a,(0e491h)		;082d
	dec a			;0830
	jp m,0a7e5h		;0831
	ld (0e491h),a		;0834
	ret			;0837
l0838h:
	push af			;0838
	push bc			;0839
	push hl			;083a
	push de			;083b
	call 0a855h		;083c
	exx			;083f
	ld b,002h		;0840
	call 04a3ah		;0842
	ld bc,l0008h		;0845
	pop hl			;0848
	add hl,bc		;0849
	ex de,hl		;084a
	pop hl			;084b
	add hl,bc		;084c
	pop bc			;084d
	pop af			;084e
	djnz l0838h		;084f
	ld a,(0e491h)		;0851
	ret			;0854
	and 007h		;0855
	ld c,a			;0857
	call 0407ah		;0858
	ld a,c			;085b
	call 0407fh		;085c
	ld bc,l0000h+1		;085f
	ret			;0862
	ld a,(0e498h)		;0863
	and a			;0866
l0867h:
	ret z			;0867
	ld hl,(0e49ah)		;0868
	ld a,(0e49ch)		;086b
	ld b,a			;086e
	ld de,0e800h		;086f
	ld a,(0e499h)		;0872
	call 0a838h		;0875
	ld a,(0e499h)		;0878
	inc a			;087b
	cp 008h			;087c
	jr z,l0884h		;087e
	ld (0e499h),a		;0880
	ret			;0883
l0884h:
	xor a			;0884
	ld (0e498h),a		;0885
	ret			;0888
	ld bc,l0080h		;0889
	ld hl,0e280h		;088c
	ld de,03b00h		;088f
	jp l005ch		;0892
	ld hl,0ed00h		;0895
	ld de,0ed01h		;0898
	ld bc,l02ffh		;089b
	xor a			;089e
	ld (hl),a		;089f
	ldir			;08a0
	ld hl,0ed00h		;08a2
	ld de,0efc0h		;08a5
	ld bc,l0040h		;08a8
	ldir			;08ab
	ld bc,l0300h		;08ad
	ld hl,03800h		;08b0
	ld de,0ed00h		;08b3
	jp 04a33h		;08b6
	ld c,a			;08b9
	jr c,l08f6h		;08ba
	inc a			;08bc
	cp 06fh			;08bd
	jr c,l08fch		;08bf
	dec a			;08c1
	cp 0c5h			;08c2
	jr c,l0867h		;08c4
	and d			;08c6
	and e			;08c7
	and h			;08c8
	ei			;08c9
	ld l,l			;08ca
	ld b,c			;08cb
	and l			;08cc
	and (hl)		;08cd
	and a			;08ce
	nop			;08cf
	xor b			;08d0
	xor c			;08d1
	xor d			;08d2
	xor e			;08d3
	and (hl)		;08d4
	xor h			;08d5
	xor l			;08d6
	xor e			;08d7
	xor (hl)		;08d8
	xor e			;08d9
	xor a			;08da
l08dbh:
	jr c,l08dbh		;08db
	jr z,l0918h		;08dd
	ld b,d			;08df
	or b			;08e0
	and e			;08e1
	or c			;08e2
	ld l,l			;08e3
	ld b,c			;08e4
	and h			;08e5
	ei			;08e6
	xor a			;08e7
	or d			;08e8
	xor e			;08e9
	or e			;08ea
	or h			;08eb
	xor b			;08ec
	or l			;08ed
	or (hl)			;08ee
	or h			;08ef
	cp 06ch			;08f0
	add hl,sp		;08f2
	or a			;08f3
	xor (hl)		;08f4
	cp b			;08f5
l08f6h:
	ei			;08f6
	ld b,e			;08f7
	and e			;08f8
	xor a			;08f9
l08fah:
	jr c,l08fah		;08fa
l08fch:
	xor d			;08fc
	add hl,sp		;08fd
	and e			;08fe
	or d			;08ff
	and e			;0900
	cp c			;0901
	and d			;0902
	ei			;0903
	ld l,l			;0904
	ld b,c			;0905
	xor c			;0906
	cp e			;0907
	cp h			;0908
	ei			;0909
	cp 0e8h			;090a
	add hl,sp		;090c
	cp l			;090d
	and d			;090e
	xor (hl)		;090f
	and e			;0910
	xor a			;0911
	ld b,h			;0912
	ld b,l			;0913
	and a			;0914
	or a			;0915
	cp b			;0916
	or (hl)			;0917
l0918h:
	ld b,(hl)		;0918
	cp a			;0919
	or e			;091a
	xor b			;091b
	and l			;091c
l091dh:
	jr c,l091dh		;091d
	ld l,l			;091f
	ld a,(06160h)		;0920
	xor 0efh		;0923
	ret p			;0925
	pop af			;0926
	jp p,047f3h		;0927
	ld c,b			;092a
	ld c,e			;092b
	ld c,h			;092c
	nop			;092d
	ld c,c			;092e
	ld c,d			;092f
	or l			;0930
	or (hl)			;0931
	rst 38h			;0932
	inc bc			;0933
	ld a,(04e4dh)		;0934
	ld c,a			;0937
	nop			;0938
	inc bc			;0939
	inc bc			;093a
	inc bc			;093b
	ld bc,00050h		;093c
	xor 0efh		;093f
	ret p			;0941
	pop af			;0942
	jp p,051f3h		;0943
	ld d,d			;0946
	ld c,l			;0947
	ld c,(hl)		;0948
	ld d,e			;0949
	ld d,h			;094a
	ld d,l			;094b
	ld d,(hl)		;094c
	ld d,a			;094d
	call p,0fef5h		;094e
	ld c,l			;0951
	ld a,(0f7f6h)		;0952
	xor (hl)		;0955
	ld l,a			;0956
	ld e,b			;0957
	ret nz			;0958
	or l			;0959
	or e			;095a
	ret m			;095b
	sub e			;095c
	ret p			;095d
	ld sp,hl		;095e
	sub e			;095f
	ld e,c			;0960
	ld b,h			;0961
l0962h:
	jr c,l0962h		;0962
	adc a,l			;0964
	ld a,(0515ah)		;0965
	rst 28h			;0968
	sub e			;0969
	defb 0ddh,0a4h ;and ixh	;096a
	ei			;096c
	xor 0efh		;096d
	ret p			;096f
	pop af			;0970
	jp p,07ff3h		;0971
	and a			;0974
	add a,l			;0975
	add a,(hl)		;0976
	cp 0cdh			;0977
	ld a,(08759h)		;0979
	xor d			;097c
	cp a			;097d
	and d			;097e
	jr c,$+1		;097f
	inc bc			;0981
	ld a,(04e4dh)		;0982
	ld c,a			;0985
	nop			;0986
	inc bc			;0987
	inc bc			;0988
	inc bc			;0989
	ld bc,00050h		;098a
	call p,0f6f5h		;098d
	rst 30h			;0990
	adc a,b			;0991
	adc a,c			;0992
	xor (hl)		;0993
	ld l,a			;0994
	ld e,b			;0995
	and h			;0996
	adc a,d			;0997
	adc a,e			;0998
	xor d			;0999
	xor h			;099a
	ei			;099b
	ret m			;099c
	sub e			;099d
	cp 04dh			;099e
	ld a,(0f9f0h)		;09a0
	sub e			;09a3
	and h			;09a4
	ld e,(hl)		;09a5
	ld e,a			;09a6
	and e			;09a7
	and d			;09a8
l09a9h:
	jr c,l09a9h		;09a9
	adc a,l			;09ab
	ld a,(0515ah)		;09ac
	rst 28h			;09af
	sub e			;09b0
	ld l,(ix+05ch)		;09b1
	and h			;09b4
	ei			;09b5
	call p,0f6f5h		;09b6
	rst 30h			;09b9
	xor (hl)		;09ba
	ld l,a			;09bb
	ld e,b			;09bc
	and a			;09bd
	cp 0cdh			;09be
	ld a,(06160h)		;09c0
	call c,0db93h		;09c3
	pop bc			;09c6
	ld h,d			;09c7
	ld h,e			;09c8
	and e			;09c9
	and d			;09ca
	jr c,$+1		;09cb
	inc hl			;09cd
	ld a,(04e4dh)		;09ce
	ld c,a			;09d1
	nop			;09d2
	inc bc			;09d3
	inc bc			;09d4
	inc bc			;09d5
	ld (bc),a		;09d6
	ld d,b			;09d7
	nop			;09d8
	xor 0efh		;09d9
	ret p			;09db
	pop af			;09dc
	jp p,051f3h		;09dd
	ld d,d			;09e0
	ld e,d			;09e1
	ld d,c			;09e2
	rst 28h			;09e3
	sub e			;09e4
	ld l,(ix+05ch)		;09e5
	ld e,l			;09e8
	ld h,l			;09e9
l09eah:
	jr c,l09eah		;09ea
	adc a,l			;09ec
	ld a,(0f5f4h)		;09ed
	or 0f7h			;09f0
	xor (hl)		;09f2
	ld l,a			;09f3
	ld e,b			;09f4
	and h			;09f5
	ei			;09f6
	ld h,b			;09f7
	ld h,c			;09f8
	call c,0db93h		;09f9
	or d			;09fc
	xor (hl)		;09fd
	ld l,d			;09fe
	cp 0cdh			;09ff
	ld a,(06b46h)		;0a01
	ld l,h			;0a04
	jr c,$+104		;0a05
	ld h,a			;0a07
	ld l,b			;0a08
	ld l,c			;0a09
	or b			;0a0a
	xor e			;0a0b
	or e			;0a0c
	jr c,$+1		;0a0d
	inc hl			;0a0f
	ld a,(04e4dh)		;0a10
	ld c,a			;0a13
	nop			;0a14
	inc bc			;0a15
	inc bc			;0a16
	inc bc			;0a17
	ld (bc),a		;0a18
	ld d,b			;0a19
	nop			;0a1a
	xor 0efh		;0a1b
	ret p			;0a1d
	pop af			;0a1e
	jp p,051f3h		;0a1f
	ld d,d			;0a22
	ld a,a			;0a23
	and h			;0a24
	ei			;0a25
	sbc a,0dfh		;0a26
	ret m			;0a28
	ret po			;0a29
	pop hl			;0a2a
	jp po,06dfeh		;0a2b
	ld a,(0c093h)		;0a2e
	ld (hl),d		;0a31
	jp nz,0e1e3h		;0a32
	jp po,0f393h		;0a35
	call po,0f393h		;0a38
	push hl			;0a3b
	and 0e1h		;0a3c
	ld sp,hl		;0a3e
	sub e			;0a3f
	cp 0adh			;0a40
	ld a,(0f9e7h)		;0a42
	ret pe			;0a45
	jp (hl)			;0a46
	jp pe,076a8h		;0a47
	ld e,c			;0a4a
	ret nz			;0a4b
	cp d			;0a4c
	cp (hl)			;0a4d
	jr c,$+1		;0a4e
	jp 04d39h		;0a50
	ld c,(hl)		;0a53
	ld c,a			;0a54
	nop			;0a55
	add a,b			;0a56
	add a,b			;0a57
	add a,b			;0a58
	add a,b			;0a59
	ld d,b			;0a5a
l0a5bh:
	nop			;0a5b
	ld h,b			;0a5c
	ld h,c			;0a5d
	xor 0efh		;0a5e
	ret p			;0a60
	pop af			;0a61
	jp p,0a8f3h		;0a62
	ex de,hl		;0a65
	jp (hl)			;0a66
	add hl,sp		;0a67
	di			;0a68
	call po,0f393h		;0a69
	call pe,sub_0dfeh	;0a6c
	ld a,(0eaefh)		;0a6f
	defb 0edh ;next byte illegal after ed	;0a72
	add a,c			;0a73
	ld h,b			;0a74
	ld h,c			;0a75
	or d			;0a76
	xor (hl)		;0a77
	xor b			;0a78
	adc a,l			;0a79
	adc a,(hl)		;0a7a
	cp h			;0a7b
	sub e			;0a7c
	adc a,h			;0a7d
	ret nz			;0a7e
	or b			;0a7f
	and l			;0a80
	cp 04dh			;0a81
	ld a,(0b3c3h)		;0a83
	ld a,0dch		;0a86
	pop hl			;0a88
	jp c,0edeah		;0a89
	add hl,sp		;0a8c
	rst 8			;0a8d
	pop hl			;0a8e
	defb 0edh ;next byte illegal after ed	;0a8f
	rst 20h			;0a90
	ret nc			;0a91
	adc a,a			;0a92
	sub b			;0a93
	ccf			;0a94
	cp 08dh			;0a95
	ld a,(04459h)		;0a97
	jr c,$-109		;0a9a
	sub d			;0a9c
	or d			;0a9d
	ret nz			;0a9e
	or l			;0a9f
	or e			;0aa0
	nop			;0aa1
	and e			;0aa2
	call nz,0c5b6h		;0aa3
	cp b			;0aa6
	add a,0bdh		;0aa7
	cp 0cdh			;0aa9
	ld a,(0a9b3h)		;0aab
	or b			;0aae
	cp h			;0aaf
	sub l			;0ab0
	sub h			;0ab1
	jr c,$+1		;0ab2
	inc bc			;0ab4
	ld a,(04e4dh)		;0ab5
	ld c,a			;0ab8
	nop			;0ab9
	inc bc			;0aba
	inc bc			;0abb
	inc bc			;0abc
	inc bc			;0abd
	ld d,b			;0abe
	nop			;0abf
	ld b,e			;0ac0
	ld c,d			;0ac1
	ld b,(hl)		;0ac2
	ld c,e			;0ac3
	ld c,b			;0ac4
	ld b,c			;0ac5
	ld b,h			;0ac6
	ld b,a			;0ac7
	ld b,b			;0ac8
	ld b,l			;0ac9
	ld b,e			;0aca
	ld b,d			;0acb
	ld d,d			;0acc
	ld d,e			;0acd
	ld d,h			;0ace
	ld d,l			;0acf
	ld c,h			;0ad0
	cp 04dh			;0ad1
	ld a,(05149h)		;0ad3
	ld b,d			;0ad6
	jr c,$+1		;0ad7
	adc a,l			;0ad9
	ld a,(0f8e0h)		;0ada
	pop de			;0add
	ret pe			;0ade
	ret nc			;0adf
	jp pe,099a8h		;0ae0
	sbc a,l			;0ae3
	or b			;0ae4
	xor e			;0ae5
	rst 0			;0ae6
	and d			;0ae7
	call p,0f6f5h		;0ae8
	rst 30h			;0aeb
	cp 0cdh			;0aec
	ld a,(072a8h)		;0aee
	xor b			;0af1
	sbc a,e			;0af2
	xor a			;0af3
	and h			;0af4
	ld h,b			;0af5
	ld h,c			;0af6
	xor 0efh		;0af7
	ret p			;0af9
sub_0afah:
	pop af			;0afa
	jp p,0a5f3h		;0afb
	rst 0			;0afe
l0affh:
	and d			;0aff
l0b00h:
	defb 0fdh,0ffh,083h ;illegal sequence	;0b00
	ld b,b			;0b03
	sub d			;0b04
	ld b,c			;0b05
	and d			;0b06
	ld b,d			;0b07
	and e			;0b08
	ld b,e			;0b09
l0b0ah:
	and h			;0b0a
	ld b,h			;0b0b
	sbc a,b			;0b0c
	ld b,l			;0b0d
l0b0eh:
	or (hl)			;0b0e
	ld b,(hl)		;0b0f
	ei			;0b10
	ld b,a			;0b11
	cp b			;0b12
l0b13h:
	ld c,b			;0b13
l0b14h:
	cp l			;0b14
	ld c,c			;0b15
	call nz,0c54ah		;0b16
	ld c,e			;0b19
	add a,04ch		;0b1a
l0b1ch:
	rst 0			;0b1c
	ld d,c			;0b1d
	call p,0f552h		;0b1e
	ld d,e			;0b21
	or 054h			;0b22
	rst 30h			;0b24
l0b25h:
	ld d,l			;0b25
	jr c,l0b25h		;0b26
	nop			;0b28
	inc bc			;0b29
	add a,b			;0b2a
	inc b			;0b2b
	add a,c			;0b2c
	nop			;0b2d
	inc h			;0b2e
	ld a,(0f43eh)		;0b2f
	push af			;0b32
	or 0f7h			;0b33
	and h			;0b35
	nop			;0b36
	ld e,d			;0b37
	ld d,c			;0b38
	rst 28h			;0b39
	sub e			;0b3a
	defb 0ddh,0c0h,0b5h ;illegal sequence	;0b3b
	rst 0			;0b3e
	or c			;0b3f
	ld h,b			;0b40
	ld h,c			;0b41
	call c,0db93h		;0b42
	pop bc			;0b45
	ld h,d			;0b46
	ld h,e			;0b47
	cp 064h			;0b48
	ld a,(0acaah)		;0b4a
	and d			;0b4d
	xor b			;0b4e
	ret z			;0b4f
	ei			;0b50
	ret po			;0b51
	ret m			;0b52
	pop de			;0b53
	ret pe			;0b54
	ret nc			;0b55
	jp pe,0a2a8h		;0b56
	dec (hl)		;0b59
	and (hl)		;0b5a
	and a			;0b5b
	or d			;0b5c
	or (hl)			;0b5d
	or c			;0b5e
	ld h,b			;0b5f
	ld h,c			;0b60
	rst 10h			;0b61
	jp pe,0fec1h		;0b62
	and h			;0b65
	ld a,(0466ah)		;0b66
	ld l,e			;0b69
	ld l,h			;0b6a
	and e			;0b6b
	or c			;0b6c
	xor a			;0b6d
	and d			;0b6e
	jr c,l0bb0h		;0b6f
	rst 38h			;0b71
	inc h			;0b72
	ld a,(0603eh)		;0b73
	ld h,c			;0b76
	rst 10h			;0b77
	jp pe,02ac0h		;0b78
	sub e			;0b7b
	di			;0b7c
	and a			;0b7d
	or d			;0b7e
	cp c			;0b7f
	jp 0f4a2h		;0b80
	push af			;0b83
	or 0f7h			;0b84
	and h			;0b86
	ei			;0b87
	ld (hl),d		;0b88
	or a			;0b89
	inc sp			;0b8a
	or b			;0b8b
	cp 064h			;0b8c
	ld a,(0b704h)		;0b8e
	xor b			;0b91
	di			;0b92
	call po,0f393h		;0b93
	call pe,0eaefh		;0b96
	defb 0edh ;next byte illegal after ed	;0b99
	and a			;0b9a
	nop			;0b9b
	and e			;0b9c
	call nz,0c5b6h		;0b9d
	cp b			;0ba0
	and e			;0ba1
	and d			;0ba2
l0ba3h:
	jr c,l0ba3h		;0ba3
	and h			;0ba5
	ld a,(0f5f4h)		;0ba6
	or 0f7h			;0ba9
	xor b			;0bab
	and e			;0bac
	call nz,0c5b6h		;0bad
l0bb0h:
	cp b			;0bb0
	and h			;0bb1
	ei			;0bb2
	xor a			;0bb3
	cp c			;0bb4
	nop			;0bb5
	cp c			;0bb6
	xor d			;0bb7
	ret nz			;0bb8
	ld h,b			;0bb9
	ld h,c			;0bba
	xor 0efh		;0bbb
	ret p			;0bbd
	pop af			;0bbe
	cp 0e4h			;0bbf
	ld a,(0f3f2h)		;0bc1
	ret nz			;0bc4
	res 6,l			;0bc5
	ld l,02dh		;0bc7
	or b			;0bc9
	and e			;0bca
	or c			;0bcb
	xor a			;0bcc
	or e			;0bcd
	jr c,l0c0fh		;0bce
	rst 38h			;0bd0
	inc h			;0bd1
	ld a,(0f43eh)		;0bd2
	push af			;0bd5
	or 0f7h			;0bd6
	xor b			;0bd8
	and e			;0bd9
	call nz,0c5b6h		;0bda
	cp b			;0bdd
	and a			;0bde
	cp b			;0bdf
	xor a			;0be0
	or b			;0be1
	ld sp,0c0b3h		;0be2
	and h			;0be5
	ei			;0be6
	inc b			;0be7
	or a			;0be8
	xor b			;0be9
	di			;0bea
	cp 064h			;0beb
	ld a,(093e4h)		;0bed
	di			;0bf0
	call pe,0eaefh		;0bf1
	defb 0edh ;next byte illegal after ed	;0bf4
	and a			;0bf5
	or b			;0bf6
	or (hl)			;0bf7
	or h			;0bf8
	jr nc,$-91		;0bf9
	ei			;0bfb
	ld h,b			;0bfc
	ld h,c			;0bfd
	rst 10h			;0bfe
	jp pe,0afc0h		;0bff
	or e			;0c02
	call p,0f6f5h		;0c03
	cp 0a4h			;0c06
	ld a,(0a7f7h)		;0c08
l0c0bh:
	and d			;0c0b
	res 5,d			;0c0c
	xor e			;0c0e
l0c0fh:
	and (hl)		;0c0f
	xor h			;0c10
	xor l			;0c11
	xor e			;0c12
	xor (hl)		;0c13
	xor e			;0c14
l0c15h:
	xor a			;0c15
	jr c,$+65		;0c16
	rst 38h			;0c18
	inc bc			;0c19
	ld a,(04e4dh)		;0c1a
	ld c,a			;0c1d
	nop			;0c1e
	inc bc			;0c1f
	inc bc			;0c20
	inc bc			;0c21
	inc bc			;0c22
	ld d,b			;0c23
	nop			;0c24
l0c25h:
	xor 0efh		;0c25
	ret p			;0c27
	pop af			;0c28
	jp p,051f3h		;0c29
	ld d,d			;0c2c
	ld a,a			;0c2d
	call c,0dfd2h		;0c2e
	defb 0edh ;next byte illegal after ed	;0c31
	and h			;0c32
	ei			;0c33
	rst 20h			;0c34
	ld sp,hl		;0c35
	cp 04dh			;0c36
	ld a,(0e9e8h)		;0c38
	jp pe,08746h		;0c3b
	and a			;0c3e
	sub a			;0c3f
	sbc a,d			;0c40
	jr c,l0c25h		;0c41
	pop hl			;0c43
	out (0dfh),a		;0c44
	defb 0edh ;next byte illegal after ed	;0c46
	ret nz			;0c47
	and h			;0c48
	sbc a,h			;0c49
	cp 08dh			;0c4a
	ld a,(0dfdeh)		;0c4c
	ret m			;0c4f
	ret po			;0c50
	pop hl			;0c51
	jp po,0a893h		;0c52
	jp po,0d3e1h		;0c55
	rst 18h			;0c58
	defb 0edh ;next byte illegal after ed	;0c59
	add hl,sp		;0c5a
	call nc,0e1f5h		;0c5b
	cp 0cdh			;0c5e
	ld a,(0f3f7h)		;0c60
	add hl,sp		;0c63
	ret po			;0c64
	sub e			;0c65
	defb 0edh ;next byte illegal after ed	;0c66
	jp pe,096bch		;0c67
	ld b,(hl)		;0c6a
	xor d			;0c6b
	xor h			;0c6c
	and d			;0c6d
	jr c,$+1		;0c6e
	inc hl			;0c70
	ld a,(0f5d4h)		;0c71
	pop hl			;0c74
	rst 30h			;0c75
	di			;0c76
l0c77h:
	add hl,sp		;0c77
	ret po			;0c78
	sub e			;0c79
	defb 0edh ;next byte illegal after ed	;0c7a
	jp pe,l0000h		;0c7b
	nop			;0c7e
	inc bc			;0c7f
	inc bc			;0c80
	ld bc,050fdh		;0c81
	ld b,h			;0c84
	cp c			;0c85
	xor h			;0c86
l0c87h:
	jr c,l0c87h		;0c87
	ld (hl),b		;0c89
	ld a,(05251h)		;0c8a
	ld a,a			;0c8d
	ld c,l			;0c8e
	ld c,(hl)		;0c8f
	ld (hl),l		;0c90
	ld a,a			;0c91
	nop			;0c92
	ld (hl),a		;0c93
	ld a,b			;0c94
	ld a,c			;0c95
	ld a,d			;0c96
l0c97h:
	jr c,l0c97h		;0c97
	or b			;0c99
	ld a,(0de9ch)		;0c9a
	rst 18h			;0c9d
	ret m			;0c9e
	ret po			;0c9f
	pop hl			;0ca0
	jp po,l0093h		;0ca1
	jp po,0d3e1h		;0ca4
	rst 18h			;0ca7
	defb 0edh ;next byte illegal after ed	;0ca8
	jr c,$+1		;0ca9
	dec b			;0cab
	nop			;0cac
	add a,c			;0cad
	rla			;0cae
	dec d			;0caf
	nop			;0cb0
	add a,a			;0cb1
	rrca			;0cb2
	dec d			;0cb3
	dec h			;0cb4
	dec h			;0cb5
	daa			;0cb6
	ld a,(bc)		;0cb7
	ex af,af'		;0cb8
	dec bc			;0cb9
	dec h			;0cba
	add a,c			;0cbb
	djnz l0cc3h		;0cbc
	dec h			;0cbe
	inc b			;0cbf
	nop			;0cc0
	adc a,c			;0cc1
	add hl,de		;0cc2
l0cc3h:
	ld b,000h		;0cc3
	ld hl,(l0c0bh)		;0cc5
	ld de,02d08h		;0cc8
	ld b,000h		;0ccb
	add a,h			;0ccd
	ld hl,(l1a14h)		;0cce
	inc b			;0cd1
	inc bc			;0cd2
	nop			;0cd3
	add a,c			;0cd4
	ld h,004h		;0cd5
	nop			;0cd7
	adc a,b			;0cd8
	ld h,000h		;0cd9
	nop			;0cdb
	jr z,l0ce8h		;0cdc
	ld a,(de)		;0cde
	inc bc			;0cdf
	inc b			;0ce0
	rlca			;0ce1
	nop			;0ce2
	add a,d			;0ce3
	ld d,003h		;0ce4
	dec b			;0ce6
	nop			;0ce7
l0ce8h:
	adc a,l			;0ce8
	ld h,017h		;0ce9
	dec de			;0ceb
	nop			;0cec
	nop			;0ced
	ld h,005h		;0cee
	nop			;0cf0
	dec de			;0cf1
	inc l			;0cf2
	ld (bc),a		;0cf3
	dec b			;0cf4
	ld b,003h		;0cf5
	nop			;0cf7
	add a,e			;0cf8
	inc e			;0cf9
	inc h			;0cfa
	inc hl			;0cfb
	inc bc			;0cfc
	nop			;0cfd
	add a,c			;0cfe
	dec de			;0cff
l0d00h:
	inc bc			;0d00
	nop			;0d01
	adc a,h			;0d02
	ld hl,(l0b14h)		;0d03
	ld a,(de)		;0d06
	nop			;0d07
	nop			;0d08
	ld h,00eh		;0d09
	ld l,02bh		;0d0b
	ld a,(bc)		;0d0d
	ld bc,l0003h		;0d0e
	add a,h			;0d11
	dec e			;0d12
	nop			;0d13
	nop			;0d14
	ld e,003h		;0d15
	nop			;0d17
	adc a,b			;0d18
	ld hl,(0041ah)		;0d19
	djnz l0d1eh		;0d1c
l0d1eh:
	jr l0d36h		;0d1e
	inc bc			;0d20
	inc bc			;0d21
	nop			;0d22
	add a,a			;0d23
	ld h,000h		;0d24
	ld d,029h		;0d26
	inc l			;0d28
	add hl,bc		;0d29
	djnz l0d2fh		;0d2a
	nop			;0d2c
	adc a,(hl)		;0d2d
	rra			;0d2e
l0d2fh:
	nop			;0d2f
	jr nz,$+35		;0d30
	nop			;0d32
	nop			;0d33
	jr l0d36h		;0d34
l0d36h:
	nop			;0d36
	jr $+6			;0d37
	nop			;0d39
	nop			;0d3a
	ld sp,l0003h		;0d3b
	adc a,b			;0d3e
	ld h,000h		;0d3f
	nop			;0d41
	ld hl,(l130dh)		;0d42
	ex af,af'		;0d45
	dec l			;0d46
	dec b			;0d47
	nop			;0d48
	add a,c			;0d49
	ld (l0004h+2),hl	;0d4a
	add a,h			;0d4d
	rla			;0d4e
	nop			;0d4f
	nop			;0d50
	ld sp,l0003h		;0d51
	add a,a			;0d54
	ld h,00eh		;0d55
	inc d			;0d57
	jr nc,l0d86h		;0d58
	ld (de),a		;0d5a
	rlca			;0d5b
	inc bc			;0d5c
	nop			;0d5d
	add a,h			;0d5e
	dec e			;0d5f
	nop			;0d60
	nop			;0d61
	rra			;0d62
	dec b			;0d63
	nop			;0d64
	add a,l			;0d65
	ld hl,(l110ah)		;0d66
	ex af,af'		;0d69
	ld sp,l0003h		;0d6a
	adc a,c			;0d6d
	ld h,000h		;0d6e
	add hl,hl		;0d70
	cpl			;0d71
	dec hl			;0d72
	inc c			;0d73
	ld de,01708h		;0d74
	ex af,af'		;0d77
	nop			;0d78
	add a,a			;0d79
	ld hl,(02b08h)		;0d7a
	dec c			;0d7d
	jr nc,l0d8ch		;0d7e
	ld sp,l0003h		;0d80
	adc a,e			;0d83
	ld h,01bh		;0d84
l0d86h:
	ld hl,(l130dh)		;0d86
	ld (de),a		;0d89
	dec bc			;0d8a
	inc de			;0d8b
l0d8ch:
	dec hl			;0d8c
	dec l			;0d8d
	djnz $+6		;0d8e
	nop			;0d90
	adc a,c			;0d91
	dec de			;0d92
	ld hl,(0122ch)		;0d93
	inc de			;0d96
	dec bc			;0d97
	dec hl			;0d98
	inc l			;0d99
	ld sp,l0003h		;0d9a
	sbc a,b			;0d9d
	ld h,014h		;0d9e
	ld a,(bc)		;0da0
	dec hl			;0da1
	dec hl			;0da2
	dec c			;0da3
	inc l			;0da4
	ld (de),a		;0da5
	inc c			;0da6
	ld (de),a		;0da7
	ld de,l002dh		;0da8
	nop			;0dab
	ld c,030h		;0dac
	inc de			;0dae
	inc c			;0daf
	inc c			;0db0
	inc de			;0db1
	dec hl			;0db2
	ld (de),a		;0db3
	ld (de),a		;0db4
	ld sp,l0004h		;0db5
	ld d,032h		;0db8
	inc bc			;0dba
	nop			;0dbb
	nop			;0dbc
	ld b,000h		;0dbd
	add a,l			;0dbf
	djnz l0ddeh		;0dc0
	inc d			;0dc2
	inc de			;0dc3
	ld (de),a		;0dc4
	rrca			;0dc5
	nop			;0dc6
	add a,a			;0dc7
	jr nz,l0dech		;0dc8
	dec e			;0dca
	inc h			;0dcb
	dec h			;0dcc
	ld h,021h		;0dcd
	ld c,000h		;0dcf
	adc a,e			;0dd1
	jr nc,l0e05h		;0dd2
	dec e			;0dd4
	inc sp			;0dd5
	inc (hl)		;0dd6
	dec (hl)		;0dd7
	ld (hl),0f0h		;0dd8
	ret c			;0dda
	call m,sub_0afah	;0ddb
l0ddeh:
	nop			;0dde
	adc a,l			;0ddf
	ld b,b			;0de0
	ld a,(de)		;0de1
	dec de			;0de2
	rra			;0de3
	ld b,h			;0de4
	ld b,l			;0de5
	ld b,(hl)		;0de6
	nop			;0de7
	out (097h),a		;0de8
	cp (hl)			;0dea
	rst 10h			;0deb
l0dech:
	sub 008h		;0dec
	nop			;0dee
	adc a,l			;0def
	sbc a,a			;0df0
	dec l			;0df1
	add hl,de		;0df2
	ld l,02fh		;0df3
	ld d,050h		;0df5
	nop			;0df7
	sbc a,d			;0df8
	sbc a,b			;0df9
	cp a			;0dfa
	sbc a,l			;0dfb
	sbc a,c			;0dfc
	rlca			;0dfd
sub_0dfeh:
	nop			;0dfe
	adc a,(hl)		;0dff
	call p,0639bh		;0e00
	ld h,h			;0e03
	ld h,c			;0e04
l0e05h:
	add hl,hl		;0e05
	ld h,d			;0e06
	dec d			;0e07
	nop			;0e08
	or e			;0e09
	exx			;0e0a
	cp l			;0e0b
	sub (hl)		;0e0c
	sbc a,(hl)		;0e0d
	rlca			;0e0e
	nop			;0e0f
	adc a,a			;0e10
	sbc a,h			;0e11
	nop			;0e12
	ld (hl),b		;0e13
	ld (hl),h		;0e14
	ld (hl),d		;0e15
	ld (hl),e		;0e16
	ld (hl),c		;0e17
	nop			;0e18
	jp p,0dab4h		;0e19
	call c,0b7deh		;0e1c
	dec sp			;0e1f
	ld b,000h		;0e20
	adc a,a			;0e22
	cp c			;0e23
	cp e			;0e24
	nop			;0e25
	jr l0e3fh		;0e26
	add a,b			;0e28
	add a,e			;0e29
	nop			;0e2a
	or d			;0e2b
	or l			;0e2c
	push af			;0e2d
	or (ix+04fh)		;0e2e
	add hl,sp		;0e31
	ld b,000h		;0e32
	adc a,a			;0e34
	cp b			;0e35
	cp h			;0e36
	or 0a0h			;0e37
	and d			;0e39
	and c			;0e3a
	nop			;0e3b
	ld sp,iy		;0e3c
	pop af			;0e3e
l0e3fh:
	in a,(0fbh)		;0e3f
	ld c,l			;0e41
	ld c,d			;0e42
	ld a,(l0007h)		;0e43
	add a,d			;0e46
	cp d			;0e47
	di			;0e48
	dec b			;0e49
	nop			;0e4a
	adc a,b			;0e4b
	rst 30h			;0e4c
	ret m			;0e4d
	nop			;0e4e
l0e4fh:
	ld a,03fh		;0e4f
	ld c,e			;0e51
	ld c,(hl)		;0e52
	call nc,l0007h		;0e53
	add a,c			;0e56
	inc a			;0e57
	inc bc			;0e58
	nop			;0e59
	adc a,e			;0e5a
	cp 0ffh			;0e5b
	nop			;0e5d
	dec a			;0e5e
	ld b,a			;0e5f
	ld c,c			;0e60
	ld c,b			;0e61
	ld c,h			;0e62
	rst 18h			;0e63
	or c			;0e64
	push de			;0e65
	nop			;0e66
	inc b			;0e67
	nop			;0e68
	add a,d			;0e69
	ld bc,l0b00h+2		;0e6a
	nop			;0e6d
	add a,b			;0e6e
	inc b			;0e6f
	inc bc			;0e70
	ld a,(bc)		;0e71
	nop			;0e72
	add a,b			;0e73
	inc b			;0e74
	rlca			;0e75
	ld a,(bc)		;0e76
	nop			;0e77
	add a,b			;0e78
	dec b			;0e79
	dec bc			;0e7a
	ld b,000h		;0e7b
	add a,e			;0e7d
	ld de,l0000h		;0e7e
	add a,b			;0e81
	rlca			;0e82
	ld (de),a		;0e83
	inc b			;0e84
	nop			;0e85
	add a,b			;0e86
	dec c			;0e87
	add hl,de		;0e88
	add a,c			;0e89
	nop			;0e8a
	add a,b			;0e8b
	ld hl,(l0326h)		;0e8c
	nop			;0e8f
	add a,b			;0e90
	ld a,(bc)		;0e91
	ld d,b			;0e92
	add a,c			;0e93
	nop			;0e94
	nop			;0e95
	add a,b			;0e96
	dec b			;0e97
	ld e,d			;0e98
	inc bc			;0e99
	nop			;0e9a
	add a,b			;0e9b
	djnz l0efdh		;0e9c
	add a,b			;0e9e
	ex af,af'		;0e9f
	ld (hl),c		;0ea0
	add a,b			;0ea1
	ex af,af'		;0ea2
	ld a,h			;0ea3
	add a,b			;0ea4
	ex af,af'		;0ea5
	adc a,b			;0ea6
	nop			;0ea7
	add a,d			;0ea8
	ld l,a			;0ea9
	ld (hl),b		;0eaa
	inc b			;0eab
	nop			;0eac
	add a,b			;0ead
	inc bc			;0eae
	ld a,c			;0eaf
	inc bc			;0eb0
	nop			;0eb1
	add a,b			;0eb2
	inc b			;0eb3
	add a,h			;0eb4
	ld (bc),a		;0eb5
	nop			;0eb6
	add a,b			;0eb7
	dec b			;0eb8
	sub b			;0eb9
	add a,c			;0eba
	nop			;0ebb
	nop			;0ebc
	add hl,bc		;0ebd
	nop			;0ebe
	add a,b			;0ebf
	inc bc			;0ec0
	ld bc,l0013h		;0ec1
	add a,l			;0ec4
	djnz $+19		;0ec5
	inc d			;0ec7
	inc de			;0ec8
	ld (de),a		;0ec9
	ld de,08100h		;0eca
	jr nz,l0e4fh		;0ecd
	dec b			;0ecf
	ld (02181h),hl		;0ed0
	djnz l0ed5h		;0ed3
l0ed5h:
	add a,b			;0ed5
	rlca			;0ed6
	jr nc,l0ee9h		;0ed7
	nop			;0ed9
	add a,b			;0eda
	rlca			;0edb
	ld b,b			;0edc
	djnz l0edfh		;0edd
l0edfh:
	adc a,h			;0edf
	ld d,d			;0ee0
	ld d,(hl)		;0ee1
	ld d,c			;0ee2
	ld d,h			;0ee3
	ld d,l			;0ee4
	ld d,e			;0ee5
	ld d,b			;0ee6
	ld e,c			;0ee7
	nop			;0ee8
l0ee9h:
	nop			;0ee9
	ld d,a			;0eea
	ld e,b			;0eeb
	inc c			;0eec
	nop			;0eed
	adc a,h			;0eee
	ld h,e			;0eef
	ld h,h			;0ef0
	ld h,c			;0ef1
	ld h,l			;0ef2
	ld h,d			;0ef3
	ld h,b			;0ef4
	ld l,e			;0ef5
	ld l,d			;0ef6
	ld h,a			;0ef7
	ld l,c			;0ef8
	ld l,b			;0ef9
	ld h,(hl)		;0efa
	ld b,000h		;0efb
l0efdh:
	sub d			;0efd
	ld (hl),l		;0efe
	halt			;0eff
	nop			;0f00
	nop			;0f01
	ld a,e			;0f02
	ld (hl),b		;0f03
	ld (hl),h		;0f04
	ld (hl),d		;0f05
	ld (hl),e		;0f06
	ld (hl),c		;0f07
	nop			;0f08
	ld (hl),a		;0f09
	ld a,d			;0f0a
	ld a,(hl)		;0f0b
	ld a,b			;0f0c
	ld a,c			;0f0d
	ld a,h			;0f0e
	ld a,l			;0f0f
	inc b			;0f10
	nop			;0f11
	call nc,08784h		;0f12
	adc a,l			;0f15
	sub b			;0f16
	adc a,(hl)		;0f17
	adc a,a			;0f18
	nop			;0f19
	add a,c			;0f1a
	add a,d			;0f1b
	add a,b			;0f1c
	add a,e			;0f1d
	adc a,b			;0f1e
	adc a,e			;0f1f
	adc a,d			;0f20
	adc a,c			;0f21
	nop			;0f22
	sub c			;0f23
	adc a,h			;0f24
	add a,l			;0f25
	add a,(hl)		;0f26
	nop			;0f27
	nop			;0f28
	xor e			;0f29
	xor h			;0f2a
	and e			;0f2b
	and h			;0f2c
	and l			;0f2d
	xor d			;0f2e
	xor a			;0f2f
	nop			;0f30
	and b			;0f31
	and d			;0f32
	and c			;0f33
	nop			;0f34
	and (hl)		;0f35
	or b			;0f36
	xor c			;0f37
	and a			;0f38
	nop			;0f39
	nop			;0f3a
	xor l			;0f3b
	xor (hl)		;0f3c
	xor b			;0f3d
	nop			;0f3e
	ret nz			;0f3f
	pop bc			;0f40
	ret nc			;0f41
	jp nz,0c300h		;0f42
	rst 0			;0f45
	rst 8			;0f46
	call nz,0cecch		;0f47
	call 0c600h		;0f4a
	set 1,d			;0f4d
	push bc			;0f4f
	nop			;0f50
	nop			;0f51
	ret z			;0f52
	ret			;0f53
	pop de			;0f54
	jp nc,0ebe0h		;0f55
	jp pe,l0000h		;0f58
	pop hl			;0f5b
	ex (sp),hl		;0f5c
	jp (hl)			;0f5d
	call po,0ec00h		;0f5e
	nop			;0f61
	jp po,0e7e6h		;0f62
	ret pe			;0f65
	push hl			;0f66
	inc bc			;0f67
	nop			;0f68
	add a,b			;0f69
	inc bc			;0f6a
	defb 0edh ;next byte illegal after ed	;0f6b
	nop			;0f6c
	ld (bc),a		;0f6d
	nop			;0f6e
	add a,c			;0f6f
	rra			;0f70
	ld de,08121h		;0f71
	inc h			;0f74
	inc b			;0f75
	nop			;0f76
	add a,c			;0f77
	jr nz,l0f80h		;0f78
	nop			;0f7a
	add a,c			;0f7b
	nop			;0f7c
	inc bc			;0f7d
	nop			;0f7e
	adc a,b			;0f7f
l0f80h:
	ld b,000h		;0f80
	dec c			;0f82
	nop			;0f83
	nop			;0f84
	rrca			;0f85
	nop			;0f86
	dec h			;0f87
	inc b			;0f88
	nop			;0f89
	add a,c			;0f8a
	jr nz,l0f95h		;0f8b
	nop			;0f8d
	add a,h			;0f8e
	dec c			;0f8f
	nop			;0f90
	nop			;0f91
	inc de			;0f92
	inc b			;0f93
	nop			;0f94
l0f95h:
	sub c			;0f95
	ld h,007h		;0f96
	ex af,af'		;0f98
	add hl,bc		;0f99
	nop			;0f9a
	nop			;0f9b
	jr nz,l0f9eh		;0f9c
l0f9eh:
	nop			;0f9e
	dec l			;0f9f
	nop			;0fa0
	dec c			;0fa1
	nop			;0fa2
	nop			;0fa3
	inc de			;0fa4
	nop			;0fa5
	ld b,007h		;0fa6
	nop			;0fa8
	add a,c			;0fa9
	dec h			;0faa
	inc b			;0fab
	nop			;0fac
	add a,l			;0fad
	jr nz,l0fb0h		;0fae
l0fb0h:
	ld e,023h		;0fb0
	dec e			;0fb2
	dec c			;0fb3
	nop			;0fb4
	adc a,c			;0fb5
	dec h			;0fb6
	nop			;0fb7
	nop			;0fb8
	ld bc,00302h		;0fb9
	inc b			;0fbc
	dec b			;0fbd
	ld (l000eh),hl		;0fbe
	add a,c			;0fc1
	dec h			;0fc2
	inc b			;0fc3
	nop			;0fc4
	add a,c			;0fc5
	jr nz,l0fd9h		;0fc6
	nop			;0fc8
	add a,c			;0fc9
	dec h			;0fca
	inc b			;0fcb
	nop			;0fcc
	add a,e			;0fcd
	jr z,$+43		;0fce
	add hl,hl		;0fd0
	inc b			;0fd1
	nop			;0fd2
	add a,c			;0fd3
	ld c,00ah		;0fd4
	add hl,hl		;0fd6
	add a,c			;0fd7
	daa			;0fd8
l0fd9h:
	rlca			;0fd9
	nop			;0fda
	add a,h			;0fdb
	ld a,(bc)		;0fdc
	dec bc			;0fdd
	inc c			;0fde
	dec b			;0fdf
	ld c,000h		;0fe0
	nop			;0fe2
	dec de			;0fe3
	ld l,000h		;0fe4
	add a,c			;0fe6
	cp b			;0fe7
	dec e			;0fe8
	or a			;0fe9
	ld (bc),a		;0fea
	or (hl)			;0feb
	add a,b			;0fec
	inc bc			;0fed
	inc bc			;0fee
	rrca			;0fef
	nop			;0ff0
	add a,b			;0ff1
	inc bc			;0ff2
	inc d			;0ff3
	add a,d			;0ff4
	nop			;0ff5
	ld (hl),c		;0ff6
	add a,b			;0ff7
	ld b,06ah		;0ff8
	ld (bc),a		;0ffa
	or (hl)			;0ffb
	add a,b			;0ffc
	inc bc			;0ffd
	ld b,002h		;0ffe
	nop			;1000
	add a,b			;1001
	inc b			;1002
	ld h,h			;1003
	rlca			;1004
	nop			;1005
	add a,b			;1006
	dec b			;1007
l1008h:
	rla			;1008
	add a,c			;1009
	ld (hl),b		;100a
	ld b,072h		;100b
	add a,c			;100d
	nop			;100e
	ld (bc),a		;100f
	or (hl)			;1010
	dec b			;1011
	nop			;1012
	inc b			;1013
	ld l,c			;1014
	add a,c			;1015
	ld l,b			;1016
	add a,b			;1017
	dec bc			;1018
	inc e			;1019
	ex af,af'		;101a
	nop			;101b
	ld (bc),a		;101c
	or (hl)			;101d
	ex af,af'		;101e
	nop			;101f
	add a,b			;1020
	ld c,027h		;1021
	rlca			;1023
	nop			;1024
	ld (bc),a		;1025
	or (hl)			;1026
	rlca			;1027
	nop			;1028
	add a,b			;1029
	rrca			;102a
	dec (hl)		;102b
	rlca			;102c
	nop			;102d
	ld (bc),a		;102e
	or (hl)			;102f
	ld a,(bc)		;1030
	nop			;1031
	add a,c			;1032
	ld a,l			;1033
	inc bc			;1034
	nop			;1035
	add a,c			;1036
	ld a,a			;1037
	ld c,000h		;1038
	ld (bc),a		;103a
	or (hl)			;103b
	add a,b			;103c
	ld a,(bc)		;103d
	ld (hl),e		;103e
	dec b			;103f
	nop			;1040
	add a,c			;1041
	add a,b			;1042
	add a,b			;1043
	rlca			;1044
	add a,d			;1045
	inc bc			;1046
	nop			;1047
	add a,e			;1048
	add hl,bc		;1049
	ld a,(bc)		;104a
	nop			;104b
	ld (bc),a		;104c
	or (hl)			;104d
	add hl,bc		;104e
	ld a,(hl)		;104f
	rlca			;1050
	nop			;1051
	ld b,081h		;1052
	rlca			;1054
	nop			;1055
	add a,c			;1056
	or (hl)			;1057
	ld e,0b7h		;1058
	inc c			;105a
	nop			;105b
	add a,b			;105c
	add hl,bc		;105d
	dec bc			;105e
	inc (hl)		;105f
	nop			;1060
	add a,b			;1061
	dec bc			;1062
	ld b,h			;1063
	dec l			;1064
	nop			;1065
	add a,b			;1066
	inc c			;1067
	ld c,a			;1068
	add a,c			;1069
	nop			;106a
	add a,b			;106b
	add hl,bc		;106c
	ld e,e			;106d
	nop			;106e
	add a,e			;106f
	inc bc			;1070
	ld bc,08002h		;1071
	dec b			;1074
	inc b			;1075
	adc a,e			;1076
	djnz l1088h		;1077
	ld c,00dh		;1079
	inc c			;107b
	ld a,(bc)		;107c
	add hl,bc		;107d
	dec bc			;107e
	inc de			;107f
	ld de,08012h		;1080
	dec b			;1083
	inc d			;1084
	sbc a,b			;1085
	jr nz,l10a7h		;1086
l1088h:
	ld e,01dh		;1088
	inc e			;108a
	ld a,(de)		;108b
	add hl,de		;108c
	dec de			;108d
	ld h,021h		;108e
	ld (02325h),hl		;1090
	daa			;1093
	inc h			;1094
	jr z,l10c7h		;1095
	inc l			;1097
	cpl			;1098
	dec hl			;1099
	dec l			;109a
	ld hl,(02e29h)		;109b
	add a,b			;109e
	ex af,af'		;109f
	ld sp,04088h		;10a0
	ccf			;10a3
	ld a,03dh		;10a4
	inc a			;10a6
l10a7h:
	dec sp			;10a7
	ld a,(l0039h)		;10a8
	add a,h			;10ab
	dec l			;10ac
	add hl,de		;10ad
	ld l,02fh		;10ae
	nop			;10b0
	add a,h			;10b1
	ld hl,(02b19h)		;10b2
	inc l			;10b5
	nop			;10b6
	ex af,af'		;10b7
	nop			;10b8
	add a,b			;10b9
	nop			;10ba
	nop			;10bb
	ld bc,00180h		;10bc
	nop			;10bf
	ld (bc),a		;10c0
	add a,b			;10c1
	ld (bc),a		;10c2
	nop			;10c3
	inc bc			;10c4
	add a,b			;10c5
	inc bc			;10c6
l10c7h:
	nop			;10c7
	inc b			;10c8
	nop			;10c9
	dec b			;10ca
	rrca			;10cb
	djnz l10deh		;10cc
	djnz l10e0h		;10ce
	djnz l10e2h		;10d0
	djnz l10f4h		;10d2
	jr nz,l10e6h		;10d4
	ex af,af'		;10d6
	ld bc,08810h		;10d7
	ld bc,08810h		;10da
	nop			;10dd
l10deh:
	djnz l10e8h		;10de
l10e0h:
	nop			;10e0
	dec d			;10e1
l10e2h:
	dec bc			;10e2
	add hl,bc		;10e3
	ld d,00ch		;10e4
l10e6h:
	ld a,(bc)		;10e6
	rla			;10e7
l10e8h:
	dec c			;10e8
	dec bc			;10e9
	jr l10fbh		;10ea
	ld a,(bc)		;10ec
	ld a,(de)		;10ed
	djnz l10fah		;10ee
	dec de			;10f0
	djnz l10fch		;10f1
	add hl,de		;10f3
l10f4h:
	ld de,l1809h		;10f4
	ld (de),a		;10f7
	ex af,af'		;10f8
	ld a,(de)		;10f9
l10fah:
	inc de			;10fa
l10fbh:
	ex af,af'		;10fb
l10fch:
	dec de			;10fc
	inc de			;10fd
	rlca			;10fe
	add hl,de		;10ff
	inc d			;1100
	rlca			;1101
	jr l1119h		;1102
	ld b,014h		;1104
	ld d,006h		;1106
	djnz l1120h		;1108
l110ah:
	dec b			;110a
	ld de,l0515h		;110b
	dec hl			;110e
	inc d			;110f
	dec b			;1110
	ld (de),a		;1111
	inc d			;1112
	ld b,02ch		;1113
	inc de			;1115
	ld b,010h		;1116
	ld (de),a		;1118
l1119h:
	ld b,02ah		;1119
	ld (de),a		;111b
	dec b			;111c
	ld de,l0611h		;111d
l1120h:
	ld hl,(l0711h)		;1120
	ld (de),a		;1123
	djnz $+9		;1124
	dec hl			;1126
	djnz l112fh		;1127
	inc l			;1129
	rrca			;112a
	rlca			;112b
	djnz l113ch		;112c
	rlca			;112e
l112fh:
	ld l,00eh		;112f
	dec b			;1131
	ld de,l070dh		;1132
	dec hl			;1135
	inc c			;1136
	rlca			;1137
	ld (de),a		;1138
	inc c			;1139
	ex af,af'		;113a
	add a,l			;113b
l113ch:
	ld bc,00302h		;113c
	inc b			;113f
	dec b			;1140
	nop			;1141
	add a,h			;1142
	ld a,(bc)		;1143
	dec bc			;1144
	inc c			;1145
	dec b			;1146
	nop			;1147
	add a,h			;1148
	ld h,007h		;1149
	ex af,af'		;114b
	add hl,bc		;114c
	nop			;114d
	dec b			;114e
	ld l,000h		;114f
	ld bc,00a3ah		;1151
	jr l1177h		;1154
	inc e			;1156
	dec bc			;1157
	inc d			;1158
	dec d			;1159
	inc de			;115a
	nop			;115b
	ld a,(de)		;115c
	ld c,00bh		;115d
	nop			;115f
	ld a,(bc)		;1160
	rrca			;1161
	jr l116fh		;1162
	add hl,bc		;1164
	ld a,(de)		;1165
	dec d			;1166
	jr l1169h		;1167
l1169h:
	dec c			;1169
	dec bc			;116a
	inc d			;116b
	dec bc			;116c
	jr l1176h		;116d
l116fh:
	ld (de),a		;116f
	cp 042h			;1170
	ld a,(l0c15h)		;1172
	nop			;1175
l1176h:
	ld a,(de)		;1176
l1177h:
	ld c,00bh		;1177
	nop			;1179
	add hl,de		;117a
	ld d,007h		;117b
	add hl,bc		;117d
	dec bc			;117e
	nop			;117f
	add hl,de		;1180
	add hl,bc		;1181
	rrca			;1182
	dec bc			;1183
	inc d			;1184
	add hl,bc		;1185
	dec bc			;1186
	nop			;1187
	rlca			;1188
	dec c			;1189
	dec bc			;118a
	inc d			;118b
	add hl,bc		;118c
	rra			;118d
	cp 084h			;118e
	ld a,(01a07h)		;1190
	ld a,(de)		;1193
	dec bc			;1194
	inc de			;1195
	ld d,01ah		;1196
	dec bc			;1198
	ld a,(bc)		;1199
	nop			;119a
	rlca			;119b
	nop			;119c
	add hl,bc		;119d
	dec d			;119e
	dec de			;119f
	ld d,000h		;11a0
	ld a,(bc)		;11a2
	inc hl			;11a3
	dec bc			;11a4
	ld a,(de)		;11a5
	rlca			;11a6
	ld a,(de)		;11a7
	ld hl,004ffh		;11a8
	ld a,(l180ah)		;11ab
	ld hl,l0b1ch		;11ae
	inc d			;11b1
	dec d			;11b2
	inc de			;11b3
	nop			;11b4
	inc c			;11b5
	rlca			;11b6
	rrca			;11b7
	ld (de),a		;11b8
	dec bc			;11b9
	ld a,(bc)		;11ba
	nop			;11bb
	rrca			;11bc
	inc d			;11bd
	nop			;11be
	rlca			;11bf
	nop			;11c0
	add hl,bc		;11c1
	dec d			;11c2
	dec de			;11c3
	ld d,0feh		;11c4
	ld b,l			;11c6
	ld a,(0230ah)		;11c7
	dec bc			;11ca
	ld a,(de)		;11cb
	rlca			;11cc
	ld a,(de)		;11cd
	nop			;11ce
	rlca			;11cf
	inc d			;11d0
	ld a,(bc)		;11d1
	nop			;11d2
	dec e			;11d3
	rlca			;11d4
	add hl,de		;11d5
	nop			;11d6
	add hl,bc		;11d7
	rlca			;11d8
	ld d,01ah		;11d9
	dec de			;11db
	jr l11e9h		;11dc
	ld a,(bc)		;11de
	ld hl,082feh		;11df
	ld a,(l130bh)		;11e2
	ld d,00bh		;11e5
	jr l11feh		;11e7
l11e9h:
	jr l11ebh		;11e9
l11ebh:
	ld (de),a		;11eb
	rlca			;11ec
	jr l1208h		;11ed
	nop			;11ef
	dec bc			;11f0
	ld e,00fh		;11f1
	ld (de),a		;11f3
	dec bc			;11f4
	ld a,(bc)		;11f5
	nop			;11f6
	ld a,(bc)		;11f7
	jr l121bh		;11f8
	inc e			;11fa
	dec bc			;11fb
	inc d			;11fc
	dec d			;11fd
l11feh:
	inc de			;11fe
	cp 0c9h			;11ff
	ld a,(l151ah)		;1201
	nop			;1204
	ld d,012h		;1205
	rlca			;1207
l1208h:
	inc d			;1208
	dec bc			;1209
	ld a,(de)		;120a
	nop			;120b
	add hl,de		;120c
	rlca			;120d
	jr l121ah		;120e
	ld hl,l0000h		;1210
	rst 38h			;1213
	jr z,$+60		;1214
	add hl,bc		;1216
	dec d			;1217
	add hl,de		;1218
	inc de			;1219
l121ah:
	rrca			;121a
l121bh:
	add hl,bc		;121b
	nop			;121c
	rra			;121d
	dec bc			;121e
	rlca			;121f
	jr l1222h		;1220
l1222h:
	inc bc			;1222
	inc bc			;1223
	inc bc			;1224
	ld (bc),a		;1225
	cp 068h			;1226
	ld a,(l180ah)		;1228
	ld hl,l0b1ch		;122b
	inc d			;122e
	dec d			;122f
	inc de			;1230
	nop			;1231
	dec bc			;1232
	add hl,de		;1233
	add hl,bc		;1234
	rlca			;1235
	ld d,00bh		;1236
	ld a,(bc)		;1238
	cp 0a8h			;1239
	ld a,(l180ch)		;123b
	dec d			;123e
	inc de			;123f
	nop			;1240
	ld d,012h		;1241
	rlca			;1243
	inc d			;1244
	dec bc			;1245
	ld a,(de)		;1246
	nop			;1247
	add hl,de		;1248
	rlca			;1249
	jr l1256h		;124a
	ld hl,023ffh		;124c
	ld a,(l0b0eh)		;124f
	nop			;1252
	dec e			;1253
	rlca			;1254
	add hl,de		;1255
l1256h:
	nop			;1256
	inc d			;1257
	dec d			;1258
	ld a,(de)		;1259
	nop			;125a
	inc c			;125b
	dec d			;125c
	dec de			;125d
	inc d			;125e
	ld a,(bc)		;125f
	ld (00a00h),hl		;1260
	dec bc			;1263
	add hl,de		;1264
	ld d,00fh		;1265
	ld a,(de)		;1267
	dec bc			;1268
	cp 061h			;1269
	ld a,(00e1ah)		;126b
	dec bc			;126e
	nop			;126f
	add hl,de		;1270
	dec bc			;1271
	rlca			;1272
	jr l127eh		;1273
	ld c,000h		;1275
	dec d			;1277
	inc c			;1278
	nop			;1279
	rrca			;127a
	inc de			;127b
	ld d,00bh		;127c
l127eh:
	jr l128fh		;127e
	rlca			;1280
	ld (de),a		;1281
	nop			;1282
	rlca			;1283
	jr l1299h		;1284
	rlca			;1286
	ld a,(bc)		;1287
	rlca			;1288
	ld hl,0a8feh		;1289
	ld a,(l1509h)		;128c
l128fh:
	add hl,de		;128f
	inc de			;1290
	rrca			;1291
	add hl,bc		;1292
	nop			;1293
	rra			;1294
	dec bc			;1295
	rlca			;1296
	jr l1299h		;1297
l1299h:
	inc bc			;1299
	inc bc			;129a
	inc bc			;129b
	inc bc			;129c
	rst 38h			;129d
	jp nz,06739h		;129e
	ld (hl),d		;12a1
	ld (hl),d		;12a2
	nop			;12a3
	ld a,d			;12a4
	ld l,(hl)		;12a5
	ld l,e			;12a6
	nop			;12a7
	ld l,c			;12a8
	ld (hl),l		;12a9
	ld (hl),e		;12aa
	ld (hl),e		;12ab
	ld a,e			;12ac
	ld (hl),h		;12ad
	ld l,a			;12ae
	ld l,c			;12af
	ld h,a			;12b0
	ld a,d			;12b1
	ld l,a			;12b2
	ld (hl),l		;12b3
	ld (hl),h		;12b4
	ld a,c			;12b5
	nop			;12b6
	ld a,l			;12b7
	ld l,a			;12b8
	ld a,d			;12b9
	ld l,(hl)		;12ba
	cp 001h			;12bb
	ld a,(l0064h)		;12bd
	halt			;12c0
	ld (hl),d		;12c1
	ld h,a			;12c2
	ld (hl),h		;12c3
	ld l,e			;12c4
	ld a,d			;12c5
	ld a,c			;12c6
	add a,d			;12c7
	nop			;12c8
	ld (hl),h		;12c9
	ld l,e			;12ca
	ld (hl),e		;12cb
	ld l,e			;12cc
	ld a,c			;12cd
	ld l,a			;12ce
	ld a,c			;12cf
	add a,e			;12d0
	nop			;12d1
	ld (hl),h		;12d2
	ld l,e			;12d3
	ld (hl),l		;12d4
	add a,l			;12d5
	ld a,c			;12d6
	ld a,b			;12d7
	ld h,a			;12d8
	ld l,c			;12d9
	ld l,e			;12da
	add a,l			;12db
	cp 042h			;12dc
	ld a,(07276h)		;12de
	ld h,a			;12e1
	ld (hl),h		;12e2
	ld a,d			;12e3
	add a,d			;12e4
	ld a,l			;12e5
	ld l,e			;12e6
	ld a,b			;12e7
	ld l,e			;12e8
	nop			;12e9
	ld a,c			;12ea
	ld a,e			;12eb
	ld l,d			;12ec
	ld l,d			;12ed
	ld l,e			;12ee
	ld (hl),h		;12ef
	ld (hl),d		;12f0
	ld a,a			;12f1
	nop			;12f2
	ld a,c			;12f3
	ld a,d			;12f4
	ld (hl),l		;12f5
	halt			;12f6
	halt			;12f7
	ld l,e			;12f8
	ld l,d			;12f9
	add a,c			;12fa
	cp 082h			;12fb
	ld a,(07a6fh)		;12fd
l1300h:
	nop			;1300
	ld l,b			;1301
	ld l,e			;1302
	ld l,c			;1303
	ld h,a			;1304
	ld (hl),e		;1305
	ld l,e			;1306
	nop			;1307
	ld l,c			;1308
	ld (hl),d		;1309
	ld l,e			;130a
l130bh:
	ld h,a			;130b
	ld a,b			;130c
l130dh:
	nop			;130d
	ld a,d			;130e
	ld l,(hl)		;130f
	ld h,a			;1310
	ld a,d			;1311
	nop			;1312
	ld a,c			;1313
	ld (hl),l		;1314
	ld (hl),e		;1315
	ld l,e			;1316
	ld (hl),l		;1317
	ld (hl),h		;1318
	ld l,e			;1319
	cp 0c6h			;131a
	ld a,(0746fh)		;131c
	ld a,h			;131f
	ld h,a			;1320
	ld l,d			;1321
	ld l,e			;1322
	ld l,d			;1323
	nop			;1324
	ld a,d			;1325
	ld l,(hl)		;1326
	ld l,e			;1327
	nop			;1328
	halt			;1329
	ld (hl),d		;132a
	ld h,a			;132b
	ld (hl),h		;132c
	ld l,e			;132d
	ld a,d			;132e
	ld a,c			;132f
	add a,c			;1330
	rst 38h			;1331
	inc b			;1332
	ld a,(00e1ah)		;1333
	dec bc			;1336
	nop			;1337
	rrca			;1338
	inc d			;1339
	inc e			;133a
	rlca			;133b
	ld a,(bc)		;133c
	dec bc			;133d
	jr l1340h		;133e
l1340h:
	dec e			;1340
	rlca			;1341
	add hl,de		;1342
	nop			;1343
	ld a,(bc)		;1344
	jr l1368h		;1345
	inc e			;1347
	dec bc			;1348
	inc d			;1349
	dec d			;134a
	inc de			;134b
	ld hl,042ffh		;134c
	ld a,(0786ah)		;134f
	add a,c			;1352
	ld a,h			;1353
	ld l,e			;1354
	ld (hl),h		;1355
	ld (hl),l		;1356
	ld (hl),e		;1357
	nop			;1358
	ld h,a			;1359
	ld a,d			;135a
	ld a,d			;135b
	ld l,e			;135c
	ld (hl),e		;135d
	halt			;135e
	ld a,d			;135f
	ld l,e			;1360
	ld l,d			;1361
	nop			;1362
	ld a,d			;1363
	ld (hl),l		;1364
	nop			;1365
	ld l,a			;1366
	ld (hl),h		;1367
l1368h:
	ld a,h			;1368
	ld h,a			;1369
	ld l,d			;136a
	ld l,e			;136b
	cp 083h			;136c
	ld a,(07276h)		;136e
	ld h,a			;1371
	ld (hl),h		;1372
	ld l,e			;1373
	ld a,d			;1374
	nop			;1375
	ld (hl),h		;1376
	ld l,e			;1377
	ld (hl),e		;1378
	ld l,e			;1379
	ld a,c			;137a
	ld l,a			;137b
	ld a,c			;137c
	add a,d			;137d
	ld l,c			;137e
	ld (hl),l		;137f
	ld (hl),h		;1380
	ld a,c			;1381
	halt			;1382
	ld l,a			;1383
	ld a,b			;1384
	ld l,a			;1385
	ld (hl),h		;1386
	ld l,l			;1387
	cp 0c7h			;1388
	ld a,(06f7dh)		;138a
	ld a,d			;138d
	ld l,(hl)		;138e
	nop			;138f
	ld a,d			;1390
	ld l,(hl)		;1391
	ld l,e			;1392
	nop			;1393
	ld l,b			;1394
	ld h,a			;1395
	ld l,c			;1396
	ld a,d			;1397
	ld l,e			;1398
	ld a,b			;1399
	ld l,a			;139a
	ld h,a			;139b
	ld (hl),h		;139c
	add a,c			;139d
	rst 38h			;139e
	ex af,af'		;139f
	ld a,(l1509h)		;13a0
	add hl,de		;13a3
	inc de			;13a4
	rrca			;13a5
	add hl,bc		;13a6
	nop			;13a7
	rra			;13a8
	dec bc			;13a9
	rlca			;13aa
	jr l13adh		;13ab
l13adh:
	inc bc			;13ad
	inc bc			;13ae
	inc bc			;13af
	inc bc			;13b0
	cp 042h			;13b1
	ld a,(00e1ah)		;13b3
	dec bc			;13b6
	nop			;13b7
	inc d			;13b8
	dec bc			;13b9
	inc de			;13ba
	dec bc			;13bb
	add hl,de		;13bc
	rrca			;13bd
	add hl,de		;13be
	nop			;13bf
	ld c,00fh		;13c0
	dec c			;13c2
	ld c,00bh		;13c3
	add hl,de		;13c5
	ld a,(de)		;13c6
	nop			;13c7
	add hl,bc		;13c8
	dec d			;13c9
	dec de			;13ca
	inc d			;13cb
	add hl,bc		;13cc
	rrca			;13cd
	ld (de),a		;13ce
	cp 082h			;13cf
	ld a,(l0b0ah)		;13d1
	add hl,bc		;13d4
	rrca			;13d5
	ld a,(bc)		;13d6
	dec bc			;13d7
	ld a,(bc)		;13d8
	nop			;13d9
	ld a,(de)		;13da
	dec d			;13db
	nop			;13dc
	ld a,(bc)		;13dd
	rrca			;13de
	add hl,de		;13df
	ld d,007h		;13e0
	ld a,(de)		;13e2
	add hl,bc		;13e3
	ld c,000h		;13e4
	inc de			;13e6
	dec bc			;13e7
	ld a,(de)		;13e8
	rlca			;13e9
	ld (de),a		;13ea
	rrca			;13eb
	dec d			;13ec
	inc d			;13ed
	ld hl,044ffh		;13ee
	ld a,(l0710h)		;13f1
	inc de			;13f4
	dec bc			;13f5
	add hl,de		;13f6
	nop			;13f7
	ex af,af'		;13f8
	dec de			;13f9
	jr l1416h		;13fa
	dec d			;13fc
	inc d			;13fd
	nop			;13fe
	dec e			;13ff
	rlca			;1400
	add hl,de		;1401
	nop			;1402
	add hl,bc		;1403
	ld c,015h		;1404
l1406h:
	add hl,de		;1406
	dec bc			;1407
	inc d			;1408
	cp 088h			;1409
	ld a,(l151ah)		;140b
	nop			;140e
	inc c			;140f
	ld (de),a		;1410
	rra			;1411
	nop			;1412
	inc de			;1413
	dec bc			;1414
	ld a,(de)		;1415
l1416h:
	rlca			;1416
	ld (de),a		;1417
	rrca			;1418
	dec d			;1419
	inc d			;141a
	ld hl,028ffh		;141b
	ld a,(l1813h)		;141e
	ld hl,l0710h		;1421
	inc de			;1424
	dec bc			;1425
	add hl,de		;1426
	nop			;1427
	ex af,af'		;1428
	dec de			;1429
	jr $+28			;142a
	dec d			;142c
	inc d			;142d
	cp 064h			;142e
	ld a,(l1619h)		;1430
	dec bc			;1433
	add hl,bc		;1434
	rrca			;1435
	rlca			;1436
	ld (de),a		;1437
	nop			;1438
	add hl,bc		;1439
	rlca			;143a
	ld d,01ah		;143b
	rlca			;143d
	rrca			;143e
	inc d			;143f
	nop			;1440
	dec d			;1441
	inc c			;1442
	nop			;1443
	rrca			;1444
	ld hl,02119h		;1445
	inc c			;1448
	ld hl,0a6feh		;1449
	ld a,(01e0bh)		;144c
	dec h			;144f
	inc e			;1450
	rrca			;1451
	add hl,bc		;1452
	nop			;1453
	inc e			;1454
	rrca			;1455
	ld d,00bh		;1456
	jr l145ah		;1458
l145ah:
	ld d,00fh		;145a
	ld (de),a		;145c
	dec d			;145d
	ld a,(de)		;145e
	ld hl,l01ffh		;145f
	inc c			;1462
	sbc a,(hl)		;1463
	dec bc			;1464
	ld bc,0871fh		;1465
	ld a,(bc)		;1468
	ld bc,0900eh		;1469
	ld a,(bc)		;146c
	ld bc,08721h		;146d
	ld a,(bc)		;1470
	ld (bc),a		;1471
	dec c			;1472
	ld (l0086h),a		;1473
	ld (bc),a		;1476
	rrca			;1477
	djnz l1406h		;1478
	nop			;147a
	ld (bc),a		;147b
	inc hl			;147c
	ld (l0086h),hl		;147d
	ld (bc),a		;1480
	inc (hl)		;1481
	jr nz,l1406h		;1482
	nop			;1484
	ld (bc),a		;1485
	dec c			;1486
	ld (03385h),a		;1487
	ld (bc),a		;148a
	ld de,08a12h		;148b
	inc sp			;148e
	ld (bc),a		;148f
	dec h			;1490
	inc h			;1491
	add a,l			;1492
	inc sp			;1493
	ld (bc),a		;1494
	inc (hl)		;1495
	jr nz,$-122		;1496
	nop			;1498
	inc b			;1499
	inc de			;149a
	inc d			;149b
	inc c			;149c
	rra			;149d
	sub h			;149e
	inc sp			;149f
	inc b			;14a0
	inc c			;14a1
	rra			;14a2
	daa			;14a3
	ld h,085h		;14a4
	nop			;14a6
	dec b			;14a7
	dec d			;14a8
	nop			;14a9
	ld d,017h		;14aa
	ld (l0084h),a		;14ac
	ld (bc),a		;14af
	jr l14cbh		;14b0
	add a,h			;14b2
	nop			;14b3
	ld (bc),a		;14b4
	inc l			;14b5
	dec hl			;14b6
	add a,h			;14b7
	nop			;14b8
	dec b			;14b9
	inc (hl)		;14ba
	ld hl,(l0029h)		;14bb
	jr z,$-120		;14be
	nop			;14c0
	inc bc			;14c1
	ld a,(de)		;14c2
	inc c			;14c3
	dec de			;14c4
	add a,d			;14c5
	nop			;14c6
	ld (bc),a		;14c7
	inc e			;14c8
	dec e			;14c9
	add a,h			;14ca
l14cbh:
	add hl,bc		;14cb
	inc b			;14cc
	ld e,009h		;14cd
	add hl,bc		;14cf
	ld sp,00984h		;14d0
	rlca			;14d3
	jr nc,l1505h		;14d4
	nop			;14d6
	nop			;14d7
	ld l,01fh		;14d8
	dec l			;14da
	add a,l			;14db
	nop			;14dc
	add hl,bc		;14dd
	ld c,l			;14de
	dec sp			;14df
	nop			;14e0
	ld sp,l0000h		;14e1
	ld c,l			;14e4
	inc a			;14e5
	ld a,(0008ah)		;14e6
	add hl,bc		;14e9
	ld c,d			;14ea
	ld c,h			;14eb
	ld c,(hl)		;14ec
	nop			;14ed
	nop			;14ee
	ld b,c			;14ef
	nop			;14f0
	ld c,e			;14f1
	ld c,(hl)		;14f2
	add a,h			;14f3
	nop			;14f4
	inc bc			;14f5
	jr nc,l14f8h		;14f6
l14f8h:
	ld c,l			;14f8
	add a,e			;14f9
	nop			;14fa
	ld (bc),a		;14fb
	jr nc,l1530h		;14fc
	adc a,h			;14fe
	nop			;14ff
	ld (bc),a		;1500
	ld b,d			;1501
	ld b,b			;1502
	add a,e			;1503
	nop			;1504
l1505h:
	ld a,(bc)		;1505
	ld c,(hl)		;1506
	nop			;1507
	ld b,b			;1508
l1509h:
	nop			;1509
	nop			;150a
	inc sp			;150b
	inc (hl)		;150c
	ld sp,03200h		;150d
	add a,e			;1510
	nop			;1511
	add a,d			;1512
	ld sp,0008ch		;1513
	add a,d			;1516
	ld b,c			;1517
l1518h:
	add a,e			;1518
	nop			;1519
l151ah:
	ld c,042h		;151a
	nop			;151c
	ld b,c			;151d
	ld b,h			;151e
	ld b,e			;151f
	nop			;1520
	ld c,l			;1521
	nop			;1522
	nop			;1523
	ld sp,03635h		;1524
	ld c,l			;1527
	ld c,l			;1528
	adc a,(hl)		;1529
	nop			;152a
	ld (de),a		;152b
	ld c,(hl)		;152c
	ld c,(hl)		;152d
	ld b,(hl)		;152e
	ld b,l			;152f
l1530h:
	ld b,c			;1530
	nop			;1531
	nop			;1532
	ld c,(hl)		;1533
	nop			;1534
	nop			;1535
	ld (04d00h),a		;1536
	nop			;1539
	nop			;153a
	scf			;153b
	ld (08e32h),a		;153c
	nop			;153f
	ld (de),a		;1540
	ld b,d			;1541
	ld b,d			;1542
	ld b,a			;1543
	nop			;1544
	nop			;1545
	ld c,(hl)		;1546
	nop			;1547
	ld b,d			;1548
	nop			;1549
	nop			;154a
	ld sp,03200h		;154b
	nop			;154e
	nop			;154f
	nop			;1550
	ld sp,08e31h		;1551
	nop			;1554
	ld de,04141h		;1555
	nop			;1558
	nop			;1559
	nop			;155a
	ld b,d			;155b
	nop			;155c
	ld b,c			;155d
	nop			;155e
	ld c,l			;155f
	jr c,l1562h		;1560
l1562h:
	ld sp,03800h		;1562
	ld c,l			;1565
	ld c,l			;1566
	sub b			;1567
	nop			;1568
	djnz l15b9h		;1569
	ld c,(hl)		;156b
	ld c,b			;156c
	nop			;156d
	ld b,c			;156e
	nop			;156f
	ld c,b			;1570
	ld c,(hl)		;1571
	dec l			;1572
	dec a			;1573
	dec l			;1574
	dec a			;1575
	ld l,02fh		;1576
	ld (09032h),a		;1578
	nop			;157b
	ex af,af'		;157c
	ld b,d			;157d
	ld b,d			;157e
	ccf			;157f
	ld a,02dh		;1580
	dec a			;1582
	dec l			;1583
	dec a			;1584
	nop			;1585
	rlca			;1586
	nop			;1587
	add a,(hl)		;1588
	ld (hl),l		;1589
	ld (hl),h		;158a
	nop			;158b
	nop			;158c
	adc a,a			;158d
	sub b			;158e
	rrca			;158f
	nop			;1590
	add a,h			;1591
	halt			;1592
	nop			;1593
	nop			;1594
	sub c			;1595
	ld c,000h		;1596
	adc a,b			;1598
	ld (hl),a		;1599
	ld a,b			;159a
	ld a,c			;159b
	ld a,d			;159c
	sub l			;159d
	sub h			;159e
	sub e			;159f
	sub d			;15a0
	dec bc			;15a1
	nop			;15a2
	adc a,d			;15a3
	ld a,e			;15a4
	ld a,h			;15a5
	ld a,l			;15a6
	ld a,(hl)		;15a7
	ld a,a			;15a8
	sbc a,d			;15a9
	sbc a,c			;15aa
	sbc a,b			;15ab
	sub a			;15ac
	sub (hl)		;15ad
	dec b			;15ae
	nop			;15af
	sub h			;15b0
	add a,b			;15b1
	add a,c			;15b2
	ld (hl),c		;15b3
	add a,d			;15b4
	add a,e			;15b5
	add a,h			;15b6
	add a,l			;15b7
	add a,(hl)		;15b8
l15b9h:
	add a,a			;15b9
	adc a,b			;15ba
	and e			;15bb
	and d			;15bc
	and c			;15bd
	and b			;15be
	sbc a,a			;15bf
	sbc a,(hl)		;15c0
	sbc a,l			;15c1
	ld (hl),c		;15c2
	sbc a,h			;15c3
	sbc a,e			;15c4
	inc b			;15c5
	nop			;15c6
	add a,c			;15c7
	ld (hl),b		;15c8
	inc bc			;15c9
	nop			;15ca
	add a,h			;15cb
	adc a,e			;15cc
	adc a,h			;15cd
	and a			;15ce
	and (hl)		;15cf
	inc bc			;15d0
	nop			;15d1
	add a,c			;15d2
	ld (hl),b		;15d3
	inc b			;15d4
	nop			;15d5
	sub h			;15d6
	adc a,c			;15d7
	adc a,d			;15d8
	ld (hl),d		;15d9
	ld (hl),e		;15da
	adc a,(hl)		;15db
	adc a,l			;15dc
	adc a,c			;15dd
	adc a,d			;15de
	ld (hl),d		;15df
	ld (hl),e		;15e0
	adc a,(hl)		;15e1
	adc a,l			;15e2
	and l			;15e3
	and h			;15e4
	ld (hl),d		;15e5
	ld (hl),e		;15e6
	adc a,(hl)		;15e7
	adc a,l			;15e8
	and l			;15e9
	and h			;15ea
	nop			;15eb
	ret po			;15ec
	ret po			;15ed
	nop			;15ee
	ret c			;15ef
	ret p			;15f0
	inc b			;15f1
	ret p			;15f2
	ret po			;15f3
	ex af,af'		;15f4
	ret p			;15f5
	ret p			;15f6
	inc c			;15f7
l15f8h:
	ret po			;15f8
	djnz l1613h		;15f9
	ret c			;15fb
	nop			;15fc
	inc e			;15fd
l15feh:
	ret p			;15fe
	nop			;15ff
l1600h:
	inc h			;1600
	ret p			;1601
	djnz l1624h		;1602
	ret po			;1604
	ret pe			;1605
	djnz l15f8h		;1606
	ret p			;1608
	inc d			;1609
	ret po			;160a
	ex af,af'		;160b
	jr z,l15feh		;160c
	nop			;160e
	inc l			;160f
	adc a,c			;1610
	ld e,l			;1611
	ld e,h			;1612
l1613h:
	ld e,e			;1613
	ld e,d			;1614
l1615h:
	ld e,a			;1615
	ld e,(hl)		;1616
	nop			;1617
	nop			;1618
l1619h:
	ld h,b			;1619
	ex af,af'		;161a
	nop			;161b
	add a,e			;161c
	ld h,e			;161d
	ld h,d			;161e
	ld h,c			;161f
	nop			;1620
	adc a,b			;1621
	ld d,b			;1622
	ld d,c			;1623
l1624h:
	ld d,d			;1624
	ld d,e			;1625
	nop			;1626
	nop			;1627
	ld d,h			;1628
	ld d,l			;1629
	inc bc			;162a
	nop			;162b
	add a,c			;162c
	ld d,(hl)		;162d
	inc b			;162e
	nop			;162f
	add a,h			;1630
	ld d,a			;1631
	ld e,b			;1632
	ld e,c			;1633
	nop			;1634
	nop			;1635
	ld de,03843h		;1636
	call 0b641h		;1639
	ld c,01ah		;163c
	jp 0a67bh		;163e
	ld hl,0b832h		;1641
	ld a,(l002bh)		;1644
	and 00fh		;1647
	jr z,l164eh		;1649
	ld hl,0b7a1h		;164b
l164eh:
	ret			;164e
	ld a,001h		;164f
	ld (0e1d7h),a		;1651
	xor a			;1654
	ld (0e496h),a		;1655
	call 04c76h		;1658
	call 0a889h		;165b
	call 0b641h		;165e
	ex de,hl		;1661
	ld hl,0ed00h		;1662
	call 0a6ebh		;1665
	ld hl,0b8e6h		;1668
	ld (0f000h),hl		;166b
	ld hl,l0307h		;166e
	ld (0f002h),hl		;1671
	ld hl,00500h		;1674
	ld (0f004h),hl		;1677
	ld hl,0b8d7h		;167a
	ld (0f006h),hl		;167d
	ld a,003h		;1680
	ld (0f008h),a		;1682
	ld hl,(0f000h)		;1685
	call 0b700h		;1688
	call 0a73bh		;168b
	ld a,(0e496h)		;168e
	ld c,a			;1691
	ld hl,0f002h		;1692
	add a,(hl)		;1695
	call 0a334h		;1696
	call 0b6f3h		;1699
	push de			;169c
	call 0b6e5h		;169d
	call 0b710h		;16a0
	add hl,de		;16a3
	pop de			;16a4
	call 0b6d5h		;16a5
	ld hl,(0f006h)		;16a8
	call 0b700h		;16ab
	ld a,002h		;16ae
	ld c,a			;16b0
	call 0a717h		;16b1
	ld a,(0e496h)		;16b4
	ld c,a			;16b7
	ld a,(0f005h)		;16b8
	dec a			;16bb
	sub c			;16bc
	ld c,a			;16bd
	ld hl,0f005h		;16be
	ld a,(0f002h)		;16c1
	sub (hl)		;16c4
	add a,c			;16c5
	call 0a334h		;16c6
	call 0b6f3h		;16c9
	push de			;16cc
	call 0b6e5h		;16cd
	ld de,0ed00h		;16d0
	add hl,de		;16d3
	pop de			;16d4
	ex de,hl		;16d5
	ld b,001h		;16d6
	ld c,01ah		;16d8
	ld a,(0f004h)		;16da
	and a			;16dd
	jr z,l16e2h		;16de
	ld c,010h		;16e0
l16e2h:
	jp 0a2f8h		;16e2
	ld a,(0f004h)		;16e5
	and a			;16e8
	ld a,c			;16e9
	push af			;16ea
	call z,0b727h		;16eb
	pop af			;16ee
	call nz,0a33dh		;16ef
	ret			;16f2
	ld de,03800h		;16f3
	add hl,de		;16f6
	ld a,(0f008h)		;16f7
	ld e,a			;16fa
	ld d,000h		;16fb
	add hl,de		;16fd
	ex de,hl		;16fe
	ret			;16ff
	ld a,(0e496h)		;1700
	ld c,a			;1703
	add a,a			;1704
	add a,c			;1705
	call 0407ah		;1706
	ld b,(hl)		;1709
	inc hl			;170a
	ld e,(hl)		;170b
	inc hl			;170c
	ld d,(hl)		;170d
	ex de,hl		;170e
	ret			;170f
	push hl			;1710
	ld a,(0f004h)		;1711
	and a			;1714
	ld a,(0f005h)		;1715
	push af			;1718
	call z,0b727h		;1719
	pop af			;171c
	call nz,0a33dh		;171d
	ld de,0ed00h		;1720
	add hl,de		;1723
	ex de,hl		;1724
	pop hl			;1725
	ret			;1726
	ld h,000h		;1727
	ld l,a			;1729
	add hl,hl		;172a
	ld c,l			;172b
	ld b,h			;172c
	add hl,hl		;172d
	add hl,hl		;172e
	push hl			;172f
	add hl,bc		;1730
	ld c,l			;1731
	ld b,h			;1732
	pop hl			;1733
	add hl,hl		;1734
	add hl,bc		;1735
	ret			;1736
	ld a,(0e1d7h)		;1737
	and a			;173a
	ret z			;173b
	dec a			;173c
	jr nz,l176fh		;173d
	call 0a7a2h		;173f
	call 0a863h		;1742
	ld a,(0e490h)		;1745
	ld hl,0e498h		;1748
	or (hl)			;174b
	ret nz			;174c
	ld a,(0e496h)		;174d
	inc a			;1750
	cp 005h			;1751
	jr z,l175bh		;1753
	ld (0e496h),a		;1755
	jp 0b668h		;1758
l175bh:
	ld a,001h		;175b
	ld c,003h		;175d
	ld b,02ch		;175f
	ld hl,l0080h		;1761
	call 0a717h		;1764
	call 061c1h		;1767
	ld hl,0e1d7h		;176a
	inc (hl)		;176d
	ret			;176e
l176fh:
	call 0a7a2h		;176f
	ld a,(0e490h)		;1772
	and a			;1775
	ret nz			;1776
	xor a			;1777
	ld (0e1d7h),a		;1778
	ret			;177b
	call 04c76h		;177c
	call 0a889h		;177f
	ld hl,0b8fch		;1782
	ld de,03b00h		;1785
	ld bc,l0008h		;1788
	call l005ch		;178b
	ld a,(0e1c3h)		;178e
	bit 2,a			;1791
	jp z,0b636h		;1793
	ld de,038ech		;1796
	ld hl,0b8b7h		;1799
	ld c,008h		;179c
	jp 0a67bh		;179e
	add a,b			;17a1
	inc b			;17a2
	ld b,b			;17a3
	ld b,000h		;17a4
	add a,b			;17a6
	ld b,044h		;17a7
	ld b,000h		;17a9
	add a,h			;17ab
	ld c,l			;17ac
	ld c,h			;17ad
	ld c,e			;17ae
	ld c,d			;17af
	add a,b			;17b0
	inc b			;17b1
	ld c,(hl)		;17b2
	ld b,052h		;17b3
	add a,b			;17b5
	inc bc			;17b6
	ld d,e			;17b7
	add a,e			;17b8
	ld e,l			;17b9
	ld e,h			;17ba
	ld e,e			;17bb
	ld b,05ah		;17bc
	add a,h			;17be
	ld e,c			;17bf
	ld e,b			;17c0
	ld d,a			;17c1
	ld d,(hl)		;17c2
	add a,c			;17c3
	nop			;17c4
	add a,b			;17c5
	rlca			;17c6
	ld e,(hl)		;17c7
	add a,c			;17c8
	ld l,b			;17c9
	add a,b			;17ca
	inc b			;17cb
	ld h,l			;17cc
	add a,c			;17cd
	ld h,l			;17ce
	add a,b			;17cf
	inc bc			;17d0
	ld l,d			;17d1
	add a,h			;17d2
	ld l,c			;17d3
	ld h,e			;17d4
	ld h,e			;17d5
	ld (hl),c		;17d6
	add a,b			;17d7
	inc b			;17d8
	ld l,l			;17d9
	inc bc			;17da
	nop			;17db
	add a,b			;17dc
	ld de,08572h		;17dd
	add a,a			;17e0
	add a,(hl)		;17e1
	add a,l			;17e2
	add a,h			;17e3
	add a,e			;17e4
	dec b			;17e5
	nop			;17e6
	add a,b			;17e7
	rlca			;17e8
	adc a,b			;17e9
	add a,c			;17ea
	sub c			;17eb
	add a,e			;17ec
	adc a,a			;17ed
	sub b			;17ee
	adc a,(hl)		;17ef
	add a,b			;17f0
	inc b			;17f1
	sub d			;17f2
l17f3h:
	add a,l			;17f3
	sbc a,d			;17f4
	sbc a,c			;17f5
	sbc a,b			;17f6
	sub a			;17f7
	sub (hl)		;17f8
	ex af,af'		;17f9
	nop			;17fa
	add a,c			;17fb
	sbc a,e			;17fc
	inc bc			;17fd
	sbc a,h			;17fe
	add a,c			;17ff
	sbc a,l			;1800
	inc bc			;1801
	sbc a,(hl)		;1802
	add a,b			;1803
	inc b			;1804
	sbc a,a			;1805
	inc bc			;1806
	and h			;1807
	add a,c			;1808
l1809h:
	and e			;1809
l180ah:
	ld c,000h		;180a
l180ch:
	add a,c			;180c
	and l			;180d
	inc bc			;180e
	and (hl)		;180f
	add a,b			;1810
	inc b			;1811
	and a			;1812
l1813h:
	ld (de),a		;1813
	nop			;1814
	add a,e			;1815
	xor e			;1816
	xor l			;1817
	xor h			;1818
l1819h:
	inc bc			;1819
	xor (hl)		;181a
	add a,d			;181b
	xor a			;181c
l181dh:
	or b			;181d
	ld (de),a		;181e
	nop			;181f
	add a,b			;1820
	inc bc			;1821
	or c			;1822
	inc b			;1823
	or l			;1824
	add a,c			;1825
	or h			;1826
	ld (de),a		;1827
	nop			;1828
	add a,c			;1829
	cp d			;182a
	ld b,0b6h		;182b
	add a,c			;182d
	cp c			;182e
	add hl,bc		;182f
	nop			;1830
	nop			;1831
	add a,b			;1832
	inc b			;1833
	ld b,b			;1834
	ld b,000h		;1835
	add a,b			;1837
	ld b,044h		;1838
	ld b,000h		;183a
	add a,h			;183c
	ld c,l			;183d
	ld c,h			;183e
	ld c,e			;183f
	ld c,d			;1840
	add a,b			;1841
	inc b			;1842
	ld c,(hl)		;1843
	ld b,052h		;1844
	add a,b			;1846
	inc bc			;1847
	ld d,e			;1848
	add a,e			;1849
	ld e,l			;184a
	ld e,h			;184b
	ld e,e			;184c
	ld b,05ah		;184d
	add a,l			;184f
	ld e,c			;1850
	ld e,b			;1851
	ld d,a			;1852
	ld d,(hl)		;1853
	nop			;1854
	add a,b			;1855
	rlca			;1856
	ld e,(hl)		;1857
	add a,c			;1858
	ld h,e			;1859
	add a,b			;185a
	ex af,af'		;185b
	ld h,l			;185c
	add a,h			;185d
	ld h,a			;185e
	ld h,e			;185f
	ld h,e			;1860
	ld (hl),c		;1861
	add a,b			;1862
	inc b			;1863
	ld l,l			;1864
	inc bc			;1865
	nop			;1866
	add a,b			;1867
	ld de,08572h		;1868
	add a,a			;186b
	add a,(hl)		;186c
	add a,l			;186d
	add a,h			;186e
	add a,e			;186f
	dec b			;1870
	nop			;1871
	add a,b			;1872
	rlca			;1873
	adc a,b			;1874
	add a,b			;1875
	ex af,af'		;1876
	adc a,(hl)		;1877
	add a,l			;1878
	sbc a,d			;1879
	sbc a,c			;187a
	sbc a,b			;187b
	sub a			;187c
	sub (hl)		;187d
	ex af,af'		;187e
	nop			;187f
	add a,c			;1880
	sbc a,e			;1881
	inc bc			;1882
	sbc a,h			;1883
	add a,c			;1884
	sbc a,l			;1885
	inc bc			;1886
	sbc a,(hl)		;1887
	add a,b			;1888
	inc b			;1889
	sbc a,a			;188a
	inc bc			;188b
	and h			;188c
	add a,c			;188d
	and e			;188e
	ld c,000h		;188f
	add a,c			;1891
	and l			;1892
	inc bc			;1893
	and (hl)		;1894
	add a,b			;1895
	inc b			;1896
	and a			;1897
	ld (de),a		;1898
	nop			;1899
	add a,e			;189a
	xor e			;189b
	xor l			;189c
	xor h			;189d
	inc bc			;189e
	xor (hl)		;189f
	add a,d			;18a0
	xor a			;18a1
	or b			;18a2
	ld (de),a		;18a3
	nop			;18a4
	add a,b			;18a5
	inc bc			;18a6
	or c			;18a7
	inc b			;18a8
	or l			;18a9
	add a,c			;18aa
	or h			;18ab
	ld (de),a		;18ac
	nop			;18ad
	add a,c			;18ae
	cp d			;18af
	ld b,0b6h		;18b0
	add a,c			;18b2
	cp c			;18b3
	add hl,bc		;18b4
	nop			;18b5
	nop			;18b6
	add a,c			;18b7
	jp nc,0d303h		;18b8
	add a,b			;18bb
	inc b			;18bc
	call nc,0bb81h		;18bd
	inc bc			;18c0
	cp h			;18c1
	add a,b			;18c2
	dec b			;18c3
	cp l			;18c4
	add a,d			;18c5
	call sub_03c2h		;18c6
	call nz,sub_0580h	;18c9
	push bc			;18cc
	inc b			;18cd
	adc a,082h		;18ce
	jp z,l06cbh		;18d0
	call z,0cf81h		;18d3
	nop			;18d6
	inc de			;18d7
	ld b,b			;18d8
	inc b			;18d9
	ld d,090h		;18da
	inc bc			;18dc
	inc d			;18dd
	ret p			;18de
	ld (bc),a		;18df
	djnz $+114		;18e0
	ld (bc),a		;18e2
	ld c,000h		;18e3
	ld (bc),a		;18e5
	ld a,(bc)		;18e6
	ret c			;18e7
	inc b			;18e8
	ld b,028h		;18e9
	dec b			;18eb
	ld b,058h		;18ec
	dec b			;18ee
	dec b			;18ef
	adc a,b			;18f0
	dec b			;18f1
	ex af,af'		;18f2
	or b			;18f3
	dec b			;18f4
	or l			;18f5
	cp d			;18f6
	cp b			;18f7
	or l			;18f8
	or a			;18f9
	xor l			;18fa
	nop			;18fb
	cpl			;18fc
	ld d,a			;18fd
	nop			;18fe
	inc b			;18ff
	cpl			;1900
	sub c			;1901
	inc b			;1902
	inc b			;1903
	add hl,bc		;1904
	jr c,l1921h		;1905
	dec hl			;1907
	cpl			;1908
	ld l,021h		;1909
	dec l			;190b
	add hl,hl		;190c
	nop			;190d
	nop			;190e
	ld de,l1819h		;190f
	rla			;1912
	cp 0cbh			;1913
	add hl,sp		;1915
	jr nc,l1944h		;1916
	ld hl,l0039h		;1918
	inc sp			;191b
	dec h			;191c
	inc l			;191d
	dec h			;191e
	inc hl			;191f
	inc (hl)		;1920
l1921h:
	cp 02dh			;1921
	ld a,(03011h)		;1923
	inc l			;1926
	ld hl,02539h		;1927
	ld (06dffh),a		;192a
	ld a,(03012h)		;192d
	inc l			;1930
	ld hl,02539h		;1931
	ld (0ff33h),a		;1934
	ex af,af'		;1937
	jr c,l1965h		;1938
	cpl			;193a
	ld l,021h		;193b
	dec l			;193d
	add hl,hl		;193e
	nop			;193f
	nop			;1940
	jr nc,$+52		;1941
	dec h			;1943
l1944h:
	inc sp			;1944
	dec h			;1945
	ld l,034h		;1946
	inc sp			;1948
	cp 003h			;1949
	ld a,(02834h)		;194b
	dec h			;194e
	rst 38h			;194f
	rlca			;1950
	ld a,(03227h)		;1951
	ld hl,02924h		;1954
	dec (hl)		;1957
	inc sp			;1958
	rst 38h			;1959
	rrca			;195a
	ld a,(02133h)		;195b
	daa			;195e
	ld hl,02300h		;195f
	cpl			;1962
	ld l,034h		;1963
l1965h:
	add hl,hl		;1965
	ld l,035h		;1966
	dec h			;1968
	inc sp			;1969
	cp 04eh			;196a
	ld a,(02937h)		;196c
	inc (hl)		;196f
l1970h:
	jr z,l1970h		;1970
	adc a,d			;1972
	ld a,(02834h)		;1973
	dec h			;1976
	nop			;1977
	dec (hl)		;1978
	inc l			;1979
	inc (hl)		;197a
	add hl,hl		;197b
	dec l			;197c
	ld hl,02534h		;197d
	cp 0c8h			;1980
	ld a,(02f23h)		;1982
	inc sp			;1985
	dec l			;1986
	add hl,hl		;1987
	inc hl			;1988
	nop			;1989
	ld hl,03624h		;198a
	dec h			;198d
	ld l,034h		;198e
	dec (hl)		;1990
	ld (0ff25h),a		;1991
	ld a,(0e1e6h)		;1994
	dec a			;1997
	call 04084h		;1998
	add a,a			;199b
	cp e			;199c
	sbc a,h			;199d
	cp d			;199e
	or a			;199f
	cp c			;19a0
	ret p			;19a1
	cp c			;19a2
	dec b			;19a3
	cp d			;19a4
	ccf			;19a5
	cp d			;19a6
	ld c,b			;19a7
	cp e			;19a8
	ld (hl),b		;19a9
	cp d			;19aa
	call 0febah		;19ab
	cp d			;19ae
	ld b,c			;19af
	cp e			;19b0
	ld c,e			;19b1
	cp e			;19b2
	ld d,a			;19b3
	cp e			;19b4
	ld a,e			;19b5
	cp e			;19b6
	call 0bc25h		;19b7
	ret nz			;19ba
	ld hl,l012ch		;19bb
	ld (0e49eh),hl		;19be
	ld hl,09222h		;19c1
	call 0b9d0h		;19c4
	ld hl,l003ch		;19c7
	cp 005h			;19ca
	jp z,0bbb0h		;19cc
	ret			;19cf
	ld a,(0e496h)		;19d0
	call 04b67h		;19d3
	ld a,(de)		;19d6
	and a			;19d7
	jr z,l19e5h		;19d8
	call 04a6bh		;19da
l19ddh:
	ld a,(0e496h)		;19dd
	inc a			;19e0
	ld (0e496h),a		;19e1
	ret			;19e4
l19e5h:
	ld hl,l0000h+1		;19e5
	ld (0e49eh),hl		;19e8
	call 0a5a4h		;19eb
	jr l19ddh		;19ee
	call 0bc25h		;19f0
	ret nz			;19f3
	ld a,028h		;19f4
	call 04ae4h		;19f6
	call 0a5a4h		;19f9
	ld de,094c4h		;19fc
	call 04a6bh		;19ff
	jp 0bba9h		;1a02
	call 0ba7eh		;1a05
	call 0bc25h		;1a08
	ret nz			;1a0b
	ld hl,l012ch		;1a0c
	ld a,(0e496h)		;1a0f
	cp 005h			;1a12
l1a14h:
	jr nz,l1a19h		;1a14
	ld hl,l0078h		;1a16
l1a19h:
	ld (0e49eh),hl		;1a19
	ld hl,09281h		;1a1c
	call 0b9d0h		;1a1f
	cp 007h			;1a22
	ret nz			;1a24
	call 04a10h		;1a25
	call 05e9ah		;1a28
	call 0a07dh		;1a2b
	ld de,09317h		;1a2e
	call 04a6bh		;1a31
	ld a,00eh		;1a34
	ld (0e496h),a		;1a36
	ld hl,l06cch		;1a39
	jp 0bbb0h		;1a3c
	call 0bc25h		;1a3f
	jr z,l1a5eh		;1a42
	call 0a7a2h		;1a44
	call 0a488h		;1a47
	ld a,(0e1c3h)		;1a4a
	and 007h		;1a4d
	ret nz			;1a4f
	call 0a4dfh		;1a50
	ld a,(0e496h)		;1a53
	inc a			;1a56
	cp 01eh			;1a57
	ret z			;1a59
	ld (0e496h),a		;1a5a
	ret			;1a5d
l1a5eh:
	call 0a5a4h		;1a5e
	call 0a07dh		;1a61
	ld de,09361h		;1a64
	call 04a6bh		;1a67
	ld hl,00690h		;1a6a
	jp 0bbb0h		;1a6d
	call 0a7a2h		;1a70
	call 0a504h		;1a73
	ld a,(0e490h)		;1a76
	and a			;1a79
	ret nz			;1a7a
	jp 0bab0h		;1a7b
	ld de,094c4h		;1a7e
	ld hl,0e49eh		;1a81
	bit 3,(hl)		;1a84
	jp z,04a6bh		;1a86
	jp 04a82h		;1a89
l1a8ch:
	ld de,094d1h		;1a8c
	ld a,(0e1c3h)		;1a8f
	and 07fh		;1a92
	cp 064h			;1a94
	jp c,04a6bh		;1a96
	jp 04a82h		;1a99
	ld a,(0e0a0h)		;1a9c
	and a			;1a9f
	jr z,l1aabh		;1aa0
	ld hl,0e49eh		;1aa2
	dec (hl)		;1aa5
	call 0ba7eh		;1aa6
	jr l1a8ch		;1aa9
l1aabh:
	ld a,008h		;1aab
	ld (0e1e6h),a		;1aad
	call 04a10h		;1ab0
	jp 0bbb0h		;1ab3
	ld a,048h		;1ab6
	ld (0e404h),a		;1ab8
	ld (0e414h),a		;1abb
	ld (0e424h),a		;1abe
	ld a,030h		;1ac1
	ld (0e406h),a		;1ac3
	ld (0e416h),a		;1ac6
	ld (0e426h),a		;1ac9
	ret			;1acc
	call 04a10h		;1acd
	call 0bab6h		;1ad0
	call 05d80h		;1ad3
	call 0baf0h		;1ad6
	call 04c76h		;1ad9
	call 0a889h		;1adc
	xor a			;1adf
	ld (0e1e6h),a		;1ae0
	ld hl,0e470h		;1ae3
	ld de,0e471h		;1ae6
	ld bc,l008fh		;1ae9
	ld (hl),a		;1aec
	ldir			;1aed
	ret			;1aef
	ld hl,0e500h		;1af0
	ld de,0e501h		;1af3
	ld bc,l0affh		;1af6
	ld (hl),000h		;1af9
	ldir			;1afb
	ret			;1afd
	call 0bc25h		;1afe
	ret nz			;1b01
	ld hl,l01e0h		;1b02
	ld (0e49eh),hl		;1b05
	call 0bb1ah		;1b08
	ld hl,093b4h		;1b0b
	call 0b9d0h		;1b0e
	ld hl,0021ch		;1b11
	cp 007h			;1b14
	jp z,0bbb0h		;1b16
	ret			;1b19
	ld a,(0e496h)		;1b1a
	exx			;1b1d
	ld e,a			;1b1e
	exx			;1b1f
	cp 002h			;1b20
	jp z,0bbech		;1b22
	call 0bb3dh		;1b25
	cp 004h			;1b28
	jp z,0bc0eh		;1b2a
	call 0bb3dh		;1b2d
	cp 005h			;1b30
	jp z,0bbech		;1b32
	call 0bb3dh		;1b35
	cp 006h			;1b38
	jp z,0bc0eh		;1b3a
	exx			;1b3d
	ld a,e			;1b3e
	exx			;1b3f
	ret			;1b40
	call 0bc25h		;1b41
	ret nz			;1b44
	jp 0bbc9h		;1b45
	call 0a488h		;1b48
	call 0bc25h		;1b4b
	jp nz,0a7a2h		;1b4e
	call 0a056h		;1b51
	jp 0bbb0h		;1b54
	call 0a7a2h		;1b57
	ld a,(0e490h)		;1b5a
	and a			;1b5d
	ret nz			;1b5e
	call 04a10h		;1b5f
	call 05e0ch		;1b62
	call 0a076h		;1b65
	ld a,(l002bh)		;1b68
	and 00fh		;1b6b
	ld de,0bc91h		;1b6d
	jr z,l1b75h		;1b70
	ld de,0bd26h		;1b72
l1b75h:
	call 04a6bh		;1b75
	jp 0bbb0h		;1b78
	ld de,l1518h		;1b7b
	call 05d89h		;1b7e
	jp c,0a7a2h		;1b81
	jp 0bad0h		;1b84
	ld hl,l0000h		;1b87
	ld (0f0f7h),hl		;1b8a
	call 04a10h		;1b8d
	ld a,(0e1d6h)		;1b90
	or a			;1b93
	jr nz,l1bb8h		;1b94
	ld a,040h		;1b96
	call 04ae4h		;1b98
	call 0bbech		;1b9b
	ld a,(l002bh)		;1b9e
	and 00fh		;1ba1
	jp nz,0b9f4h		;1ba3
	call 0bbb0h		;1ba6
l1ba9h:
	xor a			;1ba9
	ld (0e496h),a		;1baa
	ld hl,l0000h+1		;1bad
	ld (0e49eh),hl		;1bb0
	ld hl,0e1e6h		;1bb3
	inc (hl)		;1bb6
	ret			;1bb7
l1bb8h:
	ld a,041h		;1bb8
	call 04ae4h		;1bba
	ld a,(l002bh)		;1bbd
	and 00fh		;1bc0
	jr z,l1be2h		;1bc2
	ld a,00bh		;1bc4
	ld (0e1e6h),a		;1bc6
	call 0a56fh		;1bc9
	ld a,(l002bh)		;1bcc
	and 00fh		;1bcf
	ld de,0950fh		;1bd1
	jr z,l1bd9h		;1bd4
	ld de,0bc2fh		;1bd6
l1bd9h:
	call 04a6bh		;1bd9
	ld hl,l0438h		;1bdc
	jp 0bbb0h		;1bdf
l1be2h:
	ld a,009h		;1be2
	ld (0e1e6h),a		;1be4
	call 0bc0eh		;1be7
	jr l1ba9h		;1bea
	call 04a10h		;1bec
	call 04c76h		;1bef
	call 05e0ch		;1bf2
	call 05dcdh		;1bf5
	ld a,080h		;1bf8
	ld hl,l0d00h		;1bfa
	ld bc,00158h		;1bfd
	call l0056h		;1c00
	ld de,038a7h		;1c03
	ld hl,091a8h		;1c06
	ld c,012h		;1c09
	jp 0a67bh		;1c0b
	call 04a10h		;1c0e
	call 04c76h		;1c11
	call 05e0ch		;1c14
	call 05edch		;1c17
	ld de,038e8h		;1c1a
	ld hl,0b06fh		;1c1d
	ld c,010h		;1c20
	jp 0a67bh		;1c22
	ld hl,(0e49eh)		;1c25
	dec hl			;1c28
	ld (0e49eh),hl		;1c29
	ld a,l			;1c2c
	or h			;1c2d
	ret			;1c2e
	inc b			;1c2f
	ld a,(l1615h)		;1c30
	dec bc			;1c33
	jr l1c3dh		;1c34
	ld a,(de)		;1c36
	rrca			;1c37
	dec d			;1c38
	inc d			;1c39
	add hl,de		;1c3a
	nop			;1c3b
	ld a,(de)		;1c3c
l1c3dh:
	dec d			;1c3d
	nop			;1c3e
	dec bc			;1c3f
	jr $+9			;1c40
	ld a,(bc)		;1c42
	rrca			;1c43
	add hl,bc		;1c44
	rlca			;1c45
	ld a,(de)		;1c46
	dec bc			;1c47
	cp 044h			;1c48
	ld a,(l0b1ch)		;1c4a
	inc d			;1c4d
	dec d			;1c4e
	inc de			;1c4f
	nop			;1c50
	dec e			;1c51
	dec bc			;1c52
	jr l1c60h		;1c53
	nop			;1c55
	rlca			;1c56
	add hl,bc		;1c57
	ld c,00fh		;1c58
	dec bc			;1c5a
	inc e			;1c5b
	dec bc			;1c5c
	ld a,(bc)		;1c5d
	nop			;1c5e
	ex af,af'		;1c5f
l1c60h:
	rra			;1c60
	cp 084h			;1c61
	ld a,(l0b13h)		;1c63
	ld a,(de)		;1c66
	rlca			;1c67
	ld (de),a		;1c68
	rrca			;1c69
	dec d			;1c6a
	inc d			;1c6b
	ld (l1600h),hl		;1c6c
	dec bc			;1c6f
	rlca			;1c70
	add hl,bc		;1c71
	dec bc			;1c72
	nop			;1c73
	jr l1c81h		;1c74
	ld a,(de)		;1c76
	dec de			;1c77
	jr l1c8eh		;1c78
	dec bc			;1c7a
	ld a,(bc)		;1c7b
	cp 0c4h			;1c7c
	ld a,(l151ah)		;1c7e
l1c81h:
	nop			;1c81
	inc d			;1c82
	dec bc			;1c83
	inc de			;1c84
	dec bc			;1c85
	add hl,de		;1c86
	rrca			;1c87
	add hl,de		;1c88
	nop			;1c89
	rlca			;1c8a
	dec c			;1c8b
	rlca			;1c8c
	rrca			;1c8d
l1c8eh:
	inc d			;1c8e
	ld hl,023ffh		;1c8f
	jr c,l1ce1h		;1c92
	ld c,(hl)		;1c94
	ld c,a			;1c95
	nop			;1c96
	inc bc			;1c97
l1c98h:
	inc bc			;1c98
	inc bc			;1c99
	inc b			;1c9a
	ld d,b			;1c9b
	nop			;1c9c
	call nc,0e1f5h		;1c9d
	rst 30h			;1ca0
	di			;1ca1
	add hl,sp		;1ca2
l1ca3h:
	ret po			;1ca3
	sub e			;1ca4
	defb 0edh ;next byte illegal after ed	;1ca5
	jp pe,0fba4h		;1ca6
	ld d,c			;1ca9
	ld d,d			;1caa
	call c,0dfd2h		;1cab
	cp 06dh			;1cae
	jr c,$-17		;1cb0
	ret nz			;1cb2
	res 5,a			;1cb3
	or c			;1cb5
	nop			;1cb6
	sbc a,(hl)		;1cb7
	ld h,h			;1cb8
	ld e,d			;1cb9
	ld d,c			;1cba
	add hl,sp		;1cbb
	rst 28h			;1cbc
	sub e			;1cbd
	sbc a,(ix+05ch)		;1cbe
	ret nz			;1cc1
	cp 0adh			;1cc2
	jr c,l1d3ah		;1cc4
	call z,0acaeh		;1cc6
	or e			;1cc9
l1ccah:
	jr c,l1ccah		;1cca
	rlca			;1ccc
	add hl,sp		;1ccd
	inc bc			;1cce
	inc bc			;1ccf
	inc bc			;1cd0
	ld b,050h		;1cd1
	nop			;1cd3
	inc b			;1cd4
	or a			;1cd5
	xor b			;1cd6
	ex de,hl		;1cd7
	jp (hl)			;1cd8
	add hl,sp		;1cd9
	di			;1cda
	call po,0f393h		;1cdb
	call pe,0eaefh		;1cde
l1ce1h:
	ldd			;1ce1
	ret pe			;1ce3
	exx			;1ce4
	cp 04dh			;1ce5
	add hl,sp		;1ce7
	ret po			;1ce8
	ret pe			;1ce9
	sub e			;1cea
	add a,c			;1ceb
	add a,d			;1cec
	jr c,l1c98h		;1ced
	xor h			;1cef
	and a			;1cf0
	or h			;1cf1
	rst 0			;1cf2
	or c			;1cf3
	nop			;1cf4
	ld h,b			;1cf5
	ld h,c			;1cf6
	xor 0efh		;1cf7
	cp 08dh			;1cf9
	add hl,sp		;1cfb
	ret p			;1cfc
	pop af			;1cfd
	jp p,0a4f3h		;1cfe
	nop			;1d01
	add a,c			;1d02
	ld a,e			;1d03
	add a,e			;1d04
	add a,h			;1d05
	and a			;1d06
	or b			;1d07
	adc a,0a2h		;1d08
l1d0ah:
	jr c,l1d0ah		;1d0a
	ld l,l			;1d0c
	ld a,(06160h)		;1d0d
	xor 0efh		;1d10
	ret p			;1d12
	pop af			;1d13
	jp p,047f3h		;1d14
	ld c,b			;1d17
	ld c,e			;1d18
	ld c,h			;1d19
	cp 0b5h			;1d1a
	ld a,(093efh)		;1d1c
	sbc a,(ix+05ch)		;1d1f
	nop			;1d22
	nop			;1d23
	ld c,b			;1d24
	rst 38h			;1d25
	jr z,l1d60h		;1d26
	add hl,bc		;1d28
	dec d			;1d29
	add hl,de		;1d2a
	inc de			;1d2b
	rrca			;1d2c
	add hl,bc		;1d2d
	nop			;1d2e
	rra			;1d2f
	dec bc			;1d30
	rlca			;1d31
	jr l1d34h		;1d32
l1d34h:
	inc bc			;1d34
	inc bc			;1d35
	inc bc			;1d36
	inc b			;1d37
	cp 062h			;1d38
l1d3ah:
	jr c,l1d56h		;1d3a
	ld c,00bh		;1d3c
	nop			;1d3e
	rrca			;1d3f
	inc de			;1d40
	ld d,00bh		;1d41
	jr l1d54h		;1d43
	rlca			;1d45
	ld (de),a		;1d46
	nop			;1d47
	ld c,00fh		;1d48
	dec c			;1d4a
	ld c,00bh		;1d4b
	add hl,de		;1d4d
	ld a,(de)		;1d4e
	nop			;1d4f
	add hl,bc		;1d50
	dec d			;1d51
	dec de			;1d52
	inc d			;1d53
l1d54h:
	add hl,bc		;1d54
	rrca			;1d55
l1d56h:
	ld (de),a		;1d56
	cp 0a2h			;1d57
	jr c,l1d65h		;1d59
	dec bc			;1d5b
	add hl,bc		;1d5c
	rrca			;1d5d
	ld a,(bc)		;1d5e
	dec bc			;1d5f
l1d60h:
	ld a,(bc)		;1d60
	nop			;1d61
	ld a,(de)		;1d62
	dec d			;1d63
	nop			;1d64
l1d65h:
	rlca			;1d65
	ld d,016h		;1d66
	dec d			;1d68
	rrca			;1d69
	inc d			;1d6a
	ld a,(de)		;1d6b
	nop			;1d6c
	inc de			;1d6d
	jr l1d91h		;1d6e
	djnz l1d79h		;1d70
	inc de			;1d72
	dec bc			;1d73
	add hl,de		;1d74
	cp 0e3h			;1d75
	jr c,l1d81h		;1d77
l1d79h:
	dec de			;1d79
	jr l1d96h		;1d7a
	dec d			;1d7c
	inc d			;1d7d
	nop			;1d7e
	inc c			;1d7f
	dec d			;1d80
l1d81h:
	jr l1d83h		;1d81
l1d83h:
	dec bc			;1d83
	inc de			;1d84
	ld d,00bh		;1d85
	jr l1d9eh		;1d87
	jr l1d8bh		;1d89
l1d8bh:
	ld a,(de)		;1d8b
	ld c,00bh		;1d8c
	nop			;1d8e
	sbc a,(hl)		;1d8f
	ld a,(de)		;1d90
l1d91h:
	ld c,021h		;1d91
	cp 028h			;1d93
	add hl,sp		;1d95
l1d96h:
	jr l1da3h		;1d96
	ld d,007h		;1d98
	rrca			;1d9a
	jr l1d9dh		;1d9b
l1d9dh:
	dec e			;1d9d
l1d9eh:
	dec d			;1d9e
	jr l1db2h		;1d9f
	add hl,de		;1da1
	nop			;1da2
l1da3h:
	inc c			;1da3
	dec d			;1da4
l1da5h:
	jr l1da5h		;1da5
l1da7h:
	ld h,l			;1da7
	add hl,sp		;1da8
	add hl,de		;1da9
	dec bc			;1daa
	inc e			;1dab
	dec bc			;1dac
	inc d			;1dad
	nop			;1dae
	ld d,012h		;1daf
	rlca			;1db1
l1db2h:
	inc d			;1db2
	dec bc			;1db3
	ld a,(de)		;1db4
	add hl,de		;1db5
	nop			;1db6
	inc c			;1db7
	rrca			;1db8
	inc d			;1db9
	rrca			;1dba
	add hl,de		;1dbb
	ld c,00bh		;1dbc
	ld a,(bc)		;1dbe
	ld hl,0a1feh		;1dbf
	add hl,sp		;1dc2
	inc d			;1dc3
	dec bc			;1dc4
	inc de			;1dc5
	dec bc			;1dc6
	add hl,de		;1dc7
	rrca			;1dc8
	add hl,de		;1dc9
	nop			;1dca
	rrca			;1dcb
	add hl,de		;1dcc
	nop			;1dcd
	add hl,bc		;1dce
	dec d			;1dcf
	inc de			;1dd0
	ld d,012h		;1dd1
	dec bc			;1dd3
	ld a,(de)		;1dd4
	dec bc			;1dd5
	ld (de),a		;1dd6
	rra			;1dd7
	nop			;1dd8
	jr $+13			;1dd9
	add hl,de		;1ddb
	ld a,(de)		;1ddc
	dec d			;1ddd
	jr l1debh		;1dde
	ld a,(bc)		;1de0
	ld hl,04bfeh		;1de1
	ld a,(l181dh)		;1de4
	rrca			;1de7
	ld a,(de)		;1de8
	ld a,(de)		;1de9
	dec bc			;1dea
l1debh:
	inc d			;1deb
	nop			;1dec
	ex af,af'		;1ded
	rra			;1dee
	cp 085h			;1def
	ld a,(l0b00h)		;1df1
	inc de			;1df4
	ld d,00bh		;1df5
	jr $+23			;1df7
	jr l1dfbh		;1df9
l1dfbh:
	ld (de),a		;1dfb
	rlca			;1dfc
	jr l1e18h		;1dfd
	nop			;1dff
	ld a,(de)		;1e00
	ld c,00bh		;1e01
	nop			;1e03
	sbc a,(hl)		;1e04
	ld a,(de)		;1e05
	ld c,000h		;1e06
	rst 38h			;1e08
	ld a,(0e1d7h)		;1e09
	dec a			;1e0c
	call 04084h		;1e0d
	ld a,(de)		;1e10
	cp (hl)			;1e11
	and b			;1e12
	cp (hl)			;1e13
	call c,06abeh		;1e14
	cp a			;1e17
l1e18h:
	add a,h			;1e18
	cp a			;1e19
	call 0be55h		;1e1a
	ld a,(0e1c3h)		;1e1d
	and 007h		;1e20
	ret nz			;1e22
	call 0bfdbh		;1e23
	call 0be67h		;1e26
	ld a,(0e496h)		;1e29
	call 0be3ah		;1e2c
	ld a,(0e496h)		;1e2f
	dec a			;1e32
	jp m,0be96h		;1e33
	ld (0e496h),a		;1e36
	ret			;1e39
	ld c,a			;1e3a
	add a,009h		;1e3b
	call 0a334h		;1e3d
	ld de,03800h		;1e40
	add hl,de		;1e43
	ld de,l0004h+2		;1e44
	add hl,de		;1e47
	ld de,0e500h		;1e48
	ld b,c			;1e4b
	ld a,007h		;1e4c
	sub b			;1e4e
	ld b,a			;1e4f
	ld c,014h		;1e50
	jp 0a2f8h		;1e52
	ld a,(0e1c3h)		;1e55
	and 00fh		;1e58
	ret nz			;1e5a
	ld de,0e4a3h		;1e5b
	call 0be8ah		;1e5e
	ld de,0e4a4h		;1e61
	call 0be8ah		;1e64
	ld hl,039c1h		;1e67
	ld de,0e4a3h		;1e6a
	call 0be8fh		;1e6d
	ld hl,039c5h		;1e70
	ld de,0e4a3h		;1e73
	call 0be8fh		;1e76
	ld hl,039dah		;1e79
	ld de,0e4a4h		;1e7c
	call 0be8fh		;1e7f
	ld hl,039deh		;1e82
	ld de,0e4a4h		;1e85
	jr l1e8fh		;1e88
	ld a,(de)		;1e8a
	xor 001h		;1e8b
	ld (de),a		;1e8d
	ret			;1e8e
l1e8fh:
	ld a,(de)		;1e8f
	ld bc,l0000h+1		;1e90
	jp l0056h		;1e93
	ld a,0ffh		;1e96
	ld (0e496h),a		;1e98
	ld a,03ch		;1e9b
	jp 0bf22h		;1e9d
	ld hl,0e49eh		;1ea0
	dec (hl)		;1ea3
	jp z,0bf22h		;1ea4
	call 0be55h		;1ea7
	ld a,(0e1c3h)		;1eaa
	bit 1,a			;1ead
	jp nz,0bed6h		;1eaf
	ld bc,l0207h		;1eb2
	ld hl,07870h		;1eb5
	ld de,0b604h		;1eb8
	exx			;1ebb
	ld hl,0e280h		;1ebc
	exx			;1ebf
	push bc			;1ec0
	call 0bf4eh		;1ec1
	pop bc			;1ec4
	ld hl,07890h		;1ec5
	ld de,0b60ah		;1ec8
	exx			;1ecb
	ld hl,0e288h		;1ecc
	exx			;1ecf
	call 0bf4eh		;1ed0
	jp 0a889h		;1ed3
l1ed6h:
	call 04c76h		;1ed6
	jp 0a889h		;1ed9
	call 0be55h		;1edc
	ld a,(0e1c3h)		;1edf
	and 003h		;1ee2
	ret nz			;1ee4
	ld a,(0e496h)		;1ee5
	inc a			;1ee8
	ld (0e496h),a		;1ee9
	and a			;1eec
	jr z,l1ed6h		;1eed
	dec a			;1eef
	jr z,l1f2ah		;1ef0
	ld d,008h		;1ef2
	ld hl,03b03h		;1ef4
l1ef7h:
	ld a,00ah		;1ef7
	ld bc,l0000h+1		;1ef9
	push hl			;1efc
	call l0056h		;1efd
	pop hl			;1f00
	ld a,004h		;1f01
	add a,l			;1f03
	ld l,a			;1f04
	dec d			;1f05
	jr nz,l1ef7h		;1f06
	ld de,0394ah		;1f08
	ld hl,0b610h		;1f0b
	ld bc,l0504h		;1f0e
	call 0a67bh		;1f11
	ld de,03952h		;1f14
	ld hl,0b621h		;1f17
	ld bc,l0504h		;1f1a
	call 0a67bh		;1f1d
	ld a,030h		;1f20
l1f22h:
	ld (0e49eh),a		;1f22
	ld hl,0e1d7h		;1f25
	inc (hl)		;1f28
	ret			;1f29
l1f2ah:
	ld bc,00409h		;1f2a
	ld hl,07870h		;1f2d
	ld de,0b5ech		;1f30
	exx			;1f33
	ld hl,0e280h		;1f34
l1f37h:
	exx			;1f37
	push bc			;1f38
	call 0bf4eh		;1f39
	pop bc			;1f3c
	ld hl,07890h		;1f3d
	ld de,0b5f8h		;1f40
	exx			;1f43
	ld hl,0e290h		;1f44
	exx			;1f47
	call 0bf4eh		;1f48
	jp 0a889h		;1f4b
l1f4eh:
	ld a,(de)		;1f4e
	inc de			;1f4f
	add a,h			;1f50
	exx			;1f51
	ld (hl),a		;1f52
	inc hl			;1f53
	exx			;1f54
	ld a,(de)		;1f55
	inc de			;1f56
	add a,l			;1f57
	exx			;1f58
	ld (hl),a		;1f59
	inc hl			;1f5a
	exx			;1f5b
	ld a,(de)		;1f5c
	inc de			;1f5d
	exx			;1f5e
	ld (hl),a		;1f5f
	inc hl			;1f60
	exx			;1f61
	ld a,c			;1f62
	exx			;1f63
	ld (hl),a		;1f64
	inc hl			;1f65
	exx			;1f66
	djnz l1f4eh		;1f67
	ret			;1f69
	call 0be55h		;1f6a
	ld hl,0e49eh		;1f6d
	dec (hl)		;1f70
	ret nz			;1f71
	call 0bfdbh		;1f72
	call 0be67h		;1f75
	ld a,000h		;1f78
	call 0be3ah		;1f7a
	call 0bf2ah		;1f7d
	ld a,00fh		;1f80
	jr l1f22h		;1f82
	ld hl,0e49eh		;1f84
	dec (hl)		;1f87
	jp z,0bf9fh		;1f88
	call 0be55h		;1f8b
	ld a,(0e49eh)		;1f8e
	bit 3,a			;1f91
	jp nz,0bf2ah		;1f93
	call 04c76h		;1f96
	ld bc,00206h		;1f99
	jp 0beb5h		;1f9c
	call 04a10h		;1f9f
	call 0a895h		;1fa2
	xor a			;1fa5
	ld (0e1d7h),a		;1fa6
	ret			;1fa9
	ld a,001h		;1faa
	ld (0e1d7h),a		;1fac
	call 0bfcdh		;1faf
	call 0a895h		;1fb2
	ld hl,03848h		;1fb5
	ld (0e4a3h),hl		;1fb8
	call 0bfdbh		;1fbb
	ld hl,0e500h		;1fbe
	ld de,0b586h		;1fc1
	call 0a6ebh		;1fc4
	ld a,006h		;1fc7
	ld (0e496h),a		;1fc9
	ret			;1fcc
	call 05d8eh		;1fcd
l1fd0h:
	call 04c76h		;1fd0
	jp 0a889h		;1fd3
	call 05d94h		;1fd6
	jr l1fd0h		;1fd9
	ld hl,0b461h		;1fdb
	ld de,0ed20h		;1fde
l1fe1h:
	ld a,(hl)		;1fe1
	inc hl			;1fe2
	and a			;1fe3
	jp z,0a8adh		;1fe4
	bit 7,a			;1fe7
	jr nz,l1ff4h		;1fe9
l1febh:
	ld b,a			;1feb
l1fech:
	ld a,(hl)		;1fec
	ld (de),a		;1fed
	inc hl			;1fee
	inc de			;1fef
	djnz l1fech		;1ff0
	jr l1fe1h		;1ff2
l1ff4h:
	and 07fh		;1ff4
	ld b,a			;1ff6
	ld a,(hl)		;1ff7
	inc hl			;1ff8
l1ff9h:
	ld (de),a		;1ff9
	inc de			;1ffa
	djnz l1ff9h		;1ffb
	jr l1fe1h		;1ffd
	rst 38h			;1fff
