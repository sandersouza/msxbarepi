; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x0000 -o docs/reverse-engineering/issues/issue-188/GRADIUS2E.disasm.0000.asm /tmp/GRADIUS2E_64K.bin

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
l000dh:
	nop			;000d
sub_000eh:
	nop			;000e
sub_000fh:
	nop			;000f
l0010h:
	ld b,e			;0010
l0011h:
	ld b,h			;0011
l0012h:
	rlca			;0012
l0013h:
	ld d,c			;0013
	cp b			;0014
l0015h:
	ret nz			;0015
l0016h:
	pop hl			;0016
l0017h:
	inc b			;0017
l0018h:
	ld bc,007e2h		;0018
	nop			;001b
l001ch:
	jp po,le1fah		;001c
l001fh:
	push af			;001f
l0020h:
	pop hl			;0020
l0021h:
	jp nz,lcde1h		;0021
sub_0024h:
	ld a,001h		;0024
	di			;0026
sub_0027h:
	ld hl,(lf0f7h)		;0027
	inc hl			;002a
l002bh:
	ld (lf0f7h),hl		;002b
	call 04c4bh		;002e
	ld hl,le1d4h		;0031
	ld a,(hl)		;0034
l0035h:
	and a			;0035
	ld (hl),001h		;0036
	jp nz,l406fh		;0038
	ld a,004h		;003b
	ld (07000h),a		;003d
l0040h:
	inc a			;0040
	ld (l9000h),a		;0041
	inc a			;0044
	ld (lb000h),a		;0045
	call sub_6934h		;0048
	xor a			;004b
	ld (le1d4h),a		;004c
	di			;004f
sub_0050h:
	ld a,(lf0f0h+1)		;0050
sub_0053h:
	ld (07000h),a		;0053
l0056h:
	ld a,(lf0f2h)		;0056
sub_0059h:
	ld (l9000h),a		;0059
l005ch:
	ld a,(lf0f3h)		;005c
	ld (lb000h),a		;005f
	ld hl,le1c4h+1		;0062
	in a,(0aah)		;0065
	and 040h		;0067
	jp z,lcc04h		;0069
	call sub_cc16h		;006c
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
l0080h:
	ld e,a			;0080
l0081h:
	ret nc			;0081
	inc d			;0082
	ret			;0083
	pop hl			;0084
	add a,a			;0085
	add a,l			;0086
	ld l,a			;0087
l0088h:
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
	ld sp,lf0f0h		;0093
sub_0096h:
	call 040e9h		;0096
	ld h,080h		;0099
	call sub_0024h		;009b
	xor a			;009e
	ld hl,lf0f0h		;009f
	ld (l5000h),a		;00a2
	ld (hl),a		;00a5
sub_00a6h:
	inc hl			;00a6
	inc a			;00a7
	ld (07000h),a		;00a8
	ld (hl),a		;00ab
	inc hl			;00ac
	inc a			;00ad
	ld (l9000h),a		;00ae
	ld (hl),a		;00b1
	inc hl			;00b2
l00b3h:
	inc a			;00b3
	ld (hl),a		;00b4
	ld a,010h		;00b5
	ld (lb000h),a		;00b7
	call sub_a000h		;00ba
	ld de,le001h		;00bd
l00c0h:
	ld bc,l0fffh		;00c0
l00c3h:
	ld (hl),a		;00c3
	ldir			;00c4
	ld a,002h		;00c6
	ld (le1c6h),a		;00c8
	inc a			;00cb
	ld (lb000h),a		;00cc
	halt			;00cf
l00d0h:
	call 0cd36h		;00d0
l00d3h:
	call sub_bcb7h		;00d3
	di			;00d6
	ld a,0c3h		;00d7
	ld (lfd9ah),a		;00d9
sub_00dch:
	ld hl,l4023h		;00dc
l00dfh:
	ld (lfd9bh),hl		;00df
	call 0013eh		;00e2
	jp lcb8bh		;00e5
	nop			;00e8
	call l0137h+1		;00e9
	rrca			;00ec
	rrca			;00ed
	and 003h		;00ee
	ld c,a			;00f0
	ld b,000h		;00f1
	ld hl,lfcc1h		;00f3
l00f6h:
	add hl,bc		;00f6
	ld a,(hl)		;00f7
	and 080h		;00f8
sub_00fah:
	or c			;00fa
	ld c,a			;00fb
	inc hl			;00fc
	inc hl			;00fd
	inc hl			;00fe
sub_00ffh:
	inc hl			;00ff
l0100h:
	ld a,(hl)		;0100
l0101h:
	and 00ch		;0101
	or c			;0103
l0104h:
	ret			;0104
	jp l4ae4h		;0105
l0108h:
	push af			;0108
	ld a,001h		;0109
	jr l011ah		;010b
	push af			;010d
	ld a,004h		;010e
l0110h:
	jr l011ah		;0110
	push af			;0112
	ld a,007h		;0113
	jr l011ah		;0115
	push af			;0117
l0118h:
	ld a,00dh		;0118
l011ah:
	di			;011a
	push hl			;011b
	ld hl,lf0f0h+1		;011c
	ld (07000h),a		;011f
	ld (hl),a		;0122
	inc a			;0123
	inc l			;0124
	ld (l9000h),a		;0125
	ld (hl),a		;0128
	inc a			;0129
	inc l			;012a
	ld (lb000h),a		;012b
	ld (hl),a		;012e
	pop hl			;012f
	pop af			;0130
	ei			;0131
	ret			;0132
	ld a,00ah		;0133
	jr l014eh		;0135
l0137h:
	ld a,00bh		;0137
	jr l014eh		;0139
	ld a,00ch		;013b
	jr l014eh		;013d
	ld a,00fh		;013f
sub_0141h:
	jp l414eh		;0141
	ld a,009h		;0144
	jp l414eh		;0146
	ld a,006h		;0149
	jp l414eh		;014b
l014eh:
	di			;014e
	ld (lb000h),a		;014f
	ld (lf0f3h),a		;0152
	ei			;0155
	ret			;0156
	ld a,002h		;0157
	jr l015dh		;0159
	ld a,00eh		;015b
l015dh:
	di			;015d
	ld (l9000h),a		;015e
	ld (lf0f2h),a		;0161
l0164h:
	inc a			;0164
	ld (lb000h),a		;0165
	ld (lf0f3h),a		;0168
	ei			;016b
	ret			;016c
	ld a,(le1dch)		;016d
	and a			;0170
l0171h:
	jr z,l017fh		;0171
	call sub_4112h		;0173
	call sub_46c4h		;0176
	call l4107h+1		;0179
	jp 077f1h		;017c
l017fh:
	call sub_54dch		;017f
	xor a			;0182
	ld (le307h),a		;0183
	ld (le308h),a		;0186
	ld (le308h+1),a		;0189
l018ch:
	call 077b6h		;018c
	call sub_7a2eh		;018f
	ld a,(le1dah)		;0192
	and a			;0195
	ret nz			;0196
	call 07c90h		;0197
	call 0bf40h		;019a
	call sub_4117h		;019d
l01a0h:
	call sub_4845h		;01a0
	call l4107h+1		;01a3
	call 074a2h		;01a6
	ld a,(le3c1h)		;01a9
	or a			;01ac
	ret nz			;01ad
	call sub_be9dh		;01ae
l01b1h:
	call sub_a765h		;01b1
	call sub_7d4fh		;01b4
	call sub_aa53h		;01b7
	call sub_aa9bh		;01ba
	call 0ab15h		;01bd
l01c0h:
	call sub_abfdh		;01c0
	call sub_ab92h		;01c3
	call sub_8592h		;01c6
	call 08570h		;01c9
	call 085a9h		;01cc
	call sub_8653h		;01cf
l01d2h:
	ld a,(le3aah)		;01d2
	or a			;01d5
	jr nz,l01e4h		;01d6
	call sub_6385h		;01d8
	call sub_92c1h		;01db
	call sub_6d47h		;01de
	call 07274h		;01e1
l01e4h:
	call 08526h		;01e4
	call sub_5120h		;01e7
	call 09034h		;01ea
l01edh:
	ld a,(le201h)		;01ed
	dec a			;01f0
	jr nz,l01fch		;01f1
	call l4136h+1		;01f3
	call sub_b193h		;01f6
	call 04157h		;01f9
l01fch:
	call sub_6b85h		;01fc
l01ffh:
	call sub_6acch		;01ff
l0202h:
	call l4136h+1		;0202
	call sub_b4aah		;0205
l0208h:
	call 0b422h		;0208
	call 04157h		;020b
	call sub_a04dh		;020e
	call 072d6h		;0211
	call sub_781ch		;0214
	call sub_927ah		;0217
	call 07930h		;021a
l021dh:
	call 07946h		;021d
l0220h:
	call sub_87a4h		;0220
	call sub_8678h		;0223
	call 06790h		;0226
	call l4136h+1		;0229
	ld a,(le201h)		;022c
	dec a			;022f
l0230h:
	call z,sub_b2ceh	;0230
	call 04157h		;0233
	call 067b9h		;0236
	call sub_8be3h		;0239
	call sub_8c86h		;023c
	ld a,(le3aah)		;023f
	or a			;0242
	jr nz,l025dh		;0243
	call 090c6h		;0245
	call sub_9167h		;0248
	call sub_88a2h		;024b
	call 08a43h		;024e
	call 08df9h		;0251
	call sub_8db4h		;0254
	call sub_8e43h		;0257
	call sub_8d5eh		;025a
l025dh:
	call 05fd2h		;025d
	call sub_8413h		;0260
	call sub_92f6h		;0263
	call 081dah		;0266
	ld a,(le3aah)		;0269
	or a			;026c
	call z,l79ffh+1		;026d
	call sub_6cedh		;0270
	call sub_6c48h		;0273
	call l4136h+1		;0276
	call sub_b53ah		;0279
	call 04157h		;027c
	call 0853eh		;027f
l0282h:
	call sub_86b1h		;0282
	call l4136h+1		;0285
	call 0bd47h		;0288
	call sub_a0d6h		;028b
	call 04157h		;028e
	call 04157h		;0291
	call sub_872ah		;0294
	call sub_51b3h		;0297
	call sub_517bh		;029a
	call l4136h+1		;029d
	call sub_a000h		;02a0
	call 0a088h		;02a3
	call 0a206h		;02a6
	call 04157h		;02a9
	call sub_4144h		;02ac
	call sub_6a27h		;02af
	call l4107h+1		;02b2
	call sub_497ah		;02b5
	call 077f1h		;02b8
	call l4136h+1		;02bb
	call sub_a16ah		;02be
	call 0bdcdh		;02c1
	call 04157h		;02c4
	call sub_86f1h		;02c7
	call sub_6826h		;02ca
	call sub_8555h		;02cd
	call 05f77h		;02d0
	ld a,(le1c3h)		;02d3
	and 007h		;02d6
	dec a			;02d8
	jp z,l5bbbh		;02d9
l02dch:
	ret			;02dc
	call sub_4112h		;02dd
l02e0h:
	ld hl,l1800h		;02e0
	ld de,09ff4h		;02e3
	call sub_4a8ch		;02e6
	ld hl,01960h		;02e9
	ld de,la063h		;02ec
l02efh:
	call sub_4a8ch		;02ef
	jp l4107h+1		;02f2
	call sub_4112h		;02f5
l02f8h:
	call sub_42feh		;02f8
	jp l4107h+1		;02fb
l02feh:
	ld hl,l1800h		;02fe
l0301h:
	ld de,l9d17h		;0301
l0304h:
	call sub_4a8ch		;0304
l0307h:
	ld hl,01960h		;0307
l030ah:
	ld de,09d68h		;030a
	jp sub_4a8ch		;030d
sub_0310h:
	call sub_4112h		;0310
	call sub_4319h		;0313
	jp l4107h+1		;0316
	ld a,c			;0319
	add a,a			;031a
l031bh:
	add a,a			;031b
	ld hl,09094h		;031c
	call sub_407ah		;031f
	ld e,(hl)		;0322
	inc hl			;0323
	ld d,(hl)		;0324
	push hl			;0325
	ld hl,l2748h		;0326
	call 04a5bh		;0329
	pop hl			;032c
	inc hl			;032d
	ld e,(hl)		;032e
	inc hl			;032f
	ld d,(hl)		;0330
	ld hl,l0748h		;0331
	jp 04a5bh		;0334
	push ix			;0337
	ld a,(lf0f5h)		;0339
	bit 2,a			;033c
	jr z,l0349h		;033e
	call l4136h+1		;0340
	ld ix,0bfbfh		;0343
	jr l0350h		;0347
l0349h:
	call sub_4112h		;0349
	ld ix,04358h		;034c
l0350h:
	call sub_4595h		;0350
	pop ix			;0353
	jp l4107h+1		;0355
	rlca			;0358
	ld a,(lc792h)		;0359
	ld e,h			;035c
	sub d			;035d
	nop			;035e
	call sub_4112h		;035f
	call l4366h+2		;0362
	jp l4107h+1		;0365
	ld a,(lf0f5h)		;0368
	bit 2,a			;036b
	jr nz,l0381h		;036d
	ld hl,l1800h		;036f
	ld de,l936fh		;0372
	call sub_4a8ch		;0375
	ld hl,01960h		;0378
	ld de,l942bh		;037b
	jp sub_4a8ch		;037e
l0381h:
	call sub_413bh		;0381
l0384h:
	ld hl,l1800h		;0384
	ld de,lbf19h		;0387
	call sub_4a8ch		;038a
	ld hl,019e0h		;038d
	ld de,0bf82h		;0390
	jp sub_4a8ch		;0393
	call l4136h+1		;0396
	call sub_b736h		;0399
	call sub_4112h		;039c
l039fh:
	call sub_43a5h		;039f
	jp l4107h+1		;03a2
	call sub_44f7h		;03a5
	call 04337h		;03a8
	call sub_4112h		;03ab
	call sub_44a0h		;03ae
	call sub_43c4h		;03b1
	ld a,(lf0f5h)		;03b4
	bit 2,a			;03b7
	ret z			;03b9
	call l4136h+1		;03ba
	ld ix,0bf63h		;03bd
	jp sub_4595h		;03c1
	ld ix,l44eah		;03c4
	call 043dah		;03c8
	call sub_44c7h		;03cb
	ld hl,09348h		;03ce
l03d1h:
	ld a,(le201h)		;03d1
	call 04b67h		;03d4
	push de			;03d7
l03d8h:
	pop ix			;03d8
l03dah:
	ld a,(ix+000h)		;03da
	dec a			;03dd
	ret m			;03de
	push af			;03df
	call z,sub_43eeh	;03e0
	pop af			;03e3
l03e4h:
	call nz,sub_445eh	;03e4
	ld bc,l0004h		;03e7
l03eah:
	add ix,bc		;03ea
	jr l03dah		;03ec
	ld a,(ix+001h)		;03ee
	or a			;03f1
	ret z			;03f2
	ld (lf010h),a		;03f3
	ld l,(ix+002h)		;03f6
	ld h,000h		;03f9
	add hl,hl		;03fb
l03fch:
	add hl,hl		;03fc
	add hl,hl		;03fd
	ld bc,l1800h		;03fe
	add hl,bc		;0401
l0402h:
	ld (lf010h+2),hl	;0402
	ld l,(ix+003h)		;0405
l0408h:
	ld h,000h		;0408
l040ah:
	add hl,hl		;040a
	add hl,hl		;040b
	add hl,hl		;040c
	add hl,bc		;040d
sub_040eh:
	ld (0f014h),hl		;040e
l0411h:
	ld hl,(lf010h+2)	;0411
	ld de,0e600h		;0414
	ld bc,l0020h		;0417
	call sub_0059h		;041a
	call 04444h		;041d
	ld hl,(0f014h)		;0420
	ld de,le620h		;0423
	ld bc,l0020h		;0426
	call sub_4a33h		;0429
	ld bc,l0020h		;042c
	ld hl,(lf010h+2)	;042f
	add hl,bc		;0432
	ld (lf010h+2),hl	;0433
l0436h:
	ld hl,(0f014h)		;0436
	add hl,bc		;0439
	ld (0f014h),hl		;043a
	ld hl,lf010h		;043d
	dec (hl)		;0440
	jr nz,l0411h		;0441
	ret			;0443
	ld hl,0e600h		;0444
	ld de,le62fh		;0447
	ld b,010h		;044a
	call 04457h		;044c
	ld hl,le610h		;044f
	ld de,le63fh		;0452
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
	jp l4ab1h		;047f
	call sub_4112h		;0482
	ld de,l93eeh		;0485
l0488h:
	call 0449ah		;0488
	jp l4107h+1		;048b
	call sub_4112h		;048e
	call sub_4497h		;0491
	jp l4107h+1		;0494
	ld de,093c0h		;0497
	ld hl,l18c0h		;049a
	jp sub_4a8ch		;049d
	call l4366h+2		;04a0
	call sub_4112h		;04a3
	call sub_4497h		;04a6
	ld a,(le400h)		;04a9
	cp 003h			;04ac
	call z,sub_42feh	;04ae
	ld a,(le432h)		;04b1
	cp 005h			;04b4
	jr nz,l04beh		;04b6
	ld de,l93eeh		;04b8
	call 0449ah		;04bb
l04beh:
	ld hl,01a20h		;04be
	ld de,l94b8h		;04c1
	jp sub_4a8ch		;04c4
	ld a,(le201h)		;04c7
	ld hl,l92b3h		;04ca
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
l04dah:
	ld l,a			;04da
	ld h,000h		;04db
	add hl,hl		;04dd
	add hl,hl		;04de
	add hl,hl		;04df
	ld bc,l1800h		;04e0
	add hl,bc		;04e3
l04e4h:
	call sub_4a8ch		;04e4
	pop hl			;04e7
	jr l04d1h		;04e8
l04eah:
	ld bc,l7401h+2		;04ea
	add a,b			;04ed
	ld (bc),a		;04ee
	inc bc			;04ef
	add a,b			;04f0
	adc a,h			;04f1
	ld bc,08c03h		;04f2
	sbc a,b			;04f5
	nop			;04f6
	ld a,(le201h)		;04f7
	cp 008h			;04fa
l04fch:
	jr nz,l051eh		;04fc
l04feh:
	ld ix,06048h		;04fe
l0502h:
	call sub_4595h		;0502
l0505h:
	ld hl,l0001h		;0505
	ld (le1dch),hl		;0508
	ld hl,l61dbh+2		;050b
	ld (le1e0h),hl		;050e
sub_0511h:
	ld hl,l6281h		;0511
	ld (0e1e2h),hl		;0514
	ld hl,064a7h		;0517
	ld (le1e4h),hl		;051a
	ret			;051d
l051eh:
	ld ix,06048h		;051e
	call sub_4595h		;0522
	ld a,(le201h)		;0525
	ld hl,06000h		;0528
	call 04b67h		;052b
	push de			;052e
	pop ix			;052f
	call sub_4595h		;0531
	xor a			;0534
	ld (lf000h),a		;0535
	ld hl,06018h		;0538
	call 04545h		;053b
	ld hl,lf000h		;053e
	inc (hl)		;0541
	ld hl,l6030h		;0542
	ld a,(le201h)		;0545
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
	ld (lf003h),a		;0560
	call sub_457bh		;0563
	ld de,l0004h		;0566
	add ix,de		;0569
	jr l054eh		;056b
l056dh:
	ld l,a			;056d
	ld (lf003h),a		;056e
	call sub_457bh		;0571
	ld de,l0003h		;0574
	add ix,de		;0577
	jr l054eh		;0579
	ld h,000h		;057b
	add hl,hl		;057d
	add hl,hl		;057e
l057fh:
	add hl,hl		;057f
	ld (lf000h+1),hl	;0580
	call sub_4675h		;0583
	ld a,(lf000h)		;0586
	and a			;0589
	push af			;058a
	call z,sub_4617h	;058b
	pop af			;058e
	call nz,045eah		;058f
	jp 0462dh		;0592
l0595h:
	ld a,(ix+000h)		;0595
	and a			;0598
	ret z			;0599
	rra			;059a
	ld de,l1000h		;059b
	call c,sub_45bch	;059e
	bit 1,(ix+000h)		;05a1
	ld de,00800h		;05a5
	call nz,sub_45bch	;05a8
	bit 2,(ix+000h)		;05ab
	ld de,l0000h		;05af
	call nz,sub_45bch	;05b2
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
	ld de,l2000h		;05c6
	add hl,de		;05c9
	ld e,(ix+001h)		;05ca
	ld d,(ix+002h)		;05cd
	push ix			;05d0
	call sub_4a8ch		;05d2
	pop ix			;05d5
	pop hl			;05d7
	ld de,l0000h		;05d8
	add hl,de		;05db
	ld e,(ix+004h)		;05dc
	ld d,(ix+005h)		;05df
	push ix			;05e2
	call sub_4a8ch		;05e4
	pop ix			;05e7
l05e9h:
	ret			;05e9
l05eah:
	ld hl,0e600h		;05ea
	ld de,le607h		;05ed
	call 045f9h		;05f0
	ld hl,le800h		;05f3
	ld de,le807h		;05f6
	exx			;05f9
	ld a,(lf003h)		;05fa
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
sub_0608h:
	djnz l0601h		;0608
	inc hl			;060a
sub_060bh:
	inc hl			;060b
	inc hl			;060c
l060dh:
	inc hl			;060d
	ld a,00ch		;060e
	call sub_407fh		;0610
	exx			;0613
	djnz l05feh		;0614
	ret			;0616
	ld hl,0e600h		;0617
	ld de,(lf000h+1)	;061a
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
sub_0631h:
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
	ld de,l2000h		;0655
	add hl,de		;0658
	ld de,0e600h		;0659
	ld bc,(lf000h+1)	;065c
	call sub_4a33h		;0660
	pop hl			;0663
	ld de,l0000h		;0664
	add hl,de		;0667
	ld de,le800h		;0668
	ld bc,(lf000h+1)	;066b
	call sub_4a33h		;066f
	pop ix			;0672
	ret			;0674
	ld bc,(lf000h+1)	;0675
	ld l,(ix+000h)		;0679
	ld h,000h		;067c
	add hl,hl		;067e
	add hl,hl		;067f
	add hl,hl		;0680
	push hl			;0681
	ld de,l2000h		;0682
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
	ld de,le800h		;06b5
	ld bc,(lf000h+1)	;06b8
	push ix			;06bc
	call sub_0059h		;06be
	pop ix			;06c1
	ret			;06c3
	ld a,(le1ddh)		;06c4
	dec a			;06c7
	jr z,l06edh		;06c8
	dec a			;06ca
	jr z,l070ah		;06cb
	xor a			;06cd
	ld (le1ddh+1),a		;06ce
	ld c,000h		;06d1
	call sub_472eh		;06d3
	ld a,001h		;06d6
	ld (le1ddh+1),a		;06d8
	ld c,0f0h		;06db
	call sub_472eh		;06dd
	call sub_478ch		;06e0
	ld a,001h		;06e3
	ld (le1dfh),a		;06e5
l06e8h:
	ld hl,le1ddh		;06e8
	inc (hl)		;06eb
	ret			;06ec
l06edh:
	xor a			;06ed
	ld (le1ddh+1),a		;06ee
	ld a,(le1dfh)		;06f1
	ld c,a			;06f4
	call sub_472eh		;06f5
	call sub_478ch		;06f8
	ld hl,le1dfh		;06fb
	ld a,(hl)		;06fe
	cp 0ffh			;06ff
	jr z,l06e8h		;0701
l0703h:
	rlca			;0703
	rlca			;0704
	rlca			;0705
	or 001h			;0706
	ld (hl),a		;0708
	ret			;0709
l070ah:
	ld a,001h		;070a
	ld (le1ddh+1),a		;070c
l070fh:
	ld c,0ffh		;070f
	call sub_472eh		;0711
	call sub_478ch		;0714
	call sub_4b43h		;0717
	call sub_43b4h		;071a
	xor a			;071d
	ld (le1dch),a		;071e
	ld a,(le401h)		;0721
	or a			;0724
	ld a,001h		;0725
	jr z,l072ah		;0727
	inc a			;0729
l072ah:
	ld (le400h),a		;072a
	ret			;072d
	ld ix,(le1e0h)		;072e
l0732h:
	ld a,(ix+000h)		;0732
	and a			;0735
	ret z			;0736
	rra			;0737
	ld de,l1000h		;0738
	call c,sub_4759h	;073b
	bit 1,(ix+000h)		;073e
	ld de,00800h		;0742
	call nz,sub_4759h	;0745
l0748h:
	bit 2,(ix+000h)		;0748
	ld de,l0000h		;074c
	call nz,sub_4759h	;074f
	ld de,l0006h		;0752
	add ix,de		;0755
	jr l0732h		;0757
	ld l,(ix+003h)		;0759
	ld h,000h		;075c
	add hl,hl		;075e
l075fh:
	add hl,hl		;075f
	add hl,hl		;0760
	add hl,de		;0761
	ld a,(le1ddh+1)		;0762
	dec a			;0765
	jr z,l077ah		;0766
	ld de,l2000h		;0768
	add hl,de		;076b
	ld e,(ix+001h)		;076c
	ld d,(ix+002h)		;076f
	push ix			;0772
	call sub_47a2h		;0774
	pop ix			;0777
	ret			;0779
l077ah:
	ld de,l0000h		;077a
	add hl,de		;077d
	ld e,(ix+004h)		;077e
l0781h:
	ld d,(ix+005h)		;0781
l0784h:
	push ix			;0784
	call sub_47a2h		;0786
	pop ix			;0789
	ret			;078b
	xor a			;078c
	ld (lf000h),a		;078d
	ld ix,(0e1e2h)		;0790
	call 0454eh		;0794
	ld hl,lf000h		;0797
	inc (hl)		;079a
	ld ix,(le1e4h)		;079b
	jp 0454eh		;079f
	call sub_4a1dh		;07a2
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
	ld a,(le1ddh+1)		;07b7
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
	ld a,(le1ddh+1)		;07cf
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
	ld (lf004h),a		;07e1
	ld hl,(le203h)		;07e4
	ld de,l0020h		;07e7
l07eah:
	sbc hl,de		;07ea
	ld (le203h),hl		;07ec
	ld hl,led00h		;07ef
	ld (lf000h),hl		;07f2
	ld b,020h		;07f5
l07f7h:
	push bc			;07f7
l07f8h:
	call sub_4117h		;07f8
	call sub_4889h		;07fb
	call l4107h+1		;07fe
	call sub_7261h		;0801
	call sub_6560h		;0804
sub_0807h:
	call sub_8798h		;0807
	call 06f42h		;080a
	call sub_6abch		;080d
l0810h:
	call l4136h+1		;0810
	call 0b109h		;0813
	call sub_b410h		;0816
sub_0819h:
	call 04157h		;0819
	call sub_5113h		;081c
	ld hl,(lf000h)		;081f
	inc hl			;0822
	ld (lf000h),hl		;0823
	ld hl,lf004h		;0826
	ld a,(hl)		;0829
l082ah:
	add a,008h		;082a
	ld (hl),a		;082c
	ld hl,(le203h)		;082d
	inc hl			;0830
	ld (le203h),hl		;0831
	pop bc			;0834
	djnz l07f7h		;0835
	ld hl,(le203h)		;0837
	dec hl			;083a
	ld (le203h),hl		;083b
	ret			;083e
l083fh:
	ld a,001h		;083f
	ld (le327h),a		;0841
	ret			;0844
	xor a			;0845
	ld (0e320h),a		;0846
	ld (le327h),a		;0849
	ld de,(le323h+2)	;084c
	ld hl,(le203h)		;0850
	rst 20h			;0853
	jr nc,l083fh		;0854
	ld a,(le3d0h)		;0856
	dec a			;0859
	ret z			;085a
	dec a			;085b
	jr z,l0867h		;085c
	ld de,le202h		;085e
	ld a,(de)		;0861
	call sub_cb1ch		;0862
	ld (de),a		;0865
	ret nc			;0866
l0867h:
	inc hl			;0867
	ld (le203h),hl		;0868
	ld a,001h		;086b
	ld (0e320h),a		;086d
	ld hl,led00h		;0870
	ld de,lecffh		;0873
	ld bc,002c0h		;0876
	call sub_cc67h		;0879
	nop			;087c
	nop			;087d
	nop			;087e
	nop			;087f
	nop			;0880
	nop			;0881
	nop			;0882
	ld hl,led1fh		;0883
	ld (lf000h),hl		;0886
	ld hl,(le203h)		;0889
	ld de,(le323h)		;088c
	rst 20h			;0890
	ccf			;0891
	jp c,04956h		;0892
	ld de,(0e321h)		;0895
	and a			;0899
	sbc hl,de		;089a
	jp c,04956h		;089c
	push hl			;089f
	ld hl,07900h		;08a0
	ld a,(le201h)		;08a3
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
	ld (lf002h),hl		;08b6
	ld hl,(lf000h)		;08b9
	ld b,006h		;08bc
	push bc			;08be
	push hl			;08bf
	ld a,(le201h)		;08c0
	ld hl,l5557h		;08c3
	call 04b67h		;08c6
	ld hl,(lf002h)		;08c9
	call 04942h		;08cc
	ld a,(hl)		;08cf
	inc hl			;08d0
	ld (lf002h),hl		;08d1
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
l08e4h:
	ld a,(le201h)		;08e4
	ld hl,0494ah		;08e7
l08eah:
	call sub_407ah		;08ea
l08edh:
	ld a,c			;08ed
	cp (hl)			;08ee
	jr c,l090ah		;08ef
	sub (hl)		;08f1
	ld l,(hl)		;08f2
	ld h,000h		;08f3
	add hl,hl		;08f5
	call sub_407ah		;08f6
	add hl,hl		;08f9
	add hl,hl		;08fa
	add hl,hl		;08fb
	add hl,de		;08fc
	ld de,leaa8h		;08fd
	ld bc,l0008h		;0900
	ldir			;0903
	ld de,leaa8h		;0905
	jr l0913h		;0908
l090ah:
	ld l,a			;090a
	ld h,000h		;090b
	add hl,hl		;090d
	add hl,hl		;090e
	add hl,hl		;090f
l0910h:
	add hl,hl		;0910
	add hl,de		;0911
	ex de,hl		;0912
l0913h:
	ld a,(le203h)		;0913
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
	ld a,(le201h)		;0942
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
	ld a,(le203h)		;0956
	and 01fh		;0959
l095bh:
	ld hl,l49e8h		;095b
	call sub_407ah		;095e
	ld c,(hl)		;0961
	ld a,c			;0962
	ex af,af'		;0963
	ld b,016h		;0964
	ld de,l0020h		;0966
	ld hl,(lf000h)		;0969
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
	ld a,(le1c3h)		;097a
	and 006h		;097d
	ld hl,l49e0h		;097f
	ld e,a			;0982
	ld d,000h		;0983
	add hl,de		;0985
	ld c,(hl)		;0986
	inc hl			;0987
	ld b,(hl)		;0988
	ld hl,l27f2h		;0989
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
	ld ix,l49e8h		;09a5
	ld a,(le203h)		;09a9
	sub 01fh		;09ac
	and 01fh		;09ae
	ld e,a			;09b0
	ld d,000h		;09b1
	add ix,de		;09b3
	sub 020h		;09b5
	neg			;09b7
	ld c,a			;09b9
	ld de,led00h		;09ba
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
	ld ix,l49e8h		;09d5
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
	ld de,sub_0b06h+2	;09f0
	ld (bc),a		;09f3
	djnz l09fdh		;09f4
	dec c			;09f6
	dec b			;09f7
sub_09f8h:
	ld (de),a		;09f8
l09f9h:
	inc c			;09f9
	ld (bc),a		;09fa
	ld (de),a		;09fb
	add hl,bc		;09fc
l09fdh:
	ld c,014h		;09fd
	ld de,l0502h		;09ff
l0a02h:
	dec c			;0a02
sub_0a03h:
	ld a,(bc)		;0a03
	inc de			;0a04
l0a05h:
	ld b,00fh		;0a05
	add hl,bc		;0a07
	call l5af9h+1		;0a08
	ld bc,002c0h		;0a0b
	jr l0a16h		;0a0e
l0a10h:
	call l5af9h+1		;0a10
sub_0a13h:
	ld bc,l02feh+2		;0a13
l0a16h:
	ld hl,03800h		;0a16
	xor a			;0a19
sub_0a1ah:
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
	call sub_4a33h		;0a3d
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
	call sub_4a8ch		;0a5f
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
l0a80h:
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
	call sub_4a1dh		;0a8c
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
	call sub_407fh		;0ab6
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
l0ae4h:
	di			;0ae4
	push hl			;0ae5
	push de			;0ae6
	push bc			;0ae7
	push ix			;0ae8
l0aeah:
	push af			;0aea
l0aebh:
	ld a,004h		;0aeb
	ld (07000h),a		;0aed
	inc a			;0af0
	ld (l9000h),a		;0af1
	inc a			;0af4
	ld (lb000h),a		;0af5
l0af8h:
	pop af			;0af8
	push af			;0af9
	call sub_6480h		;0afa
	ld a,(lf0f0h+1)		;0afd
	ld (07000h),a		;0b00
	ld a,(lf0f2h)		;0b03
sub_0b06h:
	ld (l9000h),a		;0b06
	ld a,(lf0f3h)		;0b09
	ld (lb000h),a		;0b0c
	pop af			;0b0f
	pop ix			;0b10
	pop bc			;0b12
	pop de			;0b13
	pop hl			;0b14
l0b15h:
	ei			;0b15
	ret			;0b16
	call l4136h+1		;0b17
	call sub_b77fh		;0b1a
	jp 04157h		;0b1d
	push ix			;0b20
	call sub_4117h		;0b22
	ld ix,l556fh		;0b25
	call sub_4595h		;0b29
	ld a,001h		;0b2c
	ld (lf000h),a		;0b2e
	ld ix,0559ah		;0b31
	call 0454eh		;0b35
	call 04b51h		;0b38
	call l4107h+1		;0b3b
	call l4136h+1		;0b3e
	pop ix			;0b41
	ld hl,0e600h		;0b43
	ld de,le601h		;0b46
	ld bc,003ffh		;0b49
	ld (hl),000h		;0b4c
	ldir			;0b4e
	ret			;0b50
	call sub_4112h		;0b51
	ld hl,01e80h		;0b54
	ld de,0bf6dh		;0b57
	call sub_4a8ch		;0b5a
	jp l4107h+1		;0b5d
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
	ld hl,le900h		;0b7e
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
	ld hl,l4be8h		;0b98
	ld a,(ix+014h)		;0b9b
	sub 00fh		;0b9e
	neg			;0ba0
	call sub_407ah		;0ba2
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
l0beah:
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
l0c08h:
	cp (hl)			;0c08
	cp (hl)			;0c09
	cp (hl)			;0c0a
	cp (hl)			;0c0b
	cp (hl)			;0c0c
	cp (hl)			;0c0d
	cp (hl)			;0c0e
	cp (hl)			;0c0f
l0c10h:
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
	ld a,(le304h+2)		;0c2a
	add a,b			;0c2d
	ld (le304h+2),a		;0c2e
	ret			;0c31
	push af			;0c32
	ld a,(le201h)		;0c33
	call 04b67h		;0c36
	pop af			;0c39
	ld c,a			;0c3a
	add a,a			;0c3b
	add a,c			;0c3c
	call sub_407fh		;0c3d
	ex de,hl		;0c40
	ld e,(hl)		;0c41
	inc hl			;0c42
	ld d,(hl)		;0c43
	inc hl			;0c44
	ld c,(hl)		;0c45
	ld hl,(le203h)		;0c46
	rst 20h			;0c49
	ret			;0c4a
	ld a,(le1c0h)		;0c4b
	cp 002h			;0c4e
	jr z,l0c55h		;0c50
	cp 005h			;0c52
	ret nz			;0c54
l0c55h:
	ld a,(le439h)		;0c55
	or a			;0c58
	ret z			;0c59
	ld hl,le1d5h		;0c5a
	ld a,(hl)		;0c5d
	or a			;0c5e
	ret nz			;0c5f
	ld hl,le43bh		;0c60
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
	ld (le1d5h),a		;0c72
	ret			;0c75
	ld hl,le280h		;0c76
	ld de,le281h		;0c79
	ld (hl),0e0h		;0c7c
	ld bc,l007fh		;0c7e
	ldir			;0c81
	ret			;0c83
	call sub_4117h		;0c84
	ld ix,lb3ach		;0c87
	call sub_4595h		;0c8b
	ld a,001h		;0c8e
	ld (lf000h),a		;0c90
	ld ix,lb3b9h		;0c93
	call 0454eh		;0c97
	call l4107h+1		;0c9a
	call l4136h+1		;0c9d
	jp sub_4b43h		;0ca0
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
	ld hl,l4cf6h		;0cb8
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
l0ceah:
	or l			;0cea
	nop			;0ceb
	defb 0ddh,000h,000h ;illegal sequence	;0cec
	ld bc,sub_00dch+1	;0cef
	or l			;0cf2
	nop			;0cf3
	add a,b			;0cf4
	nop			;0cf5
	nop			;0cf6
	ld bc,sub_00dch+1	;0cf7
	or l			;0cfa
	nop			;0cfb
	add a,b			;0cfc
	nop			;0cfd
	nop			;0cfe
l0cffh:
	nop			;0cff
	add a,b			;0d00
	rst 38h			;0d01
sub_0d02h:
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
l0d0fh:
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
	ld (lf019h),de		;0d1e
	ld (le34fh+1),a		;0d22
	ld a,b			;0d25
	ld (le35fh),a		;0d26
	xor a			;0d29
	ld (le352h+1),a		;0d2a
	ld a,c			;0d2d
	ld (le34fh+2),a		;0d2e
l0d31h:
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
	ld a,(le34fh+1)		;0d43
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
	ld a,(le355h)		;0d5f
	add a,b			;0d62
	cp 00dh			;0d63
	jr c,l0d69h		;0d65
	xor a			;0d67
	ret			;0d68
l0d69h:
	ld (le355h),a		;0d69
l0d6ch:
	push de			;0d6c
	ld de,(lf019h)		;0d6d
	exx			;0d71
	ld hl,le352h		;0d72
	inc (hl)		;0d75
	exx			;0d76
	push hl			;0d77
	pop ix			;0d78
	ld a,(le34fh+1)		;0d7a
	ld (le352h+1),a		;0d7d
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
l0d8bh:
	ld (hl),a		;0d8b
	inc l			;0d8c
	ld (hl),d		;0d8d
	ld de,l0005h		;0d8e
	add hl,de		;0d91
	pop de			;0d92
	ex de,hl		;0d93
	ldi			;0d94
	ld a,(le34fh+2)		;0d96
	ld (de),a		;0d99
	inc e			;0d9a
	ldi			;0d9b
	ldi			;0d9d
	ldi			;0d9f
	ld a,007h		;0da1
	ld (de),a		;0da3
	ld a,005h		;0da4
	call sub_407fh		;0da6
sub_0da9h:
	call 04e93h		;0da9
	ld (de),a		;0dac
	inc e			;0dad
	ld a,(le34fh+1)		;0dae
	cp 026h			;0db1
	jr z,l0dcbh		;0db3
	xor a			;0db5
	ld (de),a		;0db6
	ld a,(le34fh+1)		;0db7
	cp 00bh			;0dba
	jr z,l0dc2h		;0dbc
	cp 031h			;0dbe
	jr nz,l0dcbh		;0dc0
l0dc2h:
	ld a,001h		;0dc2
	ld (de),a		;0dc4
	inc e			;0dc5
	ld a,(le396h)		;0dc6
	ld (de),a		;0dc9
	dec e			;0dca
l0dcbh:
	inc e			;0dcb
	inc e			;0dcc
	xor a			;0dcd
	ld (de),a		;0dce
	inc e			;0dcf
	ld a,(le35fh)		;0dd0
	ld (de),a		;0dd3
	inc e			;0dd4
	xor a			;0dd5
	ld (de),a		;0dd6
	ld a,016h		;0dd7
	call sub_407fh		;0dd9
	ldi			;0ddc
	ldi			;0dde
	ldi			;0de0
	ld a,(le34fh+2)		;0de2
	and a			;0de5
	jr z,l0dech		;0de6
	ld (ix+031h),008h	;0de8
l0dech:
	ld a,(le34fh+1)		;0dec
	dec a			;0def
	call sub_4084h		;0df0
	or c			;0df3
	ld h,l			;0df4
	halt			;0df5
	ld c,(hl)		;0df6
	ld h,a			;0df7
l0df8h:
	sbc a,b			;0df8
	xor 0a2h		;0df9
	ld l,l			;0dfb
l0dfch:
	sbc a,l			;0dfc
	ld (hl),l		;0dfd
	ld c,(hl)		;0dfe
	ld c,d			;0dff
	and l			;0e00
l0e01h:
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
	jp nz,l8db7h		;0e11
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
	call l4136h+1		;0e76
	call sub_b8f4h		;0e79
	jp 04157h		;0e7c
	ld a,(lf0f3h)		;0e7f
	push af			;0e82
	call l4136h+1		;0e83
	call sub_a5f0h		;0e86
	pop af			;0e89
	di			;0e8a
	ld (lb000h),a		;0e8b
	ld (lf0f3h),a		;0e8e
	ei			;0e91
	ret			;0e92
	push hl			;0e93
	ld a,(le228h)		;0e94
	ld hl,04ea4h		;0e97
	call sub_407ah		;0e9a
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
	call sub_93f5h		;0eba
l0ebdh:
	ld de,(lf010h+2)	;0ebd
l0ec1h:
	call 04efbh		;0ec1
	ld de,(0f014h)		;0ec4
	jr l0f02h		;0ec8
l0ecah:
	ld e,(ix+004h)		;0eca
	ld d,(ix+006h)		;0ecd
l0ed0h:
	call sub_93e9h		;0ed0
	jr l0ebdh		;0ed3
	ld a,080h		;0ed5
	ld e,(ix+004h)		;0ed7
l0edah:
	ld d,(ix+006h)		;0eda
	ld (lf00fh),a		;0edd
	ld a,h			;0ee0
	ld (lf000h),a		;0ee1
	ld a,l			;0ee4
	ld (lf000h+1),a		;0ee5
	call sub_9467h		;0ee8
	ld d,001h		;0eeb
	call 093fdh		;0eed
	ld de,(0f014h)		;0ef0
	call sub_4f02h		;0ef4
	ld de,(lf010h+2)	;0ef7
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
l0f10h:
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
	call sub_4f02h		;0f26
	ex de,hl		;0f29
	jr l0efbh		;0f2a
	ld e,(ix+009h)		;0f2c
	ld d,(ix+00ah)		;0f2f
	call sub_5cadh		;0f32
	ld (ix+009h),e		;0f35
	ld (ix+00ah),d		;0f38
	ret			;0f3b
	ld e,(ix+007h)		;0f3c
	ld d,(ix+008h)		;0f3f
	call sub_5cadh		;0f42
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
l0f62h:
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
l0fd2h:
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
l0feah:
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
l0ff6h:
	djnz l1008h		;0ff6
l0ff8h:
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
l100dh:
	or b			;100d
	rrca			;100e
	nop			;100f
l1010h:
	add a,c			;1010
l1011h:
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
l1029h:
	nop			;1029
	nop			;102a
	nop			;102b
	nop			;102c
	nop			;102d
	nop			;102e
	nop			;102f
l1030h:
	nop			;1030
	nop			;1031
	nop			;1032
	add a,c			;1033
	ld bc,l0202h		;1034
	ld d,h			;1037
l1038h:
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
sub_10dch:
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
l10ebh:
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
l1111h:
	nop			;1111
	ld e,0cdh		;1112
	jr nc,l1167h		;1114
	jr z,$-3		;1116
	ret c			;1118
	ld hl,le37ch+1		;1119
	inc (hl)		;111c
	jp sub_5113h		;111d
l1120h:
	ld a,(0e320h)		;1120
	and a			;1123
l1124h:
	ret z			;1124
	ld a,0f8h		;1125
	ld (lf004h),a		;1127
l112ah:
	call sub_5130h		;112a
	jr z,l112ah		;112d
	ret			;112f
l1130h:
	call sub_413bh		;1130
	ld a,(le37ch+1)		;1133
	ld hl,lbb72h		;1136
	call sub_4c32h		;1139
	jp nz,04157h		;113c
l113fh:
	ld hl,le37ch+1		;113f
	inc (hl)		;1142
	ld a,c			;1143
	and 0f0h		;1144
	ld e,a			;1146
	ld a,(lf004h)		;1147
	ld d,a			;114a
	ld a,c			;114b
	and 00fh		;114c
	ld c,a			;114e
	call 05157h		;114f
	call 04157h		;1152
	xor a			;1155
	ret			;1156
	ld a,(lea60h)		;1157
	or a			;115a
	ret nz			;115b
	ld a,(le439h)		;115c
	or a			;115f
	ret nz			;1160
	ld a,(le400h)		;1161
	cp 003h			;1164
	ret z			;1166
l1167h:
	ld a,c			;1167
	dec a			;1168
	jr nz,l1170h		;1169
	ld a,(le36dh)		;116b
	or a			;116e
	ret nz			;116f
l1170h:
	ld hl,lea60h		;1170
	ld (hl),c		;1173
	inc l			;1174
	ld (hl),e		;1175
	inc l			;1176
	ld (hl),d		;1177
	jp 04310h		;1178
	ld de,l0010h		;117b
	exx			;117e
	ld ix,le900h		;117f
	ld de,le2d8h		;1183
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
l1198h:
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
	jp l51a1h+1		;11b0
	ld a,(le3aah)		;11b3
	or a			;11b6
	ret nz			;11b7
	call sub_4112h		;11b8
	call 051c1h		;11bb
	jp l4107h+1		;11be
	ld de,le2a8h		;11c1
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
	ld de,le2a8h		;11d3
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
	call nz,sub_52b8h	;11fc
l11ffh:
	exx			;11ff
l1200h:
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
	jp l51ffh		;120f
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
	ld a,(le201h)		;1227
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
	call sub_4b8eh		;126b
	pop de			;126e
	jp l51ffh		;126f
l1272h:
	push de			;1272
	call 04ca3h		;1273
	pop de			;1276
	jp l51ffh		;1277
l127ah:
	ld a,(ix+00bh)		;127a
	and 03fh		;127d
	ld b,a			;127f
	jp z,l51ffh		;1280
	ld a,(ix+004h)		;1283
	ld (de),a		;1286
	inc e			;1287
	ld a,(ix+006h)		;1288
	ld (de),a		;128b
	inc e			;128c
	ld a,(ix+030h)		;128d
	ld (de),a		;1290
	inc e			;1291
l1292h:
	ld a,(ix+031h)		;1292
	ld (de),a		;1295
	inc e			;1296
	dec b			;1297
	jp z,l51ffh		;1298
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
	jp l51ffh		;12b5
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
l1351h:
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
	ld de,le331h		;1369
	ld bc,l000ch		;136c
	ld (hl),000h		;136f
	ldir			;1371
	call sub_8060h		;1373
	ld a,(le20bh)		;1376
	or a			;1379
	jr nz,l1382h		;137a
	ld a,(le20dh)		;137c
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
	ld hl,l3ad3h+1		;1392
	call sub_4a1dh		;1395
	ld b,008h		;1398
	ld a,015h		;139a
l139ch:
	exx			;139c
	out (c),a		;139d
	inc a			;139f
	exx			;13a0
	djnz l139ch		;13a1
	ld hl,03ac1h		;13a3
	call sub_4a1dh		;13a6
	ld hl,le334h		;13a9
	ld bc,00901h		;13ac
	ld a,(le331h)		;13af
	dec a			;13b2
	ld d,a			;13b3
l13b4h:
	dec d			;13b4
	call 0542eh		;13b5
	inc hl			;13b8
	inc c			;13b9
	djnz l13b4h		;13ba
	ld a,(le439h)		;13bc
	or a			;13bf
	ret nz			;13c0
	ld a,(le20bh)		;13c1
	or a			;13c4
	ld a,001h		;13c5
	jr nz,l13f6h		;13c7
	ld de,0e330h		;13c9
	ld a,(de)		;13cc
	ld b,a			;13cd
	or a			;13ce
	jr z,l13f5h		;13cf
	ld de,le333h		;13d1
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
l13f9h:
	ld (lf000h),hl		;13f9
	push af			;13fc
	call sub_415bh		;13fd
	ld hl,(lf000h)		;1400
	call sub_4a1dh		;1403
	exx			;1406
	pop af			;1407
	ld b,a			;1408
	ld hl,l9bd0h		;1409
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
	jp nz,l5420h		;1422
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
	call sub_54d2h		;14cd
	jr l14e6h		;14d0
	ld a,b			;14d2
	ld hl,l10a8h		;14d3
	ld bc,l0040h		;14d6
	jp l0056h		;14d9
	ld a,(le1d5h)		;14dc
	dec a			;14df
	jr z,l14e6h		;14e0
	dec a			;14e2
	jr z,l1500h		;14e3
	ret			;14e5
l14e6h:
	ld de,le43ah		;14e6
	ld hl,l3adah		;14e9
	ld b,001h		;14ec
	call sub_5bf7h		;14ee
	xor a			;14f1
	ld (le1d5h),a		;14f2
	ld a,(le43ah)		;14f5
l14f8h:
	cp 004h			;14f8
	ret nc			;14fa
	ld a,021h		;14fb
	jp l4ae4h		;14fd
l1500h:
	ld a,021h		;1500
	call l4ae4h		;1502
l1505h:
	ld a,(le439h)		;1505
	sub 003h		;1508
	jr nz,l1514h		;150a
	call 0aa2fh		;150c
	call 0aaech		;150f
	jr l1534h		;1512
l1514h:
	dec a			;1514
l1515h:
	jr nz,l1534h		;1515
	ld hl,le445h		;1517
	ld a,(hl)		;151a
	or a			;151b
	jr z,l1525h		;151c
	ld (hl),000h		;151e
	call 07f98h		;1520
	jr l1531h		;1523
l1525h:
	ld a,(le401h)		;1525
	or a			;1528
	ld a,001h		;1529
	jr z,l152eh		;152b
	inc a			;152d
l152eh:
	ld (le400h),a		;152e
l1531h:
	call sub_435fh		;1531
l1534h:
	xor a			;1534
	ld (le439h),a		;1535
	ld (le1d5h),a		;1538
	jp l5387h		;153b
	ld a,(0e20fh)		;153e
	ld hl,0554fh		;1541
	call sub_407ah		;1544
	ld l,(hl)		;1547
	ld h,0e3h		;1548
	ld (hl),000h		;154a
	jp l53a3h		;154c
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
l1573h:
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
l15c1h:
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
l15f8h:
	cp c			;15f8
l15f9h:
	ld (hl),h		;15f9
	set 1,a			;15fa
	ld (hl),h		;15fc
	ret nc			;15fd
	ret c			;15fe
	or h			;15ff
	nop			;1600
	ld hl,le1c3h		;1601
	inc (hl)		;1604
	ld hl,l5a3eh		;1605
	ld bc,(le1c0h)		;1608
	ld a,c			;160c
	cp 003h			;160d
	jr nc,l1612h		;160f
	push hl			;1611
l1612h:
	call sub_4084h		;1612
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
	ld a,(le1c3h)		;162d
	rra			;1630
	ret nc			;1631
	call l626ah+1		;1632
	ret nz			;1635
	xor a			;1636
	jp l571fh		;1637
l163ah:
	djnz l1651h		;163a
	ld hl,le1c4h		;163c
	dec (hl)		;163f
	ret nz			;1640
	call sub_4133h		;1641
	call sub_615bh		;1644
	call 0b64fh		;1647
	call l4107h+1		;164a
	xor a			;164d
	jp l571fh		;164e
l1651h:
	djnz l1668h		;1651
	call sub_4133h		;1653
	call sub_b737h		;1656
	call l4107h+1		;1659
	ld a,(le1d6h+1)		;165c
	and a			;165f
	ret nz			;1660
	xor a			;1661
	call l5773h+2		;1662
	jp l5722h		;1665
l1668h:
	call sub_5d0ch		;1668
	call 04a10h		;166b
	call l4136h+1		;166e
	call sub_b6cdh		;1671
	call 04157h		;1674
	call 06237h		;1677
	jp l5722h		;167a
	djnz l1692h		;167d
	call sub_4133h		;167f
	call sub_b77ch		;1682
	call l4107h+1		;1685
	ld hl,le1c4h		;1688
	dec (hl)		;168b
	jp nz,061ech		;168c
	jp l5773h		;168f
l1692h:
	call sub_621eh		;1692
	xor a			;1695
	jp l571fh		;1696
	djnz l16abh		;1699
	call sub_4133h		;169b
	call sub_a000h		;169e
	call l4107h+1		;16a1
	ld a,(le1d6h+1)		;16a4
	and a			;16a7
	ret nz			;16a8
	jr l1722h		;16a9
l16abh:
	djnz l16bch		;16ab
	call sub_4133h		;16ad
	call sub_615bh		;16b0
	call 0b64fh		;16b3
	call l4107h+1		;16b6
	jp l5722h		;16b9
l16bch:
	djnz l16d0h		;16bc
	call sub_4133h		;16be
	call sub_b737h		;16c1
	call l4107h+1		;16c4
	ld a,(le1d6h+1)		;16c7
	and a			;16ca
	ret nz			;16cb
	xor a			;16cc
	jp l571fh		;16cd
l16d0h:
	djnz l16e1h		;16d0
	ld hl,le1c4h		;16d2
	dec (hl)		;16d5
	jr z,l171dh		;16d6
	call sub_4133h		;16d8
	call sub_b77ch		;16db
	jp l4107h+1		;16de
l16e1h:
	djnz l16f6h		;16e1
	ld a,043h		;16e3
	call l4ae4h		;16e5
	call 04a10h		;16e8
	call sub_6210h		;16eb
	call sub_5a95h		;16ee
	call sub_5ef6h		;16f1
	jr l1722h		;16f4
l16f6h:
	djnz l1711h		;16f6
	call 05f2ah		;16f8
	ld a,(le1d3h)		;16fb
	or a			;16fe
	ret nz			;16ff
	ld a,043h		;1700
sub_1702h:
	call l4ae4h		;1702
l1705h:
	xor a			;1705
	ld (le1c0h),a		;1706
	ld a,020h		;1709
	ld (le1c4h),a		;170b
	jp l577ch		;170e
l1711h:
	call 04a10h		;1711
	call sub_4133h		;1714
	call sub_a643h		;1717
	call l4107h+1		;171a
l171dh:
	ld a,020h		;171d
l171fh:
	ld (le1c4h),a		;171f
l1722h:
	ld hl,le1c1h		;1722
	inc (hl)		;1725
	ret			;1726
	djnz l1744h		;1727
	ld hl,le1c4h		;1729
	dec (hl)		;172c
	jr z,l1722h		;172d
	ld a,(le1c2h)		;172f
	bit 5,a			;1732
	ld de,0b260h		;1734
	jr z,l173ch		;1737
	ld de,0b26ah		;1739
l173ch:
	bit 2,(hl)		;173c
	jp z,l4a6bh		;173e
	jp 04a82h		;1741
l1744h:
	djnz l1754h		;1744
	call 04a10h		;1746
	call sub_4133h		;1749
	call sub_bfaah		;174c
	call l4107h+1		;174f
	jr l1722h		;1752
l1754h:
	djnz l1766h		;1754
	call sub_4133h		;1756
	call 0be09h		;1759
	call l4107h+1		;175c
	ld a,(le1d6h+1)		;175f
	and a			;1762
	ret nz			;1763
	jr l1722h		;1764
l1766h:
	djnz l1781h		;1766
	ld a,(le0a0h)		;1768
	or a			;176b
	ret nz			;176c
	call 04a10h		;176d
	call 05a9dh		;1770
	ld a,020h		;1773
	ld (le1c4h),a		;1775
l1778h:
	ld hl,le1c0h		;1778
	inc (hl)		;177b
	xor a			;177c
	ld (le1c1h),a		;177d
	ret			;1780
l1781h:
	ld a,03eh		;1781
	call l4ae4h		;1783
	ld a,050h		;1786
	jr l171fh		;1788
	djnz l17a1h		;178a
	ld hl,le1c4h		;178c
	dec (hl)		;178f
	ret nz			;1790
	ld de,lb278h		;1791
	call 04a82h		;1794
	call sub_60fdh		;1797
	ld a,001h		;179a
	ld (le1d3h),a		;179c
	jr l1778h		;179f
l17a1h:
	call sub_5adah		;17a1
	ret p			;17a4
	ld hl,0e200h		;17a5
	ld a,(hl)		;17a8
	sub 001h		;17a9
	daa			;17ab
	ld (hl),a		;17ac
	call sub_58c3h		;17ad
	call l57cdh+1		;17b0
	call sub_5ba3h		;17b3
	call sub_5366h		;17b6
	call sub_58c3h		;17b9
	ld a,(le1c2h)		;17bc
	and 020h		;17bf
	ld a,010h		;17c1
	jp z,l571fh		;17c3
	call sub_5a82h		;17c6
	ld a,078h		;17c9
	jp l571fh		;17cb
	call sub_4112h		;17ce
	ld ix,06048h		;17d1
	call sub_4595h		;17d5
	jp l4107h+1		;17d8
	call sub_416dh		;17db
	ld a,(le1e6h)		;17de
	and a			;17e1
	ld a,00ah		;17e2
	jp nz,l5706h		;17e4
	ld a,(le1d3h)		;17e7
	or a			;17ea
	jp z,l5773h		;17eb
	ld a,(le1dah)		;17ee
	and a			;17f1
	ld a,008h		;17f2
	jp nz,l5706h		;17f4
	ld a,(le400h)		;17f7
	dec a			;17fa
	ret m			;17fb
	ld a,(le3d0h)		;17fc
	or a			;17ff
l1800h:
	ret nz			;1800
	ld a,(le3beh+2)		;1801
	or a			;1804
	ret nz			;1805
	call 05928h		;1806
	ret nc			;1809
	ld a,0f3h		;180a
	call l4ae4h		;180c
	call sub_bd6dh		;180f
	ld a,009h		;1812
	jp l5706h		;1814
	ld a,(0e200h)		;1817
	or a			;181a
	jr z,l183ah		;181b
	ld a,(le240h)		;181d
	or a			;1820
	jr z,l1835h		;1821
l1823h:
	ld hl,0e200h		;1823
	ld de,le240h		;1826
	ld b,040h		;1829
	call sub_5c88h		;182b
	ld hl,le1c2h		;182e
	ld a,(hl)		;1831
	xor 080h		;1832
	ld (hl),a		;1834
l1835h:
	ld a,004h		;1835
	jp l5706h		;1837
l183ah:
	ld a,042h		;183a
	call l4ae4h		;183c
	jp l5773h		;183f
	djnz l1896h		;1842
	call 05928h		;1844
	jr nc,l1851h		;1847
	ld a,0f3h		;1849
	call l4ae4h		;184b
	jp l5722h		;184e
l1851h:
	call 05942h		;1851
	ld a,(le078h)		;1854
	or a			;1857
	ret nz			;1858
	ld a,(le20ch)		;1859
	and a			;185c
	jr z,l1880h		;185d
	ld hl,le1fah		;185f
	ld a,(le1c2h)		;1862
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
	ld (le20bh),a		;1875
l1878h:
	ld (le20dh),a		;1878
	ld a,003h		;187b
	ld (0e200h),a		;187d
l1880h:
	ld a,(le240h)		;1880
	or a			;1883
	jr nz,l1823h		;1884
	ld a,(le20ch)		;1886
	and a			;1889
	jr nz,l1835h		;188a
	ld hl,le1c2h		;188c
	ld a,(hl)		;188f
	and 0bfh		;1890
	ld (hl),a		;1892
	jp 05700h		;1893
l1896h:
	djnz l18a6h		;1896
	call 05928h		;1898
	ret nc			;189b
	ld a,0f2h		;189c
	call l4ae4h		;189e
	ld a,001h		;18a1
	jp l577ch+1		;18a3
l18a6h:
	call sub_5adah		;18a6
	ret p			;18a9
	call sub_58c3h		;18aa
	ld de,0b28eh		;18ad
	call l4a6bh		;18b0
	call sub_5a82h		;18b3
	call sub_5c12h		;18b6
	call sub_5ba3h		;18b9
	xor a			;18bc
	ld (le20ch),a		;18bd
l18c0h:
	jp l571fh		;18c0
	call l4136h+1		;18c3
	call sub_b736h		;18c6
	call sub_b6f0h		;18c9
	jp 04157h		;18cc
	xor a			;18cf
	ld (le1dah),a		;18d0
	call sub_7c1ch		;18d3
	call sub_5ba3h		;18d6
	call l5387h		;18d9
	ld hl,le400h		;18dc
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
	ld (le439h),a		;18ef
	ld (le1d5h),a		;18f2
	call sub_435fh		;18f5
l18f8h:
	ld a,005h		;18f8
	jp l5706h		;18fa
	call 05928h		;18fd
	jr c,l191eh		;1900
	call sub_bd82h		;1902
	ld a,(le400h)		;1905
	and a			;1908
	jp m,077b6h		;1909
	call sub_a78ch		;190c
	call sub_aa53h		;190f
	call l4136h+1		;1912
	call sub_a000h		;1915
	call 04157h		;1918
	jp 077b6h		;191b
l191eh:
	ld a,0f2h		;191e
	call l4ae4h		;1920
	ld a,005h		;1923
	jp l5706h		;1925
	ld a,(le1c2h)		;1928
	and 040h		;192b
	ret z			;192d
	ld a,006h		;192e
	call sub_0141h		;1930
l1933h:
	cpl			;1933
	and 020h		;1934
	ld hl,le308h+2		;1936
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
	ld (le20ch),a		;194c
	ld de,lb29bh		;194f
	jp 04a82h		;1952
	djnz l1961h		;1955
	ld a,(le0a0h)		;1957
	or a			;195a
	ret nz			;195b
	ld a,030h		;195c
	jp l571fh		;195e
l1961h:
	djnz l1981h		;1961
	ld hl,le1c4h		;1963
	dec (hl)		;1966
	ret nz			;1967
	call 04a10h		;1968
	ld de,lb2b5h		;196b
	call l4a6bh		;196e
	xor a			;1971
	ld (le22dh),a		;1972
	ld (le22eh),a		;1975
	ld hl,l0000h		;1978
	ld (lf0f7h),hl		;197b
	jp l571fh		;197e
l1981h:
	djnz l19ceh		;1981
	call 05a22h		;1983
	ld a,(le22dh)		;1986
	or a			;1989
	ld de,lb2d0h		;198a
	call nz,l4a6bh		;198d
	ld a,(le22dh)		;1990
	and a			;1993
	jr z,l19b2h		;1994
	call 05a30h		;1996
	ld a,(le22eh)		;1999
	or a			;199c
	ret z			;199d
	ld de,lb2d0h		;199e
	call 04a82h		;19a1
	ld a,078h		;19a4
	ld (le1c4h),a		;19a6
	ld de,lb2f4h		;19a9
	call l4a6bh		;19ac
	jp l571fh		;19af
l19b2h:
	ld de,00258h		;19b2
	call 05d89h		;19b5
	ret c			;19b8
	ld de,lb2c0h		;19b9
	call 04a82h		;19bc
	ld de,0b2e1h		;19bf
	call l4a6bh		;19c2
	xor a			;19c5
	ld (le1c4h),a		;19c6
	ld a,005h		;19c9
	jp l577ch+1		;19cb
l19ceh:
	djnz l19edh		;19ce
	ld hl,le1c4h		;19d0
	dec (hl)		;19d3
	ret nz			;19d4
	ld a,04ah		;19d5
	ld (le404h),a		;19d7
	ld a,050h		;19da
	ld (le406h),a		;19dc
	call 0aa2fh		;19df
sub_19e2h:
	call 04c76h		;19e2
	call 04a10h		;19e5
	ld a,008h		;19e8
	jp l5706h		;19ea
l19edh:
	djnz l1a05h		;19ed
	ld hl,le1c4h		;19ef
	dec (hl)		;19f2
	ret nz			;19f3
	call 04a10h		;19f4
	xor a			;19f7
	ld (0e200h),a		;19f8
	ld a,(le240h)		;19fb
	or a			;19fe
	jp nz,05823h		;19ff
	jp 0588ch		;1a02
l1a05h:
	call sub_4117h		;1a05
	call sub_4133h		;1a08
	call sub_b994h		;1a0b
	call l4107h+1		;1a0e
	ld a,(le1e6h)		;1a11
	or a			;1a14
	ret nz			;1a15
	ld a,(le1d6h)		;1a16
	or a			;1a19
	jp nz,0571dh		;1a1a
	ld a,008h		;1a1d
	jp l5706h		;1a1f
	ld a,007h		;1a22
	call sub_0141h		;1a24
	bit 1,a			;1a27
	ret nz			;1a29
	ld a,001h		;1a2a
	ld (le22dh),a		;1a2c
	ret			;1a2f
	ld a,008h		;1a30
	call sub_0141h		;1a32
	bit 0,a			;1a35
	ret nz			;1a37
	ld a,001h		;1a38
l1a3ah:
	ld (le22eh),a		;1a3a
	ret			;1a3d
	call l5d35h+2		;1a3e
	ld hl,le1d1h		;1a41
	call 05d30h		;1a44
	or a			;1a47
	ret z			;1a48
	ld hl,le1c4h		;1a49
	ld (hl),000h		;1a4c
	ld hl,le1c0h		;1a4e
	ld de,le1d2h		;1a51
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
	ld (le1c2h),a		;1a63
	ld (hl),003h		;1a66
	inc hl			;1a68
	ld c,000h		;1a69
	ld (hl),c		;1a6b
	dec c			;1a6c
	jp l61f5h+1		;1a6d
l1a70h:
	ld (hl),001h		;1a70
	inc hl			;1a72
	xor a			;1a73
	ld (hl),a		;1a74
	ld (le1d6h+1),a		;1a75
	ld a,043h		;1a78
	jp l4ae4h		;1a7a
l1a7dh:
	ld a,(de)		;1a7d
	xor 001h		;1a7e
	ld (de),a		;1a80
	ret			;1a81
	ld a,(le1c2h)		;1a82
	bit 5,a			;1a85
	ret z			;1a87
	ld de,lb278h		;1a88
	and 080h		;1a8b
	jr z,l1a92h		;1a8d
	ld de,lb283h		;1a8f
l1a92h:
	jp l4a6bh		;1a92
	ld hl,0e200h		;1a95
	ld bc,l0e20h		;1a98
	jr l1aa3h		;1a9b
	ld hl,le1f5h		;1a9d
	ld bc,l0e2bh		;1aa0
l1aa3h:
	ld e,l			;1aa3
	ld d,h			;1aa4
	inc de			;1aa5
	ld (hl),000h		;1aa6
	ldir			;1aa8
	xor a			;1aaa
	ld (le1dah),a		;1aab
	ld (le1dch),a		;1aae
	ld hl,l5ad8h		;1ab1
	ld de,0e200h		;1ab4
	ld bc,l0002h		;1ab7
	ldir			;1aba
	ld hl,l0010h		;1abc
	ld (le207h),hl		;1abf
	xor a			;1ac2
	ld (0e209h),a		;1ac3
	ld a,(le1c2h)		;1ac6
	and 020h		;1ac9
	ret z			;1acb
	ld hl,0e200h		;1acc
	ld de,le240h		;1acf
	ld bc,l0040h		;1ad2
	ldir			;1ad5
	ret			;1ad7
	inc bc			;1ad8
	ld bc,lc421h		;1ad9
	pop hl			;1adc
	dec (hl)		;1add
	ret m			;1ade
	ld a,(hl)		;1adf
	ld h,038h		;1ae0
	xor 01fh		;1ae2
	ld l,a			;1ae4
	ld b,016h		;1ae5
	ld a,(le1c0h)		;1ae7
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
	ld a,(le1c2h)		;1b04
	add a,a			;1b07
	ret p			;1b08
	ld hl,le1fbh		;1b09
	jr nc,l1b10h		;1b0c
	ld l,0f6h		;1b0e
l1b10h:
	ld a,(hl)		;1b10
	add a,e			;1b11
	daa			;1b12
	ld (hl),a		;1b13
	inc l			;1b14
	ld a,(hl)		;1b15
l1b16h:
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
	ld a,(lf0f5h)		;1b30
	bit 1,a			;1b33
	ret nz			;1b35
	ld hl,l9999h		;1b36
	ld (0e1f1h),hl		;1b39
	ld (le1f3h),hl		;1b3c
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
	call sub_5b92h		;1b65
l1b68h:
	ld a,(lf0f5h)		;1b68
	bit 1,a			;1b6b
	ret nz			;1b6d
	ld a,(le1c2h)		;1b6e
	add a,a			;1b71
	ld hl,le1feh		;1b72
	jr nc,l1b79h		;1b75
	ld l,0f9h		;1b77
l1b79h:
	ld b,004h		;1b79
	ld de,le1f4h		;1b7b
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
	call l4ae4h		;1b9d
	jp 05bddh		;1ba0
	ld de,lb243h		;1ba3
	call l4a6bh		;1ba6
	ld a,(le1c2h)		;1ba9
	ld de,lb256h		;1bac
	add a,a			;1baf
	jr nc,l1bb5h		;1bb0
	ld de,0b25bh		;1bb2
l1bb5h:
	call l4a6bh		;1bb5
	call 05bddh		;1bb8
	ld de,le1f4h		;1bbb
	ld hl,l3af6h		;1bbe
	call 05bd2h		;1bc1
	ld a,(le1c2h)		;1bc4
	ld hl,l3ae9h		;1bc7
	ld de,le1feh		;1bca
	add a,a			;1bcd
	jr nc,l1bd2h		;1bce
	ld e,0f9h		;1bd0
l1bd2h:
	ld b,005h		;1bd2
	call sub_4a1dh		;1bd4
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
	call sub_4a1dh		;1bea
	exx			;1bed
	ld a,c			;1bee
	exx			;1bef
	ld c,a			;1bf0
	xor a			;1bf1
	out (c),a		;1bf2
	inc hl			;1bf4
	jr l1c08h		;1bf5
l1bf7h:
	call sub_4a1dh		;1bf7
	exx			;1bfa
	ld a,c			;1bfb
	exx			;1bfc
	ld c,a			;1bfd
l1bfeh:
	ld a,(de)		;1bfe
	rra			;1bff
	rra			;1c00
	rra			;1c01
sub_1c02h:
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
	ld a,(lf0f5h)		;1c12
	or a			;1c15
	ret nz			;1c16
	ld de,0b2aah		;1c17
	call l4a6bh		;1c1a
	ld de,le1f4h		;1c1d
	ld hl,l3a2bh		;1c20
	ld b,005h		;1c23
	call sub_5bf7h		;1c25
	call sub_413bh		;1c28
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
	ld de,lf000h		;1c44
	ld (de),a		;1c47
	ld a,(le1c3h)		;1c48
	and 077h		;1c4b
	inc e			;1c4d
	ld (de),a		;1c4e
	and 007h		;1c4f
	add a,a			;1c51
	ld b,a			;1c52
	add a,a			;1c53
	add a,a			;1c54
	add a,b			;1c55
	ld hl,lbbb9h		;1c56
	call sub_407ah		;1c59
	dec e			;1c5c
	ld a,(de)		;1c5d
	ld b,a			;1c5e
	and 00fh		;1c5f
	ld e,l			;1c61
	ld d,h			;1c62
	call sub_407ah		;1c63
	ld c,(hl)		;1c66
	ld a,b			;1c67
	rra			;1c68
	rra			;1c69
	rra			;1c6a
	rra			;1c6b
	and 00fh		;1c6c
	call sub_407fh		;1c6e
	ld a,(de)		;1c71
	rla			;1c72
	rla			;1c73
	rla			;1c74
	rla			;1c75
	and 0f0h		;1c76
	or c			;1c78
	ld de,lf002h		;1c79
	ld (de),a		;1c7c
	ld hl,03a6eh		;1c7d
	ld b,002h		;1c80
	call sub_5bf7h		;1c82
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
	ld hl,le1aeh		;1cbf
	ld (hl),a		;1cc2
	inc hl			;1cc3
	ld (hl),a		;1cc4
	inc hl			;1cc5
	ld de,le1b1h		;1cc6
	ld (hl),001h		;1cc9
	ld bc,l0009h		;1ccb
	ldir			;1cce
	ld a,004h		;1cd0
	ld (07000h),a		;1cd2
	inc a			;1cd5
	ld (l9000h),a		;1cd6
	inc a			;1cd9
	ld (lb000h),a		;1cda
	call 071aeh		;1cdd
	ld a,(lf0f0h+1)		;1ce0
	ld (07000h),a		;1ce3
	ld a,(lf0f2h)		;1ce6
	ld (l9000h),a		;1ce9
	ld a,(lf0f3h)		;1cec
	ld (lb000h),a		;1cef
	ld a,0bfh		;1cf2
	ld (le1a6h),a		;1cf4
	ld e,a			;1cf7
	ld a,007h		;1cf8
	call sub_0093h		;1cfa
	ld a,043h		;1cfd
	call l4ae4h		;1cff
sub_1d02h:
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
	jp lcb02h		;1d1a
	ld (bc),a		;1d1d
	jp po,l7f0eh		;1d1e
	rlca			;1d21
	halt			;1d22
	inc bc			;1d23
	call po,0070eh		;1d24
	jp l4077h		;1d27
	call sub_5d40h		;1d2a
	ld hl,le1c9h		;1d2d
	ld c,(hl)		;1d30
	ld (hl),a		;1d31
	xor c			;1d32
	and (hl)		;1d33
	dec hl			;1d34
	ld (hl),a		;1d35
	ret			;1d36
	ld e,08fh		;1d37
	call sub_5d72h		;1d39
	and 03fh		;1d3c
	jr l1d47h		;1d3e
	ld e,08fh		;1d40
	call sub_5d72h		;1d42
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
	call l4107h+1		;1d80
	call 0aa2fh		;1d83
	jp sub_4133h		;1d86
	ld hl,(lf0f7h)		;1d89
	rst 20h			;1d8c
	ret			;1d8d
	call sub_5da0h		;1d8e
	jp l69efh		;1d91
	call sub_5da0h		;1d94
l1d97h:
	call sub_4117h		;1d97
	call sub_4b43h		;1d9a
	jp sub_4133h		;1d9d
	call sub_4144h		;1da0
	ld ix,lb3d0h		;1da3
sub_1da7h:
	call sub_4595h		;1da7
	xor a			;1daa
	ld (lf000h),a		;1dab
	ld ix,0b3eah		;1dae
	call 0454eh		;1db2
	ld a,001h		;1db5
	ld (lf000h),a		;1db7
	ld ix,lb3fbh		;1dba
sub_1dbeh:
	call 0454eh		;1dbe
	call sub_413bh		;1dc1
	ld hl,l1800h		;1dc4
	ld de,la9bah		;1dc7
	jp sub_4a8ch		;1dca
	ld hl,l2038h		;1dcd
	ld de,le500h		;1dd0
	ld bc,00158h		;1dd3
	call sub_0059h		;1dd6
	ld hl,l24feh+2		;1dd9
	ld de,le500h		;1ddc
	ld bc,00158h		;1ddf
	exx			;1de2
	ld b,002h		;1de3
l1de5h:
	call 04a3ah		;1de5
	ld a,0f0h		;1de8
	ld hl,l04feh+2		;1dea
	ld bc,00158h		;1ded
	ld d,002h		;1df0
	call sub_4a4ch		;1df2
	call sub_413bh		;1df5
	ld ix,sub_a000h		;1df8
	call sub_4595h		;1dfc
	xor a			;1dff
	ld (lf000h),a		;1e00
	ld ix,la00dh		;1e03
	call 0454eh		;1e07
	jr l1d97h		;1e0a
	call 05e5fh		;1e0c
	call 0cb84h		;1e0f
l1e12h:
	jr l1d97h		;1e12
	call 05e59h		;1e14
	call 05e20h		;1e17
	jp l69f2h		;1e1a
	call l5e62h+2		;1e1d
l1e20h:
	call sub_4144h		;1e20
	ld de,laff8h		;1e23
	ld hl,02130h		;1e26
	ld bc,l03d8h		;1e29
	call 04a37h		;1e2c
	call sub_413bh		;1e2f
	ld de,0bc09h		;1e32
	ld hl,l2508h		;1e35
	ld bc,002e8h		;1e38
	call 04a37h		;1e3b
	ld de,lbef1h		;1e3e
	ld hl,l2108h		;1e41
	ld bc,sub_0027h+1	;1e44
	call 04a37h		;1e47
	ld a,(lf000h)		;1e4a
	ld d,a			;1e4d
	ld a,0f0h		;1e4e
	ld hl,l0008h		;1e50
	ld bc,007f0h		;1e53
	jp 04a4ah		;1e56
	call l5e62h+2		;1e59
	jp l69f2h		;1e5c
	call l5e62h+2		;1e5f
l1e62h:
	jr l1e12h		;1e62
	call l4136h+1		;1e64
	call sub_b6cdh		;1e67
	ld hl,l30a0h		;1e6a
	ld de,le500h		;1e6d
	ld bc,00030h		;1e70
	call sub_0059h		;1e73
	ld hl,l2008h		;1e76
	ld de,le500h		;1e79
	ld bc,00030h		;1e7c
	call 04a37h		;1e7f
	ld hl,l2108h		;1e82
	ld de,le500h		;1e85
	ld bc,l00d0h		;1e88
	call sub_0059h		;1e8b
	ld hl,l2038h		;1e8e
	ld de,le500h		;1e91
	ld bc,l00d0h		;1e94
	jp 04a37h		;1e97
	call sub_5ea9h		;1e9a
	call sub_5d97h		;1e9d
	jp la435h		;1ea0
	call sub_5ea9h		;1ea3
l1ea6h:
	jp l69efh		;1ea6
	call sub_4144h		;1ea9
	ld ix,la214h		;1eac
	call sub_4595h		;1eb0
	xor a			;1eb3
	ld (lf000h),a		;1eb4
	ld ix,la228h		;1eb7
	call 0454eh		;1ebb
	ld a,001h		;1ebe
	ld (lf000h),a		;1ec0
	ld ix,0a22fh		;1ec3
	call 0454eh		;1ec7
	ld a,(l002bh)		;1eca
	and 00fh		;1ecd
	ret z			;1ecf
	ld ix,0a221h		;1ed0
	jp sub_4595h		;1ed4
	call 05ee1h		;1ed7
	jr l1ea6h		;1eda
	call 05ee1h		;1edc
	jr l1e62h		;1edf
	call sub_4144h		;1ee1
	ld ix,la143h		;1ee4
	call sub_4595h		;1ee8
	xor a			;1eeb
	ld (lf000h),a		;1eec
	ld ix,la15ch		;1eef
	jp 0454eh		;1ef3
	xor a			;1ef6
	ld (le1c9h),a		;1ef7
	ld (le1c7h),a		;1efa
	inc a			;1efd
	ld (le1d3h),a		;1efe
	ld hl,le1c6h		;1f01
sub_1f04h:
	ld a,(hl)		;1f04
	ld (le201h),a		;1f05
	inc a			;1f08
	cp 007h			;1f09
l1f0bh:
	jr c,l1f0fh		;1f0b
	ld a,002h		;1f0d
l1f0fh:
	ld (hl),a		;1f0f
	ld hl,l0001h		;1f10
	ld (0e1cbh),hl		;1f13
	xor a			;1f16
	ld (le1cdh),a		;1f17
	ld (0e20ah),a		;1f1a
	call sub_60fdh		;1f1d
	call sub_8196h		;1f20
	xor a			;1f23
	ld (le228h),a		;1f24
	jp sub_5ba3h		;1f27
	ld a,(le204h)		;1f2a
	and a			;1f2d
	jr z,l1f35h		;1f2e
l1f30h:
	xor a			;1f30
	ld (le1d3h),a		;1f31
	ret			;1f34
l1f35h:
	ld hl,0e1cbh		;1f35
	dec (hl)		;1f38
	jr z,l1f46h		;1f39
l1f3bh:
	ld a,(le1cch)		;1f3b
	or 010h			;1f3e
	ld (le1c9h),a		;1f40
	jp sub_416dh		;1f43
l1f46h:
	inc hl			;1f46
	inc hl			;1f47
	ld c,(hl)		;1f48
	inc (hl)		;1f49
	call sub_413fh		;1f4a
	ld a,(le201h)		;1f4d
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
	ld (le1cch),a		;1f62
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
	call sub_6878h		;1f77
	ret nz			;1f7a
	call sub_413fh		;1f7b
	call 05f84h		;1f7e
	jp l4107h+1		;1f81
	ld a,(le3b2h)		;1f84
	and a			;1f87
	ret z			;1f88
	ld b,a			;1f89
	ld ix,le500h		;1f8a
l1f8eh:
	xor a			;1f8e
	ld (lf000h),a		;1f8f
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
	call sub_5fb5h		;1fa9
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
	call sub_6878h		;1fd2
	ret nz			;1fd5
	call sub_413fh		;1fd6
	call sub_5fdfh		;1fd9
	jp l4107h+1		;1fdc
	ld a,(le3b2h)		;1fdf
	and a			;1fe2
	ret z			;1fe3
l1fe4h:
	ld b,a			;1fe4
	ld ix,le500h		;1fe5
	ld a,0ffh		;1fe9
	ld (lf000h),a		;1feb
l1feeh:
	push bc			;1fee
	call l5ff9h+2		;1fef
	pop bc			;1ff2
	ld de,l0010h		;1ff3
	add ix,de		;1ff6
	djnz l1feeh		;1ff8
	ret			;1ffa
l1ffbh:
	ld a,(ix+000h)		;1ffb
	and a			;1ffe
	ret z			;1fff
l2000h:
	cp 003h			;2000
	ret z			;2002
	cp 004h			;2003
	ret z			;2005
	cp 00eh			;2006
l2008h:
	jr nc,l2017h		;2008
l200ah:
	cp 00bh			;200a
	ret nc			;200c
	cp 007h			;200d
	jr nz,l2017h		;200f
	ld a,(ix+006h)		;2011
	cp 0c1h			;2014
	ret nc			;2016
l2017h:
	ld a,(ix+007h)		;2017
	ld hl,lb65eh		;201a
	call 04b67h		;201d
sub_2020h:
	ld b,(ix+009h)		;2020
	ld c,(ix+00ah)		;2023
	ld l,(ix+004h)		;2026
	ld h,(ix+006h)		;2029
	ld a,(lf000h)		;202c
	and a			;202f
	jp z,l6052h		;2030
l2033h:
	ld a,(ix+006h)		;2033
	cp 0c8h			;2036
l2038h:
	jp nc,05327h		;2038
	call 05c92h		;203b
	ex de,hl		;203e
	ld a,c			;203f
l2040h:
	push de			;2040
	ld c,(ix+009h)		;2041
	ld b,000h		;2044
	ldir			;2046
	pop de			;2048
	ld c,020h		;2049
	ex de,hl		;204b
	add hl,bc		;204c
	ex de,hl		;204d
	dec a			;204e
	jr nz,l2040h		;204f
	ret			;2051
	ld a,(ix+006h)		;2052
	cp 0c8h			;2055
	jp nc,0530ch		;2057
	call 05c92h		;205a
l205dh:
	ld b,(ix+009h)		;205d
l2060h:
	push hl			;2060
	xor a			;2061
l2062h:
	ld (hl),a		;2062
	inc hl			;2063
	djnz l2062h		;2064
	pop hl			;2066
	ld a,020h		;2067
	call sub_407ah		;2069
	dec c			;206c
	jr nz,l205dh		;206d
	ret			;206f
l2070h:
	ld c,005h		;2070
	ld a,(ix+000h)		;2072
	cp 00fh			;2075
	jr nz,l207bh		;2077
	ld c,014h		;2079
l207bh:
	ld a,(ix+008h)		;207b
	dec a			;207e
	ld a,c			;207f
	call nz,l4ae4h		;2080
	ld a,(ix+000h)		;2083
	cp 009h			;2086
	ret nz			;2088
	ld a,01bh		;2089
	ld (ix+001h),004h	;208b
	bit 0,(ix+00bh)		;208f
	jr z,l2096h		;2093
	inc a			;2095
l2096h:
	ld (ix+007h),a		;2096
	ld (ix+00dh),000h	;2099
	ret			;209d
	call sub_413fh		;209e
	call 060a7h		;20a1
	jp 04157h		;20a4
	ld a,(ix+000h)		;20a7
	cp 00eh			;20aa
	jr z,l20c3h		;20ac
	cp 010h			;20ae
	jr z,l20bah		;20b0
	dec a			;20b2
	jr z,l20cch		;20b3
	ld (ix+000h),000h	;20b5
	ret			;20b9
l20bah:
	ld (ix+00dh),0ffh	;20ba
	ld (ix+001h),008h	;20be
l20c2h:
	ret			;20c2
l20c3h:
	ld (ix+00dh),0ffh	;20c3
	ld (ix+001h),004h	;20c7
	ret			;20cb
l20cch:
	ld (ix+001h),008h	;20cc
l20d0h:
	ret			;20d0
	call 04396h		;20d1
	call sub_5ba3h		;20d4
	ld hl,l0000h		;20d7
	ld (le203h),hl		;20da
	call sub_68b9h		;20dd
	call sub_47e0h		;20e0
	ld a,(le1dbh)		;20e3
	or a			;20e6
	ret z			;20e7
	xor a			;20e8
	ld (le1dbh),a		;20e9
	ld hl,04a00h		;20ec
	ld (le403h),hl		;20ef
	ld h,050h		;20f2
	ld (le405h),hl		;20f4
	call 0aa2fh		;20f7
	jp 0aaech		;20fa
	ld a,(le201h)		;20fd
	cp 008h			;2100
l2102h:
	jr nc,l211ch		;2102
	ld hl,le206h		;2104
l2107h:
	cp (hl)			;2107
l2108h:
	jr c,l210bh		;2108
	ld (hl),a		;210a
l210bh:
	ld hl,le22ch		;210b
	ld a,(hl)		;210e
	ld (hl),000h		;210f
	and a			;2111
	jr z,l2128h		;2112
	ld a,(le201h)		;2114
	call 07c59h		;2117
	jr l211fh		;211a
l211ch:
	ld a,(le22ah)		;211c
l211fh:
	ld (le201h),a		;211f
	ld hl,l0020h		;2122
	ld (le203h),hl		;2125
l2128h:
	call 04396h		;2128
	call 04c76h		;212b
	xor a			;212e
	ld (le1d5h),a		;212f
	ld hl,le300h		;2132
	ld de,le300h+1		;2135
	ld bc,l0cffh		;2138
	ld (hl),a		;213b
	ldir			;213c
	call sub_68e4h		;213e
sub_2141h:
	call sub_68aah		;2141
	ld a,(le1c2h)		;2144
	bit 6,a			;2147
l2149h:
	jr nz,l214fh		;2149
	xor a			;214b
	ld (le228h),a		;214c
l214fh:
	call sub_6888h		;214f
	call 0aa2fh		;2152
	call sub_5366h		;2155
	jp sub_47e0h		;2158
	call 04a10h		;215b
	call sub_413fh		;215e
l2161h:
	ld ix,l55a7h		;2161
	call sub_4595h		;2165
	xor a			;2168
	ld (lf000h),a		;2169
	ld ix,l55deh		;216c
l2170h:
	call 0cb15h		;2170
	ld a,(l002bh)		;2173
	and 00fh		;2176
	jr z,l218fh		;2178
	call sub_413bh		;217a
	ld ix,sub_aa82h+1	;217d
l2181h:
	call sub_4595h		;2181
	xor a			;2184
	ld (lf000h),a		;2185
	ld ix,laa96h		;2188
	call 0454eh		;218c
l218fh:
	call l4136h+1		;218f
	call sub_b6cdh		;2192
	call sub_413bh		;2195
	ld hl,l1800h		;2198
	ld de,0aa75h		;219b
	call sub_4a8ch		;219e
	call l69efh		;21a1
	ld b,0e0h		;21a4
	call 05d25h		;21a6
	ld hl,02800h		;21a9
	call sub_61b8h		;21ac
	ld hl,l0000h		;21af
	call sub_61b8h		;21b2
	ld hl,00800h		;21b5
	xor a			;21b8
	ld de,lb8f5h		;21b9
	ld b,001h		;21bc
	jp la24ch		;21be
	ld a,(le1c0h)		;21c1
	cp 002h			;21c4
	ld de,lb904h		;21c6
	jr c,l21e7h		;21c9
	ld de,0b937h		;21cb
	call l4a6bh		;21ce
	ld de,0b950h		;21d1
l21d4h:
	ld a,(l002bh)		;21d4
	and 00fh		;21d7
	jr z,l21deh		;21d9
	ld de,0622dh		;21db
l21deh:
	call l4a6bh		;21de
	ld de,lb95ah		;21e1
l21e4h:
	jp l4a6bh		;21e4
l21e7h:
	call l4a6bh		;21e7
	jr l21e4h		;21ea
	ld hl,le1c4h		;21ec
	bit 3,(hl)		;21ef
	ld c,0ffh		;21f1
	jr nz,l21f6h		;21f3
	inc c			;21f5
l21f6h:
	ld hl,03a2ah		;21f6
l21f9h:
	ld de,03a6ah		;21f9
	ld a,(le1d2h)		;21fc
	or a			;21ff
	jr z,l2203h		;2200
	ex de,hl		;2202
l2203h:
	push de			;2203
	call 0620ah		;2204
	pop hl			;2207
	ld c,000h		;2208
	ld de,lb275h		;220a
	jp 04a73h		;220d
	ld hl,le490h		;2210
	ld de,le491h		;2213
	ld bc,l0013h		;2216
	xor a			;2219
	ld (hl),a		;221a
	ldir			;221b
	ret			;221d
	call sub_4133h		;221e
	call sub_615bh		;2221
	call sub_b636h		;2224
	call sub_61c1h		;2227
	jp l4107h+1		;222a
	rlca			;222d
	ld a,(l252eh)		;222e
	dec l			;2231
	dec h			;2232
	inc sp			;2233
	add hl,hl		;2234
	inc sp			;2235
	rst 38h			;2236
	ld hl,l0000h		;2237
	ld (le1cdh+1),hl	;223a
	call sub_4144h		;223d
	ld de,lb79fh		;2240
	call sub_4a86h		;2243
	call 04157h		;2246
	ld hl,00a00h		;2249
	ld bc,003f0h		;224c
	xor a			;224f
	call l0056h		;2250
	ld hl,03907h		;2253
	ld a,040h		;2256
	ld c,006h		;2258
	ld de,sub_000bh		;225a
l225dh:
	ld b,015h		;225d
l225fh:
	call 0004dh		;225f
	inc hl			;2262
	inc a			;2263
	djnz l225fh		;2264
	add hl,de		;2266
	dec c			;2267
	jr nz,l225dh		;2268
	ret			;226a
	ld bc,(le1cdh+1)	;226b
	ld a,0ebh		;226f
	inc b			;2271
l2272h:
	add a,015h		;2272
	djnz l2272h		;2274
	ld l,a			;2276
	ld h,b			;2277
	add hl,hl		;2278
	add hl,hl		;2279
	add hl,hl		;227a
	ld de,00a00h		;227b
	add hl,de		;227e
	ld a,c			;227f
	call sub_407ah		;2280
	ld b,015h		;2283
	ld de,l0008h		;2285
	ld a,0f0h		;2288
l228ah:
	call 0004dh		;228a
	add hl,de		;228d
	djnz l228ah		;228e
	ld hl,le1cdh+1		;2290
	ld a,(hl)		;2293
	inc a			;2294
	and 007h		;2295
	ld (hl),a		;2297
	ret nz			;2298
	inc hl			;2299
	inc (hl)		;229a
	ld a,(hl)		;229b
	cp 006h			;229c
	ret			;229e
	ld e,(ix+020h)		;229f
	ld d,(ix+021h)		;22a2
	call sub_5cadh		;22a5
	ld (ix+020h),e		;22a8
	ld (ix+021h),d		;22ab
	ret			;22ae
	ld (ix+020h),e		;22af
	ld (ix+021h),d		;22b2
	ret			;22b5
	ld a,d			;22b6
	or a			;22b7
	call m,sub_5cadh	;22b8
	ld (ix+022h),e		;22bb
	ld (ix+023h),d		;22be
	ret			;22c1
	ld a,(ix+007h)		;22c2
	add a,(ix+020h)		;22c5
	ld (ix+007h),a		;22c8
	ld a,(ix+008h)		;22cb
	adc a,(ix+021h)		;22ce
	ld (ix+008h),a		;22d1
	ret			;22d4
	ld a,(ix+009h)		;22d5
	add a,(ix+020h)		;22d8
	ld (ix+009h),a		;22db
	ld a,(ix+00ah)		;22de
	adc a,(ix+021h)		;22e1
	ld (ix+00ah),a		;22e4
	ret			;22e7
	ld e,(ix+007h)		;22e8
	ld d,(ix+008h)		;22eb
	ld a,d			;22ee
	or a			;22ef
	call m,sub_5cadh	;22f0
	ld l,(ix+022h)		;22f3
	ld h,(ix+023h)		;22f6
	rst 20h			;22f9
l22fah:
	ret			;22fa
	ld e,(ix+009h)		;22fb
	ld d,(ix+00ah)		;22fe
l2301h:
	call sub_5cadh		;2301
	ld (ix+009h),e		;2304
	ld (ix+00ah),d		;2307
	ret			;230a
	ld a,(le1c3h)		;230b
	and 01fh		;230e
	ret			;2310
	call sub_630bh		;2311
	jr nz,l231dh		;2314
	dec (ix+025h)		;2316
	jr nz,l231dh		;2319
	scf			;231b
	ret			;231c
l231dh:
	ld a,(le201h)		;231d
	cp 007h			;2320
l2322h:
	jr z,l2333h		;2322
	ld hl,(le323h)		;2324
	ld de,l0010h		;2327
	or a			;232a
	sbc hl,de		;232b
	ld de,(le203h)		;232d
l2331h:
	rst 20h			;2331
	ret			;2332
l2333h:
	ld a,(le3beh)		;2333
	or a			;2336
	ret nz			;2337
	ld de,(le203h)		;2338
	ld hl,l00dfh+1		;233c
	or a			;233f
	sbc hl,de		;2340
	ret nc			;2342
	ld hl,l01a0h		;2343
	or a			;2346
l2347h:
	sbc hl,de		;2347
l2349h:
	ccf			;2349
	ret c			;234a
	ld hl,00210h		;234b
	or a			;234e
	sbc hl,de		;234f
	ret nc			;2351
	ld hl,00240h		;2352
	or a			;2355
	sbc hl,de		;2356
	ccf			;2358
	ret c			;2359
	ld hl,l02e0h		;235a
	or a			;235d
	sbc hl,de		;235e
	ret			;2360
	ld a,(le1c3h)		;2361
	and b			;2364
	ret nz			;2365
	ld a,(ix+026h)		;2366
	inc a			;2369
	cp c			;236a
	jr c,l236eh		;236b
	xor a			;236d
l236eh:
	ld (ix+026h),a		;236e
	call 05ca6h		;2371
	ld (ix+030h),a		;2374
	ld (ix+032h),a		;2377
	ret			;237a
	ld a,r			;237b
	rrca			;237d
	rrca			;237e
	rrca			;237f
	ld hl,le1c3h		;2380
	xor (hl)		;2383
	ret			;2384
	ld ix,0e600h		;2385
	ld b,00ch		;2389
l238bh:
	push bc			;238b
	ld a,(ix+000h)		;238c
	and a			;238f
	jr z,l23a5h		;2390
	call l63ach+2		;2392
	ld a,(ix+000h)		;2395
	or a			;2398
	jr z,l23a5h		;2399
	call sub_6486h		;239b
	jr c,l23a5h		;239e
	call 064beh		;23a0
	jr nc,l23a5h		;23a3
l23a5h:
	ld bc,l0040h		;23a5
	add ix,bc		;23a8
	pop bc			;23aa
	djnz l238bh		;23ab
	ret			;23ad
	ld a,(ix+000h)		;23ae
	cp 026h			;23b1
	jr z,l23c6h		;23b3
	ld a,(le3d0h)		;23b5
	or a			;23b8
	ret nz			;23b9
	ld a,(le439h)		;23ba
	cp 005h			;23bd
	jr nz,l23c6h		;23bf
	ld a,(le1c3h)		;23c1
l23c4h:
	rra			;23c4
	ret c			;23c5
l23c6h:
	ld a,(ix+000h)		;23c6
	dec a			;23c9
	call sub_4084h		;23ca
	inc h			;23cd
	ld h,(hl)		;23ce
	ld a,l			;23cf
	ld h,h			;23d0
	adc a,d			;23d1
	sbc a,b			;23d2
	jp m,097a2h		;23d3
	sbc a,l			;23d6
	ld c,a			;23d7
	ld h,h			;23d8
	sub e			;23d9
	and l			;23da
	inc de			;23db
	sbc a,d			;23dc
	ld e,c			;23dd
	sbc a,e			;23de
	ld c,a			;23df
	ld h,h			;23e0
	ld h,d			;23e1
	and (hl)		;23e2
	ld sp,hl		;23e3
	sbc a,d			;23e4
	push bc			;23e5
	sbc a,e			;23e6
	ld h,l			;23e7
	and e			;23e8
	inc c			;23e9
	sbc a,h			;23ea
	defb 0edh ;next byte illegal after ed	;23eb
	or a			;23ec
	cp a			;23ed
	sbc a,h			;23ee
	ld c,a			;23ef
	ld h,h			;23f0
	ld c,a			;23f1
	ld h,h			;23f2
	ld e,e			;23f3
	sbc a,h			;23f4
	ld c,a			;23f5
	ld h,h			;23f6
	dec d			;23f7
	cp h			;23f8
	ld c,a			;23f9
	ld h,h			;23fa
	ld c,a			;23fb
	ld h,h			;23fc
	sub l			;23fd
	and h			;23fe
	ld c,a			;23ff
	ld h,h			;2400
l2401h:
	dec bc			;2401
sub_2402h:
	and l			;2402
	ld c,a			;2403
	ld h,h			;2404
	nop			;2405
	or a			;2406
	ld c,a			;2407
	ld h,h			;2408
	jr nz,l23c4h		;2409
	add a,a			;240b
	cp d			;240c
	ld c,a			;240d
	ld h,h			;240e
	nop			;240f
	or a			;2410
	ld (hl),h		;2411
	ld h,h			;2412
	ld l,e			;2413
	ld h,h			;2414
	defb 0edh ;next byte illegal after ed	;2415
	sbc a,a			;2416
	ld b,h			;2417
	sub (hl)		;2418
	ld c,a			;2419
	ld h,h			;241a
	ld c,a			;241b
	ld h,h			;241c
	ld c,a			;241d
	ld h,h			;241e
	ld c,a			;241f
	ld h,h			;2420
	ld c,a			;2421
	ld h,h			;2422
	and c			;2423
	sub (hl)		;2424
	and c			;2425
	sub (hl)		;2426
	ld c,a			;2427
	ld h,h			;2428
	sbc a,096h		;2429
	defb 0edh ;next byte illegal after ed	;242b
	sbc a,a			;242c
	jp p,061bah		;242d
	ld (hl),h		;2430
	ld b,h			;2431
	sub (hl)		;2432
	ld e,c			;2433
	sub e			;2434
	ld c,a			;2435
	ld h,h			;2436
	ld (l4f96h),a		;2437
	ld h,h			;243a
	ld h,d			;243b
	ld h,h			;243c
	ld c,(hl)		;243d
	sub a			;243e
	ld c,(hl)		;243f
	sub a			;2440
	ld de,l1198h		;2441
	sbc a,b			;2444
	ld c,a			;2445
	ld h,h			;2446
	ld d,b			;2447
	ld h,h			;2448
l2449h:
	ld c,a			;2449
	ld h,h			;244a
	ld d,b			;244b
	ld h,h			;244c
	ld e,c			;244d
	ld h,h			;244e
	ret			;244f
	call l4136h+1		;2450
	call sub_bf10h		;2453
	jp 04157h		;2456
	call l4136h+1		;2459
	call 0bc24h		;245c
	jp 04157h		;245f
	call l4136h+1		;2462
	call sub_a643h+1	;2465
	jp 04157h		;2468
	call l4136h+1		;246b
	call sub_af36h		;246e
	jp 04157h		;2471
	call l4136h+1		;2474
	call sub_ac0ch		;2477
	jp 04157h		;247a
l247dh:
	call l4136h+1		;247d
	call sub_b9a0h		;2480
	jp 04157h		;2483
	ld a,(le3d0h)		;2486
	or a			;2489
	ld de,l0008h		;248a
	ld a,(ix+010h)		;248d
	call z,sub_cb5ah	;2490
	ld a,(0e320h)		;2493
	or d			;2496
	ret z			;2497
	ld a,(ix+006h)		;2498
	sub e			;249b
	ld (ix+006h),a		;249c
	ret nc			;249f
	call 064a8h		;24a0
	call sub_6514h		;24a3
	scf			;24a6
	ret			;24a7
	ld a,(ix+000h)		;24a8
	sub 02ch		;24ab
	cp 002h			;24ad
	jr c,l24b9h		;24af
l24b1h:
	cp 003h			;24b1
	ret nz			;24b3
	ld a,(ix+02ah)		;24b4
	dec a			;24b7
	ret z			;24b8
l24b9h:
	xor a			;24b9
	ld (le357h),a		;24ba
	ret			;24bd
	ld a,(le439h)		;24be
	cp 005h			;24c1
	jr nz,l24cbh		;24c3
	ld a,(le1c3h)		;24c5
	rra			;24c8
	jr c,l24dah		;24c9
l24cbh:
	bit 2,(ix+010h)		;24cb
	jr z,l24dah		;24cf
	call 064e1h		;24d1
	ret c			;24d4
	call sub_6514h		;24d5
	or a			;24d8
	ret			;24d9
l24dah:
	call 064f3h		;24da
	ret c			;24dd
	jp 064d5h		;24de
	push ix			;24e1
	pop hl			;24e3
	inc l			;24e4
	inc l			;24e5
	inc l			;24e6
	ld d,h			;24e7
	ld e,l			;24e8
	inc e			;24e9
	inc e			;24ea
	inc e			;24eb
	inc e			;24ec
	call 06509h		;24ed
	call 06509h		;24f0
	ld a,(ix+000h)		;24f3
	ld c,0b0h		;24f6
	cp 039h			;24f8
	jr z,l24feh		;24fa
	ld c,0a8h		;24fc
l24feh:
	ld a,(ix+004h)		;24fe
l2501h:
	cp c			;2501
	ret nc			;2502
	ld a,(ix+006h)		;2503
	cp 0f9h			;2506
l2508h:
	ret			;2508
l2509h:
	ld a,(de)		;2509
	add a,(hl)		;250a
	ld (hl),a		;250b
	inc l			;250c
	inc e			;250d
	ld a,(de)		;250e
	adc a,(hl)		;250f
	ld (hl),a		;2510
	inc l			;2511
	inc e			;2512
	ret			;2513
	ld hl,le352h		;2514
	dec (hl)		;2517
	ld l,(ix+000h)		;2518
	ld h,000h		;251b
	ld e,l			;251d
	ld d,h			;251e
	add hl,hl		;251f
	add hl,hl		;2520
	add hl,hl		;2521
	or a			;2522
	sbc hl,de		;2523
l2525h:
	ld de,04f45h		;2525
l2528h:
	add hl,de		;2528
	ld a,(hl)		;2529
	bit 6,a			;252a
	jr nz,l2537h		;252c
l252eh:
	and 03fh		;252e
	ld hl,le355h		;2530
	sub (hl)		;2533
	neg			;2534
	ld (hl),a		;2536
l2537h:
	ld a,(ix+000h)		;2537
	cp 02ah			;253a
	jr nz,l2542h		;253c
	ld hl,le36dh		;253e
	dec (hl)		;2541
l2542h:
	ld (ix+000h),000h	;2542
	xor a			;2546
	ld (ix+00bh),a		;2547
	ld (ix+010h),a		;254a
	bit 0,(ix+016h)		;254d
	ret z			;2551
	ld a,(ix+017h)		;2552
	call 089a8h		;2555
	ret c			;2558
	inc l			;2559
	dec (hl)		;255a
	ret nz			;255b
	dec l			;255c
	ld (hl),000h		;255d
	ret			;255f
l2560h:
	call sub_657ch		;2560
	jr z,l2560h		;2563
	ret c			;2565
	ld hl,le358h		;2566
	inc (hl)		;2569
	jr l2560h		;256a
	ld a,(0e320h)		;256c
	and a			;256f
	ret z			;2570
	ld a,0f8h		;2571
	ld (lf004h),a		;2573
l2576h:
	call sub_657ch		;2576
	jr z,l2576h		;2579
	ret			;257b
	call sub_415bh		;257c
	ld a,(le358h)		;257f
	ld hl,l9554h		;2582
	call sub_4c32h		;2585
	push af			;2588
	call 04157h		;2589
	pop af			;258c
	ret nz			;258d
	ld hl,le358h		;258e
	inc (hl)		;2591
	ld b,c			;2592
	ld a,c			;2593
	and 01fh		;2594
	add a,a			;2596
	add a,a			;2597
	add a,a			;2598
	ld e,a			;2599
	ld a,(lf004h)		;259a
	ld d,a			;259d
	xor a			;259e
	bit 6,c			;259f
	jr z,l25a9h		;25a1
	inc a			;25a3
	bit 7,c			;25a4
	jr z,l25a9h		;25a6
	inc a			;25a8
l25a9h:
	ld c,a			;25a9
	ld a,001h		;25aa
	call 04d1eh		;25ac
	xor a			;25af
	ret			;25b0
	ld c,002h		;25b1
	ld (ix+014h),c		;25b3
	ld (ix+013h),c		;25b6
	ld (ix+027h),000h	;25b9
	call 06667h		;25bd
	sra a			;25c0
	ld c,a			;25c2
	ld a,(le358h)		;25c3
	and 003h		;25c6
	add a,c			;25c8
	ld (ix+015h),a		;25c9
	ld c,(ix+019h)		;25cc
	xor a			;25cf
	bit 5,c			;25d0
	jr z,l25d6h		;25d2
	ld a,002h		;25d4
l25d6h:
	bit 6,c			;25d6
	jr nz,l25dbh		;25d8
	inc a			;25da
l25dbh:
	ld (ix+026h),a		;25db
	ld (ix+010h),00bh	;25de
	ld a,(le201h)		;25e2
	cp 006h			;25e5
	jp z,0673ah		;25e7
	ld c,000h		;25ea
	jr l260ah		;25ec
	ld e,(ix+004h)		;25ee
	ld d,(ix+006h)		;25f1
	call sub_945bh		;25f4
	ld a,(lf018h)		;25f7
	cp 080h			;25fa
	jr c,l2600h		;25fc
	neg			;25fe
l2600h:
	ld bc,l0505h		;2600
l2603h:
	sub 015h		;2603
	jr c,l260ah		;2605
	dec c			;2607
	djnz l2603h		;2608
l260ah:
	ld a,(ix+026h)		;260a
	add a,a			;260d
	add a,a			;260e
	ld e,a			;260f
	add a,a			;2610
	add a,e			;2611
	ld hl,l66d0h		;2612
	call sub_407ah		;2615
	ld a,(le201h)		;2618
	call sub_407ah		;261b
	ld a,(hl)		;261e
	add a,c			;261f
	ld (ix+032h),a		;2620
	ret			;2623
	ld a,(le201h)		;2624
	cp 006h			;2627
	jp z,06700h		;2629
	dec (ix+015h)		;262c
	ld a,(ix+015h)		;262f
	and 003h		;2632
	ret nz			;2634
	call sub_65eeh		;2635
	ld a,(lf018h)		;2638
	bit 1,(ix+026h)		;263b
	jr nz,l2648h		;263f
	sub 010h		;2641
	cp 060h			;2643
	ret c			;2645
	jr l264dh		;2646
l2648h:
	sub 090h		;2648
	cp 060h			;264a
	ret c			;264c
l264dh:
	ld a,(ix+015h)		;264d
	and a			;2650
	ret nz			;2651
	ld hl,le307h		;2652
	ld a,(hl)		;2655
	and a			;2656
	jr z,l265eh		;2657
	ld (ix+015h),001h	;2659
	ret			;265d
l265eh:
	ld e,(ix+004h)		;265e
	ld d,(ix+006h)		;2661
	call sub_938fh		;2664
	ld hl,066c0h		;2667
	ld a,(le206h)		;266a
	dec a			;266d
	ld a,(le228h)		;266e
	jr nz,l2679h		;2671
	cp 002h			;2673
	jr c,l2679h		;2675
	ld a,002h		;2677
l2679h:
	call sub_407ah		;2679
	ld c,(hl)		;267c
	inc (ix+027h)		;267d
	ld a,(ix+027h)		;2680
	and 003h		;2683
	jr nz,l2689h		;2685
	sla c			;2687
l2689h:
	ld a,(le400h)		;2689
	cp 002h			;268c
	ld a,c			;268e
	jr nz,l2693h		;268f
	sub 004h		;2691
l2693h:
	ld c,a			;2693
	ld a,(le206h)		;2694
	srl a			;2697
	srl a			;2699
	ld b,a			;269b
	ld a,c			;269c
	sub b			;269d
	jr nc,l26a1h		;269e
	xor a			;26a0
l26a1h:
	cp 00ch			;26a1
	jr nc,l26a7h		;26a3
	ld a,00ch		;26a5
l26a7h:
	ld c,a			;26a7
	ld a,(le201h)		;26a8
	and a			;26ab
	jr z,l26b2h		;26ac
	cp 007h			;26ae
	jr nz,l26bch		;26b0
l26b2h:
	ld a,c			;26b2
	sub 008h		;26b3
	cp 004h			;26b5
	jr nc,l26bbh		;26b7
	ld a,004h		;26b9
l26bbh:
	ld c,a			;26bb
l26bch:
	ld (ix+015h),c		;26bc
	ret			;26bf
	ld d,b			;26c0
	ld b,b			;26c1
	jr nc,l26ech		;26c2
	inc h			;26c4
	ld (l1e20h),hl		;26c5
	inc e			;26c8
	ld a,(de)		;26c9
	jr l26e2h		;26ca
	inc d			;26cc
	ld (de),a		;26cd
	djnz l26dch		;26ce
	ld b,c			;26d0
	ld (de),a		;26d1
	nop			;26d2
	jr l26edh		;26d3
	nop			;26d5
	ld h,h			;26d6
	dec h			;26d7
	jr l26f2h		;26d8
	jr l26f4h		;26da
l26dch:
	dec h			;26dc
	nop			;26dd
	nop			;26de
	ld d,c			;26df
	ld a,b			;26e0
	nop			;26e1
l26e2h:
	ld h,b			;26e2
	dec sp			;26e3
	ld a,b			;26e4
	ld d,c			;26e5
	ld d,c			;26e6
	ld d,c			;26e7
	inc bc			;26e8
	inc c			;26e9
	nop			;26ea
	ld l,h			;26eb
l26ech:
	ld l,h			;26ec
l26edh:
	nop			;26ed
	ld l,b			;26ee
	dec hl			;26ef
	ld l,h			;26f0
	ld l,h			;26f1
l26f2h:
	ld l,h			;26f2
	ld l,h			;26f3
l26f4h:
	ld sp,l0000h		;26f4
	ld d,a			;26f7
l26f8h:
	ld c,e			;26f8
	nop			;26f9
	ld b,a			;26fa
	ld sp,0574bh		;26fb
	ld d,a			;26fe
	ld d,a			;26ff
	ld hl,0673ah		;2700
	push hl			;2703
	ld a,(ix+001h)		;2704
	dec a			;2707
	jr z,l271ah		;2708
	call l6759h+1		;270a
	ret c			;270d
	dec (ix+015h)		;270e
	ret nz			;2711
	ld (ix+015h),008h	;2712
	inc (ix+001h)		;2716
	ret			;2719
l271ah:
	dec (ix+015h)		;271a
	jr z,l2732h		;271d
	ld a,(ix+015h)		;271f
	cp 004h			;2722
	ret nz			;2724
	call l6759h+1		;2725
	ret c			;2728
	ld e,(ix+004h)		;2729
l272ch:
	ld d,(ix+006h)		;272c
	jp sub_938fh		;272f
l2732h:
	call 06667h		;2732
	ld (ix+001h),000h	;2735
	ret			;2739
	ld a,(ix+026h)		;273a
	ld hl,0676ch		;273d
	call sub_407ah		;2740
	ld c,(hl)		;2743
	ld a,(ix+001h)		;2744
l2747h:
	and a			;2747
l2748h:
	jr z,l274bh		;2748
	inc c			;274a
l274bh:
	ld a,(le406h)		;274b
	cp (ix+006h)		;274e
	ld a,c			;2751
	jr c,l2756h		;2752
	add a,002h		;2754
l2756h:
	ld (ix+032h),a		;2756
	ret			;2759
	ld a,(le404h)		;275a
	cp (ix+004h)		;275d
	ld a,(ix+026h)		;2760
	jr c,l2768h		;2763
	cp 002h			;2765
	ret			;2767
l2768h:
	cp 002h			;2768
	ccf			;276a
	ret			;276b
	ld h,h			;276c
	ld h,b			;276d
	ld l,b			;276e
	ld b,a			;276f
	dec (ix+015h)		;2770
	ret nz			;2773
	ld hl,le307h		;2774
	ld a,(hl)		;2777
	and a			;2778
	jr z,l2780h		;2779
	ld (ix+015h),001h	;277b
	ret			;277f
l2780h:
	ld e,(ix+004h)		;2780
	ld d,(ix+006h)		;2783
	call sub_938fh		;2786
	call 04e93h		;2789
	ld (ix+015h),a		;278c
	ret			;278f
	ld a,(le340h)		;2790
	dec a			;2793
	ret m			;2794
	ld c,a			;2795
	ld hl,(le346h)		;2796
	inc hl			;2799
	ld a,l			;279a
	or h			;279b
	jr nz,l279fh		;279c
	dec hl			;279e
l279fh:
	ld (le346h),hl		;279f
	call l4136h+1		;27a2
	ld a,c			;27a5
	call sub_67ach		;27a6
	jp 04157h		;27a9
	call sub_4084h		;27ac
	or l			;27af
	xor b			;27b0
	dec e			;27b1
	xor h			;27b2
	add hl,hl		;27b3
	xor (hl)		;27b4
	add hl,hl		;27b5
	xor l			;27b6
	ld (hl),d		;27b7
	xor a			;27b8
	call sub_6878h		;27b9
	ret z			;27bc
	call sub_4144h		;27bd
	ld c,001h		;27c0
	call 067ceh		;27c2
	jp l4107h+1		;27c5
	ld b,00dh		;27c8
	ld de,l2d26h		;27ca
	ld sp,0c821h		;27cd
	ld h,a			;27d0
	ld de,lea07h		;27d1
	ld a,(lea00h)		;27d4
	and a			;27d7
	call nz,sub_67ech	;27d8
	ld a,(le340h)		;27db
	cp 005h			;27de
	ret nz			;27e0
	ld a,(lea20h)		;27e1
	and a			;27e4
	ret z			;27e5
	ld hl,067cbh		;27e6
	ld de,lea27h		;27e9
	ld b,003h		;27ec
l27eeh:
	push bc			;27ee
	ld a,(de)		;27ef
	push de			;27f0
	ld e,(hl)		;27f1
l27f2h:
	inc hl			;27f2
	ld d,000h		;27f3
	push hl			;27f5
	ld hl,lea00h		;27f6
	add hl,de		;27f9
	bit 0,c			;27fa
	jr z,l2803h		;27fc
	call 0680dh		;27fe
	jr l2806h		;2801
l2803h:
	call 06838h		;2803
l2806h:
	pop hl			;2806
	pop de			;2807
	inc de			;2808
	pop bc			;2809
	djnz l27eeh		;280a
	ret			;280c
	and a			;280d
	ret m			;280e
l280fh:
	call 06816h		;280f
	ret c			;2812
	jp 05327h		;2813
	push hl			;2816
	ld de,lbb01h		;2817
	call 04b60h		;281a
	ex de,hl		;281d
	ld c,(hl)		;281e
	inc hl			;281f
	ld b,(hl)		;2820
	inc hl			;2821
	ex de,hl		;2822
	pop hl			;2823
	jr l2841h		;2824
	call sub_6878h		;2826
	ret z			;2829
	call sub_4144h		;282a
	ld c,000h		;282d
	call 067ceh		;282f
	call l4107h+1		;2832
	jp l49a5h		;2835
	and a			;2838
sub_2839h:
	ret m			;2839
	call 06816h		;283a
	ret c			;283d
	jp 0530ch		;283e
l2841h:
	ld a,(hl)		;2841
	and a			;2842
	scf			;2843
	ret nz			;2844
	dec l			;2845
	dec l			;2846
	ld a,(hl)		;2847
	dec l			;2848
	and a			;2849
	jr z,l2871h		;284a
	scf			;284c
	ret p			;284d
	ld a,(hl)		;284e
	rra			;284f
	rra			;2850
	rra			;2851
	or 0e0h			;2852
	ld (lf000h),a		;2854
	add a,c			;2857
	ld c,a			;2858
	scf			;2859
	ret z			;285a
	ret m			;285b
	ld a,(lf000h)		;285c
l285fh:
	ex af,af'		;285f
	ld a,b			;2860
	add a,e			;2861
	ld e,a			;2862
	jr nc,l2866h		;2863
	inc d			;2865
l2866h:
	ex af,af'		;2866
	inc a			;2867
	jr nz,l285fh		;2868
	inc l			;286a
	inc l			;286b
	ld h,(hl)		;286c
	ld l,000h		;286d
	xor a			;286f
	ret			;2870
l2871h:
	ld a,(hl)		;2871
	inc l			;2872
	inc l			;2873
	ld h,(hl)		;2874
	ld l,a			;2875
	xor a			;2876
	ret			;2877
	ld a,(le340h)		;2878
	and a			;287b
	ret z			;287c
	cp 005h			;287d
	jr z,l2886h		;287f
	ld a,(lea00h)		;2881
	and a			;2884
	ret			;2885
l2886h:
	or a			;2886
	ret			;2887
	ld hl,l6962h		;2888
	ld de,le400h		;288b
	ld bc,sub_000fh		;288e
l2891h:
	ldir			;2891
	ld hl,l6971h		;2893
	ld de,le430h		;2896
	ld bc,l0009h		;2899
	ldir			;289c
	ld a,(le201h)		;289e
	cp 008h			;28a1
	ret nz			;28a3
	ld a,050h		;28a4
	ld (le406h),a		;28a6
	ret			;28a9
	ld a,(le206h)		;28aa
	srl a			;28ad
	cp 00fh			;28af
	jr c,l28b5h		;28b1
	ld a,00fh		;28b3
l28b5h:
	ld (le228h),a		;28b5
	ret			;28b8
	xor a			;28b9
	ld (le22ch),a		;28ba
	ld (le300h),a		;28bd
	ld hl,leaa8h		;28c0
	ld de,leaa9h		;28c3
	ld bc,sub_000fh		;28c6
	ld (hl),a		;28c9
	ldir			;28ca
	ld hl,le340h		;28cc
	ld de,le340h+1		;28cf
	ld bc,000bfh		;28d2
	ld (hl),a		;28d5
	ldir			;28d6
	ld hl,le500h		;28d8
	ld de,le501h		;28db
	ld bc,007ffh		;28de
	ld (hl),a		;28e1
	ldir			;28e2
	xor a			;28e4
	ld (le1d5h),a		;28e5
	ld (le369h),a		;28e8
	inc a			;28eb
	ld (le35ch),a		;28ec
	ld (0e376h),a		;28ef
	ld (le36dh+1),a		;28f2
	ld (le365h),a		;28f5
	ld a,(le201h)		;28f8
	ld hl,l697ah		;28fb
	call 05ca6h		;28fe
l2901h:
	ld (le304h+1),a		;2901
	xor a			;2904
	ld (le327h),a		;2905
	ld a,(le201h)		;2908
	add a,a			;290b
	ld c,a			;290c
	add a,a			;290d
	add a,c			;290e
	ld hl,l6986h		;290f
	call sub_407ah		;2912
	ld de,0e321h		;2915
	ld bc,l0006h		;2918
	ldir			;291b
	ld a,(le201h)		;291d
	ld hl,l694ah		;2920
	call 04b67h		;2923
	ld hl,(le203h)		;2926
	rst 20h			;2929
	jr nc,l2938h		;292a
	ld de,l0020h		;292c
	ld a,(le1c2h)		;292f
	bit 6,a			;2932
sub_2934h:
	jr nz,l2938h		;2934
	ld e,060h		;2936
l2938h:
	ld (le203h),de		;2938
	xor a			;293c
	ld (le205h),a		;293d
	inc a			;2940
	ld (le202h),a		;2941
	ld a,040h		;2944
	ld (le354h),a		;2946
	ret			;2949
	djnz $+3		;294a
	djnz l294fh		;294c
	nop			;294e
l294fh:
	ld bc,l0100h		;294f
	nop			;2952
	ld bc,000f4h		;2953
	ret pe			;2956
	nop			;2957
	rst 18h			;2958
	ld bc,l0fffh		;2959
	rst 38h			;295c
	rrca			;295d
	rst 38h			;295e
	rrca			;295f
	rst 38h			;2960
	rrca			;2961
	ld bc,l0000h		;2962
	nop			;2965
	ld c,d			;2966
	nop			;2967
	ld d,b			;2968
	nop			;2969
	rrca			;296a
	inc b			;296b
	ex af,af'		;296c
	nop			;296d
	nop			;296e
	nop			;296f
	nop			;2970
	ld (bc),a		;2971
	nop			;2972
	nop			;2973
	nop			;2974
	nop			;2975
	nop			;2976
	nop			;2977
	nop			;2978
	nop			;2979
	push bc			;297a
	cp l			;297b
	or e			;297c
	and c			;297d
	xor d			;297e
	and b			;297f
	sub b			;2980
	rst 0			;2981
	sbc a,l			;2982
	and c			;2983
	and c			;2984
	and c			;2985
	nop			;2986
	nop			;2987
	ret nz			;2988
	ld bc,001bfh		;2989
	add a,b			;298c
	nop			;298d
	ret nz			;298e
	ld bc,001dfh		;298f
	add a,b			;2992
	nop			;2993
	ret po			;2994
	ld bc,l01ffh		;2995
	ld h,b			;2998
	nop			;2999
	ret po			;299a
	ld bc,l01ffh		;299b
	add a,b			;299e
	nop			;299f
	nop			;29a0
	ld (bc),a		;29a1
	rst 38h			;29a2
	ld bc,l0080h		;29a3
	and b			;29a6
	ld bc,0019fh		;29a7
	ld h,b			;29aa
	nop			;29ab
	ret nz			;29ac
	ld bc,001bfh		;29ad
	ld h,b			;29b0
	nop			;29b1
	ret po			;29b2
	ld (bc),a		;29b3
	rst 18h			;29b4
	ld (bc),a		;29b5
	nop			;29b6
	nop			;29b7
	ret nz			;29b8
	nop			;29b9
	sbc a,a			;29ba
	nop			;29bb
	jr nz,l29beh		;29bc
l29beh:
	ld b,b			;29be
	ld bc,0015fh		;29bf
	jr nz,l29c4h		;29c2
l29c4h:
	ld b,b			;29c4
	ld bc,0015fh		;29c5
	jr nz,l29cah		;29c8
l29cah:
	ld b,b			;29ca
	ld bc,0015fh		;29cb
	call sub_4144h		;29ce
	ld ix,la16dh		;29d1
	call sub_4595h		;29d5
	xor a			;29d8
	ld (lf000h),a		;29d9
	ld ix,0a174h		;29dc
	call 0454eh		;29e0
	ld a,001h		;29e3
	ld (lf000h),a		;29e5
	ld ix,la187h		;29e8
	call 0454eh		;29ec
l29efh:
	call sub_4b43h		;29ef
	call l4107h+1		;29f2
	jp sub_4133h		;29f5
	call sub_4144h		;29f8
	ld ix,la18bh		;29fb
	call sub_4595h		;29ff
	xor a			;2a02
	ld (lf000h),a		;2a03
	ld ix,la204h		;2a06
	call 0454eh		;2a0a
	jr l29efh		;2a0d
	call sub_413bh		;2a0f
	ld ix,0b223h		;2a12
	call sub_4595h		;2a16
	jr l29efh		;2a19
	call sub_413bh		;2a1b
	ld ix,0ac44h		;2a1e
	call sub_4595h		;2a22
	jr l29efh		;2a25
	ld a,(le340h)		;2a27
	or a			;2a2a
	ret nz			;2a2b
	ld a,(le3aah)		;2a2c
	and a			;2a2f
	ret nz			;2a30
	ld a,(le201h)		;2a31
	ld b,a			;2a34
	cp 009h			;2a35
	ret nc			;2a37
	ld c,00fh		;2a38
	cp 004h			;2a3a
	jr z,l2a45h		;2a3c
	ld c,003h		;2a3e
	dec a			;2a40
	cp 007h			;2a41
	jr c,l2a4ah		;2a43
l2a45h:
	ld a,(le1c3h)		;2a45
	and c			;2a48
	ret nz			;2a49
l2a4ah:
	ld a,(le201h)		;2a4a
	ld de,lb901h		;2a4d
	call 04b60h		;2a50
	ex de,hl		;2a53
	ld a,l			;2a54
	or h			;2a55
	ret z			;2a56
	ld a,(hl)		;2a57
	ld (lf000h),a		;2a58
	and 07fh		;2a5b
	ld c,a			;2a5d
	inc hl			;2a5e
	ld a,(le3bbh)		;2a5f
	inc a			;2a62
	cp c			;2a63
	jr c,l2a67h		;2a64
	xor a			;2a66
l2a67h:
	ld (le3bbh),a		;2a67
	push hl			;2a6a
	ld l,a			;2a6b
	ld h,000h		;2a6c
	add hl,hl		;2a6e
	ld c,l			;2a6f
	ld b,h			;2a70
	add hl,hl		;2a71
	add hl,hl		;2a72
	add hl,bc		;2a73
	ld c,l			;2a74
	ld b,h			;2a75
	pop hl			;2a76
	add hl,bc		;2a77
	ld a,(hl)		;2a78
	ex de,hl		;2a79
	inc de			;2a7a
	ld l,a			;2a7b
	ld a,(lf000h)		;2a7c
	add a,a			;2a7f
	ld h,004h		;2a80
	jr nc,l2a86h		;2a82
	ld h,000h		;2a84
l2a86h:
	add hl,hl		;2a86
	add hl,hl		;2a87
	add hl,hl		;2a88
	ld a,(l0007h)		;2a89
	ld c,a			;2a8c
	ld a,(de)		;2a8d
	inc de			;2a8e
	exx			;2a8f
	ld b,003h		;2a90
	ld e,a			;2a92
l2a93h:
	rr e			;2a93
	exx			;2a95
	jr nc,l2aa7h		;2a96
	call sub_0053h		;2a98
	push de			;2a9b
	push hl			;2a9c
	ex de,hl		;2a9d
	ld b,008h		;2a9e
	outi			;2aa0
	jp nz,l6aa0h		;2aa2
	pop hl			;2aa5
	pop de			;2aa6
l2aa7h:
	ld a,008h		;2aa7
	add a,h			;2aa9
	ld h,a			;2aaa
	exx			;2aab
	djnz l2a93h		;2aac
	ret			;2aae
	ld a,(le201h)		;2aaf
	sub 003h		;2ab2
	cp 001h			;2ab4
	ret c			;2ab6
	sub 006h		;2ab7
	cp 003h			;2ab9
	ret			;2abb
	call sub_6aafh		;2abc
	ret nc			;2abf
l2ac0h:
	call 06adah		;2ac0
	jr z,l2ac0h		;2ac3
	ret c			;2ac5
	ld hl,le369h		;2ac6
	inc (hl)		;2ac9
	jr l2ac0h		;2aca
	call sub_6aafh		;2acc
	ret nc			;2acf
	ld a,(0e320h)		;2ad0
	and a			;2ad3
	ret z			;2ad4
	ld a,0f8h		;2ad5
	ld (lf004h),a		;2ad7
l2adah:
	call sub_6ae0h		;2ada
	jr z,l2adah		;2add
	ret			;2adf
	call sub_415bh		;2ae0
	ld hl,0a2a9h		;2ae3
	ld a,(le201h)		;2ae6
	cp 003h			;2ae9
	jr z,l2af6h		;2aeb
	sub 009h		;2aed
	ld hl,l6b7eh+1		;2aef
	call 04b67h		;2af2
	ex de,hl		;2af5
l2af6h:
	ld a,(le369h)		;2af6
	ld c,a			;2af9
	add a,a			;2afa
	add a,c			;2afb
	call sub_407ah		;2afc
	ld e,(hl)		;2aff
	inc hl			;2b00
	ld a,(hl)		;2b01
	and 001h		;2b02
	ld d,a			;2b04
	inc hl			;2b05
	ld (lf005h),hl		;2b06
	ld hl,(le203h)		;2b09
	rst 20h			;2b0c
	jp nz,l4107h+1		;2b0d
	ld hl,le369h		;2b10
	inc (hl)		;2b13
	ld hl,le580h		;2b14
	ld b,010h		;2b17
	ld de,l0008h		;2b19
	xor a			;2b1c
l2b1dh:
	cp (hl)			;2b1d
	jr z,l2b25h		;2b1e
	add hl,de		;2b20
	djnz l2b1dh		;2b21
	xor a			;2b23
	ret			;2b24
l2b25h:
	ex de,hl		;2b25
	ld hl,(lf005h)		;2b26
	push hl			;2b29
	ldi			;2b2a
	xor a			;2b2c
	dec hl			;2b2d
l2b2eh:
	dec hl			;2b2e
	bit 1,(hl)		;2b2f
	jr nz,l2b35h		;2b31
	ld a,080h		;2b33
l2b35h:
	ld (de),a		;2b35
	inc e			;2b36
	ld a,(hl)		;2b37
	and 0f8h		;2b38
	ld (de),a		;2b3a
	inc e			;2b3b
	ld a,(lf004h)		;2b3c
	ld (de),a		;2b3f
	inc e			;2b40
	pop hl			;2b41
	ld a,(hl)		;2b42
	add a,a			;2b43
	ld hl,0a55eh		;2b44
	call sub_407ah		;2b47
	ldi			;2b4a
	ldi			;2b4c
	ex de,hl		;2b4e
	ld de,(lf005h)		;2b4f
	ld a,(de)		;2b53
	sub 005h		;2b54
	jr c,l2b75h		;2b56
	cp 006h			;2b58
	jr c,l2b5eh		;2b5a
	sub 006h		;2b5c
l2b5eh:
	push hl			;2b5e
	ld hl,06b7ch		;2b5f
	call sub_407ah		;2b62
	ld b,(hl)		;2b65
	pop hl			;2b66
	ld a,(le228h)		;2b67
	cp 006h			;2b6a
	jr c,l2b72h		;2b6c
	ld a,b			;2b6e
	add a,004h		;2b6f
	ld b,a			;2b71
l2b72h:
	ld (hl),b		;2b72
	jr l2b77h		;2b73
l2b75h:
	ld (hl),010h		;2b75
l2b77h:
	inc l			;2b77
	ld (hl),004h		;2b78
	xor a			;2b7a
	ret			;2b7b
	inc b			;2b7c
	ex af,af'		;2b7d
	inc c			;2b7e
	ld e,a			;2b7f
	and e			;2b80
	dec de			;2b81
	and h			;2b82
	ret z			;2b83
	and h			;2b84
	call sub_6878h		;2b85
	ret nz			;2b88
	call sub_6aafh		;2b89
	ret nc			;2b8c
	ld ix,le580h		;2b8d
	ld b,010h		;2b91
l2b93h:
	push bc			;2b93
	ld a,(ix+000h)		;2b94
	or a			;2b97
	call nz,sub_6ba4h	;2b98
	ld bc,l0008h		;2b9b
	add ix,bc		;2b9e
	pop bc			;2ba0
	djnz l2b93h		;2ba1
	ret			;2ba3
	call sub_6c34h		;2ba4
	ret c			;2ba7
	ld a,(le439h)		;2ba8
	cp 005h			;2bab
	jr nz,l2bb4h		;2bad
	ld a,(le1c3h)		;2baf
	rra			;2bb2
	ret nc			;2bb3
l2bb4h:
	ld a,(ix+000h)		;2bb4
	cp 005h			;2bb7
	jr c,l2be7h		;2bb9
	cp 00bh			;2bbb
	jr nc,l2bcdh		;2bbd
	ld b,008h		;2bbf
	call 06bcfh		;2bc1
	ld a,(ix+001h)		;2bc4
	and 07fh		;2bc7
	dec a			;2bc9
	jr z,l2c08h		;2bca
	ret			;2bcc
l2bcdh:
	ld b,00eh		;2bcd
	ld a,(ix+000h)		;2bcf
	cp b			;2bd2
	ret nc			;2bd3
	ld a,(ix+006h)		;2bd4
	cp 004h			;2bd7
	ret nc			;2bd9
	ld a,(ix+000h)		;2bda
	add a,003h		;2bdd
	ld (ix+000h),a		;2bdf
	ld a,024h		;2be2
	jp l4ae4h		;2be4
l2be7h:
	ld a,(ix+001h)		;2be7
	and 07fh		;2bea
	call sub_4084h		;2bec
	rst 30h			;2bef
	ld l,e			;2bf0
	rlca			;2bf1
	ld l,h			;2bf2
	ex af,af'		;2bf3
	ld l,h			;2bf4
	inc sp			;2bf5
	ld l,h			;2bf6
	ld a,(ix+005h)		;2bf7
	add a,a			;2bfa
	add a,a			;2bfb
	add a,a			;2bfc
	ld b,a			;2bfd
	xor a			;2bfe
	sub (ix+003h)		;2bff
	cp b			;2c02
	ret c			;2c03
	inc (ix+001h)		;2c04
	ret			;2c07
l2c08h:
	dec (ix+007h)		;2c08
	ret nz			;2c0b
	ld (ix+007h),004h	;2c0c
	ld l,(ix+002h)		;2c10
	ld h,(ix+003h)		;2c13
	call 05c92h		;2c16
	ld b,(ix+005h)		;2c19
	ld a,l			;2c1c
	and 01fh		;2c1d
	sub 020h		;2c1f
	jr c,l2c26h		;2c21
	neg			;2c23
	ld b,a			;2c25
l2c26h:
	xor a			;2c26
l2c27h:
	ld (hl),a		;2c27
	inc l			;2c28
	djnz l2c27h		;2c29
	ld a,(ix+002h)		;2c2b
	add a,008h		;2c2e
	ld (ix+002h),a		;2c30
	ret			;2c33
	ld a,(0e320h)		;2c34
	and a			;2c37
	ret z			;2c38
	ld a,(ix+003h)		;2c39
	sub 008h		;2c3c
	ld (ix+003h),a		;2c3e
	ret nc			;2c41
	ld (ix+000h),000h	;2c42
	scf			;2c46
	ret			;2c47
	call sub_6878h		;2c48
	ret nz			;2c4b
	call sub_6aafh		;2c4c
	ret nc			;2c4f
	ld ix,le580h		;2c50
	ld b,010h		;2c54
l2c56h:
	push bc			;2c56
	ld a,(ix+000h)		;2c57
	or a			;2c5a
	call nz,06c67h		;2c5b
	ld bc,l0008h		;2c5e
	add ix,bc		;2c61
	pop bc			;2c63
	djnz l2c56h		;2c64
	ret			;2c66
	ld a,(ix+000h)		;2c67
	cp 005h			;2c6a
	jr c,l2c8eh		;2c6c
	cp 00bh			;2c6e
	ret nc			;2c70
	ld a,(ix+001h)		;2c71
	and 07fh		;2c74
	jr z,l2c80h		;2c76
	call 06ccbh		;2c78
	ret nc			;2c7b
	dec (ix+001h)		;2c7c
	ret			;2c7f
l2c80h:
	ld a,(ix+003h)		;2c80
	cp 0e1h			;2c83
	ret nc			;2c85
	call 06ccbh		;2c86
	ret c			;2c89
	inc (ix+001h)		;2c8a
	ret			;2c8d
l2c8eh:
	ld a,(ix+001h)		;2c8e
	and 07fh		;2c91
	call sub_4084h		;2c93
	xor a			;2c96
	ld l,h			;2c97
	sbc a,(hl)		;2c98
	ld l,h			;2c99
	or b			;2c9a
	ld l,h			;2c9b
	xor a			;2c9c
	ld l,h			;2c9d
	call 06ccbh		;2c9e
	ret c			;2ca1
	ld a,(ix+001h)		;2ca2
	rla			;2ca5
	jr c,l2cach		;2ca6
	call 06cbdh		;2ca8
	ret c			;2cab
l2cach:
	inc (ix+001h)		;2cac
	ret			;2caf
	call 06ccbh		;2cb0
	ret nc			;2cb3
	ld a,01eh		;2cb4
	call l4ae4h		;2cb6
	dec (ix+001h)		;2cb9
	ret			;2cbc
	ld a,(ix+002h)		;2cbd
	sub 008h		;2cc0
	ld l,a			;2cc2
	ld h,(ix+003h)		;2cc3
	ld b,(ix+005h)		;2cc6
	jr l2cddh		;2cc9
	ld a,(ix+004h)		;2ccb
	rla			;2cce
	rla			;2ccf
	rla			;2cd0
	and 0f8h		;2cd1
	add a,(ix+002h)		;2cd3
	ld l,a			;2cd6
	ld h,(ix+003h)		;2cd7
	ld b,(ix+005h)		;2cda
l2cddh:
	call 05c92h		;2cdd
	ld c,0a1h		;2ce0
l2ce2h:
	ld a,(hl)		;2ce2
	or a			;2ce3
	jr z,l2ce8h		;2ce4
	cp c			;2ce6
	ret c			;2ce7
l2ce8h:
	inc l			;2ce8
	djnz l2ce2h		;2ce9
	xor a			;2ceb
	ret			;2cec
	call sub_6878h		;2ced
	ret nz			;2cf0
	call sub_6aafh		;2cf1
	ret nc			;2cf4
	call sub_415bh		;2cf5
	ld ix,le580h		;2cf8
	ld b,010h		;2cfc
l2cfeh:
	push bc			;2cfe
	ld a,(ix+000h)		;2cff
	or a			;2d02
	call nz,06d11h		;2d03
	ld bc,l0008h		;2d06
	add ix,bc		;2d09
	pop bc			;2d0b
	djnz l2cfeh		;2d0c
	jp 04157h		;2d0e
	ld de,la57eh		;2d11
	call 04b60h		;2d14
	ld h,(ix+003h)		;2d17
	ld l,(ix+002h)		;2d1a
	ld c,(ix+004h)		;2d1d
	ld b,(ix+005h)		;2d20
	jp 05327h		;2d23
l2d26h:
	ld (ix+000h),000h	;2d26
	ld e,(ix+002h)		;2d2a
	ld d,(ix+003h)		;2d2d
l2d30h:
	call sub_8ba1h		;2d30
	ld a,013h		;2d33
	call l4ae4h		;2d35
	ld h,(ix+003h)		;2d38
	ld l,(ix+002h)		;2d3b
	ld c,(ix+004h)		;2d3e
	ld b,(ix+005h)		;2d41
	jp 0530ch		;2d44
	ld a,(le3beh+2)		;2d47
	or a			;2d4a
	ret nz			;2d4b
	call sub_656ch		;2d4c
	ld a,(le3d0h)		;2d4f
	or a			;2d52
	ret nz			;2d53
	ld a,(le201h)		;2d54
	cp 009h			;2d57
	jr c,l2d60h		;2d59
	xor a			;2d5b
	ld (le354h),a		;2d5c
	ret			;2d5f
l2d60h:
	call sub_6f54h		;2d60
	ld a,(le3beh)		;2d63
	or a			;2d66
	call nz,sub_701ah	;2d67
	call sub_6d9bh		;2d6a
	ld a,(le201h)		;2d6d
	cp 007h			;2d70
	jr nz,l2d7ch		;2d72
	ld a,(le204h)		;2d74
	cp 002h			;2d77
	jp z,06dc2h		;2d79
l2d7ch:
	call sub_6da9h		;2d7c
	ret nz			;2d7f
	call sub_6e1dh		;2d80
	ld a,(le38fh+1)		;2d83
	and a			;2d86
	ret nz			;2d87
	ld a,(le352h+1)		;2d88
	and a			;2d8b
	jr z,l2dc2h		;2d8c
	ld hl,le352h		;2d8e
	ld a,00bh		;2d91
	sub (hl)		;2d93
	ld hl,le392h		;2d94
	cp (hl)			;2d97
	ret c			;2d98
	jr l2dc2h		;2d99
	ld a,(le201h)		;2d9b
	dec a			;2d9e
	ret nz			;2d9f
	call l4136h+1		;2da0
	call sub_b11ah		;2da3
	jp 04157h		;2da6
	ld hl,le354h		;2da9
	ld a,(hl)		;2dac
	and a			;2dad
	jr z,l2db4h		;2dae
	dec (hl)		;2db0
l2db1h:
	or 0ffh			;2db1
	ret			;2db3
l2db4h:
	ld a,(le340h)		;2db4
	and a			;2db7
	ret nz			;2db8
	ld a,(le204h)		;2db9
	cp 002h			;2dbc
	jr nc,l2db1h		;2dbe
	xor a			;2dc0
	ret			;2dc1
l2dc2h:
	call sub_415bh		;2dc2
	ld a,(le201h)		;2dc5
	ld de,l99c4h		;2dc8
	call 04b60h		;2dcb
	ld hl,(le203h)		;2dce
	ld a,l			;2dd1
	rr h			;2dd2
	rra			;2dd4
	rr h			;2dd5
	rra			;2dd7
	rra			;2dd8
	rra			;2dd9
	rra			;2dda
	and 01fh		;2ddb
	call sub_407fh		;2ddd
	ld a,(de)		;2de0
	push af			;2de1
	rra			;2de2
	rra			;2de3
	rra			;2de4
	rra			;2de5
	and 00fh		;2de6
	push af			;2de8
	call 04157h		;2de9
	pop af			;2dec
	call l6e01h+1		;2ded
	pop bc			;2df0
	ld a,(le228h)		;2df1
	cp 00ah			;2df4
	jp c,04157h		;2df6
	ld a,b			;2df9
	and 00fh		;2dfa
	call l6e01h+1		;2dfc
	jp 04157h		;2dff
	dec a			;2e02
	ret m			;2e03
	call sub_4084h		;2e04
	call nz,01a6fh		;2e07
	ld (hl),b		;2e0a
	ld d,072h		;2e0b
	ld d,c			;2e0d
	ld (hl),c		;2e0e
	jp pe,0a271h		;2e0f
	ld (hl),c		;2e12
	ld b,071h		;2e13
	adc a,d			;2e15
	ld (hl),c		;2e16
	ld h,l			;2e17
	ld (hl),b		;2e18
	sbc a,a			;2e19
	ld (hl),b		;2e1a
	adc a,070h		;2e1b
	ld a,(le201h)		;2e1d
	cp 008h			;2e20
	ret nc			;2e22
	ld hl,le38fh+1		;2e23
	ld a,(hl)		;2e26
	and a			;2e27
	jr z,l2e71h		;2e28
	dec a			;2e2a
	jr z,l2e69h		;2e2b
	inc l			;2e2d
	dec (hl)		;2e2e
	ret nz			;2e2f
	ld a,(le393h)		;2e30
	ld b,004h		;2e33
	cp 00bh			;2e35
	jr z,l2e3bh		;2e37
	ld b,006h		;2e39
l2e3bh:
	ld (hl),b		;2e3b
	inc l			;2e3c
	dec (hl)		;2e3d
	jr nz,l2e44h		;2e3e
	dec l			;2e40
	dec l			;2e41
	ld (hl),000h		;2e42
l2e44h:
	ld hl,le37ch+2		;2e44
	inc (hl)		;2e47
	ld b,(hl)		;2e48
	ld a,(0e395h)		;2e49
	ld e,a			;2e4c
	ld d,0f8h		;2e4d
	ld a,(le393h)		;2e4f
	ld c,000h		;2e52
	call 04d1eh		;2e54
	ld a,(le352h+1)		;2e57
	and a			;2e5a
	ret nz			;2e5b
	ld hl,le37ch+2		;2e5c
	dec (hl)		;2e5f
	ld hl,le392h		;2e60
	inc (hl)		;2e63
	dec l			;2e64
	dec l			;2e65
	ld (hl),001h		;2e66
	ret			;2e68
l2e69h:
	ld a,(le352h)		;2e69
	cp 007h			;2e6c
	ret nc			;2e6e
	inc (hl)		;2e6f
	ret			;2e70
l2e71h:
	ld a,(0e320h)		;2e71
	and a			;2e74
	ret z			;2e75
	ld hl,06ec1h		;2e76
	ld a,(le201h)		;2e79
	call sub_407ah		;2e7c
	ld d,000h		;2e7f
	ld e,(hl)		;2e81
	ld hl,(le203h)		;2e82
	rst 20h			;2e85
	ret nc			;2e86
	ld a,l			;2e87
	and 007h		;2e88
	ret nz			;2e8a
	ld hl,l0101h		;2e8b
	ld (le38fh+1),hl	;2e8e
	ld hl,le396h		;2e91
	ld a,(hl)		;2e94
	inc a			;2e95
	jr nz,l2e99h		;2e96
	inc a			;2e98
l2e99h:
	ld (hl),a		;2e99
	ld a,(le201h)		;2e9a
	ld hl,06ef2h		;2e9d
	call 05ca6h		;2ea0
	ld (le393h),a		;2ea3
	call sub_6ed5h		;2ea6
	ld (0e395h),a		;2ea9
	ld a,006h		;2eac
	ld (le392h),a		;2eae
	ld a,0ffh		;2eb1
	ld (le37ch+2),a		;2eb3
	xor a			;2eb6
	call 089a8h		;2eb7
	jr nc,l2ec9h		;2eba
	xor a			;2ebc
	ld (le38fh+1),a		;2ebd
	ret			;2ec0
	nop			;2ec1
	add a,b			;2ec2
	add a,b			;2ec3
	ld h,b			;2ec4
	ld h,b			;2ec5
	add a,b			;2ec6
	ld h,b			;2ec7
	ld c,b			;2ec8
l2ec9h:
	ld a,(le396h)		;2ec9
	ld (hl),a		;2ecc
	inc l			;2ecd
	ld a,(le392h)		;2ece
	ld (hl),a		;2ed1
	inc l			;2ed2
	ld (hl),a		;2ed3
	ret			;2ed4
	ld hl,le363h		;2ed5
	inc (hl)		;2ed8
	ld a,(le393h)		;2ed9
	cp 00bh			;2edc
	jr z,l2ee9h		;2ede
	ld a,(hl)		;2ee0
	and 001h		;2ee1
	ld a,030h		;2ee3
	ret z			;2ee5
	xor 040h		;2ee6
	ret			;2ee8
l2ee9h:
	ld a,(hl)		;2ee9
	and 001h		;2eea
	ld a,01ch		;2eec
	ret z			;2eee
	ld a,08ch		;2eef
	ret			;2ef1
	dec bc			;2ef2
	dec bc			;2ef3
	dec bc			;2ef4
	ld sp,l3131h		;2ef5
	dec bc			;2ef8
	dec bc			;2ef9
	dec bc			;2efa
	dec bc			;2efb
	dec bc			;2efc
	dec bc			;2efd
	dec bc			;2efe
	exx			;2eff
	ld hl,l6f22h		;2f00
	exx			;2f03
	jp l6f17h		;2f04
	exx			;2f07
	ld hl,06f32h		;2f08
	exx			;2f0b
	jp l6f14h		;2f0c
	exx			;2f0f
	ld hl,l6f22h		;2f10
	exx			;2f13
	ld hl,le355h+1		;2f14
	ld a,(hl)		;2f17
	and 00fh		;2f18
	inc (hl)		;2f1a
	exx			;2f1b
l2f1ch:
	call 05ca6h		;2f1c
	exx			;2f1f
	ld c,a			;2f20
	ret			;2f21
	nop			;2f22
	nop			;2f23
	nop			;2f24
	ld bc,l0000h		;2f25
	nop			;2f28
	ld bc,l0000h		;2f29
	nop			;2f2c
	ld (bc),a		;2f2d
	nop			;2f2e
	nop			;2f2f
	nop			;2f30
	ld bc,l0000h		;2f31
	ld bc,l0001h		;2f34
	nop			;2f37
	ld bc,l0001h		;2f38
	nop			;2f3b
	ld bc,l0002h		;2f3c
	nop			;2f3f
	ld bc,03a01h		;2f40
	ld bc,lfee2h		;2f43
	add hl,bc		;2f46
	ret nc			;2f47
l2f48h:
	call sub_6f64h		;2f48
	jr z,l2f48h		;2f4b
	ret c			;2f4d
	ld hl,le37ch		;2f4e
	inc (hl)		;2f51
	jr l2f48h		;2f52
	ld a,(0e320h)		;2f54
	and a			;2f57
	ret z			;2f58
	ld a,0f8h		;2f59
	ld (lf004h),a		;2f5b
l2f5eh:
	call sub_6f64h		;2f5e
	jr z,l2f5eh		;2f61
	ret			;2f63
	call sub_415bh		;2f64
	ld a,(le37ch)		;2f67
	ld hl,09a64h		;2f6a
	call sub_6f9ah		;2f6d
	jp nz,04157h		;2f70
	ld hl,le37ch		;2f73
	inc (hl)		;2f76
	ld e,b			;2f77
	srl a			;2f78
	srl a			;2f7a
	ld b,a			;2f7c
	ld a,(lf004h)		;2f7d
	ld d,a			;2f80
	ld a,c			;2f81
	ld l,a			;2f82
	and 03fh		;2f83
	cp c			;2f85
	ld c,000h		;2f86
l2f88h:
	jr z,l2f90h		;2f88
	inc c			;2f8a
	rl l			;2f8b
	jr nc,l2f90h		;2f8d
	inc c			;2f8f
l2f90h:
	push af			;2f90
	call 04157h		;2f91
	pop af			;2f94
	call 04d1eh		;2f95
	xor a			;2f98
	ret			;2f99
	push af			;2f9a
	ld a,(le201h)		;2f9b
	call 04b67h		;2f9e
	pop af			;2fa1
	add a,a			;2fa2
	add a,a			;2fa3
	call sub_407fh		;2fa4
	ex de,hl		;2fa7
	ld e,(hl)		;2fa8
	inc hl			;2fa9
	ld a,(hl)		;2faa
	cp e			;2fab
	jr nz,l2fb5h		;2fac
	cp 0ffh			;2fae
	jr nz,l2fb5h		;2fb0
	or a			;2fb2
	scf			;2fb3
	ret			;2fb4
l2fb5h:
	and 003h		;2fb5
	ld d,a			;2fb7
	ld a,(hl)		;2fb8
	inc hl			;2fb9
	ld c,(hl)		;2fba
	inc hl			;2fbb
	ld b,(hl)		;2fbc
	ld hl,(le203h)		;2fbd
	and a			;2fc0
	sbc hl,de		;2fc1
	ret			;2fc3
	ld hl,le373h		;2fc4
	ld a,(hl)		;2fc7
	and a			;2fc8
	jr z,l2fe7h		;2fc9
	inc l			;2fcb
	dec (hl)		;2fcc
	ret nz			;2fcd
	ld (hl),008h		;2fce
	dec l			;2fd0
	dec (hl)		;2fd1
	ld b,000h		;2fd2
	ld d,0f0h		;2fd4
	ld a,(hl)		;2fd6
	and 003h		;2fd7
	ld hl,l7006h		;2fd9
	call sub_407ah		;2fdc
	ld e,(hl)		;2fdf
	ld c,000h		;2fe0
	ld a,004h		;2fe2
	jp 04d1eh		;2fe4
l2fe7h:
	ld de,0700ah		;2fe7
	ld a,(le228h)		;2fea
	call sub_407fh		;2fed
	ld a,(de)		;2ff0
	ld (hl),a		;2ff1
	inc l			;2ff2
	ld c,070h		;2ff3
	call sub_6ffdh		;2ff5
	ld hl,le3b3h		;2ff8
	inc (hl)		;2ffb
	ret			;2ffc
	ld a,(le228h)		;2ffd
l3000h:
	add a,a			;3000
l3001h:
	sub c			;3001
	neg			;3002
l3004h:
	ld (hl),a		;3004
	ret			;3005
	jr nz,l2f88h		;3006
l3008h:
	ld b,b			;3008
	ld (hl),b		;3009
	inc b			;300a
	inc b			;300b
	inc b			;300c
l300dh:
	dec b			;300d
	dec b			;300e
	dec b			;300f
	dec b			;3010
l3011h:
	ld b,006h		;3011
	ld b,006h		;3013
	ld b,007h		;3015
	rlca			;3017
	rlca			;3018
	rlca			;3019
	ld hl,le36fh		;301a
	ld a,(hl)		;301d
	and a			;301e
	jr z,l304fh		;301f
l3021h:
	inc l			;3021
	dec (hl)		;3022
	ret nz			;3023
	ld a,(le228h)		;3024
	add a,a			;3027
	add a,a			;3028
	sub 070h		;3029
	neg			;302b
	ld (hl),a		;302d
	dec l			;302e
	dec (hl)		;302f
	ld a,(hl)		;3030
sub_3031h:
	and 007h		;3031
	ld b,a			;3033
	ld hl,l7055h		;3034
	ld a,(le201h)		;3037
	or a			;303a
	jr nz,l3040h		;303b
	ld hl,l705bh+2		;303d
l3040h:
	ld a,b			;3040
	call 05ca6h		;3041
	ld e,a			;3044
	ld d,000h		;3045
	call sub_6f0fh		;3047
	ld a,005h		;304a
	jp 04d1eh		;304c
l304fh:
	ld (hl),008h		;304f
	inc l			;3051
	ld (hl),001h		;3052
	ret			;3054
	ex af,af'		;3055
	sub b			;3056
	ex af,af'		;3057
	ex af,af'		;3058
	sub b			;3059
	ex af,af'		;305a
	sub b			;305b
	sub b			;305c
	ld d,b			;305d
	ld h,b			;305e
	ld d,b			;305f
	ld d,b			;3060
	ld h,b			;3061
	ld d,b			;3062
	ld h,b			;3063
	ld h,b			;3064
	ld hl,le368h		;3065
	dec (hl)		;3068
	ret p			;3069
	ld hl,le38eh		;306a
	inc (hl)		;306d
	ld a,(hl)		;306e
	and 007h		;306f
	ld hl,l7097h		;3071
	call 05ca6h		;3074
sub_3077h:
	ld hl,le368h		;3077
	ld (hl),a		;307a
	cp 018h			;307b
	jr c,l3086h		;307d
	ld a,(le228h)		;307f
	sub (hl)		;3082
	neg			;3083
	ld (hl),a		;3085
l3086h:
	ld a,r			;3086
	and 07fh		;3088
	add a,010h		;308a
	ld e,a			;308c
	ld d,0f8h		;308d
	ld bc,l0000h		;308f
	ld a,019h		;3092
	jp 04d1eh		;3094
	ex af,af'		;3097
	inc bc			;3098
	ld b,030h		;3099
	dec b			;309b
	inc b			;309c
	rlca			;309d
	ld b,021h		;309e
l30a0h:
	ld a,a			;30a0
	ex (sp),hl		;30a1
	dec (hl)		;30a2
	ret p			;30a3
	ld a,(le228h)		;30a4
	sra a			;30a7
	neg			;30a9
	add a,014h		;30ab
	ld (hl),a		;30ad
	call sub_637bh		;30ae
	and 007h		;30b1
	ld hl,l70c6h		;30b3
	call 05ca6h		;30b6
	ld e,a			;30b9
	ld d,0f8h		;30ba
	call 06f07h		;30bc
	ld b,000h		;30bf
	ld a,00ch		;30c1
	jp 04d1eh		;30c3
	jr nc,$+58		;30c6
	ld b,b			;30c8
	ld c,b			;30c9
	ld d,b			;30ca
	ld e,b			;30cb
	ld h,b			;30cc
	ld (hl),b		;30cd
	ld hl,le39dh		;30ce
	dec (hl)		;30d1
	ret p			;30d2
	ld a,(le228h)		;30d3
	cp 006h			;30d6
	ld a,040h		;30d8
	jr nc,l30deh		;30da
	ld a,050h		;30dc
l30deh:
	ld (hl),a		;30de
	call sub_637bh		;30df
l30e2h:
	and 007h		;30e2
	ld b,a			;30e4
	ld hl,l70c6h		;30e5
	call 05ca6h		;30e8
	ld e,a			;30eb
	ld a,(le404h)		;30ec
	sub e			;30ef
	jr nc,l30f4h		;30f0
	neg			;30f2
l30f4h:
	cp 018h			;30f4
	jr nc,l30fch		;30f6
	ld a,b			;30f8
	inc a			;30f9
	jr l30e2h		;30fa
l30fch:
	ld d,0f8h		;30fc
	ld bc,l0000h		;30fe
l3101h:
	ld a,008h		;3101
	jp 04d1eh		;3103
	ld hl,le364h		;3106
	ld a,(hl)		;3109
	dec (hl)		;310a
	and a			;310b
	ret nz			;310c
	ld a,(le406h)		;310d
	sub 030h		;3110
	cp 090h			;3112
	ret nc			;3114
	ld a,(le404h)		;3115
	cp 0a0h			;3118
	ret z			;311a
	ld a,r			;311b
	and 03fh		;311d
	add a,060h		;311f
l3121h:
	ld (hl),a		;3121
	ld b,008h		;3122
l3124h:
	push bc			;3124
	ld a,b			;3125
	ld hl,0713fh		;3126
	call 04b67h		;3129
	ld a,(le404h)		;312c
	add a,e			;312f
	ld e,a			;3130
l3131h:
	ld a,(le406h)		;3131
	add a,d			;3134
	ld d,a			;3135
	ld c,000h		;3136
	ld a,014h		;3138
	call 04d1eh		;313a
	pop bc			;313d
	djnz l3124h		;313e
l3140h:
	ret			;3140
	rst 18h			;3141
	ld hl,l211fh+2		;3142
	ld hl,ldfdfh		;3145
	rst 18h			;3148
	ret nc			;3149
	nop			;314a
	nop			;314b
	jr nc,l317eh		;314c
	nop			;314e
	nop			;314f
l3150h:
	ret nc			;3150
	ld hl,le361h		;3151
	dec (hl)		;3154
	ret p			;3155
	ld a,r			;3156
	and 01fh		;3158
	add a,040h		;315a
	ld (hl),a		;315c
	dec l			;315d
	inc (hl)		;315e
	ld a,(hl)		;315f
	and 003h		;3160
	ld bc,00600h		;3162
	jr nz,l3168h		;3165
	inc c			;3167
l3168h:
	ld de,lf810h		;3168
	ld a,(le201h)		;316b
	cp 007h			;316e
	jr nz,l317ah		;3170
	ld a,(le360h)		;3172
	and 007h		;3175
	jr nz,l317ah		;3177
	ld d,a			;3179
l317ah:
	push bc			;317a
	push de			;317b
	ld a,00dh		;317c
l317eh:
	call 04d1eh		;317e
l3181h:
	pop de			;3181
	ld a,e			;3182
	add a,018h		;3183
	ld e,a			;3185
	pop bc			;3186
	djnz l317ah		;3187
	ret			;3189
	ld hl,0e378h		;318a
	dec (hl)		;318d
	ret p			;318e
	ld (hl),050h		;318f
	ld de,0f830h		;3191
	call sub_719ah		;3194
	ld de,lf870h		;3197
	ld bc,l0000h		;319a
	ld a,016h		;319d
	jp 04d1eh		;319f
	ld hl,le386h		;31a2
	dec (hl)		;31a5
	ret p			;31a6
	ld a,(le228h)		;31a7
	cp 006h			;31aa
	ld a,00ah		;31ac
	jr c,l31b2h		;31ae
	ld a,006h		;31b0
l31b2h:
	ld (hl),a		;31b2
	inc hl			;31b3
	inc (hl)		;31b4
	ld a,(hl)		;31b5
	and 003h		;31b6
	jr nz,l31c0h		;31b8
	dec hl			;31ba
	ld c,060h		;31bb
	jp sub_6ffdh		;31bd
l31c0h:
	and 001h		;31c0
	or a			;31c2
	ld de,l1030h		;31c3
	jr z,l31cbh		;31c6
	ld de,l9070h		;31c8
l31cbh:
	ld a,(le201h)		;31cb
	cp 005h			;31ce
	jr nz,l31d3h		;31d0
l31d2h:
	ld e,d			;31d2
l31d3h:
	ld d,0f8h		;31d3
	ld bc,l0001h		;31d5
	ld a,(le201h)		;31d8
	cp 005h			;31db
	jr z,l31e5h		;31dd
	ld hl,le38fh		;31df
	call 06effh		;31e2
l31e5h:
	ld a,011h		;31e5
	jp 04d1eh		;31e7
	ld a,(0e20ah)		;31ea
	or a			;31ed
	ret z			;31ee
	ld hl,0e379h		;31ef
	dec (hl)		;31f2
	ret p			;31f3
	ld (hl),010h		;31f4
	inc hl			;31f6
	inc (hl)		;31f7
	ld a,(hl)		;31f8
	and 003h		;31f9
	jr nz,l3203h		;31fb
	dec hl			;31fd
	ld c,070h		;31fe
	jp sub_6ffdh		;3200
l3203h:
	and 001h		;3203
	or a			;3205
	ld e,020h		;3206
	jr z,l320ch		;3208
l320ah:
	ld e,090h		;320a
l320ch:
	ld d,0f8h		;320c
	ld bc,l0001h		;320e
	ld a,00fh		;3211
	jp 04d1eh		;3213
	ld hl,le382h		;3216
	ld a,(hl)		;3219
	and a			;321a
	jp z,06fe7h		;321b
	inc l			;321e
	dec (hl)		;321f
	ret nz			;3220
	ld (hl),001h		;3221
	ld a,(le35bh)		;3223
	inc a			;3226
	and 007h		;3227
	ld (le35bh),a		;3229
	ld hl,l7240h		;322c
	call 05ca6h		;322f
	ld hl,le382h		;3232
	dec (hl)		;3235
	ld e,a			;3236
	ld d,0f8h		;3237
	ld c,000h		;3239
	ld a,009h		;323b
	jp 04d1eh		;323d
	djnz l31d2h		;3240
	ld d,b			;3242
	jr nc,$-126		;3243
	ld h,b			;3245
	jr z,l32b8h		;3246
	ld a,(le201h)		;3248
	ld hl,la0b4h		;324b
	sub 007h		;324e
	ret z			;3250
	ld hl,la0d8h		;3251
	sub 002h		;3254
	ret z			;3256
	ld hl,la14ah		;3257
	dec a			;325a
	ret z			;325b
	ld hl,la1ddh		;325c
	dec a			;325f
	ret			;3260
l3261h:
	call 07248h		;3261
	ret nz			;3264
	ld (lf010h),hl		;3265
	call 0728bh		;3268
	jr z,l3261h		;326b
	ret c			;326d
	ld hl,le3b1h		;326e
	inc (hl)		;3271
	jr l3261h		;3272
	call 07248h		;3274
	ret nz			;3277
	ld (lf010h),hl		;3278
	ld a,(0e320h)		;327b
sub_327eh:
	and a			;327e
	ret z			;327f
	ld a,0f8h		;3280
	ld (lf004h),a		;3282
l3285h:
	call 0728bh		;3285
	jr z,l3285h		;3288
	ret			;328a
	call sub_72b2h		;328b
	ret nz			;328e
	ld hl,le3b1h		;328f
	inc (hl)		;3292
	ld a,b			;3293
	and 0f8h		;3294
	ld e,a			;3296
	ld a,(lf004h)		;3297
	ld d,a			;329a
	bit 3,c			;329b
	jp z,072ach		;329d
	ld a,c			;32a0
	and 007h		;32a1
	add a,029h		;32a3
	ld c,000h		;32a5
	call 04d1eh		;32a7
	xor a			;32aa
	ret			;32ab
	inc c			;32ac
	ld a,02eh		;32ad
	jp l72a7h		;32af
	call sub_415bh		;32b2
	ld a,(le3b1h)		;32b5
l32b8h:
	ld b,a			;32b8
	add a,a			;32b9
	add a,b			;32ba
	ld l,a			;32bb
	ld h,000h		;32bc
	ld de,(lf010h)		;32be
	add hl,de		;32c2
	ld c,(hl)		;32c3
	inc hl			;32c4
	ld e,(hl)		;32c5
	inc hl			;32c6
	ld b,(hl)		;32c7
	ld a,b			;32c8
	and 007h		;32c9
	ld d,a			;32cb
	call 04157h		;32cc
	ld hl,(le203h)		;32cf
	or a			;32d2
	sbc hl,de		;32d3
	ret			;32d5
	ld a,(le34bh)		;32d6
	or a			;32d9
	ret z			;32da
	dec a			;32db
	call sub_4084h		;32dc
	rst 20h			;32df
	ld (hl),d		;32e0
	ld e,073h		;32e1
	daa			;32e3
	ld (hl),h		;32e4
	jr c,$+118		;32e5
	ld a,002h		;32e7
	ld (le34ch),a		;32e9
	ld hl,0730eh		;32ec
	ld de,lea70h		;32ef
	ld bc,l0010h		;32f2
	ldir			;32f5
	ld hl,(lea71h)		;32f7
	call 05c92h		;32fa
	ld (lea76h),hl		;32fd
	ld hl,(lea79h)		;3300
	call 05c92h		;3303
	ld (lea7eh),hl		;3306
	ld hl,le34bh		;3309
	inc (hl)		;330c
	ret			;330d
	ld bc,0b828h		;330e
	jr nc,l3313h		;3311
l3313h:
	ld a,(bc)		;3313
	nop			;3314
	nop			;3315
	ld bc,lb870h		;3316
	jr nc,l331dh		;3319
	ld a,(bc)		;331b
	nop			;331c
l331dh:
	nop			;331d
	ld a,(le34ch)		;331e
	and a			;3321
	jp z,l73aah		;3322
	ld hl,lea70h		;3325
	call 073e0h		;3328
	ld hl,lea78h		;332b
	call 073e0h		;332e
l3331h:
	ld a,(le1c3h)		;3331
	ld c,a			;3334
	rra			;3335
l3336h:
	ret c			;3336
	ld a,r			;3337
	and 01fh		;3339
	add a,070h		;333b
	ld b,a			;333d
	ld a,(le406h)		;333e
	cp b			;3341
	jr nc,l3375h		;3342
	ld a,r			;3344
	and 01eh		;3346
	ld hl,l73b8h		;3348
	call sub_407ah		;334b
	ld e,(hl)		;334e
	inc hl			;334f
	ld d,(hl)		;3350
	bit 1,c			;3351
	call nz,sub_5cadh	;3353
	ld (lf010h+2),de	;3356
	ld hl,lf900h		;335a
	ld (0f014h),hl		;335d
	ld hl,073d8h		;3360
	ld a,r			;3363
	and 006h		;3365
	ld c,a			;3367
	ld b,000h		;3368
	add hl,bc		;336a
	ld e,(hl)		;336b
	inc hl			;336c
	ld d,(hl)		;336d
	ld a,032h		;336e
	ld c,000h		;3370
	jp 04d1eh		;3372
l3375h:
	ld a,r			;3375
	and 01eh		;3377
	ld hl,l73b8h		;3379
	call sub_407ah		;337c
	ld e,(hl)		;337f
	inc hl			;3380
	ld d,(hl)		;3381
	bit 1,c			;3382
	call nz,sub_5cadh	;3384
	ld a,(le404h)		;3387
	cp 04dh			;338a
	ld hl,l9747h		;338c
	jr c,l3393h		;338f
	ld l,05bh		;3391
l3393h:
	ex de,hl		;3393
	ld (0f014h),hl		;3394
	ld a,(le404h)		;3397
	cp 04dh			;339a
	ld hl,l04feh+2		;339c
	jr nc,l33a4h		;339f
	ld hl,lfb00h		;33a1
l33a4h:
	ld (lf010h+2),hl	;33a4
	jp l736eh		;33a7
	ld de,l0100h		;33aa
	call 05b04h		;33ad
	ld a,05ah		;33b0
	ld (le349h),a		;33b2
	jp l7309h		;33b5
	nop			;33b8
	ld bc,00280h		;33b9
	nop			;33bc
	ld (bc),a		;33bd
	nop			;33be
	dec b			;33bf
	ld b,b			;33c0
	inc bc			;33c1
	nop			;33c2
	inc b			;33c3
	add a,b			;33c4
	inc bc			;33c5
	and b			;33c6
	ld bc,00540h		;33c7
	jr nz,l33cch		;33ca
l33cch:
	nop			;33cc
	inc bc			;33cd
	add a,b			;33ce
	inc b			;33cf
	nop			;33d0
	ld b,0c0h		;33d1
	dec b			;33d3
	ld h,b			;33d4
	ld bc,l0080h		;33d5
	ld c,a			;33d8
	adc a,a			;33d9
	ld d,l			;33da
	adc a,a			;33db
	ld b,a			;33dc
	sub a			;33dd
	ld e,e			;33de
	sub a			;33df
	ld a,(hl)		;33e0
	or a			;33e1
	ret z			;33e2
	ld a,l			;33e3
	add a,005h		;33e4
	ld l,a			;33e6
	dec (hl)		;33e7
	ret nz			;33e8
	dec l			;33e9
	dec l			;33ea
	ld a,(hl)		;33eb
	cp 010h			;33ec
	ld a,002h		;33ee
	jr c,l33f4h		;33f0
	ld a,00ah		;33f2
l33f4h:
	inc l			;33f4
	inc l			;33f5
	ld (hl),a		;33f6
	dec l			;33f7
	ld a,(hl)		;33f8
l33f9h:
	xor 001h		;33f9
	ld (hl),a		;33fb
	inc l			;33fc
	inc l			;33fd
	ld e,(hl)		;33fe
	inc l			;33ff
	ld d,(hl)		;3400
	ld hl,l7417h		;3401
	add a,a			;3404
	add a,a			;3405
	call sub_407ah		;3406
	ldi			;3409
	ldi			;340b
	ld a,01eh		;340d
	call sub_407fh		;340f
	ldi			;3412
l3414h:
	ldi			;3414
	ret			;3416
	ld d,h			;3417
	ld d,l			;3418
	ld d,(hl)		;3419
	ld d,a			;341a
	ld h,e			;341b
	ld h,h			;341c
	ld h,l			;341d
	ld h,(hl)		;341e
	ld d,(hl)		;341f
	ld d,a			;3420
	ld d,h			;3421
	ld d,l			;3422
	ld h,l			;3423
	ld h,(hl)		;3424
	ld h,e			;3425
	ld h,h			;3426
	ld hl,le349h		;3427
	dec (hl)		;342a
	ret nz			;342b
	call 07918h		;342c
	ld hl,l0001h		;342f
	ld (le3aah),hl		;3432
	jp l7309h		;3435
	call l4136h+1		;3438
	call sub_a2a2h		;343b
	call 04157h		;343e
	ld a,(le3aeh)		;3441
	and a			;3444
	ret z			;3445
	xor a			;3446
	ld (le3aah),a		;3447
	inc a			;344a
	ld (le348h),a		;344b
	ret			;344e
	ld (ix+02fh),000h	;344f
	ld (ix+002h),004h	;3453
	ld de,(0f014h)		;3457
	ld hl,(lf010h+2)	;345b
	jp 04f26h		;345e
	dec (ix+002h)		;3461
	jr nz,l3478h		;3464
	ld (ix+002h),004h	;3466
	ld a,(ix+031h)		;346a
	cp 003h			;346d
	ld a,003h		;346f
	jr nz,l3475h		;3471
	ld a,009h		;3473
l3475h:
	ld (ix+031h),a		;3475
l3478h:
	ld a,(le304h+1)		;3478
	ld c,a			;347b
	ld l,(ix+004h)		;347c
	ld h,(ix+006h)		;347f
	call 05c92h		;3482
	ld a,(hl)		;3485
	and a			;3486
	jr z,l348dh		;3487
	cp c			;3489
	jp c,sub_6514h		;348a
l348dh:
	bit 7,(ix+008h)		;348d
	ld de,l0020h		;3491
sub_3494h:
	jr nz,l3499h		;3494
	ld de,lffe0h		;3496
l3499h:
	add hl,de		;3499
	ld a,(hl)		;349a
	or a			;349b
	ret z			;349c
	cp c			;349d
	jp c,sub_6514h		;349e
	ret			;34a1
	ld a,(le3beh+2)		;34a2
	dec a			;34a5
	ret m			;34a6
	call sub_4084h		;34a7
	call nz,sub_e274h	;34aa
	ld (hl),h		;34ad
	rrca			;34ae
	ld (hl),l		;34af
	ld b,e			;34b0
	ld (hl),l		;34b1
	ld l,c			;34b2
	ld (hl),l		;34b3
	sub (hl)		;34b4
	ld (hl),l		;34b5
	sbc a,075h		;34b6
	rst 28h			;34b8
	ld (hl),l		;34b9
	inc d			;34ba
	halt			;34bb
	rra			;34bc
	halt			;34bd
	ld (hl),076h		;34be
	ld a,076h		;34c0
	add a,(hl)		;34c2
	halt			;34c3
	call sub_76e5h		;34c4
	ret nz			;34c7
	ld a,(le327h)		;34c8
	or a			;34cb
	ret z			;34cc
l34cdh:
	ld hl,l0001h		;34cd
	ld (le3c3h),hl		;34d0
	ld a,0f0h		;34d3
	call l4ae4h		;34d5
	ld a,037h		;34d8
	call l4ae4h		;34da
	ld hl,le3beh+2		;34dd
	inc (hl)		;34e0
	ret			;34e1
	ld hl,le3c3h		;34e2
	dec (hl)		;34e5
	ret z			;34e6
	ld (hl),00ah		;34e7
	inc l			;34e9
	ld a,(hl)		;34ea
	inc (hl)		;34eb
	add a,a			;34ec
	add a,a			;34ed
	add a,a			;34ee
	ld hl,l7737h+1		;34ef
	call sub_407ah		;34f2
	ld de,lee2ch		;34f5
	ld bc,l0004h		;34f8
	ldir			;34fb
	ld de,lee4ch		;34fd
	ld bc,l0004h		;3500
	ldir			;3503
	ld a,(le3c4h)		;3505
	cp 004h			;3508
	ret c			;350a
	ld a,03ch		;350b
	jr l355fh		;350d
	ld hl,le3c3h		;350f
	dec (hl)		;3512
	jr z,l353ah		;3513
	bit 1,(hl)		;3515
	ld a,000h		;3517
	jr z,l351ch		;3519
	inc a			;351b
l351ch:
	add a,a			;351c
	add a,a			;351d
	add a,a			;351e
	add a,a			;351f
	ld hl,l7758h		;3520
	call sub_407ah		;3523
	ld a,004h		;3526
	ld de,lee10h		;3528
l352bh:
	ld bc,l0004h		;352b
	ldir			;352e
	ex de,hl		;3530
	ld bc,l001ch		;3531
	add hl,bc		;3534
	ex de,hl		;3535
	dec a			;3536
	jr nz,l352bh		;3537
	ret			;3539
l353ah:
	xor a			;353a
	call 0751ch		;353b
	ld hl,sub_000ah		;353e
	jr l34cdh		;3541
	ld hl,le3c3h		;3543
	dec (hl)		;3546
	ret nz			;3547
	ld (hl),004h		;3548
	inc l			;354a
	ld c,(hl)		;354b
	inc (hl)		;354c
	ld b,000h		;354d
	ld hl,07565h		;354f
	add hl,bc		;3552
	ld a,(hl)		;3553
	call 0751ch		;3554
	ld a,(le3c4h)		;3557
	cp 004h			;355a
	ret c			;355c
	ld a,01eh		;355d
l355fh:
	ld (le3c3h),a		;355f
	jp l74ddh		;3562
	ld (bc),a		;3565
	inc bc			;3566
	inc b			;3567
	ld bc,lc321h		;3568
	ex (sp),hl		;356b
	dec (hl)		;356c
	ret nz			;356d
	ld hl,0eee4h		;356e
	ld a,005h		;3571
l3573h:
	ld d,h			;3573
	ld e,l			;3574
	inc de			;3575
	ld bc,l0017h		;3576
	ld (hl),000h		;3579
	ldir			;357b
	ld bc,l0009h		;357d
	add hl,bc		;3580
	dec a			;3581
	jr nz,l3573h		;3582
	call 04b17h		;3584
	ld hl,07725h		;3587
	ld de,lef09h+1		;358a
	ld bc,l000ch		;358d
	ldir			;3590
	ld a,01eh		;3592
	jr l355fh		;3594
	ld hl,le3c3h		;3596
	dec (hl)		;3599
	ret nz			;359a
	ld a,(le444h)		;359b
	dec a			;359e
	jr z,l35b3h		;359f
	dec a			;35a1
	jr z,l35c5h		;35a2
	ld hl,07731h		;35a4
	ld de,lef4ch		;35a7
	ld bc,l0007h		;35aa
	ldir			;35ad
	ld a,01eh		;35af
	jr l355fh		;35b1
l35b3h:
	ld a,08bh		;35b3
	ld hl,03458h		;35b5
	ld de,lef4ch		;35b8
	call sub_7690h		;35bb
	call l76ceh+1		;35be
	ld a,008h		;35c1
	jr l35d5h		;35c3
l35c5h:
	ld a,08bh		;35c5
	ld hl,03458h		;35c7
	ld de,0ef47h		;35ca
	call sub_7690h		;35cd
	call l76ceh+1		;35d0
	ld a,009h		;35d3
l35d5h:
	call l75e8h+3		;35d5
	ld a,03ch		;35d8
	ld (le3c3h),a		;35da
	ret			;35dd
	ld hl,le3c3h		;35de
	dec (hl)		;35e1
	ret nz			;35e2
l35e3h:
	ld hl,l0001h		;35e3
	ld (le3aah),hl		;35e6
	ld a,00ch		;35e9
	ld (le3beh+2),a		;35eb
	ret			;35ee
	ld hl,le3c3h		;35ef
	dec (hl)		;35f2
	jr z,l360fh		;35f3
l35f5h:
	ld hl,(le3c4h+1)	;35f5
	call sub_4a1dh		;35f8
	ld a,(le3c3h)		;35fb
	bit 2,a			;35fe
	ld a,00bh		;3600
	jr z,l3606h		;3602
	ld a,00dh		;3604
l3606h:
	exx			;3606
	out (c),a		;3607
	exx			;3609
	exx			;360a
	inc a			;360b
	out (c),a		;360c
	ret			;360e
l360fh:
	call l53a3h		;360f
	jr l35e3h		;3612
	ld hl,le3c3h		;3614
	dec (hl)		;3617
	jr nz,l35f5h		;3618
	ld a,01eh		;361a
	jp l755fh		;361c
	ld hl,le3c3h		;361f
	dec (hl)		;3622
	ret nz			;3623
	ld a,093h		;3624
	ld hl,03498h		;3626
	ld de,lef51h		;3629
	call sub_7690h		;362c
	call l76ceh+1		;362f
	ld a,00bh		;3632
	jr l35d5h		;3634
	ld hl,le3c3h		;3636
	dec (hl)		;3639
	jr nz,l35f5h		;363a
	jr l360fh		;363c
	call l4136h+1		;363e
	call sub_a2a2h		;3641
	call 04157h		;3644
	ld a,(le3aeh)		;3647
	and a			;364a
	ret z			;364b
	xor a			;364c
	ld (le3aah),a		;364d
l3650h:
	call 07656h		;3650
	jp l74ddh		;3653
	ld a,001h		;3656
	ld (le3beh+1),a		;3658
	ld hl,l0000h		;365b
	ld (le3c7h),hl		;365e
	ld a,03ch		;3661
	jp l4ae4h		;3663
	ld hl,(le3c7h)		;3666
	ld de,l0040h		;3669
	add hl,de		;366c
	ld (le3c7h),hl		;366d
l3670h:
	ld a,008h		;3670
	ld (le3c1h+1),a		;3672
	ld a,(le406h)		;3675
	cp 0f0h			;3678
	ret c			;367a
	call 04a08h		;367b
	call 04c76h		;367e
	xor a			;3681
	ld (le3beh+1),a		;3682
	ret			;3685
	call 07666h		;3686
	ret c			;3689
	ld a,001h		;368a
	ld (le3c1h),a		;368c
	ret			;368f
	ld (lf004h),a		;3690
	ld (lf000h),hl		;3693
	ld (lf002h),de		;3696
	ld a,(0e20fh)		;369a
	ld hl,l77a8h		;369d
	call 05ca6h		;36a0
	ld hl,(lf000h)		;36a3
	call 053f9h		;36a6
	ld hl,(lf000h)		;36a9
	ld bc,le000h		;36ac
	add hl,bc		;36af
	ld bc,l0040h		;36b0
	ld a,0a4h		;36b3
	call l0056h		;36b5
	ld b,008h		;36b8
	ld a,(lf004h)		;36ba
	ld hl,(lf002h)		;36bd
l36c0h:
	ld (hl),a		;36c0
	inc a			;36c1
	inc hl			;36c2
	djnz l36c0h		;36c3
	ld a,001h		;36c5
	call sub_80bdh		;36c7
	ld a,022h		;36ca
	jp l4ae4h		;36cc
	ld hl,l77aeh		;36cf
	ld a,(0e20fh)		;36d2
	call 05ca6h		;36d5
	add a,a			;36d8
	sub 001h		;36d9
	ld hl,03ac0h		;36db
	call sub_407ah		;36de
	ld (le3c4h+1),hl	;36e1
	ret			;36e4
	ld hl,le404h		;36e5
	ld a,(hl)		;36e8
	cp 048h			;36e9
	ld c,000h		;36eb
	jr z,l36f9h		;36ed
	ld bc,l0101h+1		;36ef
	jr c,l36f7h		;36f2
	ld bc,lff01h		;36f4
l36f7h:
	add a,b			;36f7
	ld (hl),a		;36f8
l36f9h:
	ld d,a			;36f9
	inc l			;36fa
	inc l			;36fb
l36fch:
	ld a,(hl)		;36fc
	cp 050h			;36fd
	ld b,000h		;36ff
	jr z,l370fh		;3701
l3703h:
	ld e,001h		;3703
	ld b,008h		;3705
	jr c,l370dh		;3707
	ld e,0ffh		;3709
	ld b,004h		;370b
l370dh:
	add a,e			;370d
	ld (hl),a		;370e
l370fh:
	ld e,a			;370f
	push de			;3710
l3711h:
	push bc			;3711
	call sub_a82eh		;3712
	pop bc			;3715
l3716h:
	ld a,c			;3716
l3717h:
	or b			;3717
	ld bc,le3c1h+1		;3718
l371bh:
	ld (bc),a		;371b
l371ch:
	call sub_a79ah		;371c
	pop de			;371f
	ld hl,04850h		;3720
	rst 20h			;3723
	ret			;3724
	cp e			;3725
	cp h			;3726
l3727h:
	cp l			;3727
	nop			;3728
	cp (hl)			;3729
	cp a			;372a
	ret nz			;372b
l372ch:
	pop bc			;372c
	cp l			;372d
	jp nz,lc4c3h		;372e
	push bc			;3731
	cp h			;3732
	pop bc			;3733
	add a,09bh		;3734
	push bc			;3736
	sbc a,h			;3737
	or c			;3738
	nop			;3739
	nop			;373a
	nop			;373b
l373ch:
	or d			;373c
	nop			;373d
	nop			;373e
	nop			;373f
	or c			;3740
l3741h:
	or e			;3741
	nop			;3742
	nop			;3743
	or d			;3744
	or h			;3745
	nop			;3746
	nop			;3747
	or c			;3748
	or e			;3749
	or l			;374a
	nop			;374b
	or d			;374c
	or h			;374d
	or (hl)			;374e
	nop			;374f
	or c			;3750
l3751h:
	or e			;3751
	or l			;3752
	or a			;3753
	or d			;3754
	or h			;3755
	or (hl)			;3756
	cp b			;3757
	jr z,l36f7h		;3758
	sbc a,(hl)		;375a
	jr c,l36fch		;375b
	and b			;375d
	and c			;375e
	and d			;375f
	and e			;3760
	and h			;3761
	and l			;3762
	and (hl)		;3763
	ld c,b			;3764
	ld h,l			;3765
	ld h,l			;3766
	ld e,b			;3767
	jr z,l3711h		;3768
	xor b			;376a
	jr c,l3716h		;376b
	xor d			;376d
	xor e			;376e
	xor h			;376f
	xor l			;3770
	xor (hl)		;3771
	xor a			;3772
	or b			;3773
	ld c,b			;3774
	cp d			;3775
	cp d			;3776
	ld e,b			;3777
	jr z,l3717h		;3778
	sbc a,(hl)		;377a
	jr c,l371ch		;377b
	and b			;377d
	and c			;377e
	xor h			;377f
	and e			;3780
	and h			;3781
	and l			;3782
	or b			;3783
	ld c,b			;3784
	ld h,l			;3785
	ld h,l			;3786
	ld e,b			;3787
	jr z,l3727h		;3788
	xor b			;378a
	jr c,l372ch		;378b
	and b			;378d
	xor e			;378e
	xor h			;378f
	and e			;3790
	and h			;3791
	xor a			;3792
	or b			;3793
	ld c,b			;3794
	ld h,l			;3795
	cp d			;3796
	ld e,b			;3797
	jr z,l3741h		;3798
	xor b			;379a
	jr c,l373ch		;379b
	xor d			;379d
	xor e			;379e
	xor h			;379f
	and e			;37a0
	xor (hl)		;37a1
	xor a			;37a2
	or b			;37a3
	ld c,b			;37a4
	cp d			;37a5
	cp d			;37a6
	ld e,b			;37a7
	ld a,(bc)		;37a8
	inc c			;37a9
	dec b			;37aa
	ex af,af'		;37ab
	djnz $+8		;37ac
	add hl,bc		;37ae
	inc b			;37af
	dec b			;37b0
	ld (bc),a		;37b1
	inc bc			;37b2
	ld b,003h		;37b3
	inc b			;37b5
	ld hl,03b00h		;37b6
	call sub_4a1dh		;37b9
	exx			;37bc
	ld a,(le400h)		;37bd
	inc a			;37c0
	jr z,l37e6h		;37c1
	ld hl,le304h		;37c3
	ld a,(hl)		;37c6
	add a,01ch		;37c7
	and 07ch		;37c9
	ld (hl),a		;37cb
	ld e,a			;37cc
	ld d,020h		;37cd
	jp lcd0bh		;37cf
	nop			;37d2
	nop			;37d3
	nop			;37d4
	nop			;37d5
	nop			;37d6
	nop			;37d7
	nop			;37d8
	nop			;37d9
	nop			;37da
	nop			;37db
	nop			;37dc
	nop			;37dd
	nop			;37de
	nop			;37df
	nop			;37e0
	nop			;37e1
	nop			;37e2
	nop			;37e3
	nop			;37e4
	nop			;37e5
l37e6h:
	ld hl,le280h		;37e6
	ld b,080h		;37e9
	outi			;37eb
	jp nz,077ebh		;37ed
	ret			;37f0
	ld hl,03800h		;37f1
	call sub_4a1dh		;37f4
	exx			;37f7
	ld hl,led00h		;37f8
	ld a,(le34eh)		;37fb
	or a			;37fe
	jr z,l3808h		;37ff
	ld de,l0001h		;3801
	call m,sub_5cadh	;3804
	add hl,de		;3807
l3808h:
	ld a,(le202h)		;3808
	jp lccach		;380b
	nop			;380e
	nop			;380f
	nop			;3810
	nop			;3811
	nop			;3812
	nop			;3813
	nop			;3814
	nop			;3815
	nop			;3816
	nop			;3817
	nop			;3818
	nop			;3819
	nop			;381a
	ret			;381b
	ld hl,lea98h		;381c
	ld a,(hl)		;381f
	dec a			;3820
	ret m			;3821
	call sub_4084h		;3822
	cpl			;3825
	ld a,b			;3826
	ld (hl),d		;3827
	ld a,b			;3828
	call 0e378h		;3829
	ld a,b			;382c
	dec bc			;382d
	ld a,c			;382e
	ld hl,lea98h		;382f
	inc (hl)		;3832
	inc l			;3833
	ld (hl),050h		;3834
	inc l			;3836
	ld (hl),0a0h		;3837
l3839h:
	inc l			;3839
	ld (hl),001h		;383a
	inc l			;383c
	ld (hl),000h		;383d
	xor a			;383f
	ld (le343h+2),a		;3840
	ld (le348h),a		;3843
	ld a,003h		;3846
	ld (le34dh),a		;3848
	ld a,064h		;384b
	ld (lea12h),a		;384d
	call 04b51h		;3850
l3853h:
	ld hl,l786ah		;3853
l3856h:
	ld de,lee57h		;3856
	ldi			;3859
	ldi			;385b
	ld de,lee76h+1		;385d
	ldi			;3860
	ldi			;3862
	ret			;3864
l3865h:
	ld hl,0786eh		;3865
	jr l3856h		;3868
	sub (hl)		;386a
	and d			;386b
	xor (hl)		;386c
	cp d			;386d
	sub l			;386e
	and c			;386f
	xor l			;3870
	cp c			;3871
	ld a,(le343h+2)		;3872
	or a			;3875
	jr nz,l388bh		;3876
	call sub_78aeh		;3878
	ld a,(lea12h)		;387b
	cp 020h			;387e
	jr nc,l3853h		;3880
	ld a,(le1c3h)		;3882
	bit 2,a			;3885
	jr z,l3853h		;3887
	jr l3865h		;3889
l388bh:
	ld de,l04feh+2		;388b
	call 05b04h		;388e
	call 07865h		;3891
	xor a			;3894
	ld (le343h+2),a		;3895
	ld a,078h		;3898
	ld (lea9dh),a		;389a
	ld a,039h		;389d
	call l4ae4h		;389f
	ld a,a			;38a2
	ld (le300h),a		;38a3
	call 07918h		;38a6
l38a9h:
	ld hl,lea98h		;38a9
	inc (hl)		;38ac
	ret			;38ad
	ld hl,lea99h+2		;38ae
	dec (hl)		;38b1
	ret nz			;38b2
	ld a,(lea12h)		;38b3
	cp 020h			;38b6
	ld a,012h		;38b8
	jr nc,l38beh		;38ba
	ld a,00ch		;38bc
l38beh:
	ld (hl),a		;38be
	inc l			;38bf
	inc (hl)		;38c0
	bit 1,(hl)		;38c1
	ld de,l9c38h		;38c3
	jr z,l38cah		;38c6
	ld e,063h		;38c8
l38cah:
	jp sub_938fh		;38ca
	ld hl,lea9dh		;38cd
	dec (hl)		;38d0
	jr z,l38dbh		;38d1
	ld a,(hl)		;38d3
	rra			;38d4
	and 001h		;38d5
	ld (le34eh),a		;38d7
	ret			;38da
l38dbh:
	ld hl,l0001h		;38db
	ld (le3aah),hl		;38de
	jr l38a9h		;38e1
	ld a,(le1c3h)		;38e3
	and 003h		;38e6
	dec a			;38e8
	cp 002h			;38e9
	jr nz,l38eeh		;38eb
	xor a			;38ed
l38eeh:
	ld (le34eh),a		;38ee
	call l4136h+1		;38f1
	call sub_a2a2h		;38f4
	call 04157h		;38f7
	ld a,(le3aeh)		;38fa
	and a			;38fd
	ret z			;38fe
	xor a			;38ff
	ld (le3aah),a		;3900
	ld (le34eh),a		;3903
	call 07656h		;3906
	jr l38a9h		;3909
	call 07666h		;390b
	ret c			;390e
	xor a			;390f
	ld (lea98h),a		;3910
	inc a			;3913
	ld (le348h),a		;3914
	ret			;3917
	ld hl,0e600h		;3918
	ld de,le601h		;391b
	ld bc,l039fh		;391e
	ld (hl),000h		;3921
	ldir			;3923
	xor a			;3925
	ld (le352h),a		;3926
	ld (le355h),a		;3929
	ld (le36dh),a		;392c
l392fh:
	ret			;392f
	ld hl,0e570h		;3930
	ld de,lffefh+1		;3933
	ld bc,sub_0807h+1	;3936
l3939h:
	ld a,(hl)		;3939
	and a			;393a
	jr nz,l3941h		;393b
	dec c			;393d
	add hl,de		;393e
	djnz l3939h		;393f
l3941h:
	ld a,c			;3941
	ld (le3b2h),a		;3942
	ret			;3945
l3946h:
	call sub_6878h		;3946
	ret nz			;3949
	ld ix,le500h		;394a
	ld a,(le3b2h)		;394e
	and a			;3951
	ret z			;3952
	ld b,a			;3953
l3954h:
	push bc			;3954
	call sub_7961h		;3955
	pop bc			;3958
	ld de,l0010h		;3959
	add ix,de		;395c
	djnz l3954h		;395e
	ret			;3960
	ld a,(ix+000h)		;3961
	and a			;3964
	ret z			;3965
	call 079afh		;3966
	call 07981h		;3969
	ld a,(0e320h)		;396c
	and a			;396f
	ret z			;3970
	ld a,(ix+006h)		;3971
	sub 008h		;3974
	jr c,l397ch		;3976
	ld (ix+006h),a		;3978
	ret			;397b
l397ch:
	ld (ix+000h),000h	;397c
	ret			;3980
	ld a,(ix+000h)		;3981
	cp 002h			;3984
	ret z			;3986
	cp 004h			;3987
	ret z			;3989
	cp 006h			;398a
	ret z			;398c
	cp 007h			;398d
	ret z			;398f
	cp 00bh			;3990
	ret z			;3992
	cp 00eh			;3993
	ret z			;3995
	cp 010h			;3996
	ret z			;3998
	ld a,(ix+006h)		;3999
	cp 0e0h			;399c
	ld a,0ffh		;399e
l39a0h:
	jr nc,l39abh		;39a0
	ld a,(ix+000h)		;39a2
	dec a			;39a5
	ret z			;39a6
	cp 002h			;39a7
	ret z			;39a9
	xor a			;39aa
l39abh:
	ld (ix+00dh),a		;39ab
	ret			;39ae
	dec a			;39af
	call sub_4084h		;39b0
	adc a,c			;39b3
	or h			;39b4
	xor (hl)		;39b5
	ld a,c			;39b6
	xor (hl)		;39b7
	ld a,c			;39b8
	and l			;39b9
	cp b			;39ba
	sbc a,b			;39bb
	cp c			;39bc
	cp h			;39bd
	cp e			;39be
	ld b,c			;39bf
	and c			;39c0
	dec l			;39c1
l39c2h:
	ld a,d			;39c2
	xor l			;39c3
	or e			;39c4
	ld a,c			;39c5
	or a			;39c6
	push hl			;39c7
	ld a,c			;39c8
	xor 079h		;39c9
	rst 30h			;39cb
	ld a,c			;39cc
	out (079h),a		;39cd
	xor (hl)		;39cf
	ld a,c			;39d0
	call c,sub_cd79h	;39d1
	scf			;39d4
	ld b,c			;39d5
	call 0be62h		;39d6
	jp 04157h		;39d9
	call l4136h+1		;39dc
	call sub_bb06h		;39df
	jp 04157h		;39e2
	call l4136h+1		;39e5
	call sub_a3c5h		;39e8
	jp 04157h		;39eb
	call l4136h+1		;39ee
	call 0a4e2h		;39f1
	jp 04157h		;39f4
	call l4136h+1		;39f7
	call sub_a82eh		;39fa
	jp 04157h		;39fd
	ld ix,0e600h		;3a00
	ld b,00ch		;3a04
l3a06h:
	ld a,(ix+02fh)		;3a06
	and a			;3a09
	jr nz,l3a26h		;3a0a
	ld a,(ix+000h)		;3a0c
	and a			;3a0f
	jr z,l3a26h		;3a10
	cp 01dh			;3a12
	jr z,l3a1eh		;3a14
	cp 020h			;3a16
	jr z,l3a1eh		;3a18
	cp 022h			;3a1a
	jr nz,l3a26h		;3a1c
l3a1eh:
	call sub_9317h		;3a1e
	jr nc,l3a26h		;3a21
	call sub_6514h		;3a23
l3a26h:
	ld de,l0040h		;3a26
	add ix,de		;3a29
l3a2bh:
	djnz l3a06h		;3a2b
	ret			;3a2d
	ld a,(le201h)		;3a2e
	call sub_4084h		;3a31
	ld c,h			;3a34
	ld a,d			;3a35
	ld (hl),b		;3a36
	ld a,d			;3a37
	and b			;3a38
	ld a,d			;3a39
	or h			;3a3a
	ld a,d			;3a3b
	and 07ah		;3a3c
	dec l			;3a3e
	ld a,e			;3a3f
	ld h,a			;3a40
	ld a,e			;3a41
	sbc a,d			;3a42
	ld a,e			;3a43
sub_3a44h:
	rst 8			;3a44
	ld a,e			;3a45
	inc c			;3a46
	ld a,h			;3a47
	defb 0fdh,07bh,00ch ;illegal sequence	;3a48
	ld a,h			;3a4b
	ld a,(le205h)		;3a4c
	dec a			;3a4f
	jr z,l3a5fh		;3a50
	ld a,(le327h)		;3a52
	and a			;3a55
	ret z			;3a56
	ld a,001h		;3a57
	ld (lea98h),a		;3a59
	jp l7b62h		;3a5c
l3a5fh:
	ld a,(le348h)		;3a5f
	or a			;3a62
	ret z			;3a63
	xor a			;3a64
	ld (le348h),a		;3a65
	inc a			;3a68
	ld (le1e6h),a		;3a69
	ld (le1d6h),a		;3a6c
	ret			;3a6f
	ld a,(le205h)		;3a70
	dec a			;3a73
	jp z,l7be3h		;3a74
	ld a,(le327h)		;3a77
	or a			;3a7a
	ret z			;3a7b
	call l7b62h		;3a7c
	ld l,001h		;3a7f
	xor a			;3a81
	ld (le343h+2),a		;3a82
	ld (le340h+2),a		;3a85
	ld h,a			;3a88
	ld (le340h),hl		;3a89
	ld l,a			;3a8c
	ld (le346h),hl		;3a8d
	ld a,001h		;3a90
	ld (le34dh),a		;3a92
	ld a,008h		;3a95
	ld (le343h),a		;3a97
	ld a,070h		;3a9a
	ld (le304h+1),a		;3a9c
	ret			;3a9f
	ld a,(le205h)		;3aa0
	dec a			;3aa3
	jp z,l7be3h		;3aa4
	ld a,(le327h)		;3aa7
	and a			;3aaa
	ret z			;3aab
	ld l,004h		;3aac
	call sub_7a81h		;3aae
	jp l7b62h		;3ab1
	ld a,(le3d0h)		;3ab4
	and a			;3ab7
	jr z,l3ad3h		;3ab8
l3abah:
	ld a,(le327h)		;3aba
	and a			;3abd
	ret z			;3abe
	ld bc,l0408h+1		;3abf
	ld a,(0e20ah)		;3ac2
	bit 0,a			;3ac5
	jr z,l3acbh		;3ac7
	dec b			;3ac9
	dec b			;3aca
l3acbh:
	ld a,b			;3acb
	ld (le22ah),a		;3acc
	ld a,c			;3acf
	jp l7c7eh		;3ad0
l3ad3h:
	ld a,(le205h)		;3ad3
	dec a			;3ad6
	jp z,l7be3h		;3ad7
l3adah:
	ld a,(le327h)		;3ada
	and a			;3add
	ret z			;3ade
	ld l,004h		;3adf
	call sub_7a81h		;3ae1
	jr l3b62h		;3ae4
	ld a,(le205h)		;3ae6
l3ae9h:
	dec a			;3ae9
	jr z,l3b03h		;3aea
	dec a			;3aec
	jr z,l3b15h		;3aed
	dec a			;3aef
	jr z,l3b21h		;3af0
	dec a			;3af2
	jp z,l7be3h		;3af3
l3af6h:
	ld a,(le327h)		;3af6
	and a			;3af9
	ret z			;3afa
	ld hl,00258h		;3afb
	ld (le3a8h),hl		;3afe
	jr l3b62h		;3b01
l3b03h:
	ld hl,(le3a8h)		;3b03
	dec hl			;3b06
	ld (le3a8h),hl		;3b07
	ld a,l			;3b0a
	or h			;3b0b
	ret nz			;3b0c
	ld hl,l0220h		;3b0d
	ld (le323h+2),hl	;3b10
	jr l3b62h		;3b13
l3b15h:
	ld a,(le327h)		;3b15
	and a			;3b18
	ret z			;3b19
	ld l,005h		;3b1a
	call sub_7a81h		;3b1c
	jr l3b62h		;3b1f
l3b21h:
	ld a,(le340h+2)		;3b21
l3b24h:
	and a			;3b24
	ret z			;3b25
	ld l,002h		;3b26
	call sub_7a81h		;3b28
	jr l3b62h		;3b2b
	ld a,(le205h)		;3b2d
	dec a			;3b30
	jr z,l3b48h		;3b31
	dec a			;3b33
	jr z,l3b58h		;3b34
	dec a			;3b36
	jp z,l7be3h		;3b37
	ld a,(le327h)		;3b3a
	and a			;3b3d
	ret z			;3b3e
	xor a			;3b3f
	ld (le348h),a		;3b40
	call 0a017h		;3b43
	jr l3b62h		;3b46
l3b48h:
	ld hl,le348h		;3b48
	ld a,(hl)		;3b4b
	or a			;3b4c
	ret z			;3b4d
	xor a			;3b4e
	ld (hl),a		;3b4f
	ld de,l0020h		;3b50
	call sub_7bdbh		;3b53
	jr l3b62h		;3b56
l3b58h:
	ld a,(le327h)		;3b58
	and a			;3b5b
	ret z			;3b5c
	ld l,002h		;3b5d
	call sub_7a81h		;3b5f
l3b62h:
	ld hl,le205h		;3b62
	inc (hl)		;3b65
	ret			;3b66
	ld a,(le3d0h)		;3b67
	and a			;3b6a
	jr z,l3b78h		;3b6b
	ld a,(le327h)		;3b6d
	and a			;3b70
	ret z			;3b71
	ld bc,l070ah		;3b72
	jp 07ac2h		;3b75
l3b78h:
	ld a,(le205h)		;3b78
	dec a			;3b7b
	jr z,l3b8dh		;3b7c
	ld a,(le327h)		;3b7e
	and a			;3b81
	ret z			;3b82
	xor a			;3b83
	ld (le348h),a		;3b84
	inc a			;3b87
	ld (le34bh),a		;3b88
	jr l3b62h		;3b8b
l3b8dh:
	ld hl,le348h		;3b8d
	ld a,(hl)		;3b90
	or a			;3b91
	ret z			;3b92
	xor a			;3b93
	ld (hl),a		;3b94
	ld (le34bh),a		;3b95
	jr l3c11h		;3b98
	ld a,(le205h)		;3b9a
	dec a			;3b9d
	jr z,l3bb2h		;3b9e
	dec a			;3ba0
	jr z,l3bc3h		;3ba1
	dec a			;3ba3
	jr z,l3beah		;3ba4
	ld a,(le327h)		;3ba6
	and a			;3ba9
	ret z			;3baa
	ld a,001h		;3bab
	ld (le3beh),a		;3bad
	jr l3b62h		;3bb0
l3bb2h:
	ld a,(le38dh)		;3bb2
	and a			;3bb5
	ret z			;3bb6
	xor a			;3bb7
	ld (le3beh),a		;3bb8
	ld de,l0020h		;3bbb
	call sub_7bdbh		;3bbe
	jr l3b62h		;3bc1
l3bc3h:
	ld a,(le327h)		;3bc3
	and a			;3bc6
	ret z			;3bc7
	ld l,003h		;3bc8
	call sub_7a81h		;3bca
	jr l3b62h		;3bcd
	ld hl,le3c1h		;3bcf
	ld a,(hl)		;3bd2
	or a			;3bd3
	ret z			;3bd4
	xor a			;3bd5
	ld (hl),a		;3bd6
	dec l			;3bd7
	ld (hl),a		;3bd8
	jr l3c11h		;3bd9
	ld hl,(le323h+2)	;3bdb
	add hl,de		;3bde
	ld (le323h+2),hl	;3bdf
	ret			;3be2
	ld a,(le340h+2)		;3be3
	and a			;3be6
	ret z			;3be7
	jr l3c11h		;3be8
l3beah:
	ld a,(le340h+2)		;3bea
	and a			;3bed
	ret z			;3bee
	ld a,(le400h)		;3bef
	and a			;3bf2
	ret m			;3bf3
	xor a			;3bf4
	ld (le1d6h),a		;3bf5
	inc a			;3bf8
	ld (le1e6h),a		;3bf9
	ret			;3bfc
	ld a,(le3d0h)		;3bfd
	and a			;3c00
	jr z,l3c0ch		;3c01
	ld a,(le327h)		;3c03
	and a			;3c06
	ret z			;3c07
	ld a,00bh		;3c08
	jr l3c7eh		;3c0a
l3c0ch:
	ld a,(le327h)		;3c0c
	and a			;3c0f
	ret z			;3c10
l3c11h:
	ld a,(le400h)		;3c11
	and a			;3c14
	ret m			;3c15
	ld a,001h		;3c16
	ld (le1dah),a		;3c18
	ret			;3c1b
	ld a,(le22bh)		;3c1c
	and a			;3c1f
	jr nz,l3c2dh		;3c20
	ld a,(le201h)		;3c22
	cp 008h			;3c25
	jr z,l3c3fh		;3c27
	jr nc,l3c44h		;3c29
	jr l3c6eh		;3c2b
l3c2dh:
	xor a			;3c2d
	ld (le22bh),a		;3c2e
	inc a			;3c31
	ld (le1dbh),a		;3c32
	call 07c56h		;3c35
	ld (le22ah),a		;3c38
	ld a,008h		;3c3b
	jr l3c7eh		;3c3d
l3c3fh:
	ld a,002h		;3c3f
	ld (le1dbh),a		;3c41
l3c44h:
	ld hl,le206h		;3c44
	inc (hl)		;3c47
	jr nz,l3c4bh		;3c48
	dec (hl)		;3c4a
l3c4bh:
	ld de,l0080h		;3c4b
	call 07fa4h		;3c4e
	ld a,(le22ah)		;3c51
	jr l3c7eh		;3c54
	ld a,(le201h)		;3c56
	ld hl,0e20ah		;3c59
	bit 0,(hl)		;3c5c
	jr z,l3c66h		;3c5e
	dec a			;3c60
	ret p			;3c61
	ld a,001h		;3c62
	inc (hl)		;3c64
	ret			;3c65
l3c66h:
	inc a			;3c66
	cp 008h			;3c67
	ret c			;3c69
	ld a,006h		;3c6a
	inc (hl)		;3c6c
	ret			;3c6d
l3c6eh:
	ld hl,le206h		;3c6e
	inc (hl)		;3c71
	jr nz,l3c75h		;3c72
	dec (hl)		;3c74
l3c75h:
	ld de,l0080h		;3c75
	call 07fa4h		;3c78
l3c7bh:
	call 07c56h		;3c7b
l3c7eh:
	ld (le201h),a		;3c7e
	ld a,043h		;3c81
	call l4ae4h		;3c83
	xor a			;3c86
	ld (le205h),a		;3c87
	ld (le340h+2),a		;3c8a
	jp l60d1h		;3c8d
	ld a,(le300h)		;3c90
	and a			;3c93
	ret nz			;3c94
	ld a,(le400h)		;3c95
	and a			;3c98
	ret m			;3c99
	ld a,(le3d0h)		;3c9a
	and a			;3c9d
	ret nz			;3c9e
	ld a,(le3aah)		;3c9f
	or a			;3ca2
	ret nz			;3ca3
	ld a,(le3beh+2)		;3ca4
	or a			;3ca7
	ret nz			;3ca8
	ld a,(le34fh)		;3ca9
	or a			;3cac
	ret nz			;3cad
	ld a,(0e190h)		;3cae
	bit 0,a			;3cb1
	ret nz			;3cb3
	ld a,(le201h)		;3cb4
	ld hl,l7ce6h		;3cb7
	call 04b67h		;3cba
	ld c,e			;3cbd
	ld b,d			;3cbe
	ld hl,(le203h)		;3cbf
l3cc2h:
	ld a,(bc)		;3cc2
	ld e,a			;3cc3
	inc bc			;3cc4
	ld a,(bc)		;3cc5
	ld d,a			;3cc6
	inc bc			;3cc7
	rst 20h			;3cc8
	jr z,l3ce1h		;3cc9
	jr c,l3cd0h		;3ccb
	inc bc			;3ccd
	jr l3cc2h		;3cce
l3cd0h:
	ld a,(bc)		;3cd0
	ld hl,le0a0h		;3cd1
	cp (hl)			;3cd4
	ret z			;3cd5
	cp 0ffh			;3cd6
	ret z			;3cd8
	call l4ae4h		;3cd9
	ld a,0f0h		;3cdc
	jp l4ae4h		;3cde
l3ce1h:
	ld a,0f1h		;3ce1
	jp l4ae4h		;3ce3
	cp 07ch			;3ce6
	inc b			;3ce8
	ld a,l			;3ce9
	dec c			;3cea
	ld a,l			;3ceb
	ld d,07dh		;3cec
	jr z,l3d6dh		;3cee
	rra			;3cf0
	ld a,l			;3cf1
	ld sp,03a7dh		;3cf2
	ld a,l			;3cf5
	ld b,e			;3cf6
	ld a,l			;3cf7
	ld c,c			;3cf8
	ld a,l			;3cf9
	ld c,c			;3cfa
	ld a,l			;3cfb
	ld c,c			;3cfc
	ld a,l			;3cfd
	or b			;3cfe
	ld bc,lff29h		;3cff
	rst 38h			;3d02
	dec (hl)		;3d03
	add a,b			;3d04
	nop			;3d05
	dec hl			;3d06
	and b			;3d07
	ld bc,lff2ch		;3d08
	rst 38h			;3d0b
	inc (hl)		;3d0c
	add a,h			;3d0d
	nop			;3d0e
	dec hl			;3d0f
l3d10h:
	sbc a,001h		;3d10
	dec l			;3d12
	rst 38h			;3d13
	rst 38h			;3d14
	inc (hl)		;3d15
	ld h,b			;3d16
	nop			;3d17
	dec hl			;3d18
	jp m,02e01h		;3d19
	rst 38h			;3d1c
	rst 38h			;3d1d
	inc (hl)		;3d1e
	add a,l			;3d1f
	nop			;3d20
	dec hl			;3d21
	sbc a,d			;3d22
	ld bc,lff30h		;3d23
	rst 38h			;3d26
	inc (hl)		;3d27
	add a,l			;3d28
	nop			;3d29
	dec hl			;3d2a
	jp m,l3101h		;3d2b
	rst 38h			;3d2e
	rst 38h			;3d2f
	inc (hl)		;3d30
	ld h,b			;3d31
	nop			;3d32
	dec hl			;3d33
	cp d			;3d34
	ld bc,lff32h		;3d35
	rst 38h			;3d38
	inc (hl)		;3d39
	ld h,b			;3d3a
	nop			;3d3b
	dec hl			;3d3c
	jp c,03302h		;3d3d
	rst 38h			;3d40
	rst 38h			;3d41
	inc (hl)		;3d42
	sub b			;3d43
	nop			;3d44
	dec (hl)		;3d45
	rst 38h			;3d46
	rst 38h			;3d47
	ld b,e			;3d48
	ld c,a			;3d49
	ld bc,lff36h		;3d4a
	rst 38h			;3d4d
	ld hl,(0003ah)		;3d4e
	call po,0f83dh		;3d51
	ld a,(le3beh+2)		;3d54
	or a			;3d57
	ret nz			;3d58
	ld a,(le1c8h)		;3d59
	and 020h		;3d5c
	ret z			;3d5e
	ld hl,0e330h		;3d5f
	ld a,(hl)		;3d62
	or a			;3d63
	ret z			;3d64
	ld (le33dh),a		;3d65
	ld hl,le333h		;3d68
	add a,l			;3d6b
	ld l,a			;3d6c
l3d6dh:
	ld a,(hl)		;3d6d
	or a			;3d6e
	ret m			;3d6f
	xor a			;3d70
	ld (0e330h),a		;3d71
	ld hl,l53a3h		;3d74
	push hl			;3d77
	ld hl,l7d8dh		;3d78
	ld a,(0e20fh)		;3d7b
	call 04b67h		;3d7e
	ex de,hl		;3d81
	ld a,(le33dh)		;3d82
	call sub_4084h+1	;3d85
	ld a,006h		;3d88
	jp l4ae4h		;3d8a
	sbc a,e			;3d8d
	ld a,l			;3d8e
	and a			;3d8f
	ld a,l			;3d90
	or l			;3d91
	ld a,l			;3d92
	or l			;3d93
	ld a,l			;3d94
	or l			;3d95
	ld a,l			;3d96
	or l			;3d97
	ld a,l			;3d98
	push bc			;3d99
	ld a,l			;3d9a
	push bc			;3d9b
	ld a,l			;3d9c
	exx			;3d9d
	ld a,l			;3d9e
	ld (l6b7eh),a		;3d9f
	ld a,(hl)		;3da2
	ccf			;3da3
	ld a,a			;3da4
	ld h,(hl)		;3da5
	ld a,a			;3da6
	add a,a			;3da7
	ld a,a			;3da8
	exx			;3da9
	ld a,l			;3daa
	ld (l6b7eh),a		;3dab
	ld a,(hl)		;3dae
	exx			;3daf
	ld a,(hl)		;3db0
	ccf			;3db1
	ld a,a			;3db2
	ld h,(hl)		;3db3
	ld a,a			;3db4
	add a,a			;3db5
	ld a,a			;3db6
	exx			;3db7
	ld a,l			;3db8
	ld (l6b7eh),a		;3db9
	ld a,(hl)		;3dbc
	exx			;3dbd
	ld a,(hl)		;3dbe
	dec bc			;3dbf
	ld a,a			;3dc0
	ccf			;3dc1
	ld a,a			;3dc2
	ld h,(hl)		;3dc3
	ld a,a			;3dc4
	add a,a			;3dc5
	ld a,a			;3dc6
	exx			;3dc7
	ld a,l			;3dc8
	ld (l4f7eh),a		;3dc9
	ld a,(hl)		;3dcc
	ld l,e			;3dcd
	ld a,(hl)		;3dce
	exx			;3dcf
	ld a,(hl)		;3dd0
	dec bc			;3dd1
	ld a,a			;3dd2
	ccf			;3dd3
	ld a,a			;3dd4
	ld h,(hl)		;3dd5
	ld a,a			;3dd6
	add a,a			;3dd7
	ld a,a			;3dd8
	ld hl,le20bh		;3dd9
	ld a,(hl)		;3ddc
	or a			;3ddd
	jr z,l3e23h		;3dde
	ld (hl),000h		;3de0
	ld hl,0e210h		;3de2
	ld de,0e330h		;3de5
	ld bc,l000dh		;3de8
	ldir			;3deb
	xor a			;3ded
	ld (0e330h),a		;3dee
	ld de,le430h		;3df1
	ld bc,l0007h		;3df4
	ldir			;3df7
l3df9h:
	ld a,(hl)		;3df9
	or a			;3dfa
	jr z,l3e05h		;3dfb
	ld (le401h),a		;3dfd
	ld a,002h		;3e00
	ld (le400h),a		;3e02
l3e05h:
	inc l			;3e05
	ld a,(hl)		;3e06
	ld (le402h),a		;3e07
	inc l			;3e0a
	ld a,(hl)		;3e0b
	ld (le40bh),a		;3e0c
	dec a			;3e0f
	ret m			;3e10
	jr z,l3e20h		;3e11
	ld a,001h		;3e13
	ld (le40bh),a		;3e15
	call sub_aa43h		;3e18
	ld a,002h		;3e1b
	ld (le40bh),a		;3e1d
l3e20h:
	jp sub_aa43h		;3e20
l3e23h:
	ld hl,le334h		;3e23
	inc (hl)		;3e26
	ld a,(hl)		;3e27
	cp 007h			;3e28
	jr c,l3e2eh		;3e2a
	ld (hl),0ffh		;3e2c
l3e2eh:
	ld (le402h),a		;3e2e
	ret			;3e31
	xor a			;3e32
	ld (le435h),a		;3e33
	call sub_804ah		;3e36
	ld hl,le334h+1		;3e39
	inc (hl)		;3e3c
	ld a,(hl)		;3e3d
	cp c			;3e3e
	jr c,l3e43h		;3e3f
	ld (hl),0ffh		;3e41
l3e43h:
	ld (le433h),a		;3e43
	call sub_7fb3h		;3e46
	ld de,l0080h		;3e49
	jp 07fa4h		;3e4c
	xor a			;3e4f
	ld (le431h),a		;3e50
	ld (le432h),a		;3e53
	ld (le434h),a		;3e56
	ld (le435h),a		;3e59
	inc a			;3e5c
	ld (le436h),a		;3e5d
	ld (le430h),a		;3e60
	ld a,0ffh		;3e63
	ld (le334h+2),a		;3e65
	jp 07fc7h		;3e68
	call sub_804ah		;3e6b
	ld a,(le33dh)		;3e6e
	ld hl,le333h		;3e71
	add a,l			;3e74
	ld l,a			;3e75
	inc (hl)		;3e76
	ld a,(hl)		;3e77
	cp c			;3e78
	jr c,l3e7dh		;3e79
	ld (hl),0ffh		;3e7b
l3e7dh:
	dec a			;3e7d
	jr z,l3ea5h		;3e7e
	dec a			;3e80
	jr z,l3e8ah		;3e81
	call sub_7ff4h		;3e83
	ld a,006h		;3e86
	jr l3e95h		;3e88
l3e8ah:
	call sub_7ec6h		;3e8a
	call 04482h		;3e8d
	call sub_7fffh		;3e90
	ld a,005h		;3e93
l3e95h:
	ld (le432h),a		;3e95
	xor a			;3e98
	ld (le430h),a		;3e99
	ld (le431h),a		;3e9c
	ld de,l0080h		;3e9f
	jp 07fa4h		;3ea2
l3ea5h:
	xor a			;3ea5
	ld (le432h),a		;3ea6
	ld (le434h),a		;3ea9
	ld (le435h),a		;3eac
	ld (le436h),a		;3eaf
	inc a			;3eb2
	ld (le430h),a		;3eb3
	ld (le431h),a		;3eb6
	call 07fd8h		;3eb9
	call sub_7ec2h		;3ebc
	jp 0448eh		;3ebf
	ld a,00eh		;3ec2
	jr l3ec8h		;3ec4
	ld a,003h		;3ec6
l3ec8h:
	ld hl,le470h		;3ec8
	ld de,l0010h		;3ecb
	ld b,009h		;3ece
l3ed0h:
	cp (hl)			;3ed0
	jr nz,l3ed5h		;3ed1
	ld (hl),000h		;3ed3
l3ed5h:
	add hl,de		;3ed5
	djnz l3ed0h		;3ed6
	ret			;3ed8
	ld hl,le430h		;3ed9
	ld a,(hl)		;3edc
	cp 002h			;3edd
	jr nz,l3ee3h		;3edf
	ld (hl),001h		;3ee1
l3ee3h:
	xor a			;3ee3
	ld (le431h),a		;3ee4
	ld (le435h),a		;3ee7
	ld (le436h),a		;3eea
	call 0800bh		;3eed
	call sub_804ah		;3ef0
	ld a,(le33dh)		;3ef3
	ld hl,le333h		;3ef6
	add a,l			;3ef9
	ld l,a			;3efa
	inc (hl)		;3efb
	ld a,(hl)		;3efc
	ld (le434h),a		;3efd
	cp c			;3f00
l3f01h:
	jr c,l3f05h		;3f01
	ld (hl),0ffh		;3f03
l3f05h:
	ld de,l0080h		;3f05
	jp 07fa4h		;3f08
	ld hl,le430h		;3f0b
	ld a,(hl)		;3f0e
l3f0fh:
	cp 002h			;3f0f
	jr nz,l3f15h		;3f11
	ld (hl),001h		;3f13
l3f15h:
	xor a			;3f15
	ld (le433h),a		;3f16
	ld (le431h),a		;3f19
	ld (le434h),a		;3f1c
l3f1fh:
	ld (le436h),a		;3f1f
	call sub_804ah		;3f22
	ld a,(le33dh)		;3f25
	ld hl,le333h		;3f28
	add a,l			;3f2b
	ld l,a			;3f2c
	inc (hl)		;3f2d
	ld a,(hl)		;3f2e
	ld (le435h),a		;3f2f
	cp c			;3f32
	jr c,l3f37h		;3f33
	ld (hl),0ffh		;3f35
l3f37h:
	call sub_8028h		;3f37
	ld de,l0080h		;3f3a
	jr l3fa4h		;3f3d
	xor a			;3f3f
	ld (le430h),a		;3f40
	ld (le431h),a		;3f43
	ld (le436h),a		;3f46
	call sub_804ah		;3f49
	ld a,(le33dh)		;3f4c
	ld hl,le333h		;3f4f
	add a,l			;3f52
	ld l,a			;3f53
	inc (hl)		;3f54
	ld a,(hl)		;3f55
	ld (le432h),a		;3f56
	cp c			;3f59
	jr c,l3f5eh		;3f5a
	ld (hl),0ffh		;3f5c
l3f5eh:
	call sub_8041h		;3f5e
l3f61h:
	ld de,l0040h		;3f61
	jr l3fa4h		;3f64
	ld a,(le33dh)		;3f66
	ld hl,le333h		;3f69
	add a,l			;3f6c
	ld l,a			;3f6d
	inc (hl)		;3f6e
	ld a,(hl)		;3f6f
	ld (le40bh),a		;3f70
	cp 002h			;3f73
	jr c,l3f79h		;3f75
	ld (hl),0ffh		;3f77
l3f79h:
	call sub_aa43h		;3f79
	ld de,l0080h		;3f7c
l3f7fh:
	jr l3fa4h		;3f7f
l3f81h:
	ld a,001h		;3f81
	ld (le445h),a		;3f83
	ret			;3f86
	ld a,(le33dh)		;3f87
	ld hl,le333h		;3f8a
	add a,l			;3f8d
	ld l,a			;3f8e
	ld (hl),0ffh		;3f8f
	ld a,(le400h)		;3f91
	cp 003h			;3f94
	jr z,l3f81h		;3f96
	ld hl,l0a02h		;3f98
	ld (le400h),hl		;3f9b
	ld de,l0100h		;3f9e
	ld de,l0100h		;3fa1
l3fa4h:
	ld hl,(le227h)		;3fa4
	add hl,de		;3fa7
	ld a,h			;3fa8
	cp 010h			;3fa9
	jr c,l3fafh		;3fab
	ld h,00fh		;3fad
l3fafh:
	ld (le227h),hl		;3faf
	ret			;3fb2
	ld a,(0e20fh)		;3fb3
	cp 002h			;3fb6
	ret c			;3fb8
	cp 006h			;3fb9
	jr c,l3fc2h		;3fbb
l3fbdh:
	xor a			;3fbd
	ld (le339h),a		;3fbe
	ret			;3fc1
l3fc2h:
	xor a			;3fc2
	ld (le338h),a		;3fc3
	ret			;3fc6
	xor a			;3fc7
	ld (le33ah),a		;3fc8
l3fcbh:
	xor a			;3fcb
	ld (le339h),a		;3fcc
l3fcfh:
	xor a			;3fcf
	ld (le338h),a		;3fd0
l3fd3h:
	xor a			;3fd3
	ld (le337h),a		;3fd4
	ret			;3fd7
	ld a,(0e20fh)		;3fd8
	or a			;3fdb
	jr z,l3fd3h		;3fdc
	cp 001h			;3fde
	jr z,l3fcfh		;3fe0
	cp 006h			;3fe2
	jr c,l3fcbh		;3fe4
	xor a			;3fe6
	ld (le33ah),a		;3fe7
	ld (le339h),a		;3fea
	ld (le338h),a		;3fed
	ld (le334h+2),a		;3ff0
	ret			;3ff3
	ld a,(0e20fh)		;3ff4
	cp 007h			;3ff7
l3ff9h:
	ret c			;3ff9
l3ffah:
	xor a			;3ffa
	ld (le33ah),a		;3ffb
	ret			;3ffe
	ld a,(0e20fh)		;3fff
	cp 004h			;4002
	ret c			;4004
	cp 006h			;4005
	jr c,l3fbdh		;4007
	jr l3ffah		;4009
l400bh:
	ld a,(0e20fh)		;400b
	cp 001h			;400e
l4010h:
	jr z,l401dh		;4010
	cp 006h			;4012
	jr c,l4022h		;4014
	call 07fbdh		;4016
l4019h:
	xor a			;4019
	ld (le337h),a		;401a
l401dh:
	xor a			;401d
	ld (le334h+2),a		;401e
	ret			;4021
l4022h:
	xor a			;4022
l4023h:
	ld (le338h),a		;4023
	jr l401dh		;4026
	ld a,(0e20fh)		;4028
	cp 002h			;402b
	ret c			;402d
	cp 006h			;402e
	jr c,l4036h		;4030
	xor a			;4032
l4033h:
	ld (le338h),a		;4033
l4036h:
	xor a			;4036
	ld (le337h),a		;4037
l403ah:
	ld (le334h+2),a		;403a
	ld (le334h+1),a		;403d
	ret			;4040
	ld a,(0e20fh)		;4041
	cp 006h			;4044
	jr c,l401dh		;4046
	jr l4019h		;4048
	ld a,(0e20fh)		;404a
	ld c,a			;404d
	add a,a			;404e
	add a,a			;404f
	add a,a			;4050
	add a,c			;4051
l4052h:
	ld c,a			;4052
	ld a,(le33dh)		;4053
	add a,c			;4056
	ld c,a			;4057
	ld b,000h		;4058
	ld hl,l8074h		;405a
	add hl,bc		;405d
	ld c,(hl)		;405e
	ret			;405f
	ld hl,l806dh		;4060
	ld a,(0e20fh)		;4063
	call 05ca6h		;4066
	ld (le331h),a		;4069
	ret			;406c
	rlca			;406d
	ex af,af'		;406e
l406fh:
	add hl,bc		;406f
sub_4070h:
	add hl,bc		;4070
	add hl,bc		;4071
	add hl,bc		;4072
	ld a,(bc)		;4073
	ld a,(bc)		;4074
	rlca			;4075
	ld (bc),a		;4076
l4077h:
	ld bc,l0202h		;4077
sub_407ah:
	ld bc,l0000h		;407a
	nop			;407d
	rlca			;407e
sub_407fh:
	ld (bc),a		;407f
	ld bc,l0202h		;4080
	ld (bc),a		;4083
sub_4084h:
	ld bc,l0000h		;4084
	rlca			;4087
	ld (bc),a		;4088
	ld bc,l0202h		;4089
	ld (bc),a		;408c
	ld bc,l0001h		;408d
	rlca			;4090
l4091h:
	inc bc			;4091
	ld bc,l0202h		;4092
	ld (bc),a		;4095
	ld bc,l0001h		;4096
	rlca			;4099
	inc bc			;409a
	ld (bc),a		;409b
	ld (bc),a		;409c
	ld (bc),a		;409d
	ld (bc),a		;409e
	ld bc,l0001h		;409f
	rlca			;40a2
	inc bc			;40a3
	ld (bc),a		;40a4
	ld (bc),a		;40a5
	ld (bc),a		;40a6
	inc bc			;40a7
	ld (bc),a		;40a8
	ld bc,00700h		;40a9
	inc bc			;40ac
	ld bc,l0202h		;40ad
l40b0h:
	ld (bc),a		;40b0
l40b1h:
	inc bc			;40b1
	ld (bc),a		;40b2
	ld bc,l0307h		;40b3
	ld bc,l0202h+1		;40b6
	ld (bc),a		;40b9
	inc bc			;40ba
	ld (bc),a		;40bb
	ld bc,0c6cdh		;40bc
	add a,b			;40bf
	call sub_8060h		;40c0
	jp l5387h		;40c3
	ld b,a			;40c6
l40c7h:
	ld hl,0e20fh		;40c7
	ld a,(hl)		;40ca
	inc a			;40cb
	cp 008h			;40cc
	ret nc			;40ce
	ld (hl),a		;40cf
	push bc			;40d0
l40d1h:
	call sub_80d8h		;40d1
	pop bc			;40d4
	djnz l40c7h		;40d5
	ret			;40d7
	ld hl,lf010h		;40d8
	ld de,lf010h+1		;40db
	ld bc,l0008h		;40de
	ld (hl),000h		;40e1
	ldir			;40e3
	ld a,(0e20fh)		;40e5
	ld hl,l8146h		;40e8
	call 04b67h		;40eb
	ex de,hl		;40ee
l40efh:
	ld a,(hl)		;40ef
	or a			;40f0
	jr z,l4107h		;40f1
	inc hl			;40f3
	ld c,(hl)		;40f4
	inc hl			;40f5
	push hl			;40f6
	ld hl,le333h		;40f7
	add a,l			;40fa
	ld l,a			;40fb
	ld de,lf00fh		;40fc
	ld a,c			;40ff
	add a,e			;4100
l4101h:
	ld e,a			;4101
	ldi			;4102
l4104h:
	pop hl			;4104
	jr l40efh		;4105
l4107h:
	ld hl,lf010h		;4107
	ld de,le334h		;410a
	ld bc,l0009h		;410d
l4110h:
	ldir			;4110
sub_4112h:
	ld a,(0e20fh)		;4112
	cp 003h			;4115
sub_4117h:
	jr z,sub_413fh		;4117
	cp 004h			;4119
	jr z,l4136h		;411b
	cp 005h			;411d
	jr z,l412dh		;411f
l4121h:
	cp 007h			;4121
	ret nz			;4123
	ld hl,le337h		;4124
	ld a,(hl)		;4127
	inc a			;4128
	ret nz			;4129
	ld (hl),002h		;412a
	ret			;412c
l412dh:
	ld hl,le339h		;412d
	ld a,(hl)		;4130
l4131h:
	inc a			;4131
	ret nz			;4132
sub_4133h:
	ld (hl),002h		;4133
l4135h:
	ret			;4135
l4136h:
	ld hl,le334h+2		;4136
	ld a,(hl)		;4139
	inc a			;413a
sub_413bh:
	ret nz			;413b
	ld (hl),001h		;413c
	ret			;413e
sub_413fh:
	ld hl,le334h+1		;413f
	ld a,(hl)		;4142
sub_4143h:
	inc a			;4143
sub_4144h:
	ret nz			;4144
	ld (hl),002h		;4145
	ret			;4147
	ld d,(hl)		;4148
l4149h:
	add a,c			;4149
	ld h,e			;414a
	add a,c			;414b
	ld (hl),h		;414c
	add a,c			;414d
l414eh:
	ld (hl),h		;414e
	add a,c			;414f
	ld (hl),h		;4150
	add a,c			;4151
	add a,l			;4152
	add a,c			;4153
	ld (hl),d		;4154
	add a,c			;4155
	ld b,007h		;4156
	dec b			;4158
	ld b,004h		;4159
sub_415bh:
	dec b			;415b
	inc bc			;415c
	inc bc			;415d
	ld (bc),a		;415e
	ld (bc),a		;415f
	ld bc,l0001h		;4160
	rlca			;4163
	ex af,af'		;4164
	ld b,007h		;4165
	dec b			;4167
	ld b,004h		;4168
	inc b			;416a
	inc bc			;416b
	inc bc			;416c
sub_416dh:
	ld (bc),a		;416d
	ld (bc),a		;416e
	ld bc,l0001h		;416f
	add hl,bc		;4172
	add hl,bc		;4173
	ex af,af'		;4174
	ex af,af'		;4175
l4176h:
	rlca			;4176
	rlca			;4177
	ld b,006h		;4178
	dec b			;417a
	dec b			;417b
	inc b			;417c
	inc b			;417d
	inc bc			;417e
	inc bc			;417f
	ld (bc),a		;4180
l4181h:
	ld (bc),a		;4181
	ld bc,l0001h		;4182
	ex af,af'		;4185
	add hl,bc		;4186
	rlca			;4187
	ex af,af'		;4188
	ld b,007h		;4189
	dec b			;418b
	ld b,004h		;418c
	dec b			;418e
	inc bc			;418f
	inc b			;4190
	ld (bc),a		;4191
	ld (bc),a		;4192
	ld bc,l0001h		;4193
	ld a,007h		;4196
	ld (0e20fh),a		;4198
	ld a,00ah		;419b
	ld (le331h),a		;419d
	ld hl,l81cah		;41a0
	ld de,le334h		;41a3
	ld bc,l0009h		;41a6
	ldir			;41a9
	ld de,le430h		;41ab
	ld bc,l0007h		;41ae
sub_41b1h:
	ldir			;41b1
	ld c,07fh		;41b3
	ld hl,le400h		;41b5
	ld (hl),002h		;41b8
	inc l			;41ba
	ld (hl),c		;41bb
	inc l			;41bc
	ld (hl),002h		;41bd
	ld a,002h		;41bf
	ld (le40bh),a		;41c1
	call sub_7e13h		;41c4
	jp l53a3h		;41c7
	ld (bc),a		;41ca
	rst 38h			;41cb
	nop			;41cc
	nop			;41cd
	rst 38h			;41ce
	nop			;41cf
	ld (bc),a		;41d0
	rst 38h			;41d1
	rst 38h			;41d2
	nop			;41d3
	nop			;41d4
	ld (bc),a		;41d5
	inc bc			;41d6
	ld (bc),a		;41d7
	nop			;41d8
	nop			;41d9
	exx			;41da
	ld a,(le304h+1)		;41db
	ld c,a			;41de
	exx			;41df
	ld iy,le470h		;41e0
	ld b,009h		;41e4
l41e6h:
	push bc			;41e6
	call sub_81f3h		;41e7
	ld bc,l0010h		;41ea
	add iy,bc		;41ed
	pop bc			;41ef
	djnz l41e6h		;41f0
	ret			;41f2
	ld a,(iy+000h)		;41f3
	dec a			;41f6
	ret m			;41f7
	call sub_4084h		;41f8
	add hl,de		;41fb
	add a,d			;41fc
	daa			;41fd
	add a,d			;41fe
	add hl,de		;41ff
	add a,d			;4200
	ld c,d			;4201
	add a,d			;4202
	ld c,d			;4203
	add a,d			;4204
	jp p,l7c80h+1		;4205
	add a,d			;4208
	ld a,h			;4209
	add a,d			;420a
	ex af,af'		;420b
	add a,e			;420c
	ret c			;420d
	add a,d			;420e
	ret c			;420f
	add a,d			;4210
	ret c			;4211
	add a,d			;4212
	ret c			;4213
	add a,d			;4214
	ld h,(hl)		;4215
	add a,e			;4216
	ld a,h			;4217
	add a,d			;4218
	ld a,(iy+005h)		;4219
	sub 008h		;421c
	ld h,a			;421e
	call 0822ah		;421f
l4222h:
	ld a,(iy+000h)		;4222
	or a			;4225
	ret z			;4226
	ld h,(iy+005h)		;4227
	ld l,(iy+003h)		;422a
	call sub_8388h		;422d
	ret nc			;4230
	ld (iy+000h),000h	;4231
	ld a,(le340h)		;4235
	or a			;4238
	jp z,l8481h		;4239
l423ch:
	ld a,(le308h+1)		;423c
	or a			;423f
	ret nz			;4240
	inc a			;4241
	ld (le308h+1),a		;4242
	ld a,005h		;4245
	jp l4ae4h		;4247
	ld h,(iy+005h)		;424a
	ld l,(iy+003h)		;424d
	call sub_8388h		;4250
	jr nc,l426bh		;4253
	ld (iy+000h),000h	;4255
	ld a,(le340h)		;4259
	or a			;425c
	jp nz,l823ch		;425d
	ld a,(le201h)		;4260
	cp 005h			;4263
	ret nz			;4265
	ld a,012h		;4266
	jp l4ae4h		;4268
l426bh:
	ld a,(le340h)		;426b
	or a			;426e
	ret nz			;426f
	ld h,(iy+005h)		;4270
	ld a,(iy+003h)		;4273
	add a,008h		;4276
	ld l,a			;4278
	jp sub_8388h		;4279
	ld h,(iy+005h)		;427c
	ld l,(iy+003h)		;427f
	call 05c92h		;4282
	ex de,hl		;4285
	ld a,(iy+00ah)		;4286
	or a			;4289
	ret z			;428a
	ld b,a			;428b
l428ch:
	call sub_82bch		;428c
	jr nc,l429ch		;428f
	ld a,(le340h)		;4291
	or a			;4294
	jr nz,l42a0h		;4295
	call l8481h		;4297
	jr nc,l42a0h		;429a
l429ch:
	inc de			;429c
	djnz l428ch		;429d
	ret			;429f
l42a0h:
	ld a,(iy+00ah)		;42a0
	inc b			;42a3
	sub b			;42a4
	jp c,lae01h		;42a5
	jp z,lae01h		;42a8
	ld (iy+00ah),a		;42ab
	ld a,(iy+000h)		;42ae
	cp 00fh			;42b1
	ld a,001h		;42b3
	jr z,l42b8h		;42b5
	inc a			;42b7
l42b8h:
	ld (iy+001h),a		;42b8
	ret			;42bb
	ld a,(le201h)		;42bc
	or a			;42bf
	jr z,l42cfh		;42c0
	sub 007h		;42c2
	cp 002h			;42c4
	jr c,l42cfh		;42c6
	ld a,(de)		;42c8
	and a			;42c9
	ret z			;42ca
	exx			;42cb
	cp c			;42cc
	exx			;42cd
	ret			;42ce
l42cfh:
	ld a,(de)		;42cf
	cp 009h			;42d0
	ccf			;42d2
l42d3h:
	ret nc			;42d3
	exx			;42d4
	cp c			;42d5
	exx			;42d6
	ret			;42d7
	ld h,(iy+005h)		;42d8
	ld l,(iy+003h)		;42db
	call 05c92h		;42de
	ex de,hl		;42e1
	ld a,(iy+00ah)		;42e2
	or a			;42e5
	ret z			;42e6
	ld b,a			;42e7
l42e8h:
	call sub_82bch		;42e8
	jr nc,l42fah		;42eb
	ld a,(le340h)		;42ed
	or a			;42f0
	jp nz,lae01h		;42f1
	call l8481h		;42f4
	jp nc,lae01h		;42f7
l42fah:
	inc de			;42fa
	djnz l42e8h		;42fb
	ret			;42fd
sub_42feh:
	ld a,(iy+00ah)		;42fe
l4301h:
	add a,a			;4301
	add a,a			;4302
l4303h:
	add a,a			;4303
	ld (iy+00ch),a		;4304
	ret			;4307
l4308h:
	ld h,(iy+005h)		;4308
	ld l,(iy+003h)		;430b
	call 05c92h		;430e
	ld (lf000h),hl		;4311
	ex de,hl		;4314
	ld a,(iy+00ah)		;4315
	or a			;4318
sub_4319h:
	jr z,l435ch		;4319
	ld b,a			;431b
l431ch:
	call sub_82bch		;431c
	jr nc,l432eh		;431f
l4321h:
	ld a,(le340h)		;4321
	or a			;4324
	jp nz,lae01h		;4325
	call l8481h		;4328
	jp nc,lae01h		;432b
l432eh:
	ld a,020h		;432e
	call sub_407fh		;4330
	djnz l431ch		;4333
	ld a,(0e320h)		;4335
	or a			;4338
	jr z,l435ch		;4339
	ld de,(lf000h)		;433b
	dec de			;433f
	ld b,(iy+00ah)		;4340
l4343h:
	call sub_82bch		;4343
	jr nc,l4355h		;4346
	ld a,(le340h)		;4348
	or a			;434b
	jp nz,lae01h		;434c
	call l8481h		;434f
	jp nc,lae01h		;4352
l4355h:
	ld a,020h		;4355
	call sub_407fh		;4357
	djnz l4343h		;435a
l435ch:
	ld a,(iy+00ah)		;435c
sub_435fh:
	add a,a			;435f
	add a,a			;4360
	add a,a			;4361
	ld (iy+00dh),a		;4362
l4365h:
	ret			;4365
l4366h:
	ld h,(iy+005h)		;4366
	ld l,(iy+003h)		;4369
	call 05c92h		;436c
	ex de,hl		;436f
	ld b,002h		;4370
l4372h:
	call sub_82bch		;4372
	jr nc,l4384h		;4375
	ld a,(le340h)		;4377
	or a			;437a
	jp nz,lae01h		;437b
	call l8481h		;437e
	jp nc,lae01h		;4381
l4384h:
	inc de			;4384
	djnz l4372h		;4385
	ret			;4387
	call 05c92h		;4388
	ex de,hl		;438b
	call sub_8395h		;438c
	ret c			;438f
	inc de			;4390
	ld a,e			;4391
	and 01fh		;4392
	ret z			;4394
	ld a,(le201h)		;4395
	or a			;4398
	jr z,l43a8h		;4399
	sub 007h		;439b
	cp 002h			;439d
	jr c,l43a8h		;439f
	ld a,(de)		;43a1
	and a			;43a2
	ret z			;43a3
	exx			;43a4
sub_43a5h:
	cp c			;43a5
	exx			;43a6
	ret			;43a7
l43a8h:
	ld a,(de)		;43a8
	cp 009h			;43a9
	ccf			;43ab
	ret nc			;43ac
	exx			;43ad
	cp c			;43ae
	exx			;43af
	ret			;43b0
	ld a,(ix+004h)		;43b1
sub_43b4h:
	sub 008h		;43b4
	ld l,a			;43b6
l43b7h:
	ld h,(ix+006h)		;43b7
	call 05c92h		;43ba
	ld a,(le304h+1)		;43bd
	ld c,a			;43c0
	ld b,006h		;43c1
l43c3h:
	ld a,(hl)		;43c3
sub_43c4h:
	inc l			;43c4
	and a			;43c5
	ret z			;43c6
	cp c			;43c7
	ret c			;43c8
	djnz l43c3h		;43c9
	xor a			;43cb
	ret			;43cc
	ld a,(ix+004h)		;43cd
	add a,030h		;43d0
	cp 0a0h			;43d2
	ccf			;43d4
	ret c			;43d5
	ld l,a			;43d6
	jr l43b7h		;43d7
	call 05c92h		;43d9
	ld c,08ah		;43dc
	ld a,(le201h)		;43de
	dec a			;43e1
	jr z,l43f2h		;43e2
	ld c,067h		;43e4
	jr l43f2h		;43e6
	call 05c92h		;43e8
	ld (le3bbh+1),hl	;43eb
sub_43eeh:
	ld a,(le304h+1)		;43ee
l43f1h:
	ld c,a			;43f1
l43f2h:
	call sub_83fbh		;43f2
	ret c			;43f5
	inc hl			;43f6
	ld a,l			;43f7
	and 01fh		;43f8
	ret z			;43fa
	ld a,(le201h)		;43fb
	or a			;43fe
	jr z,l440ch		;43ff
	sub 007h		;4401
	cp 002h			;4403
	jr c,l440ch		;4405
	ld a,(hl)		;4407
	and a			;4408
	ret z			;4409
	cp c			;440a
	ret			;440b
l440ch:
	ld a,(hl)		;440c
	cp 009h			;440d
	ccf			;440f
	ret nc			;4410
	cp c			;4411
	ret			;4412
	ld a,(le400h)		;4413
	dec a			;4416
	ret m			;4417
	ld a,(le3d0h)		;4418
	or a			;441b
	ret nz			;441c
	exx			;441d
	ld a,(le304h+1)		;441e
	ld c,a			;4421
	exx			;4422
	call sub_844ah		;4423
	ret nc			;4426
	ld a,(le400h)		;4427
	cp 003h			;442a
	jp nz,l8e7ch		;442c
	call l8481h		;442f
	jp nc,l8e7ch		;4432
	ld a,(le404h)		;4435
	add a,008h		;4438
	ld l,a			;443a
	ld a,(le406h)		;443b
	ld h,a			;443e
sub_443fh:
	call 05c92h		;443f
	ex de,hl		;4442
	call l8481h		;4443
	inc de			;4446
	jp l8481h		;4447
	ld a,(le404h)		;444a
	add a,008h		;444d
	ld l,a			;444f
	ld a,(le406h)		;4450
	ld h,a			;4453
	and 007h		;4454
	cp 004h			;4456
	push af			;4458
	call 05c92h		;4459
	ex de,hl		;445c
	pop af			;445d
sub_445eh:
	jr nc,l4464h		;445e
	call sub_8465h		;4460
	ret c			;4463
l4464h:
	inc de			;4464
	ld a,(le201h)		;4465
	or a			;4468
	jr z,l4478h		;4469
	sub 007h		;446b
	cp 002h			;446d
	jr c,l4478h		;446f
	ld a,(de)		;4471
	or a			;4472
	ret z			;4473
	exx			;4474
	cp c			;4475
	exx			;4476
	ret			;4477
l4478h:
	ld a,(de)		;4478
	cp 009h			;4479
	ccf			;447b
	ret nc			;447c
	exx			;447d
	cp c			;447e
	exx			;447f
	ret			;4480
	ld hl,laf04h		;4481
	ld a,(le201h)		;4484
	sub 002h		;4487
	jr z,l449fh		;4489
	ld h,067h		;448b
	sub 004h		;448d
	jr z,l449fh		;448f
	dec a			;4491
	jr z,l44aah		;4492
	ld hl,sub_a000h+1	;4494
sub_4497h:
	sub 002h		;4497
	cp 003h			;4499
	jr c,l449fh		;449b
	xor a			;449d
	ret			;449e
l449fh:
	ld a,(de)		;449f
sub_44a0h:
	sub h			;44a0
	cp l			;44a1
	ret nc			;44a2
	xor a			;44a3
	ld (de),a		;44a4
	call sub_84bch		;44a5
	scf			;44a8
	ret			;44a9
l44aah:
	ld a,(de)		;44aa
	sub 01fh		;44ab
	cp 05ch			;44ad
	ret nc			;44af
	ld hl,084cah		;44b0
	call 05ca6h		;44b3
	ld (de),a		;44b6
	call sub_84bch		;44b7
	scf			;44ba
	ret			;44bb
	ld a,(le308h)		;44bc
	or a			;44bf
	ret nz			;44c0
	inc a			;44c1
	ld (le308h),a		;44c2
	ld a,004h		;44c5
sub_44c7h:
	jp l4ae4h		;44c7
	nop			;44ca
	nop			;44cb
	nop			;44cc
	nop			;44cd
	nop			;44ce
	nop			;44cf
	nop			;44d0
	nop			;44d1
	nop			;44d2
	nop			;44d3
	and d			;44d4
	and d			;44d5
	and e			;44d6
	and e			;44d7
	and e			;44d8
	and h			;44d9
	and l			;44da
	and l			;44db
	and l			;44dc
	and (hl)		;44dd
	and (hl)		;44de
	and a			;44df
	and a			;44e0
	xor b			;44e1
	xor c			;44e2
	xor d			;44e3
	xor d			;44e4
	xor e			;44e5
	xor e			;44e6
	xor e			;44e7
	xor e			;44e8
	xor h			;44e9
l44eah:
	xor h			;44ea
	xor h			;44eb
	xor l			;44ec
	xor l			;44ed
	xor (hl)		;44ee
	xor (hl)		;44ef
	xor a			;44f0
	or b			;44f1
	or b			;44f2
	or b			;44f3
	or c			;44f4
	or c			;44f5
	or c			;44f6
sub_44f7h:
	or c			;44f7
	or d			;44f8
	or d			;44f9
	or d			;44fa
	or d			;44fb
	or e			;44fc
	or e			;44fd
	or e			;44fe
	or e			;44ff
	or h			;4500
	or l			;4501
	or (hl)			;4502
l4503h:
	or (hl)			;4503
	or a			;4504
	or a			;4505
	cp b			;4506
	cp b			;4507
	cp b			;4508
	cp b			;4509
	cp c			;450a
	cp d			;450b
	cp d			;450c
	cp e			;450d
	cp e			;450e
	cp e			;450f
	cp e			;4510
	cp h			;4511
	cp h			;4512
	cp l			;4513
	cp l			;4514
	cp (hl)			;4515
	cp (hl)			;4516
	cp a			;4517
	cp a			;4518
	cp a			;4519
	ret nz			;451a
	pop bc			;451b
	pop bc			;451c
	jp nz,0c2c2h		;451d
	call nz,0c5c4h		;4520
	add a,0a1h		;4523
	jp l603ah		;4525
	jp pe,lc8b7h		;4528
	ld a,(0e320h)		;452b
	or a			;452e
	ret z			;452f
	ld a,(lea62h)		;4530
	sub 008h		;4533
	ld (lea62h),a		;4535
	ret nc			;4538
	xor a			;4539
	ld (lea60h),a		;453a
	ret			;453d
	ld a,(lea60h)		;453e
	or a			;4541
	ret z			;4542
	ld hl,(lea61h)		;4543
	ld a,h			;4546
	cp 0f8h			;4547
	ret nc			;4549
	call 05c92h		;454a
	ld (lea63h),hl		;454d
	ld c,0e9h		;4550
	jp 05227h		;4552
	ld a,(lea60h)		;4555
	or a			;4558
	ret z			;4559
	ld hl,(lea61h)		;455a
	ld a,h			;455d
	cp 0f8h			;455e
	ret nc			;4560
	ld hl,(lea63h)		;4561
	xor a			;4564
	ld (hl),a		;4565
	inc l			;4566
	ld (hl),a		;4567
	ld bc,l001fh		;4568
	add hl,bc		;456b
	ld (hl),a		;456c
	inc l			;456d
	ld (hl),a		;456e
	ret			;456f
	ld a,(le201h)		;4570
	cp 008h			;4573
	ret nz			;4575
	ld a,(0e320h)		;4576
	or a			;4579
	ret z			;457a
sub_457bh:
	ld hl,(le203h)		;457b
	ld de,l007fh		;457e
	rst 20h			;4581
	ret nz			;4582
	ld hl,lea90h		;4583
	ld (hl),001h		;4586
	inc l			;4588
	ld (hl),040h		;4589
	inc l			;458b
	ld (hl),0e0h		;458c
	inc l			;458e
	ld (hl),018h		;458f
	ret			;4591
	ld hl,lea90h		;4592
sub_4595h:
	ld a,(hl)		;4595
	or a			;4596
	ret z			;4597
	ld a,(0e320h)		;4598
	or a			;459b
	ret z			;459c
	inc l			;459d
	inc l			;459e
	ld a,(hl)		;459f
	sub 008h		;45a0
	ld (hl),a		;45a2
	ret nc			;45a3
	xor a			;45a4
	ld (lea90h),a		;45a5
	ret			;45a8
	ld a,(lea90h)		;45a9
	dec a			;45ac
	ret nz			;45ad
	ld iy,le470h		;45ae
	ld b,009h		;45b2
l45b4h:
	push bc			;45b4
	ld a,(iy+000h)		;45b5
	or a			;45b8
	call nz,sub_85c6h	;45b9
sub_45bch:
	pop bc			;45bc
	ret c			;45bd
	ld de,l0010h		;45be
	add iy,de		;45c1
	djnz l45b4h		;45c3
	ret			;45c5
	cp 006h			;45c6
	ret z			;45c8
	ld hl,lea91h		;45c9
	ld a,(hl)		;45cc
	sub (iy+003h)		;45cd
	jp nc,l85dbh		;45d0
	neg			;45d3
	cp 020h			;45d5
	jp c,085dfh		;45d7
	ret			;45da
	cp (iy+00dh)		;45db
	ret nc			;45de
	inc l			;45df
	ld a,(hl)		;45e0
	sub (iy+005h)		;45e1
	jp nc,085efh		;45e4
	neg			;45e7
	cp 020h			;45e9
	jp c,085f3h		;45eb
	ret			;45ee
	cp (iy+00ch)		;45ef
	ret nc			;45f2
	call 085f8h		;45f3
	scf			;45f6
	ret			;45f7
	ld a,(iy+000h)		;45f8
	cp 005h			;45fb
	jr nz,l4605h		;45fd
	call 08a0ch		;45ff
	jp l8609h		;4602
l4605h:
	ld (iy+000h),000h	;4605
	ld hl,lea93h		;4609
	dec (hl)		;460c
	jp m,l8626h		;460d
	ld e,(iy+003h)		;4610
	ld a,r			;4613
	and 00fh		;4615
sub_4617h:
	dec l			;4617
	add a,(hl)		;4618
	ld d,a			;4619
	ld a,033h		;461a
	ld c,000h		;461c
	call 04d1eh		;461e
	ld a,005h		;4621
	jp l4ae4h		;4623
	ld a,002h		;4626
	ld (lea90h),a		;4628
	ld hl,(lea91h)		;462b
	call 05c92h		;462e
	xor a			;4631
	ld de,l001ch		;4632
	ld c,004h		;4635
l4637h:
	ld b,004h		;4637
l4639h:
	ld (hl),a		;4639
	inc l			;463a
	djnz l4639h		;463b
	add hl,de		;463d
	dec c			;463e
	jr nz,l4637h		;463f
	ld de,(lea91h)		;4641
	call sub_8ba1h		;4645
	ld a,009h		;4648
	call l4ae4h		;464a
	ld de,sub_0050h		;464d
	jp 05b04h		;4650
	ld a,(lea90h)		;4653
	or a			;4656
	ret z			;4657
	ld a,(le400h)		;4658
	dec a			;465b
	ret m			;465c
	ld a,(le3beh+2)		;465d
	or a			;4660
	ret nz			;4661
	ld a,(lea92h)		;4662
	ld b,a			;4665
	ld a,(le406h)		;4666
	cp b			;4669
	ret c			;466a
	ld a,001h		;466b
	ld (le3beh+2),a		;466d
	call 07918h		;4670
	ld a,0f1h		;4673
sub_4675h:
	jp l4ae4h		;4675
	ld ix,0ea40h		;4678
	ld de,l0008h		;467c
	ld b,004h		;467f
l4681h:
	ld a,(ix+000h)		;4681
	and a			;4684
	call nz,sub_868dh	;4685
	add ix,de		;4688
	djnz l4681h		;468a
	ret			;468c
	call sub_86a0h		;468d
	ld a,(0e320h)		;4690
	and a			;4693
	ret z			;4694
	ld a,(ix+003h)		;4695
	sub 008h		;4698
	jr c,l46ach		;469a
	ld (ix+003h),a		;469c
	ret			;469f
	dec (ix+001h)		;46a0
	ret nz			;46a3
	ld (ix+001h),004h	;46a4
	dec (ix+006h)		;46a8
	ret p			;46ab
l46ach:
	ld (ix+000h),000h	;46ac
	ret			;46b0
	ld ix,0ea40h		;46b1
	ld iy,lecc0h		;46b5
	ld b,004h		;46b9
l46bbh:
	push bc			;46bb
	call sub_86cch		;46bc
	ld bc,l0008h		;46bf
	add ix,bc		;46c2
sub_46c4h:
	ld c,010h		;46c4
	add iy,bc		;46c6
	pop bc			;46c8
	djnz l46bbh		;46c9
	ret			;46cb
	ld a,(ix+000h)		;46cc
	or a			;46cf
	ret z			;46d0
l46d1h:
	ld l,(ix+002h)		;46d1
	ld h,(ix+003h)		;46d4
	call 05c92h		;46d7
	ld (ix+004h),l		;46da
	ld (ix+005h),h		;46dd
	push iy			;46e0
	pop de			;46e2
	ld a,004h		;46e3
l46e5h:
	ld bc,l0004h		;46e5
	ldir			;46e8
	ld c,01ch		;46ea
	add hl,bc		;46ec
	dec a			;46ed
	jr nz,l46e5h		;46ee
	ret			;46f0
	ld ix,0ea40h		;46f1
	ld iy,lecc0h		;46f5
	ld b,004h		;46f9
l46fbh:
	push bc			;46fb
	call sub_870ch		;46fc
	ld bc,l0008h		;46ff
	add ix,bc		;4702
	ld c,010h		;4704
	add iy,bc		;4706
	pop bc			;4708
	djnz l46fbh		;4709
	ret			;470b
	ld a,(ix+000h)		;470c
	or a			;470f
	ret z			;4710
	ld e,(ix+004h)		;4711
	ld d,(ix+005h)		;4714
	push iy			;4717
	pop hl			;4719
	ld a,004h		;471a
l471ch:
	ld bc,l0004h		;471c
	ldir			;471f
	ld c,01ch		;4721
	ex de,hl		;4723
	add hl,bc		;4724
	ex de,hl		;4725
	dec a			;4726
	jr nz,l471ch		;4727
	ret			;4729
	ld ix,0ea40h		;472a
sub_472eh:
	ld b,004h		;472e
l4730h:
	push bc			;4730
	call sub_873dh		;4731
	ld bc,l0008h		;4734
	add ix,bc		;4737
	pop bc			;4739
	djnz l4730h		;473a
	ret			;473c
	ld a,(ix+000h)		;473d
	and a			;4740
	ret z			;4741
	ld a,(ix+006h)		;4742
	ld hl,l8762h		;4745
	call 04b67h		;4748
	ex de,hl		;474b
	ld e,(ix+004h)		;474c
	ld d,(ix+005h)		;474f
	ld a,004h		;4752
l4754h:
	ld bc,l0004h		;4754
	ldir			;4757
sub_4759h:
	ld c,01ch		;4759
	ex de,hl		;475b
	add hl,bc		;475c
	ex de,hl		;475d
	dec a			;475e
	jr nz,l4754h		;475f
	ret			;4761
	ld l,b			;4762
	add a,a			;4763
	ld a,b			;4764
	add a,a			;4765
	adc a,b			;4766
	add a,a			;4767
	nop			;4768
	nop			;4769
	nop			;476a
	nop			;476b
	nop			;476c
	push hl			;476d
	and 000h		;476e
	nop			;4770
	rst 20h			;4771
	ret pe			;4772
	nop			;4773
	nop			;4774
	nop			;4775
	nop			;4776
	nop			;4777
	nop			;4778
	nop			;4779
	in a,(0dch)		;477a
	nop			;477c
	defb 0ddh,0deh,0dfh ;illegal sequence	;477d
	nop			;4780
	ret po			;4781
	pop hl			;4782
	jp po,le300h		;4783
	call po,sub_cb00h	;4786
	call z,sub_cecdh	;4789
sub_478ch:
	rst 8			;478c
	ret nc			;478d
	pop de			;478e
	jp nc,0d4d3h		;478f
	push de			;4792
	sub 0d7h		;4793
	ret c			;4795
	exx			;4796
	jp c,lb4cdh		;4797
	add a,a			;479a
	jr z,$-3		;479b
	ret c			;479d
	ld hl,le358h+1		;479e
	inc (hl)		;47a1
sub_47a2h:
	jr $-10			;47a2
	ld a,(0e320h)		;47a4
	and a			;47a7
	ret z			;47a8
	ld a,0f8h		;47a9
	ld (lf004h),a		;47ab
l47aeh:
	call sub_87b4h		;47ae
	jr z,l47aeh		;47b1
	ret			;47b3
	call sub_8879h		;47b4
	ret nz			;47b7
	ld hl,le358h+1		;47b8
	inc (hl)		;47bb
	call sub_87c1h		;47bc
	xor a			;47bf
	ret			;47c0
	bit 7,c			;47c1
	jr z,l47cah		;47c3
	ld a,(0e20ah)		;47c5
	or a			;47c8
	ret z			;47c9
l47cah:
	ld a,b			;47ca
	and 0f8h		;47cb
	ld e,a			;47cd
	ld a,(lf004h)		;47ce
	ld d,a			;47d1
	ld a,c			;47d2
	rlca			;47d3
	rlca			;47d4
	rlca			;47d5
	and 003h		;47d6
	ld b,a			;47d8
	ld a,c			;47d9
	and 01fh		;47da
	ld (lf010h),a		;47dc
	ld a,b			;47df
sub_47e0h:
	ld (lf010h+1),a		;47e0
	ld (lf010h+2),de	;47e3
	ld hl,le500h		;47e7
	ld de,l0010h		;47ea
	xor a			;47ed
	ld b,008h		;47ee
l47f0h:
	cp (hl)			;47f0
	jr z,l47f8h		;47f1
	add hl,de		;47f3
	djnz l47f0h		;47f4
	xor a			;47f6
	ret			;47f7
l47f8h:
	push hl			;47f8
l47f9h:
	pop ix			;47f9
	ld a,(lf010h)		;47fb
	ld (hl),a		;47fe
	push af			;47ff
l4800h:
	inc l			;4800
	ld (hl),000h		;4801
	ld de,(lf010h+2)	;4803
	inc l			;4807
	ld a,d			;4808
	cp 0f8h			;4809
	ld a,000h		;480b
	jr z,l4810h		;480d
	dec a			;480f
l4810h:
	ld (hl),a		;4810
	inc l			;4811
	xor a			;4812
	ld (hl),a		;4813
	inc l			;4814
	ld (hl),e		;4815
	inc l			;4816
	ld (hl),a		;4817
	inc l			;4818
	ld (hl),d		;4819
	ld a,l			;481a
	add a,005h		;481b
	ld l,a			;481d
	ld a,(lf010h+1)		;481e
	ld (hl),a		;4821
	pop af			;4822
	call sub_8828h		;4823
	scf			;4826
	ret			;4827
	dec a			;4828
	call sub_4084h		;4829
	rra			;482c
	or a			;482d
	daa			;482e
	adc a,b			;482f
	daa			;4830
	adc a,b			;4831
	adc a,e			;4832
	cp b			;4833
	add hl,de		;4834
	cp d			;4835
	sub (hl)		;4836
	cp e			;4837
	add hl,de		;4838
	and c			;4839
	daa			;483a
	adc a,b			;483b
	ld c,(hl)		;483c
	or h			;483d
	ld d,e			;483e
	or a			;483f
	ld e,(hl)		;4840
	adc a,b			;4841
	ld h,a			;4842
	adc a,b			;4843
	ld (hl),b		;4844
sub_4845h:
	adc a,b			;4845
	ld c,h			;4846
	adc a,b			;4847
	daa			;4848
	adc a,b			;4849
	ld d,l			;484a
	adc a,b			;484b
	call l4136h+1		;484c
	call 0be49h		;484f
	jp 04157h		;4852
	call l4136h+1		;4855
	call sub_badch		;4858
	jp 04157h		;485b
	call l4136h+1		;485e
	call sub_a3abh		;4861
	jp 04157h		;4864
	call l4136h+1		;4867
	call 0a4d1h		;486a
	jp 04157h		;486d
	call l4136h+1		;4870
	call 0a811h		;4873
	jp 04157h		;4876
	call sub_413bh		;4879
	ld a,(le201h)		;487c
	ld hl,0ba12h		;487f
	call 04b67h		;4882
	ld a,(le358h+1)		;4885
	ld b,a			;4888
sub_4889h:
	add a,a			;4889
	add a,b			;488a
	call sub_407fh		;488b
	ex de,hl		;488e
	ld e,(hl)		;488f
	inc hl			;4890
	ld a,(hl)		;4891
	ld b,a			;4892
	and 007h		;4893
	ld d,a			;4895
	inc hl			;4896
	ld c,(hl)		;4897
	ld hl,(le203h)		;4898
	rst 20h			;489b
	push af			;489c
	call 04157h		;489d
	pop af			;48a0
	ret			;48a1
	ld ix,0e600h		;48a2
	ld b,00ch		;48a6
l48a8h:
	push bc			;48a8
	bit 1,(ix+010h)		;48a9
	jr z,l48c5h		;48ad
	ld iy,le470h		;48af
l48b3h:
	ld de,l0010h		;48b3
	ld b,009h		;48b6
l48b8h:
	ld a,(iy+000h)		;48b8
	or a			;48bb
	call nz,sub_88ceh	;48bc
	jr c,l48c5h		;48bf
	add iy,de		;48c1
	djnz l48b8h		;48c3
l48c5h:
	ld de,l0040h		;48c5
	add ix,de		;48c8
	pop bc			;48ca
	djnz l48a8h		;48cb
	ret			;48cd
	ld a,(ix+004h)		;48ce
	sub (iy+003h)		;48d1
	jp nc,l88e1h		;48d4
	neg			;48d7
	dec a			;48d9
	cp (ix+00eh)		;48da
	jp c,088e5h		;48dd
	ret			;48e0
	cp (iy+00dh)		;48e1
	ret nc			;48e4
	ld a,(ix+006h)		;48e5
	sub (iy+005h)		;48e8
	jp nc,l88f7h		;48eb
	neg			;48ee
	cp (ix+00fh)		;48f0
	jp c,l88fbh		;48f3
	ret			;48f6
	cp (iy+00ch)		;48f7
	ret nc			;48fa
	call sub_8900h		;48fb
	scf			;48fe
	ret			;48ff
	ld a,(iy+000h)		;4900
	cp 006h			;4903
	jr nc,l4915h		;4905
	cp 005h			;4907
	jr nz,l4911h		;4909
	call 08a0ch		;490b
	jp l8915h		;490e
l4911h:
	ld (iy+000h),000h	;4911
l4915h:
	ld a,(ix+000h)		;4915
	cp 00fh			;4918
	jp z,089b6h		;491a
	bit 4,(ix+010h)		;491d
	jp nz,089fbh		;4921
	dec (ix+00dh)		;4924
	ret nz			;4927
	ld a,(ix+000h)		;4928
	cp 02eh			;492b
	jp z,089e8h		;492d
l4930h:
	cp 032h			;4930
	jr z,l493ah		;4932
l4934h:
	ld de,l0001h		;4934
	call 05b04h		;4937
l493ah:
	ld a,(ix+000h)		;493a
	ld b,012h		;493d
	cp 030h			;493f
	jr z,l4957h		;4941
l4943h:
	cp 025h			;4943
	jr z,l4957h		;4945
	ld b,008h		;4947
	cp 001h			;4949
	jr z,l4957h		;494b
	cp 003h			;494d
	jr z,l4957h		;494f
	cp 005h			;4951
	jr z,l4957h		;4953
	ld b,007h		;4955
l4957h:
	ld a,b			;4957
	call l4ae4h		;4958
	call 08988h		;495b
	ld a,(ix+000h)		;495e
	push af			;4961
	push bc			;4962
	call sub_6514h		;4963
	pop bc			;4966
	pop af			;4967
	sub 01dh		;4968
	ret z			;496a
	sub 005h		;496b
	cp 003h			;496d
	ret c			;496f
	sub 016h		;4970
	cp 003h			;4972
	ret c			;4974
	sub 009h		;4975
	ret z			;4977
	ld a,026h		;4978
sub_497ah:
	ld e,(ix+004h)		;497a
	ld d,(ix+006h)		;497d
	jp 04d16h		;4980
	ld a,009h		;4983
	jp l4ae4h		;4985
	ld c,(ix+00ch)		;4988
	ld a,(ix+016h)		;498b
	and a			;498e
	ret z			;498f
	ld c,000h		;4990
	ld a,(ix+017h)		;4992
	call 089a8h		;4995
	ret c			;4998
	ld a,(hl)		;4999
	inc l			;499a
	inc l			;499b
	dec (hl)		;499c
	ret nz			;499d
	dec l			;499e
	dec l			;499f
	ld (hl),000h		;49a0
	inc c			;49a2
	and 007h		;49a3
l49a5h:
	ret nz			;49a5
	inc c			;49a6
	ret			;49a7
	ld hl,lea80h		;49a8
	ld b,004h		;49ab
l49adh:
	cp (hl)			;49ad
	ret z			;49ae
	inc l			;49af
	inc l			;49b0
	inc l			;49b1
	djnz l49adh		;49b2
	scf			;49b4
	ret			;49b5
	call sub_8928h		;49b6
	ld a,(iy+000h)		;49b9
	ld (iy+000h),000h	;49bc
	sub 007h		;49c0
	cp 002h			;49c2
	ret nc			;49c4
	ld b,a			;49c5
	ld a,(ix+006h)		;49c6
	cp 010h			;49c9
	ret c			;49cb
	ld d,a			;49cc
	ld a,b			;49cd
	or a			;49ce
	jr nz,l49d6h		;49cf
	ld e,(iy+003h)		;49d1
	jr l49d9h		;49d4
l49d6h:
	ld e,(ix+004h)		;49d6
l49d9h:
	ld c,000h		;49d9
	ld a,03bh		;49db
	add a,b			;49dd
	ld b,00ch		;49de
l49e0h:
	call 04d16h		;49e0
	ld a,020h		;49e3
	jp l4ae4h		;49e5
l49e8h:
	ld a,(ix+00ch)		;49e8
	push af			;49eb
	call sub_6514h		;49ec
	pop af			;49ef
	add a,028h		;49f0
	ld e,(ix+004h)		;49f2
	ld d,(ix+006h)		;49f5
	jp 04d16h		;49f8
	ld (iy+000h),000h	;49fb
	ld a,(ix+000h)		;49ff
sub_4a02h:
	cp 019h			;4a02
	jp nz,l823ch		;4a04
	ld a,014h		;4a07
	jp l4ae4h		;4a09
	ld a,(le201h)		;4a0c
	cp 005h			;4a0f
	jr nz,l4a18h		;4a11
	ld (iy+000h),000h	;4a13
	ret			;4a17
l4a18h:
	push iy			;4a18
	pop hl			;4a1a
	ld (hl),006h		;4a1b
sub_4a1dh:
	inc l			;4a1d
	ld (hl),000h		;4a1e
	ld a,l			;4a20
	add a,004h		;4a21
	ld l,a			;4a23
	ld a,(hl)		;4a24
	cp 0f8h			;4a25
	jr c,l4a2ch		;4a27
	ld a,0f7h		;4a29
	ld (hl),a		;4a2b
l4a2ch:
	inc l			;4a2c
	ld (hl),044h		;4a2d
	inc l			;4a2f
	ld (hl),00fh		;4a30
	inc l			;4a32
sub_4a33h:
	ld (hl),000h		;4a33
	inc l			;4a35
	ld (hl),001h		;4a36
	inc l			;4a38
	ld (hl),000h		;4a39
	inc l			;4a3b
	inc l			;4a3c
	ld (hl),018h		;4a3d
	inc l			;4a3f
	ld (hl),018h		;4a40
	ret			;4a42
	ld a,(le340h)		;4a43
	or a			;4a46
	ret nz			;4a47
	ld a,(le3b2h)		;4a48
	and a			;4a4b
sub_4a4ch:
	ret z			;4a4c
	ld b,a			;4a4d
	ld ix,le500h		;4a4e
l4a52h:
	push bc			;4a52
	ld a,(ix+000h)		;4a53
	and a			;4a56
	jr z,l4a6fh		;4a57
	ld iy,le470h		;4a59
	ld de,l0010h		;4a5d
	ld b,009h		;4a60
l4a62h:
	ld a,(iy+000h)		;4a62
	or a			;4a65
	call nz,sub_8a78h	;4a66
	jr c,l4a6fh		;4a69
l4a6bh:
	add iy,de		;4a6b
	djnz l4a62h		;4a6d
l4a6fh:
	ld de,l0010h		;4a6f
	add ix,de		;4a72
	pop bc			;4a74
	djnz l4a52h		;4a75
	ret			;4a77
	sub 004h		;4a78
	cp 003h			;4a7a
	jr nc,l4a87h		;4a7c
	ld a,(ix+000h)		;4a7e
	sub 007h		;4a81
	cp 001h			;4a83
	ccf			;4a85
sub_4a86h:
	ret nc			;4a86
l4a87h:
	ld a,(ix+00dh)		;4a87
	or a			;4a8a
	ret m			;4a8b
sub_4a8ch:
	jr z,l4acfh		;4a8c
	add a,a			;4a8e
	add a,a			;4a8f
	ld hl,0b2ffh		;4a90
	call sub_407ah		;4a93
	ld (lf000h),hl		;4a96
	ld a,(ix+004h)		;4a99
	add a,(hl)		;4a9c
	sub (iy+003h)		;4a9d
	jp nc,08aadh		;4aa0
	neg			;4aa3
	dec a			;4aa5
	inc hl			;4aa6
	inc hl			;4aa7
	cp (hl)			;4aa8
	jp c,l8ab1h		;4aa9
	ret			;4aac
	cp (iy+00dh)		;4aad
	ret nc			;4ab0
l4ab1h:
	ld hl,(lf000h)		;4ab1
	inc hl			;4ab4
	ld a,(ix+006h)		;4ab5
	add a,(hl)		;4ab8
	sub (iy+005h)		;4ab9
	jp nc,08ac8h		;4abc
	neg			;4abf
	inc hl			;4ac1
	inc hl			;4ac2
	cp (hl)			;4ac3
	jp c,l8b0ah		;4ac4
	ret			;4ac7
	cp (iy+00ch)		;4ac8
	jp c,l8b0ah		;4acb
	ret			;4ace
l4acfh:
	ld a,(ix+004h)		;4acf
	sub (iy+003h)		;4ad2
	jp nc,08ae9h		;4ad5
	neg			;4ad8
	dec a			;4ada
	ld c,(ix+00ah)		;4adb
	sla c			;4ade
	sla c			;4ae0
	sla c			;4ae2
l4ae4h:
	cp c			;4ae4
	jp c,l8aedh		;4ae5
	ret			;4ae8
	cp (iy+00dh)		;4ae9
	ret nc			;4aec
	ld a,(ix+006h)		;4aed
	sub (iy+005h)		;4af0
	jp nc,08b06h		;4af3
	neg			;4af6
	ld c,(ix+009h)		;4af8
	sla c			;4afb
	sla c			;4afd
	sla c			;4aff
	cp c			;4b01
	jp c,l8b0ah		;4b02
	ret			;4b05
l4b06h:
	cp (iy+00ch)		;4b06
	ret nc			;4b09
	call sub_8b0fh		;4b0a
	scf			;4b0d
	ret			;4b0e
	ld a,(iy+000h)		;4b0f
	cp 006h			;4b12
	jr nc,l4b24h		;4b14
	cp 005h			;4b16
	jr nz,l4b20h		;4b18
	call 08a0ch		;4b1a
	jp l8b24h		;4b1d
l4b20h:
	ld (iy+000h),000h	;4b20
l4b24h:
	call l606fh+1		;4b24
	dec (ix+008h)		;4b27
	ret nz			;4b2a
	ld a,(ix+000h)		;4b2b
	cp 007h			;4b2e
	jp z,08bcch		;4b30
	cp 006h			;4b33
	jr z,l4b3bh		;4b35
	cp 00fh			;4b37
	jr nz,l4b45h		;4b39
l4b3bh:
	ld a,001h		;4b3b
	ld (le38dh),a		;4b3d
	ld de,sub_0050h		;4b40
sub_4b43h:
	jr l4b48h		;4b43
l4b45h:
	ld de,l0010h		;4b45
l4b48h:
	call 05b04h		;4b48
	ld c,03bh		;4b4b
	ld a,(ix+000h)		;4b4d
	cp 00fh			;4b50
	jr z,l4b5eh		;4b52
	ld c,009h		;4b54
	sub 005h		;4b56
	cp 002h			;4b58
	jr c,l4b5eh		;4b5a
	ld c,013h		;4b5c
l4b5eh:
	ld a,c			;4b5e
	call l4ae4h		;4b5f
	call l609dh+1		;4b62
	ld e,(ix+004h)		;4b65
	ld d,(ix+006h)		;4b68
	ld hl,0f8f8h		;4b6b
	ld a,(ix+000h)		;4b6e
	cp 00eh			;4b71
	jr z,l4b8ch		;4b73
	ld a,(ix+007h)		;4b75
	push de			;4b78
	cp 035h			;4b79
	jr c,l4b81h		;4b7b
	sub 035h		;4b7d
	add a,01fh		;4b7f
l4b81h:
	ld hl,lb37bh		;4b81
	call sub_407ah		;4b84
	ld d,000h		;4b87
	ld e,(hl)		;4b89
	ex de,hl		;4b8a
	pop de			;4b8b
l4b8ch:
	ld a,l			;4b8c
	add a,e			;4b8d
sub_4b8eh:
	ld e,a			;4b8e
	ld c,d			;4b8f
	ld a,h			;4b90
	add a,d			;4b91
	ld d,a			;4b92
	cp 0e0h			;4b93
	jr c,l4ba1h		;4b95
	bit 7,c			;4b97
	ld d,0e0h		;4b99
	jr nz,l4ba1h		;4b9b
	ld d,000h		;4b9d
	jr l4ba1h		;4b9f
l4ba1h:
	ld a,d			;4ba1
	cp 0e8h			;4ba2
	ret nc			;4ba4
	ld a,e			;4ba5
	cp 0a8h			;4ba6
	ret nc			;4ba8
	ld hl,0ea40h		;4ba9
	ld b,004h		;4bac
l4baeh:
	ld a,(hl)		;4bae
	and a			;4baf
	jr z,l4bbah		;4bb0
	ld a,008h		;4bb2
	add a,l			;4bb4
	ld l,a			;4bb5
	djnz l4baeh		;4bb6
	xor a			;4bb8
	ret			;4bb9
l4bbah:
	ld a,005h		;4bba
	sub b			;4bbc
	ld (hl),a		;4bbd
	inc l			;4bbe
	ld (hl),004h		;4bbf
	inc l			;4bc1
	ld (hl),e		;4bc2
	inc l			;4bc3
	ld (hl),d		;4bc4
	inc l			;4bc5
	inc l			;4bc6
	inc l			;4bc7
	ld (hl),002h		;4bc8
	scf			;4bca
	ret			;4bcb
	ld (ix+001h),005h	;4bcc
	ld (ix+00dh),0ffh	;4bd0
	ld (ix+002h),001h	;4bd4
	ld de,l0010h		;4bd8
	call 05b04h		;4bdb
	ld a,013h		;4bde
	jp l4ae4h		;4be0
	ld a,(le340h)		;4be3
	or a			;4be6
	ret nz			;4be7
l4be8h:
	ld a,(le201h)		;4be8
	cp 003h			;4beb
	jr z,l4bf4h		;4bed
	sub 009h		;4bef
	cp 003h			;4bf1
	ret nc			;4bf3
l4bf4h:
	ld ix,le580h		;4bf4
	ld b,010h		;4bf8
l4bfah:
	push bc			;4bfa
	ld a,(ix+000h)		;4bfb
	cp 005h			;4bfe
	jr c,l4c20h		;4c00
	ld iy,le470h		;4c02
	ld de,l0010h		;4c06
	ld b,009h		;4c09
l4c0bh:
	ld a,(iy+000h)		;4c0b
	or a			;4c0e
	jr z,l4c1ch		;4c0f
	sub 004h		;4c11
	cp 003h			;4c13
	jr c,l4c1ch		;4c15
	call 08c29h		;4c17
	jr c,l4c20h		;4c1a
l4c1ch:
	add iy,de		;4c1c
	djnz l4c0bh		;4c1e
l4c20h:
	ld bc,l0008h		;4c20
	add ix,bc		;4c23
	pop bc			;4c25
	djnz l4bfah		;4c26
	ret			;4c28
	ld a,(ix+003h)		;4c29
	cp 0e8h			;4c2c
	ret nc			;4c2e
	sub (iy+005h)		;4c2f
sub_4c32h:
	jp nc,08c45h		;4c32
	neg			;4c35
	ld c,(ix+005h)		;4c37
	sla c			;4c3a
	sla c			;4c3c
	sla c			;4c3e
	cp c			;4c40
	jp c,08c49h		;4c41
	ret			;4c44
	cp (iy+00ch)		;4c45
	ret nc			;4c48
	ld a,(ix+002h)		;4c49
	sub (iy+003h)		;4c4c
	jp nc,08c63h		;4c4f
	neg			;4c52
	dec a			;4c54
	ld c,(ix+004h)		;4c55
	sla c			;4c58
	sla c			;4c5a
	sla c			;4c5c
	cp c			;4c5e
	jp c,l8c66h+1		;4c5f
	ret			;4c62
	cp (iy+00dh)		;4c63
	ret nc			;4c66
	call l8c6ah+2		;4c67
	scf			;4c6a
	ret			;4c6b
	ld a,(iy+000h)		;4c6c
	cp 006h			;4c6f
	jr nc,l4c77h		;4c71
	ld (iy+000h),000h	;4c73
l4c77h:
	dec (ix+006h)		;4c77
	jp nz,l823ch		;4c7a
	call 06d26h		;4c7d
	ld de,l0010h		;4c80
	jp 05b04h		;4c83
	ld a,(le340h)		;4c86
l4c89h:
	or a			;4c89
	ret nz			;4c8a
	ld a,(le201h)		;4c8b
	cp 005h			;4c8e
	ret nz			;4c90
	ld ix,le580h		;4c91
	call sub_8c9ch		;4c95
	ld ix,le590h		;4c98
	ld a,(ix+000h)		;4c9c
	or a			;4c9f
	ret z			;4ca0
	ld iy,le470h		;4ca1
	ld de,l0010h		;4ca5
	ld b,009h		;4ca8
l4caah:
	ld a,(iy+000h)		;4caa
	or a			;4cad
	jr z,l4cbah		;4cae
	sub 004h		;4cb0
	cp 003h			;4cb2
	jr c,l4cbah		;4cb4
	call 08cbfh		;4cb6
	ret c			;4cb9
l4cbah:
	add iy,de		;4cba
	djnz l4caah		;4cbc
	ret			;4cbe
	ld a,(ix+003h)		;4cbf
	sub (iy+005h)		;4cc2
	jp nc,l8cd1h		;4cc5
	neg			;4cc8
	cp (ix+005h)		;4cca
	jp c,l8cd5h		;4ccd
	ret			;4cd0
	cp (iy+00ch)		;4cd1
	ret nc			;4cd4
	ld a,(ix+002h)		;4cd5
	sub (iy+003h)		;4cd8
	jp nc,08ce7h		;4cdb
	neg			;4cde
	dec a			;4ce0
	cp 020h			;4ce1
	jp c,l8cebh		;4ce3
	ret			;4ce6
	cp (iy+00dh)		;4ce7
	ret nc			;4cea
	call l8d06h+1		;4ceb
	call sub_8cf6h		;4cee
	call sub_8d39h		;4cf1
	scf			;4cf4
	ret			;4cf5
l4cf6h:
	ld a,(ix+006h)		;4cf6
	cp 004h			;4cf9
	ret nc			;4cfb
	ld a,(iy+000h)		;4cfc
	cp 00fh			;4cff
	ret z			;4d01
	ld (iy+000h),000h	;4d02
	ret			;4d06
	ld (ix+007h),018h	;4d07
	dec (ix+008h)		;4d0b
	jp nz,l8d2eh		;4d0e
	ld (ix+008h),004h	;4d11
	ld a,(ix+001h)		;4d15
	ld (ix+001h),001h	;4d18
	or a			;4d1c
	jr z,l4d29h		;4d1d
	ld a,(ix+006h)		;4d1f
	cp 004h			;4d22
	ret nc			;4d24
	inc (ix+006h)		;4d25
	ret			;4d28
l4d29h:
	ld (ix+006h),000h	;4d29
	ret			;4d2d
	ld a,(ix+006h)		;4d2e
	cp 004h			;4d31
	ret nc			;4d33
	ld a,012h		;4d34
	jp l4ae4h		;4d36
	ld a,(ix+006h)		;4d39
	cp 004h			;4d3c
	ret nc			;4d3e
	call 04c24h		;4d3f
	and 00fh		;4d42
	ret nz			;4d44
	ld a,(ix+003h)		;4d45
	sub 010h		;4d48
	cp 0e0h			;4d4a
	ret nc			;4d4c
	add a,010h		;4d4d
	ld d,a			;4d4f
	ld a,(ix+002h)		;4d50
	add a,008h		;4d53
	ld e,a			;4d55
	ld bc,l0000h		;4d56
	ld a,030h		;4d59
	jp 04d16h		;4d5b
	ld a,(le400h)		;4d5e
	dec a			;4d61
	ret m			;4d62
	ld a,(le3d0h)		;4d63
	or a			;4d66
	ret nz			;4d67
	ld ix,le900h		;4d68
	ld l,00ah		;4d6c
	ld bc,l0202h		;4d6e
	call sub_8d7ch		;4d71
	ret nc			;4d74
	ld (ix+000h),000h	;4d75
	jp l8e71h		;4d79
	ld a,(le404h)		;4d7c
	add a,004h		;4d7f
	ld e,a			;4d81
	ld a,(le406h)		;4d82
	inc a			;4d85
	ld d,a			;4d86
	exx			;4d87
	ld de,l0010h		;4d88
	ld bc,l0c08h		;4d8b
	exx			;4d8e
l4d8fh:
	ld a,(ix+000h)		;4d8f
	or a			;4d92
	jr z,l4dabh		;4d93
	ld a,(ix+004h)		;4d95
	sub e			;4d98
	exx			;4d99
	cp c			;4d9a
	exx			;4d9b
	jr c,l4da1h		;4d9c
	add a,c			;4d9e
	jr nc,l4dabh		;4d9f
l4da1h:
	ld a,(ix+006h)		;4da1
	sub d			;4da4
	exx			;4da5
	cp b			;4da6
	exx			;4da7
	ret c			;4da8
	add a,b			;4da9
	ret c			;4daa
l4dabh:
	exx			;4dab
	add ix,de		;4dac
	exx			;4dae
	dec l			;4daf
	jr nz,l4d8fh		;4db0
	xor a			;4db2
	ret			;4db3
	ld a,(le400h)		;4db4
	cp 002h			;4db7
	ret nz			;4db9
	ld a,(le3d0h)		;4dba
	or a			;4dbd
	ret nz			;4dbe
	ld a,(le404h)		;4dbf
	ld l,a			;4dc2
	ld a,(le406h)		;4dc3
	add a,00ch		;4dc6
	ld h,a			;4dc8
	ld ix,le900h		;4dc9
	ld de,l0010h		;4dcd
	ld b,00ah		;4dd0
l4dd2h:
	ld a,(ix+000h)		;4dd2
	and a			;4dd5
	jp z,l8dedh		;4dd6
	ld a,l			;4dd9
	sub (ix+004h)		;4dda
	add a,010h		;4ddd
	cp 013h			;4ddf
	jr nc,l4dedh		;4de1
	ld a,h			;4de3
	sub (ix+006h)		;4de4
	add a,00ch		;4de7
	cp 00bh			;4de9
	jr c,l4df2h		;4deb
l4dedh:
	add ix,de		;4ded
	djnz l4dd2h		;4def
	ret			;4df1
l4df2h:
	ld (ix+000h),000h	;4df2
	jp 08e33h		;4df6
	ld a,(le400h)		;4df9
	cp 002h			;4dfc
	ret nz			;4dfe
	ld a,(le3d0h)		;4dff
	or a			;4e02
	ret nz			;4e03
	ld a,(le404h)		;4e04
	ld e,a			;4e07
	ld a,(le406h)		;4e08
	add a,00ch		;4e0b
	ld d,a			;4e0d
	ld hl,l0c10h		;4e0e
	call sub_8ee2h		;4e11
	ret nc			;4e14
	ld a,(ix+000h)		;4e15
	ld b,a			;4e18
	cp 020h			;4e19
	jr z,l4e38h		;4e1b
	sub 029h		;4e1d
	cp 006h			;4e1f
	ret c			;4e21
	push bc			;4e22
	call sub_8928h		;4e23
	pop af			;4e26
l4e27h:
	sub 022h		;4e27
	cp 003h			;4e29
	jr c,l4e38h		;4e2b
	sub 016h		;4e2d
	cp 005h			;4e2f
	jr c,l4e38h		;4e31
	ld hl,le401h		;4e33
	dec (hl)		;4e36
	ret nz			;4e37
l4e38h:
	xor a			;4e38
	ld (le401h),a		;4e39
	inc a			;4e3c
	ld (le400h),a		;4e3d
	jp l553eh		;4e40
	ld a,(le400h)		;4e43
	inc a			;4e46
	ret z			;4e47
	ld a,(le3d0h)		;4e48
	or a			;4e4b
	ret nz			;4e4c
	ld a,(le404h)		;4e4d
	add a,004h		;4e50
	ld e,a			;4e52
	ld a,(le406h)		;4e53
	add a,002h		;4e56
	ld d,a			;4e58
	ld hl,00806h		;4e59
l4e5ch:
	call sub_8ee2h		;4e5c
	ret nc			;4e5f
	ld a,(ix+000h)		;4e60
	cp 020h			;4e63
	jr z,l4e71h		;4e65
	sub 029h		;4e67
	cp 006h			;4e69
	jp c,08f67h		;4e6b
	call sub_8928h		;4e6e
l4e71h:
	ld a,(le1c2h)		;4e71
	bit 6,a			;4e74
	ret z			;4e76
	ld a,(le446h)		;4e77
	or a			;4e7a
	ret nz			;4e7b
	ld a,(le3beh+2)		;4e7c
	or a			;4e7f
	ret nz			;4e80
	xor a			;4e81
	ld (le20bh),a		;4e82
	ld a,(lf0f5h)		;4e85
	bit 3,a			;4e88
	jr nz,l4e94h		;4e8a
	ld a,(0e330h)		;4e8c
	ld (le20dh),a		;4e8f
	jr l4eceh		;4e92
l4e94h:
	ld hl,le334h		;4e94
	ld b,009h		;4e97
	xor a			;4e99
l4e9ah:
	cp (hl)			;4e9a
	jr nz,l4ea8h		;4e9b
	inc hl			;4e9d
	djnz l4e9ah		;4e9e
	ld a,(0e330h)		;4ea0
	ld (le20dh),a		;4ea3
	jr l4eceh		;4ea6
l4ea8h:
	ld a,001h		;4ea8
	ld (le20bh),a		;4eaa
	ld de,0e210h		;4ead
	ld hl,0e330h		;4eb0
	ld bc,l000dh		;4eb3
	ldir			;4eb6
	ld hl,le430h		;4eb8
	ld bc,l0007h		;4ebb
	ldir			;4ebe
	ld a,(le401h)		;4ec0
	ld (de),a		;4ec3
	inc e			;4ec4
	ld a,(le402h)		;4ec5
	ld (de),a		;4ec8
	inc e			;4ec9
l4ecah:
	ld a,(le40bh)		;4eca
	ld (de),a		;4ecd
l4eceh:
	ld a,03dh		;4ece
	call l4ae4h		;4ed0
	ld a,0f0h		;4ed3
	call l4ae4h		;4ed5
	xor a			;4ed8
	ld (le439h),a		;4ed9
	ld (le1d5h),a		;4edc
	jp la993h		;4edf
	ld ix,0e600h		;4ee2
	ld b,00ch		;4ee6
	exx			;4ee8
	ld de,l0040h		;4ee9
	exx			;4eec
l4eedh:
	bit 0,(ix+010h)		;4eed
	jr z,l4f19h		;4ef1
	ld a,(ix+004h)		;4ef3
	sub e			;4ef6
	jp nc,08f05h		;4ef7
	neg			;4efa
	cp (ix+00eh)		;4efc
	jp c,l8f08h		;4eff
sub_4f02h:
	jp 08f19h		;4f02
	cp l			;4f05
	jr nc,l4f19h		;4f06
	ld a,(ix+006h)		;4f08
	sub d			;4f0b
	jp nc,08f17h		;4f0c
	neg			;4f0f
	cp (ix+00fh)		;4f11
	jr nc,l4f19h		;4f14
	ret			;4f16
l4f17h:
	cp h			;4f17
	ret c			;4f18
l4f19h:
	ld a,(ix+000h)		;4f19
sub_4f1ch:
	cp 038h			;4f1c
	jr nz,l4f24h		;4f1e
	call 08f2ch		;4f20
	ret c			;4f23
l4f24h:
	exx			;4f24
	add ix,de		;4f25
l4f27h:
	exx			;4f27
	djnz l4eedh		;4f28
	xor a			;4f2a
	ret			;4f2b
sub_4f2ch:
	push bc			;4f2c
	push ix			;4f2d
	pop bc			;4f2f
	ld a,034h		;4f30
	add a,c			;4f32
	ld c,a			;4f33
	exx			;4f34
	ld c,003h		;4f35
	exx			;4f37
l4f38h:
	ld a,(bc)		;4f38
	inc c			;4f39
	inc c			;4f3a
	sub e			;4f3b
l4f3ch:
	jp nc,08f48h		;4f3c
	neg			;4f3f
	cp 008h			;4f41
	jp c,l8f4bh		;4f43
	jr l4f5dh		;4f46
	cp l			;4f48
	jr nc,l4f5dh		;4f49
	dec c			;4f4b
	ld a,(bc)		;4f4c
	inc c			;4f4d
	sub d			;4f4e
l4f4fh:
	jp nc,l8f5ah		;4f4f
	neg			;4f52
	cp 010h			;4f54
	jr nc,l4f5dh		;4f56
l4f58h:
	pop bc			;4f58
	ret			;4f59
	cp h			;4f5a
	jr c,l4f58h		;4f5b
l4f5dh:
	inc c			;4f5d
	inc c			;4f5e
	exx			;4f5f
	dec c			;4f60
	exx			;4f61
	jr nz,l4f38h		;4f62
	pop bc			;4f64
	xor a			;4f65
	ret			;4f66
	push af			;4f67
	cp 002h			;4f68
	call c,sub_6514h	;4f6a
	pop af			;4f6d
	call sub_4084h		;4f6e
	ld a,l			;4f71
	adc a,a			;4f72
	sbc a,h			;4f73
	adc a,a			;4f74
	and 08fh		;4f75
	pop de			;4f77
	adc a,a			;4f78
	pop de			;4f79
	adc a,a			;4f7a
	ret pe			;4f7b
	adc a,c			;4f7c
	xor a			;4f7d
l4f7eh:
	ld (le20bh),a		;4f7e
	ld hl,0e330h		;4f81
	ld a,(hl)		;4f84
	inc a			;4f85
	inc l			;4f86
	cp (hl)			;4f87
	jr c,l4f8ch		;4f88
	ld a,001h		;4f8a
l4f8ch:
	dec l			;4f8c
	ld (hl),a		;4f8d
	ld de,l0005h		;4f8e
	call 05b04h		;4f91
	ld a,00ah		;4f94
l4f96h:
	call l4ae4h		;4f96
	jp l53a3h		;4f99
	ld de,l0005h		;4f9c
	call 05b04h		;4f9f
	ld ix,le8c0h		;4fa2
	ld b,00ch		;4fa6
l4fa8h:
	push bc			;4fa8
	ld a,(ix+000h)		;4fa9
	or a			;4fac
	jr z,l4fc4h		;4fad
	cp 01dh			;4faf
	jr z,l4fc4h		;4fb1
	cp 020h			;4fb3
	jr z,l4fc4h		;4fb5
	cp 026h			;4fb7
	jr z,l4fc4h		;4fb9
	sub 029h		;4fbb
	cp 006h			;4fbd
	jr c,l4fc4h		;4fbf
	call sub_8928h		;4fc1
l4fc4h:
	ld bc,lffc0h		;4fc4
	add ix,bc		;4fc7
	pop bc			;4fc9
	djnz l4fa8h		;4fca
	ld a,00bh		;4fcc
	jp l4ae4h		;4fce
	call sub_8ff0h		;4fd1
	call sub_900dh		;4fd4
	ld a,(le357h)		;4fd7
	add a,a			;4fda
	add a,a			;4fdb
	add a,094h		;4fdc
	ld (ix+030h),a		;4fde
	ld a,023h		;4fe1
	jp l4ae4h		;4fe3
	call sub_8ff0h		;4fe6
	ld (ix+030h),094h	;4fe9
	jp sub_5b92h		;4fed
	ld a,(ix+000h)		;4ff0
	ld (ix+028h),a		;4ff3
	ld (ix+000h),02fh	;4ff6
	ld a,(ix+004h)		;4ffa
	ld (ix+029h),a		;4ffd
l5000h:
	ld (ix+00bh),081h	;5000
	ld (ix+010h),008h	;5004
	ld (ix+002h),00ah	;5008
	ret			;500c
	call sub_9019h		;500d
	ld hl,l9024h		;5010
	call 04b67h		;5013
	jp 05b04h		;5016
	ld hl,le357h		;5019
	ld a,(hl)		;501c
	inc a			;501d
	cp 008h			;501e
l5020h:
	jr c,l5024h		;5020
	ld a,007h		;5022
l5024h:
	ld (hl),a		;5024
	ret			;5025
	ld bc,l01ffh+1		;5026
	nop			;5029
	dec b			;502a
	nop			;502b
	djnz l502eh		;502c
l502eh:
	jr nz,l5030h		;502e
l5030h:
	ld d,b			;5030
	nop			;5031
	nop			;5032
	ld bc,l403ah		;5033
	ex (sp),hl		;5036
	or a			;5037
	ret nz			;5038
	ld a,(lea60h)		;5039
	sub 002h		;503c
	ret c			;503e
	ld a,(le400h)		;503f
	dec a			;5042
	ret m			;5043
	ld a,(le404h)		;5044
	add a,004h		;5047
	ld e,a			;5049
	ld a,(le406h)		;504a
	inc a			;504d
	ld d,a			;504e
	ld a,(lea61h)		;504f
	sub e			;5052
	cp 008h			;5053
	jr c,l505ah		;5055
	add a,00fh		;5057
	ret nc			;5059
l505ah:
	ld a,(lea62h)		;505a
	sub d			;505d
	cp 00bh			;505e
	jr c,l5065h		;5060
	add a,00fh		;5062
	ret nc			;5064
l5065h:
	ld a,01fh		;5065
	call l4ae4h		;5067
	ld de,00030h		;506a
	call 05b04h		;506d
l5070h:
	ld hl,lea60h		;5070
	ld a,(hl)		;5073
	ld (hl),000h		;5074
	sub 003h		;5076
	jr z,l508ah		;5078
	dec a			;507a
	jr z,l50a1h		;507b
	dec a			;507d
	jr z,l50bfh		;507e
l5080h:
	sub 002h		;5080
	ret nz			;5082
	ld hl,l1505h+2		;5083
	ld b,017h		;5086
l5088h:
	jr l5094h		;5088
l508ah:
	ld a,00fh		;508a
	call l4ae4h		;508c
	ld hl,01503h		;508f
	ld b,019h		;5092
l5094h:
	di			;5094
l5095h:
	ld (le439h),hl		;5095
	ld a,03ch		;5098
	ld (le43bh),a		;509a
	ei			;509d
	jp l54c7h		;509e
l50a1h:
	ld a,003h		;50a1
	ld (le400h),a		;50a3
	ld hl,l0001h		;50a6
	ld (le440h),hl		;50a9
	ld hl,01504h		;50ac
	ld b,016h		;50af
	call 09094h		;50b1
	call sub_a7f2h		;50b4
	call 042f5h		;50b7
	ld a,010h		;50ba
	jp l4ae4h		;50bc
l50bfh:
	ld hl,l1505h		;50bf
	ld b,018h		;50c2
	jr l5094h		;50c4
	ld a,(le34bh)		;50c6
	or a			;50c9
	ret z			;50ca
	ld hl,lea70h		;50cb
	call sub_90d4h		;50ce
	ld hl,lea78h		;50d1
	ld a,(hl)		;50d4
	or a			;50d5
	ret z			;50d6
	ld iy,le470h		;50d7
	ld de,l0010h		;50db
	ld bc,l0910h		;50de
l50e1h:
	ld a,(iy+000h)		;50e1
	or a			;50e4
	jr z,l50edh		;50e5
	push hl			;50e7
	call 090f2h		;50e8
	pop hl			;50eb
	ret c			;50ec
l50edh:
	add iy,de		;50ed
	djnz l50e1h		;50ef
	ret			;50f1
	inc l			;50f2
	ld a,(hl)		;50f3
	sub (iy+003h)		;50f4
	jp nc,09101h		;50f7
	neg			;50fa
	cp c			;50fc
	jp c,09105h		;50fd
	ret			;5100
l5101h:
	cp (iy+00dh)		;5101
	ret nc			;5104
	inc l			;5105
	ld a,(hl)		;5106
	sub (iy+005h)		;5107
	jp nc,09114h		;510a
	neg			;510d
	cp c			;510f
	jp c,l9118h		;5110
sub_5113h:
	ret			;5113
	cp (iy+00ch)		;5114
	ret nc			;5117
	call 09121h		;5118
	ld (iy+000h),000h	;511b
sub_511fh:
	scf			;511f
sub_5120h:
	ret			;5120
l5121h:
	inc l			;5121
	dec (hl)		;5122
	jr z,l5142h		;5123
l5125h:
	ld a,(hl)		;5125
	and 003h		;5126
	ret nz			;5128
	dec l			;5129
	ld a,r			;512a
	and 00fh		;512c
	sub 007h		;512e
sub_5130h:
	add a,(hl)		;5130
l5131h:
	ld d,a			;5131
	ld a,r			;5132
	and 00fh		;5134
	sub 007h		;5136
	dec l			;5138
	add a,(hl)		;5139
	ld e,a			;513a
	ld a,033h		;513b
	ld c,000h		;513d
	jp 04d1eh		;513f
l5142h:
	dec l			;5142
	ld a,(hl)		;5143
	sub 008h		;5144
	ld d,a			;5146
	dec l			;5147
	ld a,(hl)		;5148
	sub 008h		;5149
	ld e,a			;514b
	dec l			;514c
	ld (hl),000h		;514d
	call sub_8ba1h		;514f
	ld hl,le34ch		;5152
	dec (hl)		;5155
	jr z,l515dh		;5156
	ld a,009h		;5158
	jp l4ae4h		;515a
l515dh:
	ld a,001h		;515d
	ld (le34fh),a		;515f
	ld a,03bh		;5162
	jp l4ae4h		;5164
	ld a,(le340h)		;5167
	cp 005h			;516a
	jr nz,sub_517bh		;516c
	ld ix,lea00h		;516e
	call sub_9188h		;5172
	ld ix,lea20h		;5175
	jr l5188h		;5179
sub_517bh:
	call sub_6878h		;517b
	ret z			;517e
	ld a,(le343h+2)		;517f
	and a			;5182
	ret nz			;5183
	ld ix,lea00h		;5184
l5188h:
	ld a,(ix+000h)		;5188
	and a			;518b
	ret z			;518c
	ld iy,le470h		;518d
	ld b,009h		;5191
l5193h:
	push bc			;5193
	ld a,(iy+000h)		;5194
	or a			;5197
	call nz,091a4h		;5198
	ld de,l0010h		;519b
	add iy,de		;519e
	pop bc			;51a0
l51a1h:
	djnz l5193h		;51a1
	ret			;51a3
	ld l,(ix+013h)		;51a4
	ld h,(ix+014h)		;51a7
	ld (0e3d7h),hl		;51aa
	ld hl,0e3d7h		;51ad
	ld bc,l1010h		;51b0
sub_51b3h:
	cp 006h			;51b3
	ret z			;51b5
	ld a,(le343h+2)		;51b6
	and a			;51b9
	ret nz			;51ba
	ld a,(hl)		;51bb
	inc a			;51bc
	sub (iy+003h)		;51bd
	jp nc,l91cah		;51c0
	neg			;51c3
	cp c			;51c5
	jp c,l91ceh		;51c6
	ret			;51c9
	cp (iy+00dh)		;51ca
	ret nc			;51cd
	inc l			;51ce
	ld a,(hl)		;51cf
	sub (iy+005h)		;51d0
	jp nc,091ddh		;51d3
	neg			;51d6
	cp b			;51d8
	jp c,l91e1h		;51d9
	ret			;51dc
	cp (iy+00ch)		;51dd
	ret nc			;51e0
	ld a,(iy+000h)		;51e1
	cp 005h			;51e4
	jr nz,l51eeh		;51e6
	call 08a0ch		;51e8
	jp l91f2h		;51eb
l51eeh:
	ld (iy+000h),000h	;51ee
	dec (ix+012h)		;51f2
	jp m,09218h		;51f5
	ld a,(le34dh)		;51f8
	cp 003h			;51fb
	jr z,l526fh		;51fd
l51ffh:
	ld a,027h		;51ff
	call l4ae4h		;5201
	ld e,(ix+013h)		;5204
	ld a,(ix+014h)		;5207
	add a,010h		;520a
	jr nc,l5210h		;520c
	ld a,0f0h		;520e
l5210h:
	ld d,a			;5210
	ld a,026h		;5211
	ld c,000h		;5213
	jp 04d16h		;5215
	ld a,(le340h)		;5218
	cp 005h			;521b
	jr nz,l5224h		;521d
	ld (ix+01fh),001h	;521f
	ret			;5223
l5224h:
	ld a,001h		;5224
	ld (le343h+2),a		;5226
	ld a,(le34dh)		;5229
	cp 003h			;522c
	ret z			;522e
	ld a,001h		;522f
	ld (le22ch),a		;5231
	ld hl,(le346h)		;5234
	ld de,0012ch		;5237
	rst 20h			;523a
	ld b,002h		;523b
	jr c,l524ah		;523d
	ld de,l0384h		;523f
l5242h:
	rst 20h			;5242
	ld b,001h		;5243
	jr c,l524ah		;5245
	xor a			;5247
	jr l525ch		;5248
l524ah:
	ld hl,0e20fh		;524a
	ld a,(hl)		;524d
	cp 007h			;524e
	ld c,000h		;5250
	jr nc,l525bh		;5252
	cp 006h			;5254
	ld c,b			;5256
	jr c,l525bh		;5257
	ld c,001h		;5259
l525bh:
	ld a,c			;525b
l525ch:
	ld (le444h),a		;525c
	ld a,03ah		;525f
	call l4ae4h		;5261
	ld a,001h		;5264
	ld (le34fh),a		;5266
	ld de,l0100h		;5269
	jp 05b04h		;526c
l526fh:
	ld de,(lea99h)		;526f
	ld c,000h		;5273
	ld a,038h		;5275
	jp 04d1eh		;5277
	ld hl,lea98h		;527a
	ld a,(hl)		;527d
	or a			;527e
l527fh:
	ret z			;527f
	ld iy,le470h		;5280
	ld b,009h		;5284
l5286h:
	push bc			;5286
	ld a,(iy+000h)		;5287
	or a			;528a
	call nz,09297h		;528b
	ld de,l0010h		;528e
	add iy,de		;5291
	pop bc			;5293
	djnz l5286h		;5294
	ret			;5296
	ld ix,lea00h		;5297
	ld hl,lea99h		;529b
	ld bc,l1010h		;529e
	jp 091b3h		;52a1
	ld hl,lea0eh		;52a4
	ld a,(le404h)		;52a7
	sub (hl)		;52aa
	add a,010h		;52ab
	cp 020h			;52ad
	ret nc			;52af
	inc l			;52b0
	inc l			;52b1
	ld a,(le406h)		;52b2
	sub (hl)		;52b5
	add a,018h		;52b6
sub_52b8h:
	cp 028h			;52b8
l52bah:
	ret nc			;52ba
	ld a,001h		;52bb
	ld (le22bh),a		;52bd
	ret			;52c0
	ld a,(le439h)		;52c1
	cp 005h			;52c4
	jr nz,l52cdh		;52c6
	ld a,(le1c3h)		;52c8
	rra			;52cb
	ret c			;52cc
l52cdh:
	ld ix,le900h		;52cd
	ld b,00ah		;52d1
l52d3h:
	ld a,(ix+000h)		;52d3
	and a			;52d6
	jr z,l52eeh		;52d7
	cp 082h			;52d9
	call z,sub_b711h	;52db
	call 064e1h		;52de
	jr nc,l52eah		;52e1
	ld a,(ix+006h)		;52e3
	cp 0f0h			;52e6
	jr c,l52eeh		;52e8
l52eah:
	ld (ix+000h),000h	;52ea
l52eeh:
	ld de,l0010h		;52ee
	add ix,de		;52f1
	djnz l52d3h		;52f3
	ret			;52f5
	ld ix,le900h		;52f6
	ld b,00ah		;52fa
l52fch:
	ld a,(ix+000h)		;52fc
	and a			;52ff
	jr z,l530fh		;5300
	bit 7,a			;5302
	jr nz,l530fh		;5304
	call sub_9317h		;5306
	jr nc,l530fh		;5309
	ld (ix+000h),000h	;530b
l530fh:
	ld de,l0010h		;530f
	add ix,de		;5312
	djnz l52fch		;5314
	ret			;5316
	ld l,(ix+004h)		;5317
	ld h,(ix+006h)		;531a
	call 05c92h		;531d
	ld a,(le201h)		;5320
	or a			;5323
	jr z,l5335h		;5324
	sub 007h		;5326
	cp 002h			;5328
	jr c,l5335h		;532a
	ld a,(hl)		;532c
	and a			;532d
	ret z			;532e
	ld a,(le304h+1)		;532f
	cp (hl)			;5332
	ccf			;5333
	ret			;5334
l5335h:
	ld a,(hl)		;5335
	cp 009h			;5336
	ccf			;5338
	ret nc			;5339
	jp l932fh		;533a
	ld a,050h		;533d
	ld (lf00fh),a		;533f
	ld e,(ix+004h)		;5342
	ld d,(ix+006h)		;5345
	call sub_93f8h		;5348
	ld de,(lf010h+2)	;534b
	call 04efbh		;534f
	ld de,(0f014h)		;5352
	jp sub_4f02h		;5356
	call sub_9360h		;5359
	ret nc			;535c
	jp sub_6514h		;535d
	ld l,(ix+004h)		;5360
	ld a,(ix+006h)		;5363
sub_5366h:
	bit 7,(ix+00ah)		;5366
	jr nz,l536eh		;536a
	add a,008h		;536c
l536eh:
	ld h,a			;536e
	call 05c92h		;536f
	call sub_932ch		;5372
	ret c			;5375
	ld de,l0020h		;5376
	add hl,de		;5379
	jp sub_932ch		;537a
	ld (lf010h+2),bc	;537d
	ld (0f014h),hl		;5381
	ld a,e			;5384
	add a,008h		;5385
l5387h:
	ld e,a			;5387
	ld a,(lf00eh)		;5388
	and a			;538b
	ret nz			;538c
	jr l53b1h		;538d
	ld a,e			;538f
	add a,008h		;5390
	ld e,a			;5392
	ld a,(le228h)		;5393
	add a,a			;5396
	add a,050h		;5397
	cp 060h			;5399
	jr c,l539fh		;539b
	ld a,060h		;539d
l539fh:
	ld (lf00fh),a		;539f
	push de			;53a2
l53a3h:
	call sub_93f8h		;53a3
	pop de			;53a6
	ld a,(lf00eh)		;53a7
	and a			;53aa
	ret nz			;53ab
	ld a,(le354h)		;53ac
	and a			;53af
	ret nz			;53b0
l53b1h:
	ld hl,le900h		;53b1
	ld b,00ah		;53b4
l53b6h:
	ld a,(hl)		;53b6
	and a			;53b7
	jr z,l53c1h		;53b8
	ld a,010h		;53ba
	add a,l			;53bc
	ld l,a			;53bd
	djnz l53b6h		;53be
	ret			;53c0
l53c1h:
	ld a,001h		;53c1
	ld (le307h),a		;53c3
	ld (hl),a		;53c6
	inc l			;53c7
	inc l			;53c8
	inc l			;53c9
	xor a			;53ca
	ld (hl),a		;53cb
	inc l			;53cc
	ld (hl),e		;53cd
	inc l			;53ce
	ld (hl),a		;53cf
	inc l			;53d0
	ld (hl),d		;53d1
	inc l			;53d2
	ld de,(lf010h+2)	;53d3
	ld (hl),e		;53d7
	inc l			;53d8
	ld (hl),d		;53d9
	ld de,(0f014h)		;53da
	inc l			;53de
	ld (hl),e		;53df
	inc l			;53e0
	ld (hl),d		;53e1
	inc l			;53e2
	ld (hl),054h		;53e3
	inc l			;53e5
	ld (hl),009h		;53e6
	ret			;53e8
	ld (lf00fh),a		;53e9
	call sub_945bh		;53ec
	ld d,001h		;53ef
	jr l53fdh		;53f1
	ld a,080h		;53f3
	ld (lf00fh),a		;53f5
	call sub_945bh		;53f8
	ld d,000h		;53fb
l53fdh:
	ld a,(lf017h)		;53fd
	ld e,a			;5400
	ld a,(le228h)		;5401
	cp 007h			;5404
	jr c,l5425h		;5406
	dec d			;5408
	jr z,l5425h		;5409
	ld a,r			;540b
	ld b,a			;540d
	and 00fh		;540e
	bit 6,b			;5410
	jr z,l541dh		;5412
	ld b,a			;5414
	ld a,c			;5415
	sub b			;5416
	jr nc,l541ah		;5417
	xor a			;5419
l541ah:
	ld e,a			;541a
	jr l5425h		;541b
l541dh:
	add a,e			;541d
	cp 03fh			;541e
l5420h:
	jr c,l5424h		;5420
	ld a,03fh		;5422
l5424h:
	ld e,a			;5424
l5425h:
	ld d,000h		;5425
	ld a,e			;5427
	sub 03fh		;5428
	neg			;542a
	ld hl,l95d9h		;542c
	push hl			;542f
	add hl,de		;5430
	ld c,(hl)		;5431
	pop hl			;5432
	ld e,a			;5433
	add hl,de		;5434
	ld a,(hl)		;5435
	ld (lf016h),a		;5436
	ld e,c			;5439
	call sub_94bbh		;543a
	ld a,(lf010h)		;543d
	and a			;5440
	call nz,sub_5cadh	;5441
	ld (lf010h+2),de	;5444
	ld a,(lf016h)		;5448
	ld e,a			;544b
	call sub_94bbh		;544c
	ld a,(lf010h+1)		;544f
	and a			;5452
	call nz,sub_5cadh	;5453
	ld (0f014h),de		;5456
	ret			;545a
	ld a,(le404h)		;545b
	ld (lf000h),a		;545e
	ld a,(le406h)		;5461
	ld (lf000h+1),a		;5464
	ld hl,lf010h		;5467
	ld (hl),000h		;546a
	ld a,(lf000h)		;546c
	sub e			;546f
	jr nc,l5475h		;5470
	neg			;5472
	inc (hl)		;5474
l5475h:
	inc hl			;5475
	ld (hl),000h		;5476
	and 0f0h		;5478
	ld e,a			;547a
	ld a,(lf000h+1)		;547b
	sub d			;547e
	jr nc,l5484h		;547f
	neg			;5481
	inc (hl)		;5483
l5484h:
	ld d,a			;5484
	ld hl,lf00eh		;5485
	ld (hl),000h		;5488
	add a,e			;548a
	jr c,l5492h		;548b
	cp 030h			;548d
	jr nc,l5492h		;548f
	inc (hl)		;5491
l5492h:
	ld a,d			;5492
	rra			;5493
	rra			;5494
	rra			;5495
	rra			;5496
	and 00fh		;5497
	add a,e			;5499
	ld hl,l94d9h		;549a
	call sub_407ah		;549d
	ld a,(hl)		;54a0
	ld (lf017h),a		;54a1
	ld c,a			;54a4
	ld hl,(lf010h)		;54a5
	ld a,h			;54a8
	ld b,000h		;54a9
	and a			;54ab
	jr z,l54b0h		;54ac
	ld b,080h		;54ae
l54b0h:
	cp l			;54b0
	ld a,c			;54b1
	jr z,l54b6h		;54b2
	neg			;54b4
l54b6h:
	add a,b			;54b6
	ld (lf018h),a		;54b7
	ret			;54ba
	ld a,(lf00fh)		;54bb
	ld h,a			;54be
	call sub_94cdh		;54bf
	xor a			;54c2
	add hl,hl		;54c3
	adc a,a			;54c4
	add hl,hl		;54c5
	adc a,a			;54c6
l54c7h:
	add hl,hl		;54c7
	adc a,a			;54c8
	ld l,h			;54c9
	ld h,a			;54ca
	ex de,hl		;54cb
	ret			;54cc
	ld b,008h		;54cd
	ld l,000h		;54cf
	ld d,l			;54d1
sub_54d2h:
	add hl,hl		;54d2
	jr nc,l54d6h		;54d3
	add hl,de		;54d5
l54d6h:
	djnz sub_54d2h		;54d6
	ret			;54d8
	jr nz,l54e8h		;54d9
	ex af,af'		;54db
sub_54dch:
	ld b,004h		;54dc
	inc b			;54de
	inc bc			;54df
	inc bc			;54e0
	ld (bc),a		;54e1
	ld (bc),a		;54e2
	ld (bc),a		;54e3
	ld (bc),a		;54e4
	ld bc,l0101h		;54e5
l54e8h:
	ld bc,l2033h		;54e8
	ld d,010h		;54eb
	dec c			;54ed
	dec bc			;54ee
	add hl,bc		;54ef
	ex af,af'		;54f0
	rlca			;54f1
	ld b,006h		;54f2
	dec b			;54f4
	dec b			;54f5
	inc b			;54f6
	inc b			;54f7
	inc b			;54f8
	jr c,l5525h		;54f9
	jr nz,l5516h		;54fb
	dec d			;54fd
	ld de,l0d0fh		;54fe
	inc c			;5501
	ld a,(bc)		;5502
l5503h:
	add hl,bc		;5503
	add hl,bc		;5504
	ex af,af'		;5505
	rlca			;5506
	rlca			;5507
	ld b,03ah		;5508
	cpl			;550a
	daa			;550b
	jr nz,l5529h		;550c
	rla			;550e
	inc d			;550f
	ld (de),a		;5510
	djnz $+16		;5511
	dec c			;5513
	inc c			;5514
	dec bc			;5515
l5516h:
	ld a,(bc)		;5516
	ld a,(bc)		;5517
	add hl,bc		;5518
	dec sp			;5519
	inc sp			;551a
	dec hl			;551b
	dec h			;551c
	jr nz,l553bh		;551d
	add hl,de		;551f
	ld d,014h		;5520
	ld (de),a		;5522
	djnz l5534h		;5523
l5525h:
	ld c,00dh		;5525
	inc c			;5527
	dec bc			;5528
l5529h:
	inc a			;5529
	dec (hl)		;552a
	ld l,029h		;552b
	inc h			;552d
	jr nz,l554ch		;552e
	ld a,(de)		;5530
	rla			;5531
	dec d			;5532
	inc d			;5533
l5534h:
	ld (de),a		;5534
	ld de,l0f10h		;5535
	ld c,03dh		;5538
	scf			;553a
l553bh:
	ld sp,l272ch		;553b
l553eh:
	inc hl			;553e
	jr nz,l555eh		;553f
l5541h:
	ld a,(de)		;5541
	jr l555ah		;5542
	dec d			;5544
	inc de			;5545
	ld (de),a		;5546
	ld de,l3d10h		;5547
	jr c,l557fh		;554a
l554ch:
	ld l,02ah		;554c
	ld h,023h		;554e
	jr nz,l556fh		;5550
	dec de			;5552
	add hl,de		;5553
	rla			;5554
	ld d,015h		;5555
l5557h:
	inc de			;5557
	ld (de),a		;5558
	dec a			;5559
l555ah:
	add hl,sp		;555a
	inc (hl)		;555b
	jr nc,l558ah		;555c
l555eh:
	jr z,l5585h		;555e
	ld (l1e20h),hl		;5560
	inc e			;5563
	ld a,(de)		;5564
	jr l557eh		;5565
	dec d			;5567
	inc d			;5568
l5569h:
	ld a,039h		;5569
	dec (hl)		;556b
	ld sp,02a2eh		;556c
l556fh:
	daa			;556f
	dec h			;5570
	ld (l1e20h),hl		;5571
	inc e			;5574
l5575h:
	ld a,(de)		;5575
	add hl,de		;5576
	rla			;5577
	ld d,03eh		;5578
	ld a,(l3336h)		;557a
	cpl			;557d
l557eh:
	inc l			;557e
l557fh:
	add hl,hl		;557f
	daa			;5580
	inc h			;5581
	ld (l1e20h),hl		;5582
l5585h:
	inc e			;5585
	dec de			;5586
	add hl,de		;5587
	jr $+64			;5588
l558ah:
	dec sp			;558a
	scf			;558b
	inc (hl)		;558c
	ld sp,l2b2eh		;558d
	jr z,l55b8h		;5590
	inc h			;5592
	ld (l1e20h),hl		;5593
	dec e			;5596
	dec de			;5597
	ld a,(de)		;5598
	ld a,03bh		;5599
	jr c,l55d2h		;559b
	ld (02c2fh),a		;559d
	ld hl,(l2528h)		;55a0
	inc hl			;55a3
	ld (l1e20h),hl		;55a4
l55a7h:
	dec e			;55a7
	inc e			;55a8
	ld a,03bh		;55a9
	jr c,$+56		;55ab
	inc sp			;55ad
	jr nc,l55deh		;55ae
	dec hl			;55b0
	add hl,hl		;55b1
	daa			;55b2
	dec h			;55b3
	inc hl			;55b4
	ld hl,l1e20h		;55b5
l55b8h:
	dec e			;55b8
	ld a,03ch		;55b9
	add hl,sp		;55bb
	ld (hl),034h		;55bc
	ld sp,02c2fh		;55be
	ld hl,(02628h)		;55c1
	dec h			;55c4
	inc hl			;55c5
	ld hl,l1e20h		;55c6
	ccf			;55c9
	inc a			;55ca
	add hl,sp		;55cb
	scf			;55cc
	inc (hl)		;55cd
	ld (l2d30h),a		;55ce
	dec hl			;55d1
l55d2h:
	add hl,hl		;55d2
l55d3h:
	jr z,l55fbh		;55d3
	inc h			;55d5
	inc hl			;55d6
	ld hl,l0020h		;55d7
	ld b,00ch		;55da
	ld (de),a		;55dc
	add hl,de		;55dd
l55deh:
	rra			;55de
	ld h,02ch		;55df
	ld (03e38h),a		;55e1
	ld b,h			;55e4
	ld c,d			;55e5
	ld d,b			;55e6
	ld d,(hl)		;55e7
	ld e,h			;55e8
	ld h,d			;55e9
	ld l,b			;55ea
	ld l,l			;55eb
	ld (hl),e		;55ec
	ld a,c			;55ed
	ld a,(hl)		;55ee
	add a,h			;55ef
	adc a,c			;55f0
	adc a,(hl)		;55f1
	sub e			;55f2
	sbc a,c			;55f3
	sbc a,(hl)		;55f4
	and d			;55f5
	and a			;55f6
	xor h			;55f7
	or c			;55f8
	or l			;55f9
	cp c			;55fa
l55fbh:
	cp (hl)			;55fb
	jp nz,lcac6h		;55fc
	adc a,0d1h		;55ff
	push de			;5601
	ret c			;5602
	call c,sub_e2dfh	;5603
	push hl			;5606
	rst 20h			;5607
	jp pe,lefedh		;5608
	pop af			;560b
	di			;560c
	push af			;560d
	rst 30h			;560e
	ret m			;560f
	jp m,lfcfbh		;5610
	defb 0fdh,0feh,0feh ;illegal sequence	;5613
	rst 38h			;5616
	rst 38h			;5617
	rst 38h			;5618
	ld b,h			;5619
	rrca			;561a
	ld c,b			;561b
	add hl,bc		;561c
	ld c,h			;561d
	ld b,050h		;561e
	dec c			;5620
	ld b,h			;5621
	rrca			;5622
	ld c,b			;5623
	rrca			;5624
	ld b,h			;5625
	rrca			;5626
	ld c,b			;5627
	rrca			;5628
	ld (ix+002h),000h	;5629
	ld (ix+010h),008h	;562d
	ret			;5631
	ld a,(ix+002h)		;5632
	inc a			;5635
	cp 004h			;5636
	jp nc,sub_6514h		;5638
	ld (ix+002h),a		;563b
	add a,a			;563e
	ld hl,l9621h		;563f
	jr l5658h		;5642
	ld (ix+016h),000h	;5644
	ld a,(ix+002h)		;5648
	cp 010h			;564b
	jr nc,l5664h		;564d
	inc (ix+002h)		;564f
	rra			;5652
	and 006h		;5653
	ld hl,l9618h+1		;5655
l5658h:
	call 05ca6h		;5658
	ld (ix+030h),a		;565b
	inc hl			;565e
	ld a,(hl)		;565f
	ld (ix+031h),a		;5660
	ret			;5663
l5664h:
	ld a,(ix+00ch)		;5664
	dec a			;5667
	jp m,sub_6514h		;5668
	ld bc,l2901h		;566b
	jr z,l5672h		;566e
	inc b			;5670
	inc c			;5671
l5672h:
	ld (ix+000h),b		;5672
	ld (ix+032h),c		;5675
	ld hl,le355h		;5678
	dec (hl)		;567b
	ld (ix+00bh),0c0h	;567c
	call sub_9694h		;5680
	ld a,(ix+004h)		;5683
	and 0f8h		;5686
	ld (ix+004h),a		;5688
	ld a,(ix+006h)		;568b
	and 0f8h		;568e
	ld (ix+006h),a		;5690
	ret			;5693
	ld a,009h		;5694
l5696h:
	ld (ix+010h),a		;5696
	ld a,002h		;5699
	ld (ix+013h),a		;569b
	ld (ix+014h),a		;569e
	ret			;56a1
	ld (ix+00bh),000h	;56a2
	ld a,00bh		;56a6
	jr l5696h		;56a8
	ld (ix+00bh),0c0h	;56aa
	ld c,037h		;56ae
	jr l56c1h		;56b0
	ld b,008h		;56b2
	jr l56b8h		;56b4
	ld b,001h		;56b6
l56b8h:
	ld (ix+02ah),b		;56b8
	ld (ix+00bh),0c0h	;56bb
	ld c,038h		;56bf
l56c1h:
	ld (ix+032h),c		;56c1
	ld a,009h		;56c4
	call sub_9696h		;56c6
	ld l,(ix+004h)		;56c9
	ld h,(ix+006h)		;56cc
	call 05c92h		;56cf
	xor a			;56d2
	ld (hl),a		;56d3
	inc hl			;56d4
	ld (hl),a		;56d5
	ld bc,l001fh		;56d6
	add hl,bc		;56d9
	ld (hl),a		;56da
	inc hl			;56db
	ld (hl),a		;56dc
	ret			;56dd
	ld a,(ix+004h)		;56de
	or a			;56e1
	jp z,l96e8h		;56e2
	dec (ix+004h)		;56e5
	dec (ix+002h)		;56e8
	ret nz			;56eb
	ld a,(ix+028h)		;56ec
	cp 02bh			;56ef
	jp z,sub_6514h		;56f1
	dec (ix+02ah)		;56f4
	jp z,sub_6514h		;56f7
	ld (ix+000h),02dh	;56fa
	ld (ix+00bh),0c0h	;56fe
	set 0,(ix+010h)		;5702
l5706h:
	ld a,(ix+029h)		;5706
	ld (ix+004h),a		;5709
	ret			;570c
	ld a,0c6h		;570d
	call sub_9714h		;570f
	jr l5725h		;5712
	ld (ix+032h),a		;5714
	ld a,(ix+004h)		;5717
	and 0f8h		;571a
	ld (ix+004h),a		;571c
l571fh:
	ret			;571f
	ld c,0c7h		;5720
l5722h:
	call sub_9743h		;5722
l5725h:
	ld a,(ix+00ch)		;5725
	ld (ix+002h),a		;5728
	ld (ix+00ch),000h	;572b
	ld a,001h		;572f
	ld (ix+010h),a		;5731
	ld (ix+013h),a		;5734
	ld (ix+014h),a		;5737
	ld a,(ix+006h)		;573a
	and 0f8h		;573d
	ld (ix+006h),a		;573f
	ret			;5742
	ld a,(ix+004h)		;5743
	rra			;5746
	and 003h		;5747
	add a,c			;5749
	ld (ix+032h),a		;574a
	ret			;574d
	ld a,(ix+001h)		;574e
	dec a			;5751
	jr z,l57bdh		;5752
	dec a			;5754
	jr z,l57d2h		;5755
l5757h:
	jp p,097dah		;5757
	ld a,(ix+006h)		;575a
	sub 008h		;575d
	ld (ix+006h),a		;575f
	jr z,l57cdh		;5762
	ld a,(le340h)		;5764
	or a			;5767
	jr z,l578eh		;5768
	ld hl,l97b8h		;576a
	ld a,(ix+002h)		;576d
	call 05ca6h		;5770
l5773h:
	ld a,(0ea03h)		;5773
	add a,(hl)		;5776
	ld (ix+004h),a		;5777
	cp 0b0h			;577a
l577ch:
	jp nc,sub_6514h		;577c
	ld a,(ix+000h)		;577f
	cp 039h			;5782
	jr z,l578eh		;5784
	ld a,(ix+004h)		;5786
	and 0f8h		;5789
	ld (ix+004h),a		;578b
l578eh:
	call sub_97f3h		;578e
	jr c,l57ach		;5791
	inc (ix+014h)		;5793
	ld a,(ix+014h)		;5796
	cp (ix+019h)		;5799
	jr c,l57a2h		;579c
	ld (ix+001h),001h	;579e
l57a2h:
	ld a,(ix+014h)		;57a2
	add a,a			;57a5
	add a,a			;57a6
	add a,a			;57a7
	ld (ix+00fh),a		;57a8
	ret			;57ab
l57ach:
	ld a,(ix+006h)		;57ac
	add a,008h		;57af
	ld (ix+006h),a		;57b1
	ld (ix+001h),003h	;57b4
	ret			;57b8
	djnz $+48		;57b9
	ld d,b			;57bb
	ld l,(hl)		;57bc
l57bdh:
	ld a,(ix+006h)		;57bd
	sub 008h		;57c0
	ld (ix+006h),a		;57c2
	jr z,l57cdh		;57c5
	call sub_97f3h		;57c7
	jr c,l57ach		;57ca
	ret			;57cc
l57cdh:
	ld (ix+001h),002h	;57cd
	ret			;57d1
l57d2h:
	dec (ix+014h)		;57d2
	jr nz,l57a2h		;57d5
	jp sub_6514h		;57d7
	dec (ix+014h)		;57da
	jp z,sub_6514h		;57dd
	call 097a2h		;57e0
	ld a,(0e320h)		;57e3
	or a			;57e6
	ret z			;57e7
	ld a,(ix+006h)		;57e8
	sub 008h		;57eb
	ld (ix+006h),a		;57ed
	ret nz			;57f0
	jr l57cdh		;57f1
	ld a,(le340h)		;57f3
	or a			;57f6
	ret nz			;57f7
	ld l,(ix+004h)		;57f8
	ld h,(ix+006h)		;57fb
	call 05c92h		;57fe
	ld a,(hl)		;5801
	or a			;5802
	ret z			;5803
	ld hl,le304h+1		;5804
	cp (hl)			;5807
	ret			;5808
	ld c,0fah		;5809
	call sub_9743h		;580b
	jp l972bh		;580e
	ld a,(ix+001h)		;5811
	dec a			;5814
	jr z,l5841h		;5815
	dec a			;5817
	jr z,l5852h		;5818
	jp p,l9840h		;581a
	ld b,004h		;581d
l581fh:
	ld a,(ix+006h)		;581f
	sub 008h		;5822
	ld (ix+006h),a		;5824
	jp z,l983ch		;5827
	inc (ix+014h)		;582a
	dec (ix+019h)		;582d
	jr z,l5837h		;5830
	djnz l581fh		;5832
	jp 097a2h		;5834
l5837h:
	ld (ix+001h),001h	;5837
	ret			;583b
l583ch:
	ld (ix+001h),002h	;583c
	ret			;5840
l5841h:
	ld b,004h		;5841
l5843h:
	ld a,(ix+006h)		;5843
	sub 008h		;5846
	ld (ix+006h),a		;5848
	jr z,l583ch		;584b
	djnz l5843h		;584d
	jp 097a2h		;584f
l5852h:
	ld b,004h		;5852
l5854h:
	dec (ix+014h)		;5854
	jp z,sub_6514h		;5857
	djnz l5854h		;585a
	jp 097a2h		;585c
	ld a,0f1h		;585f
	call sub_9714h		;5861
	jp l972bh		;5864
	ld (ix+024h),006h	;5867
	ld (ix+027h),000h	;586b
	res 2,(ix+010h)		;586f
	call sub_4f1ch		;5873
	ld de,0fe80h		;5876
	call sub_4f02h		;5879
	ld (ix+015h),008h	;587c
	ld a,(ix+019h)		;5880
	and a			;5883
	ret z			;5884
	ld (ix+030h),0b4h	;5885
	ret			;5889
	call sub_9989h		;588a
	ld a,(ix+001h)		;588d
	dec a			;5890
	jr z,l58cch		;5891
	dec a			;5893
	jr z,l5904h		;5894
	dec a			;5896
	jp z,l9918h		;5897
	ld bc,l0408h		;589a
l589dh:
	push bc			;589d
	ld a,(ix+006h)		;589e
	sub c			;58a1
	ld h,a			;58a2
	ld a,(ix+004h)		;58a3
	bit 0,(ix+019h)		;58a6
	jr nz,l58aeh		;58aa
	add a,008h		;58ac
l58aeh:
	ld l,a			;58ae
	call sub_83d9h		;58af
	pop bc			;58b2
	jr c,sub_58c3h		;58b3
	ld a,c			;58b5
	add a,008h		;58b6
	ld c,a			;58b8
	djnz l589dh		;58b9
	set 2,(ix+010h)		;58bb
	inc (ix+001h)		;58bf
	ret			;58c2
sub_58c3h:
	ld (ix+001h),003h	;58c3
	set 3,(ix+010h)		;58c7
	ret			;58cb
l58cch:
	call 0995dh		;58cc
	call c,sub_4f2ch	;58cf
	call sub_9929h		;58d2
	jr c,l58f7h		;58d5
	inc (ix+001h)		;58d7
	ld d,(ix+00ah)		;58da
	ld e,(ix+009h)		;58dd
	ld (ix+026h),d		;58e0
	ld (ix+025h),e		;58e3
	ld hl,lfc00h		;58e6
	ld a,(ix+019h)		;58e9
	and a			;58ec
	jr nz,l58f1h		;58ed
	ld h,004h		;58ef
l58f1h:
	ld de,l0100h		;58f1
	call 04f26h		;58f4
l58f7h:
	dec (ix+015h)		;58f7
	ret nz			;58fa
	call 09eb0h		;58fb
	ld (ix+015h),a		;58fe
	jp lbb4ah		;5901
l5904h:
	call sub_9929h		;5904
	ret nc			;5907
	ld e,(ix+026h)		;5908
	ld d,(ix+025h)		;590b
	call sub_4f02h		;590e
	ld (ix+001h),001h	;5911
	jp sub_4f1ch		;5915
	ld a,(ix+006h)		;5918
	cp 0c0h			;591b
	ret nz			;591d
	ld (ix+001h),001h	;591e
	ld (ix+010h),007h	;5922
	jp sub_4f2ch		;5926
	bit 0,(ix+019h)		;5929
	ld a,010h		;592d
	jr z,l5933h		;592f
	ld a,0ffh		;5931
l5933h:
	ld h,(ix+006h)		;5933
	add a,(ix+004h)		;5936
	ld l,a			;5939
	push hl			;593a
	call sub_83d9h		;593b
	pop hl			;593e
	jr c,l5956h		;593f
	ld a,(ix+004h)		;5941
	add a,068h		;5944
	cp 071h			;5946
	jr nc,l5956h		;5948
l594ah:
	ld de,l017fh+1		;594a
	call sub_4f02h		;594d
	scf			;5950
	ret			;5951
	cp 018h			;5952
	jr nc,l594ah		;5954
l5956h:
	ld a,h			;5956
	add a,008h		;5957
	ld h,a			;5959
	jp sub_83d9h		;595a
	bit 0,(ix+019h)		;595d
	ld a,(ix+004h)		;5961
	jr nz,l5968h		;5964
	add a,008h		;5966
l5968h:
	ld l,a			;5968
	ld a,(ix+006h)		;5969
	bit 7,(ix+00ah)		;596c
	jr z,l597bh		;5970
l5972h:
	cp 008h			;5972
	ccf			;5974
	ret nc			;5975
	dec a			;5976
	ld h,a			;5977
	jp sub_83d9h		;5978
l597bh:
	add a,008h		;597b
	ld h,a			;597d
	call sub_83d9h		;597e
	ret c			;5981
	ld a,(ix+006h)		;5982
	cp 0f0h			;5985
	ccf			;5987
	ret			;5988
	bit 0,(ix+019h)		;5989
	ld hl,l9998h		;598d
	jr z,l5995h		;5990
	ld hl,l999ch		;5992
l5995h:
	jp l9b31h		;5995
	call c,sub_e8e0h	;5998
	call po,sub_b8b4h	;599b
	ret nz			;599e
	cp h			;599f
	ld (ix+002h),022h	;59a0
	ld a,(ix+019h)		;59a4
	and a			;59a7
	jr nz,l59c5h		;59a8
	ld (ix+02ah),006h	;59aa
	ld a,r			;59ae
	and 001h		;59b0
	jr z,l59bch		;59b2
	ld (ix+02ah),00eh	;59b4
	ld (ix+006h),004h	;59b8
l59bch:
	ld a,(ix+02ah)		;59bc
	inc a			;59bf
	inc a			;59c0
	and 00fh		;59c1
	jr l59ebh		;59c3
l59c5h:
	ld (ix+030h),0c4h	;59c5
	inc (ix+001h)		;59c9
	ld a,(ix+019h)		;59cc
	bit 7,a			;59cf
	jr z,l59d4h		;59d1
	xor a			;59d3
l59d4h:
	ld (ix+026h),018h	;59d4
	jr l59efh		;59d8
	call sub_637bh		;59da
	and 003h		;59dd
	add a,(ix+02ah)		;59df
	and 00fh		;59e2
	jr l59ebh		;59e4
	call sub_637bh		;59e6
	and 00fh		;59e9
l59ebh:
	ld (ix+026h),010h	;59eb
l59efh:
	ld (ix+025h),a		;59ef
	ld c,a			;59f2
	ld a,(le228h)		;59f3
	ld b,001h		;59f6
	cp 006h			;59f8
	jr c,l59fdh		;59fa
	inc b			;59fc
l59fdh:
	ld a,c			;59fd
	call 04cb7h		;59fe
	jp 04f26h		;5a01
	ld (ix+027h),020h	;5a04
	ld (ix+024h),004h	;5a08
	ld (ix+028h),000h	;5a0c
	jp l4f17h		;5a10
	ld a,(ix+031h)		;5a13
	xor 005h		;5a16
	ld (ix+031h),a		;5a18
	call sub_9aaeh		;5a1b
	call sub_9ac3h		;5a1e
	ld a,(ix+001h)		;5a21
	dec a			;5a24
	jr z,l5a74h		;5a25
	dec a			;5a27
	jr z,l5a8ah		;5a28
	dec (ix+002h)		;5a2a
	jr nz,l5a6dh		;5a2d
	ld c,000h		;5a2f
	ld d,(ix+006h)		;5a31
	ld e,(ix+004h)		;5a34
	ld a,(ix+025h)		;5a37
	add a,002h		;5a3a
	and 00fh		;5a3c
l5a3eh:
	jr nz,l5a42h		;5a3e
	ld a,080h		;5a40
l5a42h:
	ld b,a			;5a42
	ld a,008h		;5a43
	push de			;5a45
	push bc			;5a46
l5a47h:
	call 04d16h		;5a47
	pop bc			;5a4a
	pop de			;5a4b
	ld a,b			;5a4c
	sub 004h		;5a4d
	and 00fh		;5a4f
	jr nz,l5a55h		;5a51
	ld a,080h		;5a53
l5a55h:
	ld b,a			;5a55
	ld a,008h		;5a56
	ld c,000h		;5a58
	call 04d16h		;5a5a
	ld (ix+030h),0c4h	;5a5d
	inc (ix+001h)		;5a61
	ld (ix+019h),0ffh	;5a64
	ld (ix+026h),010h	;5a68
	ret			;5a6c
l5a6dh:
	dec (ix+026h)		;5a6d
	ret nz			;5a70
	jp 099dah		;5a71
l5a74h:
	ld a,(ix+019h)		;5a74
	or a			;5a77
	jr z,l5a6dh		;5a78
	dec (ix+026h)		;5a7a
	ret nz			;5a7d
	res 2,(ix+010h)		;5a7e
sub_5a82h:
	inc (ix+001h)		;5a82
	ld (ix+026h),008h	;5a85
	ret			;5a89
l5a8ah:
	dec (ix+026h)		;5a8a
	ret nz			;5a8d
	dec (ix+001h)		;5a8e
	set 2,(ix+010h)		;5a91
sub_5a95h:
	ld (ix+026h),028h	;5a95
	ld a,(le228h)		;5a99
	srl a			;5a9c
	srl a			;5a9e
	ld hl,l9aaah		;5aa0
	call sub_407ah		;5aa3
l5aa6h:
	ld a,(hl)		;5aa6
	jp l4ecah		;5aa7
	jr nz,l5adch		;5aaa
	ld b,b			;5aac
	ld d,b			;5aad
	bit 7,(ix+008h)		;5aae
	ld a,(ix+004h)		;5ab2
	jr z,l5abdh		;5ab5
	cp 008h			;5ab7
	jp c,l4f3ch		;5ab9
	ret			;5abc
l5abdh:
	cp 0a0h			;5abd
	jp nc,l4f3ch		;5abf
	ret			;5ac2
	ld a,(ix+001h)		;5ac3
	or a			;5ac6
	jr nz,l5ae4h		;5ac7
	ld b,0b4h		;5ac9
	ld a,(ix+002h)		;5acb
	cp 014h			;5ace
	jr nc,l5ae0h		;5ad0
	ld b,0b8h		;5ad2
	cp 00fh			;5ad4
	jr nc,l5ae0h		;5ad6
l5ad8h:
	ld b,0bch		;5ad8
sub_5adah:
	cp 004h			;5ada
l5adch:
	jr nc,l5ae0h		;5adc
	ld b,0c0h		;5ade
l5ae0h:
	ld (ix+030h),b		;5ae0
	ret			;5ae3
l5ae4h:
	ld a,(le1c3h)		;5ae4
	and 003h		;5ae7
	ret nz			;5ae9
	ld a,(ix+030h)		;5aea
	add a,004h		;5aed
	cp 0dch			;5aef
	jr nz,l5af5h		;5af1
	ld a,0c4h		;5af3
l5af5h:
	ld (ix+030h),a		;5af5
	ret			;5af8
l5af9h:
	dec (ix+006h)		;5af9
	call sub_9b2eh		;5afc
	ld a,(ix+001h)		;5aff
sub_5b02h:
	dec a			;5b02
	jr z,l5b14h		;5b03
	dec a			;5b05
l5b06h:
	jr z,l5b1fh		;5b06
	dec (ix+027h)		;5b08
	ret nz			;5b0b
	ld (ix+026h),001h	;5b0c
	inc (ix+001h)		;5b10
	ret			;5b13
l5b14h:
	dec (ix+026h)		;5b14
	ret nz			;5b17
	call 099e6h		;5b18
	inc (ix+001h)		;5b1b
	ret			;5b1e
l5b1fh:
	dec (ix+026h)		;5b1f
	ret nz			;5b22
	ld (ix+026h),008h	;5b23
	call l4f17h		;5b27
	dec (ix+001h)		;5b2a
	ret			;5b2d
	ld hl,09b48h		;5b2e
	ld c,000h		;5b31
	dec (ix+024h)		;5b33
	ld a,(ix+024h)		;5b36
	rra			;5b39
	rra			;5b3a
	dec c			;5b3b
	jr nz,l5b3fh		;5b3c
	rra			;5b3e
l5b3fh:
	and 003h		;5b3f
	call 05ca6h		;5b41
	ld (ix+030h),a		;5b44
	ret			;5b47
	call nz,0ccc8h		;5b48
	ret z			;5b4b
	ld (ix+02bh),008h	;5b4c
	ld de,lfd00h		;5b50
	call sub_4f02h		;5b53
	jp sub_4f1ch		;5b56
	call sub_9b85h		;5b59
	call 06770h		;5b5c
	call sub_9b77h		;5b5f
	ld a,(le404h)		;5b62
	ld de,l0016h		;5b65
	cp (ix+004h)		;5b68
	call c,sub_5cadh	;5b6b
	ex de,hl		;5b6e
	call 04f10h		;5b6f
	add hl,de		;5b72
	ex de,hl		;5b73
	jp 04efbh		;5b74
	ld a,(le406h)		;5b77
	cp (ix+006h)		;5b7a
	ret c			;5b7d
	dec (ix+02bh)		;5b7e
	ret nz			;5b81
	jp lbb4ah		;5b82
	ld hl,l9b98h		;5b85
	ld a,(le201h)		;5b88
	cp 004h			;5b8b
	jr nz,sub_5b92h		;5b8d
	ld hl,l9b9fh		;5b8f
sub_5b92h:
	ld bc,l0307h		;5b92
	jp l6361h		;5b95
	and h			;5b98
	xor b			;5b99
	xor h			;5b9a
	or b			;5b9b
	xor h			;5b9c
	xor b			;5b9d
	and h			;5b9e
	ld (hl),h		;5b9f
	ld a,b			;5ba0
	ld a,h			;5ba1
	add a,b			;5ba2
sub_5ba3h:
	ld a,h			;5ba3
	ld a,b			;5ba4
	ld (hl),h		;5ba5
	ld a,(le201h)		;5ba6
	cp 004h			;5ba9
	jr nz,l5bb1h		;5bab
	ld (ix+030h),084h	;5bad
l5bb1h:
	ld a,(le228h)		;5bb1
	srl a			;5bb4
	srl a			;5bb6
	ld hl,l9bc1h		;5bb8
l5bbbh:
	call 05ca6h		;5bbb
	jp l4ecah		;5bbe
	ld (hl),b		;5bc1
	sub b			;5bc2
	and b			;5bc3
	ret nz			;5bc4
	ld a,(le1c3h)		;5bc5
	and 003h		;5bc8
	ret nz			;5bca
	ld hl,l9bebh		;5bcb
	ld a,(le201h)		;5bce
	cp 004h			;5bd1
	jr nz,l5bd8h		;5bd3
	ld hl,l9bf1h		;5bd5
l5bd8h:
	ld a,(ix+025h)		;5bd8
	inc a			;5bdb
	cp 006h			;5bdc
	jr c,l5be1h		;5bde
	xor a			;5be0
l5be1h:
	ld (ix+025h),a		;5be1
	call 05ca6h		;5be4
	ld (ix+030h),a		;5be7
	ret			;5bea
	or h			;5beb
	cp b			;5bec
	cp h			;5bed
	ret nz			;5bee
	cp h			;5bef
	cp b			;5bf0
	add a,h			;5bf1
	adc a,b			;5bf2
	adc a,h			;5bf3
	sub b			;5bf4
	adc a,h			;5bf5
	adc a,b			;5bf6
sub_5bf7h:
	ld de,0fe80h		;5bf7
	call sub_4f02h		;5bfa
	ld de,00800h		;5bfd
	ld a,(ix+004h)		;5c00
	cp 060h			;5c03
	jr c,l5c09h		;5c05
	ld d,0f8h		;5c07
l5c09h:
	jp 04efbh		;5c09
l5c0ch:
	call sub_9c40h		;5c0c
	call sub_9c36h		;5c0f
sub_5c12h:
	ld a,(ix+001h)		;5c12
	dec a			;5c15
	jr z,l5c22h		;5c16
	ld a,048h		;5c18
	cp (ix+004h)		;5c1a
	ret nz			;5c1d
	inc (ix+001h)		;5c1e
	ret			;5c21
l5c22h:
	ld de,l0080h		;5c22
	ld a,048h		;5c25
	cp (ix+004h)		;5c27
	call c,sub_5cadh	;5c2a
	ex de,hl		;5c2d
	call 04f10h		;5c2e
	add hl,de		;5c31
	ex de,hl		;5c32
	jp 04efbh		;5c33
	ld hl,l9c3ch		;5c36
	jp l9b31h		;5c39
	call p,sub_f4f8h	;5c3c
	ret m			;5c3f
l5c40h:
	ld a,(le228h)		;5c40
	cp 006h			;5c43
	ret c			;5c45
	dec (ix+015h)		;5c46
	ret nz			;5c49
	call 04e93h		;5c4a
	jp lbb4ah		;5c4d
	ld (ix+025h),020h	;5c50
	ld (ix+010h),002h	;5c54
	jp l9bb1h		;5c58
	ld a,(ix+001h)		;5c5b
	and a			;5c5e
	ret nz			;5c5f
	dec (ix+025h)		;5c60
	jr nz,l5c71h		;5c63
	inc (ix+001h)		;5c65
	ld (ix+031h),005h	;5c68
	ld (ix+010h),007h	;5c6c
	ret			;5c70
l5c71h:
	ld hl,l9c87h		;5c71
	ld a,(ix+027h)		;5c74
	inc a			;5c77
	cp 006h			;5c78
	jr c,l5c7dh		;5c7a
	xor a			;5c7c
l5c7dh:
	ld (ix+027h),a		;5c7d
	call 05ca6h		;5c80
	ld (ix+031h),a		;5c83
	ret			;5c86
	inc b			;5c87
sub_5c88h:
	dec b			;5c88
	rlca			;5c89
	rrca			;5c8a
	rlca			;5c8b
	dec b			;5c8c
	ld (ix+024h),008h	;5c8d
	ld (ix+02bh),000h	;5c91
	ld a,(le228h)		;5c95
	cp 006h			;5c98
	ld de,lfa00h		;5c9a
	jr nc,l5ca1h		;5c9d
	ld d,0fch		;5c9f
l5ca1h:
	ld (ix+02ah),d		;5ca1
	call sub_4f02h		;5ca4
	call sub_4f1ch		;5ca7
	ld a,(le228h)		;5caa
sub_5cadh:
	srl a			;5cad
	srl a			;5caf
	ld hl,l9cbbh		;5cb1
	call 05ca6h		;5cb4
	ld (ix+02ch),a		;5cb7
	ret			;5cba
	jr z,$+34		;5cbb
	jr $+18			;5cbd
	ld a,(ix+006h)		;5cbf
	cp 008h			;5cc2
	jp c,sub_6514h		;5cc4
	call sub_9d59h		;5cc7
	ld hl,l9d63h		;5cca
	ld a,(le201h)		;5ccd
	cp 005h			;5cd0
	jr nz,l5cd7h		;5cd2
	ld hl,09d67h		;5cd4
l5cd7h:
	ld c,001h		;5cd7
	call 09b33h		;5cd9
	ld a,(ix+001h)		;5cdc
	dec a			;5cdf
	jr z,l5d16h		;5ce0
	dec a			;5ce2
	jr z,l5d4dh		;5ce3
	ld hl,l9d6bh		;5ce5
	ld a,(ix+02bh)		;5ce8
	ld c,a			;5ceb
	call 05ca6h		;5cec
	cp (ix+006h)		;5cef
	ret c			;5cf2
	inc c			;5cf3
	ld (ix+02bh),c		;5cf4
	inc (ix+001h)		;5cf7
	ld a,(ix+004h)		;5cfa
	cp 058h			;5cfd
	ld a,001h		;5cff
	jr c,l5d05h		;5d01
	ld a,0ffh		;5d03
l5d05h:
	ld (ix+028h),a		;5d05
	ld (ix+002h),002h	;5d08
sub_5d0ch:
	ld a,008h		;5d0c
	ld b,004h		;5d0e
	ld (ix+027h),a		;5d10
	jp 04cb7h		;5d13
l5d16h:
	dec (ix+002h)		;5d16
	ret nz			;5d19
	ld (ix+002h),002h	;5d1a
	ld a,(ix+027h)		;5d1e
	add a,(ix+028h)		;5d21
	and 00fh		;5d24
	cp 008h			;5d26
	jr z,l5d35h		;5d28
	ld (ix+027h),a		;5d2a
	ld b,004h		;5d2d
	call 04cb7h		;5d2f
	jp 04f26h		;5d32
l5d35h:
	call sub_4f1ch		;5d35
	ld d,(ix+02ah)		;5d38
	ld e,000h		;5d3b
	call sub_4f02h		;5d3d
sub_5d40h:
	ld (ix+001h),e		;5d40
	ld a,(ix+02bh)		;5d43
	dec a			;5d46
	ret z			;5d47
	ld (ix+001h),002h	;5d48
	ret			;5d4c
l5d4dh:
	ld de,0ffc8h		;5d4d
	ex de,hl		;5d50
	call 04f09h		;5d51
	add hl,de		;5d54
	ex de,hl		;5d55
	jp sub_4f02h		;5d56
	dec (ix+02ch)		;5d59
l5d5ch:
	ret nz			;5d5c
	call sub_9caah		;5d5d
	jp lbb4ah		;5d60
	call pe,0f4f0h		;5d63
	ret p			;5d66
	and h			;5d67
	xor b			;5d68
	xor h			;5d69
	xor b			;5d6a
	sub b			;5d6b
	ld l,b			;5d6c
	ld a,(ix+004h)		;5d6d
	cp 060h			;5d70
sub_5d72h:
	ld bc,sub_0096h+2	;5d72
	jr c,l5d7ah		;5d75
	ld bc,l018ch		;5d77
l5d7ah:
	ld (ix+027h),b		;5d7a
	ld (ix+030h),c		;5d7d
	ld (ix+025h),00ah	;5d80
	call sub_4f1ch		;5d84
	ld de,l01ffh+1		;5d87
	call sub_4f02h		;5d8a
	ld a,r			;5d8d
	and 01fh		;5d8f
	add a,02dh		;5d91
	ld (ix+002h),a		;5d93
	ret			;5d96
sub_5d97h:
	call 09f46h		;5d97
	jp c,l893ah		;5d9a
	call sub_9f75h		;5d9d
sub_5da0h:
	jp c,sub_6514h		;5da0
	ld a,(ix+001h)		;5da3
	dec a			;5da6
	jr z,l5de1h		;5da7
	jp p,09e12h		;5da9
	call 06311h		;5dac
	jr c,l5dd3h		;5daf
	dec (ix+002h)		;5db1
	jr z,l5dbch		;5db4
	call sub_9e1bh		;5db6
	jp l9efch		;5db9
l5dbch:
	inc (ix+001h)		;5dbc
	ld (ix+002h),05ah	;5dbf
	call sub_9f20h		;5dc3
	call sub_9e17h		;5dc6
	call 09eb0h		;5dc9
	ld (ix+010h),00bh	;5dcc
	jp 04f21h		;5dd0
l5dd3h:
	ld (ix+010h),007h	;5dd3
	ld (ix+001h),002h	;5dd7
	ld de,lfe00h		;5ddb
	jp sub_4f02h		;5dde
l5de1h:
	call 06311h		;5de1
	jr c,l5dd3h		;5de4
	dec (ix+002h)		;5de6
	jr z,l5df6h		;5de9
	call 09ebch		;5deb
	ld a,(le201h)		;5dee
	or a			;5df1
	ret nz			;5df2
	jp sub_9e1bh		;5df3
l5df6h:
	ld a,(le406h)		;5df6
	cp (ix+006h)		;5df9
	ld de,l01ffh+1		;5dfc
	jr nc,l5e04h		;5dff
	ld de,lfe00h		;5e01
l5e04h:
	call sub_4f02h		;5e04
l5e07h:
	ld (ix+010h),007h	;5e07
	ld (ix+001h),000h	;5e0b
	jp l9d8dh		;5e0f
	call l9efch		;5e12
	jr l5e1bh		;5e15
	ld a,001h		;5e17
	jr l5e1ch		;5e19
l5e1bh:
	xor a			;5e1b
l5e1ch:
	ld (le365h+1),a		;5e1c
	ld a,(ix+004h)		;5e1f
	ld (ix+028h),a		;5e22
	bit 0,(ix+027h)		;5e25
	jr z,l5e74h		;5e29
l5e2bh:
	ld h,(ix+006h)		;5e2b
	ld a,(ix+004h)		;5e2e
	add a,010h		;5e31
	ld l,a			;5e33
	call sub_83e8h		;5e34
	jr nc,l5e62h		;5e37
l5e39h:
	ld hl,(le3bbh+1)	;5e39
	ld bc,lffe0h		;5e3c
	add hl,bc		;5e3f
	ld (le3bbh+1),hl	;5e40
	call sub_83eeh		;5e43
	ret nc			;5e46
	ld a,(ix+004h)		;5e47
	sub 008h		;5e4a
	ld (ix+004h),a		;5e4c
	cp 010h			;5e4f
	jr nc,l5e39h		;5e51
l5e53h:
	call 062fbh		;5e53
	ld (ix+025h),005h	;5e56
	ld a,(ix+028h)		;5e5a
	ld (ix+004h),a		;5e5d
	jr l5e07h		;5e60
l5e62h:
	ld a,(ix+004h)		;5e62
	cp 098h			;5e65
	ret nc			;5e67
	add a,008h		;5e68
	ld (ix+004h),a		;5e6a
	ld a,(le365h+1)		;5e6d
	or a			;5e70
	jr nz,l5e2bh		;5e71
	ret			;5e73
l5e74h:
	ld h,(ix+006h)		;5e74
	ld l,(ix+004h)		;5e77
	call sub_83e8h		;5e7a
	jr nc,l5e8dh		;5e7d
	ld a,(ix+004h)		;5e7f
	add a,008h		;5e82
	ld (ix+004h),a		;5e84
	cp 080h			;5e87
	jr c,l5e74h		;5e89
	jr l5e53h		;5e8b
l5e8dh:
	ld hl,(le3bbh+1)	;5e8d
	ld bc,lffe0h		;5e90
	add hl,bc		;5e93
	ld (le3bbh+1),hl	;5e94
	call sub_83eeh		;5e97
	ret c			;5e9a
	ld a,(ix+004h)		;5e9b
	cp 009h			;5e9e
	ret c			;5ea0
	ld a,(ix+004h)		;5ea1
	sub 008h		;5ea4
	ld (ix+004h),a		;5ea6
sub_5ea9h:
	ld a,(le365h+1)		;5ea9
	or a			;5eac
	jr nz,l5e8dh		;5ead
	ret			;5eaf
	ld a,(le228h)		;5eb0
	add a,a			;5eb3
	sub 03ch		;5eb4
	neg			;5eb6
	ld (ix+015h),a		;5eb8
	ret			;5ebb
	dec (ix+015h)		;5ebc
	ret nz			;5ebf
	call 09eb0h		;5ec0
	call sub_9f20h		;5ec3
	bit 0,(ix+027h)		;5ec6
	jr z,l5ed5h		;5eca
	ld a,(le404h)		;5ecc
	cp (ix+004h)		;5ecf
	ret nc			;5ed2
	jr l5edch		;5ed3
l5ed5h:
	ld a,(le404h)		;5ed5
	cp (ix+004h)		;5ed8
	ret c			;5edb
l5edch:
	ld e,(ix+004h)		;5edc
	ld d,(ix+006h)		;5edf
	call sub_945bh		;5ee2
	ld a,(lf018h)		;5ee5
	cp 080h			;5ee8
	jr c,l5eeeh		;5eea
	neg			;5eec
l5eeeh:
	cp 040h			;5eee
	jr c,l5ef4h		;5ef0
	sub 040h		;5ef2
l5ef4h:
	sub 008h		;5ef4
sub_5ef6h:
	cp 030h			;5ef6
	ret nc			;5ef8
l5ef9h:
	jp 06774h		;5ef9
	ld a,(ix+00ah)		;5efc
	or a			;5eff
	ld hl,l9f18h		;5f00
	jp p,l9f08h		;5f03
	inc hl			;5f06
	inc hl			;5f07
	bit 0,(ix+027h)		;5f08
	jr z,l5f12h		;5f0c
	ld bc,l0004h		;5f0e
	add hl,bc		;5f11
l5f12h:
	ld bc,l0301h+1		;5f12
	jp l6361h		;5f15
	sbc a,b			;5f18
	sbc a,h			;5f19
	ld (hl),h		;5f1a
	ld a,b			;5f1b
	adc a,h			;5f1c
	sub b			;5f1d
	add a,b			;5f1e
	add a,h			;5f1f
	bit 0,(ix+027h)		;5f20
	jr z,l5f36h		;5f24
	ld b,094h		;5f26
	ld a,(le406h)		;5f28
	cp (ix+006h)		;5f2b
	jr nc,l5f32h		;5f2e
	ld b,088h		;5f30
l5f32h:
	ld (ix+030h),b		;5f32
	ret			;5f35
l5f36h:
	ld b,0a0h		;5f36
	ld a,(le406h)		;5f38
	cp (ix+006h)		;5f3b
	jr nc,l5f42h		;5f3e
	ld b,07ch		;5f40
l5f42h:
	ld (ix+030h),b		;5f42
	ret			;5f45
	ld a,(le201h)		;5f46
	or a			;5f49
	ret nz			;5f4a
	ld l,(ix+004h)		;5f4b
	ld h,(ix+006h)		;5f4e
	call 05c92h		;5f51
	ld (lf000h),hl		;5f54
	ld (lf002h),hl		;5f57
	ld de,002c3h		;5f5a
	ld bc,l0020h		;5f5d
	call sub_9f6ch		;5f60
	ret c			;5f63
	ld hl,(lf000h)		;5f64
	ld a,l			;5f67
	and 01fh		;5f68
	ret z			;5f6a
	inc hl			;5f6b
	ld a,(hl)		;5f6c
	sub e			;5f6d
	cp d			;5f6e
	ret nc			;5f6f
	add hl,bc		;5f70
	ld a,(hl)		;5f71
	sub e			;5f72
	cp d			;5f73
	ret			;5f74
	ld a,(le201h)		;5f75
	or a			;5f78
	ret nz			;5f79
	ld a,(0e320h)		;5f7a
	or a			;5f7d
	ret nz			;5f7e
	ld a,(le304h+1)		;5f7f
	ld c,a			;5f82
	ld hl,(lf002h)		;5f83
	call sub_9f98h		;5f86
	ret nc			;5f89
	inc hl			;5f8a
	call sub_9f98h		;5f8b
	ret nc			;5f8e
	ld de,l001fh		;5f8f
	add hl,de		;5f92
	call sub_9f98h		;5f93
	ret nc			;5f96
	inc hl			;5f97
	ld a,(hl)		;5f98
	or a			;5f99
	ret z			;5f9a
	cp c			;5f9b
	ret			;5f9c
	ld a,r			;5f9d
	and 007h		;5f9f
	add a,a			;5fa1
	ld hl,l9fcdh		;5fa2
	call 04b67h		;5fa5
	ld a,(ix+004h)		;5fa8
	or a			;5fab
	call m,sub_5cadh	;5fac
	call 04efbh		;5faf
	inc hl			;5fb2
	ld e,(hl)		;5fb3
	inc hl			;5fb4
sub_5fb5h:
	ld d,(hl)		;5fb5
	ld a,r			;5fb6
	and 001h		;5fb8
	call nz,sub_5cadh	;5fba
	call sub_4f02h		;5fbd
	ld de,l0088h		;5fc0
	ld a,(ix+004h)		;5fc3
	or a			;5fc6
	call p,sub_5cadh	;5fc7
	jp l62a8h		;5fca
	nop			;5fcd
	dec bc			;5fce
	add a,b			;5fcf
	ld bc,l0a80h		;5fd0
	nop			;5fd3
	ld (bc),a		;5fd4
	add a,b			;5fd5
	dec bc			;5fd6
	nop			;5fd7
	inc b			;5fd8
sub_5fd9h:
	nop			;5fd9
	ld a,(bc)		;5fda
	sub b			;5fdb
	ld bc,l0a80h		;5fdc
sub_5fdfh:
	or b			;5fdf
	ld bc,00b40h		;5fe0
	nop			;5fe3
	inc bc			;5fe4
	ld (hl),b		;5fe5
	ld a,(bc)		;5fe6
	add a,b			;5fe7
	ld (bc),a		;5fe8
	ld h,b			;5fe9
	ld a,(bc)		;5fea
	ld b,b			;5feb
	ld (bc),a		;5fec
	call 062c2h		;5fed
	call sub_a002h		;5ff0
	ld a,(le1c3h)		;5ff3
	and 003h		;5ff6
	ret nz			;5ff8
l5ff9h:
	ld a,(ix+030h)		;5ff9
	xor 004h		;5ffc
	ld (ix+030h),a		;5ffe
l6001h:
	ret			;6001
	ld a,(le1c3h)		;6002
	rra			;6005
	rra			;6006
	and 003h		;6007
	ld hl,0a013h		;6009
	call 05ca6h		;600c
	ld (ix+031h),a		;600f
	ret			;6012
	ld b,008h		;6013
	add hl,bc		;6015
	ex af,af'		;6016
	ld hl,01e01h		;6017
	ld (le388h),hl		;601a
	xor a			;601d
	ld (le388h+2),a		;601e
	ld hl,le3cah		;6021
	ld de,le3cah+1		;6024
	ld bc,l0005h		;6027
	ld (hl),a		;602a
	ldir			;602b
	call 04c24h		;602d
l6030h:
	ld (le38bh),a		;6030
	ld a,0d2h		;6033
	ld (le39fh),a		;6035
	ld a,01eh		;6038
l603ah:
	ld (le388h+1),a		;603a
	ld hl,00258h		;603d
l6040h:
	ld a,(0e20ah)		;6040
	or a			;6043
	jr z,l6049h		;6044
	ld hl,l0384h		;6046
l6049h:
	ld (le349h),hl		;6049
	ret			;604c
	ld a,(le388h)		;604d
	or a			;6050
	ret z			;6051
l6052h:
	ld b,a			;6052
	ld hl,(le349h)		;6053
	dec hl			;6056
	ld (le349h),hl		;6057
	ld a,l			;605a
	or h			;605b
	jr z,l6066h		;605c
	dec b			;605e
	jr z,l606fh		;605f
	dec b			;6061
	jp z,la107h+1		;6062
	ret			;6065
l6066h:
	xor a			;6066
	ld (le388h),a		;6067
	inc a			;606a
	ld (le348h),a		;606b
	ret			;606e
l606fh:
	ld hl,le39fh		;606f
	dec (hl)		;6072
	jr nz,l609dh		;6073
	ld (hl),01eh		;6075
	ld a,002h		;6077
	ld (le388h),a		;6079
	ld ix,le500h		;607c
	ld de,l0010h		;6080
	ld bc,00805h		;6083
	ld hl,l01ffh		;6086
l6089h:
	ld a,(ix+000h)		;6089
	or a			;608c
	jr z,l6098h		;608d
	ld (ix+001h),c		;608f
	ld (ix+00dh),l		;6092
	ld (ix+002h),h		;6095
l6098h:
	add ix,de		;6098
	djnz l6089h		;609a
	ret			;609c
l609dh:
	ld hl,le388h+1		;609d
	dec (hl)		;60a0
	ret nz			;60a1
	ld a,r			;60a2
	and 01fh		;60a4
	add a,020h		;60a6
	ld (hl),a		;60a8
	ld a,(0e20ah)		;60a9
	ld b,002h		;60ac
	or a			;60ae
	jr z,l60b2h		;60af
l60b1h:
	inc b			;60b1
l60b2h:
	ld a,(le388h+2)		;60b2
	cp b			;60b5
	jr c,l60beh		;60b6
l60b8h:
	ld a,001h		;60b8
	ld (le388h+1),a		;60ba
	ret			;60bd
l60beh:
	call 04c24h		;60be
	and 003h		;60c1
	cp 003h			;60c3
	jr nz,l60c8h		;60c5
	xor a			;60c7
l60c8h:
	ld b,a			;60c8
	ld hl,le3cah		;60c9
	ld a,(le38bh)		;60cc
	bit 0,a			;60cf
l60d1h:
	jr z,l60d5h		;60d1
	ld l,0cdh		;60d3
l60d5h:
	ld a,b			;60d5
	add a,l			;60d6
	ld l,a			;60d7
	ld a,(hl)		;60d8
	or a			;60d9
	jr nz,l60b8h		;60da
	push hl			;60dc
	ld a,(le38bh)		;60dd
	bit 0,a			;60e0
	ld a,b			;60e2
	jr z,l60e7h		;60e3
	add a,003h		;60e5
l60e7h:
	ld b,a			;60e7
	ld hl,la0fch		;60e8
	call 04b67h		;60eb
	ld a,007h		;60ee
	call sub_87dch		;60f0
	pop hl			;60f3
	ret nc			;60f4
	ld (hl),001h		;60f5
	ld hl,le388h+2		;60f7
	inc (hl)		;60fa
	ret			;60fb
	ex af,af'		;60fc
sub_60fdh:
	and b			;60fd
	ex af,af'		;60fe
	ld h,b			;60ff
	ex af,af'		;6100
	jr nz,$+122		;6101
	and b			;6103
	ld a,b			;6104
	ld h,b			;6105
l6106h:
	ld a,b			;6106
	jr nz,$+35		;6107
	sbc a,a			;6109
	ex (sp),hl		;610a
	dec (hl)		;610b
	ret nz			;610c
	ld (hl),0d2h		;610d
	ld hl,le38bh		;610f
	inc (hl)		;6112
	ld a,001h		;6113
	ld (le388h),a		;6115
	ret			;6118
	ld a,(ix+006h)		;6119
	or a			;611c
	jp z,0a210h		;611d
	ld (ix+009h),008h	;6120
	ld (ix+00ah),006h	;6124
	ld (ix+00dh),0ffh	;6128
	ld (ix+008h),020h	;612c
	ld (ix+00eh),000h	;6130
	call sub_a229h		;6134
l6137h:
	ld a,01fh		;6137
	jr c,l613dh		;6139
	ld a,027h		;613b
l613dh:
	ld (ix+007h),a		;613d
	ret			;6140
	ld a,(ix+006h)		;6141
	or a			;6144
	jr nz,l614ch		;6145
	ld (ix+000h),000h	;6147
	ret			;614b
l614ch:
	ld hl,0a22fh		;614c
	push hl			;614f
	ld a,(ix+001h)		;6150
	call sub_4084h		;6153
	ld h,h			;6156
	and c			;6157
	ld (hl),b		;6158
	and c			;6159
	ld a,(hl)		;615a
sub_615bh:
	and c			;615b
	xor d			;615c
	and c			;615d
	jp z,0f9a1h		;615e
sub_6161h:
	and c			;6161
	djnz l6106h		;6162
	ld a,(ix+006h)		;6164
	cp 0c1h			;6167
	ret nc			;6169
	ld (ix+002h),001h	;616a
	jr l617ah		;616e
	dec (ix+002h)		;6170
	jp nz,0a255h		;6173
	ld (ix+002h),004h	;6176
l617ah:
	inc (ix+001h)		;617a
	ret			;617d
	dec (ix+002h)		;617e
	ret nz			;6181
	ld (ix+002h),004h	;6182
	call sub_a229h		;6186
	ld b,023h		;6189
	jr c,l618fh		;618b
	ld b,02bh		;618d
l618fh:
	inc (ix+007h)		;618f
	ld a,(ix+007h)		;6192
	cp b			;6195
	ret c			;6196
	ld a,r			;6197
	and 01fh		;6199
	add a,030h		;619b
	ld (ix+002h),a		;619d
	ld a,r			;61a0
	and 00fh		;61a2
	inc a			;61a4
	ld (ix+00ch),a		;61a5
	jr l617ah		;61a8
	dec (ix+002h)		;61aa
	jr z,l61b5h		;61ad
	call 0a294h		;61af
l61b2h:
	jp 0a2b1h		;61b2
l61b5h:
	ld a,(le388h)		;61b5
sub_61b8h:
	or a			;61b8
	jr nz,sub_61c1h		;61b9
	ld (ix+002h),004h	;61bb
	jr l617ah		;61bf
sub_61c1h:
	ld (ix+002h),002h	;61c1
	ld (ix+001h),005h	;61c5
	ret			;61c9
	dec (ix+002h)		;61ca
	ret nz			;61cd
	ld (ix+002h),004h	;61ce
	call sub_a229h		;61d2
	ld b,020h		;61d5
	jr c,l61dbh		;61d7
	ld b,028h		;61d9
l61dbh:
	dec (ix+007h)		;61db
	ld a,(ix+007h)		;61de
	cp b			;61e1
	ret nc			;61e2
	ld (ix+001h),001h	;61e3
	ld (ix+00eh),000h	;61e7
	ld a,(0e20ah)		;61eb
	or a			;61ee
	ld a,032h		;61ef
	jr z,l61f5h		;61f1
	ld a,01eh		;61f3
l61f5h:
	ld (ix+002h),a		;61f5
	ret			;61f8
	dec (ix+002h)		;61f9
	ret nz			;61fc
	ld (ix+002h),002h	;61fd
	ld (ix+00eh),001h	;6201
	call sub_a27ah		;6205
	bit 0,(ix+00eh)		;6208
	ret nz			;620c
	jp la179h+1		;620d
sub_6210h:
	ld a,(le388h)		;6210
	or a			;6213
sub_6214h:
	jr z,l6224h		;6214
	ld a,(ix+00bh)		;6216
	ld hl,le3cah		;6219
	add a,l			;621c
	ld l,a			;621d
sub_621eh:
	ld (hl),000h		;621e
	ld hl,le388h+2		;6220
	dec (hl)		;6223
l6224h:
	ld (ix+000h),000h	;6224
	ret			;6228
	ld a,(ix+004h)		;6229
	cp 040h			;622c
	ret			;622e
	ld a,(ix+006h)		;622f
	cp 0c1h			;6232
	ld a,0ffh		;6234
	jr nc,l6241h		;6236
	ld a,(ix+007h)		;6238
	ld hl,la226h		;623b
	call 05ca6h		;623e
l6241h:
	ld (ix+00dh),a		;6241
	ret			;6244
	ld a,(bc)		;6245
	dec bc			;6246
	inc c			;6247
	dec c			;6248
	add hl,bc		;6249
	add hl,bc		;624a
	add hl,bc		;624b
	add hl,bc		;624c
	ld c,00fh		;624d
	djnz $+19		;624f
sub_6251h:
	add hl,bc		;6251
	add hl,bc		;6252
	add hl,bc		;6253
	add hl,bc		;6254
	ld a,(le1c3h)		;6255
	and 007h		;6258
	ret nz			;625a
	bit 0,(ix+00eh)		;625b
	jr nz,l627ah		;625f
	call sub_a229h		;6261
	ld b,021h		;6264
	jr c,l626ah		;6266
	ld b,029h		;6268
l626ah:
	inc (ix+007h)		;626a
	ld a,(ix+007h)		;626d
	cp b			;6270
sub_6271h:
	ret c			;6271
	ld (ix+007h),b		;6272
	ld (ix+00eh),001h	;6275
	ret			;6279
l627ah:
	call sub_a229h		;627a
	ld b,020h		;627d
	jr c,l6283h		;627f
l6281h:
	ld b,028h		;6281
l6283h:
	dec (ix+007h)		;6283
	ld a,(ix+007h)		;6286
	cp b			;6289
	ret nc			;628a
	dec b			;628b
	ld (ix+007h),b		;628c
	ld (ix+00eh),000h	;628f
	ret			;6293
	ld a,(le1c3h)		;6294
	and 003h		;6297
	ret nz			;6299
	call sub_a229h		;629a
	ld bc,02723h		;629d
	jr c,l62a5h		;62a0
	ld bc,02f2bh		;62a2
l62a5h:
	inc (ix+007h)		;62a5
l62a8h:
	ld a,(ix+007h)		;62a8
	cp b			;62ab
	ret c			;62ac
	ld (ix+007h),c		;62ad
	ret			;62b0
	ld a,(le354h)		;62b1
	or a			;62b4
	ret nz			;62b5
sub_62b6h:
	dec (ix+00ch)		;62b6
	ret nz			;62b9
	ld a,r			;62ba
	and 007h		;62bc
	inc a			;62be
	ld c,a			;62bf
	ld a,(ix+008h)		;62c0
	cp 018h			;62c3
	jr nc,l62cfh		;62c5
	sla c			;62c7
	cp 008h			;62c9
	jr nc,l62cfh		;62cb
	sla c			;62cd
l62cfh:
	ld (ix+00ch),c		;62cf
	call sub_a229h		;62d2
l62d5h:
	ld e,014h		;62d5
	jr c,l62dbh		;62d7
	ld e,00ch		;62d9
l62dbh:
	ld a,(ix+004h)		;62db
	add a,e			;62de
	ld e,a			;62df
	ld a,(ix+006h)		;62e0
	add a,018h		;62e3
	ld d,a			;62e5
	ld bc,l0000h		;62e6
	ld a,025h		;62e9
	jp 04d16h		;62eb
	ld de,l0000h		;62ee
	call 04efbh		;62f1
	ld de,0fe80h		;62f4
	jp sub_4f02h		;62f7
	call 06770h		;62fa
	ld a,(le404h)		;62fd
l6300h:
	sub (ix+004h)		;6300
	push af			;6303
	add a,003h		;6304
	cp 007h			;6306
	jr c,l6321h		;6308
	pop af			;630a
sub_630bh:
	jr c,l6317h		;630b
	ld a,070h		;630d
	ld de,0fe80h		;630f
	ld bc,00120h		;6312
	jr l6335h		;6315
l6317h:
	ld a,06ch		;6317
	ld de,0fe80h		;6319
	ld bc,lfee0h		;631c
	jr l6335h		;631f
l6321h:
	pop af			;6321
	ld a,(le406h)		;6322
	sub (ix+006h)		;6325
	ld de,lfc80h		;6328
	jr c,l6330h		;632b
	ld de,0fe80h		;632d
l6330h:
	ld bc,l0000h		;6330
	ld a,068h		;6333
l6335h:
	ld (ix+030h),a		;6335
	call sub_4f02h		;6338
	ld d,b			;633b
	ld e,c			;633c
	jp 04efbh		;633d
	ld a,(ix+019h)		;6340
	and a			;6343
	jr z,l6351h		;6344
	cp 002h			;6346
	ld c,080h		;6348
	jr z,l634eh		;634a
	ld c,000h		;634c
l634eh:
	ld (ix+006h),c		;634e
l6351h:
	call sub_a35dh		;6351
	ld (ix+026h),000h	;6354
	ld d,(ix+006h)		;6358
	jr sub_6385h		;635b
	xor a			;635d
	ld (ix+02ah),a		;635e
l6361h:
	ld (ix+02bh),a		;6361
	ret			;6364
	ld a,(ix+001h)		;6365
	and a			;6368
	jr z,l6374h		;6369
	dec (ix+025h)		;636b
	ret nz			;636e
	dec (ix+001h)		;636f
	jr l637dh		;6372
l6374h:
	dec (ix+025h)		;6374
	ret nz			;6377
	ld a,(ix+029h)		;6378
sub_637bh:
	and a			;637b
	ret nz			;637c
l637dh:
	call sub_a40eh		;637d
	call sub_a385h		;6380
	jr l63b7h		;6383
sub_6385h:
	ld a,(ix+001h)		;6385
	cp 002h			;6388
	ret z			;638a
	ld e,(ix+004h)		;638b
	ld a,040h		;638e
	call 04ebah		;6390
	xor a			;6393
	bit 7,(ix+008h)		;6394
	jr nz,l639bh		;6398
	inc a			;639a
l639bh:
	ld c,(ix+027h)		;639b
	ld (ix+02ah),c		;639e
	ld (ix+027h),a		;63a1
	xor a			;63a4
	bit 7,(ix+00ah)		;63a5
	jr nz,l63ach		;63a9
	inc a			;63ab
l63ach:
	ld c,(ix+028h)		;63ac
	ld (ix+02bh),c		;63af
	ld (ix+028h),a		;63b2
	jr l6402h		;63b5
l63b7h:
	ld a,(ix+02ah)		;63b7
	ld c,(ix+027h)		;63ba
	xor c			;63bd
	jr nz,l63e5h		;63be
	ld a,(ix+02bh)		;63c0
	ld c,(ix+028h)		;63c3
	xor c			;63c6
	ret z			;63c7
	inc (ix+001h)		;63c8
	call l4f17h		;63cb
	ld de,l017fh+1		;63ce
	ld b,001h		;63d1
	ld a,(le404h)		;63d3
	cp (ix+004h)		;63d6
	jr nc,l63dfh		;63d9
	dec b			;63db
	call sub_5cadh		;63dc
l63dfh:
	ld (ix+027h),b		;63df
	jp 04efbh		;63e2
l63e5h:
	inc (ix+001h)		;63e5
	call l4f17h		;63e8
	ld de,l017fh+1		;63eb
	ld b,001h		;63ee
	ld a,(le406h)		;63f0
	cp (ix+006h)		;63f3
	jr nc,l63fch		;63f6
	dec b			;63f8
	call sub_5cadh		;63f9
l63fch:
	ld (ix+028h),b		;63fc
	jp sub_4f02h		;63ff
l6402h:
	call sub_637bh		;6402
	and 003h		;6405
	ld c,008h		;6407
	add a,c			;6409
	ld (ix+025h),a		;640a
	ret			;640d
	ld a,(ix+026h)		;640e
	ld hl,la43fh		;6411
	call sub_407ah		;6414
	ld l,(hl)		;6417
	ld a,(ix+026h)		;6418
	inc a			;641b
	and 007h		;641c
	ld (ix+026h),a		;641e
	ld a,(ix+001h)		;6421
	and a			;6424
	jr z,l6439h		;6425
	ld a,(le404h)		;6427
	sub (ix+004h)		;642a
	jr nc,l6439h		;642d
	ld a,(ix+006h)		;642f
	sub l			;6432
l6433h:
	jr nc,l6437h		;6433
	neg			;6435
l6437h:
	ld d,a			;6437
	ret			;6438
l6439h:
	ld a,(ix+006h)		;6439
	add a,l			;643c
	jr l6433h		;643d
	djnz l644dh		;643f
	ex af,af'		;6441
	ld b,004h		;6442
	ld (bc),a		;6444
	ld bc,led00h		;6445
	ld e,a			;6448
	and 007h		;6449
	jr nz,l644fh		;644b
l644dh:
	ld a,008h		;644d
l644fh:
	ld (ix+025h),a		;644f
	ld (ix+010h),017h	;6452
	ld a,r			;6456
	and 007h		;6458
	ld hl,0a48dh		;645a
	call sub_407ah		;645d
	ld a,(le228h)		;6460
	add a,a			;6463
	add a,(hl)		;6464
	ld b,a			;6465
	ld h,(ix+004h)		;6466
	ld l,000h		;6469
	ld a,r			;646b
	and 003h		;646d
	jr nz,l6481h		;646f
	ld a,(le406h)		;6471
	ld l,a			;6474
	ld a,(le404h)		;6475
	ld c,a			;6478
	ld a,r			;6479
	and 03fh		;647b
	sub 020h		;647d
	add a,c			;647f
sub_6480h:
	ld h,a			;6480
l6481h:
	ld a,b			;6481
	jp 04ed7h		;6482
	add a,b			;6485
sub_6486h:
	add a,b			;6486
	nop			;6487
	ld b,b			;6488
sub_6489h:
	ret nz			;6489
	jr nc,$-46		;648a
	ld h,b			;648c
	and b			;648d
	ret nz			;648e
	or b			;648f
	sub b			;6490
	add a,b			;6491
l6492h:
	ld h,b			;6492
	ret nc			;6493
	sbc a,b			;6494
	ld a,(ix+031h)		;6495
	xor 001h		;6498
	ld (ix+031h),a		;649a
	call sub_a4c9h		;649d
	ld h,(ix+006h)		;64a0
	ld l,(ix+004h)		;64a3
	call 05c92h		;64a6
	call 0a4b0h		;64a9
	jp c,sub_6514h		;64ac
	ret			;64af
	ld a,(le304h+1)		;64b0
	ld c,a			;64b3
	ld a,(hl)		;64b4
	and a			;64b5
	jr z,l64bah		;64b6
	cp c			;64b8
	ret c			;64b9
l64bah:
	ld a,(ix+006h)		;64ba
	cp 0f8h			;64bd
	ret nc			;64bf
	ld de,l0021h		;64c0
	add hl,de		;64c3
	ld a,(hl)		;64c4
	and a			;64c5
	ret z			;64c6
	cp c			;64c7
	ret			;64c8
	dec (ix+025h)		;64c9
	ret nz			;64cc
	ld (ix+025h),008h	;64cd
	ld a,(ix+030h)		;64d1
	add a,004h		;64d4
	cp 0e0h			;64d6
	jr nz,l64dch		;64d8
	ld a,0d4h		;64da
l64dch:
	ld (ix+030h),a		;64dc
	ret			;64df
	ld (ix+013h),002h	;64e0
	ld (ix+014h),002h	;64e4
	ld (ix+002h),004h	;64e8
	ld (ix+025h),00ah	;64ec
	ld (ix+015h),008h	;64f0
	ld b,039h		;64f4
	ld a,(ix+019h)		;64f6
	and a			;64f9
	jr nz,l6501h		;64fa
	inc b			;64fc
	ld (ix+006h),008h	;64fd
l6501h:
	ld (ix+032h),b		;6501
	ld (ix+00dh),003h	;6504
	jp l4f17h		;6508
	ld a,(ix+001h)		;650b
	and a			;650e
	jr nz,l6543h		;650f
	ld a,(ix+002h)		;6511
sub_6514h:
	cp 002h			;6514
	jr nz,l6520h		;6516
	ld a,(ix+00bh)		;6518
	xor 080h		;651b
	ld (ix+00bh),a		;651d
l6520h:
	dec (ix+002h)		;6520
	ret nz			;6523
	ld (ix+002h),004h	;6524
	dec (ix+025h)		;6528
	ret nz			;652b
	inc (ix+001h)		;652c
	set 7,(ix+00bh)		;652f
	call l4f17h		;6533
	ld de,lfd00h		;6536
	ld a,(ix+019h)		;6539
	and a			;653c
	call z,sub_5cadh	;653d
	jp sub_4f02h		;6540
l6543h:
	dec (ix+015h)		;6543
	ret nz			;6546
	jp lbb4ah		;6547
	ld a,(le35ch)		;654a
	ld (ix+027h),a		;654d
	and a			;6550
	jr nz,l6572h		;6551
	push ix			;6553
	pop de			;6555
	ld hl,(le35dh)		;6556
	inc l			;6559
	inc l			;655a
	inc l			;655b
	ld (hl),e		;655c
sub_655dh:
	inc l			;655d
	inc l			;655e
	ld (hl),d		;655f
sub_6560h:
	call 04f21h		;6560
	ld d,004h		;6563
sub_6565h:
	ld a,(le35ah)		;6565
	rra			;6568
	call nc,sub_5cadh	;6569
sub_656ch:
	call 04efbh		;656c
	or 0ffh			;656f
	ret			;6571
l6572h:
	ld hl,(le35dh)		;6572
	inc l			;6575
	inc l			;6576
	inc l			;6577
	ld e,(hl)		;6578
	inc l			;6579
	inc l			;657a
	ld d,(hl)		;657b
sub_657ch:
	ex de,hl		;657c
l657dh:
	ld a,005h		;657d
	add a,l			;657f
	ld l,a			;6580
	ld a,(hl)		;6581
	ld (ix+005h),a		;6582
	inc l			;6585
	ld a,(hl)		;6586
	ld (ix+006h),a		;6587
	inc l			;658a
	ld (ix+025h),l		;658b
	ld (ix+026h),h		;658e
	jr sub_6560h		;6591
	call 0a612h		;6593
	ld a,(ix+001h)		;6596
	and a			;6599
	jr nz,l65e4h		;659a
	ld a,(ix+027h)		;659c
	and a			;659f
	jr nz,sub_65eeh		;65a0
	ld a,(le404h)		;65a2
	bit 7,(ix+008h)		;65a5
	jr nz,l65b1h		;65a9
	cp (ix+004h)		;65ab
	ret nc			;65ae
	jr l65b5h		;65af
l65b1h:
	cp (ix+004h)		;65b1
	ret c			;65b4
l65b5h:
	ld de,lfd00h		;65b5
	ld a,(le406h)		;65b8
	cp (ix+006h)		;65bb
	call nc,sub_5cadh	;65be
	call sub_4f02h		;65c1
l65c4h:
	inc (ix+001h)		;65c4
	call sub_a621h		;65c7
	ld bc,lff80h		;65ca
	ld a,(ix+027h)		;65cd
	and a			;65d0
	jr z,l65d9h		;65d1
	call sub_5cadh		;65d3
	ld bc,l0080h		;65d6
l65d9h:
	call 04efbh		;65d9
	call sub_62b6h		;65dc
	ld d,b			;65df
	ld e,c			;65e0
	jp l62a8h		;65e1
l65e4h:
	call 062c2h		;65e4
	call 062e8h		;65e7
	jp z,0629fh		;65ea
	ret			;65ed
sub_65eeh:
	ld l,(ix+025h)		;65ee
l65f1h:
	ld h,(ix+026h)		;65f1
	ld a,l			;65f4
	ld c,l			;65f5
	sub 007h		;65f6
	ld l,a			;65f8
	ld a,(hl)		;65f9
	and a			;65fa
	jr z,l660dh		;65fb
	ld l,c			;65fd
	inc hl			;65fe
	inc hl			;65ff
	ld a,(hl)		;6600
	inc hl			;6601
	ld c,(hl)		;6602
	or c			;6603
	ret z			;6604
	ld d,(hl)		;6605
	dec hl			;6606
	ld e,(hl)		;6607
	call sub_4f02h		;6608
	jr l65c4h		;660b
l660dh:
	ld (ix+027h),000h	;660d
	ret			;6611
l6612h:
	ld a,(le1c3h)		;6612
	and 007h		;6615
	ret nz			;6617
	ld a,(ix+030h)		;6618
	xor 004h		;661b
	ld (ix+030h),a		;661d
	ret			;6620
	ld hl,la62ch		;6621
	ld a,(le228h)		;6624
	srl a			;6627
	jp 04b67h		;6629
	add a,b			;662c
	ld (bc),a		;662d
	add a,b			;662e
	ld (bc),a		;662f
	add a,b			;6630
	ld (bc),a		;6631
	nop			;6632
	inc bc			;6633
	nop			;6634
	inc bc			;6635
	add a,b			;6636
	inc bc			;6637
	nop			;6638
	inc b			;6639
	nop			;663a
	inc b			;663b
	call 04e93h		;663c
	ld a,00ch		;663f
	ld (ix+006h),a		;6641
	ld b,000h		;6644
	ld a,(ix+004h)		;6646
	cp 060h			;6649
	jr c,l664eh		;664b
	inc b			;664d
l664eh:
	ld (ix+025h),b		;664e
	ld (ix+013h),002h	;6651
	ld (ix+014h),002h	;6655
	call l4f17h		;6659
	ld de,00400h		;665c
	jp sub_4f02h		;665f
	ld a,(0e20ah)		;6662
	and a			;6665
	call nz,sub_a711h	;6666
	call sub_a704h		;6669
	ld a,(ix+001h)		;666c
	dec a			;666f
	jr z,l669fh		;6670
	dec a			;6672
	jr z,l66c2h		;6673
	dec a			;6675
	jr z,l66e7h		;6676
	dec a			;6678
	ret z			;6679
	ld bc,lb0b2h		;667a
	ld a,(ix+025h)		;667d
	and a			;6680
	jr z,l6684h		;6681
	ld b,c			;6683
l6684h:
	ld a,(ix+006h)		;6684
	cp b			;6687
	ret c			;6688
	inc (ix+001h)		;6689
	ld de,00400h		;668c
	ld a,(ix+025h)		;668f
	and a			;6692
	call nz,sub_5cadh	;6693
	call 04efbh		;6696
	ld de,lfc00h		;6699
	jp sub_4f02h		;669c
l669fh:
	ld bc,l8c90h		;669f
	ld a,(ix+025h)		;66a2
	and a			;66a5
	jr z,l66a9h		;66a6
	ld b,c			;66a8
l66a9h:
	ld a,(ix+006h)		;66a9
	cp b			;66ac
	ret nc			;66ad
	ld a,(ix+004h)		;66ae
	and 0f8h		;66b1
	ld (ix+004h),a		;66b3
	inc (ix+001h)		;66b6
	call l4f17h		;66b9
	ld de,lfc00h		;66bc
	jp sub_4f02h		;66bf
l66c2h:
	ld bc,05458h		;66c2
	ld a,(ix+025h)		;66c5
	and a			;66c8
	jr z,l66cch		;66c9
	ld b,c			;66cb
l66cch:
	ld a,(ix+006h)		;66cc
	cp b			;66cf
l66d0h:
	ret nc			;66d0
	inc (ix+001h)		;66d1
	ld de,00400h		;66d4
	ld a,(ix+025h)		;66d7
	and a			;66da
	call nz,sub_5cadh	;66db
	call 04efbh		;66de
	ld de,00400h		;66e1
	jp sub_4f02h		;66e4
l66e7h:
	ld bc,07478h		;66e7
	ld a,(ix+025h)		;66ea
	and a			;66ed
	jr z,l66f1h		;66ee
	ld b,c			;66f0
l66f1h:
	ld a,(ix+006h)		;66f1
	cp b			;66f4
	ret c			;66f5
	ld a,(ix+004h)		;66f6
	and 0f8h		;66f9
	ld (ix+004h),a		;66fb
	inc (ix+001h)		;66fe
	jp 0a659h		;6701
	ld bc,l0304h		;6704
	ld hl,la70dh		;6707
	jp l6361h		;670a
	ld hl,l2322h		;670d
	inc h			;6710
	dec (ix+015h)		;6711
	ret nz			;6714
	call 04e93h		;6715
l6718h:
	jp lbb4ah		;6718
	ld (ix+024h),001h	;671b
	call 04c24h		;671f
	and 006h		;6722
	ld b,a			;6724
	add a,a			;6725
	add a,b			;6726
	ld hl,la741h		;6727
	call sub_407ah		;672a
	ld e,(hl)		;672d
	inc hl			;672e
	ld d,(hl)		;672f
	inc hl			;6730
	call 04efbh		;6731
	ld e,(hl)		;6734
	inc hl			;6735
	ld d,(hl)		;6736
	inc hl			;6737
	call sub_4f02h		;6738
	ld e,(hl)		;673b
	inc hl			;673c
	ld d,(hl)		;673d
	jp l62a8h		;673e
	nop			;6741
	jp m,0fe80h		;6742
	add a,b			;6745
	nop			;6746
	nop			;6747
	ret m			;6748
	nop			;6749
	cp 080h			;674a
	nop			;674c
	nop			;674d
	jp m,l02feh+2		;674e
	add a,b			;6751
	nop			;6752
	nop			;6753
	ret m			;6754
	nop			;6755
	rst 38h			;6756
	add a,b			;6757
	nop			;6758
l6759h:
	ld bc,(le3c7h)		;6759
	ld de,l0000h		;675d
	call sub_a93fh		;6760
	jr l678ch		;6763
	ld a,(le3d0h)		;6765
	or a			;6768
	ret nz			;6769
	ld a,(le400h)		;676a
	or a			;676d
	jp m,la9ach		;676e
	ret z			;6771
	ld a,(le22bh)		;6772
	or a			;6775
	jr nz,l678ch		;6776
	ld a,(le3beh+1)		;6778
	or a			;677b
	jr nz,l6759h		;677c
	ld a,(le3beh+2)		;677e
	or a			;6781
	ret nz			;6782
	call sub_a902h		;6783
	call sub_a93fh		;6786
	call sub_a8c5h		;6789
l678ch:
	call sub_a82eh		;678c
	ld a,(le400h)		;678f
	cp 003h			;6792
	jp z,0a7beh		;6794
	ld bc,le1c9h		;6797
	ld a,(lf0f5h)		;679a
	bit 2,a			;679d
	jr nz,l67f8h		;679f
	ld a,(bc)		;67a1
	and 003h		;67a2
	cp 003h			;67a4
	jp nz,la7aah		;67a6
	xor a			;67a9
	add a,a			;67aa
	add a,a			;67ab
sub_67ach:
	ld c,a			;67ac
	ld a,(le400h)		;67ad
	dec a			;67b0
	jr z,l67beh		;67b1
	ld a,(le1c3h)		;67b3
	and 004h		;67b6
	jr z,l67beh		;67b8
	ld a,c			;67ba
	add a,00ch		;67bb
	ld c,a			;67bd
l67beh:
	ld b,000h		;67be
	add hl,bc		;67c0
	ld de,le407h		;67c1
	ldi			;67c4
	ldi			;67c6
	ldi			;67c8
	ldi			;67ca
	ld a,(le400h)		;67cc
	cp 002h			;67cf
	jr nz,l67e7h		;67d1
l67d3h:
	ld a,(le401h)		;67d3
	dec a			;67d6
	jr nz,l67e7h		;67d7
	ld a,(le1c3h)		;67d9
	bit 1,a			;67dc
	ld a,006h		;67de
	jr z,l67e4h		;67e0
	ld a,009h		;67e2
l67e4h:
	ld (0e40ah),a		;67e4
l67e7h:
	ld a,(le446h)		;67e7
	or a			;67ea
	ret z			;67eb
sub_67ech:
	ld a,003h		;67ec
	ld (le408h),a		;67ee
	ret			;67f1
	ld hl,la8adh		;67f2
	jp la7c1h		;67f5
l67f8h:
	ld de,le407h		;67f8
	ldi			;67fb
	ldi			;67fd
	ldi			;67ff
	ldi			;6801
	ld a,(le446h)		;6803
	or a			;6806
	jr nz,sub_67ech		;6807
	ld a,(le400h)		;6809
	ld b,00ah		;680c
	cp 003h			;680e
	jr z,l6828h		;6810
	cp 002h			;6812
	ret nz			;6814
	ld a,(le401h)		;6815
	dec a			;6818
	ld b,002h		;6819
	jr nz,l6828h		;681b
	ld a,(le1c3h)		;681d
	bit 1,a			;6820
	ld b,006h		;6822
	jr z,l6828h		;6824
sub_6826h:
	ld b,009h		;6826
l6828h:
	ld a,b			;6828
	ld (0e40ah),a		;6829
	jr l67e7h		;682c
	ld a,(le400h)		;682e
	cp 003h			;6831
	jr z,l6846h		;6833
	ld b,a			;6835
	ld a,(lf0f5h)		;6836
	bit 2,a			;6839
	jr nz,l6862h		;683b
	dec b			;683d
	ld hl,la889h		;683e
	ret z			;6841
	ld hl,0a895h		;6842
	ret			;6845
l6846h:
	ld hl,le440h		;6846
	dec (hl)		;6849
	jr nz,l685eh		;684a
	ld (hl),003h		;684c
	inc l			;684e
	inc (hl)		;684f
	ld a,(hl)		;6850
	cp 006h			;6851
	jr c,l6857h		;6853
	xor a			;6855
	ld (hl),a		;6856
l6857h:
	ld hl,la8adh		;6857
	add a,a			;685a
	add a,a			;685b
	ld c,a			;685c
	ret			;685d
l685eh:
	inc l			;685e
	ld a,(hl)		;685f
	jr l6857h		;6860
l6862h:
	ld a,(le1c2h)		;6862
	add a,a			;6865
	ld hl,la879h		;6866
	jr nc,l686eh		;6869
	ld hl,la881h		;686b
l686eh:
	ld a,(le1c3h)		;686e
	bit 3,a			;6871
	ret z			;6873
	ld de,l0004h		;6874
	add hl,de		;6877
sub_6878h:
	ret			;6878
	nop			;6879
	rrca			;687a
	inc b			;687b
	inc b			;687c
	ex af,af'		;687d
	rrca			;687e
	inc c			;687f
	inc b			;6880
	nop			;6881
	rrca			;6882
	inc b			;6883
	dec c			;6884
	ex af,af'		;6885
	rrca			;6886
	inc c			;6887
sub_6888h:
	dec c			;6888
sub_6889h:
	nop			;6889
	rrca			;688a
	inc b			;688b
	ex af,af'		;688c
	djnz l689eh		;688d
	inc d			;688f
	dec b			;6890
	ex af,af'		;6891
	rrca			;6892
	inc c			;6893
	ex af,af'		;6894
	nop			;6895
	rrca			;6896
	inc l			;6897
	rrca			;6898
	nop			;6899
	rrca			;689a
	inc l			;689b
	rrca			;689c
	ex af,af'		;689d
l689eh:
	rrca			;689e
	inc (hl)		;689f
	rrca			;68a0
	nop			;68a1
	rrca			;68a2
	jr nc,$+9		;68a3
	nop			;68a5
	rrca			;68a6
	jr nc,l68b0h		;68a7
	ex af,af'		;68a9
sub_68aah:
	rrca			;68aa
	jr c,l68b4h		;68ab
	nop			;68ad
	add hl,bc		;68ae
	inc b			;68af
l68b0h:
	rrca			;68b0
	ex af,af'		;68b1
	add hl,bc		;68b2
	inc c			;68b3
l68b4h:
	rrca			;68b4
	djnz l68c0h		;68b5
	inc d			;68b7
	rrca			;68b8
sub_68b9h:
	inc l			;68b9
	rrca			;68ba
	jr nc,l68c2h		;68bb
	inc c			;68bd
	dec b			;68be
	nop			;68bf
l68c0h:
	nop			;68c0
	inc (hl)		;68c1
l68c2h:
	rrca			;68c2
	jr c,$+7		;68c3
	ld hl,le406h		;68c5
	ld a,(hl)		;68c8
	cp 008h			;68c9
	jr nc,l68cfh		;68cb
	ld a,008h		;68cd
l68cfh:
	cp 0d9h			;68cf
	jr c,l68d5h		;68d1
	ld a,0d8h		;68d3
l68d5h:
	ld (hl),a		;68d5
	dec l			;68d6
	dec l			;68d7
	ld a,(hl)		;68d8
	add a,010h		;68d9
	ld c,a			;68db
	ld a,(le201h)		;68dc
	or a			;68df
	jr z,l68f7h		;68e0
	cp 004h			;68e2
sub_68e4h:
	jr nc,l68f7h		;68e4
	ld a,c			;68e6
	cp 013h			;68e7
	jr nc,l68edh		;68e9
	ld a,013h		;68eb
l68edh:
	cp 0b6h			;68ed
	jr c,l68f3h		;68ef
	ld a,0b5h		;68f1
l68f3h:
	sub 010h		;68f3
	ld (hl),a		;68f5
	ret			;68f6
l68f7h:
	ld a,c			;68f7
	cp 010h			;68f8
	jp nc,la8ffh		;68fa
	ld a,010h		;68fd
	jp 0a8edh		;68ff
sub_6902h:
	ld a,(le1c9h)		;6902
	and 00fh		;6905
	add a,a			;6907
	add a,a			;6908
	ld c,a			;6909
	ld b,000h		;690a
	ld hl,la94eh		;690c
	add hl,bc		;690f
	ld e,(hl)		;6910
	inc hl			;6911
	ld d,(hl)		;6912
	inc hl			;6913
	ld c,(hl)		;6914
	inc hl			;6915
	ld b,(hl)		;6916
	ld (lf002h),bc		;6917
	ld a,(le402h)		;691b
	add a,003h		;691e
	ld (lf000h),a		;6920
	ld b,a			;6923
	ld l,e			;6924
	ld h,d			;6925
l6926h:
	add hl,de		;6926
	djnz l6926h		;6927
	ld (lf004h),hl		;6929
	ld hl,(lf002h)		;692c
	ld e,l			;692f
	ld d,h			;6930
	ld a,(lf000h)		;6931
sub_6934h:
	ld b,a			;6934
l6935h:
	add hl,de		;6935
	djnz l6935h		;6936
	ld c,l			;6938
	ld b,h			;6939
	ld de,(lf004h)		;693a
	ret			;693e
	ld hl,(le403h)		;693f
	add hl,de		;6942
	ld (le403h),hl		;6943
	ld hl,(le405h)		;6946
	add hl,bc		;6949
l694ah:
	ld (le405h),hl		;694a
	ret			;694d
	nop			;694e
	nop			;694f
	nop			;6950
	nop			;6951
	add a,b			;6952
	rst 38h			;6953
	nop			;6954
	nop			;6955
	add a,b			;6956
	nop			;6957
	nop			;6958
	nop			;6959
	nop			;695a
	nop			;695b
	nop			;695c
	nop			;695d
	nop			;695e
	nop			;695f
	add a,b			;6960
	rst 38h			;6961
l6962h:
	add a,b			;6962
	rst 38h			;6963
	add a,b			;6964
	rst 38h			;6965
	add a,b			;6966
	nop			;6967
	add a,b			;6968
sub_6969h:
	rst 38h			;6969
	nop			;696a
	nop			;696b
	add a,b			;696c
	rst 38h			;696d
	nop			;696e
	nop			;696f
	add a,b			;6970
l6971h:
	nop			;6971
	add a,b			;6972
	rst 38h			;6973
	add a,b			;6974
	nop			;6975
	add a,b			;6976
	nop			;6977
	add a,b			;6978
l6979h:
	nop			;6979
l697ah:
	nop			;697a
	nop			;697b
	add a,b			;697c
	nop			;697d
	nop			;697e
	nop			;697f
	nop			;6980
	nop			;6981
	add a,b			;6982
	rst 38h			;6983
	nop			;6984
	nop			;6985
l6986h:
	add a,b			;6986
	nop			;6987
	nop			;6988
	nop			;6989
	nop			;698a
	nop			;698b
	nop			;698c
	nop			;698d
l698eh:
	xor a			;698e
	ld (le1d3h),a		;698f
	ret			;6992
	ld hl,le400h		;6993
	ld a,(hl)		;6996
	or a			;6997
	ret m			;6998
	xor a			;6999
sub_699ah:
	ld (le44eh),a		;699a
	dec a			;699d
	ld (hl),a		;699e
	ld (le410h),a		;699f
	ld (le420h),a		;69a2
	xor a			;69a5
l69a6h:
	call sub_a9b8h		;69a6
	jp 042ddh		;69a9
	ld hl,le44fh		;69ac
	dec (hl)		;69af
	ret nz			;69b0
	dec l			;69b1
	inc (hl)		;69b2
	ld a,(hl)		;69b3
	cp 004h			;69b4
	jr nc,l698eh		;69b6
	ld hl,la9f4h		;69b8
	call 04b67h		;69bb
	ex de,hl		;69be
	ld a,(hl)		;69bf
	ld (le44fh),a		;69c0
	inc hl			;69c3
	ld a,(le404h)		;69c4
	ld c,a			;69c7
	ld a,(le406h)		;69c8
	ld b,a			;69cb
	ld de,le418h		;69cc
	call sub_a9e1h		;69cf
	ld de,le41ch		;69d2
	call sub_a9e1h		;69d5
	ld de,le427h+1		;69d8
	call sub_a9e1h		;69db
	ld de,le42ch		;69de
	ld a,(hl)		;69e1
	add a,c			;69e2
	ld (de),a		;69e3
	inc hl			;69e4
	inc de			;69e5
	ld a,(hl)		;69e6
	add a,b			;69e7
	ld (de),a		;69e8
	inc hl			;69e9
	inc de			;69ea
	ld a,(hl)		;69eb
	ld (de),a		;69ec
	inc hl			;69ed
	inc de			;69ee
l69efh:
	ld a,(hl)		;69ef
	ld (de),a		;69f0
	inc hl			;69f1
l69f2h:
	inc de			;69f2
	ret			;69f3
	ld e,0aah		;69f4
	call m,sub_0da9h	;69f6
	xor d			;69f9
	ld e,0aah		;69fa
	inc d			;69fc
	nop			;69fd
	nop			;69fe
	djnz l6a0ah		;69ff
	nop			;6a01
	nop			;6a02
	inc d			;6a03
	rrca			;6a04
	nop			;6a05
	ret m			;6a06
	inc c			;6a07
	ld b,000h		;6a08
l6a0ah:
	ex af,af'		;6a0a
	inc a			;6a0b
	ld b,00ah		;6a0c
	nop			;6a0e
	nop			;6a0f
	inc b			;6a10
	add hl,bc		;6a11
	nop			;6a12
	nop			;6a13
	ex af,af'		;6a14
	rrca			;6a15
	nop			;6a16
	ret m			;6a17
	nop			;6a18
	ld b,000h		;6a19
	ex af,af'		;6a1b
	jr c,l6a24h		;6a1c
	ld a,(bc)		;6a1e
	nop			;6a1f
sub_6a20h:
	nop			;6a20
	inc (hl)		;6a21
	rrca			;6a22
	nop			;6a23
l6a24h:
	nop			;6a24
	jr nc,l6a30h		;6a25
sub_6a27h:
	nop			;6a27
	nop			;6a28
	inc l			;6a29
	ld b,000h		;6a2a
	nop			;6a2c
	inc l			;6a2d
	ld b,011h		;6a2e
l6a30h:
	ld d,b			;6a30
	call po,0103eh		;6a31
l6a34h:
	ld hl,le404h		;6a34
	ldi			;6a37
	inc l			;6a39
	ldi			;6a3a
	dec a			;6a3c
	jr nz,l6a34h		;6a3d
sub_6a3fh:
	ld (le40dh+1),a		;6a3f
	ret			;6a42
	ld a,(le40bh)		;6a43
	dec a			;6a46
	ld hl,le410h		;6a47
	jr z,l6a4eh		;6a4a
	ld l,020h		;6a4c
l6a4eh:
	ld (hl),001h		;6a4e
	jp 0aaech		;6a50
	ld a,(le400h)		;6a53
	dec a			;6a56
	ret m			;6a57
	ld a,(le40bh)		;6a58
	or a			;6a5b
	ret z			;6a5c
	ld a,(lf0f5h)		;6a5d
	bit 2,a			;6a60
	ld b,002h		;6a62
	jr z,l6a68h		;6a64
	ld b,004h		;6a66
l6a68h:
	ld hl,le40ch		;6a68
	inc (hl)		;6a6b
	ld a,(hl)		;6a6c
	cp b			;6a6d
	ret c			;6a6e
	ld (hl),000h		;6a6f
	inc l			;6a71
	inc (hl)		;6a72
	ld a,(le40bh)		;6a73
	dec a			;6a76
	jr z,l6a7fh		;6a77
	ld de,le427h		;6a79
	call sub_aa82h		;6a7c
l6a7fh:
	ld de,le417h		;6a7f
	ld a,(le40dh)		;6a82
	and 003h		;6a85
	add a,a			;6a87
	ld hl,laa93h		;6a88
	call sub_407ah		;6a8b
	ldi			;6a8e
	ldi			;6a90
	ret			;6a92
	inc a			;6a93
	ld a,(bc)		;6a94
	inc a			;6a95
	add hl,bc		;6a96
	ld b,b			;6a97
	ex af,af'		;6a98
	ld b,b			;6a99
	ld b,03ah		;6a9a
	nop			;6a9c
	call po,0f83dh		;6a9d
l6aa0h:
	ld a,(le3d0h)		;6aa0
	or a			;6aa3
	ret nz			;6aa4
	ld a,(le22bh)		;6aa5
	or a			;6aa8
	ret nz			;6aa9
sub_6aaah:
	ld a,(le439h)		;6aaa
	cp 003h			;6aad
sub_6aafh:
	ret z			;6aaf
	ld hl,le3c1h+1		;6ab0
	ld a,(le3beh+2)		;6ab3
	or a			;6ab6
	jr nz,l6ac2h		;6ab7
	ld a,(le3beh+1)		;6ab9
sub_6abch:
	or a			;6abc
	jr nz,l6ac2h		;6abd
	ld hl,le1c9h		;6abf
l6ac2h:
	ld a,(hl)		;6ac2
	and 00fh		;6ac3
	ret z			;6ac5
	cp 003h			;6ac6
	ret z			;6ac8
	cp 00ch			;6ac9
	ret z			;6acb
sub_6acch:
	cp 00fh			;6acc
	ret z			;6ace
	ld hl,le450h		;6acf
	ld a,(le40dh+1)		;6ad2
	add a,a			;6ad5
	add a,l			;6ad6
	ld l,a			;6ad7
	ld a,(le404h)		;6ad8
sub_6adbh:
	ld (hl),a		;6adb
	ld a,(le406h)		;6adc
	inc l			;6adf
sub_6ae0h:
	ld (hl),a		;6ae0
	ld hl,le40dh+1		;6ae1
	inc (hl)		;6ae4
	ld a,(hl)		;6ae5
	cp 010h			;6ae6
	jr c,l6aech		;6ae8
	ld (hl),000h		;6aea
l6aech:
	ld hl,le40dh+1		;6aec
	ld a,(le40bh)		;6aef
	dec a			;6af2
	ret m			;6af3
	jr z,l6afdh		;6af4
	ld bc,le424h		;6af6
	ld a,(hl)		;6af9
	call sub_ab07h		;6afa
l6afdh:
	ld bc,le414h		;6afd
	ld a,(hl)		;6b00
	sub 008h		;6b01
	jr nc,l6b07h		;6b03
	add a,010h		;6b05
l6b07h:
	add a,a			;6b07
	ld de,le450h		;6b08
	add a,e			;6b0b
	ld e,a			;6b0c
	ld a,(de)		;6b0d
	ld (bc),a		;6b0e
	inc e			;6b0f
	inc c			;6b10
	inc c			;6b11
	ld a,(de)		;6b12
	ld (bc),a		;6b13
	ret			;6b14
	ld a,(le400h)		;6b15
	dec a			;6b18
	ret m			;6b19
	ld a,(le439h)		;6b1a
	cp 003h			;6b1d
	ret nz			;6b1f
	ld a,(le40bh)		;6b20
	dec a			;6b23
	ret m			;6b24
	jr z,l6b34h		;6b25
	exx			;6b27
	ld hl,le424h		;6b28
	exx			;6b2b
	ld a,(le1c3h)		;6b2c
	and 00fh		;6b2f
	call sub_ab44h		;6b31
l6b34h:
	exx			;6b34
	ld hl,le414h		;6b35
	exx			;6b38
	ld a,(le1c3h)		;6b39
	and 00fh		;6b3c
	sub 008h		;6b3e
	jr nc,l6b44h		;6b40
	add a,010h		;6b42
l6b44h:
	ld hl,le404h		;6b44
	ld de,0ab72h		;6b47
	add a,a			;6b4a
	call sub_407fh		;6b4b
	ld a,(de)		;6b4e
	add a,(hl)		;6b4f
	inc l			;6b50
	inc l			;6b51
	exx			;6b52
	ld (hl),a		;6b53
	inc l			;6b54
	inc l			;6b55
	exx			;6b56
	inc de			;6b57
	ld a,(de)		;6b58
	or a			;6b59
	jp p,0ab69h		;6b5a
	neg			;6b5d
	ld d,a			;6b5f
	ld a,(hl)		;6b60
	sub d			;6b61
	jr nc,l6b65h		;6b62
	xor a			;6b64
l6b65h:
	exx			;6b65
	ld (hl),a		;6b66
	exx			;6b67
	ret			;6b68
	ld a,(de)		;6b69
	add a,(hl)		;6b6a
	jr nc,l6b65h		;6b6b
	ld a,0f8h		;6b6d
	jp 0ab65h		;6b6f
	ret po			;6b72
	nop			;6b73
	ex (sp),hl		;6b74
l6b75h:
	inc c			;6b75
	jp pe,lf416h		;6b76
sub_6b79h:
	dec e			;6b79
	nop			;6b7a
	jr nz,l6b89h		;6b7b
	dec e			;6b7d
l6b7eh:
	ld d,016h		;6b7e
	dec e			;6b80
	inc c			;6b81
	jr nz,l6b84h		;6b82
l6b84h:
	dec e			;6b84
sub_6b85h:
	call p,sub_ea16h	;6b85
	inc c			;6b88
l6b89h:
	ex (sp),hl		;6b89
	nop			;6b8a
	ret po			;6b8b
	call p,sub_eae3h	;6b8c
	jp pe,0f4e3h		;6b8f
	ld iy,le470h		;6b92
	ld b,009h		;6b96
l6b98h:
	push bc			;6b98
	call sub_aba5h		;6b99
	ld bc,l0010h		;6b9c
	add iy,bc		;6b9f
	pop bc			;6ba1
	djnz l6b98h		;6ba2
sub_6ba4h:
	ret			;6ba4
	ld a,(iy+000h)		;6ba5
	or a			;6ba8
	ret z			;6ba9
	ld b,a			;6baa
sub_6babh:
	sub 007h		;6bab
	jr c,l6bbdh		;6bad
	sub 002h		;6baf
	jr z,l6bbdh		;6bb1
	sub 005h		;6bb3
	cp 002h			;6bb5
	jr c,l6bbdh		;6bb7
	ld hl,l82feh		;6bb9
	push hl			;6bbc
l6bbdh:
	ld a,b			;6bbd
	dec a			;6bbe
	call sub_4084h		;6bbf
	rst 10h			;6bc2
	xor h			;6bc3
	ex (sp),hl		;6bc4
	xor h			;6bc5
	jr nz,l6b75h		;6bc6
	ld bc,l01b1h		;6bc8
	or c			;6bcb
	or l			;6bcc
	or c			;6bcd
	ld b,0aeh		;6bce
	add a,h			;6bd0
	xor (hl)		;6bd1
	ld (hl),0afh		;6bd2
	or (hl)			;6bd4
	xor (hl)		;6bd5
	jp z,ldaaeh		;6bd6
	xor (hl)		;6bd9
	xor (iy-05ah)		;6bda
	xor a			;6bdd
	jr z,$-78		;6bde
l6be0h:
	xor a			;6be0
	ld (le437h),a		;6be1
	ret			;6be4
	ld b,000h		;6be5
	ld a,(le400h)		;6be7
	dec a			;6bea
	ret m			;6beb
	ld a,(le3d0h)		;6bec
	or a			;6bef
	ret nz			;6bf0
	ld a,(le22bh)		;6bf1
	or a			;6bf4
	ret nz			;6bf5
	ld a,(le3beh+2)		;6bf6
	or a			;6bf9
l6bfah:
	ret nz			;6bfa
	inc b			;6bfb
	ret			;6bfc
	call sub_abe5h		;6bfd
	dec b			;6c00
	ret nz			;6c01
	ld a,(le1c8h)		;6c02
	and 010h		;6c05
	jr nz,l6c18h		;6c07
	ld a,(le1c9h)		;6c09
	and 010h		;6c0c
	jr z,l6be0h		;6c0e
sub_6c10h:
	ld hl,le437h		;6c10
	inc (hl)		;6c13
	ld a,(hl)		;6c14
	cp 00fh			;6c15
	ret c			;6c17
l6c18h:
	call 0abe0h		;6c18
	ld ix,le400h		;6c1b
	exx			;6c1f
	ld de,l02feh+2		;6c20
l6c23h:
	exx			;6c23
	ld a,(ix+000h)		;6c24
	or a			;6c27
	call nz,sub_ac39h	;6c28
	ld bc,l0010h		;6c2b
l6c2eh:
	add ix,bc		;6c2e
	exx			;6c30
	ld a,e			;6c31
	add a,020h		;6c32
sub_6c34h:
	ld e,a			;6c34
	dec d			;6c35
	jr nz,l6c23h		;6c36
	ret			;6c38
	ld a,(le439h)		;6c39
	cp 007h			;6c3c
	push af			;6c3e
	call z,sub_af03h	;6c3f
	pop af			;6c42
	jr z,l6c61h		;6c43
	ld a,(le430h)		;6c45
sub_6c48h:
	or a			;6c48
	call nz,0ac86h		;6c49
	ld a,(le431h)		;6c4c
	or a			;6c4f
	call nz,sub_acf7h	;6c50
	ld a,(le432h)		;6c53
	or a			;6c56
	call nz,sub_ad35h	;6c57
	ld a,(le436h)		;6c5a
	or a			;6c5d
	call nz,sub_ac77h	;6c5e
l6c61h:
	ld a,(le433h)		;6c61
	or a			;6c64
	call nz,sub_b0bah	;6c65
	ld a,(le434h)		;6c68
	or a			;6c6b
	call nz,0adb9h		;6c6c
	ld a,(le435h)		;6c6f
	or a			;6c72
	call nz,0adeeh		;6c73
	ret			;6c76
	ld hl,le480h		;6c77
	call sub_b214h		;6c7a
	ret nz			;6c7d
	ld (hl),002h		;6c7e
	inc l			;6c80
	ld de,00800h		;6c81
	jr l6cc4h		;6c84
	dec a			;6c86
	jr z,l6ca3h		;6c87
	ld hl,le470h		;6c89
	call sub_b214h		;6c8c
	jr z,l6cbeh		;6c8f
	ld hl,le480h		;6c91
	call sub_b214h		;6c94
	jr z,l6cbeh		;6c97
	ret			;6c99
l6c9ah:
	ld hl,le470h		;6c9a
	call sub_b214h		;6c9d
	ret nz			;6ca0
	jr l6cbeh		;6ca1
l6ca3h:
	ld a,(le431h)		;6ca3
	or a			;6ca6
	jr z,l6c9ah		;6ca7
	ld hl,le470h		;6ca9
	call sub_b214h		;6cac
	jr nz,sub_6cedh		;6caf
	push hl			;6cb1
	ld bc,l0010h		;6cb2
	add hl,bc		;6cb5
	ld a,(hl)		;6cb6
	or a			;6cb7
	pop hl			;6cb8
	jr nz,sub_6cedh		;6cb9
	call 0acf1h		;6cbb
l6cbeh:
	ld (hl),001h		;6cbe
	inc l			;6cc0
	ld de,sub_0807h+1	;6cc1
l6cc4h:
	call sub_b22ah		;6cc4
	and 0f8h		;6cc7
	ld (hl),a		;6cc9
	ld d,0f6h		;6cca
	call sub_b239h		;6ccc
	ld a,l			;6ccf
	add a,006h		;6cd0
	ld l,a			;6cd2
	ld a,001h		;6cd3
	jr l6d18h		;6cd5
	ld a,(iy+005h)		;6cd7
	add a,00ch		;6cda
l6cdch:
	jp c,lae01h		;6cdc
l6cdfh:
	ld (iy+005h),a		;6cdf
	ret			;6ce2
	ld a,(iy+005h)		;6ce3
	sub 00ch		;6ce6
	jp c,lae01h		;6ce8
	jr l6cdfh		;6ceb
sub_6cedh:
	ld a,001h		;6ced
	jr l6cf3h		;6cef
	ld a,000h		;6cf1
l6cf3h:
	ld (le438h),a		;6cf3
	ret			;6cf6
	ld a,(le438h)		;6cf7
	or a			;6cfa
	ret nz			;6cfb
	ld hl,le480h		;6cfc
	call sub_b214h		;6cff
	ret nz			;6d02
	ld (hl),003h		;6d03
	inc l			;6d05
	ld de,sub_0807h+1	;6d06
	call sub_b22ah		;6d09
	inc l			;6d0c
	ld (hl),018h		;6d0d
	inc l			;6d0f
	ld (hl),007h		;6d10
sub_6d12h:
	ld a,l			;6d12
	add a,005h		;6d13
	ld l,a			;6d15
	ld a,002h		;6d16
l6d18h:
	ld (hl),008h		;6d18
	inc l			;6d1a
	ld (hl),002h		;6d1b
	jp l4ae4h		;6d1d
	ld a,(iy+003h)		;6d20
	sub 006h		;6d23
	jp c,lae01h		;6d25
	ld (iy+003h),a		;6d28
	ld a,(iy+005h)		;6d2b
	add a,006h		;6d2e
	jp c,lae01h		;6d30
	jr l6cdfh		;6d33
	ld hl,le470h		;6d35
	call sub_b214h		;6d38
	ret nz			;6d3b
	ld a,(le432h)		;6d3c
	sub 003h		;6d3f
	jr c,l6d4fh		;6d41
	jr z,l6d84h		;6d43
	dec a			;6d45
	dec a			;6d46
sub_6d47h:
	jp z,laf76h		;6d47
	dec a			;6d4a
	jp z,lafffh		;6d4b
	ret			;6d4e
l6d4fh:
	ld (hl),007h		;6d4f
	inc l			;6d51
	ld (hl),000h		;6d52
	ld de,l0810h		;6d54
	call sub_b22ah		;6d57
	and 0f8h		;6d5a
	ld (hl),a		;6d5c
	ld d,0fah		;6d5d
	call sub_b239h		;6d5f
	inc l			;6d62
	inc l			;6d63
	push ix			;6d64
	pop bc			;6d66
	ld (hl),c		;6d67
	inc l			;6d68
	ld (hl),b		;6d69
	inc l			;6d6a
	ld (hl),000h		;6d6b
	inc l			;6d6d
	ld a,(le432h)		;6d6e
	dec a			;6d71
	ld a,00fh		;6d72
	jr z,l6d78h		;6d74
	ld a,01ch		;6d76
l6d78h:
	ld (hl),a		;6d78
	inc l			;6d79
	ld (hl),000h		;6d7a
	inc l			;6d7c
	ld (hl),002h		;6d7d
	ld a,003h		;6d7f
	jp l4ae4h		;6d81
l6d84h:
	ld (hl),008h		;6d84
	inc l			;6d86
	ld (hl),000h		;6d87
	ld a,(ix+004h)		;6d89
	add a,008h		;6d8c
	and 0f8h		;6d8e
	inc l			;6d90
	inc l			;6d91
	ld (hl),a		;6d92
	ld a,(ix+006h)		;6d93
	add a,010h		;6d96
	and 0f8h		;6d98
	inc l			;6d9a
sub_6d9bh:
	inc l			;6d9b
	ld (hl),a		;6d9c
	inc l			;6d9d
	ld (hl),0f1h		;6d9e
	inc l			;6da0
	inc l			;6da1
	push ix			;6da2
	pop bc			;6da4
	ld (hl),c		;6da5
	inc l			;6da6
	ld (hl),b		;6da7
	inc l			;6da8
sub_6da9h:
	ld (hl),000h		;6da9
	inc l			;6dab
	ld (hl),01ch		;6dac
	inc l			;6dae
	ld (hl),000h		;6daf
	inc l			;6db1
	ld (hl),008h		;6db2
	ld a,01ah		;6db4
	jp l4ae4h		;6db6
	ld hl,le480h		;6db9
	call sub_b214h		;6dbc
	ret nz			;6dbf
	ld a,(le434h)		;6dc0
	dec a			;6dc3
	ld a,00ah		;6dc4
	jr z,l6dcah		;6dc6
	ld a,00ch		;6dc8
l6dcah:
	ld (hl),a		;6dca
	inc l			;6dcb
	ld (hl),004h		;6dcc
	ld de,00800h		;6dce
	call sub_b22ah		;6dd1
	and 0f8h		;6dd4
	ld (hl),a		;6dd6
	ld d,0fah		;6dd7
	call sub_b239h		;6dd9
	ld a,l			;6ddc
	add a,004h		;6ddd
	ld l,a			;6ddf
	ld (hl),002h		;6de0
	inc l			;6de2
	inc l			;6de3
	ld (hl),010h		;6de4
	inc l			;6de6
	ld (hl),008h		;6de7
	ld a,00eh		;6de9
	jp l4ae4h		;6deb
	ld hl,le480h		;6dee
	call sub_b214h		;6df1
	ret nz			;6df4
	ld a,(le435h)		;6df5
	dec a			;6df8
	ld a,00bh		;6df9
	jr z,l6dcah		;6dfb
	ld a,00dh		;6dfd
l6dffh:
	jr l6dcah		;6dff
l6e01h:
	ld (iy+000h),000h	;6e01
	ret			;6e05
	push iy			;6e06
	pop hl			;6e08
	inc l			;6e09
	ld a,(hl)		;6e0a
	dec a			;6e0b
	jr z,l6e5bh		;6e0c
	jp p,lae6ah		;6e0e
	ld c,(iy+008h)		;6e11
	ld b,(iy+009h)		;6e14
	push bc			;6e17
	pop ix			;6e18
	ld de,l0810h		;6e1a
sub_6e1dh:
	call sub_b22ah		;6e1d
	and 0f8h		;6e20
	cp 0f8h			;6e22
	jr nc,l6e01h		;6e24
	ld (hl),a		;6e26
	ld d,0fah		;6e27
	call sub_b239h		;6e29
	ld a,004h		;6e2c
	add a,l			;6e2e
	ld l,a			;6e2f
	ld b,004h		;6e30
l6e32h:
	inc (hl)		;6e32
	inc l			;6e33
	dec (hl)		;6e34
	jr z,l6e3ch		;6e35
	dec l			;6e37
	djnz l6e32h		;6e38
	jr l6e3fh		;6e3a
l6e3ch:
	inc (iy+001h)		;6e3c
l6e3fh:
	ld a,(iy+00ah)		;6e3f
	add a,a			;6e42
	add a,a			;6e43
	add a,a			;6e44
	neg			;6e45
	sub (iy+005h)		;6e47
	ret nc			;6e4a
	neg			;6e4b
	rra			;6e4d
	rra			;6e4e
	rra			;6e4f
	and 01fh		;6e50
	sub (iy+00ah)		;6e52
	neg			;6e55
	ld (iy+00ah),a		;6e57
	ret			;6e5a
l6e5bh:
	call sub_ae7bh		;6e5b
	jr c,l6e01h		;6e5e
	call sub_ae3fh		;6e60
	ld a,(iy+00ah)		;6e63
	or a			;6e66
	ret nz			;6e67
	jr l6e01h		;6e68
	call sub_ae7bh		;6e6a
	jr c,l6e01h		;6e6d
	ld a,(iy+00ah)		;6e6f
	sub 005h		;6e72
	jr c,l6e01h		;6e74
	inc a			;6e76
	ld (iy+00ah),a		;6e77
	ret			;6e7a
	ld a,(iy+005h)		;6e7b
	add a,020h		;6e7e
	ld (iy+005h),a		;6e80
	ret			;6e83
	push iy			;6e84
	pop hl			;6e86
	inc l			;6e87
	ld a,(hl)		;6e88
	dec a			;6e89
	jr z,l6e5bh		;6e8a
	jp p,lae6ah		;6e8c
	ld c,(iy+008h)		;6e8f
	ld b,(iy+009h)		;6e92
	push bc			;6e95
	pop ix			;6e96
	ld a,(ix+004h)		;6e98
	add a,008h		;6e9b
	and 0f8h		;6e9d
	inc l			;6e9f
	inc l			;6ea0
	ld (hl),a		;6ea1
	ld a,(ix+006h)		;6ea2
	add a,010h		;6ea5
	and 0f8h		;6ea7
	cp 0f8h			;6ea9
	jp nc,lae01h		;6eab
	inc l			;6eae
	inc l			;6eaf
	ld (hl),a		;6eb0
	ld a,005h		;6eb1
	jp lae2eh		;6eb3
	push iy			;6eb6
	pop hl			;6eb8
	inc l			;6eb9
	inc l			;6eba
	inc l			;6ebb
	ld a,(hl)		;6ebc
	sub 006h		;6ebd
	jp c,lae01h		;6ebf
l6ec2h:
	ld (hl),a		;6ec2
	inc l			;6ec3
	inc l			;6ec4
	ld d,0fah		;6ec5
	jp 0b23ch		;6ec7
	push iy			;6eca
	pop hl			;6ecc
	inc l			;6ecd
	inc l			;6ece
	inc l			;6ecf
	ld a,(hl)		;6ed0
	add a,006h		;6ed1
	cp 0b0h			;6ed3
sub_6ed5h:
	jp nc,lae01h		;6ed5
	jr l6ec2h		;6ed8
	call 0aeb6h		;6eda
	dec (iy+001h)		;6edd
	ret nz			;6ee0
	ld (iy+001h),004h	;6ee1
	ld a,(iy+005h)		;6ee5
	or a			;6ee8
	ld b,001h		;6ee9
	jr z,l6ef3h		;6eeb
	inc b			;6eed
	sub 008h		;6eee
	ld (iy+005h),a		;6ef0
l6ef3h:
	ld a,(iy+00ah)		;6ef3
	add a,b			;6ef6
	ld (iy+00ah),a		;6ef7
	jp sub_ae3fh		;6efa
	call sub_aecah		;6efd
	jp laeddh		;6f00
	ld hl,le470h		;6f03
	call sub_b214h		;6f06
	ret nz			;6f09
	ld (hl),009h		;6f0a
	inc l			;6f0c
	ld (hl),004h		;6f0d
sub_6f0fh:
	ld a,(ix+004h)		;6f0f
	inc l			;6f12
	inc l			;6f13
l6f14h:
	and 0f8h		;6f14
	ld (hl),a		;6f16
l6f17h:
	ld a,(ix+006h)		;6f17
	add a,010h		;6f1a
	inc l			;6f1c
	inc l			;6f1d
	and 0f8h		;6f1e
	ld (hl),a		;6f20
	inc l			;6f21
l6f22h:
	ld (hl),0f2h		;6f22
	inc l			;6f24
	inc l			;6f25
	inc l			;6f26
	inc l			;6f27
	ld (hl),002h		;6f28
	inc l			;6f2a
	inc l			;6f2b
	ld (hl),010h		;6f2c
	inc l			;6f2e
	ld (hl),010h		;6f2f
	ld a,01dh		;6f31
	jp l4ae4h		;6f33
	ld a,(iy+005h)		;6f36
	add a,008h		;6f39
	jp c,lae01h		;6f3b
	ld (iy+005h),a		;6f3e
	dec (iy+001h)		;6f41
	ret nz			;6f44
	ld (iy+001h),004h	;6f45
	ld a,(iy+003h)		;6f49
	or a			;6f4c
	ld b,001h		;6f4d
	jr z,l6f57h		;6f4f
	inc b			;6f51
	sub 008h		;6f52
sub_6f54h:
	ld (iy+003h),a		;6f54
l6f57h:
	ld a,(iy+00ah)		;6f57
	add a,b			;6f5a
	ld (iy+00ah),a		;6f5b
	ld a,(iy+003h)		;6f5e
	rra			;6f61
	rra			;6f62
	rra			;6f63
sub_6f64h:
	and 01fh		;6f64
	add a,(iy+00ah)		;6f66
	sub 017h		;6f69
	ret c			;6f6b
	inc a			;6f6c
	neg			;6f6d
	add a,(iy+00ah)		;6f6f
	ld (iy+00ah),a		;6f72
	ret			;6f75
	ld hl,le470h		;6f76
	call sub_b214h		;6f79
	ret nz			;6f7c
	push hl			;6f7d
sub_6f7eh:
	pop iy			;6f7e
	ld (hl),00eh		;6f80
	inc l			;6f82
	ld (hl),000h		;6f83
	ld (iy+00ah),010h	;6f85
	call sub_afc5h		;6f89
	inc l			;6f8c
	ld (hl),018h		;6f8d
	inc l			;6f8f
	inc l			;6f90
	push ix			;6f91
	pop bc			;6f93
	ld (hl),c		;6f94
sub_6f95h:
	inc l			;6f95
l6f96h:
	ld (hl),b		;6f96
	inc l			;6f97
	ld (hl),010h		;6f98
sub_6f9ah:
	inc l			;6f9a
	inc l			;6f9b
	ld (hl),00ch		;6f9c
	inc l			;6f9e
	ld (hl),00ch		;6f9f
	ld a,01bh		;6fa1
	jp l4ae4h		;6fa3
	push iy			;6fa6
	pop hl			;6fa8
	inc l			;6fa9
	bit 0,(hl)		;6faa
	jr nz,l6ff0h		;6fac
	ld a,(iy+00ah)		;6fae
	add a,006h		;6fb1
sub_6fb3h:
	ld (iy+00ah),a		;6fb3
	cp 060h			;6fb6
	jr c,l6fbch		;6fb8
	ld (hl),001h		;6fba
l6fbch:
	ld c,(iy+008h)		;6fbc
	ld b,(iy+009h)		;6fbf
	push bc			;6fc2
	pop ix			;6fc3
	ld a,(ix+004h)		;6fc5
	inc a			;6fc8
	inc l			;6fc9
	inc l			;6fca
	ld (hl),a		;6fcb
	inc l			;6fcc
	inc l			;6fcd
	ld a,(ix+006h)		;6fce
	add a,(iy+00ah)		;6fd1
	jr c,l6fdah		;6fd4
	cp 0f0h			;6fd6
	jr c,l6fe0h		;6fd8
l6fdah:
	ld (iy+001h),001h	;6fda
	ld a,0f0h		;6fde
l6fe0h:
	ld (hl),a		;6fe0
	ld a,(le1c3h)		;6fe1
	bit 1,a			;6fe4
	ld a,00bh		;6fe6
	jr z,l6fech		;6fe8
	ld a,009h		;6fea
l6fech:
	ld (iy+007h),a		;6fec
	ret			;6fef
l6ff0h:
	ld a,(iy+00ah)		;6ff0
	sub 006h		;6ff3
	ld (iy+00ah),a		;6ff5
	cp 010h			;6ff8
	jp c,lae01h		;6ffa
sub_6ffdh:
	jr l6fbch		;6ffd
	ld hl,le470h		;6fff
sub_7002h:
	call sub_b214h		;7002
	ret nz			;7005
l7006h:
	push hl			;7006
l7007h:
	pop iy			;7007
	ld (hl),00fh		;7009
	inc l			;700b
l700ch:
	ld (hl),000h		;700c
	call sub_b097h		;700e
	push ix			;7011
	pop bc			;7013
	inc l			;7014
sub_7015h:
	inc l			;7015
	ld (hl),c		;7016
	inc l			;7017
	ld (hl),b		;7018
	inc l			;7019
sub_701ah:
	xor a			;701a
	ld (hl),a		;701b
	inc l			;701c
	ld (hl),a		;701d
	inc l			;701e
	ld (hl),a		;701f
l7020h:
	inc l			;7020
	ld (hl),008h		;7021
	ld a,01ch		;7023
	jp l4ae4h		;7025
	push iy			;7028
	pop hl			;702a
	inc l			;702b
	bit 0,(hl)		;702c
	jr nz,l705fh		;702e
l7030h:
	call 0b08eh		;7030
	inc (iy+00bh)		;7033
	ld a,(iy+00bh)		;7036
	cp 008h			;7039
	jr c,l7041h		;703b
	ld (iy+001h),001h	;703d
l7041h:
	ld a,(iy+005h)		;7041
	rra			;7044
	rra			;7045
l7046h:
	rra			;7046
	and 01fh		;7047
	add a,(iy+00bh)		;7049
	sub 021h		;704c
	jr nc,l7055h		;704e
l7050h:
	ld a,(iy+00bh)		;7050
	jr l705bh		;7053
l7055h:
	inc a			;7055
	neg			;7056
	add a,(iy+00bh)		;7058
l705bh:
	ld (iy+00ah),a		;705b
	ret			;705e
l705fh:
	call 0b08eh		;705f
	dec (iy+00bh)		;7062
	jp z,lae01h		;7065
	ld a,(le432h)		;7068
	cp 006h			;706b
	jr nz,l7041h		;706d
	ld a,(le439h)		;706f
	cp 007h			;7072
	jr z,l7041h		;7074
	call sub_abe5h		;7076
	dec b			;7079
	jr nz,l7041h		;707a
	ld a,(le1c8h)		;707c
	and 010h		;707f
	jr z,l7041h		;7081
	ld a,01ch		;7083
	call l4ae4h		;7085
	ld (iy+001h),000h	;7088
	jr l7041h		;708c
	ld c,(iy+008h)		;708e
	ld b,(iy+009h)		;7091
	push bc			;7094
	pop ix			;7095
l7097h:
	inc l			;7097
	inc l			;7098
	ld a,(ix+004h)		;7099
	add a,004h		;709c
	and 0fch		;709e
	ld (hl),a		;70a0
	ld b,a			;70a1
	inc l			;70a2
	inc l			;70a3
	ld a,(ix+006h)		;70a4
	add a,010h		;70a7
	and 0f8h		;70a9
	cp 0f8h			;70ab
	jp z,lae01h		;70ad
	ld (hl),a		;70b0
	inc l			;70b1
	xor a			;70b2
	bit 2,b			;70b3
	jr z,l70b8h		;70b5
	inc a			;70b7
l70b8h:
	ld (hl),a		;70b8
	ret			;70b9
	ld a,(ix+004h)		;70ba
	cp 0a5h			;70bd
	ret nc			;70bf
	ld a,(ix+006h)		;70c0
	cp 0e8h			;70c3
	ret nc			;70c5
l70c6h:
	ld hl,le4d0h		;70c6
	exx			;70c9
	ld a,e			;70ca
	exx			;70cb
	sra a			;70cc
	add a,l			;70ce
	ld l,a			;70cf
	ld a,(hl)		;70d0
	or a			;70d1
l70d2h:
	ret nz			;70d2
l70d3h:
	ld a,(le433h)		;70d3
	ld de,00400h		;70d6
	ld bc,l200ah		;70d9
	dec a			;70dc
	jr z,l70e7h		;70dd
	inc e			;70df
	dec a			;70e0
	jr z,l70e7h		;70e1
	inc d			;70e3
	ld bc,l280fh		;70e4
l70e7h:
	ld (hl),d		;70e7
	inc l			;70e8
	ld (hl),e		;70e9
	ld de,sub_0807h+1	;70ea
	call sub_b22ah		;70ed
	inc l			;70f0
	ld (hl),b		;70f1
	inc l			;70f2
	ld (hl),c		;70f3
	inc l			;70f4
	ld (hl),000h		;70f5
	ld a,l			;70f7
l70f8h:
	add a,004h		;70f8
	ld l,a			;70fa
	ld (hl),008h		;70fb
	inc l			;70fd
	ld (hl),002h		;70fe
	ret			;7100
	push iy			;7101
	pop hl			;7103
	ld a,(le201h)		;7104
	cp 005h			;7107
	jr z,l7146h		;7109
	ld h,(iy+005h)		;710b
	ld l,(iy+003h)		;710e
	ld a,l			;7111
	add a,008h		;7112
	ld l,a			;7114
	call 0b1ach		;7115
	jr nc,l7146h		;7118
	ld h,(iy+005h)		;711a
	ld l,(iy+003h)		;711d
	ld a,h			;7120
l7121h:
	add a,008h		;7121
	ld h,a			;7123
	ld a,l			;7124
	add a,008h		;7125
	ld l,a			;7127
	call 0b1ach		;7128
	jr nc,l7140h		;712b
	ld h,(iy+005h)		;712d
	ld l,(iy+003h)		;7130
	ld a,h			;7133
	add a,008h		;7134
	ld h,a			;7136
	call 0b1ach		;7137
	jp c,lae01h		;713a
	jp lb181h		;713d
l7140h:
	call sub_b154h		;7140
	jp lb181h		;7143
l7146h:
	bit 0,(iy+001h)		;7146
	ld de,l0100h		;714a
	jr z,l7151h		;714d
	ld e,080h		;714f
l7151h:
	call sub_b19ah		;7151
	ld a,(iy+000h)		;7154
	cp 005h			;7157
	ld a,028h		;7159
	jr z,l715fh		;715b
	ld a,020h		;715d
l715fh:
	ld (iy+006h),a		;715f
	bit 0,(iy+001h)		;7162
	ld de,00400h		;7166
	jr z,l716dh		;7169
	ld d,006h		;716b
l716dh:
	ld a,(iy+002h)		;716d
l7170h:
	add a,e			;7170
sub_7171h:
	ld (iy+002h),a		;7171
	ld a,(iy+003h)		;7174
	adc a,d			;7177
	cp 0a8h			;7178
	jp nc,lae01h		;717a
	ld (iy+003h),a		;717d
	ret			;7180
l7181h:
	ld a,(iy+000h)		;7181
	cp 005h			;7184
	ld a,024h		;7186
	jr z,l718ch		;7188
	ld a,01ch		;718a
l718ch:
	ld (iy+006h),a		;718c
	bit 0,(iy+001h)		;718f
	ld de,00400h		;7193
	jr z,sub_719ah		;7196
	ld d,006h		;7198
sub_719ah:
	ld a,(iy+004h)		;719a
	add a,e			;719d
	ld (iy+004h),a		;719e
l71a1h:
	ld a,(iy+005h)		;71a1
	adc a,d			;71a4
	jp c,lae01h		;71a5
	ld (iy+005h),a		;71a8
	ret			;71ab
	ld a,(le304h+1)		;71ac
	exx			;71af
	ld c,a			;71b0
sub_71b1h:
	exx			;71b1
	jp sub_8388h		;71b2
	ld a,(0e320h)		;71b5
	or a			;71b8
	jr z,l71c6h		;71b9
	ld a,(iy+005h)		;71bb
	sub 008h		;71be
	ld (iy+005h),a		;71c0
	jp c,lae01h		;71c3
l71c6h:
	call 0b1feh		;71c6
	dec (iy+009h)		;71c9
	ret nz			;71cc
	ld (iy+009h),005h	;71cd
l71d1h:
	ld a,(iy+008h)		;71d1
l71d4h:
	cp 004h			;71d4
	jp nc,lae01h		;71d6
	inc (iy+008h)		;71d9
	and 003h		;71dc
	add a,a			;71de
	ld hl,0b1f6h		;71df
sub_71e2h:
	call 05ca6h		;71e2
	add a,(iy+003h)		;71e5
	ld e,a			;71e8
	inc hl			;71e9
	ld a,(hl)		;71ea
	add a,(iy+005h)		;71eb
	ld d,a			;71ee
	ld c,000h		;71ef
	ld a,036h		;71f1
	jp 04d1eh		;71f3
	ret m			;71f6
	ret m			;71f7
	ex af,af'		;71f8
	ex af,af'		;71f9
sub_71fah:
	ex af,af'		;71fa
	ret m			;71fb
	ret m			;71fc
	ex af,af'		;71fd
	ld a,(iy+00ah)		;71fe
l7201h:
	inc a			;7201
	cp 004h			;7202
	jr c,l7207h		;7204
	xor a			;7206
l7207h:
	ld (iy+00ah),a		;7207
	ld hl,l9621h		;720a
	call 04b67h		;720d
	ld (iy+006h),e		;7210
	ret			;7213
	ld a,(ix+004h)		;7214
	cp 0a6h			;7217
	jr nc,l7228h		;7219
	ld a,(ix+006h)		;721b
	cp 0d9h			;721e
	jr nc,l7228h		;7220
l7222h:
	exx			;7222
	ld a,e			;7223
	exx			;7224
	add a,l			;7225
	ld l,a			;7226
	ld a,(hl)		;7227
l7228h:
	or a			;7228
	ret			;7229
	ld a,(ix+004h)		;722a
	add a,d			;722d
	inc l			;722e
	inc l			;722f
l7230h:
	ld (hl),a		;7230
	ld a,(ix+006h)		;7231
	add a,e			;7234
	inc l			;7235
sub_7236h:
	inc l			;7236
	ld (hl),a		;7237
l7238h:
	ret			;7238
	ld a,(ix+004h)		;7239
	rra			;723c
	and 003h		;723d
	add a,d			;723f
l7240h:
	inc l			;7240
	ld (hl),a		;7241
	ret			;7242
	di			;7243
	ld a,(01413h)		;7244
	cp 0e1h			;7247
	ld a,(lfe11h)		;7249
	ret p			;724c
	ld a,(l0101h)		;724d
	cp 0fdh			;7250
	ld a,(l0101h)		;7252
l7255h:
	rst 38h			;7255
	and 03ah		;7256
	ld (bc),a		;7258
l7259h:
	ld (de),a		;7259
	rst 38h			;725a
	and 03ah		;725b
	inc bc			;725d
	ld (de),a		;725e
	rst 38h			;725f
	dec l			;7260
sub_7261h:
	ld a,(l3011h)		;7261
	inc l			;7264
	ld hl,l2537h+2		;7265
	ld (l6dffh),a		;7268
	ld a,(l3011h+1)		;726b
	inc l			;726e
	ld hl,l2537h+2		;726f
	ld (lff33h),a		;7272
	dec de			;7275
	inc e			;7276
	rst 38h			;7277
	call z,03038h		;7278
	inc l			;727b
	ld hl,l2537h+2		;727c
	ld (01100h),a		;727f
	rst 38h			;7282
	call z,03038h		;7283
	inc l			;7286
	ld hl,l2537h+2		;7287
	ld (l1200h),a		;728a
	rst 38h			;728d
	dec bc			;728e
	add hl,sp		;728f
	daa			;7290
	ld hl,0252dh		;7291
	nop			;7294
	nop			;7295
	cpl			;7296
	ld (hl),025h		;7297
	ld (04afeh),a		;7299
	add hl,sp		;729c
	inc hl			;729d
	cpl			;729e
	ld l,034h		;729f
	add hl,hl		;72a1
	ld l,035h		;72a2
	dec h			;72a4
	nop			;72a5
	nop			;72a6
l72a7h:
	ld h,015h		;72a7
	rst 38h			;72a9
	call z,sub_2839h	;72aa
	add hl,hl		;72ad
	nop			;72ae
	inc sp			;72af
	inc hl			;72b0
	cpl			;72b1
sub_72b2h:
	ld (lff25h),a		;72b2
	ld l,h			;72b5
	add hl,sp		;72b6
	ld a,(de)		;72b7
	ld c,00bh		;72b8
	nop			;72ba
	nop			;72bb
	dec bc			;72bc
	inc d			;72bd
	ld a,(bc)		;72be
	cp 02ah			;72bf
	ld a,(sub_0093h)	;72c1
	dec bc			;72c4
	ld e,01ah		;72c5
	dec bc			;72c7
	inc d			;72c8
	ld a,(bc)		;72c9
	nop			;72ca
	inc c			;72cb
	ld (bc),a		;72cc
	nop			;72cd
	sub e			;72ce
	rst 38h			;72cf
	add hl,hl		;72d0
	ld a,(l1b16h)		;72d1
	add hl,de		;72d4
	ld c,000h		;72d5
	add hl,de		;72d7
	ld d,007h		;72d8
	add hl,bc		;72da
	dec bc			;72db
	nop			;72dc
	ld de,l1f0bh		;72dd
	rst 38h			;72e0
	jr z,l731dh		;72e1
	add hl,de		;72e3
	dec bc			;72e4
	dec bc			;72e5
	nop			;72e6
	rra			;72e7
	dec d			;72e8
	dec de			;72e9
	nop			;72ea
	inc d			;72eb
	dec bc			;72ec
	ld e,01ah		;72ed
	ld hl,l211fh+2		;72ef
	ld hl,l6afdh+2		;72f2
	add hl,sp		;72f5
	ld (de),a		;72f6
	dec bc			;72f7
	ld a,(de)		;72f8
	inc hl			;72f9
	add hl,de		;72fa
	nop			;72fb
	nop			;72fc
	add hl,de		;72fd
	ld a,(de)		;72fe
	rlca			;72ff
	jr l731ch		;7300
	rst 38h			;7302
	djnz l7305h		;7303
l7305h:
	jr l732fh		;7305
	ex af,af'		;7307
	nop			;7308
l7309h:
	jr l7333h		;7309
	nop			;730b
	nop			;730c
	jr l7337h		;730d
	ex af,af'		;730f
l7310h:
	nop			;7310
	jr l733bh		;7311
	djnz l7315h		;7313
l7315h:
	jr l733fh		;7315
sub_7317h:
	jr l7319h		;7317
l7319h:
	jr l7343h		;7319
	ex af,af'		;731b
l731ch:
	nop			;731c
l731dh:
	jr nz,l733fh		;731d
sub_731fh:
	inc b			;731f
l7320h:
	nop			;7320
	jr nz,l7343h		;7321
l7323h:
	nop			;7323
	nop			;7324
	jr nc,$+66		;7325
	nop			;7327
	nop			;7328
	djnz $+66		;7329
	nop			;732b
	nop			;732c
	jr $+66			;732d
l732fh:
	nop			;732f
	nop			;7330
	jr nz,$+66		;7331
l7333h:
	nop			;7333
	nop			;7334
	jr z,$+66		;7335
l7337h:
	jr nz,l7339h		;7337
l7339h:
	djnz l737bh		;7339
l733bh:
	jr l733dh		;733b
l733dh:
	jr l737fh		;733d
l733fh:
	djnz l7341h		;733f
l7341h:
	jr nz,l7383h		;7341
l7343h:
	ex af,af'		;7343
	nop			;7344
	jr z,l7387h		;7345
	djnz $+18		;7347
	inc c			;7349
	djnz l735ch		;734a
	djnz l735ah		;734c
	djnz l7360h		;734e
	nop			;7350
	inc c			;7351
	djnz l7364h		;7352
	nop			;7354
	inc c			;7355
	djnz l7368h		;7356
	jr nc,l7366h		;7358
l735ah:
	djnz l736ch		;735a
l735ch:
	jr nc,l736ah		;735c
	djnz l7370h		;735e
l7360h:
	djnz l736eh		;7360
	djnz l7374h		;7362
l7364h:
	djnz l7372h		;7364
l7366h:
	djnz l7378h		;7366
l7368h:
	nop			;7368
	inc c			;7369
l736ah:
	djnz l737ch		;736a
l736ch:
	nop			;736c
	inc c			;736d
l736eh:
	djnz l7380h		;736e
l7370h:
	jr nc,l737eh		;7370
l7372h:
	djnz $+18		;7372
l7374h:
	jr nc,l7382h		;7374
	djnz l7380h		;7376
l7378h:
	nop			;7378
	djnz l738bh		;7379
l737bh:
	nop			;737b
l737ch:
	nop			;737c
	nop			;737d
l737eh:
	nop			;737e
l737fh:
	nop			;737f
l7380h:
	nop			;7380
	nop			;7381
l7382h:
	nop			;7382
l7383h:
	djnz l7395h		;7383
	djnz l7397h		;7385
l7387h:
	djnz l7399h		;7387
	djnz l739bh		;7389
l738bh:
	nop			;738b
	nop			;738c
	nop			;738d
	nop			;738e
	nop			;738f
	ret m			;7390
	nop			;7391
	ret m			;7392
	nop			;7393
	nop			;7394
l7395h:
	nop			;7395
	ret m			;7396
l7397h:
	nop			;7397
	ret m			;7398
l7399h:
	nop			;7399
	nop			;739a
l739bh:
	nop			;739b
	nop			;739c
	ret m			;739d
	nop			;739e
	ret m			;739f
	ret m			;73a0
	ret m			;73a1
l73a2h:
	ret m			;73a2
sub_73a3h:
	ret m			;73a3
	ret m			;73a4
	ret m			;73a5
	nop			;73a6
	nop			;73a7
	nop			;73a8
	nop			;73a9
l73aah:
	nop			;73aa
	nop			;73ab
	nop			;73ac
	ld a,(ix+006h)		;73ad
	cp 020h			;73b0
	ret c			;73b2
l73b3h:
	ld a,(ix+001h)		;73b3
sub_73b6h:
	cp 005h			;73b6
l73b8h:
	ret z			;73b8
	call sub_4084h		;73b9
	add a,0b3h		;73bc
	add a,0b3h		;73be
	sub 0b3h		;73c0
	ret p			;73c2
	or e			;73c3
	dec c			;73c4
	or h			;73c5
	dec (ix+002h)		;73c6
	ret nz			;73c9
	inc (ix+007h)		;73ca
	ld a,008h		;73cd
l73cfh:
	inc (ix+001h)		;73cf
l73d2h:
	ld (ix+002h),a		;73d2
	ret			;73d5
	call 0b40dh		;73d6
	ld a,(ix+00ch)		;73d9
	and a			;73dc
	ret nz			;73dd
	dec (ix+007h)		;73de
	ld a,008h		;73e1
	jr l73cfh		;73e3
l73e5h:
	ld a,(ix+001h)		;73e5
	cp 002h			;73e8
	ld a,008h		;73ea
	jr z,l7408h		;73ec
	jr l740bh		;73ee
	dec (ix+002h)		;73f0
	ret nz			;73f3
	call sub_b472h		;73f4
	ld (ix+001h),0ffh	;73f7
	ld (ix+00ch),005h	;73fb
	ld b,040h		;73ff
l7401h:
	ld a,(le228h)		;7401
	add a,a			;7404
	neg			;7405
	add a,b			;7407
l7408h:
	dec (ix+007h)		;7408
l740bh:
	jr l73cfh		;740b
	ld a,(ix+00bh)		;740d
	ld (le35ah),a		;7410
	ld a,(ix+00ch)		;7413
	and a			;7416
l7417h:
	jr z,l73e5h		;7417
	dec (ix+002h)		;7419
	ret nz			;741c
	ld (ix+002h),008h	;741d
	dec (ix+00ch)		;7421
	call sub_b477h		;7424
	and a			;7427
	jr nz,l742eh		;7428
	ld (ix+002h),004h	;742a
l742eh:
	ld a,(ix+004h)		;742e
	ld c,0f8h		;7431
	bit 0,(ix+00bh)		;7433
	jr z,l743bh		;7437
	ld c,010h		;7439
l743bh:
	add a,c			;743b
	ld e,a			;743c
	ld a,(ix+006h)		;743d
	ld c,008h		;7440
	add a,c			;7442
	ld d,a			;7443
	ld c,000h		;7444
	ld a,007h		;7446
	call 04d16h		;7448
	ret nz			;744b
	jr l7472h		;744c
	call sub_b472h		;744e
	ld a,(ix+00bh)		;7451
	ld c,a			;7454
	add a,a			;7455
	add a,c			;7456
	ld c,015h		;7457
	add a,c			;7459
	ld (ix+007h),a		;745a
	ld (ix+008h),006h	;745d
	ld (ix+002h),034h	;7461
	ld (ix+009h),006h	;7465
	ld (ix+00ah),003h	;7469
	ld (ix+00ch),005h	;746d
	ret			;7471
l7472h:
	ld (ix+00fh),001h	;7472
	ret			;7476
	ld a,(ix+00fh)		;7477
	xor 001h		;747a
	ld (ix+00fh),a		;747c
	ld (le35ch),a		;747f
	push ix			;7482
	pop hl			;7484
	ld (le35dh),hl		;7485
	ret			;7488
	ld (ix+00fh),000h	;7489
	ld a,(ix+006h)		;748d
	cp 020h			;7490
	call z,sub_b605h	;7492
	ld a,(ix+001h)		;7495
	call sub_4084h		;7498
	cp a			;749b
	or h			;749c
	cp a			;749d
	or h			;749e
	or c			;749f
	or h			;74a0
	ld de,l80b5h		;74a1
	or l			;74a4
	ld a,(de)		;74a5
	or l			;74a6
	adc a,d			;74a7
	or l			;74a8
	ld (lcbb5h),hl		;74a9
	or l			;74ac
	call po,l2bb4h+1	;74ad
	or (hl)			;74b0
	dec (ix+002h)		;74b1
	ret nz			;74b4
	ld (ix+002h),004h	;74b5
	ld (ix+00eh),002h	;74b9
	jr l74edh		;74bd
	dec (ix+002h)		;74bf
	ret nz			;74c2
	ld (ix+002h),008h	;74c3
	ld a,(0e20ah)		;74c7
	cp 002h			;74ca
	ld b,004h		;74cc
	jr nc,l74eah		;74ce
	ld b,002h		;74d0
	ld a,(le40bh)		;74d2
	cp 002h			;74d5
	jr c,l74eah		;74d7
	ld b,001h		;74d9
	jr l74eah		;74db
l74ddh:
	ld b,002h		;74dd
	ld a,(le40bh)		;74df
	and a			;74e2
	jr z,l74eah		;74e3
	dec b			;74e5
	dec a			;74e6
	jr z,l74eah		;74e7
	dec b			;74e9
l74eah:
	ld (ix+00eh),b		;74ea
l74edh:
	inc (ix+007h)		;74ed
	inc (ix+001h)		;74f0
	ld a,(ix+007h)		;74f3
	ld hl,0b501h		;74f6
	call sub_407ah		;74f9
	ld a,(hl)		;74fc
	ld (ix+00dh),a		;74fd
	ret			;7500
	rst 38h			;7501
	rst 38h			;7502
	rst 38h			;7503
	ld bc,l0301h+1		;7504
	inc bc			;7507
	rst 38h			;7508
	rst 38h			;7509
	rst 38h			;750a
	rst 38h			;750b
	inc b			;750c
	dec b			;750d
l750eh:
	ld b,006h		;750e
	rst 38h			;7510
	ld a,(le40bh)		;7511
	cp 002h			;7514
	jr nc,l7533h		;7516
	jr l752fh		;7518
	ld a,(le40bh)		;751a
	and a			;751d
	jr nz,l7533h		;751e
l7520h:
	jr l752fh		;7520
	ld a,(le40bh)		;7522
	and a			;7525
	jr z,l7533h		;7526
	ld a,(le400h)		;7528
	cp 002h			;752b
	jr nc,l7533h		;752d
l752fh:
	ld (ix+00fh),001h	;752f
l7533h:
	dec (ix+002h)		;7533
	ret nz			;7536
	ld a,(ix+003h)		;7537
	ld (le35dh),a		;753a
	call sub_b66ch		;753d
	cp 003h			;7540
	jp z,sub_b636h		;7542
	call 0b679h		;7545
	bit 0,(ix+00fh)		;7548
	jr nz,l7555h		;754c
	ld a,01dh		;754e
	ld c,000h		;7550
	call 04d16h		;7552
l7555h:
	inc (ix+00eh)		;7555
	ld b,001h		;7558
	ld a,(ix+001h)		;755a
	cp 006h			;755d
l755fh:
	jr c,l757ch		;755f
	ld b,004h		;7561
	ld a,(0e20ah)		;7563
	and a			;7566
	jr nz,l757ch		;7567
	ld b,00fh		;7569
	ld a,(le400h)		;756b
	cp 002h			;756e
	jr nz,l757ch		;7570
	ld a,(le228h)		;7572
	srl a			;7575
	ld c,a			;7577
	ld a,00ch		;7578
	sub c			;757a
	ld b,a			;757b
l757ch:
	ld (ix+002h),b		;757c
	ret			;757f
	ld a,(le40bh)		;7580
	and a			;7583
	jr nz,l758ah		;7584
	ld (ix+00fh),001h	;7586
l758ah:
	dec (ix+002h)		;758a
	ret nz			;758d
	ld a,(ix+003h)		;758e
	ld (le35dh),a		;7591
	call sub_b66ch		;7594
	ld a,(ix+00eh)		;7597
	cp 003h			;759a
	jp z,lb65ah		;759c
	call 0b679h		;759f
	push de			;75a2
	call sub_b692h		;75a3
	pop de			;75a6
	call 0b555h		;75a7
	bit 0,(ix+00fh)		;75aa
	ret nz			;75ae
	call sub_93b1h		;75af
	push ix			;75b2
	push hl			;75b4
l75b5h:
	pop ix			;75b5
	ld bc,sub_fff2h+2	;75b7
	add ix,bc		;75ba
	ld (ix+000h),082h	;75bc
	ld (ix+002h),00ch	;75c0
	ld (ix+00ch),00ah	;75c4
	pop ix			;75c8
	ret			;75ca
	inc (ix+001h)		;75cb
	ld a,007h		;75ce
	bit 0,(ix+003h)		;75d0
	jr nz,l75d8h		;75d4
	ld a,00fh		;75d6
l75d8h:
	ld (ix+007h),a		;75d8
	ld (ix+002h),00dh	;75db
	ld (ix+00dh),0ffh	;75df
	ret			;75e3
	dec (ix+002h)		;75e4
	ret nz			;75e7
l75e8h:
	ld (ix+000h),000h	;75e8
	ld a,(ix+00bh)		;75ec
	or a			;75ef
	ret z			;75f0
	ld b,a			;75f1
	ld a,(ix+004h)		;75f2
	add a,010h		;75f5
	ld e,a			;75f7
	ld d,(ix+006h)		;75f8
	ld c,005h		;75fb
	dec b			;75fd
	jr z,l7602h		;75fe
	ld c,003h		;7600
l7602h:
	jp 05157h		;7602
	ld a,(0e320h)		;7605
	and a			;7608
	ret z			;7609
	ld a,(ix+001h)		;760a
	cp 006h			;760d
	jr c,l7626h		;760f
	cp 008h			;7611
	ret nc			;7613
	ld (ix+001h),00ah	;7614
	ld (ix+00eh),006h	;7618
l761ch:
	ld (ix+002h),004h	;761c
l7620h:
	dec (ix+007h)		;7620
	jp lb4f3h		;7623
l7626h:
	ld (ix+00dh),0ffh	;7626
	ret			;762a
	dec (ix+002h)		;762b
	ret nz			;762e
	dec (ix+00eh)		;762f
	jr z,l75e8h		;7632
	jr l761ch		;7634
	ld (ix+002h),004h	;7636
	ld a,(ix+001h)		;763a
	cp 007h			;763d
	jp nz,lb4b5h		;763f
	dec (ix+001h)		;7642
	dec (ix+001h)		;7645
l7648h:
	ld a,(le228h)		;7648
	srl a			;764b
	neg			;764d
	add a,010h		;764f
	ld (ix+002h),a		;7651
	dec (ix+007h)		;7654
	jp lb4c7h		;7657
	ld (ix+002h),004h	;765a
	bit 1,(ix+003h)		;765e
	ld a,(ix+001h)		;7662
	cp 006h			;7665
	jp nz,lb4b5h		;7667
	jr l7648h		;766a
	ld a,(ix+00ch)		;766c
	inc a			;766f
	and 003h		;7670
	ld (ix+00ch),a		;7672
	ld (le35ch),a		;7675
	ret			;7678
	ld hl,lb6dbh		;7679
	ld a,(ix+00dh)		;767c
	dec a			;767f
	add a,a			;7680
	call sub_407ah		;7681
	ld a,(hl)		;7684
	inc hl			;7685
	ld e,(ix+004h)		;7686
	add a,e			;7689
	ld e,a			;768a
	ld a,(hl)		;768b
	ld d,(ix+006h)		;768c
	add a,d			;768f
sub_7690h:
	ld d,a			;7690
	ret			;7691
	ld hl,lb6d7h		;7692
	ld a,(le35ch)		;7695
	call sub_407ah		;7698
	ld l,(hl)		;769b
	ld a,(le35dh)		;769c
	and a			;769f
	jr z,l76ceh		;76a0
	cp 003h			;76a2
	jr z,l76ceh		;76a4
	ld a,(le404h)		;76a6
	add a,l			;76a9
	ld h,a			;76aa
	jr nc,l76b1h		;76ab
l76adh:
	ld a,(le404h)		;76ad
	ld h,a			;76b0
l76b1h:
	ld a,(le406h)		;76b1
	ld l,a			;76b4
	ld a,060h		;76b5
	ld e,(ix+004h)		;76b7
	ld d,(ix+006h)		;76ba
	ld (lf00fh),a		;76bd
	ld a,h			;76c0
	ld (lf000h),a		;76c1
	ld a,l			;76c4
	ld (lf000h+1),a		;76c5
	call sub_9467h		;76c8
	jp l93fbh		;76cb
l76ceh:
	ld a,(le404h)		;76ce
	sub l			;76d1
	ld h,a			;76d2
	jr nc,l76b1h		;76d3
	jr l76adh		;76d5
	nop			;76d7
	djnz l76fah		;76d8
	djnz $+26		;76da
	ex af,af'		;76dc
	djnz l76e7h		;76dd
	ex af,af'		;76df
	ex af,af'		;76e0
	djnz $+18		;76e1
	jr $+18			;76e3
sub_76e5h:
	jr nz,$+18		;76e5
l76e7h:
	res 1,(ix+010h)		;76e7
	call sub_b692h		;76eb
	ld (ix+002h),00ch	;76ee
	ld (ix+02fh),001h	;76f2
	ld de,(0f014h)		;76f6
l76fah:
	ld hl,(lf010h+2)	;76fa
	jp 04f26h		;76fd
	ld a,(ix+001h)		;7700
	and a			;7703
	ret nz			;7704
	dec (ix+002h)		;7705
	ret nz			;7708
	ld (ix+02fh),000h	;7709
	inc (ix+001h)		;770d
	ret			;7710
	bit 7,(ix+000h)		;7711
	ret z			;7715
	dec (ix+002h)		;7716
	ret nz			;7719
	res 7,(ix+000h)		;771a
	ret			;771e
	ld a,(ix+004h)		;771f
	cp 028h			;7722
	ld bc,l0001h		;7724
	jr nc,l772ch		;7727
	ld bc,00800h		;7729
l772ch:
	ld (ix+007h),b		;772c
	ld (ix+003h),c		;772f
	ld b,007h		;7732
	ld a,(0e20ah)		;7734
l7737h:
	jr z,l773bh		;7737
	ld b,00ah		;7739
l773bh:
	ld (ix+008h),b		;773b
	ld (ix+002h),030h	;773e
	ld (ix+009h),005h	;7742
	ld (ix+00ah),006h	;7746
	xor a			;774a
	ld (ix+00ch),a		;774b
	dec a			;774e
	ld (ix+00dh),a		;774f
	ret			;7752
	ld c,01dh		;7753
	ld a,(le201h)		;7755
l7758h:
	cp 007h			;7758
	jr z,l775eh		;775a
	ld c,038h		;775c
l775eh:
	ld a,(ix+00bh)		;775e
	and a			;7761
	jr z,l7765h		;7762
	inc c			;7764
l7765h:
	ld (ix+007h),c		;7765
	ld (ix+008h),008h	;7768
	ld (ix+009h),004h	;776c
	ld (ix+00ah),003h	;7770
	ld (ix+002h),030h	;7774
	ret			;7778
	ld a,(ix+001h)		;7779
	dec a			;777c
	jr z,l778fh		;777d
	dec (ix+002h)		;777f
	ret nz			;7782
	inc (ix+001h)		;7783
	ld (ix+002h),006h	;7786
	ld (ix+00ch),006h	;778a
	ret			;778e
l778fh:
	dec (ix+002h)		;778f
	ret nz			;7792
	ld (ix+002h),006h	;7793
	ld a,(ix+004h)		;7797
	ld bc,000f4h		;779a
	bit 0,(ix+00bh)		;779d
	jr z,l77a6h		;77a1
	ld bc,00114h		;77a3
l77a6h:
	add a,c			;77a6
	ld e,a			;77a7
l77a8h:
	ld a,(ix+006h)		;77a8
	add a,008h		;77ab
	ld d,a			;77ad
l77aeh:
	ld a,010h		;77ae
	ld c,000h		;77b0
	call 04d16h		;77b2
	dec (ix+00ch)		;77b5
	ret nz			;77b8
	ld (ix+002h),060h	;77b9
	ld (ix+001h),000h	;77bd
	ret			;77c1
	ld (ix+002h),010h	;77c2
	ld a,(ix+006h)		;77c6
	ld (ix+026h),a		;77c9
	call 04e93h		;77cc
	ld (ix+015h),a		;77cf
l77d2h:
	ld a,(ix+004h)		;77d2
	bit 0,(ix+019h)		;77d5
	jr z,l77e4h		;77d9
	ld hl,00480h		;77db
	ld de,l02feh+2		;77de
	jp 04f26h		;77e1
l77e4h:
	ld hl,lfb80h		;77e4
	ld de,lfd00h		;77e7
	jp 04f26h		;77ea
	call sub_b83ah		;77ed
	call sub_b847h		;77f0
	ld a,(ix+001h)		;77f3
	dec a			;77f6
	jr z,l7813h		;77f7
	dec a			;77f9
	ret z			;77fa
	call sub_b87fh		;77fb
	call 0b86ah		;77fe
	dec (ix+002h)		;7801
	ret nz			;7804
	ld (ix+002h),05ah	;7805
	ld a,(ix+004h)		;7809
	ld (ix+025h),a		;780c
	inc (ix+001h)		;780f
	ret			;7812
l7813h:
	call sub_b87fh		;7813
	call sub_b855h		;7816
	dec (ix+002h)		;7819
sub_781ch:
	ret nz			;781c
	ld e,070h		;781d
	ld a,(le228h)		;781f
	add a,a			;7822
	add a,e			;7823
	ld e,(ix+004h)		;7824
	ld d,(ix+006h)		;7827
	call sub_93f5h		;782a
	inc (ix+001h)		;782d
	ld hl,(lf010h+2)	;7830
	ld de,(0f014h)		;7833
	jp 04f26h		;7837
	ld a,(le1c3h)		;783a
	and 003h		;783d
	add a,a			;783f
	add a,a			;7840
	add a,058h		;7841
	ld (ix+030h),a		;7843
	ret			;7846
	dec (ix+015h)		;7847
	ret nz			;784a
	call lbb4ah		;784b
	call 04e93h		;784e
	ld (ix+015h),a		;7851
	ret			;7854
	ld h,000h		;7855
	ld a,(ix+025h)		;7857
	sub (ix+004h)		;785a
	jr nc,l7860h		;785d
	dec h			;785f
l7860h:
	ld l,a			;7860
	add hl,hl		;7861
l7862h:
	add hl,hl		;7862
	ex de,hl		;7863
	call l62a8h		;7864
	call 062c2h		;7867
l786ah:
	ld h,000h		;786a
	ld a,(ix+026h)		;786c
	sub (ix+006h)		;786f
	jr nc,l7875h		;7872
	dec h			;7874
l7875h:
	ld l,a			;7875
	add hl,hl		;7876
	add hl,hl		;7877
	ex de,hl		;7878
	call 062afh		;7879
	jp l62d5h		;787c
	dec (ix+006h)		;787f
	ld a,(ix+026h)		;7882
	and a			;7885
	ret z			;7886
	dec (ix+026h)		;7887
	ret			;788a
	ld (ix+008h),008h	;788b
	ld (ix+009h),003h	;788f
	ld (ix+00ah),001h	;7893
	ld (ix+00dh),0ffh	;7897
	ld a,r			;789b
	and 00fh		;789d
	add a,020h		;789f
	ld (ix+002h),a		;78a1
	ret			;78a4
	ld a,(ix+001h)		;78a5
	dec a			;78a8
	jr z,l78dah		;78a9
	dec a			;78ab
	jr z,l78e6h		;78ac
sub_78aeh:
	dec (ix+002h)		;78ae
	ret nz			;78b1
	ld de,sub_0807h+1	;78b2
	bit 0,(ix+00bh)		;78b5
	jr nz,l78bdh		;78b9
	ld e,0f8h		;78bb
l78bdh:
	ld a,(ix+004h)		;78bd
	add a,e			;78c0
	ld e,a			;78c1
	ld a,(ix+006h)		;78c2
	add a,d			;78c5
	ld d,a			;78c6
	ld c,000h		;78c7
	ld a,(ix+00bh)		;78c9
	ld b,a			;78cc
	ld a,01fh		;78cd
	call 04d16h		;78cf
	ld (ix+002h),018h	;78d2
	inc (ix+001h)		;78d6
	ret			;78d9
l78dah:
	dec (ix+002h)		;78da
	ret nz			;78dd
	ld (ix+002h),004h	;78de
	inc (ix+001h)		;78e2
	ret			;78e5
l78e6h:
	dec (ix+002h)		;78e6
	ret nz			;78e9
	ld a,r			;78ea
	and 007h		;78ec
	ld c,a			;78ee
	ld a,(le228h)		;78ef
	rra			;78f2
	and 007h		;78f3
	sub 018h		;78f5
	neg			;78f7
	add a,c			;78f9
	ld (ix+002h),a		;78fa
	ld (ix+001h),000h	;78fd
	ret			;7901
	ld c,080h		;7902
	bit 0,(ix+019h)		;7904
	jr z,l790ch		;7908
	ld c,074h		;790a
l790ch:
	ld (ix+030h),c		;790c
	ld (ix+002h),000h	;790f
	set 3,(ix+010h)		;7913
	ld (ix+025h),018h	;7917
	call l4f17h		;791b
	jr l797ch		;791e
	call sub_b976h		;7920
	ld a,(ix+001h)		;7923
	dec a			;7926
	jr z,l795eh		;7927
	dec (ix+025h)		;7929
	ld a,(ix+025h)		;792c
	cp 008h			;792f
	jr z,l7955h		;7931
	and a			;7933
	ret nz			;7934
	call sub_b955h		;7935
	inc (ix+001h)		;7938
l793bh:
	res 3,(ix+010h)		;793b
	bit 0,(ix+019h)		;793f
	jr z,l794ah		;7943
	ld de,00400h		;7945
	jr l794dh		;7948
l794ah:
	ld de,lfc00h		;794a
l794dh:
	call 04efbh		;794d
	ld (ix+025h),01eh	;7950
	ret			;7954
l7955h:
	ld a,(ix+030h)		;7955
	add a,004h		;7958
	ld (ix+030h),a		;795a
	ret			;795d
l795eh:
	dec (ix+025h)		;795e
sub_7961h:
	jr z,l793bh		;7961
	ld de,l0020h		;7963
	bit 0,(ix+019h)		;7966
	call nz,sub_5cadh	;796a
	ex de,hl		;796d
	call 04f10h		;796e
	add hl,de		;7971
	ex de,hl		;7972
l7973h:
	jp 04efbh		;7973
	ld a,(le1c3h)		;7976
	and 003h		;7979
	ret nz			;797b
l797ch:
	ld a,(ix+002h)		;797c
	inc a			;797f
	cp 006h			;7980
	jr c,l7985h		;7982
	xor a			;7984
l7985h:
	ld (ix+002h),a		;7985
	ld hl,0b992h		;7988
	call 05ca6h		;798b
	ld (ix+031h),a		;798e
	ret			;7991
	ex af,af'		;7992
	add hl,bc		;7993
	ld a,(bc)		;7994
	rrca			;7995
	ld a,(bc)		;7996
	add hl,bc		;7997
	ld a,(ix+006h)		;7998
	cp 028h			;799b
	call nc,sub_b9eeh	;799d
	dec (ix+002h)		;79a0
	jr z,l79b4h		;79a3
	ld a,(ix+002h)		;79a5
	cp (ix+00ch)		;79a8
	ret nz			;79ab
	ld (ix+007h),011h	;79ac
	inc (ix+00dh)		;79b0
	ret			;79b3
l79b4h:
	ld a,(ix+00ch)		;79b4
	add a,a			;79b7
	ld (ix+002h),a		;79b8
	dec (ix+00dh)		;79bb
	bit 7,(ix+00eh)		;79be
	jr nz,l79dch		;79c2
	ld (ix+007h),012h	;79c4
	ld a,(ix+004h)		;79c8
	add a,008h		;79cb
	ld (ix+004h),a		;79cd
	cp 058h			;79d0
	ret nz			;79d2
l79d3h:
	ld a,(ix+00eh)		;79d3
	neg			;79d6
	ld (ix+00eh),a		;79d8
	ret			;79db
l79dch:
	ld (ix+007h),010h	;79dc
	ld a,(ix+004h)		;79e0
	sub 008h		;79e3
	ld (ix+004h),a		;79e5
	cp (ix+00fh)		;79e8
	ret nz			;79eb
	jr l79d3h		;79ec
	dec (ix+001h)		;79ee
	ret nz			;79f1
	dec (ix+003h)		;79f2
	ld a,004h		;79f5
	jr nz,l79ffh		;79f7
	ld a,034h		;79f9
	ld (ix+003h),010h	;79fb
l79ffh:
	ld (ix+001h),a		;79ff
	call sub_ba0ch		;7a02
	ld a,022h		;7a05
	ld c,000h		;7a07
	jp 04d16h		;7a09
	ld a,010h		;7a0c
	add a,(ix+004h)		;7a0e
	ld e,a			;7a11
	ld a,0fch		;7a12
	add a,(ix+006h)		;7a14
	ld d,a			;7a17
	ret			;7a18
	ld a,(ix+00bh)		;7a19
	add a,a			;7a1c
	add a,002h		;7a1d
	ld (ix+00ch),a		;7a1f
	add a,a			;7a22
	ld (ix+002h),a		;7a23
	ld (ix+00eh),001h	;7a26
	ld (ix+007h),010h	;7a2a
sub_7a2eh:
	ld (ix+008h),028h	;7a2e
	ld (ix+001h),004h	;7a32
	ld (ix+009h),004h	;7a36
	ld (ix+00ah),005h	;7a3a
	ld (ix+003h),010h	;7a3e
	ld (ix+00dh),007h	;7a42
	ld a,(ix+004h)		;7a46
	ld (ix+00fh),a		;7a49
	ret			;7a4c
	ld hl,l0000h		;7a4d
	ld (lf010h+2),hl	;7a50
	ld hl,lfc00h		;7a53
	ld (0f014h),hl		;7a56
	jp lb6eeh		;7a59
	ld (ix+010h),01bh	;7a5c
	ld (ix+014h),004h	;7a60
	ld (ix+013h),002h	;7a64
	ld a,(ix+019h)		;7a68
	and a			;7a6b
	ld a,010h		;7a6c
	jr z,l7a72h		;7a6e
	ld a,008h		;7a70
l7a72h:
	ld (ix+028h),a		;7a72
	ld (ix+02ah),a		;7a75
	ld (ix+029h),008h	;7a78
	ld a,(ix+004h)		;7a7c
	cp 068h			;7a7f
sub_7a81h:
	ret c			;7a81
	ld (ix+029h),0f8h	;7a82
	ret			;7a86
	ld a,(ix+001h)		;7a87
	dec a			;7a8a
	jr z,l7a97h		;7a8b
	ld a,(ix+006h)		;7a8d
	cp 0d8h			;7a90
	ret nc			;7a92
	inc (ix+001h)		;7a93
	ret			;7a96
l7a97h:
	dec (ix+028h)		;7a97
	ret nz			;7a9a
	call sub_baaeh		;7a9b
	ld a,(ix+02ah)		;7a9e
	ld (ix+028h),a		;7aa1
	ld a,(ix+004h)		;7aa4
	add a,(ix+029h)		;7aa7
	ld (ix+004h),a		;7aaa
	ret			;7aad
	bit 7,(ix+029h)		;7aae
	jr nz,l7acah		;7ab2
	ld a,(ix+004h)		;7ab4
	add a,010h		;7ab7
l7ab9h:
	ld l,a			;7ab9
	ld h,(ix+006h)		;7aba
	call sub_83e8h		;7abd
	ret nc			;7ac0
	ld a,(ix+029h)		;7ac1
	neg			;7ac4
	ld (ix+029h),a		;7ac6
	ret			;7ac9
l7acah:
	ld a,(ix+004h)		;7aca
	sub 008h		;7acd
	jr l7ab9h		;7acf
	ld (ix+025h),010h	;7ad1
	ld a,(ix+004h)		;7ad5
	ld (ix+026h),a		;7ad8
	cp 058h			;7adb
	ld hl,00400h		;7add
	jr c,l7aech		;7ae0
	ld a,(ix+019h)		;7ae2
	add a,006h		;7ae5
	ld (ix+019h),a		;7ae7
	ld h,004h		;7aea
l7aech:
	ld de,lfd60h		;7aec
	jp 04f26h		;7aef
	call sub_bb56h		;7af2
	ld a,(ix+001h)		;7af5
	dec a			;7af8
l7af9h:
	jr z,l7b43h		;7af9
	dec a			;7afb
	ret z			;7afc
	ld a,(le228h)		;7afd
	cp 009h			;7b00
	call nc,sub_bb39h	;7b02
l7b05h:
	ld (ix+001h),000h	;7b05
l7b09h:
	ld a,(ix+026h)		;7b09
	ld de,00070h		;7b0c
	call sub_9c27h		;7b0f
	ld a,(ix+006h)		;7b12
	cp 020h			;7b15
	ret nc			;7b17
	ld (ix+025h),008h	;7b18
	inc (ix+001h)		;7b1c
	ld a,(le228h)		;7b1f
	ld b,004h		;7b22
	cp 006h			;7b24
	jr c,l7b2ah		;7b26
	ld b,006h		;7b28
l7b2ah:
	ld a,(ix+019h)		;7b2a
	ld hl,0bb8ah		;7b2d
	call 05ca6h		;7b30
	call 04cb7h		;7b33
	jp 04f26h		;7b36
	ld a,(ix+025h)		;7b39
	and a			;7b3c
	jr nz,l7b43h		;7b3d
	ld (ix+025h),009h	;7b3f
l7b43h:
	dec (ix+025h)		;7b43
	ret nz			;7b46
	inc (ix+001h)		;7b47
	ld e,(ix+004h)		;7b4a
	ld a,(ix+006h)		;7b4d
	add a,008h		;7b50
	ld d,a			;7b52
	jp sub_938fh		;7b53
	ld hl,0bb7eh		;7b56
	ld a,(le201h)		;7b59
	cp 005h			;7b5c
	jr z,l7b69h		;7b5e
	cp 003h			;7b60
l7b62h:
	jr nz,l7b6ch		;7b62
	ld hl,0bb86h		;7b64
	jr l7b6ch		;7b67
l7b69h:
	ld hl,0bb82h		;7b69
l7b6ch:
	call l9b31h		;7b6c
	ld a,(le1c3h)		;7b6f
	and 003h		;7b72
	ret nz			;7b74
	ld a,(ix+031h)		;7b75
	xor 004h		;7b78
	ld (ix+031h),a		;7b7a
	ret			;7b7d
	or h			;7b7e
	cp b			;7b7f
	cp h			;7b80
	ret nz			;7b81
	sub b			;7b82
	sub h			;7b83
	sbc a,b			;7b84
	sbc a,h			;7b85
	ld a,h			;7b86
	add a,b			;7b87
	add a,h			;7b88
	adc a,b			;7b89
	nop			;7b8a
	rrca			;7b8b
	ld c,00dh		;7b8c
	ld c,00fh		;7b8e
	nop			;7b90
	ld bc,l0301h+1		;7b91
	ld (bc),a		;7b94
	ld bc,036ddh		;7b95
	rlca			;7b98
	inc de			;7b99
	ld (ix+008h),030h	;7b9a
	ld (ix+009h),004h	;7b9e
	ld (ix+00ah),004h	;7ba2
	ld (ix+00dh),000h	;7ba6
	ld (ix+002h),001h	;7baa
	ld a,(le228h)		;7bae
	cp 006h			;7bb1
	ld a,001h		;7bb3
	jr c,l7bb8h		;7bb5
	inc a			;7bb7
l7bb8h:
	ld (ix+00eh),a		;7bb8
	ret			;7bbb
	call 0bbdch		;7bbc
	ld a,(ix+004h)		;7bbf
	cp 060h			;7bc2
	jr z,l7bcah		;7bc4
	cp 030h			;7bc6
	jr nz,l7bd2h		;7bc8
l7bcah:
	ld a,(ix+00eh)		;7bca
	neg			;7bcd
	ld (ix+00eh),a		;7bcf
l7bd2h:
	ld a,(ix+004h)		;7bd2
	add a,(ix+00eh)		;7bd5
	ld (ix+004h),a		;7bd8
sub_7bdbh:
	ret			;7bdb
	dec (ix+002h)		;7bdc
	ret nz			;7bdf
	ld e,(ix+004h)		;7be0
l7be3h:
	ld a,(ix+006h)		;7be3
	sub 008h		;7be6
	ld d,a			;7be8
	ld (ix+002h),012h	;7be9
	ld a,(le228h)		;7bed
l7bf0h:
	cp 006h			;7bf0
	jp c,sub_938fh		;7bf2
	ld (ix+002h),00ch	;7bf5
l7bf9h:
	jp sub_938fh		;7bf9
	ld de,lfa00h		;7bfc
	ld a,(le228h)		;7bff
sub_7c02h:
	cp 006h			;7c02
	ld a,028h		;7c04
	jr nc,l7c0ch		;7c06
	ld d,0fch		;7c08
	ld a,018h		;7c0a
l7c0ch:
	ld (ix+027h),a		;7c0c
	call sub_4f02h		;7c0f
	jp sub_4f1ch		;7c12
	call 0bca2h		;7c15
	ld a,(ix+001h)		;7c18
	dec a			;7c1b
sub_7c1ch:
	jr z,l7c32h		;7c1c
	dec a			;7c1e
	jr z,$+74		;7c1f
	dec a			;7c21
	jr z,l7c8bh		;7c22
	call sub_bc83h		;7c24
	rl h			;7c27
	ret c			;7c29
	ld (ix+025h),020h	;7c2a
	inc (ix+001h)		;7c2e
	ret			;7c31
l7c32h:
	call sub_bc83h		;7c32
	dec (ix+025h)		;7c35
	ret nz			;7c38
	inc (ix+001h)		;7c39
	ld (ix+025h),004h	;7c3c
	call 04f21h		;7c40
	ld hl,lbc63h		;7c43
	ld b,003h		;7c46
l7c48h:
	push bc			;7c48
	xor a			;7c49
	ld b,(hl)		;7c4a
	ld c,a			;7c4b
	inc hl			;7c4c
	ld d,(hl)		;7c4d
	ld e,a			;7c4e
	inc hl			;7c4f
	push hl			;7c50
	ex de,hl		;7c51
	ld e,(ix+004h)		;7c52
	ld a,(ix+006h)		;7c55
	add a,008h		;7c58
	ld d,a			;7c5a
	call sub_937dh		;7c5b
	pop hl			;7c5e
	pop bc			;7c5f
	djnz l7c48h		;7c60
	ret			;7c62
	cp 0feh			;7c63
	nop			;7c65
	cp 002h			;7c66
	cp 0ddh			;7c68
	dec (hl)		;7c6a
	dec h			;7c6b
	ret nz			;7c6c
	inc (ix+001h)		;7c6d
	ld (ix+025h),008h	;7c70
	ld a,(le228h)		;7c74
	cp 006h			;7c77
	ld de,lfc00h		;7c79
	jr c,l7c80h		;7c7c
l7c7eh:
	ld d,0fah		;7c7e
l7c80h:
	jp sub_4f02h		;7c80
	ld d,000h		;7c83
	ld e,(ix+027h)		;7c85
	jp 09d50h		;7c88
l7c8bh:
	dec (ix+025h)		;7c8b
	ret nz			;7c8e
	ld a,(le228h)		;7c8f
	cp 006h			;7c92
	ld (ix+025h),010h	;7c94
	jp c,lbb4ah		;7c98
	ld (ix+025h),008h	;7c9b
	jp lbb4ah		;7c9f
	ld a,(le1c3h)		;7ca2
	and 003h		;7ca5
	ret nz			;7ca7
	ld a,(ix+030h)		;7ca8
	add a,004h		;7cab
	cp 0e8h			;7cad
	jr nz,l7cb3h		;7caf
	ld a,0dch		;7cb1
l7cb3h:
	ld (ix+030h),a		;7cb3
	ret			;7cb6
	xor a			;7cb7
	ld (lf0f5h),a		;7cb8
	ld (le229h),a		;7cbb
	ld bc,00400h		;7cbe
	ld hl,lfcc1h		;7cc1
l7cc4h:
	push bc			;7cc4
	push hl			;7cc5
	ld a,(hl)		;7cc6
	bit 7,a			;7cc7
	jr nz,l7cdah		;7cc9
	call sub_bcf6h		;7ccb
l7cceh:
	pop hl			;7cce
	pop bc			;7ccf
	ld a,(lf0f5h)		;7cd0
	and a			;7cd3
	ret nz			;7cd4
	inc hl			;7cd5
	inc c			;7cd6
	djnz l7cc4h		;7cd7
	ret			;7cd9
l7cdah:
	call sub_bcdfh		;7cda
	jr l7cceh		;7cdd
	and 080h		;7cdf
	or c			;7ce1
	ld c,a			;7ce2
	ld b,004h		;7ce3
l7ce5h:
	push bc			;7ce5
l7ce6h:
	call sub_bcf6h		;7ce6
	pop bc			;7ce9
	ld a,(lf0f5h)		;7cea
	and a			;7ced
	ret nz			;7cee
	ld a,c			;7cef
	add a,004h		;7cf0
	ld c,a			;7cf2
	djnz l7ce5h		;7cf3
	ret			;7cf5
	ld de,lbd5bh		;7cf6
	ld hl,07ffah		;7cf9
	ld b,006h		;7cfc
	call 0bd46h		;7cfe
	jr nc,l7d09h		;7d01
	ld hl,lf0f5h		;7d03
	set 1,(hl)		;7d06
	ret			;7d08
l7d09h:
	ld de,lbd61h		;7d09
	ld hl,l4010h		;7d0c
	ld b,004h		;7d0f
	call 0bd46h		;7d11
	jr nc,l7d1ch		;7d14
	ld hl,lf0f5h		;7d16
	set 3,(hl)		;7d19
	ret			;7d1b
l7d1ch:
	ld de,lbd65h		;7d1c
	ld hl,l4010h		;7d1f
	ld b,004h		;7d22
	call 0bd46h		;7d24
	jr nc,l7d2fh		;7d27
	ld hl,lf0f5h		;7d29
	set 2,(hl)		;7d2c
	ret			;7d2e
l7d2fh:
	ld de,0bd69h		;7d2f
	ld hl,l4010h		;7d32
	ld b,004h		;7d35
	call 0bd46h		;7d37
l7d3ah:
	ret nc			;7d3a
	ld hl,lf0f5h		;7d3b
	set 0,(hl)		;7d3e
	ld a,001h		;7d40
	ld (le229h),a		;7d42
	ret			;7d45
l7d46h:
	push bc			;7d46
	push de			;7d47
	ld a,c			;7d48
	call l000ch		;7d49
	pop de			;7d4c
	pop bc			;7d4d
	ex de,hl		;7d4e
sub_7d4fh:
	cp (hl)			;7d4f
	ex de,hl		;7d50
	jr nz,l7d59h		;7d51
	inc hl			;7d53
	inc de			;7d54
	djnz l7d46h		;7d55
	scf			;7d57
	ret			;7d58
l7d59h:
	and a			;7d59
	ret			;7d5a
	nop			;7d5b
	jr nc,$+51		;7d5c
	inc de			;7d5e
	dec (hl)		;7d5f
	xor d			;7d60
	ld b,e			;7d61
	ld b,h			;7d62
	rlca			;7d63
	ld d,c			;7d64
	ld b,e			;7d65
	ld b,h			;7d66
	rlca			;7d67
	ld b,e			;7d68
	ld b,e			;7d69
	ld b,h			;7d6a
	rlca			;7d6b
	ld d,c			;7d6c
	push hl			;7d6d
	push bc			;7d6e
	ld hl,l0000h		;7d6f
	ld (le3e0h),hl		;7d72
	ld hl,le3e8h		;7d75
	ld b,008h		;7d78
l7d7ah:
	ld (hl),000h		;7d7a
	inc hl			;7d7c
	djnz l7d7ah		;7d7d
	pop bc			;7d7f
l7d80h:
	pop hl			;7d80
	ret			;7d81
	ld a,(le400h)		;7d82
	and a			;7d85
	ret m			;7d86
	ld a,(lf0f5h)		;7d87
	bit 0,a			;7d8a
	ret z			;7d8c
l7d8dh:
	call 0bed0h		;7d8d
	and a			;7d90
	ret z			;7d91
	ld hl,le3e1h		;7d92
	cp (hl)			;7d95
	ret z			;7d96
	ld (hl),a		;7d97
	ld c,a			;7d98
	cp 00dh			;7d99
	jr z,l7dadh		;7d9b
	ld hl,le3e0h		;7d9d
	ld a,(hl)		;7da0
	cp 008h			;7da1
	ret nc			;7da3
	inc (hl)		;7da4
	ld hl,le3e8h		;7da5
	call sub_407ah		;7da8
	ld (hl),c		;7dab
	ret			;7dac
l7dadh:
	ld hl,sub_bd6dh		;7dad
	push hl			;7db0
	ld bc,l02feh+2		;7db1
l7db4h:
	push bc			;7db4
	call 0bdbfh		;7db5
	pop bc			;7db8
	jr nc,l7dd4h		;7db9
	inc c			;7dbb
	djnz l7db4h		;7dbc
	ret			;7dbe
	ld hl,lbeb0h		;7dbf
	ld a,c			;7dc2
	call 04b67h		;7dc3
	ld hl,le3e8h		;7dc6
l7dc9h:
	ld a,(de)		;7dc9
	cp 00dh			;7dca
	ret z			;7dcc
	cp (hl)			;7dcd
	inc de			;7dce
	inc hl			;7dcf
	jr z,l7dc9h		;7dd0
	scf			;7dd2
	ret			;7dd3
l7dd4h:
	ld a,c			;7dd4
	call sub_4084h		;7dd5
	sbc a,0bdh		;7dd8
	adc a,l			;7dda
	cp (hl)			;7ddb
	sub (hl)		;7ddc
	cp (hl)			;7ddd
	ld a,(0e20fh)		;7dde
	add a,a			;7de1
	add a,a			;7de2
	add a,a			;7de3
	add a,a			;7de4
	ld hl,lbe0dh		;7de5
	call sub_407ah		;7de8
	ld de,le334h		;7deb
	ld bc,l0009h		;7dee
	ldir			;7df1
	ld de,le430h		;7df3
	ld bc,l0007h		;7df6
	ldir			;7df9
	call sub_8060h		;7dfb
	call sub_81b5h		;7dfe
	call 0448eh		;7e01
	ld a,(0e20fh)		;7e04
	cp 004h			;7e07
	ret nz			;7e09
	jp 04482h		;7e0a
	ld (bc),a		;7e0d
	rst 38h			;7e0e
	nop			;7e0f
	rst 38h			;7e10
	rst 38h			;7e11
	rst 38h			;7e12
sub_7e13h:
	nop			;7e13
	nop			;7e14
	nop			;7e15
	nop			;7e16
	nop			;7e17
	ld (bc),a		;7e18
	ld (bc),a		;7e19
	nop			;7e1a
	nop			;7e1b
	nop			;7e1c
	ld (bc),a		;7e1d
	rst 38h			;7e1e
	nop			;7e1f
	rst 38h			;7e20
	rst 38h			;7e21
	rst 38h			;7e22
	rst 38h			;7e23
	nop			;7e24
	nop			;7e25
	nop			;7e26
	nop			;7e27
	ld (bc),a		;7e28
	ld (bc),a		;7e29
	ld (bc),a		;7e2a
	nop			;7e2b
	nop			;7e2c
	ld (bc),a		;7e2d
	nop			;7e2e
	nop			;7e2f
l7e30h:
	nop			;7e30
	rst 38h			;7e31
	rst 38h			;7e32
	rst 38h			;7e33
	rst 38h			;7e34
	nop			;7e35
	nop			;7e36
	nop			;7e37
	ld (bc),a		;7e38
	nop			;7e39
	nop			;7e3a
	ld (bc),a		;7e3b
	nop			;7e3c
	ld (bc),a		;7e3d
	rst 38h			;7e3e
	nop			;7e3f
	rst 38h			;7e40
	nop			;7e41
	rst 38h			;7e42
	rst 38h			;7e43
	rst 38h			;7e44
	nop			;7e45
	nop			;7e46
	nop			;7e47
	ld (bc),a		;7e48
	inc bc			;7e49
	ld (bc),a		;7e4a
	nop			;7e4b
	nop			;7e4c
	ld (bc),a		;7e4d
	rst 38h			;7e4e
	rst 38h			;7e4f
	nop			;7e50
	nop			;7e51
	nop			;7e52
	rst 38h			;7e53
	rst 38h			;7e54
	nop			;7e55
	nop			;7e56
	nop			;7e57
	dec b			;7e58
	inc bc			;7e59
	nop			;7e5a
	nop			;7e5b
	nop			;7e5c
	ld (bc),a		;7e5d
	rst 38h			;7e5e
	nop			;7e5f
	rst 38h			;7e60
	nop			;7e61
	rst 38h			;7e62
	rst 38h			;7e63
	rst 38h			;7e64
	nop			;7e65
	nop			;7e66
	nop			;7e67
	inc bc			;7e68
	inc bc			;7e69
	ld (bc),a		;7e6a
	nop			;7e6b
	nop			;7e6c
	ld (bc),a		;7e6d
	rst 38h			;7e6e
	rst 38h			;7e6f
	nop			;7e70
	nop			;7e71
	nop			;7e72
	nop			;7e73
	rst 38h			;7e74
	rst 38h			;7e75
	ld bc,l0000h		;7e76
	inc bc			;7e79
	nop			;7e7a
	nop			;7e7b
	ld bc,lff02h		;7e7c
	nop			;7e7f
	rst 38h			;7e80
	rst 38h			;7e81
	nop			;7e82
	nop			;7e83
	rst 38h			;7e84
	nop			;7e85
	nop			;7e86
	nop			;7e87
	ld b,003h		;7e88
	ld (bc),a		;7e8a
	nop			;7e8b
	nop			;7e8c
	call 04a08h		;7e8d
	call 04c76h		;7e90
	jp 07c11h		;7e93
	ld hl,01e01h		;7e96
	ld (le446h),hl		;7e99
	ret			;7e9c
	ld hl,le446h		;7e9d
	ld a,(hl)		;7ea0
	or a			;7ea1
	ret z			;7ea2
	ld a,(le1c3h)		;7ea3
	and 01fh		;7ea6
	ret nz			;7ea8
	inc l			;7ea9
	dec (hl)		;7eaa
	ret nz			;7eab
	dec l			;7eac
	ld (hl),000h		;7ead
	ret			;7eaf
	or (hl)			;7eb0
	cp (hl)			;7eb1
	cp a			;7eb2
	cp (hl)			;7eb3
	rst 0			;7eb4
	cp (hl)			;7eb5
	ld c,h			;7eb6
	ld b,c			;7eb7
	ld d,d			;7eb8
	ld d,e			;7eb9
	ld sp,05438h		;7eba
	ld c,b			;7ebd
	dec c			;7ebe
	ld c,(hl)		;7ebf
	ld b,l			;7ec0
	ld c,l			;7ec1
sub_7ec2h:
	ld b,l			;7ec2
	ld d,e			;7ec3
	ld c,c			;7ec4
	ld d,e			;7ec5
sub_7ec6h:
	dec c			;7ec6
	ld c,l			;7ec7
	ld b,l			;7ec8
	ld d,h			;7ec9
	ld b,c			;7eca
	ld c,h			;7ecb
	ld c,c			;7ecc
	ld c,a			;7ecd
	ld c,(hl)		;7ece
	dec c			;7ecf
	ld b,008h		;7ed0
	ld e,000h		;7ed2
l7ed4h:
	ld a,e			;7ed4
	call sub_0141h		;7ed5
	cpl			;7ed8
	and a			;7ed9
	jr nz,l7ee4h		;7eda
	inc e			;7edc
	djnz l7ed4h		;7edd
	xor a			;7edf
	ld (le3e1h),a		;7ee0
	ret			;7ee3
l7ee4h:
	ld b,a			;7ee4
	ld a,e			;7ee5
	add a,a			;7ee6
	add a,a			;7ee7
	add a,a			;7ee8
	ld hl,0bef8h		;7ee9
	call sub_407ah		;7eec
	ld a,b			;7eef
l7ef0h:
	rra			;7ef0
	jr c,l7ef6h		;7ef1
	inc hl			;7ef3
	jr l7ef0h		;7ef4
l7ef6h:
	ld a,(hl)		;7ef6
	ret			;7ef7
	jr nc,l7f2bh		;7ef8
	ld (03433h),a		;7efa
	dec (hl)		;7efd
	ld (hl),037h		;7efe
	jr c,l7f3bh		;7f00
	dec l			;7f02
	ld e,(hl)		;7f03
	add hl,bc		;7f04
	ld b,b			;7f05
	ld e,e			;7f06
	dec sp			;7f07
	ld a,(02c5dh)		;7f08
	ld l,02fh		;7f0b
	ld e,a			;7f0d
l7f0eh:
	ld b,c			;7f0e
	ld b,d			;7f0f
	ld b,e			;7f10
	ld b,h			;7f11
	ld b,l			;7f12
	ld b,(hl)		;7f13
	ld b,a			;7f14
	ld c,b			;7f15
	ld c,c			;7f16
	ld c,d			;7f17
	ld c,e			;7f18
	ld c,h			;7f19
	ld c,l			;7f1a
	ld c,(hl)		;7f1b
	ld c,a			;7f1c
	ld d,b			;7f1d
	ld d,c			;7f1e
	ld d,d			;7f1f
	ld d,e			;7f20
	ld d,h			;7f21
	ld d,l			;7f22
	ld d,(hl)		;7f23
	ld d,a			;7f24
	ld e,b			;7f25
	ld e,c			;7f26
	ld e,d			;7f27
	nop			;7f28
	nop			;7f29
	nop			;7f2a
l7f2bh:
	nop			;7f2b
	nop			;7f2c
	nop			;7f2d
	nop			;7f2e
	nop			;7f2f
	nop			;7f30
	nop			;7f31
	nop			;7f32
	nop			;7f33
	nop			;7f34
	nop			;7f35
	nop			;7f36
	dec c			;7f37
	nop			;7f38
	nop			;7f39
	nop			;7f3a
l7f3bh:
	nop			;7f3b
	nop			;7f3c
	nop			;7f3d
	nop			;7f3e
	nop			;7f3f
l7f40h:
	ld a,(le400h)		;7f40
	dec a			;7f43
	ret m			;7f44
	ld a,(le3d0h)		;7f45
	and a			;7f48
	jr z,l7f5ah		;7f49
	ld hl,le3d5h		;7f4b
	dec (hl)		;7f4e
	ret nz			;7f4f
	ld a,002h		;7f50
	ld (le3d0h),a		;7f52
	ld a,03ch		;7f55
	jp l4ae4h		;7f57
l7f5ah:
	call sub_bf68h		;7f5a
	ld a,(le3d1h)		;7f5d
	and a			;7f60
	ret z			;7f61
	call 0bfb8h		;7f62
	jp lbfa6h		;7f65
	ld a,(0e320h)		;7f68
	and a			;7f6b
	ret z			;7f6c
	ld a,(le201h)		;7f6d
sub_7f70h:
	ld hl,(le203h)		;7f70
	cp 003h			;7f73
	jr z,l7f80h		;7f75
	cp 006h			;7f77
	jr z,l7f89h		;7f79
	cp 00ah			;7f7b
	jr z,l7f92h		;7f7d
l7f7fh:
	ret			;7f7f
l7f80h:
	ld de,00174h		;7f80
	rst 20h			;7f83
	ret nz			;7f84
	ld e,090h		;7f85
	jr l7f9bh		;7f87
l7f89h:
	ld de,l0164h		;7f89
	rst 20h			;7f8c
	ret nz			;7f8d
	ld e,088h		;7f8e
	jr l7f9bh		;7f90
l7f92h:
	ld de,l00dfh		;7f92
	rst 20h			;7f95
	ret nz			;7f96
	ld e,030h		;7f97
	jr l7f9bh		;7f99
l7f9bh:
	ld hl,le3d1h		;7f9b
	ld (hl),001h		;7f9e
	inc l			;7fa0
	ld (hl),e		;7fa1
	inc l			;7fa2
	ld (hl),0f0h		;7fa3
	ret			;7fa5
	ld a,(0e320h)		;7fa6
	and a			;7fa9
	ret z			;7faa
	ld hl,le3d3h		;7fab
	ld a,(hl)		;7fae
	sub 008h		;7faf
	ld (hl),a		;7fb1
	ret nc			;7fb2
sub_7fb3h:
	dec l			;7fb3
	dec l			;7fb4
	ld (hl),000h		;7fb5
sub_7fb7h:
	ret			;7fb7
	ld hl,le3d2h		;7fb8
	ld a,(le404h)		;7fbb
	sub (hl)		;7fbe
	add a,008h		;7fbf
	cp 018h			;7fc1
	ret nc			;7fc3
	inc l			;7fc4
	ld a,(le406h)		;7fc5
	sub (hl)		;7fc8
	cp 010h			;7fc9
	ret nc			;7fcb
	ld a,(le201h)		;7fcc
	cp 003h			;7fcf
	jr z,l7fe1h		;7fd1
	cp 006h			;7fd3
	jr z,l7fdch		;7fd5
	ld hl,l017fh		;7fd7
	jr l7fe4h		;7fda
l7fdch:
	ld hl,001dfh		;7fdc
	jr l7fe4h		;7fdf
l7fe1h:
	ld hl,l01ffh		;7fe1
l7fe4h:
	ld (le323h+2),hl	;7fe4
	ld a,040h		;7fe7
	ld (le3d5h),a		;7fe9
	xor a			;7fec
	ld (le3d1h),a		;7fed
	inc a			;7ff0
	ld (le3d0h),a		;7ff1
sub_7ff4h:
	call sub_8fa2h		;7ff4
	ld a,043h		;7ff7
	jp l4ae4h		;7ff9
	rst 38h			;7ffc
	rst 38h			;7ffd
	rst 38h			;7ffe
sub_7fffh:
	rst 38h			;7fff
	add a,b			;8000
l8001h:
	ld h,b			;8001
	and b			;8002
	ld h,b			;8003
	ret nz			;8004
	ld h,b			;8005
	ret po			;8006
	ld h,b			;8007
	nop			;8008
	ld h,c			;8009
	jr nz,l806dh		;800a
	ld b,b			;800c
	ld h,c			;800d
	ld h,b			;800e
	ld h,c			;800f
	add a,b			;8010
	ld h,c			;8011
	and b			;8012
sub_8013h:
	ld h,c			;8013
	ret nz			;8014
sub_8015h:
	ld h,c			;8015
	ret po			;8016
	ld h,c			;8017
	nop			;8018
l8019h:
	ld h,d			;8019
	jr nz,l807eh		;801a
	ld b,b			;801c
	ld h,d			;801d
	ld b,b			;801e
	ld h,d			;801f
	ld b,b			;8020
	ld h,d			;8021
	ld h,b			;8022
	ld h,d			;8023
	add a,b			;8024
	ld h,d			;8025
	and b			;8026
	ld h,d			;8027
sub_8028h:
	ret nz			;8028
	ld h,d			;8029
	ret po			;802a
	ld h,d			;802b
	nop			;802c
	ld h,e			;802d
	jr nz,l8093h		;802e
	ld b,b			;8030
	ld h,e			;8031
	ld h,b			;8032
	ld h,e			;8033
	add a,b			;8034
	ld h,e			;8035
	add a,b			;8036
	ld h,e			;8037
	add a,b			;8038
	ld h,e			;8039
	add a,b			;803a
	ld h,e			;803b
	and b			;803c
	ld h,e			;803d
	ret nz			;803e
	ld h,e			;803f
	ret nz			;8040
sub_8041h:
	ld h,e			;8041
	ret po			;8042
	ld h,e			;8043
	ret po			;8044
	ld h,e			;8045
	nop			;8046
	ld h,h			;8047
	nop			;8048
	ld h,h			;8049
sub_804ah:
	nop			;804a
	ld h,h			;804b
	nop			;804c
	ld h,h			;804d
	jr nz,l80b4h		;804e
	jr nz,l80b6h		;8050
	ld b,b			;8052
	ld h,h			;8053
	ld h,b			;8054
	ld h,h			;8055
	ld h,b			;8056
	ld h,h			;8057
	ld h,b			;8058
	ld h,h			;8059
	ld h,b			;805a
	ld h,h			;805b
	ld h,b			;805c
	ld h,h			;805d
	ld h,b			;805e
	ld h,h			;805f
sub_8060h:
	add a,b			;8060
	ld h,h			;8061
	add a,b			;8062
	ld h,h			;8063
	add a,b			;8064
	ld h,h			;8065
	add a,b			;8066
	ld h,h			;8067
	add a,b			;8068
	ld h,h			;8069
	add a,b			;806a
	ld h,h			;806b
	add a,b			;806c
l806dh:
	ld h,h			;806d
	add a,b			;806e
	ld h,h			;806f
	add a,b			;8070
	ld h,h			;8071
	add a,b			;8072
	ld h,h			;8073
l8074h:
	add a,b			;8074
	ld h,h			;8075
l8076h:
	add a,b			;8076
	ld h,h			;8077
	add a,b			;8078
	ld h,h			;8079
	add a,b			;807a
	ld h,h			;807b
	add a,b			;807c
	ld h,h			;807d
l807eh:
	add a,b			;807e
	ld h,h			;807f
	ld a,a			;8080
	ld a,a			;8081
	ld a,a			;8082
	ld a,a			;8083
	ld a,a			;8084
	ld a,a			;8085
	ld a,a			;8086
	ld a,a			;8087
	ld a,a			;8088
	ld a,a			;8089
	ld a,a			;808a
	ld a,a			;808b
	ld a,a			;808c
	ld a,a			;808d
	ld a,a			;808e
	ld a,a			;808f
	add a,b			;8090
	add a,b			;8091
	add a,b			;8092
l8093h:
	add a,b			;8093
	add a,b			;8094
	add a,b			;8095
	add a,b			;8096
	add a,b			;8097
	add a,b			;8098
	add a,b			;8099
	add a,b			;809a
	add a,b			;809b
	add a,b			;809c
	add a,b			;809d
	add a,b			;809e
	nop			;809f
	ld a,a			;80a0
	ld a,a			;80a1
	ld a,a			;80a2
	ld a,a			;80a3
	ld a,a			;80a4
	ld a,a			;80a5
	ld a,a			;80a6
	ld a,a			;80a7
	add a,b			;80a8
	add a,b			;80a9
	add a,b			;80aa
	add a,b			;80ab
	add a,b			;80ac
	add a,b			;80ad
	add a,b			;80ae
	add a,b			;80af
	ld a,a			;80b0
	ld a,a			;80b1
	ld a,a			;80b2
	ld a,a			;80b3
l80b4h:
	ld a,a			;80b4
l80b5h:
	ld a,a			;80b5
l80b6h:
	ld a,a			;80b6
	ld a,a			;80b7
	add a,b			;80b8
	add a,b			;80b9
	add a,b			;80ba
	add a,b			;80bb
	add a,b			;80bc
sub_80bdh:
	add a,b			;80bd
	add a,b			;80be
	add a,b			;80bf
	nop			;80c0
	ret m			;80c1
	ret p			;80c2
	ret pe			;80c3
	ret po			;80c4
	ret c			;80c5
l80c6h:
	ret nc			;80c6
	ret z			;80c7
	ret nz			;80c8
	cp b			;80c9
	or b			;80ca
	xor b			;80cb
	and b			;80cc
	sbc a,b			;80cd
sub_80ceh:
	sub b			;80ce
	adc a,b			;80cf
	add a,b			;80d0
	ld a,b			;80d1
	ld (hl),b		;80d2
	ld l,b			;80d3
	ld h,b			;80d4
	ld e,b			;80d5
	ld d,b			;80d6
	ld c,b			;80d7
sub_80d8h:
	ld b,b			;80d8
	jr c,l810bh		;80d9
	jr z,l80fdh		;80db
	jr l80efh		;80dd
	ex af,af'		;80df
	nop			;80e0
	ret p			;80e1
	ret po			;80e2
	ret nc			;80e3
	ret nz			;80e4
	or b			;80e5
	and b			;80e6
	sub b			;80e7
	add a,b			;80e8
	ld (hl),b		;80e9
	ld h,b			;80ea
	ld d,b			;80eb
	ld b,b			;80ec
	jr nc,l810fh		;80ed
l80efh:
	djnz l80f1h		;80ef
l80f1h:
	ret p			;80f1
	ret po			;80f2
	ret nc			;80f3
	ret nz			;80f4
	or b			;80f5
	and b			;80f6
	sub b			;80f7
	add a,b			;80f8
	ld (hl),b		;80f9
	ld h,b			;80fa
	ld d,b			;80fb
	ld b,b			;80fc
l80fdh:
	jr nc,l811fh		;80fd
	djnz l8101h		;80ff
l8101h:
	ld c,(hl)		;8101
	ld h,d			;8102
	ld l,l			;8103
	ld (hl),l		;8104
	ld a,d			;8105
	ld a,l			;8106
	ld a,(hl)		;8107
	ld a,a			;8108
	ld a,(hl)		;8109
	ld a,l			;810a
l810bh:
	ld a,d			;810b
	ld (hl),l		;810c
	ld l,l			;810d
	ld h,d			;810e
l810fh:
	ld c,(hl)		;810f
	nop			;8110
	or c			;8111
	sbc a,l			;8112
l8113h:
	sub d			;8113
	adc a,d			;8114
	add a,l			;8115
	add a,d			;8116
	add a,c			;8117
	add a,b			;8118
	add a,c			;8119
	add a,d			;811a
	add a,l			;811b
	adc a,d			;811c
	sub d			;811d
	sbc a,l			;811e
l811fh:
	or c			;811f
	nop			;8120
l8121h:
	add hl,de		;8121
	ld sp,l5a47h		;8122
	ld l,d			;8125
	ld (hl),l		;8126
	ld a,l			;8127
	ld a,a			;8128
	ld a,l			;8129
	ld (hl),l		;812a
	ld l,d			;812b
	ld e,d			;812c
	ld b,a			;812d
	ld sp,l0018h+1		;812e
l8131h:
	rst 20h			;8131
	rst 8			;8132
	cp c			;8133
	and (hl)		;8134
	sub (hl)		;8135
	adc a,e			;8136
l8137h:
	add a,e			;8137
	add a,b			;8138
	add a,e			;8139
	adc a,e			;813a
	sub (hl)		;813b
l813ch:
	and (hl)		;813c
	cp c			;813d
	rst 8			;813e
	rst 20h			;813f
	nop			;8140
l8141h:
	ret p			;8141
	ret po			;8142
	ret nc			;8143
	ret nz			;8144
	or b			;8145
l8146h:
	and b			;8146
	sub b			;8147
	add a,b			;8148
	sub b			;8149
	and b			;814a
	or b			;814b
	ret nz			;814c
	ret nc			;814d
	ret po			;814e
	ret p			;814f
	nop			;8150
	djnz l8173h		;8151
	jr nc,l8195h		;8153
	ld d,b			;8155
	ld h,b			;8156
	ld (hl),b		;8157
	ld a,a			;8158
	ld (hl),b		;8159
	ld h,b			;815a
	ld d,b			;815b
	ld b,b			;815c
	jr nc,l817fh		;815d
	djnz l8161h		;815f
l8161h:
	ret po			;8161
	ret nz			;8162
	and b			;8163
	add a,b			;8164
	and b			;8165
	ret nz			;8166
	ret po			;8167
	nop			;8168
	jr nz,l81abh		;8169
	ld h,b			;816b
	ld a,a			;816c
	ld h,b			;816d
	ld b,b			;816e
	jr nz,l8171h		;816f
l8171h:
	ret po			;8171
	ret nz			;8172
l8173h:
	and b			;8173
	add a,b			;8174
	and b			;8175
	ret nz			;8176
	ret po			;8177
	nop			;8178
	jr nz,l81bbh		;8179
	ld h,b			;817b
	ld a,a			;817c
	ld h,b			;817d
	ld b,b			;817e
l817fh:
	jr nz,l8181h		;817f
l8181h:
	add hl,de		;8181
	ld sp,l5a47h		;8182
	ld l,d			;8185
	ld (hl),l		;8186
	ld a,l			;8187
	ld a,a			;8188
	ld a,l			;8189
	ld (hl),l		;818a
	ld l,d			;818b
	ld e,d			;818c
	ld b,a			;818d
	ld sp,l0018h+1		;818e
	ret p			;8191
	ret po			;8192
	ret nc			;8193
	ret nz			;8194
l8195h:
	or b			;8195
sub_8196h:
	and b			;8196
	sub b			;8197
	add a,b			;8198
	sub b			;8199
	and b			;819a
	or b			;819b
	ret nz			;819c
	ret nc			;819d
	ret po			;819e
	ret p			;819f
	nop			;81a0
	add hl,de		;81a1
l81a2h:
	ld sp,l5a47h		;81a2
	ld l,d			;81a5
	ld (hl),l		;81a6
	ld a,l			;81a7
	ld a,a			;81a8
	ld a,l			;81a9
	ld (hl),l		;81aa
l81abh:
	ld l,d			;81ab
	ld e,d			;81ac
	ld b,a			;81ad
	ld sp,l0018h+1		;81ae
	ret po			;81b1
	ret nz			;81b2
	and b			;81b3
	add a,b			;81b4
sub_81b5h:
	and b			;81b5
	ret nz			;81b6
	ret po			;81b7
	nop			;81b8
	jr nz,l81fbh		;81b9
l81bbh:
	ld h,b			;81bb
	ld a,a			;81bc
	ld h,b			;81bd
	ld b,b			;81be
	jr nz,l81c1h		;81bf
l81c1h:
	add hl,de		;81c1
	ld sp,l5a47h		;81c2
	ld l,d			;81c5
	ld (hl),l		;81c6
	ld a,l			;81c7
	ld a,a			;81c8
	ld a,l			;81c9
l81cah:
	ld (hl),l		;81ca
	ld l,d			;81cb
	ld e,d			;81cc
	ld b,a			;81cd
	ld sp,l8019h		;81ce
	sub b			;81d1
l81d2h:
	and b			;81d2
	or b			;81d3
l81d4h:
	ret nz			;81d4
	ret nc			;81d5
	ret po			;81d6
	ret p			;81d7
	nop			;81d8
	djnz l81fbh		;81d9
	jr nc,l821dh		;81db
	ld d,b			;81dd
	ld h,b			;81de
	ld (hl),b		;81df
	nop			;81e0
	add hl,de		;81e1
	ld sp,l5a47h		;81e2
	ld l,d			;81e5
	ld (hl),l		;81e6
	ld a,l			;81e7
	ld a,a			;81e8
	ld a,l			;81e9
	ld (hl),l		;81ea
	ld l,d			;81eb
	ld e,d			;81ec
l81edh:
	ld b,a			;81ed
	ld sp,l8019h		;81ee
	and b			;81f1
	ret nz			;81f2
sub_81f3h:
	ret po			;81f3
	nop			;81f4
	jr nz,$+66		;81f5
	ld h,b			;81f7
	add a,b			;81f8
	and b			;81f9
	ret nz			;81fa
l81fbh:
	ret po			;81fb
	nop			;81fc
	jr nz,l823fh		;81fd
	ld h,b			;81ff
l8200h:
	ld bc,0402ah		;8200
	ld d,b			;8203
	ld e,h			;8204
	ld l,b			;8205
sub_8206h:
	ld (hl),b		;8206
	ld a,b			;8207
	ld a,a			;8208
	ld a,b			;8209
	ld (hl),b		;820a
	ld l,b			;820b
	ld e,h			;820c
	ld d,b			;820d
	ld b,b			;820e
	ld hl,(ld6ffh)		;820f
	ret nz			;8212
	or b			;8213
	and h			;8214
	sbc a,b			;8215
	sub b			;8216
	adc a,b			;8217
	add a,c			;8218
	adc a,b			;8219
	sub b			;821a
	sbc a,b			;821b
	and h			;821c
l821dh:
	or b			;821d
	ret nz			;821e
	sub 000h		;821f
	ld b,b			;8221
	ld a,a			;8222
	ld b,b			;8223
	ld bc,081c0h		;8224
	ret nz			;8227
	ld bc,l7f40h		;8228
	ld b,b			;822b
	ld bc,l01c0h		;822c
	ld b,b			;822f
	ld bc,001e0h		;8230
	jr nz,l8236h		;8233
	ret p			;8235
l8236h:
	ld bc,l0110h		;8236
	rst 38h			;8239
	rst 38h			;823a
	rst 38h			;823b
l823ch:
	rst 38h			;823c
	ld b,b			;823d
	ld b,b			;823e
l823fh:
	ld b,b			;823f
	nop			;8240
	ld b,b			;8241
	ld a,a			;8242
	ld b,b			;8243
	ld bc,02010h		;8244
	dec l			;8247
	scf			;8248
	ld b,h			;8249
	ld c,(hl)		;824a
	ld e,c			;824b
	ld h,e			;824c
	ld l,h			;824d
	ld (hl),e		;824e
	ld a,b			;824f
	ld a,h			;8250
	ld a,a			;8251
	ld a,h			;8252
	ld a,b			;8253
	ld (hl),e		;8254
	ld l,h			;8255
	ld e,c			;8256
	ld c,(hl)		;8257
	ld b,h			;8258
	scf			;8259
	dec l			;825a
	jr nz,l826dh		;825b
	inc bc			;825d
	ld (bc),a		;825e
	ld bc,04000h		;825f
	ld a,a			;8262
	ld b,b			;8263
	djnz $+3		;8264
	jp pe,0c3d6h		;8266
	cp c			;8269
	xor a			;826a
	and h			;826b
	sbc a,h			;826c
l826dh:
	sub l			;826d
	adc a,a			;826e
	adc a,d			;826f
	add a,(hl)		;8270
	add a,e			;8271
	add a,c			;8272
	add a,e			;8273
	add a,(hl)		;8274
	adc a,d			;8275
	adc a,a			;8276
	sub l			;8277
	sbc a,h			;8278
	and h			;8279
	xor a			;827a
	cp c			;827b
	jp lead6h		;827c
	rst 38h			;827f
	nop			;8280
	ld b,b			;8281
	ld a,a			;8282
	ld b,b			;8283
	nop			;8284
	ret nz			;8285
	rst 38h			;8286
	ret nz			;8287
	dec b			;8288
	ex de,hl		;8289
	sub 0c3h		;828a
	cp c			;828c
	xor a			;828d
	and h			;828e
	sbc a,h			;828f
	sub l			;8290
	adc a,a			;8291
l8292h:
	adc a,c			;8292
	add a,h			;8293
	add a,c			;8294
	add a,h			;8295
	adc a,c			;8296
	adc a,a			;8297
	sub l			;8298
	sbc a,h			;8299
	and h			;829a
	xor a			;829b
	cp c			;829c
	jp lead6h		;829d
	nop			;82a0
	ret p			;82a1
	ret po			;82a2
	ret nc			;82a3
	ret nz			;82a4
	or b			;82a5
	and b			;82a6
	sub b			;82a7
	add a,b			;82a8
	add a,b			;82a9
	add a,b			;82aa
	add a,b			;82ab
	add a,b			;82ac
	add a,b			;82ad
	add a,b			;82ae
	add a,b			;82af
	add a,b			;82b0
	add a,b			;82b1
	add a,b			;82b2
	add a,b			;82b3
l82b4h:
	add a,b			;82b4
	add a,b			;82b5
	add a,b			;82b6
	add a,b			;82b7
	ld a,a			;82b8
	ld (hl),b		;82b9
	ld h,b			;82ba
	ld d,b			;82bb
sub_82bch:
	ld b,b			;82bc
	jr nc,l82dfh		;82bd
	djnz l82c1h		;82bf
l82c1h:
	jr nc,$+82		;82c1
	ld h,b			;82c3
	ld (hl),b		;82c4
	ld h,b			;82c5
	ld d,b			;82c6
	jr nc,l82c9h		;82c7
l82c9h:
	ret nc			;82c9
	or b			;82ca
	and b			;82cb
	sub b			;82cc
	and b			;82cd
	or b			;82ce
	ret nc			;82cf
	nop			;82d0
	ld b,b			;82d1
	ld h,b			;82d2
	ld (hl),b		;82d3
	ld h,b			;82d4
	ld b,b			;82d5
	nop			;82d6
	ret nz			;82d7
	and b			;82d8
	sub b			;82d9
	and b			;82da
	ret nz			;82db
	nop			;82dc
l82ddh:
	ld (hl),b		;82dd
	nop			;82de
l82dfh:
	sub b			;82df
	jr nc,l8332h		;82e0
	ld d,b			;82e2
	jr nc,l82e5h		;82e3
l82e5h:
	nop			;82e5
	djnz l8328h		;82e6
	ld h,b			;82e8
	ld (hl),b		;82e9
	ld h,b			;82ea
	jr nc,l82ddh		;82eb
	ret po			;82ed
	ret po			;82ee
	nop			;82ef
	jr nz,l8312h		;82f0
	djnz l82b4h		;82f2
	and b			;82f4
	sub b			;82f5
	and b			;82f6
	ret nz			;82f7
	nop			;82f8
l82f9h:
	nop			;82f9
	ret nc			;82fa
	or b			;82fb
	or b			;82fc
	ret nc			;82fd
l82feh:
	nop			;82fe
	nop			;82ff
	and b			;8300
	sub b			;8301
	sub b			;8302
	and b			;8303
	and b			;8304
	or b			;8305
	or b			;8306
l8307h:
	or b			;8307
	ret nz			;8308
	ret nz			;8309
	ret nc			;830a
	ret nc			;830b
	ret po			;830c
	ret po			;830d
	ret p			;830e
	ret p			;830f
	nop			;8310
	nop			;8311
l8312h:
	djnz l8324h		;8312
	jr nz,l8336h		;8314
	jr nc,l8348h		;8316
	ld b,b			;8318
	ld b,b			;8319
	ld d,b			;831a
	ld d,b			;831b
	ld h,b			;831c
	ld h,b			;831d
	ld h,b			;831e
	ld d,b			;831f
	nop			;8320
	ld a,a			;8321
	nop			;8322
	add a,b			;8323
l8324h:
	and b			;8324
	ret nz			;8325
	ret c			;8326
	ret p			;8327
l8328h:
	ex af,af'		;8328
	jr nz,l835bh		;8329
	ld b,b			;832b
	ld d,b			;832c
	ld h,b			;832d
	ld (hl),b		;832e
	ld a,b			;832f
	ld a,h			;8330
	ld a,a			;8331
l8332h:
	ld a,h			;8332
	ld a,b			;8333
	ld (hl),b		;8334
	ld h,b			;8335
l8336h:
	ld d,b			;8336
	ld b,b			;8337
	jr nc,l835ah		;8338
	ex af,af'		;833a
	ret p			;833b
	ret c			;833c
	ret nz			;833d
	and b			;833e
	add a,b			;833f
	ld a,a			;8340
	add a,b			;8341
	ld a,a			;8342
	add a,b			;8343
	ld a,a			;8344
	add a,b			;8345
	ld a,a			;8346
	add a,b			;8347
l8348h:
	ld a,a			;8348
	add a,b			;8349
	ld a,a			;834a
	add a,b			;834b
	ld a,a			;834c
	add a,b			;834d
	ld a,a			;834e
	add a,b			;834f
	ld a,a			;8350
	add a,b			;8351
	ld a,a			;8352
	add a,b			;8353
	ld a,a			;8354
	add a,b			;8355
	ld a,a			;8356
	add a,b			;8357
	ld a,a			;8358
	add a,b			;8359
l835ah:
	ld a,a			;835a
l835bh:
	add a,b			;835b
	ld a,a			;835c
	add a,b			;835d
	ld a,a			;835e
	add a,b			;835f
	ld a,a			;8360
	add a,b			;8361
	ld a,a			;8362
	add a,b			;8363
	ld a,a			;8364
	add a,b			;8365
	ld a,a			;8366
	add a,b			;8367
	nop			;8368
	nop			;8369
	nop			;836a
	nop			;836b
	nop			;836c
	nop			;836d
	nop			;836e
	nop			;836f
	nop			;8370
	nop			;8371
	nop			;8372
	nop			;8373
	nop			;8374
	nop			;8375
	nop			;8376
	nop			;8377
	ld a,a			;8378
	add a,b			;8379
	ld a,a			;837a
l837bh:
	add a,b			;837b
	ld a,a			;837c
	add a,b			;837d
	ld a,a			;837e
	add a,b			;837f
	nop			;8380
	ld (hl),b		;8381
	ld d,b			;8382
	jr nz,l83d5h		;8383
	ld (hl),b		;8385
	jr nc,sub_8388h		;8386
sub_8388h:
	ld d,b			;8388
	ld a,a			;8389
	ld h,b			;838a
	djnz l83bdh		;838b
	ld b,b			;838d
	nop			;838e
	or b			;838f
	djnz l83f2h		;8390
	nop			;8392
	ret po			;8393
	ret p			;8394
sub_8395h:
	nop			;8395
	or b			;8396
	sub b			;8397
	ret nz			;8398
	djnz l837bh		;8399
	and b			;839b
	ret nz			;839c
	ret p			;839d
	ret nz			;839e
	and b			;839f
	add a,b			;83a0
	adc a,b			;83a1
	sub b			;83a2
	sbc a,b			;83a3
	and b			;83a4
	or b			;83a5
	or b			;83a6
	cp b			;83a7
	ret nz			;83a8
	ret z			;83a9
	ret nc			;83aa
	ret c			;83ab
	ret po			;83ac
	ret pe			;83ad
	ret p			;83ae
	ret m			;83af
	nop			;83b0
	ex af,af'		;83b1
	djnz l83cch		;83b2
	jr nz,l83deh		;83b4
	jr nc,l83f0h		;83b6
	ld b,b			;83b8
	ld c,b			;83b9
	ld d,b			;83ba
	ld e,b			;83bb
	ld h,b			;83bc
l83bdh:
	ld l,b			;83bd
	ld (hl),b		;83be
	ld a,b			;83bf
	nop			;83c0
	nop			;83c1
	nop			;83c2
	nop			;83c3
	nop			;83c4
	ld a,b			;83c5
	ld a,b			;83c6
	nop			;83c7
	nop			;83c8
	add a,b			;83c9
	add a,b			;83ca
	add a,b			;83cb
l83cch:
	nop			;83cc
	nop			;83cd
	nop			;83ce
	nop			;83cf
	ld a,b			;83d0
	ld a,b			;83d1
	ld a,b			;83d2
	nop			;83d3
l83d4h:
	add a,b			;83d4
l83d5h:
	add a,b			;83d5
	nop			;83d6
	nop			;83d7
	nop			;83d8
sub_83d9h:
	nop			;83d9
	ld a,b			;83da
	ld a,b			;83db
	nop			;83dc
	nop			;83dd
l83deh:
	add a,b			;83de
	add a,b			;83df
	ld a,b			;83e0
	ld a,b			;83e1
	ld a,b			;83e2
	ld a,b			;83e3
	ld a,b			;83e4
	ld a,b			;83e5
	ld a,b			;83e6
	ld a,b			;83e7
sub_83e8h:
	add a,b			;83e8
	add a,b			;83e9
	add a,b			;83ea
	add a,b			;83eb
	add a,b			;83ec
l83edh:
	add a,b			;83ed
sub_83eeh:
	add a,b			;83ee
	add a,b			;83ef
l83f0h:
	add a,b			;83f0
	add a,b			;83f1
l83f2h:
	add a,b			;83f2
	add a,b			;83f3
	add a,b			;83f4
	add a,b			;83f5
	add a,b			;83f6
	add a,b			;83f7
	add a,b			;83f8
	add a,b			;83f9
	add a,b			;83fa
sub_83fbh:
	add a,b			;83fb
	add a,b			;83fc
	add a,b			;83fd
	add a,b			;83fe
	add a,b			;83ff
	nop			;8400
l8401h:
	nop			;8401
	nop			;8402
	add a,b			;8403
	nop			;8404
	ld (hl),b		;8405
	ld (hl),b		;8406
	ld (hl),b		;8407
	nop			;8408
	nop			;8409
	nop			;840a
	add a,b			;840b
	nop			;840c
	nop			;840d
	nop			;840e
	add a,b			;840f
	add a,b			;8410
	add a,b			;8411
	add a,b			;8412
sub_8413h:
	nop			;8413
	add a,b			;8414
	nop			;8415
	nop			;8416
	nop			;8417
	nop			;8418
	add a,b			;8419
	add a,b			;841a
	add a,b			;841b
	nop			;841c
	add a,b			;841d
	add a,b			;841e
	add a,b			;841f
	ld (hl),b		;8420
	ld (hl),b		;8421
	ld (hl),b		;8422
	ld (hl),b		;8423
	ld (hl),b		;8424
	ld (hl),b		;8425
	ld (hl),b		;8426
	ld (hl),b		;8427
	add a,b			;8428
	add a,b			;8429
	add a,b			;842a
	add a,b			;842b
	add a,b			;842c
	add a,b			;842d
	add a,b			;842e
	add a,b			;842f
	ld (hl),b		;8430
	ld (hl),b		;8431
	ld (hl),b		;8432
	add a,b			;8433
	add a,b			;8434
	add a,b			;8435
	ld (hl),b		;8436
	ld (hl),b		;8437
	ld (hl),b		;8438
	ld (hl),b		;8439
	add a,b			;843a
	add a,b			;843b
	add a,b			;843c
	add a,b			;843d
	add a,b			;843e
	add a,b			;843f
	and b			;8440
	sub b			;8441
	sub b			;8442
	sub b			;8443
	and b			;8444
	and b			;8445
	or b			;8446
	or b			;8447
	ret nz			;8448
	ret nz			;8449
sub_844ah:
	ret nc			;844a
	ret nc			;844b
	ret po			;844c
	ret po			;844d
	ret p			;844e
	ret p			;844f
	nop			;8450
	nop			;8451
	djnz l8464h		;8452
	jr nz,l8476h		;8454
	jr nc,l8488h		;8456
	ld b,b			;8458
	ld b,b			;8459
	ld d,b			;845a
	ld d,b			;845b
	ld h,b			;845c
	ld h,b			;845d
	ld h,b			;845e
	ld d,b			;845f
	ret m			;8460
	ret p			;8461
	ret pe			;8462
	ret po			;8463
l8464h:
	ret c			;8464
sub_8465h:
	ret nc			;8465
	ret z			;8466
	ret nz			;8467
	cp b			;8468
	or b			;8469
	xor b			;846a
	and b			;846b
	sbc a,b			;846c
	sub b			;846d
	adc a,b			;846e
	add a,b			;846f
	ld a,b			;8470
	ld (hl),b		;8471
	ld l,b			;8472
	ld h,b			;8473
	ld e,b			;8474
	ld d,b			;8475
l8476h:
	ld c,b			;8476
	ld b,b			;8477
	jr c,$+50		;8478
	jr z,$+34		;847a
	jr $+18			;847c
	ex af,af'		;847e
	nop			;847f
	ld c,a			;8480
l8481h:
	cp 0f0h			;8481
	jp z,0658dh		;8483
	cp 0f1h			;8486
l8488h:
	jp z,06594h		;8488
	cp 0f2h			;848b
	jp z,065a1h		;848d
	cp 0f3h			;8490
	call z,065deh		;8492
	ld hl,le078h		;8495
	ld a,c			;8498
	cp 005h			;8499
	jr nz,l84a0h		;849b
	ld a,(hl)		;849d
	cp c			;849e
	ret z			;849f
l84a0h:
	ld a,c			;84a0
	cp 012h			;84a1
	jr nz,l84a8h		;84a3
	ld a,(hl)		;84a5
	cp c			;84a6
	ret z			;84a7
l84a8h:
	ld a,c			;84a8
	cp 014h			;84a9
	jr nz,l84b0h		;84ab
	ld a,(hl)		;84ad
	cp c			;84ae
	ret z			;84af
l84b0h:
	ld hl,le191h		;84b0
	ld (hl),c		;84b3
	ld hl,l6612h		;84b4
	ld a,c			;84b7
	add a,c			;84b8
	ld e,a			;84b9
	ld d,000h		;84ba
sub_84bch:
	add hl,de		;84bc
	ld e,(hl)		;84bd
	inc hl			;84be
	ld d,(hl)		;84bf
	ex de,hl		;84c0
	ld de,le192h		;84c1
	ld bc,l0012h		;84c4
	ldir			;84c7
	ld ix,le194h		;84c9
	ld hl,le192h		;84cd
	bit 7,(hl)		;84d0
	jr z,l84e0h		;84d2
	inc hl			;84d4
	ld a,(hl)		;84d5
	ld hl,le001h		;84d6
	call sub_655dh		;84d9
	inc ix			;84dc
	inc ix			;84de
l84e0h:
	ld hl,le192h		;84e0
	bit 6,(hl)		;84e3
	jr z,l84f3h		;84e5
	inc hl			;84e7
	ld a,(hl)		;84e8
	ld hl,le029h		;84e9
	call sub_655dh		;84ec
	inc ix			;84ef
	inc ix			;84f1
l84f3h:
	ld hl,le192h		;84f3
	bit 5,(hl)		;84f6
	jr z,l8506h		;84f8
	inc hl			;84fa
	ld a,(hl)		;84fb
	ld hl,le051h		;84fc
	call sub_655dh		;84ff
l8502h:
	inc ix			;8502
	inc ix			;8504
l8506h:
	ld hl,le192h		;8506
	bit 4,(hl)		;8509
	jr z,l8519h		;850b
	inc hl			;850d
	ld a,(hl)		;850e
	ld hl,le079h		;850f
	call sub_655dh		;8512
	inc ix			;8515
	inc ix			;8517
l8519h:
	ld hl,le192h		;8519
	bit 3,(hl)		;851c
	jr z,l852ch		;851e
	inc hl			;8520
	ld a,(hl)		;8521
	ld hl,le0a1h		;8522
	call sub_655dh		;8525
	inc ix			;8528
	inc ix			;852a
l852ch:
	ld hl,le192h		;852c
	bit 2,(hl)		;852f
	jr z,l853fh		;8531
	inc hl			;8533
	ld a,(hl)		;8534
	ld hl,le0c9h		;8535
	call sub_655dh		;8538
	inc ix			;853b
	inc ix			;853d
l853fh:
	ld hl,le192h		;853f
	bit 1,(hl)		;8542
	jr z,l8552h		;8544
	inc hl			;8546
	ld a,(hl)		;8547
	ld hl,le0f1h		;8548
	call sub_655dh		;854b
	inc ix			;854e
	inc ix			;8550
l8552h:
	ld hl,le192h		;8552
sub_8555h:
	bit 0,(hl)		;8555
	ret z			;8557
	inc hl			;8558
	ld a,(hl)		;8559
	ld hl,le119h		;855a
	ld b,(hl)		;855d
	cp b			;855e
	ret c			;855f
	ex de,hl		;8560
	ld (de),a		;8561
	dec de			;8562
	ld hl,le191h		;8563
	ld a,(hl)		;8566
	ld (de),a		;8567
	inc de			;8568
	inc de			;8569
	ld a,(ix+000h)		;856a
	ld (de),a		;856d
	inc de			;856e
	ld a,(ix+001h)		;856f
	ld (de),a		;8572
	inc de			;8573
	ld hl,l657dh		;8574
	ld bc,l0010h		;8577
	ldir			;857a
	ret			;857c
	ld bc,l0000h		;857d
	nop			;8580
	nop			;8581
	nop			;8582
	nop			;8583
	nop			;8584
l8585h:
	nop			;8585
	nop			;8586
	nop			;8587
	nop			;8588
	nop			;8589
	nop			;858a
	nop			;858b
	nop			;858c
	ld hl,0e190h		;858d
	res 0,(hl)		;8590
sub_8592h:
	jr l8599h		;8592
	ld hl,0e190h		;8594
	set 0,(hl)		;8597
l8599h:
	ld hl,le1a4h		;8599
	xor a			;859c
	ld (hl),a		;859d
	inc hl			;859e
	ld (hl),a		;859f
	ret			;85a0
	ld hl,0e190h		;85a1
	res 1,(hl)		;85a4
	bit 3,(hl)		;85a6
	jr z,l85aeh		;85a8
	res 3,(hl)		;85aa
	set 0,(hl)		;85ac
l85aeh:
	ld hl,le140h		;85ae
	ld de,le000h		;85b1
	call l660dh+1		;85b4
	ld a,(le1c0h)		;85b7
	ld e,a			;85ba
	ld a,03fh		;85bb
	ld (l9000h),a		;85bd
	ld a,e			;85c0
	ld (l988fh),a		;85c1
	ld a,005h		;85c4
sub_85c6h:
	ld (l9000h),a		;85c6
	ld a,0ffh		;85c9
	ld hl,le1aeh		;85cb
	ld (hl),a		;85ce
	inc hl			;85cf
	ld (hl),a		;85d0
	call 071aeh		;85d1
	ld hl,le05dh		;85d4
	ld a,(hl)		;85d7
	rrca			;85d8
	rrca			;85d9
	rrca			;85da
l85dbh:
	rrca			;85db
	ld (hl),a		;85dc
	ret			;85dd
	ld hl,0e190h		;85de
	set 1,(hl)		;85e1
	bit 0,(hl)		;85e3
	jr z,l85ebh		;85e5
	res 0,(hl)		;85e7
	set 3,(hl)		;85e9
l85ebh:
	ld hl,le000h		;85eb
	ld de,le140h		;85ee
	call l660dh+1		;85f1
	ld a,03fh		;85f4
	ld (l9000h),a		;85f6
	xor a			;85f9
	ld (l988fh),a		;85fa
	ld a,005h		;85fd
sub_85ffh:
	ld (l9000h),a		;85ff
	ld hl,le05dh		;8602
	ld a,(hl)		;8605
	rlca			;8606
	rlca			;8607
	rlca			;8608
l8609h:
	rlca			;8609
	ld (hl),a		;860a
	ld c,00dh		;860b
	ret			;860d
	ld bc,sub_0050h		;860e
	ldir			;8611
	ret			;8613
	sbc a,d			;8614
	ld h,(hl)		;8615
	and b			;8616
	ld h,(hl)		;8617
	and (hl)		;8618
	ld h,(hl)		;8619
	xor h			;861a
	ld h,(hl)		;861b
	or d			;861c
	ld h,(hl)		;861d
	cp b			;861e
	ld h,(hl)		;861f
	cp (hl)			;8620
	ld h,(hl)		;8621
	call nz,0ca66h		;8622
	ld h,(hl)		;8625
l8626h:
	ret nc			;8626
	ld h,(hl)		;8627
	sub 066h		;8628
	call c,0e266h		;862a
	ld h,(hl)		;862d
	ret pe			;862e
	ld h,(hl)		;862f
	xor 066h		;8630
	call p,sub_fa66h	;8632
	ld h,(hl)		;8635
	nop			;8636
	ld h,a			;8637
	ld b,067h		;8638
	inc c			;863a
	ld h,a			;863b
	ld (de),a		;863c
	ld h,a			;863d
	jr l86a7h		;863e
	ld e,067h		;8640
	inc h			;8642
	ld h,a			;8643
	ld hl,(03067h)		;8644
	ld h,a			;8647
	ld (hl),067h		;8648
	inc a			;864a
	ld h,a			;864b
	ld b,d			;864c
	ld h,a			;864d
	ld c,b			;864e
	ld h,a			;864f
	ld c,(hl)		;8650
	ld h,a			;8651
	ld d,h			;8652
sub_8653h:
	ld h,a			;8653
	ld e,d			;8654
	ld h,a			;8655
	ld h,b			;8656
	ld h,a			;8657
	ld h,(hl)		;8658
	ld h,a			;8659
	ld l,h			;865a
	ld h,a			;865b
	ld (hl),d		;865c
	ld h,a			;865d
	ld a,b			;865e
	ld h,a			;865f
	ld a,(hl)		;8660
	ld h,a			;8661
	add a,h			;8662
	ld h,a			;8663
	adc a,d			;8664
	ld h,a			;8665
	sbc a,b			;8666
	ld h,a			;8667
	and (hl)		;8668
	ld h,a			;8669
	or h			;866a
	ld h,a			;866b
	jp nz,0d067h		;866c
	ld h,a			;866f
	sbc a,067h		;8670
	call pe,sub_fa67h	;8672
	ld h,a			;8675
	ex af,af'		;8676
	ld l,b			;8677
sub_8678h:
	ld d,068h		;8678
	inc h			;867a
	ld l,b			;867b
	ld (04068h),a		;867c
	ld l,b			;867f
	ld c,(hl)		;8680
	ld l,b			;8681
	ld h,b			;8682
	ld l,b			;8683
	ld (hl),d		;8684
	ld l,b			;8685
	add a,h			;8686
	ld l,b			;8687
	sub (hl)		;8688
	ld l,b			;8689
	xor b			;868a
	ld l,b			;868b
	cp d			;868c
sub_868dh:
	ld l,b			;868d
	call z,0de68h		;868e
	ld l,b			;8691
	ret p			;8692
	ld l,b			;8693
	cp 068h			;8694
	djnz l8701h		;8696
	ld (l9069h),hl		;8698
	ld (bc),a		;869b
	call c,sub_e872h	;869c
	ld (hl),d		;869f
sub_86a0h:
	sub b			;86a0
	inc bc			;86a1
	ld de,l1573h		;86a2
	ld (hl),e		;86a5
	sub b			;86a6
l86a7h:
	inc bc			;86a7
	ld b,l			;86a8
	ld (hl),e		;86a9
	ld l,d			;86aa
	ld (hl),e		;86ab
	sub b			;86ac
	ld a,(bc)		;86ad
	xor a			;86ae
	ld (hl),e		;86af
	or (hl)			;86b0
sub_86b1h:
	ld (hl),e		;86b1
	sub b			;86b2
	ex af,af'		;86b3
	ret po			;86b4
	ld (hl),e		;86b5
	ret m			;86b6
	ld (hl),e		;86b7
	sub b			;86b8
	dec c			;86b9
	jr nz,$+118		;86ba
	inc h			;86bc
	ld (hl),h		;86bd
	sub b			;86be
	ex af,af'		;86bf
	ld h,e			;86c0
	ld (hl),h		;86c1
	ld h,a			;86c2
	ld (hl),h		;86c3
	sub b			;86c4
	ex af,af'		;86c5
	and h			;86c6
	ld (hl),h		;86c7
	bit 6,h			;86c8
	sub b			;86ca
	ld (de),a		;86cb
sub_86cch:
	rst 30h			;86cc
	ld (hl),h		;86cd
	ei			;86ce
	ld (hl),h		;86cf
	sub b			;86d0
	inc c			;86d1
	ccf			;86d2
	ld (hl),l		;86d3
	ld c,e			;86d4
	ld (hl),l		;86d5
	sub b			;86d6
	ld (de),a		;86d7
	sub h			;86d8
	ld (hl),l		;86d9
	sbc a,b			;86da
	ld (hl),l		;86db
	sub b			;86dc
	ld (075c9h),hl		;86dd
	call pe,sub_c075h	;86e0
	ld (hl),b		;86e3
	ld l,(hl)		;86e4
	halt			;86e5
	ld (hl),b		;86e6
	halt			;86e7
	sub b			;86e8
	inc b			;86e9
	add a,(hl)		;86ea
	halt			;86eb
	adc a,d			;86ec
	halt			;86ed
	sub b			;86ee
	rrca			;86ef
	ret nz			;86f0
sub_86f1h:
	halt			;86f1
	ld (bc),a		;86f2
	ld (hl),a		;86f3
	sub b			;86f4
	rrca			;86f5
	ld a,a			;86f6
	ld (hl),a		;86f7
	sbc a,h			;86f8
l86f9h:
	ld (hl),a		;86f9
	sub b			;86fa
	ld a,(bc)		;86fb
	ld (iy+022h),a		;86fc
	ld a,b			;86ff
l8700h:
	sub b			;8700
l8701h:
	inc b			;8701
	ld b,l			;8702
	ld a,b			;8703
	ld h,a			;8704
	ld a,b			;8705
	sub b			;8706
	dec bc			;8707
	sbc a,c			;8708
	ld a,b			;8709
	xor (hl)		;870a
	ld a,b			;870b
sub_870ch:
	sub b			;870c
	inc b			;870d
	inc de			;870e
	ld a,c			;870f
	dec l			;8710
	ld a,c			;8711
	sub b			;8712
	inc b			;8713
	ld e,c			;8714
	ld a,c			;8715
	ld h,d			;8716
	ld a,c			;8717
	sub b			;8718
	add hl,bc		;8719
	sub c			;871a
	ld a,c			;871b
	sub c			;871c
	ld a,c			;871d
	sub b			;871e
	add hl,bc		;871f
	jp nc,02179h		;8720
	ld a,d			;8723
	sub b			;8724
	add hl,bc		;8725
	xor b			;8726
	ld a,d			;8727
	xor h			;8728
	ld a,d			;8729
sub_872ah:
	sub b			;872a
	add hl,bc		;872b
	ret m			;872c
	ld a,h			;872d
	ld bc,0907dh		;872e
	dec b			;8731
	jp p,01e7ah		;8732
	ld a,e			;8735
l8736h:
	sub b			;8736
	rlca			;8737
	ld c,b			;8738
	ld a,e			;8739
	ld l,h			;873a
	ld a,e			;873b
	sub b			;873c
sub_873dh:
	rlca			;873d
	and (hl)		;873e
	ld a,e			;873f
	rst 20h			;8740
	ld a,e			;8741
	sub b			;8742
	ld a,(bc)		;8743
	dec d			;8744
	ld a,h			;8745
	dec d			;8746
	ld a,h			;8747
	sub b			;8748
	ld c,05ah		;8749
	ld a,h			;874b
	ld e,d			;874c
	ld a,h			;874d
	sub b			;874e
	inc c			;874f
	and d			;8750
	ld a,h			;8751
	ret nz			;8752
	ld a,h			;8753
	sub b			;8754
	ld a,(bc)		;8755
l8756h:
	ld l,h			;8756
	ld a,l			;8757
	ld (hl),l		;8758
	ld a,l			;8759
	sub b			;875a
	dec bc			;875b
	jr c,l87dbh		;875c
	inc a			;875e
	ld a,l			;875f
	sub b			;8760
	ld (de),a		;8761
l8762h:
	add hl,bc		;8762
	ld a,(hl)		;8763
	dec de			;8764
	ld a,(hl)		;8765
	sub b			;8766
	ld (de),a		;8767
	sub b			;8768
	ld a,l			;8769
	sbc a,c			;876a
	ld a,l			;876b
	sub b			;876c
	ld (de),a		;876d
	ld b,c			;876e
	halt			;876f
	ld c,h			;8770
	halt			;8771
	sub b			;8772
	ld a,(bc)		;8773
	ld l,h			;8774
	ld a,(hl)		;8775
	adc a,(hl)		;8776
	ld a,(hl)		;8777
	sub b			;8778
	ld a,(bc)		;8779
	rst 8			;877a
	ld a,l			;877b
	jp c,0907dh		;877c
	ld (de),a		;877f
	cp b			;8780
	ld a,(hl)		;8781
	defb 0edh ;next byte illegal after ed	;8782
	ld a,(hl)		;8783
	sub b			;8784
	ld (de),a		;8785
	inc h			;8786
	ld a,a			;8787
	dec (hl)		;8788
	ld a,a			;8789
	ld l,a			;878a
	ld d,0b0h		;878b
	and e			;878d
	xor 0a3h		;878e
	ld l,(hl)		;8790
	and h			;8791
	sub 0a4h		;8792
	scf			;8794
	and l			;8795
	sbc a,a			;8796
	and l			;8797
sub_8798h:
	ld l,a			;8798
	ld d,0a4h		;8799
	add a,h			;879b
	and h			;879c
	add a,h			;879d
	and h			;879e
	add a,h			;879f
	and h			;87a0
	add a,h			;87a1
	and h			;87a2
	add a,h			;87a3
sub_87a4h:
	and h			;87a4
	add a,h			;87a5
	ld l,a			;87a6
	ld d,0a6h		;87a7
	add a,h			;87a9
	xor 084h		;87aa
	ret z			;87ac
	add a,l			;87ad
	jr c,l8736h		;87ae
	rlca			;87b0
	add a,a			;87b1
	ld (hl),e		;87b2
l87b3h:
	add a,a			;87b3
sub_87b4h:
	ld l,a			;87b4
	ld d,0dch		;87b5
	add a,a			;87b7
	rra			;87b8
	adc a,b			;87b9
	call pe,06f88h		;87ba
	adc a,c			;87bd
	jp p,la489h		;87be
sub_87c1h:
	adc a,d			;87c1
	ld l,a			;87c2
	ld d,0f3h		;87c3
	adc a,e			;87c5
	ld d,c			;87c6
	adc a,e			;87c7
	jr nz,l8756h		;87c8
	ld a,e			;87ca
	adc a,h			;87cb
	xor b			;87cc
	adc a,l			;87cd
	add a,(hl)		;87ce
	adc a,(hl)		;87cf
	ld l,a			;87d0
	ld d,061h		;87d1
	adc a,a			;87d3
	jp p,0918fh		;87d4
	sub b			;87d7
	inc h			;87d8
	sub c			;87d9
	and d			;87da
l87dbh:
	sub c			;87db
sub_87dch:
	ld e,b			;87dc
	sub d			;87dd
	ld l,a			;87de
	ld d,09ch		;87df
	sub d			;87e1
	sbc a,h			;87e2
	sub d			;87e3
	sbc a,h			;87e4
	sub d			;87e5
	sbc a,h			;87e6
	sub d			;87e7
	sbc a,h			;87e8
	sub d			;87e9
	sbc a,h			;87ea
	sub d			;87eb
sub_87ech:
	ld l,a			;87ec
	ld d,09dh		;87ed
	sub d			;87ef
	ld sp,hl		;87f0
	sub d			;87f1
	ld a,h			;87f2
	sub e			;87f3
	sub h			;87f4
	sub h			;87f5
	adc a,b			;87f6
	sub l			;87f7
	ld de,l6f96h		;87f8
	ld d,097h		;87fb
	sub (hl)		;87fd
	rst 38h			;87fe
	sub (hl)		;87ff
	ret z			;8800
	sub a			;8801
	dec sp			;8802
	sbc a,b			;8803
	ld (de),a		;8804
	sbc a,c			;8805
	call 06f99h		;8806
	ld d,065h		;8809
	sbc a,d			;880b
	and l			;880c
	sbc a,d			;880d
	ret m			;880e
	sbc a,d			;880f
	ex af,af'		;8810
	sbc a,h			;8811
	sub c			;8812
	sbc a,h			;8813
l8814h:
	jr z,l87b3h		;8814
	ld l,a			;8816
	ld d,0d1h		;8817
	sbc a,l			;8819
	defb 0ddh,09dh ;sbc a,ixl	;881a
	ld a,l			;881c
	sbc a,(hl)		;881d
	ld d,e			;881e
	sbc a,a			;881f
	nop			;8820
	and b			;8821
	ld l,l			;8822
	and b			;8823
	ld l,a			;8824
	ld d,085h		;8825
	and a			;8827
sub_8828h:
	sbc a,b			;8828
	and a			;8829
	call pe,sub_1da7h	;882a
	xor b			;882d
	ret			;882e
	xor b			;882f
	inc e			;8830
	xor c			;8831
	ld l,a			;8832
	ld d,08dh		;8833
	and (hl)		;8835
	and e			;8836
	and (hl)		;8837
	call nz,sub_00a6h	;8838
	and a			;883b
	ld a,0a7h		;883c
	ld e,c			;883e
	and a			;883f
	ld l,a			;8840
	ld d,0d4h		;8841
	and b			;8843
l8844h:
	push af			;8844
	and b			;8845
	sub h			;8846
	and c			;8847
	ld de,le1a2h		;8848
	and d			;884b
	ld de,lffa3h		;884c
	ld b,(hl)		;884f
	ld h,c			;8850
	ld a,a			;8851
	ld h,c			;8852
	ld a,a			;8853
	ld h,c			;8854
	ld a,a			;8855
	ld h,c			;8856
	ld a,a			;8857
	ld h,d			;8858
	ld a,a			;8859
	halt			;885a
	ld a,a			;885b
	adc a,e			;885c
	ld a,a			;885d
	sbc a,b			;885e
	ld a,a			;885f
	rst 38h			;8860
	ld b,(hl)		;8861
	pop hl			;8862
	ld a,a			;8863
	pop hl			;8864
	ld a,a			;8865
	pop hl			;8866
	ld a,a			;8867
	and e			;8868
	ld a,a			;8869
	jp po,l527fh		;886a
	add a,b			;886d
	adc a,b			;886e
	add a,b			;886f
	adc a,b			;8870
	add a,b			;8871
	rst 38h			;8872
	ld b,(hl)		;8873
	adc a,b			;8874
	add a,b			;8875
	adc a,b			;8876
	add a,b			;8877
	adc a,b			;8878
sub_8879h:
	add a,b			;8879
	adc a,c			;887a
	add a,b			;887b
	and e			;887c
	add a,b			;887d
	pop bc			;887e
	add a,b			;887f
	rst 8			;8880
	add a,b			;8881
	ret pe			;8882
	add a,b			;8883
	rst 38h			;8884
	dec sp			;8885
	ld bc,l017fh+2		;8886
	add a,c			;8889
	jp m,00280h		;888a
	add a,c			;888d
	dec sp			;888e
	add a,c			;888f
	ld c,(hl)		;8890
	add a,c			;8891
	ld h,c			;8892
	add a,c			;8893
	ld l,l			;8894
	add a,c			;8895
	rst 38h			;8896
	ld b,(hl)		;8897
	sub h			;8898
	add a,c			;8899
	rst 30h			;889a
	add a,c			;889b
	ld bc,l0282h		;889c
	add a,d			;889f
	sub b			;88a0
	add a,d			;88a1
sub_88a2h:
	and e			;88a2
	add a,d			;88a3
	xor l			;88a4
	add a,d			;88a5
	cp b			;88a6
	add a,d			;88a7
	rst 38h			;88a8
	ld b,(hl)		;88a9
	call c,sub_dc82h	;88aa
	add a,d			;88ad
	call c,sub_dc82h	;88ae
	add a,d			;88b1
	pop hl			;88b2
	add a,d			;88b3
	rst 30h			;88b4
	add a,d			;88b5
	inc c			;88b6
	add a,e			;88b7
	ld (lff83h),hl		;88b8
	ld b,a			;88bb
	dec de			;88bc
	add a,h			;88bd
	jr nc,l8844h		;88be
	ccf			;88c0
	add a,h			;88c1
	ld c,(hl)		;88c2
	add a,h			;88c3
	ld h,e			;88c4
	add a,h			;88c5
	ld a,d			;88c6
	add a,h			;88c7
	add a,a			;88c8
	add a,h			;88c9
	sub (hl)		;88ca
	add a,h			;88cb
	rst 38h			;88cc
	ld c,b			;88cd
sub_88ceh:
	ccf			;88ce
	cp (hl)			;88cf
	adc a,a			;88d0
	cp (hl)			;88d1
	call pe,sub_1dbeh	;88d2
	cp a			;88d5
	ld d,(hl)		;88d6
	cp a			;88d7
	ld a,a			;88d8
	cp a			;88d9
	xor c			;88da
	cp a			;88db
	ret z			;88dc
	cp a			;88dd
	rst 38h			;88de
	ld c,b			;88df
	dec sp			;88e0
l88e1h:
	or (hl)			;88e1
	ld b,d			;88e2
	or l			;88e3
	call z,l53b6h		;88e4
	or a			;88e7
	call nc,sub_bab7h	;88e8
	cp b			;88eb
	ld a,(lbeb9h)		;88ec
	cp c			;88ef
	ld l,a			;88f0
	ld c,b			;88f1
	and d			;88f2
	xor d			;88f3
	ld l,0abh		;88f4
	rst 18h			;88f6
l88f7h:
	xor e			;88f7
	ld e,h			;88f8
	xor l			;88f9
	inc sp			;88fa
l88fbh:
	xor (hl)		;88fb
	call c,sub_ffaeh	;88fc
	ld c,b			;88ff
sub_8900h:
	sbc a,d			;8900
	xor a			;8901
	ld c,c			;8902
	or b			;8903
	ld sp,hl		;8904
	or b			;8905
	ld d,c			;8906
	or c			;8907
	ld l,e			;8908
	or d			;8909
	add hl,sp		;890a
	or e			;890b
	dec de			;890c
	or h			;890d
	cp e			;890e
	or h			;890f
	rst 38h			;8910
	ld (hl),b		;8911
	defb 0fdh,0a9h,005h ;illegal sequence	;8912
l8915h:
	xor d			;8915
	ld a,(bc)		;8916
	xor d			;8917
	add hl,de		;8918
	xor d			;8919
	dec l			;891a
	xor d			;891b
	dec a			;891c
	xor d			;891d
	ld b,a			;891e
	xor d			;891f
	ld d,c			;8920
	xor d			;8921
	rst 38h			;8922
	add a,b			;8923
	and h			;8924
	add a,h			;8925
	and h			;8926
	add a,h			;8927
sub_8928h:
	and h			;8928
	add a,h			;8929
	and h			;892a
	add a,h			;892b
	and h			;892c
	add a,h			;892d
	and h			;892e
	add a,h			;892f
	and h			;8930
	add a,h			;8931
	and h			;8932
	add a,h			;8933
	ld a,(le1a6h)		;8934
	call 0702dh		;8937
l893ah:
	ld hl,0e190h		;893a
	bit 1,(hl)		;893d
	jp nz,l6979h		;893f
	ld a,(0e190h)		;8942
	bit 0,a			;8945
	call nz,06b1ch		;8947
l894ah:
	ld ix,le000h		;894a
	exx			;894e
	ld de,sub_0027h+1	;894f
	ld b,008h		;8952
	ld c,001h		;8954
	ld a,c			;8956
l8957h:
	exx			;8957
	ld (le1a7h),a		;8958
	call sub_6969h		;895b
	exx			;895e
	add ix,de		;895f
	ld a,c			;8961
	add a,c			;8962
	djnz l8957h		;8963
	call 06f6ah		;8965
	ret			;8968
	ld a,(ix+000h)		;8969
	or a			;896c
	call nz,sub_699ah	;896d
	ld hl,0e190h		;8970
	bit 0,(hl)		;8973
	call nz,sub_6b79h	;8975
	ret			;8978
	ld a,001h		;8979
	ld (le1a7h),a		;897b
	ld ix,le000h		;897e
	call sub_6969h		;8982
	ld a,002h		;8985
	ld (le1a7h),a		;8987
	ld ix,le028h		;898a
	call sub_6969h		;898e
	ld a,0bch		;8991
	ld (le1a6h),a		;8993
	call 06f71h		;8996
	ret			;8999
	dec (ix+004h)		;899a
	jp nz,l6bfah		;899d
	ld l,(ix+002h)		;89a0
	ld h,(ix+003h)		;89a3
	ld a,(hl)		;89a6
	cp 0ffh			;89a7
	jp z,06ae3h		;89a9
	cp 0d0h			;89ac
	jr c,l89b7h		;89ae
	call sub_6d12h		;89b0
	inc hl			;89b3
	jp l69a6h		;89b4
l89b7h:
	bit 0,(ix+009h)		;89b7
	call nz,069cdh		;89bb
	bit 1,(ix+009h)		;89be
	call nz,sub_6a3fh	;89c2
	bit 2,(ix+009h)		;89c5
	call nz,sub_6aaah	;89c9
	ret			;89cc
	ld a,(hl)		;89cd
	and 00fh		;89ce
	ld b,a			;89d0
	ld a,(ix+014h)		;89d1
	jr z,l89dah		;89d4
	ld e,a			;89d6
l89d7h:
	add a,e			;89d7
	djnz l89d7h		;89d8
l89dah:
	ld (ix+004h),a		;89da
	ld a,(hl)		;89dd
	and 0f0h		;89de
	rrca			;89e0
	rrca			;89e1
	rrca			;89e2
	rrca			;89e3
	call sub_6adbh		;89e4
	bit 3,(ix+009h)		;89e7
	ret nz			;89eb
	cp 00ch			;89ec
	jr nc,l8a2dh		;89ee
	ld hl,06a32h		;89f0
	ld e,a			;89f3
	ld d,000h		;89f4
	add hl,de		;89f6
	ld l,(hl)		;89f7
	ld h,000h		;89f8
	ld a,(ix+016h)		;89fa
	or a			;89fd
	jr z,l8a04h		;89fe
	ld b,a			;8a00
l8a01h:
	add hl,hl		;8a01
sub_8a02h:
	djnz l8a01h		;8a02
l8a04h:
	ld (ix+010h),l		;8a04
	ld (ix+011h),h		;8a07
	ld e,(ix+015h)		;8a0a
	ld a,(0e190h)		;8a0d
	bit 0,a			;8a10
	call nz,sub_6a20h	;8a12
	ld (ix+012h),e		;8a15
	ld (ix+00dh),002h	;8a18
	call sub_6babh		;8a1c
	ret			;8a1f
	ld a,(le1a5h)		;8a20
	ld d,a			;8a23
	ld a,e			;8a24
	sub d			;8a25
	ld e,a			;8a26
	cp 008h			;8a27
	ret nc			;8a29
	ld e,009h		;8a2a
	ret			;8a2c
l8a2dh:
	ld (ix+00dh),000h	;8a2d
	ret			;8a31
	ld l,d			;8a32
	ld h,h			;8a33
	ld e,(hl)		;8a34
	ld e,c			;8a35
	ld d,h			;8a36
	ld c,a			;8a37
	ld c,d			;8a38
	ld b,(hl)		;8a39
	ld b,d			;8a3a
	ccf			;8a3b
	dec sp			;8a3c
	jr c,l8a74h		;8a3d
	ld a,(ix+00dh)		;8a3f
	and 003h		;8a42
	jr z,l8a9bh		;8a44
	cp 001h			;8a46
	jr z,l8a80h		;8a48
	ld a,(hl)		;8a4a
l8a4bh:
	bit 7,(ix+00eh)		;8a4b
	jr nz,l8a6ch		;8a4f
	bit 5,(ix+00eh)		;8a51
	jr nz,l8a71h		;8a55
	and 0f0h		;8a57
	ld b,a			;8a59
	xor (hl)		;8a5a
	ld d,a			;8a5b
	inc hl			;8a5c
	ld a,(hl)		;8a5d
	ld (ix+010h),a		;8a5e
	ld (ix+011h),d		;8a61
	ld a,b			;8a64
	rrca			;8a65
	rrca			;8a66
	rrca			;8a67
	rrca			;8a68
	ld b,a			;8a69
	jr l8a84h		;8a6a
l8a6ch:
	ld (ix+010h),a		;8a6c
	jr l8a98h		;8a6f
l8a71h:
	and 0f0h		;8a71
	rrca			;8a73
l8a74h:
	rrca			;8a74
	rrca			;8a75
	rrca			;8a76
	ld b,a			;8a77
sub_8a78h:
	ld a,(hl)		;8a78
	and 00fh		;8a79
	ld (ix+011h),a		;8a7b
	jr l8a84h		;8a7e
l8a80h:
	ld a,(hl)		;8a80
	and 00fh		;8a81
	ld b,a			;8a83
l8a84h:
	ld a,(le1a7h)		;8a84
	cp 008h			;8a87
	jr nc,l8a93h		;8a89
	bit 2,(ix+00dh)		;8a8b
	jr z,l8a93h		;8a8f
	ld b,010h		;8a91
l8a93h:
	inc b			;8a93
	inc b			;8a94
	ld (ix+012h),b		;8a95
l8a98h:
	call sub_6babh		;8a98
l8a9bh:
	bit 3,(ix+009h)		;8a9b
	ret nz			;8a9f
	call sub_6adbh		;8aa0
	ld a,(ix+013h)		;8aa3
	ld (ix+004h),a		;8aa6
	ret			;8aa9
	ld (ix+009h),009h	;8aaa
	call 069cdh		;8aae
l8ab1h:
	ld hl,l7255h		;8ab1
	add a,a			;8ab4
	ld e,a			;8ab5
	ld d,000h		;8ab6
	add hl,de		;8ab8
	ld e,(hl)		;8ab9
	inc hl			;8aba
	ld d,(hl)		;8abb
	ex de,hl		;8abc
	ld a,(hl)		;8abd
	set 0,(ix+00eh)		;8abe
	ld (ix+009h),00ah	;8ac2
	call l69a6h		;8ac6
	ld a,(ix+013h)		;8ac9
	ld (ix+019h),a		;8acc
	inc hl			;8acf
	ld (ix+017h),l		;8ad0
	ld (ix+018h),h		;8ad3
	ld (ix+009h),004h	;8ad6
	ret			;8ada
	inc hl			;8adb
	ld (ix+002h),l		;8adc
	ld (ix+003h),h		;8adf
	ret			;8ae2
	xor a			;8ae3
	ld (ix+000h),a		;8ae4
	ld (ix+001h),a		;8ae7
	ld (ix+005h),a		;8aea
l8aedh:
	ld (ix+006h),a		;8aed
	ld (ix+00ah),a		;8af0
	ld (ix+00bh),a		;8af3
	ld (ix+00ch),a		;8af6
	ld (ix+00dh),a		;8af9
	ld (ix+00eh),a		;8afc
	ld (ix+00fh),a		;8aff
	ld a,(le1a7h)		;8b02
	cp 008h			;8b05
	ret nc			;8b07
	cp 001h			;8b08
l8b0ah:
	ld hl,le1aah		;8b0a
	jr nz,l8b19h		;8b0d
sub_8b0fh:
	res 1,(hl)		;8b0f
	bit 3,(hl)		;8b11
	ret z			;8b13
	res 3,(hl)		;8b14
	set 2,(hl)		;8b16
	ret			;8b18
l8b19h:
	res 3,(hl)		;8b19
	ret			;8b1b
	ld hl,le1a4h		;8b1c
	inc (hl)		;8b1f
	ld a,(le0a0h)		;8b20
	ld a,(hl)		;8b23
l8b24h:
	cp 060h			;8b24
	ret nz			;8b26
	ld (hl),000h		;8b27
	inc hl			;8b29
	inc (hl)		;8b2a
	ld a,(hl)		;8b2b
	cp 002h			;8b2c
	ret nz			;8b2e
	xor a			;8b2f
	ld hl,0e190h		;8b30
	res 0,(hl)		;8b33
	ld hl,le1a4h		;8b35
	ld (hl),a		;8b38
	inc hl			;8b39
	ld (hl),a		;8b3a
	ld a,(le000h)		;8b3b
	ld e,a			;8b3e
	ld a,(le028h)		;8b3f
	cp e			;8b42
	jr nz,l8b53h		;8b43
	ld ix,le000h		;8b45
	call 06ae3h		;8b49
	ld ix,le078h		;8b4c
	call 06ae3h		;8b50
l8b53h:
	ld de,sub_0027h+1	;8b53
	ld ix,le028h		;8b56
	call 06ae3h		;8b5a
	add ix,de		;8b5d
	call 06ae3h		;8b5f
	ld ix,le0a0h		;8b62
	call 06ae3h		;8b66
	add ix,de		;8b69
	call 06ae3h		;8b6b
	add ix,de		;8b6e
	call 06ae3h		;8b70
	add ix,de		;8b73
	call 06ae3h		;8b75
	ret			;8b78
l8b79h:
	ld a,(le000h)		;8b79
	ld e,a			;8b7c
	ld a,(le028h)		;8b7d
	cp e			;8b80
l8b81h:
	jr z,l8b8eh		;8b81
	ld a,(le1a7h)		;8b83
	and 0f6h		;8b86
	ret z			;8b88
	bit 1,(ix+009h)		;8b89
	ret nz			;8b8d
l8b8eh:
	bit 2,(ix+00dh)		;8b8e
	jr nz,l8ba6h		;8b92
	bit 4,(ix+00fh)		;8b94
	ret nz			;8b98
	ld a,(le1a5h)		;8b99
	ld e,a			;8b9c
	ld a,(ix+00ch)		;8b9d
	sub e			;8ba0
sub_8ba1h:
	ret m			;8ba1
	ld (ix+00ch),a		;8ba2
	ret			;8ba5
l8ba6h:
	ld (ix+00ch),000h	;8ba6
	ret			;8baa
	call 06c2ch		;8bab
	res 4,(ix+00eh)		;8bae
	ld a,(ix+00fh)		;8bb2
	and 0e7h		;8bb5
	ld (ix+00fh),a		;8bb7
	xor a			;8bba
	ld (ix+01dh),a		;8bbb
	ld (ix+01eh),a		;8bbe
	ld (ix+01fh),a		;8bc1
	ld (ix+020h),a		;8bc4
	set 2,(ix+00fh)		;8bc7
	ld a,(ix+012h)		;8bcb
	bit 6,(ix+00eh)		;8bce
	jr z,l8bdbh		;8bd2
	ld e,(ix+015h)		;8bd4
	sub e			;8bd7
	call m,06bf8h		;8bd8
l8bdbh:
	ld (ix+00ch),a		;8bdb
	ld a,(le1a7h)		;8bde
	cp 008h			;8be1
sub_8be3h:
	jr nc,l8beah		;8be3
	bit 2,(ix+00dh)		;8be5
	ret nz			;8be9
l8beah:
	bit 1,(ix+00fh)		;8bea
	ret z			;8bee
	ld (ix+00ch),008h	;8bef
	res 2,(ix+00fh)		;8bf3
	ret			;8bf7
	xor a			;8bf8
	ret			;8bf9
	bit 0,(ix+00eh)		;8bfa
	call nz,sub_6c10h	;8bfe
	bit 2,(ix+00eh)		;8c01
	call nz,06c47h		;8c05
	bit 0,(ix+00fh)		;8c08
	call nz,06c95h		;8c0c
	ret			;8c0f
	dec (ix+019h)		;8c10
	ret nz			;8c13
	ld l,(ix+017h)		;8c14
	ld h,(ix+018h)		;8c17
	ld a,(hl)		;8c1a
	cp 0ffh			;8c1b
	jr z,l8c23h		;8c1d
	call l6ac2h		;8c1f
	ret			;8c22
l8c23h:
	res 0,(ix+00eh)		;8c23
	ld (ix+00dh),000h	;8c27
	ret			;8c2b
	ld e,(ix+010h)		;8c2c
	ld d,(ix+011h)		;8c2f
	bit 1,(ix+00eh)		;8c32
	jr z,l8c40h		;8c36
	ld a,(ix+025h)		;8c38
	add a,e			;8c3b
	ld e,a			;8c3c
	jr nc,l8c40h		;8c3d
	inc d			;8c3f
l8c40h:
	ld (ix+00ah),e		;8c40
	ld (ix+00bh),d		;8c43
	ret			;8c46
	inc (ix+01eh)		;8c47
	ld a,(ix+01eh)		;8c4a
	ld b,(ix+00eh)		;8c4d
	bit 4,b			;8c50
	jr nz,l8c66h		;8c52
	bit 3,b			;8c54
	jr z,l8c66h		;8c56
	cp (ix+01ah)		;8c58
	ret nz			;8c5b
	ld (ix+01eh),000h	;8c5c
	set 4,(ix+00eh)		;8c60
	jr l8c6ah		;8c64
l8c66h:
	cp (ix+01bh)		;8c66
	ret nz			;8c69
l8c6ah:
	ld e,(ix+00ah)		;8c6a
	ld d,(ix+00bh)		;8c6d
	ld b,(ix+01ch)		;8c70
	ld a,(ix+01dh)		;8c73
	cpl			;8c76
	ld (ix+01dh),a		;8c77
	and a			;8c7a
	ld a,e			;8c7b
	jr nz,l8c85h		;8c7c
	add a,b			;8c7e
	ld e,a			;8c7f
	jr nc,l8c8ah		;8c80
	inc d			;8c82
	jr l8c8ah		;8c83
l8c85h:
	sub b			;8c85
sub_8c86h:
	ld e,a			;8c86
	jr nc,l8c8ah		;8c87
	dec d			;8c89
l8c8ah:
	ld (ix+00ah),e		;8c8a
	ld (ix+00bh),d		;8c8d
l8c90h:
	ld (ix+01eh),000h	;8c90
	ret			;8c94
	ld a,(le1a7h)		;8c95
	cp 008h			;8c98
	jr nc,l8ca1h		;8c9a
sub_8c9ch:
	bit 2,(ix+00dh)		;8c9c
	ret nz			;8ca0
l8ca1h:
	call 06ca8h		;8ca1
	ld (ix+00ch),e		;8ca4
	ret			;8ca7
	ld e,(ix+00ch)		;8ca8
	inc (ix+01fh)		;8cab
	ld b,(ix+01fh)		;8cae
	bit 4,(ix+00fh)		;8cb1
	jr nz,l8d06h		;8cb5
	bit 3,(ix+00fh)		;8cb7
	jr nz,l8ceah		;8cbb
	bit 2,(ix+00fh)		;8cbd
	jr nz,l8cd6h		;8cc1
	ld a,e			;8cc3
	inc a			;8cc4
	ld e,a			;8cc5
	cp (ix+012h)		;8cc6
	ret c			;8cc9
	set 2,(ix+00fh)		;8cca
	ld e,(ix+012h)		;8cce
l8cd1h:
	ld (ix+01fh),000h	;8cd1
l8cd5h:
	ret			;8cd5
l8cd6h:
	ld a,e			;8cd6
	dec a			;8cd7
	jp m,l6cdch		;8cd8
	ld e,a			;8cdb
	ld a,b			;8cdc
	cp (ix+021h)		;8cdd
	ret c			;8ce0
	ld (ix+01fh),000h	;8ce1
	set 3,(ix+00fh)		;8ce5
	ret			;8ce9
l8ceah:
	ld a,b			;8cea
l8cebh:
	cp (ix+022h)		;8ceb
	ret nz			;8cee
	ld a,e			;8cef
	dec a			;8cf0
	ret m			;8cf1
	ld e,a			;8cf2
	inc (ix+020h)		;8cf3
sub_8cf6h:
	ld a,(ix+020h)		;8cf6
sub_8cf9h:
	cp (ix+023h)		;8cf9
	ld (ix+01fh),000h	;8cfc
	ret nz			;8d00
	set 4,(ix+00fh)		;8d01
	ret			;8d05
l8d06h:
	ld a,(ix+004h)		;8d06
	cp (ix+024h)		;8d09
	ret nc			;8d0c
	ld a,e			;8d0d
	dec a			;8d0e
	ret m			;8d0f
	ld e,a			;8d10
	ret			;8d11
	cp 0e0h			;8d12
	jp c,sub_6f54h+1	;8d14
	and 01fh		;8d17
	push hl			;8d19
	ld hl,06d27h		;8d1a
	add a,a			;8d1d
	ld e,a			;8d1e
	ld d,000h		;8d1f
	add hl,de		;8d21
	ld e,(hl)		;8d22
	inc hl			;8d23
	ld d,(hl)		;8d24
	ex de,hl		;8d25
	jp (hl)			;8d26
	ld h,l			;8d27
	ld l,l			;8d28
	ld a,e			;8d29
	ld l,l			;8d2a
	ld h,l			;8d2b
	ld l,l			;8d2c
	ld a,e			;8d2d
l8d2eh:
	ld l,l			;8d2e
	sbc a,b			;8d2f
	ld l,l			;8d30
	jp nz,ld56dh		;8d31
	ld l,l			;8d34
	call po,sub_f66dh	;8d35
	ld l,l			;8d38
sub_8d39h:
	dec b			;8d39
	ld l,(hl)		;8d3a
	inc c			;8d3b
	ld l,(hl)		;8d3c
	inc de			;8d3d
	ld l,(hl)		;8d3e
	jr nc,$+112		;8d3f
	ld (hl),06eh		;8d41
	ld a,e			;8d43
	ld l,(hl)		;8d44
	add a,c			;8d45
	ld l,(hl)		;8d46
	adc a,h			;8d47
	ld l,(hl)		;8d48
	sub d			;8d49
	ld l,(hl)		;8d4a
	xor l			;8d4b
	ld l,(hl)		;8d4c
	or a			;8d4d
	ld l,(hl)		;8d4e
	add a,06eh		;8d4f
	call z,sub_d26eh	;8d51
	ld l,(hl)		;8d54
	call c,sub_e26eh	;8d55
	ld l,(hl)		;8d58
	call m,0076eh		;8d59
	ld l,a			;8d5c
	rrca			;8d5d
sub_8d5eh:
	ld l,a			;8d5e
	add hl,hl		;8d5f
	ld l,a			;8d60
	ld a,06fh		;8d61
	ld b,c			;8d63
	ld l,a			;8d64
	pop hl			;8d65
l8d66h:
	res 7,(ix+00eh)		;8d66
	ld a,(hl)		;8d6a
	and 003h		;8d6b
	ld (ix+00dh),a		;8d6d
	ld b,a			;8d70
	inc hl			;8d71
	ld a,(hl)		;8d72
	ld (ix+013h),a		;8d73
	ld a,b			;8d76
	or a			;8d77
	ret nz			;8d78
	dec hl			;8d79
	ret			;8d7a
	pop hl			;8d7b
sub_8d7ch:
	ld a,(le1a7h)		;8d7c
	cp 001h			;8d7f
	ld a,(le1aah)		;8d81
	jr nz,l8d8fh		;8d84
	set 0,a			;8d86
	res 1,a			;8d88
	ld (le1aah),a		;8d8a
	jr l8d66h		;8d8d
l8d8fh:
	set 2,a			;8d8f
	res 3,a			;8d91
	ld (le1aah),a		;8d93
	jr l8d66h		;8d96
	pop hl			;8d98
	inc hl			;8d99
	ld a,(hl)		;8d9a
	and 01fh		;8d9b
	ld b,a			;8d9d
	ld a,(le1a7h)		;8d9e
	cp 001h			;8da1
	ld a,b			;8da3
	jr nz,sub_8db4h		;8da4
	ld (le1a8h),a		;8da6
	ld a,(le1aah)		;8da9
	set 0,a			;8dac
	res 1,a			;8dae
	ld (le1aah),a		;8db0
	ret			;8db3
sub_8db4h:
	ld (le1a9h),a		;8db4
l8db7h:
	ld a,(le1aah)		;8db7
	set 2,a			;8dba
	res 3,a			;8dbc
	ld (le1aah),a		;8dbe
	ret			;8dc1
	pop hl			;8dc2
	inc hl			;8dc3
	res 3,(ix+00dh)		;8dc4
	ld a,(hl)		;8dc8
	ld (le1abh),a		;8dc9
	ld de,le1aah		;8dcc
	ld a,(de)		;8dcf
	set 5,a			;8dd0
	ld (de),a		;8dd2
	jr l8dd6h		;8dd3
	pop hl			;8dd5
l8dd6h:
	inc hl			;8dd6
	ld a,(hl)		;8dd7
	ld (le1adh),a		;8dd8
	ld de,le1aah		;8ddb
	ld a,(de)		;8dde
	set 6,a			;8ddf
	ld (de),a		;8de1
	jr l8de5h		;8de2
	pop hl			;8de4
l8de5h:
	inc hl			;8de5
	ld a,(hl)		;8de6
	ld (le1ach),a		;8de7
	ld de,le1aah		;8dea
l8dedh:
	ld a,(de)		;8ded
	set 7,a			;8dee
	ld (de),a		;8df0
	set 2,(ix+00dh)		;8df1
	ret			;8df5
	pop hl			;8df6
	ld de,le1aah		;8df7
	xor a			;8dfa
	ld (de),a		;8dfb
	ld a,(ix+00dh)		;8dfc
	and 0f3h		;8dff
	ld (ix+00dh),a		;8e01
	ret			;8e04
	pop hl			;8e05
	inc hl			;8e06
	ld a,(hl)		;8e07
	ld (ix+014h),a		;8e08
	ret			;8e0b
	pop hl			;8e0c
	inc hl			;8e0d
	ld a,(hl)		;8e0e
	ld (ix+015h),a		;8e0f
	ret			;8e12
	pop hl			;8e13
	inc hl			;8e14
	ld a,(ix+005h)		;8e15
	inc a			;8e18
	cp (hl)			;8e19
	jr z,l8e2ah		;8e1a
	ld (ix+005h),a		;8e1c
	inc hl			;8e1f
	ld a,(hl)		;8e20
	ld e,a			;8e21
	ld a,l			;8e22
	sub e			;8e23
	ld l,a			;8e24
	jr nc,l8e28h		;8e25
	dec h			;8e27
l8e28h:
	dec hl			;8e28
	ret			;8e29
l8e2ah:
	inc hl			;8e2a
	ld (ix+005h),000h	;8e2b
	ret			;8e2f
	pop hl			;8e30
	res 6,(ix+00eh)		;8e31
	ret			;8e35
	pop hl			;8e36
	inc hl			;8e37
	ld a,(ix+00fh)		;8e38
	and 080h		;8e3b
	ld (ix+00fh),a		;8e3d
	ld a,(hl)		;8e40
	and 0f0h		;8e41
sub_8e43h:
	rrca			;8e43
	rrca			;8e44
	rrca			;8e45
	rrca			;8e46
	cp 008h			;8e47
	jr nc,l8e4fh		;8e49
	set 2,(ix+00fh)		;8e4b
l8e4fh:
	res 3,a			;8e4f
	inc a			;8e51
	bit 2,(ix+00fh)		;8e52
	jr nz,l8e5ch		;8e56
	set 1,(ix+00fh)		;8e58
l8e5ch:
	ld (ix+021h),a		;8e5c
	ld a,(hl)		;8e5f
	and 00fh		;8e60
	ld (ix+022h),a		;8e62
	inc hl			;8e65
	ld a,(hl)		;8e66
	and 0f0h		;8e67
	rrca			;8e69
	rrca			;8e6a
	rrca			;8e6b
	rrca			;8e6c
	ld (ix+023h),a		;8e6d
	ld a,(hl)		;8e70
l8e71h:
	and 00fh		;8e71
	ld (ix+024h),a		;8e73
	set 0,(ix+00fh)		;8e76
	ret			;8e7a
	pop hl			;8e7b
l8e7ch:
	res 0,(ix+00fh)		;8e7c
	ret			;8e80
	pop hl			;8e81
	inc hl			;8e82
	ld a,(hl)		;8e83
	ld (ix+025h),a		;8e84
	set 1,(ix+00eh)		;8e87
	ret			;8e8b
	pop hl			;8e8c
	res 1,(ix+00eh)		;8e8d
	ret			;8e91
	pop hl			;8e92
	inc hl			;8e93
	ld a,(ix+00eh)		;8e94
	or 014h			;8e97
	ld (ix+00eh),a		;8e99
	ld a,(hl)		;8e9c
	and 00fh		;8e9d
	ld (ix+01ch),a		;8e9f
	ld a,(hl)		;8ea2
	and 0f0h		;8ea3
	rrca			;8ea5
	rrca			;8ea6
	rrca			;8ea7
	rrca			;8ea8
	ld (ix+01bh),a		;8ea9
	ret			;8eac
	pop hl			;8ead
	ld a,(ix+00eh)		;8eae
	and 0e2h		;8eb1
	ld (ix+00eh),a		;8eb3
	ret			;8eb6
	pop hl			;8eb7
	inc hl			;8eb8
	ld a,(hl)		;8eb9
	ld (ix+01ah),a		;8eba
	ld a,(ix+00eh)		;8ebd
	or 00ch			;8ec0
	ld (ix+00eh),a		;8ec2
	ret			;8ec5
	pop hl			;8ec6
	res 3,(ix+00eh)		;8ec7
	ret			;8ecb
	pop hl			;8ecc
	set 7,(ix+00eh)		;8ecd
	ret			;8ed1
	pop hl			;8ed2
	ld a,(ix+00eh)		;8ed3
	and 05fh		;8ed6
	ld (ix+00eh),a		;8ed8
	ret			;8edb
	pop hl			;8edc
	set 5,(ix+00eh)		;8edd
	ret			;8ee1
sub_8ee2h:
	pop hl			;8ee2
	inc hl			;8ee3
	ld a,(hl)		;8ee4
	ld de,06000h		;8ee5
	add a,a			;8ee8
	add a,e			;8ee9
	ld e,a			;8eea
	jr nc,l8eeeh		;8eeb
	inc d			;8eed
l8eeeh:
	ld a,(de)		;8eee
	ld (ix+026h),a		;8eef
	inc de			;8ef2
	ld a,(de)		;8ef3
	ld (ix+027h),a		;8ef4
	set 7,(ix+00fh)		;8ef7
	ret			;8efb
	pop hl			;8efc
	call 06f1bh		;8efd
l8f00h:
	ld (ix+007h),e		;8f00
	ld (ix+008h),d		;8f03
	ret			;8f06
	pop hl			;8f07
l8f08h:
	ld l,(ix+007h)		;8f08
	ld h,(ix+008h)		;8f0b
	ret			;8f0e
	pop hl			;8f0f
	inc hl			;8f10
	ld a,(ix+005h)		;8f11
	inc a			;8f14
	cp (hl)			;8f15
	jr z,l8f22h		;8f16
	ld (ix+005h),a		;8f18
l8f1bh:
	inc hl			;8f1b
	ld e,(hl)		;8f1c
	inc hl			;8f1d
	ld d,(hl)		;8f1e
	ex de,hl		;8f1f
	dec hl			;8f20
	ret			;8f21
l8f22h:
	inc hl			;8f22
	inc hl			;8f23
	ld (ix+005h),000h	;8f24
	ret			;8f28
	pop hl			;8f29
	inc hl			;8f2a
	ld a,(ix+006h)		;8f2b
	inc a			;8f2e
	cp (hl)			;8f2f
	jr z,l8f37h		;8f30
	ld (ix+006h),a		;8f32
	jr l8f1bh		;8f35
l8f37h:
	inc hl			;8f37
	inc hl			;8f38
	ld (ix+006h),000h	;8f39
	ret			;8f3d
	pop hl			;8f3e
	jr l8f1bh		;8f3f
	pop hl			;8f41
	inc hl			;8f42
	ld a,(hl)		;8f43
	ld (ix+009h),a		;8f44
	cp 004h			;8f47
	ret nz			;8f49
	xor a			;8f4a
l8f4bh:
	ld (ix+00dh),a		;8f4b
	ld (ix+00eh),a		;8f4e
	ld (ix+00fh),a		;8f51
	ret			;8f54
	ld a,(hl)		;8f55
	and 00fh		;8f56
	cp 006h			;8f58
l8f5ah:
	jr nc,l8f60h		;8f5a
	ld (ix+016h),a		;8f5c
	ret			;8f5f
l8f60h:
	set 6,(ix+00eh)		;8f60
	sub 005h		;8f64
	ld (ix+015h),a		;8f66
	ret			;8f69
	call 06f71h		;8f6a
	call 0704ah		;8f6d
	ret			;8f70
	call sub_6f7eh		;8f71
	call sub_6fb3h		;8f74
	call l6fdah+2		;8f77
	call 0700ah		;8f7a
	ret			;8f7d
	ld b,000h		;8f7e
	ld c,008h		;8f80
	ld hl,le00ah		;8f82
	call sub_6f95h		;8f85
	ld hl,le032h		;8f88
sub_8f8bh:
	call sub_6f95h		;8f8b
	ld hl,le05ah		;8f8e
	call sub_6f95h		;8f91
	ret			;8f94
	ld e,(hl)		;8f95
	ld a,b			;8f96
	call sub_0093h		;8f97
	inc hl			;8f9a
	inc b			;8f9b
	ld e,(hl)		;8f9c
	ld a,b			;8f9d
	call sub_0093h		;8f9e
	inc hl			;8fa1
sub_8fa2h:
	ld e,(hl)		;8fa2
	ld a,c			;8fa3
	inc b			;8fa4
	inc c			;8fa5
	inc hl			;8fa6
	bit 3,(hl)		;8fa7
	ret nz			;8fa9
	call sub_0093h		;8faa
	bit 2,(hl)		;8fad
	ret z			;8faf
	set 3,(hl)		;8fb0
	ret			;8fb2
	ld hl,le1aah		;8fb3
	bit 0,(hl)		;8fb6
	jr z,l8fc8h		;8fb8
	res 0,(hl)		;8fba
	set 1,(hl)		;8fbc
	ld a,(le1a8h)		;8fbe
	ld e,a			;8fc1
	ld a,006h		;8fc2
	call sub_0093h		;8fc4
	ret			;8fc7
l8fc8h:
	bit 1,(hl)		;8fc8
	ret nz			;8fca
	bit 2,(hl)		;8fcb
	ret z			;8fcd
	res 2,(hl)		;8fce
	set 3,(hl)		;8fd0
	ld a,(le1a9h)		;8fd2
	ld e,a			;8fd5
	ld a,006h		;8fd6
	call sub_0093h		;8fd8
	ret			;8fdb
	ld hl,le1aah		;8fdc
	bit 7,(hl)		;8fdf
	ret z			;8fe1
	res 7,(hl)		;8fe2
	ld a,(le1ach)		;8fe4
	ld e,a			;8fe7
	ld a,00bh		;8fe8
	call sub_0093h		;8fea
	bit 6,(hl)		;8fed
	ret z			;8fef
sub_8ff0h:
	res 6,(hl)		;8ff0
	ld a,(le1adh)		;8ff2
	ld e,a			;8ff5
	ld a,00ch		;8ff6
	call sub_0093h		;8ff8
	bit 5,(hl)		;8ffb
	ret z			;8ffd
	res 5,(hl)		;8ffe
l9000h:
	ld a,(le1abh)		;9000
	ld e,a			;9003
	ld a,00dh		;9004
	call sub_0093h		;9006
l9009h:
	ret			;9009
	ld hl,le00dh		;900a
sub_900dh:
	ld a,(hl)		;900d
	ld hl,0703eh		;900e
	call 07037h		;9011
	ld b,(hl)		;9014
sub_9015h:
	ld hl,0e035h		;9015
	ld a,(hl)		;9018
sub_9019h:
	ld hl,l7041h+1		;9019
	call 07037h		;901c
	ld c,(hl)		;901f
l9020h:
	ld hl,le05dh		;9020
	ld a,(hl)		;9023
l9024h:
	ld hl,l7046h		;9024
	call 07037h		;9027
	ld a,(hl)		;902a
	or b			;902b
	or c			;902c
	ld e,a			;902d
	ld (le1a6h),a		;902e
l9031h:
	ld a,007h		;9031
	call sub_0093h		;9033
	ret			;9036
	and 003h		;9037
	ld e,a			;9039
	ld d,000h		;903a
	add hl,de		;903c
	ret			;903d
	adc a,c			;903e
	add a,c			;903f
l9040h:
	adc a,b			;9040
	add a,b			;9041
	sub d			;9042
	add a,d			;9043
	sub b			;9044
	add a,b			;9045
	and h			;9046
	add a,h			;9047
l9048h:
	and b			;9048
	add a,b			;9049
	call 07057h		;904a
	call 0715ch		;904d
	call 071aeh		;9050
	call sub_71e2h		;9053
	ret			;9056
	ld ix,le1aeh		;9057
	ld bc,le1bah		;905b
	ld de,le1b0h		;905e
	ld hl,le082h		;9061
	ld a,(de)		;9064
	res 0,(ix+000h)		;9065
l9069h:
	cp (hl)			;9069
	jr z,l9072h		;906a
	set 0,(ix+000h)		;906c
l9070h:
	ld a,(hl)		;9070
	ld (de),a		;9071
l9072h:
	inc de			;9072
	inc hl			;9073
	ld a,(de)		;9074
	res 1,(ix+000h)		;9075
	cp (hl)			;9079
	jr z,l9082h		;907a
	set 1,(ix+000h)		;907c
	ld a,(hl)		;9080
	ld (de),a		;9081
l9082h:
	inc de			;9082
	inc hl			;9083
	res 2,(ix+001h)		;9084
	ld a,(bc)		;9088
	cp (hl)			;9089
	jr z,l9092h		;908a
	set 2,(ix+001h)		;908c
sub_9090h:
	ld a,(hl)		;9090
	ld (bc),a		;9091
l9092h:
	inc bc			;9092
	ld hl,le0aah		;9093
	ld a,(de)		;9096
	res 2,(ix+000h)		;9097
	cp (hl)			;909b
	jr z,l90a4h		;909c
l909eh:
	set 2,(ix+000h)		;909e
	ld a,(hl)		;90a2
	ld (de),a		;90a3
l90a4h:
	inc de			;90a4
	inc hl			;90a5
	ld a,(de)		;90a6
	res 3,(ix+000h)		;90a7
	cp (hl)			;90ab
	jr z,l90b4h		;90ac
	set 3,(ix+000h)		;90ae
	ld a,(hl)		;90b2
	ld (de),a		;90b3
l90b4h:
	inc de			;90b4
	inc hl			;90b5
	res 3,(ix+001h)		;90b6
	ld a,(bc)		;90ba
	cp (hl)			;90bb
	jr z,l90c4h		;90bc
	set 3,(ix+001h)		;90be
	ld a,(hl)		;90c2
	ld (bc),a		;90c3
l90c4h:
	inc bc			;90c4
	ld hl,le0d2h		;90c5
	ld a,(de)		;90c8
	res 4,(ix+000h)		;90c9
	cp (hl)			;90cd
	jr z,l90d6h		;90ce
	set 4,(ix+000h)		;90d0
sub_90d4h:
	ld a,(hl)		;90d4
	ld (de),a		;90d5
l90d6h:
	inc de			;90d6
	inc hl			;90d7
	ld a,(de)		;90d8
	res 5,(ix+000h)		;90d9
	cp (hl)			;90dd
	jr z,l90e6h		;90de
	set 5,(ix+000h)		;90e0
	ld a,(hl)		;90e4
	ld (de),a		;90e5
l90e6h:
	inc de			;90e6
	inc hl			;90e7
	res 4,(ix+001h)		;90e8
	ld a,(bc)		;90ec
	cp (hl)			;90ed
	jr z,l90f6h		;90ee
	set 4,(ix+001h)		;90f0
	ld a,(hl)		;90f4
	ld (bc),a		;90f5
l90f6h:
	inc bc			;90f6
	ld hl,le0fah		;90f7
	ld a,(de)		;90fa
	res 6,(ix+000h)		;90fb
	cp (hl)			;90ff
	jr z,l9108h		;9100
	set 6,(ix+000h)		;9102
l9106h:
	ld a,(hl)		;9106
l9107h:
	ld (de),a		;9107
l9108h:
	inc de			;9108
l9109h:
	inc hl			;9109
l910ah:
	ld a,(de)		;910a
l910bh:
	res 7,(ix+000h)		;910b
	cp (hl)			;910f
	jr z,l9118h		;9110
	set 7,(ix+000h)		;9112
	ld a,(hl)		;9116
	ld (de),a		;9117
l9118h:
	inc de			;9118
	inc hl			;9119
	res 5,(ix+001h)		;911a
	ld a,(bc)		;911e
	cp (hl)			;911f
	jr z,l9128h		;9120
	set 5,(ix+001h)		;9122
	ld a,(hl)		;9126
l9127h:
	ld (bc),a		;9127
l9128h:
	inc bc			;9128
	ld hl,le122h		;9129
	ld a,(de)		;912c
	res 0,(ix+001h)		;912d
	cp (hl)			;9131
	jr z,l913ah		;9132
	set 0,(ix+001h)		;9134
	ld a,(hl)		;9138
	ld (de),a		;9139
l913ah:
	inc de			;913a
	inc hl			;913b
	ld a,(de)		;913c
	res 1,(ix+001h)		;913d
l9141h:
	cp (hl)			;9141
	jr z,l914ah		;9142
	set 1,(ix+001h)		;9144
	ld a,(hl)		;9148
l9149h:
	ld (de),a		;9149
l914ah:
	inc de			;914a
	inc hl			;914b
	res 6,(ix+001h)		;914c
	ld a,(bc)		;9150
l9151h:
	cp (hl)			;9151
	jr z,l915ah		;9152
	set 6,(ix+001h)		;9154
	ld a,(hl)		;9158
	ld (bc),a		;9159
l915ah:
	inc bc			;915a
	ret			;915b
	ld e,000h		;915c
	ld hl,le085h		;915e
l9161h:
	ld c,001h		;9161
	ld a,(hl)		;9163
	or a			;9164
	jr z,l9168h		;9165
sub_9167h:
	ld a,c			;9167
l9168h:
	or e			;9168
	ld e,a			;9169
	ld hl,le0adh		;916a
	sla c			;916d
	ld a,(hl)		;916f
	or a			;9170
	jr z,l9174h		;9171
	ld a,c			;9173
l9174h:
	or e			;9174
	ld e,a			;9175
	ld hl,0e0d5h		;9176
	sla c			;9179
	ld a,(hl)		;917b
	or a			;917c
	jr z,l9180h		;917d
	ld a,c			;917f
l9180h:
	or e			;9180
	ld e,a			;9181
	ld hl,le0fdh		;9182
	sla c			;9185
	ld a,(hl)		;9187
sub_9188h:
	or a			;9188
	jr z,l918ch		;9189
	ld a,c			;918b
l918ch:
	or e			;918c
	ld e,a			;918d
	ld hl,le125h		;918e
sub_9191h:
	sla c			;9191
	ld a,(hl)		;9193
	or a			;9194
	jr z,l9198h		;9195
	ld a,c			;9197
l9198h:
	or e			;9198
	ld e,a			;9199
	ld hl,0e1bfh		;919a
sub_919dh:
	ld a,(hl)		;919d
	cp e			;919e
	jr z,l91a8h		;919f
	ld (hl),e		;91a1
	ld hl,le1afh		;91a2
	set 7,(hl)		;91a5
	ret			;91a7
l91a8h:
	ld hl,le1afh		;91a8
	res 7,(hl)		;91ab
	ret			;91ad
	ld ix,le1aeh		;91ae
	ld hl,le1b0h		;91b2
	ld de,l9880h		;91b5
	ld b,010h		;91b8
	ld c,001h		;91ba
l91bch:
	ld a,(ix+000h)		;91bc
	and c			;91bf
	push bc			;91c0
	call nz,l71d1h+2	;91c1
	pop bc			;91c4
	inc hl			;91c5
	inc de			;91c6
	rlc c			;91c7
	ld a,b			;91c9
l91cah:
	cp 009h			;91ca
	jr nz,l91d0h		;91cc
l91ceh:
	inc ix			;91ce
l91d0h:
	djnz l91bch		;91d0
l91d2h:
	ret			;91d2
	ld a,(hl)		;91d3
l91d4h:
	ld c,a			;91d4
	ld a,03fh		;91d5
	ld (l9000h),a		;91d7
	ld a,c			;91da
	ld (de),a		;91db
	ld a,002h		;91dc
	ld (l9000h),a		;91de
l91e1h:
	ret			;91e1
	ld hl,0e087h		;91e2
	bit 7,(hl)		;91e5
	jr z,l91f8h		;91e7
	res 7,(hl)		;91e9
	ld hl,le09eh		;91eb
	ld e,(hl)		;91ee
	inc hl			;91ef
	ld d,(hl)		;91f0
	ex de,hl		;91f1
l91f2h:
	ld de,09800h		;91f2
	call sub_7236h		;91f5
l91f8h:
	ld hl,le0afh		;91f8
	bit 7,(hl)		;91fb
	jr z,l920eh		;91fd
	res 7,(hl)		;91ff
l9201h:
	ld hl,le0c6h		;9201
	ld e,(hl)		;9204
	inc hl			;9205
	ld d,(hl)		;9206
	ex de,hl		;9207
	ld de,l9820h		;9208
	call sub_7236h		;920b
l920eh:
	ld hl,le0d7h		;920e
	bit 7,(hl)		;9211
	jr z,l9224h		;9213
	res 7,(hl)		;9215
	ld hl,le0eeh		;9217
	ld e,(hl)		;921a
	inc hl			;921b
	ld d,(hl)		;921c
	ex de,hl		;921d
	ld de,l9840h		;921e
	call sub_7236h		;9221
l9224h:
	ld hl,le0ffh		;9224
	bit 7,(hl)		;9227
	ret z			;9229
	res 7,(hl)		;922a
	ld hl,0e116h		;922c
	ld e,(hl)		;922f
	inc hl			;9230
	ld d,(hl)		;9231
	ex de,hl		;9232
	ld de,09860h		;9233
	ld a,03fh		;9236
	ld (l9000h),a		;9238
	xor a			;923b
	ld (l988fh),a		;923c
	ld b,020h		;923f
l9241h:
	ld a,(hl)		;9241
	ld (de),a		;9242
	inc hl			;9243
	inc de			;9244
	djnz l9241h		;9245
	ld hl,l988fh		;9247
	ld de,0e1bfh		;924a
	ld a,(de)		;924d
	ld (hl),a		;924e
	ld a,002h		;924f
	ld (l9000h),a		;9251
	ret			;9254
	ld l,c			;9255
	ld (hl),d		;9256
	ld l,a			;9257
	ld (hl),d		;9258
	ld a,h			;9259
	ld (hl),d		;925a
	adc a,e			;925b
	ld (hl),d		;925c
	and b			;925d
	ld (hl),d		;925e
	cp c			;925f
	ld (hl),d		;9260
	cp c			;9261
	ld (hl),d		;9262
	cp c			;9263
	ld (hl),d		;9264
l9265h:
	cp d			;9265
	ld (hl),d		;9266
	ret			;9267
	ld (hl),d		;9268
	pop hl			;9269
	ld bc,000e4h		;926a
	rlca			;926d
	rst 38h			;926e
	ex (sp),hl		;926f
	ld bc,000e4h		;9270
	adc a,d			;9273
	nop			;9274
	pop hl			;9275
	inc b			;9276
	ld b,005h		;9277
	inc b			;9279
sub_927ah:
	inc bc			;927a
	rst 38h			;927b
	ex (sp),hl		;927c
	ld bc,006e4h		;927d
	add a,c			;9280
	and b			;9281
	jp po,l8200h+1		;9282
	nop			;9285
	ld d,d			;9286
	ld (hl),b		;9287
	inc sp			;9288
	jr nc,$+1		;9289
	pop hl			;928b
	ld bc,014e4h		;928c
	rlca			;928f
	jp po,l7201h		;9290
	nop			;9293
	pop hl			;9294
	ld (bc),a		;9295
	call po,sub_0310h	;9296
	ld (bc),a		;9299
	pop hl			;929a
	ld bc,006e4h		;929b
	ld (bc),a		;929e
	rst 38h			;929f
	jp po,le501h		;92a0
	ld a,(bc)		;92a3
	nop			;92a4
	ld b,d			;92a5
	pop bc			;92a6
	or b			;92a7
	ret pe			;92a8
	pop hl			;92a9
	ld bc,l08e4h		;92aa
	ex af,af'		;92ad
l92aeh:
	rlca			;92ae
	ld b,005h		;92af
	inc b			;92b1
	inc bc			;92b2
l92b3h:
	ld (bc),a		;92b3
	ld (bc),a		;92b4
	ld bc,l0001h		;92b5
	rst 38h			;92b8
	rst 38h			;92b9
	jp po,le501h		;92ba
	add hl,bc		;92bd
l92beh:
	inc bc			;92be
	nop			;92bf
	sub e			;92c0
sub_92c1h:
	ret nc			;92c1
	sub (hl)		;92c2
	nop			;92c3
	sub a			;92c4
	nop			;92c5
	sbc a,b			;92c6
	nop			;92c7
	rst 38h			;92c8
	jp po,la101h		;92c9
	add a,b			;92cc
	push hl			;92cd
	ld a,(bc)		;92ce
	nop			;92cf
l92d0h:
	cp b			;92d0
	pop hl			;92d1
l92d2h:
	ld bc,l04e4h		;92d2
	rlca			;92d5
	dec b			;92d6
	inc b			;92d7
	inc bc			;92d8
	ld (bc),a		;92d9
	ld bc,lfeffh		;92da
	ld (bc),a		;92dd
	ret po			;92de
	ld bc,lf9d7h		;92df
l92e2h:
	di			;92e2
	ld (hl),d		;92e3
	ld sp,hl		;92e4
	cp 072h			;92e5
	rst 38h			;92e7
	cp 002h			;92e8
	ret m			;92ea
	inc bc			;92eb
	ld sp,hl		;92ec
l92edh:
	di			;92ed
	ld (hl),d		;92ee
	ld sp,hl		;92ef
	cp 072h			;92f0
l92f2h:
	rst 38h			;92f2
	jp po,l8001h		;92f3
sub_92f6h:
	jr nz,l92edh		;92f6
	jr z,l932ah		;92f8
	ld b,b			;92fa
	ld d,b			;92fb
	or 0fah			;92fc
	ld (hl),b		;92fe
	ld h,b			;92ff
	ld d,b			;9300
l9301h:
	ld (hl),b		;9301
l9302h:
	ld b,b			;9302
l9303h:
	ld h,b			;9303
l9304h:
	ld b,b			;9304
l9305h:
	ld b,b			;9305
l9306h:
	jr nc,$+34		;9306
l9308h:
	jr nc,l933ah		;9308
	jr nz,l934ch		;930a
	djnz l935eh		;930c
	nop			;930e
	ld h,b			;930f
	jp m,l02feh		;9310
	ret po			;9313
	ld bc,l02feh		;9314
sub_9317h:
	ret m			;9317
	dec d			;9318
	jp po,l8001h		;9319
	jr nc,l92aeh		;931c
	ld b,b			;931e
	add a,b			;931f
	ld d,b			;9320
	add a,b			;9321
	ld h,b			;9322
	add a,b			;9323
	ld (hl),b		;9324
	ex de,hl		;9325
	ld (bc),a		;9326
	ld c,080h		;9327
	add a,b			;9329
l932ah:
	ld (hl),b		;932a
	sub b			;932b
sub_932ch:
	ld d,b			;932c
	and b			;932d
	ld b,b			;932e
l932fh:
	or b			;932f
	jr nc,l92f2h		;9330
	jr nc,l9364h		;9332
	jr nc,$+66		;9334
	jr nc,l9388h		;9336
	jr nc,l939ah		;9338
l933ah:
	jr nc,l93ach		;933a
	jr nz,l92beh		;933c
	jr nz,l92d0h		;933e
	djnz l92e2h		;9340
	djnz $-78		;9342
	rst 38h			;9344
	cp 002h			;9345
	jp po,l0001h		;9347
	nop			;934a
	ld (hl),b		;934b
l934ch:
	ld d,b			;934c
	ld (hl),b		;934d
	ld e,b			;934e
	ex de,hl		;934f
l9350h:
	ex af,af'		;9350
l9351h:
	ld b,020h		;9351
	ld d,b			;9353
	jr nz,l93aeh		;9354
	jr nz,l93a8h		;9356
	jr nz,l93b2h		;9358
	djnz l93ach		;935a
	djnz l93b6h		;935c
l935eh:
	djnz $+82		;935e
sub_9360h:
	djnz l93bah		;9360
	nop			;9362
	ld d,b			;9363
l9364h:
	nop			;9364
	ld e,b			;9365
	ex de,hl		;9366
l9367h:
	inc b			;9367
	ld b,0ffh		;9368
	cp 002h			;936a
	ret m			;936c
	djnz l9351h		;936d
l936fh:
	ld bc,l5080h		;936f
	push af			;9372
	ld e,b			;9373
	ret m			;9374
	ld de,05850h		;9375
	ret m			;9378
	dec d			;9379
	ld d,b			;937a
	ld e,b			;937b
	ret m			;937c
sub_937dh:
	ld d,050h		;937d
	ld e,b			;937f
	ret m			;9380
	ld (bc),a		;9381
	ld d,b			;9382
	ld e,b			;9383
	ret m			;9384
	inc d			;9385
	ld d,b			;9386
	ld e,b			;9387
l9388h:
	ret m			;9388
	ld (de),a		;9389
	ld d,b			;938a
	ld e,b			;938b
	ld d,b			;938c
	ld e,b			;938d
	ret m			;938e
sub_938fh:
	dec d			;938f
	or 020h			;9390
	ld d,b			;9392
	push af			;9393
	ld e,b			;9394
sub_9395h:
	ret m			;9395
	ld d,050h		;9396
	ld e,b			;9398
	ret m			;9399
l939ah:
	ld (bc),a		;939a
l939bh:
	or 010h			;939b
	ld d,b			;939d
	push af			;939e
	ld e,b			;939f
	ret m			;93a0
	inc d			;93a1
	ld d,b			;93a2
	ld e,b			;93a3
	or 0f8h			;93a4
	ld (de),a		;93a6
	nop			;93a7
l93a8h:
	ld d,b			;93a8
	nop			;93a9
	ld e,b			;93aa
	ex de,hl		;93ab
l93ach:
	inc b			;93ac
	ex af,af'		;93ad
l93aeh:
	rst 38h			;93ae
	cp 002h			;93af
sub_93b1h:
	ret c			;93b1
l93b2h:
	ld sp,hl		;93b2
	cp (hl)			;93b3
	ld (hl),e		;93b4
	rst 38h			;93b5
l93b6h:
	cp 002h			;93b6
	ret m			;93b8
	dec d			;93b9
l93bah:
	ld sp,hl		;93ba
	cp (hl)			;93bb
	ld (hl),e		;93bc
	rst 38h			;93bd
	jp po,lb001h		;93be
	sub b			;93c1
	or c			;93c2
	nop			;93c3
	or c			;93c4
	ld h,b			;93c5
	or d			;93c6
	nop			;93c7
	rst 30h			;93c8
	or e			;93c9
	or l			;93ca
	ret m			;93cb
	ld b,0b3h		;93cc
	or d			;93ce
	and c			;93cf
	or 090h			;93d0
	ret po			;93d2
	add a,b			;93d3
	ret nz			;93d4
	ld (hl),b		;93d5
	and b			;93d6
	ld h,b			;93d7
	sub b			;93d8
	ld d,b			;93d9
	add a,b			;93da
	ld b,b			;93db
	ld (hl),b		;93dc
	jr nc,l943fh		;93dd
	jp m,l02feh		;93df
	jp po,l8001h		;93e2
	jr nz,l9367h		;93e5
	ld b,b			;93e7
	add a,b			;93e8
sub_93e9h:
	add a,b			;93e9
	add a,c			;93ea
	nop			;93eb
	add a,d			;93ec
	nop			;93ed
l93eeh:
	add a,e			;93ee
	nop			;93ef
	and b			;93f0
	ld b,b			;93f1
	ld h,b			;93f2
	jr nz,l93eeh		;93f3
sub_93f5h:
	rrca			;93f5
	ld (hl),h		;93f6
	rst 38h			;93f7
sub_93f8h:
	cp 002h			;93f8
l93fah:
	ret m			;93fa
l93fbh:
	ld (bc),a		;93fb
	jp po,l8001h		;93fc
	ld b,b			;93ff
	add a,b			;9400
l9401h:
	add a,b			;9401
	add a,c			;9402
	nop			;9403
	rst 30h			;9404
l9405h:
	add a,d			;9405
	add a,h			;9406
	adc a,b			;9407
	or 070h			;9408
	jr nz,l9405h		;940a
	rrca			;940c
	ld (hl),h		;940d
	rst 38h			;940e
	ld h,b			;940f
	rra			;9410
	jp po,l5000h+2		;9411
	ld e,040h		;9414
	dec e			;9416
	jr nc,l9435h		;9417
	jr nz,l9436h		;9419
	djnz l9437h		;941b
	nop			;941d
	add hl,de		;941e
	jp m,l02feh		;941f
	ret po			;9422
	ld (bc),a		;9423
	cp 002h			;9424
	ret m			;9426
	dec e			;9427
	jp po,lf901h		;9428
l942bh:
	ld d,c			;942b
	ld (hl),h		;942c
	ld sp,hl		;942d
	ld e,d			;942e
	ld (hl),h		;942f
	rst 10h			;9430
	ld sp,hl		;9431
	ld d,c			;9432
	ld (hl),h		;9433
	rst 10h			;9434
l9435h:
	ld sp,hl		;9435
l9436h:
	ld e,d			;9436
l9437h:
	ld (hl),h		;9437
	exx			;9438
	ld sp,hl		;9439
l943ah:
	ld d,c			;943a
	ld (hl),h		;943b
	exx			;943c
	ld sp,hl		;943d
	ld e,d			;943e
l943fh:
	ld (hl),h		;943f
	jp c,051f9h		;9440
	ld (hl),h		;9443
	jp c,l5af9h		;9444
	ld (hl),h		;9447
	ld sp,ix		;9448
	ld d,c			;944a
	ld (hl),h		;944b
	ld sp,ix		;944c
	ld e,d			;944e
	ld (hl),h		;944f
	rst 38h			;9450
	and b			;9451
	ld b,b			;9452
	push af			;9453
	ld b,c			;9454
	ld b,d			;9455
	ld b,c			;9456
	ld b,b			;9457
	or 0fah			;9458
	and b			;945a
sub_945bh:
	dec e			;945b
	push af			;945c
	ld e,01fh		;945d
	ld e,01dh		;945f
	or 0fah			;9461
	cp 002h			;9463
	ret po			;9465
	inc b			;9466
sub_9467h:
	cp 002h			;9467
	ret m			;9469
	inc c			;946a
	jp po,lf901h		;946b
	adc a,h			;946e
	ld (hl),h		;946f
	ld sp,hl		;9470
	sub l			;9471
	ld (hl),h		;9472
	exx			;9473
	ld sp,hl		;9474
	adc a,h			;9475
	ld (hl),h		;9476
	ret c			;9477
	ld sp,hl		;9478
	sub l			;9479
	ld (hl),h		;947a
	call c,sub_8cf9h	;947b
	ld (hl),h		;947e
	jp c,l95f9h		;947f
	ld (hl),h		;9482
	ld sp,ix		;9483
	adc a,h			;9485
	ld (hl),h		;9486
	jp c,l95f9h		;9487
	ld (hl),h		;948a
	rst 38h			;948b
	sub b			;948c
	jr nz,$-9		;948d
	dec (hl)		;948f
	ld b,a			;9490
	ld d,a			;9491
	ld (hl),b		;9492
	or 0fah			;9493
	ld h,b			;9495
	ld a,(hl)		;9496
	ld h,b			;9497
	add a,e			;9498
	ld d,b			;9499
	ld d,b			;949a
	ld d,b			;949b
	jr nc,l94deh		;949c
	ld h,000h		;949e
	nop			;94a0
	nop			;94a1
	nop			;94a2
	jp m,l02feh		;94a3
	ret po			;94a6
	ld bc,001e2h		;94a7
	ld h,c			;94aa
	add a,b			;94ab
	ld h,c			;94ac
	ret nz			;94ad
	ld h,d			;94ae
	nop			;94af
	ld h,d			;94b0
	ld (hl),b		;94b1
	nop			;94b2
	nop			;94b3
	ex de,hl		;94b4
	inc b			;94b5
	inc c			;94b6
	ld h,e			;94b7
l94b8h:
	nop			;94b8
	ld h,e			;94b9
	add a,b			;94ba
sub_94bbh:
	ld h,h			;94bb
	nop			;94bc
	ld e,b			;94bd
	nop			;94be
	ld b,e			;94bf
	nop			;94c0
	inc sp			;94c1
	add a,b			;94c2
	inc h			;94c3
	nop			;94c4
	jr l94c7h		;94c5
l94c7h:
	ex de,hl		;94c7
	ld (bc),a		;94c8
	ex af,af'		;94c9
	rst 38h			;94ca
	cp 002h			;94cb
sub_94cdh:
	ret m			;94cd
	ld a,(de)		;94ce
	jp po,lc101h		;94cf
	add a,b			;94d2
	pop bc			;94d3
	ret nz			;94d4
	jp nz,lc200h		;94d5
	ld (hl),b		;94d8
l94d9h:
	nop			;94d9
	nop			;94da
	ex de,hl		;94db
	inc bc			;94dc
	inc c			;94dd
l94deh:
	jp po,la302h		;94de
	nop			;94e1
l94e2h:
	and e			;94e2
	add a,b			;94e3
	and h			;94e4
	nop			;94e5
	rst 30h			;94e6
	and l			;94e7
	and (hl)		;94e8
	xor b			;94e9
	or 073h			;94ea
	nop			;94ec
	ld h,e			;94ed
	add a,b			;94ee
	ld d,h			;94ef
	nop			;94f0
l94f1h:
	rst 30h			;94f1
	ld d,l			;94f2
	ld b,(hl)		;94f3
	ld c,b			;94f4
	or 0ffh			;94f5
	cp 002h			;94f7
	ret po			;94f9
	ld bc,l02feh		;94fa
	ret m			;94fd
	jr z,l94e2h		;94fe
	ld bc,l40b1h		;9500
	or c			;9503
	sub b			;9504
	or c			;9505
	defb 0fdh,0b2h,071h ;illegal sequence	;9506
	or e			;9509
	dec c			;950a
	or e			;950b
	ret nc			;950c
	or h			;950d
	call nz,sub_f5b5h	;950e
	nop			;9511
	nop			;9512
	ex de,hl		;9513
	ld (bc),a		;9514
	inc d			;9515
	ld sp,hl		;9516
	ld hl,(0d675h)		;9517
	ld sp,hl		;951a
	ld hl,(ld875h)		;951b
	ld sp,hl		;951e
	ld hl,(lda75h)		;951f
	ld sp,hl		;9522
	ld hl,(ldc75h)		;9523
	ld sp,hl		;9526
	ld hl,(lff75h)		;9527
	or b			;952a
	ld a,b			;952b
l952ch:
	or b			;952c
	cp e			;952d
	or b			;952e
	jp pe,l24b1h		;952f
	or c			;9532
	ld l,(hl)		;9533
	or c			;9534
	ret			;9535
	or e			;9536
	nop			;9537
	or h			;9538
	jr nc,l94f1h		;9539
	nop			;953b
	cp b			;953c
	nop			;953d
	jp m,l02feh		;953e
	ret po			;9541
	ld (bc),a		;9542
	ret c			;9543
	ld sp,hl		;9544
	ld d,(hl)		;9545
	ld (hl),l		;9546
	ld sp,hl		;9547
	ld a,b			;9548
	ld (hl),l		;9549
	rst 38h			;954a
	cp 002h			;954b
	ret m			;954d
	dec d			;954e
	ld sp,hl		;954f
	ld d,(hl)		;9550
	ld (hl),l		;9551
	ld sp,hl		;9552
	ld a,b			;9553
l9554h:
	ld (hl),l		;9554
	rst 38h			;9555
	jp po,lc101h		;9556
	nop			;9559
	push af			;955a
	djnz l957dh		;955b
	jr nc,l959fh		;955d
	nop			;955f
	or 0c0h			;9560
	ret p			;9562
	ret nz			;9563
	ret po			;9564
	ret nz			;9565
	ret nz			;9566
	ret nz			;9567
	or b			;9568
	ret nz			;9569
	ret po			;956a
	ret nz			;956b
	ret nc			;956c
l956dh:
	push af			;956d
	ret nz			;956e
	or b			;956f
	and b			;9570
	ret nz			;9571
	or b			;9572
	and b			;9573
	sub b			;9574
	add a,b			;9575
	or 0fah			;9576
	ld b,c			;9578
	nop			;9579
	ld b,b			;957a
	ret p			;957b
	ld b,b			;957c
l957dh:
	ret po			;957d
	ld b,b			;957e
	ret nz			;957f
	ld b,b			;9580
	or b			;9581
	ld b,b			;9582
	ret po			;9583
	ld b,b			;9584
	ret nc			;9585
	ld b,b			;9586
	ret nz			;9587
	ld b,b			;9588
	or b			;9589
	jr nc,l952ch		;958a
	push af			;958c
	ret nz			;958d
	or b			;958e
	and b			;958f
	sub b			;9590
	add a,b			;9591
	or 0fah			;9592
	cp 002h			;9594
	ret po			;9596
	ld (bc),a		;9597
	cp 002h			;9598
	ret m			;959a
	rla			;959b
	jp po,lb201h		;959c
l959fh:
	add a,b			;959f
	or d			;95a0
	nop			;95a1
	or c			;95a2
	and b			;95a3
	or c			;95a4
	ld h,b			;95a5
	ld sp,hl		;95a6
	cp d			;95a7
	ld (hl),l		;95a8
	sub 0f9h		;95a9
	cp d			;95ab
	ld (hl),l		;95ac
	rst 10h			;95ad
	ld sp,hl		;95ae
	cp d			;95af
	ld (hl),l		;95b0
	ret c			;95b1
	ld sp,hl		;95b2
l95b3h:
	cp d			;95b3
	ld (hl),l		;95b4
	jp c,0baf9h		;95b5
	ld (hl),l		;95b8
	rst 38h			;95b9
	or c			;95ba
	jr nz,l956dh		;95bb
	ret po			;95bd
l95beh:
	push af			;95be
	and b			;95bf
	ld (hl),b		;95c0
	ld d,b			;95c1
	jr nc,$+42		;95c2
	jr nz,l95deh		;95c4
	djnz l95beh		;95c6
	jp m,l02feh		;95c8
	jp po,lf903h		;95cb
	pop hl			;95ce
	ld (hl),l		;95cf
	sub 0f9h		;95d0
	pop hl			;95d2
	ld (hl),l		;95d3
	rst 10h			;95d4
	ld sp,hl		;95d5
	pop hl			;95d6
	ld (hl),l		;95d7
	ret c			;95d8
l95d9h:
	ld sp,hl		;95d9
	pop hl			;95da
	ld (hl),l		;95db
	exx			;95dc
	ld sp,hl		;95dd
l95deh:
	pop hl			;95de
	ld (hl),l		;95df
	rst 38h			;95e0
l95e1h:
	or d			;95e1
	nop			;95e2
	or c			;95e3
	nop			;95e4
	or b			;95e5
	add a,b			;95e6
	push af			;95e7
	ld b,b			;95e8
	jr nz,l95e1h		;95e9
	jp m,l02feh		;95eb
	ret m			;95ee
	inc b			;95ef
	jp po,lb001h		;95f0
	add a,b			;95f3
	or b			;95f4
	and b			;95f5
	or b			;95f6
	or b			;95f7
	or c			;95f8
l95f9h:
	nop			;95f9
	or c			;95fa
	add a,b			;95fb
	or d			;95fc
	nop			;95fd
	or d			;95fe
	add a,b			;95ff
	or e			;9600
	nop			;9601
	ret m			;9602
	ld a,(bc)		;9603
	or d			;9604
	nop			;9605
	or c			;9606
	ret po			;9607
	or c			;9608
	ret p			;9609
	push af			;960a
	ret nz			;960b
	or b			;960c
	and b			;960d
	sub b			;960e
	add a,b			;960f
	ld (hl),b		;9610
	ld h,b			;9611
	ld d,b			;9612
	ld b,b			;9613
	jr nc,l9636h		;9614
	djnz l9618h		;9616
l9618h:
	or 0b0h			;9618
	call p,lf0afh+1		;961a
	or b			;961d
	ret po			;961e
	or b			;961f
	ret nc			;9620
l9621h:
	push af			;9621
	ret nz			;9622
	or b			;9623
	and b			;9624
	sbc a,b			;9625
	sub b			;9626
	adc a,b			;9627
	add a,b			;9628
	ld a,b			;9629
	ld (hl),b		;962a
	ld l,b			;962b
	ld h,b			;962c
	ld e,b			;962d
	ld d,b			;962e
	ld c,h			;962f
	ld c,b			;9630
	ld b,h			;9631
	ld b,b			;9632
	inc a			;9633
	jr c,l966ah		;9634
l9636h:
	jr nc,l9666h		;9636
	inc l			;9638
	ld hl,(02628h)		;9639
	inc h			;963c
	ld (lf620h),hl		;963d
	rst 38h			;9640
	cp 002h			;9641
	ex (sp),hl		;9643
	ld bc,00fe4h		;9644
	rst 10h			;9647
	ld sp,hl		;9648
	ld d,(hl)		;9649
	halt			;964a
	rst 38h			;964b
	cp 002h			;964c
	ret m			;964e
	dec c			;964f
	jp po,lf901h		;9650
	ld d,(hl)		;9653
	halt			;9654
	rst 38h			;9655
	or b			;9656
	add a,b			;9657
	and b			;9658
	ld b,b			;9659
	sub b			;965a
	add a,b			;965b
	ld (hl),b		;965c
	jr nz,l9621h		;965d
	ld bc,l00c0h+2		;965f
	rst 30h			;9662
	or h			;9663
	or l			;9664
	or (hl)			;9665
l9666h:
	or a			;9666
	cp b			;9667
	cp c			;9668
	cp d			;9669
l966ah:
	xor e			;966a
	xor h			;966b
	or 0fah			;966c
	rst 28h			;966e
	ld (bc),a		;966f
	cp 001h			;9670
	jp (hl)			;9672
	ld bc,l0ceah		;9673
	pop de			;9676
l9677h:
	call pe,led00h		;9677
	ld bc,l0488h		;967a
	ld (hl),h		;967d
	ld b,h			;967e
	ld (hl),h		;967f
	defb 0edh ;next byte illegal after ed	;9680
l9681h:
	ld bc,0d023h		;9681
	add hl,bc		;9684
	rst 38h			;9685
l9686h:
	cp 002h			;9686
	ret po			;9688
	ld (bc),a		;9689
	cp 002h			;968a
	ret m			;968c
	dec d			;968d
	jp po,l6001h		;968e
	ld e,b			;9691
	ld h,b			;9692
	ld h,b			;9693
sub_9694h:
	add a,b			;9694
l9695h:
	ld l,c			;9695
sub_9696h:
	push af			;9696
	ld (hl),b		;9697
	ld a,b			;9698
	add a,b			;9699
	ld (hl),b		;969a
	ld a,b			;969b
	add a,b			;969c
	adc a,b			;969d
	sub b			;969e
l969fh:
	add a,b			;969f
	or 070h			;96a0
	adc a,b			;96a2
	ld h,b			;96a3
	sub b			;96a4
	ld h,b			;96a5
	sbc a,b			;96a6
	ld h,b			;96a7
	and b			;96a8
	ld d,b			;96a9
	sub b			;96aa
	ld d,b			;96ab
	sbc a,b			;96ac
	ld d,b			;96ad
	and b			;96ae
	ld b,b			;96af
	xor b			;96b0
	ld b,b			;96b1
	or b			;96b2
	jr nc,$-70		;96b3
	jr nc,l9677h		;96b5
	jr nz,l9681h		;96b7
	jr nz,$-46		;96b9
	djnz l9695h		;96bb
	djnz l969fh		;96bd
	rst 38h			;96bf
	cp 002h			;96c0
	jp po,la201h		;96c2
	ret p			;96c5
	and d			;96c6
	ret nc			;96c7
l96c8h:
	push af			;96c8
	ret nz			;96c9
	or b			;96ca
	ld (hl),b		;96cb
	ld d,b			;96cc
	sub b			;96cd
	ld (hl),b		;96ce
	ld d,b			;96cf
	jr nc,l96c8h		;96d0
l96d2h:
	or d			;96d2
	djnz l9686h		;96d3
	ret p			;96d5
	or c			;96d6
	ret po			;96d7
	or c			;96d8
	ret nc			;96d9
	push af			;96da
	ret nz			;96db
	or b			;96dc
	and b			;96dd
	sub b			;96de
	add a,b			;96df
l96e0h:
	or 0ebh			;96e0
	inc bc			;96e2
	rra			;96e3
	ld sp,hl		;96e4
l96e5h:
	ld a,077h		;96e5
	add a,d			;96e7
l96e8h:
	ld d,b			;96e8
	add a,d			;96e9
	jr nc,l96e5h		;96ea
	ld c,h			;96ec
	ld (hl),a		;96ed
	ld sp,hl		;96ee
	ld d,l			;96ef
	ld (hl),a		;96f0
	sub 0f9h		;96f1
	ld a,077h		;96f3
	ld (hl),d		;96f5
	ld d,b			;96f6
	ld (hl),d		;96f7
	jr nc,l96d2h		;96f8
	ld sp,hl		;96fa
	ld c,h			;96fb
	ld (hl),a		;96fc
	in a,(0f9h)		;96fd
	ld d,l			;96ff
	ld (hl),a		;9700
	rst 38h			;9701
	cp 002h			;9702
l9704h:
	ret m			;9704
l9705h:
	ld a,(bc)		;9705
l9706h:
	jp po,lc201h		;9706
l9709h:
	ret nc			;9709
	push af			;970a
	ret nz			;970b
	and b			;970c
	add a,b			;970d
	ld h,b			;970e
	ld b,b			;970f
	jr nz,$-8		;9710
	pop bc			;9712
	ret p			;9713
sub_9714h:
	pop bc			;9714
	ret po			;9715
	pop bc			;9716
	ret nc			;9717
	pop bc			;9718
	ret nz			;9719
	pop bc			;971a
	ret nc			;971b
	push af			;971c
	ret nz			;971d
	or b			;971e
	and b			;971f
	sub b			;9720
	add a,b			;9721
	ld (hl),b		;9722
	ld h,b			;9723
	or 0ebh			;9724
	inc bc			;9726
	ld hl,l5ef9h		;9727
	ld (hl),a		;972a
l972bh:
	ld sp,hl		;972b
	ld l,e			;972c
	ld (hl),a		;972d
	ld sp,hl		;972e
	halt			;972f
	ld (hl),a		;9730
	ret c			;9731
	ld sp,hl		;9732
	ld e,(hl)		;9733
	ld (hl),a		;9734
	exx			;9735
	ld sp,hl		;9736
	ld l,e			;9737
	ld (hl),a		;9738
	jp c,076f9h		;9739
	ld (hl),a		;973c
	rst 38h			;973d
	add a,d			;973e
	ret p			;973f
	add a,d			;9740
	ret nc			;9741
	add a,d			;9742
sub_9743h:
	or b			;9743
	push af			;9744
	sub b			;9745
	ld (hl),b		;9746
l9747h:
	ld d,b			;9747
	sub b			;9748
	ld (hl),b		;9749
	or 0fah			;974a
	sub d			;974c
	djnz l96e0h		;974d
	ret p			;974f
	sub c			;9750
	ret po			;9751
	sub c			;9752
	ret nc			;9753
	jp m,lc091h		;9754
	push af			;9757
	or b			;9758
	and b			;9759
	sub b			;975a
	add a,b			;975b
	or 0fah			;975c
l975eh:
	and d			;975e
	ret nc			;975f
	push af			;9760
	ret nz			;9761
	and b			;9762
	add a,b			;9763
	ld h,b			;9764
	ld b,b			;9765
	jr nz,l975eh		;9766
	and c			;9768
	ret p			;9769
	jp m,le0a1h		;976a
	and c			;976d
	ret nc			;976e
	push af			;976f
	ret nz			;9770
	or b			;9771
	and b			;9772
	sub b			;9773
	or 0fah			;9774
	and c			;9776
	add a,b			;9777
	push af			;9778
	ld (hl),b		;9779
	ld h,b			;977a
	ld d,b			;977b
	ld b,b			;977c
	or 0fah			;977d
	cp 002h			;977f
	ex (sp),hl		;9781
	ex af,af'		;9782
	call po,l9000h		;9783
	ld b,b			;9786
	push af			;9787
	ccf			;9788
	ld a,03dh		;9789
	inc a			;978b
	dec sp			;978c
	ld a,(l3839h)		;978d
	or 080h			;9790
	scf			;9792
	ld (hl),b		;9793
	ld (hl),060h		;9794
	dec (hl)		;9796
	ld d,b			;9797
	inc (hl)		;9798
	ld b,b			;9799
	inc sp			;979a
	rst 38h			;979b
	cp 001h			;979c
	ret m			;979e
	jr nz,$-21		;979f
	ld bc,l0feah		;97a1
	out (090h),a		;97a4
	ld sp,hl		;97a6
	call po,05077h		;97a7
	ld b,b			;97aa
	jr nc,l97cdh		;97ab
	djnz l97afh		;97ad
l97afh:
	out (0b0h),a		;97af
	ld sp,hl		;97b1
	call po,sub_3077h	;97b2
	jr nz,$+18		;97b5
l97b7h:
	nop			;97b7
l97b8h:
	out (0b0h),a		;97b8
	jp nc,l1000h		;97ba
	jr nz,l97efh		;97bd
	ld b,b			;97bf
	jr nc,$+34		;97c0
	djnz l97c4h		;97c2
l97c4h:
	ex de,hl		;97c4
	inc b			;97c5
	ld c,0f9h		;97c6
	defb 0edh ;next byte illegal after ed	;97c8
	ld (hl),a		;97c9
	jp pe,lf90eh		;97ca
l97cdh:
	defb 0edh ;next byte illegal after ed	;97cd
	ld (hl),a		;97ce
	jp pe,lf90dh		;97cf
	defb 0edh ;next byte illegal after ed	;97d2
	ld (hl),a		;97d3
	jp pe,lf90bh		;97d4
	defb 0edh ;next byte illegal after ed	;97d7
	ld (hl),a		;97d8
	jp pe,lf90ah		;97d9
	or 077h			;97dc
	jp pe,lf908h		;97de
	or 077h			;97e1
	rst 38h			;97e3
	and b			;97e4
	or b			;97e5
	jp nc,l1000h		;97e6
	jr nz,l981bh		;97e9
	ld b,b			;97eb
	jp m,02010h		;97ec
l97efh:
	jr nc,l9831h		;97ef
	jr nc,l9813h		;97f1
sub_97f3h:
	djnz l97f5h		;97f3
l97f5h:
	jp m,02010h		;97f5
	jr nc,l983ah		;97f8
	jr nc,l981ch		;97fa
	jp m,l02feh		;97fc
	jp po,ld801h		;97ff
	ld sp,hl		;9802
	dec d			;9803
	ld a,b			;9804
	sub 0f9h		;9805
	dec d			;9807
	ld a,b			;9808
	ld sp,hl		;9809
	dec d			;980a
	ld a,b			;980b
	rst 10h			;980c
	ld sp,hl		;980d
	dec d			;980e
	ld a,b			;980f
	jp c,l15f9h		;9810
l9813h:
	ld a,b			;9813
	rst 38h			;9814
	ld (hl),e		;9815
	ld b,b			;9816
	ld (hl),e		;9817
	nop			;9818
	sub d			;9819
	ret nz			;981a
l981bh:
	sub d			;981b
l981ch:
	add a,b			;981c
	sub d			;981d
	ld b,b			;981e
	add a,d			;981f
l9820h:
	nop			;9820
	jp m,l02feh		;9821
	ret m			;9824
	ld b,0e2h		;9825
	ld bc,lf9d7h		;9827
	jr c,l98a4h		;982a
	ld sp,hl		;982c
	jr c,l98a7h		;982d
	sub 0f9h		;982f
l9831h:
	jr c,l98abh		;9831
	jp c,038f9h		;9833
	ld a,b			;9836
	rst 38h			;9837
	or d			;9838
	nop			;9839
l983ah:
	or c			;983a
	ret nc			;983b
l983ch:
	pop bc			;983c
	and b			;983d
	pop bc			;983e
	add a,b			;983f
l9840h:
	or c			;9840
	ld h,b			;9841
	or c			;9842
	ld b,b			;9843
	jp m,l02feh		;9844
	jp po,ld601h		;9847
	ld sp,hl		;984a
	add a,l			;984b
	ld a,b			;984c
	ld (hl),c		;984d
	nop			;984e
	ret c			;984f
	ld sp,hl		;9850
	add a,l			;9851
	ld a,b			;9852
	pop hl			;9853
	inc bc			;9854
	call po,sub_0511h	;9855
	call po,00615h		;9858
	call po,sub_0819h	;985b
	call po,0071bh		;985e
	call po,l061eh+1	;9861
	dec b			;9864
	ld (bc),a		;9865
	rst 38h			;9866
	cp 002h			;9867
	ret m			;9869
	inc bc			;986a
	ld sp,hl		;986b
	add a,l			;986c
	ld a,b			;986d
	ret m			;986e
	dec b			;986f
	sub c			;9870
	nop			;9871
	ld sp,hl		;9872
	add a,l			;9873
	ld a,b			;9874
	jp po,lf801h		;9875
l9878h:
	inc b			;9878
	add a,c			;9879
	nop			;987a
	rst 30h			;987b
	add a,d			;987c
	ld (hl),h		;987d
	adc a,b			;987e
	ld (hl),c		;987f
l9880h:
	ld (hl),d		;9880
	ld h,h			;9881
	ld l,b			;9882
	or 0ffh			;9883
	jp po,09101h		;9885
	ld d,b			;9888
	sub c			;9889
	and b			;988a
	sub d			;988b
l988ch:
	nop			;988c
	push af			;988d
	ld b,b			;988e
l988fh:
	add a,b			;988f
	ret nz			;9890
	or 093h			;9891
	nop			;9893
	sub e			;9894
	add a,b			;9895
	sub h			;9896
	nop			;9897
	jp m,l02feh		;9898
	ex (sp),hl		;989b
	ld bc,l08e4h		;989c
	ret c			;989f
	ld sp,hl		;98a0
	ret nz			;98a1
	ld a,b			;98a2
	exx			;98a3
l98a4h:
	ld sp,hl		;98a4
	rst 8			;98a5
	ld a,b			;98a6
l98a7h:
	ex (sp),hl		;98a7
	ld (bc),a		;98a8
	exx			;98a9
	ld sp,hl		;98aa
l98abh:
	ret po			;98ab
	ld a,b			;98ac
	rst 38h			;98ad
	cp 002h			;98ae
	ret m			;98b0
	ld (001e2h),hl		;98b1
	ld sp,hl		;98b4
	ret nz			;98b5
	ld a,b			;98b6
	ld sp,hl		;98b7
	rst 8			;98b8
	ld a,b			;98b9
	jp po,lf902h		;98ba
	ret po			;98bd
	ld a,b			;98be
	rst 38h			;98bf
	and c			;98c0
	nop			;98c1
	rst 30h			;98c2
	and d			;98c3
	and e			;98c4
	sub h			;98c5
	sub l			;98c6
	sub (hl)		;98c7
	add a,a			;98c8
	ld a,b			;98c9
	or 0ebh			;98ca
	ld (bc),a		;98cc
	add hl,bc		;98cd
l98ceh:
	jp m,000b6h		;98ce
	or d			;98d1
	add a,b			;98d2
	or e			;98d3
l98d4h:
	nop			;98d4
	or e			;98d5
	add a,b			;98d6
	and h			;98d7
	nop			;98d8
	and h			;98d9
	add a,b			;98da
	and l			;98db
	nop			;98dc
	and l			;98dd
	add a,b			;98de
	jp m,l00b3h		;98df
	push af			;98e2
	ld b,b			;98e3
	add a,b			;98e4
	ret nz			;98e5
	or 094h			;98e6
	nop			;98e8
	push af			;98e9
	ld b,b			;98ea
	add a,b			;98eb
	ret nz			;98ec
	or 075h			;98ed
	nop			;98ef
	ld (hl),l		;98f0
	ld b,b			;98f1
	ld h,l			;98f2
	add a,b			;98f3
	ld h,l			;98f4
	ret nz			;98f5
	ld d,(hl)		;98f6
	nop			;98f7
	ld d,(hl)		;98f8
	ld b,b			;98f9
	ld d,(hl)		;98fa
	add a,b			;98fb
	ld b,(hl)		;98fc
	ret nz			;98fd
	ld b,a			;98fe
	nop			;98ff
	scf			;9900
	ld h,b			;9901
	scf			;9902
	add a,b			;9903
	scf			;9904
	ret nz			;9905
	jr z,l9908h		;9906
l9908h:
	jr z,$+66		;9908
	jr l988ch		;990a
	jr l98ceh		;990c
	add hl,bc		;990e
	nop			;990f
	add hl,bc		;9910
	ld b,b			;9911
	jp m,l02feh		;9912
	jp po,l5000h+2		;9915
l9918h:
	jr nz,$+66		;9918
	ld b,b			;991a
	ld b,b			;991b
	jr nc,$+66		;991c
	jr nz,l9960h		;991e
	jr nz,$-19		;9920
	ld (bc),a		;9922
	inc c			;9923
	jp po,l3004h		;9924
	jr nz,$-28		;9927
sub_9929h:
	add hl,bc		;9929
	djnz l994ch		;992a
	rst 38h			;992c
	cp 002h			;992d
	ret m			;992f
	jr $-28			;9930
	ld bc,sub_0050h+1	;9932
	ld d,b			;9935
	ld b,b			;9936
	ld d,c			;9937
	nop			;9938
	ld d,d			;9939
	nop			;993a
	ld d,b			;993b
	ld h,b			;993c
	ex de,hl		;993d
	ld (bc),a		;993e
	inc c			;993f
	ld h,d			;9940
	nop			;9941
	ld sp,hl		;9942
	ld c,(hl)		;9943
	ld a,c			;9944
	sub 0f9h		;9945
	ld c,(hl)		;9947
	ld a,c			;9948
	ld de,l0080h		;9949
l994ch:
	ret nz			;994c
	rst 38h			;994d
	ld b,c			;994e
	add a,b			;994f
	ld b,b			;9950
	ret nz			;9951
	jr nc,l98d4h		;9952
	ld d,b			;9954
	ld h,b			;9955
	ld d,e			;9956
	nop			;9957
	jp m,l02feh		;9958
	ret po			;995b
	ld bc,lf9d7h		;995c
	ld l,d			;995f
l9960h:
	ld a,c			;9960
	rst 38h			;9961
	cp 002h			;9962
	ret m			;9964
	dec c			;9965
	ld sp,hl		;9966
	ld l,d			;9967
	ld a,c			;9968
	rst 38h			;9969
	jp po,lc101h		;996a
	ld b,b			;996d
	pop bc			;996e
	sub b			;996f
	pop bc			;9970
	ret p			;9971
	jp nz,0c371h		;9972
	dec c			;9975
	jp 0c4d0h		;9976
	call nz,sub_f5c5h	;9979
l997ch:
	or l			;997c
	push af			;997d
	and l			;997e
	push af			;997f
	sub l			;9980
	push af			;9981
	add a,l			;9982
	push af			;9983
	add a,c			;9984
	ld b,b			;9985
	add a,c			;9986
	sub b			;9987
	add a,c			;9988
sub_9989h:
	ret p			;9989
	add a,d			;998a
	ld (hl),c		;998b
	add a,e			;998c
	dec c			;998d
	add a,e			;998e
	ret nc			;998f
	jp m,l02feh		;9990
	ret m			;9993
	add hl,de		;9994
	jp po,la101h		;9995
l9998h:
	ld b,b			;9998
l9999h:
	and c			;9999
	sub b			;999a
	and c			;999b
l999ch:
	ret p			;999c
	and d			;999d
	ld (hl),c		;999e
	and e			;999f
	dec c			;99a0
	and e			;99a1
	ret nc			;99a2
	and h			;99a3
	call nz,sub_f5a5h	;99a4
	sub l			;99a7
	nop			;99a8
	jp po,l8502h		;99a9
	push af			;99ac
	add a,l			;99ad
	nop			;99ae
	ld (hl),l		;99af
	push af			;99b0
	ld (hl),l		;99b1
	jr nc,l9a19h		;99b2
	push af			;99b4
	ld h,l			;99b5
	jr nc,$+87		;99b6
	push af			;99b8
	ld d,l			;99b9
	jr nc,l9a01h		;99ba
	push af			;99bc
	ld b,l			;99bd
	jr nc,l99f5h		;99be
	push af			;99c0
	dec (hl)		;99c1
	jr nc,l99e9h		;99c2
l99c4h:
	push af			;99c4
	dec h			;99c5
	jr nc,l99ddh		;99c6
	push af			;99c8
	dec d			;99c9
	jr nc,l99d1h		;99ca
	push af			;99cc
	dec b			;99cd
	jr nc,l99d5h		;99ce
	push af			;99d0
l99d1h:
	rst 38h			;99d1
	cp 002h			;99d2
	ex (sp),hl		;99d4
l99d5h:
	ld bc,l47f9h		;99d5
	ld a,d			;99d8
	call po,sub_a30ah	;99d9
	nop			;99dc
l99ddh:
	ld sp,hl		;99dd
	ld b,a			;99de
	ld a,d			;99df
	call po,sub_a30ah	;99e0
	nop			;99e3
	call po,0f91ah		;99e4
	ld e,(hl)		;99e7
	ld a,d			;99e8
l99e9h:
	and h			;99e9
	ld a,(bc)		;99ea
l99ebh:
	sub e			;99eb
	nop			;99ec
	ld sp,hl		;99ed
	ld b,a			;99ee
	ld a,d			;99ef
	call nz,lf90ah		;99f0
	ld e,(hl)		;99f3
	ld a,d			;99f4
l99f5h:
	call po,sub_8013h	;99f5
	ld c,h			;99f8
	add a,b			;99f9
	jr c,l997ch		;99fa
	ld c,(hl)		;99fc
	jp po,l8401h		;99fd
	nop			;9a00
l9a01h:
	ex (sp),hl		;9a01
	ld bc,l0ae4h		;9a02
	ld sp,hl		;9a05
	ld (hl),e		;9a06
	ld a,d			;9a07
l9a08h:
	ex (sp),hl		;9a08
	ld bc,l0ae4h		;9a09
	sub 0f9h		;9a0c
	ld (hl),e		;9a0e
	ld a,d			;9a0f
	ex (sp),hl		;9a10
	ld bc,l0ae4h		;9a11
	exx			;9a14
	ld sp,hl		;9a15
	ld (hl),e		;9a16
	ld a,d			;9a17
	ex (sp),hl		;9a18
l9a19h:
	ld bc,l0ae4h		;9a19
	jp c,073f9h		;9a1c
	ld a,d			;9a1f
	rst 38h			;9a20
	cp 002h			;9a21
	ret m			;9a23
	jr z,l9a08h		;9a24
	ld bc,l86f9h		;9a26
	ld a,d			;9a29
	ld sp,hl		;9a2a
	add a,(hl)		;9a2b
	ld a,d			;9a2c
	sub 0f9h		;9a2d
	sub a			;9a2f
	ld a,d			;9a30
	ld sp,hl		;9a31
	add a,(hl)		;9a32
	ld a,d			;9a33
l9a34h:
	ld sp,hl		;9a34
	sub a			;9a35
	ld a,d			;9a36
	ld sp,hl		;9a37
	sub a			;9a38
	ld a,d			;9a39
	exx			;9a3a
	ld sp,hl		;9a3b
	sub a			;9a3c
	ld a,d			;9a3d
	jp c,097f9h		;9a3e
	ld a,d			;9a41
	in a,(0f9h)		;9a42
	sub a			;9a44
	ld a,d			;9a45
	rst 38h			;9a46
	call po,sub_b30ah	;9a47
	nop			;9a4a
	call po,sub_9015h	;9a4b
	jr c,l9a34h		;9a4e
	inc de			;9a50
	sub b			;9a51
	ld c,h			;9a52
	sub b			;9a53
	jr c,$-110		;9a54
	ld c,(hl)		;9a56
	jp po,l9401h		;9a57
	nop			;9a5a
	ex (sp),hl		;9a5b
	ld bc,la3fah		;9a5c
	nop			;9a5f
	call po,sub_8015h	;9a60
	jr c,$-26		;9a63
	inc de			;9a65
	add a,b			;9a66
	ld c,h			;9a67
	add a,b			;9a68
	jr c,l99ebh		;9a69
	ld c,(hl)		;9a6b
	jp po,l8401h		;9a6c
	nop			;9a6f
	ex (sp),hl		;9a70
	ld bc,l93fah		;9a71
	nop			;9a74
	call po,sub_7015h	;9a75
	jr c,$-26		;9a78
	inc de			;9a7a
	ld (hl),b		;9a7b
	ld c,h			;9a7c
	ld (hl),b		;9a7d
	jr c,l9af0h		;9a7e
	ld c,(hl)		;9a80
	jp po,l7401h		;9a81
	nop			;9a84
	jp m,sub_0093h		;9a85
	ld (hl),c		;9a88
	jr c,l9afch		;9a89
	ld c,h			;9a8b
	ld (hl),d		;9a8c
	jr c,$+117		;9a8d
	ld c,(hl)		;9a8f
	ld (hl),h		;9a90
l9a91h:
	nop			;9a91
	add a,e			;9a92
l9a93h:
	nop			;9a93
	ld h,l			;9a94
	jr c,l9a91h		;9a95
	ld (hl),e		;9a97
	nop			;9a98
	ld h,c			;9a99
	jr c,l9afdh		;9a9a
	ld c,h			;9a9c
	ld h,d			;9a9d
	jr c,$+101		;9a9e
	ld c,(hl)		;9aa0
	ld d,h			;9aa1
l9aa2h:
	nop			;9aa2
	ld h,e			;9aa3
	nop			;9aa4
	ld d,l			;9aa5
	jr c,l9aa2h		;9aa6
	cp 002h			;9aa8
l9aaah:
	ret po			;9aaa
	ld bc,l02feh		;9aab
sub_9aaeh:
	ret m			;9aae
	jr z,l9a93h		;9aaf
	ld bc,l4091h		;9ab1
	sub c			;9ab4
	sub b			;9ab5
	sub c			;9ab6
l9ab7h:
	ret p			;9ab7
	sub d			;9ab8
	ld (hl),c		;9ab9
	sub e			;9aba
	dec c			;9abb
	sub e			;9abc
	ret nc			;9abd
	sub h			;9abe
	call nz,sub_f595h	;9abf
	nop			;9ac2
sub_9ac3h:
	nop			;9ac3
	add a,l			;9ac4
	push af			;9ac5
	add a,d			;9ac6
	ld d,b			;9ac7
	add a,c			;9ac8
	ld b,b			;9ac9
	ex de,hl		;9aca
	ex af,af'		;9acb
	ex af,af'		;9acc
	ld h,l			;9acd
	push af			;9ace
	ld h,d			;9acf
	ld d,b			;9ad0
	ld h,c			;9ad1
	ld b,b			;9ad2
	ex de,hl		;9ad3
	ld b,008h		;9ad4
	ld b,l			;9ad6
	push af			;9ad7
	ld b,d			;9ad8
	ld d,b			;9ad9
	ld b,c			;9ada
	ld b,b			;9adb
	ex de,hl		;9adc
	inc b			;9add
	ex af,af'		;9ade
	dec (hl)		;9adf
	push af			;9ae0
	ld (l3150h),a		;9ae1
	ld b,b			;9ae4
	ex de,hl		;9ae5
	ld (bc),a		;9ae6
	ex af,af'		;9ae7
	dec d			;9ae8
	push af			;9ae9
l9aeah:
	ld (de),a		;9aea
	ld d,b			;9aeb
	ld de,leb40h		;9aec
	ld (bc),a		;9aef
l9af0h:
	ex af,af'		;9af0
	rst 38h			;9af1
	cp 002h			;9af2
	ex (sp),hl		;9af4
	ld bc,000e4h		;9af5
	add a,b			;9af8
	inc e			;9af9
	add a,b			;9afa
	inc h			;9afb
l9afch:
	add a,b			;9afc
l9afdh:
	inc (hl)		;9afd
	ld (hl),b		;9afe
	inc h			;9aff
	ld (hl),b		;9b00
	ld (l3670h),hl		;9b01
	add a,b			;9b04
	inc a			;9b05
	add a,b			;9b06
	ld b,b			;9b07
	ld (hl),b		;9b08
	inc e			;9b09
	ex de,hl		;9b0a
	inc bc			;9b0b
l9b0ch:
	inc d			;9b0c
	ld h,b			;9b0d
	inc h			;9b0e
	ld h,b			;9b0f
	inc (hl)		;9b10
	ld d,b			;9b11
	inc h			;9b12
	ld d,b			;9b13
	ld (l3650h),hl		;9b14
	ld h,b			;9b17
	inc a			;9b18
	ld h,b			;9b19
	ld b,b			;9b1a
	jr nc,$+30		;9b1b
	rst 38h			;9b1d
	cp 002h			;9b1e
	ret m			;9b20
	dec d			;9b21
	jp po,lf901h		;9b22
	scf			;9b25
	ld a,e			;9b26
	ret c			;9b27
	ld sp,hl		;9b28
	scf			;9b29
	ld a,e			;9b2a
	ld sp,hl		;9b2b
	scf			;9b2c
	ld a,e			;9b2d
sub_9b2eh:
	ret c			;9b2e
	ld sp,hl		;9b2f
	scf			;9b30
l9b31h:
	ld a,e			;9b31
	in a,(0f9h)		;9b32
	scf			;9b34
	ld a,e			;9b35
	rst 38h			;9b36
	and c			;9b37
	ld h,0a1h		;9b38
	sbc a,a			;9b3a
l9b3bh:
	and d			;9b3b
	dec e			;9b3c
	sub c			;9b3d
	ld e,c			;9b3e
	sub c			;9b3f
	cp l			;9b40
sub_9b41h:
	sub d			;9b41
	dec a			;9b42
	and c			;9b43
	or (hl)			;9b44
	and d			;9b45
	sbc a,(hl)		;9b46
	jp m,l02feh		;9b47
	jp po,l8200h+1		;9b4a
	xor h			;9b4d
	add a,d			;9b4e
	pop hl			;9b4f
	add a,e			;9b50
	ld a,(03f92h)		;9b51
	sub d			;9b54
	ld h,a			;9b55
	nop			;9b56
	nop			;9b57
	ld sp,hl		;9b58
	sub e			;9b59
	ld a,e			;9b5a
	rst 10h			;9b5b
	ld sp,hl		;9b5c
	sub e			;9b5d
	ld a,e			;9b5e
	ret c			;9b5f
	ld sp,hl		;9b60
	sub e			;9b61
	ld a,e			;9b62
	ret c			;9b63
	ld sp,hl		;9b64
	sub e			;9b65
	ld a,e			;9b66
	exx			;9b67
	ld sp,hl		;9b68
	sub e			;9b69
	ld a,e			;9b6a
	rst 38h			;9b6b
	cp 002h			;9b6c
	ret m			;9b6e
	add hl,de		;9b6f
	jp po,l7201h		;9b70
	sbc a,h			;9b73
	ld (hl),d		;9b74
	pop hl			;9b75
	ld h,e			;9b76
sub_9b77h:
	ld a,(03f72h)		;9b77
	ld (hl),d		;9b7a
	ld h,a			;9b7b
	nop			;9b7c
	nop			;9b7d
	ret c			;9b7e
	ld sp,hl		;9b7f
	sub e			;9b80
	ld a,e			;9b81
	jp c,sub_93f8h+1	;9b82
sub_9b85h:
	ld a,e			;9b85
	in a,(0f9h)		;9b86
	sub e			;9b88
	ld a,e			;9b89
	in a,(0f9h)		;9b8a
	sub e			;9b8c
	ld a,e			;9b8d
	call c,sub_93f8h+1	;9b8e
	ld a,e			;9b91
	rst 38h			;9b92
	ld (hl),d		;9b93
	xor h			;9b94
	ld (hl),d		;9b95
	pop hl			;9b96
	ld h,e			;9b97
l9b98h:
	ld a,(l3f61h+1)		;9b98
	ld d,d			;9b9b
	ld h,a			;9b9c
	sub d			;9b9d
	xor e			;9b9e
l9b9fh:
	sub d			;9b9f
	rrca			;9ba0
	sub c			;9ba1
	rst 28h			;9ba2
	nop			;9ba3
	nop			;9ba4
	jp m,l02feh		;9ba5
	ex (sp),hl		;9ba8
	ld bc,013e4h		;9ba9
	ld d,e			;9bac
	nop			;9bad
	call po,sub_6214h	;9bae
l9bb1h:
	nop			;9bb1
	call po,l7315h		;9bb2
	nop			;9bb5
	call po,07216h		;9bb6
	nop			;9bb9
	call po,sub_7317h	;9bba
	nop			;9bbd
	call po,l6317h+1	;9bbe
l9bc1h:
	nop			;9bc1
	call po,0721dh		;9bc2
	nop			;9bc5
	call po,l731dh+1	;9bc6
	nop			;9bc9
	call po,0911ch		;9bca
	add a,b			;9bcd
	ex (sp),hl		;9bce
	inc bc			;9bcf
l9bd0h:
	call po,sub_731fh	;9bd0
	nop			;9bd3
	ld (hl),c		;9bd4
	add a,b			;9bd5
	add a,d			;9bd6
	nop			;9bd7
	sub d			;9bd8
	add a,b			;9bd9
	ld h,c			;9bda
	add a,b			;9bdb
	ld d,d			;9bdc
	nop			;9bdd
	call po,sub_511fh	;9bde
	ret nz			;9be1
	ld b,d			;9be2
	ld h,b			;9be3
	inc sp			;9be4
	nop			;9be5
	rst 38h			;9be6
	cp 002h			;9be7
	ret m			;9be9
	inc c			;9bea
l9bebh:
	jp po,la301h		;9beb
	nop			;9bee
	rst 30h			;9bef
	or d			;9bf0
l9bf1h:
	and e			;9bf1
	and d			;9bf2
	and e			;9bf3
	or e			;9bf4
	jp nz,lf6c3h		;9bf5
	pop bc			;9bf8
	add a,b			;9bf9
	ld sp,hl		;9bfa
	ld (bc),a		;9bfb
	ld a,h			;9bfc
	exx			;9bfd
	ld sp,hl		;9bfe
	ld (bc),a		;9bff
	ld a,h			;9c00
	rst 38h			;9c01
	jp lc100h		;9c02
	add a,b			;9c05
	jp nz,lc200h		;9c06
	add a,b			;9c09
	or c			;9c0a
	add a,b			;9c0b
	and d			;9c0c
	nop			;9c0d
	and c			;9c0e
	ret nz			;9c0f
	sub d			;9c10
	ld h,b			;9c11
	add a,c			;9c12
	ld h,b			;9c13
	jp m,l02feh		;9c14
	ret m			;9c17
	dec d			;9c18
	jp po,lf901h		;9c19
	inc a			;9c1c
	ld a,h			;9c1d
	nop			;9c1e
	nop			;9c1f
	sub 0f9h		;9c20
	inc a			;9c22
	ld a,h			;9c23
	ld sp,hl		;9c24
	ld b,a			;9c25
	ld a,h			;9c26
sub_9c27h:
	sub 0f9h		;9c27
	ld b,a			;9c29
	ld a,h			;9c2a
	ret c			;9c2b
	ld sp,hl		;9c2c
	ld b,a			;9c2d
	ld a,h			;9c2e
	ld hl,l113fh		;9c2f
	ld h,a			;9c32
	ld b,c			;9c33
	xor e			;9c34
	ld b,c			;9c35
sub_9c36h:
	rrca			;9c36
	ld b,b			;9c37
l9c38h:
	rst 28h			;9c38
	ld b,c			;9c39
	ld e,0ffh		;9c3a
l9c3ch:
	and c			;9c3c
	xor h			;9c3d
	and c			;9c3e
	pop hl			;9c3f
sub_9c40h:
	and d			;9c40
l9c41h:
	ld a,(l3fafh+2)		;9c41
	or c			;9c44
	ld h,a			;9c45
	jp m,0ab91h		;9c46
	sub c			;9c49
	rrca			;9c4a
	sub b			;9c4b
	rst 28h			;9c4c
	sub c			;9c4d
	ld e,071h		;9c4e
	xor h			;9c50
	ld (hl),c		;9c51
	pop hl			;9c52
	ld h,d			;9c53
	ld a,(l3f61h)		;9c54
	ld d,c			;9c57
	ld h,a			;9c58
	jp m,l02feh		;9c59
	ret m			;9c5c
	inc d			;9c5d
	jp po,lc401h		;9c5e
	adc a,h			;9c61
	or h			;9c62
	dec d			;9c63
	or h			;9c64
	adc a,h			;9c65
	and h			;9c66
	dec d			;9c67
	and h			;9c68
	adc a,h			;9c69
	add a,h			;9c6a
	dec d			;9c6b
	jp nz,lc226h		;9c6c
	sbc a,a			;9c6f
	jp 0b21dh		;9c70
	ld e,c			;9c73
	or d			;9c74
	cp l			;9c75
	or e			;9c76
l9c77h:
	dec a			;9c77
	jp nz,0c3b6h		;9c78
	sbc a,(hl)		;9c7b
	call nz,0f9e9h		;9c7c
	sub l			;9c7f
	ld a,h			;9c80
	ld sp,hl		;9c81
	sub l			;9c82
	ld a,h			;9c83
	rst 10h			;9c84
	ld sp,hl		;9c85
	sub l			;9c86
l9c87h:
	ld a,h			;9c87
	ret c			;9c88
	ld sp,hl		;9c89
	sub l			;9c8a
	ld a,h			;9c8b
	exx			;9c8c
	ld sp,hl		;9c8d
	sub l			;9c8e
	ld a,h			;9c8f
	in a,(0f9h)		;9c90
	sub l			;9c92
	ld a,h			;9c93
	rst 38h			;9c94
	jp nz,lc3e9h		;9c95
	adc a,0c5h		;9c98
	inc (hl)		;9c9a
	jp nz,0c3b6h		;9c9b
	sbc a,(hl)		;9c9e
	call nz,sub_fae9h	;9c9f
	cp 002h			;9ca2
	jp po,0b402h		;9ca4
	nop			;9ca7
	or e			;9ca8
	add a,b			;9ca9
sub_9caah:
	or e			;9caa
	nop			;9cab
	or d			;9cac
	add a,b			;9cad
	or d			;9cae
	nop			;9caf
	or c			;9cb0
	ret po			;9cb1
	or c			;9cb2
	ret nz			;9cb3
	ld sp,hl		;9cb4
	ex de,hl		;9cb5
	ld a,h			;9cb6
	ld (hl),b		;9cb7
	ret p			;9cb8
	ld (hl),b		;9cb9
	ret po			;9cba
l9cbbh:
	ld h,b			;9cbb
	ret nc			;9cbc
	ld d,b			;9cbd
	ret nz			;9cbe
	rst 38h			;9cbf
	cp 002h			;9cc0
	jp po,lf802h		;9cc2
	ld a,(bc)		;9cc5
	jp lc3d0h		;9cc6
	ld h,b			;9cc9
	or d			;9cca
	ret po			;9ccb
	or d			;9ccc
	ld h,b			;9ccd
	or c			;9cce
	ret po			;9ccf
	or c			;9cd0
	ret nz			;9cd1
	or c			;9cd2
	and b			;9cd3
	and c			;9cd4
	add a,b			;9cd5
	and c			;9cd6
	ld h,b			;9cd7
	sub c			;9cd8
	ld b,b			;9cd9
	sub c			;9cda
	jr nz,$-109		;9cdb
	nop			;9cdd
	sub b			;9cde
	ret p			;9cdf
	add a,b			;9ce0
	ret nc			;9ce1
l9ce2h:
	add a,b			;9ce2
	or b			;9ce3
	add a,b			;9ce4
	and b			;9ce5
	ret c			;9ce6
	ld sp,hl		;9ce7
	ex de,hl		;9ce8
	ld a,h			;9ce9
	rst 38h			;9cea
	and c			;9ceb
	and b			;9cec
	and c			;9ced
	add a,b			;9cee
	and c			;9cef
	ld h,b			;9cf0
	sub c			;9cf1
	ld b,b			;9cf2
	sub c			;9cf3
	jr nz,l9c77h		;9cf4
	nop			;9cf6
	jp m,l02feh		;9cf7
	ret po			;9cfa
	ld bc,lf9d7h		;9cfb
	add hl,bc		;9cfe
l9cffh:
	ld a,l			;9cff
	rst 38h			;9d00
	cp 002h			;9d01
	ret m			;9d03
	jr z,l9cffh		;9d04
	add hl,bc		;9d06
	ld a,l			;9d07
	rst 38h			;9d08
	jp po,l9201h		;9d09
	ret nc			;9d0c
	and d			;9d0d
	ld h,b			;9d0e
	or c			;9d0f
	ret po			;9d10
	pop bc			;9d11
	ld h,b			;9d12
	ex de,hl		;9d13
	inc b			;9d14
	ld a,(bc)		;9d15
	ld h,d			;9d16
l9d17h:
	ret nc			;9d17
	ld (hl),d		;9d18
	ld h,b			;9d19
	add a,c			;9d1a
	ret po			;9d1b
	sub c			;9d1c
	ld h,b			;9d1d
	ex de,hl		;9d1e
	ld (bc),a		;9d1f
	ld a,(bc)		;9d20
	ld b,d			;9d21
	ret nc			;9d22
	ld d,d			;9d23
	ld h,b			;9d24
	ld h,c			;9d25
	ret po			;9d26
	ld (hl),c		;9d27
	ld h,b			;9d28
	ex de,hl		;9d29
	ld (bc),a		;9d2a
	ld a,(bc)		;9d2b
	ld (de),a		;9d2c
	ret nc			;9d2d
	ld (de),a		;9d2e
	ld h,b			;9d2f
	ld de,011e0h		;9d30
	ld h,b			;9d33
	ex de,hl		;9d34
	ld (bc),a		;9d35
	ld a,(bc)		;9d36
	jp m,l02feh		;9d37
	ret po			;9d3a
	ld (bc),a		;9d3b
	cp 002h			;9d3c
	ret m			;9d3e
	dec d			;9d3f
	jp po,l6300h+2		;9d40
	ld b,b			;9d43
	ld (hl),d		;9d44
	ret nz			;9d45
	add a,d			;9d46
	ld b,b			;9d47
	sub c			;9d48
	ret p			;9d49
	sub c			;9d4a
	or b			;9d4b
	sub c			;9d4c
	ld (hl),b		;9d4d
	sub c			;9d4e
	jr nc,l9ce2h		;9d4f
	ld (l2891h),hl		;9d51
	ex de,hl		;9d54
	inc bc			;9d55
	ld b,043h		;9d56
	ld b,b			;9d58
sub_9d59h:
	ld b,d			;9d59
	ret nz			;9d5a
	ld (l3140h),a		;9d5b
	ret p			;9d5e
	ld hl,021b0h		;9d5f
	ld (hl),b		;9d62
l9d63h:
	ld hl,l1130h		;9d63
	ld (l280fh+2),hl	;9d66
	ex de,hl		;9d69
	inc b			;9d6a
l9d6bh:
	ld b,0feh		;9d6b
	ld (bc),a		;9d6d
	ret po			;9d6e
	inc b			;9d6f
	ret c			;9d70
	ld sp,hl		;9d71
	ld a,l			;9d72
	ld a,l			;9d73
	rst 38h			;9d74
	cp 002h			;9d75
	ret m			;9d77
	dec d			;9d78
	ld sp,hl		;9d79
	ld a,l			;9d7a
	ld a,l			;9d7b
	rst 38h			;9d7c
	jp po,l5000h+2		;9d7d
	ld h,b			;9d80
	ld h,b			;9d81
	ld e,h			;9d82
	add a,b			;9d83
	ld e,(hl)		;9d84
	add a,b			;9d85
	ld h,b			;9d86
	jr nc,l9de9h		;9d87
	ld b,b			;9d89
	ld e,h			;9d8a
	ld d,b			;9d8b
	ld e,(hl)		;9d8c
l9d8dh:
	ld b,b			;9d8d
	ld h,b			;9d8e
	jp m,l02feh		;9d8f
	ret po			;9d92
	inc bc			;9d93
	exx			;9d94
	ld sp,hl		;9d95
	and c			;9d96
	ld a,l			;9d97
	rst 38h			;9d98
	cp 002h			;9d99
	ret m			;9d9b
	inc c			;9d9c
	ld sp,hl		;9d9d
	and c			;9d9e
	ld a,l			;9d9f
	rst 38h			;9da0
	jp po,sub_a000h+1	;9da1
	jp po,0aab0h		;9da4
	ret nz			;9da7
	adc a,a			;9da8
	ret nz			;9da9
	add a,(hl)		;9daa
	ex de,hl		;9dab
	inc b			;9dac
	ld b,0b0h		;9dad
	adc a,a			;9daf
	or b			;9db0
	add a,(hl)		;9db1
	ex de,hl		;9db2
	ld (bc),a		;9db3
	ld b,0c0h		;9db4
	ld (hl),c		;9db6
	ret nz			;9db7
	ld d,l			;9db8
	ret nz			;9db9
	ld b,a			;9dba
	ret nz			;9dbb
	ld b,d			;9dbc
	ex de,hl		;9dbd
	inc b			;9dbe
	ld b,090h		;9dbf
l9dc1h:
	ld b,a			;9dc1
	sub b			;9dc2
	ld b,d			;9dc3
	ex de,hl		;9dc4
	ld (bc),a		;9dc5
	ld b,060h		;9dc6
	ld b,a			;9dc8
	ld h,b			;9dc9
	ld b,d			;9dca
	ex de,hl		;9dcb
	inc b			;9dcc
	ld b,0fah		;9dcd
	cp 002h			;9dcf
	ret po			;9dd1
	inc bc			;9dd2
	jp po,ld801h		;9dd3
	ld sp,hl		;9dd6
	call po,sub_ff7dh	;9dd7
	cp 002h			;9dda
	ret m			;9ddc
	jr z,l9dc1h		;9ddd
	ld bc,le4f9h		;9ddf
	ld a,l			;9de2
	rst 38h			;9de3
	ret nz			;9de4
	ld b,b			;9de5
	ret nz			;9de6
	sub b			;9de7
	ret nz			;9de8
l9de9h:
	ret p			;9de9
	pop bc			;9dea
	ld (hl),c		;9deb
	jp nz,0c20dh		;9dec
	ret nc			;9def
	jp lc4c3h+1		;9df0
	push af			;9df3
	nop			;9df4
	nop			;9df5
	and e			;9df6
	push af			;9df7
	and c			;9df8
	ld d,b			;9df9
	and c			;9dfa
	ld b,b			;9dfb
	ex de,hl		;9dfc
	ld b,008h		;9dfd
	inc de			;9dff
	push af			;9e00
	ld de,01150h		;9e01
	ld b,b			;9e04
	ex de,hl		;9e05
	ld b,008h		;9e06
	jp m,l02feh		;9e08
	ret po			;9e0b
	inc b			;9e0c
	jp c,02bf9h		;9e0d
	ld a,(hl)		;9e10
	ld sp,ix		;9e11
	ld b,e			;9e13
	ld a,(hl)		;9e14
	rst 18h			;9e15
	ld a,(bc)		;9e16
sub_9e17h:
	ld sp,hl		;9e17
	ld e,c			;9e18
	ld a,(hl)		;9e19
	rst 38h			;9e1a
sub_9e1bh:
	cp 002h			;9e1b
	ret m			;9e1d
	dec d			;9e1e
	jp po,lf901h		;9e1f
	dec hl			;9e22
	ld a,(hl)		;9e23
	ld sp,hl		;9e24
	ld b,e			;9e25
	ld a,(hl)		;9e26
	ld sp,hl		;9e27
	ld e,c			;9e28
	ld a,(hl)		;9e29
	rst 38h			;9e2a
	pop bc			;9e2b
	ret p			;9e2c
	pop bc			;9e2d
	ret po			;9e2e
	pop bc			;9e2f
	ret nc			;9e30
	push af			;9e31
	ret nz			;9e32
	or b			;9e33
	sub b			;9e34
	ld (hl),b		;9e35
	ld d,b			;9e36
	jr nc,l9e49h		;9e37
	or 0c0h			;9e39
	xor 0c0h		;9e3b
	defb 0ddh,0c0h,0cch ;illegal sequence	;9e3d
	ret nz			;9e40
	call z,sub_71fah	;9e41
	ret p			;9e44
	ld (hl),c		;9e45
	ret po			;9e46
	ld (hl),c		;9e47
	ret nc			;9e48
l9e49h:
	push af			;9e49
	ret nz			;9e4a
	or b			;9e4b
	sub b			;9e4c
	ld (hl),b		;9e4d
	ld d,b			;9e4e
	jr nc,$+18		;9e4f
	or 070h			;9e51
	xor 070h		;9e53
	ld (ix-034h),b		;9e55
	jp m,lcc70h		;9e58
	jp po,l2102h		;9e5b
	ret p			;9e5e
	ld hl,021d0h		;9e5f
	or b			;9e62
	ld hl,l2170h		;9e63
	jr nc,l9e88h		;9e66
	xor 020h		;9e68
	call z,sub_fefah	;9e6a
	ld (bc),a		;9e6d
	ex (sp),hl		;9e6e
	ld bc,l03e4h		;9e6f
	ld (hl),b		;9e72
	jr l9ee5h		;9e73
	jr nc,l9e77h		;9e75
l9e77h:
	nop			;9e77
	ex de,hl		;9e78
	ld b,008h		;9e79
	ld b,b			;9e7b
	jr l9ebeh		;9e7c
	jr nc,l9e80h		;9e7e
l9e80h:
	nop			;9e80
	ex de,hl		;9e81
	ld b,008h		;9e82
	jr nc,l9e9eh		;9e84
	jr nc,$+50		;9e86
l9e88h:
	nop			;9e88
	nop			;9e89
	ex de,hl		;9e8a
	inc b			;9e8b
	ex af,af'		;9e8c
	rst 38h			;9e8d
	cp 002h			;9e8e
	ret m			;9e90
	inc d			;9e91
	jp po,la201h		;9e92
	ld a,b			;9e95
	and d			;9e96
	and b			;9e97
	nop			;9e98
	nop			;9e99
	ld sp,hl		;9e9a
	xor (hl)		;9e9b
	ld a,(hl)		;9e9c
	ret c			;9e9d
l9e9eh:
	ld sp,hl		;9e9e
	xor (hl)		;9e9f
	ld a,(hl)		;9ea0
	in a,(0f9h)		;9ea1
	xor (hl)		;9ea3
	ld a,(hl)		;9ea4
	sbc a,0f9h		;9ea5
	xor (hl)		;9ea7
	ld a,(hl)		;9ea8
	rst 18h			;9ea9
	ld sp,hl		;9eaa
	xor (hl)		;9eab
	ld a,(hl)		;9eac
	rst 38h			;9ead
	jp nz,lc248h		;9eae
	ld (hl),b		;9eb1
	nop			;9eb2
	nop			;9eb3
	ex de,hl		;9eb4
	inc bc			;9eb5
	ex af,af'		;9eb6
	jp m,l02feh		;9eb7
	jp po,lb001h		;9eba
	ld h,b			;9ebd
l9ebeh:
	or b			;9ebe
	ret po			;9ebf
	or (hl)			;9ec0
	nop			;9ec1
	or h			;9ec2
	ret po			;9ec3
	sub d			;9ec4
	ret po			;9ec5
	nop			;9ec6
	nop			;9ec7
	ex de,hl		;9ec8
	ld (bc),a		;9ec9
	ld c,095h		;9eca
	ret po			;9ecc
	sbc a,(hl)		;9ecd
	ret po			;9ece
	ld (hl),h		;9ecf
	ret po			;9ed0
	nop			;9ed1
	nop			;9ed2
	nop			;9ed3
	nop			;9ed4
	add a,b			;9ed5
	ld h,b			;9ed6
	add a,b			;9ed7
	ret po			;9ed8
	add a,(hl)		;9ed9
	nop			;9eda
	add a,h			;9edb
	ret po			;9edc
	ld (hl),d		;9edd
	ret po			;9ede
	nop			;9edf
	nop			;9ee0
	nop			;9ee1
	nop			;9ee2
	ex de,hl		;9ee3
	ld (bc),a		;9ee4
l9ee5h:
	djnz l9f4ch		;9ee5
	nop			;9ee7
	ld d,h			;9ee8
	ret po			;9ee9
	ld b,d			;9eea
	ret po			;9eeb
	rst 38h			;9eec
	cp 002h			;9eed
	ret m			;9eef
	inc d			;9ef0
	jp po,lc201h		;9ef1
	ld bc,040c2h		;9ef4
	jp nz,lc3f0h		;9ef7
	ret p			;9efa
	push bc			;9efb
l9efch:
	ret po			;9efc
	nop			;9efd
	nop			;9efe
	ex de,hl		;9eff
	ld (bc),a		;9f00
	ld c,0c7h		;9f01
	ret po			;9f03
	set 4,b			;9f04
	adc a,0e0h		;9f06
l9f08h:
	nop			;9f08
l9f09h:
	nop			;9f09
l9f0ah:
	nop			;9f0a
	nop			;9f0b
	ld d,d			;9f0c
	ld bc,l4052h		;9f0d
l9f10h:
	ld d,d			;9f10
	ret p			;9f11
l9f12h:
	ld d,e			;9f12
	ret p			;9f13
	ld d,l			;9f14
	ret po			;9f15
	nop			;9f16
	nop			;9f17
l9f18h:
	nop			;9f18
	nop			;9f19
	ex de,hl		;9f1a
	ld (bc),a		;9f1b
	djnz $+73		;9f1c
	ret po			;9f1e
	dec sp			;9f1f
sub_9f20h:
	ret po			;9f20
	ld l,0e0h		;9f21
	rst 38h			;9f23
	cp 002h			;9f24
	ret po			;9f26
	ld (bc),a		;9f27
	ret c			;9f28
	ld sp,hl		;9f29
	ld b,l			;9f2a
	ld a,a			;9f2b
	ret c			;9f2c
	ld sp,hl		;9f2d
	ld b,l			;9f2e
	ld a,a			;9f2f
	jp c,045f9h		;9f30
	ld a,a			;9f33
	rst 38h			;9f34
	cp 002h			;9f35
	ret m			;9f37
	dec c			;9f38
	ld sp,hl		;9f39
	ld b,l			;9f3a
	ld a,a			;9f3b
	rst 10h			;9f3c
	ld sp,hl		;9f3d
	ld b,l			;9f3e
	ld a,a			;9f3f
	call c,045f9h		;9f40
	ld a,a			;9f43
	rst 38h			;9f44
	jp po,l9201h		;9f45
	add a,b			;9f48
	and d			;9f49
	ld h,b			;9f4a
	or d			;9f4b
l9f4ch:
	jr nc,l9f10h		;9f4c
	djnz l9f12h		;9f4e
	nop			;9f50
	pop bc			;9f51
	ret nc			;9f52
	jp po,lc10eh		;9f53
	add a,b			;9f56
	jp po,lb104h		;9f57
	add a,b			;9f5a
	sub c			;9f5b
	add a,b			;9f5c
	ex de,hl		;9f5d
	ex af,af'		;9f5e
	ld a,(de)		;9f5f
	jp m,lfeffh		;9f60
	ld bc,004f8h		;9f63
	jp (hl)			;9f66
	ld (bc),a		;9f67
	jp pe,ld20ah		;9f68
	ld (hl),b		;9f6b
sub_9f6ch:
	add a,b			;9f6c
	sub b			;9f6d
	and b			;9f6e
	or b			;9f6f
	and b			;9f70
	sub b			;9f71
	add a,b			;9f72
	defb 0fdh,06bh ;ld iyl,e	;9f73
sub_9f75h:
	ld a,a			;9f75
	cp 001h			;9f76
	ret m			;9f78
	ld (de),a		;9f79
	jp (hl)			;9f7a
	ld (bc),a		;9f7b
	jp pe,ld209h		;9f7c
	rst 28h			;9f7f
	dec b			;9f80
	sub b			;9f81
	add a,b			;9f82
	ld (hl),b		;9f83
	add a,b			;9f84
	sub b			;9f85
	and b			;9f86
	or b			;9f87
	defb 0fdh,081h,07fh ;illegal sequence	;9f88
	cp 001h			;9f8b
	ret m			;9f8d
	dec b			;9f8e
	jp (hl)			;9f8f
	ld b,0eah		;9f90
	dec bc			;9f92
	jp nc,0fd8fh		;9f93
	sub h			;9f96
	ld a,a			;9f97
sub_9f98h:
	cp 001h			;9f98
	jp (hl)			;9f9a
	ld b,0eah		;9f9b
	dec bc			;9f9d
	jp nc,lfd7fh		;9f9e
	sbc a,a			;9fa1
	ld a,a			;9fa2
	cp 002h			;9fa3
	ret m			;9fa5
	dec b			;9fa6
	jp po,lc202h		;9fa7
l9faah:
	nop			;9faa
	pop bc			;9fab
	ret nc			;9fac
	push af			;9fad
	and b			;9fae
	add a,b			;9faf
	ld h,b			;9fb0
	ld b,b			;9fb1
	jr nz,l9faah		;9fb2
	ex de,hl		;9fb4
	inc c			;9fb5
	dec c			;9fb6
	ld (hl),d		;9fb7
l9fb8h:
	nop			;9fb8
	ld (hl),c		;9fb9
	ret nc			;9fba
	push af			;9fbb
	and b			;9fbc
	add a,b			;9fbd
	ld h,b			;9fbe
	ld b,b			;9fbf
	jr nz,l9fb8h		;9fc0
	ex de,hl		;9fc2
	inc b			;9fc3
	dec c			;9fc4
	ld (03100h),a		;9fc5
	ret nc			;9fc8
	push af			;9fc9
	and b			;9fca
	add a,b			;9fcb
	ld h,b			;9fcc
l9fcdh:
	ld b,b			;9fcd
	jr nz,$-8		;9fce
	ex de,hl		;9fd0
l9fd1h:
	ld (bc),a		;9fd1
	dec c			;9fd2
	ld (bc),a		;9fd3
l9fd4h:
	nop			;9fd4
	ld bc,0f5d0h		;9fd5
	and b			;9fd8
	add a,b			;9fd9
	ld h,b			;9fda
	ld b,b			;9fdb
	jr nz,l9fd4h		;9fdc
	ex de,hl		;9fde
	ld (bc),a		;9fdf
	dec c			;9fe0
	rst 38h			;9fe1
	cp 002h			;9fe2
	ret m			;9fe4
	inc c			;9fe5
	jp po,lc504h		;9fe6
	nop			;9fe9
	call nz,0c480h		;9fea
	nop			;9fed
	jp po,lc301h		;9fee
	nop			;9ff1
	jp po,lc304h		;9ff2
	nop			;9ff5
	jp po,lc304h		;9ff6
l9ff9h:
	add a,b			;9ff9
	jp lc200h		;9ffa
	add a,b			;9ffd
	ex de,hl		;9ffe
	ld (bc),a		;9fff
sub_a000h:
	jr $-57			;a000
sub_a002h:
	nop			;a002
	call nz,le280h		;a003
	ld bc,l0035h		;a006
	jp po,lc404h		;a009
	nop			;a00c
la00dh:
	jp po,05301h		;a00d
	nop			;a010
	jp po,lc304h		;a011
	add a,b			;a014
	jp lc200h		;a015
	add a,b			;a018
	ex de,hl		;a019
	ld (bc),a		;a01a
	ld a,(de)		;a01b
	or l			;a01c
	nop			;a01d
	or h			;a01e
	add a,b			;a01f
	or h			;a020
	nop			;a021
	or e			;a022
	add a,b			;a023
	or e			;a024
	nop			;a025
	or d			;a026
	add a,b			;a027
	ex de,hl		;a028
	ld (bc),a		;a029
	ld c,074h		;a02a
	nop			;a02c
	ld (hl),e		;a02d
	add a,b			;a02e
	ld (hl),e		;a02f
sub_a030h:
	nop			;a030
	ld (hl),d		;a031
	add a,b			;a032
	ex de,hl		;a033
	ld (bc),a		;a034
	ld a,(bc)		;a035
	ld b,h			;a036
	nop			;a037
	ld b,e			;a038
	add a,b			;a039
	ld b,e			;a03a
	nop			;a03b
	ld b,d			;a03c
	add a,b			;a03d
	ex de,hl		;a03e
	ld (bc),a		;a03f
	ld a,(bc)		;a040
	inc d			;a041
	nop			;a042
	inc de			;a043
	add a,b			;a044
	inc de			;a045
	nop			;a046
	ld (de),a		;a047
	add a,b			;a048
	inc b			;a049
	nop			;a04a
	inc bc			;a04b
	add a,b			;a04c
sub_a04dh:
	inc bc			;a04d
	nop			;a04e
	ld (bc),a		;a04f
	add a,b			;a050
	rst 38h			;a051
	cp 002h			;a052
	ret m			;a054
	dec d			;a055
	jp po,lf901h		;a056
	ld a,e			;a059
	add a,b			;a05a
	ex de,hl		;a05b
	ld e,005h		;a05c
	ret c			;a05e
	ld sp,hl		;a05f
	ld a,e			;a060
	add a,b			;a061
	ex de,hl		;a062
la063h:
	inc b			;a063
	ld b,0dbh		;a064
	ld sp,hl		;a066
	ld a,e			;a067
	add a,b			;a068
	ex de,hl		;a069
	inc b			;a06a
	ld b,0ddh		;a06b
	ld sp,hl		;a06d
	ld a,e			;a06e
	add a,b			;a06f
	ex de,hl		;a070
	inc b			;a071
	ld b,0dfh		;a072
	ld sp,hl		;a074
	ld a,e			;a075
	add a,b			;a076
	ex de,hl		;a077
	inc b			;a078
	ld b,0ffh		;a079
	and l			;a07b
	nop			;a07c
	and h			;a07d
	add a,b			;a07e
	and h			;a07f
	nop			;a080
	and e			;a081
	add a,b			;a082
	and e			;a083
	nop			;a084
	and d			;a085
	add a,b			;a086
	jp m,lfeffh		;a087
	ld (bc),a		;a08a
	ret m			;a08b
	dec c			;a08c
	jp po,0a504h		;a08d
sub_a090h:
	nop			;a090
	and l			;a091
	add a,b			;a092
	and (hl)		;a093
	nop			;a094
	rst 30h			;a095
	and a			;a096
	xor b			;a097
	xor c			;a098
	xor d			;a099
	xor e			;a09a
	xor h			;a09b
	xor l			;a09c
	xor (hl)		;a09d
	xor a			;a09e
	or 0fdh			;a09f
	adc a,a			;a0a1
	add a,b			;a0a2
	cp 002h			;a0a3
	ret m			;a0a5
	dec d			;a0a6
	jp po,lf904h		;a0a7
	xor a			;a0aa
	add a,b			;a0ab
	defb 0fdh,0a9h,080h ;illegal sequence	;a0ac
	sub h			;a0af
la0b0h:
	add a,b			;a0b0
	sub l			;a0b1
	nop			;a0b2
	sub l			;a0b3
la0b4h:
	add a,b			;a0b4
	rst 30h			;a0b5
	sub (hl)		;a0b6
	sub a			;a0b7
	sbc a,b			;a0b8
	sbc a,c			;a0b9
	sbc a,d			;a0ba
	sbc a,e			;a0bb
	sbc a,h			;a0bc
	sbc a,l			;a0bd
	sbc a,(hl)		;a0be
	or 0fah			;a0bf
	cp 002h			;a0c1
	ret m			;a0c3
	dec d			;a0c4
	jp po,l0004h		;a0c5
	nop			;a0c8
	ld sp,hl		;a0c9
	xor a			;a0ca
	add a,b			;a0cb
	defb 0fdh,0c7h,080h ;illegal sequence	;a0cc
	cp 002h			;a0cf
	ret m			;a0d1
la0d2h:
	dec b			;a0d2
	jp po,lc101h		;a0d3
sub_a0d6h:
	nop			;a0d6
	pop bc			;a0d7
la0d8h:
	add a,b			;a0d8
	jp nz,lc200h		;a0d9
	add a,b			;a0dc
	jp lc300h		;a0dd
	add a,b			;a0e0
	call nz,l0000h		;a0e1
	nop			;a0e4
	defb 0fdh,0d5h,080h ;illegal sequence	;a0e5
	cp 002h			;a0e8
	jp po,lc201h		;a0ea
	nop			;a0ed
	rst 30h			;a0ee
	jp 0c5c4h		;a0ef
	add a,0c7h		;a0f2
	ret z			;a0f4
	nop			;a0f5
	or 0fdh			;a0f6
	call pe,0fe80h		;a0f8
	ld (bc),a		;a0fb
la0fch:
	jp po,lf901h		;a0fc
	sbc a,h			;a0ff
	add a,c			;a100
la101h:
	rst 38h			;a101
	cp 002h			;a102
	ret m			;a104
	jr z,$-28		;a105
la107h:
	ld bc,l13f9h		;a107
	add a,d			;a10a
la10bh:
	ld sp,hl		;a10b
la10ch:
	ld a,l			;a10c
la10dh:
	add a,d			;a10d
	call m,sub_0b06h	;a10e
	add a,c			;a111
	ret po			;a112
	djnz la10dh		;a113
la115h:
	add hl,bc		;a115
la116h:
	ld sp,hl		;a116
la117h:
	inc e			;a117
la118h:
	add a,c			;a118
la119h:
	defb 0fdh,016h,081h ;illegal sequence	;a119
	jp po,l0004h		;a11c
	ei			;a11f
	nop			;a120
	ret m			;a121
	djnz la119h		;a122
	djnz la118h		;a124
	jr nz,la117h		;a126
	jr nz,la116h		;a128
	jr nc,la115h		;a12a
	jr nc,$-24		;a12c
	ld b,b			;a12e
	ex (sp),hl		;a12f
	ld b,b			;a130
	ex (sp),hl		;a131
	ld b,b			;a132
	defb 0ddh,040h,0dah ;illegal sequence	;a133
	ld b,b			;a136
	rst 10h			;a137
	ld b,b			;a138
	call nc,sub_fefah	;a139
	ld (bc),a		;a13c
	ret po			;a13d
	call l01fch+2		;a13e
	ret m			;a141
	dec b			;a142
la143h:
	jp (hl)			;a143
	ld b,0eah		;a144
	rlca			;a146
	out (0f1h),a		;a147
	ld a,a			;a149
la14ah:
	ccf			;a14a
	defb 0fdh,04ah,081h ;illegal sequence	;a14b
	cp 002h			;a14e
	ret po			;a150
la151h:
	call l01fch+2		;a151
	ret m			;a154
	dec b			;a155
la156h:
	jp (hl)			;a156
	ld b,0eah		;a157
	rlca			;a159
	out (0f1h),a		;a15a
la15ch:
	ld a,a			;a15c
	ld l,a			;a15d
	defb 0fdh,05dh ;ld e,iyl	;a15e
	add a,c			;a160
la161h:
	cp 002h			;a161
	ret po			;a163
sub_a164h:
	call sub_09f8h		;a164
	ld sp,hl		;a167
	inc e			;a168
	add a,c			;a169
sub_a16ah:
	defb 0fdh,067h ;ld iyh,a	;a16a
	add a,c			;a16c
la16dh:
	cp 002h			;a16d
	ret po			;a16f
	call sub_09f8h		;a170
	jp po,l0104h		;a173
	jr z,la179h		;a176
	inc h			;a178
la179h:
	ld de,l1120h		;a179
	inc e			;a17c
	ld hl,02119h		;a17d
	ld d,031h		;a180
	inc de			;a182
	ld sp,l4110h		;a183
	dec c			;a186
la187h:
	ld b,c			;a187
	ld a,(bc)		;a188
	ld b,c			;a189
	rlca			;a18a
la18bh:
	ld b,c			;a18b
	inc b			;a18c
	ld b,c			;a18d
	ld bc,lfd40h		;a18e
la191h:
	ld (iy-07fh),l		;a191
	cp 002h			;a194
	jp po,lf901h		;a196
	sbc a,h			;a199
	add a,c			;a19a
	rst 38h			;a19b
	and d			;a19c
	nop			;a19d
	rst 30h			;a19e
	and e			;a19f
	and h			;a1a0
sub_a1a1h:
	and l			;a1a1
	and (hl)		;a1a2
	and a			;a1a3
	xor b			;a1a4
	xor c			;a1a5
	nop			;a1a6
	or 0ebh			;a1a7
	inc bc			;a1a9
	ld c,0a2h		;a1aa
	nop			;a1ac
	rst 30h			;a1ad
	and e			;a1ae
	and h			;a1af
	and l			;a1b0
	and (hl)		;a1b1
	and a			;a1b2
	xor b			;a1b3
	xor c			;a1b4
	xor d			;a1b5
	or 0ebh			;a1b6
	inc bc			;a1b8
	ld c,072h		;a1b9
la1bbh:
	nop			;a1bb
	rst 30h			;a1bc
	ld (hl),e		;a1bd
	ld (hl),h		;a1be
la1bfh:
	ld (hl),l		;a1bf
	halt			;a1c0
	ld (hl),a		;a1c1
	ld a,b			;a1c2
	ld a,c			;a1c3
	ld a,d			;a1c4
	or 0ebh			;a1c5
	inc bc			;a1c7
	ld c,042h		;a1c8
	nop			;a1ca
	rst 30h			;a1cb
	ld b,e			;a1cc
	ld b,h			;a1cd
	ld b,l			;a1ce
	ld b,(hl)		;a1cf
	ld b,a			;a1d0
la1d1h:
	ld c,b			;a1d1
la1d2h:
	ld c,c			;a1d2
la1d3h:
	ld c,d			;a1d3
la1d4h:
	or 0ebh			;a1d4
	inc bc			;a1d6
	ld c,012h		;a1d7
	nop			;a1d9
	rst 30h			;a1da
	inc de			;a1db
	inc d			;a1dc
la1ddh:
	dec d			;a1dd
	ld d,017h		;a1de
	jr $+27			;a1e0
	ld a,(de)		;a1e2
	or 0ebh			;a1e3
	inc bc			;a1e5
	ld c,002h		;a1e6
	nop			;a1e8
la1e9h:
	rst 30h			;a1e9
	inc bc			;a1ea
	inc b			;a1eb
	dec b			;a1ec
	ld b,007h		;a1ed
	ex af,af'		;a1ef
	add hl,bc		;a1f0
	ld a,(bc)		;a1f1
	or 0ebh			;a1f2
	ld b,00eh		;a1f4
	jp m,l02feh		;a1f6
	jp po,l0001h		;a1f9
	nop			;a1fc
	ld sp,hl		;a1fd
	sbc a,h			;a1fe
	add a,c			;a1ff
	rst 38h			;a200
la201h:
	rst 38h			;a201
sub_a202h:
	cp 002h			;a202
la204h:
	ret m			;a204
	jr z,la1e9h		;a205
	ld bc,l13f9h		;a207
	add a,d			;a20a
	ld sp,hl		;a20b
	ld a,l			;a20c
	add a,d			;a20d
	call m,sub_0b06h	;a20e
la211h:
	add a,d			;a211
	rst 38h			;a212
	and c			;a213
la214h:
	ld b,b			;a214
	and c			;a215
	sub b			;a216
	and c			;a217
	ret p			;a218
	and d			;a219
	ld (hl),c		;a21a
	and e			;a21b
	dec c			;a21c
	and e			;a21d
	ret nc			;a21e
	and h			;a21f
	call nz,sub_f5a5h	;a220
	nop			;a223
	nop			;a224
	ex de,hl		;a225
la226h:
	inc bc			;a226
	inc d			;a227
la228h:
	add a,b			;a228
sub_a229h:
	ld a,b			;a229
	add a,b			;a22a
	cp e			;a22b
	add a,b			;a22c
	jp pe,02481h		;a22d
	add a,c			;a230
	ld l,(hl)		;a231
	add a,c			;a232
	ret			;a233
	add a,b			;a234
	jr nc,la1bbh		;a235
	jr nc,la1bfh		;a237
	nop			;a239
	ex de,hl		;a23a
	inc bc			;a23b
	inc d			;a23c
	ld d,b			;a23d
	ld a,b			;a23e
	ld d,b			;a23f
	cp e			;a240
	ld d,b			;a241
la242h:
	jp pe,02451h		;a242
	ld d,c			;a245
	ld l,(hl)		;a246
	ld d,c			;a247
	ret			;a248
	ld d,b			;a249
	jr nc,$+86		;a24a
la24ch:
	jr nc,$+88		;a24c
	nop			;a24e
	ex de,hl		;a24f
	inc bc			;a250
	inc d			;a251
	djnz $+122		;a252
	djnz la211h		;a254
	djnz la242h		;a256
	ld de,l1124h		;a258
	ld l,(hl)		;a25b
	ld de,010c9h		;a25c
	jr nc,$+22		;a25f
	jr nc,la279h		;a261
	nop			;a263
	ex de,hl		;a264
	inc bc			;a265
	inc d			;a266
	nop			;a267
	ld a,b			;a268
	nop			;a269
	cp e			;a26a
	nop			;a26b
	jp pe,l2401h		;a26c
	ld bc,0016eh		;a26f
	ret			;a272
	nop			;a273
	jr nc,sub_a27ah		;a274
	jr nc,$+8		;a276
	nop			;a278
la279h:
	ex de,hl		;a279
sub_a27ah:
	inc bc			;a27a
	inc d			;a27b
	jp m,07800h		;a27c
	nop			;a27f
	cp e			;a280
	nop			;a281
	jp pe,l2401h		;a282
	ld bc,0016eh		;a285
	ret			;a288
	nop			;a289
la28ah:
	jr nc,$+6		;a28a
	jr nc,$+8		;a28c
	nop			;a28e
	jp m,l02feh		;a28f
	ret m			;a292
	jr z,$-28		;a293
	ld bc,l0000h		;a295
	ld sp,hl		;a298
	inc de			;a299
	add a,d			;a29a
	ld sp,hl		;a29b
	ld a,l			;a29c
	add a,d			;a29d
	call m,09b03h		;a29e
la2a1h:
	add a,d			;a2a1
sub_a2a2h:
	rst 38h			;a2a2
	cp 002h			;a2a3
	ret m			;a2a5
	jr z,la28ah		;a2a6
	ld bc,09cf9h		;a2a8
	add a,c			;a2ab
	rst 38h			;a2ac
	cp 002h			;a2ad
	ret m			;a2af
	jr z,$-28		;a2b0
	ld bc,l0000h		;a2b2
	ld sp,hl		;a2b5
	sbc a,h			;a2b6
	add a,c			;a2b7
	rst 38h			;a2b8
	sub b			;a2b9
	and b			;a2ba
	or b			;a2bb
	ret nz			;a2bc
	jp nc,02010h		;a2bd
	jr nc,la302h		;a2c0
	ld d,b			;a2c2
	ld h,b			;a2c3
	ld (hl),b		;a2c4
	add a,b			;a2c5
	sub b			;a2c6
	and b			;a2c7
	or b			;a2c8
	pop de			;a2c9
	nop			;a2ca
	djnz la2edh		;a2cb
	jr nc,la30fh		;a2cd
la2cfh:
	ld d,b			;a2cf
	ld h,b			;a2d0
la2d1h:
	ld (hl),b		;a2d1
la2d2h:
	add a,b			;a2d2
la2d3h:
	sub b			;a2d3
	and b			;a2d4
	or b			;a2d5
la2d6h:
	ret nc			;a2d6
	nop			;a2d7
	djnz la2fah		;a2d8
	jr nc,la2d6h		;a2da
	cp 002h			;a2dc
	ret po			;a2de
	and b			;a2df
	rst 38h			;a2e0
	cp 001h			;a2e1
	ret m			;a2e3
	ld a,(bc)		;a2e4
	jp (hl)			;a2e5
	ld (bc),a		;a2e6
	jp pe,ld30bh		;a2e7
	ld h,b			;a2ea
	ld (hl),b		;a2eb
	add a,b			;a2ec
la2edh:
	ld sp,hl		;a2ed
	cp c			;a2ee
	add a,d			;a2ef
	ld b,b			;a2f0
	ld d,b			;a2f1
	ld h,b			;a2f2
	ld (hl),b		;a2f3
	add a,b			;a2f4
	sub b			;a2f5
	rst 38h			;a2f6
	cp 001h			;a2f7
	ret m			;a2f9
la2fah:
	ld a,(bc)		;a2fa
	jp (hl)			;a2fb
	ld (bc),a		;a2fc
	jp pe,ld30bh+1		;a2fd
	ld sp,hl		;a300
la301h:
	cp c			;a301
la302h:
	add a,d			;a302
	ld b,b			;a303
	ld d,b			;a304
	ld h,b			;a305
	ld (hl),b		;a306
la307h:
	add a,b			;a307
	sub b			;a308
la309h:
	and b			;a309
sub_a30ah:
	or b			;a30a
	rst 38h			;a30b
	cp 001h			;a30c
	ret m			;a30e
la30fh:
	ld a,(bc)		;a30f
	jp (hl)			;a310
	ld (bc),a		;a311
	jp pe,ld30bh		;a312
	jr nc,la357h		;a315
	ld d,b			;a317
	ld h,b			;a318
	ld (hl),b		;a319
	add a,b			;a31a
	ld sp,hl		;a31b
	cp c			;a31c
	add a,d			;a31d
	ld b,b			;a31e
	ld d,b			;a31f
	ld h,b			;a320
	rst 38h			;a321
	cp 001h			;a322
	jp (hl)			;a324
	ld (bc),a		;a325
la326h:
	jp pe,ld30bh		;a326
	nop			;a329
	djnz la34ch		;a32a
	jr nc,la36eh		;a32c
	ld d,b			;a32e
	ld h,b			;a32f
	ld (hl),b		;a330
	add a,b			;a331
	ld sp,hl		;a332
	cp c			;a333
	add a,d			;a334
	rst 38h			;a335
	sub d			;a336
	ld d,b			;a337
	sub d			;a338
	ld b,b			;a339
	sub d			;a33a
	jr nc,la2cfh		;a33b
	jr nz,la2d1h		;a33d
	djnz la2d3h		;a33f
	nop			;a341
	sub c			;a342
	ret p			;a343
	sub c			;a344
	ret po			;a345
	sub c			;a346
	ret nc			;a347
	sub c			;a348
	ret nz			;a349
	sub c			;a34a
	or b			;a34b
la34ch:
	sub c			;a34c
	and b			;a34d
	sub c			;a34e
	sub b			;a34f
	sub c			;a350
	add a,b			;a351
la352h:
	sub c			;a352
	ld (hl),b		;a353
	sub c			;a354
	ld h,b			;a355
	sub c			;a356
la357h:
	ld d,b			;a357
	sub c			;a358
	ld b,b			;a359
	jp m,000b8h		;a35a
sub_a35dh:
	rst 30h			;a35d
	or h			;a35e
	or d			;a35f
	or c			;a360
	or 0b0h			;a361
	add a,b			;a363
	or b			;a364
	ld a,0a8h		;a365
	nop			;a367
	rst 30h			;a368
	and h			;a369
	and d			;a36a
	and c			;a36b
	or 0a0h			;a36c
la36eh:
	add a,b			;a36e
	and b			;a36f
	ld a,098h		;a370
	nop			;a372
la373h:
	rst 30h			;a373
	sub h			;a374
	sub d			;a375
	sub c			;a376
la377h:
	or 090h			;a377
	add a,b			;a379
	sub b			;a37a
	ld a,088h		;a37b
	nop			;a37d
	rst 30h			;a37e
	add a,h			;a37f
	add a,d			;a380
	add a,c			;a381
	or 080h			;a382
	add a,b			;a384
sub_a385h:
	add a,b			;a385
	ld a,078h		;a386
	nop			;a388
	rst 30h			;a389
	ld (hl),h		;a38a
	ld (hl),d		;a38b
	ld (hl),c		;a38c
	or 070h			;a38d
	add a,b			;a38f
	ld (hl),b		;a390
	ld a,058h		;a391
	nop			;a393
	rst 30h			;a394
	ld d,h			;a395
	ld d,d			;a396
	ld d,c			;a397
	or 050h			;a398
	add a,b			;a39a
	ld d,b			;a39b
	ld a,028h		;a39c
	nop			;a39e
	rst 30h			;a39f
	inc h			;a3a0
	ld (lf621h),hl		;a3a1
	jr nz,la326h		;a3a4
	jr nz,$+64		;a3a6
	ex af,af'		;a3a8
	nop			;a3a9
	rst 30h			;a3aa
sub_a3abh:
	inc b			;a3ab
	ld (bc),a		;a3ac
	ld bc,l00f6h		;a3ad
	add a,b			;a3b0
	nop			;a3b1
	ld a,0fah		;a3b2
	sub h			;a3b4
	nop			;a3b5
	sub h			;a3b6
	add a,b			;a3b7
	sub l			;a3b8
	nop			;a3b9
	rst 30h			;a3ba
la3bbh:
	sub (hl)		;a3bb
	sub a			;a3bc
	sbc a,b			;a3bd
	add a,h			;a3be
	or 084h			;a3bf
	add a,b			;a3c1
	add a,l			;a3c2
	nop			;a3c3
	rst 30h			;a3c4
sub_a3c5h:
	add a,(hl)		;a3c5
	add a,a			;a3c6
	adc a,b			;a3c7
	ld (hl),h		;a3c8
la3c9h:
	or 074h			;a3c9
	add a,b			;a3cb
	ld (hl),l		;a3cc
	nop			;a3cd
	rst 30h			;a3ce
	halt			;a3cf
	ld (hl),a		;a3d0
	ld a,b			;a3d1
la3d2h:
	ld d,h			;a3d2
	or 054h			;a3d3
	add a,b			;a3d5
	ld d,l			;a3d6
la3d7h:
	nop			;a3d7
	rst 30h			;a3d8
	ld d,(hl)		;a3d9
	ld d,a			;a3da
	ld e,b			;a3db
	inc h			;a3dc
	or 024h			;a3dd
	add a,b			;a3df
	dec h			;a3e0
	nop			;a3e1
	ld h,0f7h		;a3e2
	daa			;a3e4
	jr z,$+6		;a3e5
	or 004h			;a3e7
	add a,b			;a3e9
	ld b,000h		;a3ea
	ex af,af'		;a3ec
	nop			;a3ed
	jp m,03091h		;a3ee
	sub c			;a3f1
	jr nz,sub_a385h		;a3f2
	djnz la377h		;a3f4
	nop			;a3f6
	ld (hl),b		;a3f7
	ret p			;a3f8
	ld h,b			;a3f9
la3fah:
	ret po			;a3fa
	ld d,b			;a3fb
	ret nc			;a3fc
	ld b,b			;a3fd
	ret nz			;a3fe
	jp m,l00c0h+2		;a3ff
sub_a402h:
	rst 30h			;a402
	jp 0c5c4h		;a403
	add a,0f6h		;a406
	jp m,l02e0h+2		;a408
	call nz,0c400h		;a40b
sub_a40eh:
	add a,b			;a40e
	push bc			;a40f
	nop			;a410
	rst 30h			;a411
	add a,0c7h		;a412
	ret z			;a414
	or 0fch			;a415
	ld (bc),a		;a417
	add hl,bc		;a418
	add a,h			;a419
	jp m,l02feh		;a41a
	jp po,lf903h		;a41d
	ld (hl),083h		;a420
	ld sp,hl		;a422
	rst 28h			;a423
	add a,e			;a424
	jr nc,la3d7h		;a425
	jr nz,la3c9h		;a427
	djnz la3bbh		;a429
	jp po,l0015h		;a42b
	nop			;a42e
	rst 38h			;a42f
	cp 002h			;a430
	jp po,sub_a202h+1	;a432
la435h:
	ld (hl),b		;a435
	and d			;a436
	ld h,b			;a437
	ld sp,hl		;a438
	ld (hl),083h		;a439
	ld sp,hl		;a43b
	rst 28h			;a43c
	add a,e			;a43d
	rst 38h			;a43e
la43fh:
	cp 002h			;a43f
	pop hl			;a441
	inc c			;a442
	call po,00b1fh		;a443
	add hl,bc		;a446
	ex af,af'		;a447
	rlca			;a448
	ld b,004h		;a449
	ld (bc),a		;a44b
	nop			;a44c
	rst 38h			;a44d
	cp 002h			;a44e
	ret m			;a450
	ld bc,001e2h		;a451
	ld sp,hl		;a454
	nop			;a455
	add a,h			;a456
	call m,05402h		;a457
	add a,h			;a45a
	jp po,lf802h		;a45b
	ld a,(bc)		;a45e
	ld sp,hl		;a45f
	ld e,e			;a460
	add a,e			;a461
	rst 38h			;a462
	cp 002h			;a463
	ret m			;a465
	ld bc,001e2h		;a466
	ld sp,hl		;a469
	nop			;a46a
	add a,h			;a46b
	rst 0			;a46c
	nop			;a46d
	call m,sub_6902h	;a46e
	add a,h			;a471
	jp po,lf802h		;a472
	jr nz,$-5		;a475
	ld e,e			;a477
	add a,e			;a478
	rst 38h			;a479
	cp 002h			;a47a
	ret m			;a47c
	ld bc,l09f9h		;a47d
	add a,h			;a480
	ret m			;a481
	add hl,bc		;a482
	ld sp,hl		;a483
	or h			;a484
	add a,e			;a485
	rst 38h			;a486
	cp 002h			;a487
la489h:
	ret m			;a489
	dec c			;a48a
	jp po,lf902h		;a48b
	add hl,bc		;a48e
	add a,h			;a48f
	ret m			;a490
	dec bc			;a491
	ld sp,hl		;a492
	or h			;a493
	add a,e			;a494
	rst 38h			;a495
	cp 002h			;a496
	jp po,lc302h		;a498
	nop			;a49b
	rst 30h			;a49c
	call nz,0c5c4h		;a49d
	add a,0c7h		;a4a0
	or 0ffh			;a4a2
	rst 38h			;a4a4
	rst 38h			;a4a5
	cp 004h			;a4a6
	jp (hl)			;a4a8
	inc b			;a4a9
	add a,c			;a4aa
	nop			;a4ab
	nop			;a4ac
	ld b,c			;a4ad
	ld bc,l8181h		;a4ae
	ld b,c			;a4b1
	ld bc,l017fh+2		;a4b2
	ld b,c			;a4b5
	ld bc,l8181h		;a4b6
	ld b,c			;a4b9
	ld de,l08eah+1		;a4ba
	inc de			;a4bd
	ld sp,hl		;a4be
	sbc a,084h		;a4bf
	ld b,c			;a4c1
	add a,c			;a4c2
	ld bc,leb81h		;a4c3
	inc bc			;a4c6
	ld b,031h		;a4c7
sub_a4c9h:
	ld b,c			;a4c9
	ld b,c			;a4ca
	ld b,c			;a4cb
	ld sp,hl		;a4cc
	sbc a,084h		;a4cd
	rla			;a4cf
	jr nc,la4d2h		;a4d0
la4d2h:
	nop			;a4d2
	nop			;a4d3
	ld b,c			;a4d4
	ld b,c			;a4d5
	rla			;a4d6
	ld b,c			;a4d7
	ld b,c			;a4d8
	ld b,c			;a4d9
	ld b,c			;a4da
	defb 0fdh,0aah,084h ;illegal sequence	;a4db
	ld b,c			;a4de
	add a,c			;a4df
	ld bc,leb81h		;a4e0
	inc bc			;a4e3
	ld b,041h		;a4e4
	ld b,c			;a4e6
	ld bc,lfc80h+1		;a4e7
	inc bc			;a4ea
	sbc a,084h		;a4eb
	jp m,l01fch+2		;a4ed
	jp (hl)			;a4f0
	inc b			;a4f1
	jp pe,led0dh		;a4f2
	ld bc,lf923h+1		;a4f5
	rra			;a4f8
	add a,l			;a4f9
	ld sp,hl		;a4fa
	dec sp			;a4fb
	add a,l			;a4fc
	ld sp,hl		;a4fd
	sub (hl)		;a4fe
	add a,l			;a4ff
	ld bc,lb1d4h		;a500
	out (001h),a		;a503
	ld bc,l03eah+1		;a505
	ex af,af'		;a508
	ld bc,lb1d4h		;a509
	out (001h),a		;a50c
	call nc,l2170h+1	;a50e
	ld sp,hl		;a511
	sub (hl)		;a512
	add a,l			;a513
	call nc,06f71h		;a514
	or a			;a517
	sub c			;a518
	or c			;a519
	or c			;a51a
	or c			;a51b
	defb 0fdh,0f2h,084h ;illegal sequence	;a51c
	call nc,0c042h		;a51f
	out (042h),a		;a522
	ret nz			;a524
	call nc,sub_413fh+2	;a525
	out (041h),a		;a528
	call nc,sub_4143h	;a52a
	out (041h),a		;a52d
	call nc,sub_413fh+2	;a52f
	ld b,c			;a532
	out (041h),a		;a533
	call nc,sub_eb41h	;a535
	inc b			;a538
	ld a,(de)		;a539
	jp m,0c052h		;a53a
	out (052h),a		;a53d
	ret nz			;a53f
	call nc,05151h		;a540
	out (051h),a		;a543
	call nc,05153h		;a545
	out (051h),a		;a548
	call nc,05151h		;a54a
	ld d,c			;a54d
	out (051h),a		;a54e
	call nc,sub_6251h	;a550
	ret nz			;a553
	out (062h),a		;a554
	ret nz			;a556
	call nc,sub_6161h	;a557
	out (061h),a		;a55a
	call nc,06163h		;a55c
	out (061h),a		;a55f
	call nc,sub_6161h	;a561
sub_a564h:
	ld h,c			;a564
	out (061h),a		;a565
	call nc,sub_7261h	;a567
	ret nz			;a56a
	out (072h),a		;a56b
	ret nz			;a56d
	call nc,sub_7171h	;a56e
	out (071h),a		;a571
	call nc,sub_7171h+2	;a573
	out (071h),a		;a576
	call nc,sub_7171h	;a578
	ld (hl),c		;a57b
	out (071h),a		;a57c
la57eh:
	call nc,sub_6271h	;a57e
	ret nz			;a581
	out (062h),a		;a582
	ret nz			;a584
	call nc,sub_6161h	;a585
	out (061h),a		;a588
	call nc,sub_b163h	;a58a
	or b			;a58d
	or b			;a58e
	or c			;a58f
	ld h,c			;a590
	push de			;a591
	or c			;a592
	or c			;a593
	or c			;a594
	jp m,00eeah		;a595
	call nc,sub_b141h	;a598
	out (041h),a		;a59b
	call nc,sub_2141h	;a59d
	ld b,c			;a5a0
	ld b,c			;a5a1
	ex de,hl		;a5a2
	inc bc			;a5a3
	ld b,041h		;a5a4
	ld b,c			;a5a6
	or c			;a5a7
	out (041h),a		;a5a8
	call nc,sub_2141h	;a5aa
	ld b,c			;a5ad
	ld b,c			;a5ae
	ld b,c			;a5af
	ld hl,sub_413fh+2	;a5b0
	ld b,c			;a5b3
	ld hl,l7140h+1		;a5b4
	or c			;a5b7
	out (001h),a		;a5b8
	call nc,04171h		;a5ba
	out (001h),a		;a5bd
	call nc,sub_d3b1h	;a5bf
	ld bc,leb01h		;a5c2
	inc bc			;a5c5
	add hl,bc		;a5c6
	jp m,l01fch+2		;a5c7
	ret m			;a5ca
	dec c			;a5cb
	jp (hl)			;a5cc
	inc b			;a5cd
	jp pe,led09h+2		;a5ce
	ld bc,lf966h		;a5d1
	rra			;a5d4
	add a,l			;a5d5
	jp pe,lf90ah		;a5d6
	dec sp			;a5d9
	add a,l			;a5da
	ld sp,hl		;a5db
	inc c			;a5dc
	add a,(hl)		;a5dd
	jp (hl)			;a5de
	inc b			;a5df
	dec h			;a5e0
	ld c,c			;a5e1
	jp pe,ld207h		;a5e2
	ld b,b			;a5e5
	ld h,b			;a5e6
	ld (hl),b		;a5e7
	add a,b			;a5e8
	sub b			;a5e9
	or b			;a5ea
	pop de			;a5eb
	nop			;a5ec
	jp pe,l100dh		;a5ed
sub_a5f0h:
	inc hl			;a5f0
	inc hl			;a5f1
	dec h			;a5f2
	ld c,a			;a5f3
	pop bc			;a5f4
	ld sp,hl		;a5f5
	inc c			;a5f6
	add a,(hl)		;a5f7
	ld (l9048h),hl		;a5f8
	ld b,b			;a5fb
	djnz $-44		;a5fc
	sub b			;a5fe
	ld b,b			;a5ff
	sub b			;a600
	pop de			;a601
	djnz $+67		;a602
	ld de,l91d2h		;a604
la607h:
	ld b,c			;a607
	djnz la607h		;a608
	jp z,0f885h		;a60a
	dec c			;a60d
	jp (hl)			;a60e
	ex af,af'		;a60f
	jp pe,ld40ah		;a610
	defb 0edh ;next byte illegal after ed	;a613
	ld bc,04067h		;a614
	or b			;a617
	out (040h),a		;a618
	call nc,sub_f840h	;a61a
	dec d			;a61d
	jp pe,ld20ch+1		;a61e
sub_a621h:
	sub d			;a621
	cp b			;a622
	sub c			;a623
	sub c			;a624
	sub d			;a625
	cp b			;a626
	ret m			;a627
	dec c			;a628
	jp pe,ld30ah		;a629
la62ch:
	nop			;a62c
	call nc,sub_4070h	;a62d
la630h:
	out (000h),a		;a630
	ret m			;a632
	dec d			;a633
	jp pe,ld10dh		;a634
	jp m,l01fch+2		;a637
	ret p			;a63a
	ret m			;a63b
	dec d			;a63c
	jp (hl)			;a63d
	inc b			;a63e
	jp pe,ld10ah		;a63f
	defb 0edh ;next byte illegal after ed	;a642
sub_a643h:
	ld bc,01f66h		;a643
la646h:
	ld de,l1111h		;a646
	ld de,l15c1h		;a649
	cpl			;a64c
	ld hl,lc121h		;a64d
	ld hl,025c1h		;a650
	ex de,hl		;a653
	ld (bc),a		;a654
	djnz la646h		;a655
	ld bc,l13f6h+2		;a657
	jp pe,lc205h		;a65a
	ld sp,hl		;a65d
	xor l			;a65e
	add a,(hl)		;a65f
	ld b,c			;a660
	ld de,l91d2h		;a661
	pop de			;a664
	sub c			;a665
	ld b,c			;a666
	ld de,090d2h		;a667
	ret p			;a66a
	ret m			;a66b
	ld e,0eah		;a66c
	add hl,bc		;a66e
la66fh:
	defb 0edh ;next byte illegal after ed	;a66f
	ld bc,ld163h		;a670
	ld b,l			;a673
	add hl,sp		;a674
	rst 28h			;a675
	ld bc,l15f8h		;a676
	jp pe,lf90bh		;a679
	rst 30h			;a67c
	add a,(hl)		;a67d
	jp (hl)			;a67e
	inc b			;a67f
	dec h			;a680
	ld c,c			;a681
	jp pe,ld206h		;a682
	ld b,b			;a685
	ld h,b			;a686
	ld (hl),b		;a687
	add a,b			;a688
	sub b			;a689
	or b			;a68a
	ret nz			;a68b
	jp pe,ld10bh		;a68c
	djnz $+37		;a68f
	inc hl			;a691
	dec h			;a692
	ld c,a			;a693
	ld sp,hl		;a694
	rst 30h			;a695
	add a,(hl)		;a696
	ld (lf047h),hl		;a697
	ld b,b			;a69a
	djnz la66fh		;a69b
	sub b			;a69d
	ld b,b			;a69e
	djnz la6e1h		;a69f
	sub b			;a6a1
	pop de			;a6a2
	ld de,l91d2h		;a6a3
	ld b,c			;a6a6
	ld de,090d3h		;a6a7
	defb 0fdh,03ah,086h ;illegal sequence	;a6aa
	defb 0edh ;next byte illegal after ed	;a6ad
	add a,d			;a6ae
	ld h,e			;a6af
	pop de			;a6b0
	ld b,c			;a6b1
	jp nc,ld191h		;a6b2
	ld bc,l91d2h		;a6b5
	pop de			;a6b8
	ld b,c			;a6b9
	jp nc,ld191h		;a6ba
	ld bc,l01edh		;a6bd
	ld h,e			;a6c0
	ld b,e			;a6c1
	jp nc,ld191h		;a6c2
	ld bc,l91d2h		;a6c5
	pop de			;a6c8
	sub c			;a6c9
	ld b,c			;a6ca
	ld bc,l91d2h		;a6cb
	ex de,hl		;a6ce
	ld (bc),a		;a6cf
	inc hl			;a6d0
	defb 0edh ;next byte illegal after ed	;a6d1
	add a,d			;a6d2
	ld h,e			;a6d3
la6d4h:
	pop de			;a6d4
	ld b,c			;a6d5
	jp nc,0d171h		;a6d6
	ld bc,l71d1h+1		;a6d9
	pop de			;a6dc
	ld b,c			;a6dd
	jp nc,0d171h		;a6de
la6e1h:
	ld bc,l01edh		;a6e1
	ld h,e			;a6e4
	ld b,e			;a6e5
	jp nc,0d171h		;a6e6
	ld bc,l71d1h+1		;a6e9
	pop de			;a6ec
	ld (hl),c		;a6ed
	ld b,c			;a6ee
	ld bc,l71d1h+1		;a6ef
	defb 0edh ;next byte illegal after ed	;a6f2
	ld de,ld163h		;a6f3
	jp m,008e9h		;a6f6
	jp nc,l01edh		;a6f9
	ld h,a			;a6fc
	call nz,sub_b892h	;a6fd
	sub c			;a700
	sub c			;a701
sub_a702h:
	sub d			;a702
	cp b			;a703
sub_a704h:
	jp lfad1h		;a704
	cp 001h			;a707
	ret p			;a709
	ret m			;a70a
	inc d			;a70b
	jp (hl)			;a70c
la70dh:
	inc b			;a70d
	jp pe,ld209h		;a70e
sub_a711h:
	defb 0edh ;next byte illegal after ed	;a711
	add a,c			;a712
	ld h,h			;a713
	xor a			;a714
	and c			;a715
	and c			;a716
	and c			;a717
	and c			;a718
	pop bc			;a719
	and l			;a71a
	cp a			;a71b
	or c			;a71c
	or c			;a71d
la71eh:
	pop bc			;a71e
	or c			;a71f
	pop bc			;a720
	or l			;a721
	ex de,hl		;a722
	ld (bc),a		;a723
	djnz la71eh		;a724
	inc de			;a726
	jp pe,lf909h		;a727
	xor l			;a72a
	add a,(hl)		;a72b
	ld b,c			;a72c
	ld de,l91d2h		;a72d
	pop de			;a730
	sub c			;a731
	ld b,c			;a732
	ld de,l91d2h		;a733
	pop de			;a736
	ld de,01ef8h		;a737
	defb 0edh ;next byte illegal after ed	;a73a
	ld bc,ld263h		;a73b
	sub l			;a73e
	sbc a,c			;a73f
	ret m			;a740
la741h:
	ld e,0e9h		;a741
	ex af,af'		;a743
	jp pe,ld20ch+1		;a744
	defb 0edh ;next byte illegal after ed	;a747
	ld bc,lf967h		;a748
	ld l,e			;a74b
	add a,a			;a74c
	ld sp,hl		;a74d
	ld l,e			;a74e
	add a,a			;a74f
	ld sp,hl		;a750
	ld l,e			;a751
	add a,a			;a752
	jp l7862h		;a753
	rst 28h			;a756
	ld bc,l14f8h		;a757
	jp pe,l9009h		;a75a
	sub b			;a75d
	sub b			;a75e
	sub b			;a75f
	sub b			;a760
	sub c			;a761
	sub c			;a762
	sub c			;a763
	sub c			;a764
sub_a765h:
	sub b			;a765
	sub b			;a766
	sub b			;a767
	add iy,bc		;a768
	add a,a			;a76a
	jp l7862h		;a76b
	ld h,c			;a76e
	ld h,c			;a76f
	ld h,d			;a770
	ld a,b			;a771
	jp m,l01fch+2		;a772
	ret p			;a775
	jp (hl)			;a776
	inc b			;a777
	jp pe,ld209h		;a778
	defb 0edh ;next byte illegal after ed	;a77b
	add a,c			;a77c
	ld h,e			;a77d
	ld l,a			;a77e
la77fh:
	ld h,c			;a77f
	ld h,c			;a780
	ld h,c			;a781
	ld h,c			;a782
	pop bc			;a783
	ld h,l			;a784
	ld a,a			;a785
	ld (hl),c		;a786
	ld (hl),c		;a787
	pop bc			;a788
	ld (hl),c		;a789
	pop bc			;a78a
	ld (hl),l		;a78b
sub_a78ch:
	ex de,hl		;a78c
	ld (bc),a		;a78d
	djnz la77fh		;a78e
	ld bc,l06e8h+2		;a790
	ld sp,hl		;a793
	xor l			;a794
	add a,(hl)		;a795
	ret p			;a796
	ld de,l91d2h		;a797
sub_a79ah:
	ld b,c			;a79a
	pop de			;a79b
	ld de,0d211h		;a79c
	sub c			;a79f
	ld b,c			;a7a0
	sub c			;a7a1
	ret m			;a7a2
	ld e,0eah		;a7a3
	add hl,bc		;a7a5
	defb 0edh ;next byte illegal after ed	;a7a6
	ld bc,ld163h		;a7a7
la7aah:
	dec d			;a7aa
	add hl,de		;a7ab
	rst 28h			;a7ac
	ld bc,008e9h		;a7ad
	jp pe,ld20ch+1		;a7b0
	defb 0edh ;next byte illegal after ed	;a7b3
	ld bc,lf967h		;a7b4
	call nc,sub_f987h	;a7b7
	call nc,sub_f987h	;a7ba
	call nc,0c387h		;a7bd
	sub d			;a7c0
la7c1h:
	cp b			;a7c1
	jp pe,ld107h+2		;a7c2
	djnz la7d7h		;a7c5
	djnz la7d9h		;a7c7
	djnz $+19		;a7c9
	ld de,l1111h		;a7cb
	djnz la7e0h		;a7ce
	djnz $-1		;a7d0
	ld (hl),l		;a7d2
	add a,a			;a7d3
	jp sub_b892h		;a7d4
la7d7h:
	sub c			;a7d7
	sub c			;a7d8
la7d9h:
	sub d			;a7d9
	cp b			;a7da
	jp m,l04feh		;a7db
	jp (hl)			;a7de
	inc b			;a7df
la7e0h:
	ld sp,hl		;a7e0
	ld c,088h		;a7e1
	ld sp,hl		;a7e3
	add hl,de		;a7e4
sub_a7e5h:
	adc a,b			;a7e5
	ex de,hl		;a7e6
	inc b			;a7e7
	dec b			;a7e8
	ld sp,hl		;a7e9
	ld c,088h		;a7ea
	ld sp,hl		;a7ec
la7edh:
	add hl,de		;a7ed
	adc a,b			;a7ee
	ex de,hl		;a7ef
	inc bc			;a7f0
	dec b			;a7f1
sub_a7f2h:
	add a,e			;a7f2
	add a,c			;a7f3
	add a,c			;a7f4
	add a,c			;a7f5
	add a,c			;a7f6
	inc bc			;a7f7
	ld bc,leb15h		;a7f8
	jr nz,la802h		;a7fb
	add a,e			;a7fd
	add a,c			;a7fe
	ld de,l8181h		;a7ff
la802h:
	ex de,hl		;a802
	rrca			;a803
	rlca			;a804
	add a,e			;a805
	jr nz,$+34		;a806
	ld hl,l211fh+2		;a808
	defb 0fdh,0dch,087h ;illegal sequence	;a80b
	add a,c			;a80e
	ld hl,l2181h		;a80f
	add a,c			;a812
	ld hl,004fbh		;a813
	ld c,088h		;a816
	jp m,08183h		;a818
	ld de,l0101h		;a81b
	jp m,l01fch+2		;a81e
	rst 28h			;a821
	ld bc,004e9h		;a822
	defb 0edh ;next byte illegal after ed	;a825
	ld bc,lf926h		;a826
	sub a			;a829
	adc a,b			;a82a
	sub c			;a82b
	ld sp,hl		;a82c
	sub a			;a82d
sub_a82eh:
	adc a,b			;a82e
	ld (hl),c		;a82f
	ld sp,hl		;a830
	sub a			;a831
	adc a,b			;a832
	sub c			;a833
	ex de,hl		;a834
	inc b			;a835
	ld c,0eah		;a836
	inc c			;a838
	call nc,sub_ea51h	;a839
	add hl,bc		;a83c
	out (051h),a		;a83d
	jp pe,ld40ah+2		;a83f
	ld d,c			;a842
	jp pe,ld309h		;a843
	ld bc,l0ceah		;a846
	call nc,sub_ea51h	;a849
	add hl,bc		;a84c
	out (051h),a		;a84d
	ex de,hl		;a84f
	ld (bc),a		;a850
	ld a,(de)		;a851
	ld sp,hl		;a852
	sbc a,a			;a853
	adc a,b			;a854
	ld (hl),c		;a855
	ld sp,hl		;a856
	sbc a,a			;a857
	adc a,b			;a858
	ld hl,l9ff9h		;a859
	adc a,b			;a85c
	ld (hl),c		;a85d
	ex de,hl		;a85e
	ld (bc),a		;a85f
	ld c,0fch		;a860
	ld (bc),a		;a862
	jr z,la7edh		;a863
	defb 0edh ;next byte illegal after ed	;a865
	ld bc,ld355h		;a866
	ld sp,hl		;a869
	and a			;a86a
	adc a,b			;a86b
	defb 0edh ;next byte illegal after ed	;a86c
	ld bc,0d488h		;a86d
	sub c			;a870
	sub c			;a871
	ld sp,hl		;a872
	ret nc			;a873
	adc a,b			;a874
	ex de,hl		;a875
	ld (bc),a		;a876
	rlca			;a877
	ld d,c			;a878
la879h:
	ld d,c			;a879
	ld sp,hl		;a87a
	rst 10h			;a87b
	adc a,b			;a87c
	ex de,hl		;a87d
	ld (bc),a		;a87e
	rlca			;a87f
	ld (hl),c		;a880
la881h:
	ld (hl),c		;a881
	ld sp,hl		;a882
	sbc a,088h		;a883
	ex de,hl		;a885
	ld (bc),a		;a886
	rlca			;a887
	ld b,c			;a888
la889h:
	ld b,c			;a889
	ld sp,hl		;a88a
	push hl			;a88b
	adc a,b			;a88c
	ex de,hl		;a88d
	ld (bc),a		;a88e
	rlca			;a88f
	call m,sub_7002h	;a890
	adc a,b			;a893
	defb 0fdh,01fh,088h ;illegal sequence	;a894
	jp pe,ld40ah+2		;a897
	sub c			;a89a
	jp pe,ld309h		;a89b
	jp m,l0ceah		;a89e
	call nc,lea71h		;a8a1
	add hl,bc		;a8a4
	out (0fah),a		;a8a5
	sub e			;a8a7
	sub c			;a8a8
	sub c			;a8a9
	sub c			;a8aa
	sub c			;a8ab
	ex de,hl		;a8ac
la8adh:
	ex af,af'		;a8ad
	rlca			;a8ae
	ld h,e			;a8af
	ld h,c			;a8b0
	ld h,c			;a8b1
	ld h,c			;a8b2
	ld h,c			;a8b3
	ld h,e			;a8b4
	ld h,c			;a8b5
	ld h,c			;a8b6
	ld h,c			;a8b7
	ld h,c			;a8b8
	ld d,e			;a8b9
	ld d,c			;a8ba
	ld d,c			;a8bb
	ld d,c			;a8bc
	ld d,c			;a8bd
	ld d,e			;a8be
	ld d,c			;a8bf
	ld d,c			;a8c0
	ld d,c			;a8c1
	ld d,c			;a8c2
	ld b,e			;a8c3
	ld b,c			;a8c4
sub_a8c5h:
	ld b,c			;a8c5
	ld b,c			;a8c6
	ld b,c			;a8c7
	ex de,hl		;a8c8
	inc b			;a8c9
	rlca			;a8ca
	call m,sub_a702h	;a8cb
	adc a,b			;a8ce
	jp m,ld390h+1		;a8cf
	sub c			;a8d2
	call nc,sub_9191h	;a8d3
	jp m,ld351h		;a8d6
	ld d,c			;a8d9
	call nc,05151h		;a8da
	jp m,0d371h		;a8dd
	ld (hl),c		;a8e0
	call nc,sub_7171h	;a8e1
	jp m,ld341h		;a8e4
	ld b,c			;a8e7
	call nc,sub_413fh+2	;a8e8
	jp m,l01fch+2		;a8eb
	rst 28h			;a8ee
	ld bc,l26f8h		;a8ef
	jp (hl)			;a8f2
	inc b			;a8f3
	defb 0edh ;next byte illegal after ed	;a8f4
	ld bc,lf960h		;a8f5
	ld e,a			;a8f8
	adc a,c			;a8f9
	sub c			;a8fa
	ld sp,hl		;a8fb
	ld e,a			;a8fc
	adc a,c			;a8fd
	ld (hl),c		;a8fe
la8ffh:
	ld sp,hl		;a8ff
	ld e,a			;a900
	adc a,c			;a901
sub_a902h:
	sub c			;a902
	ex de,hl		;a903
	inc b			;a904
	ld c,0eah		;a905
	dec bc			;a907
	push de			;a908
	ld d,c			;a909
	jp pe,ld409h		;a90a
	ld d,c			;a90d
	jp pe,ld50bh		;a90e
	ld d,c			;a911
	jp pe,ld409h		;a912
	ld bc,lead5h		;a915
	dec bc			;a918
	ld d,c			;a919
	jp pe,ld409h		;a91a
	ld d,c			;a91d
	ex de,hl		;a91e
	ld (bc),a		;a91f
	ld a,(de)		;a920
	ld sp,hl		;a921
	ld h,a			;a922
	adc a,c			;a923
	ld (hl),c		;a924
	ld sp,hl		;a925
	ld h,a			;a926
	adc a,c			;a927
	ld hl,l67f8h+1		;a928
	adc a,c			;a92b
	ld (hl),c		;a92c
	ex de,hl		;a92d
	ld (bc),a		;a92e
	ld c,0fch		;a92f
	ld (bc),a		;a931
	rst 30h			;a932
	adc a,b			;a933
	ld sp,hl		;a934
	and a			;a935
	adc a,b			;a936
	jp pe,led09h		;a937
	ld bc,l9350h		;a93a
	ld sp,hl		;a93d
	ret nc			;a93e
sub_a93fh:
	adc a,b			;a93f
	ex de,hl		;a940
	ld (bc),a		;a941
	ld b,053h		;a942
	ld sp,hl		;a944
	rst 10h			;a945
	adc a,b			;a946
	ex de,hl		;a947
	ld (bc),a		;a948
	ld b,073h		;a949
	ld sp,hl		;a94b
	sbc a,088h		;a94c
la94eh:
	ex de,hl		;a94e
	ld (bc),a		;a94f
	ld b,043h		;a950
	ld sp,hl		;a952
	push hl			;a953
	adc a,b			;a954
	ex de,hl		;a955
	ld (bc),a		;a956
	ld b,0fch		;a957
	ld (bc),a		;a959
	inc a			;a95a
	adc a,c			;a95b
	defb 0fdh,0ech,088h ;illegal sequence	;a95c
	jp pe,ld50bh		;a95f
	sub c			;a962
	jp pe,ld409h		;a963
	jp m,l0beah		;a966
	push de			;a969
	ld (hl),c		;a96a
	jp pe,ld409h		;a96b
	jp m,l01fch+2		;a96e
	ret m			;a971
	ld (bc),a		;a972
	jp (hl)			;a973
	ld b,0eah		;a974
	ld a,(bc)		;a976
	pop de			;a977
	defb 0edh ;next byte illegal after ed	;a978
	ld e,050h		;a979
	cpl			;a97b
	rra			;a97c
	ret m			;a97d
	inc bc			;a97e
	defb 0edh ;next byte illegal after ed	;a97f
	ld bc,lf877h		;a980
	ld a,(bc)		;a983
	jp nc,l0ceah		;a984
	rlca			;a987
	ld d,e			;a988
	sub e			;a989
	or c			;a98a
	ret nz			;a98b
	ld (hl),b		;a98c
	ld a,e			;a98d
	ex de,hl		;a98e
	ld (bc),a		;a98f
	rra			;a990
	jp (hl)			;a991
	ex af,af'		;a992
la993h:
	defb 0edh ;next byte illegal after ed	;a993
	ld (bc),a		;a994
	ld h,l			;a995
	ld sp,hl		;a996
	call c,sub_6889h	;a997
	ld sp,hl		;a99a
	call c,0b889h		;a99b
	ld sp,hl		;a99e
	rst 20h			;a99f
	adc a,c			;a9a0
	ld b,l			;a9a1
	sub d			;a9a2
	adc a,e			;a9a3
	ld sp,hl		;a9a4
	call c,sub_6889h	;a9a5
	ld sp,hl		;a9a8
	call c,0b889h		;a9a9
la9ach:
	ld sp,hl		;a9ac
	rst 20h			;a9ad
	adc a,c			;a9ae
	ld b,(hl)		;a9af
	sub b			;a9b0
	or b			;a9b1
	pop de			;a9b2
	ld c,e			;a9b3
	jp pe,ld20ch+1		;a9b4
	defb 0edh ;next byte illegal after ed	;a9b7
sub_a9b8h:
	ld (bc),a		;a9b8
	ld h,(hl)		;a9b9
la9bah:
	sbc a,c			;a9ba
	sub b			;a9bb
	or b			;a9bc
	pop de			;a9bd
	dec b			;a9be
	jp nc,ld192h		;a9bf
	ld (bc),a		;a9c2
	jp nc,l75b5h		;a9c3
	sub d			;a9c6
	add a,d			;a9c7
	ld h,d			;a9c8
	add a,d			;a9c9
	sbc a,c			;a9ca
	sub b			;a9cb
	or b			;a9cc
	pop de			;a9cd
	dec b			;a9ce
	jp nc,ld192h		;a9cf
	ld (bc),a		;a9d2
	jp nc,ld1bbh		;a9d3
	ld b,l			;a9d6
	ld h,d			;a9d7
	add a,d			;a9d8
	ld (iy-077h),c		;a9d9
	out (092h),a		;a9dc
	jp nc,02045h		;a9de
sub_a9e1h:
	djnz $-43		;a9e1
	sub b			;a9e3
	or d			;a9e4
	jp nc,l22fah		;a9e5
	sbc a,b			;a9e8
	ld d,l			;a9e9
la9eah:
	ld (bc),a		;a9ea
	ld d,d			;a9eb
	ld b,b			;a9ec
	ret nz			;a9ed
	out (0b0h),a		;a9ee
	jp nc,lf9fah		;a9f0
	sub l			;a9f3
la9f4h:
	adc a,d			;a9f4
	defb 0edh ;next byte illegal after ed	;a9f5
	ld e,041h		;a9f6
	sbc a,a			;a9f8
la9f9h:
	sbc a,a			;a9f9
	defb 0edh ;next byte illegal after ed	;a9fa
	ld (bc),a		;a9fb
	ld b,(hl)		;a9fc
	jp pe,l070ah+1		;a9fd
	ld d,e			;aa00
	sub e			;aa01
	or c			;aa02
	ret nz			;aa03
	ld (hl),b		;aa04
	ld a,e			;aa05
	ex de,hl		;aa06
	ld (bc),a		;aa07
	inc de			;aa08
	jp (hl)			;aa09
laa0ah:
	ex af,af'		;aa0a
	jp pe,ld30bh+1		;aa0b
	defb 0edh ;next byte illegal after ed	;aa0e
	ld bc,l9265h		;aa0f
	jp nc,02045h		;aa12
	djnz la9eah		;aa15
	sub b			;aa17
	or d			;aa18
	jp nc,0f063h		;aa19
	jr nz,$+66		;aa1c
	ld h,b			;aa1e
	ld b,b			;aa1f
	jr nz,$-15		;aa20
	ld bc,l42d3h		;aa22
	sub l			;aa25
	or b			;aa26
	sub b			;aa27
	ld b,b			;aa28
	ld (hl),d		;aa29
	jp nc,0d378h		;aa2a
	sub d			;aa2d
	jp nc,ld322h+1		;aa2e
	sub b			;aa31
	jp nc,l9020h		;aa32
	jr nz,laa0ah		;aa35
	sub b			;aa37
	jp nc,ld305h		;aa38
	sub d			;aa3b
	jp nc,ld302h		;aa3c
	or b			;aa3f
	ret nz			;aa40
	ld b,b			;aa41
	or l			;aa42
sub_aa43h:
	jp nc,l4222h		;aa43
	ld (lb2d3h),hl		;aa46
	ld b,d			;aa49
	ex de,hl		;aa4a
	ld (bc),a		;aa4b
	ld b,e			;aa4c
	ret p			;aa4d
	ret m			;aa4e
	dec bc			;aa4f
	jp pe,led09h+1		;aa50
sub_aa53h:
	ld bc,ld355h		;aa53
	sub e			;aa56
	jp nc,04000h		;aa57
	sub l			;aa5a
	out (093h),a		;aa5b
	jp nc,l5000h		;aa5d
	sub l			;aa60
	out (073h),a		;aa61
	or b			;aa63
	jp nc,l7520h		;aa64
	rst 28h			;aa67
	ld bc,l8292h		;aa68
	ld h,d			;aa6b
	add a,d			;aa6c
	ret p			;aa6d
	jp nc,ld193h		;aa6e
	nop			;aa71
	ld b,b			;aa72
	sub l			;aa73
	jp nc,ld193h		;aa74
	nop			;aa77
	ld d,b			;aa78
	sub l			;aa79
	jp nc,lb073h		;aa7a
	pop de			;aa7d
	jr nz,laaf5h		;aa7e
	pop de			;aa80
	ld b,b			;aa81
sub_aa82h:
	jp nc,l40b0h		;aa82
	ex de,hl		;aa85
	ld (bc),a		;aa86
	rlca			;aa87
	pop de			;aa88
	ld h,b			;aa89
	jr nz,$-44		;aa8a
	sub b			;aa8c
	pop de			;aa8d
laa8eh:
	add a,b			;aa8e
	ld b,b			;aa8f
	jp nc,lfdb0h		;aa90
laa93h:
	jp p,lfe89h		;aa93
laa96h:
	ld bc,l01edh+2		;aa96
	ret m			;aa99
	ld (bc),a		;aa9a
sub_aa9bh:
	jp (hl)			;aa9b
	ld b,0eah		;aa9c
	add hl,bc		;aa9e
	jp nc,01eedh		;aa9f
	ld b,c			;aaa2
	jp m,l95f9h		;aaa3
	adc a,d			;aaa6
	ld c,a			;aaa7
	ld c,a			;aaa8
	jp (hl)			;aaa9
	inc b			;aaaa
	ret m			;aaab
	dec d			;aaac
	defb 0edh ;next byte illegal after ed	;aaad
	ld bc,lf040h		;aaae
	jp pe,ld009h		;aab1
	ld d,c			;aab4
	ld bc,l91d0h+1		;aab5
	ld d,c			;aab8
	sub c			;aab9
	ret nc			;aaba
	ld bc,002ebh		;aabb
	dec bc			;aabe
	ld (hl),c		;aabf
	ld hl,lb1d1h		;aac0
	ld (hl),c		;aac3
	or c			;aac4
	ret nc			;aac5
	ld hl,002ebh		;aac6
	ld a,(bc)		;aac9
	call m,sub_a402h	;aaca
	adc a,d			;aacd
	rst 28h			;aace
	ld bc,l15f8h		;aacf
	jp (hl)			;aad2
	ex af,af'		;aad3
	jp pe,ld20bh		;aad4
	defb 0edh ;next byte illegal after ed	;aad7
	ld bc,0f980h		;aad8
	ld b,a			;aadb
	adc a,e			;aadc
	ret p			;aadd
	ld (hl),b		;aade
	ret nz			;aadf
	ld (hl),b		;aae0
	ld (hl),b		;aae1
	jr nz,lab54h		;aae2
	ld h,b			;aae4
	ret nz			;aae5
	ld (hl),b		;aae6
	ld (hl),b		;aae7
	jr nz,lab5ah		;aae8
	rst 28h			;aaea
	ld bc,l47f9h		;aaeb
	adc a,e			;aaee
	ld (hl),b		;aaef
	ret nz			;aaf0
	ld (hl),b		;aaf1
	ld (hl),b		;aaf2
	jr nz,$+114		;aaf3
laaf5h:
	ld (hl),b		;aaf5
	ret nz			;aaf6
	ld (hl),b		;aaf7
	ld (hl),b		;aaf8
	jr nz,$+114		;aaf9
	sub b			;aafb
	jr nz,laa8eh		;aafc
	sub b			;aafe
	jr nz,$-110		;aaff
	ex de,hl		;ab01
	ld (bc),a		;ab02
	ex af,af'		;ab03
lab04h:
	sub b			;ab04
	ld d,b			;ab05
lab06h:
	sub b			;ab06
sub_ab07h:
	sub b			;ab07
	ld d,b			;ab08
	sub b			;ab09
	ex de,hl		;ab0a
	ld (bc),a		;ab0b
	ex af,af'		;ab0c
	or b			;ab0d
	ld b,b			;ab0e
	add a,b			;ab0f
	ex de,hl		;ab10
	ex af,af'		;ab11
	dec b			;ab12
	call m,sub_da02h	;ab13
	adc a,d			;ab16
	ret m			;ab17
	dec d			;ab18
	jp (hl)			;ab19
	ex af,af'		;ab1a
	jp pe,ld20ch		;ab1b
	defb 0edh ;next byte illegal after ed	;ab1e
	ld bc,l4176h		;ab1f
	ld b,b			;ab22
	ld b,b			;ab23
	ld b,b			;ab24
	ld b,b			;ab25
	ex de,hl		;ab26
	ld (bc),a		;ab27
	rlca			;ab28
	ld d,c			;ab29
	ld d,b			;ab2a
	ld d,b			;ab2b
	ld d,b			;ab2c
	ld d,b			;ab2d
	ex de,hl		;ab2e
	ld (bc),a		;ab2f
	rlca			;ab30
	ld (hl),c		;ab31
	ld (hl),b		;ab32
	ld (hl),b		;ab33
	ld (hl),b		;ab34
	ld (hl),b		;ab35
	ex de,hl		;ab36
	ld (bc),a		;ab37
lab38h:
	rlca			;ab38
lab39h:
	ret m			;ab39
	ld (bc),a		;ab3a
	out (045h),a		;ab3b
lab3dh:
	jp nc,l4222h		;ab3d
	call m,sub_1702h	;ab40
	adc a,e			;ab43
sub_ab44h:
	defb 0fdh,0a4h ;and iyh	;ab44
	adc a,d			;ab46
	sub b			;ab47
	ret nz			;ab48
	sub b			;ab49
	sub b			;ab4a
lab4bh:
	ld b,b			;ab4b
	sub b			;ab4c
	ex de,hl		;ab4d
	ld (bc),a		;ab4e
	ex af,af'		;ab4f
	jp m,00deah		;ab50
	defb 0edh ;next byte illegal after ed	;ab53
lab54h:
	ld bc,lef61h		;ab54
lab57h:
	ld bc,0a5f9h		;ab57
lab5ah:
	adc a,e			;ab5a
	jp pe,ld30bh		;ab5b
	defb 0edh ;next byte illegal after ed	;ab5e
	ld (bc),a		;ab5f
	ld (hl),b		;ab60
	nop			;ab61
	jr nz,lab38h		;ab62
	jr nz,lab39h		;ab64
	jr nz,$-42		;ab66
	jr nz,lab3dh		;ab68
	jr nz,lab57h		;ab6a
	inc b			;ab6c
	ld (de),a		;ab6d
	jp pe,led0dh		;ab6e
	ld bc,ld461h		;ab71
	jr nz,lab06h		;ab74
	jr nz,lab4bh		;ab76
	ld (l03eah+1),hl	;ab78
	ex af,af'		;ab7b
	call nc,l211fh+2	;ab7c
	ld hl,l70d3h+2		;ab7f
	call nc,sub_d520h	;ab82
	ld (hl),b		;ab85
	call nc,sub_eb72h	;ab86
	inc bc			;ab89
	ld a,(bc)		;ab8a
	push de			;ab8b
	ld (hl),c		;ab8c
	ld (hl),c		;ab8d
	ld (hl),c		;ab8e
	call m,l6e01h+3		;ab8f
sub_ab92h:
	adc a,e			;ab92
	and b			;ab93
	ld d,b			;ab94
	and b			;ab95
	ld sp,hl		;ab96
	push bc			;ab97
	adc a,e			;ab98
lab99h:
	ex de,hl		;ab99
	inc bc			;ab9a
	dec b			;ab9b
	and b			;ab9c
	ld d,b			;ab9d
	and b			;ab9e
	ld sp,hl		;ab9f
	ret nc			;aba0
	adc a,e			;aba1
	defb 0fdh,05bh,08bh ;illegal sequence	;aba2
sub_aba5h:
	cp 001h			;aba5
	jp (hl)			;aba7
laba8h:
	rlca			;aba8
	out (020h),a		;aba9
lababh:
	jr nz,$+34		;abab
	call nc,sub_9090h	;abad
	sub b			;abb0
	and b			;abb1
labb2h:
	and b			;abb2
	and b			;abb3
	ld d,b			;abb4
labb5h:
	ld d,b			;abb5
labb6h:
	ld d,b			;abb6
	ld (hl),b		;abb7
	ld (hl),b		;abb8
labb9h:
	ld (hl),b		;abb9
	jr nz,$+34		;abba
	jr nz,labeeh		;abbc
	jr nc,labf0h		;abbe
	push de			;abc0
	and b			;abc1
	and b			;abc2
	and b			;abc3
	jp m,0a0d4h		;abc4
	ld d,b			;abc7
	and b			;abc8
	push de			;abc9
	and b			;abca
	call nc,sub_d550h	;abcb
	and b			;abce
	jp m,030d4h		;abcf
	and b			;abd2
	jr nc,laba8h		;abd3
	jr nc,lababh		;abd5
	and b			;abd7
	out (030h),a		;abd8
	call nc,sub_a030h	;abda
	jr nc,labb2h		;abdd
	jr nc,labb5h		;abdf
	jr nc,labb6h		;abe1
	jr nc,labb9h		;abe3
sub_abe5h:
	jr nc,lac17h		;abe5
	jr nc,lac59h		;abe7
	ld (hl),b		;abe9
	ld (hl),b		;abea
labebh:
	and b			;abeb
	and b			;abec
	and b			;abed
labeeh:
	out (030h),a		;abee
labf0h:
	jr nc,$+50		;abf0
	jp m,l04feh		;abf2
	jp (hl)			;abf5
	rlca			;abf6
	add a,b			;abf7
	jr nz,$-126		;abf8
	ex de,hl		;abfa
	ex af,af'		;abfb
	add hl,bc		;abfc
sub_abfdh:
	add a,b			;abfd
	jr nz,labebh		;abfe
	ld a,(bc)		;ac00
	inc b			;ac01
	jr nz,lac24h		;ac02
lac04h:
	jr nz,$+34		;ac04
	ld bc,l1000h		;ac06
lac09h:
	nop			;ac09
lac0ah:
	nop			;ac0a
	ex de,hl		;ac0b
sub_ac0ch:
	inc bc			;ac0c
lac0dh:
	rlca			;ac0d
	ld hl,l211fh+2		;ac0e
	call m,sub_0608h	;ac11
	adc a,h			;ac14
	add a,c			;ac15
	add a,b			;ac16
lac17h:
	jr nz,lab99h		;ac17
	add a,b			;ac19
	ex de,hl		;ac1a
	ex af,af'		;ac1b
	rlca			;ac1c
	defb 0fdh,0fdh,08bh ;illegal sequence	;ac1d
	ret m			;ac20
	jr z,lac0dh		;ac21
lac23h:
	rlca			;ac23
lac24h:
	defb 0edh ;next byte illegal after ed	;ac24
	ld bc,lf960h		;ac25
	and l			;ac28
	adc a,e			;ac29
lac2ah:
	ret m			;ac2a
	ld h,0edh		;ac2b
	ld bc,lea60h		;ac2d
	rlca			;ac30
	nop			;ac31
	jr nz,lac09h		;ac32
	jr nz,lac0ah		;ac34
	jr nz,lac23h		;ac36
	ld (bc),a		;ac38
sub_ac39h:
	ld b,0fch		;ac39
	inc b			;ac3b
	ld hl,(lf88ch)		;ac3c
	jr z,lac2ah		;ac3f
	rlca			;ac41
	jp pe,0d407h		;ac42
	defb 0edh ;next byte illegal after ed	;ac45
	ld bc,l2060h		;ac46
	jr nz,$+34		;ac49
	ret nz			;ac4b
	jr nz,$+34		;ac4c
	ex de,hl		;ac4e
	inc bc			;ac4f
	ex af,af'		;ac50
	jr nz,$-19		;ac51
	ld b,003h		;ac53
	ld (hl),b		;ac55
	ld (hl),b		;ac56
	ld (hl),b		;ac57
	ret nz			;ac58
lac59h:
	ld (hl),b		;ac59
	ld (hl),b		;ac5a
	ex de,hl		;ac5b
	inc bc			;ac5c
	ex af,af'		;ac5d
	call nc,sub_d570h	;ac5e
	ld (hl),b		;ac61
	ex de,hl		;ac62
	inc bc			;ac63
	ld b,0fch		;ac64
	inc b			;ac66
	ld a,08ch		;ac67
	jp pe,led08h		;ac69
	ld bc,lf961h		;ac6c
	push bc			;ac6f
	adc a,e			;ac70
	ei			;ac71
	inc b			;ac72
	ld l,(hl)		;ac73
lac74h:
	adc a,h			;ac74
	ld sp,hl		;ac75
	ret nc			;ac76
sub_ac77h:
	adc a,e			;ac77
	ld iy,(lf88ch)		;ac78
	dec d			;ac7c
	jp pe,lf909h		;ac7d
	inc (hl)		;ac80
	adc a,l			;ac81
	ld (hl),b		;ac82
	and b			;ac83
	jp nc,l7030h		;ac84
	and b			;ac87
	pop de			;ac88
	jr nc,lac74h		;ac89
	inc bc			;ac8b
	jp pe,lc003h		;ac8c
	jp (hl)			;ac8f
	rlca			;ac90
	ret nc			;ac91
	jr nz,$-45		;ac92
	sub b			;ac94
	ld (hl),b		;ac95
	ex de,hl		;ac96
	inc b			;ac97
	rlca			;ac98
	jp pe,lf904h		;ac99
	ld e,h			;ac9c
	adc a,l			;ac9d
	ld (hl),b		;ac9e
	ld sp,hl		;ac9f
	ld e,h			;aca0
	adc a,l			;aca1
	ld (hl),b		;aca2
	jp pe,lf902h		;aca3
	ld e,h			;aca6
	adc a,l			;aca7
	ld (hl),b		;aca8
	jp pe,lf901h		;aca9
	ld e,h			;acac
	adc a,l			;acad
	jp (hl)			;acae
	inc b			;acaf
	ld (hl),b		;acb0
	ret m			;acb1
	ld a,(bc)		;acb2
	ld sp,hl		;acb3
	add hl,hl		;acb4
	adc a,l			;acb5
	ld sp,hl		;acb6
	ld h,c			;acb7
	adc a,l			;acb8
	jp pe,lf907h		;acb9
	ld a,b			;acbc
	adc a,l			;acbd
	jp nc,ld1b0h		;acbe
	nop			;acc1
	jp nc,090b0h		;acc2
	or b			;acc5
	sub b			;acc6
	ld (hl),b		;acc7
	sub b			;acc8
	ld (hl),b		;acc9
	ld d,b			;acca
	ld (hl),b		;accb
sub_accch:
	ld d,b			;accc
	ld b,b			;accd
	jp pe,lf909h		;acce
	ld h,c			;acd1
	adc a,l			;acd2
	jp pe,ld006h		;acd3
	nop			;acd6
lacd7h:
	pop de			;acd7
lacd8h:
	or b			;acd8
	sub b			;acd9
	or b			;acda
	sub b			;acdb
	ld (hl),b		;acdc
	sub b			;acdd
	ld (hl),b		;acde
	ld d,b			;acdf
	ld (hl),b		;ace0
	ld d,b			;ace1
	ld b,b			;ace2
	ld d,b			;ace3
	ld b,b			;ace4
	jr nz,$+66		;ace5
lace7h:
	jr nz,lace9h		;ace7
lace9h:
	jr nz,lacebh		;ace9
lacebh:
	jp nc,ld1b0h		;aceb
	nop			;acee
	jp nc,090b0h		;acef
	call m,0b102h		;acf2
	adc a,h			;acf5
	ret m			;acf6
sub_acf7h:
	dec d			;acf7
	jp (hl)			;acf8
	rlca			;acf9
	jp pe,ld309h		;acfa
	defb 0edh ;next byte illegal after ed	;acfd
	inc b			;acfe
	ld d,b			;acff
	jr nz,$-44		;ad00
	jr nz,lacd7h		;ad02
	jr nz,lacd8h		;ad04
	ld bc,lf1d3h		;ad06
	ld (hl),l		;ad09
	sbc a,h			;ad0a
	jp nc,la191h		;ad0b
	pop de			;ad0e
	ld bc,020d2h		;ad0f
lad12h:
	pop de			;ad12
	jr nz,lace7h		;ad13
lad15h:
	jr nz,$-45		;ad15
	nop			;ad17
	jp nc,07c20h		;ad18
	jp p,ld1eeh		;ad1b
	jr nz,lad20h		;ad1e
lad20h:
	ld (hl),b		;ad20
	nop			;ad21
lad22h:
	jp nc,050a0h		;ad22
	defb 0fdh,08ah,08ch ;illegal sequence	;ad25
	rst 38h			;ad28
	jp (hl)			;ad29
lad2ah:
	rlca			;ad2a
	jp pe,led09h		;ad2b
	inc b			;ad2e
	jr nc,lad22h		;ad2f
	ld h,e			;ad31
	jp nc,sub_fefah		;ad32
sub_ad35h:
	ld bc,007e9h		;ad35
	defb 0edh ;next byte illegal after ed	;ad38
	ld (bc),a		;ad39
	ld d,b			;ad3a
	jp nc,ld120h		;ad3b
	jr nz,lad12h		;ad3e
	jr nz,lad15h		;ad40
	sub b			;ad42
	jp nc,ld390h		;ad43
	sub b			;ad46
	and b			;ad47
	jp nc,0d3a0h		;ad48
	and b			;ad4b
	ld d,b			;ad4c
	jp nc,ld350h		;ad4d
	ld d,b			;ad50
	ld (hl),b		;ad51
	jp nc,0d370h		;ad52
	ld (hl),b		;ad55
lad56h:
	jr nz,lad2ah		;ad56
	jr nz,$-43		;ad58
	jr nz,lad56h		;ad5a
	ret nc			;ad5c
	jr nz,$-45		;ad5d
	sub b			;ad5f
	jp m,lb040h		;ad60
	pop de			;ad63
	ld b,(hl)		;ad64
	jp nc,ld150h		;ad65
	nop			;ad68
	ld d,b			;ad69
	push bc			;ad6a
	jp nc,l5242h		;ad6b
	ret m			;ad6e
	dec d			;ad6f
	pop de			;ad70
	jp m,l20d0h		;ad71
	pop de			;ad74
	sub b			;ad75
	ld (hl),b		;ad76
	jp m,l5070h		;ad77
	ld b,b			;ad7a
	ld d,b			;ad7b
	ld b,b			;ad7c
	jr nz,ladbfh		;ad7d
	jr nz,lad81h		;ad7f
lad81h:
	jr nz,lad83h		;ad81
lad83h:
	jp m,l46d1h		;ad83
lad86h:
	jp nc,ld150h		;ad86
lad89h:
	nop			;ad89
	ld d,b			;ad8a
	push bc			;ad8b
	jp nc,lb040h		;ad8c
	pop de			;ad8f
	ld b,b			;ad90
	jp nc,ld150h		;ad91
	nop			;ad94
	ld d,b			;ad95
	jp (hl)			;ad96
	inc bc			;ad97
	ret nz			;ad98
	jp m,007e9h		;ad99
	pop de			;ad9c
	nop			;ad9d
	jp nc,090b0h		;ad9e
	or b			;ada1
	sub b			;ada2
	ld (hl),b		;ada3
	sub b			;ada4
	ld (hl),b		;ada5
	ld d,b			;ada6
	jp m,l0af8h		;ada7
	jp pe,lf908h		;adaa
	inc (hl)		;adad
	adc a,l			;adae
	jr nc,lad83h		;adaf
	jr nc,lad86h		;adb1
	jr nc,lad89h		;adb3
	and b			;adb5
	out (0a0h),a		;adb6
	call nc,sub_f8a0h	;adb8
	dec d			;adbb
	jp pe,ld005h		;adbc
ladbfh:
	jr nz,$-45		;adbf
	sub b			;adc1
	ld (hl),b		;adc2
	ex de,hl		;adc3
	inc b			;adc4
	rlca			;adc5
	jp pe,lf904h		;adc6
	ld (hl),d		;adc9
	adc a,l			;adca
	jp pe,lf903h		;adcb
	ld (hl),d		;adce
	adc a,l			;adcf
	jp pe,lf902h		;add0
	ld (hl),d		;add3
	adc a,l			;add4
	jp pe,lf901h		;add5
	ld (hl),d		;add8
	adc a,l			;add9
	ld sp,hl		;adda
	add hl,hl		;addb
	adc a,l			;addc
	rst 28h			;addd
	ld bc,lb040h		;adde
	ld sp,hl		;ade1
	add a,h			;ade2
	adc a,l			;ade3
	jp pe,0e907h		;ade4
	rlca			;ade7
	ld (hl),b		;ade8
	ld d,b			;ade9
	ld b,b			;adea
	ld d,b			;adeb
	ld b,b			;adec
	jr nz,lae2fh		;aded
	jr nz,ladf1h		;adef
ladf1h:
	jr nz,ladf3h		;adf1
ladf3h:
	jp nc,004e9h		;adf3
	or b			;adf6
	jp (hl)			;adf7
	rlca			;adf8
	pop de			;adf9
	ld (hl),b		;adfa
	ld d,b			;adfb
	ld b,b			;adfc
	ld d,b			;adfd
	ld b,b			;adfe
	jr nz,$+66		;adff
lae01h:
	jr nz,lae03h		;ae01
lae03h:
	jr nz,lae05h		;ae03
lae05h:
	jp nc,leab0h		;ae05
	add hl,bc		;ae08
	jp nc,lb040h		;ae09
	ld sp,hl		;ae0c
	add a,h			;ae0d
	adc a,l			;ae0e
	jp pe,0e906h		;ae0f
	rlca			;ae12
	ret nc			;ae13
	nop			;ae14
	pop de			;ae15
	or b			;ae16
lae17h:
	sub b			;ae17
lae18h:
	or b			;ae18
	sub b			;ae19
	ld (hl),b		;ae1a
	sub b			;ae1b
	ld (hl),b		;ae1c
	ld d,b			;ae1d
	ld (hl),b		;ae1e
	ld d,b			;ae1f
lae20h:
	jp (hl)			;ae20
	inc b			;ae21
	ld b,b			;ae22
lae23h:
	jp (hl)			;ae23
lae24h:
	rlca			;ae24
	ret nc			;ae25
	nop			;ae26
	pop de			;ae27
	or b			;ae28
	sub b			;ae29
	or b			;ae2a
lae2bh:
	sub b			;ae2b
	ld (hl),b		;ae2c
	sub b			;ae2d
lae2eh:
	ld (hl),b		;ae2e
lae2fh:
	ld d,b			;ae2f
	ld (hl),b		;ae30
	ld d,b			;ae31
	ld b,b			;ae32
	call m,sub_da02h	;ae33
	adc a,l			;ae36
	ret m			;ae37
	ld a,(bc)		;ae38
	jp (hl)			;ae39
	rlca			;ae3a
	jp pe,led07h		;ae3b
	inc b			;ae3e
sub_ae3fh:
	ld d,b			;ae3f
	jp nc,ld120h		;ae40
	jr nz,lae17h		;ae43
	jr nz,lae18h		;ae45
	nop			;ae47
	jp nc,lf120h		;ae48
	add a,h			;ae4b
	sub (hl)		;ae4c
	jr nz,lae20h		;ae4d
	jr nz,lae23h		;ae4f
	jr nz,lae24h		;ae51
	nop			;ae53
	jp nc,ld120h		;ae54
	jr nz,lae2bh		;ae57
	ld d,c			;ae59
	ld (hl),c		;ae5a
	sub c			;ae5b
	out (090h),a		;ae5c
	jp nc,ld390h		;ae5e
	sub b			;ae61
	jp nc,0d370h		;ae62
	sub b			;ae65
	jp nc,lea30h		;ae66
	dec b			;ae69
lae6ah:
	jp nc,ld120h		;ae6a
	jr nz,$-44		;ae6d
	jr nz,$-45		;ae6f
	nop			;ae71
	jp nc,l7620h		;ae72
	xor 0f1h		;ae75
	add a,(hl)		;ae77
	jp pe,0d106h		;ae78
sub_ae7bh:
	jr nz,lae7dh		;ae7b
lae7dh:
	ld (hl),b		;ae7d
	nop			;ae7e
	jp nc,050a0h		;ae7f
	defb 0fdh,0bah,08dh ;illegal sequence	;ae82
	rst 38h			;ae85
	cp 001h			;ae86
	ret m			;ae88
	ld a,(bc)		;ae89
	jp (hl)			;ae8a
	rlca			;ae8b
	jp pe,ld307h		;ae8c
	defb 0edh ;next byte illegal after ed	;ae8f
	ld (bc),a		;ae90
	ld d,b			;ae91
	sub b			;ae92
	jp nc,ld390h		;ae93
	sub b			;ae96
	jr nz,$-44		;ae97
	jr nz,$-43		;ae99
	jr nz,laeedh		;ae9b
	jp nc,ld350h		;ae9d
	ld d,b			;aea0
	nop			;aea1
	jp nc,ld300h		;aea2
	nop			;aea5
	jr nz,$-44		;aea6
	jr nz,lae7dh		;aea8
	jr nz,$-42		;aeaa
	ld (hl),b		;aeac
	out (070h),a		;aead
	call nc,0d370h		;aeaf
	jr nc,laf24h		;aeb2
	and b			;aeb4
	jp nc,l7030h		;aeb5
	and b			;aeb8
	ret m			;aeb9
	ld a,(bc)		;aeba
	jp (hl)			;aebb
	rlca			;aebc
	jp pe,ld107h+2		;aebd
	rst 28h			;aec0
	ld bc,l65f1h		;aec1
	ld (l07eah),hl		;aec4
	ld (l06e8h+2),hl	;aec7
sub_aecah:
	ld (l05eah),hl		;aeca
	ld (l04eah),hl		;aecd
	ld (l03eah),hl		;aed0
	ld (002eah),hl		;aed3
	dec h			;aed6
	ld sp,hl		;aed7
laed8h:
	cpl			;aed8
	adc a,a			;aed9
	ld sp,hl		;aeda
laedbh:
	ld c,(hl)		;aedb
laedch:
	adc a,a			;aedc
laeddh:
	or b			;aedd
	sub b			;aede
	ld (hl),b		;aedf
	sub b			;aee0
	ld (hl),b		;aee1
	ld d,b			;aee2
	ld (hl),b		;aee3
	ld d,b			;aee4
	ld b,b			;aee5
	ld sp,hl		;aee6
	cpl			;aee7
	adc a,a			;aee8
	ld sp,hl		;aee9
	ld c,(hl)		;aeea
laeebh:
	adc a,a			;aeeb
laeech:
	pop de			;aeec
laeedh:
	nop			;aeed
	jp nc,090b0h		;aeee
	or b			;aef1
	sub b			;aef2
	ld (hl),b		;aef3
	sub b			;aef4
	ld (hl),b		;aef5
	ld d,b			;aef6
	ex de,hl		;aef7
	ld (bc),a		;aef8
laef9h:
	ld (l15f8h),hl		;aef9
	jp (hl)			;aefc
	rlca			;aefd
	jp pe,ld309h		;aefe
	defb 0edh ;next byte illegal after ed	;af01
sub_af02h:
	inc b			;af02
sub_af03h:
	ld d,b			;af03
laf04h:
	jr nz,laed8h		;af04
	jr nz,laedbh		;af06
	jr nz,laedch		;af08
	ld bc,lf1d3h		;af0a
	ld (hl),l		;af0d
	sbc a,h			;af0e
	jp nc,la191h		;af0f
	pop de			;af12
	ld bc,020d2h		;af13
	pop de			;af16
	jr nz,laeebh		;af17
	jr nz,laeech		;af19
	nop			;af1b
	jp nc,07c20h		;af1c
	jp p,0eaeeh		;af1f
	ld b,0d1h		;af22
laf24h:
	jr nz,laf26h		;af24
laf26h:
	ld (hl),b		;af26
	nop			;af27
	jp nc,050a0h		;af28
laf2bh:
	defb 0fdh,0b9h,08eh ;illegal sequence	;af2b
	rst 38h			;af2e
	ret m			;af2f
	ld a,(bc)		;af30
	jp (hl)			;af31
	rlca			;af32
	jp pe,ld207h		;af33
sub_af36h:
	defb 0edh ;next byte illegal after ed	;af36
	inc b			;af37
	jr nc,laf2bh		;af38
	ld h,e			;af3a
	ld b,b			;af3b
	or b			;af3c
	pop de			;af3d
	ld b,(hl)		;af3e
	jp nc,ld150h		;af3f
	nop			;af42
	ld d,b			;af43
	push bc			;af44
	jp nc,l5242h		;af45
	jp pe,lf806h		;af48
	dec d			;af4b
	pop de			;af4c
	jp m,l5070h		;af4d
	ld b,b			;af50
	ld d,b			;af51
	ld b,b			;af52
	jr nz,laf95h		;af53
	jr nz,laf57h		;af55
laf57h:
	jr nz,laf59h		;af57
laf59h:
	jp nc,ld1b0h		;af59
	nop			;af5c
	jp nc,090b0h		;af5d
	jp m,l01fch+2		;af60
	ret m			;af63
	ld bc,004e9h		;af64
	jp pe,ld30bh		;af67
	defb 0edh ;next byte illegal after ed	;af6a
	inc bc			;af6b
	inc sp			;af6c
	ld bc,ld271h		;af6d
	ld bc,l71d1h+2		;af70
	jp nc,ld301h		;af73
laf76h:
	ld (hl),c		;af76
	ex de,hl		;af77
	dec b			;af78
	inc c			;af79
	call nc,0d3a1h		;af7a
	ld d,c			;af7d
	and c			;af7e
	ld d,c			;af7f
	and c			;af80
	ld d,c			;af81
	call nc,ld390h+1	;af82
	ld d,c			;af85
	sub c			;af86
	ld d,c			;af87
	sub c			;af88
	ld d,c			;af89
	call nc,sub_d381h	;af8a
	ld sp,l3181h		;af8d
	and c			;af90
	ld d,c			;af91
	ld bc,ld271h		;af92
laf95h:
	ld bc,l71d1h+2		;af95
	jp nc,ld301h		;af98
	ld (hl),c		;af9b
	ex de,hl		;af9c
	inc b			;af9d
	inc c			;af9e
	ld sp,ld2a1h		;af9f
	ld sp,la1d3h		;afa2
	jp nc,0d331h		;afa5
	and c			;afa8
	ld d,c			;afa9
	jp nc,l5101h		;afaa
	ld bc,00151h		;afad
	out (081h),a		;afb0
	jp nc,l8131h		;afb2
	ld sp,l3181h		;afb5
	out (071h),a		;afb8
	or c			;afba
	jp nc,l7121h		;afbb
	or e			;afbe
lafbfh:
	out (051h),a		;afbf
	jp nc,l5101h		;afc1
	ex de,hl		;afc4
sub_afc5h:
	inc b			;afc5
	rlca			;afc6
	out (081h),a		;afc7
	jp nc,l8131h		;afc9
	ex de,hl		;afcc
	inc b			;afcd
	rlca			;afce
	out (051h),a		;afcf
	jp nc,l5101h		;afd1
	ex de,hl		;afd4
	ld (bc),a		;afd5
	rlca			;afd6
	out (081h),a		;afd7
	jp nc,l8131h		;afd9
	ex de,hl		;afdc
	ld (bc),a		;afdd
	rlca			;afde
	out (071h),a		;afdf
	jp nc,l5121h		;afe1
	ex de,hl		;afe4
	ld (bc),a		;afe5
	rlca			;afe6
	out (071h),a		;afe7
	jp nc,02101h		;afe9
	ld d,c			;afec
	ld (hl),c		;afed
	or c			;afee
	defb 0fdh,061h ;ld iyh,c	;afef
	adc a,a			;aff1
	cp 001h			;aff2
	rst 28h			;aff4
	ld bc,001f8h		;aff5
laff8h:
	jp (hl)			;aff8
	ld (bc),a		;aff9
	jp pe,ld209h		;affa
	defb 0edh ;next byte illegal after ed	;affd
	inc bc			;affe
lafffh:
	inc sp			;afff
lb000h:
	ret nz			;b000
lb001h:
	jp (hl)			;b001
	inc b			;b002
	ld bc,0d171h		;b003
	ld bc,l71d1h+1		;b006
	pop de			;b009
	ld bc,l71d1h+1		;b00a
	ex de,hl		;b00d
	dec b			;b00e
	inc c			;b00f
	out (0a1h),a		;b010
	jp nc,la151h		;b012
	ld d,c			;b015
	and c			;b016
	ld d,c			;b017
	out (091h),a		;b018
	jp nc,l9151h		;b01a
	ld d,c			;b01d
	sub c			;b01e
	ld d,c			;b01f
	out (081h),a		;b020
	jp nc,l8131h		;b022
	ld sp,l51a1h		;b025
	ld bc,0d171h		;b028
	ld bc,l71d1h+1		;b02b
	pop de			;b02e
	ld bc,l71d1h+1		;b02f
	ex de,hl		;b032
	inc b			;b033
	inc c			;b034
	out (031h),a		;b035
	and c			;b037
	jp nc,0d331h		;b038
	and c			;b03b
	jp nc,0d331h		;b03c
	and c			;b03f
lb040h:
	ld d,c			;b040
	jp nc,l5101h		;b041
	ld bc,00151h		;b044
	out (081h),a		;b047
	jp nc,l8131h		;b049
	ld sp,l3181h		;b04c
	out (071h),a		;b04f
	or c			;b051
	jp nc,l7121h		;b052
	or d			;b055
	jp (hl)			;b056
	ld (bc),a		;b057
	ret nz			;b058
	jp (hl)			;b059
	inc b			;b05a
	jp pe,ld40ah		;b05b
	ld d,c			;b05e
	out (001h),a		;b05f
	ld d,c			;b061
	ex de,hl		;b062
	inc b			;b063
	rlca			;b064
	call nc,sub_d381h	;b065
	ld sp,leb81h		;b068
	inc b			;b06b
	rlca			;b06c
	call nc,ld351h		;b06d
	ld bc,0eb51h		;b070
lb073h:
	ld (bc),a		;b073
	rlca			;b074
	call nc,sub_d381h	;b075
	ld sp,leb81h		;b078
	ld (bc),a		;b07b
	rlca			;b07c
	call nc,0d371h		;b07d
lb080h:
	ld hl,0eb51h		;b080
	ld (bc),a		;b083
	rlca			;b084
	call nc,0d371h		;b085
	ld bc,l5121h		;b088
	ld (hl),c		;b08b
	or c			;b08c
	defb 0fdh,0f2h,08fh ;illegal sequence	;b08d
	rst 38h			;b090
	cp 001h			;b091
	ret m			;b093
	ld (bc),a		;b094
	jp (hl)			;b095
	inc b			;b096
sub_b097h:
	jp pe,ld10bh		;b097
	defb 0edh ;next byte illegal after ed	;b09a
	ld bc,0f950h		;b09b
	nop			;b09e
	sub c			;b09f
	ld d,e			;b0a0
	dec b			;b0a1
	ld hl,l5131h		;b0a2
	defb 0edh ;next byte illegal after ed	;b0a5
	ld bc,0f950h		;b0a6
	nop			;b0a9
	sub c			;b0aa
	ld hl,l0301h		;b0ab
	jp nc,lc3b3h		;b0ae
	ret m			;b0b1
lb0b2h:
	ld a,(bc)		;b0b2
	jp (hl)			;b0b3
	inc b			;b0b4
	jp pe,ld20bh		;b0b5
	ld d,c			;b0b8
	pop de			;b0b9
sub_b0bah:
	ld bc,la1d2h		;b0ba
	add a,c			;b0bd
	ld (hl),c		;b0be
	ld d,c			;b0bf
	pop de			;b0c0
	ex de,hl		;b0c1
	ld (bc),a		;b0c2
	dec bc			;b0c3
	ret m			;b0c4
	dec d			;b0c5
	jp pe,ld008h		;b0c6
	ld bc,001d1h		;b0c9
	ret nc			;b0cc
	ld bc,001d1h		;b0cd
	jp nc,ld301h		;b0d0
lb0d3h:
	ld bc,l01d2h		;b0d3
	out (001h),a		;b0d6
	pop de			;b0d8
	ld bc,l01d2h		;b0d9
	pop de			;b0dc
	ld bc,l01d2h		;b0dd
	ret m			;b0e0
	ld (bc),a		;b0e1
	jp pe,led09h+2		;b0e2
	ld bc,05150h		;b0e5
	pop de			;b0e8
	ld bc,la1d2h		;b0e9
lb0ech:
	add a,c			;b0ec
	ld (hl),c		;b0ed
	ld d,c			;b0ee
	pop de			;b0ef
	ld bc,l3121h		;b0f0
	ld d,c			;b0f3
	ld (hl),c		;b0f4
	ret nc			;b0f5
lb0f6h:
	ld bc,ld107h		;b0f6
	or c			;b0f9
	ld hl,lfd7bh		;b0fa
	sub c			;b0fd
	sub b			;b0fe
	rst 38h			;b0ff
	ld (hl),c		;b100
	ld bc,l0171h		;b101
lb104h:
	ld d,c			;b104
	ld bc,l71d1h+1		;b105
	ld bc,l0171h		;b108
	ld d,c			;b10b
	ld bc,l71d1h		;b10c
	ld bc,l017fh+2		;b10f
	and c			;b112
	ld bc,001d0h		;b113
	pop de			;b116
	ld bc,l01a0h+1		;b117
sub_b11ah:
	add a,c			;b11a
	ld bc,l8171h		;b11b
	ld (hl),a		;b11e
	ld d,c			;b11f
	ld (hl),c		;b120
	ld d,a			;b121
	rlca			;b122
	jp m,l01fch+2		;b123
	rst 28h			;b126
	ld bc,l0af8h		;b127
	jp (hl)			;b12a
	inc b			;b12b
	jp pe,ld10bh		;b12c
	defb 0edh ;next byte illegal after ed	;b12f
	ld bc,0f950h		;b130
	nop			;b133
	sub c			;b134
	ld d,e			;b135
	dec b			;b136
	ld hl,l5131h		;b137
	pop de			;b13a
	ld sp,hl		;b13b
	nop			;b13c
	sub c			;b13d
	ld hl,l0301h		;b13e
sub_b141h:
	jp nc,lc3b3h		;b141
	ret m			;b144
	dec c			;b145
	jp pe,led09h+2		;b146
	ld bc,05150h		;b149
	pop de			;b14c
	ld bc,la1d2h		;b14d
	add a,c			;b150
	ld (hl),c		;b151
	ld d,c			;b152
	pop de			;b153
sub_b154h:
	ld d,c			;b154
	ret nc			;b155
	ld bc,la1d1h		;b156
	add a,c			;b159
	ld (hl),c		;b15a
	ld d,c			;b15b
	ret m			;b15c
	dec d			;b15d
	jp (hl)			;b15e
	ld (bc),a		;b15f
	ret nz			;b160
	jp (hl)			;b161
	inc b			;b162
sub_b163h:
	jp pe,ld009h		;b163
	ld bc,001d1h		;b166
	ret nc			;b169
	ld bc,001d1h		;b16a
	jp nc,ld301h		;b16d
	ld bc,l01d2h		;b170
	out (001h),a		;b173
	pop de			;b175
	ld bc,l01d2h		;b176
	pop de			;b179
	ld bc,le9d2h		;b17a
	ld (bc),a		;b17d
	ld (bc),a		;b17e
	jp (hl)			;b17f
	inc b			;b180
lb181h:
	ret m			;b181
	ld a,(bc)		;b182
	jp nc,l01edh		;b183
	ld d,b			;b186
	ld d,c			;b187
	pop de			;b188
	ld bc,la1d2h		;b189
	add a,c			;b18c
	ld (hl),c		;b18d
	ld d,c			;b18e
	pop de			;b18f
	ld bc,l3121h		;b190
sub_b193h:
	ld d,c			;b193
	ld (hl),c		;b194
	ret nc			;b195
	ld bc,ld107h		;b196
	or c			;b199
sub_b19ah:
	ret nc			;b19a
	ld hl,l7bf0h		;b19b
	defb 0fdh,024h ;inc iyh	;b19e
	sub c			;b1a0
	rst 38h			;b1a1
	ld sp,hl		;b1a2
	jp c,0f891h		;b1a3
	ld (bc),a		;b1a6
	jp pe,ld309h		;b1a7
	defb 0edh ;next byte illegal after ed	;b1aa
	ld bc,00160h		;b1ab
	add a,c			;b1ae
	ld (hl),c		;b1af
	ld d,c			;b1b0
sub_b1b1h:
	ld sp,ld121h		;b1b1
	ex de,hl		;b1b4
	ld (bc),a		;b1b5
	add hl,bc		;b1b6
	ret m			;b1b7
	dec c			;b1b8
	defb 0edh ;next byte illegal after ed	;b1b9
	ld bc,ld480h		;b1ba
	inc bc			;b1bd
	inc hl			;b1be
	inc sp			;b1bf
	ld d,e			;b1c0
	inc sp			;b1c1
	inc hl			;b1c2
	ld bc,l7181h		;b1c3
	ld d,c			;b1c6
	ld sp,ld221h		;b1c7
	add a,c			;b1ca
	and c			;b1cb
	pop de			;b1cc
	ld bc,l3121h		;b1cd
	ld (hl),c		;b1d0
lb1d1h:
	ld (hl),a		;b1d1
lb1d2h:
	ld d,c			;b1d2
lb1d3h:
	or c			;b1d3
lb1d4h:
	ret nc			;b1d4
	dec hl			;b1d5
	defb 0fdh,0a2h,091h ;illegal sequence	;b1d6
	rst 38h			;b1d9
	cp 001h			;b1da
	ret m			;b1dc
	ld a,(bc)		;b1dd
	jp (hl)			;b1de
	inc b			;b1df
	jp pe,led09h		;b1e0
	ld bc,ld150h		;b1e3
	ld bc,l71d1h+1		;b1e6
	pop de			;b1e9
	ld bc,l71d1h+1		;b1ea
	pop de			;b1ed
	ld bc,l71d1h+1		;b1ee
	ld bc,l71d1h+2		;b1f1
	jp nc,ld301h		;b1f4
	ld (hl),c		;b1f7
	jp nc,ld301h		;b1f8
	ld (hl),c		;b1fb
	pop de			;b1fc
	ld bc,l71d1h+1		;b1fd
	pop de			;b200
lb201h:
	ld sp,l71d1h+1		;b201
	pop de			;b204
	ld d,c			;b205
lb206h:
	jp nc,0d171h		;b206
	ld (hl),c		;b209
	jp nc,0d171h		;b20a
	ld d,c			;b20d
	jp nc,0d171h		;b20e
	ld sp,l71d1h+1		;b211
sub_b214h:
	pop de			;b214
	ld sp,l3751h		;b215
	ld hl,02731h		;b218
	jp nc,09397h		;b21b
	add a,l			;b21e
	and c			;b21f
	pop de			;b220
	ld bc,00121h		;b221
	jp nc,0d171h		;b224
	ld bc,l71d1h+1		;b227
sub_b22ah:
	pop de			;b22a
	ld bc,l71d1h+1		;b22b
	ld bc,l71d1h+2		;b22e
	jp nc,ld301h		;b231
	ld (hl),c		;b234
	jp nc,ld301h		;b235
	ld (hl),c		;b238
sub_b239h:
	pop de			;b239
	ld bc,l71d1h+1		;b23a
	pop de			;b23d
	ld sp,l71d1h+1		;b23e
	pop de			;b241
	ld d,c			;b242
lb243h:
	jp nc,0d171h		;b243
	ld (hl),c		;b246
	jp nc,0d171h		;b247
	ld d,c			;b24a
	jp nc,0d171h		;b24b
	ld sp,l71d1h+1		;b24e
	xor e			;b251
	sbc a,e			;b252
	adc a,e			;b253
	ld (hl),e		;b254
	ld (hl),e		;b255
lb256h:
	jp leffah		;b256
	ld bc,ldaf9h		;b259
	sub c			;b25c
	ret m			;b25d
	dec c			;b25e
	jp pe,ld309h		;b25f
	defb 0edh ;next byte illegal after ed	;b262
	ld bc,00150h		;b263
	add a,c			;b266
	ld (hl),c		;b267
	ld d,c			;b268
	ld sp,ld121h		;b269
	ex de,hl		;b26c
	ld (bc),a		;b26d
	add hl,bc		;b26e
	ret m			;b26f
	ld (bc),a		;b270
	jp pe,ld30bh+1		;b271
	defb 0edh ;next byte illegal after ed	;b274
lb275h:
	ld bc,00370h		;b275
lb278h:
	inc hl			;b278
	inc sp			;b279
	ld d,e			;b27a
	inc sp			;b27b
	inc hl			;b27c
	ret m			;b27d
	ld (bc),a		;b27e
	jp pe,ld309h		;b27f
	defb 0edh ;next byte illegal after ed	;b282
lb283h:
	ld bc,00160h		;b283
	add a,c			;b286
	ld (hl),c		;b287
	ld d,c			;b288
	ld sp,l8121h		;b289
	and c			;b28c
	jp nc,02101h		;b28d
	ld sp,07771h		;b290
	ld d,c			;b293
	or c			;b294
	pop de			;b295
	ret p			;b296
	dec hl			;b297
	defb 0fdh,058h,092h ;illegal sequence	;b298
lb29bh:
	rst 38h			;b29b
	rst 38h			;b29c
	cp 004h			;b29d
	jp (hl)			;b29f
	inc b			;b2a0
	ld sp,hl		;b2a1
	jp c,0fc92h		;b2a2
	inc b			;b2a5
	and c			;b2a6
	sub d			;b2a7
	ld sp,hl		;b2a8
	jp c,0fc92h		;b2a9
	ld (bc),a		;b2ac
	xor b			;b2ad
	sub d			;b2ae
	add a,c			;b2af
	nop			;b2b0
	nop			;b2b1
	ld bc,sub_0141h		;b2b2
lb2b5h:
	add a,c			;b2b5
	add a,c			;b2b6
	ld bc,l4181h		;b2b7
	ld bc,l4181h		;b2ba
	add a,c			;b2bd
	add a,c			;b2be
	ex de,hl		;b2bf
lb2c0h:
	inc bc			;b2c0
	dec b			;b2c1
	ld b,b			;b2c2
	ld b,b			;b2c3
	ld b,c			;b2c4
	ld b,c			;b2c5
	add a,c			;b2c6
	nop			;b2c7
	nop			;b2c8
	add a,c			;b2c9
	ld b,c			;b2ca
	ld bc,leb81h		;b2cb
sub_b2ceh:
	inc bc			;b2ce
	add hl,bc		;b2cf
lb2d0h:
	add a,c			;b2d0
	ld b,b			;b2d1
lb2d2h:
	ld b,b			;b2d2
lb2d3h:
	ld b,c			;b2d3
	ld b,c			;b2d4
	ld b,c			;b2d5
	ld b,c			;b2d6
	defb 0fdh,09dh ;sbc a,iyl	;b2d7
	sub d			;b2d9
	add a,c			;b2da
	nop			;b2db
	nop			;b2dc
	add a,c			;b2dd
	ld b,c			;b2de
	add a,c			;b2df
	ld bc,l017fh+2		;b2e0
	add a,c			;b2e3
	ld b,c			;b2e4
	ld bc,0eb11h		;b2e5
	inc bc			;b2e8
	rrca			;b2e9
	add a,c			;b2ea
	nop			;b2eb
	nop			;b2ec
	add a,c			;b2ed
	ld b,c			;b2ee
	ld b,c			;b2ef
	ld bc,l0081h		;b2f0
	nop			;b2f3
lb2f4h:
	add a,c			;b2f4
	ld b,c			;b2f5
	ld b,c			;b2f6
	ld b,c			;b2f7
	jp m,l01fch+2		;b2f8
	jp (hl)			;b2fb
	inc b			;b2fc
	jp pe,ld40dh		;b2fd
	defb 0edh ;next byte illegal after ed	;b300
	ld bc,03113h		;b301
	ld sp,0d331h		;b304
	ld sp,l31d3h+1		;b307
sub_b30ah:
	ld sp,002ebh		;b30a
	ld a,(bc)		;b30d
	ld h,c			;b30e
	ld h,c			;b30f
	ld h,c			;b310
	out (061h),a		;b311
	call nc,sub_6161h	;b313
	ex de,hl		;b316
	ld (bc),a		;b317
	ld a,(bc)		;b318
	add a,c			;b319
	add a,c			;b31a
	add a,c			;b31b
	out (081h),a		;b31c
	call nc,l8181h		;b31e
	ex de,hl		;b321
	ld (bc),a		;b322
	ld a,(bc)		;b323
	and c			;b324
	and c			;b325
	and c			;b326
	out (0a1h),a		;b327
	call nc,sub_a1a1h	;b329
	ex de,hl		;b32c
	ld (bc),a		;b32d
	ld a,(bc)		;b32e
	call m,lf904h		;b32f
	sub d			;b332
	ld h,c			;b333
	ld h,c			;b334
	add a,c			;b335
	out (081h),a		;b336
	call nc,l8181h		;b338
	ld h,c			;b33b
	add a,c			;b33c
	add a,c			;b33d
	out (081h),a		;b33e
	call nc,l8181h		;b340
	ex de,hl		;b343
	inc bc			;b344
	ld a,(bc)		;b345
	call m,03302h		;b346
	sub e			;b349
	ld de,l3131h		;b34a
	out (031h),a		;b34d
	call nc,0d331h		;b34f
	ld sp,011d4h		;b352
	ld sp,0d3a1h		;b355
	ld sp,la1d4h		;b358
	ld sp,l04eah+1		;b35b
	inc d			;b35e
	ld d,c			;b35f
	ld h,c			;b360
	ex de,hl		;b361
	dec bc			;b362
	inc bc			;b363
	add a,c			;b364
	ex de,hl		;b365
	inc c			;b366
	inc bc			;b367
	ld sp,l0aebh		;b368
	inc bc			;b36b
	add a,c			;b36c
	and c			;b36d
	out (031h),a		;b36e
	ld sp,l3131h		;b370
	ld sp,l3331h		;b373
	call nc,sub_73a3h	;b376
	ld sp,iy		;b379
lb37bh:
	sub d			;b37b
	cp 001h			;b37c
	ret p			;b37e
	ret m			;b37f
	ld a,(bc)		;b380
	jp (hl)			;b381
	ex af,af'		;b382
	jp pe,ld20ah		;b383
lb386h:
	defb 0edh ;next byte illegal after ed	;b386
	ld bc,lf936h		;b387
	dec a			;b38a
	sub h			;b38b
	jr c,lb386h		;b38c
	dec c			;b38e
	ld sp,lc230h		;b38f
	ld sp,lc230h		;b392
	ret m			;b395
	ld a,(bc)		;b396
	ld sp,hl		;b397
	ld c,e			;b398
	sub h			;b399
	ret m			;b39a
	ld (de),a		;b39b
	inc sp			;b39c
	ld d,b			;b39d
	jr nc,lb3c5h		;b39e
lb3a0h:
	ret m			;b3a0
	ld a,(bc)		;b3a1
	jp nc,l3df9h		;b3a2
	sub h			;b3a5
	jr c,lb3a0h		;b3a6
	ld (de),a		;b3a8
	jp pe,ld10bh		;b3a9
lb3ach:
	inc sp			;b3ac
	ld d,b			;b3ad
	jr nc,lb3d1h		;b3ae
	ld sp,ld251h		;b3b0
	ret m			;b3b3
	ld a,(bc)		;b3b4
	jp pe,lf90ah		;b3b5
	ld c,e			;b3b8
lb3b9h:
	sub h			;b3b9
	ld sp,hl		;b3ba
	ld e,h			;b3bb
	sub h			;b3bc
	jr nc,$-6		;b3bd
	dec c			;b3bf
	jp (hl)			;b3c0
	inc b			;b3c1
	jp pe,ld30ah		;b3c2
lb3c5h:
	defb 0edh ;next byte illegal after ed	;b3c5
	ld bc,l6137h		;b3c6
	add a,c			;b3c9
	jp nc,l3101h		;b3ca
	ld h,c			;b3cd
	add a,c			;b3ce
	ret m			;b3cf
lb3d0h:
	inc de			;b3d0
lb3d1h:
	defb 0edh ;next byte illegal after ed	;b3d1
lb3d2h:
	ld bc,lea23h		;b3d2
	add hl,bc		;b3d5
	pop de			;b3d6
	scf			;b3d7
	ld bc,l81d2h		;b3d8
	and a			;b3db
	and c			;b3dc
	pop de			;b3dd
	ld bc,03111h		;b3de
	ld d,c			;b3e1
	dec (hl)		;b3e2
	ret m			;b3e3
	dec c			;b3e4
	jp pe,ld30ah		;b3e5
	defb 0edh ;next byte illegal after ed	;b3e8
	ld bc,l8137h		;b3e9
	and c			;b3ec
	jp nc,l5121h		;b3ed
	add a,c			;b3f0
	and c			;b3f1
	ret m			;b3f2
	inc de			;b3f3
	defb 0edh ;next byte illegal after ed	;b3f4
	ld bc,lea23h		;b3f5
	add hl,bc		;b3f8
	pop de			;b3f9
	ld d,a			;b3fa
lb3fbh:
	ld hl,la1d2h		;b3fb
	pop de			;b3fe
	rlca			;b3ff
	ld bc,l211fh+2		;b400
	ld sp,03551h		;b403
	ret m			;b406
	inc de			;b407
	jp (hl)			;b408
	inc b			;b409
	defb 0edh ;next byte illegal after ed	;b40a
	ld bc,lea23h		;b40b
	ex af,af'		;b40e
	pop de			;b40f
sub_b410h:
	ld sp,hl		;b410
	ld l,(hl)		;b411
	sub h			;b412
	ld sp,008e9h		;b413
	xor b			;b416
	jp (hl)			;b417
	inc b			;b418
	jp pe,lab06h		;b419
	ret nc			;b41c
	dec bc			;b41d
	jp nc,00519h		;b41e
	out (0b7h),a		;b421
	ret m			;b423
	ld a,(bc)		;b424
	jp (hl)			;b425
	inc b			;b426
	jp pe,ld20ah		;b427
	defb 0edh ;next byte illegal after ed	;b42a
	ld bc,lf932h		;b42b
	ld a,e			;b42e
	sub h			;b42f
	pop de			;b430
	dec sp			;b431
	jp nc,ld1a1h		;b432
	ld sp,le981h		;b435
	ld b,07fh		;b438
	defb 0fdh,07ch ;ld a,iyh	;b43a
	sub e			;b43c
	ld sp,la630h		;b43d
	and b			;b440
	pop de			;b441
	nop			;b442
	jr $+18			;b443
	nop			;b445
	djnz $+3		;b446
	jp nc,lfa80h		;b448
	ld sp,la630h		;b44b
	add a,b			;b44e
	ld h,b			;b44f
	pop de			;b450
	dec d			;b451
	ld h,c			;b452
	ld de,la1d2h		;b453
	add a,e			;b456
	add a,b			;b457
	and b			;b458
	pop de			;b459
	dec b			;b45a
	jp m,004f8h		;b45b
	jp pe,ld107h		;b45e
	jr nz,lb493h		;b461
	ld d,b			;b463
	jr nc,lb4b6h		;b464
	ld h,b			;b466
	ld d,b			;b467
lb468h:
	ld h,b			;b468
	add a,b			;b469
	and b			;b46a
	ret nc			;b46b
	djnz lb468h		;b46c
	ld h,c			;b46e
	add a,c			;b46f
	and c			;b470
	dec (hl)		;b471
sub_b472h:
	ld sp,06151h		;b472
	add a,c			;b475
	ld h,c			;b476
sub_b477h:
	ld d,c			;b477
	ld sp,lfa31h		;b478
	and e			;b47b
	inc de			;b47c
	ld h,e			;b47d
	and c			;b47e
	pop de			;b47f
	ld bc,03111h		;b480
	ld de,ld201h		;b483
	and e			;b486
	inc sp			;b487
	add a,e			;b488
	and c			;b489
	pop de			;b48a
	ld bc,03111h		;b48b
	ld de,ld201h		;b48e
	and e			;b491
	and c			;b492
lb493h:
	jp m,l01fch+2		;b493
	ret p			;b496
	rst 28h			;b497
	ld bc,l0af8h		;b498
	jp (hl)			;b49b
	inc b			;b49c
	jp pe,ld208h		;b49d
	defb 0edh ;next byte illegal after ed	;b4a0
	add a,c			;b4a1
	ld h,030h		;b4a2
	jp (hl)			;b4a4
lb4a5h:
	ex af,af'		;b4a5
	ld sp,hl		;b4a6
	dec a			;b4a7
	sub h			;b4a8
	jp (hl)			;b4a9
sub_b4aah:
	inc b			;b4aa
	ccf			;b4ab
	ret nz			;b4ac
	ret p			;b4ad
	ret m			;b4ae
lb4afh:
	dec c			;b4af
	and e			;b4b0
	and c			;b4b1
	push bc			;b4b2
	and e			;b4b3
	and c			;b4b4
lb4b5h:
	push bc			;b4b5
lb4b6h:
	rst 28h			;b4b6
	ld bc,l0af8h		;b4b7
	jr nc,lb4a5h		;b4ba
	ex af,af'		;b4bc
	ld sp,hl		;b4bd
	ld c,e			;b4be
	sub h			;b4bf
	ret m			;b4c0
	inc b			;b4c1
	inc sp			;b4c2
	ld d,b			;b4c3
	jr nc,lb4ebh		;b4c4
	ret m			;b4c6
lb4c7h:
	ld a,(bc)		;b4c7
	jp (hl)			;b4c8
	ex af,af'		;b4c9
	jp nc,l3df9h		;b4ca
lb4cdh:
	sub h			;b4cd
	scf			;b4ce
	jp (hl)			;b4cf
	inc b			;b4d0
	ret nz			;b4d1
	ret p			;b4d2
	ret m			;b4d3
lb4d4h:
	ld (de),a		;b4d4
	jp (hl)			;b4d5
	ex af,af'		;b4d6
	jp pe,la309h		;b4d7
	pop de			;b4da
	jr nz,lb4afh		;b4db
	and b			;b4dd
	and c			;b4de
	pop de			;b4df
	ld bc,lef21h		;b4e0
	ld bc,0f8d2h		;b4e3
lb4e6h:
	ld a,(bc)		;b4e6
	jp (hl)			;b4e7
	inc b			;b4e8
	jr nc,lb4d4h		;b4e9
lb4ebh:
	ex af,af'		;b4eb
	ld sp,hl		;b4ec
	ld c,e			;b4ed
	sub h			;b4ee
	ld sp,hl		;b4ef
	ld e,h			;b4f0
	sub h			;b4f1
	jp (hl)			;b4f2
lb4f3h:
	inc b			;b4f3
	jr nc,lb4e6h		;b4f4
	rst 28h			;b4f6
	ld bc,l0df8h		;b4f7
	jp (hl)			;b4fa
	inc b			;b4fb
	jp pe,ld309h		;b4fc
	defb 0edh ;next byte illegal after ed	;b4ff
	ld bc,l6137h		;b500
	add a,c			;b503
	jp nc,l3101h		;b504
	ld h,c			;b507
	add a,c			;b508
	ret p			;b509
	ret m			;b50a
	inc de			;b50b
	defb 0edh ;next byte illegal after ed	;b50c
	ld bc,lea23h		;b50d
	rlca			;b510
	jp nc,l0137h		;b511
	out (081h),a		;b514
	and a			;b516
	and c			;b517
	jp nc,01101h		;b518
	ld sp,03551h		;b51b
	rst 28h			;b51e
	ld bc,l0df8h		;b51f
	jp pe,ld309h		;b522
	defb 0edh ;next byte illegal after ed	;b525
	ld bc,l8137h		;b526
	and c			;b529
	jp nc,l5121h		;b52a
	add a,c			;b52d
	and c			;b52e
	ret p			;b52f
	ret m			;b530
	inc de			;b531
	defb 0edh ;next byte illegal after ed	;b532
	ld bc,lea23h		;b533
	rlca			;b536
	jp nc,02157h		;b537
sub_b53ah:
	out (0a1h),a		;b53a
	jp nc,00107h		;b53c
lb53fh:
	ld hl,l3121h		;b53f
	ld d,c			;b542
	dec (hl)		;b543
	rst 28h			;b544
	ld bc,l13f6h+2		;b545
	jp (hl)			;b548
	inc b			;b549
	defb 0edh ;next byte illegal after ed	;b54a
	ld bc,lea23h+2		;b54b
	rlca			;b54e
	pop de			;b54f
	ld h,b			;b550
	ld sp,hl		;b551
	ld l,(hl)		;b552
	sub h			;b553
	jr nc,lb53fh		;b554
	ex af,af'		;b556
	pop af			;b557
	ld e,b			;b558
	xor b			;b559
	jp p,le9f0h		;b55a
	inc b			;b55d
	jp pe,led06h		;b55e
	ld bc,l3b24h		;b561
	ld e,e			;b564
	jp nc,l5569h		;b565
	ld b,a			;b568
	rst 28h			;b569
	ld bc,l14f8h		;b56a
	jp (hl)			;b56d
	inc b			;b56e
	jp pe,ld209h		;b56f
	defb 0edh ;next byte illegal after ed	;b572
	add a,c			;b573
	ld (l7bf9h),a		;b574
	sub h			;b577
	ret p			;b578
	xor e			;b579
	rst 28h			;b57a
	ld bc,la1d2h		;b57b
	pop de			;b57e
	ld sp,0f081h		;b57f
	jp (hl)			;b582
	ld b,03fh		;b583
	defb 0fdh,094h ;sub iyh	;b585
	sub h			;b587
	cp 001h			;b588
	ret p			;b58a
	rst 28h			;b58b
	ld bc,l15f8h		;b58c
	jp (hl)			;b58f
	inc b			;b590
	jp pe,ld206h		;b591
lb594h:
	defb 0edh ;next byte illegal after ed	;b594
	add a,c			;b595
	ld (l81a2h),a		;b596
	and c			;b599
	pop de			;b59a
	ld sp,la1d2h		;b59b
	add a,c			;b59e
lb59fh:
	and c			;b59f
	pop de			;b5a0
	ld sp,la1d2h		;b5a1
	add a,c			;b5a4
lb5a5h:
	and c			;b5a5
	pop de			;b5a6
	jr nc,lb594h		;b5a7
	djnz lb5cdh		;b5a9
	ret m			;b5ab
	dec d			;b5ac
	jp (hl)			;b5ad
	inc b			;b5ae
	jp pe,ld20ah		;b5af
	defb 0edh ;next byte illegal after ed	;b5b2
	add a,c			;b5b3
	ld d,d			;b5b4
	ld l,e			;b5b5
	adc a,e			;b5b6
	adc a,e			;b5b7
	add a,l			;b5b8
	ld h,l			;b5b9
	adc a,e			;b5ba
	xor e			;b5bb
	pop de			;b5bc
	dec bc			;b5bd
	jp nc,085a5h		;b5be
	jp (hl)			;b5c1
	inc b			;b5c2
	ret m			;b5c3
	dec d			;b5c4
	jp pe,ld20ah		;b5c5
	defb 0edh ;next byte illegal after ed	;b5c8
	add a,c			;b5c9
	ld d,d			;b5ca
	dec de			;b5cb
	dec sp			;b5cc
lb5cdh:
	rst 28h			;b5cd
	ld bc,l07eah		;b5ce
	pop de			;b5d1
	ld (de),a		;b5d2
	jp pe,01108h		;b5d3
	jp nc,061a1h		;b5d6
	pop de			;b5d9
	ld de,la1d2h		;b5da
	ld h,c			;b5dd
	pop de			;b5de
	ld bc,l91d2h		;b5df
	ld d,c			;b5e2
	or c			;b5e3
	add a,b			;b5e4
	ex de,hl		;b5e5
	ld (bc),a		;b5e6
	ld h,0efh		;b5e7
	ld bc,l15f8h		;b5e9
	jp (hl)			;b5ec
	ld b,0eah		;b5ed
	ex af,af'		;b5ef
	jp nc,l81edh		;b5f0
	ld (lf81fh),a		;b5f3
	inc d			;b5f6
	ccf			;b5f7
	jp (hl)			;b5f8
	inc b			;b5f9
	ret m			;b5fa
	dec d			;b5fb
	add a,b			;b5fc
	add a,c			;b5fd
	and c			;b5fe
	pop de			;b5ff
	ld sp,la0d2h		;b600
	ex de,hl		;b603
	inc bc			;b604
sub_b605h:
	add hl,bc		;b605
	jp (hl)			;b606
	ld b,0eah		;b607
	ld a,(bc)		;b609
	jp nc,lf0afh		;b60a
	defb 0fdh,088h,095h ;illegal sequence	;b60d
	rst 38h			;b610
	cp 001h			;b611
	ret p			;b613
	ret m			;b614
	dec d			;b615
	jp (hl)			;b616
	inc b			;b617
	jp pe,ld207h		;b618
	defb 0edh ;next byte illegal after ed	;b61b
	add a,c			;b61c
	ld (0a181h),a		;b61d
	pop de			;b620
	ld sp,la1d2h		;b621
	add a,c			;b624
	and c			;b625
	pop de			;b626
	ld sp,la1d2h		;b627
	add a,c			;b62a
	and c			;b62b
	pop de			;b62c
	ld sp,la1d2h		;b62d
	ex de,hl		;b630
	djnz lb654h		;b631
	ret m			;b633
	dec d			;b634
	jp (hl)			;b635
sub_b636h:
	inc b			;b636
	jp pe,ld20ah		;b637
	defb 0edh ;next byte illegal after ed	;b63a
	add a,c			;b63b
	ld d,d			;b63c
	xor e			;b63d
	pop de			;b63e
	dec bc			;b63f
	dec de			;b640
	dec b			;b641
	jp nc,ld1a5h		;b642
	dec bc			;b645
	dec hl			;b646
	dec sp			;b647
	dec h			;b648
	dec b			;b649
	jp (hl)			;b64a
	inc b			;b64b
	ret m			;b64c
	dec d			;b64d
	jp pe,ld20ah		;b64e
	defb 0edh ;next byte illegal after ed	;b651
	add a,c			;b652
	ld d,d			;b653
lb654h:
	ld l,e			;b654
	adc a,e			;b655
	pop de			;b656
	ld de,la1d2h		;b657
lb65ah:
	ld h,c			;b65a
	jp pe,ld107h+2		;b65b
lb65eh:
	ld de,la1d2h		;b65e
	ld h,c			;b661
	pop de			;b662
	ld bc,l91d2h		;b663
	ld d,c			;b666
	or c			;b667
	add a,c			;b668
	ld b,c			;b669
	ex de,hl		;b66a
	ld (bc),a		;b66b
sub_b66ch:
	ld (l02efh),hl		;b66c
	ret m			;b66f
	dec d			;b670
	jp (hl)			;b671
	ld b,0eah		;b672
	ex af,af'		;b674
	jp nc,l81edh		;b675
	ld (0f86fh),a		;b678
	inc d			;b67b
	adc a,a			;b67c
	jp (hl)			;b67d
	inc b			;b67e
	ret m			;b67f
	dec d			;b680
	add a,c			;b681
	and c			;b682
	pop de			;b683
	ld sp,la1d2h		;b684
	ex de,hl		;b687
	inc bc			;b688
	ex af,af'		;b689
	ld (hl),c		;b68a
	and c			;b68b
	pop de			;b68c
	ld sp,la1d2h		;b68d
	ex de,hl		;b690
	inc bc			;b691
sub_b692h:
	ex af,af'		;b692
	defb 0fdh,011h,096h ;illegal sequence	;b693
	rst 38h			;b696
	cp 004h			;b697
	jp (hl)			;b699
	ld b,0f9h		;b69a
	push af			;b69c
	sub (hl)		;b69d
	ld b,c			;b69e
	nop			;b69f
	add a,b			;b6a0
	ld sp,hl		;b6a1
	push af			;b6a2
	sub (hl)		;b6a3
	ld b,c			;b6a4
	ld b,b			;b6a5
	ld b,b			;b6a6
	ld sp,hl		;b6a7
	push af			;b6a8
	sub (hl)		;b6a9
	ld b,c			;b6aa
	nop			;b6ab
	add a,b			;b6ac
	ld sp,hl		;b6ad
	push af			;b6ae
	sub (hl)		;b6af
	ld b,b			;b6b0
	ld b,b			;b6b1
	nop			;b6b2
	ld b,b			;b6b3
	ex de,hl		;b6b4
	ld (bc),a		;b6b5
	rra			;b6b6
	add a,b			;b6b7
	nop			;b6b8
	nop			;b6b9
	nop			;b6ba
	ld b,b			;b6bb
	ld b,b			;b6bc
	ex de,hl		;b6bd
	ld (bc),a		;b6be
	ex af,af'		;b6bf
lb6c0h:
	nop			;b6c0
	nop			;b6c1
	nop			;b6c2
	add a,b			;b6c3
	ld b,b			;b6c4
	djnz lb6c0h		;b6c5
	push af			;b6c7
	sub (hl)		;b6c8
	ld b,b			;b6c9
	ld b,b			;b6ca
	djnz lb70dh		;b6cb
sub_b6cdh:
	call m,sub_b702h	;b6cd
	sub (hl)		;b6d0
	ld sp,hl		;b6d1
	push af			;b6d2
	sub (hl)		;b6d3
	ld b,c			;b6d4
	nop			;b6d5
sub_b6d6h:
	add a,b			;b6d6
lb6d7h:
	ld sp,hl		;b6d7
	push af			;b6d8
	sub (hl)		;b6d9
	ld b,c			;b6da
lb6dbh:
	ld b,b			;b6db
	ld b,b			;b6dc
	ex de,hl		;b6dd
	ld (bc),a		;b6de
	ld c,0f9h		;b6df
	push af			;b6e1
	sub (hl)		;b6e2
	ld b,c			;b6e3
	nop			;b6e4
	add a,b			;b6e5
	add a,c			;b6e6
	nop			;b6e7
	nop			;b6e8
	ld b,c			;b6e9
	nop			;b6ea
	nop			;b6eb
	ld b,b			;b6ec
	ld b,b			;b6ed
lb6eeh:
	ld b,b			;b6ee
	ld b,c			;b6ef
sub_b6f0h:
	ld b,b			;b6f0
	ld b,c			;b6f1
	defb 0fdh,097h,096h ;illegal sequence	;b6f2
	add a,c			;b6f5
	nop			;b6f6
	nop			;b6f7
	ld b,c			;b6f8
	nop			;b6f9
	nop			;b6fa
	add a,c			;b6fb
	nop			;b6fc
	nop			;b6fd
	jp m,l01fch+2		;b6fe
	jp (hl)			;b701
sub_b702h:
	inc bc			;b702
	jp pe,ld40dh		;b703
	defb 0edh ;next byte illegal after ed	;b706
	ld bc,lf833h		;b707
	nop			;b70a
	ld sp,hl		;b70b
	sbc a,b			;b70c
lb70dh:
	sub a			;b70d
	ld hl,04341h		;b70e
sub_b711h:
	ld hl,04341h		;b711
	ld sp,hl		;b714
	sbc a,b			;b715
	sub a			;b716
	ld b,c			;b717
	ld b,e			;b718
	ld hl,sub_413fh+2	;b719
	ld (hl),c		;b71c
	or c			;b71d
	ex de,hl		;b71e
	inc b			;b71f
	ld hl,la9f9h		;b720
	sub a			;b723
	ld b,c			;b724
	ld b,c			;b725
	out (021h),a		;b726
	call nc,sub_71b1h	;b728
	ld sp,hl		;b72b
	or e			;b72c
	sub a			;b72d
	ld hl,lf941h		;b72e
	ret nz			;b731
	sub a			;b732
	ld hl,sub_413fh+2	;b733
sub_b736h:
	or c			;b736
sub_b737h:
	ld sp,hl		;b737
	xor c			;b738
	sub a			;b739
	ld (hl),c		;b73a
	or c			;b73b
	out (021h),a		;b73c
	call nc,sub_41b1h	;b73e
	ld sp,hl		;b741
	or e			;b742
	sub a			;b743
	ld b,c			;b744
	ld hl,0c0f9h		;b745
	sub a			;b748
	ld bc,l4121h		;b749
	ld h,c			;b74c
	jp (hl)			;b74d
	inc bc			;b74e
	call nc,l01edh		;b74f
	inc sp			;b752
	ret m			;b753
	nop			;b754
	ld hl,ld321h		;b755
	ld hl,l21d4h		;b758
	ld bc,l211fh+2		;b75b
	ld bc,02101h		;b75e
	inc hl			;b761
	ld bc,02321h		;b762
	ld bc,ld301h		;b765
	ld bc,l01d2h+2		;b768
	ld bc,l0101h		;b76b
	ld bc,l4301h		;b76e
	ld b,c			;b771
	ld (hl),c		;b772
	ld (hl),c		;b773
	ld (hl),c		;b774
	sub c			;b775
	ld sp,hl		;b776
	sbc a,b			;b777
	sub a			;b778
	ld sp,hl		;b779
	and e			;b77a
	sub a			;b77b
sub_b77ch:
	ld b,e			;b77c
	ld sp,hl		;b77d
	sbc a,b			;b77e
sub_b77fh:
	sub a			;b77f
	ld sp,hl		;b780
	and e			;b781
	sub a			;b782
	ld b,c			;b783
	or c			;b784
	ld sp,hl		;b785
	sbc a,b			;b786
	sub a			;b787
	ld sp,hl		;b788
	and e			;b789
	sub a			;b78a
	ld b,e			;b78b
	ld sp,hl		;b78c
	sbc a,b			;b78d
	sub a			;b78e
	ld hl,sub_2141h+2	;b78f
	ld b,c			;b792
	ld bc,lfd73h		;b793
	rst 38h			;b796
	sub (hl)		;b797
	ld b,c			;b798
	ld b,c			;b799
	out (041h),a		;b79a
	call nc,sub_2141h	;b79c
lb79fh:
	ld b,c			;b79f
	ld b,c			;b7a0
	ld hl,l21f9h+1		;b7a1
	ld b,c			;b7a4
	ld b,e			;b7a5
	ld hl,lfa41h		;b7a6
	ld d,c			;b7a9
	ld d,c			;b7aa
	ld d,c			;b7ab
	out (041h),a		;b7ac
	ld bc,ld441h		;b7ae
	ld b,c			;b7b1
	jp m,l211fh+2		;b7b2
	ld hl,l2161h		;b7b5
	sub c			;b7b8
	ld b,c			;b7b9
	ld b,c			;b7ba
	out (041h),a		;b7bb
	call nc,lfa41h		;b7bd
	ld b,c			;b7c0
	ld b,c			;b7c1
	ld b,e			;b7c2
	out (041h),a		;b7c3
	call nc,lfa41h		;b7c5
	rst 28h			;b7c8
	ld bc,l01fch+2		;b7c9
	jp (hl)			;b7cc
	ld b,0d2h		;b7cd
	defb 0edh ;next byte illegal after ed	;b7cf
	ld (bc),a		;b7d0
	ld (hl),c		;b7d1
	ld sp,hl		;b7d2
	ld hl,(led98h)		;b7d3
	ld (bc),a		;b7d6
	ld (hl),a		;b7d7
	ld (hl),c		;b7d8
	sub c			;b7d9
	or c			;b7da
	ld sp,hl		;b7db
	ld hl,(led98h)		;b7dc
	inc bc			;b7df
	inc sp			;b7e0
	pop de			;b7e1
	ld b,c			;b7e2
	ld hl,0eb11h		;b7e3
	ld (bc),a		;b7e6
	rra			;b7e7
	jp pe,ld209h		;b7e8
	defb 0edh ;next byte illegal after ed	;b7eb
	ld (bc),a		;b7ec
	ld b,d			;b7ed
	ret m			;b7ee
	dec d			;b7ef
	ld sp,hl		;b7f0
	call nc,06298h		;b7f1
	jp 0c173h		;b7f4
	ld h,l			;b7f7
	ld sp,hl		;b7f8
	call nc,06298h		;b7f9
	pop de			;b7fc
	ld b,c			;b7fd
	ld hl,0d211h		;b7fe
	or l			;b801
	jp pe,lf80ah		;b802
	add hl,hl		;b805
	jp nc,ld1b0h		;b806
	djnz $+34		;b809
	ld b,b			;b80b
	jp pe,ld10bh		;b80c
	defb 0edh ;next byte illegal after ed	;b80f
	ld (bc),a		;b810
	ld (hl),d		;b811
	ret m			;b812
	inc de			;b813
	ld sp,hl		;b814
	dec b			;b815
	sbc a,c			;b816
	defb 0edh ;next byte illegal after ed	;b817
	ld bc,lea52h		;b818
	ld a,(bc)		;b81b
	ld sp,hl		;b81c
	rst 18h			;b81d
	sbc a,b			;b81e
	ld b,b			;b81f
	ld h,c			;b820
	or b			;b821
	or b			;b822
	or b			;b823
	or c			;b824
	or b			;b825
	or c			;b826
	defb 0fdh,0c8h,097h ;illegal sequence	;b827
	jp pe,lf80ch		;b82a
	dec d			;b82d
	jp 0c173h		;b82e
	sub h			;b831
	ret nz			;b832
	ld (hl),h		;b833
	ret nz			;b834
	sub e			;b835
	jp pe,lf80ah		;b836
	cpl			;b839
sub_b83ah:
	jp m,l01fch+2		;b83a
	jp (hl)			;b83d
	ld b,0c2h		;b83e
	ld sp,hl		;b840
	xor c			;b841
	sbc a,b			;b842
	ld hl,lf911h		;b843
	xor c			;b846
sub_b847h:
	sbc a,b			;b847
	jr nz,sub_b83ah		;b848
	jp nc,002edh		;b84a
	ld (l15f8h),hl		;b84d
	ld sp,hl		;b850
	jp nc,lea98h		;b851
	ld a,(bc)		;b854
sub_b855h:
	defb 0edh ;next byte illegal after ed	;b855
	ld (bc),a		;b856
	ld d,d			;b857
	ret m			;b858
	cpl			;b859
	pop af			;b85a
	inc sp			;b85b
	di			;b85c
	ex af,af'		;b85d
	cp a			;b85e
	jp p,l05eah		;b85f
	defb 0edh ;next byte illegal after ed	;b862
	ld (bc),a		;b863
	ld (hl),a		;b864
	ret m			;b865
	dec d			;b866
	ld sp,hl		;b867
	jp nc,lea98h		;b868
	dec bc			;b86b
	defb 0edh ;next byte illegal after ed	;b86c
	inc bc			;b86d
	ld d,d			;b86e
	ret m			;b86f
lb870h:
	cpl			;b870
	pop af			;b871
	inc sp			;b872
	di			;b873
	ex af,af'		;b874
	cp a			;b875
	ret p			;b876
	jp p,l01edh+2		;b877
	jp pe,0d105h		;b87a
	defb 0edh ;next byte illegal after ed	;b87d
	ld (bc),a		;b87e
sub_b87fh:
	ld (l13f6h+2),hl	;b87f
	ld h,d			;b882
	ld sp,hl		;b883
	dec b			;b884
	sbc a,c			;b885
	rst 28h			;b886
	ld bc,002edh		;b887
	ld (ldff9h),hl		;b88a
	sbc a,b			;b88d
	jp pe,lee0ah		;b88e
	jp (hl)			;b891
sub_b892h:
	ld (bc),a		;b892
	ld b,b			;b893
	ld d,b			;b894
	ld h,b			;b895
	ld (hl),b		;b896
	add a,b			;b897
	sub b			;b898
	and b			;b899
	or b			;b89a
	jp nc,le900h		;b89b
	ld b,0edh		;b89e
	ld bc,l4135h		;b8a0
	ld b,b			;b8a3
	ld b,c			;b8a4
	ret p			;b8a5
	defb 0fdh,03bh,098h ;illegal sequence	;b8a6
	jp pe,ld208h		;b8a9
	defb 0edh ;next byte illegal after ed	;b8ac
	ld (bc),a		;b8ad
	ld (l15f8h),hl		;b8ae
	jp 0c173h		;b8b1
sub_b8b4h:
	sub l			;b8b4
	ld (hl),l		;b8b5
	sub e			;b8b6
	jp pe,lf805h		;b8b7
	cpl			;b8ba
	ld (hl),c		;b8bb
	sub c			;b8bc
	or c			;b8bd
	jp pe,lf808h		;b8be
	dec d			;b8c1
	jp 0c173h		;b8c2
	sub l			;b8c5
	ld (hl),l		;b8c6
	sub e			;b8c7
	jp pe,led05h		;b8c8
	inc bc			;b8cb
	inc sp			;b8cc
	ret m			;b8cd
	cpl			;b8ce
	pop de			;b8cf
	ld b,c			;b8d0
	jp m,002d1h		;b8d1
	pop de			;b8d4
	nop			;b8d5
	ld bc,l92d2h		;b8d6
	or b			;b8d9
	or c			;b8da
	ld (hl),d		;b8db
	sub b			;b8dc
	sub c			;b8dd
	jp m,l7170h		;b8de
	ld b,c			;b8e1
	ld b,b			;b8e2
	ld b,c			;b8e3
	sub b			;b8e4
	sub c			;b8e5
	ld h,c			;b8e6
	ld h,b			;b8e7
	ld h,c			;b8e8
	or b			;b8e9
	or c			;b8ea
	ld (hl),c		;b8eb
	ld (hl),b		;b8ec
	sub c			;b8ed
	pop de			;b8ee
	jr nz,$+35		;b8ef
	ld de,0b0d2h		;b8f1
sub_b8f4h:
	sub b			;b8f4
lb8f5h:
	ld (hl),b		;b8f5
	or b			;b8f6
	or c			;b8f7
	ld (hl),c		;b8f8
	ld (hl),b		;b8f9
	ld b,c			;b8fa
	sub b			;b8fb
	sub c			;b8fc
	ld h,b			;b8fd
	ld h,c			;b8fe
	sub c			;b8ff
	ld (hl),b		;b900
lb901h:
	ld h,b			;b901
sub_b902h:
	ld b,b			;b902
	ld h,c			;b903
lb904h:
	jp m,l4365h		;b904
	ld hl,02101h		;b907
	ld b,l			;b90a
	ld (hl),e		;b90b
	ret p			;b90c
	ret nc			;b90d
	ld bc,ld243h		;b90e
	jp m,l01fch+2		;b911
	jp (hl)			;b914
	ld b,0eah		;b915
	dec bc			;b917
	jp nc,002edh		;b918
	ld (hl),a		;b91b
	ld sp,hl		;b91c
	xor (hl)		;b91d
	sbc a,c			;b91e
	or c			;b91f
	pop de			;b920
	ld de,lea21h		;b921
	dec bc			;b924
	jp nc,laef9h		;b925
	sbc a,c			;b928
	ld (hl),c		;b929
	ld h,c			;b92a
	ld b,c			;b92b
	ex de,hl		;b92c
	ld (bc),a		;b92d
	inc e			;b92e
	jp (hl)			;b92f
	ld b,0eah		;b930
	ex af,af'		;b932
	defb 0edh ;next byte illegal after ed	;b933
	ld (bc),a		;b934
	ld (l15f8h),a		;b935
	ld sp,hl		;b938
	cp a			;b939
	sbc a,c			;b93a
	jp 0c1b3h		;b93b
	sub l			;b93e
	ld sp,hl		;b93f
	cp a			;b940
	sbc a,c			;b941
	ld (hl),c		;b942
	ld h,c			;b943
	ld (hl),c		;b944
	ld b,l			;b945
	jp pe,lf80ah		;b946
	add hl,hl		;b949
	jr nz,lb98ch		;b94a
	ld h,b			;b94c
	ld (hl),b		;b94d
	jp (hl)			;b94e
	ld b,0eah		;b94f
	inc c			;b951
	jp nc,002edh		;b952
sub_b955h:
	ld h,e			;b955
	ret m			;b956
	add hl,hl		;b957
	sub l			;b958
	ld (hl),e		;b959
lb95ah:
	ld h,c			;b95a
	ld b,c			;b95b
	ld h,c			;b95c
	ld (hl),l		;b95d
	pop de			;b95e
	inc bc			;b95f
	ld b,c			;b960
	ld (hl),e		;b961
lb962h:
	defb 0edh ;next byte illegal after ed	;b962
	ld (bc),a		;b963
	ld d,d			;b964
	jp pe,lf808h		;b965
	inc de			;b968
	jp nc,sub_413fh+1	;b969
	out (0b1h),a		;b96c
	or b			;b96e
	or c			;b96f
	jp nc,06160h		;b970
	ld hl,l211fh+1		;b973
sub_b976h:
	ld (hl),b		;b976
	ld (hl),c		;b977
	ld b,c			;b978
	ld b,b			;b979
	ld h,c			;b97a
	or b			;b97b
	or c			;b97c
	sub c			;b97d
	ld (hl),b		;b97e
	ld h,b			;b97f
	ld b,b			;b980
	ld (hl),b		;b981
	ld (hl),c		;b982
	ld b,c			;b983
	ld b,b			;b984
	jp nc,l60b1h		;b985
	ld h,c			;b988
	jr nz,$+35		;b989
	ld h,c			;b98b
lb98ch:
	ld b,b			;b98c
	jr nz,lb962h		;b98d
	or b			;b98f
	jp nc,ld321h		;b990
	or b			;b993
sub_b994h:
	jp nc,lee21h		;b994
	jp pe,le909h		;b997
	inc bc			;b99a
	out (0b0h),a		;b99b
	jp nc,l2000h		;b99d
sub_b9a0h:
	jr nc,lb9e2h		;b9a0
	ld d,b			;b9a2
	jp (hl)			;b9a3
	ld b,0edh		;b9a4
	ld bc,07135h		;b9a6
	ld (hl),b		;b9a9
	ld (hl),c		;b9aa
	defb 0fdh,012h,099h ;illegal sequence	;b9ab
	ret m			;b9ae
	dec d			;b9af
	jp 0c1b3h		;b9b0
	pop de			;b9b3
	dec d			;b9b4
	jp nc,ld1b5h		;b9b5
	inc de			;b9b8
	jp pe,lf80ah		;b9b9
	cpl			;b9bc
	jp nc,0d1fah		;b9bd
	ld b,b			;b9c0
lb9c1h:
	ld b,c			;b9c1
	ld (bc),a		;b9c2
	jr nz,lb9e6h		;b9c3
	jp nc,ld1b2h		;b9c5
	djnz lb9dbh		;b9c8
	jp nc,lfa92h		;b9ca
	cp 001h			;b9cd
	jp (hl)			;b9cf
	inc bc			;b9d0
	jp pe,ld40ah+2		;b9d1
	defb 0edh ;next byte illegal after ed	;b9d4
	ld b,074h		;b9d5
	ret m			;b9d7
	jr nz,lba1ah		;b9d8
	ld (hl),b		;b9da
lb9dbh:
	jp (hl)			;b9db
	ld b,04eh		;b9dc
	rst 8			;b9de
	jp (hl)			;b9df
	inc bc			;b9e0
lb9e1h:
	ld b,b			;b9e1
lb9e2h:
	ld (hl),b		;b9e2
	jp (hl)			;b9e3
	ld b,04eh		;b9e4
lb9e6h:
	jp pe,led0dh		;b9e6
	ld (bc),a		;b9e9
	ld (hl),h		;b9ea
	ret m			;b9eb
	jr nz,lb9c1h		;b9ec
sub_b9eeh:
	ld b,d			;b9ee
	ld b,b			;b9ef
	ld hl,lc543h		;b9f0
	ex de,hl		;b9f3
	ld (bc),a		;b9f4
	jr z,lb9e1h		;b9f5
	dec bc			;b9f7
	pop de			;b9f8
	defb 0edh ;next byte illegal after ed	;b9f9
	ld b,074h		;b9fa
	ret m			;b9fc
	inc de			;b9fd
	ld sp,hl		;b9fe
	ld c,l			;b9ff
	sbc a,d			;ba00
	ld a,a			;ba01
	ld sp,hl		;ba02
	ld c,l			;ba03
	sbc a,d			;ba04
	ld c,a			;ba05
	jp (hl)			;ba06
	ex af,af'		;ba07
	jp pe,ld40ah		;ba08
	defb 0edh ;next byte illegal after ed	;ba0b
sub_ba0ch:
	ld b,074h		;ba0c
	ret m			;ba0e
	jr nz,$+66		;ba0f
	ld hl,(00a20h)		;ba11
	jp (hl)			;ba14
	ld b,0eah		;ba15
	inc c			;ba17
	defb 0edh ;next byte illegal after ed	;ba18
	ld (bc),a		;ba19
lba1ah:
	ld b,h			;ba1a
	jp nc,l02f8h		;ba1b
	rst 28h			;ba1e
	ld bc,l0aeah		;ba1f
	ld b,b			;ba22
	jr nz,lba6ah		;ba23
	ld (hl),b		;ba25
	ld b,b			;ba26
	ld (hl),l		;ba27
	or b			;ba28
lba29h:
	ld (hl),b		;ba29
	or l			;ba2a
	ld (hl),b		;ba2b
	ld b,b			;ba2c
	ld (hl),l		;ba2d
	or b			;ba2e
	ld (hl),b		;ba2f
	cp l			;ba30
lba31h:
	pop de			;ba31
	xor 021h		;ba32
	pop af			;ba34
	ld b,d			;ba35
	ld hl,l43f1h		;ba36
	ld hl,034f1h		;ba39
	ld hl,ledf2h		;ba3c
	ld bc,lea35h		;ba3f
	ex af,af'		;ba42
	ld b,b			;ba43
	ld b,b			;ba44
	ld b,b			;ba45
	ld b,c			;ba46
	ld b,b			;ba47
	ld b,c			;ba48
	ret p			;ba49
	defb 0fdh,0cdh,099h ;illegal sequence	;ba4a
	ld b,b			;ba4d
	nop			;ba4e
	jp nc,05090h		;ba4f
	sub b			;ba52
	pop de			;ba53
	nop			;ba54
	jr nz,lba29h		;ba55
	or b			;ba57
	ld (hl),b		;ba58
	ld b,b			;ba59
	ld (hl),b		;ba5a
	or b			;ba5b
	pop de			;ba5c
	djnz lba31h		;ba5d
	sub b			;ba5f
	ld h,b			;ba60
	jr nz,lbac3h		;ba61
	sub b			;ba63
	jp m,l04feh		;ba64
	jp (hl)			;ba67
	inc b			;ba68
	add a,c			;ba69
lba6ah:
	ld bc,sub_0141h		;ba6a
	add a,c			;ba6d
	ld bc,sub_0141h		;ba6e
	ld bc,l4181h		;ba71
	ld bc,l017fh+2		;ba74
	ld b,c			;ba77
	ld de,l08eah+1		;ba78
	ld (de),a		;ba7b
	add a,c			;ba7c
	ld bc,sub_0141h		;ba7d
	add a,c			;ba80
	ld bc,l113fh+2		;ba81
	ex de,hl		;ba84
	inc bc			;ba85
	ld a,(bc)		;ba86
	add a,c			;ba87
	ld bc,sub_0141h		;ba88
	add a,c			;ba8b
	add a,c			;ba8c
	ld b,c			;ba8d
	ld b,c			;ba8e
	call m,sub_7c02h	;ba8f
	sbc a,d			;ba92
	add a,c			;ba93
	ld bc,sub_0141h		;ba94
	ex de,hl		;ba97
	inc bc			;ba98
	ld b,001h		;ba99
	add a,c			;ba9b
	ld b,c			;ba9c
	ld de,l04fch		;ba9d
	sub e			;baa0
	sbc a,d			;baa1
	defb 0fdh,069h ;ld iyl,c	;baa2
	sbc a,d			;baa4
	cp 001h			;baa5
	jp (hl)			;baa7
	inc b			;baa8
	jp pe,ld40dh		;baa9
	defb 0edh ;next byte illegal after ed	;baac
	ld (bc),a		;baad
sub_baaeh:
	ld (hl),e		;baae
	ld bc,l10ebh		;baaf
	inc bc			;bab2
	ld sp,l10ebh		;bab3
	inc bc			;bab6
sub_bab7h:
	ld d,c			;bab7
	ex de,hl		;bab8
	djnz $+5		;bab9
	ld (hl),c		;babb
	ex de,hl		;babc
	djnz lbac2h		;babd
	call m,sub_af02h	;babf
lbac2h:
	sbc a,d			;bac2
lbac3h:
	cp 001h			;bac3
	jp (hl)			;bac5
	inc b			;bac6
	jp pe,ld40dh		;bac7
	defb 0edh ;next byte illegal after ed	;baca
	ld (bc),a		;bacb
	ld b,l			;bacc
	ret m			;bacd
	ld bc,leb71h		;bace
	add hl,de		;bad1
	inc bc			;bad2
	ld d,c			;bad3
	ex de,hl		;bad4
	rlca			;bad5
	inc bc			;bad6
	call m,lc302h		;bad7
	sbc a,d			;bada
	defb 0edh ;next byte illegal after ed	;badb
sub_badch:
	ld (bc),a		;badc
	ld (hl),e		;badd
	ld sp,l10ebh		;bade
	inc bc			;bae1
	ld hl,l10ebh		;bae2
	inc bc			;bae5
	ld sp,l08eah+1		;bae6
	inc bc			;bae9
	ld d,c			;baea
	ex de,hl		;baeb
	ex af,af'		;baec
	inc bc			;baed
	ld (hl),c		;baee
	ex de,hl		;baef
	dec c			;baf0
	inc bc			;baf1
	ld d,c			;baf2
	ld d,c			;baf3
	ld d,c			;baf4
	defb 0fdh,0a5h ;and iyl	;baf5
	sbc a,d			;baf7
	cp 001h			;baf8
	jp (hl)			;bafa
	inc b			;bafb
	jp pe,led0ch		;bafc
	ld (bc),a		;baff
	ld (hl),a		;bb00
lbb01h:
	ret m			;bb01
	dec d			;bb02
	jp nc,lf903h		;bb03
sub_bb06h:
	sbc a,d			;bb06
	sbc a,e			;bb07
	or c			;bb08
	pop de			;bb09
	ld hl,002ebh		;bb0a
	dec d			;bb0d
	jp (hl)			;bb0e
	inc b			;bb0f
	jp pe,ld20ch		;bb10
	defb 0edh ;next byte illegal after ed	;bb13
	ld (bc),a		;bb14
	ld h,(hl)		;bb15
	ld sp,hl		;bb16
	ei			;bb17
	sbc a,e			;bb18
	jp pe,led09h+1		;bb19
	inc bc			;bb1c
	inc bc			;bb1d
	ret m			;bb1e
	dec d			;bb1f
	dec b			;bb20
	out (0a5h),a		;bb21
	ld (hl),e		;bb23
	jp pe,ld20ch		;bb24
	defb 0edh ;next byte illegal after ed	;bb27
	ld (bc),a		;bb28
	ld h,(hl)		;bb29
	ld sp,hl		;bb2a
	ei			;bb2b
	sbc a,e			;bb2c
	jp pe,led09h+2		;bb2d
	ld (bc),a		;bb30
	ld h,(hl)		;bb31
	pop de			;bb32
	ret m			;bb33
	rlca			;bb34
	dec b			;bb35
	jp nc,05395h		;bb36
sub_bb39h:
	jp pe,lf90bh		;bb39
	ei			;bb3c
	sbc a,e			;bb3d
	jp pe,led09h+2		;bb3e
	inc bc			;bb41
	inc bc			;bb42
	ret m			;bb43
	dec d			;bb44
	jp nc,ld305h		;bb45
	and l			;bb48
	ld (hl),e		;bb49
lbb4ah:
	jp pe,ld20ch		;bb4a
	defb 0edh ;next byte illegal after ed	;bb4d
	ld (bc),a		;bb4e
	ld h,(hl)		;bb4f
	ld sp,hl		;bb50
	ei			;bb51
	sbc a,e			;bb52
	jp pe,led0ch		;bb53
sub_bb56h:
	ld (bc),a		;bb56
	ld h,(hl)		;bb57
	jp nc,l07f8h		;bb58
	ld (hl),c		;bb5b
	ld bc,l9151h		;bb5c
	pop de			;bb5f
	ld bc,l91d2h		;bb60
	ld d,c			;bb63
	ld bc,004e9h		;bb64
	jp pe,ld20bh		;bb67
	defb 0edh ;next byte illegal after ed	;bb6a
	ld (bc),a		;bb6b
	jr c,$-6		;bb6c
	rlca			;bb6e
	scf			;bb6f
	pop de			;bb70
	ret m			;bb71
lbb72h:
	dec b			;bb72
	jp pe,lf90bh		;bb73
	xor 09bh		;bb76
	rst 28h			;bb78
	ld bc,l0af8h		;bb79
	jp pe,ld208h		;bb7c
	and c			;bb7f
	ld (hl),c		;bb80
	ld sp,la373h		;bb81
	pop de			;bb84
	ld bc,l91d2h		;bb85
	ld d,c			;bb88
	ld bc,05353h		;bb89
	sub c			;bb8c
	defb 0edh ;next byte illegal after ed	;bb8d
	dec b			;bb8e
	ld h,h			;bb8f
	jp (hl)			;bb90
	ex af,af'		;bb91
	pop de			;bb92
	rlca			;bb93
	jp nc,lf0b7h		;bb94
	defb 0fdh,0f8h,09ah ;illegal sequence	;bb97
	ld (hl),c		;bb9a
	ld d,c			;bb9b
	ld sp,l2170h+1		;bb9c
	ld (hl),c		;bb9f
	ld bc,l2170h+1		;bba0
	ld (hl),c		;bba3
	ld sp,05171h		;bba4
	ld (hl),c		;bba7
	inc sp			;bba8
	and c			;bba9
	sub c			;bbaa
	ld (hl),c		;bbab
	and c			;bbac
	ld d,c			;bbad
	and c			;bbae
	ld sp,l51a1h		;bbaf
	and c			;bbb2
	ld (hl),c		;bbb3
	and c			;bbb4
	sub c			;bbb5
	and c			;bbb6
	ld d,e			;bbb7
	pop de			;bbb8
lbbb9h:
	ld bc,la1d2h		;bbb9
	sub c			;bbbc
	pop de			;bbbd
	ld bc,l71d1h+1		;bbbe
	pop de			;bbc1
	ld bc,051d2h		;bbc2
	pop de			;bbc5
	ld bc,l71d1h+1		;bbc6
	pop de			;bbc9
	ld bc,l91d2h		;bbca
	pop de			;bbcd
	ld bc,la1d2h		;bbce
	pop de			;bbd1
	ld bc,l73d2h		;bbd2
	pop de			;bbd5
	ld hl,ld201h		;bbd6
	or c			;bbd9
	pop de			;bbda
	ld hl,l91d2h		;bbdb
	pop de			;bbde
	ld hl,l71d1h+1		;bbdf
	pop de			;bbe2
	ld hl,l91d2h		;bbe3
	pop de			;bbe6
	ld hl,l91d2h		;bbe7
	pop de			;bbea
	ld hl,lfad2h		;bbeb
	rlca			;bbee
	scf			;bbef
	ld (hl),a		;bbf0
	sub a			;bbf1
	ld (hl),a		;bbf2
	ld h,e			;bbf3
	sub c			;bbf4
	ld (hl),c		;bbf5
	ld hl,l2161h		;bbf6
	ld (hl),c		;bbf9
	jp m,l07f8h		;bbfa
	ld (hl),c		;bbfd
	and c			;bbfe
	sub c			;bbff
	and c			;bc00
	pop de			;bc01
	ld bc,la1d2h		;bc02
	sub c			;bc05
	and c			;bc06
	jp m,l01fch+2		;bc07
	rst 28h			;bc0a
	ld bc,004e9h		;bc0b
	jp pe,ld206h		;bc0e
	defb 0edh ;next byte illegal after ed	;bc11
	ld (bc),a		;bc12
	ld (hl),a		;bc13
	ret m			;bc14
	dec d			;bc15
	ld b,0f9h		;bc16
	sbc a,d			;bc18
	sbc a,e			;bc19
	or b			;bc1a
	ex de,hl		;bc1b
	ld (bc),a		;bc1c
	dec d			;bc1d
	rst 28h			;bc1e
	ld bc,004e9h		;bc1f
	jp pe,ld207h		;bc22
	defb 0edh ;next byte illegal after ed	;bc25
	ld b,074h		;bc26
	ret m			;bc28
	add hl,bc		;bc29
	ld (hl),l		;bc2a
	ld d,l			;bc2b
	defb 0edh ;next byte illegal after ed	;bc2c
	dec b			;bc2d
	ld (lc32dh+2),hl	;bc2e
	ld (hl),l		;bc31
	ld d,l			;bc32
	inc hl			;bc33
	jp pe,led05h		;bc34
	ld (bc),a		;bc37
	ld (l07f8h),hl		;bc38
	pop de			;bc3b
	ex af,af'		;bc3c
	jp nc,l5095h		;bc3d
	jp pe,led06h		;bc40
	ld b,074h		;bc43
	ret m			;bc45
	add hl,bc		;bc46
	jp nc,l5575h		;bc47
	defb 0edh ;next byte illegal after ed	;bc4a
	dec b			;bc4b
	ld (lc32dh+2),hl	;bc4c
	ld (hl),l		;bc4f
	ld d,l			;bc50
	inc hl			;bc51
	jp nc,002edh		;bc52
	ld h,(hl)		;bc55
	ret m			;bc56
	rlca			;bc57
	ld (hl),h		;bc58
	ld bc,l9151h		;bc59
	pop de			;bc5c
	ld bc,l91d2h		;bc5d
	ld d,b			;bc60
	ret p			;bc61
	rst 28h			;bc62
lbc63h:
	ld bc,004e9h		;bc63
	jp pe,ld208h		;bc66
	defb 0edh ;next byte illegal after ed	;bc69
	ld (bc),a		;bc6a
	ld (l07f8h),hl		;bc6b
	ld a,(leef9h)		;bc6e
	sbc a,e			;bc71
	ret m			;bc72
	ld a,(bc)		;bc73
	jp pe,la107h		;bc74
	ld (hl),c		;bc77
	ld sp,la373h		;bc78
	sub c			;bc7b
	ld d,c			;bc7c
	ld bc,05301h		;bc7d
	ld d,d			;bc80
	defb 0edh ;next byte illegal after ed	;bc81
	nop			;bc82
sub_bc83h:
	ld h,h			;bc83
	jp (hl)			;bc84
	ex af,af'		;bc85
	ld a,e			;bc86
	out (0edh),a		;bc87
	dec b			;bc89
	ld h,(hl)		;bc8a
	ld (hl),b		;bc8b
	ld d,c			;bc8c
	ld d,b			;bc8d
	defb 0fdh,008h,09ch ;illegal sequence	;bc8e
	cp 001h			;bc91
	jp pe,lf90bh		;bc93
	ld sp,hl		;bc96
	sbc a,h			;bc97
	jp (hl)			;bc98
	inc b			;bc99
	jp pe,ld209h		;bc9a
	defb 0edh ;next byte illegal after ed	;bc9d
	ld b,074h		;bc9e
	ret m			;bca0
	jr nz,$+7		;bca1
	out (0a5h),a		;bca3
	ld (hl),e		;bca5
	jp nc,ledeeh		;bca6
	sub a			;bca9
	ld b,e			;bcaa
	ret m			;bcab
	inc d			;bcac
	ld (hl),c		;bcad
	sub c			;bcae
	and c			;bcaf
	ld a,c			;bcb0
	jp nc,ledeeh		;bcb1
	ld b,074h		;bcb4
	ret m			;bcb6
sub_bcb7h:
	jr nz,lbcbeh		;bcb7
	out (0a5h),a		;bcb9
	ld (hl),e		;bcbb
	ld d,e			;bcbc
	defb 0edh ;next byte illegal after ed	;bcbd
lbcbeh:
	ld (bc),a		;bcbe
	ld (hl),h		;bcbf
lbcc0h:
	ld d,c			;bcc0
	ld bc,l5121h		;bcc1
	ld bc,051d4h		;bcc4
	ei			;bcc7
	ld (bc),a		;bcc8
	sbc a,b			;bcc9
	sbc a,h			;bcca
	jp (hl)			;bccb
	inc b			;bccc
	defb 0edh ;next byte illegal after ed	;bccd
	ld (bc),a		;bcce
	ld d,d			;bccf
	jp pe,ld20ah		;bcd0
	ret m			;bcd3
	inc de			;bcd4
	ld (hl),c		;bcd5
	sub c			;bcd6
	and c			;bcd7
	pop de			;bcd8
	add hl,sp		;bcd9
	ld (hl),l		;bcda
	and a			;bcdb
	jp pe,ld208h		;bcdc
sub_bcdfh:
	or b			;bcdf
	and b			;bce0
	jp pe,lf90bh		;bce1
	and d			;bce4
	sbc a,l			;bce5
	jp pe,lf909h		;bce6
	jp ld19dh		;bce9
	or c			;bcec
	ld (hl),c		;bced
	ld hl,ld201h		;bcee
	or c			;bcf1
	ld (hl),c		;bcf2
	ld hl,lb1d3h		;bcf3
sub_bcf6h:
	defb 0fdh,091h,09ch ;illegal sequence	;bcf6
	jp (hl)			;bcf9
	inc b			;bcfa
	call nc,l06edh		;bcfb
	ld (hl),h		;bcfe
	ret m			;bcff
	jr nz,$+15		;bd00
	nop			;bd02
	jr nc,lbd7ch		;bd03
	rlca			;bd05
	dec a			;bd06
	jr nc,$+114		;bd07
	and a			;bd09
	scf			;bd0a
	ld e,l			;bd0b
	ld d,b			;bd0c
	sub b			;bd0d
	out (007h),a		;bd0e
	ld d,a			;bd10
	ld a,a			;bd11
	cpl			;bd12
	call nc,l000dh		;bd13
	jr nc,lbd8fh		;bd16
	rlca			;bd18
	dec a			;bd19
	jr nc,lbd8ch		;bd1a
	and a			;bd1c
	scf			;bd1d
	ld e,l			;bd1e
	ld d,b			;bd1f
	sub b			;bd20
	out (007h),a		;bd21
	ld d,a			;bd23
	jp (hl)			;bd24
	ex af,af'		;bd25
	ld a,a			;bd26
	jp m,l01fch+2		;bd27
	rst 28h			;bd2a
	ld bc,l04eah		;bd2b
	ld sp,hl		;bd2e
	ld sp,hl		;bd2f
lbd30h:
	sbc a,h			;bd30
	ret p			;bd31
	rst 28h			;bd32
	ld bc,004e9h		;bd33
	jp pe,ld307h		;bd36
	defb 0edh ;next byte illegal after ed	;bd39
	ld b,074h		;bd3a
	ret m			;bd3c
	jr nz,lbd30h		;bd3d
	and e			;bd3f
	jp nc,ld305h		;bd40
	and l			;bd43
	ld (hl),e		;bd44
	jp p,l08eah		;bd45
	jp nc,ledeeh		;bd48
	add a,d			;bd4b
	ld (l14f8h),a		;bd4c
	ld (hl),c		;bd4f
	sub c			;bd50
	and c			;bd51
	ld a,c			;bd52
	jp pe,ld307h		;bd53
	xor 0edh		;bd56
	ld b,074h		;bd58
	ret m			;bd5a
lbd5bh:
	jr nz,$-13		;bd5b
	and e			;bd5d
	jp nc,ld305h		;bd5e
lbd61h:
	and l			;bd61
	ld (hl),e		;bd62
	ld d,e			;bd63
	defb 0edh ;next byte illegal after ed	;bd64
lbd65h:
	ld (bc),a		;bd65
	ld (hl),h		;bd66
	jp p,00151h		;bd67
	ld hl,00151h		;bd6a
sub_bd6dh:
	call nc,sub_fb51h	;bd6d
	ld (bc),a		;bd70
	ld (lef9dh),a		;bd71
	ld bc,004e9h		;bd74
	jp pe,0d204h		;bd77
	defb 0edh ;next byte illegal after ed	;bd7a
	inc bc			;bd7b
lbd7ch:
	ld (l13f6h+2),hl	;bd7c
	ld (hl),b		;bd7f
	ld (hl),c		;bd80
	sub c			;bd81
sub_bd82h:
	and c			;bd82
	pop de			;bd83
	add hl,sp		;bd84
	ld (hl),a		;bd85
	and l			;bd86
	jp pe,0d204h		;bd87
	or b			;bd8a
	or b			;bd8b
lbd8ch:
	jp pe,lf904h		;bd8c
lbd8fh:
	and d			;bd8f
	sbc a,l			;bd90
	ld sp,hl		;bd91
	jp 0b19dh		;bd92
	ld (hl),c		;bd95
	ld hl,ld201h		;bd96
	or c			;bd99
	ld (hl),c		;bd9a
	ld hl,lb0d3h		;bd9b
	ret p			;bd9e
	defb 0fdh,028h,09dh ;illegal sequence	;bd9f
	sub c			;bda2
	ld (hl),c		;bda3
	ld h,c			;bda4
	sub c			;bda5
	sub c			;bda6
	pop de			;bda7
	ld bc,l9127h		;bda8
	ld (hl),c		;bdab
	ld h,c			;bdac
	ld sp,00121h		;bdad
	defb 0edh ;next byte illegal after ed	;bdb0
	ld (bc),a		;bdb1
	ld d,d			;bdb2
	jp nc,l71a1h		;bdb3
	ld sp,la373h		;bdb6
	pop de			;bdb9
	ld bc,l91d2h		;bdba
	ld d,c			;bdbd
	ld bc,05353h		;bdbe
	sub c			;bdc1
	jp m,001d0h		;bdc2
	pop de			;bdc5
	ld (hl),c		;bdc6
	ld hl,001d0h		;bdc7
	pop de			;bdca
	ld (hl),c		;bdcb
	ld hl,ld071h		;bdcc
	ld bc,sub_fefah		;bdcf
	inc b			;bdd2
lbdd3h:
	jp (hl)			;bdd3
	inc b			;bdd4
	ld bc,01101h		;bdd5
	ld bc,ld5fdh		;bdd8
	sbc a,l			;bddb
	rst 38h			;bddc
	cp 001h			;bddd
	rst 28h			;bddf
	ld bc,l26f8h		;bde0
	jp (hl)			;bde3
	inc b			;bde4
	defb 0edh ;next byte illegal after ed	;bde5
	ld (bc),a		;bde6
	jr nc,lbdd3h		;bde7
	dec c			;bde9
	call nc,lea91h		;bdea
	ld a,(bc)		;bded
	jp nc,leb91h		;bdee
	rra			;bdf1
	ld a,(bc)		;bdf2
	jp pe,ld40ah+1		;bdf3
	ld (hl),c		;bdf6
	out (071h),a		;bdf7
	jp pe,ld40ah+2		;bdf9
	ld d,c			;bdfc
	jp pe,ld20ah		;bdfd
	ld d,c			;be00
	ex de,hl		;be01
	djnz $+12		;be02
	jp pe,ld40dh		;be04
	and c			;be07
	jp pe,ld20ah		;be08
	and c			;be0b
	ex de,hl		;be0c
lbe0dh:
	djnz $+12		;be0d
	jp pe,ld40ah+2		;be0f
	ld d,c			;be12
	jp pe,ld20ah		;be13
	ld d,c			;be16
	ex de,hl		;be17
	djnz lbe24h		;be18
	jp pe,ld40dh		;be1a
	ld hl,l0aeah		;be1d
	jp nc,leb21h		;be20
	inc b			;be23
lbe24h:
	ld a,(bc)		;be24
	jp pe,ld40dh		;be25
	and c			;be28
	jp pe,ld20ah		;be29
	and c			;be2c
	ex de,hl		;be2d
	inc b			;be2e
	ld a,(bc)		;be2f
	call nc,0ea41h		;be30
	ld a,(bc)		;be33
	jp nc,sub_eb41h		;be34
	ex af,af'		;be37
	ex af,af'		;be38
	defb 0edh ;next byte illegal after ed	;be39
	ld bc,lea30h		;be3a
	inc c			;be3d
	call nc,ld390h+1	;be3e
	ld b,c			;be41
	sub c			;be42
	call nc,ld390h+1	;be43
	ld b,c			;be46
	sub c			;be47
	call nc,ld390h+1	;be48
	sub c			;be4b
	call nc,ld351h		;be4c
	ld bc,ld450h+1		;be4f
	ld d,c			;be52
	out (001h),a		;be53
	ld d,c			;be55
	call nc,ld351h		;be56
	ld d,c			;be59
	call nc,0d371h		;be5a
	ld hl,0d471h		;be5d
	ld (hl),c		;be60
	out (021h),a		;be61
	ld (hl),c		;be63
	call nc,0d371h		;be64
	ld (hl),c		;be67
	call nc,sub_b141h	;be68
	out (041h),a		;be6b
	call nc,sub_b141h	;be6d
	out (041h),a		;be70
	call nc,ld341h		;be72
	ld b,c			;be75
	ex de,hl		;be76
	ld (bc),a		;be77
	ccf			;be78
	defb 0fdh,0ddh,09dh ;illegal sequence	;be79
	rst 38h			;be7c
	cp 001h			;be7d
	ret m			;be7f
	dec d			;be80
	jp (hl)			;be81
	inc b			;be82
	jp pe,led09h		;be83
	ld bc,ld350h		;be86
	sub c			;be89
	jp nc,l4101h		;be8a
	sbc a,c			;be8d
	out (0b1h),a		;be8e
	jp nc,l7121h		;be90
	cp c			;be93
	ld bc,l9141h		;be94
	pop de			;be97
	add hl,bc		;be98
	jp nc,06121h		;be99
	sub c			;be9c
sub_be9dh:
	pop de			;be9d
	add hl,hl		;be9e
	jp nc,l9151h		;be9f
	pop de			;bea2
	ld bc,008e9h		;bea3
	ld e,h			;bea6
	jp (hl)			;bea7
	inc b			;bea8
	jp nc,0b171h		;bea9
	pop de			;beac
	ld hl,008e9h		;bead
lbeb0h:
	ld a,h			;beb0
	ret m			;beb1
	ld a,(bc)		;beb2
	defb 0edh ;next byte illegal after ed	;beb3
	inc bc			;beb4
	inc sp			;beb5
	jp (hl)			;beb6
	inc b			;beb7
	ld sp,hl		;beb8
lbeb9h:
	inc l			;beb9
	sbc a,a			;beba
	jp pe,led09h+1		;bebb
	ld bc,ld140h		;bebe
	ld hl,05141h		;bec1
	ld b,e			;bec4
	ld bc,ld221h+2		;bec5
	ld hl,05141h		;bec8
	ld b,e			;becb
	ld bc,ld123h		;becc
	ld hl,05141h		;becf
	ld (hl),e		;bed2
	sub c			;bed3
	ret nc			;bed4
	dec l			;bed5
	nop			;bed6
	pop de			;bed7
	and b			;bed8
	sub b			;bed9
	ld (hl),b		;beda
	ld d,b			;bedb
	ld b,b			;bedc
	ret m			;bedd
	ld a,(bc)		;bede
	defb 0edh ;next byte illegal after ed	;bedf
	inc bc			;bee0
	inc sp			;bee1
	jp (hl)			;bee2
	inc b			;bee3
	jp pe,lf909h		;bee4
	inc l			;bee7
	sbc a,a			;bee8
	jp pe,ld20bh		;bee9
	dec h			;beec
	jr nz,lbf2fh		;beed
	ld d,l			;beef
	ld d,b			;bef0
lbef1h:
	ld (hl),b		;bef1
	sub l			;bef2
	sub b			;bef3
	and b			;bef4
	pop de			;bef5
	ld (bc),a		;bef6
	jp nc,041a2h		;bef7
	sbc a,c			;befa
	sub c			;befb
	or c			;befc
	pop de			;befd
	ld c,a			;befe
	pop bc			;beff
	ret m			;bf00
	ld (bc),a		;bf01
	jp pe,led07h		;bf02
	inc bc			;bf05
	jr nc,$+71		;bf06
	jp nc,0d199h		;bf08
	ld b,l			;bf0b
	jp nc,0d199h		;bf0c
	dec h			;bf0f
sub_bf10h:
	jp nc,0d179h		;bf10
	dec h			;bf13
	jp nc,0eab9h		;bf14
	rlca			;bf17
	defb 0edh ;next byte illegal after ed	;bf18
lbf19h:
	ld (bc),a		;bf19
	ld b,b			;bf1a
	pop de			;bf1b
	sub l			;bf1c
	ld b,l			;bf1d
	sub e			;bf1e
	sub l			;bf1f
	ld b,l			;bf20
	sub e			;bf21
	ld (hl),l		;bf22
	dec h			;bf23
	ld (hl),e		;bf24
	add a,l			;bf25
	ld b,l			;bf26
	add a,e			;bf27
	defb 0fdh,07dh ;ld a,iyl	;bf28
	sbc a,(hl)		;bf2a
	rst 38h			;bf2b
	jp nc,0b191h		;bf2c
lbf2fh:
	pop de			;bf2f
	ld bc,lb3d2h		;bf30
	ld (hl),c		;bf33
	sub e			;bf34
	out (091h),a		;bf35
	or c			;bf37
	jp nc,ld301h		;bf38
	or e			;bf3b
	ld (hl),c		;bf3c
	sub e			;bf3d
	jp nc,0b191h		;bf3e
	pop de			;bf41
	ld bc,lb3d2h		;bf42
	ld (hl),c		;bf45
	pop de			;bf46
	ld b,e			;bf47
	out (091h),a		;bf48
	or c			;bf4a
	jp nc,ld301h		;bf4b
	or e			;bf4e
	ld (hl),c		;bf4f
	jp nc,lfa43h		;bf50
	cp 001h			;bf53
	rst 28h			;bf55
	ld bc,003f8h		;bf56
	jp (hl)			;bf59
	inc b			;bf5a
	jp pe,led09h+1		;bf5b
	ld bc,ld350h		;bf5e
	sub c			;bf61
	jp nc,l4101h		;bf62
	sbc a,c			;bf65
	out (0b1h),a		;bf66
sub_bf68h:
	jp nc,l7121h		;bf68
	cp c			;bf6b
	ld bc,l9141h		;bf6c
	pop de			;bf6f
	add hl,bc		;bf70
	jp nc,06121h		;bf71
	sub c			;bf74
	pop de			;bf75
	add hl,hl		;bf76
	jp nc,l9151h		;bf77
	pop de			;bf7a
	ld bc,008e9h		;bf7b
	ld e,h			;bf7e
	jp (hl)			;bf7f
	inc b			;bf80
	jp nc,0b171h		;bf81
	pop de			;bf84
	ld hl,008e9h		;bf85
	ld a,h			;bf88
	ret m			;bf89
	ld a,(bc)		;bf8a
	jp (hl)			;bf8b
	inc b			;bf8c
	jp pe,ld309h		;bf8d
	defb 0edh ;next byte illegal after ed	;bf90
	dec b			;bf91
	add a,b			;bf92
	sub l			;bf93
	cp c			;bf94
	jp nc,ld305h		;bf95
	cp c			;bf98
	ex de,hl		;bf99
	ld (bc),a		;bf9a
	inc c			;bf9b
	jp pe,ld308h		;bf9c
	and l			;bf9f
	jp nc,l2509h		;bfa0
	add hl,bc		;bfa3
	ex de,hl		;bfa4
	ld (bc),a		;bfa5
lbfa6h:
	ld a,(bc)		;bfa6
	out (0edh),a		;bfa7
lbfa9h:
	dec b			;bfa9
sub_bfaah:
	add a,b			;bfaa
	sub l			;bfab
	cp c			;bfac
	jp nc,ld305h		;bfad
	cp c			;bfb0
	ex de,hl		;bfb1
	ld (bc),a		;bfb2
	inc c			;bfb3
	jp pe,led09h+1		;bfb4
	ld bc,ld240h		;bfb7
	dec h			;bfba
	out (0a0h),a		;bfbb
	jp nc,l24feh+2		;bfbd
	jr nz,lc002h		;bfc0
	ld d,l			;bfc2
	ld d,b			;bfc3
	ld (hl),b		;bfc4
	ld (hl),d		;bfc5
	ld (hl),d		;bfc6
	ld bc,l4149h		;bfc7
	ld h,c			;bfca
	sbc a,c			;bfcb
	add a,a			;bfcc
	ret m			;bfcd
	ld (bc),a		;bfce
	jp (hl)			;bfcf
	inc b			;bfd0
	jp pe,led09h+1		;bfd1
	inc bc			;bfd4
	jr nc,lbfa9h		;bfd5
	sub l			;bfd7
	ld b,l			;bfd8
	sub e			;bfd9
	sub l			;bfda
	ld b,l			;bfdb
	sub e			;bfdc
	ld (hl),l		;bfdd
	dec h			;bfde
	ld (hl),e		;bfdf
	add a,l			;bfe0
	ld b,l			;bfe1
	or e			;bfe2
	ret m			;bfe3
	ld (bc),a		;bfe4
	jp (hl)			;bfe5
	inc b			;bfe6
	jp pe,led09h		;bfe7
	inc bc			;bfea
	jr nc,$-45		;bfeb
	ld b,l			;bfed
	jp nc,0d199h		;bfee
	ld b,l			;bff1
	jp nc,0d199h		;bff2
	dec h			;bff5
	jp nc,0d179h		;bff6
	dec h			;bff9
	jp nc,0fdb9h		;bffa
	ld d,e			;bffd
	sbc a,a			;bffe
	rst 38h			;bfff
	cp 001h			;c000
lc002h:
	ret m			;c002
lc003h:
	ld h,0e9h		;c003
	inc b			;c005
	defb 0edh ;next byte illegal after ed	;c006
	ld bc,0ea40h		;c007
	add hl,bc		;c00a
	push de			;c00b
	sub c			;c00c
	call nc,leb91h		;c00d
	rra			;c010
	ld b,0d5h		;c011
	ld (hl),c		;c013
	call nc,lea71h		;c014
	ex af,af'		;c017
	call nc,ld351h		;c018
	ld d,c			;c01b
	ex de,hl		;c01c
	djnz $+10		;c01d
	push de			;c01f
	and c			;c020
	call nc,sub_eba1h	;c021
	djnz $+8		;c024
	call nc,ld351h		;c026
	ld d,c			;c029
	ex de,hl		;c02a
	djnz lc033h		;c02b
	call nc,ld321h		;c02d
	ld hl,l04eah+1		;c030
lc033h:
	ld b,0d5h		;c033
	and c			;c035
	call nc,sub_eba1h	;c036
	inc b			;c039
	ld b,0d4h		;c03a
	ld b,c			;c03c
	out (041h),a		;c03d
	ex de,hl		;c03f
	ex af,af'		;c040
	ld b,0f8h		;c041
	ld a,(bc)		;c043
lc044h:
	defb 0edh ;next byte illegal after ed	;c044
	ex af,af'		;c045
	jr nc,$-20		;c046
	add hl,bc		;c048
	pop de			;c049
	ld b,l			;c04a
	jp nc,ld195h		;c04b
	ld b,e			;c04e
	ld b,l			;c04f
	jp nc,ld195h		;c050
	ld b,e			;c053
	dec h			;c054
	jp nc,ld175h		;c055
	inc hl			;c058
	dec h			;c059
	jp nc,ld1b5h		;c05a
	add a,e			;c05d
lc05eh:
	sub l			;c05e
	ld b,l			;c05f
	sub e			;c060
	sub l			;c061
	ld b,l			;c062
	sub e			;c063
	ld (hl),l		;c064
lc065h:
	dec h			;c065
	ld (hl),e		;c066
lc067h:
	add a,l			;c067
	ld b,l			;c068
	add a,e			;c069
	defb 0fdh,000h,0a0h ;illegal sequence	;c06a
	cp 001h			;c06d
	rst 28h			;c06f
lc070h:
	ld bc,l02f8h		;c070
	jp (hl)			;c073
	inc b			;c074
sub_c075h:
	jp pe,ld205h		;c075
	rrca			;c078
	cpl			;c079
	ld c,a			;c07a
	ld l,a			;c07b
	ld e,a			;c07c
	defb 0edh ;next byte illegal after ed	;c07d
	dec b			;c07e
	jr nc,$-20		;c07f
	ex af,af'		;c081
	out (053h),a		;c082
	sub e			;c084
	jp nc,05303h		;c085
	ld a,a			;c088
	out (073h),a		;c089
	or e			;c08b
	jp nc,l7323h		;c08c
	ret m			;c08f
lc090h:
	dec d			;c090
lc091h:
	jp pe,ld205h		;c091
	defb 0edh ;next byte illegal after ed	;c094
	ld b,050h		;c095
	ld d,l			;c097
	ld a,c			;c098
lc099h:
	sub l			;c099
	ld a,c			;c09a
	ex de,hl		;c09b
	ld b,006h		;c09c
	ret m			;c09e
	inc bc			;c09f
	jp pe,led05h		;c0a0
	dec b			;c0a3
	jr nz,$+49		;c0a4
	xor a			;c0a6
	ld c,a			;c0a7
	ld c,a			;c0a8
	ret m			;c0a9
	ld a,(bc)		;c0aa
	defb 0edh ;next byte illegal after ed	;c0ab
	ex af,af'		;c0ac
	jr nc,lc099h		;c0ad
	rlca			;c0af
	pop de			;c0b0
	ld b,l			;c0b1
	jp nc,ld195h		;c0b2
	ld b,e			;c0b5
	ld b,l			;c0b6
	jp nc,ld195h		;c0b7
	ld b,e			;c0ba
	dec h			;c0bb
	jp nc,ld175h		;c0bc
	inc hl			;c0bf
	dec h			;c0c0
	jp nc,ld1b5h		;c0c1
	add a,e			;c0c4
	sub l			;c0c5
	ld b,l			;c0c6
	sub e			;c0c7
	sub l			;c0c8
	ld b,l			;c0c9
	sub e			;c0ca
	ld (hl),l		;c0cb
	dec h			;c0cc
	ld (hl),e		;c0cd
	add a,l			;c0ce
	ld b,l			;c0cf
	add a,e			;c0d0
	defb 0fdh,06dh ;ld iyl,iyl	;c0d1
	and b			;c0d3
	cp 004h			;c0d4
	jp (hl)			;c0d6
	ld b,081h		;c0d7
	jr nz,$-125		;c0d9
	add a,b			;c0db
	jr nz,lc05eh		;c0dc
	ex de,hl		;c0de
	djnz lc0e9h		;c0df
	add a,c			;c0e1
	djnz lc065h		;c0e2
	add a,b			;c0e4
	djnz lc067h		;c0e5
	ex de,hl		;c0e7
	rrca			;c0e8
lc0e9h:
	ex af,af'		;c0e9
	add a,b			;c0ea
	sub b			;c0eb
	sub b			;c0ec
	ex de,hl		;c0ed
	ld (bc),a		;c0ee
	dec b			;c0ef
	sub b			;c0f0
	add a,b			;c0f1
	defb 0fdh,0d4h,0a0h ;illegal sequence	;c0f2
	cp 001h			;c0f5
	jp (hl)			;c0f7
	ld b,0eah		;c0f8
	ld a,(bc)		;c0fa
	defb 0edh ;next byte illegal after ed	;c0fb
sub_c0fch:
	ld bc,ld020h		;c0fc
	nop			;c0ff
lc100h:
	pop de			;c100
lc101h:
	nop			;c101
	nop			;c102
	ret nc			;c103
	nop			;c104
	pop de			;c105
lc106h:
	nop			;c106
	nop			;c107
	ret nc			;c108
	nop			;c109
	pop de			;c10a
lc10bh:
	nop			;c10b
	ex de,hl		;c10c
	rlca			;c10d
lc10eh:
	rrca			;c10e
	ret nc			;c10f
	nop			;c110
	pop de			;c111
	nop			;c112
	nop			;c113
	ret nc			;c114
	nop			;c115
	pop de			;c116
	nop			;c117
	nop			;c118
	and b			;c119
	jp nc,ld0a0h		;c11a
	nop			;c11d
	pop de			;c11e
	nop			;c11f
	nop			;c120
lc121h:
	ret nc			;c121
	nop			;c122
	pop de			;c123
	nop			;c124
	nop			;c125
	ret nc			;c126
	nop			;c127
	pop de			;c128
	nop			;c129
	ex de,hl		;c12a
	rlca			;c12b
	djnz $-46		;c12c
	nop			;c12e
	pop de			;c12f
	nop			;c130
lc131h:
	nop			;c131
	ret nc			;c132
	nop			;c133
	pop de			;c134
lc135h:
	nop			;c135
	nop			;c136
	ret nc			;c137
	jr nz,lc10bh		;c138
	jr nz,lc135h		;c13a
	ld (hl),c		;c13c
	and c			;c13d
	ret nc			;c13e
	ld (hl),b		;c13f
	pop de			;c140
	ld (hl),b		;c141
	ld (hl),b		;c142
	ret nc			;c143
	ld (hl),b		;c144
lc145h:
	pop de			;c145
	ld (hl),b		;c146
	ld (hl),b		;c147
	ret nc			;c148
lc149h:
	ld (hl),b		;c149
lc14ah:
	pop de			;c14a
	ld (hl),b		;c14b
	ex de,hl		;c14c
lc14dh:
	ld (bc),a		;c14d
	djnz lc149h		;c14e
	ld (hl),c		;c150
	and c			;c151
	jp pe,ld20ah		;c152
	ld (hl),b		;c155
lc156h:
	sub b			;c156
	or b			;c157
	pop de			;c158
	nop			;c159
	jr nz,lc19ch		;c15a
	ld d,b			;c15c
	ld (hl),b		;c15d
	sub b			;c15e
	or b			;c15f
lc160h:
	ret nc			;c160
	nop			;c161
	jr nz,lc14dh		;c162
	inc bc			;c164
	ld b,b			;c165
	jr nz,lc168h		;c166
lc168h:
	pop de			;c168
	or b			;c169
	sub b			;c16a
lc16bh:
	ld (hl),b		;c16b
	ld d,b			;c16c
	ld b,b			;c16d
	defb 0fdh,0f5h,0a0h ;illegal sequence	;c16e
	ret nc			;c171
	jr nc,lc145h		;c172
	jr nc,lc1a6h		;c174
	ret nc			;c176
	jr nc,lc14ah		;c177
	jr nc,$+50		;c179
	ret nc			;c17b
lc17ch:
	jr nc,$-45		;c17c
	jr nc,lc16bh		;c17e
	inc b			;c180
	djnz $-46		;c181
	jr nz,lc156h		;c183
	jr nz,$+34		;c185
	ret nc			;c187
	jr nz,$-45		;c188
	jr nz,lc1ach		;c18a
	ret nc			;c18c
	jr nz,lc160h		;c18d
	jr nz,lc17ch		;c18f
	ld (bc),a		;c191
	djnz $-4		;c192
	cp 001h			;c194
	ret m			;c196
	ld h,0e9h		;c197
	ld b,0eah		;c199
	add hl,bc		;c19b
lc19ch:
	defb 0edh ;next byte illegal after ed	;c19c
	ld bc,ld450h+2		;c19d
	ld sp,hl		;c1a0
	ret po			;c1a1
	and c			;c1a2
	and b			;c1a3
	push de			;c1a4
	and b			;c1a5
lc1a6h:
	call nc,sub_e0f9h	;c1a6
	and c			;c1a9
	out (020h),a		;c1aa
lc1ach:
	call nc,lea20h		;c1ac
	ld a,(bc)		;c1af
	defb 0edh ;next byte illegal after ed	;c1b0
	ld bc,0f952h		;c1b1
	call p,sub_d4a1h	;c1b4
	ld (hl),c		;c1b7
	out (070h),a		;c1b8
	call nc,07071h		;c1ba
	out (070h),a		;c1bd
	call nc,0eb70h		;c1bf
	ld (bc),a		;c1c2
	dec c			;c1c3
	ld sp,hl		;c1c4
	call p,sub_d4a1h	;c1c5
	ld (hl),c		;c1c8
	out (070h),a		;c1c9
	call nc,07071h		;c1cb
	out (070h),a		;c1ce
	call nc,0ed70h		;c1d0
	ld bc,l5088h		;c1d3
	ld (hl),b		;c1d6
	ld (hl),b		;c1d7
	ld d,b			;c1d8
	ld (hl),b		;c1d9
	ld (hl),b		;c1da
lc1dbh:
	ld (hl),b		;c1db
	ld (hl),b		;c1dc
	defb 0fdh,094h ;sub iyh	;c1dd
	and c			;c1df
lc1e0h:
	ld bc,l00d3h		;c1e0
	call nc,l0001h		;c1e3
	out (000h),a		;c1e6
	call nc,sub_eb00h	;c1e8
	rlca			;c1eb
	inc c			;c1ec
	ld bc,l00d3h		;c1ed
	call nc,l0001h		;c1f0
	jp m,l31d3h+1		;c1f3
	out (030h),a		;c1f6
	call nc,sub_3031h	;c1f8
	out (030h),a		;c1fb
	call nc,sub_eb30h	;c1fd
lc200h:
	inc b			;c200
lc201h:
	dec c			;c201
lc202h:
	call nc,ld321h		;c202
lc205h:
	jr nz,lc1dbh		;c205
	ld hl,ld320h		;c207
	jr nz,lc1e0h		;c20a
	jr nz,$-19		;c20c
	ld (bc),a		;c20e
	dec c			;c20f
	jp m,l01fch+2		;c210
	ret m			;c213
	ld (bc),a		;c214
	pop af			;c215
	and d			;c216
	ld sp,hl		;c217
	ld d,l			;c218
	and d			;c219
	ld sp,hl		;c21a
	ld h,a			;c21b
	and d			;c21c
	pop af			;c21d
	and d			;c21e
	rlca			;c21f
	daa			;c220
	ld d,a			;c221
	and d			;c222
	ld d,d			;c223
	and c			;c224
	ld (hl),d		;c225
lc226h:
	nop			;c226
	jp p,0d1c7h		;c227
	nop			;c22a
	ret nz			;c22b
	ld d,b			;c22c
	ld c,a			;c22d
	ret nz			;c22e
	ld sp,hl		;c22f
lc230h:
	ld (hl),l		;c230
	and d			;c231
	ld sp,hl		;c232
	xor c			;c233
	and d			;c234
	ld d,c			;c235
	ld sp,hl		;c236
	sub 0a2h		;c237
	jp pe,led09h		;c239
	ld bc,0e920h		;c23c
	ld bc,le9c0h		;c23f
	inc bc			;c242
	ret nc			;c243
	rst 28h			;c244
	ld bc,l2040h		;c245
lc248h:
	nop			;c248
	pop de			;c249
	or b			;c24a
	sub b			;c24b
	ld (hl),b		;c24c
	ld d,b			;c24d
	jp (hl)			;c24e
	ld (bc),a		;c24f
	ld b,b			;c250
	ret p			;c251
	defb 0fdh,011h,0a2h ;illegal sequence	;c252
	jp (hl)			;c255
	ld b,0eah		;c256
	add hl,bc		;c258
	defb 0edh ;next byte illegal after ed	;c259
	ld bc,ld240h		;c25a
	rlca			;c25d
	daa			;c25e
	ld d,a			;c25f
	and d			;c260
	ld d,d			;c261
	and c			;c262
	ld (hl),d		;c263
	nop			;c264
	jp p,0c7fah		;c265
	pop de			;c268
	ld d,b			;c269
	ld b,b			;c26a
	jr nz,lc26dh		;c26b
lc26dh:
	ld (la352h),hl		;c26d
	sub c			;c270
	ld (hl),c		;c271
	ld d,c			;c272
	jp nc,lf8fah		;c273
	dec d			;c276
	jp (hl)			;c277
	inc bc			;c278
	jp pe,led09h		;c279
	ld bc,ld220h		;c27c
	and b			;c27f
	pop de			;c280
	jr nc,$-21		;c281
	ld b,071h		;c283
	ld (la3d2h),a		;c285
	pop de			;c288
	ld (hl),c		;c289
	ld sp,la1d2h		;c28a
	jp (hl)			;c28d
	inc bc			;c28e
	pop de			;c28f
	nop			;c290
	ld d,b			;c291
	jp (hl)			;c292
	ld b,091h		;c293
	ld d,d			;c295
	inc bc			;c296
	sub c			;c297
	ld d,c			;c298
	ld bc,002ebh		;c299
	rrca			;c29c
	or b			;c29d
	ret nz			;c29e
	ret nc			;c29f
	nop			;c2a0
	ld (0b0d2h),hl		;c2a1
	ret nz			;c2a4
	pop de			;c2a5
	nop			;c2a6
	ld h,0fah		;c2a7
	jp (hl)			;c2a9
	inc bc			;c2aa
	jp pe,ld20ah		;c2ab
	and b			;c2ae
	pop de			;c2af
	jr nc,$-21		;c2b0
	ld b,071h		;c2b2
	ld (la3d2h),a		;c2b4
	pop de			;c2b7
	and c			;c2b8
	ld (hl),c		;c2b9
	ld sp,003e9h		;c2ba
	pop de			;c2bd
	nop			;c2be
	ld d,b			;c2bf
	jp (hl)			;c2c0
	ld b,091h		;c2c1
	ld d,d			;c2c3
	inc bc			;c2c4
	ret nc			;c2c5
	ld bc,l91d0h+1		;c2c6
	ld d,c			;c2c9
	jp (hl)			;c2ca
	inc bc			;c2cb
	pop de			;c2cc
	nop			;c2cd
	ld d,b			;c2ce
	jp (hl)			;c2cf
	ld b,091h		;c2d0
	ld d,d			;c2d2
	inc bc			;c2d3
	ret nc			;c2d4
	jp m,ld101h		;c2d5
	sub c			;c2d8
	ret nc			;c2d9
	ld bc,ld100h		;c2da
	or d			;c2dd
	ld (hl),d		;c2de
	ld (sub_fefah),hl	;c2df
	ld bc,003efh		;c2e2
	ret m			;c2e5
	ld (bc),a		;c2e6
	ld sp,hl		;c2e7
	ld d,l			;c2e8
	and d			;c2e9
	rst 28h			;c2ea
	ld bc,l67f8h+1		;c2eb
	and d			;c2ee
	rlca			;c2ef
	daa			;c2f0
	ld d,a			;c2f1
	and d			;c2f2
	ld d,d			;c2f3
	and c			;c2f4
	ld (hl),d		;c2f5
	pop de			;c2f6
	nop			;c2f7
	rst 0			;c2f8
	nop			;c2f9
	ret nz			;c2fa
	ld d,b			;c2fb
	ld c,a			;c2fc
	ret nz			;c2fd
	ld sp,hl		;c2fe
	ld (hl),l		;c2ff
lc300h:
	and d			;c300
lc301h:
	ld sp,hl		;c301
lc302h:
	xor c			;c302
	and d			;c303
lc304h:
	ret p			;c304
	ld d,c			;c305
	rst 28h			;c306
	ld bc,0d6f9h		;c307
	and d			;c30a
	ld bc,lb1d2h		;c30b
	pop iy			;c30e
	and d			;c310
	cp 001h			;c311
	rst 28h			;c313
	inc b			;c314
	ret m			;c315
	ld (bc),a		;c316
	jp (hl)			;c317
	ld b,0eah		;c318
	add hl,bc		;c31a
	defb 0edh ;next byte illegal after ed	;c31b
	ld bc,ld240h		;c31c
	ld sp,hl		;c31f
	xor c			;c320
lc321h:
	and e			;c321
	jp nc,l0220h+1		;c322
	out (070h),a		;c325
	rst 28h			;c327
	ld bc,0d1c7h		;c328
	jr nz,lc32dh		;c32b
lc32dh:
	jp nc,l909eh+2		;c32d
	and d			;c330
	pop de			;c331
	ld (02153h),hl		;c332
	ld bc,la1d2h		;c335
	ld sp,hl		;c338
	xor c			;c339
	and e			;c33a
	jp nc,l0220h+1		;c33b
	ld (hl),b		;c33e
lc33fh:
	rst 0			;c33f
	ld (hl),b		;c340
	ret nz			;c341
	pop de			;c342
	nop			;c343
lc344h:
	rrca			;c344
	ret nz			;c345
	ret m			;c346
	dec d			;c347
	jp pe,l320ah		;c348
	jp nc,l73a2h		;c34b
	pop de			;c34e
	ld sp,la1d2h		;c34f
	ld (hl),c		;c352
	pop de			;c353
	ld d,d			;c354
	ld (bc),a		;c355
	jp nc,ld193h		;c356
	ld bc,l91d2h		;c359
	ld d,c			;c35c
	ex de,hl		;c35d
	ld (bc),a		;c35e
	inc c			;c35f
	pop de			;c360
	ld (hl),b		;c361
	ret nz			;c362
	sub b			;c363
	or d			;c364
	jp nc,lc070h		;c365
	sub b			;c368
	or (hl)			;c369
	jp (hl)			;c36a
	inc bc			;c36b
	jp pe,led09h		;c36c
	ld bc,ld220h		;c36f
	jr nc,lc3e4h		;c372
	jp (hl)			;c374
	ld b,0a1h		;c375
	ld (hl),d		;c377
	inc sp			;c378
	pop de			;c379
	ld sp,la1d2h		;c37a
	ld (hl),c		;c37d
	jp (hl)			;c37e
	inc bc			;c37f
	ld d,b			;c380
	sub b			;c381
	jp (hl)			;c382
	ld b,0d1h		;c383
	ld bc,l92d2h		;c385
	ld d,e			;c388
	pop de			;c389
	ld d,c			;c38a
	ld bc,l91d2h		;c38b
	jp (hl)			;c38e
	inc bc			;c38f
	jp nc,lc090h		;c390
	pop de			;c393
	jp (hl)			;c394
	ld b,051h		;c395
	ld (bc),a		;c397
	jp nc,ld153h		;c398
	sub c			;c39b
	ld d,c			;c39c
	ld bc,05051h		;c39d
	ld (hl),d		;c3a0
	ld (lb2d2h),hl		;c3a1
	ld (hl),c		;c3a4
	ld hl,011fdh		;c3a5
	and e			;c3a8
	rlca			;c3a9
	rlca			;c3aa
	rlca			;c3ab
	ld (la2d3h),hl		;c3ac
	jp m,l04feh		;c3af
	jp (hl)			;c3b2
lc3b3h:
	dec b			;c3b3
	ld bc,01cebh		;c3b4
	inc bc			;c3b7
	add a,b			;c3b8
	jr nz,lc3dbh		;c3b9
	jr nz,$-126		;c3bb
	jr nz,lc33fh		;c3bd
	jr nz,lc344h		;c3bf
	inc de			;c3c1
	add a,c			;c3c2
lc3c3h:
	add a,c			;c3c3
	ld hl,leb81h		;c3c4
	rlca			;c3c7
	ex af,af'		;c3c8
	add a,e			;c3c9
	inc de			;c3ca
	add a,c			;c3cb
	ld hl,l211fh+2		;c3cc
	ld sp,hl		;c3cf
lc3d0h:
	rra			;c3d0
	and (hl)		;c3d1
	add a,b			;c3d2
	add a,b			;c3d3
	ld b,c			;c3d4
	ld de,l03eah+1		;c3d5
	add hl,bc		;c3d8
	ld sp,hl		;c3d9
	rra			;c3da
lc3dbh:
	and (hl)		;c3db
	ld b,c			;c3dc
	ld b,c			;c3dd
	ld b,c			;c3de
	ld sp,hl		;c3df
	dec l			;c3e0
	and (hl)		;c3e1
	add a,c			;c3e2
	ex de,hl		;c3e3
lc3e4h:
	inc bc			;c3e4
	ld b,0f9h		;c3e5
	dec l			;c3e7
	and (hl)		;c3e8
lc3e9h:
	ld b,b			;c3e9
	ld b,b			;c3ea
	defb 0fdh,0c0h,0a3h ;illegal sequence	;c3eb
	cp 001h			;c3ee
lc3f0h:
	rst 28h			;c3f0
	ld bc,l05e9h		;c3f1
	jp pe,led0ch		;c3f4
	ld bc,ld350h		;c3f7
	sub c			;c3fa
	ex de,hl		;c3fb
	inc e			;c3fc
	inc bc			;c3fd
	call nc,ld350h		;c3fe
lc401h:
	ld d,b			;c401
sub_c402h:
	ex de,hl		;c402
	ld (bc),a		;c403
lc404h:
	ld b,0d5h		;c404
	and b			;c406
	call nc,sub_eba0h	;c407
	ld (bc),a		;c40a
	ld b,0eah		;c40b
	inc c			;c40d
	defb 0edh ;next byte illegal after ed	;c40e
	ld bc,ld450h		;c40f
	sub c			;c412
	out (091h),a		;c413
	ex de,hl		;c415
	jr nz,lc41eh		;c416
	jp pe,led0dh		;c418
	ld bc,ld433h		;c41b
lc41eh:
	ld d,c			;c41e
	out (001h),a		;c41f
lc421h:
	ld d,c			;c421
	call nc,05153h		;c422
	ex de,hl		;c425
	dec bc			;c426
	inc bc			;c427
	call m,sub_1d02h	;c428
	and h			;c42b
	ld (hl),c		;c42c
	out (021h),a		;c42d
	ld (hl),c		;c42f
	call nc,sub_7171h+2	;c430
	ex de,hl		;c433
	ld a,(bc)		;c434
	inc bc			;c435
	ld hl,0d371h		;c436
	ld hl,0d471h		;c439
	ld (hl),e		;c43c
	ld (hl),c		;c43d
	ex de,hl		;c43e
	add hl,bc		;c43f
	inc bc			;c440
	out (021h),a		;c441
	call nc,l8171h		;c443
	out (001h),a		;c446
	ld sp,l83d4h		;c448
	add a,c			;c44b
	ex de,hl		;c44c
	dec bc			;c44d
	inc bc			;c44e
	ld d,c			;c44f
lc450h:
	sub c			;c450
	out (001h),a		;c451
	call nc,05153h		;c453
	ex de,hl		;c456
	dec bc			;c457
	inc bc			;c458
	ld (hl),c		;c459
	ex de,hl		;c45a
	dec c			;c45b
	inc bc			;c45c
	or c			;c45d
	out (021h),a		;c45e
	ld (hl),e		;c460
	ld (hl),c		;c461
	ld (hl),c		;c462
	ld (hl),c		;c463
	ld (hl),c		;c464
	ld (hl),c		;c465
	ld hl,002ebh		;c466
	add hl,bc		;c469
	ld (hl),c		;c46a
	defb 0fdh,00ch,0a4h ;illegal sequence	;c46b
	cp 001h			;c46e
	rst 28h			;c470
	ld bc,l05e9h		;c471
	ret m			;c474
	ld (bc),a		;c475
	jp pe,led09h		;c476
	ld bc,ld2a0h		;c479
	sub c			;c47c
	sub c			;c47d
	jp pe,leb0ah		;c47e
	ld c,007h		;c481
	call nc,05151h		;c483
	push de			;c486
	and c			;c487
	and c			;c488
	ret m			;c489
	ld h,0eah		;c48a
	dec bc			;c48c
	jp (hl)			;c48d
	dec b			;c48e
	defb 0edh ;next byte illegal after ed	;c48f
	ld bc,sub_d550h		;c490
	sub c			;c493
	call nc,leb91h		;c494
	jr nz,lc49fh		;c497
	ret m			;c499
	ld (bc),a		;c49a
	jp pe,ld20ah		;c49b
	defb 0edh ;next byte illegal after ed	;c49e
lc49fh:
	add a,c			;c49f
	ld (041f9h),a		;c4a0
	and (hl)		;c4a3
	pop de			;c4a4
	inc bc			;c4a5
	jp nc,l73b3h		;c4a6
	sub e			;c4a9
	or c			;c4aa
	pop de			;c4ab
	inc bc			;c4ac
	ex de,hl		;c4ad
	inc bc			;c4ae
	ld c,0f9h		;c4af
	ld b,c			;c4b1
	and (hl)		;c4b2
	or c			;c4b3
	pop de			;c4b4
	ld bc,04353h		;c4b5
	inc hl			;c4b8
	dec b			;c4b9
	jp pe,lf909h		;c4ba
	ld c,c			;c4bd
	and (hl)		;c4be
	dec b			;c4bf
	ld sp,hl		;c4c0
	ld c,c			;c4c1
	and (hl)		;c4c2
lc4c3h:
	ld bc,l3121h		;c4c3
	jp (hl)			;c4c6
	ld a,(bc)		;c4c7
	dec hl			;c4c8
	jp nc,ld190h		;c4c9
	nop			;c4cc
	ld d,b			;c4cd
	ld (hl),h		;c4ce
	ld hl,0d200h		;c4cf
	cp b			;c4d2
	defb 0fdh,089h,0a4h ;illegal sequence	;c4d3
	cp 001h			;c4d6
	ret m			;c4d8
	ld (bc),a		;c4d9
	jp (hl)			;c4da
	dec b			;c4db
	jp pe,led09h		;c4dc
	ld bc,lf940h		;c4df
	ld e,(hl)		;c4e2
	and (hl)		;c4e3
	ld hl,l82f9h		;c4e4
	and (hl)		;c4e7
	pop bc			;c4e8
	sbc a,l			;c4e9
	sbc a,a			;c4ea
	sbc a,a			;c4eb
	sbc a,a			;c4ec
	ret m			;c4ed
	dec d			;c4ee
	ex de,hl		;c4ef
	ld (bc),a		;c4f0
	add hl,bc		;c4f1
	ret m			;c4f2
	inc d			;c4f3
	jp pe,led07h		;c4f4
	add a,c			;c4f7
	ld (l3ff9h),a		;c4f8
	and (hl)		;c4fb
	pop de			;c4fc
	inc bc			;c4fd
	jp nc,l73b3h		;c4fe
	sub e			;c501
	or c			;c502
	pop de			;c503
lc504h:
	ld (bc),a		;c504
	ex de,hl		;c505
	inc bc			;c506
	ld c,0f9h		;c507
	ccf			;c509
	and (hl)		;c50a
	or c			;c50b
	pop de			;c50c
	nop			;c50d
	inc hl			;c50e
	inc bc			;c50f
	jp nc,l95b3h		;c510
lc513h:
	ret m			;c513
	inc d			;c514
	jp pe,ld107h		;c515
	jr nz,lc513h		;c518
	ld c,c			;c51a
	and (hl)		;c51b
	dec b			;c51c
	ld sp,hl		;c51d
	ld c,c			;c51e
	and (hl)		;c51f
	ld bc,l3021h		;c520
	jp (hl)			;c523
	ld a,(bc)		;c524
	ret m			;c525
	ld (bc),a		;c526
	jp pe,ld208h		;c527
	cp e			;c52a
	ld d,b			;c52b
	sub b			;c52c
	pop de			;c52d
	nop			;c52e
	inc h			;c52f
	ld hl,0d200h		;c530
	ld a,b			;c533
	push iy			;c534
	and h			;c536
	cp 001h			;c537
	rst 28h			;c539
	ld bc,l0af8h		;c53a
	jp (hl)			;c53d
	inc b			;c53e
	jp pe,led08h		;c53f
	and c			;c542
lc543h:
	ld d,b			;c543
	ret nz			;c544
	jp (hl)			;c545
	dec b			;c546
	ld sp,hl		;c547
	ld e,(hl)		;c548
	and (hl)		;c549
	jr nz,$-21		;c54a
	ld bc,lf9c0h		;c54c
	add a,d			;c54f
	and (hl)		;c550
	ret nz			;c551
	ld c,l			;c552
	ccf			;c553
	cpl			;c554
	rrca			;c555
	ret nz			;c556
	ex de,hl		;c557
	ld (bc),a		;c558
	ex af,af'		;c559
	ret m			;c55a
	dec c			;c55b
	jp pe,ld307h		;c55c
	defb 0edh ;next byte illegal after ed	;c55f
	add a,c			;c560
	ld e,0e9h		;c561
	ld a,(bc)		;c563
	ld e,(hl)		;c564
	jp (hl)			;c565
	dec b			;c566
	ld d,b			;c567
	ld d,b			;c568
	ex de,hl		;c569
	ld (bc),a		;c56a
	add hl,bc		;c56b
	jp (hl)			;c56c
	ld a,(bc)		;c56d
	ld a,(hl)		;c56e
	jp (hl)			;c56f
	dec b			;c570
	ld (hl),b		;c571
	ld (hl),b		;c572
	jp (hl)			;c573
	ld a,(bc)		;c574
	ld a,e			;c575
	ld (hl),b		;c576
	ld (hl),b		;c577
	ld (hl),b		;c578
	ld (hl),b		;c579
	ld sp,hl		;c57a
	ld d,e			;c57b
	and (hl)		;c57c
	add a,a			;c57d
	add a,c			;c57e
	add a,c			;c57f
sub_c580h:
	pop bc			;c580
	adc a,c			;c581
	pop bc			;c582
	add a,e			;c583
	add a,c			;c584
	ld d,a			;c585
	ld d,c			;c586
	ld d,c			;c587
	pop bc			;c588
	ld e,c			;c589
	pop bc			;c58a
	ld d,e			;c58b
	ld d,c			;c58c
	ld a,l			;c58d
	ld (hl),b		;c58e
	ld (hl),b		;c58f
	ld a,l			;c590
	ld (hl),b		;c591
	ld (hl),b		;c592
	ld (hl),a		;c593
	ld (hl),c		;c594
	ld (hl),c		;c595
	pop bc			;c596
	ld (hl),e		;c597
	ld (hl),c		;c598
	ex de,hl		;c599
	rlca			;c59a
	inc bc			;c59b
	ld c,(iy-05bh)		;c59c
	cp 001h			;c59f
	ret m			;c5a1
	ld a,(bc)		;c5a2
	rst 28h			;c5a3
	ld bc,l05e9h		;c5a4
	jp pe,ld101h+2		;c5a7
	sbc a,a			;c5aa
	jp pe,l9704h		;c5ab
	jp pe,l9705h		;c5ae
	jp pe,l9706h		;c5b1
	jp pe,l9706h+1		;c5b4
	defb 0edh ;next byte illegal after ed	;c5b7
	ld bc,0eac5h		;c5b8
	dec bc			;c5bb
	sub b			;c5bc
	ex de,hl		;c5bd
	ex af,af'		;c5be
	inc bc			;c5bf
	jp pe,led0ch		;c5c0
	ld bc,090c1h		;c5c3
	add a,b			;c5c6
	ld (hl),b		;c5c7
	ld h,b			;c5c8
	ld d,b			;c5c9
	ld b,b			;c5ca
	jr nc,lc5edh		;c5cb
	ld sp,hl		;c5cd
	add a,l			;c5ce
	and (hl)		;c5cf
	pop de			;c5d0
	dec c			;c5d1
	jp nc,lafbfh		;c5d2
	sbc a,a			;c5d5
	pop bc			;c5d6
	ex de,hl		;c5d7
	ld (bc),a		;c5d8
	add hl,bc		;c5d9
	ret m			;c5da
	dec c			;c5db
	jp pe,ld107h+1		;c5dc
	defb 0edh ;next byte illegal after ed	;c5df
	add a,c			;c5e0
	ld e,0e9h		;c5e1
	ld a,(bc)		;c5e3
	ld c,0e9h		;c5e4
	dec b			;c5e6
	nop			;c5e7
	nop			;c5e8
	ex de,hl		;c5e9
	ld (bc),a		;c5ea
	add hl,bc		;c5eb
	jp (hl)			;c5ec
lc5edh:
	ld a,(bc)		;c5ed
	ld l,0e9h		;c5ee
	dec b			;c5f0
	jr nz,lc613h		;c5f1
	jp (hl)			;c5f3
	ld a,(bc)		;c5f4
	dec hl			;c5f5
	jr nz,lc618h		;c5f6
	jr nz,$+34		;c5f8
	ld sp,hl		;c5fa
	ld d,e			;c5fb
	and (hl)		;c5fc
	scf			;c5fd
	ld sp,lc131h		;c5fe
	add hl,sp		;c601
	pop bc			;c602
	inc sp			;c603
	ld sp,00107h		;c604
	ld bc,009c1h		;c607
	pop bc			;c60a
	inc bc			;c60b
	ld bc,0202dh		;c60c
	jr nz,lc63eh		;c60f
	jr nz,lc633h		;c611
lc613h:
	daa			;c613
	ld hl,lc121h		;c614
	inc hl			;c617
lc618h:
	ld hl,l07eah+1		;c618
	inc bc			;c61b
	defb 0fdh,0cdh,0a5h ;illegal sequence	;c61c
	add a,c			;c61f
	ld bc,sub_0141h		;c620
	add a,c			;c623
	add a,c			;c624
	ld b,c			;c625
	ld bc,l017fh+2		;c626
	ld b,c			;c629
	ld bc,lfa81h		;c62a
	ld b,c			;c62d
	add a,c			;c62e
	ld b,c			;c62f
	add a,c			;c630
	ld b,c			;c631
	add a,c			;c632
lc633h:
	ld b,c			;c633
	ld b,c			;c634
	ld b,c			;c635
	add a,c			;c636
	ld b,c			;c637
	add a,c			;c638
	ld b,c			;c639
	add a,b			;c63a
	add a,b			;c63b
	ld b,b			;c63c
	ld b,b			;c63d
lc63eh:
	jp m,0b0d2h		;c63e
	jp nc,ld1b1h		;c641
	ld bc,ld221h		;c644
	sub e			;c647
	jp m,l3121h		;c648
	ld bc,l2331h		;c64b
	ld sp,05303h		;c64e
	inc sp			;c651
	jp m,l0df8h		;c652
	jp (hl)			;c655
	dec b			;c656
	jp pe,ld30ah		;c657
	defb 0edh ;next byte illegal after ed	;c65a
	add a,c			;c65b
	ld a,(ld2fah)		;c65c
	sub c			;c65f
	pop de			;c660
	ld bc,sub_eb41h		;c661
	inc bc			;c664
	rlca			;c665
	jp nc,0d171h		;c666
	ld bc,sub_eb41h		;c669
	ld (bc),a		;c66c
	rlca			;c66d
	jp nc,l9161h		;c66e
	pop de			;c671
	ld hl,l03eah+1		;c672
	rlca			;c675
	jp nc,l9151h		;c676
	pop de			;c679
	ld hl,002ebh		;c67a
	rlca			;c67d
	jp nc,ld151h		;c67e
	jp m,l05e9h		;c681
	pop de			;c684
	ret m			;c685
	ld (bc),a		;c686
	jp pe,led09h+2		;c687
	dec de			;c68a
	ld h,b			;c68b
	jp m,l04feh		;c68c
	jp (hl)			;c68f
	ld b,080h		;c690
	nop			;c692
	sub b			;c693
	nop			;c694
	add a,b			;c695
	add a,b			;c696
	sub b			;c697
	nop			;c698
	ex de,hl		;c699
	rlca			;c69a
	ld c,090h		;c69b
	ex de,hl		;c69d
	ex af,af'		;c69e
	inc bc			;c69f
	defb 0fdh,08dh ;adc a,iyl	;c6a0
	and (hl)		;c6a2
	cp 001h			;c6a3
	jp (hl)			;c6a5
	ld b,0eah		;c6a6
	dec c			;c6a8
	defb 0edh ;next byte illegal after ed	;c6a9
lc6aah:
	ld bc,ld335h		;c6aa
lc6adh:
	rlca			;c6ad
	pop bc			;c6ae
	ld bc,l00c0h		;c6af
	ret nz			;c6b2
	nop			;c6b3
	ex de,hl		;c6b4
	ld (bc),a		;c6b5
	add hl,bc		;c6b6
	daa			;c6b7
	pop bc			;c6b8
	ld hl,020c0h		;c6b9
	ret nz			;c6bc
	jr nz,lc6aah		;c6bd
lc6bfh:
	ld (bc),a		;c6bf
lc6c0h:
	add hl,bc		;c6c0
	defb 0fdh,0a3h,0a6h ;illegal sequence	;c6c1
lc6c4h:
	cp 001h			;c6c4
	ret m			;c6c6
	ld (bc),a		;c6c7
	jp (hl)			;c6c8
	ld b,0eah		;c6c9
	add hl,bc		;c6cb
	jp nc,l01edh		;c6cc
	ld d,b			;c6cf
	ld (hl),b		;c6d0
	ld (hl),b		;c6d1
	pop de			;c6d2
	ld b,b			;c6d3
	nop			;c6d4
	jp nc,0d170h		;c6d5
	ld h,b			;c6d8
	jr nz,lc6adh		;c6d9
	ld (hl),b		;c6db
	pop de			;c6dc
	ld b,b			;c6dd
	nop			;c6de
	ex de,hl		;c6df
	ld (bc),a		;c6e0
	inc c			;c6e1
lc6e2h:
	call m,sub_c402h	;c6e2
	and (hl)		;c6e5
	jp nc,sub_9090h		;c6e6
	pop de			;c6e9
	ld h,b			;c6ea
	jr nz,lc6bfh		;c6eb
	sub b			;c6ed
	pop de			;c6ee
	ld (hl),b		;c6ef
	jr nz,lc6c4h		;c6f0
	sub b			;c6f2
	pop de			;c6f3
	ld h,b			;c6f4
	jr nz,lc6e2h		;c6f5
	ld (bc),a		;c6f7
	inc c			;c6f8
	call m,sub_e602h	;c6f9
	and (hl)		;c6fc
	defb 0fdh,0c4h,0a6h ;illegal sequence	;c6fd
	cp 001h			;c700
	ret m			;c702
	dec bc			;c703
	jp (hl)			;c704
	ld b,0eah		;c705
	ld a,(bc)		;c707
	defb 0edh ;next byte illegal after ed	;c708
	ld bc,lef30h		;c709
	ld bc,l70d3h		;c70c
	ld (hl),b		;c70f
	jp nc,l0040h		;c710
	out (070h),a		;c713
	jp nc,l2060h		;c715
	out (070h),a		;c718
	jp nc,l0040h		;c71a
	ex de,hl		;c71d
	ld (bc),a		;c71e
	inc c			;c71f
	call m,l0002h		;c720
	and a			;c723
	out (090h),a		;c724
	sub b			;c726
	jp nc,l2060h		;c727
	out (090h),a		;c72a
	jp nc,l2070h		;c72c
	out (090h),a		;c72f
	jp nc,l2060h		;c731
	ex de,hl		;c734
	ld (bc),a		;c735
	inc c			;c736
	call m,sub_2402h	;c737
	and a			;c73a
	defb 0fdh,000h,0a7h ;illegal sequence	;c73b
	cp 001h			;c73e
	ret m			;c740
	ld (bc),a		;c741
	jp (hl)			;c742
	inc c			;c743
	jp pe,led09h+2		;c744
	ld bc,ld245h		;c747
	ld sp,hl		;c74a
	ld l,(hl)		;c74b
	and a			;c74c
	djnz lc74fh		;c74d
lc74fh:
	jp nc,la0b0h		;c74f
	sub b			;c752
	add a,b			;c753
	ld (hl),b		;c754
	ld h,b			;c755
	defb 0fdh,03eh,0a7h ;illegal sequence	;c756
	cp 001h			;c759
	rst 28h			;c75b
	ld bc,l02f8h		;c75c
	jp (hl)			;c75f
	inc c			;c760
	jp pe,led09h		;c761
	ld bc,ld235h		;c764
	ld (hl),c		;c767
	ld sp,hl		;c768
	ld l,(hl)		;c769
	and a			;c76a
	defb 0fdh,059h,0a7h ;illegal sequence	;c76b
	ld a,e			;c76e
	pop de			;c76f
	inc bc			;c770
	jp nc,0d19bh		;c771
	inc hl			;c774
	dec bc			;c775
	ld (hl),e		;c776
lc777h:
	ld l,e			;c777
	jp pe,le908h		;c778
	inc bc			;c77b
	sub b			;c77c
	add a,b			;c77d
	ld (hl),b		;c77e
	ld h,b			;c77f
	ld d,b			;c780
	ld b,b			;c781
	jr nc,lc7a4h		;c782
	jp m,l04feh		;c784
	jp (hl)			;c787
lc788h:
	ld b,013h		;c788
lc78ah:
	inc bc			;c78a
lc78bh:
	inc bc			;c78b
	ld bc,l1010h		;c78c
	ex de,hl		;c78f
	inc b			;c790
	inc c			;c791
lc792h:
	ld sp,hl		;c792
	ld d,h			;c793
	xor c			;c794
	defb 0fdh,092h,0a7h ;illegal sequence	;c795
	cp 001h			;c798
	ret m			;c79a
	ld (bc),a		;c79b
	jp (hl)			;c79c
	ld b,0eah		;c79d
	inc c			;c79f
	defb 0edh ;next byte illegal after ed	;c7a0
	ld (bc),a		;c7a1
	jr nc,lc777h		;c7a2
lc7a4h:
	ld c,e			;c7a4
	pop bc			;c7a5
	ld h,b			;c7a6
	ld (hl),b		;c7a7
	ex de,hl		;c7a8
	ld (bc),a		;c7a9
	ld (de),a		;c7aa
	dec hl			;c7ab
	pop bc			;c7ac
	jr nz,$+34		;c7ad
	ex de,hl		;c7af
	ld (bc),a		;c7b0
	ld b,0f0h		;c7b1
	jp pe,led0dh		;c7b3
	ld bc,0d360h		;c7b6
	ld sp,hl		;c7b9
	ld d,h			;c7ba
	xor c			;c7bb
	call m,sub_b902h	;c7bc
	and a			;c7bf
	jr nz,lc7e2h		;c7c0
	ret nz			;c7c2
	ex de,hl		;c7c3
	inc b			;c7c4
	dec b			;c7c5
	jr nz,lc788h		;c7c6
	jr nz,lc78ah		;c7c8
	call m,lc002h		;c7ca
	and a			;c7cd
	cp 001h			;c7ce
	ret m			;c7d0
	ld h,0e9h		;c7d1
	ld b,0eah		;c7d3
	inc c			;c7d5
	defb 0edh ;next byte illegal after ed	;c7d6
	ld bc,0ef33h		;c7d7
	ld bc,l00d3h+1		;c7da
	out (000h),a		;c7dd
	ex de,hl		;c7df
	djnz $+8		;c7e0
lc7e2h:
	call nc,ld320h		;c7e2
	jr nz,$-19		;c7e5
	djnz lc7efh		;c7e7
	defb 0fdh,0b2h,0a7h ;illegal sequence	;c7e9
	cp 001h			;c7ec
	ret m			;c7ee
lc7efh:
	ld (bc),a		;c7ef
	jp (hl)			;c7f0
	ld b,0eah		;c7f1
	ld a,(bc)		;c7f3
	defb 0edh ;next byte illegal after ed	;c7f4
	ld bc,lef90h		;c7f5
	ld bc,l5ff9h		;c7f8
	xor c			;c7fb
	ld sp,hl		;c7fc
	ld (hl),a		;c7fd
	xor c			;c7fe
	ret p			;c7ff
lc800h:
	ret m			;c800
	dec bc			;c801
	jp pe,led09h+1		;c802
	ld bc,lf90ah		;c805
	ld e,a			;c808
	xor c			;c809
	ld sp,hl		;c80a
lc80bh:
	ld (hl),a		;c80b
	xor c			;c80c
	jp pe,led09h		;c80d
	ld bc,lef20h		;c810
	ld bc,08ff9h		;c813
	xor c			;c816
	ld sp,hl		;c817
	and d			;c818
	xor c			;c819
	defb 0fdh,0ffh,0a7h ;illegal sequence	;c81a
	cp 001h			;c81d
	ret m			;c81f
	jr z,lc80bh		;c820
	ld b,0eah		;c822
	ld a,(bc)		;c824
	defb 0edh ;next byte illegal after ed	;c825
lc826h:
	ld bc,0d455h		;c826
	rlca			;c829
	pop bc			;c82a
	ld bc,l00c0h		;c82b
	ret nz			;c82e
	nop			;c82f
	ex de,hl		;c830
	ld (bc),a		;c831
lc832h:
	add hl,bc		;c832
	daa			;c833
	pop bc			;c834
	ld hl,020c0h		;c835
	ret nz			;c838
	jr nz,lc826h		;c839
	ld (bc),a		;c83b
	add hl,bc		;c83c
	ret m			;c83d
	ld h,0f5h		;c83e
	jp (hl)			;c840
	ld b,0eah		;c841
	add hl,bc		;c843
	defb 0edh ;next byte illegal after ed	;c844
	ld bc,ld440h		;c845
	nop			;c848
	nop			;c849
	ret nz			;c84a
	ld (hl),b		;c84b
	ld (hl),b		;c84c
	ret nz			;c84d
	out (000h),a		;c84e
	nop			;c850
	ret nz			;c851
lc852h:
	ld (hl),b		;c852
	ld (hl),b		;c853
	ret nz			;c854
	jp nc,le901h		;c855
	inc bc			;c858
	jp pe,l7007h		;c859
	ld b,b			;c85c
	nop			;c85d
	out (070h),a		;c85e
	ex de,hl		;c860
	ld (bc),a		;c861
	dec h			;c862
	jp (hl)			;c863
	ld b,0eah		;c864
	add hl,bc		;c866
	call nc,sub_2020h	;c867
	ret nz			;c86a
	sub b			;c86b
	sub b			;c86c
	ret nz			;c86d
	out (020h),a		;c86e
	jr nz,lc832h		;c870
	sub b			;c872
	sub b			;c873
	ret nz			;c874
	jp nc,le921h		;c875
	inc bc			;c878
	jp pe,09007h		;c879
	ld h,b			;c87c
	jr nz,lc852h		;c87d
	sub b			;c87f
	ex de,hl		;c880
	ld (bc),a		;c881
	rra			;c882
	jp (hl)			;c883
	ld b,0eah		;c884
	ld a,(bc)		;c886
	defb 0edh ;next byte illegal after ed	;c887
	ld bc,ld340h		;c888
	nop			;c88b
	nop			;c88c
	ret nz			;c88d
	ld (hl),b		;c88e
	ld (hl),b		;c88f
	ret nz			;c890
	jp nc,l0000h		;c891
lc894h:
	ret nz			;c894
	ld (hl),b		;c895
	ld (hl),b		;c896
	ret nz			;c897
	pop de			;c898
	ld bc,003e9h		;c899
	jp pe,l7007h+1		;c89c
	ld b,b			;c89f
	nop			;c8a0
	jp nc,0eb70h		;c8a1
	ld (bc),a		;c8a4
	ld (l06e8h+1),hl	;c8a5
	jp pe,ld30ah		;c8a8
	jr nz,$+34		;c8ab
	ret nz			;c8ad
	sub b			;c8ae
	sub b			;c8af
	ret nz			;c8b0
	jp nc,sub_2020h		;c8b1
	ret nz			;c8b4
	sub b			;c8b5
	sub b			;c8b6
lc8b7h:
	ret nz			;c8b7
	pop de			;c8b8
	ld hl,003e9h		;c8b9
	jp pe,09008h		;c8bc
	ld h,b			;c8bf
sub_c8c0h:
	jr nz,lc894h		;c8c0
	sub b			;c8c2
	ex de,hl		;c8c3
	ld (bc),a		;c8c4
	rra			;c8c5
	defb 0fdh,03dh,0a8h ;illegal sequence	;c8c6
	cp 001h			;c8c9
	ret m			;c8cb
	ld h,0e9h		;c8cc
	ld b,0eah		;c8ce
	add hl,bc		;c8d0
	defb 0edh ;next byte illegal after ed	;c8d1
	ld bc,0d3a0h		;c8d2
	ld (hl),b		;c8d5
	ld (hl),b		;c8d6
	jp nc,l0040h		;c8d7
	out (070h),a		;c8da
	jp nc,l2060h		;c8dc
	out (070h),a		;c8df
	ex de,hl		;c8e1
	ld (bc),a		;c8e2
	inc c			;c8e3
	jp nc,l0040h		;c8e4
	call m,sub_c902h	;c8e7
	xor b			;c8ea
	out (090h),a		;c8eb
	sub b			;c8ed
	jp nc,l2060h		;c8ee
	out (090h),a		;c8f1
	jp nc,l2070h		;c8f3
	out (090h),a		;c8f6
	ex de,hl		;c8f8
	ld (bc),a		;c8f9
	inc c			;c8fa
	jp nc,l2060h		;c8fb
	call m,sub_eb02h	;c8fe
	xor b			;c901
sub_c902h:
	ret m			;c902
	ld a,(bc)		;c903
	jp (hl)			;c904
	ld b,0eah		;c905
	dec bc			;c907
	defb 0edh ;next byte illegal after ed	;c908
	ld bc,0ef29h		;c909
	ld bc,l5ff9h		;c90c
	xor c			;c90f
	ld sp,hl		;c910
	ld (hl),a		;c911
	xor c			;c912
	ld sp,hl		;c913
	or h			;c914
	xor c			;c915
	ld sp,hl		;c916
	in a,(0a9h)		;c917
	defb 0fdh,002h,0a9h ;illegal sequence	;c919
	cp 001h			;c91c
	ret m			;c91e
	ld h,0e9h		;c91f
	ld b,0eah		;c921
	add hl,bc		;c923
	defb 0edh ;next byte illegal after ed	;c924
	ld bc,ld355h		;c925
	ld (hl),a		;c928
	pop bc			;c929
	ld (hl),c		;c92a
	ret nz			;c92b
	ld (hl),b		;c92c
	ret nz			;c92d
	ld (hl),b		;c92e
	ex de,hl		;c92f
	ld (bc),a		;c930
	dec d			;c931
	sub a			;c932
	pop bc			;c933
	sub c			;c934
	ret nz			;c935
	sub b			;c936
	ret nz			;c937
	sub b			;c938
	ex de,hl		;c939
	ld (bc),a		;c93a
	add hl,bc		;c93b
	ld sp,hl		;c93c
lc93dh:
	or h			;c93d
	xor c			;c93e
	ld sp,hl		;c93f
	in a,(0a9h)		;c940
	ret m			;c942
	dec d			;c943
	jp (hl)			;c944
	ld b,0eah		;c945
	ld a,(bc)		;c947
	defb 0edh ;next byte illegal after ed	;c948
	ld bc,0f980h		;c949
	adc a,a			;c94c
	xor c			;c94d
	ld sp,hl		;c94e
	and d			;c94f
lc950h:
	xor c			;c950
	defb 0fdh,03ch,0a9h ;illegal sequence	;c951
	nop			;c954
lc955h:
	nop			;c955
	ret nz			;c956
	ex de,hl		;c957
	inc b			;c958
	dec b			;c959
	nop			;c95a
	ret nz			;c95b
	nop			;c95c
	ret nz			;c95d
	jp m,l70d2h		;c95e
	ld (hl),b		;c961
	pop de			;c962
	ld b,b			;c963
	nop			;c964
	jp nc,0d170h		;c965
	ld h,b			;c968
	jr nz,lc93dh		;c969
	ld (hl),b		;c96b
	ex de,hl		;c96c
	ld (bc),a		;c96d
	inc c			;c96e
	pop de			;c96f
	ld b,b			;c970
	nop			;c971
	call m,05f02h		;c972
	xor c			;c975
	jp m,090d2h		;c976
	sub b			;c979
	pop de			;c97a
	ld h,b			;c97b
	jr nz,lc950h		;c97c
	sub b			;c97e
	pop de			;c97f
	ld (hl),b		;c980
	jr nz,lc955h		;c981
	sub b			;c983
	ex de,hl		;c984
	ld (bc),a		;c985
	inc c			;c986
lc987h:
	pop de			;c987
	ld h,b			;c988
	jr nz,lc987h		;c989
	ld (bc),a		;c98b
	ld (hl),a		;c98c
	xor c			;c98d
	jp m,l40d1h		;c98e
	nop			;c991
	ld b,b			;c992
	ld h,b			;c993
	jr nz,$+98		;c994
	ex de,hl		;c996
	ld (bc),a		;c997
	add hl,bc		;c998
	ld b,b			;c999
	nop			;c99a
	ld b,b			;c99b
	ld (hl),b		;c99c
	call m,l8f00h+2		;c99d
	xor c			;c9a0
	jp m,l2060h		;c9a1
	ld h,b			;c9a4
	ld (hl),b		;c9a5
	ld b,b			;c9a6
lc9a7h:
	ld (hl),b		;c9a7
	ex de,hl		;c9a8
	ld (bc),a		;c9a9
	ex af,af'		;c9aa
	ld h,b			;c9ab
	jr nz,lca0eh		;c9ac
	sub b			;c9ae
	call m,sub_a202h	;c9af
	xor c			;c9b2
	jp m,l26f8h		;c9b3
	jp (hl)			;c9b6
	ld b,0eah		;c9b7
	add hl,bc		;c9b9
	defb 0edh ;next byte illegal after ed	;c9ba
	ld bc,ld444h		;c9bb
	ld (hl),b		;c9be
	ld (hl),b		;c9bf
	ret nz			;c9c0
	out (000h),a		;c9c1
	nop			;c9c3
	ret nz			;c9c4
	ld (hl),b		;c9c5
	ld (hl),b		;c9c6
	ret nz			;c9c7
	jp nc,l0000h		;c9c8
	ret nz			;c9cb
	ld (hl),c		;c9cc
	jp (hl)			;c9cd
	inc bc			;c9ce
	jp pe,ld107h		;c9cf
	nop			;c9d2
	jp nc,sub_4070h		;c9d3
	nop			;c9d6
	ex de,hl		;c9d7
	ld (bc),a		;c9d8
	dec h			;c9d9
	jp m,l06e8h+1		;c9da
	jp pe,ld409h		;c9dd
	sub b			;c9e0
	sub b			;c9e1
	ret nz			;c9e2
	out (020h),a		;c9e3
lc9e5h:
	jr nz,lc9a7h		;c9e5
	sub b			;c9e7
	sub b			;c9e8
	ret nz			;c9e9
	jp nc,sub_2020h		;c9ea
	ret nz			;c9ed
	sub c			;c9ee
	pop de			;c9ef
	jp (hl)			;c9f0
	inc bc			;c9f1
	jp pe,02007h		;c9f2
	jp nc,06090h		;c9f5
	jr nz,lc9e5h		;c9f8
	ld (bc),a		;c9fa
	jr nz,$-4		;c9fb
	push de			;c9fd
	ld sp,hl		;c9fe
	adc a,l			;c9ff
	xor d			;ca00
	sub a			;ca01
	sub a			;ca02
	sbc a,a			;ca03
	rst 38h			;ca04
	call nc,002fch		;ca05
	cp 0a9h			;ca08
	ld sp,hl		;ca0a
	sub b			;ca0b
	xor d			;ca0c
	ret m			;ca0d
lca0eh:
	inc d			;ca0e
	defb 0edh ;next byte illegal after ed	;ca0f
	add a,c			;ca10
	ld (l77d2h),a		;ca11
	ld d,a			;ca14
	jp pe,04f0ah		;ca15
	rst 38h			;ca18
	cp 001h			;ca19
	jp (hl)			;ca1b
	ex af,af'		;ca1c
	ret m			;ca1d
	ld a,(bc)		;ca1e
	jp pe,ld10bh		;ca1f
	defb 0edh ;next byte illegal after ed	;ca22
	add a,c			;ca23
	ld (ld207h),a		;ca24
	or a			;ca27
	jp pe,l9f08h		;ca28
	jp z,lfeffh		;ca2b
	ld bc,008e9h		;ca2e
	ret m			;ca31
	ld a,(bc)		;ca32
	jp pe,ld10ch		;ca33
	defb 0edh ;next byte illegal after ed	;ca36
	add a,c			;ca37
	ld e,d			;ca38
	ld d,a			;ca39
	ld b,a			;ca3a
	cpl			;ca3b
	rst 38h			;ca3c
	ld sp,hl		;ca3d
	sub a			;ca3e
	xor d			;ca3f
	jp pe,lf90bh		;ca40
	ld d,d			;ca43
	xor d			;ca44
	sub b			;ca45
	rst 38h			;ca46
	rst 28h			;ca47
	ld bc,097f9h		;ca48
	xor d			;ca4b
	jp pe,lf90ah		;ca4c
	ld d,d			;ca4f
	xor d			;ca50
	rst 38h			;ca51
	ld d,b			;ca52
	ld d,b			;ca53
	ld (hl),b		;ca54
	sub b			;ca55
	jp nc,l7050h		;ca56
	sub b			;ca59
	pop de			;ca5a
	ld d,b			;ca5b
	ld (hl),b		;ca5c
	sbc a,c			;ca5d
	add a,b			;ca5e
	ld (hl),b		;ca5f
	ld d,b			;ca60
	ld b,(hl)		;ca61
	jp pe,ld309h		;ca62
	jr nz,lcad7h		;ca65
	sub b			;ca67
	jp nc,l7020h		;ca68
	sub b			;ca6b
	pop de			;ca6c
	inc l			;ca6d
	defb 0edh ;next byte illegal after ed	;ca6e
	ld bc,lf87fh		;ca6f
	dec d			;ca72
	jp nc,l9040h		;ca73
	pop de			;ca76
	jr nz,$+114		;ca77
	ret nc			;ca79
	nop			;ca7a
	ld d,b			;ca7b
	and b			;ca7c
	ld b,b			;ca7d
	sub b			;ca7e
	jp pe,0d204h		;ca7f
	ld b,b			;ca82
	sub b			;ca83
	pop de			;ca84
	jr nz,lcaf7h		;ca85
	ret nc			;ca87
	nop			;ca88
	ld d,b			;ca89
	and b			;ca8a
	ld b,b			;ca8b
	jp m,l01edh		;ca8c
	ld (l01fch+2),a		;ca8f
	jp (hl)			;ca92
	ex af,af'		;ca93
	jp pe,lfa0dh		;ca94
	cp 001h			;ca97
	ret m			;ca99
	ld h,0e9h		;ca9a
	inc b			;ca9c
	out (0edh),a		;ca9d
	ld bc,lfa54h		;ca9f
	cp 004h			;caa2
	jp (hl)			;caa4
	dec b			;caa5
	or b			;caa6
	nop			;caa7
	nop			;caa8
	nop			;caa9
	jr nc,lcadch		;caaa
	jr nc,$+50		;caac
	ld b,b			;caae
	ex de,hl		;caaf
	ex af,af'		;cab0
	inc bc			;cab1
	ld sp,hl		;cab2
	ld a,(de)		;cab3
	xor e			;cab4
	ex de,hl		;cab5
	inc b			;cab6
	dec b			;cab7
	ld sp,hl		;cab8
	dec h			;cab9
	xor e			;caba
	ex de,hl		;cabb
	jr lcac3h		;cabc
	add a,c			;cabe
	ld bc,sub_0141h		;cabf
	add a,c			;cac2
lcac3h:
	ld bc,l113fh+2		;cac3
lcac6h:
	ex de,hl		;cac6
	ex af,af'		;cac7
	ld a,(bc)		;cac8
	add a,b			;cac9
	nop			;caca
	nop			;cacb
	nop			;cacc
	ld b,b			;cacd
	nop			;cace
	nop			;cacf
	djnz $-19		;cad0
	ex af,af'		;cad2
	ld a,(bc)		;cad3
	ld b,b			;cad4
	ld b,b			;cad5
	ld b,c			;cad6
lcad7h:
	add a,c			;cad7
	ex de,hl		;cad8
	dec b			;cad9
	ld b,011h		;cada
lcadch:
	add a,c			;cadc
	ld bc,l8141h		;cadd
	ld bc,l4101h		;cae0
	ld de,l03eah+1		;cae3
	ld a,(bc)		;cae6
	add a,c			;cae7
	ld bc,l8141h		;cae8
	ld b,b			;caeb
	ld b,b			;caec
	add a,c			;caed
	ld b,b			;caee
	ld b,b			;caef
	add a,c			;caf0
	call m,0dc04h		;caf1
	xor d			;caf4
	ld sp,hl		;caf5
	ld a,(de)		;caf6
lcaf7h:
	xor e			;caf7
	ex de,hl		;caf8
	ld (bc),a		;caf9
	dec b			;cafa
	ld sp,hl		;cafb
	dec h			;cafc
	xor e			;cafd
	ex de,hl		;cafe
	inc b			;caff
sub_cb00h:
	dec b			;cb00
	ld b,b			;cb01
lcb02h:
	ld b,b			;cb02
	add a,c			;cb03
	add a,c			;cb04
	ex de,hl		;cb05
	inc b			;cb06
	ld b,041h		;cb07
	ld bc,l8113h		;cb09
	ld bc,l113fh+2		;cb0c
	ex de,hl		;cb0f
	inc b			;cb10
	ld b,081h		;cb11
	ld bc,l8101h		;cb13
	ld bc,l8101h		;cb16
	rst 38h			;cb19
	add a,e			;cb1a
	inc bc			;cb1b
sub_cb1ch:
	inc bc			;cb1c
	ld bc,sub_0310h+1	;cb1d
	inc bc			;cb20
	inc bc			;cb21
	ld bc,lfa81h		;cb22
	add a,c			;cb25
	add a,c			;cb26
	ld b,c			;cb27
	add a,c			;cb28
	ld bc,l4101h		;cb29
	ld de,sub_fefah		;cb2c
	ld bc,l05e9h		;cb2f
	jp pe,ld40ah		;cb32
	defb 0edh ;next byte illegal after ed	;cb35
	ld bc,l4033h		;cb36
	ld b,b			;cb39
	ld b,b			;cb3a
	ld b,b			;cb3b
	jp pe,l400bh		;cb3c
	ld b,b			;cb3f
	ld b,b			;cb40
	or b			;cb41
	out (0eah),a		;cb42
	dec c			;cb44
	ld b,b			;cb45
	ex de,hl		;cb46
	ex af,af'		;cb47
	inc bc			;cb48
	ld sp,hl		;cb49
	or l			;cb4a
	xor e			;cb4b
	ex de,hl		;cb4c
	ld (bc),a		;cb4d
	dec b			;cb4e
	ld sp,hl		;cb4f
	jp nz,lfcabh		;cb50
	ld (bc),a		;cb53
	ld c,a			;cb54
	xor e			;cb55
	defb 0edh ;next byte illegal after ed	;cb56
	ld bc,lf923h		;cb57
sub_cb5ah:
	jp nz,lfcabh		;cb5a
	inc b			;cb5d
	ld e,c			;cb5e
	xor e			;cb5f
	defb 0edh ;next byte illegal after ed	;cb60
	ld bc,00333h		;cb61
	ex de,hl		;cb64
	djnz $+5		;cb65
	inc hl			;cb67
	ex de,hl		;cb68
	djnz lcb6eh		;cb69
	call nc,leb71h		;cb6b
lcb6eh:
	jr nz,lcb74h		;cb6e
	jp pe,l750eh		;cb70
	ld (hl),l		;cb73
lcb74h:
	ld (hl),l		;cb74
	ld (hl),l		;cb75
	ld (hl),l		;cb76
	pop bc			;cb77
	jp pe,ld40dh		;cb78
	sub c			;cb7b
	ex de,hl		;cb7c
	ex af,af'		;cb7d
	inc bc			;cb7e
	or c			;cb7f
	ex de,hl		;cb80
	ex af,af'		;cb81
	inc bc			;cb82
	out (001h),a		;cb83
	ex de,hl		;cb85
	ex af,af'		;cb86
	inc b			;cb87
	call nc,sub_b1b1h	;cb88
lcb8bh:
	or c			;cb8b
	or c			;cb8c
	out (041h),a		;cb8d
	ld b,c			;cb8f
	ld b,c			;cb90
	call nc,0fc41h		;cb91
	inc b			;cb94
	ld a,b			;cb95
	xor e			;cb96
	ld sp,hl		;cb97
	or l			;cb98
	xor e			;cb99
	ld sp,hl		;cb9a
	jp nz,ledabh		;cb9b
	ld bc,ld423h		;cb9e
	sub l			;cba1
	or l			;cba2
	out (005h),a		;cba3
	dec b			;cba5
	call nc,sub_d3b3h	;cba6
	inc bc			;cba9
	call nc,sub_6565h	;cbaa
	or l			;cbad
	or l			;cbae
	or e			;cbaf
	or e			;cbb0
	ld b,l			;cbb1
	ld b,l			;cbb2
	ld c,e			;cbb3
	rst 38h			;cbb4
lcbb5h:
	call nc,sub_919dh	;cbb5
	sbc a,l			;cbb8
	sub c			;cbb9
	adc a,l			;cbba
	add a,c			;cbbb
	add a,a			;cbbc
	add a,c			;cbbd
	sub c			;cbbe
	or c			;cbbf
	add a,c			;cbc0
	jp m,l91d4h		;cbc1
	sub c			;cbc4
	or c			;cbc5
	sub c			;cbc6
	out (001h),a		;cbc7
	call nc,ld390h+1	;cbc9
	ld hl,leb01h		;cbcc
	ld (bc),a		;cbcf
	ld c,0d4h		;cbd0
	add a,c			;cbd2
	add a,c			;cbd3
	sub c			;cbd4
	add a,c			;cbd5
	or c			;cbd6
	add a,c			;cbd7
	out (021h),a		;cbd8
	ld bc,002ebh		;cbda
	inc c			;cbdd
	jp m,l01fch+2		;cbde
	ret m			;cbe1
	dec d			;cbe2
	jp (hl)			;cbe3
	dec b			;cbe4
	jp pe,ld308h		;cbe5
	defb 0edh ;next byte illegal after ed	;cbe8
	add a,c			;cbe9
	and e			;cbea
	jr nz,$+82		;cbeb
	add a,b			;cbed
	or b			;cbee
	ld d,b			;cbef
	add a,b			;cbf0
	or b			;cbf1
	jp nc,ld320h		;cbf2
	or b			;cbf5
	jp nc,l5020h		;cbf6
lcbf9h:
	add a,b			;cbf9
	ld d,b			;cbfa
	add a,b			;cbfb
	or b			;cbfc
	pop de			;cbfd
	jr nz,$-6		;cbfe
	ld (bc),a		;cc00
	jp pe,ld209h		;cc01
lcc04h:
	defb 0edh ;next byte illegal after ed	;cc04
	add a,c			;cc05
	inc sp			;cc06
	ld sp,hl		;cc07
	cp e			;cc08
	xor h			;cc09
	ex de,hl		;cc0a
	inc b			;cc0b
	dec c			;cc0c
	ret m			;cc0d
	rla			;cc0e
	jp pe,ld308h		;cc0f
	ld b,c			;cc12
	jp nc,ld301h		;cc13
sub_cc16h:
	or c			;cc16
	sub c			;cc17
	jp nc,00121h		;cc18
	out (0b1h),a		;cc1b
	jp nc,ld305h		;cc1d
	sub e			;cc20
	jp nc,l4303h		;cc21
	daa			;cc24
	out (0b7h),a		;cc25
	jp nc,0d35fh		;cc27
	ld b,c			;cc2a
	jp nc,ld301h		;cc2b
	or c			;cc2e
	sub c			;cc2f
	jp nc,00121h		;cc30
	out (0b1h),a		;cc33
	jp nc,l0304h+1		;cc35
	ld b,e			;cc38
	sub e			;cc39
	adc a,a			;cc3a
	ld e,a			;cc3b
	call m,sub_0d02h	;cc3c
	xor h			;cc3f
	ld sp,hl		;cc40
	di			;cc41
	xor h			;cc42
	ld sp,hl		;cc43
	call m,sub_f9ach	;cc44
	rlca			;cc47
	xor l			;cc48
	ld a,a			;cc49
	ld sp,hl		;cc4a
	ld (de),a		;cc4b
	xor l			;cc4c
	ld sp,hl		;cc4d
	ld e,0adh		;cc4e
	sbc a,a			;cc50
	out (020h),a		;cc51
	ld d,b			;cc53
	add a,b			;cc54
	cp b			;cc55
	jr nz,lcca8h		;cc56
	add a,b			;cc58
	or b			;cc59
	add a,b			;cc5a
	or b			;cc5b
	jp nc,l581fh+1		;cc5c
	out (080h),a		;cc5f
	or b			;cc61
	jp nc,l5020h		;cc62
	jr nz,lccb7h		;cc65
sub_cc67h:
	add a,b			;cc67
	cp b			;cc68
	jr nz,lccbbh		;cc69
	add a,b			;cc6b
	or b			;cc6c
	add a,b			;cc6d
	or b			;cc6e
	pop de			;cc6f
lcc70h:
	jr nz,lcccah		;cc70
	jp nc,lb080h		;cc72
	pop de			;cc75
	jr nz,$+82		;cc76
	jp p,l55d3h		;cc78
	add a,l			;cc7b
	or l			;cc7c
	jp nc,l5125h		;cc7d
	add a,l			;cc80
	ret m			;cc81
	ld (bc),a		;cc82
	jp pe,lf909h		;cc83
	add hl,hl		;cc86
	xor l			;cc87
	ld hl,002ebh		;cc88
	ld a,(bc)		;cc8b
	ld sp,hl		;cc8c
	ld a,(021adh)		;cc8d
	ret m			;cc90
	ld a,(bc)		;cc91
	jp pe,ld20ah		;cc92
	ld sp,hl		;cc95
	cp e			;cc96
	xor h			;cc97
	ex de,hl		;cc98
	ld (bc),a		;cc99
	ld a,(bc)		;cc9a
	rst 28h			;cc9b
	ld bc,ledd1h		;cc9c
	add a,c			;cc9f
	ld d,c			;cca0
	dec b			;cca1
	dec h			;cca2
	ld b,l			;cca3
	ld b,l			;cca4
	ld bc,l4121h		;cca5
lcca8h:
	ld bc,l1515h		;cca8
	ld b,l			;ccab
lccach:
	ld b,l			;ccac
	inc de			;ccad
	ld b,e			;ccae
	jp nc,la161h		;ccaf
	pop de			;ccb2
	ld de,l71d1h+1		;ccb3
	or c			;ccb6
lccb7h:
	pop de			;ccb7
	ld hl,lff6bh		;ccb8
lccbbh:
	sub c			;ccbb
	or c			;ccbc
	pop de			;ccbd
	ld bc,l91d2h		;ccbe
	or c			;ccc1
	pop de			;ccc2
	ld bc,l91d2h		;ccc3
	pop de			;ccc6
	ld bc,ld241h		;ccc7
lcccah:
	sub c			;ccca
	pop de			;cccb
	ld hl,l91d2h		;cccc
	pop de			;cccf
	ld bc,l91d2h		;ccd0
	or c			;ccd3
	pop de			;ccd4
	ld bc,l81d2h		;ccd5
	or c			;ccd8
	pop de			;ccd9
	ld hl,l81d2h		;ccda
	or c			;ccdd
	pop de			;ccde
	ld hl,l81d2h		;ccdf
	or c			;cce2
	pop de			;cce3
	ld d,c			;cce4
	jp nc,ld181h		;cce5
	ld b,c			;cce8
	jp nc,ld181h		;cce9
	ld hl,l81d2h		;ccec
	or c			;ccef
	pop de			;ccf0
	ld hl,ld3fah		;ccf1
	defb 0edh ;next byte illegal after ed	;ccf4
	add a,c			;ccf5
	inc sp			;ccf6
	pop af			;ccf7
	ld d,e			;ccf8
	di			;ccf9
	dec c			;ccfa
	jp m,l7030h		;ccfb
	and b			;ccfe
	jp nc,l3000h		;ccff
	ld (hl),b		;cd02
	and b			;cd03
	pop de			;cd04
	nop			;cd05
	jp m,l7737h		;cd06
	ld (hl),c		;cd09
	ld h,c			;cd0a
lcd0bh:
	ld d,c			;cd0b
	ld sp,00537h		;cd0c
	jr nc,lcd61h		;cd0f
	jp m,050d3h		;cd11
	sub b			;cd14
	jp nc,l2000h		;cd15
lcd18h:
	ld d,b			;cd18
	sub b			;cd19
	pop de			;cd1a
	nop			;cd1b
	jr nz,lcd18h		;cd1c
	ld d,a			;cd1e
	sub a			;cd1f
	sub c			;cd20
	add a,c			;cd21
	ld (hl),c		;cd22
	ld d,c			;cd23
	ld d,a			;cd24
	dec h			;cd25
	ld d,b			;cd26
	ld (hl),b		;cd27
	jp m,l9fd1h		;cd28
	ld (hl),l		;cd2b
	add hl,hl		;cd2c
	ld b,a			;cd2d
	ld bc,l4121h		;cd2e
	ld (hl),c		;cd31
	sub c			;cd32
	ld h,c			;cd33
	ld hl,l2161h		;cd34
	ld b,c			;cd37
	ld h,c			;cd38
	jp m,lb59fh		;cd39
	ld (hl),l		;cd3c
	inc hl			;cd3d
	ld b,a			;cd3e
	ld bc,l4121h		;cd3f
	ld (hl),c		;cd42
	sub c			;cd43
	ld h,c			;cd44
	ld hl,l2161h		;cd45
	ld b,c			;cd48
	ld h,c			;cd49
	ld hl,lb59fh		;cd4a
	ld (hl),l		;cd4d
	or e			;cd4e
	ret nc			;cd4f
	dec b			;cd50
	pop de			;cd51
	ld (hl),l		;cd52
	ld b,e			;cd53
	pop bc			;cd54
	sub c			;cd55
	ld h,c			;cd56
	ld hl,l4101h		;cd57
	ld h,c			;cd5a
	jp m,l01fch+2		;cd5b
	ret m			;cd5e
	inc b			;cd5f
	jp (hl)			;cd60
lcd61h:
	dec b			;cd61
	jp pe,ld408h		;cd62
	defb 0edh ;next byte illegal after ed	;cd65
	add a,c			;cd66
	and e			;cd67
	jr nz,lcdbah		;cd68
	add a,b			;cd6a
	or b			;cd6b
	ld d,b			;cd6c
	add a,b			;cd6d
	or b			;cd6e
	out (020h),a		;cd6f
	call nc,0d3b0h		;cd71
	jr nz,$+82		;cd74
	add a,b			;cd76
	ld d,b			;cd77
	add a,b			;cd78
sub_cd79h:
	or b			;cd79
	jp nc,lef20h		;cd7a
	ld bc,l15f8h		;cd7d
	jp pe,0d204h		;cd80
	xor 0f9h		;cd83
	cp e			;cd85
	xor h			;cd86
	ex de,hl		;cd87
	inc b			;cd88
	dec bc			;cd89
	rst 28h			;cd8a
	ld bc,l06e8h+2		;cd8b
	jp nc,l08edh		;cd8e
	inc bc			;cd91
	ld b,c			;cd92
	pop de			;cd93
	ld bc,lb1d2h		;cd94
	sub c			;cd97
	pop de			;cd98
	ld hl,ld201h		;cd99
	or c			;cd9c
	pop de			;cd9d
	dec b			;cd9e
	jp nc,ld193h		;cd9f
	inc bc			;cda2
	ld b,e			;cda3
	daa			;cda4
	jp nc,ld1b7h		;cda5
	ld e,a			;cda8
	jp nc,ld141h		;cda9
	ld bc,lb1d2h		;cdac
	sub c			;cdaf
	pop de			;cdb0
	ld hl,ld201h		;cdb1
	or c			;cdb4
	pop de			;cdb5
	dec b			;cdb6
	inc bc			;cdb7
	ld b,e			;cdb8
	sub e			;cdb9
lcdbah:
	adc a,l			;cdba
	ld (hl),b		;cdbb
	ld h,b			;cdbc
	ld e,a			;cdbd
	ret p			;cdbe
	call m,sub_8a02h	;cdbf
	xor l			;cdc2
	rst 28h			;cdc3
	ld bc,l02f8h		;cdc4
	ld sp,hl		;cdc7
	di			;cdc8
	xor h			;cdc9
	jr nc,$-5		;cdca
	call m,sub_edach	;cdcc
	ex af,af'		;cdcf
	inc sp			;cdd0
	ld sp,l07f8h+1		;cdd1
	xor l			;cdd4
	ld a,l			;cdd5
	defb 0edh ;next byte illegal after ed	;cdd6
	add a,c			;cdd7
	inc sp			;cdd8
	ld sp,hl		;cdd9
	ld (de),a		;cdda
	xor l			;cddb
	defb 0edh ;next byte illegal after ed	;cddc
	ex af,af'		;cddd
	inc sp			;cdde
	ld d,c			;cddf
	ld sp,hl		;cde0
lcde1h:
	ld e,0adh		;cde1
	sbc a,h			;cde3
	out (055h),a		;cde4
	ld d,l			;cde6
	ld d,e			;cde7
	ld (hl),l		;cde8
	ld (hl),l		;cde9
	ld (hl),e		;cdea
	or l			;cdeb
	or l			;cdec
	or e			;cded
	jp nc,l2525h		;cdee
	inc hl			;cdf1
lcdf2h:
	jp p,sub_8555h		;cdf2
	or l			;cdf5
	pop de			;cdf6
	dec h			;cdf7
	ld d,c			;cdf8
	add a,l			;cdf9
	ret p			;cdfa
	rst 28h			;cdfb
	ld bc,l15f8h		;cdfc
	jp pe,09007h		;cdff
	ld sp,hl		;ce02
	add hl,hl		;ce03
	xor l			;ce04
	jr nz,lcdf2h		;ce05
	ld (bc),a		;ce07
	rlca			;ce08
	sub b			;ce09
	ld sp,hl		;ce0a
	ld a,(020adh)		;ce0b
	rst 28h			;ce0e
	ld bc,l06e8h+2		;ce0f
	jp nc,lf9eeh		;ce12
	cp e			;ce15
	xor h			;ce16
	ex de,hl		;ce17
	ld (bc),a		;ce18
	add hl,bc		;ce19
	ret p			;ce1a
	ret m			;ce1b
	ld (bc),a		;ce1c
	jp pe,ld20ah		;ce1d
	defb 0edh ;next byte illegal after ed	;ce20
	add a,c			;ce21
	ld d,c			;ce22
	ld b,l			;ce23
	ld (hl),l		;ce24
	ld (hl),l		;ce25
	ld (hl),l		;ce26
	ld (hl),e		;ce27
	ld (hl),e		;ce28
	sub l			;ce29
	sub l			;ce2a
	sub l			;ce2b
	sub l			;ce2c
	sub e			;ce2d
	sub e			;ce2e
	ld h,l			;ce2f
	ld (hl),l		;ce30
	ld l,e			;ce31
	rst 38h			;ce32
	cp 001h			;ce33
	ret m			;ce35
	inc b			;ce36
	jp (hl)			;ce37
	dec b			;ce38
	jp pe,ld308h		;ce39
	defb 0edh ;next byte illegal after ed	;ce3c
	add a,c			;ce3d
lce3eh:
	and e			;ce3e
	ld sp,hl		;ce3f
	ld a,l			;ce40
	xor a			;ce41
	ret m			;ce42
	dec c			;ce43
	jp (hl)			;ce44
	ld a,(bc)		;ce45
	jp pe,ld30ah		;ce46
	defb 0edh ;next byte illegal after ed	;ce49
	add a,e			;ce4a
	ld sp,l909eh		;ce4b
	adc a,(hl)		;ce4e
	add a,b			;ce4f
	ex de,hl		;ce50
	ld (bc),a		;ce51
	djnz lce3eh		;ce52
	add hl,bc		;ce54
	defb 0edh ;next byte illegal after ed	;ce55
	add a,c			;ce56
	add a,c			;ce57
	ld sp,hl		;ce58
	out (0aeh),a		;ce59
	call m,05806h		;ce5b
	xor (hl)		;ce5e
	ret m			;ce5f
	dec d			;ce60
	jp (hl)			;ce61
	dec b			;ce62
	jp pe,led09h+1		;ce63
	ld bc,la161h		;ce66
	and c			;ce69
	and c			;ce6a
	sub c			;ce6b
	sub c			;ce6c
	sub c			;ce6d
	add a,c			;ce6e
	add a,c			;ce6f
	ex de,hl		;ce70
	inc b			;ce71
	ld a,(bc)		;ce72
	jp nc,l0101h		;ce73
	ld bc,lb1d3h		;ce76
	or c			;ce79
	or c			;ce7a
	and c			;ce7b
	and c			;ce7c
	ex de,hl		;ce7d
	inc b			;ce7e
	inc c			;ce7f
	out (02dh),a		;ce80
	jr nz,$+34		;ce82
	ex de,hl		;ce84
	inc bc			;ce85
	ld b,027h		;ce86
	ld hl,l211fh+2		;ce88
	ld hl,l0df8h		;ce8b
	add a,l			;ce8e
	add a,l			;ce8f
	add a,l			;ce90
	add a,l			;ce91
	add a,c			;ce92
	add a,l			;ce93
	ret m			;ce94
	ld (bc),a		;ce95
	jp nc,l81edh		;ce96
	ld d,c			;ce99
	rrca			;ce9a
	cpl			;ce9b
	ld c,a			;ce9c
	daa			;ce9d
	ld h,a			;ce9e
	ex de,hl		;ce9f
	inc b			;cea0
	rlca			;cea1
	rst 28h			;cea2
	ld bc,00ae9h		;cea3
	jp nc,l83edh		;cea6
	ld sp,l909eh		;cea9
	adc a,(hl)		;ceac
	add a,b			;cead
	jp pe,led09h		;ceae
	add a,c			;ceb1
	add a,c			;ceb2
	ld sp,hl		;ceb3
	out (0aeh),a		;ceb4
	ret p			;ceb6
	jp (hl)			;ceb7
	dec b			;ceb8
	jp pe,ld20ah		;ceb9
	defb 0edh ;next byte illegal after ed	;cebc
	add a,c			;cebd
	ld d,c			;cebe
	ld (hl),l		;cebf
	or l			;cec0
	pop de			;cec1
	dec b			;cec2
	dec b			;cec3
	jp nc,ld1b2h+1		;cec4
	inc bc			;cec7
	dec d			;cec8
	dec d			;cec9
	dec d			;ceca
	dec d			;cecb
	inc de			;cecc
sub_cecdh:
	inc de			;cecd
	jp nc,lb5a5h		;cece
	xor e			;ced1
	rst 38h			;ced2
	sub b			;ced3
	ex de,hl		;ced4
	djnz $+5		;ced5
	add a,b			;ced7
	ex de,hl		;ced8
	djnz lcedeh		;ced9
	jp m,l01fch+2		;cedb
lcedeh:
	ret m			;cede
	inc b			;cedf
	jp (hl)			;cee0
	dec b			;cee1
	jp pe,lef05h		;cee2
	inc bc			;cee5
	out (0edh),a		;cee6
	add a,c			;cee8
	and e			;cee9
	ld sp,hl		;ceea
	ld a,l			;ceeb
	xor a			;ceec
lceedh:
	ret p			;ceed
	ret m			;ceee
	dec c			;ceef
	jp (hl)			;cef0
	ld a,(bc)		;cef1
	jp pe,ld30ah		;cef2
	defb 0edh ;next byte illegal after ed	;cef5
	add a,e			;cef6
	ld b,c			;cef7
	ld c,(hl)		;cef8
	ld b,b			;cef9
	ld e,(hl)		;cefa
	ld d,b			;cefb
	ex de,hl		;cefc
	ld (bc),a		;cefd
	djnz lceedh		;cefe
	add a,c			;cf00
	add a,c			;cf01
	ld sp,hl		;cf02
	sub c			;cf03
	xor a			;cf04
	call m,l0202h		;cf05
	xor a			;cf08
	jp pe,lf909h		;cf09
	sub c			;cf0c
	xor a			;cf0d
	call m,00904h		;cf0e
	xor a			;cf11
	ret m			;cf12
	dec d			;cf13
	jp (hl)			;cf14
	dec b			;cf15
	jp pe,ld20bh		;cf16
	defb 0edh ;next byte illegal after ed	;cf19
	ld bc,03161h		;cf1a
	ex de,hl		;cf1d
	jr nz,lcf2dh		;cf1e
	ld d,c			;cf20
	ex de,hl		;cf21
	jr nz,lcf27h		;cf22
	out (07dh),a		;cf24
	ld (hl),b		;cf26
lcf27h:
	ld (hl),b		;cf27
	ex de,hl		;cf28
	inc bc			;cf29
	ld b,077h		;cf2a
	ld (hl),c		;cf2c
lcf2dh:
	ld (hl),c		;cf2d
	ld (hl),c		;cf2e
	ld (hl),c		;cf2f
	ret m			;cf30
	dec c			;cf31
	or l			;cf32
	or l			;cf33
	or l			;cf34
	or l			;cf35
	or c			;cf36
	or l			;cf37
	ret m			;cf38
	ld (bc),a		;cf39
	jp (hl)			;cf3a
	dec b			;cf3b
	jp pe,ld20ah		;cf3c
	defb 0edh ;next byte illegal after ed	;cf3f
	add a,c			;cf40
	ld d,c			;cf41
	ld c,a			;cf42
	ld a,a			;cf43
	ld a,a			;cf44
	ld h,a			;cf45
	sub a			;cf46
	ex de,hl		;cf47
	inc b			;cf48
	rlca			;cf49
	cp 001h			;cf4a
	ret m			;cf4c
	ld (bc),a		;cf4d
	jp (hl)			;cf4e
	ld a,(bc)		;cf4f
	jp pe,ld208h		;cf50
	rst 28h			;cf53
	ld bc,l83edh		;cf54
	ld b,c			;cf57
	ld c,(hl)		;cf58
	ld b,b			;cf59
	ld e,(hl)		;cf5a
	ld d,b			;cf5b
	defb 0edh ;next byte illegal after ed	;cf5c
	add a,c			;cf5d
	add a,c			;cf5e
	ld sp,hl		;cf5f
	sub c			;cf60
	xor a			;cf61
	ret p			;cf62
	ret m			;cf63
	ld (bc),a		;cf64
	jp (hl)			;cf65
	dec b			;cf66
	jp pe,ld10ah		;cf67
	defb 0edh ;next byte illegal after ed	;cf6a
	add a,c			;cf6b
	ld d,c			;cf6c
	dec b			;cf6d
	dec h			;cf6e
	ld b,l			;cf6f
	ld b,l			;cf70
	inc hl			;cf71
	ld b,e			;cf72
	ld b,l			;cf73
	ld b,l			;cf74
	ld b,l			;cf75
	ld b,l			;cf76
	ld b,e			;cf77
	ld b,e			;cf78
	dec d			;cf79
	dec h			;cf7a
	dec de			;cf7b
	rst 38h			;cf7c
	jr nz,$+34		;cf7d
	ld d,b			;cf7f
	add a,b			;cf80
	or b			;cf81
	ld d,b			;cf82
	add a,b			;cf83
lcf84h:
	or b			;cf84
	jp nc,ld320h		;cf85
	or b			;cf88
	jp nc,l5020h		;cf89
	add a,b			;cf8c
	ld d,b			;cf8d
	add a,b			;cf8e
	or b			;cf8f
	jp m,leb40h		;cf90
	djnz $+5		;cf93
	ld d,b			;cf95
	ex de,hl		;cf96
	djnz lcf9ch		;cf97
	jp m,l04feh		;cf99
lcf9ch:
	jp (hl)			;cf9c
	dec b			;cf9d
	ld bc,01101h		;cf9e
	ld bc,l0101h		;cfa1
	ld bc,l0101h		;cfa4
	ld bc,01101h		;cfa7
	nop			;cfaa
	nop			;cfab
lcfach:
	sub c			;cfac
	sub c			;cfad
	ld b,c			;cfae
	ld b,c			;cfaf
	ld b,c			;cfb0
	nop			;cfb1
	nop			;cfb2
	ld bc,l0101h		;cfb3
	ld bc,l0110h+1		;cfb6
	ld bc,l0110h+1		;cfb9
	ld bc,l0101h		;cfbc
	ld bc,l0101h		;cfbf
	ld bc,l0011h		;cfc2
	nop			;cfc5
	ld b,c			;cfc6
	ld b,c			;cfc7
	add a,c			;cfc8
	add a,c			;cfc9
	add a,c			;cfca
	ld b,c			;cfcb
	ld bc,l4110h+1		;cfcc
	ld b,c			;cfcf
	ld b,c			;cfd0
	ld sp,hl		;cfd1
	jr c,lcf84h		;cfd2
	ex de,hl		;cfd4
	ld d,005h		;cfd5
	add a,l			;cfd7
	dec b			;cfd8
	inc de			;cfd9
	inc de			;cfda
	ld bc,lf911h		;cfdb
	ccf			;cfde
	or b			;cfdf
	dec b			;cfe0
	ex de,hl		;cfe1
	ld (bc),a		;cfe2
	ld b,0f9h		;cfe3
	ccf			;cfe5
	or b			;cfe6
	ld b,c			;cfe7
	ld b,c			;cfe8
	ld b,c			;cfe9
	call m,0dd02h		;cfea
	xor a			;cfed
	add a,c			;cfee
	nop			;cfef
	nop			;cff0
	ld bc,sub_0141h		;cff1
	ld bc,038f9h		;cff4
	or b			;cff7
	add a,c			;cff8
	ld bc,l0101h		;cff9
	ld bc,l3101h		;cffc
	ld sp,l9031h		;cfff
sub_d002h:
	sub b			;d002
	ld b,c			;d003
	ld b,c			;d004
ld005h:
	ld sp,hl		;d005
ld006h:
	jr c,$-78		;d006
ld008h:
	ex de,hl		;d008
ld009h:
	rla			;d009
	dec b			;d00a
	add a,c			;d00b
	ld bc,l3001h		;d00c
	sub b			;d00f
	ld b,c			;d010
	ld b,c			;d011
	ld b,c			;d012
	ld sp,leb31h		;d013
	ld b,005h		;d016
	jr nc,$+50		;d018
	jr nc,lcfach		;d01a
	sub b			;d01c
	sub b			;d01d
	ld b,b			;d01e
	ld b,b			;d01f
ld020h:
	ld b,b			;d020
	ld b,b			;d021
	ld de,l03fch		;d022
	ld (de),a		;d025
	or b			;d026
	ld b,c			;d027
	ld sp,l4131h		;d028
	ld sp,le931h		;d02b
	ld b,041h		;d02e
	ld sp,04031h		;d030
	ld b,b			;d033
	add a,c			;d034
	add a,c			;d035
	add a,c			;d036
	rst 38h			;d037
	add a,c			;d038
	ld bc,l4101h		;d039
	ld bc,0fa11h		;d03c
	add a,l			;d03f
	dec b			;d040
	dec b			;d041
	ld bc,01101h		;d042
	add a,l			;d045
	dec b			;d046
	dec b			;d047
	jp m,l01fch+2		;d048
	jp (hl)			;d04b
	dec b			;d04c
	jp pe,ld30bh+1		;d04d
	defb 0edh ;next byte illegal after ed	;d050
	ld bc,0f915h		;d051
	call nz,sub_d4b0h	;d054
	ld sp,hl		;d057
	and b			;d058
	or b			;d059
	ld (hl),l		;d05a
	ld (hl),l		;d05b
	ld (hl),l		;d05c
	ld (hl),l		;d05d
	jp (hl)			;d05e
	ld a,(bc)		;d05f
	jp pe,l7b09h+1		;d060
	jp (hl)			;d063
	dec b			;d064
	jp pe,lf90ch		;d065
	pop af			;d068
	or b			;d069
	out (003h),a		;d06a
	inc hl			;d06c
	ld c,c			;d06d
	call nc,sub_9b41h	;d06e
ld071h:
	ld l,e			;d071
	ld h,l			;d072
	ld sp,hl		;d073
	call po,sub_ebb0h	;d074
	ld (bc),a		;d077
	ld de,lcbf9h		;d078
	or b			;d07b
	jp pe,lf90ch		;d07c
	and b			;d07f
	or b			;d080
	ld (hl),c		;d081
	ex de,hl		;d082
	inc c			;d083
	inc bc			;d084
	out (071h),a		;d085
	ex de,hl		;d087
	inc c			;d088
	inc bc			;d089
	ld bc,02eebh		;d08a
	inc bc			;d08d
	ld b,c			;d08e
	ld (hl),c		;d08f
	jp nc,leb01h		;d090
	ld e,004h		;d093
	jp (hl)			;d095
	ld b,005h		;d096
	ld bc,l71d1h+2		;d098
	ld b,c			;d09b
	jp (hl)			;d09c
	inc c			;d09d
	dec c			;d09e
	rst 38h			;d09f
ld0a0h:
	ld d,l			;d0a0
	ex de,hl		;d0a1
	ex af,af'		;d0a2
	inc bc			;d0a3
	ld b,l			;d0a4
	ld b,l			;d0a5
	ld b,l			;d0a6
	ld b,l			;d0a7
	dec (hl)		;d0a8
	dec (hl)		;d0a9
	dec (hl)		;d0aa
	ld sp,03171h		;d0ab
	add a,l			;d0ae
	ex de,hl		;d0af
	ex af,af'		;d0b0
	inc bc			;d0b1
	ld (hl),l		;d0b2
	ld (hl),l		;d0b3
	ld (hl),e		;d0b4
	ld (hl),e		;d0b5
	ld (hl),e		;d0b6
	ld h,l			;d0b7
	ld h,l			;d0b8
	ld h,e			;d0b9
	ld h,e			;d0ba
	ld h,e			;d0bb
	ld d,l			;d0bc
	ex de,hl		;d0bd
	rlca			;d0be
	inc bc			;d0bf
	ld d,c			;d0c0
	ld d,c			;d0c1
	ld d,c			;d0c2
	jp m,leb01h		;d0c3
	inc hl			;d0c6
	inc bc			;d0c7
	dec c			;d0c8
	dec bc			;d0c9
	jp m,l8585h		;d0ca
	add a,l			;d0cd
	add a,l			;d0ce
	jp pe,la107h+2		;d0cf
	and c			;d0d2
	and c			;d0d3
	jp pe,la10bh		;d0d4
	and c			;d0d7
	and c			;d0d8
	jp pe,la10ch		;d0d9
	and c			;d0dc
	and c			;d0dd
	jp pe,la10dh		;d0de
	and c			;d0e1
	and c			;d0e2
	jp m,l2161h		;d0e3
	ld h,c			;d0e6
	ld e,e			;d0e7
	ld d,e			;d0e8
	ld d,e			;d0e9
	ld d,e			;d0ea
	ld e,a			;d0eb
	ld d,c			;d0ec
	ld d,c			;d0ed
	ld (hl),c		;d0ee
	sub c			;d0ef
	jp m,0818fh		;d0f0
	add a,c			;d0f3
	ld sp,l8b81h		;d0f4
	add a,e			;d0f7
	jp m,l01fch+2		;d0f8
	jp (hl)			;d0fb
	dec b			;d0fc
	jp pe,ld40ah+1		;d0fd
ld100h:
	defb 0edh ;next byte illegal after ed	;d100
ld101h:
	ld bc,0f915h		;d101
	call nz,sub_edb0h	;d104
ld107h:
	ld bc,ld525h		;d107
ld10ah:
	ld sp,hl		;d10a
ld10bh:
	and b			;d10b
ld10ch:
	or b			;d10c
ld10dh:
	ld (hl),l		;d10d
	ld (hl),l		;d10e
	ld (hl),l		;d10f
	ld (hl),l		;d110
	jp (hl)			;d111
	ld a,(bc)		;d112
	jp pe,l7b09h		;d113
	jp (hl)			;d116
	dec b			;d117
	jp pe,lf90bh		;d118
	pop af			;d11b
	or b			;d11c
	call nc,l2301h+2	;d11d
ld120h:
	ld c,c			;d120
ld121h:
	push de			;d121
	ld b,c			;d122
ld123h:
	sbc a,e			;d123
	ld l,e			;d124
	ld h,l			;d125
	ld sp,hl		;d126
	call po,sub_ebb0h	;d127
	ld (bc),a		;d12a
	ld de,lcbf9h		;d12b
	or b			;d12e
	ld sp,hl		;d12f
	and b			;d130
	or b			;d131
	ld (hl),c		;d132
	ex de,hl		;d133
	inc c			;d134
	inc bc			;d135
	call nc,leb71h		;d136
	inc c			;d139
	inc b			;d13a
	ld bc,02eebh		;d13b
	inc bc			;d13e
	ld b,c			;d13f
ld140h:
	ld (hl),c		;d140
ld141h:
	out (001h),a		;d141
	ex de,hl		;d143
	ld e,004h		;d144
	jp (hl)			;d146
	ld b,005h		;d147
	ld bc,l71d4h		;d149
	ld b,c			;d14c
	jp (hl)			;d14d
	inc c			;d14e
	dec c			;d14f
ld150h:
	rst 38h			;d150
ld151h:
	cp 001h			;d151
ld153h:
	ret m			;d153
	ld (bc),a		;d154
	rst 28h			;d155
	ld bc,l05e9h		;d156
	jp pe,ld20ah		;d159
	defb 0edh ;next byte illegal after ed	;d15c
	add a,c			;d15d
	dec (hl)		;d15e
	ld sp,hl		;d15f
ld160h:
	ld a,(bc)		;d160
	or d			;d161
	dec c			;d162
ld163h:
	jp pe,lf909h		;d163
	inc hl			;d166
	or d			;d167
	pop de			;d168
	add a,b			;d169
	ret p			;d16a
	ret m			;d16b
	inc de			;d16c
	jp (hl)			;d16d
	dec b			;d16e
	jp pe,ld107h+1		;d16f
	defb 0edh ;next byte illegal after ed	;d172
ld173h:
	add a,c			;d173
	dec h			;d174
ld175h:
	pop af			;d175
	ld d,e			;d176
	di			;d177
	jr ld173h		;d178
	inc sp			;d17a
	or d			;d17b
	ld sp,hl		;d17c
	ld c,b			;d17d
	or d			;d17e
	ld e,e			;d17f
	ld c,e			;d180
ld181h:
	jp pe,02907h		;d181
	jp nc,lf2bdh		;d184
	ret m			;d187
	ld (bc),a		;d188
	rst 28h			;d189
	ld bc,l05e9h		;d18a
	jp pe,ld209h		;d18d
ld190h:
	defb 0edh ;next byte illegal after ed	;d190
ld191h:
	add a,c			;d191
ld192h:
	dec h			;d192
ld193h:
	pop af			;d193
	ld d,e			;d194
ld195h:
	di			;d195
ld196h:
	jr $+13			;d196
	out (073h),a		;d198
	jp nc,05cf9h		;d19a
ld19dh:
	or d			;d19d
	out (09bh),a		;d19e
	sub e			;d1a0
ld1a1h:
	or e			;d1a1
ld1a2h:
	jp nc,l5503h		;d1a2
ld1a5h:
	ld b,l			;d1a5
ld1a6h:
	dec b			;d1a6
	dec h			;d1a7
	ex de,hl		;d1a8
	ld (bc),a		;d1a9
	inc de			;d1aa
	dec bc			;d1ab
	inc bc			;d1ac
	inc hl			;d1ad
ld1aeh:
	inc sp			;d1ae
	dec bc			;d1af
ld1b0h:
	ret m			;d1b0
ld1b1h:
	rla			;d1b1
ld1b2h:
	jp pe,02308h		;d1b2
ld1b5h:
	ld d,e			;d1b5
	and e			;d1b6
ld1b7h:
	ret p			;d1b7
	jp p,l13f6h+2		;d1b8
ld1bbh:
	jp (hl)			;d1bb
	dec b			;d1bc
	jp pe,ld107h+1		;d1bd
	defb 0edh ;next byte illegal after ed	;d1c0
ld1c1h:
	add a,c			;d1c1
	dec h			;d1c2
	pop af			;d1c3
	ld d,e			;d1c4
	di			;d1c5
	jr ld1c1h		;d1c6
	inc sp			;d1c8
	or d			;d1c9
	ld sp,hl		;d1ca
	ld c,b			;d1cb
	or d			;d1cc
	ld e,e			;d1cd
	ld c,e			;d1ce
	add hl,hl		;d1cf
	jp nc,lf2bdh		;d1d0
	ret m			;d1d3
	ld (bc),a		;d1d4
	rst 28h			;d1d5
	ld bc,l05e9h		;d1d6
	jp pe,ld20ah		;d1d9
	defb 0edh ;next byte illegal after ed	;d1dc
	add a,c			;d1dd
	dec (hl)		;d1de
	ld sp,hl		;d1df
	ld a,(bc)		;d1e0
	or d			;d1e1
	dec c			;d1e2
	jp pe,lf908h		;d1e3
	inc hl			;d1e6
	or d			;d1e7
	pop de			;d1e8
	add a,b			;d1e9
	jp pe,l030ah		;d1ea
	inc bc			;d1ed
ld1eeh:
	ld hl,l5541h		;d1ee
	ld b,c			;d1f1
	ld hl,ld20ch+1		;d1f2
	jr nc,$+50		;d1f5
	add a,c			;d1f7
	pop de			;d1f8
	ld bc,051d2h		;d1f9
	and c			;d1fc
	pop de			;d1fd
	ld hl,l2107h		;d1fe
ld201h:
	ld b,c			;d201
ld202h:
	jp (hl)			;d202
	ld b,055h		;d203
ld205h:
	ld b,c			;d205
ld206h:
	inc hl			;d206
ld207h:
	dec bc			;d207
ld208h:
	rrca			;d208
ld209h:
	rst 38h			;d209
ld20ah:
	inc bc			;d20a
ld20bh:
	inc bc			;d20b
ld20ch:
	ld hl,l5541h		;d20c
	ld b,c			;d20f
	ld hl,l300dh		;d210
	jr nc,ld196h		;d213
	pop de			;d215
	ld bc,051d2h		;d216
	and c			;d219
	pop de			;d21a
	ld hl,l2107h		;d21b
	ld b,c			;d21e
	ld d,l			;d21f
ld220h:
	ld b,c			;d220
ld221h:
	ld hl,ld3fah		;d221
	jr nc,ld1a6h		;d224
	jp nc,l3000h		;d226
	add a,b			;d229
	pop de			;d22a
ld22bh:
	nop			;d22b
	jr nc,ld1aeh		;d22c
	ret nc			;d22e
	nop			;d22f
	jr nc,ld232h		;d230
ld232h:
	jp m,ld22bh		;d232
ld235h:
	or e			;d235
	pop de			;d236
	inc bc			;d237
	inc hl			;d238
	dec hl			;d239
	inc bc			;d23a
	jp nc,ld1b7h		;d23b
	ld a,e			;d23e
	dec hl			;d23f
ld240h:
	ld a,e			;d240
ld241h:
	dec hl			;d241
	ld a,e			;d242
ld243h:
	ld e,e			;d243
	dec bc			;d244
ld245h:
	dec hl			;d245
	ld c,e			;d246
	jp m,l73d2h		;d247
	pop de			;d24a
	inc bc			;d24b
	ld b,e			;d24c
	ld c,e			;d24d
	jp nc,ld193h		;d24e
ld251h:
	inc bc			;d251
	ld b,e			;d252
	ld e,e			;d253
	ld c,e			;d254
	add hl,bc		;d255
	dec l			;d256
	jp m,ld20bh		;d257
	ld (hl),e		;d25a
	pop de			;d25b
	inc bc			;d25c
	inc hl			;d25d
	ld (hl),l		;d25e
	ld d,l			;d25f
	ld d,e			;d260
	ld (hl),e		;d261
	ld d,e			;d262
ld263h:
	ld c,e			;d263
	inc hl			;d264
	rlca			;d265
	ld b,l			;d266
	dec b			;d267
	inc hl			;d268
	ld b,a			;d269
	jp m,l01fch+2		;d26a
	ret m			;d26d
sub_d26eh:
	inc de			;d26e
	rst 28h			;d26f
	ld (bc),a		;d270
ld271h:
	jp (hl)			;d271
	dec b			;d272
	jp pe,ld208h		;d273
	defb 0edh ;next byte illegal after ed	;d276
	add a,c			;d277
	dec (hl)		;d278
	nop			;d279
	ld sp,hl		;d27a
	ld a,(bc)		;d27b
	or d			;d27c
	dec c			;d27d
	ret m			;d27e
	dec e			;d27f
	defb 0edh ;next byte illegal after ed	;d280
	add a,c			;d281
	dec d			;d282
	jp pe,lf905h		;d283
	inc hl			;d286
	or d			;d287
	ret p			;d288
	rst 28h			;d289
	ld bc,l14f8h		;d28a
	jp (hl)			;d28d
	dec b			;d28e
	jp pe,ld107h		;d28f
	defb 0edh ;next byte illegal after ed	;d292
ld293h:
	add a,c			;d293
	dec d			;d294
	pop af			;d295
	ld d,l			;d296
	di			;d297
	jr ld293h		;d298
	inc sp			;d29a
	or d			;d29b
	ld sp,hl		;d29c
	ld c,b			;d29d
	or d			;d29e
	ret p			;d29f
ld2a0h:
	dec hl			;d2a0
ld2a1h:
	dec bc			;d2a1
	jp nc,l06e8h+2		;d2a2
	cp c			;d2a5
	adc a,l			;d2a6
	ret p			;d2a7
	jp p,l15f8h		;d2a8
	jp (hl)			;d2ab
	dec b			;d2ac
	jp pe,ld107h		;d2ad
	defb 0edh ;next byte illegal after ed	;d2b0
ld2b1h:
	add a,c			;d2b1
	dec h			;d2b2
	pop af			;d2b3
	ld d,e			;d2b4
	di			;d2b5
	jr ld2b1h		;d2b6
	ld e,b			;d2b8
	or d			;d2b9
	ld sp,hl		;d2ba
	cpl			;d2bb
	or e			;d2bc
	dec h			;d2bd
	ex de,hl		;d2be
	ld (bc),a		;d2bf
	add hl,bc		;d2c0
	dec bc			;d2c1
	inc bc			;d2c2
	inc hl			;d2c3
	inc sp			;d2c4
	dec bc			;d2c5
	jp pe,lf806h		;d2c6
	ld (bc),a		;d2c9
	inc hl			;d2ca
	ld d,e			;d2cb
	and e			;d2cc
	jp p,l01edh+2		;d2cd
	ret m			;d2d0
	inc d			;d2d1
	jp (hl)			;d2d2
	dec b			;d2d3
	jp pe,ld107h		;d2d4
	defb 0edh ;next byte illegal after ed	;d2d7
ld2d8h:
	add a,c			;d2d8
	dec d			;d2d9
	pop af			;d2da
	ld d,l			;d2db
	di			;d2dc
	jr ld2d8h		;d2dd
	inc sp			;d2df
	or d			;d2e0
	ld sp,hl		;d2e1
	ld c,b			;d2e2
	or d			;d2e3
	ret p			;d2e4
	dec hl			;d2e5
	dec bc			;d2e6
	jp nc,l8db7h+2		;d2e7
	ret p			;d2ea
	jp p,l13f6h+2		;d2eb
	rst 28h			;d2ee
	ld (bc),a		;d2ef
	jp (hl)			;d2f0
	dec b			;d2f1
	jp pe,ld208h		;d2f2
	defb 0edh ;next byte illegal after ed	;d2f5
	add a,c			;d2f6
	dec (hl)		;d2f7
	nop			;d2f8
	ld sp,hl		;d2f9
ld2fah:
	ld a,(bc)		;d2fa
	or d			;d2fb
	dec c			;d2fc
	ret m			;d2fd
	dec e			;d2fe
	defb 0edh ;next byte illegal after ed	;d2ff
ld300h:
	add a,c			;d300
ld301h:
	dec d			;d301
ld302h:
	jp pe,lf904h		;d302
ld305h:
	inc hl			;d305
ld306h:
	or d			;d306
ld307h:
	pop de			;d307
ld308h:
	add a,b			;d308
ld309h:
	ret m			;d309
ld30ah:
	inc de			;d30a
ld30bh:
	jp pe,led08h		;d30b
	add a,c			;d30e
	dec (hl)		;d30f
	inc bc			;d310
	inc bc			;d311
	ld hl,l5541h		;d312
	ld b,c			;d315
	ld hl,ld20ch+1		;d316
	jr nc,ld34bh		;d319
	add a,c			;d31b
	pop de			;d31c
	ld bc,051d2h		;d31d
ld320h:
	and c			;d320
ld321h:
	pop de			;d321
ld322h:
	jr nz,$-14		;d322
	ld b,a			;d324
	ld d,c			;d325
	ld (hl),c		;d326
ld327h:
	jp (hl)			;d327
	ld b,0a5h		;d328
	sub c			;d32a
	ld (hl),e		;d32b
	ld e,e			;d32c
	ld c,a			;d32d
	rst 38h			;d32e
	jp nc,l939bh		;d32f
	or e			;d332
	pop de			;d333
	inc bc			;d334
ld335h:
	ld d,l			;d335
	ld b,l			;d336
	dec b			;d337
	jp m,l01fch+2		;d338
	rst 28h			;d33b
	inc bc			;d33c
	ret m			;d33d
	inc de			;d33e
	jp (hl)			;d33f
ld340h:
	dec b			;d340
ld341h:
	jp pe,ld206h		;d341
	defb 0edh ;next byte illegal after ed	;d344
	add a,c			;d345
	dec (hl)		;d346
	ld (bc),a		;d347
	ld sp,hl		;d348
	ld a,(bc)		;d349
	or d			;d34a
ld34bh:
	ld a,(bc)		;d34b
	jp pe,lef05h		;d34c
	ld (bc),a		;d34f
ld350h:
	ld sp,hl		;d350
ld351h:
	inc hl			;d351
	or d			;d352
	pop de			;d353
	add a,b			;d354
ld355h:
	ret p			;d355
	rst 28h			;d356
	ld (bc),a		;d357
	pop af			;d358
	ld d,l			;d359
	ret m			;d35a
	inc de			;d35b
	jp (hl)			;d35c
	dec b			;d35d
	jp pe,0d106h		;d35e
	defb 0edh ;next byte illegal after ed	;d361
	add a,c			;d362
	dec d			;d363
	ld (l33f9h),hl		;d364
ld367h:
	or d			;d367
	ld sp,hl		;d368
	jp m,l48b3h		;d369
	jp pe,02906h		;d36c
	jp nc,0f0bdh		;d36f
	jp p,l15f8h		;d372
	rst 28h			;d375
	ld bc,l05e9h		;d376
	jp pe,0d106h		;d379
	defb 0edh ;next byte illegal after ed	;d37c
	nop			;d37d
	dec d			;d37e
	pop af			;d37f
	ld d,e			;d380
sub_d381h:
	di			;d381
	jr ld385h		;d382
	ld sp,hl		;d384
ld385h:
	ld e,b			;d385
	or d			;d386
	ld sp,hl		;d387
	cpl			;d388
	or e			;d389
	inc hl			;d38a
	ex de,hl		;d38b
	ld (bc),a		;d38c
	ld a,(bc)		;d38d
	dec bc			;d38e
	ret p			;d38f
ld390h:
	jp nc,0a383h		;d390
	pop de			;d393
	inc bc			;d394
	jp nc,0f88bh		;d395
	rla			;d398
	jp pe,la307h		;d399
	pop de			;d39c
	inc hl			;d39d
	ld d,e			;d39e
	jp p,l02efh		;d39f
	pop af			;d3a2
	ld d,l			;d3a3
	ret m			;d3a4
	inc de			;d3a5
	jp (hl)			;d3a6
	dec b			;d3a7
	jp pe,0d106h		;d3a8
	defb 0edh ;next byte illegal after ed	;d3ab
	add a,c			;d3ac
	dec d			;d3ad
	ld (l33f9h),hl		;d3ae
sub_d3b1h:
	or d			;d3b1
	ld sp,hl		;d3b2
sub_d3b3h:
	jp m,04bb3h		;d3b3
	add hl,hl		;d3b6
	jp nc,lf0bah		;d3b7
	jp p,003efh		;d3ba
	ret m			;d3bd
	inc de			;d3be
	jp (hl)			;d3bf
	dec b			;d3c0
	jp pe,ld206h		;d3c1
	defb 0edh ;next byte illegal after ed	;d3c4
	add a,c			;d3c5
	dec (hl)		;d3c6
	ld (bc),a		;d3c7
	ld sp,hl		;d3c8
	ld a,(bc)		;d3c9
	or d			;d3ca
	ld a,(bc)		;d3cb
	jp pe,lef04h		;d3cc
	ld (bc),a		;d3cf
	ld sp,hl		;d3d0
	inc hl			;d3d1
	or d			;d3d2
	pop de			;d3d3
	add a,b			;d3d4
	rst 28h			;d3d5
	inc bc			;d3d6
	ret m			;d3d7
	inc de			;d3d8
	jp pe,00206h		;d3d9
	inc bc			;d3dc
	inc bc			;d3dd
	ld hl,l5541h		;d3de
	ld b,c			;d3e1
	ld hl,ld20ch+1		;d3e2
	jr nc,ld417h		;d3e5
	add a,c			;d3e7
	pop de			;d3e8
	ld bc,051d2h		;d3e9
	and c			;d3ec
	pop de			;d3ed
	ld hl,l2107h		;d3ee
	ld b,c			;d3f1
	jp (hl)			;d3f2
	ld b,055h		;d3f3
	ld b,c			;d3f5
	ld hl,00f0bh		;d3f6
	rst 38h			;d3f9
ld3fah:
	ret m			;d3fa
	dec d			;d3fb
	jp pe,ld209h		;d3fc
	ld (hl),e		;d3ff
	pop de			;d400
	inc bc			;d401
	ld b,e			;d402
	ret m			;d403
	inc de			;d404
	jp pe,l4b06h		;d405
ld408h:
	ret m			;d408
ld409h:
	dec d			;d409
ld40ah:
	jp pe,ld209h		;d40a
ld40dh:
	sub e			;d40d
	pop de			;d40e
	inc bc			;d40f
	ld b,e			;d410
	ret m			;d411
	inc de			;d412
	jp pe,l5b06h		;d413
	ld c,e			;d416
ld417h:
	add hl,bc		;d417
	dec l			;d418
	ld e,e			;d419
	jp m,l7af9h		;d41a
	or h			;d41d
	ld sp,hl		;d41e
	add a,a			;d41f
	or h			;d420
	defb 0edh ;next byte illegal after ed	;d421
	add a,d			;d422
ld423h:
	inc (hl)		;d423
	ld sp,hl		;d424
	sbc a,a			;d425
	or h			;d426
	out (0bbh),a		;d427
	jp nc,le92bh		;d429
	ld a,(bc)		;d42c
	ld e,e			;d42d
	ret m			;d42e
	ld a,(bc)		;d42f
	jp (hl)			;d430
	ld a,(bc)		;d431
	ld a,e			;d432
ld433h:
	ld a,e			;d433
	ld a,e			;d434
	sbc a,e			;d435
	sbc a,e			;d436
	sbc a,e			;d437
	ex de,hl		;d438
	ld (bc),a		;d439
	ex af,af'		;d43a
	ld a,e			;d43b
	xor e			;d43c
	jp (hl)			;d43d
	dec b			;d43e
	ld sp,hl		;d43f
ld440h:
	sbc a,a			;d440
ld441h:
	or h			;d441
	out (0edh),a		;d442
ld444h:
	add a,c			;d444
	ld d,h			;d445
	or c			;d446
	or c			;d447
	or c			;d448
	or c			;d449
	or c			;d44a
	or c			;d44b
	jp nc,laef9h		;d44c
	or h			;d44f
ld450h:
	ld hl,l211fh+2		;d450
	ld hl,l211fh+2		;d453
	ret p			;d456
	ret m			;d457
	inc d			;d458
	defb 0edh ;next byte illegal after ed	;d459
	add a,d			;d45a
	inc (hl)		;d45b
	ld sp,hl		;d45c
	add a,a			;d45d
	or h			;d45e
	defb 0edh ;next byte illegal after ed	;d45f
	add a,d			;d460
ld461h:
	inc (hl)		;d461
	inc bc			;d462
	inc bc			;d463
ld464h:
	inc bc			;d464
	jp nc,0a3a5h		;d465
	adc a,l			;d468
	add a,l			;d469
	and l			;d46a
	pop de			;d46b
	inc bc			;d46c
	inc bc			;d46d
	inc bc			;d46e
	jp nc,l06e8h+1		;d46f
	and l			;d472
	sub l			;d473
	defb 0edh ;next byte illegal after ed	;d474
	adc a,b			;d475
	ld (hl),c		;d476
	ld a,e			;d477
	ld a,a			;d478
	rst 38h			;d479
	cp 001h			;d47a
	ret m			;d47c
	inc d			;d47d
	jp (hl)			;d47e
	dec b			;d47f
ld480h:
	jp pe,ld208h		;d480
	defb 0edh ;next byte illegal after ed	;d483
	add a,d			;d484
	inc (hl)		;d485
	jp m,l03d1h		;d486
	inc bc			;d489
	inc bc			;d48a
	jp nc,0a3a5h		;d48b
	adc a,l			;d48e
	add a,l			;d48f
	and l			;d490
	pop de			;d491
	inc bc			;d492
	inc bc			;d493
	inc bc			;d494
	jp nc,0a3a5h		;d495
	adc a,l			;d498
	defb 0edh ;next byte illegal after ed	;d499
	adc a,b			;d49a
	sub c			;d49b
	pop de			;d49c
	dec bc			;d49d
	jp m,l0df8h		;d49e
sub_d4a1h:
	out (0bbh),a		;d4a1
	ex de,hl		;d4a3
	ld b,003h		;d4a4
	xor e			;d4a6
	xor e			;d4a7
	jp nc,leb0bh		;d4a8
	inc c			;d4ab
	inc b			;d4ac
	jp m,l211fh+2		;d4ad
sub_d4b0h:
	ld hl,l211fh+2		;d4b0
	ld hl,05151h		;d4b3
	ld d,c			;d4b6
	ld d,c			;d4b7
	ld d,c			;d4b8
	ld d,c			;d4b9
	jp m,l7af9h		;d4ba
	or h			;d4bd
	ld sp,hl		;d4be
	ld e,0b5h		;d4bf
	ret m			;d4c1
	dec c			;d4c2
	jp pe,led09h		;d4c3
	add a,d			;d4c6
	ld b,h			;d4c7
	ld sp,hl		;d4c8
	ld sp,l2bb4h+1		;d4c9
	ld e,e			;d4cc
	jp (hl)			;d4cd
	ld a,(bc)		;d4ce
	adc a,e			;d4cf
	ret m			;d4d0
	ld a,(bc)		;d4d1
	jp pe,led08h		;d4d2
	add a,d			;d4d5
	inc (hl)		;d4d6
	dec bc			;d4d7
	ex de,hl		;d4d8
	dec c			;d4d9
	inc bc			;d4da
	dec hl			;d4db
	ret m			;d4dc
	dec c			;d4dd
	jp (hl)			;d4de
	dec b			;d4df
	jp pe,ld209h		;d4e0
	defb 0edh ;next byte illegal after ed	;d4e3
	add a,d			;d4e4
	ld b,h			;d4e5
	ld sp,hl		;d4e6
	ld sp,ledb5h		;d4e7
	add a,c			;d4ea
	ld d,h			;d4eb
	ld sp,hl		;d4ec
	xor (hl)		;d4ed
	or h			;d4ee
	add a,c			;d4ef
	add a,c			;d4f0
	add a,c			;d4f1
	add a,c			;d4f2
	add a,c			;d4f3
	add a,c			;d4f4
	ld d,c			;d4f5
	ld d,c			;d4f6
	ld d,c			;d4f7
	ld d,c			;d4f8
	ld d,c			;d4f9
	ld d,c			;d4fa
	ret p			;d4fb
	ret m			;d4fc
	inc d			;d4fd
	jp pe,led08h		;d4fe
	add a,e			;d501
	inc (hl)		;d502
	ld sp,hl		;d503
	ld e,0b5h		;d504
	defb 0edh ;next byte illegal after ed	;d506
	add a,d			;d507
	inc (hl)		;d508
	ld b,e			;d509
ld50ah:
	ld b,e			;d50a
ld50bh:
	ld b,e			;d50b
	dec h			;d50c
ld50dh:
	inc hl			;d50d
	dec c			;d50e
	dec b			;d50f
	dec h			;d510
	ld b,e			;d511
	ld b,e			;d512
	ld b,e			;d513
	jp (hl)			;d514
	ld b,025h		;d515
	dec b			;d517
	defb 0edh ;next byte illegal after ed	;d518
	adc a,b			;d519
	sub c			;d51a
ld51bh:
	ld e,e			;d51b
	ld c,a			;d51c
	rst 38h			;d51d
	ld b,e			;d51e
	ld b,e			;d51f
sub_d520h:
	ld b,e			;d520
	dec h			;d521
	inc hl			;d522
	dec c			;d523
ld524h:
	dec b			;d524
ld525h:
	dec h			;d525
	ld b,e			;d526
	ld b,e			;d527
	ld b,e			;d528
	dec h			;d529
	inc hl			;d52a
	dec c			;d52b
	defb 0edh ;next byte illegal after ed	;d52c
	adc a,b			;d52d
	sub c			;d52e
	dec sp			;d52f
	jp m,leb2bh		;d530
	ex af,af'		;d533
	inc bc			;d534
	dec sp			;d535
	dec sp			;d536
	dec sp			;d537
	dec sp			;d538
	ld c,e			;d539
	ld c,e			;d53a
	ld c,e			;d53b
	ld c,e			;d53c
	ld e,e			;d53d
	ld e,e			;d53e
	ld e,e			;d53f
	ld e,e			;d540
sub_d541h:
	jp m,l01fch+2		;d541
	jp (hl)			;d544
	inc b			;d545
	rst 8			;d546
	rst 8			;d547
	rst 8			;d548
	rst 8			;d549
	rst 8			;d54a
	defb 0edh ;next byte illegal after ed	;d54b
	adc a,a			;d54c
	ld (hl),b		;d54d
	jp (hl)			;d54e
	inc bc			;d54f
sub_d550h:
	jp pe,ld20ch+1		;d550
	ld b,b			;d553
	jp (hl)			;d554
	rrca			;d555
ld556h:
	sbc a,a			;d556
	jp (hl)			;d557
	inc bc			;d558
	ld b,b			;d559
	jp (hl)			;d55a
	rrca			;d55b
	ld a,a			;d55c
	cp 004h			;d55d
	jp (hl)			;d55f
	dec b			;d560
	add a,c			;d561
	ld sp,l3131h		;d562
	sub c			;d565
	sub c			;d566
	sub c			;d567
	sub c			;d568
	cp 004h			;d569
	jp (hl)			;d56b
	dec b			;d56c
ld56dh:
	ld sp,hl		;d56d
	add hl,bc		;d56e
ld56fh:
	or (hl)			;d56f
sub_d570h:
	ld sp,hl		;d570
	inc de			;d571
	or (hl)			;d572
	ex de,hl		;d573
ld574h:
	inc bc			;d574
	inc c			;d575
	ld sp,hl		;d576
	dec e			;d577
	or (hl)			;d578
	sub c			;d579
ld57ah:
	sub c			;d57a
	sub c			;d57b
	sub c			;d57c
	ld sp,hl		;d57d
	add hl,bc		;d57e
	or (hl)			;d57f
ld580h:
	ld sp,hl		;d580
	inc de			;d581
	or (hl)			;d582
	ex de,hl		;d583
	inc bc			;d584
	ex af,af'		;d585
	ld sp,hl		;d586
	dec e			;d587
	or (hl)			;d588
	jr nc,ld51bh		;d589
	sub c			;d58b
ld58ch:
	sub c			;d58c
	sub c			;d58d
	add a,c			;d58e
	ld sp,00191h		;d58f
	sub c			;d592
	ld bc,l0001h		;d593
	nop			;d596
	add a,c			;d597
	add a,c			;d598
	ld bc,09101h		;d599
	ld bc,l0001h		;d59c
	djnz ld58ch		;d59f
	inc bc			;d5a1
	inc d			;d5a2
	ld sp,hl		;d5a3
	dec e			;d5a4
	or (hl)			;d5a5
	sub c			;d5a6
	sub c			;d5a7
	sub c			;d5a8
	sub c			;d5a9
	ld sp,hl		;d5aa
	add hl,bc		;d5ab
	or (hl)			;d5ac
	ld sp,hl		;d5ad
	inc de			;d5ae
	or (hl)			;d5af
	ld sp,hl		;d5b0
	add hl,bc		;d5b1
	or (hl)			;d5b2
	add a,e			;d5b3
	inc bc			;d5b4
	inc bc			;d5b5
	inc bc			;d5b6
	cp 004h			;d5b7
	jp (hl)			;d5b9
	ld a,(bc)		;d5ba
	add a,e			;d5bb
	add a,e			;d5bc
	add a,e			;d5bd
	add a,e			;d5be
	add a,e			;d5bf
	add a,e			;d5c0
	add a,e			;d5c1
	sub b			;d5c2
	sub b			;d5c3
	sub b			;d5c4
	sub b			;d5c5
	ex de,hl		;d5c6
	ld b,00dh		;d5c7
	add a,e			;d5c9
	sub d			;d5ca
	nop			;d5cb
	add a,e			;d5cc
	sub d			;d5cd
	nop			;d5ce
	add a,e			;d5cf
	sub d			;d5d0
ld5d1h:
	djnz ld556h		;d5d1
	sub b			;d5d3
	sub b			;d5d4
	sub b			;d5d5
	sub b			;d5d6
	add a,b			;d5d7
	sub b			;d5d8
	nop			;d5d9
	djnz ld56fh		;d5da
	add a,e			;d5dc
	sub d			;d5dd
	nop			;d5de
	add a,e			;d5df
	sub d			;d5e0
	nop			;d5e1
	add a,e			;d5e2
	sub d			;d5e3
	djnz ld5d1h		;d5e4
	ld (bc),a		;d5e6
	djnz $-2		;d5e7
	ld (bc),a		;d5e9
	ret			;d5ea
	or l			;d5eb
	add a,c			;d5ec
	nop			;d5ed
	nop			;d5ee
	sub c			;d5ef
	nop			;d5f0
	djnz ld574h		;d5f1
	nop			;d5f3
	nop			;d5f4
	sub c			;d5f5
	nop			;d5f6
	djnz ld57ah		;d5f7
	nop			;d5f9
	nop			;d5fa
	sub c			;d5fb
	nop			;d5fc
ld5fdh:
	djnz ld580h		;d5fd
	nop			;d5ff
	nop			;d600
ld601h:
	sub b			;d601
	sub b			;d602
	ld de,l04eah+1		;d603
	ld a,(de)		;d606
	rrca			;d607
	rst 38h			;d608
	add a,c			;d609
	ld bc,l0101h		;d60a
	sub c			;d60d
	ld bc,l0001h		;d60e
	nop			;d611
	jp m,l8181h		;d612
	ld bc,09101h		;d615
	ld bc,l0001h		;d618
	djnz $-4		;d61b
	add a,c			;d61d
	ld bc,l3131h		;d61e
	sub c			;d621
	ld bc,l0001h		;d622
	nop			;d625
	add a,c			;d626
	add a,c			;d627
	ld sp,lfa31h		;d628
	cp 001h			;d62b
	jp (hl)			;d62d
	inc b			;d62e
	rst 8			;d62f
	rst 8			;d630
	rst 8			;d631
	rst 8			;d632
	rst 8			;d633
	defb 0edh ;next byte illegal after ed	;d634
	adc a,a			;d635
	ld (hl),b		;d636
	jp (hl)			;d637
	inc bc			;d638
	jp nc,sub_fefah		;d639
	ld bc,004e9h		;d63c
	rst 8			;d63f
	rst 8			;d640
	rst 8			;d641
	rst 8			;d642
	rst 8			;d643
	defb 0edh ;next byte illegal after ed	;d644
	adc a,a			;d645
	ld (hl),b		;d646
	jp (hl)			;d647
	inc bc			;d648
	jp nc,00deah		;d649
	sub b			;d64c
	jp (hl)			;d64d
	rrca			;d64e
	pop de			;d64f
	rrca			;d650
	jp (hl)			;d651
	inc bc			;d652
	jp nc,0e990h		;d653
	rrca			;d656
	cp a			;d657
	ld sp,hl		;d658
	ret nz			;d659
	or (hl)			;d65a
	jp pe,l9108h		;d65b
	jp pe,l9109h		;d65e
	jp pe,l910ah		;d661
	jp pe,l910bh		;d664
	sub c			;d667
	jp pe,l910bh+1		;d668
	sub c			;d66b
	defb 0edh ;next byte illegal after ed	;d66c
	ld bc,lfe34h		;d66d
	ld bc,l05e9h		;d670
	jp pe,0d407h		;d673
	defb 0edh ;next byte illegal after ed	;d676
	ld bc,lea34h		;d677
	inc c			;d67a
	ld sp,hl		;d67b
	or b			;d67c
	or (hl)			;d67d
	out (041h),a		;d67e
	call nc,sub_fc43h	;d680
	ld (bc),a		;d683
	ld l,a			;d684
	or (hl)			;d685
	call nc,00deah		;d686
	defb 0edh ;next byte illegal after ed	;d689
	ld bc,lf934h		;d68a
	sub a			;d68d
	or (hl)			;d68e
	jp pe,lf90ch		;d68f
	and b			;d692
	or (hl)			;d693
	ld sp,hl		;d694
	ld b,e			;d695
	cp d			;d696
	ld d,a			;d697
	ld d,a			;d698
	ld d,a			;d699
	ld d,a			;d69a
	ld h,a			;d69b
	ld h,a			;d69c
	ld h,a			;d69d
	ld h,a			;d69e
	jp m,l5757h		;d69f
	ld d,a			;d6a2
	ld d,a			;d6a3
	ld (hl),a		;d6a4
	ld (hl),a		;d6a5
	ld (hl),a		;d6a6
	ld (hl),a		;d6a7
	or a			;d6a8
	or a			;d6a9
	or a			;d6aa
	or a			;d6ab
	jp (hl)			;d6ac
	ld a,(bc)		;d6ad
	ld c,a			;d6ae
	jp m,leb97h		;d6af
	rlca			;d6b2
	inc bc			;d6b3
	sub e			;d6b4
	ld b,c			;d6b5
	ld sp,02727h		;d6b6
	daa			;d6b9
	daa			;d6ba
	ld b,a			;d6bb
	ld b,a			;d6bc
	ld b,a			;d6bd
	ld b,c			;d6be
	jp m,l01fch+2		;d6bf
	jp (hl)			;d6c2
	dec b			;d6c3
	jp pe,0d407h		;d6c4
	defb 0edh ;next byte illegal after ed	;d6c7
	add a,c			;d6c8
	ld sp,0fa91h		;d6c9
	rst 28h			;d6cc
	dec bc			;d6cd
	ld sp,hl		;d6ce
	dec bc			;d6cf
	or a			;d6d0
	ld sp,hl		;d6d1
	ld hl,(0f9b7h)		;d6d2
	ret nz			;d6d5
	or (hl)			;d6d6
	jp pe,l9106h		;d6d7
ld6dah:
	jp pe,l9107h		;d6da
	jp pe,l9108h		;d6dd
	jp pe,l9109h		;d6e0
	sub c			;d6e3
	jp pe,l910ah		;d6e4
	sub c			;d6e7
	defb 0edh ;next byte illegal after ed	;d6e8
	ld bc,lfe34h		;d6e9
	ld bc,l05e9h		;d6ec
	jp pe,ld50ah		;d6ef
	defb 0edh ;next byte illegal after ed	;d6f2
	ld bc,lf934h		;d6f3
	or b			;d6f6
	or (hl)			;d6f7
	call nc,sub_d541h	;d6f8
	ld b,e			;d6fb
	call m,sub_eb02h	;d6fc
ld6ffh:
	or (hl)			;d6ff
	jp pe,lf90ah		;d700
	sub a			;d703
	or (hl)			;d704
	ld sp,hl		;d705
	and b			;d706
	or (hl)			;d707
	ld sp,hl		;d708
	cp b			;d709
	cp d			;d70a
	cp 001h			;d70b
	jp (hl)			;d70d
	inc b			;d70e
	push de			;d70f
	rst 28h			;d710
	dec bc			;d711
	jp pe,l9303h		;d712
	jp pe,l9304h		;d715
	jp pe,l9305h		;d718
	jp pe,l9306h		;d71b
	jp pe,l9306h+1		;d71e
	jp pe,l9308h		;d721
	jp pe,l9308h+1		;d724
	jp pe,lfa0ah		;d727
	rst 28h			;d72a
	rrca			;d72b
	sbc a,a			;d72c
	rst 28h			;d72d
	inc c			;d72e
	sbc a,a			;d72f
	rst 28h			;d730
	add hl,bc		;d731
	sbc a,a			;d732
	rst 28h			;d733
	inc c			;d734
	sbc a,a			;d735
	jp pe,lef09h		;d736
	rrca			;d739
	sbc a,a			;d73a
	rst 28h			;d73b
	inc c			;d73c
	sbc a,a			;d73d
	rst 28h			;d73e
	add hl,bc		;d73f
	sbc a,a			;d740
	rst 28h			;d741
	inc c			;d742
	sbc a,a			;d743
	jp pe,lef08h		;d744
	rrca			;d747
	sbc a,a			;d748
	rst 28h			;d749
	inc c			;d74a
	sbc a,a			;d74b
	rst 28h			;d74c
	add hl,bc		;d74d
	sbc a,h			;d74e
	jp (hl)			;d74f
	ld bc,0fac1h		;d750
	ret m			;d753
	ld (bc),a		;d754
	ld sp,hl		;d755
	dec bc			;d756
	or a			;d757
	sbc a,a			;d758
	sbc a,a			;d759
	sbc a,a			;d75a
	sbc a,a			;d75b
	jp pe,l9f0ah		;d75c
	sbc a,a			;d75f
	sbc a,a			;d760
	sbc a,a			;d761
	jp pe,l9f09h		;d762
	sbc a,a			;d765
	sbc a,h			;d766
	jp (hl)			;d767
	ld bc,0f0c1h		;d768
	ret m			;d76b
	ld a,(bc)		;d76c
	jp (hl)			;d76d
	dec b			;d76e
	jp pe,ld101h+1		;d76f
	xor 090h		;d772
	add a,b			;d774
	ld (hl),b		;d775
	ld h,b			;d776
	ld d,b			;d777
	ld b,b			;d778
	jr nc,ld79bh		;d779
	djnz ld77dh		;d77b
ld77dh:
	jp nc,la0b0h		;d77d
	sub b			;d780
	add a,b			;d781
	ld (hl),b		;d782
	ld h,b			;d783
	ret m			;d784
	dec c			;d785
	jp (hl)			;d786
	ld a,(bc)		;d787
	jp pe,ld308h		;d788
	defb 0edh ;next byte illegal after ed	;d78b
	add a,e			;d78c
	ld b,h			;d78d
	or c			;d78e
	jp nc,02101h		;d78f
	ld b,e			;d792
	inc bc			;d793
	ld b,e			;d794
	inc hl			;d795
	out (0b3h),a		;d796
	jp nc,l2102h+1		;d798
ld79bh:
	ld b,a			;d79b
	inc hl			;d79c
	out (093h),a		;d79d
	ld (hl),a		;d79f
	jp nc,ld307h		;d7a0
	or c			;d7a3
	jp nc,02101h		;d7a4
	ld b,e			;d7a7
	inc bc			;d7a8
	sub e			;d7a9
	ld b,e			;d7aa
	inc hl			;d7ab
	inc bc			;d7ac
	ld hl,l2347h		;d7ad
	out (093h),a		;d7b0
	ld (hl),e		;d7b2
	jp nc,l4303h		;d7b3
	ld (hl),e		;d7b6
	defb 0edh ;next byte illegal after ed	;d7b7
	add a,e			;d7b8
	ld b,h			;d7b9
	ld (hl),a		;d7ba
	ld d,a			;d7bb
	ld b,a			;d7bc
	rlca			;d7bd
	out (091h),a		;d7be
	or c			;d7c0
	jp nc,l2901h		;d7c1
	out (091h),a		;d7c4
	or c			;d7c6
	jp nc,l2301h		;d7c7
	inc bc			;d7ca
	out (0b1h),a		;d7cb
	sub a			;d7cd
	jp nc,l4f27h		;d7ce
	ld sp,hl		;d7d1
	dec l			;d7d2
	cp e			;d7d3
	cp 001h			;d7d4
	ret m			;d7d6
	ld (bc),a		;d7d7
	jp (hl)			;d7d8
	ld (bc),a		;d7d9
	push de			;d7da
	rst 28h			;d7db
	dec bc			;d7dc
	jp pe,l9301h		;d7dd
	jp pe,l9302h		;d7e0
	jp pe,l9303h		;d7e3
	jp pe,l9304h		;d7e6
	jp pe,l9305h		;d7e9
	jp pe,l9306h		;d7ec
	jp pe,l9306h+1		;d7ef
	jp pe,l9308h		;d7f2
	jp pe,l9709h		;d7f5
	sub a			;d7f8
	sub a			;d7f9
	jp (hl)			;d7fa
	inc b			;d7fb
	jp pe,lef09h+1		;d7fc
	rrca			;d7ff
	sbc a,a			;d800
ld801h:
	rst 28h			;d801
	dec bc			;d802
	sbc a,a			;d803
	rst 28h			;d804
	rlca			;d805
	sbc a,a			;d806
	rst 28h			;d807
	dec bc			;d808
	sbc a,a			;d809
	jp pe,lef09h		;d80a
	rrca			;d80d
	sbc a,a			;d80e
	rst 28h			;d80f
	dec bc			;d810
	sbc a,a			;d811
	rst 28h			;d812
	rlca			;d813
sub_d814h:
	sbc a,a			;d814
	rst 28h			;d815
	dec bc			;d816
	sbc a,a			;d817
	jp pe,lef08h		;d818
	rrca			;d81b
	sbc a,a			;d81c
	rst 28h			;d81d
	dec bc			;d81e
	sbc a,a			;d81f
	rst 28h			;d820
	rlca			;d821
	sbc a,h			;d822
	jp (hl)			;d823
	ld bc,0f0c1h		;d824
	cp 001h			;d827
	rst 28h			;d829
	ld (bc),a		;d82a
	ret m			;d82b
	ld a,(bc)		;d82c
	jp (hl)			;d82d
	dec b			;d82e
	jp pe,ld101h+1		;d82f
	xor 090h		;d832
	add a,b			;d834
	ld (hl),b		;d835
	sub b			;d836
	add a,b			;d837
	ld (hl),b		;d838
	ld h,b			;d839
	ld d,b			;d83a
	ld b,b			;d83b
	jr nc,$+34		;d83c
	djnz ld840h		;d83e
ld840h:
	jp nc,la0b0h		;d840
	sub b			;d843
	add a,b			;d844
	ld (hl),b		;d845
	ld h,b			;d846
	rst 28h			;d847
	ld (bc),a		;d848
	ret m			;d849
	dec c			;d84a
	jp (hl)			;d84b
	ld a,(bc)		;d84c
	jp pe,ld306h		;d84d
	defb 0edh ;next byte illegal after ed	;d850
	add a,e			;d851
	ld de,ld2b1h		;d852
	ld bc,l4321h		;d855
	inc bc			;d858
	ld b,e			;d859
	inc hl			;d85a
	out (0b3h),a		;d85b
	jp nc,l2102h+1		;d85d
	ld b,a			;d860
	inc hl			;d861
	out (093h),a		;d862
	ld (hl),a		;d864
	jp nc,ld307h		;d865
	or c			;d868
	jp nc,02101h		;d869
	ld b,e			;d86c
	inc bc			;d86d
	sub e			;d86e
	ld b,e			;d86f
	inc hl			;d870
	inc bc			;d871
	ld hl,l2347h		;d872
ld875h:
	out (093h),a		;d875
	ld (hl),e		;d877
	jp nc,l4303h		;d878
	ld (hl),c		;d87b
	jp (hl)			;d87c
	dec b			;d87d
	ret nz			;d87e
	cp 001h			;d87f
	ret m			;d881
	dec c			;d882
	jp (hl)			;d883
	ld a,(bc)		;d884
	jp pe,ld207h		;d885
sub_d888h:
	defb 0edh ;next byte illegal after ed	;d888
	add a,e			;d889
	ld sp,l2747h		;d88a
	rlca			;d88d
	out (097h),a		;d88e
	jp pe,led06h		;d890
	add a,d			;d893
	inc (hl)		;d894
	call nc,0b191h		;d895
	out (001h),a		;d898
	add hl,hl		;d89a
	rst 28h			;d89b
	ld (bc),a		;d89c
	jp (hl)			;d89d
	dec b			;d89e
	jp pe,led06h		;d89f
	add a,e			;d8a2
	ld de,le992h		;d8a3
	ld a,(bc)		;d8a6
	sub c			;d8a7
	or c			;d8a8
	jp nc,l2301h		;d8a9
	inc bc			;d8ac
	out (0b1h),a		;d8ad
	sub a			;d8af
	jp nc,04d27h		;d8b0
	jp (hl)			;d8b3
	dec b			;d8b4
	ret nz			;d8b5
	ret p			;d8b6
	ld sp,hl		;d8b7
	or h			;d8b8
	cp e			;d8b9
	cp 001h			;d8ba
	ret m			;d8bc
	ld (bc),a		;d8bd
	jp (hl)			;d8be
	ld (bc),a		;d8bf
	call nc,0eacfh		;d8c0
	ld bc,lea97h		;d8c3
	ld (bc),a		;d8c6
	sub e			;d8c7
	jp pe,l9303h		;d8c8
	jp pe,le904h		;d8cb
	ex af,af'		;d8ce
	sbc a,a			;d8cf
	sbc a,a			;d8d0
	defb 0edh ;next byte illegal after ed	;d8d1
	adc a,a			;d8d2
	ld (hl),b		;d8d3
	jp (hl)			;d8d4
	inc bc			;d8d5
	jp pe,ld20ah		;d8d6
	ld b,b			;d8d9
	jp (hl)			;d8da
	rrca			;d8db
	sbc a,a			;d8dc
	jp (hl)			;d8dd
	inc bc			;d8de
	ld b,b			;d8df
	jp (hl)			;d8e0
	rrca			;d8e1
	ld a,a			;d8e2
	ret p			;d8e3
	ret m			;d8e4
	ld a,(bc)		;d8e5
	jp (hl)			;d8e6
	dec b			;d8e7
	jp pe,ld101h+1		;d8e8
	xor 040h		;d8eb
	jr nc,ld90fh		;d8ed
	djnz ld8f1h		;d8ef
ld8f1h:
	jp nc,la0b0h		;d8f1
	sub b			;d8f4
	add a,b			;d8f5
ld8f6h:
	ld (hl),b		;d8f6
	ld h,b			;d8f7
	ld d,b			;d8f8
	ld b,b			;d8f9
	jr nc,ld91ch		;d8fa
	djnz ld8f6h		;d8fc
	ld a,(bc)		;d8fe
	jp (hl)			;d8ff
	ld a,(bc)		;d900
	jp pe,ld206h		;d901
	defb 0edh ;next byte illegal after ed	;d904
	adc a,a			;d905
	ld b,h			;d906
	rst 28h			;d907
	ld bc,l4f4fh		;d908
	rrca			;d90b
	rrca			;d90c
	ret p			;d90d
	ex de,hl		;d90e
ld90fh:
	ld (bc),a		;d90f
	add hl,bc		;d910
	cp 001h			;d911
	ret m			;d913
	ld a,(bc)		;d914
	jp (hl)			;d915
	ld a,(bc)		;d916
	jp pe,ld206h		;d917
	defb 0edh ;next byte illegal after ed	;d91a
	adc a,a			;d91b
ld91ch:
	ld d,(hl)		;d91c
	rst 28h			;d91d
	ld bc,05347h		;d91e
	ld d,b			;d921
	ld d,d			;d922
	ld b,a			;d923
	ld b,e			;d924
	ld b,b			;d925
	ld b,d			;d926
	ld bc,l4121h		;d927
	ld d,l			;d92a
	ld d,b			;d92b
	ld d,d			;d92c
	ld bc,l4121h		;d92d
	ld d,l			;d930
	ld d,b			;d931
	ld d,d			;d932
	daa			;d933
	ld h,a			;d934
	ld b,a			;d935
	ld b,a			;d936
	ld sp,hl		;d937
	ld d,a			;d938
	cp h			;d939
	cp 001h			;d93a
	ret m			;d93c
	ld (bc),a		;d93d
	jp (hl)			;d93e
	inc b			;d93f
	jp pe,ld301h		;d940
	rst 8			;d943
	sbc a,a			;d944
	jp pe,09f02h		;d945
	sbc a,a			;d948
	sbc a,a			;d949
	ret p			;d94a
	defb 0edh ;next byte illegal after ed	;d94b
	adc a,a			;d94c
	ld (hl),b		;d94d
	jp (hl)			;d94e
	inc bc			;d94f
	jp pe,ld20ah		;d950
	ld b,b			;d953
	jp (hl)			;d954
	rrca			;d955
	sbc a,a			;d956
	jp (hl)			;d957
	inc bc			;d958
	ld b,b			;d959
	jp (hl)			;d95a
	rrca			;d95b
	ld a,a			;d95c
	ret p			;d95d
	cp 001h			;d95e
	rst 28h			;d960
	ld (bc),a		;d961
	ret m			;d962
	ld a,(bc)		;d963
	jp (hl)			;d964
	dec b			;d965
	jp pe,ld101h+1		;d966
	xor 040h		;d969
	jr nc,ld98dh		;d96b
	ld b,b			;d96d
	jr nc,ld990h		;d96e
	djnz ld972h		;d970
ld972h:
	jp nc,la0b0h		;d972
	sub b			;d975
	add a,b			;d976
	ld (hl),b		;d977
	ld h,b			;d978
	ld d,b			;d979
	ld b,b			;d97a
	ret m			;d97b
	ld a,(bc)		;d97c
	jp (hl)			;d97d
	ld a,(bc)		;d97e
	jp pe,led06h		;d97f
	adc a,a			;d982
	ld b,h			;d983
	rst 28h			;d984
	ld bc,l0fd2h		;d985
	rrca			;d988
	out (09fh),a		;d989
	ld a,a			;d98b
	ret p			;d98c
ld98dh:
	ex de,hl		;d98d
	ld (bc),a		;d98e
	dec bc			;d98f
ld990h:
	ret m			;d990
	ld a,(bc)		;d991
	jp (hl)			;d992
	ld a,(bc)		;d993
	jp pe,ld206h		;d994
	defb 0edh ;next byte illegal after ed	;d997
	adc a,a			;d998
	ld d,(hl)		;d999
	rst 28h			;d99a
	ld bc,l0307h		;d99b
	nop			;d99e
	ld (bc),a		;d99f
	rlca			;d9a0
	inc bc			;d9a1
	nop			;d9a2
	ld (bc),a		;d9a3
	out (091h),a		;d9a4
	or c			;d9a6
	jp nc,l2501h		;d9a7
	jr nz,ld9ceh		;d9aa
	out (091h),a		;d9ac
	or c			;d9ae
	jp nc,l2501h		;d9af
	jr nz,$+36		;d9b2
	out (097h),a		;d9b4
	jp nc,ld327h		;d9b6
	or a			;d9b9
	or a			;d9ba
	ld sp,hl		;d9bb
	add hl,bc		;d9bc
	cp l			;d9bd
ld9beh:
	cp 001h			;d9be
	ret m			;d9c0
	ld (bc),a		;d9c1
	jp (hl)			;d9c2
	inc b			;d9c3
	jp pe,ld201h		;d9c4
	rst 8			;d9c7
	sbc a,a			;d9c8
	jp pe,09f02h		;d9c9
	sbc a,a			;d9cc
	sbc a,a			;d9cd
ld9ceh:
	ret p			;d9ce
	defb 0edh ;next byte illegal after ed	;d9cf
	adc a,a			;d9d0
	ld (hl),b		;d9d1
	jp (hl)			;d9d2
	inc bc			;d9d3
	jp pe,ld20ah		;d9d4
	sub b			;d9d7
	jp (hl)			;d9d8
	rrca			;d9d9
	pop de			;d9da
	rrca			;d9db
	jp (hl)			;d9dc
	inc bc			;d9dd
	jp nc,0e990h		;d9de
	rrca			;d9e1
	cp a			;d9e2
	ret p			;d9e3
	cp 001h			;d9e4
	ret m			;d9e6
	ld a,(bc)		;d9e7
	jp (hl)			;d9e8
	dec b			;d9e9
	jp pe,ld302h		;d9ea
	xor 040h		;d9ed
	jr nc,lda11h		;d9ef
	djnz ld9f3h		;d9f1
ld9f3h:
	out (0b0h),a		;d9f3
	and b			;d9f5
	sub b			;d9f6
	add a,b			;d9f7
ld9f8h:
	ld (hl),b		;d9f8
	ld h,b			;d9f9
	ld d,b			;d9fa
	ld b,b			;d9fb
	jr nc,lda1eh		;d9fc
	djnz ld9f8h		;d9fe
	ld a,(bc)		;da00
	jp (hl)			;da01
sub_da02h:
	ld a,(bc)		;da02
	jp pe,ld305h		;da03
	defb 0edh ;next byte illegal after ed	;da06
	adc a,a			;da07
	ld b,h			;da08
	rst 28h			;da09
	ld bc,l7f7fh		;da0a
	ld e,a			;da0d
	ld c,a			;da0e
	ret p			;da0f
	ex de,hl		;da10
lda11h:
	ld (bc),a		;da11
	add hl,bc		;da12
	cp 001h			;da13
	ret m			;da15
	ld a,(bc)		;da16
	jp (hl)			;da17
	ld a,(bc)		;da18
	jp pe,ld305h		;da19
	defb 0edh ;next byte illegal after ed	;da1c
	adc a,a			;da1d
lda1eh:
	ld d,(hl)		;da1e
	rst 28h			;da1f
	ld bc,09397h		;da20
	sub b			;da23
	sub d			;da24
	sub a			;da25
	sub e			;da26
	sub b			;da27
	sub d			;da28
	out (091h),a		;da29
	or c			;da2b
	jp nc,l2501h		;da2c
	jr nz,lda53h		;da2f
	out (051h),a		;da31
	ld (hl),c		;da33
	sub c			;da34
	jp nc,02025h		;da35
	ld (l67d3h),hl		;da38
	jp nc,ld367h		;da3b
	sub a			;da3e
	add a,a			;da3f
	ld sp,hl		;da40
	ld a,(hl)		;da41
	cp l			;da42
	cp 001h			;da43
	jp (hl)			;da45
	ld a,(bc)		;da46
	jp pe,ld40ah+2		;da47
	defb 0edh ;next byte illegal after ed	;da4a
	ld bc,09355h		;da4b
	sub e			;da4e
	sub e			;da4f
	sub e			;da50
	sub e			;da51
	sub e			;da52
lda53h:
	sub e			;da53
	sub b			;da54
	ld h,b			;da55
	ld (hl),b		;da56
	add a,b			;da57
	ex de,hl		;da58
	ld b,017h		;da59
	jp (hl)			;da5b
	ld a,(bc)		;da5c
	call nc,00eeah		;da5d
	defb 0edh ;next byte illegal after ed	;da60
	ld bc,05354h		;da61
	ld d,e			;da64
	ld d,e			;da65
	ld d,e			;da66
	ld h,e			;da67
	ld h,e			;da68
	ld h,e			;da69
	ld h,e			;da6a
	jp pe,l700ch		;da6b
	ld (hl),d		;da6e
	ld (hl),e		;da6f
	ld (hl),e		;da70
	ld (hl),e		;da71
	ld (hl),b		;da72
	ld (hl),d		;da73
	ld (hl),e		;da74
lda75h:
	ld (hl),e		;da75
	ld (hl),e		;da76
	ex de,hl		;da77
	ld (bc),a		;da78
	inc c			;da79
	call m,sub_5b02h	;da7a
	cp d			;da7d
	jp (hl)			;da7e
	ld a,(bc)		;da7f
sub_da80h:
	call nc,00eeah		;da80
	defb 0edh ;next byte illegal after ed	;da83
	ld bc,05154h		;da84
	ex de,hl		;da87
	ex af,af'		;da88
	inc bc			;da89
	ld b,c			;da8a
	ex de,hl		;da8b
	ex af,af'		;da8c
	inc bc			;da8d
	ld sp,l08eah+1		;da8e
	inc bc			;da91
	ld hl,l211fh+2		;da92
	ld hl,l211fh+2		;da95
	jr nz,ldabah		;da98
	jr nc,ldadch		;da9a
	ld d,c			;da9c
	ex de,hl		;da9d
	ex af,af'		;da9e
	inc bc			;da9f
	ld b,c			;daa0
ldaa1h:
	ex de,hl		;daa1
	ex af,af'		;daa2
	inc bc			;daa3
	ld sp,l08eah+1		;daa4
	inc bc			;daa7
	ld hl,l211fh+2		;daa8
	ld hl,l211fh+2		;daab
ldaaeh:
	jr nz,ldad0h		;daae
	sub b			;dab0
	jr nz,ldaa1h		;dab1
	jp pe,l7b09h		;dab3
	ld a,a			;dab6
	rst 38h			;dab7
	cp 001h			;dab8
ldabah:
	jp (hl)			;daba
	ld a,(bc)		;dabb
	jp pe,ld50dh		;dabc
	defb 0edh ;next byte illegal after ed	;dabf
	ld bc,09355h		;dac0
	sub e			;dac3
	sub e			;dac4
	sub e			;dac5
	sub e			;dac6
	sub e			;dac7
	sub e			;dac8
	sub b			;dac9
	ld h,b			;daca
	ld (hl),b		;dacb
	add a,b			;dacc
	ex de,hl		;dacd
	ld b,00dh		;dace
ldad0h:
	jp (hl)			;dad0
	ld a,(bc)		;dad1
	push de			;dad2
	jp pe,led0ch		;dad3
	ld bc,05354h		;dad6
	ld d,e			;dad9
ldadah:
	ld d,e			;dada
	ld d,e			;dadb
ldadch:
	ld h,e			;dadc
	ld h,e			;dadd
	ld h,e			;dade
	ld h,e			;dadf
	jp pe,l700ch+1		;dae0
	ld (hl),d		;dae3
	ld (hl),e		;dae4
	ld (hl),e		;dae5
	ld (hl),e		;dae6
	ld (hl),b		;dae7
	ld (hl),d		;dae8
	ld (hl),e		;dae9
	ld (hl),e		;daea
	ld (hl),e		;daeb
	ex de,hl		;daec
	ld (bc),a		;daed
	inc c			;daee
	call m,sub_d002h	;daef
	cp d			;daf2
	jp (hl)			;daf3
	ld a,(bc)		;daf4
	push de			;daf5
	jp pe,led0ch		;daf6
ldaf9h:
	ld bc,05154h		;daf9
	ex de,hl		;dafc
	ex af,af'		;dafd
	inc bc			;dafe
	ld b,c			;daff
	ex de,hl		;db00
	ex af,af'		;db01
	inc bc			;db02
	ld sp,l08eah+1		;db03
	inc bc			;db06
	ld hl,l211fh+2		;db07
	ld hl,l211fh+2		;db0a
	jr nz,ldb2fh		;db0d
	jr nc,ldb51h		;db0f
	ld d,c			;db11
	ex de,hl		;db12
	ex af,af'		;db13
	inc bc			;db14
	ld b,c			;db15
ldb16h:
	ex de,hl		;db16
	ex af,af'		;db17
	inc bc			;db18
	ld sp,l08eah+1		;db19
	inc bc			;db1c
	ld hl,l211fh+2		;db1d
	ld hl,l211fh+2		;db20
	jr nz,ldb45h		;db23
	sub b			;db25
	jr nz,ldb16h		;db26
	jp pe,l7b09h		;db28
	ld a,e			;db2b
	rst 38h			;db2c
	cp 001h			;db2d
ldb2fh:
	ret m			;db2f
	dec c			;db30
	rst 28h			;db31
	ld bc,00ae9h		;db32
	jp pe,ld40ah+2		;db35
	defb 0edh ;next byte illegal after ed	;db38
	add a,c			;db39
	add a,l			;db3a
	sub e			;db3b
	sub e			;db3c
	sub e			;db3d
	sub e			;db3e
	sub e			;db3f
	sub e			;db40
	sub e			;db41
	sub b			;db42
	ld h,b			;db43
	ld (hl),b		;db44
ldb45h:
	add a,b			;db45
	ex de,hl		;db46
	ld b,00dh		;db47
	ret p			;db49
	ret m			;db4a
	inc d			;db4b
	jp (hl)			;db4c
	ld a,(bc)		;db4d
	jp pe,ld208h		;db4e
ldb51h:
	defb 0edh ;next byte illegal after ed	;db51
	add a,e			;db52
	ld b,h			;db53
	ld (hl),a		;db54
	ld d,a			;db55
	ld b,a			;db56
	rlca			;db57
	ret m			;db58
	dec c			;db59
	rst 28h			;db5a
	ld bc,l0ceah		;db5b
	defb 0edh ;next byte illegal after ed	;db5e
	add a,c			;db5f
	add a,l			;db60
	call nc,0d370h		;db61
	ld (hl),d		;db64
	call nc,l7372h+1	;db65
	ld (hl),e		;db68
	ld (hl),b		;db69
	ld (hl),d		;db6a
	ld (hl),e		;db6b
	ld (hl),e		;db6c
	ld (hl),e		;db6d
	ex de,hl		;db6e
	ld (bc),a		;db6f
	jr $-14			;db70
	call m,sub_4a02h	;db72
	cp e			;db75
	jp (hl)			;db76
	ld a,(bc)		;db77
	ret m			;db78
	dec c			;db79
	rst 28h			;db7a
	ld bc,l0ceah		;db7b
	defb 0edh ;next byte illegal after ed	;db7e
	add a,c			;db7f
	add a,l			;db80
	call nc,0eb51h		;db81
	ex af,af'		;db84
	inc bc			;db85
	ld b,c			;db86
	ex de,hl		;db87
	ex af,af'		;db88
	inc bc			;db89
	ld sp,l08eah+1		;db8a
	inc bc			;db8d
	ld hl,l211fh+2		;db8e
	ld hl,l211fh+2		;db91
	jr nz,ldbb6h		;db94
	jr nc,ldbd8h		;db96
	ld d,c			;db98
	ex de,hl		;db99
	ex af,af'		;db9a
	inc bc			;db9b
	ld b,c			;db9c
ldb9dh:
	ex de,hl		;db9d
	ex af,af'		;db9e
	inc bc			;db9f
	ld sp,l08eah+1		;dba0
	inc bc			;dba3
	ld hl,l211fh+2		;dba4
	ld hl,l211fh+2		;dba7
	jr nz,ldbcch		;dbaa
	sub b			;dbac
	jr nz,ldb9dh		;dbad
	jp pe,l7b05h		;dbaf
	ld a,a			;dbb2
	rst 38h			;dbb3
	cp 001h			;dbb4
ldbb6h:
	ret m			;dbb6
	ld (bc),a		;dbb7
	jp (hl)			;dbb8
	ld a,(bc)		;dbb9
	jp pe,ld107h+1		;dbba
	defb 0edh ;next byte illegal after ed	;dbbd
	add a,c			;dbbe
	dec (hl)		;dbbf
	pop af			;dbc0
	ld d,e			;dbc1
	di			;dbc2
	jr nz,ldc0ch		;dbc3
	ld (hl),a		;dbc5
	ld h,a			;dbc6
	ld d,a			;dbc7
	ex de,hl		;dbc8
	ld (bc),a		;dbc9
	ld b,0f8h		;dbca
ldbcch:
	inc d			;dbcc
	jp pe,ld309h		;dbcd
	ld (hl),b		;dbd0
	sub b			;dbd1
	or b			;dbd2
	jp nc,04700h		;dbd3
	ld (hl),e		;dbd6
	ld h,a			;dbd7
ldbd8h:
	ld d,d			;dbd8
	ld (hl),d		;dbd9
	ld d,c			;dbda
	ret m			;dbdb
	ld (bc),a		;dbdc
	jp pe,ld107h+1		;dbdd
	ld b,a			;dbe0
	ld (hl),a		;dbe1
	ld h,a			;dbe2
	ld d,a			;dbe3
	ex de,hl		;dbe4
	ld (bc),a		;dbe5
	dec de			;dbe6
	jp p,l0df8h		;dbe7
	jp (hl)			;dbea
	ld a,(bc)		;dbeb
	jp pe,ld207h		;dbec
	defb 0edh ;next byte illegal after ed	;dbef
	add a,e			;dbf0
	ld sp,l2747h		;dbf1
	rlca			;dbf4
	out (097h),a		;dbf5
	jp pe,led09h+1		;dbf7
	add a,c			;dbfa
	dec (hl)		;dbfb
	jr nz,ldc6eh		;dbfc
	jp nc,ld300h		;dbfe
	ld (hl),b		;dc01
	jp nc,l5000h		;dc02
	nop			;dc05
	ld d,b			;dc06
	and b			;dc07
	ld d,b			;dc08
	and b			;dc09
	pop de			;dc0a
	ld (hl),h		;dc0b
ldc0ch:
	ret m			;dc0c
	dec d			;dc0d
	defb 0edh ;next byte illegal after ed	;dc0e
	add a,e			;dc0f
	ld d,c			;dc10
	jp pe,ld207h		;dc11
	ret nz			;dc14
	and d			;dc15
	sub e			;dc16
	ld (hl),d		;dc17
	pop de			;dc18
	inc b			;dc19
	ret m			;dc1a
	dec c			;dc1b
	out (0ebh),a		;dc1c
	ld (bc),a		;dc1e
	jr z,$-2		;dc1f
	ld (bc),a		;dc21
	ret pe			;dc22
	cp e			;dc23
	ret m			;dc24
	dec c			;dc25
	jp (hl)			;dc26
	ld a,(bc)		;dc27
	jp pe,ld309h		;dc28
	defb 0edh ;next byte illegal after ed	;dc2b
	add a,e			;dc2c
	ld d,c			;dc2d
	or a			;dc2e
	or d			;dc2f
	jp nc,l2102h		;dc30
	out (0ebh),a		;dc33
	ld (bc),a		;dc35
	ex af,af'		;dc36
	and a			;dc37
	and d			;dc38
	jp nc,l7121h+1		;dc39
	ld (hl),a		;dc3c
	ld h,a			;dc3d
	ld (lb2d3h),hl		;dc3e
	jp nc,02201h		;dc41
	ld (hl),d		;dc44
	ld hl,002ebh		;dc45
	ld a,(bc)		;dc48
	ld (la2d3h),hl		;dc49
	jp nc,07221h		;dc4c
	sub d			;dc4f
	ld (hl),c		;dc50
	ld (hl),a		;dc51
	ld h,a			;dc52
	ld d,a			;dc53
	ld b,a			;dc54
	dec hl			;dc55
	rst 38h			;dc56
	cp 001h			;dc57
	ret m			;dc59
	inc d			;dc5a
	jp (hl)			;dc5b
	ld a,(bc)		;dc5c
	jp pe,ld206h		;dc5d
	defb 0edh ;next byte illegal after ed	;dc60
	add a,c			;dc61
	ld (hl),l		;dc62
	ld (hl),a		;dc63
	pop de			;dc64
	rlca			;dc65
	jp nc,l97b7h		;dc66
	ex de,hl		;dc69
	ld (bc),a		;dc6a
	ex af,af'		;dc6b
	ret m			;dc6c
	inc d			;dc6d
ldc6eh:
	rst 28h			;dc6e
	inc bc			;dc6f
	jp pe,ld308h		;dc70
	defb 0edh ;next byte illegal after ed	;dc73
	add a,c			;dc74
ldc75h:
	inc sp			;dc75
	ld (hl),b		;dc76
	sub b			;dc77
	or b			;dc78
	jp nc,04700h		;dc79
	ld (hl),e		;dc7c
	ld h,a			;dc7d
	ld d,d			;dc7e
	ld (hl),d		;dc7f
	ld d,c			;dc80
	ret p			;dc81
sub_dc82h:
	ret m			;dc82
	inc d			;dc83
	defb 0edh ;next byte illegal after ed	;dc84
	add a,c			;dc85
	ld (hl),l		;dc86
	jp pe,ld30bh		;dc87
	ld (hl),a		;dc8a
	jp nc,ld307h		;dc8b
	or a			;dc8e
	sub a			;dc8f
	ex de,hl		;dc90
	ld (bc),a		;dc91
	ld h,0f8h		;dc92
	ld a,(bc)		;dc94
	jp (hl)			;dc95
	ld a,(bc)		;dc96
	jp pe,ld206h		;dc97
	defb 0edh ;next byte illegal after ed	;dc9a
	adc a,a			;dc9b
	ld d,(hl)		;dc9c
	rst 28h			;dc9d
	ld bc,05347h		;dc9e
	ld d,b			;dca1
	ld d,d			;dca2
	ld b,a			;dca3
	ld b,e			;dca4
	ld b,b			;dca5
	ld b,d			;dca6
	ret m			;dca7
	dec c			;dca8
sub_dca9h:
	jp pe,ld30ah		;dca9
	defb 0edh ;next byte illegal after ed	;dcac
	add a,c			;dcad
	dec (hl)		;dcae
	jr nz,$+114		;dcaf
	jp nc,ld300h		;dcb1
	ld (hl),b		;dcb4
	jp nc,l5000h		;dcb5
	nop			;dcb8
	ld d,b			;dcb9
	and b			;dcba
	ld d,b			;dcbb
	and b			;dcbc
	pop de			;dcbd
	ld (hl),h		;dcbe
	ret p			;dcbf
	ret m			;dcc0
	dec d			;dcc1
	jp pe,ld207h		;dcc2
	defb 0edh ;next byte illegal after ed	;dcc5
	add a,e			;dcc6
	ld d,c			;dcc7
	ret nz			;dcc8
	ld (hl),d		;dcc9
	ld d,e			;dcca
	ld b,d			;dccb
	ld (hl),h		;dccc
	rst 28h			;dccd
	ld bc,002ebh		;dcce
	ld hl,(lfcf0h)		;dcd1
	ld (bc),a		;dcd4
	sub e			;dcd5
	cp h			;dcd6
	jp (hl)			;dcd7
	ld a,(bc)		;dcd8
	ret m			;dcd9
	dec c			;dcda
	jp pe,ld309h		;dcdb
	defb 0edh ;next byte illegal after ed	;dcde
	add a,e			;dcdf
	ld d,c			;dce0
	ld (hl),a		;dce1
	ld (hl),d		;dce2
	sub d			;dce3
	or c			;dce4
	ex de,hl		;dce5
	ld (bc),a		;dce6
	ld b,077h		;dce7
	ld (hl),d		;dce9
	and d			;dcea
	jp nc,02721h		;dceb
	daa			;dcee
	out (0b2h),a		;dcef
	ld (hl),d		;dcf1
	sub c			;dcf2
	or d			;dcf3
	jp nc,ld322h		;dcf4
	or c			;dcf7
	ex de,hl		;dcf8
	ld (bc),a		;dcf9
	dec bc			;dcfa
	and d			;dcfb
	ld (hl),d		;dcfc
	and c			;dcfd
	jp nc,02222h		;dcfe
	ld hl,02727h		;dd01
	rlca			;dd04
	rlca			;dd05
	out (0bbh),a		;dd06
	rst 38h			;dd08
	cp 001h			;dd09
	ret m			;dd0b
	ld a,(bc)		;dd0c
	jp (hl)			;dd0d
	ld a,(bc)		;dd0e
	jp pe,ld20ah		;dd0f
	defb 0edh ;next byte illegal after ed	;dd12
	add a,c			;dd13
	ld (hl),l		;dd14
	rlca			;dd15
	ld b,a			;dd16
	scf			;dd17
	daa			;dd18
	ex de,hl		;dd19
	ld b,006h		;dd1a
	ret m			;dd1c
	ld a,(bc)		;dd1d
	jp (hl)			;dd1e
	ld a,(bc)		;dd1f
	jp pe,ld206h		;dd20
	defb 0edh ;next byte illegal after ed	;dd23
	adc a,a			;dd24
	ld d,(hl)		;dd25
	rst 28h			;dd26
	ld bc,l0307h		;dd27
	nop			;dd2a
	ld (bc),a		;dd2b
	rlca			;dd2c
	inc bc			;dd2d
	nop			;dd2e
	ld (bc),a		;dd2f
	ret p			;dd30
	jp pe,led09h+1		;dd31
	add a,c			;dd34
	ld (hl),l		;dd35
	ret nz			;dd36
	and d			;dd37
	sub e			;dd38
	ld (hl),d		;dd39
	ld b,l			;dd3a
	and d			;dd3b
	sub e			;dd3c
	ld (hl),d		;dd3d
	pop de			;dd3e
	inc b			;dd3f
	jp nc,002ebh		;dd40
	ld (de),a		;dd43
	call m,sub_1c02h	;dd44
	cp l			;dd47
	jp (hl)			;dd48
	ld a,(bc)		;dd49
	jp nc,l0af8h		;dd4a
	rst 28h			;dd4d
	ld bc,l07eah		;dd4e
	defb 0edh ;next byte illegal after ed	;dd51
	adc a,a			;dd52
	ld d,(hl)		;dd53
	daa			;dd54
	out (0b2h),a		;dd55
	jp nc,l2102h		;dd57
	ex de,hl		;dd5a
	ld (bc),a		;dd5b
	ex af,af'		;dd5c
	daa			;dd5d
	out (0a2h),a		;dd5e
	jp nc,l7121h+1		;dd60
	ld (hl),a		;dd63
	ld h,a			;dd64
	ld (lb2d3h),hl		;dd65
	jp nc,02201h		;dd68
	ld (hl),d		;dd6b
	ld hl,002ebh		;dd6c
	ld a,(bc)		;dd6f
	ld (la2d3h),hl		;dd70
	jp nc,07221h		;dd73
	sub d			;dd76
	ld (hl),c		;dd77
	ld (hl),a		;dd78
	ld h,a			;dd79
	ld d,a			;dd7a
	ld b,a			;dd7b
	dec hl			;dd7c
	rst 38h			;dd7d
	cp 001h			;dd7e
	ret m			;dd80
	ld a,(bc)		;dd81
	jp (hl)			;dd82
	ld a,(bc)		;dd83
	jp pe,ld20ah		;dd84
	defb 0edh ;next byte illegal after ed	;dd87
	add a,c			;dd88
	ld (hl),l		;dd89
	ld b,a			;dd8a
	ld (hl),a		;dd8b
	ld h,a			;dd8c
	ld d,a			;dd8d
	ex de,hl		;dd8e
	ld b,006h		;dd8f
	ret m			;dd91
	ld a,(bc)		;dd92
	jp (hl)			;dd93
	ld a,(bc)		;dd94
	jp pe,ld305h		;dd95
	defb 0edh ;next byte illegal after ed	;dd98
	adc a,a			;dd99
	ld d,(hl)		;dd9a
	rst 28h			;dd9b
	ld bc,09397h		;dd9c
	sub b			;dd9f
	sub d			;dda0
	sub a			;dda1
	sub e			;dda2
	sub b			;dda3
	sub d			;dda4
	ret p			;dda5
	jp pe,ld20ah		;dda6
	defb 0edh ;next byte illegal after ed	;dda9
	add a,c			;ddaa
	ld (hl),l		;ddab
	ret nz			;ddac
	ld (hl),d		;ddad
	ld d,e			;ddae
	ld b,d			;ddaf
	dec b			;ddb0
	ld (hl),d		;ddb1
	ld d,e			;ddb2
	ld b,d			;ddb3
	ld (hl),h		;ddb4
	ex de,hl		;ddb5
	ld (bc),a		;ddb6
	ld de,002fch		;ddb7
	sub c			;ddba
	cp l			;ddbb
	ret m			;ddbc
	ld a,(bc)		;ddbd
	jp (hl)			;ddbe
	ld a,(bc)		;ddbf
	rst 28h			;ddc0
	ld bc,l07eah		;ddc1
	defb 0edh ;next byte illegal after ed	;ddc4
	adc a,a			;ddc5
	ld d,(hl)		;ddc6
	pop de			;ddc7
	daa			;ddc8
	jp nc,ld1b2h		;ddc9
	ld (bc),a		;ddcc
	ld hl,002ebh		;ddcd
	ex af,af'		;ddd0
	daa			;ddd1
	jp nc,ld1a2h		;ddd2
	ld (07771h),hl		;ddd5
	ld h,a			;ddd8
	ld (lb2d2h),hl		;ddd9
	pop de			;dddc
	ld bc,l7222h		;dddd
	ld hl,002ebh		;dde0
	ld a,(bc)		;dde3
	ld (la2d2h),hl		;dde4
	pop de			;dde7
	ld hl,09272h		;dde8
	ld (hl),c		;ddeb
	ld (hl),a		;ddec
	ld h,a			;dded
	ld d,a			;ddee
	ld b,a			;ddef
	dec hl			;ddf0
	rst 38h			;ddf1
	jp nc,ld340h		;ddf2
	or b			;ddf5
	jp nc,l6040h		;ddf6
	out (0b0h),a		;ddf9
	jp nc,ld160h		;ddfb
	ld b,b			;ddfe
	jp nc,ld1b0h		;ddff
	ld b,b			;de02
	ld h,b			;de03
	jp nc,ld1b0h		;de04
	ld h,b			;de07
	jp nc,ld1b0h		;de08
	ld b,b			;de0b
	ld h,b			;de0c
	or b			;de0d
	jp m,l05eah		;de0e
	jp nc,ld1b0h		;de11
	ld b,b			;de14
	ld h,b			;de15
	or b			;de16
	jp pe,ld202h		;de17
	or b			;de1a
	pop de			;de1b
	ld b,b			;de1c
	ld h,b			;de1d
	or c			;de1e
	ret p			;de1f
	jp m,l06e8h+1		;de20
	jp pe,ld20bh		;de23
	defb 0edh ;next byte illegal after ed	;de26
	add a,c			;de27
	ld (hl),e		;de28
	ld d,l			;de29
	dec b			;de2a
	ld d,l			;de2b
	and l			;de2c
	pop de			;de2d
	dec (hl)		;de2e
	defb 0edh ;next byte illegal after ed	;de2f
	add a,c			;de30
	ld d,e			;de31
	adc a,e			;de32
	jp m,055a5h		;de33
	and l			;de36
	pop de			;de37
	dec (hl)		;de38
	add a,l			;de39
	ret nc			;de3a
	defb 0edh ;next byte illegal after ed	;de3b
	add a,c			;de3c
	ld d,a			;de3d
	jp m,l02feh		;de3e
	ret po			;de41
	ld l,l			;de42
	ld sp,hl		;de43
	and (hl)		;de44
	cp (hl)			;de45
	cp 002h			;de46
	ex (sp),hl		;de48
	ld bc,l1fe4h		;de49
	and d			;de4c
	nop			;de4d
	and d			;de4e
	ld d,b			;de4f
	and d			;de50
	and b			;de51
	and e			;de52
	nop			;de53
	and h			;de54
	nop			;de55
	and l			;de56
	nop			;de57
	and (hl)		;de58
	nop			;de59
	xor b			;de5a
	nop			;de5b
	pop hl			;de5c
	ld bc,01de4h		;de5d
	ld a,(bc)		;de60
	call po,sub_0a1ah	;de61
	call po,l0a16h+1	;de64
	call po,sub_0a13h	;de67
	call po,l0a10h		;de6a
lde6dh:
	call po,00a0ch		;de6d
	call po,00a09h		;de70
	call po,l0a05h+1	;de73
	call po,sub_0a03h	;de76
	call po,00a01h		;de79
	pop hl			;de7c
	rlca			;de7d
	call po,00904h		;de7e
	call po,sub_0807h	;de81
	call po,sub_060bh	;de84
	call po,sub_040eh	;de87
	call po,00210h		;de8a
	ld bc,lfeffh		;de8d
	ld (bc),a		;de90
	ret po			;de91
	ld l,h			;de92
	ld sp,hl		;de93
	and (hl)		;de94
	cp (hl)			;de95
	cp 002h			;de96
	jp po,lf901h		;de98
	exx			;de9b
	cp (hl)			;de9c
	rst 10h			;de9d
	ld sp,hl		;de9e
	exx			;de9f
	cp (hl)			;dea0
	exx			;dea1
	ld sp,hl		;dea2
	exx			;dea3
	cp (hl)			;dea4
	rst 38h			;dea5
	cp 001h			;dea6
	jp (hl)			;dea8
ldea9h:
	ld (bc),a		;dea9
	jp pe,ld408h		;deaa
	and b			;dead
	or b			;deae
	out (000h),a		;deaf
	djnz lded3h		;deb1
	ex de,hl		;deb3
	ld (bc),a		;deb4
	add hl,bc		;deb5
	call nc,0d3b0h		;deb6
	nop			;deb9
	djnz $+34		;deba
	jr nc,ldea9h		;debc
	ld (bc),a		;debe
	add hl,bc		;debf
	nop			;dec0
	djnz ldee3h		;dec1
	jr nc,ldf05h		;dec3
	ex de,hl		;dec5
	ld (bc),a		;dec6
	rlca			;dec7
	djnz ldeeah		;dec8
	jr nc,$+66		;deca
	ld d,b			;decc
	ex de,hl		;decd
	ld (bc),a		;dece
	rlca			;decf
	jr nz,ldf02h		;ded0
	ld b,b			;ded2
lded3h:
	ld d,b			;ded3
	ld h,b			;ded4
	ex de,hl		;ded5
	ld (bc),a		;ded6
	rlca			;ded7
	jp m,l00c3h		;ded8
	jp lc450h		;dedb
	nop			;dede
	call nz,sub_c580h	;dedf
	nop			;dee2
ldee3h:
	rst 30h			;dee3
	add a,0c8h		;dee4
	ret			;dee6
	or 0ebh			;dee7
	ld (bc),a		;dee9
ldeeah:
	ld de,sub_fefah		;deea
	ld bc,004e9h		;deed
	jp pe,lf90ah		;def0
	jp p,leabdh		;def3
	rlca			;def6
	jp nc,ld1b0h		;def7
	ld b,b			;defa
	ld h,b			;defb
	or b			;defc
	jp pe,ld205h		;defd
	or b			;df00
	pop de			;df01
ldf02h:
	ld b,b			;df02
	ld h,b			;df03
	or c			;df04
ldf05h:
	jp (hl)			;df05
	inc bc			;df06
	jp pe,ld50bh		;df07
	defb 0edh ;next byte illegal after ed	;df0a
	ld bc,ld524h		;df0b
	ld bc,l01d2h+2		;df0e
	ex de,hl		;df11
	rrca			;df12
	ld b,0d5h		;df13
	ld bc,l06e8h+1		;df15
	defb 0edh ;next byte illegal after ed	;df18
	ld bc,00a35h		;df19
	rst 38h			;df1c
	cp 001h			;df1d
	jp (hl)			;df1f
	inc b			;df20
	jp pe,ld10ah		;df21
	ret m			;df24
	dec b			;df25
	ld b,b			;df26
	jr nc,$+34		;df27
	djnz ldf2bh		;df29
ldf2bh:
	jp nc,la0b0h		;df2b
	sub b			;df2e
	add a,b			;df2f
	ld (hl),b		;df30
	ld h,b			;df31
	ld d,b			;df32
	ld b,e			;df33
	jp pe,l4308h		;df34
ldf37h:
	jp pe,04206h		;df37
	jp pe,l4104h		;df3a
	ret m			;df3d
	dec c			;df3e
	jp (hl)			;df3f
	inc bc			;df40
	jp pe,led0fh		;df41
	ld bc,ld464h		;df44
	ld bc,l01d2h+1		;df47
	ex de,hl		;df4a
	rrca			;df4b
	ld b,0d4h		;df4c
	ld bc,l06e8h+1		;df4e
	defb 0edh ;next byte illegal after ed	;df51
	ld bc,00a35h		;df52
	rst 38h			;df55
	cp 001h			;df56
	jp (hl)			;df58
	inc b			;df59
	jp pe,ld207h		;df5a
	ret m			;df5d
	dec b			;df5e
	or b			;df5f
	and b			;df60
	sub b			;df61
	add a,b			;df62
	ld (hl),b		;df63
	ld h,b			;df64
	ld d,b			;df65
	ld b,b			;df66
	jr nc,$+34		;df67
	djnz ldf6bh		;df69
ldf6bh:
	out (0b3h),a		;df6b
	jp pe,0b308h		;df6d
	jp pe,lb206h		;df70
	jp pe,lb104h		;df73
	ret m			;df76
	inc de			;df77
	rst 28h			;df78
	ld bc,l21f9h		;df79
	cp (hl)			;df7c
	ret p			;df7d
	rst 38h			;df7e
	cp 001h			;df7f
	jp (hl)			;df81
	dec b			;df82
	jp pe,ld40ah		;df83
	ret m			;df86
	dec c			;df87
	ld hl,02145h		;df88
	ld b,c			;df8b
	jp pe,l4107h+2		;df8c
	jp pe,l4107h+1		;df8f
	jp pe,l4107h		;df92
	jp pe,04106h		;df95
	ret m			;df98
	inc de			;df99
	jp (hl)			;df9a
	ld b,0eah		;df9b
	add hl,bc		;df9d
	jp nc,l81edh		;df9e
	ld (hl),e		;dfa1
	and c			;dfa2
	ld sp,hl		;dfa3
	inc (hl)		;dfa4
	cp (hl)			;dfa5
	add hl,de		;dfa6
	ret p			;dfa7
	rst 38h			;dfa8
	rst 28h			;dfa9
	ld bc,l0ff8h		;dfaa
	cp 001h			;dfad
	jp (hl)			;dfaf
	inc b			;dfb0
	jp pe,lf907h		;dfb1
	jp p,lf9bdh		;dfb4
	rrca			;dfb7
	cp (hl)			;dfb8
	ret m			;dfb9
	inc de			;dfba
	jp (hl)			;dfbb
	ld b,0eah		;dfbc
	dec bc			;dfbe
	jp nc,l81edh		;dfbf
	ld (hl),e		;dfc2
	ld sp,hl		;dfc3
	inc (hl)		;dfc4
	cp (hl)			;dfc5
	dec de			;dfc6
	rst 38h			;dfc7
	rst 28h			;dfc8
	ld (bc),a		;dfc9
	ret m			;dfca
	rrca			;dfcb
	cp 001h			;dfcc
	jp (hl)			;dfce
	inc b			;dfcf
	jp pe,lf907h		;dfd0
	jp p,lf9bdh		;dfd3
	rrca			;dfd6
	cp (hl)			;dfd7
	ret m			;dfd8
	inc de			;dfd9
	ld sp,hl		;dfda
	ld hl,lffbeh		;dfdb
	nop			;dfde
ldfdfh:
	nop			;dfdf
	nop			;dfe0
	nop			;dfe1
	inc hl			;dfe2
	dec b			;dfe3
	inc (hl)		;dfe4
	ld b,015h		;dfe5
	ld (bc),a		;dfe7
	ld h,003h		;dfe8
	ld d,c			;dfea
	ld (bc),a		;dfeb
	scf			;dfec
	dec b			;dfed
	ld h,d			;dfee
	inc bc			;dfef
	ld (hl),d		;dff0
	inc b			;dff1
	ld (hl),d		;dff2
	ld b,074h		;dff3
	rlca			;dff5
	ld (de),a		;dff6
	inc b			;dff7
	ld d,h			;dff8
ldff9h:
	ld (bc),a		;dff9
	ld d,l			;dffa
	dec b			;dffb
	ld (hl),a		;dffc
	rlca			;dffd
sub_dffeh:
	rst 38h			;dffe
	rst 38h			;dfff
le000h:
	ld h,c			;e000
le001h:
	ld h,b			;e001
	sbc a,b			;e002
	ld h,b			;e003
sub_e004h:
	in a,(060h)		;e004
	ld b,061h		;e006
	ld c,d			;e008
	ld h,c			;e009
le00ah:
	ld b,e			;e00a
	ld h,c			;e00b
	ld l,a			;e00c
le00dh:
	ld h,c			;e00d
	sbc a,d			;e00e
	ld h,c			;e00f
	defb 0ddh,061h ;ld ixh,c	;e010
	ld b,061h		;e012
	ld b,061h		;e014
	ld b,061h		;e016
	sub l			;e018
	ld h,d			;e019
	ld c,062h		;e01a
	inc h			;e01c
	ld h,d			;e01d
	jr nc,le082h		;e01e
	ld e,l			;e020
	ld h,d			;e021
	xor l			;e022
	ld h,d			;e023
	ld l,(hl)		;e024
	ld h,d			;e025
	ld c,c			;e026
	ld h,d			;e027
le028h:
	add a,c			;e028
le029h:
	ld h,d			;e029
	jr nc,le08eh		;e02a
	jr nc,le090h		;e02c
	jr nc,le092h		;e02e
	cp b			;e030
	ld h,h			;e031
le032h:
	or d			;e032
	ld h,d			;e033
	sub 062h		;e034
	jp p,l0f62h		;e036
	ld h,e			;e039
	inc hl			;e03a
	ld h,h			;e03b
	ld h,(hl)		;e03c
	ld h,h			;e03d
	ld h,063h		;e03e
	and a			;e040
	ld h,h			;e041
	jp p,lf262h		;e042
	ld h,d			;e045
	jp p,00162h		;e046
	inc b			;e049
	ld l,h			;e04a
	dec bc			;e04b
	sbc a,l			;e04c
	add a,d			;e04d
	rlca			;e04e
	add hl,bc		;e04f
	ld (hl),b		;e050
le051h:
	set 6,a			;e051
	add a,l			;e053
	rlca			;e054
	ld a,06ch		;e055
	defb 0edh ;next byte illegal after ed	;e057
	push de			;e058
	add a,d			;e059
le05ah:
	ld bc,l6c2eh		;e05a
le05dh:
	dec e			;e05d
	ret z			;e05e
	add a,d			;e05f
	nop			;e060
	ld b,0a7h		;e061
	ld l,c			;e063
	dec d			;e064
	add a,07fh		;e065
	rlca			;e067
	or b			;e068
	ld l,d			;e069
	rra			;e06a
	sbc a,b			;e06b
	add a,b			;e06c
	rlca			;e06d
	ld d,h			;e06e
	ld (hl),c		;e06f
	ld (hl),e		;e070
	ld c,087h		;e071
	rlca			;e073
le074h:
	ld d,h			;e074
	ld (hl),c		;e075
le076h:
	ld a,a			;e076
	add a,b			;e077
le078h:
	add a,a			;e078
le079h:
	ld b,057h		;e079
	ld l,e			;e07b
	ld bc,l81d4h		;e07c
	rlca			;e07f
sub_e080h:
	rst 8			;e080
	ld l,c			;e081
le082h:
	ld l,l			;e082
	xor 07fh		;e083
le085h:
	rlca			;e085
	defb 0fdh,069h ;ld iyl,c	;e086
	adc a,e			;e088
	ld a,(de)		;e089
	add a,b			;e08a
	rlca			;e08b
	ld e,d			;e08c
	ld l,d			;e08d
le08eh:
	cp e			;e08e
	ld h,h			;e08f
le090h:
	add a,b			;e090
	rlca			;e091
le092h:
	ld l,e			;e092
	ld l,d			;e093
	jp l8076h		;e094
	nop			;e097
	rlca			;e098
	and (hl)		;e099
	ld l,h			;e09a
	adc a,b			;e09b
	ld b,a			;e09c
	add a,e			;e09d
le09eh:
	rlca			;e09e
	dec l			;e09f
le0a0h:
	ld l,c			;e0a0
le0a1h:
	jr nz,le0fch		;e0a1
	add a,e			;e0a3
	rlca			;e0a4
	cp b			;e0a5
	ld l,h			;e0a6
	jr c,le074h		;e0a7
	add a,e			;e0a9
le0aah:
	rlca			;e0aa
	cp 064h			;e0ab
le0adh:
	or c			;e0ad
	dec c			;e0ae
le0afh:
	ld a,(hl)		;e0af
	ld b,060h		;e0b0
	ld h,l			;e0b2
	dec d			;e0b3
	or e			;e0b4
	ld a,l			;e0b5
	rlca			;e0b6
	ld (hl),h		;e0b7
	ld (hl),c		;e0b8
	adc a,e			;e0b9
	sbc a,(hl)		;e0ba
	add a,a			;e0bb
	rlca			;e0bc
	ei			;e0bd
	ld l,l			;e0be
	sub e			;e0bf
	jp l0784h		;e0c0
	ld d,h			;e0c3
	ld (hl),c		;e0c4
	xor e			;e0c5
le0c6h:
	ld c,087h		;e0c6
	rlca			;e0c8
le0c9h:
	ld e,l			;e0c9
	ld l,(hl)		;e0ca
	cp l			;e0cb
	rrca			;e0cc
	add a,l			;e0cd
	rlca			;e0ce
	cp d			;e0cf
	ld h,l			;e0d0
	pop bc			;e0d1
le0d2h:
	ex de,hl		;e0d2
	ld a,l			;e0d3
	ld bc,07c99h		;e0d4
le0d7h:
	inc (hl)		;e0d7
	jp (hl)			;e0d8
	adc a,a			;e0d9
	nop			;e0da
	rlca			;e0db
	ld (hl),h		;e0dc
	ld (hl),c		;e0dd
	adc a,e			;e0de
	sbc a,(hl)		;e0df
	add a,a			;e0e0
	rlca			;e0e1
	ld l,a			;e0e2
	ld l,(hl)		;e0e3
	rra			;e0e4
	ld d,085h		;e0e5
	rlca			;e0e7
	ret c			;e0e8
	ld l,a			;e0e9
	cp c			;e0ea
	call c,l0784h+1		;e0eb
le0eeh:
	ret po			;e0ee
	ld (hl),a		;e0ef
	ld a,c			;e0f0
le0f1h:
	res 1,e			;e0f1
	rlca			;e0f3
	ld (hl),e		;e0f4
	ld a,b			;e0f5
	sub e			;e0f6
	inc sp			;e0f7
	adc a,h			;e0f8
sub_e0f9h:
	rlca			;e0f9
le0fah:
	or l			;e0fa
	ld a,b			;e0fb
le0fch:
	xor a			;e0fc
le0fdh:
	ld h,l			;e0fd
	adc a,h			;e0fe
le0ffh:
	rlca			;e0ff
	rst 10h			;e100
	ld a,b			;e101
	or e			;e102
	add a,l			;e103
sub_e104h:
	adc a,h			;e104
	nop			;e105
	rlca			;e106
	jp (hl)			;e107
	ld (hl),d		;e108
	rra			;e109
	inc b			;e10a
	adc a,c			;e10b
	rlca			;e10c
	cp e			;e10d
	ld a,h			;e10e
	ld h,b			;e10f
	inc b			;e110
	sub b			;e111
	rlca			;e112
	ld h,l			;e113
	ld (hl),h		;e114
	jp nz,l8a4bh		;e115
	rlca			;e118
le119h:
	call p,l7370h		;e119
	or a			;e11c
	add a,(hl)		;e11d
	rlca			;e11e
	call p,06770h		;e11f
le122h:
	inc l			;e122
	add a,a			;e123
	rlca			;e124
le125h:
	sbc a,c			;e125
	ld a,h			;e126
	ld e,h			;e127
	adc a,08fh		;e128
	rlca			;e12a
	ld c,(hl)		;e12b
	ld a,h			;e12c
	sub e			;e12d
	sub c			;e12e
	adc a,a			;e12f
	rlca			;e130
	ld h,a			;e131
	ld l,e			;e132
	and b			;e133
	xor c			;e134
	ld a,l			;e135
	rlca			;e136
	call c,sub_a164h	;e137
	ld h,l			;e13a
	ld a,l			;e13b
	rlca			;e13c
	call c,sub_a564h	;e13d
le140h:
	add a,a			;e140
	ld a,l			;e141
	nop			;e142
	rlca			;e143
	add a,(hl)		;e144
	ld (hl),h		;e145
	rra			;e146
	ld e,b			;e147
	adc a,d			;e148
	nop			;e149
	rlca			;e14a
	pop hl			;e14b
	ld h,l			;e14c
	rra			;e14d
	ld e,e			;e14e
	ld a,(hl)		;e14f
	rlca			;e150
	ccf			;e151
	ld l,b			;e152
	adc a,e			;e153
	inc (hl)		;e154
	ld a,a			;e155
	rlca			;e156
	cp b			;e157
	ld l,b			;e158
	xor l			;e159
	adc a,d			;e15a
	ld a,a			;e15b
	rlca			;e15c
	inc d			;e15d
	ld l,c			;e15e
	call nz,sub_7fb7h	;e15f
	rlca			;e162
	ld (l7370h+1),hl	;e163
	pop hl			;e166
	add a,(hl)		;e167
	rlca			;e168
	ld (sub_7f70h+1),hl	;e169
	ld d,(hl)		;e16c
	add a,a			;e16d
	nop			;e16e
	rlca			;e16f
	jp p,l737ch		;e170
	add hl,sp		;e173
	sub b			;e174
	rlca			;e175
	jp p,07f7ch		;e176
	ld d,a			;e179
	sub b			;e17a
	ld b,0d2h		;e17b
	ld a,e			;e17d
	add hl,bc		;e17e
	rrca			;e17f
	adc a,a			;e180
	rlca			;e181
	or 078h			;e182
	rra			;e184
	and c			;e185
	adc a,h			;e186
	rlca			;e187
	jr z,le204h		;e188
	ld d,e			;e18a
	xor (hl)		;e18b
	adc a,l			;e18c
	rlca			;e18d
	jp pe,0a97ah		;e18e
le191h:
	ld l,h			;e191
le192h:
	adc a,(hl)		;e192
	rlca			;e193
le194h:
	ld (hl),h		;e194
	ld (hl),c		;e195
	adc a,e			;e196
	sbc a,(hl)		;e197
	add a,a			;e198
	nop			;e199
	rlca			;e19a
	ld d,h			;e19b
	ld (hl),c		;e19c
	ld a,a			;e19d
	ld c,087h		;e19e
	rlca			;e1a0
	ld d,h			;e1a1
le1a2h:
	ld (hl),c		;e1a2
	add a,l			;e1a3
le1a4h:
	add a,b			;e1a4
le1a5h:
	add a,a			;e1a5
le1a6h:
	rlca			;e1a6
le1a7h:
	adc a,(hl)		;e1a7
le1a8h:
	ld (hl),c		;e1a8
le1a9h:
	rra			;e1a9
le1aah:
	cp b			;e1aa
le1abh:
	add a,a			;e1ab
le1ach:
	rlca			;e1ac
le1adh:
	ret po			;e1ad
le1aeh:
	ld (hl),c		;e1ae
le1afh:
	and c			;e1af
le1b0h:
	ld a,(bc)		;e1b0
le1b1h:
	adc a,b			;e1b1
	rlca			;e1b2
	ld (hl),h		;e1b3
	ld (hl),c		;e1b4
	adc a,e			;e1b5
	sbc a,(hl)		;e1b6
	add a,a			;e1b7
	rlca			;e1b8
	ld c,(hl)		;e1b9
le1bah:
	ld a,h			;e1ba
	sbc a,e			;e1bb
	sub c			;e1bc
	adc a,a			;e1bd
	ld b,037h		;e1be
le1c0h:
	ld a,h			;e1c0
le1c1h:
	dec b			;e1c1
le1c2h:
	ld a,e			;e1c2
le1c3h:
	adc a,a			;e1c3
le1c4h:
	ld b,0d2h		;e1c4
le1c6h:
	ld a,e			;e1c6
le1c7h:
	add hl,bc		;e1c7
le1c8h:
	rrca			;e1c8
le1c9h:
	adc a,a			;e1c9
	ld b,0e5h		;e1ca
le1cch:
	ld a,e			;e1cc
le1cdh:
	ld de,l8f22h		;e1cd
	rlca			;e1d0
le1d1h:
	inc (hl)		;e1d1
le1d2h:
	ld a,h			;e1d2
le1d3h:
	sub e			;e1d3
le1d4h:
	ld (hl),c		;e1d4
le1d5h:
	adc a,a			;e1d5
le1d6h:
	ld b,078h		;e1d6
	ld a,h			;e1d8
	dec de			;e1d9
le1dah:
	xor l			;e1da
le1dbh:
	adc a,a			;e1db
le1dch:
	nop			;e1dc
le1ddh:
	ld b,096h		;e1dd
le1dfh:
	ld l,d			;e1df
le1e0h:
	inc de			;e1e0
	ld hl,(l0781h)		;e1e1
le1e4h:
	or b			;e1e4
	ld l,d			;e1e5
le1e6h:
	rra			;e1e6
	ld b,d			;e1e7
	add a,c			;e1e8
	ld b,057h		;e1e9
	ld l,e			;e1eb
	ld bc,l81d4h		;e1ec
	rlca			;e1ef
	call p,l7370h		;e1f0
le1f3h:
	or a			;e1f3
le1f4h:
	add a,(hl)		;e1f4
le1f5h:
	rlca			;e1f5
	call p,sub_7f70h	;e1f6
	inc l			;e1f9
le1fah:
	add a,a			;e1fa
le1fbh:
	rlca			;e1fb
	ld (hl),c		;e1fc
	ld l,e			;e1fd
le1feh:
	sbc a,l			;e1fe
	and 081h		;e1ff
le201h:
	rlca			;e201
le202h:
	ld (hl),c		;e202
le203h:
	ld l,e			;e203
le204h:
	and a			;e204
le205h:
	add hl,hl		;e205
le206h:
	add a,d			;e206
le207h:
	rlca			;e207
	jp 0b16bh		;e208
le20bh:
	ld l,h			;e20b
le20ch:
	add a,d			;e20c
le20dh:
	nop			;e20d
	ld hl,(l392fh)		;e20e
	dec b			;e211
	jr c,sub_e274h		;e212
	add hl,sp		;e214
	jr z,le1a2h		;e215
	adc a,(hl)		;e217
	ld a,a			;e218
	sub e			;e219
	sbc a,a			;e21a
	add hl,sp		;e21b
	inc c			;e21c
	xor e			;e21d
	xor a			;e21e
	cp c			;e21f
	cp l			;e220
	cp a			;e221
	cp c			;e222
	nop			;e223
	rra			;e224
le225h:
	ld c,h			;e225
	add hl,sp		;e226
le227h:
	dec l			;e227
le228h:
	adc a,e			;e228
le229h:
	adc a,(hl)		;e229
le22ah:
	ld a,a			;e22a
le22bh:
	cp c			;e22b
le22ch:
	ret nz			;e22c
le22dh:
	add hl,sp		;e22d
le22eh:
	rlca			;e22e
	nop			;e22f
	ld d,e			;e230
	ld d,a			;e231
	ld a,c			;e232
	ld d,e			;e233
	ld e,d			;e234
	ld a,c			;e235
	ld d,l			;e236
	ld e,e			;e237
	ld a,c			;e238
	ld (hl),e		;e239
	ld a,c			;e23a
	add hl,sp		;e23b
	ld b,067h		;e23c
	ld l,l			;e23e
	add hl,sp		;e23f
le240h:
	ld b,08bh		;e240
	adc a,(hl)		;e242
	ld a,a			;e243
	sub e			;e244
	sbc a,b			;e245
	add hl,sp		;e246
	dec b			;e247
	nop			;e248
	add hl,bc		;e249
	dec bc			;e24a
	or h			;e24b
	sbc a,e			;e24c
	and b			;e24d
	ld a,c			;e24e
	sbc a,h			;e24f
	ld a,e			;e250
	add hl,sp		;e251
	inc b			;e252
	ld a,a			;e253
	add a,e			;e254
	cp c			;e255
	add a,l			;e256
	adc a,c			;e257
	cp c			;e258
	adc a,e			;e259
	adc a,(hl)		;e25a
	ld a,a			;e25b
	nop			;e25c
	cp d			;e25d
	cp (hl)			;e25e
	add hl,sp		;e25f
	inc b			;e260
	adc a,e			;e261
	sbc a,h			;e262
	add hl,sp		;e263
	ld de,l7973h		;e264
	add hl,sp		;e267
	ld b,07fh		;e268
	add a,l			;e26a
	add hl,sp		;e26b
	ld b,000h		;e26c
sub_e26eh:
	add hl,bc		;e26e
	dec bc			;e26f
	or h			;e270
	ld sp,l3946h		;e271
sub_e274h:
	dec c			;e274
	ld (hl),e		;e275
	ld a,c			;e276
	add hl,de		;e277
	ld b,07fh		;e278
	add a,l			;e27a
	add hl,bc		;e27b
	ld b,08bh		;e27c
	adc a,(hl)		;e27e
	ld a,a			;e27f
le280h:
	nop			;e280
le281h:
	inc de			;e281
	ld d,0f4h		;e282
	dec h			;e284
	dec (hl)		;e285
	add hl,sp		;e286
	djnz le2beh		;e287
	dec h			;e289
	ld sp,l7310h		;e28a
	ld a,c			;e28d
	add hl,sp		;e28e
	ld b,07fh		;e28f
	add a,l			;e291
	add hl,sp		;e292
	ld b,000h		;e293
	dec h			;e295
	dec (hl)		;e296
	add hl,sp		;e297
	djnz le225h		;e298
	sub a			;e29a
	add hl,sp		;e29b
	inc c			;e29c
	ld (hl),d		;e29d
	cp l			;e29e
	ld a,c			;e29f
	ld (hl),e		;e2a0
	ld (hl),a		;e2a1
	cp c			;e2a2
	ld a,c			;e2a3
	ld a,l			;e2a4
	cp c			;e2a5
	ld a,a			;e2a6
	add a,e			;e2a7
le2a8h:
	cp c			;e2a8
	add a,l			;e2a9
	adc a,c			;e2aa
	cp c			;e2ab
	nop			;e2ac
	ld (03f95h),hl		;e2ad
	ld b,000h		;e2b0
	jr nz,le2d4h		;e2b2
	ld hl,l8814h		;e2b4
	adc a,b			;e2b7
	and c			;e2b8
	adc a,e			;e2b9
	adc a,a			;e2ba
	ccf			;e2bb
	inc b			;e2bc
	sub e			;e2bd
le2beh:
	sub e			;e2be
	ld hl,0b320h		;e2bf
	or e			;e2c2
	ld hl,l3414h		;e2c3
	inc (hl)		;e2c6
	ld hl,lab04h		;e2c7
	xor e			;e2ca
	ld hl,lc106h		;e2cb
	pop bc			;e2ce
	inc h			;e2cf
	ld b,0c1h		;e2d0
	pop bc			;e2d2
	add hl,de		;e2d3
le2d4h:
	ld b,000h		;e2d4
	ld c,h			;e2d6
	ld c,h			;e2d7
le2d8h:
	inc a			;e2d8
	djnz le337h		;e2d9
	ld e,h			;e2db
	inc a			;e2dc
	dec e			;e2dd
	ret nz			;e2de
sub_e2dfh:
	ret nz			;e2df
	inc a			;e2e0
	rlca			;e2e1
	ld a,a			;e2e2
	sbc a,e			;e2e3
	inc a			;e2e4
	inc c			;e2e5
	sub e			;e2e6
le2e7h:
	and a			;e2e7
	inc a			;e2e8
	ex af,af'		;e2e9
	or e			;e2ea
	or (hl)			;e2eb
	call m,sub_8f8bh	;e2ec
	ccf			;e2ef
	inc b			;e2f0
	nop			;e2f1
	ld b,b			;e2f2
	ld b,b			;e2f3
	inc h			;e2f4
	inc de			;e2f5
	ld (hl),e		;e2f6
	ld a,a			;e2f7
	add hl,sp		;e2f8
	inc c			;e2f9
	ld (hl),e		;e2fa
	ld (hl),e		;e2fb
	ld hl,l6718h		;e2fc
	ld h,a			;e2ff
le300h:
	ld hl,l5c0ch		;e300
	ld e,h			;e303
le304h:
	ld hl,l9304h		;e304
le307h:
	sub e			;e307
le308h:
	ld hl,l8b0ah		;e308
	adc a,a			;e30b
	ccf			;e30c
	inc b			;e30d
	nop			;e30e
	cp e			;e30f
	jp nz,0bf79h		;e310
	jp l8b79h		;e313
	ld bc,l0d31h		;e316
	sbc a,h			;e319
	ld c,031h		;e31a
	dec c			;e31c
	ld (hl),e		;e31d
	ld (hl),e		;e31e
	ld hl,07f0ch		;e31f
	ld a,a			;e322
le323h:
	ld sp,l000ch		;e323
	dec b			;e326
le327h:
	ld bc,l0436h		;e327
	add hl,bc		;e32a
	dec c			;e32b
	ld (hl),004h		;e32c
	ld de,03e94h		;e32e
le331h:
	rlca			;e331
	ld a,e			;e332
le333h:
	ld a,e			;e333
le334h:
	ld hl,08b04h		;e334
le337h:
	adc a,a			;e337
le338h:
	ccf			;e338
le339h:
	inc b			;e339
le33ah:
	rra			;e33a
	ld l,089h		;e33b
le33dh:
	inc hl			;e33d
	ld a,089h		;e33e
le340h:
	ld (0c946h),hl		;e340
le343h:
	ld (l894ah),hl		;e343
le346h:
	rra			;e346
	ld c,h			;e347
le348h:
	adc a,c			;e348
le349h:
	jr nz,le39ch		;e349
le34bh:
	adc a,c			;e34b
le34ch:
	rra			;e34c
le34dh:
	ld d,h			;e34d
le34eh:
	adc a,c			;e34e
le34fh:
	ld (0895ch),hl		;e34f
le352h:
	ld h,064h		;e352
le354h:
	adc a,c			;e354
le355h:
	ld h,066h		;e355
le357h:
	adc a,c			;e357
le358h:
	ld h,068h		;e358
le35ah:
	adc a,c			;e35a
le35bh:
	dec h			;e35b
le35ch:
	ld (hl),b		;e35c
le35dh:
	adc a,c			;e35d
	daa			;e35e
le35fh:
	ld (hl),e		;e35f
le360h:
	adc a,c			;e360
le361h:
	rra			;e361
	add hl,hl		;e362
le363h:
	ld c,c			;e363
le364h:
	dec h			;e364
le365h:
	ld hl,(l2449h)		;e365
le368h:
	dec hl			;e368
le369h:
	ld c,c			;e369
	ld hl,0492ch		;e36a
le36dh:
	jr z,le39ch		;e36d
le36fh:
	ld c,c			;e36f
	ld (l4930h),hl		;e370
le373h:
	inc h			;e373
	ld sp,l2149h		;e374
	ld (l2349h),a		;e377
	inc sp			;e37a
	ld c,c			;e37b
le37ch:
	ld hl,l4934h		;e37c
	inc h			;e37f
	dec (hl)		;e380
	ld c,c			;e381
le382h:
	jr z,le3bah		;e382
	ld c,c			;e384
	dec h			;e385
le386h:
	scf			;e386
	ld c,c			;e387
le388h:
	ld (04938h),hl		;e388
le38bh:
	dec h			;e38b
	add hl,sp		;e38c
le38dh:
	ld c,c			;e38d
le38eh:
	inc hl			;e38e
le38fh:
	ld a,(02549h)		;e38f
le392h:
	dec sp			;e392
le393h:
	ld c,c			;e393
	jr z,le3d2h		;e394
le396h:
	ld c,c			;e396
	daa			;e397
	dec a			;e398
	ld c,c			;e399
	ld h,040h		;e39a
le39ch:
	ld c,c			;e39c
le39dh:
	inc h			;e39d
	ld b,c			;e39e
le39fh:
	ld c,c			;e39f
	jr z,le3e4h		;e3a0
	ld c,c			;e3a2
	ld hl,l4943h		;e3a3
	jr z,$+70		;e3a6
le3a8h:
	ld c,c			;e3a8
	dec h			;e3a9
le3aah:
	ld b,l			;e3aa
	ld c,c			;e3ab
	ld h,049h		;e3ac
le3aeh:
	ld c,c			;e3ae
	inc hl			;e3af
	ld c,(hl)		;e3b0
le3b1h:
	ld c,c			;e3b1
le3b2h:
	dec h			;e3b2
le3b3h:
	ld c,a			;e3b3
	ld c,c			;e3b4
	daa			;e3b5
	ld d,b			;e3b6
	ld c,c			;e3b7
	inc hl			;e3b8
	ld d,e			;e3b9
le3bah:
	ld c,c			;e3ba
le3bbh:
	ld h,056h		;e3bb
	ld c,c			;e3bd
le3beh:
	ld hl,l4957h		;e3be
le3c1h:
	jr z,le41bh		;e3c1
le3c3h:
	ld c,c			;e3c3
le3c4h:
	ld (04959h),hl		;e3c4
le3c7h:
	dec h			;e3c7
	ld e,d			;e3c8
	ld c,c			;e3c9
le3cah:
	jr nz,le427h		;e3ca
le3cch:
	ld c,c			;e3cc
sub_e3cdh:
	jr z,le42dh		;e3cd
	ld c,c			;e3cf
le3d0h:
	dec h			;e3d0
le3d1h:
	ld e,a			;e3d1
le3d2h:
	ld c,c			;e3d2
le3d3h:
	jr nz,le435h		;e3d3
le3d5h:
	ld c,c			;e3d5
	ld h,061h		;e3d6
	ld c,c			;e3d8
	jr nz,le43dh		;e3d9
	ld c,c			;e3db
	inc hl			;e3dc
	ld h,e			;e3dd
	ld c,c			;e3de
	inc h			;e3df
le3e0h:
	ld l,d			;e3e0
le3e1h:
	ld c,c			;e3e1
	daa			;e3e2
	ld l,e			;e3e3
le3e4h:
	ld c,c			;e3e4
	ld (0496ch),hl		;e3e5
le3e8h:
	ld h,06dh		;e3e8
	ld c,c			;e3ea
	jr z,le45bh		;e3eb
	ld c,c			;e3ed
	ld h,06fh		;e3ee
	ld c,c			;e3f0
	inc hl			;e3f1
	ld (hl),d		;e3f2
	ld c,c			;e3f3
	dec h			;e3f4
	ld (hl),l		;e3f5
	ld c,c			;e3f6
	jr nz,le46fh		;e3f7
	ld c,c			;e3f9
	inc hl			;e3fa
	ld (hl),a		;e3fb
	ld c,c			;e3fc
le3fdh:
	jr nz,$+122		;e3fd
	ld c,c			;e3ff
le400h:
	daa			;e400
le401h:
	ld a,c			;e401
le402h:
	ld c,c			;e402
le403h:
	dec h			;e403
le404h:
	ld a,d			;e404
le405h:
	ld c,c			;e405
le406h:
	add hl,hl		;e406
le407h:
	add hl,hl		;e407
le408h:
	add hl,sp		;e408
	djnz le444h		;e409
le40bh:
	add hl,sp		;e40b
le40ch:
	add hl,sp		;e40c
le40dh:
	djnz le458h		;e40d
	ld c,c			;e40f
le410h:
	add hl,sp		;e410
	djnz $+91		;e411
	ld e,c			;e413
le414h:
	add hl,sp		;e414
	djnz le480h		;e415
le417h:
	ld l,c			;e417
le418h:
	add hl,sp		;e418
	ld (de),a		;e419
	ld a,a			;e41a
le41bh:
	ld a,a			;e41b
le41ch:
	ld hl,l9b0ch		;e41c
	sbc a,e			;e41f
le420h:
	ld hl,l0006h		;e420
	ld a,a			;e423
le424h:
	adc a,d			;e424
	add hl,sp		;e425
	dec bc			;e426
le427h:
	ld hl,l39a0h		;e427
	jr le3cch		;e42a
le42ch:
	and b			;e42c
le42dh:
	add hl,sp		;e42d
	jr $+62			;e42e
le430h:
	cp b			;e430
le431h:
	add hl,sp		;e431
le432h:
	inc b			;e432
le433h:
	cp b			;e433
le434h:
	cp b			;e434
le435h:
	add hl,sp		;e435
le436h:
	inc b			;e436
le437h:
	ld (hl),h		;e437
le438h:
	cp h			;e438
le439h:
	ld a,c			;e439
le43ah:
	cp h			;e43a
le43bh:
	cp h			;e43b
	ld a,c			;e43c
le43dh:
	add a,l			;e43d
	cp l			;e43e
	add hl,sp		;e43f
le440h:
	dec b			;e440
	cp l			;e441
	cp l			;e442
	add hl,sp		;e443
le444h:
	dec b			;e444
le445h:
	sub b			;e445
le446h:
	jp nz,00539h		;e446
	jp nz,l39c2h		;e449
	dec b			;e44c
	rra			;e44d
le44eh:
	rra			;e44e
le44fh:
	inc h			;e44f
le450h:
	jr nz,le491h		;e450
	ccf			;e452
	inc h			;e453
	jr nz,le4b5h		;e454
	ld e,a			;e456
	inc h			;e457
le458h:
	jr nz,le4d9h		;e458
	ld a,a			;e45a
le45bh:
	inc h			;e45b
	jr nz,le3fdh		;e45c
	sbc a,a			;e45e
	inc h			;e45f
	jr nz,$-63		;e460
	cp a			;e462
	inc h			;e463
	ex af,af'		;e464
	nop			;e465
	add hl,bc		;e466
	dec c			;e467
	ld (lac04h),a		;e468
	ld bc,0ab72h		;e46b
	ld (bc),a		;e46e
le46fh:
	ld (hl),d		;e46f
le470h:
	xor d			;e470
	inc bc			;e471
	ld (hl),d		;e472
	ld e,e			;e473
	inc b			;e474
	jp p,l075fh		;e475
	ld (hl),d		;e478
	ld h,b			;e479
	ex af,af'		;e47a
	ld (hl),d		;e47b
	ld h,c			;e47c
	ld de,l5972h		;e47d
le480h:
	ld (de),a		;e480
	or d			;e481
	ld bc,l2401h		;e482
	dec bc			;e485
	rra			;e486
	rra			;e487
	inc h			;e488
	djnz le4bah		;e489
	cpl			;e48b
	inc h			;e48c
	djnz le4ceh		;e48d
	ccf			;e48f
le490h:
	inc h			;e490
le491h:
	djnz $+81		;e491
	ld c,a			;e493
	inc h			;e494
	inc e			;e495
	xor c			;e496
	xor c			;e497
	inc h			;e498
	ld e,073h		;e499
	ld a,a			;e49b
	ld sp,07f0ch		;e49c
	ld (hl),e		;e49f
	ld hl,l8b0ah+2		;e4a0
	adc a,a			;e4a3
	ccf			;e4a4
	inc b			;e4a5
	nop			;e4a6
	inc de			;e4a7
	add hl,de		;e4a8
	inc (hl)		;e4a9
	ld b,025h		;e4aa
	ld b,l			;e4ac
	add hl,sp		;e4ad
	jr nz,le4cfh		;e4ae
	ld h,l			;e4b0
	add hl,sp		;e4b1
	ld b,073h		;e4b2
	ld (hl),e		;e4b4
le4b5h:
	ld hl,l0018h		;e4b5
	dec h			;e4b8
	ld b,l			;e4b9
le4bah:
	add hl,sp		;e4ba
	jr nz,le4dch		;e4bb
	ld h,l			;e4bd
	add hl,sp		;e4be
	ld b,073h		;e4bf
	ld a,c			;e4c1
	add hl,sp		;e4c2
	ld b,07fh		;e4c3
	add a,l			;e4c5
	add hl,sp		;e4c6
	ld b,015h		;e4c7
	ld (de),a		;e4c9
	jp p,01a18h		;e4ca
	or d			;e4cd
le4ceh:
	ld l,l			;e4ce
le4cfh:
	inc e			;e4cf
le4d0h:
	pop af			;e4d0
	adc a,e			;e4d1
	and e			;e4d2
	add hl,sp		;e4d3
	jr le546h		;e4d4
	cp (hl)			;e4d6
	ld sp,hl		;e4d7
	cp e			;e4d8
le4d9h:
	pop bc			;e4d9
	ld sp,hl		;e4da
	nop			;e4db
le4dch:
	and b			;e4dc
	nop			;e4dd
	add a,b			;e4de
	ld h,b			;e4df
	ld (hl),a		;e4e0
	jr c,le4f3h		;e4e1
	inc hl			;e4e3
	and a			;e4e4
	nop			;e4e5
	ld bc,lee06h		;e4e6
	inc e			;e4e9
	ex af,af'		;e4ea
	call nz,sub_a7e5h	;e4eb
	inc hl			;e4ee
	djnz $+58		;e4ef
	ld (hl),a		;e4f1
	ld h,b			;e4f2
le4f3h:
	add a,b			;e4f3
	nop			;e4f4
	push hl			;e4f5
	call nz,l1c08h		;e4f6
le4f9h:
	xor 006h		;e4f9
	ld bc,l0000h		;e4fb
	ret po			;e4fe
	inc (hl)		;e4ff
le500h:
	ld l,(hl)		;e500
le501h:
	ld e,d			;e501
	nop			;e502
	add a,(hl)		;e503
	call z,0f7ebh		;e504
	inc (hl)		;e507
	ld l,(hl)		;e508
	ld e,d			;e509
	ld h,c			;e50a
	add a,(hl)		;e50b
	call z,l0000h		;e50c
	inc h			;e50f
	ld (de),a		;e510
	ld b,b			;e511
	cp b			;e512
	call m,0fbf9h		;e513
	ld sp,hl		;e516
	ld sp,lf983h		;e517
	or 0c6h			;e51a
	add a,d			;e51c
	jr c,le59ch		;e51d
	rlca			;e51f
	ld h,h			;e520
	halt			;e521
	inc hl			;e522
le523h:
	inc de			;e523
	cp l			;e524
	rst 8			;e525
	ccf			;e526
	jp l070fh		;e527
	jr c,le5aah		;e52a
	ld e,a			;e52c
	rst 30h			;e52d
	rst 38h			;e52e
	ld a,h			;e52f
	or d			;e530
	rst 0			;e531
	ld a,b			;e532
	pop bc			;e533
	rrca			;e534
	dec a			;e535
	inc d			;e536
	out (00dh),a		;e537
	inc de			;e539
	cpl			;e53a
	ld e,a			;e53b
	ld a,a			;e53c
	rra			;e53d
	ld c,a			;e53e
	ret po			;e53f
	ld h,06eh		;e540
	call nz,0bdc8h		;e542
	di			;e545
le546h:
	call m,sub_f0c3h	;e546
	ret po			;e549
	inc e			;e54a
	ld a,(hl)		;e54b
	jp m,lffefh		;e54c
	ld a,04dh		;e54f
	ex (sp),hl		;e551
	ld e,083h		;e552
	ret p			;e554
	cp h			;e555
	jr z,le523h		;e556
	or b			;e558
	ret z			;e559
	call p,sub_fefah	;e55a
	ret m			;e55d
	jp p,lc800h		;e55e
le561h:
	ld h,b			;e561
	ld l,b			;e562
	nop			;e563
	jr nz,le561h		;e564
	ld (hl),0cdh		;e566
	djnz $-124		;e568
	and 000h		;e56a
	dec h			;e56c
	rlca			;e56d
	ret z			;e56e
	ld (hl),040h		;e56f
	ret po			;e571
	ret p			;e572
	inc d			;e573
	ld h,l			;e574
	ld (hl),c		;e575
	inc d			;e576
	dec b			;e577
	sub c			;e578
	nop			;e579
	inc a			;e57a
	ld a,09eh		;e57b
	call z,01521h		;e57d
le580h:
	ld b,h			;e580
	inc e			;e581
	ld (bc),a		;e582
	inc b			;e583
	ld l,h			;e584
	ld b,016h		;e585
	ld (de),a		;e587
	adc a,b			;e588
	sbc a,b			;e589
	ex af,af'		;e58a
	ld hl,(l1a3ah)		;e58b
	adc a,d			;e58e
	and d			;e58f
le590h:
	ld (l1351h),a		;e590
	ld h,b			;e593
	xor b			;e594
	ret z			;e595
	xor b			;e596
	ld l,b			;e597
	ld l,c			;e598
	ld bc,lc6c0h		;e599
le59ch:
	ld b,b			;e59c
	jr nz,$+8		;e59d
	ld bc,l4800h		;e59f
	ld (bc),a		;e5a2
	ld (l040ah),hl		;e5a3
	nop			;e5a6
	nop			;e5a7
	inc b			;e5a8
	inc bc			;e5a9
le5aah:
	nop			;e5aa
	adc a,l			;e5ab
	ld b,d			;e5ac
	inc b			;e5ad
	ld (bc),a		;e5ae
	ex af,af'		;e5af
	inc d			;e5b0
	ld bc,l0000h		;e5b1
	ld sp,l406fh		;e5b4
	inc e			;e5b7
	jp nz,l8200h		;e5b8
	cp c			;e5bb
	ld h,d			;e5bc
	ld b,000h		;e5bd
	add a,l			;e5bf
	ld h,e			;e5c0
	ld (hl),e		;e5c1
	ld (hl),c		;e5c2
	ld a,(l031bh)		;e5c3
	ld bc,07983h		;e5c6
	ld a,h			;e5c9
	jr c,le5d1h		;e5ca
	nop			;e5cc
	add a,e			;e5cd
	jp m,02074h		;e5ce
le5d1h:
	dec b			;e5d1
	nop			;e5d2
	add a,d			;e5d3
	sbc a,h			;e5d4
	ld c,006h		;e5d5
	nop			;e5d7
	add a,l			;e5d8
	add a,0ceh		;e5d9
	adc a,(hl)		;e5db
	ld e,h			;e5dc
	ret c			;e5dd
	inc bc			;e5de
	add a,b			;e5df
	nop			;e5e0
	cp b			;e5e1
	defb 0fdh,0ddh,0deh ;illegal sequence	;e5e2
	adc a,0eeh		;e5e5
	rst 20h			;e5e7
	rst 20h			;e5e8
	rst 30h			;e5e9
	defb 0fdh,0ddh,0deh ;illegal sequence	;e5ea
	adc a,0eeh		;e5ed
	rst 20h			;e5ef
	rst 20h			;e5f0
	rst 30h			;e5f1
	add a,b			;e5f2
	ret po			;e5f3
	ret po			;e5f4
	ret p			;e5f5
	ld (hl),b		;e5f6
	ld a,b			;e5f7
	jr c,$-66		;e5f8
	di			;e5fa
	or e			;e5fb
	cp c			;e5fc
	cp l			;e5fd
	cp l			;e5fe
	sbc a,0dfh		;e5ff
le601h:
	rst 8			;e601
sub_e602h:
	sbc a,(hl)		;e602
	sbc a,a			;e603
	rst 18h			;e604
	rst 18h			;e605
	rst 28h			;e606
le607h:
	rst 38h			;e607
	rst 30h			;e608
	di			;e609
	rst 8			;e60a
	rst 20h			;e60b
	ex (sp),hl		;e60c
	ex (sp),hl		;e60d
	ret p			;e60e
	ret p			;e60f
le610h:
	ret m			;e610
	cp 0f9h			;e611
	ld sp,hl		;e613
	call m,sub_fefch	;e614
	ld a,a			;e617
	ld a,a			;e618
	ccf			;e619
	inc c			;e61a
	rst 38h			;e61b
	ld (bc),a		;e61c
le61dh:
	ld a,a			;e61d
sub_e61eh:
	ld (bc),a		;e61e
	ccf			;e61f
le620h:
	xor h			;e620
	ld a,a			;e621
	sbc a,a			;e622
	rst 8			;e623
	rst 0			;e624
	rst 20h			;e625
	di			;e626
	call m,sub_f8fch+2	;e627
	call m,sub_dffeh	;e62a
	rst 20h			;e62d
	ld h,c			;e62e
le62fh:
	jr nc,$+10		;e62f
	ret po			;e631
	ret nc			;e632
	ret nz			;e633
	add a,h			;e634
	ld b,b			;e635
	nop			;e636
	ld (bc),a		;e637
	ld bc,lf7ffh		;e638
	rst 28h			;e63b
	rst 8			;e63c
	adc a,a			;e63d
	dec e			;e63e
le63fh:
	ld de,lff00h		;e63f
	rst 38h			;e642
	ei			;e643
	ei			;e644
le645h:
	pop af			;e645
	pop af			;e646
	ret p			;e647
	ret po			;e648
	sbc a,a			;e649
	sbc a,a			;e64a
	add a,e			;e64b
	add a,c			;e64c
	inc bc			;e64d
	ret nz			;e64e
	sub d			;e64f
	ld h,b			;e650
	rst 38h			;e651
	rst 18h			;e652
	rst 28h			;e653
	ex (sp),hl		;e654
	ld (hl),b		;e655
	jr le658h		;e656
le658h:
	nop			;e658
	ret nz			;e659
	ret po			;e65a
	ld (hl),b		;e65b
	sbc a,b			;e65c
	ld b,001h		;e65d
	nop			;e65f
	nop			;e660
	ld bc,l0301h+2		;e661
	inc bc			;e664
	rlca			;e665
	add a,c			;e666
	rrca			;e667
	inc b			;e668
	nop			;e669
	sbc a,b			;e66a
	ex af,af'		;e66b
	inc c			;e66c
	inc (hl)		;e66d
	cp 001h			;e66e
	inc bc			;e670
	rrca			;e671
	rra			;e672
	ccf			;e673
	ccf			;e674
	ld a,a			;e675
	defb 0edh ;next byte illegal after ed	;e676
	rrca			;e677
	rra			;e678
	rra			;e679
	ccf			;e67a
	ccf			;e67b
	ld a,a			;e67c
	rst 30h			;e67d
	rst 20h			;e67e
	defb 0fdh,0e8h,050h ;illegal sequence	;e67f
	add a,b			;e682
	inc c			;e683
	nop			;e684
	sub a			;e685
	rst 30h			;e686
	rst 8			;e687
	sbc a,a			;e688
	ld a,e			;e689
	rst 20h			;e68a
	adc a,098h		;e68b
	ld hl,lffffh		;e68d
	rst 28h			;e690
	sbc a,a			;e691
	add hl,sp		;e692
	inc hl			;e693
	cp 0fch			;e694
	ret m			;e696
	ret p			;e697
	ret nz			;e698
	add a,b			;e699
	rst 38h			;e69a
	cp 0f8h			;e69b
	inc b			;e69d
	nop			;e69e
	sbc a,d			;e69f
	scf			;e6a0
	ld (hl),a		;e6a1
	ret z			;e6a2
	sbc a,b			;e6a3
	sbc a,b			;e6a4
	sbc a,h			;e6a5
	sbc a,h			;e6a6
	cp h			;e6a7
	inc a			;e6a8
	ld l,h			;e6a9
	ld l,b			;e6aa
	ld l,b			;e6ab
	jp pe,ld6dah		;e6ac
	sbc a,0dch		;e6af
	sbc a,h			;e6b1
	sbc a,h			;e6b2
	cp h			;e6b3
	jr c,le645h		;e6b4
	cp 0feh			;e6b6
	call m,l03fch		;e6b8
	ret m			;e6bb
	add a,d			;e6bc
	jr nc,le6dfh		;e6bd
	inc bc			;e6bf
	ld h,b			;e6c0
	sbc a,b			;e6c1
	ret po			;e6c2
	ret p			;e6c3
	ret p			;e6c4
	pop hl			;e6c5
	pop bc			;e6c6
	add a,a			;e6c7
	ccf			;e6c8
	call m,sub_f8fch	;e6c9
	ret m			;e6cc
	ret p			;e6cd
	ret pe			;e6ce
	ret po			;e6cf
	ret po			;e6d0
	ld (hl),b		;e6d1
	jr nc,le6dch		;e6d2
	inc b			;e6d4
	ret p			;e6d5
	ret po			;e6d6
	ret nz			;e6d7
	ret nz			;e6d8
	add a,b			;e6d9
	inc bc			;e6da
	nop			;e6db
le6dch:
	sub b			;e6dc
	rrca			;e6dd
	dec de			;e6de
le6dfh:
	rla			;e6df
	rlca			;e6e0
	adc a,l			;e6e1
	adc a,e			;e6e2
	inc hl			;e6e3
	pop af			;e6e4
	ret m			;e6e5
	jp nc,l61b2h		;e6e6
	rst 38h			;e6e9
	rst 10h			;e6ea
	ex (sp),hl		;e6eb
	pop af			;e6ec
	inc bc			;e6ed
sub_e6eeh:
	nop			;e6ee
	jp z,l8101h		;e6ef
	adc a,b			;e6f2
	sbc a,h			;e6f3
	cp (hl)			;e6f4
	ei			;e6f5
	or e			;e6f6
	ld (hl),a		;e6f7
	rst 38h			;e6f8
	cp 0ddh			;e6f9
	ccf			;e6fb
	ld a,a			;e6fc
	in a,(0b3h)		;e6fd
	rst 20h			;e6ff
	sbc a,a			;e700
	cp 0feh			;e701
	defb 0fdh,0fbh,000h ;illegal sequence	;e703
	nop			;e706
	ld h,b			;e707
	ld h,b			;e708
	ld (hl),b		;e709
	ret p			;e70a
	rlca			;e70b
	ei			;e70c
	ld (bc),a		;e70d
	ld b,a			;e70e
	call z,sub_80ceh	;e70f
	sub b			;e712
	or b			;e713
	ld a,c			;e714
	ld bc,00f07h		;e715
	rra			;e718
	ccf			;e719
	ld a,a			;e71a
	ld a,a			;e71b
	rst 38h			;e71c
	ret m			;e71d
sub_e71eh:
	inc bc			;e71e
	ld bc,l3f7fh		;e71f
	rst 18h			;e722
	rst 20h			;e723
	rst 38h			;e724
	ccf			;e725
	ld a,a			;e726
	scf			;e727
	ld c,a			;e728
le729h:
	add hl,de		;e729
	cp a			;e72a
	ld a,a			;e72b
	ld a,001h		;e72c
	inc bc			;e72e
	rlca			;e72f
	dec bc			;e730
	ld de,060c2h		;e731
	jr le737h		;e734
	inc bc			;e736
le737h:
	rla			;e737
	dec sp			;e738
	ld a,a			;e739
	inc bc			;e73a
	rst 38h			;e73b
	add a,h			;e73c
	adc a,a			;e73d
	set 4,a			;e73e
	ei			;e740
	inc b			;e741
	rst 38h			;e742
	adc a,l			;e743
	rlca			;e744
	ld c,01ch		;e745
	ld h,b			;e747
	cp 0f8h			;e748
	ret po			;e74a
	nop			;e74b
	ex af,af'		;e74c
	inc e			;e74d
	ld (00148h),a		;e74e
	add hl,bc		;e751
	nop			;e752
	add a,d			;e753
	adc a,b			;e754
	ret c			;e755
	dec b			;e756
	nop			;e757
	sub b			;e758
	ex af,af'		;e759
	jr le6dfh		;e75a
	nop			;e75c
	jr nc,le729h		;e75d
	djnz le799h		;e75f
	ld a,c			;e761
	ld l,b			;e762
le763h:
	jp pe,l8401h		;e763
	ld (hl),04eh		;e766
	adc a,003h		;e768
	rst 20h			;e76a
	inc b			;e76b
	nop			;e76c
	add a,h			;e76d
	inc hl			;e76e
	ld (hl),b		;e76f
	ld l,(hl)		;e770
	add a,(hl)		;e771
	inc b			;e772
	nop			;e773
	add a,h			;e774
	ex af,af'		;e775
	jp po,025d9h		;e776
	ex af,af'		;e779
	nop			;e77a
	rst 0			;e77b
	add a,b			;e77c
	ex (sp),hl		;e77d
	rst 30h			;e77e
	rst 30h			;e77f
	ret po			;e780
	ld c,01fh		;e781
	ld c,000h		;e783
	rra			;e785
	cp a			;e786
	rst 18h			;e787
	rst 18h			;e788
	rlca			;e789
	jr nc,$+50		;e78a
	inc c			;e78c
	sbc a,(hl)		;e78d
	sbc a,0cdh		;e78e
	add a,b			;e790
	ld a,07eh		;e791
	jr c,le798h		;e793
	adc a,a			;e795
	rst 18h			;e796
	ld e,a			;e797
le798h:
	sbc a,a			;e798
le799h:
	rst 18h			;e799
	rst 8			;e79a
	add a,b			;e79b
	ret nz			;e79c
	pop hl			;e79d
	di			;e79e
	ret po			;e79f
	rst 8			;e7a0
	rst 18h			;e7a1
	rra			;e7a2
	rrca			;e7a3
	rst 38h			;e7a4
	rra			;e7a5
	cp a			;e7a6
	rst 18h			;e7a7
	rst 18h			;e7a8
	rlca			;e7a9
	jr nc,le7dch		;e7aa
	ld bc,l9b3bh		;e7ac
	ld h,e			;e7af
	ret p			;e7b0
	ld h,a			;e7b1
	rlca			;e7b2
	nop			;e7b3
	add a,b			;e7b4
	ex (sp),hl		;e7b5
	rst 30h			;e7b6
	rst 30h			;e7b7
	ret po			;e7b8
	ld c,01fh		;e7b9
	ld c,000h		;e7bb
	djnz le7c9h		;e7bd
	ld b,c			;e7bf
	add a,e			;e7c0
	and c			;e7c1
	ld b,b			;e7c2
	inc bc			;e7c3
	nop			;e7c4
	sub (hl)		;e7c5
	djnz le7c8h		;e7c6
le7c8h:
	ld c,d			;e7c8
le7c9h:
	inc c			;e7c9
	add a,h			;e7ca
	add a,h			;e7cb
	nop			;e7cc
	nop			;e7cd
	ex af,af'		;e7ce
	jr nz,le763h		;e7cf
	pop de			;e7d1
	ld h,b			;e7d2
	ld l,b			;e7d3
	nop			;e7d4
	djnz le7d7h		;e7d5
le7d7h:
	ld (bc),a		;e7d7
	sub b			;e7d8
	adc a,c			;e7d9
	xor l			;e7da
	ld l,a			;e7db
le7dch:
	inc bc			;e7dc
	nop			;e7dd
	ld (bc),a		;e7de
	ld a,(bc)		;e7df
	adc a,e			;e7e0
	inc e			;e7e1
	ld c,006h		;e7e2
	nop			;e7e4
	nop			;e7e5
	djnz $+76		;e7e6
	dec sp			;e7e8
	ld e,00eh		;e7e9
	ld c,a			;e7eb
	inc bc			;e7ec
	nop			;e7ed
	add a,l			;e7ee
	add a,b			;e7ef
	ld (de),a		;e7f0
	pop de			;e7f1
	ret p			;e7f2
	ld l,h			;e7f3
	inc bc			;e7f4
	nop			;e7f5
	sbc a,d			;e7f6
	ex af,af'		;e7f7
	add a,h			;e7f8
	rlca			;e7f9
	sub d			;e7fa
	and d			;e7fb
	nop			;e7fc
	nop			;e7fd
	add a,b			;e7fe
	add a,h			;e7ff
le800h:
	ld b,b			;e800
	ld c,c			;e801
	dec b			;e802
	rlca			;e803
	nop			;e804
	inc b			;e805
	nop			;e806
le807h:
	adc a,d			;e807
	ld (de),a		;e808
	ld d,c			;e809
	ld hl,l6300h		;e80a
	dec hl			;e80d
	ld sp,l1111h		;e80e
	inc bc			;e811
	nop			;e812
	xor b			;e813
	ld h,0a5h		;e814
	and d			;e816
	inc bc			;e817
	ld b,d			;e818
	add a,c			;e819
	add a,c			;e81a
	ld bc,05216h		;e81b
	ld hl,090a9h		;e81e
	djnz le83bh		;e821
	jr le82ch		;e823
	add a,a			;e825
	inc bc			;e826
	ld bc,l211fh+2		;e827
	djnz le840h		;e82a
le82ch:
	ld l,b			;e82c
	jr c,le867h		;e82d
	sub d			;e82f
	ld (de),a		;e830
	ld de,l2000h		;e831
	ret po			;e834
	ld c,b			;e835
	ld c,h			;e836
	dec b			;e837
	ld (bc),a		;e838
	ld b,d			;e839
	add a,b			;e83a
le83bh:
	add a,b			;e83b
	ex af,af'		;e83c
	ret nz			;e83d
	nop			;e83e
	inc bc			;e83f
le840h:
	ld bc,01386h		;e840
	di			;e843
	ret p			;e844
	rst 38h			;e845
	rst 38h			;e846
	ld bc,l0301h+2		;e847
	add a,c			;e84a
	rlca			;e84b
	rlca			;e84c
	nop			;e84d
	add a,c			;e84e
	ld e,b			;e84f
	inc bc			;e850
	ret c			;e851
	inc bc			;e852
	nop			;e853
	add a,c			;e854
	rra			;e855
	rlca			;e856
	rst 38h			;e857
	sbc a,d			;e858
	ld e,0feh		;e859
	cp 0ffh			;e85b
	rst 38h			;e85d
	nop			;e85e
	dec l			;e85f
	dec l			;e860
	nop			;e861
	inc b			;e862
	add hl,bc		;e863
	ld (de),a		;e864
	dec h			;e865
	nop			;e866
le867h:
	cp e			;e867
	cp e			;e868
	nop			;e869
	or a			;e86a
	ld (hl),a		;e86b
	rst 28h			;e86c
	rst 28h			;e86d
	ld bc,l3f0fh		;e86e
	ld a,a			;e871
sub_e872h:
	ld a,a			;e872
	inc bc			;e873
	rst 38h			;e874
	ld (bc),a		;e875
	ld a,a			;e876
	adc a,e			;e877
	ccf			;e878
	rrca			;e879
	ld bc,lff00h		;e87a
	rst 38h			;e87d
	nop			;e87e
	inc bc			;e87f
	rrca			;e880
	rra			;e881
	rra			;e882
	inc bc			;e883
	ccf			;e884
	ld (bc),a		;e885
	rra			;e886
	adc a,e			;e887
	rrca			;e888
	inc bc			;e889
	nop			;e88a
	nop			;e88b
	rst 38h			;e88c
	rst 38h			;e88d
	nop			;e88e
	ld bc,l0703h		;e88f
	rlca			;e892
	inc bc			;e893
	rrca			;e894
	ld (bc),a		;e895
	rlca			;e896
	add a,h			;e897
	inc bc			;e898
	ld bc,l0000h		;e899
	ld a,(bc)		;e89c
	rst 38h			;e89d
	adc a,l			;e89e
	ld bc,l9b3bh		;e89f
	ld h,e			;e8a2
	ret p			;e8a3
	ld h,a			;e8a4
	rlca			;e8a5
	nop			;e8a6
	nop			;e8a7
	ld h,b			;e8a8
	djnz le8b0h		;e8a9
	inc b			;e8ab
	inc bc			;e8ac
	ld (bc),a		;e8ad
	adc a,b			;e8ae
	nop			;e8af
le8b0h:
	add a,b			;e8b0
	ld b,d			;e8b1
	ld hl,l1029h		;e8b2
	nop			;e8b5
	nop			;e8b6
	nop			;e8b7
	ld (bc),a		;e8b8
	nop			;e8b9
	inc bc			;e8ba
	add a,b			;e8bb
	inc bc			;e8bc
	ld b,b			;e8bd
	inc bc			;e8be
	nop			;e8bf
le8c0h:
	adc a,l			;e8c0
	add a,b			;e8c1
	ret nz			;e8c2
	ret nz			;e8c3
	ret po			;e8c4
	ret p			;e8c5
	nop			;e8c6
	add a,b			;e8c7
	add a,b			;e8c8
	ld b,b			;e8c9
	and b			;e8ca
	sbc a,b			;e8cb
sub_e8cch:
	ld b,h			;e8cc
	jr nz,le8d5h		;e8cd
	nop			;e8cf
	add a,a			;e8d0
	ld e,b			;e8d1
	rrca			;e8d2
	jr le8d9h		;e8d3
le8d5h:
	inc b			;e8d5
	inc bc			;e8d6
	inc bc			;e8d7
	inc bc			;e8d8
le8d9h:
	ld bc,05684h		;e8d9
le8dch:
	ld (l0220h+2),hl	;e8dc
	inc b			;e8df
sub_e8e0h:
	nop			;e8e0
	add a,c			;e8e1
	inc d			;e8e2
	inc bc			;e8e3
	ex af,af'		;e8e4
	rlca			;e8e5
	nop			;e8e6
	ld (bc),a		;e8e7
	ld bc,l0381h+2		;e8e8
	rlca			;e8eb
	rlca			;e8ec
	dec b			;e8ed
	nop			;e8ee
	add a,c			;e8ef
	rlca			;e8f0
	ld a,(bc)		;e8f1
	rst 38h			;e8f2
	djnz le8f5h		;e8f3
le8f5h:
	dec b			;e8f5
	rst 38h			;e8f6
	ld (bc),a		;e8f7
	rst 30h			;e8f8
	add a,c			;e8f9
	ex (sp),hl		;e8fa
	ld b,0ffh		;e8fb
	add a,d			;e8fd
	ld (bc),a		;e8fe
	rlca			;e8ff
le900h:
	inc bc			;e900
le901h:
	ld bc,l0301h+1		;e901
le904h:
	add a,(hl)		;e904
	ld bc,l0100h		;e905
le908h:
	nop			;e908
le909h:
	jr le90fh		;e909
	rlca			;e90b
	nop			;e90c
	add a,e			;e90d
	ld c,b			;e90e
le90fh:
	ld (l0301h+1),hl	;e90f
	nop			;e912
	nop			;e913
	inc bc			;e914
	nop			;e915
	ld (bc),a		;e916
	ex af,af'		;e917
	ld (bc),a		;e918
	inc e			;e919
	sub c			;e91a
	ld a,(01c18h)		;e91b
	ld hl,(l7238h)		;e91e
le921h:
	ld b,c			;e921
	ex af,af'		;e922
	rst 38h			;e923
	inc e			;e924
	inc (hl)		;e925
	ld a,(l7259h)		;e926
	ld b,c			;e929
	ex af,af'		;e92a
le92bh:
	rst 38h			;e92b
	nop			;e92c
	sbc a,l			;e92d
	ld c,03bh		;e92e
	ld (hl),a		;e930
le931h:
	ld l,h			;e931
	and b			;e932
	ld l,a			;e933
	ld h,a			;e934
	sbc a,a			;e935
	ld a,(hl)		;e936
	ccf			;e937
	add a,a			;e938
	cp 00dh			;e939
	ld a,l			;e93b
	ret po			;e93c
le93dh:
	call m,sub_6489h	;e93d
	ld sp,hl		;e940
le941h:
	or c			;e941
	ld b,h			;e942
	add a,e			;e943
	nop			;e944
	nop			;e945
	jr nz,le9bdh		;e946
	ld sp,hl		;e948
	ld c,(hl)		;e949
	ld b,h			;e94a
	inc bc			;e94b
	add hl,bc		;e94c
	and l			;e94d
	ld (hl),d		;e94e
	ld (hl),e		;e94f
	jr nc,le9aah		;e950
	ld l,(hl)		;e952
	ld de,l0000h		;e953
	inc e			;e956
	ld a,(hl)		;e957
	pop hl			;e958
	ret nz			;e959
	pop bc			;e95a
	add a,b			;e95b
	ld bc,0c282h		;e95c
	adc a,e			;e95f
	inc a			;e960
	cp c			;e961
	ld sp,iy		;e962
	jp m,le076h		;e964
	ld (hl),b		;e967
	ret m			;e968
	or h			;e969
	or a			;e96a
	ld a,01eh		;e96b
	inc l			;e96d
	ld h,d			;e96e
	sbc a,e			;e96f
	ld h,(hl)		;e970
	or c			;e971
	ld b,h			;e972
	inc bc			;e973
	rrca			;e974
	or b			;e975
	and l			;e976
	sbc a,c			;e977
	ld e,d			;e978
	ld b,d			;e979
	jr le9a0h		;e97a
	jr le941h		;e97c
	jr le93dh		;e97e
	dec a			;e980
le981h:
	cp l			;e981
	dec a			;e982
	cp l			;e983
	dec a			;e984
	ld b,d			;e985
	inc a			;e986
	dec a			;e987
	ld a,b			;e988
	ld a,c			;e989
	ret p			;e98a
	di			;e98b
	ret po			;e98c
	jr $-125		;e98d
	jp nz,l7973h+2		;e98f
le992h:
	ld a,(l0b15h)		;e992
	adc a,h			;e995
	nop			;e996
	and e			;e997
	exx			;e998
	xor l			;e999
	and l			;e99a
	and l			;e99b
	xor e			;e99c
	ld c,d			;e99d
	dec d			;e99e
	sub c			;e99f
le9a0h:
	ld a,(bc)		;e9a0
	adc a,d			;e9a1
	adc a,b			;e9a2
	ld d,a			;e9a3
	inc h			;e9a4
	jp l8f00h		;e9a5
	ld a,d			;e9a8
	dec hl			;e9a9
le9aah:
	ld a,(bc)		;e9aa
	ld bc,022c3h		;e9ab
	ld e,003h		;e9ae
	ret nz			;e9b0
	rra			;e9b1
	ld c,a			;e9b2
	and c			;e9b3
	ld c,b			;e9b4
	xor h			;e9b5
	cp b			;e9b6
	inc b			;e9b7
	nop			;e9b8
	adc a,d			;e9b9
	ld hl,(leaeah)		;e9ba
le9bdh:
	ld hl,(l1800h)		;e9bd
le9c0h:
	ret nz			;e9c0
	ld a,a			;e9c1
	ccf			;e9c2
	ld bc,sub_af03h		;e9c3
	add a,l			;e9c6
	jr le9cch		;e9c7
	cp 0fch			;e9c9
	add a,b			;e9cb
le9cch:
	inc bc			;e9cc
	push af			;e9cd
	nop			;e9ce
	sbc a,h			;e9cf
	ld sp,hl		;e9d0
	ld a,c			;e9d1
le9d2h:
	ld a,(hl)		;e9d2
	rra			;e9d3
	jp 0331fh		;e9d4
	ld b,b			;e9d7
	rst 0			;e9d8
	rst 28h			;e9d9
	ld a,h			;e9da
	add a,e			;e9db
	cp e			;e9dc
	ld a,(hl)		;e9dd
	rst 38h			;e9de
	ld a,(hl)		;e9df
	ccf			;e9e0
	ccf			;e9e1
	rst 38h			;e9e2
	ret m			;e9e3
	ret po			;e9e4
	ret m			;e9e5
	call z,l0002h		;e9e6
	ld a,a			;e9e9
	nop			;e9ea
	rrca			;e9eb
	inc b			;e9ec
	nop			;e9ed
	inc b			;e9ee
	ld a,e			;e9ef
le9f0h:
	adc a,c			;e9f0
	rst 38h			;e9f1
	ret m			;e9f2
	ld b,007h		;e9f3
	rst 20h			;e9f5
	ccf			;e9f6
	ld a,a			;e9f7
	ccf			;e9f8
	ld bc,sub_af03h		;e9f9
	nop			;e9fc
	adc a,b			;e9fd
	di			;e9fe
	ret nz			;e9ff
lea00h:
	rra			;ea00
	ret m			;ea01
	or 0cch			;ea02
	inc a			;ea04
	ret m			;ea05
	inc b			;ea06
lea07h:
	nop			;ea07
	xor b			;ea08
	ld bc,l1f0fh		;ea09
	ret nz			;ea0c
	nop			;ea0d
lea0eh:
	nop			;ea0e
	ld bc,lf91eh		;ea0f
lea12h:
	rst 20h			;ea12
	call c,sub_0631h	;ea13
sub_ea16h:
	ld a,(l52bah)		;ea16
	add a,018h		;ea19
	ld (hl),b		;ea1b
	ret nz			;ea1c
	inc bc			;ea1d
	rrca			;ea1e
	inc e			;ea1f
lea20h:
	dec sp			;ea20
lea21h:
	jr nc,lea6ah		;ea21
lea23h:
	call m,0dd00h		;ea23
	dec sp			;ea26
lea27h:
	call p,l3f81h		;ea27
	ret po			;ea2a
	nop			;ea2b
	nop			;ea2c
	rst 0			;ea2d
	adc a,01ch		;ea2e
lea30h:
	ret m			;ea30
	rlca			;ea31
	nop			;ea32
	and l			;ea33
lea34h:
	rlca			;ea34
lea35h:
	rra			;ea35
	ld b,b			;ea36
	ld (bc),a		;ea37
	ld a,d			;ea38
	nop			;ea39
	rlca			;ea3a
	sbc a,0dch		;ea3b
	add a,e			;ea3d
	rrca			;ea3e
	call m,sub_fff2h	;ea3f
	ld bc,l0402h+1		;ea42
	ld bc,l260ah+2		;ea45
	ld h,b			;ea48
	rlca			;ea49
	rra			;ea4a
	ccf			;ea4b
	ld a,a			;ea4c
	ld a,a			;ea4d
	rrca			;ea4e
	ld a,a			;ea4f
	rla			;ea50
sub_ea51h:
	rlca			;ea51
lea52h:
	rra			;ea52
	ccf			;ea53
	ld a,a			;ea54
	ld a,a			;ea55
	rrca			;ea56
	ld a,a			;ea57
	rla			;ea58
	nop			;ea59
	ld (bc),a		;ea5a
	nop			;ea5b
	add a,(hl)		;ea5c
	jr $+62			;ea5d
	add a,c			;ea5f
lea60h:
	rst 20h			;ea60
lea61h:
	ld b,d			;ea61
lea62h:
	ld a,(hl)		;ea62
lea63h:
	inc b			;ea63
	ld a,e			;ea64
	add a,h			;ea65
	nop			;ea66
	ret m			;ea67
	ld b,007h		;ea68
lea6ah:
	nop			;ea6a
lea6bh:
	sub l			;ea6b
	nop			;ea6c
	cp l			;ea6d
	cp l			;ea6e
	nop			;ea6f
lea70h:
	cp l			;ea70
lea71h:
	cp l			;ea71
	add a,c			;ea72
	inc a			;ea73
	inc a			;ea74
	add a,c			;ea75
lea76h:
	cp l			;ea76
	cp l			;ea77
lea78h:
	nop			;ea78
lea79h:
	cp l			;ea79
	cp l			;ea7a
	nop			;ea7b
	nop			;ea7c
	cp l			;ea7d
lea7eh:
	cp l			;ea7e
	add a,c			;ea7f
lea80h:
	inc a			;ea80
	ld b,000h		;ea81
	add a,a			;ea83
	inc a			;ea84
	add a,c			;ea85
	cp l			;ea86
	cp l			;ea87
	rst 38h			;ea88
	nop			;ea89
	ld l,b			;ea8a
	dec b			;ea8b
	nop			;ea8c
	add a,c			;ea8d
	ld l,b			;ea8e
	inc b			;ea8f
lea90h:
	nop			;ea90
lea91h:
	add a,c			;ea91
lea92h:
	inc h			;ea92
lea93h:
	inc bc			;ea93
	nop			;ea94
	nop			;ea95
	sbc a,b			;ea96
lea97h:
	nop			;ea97
lea98h:
	or l			;ea98
lea99h:
	defb 0fdh,001h,07dh ;illegal sequence	;ea99
	dec c			;ea9c
lea9dh:
	ret po			;ea9d
	rst 38h			;ea9e
	ld l,l			;ea9f
	ld l,l			;eaa0
	inc d			;eaa1
	ld a,a			;eaa2
	add a,b			;eaa3
	ccf			;eaa4
	ld hl,(l112ah)		;eaa5
leaa8h:
	ex af,af'		;eaa8
leaa9h:
	inc b			;eaa9
	inc bc			;eaaa
	ld bc,l0703h		;eaab
	rrca			;eaae
	nop			;eaaf
leab0h:
	xor d			;eab0
	nop			;eab1
	ld l,d			;eab2
	ld h,d			;eab3
	ld h,015h		;eab4
	sub c			;eab6
	ld c,c			;eab7
	ld hl,(05500h)		;eab8
	inc sp			;eabb
	sbc a,c			;eabc
leabdh:
	sbc a,a			;eabd
	ld b,b			;eabe
	dec hl			;eabf
	ld d,h			;eac0
	nop			;eac1
	xor d			;eac2
	call z,sub_f999h	;eac3
	ld (bc),a		;eac6
	jr lea6bh		;eac7
	ld d,l			;eac9
	ld d,h			;eaca
	xor d			;eacb
	xor c			;eacc
	ld h,h			;eacd
	call nz,sub_9395h	;eace
	inc h			;ead1
lead2h:
	and h			;ead2
	ld d,h			;ead3
	ld d,h			;ead4
lead5h:
	sub l			;ead5
lead6h:
	and l			;ead6
	ld hl,(00032h)		;ead7
	ld h,a			;eada
	inc bc			;eadb
	ld d,h			;eadc
	adc a,a			;eadd
	add a,b			;eade
	cp 0bah			;eadf
	dec e			;eae1
	scf			;eae2
sub_eae3h:
	ld l,(hl)		;eae3
	ld e,l			;eae4
	ld e,l			;eae5
leae6h:
	nop			;eae6
	ld l,05dh		;eae7
	rst 30h			;eae9
leaeah:
	rst 38h			;eaea
	ld a,(hl)		;eaeb
	defb 0ddh,004h,0fdh ;illegal sequence	;eaec
	add a,d			;eaef
	ld h,e			;eaf0
	inc e			;eaf1
	dec b			;eaf2
	ld e,l			;eaf3
	adc a,h			;eaf4
	ld a,a			;eaf5
	ld l,(hl)		;eaf6
	ld l,(hl)		;eaf7
	ld l,d			;eaf8
	ld l,(hl)		;eaf9
	ld h,h			;eafa
	ld h,h			;eafb
	inc h			;eafc
	ld (l5c40h),hl		;eafd
sub_eb00h:
	ld b,b			;eb00
leb01h:
	inc bc			;eb01
sub_eb02h:
	ld e,h			;eb02
	and a			;eb03
	ld b,b			;eb04
	ld a,h			;eb05
	ld a,000h		;eb06
	ccf			;eb08
	inc de			;eb09
leb0ah:
	inc c			;eb0a
leb0bh:
	ld e,a			;eb0b
	jr leb45h		;eb0c
	inc e			;eb0e
	nop			;eb0f
	defb 0ddh,0dch,0dfh ;illegal sequence	;eb10
	nop			;eb13
	inc e			;eb14
leb15h:
	inc e			;eb15
	jr nc,leb4dh		;eb16
	push bc			;eb18
	jr nc,lead2h		;eb19
	or c			;eb1b
	or l			;eb1c
	dec (hl)		;eb1d
	or l			;eb1e
	dec (hl)		;eb1f
	or c			;eb20
leb21h:
	or a			;eb21
	rst 0			;eb22
	jr nc,leb5ch		;eb23
	scf			;eb25
	inc e			;eb26
	rrca			;eb27
	dec d			;eb28
	dec d			;eb29
	nop			;eb2a
leb2bh:
	inc bc			;eb2b
	inc e			;eb2c
	adc a,b			;eb2d
	ld l,a			;eb2e
	nop			;eb2f
sub_eb30h:
	ld d,l			;eb30
leb31h:
	ld d,l			;eb31
	rra			;eb32
	ccf			;eb33
	ld a,a			;eb34
	nop			;eb35
	ld b,05dh		;eb36
	adc a,d			;eb38
	ld e,h			;eb39
	ld e,l			;eb3a
	defb 0fdh,0fch,01dh ;illegal sequence	;eb3b
	pop af			;eb3e
	dec d			;eb3f
leb40h:
	push af			;eb40
sub_eb41h:
	pop af			;eb41
	push af			;eb42
	ex af,af'		;eb43
	inc e			;eb44
leb45h:
	sub b			;eb45
	ld (0031dh),a		;eb46
	ld h,06dh		;eb49
	ld c,c			;eb4b
	ld e,d			;eb4c
leb4dh:
	jp lfcfdh		;eb4d
	defb 0fdh,0f1h,0f5h ;illegal sequence	;eb50
	push af			;eb53
	pop af			;eb54
	push af			;eb55
	nop			;eb56
	add a,d			;eb57
	nop			;eb58
	ld (hl),c		;eb59
	inc b			;eb5a
	nop			;eb5b
leb5ch:
	add a,h			;eb5c
	ld (hl),c		;eb5d
	nop			;eb5e
	nop			;eb5f
	nop			;eb60
	inc b			;eb61
	jr nz,leae6h		;eb62
	nop			;eb64
	nop			;eb65
	nop			;eb66
	adc a,b			;eb67
	nop			;eb68
	ld a,07fh		;eb69
leb6bh:
	ld a,a			;eb6b
	ld a,l			;eb6c
	ld a,l			;eb6d
	ld a,e			;eb6e
	ld a,000h		;eb6f
leb71h:
	ret nc			;eb71
sub_eb72h:
	rra			;eb72
	ret po			;eb73
	ld bc,04b17h		;eb74
	dec a			;eb77
	ld b,h			;eb78
	ld (de),a		;eb79
	ret m			;eb7a
	rlca			;eb7b
	ld h,b			;eb7c
	call nc,l5904h		;eb7d
	ld d,h			;eb80
leb81h:
	cp 043h			;eb81
	ld b,e			;eb83
	ld h,a			;eb84
	sub a			;eb85
	adc a,e			;eb86
	sbc a,e			;eb87
	or l			;eb88
	sub a			;eb89
	inc b			;eb8a
	jr nz,$-122		;eb8b
	ld d,e			;eb8d
	dec c			;eb8e
	ld e,d			;eb8f
	dec a			;eb90
leb91h:
	ld e,0a0h		;eb91
	add a,b			;eb93
	ld c,d			;eb94
	jr nc,leb6bh		;eb95
leb97h:
	ei			;eb97
	jp c,l02dch		;eb98
	ld b,d			;eb9b
	add a,d			;eb9c
	pop hl			;eb9d
	pop bc			;eb9e
	and c			;eb9f
sub_eba0h:
	pop bc			;eba0
sub_eba1h:
	pop de			;eba1
	sbc a,e			;eba2
	adc a,l			;eba3
	add a,l			;eba4
	sub e			;eba5
	sbc a,d			;eba6
	ld c,l			;eba7
	ld b,b			;eba8
	ld b,b			;eba9
	ccf			;ebaa
	ccf			;ebab
	adc a,a			;ebac
	rra			;ebad
	ld b,0afh		;ebae
sub_ebb0h:
	ld e,e			;ebb0
	sbc a,h			;ebb1
	xor d			;ebb2
	jp p,0a0ech		;ebb3
	sub b			;ebb6
	call m,0f4aah		;ebb7
	pop af			;ebba
	pop bc			;ebbb
	pop bc			;ebbc
	pop hl			;ebbd
	ld h,c			;ebbe
	ld b,d			;ebbf
	and d			;ebc0
	add a,d			;ebc1
	nop			;ebc2
	dec b			;ebc3
	nop			;ebc4
	add a,(hl)		;ebc5
	inc e			;ebc6
	ld bc,01c2ah		;ebc7
	ld b,(hl)		;ebca
	ld hl,l0009h		;ebcb
	adc a,b			;ebce
	ld de,lf004h		;ebcf
	ld b,c			;ebd2
	ld d,08ah		;ebd3
	jr nc,lec1ch		;ebd5
	rlca			;ebd7
	nop			;ebd8
	adc a,d			;ebd9
	inc e			;ebda
	ld bc,l082ah		;ebdb
	ld (hl),c		;ebde
	xor l			;ebdf
	rrca			;ebe0
	inc e			;ebe1
	ld b,(hl)		;ebe2
	ld hl,l0005h		;ebe3
	sub c			;ebe6
	ld de,lf004h		;ebe7
	ld b,c			;ebea
	inc (hl)		;ebeb
	inc b			;ebec
	ld l,h			;ebed
	ld bc,08a16h		;ebee
	jr nc,$+71		;ebf1
	nop			;ebf3
	nop			;ebf4
	ld h,b			;ebf5
	ld h,b			;ebf6
	jr nz,lebfeh		;ebf7
	nop			;ebf9
	adc a,b			;ebfa
	ld hl,(l9149h)		;ebfb
lebfeh:
	dec d			;ebfe
	ld h,062h		;ebff
	ld l,d			;ec01
	nop			;ec02
	nop			;ec03
	add a,c			;ec04
	rst 38h			;ec05
	ld b,07fh		;ec06
	ld (bc),a		;ec08
	nop			;ec09
	ld b,0fch		;ec0a
	add a,d			;ec0c
	nop			;ec0d
	rst 38h			;ec0e
	ld b,07fh		;ec0f
	ld (bc),a		;ec11
	nop			;ec12
	ld b,0fch		;ec13
	ld (bc),a		;ec15
	rst 38h			;ec16
	add a,c			;ec17
	ld a,a			;ec18
	inc b			;ec19
	ld b,b			;ec1a
	add a,h			;ec1b
lec1ch:
	ld a,a			;ec1c
	nop			;ec1d
	nop			;ec1e
	call m,l0402h+2		;ec1f
	adc a,d			;ec22
	call m,lffffh		;ec23
	ex af,af'		;ec26
	ex af,af'		;ec27
	inc e			;ec28
	ex af,af'		;ec29
	ld hl,(l6b7eh+1)	;ec2a
	nop			;ec2d
	add a,d			;ec2e
	rst 38h			;ec2f
	ld a,a			;ec30
	inc b			;ec31
	ld b,b			;ec32
	add a,h			;ec33
	ld a,a			;ec34
	nop			;ec35
	nop			;ec36
	call m,l0402h+2		;ec37
	add a,d			;ec3a
	call m,sub_00ffh	;ec3b
	and b			;ec3e
	rst 38h			;ec3f
	add a,b			;ec40
	ld h,b			;ec41
	ld (hl),a		;ec42
	jr c,lec55h		;ec43
	inc hl			;ec45
	and a			;ec46
	nop			;ec47
	ld bc,lee06h		;ec48
	inc e			;ec4b
	ex af,af'		;ec4c
	call nz,sub_a7e5h	;ec4d
	inc hl			;ec50
	djnz lec8bh		;ec51
	ld (hl),a		;ec53
	ld h,b			;ec54
lec55h:
	add a,b			;ec55
	rst 38h			;ec56
	push hl			;ec57
	call nz,l1c08h		;ec58
	xor 006h		;ec5b
	ld bc,00800h		;ec5d
	ld d,l			;ec60
lec61h:
	sub b			;ec61
	inc (hl)		;ec62
	jr lec91h		;ec63
	jr lec9bh		;ec65
	jr lec95h		;ec67
	jr lecd5h		;ec69
	ld e,b			;ec6b
	jp z,l5aa6h		;ec6c
	xor h			;ec6f
	ld e,d			;ec70
	ld c,(hl)		;ec71
	inc b			;ec72
	nop			;ec73
	adc a,b			;ec74
	ld l,d			;ec75
	ld e,b			;ec76
	jp z,l5aa6h		;ec77
	xor h			;ec7a
	ld e,d			;ec7b
	ld c,(hl)		;ec7c
	inc b			;ec7d
	nop			;ec7e
	ld (bc),a		;ec7f
	ld h,(hl)		;ec80
	ex af,af'		;ec81
	nop			;ec82
	ld (bc),a		;ec83
	ld h,(hl)		;ec84
	ex af,af'		;ec85
	nop			;ec86
	ld (bc),a		;ec87
	ld h,(hl)		;ec88
	ex af,af'		;ec89
	nop			;ec8a
lec8bh:
	ld (bc),a		;ec8b
	ld h,(hl)		;ec8c
	ld (bc),a		;ec8d
	rst 38h			;ec8e
	ex af,af'		;ec8f
	nop			;ec90
lec91h:
	ld (bc),a		;ec91
	rst 38h			;ec92
	ex af,af'		;ec93
	nop			;ec94
lec95h:
	ld (bc),a		;ec95
	rst 38h			;ec96
	ex af,af'		;ec97
	nop			;ec98
	ld (bc),a		;ec99
	rst 38h			;ec9a
lec9bh:
	ld (bc),a		;ec9b
	nop			;ec9c
	add a,c			;ec9d
	jr nz,leca8h		;ec9e
	nop			;eca0
	add a,c			;eca1
	ld (bc),a		;eca2
	inc b			;eca3
	nop			;eca4
	nop			;eca5
	sub b			;eca6
	inc bc			;eca7
leca8h:
	rrca			;eca8
	rra			;eca9
	ccf			;ecaa
	ld a,a			;ecab
	rst 38h			;ecac
	nop			;ecad
	nop			;ecae
	ret nz			;ecaf
	ret p			;ecb0
	ret m			;ecb1
	call m,l80fdh+1		;ecb2
	nop			;ecb5
	nop			;ecb6
	nop			;ecb7
	rst 38h			;ecb8
	rlca			;ecb9
	rrca			;ecba
	jr z,$-87		;ecbb
	adc a,a			;ecbd
	jr z,lec61h		;ecbe
lecc0h:
	adc a,(hl)		;ecc0
	ld l,a			;ecc1
	ld l,a			;ecc2
	rst 38h			;ecc3
	and a			;ecc4
	xor a			;ecc5
	rst 38h			;ecc6
	cp a			;ecc7
	inc e			;ecc8
	or 0f6h			;ecc9
	rst 38h			;eccb
	push hl			;eccc
	rst 30h			;eccd
	inc bc			;ecce
	ld c,c			;eccf
	or h			;ecd0
	ret po			;ecd1
	ret p			;ecd2
	inc d			;ecd3
	push hl			;ecd4
lecd5h:
	pop af			;ecd5
	call p,041e5h		;ecd6
	ccf			;ecd9
	ld a,h			;ecda
	ld h,e			;ecdb
	ld c,a			;ecdc
	rra			;ecdd
	ld a,07ch		;ecde
	ld a,b			;ece0
	ld l,e			;ece1
	add a,a			;ece2
	xor a			;ece3
	or a			;ece4
	ld (hl),a		;ece5
	ld a,(lf5c9h)		;ece6
	or d			;ece9
	cp c			;ecea
	cp d			;eceb
	or (hl)			;ecec
	ld d,0cfh		;eced
	xor a			;ecef
	scf			;ecf0
	add a,d			;ecf1
	call c,sub_accch	;ecf2
	ld h,h			;ecf5
	ld (hl),b		;ecf6
	call p,079f4h		;ecf7
	ld (hl),c		;ecfa
	ld (hl),e		;ecfb
	jr c,led37h		;ecfc
	inc e			;ecfe
lecffh:
	ld c,h			;ecff
led00h:
	ld b,(hl)		;ed00
	ld sp,hl		;ed01
	di			;ed02
	ld h,h			;ed03
	xor b			;ed04
led05h:
	ret			;ed05
led06h:
	xor c			;ed06
led07h:
	ld l,c			;ed07
led08h:
	ld l,c			;ed08
led09h:
	jp pe,l6492h		;ed09
led0ch:
	adc a,h			;ed0c
led0dh:
	ld a,(de)		;ed0d
	ld (hl),b		;ed0e
led0fh:
	and d			;ed0f
	ld b,063h		;ed10
	ld hl,l1030h		;ed12
	ex af,af'		;ed15
	inc (hl)		;ed16
	ld a,d			;ed17
	cp l			;ed18
	inc h			;ed19
	ld d,043h		;ed1a
	ld sp,l4810h		;ed1c
led1fh:
	inc c			;ed1f
	ld h,a			;ed20
	pop af			;ed21
	ld h,e			;ed22
	dec b			;ed23
	adc a,(hl)		;ed24
	or 003h			;ed25
	jr c,led6ch		;ed27
	adc a,(hl)		;ed29
	call nz,072a0h		;ed2a
	ld l,h			;ed2d
	ret nz			;ed2e
	ld (de),a		;ed2f
	ret pe			;ed30
	ret nz			;ed31
	cp 0f9h			;ed32
	ld (hl),a		;ed34
	cpl			;ed35
	sbc a,h			;ed36
led37h:
	add a,e			;ed37
	cp c			;ed38
	rrca			;ed39
	ld b,a			;ed3a
	inc bc			;ed3b
	ret nc			;ed3c
	ret c			;ed3d
	call z,sub_d814h	;ed3e
	ret z			;ed41
	inc d			;ed42
	ret pe			;ed43
	inc d			;ed44
	ex af,af'		;ed45
	inc b			;ed46
	djnz led6dh		;ed47
	inc l			;ed49
	ld c,a			;ed4a
	ld c,a			;ed4b
	inc b			;ed4c
led4dh:
	ld b,e			;ed4d
	rlca			;ed4e
	ld d,e			;ed4f
	ld e,d			;ed50
	jr z,$-17		;ed51
	dec c			;ed53
	ret po			;ed54
	ret pe			;ed55
	defb 0edh ;next byte illegal after ed	;ed56
	add a,h			;ed57
	ld a,b			;ed58
	call c,l2060h		;ed59
	jr nz,led72h		;ed5c
	ld de,l0d8bh		;ed5e
	inc b			;ed61
	ld c,h			;ed62
	ld c,b			;ed63
	ld b,h			;ed64
	ld c,h			;ed65
	inc h			;ed66
	and h			;ed67
	ret z			;ed68
	call z,sub_6161h	;ed69
led6ch:
	inc d			;ed6c
led6dh:
	ld (hl),h		;ed6d
	halt			;ed6e
	ld (030ffh),hl		;ed6f
led72h:
	inc b			;ed72
	or d			;ed73
	rst 38h			;ed74
	cp d			;ed75
	ld e,h			;ed76
	rst 38h			;ed77
	inc c			;ed78
	ld (bc),a		;ed79
	ld b,c			;ed7a
	ld (l9ab7h),hl		;ed7b
	ld e,l			;ed7e
	ld c,a			;ed7f
	ld h,00ah		;ed80
	jp nc,l1292h		;ed82
	ld a,(de)		;ed85
	inc c			;ed86
	add a,b			;ed87
	inc c			;ed88
	rra			;ed89
	ld c,a			;ed8a
	or b			;ed8b
	xor a			;ed8c
	ld l,(hl)		;ed8d
	ld e,001h		;ed8e
	nop			;ed90
	add a,e			;ed91
	ret m			;ed92
	ret m			;ed93
	rlca			;ed94
	ret m			;ed95
	rst 30h			;ed96
	rst 30h			;ed97
led98h:
	rrca			;ed98
	ld l,a			;ed99
	ld l,a			;ed9a
	rst 38h			;ed9b
	and a			;ed9c
	xor a			;ed9d
	inc bc			;ed9e
	add hl,bc		;ed9f
	adc a,d			;eda0
	dec c			;eda1
	dec e			;eda2
	dec e			;eda3
	ld e,l			;eda4
	ld e,b			;eda5
	ld d,c			;eda6
	ld b,l			;eda7
	ld c,h			;eda8
	add a,0e1h		;eda9
ledabh:
	push af			;edab
sub_edach:
	defb 0edh ;next byte illegal after ed	;edac
	xor 05eh		;edad
	sbc a,a			;edaf
sub_edb0h:
	xor a			;edb0
	ld e,c			;edb1
	inc de			;edb2
	ld h,h			;edb3
	xor b			;edb4
ledb5h:
	ret			;edb5
	xor c			;edb6
	ld l,c			;edb7
	ld l,c			;edb8
	rla			;edb9
	ret			;edba
	and 071h		;edbb
	jr c,led4dh		;edbd
	push bc			;edbf
	ret po			;edc0
	pop af			;edc1
	ld h,d			;edc2
	inc b			;edc3
	adc a,d			;edc4
	rst 30h			;edc5
	ld (bc),a		;edc6
	jr c,lee0ch		;edc7
	ld b,a			;edc9
	inc bc			;edca
	ld d,b			;edcb
	ld e,b			;edcc
	ld c,h			;edcd
	inc d			;edce
	ld e,b			;edcf
	ld e,h			;edd0
ledd1h:
	adc a,h			;edd1
	inc de			;edd2
	inc l			;edd3
	ld d,b			;edd4
	ld b,b			;edd5
	add a,b			;edd6
	add a,b			;edd7
	ret nc			;edd8
	ld e,l			;edd9
	dec c			;edda
	ld d,b			;eddb
	ld e,b			;eddc
	ld e,l			;eddd
	ld c,h			;edde
	inc b			;eddf
	add hl,sp		;ede0
	ld h,d			;ede1
	inc h			;ede2
	ld (l1011h),hl		;ede3
	sub l			;ede6
	ld c,e			;ede7
	ld c,l			;ede8
	ld c,l			;ede9
	ld b,h			;edea
	ld d,h			;edeb
	ld d,l			;edec
	ld a,l			;eded
ledeeh:
	add hl,sp		;edee
	ld bc,00630h		;edef
ledf2h:
	add a,e			;edf2
	ex af,af'		;edf3
	add a,l			;edf4
	add hl,bc		;edf5
	dec l			;edf6
	dec c			;edf7
	ld c,h			;edf8
	ld c,(hl)		;edf9
	nop			;edfa
	ret po			;edfb
	inc b			;edfc
	ld c,019h		;edfd
	ld (l0a05h),a		;edff
	dec d			;ee02
	inc d			;ee03
	inc bc			;ee04
	add a,h			;ee05
lee06h:
	ei			;ee06
	inc e			;ee07
	ld l,l			;ee08
	ld a,(de)		;ee09
lee0ah:
	exx			;ee0a
	inc (hl)		;ee0b
lee0ch:
	dec hl			;ee0c
	jr z,$+89		;ee0d
	ld b,b			;ee0f
lee10h:
	ld e,(hl)		;ee10
	add a,c			;ee11
	rst 38h			;ee12
	nop			;ee13
	or e			;ee14
	ld l,h			;ee15
	ld h,e			;ee16
	ret c			;ee17
	rst 0			;ee18
	and b			;ee19
	sbc a,e			;ee1a
	nop			;ee1b
	ld (hl),a		;ee1c
	dec sp			;ee1d
	rst 38h			;ee1e
	dec bc			;ee1f
	dec bc			;ee20
lee21h:
	inc bc			;ee21
	halt			;ee22
	nop			;ee23
	cp l			;ee24
	sbc a,000h		;ee25
	ld (hl),a		;ee27
	ld (hl),a		;ee28
	nop			;ee29
	rrca			;ee2a
	rst 38h			;ee2b
lee2ch:
	ld b,b			;ee2c
	ret pe			;ee2d
	sbc a,a			;ee2e
	ld hl,la156h		;ee2f
	ld e,l			;ee32
	ld b,e			;ee33
	jr nc,lee76h		;ee34
	or b			;ee36
	ret nz			;ee37
	ret nc			;ee38
	and b			;ee39
	sub b			;ee3a
	ld b,b			;ee3b
	cp e			;ee3c
	add a,(hl)		;ee3d
	halt			;ee3e
	dec c			;ee3f
	call pe,0f91ah		;ee40
	rst 38h			;ee43
	jr nc,lee06h		;ee44
lee46h:
	jr nc,$-126		;ee46
	ld (hl),b		;ee48
	nop			;ee49
	or b			;ee4a
	nop			;ee4b
lee4ch:
	ld (hl),a		;ee4c
	dec sp			;ee4d
	rst 38h			;ee4e
	dec bc			;ee4f
	dec bc			;ee50
	inc bc			;ee51
	halt			;ee52
	nop			;ee53
	cp l			;ee54
	sbc a,000h		;ee55
lee57h:
	ld (hl),a		;ee57
	ld (hl),a		;ee58
	rst 38h			;ee59
	rrca			;ee5a
	rst 38h			;ee5b
	nop			;ee5c
	ld (bc),a		;ee5d
	nop			;ee5e
	adc a,(hl)		;ee5f
	ld bc,l0003h		;ee60
	nop			;ee63
	ld bc,l01ffh+2		;ee64
	ld (bc),a		;ee67
	dec b			;ee68
	inc b			;ee69
	dec b			;ee6a
	ex af,af'		;ee6b
	rrca			;ee6c
lee6dh:
	nop			;ee6d
	nop			;ee6e
	sbc a,b			;ee6f
	inc d			;ee70
	ld a,(bc)		;ee71
	ld a,(bc)		;ee72
	ld c,014h		;ee73
	dec e			;ee75
lee76h:
	ld a,(l603ah)		;ee76
	ret p			;ee79
	ret m			;ee7a
	ld a,b			;ee7b
	jr nc,$-126		;ee7c
	sbc a,h			;ee7e
	ld a,00ch		;ee7f
	ld e,01eh		;ee81
	inc e			;ee83
	dec bc			;ee84
	inc bc			;ee85
	add hl,bc		;ee86
	inc e			;ee87
	inc bc			;ee88
	nop			;ee89
	xor (hl)		;ee8a
	inc bc			;ee8b
	rlca			;ee8c
	ld c,01dh		;ee8d
	ld a,(de)		;ee8f
	nop			;ee90
	rra			;ee91
	ret p			;ee92
	rst 8			;ee93
	jr nc,$-62		;ee94
	ld b,01fh		;ee96
	nop			;ee98
	ret p			;ee99
	inc c			;ee9a
	jp po,l021dh		;ee9b
	pop hl			;ee9e
	ld a,b			;ee9f
	ld a,(l6433h+1)		;eea0
	ld (hl),h		;eea3
	ld h,l			;eea4
	ld d,l			;eea5
	ld h,d			;eea6
	ld d,d			;eea7
	ccf			;eea8
	ld a,c			;eea9
	halt			;eeaa
	ld l,h			;eeab
	ld e,h			;eeac
	ld e,(hl)		;eead
	ld a,03fh		;eeae
	cp h			;eeb0
	cp d			;eeb1
	in a,(017h)		;eeb2
	rla			;eeb4
	rrca			;eeb5
	sbc a,a			;eeb6
	ld a,(hl)		;eeb7
	and b			;eeb8
	inc bc			;eeb9
	ld d,b			;eeba
	inc b			;eebb
	jr z,$+1		;eebc
	dec h			;eebe
	ld c,d			;eebf
	add hl,hl		;eec0
	dec l			;eec1
	inc d			;eec2
	ld d,00bh		;eec3
leec5h:
	inc bc			;eec5
	rra			;eec6
	adc a,a			;eec7
	ld b,e			;eec8
	and b			;eec9
	ret c			;eeca
	ld h,a			;eecb
	jr c,lee6dh		;eecc
	cp h			;eece
	jp c,lf8e4h		;eecf
	ld bc,lfd02h		;eed2
	inc bc			;eed5
	ld d,b			;eed6
	ld d,b			;eed7
	or b			;eed8
	and b			;eed9
	ld h,b			;eeda
	and b			;eedb
	ret p			;eedc
	or b			;eedd
	nop			;eede
	ld bc,lfae5h		;eedf
	dec e			;eee2
	and 0f9h		;eee3
	cp 0dfh			;eee5
	and a			;eee7
	pop af			;eee8
	call m,sub_e71eh	;eee9
	dec de			;eeec
	push hl			;eeed
	rst 8			;eeee
	ret p			;eeef
	call m,sub_443fh	;eef0
	or c			;eef3
leef4h:
	sbc a,0efh		;eef4
leef6h:
	rrca			;eef6
	di			;eef7
	inc e			;eef8
leef9h:
	jp 0e33ch		;eef9
sub_eefch:
	ld c,a			;eefc
	cp a			;eefd
	ret po			;eefe
	or e			;eeff
	ld e,l			;ef00
	cp e			;ef01
	ld (hl),a		;ef02
	rst 30h			;ef03
lef04h:
	rst 28h			;ef04
lef05h:
	rst 18h			;ef05
	nop			;ef06
	ret p			;ef07
lef08h:
	inc c			;ef08
lef09h:
	jp po,l021dh		;ef09
lef0ch:
	pop hl			;ef0c
	jr c,$+58		;ef0d
	ld (hl),e		;ef0f
	ld l,b			;ef10
	ld b,e			;ef11
	ld d,a			;ef12
	ld d,a			;ef13
	dec sp			;ef14
	inc a			;ef15
	sbc a,h			;ef16
	adc a,(hl)		;ef17
	dec (hl)		;ef18
	sub l			;ef19
	pop de			;ef1a
	add a,e			;ef1b
	inc hl			;ef1c
	ld c,(hl)		;ef1d
	ld e,08fh		;ef1e
lef20h:
	ld b,e			;ef20
lef21h:
	and b			;ef21
	ret c			;ef22
	ld h,a			;ef23
	jr c,leec5h		;ef24
	inc a			;ef26
	sbc a,d			;ef27
	call po,001f8h		;ef28
	ld (bc),a		;ef2b
	defb 0fdh,003h,000h ;illegal sequence	;ef2c
	rra			;ef2f
lef30h:
	ret p			;ef30
	rst 8			;ef31
	jr nc,leef4h		;ef32
	ld b,01ch		;ef34
	nop			;ef36
	ret p			;ef37
	inc c			;ef38
	jp po,l021dh		;ef39
	pop hl			;ef3c
	jp nz,03108h		;ef3d
	ld h,e			;ef40
	ld c,b			;ef41
	ld e,e			;ef42
	ld d,a			;ef43
	ld b,a			;ef44
	inc hl			;ef45
	jr nc,lef0ch		;ef46
	sbc a,d			;ef48
	dec a			;ef49
	sbc a,l			;ef4a
	ret c			;ef4b
lef4ch:
	add a,e			;ef4c
	ld sp,l1878h		;ef4d
	adc a,h			;ef50
lef51h:
	ld b,e			;ef51
	and b			;ef52
	ret c			;ef53
	ld h,a			;ef54
	jr c,leef6h		;ef55
	jr c,$+20		;ef57
	add a,h			;ef59
	ret m			;ef5a
	ld bc,lfd02h		;ef5b
	inc bc			;ef5e
	nop			;ef5f
	rra			;ef60
lef61h:
	ret p			;ef61
	rst 8			;ef62
	jr nc,$-62		;ef63
	dec de			;ef65
	rlca			;ef66
	nop			;ef67
	ret p			;ef68
	inc c			;ef69
	jp po,l021dh		;ef6a
	add a,c			;ef6d
	ret nz			;ef6e
	ld h,a			;ef6f
	di			;ef70
	ret m			;ef71
	ld a,e			;ef72
	scf			;ef73
	add a,a			;ef74
	sbc a,e			;ef75
	inc a			;ef76
	call z,03e9eh		;ef77
	sbc a,h			;ef7a
	in a,(083h)		;ef7b
	add hl,sp		;ef7d
	ld a,h			;ef7e
	and b			;ef7f
	inc bc			;ef80
	ld d,b			;ef81
	call nc,0a828h		;ef82
	xor b			;ef85
	jr z,lefa4h		;ef86
	add a,c			;ef88
	ld c,l			;ef89
	and (hl)		;ef8a
	ret c			;ef8b
	ld h,a			;ef8c
	jr c,$-95		;ef8d
	inc a			;ef8f
lef90h:
	in a,(0e7h)		;ef90
	ld l,d			;ef92
	add hl,de		;ef93
	ld (bc),a		;ef94
	defb 0fdh,003h,009h ;illegal sequence	;ef95
	dec e			;ef98
	ld e,038h		;ef99
	jr nc,leffdh		;ef9b
lef9dh:
	ld b,b			;ef9d
	nop			;ef9e
	rst 8			;ef9f
	push hl			;efa0
	ld sp,hl		;efa1
	ld a,(hl)		;efa2
	ccf			;efa3
lefa4h:
	ld e,a			;efa4
	ld h,a			;efa5
	inc sp			;efa6
	ld bc,055feh		;efa7
	xor d			;efaa
	ld d,l			;efab
	jp pe,lfdf3h		;efac
	ld e,b			;efaf
	cp b			;efb0
	ld a,b			;efb1
	cp b			;efb2
	ld (hl),h		;efb3
	call p,sub_e6eeh	;efb4
	djnz lefc9h		;efb7
	jr lefc7h		;efb9
	rrca			;efbb
	dec b			;efbc
	inc bc			;efbd
	ld bc,01e3ch		;efbe
	rrca			;efc1
	rla			;efc2
	dec bc			;efc3
	push de			;efc4
	cp d			;efc5
	ld (hl),a		;efc6
lefc7h:
	cp 07fh			;efc7
lefc9h:
	sbc a,(hl)		;efc9
	defb 0edh ;next byte illegal after ed	;efca
	di			;efcb
	call m,l3f7fh		;efcc
	ld d,e			;efcf
	or c			;efd0
	ld (hl),c		;efd1
	ret po			;efd2
	ret nc			;efd3
	jr nc,$-30		;efd4
	pop bc			;efd6
	nop			;efd7
	dec b			;efd8
	nop			;efd9
	add a,e			;efda
	add a,b			;efdb
	ld b,b			;efdc
	and b			;efdd
	inc b			;efde
	nop			;efdf
	adc a,h			;efe0
	ex af,af'		;efe1
	jr $+50			;efe2
	ret po			;efe4
	ld b,b			;efe5
	add a,b			;efe6
	add a,b			;efe7
	ld b,b			;efe8
	ld b,b			;efe9
	and b			;efea
	ld h,b			;efeb
	and b			;efec
lefedh:
	dec b			;efed
	nop			;efee
	add a,e			;efef
	jr lf016h		;eff0
	jp c,l0003h		;eff2
	add a,l			;eff5
	inc b			;eff6
	ld l,(hl)		;eff7
	push af			;eff8
	ld h,e			;eff9
leffah:
	add hl,bc		;effa
	inc b			;effb
	nop			;effc
leffdh:
	add a,h			;effd
	ld (hl),b		;effe
	cp d			;efff
lf000h:
	out (08ch),a		;f000
lf002h:
	dec b			;f002
lf003h:
	nop			;f003
lf004h:
	add a,e			;f004
lf005h:
	djnz lf02dh		;f005
	jr z,lf009h		;f007
lf009h:
	sbc a,d			;f009
	add a,b			;f00a
	ld b,b			;f00b
	nop			;f00c
	nop			;f00d
lf00eh:
	inc de			;f00e
lf00fh:
	dec bc			;f00f
lf010h:
	jp 040c1h		;f010
	jr nc,lf045h		;f013
	nop			;f015
lf016h:
	inc c			;f016
lf017h:
	adc a,(hl)		;f017
lf018h:
	rst 8			;f018
lf019h:
	ex (sp),hl		;f019
	ld h,b			;f01a
	ret p			;f01b
	ret p			;f01c
	ld h,b			;f01d
	nop			;f01e
	nop			;f01f
	ex (sp),hl		;f020
	rst 30h			;f021
	inc bc			;f022
	inc bc			;f023
	inc bc			;f024
	ld (hl),b		;f025
	ld (bc),a		;f026
	nop			;f027
	inc bc			;f028
	rlca			;f029
	ld (bc),a		;f02a
	rrca			;f02b
	sbc a,b			;f02c
lf02dh:
	rlca			;f02d
	inc bc			;f02e
	rlca			;f02f
	rrca			;f030
	adc a,e			;f031
	out (0d3h),a		;f032
	ld d,(hl)		;f034
	ld h,e			;f035
	pop bc			;f036
	inc a			;f037
	sbc a,l			;f038
	jp (hl)			;f039
	ex (sp),hl		;f03a
	ret nz			;f03b
	ret			;f03c
	ld bc,lf870h		;f03d
lf040h:
	ret m			;f040
	rrca			;f041
	rrca			;f042
	rst 0			;f043
	ret po			;f044
lf045h:
	inc bc			;f045
	ret p			;f046
lf047h:
	ret nz			;f047
	ret po			;f048
	rra			;f049
	rra			;f04a
	ccf			;f04b
	ccf			;f04c
	rra			;f04d
	rra			;f04e
	dec c			;f04f
	ld bc,03f1dh		;f050
	ccf			;f053
	ld c,03eh		;f054
	ld b,b			;f056
	ld a,(03f1eh)		;f057
	dec sp			;f05a
	call m,l797ch		;f05b
	jp l8307h		;f05e
	ex af,af'		;f061
	jp (ix)			;f062
	add a,086h		;f064
	rst 8			;f066
	rst 28h			;f067
	add a,007h		;f068
	rlca			;f06a
	inc bc			;f06b
	ld de,l1038h		;f06c
	nop			;f06f
	nop			;f070
	cp a			;f071
	ld a,(hl)		;f072
	ld a,a			;f073
	ld a,a			;f074
	ld a,(hl)		;f075
	inc e			;f076
	ld a,01ch		;f077
	ld (hl),c		;f079
	ret m			;f07a
	ld (hl),b		;f07b
lf07ch:
	ret m			;f07c
	ld (hl),b		;f07d
	nop			;f07e
	inc bc			;f07f
	ld bc,l80c6h		;f080
	nop			;f083
	djnz $+58		;f084
	djnz $-126		;f086
	ld b,000h		;f088
	add a,e			;f08a
	ld h,b			;f08b
	ret p			;f08c
	cp 006h			;f08d
	nop			;f08f
	ld (bc),a		;f090
	ld h,b			;f091
	add a,e			;f092
	djnz lf0d0h		;f093
	rla			;f095
	inc bc			;f096
	rlca			;f097
	xor e			;f098
	inc sp			;f099
	ld a,b			;f09a
	ld l,a			;f09b
	sbc a,a			;f09c
	xor 0ceh		;f09d
	pop de			;f09f
	dec e			;f0a0
	rra			;f0a1
	ld a,(hl)		;f0a2
	nop			;f0a3
	inc bc			;f0a4
	ld h,e			;f0a5
	ret p			;f0a6
	ret nc			;f0a7
	ret nz			;f0a8
	ret p			;f0a9
	ret m			;f0aa
	ld a,c			;f0ab
	inc sp			;f0ac
	inc bc			;f0ad
	inc bc			;f0ae
lf0afh:
	ld bc,l0000h		;f0af
	ld bc,07610h		;f0b2
	ld a,a			;f0b5
	ld a,(hl)		;f0b6
lf0b7h:
	or 07fh			;f0b7
	add hl,sp		;f0b9
lf0bah:
	ld a,0ceh		;f0ba
	call nz,0ccc0h		;f0bc
	sbc a,(hl)		;f0bf
	ld e,00ch		;f0c0
	nop			;f0c2
sub_f0c3h:
	ld bc,l0301h+2		;f0c3
	add a,c			;f0c6
	ld bc,l0003h		;f0c7
	sbc a,d			;f0ca
	ld a,07eh		;f0cb
lf0cdh:
	call m,leef4h		;f0cd
lf0d0h:
	call nz,l0000h		;f0d0
	inc bc			;f0d3
	rlca			;f0d4
	rlca			;f0d5
	cp a			;f0d6
	ld a,a			;f0d7
	add hl,de		;f0d8
	inc a			;f0d9
	dec sp			;f0da
	add a,b			;f0db
	ret nz			;f0dc
	ret nz			;f0dd
	call nz,sub_e080h	;f0de
	ret p			;f0e1
	jp m,l3f1fh		;f0e2
	inc bc			;f0e5
	ld a,(hl)		;f0e6
	adc a,e			;f0e7
	ld a,00ch		;f0e8
	inc a			;f0ea
	ret m			;f0eb
	ret p			;f0ec
	or 0efh			;f0ed
	rst 8			;f0ef
lf0f0h:
	ld b,080h		;f0f0
lf0f2h:
	add a,b			;f0f2
lf0f3h:
	nop			;f0f3
	dec b			;f0f4
lf0f5h:
	nop			;f0f5
	add a,e			;f0f6
lf0f7h:
	ld a,l			;f0f7
sub_f0f8h:
	ld a,c			;f0f8
	rlca			;f0f9
	inc b			;f0fa
	nop			;f0fb
	and h			;f0fc
	ret po			;f0fd
sub_f0feh:
	ret pe			;f0fe
lf0ffh:
	sbc a,h			;f0ff
	ld l,h			;f100
	nop			;f101
	nop			;f102
	jr nz,lf175h		;f103
	jr c,lf124h		;f105
	add hl,bc		;f107
	rlca			;f108
	nop			;f109
	jr lf124h		;f10a
	inc e			;f10c
	inc c			;f10d
	dec c			;f10e
	add hl,bc		;f10f
	rlca			;f110
	ld e,01fh		;f111
	rra			;f113
	ld (bc),a		;f114
	dec l			;f115
	dec l			;f116
	ld (de),a		;f117
	ld a,a			;f118
	ret pe			;f119
	nop			;f11a
	ret m			;f11b
	ld b,b			;f11c
	or h			;f11d
	or h			;f11e
	ld c,b			;f11f
lf120h:
	cp 000h			;f120
	ld (bc),a		;f122
	nop			;f123
lf124h:
	sbc a,c			;f124
	inc bc			;f125
	ld c,001h		;f126
	defb 0fdh,0fah,000h ;illegal sequence	;f128
	nop			;f12b
	ld (hl),b		;f12c
	call pe,le40dh+1	;f12d
	dec de			;f130
	ld c,d			;f131
	call pe,l2000h		;f132
	ld (hl),e		;f135
	add hl,sp		;f136
	dec e			;f137
lf138h:
	dec c			;f138
	ld (bc),a		;f139
	inc b			;f13a
	jr lf155h		;f13b
	dec e			;f13d
	inc bc			;f13e
	dec c			;f13f
	sub d			;f140
	ld (bc),a		;f141
	inc b			;f142
	dec b			;f143
	nop			;f144
	ld d,016h		;f145
	ex af,af'		;f147
	dec b			;f148
	inc c			;f149
	add hl,sp		;f14a
	ret z			;f14b
	nop			;f14c
	jp c,l04dah		;f14d
	ret pe			;f150
	call z,sub_0027h	;f151
	inc b			;f154
lf155h:
	nop			;f155
	sbc a,h			;f156
	ret po			;f157
	ret pe			;f158
	sbc a,h			;f159
	ld l,h			;f15a
	nop			;f15b
	jr $+26			;f15c
	inc e			;f15e
	inc c			;f15f
	dec c			;f160
	add hl,bc		;f161
	rlca			;f162
	ld e,000h		;f163
	rra			;f165
	ld (bc),a		;f166
	dec l			;f167
	dec l			;f168
	ld (de),a		;f169
	ld a,a			;f16a
	ret pe			;f16b
	nop			;f16c
	ret m			;f16d
	ld b,b			;f16e
	or h			;f16f
	or h			;f170
	ld c,b			;f171
	cp 000h			;f172
	sbc a,b			;f174
lf175h:
	ld a,01ch		;f175
	nop			;f177
	ld a,(l7d3ah)		;f178
	inc b			;f17b
	ld (hl),l		;f17c
	nop			;f17d
	inc e			;f17e
	inc e			;f17f
	nop			;f180
	ld a,07fh		;f181
	ld b,c			;f183
	ld e,l			;f184
	cp 004h			;f185
	ld e,h			;f187
	ld e,h			;f188
	sbc a,(hl)		;f189
	cp (hl)			;f18a
	djnz $-39		;f18b
	nop			;f18d
	ret nc			;f18e
	rst 38h			;f18f
	ld (de),a		;f190
	ld (hl),0ffh		;f191
	cpl			;f193
	rst 38h			;f194
	ld h,00dh		;f195
	rst 38h			;f197
	ld e,d			;f198
	in a,(0ffh)		;f199
	inc a			;f19b
	rst 38h			;f19c
	ld e,d			;f19d
	in a,(0ffh)		;f19e
	ld c,b			;f1a0
	ld l,h			;f1a1
	rst 38h			;f1a2
	call p,064ffh		;f1a3
	add a,b			;f1a6
	ld (de),a		;f1a7
	dec sp			;f1a8
	sub h			;f1a9
	dec sp			;f1aa
	ld (de),a		;f1ab
	dec sp			;f1ac
	sub l			;f1ad
	dec sp			;f1ae
	ld a,(hl)		;f1af
	ld e,(hl)		;f1b0
	ld b,c			;f1b1
	ld c,c			;f1b2
	ld c,c			;f1b3
	ld b,c			;f1b4
	ld a,(ix+048h)		;f1b5
	call c,0dc29h		;f1b8
	ld c,b			;f1bb
	call c,sub_dca9h	;f1bc
	inc bc			;f1bf
	ld b,l			;f1c0
	ld d,h			;f1c1
	ld (l4503h),hl		;f1c2
	ld d,l			;f1c5
	ld (l4366h),hl		;f1c6
	ld e,e			;f1c9
	ld e,e			;f1ca
	ld bc,l5d5ch		;f1cb
	ld e,h			;f1ce
	ld h,(hl)		;f1cf
	jp nz,ldadah		;f1d0
lf1d3h:
	add a,b			;f1d3
	ld a,(l3abah)		;f1d4
	ret nz			;f1d7
	and d			;f1d8
	ld hl,(lc044h)		;f1d9
	and d			;f1dc
	xor d			;f1dd
	ld b,h			;f1de
	nop			;f1df
	adc a,c			;f1e0
	add hl,hl		;f1e1
	sub 016h		;f1e2
	or 006h			;f1e4
	xor (hl)		;f1e6
	xor (hl)		;f1e7
	nop			;f1e8
	ld h,e			;f1e9
	ld b,06bh		;f1ea
	add a,d			;f1ec
	ld h,e			;f1ed
	add a,006h		;f1ee
	sub 088h		;f1f0
	add a,06bh		;f1f2
	ld l,e			;f1f4
	ld l,b			;f1f5
	ld l,a			;f1f6
	ld h,b			;f1f7
	ld a,a			;f1f8
	ld a,a			;f1f9
	inc b			;f1fa
	rst 38h			;f1fb
	add a,c			;f1fc
	ex af,af'		;f1fd
	dec b			;f1fe
	rst 38h			;f1ff
	add a,e			;f200
	ld a,a			;f201
	rst 38h			;f202
	add a,c			;f203
	inc b			;f204
	rst 38h			;f205
	ld (bc),a		;f206
	sub 09fh		;f207
	ld d,0f6h		;f209
	ld b,0feh		;f20b
	cp 000h			;f20d
	sub 0d7h		;f20f
	rst 10h			;f211
	ret nc			;f212
	rst 18h			;f213
	ret nz			;f214
	ld a,a			;f215
	rst 38h			;f216
	ld l,e			;f217
	ex de,hl		;f218
	ex de,hl		;f219
	dec bc			;f21a
	ei			;f21b
	inc bc			;f21c
	cp 0ffh			;f21d
	rst 38h			;f21f
	ld a,a			;f220
	ld a,a			;f221
	ld h,b			;f222
	ld l,a			;f223
	ld l,b			;f224
	ld l,e			;f225
	ld l,e			;f226
	nop			;f227
	inc bc			;f228
	rst 38h			;f229
	add a,c			;f22a
	ex af,af'		;f22b
	rlca			;f22c
	rst 38h			;f22d
	sbc a,a			;f22e
	add a,c			;f22f
	rst 38h			;f230
	ld a,a			;f231
	rst 38h			;f232
	nop			;f233
	cp 0feh			;f234
	ld b,0f6h		;f236
	ld d,0d6h		;f238
	sub 0ffh		;f23a
	ld a,a			;f23c
	ret nz			;f23d
	rst 18h			;f23e
	ret nc			;f23f
	rst 10h			;f240
	rst 10h			;f241
	sub 0ffh		;f242
	cp 003h			;f244
	ei			;f246
	dec bc			;f247
	ex de,hl		;f248
	ex de,hl		;f249
	ld l,e			;f24a
	rst 38h			;f24b
	rst 20h			;f24c
	inc h			;f24d
	inc bc			;f24e
	and l			;f24f
	adc a,c			;f250
	inc h			;f251
	rst 20h			;f252
	rst 38h			;f253
	ex de,hl		;f254
	ex (sp),hl		;f255
	ex de,hl		;f256
	ex de,hl		;f257
	ex (sp),hl		;f258
	ex de,hl		;f259
	ld de,008ffh		;f25a
	ld e,d			;f25d
	inc bc			;f25e
	inc (hl)		;f25f
	add a,(hl)		;f260
	inc a			;f261
lf262h:
	inc (hl)		;f262
	inc a			;f263
	inc (hl)		;f264
	ld c,d			;f265
	add a,006h		;f266
	sub 082h		;f268
	add a,063h		;f26a
	ld b,06bh		;f26c
	and d			;f26e
	ld h,e			;f26f
	ld e,d			;f270
	ld b,d			;f271
	ld a,(hl)		;f272
	ld b,d			;f273
	ld a,(hl)		;f274
	ld b,d			;f275
	ld e,d			;f276
	ld e,d			;f277
	inc a			;f278
	ld a,(hl)		;f279
	inc a			;f27a
	ld b,d			;f27b
	ld b,d			;f27c
	inc a			;f27d
	ld a,(hl)		;f27e
	inc a			;f27f
	sbc a,c			;f280
	ld b,d			;f281
	inc h			;f282
	sbc a,c			;f283
	sbc a,c			;f284
	inc h			;f285
	ld b,d			;f286
	sbc a,c			;f287
	add a,c			;f288
	ld a,(hl)		;f289
	ld c,e			;f28a
	jp z,l813ch		;f28b
	inc d			;f28e
	ret pe			;f28f
	rst 38h			;f290
	inc bc			;f291
	ld e,(hl)		;f292
	adc a,b			;f293
	add a,c			;f294
	ld e,(hl)		;f295
	ld e,(hl)		;f296
	ld b,d			;f297
	ld b,d			;f298
	ld e,(hl)		;f299
	ld e,(hl)		;f29a
	add a,c			;f29b
	inc bc			;f29c
	ld e,(hl)		;f29d
	ret			;f29e
	nop			;f29f
	ld e,d			;f2a0
	inc h			;f2a1
	inc a			;f2a2
	inc h			;f2a3
	ld h,(hl)		;f2a4
	inc h			;f2a5
	inc a			;f2a6
	ld h,(hl)		;f2a7
	inc c			;f2a8
	ld h,b			;f2a9
	inc c			;f2aa
	ld l,h			;f2ab
	ld c,h			;f2ac
	ld c,a			;f2ad
	ld b,a			;f2ae
	ld h,l			;f2af
	rst 38h			;f2b0
	ld h,b			;f2b1
	ld a,e			;f2b2
	ld h,b			;f2b3
	ld l,a			;f2b4
	ld l,b			;f2b5
	ld l,e			;f2b6
	sub h			;f2b7
	rst 38h			;f2b8
	ld (lff41h),a		;f2b9
	ex af,af'		;f2bc
lf2bdh:
	rst 38h			;f2bd
	add a,h			;f2be
	add hl,bc		;f2bf
	rst 38h			;f2c0
	add a,c			;f2c1
	rst 18h			;f2c2
	inc b			;f2c3
	or l			;f2c4
	inc b			;f2c5
	ld a,e			;f2c6
	jr z,lf2c9h		;f2c7
lf2c9h:
	xor (hl)		;f2c9
	xor (hl)		;f2ca
	ld b,0f6h		;f2cb
	ld d,0d6h		;f2cd
	add hl,hl		;f2cf
	sub h			;f2d0
	ld l,e			;f2d1
	ld l,b			;f2d2
	ld l,a			;f2d3
	ld h,b			;f2d4
	ld a,e			;f2d5
	ld h,b			;f2d6
	rst 38h			;f2d7
	add hl,bc		;f2d8
	add a,h			;f2d9
	rst 38h			;f2da
	ex af,af'		;f2db
	rst 38h			;f2dc
	ld b,c			;f2dd
	ld (028ffh),a		;f2de
	ld a,e			;f2e1
	inc b			;f2e2
	or l			;f2e3
	inc b			;f2e4
	rst 18h			;f2e5
	add a,c			;f2e6
	rst 38h			;f2e7
	nop			;f2e8
	xor a			;f2e9
	ccf			;f2ea
	ld a,a			;f2eb
	ld a,e			;f2ec
	daa			;f2ed
	rra			;f2ee
	cp 0feh			;f2ef
	nop			;f2f1
	jp nz,07a37h		;f2f2
	ld a,a			;f2f5
	ld a,(hl)		;f2f6
	cp 0feh			;f2f7
	nop			;f2f9
	ld bc,09fc6h		;f2fa
	ld a,(hl)		;f2fd
	call m,l3ed0h		;f2fe
	rst 38h			;f301
	and 0f3h		;f302
	dec l			;f304
	sbc a,(hl)		;f305
	rst 18h			;f306
	ld e,a			;f307
	xor 070h		;f308
	nop			;f30a
	nop			;f30b
	dec b			;f30c
	ld e,03eh		;f30d
	adc a,(hl)		;f30f
	ld d,a			;f310
	nop			;f311
	or b			;f312
	ld a,0e3h		;f313
	ld e,063h		;f315
	ld l,l			;f317
	ld l,c			;f318
	inc bc			;f319
	nop			;f31a
	and d			;f31b
	ld b,b			;f31c
	ld a,b			;f31d
	xor 07ah		;f31e
	adc a,(hl)		;f320
	nop			;f321
	ld a,(hl)		;f322
	defb 0fdh,0ffh,0fbh ;illegal sequence	;f323
	ld a,a			;f326
	sbc a,a			;f327
	rst 18h			;f328
	rst 38h			;f329
	ld l,h			;f32a
	set 4,a			;f32b
	jp c,la6d4h		;f32d
	call sub_85ffh		;f330
	ld a,a			;f333
	rst 38h			;f334
	xor 061h		;f335
	cp 0dfh			;f337
	rst 38h			;f339
	ld l,04dh		;f33a
	dec l			;f33c
	xor l			;f33d
	inc b			;f33e
	ld l,l			;f33f
	add a,d			;f340
	rlca			;f341
	ld c,c			;f342
	ld b,0b6h		;f343
	adc a,h			;f345
	sbc a,09bh		;f346
	in a,(0cah)		;f348
	jp nz,l5142h		;f34a
	ld d,b			;f34d
	ld l,04dh		;f34e
	dec l			;f350
	dec l			;f351
	inc b			;f352
	ld l,l			;f353
	or c			;f354
	cp 024h			;f355
	in a,(0dbh)		;f357
	bit 3,d			;f359
	ld e,e			;f35b
	ld e,d			;f35c
	dec b			;f35d
	sbc a,d			;f35e
	ld l,h			;f35f
	ld (hl),h		;f360
	and d			;f361
	ld c,h			;f362
	ld e,0b6h		;f363
	rst 28h			;f365
	or 076h			;f366
	ld c,a			;f368
	call p,06d7bh		;f369
	ld a,e			;f36c
	defb 0fdh,06dh ;ld iyl,iyl	;f36d
	rst 28h			;f36f
	defb 0edh ;next byte illegal after ed	;f370
	rst 28h			;f371
	ld e,0dah		;f372
	cp 000h			;f374
	ld (hl),l		;f376
	ld l,d			;f377
	ld a,l			;f378
	rst 0			;f379
	dec sp			;f37a
	rst 30h			;f37b
	cp a			;f37c
	nop			;f37d
	xor 056h		;f37e
	jp c,0efcdh		;f380
	jp z,lb0f6h		;f383
	rlca			;f386
	or (hl)			;f387
	add a,c			;f388
	dec c			;f389
	rlca			;f38a
	ld l,l			;f38b
	ex af,af'		;f38c
	or (hl)			;f38d
	ex af,af'		;f38e
	ld l,l			;f38f
	call z,sub_73b6h	;f390
	dec l			;f393
	sbc a,(hl)		;f394
	and l			;f395
	ld e,a			;f396
	rrca			;f397
	or 061h			;f398
	jp m,07c64h		;f39a
	ld c,061h		;f39d
	ld l,l			;f39f
	ld l,l			;f3a0
	halt			;f3a1
	sbc a,h			;f3a2
	ld l,d			;f3a3
	and (hl)		;f3a4
	adc a,0b2h		;f3a5
	call m,sub_f0feh	;f3a7
	ld (hl),b		;f3aa
	ld a,b			;f3ab
	ld b,a			;f3ac
	rst 38h			;f3ad
	ld a,e			;f3ae
	rst 30h			;f3af
	rst 18h			;f3b0
	rrca			;f3b1
	ld c,068h		;f3b2
	ld l,b			;f3b4
	cp a			;f3b5
	sbc a,a			;f3b6
	rst 18h			;f3b7
	jp po,l0ff6h		;f3b8
	ld e,a			;f3bb
	and l			;f3bc
	sbc a,(hl)		;f3bd
	dec l			;f3be
	ld (hl),e		;f3bf
	or (hl)			;f3c0
	rst 38h			;f3c1
	ld (hl),b		;f3c2
	jp nz,0779eh		;f3c3
	ld e,(hl)		;f3c6
	ld (hl),c		;f3c7
	nop			;f3c8
	dec c			;f3c9
	ld a,h			;f3ca
	rst 0			;f3cb
	ld a,b			;f3cc
	add a,0b6h		;f3cd
	sub (hl)		;f3cf
	nop			;f3d0
	ld a,(hl)		;f3d1
	call m,sub_fbfbh	;f3d2
	ld a,l			;f3d5
	sbc a,l			;f3d6
	sbc a,000h		;f3d7
	sbc a,a			;f3d9
	cp l			;f3da
	cp a			;f3db
	cp a			;f3dc
	inc b			;f3dd
	rst 38h			;f3de
	add a,h			;f3df
	ld c,037h		;f3e0
lf3e2h:
	ld a,(hl)		;f3e2
	cp c			;f3e3
	inc b			;f3e4
	rst 38h			;f3e5
	add a,h			;f3e6
	daa			;f3e7
	dec e			;f3e8
	jr lf3e2h		;f3e9
	inc b			;f3eb
	nop			;f3ec
	add a,h			;f3ed
	ld h,h			;f3ee
	ei			;f3ef
	inc h			;f3f0
	rst 18h			;f3f1
	inc b			;f3f2
	rst 38h			;f3f3
	add a,h			;f3f4
	rst 8			;f3f5
	rst 10h			;f3f6
	ld a,c			;f3f7
	rst 30h			;f3f8
	inc b			;f3f9
	rst 38h			;f3fa
	add a,h			;f3fb
	cp 0dfh			;f3fc
	ex de,hl		;f3fe
	ld (hl),h		;f3ff
	inc b			;f400
	rst 38h			;f401
	add a,h			;f402
	or a			;f403
	ld a,(de)		;f404
	add a,c			;f405
lf406h:
	ld a,a			;f406
	inc b			;f407
	nop			;f408
	add a,h			;f409
	jp m,0dd85h		;f40a
	jr c,lf413h		;f40d
	nop			;f40f
	adc a,c			;f410
	ret nz			;f411
	ld b,b			;f412
lf413h:
	ret nz			;f413
	ret nz			;f414
	sbc a,(hl)		;f415
lf416h:
	ld a,a			;f416
	call m,0d0feh		;f417
	inc bc			;f41a
	ret c			;f41b
	add a,h			;f41c
	ld e,b			;f41d
	adc a,b			;f41e
	or 0f8h			;f41f
	dec b			;f421
	rst 38h			;f422
	add a,d			;f423
	rst 10h			;f424
	ld l,(hl)		;f425
	ld b,000h		;f426
	cp e			;f428
lf429h:
	ret p			;f429
	ret m			;f42a
	rst 38h			;f42b
	ccf			;f42c
	dec l			;f42d
	ld e,01eh		;f42e
	ld c,01eh		;f430
	inc e			;f432
	ld e,01ah		;f433
	inc e			;f435
	ld e,09eh		;f436
	ld e,09ah		;f438
	cp e			;f43a
	scf			;f43b
	nop			;f43c
	ret nz			;f43d
	jr lf406h		;f43e
	ret c			;f440
lf441h:
	jp c,0da5ah		;f441
	ld e,a			;f444
	or (hl)			;f445
	ld h,(hl)		;f446
	ld h,(hl)		;f447
	jr nz,lf429h		;f448
	ld l,a			;f44a
	ld h,h			;f44b
	rst 38h			;f44c
	sbc a,c			;f44d
	ld h,(hl)		;f44e
	ld h,(hl)		;f44f
	rst 38h			;f450
	rst 18h			;f451
	rst 38h			;f452
	rst 30h			;f453
lf454h:
	rst 38h			;f454
	sbc a,c			;f455
	ld h,(hl)		;f456
	ld h,(hl)		;f457
	jr nz,$-31		;f458
	djnz $-23		;f45a
	rst 38h			;f45c
	sbc a,c			;f45d
	ld h,(hl)		;f45e
	ld h,(hl)		;f45f
	jr nz,lf441h		;f460
	ld l,a			;f462
	or 000h			;f463
	ld b,000h		;f465
	add a,a			;f467
	ld b,02dh		;f468
	nop			;f46a
	nop			;f46b
	ld bc,l0100h		;f46c
	inc bc			;f46f
	inc bc			;f470
	ld (bc),a		;f471
	nop			;f472
	add a,e			;f473
	add a,b			;f474
	nop			;f475
	add a,b			;f476
	inc bc			;f477
	ret nz			;f478
	ld (bc),a		;f479
	inc bc			;f47a
	ld (bc),a		;f47b
	ld bc,l0004h		;f47c
	ld (bc),a		;f47f
	ret nz			;f480
	ld (bc),a		;f481
	add a,b			;f482
	inc b			;f483
	nop			;f484
	nop			;f485
	add a,h			;f486
	cp 0ffh			;f487
	defb 0edh ;next byte illegal after ed	;f489
	rst 28h			;f48a
	inc b			;f48b
	nop			;f48c
	add a,h			;f48d
	add a,(hl)		;f48e
	ld (hl),c		;f48f
	ex (sp),hl		;f490
	ld c,004h		;f491
	nop			;f493
	rst 38h			;f494
	inc h			;f495
	inc e			;f496
	ld c,00fh		;f497
	rla			;f499
	rrca			;f49a
	ld c,l			;f49b
	add a,a			;f49c
	ex af,af'		;f49d
	dec de			;f49e
	rla			;f49f
	ld h,0a8h		;f4a0
	ld a,c			;f4a2
	sbc a,d			;f4a3
	ld c,(hl)		;f4a4
	nop			;f4a5
	nop			;f4a6
	ex af,af'		;f4a7
	nop			;f4a8
	jr nz,$+18		;f4a9
	djnz lf4ddh		;f4ab
	inc hl			;f4ad
	sub (hl)		;f4ae
	and a			;f4af
	ld h,a			;f4b0
	dec sp			;f4b1
	rra			;f4b2
	rrca			;f4b3
	ld e,e			;f4b4
	adc a,b			;f4b5
	ret nc			;f4b6
	call p,sub_f661h	;f4b7
	call pe,sub_fafch	;f4ba
	rra			;f4bd
	rrca			;f4be
	rra			;f4bf
	dec de			;f4c0
	ld l,e			;f4c1
	add a,a			;f4c2
	rla			;f4c3
	cpl			;f4c4
	rra			;f4c5
	ld c,a			;f4c6
	ccf			;f4c7
	dec de			;f4c8
	rra			;f4c9
	rrca			;f4ca
	daa			;f4cb
	ld d,a			;f4cc
	nop			;f4cd
	ex af,af'		;f4ce
	nop			;f4cf
	djnz $+50		;f4d0
	jr nz,lf454h		;f4d2
	nop			;f4d4
	ld b,b			;f4d5
	jr nz,lf4e8h		;f4d6
	jr lf4e8h		;f4d8
	rlca			;f4da
	inc bc			;f4db
	ld b,c			;f4dc
lf4ddh:
	ld (de),a		;f4dd
	inc de			;f4de
	jr nz,lf54bh		;f4df
	ld l,l			;f4e1
	call p,03f7eh		;f4e2
	ret nz			;f4e5
	ret nc			;f4e6
	ret m			;f4e7
lf4e8h:
	call pe,sub_eefch	;f4e8
	cp 0ffh			;f4eb
	ld b,b			;f4ed
	ld h,c			;f4ee
	jr c,lf50dh		;f4ef
	rrca			;f4f1
	dec d			;f4f2
	ld (bc),a		;f4f3
	adc a,l			;f4f4
	call nc,sub_f8a8h	;f4f5
sub_f4f8h:
	pop hl			;f4f8
	rst 0			;f4f9
	adc a,h			;f4fa
	jr lf51dh		;f4fb
	jp p,06060h		;f4fd
	ret po			;f500
	call po,sub_c8c0h	;f501
	sub b			;f504
	sbc a,b			;f505
	sub b			;f506
	or h			;f507
	ld hl,0ede5h		;f508
	pop hl			;f50b
	ld sp,hl		;f50c
lf50dh:
	ld l,b			;f50d
	cp e			;f50e
	scf			;f50f
	or 0e8h			;f510
	ld sp,hl		;f512
	cp d			;f513
	add a,d			;f514
	xor 01bh		;f515
	inc bc			;f517
	rlca			;f518
	adc a,c			;f519
	add hl,bc		;f51a
	nop			;f51b
	ld (bc),a		;f51c
lf51dh:
	nop			;f51d
	ld (hl),a		;f51e
	ld h,l			;f51f
	ld hl,(l0118h)		;f520
	inc bc			;f523
	nop			;f524
	sub b			;f525
	cp 0f6h			;f526
	call c,0e1f8h		;f528
	add a,a			;f52b
	inc c			;f52c
	nop			;f52d
	nop			;f52e
	ld b,b			;f52f
sub_f530h:
	nop			;f530
	inc bc			;f531
	inc bc			;f532
	rrca			;f533
	daa			;f534
	ld d,a			;f535
	inc bc			;f536
	nop			;f537
	rst 38h			;f538
	ex af,af'		;f539
	ld de,0050ah		;f53a
	ld d,c			;f53d
	rrca			;f53e
	ld e,e			;f53f
	ld c,a			;f540
	ld l,a			;f541
	rst 28h			;f542
	rst 30h			;f543
	ld bc,lf0ffh		;f544
	call p,0ccc4h		;f547
	cp c			;f54a
lf54bh:
	ret p			;f54b
	jp p,0d0e0h		;f54c
	jp po,090c1h		;f54f
	add a,b			;f552
	add a,d			;f553
	ld b,h			;f554
	call nz,0dc72h		;f555
	ret nz			;f558
	call po,sub_e3cdh	;f559
	cp e			;f55c
	call nc,08484h		;f55d
	or 0d6h			;f560
	ld l,0b4h		;f562
	jr nc,lf59ah		;f564
	ld b,e			;f566
	ld hl,l1933h		;f567
	inc bc			;f56a
	and (hl)		;f56b
	ccf			;f56c
	ld e,a			;f56d
	ld b,a			;f56e
	ld h,e			;f56f
	ld sp,l0100h		;f570
	rlca			;f573
	ld (hl),h		;f574
	sbc a,a			;f575
	inc b			;f576
	rst 38h			;f577
	ex af,af'		;f578
	ld (hl),b		;f579
	ret po			;f57a
	ret nz			;f57b
	nop			;f57c
	nop			;f57d
	inc d			;f57e
	inc bc			;f57f
	add a,b			;f580
	ld d,b			;f581
	ret po			;f582
	ret p			;f583
	ld a,(hl)		;f584
	and 000h		;f585
	nop			;f587
	and b			;f588
	djnz lf593h		;f589
	ld (bc),a		;f58b
	ld bc,l3f7fh+1		;f58c
	rra			;f58f
	ccf			;f590
	nop			;f591
	ld a,a			;f592
lf593h:
	jr c,lf5c6h		;f593
sub_f595h:
	ld a,(hl)		;f595
	ret m			;f596
	sub b			;f597
	ld h,b			;f598
	add a,c			;f599
lf59ah:
	ld c,b			;f59a
	inc a			;f59b
	rst 18h			;f59c
	cp a			;f59d
	inc e			;f59e
	cp l			;f59f
	sbc a,(hl)		;f5a0
	xor (hl)		;f5a1
	ld a,a			;f5a2
	jr nz,$-66		;f5a3
sub_f5a5h:
	xor (hl)		;f5a5
	ld e,a			;f5a6
	ld c,a			;f5a7
	dec e			;f5a8
	scf			;f5a9
	rrca			;f5aa
	ld d,a			;f5ab
	rrca			;f5ac
	ld h,e			;f5ad
	ld a,(bc)		;f5ae
	or l			;f5af
	sbc a,a			;f5b0
	xor (hl)		;f5b1
	ld a,a			;f5b2
	inc h			;f5b3
	adc a,d			;f5b4
sub_f5b5h:
	rst 38h			;f5b5
	cp a			;f5b6
	ld l,a			;f5b7
	rst 38h			;f5b8
	defb 0ddh,060h ;ld ixh,b	;f5b9
	xor l			;f5bb
	inc sp			;f5bc
	rst 38h			;f5bd
	rst 30h			;f5be
	ret pe			;f5bf
	djnz lf636h		;f5c0
	rst 38h			;f5c2
	cp 0edh			;f5c3
sub_f5c5h:
	rst 38h			;f5c5
lf5c6h:
	push bc			;f5c6
	ex (sp),hl		;f5c7
	or c			;f5c8
lf5c9h:
	sbc a,(hl)		;f5c9
	xor (hl)		;f5ca
	ld a,a			;f5cb
	ld hl,(la0fch+2)	;f5cc
	jr lf5d8h		;f5cf
	cp a			;f5d1
	ld h,d			;f5d2
	dec h			;f5d3
	ld h,a			;f5d4
	ld (hl),e		;f5d5
	dec sp			;f5d6
	ld (hl),b		;f5d7
lf5d8h:
	inc a			;f5d8
	inc a			;f5d9
	inc e			;f5da
	inc a			;f5db
	ld e,01eh		;f5dc
	add a,e			;f5de
	rla			;f5df
	ld hl,0f32ch		;f5e0
	ld a,a			;f5e3
	ld bc,l0301h		;f5e4
	ld bc,02222h		;f5e7
	ld h,d			;f5ea
	dec h			;f5eb
	ld h,a			;f5ec
	ld (hl),e		;f5ed
	dec sp			;f5ee
	cp 0feh			;f5ef
	call m,sub_fdfeh	;f5f1
	rst 38h			;f5f4
	cp 0feh			;f5f5
	dec c			;f5f7
	rlca			;f5f8
	inc bc			;f5f9
	dec bc			;f5fa
	rrca			;f5fb
	inc bc			;f5fc
	ccf			;f5fd
	scf			;f5fe
	ret m			;f5ff
	ret m			;f600
	jp p,lf6f4h		;f601
	cp 0fah			;f604
	call m,sub_f6f5h	;f606
	ld sp,hl		;f609
	cp 0fdh			;f60a
	ld a,c			;f60c
	rst 28h			;f60d
	cp a			;f60e
	rlca			;f60f
	rla			;f610
	ccf			;f611
	rrca			;f612
	ccf			;f613
	ccf			;f614
	ld a,07eh		;f615
	ld bc,03c28h		;f617
	ld e,b			;f61a
	ld a,b			;f61b
	ret m			;f61c
	ret p			;f61d
	pop hl			;f61e
	nop			;f61f
lf620h:
	dec bc			;f620
lf621h:
	rrca			;f621
	dec de			;f622
	halt			;f623
	ret m			;f624
	ret m			;f625
	ret nc			;f626
	daa			;f627
	rst 38h			;f628
	sbc a,078h		;f629
	sbc a,0e8h		;f62b
	ret c			;f62d
	sub b			;f62e
	ld e,a			;f62f
	ld c,a			;f630
	dec e			;f631
	scf			;f632
	rrca			;f633
	ld d,a			;f634
	rrca			;f635
lf636h:
	sub e			;f636
	call m,sub_f8ffh	;f637
	pop de			;f63a
	or b			;f63b
	jp p,0fcf7h		;f63c
	call m,sub_2934h	;f63f
	ld de,l4e5ch		;f642
	dec a			;f645
	ld d,00eh		;f646
	ld h,b			;f648
	ret nz			;f649
	and c			;f64a
	adc a,c			;f64b
	ld b,e			;f64c
	or a			;f64d
	rst 18h			;f64e
	rst 38h			;f64f
	add a,b			;f650
	pop bc			;f651
	jp lf7e9h		;f652
	ld a,e			;f655
	ld l,a			;f656
	ccf			;f657
	dec bc			;f658
	rlca			;f659
	rlca			;f65a
	inc hl			;f65b
	dec bc			;f65c
	inc bc			;f65d
	dec e			;f65e
	inc bc			;f65f
	cp h			;f660
sub_f661h:
	or b			;f661
	ret m			;f662
	cp b			;f663
	ld h,d			;f664
	ret po			;f665
	call nz,sub_e8cch	;f666
	call m,sub_f0f8h	;f669
	ret po			;f66c
sub_f66dh:
	jp po,0a4e2h		;f66d
	rla			;f670
	inc bc			;f671
	inc bc			;f672
	inc de			;f673
	ld bc,l057fh		;f674
	add a,c			;f677
	ld b,d			;f678
	ld b,(hl)		;f679
	dec hl			;f67a
	dec b			;f67b
	ld a,a			;f67c
	ccf			;f67d
	cpl			;f67e
	add a,e			;f67f
	ret p			;f680
	and b			;f681
	and h			;f682
	ret nc			;f683
	ld a,l			;f684
	jp pe,l9aeah		;f685
	jp ldf37h		;f688
	dec h			;f68b
	ld c,(hl)		;f68c
	inc b			;f68d
	dec a			;f68e
	rst 18h			;f68f
	sbc a,(hl)		;f690
	push bc			;f691
	ld bc,lc78bh		;f692
	sbc a,e			;f695
	ld b,l			;f696
	ccf			;f697
	cp (hl)			;f698
	dec sp			;f699
	adc a,025h		;f69a
	ld c,(hl)		;f69c
	inc b			;f69d
	ld c,l			;f69e
	cp a			;f69f
	jp p,lfcf2h		;f6a0
	defb 0fdh,0fah,0c0h ;illegal sequence	;f6a3
	di			;f6a6
	adc a,c			;f6a7
	jr nz,$-124		;f6a8
	ld a,h			;f6aa
	ld l,b			;f6ab
	pop af			;f6ac
	sub 004h		;f6ad
	adc a,b			;f6af
	inc a			;f6b0
	cp c			;f6b1
	ld e,c			;f6b2
	jp c,ld9beh		;f6b3
	or b			;f6b6
	and b			;f6b7
	rst 38h			;f6b8
	inc a			;f6b9
	cp a			;f6ba
	ld e,e			;f6bb
	jp c,l26bch+2		;f6bc
	di			;f6bf
	cp a			;f6c0
	nop			;f6c1
	rlca			;f6c2
lf6c3h:
	ld h,b			;f6c3
	ld a,a			;f6c4
lf6c5h:
	rra			;f6c5
	ld bc,018d7h		;f6c6
	ld a,h			;f6c9
	call c,008feh		;f6ca
	ld (bc),a		;f6cd
	and e			;f6ce
	pop af			;f6cf
	ld a,b			;f6d0
	ccf			;f6d1
	inc b			;f6d2
	rst 38h			;f6d3
	jr lf706h		;f6d4
	ld (hl),b		;f6d6
	ld b,b			;f6d7
	ret nz			;f6d8
	ld bc,00802h		;f6d9
	ld bc,l1705h		;f6dc
lf6dfh:
	dec de			;f6df
	ld l,a			;f6e0
	ret p			;f6e1
	ret pe			;f6e2
	cp 0fbh			;f6e3
	djnz lf6f9h		;f6e5
	jr nz,lf72ah		;f6e7
	rrca			;f6e9
	add a,a			;f6ea
	ld a,e			;f6eb
	xor a			;f6ec
	sbc a,a			;f6ed
	rra			;f6ee
	add a,b			;f6ef
	jr nz,lf72ah		;f6f0
	adc a,l			;f6f2
	ld a,c			;f6f3
lf6f4h:
	ld (hl),l		;f6f4
sub_f6f5h:
	cp 004h			;f6f5
	dec c			;f6f7
	dec b			;f6f8
lf6f9h:
	ccf			;f6f9
	inc sp			;f6fa
	jp z,l4e27h		;f6fb
	inc b			;f6fe
	dec a			;f6ff
	rst 18h			;f700
	ld l,e			;f701
	rst 0			;f702
	adc a,b			;f703
	ld d,c			;f704
	ld (hl),d		;f705
lf706h:
	rst 18h			;f706
	adc a,l			;f707
sub_f708h:
	rst 28h			;f708
	ld b,d			;f709
	ld b,(hl)		;f70a
	dec hl			;f70b
	dec b			;f70c
	ld a,a			;f70d
	ccf			;f70e
	ccf			;f70f
	inc bc			;f710
	add hl,bc		;f711
	dec hl			;f712
	rra			;f713
	ccf			;f714
	dec de			;f715
	cp a			;f716
	ld c,0ffh		;f717
	ld e,a			;f719
	ld c,a			;f71a
	dec e			;f71b
	scf			;f71c
	rrca			;f71d
	ld d,a			;f71e
	rrca			;f71f
	add hl,de		;f720
	jp m,0b8f2h		;f721
	call pe,sub_c0fch	;f724
	ret p			;f727
	sbc a,b			;f728
	sub b			;f729
lf72ah:
	call nc,sub_fcf8h	;f72a
	ret c			;f72d
	rst 38h			;f72e
	ld (hl),b		;f72f
	inc bc			;f730
	nop			;f731
	add a,d			;f732
	sub b			;f733
	jr nz,lf6dfh		;f734
	ld sp,hl		;f736
	ld b,c			;f737
	rst 38h			;f738
	or b			;f739
	call nc,010fah		;f73a
	ld sp,hl		;f73d
	rst 30h			;f73e
	or b			;f73f
	ret po			;f740
	ld b,b			;f741
	jr lf76bh		;f742
	inc bc			;f744
	ld a,a			;f745
	ccf			;f746
	inc bc			;f747
	inc de			;f748
	rrca			;f749
	ld l,b			;f74a
	sub b			;f74b
	ld b,b			;f74c
	and b			;f74d
	ret nz			;f74e
	cp 0f6h			;f74f
	or 058h			;f751
	in a,(074h)		;f753
	cp l			;f755
	jr $+14			;f756
	ld b,h			;f758
	ld bc,l6f14h		;f759
	rlca			;f75c
	ccf			;f75d
	ld bc,l057fh		;f75e
	add a,c			;f761
	ld bc,l0108h		;f762
	rrca			;f765
	ccf			;f766
	dec de			;f767
	rrca			;f768
	dec de			;f769
	add a,b			;f76a
lf76bh:
	inc bc			;f76b
	dec a			;f76c
	dec e			;f76d
	ld hl,l7366h+1		;f76e
	dec sp			;f771
	ld bc,lbcc0h		;f772
	cp b			;f775
	add a,h			;f776
	and 0ceh		;f777
	call c,005f8h		;f779
	ret po			;f77c
	nop			;f77d
	ret p			;f77e
	call m,sub_da80h	;f77f
	jp m,sub_f8fch+1	;f782
	jp po,le8dch		;f785
	call nz,sub_1f04h	;f788
	rrca			;f78b
	daa			;f78c
	ld d,a			;f78d
	ld (hl),a		;f78e
	ld h,l			;f78f
	ld hl,(03f18h)		;f790
	ccf			;f793
	ld bc,l095bh		;f794
	ld hl,(l3f01h)		;f797
	rrca			;f79a
	inc bc			;f79b
	rla			;f79c
	nop			;f79d
	cp a			;f79e
	ld a,a			;f79f
	inc d			;f7a0
	add a,l			;f7a1
	or 0feh			;f7a2
	cp d			;f7a4
	and b			;f7a5
	jp p,lf6c5h		;f7a6
	jr z,$-20		;f7a9
	ret p			;f7ab
	ld h,b			;f7ac
	rst 38h			;f7ad
	sub b			;f7ae
	sub 0e0h		;f7af
	call m,0ffb1h		;f7b1
	add a,c			;f7b4
	jr nz,$-32		;f7b5
	ret pe			;f7b7
	add a,(hl)		;f7b8
	djnz lf7bbh		;f7b9
lf7bbh:
	ret po			;f7bb
	add a,b			;f7bc
	ld b,b			;f7bd
	ret nz			;f7be
	inc b			;f7bf
	nop			;f7c0
	add a,e			;f7c1
	dec de			;f7c2
	cp a			;f7c3
	ld c,005h		;f7c4
	nop			;f7c6
	add a,h			;f7c7
	ld a,(l0e01h)		;f7c8
	rra			;f7cb
	inc b			;f7cc
	nop			;f7cd
	add a,h			;f7ce
	call m,sub_f530h	;f7cf
	ld c,b			;f7d2
	inc b			;f7d3
	nop			;f7d4
	add a,h			;f7d5
	ret po			;f7d6
	add a,d			;f7d7
	djnz lf7dbh		;f7d8
	inc b			;f7da
lf7dbh:
	nop			;f7db
	nop			;f7dc
	nop			;f7dd
	nop			;f7de
	nop			;f7df
	rst 38h			;f7e0
	nop			;f7e1
	inc bc			;f7e2
	inc e			;f7e3
	inc hl			;f7e4
	ld c,a			;f7e5
	cp a			;f7e6
	nop			;f7e7
	nop			;f7e8
lf7e9h:
	push hl			;f7e9
	jp m,le61dh		;f7ea
	ld sp,hl		;f7ed
	cp 000h			;f7ee
	nop			;f7f0
	pop af			;f7f1
	call m,sub_e71eh	;f7f2
	dec de			;f7f5
	push hl			;f7f6
lf7f7h:
	nop			;f7f7
	nop			;f7f8
	call m,sub_443fh	;f7f9
	or c			;f7fc
	sbc a,0efh		;f7fd
lf7ffh:
	nop			;f7ff
	nop			;f800
lf801h:
	inc e			;f801
lf802h:
	jp 0e33ch		;f802
lf805h:
	ld c,a			;f805
lf806h:
	cp a			;f806
	nop			;f807
lf808h:
	nop			;f808
	ret po			;f809
lf80ah:
	ret m			;f80a
	inc e			;f80b
lf80ch:
	and 0f9h		;f80c
	cp 0ffh			;f80e
lf810h:
	nop			;f810
	nop			;f811
	inc bc			;f812
	inc c			;f813
	inc bc			;f814
	inc e			;f815
	inc hl			;f816
	ld c,a			;f817
	cp a			;f818
	nop			;f819
	inc bc			;f81a
	push hl			;f81b
	jp m,le61dh		;f81c
lf81fh:
	ld sp,hl		;f81f
	cp 0dfh			;f820
	and a			;f822
	pop af			;f823
	call m,sub_e71eh	;f824
	dec de			;f827
	push hl			;f828
	rst 8			;f829
	ret p			;f82a
	call m,sub_443fh	;f82b
	or c			;f82e
	sbc a,0efh		;f82f
	rrca			;f831
	di			;f832
lf833h:
	inc e			;f833
	jp 0e33ch		;f834
	ld c,a			;f837
	cp a			;f838
	add a,b			;f839
	and b			;f83a
	ret p			;f83b
	call m,sub_e61eh	;f83c
	dec de			;f83f
sub_f840h:
	push hl			;f840
	ld b,087h		;f841
	rlca			;f843
	ld c,e			;f844
	inc c			;f845
	ld c,a			;f846
	ld h,a			;f847
	ld sp,03973h		;f848
	jp z,079f3h		;f84b
	sbc a,h			;f84e
	and 0fbh		;f84f
	ret po			;f851
	ret m			;f852
	ld a,h			;f853
	sbc a,(hl)		;f854
	jp po,07efch		;f855
	sbc a,a			;f858
	dec c			;f859
	dec e			;f85a
	ld e,e			;f85b
	in a,(0d3h)		;f85c
	sub 0ech		;f85e
	sub c			;f860
	jp (hl)			;f861
	ld h,b			;f862
	ld b,b			;f863
	ld b,h			;f864
	djnz lf898h		;f865
	jr c,$-70		;f867
	ret z			;f869
	inc c			;f86a
	ld a,073h		;f86b
	ret po			;f86d
	add a,0deh		;f86e
lf870h:
	ld c,a			;f870
	rlca			;f871
	nop			;f872
lf873h:
	ret nz			;f873
	nop			;f874
	djnz lf7f7h		;f875
lf877h:
	inc de			;f877
	daa			;f878
	ld (hl),038h		;f879
	inc e			;f87b
	inc b			;f87c
	jr c,lf8dfh		;f87d
lf87fh:
	jp 05eceh		;f87f
	dec a			;f882
	ld sp,l63dfh+1		;f883
	rra			;f886
	ccf			;f887
	ld a,0b8h		;f888
	out (0c7h),a		;f88a
lf88ch:
	nop			;f88c
	ret nz			;f88d
	pop af			;f88e
	call c,sub_8206h	;f88f
	call nc,041c0h		;f892
	add a,0ceh		;f895
	ld l,a			;f897
lf898h:
	add a,a			;f898
	jp lf138h		;f899
	rst 20h			;f89c
	ld (hl),a		;f89d
	sub e			;f89e
	ld h,b			;f89f
sub_f8a0h:
	cp (hl)			;f8a0
	rst 18h			;f8a1
	ld h,b			;f8a2
	add a,a			;f8a3
	jp 01e8fh		;f8a4
	dec a			;f8a7
sub_f8a8h:
	dec sp			;f8a8
	cp b			;f8a9
	rst 8			;f8aa
	jr nc,$-16		;f8ab
	sbc a,(hl)		;f8ad
	inc a			;f8ae
	ret p			;f8af
	adc a,h			;f8b0
	ld a,00fh		;f8b1
	di			;f8b3
	nop			;f8b4
	and b			;f8b5
	ld h,b			;f8b6
	or b			;f8b7
	or 06bh			;f8b8
	rrca			;f8ba
	ld h,(hl)		;f8bb
	ld l,c			;f8bc
	ld b,008h		;f8bd
	inc (hl)		;f8bf
	ld e,d			;f8c0
	ld a,d			;f8c1
	or d			;f8c2
	ld b,h			;f8c3
	dec sp			;f8c4
	inc bc			;f8c5
	inc a			;f8c6
	ld b,d			;f8c7
	sbc a,c			;f8c8
	xor l			;f8c9
	cp l			;f8ca
	sbc a,c			;f8cb
	ld b,d			;f8cc
	inc a			;f8cd
	ld b,06dh		;f8ce
	ld l,a			;f8d0
	ld b,058h		;f8d1
	or h			;f8d3
	cp h			;f8d4
	ld e,b			;f8d5
	nop			;f8d6
	sbc a,b			;f8d7
	nop			;f8d8
	ld b,(hl)		;f8d9
	dec c			;f8da
	add a,h			;f8db
	jr c,lf95ah		;f8dc
	ld b,(hl)		;f8de
lf8dfh:
	ld bc,l0000h		;f8df
	jr nz,$+1		;f8e2
lf8e4h:
	ld (bc),a		;f8e4
	djnz lf907h		;f8e5
	and b			;f8e7
	ex af,af'		;f8e8
	jr lf927h		;f8e9
	inc a			;f8eb
	dec e			;f8ec
	dec e			;f8ed
	add hl,bc		;f8ee
	ld (bc),a		;f8ef
	nop			;f8f0
	nop			;f8f1
	nop			;f8f2
	nop			;f8f3
	nop			;f8f4
	nop			;f8f5
	jp l7320h		;f8f6
	ld d,a			;f8f9
lf8fah:
	push de			;f8fa
	or h			;f8fb
sub_f8fch:
	call pe,sub_5fd9h	;f8fc
sub_f8ffh:
	sbc a,a			;f8ff
lf900h:
	rrca			;f900
lf901h:
	sbc a,a			;f901
lf902h:
	sbc a,c			;f902
lf903h:
	cp c			;f903
lf904h:
	or c			;f904
lf905h:
	cp e			;f905
	cp a			;f906
lf907h:
	sbc a,(hl)		;f907
lf908h:
	inc e			;f908
lf909h:
	cp (hl)			;f909
lf90ah:
	or d			;f90a
lf90bh:
	and d			;f90b
lf90ch:
	or (hl)			;f90c
lf90dh:
	cp (hl)			;f90d
lf90eh:
	sbc a,h			;f90e
	ld a,(hl)		;f90f
	inc a			;f910
lf911h:
	ld a,(hl)		;f911
	xor 0c6h		;f912
	xor 0feh		;f914
	ld a,h			;f916
	rrca			;f917
	ret po			;f918
	jr nc,lf982h		;f919
	rrca			;f91b
	ld e,03ch		;f91c
lf91eh:
	ld a,(hl)		;f91e
	rrca			;f91f
	ld (hl),b		;f920
	ld a,h			;f921
	ld a,(hl)		;f922
lf923h:
	ld a,07ch		;f923
	add hl,sp		;f925
lf926h:
	ld a,l			;f926
lf927h:
	inc bc			;f927
	rst 8			;f928
	rst 28h			;f929
	rst 20h			;f92a
	ld (hl),a		;f92b
	inc sp			;f92c
	sub b			;f92d
	cp c			;f92e
	rst 38h			;f92f
	adc a,09eh		;f930
lf932h:
	cp a			;f932
	inc e			;f933
lf934h:
	sbc a,(hl)		;f934
	inc c			;f935
lf936h:
	sbc a,06ch		;f936
	and 026h		;f938
	dec b			;f93a
	nop			;f93b
	push af			;f93c
	inc a			;f93d
	ld e,03fh		;f93e
lf940h:
	inc a			;f940
lf941h:
	ld (hl),b		;f941
	defb 0fdh,01ch,088h ;illegal sequence	;f942
	sbc a,b			;f945
	call m,sub_19e2h	;f946
	ld a,d			;f949
	scf			;f94a
	or e			;f94b
	sub b			;f94c
	ld a,c			;f94d
	ld a,e			;f94e
	ld a,05dh		;f94f
	jr nc,lf9b9h		;f951
	rla			;f953
	dec sp			;f954
	ld a,h			;f955
	nop			;f956
	nop			;f957
	ld h,(hl)		;f958
	ld (hl),a		;f959
lf95ah:
	ld a,a			;f95a
	inc a			;f95b
	add a,b			;f95c
	ld a,a			;f95d
	adc a,09eh		;f95e
lf960h:
	cp a			;f960
lf961h:
	inc e			;f961
	sbc a,(hl)		;f962
	inc c			;f963
	ccf			;f964
	ex af,af'		;f965
lf966h:
	inc e			;f966
lf967h:
	inc a			;f967
	sbc a,b			;f968
	ld a,(hl)		;f969
	inc a			;f96a
	ld a,a			;f96b
	inc e			;f96c
	jp nz,0d6e1h		;f96d
	jr lf982h		;f970
	inc h			;f972
	ld a,(bc)		;f973
	inc b			;f974
	nop			;f975
	inc b			;f976
	nop			;f977
	ld b,b			;f978
	jp m,lb0ech		;f979
	nop			;f97c
	inc b			;f97d
	ld (bc),a		;f97e
	djnz lf9c1h		;f97f
	ld h,b			;f981
lf982h:
	adc a,b			;f982
lf983h:
	sbc a,c			;f983
	ld c,c			;f984
	ei			;f985
	ret m			;f986
sub_f987h:
	or 070h			;f987
	ret p			;f989
	rlca			;f98a
	dec sp			;f98b
	sbc a,e			;f98c
	cp h			;f98d
	inc e			;f98e
	add hl,bc		;f98f
	rra			;f990
	ld h,a			;f991
	ld h,e			;f992
	dec (hl)		;f993
	sub (hl)		;f994
	and 0feh		;f995
	cp 0c4h			;f997
sub_f999h:
	ld c,0eeh		;f999
	and 042h		;f99b
	rra			;f99d
	ret m			;f99e
	ld sp,0230fh		;f99f
	rra			;f9a2
	rlca			;f9a3
	rst 30h			;f9a4
	ld bc,lde6dh		;f9a5
lf9a8h:
	ld a,07ch		;f9a8
lf9aah:
	jr c,lf9a8h		;f9aa
sub_f9ach:
	add a,c			;f9ac
	ld l,h			;f9ad
	and 076h		;f9ae
	ld (hl),b		;f9b0
	jr nz,$+5		;f9b1
	nop			;f9b3
	adc a,e			;f9b4
	defb 0ddh,0cch,000h ;illegal sequence	;f9b5
	nop			;f9b8
lf9b9h:
	jr nc,$+50		;f9b9
	ld (bc),a		;f9bb
	nop			;f9bc
lf9bdh:
	rlca			;f9bd
	rra			;f9be
	ld a,a			;f9bf
lf9c0h:
	dec b			;f9c0
lf9c1h:
	inc bc			;f9c1
	add a,h			;f9c2
	ld e,03fh		;f9c3
	sbc a,a			;f9c5
	adc a,004h		;f9c6
	nop			;f9c8
	sub h			;f9c9
	call po,sub_87ech	;f9ca
	ei			;f9cd
	cp 03fh			;f9ce
	ccf			;f9d0
	rlca			;f9d1
	ld (bc),a		;f9d2
	call z,01760h		;f9d3
	ld a,a			;f9d6
lf9d7h:
	rrca			;f9d7
	inc a			;f9d8
	cp 070h			;f9d9
	ret m			;f9db
	ex (sp),hl		;f9dc
	adc a,l			;f9dd
	dec b			;f9de
	nop			;f9df
	add a,e			;f9e0
	ld h,a			;f9e1
	inc sp			;f9e2
	sub d			;f9e3
	inc b			;f9e4
	nop			;f9e5
	ret nz			;f9e6
	inc bc			;f9e7
	ld b,018h		;f9e8
	ld sp,022e2h		;f9ea
	ld b,h			;f9ed
lf9eeh:
	adc a,b			;f9ee
	adc a,a			;f9ef
	jp sub_8e43h		;f9f0
	ld (l4943h+1),a		;f9f3
	adc a,b			;f9f6
	ld hl,la2a1h		;f9f7
lf9fah:
	call nc,06854h		;f9fa
	ld a,b			;f9fd
	inc a			;f9fe
	ld a,(bc)		;f9ff
lfa00h:
	scf			;fa00
	ld l,h			;fa01
	add hl,sp		;fa02
	sbc a,(hl)		;fa03
	ld e,h			;fa04
	jr c,$+58		;fa05
	ex af,af'		;fa07
	jr nc,lf9aah		;fa08
lfa0ah:
	ld h,d			;fa0a
	halt			;fa0b
	inc a			;fa0c
lfa0dh:
	ret m			;fa0d
	ld a,b			;fa0e
	ld (de),a		;fa0f
	ld (l4121h),hl		;fa10
	ld b,b			;fa13
	sub b			;fa14
	adc a,d			;fa15
	adc a,c			;fa16
	ld (bc),a		;fa17
	inc c			;fa18
	djnz lfa7bh		;fa19
	ret nz			;fa1b
	ret z			;fa1c
	ret nc			;fa1d
	jp p,0370ah		;fa1e
	ld l,h			;fa21
	add hl,sp		;fa22
	sbc a,(hl)		;fa23
	ld e,h			;fa24
	jr c,lfa5fh		;fa25
	nop			;fa27
	adc a,d			;fa28
	ret p			;fa29
	add a,d			;fa2a
	inc l			;fa2b
	ld (de),a		;fa2c
	ld d,c			;fa2d
	adc a,b			;fa2e
	ex af,af'		;fa2f
	inc d			;fa30
lfa31h:
	dec c			;fa31
	dec e			;fa32
	inc bc			;fa33
	ld a,0f5h		;fa34
	sbc a,h			;fa36
	ccf			;fa37
	inc e			;fa38
	call pe,sub_b6d6h	;fa39
	ld a,d			;fa3c
	jp m,l70f8h		;fa3d
	ld a,h			;fa40
lfa41h:
	add a,b			;fa41
	ld h,c			;fa42
lfa43h:
	ld a,(0070eh)		;fa43
	ld l,a			;fa46
	ld hl,l9c41h		;fa47
	ex af,af'		;fa4a
	ex af,af'		;fa4b
	sbc a,h			;fa4c
	cp 0c2h			;fa4d
	pop hl			;fa4f
	call pe,sub_a090h	;fa50
	and b			;fa53
lfa54h:
	ret po			;fa54
	ld (hl),c		;fa55
	ld d,d			;fa56
	ld d,d			;fa57
	sub h			;fa58
	ld bc,l7030h+2		;fa59
	ld h,h			;fa5c
	dec e			;fa5d
	rlca			;fa5e
lfa5fh:
	inc sp			;fa5f
	ld de,l943ah		;fa60
	ld e,b			;fa63
	jr c,lfacfh		;fa64
sub_fa66h:
	ld c,d			;fa66
sub_fa67h:
	adc a,h			;fa67
	sbc a,b			;fa68
	rra			;fa69
	dec (hl)		;fa6a
	dec (hl)		;fa6b
	ld hl,lee46h		;fa6c
	sub h			;fa6f
	ld h,c			;fa70
	or (hl)			;fa71
	ld h,(hl)		;fa72
	ld l,(hl)		;fa73
	inc c			;fa74
	and l			;fa75
	ld (hl),e		;fa76
	rst 20h			;fa77
	jp nz,l7e30h		;fa78
lfa7bh:
	dec (hl)		;fa7b
	dec de			;fa7c
	ld l,l			;fa7d
	ld l,e			;fa7e
	dec (hl)		;fa7f
lfa80h:
	sub (hl)		;fa80
lfa81h:
	add a,b			;fa81
	or (hl)			;fa82
	ld a,e			;fa83
	ld a,h			;fa84
	ld a,01ch		;fa85
	ccf			;fa87
	add a,c			;fa88
	rst 38h			;fa89
	inc e			;fa8a
	ld a,03fh		;fa8b
	ld e,0a1h		;fa8d
	ld de,l7050h+2		;fa8f
lfa92h:
	ret m			;fa92
	ex (sp),hl		;fa93
lfa94h:
	xor l			;fa94
	ld (hl),b		;fa95
	jr c,lfa94h		;fa96
	ret p			;fa98
	call m,sub_327eh	;fa99
	sub b			;fa9c
	rst 28h			;fa9d
	ld a,b			;fa9e
	add a,d			;fa9f
	ld h,0dch		;faa0
	inc sp			;faa2
	ret c			;faa3
	ld b,005h		;faa4
	ret c			;faa6
	inc sp			;faa7
	call c,01d0dh		;faa8
	inc bc			;faab
	ld a,0bbh		;faac
	sbc a,h			;faae
	ccf			;faaf
	inc e			;fab0
	call pe,sub_b6d6h	;fab1
	ld a,d			;fab4
	jp m,l70f8h		;fab5
	ld a,h			;fab8
	add a,b			;fab9
	ld h,c			;faba
	ld a,(0070eh)		;fabb
	ld l,a			;fabe
	ld hl,l9c41h		;fabf
	ex af,af'		;fac2
	ex af,af'		;fac3
	sbc a,h			;fac4
	cp 0c2h			;fac5
	pop hl			;fac7
	call pe,sub_3a44h	;fac8
	ld a,(hl)		;facb
	ld e,h			;facc
	ld e,h			;facd
	ld l,l			;face
lfacfh:
	or d			;facf
	inc l			;fad0
lfad1h:
	ld b,h			;fad1
lfad2h:
	ld a,(01c7eh)		;fad2
	inc e			;fad5
	ld l,l			;fad6
	or d			;fad7
	inc l			;fad8
	ld b,h			;fad9
	ld a,(l5c7dh+1)		;fada
	ld e,h			;fadd
	ld l,l			;fade
	or d			;fadf
	inc l			;fae0
	ld b,h			;fae1
	ld a,(01c7eh)		;fae2
lfae5h:
	inc e			;fae5
	ld l,l			;fae6
	or d			;fae7
	inc l			;fae8
sub_fae9h:
	nop			;fae9
	cp l			;faea
	xor b			;faeb
	jp nz,le2e7h		;faec
	ret pe			;faef
	ret po			;faf0
	ret pe			;faf1
	pop hl			;faf2
	inc hl			;faf3
	add hl,de		;faf4
	add a,d			;faf5
	ld sp,l0021h		;faf6
	add a,b			;faf9
	ex af,af'		;fafa
	pop hl			;fafb
sub_fafch:
	ret c			;fafc
	defb 0ddh,088h,0a0h ;illegal sequence	;fafd
lfb00h:
	ld sp,l083fh+1		;fb00
	defb 0ddh,0cch,062h ;illegal sequence	;fb03
	ld l,(hl)		;fb06
	ld b,010h		;fb07
	add hl,sp		;fb09
	djnz lfb1ch		;fb0a
	nop			;fb0c
	ld bc,l7230h		;fb0d
	jr nz,lfb13h		;fb10
	nop			;fb12
lfb13h:
	ex af,af'		;fb13
	ld b,b			;fb14
	nop			;fb15
	nop			;fb16
	ld b,d			;fb17
	nop			;fb18
	add a,b			;fb19
	nop			;fb1a
	ret nz			;fb1b
lfb1ch:
	jr nz,lfb2eh		;fb1c
	ex af,af'		;fb1e
	ex af,af'		;fb1f
	inc b			;fb20
	inc b			;fb21
	ld (bc),a		;fb22
	ld bc,l0402h		;fb23
	inc b			;fb26
	ex af,af'		;fb27
	inc bc			;fb28
	nop			;fb29
	ld (bc),a		;fb2a
	add a,b			;fb2b
	sub d			;fb2c
	sub b			;fb2d
lfb2eh:
	add a,c			;fb2e
	jr nz,lfb35h		;fb2f
	jr nz,$+34		;fb31
	nop			;fb33
	ret po			;fb34
lfb35h:
	ret c			;fb35
	call p,sub_d888h	;fb36
	call pe,sub_00dch	;fb39
	ret nz			;fb3c
	ret nz			;fb3d
	ld bc,l0004h		;fb3e
	cp h			;fb41
	ld hl,l8101h		;fb42
	add hl,de		;fb45
	inc d			;fb46
	ld e,b			;fb47
	dec b			;fb48
	sub (hl)		;fb49
	add a,d			;fb4a
	rlca			;fb4b
	ld b,d			;fb4c
	nop			;fb4d
	sub h			;fb4e
	add a,0f1h		;fb4f
sub_fb51h:
	call m,sub_e104h	;fb51
	ret c			;fb54
	call p,sub_d888h	;fb55
	call pe,sub_10dch	;fb58
	nop			;fb5b
	ld bc,l7230h		;fb5c
	jr nz,$+7		;fb5f
	nop			;fb61
	ex af,af'		;fb62
	add a,b			;fb63
	nop			;fb64
	ld hl,08231h		;fb65
	ld de,l3703h		;fb68
	ld c,a			;fb6b
	rra			;fb6c
	ld h,d			;fb6d
	pop bc			;fb6e
	ret z			;fb6f
	ret nc			;fb70
	jp p,00700h		;fb71
	dec de			;fb74
	cpl			;fb75
	ld de,l371bh		;fb76
	dec sp			;fb79
	nop			;fb7a
	inc bc			;fb7b
	inc bc			;fb7c
	add a,b			;fb7d
	inc b			;fb7e
	nop			;fb7f
lfb80h:
	sub d			;fb80
	adc a,b			;fb81
	ld c,c			;fb82
	ex (sp),hl		;fb83
	ld b,(hl)		;fb84
	rra			;fb85
	inc bc			;fb86
	inc c			;fb87
	djnz lfb96h		;fb88
	ld (hl),l		;fb8a
	ld (hl),l		;fb8b
	ld hl,00800h		;fb8c
	nop			;fb8f
	nop			;fb90
	defb 0ddh,0cch,009h ;illegal sequence	;fb91
	nop			;fb94
	ld (bc),a		;fb95
lfb96h:
	ld h,b			;fb96
	xor (hl)		;fb97
	inc hl			;fb98
	rlca			;fb99
	inc bc			;fb9a
	ld b,004h		;fb9b
	djnz $+98		;fb9d
	ret nz			;fb9f
	ret z			;fba0
	ret nc			;fba1
	jp p,l3008h		;fba2
	and b			;fba5
	ld h,d			;fba6
	halt			;fba7
	inc a			;fba8
	ret m			;fba9
	ld a,b			;fbaa
	ld a,(bc)		;fbab
	scf			;fbac
	ld l,h			;fbad
	add hl,sp		;fbae
	sbc a,(hl)		;fbaf
	ld e,h			;fbb0
	jr c,lfbebh		;fbb1
	inc bc			;fbb3
	ld (l0230h),a		;fbb4
	ld (bc),a		;fbb7
	ld bc,00f60h		;fbb8
	nop			;fbbb
	ld (bc),a		;fbbc
	nop			;fbbd
	ld h,b			;fbbe
	ld h,b			;fbbf
	inc b			;fbc0
	nop			;fbc1
	inc bc			;fbc2
	nop			;fbc3
	nop			;fbc4
	jr nz,lfbcch		;fbc5
	nop			;fbc7
	adc a,b			;fbc8
	inc bc			;fbc9
	ex af,af'		;fbca
	inc b			;fbcb
lfbcch:
	inc bc			;fbcc
	ld b,e			;fbcd
	rst 8			;fbce
	rra			;fbcf
	ld a,a			;fbd0
	nop			;fbd1
	sub b			;fbd2
	nop			;fbd3
	add a,a			;fbd4
	ld e,(hl)		;fbd5
	dec a			;fbd6
	ld a,e			;fbd7
	jp m,l4c89h		;fbd8
	nop			;fbdb
	add a,b			;fbdc
	ld a,l			;fbdd
	add a,b			;fbde
	ld h,b			;fbdf
	ret p			;fbe0
	call sub_00fah		;fbe1
	nop			;fbe4
	adc a,d			;fbe5
	ex af,af'		;fbe6
	rlca			;fbe7
	nop			;fbe8
	rlca			;fbe9
	rra			;fbea
lfbebh:
	ld a,a			;fbeb
	nop			;fbec
	ld a,(l0000h)		;fbed
	inc b			;fbf0
	ld l,e			;fbf1
	ld (bc),a		;fbf2
	ld (hl),a		;fbf3
	adc a,e			;fbf4
	ld e,d			;fbf5
	add a,c			;fbf6
	ld e,d			;fbf7
	jp l423ch		;fbf8
sub_fbfbh:
	add a,c			;fbfb
	inc a			;fbfc
	add a,b			;fbfd
	ld (hl),06ch		;fbfe
lfc00h:
	dec b			;fc00
	ld h,0b0h		;fc01
	rra			;fc03
	ld a,a			;fc04
	nop			;fc05
	ld a,(l8700h)		;fc06
	ld e,(hl)		;fc09
	dec a			;fc0a
	ld l,e			;fc0b
	ld l,e			;fc0c
	ld (hl),a		;fc0d
	ld (hl),a		;fc0e
	ld e,d			;fc0f
	add a,c			;fc10
	ld e,d			;fc11
	jp l7d80h		;fc12
	add a,b			;fc15
	nop			;fc16
	add a,b			;fc17
	ld (hl),06ch		;fc18
	nop			;fc1a
	ld b,00fh		;fc1b
	or e			;fc1d
	ld e,a			;fc1e
	ld e,a			;fc1f
	or e			;fc20
lfc21h:
	rrca			;fc21
	ld b,07bh		;fc22
	jp m,l4c89h		;fc24
	ld c,h			;fc27
	adc a,c			;fc28
	jp m,l3c7bh		;fc29
	ld b,d			;fc2c
	add a,c			;fc2d
	inc a			;fc2e
	inc a			;fc2f
	add a,c			;fc30
	ld b,d			;fc31
	inc a			;fc32
	nop			;fc33
	ex af,af'		;fc34
	ld h,000h		;fc35
	inc b			;fc37
	nop			;fc38
	add a,h			;fc39
	ex af,af'		;fc3a
	rlca			;fc3b
	nop			;fc3c
	rlca			;fc3d
	ld b,000h		;fc3e
	ld b,06bh		;fc40
	add a,h			;fc42
sub_fc43h:
	jp m,lf0cdh		;fc43
	ld h,b			;fc46
	dec b			;fc47
	nop			;fc48
	add a,e			;fc49
	ld bc,001beh		;fc4a
	nop			;fc4d
	ld (bc),a		;fc4e
	ld bc,l0301h+1		;fc4f
	ld (bc),a		;fc52
	rlca			;fc53
	and d			;fc54
	rrca			;fc55
	rlca			;fc56
	ld c,01eh		;fc57
	sub (hl)		;fc59
	sbc a,e			;fc5a
	rst 8			;fc5b
	rst 20h			;fc5c
	ld d,b			;fc5d
	ld l,a			;fc5e
	scf			;fc5f
	xor 022h		;fc60
	ld de,l20cch		;fc62
	jp nc,l1de5h		;fc65
	jr lfc9bh		;fc68
	ld c,e			;fc6a
	or (hl)			;fc6b
	or h			;fc6c
	ld c,h			;fc6d
	inc c			;fc6e
	ld b,h			;fc6f
	ex af,af'		;fc70
	ret m			;fc71
	ld sp,hl		;fc72
	add a,(hl)		;fc73
	jr z,lfc21h		;fc74
	add a,(hl)		;fc76
	nop			;fc77
	add a,(hl)		;fc78
	jr lfc7ch		;fc79
	ld (bc),a		;fc7b
lfc7ch:
	inc b			;fc7c
	ex af,af'		;fc7d
	ex af,af'		;fc7e
	inc b			;fc7f
lfc80h:
	ld de,00802h		;fc80
	sub h			;fc83
	inc b			;fc84
	ld (bc),a		;fc85
	ld bc,00518h		;fc86
	dec c			;fc89
	dec a			;fc8a
	ld a,l			;fc8b
	defb 0fdh,032h,072h ;illegal sequence	;fc8c
	ld h,d			;fc8f
	ld h,d			;fc90
	ld (lfd1ah),a		;fc91
	ld a,l			;fc94
	dec a			;fc95
	dec c			;fc96
	dec b			;fc97
	nop			;fc98
	and b			;fc99
	ex af,af'		;fc9a
lfc9bh:
	ld hl,(0292bh)		;fc9b
	inc l			;fc9e
	ld h,04ah		;fc9f
	sub d			;fca1
	djnz sub_fcf8h		;fca2
	call nc,sub_3494h	;fca4
	ld h,h			;fca7
	ld d,d			;fca8
	ld c,c			;fca9
	and a			;fcaa
lfcabh:
	adc a,b			;fcab
	and e			;fcac
	xor e			;fcad
	xor e			;fcae
	adc a,e			;fcaf
	jr nc,lfd0fh		;fcb0
	call po,0c511h		;fcb2
	push de			;fcb5
	sub l			;fcb6
	ld h,l			;fcb7
	or d			;fcb8
	adc a,l			;fcb9
	nop			;fcba
	sub d			;fcbb
	ret nz			;fcbc
	dec (hl)		;fcbd
	ld a,b			;fcbe
	ld (hl),l		;fcbf
	halt			;fcc0
lfcc1h:
	call pe,000d8h		;fcc1
	ld bc,09fc6h		;fcc4
	ld a,(hl)		;fcc7
	call m,l3ed0h		;fcc8
	nop			;fccb
	ret m			;fccc
	ld c,c			;fccd
	ld b,066h		;fcce
	and b			;fcd0
	ret po			;fcd1
	or h			;fcd2
	ld h,(hl)		;fcd3
	ld h,d			;fcd4
	ld h,b			;fcd5
	ld h,c			;fcd6
	ld h,h			;fcd7
	ld l,h			;fcd8
	ret m			;fcd9
	ld c,c			;fcda
	ld h,(hl)		;fcdb
	ld h,(hl)		;fcdc
	ld b,(hl)		;fcdd
	ld b,(hl)		;fcde
	ld h,026h		;fcdf
	ret m			;fce1
	or (hl)			;fce2
	ld h,d			;fce3
	ld h,(hl)		;fce4
	ld b,(hl)		;fce5
	ld (06664h),hl		;fce6
	ld sp,lf873h		;fce9
	jp m,l9878h		;fcec
	pop bc			;fcef
lfcf0h:
	nop			;fcf0
	nop			;fcf1
lfcf2h:
	and b			;fcf2
	nop			;fcf3
	inc bc			;fcf4
	ex af,af'		;fcf5
	djnz lfd18h		;fcf6
sub_fcf8h:
	jr nz,lfd2dh		;fcf8
	ccf			;fcfa
lfcfbh:
	nop			;fcfb
	ld b,b			;fcfc
lfcfdh:
	jr nz,lfd1fh		;fcfd
	ld (hl),b		;fcff
lfd00h:
	ret p			;fd00
	ret m			;fd01
lfd02h:
	call m,l0000h		;fd02
	inc bc			;fd05
	inc c			;fd06
	dec de			;fd07
	rra			;fd08
	rrca			;fd09
	rrca			;fd0a
	nop			;fd0b
	nop			;fd0c
	add a,b			;fd0d
	ret nz			;fd0e
lfd0fh:
	ld h,b			;fd0f
	ret po			;fd10
	ret p			;fd11
	ret m			;fd12
	inc bc			;fd13
	rra			;fd14
	ld (bc),a		;fd15
	ccf			;fd16
	adc a,e			;fd17
lfd18h:
	sbc a,a			;fd18
	or l			;fd19
lfd1ah:
	ld e,e			;fd1a
	call m,sub_fefeh	;fd1b
	nop			;fd1e
lfd1fh:
	cp (hl)			;fd1f
	ld l,a			;fd20
	cp 0dbh			;fd21
	nop			;fd23
	ld (bc),a		;fd24
	nop			;fd25
	sub e			;fd26
	ld bc,l2f1ch		;fd27
	ret m			;fd2a
	inc bc			;fd2b
	ld c,a			;fd2c
lfd2dh:
	nop			;fd2d
	nop			;fd2e
	ex af,af'		;fd2f
	sub b			;fd30
lfd31h:
	jr nz,lfd31h		;fd31
	add a,b			;fd33
	ld e,a			;fd34
	nop			;fd35
	inc bc			;fd36
	rrca			;fd37
	djnz lfda5h		;fd38
	inc bc			;fd3a
	nop			;fd3b
	add a,l			;fd3c
	ccf			;fd3d
	cp 0c1h			;fd3e
lfd40h:
	ld (hl),0cdh		;fd40
	inc bc			;fd42
lfd43h:
	nop			;fd43
	add a,l			;fd44
	ld a,0ffh		;fd45
	nop			;fd47
	xor l			;fd48
lfd49h:
	add a,b			;fd49
	inc bc			;fd4a
	nop			;fd4b
	add a,l			;fd4c
	cp (hl)			;fd4d
	nop			;fd4e
	ld bc,lf07ch		;fd4f
	inc bc			;fd52
	nop			;fd53
	add a,l			;fd54
	inc bc			;fd55
	ld (l247dh),hl		;fd56
	rlca			;fd59
	inc bc			;fd5a
	nop			;fd5b
	add a,l			;fd5c
lfd5dh:
	add a,b			;fd5d
	ret nc			;fd5e
	ret pe			;fd5f
lfd60h:
	ret m			;fd60
	and b			;fd61
	inc bc			;fd62
	nop			;fd63
lfd64h:
	nop			;fd64
	and b			;fd65
	nop			;fd66
	ret p			;fd67
	ret po			;fd68
	ret p			;fd69
lfd6ah:
	ret po			;fd6a
	and b			;fd6b
	and b			;fd6c
	or b			;fd6d
	nop			;fd6e
	ret p			;fd6f
	ret po			;fd70
	ret p			;fd71
	ret po			;fd72
lfd73h:
	and b			;fd73
	and b			;fd74
	or b			;fd75
	or b			;fd76
	and b			;fd77
	and b			;fd78
	ret po			;fd79
	ret p			;fd7a
lfd7bh:
	ret po			;fd7b
	ret p			;fd7c
	nop			;fd7d
	or b			;fd7e
lfd7fh:
	and b			;fd7f
	and b			;fd80
	ret po			;fd81
	ret p			;fd82
	ret po			;fd83
	ret p			;fd84
	nop			;fd85
	nop			;fd86
	and b			;fd87
	nop			;fd88
	ret p			;fd89
	ret po			;fd8a
	ret p			;fd8b
	ret po			;fd8c
	ret nz			;fd8d
	jr nz,lfdc0h		;fd8e
	nop			;fd90
	ret p			;fd91
	ret po			;fd92
	ret p			;fd93
	ret po			;fd94
	ret nz			;fd95
	jr nz,lfdc8h		;fd96
	jr nc,lfdbah		;fd98
lfd9ah:
	ret nz			;fd9a
lfd9bh:
	ret po			;fd9b
	ret p			;fd9c
	ret po			;fd9d
	ret p			;fd9e
	nop			;fd9f
	jr nc,lfdc2h		;fda0
	ret nz			;fda2
	ret po			;fda3
	ret p			;fda4
lfda5h:
	ret po			;fda5
	ret p			;fda6
	nop			;fda7
	nop			;fda8
	adc a,b			;fda9
	ld h,b			;fdaa
	ld h,b			;fdab
	add a,b			;fdac
	sub b			;fdad
	sub b			;fdae
	add a,b			;fdaf
lfdb0h:
	ld h,b			;fdb0
	ld h,b			;fdb1
	nop			;fdb2
	adc a,c			;fdb3
	jr nc,$+34		;fdb4
	jr nc,lfdd8h		;fdb6
	jr nc,lfdeah		;fdb8
lfdbah:
	jr nz,lfddch		;fdba
	jr nc,$+5		;fdbc
	jr nz,lfdc2h		;fdbe
lfdc0h:
	jr nc,lfd43h		;fdc0
lfdc2h:
	jr nz,lfdd0h		;fdc2
	ret nz			;fdc4
	dec b			;fdc5
	jr nz,lfd49h		;fdc6
lfdc8h:
	ret nz			;fdc8
	inc bc			;fdc9
	jr nz,lfdd0h		;fdca
	jr nc,lfdd0h		;fdcc
	ret nz			;fdce
	rlca			;fdcf
lfdd0h:
	jr nz,lfdd5h		;fdd0
	jr nc,lfdd7h		;fdd2
	and b			;fdd4
lfdd5h:
	ld b,030h		;fdd5
lfdd7h:
	ld (bc),a		;fdd7
lfdd8h:
	and b			;fdd8
	ex af,af'		;fdd9
	jr nc,lfd5dh		;fdda
lfddch:
	ret p			;fddc
	dec b			;fddd
	jr nc,lfd64h		;fdde
	ret nz			;fde0
	jr nz,lfe13h		;fde1
	ret p			;fde3
	inc b			;fde4
	jr nc,lfd6ah		;fde5
	ret nz			;fde7
	jr nz,lfe1ah		;fde8
lfdeah:
	nop			;fdea
	add a,c			;fdeb
	ld (hl),h		;fdec
	rlca			;fded
	ld (hl),b		;fdee
	add a,c			;fdef
	ld b,b			;fdf0
	inc bc			;fdf1
	ld d,b			;fdf2
lfdf3h:
	add a,(hl)		;fdf3
	ld (hl),b		;fdf4
	jr nc,lfe47h		;fdf5
	ld (hl),b		;fdf7
	ld d,h			;fdf8
	ld (hl),l		;fdf9
	rlca			;fdfa
	ld (hl),b		;fdfb
	rlca			;fdfc
	ld d,b			;fdfd
sub_fdfeh:
	add a,d			;fdfe
	ld (hl),h		;fdff
lfe00h:
	ld (hl),b		;fe00
	ld b,050h		;fe01
	add a,c			;fe03
	ld b,b			;fe04
	inc bc			;fe05
	ld d,b			;fe06
	add a,h			;fe07
	ld (hl),b		;fe08
	jr nc,lfe5bh		;fe09
	ld (hl),b		;fe0b
	nop			;fe0c
	inc b			;fe0d
	ld b,b			;fe0e
	add a,c			;fe0f
	ld (hl),b		;fe10
lfe11h:
	ld b,040h		;fe11
lfe13h:
	add a,e			;fe13
	jr nc,lfe86h		;fe14
	ld b,b			;fe16
	inc b			;fe17
	jr nc,lfe1ch		;fe18
lfe1ah:
	ld (hl),b		;fe1a
	adc a,h			;fe1b
lfe1ch:
	ld d,b			;fe1c
	ld (hl),b		;fe1d
	ld d,b			;fe1e
	ld b,b			;fe1f
	ld b,b			;fe20
	ld (hl),b		;fe21
	ld d,b			;fe22
	ld b,b			;fe23
	ld b,b			;fe24
	jr nc,lfe97h		;fe25
	ld d,b			;fe27
	inc b			;fe28
	ld b,b			;fe29
	ld (bc),a		;fe2a
	ld d,b			;fe2b
	dec b			;fe2c
	ld b,b			;fe2d
	add a,e			;fe2e
	ld (hl),b		;fe2f
	ld d,b			;fe30
	ld d,b			;fe31
	dec b			;fe32
	ld b,b			;fe33
lfe34h:
	add a,e			;fe34
	ld (hl),h		;fe35
	ld (hl),l		;fe36
	ld d,h			;fe37
	inc bc			;fe38
	ld b,b			;fe39
	add a,e			;fe3a
	jr nc,$+114		;fe3b
	ld (hl),b		;fe3d
	inc bc			;fe3e
	ld d,b			;fe3f
	dec b			;fe40
	ld b,b			;fe41
	ld (bc),a		;fe42
	ld d,b			;fe43
	dec b			;fe44
	ld b,b			;fe45
	add a,e			;fe46
lfe47h:
	ld (hl),b		;fe47
	ld d,b			;fe48
	ld d,b			;fe49
	dec b			;fe4a
	ld b,b			;fe4b
	add a,e			;fe4c
	ld (hl),h		;fe4d
	ld (hl),l		;fe4e
	ld d,h			;fe4f
	inc bc			;fe50
	ld b,b			;fe51
	add a,e			;fe52
	jr nc,$+114		;fe53
	ld (hl),b		;fe55
	inc bc			;fe56
	ld d,b			;fe57
	add a,c			;fe58
	ld b,b			;fe59
	nop			;fe5a
lfe5bh:
	ld b,e			;fe5b
	ld b,b			;fe5c
	add a,c			;fe5d
	ld b,h			;fe5e
	ld b,h			;fe5f
lfe60h:
	ld b,b			;fe60
	rla			;fe61
	ret p			;fe62
	add a,c			;fe63
	rst 30h			;fe64
	ld b,0f0h		;fe65
	jr nz,lfe60h		;fe67
	ld b,074h		;fe69
	inc b			;fe6b
	ld b,b			;fe6c
	inc b			;fe6d
	ret p			;fe6e
	add a,c			;fe6f
	ld b,b			;fe70
	inc de			;fe71
	call p,0f781h		;fe72
	ld l,0f4h		;fe75
	dec b			;fe77
	ld (hl),h		;fe78
	rlca			;fe79
	ld b,b			;fe7a
	add a,d			;fe7b
	ld (hl),b		;fe7c
	ld b,b			;fe7d
	rlca			;fe7e
	call p,sub_f708h	;fe7f
	inc b			;fe82
	call p,lf003h		;fe83
lfe86h:
	inc bc			;fe86
	ld b,b			;fe87
	add a,h			;fe88
lfe89h:
	call p,lf040h		;fe89
	ret p			;fe8c
	ld b,0f4h		;fe8d
	ld (bc),a		;fe8f
	ret p			;fe90
	ld b,0f4h		;fe91
	add a,e			;fe93
	ld b,b			;fe94
	ld (hl),h		;fe95
	ld (hl),h		;fe96
lfe97h:
	dec b			;fe97
	ld b,b			;fe98
	ld (bc),a		;fe99
	ret p			;fe9a
	inc bc			;fe9b
	rst 30h			;fe9c
	inc bc			;fe9d
	ld (hl),h		;fe9e
	add a,d			;fe9f
	ret p			;fea0
	ld (hl),b		;fea1
	ld b,040h		;fea2
	inc b			;fea4
	ret p			;fea5
	add a,c			;fea6
	ld (hl),b		;fea7
	inc bc			;fea8
	ld (hl),a		;fea9
	ld (bc),a		;feaa
	call p,07406h		;feab
	inc b			;feae
	rst 30h			;feaf
	inc b			;feb0
	ld (hl),h		;feb1
	ld (bc),a		;feb2
	ld d,b			;feb3
	ld b,040h		;feb4
	ex af,af'		;feb6
	ret p			;feb7
	rlca			;feb8
	ld b,b			;feb9
	add a,c			;feba
	call p,04003h		;febb
	inc bc			;febe
	ret p			;febf
	ld (bc),a		;fec0
	call p,04008h		;fec1
	ld b,0f0h		;fec4
	add a,c			;fec6
	ret po			;fec7
	ld b,0f0h		;fec8
	add a,c			;feca
	ld d,b			;fecb
	ld a,(bc)		;fecc
	ld b,b			;fecd
	ld (bc),a		;fece
	ret p			;fecf
	add a,(hl)		;fed0
	ld (hl),b		;fed1
	ld d,b			;fed2
	ld b,b			;fed3
	ld (hl),b		;fed4
	ld d,b			;fed5
	ld b,b			;fed6
	inc bc			;fed7
	ret p			;fed8
	adc a,l			;fed9
	ld (hl),b		;feda
	ld d,b			;fedb
	ld b,b			;fedc
	ld (hl),b		;fedd
	ld b,b			;fede
	ret p			;fedf
lfee0h:
	ret p			;fee0
	ld (hl),b		;fee1
lfee2h:
	ld (hl),b		;fee2
	ld d,b			;fee3
	ld (hl),b		;fee4
	ld d,b			;fee5
	ld b,b			;fee6
	inc bc			;fee7
	ret p			;fee8
	ld (bc),a		;fee9
	ld (hl),b		;feea
	add a,e			;feeb
	ld d,b			;feec
	ld b,b			;feed
	ld b,b			;feee
	inc b			;feef
	ret p			;fef0
	sbc a,e			;fef1
	ld (hl),b		;fef2
	ld d,b			;fef3
	ld d,b			;fef4
	ld b,b			;fef5
	ld (hl),a		;fef6
	ret p			;fef7
	ret p			;fef8
	ld (hl),b		;fef9
sub_fefah:
	ld d,b			;fefa
	ld b,b			;fefb
sub_fefch:
	ld (hl),b		;fefc
	ld b,b			;fefd
sub_fefeh:
	rst 30h			;fefe
lfeffh:
	ret p			;feff
lff00h:
	ld (hl),b		;ff00
lff01h:
	ld d,b			;ff01
lff02h:
	ret p			;ff02
	ld d,b			;ff03
	ld b,b			;ff04
	ld b,b			;ff05
	rst 30h			;ff06
	ret p			;ff07
	ld (hl),b		;ff08
	ld d,b			;ff09
	ld b,b			;ff0a
	ld (hl),b		;ff0b
	ld d,b			;ff0c
	ld b,040h		;ff0d
	inc bc			;ff0f
	ld d,b			;ff10
	rlca			;ff11
	ld b,b			;ff12
	add a,c			;ff13
	ld d,b			;ff14
	ld a,040h		;ff15
	ld (bc),a		;ff17
	ld d,b			;ff18
	inc bc			;ff19
	ld b,b			;ff1a
	dec b			;ff1b
	ld d,b			;ff1c
	dec b			;ff1d
	ld b,b			;ff1e
	inc bc			;ff1f
	ld d,b			;ff20
	ld (bc),a		;ff21
	ld b,b			;ff22
	ld (bc),a		;ff23
	ld d,b			;ff24
lff25h:
	ld b,040h		;ff25
	inc b			;ff27
	ld d,b			;ff28
lff29h:
	dec b			;ff29
	ld b,b			;ff2a
	inc b			;ff2b
lff2ch:
	ld d,b			;ff2c
	inc b			;ff2d
	ld b,b			;ff2e
	dec b			;ff2f
lff30h:
	ld d,b			;ff30
	ex af,af'		;ff31
lff32h:
	and b			;ff32
lff33h:
	nop			;ff33
	inc bc			;ff34
	ret p			;ff35
lff36h:
	adc a,l			;ff36
	ret po			;ff37
	ld (hl),b		;ff38
	ld (hl),b		;ff39
	ld d,l			;ff3a
	ld b,h			;ff3b
	ret p			;ff3c
	ld (hl),b		;ff3d
	ld (hl),b		;ff3e
	ld d,b			;ff3f
	ld b,b			;ff40
lff41h:
	ld b,b			;ff41
	ld d,l			;ff42
	ld b,h			;ff43
	dec b			;ff44
	ret p			;ff45
	add a,e			;ff46
	rst 30h			;ff47
	push hl			;ff48
	call po,sub_e004h	;ff49
	ld (bc),a		;ff4c
	ld (hl),b		;ff4d
	add a,d			;ff4e
	ld d,b			;ff4f
	ld b,b			;ff50
	inc bc			;ff51
	nop			;ff52
	sub l			;ff53
	ret po			;ff54
	ld (hl),b		;ff55
	ld (hl),b		;ff56
	ld d,l			;ff57
	ld b,h			;ff58
	ret nc			;ff59
	ret nc			;ff5a
	add a,b			;ff5b
	add a,b			;ff5c
	ld d,b			;ff5d
	ld (hl),b		;ff5e
	ld b,b			;ff5f
	ld b,b			;ff60
	ret nc			;ff61
	ret nc			;ff62
	add a,b			;ff63
	add a,b			;ff64
	ld d,b			;ff65
	ld (hl),b		;ff66
	ld b,b			;ff67
	ld b,b			;ff68
	ld c,0a0h		;ff69
lff6bh:
	add a,d			;ff6b
	ld d,l			;ff6c
	ld b,h			;ff6d
	ld c,0b0h		;ff6e
	add a,d			;ff70
	ld d,l			;ff71
	ld b,h			;ff72
	ld c,0f0h		;ff73
lff75h:
	add a,d			;ff75
	ld d,l			;ff76
	ld b,h			;ff77
	ex af,af'		;ff78
	nop			;ff79
	ld (bc),a		;ff7a
	ret p			;ff7b
	add a,h			;ff7c
sub_ff7dh:
	ld (hl),b		;ff7d
	ld d,b			;ff7e
	ret p			;ff7f
lff80h:
	ld d,b			;ff80
	add hl,bc		;ff81
	ld b,b			;ff82
lff83h:
	add a,c			;ff83
	ld d,b			;ff84
	dec b			;ff85
	ld b,b			;ff86
	inc bc			;ff87
	ld d,b			;ff88
	nop			;ff89
	inc h			;ff8a
	ld b,b			;ff8b
	inc b			;ff8c
	ld d,b			;ff8d
	ld (bc),a		;ff8e
	ld b,b			;ff8f
	ld c,050h		;ff90
	ex af,af'		;ff92
	ret p			;ff93
	ex af,af'		;ff94
	ld (hl),b		;ff95
lff96h:
	rlca			;ff96
lff97h:
	nop			;ff97
	add a,e			;ff98
lff99h:
	ld b,b			;ff99
	nop			;ff9a
	nop			;ff9b
	inc bc			;ff9c
	and b			;ff9d
	inc b			;ff9e
	nop			;ff9f
	dec b			;ffa0
	and b			;ffa1
	rlca			;ffa2
lffa3h:
	nop			;ffa3
	inc bc			;ffa4
	rrca			;ffa5
	ld b,000h		;ffa6
	ld b,0f0h		;ffa8
	ld (bc),a		;ffaa
	ret po			;ffab
	ld (bc),a		;ffac
	ret p			;ffad
sub_ffaeh:
	ld (bc),a		;ffae
	ld b,b			;ffaf
	ld b,050h		;ffb0
	inc bc			;ffb2
	ld b,b			;ffb3
	dec b			;ffb4
	ld d,b			;ffb5
	nop			;ffb6
	inc c			;ffb7
	ret p			;ffb8
	ld (bc),a		;ffb9
	ret po			;ffba
	add a,d			;ffbb
	ld h,b			;ffbc
	ld b,b			;ffbd
lffbeh:
	inc bc			;ffbe
	ret p			;ffbf
lffc0h:
	inc bc			;ffc0
	ret po			;ffc1
	add a,d			;ffc2
	ld h,b			;ffc3
	ld b,b			;ffc4
	nop			;ffc5
	adc a,a			;ffc6
	sub 080h		;ffc7
	add a,b			;ffc9
	ld d,b			;ffca
	ret po			;ffcb
	ret p			;ffcc
	ret p			;ffcd
	ret po			;ffce
	ret p			;ffcf
	ld (hl),b		;ffd0
	jr nz,lff99h		;ffd1
	add a,e			;ffd3
	jr nz,lff96h		;ffd4
	dec b			;ffd6
	add a,b			;ffd7
	sub h			;ffd8
	sub (hl)		;ffd9
	and (hl)		;ffda
	add a,b			;ffdb
	add a,b			;ffdc
	ld h,h			;ffdd
	ld d,h			;ffde
	ld d,b			;ffdf
lffe0h:
	ld (hl),b		;ffe0
	ret nz			;ffe1
	ret nz			;ffe2
	jr nz,l0015h		;ffe3
	ld h,h			;ffe5
	ld d,h			;ffe6
	ld d,b			;ffe7
	ld (hl),b		;ffe8
	ret nz			;ffe9
	ret nz			;ffea
	jr nz,$+50		;ffeb
	nop			;ffed
	sub d			;ffee
lffefh:
	jp z,lc3c3h		;ffef
sub_fff2h:
	jp nz,l20c2h		;fff2
	jr nz,lff97h		;fff5
	ret z			;fff7
	ret z			;fff8
	jp 0c0c3h		;fff9
	jp nz,sub_2020h+2	;fffc
lffffh:
	defb 0cah		;ffff
