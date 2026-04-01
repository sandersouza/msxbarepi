; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x0000 -o docs/reverse-engineering/issues/issue-188/gradius2e_banks/bank05.asm /tmp/gradius2e_bank05.bin

	org 00000h

sub_0000h:
	jr $-57			;0000
	nop			;0002
	call nz,0e280h		;0003
	ld bc,l0035h		;0006
	jp po,0c404h		;0009
	nop			;000c
sub_000dh:
	jp po,05301h		;000d
	nop			;0010
	jp po,0c304h		;0011
	add a,b			;0014
l0015h:
	jp 0c200h		;0015
	add a,b			;0018
	ex de,hl		;0019
	ld (bc),a		;001a
	ld a,(de)		;001b
	or l			;001c
	nop			;001d
	or h			;001e
	add a,b			;001f
	or h			;0020
	nop			;0021
	or e			;0022
	add a,b			;0023
	or e			;0024
	nop			;0025
	or d			;0026
	add a,b			;0027
	ex de,hl		;0028
	ld (bc),a		;0029
	ld c,074h		;002a
	nop			;002c
	ld (hl),e		;002d
	add a,b			;002e
	ld (hl),e		;002f
	nop			;0030
	ld (hl),d		;0031
	add a,b			;0032
	ex de,hl		;0033
	ld (bc),a		;0034
l0035h:
	ld a,(bc)		;0035
	ld b,h			;0036
	nop			;0037
	ld b,e			;0038
	add a,b			;0039
	ld b,e			;003a
	nop			;003b
	ld b,d			;003c
	add a,b			;003d
	ex de,hl		;003e
	ld (bc),a		;003f
	ld a,(bc)		;0040
	inc d			;0041
	nop			;0042
	inc de			;0043
	add a,b			;0044
	inc de			;0045
	nop			;0046
	ld (de),a		;0047
	add a,b			;0048
	inc b			;0049
	nop			;004a
	inc bc			;004b
	add a,b			;004c
	inc bc			;004d
	nop			;004e
	ld (bc),a		;004f
	add a,b			;0050
	rst 38h			;0051
	cp 002h			;0052
	ret m			;0054
	dec d			;0055
	jp po,0f901h		;0056
	ld a,e			;0059
	add a,b			;005a
	ex de,hl		;005b
	ld e,005h		;005c
	ret c			;005e
	ld sp,hl		;005f
	ld a,e			;0060
	add a,b			;0061
	ex de,hl		;0062
	inc b			;0063
	ld b,0dbh		;0064
	ld sp,hl		;0066
	ld a,e			;0067
	add a,b			;0068
	ex de,hl		;0069
	inc b			;006a
	ld b,0ddh		;006b
	ld sp,hl		;006d
	ld a,e			;006e
	add a,b			;006f
	ex de,hl		;0070
	inc b			;0071
	ld b,0dfh		;0072
	ld sp,hl		;0074
	ld a,e			;0075
	add a,b			;0076
	ex de,hl		;0077
	inc b			;0078
	ld b,0ffh		;0079
	and l			;007b
	nop			;007c
	and h			;007d
	add a,b			;007e
	and h			;007f
	nop			;0080
l0081h:
	and e			;0081
	add a,b			;0082
	and e			;0083
	nop			;0084
	and d			;0085
	add a,b			;0086
	jp m,0feffh		;0087
	ld (bc),a		;008a
	ret m			;008b
	dec c			;008c
	jp po,0a504h		;008d
	nop			;0090
	and l			;0091
	add a,b			;0092
	and (hl)		;0093
	nop			;0094
	rst 30h			;0095
	and a			;0096
	xor b			;0097
	xor c			;0098
	xor d			;0099
	xor e			;009a
	xor h			;009b
	xor l			;009c
	xor (hl)		;009d
	xor a			;009e
	or 0fdh			;009f
	adc a,a			;00a1
	add a,b			;00a2
	cp 002h			;00a3
	ret m			;00a5
	dec d			;00a6
	jp po,0f904h		;00a7
	xor a			;00aa
	add a,b			;00ab
	defb 0fdh,0a9h,080h ;illegal sequence	;00ac
	sub h			;00af
	add a,b			;00b0
	sub l			;00b1
	nop			;00b2
	sub l			;00b3
	add a,b			;00b4
	rst 30h			;00b5
	sub (hl)		;00b6
	sub a			;00b7
l00b8h:
	sbc a,b			;00b8
	sbc a,c			;00b9
	sbc a,d			;00ba
	sbc a,e			;00bb
	sbc a,h			;00bc
	sbc a,l			;00bd
	sbc a,(hl)		;00be
	or 0fah			;00bf
	cp 002h			;00c1
	ret m			;00c3
	dec d			;00c4
	jp po,00004h		;00c5
	nop			;00c8
	ld sp,hl		;00c9
	xor a			;00ca
	add a,b			;00cb
	defb 0fdh,0c7h,080h ;illegal sequence	;00cc
	cp 002h			;00cf
	ret m			;00d1
	dec b			;00d2
	jp po,0c101h		;00d3
	nop			;00d6
	pop bc			;00d7
	add a,b			;00d8
	jp nz,0c200h		;00d9
	add a,b			;00dc
	jp 0c300h		;00dd
	add a,b			;00e0
	call nz,sub_0000h	;00e1
	nop			;00e4
	defb 0fdh,0d5h,080h ;illegal sequence	;00e5
	cp 002h			;00e8
	jp po,0c201h		;00ea
	nop			;00ed
	rst 30h			;00ee
	jp 0c5c4h		;00ef
	add a,0c7h		;00f2
	ret z			;00f4
	nop			;00f5
l00f6h:
	or 0fdh			;00f6
	call pe,0fe80h		;00f8
	ld (bc),a		;00fb
	jp po,0f901h		;00fc
	sbc a,h			;00ff
	add a,c			;0100
l0101h:
	rst 38h			;0101
	cp 002h			;0102
l0104h:
	ret m			;0104
	jr z,$-28		;0105
l0107h:
	ld bc,l13f9h		;0107
	add a,d			;010a
	ld sp,hl		;010b
	ld a,l			;010c
l010dh:
	add a,d			;010d
	call m,sub_0b06h	;010e
	add a,c			;0111
	ret po			;0112
	djnz l010dh		;0113
l0115h:
	add hl,bc		;0115
l0116h:
	ld sp,hl		;0116
l0117h:
	inc e			;0117
l0118h:
	add a,c			;0118
l0119h:
	defb 0fdh,016h,081h ;illegal sequence	;0119
	jp po,00004h		;011c
	ei			;011f
	nop			;0120
l0121h:
	ret m			;0121
	djnz l0119h		;0122
	djnz l0118h		;0124
	jr nz,l0117h		;0126
	jr nz,l0116h		;0128
	jr nc,l0115h		;012a
	jr nc,$-24		;012c
	ld b,b			;012e
	ex (sp),hl		;012f
	ld b,b			;0130
	ex (sp),hl		;0131
	ld b,b			;0132
	defb 0ddh,040h,0dah ;illegal sequence	;0133
	ld b,b			;0136
l0137h:
	rst 10h			;0137
	ld b,b			;0138
	call nc,0fefah		;0139
	ld (bc),a		;013c
	ret po			;013d
	call sub_01feh		;013e
l0141h:
	ret m			;0141
	dec b			;0142
	jp (hl)			;0143
	ld b,0eah		;0144
	rlca			;0146
	out (0f1h),a		;0147
	ld a,a			;0149
	ccf			;014a
	defb 0fdh,04ah,081h ;illegal sequence	;014b
	cp 002h			;014e
l0150h:
	ret po			;0150
l0151h:
	call sub_01feh		;0151
	ret m			;0154
	dec b			;0155
	jp (hl)			;0156
	ld b,0eah		;0157
	rlca			;0159
	out (0f1h),a		;015a
	ld a,a			;015c
	ld l,a			;015d
	defb 0fdh,05dh ;ld e,iyl	;015e
l0160h:
	add a,c			;0160
	cp 002h			;0161
	ret po			;0163
	call sub_09f8h		;0164
	ld sp,hl		;0167
	inc e			;0168
	add a,c			;0169
	defb 0fdh,067h ;ld iyh,a	;016a
	add a,c			;016c
	cp 002h			;016d
	ret po			;016f
	call sub_09f8h		;0170
	jp po,l0104h		;0173
	jr z,l0179h		;0176
	inc h			;0178
l0179h:
	ld de,l1120h		;0179
	inc e			;017c
	ld hl,02119h		;017d
	ld d,031h		;0180
	inc de			;0182
	ld sp,04110h		;0183
	dec c			;0186
	ld b,c			;0187
	ld a,(bc)		;0188
	ld b,c			;0189
	rlca			;018a
	ld b,c			;018b
	inc b			;018c
	ld b,c			;018d
	ld bc,0fd40h		;018e
	ld (iy-07fh),l		;0191
	cp 002h			;0194
	jp po,0f901h		;0196
	sbc a,h			;0199
	add a,c			;019a
	rst 38h			;019b
	and d			;019c
	nop			;019d
	rst 30h			;019e
	and e			;019f
	and h			;01a0
l01a1h:
	and l			;01a1
	and (hl)		;01a2
	and a			;01a3
	xor b			;01a4
	xor c			;01a5
	nop			;01a6
	or 0ebh			;01a7
	inc bc			;01a9
	ld c,0a2h		;01aa
	nop			;01ac
	rst 30h			;01ad
	and e			;01ae
	and h			;01af
	and l			;01b0
	and (hl)		;01b1
	and a			;01b2
	xor b			;01b3
	xor c			;01b4
	xor d			;01b5
	or 0ebh			;01b6
	inc bc			;01b8
	ld c,072h		;01b9
l01bbh:
	nop			;01bb
	rst 30h			;01bc
	ld (hl),e		;01bd
	ld (hl),h		;01be
l01bfh:
	ld (hl),l		;01bf
	halt			;01c0
	ld (hl),a		;01c1
	ld a,b			;01c2
	ld a,c			;01c3
	ld a,d			;01c4
	or 0ebh			;01c5
	inc bc			;01c7
	ld c,042h		;01c8
	nop			;01ca
	rst 30h			;01cb
	ld b,e			;01cc
	ld b,h			;01cd
	ld b,l			;01ce
	ld b,(hl)		;01cf
l01d0h:
	ld b,a			;01d0
l01d1h:
	ld c,b			;01d1
l01d2h:
	ld c,c			;01d2
	ld c,d			;01d3
l01d4h:
	or 0ebh			;01d4
	inc bc			;01d6
	ld c,012h		;01d7
	nop			;01d9
	rst 30h			;01da
	inc de			;01db
	inc d			;01dc
	dec d			;01dd
	ld d,017h		;01de
	jr $+27			;01e0
l01e2h:
	ld a,(de)		;01e2
	or 0ebh			;01e3
	inc bc			;01e5
	ld c,002h		;01e6
	nop			;01e8
l01e9h:
	rst 30h			;01e9
	inc bc			;01ea
	inc b			;01eb
	dec b			;01ec
l01edh:
	ld b,007h		;01ed
l01efh:
	ex af,af'		;01ef
	add hl,bc		;01f0
	ld a,(bc)		;01f1
	or 0ebh			;01f2
	ld b,00eh		;01f4
	jp m,002feh		;01f6
	jp po,sub_0000h+1	;01f9
	nop			;01fc
	ld sp,hl		;01fd
sub_01feh:
	sbc a,h			;01fe
	add a,c			;01ff
	rst 38h			;0200
	rst 38h			;0201
	cp 002h			;0202
	ret m			;0204
	jr z,l01e9h		;0205
	ld bc,l13f9h		;0207
	add a,d			;020a
	ld sp,hl		;020b
	ld a,l			;020c
	add a,d			;020d
	call m,sub_0b06h	;020e
l0211h:
	add a,d			;0211
	rst 38h			;0212
	and c			;0213
	ld b,b			;0214
	and c			;0215
	sub b			;0216
	and c			;0217
	ret p			;0218
	and d			;0219
	ld (hl),c		;021a
	and e			;021b
	dec c			;021c
	and e			;021d
	ret nc			;021e
	and h			;021f
	call nz,0f5a5h		;0220
	nop			;0223
	nop			;0224
	ex de,hl		;0225
	inc bc			;0226
	inc d			;0227
	add a,b			;0228
	ld a,b			;0229
	add a,b			;022a
	cp e			;022b
	add a,b			;022c
	jp pe,02481h		;022d
	add a,c			;0230
	ld l,(hl)		;0231
	add a,c			;0232
	ret			;0233
	add a,b			;0234
	jr nc,l01bbh		;0235
	jr nc,l01bfh		;0237
	nop			;0239
	ex de,hl		;023a
	inc bc			;023b
	inc d			;023c
	ld d,b			;023d
	ld a,b			;023e
	ld d,b			;023f
	cp e			;0240
	ld d,b			;0241
l0242h:
	jp pe,02451h		;0242
	ld d,c			;0245
	ld l,(hl)		;0246
	ld d,c			;0247
	ret			;0248
	ld d,b			;0249
	jr nc,$+86		;024a
	jr nc,$+88		;024c
	nop			;024e
	ex de,hl		;024f
	inc bc			;0250
	inc d			;0251
	djnz $+122		;0252
	djnz l0211h		;0254
	djnz l0242h		;0256
	ld de,01124h		;0258
	ld l,(hl)		;025b
	ld de,l10c9h		;025c
	jr nc,$+22		;025f
	jr nc,l0279h		;0261
	nop			;0263
	ex de,hl		;0264
	inc bc			;0265
	inc d			;0266
	nop			;0267
	ld a,b			;0268
	nop			;0269
	cp e			;026a
	nop			;026b
	jp pe,02401h		;026c
	ld bc,0016eh		;026f
	ret			;0272
	nop			;0273
	jr nc,l027ah		;0274
	jr nc,$+8		;0276
	nop			;0278
l0279h:
	ex de,hl		;0279
l027ah:
	inc bc			;027a
	inc d			;027b
	jp m,07800h		;027c
	nop			;027f
	cp e			;0280
	nop			;0281
	jp pe,02401h		;0282
	ld bc,0016eh		;0285
	ret			;0288
	nop			;0289
l028ah:
	jr nc,$+6		;028a
	jr nc,$+8		;028c
	nop			;028e
	jp m,002feh		;028f
	ret m			;0292
	jr z,$-28		;0293
	ld bc,sub_0000h		;0295
	ld sp,hl		;0298
	inc de			;0299
	add a,d			;029a
	ld sp,hl		;029b
	ld a,l			;029c
	add a,d			;029d
	call m,09b03h		;029e
	add a,d			;02a1
	rst 38h			;02a2
	cp 002h			;02a3
	ret m			;02a5
	jr z,l028ah		;02a6
	ld bc,09cf9h		;02a8
	add a,c			;02ab
	rst 38h			;02ac
	cp 002h			;02ad
	ret m			;02af
	jr z,$-28		;02b0
	ld bc,sub_0000h		;02b2
	ld sp,hl		;02b5
	sbc a,h			;02b6
	add a,c			;02b7
	rst 38h			;02b8
	sub b			;02b9
	and b			;02ba
	or b			;02bb
	ret nz			;02bc
	jp nc,02010h		;02bd
	jr nc,l0302h		;02c0
	ld d,b			;02c2
	ld h,b			;02c3
	ld (hl),b		;02c4
	add a,b			;02c5
	sub b			;02c6
	and b			;02c7
	or b			;02c8
	pop de			;02c9
	nop			;02ca
	djnz l02edh		;02cb
	jr nc,l030fh		;02cd
l02cfh:
	ld d,b			;02cf
	ld h,b			;02d0
l02d1h:
	ld (hl),b		;02d1
	add a,b			;02d2
l02d3h:
	sub b			;02d3
	and b			;02d4
	or b			;02d5
l02d6h:
	ret nc			;02d6
	nop			;02d7
	djnz l02fah		;02d8
	jr nc,l02d6h		;02da
	cp 002h			;02dc
	ret po			;02de
	and b			;02df
	rst 38h			;02e0
	cp 001h			;02e1
	ret m			;02e3
	ld a,(bc)		;02e4
	jp (hl)			;02e5
	ld (bc),a		;02e6
	jp pe,0d30bh		;02e7
l02eah:
	ld h,b			;02ea
l02ebh:
	ld (hl),b		;02eb
	add a,b			;02ec
l02edh:
	ld sp,hl		;02ed
	cp c			;02ee
l02efh:
	add a,d			;02ef
	ld b,b			;02f0
	ld d,b			;02f1
	ld h,b			;02f2
	ld (hl),b		;02f3
	add a,b			;02f4
	sub b			;02f5
	rst 38h			;02f6
	cp 001h			;02f7
	ret m			;02f9
l02fah:
	ld a,(bc)		;02fa
	jp (hl)			;02fb
	ld (bc),a		;02fc
	jp pe,0d30ch		;02fd
	ld sp,hl		;0300
l0301h:
	cp c			;0301
l0302h:
	add a,d			;0302
	ld b,b			;0303
	ld d,b			;0304
	ld h,b			;0305
	ld (hl),b		;0306
	add a,b			;0307
	sub b			;0308
	and b			;0309
	or b			;030a
	rst 38h			;030b
	cp 001h			;030c
	ret m			;030e
l030fh:
	ld a,(bc)		;030f
	jp (hl)			;0310
	ld (bc),a		;0311
	jp pe,0d30bh		;0312
	jr nc,l0357h		;0315
	ld d,b			;0317
	ld h,b			;0318
	ld (hl),b		;0319
	add a,b			;031a
	ld sp,hl		;031b
	cp c			;031c
	add a,d			;031d
	ld b,b			;031e
	ld d,b			;031f
	ld h,b			;0320
	rst 38h			;0321
	cp 001h			;0322
	jp (hl)			;0324
	ld (bc),a		;0325
l0326h:
	jp pe,0d30bh		;0326
	nop			;0329
	djnz l034ch		;032a
	jr nc,l036eh		;032c
	ld d,b			;032e
	ld h,b			;032f
	ld (hl),b		;0330
	add a,b			;0331
	ld sp,hl		;0332
	cp c			;0333
	add a,d			;0334
	rst 38h			;0335
	sub d			;0336
	ld d,b			;0337
	sub d			;0338
	ld b,b			;0339
	sub d			;033a
	jr nc,l02cfh		;033b
	jr nz,l02d1h		;033d
	djnz l02d3h		;033f
	nop			;0341
	sub c			;0342
	ret p			;0343
	sub c			;0344
	ret po			;0345
	sub c			;0346
	ret nc			;0347
	sub c			;0348
	ret nz			;0349
	sub c			;034a
	or b			;034b
l034ch:
	sub c			;034c
	and b			;034d
	sub c			;034e
	sub b			;034f
	sub c			;0350
	add a,b			;0351
	sub c			;0352
	ld (hl),b		;0353
	sub c			;0354
	ld h,b			;0355
	sub c			;0356
l0357h:
	ld d,b			;0357
	sub c			;0358
	ld b,b			;0359
	jp m,l00b8h		;035a
	rst 30h			;035d
	or h			;035e
	or d			;035f
	or c			;0360
	or 0b0h			;0361
	add a,b			;0363
	or b			;0364
	ld a,0a8h		;0365
	nop			;0367
	rst 30h			;0368
	and h			;0369
	and d			;036a
	and c			;036b
	or 0a0h			;036c
l036eh:
	add a,b			;036e
	and b			;036f
l0370h:
	ld a,098h		;0370
	nop			;0372
	rst 30h			;0373
	sub h			;0374
	sub d			;0375
	sub c			;0376
l0377h:
	or 090h			;0377
	add a,b			;0379
	sub b			;037a
	ld a,088h		;037b
	nop			;037d
	rst 30h			;037e
	add a,h			;037f
	add a,d			;0380
	add a,c			;0381
	or 080h			;0382
	add a,b			;0384
l0385h:
	add a,b			;0385
	ld a,078h		;0386
	nop			;0388
	rst 30h			;0389
	ld (hl),h		;038a
	ld (hl),d		;038b
	ld (hl),c		;038c
	or 070h			;038d
	add a,b			;038f
	ld (hl),b		;0390
	ld a,058h		;0391
	nop			;0393
	rst 30h			;0394
	ld d,h			;0395
	ld d,d			;0396
	ld d,c			;0397
	or 050h			;0398
	add a,b			;039a
	ld d,b			;039b
	ld a,028h		;039c
	nop			;039e
	rst 30h			;039f
	inc h			;03a0
	ld (0f621h),hl		;03a1
	jr nz,l0326h		;03a4
	jr nz,$+64		;03a6
	ex af,af'		;03a8
	nop			;03a9
	rst 30h			;03aa
	inc b			;03ab
	ld (bc),a		;03ac
	ld bc,l00f6h		;03ad
	add a,b			;03b0
	nop			;03b1
	ld a,0fah		;03b2
	sub h			;03b4
	nop			;03b5
	sub h			;03b6
	add a,b			;03b7
	sub l			;03b8
	nop			;03b9
	rst 30h			;03ba
l03bbh:
	sub (hl)		;03bb
	sub a			;03bc
	sbc a,b			;03bd
	add a,h			;03be
	or 084h			;03bf
	add a,b			;03c1
	add a,l			;03c2
	nop			;03c3
	rst 30h			;03c4
	add a,(hl)		;03c5
	add a,a			;03c6
	adc a,b			;03c7
	ld (hl),h		;03c8
l03c9h:
	or 074h			;03c9
	add a,b			;03cb
	ld (hl),l		;03cc
	nop			;03cd
	rst 30h			;03ce
	halt			;03cf
	ld (hl),a		;03d0
	ld a,b			;03d1
	ld d,h			;03d2
	or 054h			;03d3
	add a,b			;03d5
	ld d,l			;03d6
