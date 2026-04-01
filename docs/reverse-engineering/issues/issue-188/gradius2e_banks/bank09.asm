; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x0000 -o docs/reverse-engineering/issues/issue-188/gradius2e_banks/bank09.asm /tmp/gradius2e_bank09.bin

	org 00000h

l0000h:
	nop			;0000
l0001h:
	ret p			;0001
l0002h:
	ld c,001h		;0002
l0004h:
	ld a,(bc)		;0004
l0005h:
	nop			;0005
l0006h:
	add a,l			;0006
l0007h:
	ld bc,0c00ch		;0007
l000ah:
	inc c			;000a
l000bh:
	ld bc,l000bh		;000b
l000eh:
	add a,l			;000e
	add a,b			;000f
	jr nc,l0015h		;0010
	jr nc,$-126		;0012
	inc c			;0014
l0015h:
	nop			;0015
	add a,e			;0016
	inc bc			;0017
l0018h:
	ccf			;0018
	inc bc			;0019
	dec c			;001a
	nop			;001b
	add a,e			;001c
	ret nz			;001d
l001eh:
	call m,sub_0dc0h	;001e
	nop			;0021
	add a,e			;0022
l0023h:
	rlca			;0023
	ccf			;0024
	rlca			;0025
	add hl,bc		;0026
	nop			;0027
	adc a,e			;0028
	inc bc			;0029
	inc e			;002a
	jr nc,$-30		;002b
	add a,b			;002d
	nop			;002e
	add a,b			;002f
	ret po			;0030
	jr nc,l004fh		;0031
	inc bc			;0033
	ld b,000h		;0034
	adc a,c			;0036
	inc bc			;0037
	ld c,018h		;0038
	ld (hl),b		;003a
	ret po			;003b
	ld (hl),b		;003c
	jr l004dh		;003d
l003fh:
	inc bc			;003f
	rlca			;0040
	nop			;0041
	adc a,c			;0042
	ret nz			;0043
l0044h:
	ld (hl),b		;0044
	jr l0055h		;0045
	rlca			;0047
	ld c,018h		;0048
	ld (hl),b		;004a
	ret nz			;004b
	ex af,af'		;004c
l004dh:
	nop			;004d
	add a,a			;004e
l004fh:
	ld bc,l0f07h		;004f
	rra			;0052
	rrca			;0053
	rlca			;0054
l0055h:
	ld bc,l0007h+2		;0055
	add a,a			;0058
	add a,b			;0059
	ret po			;005a
	ret p			;005b
	ret m			;005c
	ret p			;005d
	ret po			;005e
	add a,b			;005f
	dec b			;0060
	nop			;0061
	nop			;0062
	dec b			;0063
	nop			;0064
	add a,l			;0065
	ld bc,07802h		;0066
	ld (bc),a		;0069
	ld bc,l0007h+2		;006a
l006dh:
	ld (bc),a		;006d
	add a,b			;006e
	add a,a			;006f
	ld b,b			;0070
	jr nz,l0082h		;0071
	jr nz,l00b5h		;0073
	add a,b			;0075
	add a,b			;0076
l0077h:
	ld a,(bc)		;0077
	nop			;0078
	add a,e			;0079
	ld bc,l0106h		;007a
l007dh:
	inc c			;007d
	nop			;007e
l007fh:
	add a,l			;007f
	add a,b			;0080
	ld b,b			;0081
l0082h:
	jr nc,l00c4h		;0082
	add a,b			;0084
	dec c			;0085
	nop			;0086
	add a,c			;0087
	ld bc,l000eh		;0088
	add a,e			;008b
	add a,b			;008c
	ret nz			;008d
	add a,b			;008e
	dec bc			;008f
	nop			;0090
	add a,a			;0091
	add a,b			;0092
	ld (hl),b		;0093
	rrca			;0094
	nop			;0095
	rrca			;0096
	ld (hl),b		;0097
	add a,b			;0098
	dec bc			;0099
	nop			;009a
	add a,e			;009b
	add a,b			;009c
	ret m			;009d
	add a,b			;009e
	add hl,bc		;009f
	nop			;00a0
	adc a,e			;00a1
	ret nz			;00a2
	jr c,l00b1h		;00a3
	rlca			;00a5
	ld bc,l0100h		;00a6
	rlca			;00a9
	inc c			;00aa
	jr c,l006dh		;00ab
	add hl,bc		;00ad
	nop			;00ae
	add a,e			;00af
	ret po			;00b0
l00b1h:
	call m,007e0h		;00b1
	nop			;00b4
l00b5h:
	nop			;00b5
	add a,e			;00b6
	nop			;00b7
	ld c,d			;00b8
	jp z,04a03h		;00b9
	add a,c			;00bc
	ld b,h			;00bd
	ld a,(bc)		;00be
	nop			;00bf
	add a,(hl)		;00c0
	ret nz			;00c1
	and b			;00c2
	and b			;00c3
l00c4h:
	ret nz			;00c4
	add a,b			;00c5
	add a,b			;00c6
	add hl,bc		;00c7
	nop			;00c8
	add a,d			;00c9
	ld (bc),a		;00ca
	ld b,005h		;00cb
	ld (bc),a		;00cd
	ld a,(bc)		;00ce
	nop			;00cf
	add a,c			;00d0
	ld l,h			;00d1
	inc b			;00d2
	sub d			;00d3
	add a,c			;00d4
	ld l,h			;00d5
	add hl,bc		;00d6
	nop			;00d7
	add a,a			;00d8
	inc c			;00d9
	ld (de),a		;00da
sub_00dbh:
	ld (bc),a		;00db
	inc b			;00dc
	ex af,af'		;00dd
	djnz $+32		;00de
	ld a,(bc)		;00e0
	nop			;00e1
	add a,c			;00e2
	ld l,h			;00e3
	inc b			;00e4
	sub d			;00e5
	add a,c			;00e6
	ld l,h			;00e7
	add hl,bc		;00e8
	nop			;00e9
	add a,a			;00ea
	ld e,010h		;00eb
	inc e			;00ed
	ld (bc),a		;00ee
	ld (bc),a		;00ef
	ld (de),a		;00f0
	inc c			;00f1
	ld a,(bc)		;00f2
	nop			;00f3
	add a,c			;00f4
	ld l,h			;00f5
	inc b			;00f6
	sub d			;00f7
	add a,c			;00f8
	ld l,h			;00f9
	add hl,bc		;00fa
	nop			;00fb
	add a,d			;00fc
	djnz l0132h		;00fd
	inc b			;00ff
l0100h:
	inc d			;0100
l0101h:
	add a,c			;0101
	inc de			;0102
l0103h:
	ld a,(bc)		;0103
	nop			;0104
	add a,c			;0105
l0106h:
	ld l,h			;0106
	inc b			;0107
	sub d			;0108
	add a,c			;0109
	ld l,h			;010a
	add hl,bc		;010b
	nop			;010c
	add a,a			;010d
	jr nc,$+75		;010e
	ld a,(bc)		;0110
	ld (de),a		;0111
	ld (07942h),hl		;0112
	ld a,(bc)		;0115
	nop			;0116
	add a,c			;0117
	or (hl)			;0118
	inc b			;0119
	ld c,c			;011a
	add a,c			;011b
	or (hl)			;011c
	add hl,bc		;011d
	nop			;011e
	add a,a			;011f
	ld a,b			;0120
	ld b,c			;0121
	ld (hl),d		;0122
	ld c,d			;0123
	ld a,(bc)		;0124
	ld c,d			;0125
	ld sp,l000ah		;0126
	add a,c			;0129
	or (hl)			;012a
	inc b			;012b
	ld c,c			;012c
	add a,c			;012d
	or (hl)			;012e
	add hl,bc		;012f
	nop			;0130
	add a,d			;0131
l0132h:
	ld b,b			;0132
	call 05204h		;0133
	add a,c			;0136
	ld c,l			;0137
	ld a,(bc)		;0138
	nop			;0139
	add a,c			;013a
	or (hl)			;013b
	inc b			;013c
	ld c,c			;013d
	add a,c			;013e
	or (hl)			;013f
	add hl,bc		;0140
	nop			;0141
	nop			;0142
	ld b,0c9h		;0143
	xor d			;0145
	ld bc,0af7ah		;0146
	ld b,00bh		;0149
	xor e			;014b
	ld de,0afa4h		;014c
	ld b,046h		;014f
	xor e			;0151
	ld hl,0afbbh		;0152
	ld b,086h		;0155
	xor e			;0157
	ld sp,0afdfh		;0158
	nop			;015b
	ld bc,03409h		;015c
	ex af,af'		;015f
	ld de,03419h		;0160
	ex af,af'		;0163
	ld hl,03429h		;0164
	ex af,af'		;0167
	ld sp,03439h		;0168
	ex af,af'		;016b
	nop			;016c
	ld b,03ch		;016d
	and d			;016f
	ld bc,0ac3dh		;0170
	nop			;0173
	ld bc,0b427h		;0174
	rlca			;0177
	add hl,hl		;0178
	ld (hl),h		;0179
l017ah:
	add hl,bc		;017a
	ld hl,(l0c74h)		;017b
	dec hl			;017e
l017fh:
	call p,02e11h		;017f
	call p,03126h		;0182
	ld (hl),h		;0185
	nop			;0186
	dec h			;0187
	ld (00074h),a		;0188
	ld b,053h		;018b
	and e			;018d
	ld bc,0acd7h		;018e
	ld b,07dh		;0191
	and e			;0193
	djnz l017ah		;0194
	xor h			;0196
	ld b,0a7h		;0197
	and e			;0199
	dec d			;019a
	jp p,006ach		;019b
	rst 38h			;019e
	and e			;019f
	jr nz,l01c0h		;01a0
	xor l			;01a2
	ld b,033h		;01a3
	and h			;01a5
	add hl,hl		;01a6
	jr nc,$-81		;01a7
	ld b,06dh		;01a9
	and h			;01ab
	jr nc,l0217h		;01ac
	xor l			;01ae
	ld b,0a7h		;01af
	and h			;01b1
	add hl,sp		;01b2
	add a,b			;01b3
	xor l			;01b4
	ld b,0ddh		;01b5
	and h			;01b7
	ld b,b			;01b8
	adc a,a			;01b9
	xor l			;01ba
	ld b,014h		;01bb
	and l			;01bd
	ld b,a			;01be
	xor e			;01bf
l01c0h:
	xor l			;01c0
	ld b,05eh		;01c1
	and l			;01c3
	ld d,b			;01c4
	adc a,0adh		;01c5
	ld b,0a8h		;01c7
	and l			;01c9
	ld h,b			;01ca
	pop af			;01cb
	xor l			;01cc
	ld b,007h		;01cd
	and (hl)		;01cf
	ld (hl),b		;01d0
	add hl,hl		;01d1
	xor (hl)		;01d2
	ld b,072h		;01d3
	and (hl)		;01d5
	add a,b			;01d6
	ld d,b			;01d7
	xor (hl)		;01d8
	ld b,0f8h		;01d9
	and (hl)		;01db
	sub (hl)		;01dc
	ld a,a			;01dd
	xor (hl)		;01de
	ld b,043h		;01df
	and a			;01e1
	and b			;01e2
	or b			;01e3
	xor (hl)		;01e4
	ld b,0bbh		;01e5
	and a			;01e7
	or c			;01e8
	exx			;01e9
	xor (hl)		;01ea
	ld b,035h		;01eb
sub_01edh:
	xor b			;01ed
	ret nz			;01ee
	jp p,l06aeh		;01ef
	xor l			;01f2
	xor b			;01f3
	out (00eh),a		;01f4
	xor a			;01f6
	ld b,00eh		;01f7
	xor c			;01f9
	ret po			;01fa
	dec d			;01fb
	xor a			;01fc
	ld b,06fh		;01fd
	xor c			;01ff
	ret p			;0200
l0201h:
	ccf			;0201
l0202h:
	xor a			;0202
l0203h:
	nop			;0203
l0204h:
	pop bc			;0204
	pop de			;0205
	ld (hl),h		;0206
	ret nz			;0207
	jp nc,0ea74h		;0208
	defb 0edh ;next byte illegal after ed	;020b
	ld (hl),h		;020c
	ex de,hl		;020d
	xor 074h		;020e
	ret po			;0210
	rst 28h			;0211
	ld (hl),h		;0212
	nop			;0213
	ld b,0dch		;0214
	xor c			;0216
l0217h:
	ld bc,0af44h		;0217
	ld b,0b1h		;021a
	xor d			;021c
	ld hl,(0af73h)		;021d
	nop			;0220
	ld b,018h		;0221
	xor h			;0223
	ld bc,0ac3ah		;0224
	nop			;0227
	rra			;0228
	inc h			;0229
	or h			;022a
	dec b			;022b
	ld h,074h		;022c
	nop			;022e
	inc h			;022f
	daa			;0230
	ld (hl),h		;0231
	rra			;0232
	jr z,l02a9h		;0233
	ld hl,07429h		;0235
	ld (0742dh),hl		;0238
	nop			;023b
	ld (bc),a		;023c
	nop			;023d
	ld (bc),a		;023e
	add a,b			;023f
	add a,l			;0240
	ret nz			;0241
	add a,b			;0242
	nop			;0243
	nop			;0244
	ret nz			;0245
	inc bc			;0246
	add a,b			;0247
	inc b			;0248
	nop			;0249
	ld (bc),a		;024a
	rst 38h			;024b
	add a,d			;024c
	cp 078h			;024d
	inc b			;024f
	nop			;0250
	add a,d			;0251
	ret nz			;0252
	add a,b			;0253
	ld b,000h		;0254
	add a,d			;0256
	rlca			;0257
	inc bc			;0258
	ld b,000h		;0259
	adc a,h			;025b
	ret nz			;025c
	jp po,0ecf0h		;025d
	cp h			;0260
	ld c,(hl)		;0261
	inc d			;0262
	nop			;0263
	adc a,b			;0264
	ret m			;0265
	ret p			;0266
	ret po			;0267
	inc bc			;0268
	ret nz			;0269
	adc a,c			;026a
	ret po			;026b
	add a,d			;026c
	and 0ceh		;026d
	dec a			;026f
	inc de			;0270
	nop			;0271
	in a,(044h)		;0272
	inc bc			;0274
	add a,b			;0275
	and h			;0276
	ret nz			;0277
	ret po			;0278
	jp m,04efch		;0279
	rlca			;027c
	rra			;027d
	rlca			;027e
	dec a			;027f
	rra			;0280
	rlca			;0281
	rst 20h			;0282
	rra			;0283
	rlca			;0284
	rst 38h			;0285
l0286h:
	add a,a			;0286
	dec sp			;0287
	rst 38h			;0288
	rst 38h			;0289
	or a			;028a
	inc c			;028b
	rlca			;028c
	sbc a,a			;028d
	rst 30h			;028e
	ld sp,hl		;028f
	rst 38h			;0290
	rst 8			;0291
	rst 20h			;0292
	ccf			;0293
	ret po			;0294
	ret m			;0295
	ret po			;0296
	ret nz			;0297
	ret po			;0298
	ret p			;0299
	add a,b			;029a
	inc bc			;029b
	nop			;029c
	sub b			;029d
	inc b			;029e
	dec bc			;029f
	ld e,a			;02a0
	ld a,c			;02a1
	djnz l02e3h		;02a2
	nop			;02a4
	nop			;02a5
	rlca			;02a6
l02a7h:
	rrca			;02a7
	rrca			;02a8
l02a9h:
	rlca			;02a9
	pop bc			;02aa
	pop bc			;02ab
	ret nz			;02ac
	add a,b			;02ad
	inc bc			;02ae
	nop			;02af
	xor (hl)		;02b0
	inc bc			;02b1
	ld b,00fh		;02b2
	ret nz			;02b4
	ld h,b			;02b5
l02b6h:
	and e			;02b6
	ld sp,hl		;02b7
	ld sp,hl		;02b8
	ld a,(hl)		;02b9
	ex (sp),hl		;02ba
	dec c			;02bb
	rst 10h			;02bc
	jp z,0a7fch		;02bd
	adc a,d			;02c0
	and c			;02c1
	pop bc			;02c2
	pop bc			;02c3
	ccf			;02c4
	rrca			;02c5
	cp e			;02c6
	ld h,(hl)		;02c7
	xor a			;02c8
	ld d,b			;02c9
	and b			;02ca
	dec c			;02cb
	ld b,c			;02cc
	ld h,a			;02cd
	ld (hl),e		;02ce
	cp h			;02cf
	ret z			;02d0
	nop			;02d1
	in a,(022h)		;02d2
	inc c			;02d4
	ld c,007h		;02d5
	add a,e			;02d7
	ret p			;02d8
	cp h			;02d9
	cp 01fh			;02da
	inc l			;02dc
	rra			;02dd
	rlca			;02de
	dec b			;02df
	nop			;02e0
	inc bc			;02e1
	inc c			;02e2
l02e3h:
	adc a,c			;02e3
	inc d			;02e4
	ld e,01eh		;02e5
	ld a,037h		;02e7
	ld e,00bh		;02e9
	ld e,038h		;02eb
	inc b			;02ed
	nop			;02ee
	sub b			;02ef
	rlca			;02f0
	ccf			;02f1
	rra			;02f2
	rlca			;02f3
	nop			;02f4
	nop			;02f5
	ld (hl),b		;02f6
	nop			;02f7
	defb 0fdh,0f3h,098h ;illegal sequence	;02f8
	cp 0f8h			;02fb
	ret p			;02fd
	ret nz			;02fe
	add a,b			;02ff
l0300h:
	inc bc			;0300
l0301h:
	nop			;0301
	ld (bc),a		;0302
l0303h:
	ld b,b			;0303
	add a,e			;0304
	ld h,d			;0305
	ld c,a			;0306
	pop af			;0307
	inc bc			;0308
	nop			;0309
	add a,d			;030a
	inc bc			;030b
	ld c,003h		;030c
	nop			;030e
	xor e			;030f
	dec l			;0310
	jp nc,l0d0dh		;0311
	ld (bc),a		;0314
	ld bc,l0202h		;0315
	dec e			;0318
	inc bc			;0319
	ld a,(de)		;031a
	ld bc,l0203h		;031b
	ld (bc),a		;031e
	nop			;031f
	nop			;0320
	ld a,(de)		;0321
	inc l			;0322
	ld c,002h		;0323
	inc b			;0325
	nop			;0326
	nop			;0327
	ld bc,06d16h		;0328
	inc bc			;032b
	ld (bc),a		;032c
	ld bc,l0000h		;032d
	djnz $+98		;0330
	and b			;0332
	ret nz			;0333
	ret nc			;0334
	and b			;0335
	ld h,b			;0336
	ld b,b			;0337
	jr nz,l037ah		;0338
	ld b,b			;033a
	rlca			;033b
	nop			;033c
	add a,c			;033d
	add a,b			;033e
	inc bc			;033f
	nop			;0340
	adc a,d			;0341
	ld b,b			;0342
l0343h:
	ret nz			;0343
	nop			;0344
	jr l03b7h		;0345
	ld h,e			;0347
	defb 0ddh,03eh,0a6h ;illegal sequence	;0348
	and (hl)		;034b
	rlca			;034c
	nop			;034d
	add a,c			;034e
	rst 38h			;034f
	ex af,af'		;0350
	ld bc,l0400h		;0351
	nop			;0354
	add a,h			;0355
	ld bc,03f0fh		;0356
	jp m,l0004h		;0359
	add a,h			;035c
	rst 38h			;035d
	or a			;035e
	jp c,0050dh		;035f
	nop			;0362
	add a,e			;0363
	ret po			;0364
	call m,sub_00dbh	;0365
	inc b			;0368
	nop			;0369
	add a,h			;036a
	ld bc,03f0fh		;036b
	jp m,l0004h		;036e
	add a,h			;0371
	rst 38h			;0372
	or a			;0373
	jp c,0050dh		;0374
	nop			;0377
	add a,e			;0378
	ret po			;0379
l037ah:
	call m,sub_00dbh	;037a
	xor b			;037d
	inc bc			;037e
	rrca			;037f
	rra			;0380
	ccf			;0381
	ld a,a			;0382
l0383h:
	call pe,0d4f8h		;0383
	call p,090e9h		;0386
	ld b,b			;0389
	ld (de),a		;038a
l038bh:
	add a,c			;038b
	add a,e			;038c
	add a,e			;038d
	add a,b			;038e
	ret po			;038f
	ret m			;0390
	call m,0fefeh		;0391
	ei			;0394
	sbc a,02fh		;0395
	or a			;0397
	ld l,e			;0398
	ld c,095h		;0399
l039bh:
	dec de			;039b
	rrca			;039c
	ld c,040h		;039d
	ld b,d			;039f
	ld b,b			;03a0
	sub b			;03a1
	ret po			;03a2
	or b			;03a3
	jp pe,000a4h		;03a4
	inc bc			;03a7
	ret nz			;03a8
	inc bc			;03a9
	add a,b			;03aa
	jp nc,08000h		;03ab
	daa			;03ae
	ld e,a			;03af
	cp e			;03b0
	ld e,e			;03b1
	ld a,(hl)		;03b2
	inc a			;03b3
	ld d,l			;03b4
	cp d			;03b5
	adc a,e			;03b6
l03b7h:
	inc bc			;03b7
	ld a,(hl)		;03b8
	ld b,e			;03b9
	rra			;03ba
	rrca			;03bb
	ccf			;03bc
	push af			;03bd
	jr c,l0343h		;03be
	ld l,b			;03c0
	ret p			;03c1
l03c2h:
	ld a,a			;03c2
	ld d,(hl)		;03c3
	jr z,$+31		;03c4
	cp a			;03c6
	ld e,a			;03c7
	rst 8			;03c8
	rst 28h			;03c9
	dec l			;03ca
	ld b,01bh		;03cb
	ld e,0f4h		;03cd
	jp m,0edffh		;03cf
	jp m,0d4bfh		;03d2
	rlc (hl)		;03d5
	inc b			;03d7
	jr nz,$-62		;03d8
	xor d			;03da
	push de			;03db
	ld l,a			;03dc
	sbc a,0e4h		;03dd
	ret z			;03df
	inc bc			;03e0
	ld (bc),a		;03e1
	ld de,0271dh		;03e2
	ld l,a			;03e5
	ccf			;03e6
	adc a,a			;03e7
	ld e,l			;03e8
	ccf			;03e9
	dec hl			;03ea
	ld c,(hl)		;03eb
	rra			;03ec
	cpl			;03ed
	ret p			;03ee
	inc bc			;03ef
sub_03f0h:
	ld l,056h		;03f0
	cp h			;03f2
	ld l,h			;03f3
	inc (hl)		;03f4
	adc a,d			;03f5
	ld a,(bc)		;03f6
	dec h			;03f7
l03f8h:
	adc a,d			;03f8
	ld d,l			;03f9
	ld l,e			;03fa
	or (hl)			;03fb
	sbc a,a			;03fc
l03fdh:
	push af			;03fd
	nop			;03fe
	dec b			;03ff
l0400h:
	ld bc,l0383h+2		;0400
	inc hl			;0403
	inc de			;0404
	nop			;0405
	nop			;0406
sub_0407h:
	ld b,080h		;0407
	xor b			;0409
l040ah:
	ret m			;040a
	ret pe			;040b
	ret nc			;040c
	xor d			;040d
	ret p			;040e
	ret nc			;040f
	ret pe			;0410
	pop de			;0411
	jr l045eh		;0412
	ld h,(hl)		;0414
	inc a			;0415
	pop bc			;0416
	ld h,a			;0417
	ld b,c			;0418
	jp c,0f4f9h		;0419
	ret m			;041c
	pop de			;041d
	and h			;041e
	ret p			;041f
	sub b			;0420
	ld (bc),a		;0421
	dec sp			;0422
	dec d			;0423
	ld a,02bh		;0424
	ld e,l			;0426
	rla			;0427
	ld e,a			;0428
	or l			;0429
	push af			;042a
	jp m,0fed5h		;042b
	cp d			;042e
	defb 0ddh,0afh,0fdh ;illegal sequence	;042f
	nop			;0432
	cp b			;0433
	ret p			;0434
	inc bc			;0435
	ld l,056h		;0436
	cp h			;0438
	ld l,h			;0439
	inc (hl)		;043a
	adc a,d			;043b
	jp pe,00ff5h		;043c
	jr z,l046dh		;043f
	jr nc,$+27		;0441
	ld c,058h		;0443
	and b			;0445
	ld d,e			;0446
	cp 040h			;0447
	inc c			;0449
	ld c,003h		;044a
	rra			;044c
	jp p,02cc4h		;044d
	add a,00eh		;0450
	inc e			;0452
	ret m			;0453
	jp pe,00ff5h		;0454
	jr z,l0485h		;0457
	jr nc,l0474h		;0459
	ld c,058h		;045b
	and b			;045d
