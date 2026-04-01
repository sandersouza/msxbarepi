; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x0000 -o docs/reverse-engineering/issues/issue-188/gradius2e_banks/bank00.asm /tmp/gradius2e_bank00.bin

	org 00000h

l0000h:
	ld b,c			;0000
l0001h:
	ld b,d			;0001
l0002h:
	sub b			;0002
l0003h:
	ld b,b			;0003
l0004h:
	nop			;0004
l0005h:
	nop			;0005
l0006h:
	nop			;0006
l0007h:
	nop			;0007
l0008h:
	nop			;0008
l0009h:
	nop			;0009
sub_000ah:
	nop			;000a
sub_000bh:
	nop			;000b
l000ch:
	nop			;000c
	nop			;000d
sub_000eh:
	nop			;000e
sub_000fh:
	nop			;000f
l0010h:
	ld b,e			;0010
	ld b,h			;0011
	rlca			;0012
	ld d,c			;0013
	cp b			;0014
	ret nz			;0015
	pop hl			;0016
	inc b			;0017
	ld bc,007e2h		;0018
	nop			;001b
	jp po,0e1fah		;001c
l001fh:
	push af			;001f
l0020h:
	pop hl			;0020
	jp nz,0cde1h		;0021
sub_0024h:
	ld a,001h		;0024
	di			;0026
	ld hl,(0f0f7h)		;0027
	inc hl			;002a
l002bh:
	ld (0f0f7h),hl		;002b
	call 04c4bh		;002e
	ld hl,0e1d4h		;0031
	ld a,(hl)		;0034
	and a			;0035
	ld (hl),001h		;0036
	jp nz,0406fh		;0038
	ld a,004h		;003b
	ld (07000h),a		;003d
l0040h:
	inc a			;0040
	ld (09000h),a		;0041
	inc a			;0044
	ld (0b000h),a		;0045
	call 06934h		;0048
	xor a			;004b
	ld (0e1d4h),a		;004c
	di			;004f
sub_0050h:
	ld a,(0f0f1h)		;0050
sub_0053h:
	ld (07000h),a		;0053
l0056h:
	ld a,(0f0f2h)		;0056
sub_0059h:
	ld (09000h),a		;0059
l005ch:
	ld a,(0f0f3h)		;005c
	ld (0b000h),a		;005f
	ld hl,0e1c5h		;0062
	in a,(0aah)		;0065
	and 040h		;0067
	jp z,0cc04h		;0069
	call 0cc16h		;006c
	call 0013eh		;006f
	ei			;0072
	ret			;0073
	nop			;0074
	nop			;0075
	nop			;0076
	jp 00047h		;0077
	add a,l			;007a
	ld l,a			;007b
	ret nc			;007c
	inc h			;007d
	ret			;007e
l007fh:
	add a,e			;007f
	ld e,a			;0080
	ret nc			;0081
	inc d			;0082
	ret			;0083
	pop hl			;0084
	add a,a			;0085
	add a,l			;0086
	ld l,a			;0087
	jr nc,l008bh		;0088
	inc h			;008a
l008bh:
	ld a,(hl)		;008b
	inc hl			;008c
	ld h,(hl)		;008d
	ld l,a			;008e
	jp (hl)			;008f
	di			;0090
	im 1			;0091
sub_0093h:
	ld sp,0f0f0h		;0093
sub_0096h:
	call 040e9h		;0096
	ld h,080h		;0099
	call sub_0024h		;009b
	xor a			;009e
	ld hl,0f0f0h		;009f
	ld (05000h),a		;00a2
	ld (hl),a		;00a5
	inc hl			;00a6
	inc a			;00a7
	ld (07000h),a		;00a8
	ld (hl),a		;00ab
	inc hl			;00ac
	inc a			;00ad
	ld (09000h),a		;00ae
	ld (hl),a		;00b1
	inc hl			;00b2
	inc a			;00b3
	ld (hl),a		;00b4
	ld a,010h		;00b5
	ld (0b000h),a		;00b7
	call 0a000h		;00ba
	ld de,0e001h		;00bd
	ld bc,l0fffh		;00c0
	ld (hl),a		;00c3
	ldir			;00c4
	ld a,002h		;00c6
	ld (0e1c6h),a		;00c8
	inc a			;00cb
	ld (0b000h),a		;00cc
	halt			;00cf
l00d0h:
	call 0cd36h		;00d0
	call 0bcb7h		;00d3
	di			;00d6
	ld a,0c3h		;00d7
	ld (0fd9ah),a		;00d9
	ld hl,04023h		;00dc
	ld (0fd9bh),hl		;00df
	call 0013eh		;00e2
	jp 0cb8bh		;00e5
	nop			;00e8
	call 00138h		;00e9
	rrca			;00ec
	rrca			;00ed
	and 003h		;00ee
	ld c,a			;00f0
	ld b,000h		;00f1
	ld hl,0fcc1h		;00f3
	add hl,bc		;00f6
	ld a,(hl)		;00f7
	and 080h		;00f8
	or c			;00fa
	ld c,a			;00fb
	inc hl			;00fc
	inc hl			;00fd
	inc hl			;00fe
	inc hl			;00ff
	ld a,(hl)		;0100
	and 00ch		;0101
	or c			;0103
	ret			;0104
	jp 04ae4h		;0105
	push af			;0108
	ld a,001h		;0109
	jr l011ah		;010b
	push af			;010d
	ld a,004h		;010e
	jr l011ah		;0110
	push af			;0112
	ld a,007h		;0113
	jr l011ah		;0115
	push af			;0117
	ld a,00dh		;0118
l011ah:
	di			;011a
	push hl			;011b
	ld hl,0f0f1h		;011c
	ld (07000h),a		;011f
	ld (hl),a		;0122
	inc a			;0123
	inc l			;0124
	ld (09000h),a		;0125
	ld (hl),a		;0128
	inc a			;0129
	inc l			;012a
	ld (0b000h),a		;012b
	ld (hl),a		;012e
	pop hl			;012f
	pop af			;0130
	ei			;0131
	ret			;0132
	ld a,00ah		;0133
	jr l014eh		;0135
	ld a,00bh		;0137
	jr l014eh		;0139
	ld a,00ch		;013b
	jr l014eh		;013d
	ld a,00fh		;013f
sub_0141h:
	jp 0414eh		;0141
	ld a,009h		;0144
	jp 0414eh		;0146
	ld a,006h		;0149
	jp 0414eh		;014b
l014eh:
	di			;014e
	ld (0b000h),a		;014f
	ld (0f0f3h),a		;0152
	ei			;0155
	ret			;0156
	ld a,002h		;0157
	jr l015dh		;0159
	ld a,00eh		;015b
l015dh:
	di			;015d
	ld (09000h),a		;015e
	ld (0f0f2h),a		;0161
	inc a			;0164
	ld (0b000h),a		;0165
	ld (0f0f3h),a		;0168
	ei			;016b
	ret			;016c
	ld a,(0e1dch)		;016d
	and a			;0170
	jr z,l017fh		;0171
	call 04112h		;0173
	call 046c4h		;0176
	call 04108h		;0179
	jp 077f1h		;017c
l017fh:
	call 054dch		;017f
	xor a			;0182
	ld (0e307h),a		;0183
	ld (0e308h),a		;0186
	ld (0e309h),a		;0189
	call 077b6h		;018c
	call 07a2eh		;018f
	ld a,(0e1dah)		;0192
	and a			;0195
	ret nz			;0196
	call 07c90h		;0197
	call 0bf40h		;019a
	call 04117h		;019d
	call 04845h		;01a0
	call 04108h		;01a3
	call 074a2h		;01a6
	ld a,(0e3c1h)		;01a9
	or a			;01ac
	ret nz			;01ad
	call 0be9dh		;01ae
	call 0a765h		;01b1
	call 07d4fh		;01b4
	call 0aa53h		;01b7
	call 0aa9bh		;01ba
	call 0ab15h		;01bd
l01c0h:
	call 0abfdh		;01c0
	call 0ab92h		;01c3
	call 08592h		;01c6
	call 08570h		;01c9
	call 085a9h		;01cc
	call 08653h		;01cf
	ld a,(0e3aah)		;01d2
	or a			;01d5
	jr nz,l01e4h		;01d6
	call 06385h		;01d8
	call 092c1h		;01db
	call 06d47h		;01de
	call 07274h		;01e1
l01e4h:
	call 08526h		;01e4
	call 05120h		;01e7
	call 09034h		;01ea
	ld a,(0e201h)		;01ed
	dec a			;01f0
	jr nz,l01fch		;01f1
	call 04137h		;01f3
	call 0b193h		;01f6
	call 04157h		;01f9
l01fch:
	call 06b85h		;01fc
	call 06acch		;01ff
l0202h:
	call 04137h		;0202
	call 0b4aah		;0205
l0208h:
	call 0b422h		;0208
	call 04157h		;020b
	call 0a04dh		;020e
	call 072d6h		;0211
	call 0781ch		;0214
	call 0927ah		;0217
	call 07930h		;021a
	call 07946h		;021d
	call 087a4h		;0220
	call 08678h		;0223
	call 06790h		;0226
	call 04137h		;0229
	ld a,(0e201h)		;022c
	dec a			;022f
	call z,0b2ceh		;0230
	call 04157h		;0233
	call 067b9h		;0236
	call 08be3h		;0239
	call 08c86h		;023c
	ld a,(0e3aah)		;023f
	or a			;0242
	jr nz,l025dh		;0243
	call 090c6h		;0245
	call 09167h		;0248
	call 088a2h		;024b
	call 08a43h		;024e
	call 08df9h		;0251
	call 08db4h		;0254
	call 08e43h		;0257
	call 08d5eh		;025a
l025dh:
	call 05fd2h		;025d
	call 08413h		;0260
	call 092f6h		;0263
	call 081dah		;0266
	ld a,(0e3aah)		;0269
	or a			;026c
	call z,07a00h		;026d
	call 06cedh		;0270
	call 06c48h		;0273
	call 04137h		;0276
	call 0b53ah		;0279
	call 04157h		;027c
	call 0853eh		;027f
	call 086b1h		;0282
	call 04137h		;0285
	call 0bd47h		;0288
	call 0a0d6h		;028b
	call 04157h		;028e
	call 04157h		;0291
	call 0872ah		;0294
	call 051b3h		;0297
	call 0517bh		;029a
	call 04137h		;029d
	call 0a000h		;02a0
	call 0a088h		;02a3
	call 0a206h		;02a6
	call 04157h		;02a9
	call 04144h		;02ac
	call 06a27h		;02af
	call 04108h		;02b2
	call 0497ah		;02b5
	call 077f1h		;02b8
	call 04137h		;02bb
	call 0a16ah		;02be
	call 0bdcdh		;02c1
	call 04157h		;02c4
	call 086f1h		;02c7
	call 06826h		;02ca
	call 08555h		;02cd
	call 05f77h		;02d0
	ld a,(0e1c3h)		;02d3
	and 007h		;02d6
	dec a			;02d8
	jp z,05bbbh		;02d9
	ret			;02dc
	call 04112h		;02dd
	ld hl,l1800h		;02e0
	ld de,09ff4h		;02e3
	call 04a8ch		;02e6
	ld hl,01960h		;02e9
	ld de,0a063h		;02ec
	call 04a8ch		;02ef
	jp 04108h		;02f2
	call 04112h		;02f5
	call 042feh		;02f8
	jp 04108h		;02fb
	ld hl,l1800h		;02fe
	ld de,09d17h		;0301
	call 04a8ch		;0304
	ld hl,01960h		;0307
	ld de,09d68h		;030a
	jp 04a8ch		;030d
	call 04112h		;0310
	call 04319h		;0313
	jp 04108h		;0316
	ld a,c			;0319
	add a,a			;031a
	add a,a			;031b
	ld hl,09094h		;031c
	call 0407ah		;031f
	ld e,(hl)		;0322
	inc hl			;0323
	ld d,(hl)		;0324
	push hl			;0325
	ld hl,02748h		;0326
	call 04a5bh		;0329
	pop hl			;032c
	inc hl			;032d
	ld e,(hl)		;032e
	inc hl			;032f
	ld d,(hl)		;0330
	ld hl,l0748h		;0331
	jp 04a5bh		;0334
	push ix			;0337
	ld a,(0f0f5h)		;0339
	bit 2,a			;033c
	jr z,l0349h		;033e
	call 04137h		;0340
	ld ix,0bfbfh		;0343
	jr l0350h		;0347
l0349h:
	call 04112h		;0349
	ld ix,04358h		;034c
l0350h:
	call 04595h		;0350
	pop ix			;0353
	jp 04108h		;0355
	rlca			;0358
	ld a,(0c792h)		;0359
	ld e,h			;035c
	sub d			;035d
	nop			;035e
	call 04112h		;035f
	call 04368h		;0362
	jp 04108h		;0365
	ld a,(0f0f5h)		;0368
	bit 2,a			;036b
	jr nz,l0381h		;036d
	ld hl,l1800h		;036f
	ld de,0936fh		;0372
	call 04a8ch		;0375
	ld hl,01960h		;0378
	ld de,0942bh		;037b
	jp 04a8ch		;037e
l0381h:
	call 0413bh		;0381
	ld hl,l1800h		;0384
	ld de,0bf19h		;0387
	call 04a8ch		;038a
	ld hl,019e0h		;038d
	ld de,0bf82h		;0390
	jp 04a8ch		;0393
	call 04137h		;0396
	call 0b736h		;0399
	call 04112h		;039c
	call 043a5h		;039f
	jp 04108h		;03a2
	call 044f7h		;03a5
	call 04337h		;03a8
	call 04112h		;03ab
	call 044a0h		;03ae
	call 043c4h		;03b1
	ld a,(0f0f5h)		;03b4
	bit 2,a			;03b7
	ret z			;03b9
	call 04137h		;03ba
	ld ix,0bf63h		;03bd
	jp 04595h		;03c1
	ld ix,044eah		;03c4
	call 043dah		;03c8
	call 044c7h		;03cb
	ld hl,09348h		;03ce
	ld a,(0e201h)		;03d1
	call 04b67h		;03d4
	push de			;03d7
l03d8h:
	pop ix			;03d8
l03dah:
	ld a,(ix+000h)		;03da
	dec a			;03dd
	ret m			;03de
	push af			;03df
	call z,043eeh		;03e0
	pop af			;03e3
	call nz,0445eh		;03e4
	ld bc,l0004h		;03e7
	add ix,bc		;03ea
	jr l03dah		;03ec
	ld a,(ix+001h)		;03ee
	or a			;03f1
	ret z			;03f2
	ld (0f010h),a		;03f3
	ld l,(ix+002h)		;03f6
	ld h,000h		;03f9
	add hl,hl		;03fb
	add hl,hl		;03fc
	add hl,hl		;03fd
	ld bc,l1800h		;03fe
	add hl,bc		;0401
	ld (0f012h),hl		;0402
	ld l,(ix+003h)		;0405
	ld h,000h		;0408
	add hl,hl		;040a
	add hl,hl		;040b
	add hl,hl		;040c
	add hl,bc		;040d
	ld (0f014h),hl		;040e
l0411h:
	ld hl,(0f012h)		;0411
	ld de,0e600h		;0414
	ld bc,l0020h		;0417
	call sub_0059h		;041a
	call 04444h		;041d
	ld hl,(0f014h)		;0420
	ld de,0e620h		;0423
	ld bc,l0020h		;0426
	call 04a33h		;0429
	ld bc,l0020h		;042c
	ld hl,(0f012h)		;042f
	add hl,bc		;0432
	ld (0f012h),hl		;0433
	ld hl,(0f014h)		;0436
	add hl,bc		;0439
	ld (0f014h),hl		;043a
	ld hl,0f010h		;043d
	dec (hl)		;0440
	jr nz,l0411h		;0441
	ret			;0443
	ld hl,0e600h		;0444
	ld de,0e62fh		;0447
	ld b,010h		;044a
	call 04457h		;044c
	ld hl,0e610h		;044f
	ld de,0e63fh		;0452
	ld b,010h		;0455
l0457h:
	ld a,(hl)		;0457
	ld (de),a		;0458
	inc hl			;0459
	dec de			;045a
	djnz l0457h		;045b
	ret			;045d
	ld a,(ix+001h)		;045e
	or a			;0461
	ret z			;0462
	ld l,(ix+003h)		;0463
	ld h,000h		;0466
	add hl,hl		;0468
	add hl,hl		;0469
	add hl,hl		;046a
	ld bc,01810h		;046b
	add hl,bc		;046e
	ex de,hl		;046f
	ld l,(ix+002h)		;0470
	ld h,000h		;0473
	add hl,hl		;0475
	add hl,hl		;0476
	add hl,hl		;0477
	ld bc,l1800h		;0478
	add hl,bc		;047b
	ld c,(ix+001h)		;047c
	jp 04ab1h		;047f
	call 04112h		;0482
	ld de,093eeh		;0485
	call 0449ah		;0488
	jp 04108h		;048b
	call 04112h		;048e
	call 04497h		;0491
	jp 04108h		;0494
	ld de,093c0h		;0497
	ld hl,l18c0h		;049a
	jp 04a8ch		;049d
	call 04368h		;04a0
	call 04112h		;04a3
	call 04497h		;04a6
	ld a,(0e400h)		;04a9
	cp 003h			;04ac
	call z,042feh		;04ae
	ld a,(0e432h)		;04b1
	cp 005h			;04b4
	jr nz,l04beh		;04b6
	ld de,093eeh		;04b8
	call 0449ah		;04bb
l04beh:
	ld hl,01a20h		;04be
	ld de,094b8h		;04c1
	jp 04a8ch		;04c4
	ld a,(0e201h)		;04c7
	ld hl,092b3h		;04ca
	call 04b67h		;04cd
	ex de,hl		;04d0