l03d7h:
	nop			;03d7
	rst 30h			;03d8
	ld d,(hl)		;03d9
	ld d,a			;03da
	ld e,b			;03db
	inc h			;03dc
	or 024h			;03dd
	add a,b			;03df
	dec h			;03e0
	nop			;03e1
	ld h,0f7h		;03e2
	daa			;03e4
	jr z,$+6		;03e5
	or 004h			;03e7
	add a,b			;03e9
l03eah:
	ld b,000h		;03ea
	ex af,af'		;03ec
	nop			;03ed
	jp m,03091h		;03ee
	sub c			;03f1
	jr nz,l0385h		;03f2
	djnz l0377h		;03f4
	nop			;03f6
	ld (hl),b		;03f7
l03f8h:
	ret p			;03f8
	ld h,b			;03f9
	ret po			;03fa
	ld d,b			;03fb
	ret nc			;03fc
	ld b,b			;03fd
	ret nz			;03fe
	jp m,000c2h		;03ff
	rst 30h			;0402
	jp 0c5c4h		;0403
	add a,0f6h		;0406
	jp m,002e2h		;0408
	call nz,0c400h		;040b
	add a,b			;040e
	push bc			;040f
	nop			;0410
	rst 30h			;0411
	add a,0c7h		;0412
	ret z			;0414
	or 0fch			;0415
	ld (bc),a		;0417
	add hl,bc		;0418
	add a,h			;0419
	jp m,002feh		;041a
	jp po,0f903h		;041d
	ld (hl),083h		;0420
	ld sp,hl		;0422
	rst 28h			;0423
	add a,e			;0424
	jr nc,l03d7h		;0425
	jr nz,l03c9h		;0427
	djnz l03bbh		;0429
	jp po,l0015h		;042b
	nop			;042e
	rst 38h			;042f
	cp 002h			;0430
	jp po,0a203h		;0432
	ld (hl),b		;0435
	and d			;0436
	ld h,b			;0437
	ld sp,hl		;0438
	ld (hl),083h		;0439
	ld sp,hl		;043b
	rst 28h			;043c
	add a,e			;043d
	rst 38h			;043e
	cp 002h			;043f
	pop hl			;0441
	inc c			;0442
	call po,sub_0b1fh	;0443
	add hl,bc		;0446
	ex af,af'		;0447
	rlca			;0448
	ld b,004h		;0449
	ld (bc),a		;044b
	nop			;044c
	rst 38h			;044d
	cp 002h			;044e
	ret m			;0450
	ld bc,l01e2h		;0451
	ld sp,hl		;0454
	nop			;0455
	add a,h			;0456
	call m,05402h		;0457
	add a,h			;045a
	jp po,0f802h		;045b
	ld a,(bc)		;045e
	ld sp,hl		;045f
	ld e,e			;0460
	add a,e			;0461
	rst 38h			;0462
	cp 002h			;0463
	ret m			;0465
	ld bc,l01e2h		;0466
	ld sp,hl		;0469
	nop			;046a
	add a,h			;046b
	rst 0			;046c
	nop			;046d
	call m,06902h		;046e
	add a,h			;0471
	jp po,0f802h		;0472
	jr nz,$-5		;0475
	ld e,e			;0477
	add a,e			;0478
	rst 38h			;0479
	cp 002h			;047a
	ret m			;047c
	ld bc,l09f9h		;047d
	add a,h			;0480
	ret m			;0481
	add hl,bc		;0482
	ld sp,hl		;0483
	or h			;0484
	add a,e			;0485
	rst 38h			;0486
	cp 002h			;0487
	ret m			;0489
	dec c			;048a
	jp po,0f902h		;048b
	add hl,bc		;048e
	add a,h			;048f
	ret m			;0490
	dec bc			;0491
	ld sp,hl		;0492
	or h			;0493
	add a,e			;0494
	rst 38h			;0495
	cp 002h			;0496
	jp po,0c302h		;0498
	nop			;049b
	rst 30h			;049c
	call nz,0c5c4h		;049d
	add a,0c7h		;04a0
	or 0ffh			;04a2
	rst 38h			;04a4
	rst 38h			;04a5
	cp 004h			;04a6
	jp (hl)			;04a8
	inc b			;04a9
	add a,c			;04aa
	nop			;04ab
	nop			;04ac
	ld b,c			;04ad
	ld bc,08181h		;04ae
	ld b,c			;04b1
	ld bc,00181h		;04b2
	ld b,c			;04b5
	ld bc,08181h		;04b6
	ld b,c			;04b9
	ld de,l08ebh		;04ba
	inc de			;04bd
	ld sp,hl		;04be
	sbc a,084h		;04bf
	ld b,c			;04c1
	add a,c			;04c2
	ld bc,0eb81h		;04c3
	inc bc			;04c6
	ld b,031h		;04c7
	ld b,c			;04c9
	ld b,c			;04ca
	ld b,c			;04cb
	ld sp,hl		;04cc
	sbc a,084h		;04cd
	rla			;04cf
	jr nc,l04d2h		;04d0
l04d2h:
	nop			;04d2
	nop			;04d3
	ld b,c			;04d4
	ld b,c			;04d5
	rla			;04d6
	ld b,c			;04d7
	ld b,c			;04d8
	ld b,c			;04d9
	ld b,c			;04da
	defb 0fdh,0aah,084h ;illegal sequence	;04db
	ld b,c			;04de
	add a,c			;04df
	ld bc,0eb81h		;04e0
	inc bc			;04e3
	ld b,041h		;04e4
	ld b,c			;04e6
	ld bc,0fc81h		;04e7
l04eah:
	inc bc			;04ea
l04ebh:
	sbc a,084h		;04eb
	jp m,sub_01feh		;04ed
	jp (hl)			;04f0
	inc b			;04f1
	jp pe,0ed0dh		;04f2
	ld bc,0f924h		;04f5
l04f8h:
	rra			;04f8
	add a,l			;04f9
	ld sp,hl		;04fa
l04fbh:
	dec sp			;04fb
l04fch:
	add a,l			;04fc
	ld sp,hl		;04fd
l04feh:
	sub (hl)		;04fe
	add a,l			;04ff
	ld bc,0b1d4h		;0500
	out (001h),a		;0503
	ld bc,l03eah+1		;0505
	ex af,af'		;0508
	ld bc,0b1d4h		;0509
	out (001h),a		;050c
	call nc,02171h		;050e
	ld sp,hl		;0511
	sub (hl)		;0512
	add a,l			;0513
	call nc,06f71h		;0514
	or a			;0517
	sub c			;0518
l0519h:
	or c			;0519
	or c			;051a
	or c			;051b
	defb 0fdh,0f2h,084h ;illegal sequence	;051c
	call nc,0c042h		;051f
	out (042h),a		;0522
	ret nz			;0524
	call nc,04141h		;0525
	out (041h),a		;0528
	call nc,04143h		;052a
	out (041h),a		;052d
	call nc,04141h		;052f
	ld b,c			;0532
	out (041h),a		;0533
	call nc,0eb41h		;0535
	inc b			;0538
	ld a,(de)		;0539
	jp m,0c052h		;053a
	out (052h),a		;053d
	ret nz			;053f
	call nc,05151h		;0540
	out (051h),a		;0543
	call nc,05153h		;0545
	out (051h),a		;0548
	call nc,05151h		;054a
	ld d,c			;054d
	out (051h),a		;054e
	call nc,06251h		;0550
	ret nz			;0553
	out (062h),a		;0554
	ret nz			;0556
	call nc,06161h		;0557
	out (061h),a		;055a
	call nc,06163h		;055c
	out (061h),a		;055f
	call nc,06161h		;0561
	ld h,c			;0564
	out (061h),a		;0565
	call nc,07261h		;0567
	ret nz			;056a
	out (072h),a		;056b
	ret nz			;056d
	call nc,07171h		;056e
	out (071h),a		;0571
	call nc,07173h		;0573
	out (071h),a		;0576
	call nc,07171h		;0578
	ld (hl),c		;057b
	out (071h),a		;057c
	call nc,06271h		;057e
	ret nz			;0581
	out (062h),a		;0582
	ret nz			;0584
	call nc,06161h		;0585
	out (061h),a		;0588
	call nc,0b163h		;058a
	or b			;058d
	or b			;058e
	or c			;058f
	ld h,c			;0590
	push de			;0591
	or c			;0592
	or c			;0593
	or c			;0594
	jp m,l0eeah		;0595
	call nc,0b141h		;0598
	out (041h),a		;059b
	call nc,02141h		;059d
	ld b,c			;05a0
	ld b,c			;05a1
	ex de,hl		;05a2
	inc bc			;05a3
	ld b,041h		;05a4
	ld b,c			;05a6
	or c			;05a7
	out (041h),a		;05a8
	call nc,02141h		;05aa
	ld b,c			;05ad
	ld b,c			;05ae
	ld b,c			;05af
	ld hl,04141h		;05b0
	ld b,c			;05b3
	ld hl,07141h		;05b4
	or c			;05b7
	out (001h),a		;05b8
	call nc,04171h		;05ba
	out (001h),a		;05bd
	call nc,0d3b1h		;05bf
	ld bc,0eb01h		;05c2
	inc bc			;05c5
	add hl,bc		;05c6
	jp m,sub_01feh		;05c7
	ret m			;05ca
	dec c			;05cb
	jp (hl)			;05cc
	inc b			;05cd
	jp pe,0ed0bh		;05ce
	ld bc,0f966h		;05d1
	rra			;05d4
	add a,l			;05d5
	jp pe,0f90ah		;05d6
	dec sp			;05d9
	add a,l			;05da
	ld sp,hl		;05db
	inc c			;05dc
	add a,(hl)		;05dd
	jp (hl)			;05de
	inc b			;05df
	dec h			;05e0
	ld c,c			;05e1
	jp pe,0d207h		;05e2
	ld b,b			;05e5
	ld h,b			;05e6
	ld (hl),b		;05e7
	add a,b			;05e8
	sub b			;05e9
l05eah:
	or b			;05ea
	pop de			;05eb
	nop			;05ec
	jp pe,l100dh		;05ed
	inc hl			;05f0
	inc hl			;05f1
	dec h			;05f2
	ld c,a			;05f3
	pop bc			;05f4
	ld sp,hl		;05f5
	inc c			;05f6
	add a,(hl)		;05f7
	ld (09048h),hl		;05f8
	ld b,b			;05fb
	djnz $-44		;05fc
	sub b			;05fe
	ld b,b			;05ff
	sub b			;0600
	pop de			;0601
	djnz $+67		;0602
	ld de,091d2h		;0604
l0607h:
	ld b,c			;0607
sub_0608h:
	djnz l0607h		;0608
	jp z,0f885h		;060a
	dec c			;060d
	jp (hl)			;060e
	ex af,af'		;060f
	jp pe,0d40ah		;0610
	defb 0edh ;next byte illegal after ed	;0613
	ld bc,04067h		;0614
	or b			;0617
	out (040h),a		;0618
	call nc,0f840h		;061a
	dec d			;061d
	jp pe,0d20dh		;061e
	sub d			;0621
	cp b			;0622
	sub c			;0623
	sub c			;0624
	sub d			;0625
	cp b			;0626
	ret m			;0627
	dec c			;0628
	jp pe,0d30ah		;0629
	nop			;062c
	call nc,04070h		;062d
	out (000h),a		;0630
	ret m			;0632
	dec d			;0633
	jp pe,0d10dh		;0634
	jp m,sub_01feh		;0637
	ret p			;063a
	ret m			;063b
	dec d			;063c
	jp (hl)			;063d
	inc b			;063e
	jp pe,0d10ah		;063f
	defb 0edh ;next byte illegal after ed	;0642
	ld bc,l1f66h		;0643
l0646h:
	ld de,01111h		;0646
	ld de,l15c1h		;0649
	cpl			;064c
	ld hl,0c121h		;064d
	ld hl,025c1h		;0650
	ex de,hl		;0653
	ld (bc),a		;0654
	djnz l0646h		;0655
	ld bc,l13f8h		;0657
	jp pe,0c205h		;065a
	ld sp,hl		;065d
	xor l			;065e
	add a,(hl)		;065f
	ld b,c			;0660
	ld de,091d2h		;0661
	pop de			;0664
	sub c			;0665
	ld b,c			;0666
	ld de,090d2h		;0667
	ret p			;066a
	ret m			;066b
	ld e,0eah		;066c
	add hl,bc		;066e
l066fh:
	defb 0edh ;next byte illegal after ed	;066f
	ld bc,0d163h		;0670
	ld b,l			;0673
	add hl,sp		;0674
	rst 28h			;0675
	ld bc,l15f8h		;0676
	jp pe,0f90bh		;0679
	rst 30h			;067c
	add a,(hl)		;067d
	jp (hl)			;067e
	inc b			;067f
	dec h			;0680
	ld c,c			;0681
	jp pe,0d206h		;0682
	ld b,b			;0685
	ld h,b			;0686
	ld (hl),b		;0687
	add a,b			;0688
	sub b			;0689
	or b			;068a
	ret nz			;068b
	jp pe,0d10bh		;068c
	djnz $+37		;068f
	inc hl			;0691
	dec h			;0692
	ld c,a			;0693
	ld sp,hl		;0694
	rst 30h			;0695
	add a,(hl)		;0696
	ld (0f047h),hl		;0697
	ld b,b			;069a
	djnz l066fh		;069b
	sub b			;069d
	ld b,b			;069e
	djnz l06e1h		;069f
	sub b			;06a1
	pop de			;06a2
	ld de,091d2h		;06a3
	ld b,c			;06a6
	ld de,090d3h		;06a7
	defb 0fdh,03ah,086h ;illegal sequence	;06aa
	defb 0edh ;next byte illegal after ed	;06ad
	add a,d			;06ae
	ld h,e			;06af
	pop de			;06b0
	ld b,c			;06b1
	jp nc,0d191h		;06b2
	ld bc,091d2h		;06b5
	pop de			;06b8
	ld b,c			;06b9
	jp nc,0d191h		;06ba
	ld bc,l01edh		;06bd
	ld h,e			;06c0
	ld b,e			;06c1
	jp nc,0d191h		;06c2
	ld bc,091d2h		;06c5
	pop de			;06c8
	sub c			;06c9
	ld b,c			;06ca
	ld bc,091d2h		;06cb
	ex de,hl		;06ce
	ld (bc),a		;06cf
	inc hl			;06d0
	defb 0edh ;next byte illegal after ed	;06d1
	add a,d			;06d2
	ld h,e			;06d3
	pop de			;06d4
	ld b,c			;06d5
	jp nc,0d171h		;06d6
	ld bc,071d2h		;06d9
	pop de			;06dc
	ld b,c			;06dd
	jp nc,0d171h		;06de
l06e1h:
	ld bc,l01edh		;06e1
	ld h,e			;06e4
	ld b,e			;06e5
	jp nc,0d171h		;06e6
	ld bc,071d2h		;06e9
	pop de			;06ec
sub_06edh:
	ld (hl),c		;06ed
	ld b,c			;06ee
	ld bc,071d2h		;06ef
	defb 0edh ;next byte illegal after ed	;06f2
	ld de,0d163h		;06f3
	jp m,008e9h		;06f6
	jp nc,l01edh		;06f9
	ld h,a			;06fc
	call nz,0b892h		;06fd
	sub c			;0700
	sub c			;0701
	sub d			;0702
	cp b			;0703
	jp 0fad1h		;0704
	cp 001h			;0707
	ret p			;0709
	ret m			;070a
l070bh:
	inc d			;070b
	jp (hl)			;070c
	inc b			;070d
	jp pe,0d209h		;070e
	defb 0edh ;next byte illegal after ed	;0711
	add a,c			;0712
	ld h,h			;0713
	xor a			;0714
	and c			;0715
	and c			;0716
	and c			;0717
	and c			;0718
	pop bc			;0719
	and l			;071a
	cp a			;071b
	or c			;071c
	or c			;071d
l071eh:
	pop bc			;071e
	or c			;071f
	pop bc			;0720
	or l			;0721
	ex de,hl		;0722
	ld (bc),a		;0723
	djnz l071eh		;0724
	inc de			;0726
	jp pe,0f909h		;0727
	xor l			;072a
	add a,(hl)		;072b
	ld b,c			;072c
	ld de,091d2h		;072d
	pop de			;0730
	sub c			;0731
	ld b,c			;0732
	ld de,091d2h		;0733
	pop de			;0736
	ld de,01ef8h		;0737
	defb 0edh ;next byte illegal after ed	;073a
	ld bc,0d263h		;073b
	sub l			;073e
	sbc a,c			;073f
	ret m			;0740
	ld e,0e9h		;0741
	ex af,af'		;0743
	jp pe,0d20dh		;0744
	defb 0edh ;next byte illegal after ed	;0747
	ld bc,0f967h		;0748
	ld l,e			;074b
	add a,a			;074c
	ld sp,hl		;074d
	ld l,e			;074e
	add a,a			;074f
	ld sp,hl		;0750
	ld l,e			;0751
	add a,a			;0752
	jp 07862h		;0753
	rst 28h			;0756
	ld bc,014f8h		;0757
	jp pe,09009h		;075a
	sub b			;075d
	sub b			;075e
	sub b			;075f
	sub b			;0760
	sub c			;0761
	sub c			;0762
	sub c			;0763
	sub c			;0764
	sub b			;0765
	sub b			;0766
	sub b			;0767
	add iy,bc		;0768
	add a,a			;076a
	jp 07862h		;076b
	ld h,c			;076e
	ld h,c			;076f
	ld h,d			;0770
	ld a,b			;0771
	jp m,sub_01feh		;0772
	ret p			;0775
	jp (hl)			;0776
	inc b			;0777
	jp pe,0d209h		;0778
	defb 0edh ;next byte illegal after ed	;077b
	add a,c			;077c
	ld h,e			;077d
	ld l,a			;077e
l077fh:
	ld h,c			;077f
	ld h,c			;0780
	ld h,c			;0781
	ld h,c			;0782
	pop bc			;0783
	ld h,l			;0784
	ld a,a			;0785
	ld (hl),c		;0786
	ld (hl),c		;0787
	pop bc			;0788
	ld (hl),c		;0789
	pop bc			;078a
	ld (hl),l		;078b
	ex de,hl		;078c
	ld (bc),a		;078d
	djnz l077fh		;078e
	ld bc,006eah		;0790
	ld sp,hl		;0793
	xor l			;0794
	add a,(hl)		;0795
	ret p			;0796
	ld de,091d2h		;0797
	ld b,c			;079a
	pop de			;079b
	ld de,0d211h		;079c
	sub c			;079f
	ld b,c			;07a0
	sub c			;07a1
	ret m			;07a2
	ld e,0eah		;07a3
	add hl,bc		;07a5
	defb 0edh ;next byte illegal after ed	;07a6
	ld bc,0d163h		;07a7
	dec d			;07aa
	add hl,de		;07ab
	rst 28h			;07ac
	ld bc,008e9h		;07ad
	jp pe,0d20dh		;07b0
	defb 0edh ;next byte illegal after ed	;07b3
	ld bc,0f967h		;07b4
	call nc,0f987h		;07b7
	call nc,0f987h		;07ba
	call nc,0c387h		;07bd
	sub d			;07c0
	cp b			;07c1
	jp pe,0d109h		;07c2
	djnz l07d7h		;07c5
	djnz l07d9h		;07c7
	djnz $+19		;07c9
	ld de,01111h		;07cb
	djnz l07e0h		;07ce
	djnz $-1		;07d0
	ld (hl),l		;07d2
	add a,a			;07d3
	jp 0b892h		;07d4
l07d7h:
	sub c			;07d7
	sub c			;07d8
l07d9h:
	sub d			;07d9
	cp b			;07da
	jp m,l04feh		;07db
	jp (hl)			;07de
	inc b			;07df
l07e0h:
	ld sp,hl		;07e0
	ld c,088h		;07e1
	ld sp,hl		;07e3
	add hl,de		;07e4
	adc a,b			;07e5
	ex de,hl		;07e6
	inc b			;07e7
	dec b			;07e8
l07e9h:
	ld sp,hl		;07e9
l07eah:
	ld c,088h		;07ea
	ld sp,hl		;07ec
l07edh:
	add hl,de		;07ed
	adc a,b			;07ee
	ex de,hl		;07ef
	inc bc			;07f0
	dec b			;07f1
	add a,e			;07f2
	add a,c			;07f3
	add a,c			;07f4
	add a,c			;07f5
	add a,c			;07f6
	inc bc			;07f7
l07f8h:
	ld bc,0eb15h		;07f8
	jr nz,l0802h		;07fb
	add a,e			;07fd
	add a,c			;07fe
	ld de,08181h		;07ff