l045eh:
	ld d,e			;045e
	cp 040h			;045f
	inc c			;0461
	ld c,003h		;0462
	rra			;0464
	jp p,02cc4h		;0465
	add a,00eh		;0468
	inc e			;046a
	ret m			;046b
	nop			;046c
l046dh:
	add a,l			;046d
	dec de			;046e
	dec e			;046f
	dec e			;0470
	rrca			;0471
	dec bc			;0472
	inc bc			;0473
l0474h:
	rlca			;0474
	or b			;0475
	ret m			;0476
	ret pe			;0477
	ret nc			;0478
	xor d			;0479
	ret p			;047a
	ret nc			;047b
	ret pe			;047c
	pop de			;047d
	jr l04cah		;047e
	ld h,(hl)		;0480
	inc a			;0481
l0482h:
	pop bc			;0482
	ld h,a			;0483
	ld b,c			;0484
l0485h:
	jp c,0f4f9h		;0485
	ret m			;0488
	pop de			;0489
	and h			;048a
	ret p			;048b
	sub b			;048c
	ld (bc),a		;048d
	dec sp			;048e
	dec d			;048f
	ld a,02bh		;0490
	ld e,l			;0492
	rla			;0493
	ld e,a			;0494
	or l			;0495
	push af			;0496
	jp m,0fed5h		;0497
	cp d			;049a
	defb 0ddh,0afh,0fdh ;illegal sequence	;049b
	ld (bc),a		;049e
	add a,(hl)		;049f
	add a,(hl)		;04a0
	adc a,d			;04a1
	jp c,0b6d6h		;04a2
	xor (hl)		;04a5
	nop			;04a6
	sub b			;04a7
	ld e,h			;04a8
	call pe,0f8f4h		;04a9
	ret m			;04ac
	call m,0bc7ch		;04ad
	ret c			;04b0
	ret c			;04b1
	ld l,b			;04b2
	ld l,b			;04b3
	or b			;04b4
	or b			;04b5
	ret nc			;04b6
	ret nz			;04b7
	inc b			;04b8
	nop			;04b9
	add a,h			;04ba
	ld b,b			;04bb
	jr nz,l04eeh		;04bc
	ld a,b			;04be
	inc bc			;04bf
	nop			;04c0
	add a,l			;04c1
	add a,b			;04c2
	ret nz			;04c3
	ld h,b			;04c4
	ld a,b			;04c5
	ld a,005h		;04c6
	nop			;04c8
	add a,e			;04c9
l04cah:
	ld bc,07f0fh		;04ca
	inc b			;04cd
	nop			;04ce
	adc a,h			;04cf
	inc bc			;04d0
	rlca			;04d1
	add hl,de		;04d2
	ld e,(hl)		;04d3
	rra			;04d4
	cpl			;04d5
	ld (hl),a		;04d6
l04d7h:
	di			;04d7
	ld l,e			;04d8
	sbc a,l			;04d9
	cp l			;04da
	ld a,(hl)		;04db
	nop			;04dc
	inc b			;04dd
	rlca			;04de
	inc bc			;04df
	inc bc			;04e0
	or c			;04e1
	ld bc,0fafeh		;04e2
	push af			;04e5
	call pe,0bffah		;04e6
	call nc,sub_18cbh	;04e9
	ld c,d			;04ec
	ld h,(hl)		;04ed
l04eeh:
	inc a			;04ee
	pop bc			;04ef
	ld h,a			;04f0
	ld b,c			;04f1
	jp c,0b6c0h		;04f2
	ld d,b			;04f5
	adc a,b			;04f6
	dec bc			;04f7
	or (hl)			;04f8
	sbc a,a			;04f9
	push af			;04fa
	ld e,e			;04fb
	ld l,a			;04fc
	cp a			;04fd
	ld a,a			;04fe
	ex de,hl		;04ff
l0500h:
	ld d,a			;0500
	xor e			;0501
	rlca			;0502
l0503h:
	or (hl)			;0503
	push de			;0504
	jr z,l04d7h		;0505
	xor b			;0507
	ld d,h			;0508
	adc a,c			;0509
	ld a,d			;050a
	ld h,h			;050b
	call pe,0ccd4h		;050c
	or h			;050f
	inc (hl)		;0510
	ld d,h			;0511
	adc a,b			;0512
	nop			;0513
	ret z			;0514
	nop			;0515
	inc bc			;0516
	rrca			;0517
	ccf			;0518
	rst 18h			;0519
	call pe,0cff3h		;051a
	cp 07fh			;051d
	ld a,a			;051f
	cp a			;0520
	cp (hl)			;0521
	ret c			;0522
	ret c			;0523
	ret po			;0524
	inc e			;0525
	ex de,hl		;0526
	rst 30h			;0527
	rst 8			;0528
	ccf			;0529
	cp 0f0h			;052a
	ret nz			;052c
	dec e			;052d
	ld a,07fh		;052e
	in a,(0b1h)		;0530
	ld h,h			;0532
	ret z			;0533
	sub c			;0534
	ld (08b05h),hl		;0535
	rst 10h			;0538
	rst 28h			;0539
	cp 0fch			;053a
	ret m			;053c
	ret p			;053d
	ret po			;053e
	add a,b			;053f
	nop			;0540
	jr nc,l055fh		;0541
	ld c,03fh		;0543
	djnz l0547h		;0545
l0547h:
	add a,b			;0547
	nop			;0548
	ld bc,l0703h		;0549
	rrca			;054c
	ret nz			;054d
	ret nz			;054e
	add a,b			;054f
	inc bc			;0550
	ld e,a			;0551
	ccf			;0552
	inc de			;0553
	ret z			;0554
	inc b			;0555
	ld b,b			;0556
	nop			;0557
	ld bc,l0201h		;0558
	rlca			;055b
	dec bc			;055c
	nop			;055d
	sub c			;055e
l055fh:
	ret m			;055f
	ld a,b			;0560
	or b			;0561
	ret nz			;0562
	and b			;0563
	ld b,b			;0564
	ld b,b			;0565
	ret nz			;0566
	cp a			;0567
	ld e,a			;0568
	rst 8			;0569
	rst 28h			;056a
	defb 0edh ;next byte illegal after ed	;056b
	add a,01bh		;056c
	ld e,001h		;056e
	dec b			;0570
	nop			;0571
	ld (bc),a		;0572
	ld bc,027a0h		;0573
	ld e,a			;0576
	dec sp			;0577
	ld e,e			;0578
	ld a,(hl)		;0579
	inc a			;057a
	ld d,l			;057b
	cp d			;057c
	ld e,b			;057d
	and b			;057e
	ld d,e			;057f
	call pe,0f15fh		;0580
	rlca			;0583
	inc bc			;0584
	dec e			;0585
	rst 28h			;0586
	or 0bch			;0587
	ret p			;0589
	ld b,00ch		;058a
	ret m			;058c
	jp pe,l1ff5h		;058d
	rrca			;0590
	inc sp			;0591
	jr nc,l05ach		;0592
	ld c,005h		;0594
	nop			;0596
	ld (bc),a		;0597
	add a,b			;0598
	add a,c			;0599
	ret nz			;059a
	dec b			;059b
	nop			;059c
	ld (bc),a		;059d
	ld b,b			;059e
	add a,c			;059f
	ret nz			;05a0
	dec b			;05a1
	nop			;05a2
	add a,e			;05a3
	add a,b			;05a4
	ld b,b			;05a5
	ld b,b			;05a6
	nop			;05a7
	inc b			;05a8
	ret nz			;05a9
	sbc a,d			;05aa
	ld b,b			;05ab
l05ach:
	add a,b			;05ac
	ld b,b			;05ad
	add a,b			;05ae
	jr c,l062fh		;05af
	cp l			;05b1
	call p,07e79h		;05b2
	cp l			;05b5
	rst 18h			;05b6
	cp 06dh			;05b7
	adc a,e			;05b9
	ccf			;05ba
	rst 18h			;05bb
	ld a,a			;05bc
	cp a			;05bd
	cp 0c0h			;05be
	ret po			;05c0
	out (02ah),a		;05c1
	ld a,l			;05c3
	ld a,d			;05c4
	inc bc			;05c5
	ld a,09fh		;05c6
	cp l			;05c8
	inc a			;05c9
	dec a			;05ca
	ld a,d			;05cb
	ld a,c			;05cc
	ld a,e			;05cd
	add a,(hl)		;05ce
	ret p			;05cf
	inc bc			;05d0
	ld l,056h		;05d1
	cp h			;05d3
	ld l,h			;05d4
	inc (hl)		;05d5
	adc a,d			;05d6
	jr l0611h		;05d7
	ld (hl),b		;05d9
	ret p			;05da
	ret po			;05db
	ret po			;05dc
	ret nz			;05dd
	ret nz			;05de
	nop			;05df
l05e0h:
	jr nz,l05f2h		;05e0
	jr l0600h		;05e2
	ld c,00eh		;05e4
	nop			;05e6
	inc b			;05e7
	ret nz			;05e8
	adc a,h			;05e9
	pop bc			;05ea
	jp 0cfc7h		;05eb
	ret nz			;05ee
	pop hl			;05ef
	pop hl			;05f0
	di			;05f1
l05f2h:
	di			;05f2
	rst 30h			;05f3
	rst 20h			;05f4
	rrca			;05f5
	inc bc			;05f6
	nop			;05f7
	adc a,l			;05f8
	and b			;05f9
	ld d,h			;05fa
	jp pe,0ba42h		;05fb
sub_05feh:
	jr z,l062ch		;05fe
l0600h:
	inc hl			;0600
	dec l			;0601
	ld h,029h		;0602
	ld h,02fh		;0604
l0606h:
	nop			;0606
	ld (bc),a		;0607
	inc c			;0608
	add a,c			;0609
	inc b			;060a
	dec b			;060b
	nop			;060c
	and b			;060d
	jp m,0fafdh		;060e
l0611h:
	call c,0f8f4h		;0611
	ld l,b			;0614
	ret nc			;0615
	adc a,d			;0616
	ld h,l			;0617
	jp p,0f4d0h		;0618
	add a,01fh		;061b
	ld a,a			;061d
	ld (hl),a		;061e
	call 0be7fh		;061f
	ld d,a			;0622
	dec hl			;0623
	rlca			;0624
	dec de			;0625
	adc a,a			;0626
	sub a			;0627
	ld c,e			;0628
	ld l,c			;0629
	di			;062a
	ld h,d			;062b
l062ch:
	add a,a			;062c
	ld a,(hl)		;062d
	dec b			;062e
l062fh:
	nop			;062f
	ld (bc),a		;0630
	ld (bc),a		;0631
	add a,c			;0632
	inc bc			;0633
	dec b			;0634
	nop			;0635
	ld (bc),a		;0636
	ld bc,l038bh		;0637
	ld l,059h		;063a
	ld b,a			;063c
l063dh:
	ld e,c			;063d
	ld e,(hl)		;063e
	cp c			;063f
	and a			;0640
	sbc a,a			;0641
	rrca			;0642
	rrca			;0643
	ld b,000h		;0644
	sub b			;0646
	sbc a,a			;0647
	ccf			;0648
	ld a,a			;0649
	nop			;064a
	cp 0feh			;064b
	ld a,h			;064d
	jr c,l06adh		;064e
	defb 0edh ;next byte illegal after ed	;0650
	push bc			;0651
	cp c			;0652
	ld a,h			;0653
	sub d			;0654
	xor 0d6h		;0655
	dec b			;0657
	nop			;0658
	sub e			;0659
	ld bc,l0202h		;065a
	add a,b			;065d
	add a,b			;065e
	nop			;065f
	nop			;0660
	ld bc,l1f07h		;0661
	ld a,a			;0664
	nop			;0665
	nop			;0666
	inc e			;0667
	ld a,b			;0668
	ret p			;0669
	ret po			;066a
	ret nz			;066b
	add a,b			;066c
	inc b			;066d
	nop			;066e
	inc b			;066f
	add a,b			;0670
	nop			;0671
	sbc a,e			;0672
	adc a,(hl)		;0673
	adc a,l			;0674
	call c,0d4cbh		;0675
	ret z			;0678
	or b			;0679
	ld h,b			;067a
	jr c,l063dh		;067b
	ld a,b			;067d
	ret p			;067e
	ld a,a			;067f
	ld d,(hl)		;0680
	jr z,l06a0h		;0681
	pop af			;0683
	ld c,0feh		;0684
	ld b,e			;0686
	rra			;0687
	rrca			;0688
	ccf			;0689
	push af			;068a
	and b			;068b
	ld b,b			;068c
	add a,b			;068d
	dec b			;068e
	nop			;068f
	adc a,b			;0690
	jr $+30			;0691
	ld c,00fh		;0693
	rlca			;0695
	rlca			;0696
	inc bc			;0697
	inc bc			;0698
	ld b,000h		;0699
	add a,d			;069b
	rlca			;069c
	ccf			;069d
	inc bc			;069e
	nop			;069f
l06a0h:
	add a,l			;06a0
	inc bc			;06a1
	ld e,0fch		;06a2
	ret m			;06a4
	ret p			;06a5
	inc b			;06a6
	inc bc			;06a7
	add a,h			;06a8
	add a,e			;06a9
	jp 0f3e3h		;06aa
l06adh:
	inc bc			;06ad
l06aeh:
	ld bc,l0203h		;06ae
	add a,d			;06b1
	dec b			;06b2
	inc b			;06b3
	ex af,af'		;06b4
	ld b,b			;06b5
	and b			;06b6
	dec sp			;06b7
	defb 0fdh,0feh,030h ;illegal sequence	;06b8
	call m,0977bh		;06bb
	rst 28h			;06be
	ccf			;06bf
	ld e,h			;06c0
l06c1h:
	ld l,e			;06c1
	rst 30h			;06c2
	ret			;06c3
	cp (hl)			;06c4
	ld a,a			;06c5
	inc e			;06c6
	ret m			;06c7
	cp 0fch			;06c8
	ret m			;06ca
	ret p			;06cb
	ret po			;06cc
	ret nz			;06cd
	add a,b			;06ce
	inc bc			;06cf
	add a,a			;06d0
	add a,a			;06d1
	rst 8			;06d2
	rst 8			;06d3
	rst 28h			;06d4
	rst 20h			;06d5
	ret p			;06d6
	inc bc			;06d7
	nop			;06d8
	sbc a,b			;06d9
	dec b			;06da
	ld hl,(04257h)		;06db
	ld e,l			;06de
	inc d			;06df
	inc (hl)		;06e0
	call nz,064b4h		;06e1
	sub h			;06e4
	ld h,h			;06e5
	call p,l0400h		;06e6
	ex af,af'		;06e9
	jr l0724h		;06ea
	ld (hl),b		;06ec
	ld (hl),b		;06ed
	nop			;06ee
	ld bc,l1f07h		;06ef
	inc bc			;06f2
	ccf			;06f3
	add a,d			;06f4
	rra			;06f5
	rrca			;06f6
	nop			;06f7
	ld (bc),a		;06f8
	rra			;06f9
	inc bc			;06fa
	ccf			;06fb
	add a,a			;06fc
	ld a,a			;06fd
	rst 38h			;06fe
	rst 38h			;06ff
	inc bc			;0700
	add a,c			;0701
	pop bc			;0702
l0703h:
	pop bc			;0703
	inc bc			;0704
	pop hl			;0705
	inc b			;0706
	pop af			;0707
	add a,a			;0708
	pop hl			;0709
	ex (sp),hl		;070a
	jp 087c3h		;070b
	ret p			;070e
	ret m			;070f
	inc bc			;0710
	call m,0fe02h		;0711
	add a,d			;0714
	rst 38h			;0715
l0716h:
	rrca			;0716
	dec b			;0717
	rra			;0718
	ld (bc),a		;0719
	ccf			;071a
	inc bc			;071b
	ret po			;071c
	ld (bc),a		;071d
	ld h,b			;071e
	add a,h			;071f
	jr nz,l0752h		;0720
	djnz l073ch		;0722
l0724h:
	inc bc			;0724
	inc e			;0725
	add a,h			;0726
	ld e,00eh		;0727
	rra			;0729
	rrca			;072a
	inc b			;072b
	add a,a			;072c
	add a,c			;072d
	adc a,a			;072e
	inc bc			;072f
	rrca			;0730
	ld (bc),a		;0731
	rst 38h			;0732
	adc a,(hl)		;0733
	rrca			;0734
	rlca			;0735
	ld bc,0fa03h		;0736
	defb 0fdh,001h,008h ;illegal sequence	;0739
l073ch:
	djnz l076eh		;073c
	ld h,b			;073e
	ld h,b			;073f
	ret po			;0740
	ret po			;0741
	nop			;0742
	add a,h			;0743
	cpl			;0744
	rra			;0745
	rrca			;0746
	rlca			;0747
	inc b			;0748
	nop			;0749
	add a,d			;074a
	ret nz			;074b
	add a,b			;074c
	ld b,000h		;074d
	add a,h			;074f
	ld c,e			;0750
	and l			;0751
l0752h:
	rst 8			;0752
	ret m			;0753
	inc b			;0754
	nop			;0755
	adc a,d			;0756
	ld sp,hl		;0757
	call m,0fffeh		;0758
	ld a,a			;075b
	ld a,a			;075c
	ld a,01ch		;075d
	ret p			;075f
	ret p			;0760
	ld a,(bc)		;0761
	nop			;0762
	inc b			;0763
	ld bc,l0482h		;0764
	dec b			;0767
	inc bc			;0768
	dec bc			;0769
	ld (bc),a		;076a
	rla			;076b
	add a,c			;076c
	inc d			;076d
l076eh:
	inc bc			;076e
	and b			;076f
	adc a,b			;0770
	jr nz,$-94		;0771
	and b			;0773
	jr nz,l0716h		;0774
	ret po			;0776
	ret nz			;0777
	add a,b			;0778
	dec b			;0779
	nop			;077a
	sub a			;077b
	sub a			;077c
	ld a,c			;077d
	cp 070h			;077e
	inc a			;0780
	jr $-2			;0781
	inc sp			;0783
	cp d			;0784
	or a			;0785
	and e			;0786
l0787h:
	sbc a,l			;0787
	ld a,049h		;0788
	ld (hl),a		;078a
	ld l,e			;078b
	nop			;078c
	nop			;078d
	jr c,$+32		;078e
	rrca			;0790
	rlca			;0791
	inc bc			;0792
	inc bc			;0793
	ld bc,l0002h		;0794
	adc a,b			;0797
	add a,b			;0798
	ret po			;0799
	ret m			;079a
	cp 001h			;079b
	rrca			;079d
	ccf			;079e
	ld a,a			;079f
	dec b			;07a0
	rst 38h			;07a1
	sub a			;07a2
	call m,0ffc0h		;07a3
	cp 0fch			;07a6
	ret m			;07a8
	ret p			;07a9
	ld (hl),h		;07aa
	sbc a,d			;07ab
	jp po,07a9ah		;07ac
	sbc a,l			;07af
	push hl			;07b0
	ld sp,hl		;07b1
	jr c,l0832h		;07b2
	cp l			;07b4
	out (0efh),a		;07b5
	out (03ch),a		;07b7
	jr l07bbh		;07b9
l07bbh:
	cp c			;07bb
	ld l,b			;07bc
	ei			;07bd
	ret			;07be
	ld a,b			;07bf
	ld (hl),h		;07c0
	call c,061c7h		;07c1
	ld e,038h		;07c4
	jr c,l082ah		;07c6
	pop bc			;07c8
	inc bc			;07c9
	rlca			;07ca
	rrca			;07cb
	ccf			;07cc
	ccf			;07cd
	ld a,a			;07ce
	ld a,(hl)		;07cf
	ld a,(hl)		;07d0
	call m,0f8fch		;07d1
	ret m			;07d4
	ret p			;07d5
	ret po			;07d6
	pop hl			;07d7
	jp l0787h		;07d8
	rra			;07db
	rra			;07dc
	ccf			;07dd
	ld a,(hl)		;07de
	jp m,0e0f8h		;07df
	ret nz			;07e2
	add a,b			;07e3
	xor 070h		;07e4
	ld a,(0a069h)		;07e6
	ret po			;07e9
	nop			;07ea
	ld c,b			;07eb
	call m,0f0f0h		;07ec
	xor d			;07ef
sub_07f0h:
	ret nz			;07f0
	add a,b			;07f1
	ld d,b			;07f2
	nop			;07f3
	nop			;07f4
	inc bc			;07f5
	ld (bc),a		;07f6
	add a,h			;07f7
	ld bc,l0103h		;07f8
	ld bc,l0703h		;07fb
	ld (bc),a		;07fe
	inc bc			;07ff
	ld (bc),a		;0800
	ld bc,l00b1h		;0801
	ret po			;0804
	ld h,b			;0805
l0806h:
	jr c,l080ch		;0806
	rlca			;0808
	ld bc,l0000h		;0809
l080ch:
	add a,b			;080c
	ret nz			;080d
	ret nz			;080e
	ret po			;080f
	ret po			;0810
	ret p			;0811
l0812h:
	ret m			;0812
	call m,03e7ch		;0813
	ld c,007h		;0816
	ld bc,0c081h		;0818
	ret nz			;081b
	rrca			;081c
	or 0feh			;081d
	call p,070f8h		;081f
	ret pe			;0822
	ld (hl),b		;0823
	ret m			;0824
	call m,0fefeh		;0825
	nop			;0828
	add a,b			;0829
l082ah:
	ret po			;082a
	call m,0fffeh		;082b
l082eh:
	rst 38h			;082e
	ld a,a			;082f
	rra			;0830
	rlca			;0831
l0832h:
	ld bc,l003fh		;0832
	inc bc			;0835
	nop			;0836
	add a,l			;0837
	ret nz			;0838
	ld a,b			;0839
	ccf			;083a
	rra			;083b
	rrca			;083c
	ld b,000h		;083d
	add a,l			;083f
	ret po			;0840
	call m,0e080h		;0841
	ret m			;0844
	inc bc			;0845
	call m,0f882h		;0846
	ret p			;0849
	ex af,af'		;084a
	ld (bc),a		;084b
	inc bc			;084c
	add a,b			;084d
	inc bc			;084e
	ld b,b			;084f
	add a,d			;0850
	and b			;0851
	jr nz,$+5		;0852
l0854h:
	and b			;0854
	add a,c			;0855
	jr nz,$+5		;0856
	and b			;0858
	sub l			;0859
	jr nz,l0887h		;085a
	daa			;085c
	cpl			;085d
	ld d,e			;085e
	ld e,h			;085f
	cp a			;0860
	cp h			;0861
	or e			;0862
	call c,07fbfh		;0863
	inc c			;0866
	ccf			;0867
	sbc a,0e9h		;0868
	rst 30h			;086a
	ld a,a			;086b
	ld a,a			;086c
	ccf			;086d
	ld c,004h		;086e
	nop			;0870
	add a,e			;0871
	ret po			;0872
	ret nz			;0873
	add a,b			;0874
	dec b			;0875
	nop			;0876
	sub b			;0877
	rst 8			;0878
	inc sp			;0879
	call m,0fc18h		;087a
	ld a,(hl)		;087d
	jr l0880h		;087e
l0880h:
	inc c			;0880
	ld (hl),b		;0881
	call m,0cff3h		;0882
	ccf			;0885
	rst 8			;0886