l04d1h:
	ld a,(hl)		;04d1
	or a			;04d2
	ret z			;04d3
	inc hl			;04d4
	ld e,(hl)		;04d5
	inc hl			;04d6
	ld d,(hl)		;04d7
	inc hl			;04d8
	push hl			;04d9
	ld l,a			;04da
	ld h,000h		;04db
	add hl,hl		;04dd
	add hl,hl		;04de
	add hl,hl		;04df
	ld bc,l1800h		;04e0
	add hl,bc		;04e3
	call 04a8ch		;04e4
	pop hl			;04e7
	jr l04d1h		;04e8
	ld bc,07403h		;04ea
	add a,b			;04ed
	ld (bc),a		;04ee
	inc bc			;04ef
	add a,b			;04f0
	adc a,h			;04f1
	ld bc,08c03h		;04f2
	sbc a,b			;04f5
	nop			;04f6
	ld a,(0e201h)		;04f7
	cp 008h			;04fa
	jr nz,l051eh		;04fc
	ld ix,06048h		;04fe
l0502h:
	call 04595h		;0502
	ld hl,l0001h		;0505
	ld (0e1dch),hl		;0508
	ld hl,061ddh		;050b
	ld (0e1e0h),hl		;050e
	ld hl,06281h		;0511
	ld (0e1e2h),hl		;0514
	ld hl,064a7h		;0517
	ld (0e1e4h),hl		;051a
	ret			;051d
l051eh:
	ld ix,06048h		;051e
	call 04595h		;0522
	ld a,(0e201h)		;0525
	ld hl,06000h		;0528
	call 04b67h		;052b
	push de			;052e
	pop ix			;052f
	call 04595h		;0531
	xor a			;0534
	ld (0f000h),a		;0535
	ld hl,06018h		;0538
	call 04545h		;053b
	ld hl,0f000h		;053e
	inc (hl)		;0541
	ld hl,06030h		;0542
	ld a,(0e201h)		;0545
	call 04b67h		;0548
	push de			;054b
	pop ix			;054c
l054eh:
	ld a,(ix+000h)		;054e
	and a			;0551
	ret z			;0552
	ld a,(ix+002h)		;0553
	rlca			;0556
	rlca			;0557
	and 003h		;0558
	jr nz,l056dh		;055a
	ld l,(ix+003h)		;055c
	ld a,l			;055f
	ld (0f003h),a		;0560
	call 0457bh		;0563
	ld de,l0004h		;0566
	add ix,de		;0569
	jr l054eh		;056b
l056dh:
	ld l,a			;056d
	ld (0f003h),a		;056e
	call 0457bh		;0571
	ld de,l0003h		;0574
	add ix,de		;0577
	jr l054eh		;0579
	ld h,000h		;057b
	add hl,hl		;057d
	add hl,hl		;057e
	add hl,hl		;057f
	ld (0f001h),hl		;0580
	call 04675h		;0583
	ld a,(0f000h)		;0586
	and a			;0589
	push af			;058a
	call z,04617h		;058b
	pop af			;058e
	call nz,045eah		;058f
	jp 0462dh		;0592
l0595h:
	ld a,(ix+000h)		;0595
	and a			;0598
	ret z			;0599
	rra			;059a
	ld de,l1000h		;059b
	call c,045bch		;059e
	bit 1,(ix+000h)		;05a1
	ld de,00800h		;05a5
	call nz,045bch		;05a8
	bit 2,(ix+000h)		;05ab
	ld de,l0000h		;05af
	call nz,045bch		;05b2
	ld de,l0006h		;05b5
	add ix,de		;05b8
	jr l0595h		;05ba
	ld l,(ix+003h)		;05bc
	ld h,000h		;05bf
	add hl,hl		;05c1
	add hl,hl		;05c2
	add hl,hl		;05c3
	add hl,de		;05c4
	push hl			;05c5
	ld de,02000h		;05c6
	add hl,de		;05c9
	ld e,(ix+001h)		;05ca
	ld d,(ix+002h)		;05cd
	push ix			;05d0
	call 04a8ch		;05d2
	pop ix			;05d5
	pop hl			;05d7
	ld de,l0000h		;05d8
	add hl,de		;05db
	ld e,(ix+004h)		;05dc
	ld d,(ix+005h)		;05df
	push ix			;05e2
	call 04a8ch		;05e4
	pop ix			;05e7
	ret			;05e9
	ld hl,0e600h		;05ea
	ld de,0e607h		;05ed
	call 045f9h		;05f0
	ld hl,0e800h		;05f3
	ld de,0e807h		;05f6
	exx			;05f9
	ld a,(0f003h)		;05fa
	ld b,a			;05fd
l05feh:
	exx			;05fe
	ld b,004h		;05ff
l0601h:
	ld c,(hl)		;0601
	ld a,(de)		;0602
	ld (hl),a		;0603
	ld a,c			;0604
	ld (de),a		;0605
	inc hl			;0606
	dec de			;0607
	djnz l0601h		;0608
	inc hl			;060a
	inc hl			;060b
	inc hl			;060c
l060dh:
	inc hl			;060d
	ld a,00ch		;060e
	call 0407fh		;0610
	exx			;0613
	djnz l05feh		;0614
	ret			;0616
	ld hl,0e600h		;0617
	ld de,(0f001h)		;061a
l061eh:
	ld b,008h		;061e
l0620h:
	rr (hl)			;0620
	adc a,a			;0622
	djnz l0620h		;0623
	ld (hl),a		;0625
	inc hl			;0626
	dec de			;0627
	ld a,d			;0628
	or e			;0629
	jr nz,l061eh		;062a
	ret			;062c
	bit 3,(ix+002h)		;062d
	ld de,l1000h		;0631
	call nz,04649h		;0634
	bit 4,(ix+002h)		;0637
	ld de,00800h		;063b
	call nz,04649h		;063e
	bit 5,(ix+002h)		;0641
	ld de,l0000h		;0645
	ret z			;0648
	push ix			;0649
	ld l,(ix+001h)		;064b
	ld h,000h		;064e
	add hl,hl		;0650
	add hl,hl		;0651
	add hl,hl		;0652
	add hl,de		;0653
	push hl			;0654
	ld de,02000h		;0655
	add hl,de		;0658
	ld de,0e600h		;0659
	ld bc,(0f001h)		;065c
	call 04a33h		;0660
	pop hl			;0663
	ld de,l0000h		;0664
	add hl,de		;0667
	ld de,0e800h		;0668
	ld bc,(0f001h)		;066b
	call 04a33h		;066f
	pop ix			;0672
	ret			;0674
	ld bc,(0f001h)		;0675
	ld l,(ix+000h)		;0679
	ld h,000h		;067c
	add hl,hl		;067e
	add hl,hl		;067f
	add hl,hl		;0680
	push hl			;0681
	ld de,02000h		;0682
	bit 2,(ix+002h)		;0685
	jr nz,l0695h		;0689
	ld d,028h		;068b
	bit 1,(ix+002h)		;068d
	jr nz,l0695h		;0691
	ld d,030h		;0693
l0695h:
	add hl,de		;0695
	ld de,0e600h		;0696
	push ix			;0699
	call sub_0059h		;069b
	pop ix			;069e
	pop hl			;06a0
	ld de,l0000h		;06a1
	bit 2,(ix+002h)		;06a4
	jr nz,l06b4h		;06a8
	ld d,008h		;06aa
	bit 1,(ix+002h)		;06ac
	jr nz,l06b4h		;06b0
	ld d,010h		;06b2
l06b4h:
	add hl,de		;06b4
	ld de,0e800h		;06b5
	ld bc,(0f001h)		;06b8
	push ix			;06bc
	call sub_0059h		;06be
	pop ix			;06c1
	ret			;06c3
	ld a,(0e1ddh)		;06c4
	dec a			;06c7
	jr z,l06edh		;06c8
	dec a			;06ca
	jr z,l070ah		;06cb
	xor a			;06cd
	ld (0e1deh),a		;06ce
	ld c,000h		;06d1
	call 0472eh		;06d3
	ld a,001h		;06d6
	ld (0e1deh),a		;06d8
	ld c,0f0h		;06db
	call 0472eh		;06dd
	call 0478ch		;06e0
	ld a,001h		;06e3
	ld (0e1dfh),a		;06e5
l06e8h:
	ld hl,0e1ddh		;06e8
	inc (hl)		;06eb
	ret			;06ec
l06edh:
	xor a			;06ed
	ld (0e1deh),a		;06ee
	ld a,(0e1dfh)		;06f1
	ld c,a			;06f4
	call 0472eh		;06f5
	call 0478ch		;06f8
	ld hl,0e1dfh		;06fb
	ld a,(hl)		;06fe
	cp 0ffh			;06ff
	jr z,l06e8h		;0701
	rlca			;0703
	rlca			;0704
	rlca			;0705
	or 001h			;0706
	ld (hl),a		;0708
	ret			;0709
l070ah:
	ld a,001h		;070a
	ld (0e1deh),a		;070c
	ld c,0ffh		;070f
	call 0472eh		;0711
	call 0478ch		;0714
	call 04b43h		;0717
	call 043b4h		;071a
	xor a			;071d
	ld (0e1dch),a		;071e
	ld a,(0e401h)		;0721
	or a			;0724
	ld a,001h		;0725
	jr z,l072ah		;0727
	inc a			;0729
l072ah:
	ld (0e400h),a		;072a
	ret			;072d
	ld ix,(0e1e0h)		;072e
l0732h:
	ld a,(ix+000h)		;0732
	and a			;0735
	ret z			;0736
	rra			;0737
	ld de,l1000h		;0738
	call c,04759h		;073b
	bit 1,(ix+000h)		;073e
	ld de,00800h		;0742
	call nz,04759h		;0745
l0748h:
	bit 2,(ix+000h)		;0748
	ld de,l0000h		;074c
	call nz,04759h		;074f
	ld de,l0006h		;0752
	add ix,de		;0755
	jr l0732h		;0757
	ld l,(ix+003h)		;0759
	ld h,000h		;075c
	add hl,hl		;075e
	add hl,hl		;075f
	add hl,hl		;0760
	add hl,de		;0761
	ld a,(0e1deh)		;0762
	dec a			;0765
	jr z,l077ah		;0766
	ld de,02000h		;0768
	add hl,de		;076b
	ld e,(ix+001h)		;076c
	ld d,(ix+002h)		;076f
	push ix			;0772
	call 047a2h		;0774
	pop ix			;0777
	ret			;0779
l077ah:
	ld de,l0000h		;077a
	add hl,de		;077d
	ld e,(ix+004h)		;077e
	ld d,(ix+005h)		;0781
	push ix			;0784
	call 047a2h		;0786
	pop ix			;0789
	ret			;078b
	xor a			;078c
	ld (0f000h),a		;078d
	ld ix,(0e1e2h)		;0790
	call 0454eh		;0794
	ld hl,0f000h		;0797
	inc (hl)		;079a
	ld ix,(0e1e4h)		;079b
	jp 0454eh		;079f
	call 04a1dh		;07a2
l07a5h:
	ld a,(de)		;07a5
	and a			;07a6
	ret z			;07a7
	inc de			;07a8
	ld b,a			;07a9
	and 07fh		;07aa
	cp b			;07ac
	jr z,l07c7h		;07ad
	ld b,a			;07af
l07b0h:
	ld a,(de)		;07b0
	and c			;07b1
	inc de			;07b2
	exx			;07b3
	out (c),a		;07b4
	exx			;07b6
	ld a,(0e1deh)		;07b7
	and a			;07ba
	jr nz,l07c3h		;07bb
	rrc c			;07bd
	rrc c			;07bf
	rrc c			;07c1
l07c3h:
	djnz l07b0h		;07c3
	jr l07a5h		;07c5
l07c7h:
	ld a,(de)		;07c7
	inc de			;07c8
l07c9h:
	and c			;07c9
	exx			;07ca
	out (c),a		;07cb
	exx			;07cd
	ex af,af'		;07ce
	ld a,(0e1deh)		;07cf
	and a			;07d2
	jr nz,l07dbh		;07d3
	rrc c			;07d5
	rrc c			;07d7
	rrc c			;07d9
l07dbh:
	ex af,af'		;07db
	djnz l07c9h		;07dc
	jr l07a5h		;07de
	xor a			;07e0
	ld (0f004h),a		;07e1
	ld hl,(0e203h)		;07e4
	ld de,l0020h		;07e7
	sbc hl,de		;07ea
	ld (0e203h),hl		;07ec
	ld hl,0ed00h		;07ef
	ld (0f000h),hl		;07f2
	ld b,020h		;07f5
l07f7h:
	push bc			;07f7
	call 04117h		;07f8
	call 04889h		;07fb
	call 04108h		;07fe
	call 07261h		;0801
	call 06560h		;0804
	call 08798h		;0807
	call 06f42h		;080a
	call 06abch		;080d
	call 04137h		;0810
	call 0b109h		;0813
	call 0b410h		;0816
	call 04157h		;0819
	call 05113h		;081c
	ld hl,(0f000h)		;081f
	inc hl			;0822
	ld (0f000h),hl		;0823
	ld hl,0f004h		;0826
	ld a,(hl)		;0829
	add a,008h		;082a
	ld (hl),a		;082c
	ld hl,(0e203h)		;082d
	inc hl			;0830
	ld (0e203h),hl		;0831
	pop bc			;0834
	djnz l07f7h		;0835
	ld hl,(0e203h)		;0837
	dec hl			;083a
	ld (0e203h),hl		;083b
	ret			;083e
l083fh:
	ld a,001h		;083f
	ld (0e327h),a		;0841
	ret			;0844
	xor a			;0845
	ld (0e320h),a		;0846
	ld (0e327h),a		;0849
	ld de,(0e325h)		;084c
	ld hl,(0e203h)		;0850
	rst 20h			;0853
	jr nc,l083fh		;0854
	ld a,(0e3d0h)		;0856
	dec a			;0859
	ret z			;085a
	dec a			;085b
	jr z,l0867h		;085c
	ld de,0e202h		;085e
	ld a,(de)		;0861
	call 0cb1ch		;0862
	ld (de),a		;0865
	ret nc			;0866
l0867h:
	inc hl			;0867
	ld (0e203h),hl		;0868
	ld a,001h		;086b
	ld (0e320h),a		;086d
	ld hl,0ed00h		;0870
	ld de,0ecffh		;0873
	ld bc,002c0h		;0876
	call 0cc67h		;0879
	nop			;087c
	nop			;087d
	nop			;087e
	nop			;087f
	nop			;0880
	nop			;0881
	nop			;0882
	ld hl,0ed1fh		;0883
	ld (0f000h),hl		;0886
	ld hl,(0e203h)		;0889
	ld de,(0e323h)		;088c
	rst 20h			;0890
	ccf			;0891
	jp c,04956h		;0892
	ld de,(0e321h)		;0895
	and a			;0899
	sbc hl,de		;089a
	jp c,04956h		;089c
	push hl			;089f
	ld hl,07900h		;08a0
	ld a,(0e201h)		;08a3
	call 04b67h		;08a6
	pop hl			;08a9
	ld a,l			;08aa
	srl h			;08ab
	rra			;08ad
	and 0feh		;08ae
	ld l,a			;08b0
	ld c,l			;08b1
	ld b,h			;08b2
	add hl,hl		;08b3
	add hl,bc		;08b4
	add hl,de		;08b5
	ld (0f002h),hl		;08b6
	ld hl,(0f000h)		;08b9
	ld b,006h		;08bc
	push bc			;08be
	push hl			;08bf
	ld a,(0e201h)		;08c0
	ld hl,05557h		;08c3
	call 04b67h		;08c6
	ld hl,(0f002h)		;08c9
	call 04942h		;08cc
	ld a,(hl)		;08cf
	inc hl			;08d0
	ld (0f002h),hl		;08d1
	jr z,l08e3h		;08d4
	sub 004h		;08d6
	jr nc,l08e3h		;08d8
	add a,004h		;08da
	ld c,a			;08dc
	ld de,06000h		;08dd
	ld a,c			;08e0
	jr l090ah		;08e1
l08e3h:
	ld c,a			;08e3
	ld a,(0e201h)		;08e4
	ld hl,0494ah		;08e7
	call 0407ah		;08ea
	ld a,c			;08ed
	cp (hl)			;08ee
	jr c,l090ah		;08ef
	sub (hl)		;08f1
	ld l,(hl)		;08f2
	ld h,000h		;08f3
	add hl,hl		;08f5
	call 0407ah		;08f6
	add hl,hl		;08f9
	add hl,hl		;08fa
	add hl,hl		;08fb
	add hl,de		;08fc
	ld de,0eaa8h		;08fd
	ld bc,l0008h		;0900
	ldir			;0903
	ld de,0eaa8h		;0905
	jr l0913h		;0908
l090ah:
	ld l,a			;090a
	ld h,000h		;090b
	add hl,hl		;090d
	add hl,hl		;090e
	add hl,hl		;090f
	add hl,hl		;0910
	add hl,de		;0911
	ex de,hl		;0912
l0913h:
	ld a,(0e203h)		;0913
	and 003h		;0916
	add a,e			;0918
	ld e,a			;0919
	jr nc,l091dh		;091a
	inc d			;091c
l091dh:
	pop hl			;091d
	dec b			;091e
	ld bc,l0020h		;091f
	jr z,l0932h		;0922
	ld a,(de)		;0924
	ld (hl),a		;0925
	add hl,bc		;0926
	inc de			;0927
	inc de			;0928
	inc de			;0929
	inc de			;092a
	ld a,(de)		;092b
	ld (hl),a		;092c
	add hl,bc		;092d
	inc de			;092e
	inc de			;092f
	inc de			;0930
	inc de			;0931