l0802h:
	ex de,hl		;0802
	rrca			;0803
	rlca			;0804
	add a,e			;0805
	jr nz,$+34		;0806
	ld hl,02121h		;0808
	defb 0fdh,0dch,087h ;illegal sequence	;080b
	add a,c			;080e
	ld hl,02181h		;080f
	add a,c			;0812
	ld hl,l04fbh		;0813
	ld c,088h		;0816
	jp m,08183h		;0818
	ld de,l0101h		;081b
	jp m,sub_01feh		;081e
	rst 28h			;0821
	ld bc,004e9h		;0822
	defb 0edh ;next byte illegal after ed	;0825
	ld bc,0f926h		;0826
	sub a			;0829
	adc a,b			;082a
	sub c			;082b
	ld sp,hl		;082c
	sub a			;082d
	adc a,b			;082e
	ld (hl),c		;082f
	ld sp,hl		;0830
	sub a			;0831
	adc a,b			;0832
	sub c			;0833
	ex de,hl		;0834
	inc b			;0835
	ld c,0eah		;0836
	inc c			;0838
	call nc,0ea51h		;0839
	add hl,bc		;083c
	out (051h),a		;083d
	jp pe,0d40ch		;083f
	ld d,c			;0842
	jp pe,0d309h		;0843
	ld bc,l0ce9h+1		;0846
	call nc,0ea51h		;0849
	add hl,bc		;084c
	out (051h),a		;084d
	ex de,hl		;084f
	ld (bc),a		;0850
	ld a,(de)		;0851
	ld sp,hl		;0852
	sbc a,a			;0853
	adc a,b			;0854
	ld (hl),c		;0855
	ld sp,hl		;0856
	sbc a,a			;0857
	adc a,b			;0858
	ld hl,09ff9h		;0859
	adc a,b			;085c
	ld (hl),c		;085d
	ex de,hl		;085e
	ld (bc),a		;085f
	ld c,0fch		;0860
	ld (bc),a		;0862
	jr z,l07edh		;0863
	defb 0edh ;next byte illegal after ed	;0865
	ld bc,0d355h		;0866
	ld sp,hl		;0869
	and a			;086a
	adc a,b			;086b
	defb 0edh ;next byte illegal after ed	;086c
	ld bc,0d488h		;086d
	sub c			;0870
	sub c			;0871
	ld sp,hl		;0872
	ret nc			;0873
	adc a,b			;0874
	ex de,hl		;0875
	ld (bc),a		;0876
	rlca			;0877
	ld d,c			;0878
	ld d,c			;0879
	ld sp,hl		;087a
	rst 10h			;087b
	adc a,b			;087c
	ex de,hl		;087d
	ld (bc),a		;087e
	rlca			;087f
	ld (hl),c		;0880
	ld (hl),c		;0881
	ld sp,hl		;0882
	sbc a,088h		;0883
	ex de,hl		;0885
	ld (bc),a		;0886
	rlca			;0887
	ld b,c			;0888
	ld b,c			;0889
	ld sp,hl		;088a
	push hl			;088b
	adc a,b			;088c
	ex de,hl		;088d
	ld (bc),a		;088e
	rlca			;088f
	call m,07002h		;0890
	adc a,b			;0893
	defb 0fdh,01fh,088h ;illegal sequence	;0894
	jp pe,0d40ch		;0897
	sub c			;089a
	jp pe,0d309h		;089b
	jp m,l0ce9h+1		;089e
	call nc,0ea71h		;08a1
	add hl,bc		;08a4
	out (0fah),a		;08a5
	sub e			;08a7
	sub c			;08a8
	sub c			;08a9
	sub c			;08aa
	sub c			;08ab
	ex de,hl		;08ac
	ex af,af'		;08ad
	rlca			;08ae
	ld h,e			;08af
	ld h,c			;08b0
	ld h,c			;08b1
	ld h,c			;08b2
	ld h,c			;08b3
	ld h,e			;08b4
	ld h,c			;08b5
	ld h,c			;08b6
	ld h,c			;08b7
	ld h,c			;08b8
	ld d,e			;08b9
	ld d,c			;08ba
	ld d,c			;08bb
	ld d,c			;08bc
	ld d,c			;08bd
	ld d,e			;08be
	ld d,c			;08bf
	ld d,c			;08c0
	ld d,c			;08c1
	ld d,c			;08c2
	ld b,e			;08c3
	ld b,c			;08c4
	ld b,c			;08c5
	ld b,c			;08c6
	ld b,c			;08c7
	ex de,hl		;08c8
	inc b			;08c9
	rlca			;08ca
	call m,0a702h		;08cb
	adc a,b			;08ce
	jp m,0d391h		;08cf
	sub c			;08d2
	call nc,09191h		;08d3
	jp m,0d351h		;08d6
	ld d,c			;08d9
	call nc,05151h		;08da
	jp m,0d371h		;08dd
	ld (hl),c		;08e0
	call nc,07171h		;08e1
	jp m,0d341h		;08e4
	ld b,c			;08e7
	call nc,04141h		;08e8
l08ebh:
	jp m,sub_01feh		;08eb
	rst 28h			;08ee
	ld bc,026f8h		;08ef
	jp (hl)			;08f2
	inc b			;08f3
	defb 0edh ;next byte illegal after ed	;08f4
	ld bc,0f960h		;08f5
	ld e,a			;08f8
	adc a,c			;08f9
	sub c			;08fa
	ld sp,hl		;08fb
	ld e,a			;08fc
	adc a,c			;08fd
	ld (hl),c		;08fe
	ld sp,hl		;08ff
	ld e,a			;0900
	adc a,c			;0901
	sub c			;0902
	ex de,hl		;0903
	inc b			;0904
	ld c,0eah		;0905
	dec bc			;0907
	push de			;0908
	ld d,c			;0909
	jp pe,0d409h		;090a
	ld d,c			;090d
	jp pe,0d50bh		;090e
	ld d,c			;0911
	jp pe,0d409h		;0912
	ld bc,0ead5h		;0915
	dec bc			;0918
	ld d,c			;0919
	jp pe,0d409h		;091a
	ld d,c			;091d
	ex de,hl		;091e
	ld (bc),a		;091f
	ld a,(de)		;0920
	ld sp,hl		;0921
	ld h,a			;0922
	adc a,c			;0923
	ld (hl),c		;0924
	ld sp,hl		;0925
	ld h,a			;0926
	adc a,c			;0927
	ld hl,067f9h		;0928
	adc a,c			;092b
	ld (hl),c		;092c
	ex de,hl		;092d
	ld (bc),a		;092e
	ld c,0fch		;092f
	ld (bc),a		;0931
	rst 30h			;0932
	adc a,b			;0933
	ld sp,hl		;0934
	and a			;0935
	adc a,b			;0936
	jp pe,0ed09h		;0937
	ld bc,09350h		;093a
	ld sp,hl		;093d
	ret nc			;093e
	adc a,b			;093f
	ex de,hl		;0940
	ld (bc),a		;0941
	ld b,053h		;0942
	ld sp,hl		;0944
	rst 10h			;0945
	adc a,b			;0946
	ex de,hl		;0947
	ld (bc),a		;0948
	ld b,073h		;0949
	ld sp,hl		;094b
	sbc a,088h		;094c
	ex de,hl		;094e
	ld (bc),a		;094f
	ld b,043h		;0950
	ld sp,hl		;0952
	push hl			;0953
	adc a,b			;0954
	ex de,hl		;0955
	ld (bc),a		;0956
	ld b,0fch		;0957
	ld (bc),a		;0959
	inc a			;095a
	adc a,c			;095b
	defb 0fdh,0ech,088h ;illegal sequence	;095c
	jp pe,0d50bh		;095f
	sub c			;0962
	jp pe,0d409h		;0963
	jp m,l0beah		;0966
	push de			;0969
	ld (hl),c		;096a
	jp pe,0d409h		;096b
	jp m,sub_01feh		;096e
	ret m			;0971
	ld (bc),a		;0972
	jp (hl)			;0973
	ld b,0eah		;0974
	ld a,(bc)		;0976
	pop de			;0977
	defb 0edh ;next byte illegal after ed	;0978
	ld e,050h		;0979
	cpl			;097b
	rra			;097c
	ret m			;097d
	inc bc			;097e
	defb 0edh ;next byte illegal after ed	;097f
	ld bc,0f877h		;0980
	ld a,(bc)		;0983
	jp nc,l0ce9h+1		;0984
	rlca			;0987
	ld d,e			;0988
	sub e			;0989
	or c			;098a
	ret nz			;098b
	ld (hl),b		;098c
	ld a,e			;098d
	ex de,hl		;098e
	ld (bc),a		;098f
	rra			;0990
	jp (hl)			;0991
	ex af,af'		;0992
	defb 0edh ;next byte illegal after ed	;0993
	ld (bc),a		;0994
	ld h,l			;0995
	ld sp,hl		;0996
	call c,06889h		;0997
	ld sp,hl		;099a
	call c,0b889h		;099b
	ld sp,hl		;099e
	rst 20h			;099f
	adc a,c			;09a0
	ld b,l			;09a1
	sub d			;09a2
	adc a,e			;09a3
	ld sp,hl		;09a4
	call c,06889h		;09a5
	ld sp,hl		;09a8
	call c,0b889h		;09a9
	ld sp,hl		;09ac
	rst 20h			;09ad
	adc a,c			;09ae
	ld b,(hl)		;09af
	sub b			;09b0
	or b			;09b1
	pop de			;09b2
	ld c,e			;09b3
	jp pe,0d20dh		;09b4
	defb 0edh ;next byte illegal after ed	;09b7
	ld (bc),a		;09b8
	ld h,(hl)		;09b9
	sbc a,c			;09ba
	sub b			;09bb
	or b			;09bc
	pop de			;09bd
	dec b			;09be
	jp nc,0d192h		;09bf
	ld (bc),a		;09c2
	jp nc,075b5h		;09c3
	sub d			;09c6
	add a,d			;09c7
	ld h,d			;09c8
	add a,d			;09c9
	sbc a,c			;09ca
	sub b			;09cb
	or b			;09cc
	pop de			;09cd
	dec b			;09ce
	jp nc,0d192h		;09cf
	ld (bc),a		;09d2
	jp nc,0d1bbh		;09d3
	ld b,l			;09d6
	ld h,d			;09d7
	add a,d			;09d8
	ld (iy-077h),c		;09d9
	out (092h),a		;09dc
	jp nc,02045h		;09de
	djnz $-43		;09e1
	sub b			;09e3
	or d			;09e4
	jp nc,022fah		;09e5
	sbc a,b			;09e8
	ld d,l			;09e9
l09eah:
	ld (bc),a		;09ea
	ld d,d			;09eb
	ld b,b			;09ec
	ret nz			;09ed
	out (0b0h),a		;09ee
	jp nc,0f9fah		;09f0
	sub l			;09f3
	adc a,d			;09f4
	defb 0edh ;next byte illegal after ed	;09f5
	ld e,041h		;09f6
sub_09f8h:
	sbc a,a			;09f8
l09f9h:
	sbc a,a			;09f9
	defb 0edh ;next byte illegal after ed	;09fa
	ld (bc),a		;09fb
	ld b,(hl)		;09fc
	jp pe,l070bh		;09fd
	ld d,e			;0a00
	sub e			;0a01
	or c			;0a02
	ret nz			;0a03
	ld (hl),b		;0a04
	ld a,e			;0a05
	ex de,hl		;0a06
	ld (bc),a		;0a07
	inc de			;0a08
	jp (hl)			;0a09
l0a0ah:
	ex af,af'		;0a0a
	jp pe,0d30ch		;0a0b
	defb 0edh ;next byte illegal after ed	;0a0e
	ld bc,09265h		;0a0f
	jp nc,02045h		;0a12
	djnz l09eah		;0a15
	sub b			;0a17
	or d			;0a18
	jp nc,0f063h		;0a19
	jr nz,$+66		;0a1c
	ld h,b			;0a1e
	ld b,b			;0a1f
l0a20h:
	jr nz,$-15		;0a20
	ld bc,042d3h		;0a22
	sub l			;0a25
	or b			;0a26
	sub b			;0a27
	ld b,b			;0a28
	ld (hl),d		;0a29
	jp nc,0d378h		;0a2a
	sub d			;0a2d
	jp nc,0d323h		;0a2e
	sub b			;0a31
	jp nc,09020h		;0a32
	jr nz,l0a0ah		;0a35
	sub b			;0a37
	jp nc,0d305h		;0a38
	sub d			;0a3b
	jp nc,0d302h		;0a3c
	or b			;0a3f
	ret nz			;0a40
	ld b,b			;0a41
	or l			;0a42
	jp nc,04222h		;0a43
	ld (0b2d3h),hl		;0a46
	ld b,d			;0a49
	ex de,hl		;0a4a
	ld (bc),a		;0a4b
	ld b,e			;0a4c
	ret p			;0a4d
	ret m			;0a4e
	dec bc			;0a4f
	jp pe,0ed0ah		;0a50
	ld bc,0d355h		;0a53
	sub e			;0a56
	jp nc,04000h		;0a57
	sub l			;0a5a
	out (093h),a		;0a5b
	jp nc,05000h		;0a5d
	sub l			;0a60
	out (073h),a		;0a61
	or b			;0a63
	jp nc,07520h		;0a64
	rst 28h			;0a67
	ld bc,08292h		;0a68
	ld h,d			;0a6b
	add a,d			;0a6c
	ret p			;0a6d
	jp nc,0d193h		;0a6e
	nop			;0a71
	ld b,b			;0a72
	sub l			;0a73
	jp nc,0d193h		;0a74
	nop			;0a77
	ld d,b			;0a78
	sub l			;0a79
	jp nc,0b073h		;0a7a
	pop de			;0a7d
	jr nz,l0af5h		;0a7e
	pop de			;0a80
	ld b,b			;0a81
	jp nc,040b0h		;0a82
	ex de,hl		;0a85
	ld (bc),a		;0a86
	rlca			;0a87
	pop de			;0a88
	ld h,b			;0a89
	jr nz,$-44		;0a8a
	sub b			;0a8c
	pop de			;0a8d
l0a8eh:
	add a,b			;0a8e
	ld b,b			;0a8f
	jp nc,0fdb0h		;0a90
	jp p,0fe89h		;0a93
	ld bc,l01efh		;0a96
	ret m			;0a99
	ld (bc),a		;0a9a
	jp (hl)			;0a9b
	ld b,0eah		;0a9c
	add hl,bc		;0a9e
	jp nc,l1eedh		;0a9f
	ld b,c			;0aa2
	jp m,095f9h		;0aa3
	adc a,d			;0aa6
	ld c,a			;0aa7
	ld c,a			;0aa8
	jp (hl)			;0aa9
	inc b			;0aaa
	ret m			;0aab
	dec d			;0aac
	defb 0edh ;next byte illegal after ed	;0aad
	ld bc,0f040h		;0aae
	jp pe,0d009h		;0ab1
	ld d,c			;0ab4
	ld bc,091d1h		;0ab5
	ld d,c			;0ab8
	sub c			;0ab9
	ret nc			;0aba
	ld bc,l02ebh		;0abb
	dec bc			;0abe
	ld (hl),c		;0abf
	ld hl,0b1d1h		;0ac0
	ld (hl),c		;0ac3
	or c			;0ac4
	ret nc			;0ac5
	ld hl,l02ebh		;0ac6
	ld a,(bc)		;0ac9
	call m,0a402h		;0aca
	adc a,d			;0acd
	rst 28h			;0ace
	ld bc,l15f8h		;0acf
	jp (hl)			;0ad2
	ex af,af'		;0ad3
	jp pe,0d20bh		;0ad4
	defb 0edh ;next byte illegal after ed	;0ad7
	ld bc,0f980h		;0ad8
	ld b,a			;0adb
	adc a,e			;0adc
	ret p			;0add
	ld (hl),b		;0ade
	ret nz			;0adf
	ld (hl),b		;0ae0
	ld (hl),b		;0ae1
	jr nz,l0b54h		;0ae2
	ld h,b			;0ae4
	ret nz			;0ae5
	ld (hl),b		;0ae6
	ld (hl),b		;0ae7
	jr nz,l0b5ah		;0ae8
l0aeah:
	rst 28h			;0aea
l0aebh:
	ld bc,047f9h		;0aeb
	adc a,e			;0aee
	ld (hl),b		;0aef
	ret nz			;0af0
	ld (hl),b		;0af1
	ld (hl),b		;0af2
	jr nz,$+114		;0af3
l0af5h:
	ld (hl),b		;0af5
	ret nz			;0af6
	ld (hl),b		;0af7
l0af8h:
	ld (hl),b		;0af8
	jr nz,$+114		;0af9
	sub b			;0afb
	jr nz,l0a8eh		;0afc
	sub b			;0afe
	jr nz,$-110		;0aff
	ex de,hl		;0b01
	ld (bc),a		;0b02
	ex af,af'		;0b03
	sub b			;0b04
	ld d,b			;0b05
sub_0b06h:
	sub b			;0b06
	sub b			;0b07
	ld d,b			;0b08
	sub b			;0b09
	ex de,hl		;0b0a
	ld (bc),a		;0b0b
	ex af,af'		;0b0c
	or b			;0b0d
	ld b,b			;0b0e
	add a,b			;0b0f
	ex de,hl		;0b10
	ex af,af'		;0b11
	dec b			;0b12
	call m,0da02h		;0b13
	adc a,d			;0b16
	ret m			;0b17
	dec d			;0b18
	jp (hl)			;0b19
	ex af,af'		;0b1a
	jp pe,0d20ch		;0b1b
	defb 0edh ;next byte illegal after ed	;0b1e
sub_0b1fh:
	ld bc,04176h		;0b1f
	ld b,b			;0b22
	ld b,b			;0b23
	ld b,b			;0b24
	ld b,b			;0b25
	ex de,hl		;0b26
	ld (bc),a		;0b27
	rlca			;0b28
	ld d,c			;0b29
	ld d,b			;0b2a
	ld d,b			;0b2b
	ld d,b			;0b2c
	ld d,b			;0b2d
	ex de,hl		;0b2e
	ld (bc),a		;0b2f
	rlca			;0b30
	ld (hl),c		;0b31
	ld (hl),b		;0b32
	ld (hl),b		;0b33
	ld (hl),b		;0b34
	ld (hl),b		;0b35
	ex de,hl		;0b36
	ld (bc),a		;0b37
l0b38h:
	rlca			;0b38
l0b39h:
	ret m			;0b39
	ld (bc),a		;0b3a
	out (045h),a		;0b3b
l0b3dh:
	jp nc,04222h		;0b3d
	call m,sub_1702h	;0b40
	adc a,e			;0b43
	defb 0fdh,0a4h ;and iyh	;0b44
	adc a,d			;0b46
	sub b			;0b47
	ret nz			;0b48
	sub b			;0b49
	sub b			;0b4a
l0b4bh:
	ld b,b			;0b4b
	sub b			;0b4c
	ex de,hl		;0b4d
	ld (bc),a		;0b4e
	ex af,af'		;0b4f
	jp m,l0deah		;0b50
	defb 0edh ;next byte illegal after ed	;0b53
l0b54h:
	ld bc,0ef61h		;0b54
l0b57h:
	ld bc,0a5f9h		;0b57
l0b5ah:
	adc a,e			;0b5a
	jp pe,0d30bh		;0b5b
	defb 0edh ;next byte illegal after ed	;0b5e
	ld (bc),a		;0b5f
	ld (hl),b		;0b60
	nop			;0b61
	jr nz,l0b38h		;0b62
	jr nz,l0b39h		;0b64
	jr nz,$-42		;0b66
	jr nz,l0b3dh		;0b68
	jr nz,l0b57h		;0b6a
	inc b			;0b6c
	ld (de),a		;0b6d
	jp pe,0ed0dh		;0b6e
	ld bc,0d461h		;0b71
	jr nz,sub_0b06h		;0b74
	jr nz,l0b4bh		;0b76
	ld (l03eah+1),hl	;0b78
	ex af,af'		;0b7b
	call nc,02121h		;0b7c
	ld hl,070d5h		;0b7f
	call nc,0d520h		;0b82
	ld (hl),b		;0b85
	call nc,0eb72h		;0b86
	inc bc			;0b89
	ld a,(bc)		;0b8a
	push de			;0b8b
	ld (hl),c		;0b8c
	ld (hl),c		;0b8d
	ld (hl),c		;0b8e
	call m,06e04h		;0b8f
	adc a,e			;0b92
	and b			;0b93
	ld d,b			;0b94
	and b			;0b95
	ld sp,hl		;0b96
	push bc			;0b97
	adc a,e			;0b98
l0b99h:
	ex de,hl		;0b99
	inc bc			;0b9a
	dec b			;0b9b
	and b			;0b9c
	ld d,b			;0b9d
	and b			;0b9e
	ld sp,hl		;0b9f
	ret nc			;0ba0
	adc a,e			;0ba1
	defb 0fdh,05bh,08bh ;illegal sequence	;0ba2
	cp 001h			;0ba5
	jp (hl)			;0ba7
l0ba8h:
	rlca			;0ba8
	out (020h),a		;0ba9
l0babh:
	jr nz,$+34		;0bab
	call nc,09090h		;0bad
	sub b			;0bb0
	and b			;0bb1
l0bb2h:
	and b			;0bb2
	and b			;0bb3
	ld d,b			;0bb4
l0bb5h:
	ld d,b			;0bb5
l0bb6h:
	ld d,b			;0bb6
	ld (hl),b		;0bb7
	ld (hl),b		;0bb8
l0bb9h:
	ld (hl),b		;0bb9
	jr nz,$+34		;0bba
	jr nz,l0beeh		;0bbc
	jr nc,l0bf0h		;0bbe
	push de			;0bc0
	and b			;0bc1
	and b			;0bc2
	and b			;0bc3
	jp m,0a0d4h		;0bc4
	ld d,b			;0bc7
	and b			;0bc8
	push de			;0bc9
	and b			;0bca
	call nc,0d550h		;0bcb
	and b			;0bce
	jp m,030d4h		;0bcf
	and b			;0bd2
	jr nc,l0ba8h		;0bd3
	jr nc,l0babh		;0bd5
	and b			;0bd7
	out (030h),a		;0bd8
	call nc,0a030h		;0bda
	jr nc,l0bb2h		;0bdd
	jr nc,l0bb5h		;0bdf
	jr nc,l0bb6h		;0be1
	jr nc,l0bb9h		;0be3
	jr nc,l0c17h		;0be5
	jr nc,l0c59h		;0be7
	ld (hl),b		;0be9
l0beah:
	ld (hl),b		;0bea
l0bebh:
	and b			;0beb
	and b			;0bec
	and b			;0bed
l0beeh:
	out (030h),a		;0bee