l0887h:
	di			;0887
	inc bc			;0888
	ex af,af'		;0889
	inc bc			;088a
	inc b			;088b
	ld (bc),a		;088c
	ld (bc),a		;088d
	ld (bc),a		;088e
	ld bc,l0286h		;088f
	inc b			;0892
	ex af,af'		;0893
	djnz l08b6h		;0894
	ld b,b			;0896
	ld b,000h		;0897
	sub d			;0899
	inc a			;089a
	ld a,(hl)		;089b
	inc e			;089c
	ld a,(hl)		;089d
	cp l			;089e
	set 6,a			;089f
	srl h			;08a1
	jr l08c4h		;08a3
	ld a,a			;08a5
	ccf			;08a6
	rra			;08a7
	rrca			;08a8
	rlca			;08a9
	inc bc			;08aa
	ld bc,08100h		;08ab
	rra			;08ae
	rlca			;08af
	rrca			;08b0
	inc b			;08b1
	nop			;08b2
	adc a,h			;08b3
	add a,b			;08b4
	ret nz			;08b5
l08b6h:
	ret p			;08b6
	call m,l0000h		;08b7
	ret nz			;08ba
	and b			;08bb
	ld (hl),b		;08bc
	sbc a,b			;08bd
	jr l08ceh		;08be
	inc b			;08c0
	nop			;08c1
	adc a,h			;08c2
	add a,b			;08c3
l08c4h:
	ret nz			;08c4
	ret po			;08c5
	ret p			;08c6
	nop			;08c7
	jr nz,l08e2h		;08c8
	ld c,00fh		;08ca
	rlca			;08cc
	add a,a			;08cd
l08ceh:
	add a,a			;08ce
	inc bc			;08cf
	nop			;08d0
	adc a,b			;08d1
	add a,b			;08d2
	ret po			;08d3
	jr nc,$+30		;08d4
	ld e,087h		;08d6
	rrca			;08d8
	rrca			;08d9
	inc bc			;08da
	rra			;08db
	ld (bc),a		;08dc
	ccf			;08dd
	sub (hl)		;08de
	rst 38h			;08df
	ld a,a			;08e0
	rst 38h			;08e1
l08e2h:
	rst 38h			;08e2
	rst 18h			;08e3
	cp 0fch			;08e4
	call p,sub_1e0fh	;08e6
	ccf			;08e9
	ld a,d			;08ea
	jp m,0d0c1h		;08eb
	add a,b			;08ee
sub_08efh:
	pop hl			;08ef
	pop hl			;08f0
	jp l0787h		;08f1
	rrca			;08f4
	inc bc			;08f5
	rra			;08f6
	add a,a			;08f7
	ccf			;08f8
	ld a,(hl)		;08f9
	rst 38h			;08fa
	defb 0fdh,0eeh,0f2h ;illegal sequence	;08fb
	and 005h		;08fe
	rst 38h			;0900
	adc a,e			;0901
	ei			;0902
	rst 30h			;0903
	cp 07fh			;0904
	inc a			;0906
	ld e,00eh		;0907
	rlca			;0909
	ld bc,l0103h		;090a
	nop			;090d
	add a,e			;090e
	rlca			;090f
	inc bc			;0910
	ld bc,l0005h		;0911
	inc bc			;0914
	dec b			;0915
	add a,l			;0916
	inc b			;0917
l0918h:
	dec b			;0918
	dec b			;0919
	inc b			;091a
	dec b			;091b
	inc bc			;091c
	ld bc,l0204h		;091d
	adc a,e			;0920
	dec b			;0921
	jp (hl)			;0922
	sbc a,(hl)		;0923
	ld a,a			;0924
	ld c,03ch		;0925
	jr l0968h		;0927
	call z,0a020h		;0929
	inc bc			;092c
	ret nc			;092d
	ld (bc),a		;092e
	ret pe			;092f
	add a,c			;0930
	jr z,l0938h		;0931
	and b			;0933
	and a			;0934
	jr nz,$-94		;0935
	and b			;0937
l0938h:
	ld l,a			;0938
	ld e,a			;0939
	ccf			;093a
	cp a			;093b
	rst 18h			;093c
	rst 28h			;093d
	rst 30h			;093e
	ei			;093f
	call m,0fe38h		;0940
	ld a,b			;0943
	call m,0f7fbh		;0944
	rst 28h			;0947
	call m,0cf33h		;0948
	inc sp			;094b
	call m,03800h		;094c
	cp 030h			;094f
	ld c,03fh		;0951
	rst 8			;0953
	di			;0954
	call m,0cff3h		;0955
	add a,b			;0958
	ret p			;0959
	call m,sub_05feh	;095a
	rst 38h			;095d
	adc a,a			;095e
	ccf			;095f
	inc bc			;0960
	rst 38h			;0961
	ld a,a			;0962
	ccf			;0963
	rra			;0964
	rrca			;0965
	inc (hl)		;0966
	halt			;0967
l0968h:
	ld b,060h		;0968
	ld l,(hl)		;096a
	inc l			;096b
	ld a,(hl)		;096c
	inc a			;096d
	nop			;096e
	ld (bc),a		;096f
	nop			;0970
	add a,d			;0971
	ex af,af'		;0972
	inc bc			;0973
	add hl,bc		;0974
	nop			;0975
	add a,l			;0976
	ld bc,l0703h		;0977
	ld bc,l0301h		;097a
	inc bc			;097d
	add a,l			;097e
	rlca			;097f
	rrca			;0980
	ld e,01ch		;0981
	ld (bc),a		;0983
	inc bc			;0984
	nop			;0985
	add a,d			;0986
	ret nz			;0987
	djnz $+7		;0988
	nop			;098a
	ld (bc),a		;098b
	ex af,af'		;098c
	ld (bc),a		;098d
	jr l0918h		;098e
	ld d,b			;0990
	djnz $-126		;0991
	nop			;0993
	nop			;0994
	ld bc,l0703h		;0995
	inc b			;0998
l0999h:
	nop			;0999
	add a,h			;099a
	add a,b			;099b
	ret nz			;099c
	ret po			;099d
	jr nc,$+6		;099e
	nop			;09a0
	adc a,c			;09a1
	inc bc			;09a2
	ld b,018h		;09a3
	nop			;09a5
	ld c,03eh		;09a6
	ld a,h			;09a8
	ret po			;09a9
	add a,b			;09aa
	inc bc			;09ab
	nop			;09ac
	add a,h			;09ad
	ld e,078h		;09ae
	ret po			;09b0
	add a,b			;09b1
	add hl,bc		;09b2
	nop			;09b3
	adc a,c			;09b4
	add a,b			;09b5
	ret nz			;09b6
	ret p			;09b7
	and b			;09b8
	ret nz			;09b9
	ld d,b			;09ba
	ld b,b			;09bb
	ex af,af'		;09bc
	ex af,af'		;09bd
	dec b			;09be
	nop			;09bf
	add a,l			;09c0
	ret nz			;09c1
	inc a			;09c2
	rrca			;09c3
	rlca			;09c4
	rlca			;09c5
	inc bc			;09c6
	nop			;09c7
	add a,l			;09c8
	ld bc,l0e03h		;09c9
	jr l0a2eh		;09cc
	ld b,000h		;09ce
	adc a,d			;09d0
	rlca			;09d1
	jr c,l09d4h		;09d2
l09d4h:
	nop			;09d4
	ld (bc),a		;09d5
	ex af,af'		;09d6
	jr nc,l0999h		;09d7
	nop			;09d9
	nop			;09da
	nop			;09db
	sub d			;09dc
	rst 30h			;09dd
	add a,h			;09de
	or a			;09df
	sub l			;09e0
	sub h			;09e1
	call p,0ff00h		;09e2
l09e5h:
	cp l			;09e5
	and l			;09e6
	cp l			;09e7
	dec h			;09e8
	and l			;09e9
	and l			;09ea
	nop			;09eb
	rst 38h			;09ec
	adc a,d			;09ed
	ld c,d			;09ee
	inc bc			;09ef
	ld hl,(0eb93h)		;09f0
	nop			;09f3
	rst 38h			;09f4
	ld e,(hl)		;09f5
	ld d,b			;09f6
	ld e,(hl)		;09f7
	ld b,d			;09f8
	ld b,d			;09f9
	sbc a,000h		;09fa
	rst 38h			;09fc
	nop			;09fd
	nop			;09fe
	ld bc,l0400h+2		;09ff
	ex af,af'		;0a02
	djnz l09e5h		;0a03
sub_0a05h:
	inc b			;0a05
l0a06h:
	nop			;0a06
	add a,h			;0a07
	ld h,b			;0a08
	ret p			;0a09
	ret p			;0a0a
	ld h,b			;0a0b
	rlca			;0a0c
	nop			;0a0d
	adc a,d			;0a0e
	rst 38h			;0a0f
	ld a,d			;0a10
	ld b,d			;0a11
	ld a,d			;0a12
	ld a,(bc)		;0a13
	ld a,(bc)		;0a14
	ld a,d			;0a15
	nop			;0a16
	rst 38h			;0a17
	ret p			;0a18
	dec b			;0a19
	sub b			;0a1a
	adc a,l			;0a1b
	nop			;0a1c
	call m,sub_0407h	;0a1d
	rlca			;0a20
	nop			;0a21
	nop			;0a22
	rlca			;0a23
	nop			;0a24
	rra			;0a25
	cp l			;0a26
	dec h			;0a27
	cp l			;0a28
	inc bc			;0a29
	and l			;0a2a
	sub b			;0a2b
	nop			;0a2c
	rst 38h			;0a2d
l0a2eh:
	call pe,0e92ah		;0a2e
	ld c,c			;0a31
	add hl,hl		;0a32
	cpl			;0a33
	nop			;0a34
	rst 38h			;0a35
	nop			;0a36
	nop			;0a37
	inc c			;0a38
	ld e,01eh		;0a39
	inc c			;0a3b
	ld b,000h		;0a3c
l0a3eh:
	add a,l			;0a3e
	ld h,b			;0a3f
	ret p			;0a40
	ret p			;0a41
	ld h,b			;0a42
	inc e			;0a43
	inc bc			;0a44
	ld a,081h		;0a45
	inc e			;0a47
	ld b,000h		;0a48
	add a,e			;0a4a
	rlca			;0a4b
	ld a,b			;0a4c
	add a,b			;0a4d
	rlca			;0a4e
	nop			;0a4f
	add a,l			;0a50
	rlca			;0a51
	ld a,b			;0a52
	add a,b			;0a53
	ld a,b			;0a54
	add a,b			;0a55
	ld a,(bc)		;0a56
	nop			;0a57
	add a,a			;0a58
	jr l0a97h		;0a59
	inc a			;0a5b
	jr l0a3eh		;0a5c
	ld h,b			;0a5e
	and b			;0a5f
	add hl,bc		;0a60
	nop			;0a61
	sub c			;0a62
	ex af,af'		;0a63
	inc b			;0a64
	ld (bc),a		;0a65
	ld bc,04080h		;0a66
	jr nz,$+18		;0a69
	ex af,af'		;0a6b
	inc b			;0a6c
	ld (bc),a		;0a6d
	ld bc,04080h		;0a6e
	jr z,l0a8bh		;0a71
	jr c,l0a7ah		;0a73
	nop			;0a75
	adc a,e			;0a76
	ld bc,00c02h		;0a77
l0a7ah:
	djnz l0adch		;0a7a
	add a,b			;0a7c
	inc bc			;0a7d
	inc b			;0a7e
	jr l0aa1h		;0a7f
	ret nz			;0a81
	inc bc			;0a82
	nop			;0a83
	add a,e			;0a84
	jr nc,l0ac7h		;0a85
	add a,b			;0a87
	ld a,(bc)		;0a88
	nop			;0a89
	add a,(hl)		;0a8a
l0a8bh:
	ld bc,l0806h		;0a8b
	inc (hl)		;0a8e
	ld b,b			;0a8f
	add a,b			;0a90
	rlca			;0a91
	nop			;0a92
	inc b			;0a93
	add a,b			;0a94
	inc b			;0a95
	nop			;0a96
l0a97h:
	inc b			;0a97
	ld bc,l0002h		;0a98
	add a,c			;0a9b
	rst 38h			;0a9c
	rrca			;0a9d
	add a,b			;0a9e
	add a,c			;0a9f
	rst 38h			;0aa0
l0aa1h:
	rlca			;0aa1
	nop			;0aa2
	add a,c			;0aa3
	inc a			;0aa4
	rlca			;0aa5
	nop			;0aa6
	adc a,b			;0aa7
	inc a			;0aa8
	ld l,(hl)		;0aa9
	inc l			;0aaa
	ld e,07ch		;0aab
	inc (hl)		;0aad
	halt			;0aae
	inc a			;0aaf
	nop			;0ab0
	inc b			;0ab1
	nop			;0ab2
	sub h			;0ab3
	ld h,b			;0ab4
	ret p			;0ab5
	ret p			;0ab6
	ld h,b			;0ab7
	nop			;0ab8
	nop			;0ab9
	inc c			;0aba
	ld e,01eh		;0abb
	inc c			;0abd
	nop			;0abe
	rlca			;0abf
	nop			;0ac0
	rlca			;0ac1
	ld a,b			;0ac2
	add a,b			;0ac3
	jr l0b02h		;0ac4
	inc a			;0ac6
l0ac7h:
	jr l0ac9h		;0ac7
l0ac9h:
	adc a,d			;0ac9
	defb 0edh ;next byte illegal after ed	;0aca
	jp c,0babah		;0acb
	ld (hl),l		;0ace
	ld (hl),l		;0acf
	push af			;0ad0
	dec d			;0ad1
	dec a			;0ad2
	ld a,d			;0ad3
	inc bc			;0ad4
	ld (hl),h		;0ad5
	or e			;0ad6
	inc (hl)		;0ad7
	jr c,$+26		;0ad8
	inc bc			;0ada
	rlca			;0adb
l0adch:
	rrca			;0adc
	rra			;0add
	ccf			;0ade
	ld bc,0f674h		;0adf
	inc b			;0ae2
	rra			;0ae3
	add hl,sp		;0ae4
	rla			;0ae5
	cpl			;0ae6
	ld e,h			;0ae7
	ld a,(04f54h)		;0ae8
	ccf			;0aeb
	rst 28h			;0aec
	ld h,01fh		;0aed
	add hl,de		;0aef
	ld hl,08204h		;0af0
	ret po			;0af3
	ret m			;0af4
	cp 03fh			;0af5
	rrca			;0af7
	ld e,(hl)		;0af8
	sub e			;0af9
	rlca			;0afa
	inc bc			;0afb
	ld bc,00820h		;0afc
l0affh:
	call z,02960h		;0aff
l0b02h:
	defb 0fdh,03eh,08fh ;illegal sequence	;0b02
	rst 0			;0b05
	ld h,e			;0b06
	dec a			;0b07
l0b08h:
	rra			;0b08
	inc bc			;0b09
	nop			;0b0a
	add a,e			;0b0b
	add a,0e6h		;0b0c
	jp po,0f305h		;0b0e
	add a,l			;0b11
	sbc a,b			;0b12
	adc a,b			;0b13
	adc a,b			;0b14
	ld b,b			;0b15
	ld b,b			;0b16
	inc bc			;0b17
	and b			;0b18
	inc bc			;0b19
	xor 002h		;0b1a
	sbc a,003h		;0b1c
	cp (hl)			;0b1e
	sbc a,e			;0b1f
	nop			;0b20
	add a,e			;0b21
	nop			;0b22
	jr nz,l0b25h		;0b23
l0b25h:
	ld (de),a		;0b25
	ld (07262h),a		;0b26
	add a,b			;0b29
	cp l			;0b2a
	jr l0b51h		;0b2b
	add a,b			;0b2d
	inc b			;0b2e
	inc e			;0b2f
	ex af,af'		;0b30
	nop			;0b31
	jr nz,l0b3ch		;0b32
	nop			;0b34
	nop			;0b35
	ld b,b			;0b36
	add a,b			;0b37
	inc b			;0b38
	djnz l0b3ch		;0b39
	inc b			;0b3b
l0b3ch:
	nop			;0b3c
	add a,l			;0b3d
	ex af,af'		;0b3e
	nop			;0b3f
	nop			;0b40
	ld (bc),a		;0b41
	ex af,af'		;0b42
	inc b			;0b43
	nop			;0b44
	nop			;0b45
	ld (bc),a		;0b46
	ld sp,hl		;0b47
	adc a,(hl)		;0b48
	sbc a,c			;0b49
	xor c			;0b4a
	or b			;0b4b
	cp h			;0b4c
	call z,0d070h		;0b4d
	ret nc			;0b50
l0b51h:
	ret pe			;0b51
	call p,0faf4h		;0b52
	jp m,l03fdh		;0b55
	jr c,l0affh		;0b58
	inc e			;0b5a
	ld c,003h		;0b5b
	ld (hl),b		;0b5d
	jp z,l0000h		;0b5e
	ld bc,04000h		;0b61
	jr nz,l0ba8h		;0b64
	add a,00bh		;0b66
	ld (hl),042h		;0b68
	jr z,l0b7ch		;0b6a
	dec d			;0b6c
	ld bc,05e02h		;0b6d
	and 0fah		;0b70
	ld a,h			;0b72
	ld e,006h		;0b73
	ret po			;0b75
	inc a			;0b76
	ret z			;0b77
	inc c			;0b78
	ld c,01fh		;0b79
	inc a			;0b7b
l0b7ch:
	ret p			;0b7c
	ld a,(bc)		;0b7d
	djnz l0b84h		;0b7e
l0b80h:
	ld bc,l0303h		;0b80
	add a,c			;0b83
l0b84h:
	ld (bc),a		;0b84
	nop			;0b85
	sub b			;0b86
	ld (bc),a		;0b87
	ret p			;0b88
	call pe,0b9d9h		;0b89
	ld (hl),e		;0b8c
	di			;0b8d
	rst 20h			;0b8e
	inc a			;0b8f
	ld e,086h		;0b90
	ld b,b			;0b92
	or b			;0b93
	call c,0f7eeh		;0b94
	inc b			;0b97
	ld a,(hl)		;0b98
	xor h			;0b99
	ld a,l			;0b9a
	dec a			;0b9b
	dec sp			;0b9c
	dec sp			;0b9d
	add a,b			;0b9e
	add a,b			;0b9f
	ret nz			;0ba0
	ret po			;0ba1
	ld (hl),b		;0ba2
	cp b			;0ba3
	call c,sub_08efh	;0ba4
	nop			;0ba7
l0ba8h:
	daa			;0ba8
	ld d,a			;0ba9
	dec d			;0baa
	djnz l0bb8h		;0bab
	ld (bc),a		;0bad
	inc b			;0bae
	ld d,b			;0baf
	jp nz,0fe2dh		;0bb0
	or a			;0bb3
	inc a			;0bb4
	jp po,0381ch		;0bb5
l0bb8h:
	pop af			;0bb8
	ld b,d			;0bb9
	sub b			;0bba
	ld bc,l1d05h		;0bbb
	ld (bc),a		;0bbe
	dec b			;0bbf
	dec d			;0bc0
	dec (hl)		;0bc1
	ld h,l			;0bc2
	ex de,hl		;0bc3
	ex de,hl		;0bc4
	rlc b			;0bc5
	add a,(hl)		;0bc7
	nop			;0bc8
	add a,b			;0bc9
	ret po			;0bca
	ld (hl),b		;0bcb
	ld a,a			;0bcc
	ld a,a			;0bcd
	inc bc			;0bce
	cp a			;0bcf
	add a,d			;0bd0
	ld a,b			;0bd1
	ret po			;0bd2
	ld a,(bc)		;0bd3
	nop			;0bd4
	add a,e			;0bd5
	adc a,b			;0bd6
	rst 38h			;0bd7
	ret m			;0bd8
	inc e			;0bd9
	nop			;0bda
	add a,d			;0bdb
	ret nz			;0bdc
	ld (hl),b		;0bdd
	dec c			;0bde
	nop			;0bdf
	add a,h			;0be0
	or b			;0be1
	call m,07f7fh		;0be2
	inc bc			;0be5
	cp a			;0be6
	add a,e			;0be7
	ld a,a			;0be8
	ld a,b			;0be9
	ret po			;0bea
	ex af,af'		;0beb
	nop			;0bec
	add a,l			;0bed
	add a,b			;0bee
	jr l0b80h		;0bef
	call m,sub_1ce0h	;0bf1
	nop			;0bf4
	add a,d			;0bf5
	ret po			;0bf6
	ld (hl),b		;0bf7
	add hl,bc		;0bf8
	nop			;0bf9
	add a,(hl)		;0bfa
	add a,b			;0bfb
	ret po			;0bfc
	ld (hl),b		;0bfd
	rst 38h			;0bfe
	rra			;0bff
	ld bc,l000bh+2		;0c00
	add a,e			;0c03
	add a,b			;0c04
	ret p			;0c05
l0c06h:
	rst 38h			;0c06
	ld c,000h		;0c07
	add a,(hl)		;0c09
	ret po			;0c0a
	cp 07fh			;0c0b
	ccf			;0c0d
	ld e,018h		;0c0e
	inc c			;0c10
	nop			;0c11
	add a,d			;0c12
	call m,sub_07f0h	;0c13
	nop			;0c16
	nop			;0c17
	and b			;0c18
	sub a			;0c19
	call nc,094b7h		;0c1a
	sub h			;0c1d
	sub a			;0c1e
	nop			;0c1f
	rst 38h			;0c20
	and d			;0c21
	ld (hl),02ah		;0c22
	ld (0a222h),hl		;0c24
	nop			;0c27
	rst 38h			;0c28
	rst 30h			;0c29
	add a,h			;0c2a
	rst 20h			;0c2b
	add a,b			;0c2c
	add a,b			;0c2d
	rst 30h			;0c2e
	nop			;0c2f
	rst 38h			;0c30
	xor a			;0c31
	jr z,$-79		;0c32
	and c			;0c34
	and c			;0c35
	xor a			;0c36
	nop			;0c37
	rst 38h			;0c38
	nop			;0c39
	jr nz,l0cach		;0c3a
	nop			;0c3c
	ld (bc),a		;0c3d
	nop			;0c3e
	ld c,090h		;0c3f
	ex af,af'		;0c41
	ld h,b			;0c42
	add hl,bc		;0c43
	add a,b			;0c44
	add a,d			;0c45
	ld h,b			;0c46
	sub b			;0c47
	dec b			;0c48
	add a,b			;0c49
	adc a,c			;0c4a
	ld h,b			;0c4b
	sub b			;0c4c
	sub b			;0c4d
	add a,b			;0c4e
	add a,b			;0c4f
	ld h,b			;0c50
	add a,b			;0c51
l0c52h:
	sub b			;0c52
	sub (hl)		;0c53
	inc b			;0c54
	ld h,b			;0c55
	dec b			;0c56
	sub b			;0c57
	inc b			;0c58
	sbc a,b			;0c59
	add a,d			;0c5a
	add a,(hl)		;0c5b
	sub (hl)		;0c5c
	rlca			;0c5d
	sub b			;0c5e
	ld (bc),a		;0c5f
	sub (hl)		;0c60
	ld (bc),a		;0c61
	sbc a,b			;0c62
	inc b			;0c63
	sub (hl)		;0c64
	ld (bc),a		;0c65
	sbc a,b			;0c66
	add a,l			;0c67
	sbc a,c			;0c68
	sub (hl)		;0c69
	sub (hl)		;0c6a
	sbc a,c			;0c6b
	sbc a,c			;0c6c
	ld b,096h		;0c6d
	add a,e			;0c6f
	sbc a,c			;0c70
	sub (hl)		;0c71
	sub (hl)		;0c72
	inc bc			;0c73