l0932h:
	ld a,(de)		;0932
	ld (hl),a		;0933
	add hl,bc		;0934
	inc de			;0935
	inc de			;0936
	inc de			;0937
	inc de			;0938
	ld a,(de)		;0939
	ld (hl),a		;093a
	add hl,bc		;093b
	pop bc			;093c
	dec b			;093d
	jp nz,048beh		;093e
	ret			;0941
	ld a,(0e201h)		;0942
	and a			;0945
	ret z			;0946
	cp 008h			;0947
	ret			;0949
	dec (hl)		;094a
	rla			;094b
	ld l,012h		;094c
	dec e			;094e
	ld d,03ch		;094f
	ld e,c			;0951
	dec (hl)		;0952
	ld (de),a		;0953
	ld (de),a		;0954
	ld (de),a		;0955
	ld a,(0e203h)		;0956
	and 01fh		;0959
	ld hl,049e8h		;095b
	call 0407ah		;095e
	ld c,(hl)		;0961
	ld a,c			;0962
	ex af,af'		;0963
	ld b,016h		;0964
	ld de,l0020h		;0966
	ld hl,(0f000h)		;0969
l096ch:
	xor a			;096c
	dec c			;096d
	jr nz,l0975h		;096e
	ex af,af'		;0970
	and 001h		;0971
	add a,0feh		;0973
l0975h:
	ld (hl),a		;0975
	add hl,de		;0976
	djnz l096ch		;0977
	ret			;0979
	ld a,(0e1c3h)		;097a
	and 006h		;097d
	ld hl,049e0h		;097f
	ld e,a			;0982
	ld d,000h		;0983
	add hl,de		;0985
	ld c,(hl)		;0986
	inc hl			;0987
	ld b,(hl)		;0988
	ld hl,027f2h		;0989
	call 04993h		;098c
	ld c,b			;098f
	ld hl,027fbh		;0990
	call 0cb2eh		;0993
	and c			;0996
	call 0004dh		;0997
	ld de,00800h		;099a
	add hl,de		;099d
	call 0004dh		;099e
	add hl,de		;09a1
	jp 0004dh		;09a2
	ld ix,049e8h		;09a5
	ld a,(0e203h)		;09a9
	sub 01fh		;09ac
	and 01fh		;09ae
	ld e,a			;09b0
	ld d,000h		;09b1
	add ix,de		;09b3
	sub 020h		;09b5
	neg			;09b7
	ld c,a			;09b9
	ld de,0ed00h		;09ba
	ld b,020h		;09bd
l09bfh:
	push de			;09bf
	ld a,(ix+000h)		;09c0
	ld l,a			;09c3
	dec l			;09c4
	ld h,000h		;09c5
	add hl,hl		;09c7
	add hl,hl		;09c8
	add hl,hl		;09c9
	add hl,hl		;09ca
	add hl,hl		;09cb
	add hl,de		;09cc
	and 001h		;09cd
	add a,0feh		;09cf
	ld (hl),a		;09d1
	dec c			;09d2
	jr nz,l09d9h		;09d3
	ld ix,049e8h		;09d5
l09d9h:
	pop de			;09d9
	inc de			;09da
	inc ix			;09db
	djnz l09bfh		;09dd
	ret			;09df
	rst 38h			;09e0
	nop			;09e1
	rst 38h			;09e2
	rst 38h			;09e3
	nop			;09e4
	rst 38h			;09e5
	rst 38h			;09e6
	rst 38h			;09e7
	ld (bc),a		;09e8
	rrca			;09e9
	dec b			;09ea
	inc de			;09eb
	ld a,(bc)		;09ec
	ld bc,l060dh		;09ed
	ld de,00b08h		;09f0
	ld (bc),a		;09f3
	djnz l09fdh		;09f4
	dec c			;09f6
	dec b			;09f7
	ld (de),a		;09f8
	inc c			;09f9
	ld (bc),a		;09fa
	ld (de),a		;09fb
	add hl,bc		;09fc
l09fdh:
	ld c,014h		;09fd
	ld de,l0502h		;09ff
	dec c			;0a02
	ld a,(bc)		;0a03
	inc de			;0a04
	ld b,00fh		;0a05
	add hl,bc		;0a07
	call 05afah		;0a08
	ld bc,002c0h		;0a0b
	jr l0a16h		;0a0e
l0a10h:
	call 05afah		;0a10
	ld bc,00300h		;0a13
l0a16h:
	ld hl,03800h		;0a16
	xor a			;0a19
	jp l0056h		;0a1a
	ex af,af'		;0a1d
	call sub_0053h		;0a1e
	exx			;0a21
	ld a,(l0007h)		;0a22
	ld c,a			;0a25
	exx			;0a26
	ex af,af'		;0a27
	ret			;0a28
	call sub_0050h		;0a29
	exx			;0a2c
	ld a,(l0006h)		;0a2d
	ld c,a			;0a30
	exx			;0a31
	ret			;0a32
	ex de,hl		;0a33
	jp l005ch		;0a34
	exx			;0a37
	ld b,003h		;0a38
l0a3ah:
	exx			;0a3a
	push bc			;0a3b
	push de			;0a3c
	call 04a33h		;0a3d
	ld de,00800h		;0a40
	add hl,de		;0a43
	pop de			;0a44
	pop bc			;0a45
	exx			;0a46
	djnz l0a3ah		;0a47
	ret			;0a49
	ld d,003h		;0a4a
l0a4ch:
	push bc			;0a4c
	push de			;0a4d
	call l0056h		;0a4e
	ld de,00800h		;0a51
	add hl,de		;0a54
	pop de			;0a55
	pop bc			;0a56
	dec d			;0a57
	jr nz,l0a4ch		;0a58
	ret			;0a5a
	ld b,003h		;0a5b
l0a5dh:
	push bc			;0a5d
	push de			;0a5e
	call 04a8ch		;0a5f
	ld de,00800h		;0a62
	add hl,de		;0a65
	pop de			;0a66
	pop bc			;0a67
	djnz l0a5dh		;0a68
	ret			;0a6a
	ld c,0ffh		;0a6b
l0a6dh:
	ex de,hl		;0a6d
	ld e,(hl)		;0a6e
	inc hl			;0a6f
	ld d,(hl)		;0a70
	ex de,hl		;0a71
	inc de			;0a72
l0a73h:
	ld a,(de)		;0a73
	inc de			;0a74
	ld b,a			;0a75
	inc b			;0a76
	ret z			;0a77
	inc b			;0a78
	jr z,l0a6dh		;0a79
	and c			;0a7b
	call 0004dh		;0a7c
	inc hl			;0a7f
	jr l0a73h		;0a80
	ld c,000h		;0a82
	jr l0a6dh		;0a84
l0a86h:
	ex de,hl		;0a86
	ld e,(hl)		;0a87
	inc hl			;0a88
	ld d,(hl)		;0a89
	ex de,hl		;0a8a
	inc de			;0a8b
	call 04a1dh		;0a8c
l0a8fh:
	ld a,(de)		;0a8f
	and a			;0a90
	ret z			;0a91
	inc de			;0a92
	ld b,a			;0a93
	and 07fh		;0a94
	cp b			;0a96
	jr z,l0aa7h		;0a97
	and a			;0a99
	jr z,l0a86h		;0a9a
	ld b,a			;0a9c
l0a9dh:
	ld a,(de)		;0a9d
	inc de			;0a9e
	exx			;0a9f
	out (c),a		;0aa0
	exx			;0aa2
	djnz l0a9dh		;0aa3
	jr l0a8fh		;0aa5
l0aa7h:
	ld a,(de)		;0aa7
	inc de			;0aa8
l0aa9h:
	exx			;0aa9
	out (c),a		;0aaa
	exx			;0aac
	djnz l0aa9h		;0aad
	jr l0a8fh		;0aaf
l0ab1h:
	call 04abdh		;0ab1
	ld a,020h		;0ab4
	call 0407fh		;0ab6
	dec c			;0ab9
	jr nz,l0ab1h		;0aba
	ret			;0abc
	push de			;0abd
l0abeh:
	ld b,010h		;0abe
l0ac0h:
	call 0004ah		;0ac0
	call 04ad9h		;0ac3
	ex de,hl		;0ac6
	call 0004dh		;0ac7
	ex de,hl		;0aca
	inc e			;0acb
	inc hl			;0acc
	djnz l0ac0h		;0acd
	ld a,e			;0acf
	sub 020h		;0ad0
	ld e,a			;0ad2
	bit 4,e			;0ad3
	jr z,l0abeh		;0ad5
	pop de			;0ad7
	ret			;0ad8
	push bc			;0ad9
	ld c,a			;0ada
	ld b,008h		;0adb
l0addh:
	rr c			;0add
	rla			;0adf
	djnz l0addh		;0ae0
	pop bc			;0ae2
	ret			;0ae3
	di			;0ae4
	push hl			;0ae5
	push de			;0ae6
	push bc			;0ae7
	push ix			;0ae8
	push af			;0aea
	ld a,004h		;0aeb
	ld (07000h),a		;0aed
	inc a			;0af0
	ld (09000h),a		;0af1
	inc a			;0af4
	ld (0b000h),a		;0af5
	pop af			;0af8
	push af			;0af9
	call 06480h		;0afa
	ld a,(0f0f1h)		;0afd
	ld (07000h),a		;0b00
	ld a,(0f0f2h)		;0b03
	ld (09000h),a		;0b06
	ld a,(0f0f3h)		;0b09
	ld (0b000h),a		;0b0c
	pop af			;0b0f
	pop ix			;0b10
	pop bc			;0b12
	pop de			;0b13
	pop hl			;0b14
	ei			;0b15
	ret			;0b16
	call 04137h		;0b17
	call 0b77fh		;0b1a
	jp 04157h		;0b1d
	push ix			;0b20
	call 04117h		;0b22
	ld ix,0556fh		;0b25
	call 04595h		;0b29
	ld a,001h		;0b2c
	ld (0f000h),a		;0b2e
	ld ix,0559ah		;0b31
	call 0454eh		;0b35
	call 04b51h		;0b38
	call 04108h		;0b3b
	call 04137h		;0b3e
	pop ix			;0b41
	ld hl,0e600h		;0b43
	ld de,0e601h		;0b46
	ld bc,003ffh		;0b49
	ld (hl),000h		;0b4c
	ldir			;0b4e
	ret			;0b50
	call 04112h		;0b51
	ld hl,01e80h		;0b54
	ld de,0bf6dh		;0b57
	call 04a8ch		;0b5a
	jp 04108h		;0b5d
	ld l,a			;0b60
	ld h,000h		;0b61
	add hl,hl		;0b63
	add hl,de		;0b64
	jr l0b6ch		;0b65
	add a,a			;0b67
	ld e,a			;0b68
	ld d,000h		;0b69
	add hl,de		;0b6b
l0b6ch:
	ld e,(hl)		;0b6c
	inc hl			;0b6d
	ld d,(hl)		;0b6e
	ret			;0b6f
	ld hl,0e600h		;0b70
	ld de,l0040h		;0b73
	ld b,00ch		;0b76
l0b78h:
	ld a,(hl)		;0b78
	and a			;0b79
	ret nz			;0b7a
	add hl,de		;0b7b
	djnz l0b78h		;0b7c
	ld hl,0e900h		;0b7e
	ld de,l0010h		;0b81
	ld b,00ah		;0b84
l0b86h:
	ld a,(hl)		;0b86
	and a			;0b87
	ret nz			;0b88
	add hl,de		;0b89
	djnz l0b86h		;0b8a
	xor a			;0b8c
	ret			;0b8d
	ld l,(ix+004h)		;0b8e
	ld h,(ix+006h)		;0b91
	call 05c92h		;0b94
	ex de,hl		;0b97
	ld hl,04be8h		;0b98
	ld a,(ix+014h)		;0b9b
	sub 00fh		;0b9e
	neg			;0ba0
	call 0407ah		;0ba2
	exx			;0ba5
	ld b,(ix+013h)		;0ba6
l0ba9h:
	exx			;0ba9
	push hl			;0baa
	push de			;0bab
	ld c,(ix+014h)		;0bac
	ld b,000h		;0baf
	ldir			;0bb1
	pop de			;0bb3
	ld a,020h		;0bb4
	add a,e			;0bb6
	ld e,a			;0bb7
	jr nc,l0bbbh		;0bb8
	inc d			;0bba
l0bbbh:
	pop hl			;0bbb
	ld a,00fh		;0bbc
	add a,l			;0bbe
	ld l,a			;0bbf
	jr nc,l0bc3h		;0bc0
	inc h			;0bc2
l0bc3h:
	exx			;0bc3
	djnz l0ba9h		;0bc4
	ret			;0bc6
	ld l,(ix+004h)		;0bc7
	ld h,(ix+006h)		;0bca
	call 05c92h		;0bcd
	ld c,(ix+013h)		;0bd0
l0bd3h:
	push hl			;0bd3
	ld b,(ix+014h)		;0bd4
l0bd7h:
	ld (hl),000h		;0bd7
	inc hl			;0bd9
	djnz l0bd7h		;0bda
	pop hl			;0bdc
	ld a,020h		;0bdd
	add a,l			;0bdf
	ld l,a			;0be0
	jr nc,l0be4h		;0be1
	inc h			;0be3
l0be4h:
	dec c			;0be4
	jr nz,l0bd3h		;0be5
	ret			;0be7
	cp h			;0be8
	cp h			;0be9
	cp h			;0bea
	cp h			;0beb
	cp h			;0bec
	cp h			;0bed
	cp h			;0bee
	cp h			;0bef
	cp h			;0bf0
	cp h			;0bf1
	cp h			;0bf2
	xor h			;0bf3
	xor l			;0bf4
	xor h			;0bf5
	xor a			;0bf6
	cp l			;0bf7
	cp l			;0bf8
	cp l			;0bf9
	cp l			;0bfa
	cp l			;0bfb
	cp l			;0bfc
	cp l			;0bfd
	cp l			;0bfe
	cp l			;0bff
	cp l			;0c00
	cp l			;0c01
	or b			;0c02
	or c			;0c03
	or d			;0c04
	or e			;0c05
	cp (hl)			;0c06
	cp (hl)			;0c07
	cp (hl)			;0c08
	cp (hl)			;0c09
	cp (hl)			;0c0a
	cp (hl)			;0c0b
	cp (hl)			;0c0c
	cp (hl)			;0c0d
	cp (hl)			;0c0e
	cp (hl)			;0c0f
	cp (hl)			;0c10
	or h			;0c11
	or l			;0c12
	or (hl)			;0c13
	or a			;0c14
	cp a			;0c15
	cp a			;0c16
	cp a			;0c17
	cp a			;0c18
	cp a			;0c19
	cp a			;0c1a
	cp a			;0c1b
	cp a			;0c1c
	cp a			;0c1d
	cp a			;0c1e
	cp a			;0c1f
	cp b			;0c20
	cp c			;0c21
	cp d			;0c22
	cp e			;0c23
	ld a,r			;0c24
	ld b,a			;0c26
	add a,a			;0c27
	add a,b			;0c28
	ld b,a			;0c29
	ld a,(0e306h)		;0c2a
	add a,b			;0c2d
	ld (0e306h),a		;0c2e
	ret			;0c31
	push af			;0c32
	ld a,(0e201h)		;0c33
	call 04b67h		;0c36
	pop af			;0c39
	ld c,a			;0c3a
	add a,a			;0c3b
	add a,c			;0c3c
	call 0407fh		;0c3d
	ex de,hl		;0c40
	ld e,(hl)		;0c41
	inc hl			;0c42
	ld d,(hl)		;0c43
	inc hl			;0c44
	ld c,(hl)		;0c45
	ld hl,(0e203h)		;0c46
	rst 20h			;0c49
	ret			;0c4a
	ld a,(0e1c0h)		;0c4b
	cp 002h			;0c4e
	jr z,l0c55h		;0c50
	cp 005h			;0c52
	ret nz			;0c54
l0c55h:
	ld a,(0e439h)		;0c55
	or a			;0c58
	ret z			;0c59
	ld hl,0e1d5h		;0c5a
	ld a,(hl)		;0c5d
	or a			;0c5e
	ret nz			;0c5f
	ld hl,0e43bh		;0c60
	dec (hl)		;0c63
	ret nz			;0c64
	ld (hl),03ch		;0c65
	dec l			;0c67
	ld a,(hl)		;0c68
	sub 001h		;0c69
	daa			;0c6b
	ld (hl),a		;0c6c
	ld a,001h		;0c6d
	jr nz,l0c72h		;0c6f
	inc a			;0c71
l0c72h:
	ld (0e1d5h),a		;0c72
	ret			;0c75
	ld hl,0e280h		;0c76
	ld de,0e281h		;0c79
	ld (hl),0e0h		;0c7c
	ld bc,l007fh		;0c7e
	ldir			;0c81
	ret			;0c83
	call 04117h		;0c84
	ld ix,0b3ach		;0c87
	call 04595h		;0c8b
	ld a,001h		;0c8e
	ld (0f000h),a		;0c90
	ld ix,0b3b9h		;0c93
	call 0454eh		;0c97
	call 04108h		;0c9a
	call 04137h		;0c9d
	jp 04b43h		;0ca0
	ld a,(ix+014h)		;0ca3
	or a			;0ca6
	ret z			;0ca7
	ld b,a			;0ca8
	ld l,(ix+011h)		;0ca9
	ld h,(ix+012h)		;0cac
	ld a,(ix+032h)		;0caf
l0cb2h:
	ld (hl),a		;0cb2
	inc l			;0cb3
	djnz l0cb2h		;0cb4
	ret			;0cb6
	push af			;0cb7
	ld hl,04cf6h		;0cb8
	call 04b67h		;0cbb
	ld hl,l0000h		;0cbe
	push bc			;0cc1