l0bf0h:
	jr nc,$+50		;0bf0
	jp m,l04feh		;0bf2
	jp (hl)			;0bf5
	rlca			;0bf6
	add a,b			;0bf7
	jr nz,$-126		;0bf8
	ex de,hl		;0bfa
	ex af,af'		;0bfb
	add hl,bc		;0bfc
	add a,b			;0bfd
	jr nz,l0bebh		;0bfe
	ld a,(bc)		;0c00
	inc b			;0c01
	jr nz,l0c24h		;0c02
	jr nz,$+34		;0c04
	ld bc,l1000h		;0c06
l0c09h:
	nop			;0c09
l0c0ah:
	nop			;0c0a
	ex de,hl		;0c0b
	inc bc			;0c0c
l0c0dh:
	rlca			;0c0d
	ld hl,02121h		;0c0e
	call m,sub_0608h	;0c11
	adc a,h			;0c14
	add a,c			;0c15
	add a,b			;0c16
l0c17h:
	jr nz,l0b99h		;0c17
	add a,b			;0c19
	ex de,hl		;0c1a
	ex af,af'		;0c1b
	rlca			;0c1c
	defb 0fdh,0fdh,08bh ;illegal sequence	;0c1d
	ret m			;0c20
	jr z,l0c0dh		;0c21
l0c23h:
	rlca			;0c23
l0c24h:
	defb 0edh ;next byte illegal after ed	;0c24
	ld bc,0f960h		;0c25
	and l			;0c28
	adc a,e			;0c29
l0c2ah:
	ret m			;0c2a
	ld h,0edh		;0c2b
	ld bc,0ea60h		;0c2d
	rlca			;0c30
	nop			;0c31
	jr nz,l0c09h		;0c32
	jr nz,l0c0ah		;0c34
	jr nz,l0c23h		;0c36
	ld (bc),a		;0c38
	ld b,0fch		;0c39
	inc b			;0c3b
	ld hl,(0f88ch)		;0c3c
	jr z,l0c2ah		;0c3f
	rlca			;0c41
	jp pe,0d407h		;0c42
	defb 0edh ;next byte illegal after ed	;0c45
	ld bc,02060h		;0c46
	jr nz,$+34		;0c49
	ret nz			;0c4b
	jr nz,$+34		;0c4c
	ex de,hl		;0c4e
	inc bc			;0c4f
	ex af,af'		;0c50
	jr nz,$-19		;0c51
	ld b,003h		;0c53
	ld (hl),b		;0c55
	ld (hl),b		;0c56
	ld (hl),b		;0c57
	ret nz			;0c58
l0c59h:
	ld (hl),b		;0c59
	ld (hl),b		;0c5a
	ex de,hl		;0c5b
	inc bc			;0c5c
	ex af,af'		;0c5d
	call nc,0d570h		;0c5e
	ld (hl),b		;0c61
	ex de,hl		;0c62
	inc bc			;0c63
	ld b,0fch		;0c64
	inc b			;0c66
	ld a,08ch		;0c67
	jp pe,0ed08h		;0c69
	ld bc,0f961h		;0c6c
	push bc			;0c6f
	adc a,e			;0c70
	ei			;0c71
	inc b			;0c72
	ld l,(hl)		;0c73
l0c74h:
	adc a,h			;0c74
	ld sp,hl		;0c75
	ret nc			;0c76
	adc a,e			;0c77
	ld iy,(0f88ch)		;0c78
	dec d			;0c7c
	jp pe,0f909h		;0c7d
	inc (hl)		;0c80
	adc a,l			;0c81
	ld (hl),b		;0c82
	and b			;0c83
	jp nc,07030h		;0c84
	and b			;0c87
	pop de			;0c88
	jr nc,l0c74h		;0c89
	inc bc			;0c8b
	jp pe,0c003h		;0c8c
	jp (hl)			;0c8f
	rlca			;0c90
	ret nc			;0c91
	jr nz,$-45		;0c92
	sub b			;0c94
	ld (hl),b		;0c95
	ex de,hl		;0c96
	inc b			;0c97
	rlca			;0c98
	jp pe,0f904h		;0c99
	ld e,h			;0c9c
	adc a,l			;0c9d
	ld (hl),b		;0c9e
	ld sp,hl		;0c9f
	ld e,h			;0ca0
	adc a,l			;0ca1
	ld (hl),b		;0ca2
	jp pe,0f902h		;0ca3
	ld e,h			;0ca6
	adc a,l			;0ca7
	ld (hl),b		;0ca8
	jp pe,0f901h		;0ca9
	ld e,h			;0cac
	adc a,l			;0cad
	jp (hl)			;0cae
	inc b			;0caf
	ld (hl),b		;0cb0
	ret m			;0cb1
	ld a,(bc)		;0cb2
	ld sp,hl		;0cb3
	add hl,hl		;0cb4
	adc a,l			;0cb5
	ld sp,hl		;0cb6
	ld h,c			;0cb7
	adc a,l			;0cb8
	jp pe,0f907h		;0cb9
	ld a,b			;0cbc
	adc a,l			;0cbd
	jp nc,0d1b0h		;0cbe
	nop			;0cc1
	jp nc,090b0h		;0cc2
	or b			;0cc5
	sub b			;0cc6
	ld (hl),b		;0cc7
	sub b			;0cc8
	ld (hl),b		;0cc9
	ld d,b			;0cca
	ld (hl),b		;0ccb
	ld d,b			;0ccc
	ld b,b			;0ccd
	jp pe,0f909h		;0cce
	ld h,c			;0cd1
	adc a,l			;0cd2
	jp pe,0d006h		;0cd3
	nop			;0cd6
l0cd7h:
	pop de			;0cd7
l0cd8h:
	or b			;0cd8
	sub b			;0cd9
	or b			;0cda
	sub b			;0cdb
	ld (hl),b		;0cdc
	sub b			;0cdd
	ld (hl),b		;0cde
	ld d,b			;0cdf
	ld (hl),b		;0ce0
	ld d,b			;0ce1
	ld b,b			;0ce2
	ld d,b			;0ce3
	ld b,b			;0ce4
	jr nz,$+66		;0ce5
l0ce7h:
	jr nz,l0ce9h		;0ce7
l0ce9h:
	jr nz,l0cebh		;0ce9
l0cebh:
	jp nc,0d1b0h		;0ceb
	nop			;0cee
	jp nc,090b0h		;0cef
	call m,0b102h		;0cf2
	adc a,h			;0cf5
	ret m			;0cf6
	dec d			;0cf7
	jp (hl)			;0cf8
	rlca			;0cf9
	jp pe,0d309h		;0cfa
	defb 0edh ;next byte illegal after ed	;0cfd
	inc b			;0cfe
	ld d,b			;0cff
	jr nz,$-44		;0d00
	jr nz,l0cd7h		;0d02
	jr nz,l0cd8h		;0d04
	ld bc,0f1d3h		;0d06
	ld (hl),l		;0d09
	sbc a,h			;0d0a
	jp nc,0a191h		;0d0b
	pop de			;0d0e
	ld bc,020d2h		;0d0f
l0d12h:
	pop de			;0d12
	jr nz,l0ce7h		;0d13
l0d15h:
	jr nz,$-45		;0d15
	nop			;0d17
	jp nc,07c20h		;0d18
	jp p,0d1eeh		;0d1b
	jr nz,l0d20h		;0d1e
l0d20h:
	ld (hl),b		;0d20
	nop			;0d21
l0d22h:
	jp nc,050a0h		;0d22
	defb 0fdh,08ah,08ch ;illegal sequence	;0d25
	rst 38h			;0d28
	jp (hl)			;0d29
l0d2ah:
	rlca			;0d2a
	jp pe,0ed09h		;0d2b
	inc b			;0d2e
	jr nc,l0d22h		;0d2f
	ld h,e			;0d31
	jp nc,0fefah		;0d32
	ld bc,l07e9h		;0d35
	defb 0edh ;next byte illegal after ed	;0d38
	ld (bc),a		;0d39
	ld d,b			;0d3a
	jp nc,0d120h		;0d3b
	jr nz,l0d12h		;0d3e
	jr nz,l0d15h		;0d40
	sub b			;0d42
	jp nc,0d390h		;0d43
	sub b			;0d46
	and b			;0d47
	jp nc,0d3a0h		;0d48
	and b			;0d4b
	ld d,b			;0d4c
	jp nc,0d350h		;0d4d
	ld d,b			;0d50
	ld (hl),b		;0d51
	jp nc,0d370h		;0d52
	ld (hl),b		;0d55
l0d56h:
	jr nz,l0d2ah		;0d56
	jr nz,$-43		;0d58
	jr nz,l0d56h		;0d5a
	ret nc			;0d5c
	jr nz,$-45		;0d5d
	sub b			;0d5f
	jp m,0b040h		;0d60
	pop de			;0d63
	ld b,(hl)		;0d64
	jp nc,0d150h		;0d65
	nop			;0d68
	ld d,b			;0d69
	push bc			;0d6a
	jp nc,05242h		;0d6b
	ret m			;0d6e
	dec d			;0d6f
	pop de			;0d70
	jp m,020d0h		;0d71
	pop de			;0d74
	sub b			;0d75
	ld (hl),b		;0d76
	jp m,05070h		;0d77
	ld b,b			;0d7a
	ld d,b			;0d7b
	ld b,b			;0d7c
	jr nz,l0dbfh		;0d7d
	jr nz,l0d81h		;0d7f
l0d81h:
	jr nz,l0d83h		;0d81
l0d83h:
	jp m,046d1h		;0d83
l0d86h:
	jp nc,0d150h		;0d86
l0d89h:
	nop			;0d89
	ld d,b			;0d8a
	push bc			;0d8b
	jp nc,0b040h		;0d8c
	pop de			;0d8f
	ld b,b			;0d90
	jp nc,0d150h		;0d91
	nop			;0d94
	ld d,b			;0d95
	jp (hl)			;0d96
	inc bc			;0d97
	ret nz			;0d98
	jp m,l07e9h		;0d99
	pop de			;0d9c
	nop			;0d9d
	jp nc,090b0h		;0d9e
	or b			;0da1
	sub b			;0da2
	ld (hl),b		;0da3
	sub b			;0da4
	ld (hl),b		;0da5
	ld d,b			;0da6
	jp m,l0af8h		;0da7
	jp pe,0f908h		;0daa
	inc (hl)		;0dad
	adc a,l			;0dae
	jr nc,l0d83h		;0daf
	jr nc,l0d86h		;0db1
	jr nc,l0d89h		;0db3
	and b			;0db5
	out (0a0h),a		;0db6
	call nc,0f8a0h		;0db8
	dec d			;0dbb
	jp pe,0d005h		;0dbc
l0dbfh:
	jr nz,$-45		;0dbf
	sub b			;0dc1
	ld (hl),b		;0dc2
	ex de,hl		;0dc3
	inc b			;0dc4
	rlca			;0dc5
	jp pe,0f904h		;0dc6
	ld (hl),d		;0dc9
	adc a,l			;0dca
	jp pe,0f903h		;0dcb
	ld (hl),d		;0dce
	adc a,l			;0dcf
	jp pe,0f902h		;0dd0
	ld (hl),d		;0dd3
	adc a,l			;0dd4
	jp pe,0f901h		;0dd5
	ld (hl),d		;0dd8
	adc a,l			;0dd9
	ld sp,hl		;0dda
	add hl,hl		;0ddb
	adc a,l			;0ddc
	rst 28h			;0ddd
	ld bc,0b040h		;0dde
	ld sp,hl		;0de1
	add a,h			;0de2
	adc a,l			;0de3
	jp pe,0e907h		;0de4
	rlca			;0de7
	ld (hl),b		;0de8
	ld d,b			;0de9
l0deah:
	ld b,b			;0dea
	ld d,b			;0deb
	ld b,b			;0dec
	jr nz,l0e2fh		;0ded
	jr nz,l0df1h		;0def
l0df1h:
	jr nz,l0df3h		;0df1
l0df3h:
	jp nc,004e9h		;0df3
	or b			;0df6
	jp (hl)			;0df7
l0df8h:
	rlca			;0df8
	pop de			;0df9
	ld (hl),b		;0dfa
	ld d,b			;0dfb
	ld b,b			;0dfc
	ld d,b			;0dfd
	ld b,b			;0dfe
	jr nz,$+66		;0dff
	jr nz,l0e03h		;0e01
l0e03h:
	jr nz,l0e05h		;0e03
l0e05h:
	jp nc,0eab0h		;0e05
	add hl,bc		;0e08
	jp nc,0b040h		;0e09
	ld sp,hl		;0e0c
	add a,h			;0e0d
	adc a,l			;0e0e
	jp pe,0e906h		;0e0f
	rlca			;0e12
	ret nc			;0e13
	nop			;0e14
	pop de			;0e15
	or b			;0e16
l0e17h:
	sub b			;0e17
l0e18h:
	or b			;0e18
	sub b			;0e19
	ld (hl),b		;0e1a
	sub b			;0e1b
	ld (hl),b		;0e1c
	ld d,b			;0e1d
	ld (hl),b		;0e1e
	ld d,b			;0e1f
l0e20h:
	jp (hl)			;0e20
	inc b			;0e21
	ld b,b			;0e22
l0e23h:
	jp (hl)			;0e23
l0e24h:
	rlca			;0e24
	ret nc			;0e25
	nop			;0e26
	pop de			;0e27
	or b			;0e28
	sub b			;0e29
	or b			;0e2a
l0e2bh:
	sub b			;0e2b
	ld (hl),b		;0e2c
	sub b			;0e2d
	ld (hl),b		;0e2e
l0e2fh:
	ld d,b			;0e2f
	ld (hl),b		;0e30
	ld d,b			;0e31
	ld b,b			;0e32
	call m,0da02h		;0e33
	adc a,l			;0e36
	ret m			;0e37
	ld a,(bc)		;0e38
	jp (hl)			;0e39
	rlca			;0e3a
	jp pe,0ed07h		;0e3b
	inc b			;0e3e
	ld d,b			;0e3f
	jp nc,0d120h		;0e40
	jr nz,l0e17h		;0e43
	jr nz,l0e18h		;0e45
	nop			;0e47
	jp nc,0f120h		;0e48
	add a,h			;0e4b
	sub (hl)		;0e4c
	jr nz,l0e20h		;0e4d
	jr nz,l0e23h		;0e4f
	jr nz,l0e24h		;0e51
	nop			;0e53
	jp nc,0d120h		;0e54
	jr nz,l0e2bh		;0e57
	ld d,c			;0e59
	ld (hl),c		;0e5a
	sub c			;0e5b
	out (090h),a		;0e5c
	jp nc,0d390h		;0e5e
	sub b			;0e61
	jp nc,0d370h		;0e62
	sub b			;0e65
	jp nc,0ea30h		;0e66
	dec b			;0e69
	jp nc,0d120h		;0e6a
	jr nz,$-44		;0e6d
	jr nz,$-45		;0e6f
	nop			;0e71
	jp nc,07620h		;0e72
	xor 0f1h		;0e75
	add a,(hl)		;0e77
	jp pe,0d106h		;0e78
	jr nz,l0e7dh		;0e7b
l0e7dh:
	ld (hl),b		;0e7d
	nop			;0e7e
	jp nc,050a0h		;0e7f
	defb 0fdh,0bah,08dh ;illegal sequence	;0e82
	rst 38h			;0e85
	cp 001h			;0e86
	ret m			;0e88
	ld a,(bc)		;0e89
	jp (hl)			;0e8a
	rlca			;0e8b
	jp pe,0d307h		;0e8c
	defb 0edh ;next byte illegal after ed	;0e8f
	ld (bc),a		;0e90
	ld d,b			;0e91
	sub b			;0e92
	jp nc,0d390h		;0e93
	sub b			;0e96
	jr nz,$-44		;0e97
	jr nz,$-43		;0e99
	jr nz,l0eedh		;0e9b
	jp nc,0d350h		;0e9d
	ld d,b			;0ea0
	nop			;0ea1
	jp nc,0d300h		;0ea2
	nop			;0ea5
	jr nz,$-44		;0ea6
	jr nz,l0e7dh		;0ea8
	jr nz,$-42		;0eaa
	ld (hl),b		;0eac
	out (070h),a		;0ead
	call nc,0d370h		;0eaf
	jr nc,l0f24h		;0eb2
	and b			;0eb4
	jp nc,07030h		;0eb5
	and b			;0eb8
	ret m			;0eb9
	ld a,(bc)		;0eba
	jp (hl)			;0ebb
	rlca			;0ebc
	jp pe,0d109h		;0ebd
	rst 28h			;0ec0
	ld bc,065f1h		;0ec1
	ld (l07eah),hl		;0ec4
	ld (006eah),hl		;0ec7
	ld (l05eah),hl		;0eca
	ld (l04eah),hl		;0ecd
	ld (l03eah),hl		;0ed0
	ld (l02eah),hl		;0ed3
	dec h			;0ed6
	ld sp,hl		;0ed7
l0ed8h:
	cpl			;0ed8
	adc a,a			;0ed9
	ld sp,hl		;0eda
l0edbh:
	ld c,(hl)		;0edb
l0edch:
	adc a,a			;0edc
	or b			;0edd
	sub b			;0ede
	ld (hl),b		;0edf
	sub b			;0ee0
	ld (hl),b		;0ee1
	ld d,b			;0ee2
	ld (hl),b		;0ee3
	ld d,b			;0ee4
	ld b,b			;0ee5
	ld sp,hl		;0ee6
	cpl			;0ee7
	adc a,a			;0ee8
	ld sp,hl		;0ee9
l0eeah:
	ld c,(hl)		;0eea
l0eebh:
	adc a,a			;0eeb
l0eech:
	pop de			;0eec
l0eedh:
	nop			;0eed
	jp nc,090b0h		;0eee
	or b			;0ef1
	sub b			;0ef2
	ld (hl),b		;0ef3
	sub b			;0ef4
	ld (hl),b		;0ef5
	ld d,b			;0ef6
	ex de,hl		;0ef7
	ld (bc),a		;0ef8
	ld (l15f8h),hl		;0ef9
	jp (hl)			;0efc
	rlca			;0efd
	jp pe,0d309h		;0efe
	defb 0edh ;next byte illegal after ed	;0f01
	inc b			;0f02
	ld d,b			;0f03
	jr nz,l0ed8h		;0f04
	jr nz,l0edbh		;0f06
	jr nz,l0edch		;0f08
	ld bc,0f1d3h		;0f0a
	ld (hl),l		;0f0d
	sbc a,h			;0f0e
	jp nc,0a191h		;0f0f
	pop de			;0f12
	ld bc,020d2h		;0f13
	pop de			;0f16
	jr nz,l0eebh		;0f17
	jr nz,l0eech		;0f19
	nop			;0f1b
	jp nc,07c20h		;0f1c
	jp p,0eaeeh		;0f1f
	ld b,0d1h		;0f22
l0f24h:
	jr nz,l0f26h		;0f24
l0f26h:
	ld (hl),b		;0f26
	nop			;0f27
	jp nc,050a0h		;0f28
l0f2bh:
	defb 0fdh,0b9h,08eh ;illegal sequence	;0f2b
	rst 38h			;0f2e
	ret m			;0f2f
	ld a,(bc)		;0f30
	jp (hl)			;0f31
	rlca			;0f32
	jp pe,0d207h		;0f33
	defb 0edh ;next byte illegal after ed	;0f36
	inc b			;0f37
	jr nc,l0f2bh		;0f38
	ld h,e			;0f3a
	ld b,b			;0f3b
	or b			;0f3c
	pop de			;0f3d
	ld b,(hl)		;0f3e
	jp nc,0d150h		;0f3f
	nop			;0f42
	ld d,b			;0f43
	push bc			;0f44
	jp nc,05242h		;0f45
	jp pe,0f806h		;0f48
	dec d			;0f4b
	pop de			;0f4c
	jp m,05070h		;0f4d
	ld b,b			;0f50
	ld d,b			;0f51
	ld b,b			;0f52
	jr nz,l0f95h		;0f53
	jr nz,l0f57h		;0f55
l0f57h:
	jr nz,l0f59h		;0f57
l0f59h:
	jp nc,0d1b0h		;0f59
	nop			;0f5c
	jp nc,090b0h		;0f5d
	jp m,sub_01feh		;0f60
	ret m			;0f63
	ld bc,004e9h		;0f64
	jp pe,0d30bh		;0f67
	defb 0edh ;next byte illegal after ed	;0f6a
	inc bc			;0f6b
	inc sp			;0f6c
	ld bc,0d271h		;0f6d
	ld bc,071d3h		;0f70
	jp nc,0d301h		;0f73
	ld (hl),c		;0f76
	ex de,hl		;0f77
	dec b			;0f78
	inc c			;0f79
	call nc,0d3a1h		;0f7a
	ld d,c			;0f7d
	and c			;0f7e
	ld d,c			;0f7f
	and c			;0f80
	ld d,c			;0f81
	call nc,0d391h		;0f82
	ld d,c			;0f85
	sub c			;0f86
	ld d,c			;0f87
	sub c			;0f88
	ld d,c			;0f89
	call nc,0d381h		;0f8a
	ld sp,03181h		;0f8d
	and c			;0f90
	ld d,c			;0f91
	ld bc,0d271h		;0f92