l0c74h:
	sbc a,b			;0c74
	ld b,096h		;0c75
	dec b			;0c77
	sub b			;0c78
	ld (bc),a		;0c79
	sbc a,b			;0c7a
	add a,c			;0c7b
	ld h,b			;0c7c
	inc b			;0c7d
	sub b			;0c7e
	add a,c			;0c7f
	add a,b			;0c80
	inc bc			;0c81
	ld h,b			;0c82
	dec b			;0c83
	add a,b			;0c84
	add a,d			;0c85
	sub b			;0c86
	ld h,b			;0c87
	inc bc			;0c88
	sub b			;0c89
	ex af,af'		;0c8a
	sub (hl)		;0c8b
	inc bc			;0c8c
	sbc a,b			;0c8d
	inc bc			;0c8e
	sub (hl)		;0c8f
	inc b			;0c90
	sbc a,b			;0c91
	add a,c			;0c92
	add a,(hl)		;0c93
	inc bc			;0c94
	sub (hl)		;0c95
	ld (bc),a		;0c96
	sub b			;0c97
	inc b			;0c98
	sbc a,b			;0c99
	add a,(hl)		;0c9a
	add a,(hl)		;0c9b
	sub (hl)		;0c9c
	sub b			;0c9d
	add a,b			;0c9e
	add a,b			;0c9f
	ld h,b			;0ca0
	inc bc			;0ca1
	sub b			;0ca2
	ld (bc),a		;0ca3
l0ca4h:
	sub (hl)		;0ca4
	rlca			;0ca5
	add a,b			;0ca6
	inc b			;0ca7
	sub b			;0ca8
	inc bc			;0ca9
	add a,b			;0caa
	ld (bc),a		;0cab
l0cach:
	sub b			;0cac
	rlca			;0cad
	add a,b			;0cae
	add a,d			;0caf
	sub (hl)		;0cb0
	add a,b			;0cb1
	inc b			;0cb2
	ld h,b			;0cb3
l0cb4h:
	add a,d			;0cb4
	add a,b			;0cb5
	ld h,b			;0cb6
	inc bc			;0cb7
	sbc a,b			;0cb8
	add a,c			;0cb9
	add a,b			;0cba
	ex af,af'		;0cbb
	ld h,b			;0cbc
	add a,h			;0cbd
	add a,b			;0cbe
	sub b			;0cbf
	sub b			;0cc0
	sbc a,b			;0cc1
	djnz l0ca4h		;0cc2
	add a,c			;0cc4
	ret p			;0cc5
	rla			;0cc6
	ret po			;0cc7
	dec b			;0cc8
	ret p			;0cc9
	ld de,l05e0h		;0cca
	ld d,b			;0ccd
	add a,l			;0cce
	ret po			;0ccf
	ret p			;0cd0
	ret p			;0cd1
	call p,sub_10f4h	;0cd2
	ld b,b			;0cd5
	nop			;0cd6
	rlca			;0cd7
	ret nz			;0cd8
	add a,c			;0cd9
	jp nz,0c004h		;0cda
	inc b			;0cdd
	jp nz,0c007h		;0cde
	add a,c			;0ce1
	jp nz,l0500h		;0ce2
	ret nz			;0ce5
	ex af,af'		;0ce6
	jp nz,0c382h		;0ce7
	ld (0c007h),a		;0cea
	ld a,(bc)		;0ced
	jp nz,03208h		;0cee
	nop			;0cf1
	djnz l0cb4h		;0cf2
	adc a,b			;0cf4
	jp nz,0c020h		;0cf5
	jp nz,0c0c2h		;0cf8
	ret nz			;0cfb
	jp nz,0c003h		;0cfc
	add a,c			;0cff
	jp nz,0c004h		;0d00
	ld (bc),a		;0d03
	jp 0c202h		;0d04
	inc b			;0d07
	ret nz			;0d08
	rlca			;0d09
	jp nz,0c383h		;0d0a
l0d0dh:
	ld (l0832h),a		;0d0d
	jp nz,0320eh		;0d10
	add a,e			;0d13
	ret po			;0d14
	ret nz			;0d15
	jp 03204h		;0d16
	ex af,af'		;0d19
	jp nz,0c381h		;0d1a
	nop			;0d1d
	djnz $-62		;0d1e
	ex af,af'		;0d20
	jp nz,05088h		;0d21
	ld (hl),b		;0d24
	ret p			;0d25
	or b			;0d26
	jr nc,l0d5bh		;0d27
	jp 007c2h		;0d29
	ld (0c211h),a		;0d2c
	nop			;0d2f
	add a,e			;0d30
	or b			;0d31
	ret nz			;0d32
	jp 03204h		;0d33
	or c			;0d36
	jp nz,0c2c3h		;0d37
	ret nz			;0d3a
	add a,b			;0d3b
	sub b			;0d3c
	and b			;0d3d
	or b			;0d3e
	or b			;0d3f
	ld (0c2c2h),a		;0d40
	ret nz			;0d43
	ret nz			;0d44
	add a,b			;0d45
	and b			;0d46
	or b			;0d47
	jp nz,0c0c0h		;0d48
	add a,b			;0d4b
	sub b			;0d4c
	and b			;0d4d
	or b			;0d4e
	or b			;0d4f
	jp 0c0c2h		;0d50
	ld d,b			;0d53
	ld (hl),b		;0d54
	ret po			;0d55
	ret p			;0d56
	ret po			;0d57
	ld (0c2c2h),a		;0d58
l0d5bh:
	ret nz			;0d5b
	ret nz			;0d5c
	ld d,b			;0d5d
	ret po			;0d5e
	ret p			;0d5f
	jp nz,0c0c0h		;0d60
	ld d,b			;0d63
	ld (hl),b		;0d64
	ret p			;0d65
	ret p			;0d66
	ret po			;0d67
	nop			;0d68
	ex af,af'		;0d69
	ret nz			;0d6a
	ex af,af'		;0d6b
	jp nz,05088h		;0d6c
	ld (hl),b		;0d6f
	ret p			;0d70
	or b			;0d71
	jr nc,l0da6h		;0d72
	jp 007c2h		;0d74
	ld (0c211h),a		;0d77
	add a,d			;0d7a
	jr nz,l0dadh		;0d7b
	ld b,020h		;0d7d
	nop			;0d7f
	jr nz,$-30		;0d80
	rlca			;0d82
	ret p			;0d83
	add a,c			;0d84
	call p,0f007h		;0d85
	add a,e			;0d88
	call p,0f0f0h		;0d89
	ld b,0f4h		;0d8c
	nop			;0d8e
	add hl,bc		;0d8f
	ret nz			;0d90
	ld b,0c2h		;0d91
	adc a,b			;0d93
	jp 07050h		;0d94
	ret p			;0d97
	or b			;0d98
	jr nc,l0dcdh		;0d99
	jp 0c208h		;0d9b
	add a,c			;0d9e
	jp 0c206h		;0d9f
	add a,c			;0da2
	jp 0c208h		;0da3
l0da6h:
	add a,c			;0da6
	ret nz			;0da7
	ex af,af'		;0da8
	jr nz,l0dabh		;0da9
l0dabh:
	inc b			;0dab
	ret p			;0dac
l0dadh:
	inc b			;0dad
	call p,0e081h		;0dae
	inc bc			;0db1
	call po,0e004h		;0db2
	dec b			;0db5
	call p,0fe03h		;0db6
	inc bc			;0db9
	ret p			;0dba
	ex af,af'		;0dbb
	or 002h			;0dbc
	and 007h		;0dbe
sub_0dc0h:
	ret po			;0dc0
	ex af,af'		;0dc1
	ld h,b			;0dc2
	inc b			;0dc3
	ret p			;0dc4
	inc bc			;0dc5
	ret po			;0dc6
	ex af,af'		;0dc7
	ld h,b			;0dc8
	ld (bc),a		;0dc9
	ret po			;0dca
	inc bc			;0dcb
	ret p			;0dcc
l0dcdh:
	nop			;0dcd
	ld (bc),a		;0dce
	jr nz,l0dd7h		;0dcf
	ret nz			;0dd1
	ld (bc),a		;0dd2
	jp 0c202h		;0dd3
	inc d			;0dd6
l0dd7h:
	ret nz			;0dd7
	add a,c			;0dd8
	ld (0c203h),a		;0dd9
	ld (bc),a		;0ddc
	ret nz			;0ddd
	ld (bc),a		;0dde
	sub b			;0ddf
	ld (bc),a		;0de0
	jp nz,0c003h		;0de1
	add a,l			;0de4
	add a,b			;0de5
	sub b			;0de6
	sub b			;0de7
	jp l03c2h		;0de8
	ret nz			;0deb
	inc de			;0dec
	sub b			;0ded
	ex af,af'		;0dee
	ld h,b			;0def
	nop			;0df0
	add hl,bc		;0df1
	ret nz			;0df2
	adc a,b			;0df3
	jp nz,0c2c3h		;0df4
	jp nz,0c2c3h		;0df7
	ret nz			;0dfa
	ret nz			;0dfb
	ld b,0c2h		;0dfc
	inc bc			;0dfe
	ret nz			;0dff
	add a,h			;0e00
	jr nz,$+52		;0e01
l0e03h:
	jr nz,l0e25h		;0e03
	inc bc			;0e05
	ret nz			;0e06
	ld b,020h		;0e07
	add a,h			;0e09
	jp nz,0c090h		;0e0a
	jp 03204h		;0e0d
	add a,c			;0e10
	jp nz,0900ch		;0e11
	inc b			;0e14
	add a,b			;0e15
	inc b			;0e16
	sub b			;0e17
	inc b			;0e18
	add a,b			;0e19
	ld (bc),a		;0e1a
	sub b			;0e1b
	ld b,080h		;0e1c
	dec b			;0e1e
	ld h,b			;0e1f
	inc bc			;0e20
	add a,b			;0e21
	inc bc			;0e22
	ld h,b			;0e23
	inc b			;0e24
l0e25h:
	add a,b			;0e25
	add a,c			;0e26
	sub b			;0e27
	nop			;0e28
	inc de			;0e29
	ret nz			;0e2a
	add a,c			;0e2b
	jr nz,$+6		;0e2c
	ret nz			;0e2e
	ld (bc),a		;0e2f
	jp nz,0c006h		;0e30
	inc bc			;0e33
	jp nz,03203h		;0e34
	add a,c			;0e37
	jp nz,0c004h		;0e38
	inc de			;0e3b
	sub b			;0e3c
	dec c			;0e3d
	add a,b			;0e3e
	add a,c			;0e3f
	sbc a,b			;0e40
	dec b			;0e41
	add a,b			;0e42
	inc bc			;0e43
	sub b			;0e44
	ex af,af'		;0e45
	add a,b			;0e46
	inc b			;0e47
	ld h,b			;0e48
	inc b			;0e49
	add a,b			;0e4a
	dec bc			;0e4b
	sub b			;0e4c
	add hl,bc		;0e4d
	add a,b			;0e4e
	nop			;0e4f
	dec bc			;0e50
	ret nz			;0e51
	add a,c			;0e52
	jp nz,0c007h		;0e53
	ld (bc),a		;0e56
	jp nz,0c002h		;0e57
	add a,c			;0e5a
	jp nz,0c008h		;0e5b
	inc e			;0e5e
	sub b			;0e5f
	rla			;0e60
	add a,b			;0e61
	add a,c			;0e62
	sbc a,b			;0e63
	dec bc			;0e64
	add a,b			;0e65
	ld (bc),a		;0e66
	sbc a,b			;0e67
	rlca			;0e68
	add a,b			;0e69
	ld (bc),a		;0e6a
	sub b			;0e6b
	ld b,080h		;0e6c
	dec b			;0e6e
	ld h,b			;0e6f
	inc bc			;0e70
	add a,b			;0e71
l0e72h:
	inc bc			;0e72
	ld h,b			;0e73
	inc b			;0e74
	add a,b			;0e75
	dec b			;0e76
	sub b			;0e77
	inc b			;0e78
	add a,b			;0e79
	ld (bc),a		;0e7a
	sub b			;0e7b
	ld b,080h		;0e7c
	nop			;0e7e
	add a,c			;0e7f
	sub b			;0e80
	inc bc			;0e81
	add a,b			;0e82
	ld b,060h		;0e83
	inc bc			;0e85
	add a,b			;0e86
	ld b,090h		;0e87
	inc b			;0e89
	add a,b			;0e8a
	ld (bc),a		;0e8b
	ld h,b			;0e8c
	inc bc			;0e8d
	add a,b			;0e8e
	dec b			;0e8f
	sub b			;0e90
	inc b			;0e91
	add a,b			;0e92
	inc bc			;0e93
	ld h,b			;0e94
	add a,c			;0e95
	sub b			;0e96
	inc b			;0e97
	add a,b			;0e98
	inc bc			;0e99
	ld h,b			;0e9a
	ld (bc),a		;0e9b
	add a,b			;0e9c
	inc bc			;0e9d
	sub b			;0e9e
	ld b,080h		;0e9f
	rlca			;0ea1
	sub b			;0ea2
	inc b			;0ea3
	sbc a,b			;0ea4
	ld (bc),a		;0ea5
	ld h,b			;0ea6
	add a,c			;0ea7
	ret nz			;0ea8
	inc b			;0ea9
	ld h,b			;0eaa
	ld (bc),a		;0eab
	add a,b			;0eac
	add a,c			;0ead
	sub b			;0eae
	nop			;0eaf
	djnz l0e72h		;0eb0
	inc bc			;0eb2
	jp nz,0c005h		;0eb3
	inc sp			;0eb6
	add a,b			;0eb7
	inc bc			;0eb8
	sbc a,b			;0eb9
	inc bc			;0eba
	add a,b			;0ebb
	inc bc			;0ebc
	sub b			;0ebd
	inc b			;0ebe
	add a,b			;0ebf
	rlca			;0ec0
	sub b			;0ec1
	dec b			;0ec2
	add a,b			;0ec3
	rlca			;0ec4
	sub b			;0ec5
	dec b			;0ec6
	add a,b			;0ec7
	add a,e			;0ec8
	sub b			;0ec9
l0ecah:
	sbc a,b			;0eca
	sbc a,b			;0ecb
	dec b			;0ecc
	add a,b			;0ecd
l0eceh:
	ld b,090h		;0ece
	ld (bc),a		;0ed0
	add a,b			;0ed1
	add a,c			;0ed2
	sbc a,b			;0ed3
	ld b,080h		;0ed4
	add a,c			;0ed6
	sbc a,b			;0ed7
	nop			;0ed8
	dec a			;0ed9
	ld h,b			;0eda
	inc b			;0edb
	add a,b			;0edc
	rlca			;0edd
	ld h,b			;0ede
	ld (bc),a		;0edf
	add a,b			;0ee0
	ld b,060h		;0ee1
	ld (bc),a		;0ee3
	add a,b			;0ee4
	inc c			;0ee5
	ld h,b			;0ee6
	ld (bc),a		;0ee7
	add a,b			;0ee8
	add a,c			;0ee9
	add a,(hl)		;0eea
	dec bc			;0eeb
	ld h,b			;0eec
	dec bc			;0eed
	sbc a,b			;0eee
	add a,c			;0eef
	add a,(hl)		;0ef0
	nop			;0ef1
	ld (de),a		;0ef2
	sub b			;0ef3
	add hl,hl		;0ef4
	add a,b			;0ef5
	add a,c			;0ef6
	sbc a,b			;0ef7
	rla			;0ef8
	add a,b			;0ef9
	rlca			;0efa
	sbc a,b			;0efb
	dec b			;0efc
	add a,b			;0efd
	dec bc			;0efe
	ld h,b			;0eff
	inc bc			;0f00
	add a,b			;0f01
	ld a,(bc)		;0f02
l0f03h:
	ld h,b			;0f03
	add a,d			;0f04
	add a,b			;0f05
	sbc a,b			;0f06
l0f07h:
	ld b,080h		;0f07
	ld (bc),a		;0f09
	sbc a,b			;0f0a
	rlca			;0f0b
	add a,b			;0f0c
	nop			;0f0d
	inc bc			;0f0e
	add a,b			;0f0f
	dec b			;0f10
	sub b			;0f11
	ld h,b			;0f12
	ld h,b			;0f13
	nop			;0f14
	dec de			;0f15
	add a,b			;0f16
	inc bc			;0f17
	sbc a,b			;0f18
	rrca			;0f19
	add a,b			;0f1a
	inc c			;0f1b
	ld h,b			;0f1c
	inc bc			;0f1d
	sub (hl)		;0f1e
	add hl,bc		;0f1f
	ld h,b			;0f20
	add a,l			;0f21
	add a,(hl)		;0f22
	sub (hl)		;0f23
	sub (hl)		;0f24
	sbc a,b			;0f25
	sbc a,b			;0f26
	dec b			;0f27
	add a,b			;0f28
	add a,c			;0f29
	ld h,b			;0f2a
	inc bc			;0f2b
	sub b			;0f2c
	ld b,080h		;0f2d
	ld (bc),a		;0f2f
	sbc a,b			;0f30
	add a,c			;0f31
	add a,(hl)		;0f32
	inc b			;0f33
	add a,b			;0f34
	adc a,b			;0f35
	xor b			;0f36
	cp b			;0f37
	or 0f6h			;0f38
	cp b			;0f3a
	xor b			;0f3b
	ld h,b			;0f3c
	ld h,b			;0f3d
	nop			;0f3e
	ld a,a			;0f3f
	ld h,b			;0f40
	add a,c			;0f41
	ld h,b			;0f42
	nop			;0f43
	jr c,l0fb6h		;0f44
	rlca			;0f46
	jr nc,l0ecah		;0f47
	ld (hl),b		;0f49
	rlca			;0f4a
	jr nc,l0eceh		;0f4b
	ld (hl),b		;0f4d
	rlca			;0f4e
	sub b			;0f4f
	add a,c			;0f50
	ld (hl),b		;0f51
	rlca			;0f52
	sub b			;0f53
	add a,c			;0f54
	ld (hl),b		;0f55
	ld b,090h		;0f56
	add hl,bc		;0f58
	ld (hl),b		;0f59
	ld b,060h		;0f5a
	ld (bc),a		;0f5c
	add a,b			;0f5d
	ld (bc),a		;0f5e
	ld h,b			;0f5f
	inc bc			;0f60
	add a,b			;0f61
	jr nz,l0fc4h		;0f62
	inc b			;0f64
	ld (hl),b		;0f65
	ld b,h			;0f66
	ret nz			;0f67
	ld b,060h		;0f68
	ld l,040h		;0f6a
	ld (bc),a		;0f6c
	ld d,h			;0f6d
	inc b			;0f6e
	ld (hl),l		;0f6f
	ld (bc),a		;0f70
	ld d,h			;0f71
	nop			;0f72
	rrca			;0f73
	jr nz,l0f7bh		;0f74
	ld h,b			;0f76
	inc b			;0f77
	jr nz,l0f7ah		;0f78
l0f7ah:
	ex af,af'		;0f7a
l0f7bh:
	ret po			;0f7b
	ex af,af'		;0f7c
	ret p			;0f7d
	ld b,0e0h		;0f7e
	add a,d			;0f80
	ret p			;0f81
	call p,04006h		;0f82
	ld (bc),a		;0f85
l0f86h:
	ld d,b			;0f86
	ld (bc),a		;0f87
	ld d,h			;0f88
	dec b			;0f89
	ld b,b			;0f8a
	add a,d			;0f8b
	ld d,b			;0f8c
	ld b,b			;0f8d
	inc b			;0f8e
	ld d,b			;0f8f
	add a,e			;0f90
	ld d,h			;0f91
	ld b,b			;0f92
	ld b,b			;0f93
	inc bc			;0f94
	ret po			;0f95
	ld (bc),a		;0f96
	ld b,b			;0f97
	inc bc			;0f98
	ld d,b			;0f99
	ld (bc),a		;0f9a
	ret p			;0f9b
	add a,(hl)		;0f9c
l0f9dh:
	or b			;0f9d
	and b			;0f9e
	sub b			;0f9f
	add a,b			;0fa0
	sub b			;0fa1
	and b			;0fa2
	nop			;0fa3
	djnz l0f86h		;0fa4
	ex af,af'		;0fa6
	call p,0400eh		;0fa7
	add a,d			;0faa
	ld d,b			;0fab
	ret po			;0fac
	ld b,040h		;0fad
	add a,h			;0faf
	sub b			;0fb0
	ret p			;0fb1
	ld d,b			;0fb2
	ld b,b			;0fb3
	inc b			;0fb4
	ld d,b			;0fb5
l0fb6h:
	inc b			;0fb6
	ld b,b			;0fb7
	ld b,050h		;0fb8
	nop			;0fba
	djnz l0f9dh		;0fbb
	ld b,0f0h		;0fbd
	ld b,040h		;0fbf
	ld (bc),a		;0fc1
	ld d,b			;0fc2
	add hl,bc		;0fc3
l0fc4h:
	ld b,b			;0fc4
	add a,c			;0fc5
	ld d,b			;0fc6
	inc bc			;0fc7
	call p,0f003h		;0fc8
	ld (bc),a		;0fcb
	ld b,b			;0fcc
	sub b			;0fcd
	add a,b			;0fce
	ret p			;0fcf
	push af			;0fd0
	call p,0f0f0h		;0fd1
	ld b,b			;0fd4
	ld b,b			;0fd5
	ret po			;0fd6
	ret p			;0fd7
	jr nz,$+114		;0fd8
	jr nz,l0ffch		;0fda
	ld (hl),b		;0fdc
	jr nz,l0fdfh		;0fdd
l0fdfh:
	add a,c			;0fdf
	ld b,b			;0fe0
	rlca			;0fe1
	ret p			;0fe2
	inc bc			;0fe3
	ret po			;0fe4
	dec b			;0fe5
	ret p			;0fe6
	djnz $-30		;0fe7
	dec d			;0fe9
	ld b,b			;0fea
	adc a,e			;0feb
	jr nz,l105eh		;0fec
	ld (hl),b		;0fee
	jr nz,l1061h		;0fef
	jr nz,$+34		;0ff1
	ld (hl),b		;0ff3
	jr nz,$+34		;0ff4
	ld (hl),b		;0ff6
	nop			;0ff7
	nop			;0ff8
	jr nz,l1029h		;0ff9
	ld (hl),c		;0ffb
l0ffch:
	ld hl,06927h		;0ffc
	ld h,000h		;0fff
	jr nz,$+129		;1001
	ld hl,02022h		;1003
	jr nz,$+33		;1006
	nop			;1008
	ld a,a			;1009
	ld bc,02402h		;100a
	jr l1017h		;100d
	inc b			;100f
	dec b			;1010
	ld (0227fh),hl		;1011
	ld (l0400h+2),hl	;1014
l1017h:
	jr l1019h		;1017
l1019h:
	dec b			;1019
	ld (de),a		;101a
	jr z,l1061h		;101b
	ld (bc),a		;101d
	ld bc,l0000h		;101e
	ld a,a			;1021
	ld bc,l0101h		;1022
	ld bc,l017fh		;1025
	ld a,(bc)		;1028
l1029h:
	dec a			;1029
	ld (l0c52h),hl		;102a
	inc b			;102d
	ex af,af'		;102e
	jr nc,l1031h		;102f
l1031h:
	inc a			;1031
	nop			;1032
	ld a,h			;1033
	ld (bc),a		;1034
	ld (bc),a		;1035
	inc b			;1036
	jr l103bh		;1037
	ld e,l			;1039
	ld b,h			;103a
l103bh:
	ld e,(hl)		;103b
	ld b,h			;103c
	ld c,h			;103d
	ld d,(hl)		;103e
	inc l			;103f
	dec b			;1040
	ld (de),a		;1041
	inc d			;1042
	ld a,a			;1043
	ex af,af'		;1044
	djnz l1057h		;1045
	inc c			;1047
	dec b			;1048
	jr nz,l1071h		;1049
	jr l106dh		;104b
	ld b,b			;104d
	ld b,b			;104e
	ld a,000h		;104f
	ld b,c			;1051
	ld l,032h		;1052
	ld d,l			;1054
	ld c,c			;1055
	ld c,c			;1056
l1057h:
	ld (01000h),a		;1057
	ld a,(hl)		;105a
	ex af,af'		;105b
	ld a,(hl)		;105c
	inc b			;105d
l105eh:
	ld b,b			;105e
	inc a			;105f
	dec b			;1060
l1061h:
	djnz l10e1h		;1061
	ex af,af'		;1063
	ld a,(hl)		;1064
	inc b			;1065
	ld b,b			;1066
	inc a			;1067
	ld (bc),a		;1068
	add hl,bc		;1069
	ld a,(hl)		;106a
	inc b			;106b
	inc e			;106c
l106dh:
	inc e			;106d
	inc b			;106e
	jr l1071h		;106f