l0cc2h:
	add hl,de		;0cc2
	djnz l0cc2h		;0cc3
	pop bc			;0cc5
	pop af			;0cc6
	push hl			;0cc7
	ld hl,04cd6h		;0cc8
	call 04b67h		;0ccb
	ld hl,l0000h		;0cce
l0cd1h:
	add hl,de		;0cd1
	djnz l0cd1h		;0cd2
	pop de			;0cd4
	ret			;0cd5
	nop			;0cd6
	nop			;0cd7
	add a,b			;0cd8
	rst 38h			;0cd9
	ld c,e			;0cda
	rst 38h			;0cdb
	inc hl			;0cdc
	rst 38h			;0cdd
	nop			;0cde
	rst 38h			;0cdf
	inc hl			;0ce0
	rst 38h			;0ce1
	ld c,e			;0ce2
	rst 38h			;0ce3
	add a,b			;0ce4
	rst 38h			;0ce5
	nop			;0ce6
	nop			;0ce7
	add a,b			;0ce8
	nop			;0ce9
	or l			;0cea
	nop			;0ceb
	defb 0ddh,000h,000h ;illegal sequence	;0cec
	ld bc,000ddh		;0cef
	or l			;0cf2
	nop			;0cf3
	add a,b			;0cf4
	nop			;0cf5
	nop			;0cf6
	ld bc,000ddh		;0cf7
	or l			;0cfa
	nop			;0cfb
	add a,b			;0cfc
	nop			;0cfd
	nop			;0cfe
	nop			;0cff
	add a,b			;0d00
	rst 38h			;0d01
	ld c,e			;0d02
	rst 38h			;0d03
	inc hl			;0d04
	rst 38h			;0d05
	nop			;0d06
	rst 38h			;0d07
	inc hl			;0d08
	rst 38h			;0d09
	ld c,e			;0d0a
	rst 38h			;0d0b
	add a,b			;0d0c
	rst 38h			;0d0d
	nop			;0d0e
	nop			;0d0f
	add a,b			;0d10
	nop			;0d11
	or l			;0d12
	nop			;0d13
	defb 0ddh,000h,0ddh ;illegal sequence	;0d14
	push hl			;0d17
	call 04d1eh		;0d18
	pop ix			;0d1b
	ret			;0d1d
	ld (0f019h),de		;0d1e
	ld (0e350h),a		;0d22
	ld a,b			;0d25
	ld (0e35fh),a		;0d26
	xor a			;0d29
	ld (0e353h),a		;0d2a
	ld a,c			;0d2d
	ld (0e351h),a		;0d2e
	ld hl,0e600h		;0d31
	ld b,00ch		;0d34
	ld de,l0040h		;0d36
	xor a			;0d39
l0d3ah:
	cp (hl)			;0d3a
	jr z,l0d42h		;0d3b
	add hl,de		;0d3d
	djnz l0d3ah		;0d3e
	xor a			;0d40
	ret			;0d41
l0d42h:
	push hl			;0d42
	ld a,(0e350h)		;0d43
	ld l,a			;0d46
	ld h,000h		;0d47
	ld e,l			;0d49
	ld d,h			;0d4a
	add hl,hl		;0d4b
	add hl,hl		;0d4c
	add hl,hl		;0d4d
	or a			;0d4e
	sbc hl,de		;0d4f
	ld de,04f45h		;0d51
	add hl,de		;0d54
	ex de,hl		;0d55
	pop hl			;0d56
	ld a,(de)		;0d57
	bit 6,a			;0d58
	jr nz,l0d6ch		;0d5a
	and 03fh		;0d5c
	ld b,a			;0d5e
	ld a,(0e355h)		;0d5f
	add a,b			;0d62
	cp 00dh			;0d63
	jr c,l0d69h		;0d65
	xor a			;0d67
	ret			;0d68
l0d69h:
	ld (0e355h),a		;0d69
l0d6ch:
	push de			;0d6c
	ld de,(0f019h)		;0d6d
	exx			;0d71
	ld hl,0e352h		;0d72
	inc (hl)		;0d75
	exx			;0d76
	push hl			;0d77
	pop ix			;0d78
	ld a,(0e350h)		;0d7a
	ld (0e353h),a		;0d7d
	ld (hl),a		;0d80
	inc l			;0d81
	xor a			;0d82
	ld (hl),a		;0d83
	inc l			;0d84
	ld (hl),a		;0d85
	inc l			;0d86
	ld (hl),a		;0d87
	inc l			;0d88
	ld (hl),e		;0d89
	inc l			;0d8a
	ld (hl),a		;0d8b
	inc l			;0d8c
	ld (hl),d		;0d8d
	ld de,l0005h		;0d8e
	add hl,de		;0d91
	pop de			;0d92
	ex de,hl		;0d93
	ldi			;0d94
	ld a,(0e351h)		;0d96
	ld (de),a		;0d99
	inc e			;0d9a
	ldi			;0d9b
	ldi			;0d9d
	ldi			;0d9f
	ld a,007h		;0da1
	ld (de),a		;0da3
	ld a,005h		;0da4
	call 0407fh		;0da6
	call 04e93h		;0da9
	ld (de),a		;0dac
	inc e			;0dad
	ld a,(0e350h)		;0dae
	cp 026h			;0db1
	jr z,l0dcbh		;0db3
	xor a			;0db5
	ld (de),a		;0db6
	ld a,(0e350h)		;0db7
	cp 00bh			;0dba
	jr z,l0dc2h		;0dbc
	cp 031h			;0dbe
	jr nz,l0dcbh		;0dc0
l0dc2h:
	ld a,001h		;0dc2
	ld (de),a		;0dc4
	inc e			;0dc5
	ld a,(0e396h)		;0dc6
	ld (de),a		;0dc9
	dec e			;0dca
l0dcbh:
	inc e			;0dcb
	inc e			;0dcc
	xor a			;0dcd
	ld (de),a		;0dce
	inc e			;0dcf
	ld a,(0e35fh)		;0dd0
	ld (de),a		;0dd3
	inc e			;0dd4
	xor a			;0dd5
	ld (de),a		;0dd6
	ld a,016h		;0dd7
	call 0407fh		;0dd9
	ldi			;0ddc
	ldi			;0dde
	ldi			;0de0
	ld a,(0e351h)		;0de2
	and a			;0de5
	jr z,l0dech		;0de6
	ld (ix+031h),008h	;0de8
l0dech:
	ld a,(0e350h)		;0dec
	dec a			;0def
	call 04084h		;0df0
	or c			;0df3
	ld h,l			;0df4
	halt			;0df5
	ld c,(hl)		;0df6
	ld h,a			;0df7
	sbc a,b			;0df8
	xor 0a2h		;0df9
	ld l,l			;0dfb
l0dfch:
	sbc a,l			;0dfc
	ld (hl),l		;0dfd
	ld c,(hl)		;0dfe
	ld c,d			;0dff
	and l			;0e00
	and b			;0e01
	sbc a,c			;0e02
	ld c,h			;0e03
	sbc a,e			;0e04
	ld (hl),l		;0e05
	ld c,(hl)		;0e06
	inc a			;0e07
	and (hl)		;0e08
	inc b			;0e09
	sbc a,d			;0e0a
	and (hl)		;0e0b
	sbc a,e			;0e0c
	ld b,b			;0e0d
	and e			;0e0e
	rst 30h			;0e0f
	sbc a,e			;0e10
	jp nz,08db7h		;0e11
	sbc a,h			;0e14
	ld (hl),l		;0e15
	ld c,(hl)		;0e16
	ld (hl),l		;0e17
	ld c,(hl)		;0e18
	ld d,b			;0e19
	sbc a,h			;0e1a
	ld (hl),l		;0e1b
	ld c,(hl)		;0e1c
	call m,075bbh		;0e1d
l0e20h:
	ld c,(hl)		;0e20
	ld (hl),l		;0e21
	ld c,(hl)		;0e22
	ld b,a			;0e23
	and h			;0e24
	ld (hl),l		;0e25
	ld c,(hl)		;0e26
	ret po			;0e27
	and h			;0e28
	ld (hl),l		;0e29
	ld c,(hl)		;0e2a
l0e2bh:
	rst 20h			;0e2b
	or (hl)			;0e2c
	ld (hl),l		;0e2d
	ld c,(hl)		;0e2e
	ld (bc),a		;0e2f
	cp c			;0e30
l0e31h:
	ld e,h			;0e31
	cp d			;0e32
	ld (hl),l		;0e33
	ld c,(hl)		;0e34
	ld c,l			;0e35
	cp d			;0e36
	jp nc,020abh		;0e37
	xor a			;0e3a
	sbc a,l			;0e3b
	sbc a,a			;0e3c
	add hl,hl		;0e3d
	sub (hl)		;0e3e
	ld (hl),l		;0e3f
	ld c,(hl)		;0e40
	ld (hl),l		;0e41
	ld c,(hl)		;0e42
	sub h			;0e43
	sub (hl)		;0e44
	sub h			;0e45
	sub (hl)		;0e46
	xor d			;0e47
	sub (hl)		;0e48
	or (hl)			;0e49
	sub (hl)		;0e4a
	or d			;0e4b
	sub (hl)		;0e4c
	and d			;0e4d
	sub (hl)		;0e4e
	inc c			;0e4f
	sub a			;0e50
	dec de			;0e51
	and a			;0e52
	pop de			;0e53
	cp d			;0e54
	ld c,a			;0e55
	ld (hl),h		;0e56
	add hl,hl		;0e57
	sub (hl)		;0e58
	dec a			;0e59
	sub e			;0e5a
	ld (hl),l		;0e5b
	ld c,(hl)		;0e5c
	add hl,hl		;0e5d
	sub (hl)		;0e5e
	ld (hl),l		;0e5f
	ld c,(hl)		;0e60
	ld a,a			;0e61
	ld c,(hl)		;0e62
	jr nz,l0dfch		;0e63
	dec c			;0e65
	sub a			;0e66
	add hl,bc		;0e67
	sbc a,b			;0e68
	ld e,a			;0e69
	sbc a,b			;0e6a
	ld (hl),l		;0e6b
	ld c,(hl)		;0e6c
	ld (hl),l		;0e6d
	ld c,(hl)		;0e6e
	ld (hl),l		;0e6f
	ld c,(hl)		;0e70
	and 0beh		;0e71
	djnz l0e31h		;0e73
	ret			;0e75
	call 04137h		;0e76
	call 0b8f4h		;0e79
	jp 04157h		;0e7c
	ld a,(0f0f3h)		;0e7f
	push af			;0e82
	call 04137h		;0e83
	call 0a5f0h		;0e86
	pop af			;0e89
	di			;0e8a
	ld (0b000h),a		;0e8b
	ld (0f0f3h),a		;0e8e
	ei			;0e91
	ret			;0e92
	push hl			;0e93
	ld a,(0e228h)		;0e94
	ld hl,04ea4h		;0e97
	call 0407ah		;0e9a
	ld a,r			;0e9d
	and 007h		;0e9f
	add a,(hl)		;0ea1
	pop hl			;0ea2
	ret			;0ea3
	ld l,b			;0ea4
	ld h,b			;0ea5
	ld c,b			;0ea6
	ld b,b			;0ea7
	jr c,l0edah		;0ea8
	jr z,l0ed0h		;0eaa
	jr nz,l0ecah		;0eac
	ld a,(de)		;0eae
	jr $+22			;0eaf
	djnz l0ec1h		;0eb1
	inc c			;0eb3
	ld e,(ix+004h)		;0eb4
	ld d,(ix+006h)		;0eb7
	call 093f5h		;0eba
l0ebdh:
	ld de,(0f012h)		;0ebd
l0ec1h:
	call 04efbh		;0ec1
	ld de,(0f014h)		;0ec4
	jr l0f02h		;0ec8
l0ecah:
	ld e,(ix+004h)		;0eca
	ld d,(ix+006h)		;0ecd
l0ed0h:
	call 093e9h		;0ed0
	jr l0ebdh		;0ed3
	ld a,080h		;0ed5
	ld e,(ix+004h)		;0ed7
l0edah:
	ld d,(ix+006h)		;0eda
	ld (0f00fh),a		;0edd
	ld a,h			;0ee0
	ld (0f000h),a		;0ee1
	ld a,l			;0ee4
	ld (0f001h),a		;0ee5
	call 09467h		;0ee8
	ld d,001h		;0eeb
	call 093fdh		;0eed
	ld de,(0f014h)		;0ef0
	call 04f02h		;0ef4
	ld de,(0f012h)		;0ef7
l0efbh:
	ld (ix+007h),e		;0efb
	ld (ix+008h),d		;0efe
	ret			;0f01
l0f02h:
	ld (ix+009h),e		;0f02
	ld (ix+00ah),d		;0f05
	ret			;0f08
	ld e,(ix+009h)		;0f09
	ld d,(ix+00ah)		;0f0c
	ret			;0f0f
	ld e,(ix+007h)		;0f10
	ld d,(ix+008h)		;0f13
	ret			;0f16
	call 04f21h		;0f17
	jr l0efbh		;0f1a
	ld d,000h		;0f1c
	ld e,d			;0f1e
	jr l0efbh		;0f1f
	ld d,000h		;0f21
	ld e,d			;0f23
	jr l0f02h		;0f24
	call 04f02h		;0f26
	ex de,hl		;0f29
	jr l0efbh		;0f2a
	ld e,(ix+009h)		;0f2c
	ld d,(ix+00ah)		;0f2f
	call 05cadh		;0f32
	ld (ix+009h),e		;0f35
	ld (ix+00ah),d		;0f38
	ret			;0f3b
	ld e,(ix+007h)		;0f3c
	ld d,(ix+008h)		;0f3f
	call 05cadh		;0f42
	ld (ix+007h),e		;0f45
	ld (ix+008h),d		;0f48
	ret			;0f4b
	ret nz			;0f4c
	ld bc,l1010h		;0f4d
	or b			;0f50
	dec b			;0f51
	nop			;0f52
	add a,c			;0f53
	rst 38h			;0f54
	djnz l0f67h		;0f55
	ret m			;0f57
	inc bc			;0f58
	nop			;0f59
	add a,c			;0f5a
	ld bc,l1010h		;0f5b
	call c,sub_000ah	;0f5e
	add a,c			;0f61
	ld bc,l1010h		;0f62
	ld l,b			;0f65
	inc bc			;0f66
l0f67h:
	nop			;0f67
	add a,c			;0f68
	ld bc,l1010h		;0f69
	ld (hl),h		;0f6c
	ld a,(bc)		;0f6d
	nop			;0f6e
	add a,c			;0f6f
	ld bc,l1010h		;0f70
	ld e,b			;0f73
	inc b			;0f74
	nop			;0f75
	add a,c			;0f76
	ld bc,l1010h		;0f77
	ret p			;0f7a
	dec b			;0f7b
	nop			;0f7c
	add a,c			;0f7d
	inc bc			;0f7e
	dec c			;0f7f
	dec c			;0f80
	call nz,l0008h		;0f81
	add a,c			;0f84
	ld bc,l1010h		;0f85
	and h			;0f88
	rlca			;0f89
	nop			;0f8a
	add a,c			;0f8b
	jr nz,$+18		;0f8c
	djnz $-42		;0f8e
	inc b			;0f90
	nop			;0f91
	ret nz			;0f92
	ld bc,l1010h		;0f93
	nop			;0f96
	nop			;0f97
	ld hl,l017fh+2		;0f98
	djnz $+18		;0f9b
	call nz,l0003h		;0f9d
	add a,c			;0fa0
	ld bc,l1010h		;0fa1
	or h			;0fa4
	rlca			;0fa5
	nop			;0fa6
	add a,c			;0fa7
	ld bc,l1010h		;0fa8
	call m,sub_000ah	;0fab
	add a,c			;0fae
	ld bc,l1010h		;0faf
	ret m			;0fb2
	inc bc			;0fb3
	nop			;0fb4
	add a,c			;0fb5
	ld bc,l1010h		;0fb6
	ld e,b			;0fb9
	ld a,(bc)		;0fba
	nop			;0fbb
	add a,c			;0fbc
	ld bc,l1010h		;0fbd
	ret p			;0fc0
	rlca			;0fc1
	nop			;0fc2
	add a,c			;0fc3
	ld bc,l1010h		;0fc4
	call nc,sub_000bh	;0fc7
	ret nz			;0fca
	ld a,(bc)		;0fcb
	jr l0fe6h		;0fcc
	nop			;0fce
	nop			;0fcf
	inc b			;0fd0
	add a,c			;0fd1
	ld bc,l1010h		;0fd2
	call po,l0004h		;0fd5
	add a,c			;0fd8
	ld bc,l1010h		;0fd9
	ret pe			;0fdc
	inc bc			;0fdd
	nop			;0fde
	add a,c			;0fdf
	ld bc,l1010h		;0fe0
	call c,l0003h		;0fe3
l0fe6h:
	ret nz			;0fe6
	jr nz,l0fe9h		;0fe7
l0fe9h:
	ld b,b			;0fe9
	nop			;0fea
	nop			;0feb
	dec hl			;0fec
	add a,c			;0fed
	ld (bc),a		;0fee
	djnz $+18		;0fef
	ret po			;0ff1
	dec b			;0ff2
	nop			;0ff3
	add a,c			;0ff4
	rst 38h			;0ff5
	djnz l1008h		;0ff6
	call nc,sub_000eh	;0ff8
	add a,c			;0ffb
	ld bc,l1010h		;0ffc
l0fffh:
	ld l,b			;0fff
l1000h:
	ld c,000h		;1000
l1002h:
	ld b,b			;1002
	ld bc,l1010h		;1003
	nop			;1006
	nop			;1007
l1008h:
	inc bc			;1008