l0f95h:
	ld bc,071d3h		;0f95
	jp nc,0d301h		;0f98
	ld (hl),c		;0f9b
	ex de,hl		;0f9c
	inc b			;0f9d
	inc c			;0f9e
	ld sp,0d2a1h		;0f9f
	ld sp,0a1d3h		;0fa2
	jp nc,0d331h		;0fa5
	and c			;0fa8
	ld d,c			;0fa9
	jp nc,05101h		;0faa
	ld bc,l0151h		;0fad
	out (081h),a		;0fb0
	jp nc,08131h		;0fb2
	ld sp,03181h		;0fb5
	out (071h),a		;0fb8
	or c			;0fba
	jp nc,07121h		;0fbb
	or e			;0fbe
	out (051h),a		;0fbf
	jp nc,05101h		;0fc1
	ex de,hl		;0fc4
	inc b			;0fc5
	rlca			;0fc6
	out (081h),a		;0fc7
	jp nc,08131h		;0fc9
	ex de,hl		;0fcc
	inc b			;0fcd
	rlca			;0fce
	out (051h),a		;0fcf
	jp nc,05101h		;0fd1
	ex de,hl		;0fd4
	ld (bc),a		;0fd5
	rlca			;0fd6
	out (081h),a		;0fd7
	jp nc,08131h		;0fd9
	ex de,hl		;0fdc
	ld (bc),a		;0fdd
	rlca			;0fde
	out (071h),a		;0fdf
	jp nc,05121h		;0fe1
	ex de,hl		;0fe4
	ld (bc),a		;0fe5
	rlca			;0fe6
	out (071h),a		;0fe7
	jp nc,02101h		;0fe9
	ld d,c			;0fec
	ld (hl),c		;0fed
	or c			;0fee
	defb 0fdh,061h ;ld iyh,c	;0fef
	adc a,a			;0ff1
	cp 001h			;0ff2
	rst 28h			;0ff4
	ld bc,001f8h		;0ff5
	jp (hl)			;0ff8
	ld (bc),a		;0ff9
	jp pe,0d209h		;0ffa
	defb 0edh ;next byte illegal after ed	;0ffd
	inc bc			;0ffe
	inc sp			;0fff
l1000h:
	ret nz			;1000
	jp (hl)			;1001
	inc b			;1002
	ld bc,0d171h		;1003
	ld bc,071d2h		;1006
	pop de			;1009
	ld bc,071d2h		;100a
l100dh:
	ex de,hl		;100d
	dec b			;100e
	inc c			;100f
	out (0a1h),a		;1010
	jp nc,0a151h		;1012
	ld d,c			;1015
	and c			;1016
	ld d,c			;1017
	out (091h),a		;1018
	jp nc,09151h		;101a
	ld d,c			;101d
	sub c			;101e
	ld d,c			;101f
	out (081h),a		;1020
	jp nc,08131h		;1022
	ld sp,051a1h		;1025
	ld bc,0d171h		;1028
	ld bc,071d2h		;102b
	pop de			;102e
	ld bc,071d2h		;102f
	ex de,hl		;1032
	inc b			;1033
	inc c			;1034
	out (031h),a		;1035
	and c			;1037
	jp nc,0d331h		;1038
	and c			;103b
	jp nc,0d331h		;103c
	and c			;103f
	ld d,c			;1040
	jp nc,05101h		;1041
	ld bc,l0151h		;1044
	out (081h),a		;1047
	jp nc,08131h		;1049
	ld sp,03181h		;104c
	out (071h),a		;104f
	or c			;1051
	jp nc,07121h		;1052
	or d			;1055
	jp (hl)			;1056
	ld (bc),a		;1057
	ret nz			;1058
	jp (hl)			;1059
	inc b			;105a
	jp pe,0d40ah		;105b
	ld d,c			;105e
	out (001h),a		;105f
	ld d,c			;1061
	ex de,hl		;1062
	inc b			;1063
	rlca			;1064
	call nc,0d381h		;1065
	ld sp,0eb81h		;1068
	inc b			;106b
	rlca			;106c
	call nc,0d351h		;106d
	ld bc,0eb51h		;1070
	ld (bc),a		;1073
	rlca			;1074
	call nc,0d381h		;1075
	ld sp,0eb81h		;1078
	ld (bc),a		;107b
	rlca			;107c
	call nc,0d371h		;107d
	ld hl,0eb51h		;1080
	ld (bc),a		;1083
	rlca			;1084
	call nc,0d371h		;1085
	ld bc,05121h		;1088
	ld (hl),c		;108b
	or c			;108c
	defb 0fdh,0f2h,08fh ;illegal sequence	;108d
	rst 38h			;1090
	cp 001h			;1091
	ret m			;1093
	ld (bc),a		;1094
	jp (hl)			;1095
	inc b			;1096
	jp pe,0d10bh		;1097
	defb 0edh ;next byte illegal after ed	;109a
	ld bc,0f950h		;109b
	nop			;109e
	sub c			;109f
	ld d,e			;10a0
	dec b			;10a1
	ld hl,05131h		;10a2
	defb 0edh ;next byte illegal after ed	;10a5
	ld bc,0f950h		;10a6
	nop			;10a9
	sub c			;10aa
	ld hl,l0301h		;10ab
	jp nc,0c3b3h		;10ae
	ret m			;10b1
	ld a,(bc)		;10b2
	jp (hl)			;10b3
	inc b			;10b4
	jp pe,0d20bh		;10b5
	ld d,c			;10b8
	pop de			;10b9
	ld bc,0a1d2h		;10ba
	add a,c			;10bd
	ld (hl),c		;10be
	ld d,c			;10bf
	pop de			;10c0
	ex de,hl		;10c1
	ld (bc),a		;10c2
	dec bc			;10c3
	ret m			;10c4
	dec d			;10c5
	jp pe,0d008h		;10c6
l10c9h:
	ld bc,l01d1h		;10c9
	ret nc			;10cc
	ld bc,l01d1h		;10cd
	jp nc,0d301h		;10d0
	ld bc,l01d2h		;10d3
	out (001h),a		;10d6
	pop de			;10d8
	ld bc,l01d2h		;10d9
	pop de			;10dc
	ld bc,l01d2h		;10dd
	ret m			;10e0
	ld (bc),a		;10e1
	jp pe,0ed0bh		;10e2
	ld bc,05150h		;10e5
	pop de			;10e8
	ld bc,0a1d2h		;10e9
	add a,c			;10ec
	ld (hl),c		;10ed
	ld d,c			;10ee
	pop de			;10ef
	ld bc,03121h		;10f0
	ld d,c			;10f3
	ld (hl),c		;10f4
	ret nc			;10f5
	ld bc,0d107h		;10f6
	or c			;10f9
	ld hl,0fd7bh		;10fa
	sub c			;10fd
	sub b			;10fe
	rst 38h			;10ff
	ld (hl),c		;1100
l1101h:
	ld bc,00171h		;1101
	ld d,c			;1104
	ld bc,071d2h		;1105
l1108h:
	ld bc,00171h		;1108
	ld d,c			;110b
	ld bc,071d1h		;110c
	ld bc,00181h		;110f
	and c			;1112
	ld bc,l01d0h		;1113
	pop de			;1116
	ld bc,l01a1h		;1117
	add a,c			;111a
	ld bc,08171h		;111b
	ld (hl),a		;111e
	ld d,c			;111f
l1120h:
	ld (hl),c		;1120
	ld d,a			;1121
	rlca			;1122
	jp m,sub_01feh		;1123
	rst 28h			;1126
	ld bc,l0af8h		;1127
	jp (hl)			;112a
	inc b			;112b
	jp pe,0d10bh		;112c
	defb 0edh ;next byte illegal after ed	;112f
	ld bc,0f950h		;1130
	nop			;1133
	sub c			;1134
	ld d,e			;1135
	dec b			;1136
	ld hl,05131h		;1137
	pop de			;113a
	ld sp,hl		;113b
	nop			;113c
	sub c			;113d
	ld hl,l0301h		;113e
l1141h:
	jp nc,0c3b3h		;1141
	ret m			;1144
	dec c			;1145
	jp pe,0ed0bh		;1146
	ld bc,05150h		;1149
	pop de			;114c
	ld bc,0a1d2h		;114d
	add a,c			;1150
	ld (hl),c		;1151
	ld d,c			;1152
	pop de			;1153
	ld d,c			;1154
	ret nc			;1155
	ld bc,0a1d1h		;1156
	add a,c			;1159
	ld (hl),c		;115a
	ld d,c			;115b
	ret m			;115c
	dec d			;115d
	jp (hl)			;115e
	ld (bc),a		;115f
	ret nz			;1160
	jp (hl)			;1161
	inc b			;1162
	jp pe,0d009h		;1163
	ld bc,l01d1h		;1166
	ret nc			;1169
	ld bc,l01d1h		;116a
	jp nc,0d301h		;116d
	ld bc,l01d2h		;1170
	out (001h),a		;1173
	pop de			;1175
	ld bc,l01d2h		;1176
	pop de			;1179
	ld bc,0e9d2h		;117a
	ld (bc),a		;117d
	ld (bc),a		;117e
	jp (hl)			;117f
	inc b			;1180
	ret m			;1181
	ld a,(bc)		;1182
	jp nc,l01edh		;1183
	ld d,b			;1186
	ld d,c			;1187
	pop de			;1188
	ld bc,0a1d2h		;1189
	add a,c			;118c
	ld (hl),c		;118d
	ld d,c			;118e
	pop de			;118f
	ld bc,03121h		;1190
	ld d,c			;1193
	ld (hl),c		;1194
	ret nc			;1195
	ld bc,0d107h		;1196
	or c			;1199
	ret nc			;119a
	ld hl,07bf0h		;119b
	defb 0fdh,024h ;inc iyh	;119e
	sub c			;11a0
	rst 38h			;11a1
	ld sp,hl		;11a2
	jp c,0f891h		;11a3
	ld (bc),a		;11a6
	jp pe,0d309h		;11a7
	defb 0edh ;next byte illegal after ed	;11aa
	ld bc,l0160h		;11ab
	add a,c			;11ae
	ld (hl),c		;11af
	ld d,c			;11b0
	ld sp,0d121h		;11b1
	ex de,hl		;11b4
	ld (bc),a		;11b5
	add hl,bc		;11b6
	ret m			;11b7
	dec c			;11b8
	defb 0edh ;next byte illegal after ed	;11b9
	ld bc,0d480h		;11ba
	inc bc			;11bd
	inc hl			;11be
	inc sp			;11bf
	ld d,e			;11c0
	inc sp			;11c1
	inc hl			;11c2
	ld bc,07181h		;11c3
	ld d,c			;11c6
	ld sp,0d221h		;11c7
	add a,c			;11ca
	and c			;11cb
	pop de			;11cc
	ld bc,03121h		;11cd
	ld (hl),c		;11d0
	ld (hl),a		;11d1
	ld d,c			;11d2
	or c			;11d3
l11d4h:
	ret nc			;11d4
	dec hl			;11d5
	defb 0fdh,0a2h,091h ;illegal sequence	;11d6
	rst 38h			;11d9
	cp 001h			;11da
	ret m			;11dc
	ld a,(bc)		;11dd
	jp (hl)			;11de
	inc b			;11df
	jp pe,0ed09h		;11e0
	ld bc,0d150h		;11e3
	ld bc,071d2h		;11e6
	pop de			;11e9
	ld bc,071d2h		;11ea
	pop de			;11ed
	ld bc,071d2h		;11ee
	ld bc,071d3h		;11f1
	jp nc,0d301h		;11f4
	ld (hl),c		;11f7
	jp nc,0d301h		;11f8
	ld (hl),c		;11fb
	pop de			;11fc
	ld bc,071d2h		;11fd
	pop de			;1200
	ld sp,071d2h		;1201
	pop de			;1204
	ld d,c			;1205
	jp nc,0d171h		;1206
	ld (hl),c		;1209
	jp nc,0d171h		;120a
	ld d,c			;120d
	jp nc,0d171h		;120e
	ld sp,071d2h		;1211
	pop de			;1214
	ld sp,03751h		;1215
	ld hl,02731h		;1218
	jp nc,09397h		;121b
	add a,l			;121e
	and c			;121f
	pop de			;1220
	ld bc,l0121h		;1221
	jp nc,0d171h		;1224
	ld bc,071d2h		;1227
	pop de			;122a
	ld bc,071d2h		;122b
	ld bc,071d3h		;122e
	jp nc,0d301h		;1231
	ld (hl),c		;1234
	jp nc,0d301h		;1235
	ld (hl),c		;1238
	pop de			;1239
	ld bc,071d2h		;123a
	pop de			;123d
	ld sp,071d2h		;123e
	pop de			;1241
	ld d,c			;1242
	jp nc,0d171h		;1243
	ld (hl),c		;1246
	jp nc,0d171h		;1247
	ld d,c			;124a
	jp nc,0d171h		;124b
	ld sp,071d2h		;124e
	xor e			;1251
	sbc a,e			;1252
	adc a,e			;1253
	ld (hl),e		;1254
	ld (hl),e		;1255
	jp 0effah		;1256
	ld bc,0daf9h		;1259
	sub c			;125c
	ret m			;125d
	dec c			;125e
	jp pe,0d309h		;125f
	defb 0edh ;next byte illegal after ed	;1262
	ld bc,l0150h		;1263
	add a,c			;1266
	ld (hl),c		;1267
	ld d,c			;1268
	ld sp,0d121h		;1269
	ex de,hl		;126c
	ld (bc),a		;126d
	add hl,bc		;126e
	ret m			;126f
	ld (bc),a		;1270
	jp pe,0d30ch		;1271
	defb 0edh ;next byte illegal after ed	;1274
	ld bc,l0370h		;1275
	inc hl			;1278
	inc sp			;1279
	ld d,e			;127a
	inc sp			;127b
	inc hl			;127c
	ret m			;127d
	ld (bc),a		;127e
	jp pe,0d309h		;127f
	defb 0edh ;next byte illegal after ed	;1282
	ld bc,l0160h		;1283
	add a,c			;1286
	ld (hl),c		;1287
	ld d,c			;1288
	ld sp,08121h		;1289
	and c			;128c
	jp nc,02101h		;128d
	ld sp,07771h		;1290
	ld d,c			;1293
	or c			;1294
	pop de			;1295
	ret p			;1296
	dec hl			;1297
	defb 0fdh,058h,092h ;illegal sequence	;1298
	rst 38h			;129b
	rst 38h			;129c
	cp 004h			;129d
	jp (hl)			;129f
	inc b			;12a0
	ld sp,hl		;12a1
	jp c,0fc92h		;12a2
	inc b			;12a5
	and c			;12a6
	sub d			;12a7
	ld sp,hl		;12a8
	jp c,0fc92h		;12a9
	ld (bc),a		;12ac
	xor b			;12ad
	sub d			;12ae
	add a,c			;12af
	nop			;12b0
	nop			;12b1
	ld bc,l0141h		;12b2
	add a,c			;12b5
	add a,c			;12b6
	ld bc,04181h		;12b7
	ld bc,04181h		;12ba
	add a,c			;12bd
	add a,c			;12be
	ex de,hl		;12bf
	inc bc			;12c0
	dec b			;12c1
	ld b,b			;12c2
	ld b,b			;12c3
	ld b,c			;12c4
	ld b,c			;12c5
	add a,c			;12c6
	nop			;12c7
	nop			;12c8
	add a,c			;12c9
	ld b,c			;12ca
	ld bc,0eb81h		;12cb
	inc bc			;12ce
	add hl,bc		;12cf
	add a,c			;12d0
	ld b,b			;12d1
	ld b,b			;12d2
	ld b,c			;12d3
	ld b,c			;12d4
	ld b,c			;12d5
	ld b,c			;12d6
	defb 0fdh,09dh ;sbc a,iyl	;12d7
	sub d			;12d9
	add a,c			;12da
	nop			;12db
	nop			;12dc
	add a,c			;12dd
	ld b,c			;12de
	add a,c			;12df
	ld bc,00181h		;12e0
	add a,c			;12e3
	ld b,c			;12e4
	ld bc,0eb11h		;12e5
	inc bc			;12e8
	rrca			;12e9
	add a,c			;12ea
	nop			;12eb
	nop			;12ec
	add a,c			;12ed
	ld b,c			;12ee
	ld b,c			;12ef
	ld bc,l0081h		;12f0
	nop			;12f3
	add a,c			;12f4
	ld b,c			;12f5
	ld b,c			;12f6
	ld b,c			;12f7
	jp m,sub_01feh		;12f8
	jp (hl)			;12fb
	inc b			;12fc
	jp pe,0d40dh		;12fd
	defb 0edh ;next byte illegal after ed	;1300
	ld bc,03113h		;1301
	ld sp,0d331h		;1304
	ld sp,031d4h		;1307
	ld sp,l02ebh		;130a
	ld a,(bc)		;130d
	ld h,c			;130e
	ld h,c			;130f
	ld h,c			;1310
	out (061h),a		;1311
	call nc,06161h		;1313
	ex de,hl		;1316
	ld (bc),a		;1317
	ld a,(bc)		;1318
	add a,c			;1319
	add a,c			;131a
	add a,c			;131b
	out (081h),a		;131c
	call nc,08181h		;131e
	ex de,hl		;1321
	ld (bc),a		;1322
	ld a,(bc)		;1323
	and c			;1324
	and c			;1325
	and c			;1326
	out (0a1h),a		;1327
	call nc,0a1a1h		;1329
	ex de,hl		;132c
	ld (bc),a		;132d
	ld a,(bc)		;132e
	call m,0f904h		;132f
	sub d			;1332
	ld h,c			;1333
	ld h,c			;1334
	add a,c			;1335
	out (081h),a		;1336
	call nc,08181h		;1338
	ld h,c			;133b
	add a,c			;133c
	add a,c			;133d
	out (081h),a		;133e
	call nc,08181h		;1340
	ex de,hl		;1343
	inc bc			;1344
	ld a,(bc)		;1345
	call m,03302h		;1346
	sub e			;1349
	ld de,03131h		;134a
	out (031h),a		;134d
	call nc,0d331h		;134f
	ld sp,l11d4h		;1352
	ld sp,0d3a1h		;1355
	ld sp,0a1d4h		;1358
	ld sp,l04ebh		;135b
	inc d			;135e
	ld d,c			;135f
	ld h,c			;1360
	ex de,hl		;1361
	dec bc			;1362
	inc bc			;1363
	add a,c			;1364
	ex de,hl		;1365
	inc c			;1366
	inc bc			;1367
	ld sp,l0aebh		;1368
	inc bc			;136b
	add a,c			;136c
	and c			;136d
	out (031h),a		;136e
	ld sp,03131h		;1370
	ld sp,03331h		;1373
	call nc,073a3h		;1376
	ld sp,iy		;1379
	sub d			;137b
	cp 001h			;137c
	ret p			;137e
	ret m			;137f
	ld a,(bc)		;1380
	jp (hl)			;1381
	ex af,af'		;1382
	jp pe,0d20ah		;1383
l1386h:
	defb 0edh ;next byte illegal after ed	;1386
	ld bc,0f936h		;1387
	dec a			;138a
	sub h			;138b
	jr c,l1386h		;138c
	dec c			;138e
	ld sp,0c230h		;138f
	ld sp,0c230h		;1392
	ret m			;1395
	ld a,(bc)		;1396
	ld sp,hl		;1397
	ld c,e			;1398
	sub h			;1399
	ret m			;139a
	ld (de),a		;139b
	inc sp			;139c
	ld d,b			;139d
	jr nc,l13c5h		;139e
l13a0h:
	ret m			;13a0
	ld a,(bc)		;13a1
	jp nc,03df9h		;13a2
	sub h			;13a5
	jr c,l13a0h		;13a6
	ld (de),a		;13a8
	jp pe,0d10bh		;13a9
	inc sp			;13ac
	ld d,b			;13ad
	jr nc,l13d1h		;13ae
	ld sp,0d251h		;13b0
	ret m			;13b3
	ld a,(bc)		;13b4
	jp pe,0f90ah		;13b5
	ld c,e			;13b8
	sub h			;13b9
	ld sp,hl		;13ba
	ld e,h			;13bb
	sub h			;13bc
	jr nc,$-6		;13bd
	dec c			;13bf
	jp (hl)			;13c0
	inc b			;13c1
	jp pe,0d30ah		;13c2
l13c5h:
	defb 0edh ;next byte illegal after ed	;13c5
	ld bc,06137h		;13c6
	add a,c			;13c9
	jp nc,03101h		;13ca
	ld h,c			;13cd
	add a,c			;13ce
	ret m			;13cf
	inc de			;13d0
l13d1h:
	defb 0edh ;next byte illegal after ed	;13d1
	ld bc,0ea23h		;13d2
	add hl,bc		;13d5
	pop de			;13d6
	scf			;13d7
	ld bc,081d2h		;13d8
	and a			;13db
	and c			;13dc
	pop de			;13dd
	ld bc,03111h		;13de
	ld d,c			;13e1
	dec (hl)		;13e2
	ret m			;13e3
	dec c			;13e4
	jp pe,0d30ah		;13e5
	defb 0edh ;next byte illegal after ed	;13e8
	ld bc,08137h		;13e9
	and c			;13ec
	jp nc,05121h		;13ed
	add a,c			;13f0
	and c			;13f1
	ret m			;13f2
	inc de			;13f3
	defb 0edh ;next byte illegal after ed	;13f4
	ld bc,0ea23h		;13f5
l13f8h:
	add hl,bc		;13f8