l1071h:
	ex af,af'		;1071
	ld a,(hl)		;1072
	inc b			;1073
	inc e			;1074
	inc e			;1075
	inc b			;1076
	jr l1079h		;1077
l1079h:
	inc h			;1079
	rra			;107a
	ld (hl),l		;107b
	ld de,l0812h		;107c
	ex af,af'		;107f
	nop			;1080
	djnz l10fbh		;1081
	ld (de),a		;1083
	ld (hl),c		;1084
	ld (hl),b		;1085
	ld hl,l001eh		;1086
	nop			;1089
	nop			;108a
	nop			;108b
	nop			;108c
	jr nz,$+82		;108d
	jr nz,l1091h		;108f
l1091h:
	nop			;1091
	nop			;1092
	jr $+26			;1093
	nop			;1095
	nop			;1096
	nop			;1097
	rrca			;1098
	rlca			;1099
	rlca			;109a
	djnz $+21		;109b
	dec sp			;109d
	dec sp			;109e
	add hl,sp		;109f
	dec a			;10a0
	dec e			;10a1
	dec e			;10a2
	dec b			;10a3
	nop			;10a4
	nop			;10a5
	nop			;10a6
	nop			;10a7
	ret m			;10a8
	ret m			;10a9
	ret p			;10aa
	inc b			;10ab
	call po,0eeeeh		;10ac
	adc a,0deh		;10af
	call c,0d0dch		;10b1
	add a,b			;10b4
	add a,b			;10b5
	add a,b			;10b6
	nop			;10b7
	nop			;10b8
	ld a,(hl)		;10b9
	ld b,d			;10ba
	ld e,(hl)		;10bb
	ld d,b			;10bc
	ld d,b			;10bd
	ld (hl),b		;10be
	nop			;10bf
	nop			;10c0
	nop			;10c1
	rlca			;10c2
	dec b			;10c3
	dec b			;10c4
	dec a			;10c5
	ld hl,l003fh		;10c6
	ex af,af'		;10c9
	ld a,a			;10ca
	ld c,c			;10cb
	ld c,c			;10cc
	ld a,a			;10cd
	ex af,af'		;10ce
	ex af,af'		;10cf
	ex af,af'		;10d0
	ld a,a			;10d1
	ld c,c			;10d2
	ld a,01ch		;10d3
	ld a,014h		;10d5
	ld h,e			;10d7
	inc b			;10d8
	xor 0a4h		;10d9
	rst 38h			;10db
	and d			;10dc
	cp a			;10dd
	jp pe,l1406h		;10de
l10e1h:
	ld (hl),a		;10e1
	ld (hl),a		;10e2
	ld (hl),a		;10e3
	inc d			;10e4
	ld hl,(04e51h)		;10e5
	ex af,af'		;10e8
	ld c,b			;10e9
	ld a,a			;10ea
	ld c,b			;10eb
	ld a,008h		;10ec
	ex af,af'		;10ee
	ld a,a			;10ef
	inc e			;10f0
	ld (l007fh),hl		;10f1
sub_10f4h:
	ld (hl),a		;10f4
	ld d,l			;10f5
	ld (hl),a		;10f6
	inc b			;10f7
	nop			;10f8
	ld c,c			;10f9
	ld c,c			;10fa
l10fbh:
	ld a,a			;10fb
	ex af,af'		;10fc
	ld c,c			;10fd
	ld c,c			;10fe
	ld a,a			;10ff
	ex af,af'		;1100
	ld a,a			;1101
	ld c,c			;1102
	ld a,a			;1103
	jr z,l111eh		;1104
	inc d			;1106
	ld h,e			;1107
	jr nz,l1181h		;1108
	ld (hl),c		;110a
	ld a,a			;110b
	ex af,af'		;110c
	ld a,b			;110d
	ld e,c			;110e
	ld (hl),a		;110f
	inc b			;1110
	ccf			;1111
	ld l,024h		;1112
	ccf			;1114
	ld h,024h		;1115
	ld c,h			;1117
	ex af,af'		;1118
	ld a,a			;1119
	ld (01422h),hl		;111a
	ex af,af'		;111d
l111eh:
	inc d			;111e
	ld h,e			;111f
	nop			;1120
	ccf			;1121
	ld de,l040ah		;1122
	ld a,(bc)		;1125
	ld de,l003fh		;1126
	cp 054h			;1129
	ld d,h			;112b
	ld d,h			;112c
	ld d,h			;112d
	ld d,h			;112e
	cp 008h			;112f
	ld a,a			;1131
	ld b,c			;1132
	ld a,008h		;1133
	ld a,a			;1135
	ex af,af'		;1136
	jr l1141h		;1137
	ld a,a			;1139
	ld c,c			;113a
	ld a,02ah		;113b
	ld a,02ah		;113d
	ld a,000h		;113f
l1141h:
	ld a,a			;1141
	ld d,d			;1142
	ld a,a			;1143
	ld a,e			;1144
	ld e,(hl)		;1145
	ld e,(hl)		;1146
	sbc a,(hl)		;1147
	jr nz,$+64		;1148
	ld c,b			;114a
	ld a,028h		;114b
	ld a,a			;114d
	ex af,af'		;114e
	ex af,af'		;114f
	ex af,af'		;1150
	ld a,014h		;1151
	ld a,a			;1153
	ld c,c			;1154
	ld a,02ah		;1155
	ex af,af'		;1157
	nop			;1158
	ld a,a			;1159
	ld e,l			;115a
	ld c,c			;115b
	ld e,l			;115c
	ld c,e			;115d
	ld e,l			;115e
	ld a,a			;115f
	ld (de),a		;1160
	ld h,(hl)		;1161
	ld hl,(02ff2h)		;1162
	ld (hl),d		;1165
	and d			;1166
	ld (07f2ah),hl		;1167
	ld b,c			;116a
	ld a,00ch		;116b
	ld a,a			;116d
	ex af,af'		;116e
	jr l1175h		;116f
	ccf			;1171
	jr nz,l11b3h		;1172
	inc h			;1174
l1175h:
	inc h			;1175
	ld b,h			;1176
	ld c,h			;1177
	ld a,03ch		;1178
	ld a,03ch		;117a
	ld a,a			;117c
	ld (0332ch),hl		;117d
	ex af,af'		;1180
l1181h:
	ld a,a			;1181
	ld b,c			;1182
l1183h:
	ld a,03eh		;1183
	jr nz,l11c5h		;1185
	ld a,000h		;1187
	rra			;1189
	ld (l0854h),hl		;118a
	rra			;118d
	ld l,c			;118e
	rrca			;118f
	ld a,d			;1190
	dec l			;1191
	ld (hl),063h		;1192
	inc e			;1194
	ld a,015h		;1195
	ld h,a			;1197
	ex af,af'		;1198
	ld a,03eh		;1199
	ld a,000h		;119b
	ld a,01ch		;119d
	ld a,a			;119f
	ld (bc),a		;11a0
	ld c,h			;11a1
	djnz l1183h		;11a2
	ld d,h			;11a4
	ld d,h			;11a5
	ld h,h			;11a6
	rst 18h			;11a7
	nop			;11a8
	ld hl,(07f2ah)		;11a9
	ld hl,(0202eh)		;11ac
	ccf			;11af
	nop			;11b0
	ld a,a			;11b1
	inc d			;11b2
l11b3h:
	dec (hl)		;11b3
	ld e,(hl)		;11b4
	inc (hl)		;11b5
	dec h			;11b6
	ld b,e			;11b7
	ex af,af'		;11b8
	jr z,l11f9h		;11b9
	ld c,b			;11bb
	ld a,a			;11bc
	ex af,af'		;11bd
	inc d			;11be
	ld h,e			;11bf
	ld (hl),h		;11c0
	ld d,a			;11c1
	ld a,c			;11c2
	ld d,l			;11c3
	ld (hl),l		;11c4
l11c5h:
	ld (hl),d		;11c5
	ld h,059h		;11c6
	inc b			;11c8
	ld a,a			;11c9
	inc (hl)		;11ca
	ld (l007dh),a		;11cb
	ld d,l			;11ce
	ld c,(hl)		;11cf
	ld a,03eh		;11d0
	ld a,028h		;11d2
	ld a,07eh		;11d4
	ex af,af'		;11d6
	ld a,a			;11d7
	ex af,af'		;11d8
	ld e,(hl)		;11d9
	ld e,0d0h		;11da
	ld e,(hl)		;11dc
	ld e,(hl)		;11dd
	ld h,b			;11de
	rst 18h			;11df
	inc h			;11e0
	ld (hl),a		;11e1
	add hl,hl		;11e2
	dec (hl)		;11e3
	ld d,l			;11e4
	ld (de),a		;11e5
	ld (hl),069h		;11e6
	ld (bc),a		;11e8
	dec h			;11e9
	inc h			;11ea
	ld e,a			;11eb
	and h			;11ec
	inc h			;11ed
	dec h			;11ee
	inc hl			;11ef
	nop			;11f0
	ex af,af'		;11f1
	ld a,008h		;11f2
	ld a,a			;11f4
	ex af,af'		;11f5
	ld (de),a		;11f6
	dec a			;11f7
	nop			;11f8
l11f9h:
	ld l,040h		;11f9
	rra			;11fb
	ld (02262h),hl		;11fc
	ld h,008h		;11ff
	ex af,af'		;1201
	ld a,a			;1202
	djnz l1223h		;1203
	ld (de),a		;1205
	ld hl,(l0044h)		;1206
	ld a,a			;1209
	ex af,af'		;120a
	jr $+46			;120b
	ld c,e			;120d
	ex af,af'		;120e
	ex af,af'		;120f
	nop			;1210
	ld (hl),a		;1211
	ld d,l			;1212
	ld (hl),a		;1213
	ld d,l			;1214
	ld (hl),a		;1215
	dec b			;1216
	add hl,bc		;1217
	ld a,(bc)		;1218
	ld a,a			;1219
	ld e,c			;121a
	ld a,a			;121b
	ld d,(hl)		;121c
	halt			;121d
	ld e,d			;121e
	ld e,e			;121f
	nop			;1220
	ld c,d			;1221
	dec de			;1222
l1223h:
	jp z,04a5bh		;1223
	ld (hl),c		;1226
	rst 18h			;1227
	nop			;1228
	ex af,af'		;1229
	ex af,af'		;122a
	ld a,a			;122b
	jr nz,l124eh		;122c
	jr nz,l124eh		;122e
	ex af,af'		;1230
	ld a,a			;1231
	ld a,03eh		;1232
	ld a,000h		;1234
	ld a,a			;1236
	ld (02f00h),hl		;1237
	ld l,c			;123a
	dec hl			;123b
	ld (02222h),hl		;123c
	ld (02600h),hl		;123f
	ld l,c			;1242
	add hl,hl		;1243
	add hl,hl		;1244
	add hl,hl		;1245
	add hl,hl		;1246
	ld h,002h		;1247
	ld (hl),d		;1249
	ld e,a			;124a
	ld h,(hl)		;124b
	ld d,l			;124c
	ld h,l			;124d
l124eh:
	ld c,c			;124e
	ld b,d			;124f
	ex af,af'		;1250
	ld hl,(l184dh)		;1251
	ld a,05eh		;1254
	ld (de),a		;1256
	ld e,000h		;1257
	ex af,af'		;1259
	ld c,a			;125a
	dec d			;125b
	inc b			;125c
	inc l			;125d
	ld c,d			;125e
	ld de,0ef40h		;125f
	ld b,l			;1262
	push af			;1263
	ld c,a			;1264
	ld l,c			;1265
	rst 8			;1266
	cp a			;1267
	nop			;1268
	ld hl,0443eh		;1269
	rst 18h			;126c
	ld b,h			;126d
	ld b,h			;126e
	ld e,a			;126f
	ex af,af'		;1270
	ld a,a			;1271
	ld d,l			;1272
	inc h			;1273
	ld b,e			;1274
	ld a,008h		;1275
	ld a,a			;1277
	nop			;1278
	ld (hl),a		;1279
	ld (hl),a		;127a
	ld b,c			;127b
	ld a,a			;127c
	ld d,l			;127d
	ld a,a			;127e
	ld d,l			;127f
	ld b,h			;1280
	ld l,(hl)		;1281
	ld (hl),h		;1282
	xor a			;1283
	ld (0aa6fh),hl		;1284
	ld h,070h		;1287
	ld d,l			;1289
	ld (hl),l		;128a
	ld b,l			;128b
	ld (hl),l		;128c
	ld d,l			;128d
	sub c			;128e
	inc sp			;128f
	nop			;1290
	ex af,af'		;1291
	ex af,af'		;1292
	ld a,a			;1293
	ex af,af'		;1294
	ex af,af'		;1295
	inc d			;1296
	ld h,e			;1297
	nop			;1298
	inc h			;1299
	ccf			;129a
	ld b,h			;129b
	rst 8			;129c
	ld c,d			;129d
	ld d,d			;129e
	ld l,a			;129f
	ex af,af'		;12a0
	inc d			;12a1
	ld h,e			;12a2
	ld a,008h		;12a3
	ld a,008h		;12a5
	ld a,005h		;12a7
	add a,h			;12a9
	ccf			;12aa
	and h			;12ab
	dec a			;12ac
	ld d,d			;12ad
	ld e,d			;12ae
	and l			;12af
	nop			;12b0
	ld a,a			;12b1
	ld hl,(07f2ah)		;12b2
	ex af,af'		;12b5
	ex af,af'		;12b6
	ex af,af'		;12b7
	djnz l132ah		;12b8
	cpl			;12ba
	ld sp,hl		;12bb
	add hl,hl		;12bc
	ld a,c			;12bd
	xor c			;12be
	cpl			;12bf
	nop			;12c0
	ld a,a			;12c1
	ld c,c			;12c2
	ld a,03eh		;12c3
	ex af,af'		;12c5
	ld a,a			;12c6
	ex af,af'		;12c7
	nop			;12c8
	ld a,(hl)		;12c9
	djnz l134ah		;12ca
	ld a,(hl)		;12cc
	ld e,d			;12cd
	rst 38h			;12ce
	ld b,d			;12cf
	ex af,af'		;12d0
	ld a,a			;12d1
	ld b,c			;12d2
	ld a,000h		;12d3
	ld a,a			;12d5
	inc d			;12d6
	ld h,a			;12d7
	nop			;12d8
	ld a,a			;12d9
	ld (bc),a		;12da
	inc c			;12db
	ex af,af'		;12dc
	ex af,af'		;12dd
	ex af,af'		;12de
	jr l12e9h		;12df
	cpl			;12e1
	ld d,a			;12e2
	daa			;12e3
	ld h,a			;12e4
	add hl,hl		;12e5
	ld h,02dh		;12e6
	nop			;12e8
l12e9h:
	cpl			;12e9
	add hl,hl		;12ea
	add hl,hl		;12eb
	cpl			;12ec
	add hl,hl		;12ed
	add hl,hl		;12ee
	cpl			;12ef
	ld (hl),a		;12f0
	ld l,l			;12f1
	halt			;12f2
	add hl,bc		;12f3
	inc (hl)		;12f4
	ld a,(de)		;12f5
	ld a,02ah		;12f6
	ld a,044h		;12f8
	ld a,01eh		;12fa
	ld a,009h		;12fc
	ld d,l			;12fe
	ld c,(hl)		;12ff
	djnz l1366h		;1300
	ld a,a			;1302
	ld (hl),l		;1303
	ld (hl),l		;1304
	ld (hl),l		;1305
	add hl,hl		;1306
	ld (hl),d		;1307
	ld b,h			;1308
	ld e,a			;1309
	call po,05f5fh		;130a
	ld e,a			;130d
	ld c,d			;130e
	ld b,(hl)		;130f
	nop			;1310
	ex af,af'		;1311
	ex af,af'		;1312
	ld a,a			;1313
	ex af,af'		;1314
	ex af,af'		;1315
	ex af,af'		;1316
	ld a,044h		;1317
	ld c,0dfh		;1319
	ld c,(hl)		;131b
	ld d,l			;131c
	ld c,(hl)		;131d
	ld d,l			;131e
	cp a			;131f
	ld b,l			;1320
	xor 044h		;1321
	ld a,a			;1323
	push de			;1324
	ld e,a			;1325
	ld e,l			;1326
	ld d,l			;1327
	ex af,af'		;1328
	ld a,a			;1329
l132ah:
	ld (0631ch),hl		;132a
	ld a,03eh		;132d
	ld b,d			;132f
	ld e,(hl)		;1330
	inc b			;1331
	sbc a,05eh		;1332
	ld e,(hl)		;1334
	ld e,(hl)		;1335
	ld d,d			;1336
	cp a			;1337
	inc h			;1338
	ccf			;1339
	ld c,(hl)		;133a
	xor (hl)		;133b
	jr nz,l136ch		;133c
	ld hl,(l082eh)		;133e
	ld a,008h		;1341
	ld a,01eh		;1343
	ld a,a			;1345
	ld a,008h		;1346
	inc d			;1348
	ld e,(hl)		;1349
l134ah:
	ld d,h			;134a
	add a,h			;134b
	ld a,a			;134c
	ld b,h			;134d
	ld b,h			;134e
	ld b,h			;134f
	jr nz,l1391h		;1350
	ld h,d			;1352
	jp c,05a5ah		;1353
	ld b,d			;1356
	ld b,(hl)		;1357
	ex af,af'		;1358
	ld a,00ah		;1359
	ld a,a			;135b
	djnz l139ch		;135c
	ld e,d			;135e
	ld e,000h		;135f
	nop			;1361
	nop			;1362
	ld a,a			;1363
	nop			;1364
	nop			;1365
l1366h:
	nop			;1366
	nop			;1367
	nop			;1368
	ld (hl),a		;1369
	ld d,l			;136a
	ld (hl),a		;136b
l136ch:
	ld d,l			;136c
	ld (hl),a		;136d
	dec b			;136e
	add hl,bc		;136f
	add hl,hl		;1370
	or l			;1371
	ld h,l			;1372
	push af			;1373
	dec h			;1374
	pop af			;1375
	inc hl			;1376
	ld hl,0491bh		;1377
	dec de			;137a
	in a,(04eh)		;137b
	ld e,a			;137d
	ld l,d			;137e
	rst 18h			;137f
	ld b,058h		;1380
	push af			;1382
	ld c,d			;1383
	ld h,h			;1384
	rst 18h			;1385
	ld c,(hl)		;1386
l1387h:
	ld d,l			;1387
	ld bc,0441eh		;1388
	rra			;138b
	ld b,h			;138c
	rra			;138d
	ld sp,0025fh		;138e
l1391h:
	inc e			;1391
	inc b			;1392
	ld a,a			;1393
	inc b			;1394
	ccf			;1395
	inc b			;1396
	jr l13a1h		;1397
	sbc a,(hl)		;1399
	ld c,d			;139a
	cp a			;139b
l139ch:
	ld c,h			;139c
	inc d			;139d
	ld d,d			;139e
	and c			;139f
	nop			;13a0
l13a1h:
	ld c,(hl)		;13a1
	ld hl,(0aa6eh)		;13a2
	ld l,(hl)		;13a5
	xor d			;13a6
	ld e,a			;13a7
	nop			;13a8
	ld a,000h		;13a9
	ld a,a			;13ab
	inc d			;13ac
	inc d			;13ad
	dec h			;13ae
	ld b,a			;13af
	nop			;13b0
	ld a,a			;13b1
	ex af,af'		;13b2
	inc c			;13b3
	ld a,(bc)		;13b4
	ex af,af'		;13b5
	ex af,af'		;13b6
	ex af,af'		;13b7
	nop			;13b8
	ld h,069h		;13b9
	add hl,hl		;13bb
	ld h,029h		;13bc
	add hl,hl		;13be
	ld h,004h		;13bf
	ld e,a			;13c1
	inc b			;13c2
	rst 18h			;13c3
	ld e,a			;13c4
	ld c,(hl)		;13c5
	ld d,l			;13c6
	cp a			;13c7
	inc b			;13c8
	ld e,a			;13c9
	jp pe,07f5fh		;13ca
	jp z,05946h		;13cd
	inc b			;13d0
	djnz l1387h		;13d1
	add hl,bc		;13d3
	ld c,a			;13d4
	or (hl)			;13d5
	ld (bc),a		;13d6
	and a			;13d7
	or h			;13d8
	dec l			;13d9
	ld e,(hl)		;13da
	or (hl)			;13db
	ld (bc),a		;13dc
	ld h,d			;13dd
	or l			;13de
	ld (hl),b		;13df
	jp nz,l02b6h		;13e0
	ld de,050b5h		;13e3
	adc a,d			;13e6
	or (hl)			;13e7
	nop			;13e8
	nop			;13e9
	inc c			;13ea
	rra			;13eb
	inc h			;13ec
	inc de			;13ed
	dec l			;13ee
	dec a			;13ef
	ld (de),a		;13f0
	djnz l1443h		;13f1
	ld e,d			;13f3
	ld (de),a		;13f4
	ld a,(bc)		;13f5
	ld (hl),d		;13f6
	adc a,l			;13f7
l13f8h:
	ld (de),a		;13f8
	dec de			;13f9
	nop			;13fa
	jr nz,l142fh		;13fb
	inc h			;13fd
	ld bc,0330bh		;13fe
	inc h			;1401
	ld bc,0340dh		;1402
	inc h			;1405
l1406h:
	ld bc,04d41h		;1406
	ld (de),a		;1409
	ld bc,04e31h		;140a
	ld (de),a		;140d
	ld bc,l0400h		;140e
	nop			;1411
	add a,h			;1412
	rst 38h			;1413
	nop			;1414
	nop			;1415
	rst 38h			;1416
l1417h:
	dec b			;1417
	nop			;1418
	add a,h			;1419
	rst 38h			;141a
	nop			;141b
	nop			;141c
	rst 38h			;141d
	rlca			;141e
	nop			;141f
	adc a,h			;1420
	ld bc,l0400h+2		;1421
	ex af,af'		;1424
	djnz l1447h		;1425
	ld b,b			;1427
	add a,b			;1428
	ret nz			;1429
	jr nc,l1438h		;142a
	inc bc			;142c
	add hl,bc		;142d
	nop			;142e
l142fh:
	adc a,b			;142f
	rst 38h			;1430
	ld b,001h		;1431
	ret nz			;1433
	jr nz,l144eh		;1434
	inc b			;1436
	inc bc			;1437
l1438h:
	ex af,af'		;1438
	nop			;1439
	add a,(hl)		;143a
	add a,b			;143b
	ld h,b			;143c
	djnz l144bh		;143d
	ld (bc),a		;143f
	ld bc,l0004h		;1440
l1443h:
	adc a,c			;1443
	rst 38h			;1444
	nop			;1445
	nop			;1446
l1447h:
	add a,b			;1447
	ld b,b			;1448
	jr nc,l1453h		;1449
l144bh:
	ld b,0ffh		;144b
	inc bc			;144d
l144eh:
	nop			;144e
	sub c			;144f
l1450h:
	ld bc,l0300h		;1450
l1453h:
	nop			;1453
	nop			;1454
	ld b,c			;1455
	adc a,c			;1456
	sub c			;1457
l1458h:
	ld (de),a		;1458
	ld (l0400h+2),hl	;1459
	inc b			;145c
	dec b			;145d
	ld a,(bc)		;145e
	inc c			;145f
	ex af,af'		;1460
	inc bc			;1461
	djnz l13f8h		;1462
	jr nz,l1467h		;1464
	inc bc			;1466
l1467h:
	dec b			;1467
	ld a,(bc)		;1468
	ld (de),a		;1469
	ld (08444h),hl		;146a
	ret nz			;146d
	jr nc,l147ch		;146e
	inc hl			;1470
	ld c,b			;1471
	ld d,b			;1472
	sub b			;1473
	add a,b			;1474
	inc c			;1475
	ld (bc),a		;1476
	ld bc,l0007h		;1477
	adc a,b			;147a
	add a,b			;147b
l147ch:
	ld b,b			;147c
	jr nc,l1487h		;147d
	ld b,001h		;147f
	jr nz,l14a3h		;1481
	inc bc			;1483
	ld b,b			;1484
	inc bc			;1485
	add a,b			;1486