l1009h:
	add a,c			;1009
	ld bc,l1010h		;100a
	or b			;100d
	rrca			;100e
	nop			;100f
l1010h:
	add a,c			;1010
	ld bc,l0202h		;1011
	ld d,h			;1014
	ld a,(bc)		;1015
	nop			;1016
	add a,c			;1017
	ld bc,l1010h		;1018
	ret nc			;101b
	ld a,(bc)		;101c
	nop			;101d
	add a,c			;101e
	ld bc,l1010h		;101f
	ret pe			;1022
	ex af,af'		;1023
	nop			;1024
	ret nz			;1025
	rst 38h			;1026
	djnz l1049h		;1027
	nop			;1029
	nop			;102a
	nop			;102b
	nop			;102c
	nop			;102d
	nop			;102e
	nop			;102f
	nop			;1030
	nop			;1031
	nop			;1032
	add a,c			;1033
	ld bc,l0202h		;1034
	ld d,h			;1037
	ld a,(bc)		;1038
	nop			;1039
	ret nz			;103a
	rst 38h			;103b
	ex af,af'		;103c
	djnz l103fh		;103d
l103fh:
	nop			;103f
	nop			;1040
	ret nz			;1041
	rst 38h			;1042
	jr nz,l104dh		;1043
	nop			;1045
	nop			;1046
	nop			;1047
	add a,c			;1048
l1049h:
	ld bc,l1010h		;1049
	ret nc			;104c
l104dh:
	ex af,af'		;104d
	nop			;104e
	add a,c			;104f
	nop			;1050
	djnz l1063h		;1051
	ld b,h			;1053
	rrca			;1054
	nop			;1055
	add a,c			;1056
	ld bc,l1010h		;1057
	call po,l0006h		;105a
	ret nz			;105d
	jr nc,$+34		;105e
	jr nz,l1062h		;1060
l1062h:
	nop			;1062
l1063h:
	ld b,0c0h		;1063
	ld bc,l1010h		;1065
	nop			;1068
	nop			;1069
	ld bc,l01c0h		;106a
	djnz l107fh		;106d
	nop			;106f
	nop			;1070
	ld (bc),a		;1071
	add a,c			;1072
	ld bc,l1010h		;1073
	nop			;1076
	ld (bc),a		;1077
	scf			;1078
	add a,c			;1079
	ld bc,l1010h		;107a
	nop			;107d
	ex af,af'		;107e
l107fh:
	jr c,l1002h		;107f
	ld bc,l1010h		;1081
	nop			;1084
	ex af,af'		;1085
	jr c,l1009h		;1086
	ld bc,l1010h		;1088
	nop			;108b
	nop			;108c
	nop			;108d
	add a,c			;108e
	ld bc,l1010h		;108f
	nop			;1092
	nop			;1093
	ld b,081h		;1094
	inc bc			;1096
	djnz l10a9h		;1097
	ret nc			;1099
	add hl,bc		;109a
	nop			;109b
	add a,c			;109c
	ld bc,l1010h		;109d
	ld l,b			;10a0
	add hl,bc		;10a1
l10a2h:
	nop			;10a2
	add a,c			;10a3
	ld bc,l0202h		;10a4
	ld d,h			;10a7
l10a8h:
	inc bc			;10a8
l10a9h:
	nop			;10a9
	add a,c			;10aa
	nop			;10ab
	nop			;10ac
	nop			;10ad
	ld b,h			;10ae
	rrca			;10af
	nop			;10b0
	add a,c			;10b1
	ld bc,l0a10h		;10b2
	call pe,sub_000fh	;10b5
	add a,c			;10b8
	ld bc,l1010h		;10b9
	and h			;10bc
	inc b			;10bd
	nop			;10be
	add a,c			;10bf
	nop			;10c0
	nop			;10c1
	nop			;10c2
	ld b,h			;10c3
	rrca			;10c4
	nop			;10c5
	add a,c			;10c6
	ld bc,l1010h		;10c7
	call po,l0005h		;10ca
	add a,h			;10cd
	rst 38h			;10ce
	ex af,af'		;10cf
	djnz l10a2h		;10d0
	ld (bc),a		;10d2
	nop			;10d3
	ret nz			;10d4
	rst 38h			;10d5
	ld (bc),a		;10d6
	ex af,af'		;10d7
	nop			;10d8
	nop			;10d9
	nop			;10da
	ret nz			;10db
	rst 38h			;10dc
l10ddh:
	ex af,af'		;10dd
	ex af,af'		;10de
	nop			;10df
	nop			;10e0
	nop			;10e1
	ret nz			;10e2
	rst 38h			;10e3
	ld (bc),a		;10e4
	ex af,af'		;10e5
	nop			;10e6
	nop			;10e7
	nop			;10e8
	ret nz			;10e9
	rst 38h			;10ea
	ex af,af'		;10eb
	ex af,af'		;10ec
	nop			;10ed
	nop			;10ee
	nop			;10ef
	add a,c			;10f0
	djnz $+18		;10f1
	djnz l10ddh		;10f3
	inc bc			;10f5
	nop			;10f6
	add a,c			;10f7
	ld bc,l1010h		;10f8
	ret pe			;10fb
	ex af,af'		;10fc
	nop			;10fd
	add a,c			;10fe
	ld bc,l0a10h		;10ff
	call pe,sub_000fh	;1102
	add a,c			;1105
	ld bc,l0a10h		;1106
	call nz,sub_000bh	;1109
	ret nz			;110c
	ld bc,l0208h		;110d
	nop			;1110
	nop			;1111
	ld e,0cdh		;1112
	jr nc,l1167h		;1114
	jr z,$-3		;1116
	ret c			;1118
	ld hl,0e37dh		;1119
	inc (hl)		;111c
	jp 05113h		;111d
	ld a,(0e320h)		;1120
	and a			;1123
	ret z			;1124
	ld a,0f8h		;1125
	ld (0f004h),a		;1127
l112ah:
	call 05130h		;112a
	jr z,l112ah		;112d
	ret			;112f
	call 0413bh		;1130
	ld a,(0e37dh)		;1133
	ld hl,0bb72h		;1136
	call 04c32h		;1139
	jp nz,04157h		;113c
	ld hl,0e37dh		;113f
	inc (hl)		;1142
	ld a,c			;1143
	and 0f0h		;1144
	ld e,a			;1146
	ld a,(0f004h)		;1147
	ld d,a			;114a
	ld a,c			;114b
	and 00fh		;114c
	ld c,a			;114e
	call 05157h		;114f
	call 04157h		;1152
	xor a			;1155
	ret			;1156
	ld a,(0ea60h)		;1157
	or a			;115a
	ret nz			;115b
	ld a,(0e439h)		;115c
	or a			;115f
	ret nz			;1160
	ld a,(0e400h)		;1161
	cp 003h			;1164
	ret z			;1166
l1167h:
	ld a,c			;1167
	dec a			;1168
	jr nz,l1170h		;1169
	ld a,(0e36dh)		;116b
	or a			;116e
	ret nz			;116f
l1170h:
	ld hl,0ea60h		;1170
	ld (hl),c		;1173
	inc l			;1174
	ld (hl),e		;1175
	inc l			;1176
	ld (hl),d		;1177
	jp 04310h		;1178
	ld de,l0010h		;117b
	exx			;117e
	ld ix,0e900h		;117f
	ld de,0e2d8h		;1183
	ld b,00ah		;1186
l1188h:
	ld a,(ix+000h)		;1188
	and a			;118b
	jr z,l11a9h		;118c
	ld a,(ix+004h)		;118e
	ld (de),a		;1191
	inc e			;1192
	ld a,(ix+006h)		;1193
	ld (de),a		;1196
	inc e			;1197
	ld a,(ix+00bh)		;1198
	ld (de),a		;119b
	inc e			;119c
	ld a,(ix+00ch)		;119d
	ld (de),a		;11a0
	inc e			;11a1
	exx			;11a2
	add ix,de		;11a3
	exx			;11a5
	djnz l1188h		;11a6
	ret			;11a8
l11a9h:
	ld a,0e0h		;11a9
	ld (de),a		;11ab
	inc e			;11ac
	inc e			;11ad
	inc e			;11ae
	inc e			;11af
	jp 051a2h		;11b0
	ld a,(0e3aah)		;11b3
	or a			;11b6
	ret nz			;11b7
	call 04112h		;11b8
	call 051c1h		;11bb
	jp 04108h		;11be
	ld de,0e2a8h		;11c1
	ld b,00ch		;11c4
	ld a,0e0h		;11c6
l11c8h:
	ld (de),a		;11c8
	inc e			;11c9
	inc e			;11ca
	inc e			;11cb
	inc e			;11cc
	djnz l11c8h		;11cd
	ld ix,0e600h		;11cf
	ld de,0e2a8h		;11d3
	ld b,00ch		;11d6
l11d8h:
	push bc			;11d8
	ld a,(ix+000h)		;11d9
	or a			;11dc
	jr z,l11ffh		;11dd
	bit 7,(ix+00bh)		;11df
	jr z,l11ffh		;11e3
	cp 024h			;11e5
	jp z,0526ah		;11e7
	sub 029h		;11ea
	cp 005h			;11ec
	jr c,l120ah		;11ee
	sub 010h		;11f0
	cp 004h			;11f2
	jr c,l1272h		;11f4
	bit 6,(ix+00bh)		;11f6
	jr z,l127ah		;11fa
	call nz,052b8h		;11fc
l11ffh:
	exx			;11ff
	ld de,l0040h		;1200
	add ix,de		;1203
	exx			;1205
	pop bc			;1206
	djnz l11d8h		;1207
	ret			;1209
l120ah:
	push de			;120a
	call 05212h		;120b
	pop de			;120e
	jp 051ffh		;120f
	ld c,a			;1212
	ld a,(ix+006h)		;1213
	cp 0f8h			;1216
	ret nc			;1218
	ld a,c			;1219
	ld hl,05265h		;121a
	call 05ca6h		;121d
	ld c,a			;1220
	ld l,(ix+011h)		;1221
	ld h,(ix+012h)		;1224
	ld a,(0e201h)		;1227
	cp 003h			;122a
	jr z,l1242h		;122c
	sub 009h		;122e
	cp 003h			;1230
	jr c,l1242h		;1232
	ld (hl),c		;1234
	inc l			;1235
	inc c			;1236
	ld (hl),c		;1237
	ld de,l001fh		;1238
	add hl,de		;123b
	inc c			;123c
	ld (hl),c		;123d
	inc l			;123e
	inc c			;123f
	ld (hl),c		;1240
	ret			;1241
l1242h:
	ld b,048h		;1242
	ld de,l001fh		;1244
	ld a,(hl)		;1247
	sub e			;1248
	cp b			;1249
	jr c,l124dh		;124a
	ld (hl),c		;124c
l124dh:
	inc c			;124d
	inc l			;124e
	ld a,(hl)		;124f
	sub e			;1250
	cp b			;1251
	jr c,l1255h		;1252
	ld (hl),c		;1254
l1255h:
	inc c			;1255
	add hl,de		;1256
	ld a,(hl)		;1257
	sub e			;1258
	cp b			;1259
	jr c,l125dh		;125a
	ld (hl),c		;125c
l125dh:
	inc c			;125d
	inc l			;125e
	ld a,(hl)		;125f
	sub e			;1260
	cp b			;1261
	ret c			;1262
	ld (hl),c		;1263
	ret			;1264
	defb 0edh ;next byte illegal after ed	;1265
	rst 0			;1266
	and l			;1267
	and c			;1268
	and c			;1269
	push de			;126a
	call 04b8eh		;126b
	pop de			;126e
	jp 051ffh		;126f
l1272h:
	push de			;1272
	call 04ca3h		;1273
	pop de			;1276
	jp 051ffh		;1277
l127ah:
	ld a,(ix+00bh)		;127a
	and 03fh		;127d
	ld b,a			;127f
	jp z,051ffh		;1280
	ld a,(ix+004h)		;1283
	ld (de),a		;1286
	inc e			;1287
	ld a,(ix+006h)		;1288
	ld (de),a		;128b
	inc e			;128c
	ld a,(ix+030h)		;128d
	ld (de),a		;1290
	inc e			;1291
	ld a,(ix+031h)		;1292
	ld (de),a		;1295
	inc e			;1296
	dec b			;1297
	jp z,051ffh		;1298
	push ix			;129b
	pop hl			;129d
	ld a,034h		;129e
	add a,l			;12a0
	ld l,a			;12a1
	jr nc,l12a5h		;12a2
	inc h			;12a4
l12a5h:
	push bc			;12a5
	ld a,(hl)		;12a6
	ld (de),a		;12a7
	inc l			;12a8
	inc e			;12a9
	ld a,(hl)		;12aa
	ld (de),a		;12ab
	inc l			;12ac
	inc e			;12ad
	ldi			;12ae
	ldi			;12b0
	pop bc			;12b2
	djnz l12a5h		;12b3
	jp 051ffh		;12b5
	ld a,(ix+004h)		;12b8
	cp 0b8h			;12bb
	ret nc			;12bd
	ld a,(ix+006h)		;12be
	cp 0f8h			;12c1
	ret nc			;12c3
	push de			;12c4
	ld de,09da5h		;12c5
	ld a,(ix+032h)		;12c8
	call 04b60h		;12cb
	ex de,hl		;12ce
	ld e,(ix+011h)		;12cf
	ld d,(ix+012h)		;12d2
	ld b,(ix+013h)		;12d5
	ld c,(ix+006h)		;12d8
	xor a			;12db
	sub c			;12dc
	jr nz,l12e1h		;12dd
	ld a,0f8h		;12df
l12e1h:
	rra			;12e1
	rra			;12e2
	rra			;12e3
	and 01fh		;12e4
	ld c,(ix+014h)		;12e6
	cp c			;12e9
	jr nc,l12edh		;12ea
	ld c,a			;12ec
l12edh:
	push bc			;12ed
	ld a,c			;12ee
	ld b,000h		;12ef
	ldir			;12f1
	sub (ix+014h)		;12f3
	jr z,l12ffh		;12f6
	neg			;12f8
	add a,l			;12fa
	ld l,a			;12fb
	jr nc,l12ffh		;12fc
	inc h			;12fe
l12ffh:
	pop bc			;12ff
	ld a,020h		;1300
	sub c			;1302
	add a,e			;1303
	ld e,a			;1304
	jr nc,l1308h		;1305
	inc d			;1307
l1308h:
	djnz l12edh		;1308
	pop de			;130a
	ret			;130b
	call 05357h		;130c
	ld e,b			;130f
l1310h:
	ld a,h			;1310
	cp 0f0h			;1311
	ret nc			;1313
	ld b,e			;1314
	xor a			;1315
	ld d,l			;1316
l1317h:
	ld (hl),a		;1317
	inc l			;1318
	djnz l1317h		;1319
	ld l,d			;131b
	ld a,020h		;131c
	add a,l			;131e
	ld l,a			;131f
	jr nc,l1323h		;1320
	inc h			;1322
l1323h:
	dec c			;1323
	jr nz,l1310h		;1324
	ret			;1326
	push bc			;1327
	call 05357h		;1328
	pop af			;132b
	sub b			;132c
	exx			;132d
	ld c,a			;132e
	exx			;132f
	ld a,020h		;1330
	sub b			;1332
	exx			;1333
	ld d,a			;1334
	exx			;1335
	ld a,c			;1336
	ld c,b			;1337
	ld b,a			;1338
	ex de,hl		;1339
l133ah:
	ld a,d			;133a
	cp 0f0h			;133b
	ret nc			;133d
	push bc			;133e
	ld b,000h		;133f
	ldir			;1341
	pop bc			;1343
	exx			;1344
	ld a,c			;1345
	exx			;1346
	add a,l			;1347
	ld l,a			;1348
	jr nc,l134ch		;1349
	inc h			;134b
l134ch:
	exx			;134c
	ld a,d			;134d
	exx			;134e
	add a,e			;134f
	ld e,a			;1350
	jr nc,l1354h		;1351
	inc d			;1353
l1354h:
	djnz l133ah		;1354
	ret			;1356
	call 05c92h		;1357
	ld a,l			;135a
	and 01fh		;135b
	add a,b			;135d
	sub 020h		;135e
	ret c			;1360
	neg			;1361
	add a,b			;1363
	ld b,a			;1364
	ret			;1365
	ld hl,0e330h		;1366
	ld de,0e331h		;1369
	ld bc,l000ch		;136c
	ld (hl),000h		;136f
	ldir			;1371
	call 08060h		;1373
	ld a,(0e20bh)		;1376
	or a			;1379
	jr nz,l1382h		;137a
	ld a,(0e20dh)		;137c
	or a			;137f
	jr z,l1387h		;1380
l1382h:
	ld a,001h		;1382
	ld (0e330h),a		;1384
l1387h:
	ld hl,l10a8h		;1387
	ld bc,l0040h		;138a
	ld a,0a4h		;138d
	call l0056h		;138f
	ld hl,03ad4h		;1392
	call 04a1dh		;1395
	ld b,008h		;1398
	ld a,015h		;139a
l139ch:
	exx			;139c
	out (c),a		;139d
	inc a			;139f
	exx			;13a0
	djnz l139ch		;13a1
	ld hl,03ac1h		;13a3
	call 04a1dh		;13a6
	ld hl,0e334h		;13a9
	ld bc,00901h		;13ac
	ld a,(0e331h)		;13af
	dec a			;13b2
	ld d,a			;13b3