l13f9h:
	pop de			;13f9
	ld d,a			;13fa
	ld hl,0a1d2h		;13fb
	pop de			;13fe
	rlca			;13ff
	ld bc,02121h		;1400
	ld sp,03551h		;1403
	ret m			;1406
	inc de			;1407
	jp (hl)			;1408
	inc b			;1409
	defb 0edh ;next byte illegal after ed	;140a
	ld bc,0ea23h		;140b
	ex af,af'		;140e
	pop de			;140f
	ld sp,hl		;1410
	ld l,(hl)		;1411
	sub h			;1412
	ld sp,008e9h		;1413
	xor b			;1416
	jp (hl)			;1417
	inc b			;1418
	jp pe,0ab06h		;1419
	ret nc			;141c
	dec bc			;141d
	jp nc,l0519h		;141e
	out (0b7h),a		;1421
	ret m			;1423
	ld a,(bc)		;1424
	jp (hl)			;1425
	inc b			;1426
	jp pe,0d20ah		;1427
	defb 0edh ;next byte illegal after ed	;142a
	ld bc,0f932h		;142b
	ld a,e			;142e
	sub h			;142f
	pop de			;1430
	dec sp			;1431
	jp nc,0d1a1h		;1432
	ld sp,0e981h		;1435
	ld b,07fh		;1438
	defb 0fdh,07ch ;ld a,iyh	;143a
	sub e			;143c
	ld sp,0a630h		;143d
	and b			;1440
	pop de			;1441
	nop			;1442
	jr $+18			;1443
	nop			;1445
	djnz $+3		;1446
	jp nc,0fa80h		;1448
	ld sp,0a630h		;144b
	add a,b			;144e
	ld h,b			;144f
	pop de			;1450
	dec d			;1451
	ld h,c			;1452
	ld de,0a1d2h		;1453
	add a,e			;1456
	add a,b			;1457
	and b			;1458
	pop de			;1459
	dec b			;145a
	jp m,l04f8h		;145b
	jp pe,0d107h		;145e
	jr nz,l1493h		;1461
	ld d,b			;1463
	jr nc,l14b6h		;1464
	ld h,b			;1466
	ld d,b			;1467
l1468h:
	ld h,b			;1468
	add a,b			;1469
	and b			;146a
	ret nc			;146b
	djnz l1468h		;146c
	ld h,c			;146e
	add a,c			;146f
	and c			;1470
	dec (hl)		;1471
	ld sp,06151h		;1472
	add a,c			;1475
	ld h,c			;1476
	ld d,c			;1477
	ld sp,0fa31h		;1478
	and e			;147b
	inc de			;147c
	ld h,e			;147d
	and c			;147e
	pop de			;147f
	ld bc,03111h		;1480
	ld de,0d201h		;1483
	and e			;1486
	inc sp			;1487
	add a,e			;1488
	and c			;1489
	pop de			;148a
	ld bc,03111h		;148b
	ld de,0d201h		;148e
	and e			;1491
	and c			;1492
l1493h:
	jp m,sub_01feh		;1493
	ret p			;1496
	rst 28h			;1497
	ld bc,l0af8h		;1498
	jp (hl)			;149b
	inc b			;149c
	jp pe,0d208h		;149d
	defb 0edh ;next byte illegal after ed	;14a0
	add a,c			;14a1
	ld h,030h		;14a2
	jp (hl)			;14a4
l14a5h:
	ex af,af'		;14a5
	ld sp,hl		;14a6
	dec a			;14a7
	sub h			;14a8
	jp (hl)			;14a9
	inc b			;14aa
	ccf			;14ab
	ret nz			;14ac
	ret p			;14ad
	ret m			;14ae
l14afh:
	dec c			;14af
	and e			;14b0
	and c			;14b1
	push bc			;14b2
	and e			;14b3
	and c			;14b4
	push bc			;14b5
l14b6h:
	rst 28h			;14b6
	ld bc,l0af8h		;14b7
	jr nc,l14a5h		;14ba
	ex af,af'		;14bc
	ld sp,hl		;14bd
	ld c,e			;14be
	sub h			;14bf
	ret m			;14c0
	inc b			;14c1
	inc sp			;14c2
	ld d,b			;14c3
	jr nc,l14ebh		;14c4
	ret m			;14c6
	ld a,(bc)		;14c7
	jp (hl)			;14c8
	ex af,af'		;14c9
	jp nc,03df9h		;14ca
	sub h			;14cd
	scf			;14ce
	jp (hl)			;14cf
	inc b			;14d0
	ret nz			;14d1
	ret p			;14d2
	ret m			;14d3
l14d4h:
	ld (de),a		;14d4
	jp (hl)			;14d5
	ex af,af'		;14d6
	jp pe,0a309h		;14d7
	pop de			;14da
	jr nz,l14afh		;14db
	and b			;14dd
	and c			;14de
	pop de			;14df
	ld bc,0ef21h		;14e0
	ld bc,0f8d2h		;14e3
l14e6h:
	ld a,(bc)		;14e6
	jp (hl)			;14e7
	inc b			;14e8
	jr nc,l14d4h		;14e9
l14ebh:
	ex af,af'		;14eb
	ld sp,hl		;14ec
	ld c,e			;14ed
	sub h			;14ee
	ld sp,hl		;14ef
	ld e,h			;14f0
	sub h			;14f1
	jp (hl)			;14f2
	inc b			;14f3
	jr nc,l14e6h		;14f4
	rst 28h			;14f6
	ld bc,l0df8h		;14f7
	jp (hl)			;14fa
	inc b			;14fb
	jp pe,0d309h		;14fc
	defb 0edh ;next byte illegal after ed	;14ff
	ld bc,06137h		;1500
	add a,c			;1503
	jp nc,03101h		;1504
	ld h,c			;1507
	add a,c			;1508
	ret p			;1509
	ret m			;150a
	inc de			;150b
	defb 0edh ;next byte illegal after ed	;150c
	ld bc,0ea23h		;150d
	rlca			;1510
	jp nc,l0137h		;1511
	out (081h),a		;1514
	and a			;1516
	and c			;1517
	jp nc,l1101h		;1518
	ld sp,03551h		;151b
	rst 28h			;151e
	ld bc,l0df8h		;151f
	jp pe,0d309h		;1522
	defb 0edh ;next byte illegal after ed	;1525
	ld bc,08137h		;1526
	and c			;1529
	jp nc,05121h		;152a
	add a,c			;152d
	and c			;152e
	ret p			;152f
	ret m			;1530
	inc de			;1531
	defb 0edh ;next byte illegal after ed	;1532
	ld bc,0ea23h		;1533
	rlca			;1536
	jp nc,02157h		;1537
	out (0a1h),a		;153a
	jp nc,l0107h		;153c
l153fh:
	ld hl,03121h		;153f
	ld d,c			;1542
	dec (hl)		;1543
	rst 28h			;1544
	ld bc,l13f8h		;1545
	jp (hl)			;1548
	inc b			;1549
	defb 0edh ;next byte illegal after ed	;154a
	ld bc,0ea25h		;154b
	rlca			;154e
	pop de			;154f
	ld h,b			;1550
	ld sp,hl		;1551
	ld l,(hl)		;1552
	sub h			;1553
	jr nc,l153fh		;1554
	ex af,af'		;1556
	pop af			;1557
	ld e,b			;1558
	xor b			;1559
	jp p,0e9f0h		;155a
	inc b			;155d
	jp pe,0ed06h		;155e
	ld bc,03b24h		;1561
	ld e,e			;1564
	jp nc,05569h		;1565
	ld b,a			;1568
	rst 28h			;1569
	ld bc,014f8h		;156a
	jp (hl)			;156d
	inc b			;156e
	jp pe,0d209h		;156f
	defb 0edh ;next byte illegal after ed	;1572
	add a,c			;1573
	ld (07bf9h),a		;1574
	sub h			;1577
	ret p			;1578
	xor e			;1579
	rst 28h			;157a
	ld bc,0a1d2h		;157b
	pop de			;157e
	ld sp,0f081h		;157f
	jp (hl)			;1582
	ld b,03fh		;1583
	defb 0fdh,094h ;sub iyh	;1585
	sub h			;1587
	cp 001h			;1588
	ret p			;158a
	rst 28h			;158b
	ld bc,l15f8h		;158c
	jp (hl)			;158f
	inc b			;1590
	jp pe,0d206h		;1591
l1594h:
	defb 0edh ;next byte illegal after ed	;1594
	add a,c			;1595
	ld (081a2h),a		;1596
	and c			;1599
	pop de			;159a
	ld sp,0a1d2h		;159b
	add a,c			;159e
	and c			;159f
	pop de			;15a0
	ld sp,0a1d2h		;15a1
	add a,c			;15a4
	and c			;15a5
	pop de			;15a6
	jr nc,l1594h		;15a7
	djnz l15cdh		;15a9
	ret m			;15ab
	dec d			;15ac
	jp (hl)			;15ad
	inc b			;15ae
	jp pe,0d20ah		;15af
	defb 0edh ;next byte illegal after ed	;15b2
	add a,c			;15b3
	ld d,d			;15b4
	ld l,e			;15b5
	adc a,e			;15b6
	adc a,e			;15b7
	add a,l			;15b8
	ld h,l			;15b9
	adc a,e			;15ba
	xor e			;15bb
	pop de			;15bc
	dec bc			;15bd
	jp nc,085a5h		;15be
l15c1h:
	jp (hl)			;15c1
	inc b			;15c2
	ret m			;15c3
	dec d			;15c4
	jp pe,0d20ah		;15c5
	defb 0edh ;next byte illegal after ed	;15c8
	add a,c			;15c9
	ld d,d			;15ca
	dec de			;15cb
	dec sp			;15cc
l15cdh:
	rst 28h			;15cd
	ld bc,l07eah		;15ce
	pop de			;15d1
	ld (de),a		;15d2
	jp pe,l1108h		;15d3
	jp nc,061a1h		;15d6
	pop de			;15d9
	ld de,0a1d2h		;15da
	ld h,c			;15dd
	pop de			;15de
	ld bc,091d2h		;15df
	ld d,c			;15e2
	or c			;15e3
	add a,b			;15e4
	ex de,hl		;15e5
	ld (bc),a		;15e6
	ld h,0efh		;15e7
	ld bc,l15f8h		;15e9
	jp (hl)			;15ec
	ld b,0eah		;15ed
	ex af,af'		;15ef
	jp nc,081edh		;15f0
	ld (0f81fh),a		;15f3
	inc d			;15f6
	ccf			;15f7
l15f8h:
	jp (hl)			;15f8
	inc b			;15f9
	ret m			;15fa
	dec d			;15fb
	add a,b			;15fc
	add a,c			;15fd
	and c			;15fe
	pop de			;15ff
	ld sp,0a0d2h		;1600
	ex de,hl		;1603
	inc bc			;1604
	add hl,bc		;1605
	jp (hl)			;1606
	ld b,0eah		;1607
	ld a,(bc)		;1609
	jp nc,0f0afh		;160a
	defb 0fdh,088h,095h ;illegal sequence	;160d
	rst 38h			;1610
	cp 001h			;1611
	ret p			;1613
	ret m			;1614
	dec d			;1615
	jp (hl)			;1616
	inc b			;1617
	jp pe,0d207h		;1618
	defb 0edh ;next byte illegal after ed	;161b
	add a,c			;161c
	ld (0a181h),a		;161d
	pop de			;1620
	ld sp,0a1d2h		;1621
	add a,c			;1624
	and c			;1625
	pop de			;1626
	ld sp,0a1d2h		;1627
	add a,c			;162a
	and c			;162b
	pop de			;162c
	ld sp,0a1d2h		;162d
	ex de,hl		;1630
	djnz l1654h		;1631
	ret m			;1633
	dec d			;1634
	jp (hl)			;1635
	inc b			;1636
	jp pe,0d20ah		;1637
	defb 0edh ;next byte illegal after ed	;163a
	add a,c			;163b
	ld d,d			;163c
	xor e			;163d
	pop de			;163e
	dec bc			;163f
	dec de			;1640
	dec b			;1641
	jp nc,0d1a5h		;1642
	dec bc			;1645
	dec hl			;1646
	dec sp			;1647
	dec h			;1648
	dec b			;1649
	jp (hl)			;164a
	inc b			;164b
	ret m			;164c
	dec d			;164d
	jp pe,0d20ah		;164e
	defb 0edh ;next byte illegal after ed	;1651
	add a,c			;1652
	ld d,d			;1653
l1654h:
	ld l,e			;1654
	adc a,e			;1655
	pop de			;1656
	ld de,0a1d2h		;1657
	ld h,c			;165a
	jp pe,0d109h		;165b
	ld de,0a1d2h		;165e
	ld h,c			;1661
	pop de			;1662
	ld bc,091d2h		;1663
	ld d,c			;1666
	or c			;1667
	add a,c			;1668
	ld b,c			;1669
	ex de,hl		;166a
	ld (bc),a		;166b
	ld (l02efh),hl		;166c
	ret m			;166f
	dec d			;1670
	jp (hl)			;1671
	ld b,0eah		;1672
	ex af,af'		;1674
	jp nc,081edh		;1675
	ld (0f86fh),a		;1678
	inc d			;167b
	adc a,a			;167c
	jp (hl)			;167d
	inc b			;167e
	ret m			;167f
	dec d			;1680
	add a,c			;1681
	and c			;1682
	pop de			;1683
	ld sp,0a1d2h		;1684
	ex de,hl		;1687
	inc bc			;1688
	ex af,af'		;1689
	ld (hl),c		;168a
	and c			;168b
	pop de			;168c
	ld sp,0a1d2h		;168d
	ex de,hl		;1690
	inc bc			;1691
	ex af,af'		;1692
	defb 0fdh,011h,096h ;illegal sequence	;1693
	rst 38h			;1696
	cp 004h			;1697
	jp (hl)			;1699
	ld b,0f9h		;169a
	push af			;169c
	sub (hl)		;169d
	ld b,c			;169e
	nop			;169f
	add a,b			;16a0
	ld sp,hl		;16a1
	push af			;16a2
	sub (hl)		;16a3
	ld b,c			;16a4
	ld b,b			;16a5
	ld b,b			;16a6
	ld sp,hl		;16a7
	push af			;16a8
	sub (hl)		;16a9
	ld b,c			;16aa
	nop			;16ab
	add a,b			;16ac
	ld sp,hl		;16ad
	push af			;16ae
	sub (hl)		;16af
	ld b,b			;16b0
	ld b,b			;16b1
	nop			;16b2
	ld b,b			;16b3
	ex de,hl		;16b4
	ld (bc),a		;16b5
	rra			;16b6
	add a,b			;16b7
	nop			;16b8
	nop			;16b9
	nop			;16ba
	ld b,b			;16bb
	ld b,b			;16bc
	ex de,hl		;16bd
	ld (bc),a		;16be
	ex af,af'		;16bf
l16c0h:
	nop			;16c0
	nop			;16c1
	nop			;16c2
	add a,b			;16c3
	ld b,b			;16c4
	djnz l16c0h		;16c5
	push af			;16c7
	sub (hl)		;16c8
	ld b,b			;16c9
	ld b,b			;16ca
	djnz l170dh		;16cb
	call m,0b702h		;16cd
	sub (hl)		;16d0
	ld sp,hl		;16d1
	push af			;16d2
	sub (hl)		;16d3
	ld b,c			;16d4
	nop			;16d5
	add a,b			;16d6
	ld sp,hl		;16d7
	push af			;16d8
	sub (hl)		;16d9
	ld b,c			;16da
	ld b,b			;16db
	ld b,b			;16dc
	ex de,hl		;16dd
	ld (bc),a		;16de
	ld c,0f9h		;16df
	push af			;16e1
	sub (hl)		;16e2
	ld b,c			;16e3
	nop			;16e4
	add a,b			;16e5
	add a,c			;16e6
	nop			;16e7
	nop			;16e8
	ld b,c			;16e9
	nop			;16ea
	nop			;16eb
	ld b,b			;16ec
	ld b,b			;16ed
	ld b,b			;16ee
	ld b,c			;16ef
	ld b,b			;16f0
	ld b,c			;16f1
	defb 0fdh,097h,096h ;illegal sequence	;16f2
	add a,c			;16f5
	nop			;16f6
	nop			;16f7
	ld b,c			;16f8
	nop			;16f9
	nop			;16fa
	add a,c			;16fb
	nop			;16fc
	nop			;16fd
	jp m,sub_01feh		;16fe
	jp (hl)			;1701
sub_1702h:
	inc bc			;1702
	jp pe,0d40dh		;1703
	defb 0edh ;next byte illegal after ed	;1706
	ld bc,0f833h		;1707
	nop			;170a
	ld sp,hl		;170b
	sbc a,b			;170c
l170dh:
	sub a			;170d
	ld hl,04341h		;170e
	ld hl,04341h		;1711
	ld sp,hl		;1714
	sbc a,b			;1715
	sub a			;1716
	ld b,c			;1717
	ld b,e			;1718
	ld hl,04141h		;1719
	ld (hl),c		;171c
	or c			;171d
	ex de,hl		;171e
	inc b			;171f
	ld hl,0a9f9h		;1720
	sub a			;1723
	ld b,c			;1724
	ld b,c			;1725
	out (021h),a		;1726
	call nc,071b1h		;1728
	ld sp,hl		;172b
	or e			;172c
	sub a			;172d
	ld hl,0f941h		;172e
	ret nz			;1731
	sub a			;1732
	ld hl,04141h		;1733
	or c			;1736
	ld sp,hl		;1737
	xor c			;1738
	sub a			;1739
	ld (hl),c		;173a
	or c			;173b
	out (021h),a		;173c
	call nc,041b1h		;173e
	ld sp,hl		;1741
	or e			;1742
	sub a			;1743
	ld b,c			;1744
	ld hl,0c0f9h		;1745
	sub a			;1748
	ld bc,04121h		;1749
	ld h,c			;174c
	jp (hl)			;174d
	inc bc			;174e
	call nc,l01edh		;174f
	inc sp			;1752
	ret m			;1753
	nop			;1754
	ld hl,0d321h		;1755
	ld hl,021d4h		;1758
	ld bc,02121h		;175b
	ld bc,02101h		;175e
	inc hl			;1761
	ld bc,02321h		;1762
	ld bc,0d301h		;1765
	ld bc,l01d4h		;1768
	ld bc,l0101h		;176b
	ld bc,04301h		;176e
	ld b,c			;1771
	ld (hl),c		;1772
	ld (hl),c		;1773
	ld (hl),c		;1774
	sub c			;1775
	ld sp,hl		;1776
	sbc a,b			;1777
	sub a			;1778
	ld sp,hl		;1779
	and e			;177a
	sub a			;177b
	ld b,e			;177c
	ld sp,hl		;177d
	sbc a,b			;177e
	sub a			;177f
	ld sp,hl		;1780
	and e			;1781
	sub a			;1782
	ld b,c			;1783
	or c			;1784
	ld sp,hl		;1785
	sbc a,b			;1786
	sub a			;1787
	ld sp,hl		;1788
	and e			;1789
	sub a			;178a
	ld b,e			;178b
	ld sp,hl		;178c
	sbc a,b			;178d
	sub a			;178e
	ld hl,02143h		;178f
	ld b,c			;1792
	ld bc,0fd73h		;1793
	rst 38h			;1796
	sub (hl)		;1797
	ld b,c			;1798
	ld b,c			;1799
	out (041h),a		;179a
	call nc,02141h		;179c
	ld b,c			;179f
	ld b,c			;17a0
	ld hl,021fah		;17a1
	ld b,c			;17a4
	ld b,e			;17a5
	ld hl,0fa41h		;17a6
	ld d,c			;17a9
	ld d,c			;17aa
	ld d,c			;17ab
	out (041h),a		;17ac
	ld bc,0d441h		;17ae
	ld b,c			;17b1
	jp m,02121h		;17b2
	ld hl,02161h		;17b5
	sub c			;17b8
	ld b,c			;17b9
	ld b,c			;17ba
	out (041h),a		;17bb
	call nc,0fa41h		;17bd
	ld b,c			;17c0
	ld b,c			;17c1
	ld b,e			;17c2
	out (041h),a		;17c3
	call nc,0fa41h		;17c5
	rst 28h			;17c8
	ld bc,sub_01feh		;17c9
	jp (hl)			;17cc
	ld b,0d2h		;17cd
	defb 0edh ;next byte illegal after ed	;17cf
	ld (bc),a		;17d0
	ld (hl),c		;17d1
	ld sp,hl		;17d2
	ld hl,(0ed98h)		;17d3
	ld (bc),a		;17d6
	ld (hl),a		;17d7
	ld (hl),c		;17d8
	sub c			;17d9
	or c			;17da
	ld sp,hl		;17db
	ld hl,(0ed98h)		;17dc
	inc bc			;17df
	inc sp			;17e0
	pop de			;17e1
	ld b,c			;17e2
	ld hl,0eb11h		;17e3
	ld (bc),a		;17e6
	rra			;17e7
	jp pe,0d209h		;17e8
	defb 0edh ;next byte illegal after ed	;17eb
	ld (bc),a		;17ec
	ld b,d			;17ed
	ret m			;17ee
	dec d			;17ef
	ld sp,hl		;17f0
	call nc,06298h		;17f1
	jp 0c173h		;17f4
	ld h,l			;17f7
	ld sp,hl		;17f8
	call nc,06298h		;17f9
	pop de			;17fc
	ld b,c			;17fd
	ld hl,0d211h		;17fe
	or l			;1801
	jp pe,0f80ah		;1802
	add hl,hl		;1805
	jp nc,0d1b0h		;1806
	djnz $+34		;1809
	ld b,b			;180b
	jp pe,0d10bh		;180c
	defb 0edh ;next byte illegal after ed	;180f
	ld (bc),a		;1810
	ld (hl),d		;1811
	ret m			;1812
	inc de			;1813
	ld sp,hl		;1814
	dec b			;1815
	sbc a,c			;1816
	defb 0edh ;next byte illegal after ed	;1817
	ld bc,0ea52h		;1818
	ld a,(bc)		;181b
	ld sp,hl		;181c
	rst 18h			;181d
	sbc a,b			;181e
	ld b,b			;181f
	ld h,c			;1820
	or b			;1821
	or b			;1822
	or b			;1823
	or c			;1824
	or b			;1825
	or c			;1826
	defb 0fdh,0c8h,097h ;illegal sequence	;1827
	jp pe,0f80ch		;182a
	dec d			;182d
	jp 0c173h		;182e
	sub h			;1831
	ret nz			;1832
	ld (hl),h		;1833
	ret nz			;1834
	sub e			;1835
	jp pe,0f80ah		;1836
	cpl			;1839