l1487h:
	add a,c			;1487
	inc b			;1488
	inc bc			;1489
	ex af,af'		;148a
	inc bc			;148b
	djnz l1417h		;148c
	jr nz,l1450h		;148e
	jr nc,l149eh		;1490
	inc bc			;1492
	ex af,af'		;1493
	ld a,(bc)		;1494
	ld (bc),a		;1495
	ld (bc),a		;1496
	inc b			;1497
	nop			;1498
	adc a,h			;1499
	rst 38h			;149a
	ld b,d			;149b
	add a,c			;149c
	add a,b			;149d
l149eh:
	ret nz			;149e
	jr nz,$+26		;149f
	inc b			;14a1
	rst 38h			;14a2
l14a3h:
	nop			;14a3
	nop			;14a4
	rst 38h			;14a5
	nop			;14a6
	adc a,d			;14a7
	rst 38h			;14a8
	add a,c			;14a9
	rst 38h			;14aa
	rst 38h			;14ab
	cp 098h			;14ac
	sbc a,b			;14ae
	rst 38h			;14af
	rst 38h			;14b0
	add a,c			;14b1
	inc bc			;14b2
	rst 38h			;14b3
	ld (bc),a		;14b4
	sbc a,b			;14b5
	adc a,l			;14b6
	rst 38h			;14b7
	cp 082h			;14b8
	cp 0ffh			;14ba
	call m,08c8ch		;14bc
	call m,sub_0a05h	;14bf
	inc c			;14c2
	ex af,af'		;14c3
	inc bc			;14c4
	djnz l14cah		;14c5
	jr nz,l14cch		;14c7
	ld b,b			;14c9
l14cah:
	inc bc			;14ca
	add a,b			;14cb
l14cch:
	add a,c			;14cc
	inc b			;14cd
	inc bc			;14ce
	ex af,af'		;14cf
	inc bc			;14d0
	djnz l1458h		;14d1
	jr nz,l14d5h		;14d3
l14d5h:
	nop			;14d5
	ret p			;14d6
	rrca			;14d7
	ex af,af'		;14d8
	nop			;14d9
	add a,h			;14da
	ret p			;14db
	rrca			;14dc
	nop			;14dd
	inc c			;14de
	inc b			;14df
	nop			;14e0
	add a,e			;14e1
	ret p			;14e2
	rrca			;14e3
	ret nz			;14e4
	rlca			;14e5
	nop			;14e6
	add a,h			;14e7
	ret p			;14e8
	rrca			;14e9
	nop			;14ea
	inc bc			;14eb
	dec bc			;14ec
	nop			;14ed
	add a,e			;14ee
	inc c			;14ef
	ld e,00ch		;14f0
	dec b			;14f2
	nop			;14f3
	adc a,b			;14f4
	inc c			;14f5
	ld e,00ch		;14f6
	ret nz			;14f8
	jr nc,l1507h		;14f9
	inc bc			;14fb
	ld b,b			;14fc
	inc bc			;14fd
	nop			;14fe
	sub b			;14ff
	ld bc,l0400h+2		;1500
	ex af,af'		;1503
	djnz l1526h		;1504
	ld b,b			;1506
l1507h:
	add a,b			;1507
	ld bc,l0503h		;1508
	ld a,(bc)		;150b
	ld (de),a		;150c
	ld (08444h),hl		;150d
	nop			;1510
	sbc a,b			;1511
	nop			;1512
	inc b			;1513
	djnz l153dh		;1514
	ld e,07fh		;1516
	or c			;1518
	halt			;1519
	and d			;151a
	ld hl,(05bffh)		;151b
	ccf			;151e
	rst 18h			;151f
	rst 38h			;1520
	rla			;1521
	nop			;1522
	sub b			;1523
	ld h,h			;1524
	ld a,b			;1525
l1526h:
	call po,0fe7bh		;1526
	rst 30h			;1529
	inc b			;152a
	nop			;152b
	sbc a,e			;152c
	add a,b			;152d
	nop			;152e
	and b			;152f
	ret nz			;1530
	cp 03fh			;1531
	rrca			;1533
	rlca			;1534
	inc bc			;1535
	ld bc,l0001h		;1536
	add a,b			;1539
	xor b			;153a
	ret nc			;153b
	ret po			;153c
l153dh:
	call po,0f4b0h		;153d
	jp nc,0faf4h		;1540
	ld a,h			;1543
	ld a,l			;1544
	ld a,(0146ch)		;1545
	inc bc			;1548
	nop			;1549
	add a,(hl)		;154a
	ret nz			;154b
	ld (hl),b		;154c
	ld a,a			;154d
	ccf			;154e
	sub a			;154f
	dec h			;1550
	inc bc			;1551
	nop			;1552
	adc a,l			;1553
	ld bc,0fffah		;1554
	cp l			;1557
	rst 30h			;1558
	dec d			;1559
	ld a,07bh		;155a
	cp 0b6h			;155c
	call m,088e0h		;155e
	nop			;1561
	adc a,b			;1562
	nop			;1563
	jr l15a2h		;1564
	inc a			;1566
	inc h			;1567
	jr $+1			;1568
	add a,c			;156a
	inc b			;156b
	nop			;156c
	sub l			;156d
	jp 0dbe7h		;156e
	ld b,d			;1571
	rst 38h			;1572
	add a,c			;1573
	rst 38h			;1574
	nop			;1575
	dec c			;1576
	rlca			;1577
	nop			;1578
	inc bc			;1579
	rst 38h			;157a
	add a,c			;157b
	rst 38h			;157c
	nop			;157d
	ld l,l			;157e
	rst 0			;157f
	nop			;1580
	add a,e			;1581
	rst 38h			;1582
	ld b,000h		;1583
	sub c			;1585
	add a,b			;1586
	nop			;1587
	ex af,af'		;1588
	inc c			;1589
	ld b,006h		;158a
	inc bc			;158c
	ld bc,0c001h		;158d
	ret nz			;1590
	ld h,b			;1591
	jr nc,l15c4h		;1592
	jr l15b2h		;1594
	inc c			;1596
	inc bc			;1597
	nop			;1598
	ld (bc),a		;1599
	ld bc,l039bh		;159a
	ld b,00ch		;159d
	nop			;159f
	ld b,b			;15a0
	ld a,a			;15a1
l15a2h:
	cp a			;15a2
	ld b,c			;15a3
	jr nc,l15b5h		;15a4
	ld a,a			;15a6
	ld c,006h		;15a7
	and 0b2h		;15a9
	inc c			;15ab
	pop af			;15ac
	ld sp,hl		;15ad
	call m,0403fh		;15ae
	and b			;15b1
l15b2h:
	sub b			;15b2
	adc a,b			;15b3
	add a,h			;15b4
l15b5h:
	inc bc			;15b5
	rst 0			;15b6
	inc bc			;15b7
	nop			;15b8
	ld (bc),a		;15b9
	ld bc,l02a7h		;15ba
	ld a,(l03f8h)		;15bd
	rrca			;15c0
	ccf			;15c1
	cp 0fdh			;15c2
l15c4h:
	inc bc			;15c4
	rrca			;15c5
	ret nz			;15c6
	ld a,b			;15c7
	or a			;15c8
	adc a,b			;15c9
	ex (sp),hl		;15ca
	sbc a,a			;15cb
	ld a,h			;15cc
	pop af			;15cd
	rst 0			;15ce
	defb 0fdh,05dh ;ld e,iyl	;15cf
	call m,0fcbdh		;15d1
	cp (hl)			;15d4
	defb 0ddh,0edh,03dh ;illegal sequence	;15d5
	ld (07c4dh),hl		;15d8
	rst 0			;15db
	ld b,b			;15dc
	ccf			;15dd
	dec b			;15de
	ld (hl),b		;15df
	ld e,007h		;15e0
	ld bc,l0006h		;15e2
	add a,l			;15e5
	ret po			;15e6
	cp 03fh			;15e7
	rlca			;15e9
	ld bc,l0002h+1		;15ea
	sub d			;15ed
	ld bc,0e03fh		;15ee
	add a,b			;15f1
	ret po			;15f2
	rst 38h			;15f3
	inc bc			;15f4
	ccf			;15f5
	ret nz			;15f6
	ret nz			;15f7
	cp 000h			;15f8
	inc h			;15fa
	inc a			;15fb
	ret m			;15fc
	call m,0fefch		;15fd
	inc b			;1600
	nop			;1601
	or c			;1602
	call m,07cfbh		;1603
	rrca			;1606
	ld bc,l0001h		;1607
	nop			;160a
	rlca			;160b
	ret po			;160c
	add a,b			;160d
	rst 38h			;160e
	nop			;160f
	ld a,(hl)		;1610
	add a,c			;1611
	nop			;1612
	jp po,l1811h		;1613
	ret p			;1616
	add a,b			;1617
	add a,b			;1618
	ld a,00fh		;1619
	dec sp			;161b
	ld a,l			;161c
	add a,h			;161d
	cp l			;161e
	xor b			;161f
	ld e,e			;1620
	ld (bc),a		;1621
	xor b			;1622
	rst 38h			;1623
	add a,c			;1624
	rst 38h			;1625
	jr nz,$+53		;1626
	jr nc,l166fh		;1628
	jr nc,$+1		;162a
	add a,c			;162c
	rst 38h			;162d
	inc b			;162e
	call z,0aa0ch		;162f
	inc c			;1632
	djnz l1638h		;1633
	nop			;1635
	adc a,h			;1636
	inc b			;1637
l1638h:
	rlca			;1638
	rrca			;1639
	ex af,af'		;163a
	nop			;163b
	rla			;163c
	cpl			;163d
	cpl			;163e
	rrca			;163f
	call pe,sub_01edh	;1640
	nop			;1643
	add hl,bc		;1644
	rst 38h			;1645
	add a,a			;1646
	rst 20h			;1647
	rst 38h			;1648
	rst 20h			;1649
	rst 20h			;164a
	rst 38h			;164b
	rst 20h			;164c
	jp 05400h		;164d
	ld b,b			;1650
	inc b			;1651
	jr nz,l1673h		;1652
	ld b,b			;1654
	add a,c			;1655
	jr nz,$+41		;1656
	ld b,b			;1658
	inc b			;1659
	jr nz,l1669h		;165a
	ld b,b			;165c
	nop			;165d
	sbc a,b			;165e
	ld (hl),b		;165f
	ld b,b			;1660
	ld d,b			;1661
	nop			;1662
	ld b,b			;1663
	ld b,b			;1664
	ld d,b			;1665
	ld d,l			;1666
	ld (hl),a		;1667
	ld b,b			;1668
l1669h:
	ld d,l			;1669
	nop			;166a
	ld b,h			;166b
	ld b,b			;166c
	ld d,b			;166d
	ld d,l			;166e
l166fh:
	ld (hl),b		;166f
	ld b,b			;1670
	ld d,b			;1671
	nop			;1672
l1673h:
	ld b,b			;1673
	ld b,b			;1674
	ld d,b			;1675
	ld d,b			;1676
	ld h,040h		;1677
	inc b			;1679
	jr nz,l1680h		;167a
	ld b,b			;167c
	inc b			;167d
	jr nz,l1686h		;167e
l1680h:
	ld b,b			;1680
	ex af,af'		;1681
	jr nz,l168ch		;1682
	ld h,b			;1684
	ex af,af'		;1685
l1686h:
	and b			;1686
	jr l16c9h		;1687
	nop			;1689
	inc b			;168a
	ld h,b			;168b
l168ch:
	ld (bc),a		;168c
	add a,b			;168d
	add a,d			;168e
	sbc a,b			;168f
	add a,b			;1690
	inc b			;1691
	ld h,b			;1692
	add a,h			;1693
	add a,(hl)		;1694
	add a,b			;1695
	adc a,b			;1696
	add a,b			;1697
	dec b			;1698
	ld h,b			;1699
	rlca			;169a
	add a,b			;169b
	add a,c			;169c
	ld h,b			;169d
	ex af,af'		;169e
	add a,b			;169f
	inc bc			;16a0
	sub b			;16a1
	rlca			;16a2
	add a,b			;16a3
	add a,(hl)		;16a4
	sub b			;16a5
	add a,b			;16a6
	add a,b			;16a7
	sub b			;16a8
	add a,b			;16a9
	sub b			;16aa
	dec b			;16ab
	add a,b			;16ac
	ld (bc),a		;16ad
	sub b			;16ae
	inc bc			;16af
	add a,b			;16b0
	add a,c			;16b1
	ld h,b			;16b2
	inc b			;16b3
	sub b			;16b4
	add a,a			;16b5
	sbc a,b			;16b6
	adc a,b			;16b7
	add a,b			;16b8
	ld h,b			;16b9
	sub b			;16ba
	add a,b			;16bb
	sub b			;16bc
	inc bc			;16bd
	add a,b			;16be
	ld (bc),a		;16bf
	ld h,b			;16c0
	nop			;16c1
	inc bc			;16c2
	sub b			;16c3
	inc bc			;16c4
	add a,b			;16c5
	add a,d			;16c6
	ld h,b			;16c7
	and b			;16c8
l16c9h:
	dec b			;16c9
	ret p			;16ca
	adc a,b			;16cb
	ld (hl),l		;16cc
	ld b,b			;16cd
	jr nc,l1740h		;16ce
	ld b,b			;16d0
	ld d,b			;16d1
	ld d,b			;16d2
	ld b,b			;16d3
	inc bc			;16d4
	ld d,b			;16d5
	add a,l			;16d6
	ld (hl),b		;16d7
	ld b,b			;16d8
	ld d,b			;16d9
	ld b,b			;16da
	ld b,b			;16db
	inc bc			;16dc
	ld d,b			;16dd
	add a,c			;16de
	dec b			;16df
	ex af,af'		;16e0
	ret p			;16e1
	adc a,a			;16e2
	add a,b			;16e3
	ret p			;16e4
	ret p			;16e5
	ret po			;16e6
	ret p			;16e7
	ld (hl),b		;16e8
	ret p			;16e9
	ld (hl),b		;16ea
	ret po			;16eb
	ld (hl),b		;16ec
	ret po			;16ed
	ld (hl),b		;16ee
	ret po			;16ef
	ld (hl),b		;16f0
	ret p			;16f1
	inc b			;16f2
	ld d,b			;16f3
	inc bc			;16f4
	ld (hl),b		;16f5
	adc a,d			;16f6
	ld b,b			;16f7
	nop			;16f8
	and b			;16f9
	ld d,b			;16fa
	ld (hl),b		;16fb
	add a,l			;16fc
	ld b,b			;16fd
	ld (hl),b		;16fe
	ret p			;16ff
	ld (hl),b		;1700
	inc bc			;1701
	ld d,b			;1702
	adc a,h			;1703
	ld b,b			;1704
	ret p			;1705
	ret p			;1706
	ld (hl),b		;1707
l1708h:
	ret p			;1708
	ld (hl),b		;1709
	ret p			;170a
	ld (hl),b		;170b
	ret p			;170c
	ld (hl),b		;170d
	ret p			;170e
	ld (hl),b		;170f
	inc b			;1710
	add a,b			;1711
	add a,h			;1712
	ret p			;1713
	ld d,b			;1714
	ld d,b			;1715
	ret p			;1716
	inc bc			;1717
	ld (hl),b		;1718
	adc a,d			;1719
	ld (hl),l		;171a
	halt			;171b
	push af			;171c
	ld (hl),b		;171d
	ld d,b			;171e
	push af			;171f
	ld (hl),l		;1720
	sub l			;1721
	ld (hl),b		;1722
	ret p			;1723
	inc bc			;1724
	rst 30h			;1725
	sub b			;1726
	ld d,b			;1727
	ld (hl),b		;1728
	ld (hl),b		;1729
	ld d,b			;172a
	ld (hl),b		;172b
	ld (hl),b		;172c
	ld (hl),l		;172d
	ld (hl),l		;172e
	ret p			;172f
	sub a			;1730
	ret p			;1731
	ld (hl),b		;1732
	rst 0			;1733
	call pe,04040h		;1734
	inc bc			;1737
	ret p			;1738
	inc b			;1739
	ld d,b			;173a
	inc b			;173b
	ret p			;173c
	add a,d			;173d
	ld (hl),b		;173e
	ret p			;173f
l1740h:
	inc b			;1740
	ld d,b			;1741
	inc bc			;1742
	ret p			;1743
	adc a,b			;1744
	rst 30h			;1745
	ld (hl),l		;1746
	ld d,b			;1747
	nop			;1748
	ret p			;1749
	ret p			;174a
	rst 30h			;174b
	ld (hl),l		;174c
	inc bc			;174d
	ld b,b			;174e
	add a,h			;174f
	ld d,b			;1750
	ret p			;1751
	ld (hl),b		;1752
	ld d,b			;1753
	dec b			;1754
	ld b,b			;1755
	adc a,e			;1756
	ld d,b			;1757
	ld b,d			;1758
	ld b,d			;1759
	ld b,b			;175a
	add a,b			;175b
	ld (hl),b		;175c
	and b			;175d
	and b			;175e
	ret p			;175f
	ld d,b			;1760
	ld h,h			;1761
	inc bc			;1762
	ld b,b			;1763
	adc a,b			;1764
	and a			;1765
	nop			;1766
	rst 0			;1767
	add a,l			;1768
	ld b,b			;1769
	ld b,b			;176a
	add a,b			;176b
	ld (hl),h		;176c
	inc bc			;176d
	ld b,b			;176e
	dec b			;176f
	ld d,b			;1770
	add a,a			;1771
	and b			;1772
	ld b,b			;1773
	ld (hl),a		;1774
	ld b,b			;1775
	ld d,b			;1776
	ld b,b			;1777
	ld b,b			;1778
	inc bc			;1779
	ld d,b			;177a
	add a,l			;177b
	ld (hl),b		;177c
	ld b,b			;177d
	ld d,b			;177e
	ld b,b			;177f
	ld b,b			;1780
	inc bc			;1781
	ld d,b			;1782
	inc b			;1783
	add a,b			;1784
	add a,h			;1785
	jr nc,l1708h		;1786
	ld h,b			;1788
	and b			;1789
	inc bc			;178a
	sub b			;178b
	inc bc			;178c
	add a,b			;178d
	add a,d			;178e
	ld h,b			;178f
	ld (hl),b		;1790
	nop			;1791
	add a,c			;1792
	nop			;1793
	dec b			;1794
	ld b,b			;1795
	add a,e			;1796
	nop			;1797
	ld d,b			;1798
	nop			;1799
	ld b,040h		;179a
	add a,c			;179c
	ld d,b			;179d
	nop			;179e
	nop			;179f
	ld hl,(l0018h)		;17a0
	ld (bc),a		;17a3
	rlca			;17a4
	inc bc			;17a5
	rrca			;17a6
	ld (bc),a		;17a7
	rra			;17a8
	add a,c			;17a9
	ccf			;17aa
	ex af,af'		;17ab
	rst 38h			;17ac
	ld (bc),a		;17ad
	ret m			;17ae
	inc bc			;17af
	ret p			;17b0
	inc bc			;17b1
	ret po			;17b2
	ld a,a			;17b3
	nop			;17b4
	dec c			;17b5
	nop			;17b6
	add a,a			;17b7
	ld bc,l0f03h		;17b8
	ld a,a			;17bb
	ccf			;17bc
	ld a,a			;17bd
	ld a,a			;17be
	ld a,(bc)		;17bf
	rst 38h			;17c0
	add a,d			;17c1
	call m,sub_03f0h	;17c2
	ret nz			;17c5
	ld (bc),a		;17c6
	add a,b			;17c7
	ld a,a			;17c8
	nop			;17c9
	add a,e			;17ca
	ld bc,l0703h		;17cb
	inc bc			;17ce
	rrca			;17cf
	add a,c			;17d0
	ccf			;17d1
	add hl,bc		;17d2
	rst 38h			;17d3
	add a,a			;17d4
	cp 0fch			;17d5
	ret m			;17d7
	ret m			;17d8
	ret p			;17d9
	ret m			;17da
	ret nz			;17db
	dec bc			;17dc
	nop			;17dd
	ld (bc),a		;17de
	ld bc,l0383h		;17df
	ld a,a			;17e2
	ld a,a			;17e3
	dec bc			;17e4
	rst 38h			;17e5
	ld (bc),a		;17e6
	cp 083h			;17e7
	call m,08080h		;17e9
	ld b,000h		;17ec
	ld (bc),a		;17ee
	inc a			;17ef
	ld (bc),a		;17f0
	ld a,b			;17f1
	sub d			;17f2
	ld a,c			;17f3
	di			;17f4
	rst 30h			;17f5
	rst 38h			;17f6
	rra			;17f7
	ld a,07ch		;17f8
	ld sp,hl		;17fa
	di			;17fb
	ex (sp),hl		;17fc
	jp l1f87h		;17fd
	ld a,a			;1800
	ret m			;1801
	ret p			;1802
	ret po			;1803
	ret po			;1804
	inc bc			;1805
	ret nz			;1806
	add a,h			;1807
	ret p			;1808
	ret m			;1809
	ld a,b			;180a
	ld a,b			;180b
	inc bc			;180c
	ld a,c			;180d
	ld (bc),a		;180e
	ld a,a			;180f
	add a,e			;1810
l1811h:
	rst 38h			;1811
	rst 30h			;1812
	rst 30h			;1813
	inc bc			;1814
	rst 20h			;1815
	ld (bc),a		;1816
	rrca			;1817
	inc bc			;1818
	ld e,003h		;1819
	inc a			;181b
	adc a,b			;181c
	inc bc			;181d
	rlca			;181e
	rrca			;181f
	ld c,01eh		;1820
	inc a			;1822
	jr c,l189dh		;1823
	dec b			;1825
	ret po			;1826
	inc bc			;1827
	pop hl			;1828
	ld (bc),a		;1829
	ld a,(hl)		;182a
	add a,e			;182b
	cp 0f6h			;182c
	or 003h			;182e
	xor 002h		;1830
	rrca			;1832
	adc a,b			;1833
	rra			;1834
	dec e			;1835
	dec a			;1836
	dec sp			;1837
	ld a,e			;1838
	ld (hl),e		;1839
	pop af			;183a
	pop af			;183b
	inc bc			;183c
	ex (sp),hl		;183d
	inc bc			;183e
	rst 0			;183f
	ld (bc),a		;1840
	ret po			;1841
	inc bc			;1842
	ret nz			;1843
	inc bc			;1844
	add a,b			;1845
	ex af,af'		;1846
	nop			;1847
	inc bc			;1848
	rra			;1849
	inc bc			;184a
	ccf			;184b
	ld (bc),a		;184c
l184dh:
	ld a,a			;184d
	ex af,af'		;184e
	rst 38h			;184f
	add a,e			;1850
	ret p			;1851
	ret po			;1852
	ret po			;1853
	inc bc			;1854
	ret nz			;1855
	ld (bc),a		;1856
	add a,b			;1857
	rlca			;1858
	nop			;1859
	add a,a			;185a
	rlca			;185b
	inc bc			;185c
	rlca			;185d
	rlca			;185e
	rrca			;185f
	rra			;1860
	ccf			;1861
	add hl,bc		;1862
	rst 38h			;1863
	adc a,c			;1864
	ret m			;1865
	call m,0f8f8h		;1866
	ret p			;1869
	ret po			;186a
	ret nz			;186b
	nop			;186c
	nop			;186d
	inc bc			;186e
	ld bc,l0303h		;186f
	ld (bc),a		;1872
	rlca			;1873
	adc a,b			;1874
l1875h:
	rst 28h			;1875
	rst 20h			;1876
l1877h:
	rst 20h			;1877
	rst 0			;1878
	rst 0			;1879
	jp 08383h		;187a
	inc bc			;187d
	add a,a			;187e
	inc bc			;187f
	rst 0			;1880
	sub d			;1881
	ex (sp),hl		;1882
	ret po			;1883
	add a,b			;1884
	add a,b			;1885
	add a,c			;1886
	add a,c			;1887
	add a,e			;1888
	rst 0			;1889
	rst 38h			;188a
	cp 0fbh			;188b
	di			;188d
	di			;188e
	rst 30h			;188f