l13b4h:
	dec d			;13b4
	call 0542eh		;13b5
	inc hl			;13b8
	inc c			;13b9
	djnz l13b4h		;13ba
	ld a,(0e439h)		;13bc
	or a			;13bf
	ret nz			;13c0
	ld a,(0e20bh)		;13c1
	or a			;13c4
	ld a,001h		;13c5
	jr nz,l13f6h		;13c7
	ld de,0e330h		;13c9
	ld a,(de)		;13cc
	ld b,a			;13cd
	or a			;13ce
	jr z,l13f5h		;13cf
	ld de,0e333h		;13d1
	add a,e			;13d4
	ld e,a			;13d5
	ld a,(de)		;13d6
	ld c,a			;13d7
	cp 0ffh			;13d8
	jr z,l13f1h		;13da
	ld a,(0e20fh)		;13dc
	ld hl,05462h		;13df
	call 04b67h		;13e2
	ex de,hl		;13e5
	ld a,b			;13e6
	call 04b67h		;13e7
	ex de,hl		;13ea
	ld b,000h		;13eb
	add hl,bc		;13ed
	ld a,(hl)		;13ee
	jr l13f6h		;13ef
l13f1h:
	ld a,015h		;13f1
	jr l13f6h		;13f3
l13f5h:
	xor a			;13f5
l13f6h:
	ld hl,030a8h		;13f6
	ld (0f000h),hl		;13f9
	push af			;13fc
	call 0415bh		;13fd
	ld hl,(0f000h)		;1400
	call 04a1dh		;1403
	exx			;1406
	pop af			;1407
	ld b,a			;1408
	ld hl,09bd0h		;1409
	call 04b67h		;140c
	ex de,hl		;140f
	ld a,b			;1410
	dec a			;1411
	ld e,0ffh		;1412
	cp 014h			;1414
	jr c,l1419h		;1416
	inc e			;1418
l1419h:
	ld d,008h		;1419
l141bh:
	out (c),e		;141b
	nop			;141d
	ld b,006h		;141e
	outi			;1420
	jp nz,05420h		;1422
	nop			;1425
	out (c),e		;1426
	dec d			;1428
	jr nz,l141bh		;1429
	jp 04157h		;142b
	ld a,d			;142e
	or a			;142f
	jp m,05458h		;1430
	ld a,(hl)		;1433
	inc a			;1434
	jr nz,l1444h		;1435
	ld a,(0e330h)		;1437
	cp c			;143a
	ld a,00fh		;143b
	jr nz,l144eh		;143d
	ld a,01dh		;143f
	jp 0544eh		;1441
l1444h:
	ld a,(0e330h)		;1444
	cp c			;1447
	ld a,00bh		;1448
	jr nz,l144eh		;144a
	ld a,00dh		;144c
l144eh:
	exx			;144e
	out (c),a		;144f
	exx			;1451
	inc a			;1452
	exx			;1453
	out (c),a		;1454
	exx			;1456
	ret			;1457
	xor a			;1458
	exx			;1459
	out (c),a		;145a
	exx			;145c
	exx			;145d
	out (c),a		;145e
	exx			;1460
	ret			;1461
	ld (hl),b		;1462
	ld d,h			;1463
	ld a,h			;1464
	ld d,h			;1465
	adc a,d			;1466
	ld d,h			;1467
	adc a,d			;1468
	ld d,h			;1469
	adc a,d			;146a
	ld d,h			;146b
	adc a,d			;146c
	ld d,h			;146d
	sbc a,d			;146e
	ld d,h			;146f
	sbc a,d			;1470
	ld d,h			;1471
	xor (hl)		;1472
	ld d,h			;1473
	or l			;1474
	ld d,h			;1475
	cp c			;1476
	ld d,h			;1477
	ret nz			;1478
	ld d,h			;1479
	call nz,0c654h		;147a
	ld d,h			;147d
	xor (hl)		;147e
	ld d,h			;147f
	or l			;1480
	ld d,h			;1481
	cp c			;1482
	ld d,h			;1483
	cp h			;1484
	ld d,h			;1485
	ret nz			;1486
	ld d,h			;1487
	call nz,0c654h		;1488
	ld d,h			;148b
	xor (hl)		;148c
	ld d,h			;148d
	or l			;148e
	ld d,h			;148f
	cp c			;1490
	ld d,h			;1491
	cp h			;1492
	ld d,h			;1493
	cp (hl)			;1494
	ld d,h			;1495
	ret nz			;1496
	ld d,h			;1497
	call nz,0c654h		;1498
	ld d,h			;149b
	xor (hl)		;149c
	ld d,h			;149d
	or l			;149e
	ld d,h			;149f
	cp b			;14a0
	ld d,h			;14a1
	cp c			;14a2
	ld d,h			;14a3
	cp h			;14a4
	ld d,h			;14a5
	cp (hl)			;14a6
	ld d,h			;14a7
	ret nz			;14a8
	ld d,h			;14a9
	call nz,0c654h		;14aa
	ld d,h			;14ad
	ld (bc),a		;14ae
	ld (bc),a		;14af
	ld (bc),a		;14b0
	ld (bc),a		;14b1
	ld (bc),a		;14b2
	ld (bc),a		;14b3
	ld (bc),a		;14b4
	inc bc			;14b5
	inc b			;14b6
	dec b			;14b7
	ld b,007h		;14b8
	ex af,af'		;14ba
	add hl,bc		;14bb
	ld a,(bc)		;14bc
	dec bc			;14bd
	inc c			;14be
	dec c			;14bf
	ld c,00fh		;14c0
	djnz $+19		;14c2
	ld (de),a		;14c4
	inc de			;14c5
	inc d			;14c6
	ld a,b			;14c7
	call 053f6h		;14c8
	ld b,0a0h		;14cb
	call 054d2h		;14cd
	jr l14e6h		;14d0
	ld a,b			;14d2
	ld hl,l10a8h		;14d3
	ld bc,l0040h		;14d6
	jp l0056h		;14d9
	ld a,(0e1d5h)		;14dc
	dec a			;14df
	jr z,l14e6h		;14e0
	dec a			;14e2
	jr z,l1500h		;14e3
	ret			;14e5
l14e6h:
	ld de,0e43ah		;14e6
	ld hl,03adah		;14e9
	ld b,001h		;14ec
	call 05bf7h		;14ee
	xor a			;14f1
	ld (0e1d5h),a		;14f2
	ld a,(0e43ah)		;14f5
	cp 004h			;14f8
	ret nc			;14fa
	ld a,021h		;14fb
	jp 04ae4h		;14fd
l1500h:
	ld a,021h		;1500
	call 04ae4h		;1502
	ld a,(0e439h)		;1505
	sub 003h		;1508
	jr nz,l1514h		;150a
	call 0aa2fh		;150c
	call 0aaech		;150f
	jr l1534h		;1512
l1514h:
	dec a			;1514
	jr nz,l1534h		;1515
	ld hl,0e445h		;1517
	ld a,(hl)		;151a
	or a			;151b
	jr z,l1525h		;151c
	ld (hl),000h		;151e
	call 07f98h		;1520
	jr l1531h		;1523
l1525h:
	ld a,(0e401h)		;1525
	or a			;1528
	ld a,001h		;1529
	jr z,l152eh		;152b
	inc a			;152d
l152eh:
	ld (0e400h),a		;152e
l1531h:
	call 0435fh		;1531
l1534h:
	xor a			;1534
	ld (0e439h),a		;1535
	ld (0e1d5h),a		;1538
	jp 05387h		;153b
	ld a,(0e20fh)		;153e
	ld hl,0554fh		;1541
	call 0407ah		;1544
	ld l,(hl)		;1547
	ld h,0e3h		;1548
	ld (hl),000h		;154a
	jp 053a3h		;154c
	add hl,sp		;154f
	ld a,(03b3bh)		;1550
	dec sp			;1553
	dec sp			;1554
	inc a			;1555
	inc a			;1556
	ld e,b			;1557
	ld (hl),l		;1558
	ld b,b			;1559
	ld h,b			;155a
	sub b			;155b
	ld h,d			;155c
	ret po			;155d
	ld h,l			;155e
	ld l,b			;155f
	ld h,a			;1560
	add a,b			;1561
	ld l,c			;1562
	ld a,b			;1563
	ld l,e			;1564
	ld d,b			;1565
	ld l,a			;1566
	ld e,b			;1567
	ld (hl),l		;1568
	ret po			;1569
	ld h,l			;156a
	ret po			;156b
	ld h,l			;156c
	ret po			;156d
	ld h,l			;156e
	rlca			;156f
	ret c			;1570
l1571h:
	and (hl)		;1571
	rra			;1572
	xor b			;1573
	xor d			;1574
	rlca			;1575
	ld b,(hl)		;1576
l1577h:
	xor c			;1577
	ld (hl),b		;1578
	pop bc			;1579
	xor h			;157a
	rlca			;157b
	ld h,b			;157c
	xor d			;157d
	ld l,l			;157e
	and (hl)		;157f
	xor l			;1580
	rlca			;1581
	ld a,d			;1582
	xor d			;1583
	ret nz			;1584
	cp a			;1585
	xor l			;1586
	rlca			;1587
	rst 10h			;1588
	xor l			;1589
	and b			;158a
	xor h			;158b
	xor (hl)		;158c
	rlca			;158d
	ld l,h			;158e
	xor a			;158f
	rst 0			;1590
	ld e,l			;1591
	xor a			;1592
	rlca			;1593
	sub h			;1594
	xor d			;1595
	add a,09eh		;1596
	xor d			;1598
	nop			;1599
	rra			;159a
	ld b,(hl)		;159b
	add hl,sp		;159c
	djnz l15ceh		;159d
	ld d,(hl)		;159f
	add hl,sp		;15a0
	rla			;15a1
	ld (hl),b		;15a2
	add a,a			;15a3
	add hl,sp		;15a4
	rla			;15a5
	nop			;15a6
	ld b,07bh		;15a7
	xor a			;15a9
	ld b,b			;15aa
	sub d			;15ab
	or c			;15ac
	ld b,095h		;15ad
	xor a			;15af
	ld c,(hl)		;15b0
	sub a			;15b1
	or c			;15b2
	ld b,0cbh		;15b3
	xor a			;15b5
	ld e,(hl)		;15b6
	rst 8			;15b7
	or c			;15b8
	ld b,04ah		;15b9
	or b			;15bb
	ld (hl),d		;15bc
	djnz l1571h		;15bd
	ld b,099h		;15bf
	or b			;15c1
	adc a,b			;15c2
	jr c,l1577h		;15c3
	ld b,0f6h		;15c5
	or b			;15c7
	sbc a,e			;15c8
	add a,b			;15c9
	or d			;15ca
	ld b,02fh		;15cb
	or c			;15cd
l15ceh:
	and l			;15ce
	or (hl)			;15cf
	or d			;15d0
	ld b,02fh		;15d1
	or c			;15d3
	cp e			;15d4
	ld d,0b3h		;15d5
	ld b,0f6h		;15d7
	or b			;15d9
	ret nc			;15da
	halt			;15db
	or e			;15dc
	nop			;15dd
	ld b,b			;15de
	ld c,d			;15df
	inc (hl)		;15e0
	inc b			;15e1
	ld c,(hl)		;15e2
	ld d,(hl)		;15e3
	inc (hl)		;15e4
	ex af,af'		;15e5
	ld e,(hl)		;15e6
	ld (hl),b		;15e7
	ld (hl),h		;15e8
	ld h,d			;15e9
	ld (hl),c		;15ea
	ld (hl),h		;15eb
	ld (hl),d		;15ec
	add a,e			;15ed
	inc (hl)		;15ee
	dec b			;15ef
	adc a,b			;15f0
	sub (hl)		;15f1
	inc (hl)		;15f2
	dec b			;15f3
	sbc a,e			;15f4
	and e			;15f5
	or h			;15f6
	or l			;15f7
	cp c			;15f8
	ld (hl),h		;15f9
	set 1,a			;15fa
	ld (hl),h		;15fc
	ret nc			;15fd
	ret c			;15fe
	or h			;15ff
	nop			;1600
	ld hl,0e1c3h		;1601
	inc (hl)		;1604
	ld hl,05a3eh		;1605
	ld bc,(0e1c0h)		;1608
	ld a,c			;160c
	cp 003h			;160d
	jr nc,l1612h		;160f
	push hl			;1611
l1612h:
	call 04084h		;1612
	dec hl			;1615
	ld d,(hl)		;1616
	ld a,l			;1617
	ld d,(hl)		;1618
	sbc a,c			;1619
	ld d,(hl)		;161a
	daa			;161b
	ld d,a			;161c
	adc a,d			;161d
	ld d,a			;161e
	in a,(057h)		;161f
	rla			;1621
	ld e,b			;1622
	ld b,d			;1623
	ld e,b			;1624
	rst 8			;1625
	ld e,b			;1626
	defb 0fdh,058h,055h ;illegal sequence	;1627
	ld e,c			;162a
	djnz l163ah		;162b
	ld a,(0e1c3h)		;162d
	rra			;1630
	ret nc			;1631
	call 0626bh		;1632
	ret nz			;1635
	xor a			;1636
	jp 0571fh		;1637
l163ah:
	djnz l1651h		;163a
	ld hl,0e1c4h		;163c
	dec (hl)		;163f
	ret nz			;1640
	call 04133h		;1641
	call 0615bh		;1644
	call 0b64fh		;1647
	call 04108h		;164a
	xor a			;164d
	jp 0571fh		;164e
l1651h:
	djnz l1668h		;1651
	call 04133h		;1653
	call 0b737h		;1656
	call 04108h		;1659
	ld a,(0e1d7h)		;165c
	and a			;165f
	ret nz			;1660
	xor a			;1661
	call 05775h		;1662
	jp 05722h		;1665
l1668h:
	call 05d0ch		;1668
	call 04a10h		;166b
	call 04137h		;166e
	call 0b6cdh		;1671
	call 04157h		;1674
	call 06237h		;1677
	jp 05722h		;167a
	djnz l1692h		;167d
	call 04133h		;167f
	call 0b77ch		;1682
	call 04108h		;1685
	ld hl,0e1c4h		;1688
	dec (hl)		;168b
	jp nz,061ech		;168c
	jp 05773h		;168f
l1692h:
	call 0621eh		;1692
	xor a			;1695
	jp 0571fh		;1696
	djnz l16abh		;1699
	call 04133h		;169b
	call 0a000h		;169e
	call 04108h		;16a1
	ld a,(0e1d7h)		;16a4
	and a			;16a7
	ret nz			;16a8
	jr l1722h		;16a9
l16abh:
	djnz l16bch		;16ab
	call 04133h		;16ad
	call 0615bh		;16b0
	call 0b64fh		;16b3
	call 04108h		;16b6
	jp 05722h		;16b9
l16bch:
	djnz l16d0h		;16bc
	call 04133h		;16be
	call 0b737h		;16c1
	call 04108h		;16c4
	ld a,(0e1d7h)		;16c7
	and a			;16ca
	ret nz			;16cb
	xor a			;16cc
	jp 0571fh		;16cd
l16d0h:
	djnz l16e1h		;16d0
	ld hl,0e1c4h		;16d2
	dec (hl)		;16d5
	jr z,l171dh		;16d6
	call 04133h		;16d8
	call 0b77ch		;16db
	jp 04108h		;16de
l16e1h:
	djnz l16f6h		;16e1
	ld a,043h		;16e3
	call 04ae4h		;16e5
	call 04a10h		;16e8
	call 06210h		;16eb
	call 05a95h		;16ee
	call 05ef6h		;16f1
	jr l1722h		;16f4
l16f6h:
	djnz l1711h		;16f6
	call 05f2ah		;16f8
	ld a,(0e1d3h)		;16fb
	or a			;16fe
	ret nz			;16ff
	ld a,043h		;1700
	call 04ae4h		;1702
	xor a			;1705
	ld (0e1c0h),a		;1706
	ld a,020h		;1709
	ld (0e1c4h),a		;170b
	jp 0577ch		;170e
l1711h:
	call 04a10h		;1711
	call 04133h		;1714
	call 0a643h		;1717
	call 04108h		;171a
l171dh:
	ld a,020h		;171d
l171fh:
	ld (0e1c4h),a		;171f
l1722h:
	ld hl,0e1c1h		;1722
	inc (hl)		;1725
	ret			;1726
	djnz l1744h		;1727
	ld hl,0e1c4h		;1729
	dec (hl)		;172c
	jr z,l1722h		;172d
	ld a,(0e1c2h)		;172f
	bit 5,a			;1732
	ld de,0b260h		;1734
	jr z,l173ch		;1737
	ld de,0b26ah		;1739
l173ch:
	bit 2,(hl)		;173c
	jp z,04a6bh		;173e
	jp 04a82h		;1741
l1744h:
	djnz l1754h		;1744
	call 04a10h		;1746
	call 04133h		;1749
	call 0bfaah		;174c
	call 04108h		;174f
	jr l1722h		;1752
l1754h:
	djnz l1766h		;1754
	call 04133h		;1756
	call 0be09h		;1759
	call 04108h		;175c
	ld a,(0e1d7h)		;175f
	and a			;1762
	ret nz			;1763
	jr l1722h		;1764
l1766h:
	djnz l1781h		;1766
	ld a,(0e0a0h)		;1768
	or a			;176b
	ret nz			;176c
	call 04a10h		;176d
	call 05a9dh		;1770
	ld a,020h		;1773
	ld (0e1c4h),a		;1775
l1778h:
	ld hl,0e1c0h		;1778
	inc (hl)		;177b
	xor a			;177c
	ld (0e1c1h),a		;177d
	ret			;1780
l1781h:
	ld a,03eh		;1781
	call 04ae4h		;1783
	ld a,050h		;1786
	jr l171fh		;1788
	djnz l17a1h		;178a
	ld hl,0e1c4h		;178c
	dec (hl)		;178f
	ret nz			;1790
	ld de,0b278h		;1791
	call 04a82h		;1794
	call 060fdh		;1797
	ld a,001h		;179a
	ld (0e1d3h),a		;179c
	jr l1778h		;179f