l183ah:
	jp m,sub_01feh		;183a
	jp (hl)			;183d
	ld b,0c2h		;183e
	ld sp,hl		;1840
	xor c			;1841
	sbc a,b			;1842
	ld hl,0f911h		;1843
	xor c			;1846
	sbc a,b			;1847
	jr nz,l183ah		;1848
	jp nc,l02edh		;184a
	ld (l15f8h),hl		;184d
	ld sp,hl		;1850
	jp nc,0ea98h		;1851
	ld a,(bc)		;1854
	defb 0edh ;next byte illegal after ed	;1855
	ld (bc),a		;1856
	ld d,d			;1857
	ret m			;1858
	cpl			;1859
	pop af			;185a
	inc sp			;185b
	di			;185c
	ex af,af'		;185d
	cp a			;185e
	jp p,l05eah		;185f
	defb 0edh ;next byte illegal after ed	;1862
	ld (bc),a		;1863
	ld (hl),a		;1864
	ret m			;1865
	dec d			;1866
	ld sp,hl		;1867
	jp nc,0ea98h		;1868
	dec bc			;186b
	defb 0edh ;next byte illegal after ed	;186c
	inc bc			;186d
	ld d,d			;186e
	ret m			;186f
	cpl			;1870
	pop af			;1871
	inc sp			;1872
	di			;1873
	ex af,af'		;1874
	cp a			;1875
	ret p			;1876
	jp p,l01efh		;1877
	jp pe,0d105h		;187a
	defb 0edh ;next byte illegal after ed	;187d
	ld (bc),a		;187e
	ld (l13f8h),hl		;187f
	ld h,d			;1882
	ld sp,hl		;1883
	dec b			;1884
	sbc a,c			;1885
	rst 28h			;1886
	ld bc,l02edh		;1887
	ld (0dff9h),hl		;188a
	sbc a,b			;188d
	jp pe,0ee0ah		;188e
	jp (hl)			;1891
	ld (bc),a		;1892
	ld b,b			;1893
	ld d,b			;1894
	ld h,b			;1895
	ld (hl),b		;1896
	add a,b			;1897
	sub b			;1898
	and b			;1899
	or b			;189a
	jp nc,0e900h		;189b
	ld b,0edh		;189e
	ld bc,04135h		;18a0
	ld b,b			;18a3
	ld b,c			;18a4
	ret p			;18a5
	defb 0fdh,03bh,098h ;illegal sequence	;18a6
	jp pe,0d208h		;18a9
	defb 0edh ;next byte illegal after ed	;18ac
	ld (bc),a		;18ad
	ld (l15f8h),hl		;18ae
	jp 0c173h		;18b1
	sub l			;18b4
	ld (hl),l		;18b5
	sub e			;18b6
	jp pe,0f805h		;18b7
	cpl			;18ba
	ld (hl),c		;18bb
	sub c			;18bc
	or c			;18bd
	jp pe,0f808h		;18be
	dec d			;18c1
	jp 0c173h		;18c2
	sub l			;18c5
	ld (hl),l		;18c6
	sub e			;18c7
	jp pe,0ed05h		;18c8
	inc bc			;18cb
	inc sp			;18cc
	ret m			;18cd
	cpl			;18ce
	pop de			;18cf
	ld b,c			;18d0
	jp m,l02d1h		;18d1
	pop de			;18d4
	nop			;18d5
	ld bc,092d2h		;18d6
	or b			;18d9
	or c			;18da
	ld (hl),d		;18db
	sub b			;18dc
	sub c			;18dd
	jp m,07170h		;18de
	ld b,c			;18e1
	ld b,b			;18e2
	ld b,c			;18e3
	sub b			;18e4
	sub c			;18e5
	ld h,c			;18e6
	ld h,b			;18e7
	ld h,c			;18e8
	or b			;18e9
	or c			;18ea
	ld (hl),c		;18eb
	ld (hl),b		;18ec
	sub c			;18ed
	pop de			;18ee
	jr nz,$+35		;18ef
	ld de,0b0d2h		;18f1
	sub b			;18f4
	ld (hl),b		;18f5
	or b			;18f6
	or c			;18f7
	ld (hl),c		;18f8
	ld (hl),b		;18f9
	ld b,c			;18fa
	sub b			;18fb
	sub c			;18fc
	ld h,b			;18fd
	ld h,c			;18fe
	sub c			;18ff
	ld (hl),b		;1900
	ld h,b			;1901
	ld b,b			;1902
	ld h,c			;1903
	jp m,04365h		;1904
	ld hl,02101h		;1907
	ld b,l			;190a
	ld (hl),e		;190b
	ret p			;190c
	ret nc			;190d
	ld bc,0d243h		;190e
	jp m,sub_01feh		;1911
	jp (hl)			;1914
	ld b,0eah		;1915
	dec bc			;1917
	jp nc,l02edh		;1918
	ld (hl),a		;191b
	ld sp,hl		;191c
	xor (hl)		;191d
	sbc a,c			;191e
	or c			;191f
	pop de			;1920
	ld de,0ea21h		;1921
	dec bc			;1924
	jp nc,0aef9h		;1925
	sbc a,c			;1928
	ld (hl),c		;1929
	ld h,c			;192a
	ld b,c			;192b
	ex de,hl		;192c
	ld (bc),a		;192d
	inc e			;192e
	jp (hl)			;192f
	ld b,0eah		;1930
	ex af,af'		;1932
	defb 0edh ;next byte illegal after ed	;1933
	ld (bc),a		;1934
	ld (l15f8h),a		;1935
	ld sp,hl		;1938
	cp a			;1939
	sbc a,c			;193a
	jp 0c1b3h		;193b
	sub l			;193e
	ld sp,hl		;193f
	cp a			;1940
	sbc a,c			;1941
	ld (hl),c		;1942
	ld h,c			;1943
	ld (hl),c		;1944
	ld b,l			;1945
	jp pe,0f80ah		;1946
	add hl,hl		;1949
	jr nz,l198ch		;194a
	ld h,b			;194c
	ld (hl),b		;194d
	jp (hl)			;194e
	ld b,0eah		;194f
	inc c			;1951
	jp nc,l02edh		;1952
	ld h,e			;1955
	ret m			;1956
	add hl,hl		;1957
	sub l			;1958
	ld (hl),e		;1959
	ld h,c			;195a
	ld b,c			;195b
	ld h,c			;195c
	ld (hl),l		;195d
	pop de			;195e
	inc bc			;195f
	ld b,c			;1960
	ld (hl),e		;1961
l1962h:
	defb 0edh ;next byte illegal after ed	;1962
	ld (bc),a		;1963
	ld d,d			;1964
	jp pe,0f808h		;1965
	inc de			;1968
	jp nc,04140h		;1969
	out (0b1h),a		;196c
	or b			;196e
	or c			;196f
	jp nc,06160h		;1970
	ld hl,02120h		;1973
	ld (hl),b		;1976
	ld (hl),c		;1977
	ld b,c			;1978
	ld b,b			;1979
	ld h,c			;197a
	or b			;197b
	or c			;197c
	sub c			;197d
	ld (hl),b		;197e
	ld h,b			;197f
	ld b,b			;1980
	ld (hl),b		;1981
	ld (hl),c		;1982
	ld b,c			;1983
	ld b,b			;1984
	jp nc,060b1h		;1985
	ld h,c			;1988
	jr nz,$+35		;1989
	ld h,c			;198b
l198ch:
	ld b,b			;198c
	jr nz,l1962h		;198d
	or b			;198f
	jp nc,0d321h		;1990
	or b			;1993
	jp nc,0ee21h		;1994
	jp pe,0e909h		;1997
	inc bc			;199a
	out (0b0h),a		;199b
	jp nc,02000h		;199d
	jr nc,l19e2h		;19a0
	ld d,b			;19a2
	jp (hl)			;19a3
	ld b,0edh		;19a4
	ld bc,07135h		;19a6
	ld (hl),b		;19a9
	ld (hl),c		;19aa
	defb 0fdh,012h,099h ;illegal sequence	;19ab
	ret m			;19ae
	dec d			;19af
	jp 0c1b3h		;19b0
	pop de			;19b3
	dec d			;19b4
	jp nc,0d1b5h		;19b5
	inc de			;19b8
	jp pe,0f80ah		;19b9
	cpl			;19bc
	jp nc,0d1fah		;19bd
	ld b,b			;19c0
l19c1h:
	ld b,c			;19c1
	ld (bc),a		;19c2
	jr nz,l19e6h		;19c3
	jp nc,0d1b2h		;19c5
	djnz l19dbh		;19c8
	jp nc,0fa92h		;19ca
	cp 001h			;19cd
	jp (hl)			;19cf
	inc bc			;19d0
	jp pe,0d40ch		;19d1
	defb 0edh ;next byte illegal after ed	;19d4
	ld b,074h		;19d5
	ret m			;19d7
	jr nz,l1a1ah		;19d8
	ld (hl),b		;19da
l19dbh:
	jp (hl)			;19db
	ld b,04eh		;19dc
	rst 8			;19de
	jp (hl)			;19df
	inc bc			;19e0
l19e1h:
	ld b,b			;19e1
l19e2h:
	ld (hl),b		;19e2
	jp (hl)			;19e3
	ld b,04eh		;19e4
l19e6h:
	jp pe,0ed0dh		;19e6
	ld (bc),a		;19e9
	ld (hl),h		;19ea
	ret m			;19eb
	jr nz,l19c1h		;19ec
	ld b,d			;19ee
	ld b,b			;19ef
	ld hl,0c543h		;19f0
	ex de,hl		;19f3
	ld (bc),a		;19f4
	jr z,l19e1h		;19f5
	dec bc			;19f7
	pop de			;19f8
	defb 0edh ;next byte illegal after ed	;19f9
	ld b,074h		;19fa
	ret m			;19fc
	inc de			;19fd
	ld sp,hl		;19fe
	ld c,l			;19ff
	sbc a,d			;1a00
	ld a,a			;1a01
	ld sp,hl		;1a02
	ld c,l			;1a03
	sbc a,d			;1a04
	ld c,a			;1a05
	jp (hl)			;1a06
	ex af,af'		;1a07
	jp pe,0d40ah		;1a08
	defb 0edh ;next byte illegal after ed	;1a0b
	ld b,074h		;1a0c
	ret m			;1a0e
	jr nz,$+66		;1a0f
	ld hl,(l0a20h)		;1a11
	jp (hl)			;1a14
	ld b,0eah		;1a15
	inc c			;1a17
	defb 0edh ;next byte illegal after ed	;1a18
	ld (bc),a		;1a19
l1a1ah:
	ld b,h			;1a1a
	jp nc,002f8h		;1a1b
	rst 28h			;1a1e
	ld bc,l0aeah		;1a1f
	ld b,b			;1a22
	jr nz,l1a6ah		;1a23
	ld (hl),b		;1a25
	ld b,b			;1a26
	ld (hl),l		;1a27
	or b			;1a28
l1a29h:
	ld (hl),b		;1a29
	or l			;1a2a
	ld (hl),b		;1a2b
	ld b,b			;1a2c
	ld (hl),l		;1a2d
	or b			;1a2e
	ld (hl),b		;1a2f
	cp l			;1a30
l1a31h:
	pop de			;1a31
	xor 021h		;1a32
	pop af			;1a34
	ld b,d			;1a35
	ld hl,043f1h		;1a36
	ld hl,034f1h		;1a39
	ld hl,0edf2h		;1a3c
	ld bc,0ea35h		;1a3f
	ex af,af'		;1a42
	ld b,b			;1a43
	ld b,b			;1a44
	ld b,b			;1a45
	ld b,c			;1a46
	ld b,b			;1a47
	ld b,c			;1a48
	ret p			;1a49
	defb 0fdh,0cdh,099h ;illegal sequence	;1a4a
	ld b,b			;1a4d
	nop			;1a4e
	jp nc,05090h		;1a4f
	sub b			;1a52
	pop de			;1a53
	nop			;1a54
	jr nz,l1a29h		;1a55
	or b			;1a57
	ld (hl),b		;1a58
	ld b,b			;1a59
	ld (hl),b		;1a5a
	or b			;1a5b
	pop de			;1a5c
	djnz l1a31h		;1a5d
	sub b			;1a5f
	ld h,b			;1a60
	jr nz,l1ac3h		;1a61
	sub b			;1a63
	jp m,l04feh		;1a64
	jp (hl)			;1a67
	inc b			;1a68
	add a,c			;1a69
l1a6ah:
	ld bc,l0141h		;1a6a
	add a,c			;1a6d
	ld bc,l0141h		;1a6e
	ld bc,04181h		;1a71
	ld bc,00181h		;1a74
	ld b,c			;1a77
	ld de,l08ebh		;1a78
	ld (de),a		;1a7b
	add a,c			;1a7c
	ld bc,l0141h		;1a7d
	add a,c			;1a80
	ld bc,l1141h		;1a81
	ex de,hl		;1a84
	inc bc			;1a85
	ld a,(bc)		;1a86
	add a,c			;1a87
	ld bc,l0141h		;1a88
	add a,c			;1a8b
	add a,c			;1a8c
	ld b,c			;1a8d
	ld b,c			;1a8e
	call m,07c02h		;1a8f
	sbc a,d			;1a92
	add a,c			;1a93
	ld bc,l0141h		;1a94
	ex de,hl		;1a97
	inc bc			;1a98
	ld b,001h		;1a99
	add a,c			;1a9b
	ld b,c			;1a9c
	ld de,l04fch		;1a9d
	sub e			;1aa0
	sbc a,d			;1aa1
	defb 0fdh,069h ;ld iyl,c	;1aa2
	sbc a,d			;1aa4
	cp 001h			;1aa5
	jp (hl)			;1aa7
	inc b			;1aa8
	jp pe,0d40dh		;1aa9
	defb 0edh ;next byte illegal after ed	;1aac
	ld (bc),a		;1aad
	ld (hl),e		;1aae
	ld bc,010ebh		;1aaf
	inc bc			;1ab2
	ld sp,010ebh		;1ab3
	inc bc			;1ab6
	ld d,c			;1ab7
	ex de,hl		;1ab8
	djnz $+5		;1ab9
	ld (hl),c		;1abb
	ex de,hl		;1abc
	djnz l1ac2h		;1abd
	call m,0af02h		;1abf
l1ac2h:
	sbc a,d			;1ac2
l1ac3h:
	cp 001h			;1ac3
	jp (hl)			;1ac5
	inc b			;1ac6
	jp pe,0d40dh		;1ac7
	defb 0edh ;next byte illegal after ed	;1aca
	ld (bc),a		;1acb
	ld b,l			;1acc
	ret m			;1acd
	ld bc,0eb71h		;1ace
	add hl,de		;1ad1
	inc bc			;1ad2
	ld d,c			;1ad3
	ex de,hl		;1ad4
	rlca			;1ad5
	inc bc			;1ad6
	call m,0c302h		;1ad7
	sbc a,d			;1ada
	defb 0edh ;next byte illegal after ed	;1adb
	ld (bc),a		;1adc
	ld (hl),e		;1add
	ld sp,010ebh		;1ade
	inc bc			;1ae1
	ld hl,010ebh		;1ae2
	inc bc			;1ae5
	ld sp,l08ebh		;1ae6
	inc bc			;1ae9
	ld d,c			;1aea
	ex de,hl		;1aeb
	ex af,af'		;1aec
	inc bc			;1aed
	ld (hl),c		;1aee
	ex de,hl		;1aef
	dec c			;1af0
	inc bc			;1af1
	ld d,c			;1af2
	ld d,c			;1af3
	ld d,c			;1af4
	defb 0fdh,0a5h ;and iyl	;1af5
	sbc a,d			;1af7
	cp 001h			;1af8
	jp (hl)			;1afa
	inc b			;1afb
	jp pe,0ed0ch		;1afc
	ld (bc),a		;1aff
	ld (hl),a		;1b00
	ret m			;1b01
	dec d			;1b02
	jp nc,0f903h		;1b03
	sbc a,d			;1b06
	sbc a,e			;1b07
	or c			;1b08
	pop de			;1b09
	ld hl,l02ebh		;1b0a
	dec d			;1b0d
	jp (hl)			;1b0e
	inc b			;1b0f
	jp pe,0d20ch		;1b10
	defb 0edh ;next byte illegal after ed	;1b13
	ld (bc),a		;1b14
	ld h,(hl)		;1b15
	ld sp,hl		;1b16
	ei			;1b17
	sbc a,e			;1b18
	jp pe,0ed0ah		;1b19
	inc bc			;1b1c
	inc bc			;1b1d
	ret m			;1b1e
	dec d			;1b1f
	dec b			;1b20
	out (0a5h),a		;1b21
	ld (hl),e		;1b23
	jp pe,0d20ch		;1b24
	defb 0edh ;next byte illegal after ed	;1b27
	ld (bc),a		;1b28
	ld h,(hl)		;1b29
	ld sp,hl		;1b2a
	ei			;1b2b
	sbc a,e			;1b2c
	jp pe,0ed0bh		;1b2d
	ld (bc),a		;1b30
	ld h,(hl)		;1b31
	pop de			;1b32
	ret m			;1b33
	rlca			;1b34
	dec b			;1b35
	jp nc,05395h		;1b36
	jp pe,0f90bh		;1b39
	ei			;1b3c
	sbc a,e			;1b3d
	jp pe,0ed0bh		;1b3e
	inc bc			;1b41
	inc bc			;1b42
	ret m			;1b43
	dec d			;1b44
	jp nc,0d305h		;1b45
	and l			;1b48
	ld (hl),e		;1b49
	jp pe,0d20ch		;1b4a
	defb 0edh ;next byte illegal after ed	;1b4d
	ld (bc),a		;1b4e
	ld h,(hl)		;1b4f
	ld sp,hl		;1b50
	ei			;1b51
	sbc a,e			;1b52
	jp pe,0ed0ch		;1b53
	ld (bc),a		;1b56
	ld h,(hl)		;1b57
	jp nc,l07f8h		;1b58
	ld (hl),c		;1b5b
	ld bc,09151h		;1b5c
	pop de			;1b5f
	ld bc,091d2h		;1b60
	ld d,c			;1b63
	ld bc,004e9h		;1b64
	jp pe,0d20bh		;1b67
	defb 0edh ;next byte illegal after ed	;1b6a
	ld (bc),a		;1b6b
	jr c,$-6		;1b6c
	rlca			;1b6e
	scf			;1b6f
	pop de			;1b70
	ret m			;1b71
	dec b			;1b72
	jp pe,0f90bh		;1b73
	xor 09bh		;1b76
	rst 28h			;1b78
	ld bc,l0af8h		;1b79
	jp pe,0d208h		;1b7c
	and c			;1b7f
	ld (hl),c		;1b80
	ld sp,0a373h		;1b81
	pop de			;1b84
	ld bc,091d2h		;1b85
	ld d,c			;1b88
	ld bc,05353h		;1b89
	sub c			;1b8c
	defb 0edh ;next byte illegal after ed	;1b8d
	dec b			;1b8e
	ld h,h			;1b8f
	jp (hl)			;1b90
	ex af,af'		;1b91
	pop de			;1b92
	rlca			;1b93
	jp nc,0f0b7h		;1b94
	defb 0fdh,0f8h,09ah ;illegal sequence	;1b97
	ld (hl),c		;1b9a
	ld d,c			;1b9b
	ld sp,02171h		;1b9c
	ld (hl),c		;1b9f
	ld bc,02171h		;1ba0
	ld (hl),c		;1ba3
	ld sp,05171h		;1ba4
	ld (hl),c		;1ba7
	inc sp			;1ba8
	and c			;1ba9
	sub c			;1baa
	ld (hl),c		;1bab
	and c			;1bac
	ld d,c			;1bad
	and c			;1bae
	ld sp,051a1h		;1baf
	and c			;1bb2
	ld (hl),c		;1bb3
	and c			;1bb4
	sub c			;1bb5
	and c			;1bb6
	ld d,e			;1bb7
	pop de			;1bb8
	ld bc,0a1d2h		;1bb9
	sub c			;1bbc
	pop de			;1bbd
	ld bc,071d2h		;1bbe
	pop de			;1bc1
	ld bc,051d2h		;1bc2
	pop de			;1bc5
	ld bc,071d2h		;1bc6
	pop de			;1bc9
	ld bc,091d2h		;1bca
	pop de			;1bcd
	ld bc,0a1d2h		;1bce
	pop de			;1bd1
	ld bc,073d2h		;1bd2
	pop de			;1bd5
	ld hl,0d201h		;1bd6
	or c			;1bd9
	pop de			;1bda
	ld hl,091d2h		;1bdb
	pop de			;1bde
	ld hl,071d2h		;1bdf
	pop de			;1be2
	ld hl,091d2h		;1be3
	pop de			;1be6
	ld hl,091d2h		;1be7
	pop de			;1bea
	ld hl,0fad2h		;1beb
	rlca			;1bee
	scf			;1bef
	ld (hl),a		;1bf0
	sub a			;1bf1
	ld (hl),a		;1bf2
	ld h,e			;1bf3
	sub c			;1bf4
	ld (hl),c		;1bf5
	ld hl,02161h		;1bf6
	ld (hl),c		;1bf9
	jp m,l07f8h		;1bfa
	ld (hl),c		;1bfd
	and c			;1bfe
	sub c			;1bff
	and c			;1c00
	pop de			;1c01
	ld bc,0a1d2h		;1c02
	sub c			;1c05
	and c			;1c06
	jp m,sub_01feh		;1c07
	rst 28h			;1c0a
	ld bc,004e9h		;1c0b
	jp pe,0d206h		;1c0e
	defb 0edh ;next byte illegal after ed	;1c11
	ld (bc),a		;1c12
	ld (hl),a		;1c13
	ret m			;1c14
	dec d			;1c15
	ld b,0f9h		;1c16
	sbc a,d			;1c18
	sbc a,e			;1c19
	or b			;1c1a
	ex de,hl		;1c1b
	ld (bc),a		;1c1c
	dec d			;1c1d
	rst 28h			;1c1e
	ld bc,004e9h		;1c1f
	jp pe,0d207h		;1c22
	defb 0edh ;next byte illegal after ed	;1c25
	ld b,074h		;1c26
	ret m			;1c28
	add hl,bc		;1c29
	ld (hl),l		;1c2a
	ld d,l			;1c2b
	defb 0edh ;next byte illegal after ed	;1c2c
	dec b			;1c2d
	ld (0c32fh),hl		;1c2e
	ld (hl),l		;1c31
	ld d,l			;1c32
	inc hl			;1c33
	jp pe,0ed05h		;1c34
	ld (bc),a		;1c37
	ld (l07f8h),hl		;1c38
	pop de			;1c3b
	ex af,af'		;1c3c
	jp nc,05095h		;1c3d
	jp pe,0ed06h		;1c40
	ld b,074h		;1c43
	ret m			;1c45
	add hl,bc		;1c46
	jp nc,05575h		;1c47
	defb 0edh ;next byte illegal after ed	;1c4a
	dec b			;1c4b
	ld (0c32fh),hl		;1c4c
	ld (hl),l		;1c4f
	ld d,l			;1c50
	inc hl			;1c51
	jp nc,l02edh		;1c52
	ld h,(hl)		;1c55
	ret m			;1c56
	rlca			;1c57
	ld (hl),h		;1c58
	ld bc,09151h		;1c59
	pop de			;1c5c
	ld bc,091d2h		;1c5d
	ld d,b			;1c60
	ret p			;1c61
	rst 28h			;1c62
	ld bc,004e9h		;1c63
	jp pe,0d208h		;1c66
	defb 0edh ;next byte illegal after ed	;1c69
	ld (bc),a		;1c6a
	ld (l07f8h),hl		;1c6b
	ld a,(0eef9h)		;1c6e
	sbc a,e			;1c71
	ret m			;1c72
	ld a,(bc)		;1c73
	jp pe,0a107h		;1c74
	ld (hl),c		;1c77
	ld sp,0a373h		;1c78
	sub c			;1c7b
	ld d,c			;1c7c
	ld bc,05301h		;1c7d
	ld d,d			;1c80
	defb 0edh ;next byte illegal after ed	;1c81
	nop			;1c82
	ld h,h			;1c83
	jp (hl)			;1c84
	ex af,af'		;1c85
	ld a,e			;1c86
	out (0edh),a		;1c87
	dec b			;1c89
	ld h,(hl)		;1c8a
	ld (hl),b		;1c8b
	ld d,c			;1c8c
	ld d,b			;1c8d
	defb 0fdh,008h,09ch ;illegal sequence	;1c8e
	cp 001h			;1c91
	jp pe,0f90bh		;1c93
	ld sp,hl		;1c96
	sbc a,h			;1c97
	jp (hl)			;1c98
	inc b			;1c99
	jp pe,0d209h		;1c9a
	defb 0edh ;next byte illegal after ed	;1c9d
	ld b,074h		;1c9e
	ret m			;1ca0
	jr nz,$+7		;1ca1
	out (0a5h),a		;1ca3
	ld (hl),e		;1ca5
	jp nc,0edeeh		;1ca6
	sub a			;1ca9
	ld b,e			;1caa
	ret m			;1cab
	inc d			;1cac
	ld (hl),c		;1cad
	sub c			;1cae
	and c			;1caf
	ld a,c			;1cb0
	jp nc,0edeeh		;1cb1
	ld b,074h		;1cb4
	ret m			;1cb6
	jr nz,l1cbeh		;1cb7
	out (0a5h),a		;1cb9
	ld (hl),e		;1cbb
	ld d,e			;1cbc
	defb 0edh ;next byte illegal after ed	;1cbd