l1890h:
	rst 20h			;1890
	rst 0			;1891
	adc a,a			;1892
	rrca			;1893
	inc bc			;1894
	rst 0			;1895
	inc bc			;1896
	add a,a			;1897
	ld (bc),a		;1898
	rlca			;1899
	ld (bc),a		;189a
	ld a,b			;189b
	adc a,b			;189c
l189dh:
	ld a,c			;189d
	pop af			;189e
	di			;189f
	rst 30h			;18a0
	rst 20h			;18a1
	rst 28h			;18a2
	ld (hl),b		;18a3
	ret p			;18a4
	inc bc			;18a5
	rst 38h			;18a6
	ld (bc),a		;18a7
	add a,c			;18a8
	add a,c			;18a9
	ld bc,0e303h		;18aa
	inc bc			;18ad
	rst 20h			;18ae
	ld (bc),a		;18af
	rst 28h			;18b0
	ld (bc),a		;18b1
	adc a,081h		;18b2
	rst 8			;18b4
	inc bc			;18b5
	adc a,a			;18b6
	ld (bc),a		;18b7
	rrca			;18b8
	adc a,b			;18b9
	rst 30h			;18ba
	rst 20h			;18bb
	rst 0			;18bc
	rst 8			;18bd
	adc a,a			;18be
	adc a,a			;18bf
	ld e,01eh		;18c0
	inc bc			;18c2
	adc a,a			;18c3
	inc bc			;18c4
	ld e,002h		;18c5
	inc a			;18c7
	sub b			;18c8
	rlca			;18c9
	ex af,af'		;18ca
sub_18cbh:
	rla			;18cb
	inc d			;18cc
	rla			;18cd
	inc d			;18ce
	ex af,af'		;18cf
	rlca			;18d0
	add a,b			;18d1
	ld b,b			;18d2
	jr nz,l1875h		;18d3
	jr nz,l1877h		;18d5
	ld b,b			;18d7
	add a,b			;18d8
	ld de,08500h		;18d9
	inc bc			;18dc
	rrca			;18dd
	rra			;18de
	ccf			;18df
	ld a,a			;18e0
	dec bc			;18e1
	rst 38h			;18e2
	add a,(hl)		;18e3
	call m,0e0f0h		;18e4
	ret nz			;18e7
	add a,b			;18e8
	add a,b			;18e9
	ld a,a			;18ea
	nop			;18eb
	ld a,(bc)		;18ec
	nop			;18ed
	inc bc			;18ee
	ld bc,l0303h		;18ef
	ld (bc),a		;18f2
	rlca			;18f3
	add hl,bc		;18f4
	rst 38h			;18f5
	ld (bc),a		;18f6
	cp 003h			;18f7
	call m,0f802h		;18f9
	ld a,a			;18fc
	nop			;18fd
	add hl,bc		;18fe
	nop			;18ff
	nop			;1900
	inc a			;1901
	cp c			;1902
	nop			;1903
	nop			;1904
	ld h,b			;1905
	cp d			;1906
	nop			;1907
	nop			;1908
	inc de			;1909
	cp c			;190a
	nop			;190b
	nop			;190c
	ld a,c			;190d
	cp c			;190e
	nop			;190f
	nop			;1910
	inc a			;1911
	cp c			;1912
	inc b			;1913
	or a			;1914
	rlca			;1915
	nop			;1916
	nop			;1917
	nop			;1918
	ex af,af'		;1919
	nop			;191a
	nop			;191b
	nop			;191c
	nop			;191d
	cp b			;191e
	rlca			;191f
	nop			;1920
	nop			;1921
	nop			;1922
	ex af,af'		;1923
	nop			;1924
	nop			;1925
	nop			;1926
	nop			;1927
	or a			;1928
l1929h:
	rlca			;1929
	nop			;192a
	nop			;192b
	ex af,af'		;192c
	inc e			;192d
	ex af,af'		;192e
	nop			;192f
	nop			;1930
	nop			;1931
	cp b			;1932
	rlca			;1933
	nop			;1934
	nop			;1935
	ex af,af'		;1936
	inc e			;1937
	ex af,af'		;1938
	nop			;1939
	nop			;193a
	nop			;193b
	ld b,001h		;193c
	inc bc			;193e
	add a,c			;193f
	nop			;1940
	nop			;1941
	nop			;1942
	nop			;1943
	nop			;1944
	nop			;1945
	add a,c			;1946
	ld bc,l0002h+1		;1947
	ld b,d			;194a
	nop			;194b
	nop			;194c
	nop			;194d
	nop			;194e
	ld b,d			;194f
	nop			;1950
	ld bc,l0002h+1		;1951
	nop			;1954
	inc h			;1955
	nop			;1956
	nop			;1957
	inc h			;1958
	nop			;1959
	nop			;195a
	ld bc,l0002h+1		;195b
	nop			;195e
	nop			;195f
	jr l197ah		;1960
	nop			;1962
	nop			;1963
	nop			;1964
	ld bc,l0002h+1		;1965
	nop			;1968
	inc h			;1969
	nop			;196a
	nop			;196b
	inc h			;196c
	nop			;196d
	nop			;196e
	ld bc,l0002h+1		;196f
	ld b,d			;1972
	nop			;1973
	nop			;1974
	nop			;1975
	nop			;1976
	ld b,d			;1977
	nop			;1978
	rla			;1979
l197ah:
	ret nz			;197a
	ld b,006h		;197b
	inc b			;197d
	djnz $+98		;197e
	ret nz			;1980
	ret z			;1981
	ret nc			;1982
	jp p,l06c1h		;1983
	ex af,af'		;1986
	jr nc,l1929h		;1987
	ld h,d			;1989
	halt			;198a
	inc a			;198b
	ret m			;198c
	ld a,b			;198d
	jp nz,l0a06h		;198e
	scf			;1991
	ld l,h			;1992
	add hl,sp		;1993
	sbc a,(hl)		;1994
l1995h:
	ld e,h			;1995
	jr c,l19d0h		;1996
	ret nz			;1998
	ld bc,0d0f2h		;1999
	ret z			;199c
	ret nz			;199d
	ld h,b			;199e
	djnz $+6		;199f
	ld b,0c1h		;19a1
	ld bc,0f878h		;19a3
	inc a			;19a6
	halt			;19a7
	ld h,d			;19a8
	and b			;19a9
	jr nc,l19b4h		;19aa
	jp nz,03801h		;19ac
	jr c,$+94		;19af
	sbc a,(hl)		;19b1
	add hl,sp		;19b2
	ld l,h			;19b3
l19b4h:
	scf			;19b4
	ld a,(bc)		;19b5
	ret nz			;19b6
	ld b,006h		;19b7
	inc b			;19b9
	djnz l19ech		;19ba
	ld h,b			;19bc
	ld h,b			;19bd
	ret z			;19be
	jp p,l06c1h		;19bf
	jr nz,l1a04h		;19c2
	ret nz			;19c4
	ret po			;19c5
	ld (hl),e		;19c6
	ld a,0fch		;19c7
	ld a,b			;19c9
	jp nz,l0606h		;19ca
	ld l,h			;19cd
	ret z			;19ce
	ld l,d			;19cf
l19d0h:
	inc a			;19d0
	sbc a,h			;19d1
	ld a,b			;19d2
	jr c,l1995h		;19d3
	ld bc,0c8f2h		;19d5
	ld h,b			;19d8
	ld h,b			;19d9
	jr nc,l19ech		;19da
	inc b			;19dc
	ld b,0c1h		;19dd
	ld bc,0fc78h		;19df
	ld a,073h		;19e2
	ret po			;19e4
	ret nz			;19e5
	ld b,b			;19e6
l19e7h:
	jr nz,$-60		;19e7
	ld bc,07838h		;19e9
l19ech:
	sbc a,h			;19ec
	inc a			;19ed
l19eeh:
	ld l,d			;19ee
	ret z			;19ef
	ld l,h			;19f0
	ld b,0c0h		;19f1
	ld b,006h		;19f3
	inc b			;19f5
	ex af,af'		;19f6
	djnz $+50		;19f7
	ld h,d			;19f9
	call z,0c1f8h		;19fa
	ld b,020h		;19fd
	ld b,b			;19ff
	add a,h			;1a00
	jp nz,076e2h		;1a01
l1a04h:
	cp 07ch			;1a04
	jp nz,l0c06h		;1a06
	jr $-110		;1a09
	jp c,0387ch		;1a0b
	ld a,h			;1a0e
	inc e			;1a0f
	ret nz			;1a10
l1a11h:
	ld bc,0ccf8h		;1a11
	ld h,d			;1a14
	jr nc,$+18		;1a15
	add a,b			;1a17
	ld b,b			;1a18
	ld h,b			;1a19
	pop bc			;1a1a
	ld bc,0fe7ch		;1a1b
	halt			;1a1e
	jp po,084c2h		;1a1f
	ld b,b			;1a22
	jr nz,l19e7h		;1a23
	ld bc,07c1ch		;1a25
	jr c,l1aa6h		;1a28
	jp c,l1890h		;1a2a
	inc c			;1a2d
	pop bc			;1a2e
	ld b,000h		;1a2f
	ld h,b			;1a31
	ret nz			;1a32
	ld l,b			;1a33
	ld h,h			;1a34
	halt			;1a35
	ld a,07ch		;1a36
	jp nz,05006h		;1a38
	ret pe			;1a3b
	jr nc,l19eeh		;1a3c
	ld a,c			;1a3e
	ld a,(l1c1ch)		;1a3f
	ret nz			;1a42
	ld bc,0c8f2h		;1a43
	ld h,b			;1a46
l1a47h:
	ld h,b			;1a47
	jr nc,l1a5ah		;1a48
	inc b			;1a4a
	ld b,0c1h		;1a4b
	ld bc,03e7ch		;1a4d
	halt			;1a50
	ld h,h			;1a51
	ld l,b			;1a52
	ret nz			;1a53
	ld h,b			;1a54
	nop			;1a55
	jp nz,01c01h		;1a56
	inc e			;1a59
l1a5ah:
	ld a,(0b079h)		;1a5a
	jr nc,l1a47h		;1a5d
	ld d,b			;1a5f
	djnz l1a11h		;1a60
	rlca			;1a62
	ld h,b			;1a63
	or b			;1a64
	or 06bh			;1a65
	rrca			;1a67
	ld h,(hl)		;1a68
	ld l,c			;1a69
	ld b,0afh		;1a6a
	rlca			;1a6c
	ex af,af'		;1a6d
	inc (hl)		;1a6e
	ld e,d			;1a6f
	ld a,d			;1a70
	or d			;1a71
	ld b,h			;1a72
	dec sp			;1a73
	inc bc			;1a74
	xor a			;1a75
	rlca			;1a76
	inc a			;1a77
	ld b,d			;1a78
	sbc a,c			;1a79
	xor l			;1a7a
	cp l			;1a7b
	sbc a,c			;1a7c
	ld b,d			;1a7d
	inc a			;1a7e
	xor a			;1a7f
	rlca			;1a80
	ld b,06dh		;1a81
	ld l,a			;1a83
	ld b,058h		;1a84
	or h			;1a86
	cp h			;1a87
	ld e,b			;1a88
	or b			;1a89
	rlca			;1a8a
	ld h,b			;1a8b
	or b			;1a8c
	or 06bh			;1a8d
	rrca			;1a8f
	ld h,(hl)		;1a90
	ld l,c			;1a91
	ld b,0b0h		;1a92
	rlca			;1a94
	ex af,af'		;1a95
	inc (hl)		;1a96
	ld e,d			;1a97
	ld a,d			;1a98
	or d			;1a99
	ld b,h			;1a9a
	dec sp			;1a9b
	inc bc			;1a9c
	or b			;1a9d
	rlca			;1a9e
	inc a			;1a9f
	ld b,d			;1aa0
	sbc a,c			;1aa1
	xor l			;1aa2
	cp l			;1aa3
	sbc a,c			;1aa4
	ld b,d			;1aa5
l1aa6h:
	inc a			;1aa6
	or b			;1aa7
	rlca			;1aa8
	ld b,06dh		;1aa9
	ld l,a			;1aab
	ld b,058h		;1aac
	or h			;1aae
	cp h			;1aaf
	ld e,b			;1ab0
	or c			;1ab1
	rlca			;1ab2
	ld h,b			;1ab3
	or b			;1ab4
	or 06bh			;1ab5
	rrca			;1ab7
	ld h,(hl)		;1ab8
	ld l,c			;1ab9
	ld b,0b1h		;1aba
	rlca			;1abc
	ex af,af'		;1abd
	inc (hl)		;1abe
	ld e,d			;1abf
	ld a,d			;1ac0
	or d			;1ac1
	ld b,h			;1ac2
	dec sp			;1ac3
	inc bc			;1ac4
	or c			;1ac5
	rlca			;1ac6
	inc a			;1ac7
	ld b,d			;1ac8
	sbc a,c			;1ac9
	xor l			;1aca
	cp l			;1acb
	sbc a,c			;1acc
	ld b,d			;1acd
	inc a			;1ace
	or c			;1acf
	rlca			;1ad0
	ld b,06dh		;1ad1
	ld l,a			;1ad3
	ld b,058h		;1ad4
	or h			;1ad6
	cp h			;1ad7
	ld e,b			;1ad8
	or d			;1ad9
	rlca			;1ada
	ld h,b			;1adb
	or b			;1adc
	or 06bh			;1add
	rrca			;1adf
	ld h,(hl)		;1ae0
	ld l,c			;1ae1
	ld b,0b2h		;1ae2
	rlca			;1ae4
	ex af,af'		;1ae5
	inc (hl)		;1ae6
	ld e,d			;1ae7
	ld a,d			;1ae8
	or d			;1ae9
	ld b,h			;1aea
	dec sp			;1aeb
	inc bc			;1aec
	or d			;1aed
	rlca			;1aee
	inc a			;1aef
	ld b,d			;1af0
	sbc a,c			;1af1
	xor l			;1af2
	cp l			;1af3
	sbc a,c			;1af4
	ld b,d			;1af5
	inc a			;1af6
	or d			;1af7
	rlca			;1af8
	ld b,06dh		;1af9
	ld l,a			;1afb
	ld b,058h		;1afc
	or h			;1afe
	cp h			;1aff
	ld e,b			;1b00
	ld b,c			;1b01
	cp e			;1b02
	ld c,e			;1b03
	cp e			;1b04
	ld d,l			;1b05
	cp e			;1b06
	ld e,a			;1b07
	cp e			;1b08
	ld l,c			;1b09
	cp e			;1b0a
	ld (hl),e		;1b0b
	cp e			;1b0c
	ld a,l			;1b0d
	cp e			;1b0e
	add a,a			;1b0f
	cp e			;1b10
	sub c			;1b11
	cp e			;1b12
	sbc a,e			;1b13
	cp e			;1b14
	and e			;1b15
	cp e			;1b16
	xor e			;1b17
	cp e			;1b18
	or e			;1b19
	cp e			;1b1a
	cp e			;1b1b
	cp e			;1b1c
	jp 0cbbbh		;1b1d
	cp e			;1b20
	out (0bbh),a		;1b21
	ld c,l			;1b23
	cp h			;1b24
	rst 30h			;1b25
	cp h			;1b26
	ld sp,hl		;1b27
	cp l			;1b28
	cp e			;1b29
	cp (hl)			;1b2a
	jp 0cbbeh		;1b2b
	cp (hl)			;1b2e
	dec h			;1b2f
	cp a			;1b30
	dec l			;1b31
	cp a			;1b32
	dec (hl)		;1b33
	cp a			;1b34
	dec a			;1b35
	cp a			;1b36
	ld b,l			;1b37
	cp a			;1b38
	ld c,l			;1b39
	cp a			;1b3a
	ld d,l			;1b3b
	cp a			;1b3c
	ld e,l			;1b3d
	cp a			;1b3e
	ld h,l			;1b3f
	cp a			;1b40
	ld (bc),a		;1b41
	inc b			;1b42
	ld (hl),b		;1b43
	ld (hl),b		;1b44
	ld (hl),b		;1b45
	ld (hl),b		;1b46
	add a,a			;1b47
	add a,a			;1b48
	add a,a			;1b49
	add a,a			;1b4a
	ld (bc),a		;1b4b
	inc b			;1b4c
	ld (hl),b		;1b4d
	ld (hl),b		;1b4e
	ld (hl),b		;1b4f
	ld (hl),c		;1b50
	add a,a			;1b51
	add a,a			;1b52
	add a,a			;1b53
	adc a,b			;1b54
	ld (bc),a		;1b55
	inc b			;1b56
	ld (hl),b		;1b57
	ld (hl),b		;1b58
	ld (hl),b		;1b59
	ld (hl),d		;1b5a
	add a,a			;1b5b
	add a,a			;1b5c
	add a,a			;1b5d
	adc a,c			;1b5e
	ld (bc),a		;1b5f
	inc b			;1b60
	ld (hl),b		;1b61
	ld (hl),b		;1b62
	ld (hl),c		;1b63
	ld (hl),d		;1b64
	add a,a			;1b65
	add a,a			;1b66
	adc a,b			;1b67
	adc a,c			;1b68
	ld (bc),a		;1b69
	inc b			;1b6a
	ld (hl),b		;1b6b
	ld (hl),b		;1b6c
	ld (hl),d		;1b6d
	ld (hl),d		;1b6e
	add a,a			;1b6f
	add a,a			;1b70
	adc a,c			;1b71
	adc a,c			;1b72
	ld (bc),a		;1b73
	inc b			;1b74
	ld (hl),b		;1b75
	ld (hl),c		;1b76
	ld (hl),d		;1b77
	ld (hl),d		;1b78
	add a,a			;1b79
	adc a,b			;1b7a
	adc a,c			;1b7b
	adc a,c			;1b7c
	ld (bc),a		;1b7d
	inc b			;1b7e
	ld (hl),b		;1b7f
	ld (hl),d		;1b80
	ld (hl),d		;1b81
	ld (hl),d		;1b82
l1b83h:
	add a,a			;1b83
	adc a,c			;1b84
	adc a,c			;1b85
	adc a,c			;1b86
	ld (bc),a		;1b87
	inc b			;1b88
	ld (hl),c		;1b89
	ld (hl),d		;1b8a
	ld (hl),d		;1b8b
	ld (hl),d		;1b8c
	adc a,b			;1b8d
	adc a,c			;1b8e
	adc a,c			;1b8f
	adc a,c			;1b90
	ld (bc),a		;1b91
	inc b			;1b92
	ld (hl),d		;1b93
	ld (hl),d		;1b94
	ld (hl),d		;1b95
	ld (hl),d		;1b96
	adc a,c			;1b97
	adc a,c			;1b98
	adc a,c			;1b99
	adc a,c			;1b9a
	ld (bc),a		;1b9b
	inc bc			;1b9c
	ld (hl),b		;1b9d
	ld (hl),b		;1b9e
	ld (hl),b		;1b9f
	add a,a			;1ba0
	add a,a			;1ba1
	add a,a			;1ba2
	ld (bc),a		;1ba3
	inc bc			;1ba4
	ld (hl),b		;1ba5
	ld (hl),b		;1ba6
	ld (hl),c		;1ba7
	add a,a			;1ba8
	add a,a			;1ba9
	adc a,b			;1baa
	ld (bc),a		;1bab
	inc bc			;1bac
	ld (hl),b		;1bad
	ld (hl),b		;1bae
	ld (hl),d		;1baf
	add a,a			;1bb0
	add a,a			;1bb1
	adc a,c			;1bb2
	ld (bc),a		;1bb3
	inc bc			;1bb4
	ld (hl),b		;1bb5
	ld (hl),c		;1bb6
	ld (hl),d		;1bb7
	add a,a			;1bb8
	adc a,b			;1bb9
	adc a,c			;1bba
	ld (bc),a		;1bbb
	inc bc			;1bbc
	ld (hl),b		;1bbd
	ld (hl),d		;1bbe
	ld (hl),d		;1bbf
	add a,a			;1bc0
	adc a,c			;1bc1
	adc a,c			;1bc2
	ld (bc),a		;1bc3
	inc bc			;1bc4
	ld (hl),c		;1bc5
	ld (hl),d		;1bc6
	ld (hl),d		;1bc7
	adc a,b			;1bc8
	adc a,c			;1bc9
	adc a,c			;1bca
	ld (bc),a		;1bcb
	inc bc			;1bcc
	ld (hl),d		;1bcd
	ld (hl),d		;1bce
	ld (hl),d		;1bcf
	adc a,c			;1bd0
	adc a,c			;1bd1
	adc a,c			;1bd2
	ld a,(bc)		;1bd3
	inc c			;1bd4
	nop			;1bd5
	nop			;1bd6
	nop			;1bd7
	nop			;1bd8
	nop			;1bd9
	nop			;1bda
	nop			;1bdb
	nop			;1bdc
	ld a,e			;1bdd
	nop			;1bde
	nop			;1bdf
	nop			;1be0
	nop			;1be1
	nop			;1be2
	nop			;1be3
	nop			;1be4
	nop			;1be5
	nop			;1be6
	nop			;1be7
	ld a,h			;1be8
	rra			;1be9
	ld a,l			;1bea
	nop			;1beb
	nop			;1bec
	ld (hl),h		;1bed
	dec sp			;1bee
	ld a,(hl)		;1bef
	nop			;1bf0
	ld a,e			;1bf1
	nop			;1bf2
	rra			;1bf3
	jr nz,l1c17h		;1bf4
	ld (l0023h),hl		;1bf6
	nop			;1bf9
	inc h			;1bfa
	dec h			;1bfb
	dec h			;1bfc
	dec h			;1bfd
	ld h,027h		;1bfe
	jr z,l1b83h		;1c00
	rra			;1c02
	sub (hl)		;1c03
	ld a,(hl)		;1c04
	nop			;1c05
	ld a,d			;1c06
	ld (hl),d		;1c07
	ld (hl),d		;1c08
	ld (hl),d		;1c09
	ld (hl),d		;1c0a
	add hl,hl		;1c0b
	ld hl,(02c2bh)		;1c0c
	add hl,hl		;1c0f
	ld a,(hl)		;1c10
	nop			;1c11
	sub c			;1c12
	adc a,c			;1c13
	adc a,c			;1c14
	adc a,c			;1c15
	adc a,c			;1c16
l1c17h:
	ld d,b			;1c17
	ld d,c			;1c18
	ld d,d			;1c19
	ld d,e			;1c1a
	ld d,b			;1c1b
l1c1ch:
	sub (hl)		;1c1c
	nop			;1c1d
	ld c,e			;1c1e
	ld c,h			;1c1f
	ld c,h			;1c20
	ld c,h			;1c21
	ld c,l			;1c22
	ld c,(hl)		;1c23
	ld c,a			;1c24
	ld d,b			;1c25
	ld b,(hl)		;1c26
	ld a,(hl)		;1c27
	sub l			;1c28
	adc a,e			;1c29
	ld h,d			;1c2a
	sub (hl)		;1c2b
	nop			;1c2c
	sub d			;1c2d
	nop			;1c2e
	ld b,(hl)		;1c2f
	ld b,a			;1c30
	ld c,b			;1c31
	ld c,c			;1c32
	ld c,d			;1c33
	nop			;1c34
	nop			;1c35
	nop			;1c36
	nop			;1c37
	nop			;1c38
	nop			;1c39
	nop			;1c3a
	nop			;1c3b
	sub e			;1c3c
	ld b,(hl)		;1c3d
	sub h			;1c3e
	nop			;1c3f
	nop			;1c40
	nop			;1c41
	nop			;1c42
	nop			;1c43
	nop			;1c44
	nop			;1c45
	nop			;1c46
	nop			;1c47
	nop			;1c48
	sub d			;1c49
	nop			;1c4a
	nop			;1c4b
	nop			;1c4c
	inc c			;1c4d
	ld c,000h		;1c4e
	nop			;1c50
	nop			;1c51
	add a,b			;1c52
	nop			;1c53
	nop			;1c54
	nop			;1c55
	nop			;1c56
	nop			;1c57
	nop			;1c58
	nop			;1c59
	nop			;1c5a
	nop			;1c5b
	nop			;1c5c
	ld a,c			;1c5d
	dec l			;1c5e
	ld l,02fh		;1c5f
	ld a,e			;1c61
	nop			;1c62
	ld (hl),a		;1c63
	nop			;1c64
	nop			;1c65
	nop			;1c66
	nop			;1c67
	nop			;1c68
	nop			;1c69
	nop			;1c6a
	nop			;1c6b
	jr nc,l1c97h		;1c6c
	ld sp,03332h		;1c6e
	ld a,a			;1c71
	nop			;1c72
	nop			;1c73
	nop			;1c74
	nop			;1c75
	add a,b			;1c76
	nop			;1c77
	nop			;1c78
	nop			;1c79
	ld d,a			;1c7a
	ld d,b			;1c7b
	ld e,b			;1c7c
	ld e,c			;1c7d
	jr z,$+54		;1c7e
	dec (hl)		;1c80
	add a,l			;1c81
	nop			;1c82
	nop			;1c83
	ld a,b			;1c84
	add a,(hl)		;1c85
	nop			;1c86
	sub b			;1c87
	ld d,h			;1c88
	ld d,l			;1c89
	ld d,(hl)		;1c8a
	sub d			;1c8b
	nop			;1c8c
	ld (hl),l		;1c8d
	daa			;1c8e
	ld (hl),037h		;1c8f
	jr c,l1ccch		;1c91
	ld a,(l0077h)		;1c93
	nop			;1c96