l17a1h:
	call 05adah		;17a1
	ret p			;17a4
	ld hl,0e200h		;17a5
	ld a,(hl)		;17a8
	sub 001h		;17a9
	daa			;17ab
	ld (hl),a		;17ac
	call 058c3h		;17ad
	call 057ceh		;17b0
	call 05ba3h		;17b3
	call 05366h		;17b6
	call 058c3h		;17b9
	ld a,(0e1c2h)		;17bc
	and 020h		;17bf
	ld a,010h		;17c1
	jp z,0571fh		;17c3
	call 05a82h		;17c6
	ld a,078h		;17c9
	jp 0571fh		;17cb
	call 04112h		;17ce
	ld ix,06048h		;17d1
	call 04595h		;17d5
	jp 04108h		;17d8
	call 0416dh		;17db
	ld a,(0e1e6h)		;17de
	and a			;17e1
	ld a,00ah		;17e2
	jp nz,05706h		;17e4
	ld a,(0e1d3h)		;17e7
	or a			;17ea
	jp z,05773h		;17eb
	ld a,(0e1dah)		;17ee
	and a			;17f1
	ld a,008h		;17f2
	jp nz,05706h		;17f4
	ld a,(0e400h)		;17f7
	dec a			;17fa
	ret m			;17fb
	ld a,(0e3d0h)		;17fc
	or a			;17ff
l1800h:
	ret nz			;1800
	ld a,(0e3c0h)		;1801
	or a			;1804
	ret nz			;1805
	call 05928h		;1806
	ret nc			;1809
	ld a,0f3h		;180a
	call 04ae4h		;180c
	call 0bd6dh		;180f
	ld a,009h		;1812
	jp 05706h		;1814
	ld a,(0e200h)		;1817
	or a			;181a
	jr z,l183ah		;181b
	ld a,(0e240h)		;181d
	or a			;1820
	jr z,l1835h		;1821
l1823h:
	ld hl,0e200h		;1823
	ld de,0e240h		;1826
	ld b,040h		;1829
	call 05c88h		;182b
	ld hl,0e1c2h		;182e
	ld a,(hl)		;1831
	xor 080h		;1832
	ld (hl),a		;1834
l1835h:
	ld a,004h		;1835
	jp 05706h		;1837
l183ah:
	ld a,042h		;183a
	call 04ae4h		;183c
	jp 05773h		;183f
	djnz l1896h		;1842
	call 05928h		;1844
	jr nc,l1851h		;1847
	ld a,0f3h		;1849
	call 04ae4h		;184b
	jp 05722h		;184e
l1851h:
	call 05942h		;1851
	ld a,(0e078h)		;1854
	or a			;1857
	ret nz			;1858
	ld a,(0e20ch)		;1859
	and a			;185c
	jr z,l1880h		;185d
	ld hl,0e1fah		;185f
	ld a,(0e1c2h)		;1862
	and 080h		;1865
	jr z,l186bh		;1867
	ld l,0f5h		;1869
l186bh:
	xor a			;186b
	ld (hl),a		;186c
	inc l			;186d
	ld (hl),a		;186e
	inc l			;186f
	ld (hl),a		;1870
	inc l			;1871
	ld (hl),a		;1872
	inc l			;1873
	ld (hl),a		;1874
	ld (0e20bh),a		;1875
	ld (0e20dh),a		;1878
	ld a,003h		;187b
	ld (0e200h),a		;187d
l1880h:
	ld a,(0e240h)		;1880
	or a			;1883
	jr nz,l1823h		;1884
	ld a,(0e20ch)		;1886
	and a			;1889
	jr nz,l1835h		;188a
	ld hl,0e1c2h		;188c
	ld a,(hl)		;188f
	and 0bfh		;1890
	ld (hl),a		;1892
	jp 05700h		;1893
l1896h:
	djnz l18a6h		;1896
	call 05928h		;1898
	ret nc			;189b
	ld a,0f2h		;189c
	call 04ae4h		;189e
	ld a,001h		;18a1
	jp 0577dh		;18a3
l18a6h:
	call 05adah		;18a6
	ret p			;18a9
	call 058c3h		;18aa
	ld de,0b28eh		;18ad
	call 04a6bh		;18b0
	call 05a82h		;18b3
	call 05c12h		;18b6
	call 05ba3h		;18b9
	xor a			;18bc
	ld (0e20ch),a		;18bd
l18c0h:
	jp 0571fh		;18c0
	call 04137h		;18c3
	call 0b736h		;18c6
	call 0b6f0h		;18c9
	jp 04157h		;18cc
	xor a			;18cf
	ld (0e1dah),a		;18d0
	call 07c1ch		;18d3
	call 05ba3h		;18d6
	call 05387h		;18d9
	ld hl,0e400h		;18dc
	ld a,(hl)		;18df
	cp 003h			;18e0
	jr nz,l18f8h		;18e2
	inc l			;18e4
	ld a,(hl)		;18e5
	or a			;18e6
	ld b,001h		;18e7
	jr z,l18ech		;18e9
	inc b			;18eb
l18ech:
	dec l			;18ec
	ld (hl),b		;18ed
	xor a			;18ee
	ld (0e439h),a		;18ef
	ld (0e1d5h),a		;18f2
	call 0435fh		;18f5
l18f8h:
	ld a,005h		;18f8
	jp 05706h		;18fa
	call 05928h		;18fd
	jr c,l191eh		;1900
	call 0bd82h		;1902
	ld a,(0e400h)		;1905
	and a			;1908
	jp m,077b6h		;1909
	call 0a78ch		;190c
	call 0aa53h		;190f
	call 04137h		;1912
	call 0a000h		;1915
	call 04157h		;1918
	jp 077b6h		;191b
l191eh:
	ld a,0f2h		;191e
	call 04ae4h		;1920
	ld a,005h		;1923
	jp 05706h		;1925
	ld a,(0e1c2h)		;1928
	and 040h		;192b
	ret z			;192d
	ld a,006h		;192e
	call sub_0141h		;1930
	cpl			;1933
	and 020h		;1934
	ld hl,0e30ah		;1936
	ld c,(hl)		;1939
	ld (hl),a		;193a
	xor c			;193b
	ret z			;193c
	bit 5,(hl)		;193d
	ret z			;193f
	scf			;1940
	ret			;1941
	ld a,007h		;1942
	call sub_0141h		;1944
	bit 1,a			;1947
	ret nz			;1949
	ld a,001h		;194a
	ld (0e20ch),a		;194c
	ld de,0b29bh		;194f
	jp 04a82h		;1952
	djnz l1961h		;1955
	ld a,(0e0a0h)		;1957
	or a			;195a
	ret nz			;195b
	ld a,030h		;195c
	jp 0571fh		;195e
l1961h:
	djnz l1981h		;1961
	ld hl,0e1c4h		;1963
	dec (hl)		;1966
	ret nz			;1967
	call 04a10h		;1968
	ld de,0b2b5h		;196b
	call 04a6bh		;196e
	xor a			;1971
	ld (0e22dh),a		;1972
	ld (0e22eh),a		;1975
	ld hl,l0000h		;1978
	ld (0f0f7h),hl		;197b
	jp 0571fh		;197e
l1981h:
	djnz l19ceh		;1981
	call 05a22h		;1983
	ld a,(0e22dh)		;1986
	or a			;1989
	ld de,0b2d0h		;198a
	call nz,04a6bh		;198d
	ld a,(0e22dh)		;1990
	and a			;1993
	jr z,l19b2h		;1994
	call 05a30h		;1996
	ld a,(0e22eh)		;1999
	or a			;199c
	ret z			;199d
	ld de,0b2d0h		;199e
	call 04a82h		;19a1
	ld a,078h		;19a4
	ld (0e1c4h),a		;19a6
	ld de,0b2f4h		;19a9
	call 04a6bh		;19ac
	jp 0571fh		;19af
l19b2h:
	ld de,00258h		;19b2
	call 05d89h		;19b5
	ret c			;19b8
	ld de,0b2c0h		;19b9
	call 04a82h		;19bc
	ld de,0b2e1h		;19bf
	call 04a6bh		;19c2
	xor a			;19c5
	ld (0e1c4h),a		;19c6
	ld a,005h		;19c9
	jp 0577dh		;19cb
l19ceh:
	djnz l19edh		;19ce
	ld hl,0e1c4h		;19d0
	dec (hl)		;19d3
	ret nz			;19d4
	ld a,04ah		;19d5
	ld (0e404h),a		;19d7
	ld a,050h		;19da
	ld (0e406h),a		;19dc
	call 0aa2fh		;19df
	call 04c76h		;19e2
	call 04a10h		;19e5
	ld a,008h		;19e8
	jp 05706h		;19ea
l19edh:
	djnz l1a05h		;19ed
	ld hl,0e1c4h		;19ef
	dec (hl)		;19f2
	ret nz			;19f3
	call 04a10h		;19f4
	xor a			;19f7
	ld (0e200h),a		;19f8
	ld a,(0e240h)		;19fb
	or a			;19fe
	jp nz,05823h		;19ff
	jp 0588ch		;1a02
l1a05h:
	call 04117h		;1a05
	call 04133h		;1a08
	call 0b994h		;1a0b
	call 04108h		;1a0e
	ld a,(0e1e6h)		;1a11
	or a			;1a14
	ret nz			;1a15
	ld a,(0e1d6h)		;1a16
	or a			;1a19
	jp nz,0571dh		;1a1a
	ld a,008h		;1a1d
	jp 05706h		;1a1f
	ld a,007h		;1a22
	call sub_0141h		;1a24
	bit 1,a			;1a27
	ret nz			;1a29
	ld a,001h		;1a2a
	ld (0e22dh),a		;1a2c
	ret			;1a2f
	ld a,008h		;1a30
	call sub_0141h		;1a32
	bit 0,a			;1a35
	ret nz			;1a37
	ld a,001h		;1a38
	ld (0e22eh),a		;1a3a
	ret			;1a3d
	call 05d37h		;1a3e
	ld hl,0e1d1h		;1a41
	call 05d30h		;1a44
	or a			;1a47
	ret z			;1a48
	ld hl,0e1c4h		;1a49
	ld (hl),000h		;1a4c
	ld hl,0e1c0h		;1a4e
	ld de,0e1d2h		;1a51
	ld b,(hl)		;1a54
	djnz l1a70h		;1a55
	and 030h		;1a57
	jr z,l1a7dh		;1a59
	ld a,(de)		;1a5b
	or a			;1a5c
	ld a,040h		;1a5d
	jr z,l1a63h		;1a5f
	ld a,060h		;1a61
l1a63h:
	ld (0e1c2h),a		;1a63
	ld (hl),003h		;1a66
	inc hl			;1a68
	ld c,000h		;1a69
	ld (hl),c		;1a6b
	dec c			;1a6c
	jp 061f6h		;1a6d
l1a70h:
	ld (hl),001h		;1a70
	inc hl			;1a72
	xor a			;1a73
	ld (hl),a		;1a74
	ld (0e1d7h),a		;1a75
	ld a,043h		;1a78
	jp 04ae4h		;1a7a
l1a7dh:
	ld a,(de)		;1a7d
	xor 001h		;1a7e
	ld (de),a		;1a80
	ret			;1a81
	ld a,(0e1c2h)		;1a82
	bit 5,a			;1a85
	ret z			;1a87
	ld de,0b278h		;1a88
	and 080h		;1a8b
	jr z,l1a92h		;1a8d
	ld de,0b283h		;1a8f
l1a92h:
	jp 04a6bh		;1a92
	ld hl,0e200h		;1a95
	ld bc,l0e20h		;1a98
	jr l1aa3h		;1a9b
	ld hl,0e1f5h		;1a9d
	ld bc,l0e2bh		;1aa0
l1aa3h:
	ld e,l			;1aa3
	ld d,h			;1aa4
	inc de			;1aa5
	ld (hl),000h		;1aa6
	ldir			;1aa8
	xor a			;1aaa
	ld (0e1dah),a		;1aab
	ld (0e1dch),a		;1aae
	ld hl,05ad8h		;1ab1
	ld de,0e200h		;1ab4
	ld bc,l0002h		;1ab7
	ldir			;1aba
	ld hl,l0010h		;1abc
	ld (0e207h),hl		;1abf
	xor a			;1ac2
	ld (0e209h),a		;1ac3
	ld a,(0e1c2h)		;1ac6
	and 020h		;1ac9
	ret z			;1acb
	ld hl,0e200h		;1acc
	ld de,0e240h		;1acf
	ld bc,l0040h		;1ad2
	ldir			;1ad5
	ret			;1ad7
	inc bc			;1ad8
	ld bc,0c421h		;1ad9
	pop hl			;1adc
	dec (hl)		;1add
	ret m			;1ade
	ld a,(hl)		;1adf
	ld h,038h		;1ae0
	xor 01fh		;1ae2
	ld l,a			;1ae4
	ld b,016h		;1ae5
	ld a,(0e1c0h)		;1ae7
	cp 002h			;1aea
	jr nz,l1af0h		;1aec
	ld b,018h		;1aee
l1af0h:
	xor a			;1af0
	ld de,l0020h		;1af1
l1af4h:
	call 0004dh		;1af4
	add hl,de		;1af7
	djnz l1af4h		;1af8
	ld hl,03b00h		;1afa
	ld a,0d0h		;1afd
	call 0004dh		;1aff
	xor a			;1b02
	ret			;1b03
	ld a,(0e1c2h)		;1b04
	add a,a			;1b07
	ret p			;1b08
	ld hl,0e1fbh		;1b09
	jr nc,l1b10h		;1b0c
	ld l,0f6h		;1b0e
l1b10h:
	ld a,(hl)		;1b10
	add a,e			;1b11
	daa			;1b12
	ld (hl),a		;1b13
	inc l			;1b14
	ld a,(hl)		;1b15
	adc a,d			;1b16
	daa			;1b17
	ld (hl),a		;1b18
	inc hl			;1b19
	ld a,(hl)		;1b1a
	adc a,000h		;1b1b
	daa			;1b1d
	ld (hl),a		;1b1e
	inc hl			;1b1f
	ld a,(hl)		;1b20
	adc a,000h		;1b21
	daa			;1b23
	ld (hl),a		;1b24
	jr nc,l1b40h		;1b25
	ld a,099h		;1b27
	ld (hl),a		;1b29
	dec l			;1b2a
	ld (hl),a		;1b2b
	dec l			;1b2c
	ld (hl),a		;1b2d
	dec l			;1b2e
	ld (hl),a		;1b2f
	ld a,(0f0f5h)		;1b30
	bit 1,a			;1b33
	ret nz			;1b35
	ld hl,09999h		;1b36
	ld (0e1f1h),hl		;1b39
	ld (0e1f3h),hl		;1b3c
	ret			;1b3f
l1b40h:
	ex de,hl		;1b40
	ld hl,0e209h		;1b41
	ld a,(de)		;1b44
	cp (hl)			;1b45
	jr c,l1b68h		;1b46
	dec e			;1b48
	dec l			;1b49
	ld a,(de)		;1b4a
	cp (hl)			;1b4b
	jr c,l1b68h		;1b4c
	dec e			;1b4e
	dec l			;1b4f
	ld a,(de)		;1b50
	cp (hl)			;1b51
	jr c,l1b68h		;1b52
	ld a,(hl)		;1b54
	add a,010h		;1b55
	daa			;1b57
	ld (hl),a		;1b58
	inc l			;1b59
	ld a,(hl)		;1b5a
	adc a,000h		;1b5b
	daa			;1b5d
	ld (hl),a		;1b5e
	inc l			;1b5f
	ld a,(hl)		;1b60
	adc a,000h		;1b61
	daa			;1b63
	ld (hl),a		;1b64
	call 05b92h		;1b65
l1b68h:
	ld a,(0f0f5h)		;1b68
	bit 1,a			;1b6b
	ret nz			;1b6d
	ld a,(0e1c2h)		;1b6e
	add a,a			;1b71
	ld hl,0e1feh		;1b72
	jr nc,l1b79h		;1b75
	ld l,0f9h		;1b77
l1b79h:
	ld b,004h		;1b79
	ld de,0e1f4h		;1b7b
	ld c,l			;1b7e
l1b7fh:
	ld a,(de)		;1b7f
	sub (hl)		;1b80
	jr c,l1b89h		;1b81
	ret nz			;1b83
	dec l			;1b84
	dec e			;1b85
	djnz l1b7fh		;1b86
	ret			;1b88
l1b89h:
	ld l,c			;1b89
	ld bc,l0004h		;1b8a
	ld e,0f4h		;1b8d
	lddr			;1b8f
	ret			;1b91
	ld hl,0e200h		;1b92
	ld a,(hl)		;1b95
	add a,001h		;1b96
	daa			;1b98
	ret c			;1b99
	ld (hl),a		;1b9a
	ld a,00ch		;1b9b
	call 04ae4h		;1b9d
	jp 05bddh		;1ba0
	ld de,0b243h		;1ba3
	call 04a6bh		;1ba6
	ld a,(0e1c2h)		;1ba9
	ld de,0b256h		;1bac
	add a,a			;1baf
	jr nc,l1bb5h		;1bb0
	ld de,0b25bh		;1bb2
l1bb5h:
	call 04a6bh		;1bb5
	call 05bddh		;1bb8
	ld de,0e1f4h		;1bbb
	ld hl,03af6h		;1bbe
	call 05bd2h		;1bc1
	ld a,(0e1c2h)		;1bc4
	ld hl,03ae9h		;1bc7
	ld de,0e1feh		;1bca
	add a,a			;1bcd
	jr nc,l1bd2h		;1bce
	ld e,0f9h		;1bd0