l1cbeh:
	ld (bc),a		;1cbe
	ld (hl),h		;1cbf
	ld d,c			;1cc0
	ld bc,05121h		;1cc1
	ld bc,051d4h		;1cc4
	ei			;1cc7
	ld (bc),a		;1cc8
	sbc a,b			;1cc9
	sbc a,h			;1cca
	jp (hl)			;1ccb
	inc b			;1ccc
	defb 0edh ;next byte illegal after ed	;1ccd
	ld (bc),a		;1cce
	ld d,d			;1ccf
	jp pe,0d20ah		;1cd0
	ret m			;1cd3
	inc de			;1cd4
	ld (hl),c		;1cd5
	sub c			;1cd6
	and c			;1cd7
	pop de			;1cd8
	add hl,sp		;1cd9
	ld (hl),l		;1cda
	and a			;1cdb
	jp pe,0d208h		;1cdc
	or b			;1cdf
	and b			;1ce0
	jp pe,0f90bh		;1ce1
	and d			;1ce4
	sbc a,l			;1ce5
	jp pe,0f909h		;1ce6
	jp 0d19dh		;1ce9
	or c			;1cec
	ld (hl),c		;1ced
	ld hl,0d201h		;1cee
	or c			;1cf1
	ld (hl),c		;1cf2
	ld hl,0b1d3h		;1cf3
	defb 0fdh,091h,09ch ;illegal sequence	;1cf6
	jp (hl)			;1cf9
	inc b			;1cfa
	call nc,sub_06edh	;1cfb
	ld (hl),h		;1cfe
	ret m			;1cff
	jr nz,$+15		;1d00
	nop			;1d02
	jr nc,l1d7ch		;1d03
	rlca			;1d05
	dec a			;1d06
	jr nc,$+114		;1d07
	and a			;1d09
	scf			;1d0a
	ld e,l			;1d0b
	ld d,b			;1d0c
	sub b			;1d0d
	out (007h),a		;1d0e
	ld d,a			;1d10
	ld a,a			;1d11
	cpl			;1d12
	call nc,sub_000dh	;1d13
	jr nc,l1d8fh		;1d16
	rlca			;1d18
	dec a			;1d19
	jr nc,l1d8ch		;1d1a
	and a			;1d1c
	scf			;1d1d
	ld e,l			;1d1e
	ld d,b			;1d1f
	sub b			;1d20
	out (007h),a		;1d21
	ld d,a			;1d23
	jp (hl)			;1d24
	ex af,af'		;1d25
	ld a,a			;1d26
	jp m,sub_01feh		;1d27
	rst 28h			;1d2a
	ld bc,l04eah		;1d2b
	ld sp,hl		;1d2e
	ld sp,hl		;1d2f
l1d30h:
	sbc a,h			;1d30
	ret p			;1d31
	rst 28h			;1d32
	ld bc,004e9h		;1d33
	jp pe,0d307h		;1d36
	defb 0edh ;next byte illegal after ed	;1d39
	ld b,074h		;1d3a
	ret m			;1d3c
	jr nz,l1d30h		;1d3d
	and e			;1d3f
	jp nc,0d305h		;1d40
	and l			;1d43
	ld (hl),e		;1d44
	jp p,008eah		;1d45
	jp nc,0edeeh		;1d48
	add a,d			;1d4b
	ld (014f8h),a		;1d4c
	ld (hl),c		;1d4f
	sub c			;1d50
	and c			;1d51
	ld a,c			;1d52
	jp pe,0d307h		;1d53
	xor 0edh		;1d56
	ld b,074h		;1d58
	ret m			;1d5a
	jr nz,$-13		;1d5b
	and e			;1d5d
	jp nc,0d305h		;1d5e
	and l			;1d61
	ld (hl),e		;1d62
	ld d,e			;1d63
	defb 0edh ;next byte illegal after ed	;1d64
	ld (bc),a		;1d65
	ld (hl),h		;1d66
	jp p,l0151h		;1d67
	ld hl,l0151h		;1d6a
	call nc,0fb51h		;1d6d
	ld (bc),a		;1d70
	ld (0ef9dh),a		;1d71
	ld bc,004e9h		;1d74
	jp pe,0d204h		;1d77
	defb 0edh ;next byte illegal after ed	;1d7a
	inc bc			;1d7b
l1d7ch:
	ld (l13f8h),hl		;1d7c
	ld (hl),b		;1d7f
	ld (hl),c		;1d80
	sub c			;1d81
	and c			;1d82
	pop de			;1d83
	add hl,sp		;1d84
	ld (hl),a		;1d85
	and l			;1d86
	jp pe,0d204h		;1d87
	or b			;1d8a
	or b			;1d8b
l1d8ch:
	jp pe,0f904h		;1d8c
l1d8fh:
	and d			;1d8f
	sbc a,l			;1d90
	ld sp,hl		;1d91
	jp 0b19dh		;1d92
	ld (hl),c		;1d95
	ld hl,0d201h		;1d96
	or c			;1d99
	ld (hl),c		;1d9a
	ld hl,0b0d3h		;1d9b
	ret p			;1d9e
	defb 0fdh,028h,09dh ;illegal sequence	;1d9f
	sub c			;1da2
	ld (hl),c		;1da3
	ld h,c			;1da4
	sub c			;1da5
	sub c			;1da6
	pop de			;1da7
	ld bc,09127h		;1da8
	ld (hl),c		;1dab
	ld h,c			;1dac
	ld sp,l0121h		;1dad
	defb 0edh ;next byte illegal after ed	;1db0
	ld (bc),a		;1db1
	ld d,d			;1db2
	jp nc,071a1h		;1db3
	ld sp,0a373h		;1db6
	pop de			;1db9
	ld bc,091d2h		;1dba
	ld d,c			;1dbd
	ld bc,05353h		;1dbe
	sub c			;1dc1
	jp m,l01d0h		;1dc2
	pop de			;1dc5
	ld (hl),c		;1dc6
	ld hl,l01d0h		;1dc7
	pop de			;1dca
	ld (hl),c		;1dcb
	ld hl,0d071h		;1dcc
	ld bc,0fefah		;1dcf
	inc b			;1dd2
l1dd3h:
	jp (hl)			;1dd3
	inc b			;1dd4
	ld bc,l1101h		;1dd5
	ld bc,0d5fdh		;1dd8
	sbc a,l			;1ddb
	rst 38h			;1ddc
	cp 001h			;1ddd
	rst 28h			;1ddf
	ld bc,026f8h		;1de0
	jp (hl)			;1de3
	inc b			;1de4
	defb 0edh ;next byte illegal after ed	;1de5
	ld (bc),a		;1de6
	jr nc,l1dd3h		;1de7
	dec c			;1de9
	call nc,0ea91h		;1dea
	ld a,(bc)		;1ded
	jp nc,0eb91h		;1dee
	rra			;1df1
	ld a,(bc)		;1df2
	jp pe,0d40bh		;1df3
	ld (hl),c		;1df6
	out (071h),a		;1df7
	jp pe,0d40ch		;1df9
	ld d,c			;1dfc
	jp pe,0d20ah		;1dfd
	ld d,c			;1e00
	ex de,hl		;1e01
	djnz $+12		;1e02
	jp pe,0d40dh		;1e04
	and c			;1e07
	jp pe,0d20ah		;1e08
	and c			;1e0b
	ex de,hl		;1e0c
	djnz $+12		;1e0d
	jp pe,0d40ch		;1e0f
	ld d,c			;1e12
	jp pe,0d20ah		;1e13
	ld d,c			;1e16
	ex de,hl		;1e17
	djnz l1e24h		;1e18
	jp pe,0d40dh		;1e1a
	ld hl,l0aeah		;1e1d
	jp nc,0eb21h		;1e20
	inc b			;1e23
l1e24h:
	ld a,(bc)		;1e24
	jp pe,0d40dh		;1e25
	and c			;1e28
	jp pe,0d20ah		;1e29
	and c			;1e2c
	ex de,hl		;1e2d
	inc b			;1e2e
	ld a,(bc)		;1e2f
	call nc,0ea41h		;1e30
	ld a,(bc)		;1e33
	jp nc,0eb41h		;1e34
	ex af,af'		;1e37
	ex af,af'		;1e38
	defb 0edh ;next byte illegal after ed	;1e39
	ld bc,0ea30h		;1e3a
	inc c			;1e3d
	call nc,0d391h		;1e3e
	ld b,c			;1e41
	sub c			;1e42
	call nc,0d391h		;1e43
	ld b,c			;1e46
	sub c			;1e47
	call nc,0d391h		;1e48
	sub c			;1e4b
	call nc,0d351h		;1e4c
	ld bc,0d451h		;1e4f
	ld d,c			;1e52
	out (001h),a		;1e53
	ld d,c			;1e55
	call nc,0d351h		;1e56
	ld d,c			;1e59
	call nc,0d371h		;1e5a
	ld hl,0d471h		;1e5d
	ld (hl),c		;1e60
	out (021h),a		;1e61
	ld (hl),c		;1e63
	call nc,0d371h		;1e64
	ld (hl),c		;1e67
	call nc,0b141h		;1e68
	out (041h),a		;1e6b
	call nc,0b141h		;1e6d
	out (041h),a		;1e70
	call nc,0d341h		;1e72
	ld b,c			;1e75
	ex de,hl		;1e76
	ld (bc),a		;1e77
	ccf			;1e78
	defb 0fdh,0ddh,09dh ;illegal sequence	;1e79
	rst 38h			;1e7c
	cp 001h			;1e7d
	ret m			;1e7f
	dec d			;1e80
	jp (hl)			;1e81
	inc b			;1e82
	jp pe,0ed09h		;1e83
	ld bc,0d350h		;1e86
	sub c			;1e89
	jp nc,04101h		;1e8a
	sbc a,c			;1e8d
	out (0b1h),a		;1e8e
	jp nc,07121h		;1e90
	cp c			;1e93
	ld bc,09141h		;1e94
	pop de			;1e97
	add hl,bc		;1e98
	jp nc,06121h		;1e99
	sub c			;1e9c
	pop de			;1e9d
	add hl,hl		;1e9e
	jp nc,09151h		;1e9f
	pop de			;1ea2
	ld bc,008e9h		;1ea3
	ld e,h			;1ea6
	jp (hl)			;1ea7
	inc b			;1ea8
	jp nc,0b171h		;1ea9
	pop de			;1eac
	ld hl,008e9h		;1ead
	ld a,h			;1eb0
	ret m			;1eb1
	ld a,(bc)		;1eb2
	defb 0edh ;next byte illegal after ed	;1eb3
	inc bc			;1eb4
	inc sp			;1eb5
	jp (hl)			;1eb6
	inc b			;1eb7
	ld sp,hl		;1eb8
	inc l			;1eb9
	sbc a,a			;1eba
	jp pe,0ed0ah		;1ebb
	ld bc,0d140h		;1ebe
	ld hl,05141h		;1ec1
	ld b,e			;1ec4
	ld bc,0d223h		;1ec5
	ld hl,05141h		;1ec8
	ld b,e			;1ecb
	ld bc,0d123h		;1ecc
	ld hl,05141h		;1ecf
	ld (hl),e		;1ed2
	sub c			;1ed3
	ret nc			;1ed4
	dec l			;1ed5
	nop			;1ed6
	pop de			;1ed7
	and b			;1ed8
	sub b			;1ed9
	ld (hl),b		;1eda
	ld d,b			;1edb
	ld b,b			;1edc
	ret m			;1edd
	ld a,(bc)		;1ede
	defb 0edh ;next byte illegal after ed	;1edf
	inc bc			;1ee0
	inc sp			;1ee1
	jp (hl)			;1ee2
	inc b			;1ee3
	jp pe,0f909h		;1ee4
	inc l			;1ee7
	sbc a,a			;1ee8
	jp pe,0d20bh		;1ee9
	dec h			;1eec
l1eedh:
	jr nz,l1f2fh		;1eed
	ld d,l			;1eef
	ld d,b			;1ef0
	ld (hl),b		;1ef1
	sub l			;1ef2
	sub b			;1ef3
	and b			;1ef4
	pop de			;1ef5
	ld (bc),a		;1ef6
	jp nc,041a2h		;1ef7
	sbc a,c			;1efa
	sub c			;1efb
	or c			;1efc
	pop de			;1efd
	ld c,a			;1efe
	pop bc			;1eff
	ret m			;1f00
	ld (bc),a		;1f01
	jp pe,0ed07h		;1f02
	inc bc			;1f05
	jr nc,$+71		;1f06
	jp nc,0d199h		;1f08
	ld b,l			;1f0b
	jp nc,0d199h		;1f0c
	dec h			;1f0f
	jp nc,0d179h		;1f10
	dec h			;1f13
	jp nc,0eab9h		;1f14
	rlca			;1f17
	defb 0edh ;next byte illegal after ed	;1f18
	ld (bc),a		;1f19
	ld b,b			;1f1a
	pop de			;1f1b
	sub l			;1f1c
	ld b,l			;1f1d
	sub e			;1f1e
	sub l			;1f1f
	ld b,l			;1f20
	sub e			;1f21
	ld (hl),l		;1f22
	dec h			;1f23
	ld (hl),e		;1f24
	add a,l			;1f25
	ld b,l			;1f26
	add a,e			;1f27
	defb 0fdh,07dh ;ld a,iyl	;1f28
	sbc a,(hl)		;1f2a
	rst 38h			;1f2b
	jp nc,0b191h		;1f2c
l1f2fh:
	pop de			;1f2f
	ld bc,0b3d2h		;1f30
	ld (hl),c		;1f33
	sub e			;1f34
	out (091h),a		;1f35
	or c			;1f37
	jp nc,0d301h		;1f38
	or e			;1f3b
	ld (hl),c		;1f3c
	sub e			;1f3d
	jp nc,0b191h		;1f3e
	pop de			;1f41
	ld bc,0b3d2h		;1f42
	ld (hl),c		;1f45
	pop de			;1f46
	ld b,e			;1f47
	out (091h),a		;1f48
	or c			;1f4a
	jp nc,0d301h		;1f4b
	or e			;1f4e
	ld (hl),c		;1f4f
	jp nc,0fa43h		;1f50
	cp 001h			;1f53
	rst 28h			;1f55
	ld bc,l03f8h		;1f56
	jp (hl)			;1f59
	inc b			;1f5a
	jp pe,0ed0ah		;1f5b
	ld bc,0d350h		;1f5e
	sub c			;1f61
	jp nc,04101h		;1f62
	sbc a,c			;1f65
l1f66h:
	out (0b1h),a		;1f66
	jp nc,07121h		;1f68
	cp c			;1f6b
	ld bc,09141h		;1f6c
	pop de			;1f6f
	add hl,bc		;1f70
	jp nc,06121h		;1f71
	sub c			;1f74
	pop de			;1f75
	add hl,hl		;1f76
	jp nc,09151h		;1f77
	pop de			;1f7a
	ld bc,008e9h		;1f7b
	ld e,h			;1f7e
	jp (hl)			;1f7f
	inc b			;1f80
	jp nc,0b171h		;1f81
	pop de			;1f84
	ld hl,008e9h		;1f85
	ld a,h			;1f88
	ret m			;1f89
	ld a,(bc)		;1f8a
	jp (hl)			;1f8b
	inc b			;1f8c
	jp pe,0d309h		;1f8d
	defb 0edh ;next byte illegal after ed	;1f90
	dec b			;1f91
	add a,b			;1f92
	sub l			;1f93
	cp c			;1f94
	jp nc,0d305h		;1f95
	cp c			;1f98
	ex de,hl		;1f99
	ld (bc),a		;1f9a
	inc c			;1f9b
	jp pe,0d308h		;1f9c
	and l			;1f9f
	jp nc,02509h		;1fa0
	add hl,bc		;1fa3
	ex de,hl		;1fa4
	ld (bc),a		;1fa5
	ld a,(bc)		;1fa6
	out (0edh),a		;1fa7
l1fa9h:
	dec b			;1fa9
	add a,b			;1faa
	sub l			;1fab
	cp c			;1fac
	jp nc,0d305h		;1fad
	cp c			;1fb0
	ex de,hl		;1fb1
	ld (bc),a		;1fb2
	inc c			;1fb3
	jp pe,0ed0ah		;1fb4
	ld bc,0d240h		;1fb7
	dec h			;1fba
	out (0a0h),a		;1fbb
	jp nc,02500h		;1fbd
	jr nz,$+66		;1fc0
	ld d,l			;1fc2
	ld d,b			;1fc3
	ld (hl),b		;1fc4
	ld (hl),d		;1fc5
	ld (hl),d		;1fc6
	ld bc,04149h		;1fc7
	ld h,c			;1fca
	sbc a,c			;1fcb
	add a,a			;1fcc
	ret m			;1fcd
	ld (bc),a		;1fce
	jp (hl)			;1fcf
	inc b			;1fd0
	jp pe,0ed0ah		;1fd1
	inc bc			;1fd4
	jr nc,l1fa9h		;1fd5
	sub l			;1fd7
	ld b,l			;1fd8
	sub e			;1fd9
	sub l			;1fda
	ld b,l			;1fdb
	sub e			;1fdc
	ld (hl),l		;1fdd
	dec h			;1fde
	ld (hl),e		;1fdf
	add a,l			;1fe0
	ld b,l			;1fe1
	or e			;1fe2
	ret m			;1fe3
	ld (bc),a		;1fe4
	jp (hl)			;1fe5
	inc b			;1fe6
	jp pe,0ed09h		;1fe7
	inc bc			;1fea
	jr nc,$-45		;1feb
	ld b,l			;1fed
	jp nc,0d199h		;1fee
	ld b,l			;1ff1
	jp nc,0d199h		;1ff2
	dec h			;1ff5
	jp nc,0d179h		;1ff6
	dec h			;1ff9
	jp nc,0fdb9h		;1ffa
	ld d,e			;1ffd
	sbc a,a			;1ffe
	rst 38h			;1fff