l1c97h:
	nop			;1c97
	nop			;1c98
	nop			;1c99
	ld a,d			;1c9a
	ld (hl),d		;1c9b
	ld (hl),d		;1c9c
	ld (hl),d		;1c9d
	add hl,hl		;1c9e
	ld hl,(02c2bh)		;1c9f
	ld a,a			;1ca2
	nop			;1ca3
	nop			;1ca4
	nop			;1ca5
	nop			;1ca6
	nop			;1ca7
	sub c			;1ca8
	adc a,c			;1ca9
	adc a,c			;1caa
	adc a,c			;1cab
	ld d,b			;1cac
	ld d,c			;1cad
	ld d,d			;1cae
	ld d,e			;1caf
	sub (hl)		;1cb0
	ld a,c			;1cb1
	dec l			;1cb2
	ld l,02fh		;1cb3
	ld a,e			;1cb5
	nop			;1cb6
	adc a,h			;1cb7
	ld c,(hl)		;1cb8
	ld e,l			;1cb9
	ld e,(hl)		;1cba
	ld e,a			;1cbb
	ld h,b			;1cbc
	ld h,c			;1cbd
	adc a,(hl)		;1cbe
	nop			;1cbf
	jr nc,l1cebh		;1cc0
	ld sp,04f32h		;1cc2
	ld e,e			;1cc5
	ld e,h			;1cc6
	sbc a,h			;1cc7
	nop			;1cc8
	nop			;1cc9
	adc a,a			;1cca
	sbc a,l			;1ccb
l1ccch:
	nop			;1ccc
	nop			;1ccd
	ld d,a			;1cce
	ld d,b			;1ccf
	ld e,b			;1cd0
	ld e,c			;1cd1
	ld e,d			;1cd2
	sub (hl)		;1cd3
	nop			;1cd4
	nop			;1cd5
	nop			;1cd6
	nop			;1cd7
	sub a			;1cd8
	nop			;1cd9
	nop			;1cda
	sub b			;1cdb
	ld d,h			;1cdc
	ld d,l			;1cdd
	ld d,(hl)		;1cde
	sub d			;1cdf
sub_1ce0h:
	nop			;1ce0
	adc a,(hl)		;1ce1
	nop			;1ce2
	nop			;1ce3
	nop			;1ce4
	nop			;1ce5
	nop			;1ce6
	nop			;1ce7
	nop			;1ce8
	nop			;1ce9
	nop			;1cea
l1cebh:
	nop			;1ceb
	sub a			;1cec
	nop			;1ced
	nop			;1cee
	nop			;1cef
	nop			;1cf0
	nop			;1cf1
	nop			;1cf2
	nop			;1cf3
	nop			;1cf4
	nop			;1cf5
	nop			;1cf6
	djnz l1d09h		;1cf7
	nop			;1cf9
	nop			;1cfa
	nop			;1cfb
	nop			;1cfc
	nop			;1cfd
	nop			;1cfe
	nop			;1cff
	nop			;1d00
	nop			;1d01
	halt			;1d02
	nop			;1d03
	nop			;1d04
l1d05h:
	add a,d			;1d05
	ld b,c			;1d06
	nop			;1d07
	nop			;1d08
l1d09h:
	nop			;1d09
	nop			;1d0a
	nop			;1d0b
	nop			;1d0c
	nop			;1d0d
	nop			;1d0e
	nop			;1d0f
	nop			;1d10
	nop			;1d11
	add a,d			;1d12
	ld b,c			;1d13
	nop			;1d14
	nop			;1d15
	ld b,d			;1d16
	add a,e			;1d17
	nop			;1d18
	nop			;1d19
	nop			;1d1a
	nop			;1d1b
	nop			;1d1c
	nop			;1d1d
	nop			;1d1e
	nop			;1d1f
	add a,b			;1d20
	nop			;1d21
	nop			;1d22
	ld b,d			;1d23
	add a,e			;1d24
	nop			;1d25
	ld b,h			;1d26
	ld b,l			;1d27
	nop			;1d28
	nop			;1d29
	nop			;1d2a
	nop			;1d2b
	nop			;1d2c
	nop			;1d2d
	nop			;1d2e
	nop			;1d2f
	add a,b			;1d30
	nop			;1d31
	nop			;1d32
	ld b,h			;1d33
	ld b,l			;1d34
	nop			;1d35
	add a,h			;1d36
	ld b,b			;1d37
	nop			;1d38
	nop			;1d39
	nop			;1d3a
	nop			;1d3b
	nop			;1d3c
	nop			;1d3d
	nop			;1d3e
	nop			;1d3f
	ld a,b			;1d40
	nop			;1d41
	nop			;1d42
	add a,h			;1d43
	ld b,b			;1d44
	nop			;1d45
	nop			;1d46
	ld a,000h		;1d47
	nop			;1d49
	ld a,e			;1d4a
	dec l			;1d4b
	ld l,02fh		;1d4c
	ld a,e			;1d4e
	ld (hl),e		;1d4f
	dec sp			;1d50
	ld a,a			;1d51
	ld (hl),a		;1d52
	nop			;1d53
	ld a,000h		;1d54
	rra			;1d56
	sub (hl)		;1d57
	nop			;1d58
	nop			;1d59
	ld d,h			;1d5a
	ld d,l			;1d5b
	add hl,hl		;1d5c
	ld sp,03832h		;1d5d
	add hl,sp		;1d60
	add hl,sp		;1d61
	ld a,(0961fh)		;1d62
	ld a,h			;1d65
	jr nz,l1de7h		;1d66
	adc a,l			;1d68
	ld (hl),h		;1d69
	nop			;1d6a
	adc a,l			;1d6b
	ld (hl),d		;1d6c
	ld (hl),d		;1d6d
	ld (hl),d		;1d6e
	ld hl,(02c2bh)		;1d6f
	ld hl,0253bh		;1d72
	ld h,021h		;1d75
	ld (08b3eh),hl		;1d77
	nop			;1d7a
	halt			;1d7b
	adc a,c			;1d7c
	adc a,c			;1d7d
	adc a,c			;1d7e
	ld d,c			;1d7f
	ld d,d			;1d80
	ld d,e			;1d81
	ld c,b			;1d82
	ld h,d			;1d83
	ld c,h			;1d84
	ld c,l			;1d85
	ld c,b			;1d86
	ld c,c			;1d87
	ld h,l			;1d88
	nop			;1d89
	dec l			;1d8a
	ld l,050h		;1d8b
	ld e,b			;1d8d
	ld e,c			;1d8e
	ld e,a			;1d8f
	ld h,b			;1d90
	ld h,b			;1d91
	ld h,c			;1d92
	ld b,(hl)		;1d93
	ld a,a			;1d94
	sub e			;1d95
	ld b,a			;1d96
	sub (hl)		;1d97
	halt			;1d98
	nop			;1d99
	sub d			;1d9a
	ld d,h			;1d9b
	ld d,l			;1d9c
	ld d,(hl)		;1d9d
	sub d			;1d9e
	adc a,d			;1d9f
	ld h,d			;1da0
	sub (hl)		;1da1
	adc a,(hl)		;1da2
	nop			;1da3
	ld h,(hl)		;1da4
	nop			;1da5
	ld b,(hl)		;1da6
	ld a,a			;1da7
	nop			;1da8
	nop			;1da9
	nop			;1daa
	nop			;1dab
	nop			;1dac
	nop			;1dad
	nop			;1dae
	nop			;1daf
	adc a,a			;1db0
	nop			;1db1
	nop			;1db2
	sbc a,e			;1db3
	ld h,a			;1db4
	nop			;1db5
	nop			;1db6
	ld h,(hl)		;1db7
	nop			;1db8
	nop			;1db9
	nop			;1dba
	nop			;1dbb
	nop			;1dbc
	nop			;1dbd
	nop			;1dbe
	nop			;1dbf
	sub a			;1dc0
	nop			;1dc1
	nop			;1dc2
	ld l,e			;1dc3
	ld l,h			;1dc4
	nop			;1dc5
	sbc a,e			;1dc6
	ld h,a			;1dc7
	nop			;1dc8
	nop			;1dc9
	nop			;1dca
	nop			;1dcb
	nop			;1dcc
	nop			;1dcd
	nop			;1dce
	nop			;1dcf
	sub a			;1dd0
	nop			;1dd1
	nop			;1dd2
	ld l,c			;1dd3
	sbc a,d			;1dd4
	nop			;1dd5
	ld l,e			;1dd6
	ld l,h			;1dd7
	nop			;1dd8
	nop			;1dd9
	nop			;1dda
	nop			;1ddb
	nop			;1ddc
	nop			;1ddd
	nop			;1dde
	nop			;1ddf
	nop			;1de0
	nop			;1de1
	sbc a,c			;1de2
	ld l,b			;1de3
	nop			;1de4
	nop			;1de5
	ld l,c			;1de6
l1de7h:
	sbc a,d			;1de7
	nop			;1de8
	nop			;1de9
	nop			;1dea
	nop			;1deb
	nop			;1dec
	nop			;1ded
	nop			;1dee
	nop			;1def
	nop			;1df0
	nop			;1df1
	adc a,l			;1df2
	nop			;1df3
	nop			;1df4
	sbc a,c			;1df5
	ld l,b			;1df6
	nop			;1df7
	nop			;1df8
	djnz l1e07h		;1df9
	nop			;1dfb
	nop			;1dfc
	nop			;1dfd
	nop			;1dfe
	nop			;1dff
	nop			;1e00
	nop			;1e01
	add a,e			;1e02
	nop			;1e03
	nop			;1e04
	nop			;1e05
	nop			;1e06
l1e07h:
	nop			;1e07
	nop			;1e08
	nop			;1e09
	nop			;1e0a
	nop			;1e0b
	adc a,e			;1e0c
	add a,b			;1e0d
	ld b,l			;1e0e
sub_1e0fh:
	add a,b			;1e0f
	nop			;1e10
	nop			;1e11
	nop			;1e12
	nop			;1e13
	nop			;1e14
	nop			;1e15
	nop			;1e16
	sub d			;1e17
	ld b,a			;1e18
	ld e,e			;1e19
	ld e,h			;1e1a
	ld a,b			;1e1b
	nop			;1e1c
	nop			;1e1d
	nop			;1e1e
	nop			;1e1f
	nop			;1e20
	nop			;1e21
	nop			;1e22
	nop			;1e23
	inc a			;1e24
	dec l			;1e25
	sbc a,e			;1e26
	sub (hl)		;1e27
	nop			;1e28
	nop			;1e29
	nop			;1e2a
	nop			;1e2b
	nop			;1e2c
	nop			;1e2d
	nop			;1e2e
	nop			;1e2f
	ld b,e			;1e30
	dec a			;1e31
	ld l,e			;1e32
	ld b,l			;1e33
	nop			;1e34
	nop			;1e35
	nop			;1e36
	nop			;1e37
	nop			;1e38
	nop			;1e39
	nop			;1e3a
	ld a,e			;1e3b
	jr nz,l1e72h		;1e3c
	ld l,c			;1e3e
	ld b,b			;1e3f
	ld a,a			;1e40
	ld (hl),a		;1e41
	nop			;1e42
	nop			;1e43
	ld a,c			;1e44
	ld d,h			;1e45
	cpl			;1e46
	dec h			;1e47
	jr z,l1e7ch		;1e48
	jr c,l1e85h		;1e4a
	add hl,sp		;1e4c
	ld a,a			;1e4d
	nop			;1e4e
	ld (hl),h		;1e4f
	adc a,d			;1e50
	ld (hl),h		;1e51
	ld (hl),d		;1e52
	ld (hl),d		;1e53
	ld (hl),d		;1e54
	ld (hl),d		;1e55
	ld hl,(02c2bh)		;1e56
	add hl,sp		;1e59
	ld a,(0738bh)		;1e5a
	adc a,e			;1e5d
	adc a,c			;1e5e
	adc a,c			;1e5f
	adc a,c			;1e60
	adc a,c			;1e61
	ld d,c			;1e62
	ld d,d			;1e63
	ld d,e			;1e64
	ld h,b			;1e65
	ld h,c			;1e66
	nop			;1e67
	sub b			;1e68
	dec l			;1e69
	ld d,(hl)		;1e6a
	ld c,h			;1e6b
	ld c,a			;1e6c
	ld e,c			;1e6d
	ld e,a			;1e6e
	ld h,b			;1e6f
	ld h,b			;1e70
	sub (hl)		;1e71
l1e72h:
	nop			;1e72
	nop			;1e73
	nop			;1e74
	nop			;1e75
	nop			;1e76
	sub d			;1e77
	ld b,a			;1e78
	ld e,e			;1e79
	ld b,d			;1e7a
	ld h,a			;1e7b
l1e7ch:
	sub (hl)		;1e7c
	adc a,(hl)		;1e7d
	nop			;1e7e
	nop			;1e7f
	nop			;1e80
	nop			;1e81
	nop			;1e82
	nop			;1e83
	ld l,d			;1e84
l1e85h:
	ld h,h			;1e85
	ld b,h			;1e86
	ld l,h			;1e87
	nop			;1e88
	nop			;1e89
	nop			;1e8a
	nop			;1e8b
	nop			;1e8c
	nop			;1e8d
	nop			;1e8e
	nop			;1e8f
	ld h,e			;1e90
	ld d,h			;1e91
	add a,h			;1e92
	ld a,a			;1e93
	nop			;1e94
	nop			;1e95
	nop			;1e96
	nop			;1e97
	nop			;1e98
	nop			;1e99
	nop			;1e9a
	ld a,e			;1e9b
	jr nz,l1ed2h		;1e9c
	dec (hl)		;1e9e
	adc a,a			;1e9f
	nop			;1ea0
	nop			;1ea1
	nop			;1ea2
	nop			;1ea3
	nop			;1ea4
	nop			;1ea5
	nop			;1ea6
	nop			;1ea7
	ld (hl),h		;1ea8
	sub a			;1ea9
l1eaah:
	ld l,h			;1eaa
	sub a			;1eab
	nop			;1eac
	nop			;1ead
	nop			;1eae
	nop			;1eaf
	nop			;1eb0
	nop			;1eb1
	nop			;1eb2
	nop			;1eb3
	nop			;1eb4
	nop			;1eb5
	sbc a,d			;1eb6
	nop			;1eb7
	nop			;1eb8
	nop			;1eb9
	nop			;1eba
	ld (bc),a		;1ebb
	inc bc			;1ebc
	ld hl,(02c2bh)		;1ebd
	ld d,c			;1ec0
	ld d,d			;1ec1
	ld d,e			;1ec2
	ld (bc),a		;1ec3
	inc bc			;1ec4
	ld l,l			;1ec5
	ld l,(hl)		;1ec6
	ld l,a			;1ec7
	ret nz			;1ec8
	pop bc			;1ec9
	jp nz,l0b08h		;1eca
	nop			;1ecd
	nop			;1ece
	nop			;1ecf
	nop			;1ed0
	ld (hl),d		;1ed1
l1ed2h:
	rra			;1ed2
	jr nz,l1ef6h		;1ed3
	ld (l0023h),hl		;1ed5
	nop			;1ed8
	nop			;1ed9
	ld (hl),e		;1eda
	inc h			;1edb
	dec h			;1edc
	ld h,076h		;1edd
	ld (hl),a		;1edf
	ld a,b			;1ee0
	daa			;1ee1
	jr z,l1f58h		;1ee2
	add hl,hl		;1ee4
	ld hl,(0792bh)		;1ee5
	ld a,d			;1ee8
	ld a,e			;1ee9
	ld a,h			;1eea
	ld a,l			;1eeb
	ld a,(hl)		;1eec
	inc l			;1eed
	ld (hl),l		;1eee
	nop			;1eef
	nop			;1ef0
	nop			;1ef1
	nop			;1ef2
	nop			;1ef3
	nop			;1ef4
	add a,e			;1ef5
l1ef6h:
	add a,h			;1ef6
	add a,l			;1ef7
	dec l			;1ef8
	sub e			;1ef9
	nop			;1efa
	nop			;1efb
	nop			;1efc
	nop			;1efd
	nop			;1efe
	nop			;1eff
	and c			;1f00
	and d			;1f01
	and e			;1f02
	ccf			;1f03
	sub d			;1f04
	dec sp			;1f05
	inc a			;1f06
l1f07h:
	dec a			;1f07
	sub a			;1f08
	sbc a,b			;1f09
	sbc a,c			;1f0a
	sbc a,d			;1f0b
	sbc a,e			;1f0c
	sbc a,h			;1f0d
	ld a,000h		;1f0e
	nop			;1f10
	sub c			;1f11
	ld (hl),037h		;1f12
	jr c,l1eaah		;1f14
	sub l			;1f16
	sub (hl)		;1f17
	add hl,sp		;1f18
	ld a,(l0000h)		;1f19
	nop			;1f1c
	nop			;1f1d
	sub b			;1f1e
	ld sp,03332h		;1f1f
	inc (hl)		;1f22
	dec (hl)		;1f23
l1f24h:
	nop			;1f24
	ld (bc),a		;1f25
	inc bc			;1f26
	jr nc,l1f59h		;1f27
	adc a,c			;1f29
	ld b,d			;1f2a
	ld b,d			;1f2b
	and a			;1f2c
	ld (bc),a		;1f2d
	inc bc			;1f2e
l1f2fh:
	jr nc,l1f61h		;1f2f
	ld a,a			;1f31
	ld b,d			;1f32
	ld b,d			;1f33
	sbc a,l			;1f34
	ld (bc),a		;1f35
	inc bc			;1f36
	jr nc,l1f68h		;1f37
	ld a,a			;1f39
	ld b,d			;1f3a
	ld b,c			;1f3b
	sbc a,l			;1f3c
	ld (bc),a		;1f3d
	inc bc			;1f3e
	jr nc,l1f6fh		;1f3f
	ld a,a			;1f41
	ld b,d			;1f42
	ld b,b			;1f43
	sbc a,l			;1f44
	ld (bc),a		;1f45
	inc bc			;1f46
	cpl			;1f47
	ld l,07fh		;1f48
l1f4ah:
	ld b,c			;1f4a
	ld b,b			;1f4b
	sbc a,l			;1f4c
	ld (bc),a		;1f4d
	inc bc			;1f4e
	ld l,02eh		;1f4f
	ld a,a			;1f51
	ld b,b			;1f52
	ld b,b			;1f53
	sbc a,l			;1f54
l1f55h:
	ld (bc),a		;1f55
	inc bc			;1f56
	add a,(hl)		;1f57
l1f58h:
	add a,a			;1f58
l1f59h:
	adc a,b			;1f59
	and h			;1f5a
	and l			;1f5b
	and (hl)		;1f5c
	ld (bc),a		;1f5d
	inc bc			;1f5e
	add a,b			;1f5f
	add a,c			;1f60
l1f61h:
	add a,d			;1f61
	sbc a,(hl)		;1f62
	sbc a,a			;1f63
	and b			;1f64
	ld (bc),a		;1f65
	inc bc			;1f66
	adc a,d			;1f67
l1f68h:
	adc a,e			;1f68
	adc a,h			;1f69
	xor b			;1f6a
	xor c			;1f6b
	xor d			;1f6c
	add a,(hl)		;1f6d
	ld h,b			;1f6e
l1f6fh:
	sbc a,b			;1f6f
	ld b,001h		;1f70
	ld b,018h		;1f72
	dec c			;1f74
	nop			;1f75
	add a,h			;1f76
	ret po			;1f77
	djnz l1f8ah		;1f78
	rrca			;1f7a
	ld a,(bc)		;1f7b
	nop			;1f7c
	add a,(hl)		;1f7d
	jr c,l1f84h		;1f7e
	inc a			;1f80
	jp 08080h		;1f81
l1f84h:
	inc b			;1f84
	nop			;1f85
	add a,l			;1f86
l1f87h:
	ld (hl),b		;1f87
	inc c			;1f88
	inc bc			;1f89
l1f8ah:
	inc b			;1f8a
	jr l1f92h		;1f8b
	nop			;1f8d
	adc a,c			;1f8e
	add a,b			;1f8f
	ld b,b			;1f90
	ld b,e			;1f91
l1f92h:
	ld b,h			;1f92
	jr c,$+10		;1f93
	djnz l1ff7h		;1f95
	add a,b			;1f97
	inc b			;1f98
	nop			;1f99
	add a,l			;1f9a
	ld bc,03ec1h		;1f9b
	ex af,af'		;1f9e
	ex af,af'		;1f9f
	inc bc			;1fa0
	djnz l1f24h		;1fa1
	ret po			;1fa3
	dec b			;1fa4
	nop			;1fa5
	add a,e			;1fa6
	ld bc,0f00eh		;1fa7
	inc b			;1faa
	jr nz,l1f2fh		;1fab
	ld b,b			;1fad
	add a,b			;1fae
	rlca			;1faf
	nop			;1fb0
	ld (bc),a		;1fb1
	ex af,af'		;1fb2
	add a,d			;1fb3
	ld b,003h		;1fb4
	ld b,000h		;1fb6
	add a,d			;1fb8
	inc sp			;1fb9
	call z,l0007h+1		;1fba
	add a,d			;1fbd
	add a,b			;1fbe
	ld b,b			;1fbf
	inc bc			;1fc0
	jr nz,l1f4ah		;1fc1
	jr nc,l1f55h		;1fc3
	ld (hl),b		;1fc5
	djnz l1fd0h		;1fc6
l1fc8h:
	ex af,af'		;1fc8
	rlca			;1fc9
	inc bc			;1fca
	nop			;1fcb
	add a,d			;1fcc
	inc c			;1fcd
	inc sp			;1fce
	inc b			;1fcf
l1fd0h:
	nop			;1fd0
	ld (bc),a		;1fd1
	ld bc,00e84h		;1fd2
	ex af,af'		;1fd5
	djnz l1fc8h		;1fd6
	inc b			;1fd8
	nop			;1fd9
	add a,e			;1fda
	call pe,06013h		;1fdb
	inc bc			;1fde
	add a,b			;1fdf
	rlca			;1fe0
	nop			;1fe1
	nop			;1fe2
	rst 38h			;1fe3
	rst 38h			;1fe4
	rst 38h			;1fe5
	rst 38h			;1fe6
	rst 38h			;1fe7
	rst 38h			;1fe8
	rst 38h			;1fe9
	rst 38h			;1fea
	rst 38h			;1feb
	rst 38h			;1fec
	rst 38h			;1fed
	rst 38h			;1fee
	rst 38h			;1fef
	rst 38h			;1ff0
	rst 38h			;1ff1
	rst 38h			;1ff2
	rst 38h			;1ff3
	rst 38h			;1ff4
l1ff5h:
	rst 38h			;1ff5
	rst 38h			;1ff6
l1ff7h:
	rst 38h			;1ff7
	rst 38h			;1ff8
	rst 38h			;1ff9
	rst 38h			;1ffa
	rst 38h			;1ffb
	rst 38h			;1ffc
	rst 38h			;1ffd
	rst 38h			;1ffe
	rst 38h			;1fff