l1bd2h:
	ld b,005h		;1bd2
	call 04a1dh		;1bd4
	exx			;1bd7
	ld a,c			;1bd8
	exx			;1bd9
	ld c,a			;1bda
	jr l1c08h		;1bdb
	ld hl,03ae3h		;1bdd
	ld de,0e200h		;1be0
	ld a,(de)		;1be3
	ld b,001h		;1be4
	and 0f0h		;1be6
	jr nz,l1bf7h		;1be8
	call 04a1dh		;1bea
	exx			;1bed
	ld a,c			;1bee
	exx			;1bef
	ld c,a			;1bf0
	xor a			;1bf1
	out (c),a		;1bf2
	inc hl			;1bf4
	jr l1c08h		;1bf5
l1bf7h:
	call 04a1dh		;1bf7
	exx			;1bfa
	ld a,c			;1bfb
	exx			;1bfc
	ld c,a			;1bfd
l1bfeh:
	ld a,(de)		;1bfe
	rra			;1bff
	rra			;1c00
	rra			;1c01
	rra			;1c02
	and 00fh		;1c03
	inc a			;1c05
	out (c),a		;1c06
l1c08h:
	ld a,(de)		;1c08
	and 00fh		;1c09
	inc a			;1c0b
	out (c),a		;1c0c
	dec de			;1c0e
	djnz l1bfeh		;1c0f
	ret			;1c11
	ld a,(0f0f5h)		;1c12
	or a			;1c15
	ret nz			;1c16
	ld de,0b2aah		;1c17
	call 04a6bh		;1c1a
	ld de,0e1f4h		;1c1d
	ld hl,03a2bh		;1c20
	ld b,005h		;1c23
	call 05bf7h		;1c25
	call 0413bh		;1c28
	ld hl,0e1f1h		;1c2b
	ld bc,00400h		;1c2e
l1c31h:
	ld a,(hl)		;1c31
	and 00fh		;1c32
	add a,c			;1c34
	daa			;1c35
	ld c,a			;1c36
	ld a,(hl)		;1c37
	rra			;1c38
	rra			;1c39
	rra			;1c3a
	rra			;1c3b
	and 00fh		;1c3c
	add a,c			;1c3e
	daa			;1c3f
	ld c,a			;1c40
	inc hl			;1c41
	djnz l1c31h		;1c42
	ld de,0f000h		;1c44
	ld (de),a		;1c47
	ld a,(0e1c3h)		;1c48
	and 077h		;1c4b
	inc e			;1c4d
	ld (de),a		;1c4e
	and 007h		;1c4f
	add a,a			;1c51
	ld b,a			;1c52
	add a,a			;1c53
	add a,a			;1c54
	add a,b			;1c55
	ld hl,0bbb9h		;1c56
	call 0407ah		;1c59
	dec e			;1c5c
	ld a,(de)		;1c5d
	ld b,a			;1c5e
	and 00fh		;1c5f
	ld e,l			;1c61
	ld d,h			;1c62
	call 0407ah		;1c63
	ld c,(hl)		;1c66
	ld a,b			;1c67
	rra			;1c68
	rra			;1c69
	rra			;1c6a
	rra			;1c6b
	and 00fh		;1c6c
	call 0407fh		;1c6e
	ld a,(de)		;1c71
	rla			;1c72
	rla			;1c73
	rla			;1c74
	rla			;1c75
	and 0f0h		;1c76
	or c			;1c78
	ld de,0f002h		;1c79
	ld (de),a		;1c7c
	ld hl,03a6eh		;1c7d
	ld b,002h		;1c80
	call 05bf7h		;1c82
	jp 04157h		;1c85
l1c88h:
	ld c,(hl)		;1c88
	ld a,(de)		;1c89
	ld (hl),a		;1c8a
	ld a,c			;1c8b
	ld (de),a		;1c8c
	inc hl			;1c8d
	inc de			;1c8e
	djnz l1c88h		;1c8f
	ret			;1c91
	ld a,l			;1c92
	rra			;1c93
	rra			;1c94
	rra			;1c95
	rra			;1c96
	rr h			;1c97
	rra			;1c99
	rr h			;1c9a
	rra			;1c9c
	rr h			;1c9d
	ld l,h			;1c9f
	and 003h		;1ca0
	add a,0edh		;1ca2
	ld h,a			;1ca4
	ret			;1ca5
	add a,l			;1ca6
	ld l,a			;1ca7
	jr nc,l1cabh		;1ca8
	inc h			;1caa
l1cabh:
	ld a,(hl)		;1cab
	ret			;1cac
	ld a,e			;1cad
	cpl			;1cae
	ld e,a			;1caf
	ld a,d			;1cb0
	cpl			;1cb1
	ld d,a			;1cb2
	inc de			;1cb3
	ret			;1cb4
	ld a,l			;1cb5
	cpl			;1cb6
	ld l,a			;1cb7
	ld a,h			;1cb8
	cpl			;1cb9
	ld h,a			;1cba
	inc hl			;1cbb
	ret			;1cbc
	ld a,0ffh		;1cbd
	ld hl,0e1aeh		;1cbf
	ld (hl),a		;1cc2
	inc hl			;1cc3
	ld (hl),a		;1cc4
	inc hl			;1cc5
	ld de,0e1b1h		;1cc6
	ld (hl),001h		;1cc9
	ld bc,l0009h		;1ccb
	ldir			;1cce
	ld a,004h		;1cd0
	ld (07000h),a		;1cd2
	inc a			;1cd5
	ld (09000h),a		;1cd6
	inc a			;1cd9
	ld (0b000h),a		;1cda
	call 071aeh		;1cdd
	ld a,(0f0f1h)		;1ce0
	ld (07000h),a		;1ce3
	ld a,(0f0f2h)		;1ce6
	ld (09000h),a		;1ce9
	ld a,(0f0f3h)		;1cec
	ld (0b000h),a		;1cef
	ld a,0bfh		;1cf2
	ld (0e1a6h),a		;1cf4
	ld e,a			;1cf7
	ld a,007h		;1cf8
	call sub_0093h		;1cfa
	ld a,043h		;1cfd
	call 04ae4h		;1cff
	ld hl,l0000h		;1d02
	ld bc,04000h		;1d05
	xor a			;1d08
	call l0056h		;1d09
	ld hl,05d1dh		;1d0c
	ld d,008h		;1d0f
	ld c,000h		;1d11
	ld b,(hl)		;1d13
	call 00047h		;1d14
	inc hl			;1d17
	inc c			;1d18
	dec d			;1d19
	jp 0cb02h		;1d1a
	ld (bc),a		;1d1d
	jp po,07f0eh		;1d1e
	rlca			;1d21
	halt			;1d22
	inc bc			;1d23
	call po,0070eh		;1d24
	jp 04077h		;1d27
	call 05d40h		;1d2a
	ld hl,0e1c9h		;1d2d
	ld c,(hl)		;1d30
	ld (hl),a		;1d31
	xor c			;1d32
	and (hl)		;1d33
	dec hl			;1d34
	ld (hl),a		;1d35
	ret			;1d36
	ld e,08fh		;1d37
	call 05d72h		;1d39
	and 03fh		;1d3c
	jr l1d47h		;1d3e
	ld e,08fh		;1d40
	call 05d72h		;1d42
	and 03fh		;1d45
l1d47h:
	push af			;1d47
	ld a,004h		;1d48
	call sub_0141h		;1d4a
	cpl			;1d4d
	and 00ch		;1d4e
	ld e,a			;1d50
	jr z,l1d55h		;1d51
	ld e,020h		;1d53
l1d55h:
	ld a,008h		;1d55
	call sub_0141h		;1d57
	cpl			;1d5a
	rrca			;1d5b
	rrca			;1d5c
	ld b,a			;1d5d
	and 004h		;1d5e
	or e			;1d60
	ld c,a			;1d61
	ld a,b			;1d62
	rrca			;1d63
	rrca			;1d64
	ld b,a			;1d65
	and 018h		;1d66
	or c			;1d68
	ld c,a			;1d69
	ld a,b			;1d6a
	rrca			;1d6b
	and 003h		;1d6c
	or c			;1d6e
	pop bc			;1d6f
	or b			;1d70
	ret			;1d71
	ld a,00fh		;1d72
	call sub_0093h		;1d74
	ld a,00eh		;1d77
	di			;1d79
	call sub_0096h		;1d7a
	ei			;1d7d
	cpl			;1d7e
	ret			;1d7f
	call 04108h		;1d80
	call 0aa2fh		;1d83
	jp 04133h		;1d86
	ld hl,(0f0f7h)		;1d89
	rst 20h			;1d8c
	ret			;1d8d
	call 05da0h		;1d8e
	jp 069efh		;1d91
	call 05da0h		;1d94
l1d97h:
	call 04117h		;1d97
	call 04b43h		;1d9a
	jp 04133h		;1d9d
	call 04144h		;1da0
	ld ix,0b3d0h		;1da3
	call 04595h		;1da7
	xor a			;1daa
	ld (0f000h),a		;1dab
	ld ix,0b3eah		;1dae
	call 0454eh		;1db2
	ld a,001h		;1db5
	ld (0f000h),a		;1db7
	ld ix,0b3fbh		;1dba
	call 0454eh		;1dbe
	call 0413bh		;1dc1
	ld hl,l1800h		;1dc4
	ld de,0a9bah		;1dc7
	jp 04a8ch		;1dca
	ld hl,02038h		;1dcd
	ld de,0e500h		;1dd0
	ld bc,00158h		;1dd3
	call sub_0059h		;1dd6
	ld hl,02500h		;1dd9
	ld de,0e500h		;1ddc
	ld bc,00158h		;1ddf
	exx			;1de2
	ld b,002h		;1de3
	call 04a3ah		;1de5
	ld a,0f0h		;1de8
	ld hl,00500h		;1dea
	ld bc,00158h		;1ded
	ld d,002h		;1df0
	call 04a4ch		;1df2
	call 0413bh		;1df5
	ld ix,0a000h		;1df8
	call 04595h		;1dfc
	xor a			;1dff
	ld (0f000h),a		;1e00
	ld ix,0a00dh		;1e03
	call 0454eh		;1e07
	jr l1d97h		;1e0a
	call 05e5fh		;1e0c
	call 0cb84h		;1e0f
l1e12h:
	jr l1d97h		;1e12
	call 05e59h		;1e14
	call 05e20h		;1e17
	jp 069f2h		;1e1a
	call 05e64h		;1e1d
	call 04144h		;1e20
	ld de,0aff8h		;1e23
	ld hl,02130h		;1e26
	ld bc,l03d8h		;1e29
	call 04a37h		;1e2c
	call 0413bh		;1e2f
	ld de,0bc09h		;1e32
	ld hl,02508h		;1e35
	ld bc,002e8h		;1e38
	call 04a37h		;1e3b
	ld de,0bef1h		;1e3e
	ld hl,02108h		;1e41
	ld bc,00028h		;1e44
	call 04a37h		;1e47
	ld a,(0f000h)		;1e4a
	ld d,a			;1e4d
	ld a,0f0h		;1e4e
	ld hl,l0008h		;1e50
	ld bc,007f0h		;1e53
	jp 04a4ah		;1e56
	call 05e64h		;1e59
	jp 069f2h		;1e5c
	call 05e64h		;1e5f
l1e62h:
	jr l1e12h		;1e62
	call 04137h		;1e64
	call 0b6cdh		;1e67
	ld hl,030a0h		;1e6a
	ld de,0e500h		;1e6d
	ld bc,00030h		;1e70
	call sub_0059h		;1e73
	ld hl,02008h		;1e76
	ld de,0e500h		;1e79
	ld bc,00030h		;1e7c
	call 04a37h		;1e7f
	ld hl,02108h		;1e82
	ld de,0e500h		;1e85
	ld bc,l00d0h		;1e88
	call sub_0059h		;1e8b
	ld hl,02038h		;1e8e
	ld de,0e500h		;1e91
	ld bc,l00d0h		;1e94
	jp 04a37h		;1e97
	call 05ea9h		;1e9a
	call 05d97h		;1e9d
	jp 0a435h		;1ea0
	call 05ea9h		;1ea3
l1ea6h:
	jp 069efh		;1ea6
	call 04144h		;1ea9
	ld ix,0a214h		;1eac
	call 04595h		;1eb0
	xor a			;1eb3
	ld (0f000h),a		;1eb4
	ld ix,0a228h		;1eb7
	call 0454eh		;1ebb
	ld a,001h		;1ebe
	ld (0f000h),a		;1ec0
	ld ix,0a22fh		;1ec3
	call 0454eh		;1ec7
	ld a,(l002bh)		;1eca
	and 00fh		;1ecd
	ret z			;1ecf
	ld ix,0a221h		;1ed0
	jp 04595h		;1ed4
	call 05ee1h		;1ed7
	jr l1ea6h		;1eda
	call 05ee1h		;1edc
	jr l1e62h		;1edf
	call 04144h		;1ee1
	ld ix,0a143h		;1ee4
	call 04595h		;1ee8
	xor a			;1eeb
	ld (0f000h),a		;1eec
	ld ix,0a15ch		;1eef
	jp 0454eh		;1ef3
	xor a			;1ef6
	ld (0e1c9h),a		;1ef7
	ld (0e1c7h),a		;1efa
	inc a			;1efd
	ld (0e1d3h),a		;1efe
	ld hl,0e1c6h		;1f01
	ld a,(hl)		;1f04
	ld (0e201h),a		;1f05
	inc a			;1f08
	cp 007h			;1f09
	jr c,l1f0fh		;1f0b
	ld a,002h		;1f0d
l1f0fh:
	ld (hl),a		;1f0f
	ld hl,l0001h		;1f10
	ld (0e1cbh),hl		;1f13
	xor a			;1f16
	ld (0e1cdh),a		;1f17
	ld (0e20ah),a		;1f1a
	call 060fdh		;1f1d
	call 08196h		;1f20
	xor a			;1f23
	ld (0e228h),a		;1f24
	jp 05ba3h		;1f27
	ld a,(0e204h)		;1f2a
	and a			;1f2d
	jr z,l1f35h		;1f2e
l1f30h:
	xor a			;1f30
	ld (0e1d3h),a		;1f31
	ret			;1f34
l1f35h:
	ld hl,0e1cbh		;1f35
	dec (hl)		;1f38
	jr z,l1f46h		;1f39
l1f3bh:
	ld a,(0e1cch)		;1f3b
	or 010h			;1f3e
	ld (0e1c9h),a		;1f40
	jp 0416dh		;1f43
l1f46h:
	inc hl			;1f46
	inc hl			;1f47
	ld c,(hl)		;1f48
	inc (hl)		;1f49
	call 0413fh		;1f4a
	ld a,(0e201h)		;1f4d
	ld hl,05f69h		;1f50
	call 04b67h		;1f53
	ld l,c			;1f56
	ld h,000h		;1f57
	add hl,hl		;1f59
	add hl,de		;1f5a
	ld a,(hl)		;1f5b
	ld c,a			;1f5c
	ld (0e1cbh),a		;1f5d
	inc hl			;1f60
	ld a,(hl)		;1f61
	ld (0e1cch),a		;1f62
	call 04157h		;1f65
	inc c			;1f68
	jr z,l1f30h		;1f69
	jr l1f3bh		;1f6b
	xor a			;1f6d
	cp l			;1f6e
	ld h,0beh		;1f6f
	and a			;1f71
	cp (hl)			;1f72
	inc c			;1f73
	cp a			;1f74
	ld a,l			;1f75
	cp a			;1f76
	call 06878h		;1f77
	ret nz			;1f7a
	call 0413fh		;1f7b
	call 05f84h		;1f7e
	jp 04108h		;1f81
	ld a,(0e3b2h)		;1f84
	and a			;1f87
	ret z			;1f88
	ld b,a			;1f89
	ld ix,0e500h		;1f8a
l1f8eh:
	xor a			;1f8e
	ld (0f000h),a		;1f8f
	ld a,(ix+000h)		;1f92
	and a			;1f95
	jr z,l1fadh		;1f96
	cp 007h			;1f98
	jr z,l1fadh		;1f9a
	cp 00eh			;1f9c
	jr z,l1fa8h		;1f9e
	cp 010h			;1fa0
	jr z,l1fa8h		;1fa2
	cp 00bh			;1fa4
	jr nc,l1fadh		;1fa6
l1fa8h:
	push bc			;1fa8
	call 05fb5h		;1fa9
	pop bc			;1fac
l1fadh:
	ld de,l0010h		;1fad
	add ix,de		;1fb0
	djnz l1f8eh		;1fb2
	ret			;1fb4
	ld a,(ix+000h)		;1fb5
	sub 005h		;1fb8
	cp 002h			;1fba
	jr c,l1ffbh		;1fbc
	ld a,(ix+006h)		;1fbe
	and a			;1fc1
	ret z			;1fc2
	ld a,(ix+000h)		;1fc3
	cp 007h			;1fc6
	ret z			;1fc8
	cp 005h			;1fc9
	jr nc,l1ffbh		;1fcb
	cp 002h			;1fcd
	jr z,l1ffbh		;1fcf
	ret			;1fd1
	call 06878h		;1fd2
	ret nz			;1fd5
	call 0413fh		;1fd6
	call 05fdfh		;1fd9
	jp 04108h		;1fdc
	ld a,(0e3b2h)		;1fdf
	and a			;1fe2
	ret z			;1fe3
	ld b,a			;1fe4
	ld ix,0e500h		;1fe5
	ld a,0ffh		;1fe9
	ld (0f000h),a		;1feb
l1feeh:
	push bc			;1fee
	call 05ffbh		;1fef
	pop bc			;1ff2
	ld de,l0010h		;1ff3
	add ix,de		;1ff6
	djnz l1feeh		;1ff8
	ret			;1ffa
l1ffbh:
	ld a,(ix+000h)		;1ffb
	and a			;1ffe
	ret z			;1fff
