; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x0000 -o docs/reverse-engineering/issues/issue-188/gradius2e_banks/bank12.asm /tmp/gradius2e_bank12.bin

	org 00000h

l0000h:
	inc b			;0000
sub_0001h:
	add hl,de		;0001
l0002h:
	and b			;0002
l0003h:
	ld bc,0a5aeh		;0003
l0006h:
	ld (bc),a		;0006
	sbc a,c			;0007
	and d			;0008
	ld bc,0a793h		;0009
	nop			;000c
	ld b,l			;000d
	ld d,a			;000e
	inc h			;000f
l0010h:
	ld (de),a		;0010
	ld c,l			;0011
	ld l,d			;0012
	ld (de),a		;0013
	dec e			;0014
	ld a,(05287h)		;0015
	nop			;0018
	add a,d			;0019
	inc bc			;001a
	ret p			;001b
	ld b,0ffh		;001c
	adc a,b			;001e
	ld a,e			;001f
	jp m,0f4f6h		;0020
	call m,0f9fdh		;0023
	ld sp,hl		;0026
	inc b			;0027
	nop			;0028
	inc b			;0029
	ld bc,l1e83h		;002a
	ccf			;002d
	ld a,a			;002e
	dec b			;002f
	rst 38h			;0030
	add a,c			;0031
	ld bc,l0307h		;0032
	sub b			;0035
	di			;0036
l0037h:
	pop af			;0037
	ret po			;0038
	and 0cfh		;0039
	rst 8			;003b
	sbc a,(hl)		;003c
	sbc a,h			;003d
	rst 38h			;003e
	rst 38h			;003f
	ld a,a			;0040
	ccf			;0041
	adc a,a			;0042
	ex (sp),hl		;0043
	ret m			;0044
	call m,0ff04h		;0045
	adc a,h			;0048
	ret p			;0049
	rlca			;004a
	ld a,b			;004b
	add a,b			;004c
	rst 38h			;004d
	rst 38h			;004e
	ret po			;004f
	rrca			;0050
	ret p			;0051
	ret nz			;0052
	ld b,a			;0053
l0054h:
	ret m			;0054
	inc bc			;0055
	rst 38h			;0056
	pop de			;0057
	cp 0f8h			;0058
	pop hl			;005a
	ld b,009h		;005b
	jr c,l0097h		;005d
	ld (hl),b		;005f
	ret p			;0060
	ret p			;0061
	ret pe			;0062
	ld h,h			;0063
	inc (hl)		;0064
	ret p			;0065
	rlca			;0066
	ld a,a			;0067
	nop			;0068
	xor d			;0069
	ld b,l			;006a
	ret po			;006b
	nop			;006c
	defb 0fdh,0fch,0fch ;illegal sequence	;006d
	ld sp,hl		;0070
	di			;0071
	jp p,06964h		;0072
	inc c			;0075
	ld (hl),b		;0076
	jp 0f08ch		;0077
	ld b,b			;007a
	add a,b			;007b
	nop			;007c
	ret m			;007d
	pop hl			;007e
	add a,(hl)		;007f
	add hl,de		;0080
	ld h,a			;0081
	sbc a,(hl)		;0082
	ld a,l			;0083
	call m,09f67h		;0084
	ld a,(hl)		;0087
	ret p			;0088
	add a,a			;0089
	ccf			;008a
	rst 8			;008b
	scf			;008c
	nop			;008d
	rst 38h			;008e
	rst 38h			;008f
	inc bc			;0090
	xor c			;0091
	ld d,h			;0092
	ld hl,(l1b05h)		;0093
	sub e			;0096
l0097h:
	set 4,l			;0097
	jp p,07af9h		;0099
	ld a,(08d1bh)		;009c
	add a,0e3h		;009f
	pop af			;00a1
	ret m			;00a2
l00a3h:
	inc a			;00a3
	sbc a,(hl)		;00a4
	sbc a,d			;00a5
	ld b,d			;00a6
	ld h,02eh		;00a7
	inc bc			;00a9
	ld c,095h		;00aa
	inc c			;00ac
	sub a			;00ad
	ld e,e			;00ae
	ld e,l			;00af
	ld e,l			;00b0
	xor (hl)		;00b1
	xor (hl)		;00b2
	xor a			;00b3
	xor b			;00b4
	dec e			;00b5
	add hl,de		;00b6
	add hl,de		;00b7
	ld a,(de)		;00b8
	ld a,(de)		;00b9
	inc (hl)		;00ba
	dec (hl)		;00bb
	dec h			;00bc
	ld h,e			;00bd
	ld h,a			;00be
	ld b,a			;00bf
	ld c,a			;00c0
	inc b			;00c1
l00c2h:
	rst 8			;00c2
	add a,l			;00c3
	ld a,0f9h		;00c4
	rst 20h			;00c6
	rlca			;00c7
	ret nz			;00c8
	inc b			;00c9
l00cah:
	rst 38h			;00ca
	add a,d			;00cb
	call m,sub_0513h	;00cc
	rst 38h			;00cf
	inc bc			;00d0
	ld (hl),a		;00d1
	ld (bc),a		;00d2
	ld a,e			;00d3
	inc bc			;00d4
	ld a,l			;00d5
	add a,e			;00d6
	sbc a,a			;00d7
	rlca			;00d8
	ret po			;00d9
l00dah:
	dec b			;00da
	rst 38h			;00db
	add a,h			;00dc
	djnz l00dfh		;00dd
l00dfh:
	inc b			;00df
	djnz l00e5h		;00e0
	nop			;00e2
	adc a,d			;00e3
	inc bc			;00e4
l00e5h:
	rst 8			;00e5
	rst 20h			;00e6
	di			;00e7
	ld sp,hl		;00e8
	call m,02e80h		;00e9
	ld l,a			;00ec
	ld a,a			;00ed
	inc bc			;00ee
	rst 38h			;00ef
	sub l			;00f0
l00f1h:
	rra			;00f1
	add a,b			;00f2
	call m,0fffeh		;00f3
	ccf			;00f6
	rst 38h			;00f7
l00f8h:
	sbc a,a			;00f8
	ld a,a			;00f9
	rst 38h			;00fa
	and b			;00fb
	rrca			;00fc
	rst 38h			;00fd
sub_00feh:
	ex (sp),hl		;00fe
sub_00ffh:
	rst 38h			;00ff
	rst 0			;0100
	rst 38h			;0101
sub_0102h:
	adc a,a			;0102
	ret m			;0103
	inc hl			;0104
	ld bc,0000bh		;0105
	add a,c			;0108
	ld bc,l0003h		;0109
	add a,e			;010c
	ld c,h			;010d
	nop			;010e
l010fh:
	xor c			;010f
	inc b			;0110
	nop			;0111
	add a,l			;0112
	ret po			;0113
	djnz l0116h		;0114
l0116h:
	inc b			;0116
	djnz l011ch		;0117
	nop			;0119
	add a,h			;011a
l011bh:
	dec c			;011b
l011ch:
	ld c,h			;011c
	nop			;011d
	xor c			;011e
	inc b			;011f
	nop			;0120
	add a,h			;0121
	ld (hl),b		;0122
	rst 38h			;0123
	nop			;0124
	rst 38h			;0125
	dec b			;0126
	nop			;0127
	adc a,h			;0128
	jr nz,l011bh		;0129
	sbc a,h			;012b
	jp (hl)			;012c
	out (025h),a		;012d
	ld a,(de)		;012f
	sub a			;0130
	djnz l0133h		;0131
l0133h:
	inc b			;0133
	djnz l0139h		;0134
	nop			;0136
	sub l			;0137
	rra			;0138
l0139h:
	ld b,e			;0139
	ld d,054h		;013a
	ld c,c			;013c
	ld (bc),a		;013d
l013eh:
	ld c,b			;013e
	ld l,h			;013f
	add a,(hl)		;0140
	nop			;0141
	inc h			;0142
	ex af,af'		;0143
	and c			;0144
	ld d,b			;0145
	sub d			;0146
	ld h,b			;0147
	jp c,l0010h		;0148
	inc b			;014b
	djnz l0152h		;014c
	nop			;014e
	add a,c			;014f
	add a,b			;0150
	rlca			;0151
l0152h:
	nop			;0152
	add a,c			;0153
	ret nz			;0154
	rlca			;0155
	nop			;0156
	add a,c			;0157
	ret po			;0158
	rlca			;0159
	nop			;015a
	adc a,e			;015b
	jr nz,$+10		;015c
	add a,b			;015e
	nop			;015f
	nop			;0160
	inc b			;0161
	jr l0164h		;0162
l0164h:
	ccf			;0164
	call m,sub_05c0h	;0165
	nop			;0168
	adc a,l			;0169
	ld b,c			;016a
	dec b			;016b
	ld a,(de)		;016c
	dec (hl)		;016d
	ret pe			;016e
	ld d,b			;016f
	ld a,d			;0170
	ret			;0171
	ret p			;0172
	nop			;0173
	rra			;0174
	cp 0e0h			;0175
	inc bc			;0177
	nop			;0178
	add a,l			;0179
	ret nz			;017a
	inc bc			;017b
	ccf			;017c
	call m,sub_03c0h	;017d
	nop			;0180
	adc a,h			;0181
	di			;0182
	cp a			;0183
	rst 30h			;0184
	ld h,h			;0185
	ret m			;0186
	sbc a,b			;0187
	add a,h			;0188
	jr nz,l019bh		;0189
	nop			;018b
	inc b			;018c
	djnz l0192h		;018d
	nop			;018f
	add a,h			;0190
	rlca			;0191
l0192h:
	ld c,h			;0192
	nop			;0193
	xor c			;0194
	inc b			;0195
	nop			;0196
	call pe,0c7f8h		;0197
	ret m			;019a
l019bh:
	add a,b			;019b
	inc b			;019c
	djnz l01d2h		;019d
	ld b,094h		;019f
	ld a,a			;01a1
	ret m			;01a2
	nop			;01a3
	rlca			;01a4
	ld (hl),b		;01a5
	ret m			;01a6
	defb 0fdh,0fch,000h ;illegal sequence	;01a7
	rrca			;01aa
	nop			;01ab
	ret p			;01ac
	nop			;01ad
	rrca			;01ae
	rst 38h			;01af
	ld a,a			;01b0
	ld a,a			;01b1
	rst 38h			;01b2
	rst 38h			;01b3
	call m,sub_03c0h	;01b4
	ccf			;01b7
	call m,0f0e0h		;01b8
	ld sp,hl		;01bb
	call m,sub_03c0h	;01bc
	ccf			;01bf
	call m,0ce80h		;01c0
	ret po			;01c3
	ld bc,0fe1fh		;01c4
	ret po			;01c7
	nop			;01c8
	rst 38h			;01c9
	ret po			;01ca
	nop			;01cb
	rrca			;01cc
	rst 38h			;01cd
	ret m			;01ce
	nop			;01cf
	ld c,03fh		;01d0
l01d2h:
	inc e			;01d2
	ret nz			;01d3
	inc bc			;01d4
	ld a,a			;01d5
	call m,0ffc0h		;01d6
	add a,b			;01d9
	rrca			;01da
	ld a,a			;01db
	ld a,a			;01dc
	ccf			;01dd
	inc c			;01de
	ret nz			;01df
	inc bc			;01e0
	rst 38h			;01e1
	add a,c			;01e2
	rst 38h			;01e3
	nop			;01e4
	ccf			;01e5
	nop			;01e6
	cp 000h			;01e7
	ld a,(l0e1dh)		;01e9
	rlca			;01ec
	inc bc			;01ed
	ld bc,l0000h		;01ee
l01f1h:
	ld l,c			;01f1
	ld l,d			;01f2
	ld c,h			;01f3
	ld e,h			;01f4
	ld e,b			;01f5
	ret nc			;01f6
	ld (bc),a		;01f7
	ld b,b			;01f8
	cp a			;01f9
	ld a,h			;01fa
	pop af			;01fb
	ex (sp),hl		;01fc
	add a,0bch		;01fd
	ret m			;01ff
l0200h:
	ret nz			;0200
l0201h:
	rlca			;0201
l0202h:
	cp 0e0h			;0202
	inc b			;0204
l0205h:
	nop			;0205
	add a,(hl)		;0206
	ld b,b			;0207
	rrca			;0208
	jr nc,l01d2h		;0209
	jr l026dh		;020b
	inc bc			;020d
	add a,b			;020e
	in a,(024h)		;020f
	ld c,l			;0211
	ld c,c			;0212
	sbc a,e			;0213
	ld e,036h		;0214
	inc h			;0216
	ld l,h			;0217
	ret nz			;0218
	inc bc			;0219
	inc c			;021a
	scf			;021b
	call c,061b2h		;021c
	ret nz			;021f
	add a,c			;0220
l0221h:
	ret po			;0221
	jr c,$+16		;0222
	inc bc			;0224
	ret nz			;0225
	jr nc,l0234h		;0226
	add a,b			;0228
	ld h,b			;0229
	inc de			;022a
	inc c			;022b
	add a,b			;022c
	ret po			;022d
	jr c,l023ch		;022e
	rlca			;0230
	jp l0c30h		;0231
l0234h:
	rst 38h			;0234
	jp 02632h		;0235
	inc bc			;0238
	ret nz			;0239
	jr nc,l0248h		;023a
l023ch:
	inc bc			;023c
	add a,b			;023d
	ld h,b			;023e
	jr $-126		;023f
	ret nz			;0241
	ld h,b			;0242
	jr nc,l025dh		;0243
	inc c			;0245
	ld h,(hl)		;0246
	ret p			;0247
l0248h:
	ld b,002h		;0248
	inc b			;024a
	inc b			;024b
	add hl,bc		;024c
	add hl,bc		;024d
	jp nc,08072h		;024e
	or b			;0251
	inc c			;0252
	ld bc,l0202h+1		;0253
	ld b,004h		;0256
	inc bc			;0258
	add a,b			;0259
	ld h,b			;025a
	jr l0263h		;025b
l025dh:
	ld bc,0f0c0h		;025d
	inc a			;0260
	rlca			;0261
	nop			;0262
l0263h:
	add a,b			;0263
	ret p			;0264
	ld e,003h		;0265
	add a,b			;0267
	rst 38h			;0268
	add a,c			;0269
	rst 38h			;026a
	inc bc			;026b
	nop			;026c
l026dh:
	xor d			;026d
	ld bc,0ff80h		;026e
	add a,c			;0271
	rst 38h			;0272
	nop			;0273
	dec d			;0274
	nop			;0275
	dec d			;0276
	nop			;0277
	rst 38h			;0278
	add a,c			;0279
	rst 38h			;027a
	nop			;027b
	dec d			;027c
	nop			;027d
	ld d,l			;027e
	nop			;027f
	rst 38h			;0280
	add a,c			;0281
	rst 38h			;0282
	nop			;0283
	ld d,l			;0284
	nop			;0285
	ld d,l			;0286
	nop			;0287
	rst 38h			;0288
	add a,c			;0289
	rst 38h			;028a
	nop			;028b
	ld d,l			;028c
	nop			;028d
	ld d,l			;028e
	nop			;028f
	ld sp,004c0h		;0290
	ld c,044h		;0293
	ret po			;0295
	ld b,b			;0296
	ld bc,l0300h		;0297
	rra			;029a
	xor d			;029b
	rrca			;029c
	ld c,a			;029d
	ld b,a			;029e
	ld h,a			;029f
	inc hl			;02a0
	ret m			;02a1
	cp 0feh			;02a2
	cp a			;02a4
	halt			;02a5
	cp a			;02a6
	ld (hl),l		;02a7
	xor d			;02a8
	nop			;02a9
	nop			;02aa
	ret nz			;02ab
	rst 38h			;02ac
	rst 38h			;02ad
	xor l			;02ae
	ld (hl),a		;02af
	xor d			;02b0
	nop			;02b1
	nop			;02b2
	rlca			;02b3
	rst 38h			;02b4
	ld a,a			;02b5
	jp c,0aaf7h		;02b6
	ld bc,0f51fh		;02b9
	rst 18h			;02bc
	xor d			;02bd
	cp 0f0h			;02be
	add a,b			;02c0
	or c			;02c1
	cp b			;02c2
	cp h			;02c3
	sbc a,(hl)		;02c4
	sbc a,a			;02c5
	inc bc			;02c6
	ld e,a			;02c7
	sub l			;02c8
	ld d,l			;02c9
	djnz $+65		;02ca
	rrca			;02cc
	nop			;02cd
l02ceh:
	add a,b			;02ce
	ret po			;02cf
	pop af			;02d0
	ld d,l			;02d1
	and b			;02d2
	ret p			;02d3
	add a,b			;02d4
	nop			;02d5
	rlca			;02d6
	ld a,a			;02d7
	rst 38h			;02d8
	ret p			;02d9
	add a,b			;02da
	rst 38h			;02db
	rlca			;02dc
	ld a,a			;02dd
	inc bc			;02de
	rst 38h			;02df
	adc a,c			;02e0
	nop			;02e1
	ld (bc),a		;02e2
	ld a,c			;02e3
	ld sp,hl		;02e4
	call m,0fefeh		;02e5
	call m,sub_057eh	;02e8
	rst 38h			;02eb
	ld (bc),a		;02ec
	ld a,a			;02ed
	ld (bc),a		;02ee
	ld c,a			;02ef
	ld (bc),a		;02f0
	cpl			;02f1
	ld (bc),a		;02f2
	and a			;02f3
	adc a,d			;02f4
	sub a			;02f5
	sub e			;02f6
	push af			;02f7
	call p,0faf2h		;02f8
	ld sp,hl		;02fb
	defb 0fdh,0fch,0feh ;illegal sequence	;02fc
	inc bc			;02ff
l0300h:
	rst 38h			;0300
	ld (bc),a		;0301
l0302h:
	ld a,a			;0302
l0303h:
	add a,e			;0303
	ccf			;0304
	cp a			;0305
	sbc a,a			;0306
l0307h:
	ex af,af'		;0307
	rst 38h			;0308
	ex af,af'		;0309
	call m,02987h		;030a
	dec bc			;030d
	inc de			;030e
l030fh:
	daa			;030f
	cpl			;0310
	ld c,a			;0311
l0312h:
	ld e,a			;0312
	inc bc			;0313
	sbc a,a			;0314
	add a,(hl)		;0315
	sbc a,c			;0316
	sub l			;0317
	dec c			;0318
	dec a			;0319
	inc sp			;031a
	ld c,008h		;031b
	ld bc,03e81h		;031d
	inc b			;0320
l0321h:
	ld a,(hl)		;0321
	inc bc			;0322
	ld a,h			;0323
	sbc a,c			;0324
	ld a,07ch		;0325
	ld a,c			;0327
	ld (hl),e		;0328
	ld h,a			;0329
	ld c,a			;032a
	rra			;032b
	ccf			;032c
	pop af			;032d
	pop hl			;032e
	ret nz			;032f
	adc a,b			;0330
	inc e			;0331
	inc e			;0332
	ld a,07fh		;0333
	ld a,h			;0335
	cp h			;0336
	sbc a,h			;0337
	call z,03064h		;0338
	jr l0349h		;033b
	sbc a,a			;033d
l033eh:
	inc b			;033e
	rst 18h			;033f
	sbc a,e			;0340
	rst 8			;0341
	rst 28h			;0342
	rst 28h			;0343
	rst 38h			;0344
	ld a,(hl)		;0345
	inc a			;0346
	djnz l02ceh		;0347
l0349h:
	ld e,03fh		;0349
	ld a,(hl)		;034b
	add a,b			;034c
	ld a,(bc)		;034d
	ld d,l			;034e
	xor b			;034f
	ld d,c			;0350
	add a,a			;0351
	rra			;0352
	ld a,a			;0353
	ld a,a			;0354
	rra			;0355
	rlca			;0356
	inc bc			;0357
	ld sp,03c38h		;0358
	ld a,006h		;035b
	rst 28h			;035d
	add a,l			;035e
	ld l,a			;035f
	jr z,$-6		;0360
	di			;0362
	or a			;0363
	inc b			;0364
	sub a			;0365
	add a,h			;0366
	rst 10h			;0367
	ld sp,hl		;0368
	ld sp,hl		;0369
	defb 0fdh,004h,0ffh ;illegal sequence	;036a
	add a,h			;036d
	defb 0fdh,03fh,03fh ;illegal sequence	;036e
	rra			;0371
	dec b			;0372
	sbc a,a			;0373
	add a,d			;0374
	nop			;0375
	rst 8			;0376
	ld b,0dfh		;0377
	adc a,b			;0379
	ld hl,04b87h		;037a
	ld h,a			;037d
	ccf			;037e
	rrca			;037f
	ld d,b			;0380
l0381h:
	ex af,af'		;0381
	inc bc			;0382
	call m,0f8b2h		;0383
	ret p			;0386
	ret nz			;0387
	ld a,(bc)		;0388
l0389h:
	ld d,b			;0389
	ret po			;038a
	inc bc			;038b
	rrca			;038c
	ccf			;038d
	ccf			;038e
	cp a			;038f
	cp a			;0390
	sbc a,a			;0391
	rra			;0392
	rlca			;0393
	inc bc			;0394
	dec b			;0395
	inc hl			;0396
	inc bc			;0397
	ld d,b			;0398
	ex af,af'		;0399
	ld a,d			;039a
	ld h,a			;039b
	ld e,a			;039c
	ld a,078h		;039d
	ld h,b			;039f
	rlca			;03a0
	inc a			;03a1
	rlca			;03a2
	inc bc			;03a3
	inc hl			;03a4
	dec bc			;03a5
	rlca			;03a6
	rrca			;03a7
	ld d,b			;03a8
	ex af,af'		;03a9
	ld a,a			;03aa
	ld a,a			;03ab
	rst 8			;03ac
	sbc a,a			;03ad
	rst 38h			;03ae
	rst 38h			;03af
	sbc a,a			;03b0
	rst 8			;03b1
	ret nz			;03b2
	pop bc			;03b3
	ld b,b			;03b4
	add a,08fh		;03b5
	inc bc			;03b7
	sbc a,a			;03b8
	sbc a,b			;03b9
	ret po			;03ba
	ret nz			;03bb
	add a,b			;03bc
	inc b			;03bd
	djnz l03f3h		;03be
sub_03c0h:
	ld b,094h		;03c0
	ccf			;03c2
	dec hl			;03c3
	sbc a,007h		;03c4
	ccf			;03c6
	rrca			;03c7
	ld d,b			;03c8
	ex af,af'		;03c9
	ret pe			;03ca
	ld d,h			;03cb
	call m,0f0f8h		;03cc
	ret nz			;03cf
	ld a,(bc)		;03d0
	ld d,b			;03d1
	inc bc			;03d2
	nop			;03d3
	add a,l			;03d4
	inc b			;03d5
	djnz l040bh		;03d6
	ld b,094h		;03d8
	inc b			;03da
	nop			;03db
	adc a,h			;03dc
	rst 38h			;03dd
	nop			;03de
	rst 38h			;03df
	nop			;03e0
	nop			;03e1
	and b			;03e2
	nop			;03e3
	nop			;03e4
	inc b			;03e5
	ld b,d			;03e6
	add a,b			;03e7
	ld h,b			;03e8
	inc bc			;03e9
	nop			;03ea
	sbc a,d			;03eb
	ld bc,l0200h		;03ec
	nop			;03ef
	ld (bc),a		;03f0
	nop			;03f1
	nop			;03f2
l03f3h:
	add a,b			;03f3
	nop			;03f4
	inc b			;03f5
	ld (bc),a		;03f6
	ld b,b			;03f7
	ld h,b			;03f8
	jr nz,$+12		;03f9
	ld b,e			;03fb
	and h			;03fc
	ld a,a			;03fd
	ld h,l			;03fe
	ex af,af'		;03ff
l0400h:
	nop			;0400
	djnz l0403h		;0401
l0403h:
	call po,0a0e8h		;0403
l0406h:
	inc bc			;0406
l0407h:
	nop			;0407
	sbc a,b			;0408
	djnz l040bh		;0409
l040bh:
	call po,0a1e8h		;040b
	inc b			;040e
	ld de,0d020h		;040f
	ld l,h			;0412
	ld b,d			;0413
l0414h:
	inc d			;0414
	ex af,af'		;0415
	xor b			;0416
	add a,b			;0417
	ld b,b			;0418
	ld a,e			;0419
	push de			;041a
	ld c,e			;041b
	ld (hl),055h		;041c
	cpl			;041e
	nop			;041f
	ex af,af'		;0420
	inc bc			;0421
	nop			;0422
	adc a,b			;0423
	and c			;0424
	nop			;0425
	ld b,d			;0426
	jr nz,l042bh		;0427
	jr nz,l0433h		;0429
l042bh:
	add a,b			;042b
	inc b			;042c
	nop			;042d
	xor d			;042e
	djnz l0469h		;042f
	ld e,h			;0431
	cp b			;0432
l0433h:
	ld h,b			;0433
	ret nz			;0434
	nop			;0435
	ld a,(bc)		;0436
	ld d,b			;0437
	ld b,h			;0438
	ret pe			;0439
	ld h,b			;043a
	ld b,c			;043b
	ld d,b			;043c
	ld hl,0a868h		;043d
	djnz l0475h		;0440
l0442h:
	ld h,(hl)		;0442
	call z,03898h		;0443
	ld (hl),b		;0446
	ret po			;0447
	jr l0466h		;0448
	rrca			;044a
	and d			;044b
	ld h,c			;044c
	ld b,b			;044d
	jr z,l0455h		;044e
	jr nz,l045ch		;0450
	ld b,e			;0452
	and h			;0453
	ld a,a			;0454
l0455h:
	ld h,l			;0455
	ex af,af'		;0456
	ld b,b			;0457
	ld bc,l0006h		;0458
	adc a,h			;045b
l045ch:
	ld b,b			;045c
	jr l047bh		;045d
	rrca			;045f
	ld (bc),a		;0460
	ld bc,0a080h		;0461
	cp b			;0464
	nop			;0465
l0466h:
	nop			;0466
	ld (bc),a		;0467
	dec b			;0468
l0469h:
	nop			;0469
	sbc a,b			;046a
	cp 00ah			;046b
	jp po,0ea0ah		;046d
	adc a,d			;0470
	xor d			;0471
	xor d			;0472
	jr l0491h		;0473
l0475h:
	inc c			;0475
	nop			;0476
	nop			;0477
	add a,b			;0478
	and b			;0479
	cp b			;047a
l047bh:
	ld b,b			;047b
	and b			;047c
l047dh:
	xor b			;047d
	xor h			;047e
l047fh:
	and (hl)		;047f
	rst 10h			;0480
	rst 10h			;0481
	out (004h),a		;0482
	ld bc,l0303h		;0484
	add a,c			;0487
	rlca			;0488
	inc b			;0489
	ld bc,l0389h		;048a
	rlca			;048d
	inc bc			;048e
	ld c,01eh		;048f
l0491h:
	dec e			;0491
	dec a			;0492
	ld a,l			;0493
	ld a,l			;0494
	inc bc			;0495
	ei			;0496
	adc a,d			;0497
	ld b,b			;0498
	and b			;0499
	xor b			;049a
	xor h			;049b
	and (hl)		;049c
	rst 10h			;049d
	rla			;049e
	sub e			;049f
	rlca			;04a0
	rlca			;04a1
	inc bc			;04a2
	rrca			;04a3
	add a,e			;04a4
	rra			;04a5
	ld e,01eh		;04a6
	inc b			;04a8
	add a,b			;04a9
	inc bc			;04aa
	ret nz			;04ab
	add a,c			;04ac
	ld b,b			;04ad
	inc b			;04ae
	ld a,003h		;04af
	ld a,(hl)		;04b1
	sub c			;04b2
	ld a,a			;04b3
	xor c			;04b4
	sub h			;04b5
	xor d			;04b6
	and l			;04b7
	and d			;04b8
	and c			;04b9
	xor b			;04ba
	xor h			;04bb
	nop			;04bc
	add a,b			;04bd
	ld b,b			;04be
	jr nz,$-110		;04bf
	ld c,b			;04c1
	and h			;04c2
	ld d,h			;04c3
	inc bc			;04c4
	nop			;04c5
	add a,c			;04c6
	jr nz,l04cdh		;04c7
	nop			;04c9
	adc a,b			;04ca
	ld l,b			;04cb
	ld c,b			;04cc
l04cdh:
	ld d,b			;04cd
	sub b			;04ce
	and b			;04cf
	and b			;04d0
	jr nz,sub_0513h		;04d1
	inc bc			;04d3
	ld (bc),a		;04d4
	adc a,(hl)		;04d5
	inc b			;04d6
	dec b			;04d7
	dec c			;04d8
	add hl,bc		;04d9
	add hl,hl		;04da
	call z,06306h		;04db
	ld (hl),c		;04de
	ld a,b			;04df
	inc a			;04e0
	inc e			;04e1
	nop			;04e2
	ld b,b			;04e3
sub_04e4h:
	inc bc			;04e4
	add a,b			;04e5
	inc b			;04e6
	nop			;04e7
sub_04e8h:
	and d			;04e8
	add a,b			;04e9
l04eah:
	ld b,b			;04ea
	jr nz,l047dh		;04eb
	rst 8			;04ed
	ld h,b			;04ee
	ccf			;04ef
	nop			;04f0
	dec b			;04f1
	add hl,bc		;04f2
	ld a,(bc)		;04f3
	ld a,(bc)		;04f4
	ld (de),a		;04f5
	inc d			;04f6
	inc h			;04f7
	jr z,l04eah		;04f8
	ld e,003h		;04fa
	nop			;04fc
	add a,b			;04fd
	jr l0511h		;04fe
l0500h:
	ld sp,l0403h+1		;0500
	ret z			;0503
	ld c,c			;0504
	sub c			;0505
l0506h:
	sub e			;0506
	ld (08026h),hl		;0507
	add a,b			;050a
	inc b			;050b
	nop			;050c
	ld (bc),a		;050d
	ld bc,0ecceh		;050e
l0511h:
	ld h,(hl)		;0511
	inc sp			;0512
sub_0513h:
	rra			;0513
	inc c			;0514
	add a,(hl)		;0515
	jp 02461h		;0516
	inc h			;0519
	ld c,b			;051a
	ld c,c			;051b
	sub c			;051c
	sub e			;051d
	ld (04826h),hl		;051e
	ret m			;0521
	ret nc			;0522
	or b			;0523
	jr nz,l0586h		;0524
	ld b,b			;0526
	ret nz			;0527
	ld c,b			;0528
	ret c			;0529
	sub b			;052a
	ret p			;052b
	jr nz,l058eh		;052c
	ld b,b			;052e
	ret nz			;052f
	ld h,d			;0530
	ld h,d			;0531
	call nz,sub_09c4h	;0532
	add hl,bc		;0535
	ld (de),a		;0536
	ld (de),a		;0537
	ld b,h			;0538
	ld c,l			;0539
	adc a,c			;053a
	sbc a,a			;053b
	ld (de),a		;053c
	ld (hl),024h		;053d
	ld l,h			;053f
	add a,c			;0540
	adc a,(hl)		;0541
	or b			;0542
	add a,b			;0543
	ret nz			;0544
	ld h,b			;0545
	jr nc,l0500h		;0546
	ld (bc),a		;0548
	inc b			;0549
	ex af,af'		;054a
	sub b			;054b
	ret nz			;054c
	ld a,a			;054d
	ret nz			;054e
	rst 38h			;054f
	ld b,h			;0550
	ld c,l			;0551
	adc a,a			;0552
	ld l,(hl)		;0553
	and h			;0554
	add a,(hl)		;0555
	inc bc			;0556
	ld h,c			;0557
	ret p			;0558
	jr l0567h		;0559
	ld b,003h		;055b
	ld bc,l0006h		;055d
	xor e			;0560
	ld bc,l0603h		;0561
	inc c			;0564
	sbc a,d			;0565
	or d			;0566
l0567h:
	ret z			;0567
	ld (bc),a		;0568
	nop			;0569
	add a,b			;056a
	ret nz			;056b
	ret p			;056c
	nop			;056d
	nop			;056e
	dec bc			;056f
	dec hl			;0570
	ld h,b			;0571
	ld e,a			;0572
	ld h,b			;0573
	ld b,(hl)		;0574
	nop			;0575
	nop			;0576
	and b			;0577
	xor b			;0578
	inc c			;0579
	call p,0c40ch		;057a
	nop			;057d
sub_057eh:
	djnz l05aah		;057e
	ld b,b			;0580
	nop			;0581
	rst 38h			;0582
	add a,c			;0583
	rst 38h			;0584
	inc bc			;0585
l0586h:
	ex af,af'		;0586
	or b			;0587
	jr nz,l058ah		;0588
l058ah:
	rst 38h			;058a
	add a,c			;058b
	inc bc			;058c
	rst 38h			;058d
l058eh:
	add a,(hl)		;058e
	ccf			;058f
	nop			;0590
	nop			;0591
	rst 38h			;0592
	add a,c			;0593
	rst 38h			;0594
	inc bc			;0595
	cp 002h			;0596
	nop			;0598
	add a,e			;0599
	rst 38h			;059a
	add a,c			;059b
	rst 38h			;059c
	inc bc			;059d
	nop			;059e
	add a,l			;059f
	rra			;05a0
	ld h,b			;05a1
	ld d,l			;05a2
	or b			;05a3
	add a,a			;05a4
	inc bc			;05a5
	nop			;05a6
	add a,l			;05a7
	rst 38h			;05a8
	nop			;05a9
l05aah:
	ld d,l			;05aa
	nop			;05ab
	rst 38h			;05ac
	nop			;05ad
	adc a,a			;05ae
	ret p			;05af
	ret po			;05b0
	ret p			;05b1
	ret po			;05b2
	ret p			;05b3
	ret po			;05b4
	ret p			;05b5
	ret po			;05b6
	ret p			;05b7
	ret po			;05b8
	ret p			;05b9
	ret po			;05ba
	ret p			;05bb
	ret po			;05bc
	ret p			;05bd
	dec b			;05be
	ret po			;05bf
sub_05c0h:
	xor c			;05c0
	ret p			;05c1
l05c2h:
	ret po			;05c2
	ret p			;05c3
	ret po			;05c4
	ret p			;05c5
	ret po			;05c6
	ret p			;05c7
	ret po			;05c8
	ret p			;05c9
	ret po			;05ca
	ret p			;05cb
l05cch:
	ret po			;05cc
	ret p			;05cd
	ret po			;05ce
	ret p			;05cf
	ret po			;05d0
	ret p			;05d1
	ret po			;05d2
	ret p			;05d3
	ret po			;05d4
	ret p			;05d5
	ret po			;05d6
	ret p			;05d7
	ret po			;05d8
	ret p			;05d9
	ret po			;05da
	ret p			;05db
	ret po			;05dc
	ret p			;05dd
	ret po			;05de
	ret p			;05df
	ret po			;05e0
	ret p			;05e1
	ret po			;05e2
	ret p			;05e3
	ret po			;05e4
	ret p			;05e5
	ret po			;05e6
	ret p			;05e7
	ret po			;05e8
	ret p			;05e9
	inc bc			;05ea
	ret po			;05eb
	add a,e			;05ec
	ret p			;05ed
	ret po			;05ee
	ret p			;05ef
	dec b			;05f0
	ret po			;05f1
	sub c			;05f2
	ret p			;05f3
	ret po			;05f4
	ret p			;05f5
	ret po			;05f6
	ret p			;05f7
	ret po			;05f8
	ret p			;05f9
	ret po			;05fa
	ret p			;05fb
	ret po			;05fc
	ret p			;05fd
	ret po			;05fe
	ret p			;05ff
	ret po			;0600
	ret p			;0601
	ret po			;0602
l0603h:
	ret p			;0603
	rlca			;0604
	ret po			;0605
	add a,a			;0606
	ret p			;0607
	ret po			;0608
	ret p			;0609
	ret po			;060a
	ret p			;060b
	ret po			;060c
	ret p			;060d
	add hl,bc		;060e
	ret po			;060f
	adc a,a			;0610
	ret p			;0611
	ret po			;0612
	ret p			;0613
	ret po			;0614
	ret p			;0615
	ret po			;0616
	ret p			;0617
	ret po			;0618
	ret p			;0619
	ret po			;061a
	ret p			;061b
	ret po			;061c
	ret p			;061d
	ret po			;061e
	ret p			;061f
	ld de,087e0h		;0620
	ret p			;0623
	ret po			;0624
	ret p			;0625
	ret po			;0626
	ret p			;0627
	ret po			;0628
l0629h:
	ret p			;0629
	add hl,bc		;062a
	ret po			;062b
	add a,a			;062c
	ret p			;062d
	ret po			;062e
	ret p			;062f
	ret po			;0630
	ret p			;0631
	ret po			;0632
	ret p			;0633
	add hl,bc		;0634
	ret po			;0635
	xor b			;0636
	ret p			;0637
	ret po			;0638
	ret p			;0639
	ret po			;063a
	ret p			;063b
	ret po			;063c
	ret p			;063d
	ret po			;063e
	call p,0f4e4h		;063f
sub_0642h:
	ret po			;0642
	ret p			;0643
	ret po			;0644
	ret p			;0645
	ret po			;0646
	call p,0f4e4h		;0647
	nop			;064a
	ret p			;064b
	ret po			;064c
	ret p			;064d
	ret po			;064e
	call p,0f4e4h		;064f
	call po,0e4f4h		;0652
	call p,0f4e4h		;0655
	ret po			;0658
	ret p			;0659
	ret po			;065a
	ret p			;065b
	ret po			;065c
	ret p			;065d
	ret po			;065e
	inc b			;065f
	ld b,b			;0660
	add a,c			;0661
	ret p			;0662
	inc bc			;0663
	ret po			;0664
	sub l			;0665
	ret p			;0666
	ret po			;0667
	ret p			;0668
	ret po			;0669
	ret p			;066a
	ret po			;066b
	ret p			;066c
	call po,0ecf4h		;066d
	ret p			;0670
	ret po			;0671
	ret p			;0672
	ret po			;0673
	ret p			;0674
	ret po			;0675
	ret p			;0676
	call pe,0ecf0h		;0677
	cp 003h			;067a
	ret po			;067c
	adc a,b			;067d
	ret p			;067e
	ret pe			;067f
	ret p			;0680
	ret pe			;0681
	ret p			;0682
	ret pe			;0683
	ret p			;0684
	ret po			;0685
	dec c			;0686
	ret p			;0687
	ld e,e			;0688
	ld b,b			;0689
	add hl,bc		;068a
	ld d,b			;068b
	add a,d			;068c
	ld b,b			;068d
	ld d,b			;068e
	ld b,040h		;068f
	add a,h			;0691
	ld d,b			;0692
	ld b,b			;0693
	ld d,b			;0694
	ld d,b			;0695
	inc b			;0696
	ld b,b			;0697
	inc b			;0698
	ld d,b			;0699
	add a,a			;069a
	ld d,h			;069b
	ld b,b			;069c
	ld b,b			;069d
	ld d,b			;069e
	ld d,b			;069f
	ld b,b			;06a0
	ld d,b			;06a1
	inc b			;06a2
	ld b,b			;06a3
	ld (bc),a		;06a4
	ld d,b			;06a5
	add a,d			;06a6
	ld b,b			;06a7
	ld d,b			;06a8
	inc b			;06a9
	ld b,b			;06aa
	ld (bc),a		;06ab
	ld d,b			;06ac
	dec b			;06ad
	ld b,b			;06ae
	add a,c			;06af
	ld d,b			;06b0
	inc b			;06b1
	ld b,b			;06b2
	inc b			;06b3
	ret po			;06b4
	add a,d			;06b5
	ld b,b			;06b6
	ret po			;06b7
	dec b			;06b8
	ld b,b			;06b9
	inc b			;06ba
	ret po			;06bb
	ld (bc),a		;06bc
	ld b,b			;06bd
	inc bc			;06be
	ld d,b			;06bf
	add a,(hl)		;06c0
	ld b,b			;06c1
	ld d,b			;06c2
	ld b,b			;06c3
	ld (hl),b		;06c4
	ld d,b			;06c5
	ld d,b			;06c6
	inc bc			;06c7
	ld (hl),b		;06c8
	add a,d			;06c9
	ld d,b			;06ca
	ld (hl),h		;06cb
	inc bc			;06cc
	ld d,b			;06cd
	ld (bc),a		;06ce
	ld (hl),b		;06cf
	add a,e			;06d0
	ld d,b			;06d1
	ld (hl),b		;06d2
	ld (hl),b		;06d3
	inc bc			;06d4
	ld d,b			;06d5
	add a,l			;06d6
	ld b,b			;06d7
	ld d,b			;06d8
	ld d,b			;06d9
	ld (hl),b		;06da
	ld (hl),b		;06db
	inc bc			;06dc
	ld d,b			;06dd
	adc a,b			;06de
	ld b,b			;06df
	ld d,b			;06e0
	ld d,b			;06e1
	ld (hl),b		;06e2
	ld (hl),b		;06e3
	ld d,b			;06e4
	ld b,b			;06e5
	ld d,b			;06e6
	inc b			;06e7
	ld b,b			;06e8
	sub c			;06e9
	ld (hl),b		;06ea
	ld d,b			;06eb
	ld b,b			;06ec
	ld d,b			;06ed
	ld b,b			;06ee
	ld (hl),b		;06ef
	ld d,b			;06f0
	ld d,b			;06f1
	ld (hl),b		;06f2
	ld d,b			;06f3
	ld b,b			;06f4
	ld d,b			;06f5
	ld b,b			;06f6
	nop			;06f7
	ld b,b			;06f8
	ld d,b			;06f9
	ld (hl),b		;06fa
	inc bc			;06fb
	ld d,b			;06fc
	add a,a			;06fd
	ld (hl),b		;06fe
	ld d,b			;06ff
	ld d,b			;0700
	ld (hl),b		;0701
	ld d,b			;0702
	ld d,b			;0703
	jp z,09003h		;0704
	add a,l			;0707
	ret p			;0708
	and b			;0709
	and b			;070a
	sub b			;070b
	add a,b			;070c
	inc bc			;070d
	sub b			;070e
	sub d			;070f
	ret p			;0710
	and b			;0711
	and b			;0712
	sub b			;0713
	add a,b			;0714
	sub b			;0715
	ld d,b			;0716
	or b			;0717
	ret p			;0718
	ret p			;0719
	or b			;071a
	and b			;071b
	sub b			;071c
	add a,b			;071d
	sub b			;071e
	and b			;071f
	ld b,b			;0720
	ld d,b			;0721
	dec b			;0722
	ld b,b			;0723
	add a,c			;0724
	and b			;0725
	ex af,af'		;0726
	ld b,b			;0727
	ex af,af'		;0728
	ld d,b			;0729
	add a,c			;072a
	ld (hl),b		;072b
	rlca			;072c
	ld d,b			;072d
	ld (bc),a		;072e
	ld b,b			;072f
	add a,(hl)		;0730
	ld d,b			;0731
	ld b,b			;0732
	ld d,b			;0733
	ld d,b			;0734
	ld b,b			;0735
	ld d,b			;0736
	inc b			;0737
	ld b,b			;0738
	adc a,c			;0739
	ld d,b			;073a
	ld b,b			;073b
	ld d,b			;073c
	ld b,b			;073d
	ld d,b			;073e
	ld b,b			;073f
	ld d,b			;0740
	ld b,b			;0741
	nop			;0742
	dec b			;0743
	ld d,b			;0744
	adc a,a			;0745
	ld b,b			;0746
	ld d,b			;0747
	ld b,b			;0748
	ld d,b			;0749
	ld b,b			;074a
	ld d,b			;074b
	ld b,b			;074c
	ld d,b			;074d
	ld b,b			;074e
l074fh:
	ld d,b			;074f
	ld b,b			;0750
l0751h:
	ld d,b			;0751
	ld b,b			;0752
	ld d,b			;0753
	ld b,b			;0754
	dec b			;0755
	ld d,b			;0756
	add a,e			;0757
	ld b,b			;0758
	ld d,b			;0759
	ld d,b			;075a
	ex af,af'		;075b
	ld b,b			;075c
	add a,l			;075d
	ld d,b			;075e
	ld b,b			;075f
	ld d,b			;0760
	ld b,b			;0761
	ld d,b			;0762
	dec b			;0763
	sub b			;0764
	ld (bc),a		;0765
	ld b,b			;0766
	add a,l			;0767
	ld d,b			;0768
	ld b,b			;0769
	ld d,b			;076a
	ld d,b			;076b
	ld (hl),b		;076c
	inc b			;076d
	ld d,b			;076e
	add a,l			;076f
	jr nz,l07b2h		;0770
	ld d,b			;0772
	ld (hl),b		;0773
	ld d,b			;0774
	dec b			;0775
	ld h,b			;0776
	add a,e			;0777
sub_0778h:
	ld d,b			;0778
	ld (hl),b		;0779
	ld d,b			;077a
	dec b			;077b
	add a,b			;077c
	add a,e			;077d
	ld d,b			;077e
	ld (hl),b		;077f
	ld d,b			;0780
	dec b			;0781
	sub b			;0782
	add a,e			;0783
	ld d,b			;0784
	ld (hl),b		;0785
	ld d,b			;0786
	dec b			;0787
	and b			;0788
	ld (bc),a		;0789
	ld b,b			;078a
	add a,(hl)		;078b
	ret nz			;078c
	jr nc,l074fh		;078d
	jr nc,l0751h		;078f
	ld (hl),b		;0791
	nop			;0792
	ld (bc),a		;0793
	ret po			;0794
	add a,h			;0795
	ret p			;0796
	ret po			;0797
	ret po			;0798
	ret p			;0799
	inc b			;079a
	ret po			;079b
	ld b,0feh		;079c
	inc bc			;079e
	ret po			;079f
	dec b			;07a0
	cp 003h			;07a1
	ret po			;07a3
	dec b			;07a4
	cp 002h			;07a5
	ret po			;07a7
	inc bc			;07a8
	cp 081h			;07a9
	ret p			;07ab
	inc b			;07ac
	ret po			;07ad
	adc a,b			;07ae
	ret p			;07af
	ret po			;07b0
	ret p			;07b1
l07b2h:
	ret po			;07b2
	ret p			;07b3
	ret po			;07b4
	cp 0feh			;07b5
	inc b			;07b7
	ret po			;07b8
	add a,h			;07b9
	ret p			;07ba
	ret po			;07bb
	cp 0feh			;07bc
	inc b			;07be
	ret po			;07bf
	add a,c			;07c0
	ret p			;07c1
	inc bc			;07c2
	ret po			;07c3
	add a,l			;07c4
	nop			;07c5
	ret po			;07c6
	ret p			;07c7
	ret po			;07c8
	ret p			;07c9
	inc bc			;07ca
	ret po			;07cb
	or l			;07cc
	ret p			;07cd
	ret po			;07ce
	ret p			;07cf
	ret po			;07d0
	ret p			;07d1
	ret po			;07d2
	ret p			;07d3
	ret po			;07d4
	ret p			;07d5
	ret po			;07d6
	ret p			;07d7
	ret po			;07d8
	ret p			;07d9
	ret po			;07da
	ret p			;07db
	ret po			;07dc
	ret p			;07dd
	ret po			;07de
	ret p			;07df
sub_07e0h:
	ret po			;07e0
	ret p			;07e1
	ret po			;07e2
	ret p			;07e3
	ret po			;07e4
	ret p			;07e5
	ret po			;07e6
	ret p			;07e7
	ret po			;07e8
	ret p			;07e9
	ret po			;07ea
	ret p			;07eb
	ret po			;07ec
	ret p			;07ed
	ret po			;07ee
	ret p			;07ef
	ret po			;07f0
	ret p			;07f1
	ret po			;07f2
	ret p			;07f3
	ret po			;07f4
	ret p			;07f5
	ret po			;07f6
	ret p			;07f7
	ret po			;07f8
	ret p			;07f9
	ret po			;07fa
	ret p			;07fb
	ret po			;07fc
	ret p			;07fd
	ret po			;07fe
	ret p			;07ff
sub_0800h:
	ret po			;0800
	ret p			;0801
	inc bc			;0802
	ret po			;0803
	adc a,l			;0804
	ret p			;0805
	ret po			;0806
	ret p			;0807
	ret po			;0808
	ret p			;0809
	ret po			;080a
	ret p			;080b
	ret po			;080c
	ret p			;080d
	ret po			;080e
	ret p			;080f
	ret po			;0810
	ret p			;0811
	add hl,bc		;0812
	ret po			;0813
	xor a			;0814
	ret p			;0815
	ret po			;0816
	ret p			;0817
	ret po			;0818
	ret p			;0819
	ret po			;081a
	ret p			;081b
	ret po			;081c
	ret p			;081d
	ret po			;081e
	ret p			;081f
	ret po			;0820
	ret p			;0821
	ret po			;0822
	ret p			;0823
	ret po			;0824
	ret po			;0825
	ret p			;0826
	ret po			;0827
	ret po			;0828
	ret p			;0829
	ret po			;082a
	ret p			;082b
	ret po			;082c
	ret p			;082d
	ret po			;082e
	ret p			;082f
	ret po			;0830
	ret p			;0831
	ret po			;0832
	ret p			;0833
	ret po			;0834
	ret p			;0835
	ret po			;0836
	ret p			;0837
	ret po			;0838
	ret p			;0839
	ret po			;083a
	ret p			;083b
	ret po			;083c
	ret p			;083d
	ret po			;083e
	ret p			;083f
	ret po			;0840
	ret p			;0841
	ret po			;0842
	ret p			;0843
	inc bc			;0844
	ret po			;0845
	xor l			;0846
	ret p			;0847
	ret po			;0848
	ret p			;0849
	ret po			;084a
	ret p			;084b
	ret po			;084c
	ret p			;084d
	ret po			;084e
	ret p			;084f
	ret po			;0850
	ret p			;0851
	ret po			;0852
	ret p			;0853
l0854h:
	ret po			;0854
	ret p			;0855
	ret po			;0856
	ret p			;0857
	ret po			;0858
	ret p			;0859
	ret po			;085a
	ret p			;085b
	ret po			;085c
	ret p			;085d
	ret po			;085e
	ret p			;085f
	ret po			;0860
	ret p			;0861
	ret po			;0862
	ret p			;0863
	ret po			;0864
	ret p			;0865
	ret po			;0866
	ret p			;0867
	ret po			;0868
	ret p			;0869
	ret po			;086a
	ret p			;086b
	ret po			;086c
	ret p			;086d
	ret po			;086e
	ret p			;086f
	ret po			;0870
	ret p			;0871
	ret po			;0872
	ret p			;0873
	inc bc			;0874
	ret po			;0875
	add a,l			;0876
	ret p			;0877
	ret po			;0878
	ret p			;0879
	ret po			;087a
	ret p			;087b
	inc b			;087c
	ret po			;087d
	inc bc			;087e
	ret p			;087f
	ld (bc),a		;0880
	ld b,b			;0881
	add a,c			;0882
	ret po			;0883
	dec b			;0884
	ret p			;0885
	inc bc			;0886
	ld b,b			;0887
	add a,(hl)		;0888
	ret po			;0889
	ret p			;088a
	ret po			;088b
	ret p			;088c
	ret po			;088d
	ret p			;088e
	inc bc			;088f
	ret po			;0890
	inc b			;0891
	ret p			;0892
	ld (bc),a		;0893
	ld b,b			;0894
	adc a,d			;0895
	call p,0f4e4h		;0896
	ret po			;0899
	ret p			;089a
	ret po			;089b
	ld b,b			;089c
	ld b,b			;089d
	ret po			;089e
	ret po			;089f
	inc b			;08a0
l08a1h:
	ret p			;08a1
	ld (bc),a		;08a2
	ld b,b			;08a3
	sub b			;08a4
	ret p			;08a5
	ret po			;08a6
	ret m			;08a7
	ret pe			;08a8
	ret p			;08a9
	ret po			;08aa
	ret m			;08ab
	ret pe			;08ac
	ret po			;08ad
	ld d,b			;08ae
	jr nz,l08a1h		;08af
	ret po			;08b1
	ret p			;08b2
	ret po			;08b3
	ret p			;08b4
	inc bc			;08b5
	ret po			;08b6
	ld (bc),a		;08b7
	ld b,b			;08b8
	inc bc			;08b9
	ld d,b			;08ba
	adc a,(hl)		;08bb
	ld b,b			;08bc
	ld d,b			;08bd
	ld d,b			;08be
	ret po			;08bf
	ret po			;08c0
	ret p			;08c1
	ld b,b			;08c2
	ld b,b			;08c3
	ld d,b			;08c4
	ld d,b			;08c5
l08c6h:
	ret po			;08c6
	ret po			;08c7
	ret p			;08c8
	ret p			;08c9
l08cah:
	rlca			;08ca
	ld b,b			;08cb
	inc b			;08cc
	ld d,b			;08cd
	ld a,040h		;08ce
	add a,c			;08d0
	ld d,b			;08d1
	inc b			;08d2
	ld b,b			;08d3
	ld (bc),a		;08d4
	ld d,b			;08d5
	ld a,(bc)		;08d6
	ld b,b			;08d7
	add a,c			;08d8
	ld d,b			;08d9
	add hl,bc		;08da
	ld b,b			;08db
	inc b			;08dc
	ld d,b			;08dd
	ld (bc),a		;08de
	ld b,b			;08df
	dec b			;08e0
	ld d,b			;08e1
	ld (bc),a		;08e2
	ld b,b			;08e3
	inc bc			;08e4
	ld d,b			;08e5
	add a,(hl)		;08e6
	ld b,b			;08e7
	ld d,b			;08e8
	ld b,b			;08e9
	ld d,b			;08ea
	ld b,b			;08eb
	ld d,b			;08ec
	inc b			;08ed
	ld b,b			;08ee
	add a,h			;08ef
	ld d,b			;08f0
	ld b,b			;08f1
	ld b,b			;08f2
	ld d,b			;08f3
	rlca			;08f4
	ld b,b			;08f5
	dec b			;08f6
l08f7h:
	ld d,b			;08f7
	inc b			;08f8
	ret po			;08f9
	dec b			;08fa
	ld b,b			;08fb
	add a,c			;08fc
	jr nz,$+20		;08fd
l08ffh:
	ld (hl),b		;08ff
	dec b			;0900
	ld b,b			;0901
	or b			;0902
	jr nz,l0975h		;0903
	ld (hl),b		;0905
	jr nz,l0978h		;0906
	jr nz,l092ah		;0908
	ld (hl),b		;090a
	jr nz,l092dh		;090b
	ld (hl),b		;090d
	nop			;090e
	nop			;090f
	jr nz,l0982h		;0910
	jr nz,l0934h		;0912
	ld (hl),b		;0914
	jr nz,l08f7h		;0915
	ret p			;0917
	jr nz,l098ah		;0918
	jr nz,l093ch		;091a
	ld (hl),b		;091c
	jr nz,l093fh		;091d
l091fh:
	ld (hl),b		;091f
	jr nz,l0942h		;0920
	ld (hl),b		;0922
	jr nz,l0945h		;0923
	ld (hl),b		;0925
	jr nz,l0998h		;0926
	jr nz,l094ah		;0928
l092ah:
	ld (hl),b		;092a
	jr nz,l094dh		;092b
l092dh:
	ld (hl),b		;092d
	jr nz,l09a0h		;092e
	jr nz,$+34		;0930
	ld (hl),b		;0932
	inc bc			;0933
l0934h:
	jr nz,l08c6h		;0934
	ret po			;0936
	ret p			;0937
	jr nz,l09aah		;0938
	jr nz,l095ch		;093a
l093ch:
	ld (hl),b		;093c
	jr nz,l09afh		;093d
l093fh:
	jr nz,l0971h		;093f
	ret po			;0941
l0942h:
	jr nc,$-30		;0942
	and b			;0944
l0945h:
	ret p			;0945
	rlca			;0946
	jr nz,l08cah		;0947
	ret nz			;0949
l094ah:
	rlca			;094a
	jr nz,$+6		;094b
l094dh:
	ret nz			;094d
	dec b			;094e
	and b			;094f
	ld sp,08240h		;0950
	ld d,b			;0953
	ld b,b			;0954
	rlca			;0955
	ld d,b			;0956
	add a,c			;0957
	ld b,b			;0958
	add hl,bc		;0959
	ld d,b			;095a
	inc b			;095b
l095ch:
	ld b,b			;095c
	ld b,050h		;095d
	add a,c			;095f
	ld b,b			;0960
	ld a,050h		;0961
	adc a,b			;0963
	ld b,b			;0964
	ld d,b			;0965
	ld d,b			;0966
	ld b,b			;0967
	ld d,b			;0968
	ld b,b			;0969
	ld d,b			;096a
	ld b,b			;096b
	inc b			;096c
	ld d,b			;096d
	inc b			;096e
	ld b,b			;096f
	add a,l			;0970
l0971h:
	ld d,b			;0971
	ld b,b			;0972
	ld d,b			;0973
	ld d,b			;0974
l0975h:
	ld b,b			;0975
	inc bc			;0976
	ld d,b			;0977
l0978h:
	add a,e			;0978
	ret p			;0979
	ret po			;097a
	ret p			;097b
	inc bc			;097c
	ld (hl),b		;097d
	add a,l			;097e
	ld b,b			;097f
	ld d,b			;0980
	ld (hl),b		;0981
l0982h:
	ld d,b			;0982
	ld b,b			;0983
	inc bc			;0984
	ld (hl),b		;0985
	sbc a,b			;0986
	ld b,b			;0987
	ld d,b			;0988
	ld (hl),b		;0989
l098ah:
	ld d,b			;098a
	ld b,b			;098b
	sub b			;098c
	sub b			;098d
	and b			;098e
	sub b			;098f
	sub b			;0990
	ld d,b			;0991
	ld (hl),b		;0992
	ld d,b			;0993
	ld (hl),b		;0994
	sub b			;0995
	and b			;0996
	sub b			;0997
l0998h:
	ld d,b			;0998
	ld d,b			;0999
	ld (hl),b		;099a
	ld d,b			;099b
	ld (hl),b		;099c
	ld d,b			;099d
	ld b,b			;099e
	inc bc			;099f
l09a0h:
	ld d,b			;09a0
	add a,l			;09a1
	ld (hl),b		;09a2
	ld d,b			;09a3
	ld (hl),b		;09a4
	ld d,b			;09a5
	ld b,b			;09a6
	inc bc			;09a7
	ld d,b			;09a8
	add a,c			;09a9
l09aah:
	ld (hl),b		;09aa
	inc b			;09ab
	ld d,b			;09ac
	ld (bc),a		;09ad
	ld b,b			;09ae
l09afh:
	ld (bc),a		;09af
	ld d,b			;09b0
	add a,c			;09b1
	ld (hl),b		;09b2
	inc b			;09b3
	ld b,b			;09b4
	inc bc			;09b5
	ld d,b			;09b6
	add a,c			;09b7
	ld (hl),b		;09b8
	nop			;09b9
	ld a,(bc)		;09ba
	nop			;09bb
	dec b			;09bc
	ld bc,l0002h		;09bd
	adc a,l			;09c0
	inc bc			;09c1
	rrca			;09c2
	rra			;09c3
sub_09c4h:
	ccf			;09c4
	ld a,a			;09c5
	ld a,a			;09c6
	rst 38h			;09c7
	cp 0fch			;09c8
	call m,0f0f8h		;09ca
	ret nz			;09cd
	add hl,bc		;09ce
	nop			;09cf
	add a,c			;09d0
	rra			;09d1
	inc bc			;09d2
	rst 38h			;09d3
	add a,h			;09d4
	call m,0e0f8h		;09d5
	add a,b			;09d8
	ex af,af'		;09d9
	nop			;09da
	add a,e			;09db
	add a,b			;09dc
	ret p			;09dd
	ret nz			;09de
	dec de			;09df
	nop			;09e0
	add a,(hl)		;09e1
	rst 38h			;09e2
	ld a,a			;09e3
	ccf			;09e4
	rra			;09e5
	rrca			;09e6
	inc bc			;09e7
	ld a,(bc)		;09e8
	nop			;09e9
	add a,d			;09ea
	ret nz			;09eb
	ret m			;09ec
	dec b			;09ed
	rst 38h			;09ee
	inc c			;09ef
	nop			;09f0
	add a,h			;09f1
	rst 38h			;09f2
	cp 0f8h			;09f3
	ret po			;09f5
	add hl,bc		;09f6
	nop			;09f7
	ld (bc),a		;09f8
	ld bc,l0302h		;09f9
	add a,e			;09fc
	rlca			;09fd
	ld b,004h		;09fe
l0a00h:
	ld b,000h		;0a00
	adc a,b			;0a02
	ld c,03ch		;0a03
	ret m			;0a05
	ret p			;0a06
	ret po			;0a07
	ret nz			;0a08
	ret nz			;0a09
l0a0ah:
	add a,b			;0a0a
	dec bc			;0a0b
	nop			;0a0c
	add a,h			;0a0d
	ret m			;0a0e
	ld a,(hl)		;0a0f
	ccf			;0a10
	rlca			;0a11
	rrca			;0a12
	nop			;0a13
	add a,c			;0a14
	ret m			;0a15
	ex af,af'		;0a16
	nop			;0a17
	adc a,l			;0a18
	ret nz			;0a19
	ret p			;0a1a
sub_0a1bh:
	ret m			;0a1b
	call m,0fefeh		;0a1c
	rst 38h			;0a1f
	ld a,a			;0a20
	ccf			;0a21
	ccf			;0a22
	rra			;0a23
	rrca			;0a24
	inc bc			;0a25
	inc c			;0a26
	nop			;0a27
	dec b			;0a28
	add a,b			;0a29
	ex af,af'		;0a2a
	nop			;0a2b
	add a,e			;0a2c
	ld bc,l030fh		;0a2d
	dec c			;0a30
	nop			;0a31
	add a,c			;0a32
	ret m			;0a33
	inc bc			;0a34
	rst 38h			;0a35
	add a,h			;0a36
	ccf			;0a37
	rra			;0a38
	rlca			;0a39
	ld bc,l0006h		;0a3a
	add a,(hl)		;0a3d
	rst 38h			;0a3e
	cp 0fch			;0a3f
l0a41h:
	ret m			;0a41
	ret p			;0a42
	ret nz			;0a43
	dec e			;0a44
	nop			;0a45
	add a,h			;0a46
	rst 38h			;0a47
	ld a,a			;0a48
	rra			;0a49
	rlca			;0a4a
	add hl,bc		;0a4b
	nop			;0a4c
	add a,d			;0a4d
	inc bc			;0a4e
	rra			;0a4f
	dec b			;0a50
	rst 38h			;0a51
	ld b,000h		;0a52
	adc a,b			;0a54
	ld (hl),b		;0a55
	inc a			;0a56
	rra			;0a57
	rrca			;0a58
	rlca			;0a59
	inc bc			;0a5a
	inc bc			;0a5b
	ld bc,0000bh		;0a5c
	ld (bc),a		;0a5f
	add a,b			;0a60
	ld (bc),a		;0a61
	ret nz			;0a62
	add a,e			;0a63
	ret po			;0a64
	ld h,b			;0a65
	jr nz,l0a74h		;0a66
	nop			;0a68
	add a,c			;0a69
	rra			;0a6a
	inc c			;0a6b
	nop			;0a6c
	add a,h			;0a6d
	rra			;0a6e
	ld a,(hl)		;0a6f
	call m,sub_07e0h	;0a70
	nop			;0a73
l0a74h:
	nop			;0a74
	inc e			;0a75
	nop			;0a76
	inc bc			;0a77
	ret po			;0a78
	add a,c			;0a79
	jr nz,l0a98h		;0a7a
	nop			;0a7c
	add a,h			;0a7d
	rra			;0a7e
	rrca			;0a7f
	rrca			;0a80
	nop			;0a81
	nop			;0a82
	ld b,0a5h		;0a83
	xor d			;0a85
	ld e,(hl)		;0a86
	xor (hl)		;0a87
	xor e			;0a88
	ld b,008h		;0a89
	xor e			;0a8b
	ld (hl),d		;0a8c
	sub 0abh		;0a8d
	ld b,057h		;0a8f
	xor e			;0a91
	adc a,b			;0a92
	cp 0abh			;0a93
	nop			;0a95
	ld e,(hl)		;0a96
	ld (hl),b		;0a97
l0a98h:
	ld (hl),h		;0a98
	ld h,d			;0a99
	ld (hl),c		;0a9a
	ld (hl),h		;0a9b
	ld (hl),d		;0a9c
	add a,e			;0a9d
	inc (hl)		;0a9e
	dec b			;0a9f
	adc a,b			;0aa0
	sub (hl)		;0aa1
	inc (hl)		;0aa2
	dec b			;0aa3
	nop			;0aa4
	sub b			;0aa5
	dec e			;0aa6
	ld e,00fh		;0aa7
	rlca			;0aa9
	inc bc			;0aaa
	ld bc,l0000h		;0aab
	rst 38h			;0aae
	rst 38h			;0aaf
	ld a,a			;0ab0
	cp a			;0ab1
	rst 18h			;0ab2
	rst 20h			;0ab3
	ret m			;0ab4
	ccf			;0ab5
	rlca			;0ab6
	rst 38h			;0ab7
	sub e			;0ab8
	nop			;0ab9
	ret po			;0aba
	ret p			;0abb
	ret m			;0abc
	call m,0fffeh		;0abd
	nop			;0ac0
	rrca			;0ac1
	nop			;0ac2
	nop			;0ac3
	rst 38h			;0ac4
	ld a,a			;0ac5
	ccf			;0ac6
	rra			;0ac7
	add a,b			;0ac8
	ret nz			;0ac9
	nop			;0aca
	nop			;0acb
	inc b			;0acc
	rst 38h			;0acd
	inc b			;0ace
	nop			;0acf
	inc b			;0ad0
	rst 38h			;0ad1
	add a,h			;0ad2
	nop			;0ad3
	ld bc,l0000h		;0ad4
	inc b			;0ad7
	ld a,a			;0ad8
	add a,h			;0ad9
	ex af,af'		;0ada
	jr l0addh		;0adb
l0addh:
	nop			;0add
	inc b			;0ade
	ei			;0adf
	inc b			;0ae0
	nop			;0ae1
	inc b			;0ae2
	rst 38h			;0ae3
	add a,h			;0ae4
	ld b,b			;0ae5
	pop bc			;0ae6
	nop			;0ae7
	nop			;0ae8
	inc b			;0ae9
	rst 38h			;0aea
	ld (bc),a		;0aeb
	adc a,a			;0aec
	ld (bc),a		;0aed
	nop			;0aee
	inc b			;0aef
	rst 38h			;0af0
	add a,h			;0af1
	djnz l0b24h		;0af2
	nop			;0af4
	nop			;0af5
	inc b			;0af6
	ei			;0af7
	inc b			;0af8
	nop			;0af9
	inc b			;0afa
	rst 38h			;0afb
	adc a,d			;0afc
	ld b,b			;0afd
	ret nz			;0afe
	nop			;0aff
	nop			;0b00
	jp nz,0cec6h		;0b01
	sbc a,002h		;0b04
	ld b,000h		;0b06
	add a,d			;0b08
	rrca			;0b09
	inc bc			;0b0a
	ld b,000h		;0b0b
	adc a,b			;0b0d
	rst 18h			;0b0e
	sbc a,a			;0b0f
	ld l,a			;0b10
	ld l,a			;0b11
	ld (hl),a		;0b12
	dec sp			;0b13
	inc e			;0b14
	rrca			;0b15
	rlca			;0b16
	rst 38h			;0b17
	add a,c			;0b18
	nop			;0b19
	rlca			;0b1a
	rst 38h			;0b1b
	add a,c			;0b1c
	rrca			;0b1d
	ex af,af'		;0b1e
	rst 38h			;0b1f
	add a,c			;0b20
	inc bc			;0b21
	rlca			;0b22
	rlca			;0b23
l0b24h:
	ex af,af'		;0b24
	adc a,a			;0b25
	add a,c			;0b26
	jr c,l0b2dh		;0b27
	ld a,a			;0b29
	inc bc			;0b2a
	ld a,b			;0b2b
	add a,c			;0b2c
l0b2dh:
	ld bc,08304h		;0b2d
	inc bc			;0b30
	inc bc			;0b31
	add a,c			;0b32
	jp 0c707h		;0b33
	ex af,af'		;0b36
	adc a,a			;0b37
	add a,c			;0b38
	jr c,l0b3fh		;0b39
	ld a,a			;0b3b
	inc bc			;0b3c
	ld a,b			;0b3d
	add a,c			;0b3e
l0b3fh:
	ld bc,08304h		;0b3f
	inc bc			;0b42
	nop			;0b43
	add a,c			;0b44
	ret nz			;0b45
	inc b			;0b46
	rst 38h			;0b47
	inc bc			;0b48
	inc bc			;0b49
	add a,c			;0b4a
	ld c,007h		;0b4b
	sbc a,081h		;0b4d
	ld (hl),b		;0b4f
	inc b			;0b50
	rst 38h			;0b51
	inc b			;0b52
	nop			;0b53
	rlca			;0b54
	ret p			;0b55
	nop			;0b56
	add a,d			;0b57
	rlca			;0b58
	ld bc,l0006h		;0b59
	adc a,b			;0b5c
	rst 28h			;0b5d
	rst 10h			;0b5e
	scf			;0b5f
	scf			;0b60
	dec sp			;0b61
	inc e			;0b62
	rrca			;0b63
	rlca			;0b64
	ld b,0ffh		;0b65
	add a,d			;0b67
	nop			;0b68
	cp a			;0b69
	ex af,af'		;0b6a
	rst 38h			;0b6b
	dec b			;0b6c
	rlca			;0b6d
	ld (bc),a		;0b6e
	nop			;0b6f
	add a,c			;0b70
	rst 38h			;0b71
	dec b			;0b72
	adc a,a			;0b73
	ld (bc),a		;0b74
	nop			;0b75
	add a,d			;0b76
	rst 38h			;0b77
	ld a,b			;0b78
	inc b			;0b79
	ld a,a			;0b7a
	ld (bc),a		;0b7b
	nop			;0b7c
	add a,c			;0b7d
	rst 38h			;0b7e
	dec b			;0b7f
	rst 0			;0b80
	ld (bc),a		;0b81
	nop			;0b82
	add a,c			;0b83
	rst 38h			;0b84
	dec b			;0b85
	adc a,a			;0b86
	ld (bc),a		;0b87
	nop			;0b88
	add a,d			;0b89
	rst 38h			;0b8a
	inc bc			;0b8b
	inc b			;0b8c
	ei			;0b8d
	ld (bc),a		;0b8e
	nop			;0b8f
	add a,d			;0b90
	rst 38h			;0b91
	nop			;0b92
	inc b			;0b93
	ei			;0b94
	ld (bc),a		;0b95
	nop			;0b96
	add a,d			;0b97
	rst 38h			;0b98
	inc bc			;0b99
	inc b			;0b9a
l0b9bh:
	rst 38h			;0b9b
	ld (bc),a		;0b9c
	nop			;0b9d
	add a,c			;0b9e
	rst 38h			;0b9f
	dec b			;0ba0
	sbc a,002h		;0ba1
	nop			;0ba3
	add a,d			;0ba4
	rst 38h			;0ba5
	nop			;0ba6
	inc b			;0ba7
	rst 38h			;0ba8
	ld (bc),a		;0ba9
	nop			;0baa
	add a,c			;0bab
	rst 38h			;0bac
	nop			;0bad
	and b			;0bae
	ld b,b			;0baf
	ret nz			;0bb0
	ld b,b			;0bb1
	ret nz			;0bb2
	ld d,b			;0bb3
	ret nz			;0bb4
	ld d,b			;0bb5
	ld d,b			;0bb6
	ld b,b			;0bb7
	ret nz			;0bb8
	ld b,b			;0bb9
	ret nz			;0bba
	ld d,b			;0bbb
	ret nz			;0bbc
	ld d,b			;0bbd
	ret nz			;0bbe
	ld b,b			;0bbf
	ret nz			;0bc0
	ld b,b			;0bc1
	ret nz			;0bc2
	ld d,b			;0bc3
	ret nz			;0bc4
	ld d,b			;0bc5
	ld d,b			;0bc6
	ld b,b			;0bc7
	ret nz			;0bc8
	ld b,b			;0bc9
	ret nz			;0bca
	ld d,b			;0bcb
	ret nz			;0bcc
	push bc			;0bcd
	ret nz			;0bce
	ld b,060h		;0bcf
	ld (bc),a		;0bd1
	ret nz			;0bd2
	ld d,b			;0bd3
	ld h,b			;0bd4
	nop			;0bd5
	add a,c			;0bd6
	ld d,b			;0bd7
	rlca			;0bd8
	ret nz			;0bd9
	and b			;0bda
	ld d,b			;0bdb
	ret nz			;0bdc
	ld (hl),b		;0bdd
	ret nz			;0bde
	ld (hl),b		;0bdf
	jr nz,$+114		;0be0
	jr nz,l0c34h		;0be2
	ret nz			;0be4
	ld (hl),b		;0be5
	ret nz			;0be6
	ld (hl),b		;0be7
	jr nz,l0c5ah		;0be8
	ld (hl),b		;0bea
	ld d,b			;0beb
	ret nz			;0bec
	ld (hl),b		;0bed
	ret nz			;0bee
	ld (hl),b		;0bef
	jr nz,l0c62h		;0bf0
	jr nz,l0c44h		;0bf2
	ret nz			;0bf4
	ld (hl),b		;0bf5
	ret nz			;0bf6
	ld (hl),b		;0bf7
	jr nz,l0c6ah		;0bf8
	jr nz,l0c5ch		;0bfa
	ld h,b			;0bfc
	nop			;0bfd
	add a,c			;0bfe
	ld (hl),b		;0bff
	rlca			;0c00
	jr nz,l0b9bh		;0c01
	ld (hl),b		;0c03
	jr nz,$+114		;0c04
	jr nc,$+114		;0c06
	jr nc,l0c7ah		;0c08
l0c0ah:
	jr nc,l0c7ch		;0c0a
	jr nz,l0c7eh		;0c0c
	jr nc,l0c80h		;0c0e
	jr nc,l0c82h		;0c10
	jr nc,l0c84h		;0c12
	jr nz,l0c86h		;0c14
	jr nc,$+114		;0c16
	jr nc,l0c8ah		;0c18
	jr nc,$+9		;0c1a
	ld h,b			;0c1c
	add a,c			;0c1d
	jr nc,$+9		;0c1e
	ld h,b			;0c20
	add a,c			;0c21
	jr nc,$+9		;0c22
	ld h,b			;0c24
	add a,c			;0c25
	jr nc,$+9		;0c26
	ld h,b			;0c28
	add a,c			;0c29
	jr nc,$+9		;0c2a
	ld h,b			;0c2c
	add a,c			;0c2d
	jr nc,$+9		;0c2e
l0c30h:
	ld h,b			;0c30
	add a,c			;0c31
	jr nc,$+9		;0c32
l0c34h:
	ld h,b			;0c34
	add a,c			;0c35
	jr nc,$+9		;0c36
	ld h,b			;0c38
	add a,c			;0c39
	jr nc,$+9		;0c3a
	ld h,b			;0c3c
	add a,c			;0c3d
	jr nc,l0c47h		;0c3e
	ld h,b			;0c40
	add a,c			;0c41
	jr nc,l0c44h		;0c42
l0c44h:
	ld b,04bh		;0c44
	xor h			;0c46
l0c47h:
	inc bc			;0c47
	add a,l			;0c48
	or c			;0c49
	nop			;0c4a
	ld (bc),a		;0c4b
	nop			;0c4c
	adc a,e			;0c4d
	xor 084h		;0c4e
	call po,02424h		;0c50
	call po,0ffffh		;0c53
	rst 30h			;0c56
	sub h			;0c57
	rst 30h			;0c58
	inc bc			;0c59
l0c5ah:
	sub l			;0c5a
	ld (bc),a		;0c5b
l0c5ch:
	rst 38h			;0c5c
	inc bc			;0c5d
	add a,b			;0c5e
	ld (bc),a		;0c5f
	nop			;0c60
	or e			;0c61
l0c62h:
	add a,b			;0c62
	rst 38h			;0c63
	rst 38h			;0c64
	ex de,hl		;0c65
	adc a,d			;0c66
	jp pe,08a8ah		;0c67
l0c6ah:
	adc a,e			;0c6a
	rst 38h			;0c6b
	rst 38h			;0c6c
	add ix,bc		;0c6d
	ret			;0c6f
	ld c,c			;0c70
	ld c,c			;0c71
	ret			;0c72
	rst 38h			;0c73
	rst 38h			;0c74
	sbc a,012h		;0c75
	sbc a,014h		;0c77
	inc d			;0c79
l0c7ah:
	sub 0ffh		;0c7a
l0c7ch:
	rst 38h			;0c7c
	rst 30h			;0c7d
l0c7eh:
	sub c			;0c7e
	sub a			;0c7f
l0c80h:
	sub c			;0c80
l0c81h:
	sub c			;0c81
l0c82h:
	sub a			;0c82
	rst 38h			;0c83
l0c84h:
	rst 38h			;0c84
	ld (hl),a		;0c85
l0c86h:
	ld de,04477h		;0c86
	ld b,h			;0c89
l0c8ah:
	ld (hl),a		;0c8a
	rst 38h			;0c8b
	ld b,01eh		;0c8c
	ld a,(hl)		;0c8e
	ld a,(hl)		;0c8f
	ld e,006h		;0c90
	rst 38h			;0c92
	rst 38h			;0c93
	ccf			;0c94
	dec b			;0c95
	inc h			;0c96
	ld (bc),a		;0c97
	rst 38h			;0c98
	adc a,c			;0c99
	cp a			;0c9a
	and b			;0c9b
	cp a			;0c9c
	and b			;0c9d
	and b			;0c9e
	cp a			;0c9f
	rst 38h			;0ca0
	rst 38h			;0ca1
	ld a,l			;0ca2
	dec b			;0ca3
	ld de,0ff02h		;0ca4
	adc a,c			;0ca7
	jp m,0fa0ah		;0ca8
	ld a,(bc)		;0cab
	ld a,(bc)		;0cac
	dec bc			;0cad
	nop			;0cae
	rst 38h			;0caf
	dec bc			;0cb0
	inc b			;0cb1
	ld a,(bc)		;0cb2
	add a,h			;0cb3
	ex de,hl		;0cb4
	rst 38h			;0cb5
	rst 38h			;0cb6
	rst 30h			;0cb7
	inc b			;0cb8
	inc d			;0cb9
	add a,h			;0cba
	call p,0ffffh		;0cbb
	ex (sp),hl		;0cbe
	dec b			;0cbf
	inc hl			;0cc0
	inc bc			;0cc1
	nop			;0cc2
	add a,h			;0cc3
	ret nz			;0cc4
l0cc5h:
	ret p			;0cc5
l0cc6h:
	ret p			;0cc6
	ret nz			;0cc7
	ld b,000h		;0cc8
	sub h			;0cca
	ld bc,l0500h+2		;0ccb
	ld a,(bc)		;0cce
	rra			;0ccf
	ld hl,l047fh		;0cd0
	ret m			;0cd3
	add a,b			;0cd4
	inc bc			;0cd5
	inc b			;0cd6
	call m,0f018h		;0cd7
	jr c,l0d04h		;0cda
	jr z,l0cc6h		;0cdc
	jr z,$+9		;0cde
	nop			;0ce0
	add a,c			;0ce1
	inc bc			;0ce2
	inc b			;0ce3
	nop			;0ce4
	sub l			;0ce5
	ld bc,0ff02h		;0ce6
	jr nc,$+22		;0ce9
	jr z,l0d3dh		;0ceb
	and b			;0ced
	ld b,b			;0cee
	add a,c			;0cef
	jp po,l091fh		;0cf0
	ld (de),a		;0cf3
	inc h			;0cf4
	ld c,b			;0cf5
	ld d,b			;0cf6
	rst 38h			;0cf7
	inc b			;0cf8
	call nz,sub_04e8h	;0cf9
	jr z,l0c81h		;0cfc
	call m,0fc94h		;0cfe
	ld b,000h		;0d01
	add a,d			;0d03
l0d04h:
	ld bc,l0506h		;0d04
	nop			;0d07
	add a,e			;0d08
	ld a,a			;0d09
	add a,d			;0d0a
	inc bc			;0d0b
	dec b			;0d0c
	nop			;0d0d
	add a,e			;0d0e
	ret p			;0d0f
	rra			;0d10
	ret po			;0d11
	inc b			;0d12
	nop			;0d13
	add a,h			;0d14
	ld e,071h		;0d15
	jp m,l0414h		;0d17
	nop			;0d1a
	add a,d			;0d1b
	rlca			;0d1c
	ret m			;0d1d
	inc b			;0d1e
	nop			;0d1f
	adc a,e			;0d20
	ld e,0f3h		;0d21
	call m,sub_0102h	;0d23
	ld bc,0330ch		;0d26
	call 001feh		;0d29
	inc bc			;0d2c
	nop			;0d2d
	adc a,d			;0d2e
	ret nz			;0d2f
	nop			;0d30
	rst 38h			;0d31
	ld b,b			;0d32
	jr nz,l0cc5h		;0d33
	ld (hl),b		;0d35
	ld e,a			;0d36
	nop			;0d37
	rst 38h			;0d38
	inc b			;0d39
	nop			;0d3a
	sub d			;0d3b
	rra			;0d3c
l0d3dh:
	ret po			;0d3d
	ld a,a			;0d3e
	add a,h			;0d3f
	ld (bc),a		;0d40
	ld bc,03f01h		;0d41
	ret nz			;0d44
	nop			;0d45
	call nz,02242h		;0d46
	ld (0c93fh),hl		;0d49
	add hl,bc		;0d4c
	add hl,bc		;0d4d
	dec b			;0d4e
	nop			;0d4f
	adc a,a			;0d50
	ld bc,0e01eh		;0d51
	nop			;0d54
	nop			;0d55
	ld bc,01e07h		;0d56
	ret po			;0d59
	nop			;0d5a
	nop			;0d5b
	jr l0dbfh		;0d5c
	cp 0e0h			;0d5e
	inc bc			;0d60
	nop			;0d61
	sub a			;0d62
	rst 38h			;0d63
	ld e,0e1h		;0d64
	jr l0de4h		;0d66
	ld e,000h		;0d68
	ld a,a			;0d6a
	add a,d			;0d6b
	add a,b			;0d6c
	ld b,b			;0d6d
	and b			;0d6e
	ld d,c			;0d6f
	ld hl,(0f015h)		;0d70
	ex af,af'		;0d73
	jr z,l0dc6h		;0d74
	and b			;0d76
	ld d,c			;0d77
	xor 0f0h		;0d78
	inc b			;0d7a
	nop			;0d7b
	sbc a,c			;0d7c
	inc bc			;0d7d
	call m,l0000h		;0d7e
	ld bc,001feh		;0d81
	rlca			;0d84
	ret m			;0d85
	nop			;0d86
	nop			;0d87
	inc bc			;0d88
	call m,sub_0f00h	;0d89
	ret p			;0d8c
	ld b,b			;0d8d
	daa			;0d8e
	inc e			;0d8f
	call p,sub_0a1bh	;0d90
	ret p			;0d93
	nop			;0d94
	rst 38h			;0d95
	inc bc			;0d96
	nop			;0d97
	add a,l			;0d98
	rst 38h			;0d99
	nop			;0d9a
	nop			;0d9b
	ccf			;0d9c
	ret nz			;0d9d
	inc bc			;0d9e
	nop			;0d9f
	sbc a,(hl)		;0da0
	ret p			;0da1
	rrca			;0da2
	nop			;0da3
	rst 38h			;0da4
	nop			;0da5
	rrca			;0da6
	inc bc			;0da7
	nop			;0da8
	nop			;0da9
	rst 38h			;0daa
	rst 38h			;0dab
	inc b			;0dac
	ld (de),a		;0dad
	jp nc,069e9h		;0dae
	inc b			;0db1
	nop			;0db2
	add a,b			;0db3
	add a,b			;0db4
	ld b,b			;0db5
	ld b,b			;0db6
	jr nz,$+34		;0db7
	sub b			;0db9
	sub b			;0dba
	rlca			;0dbb
	inc e			;0dbc
	ld a,l			;0dbd
	rst 38h			;0dbe
l0dbfh:
	dec b			;0dbf
	nop			;0dc0
	add a,e			;0dc1
	ld a,a			;0dc2
	add a,b			;0dc3
	rst 38h			;0dc4
	inc b			;0dc5
l0dc6h:
	nop			;0dc6
	add a,l			;0dc7
	ccf			;0dc8
	ret nz			;0dc9
	ld bc,00fffh		;0dca
	inc bc			;0dcd
	nop			;0dce
	inc bc			;0dcf
	and b			;0dd0
	add a,d			;0dd1
	ld b,b			;0dd2
	rst 38h			;0dd3
	inc bc			;0dd4
	nop			;0dd5
	sbc a,b			;0dd6
	jp m,0c006h		;0dd7
	add a,b			;0dda
	rst 38h			;0ddb
	inc bc			;0ddc
	nop			;0ddd
	nop			;0dde
	ex af,af'		;0ddf
	inc de			;0de0
	inc h			;0de1
	ld c,b			;0de2
	cp a			;0de3
l0de4h:
	jp po,l033eh		;0de4
	ld a,a			;0de7
	add a,b			;0de8
	nop			;0de9
	ccf			;0dea
	ret m			;0deb
	djnz $+34		;0dec
	ret nz			;0dee
	inc bc			;0def
	nop			;0df0
	add a,e			;0df1
	rst 38h			;0df2
	ld b,003h		;0df3
	inc bc			;0df5
	nop			;0df6
	sub l			;0df7
	ld bc,0c0ffh		;0df8
	ld b,b			;0dfb
	rst 38h			;0dfc
	nop			;0dfd
	nop			;0dfe
	dec c			;0dff
	ld sp,iy		;0e00
	inc sp			;0e02
	adc a,03fh		;0e03
	nop			;0e05
	nop			;0e06
	rst 38h			;0e07
	nop			;0e08
	rst 38h			;0e09
	or b			;0e0a
	ld h,e			;0e0b
	call m,l0003h		;0e0c
	add a,e			;0e0f
	rst 38h			;0e10
	nop			;0e11
	rst 38h			;0e12
	ld b,000h		;0e13
	add a,e			;0e15
l0e16h:
	rst 38h			;0e16
	nop			;0e17
	rst 38h			;0e18
	inc bc			;0e19
	nop			;0e1a
	or d			;0e1b
	rst 38h			;0e1c
l0e1dh:
	nop			;0e1d
	nop			;0e1e
	rst 38h			;0e1f
	nop			;0e20
	rst 38h			;0e21
	nop			;0e22
	nop			;0e23
	ret m			;0e24
	inc h			;0e25
	ld (de),a		;0e26
	add hl,bc		;0e27
	rst 38h			;0e28
	ld (bc),a		;0e29
	call m,l0000h		;0e2a
	ld sp,hl		;0e2d
	adc a,b			;0e2e
l0e2fh:
	adc a,c			;0e2f
	adc a,b			;0e30
	adc a,b			;0e31
	adc a,c			;0e32
	nop			;0e33
	nop			;0e34
	rst 30h			;0e35
	djnz l0e2fh		;0e36
	inc d			;0e38
	inc d			;0e39
	rst 30h			;0e3a
	nop			;0e3b
	nop			;0e3c
	rst 18h			;0e3d
	ld b,c			;0e3e
	rst 18h			;0e3f
	djnz l0e52h		;0e40
	rst 18h			;0e42
	nop			;0e43
	nop			;0e44
	rra			;0e45
	djnz $+33		;0e46
	ld bc,l1f01h		;0e48
	nop			;0e4b
	nop			;0e4c
	ld a,l			;0e4d
	dec b			;0e4e
	ld de,l0002h		;0e4f
l0e52h:
	add a,e			;0e52
	ei			;0e53
	ld a,(bc)		;0e54
	ei			;0e55
	inc bc			;0e56
	ld a,(bc)		;0e57
	ld (bc),a		;0e58
	nop			;0e59
	cp e			;0e5a
	di			;0e5b
	ld (de),a		;0e5c
	di			;0e5d
	ld (03222h),hl		;0e5e
	nop			;0e61
	nop			;0e62
	ex de,hl		;0e63
	ld a,(bc)		;0e64
	jp pe,l0a0ah		;0e65
	dec bc			;0e68
	nop			;0e69
	nop			;0e6a
	rst 30h			;0e6b
	ld bc,01171h		;0e6c
	ld de,l00f1h		;0e6f
	nop			;0e72
	rst 18h			;0e73
	djnz l0e95h		;0e74
	djnz $+18		;0e76
	rra			;0e78
	nop			;0e79
	nop			;0e7a
	ld a,(hl)		;0e7b
	ld b,d			;0e7c
	ld a,(hl)		;0e7d
	ld b,h			;0e7e
	ld b,h			;0e7f
	ld b,(hl)		;0e80
	nop			;0e81
	nop			;0e82
	ccf			;0e83
	jr nz,l0eb5h		;0e84
	ld hl,03f21h		;0e86
	nop			;0e89
	nop			;0e8a
	ld a,(hl)		;0e8b
	ld b,d			;0e8c
	ld a,(hl)		;0e8d
	ld b,h			;0e8e
	ld b,h			;0e8f
	ld b,(hl)		;0e90
	nop			;0e91
	nop			;0e92
	defb 0fdh,085h ;add a,iyl	;0e93
l0e95h:
	defb 0fdh,003h,085h ;illegal sequence	;0e95
	ld (bc),a		;0e98
	nop			;0e99
	add a,d			;0e9a
	jp po,l0312h		;0e9b
	ld a,(bc)		;0e9e
	add a,e			;0e9f
	jp m,l0000h		;0ea0
	inc bc			;0ea3
	add a,l			;0ea4
	ld (bc),a		;0ea5
	add a,h			;0ea6
	adc a,l			;0ea7
	defb 0fdh,000h,000h ;illegal sequence	;0ea8
	ret p			;0eab
	nop			;0eac
	pop af			;0ead
	ld de,0f212h		;0eae
	nop			;0eb1
	nop			;0eb2
	sbc a,a			;0eb3
	sub b			;0eb4
l0eb5h:
	inc b			;0eb5
	djnz l0ebah		;0eb6
	nop			;0eb8
	adc a,c			;0eb9
l0ebah:
	cp (hl)			;0eba
	and b			;0ebb
	cp (hl)			;0ebc
	and b			;0ebd
	and b			;0ebe
	cp (hl)			;0ebf
	nop			;0ec0
	nop			;0ec1
	cp 005h			;0ec2
	sub d			;0ec4
	ld (bc),a		;0ec5
	nop			;0ec6
	and e			;0ec7
	ei			;0ec8
	add a,d			;0ec9
	ei			;0eca
	add a,b			;0ecb
	add a,b			;0ecc
	ei			;0ecd
	nop			;0ece
	nop			;0ecf
	ex de,hl		;0ed0
	ld a,(bc)		;0ed1
	ex de,hl		;0ed2
	jr z,l0efdh		;0ed3
	ex de,hl		;0ed5
	nop			;0ed6
	nop			;0ed7
	ret po			;0ed8
	nop			;0ed9
	ret po			;0eda
l0edbh:
	jr nz,l0efdh		;0edb
	ret po			;0edd
	nop			;0ede
	nop			;0edf
	ei			;0ee0
	add a,d			;0ee1
	ei			;0ee2
	ld a,(bc)		;0ee3
	ld a,(bc)		;0ee4
	jp m,l0000h		;0ee5
	rst 30h			;0ee8
	inc d			;0ee9
	rst 30h			;0eea
	inc bc			;0eeb
	inc b			;0eec
	ld (bc),a		;0eed
	nop			;0eee
	sub e			;0eef
	rst 28h			;0ef0
	jr z,l0edbh		;0ef1
	jr z,l0f1dh		;0ef3
	cpl			;0ef5
	nop			;0ef6
	nop			;0ef7
	cp (hl)			;0ef8
	jr nz,l0f39h		;0ef9
	jr nz,l0f1dh		;0efb
l0efdh:
	cp (hl)			;0efd
	nop			;0efe
	nop			;0eff
sub_0f00h:
	ccf			;0f00
	jr nz,l0f42h		;0f01
	inc bc			;0f03
	jr nz,l0f08h		;0f04
	nop			;0f06
	add a,c			;0f07
l0f08h:
	ld a,(hl)		;0f08
	inc b			;0f09
	ld b,d			;0f0a
	sbc a,h			;0f0b
	ld a,(hl)		;0f0c
	nop			;0f0d
	nop			;0f0e
	defb 0fdh,085h ;add a,iyl	;0f0f
	defb 0fdh,089h,089h ;illegal sequence	;0f11
	adc a,l			;0f14
	nop			;0f15
	nop			;0f16
	rst 30h			;0f17
	inc b			;0f18
	rlca			;0f19
	inc b			;0f1a
	inc b			;0f1b
	rst 30h			;0f1c
l0f1dh:
	nop			;0f1d
	nop			;0f1e
	ret nz			;0f1f
	nop			;0f20
	ret nz			;0f21
	nop			;0f22
	nop			;0f23
	ret nz			;0f24
	nop			;0f25
	nop			;0f26
	rst 30h			;0f27
	inc bc			;0f28
	add a,h			;0f29
	add a,c			;0f2a
	rst 30h			;0f2b
	inc bc			;0f2c
	nop			;0f2d
	add a,c			;0f2e
	cp l			;0f2f
	inc bc			;0f30
	and c			;0f31
	add a,c			;0f32
	cp l			;0f33
	inc bc			;0f34
	nop			;0f35
	add a,l			;0f36
	cpl			;0f37
	ld c,c			;0f38
l0f39h:
	adc a,a			;0f39
	ld c,b			;0f3a
	jr z,l0f40h		;0f3b
	nop			;0f3d
	add a,c			;0f3e
	ld e,a			;0f3f
l0f40h:
	inc b			;0f40
	ld b,h			;0f41
l0f42h:
	ld (bc),a		;0f42
	nop			;0f43
	adc a,c			;0f44
	add a,b			;0f45
	ld b,b			;0f46
	jr nz,l0f59h		;0f47
	ex af,af'		;0f49
	inc b			;0f4a
	ld (bc),a		;0f4b
	ld bc,l08ffh		;0f4c
	nop			;0f4f
	add a,l			;0f50
	ld e,012h		;0f51
	ld e,012h		;0f53
	jp nc,l0003h		;0f55
	add a,l			;0f58
l0f59h:
	rst 30h			;0f59
	dec h			;0f5a
	ld b,l			;0f5b
	add a,l			;0f5c
	push af			;0f5d
	inc bc			;0f5e
	nop			;0f5f
	add a,l			;0f60
	sbc a,052h		;0f61
	ld e,(hl)		;0f63
	ld d,d			;0f64
	ld d,d			;0f65
	inc bc			;0f66
	nop			;0f67
	inc b			;0f68
	dec h			;0f69
	add a,c			;0f6a
	dec a			;0f6b
	inc bc			;0f6c
	nop			;0f6d
	add a,c			;0f6e
	ex de,hl		;0f6f
	inc b			;0f70
	add hl,hl		;0f71
	inc bc			;0f72
	nop			;0f73
	add a,c			;0f74
	add a,b			;0f75
	ld b,000h		;0f76
	sub c			;0f78
	ld bc,00402h		;0f79
	ex af,af'		;0f7c
	djnz l0f9fh		;0f7d
	ld b,b			;0f7f
	add a,b			;0f80
	nop			;0f81
	ld a,d			;0f82
	ld c,d			;0f83
	ld a,d			;0f84
	ld b,d			;0f85
	ld b,e			;0f86
	nop			;0f87
	nop			;0f88
	rst 38h			;0f89
	ex af,af'		;0f8a
	nop			;0f8b
	add a,l			;0f8c
	dec a			;0f8d
	dec h			;0f8e
	dec a			;0f8f
	ld hl,l0321h		;0f90
	nop			;0f93
	add a,c			;0f94
	jp pe,02a03h		;0f95
	add a,c			;0f98
	rst 28h			;0f99
	inc bc			;0f9a
	nop			;0f9b
	add a,l			;0f9c
	cp l			;0f9d
	and c			;0f9e
l0f9fh:
	cp l			;0f9f
	and c			;0fa0
	cp l			;0fa1
	inc bc			;0fa2
	nop			;0fa3
	add a,l			;0fa4
	call po,0e424h		;0fa5
	ld b,h			;0fa8
	ld h,a			;0fa9
	inc bc			;0faa
	nop			;0fab
	add a,l			;0fac
	cp h			;0fad
	and h			;0fae
	cp h			;0faf
	and b			;0fb0
	and b			;0fb1
	inc bc			;0fb2
	nop			;0fb3
	add a,l			;0fb4
	rst 30h			;0fb5
	add a,h			;0fb6
	add a,a			;0fb7
	add a,h			;0fb8
	call p,l0003h		;0fb9
	add a,c			;0fbc
	cp l			;0fbd
	inc b			;0fbe
	and l			;0fbf
	inc bc			;0fc0
	nop			;0fc1
	add a,c			;0fc2
	rst 28h			;0fc3
	inc bc			;0fc4
	add hl,hl		;0fc5
	add a,c			;0fc6
l0fc7h:
	cpl			;0fc7
	inc bc			;0fc8
	nop			;0fc9
	add a,c			;0fca
	ld a,b			;0fcb
	inc b			;0fcc
	ld c,b			;0fcd
	ld (bc),a		;0fce
	nop			;0fcf
	adc a,b			;0fd0
	ld bc,00402h		;0fd1
	ex af,af'		;0fd4
	djnz $+34		;0fd5
	ld b,b			;0fd7
	add a,b			;0fd8
	inc bc			;0fd9
	nop			;0fda
	add a,(hl)		;0fdb
	ex af,af'		;0fdc
	djnz $+34		;0fdd
	ld b,b			;0fdf
	add a,b			;0fe0
	rst 38h			;0fe1
	dec bc			;0fe2
	nop			;0fe3
	adc a,l			;0fe4
	ex af,af'		;0fe5
	inc b			;0fe6
	ld (bc),a		;0fe7
	ld bc,04080h		;0fe8
	jr nz,l0ffdh		;0feb
	ex af,af'		;0fed
	inc b			;0fee
	ld (bc),a		;0fef
	ld bc,l08ffh		;0ff0
	nop			;0ff3
	add a,l			;0ff4
	dec a			;0ff5
	ld hl,0213dh		;0ff6
	dec a			;0ff9
	inc bc			;0ffa
	nop			;0ffb
	add a,l			;0ffc
l0ffdh:
	rst 28h			;0ffd
	jr z,$+49		;0ffe
	jr z,l1031h		;1000
	inc bc			;1002
	nop			;1003
	add a,l			;1004
	ld a,e			;1005
	ld c,d			;1006
	ld a,d			;1007
	ld d,d			;1008
	ld e,e			;1009
	inc bc			;100a
	nop			;100b
	add a,l			;100c
	jp nc,0de12h		;100d
	ld b,d			;1010
	sbc a,003h		;1011
	nop			;1013
	inc b			;1014
	ld (de),a		;1015
	add a,c			;1016
	ld e,003h		;1017
	nop			;1019
	add a,c			;101a
	push af			;101b
	inc b			;101c
	sub h			;101d
	inc bc			;101e
	nop			;101f
	add a,c			;1020
	ret nz			;1021
	inc b			;1022
	add a,b			;1023
	inc bc			;1024
	nop			;1025
	dec b			;1026
	jr nz,l0fc7h		;1027
	ld a,000h		;1029
	nop			;102b
	ei			;102c
	add a,d			;102d
	jp m,08282h		;102e
l1031h:
	jp m,l0000h		;1031
	rst 28h			;1034
	jr z,l1062h		;1035
	jr z,l1061h		;1037
	cpl			;1039
	nop			;103a
	nop			;103b
	rst 18h			;103c
	inc b			;103d
	call nz,04444h		;103e
	call nz,l0000h		;1041
	ld b,h			;1044
	ld b,h			;1045
	ld a,h			;1046
	inc bc			;1047
	ld b,h			;1048
	dec b			;1049
	nop			;104a
	add a,c			;104b
	adc a,b			;104c
	inc b			;104d
	nop			;104e
	dec b			;104f
	ld hl,(03e85h)		;1050
	nop			;1053
	nop			;1054
	cp c			;1055
	and h			;1056
	inc bc			;1057
	and d			;1058
	add a,(hl)		;1059
	cp (hl)			;105a
	nop			;105b
	nop			;105c
	call p,04744h		;105d
	inc bc			;1060
l1061h:
	ld b,h			;1061
l1062h:
	ld (bc),a		;1062
	nop			;1063
	ld (bc),a		;1064
	ld b,b			;1065
	add a,c			;1066
	ret nz			;1067
	inc bc			;1068
	ld b,b			;1069
	ld (bc),a		;106a
	nop			;106b
	ld (bc),a		;106c
	ld (03e81h),hl		;106d
	inc bc			;1070
	ld (l0002h),hl		;1071
	sub c			;1074
	jp m,0fa82h		;1075
	add a,d			;1078
	add a,d			;1079
	jp m,l0000h		;107a
	defb 0fdh,080h,0bch ;illegal sequence	;107d
	add a,h			;1080
	add a,h			;1081
	call m,l0000h		;1082
	ret p			;1085
	dec b			;1086
	ld b,b			;1087
	ld (bc),a		;1088
	nop			;1089
	sub c			;108a
	cpl			;108b
	jr z,l10bdh		;108c
	ld c,b			;108e
	adc a,b			;108f
	rrca			;1090
	nop			;1091
	nop			;1092
	ld a,020h		;1093
	ld a,020h		;1095
	jr nz,l10d7h		;1097
	nop			;1099
	nop			;109a
	ei			;109b
	inc b			;109c
	adc a,d			;109d
	xor c			;109e
	adc a,e			;109f
	nop			;10a0
	nop			;10a1
	push af			;10a2
	dec b			;10a3
	push af			;10a4
	dec d			;10a5
	dec d			;10a6
	push af			;10a7
	nop			;10a8
	nop			;10a9
	rst 30h			;10aa
	inc d			;10ab
	rla			;10ac
	inc d			;10ad
	inc d			;10ae
	rla			;10af
	nop			;10b0
	nop			;10b1
	ret nz			;10b2
	nop			;10b3
	ret nz			;10b4
l10b5h:
	nop			;10b5
	nop			;10b6
	ret nz			;10b7
	nop			;10b8
	nop			;10b9
	sub a			;10ba
	sub h			;10bb
	sub h			;10bc
l10bdh:
	rst 30h			;10bd
	djnz l10d7h		;10be
	nop			;10c0
	nop			;10c1
	adc a,a			;10c2
	adc a,b			;10c3
	adc a,a			;10c4
	add a,c			;10c5
	add a,c			;10c6
	xor a			;10c7
	inc bc			;10c8
	nop			;10c9
	and b			;10ca
	ccf			;10cb
	ld (0223ah),hl		;10cc
	ld (l0000h),hl		;10cf
	rst 30h			;10d2
	add a,b			;10d3
	rst 30h			;10d4
l10d5h:
	inc d			;10d5
	inc d			;10d6
l10d7h:
	rst 30h			;10d7
	nop			;10d8
	nop			;10d9
	adc a,a			;10da
	adc a,c			;10db
	adc a,c			;10dc
	add hl,bc		;10dd
	add hl,bc		;10de
	xor a			;10df
	nop			;10e0
	nop			;10e1
	rst 30h			;10e2
	inc d			;10e3
	call p,08484h		;10e4
	rst 30h			;10e7
	nop			;10e8
	nop			;10e9
	adc a,a			;10ea
l10ebh:
	inc b			;10eb
	adc a,c			;10ec
	sub c			;10ed
	xor a			;10ee
	nop			;10ef
	nop			;10f0
	rst 30h			;10f1
	djnz l10ebh		;10f2
	add a,b			;10f4
	add a,b			;10f5
	rst 30h			;10f6
	nop			;10f7
	nop			;10f8
	add a,b			;10f9
	nop			;10fa
	add a,b			;10fb
	nop			;10fc
	nop			;10fd
	add a,b			;10fe
	inc bc			;10ff
	nop			;1100
	add a,c			;1101
	rra			;1102
	inc b			;1103
	inc b			;1104
	ld (bc),a		;1105
	nop			;1106
	add a,c			;1107
	cp (hl)			;1108
	dec b			;1109
	xor d			;110a
	ld (bc),a		;110b
	nop			;110c
	adc a,b			;110d
	jp m,0fa8ah		;110e
	add a,d			;1111
	add a,d			;1112
	add a,e			;1113
	nop			;1114
	nop			;1115
	dec b			;1116
	jr z,l10d5h		;1117
	rst 28h			;1119
	nop			;111a
	nop			;111b
	ld a,l			;111c
	ld b,c			;111d
	ld a,l			;111e
	dec b			;111f
	dec b			;1120
	ld a,l			;1121
	nop			;1122
	nop			;1123
	pop af			;1124
	ld bc,l01f1h		;1125
	ld bc,l00f1h		;1128
	nop			;112b
	inc d			;112c
	inc d			;112d
	rst 30h			;112e
	djnz l1141h		;112f
	rla			;1131
	nop			;1132
	nop			;1133
	ld e,a			;1134
	ld d,c			;1135
	rst 18h			;1136
	ld d,b			;1137
	ld d,b			;1138
	ret nc			;1139
	nop			;113a
	nop			;113b
	ld a,l			;113c
	ld b,c			;113d
l113eh:
	ld a,l			;113e
	ld b,c			;113f
	ld b,c			;1140
l1141h:
	ld a,l			;1141
	nop			;1142
	nop			;1143
	ret p			;1144
	djnz l113eh		;1145
	jr nz,l1169h		;1147
	jr nc,l114bh		;1149
l114bh:
	nop			;114b
	ei			;114c
	adc a,d			;114d
	jp m,08282h		;114e
	add a,e			;1151
	nop			;1152
	nop			;1153
	jp pe,02a04h		;1154
	and d			;1157
	rst 28h			;1158
	nop			;1159
	nop			;115a
	cp (hl)			;115b
	and b			;115c
	cp (hl)			;115d
	and b			;115e
	and b			;115f
	cp (hl)			;1160
	nop			;1161
	nop			;1162
	ret m			;1163
	adc a,b			;1164
	ret m			;1165
	sub b			;1166
	sub b			;1167
	sbc a,b			;1168
l1169h:
	nop			;1169
	nop			;116a
	ex (sp),hl		;116b
	sub d			;116c
	adc a,e			;116d
	adc a,d			;116e
	adc a,d			;116f
	jp m,l0000h		;1170
	jp pe,0ea2ah		;1173
	ld c,d			;1176
	ld c,d			;1177
	ld l,e			;1178
	nop			;1179
	ex af,af'		;117a
	add a,b			;117b
	add a,c			;117c
	rst 38h			;117d
	rlca			;117e
	nop			;117f
	add a,c			;1180
	rst 38h			;1181
	rlca			;1182
	add a,b			;1183
	nop			;1184
	inc bc			;1185
	and b			;1186
	inc bc			;1187
	ret p			;1188
	add a,l			;1189
	jr nc,l11fch		;118a
	nop			;118c
	nop			;118d
	and b			;118e
	inc bc			;118f
	ret p			;1190
	add a,l			;1191
	jr nc,l1204h		;1192
	nop			;1194
	nop			;1195
	and b			;1196
	inc b			;1197
	ret p			;1198
	add a,h			;1199
	ld (hl),b		;119a
	nop			;119b
	nop			;119c
	and b			;119d
	inc bc			;119e
	ret p			;119f
	add a,l			;11a0
	jr nc,$+114		;11a1
	nop			;11a3
	nop			;11a4
	and b			;11a5
	inc bc			;11a6
	ret p			;11a7
	add a,l			;11a8
	jr nc,l121bh		;11a9
	nop			;11ab
	nop			;11ac
	and b			;11ad
	inc bc			;11ae
	ret p			;11af
	add a,l			;11b0
	jr nc,l1223h		;11b1
	nop			;11b3
	nop			;11b4
	and b			;11b5
	inc bc			;11b6
	ret p			;11b7
	add a,l			;11b8
	jr nc,l122bh		;11b9
	nop			;11bb
	nop			;11bc
	and b			;11bd
	inc bc			;11be
	ret p			;11bf
	add a,h			;11c0
	jr nc,l1233h		;11c1
	nop			;11c3
	or b			;11c4
	inc bc			;11c5
	ret p			;11c6
	add a,l			;11c7
	jr nc,$+114		;11c8
	nop			;11ca
	nop			;11cb
	or b			;11cc
	inc bc			;11cd
	ret p			;11ce
	add a,l			;11cf
	jr nc,l1242h		;11d0
	nop			;11d2
	nop			;11d3
	or b			;11d4
	inc bc			;11d5
	ret p			;11d6
	add a,l			;11d7
	jr nc,$+114		;11d8
	nop			;11da
	nop			;11db
	or b			;11dc
	inc bc			;11dd
	ret p			;11de
	add a,l			;11df
	jr nc,l1252h		;11e0
	nop			;11e2
	nop			;11e3
	or b			;11e4
	inc bc			;11e5
	ret p			;11e6
	add a,l			;11e7
	jr nc,l125ah		;11e8
	ret p			;11ea
	nop			;11eb
	or b			;11ec
	inc bc			;11ed
	ret p			;11ee
	add a,l			;11ef
	jr nc,l1262h		;11f0
	nop			;11f2
	nop			;11f3
	or b			;11f4
	inc bc			;11f5
	ret p			;11f6
	add a,l			;11f7
	jr nc,l126ah		;11f8
	nop			;11fa
	nop			;11fb
l11fch:
	or b			;11fc
	inc bc			;11fd
	ret p			;11fe
	add a,d			;11ff
	jr nc,l1272h		;1200
	ld b,0f0h		;1202
l1204h:
	rlca			;1204
	jr nc,l1286h		;1205
	ret p			;1207
	ld a,a			;1208
	ret p			;1209
	ld a,a			;120a
	ret p			;120b
	ld a,a			;120c
	ret p			;120d
	ld a,a			;120e
	ret p			;120f
	add a,c			;1210
	ret p			;1211
	jr nc,l1284h		;1212
	ld c,b			;1214
	or b			;1215
	ld h,b			;1216
	jr nc,l1269h		;1217
	and b			;1219
	ld a,a			;121a
l121bh:
	sub b			;121b
	ld a,a			;121c
	sub b			;121d
	ld l,d			;121e
	sub b			;121f
	jr $-126		;1220
	nop			;1222
l1223h:
	ld b,02ah		;1223
	or d			;1225
	ld bc,0b6b8h		;1226
	nop			;1229
	inc bc			;122a
l122bh:
	nop			;122b
	add a,l			;122c
	ld (bc),a		;122d
	ld b,00eh		;122e
	rrca			;1230
	rrca			;1231
	dec b			;1232
l1233h:
	nop			;1233
	add a,(hl)		;1234
	inc b			;1235
	inc c			;1236
	inc c			;1237
	nop			;1238
	ld bc,l0403h		;1239
	rlca			;123c
	sub c			;123d
	rrca			;123e
	ld c,009h		;123f
	rlca			;1241
l1242h:
	dec bc			;1242
	dec hl			;1243
	ld l,e			;1244
	ld c,d			;1245
	ld a,(bc)		;1246
	inc c			;1247
	ld a,(bc)		;1248
	ld b,00eh		;1249
	adc a,a			;124b
	inc c			;124c
	adc a,e			;124d
	add a,a			;124e
	inc bc			;124f
	nop			;1250
	sbc a,c			;1251
l1252h:
	add a,b			;1252
	ld b,b			;1253
	ld b,b			;1254
	ld h,b			;1255
	and b			;1256
	rrca			;1257
	inc c			;1258
	inc bc			;1259
l125ah:
	dec bc			;125a
	dec bc			;125b
	ex af,af'		;125c
	dec de			;125d
	jr l128ah		;125e
	ld l,d			;1260
l1261h:
	ld l,c			;1261
l1262h:
	ld b,a			;1262
	rrca			;1263
	ld l,06ch		;1264
	ld c,l			;1266
	rst 8			;1267
	ld c,a			;1268
l1269h:
	ld b,c			;1269
l126ah:
	ld e,003h		;126a
	rst 28h			;126c
	adc a,(hl)		;126d
	rst 20h			;126e
	or b			;126f
	or b			;1270
	ret c			;1271
l1272h:
	ret c			;1272
	ld e,h			;1273
	inc l			;1274
	xor (hl)		;1275
	xor (hl)		;1276
	dec de			;1277
	dec de			;1278
	jr l128eh		;1279
	rrca			;127b
	inc bc			;127c
	dec de			;127d
	and e			;127e
	ld c,h			;127f
	dec c			;1280
	dec l			;1281
	ld l,h			;1282
	ld l,a			;1283
l1284h:
	ld c,h			;1284
	dec c			;1285
l1286h:
	dec h			;1286
	rst 20h			;1287
	rst 30h			;1288
	di			;1289
l128ah:
	in a,(01bh)		;128a
	in a,(099h)		;128c
l128eh:
	ld a,c			;128e
	rst 10h			;128f
	rst 10h			;1290
	out (0ebh),a		;1291
	ex de,hl		;1293
	jp (hl)			;1294
	call p,000f5h		;1295
	nop			;1298
	add a,b			;1299
	add a,b			;129a
	ret nz			;129b
	ret nz			;129c
	rst 38h			;129d
	ret po			;129e
	ld (bc),a		;129f
	ld (bc),a		;12a0
	nop			;12a1
	inc bc			;12a2
	ld (bc),a		;12a3
	ld (bc),a		;12a4
	ld b,002h		;12a5
	ex af,af'		;12a7
	adc a,e			;12a8
	inc c			;12a9
	inc b			;12aa
	ld b,006h		;12ab
	ld (bc),a		;12ad
	inc bc			;12ae
	rra			;12af
	dec sp			;12b0
	dec sp			;12b1
	ld a,(0033ah)		;12b2
	add hl,sp		;12b5
	and e			;12b6
	ld h,b			;12b7
	ld l,c			;12b8
	ld l,h			;12b9
	ld c,h			;12ba
	dec c			;12bb
	dec l			;12bc
	ld l,l			;12bd
	ld h,c			;12be
	defb 0fdh,0fch,0fch ;illegal sequence	;12bf
	ld a,(hl)		;12c2
	ld a,09eh		;12c3
	adc a,0e7h		;12c5
	jp p,0fa02h		;12c7
	ld d,c			;12ca
	xor c			;12cb
	ld d,c			;12cc
	and b			;12cd
	ld d,b			;12ce
	ret po			;12cf
	ret p			;12d0
	ld (hl),b		;12d1
	ld a,b			;12d2
	ld a,b			;12d3
	cp h			;12d4
	cp h			;12d5
	cp (hl)			;12d6
	nop			;12d7
	ld b,000h		;12d8
	dec b			;12da
	ld b,082h		;12db
	ld (bc),a		;12dd
	nop			;12de
	inc b			;12df
sub_12e0h:
	ld (bc),a		;12e0
	ld (bc),a		;12e1
	ld b,081h		;12e2
	inc bc			;12e4
	inc b			;12e5
	ld bc,l0003h		;12e6
	ld (bc),a		;12e9
	ld bc,08002h		;12ea
	inc bc			;12ed
	ret nz			;12ee
	pop bc			;12ef
	ret po			;12f0
	nop			;12f1
	nop			;12f2
	add a,b			;12f3
l12f4h:
	add a,b			;12f4
	ret nz			;12f5
	ld h,b			;12f6
	ld h,b			;12f7
	ld d,b			;12f8
	ld a,c			;12f9
	ld (hl),h		;12fa
	ld (hl),l		;12fb
	ld l,(hl)		;12fc
	defb 0edh ;next byte illegal after ed	;12fd
	defb 0ddh,0ddh,0bdh ;illegal sequence	;12fe
	ld l,a			;1301
	ld h,c			;1302
	ld c,l			;1303
	dec c			;1304
	dec l			;1305
	ld l,l			;1306
	ld l,b			;1307
	rlca			;1308
	di			;1309
	cp c			;130a
	call m,0bfbeh		;130b
	call m,09c03h		;130e
	jr nz,l1353h		;1311
	nop			;1313
	ld a,a			;1314
	ccf			;1315
	cp a			;1316
	add a,b			;1317
	sbc a,a			;1318
	sbc a,040h		;1319
	ld l,a			;131b
	cpl			;131c
l131dh:
	daa			;131d
	or a			;131e
	djnz l12f4h		;131f
	add hl,bc		;1321
	rrca			;1322
	adc a,l			;1323
	add a,016h		;1324
	add a,b			;1326
	ret nc			;1327
	ld c,c			;1328
	ld b,006h		;1329
	nop			;132b
	ld b,018h		;132c
	cpl			;132e
	ld a,b			;132f
	ld b,e			;1330
	inc b			;1331
	nop			;1332
	rst 38h			;1333
	add a,b			;1334
	ret nz			;1335
	nop			;1336
	ld a,(hl)		;1337
	nop			;1338
	inc bc			;1339
	call pe,0af1fh		;133a
	ld d,a			;133d
	ld a,(bc)		;133e
	pop af			;133f
	nop			;1340
	nop			;1341
	ret nz			;1342
	jr nc,l131dh		;1343
	call pe,0f804h		;1345
	add a,b			;1348
	ld b,b			;1349
	jr nc,$+26		;134a
	ld a,(bc)		;134c
	dec b			;134d
	nop			;134e
l134fh:
	ld e,0e0h		;134f
	djnz l134fh		;1351
l1353h:
	add a,b			;1353
	ccf			;1354
	call m,0fc00h		;1355
	jr c,l13a0h		;1358
	ld a,0f9h		;135a
	add a,a			;135c
l135dh:
	inc a			;135d
	ex (sp),hl		;135e
	rra			;135f
	or b			;1360
	inc bc			;1361
	ret po			;1362
	adc a,03fh		;1363
	rlca			;1365
	ret m			;1366
	ret nz			;1367
	ld a,a			;1368
	cp 000h			;1369
	ld a,(hl)		;136b
	sbc a,(hl)		;136c
	ld b,b			;136d
	ret nz			;136e
	rrca			;136f
	dec sp			;1370
	ld (hl),a		;1371
	rst 28h			;1372
	rst 18h			;1373
	cp (hl)			;1374
	ld a,l			;1375
	dec sp			;1376
	sbc a,l			;1377
	nop			;1378
	or (hl)			;1379
	in a,(0ech)		;137a
	xor 077h		;137c
	or e			;137e
	sub l			;137f
	rlca			;1380
	ld (hl),b		;1381
	add a,e			;1382
	inc b			;1383
	ld sp,hl		;1384
	ld a,0dfh		;1385
	rst 20h			;1387
	sbc a,000h		;1388
	rst 38h			;138a
	ld a,a			;138b
	adc a,a			;138c
	jr nc,l135dh		;138d
	di			;138f
	ld a,0ffh		;1390
	nop			;1392
	rst 38h			;1393
	ret m			;1394
	rlca			;1395
	ld a,b			;1396
	add a,a			;1397
	defb 0fdh,003h,0ffh ;illegal sequence	;1398
	nop			;139b
	rst 38h			;139c
	add a,b			;139d
	ld a,a			;139e
	add a,b			;139f
l13a0h:
	rst 28h			;13a0
	rst 18h			;13a1
	ret nz			;13a2
	ld a,a			;13a3
	nop			;13a4
	rst 38h			;13a5
	rst 38h			;13a6
	nop			;13a7
	rst 30h			;13a8
	rst 28h			;13a9
	rrca			;13aa
	sbc a,a			;13ab
	ccf			;13ac
	nop			;13ad
	rst 38h			;13ae
	nop			;13af
	ret p			;13b0
	ret po			;13b1
	ret c			;13b2
	push af			;13b3
	call c,03fbeh		;13b4
	nop			;13b7
	di			;13b8
	jr nc,$+112		;13b9
	ld d,d			;13bb
	ld c,h			;13bc
	ld e,h			;13bd
	ld a,(l0e16h)		;13be
	ccf			;13c1
	rst 0			;13c2
	ld l,b			;13c3
	sbc a,a			;13c4
	adc a,a			;13c5
	or d			;13c6
	adc a,l			;13c7
	ld sp,0f987h		;13c8
	ld a,(hl)		;13cb
	adc a,a			;13cc
	ld h,c			;13cd
	call m,0718fh		;13ce
l13d1h:
	ld a,h			;13d1
	rra			;13d2
	ccf			;13d3
	rst 8			;13d4
	di			;13d5
	dec a			;13d6
	add a,d			;13d7
	ret m			;13d8
	pop af			;13d9
	cp 0f8h			;13da
	ret po			;13dc
	add a,e			;13dd
	rrca			;13de
	ccf			;13df
	ld a,a			;13e0
	adc a,0e7h		;13e1
	ld (hl),e		;13e3
	add hl,sp		;13e4
	ret nz			;13e5
	cp 0fch			;13e6
	ex (sp),hl		;13e8
	sub l			;13e9
	ld d,096h		;13ea
	rst 10h			;13ec
	ret p			;13ed
	inc bc			;13ee
	sub b			;13ef
	rst 0			;13f0
	ei			;13f1
	ld a,(iy+07fh)		;13f2
	ccf			;13f5
	cp a			;13f6
	inc e			;13f7
	ret nz			;13f8
	call m,07ef0h		;13f9
	or b			;13fc
	pop bc			;13fd
	jp nz,l0000h		;13fe
	ld a,a			;1401
	add a,b			;1402
	ld (bc),a		;1403
	ld a,(de)		;1404
	ld b,l			;1405
	xor c			;1406
	ld d,h			;1407
	ld (bc),a		;1408
	nop			;1409
	nop			;140a
	dec de			;140b
	in a,(0b7h)		;140c
	or a			;140e
	jr nc,l13a0h		;140f
	rst 38h			;1411
	nop			;1412
	dec de			;1413
	ld (hl),0c8h		;1414
	call m,sub_0001h	;1416
	ret m			;1419
	nop			;141a
	ret nz			;141b
	sub 0adh		;141c
	inc l			;141e
	pop hl			;141f
	ex af,af'		;1420
	call m,04000h		;1421
	sbc a,h			;1424
	ld bc,040aah		;1425
	ld b,004h		;1428
	nop			;142a
	adc a,c			;142b
	inc bc			;142c
	ld e,0e0h		;142d
	nop			;142f
	dec e			;1430
	dec b			;1431
	add hl,de		;1432
	xor 0f0h		;1433
	inc bc			;1435
	nop			;1436
	sub l			;1437
	ld a,(hl)		;1438
	ld (hl),c		;1439
	sub (hl)		;143a
	rst 20h			;143b
	scf			;143c
	rlca			;143d
	ld bc,07b00h		;143e
	adc a,e			;1441
	ld h,c			;1442
	ld l,h			;1443
	ld l,l			;1444
	ld l,l			;1445
	dec c			;1446
	ld h,l			;1447
	rrca			;1448
	jp po,03ef9h		;1449
	adc a,003h		;144c
	or 083h			;144e
	sbc a,a			;1450
	ld a,a			;1451
	cp a			;1452
	dec b			;1453
	rst 18h			;1454
	call 0f7e0h		;1455
	di			;1458
	ei			;1459
	ld sp,hl		;145a
	ret m			;145b
	call m,sub_1fe1h	;145c
	rst 20h			;145f
	ret m			;1460
	ret po			;1461
	call m,01f7fh		;1462
	rst 0			;1465
	nop			;1466
	rst 38h			;1467
	inc bc			;1468
	rrca			;1469
	ret p			;146a
	rra			;146b
	ret nz			;146c
	xor 000h		;146d
	ret nz			;146f
	rst 38h			;1470
	ccf			;1471
	ld a,a			;1472
	add a,b			;1473
	rra			;1474
	ret po			;1475
	ld bc,0f000h		;1476
	cp 03fh			;1479
	rst 38h			;147b
	nop			;147c
	rst 20h			;147d
	ret m			;147e
	nop			;147f
	ld bc,07ffeh		;1480
	ld a,a			;1483
	nop			;1484
	dec a			;1485
	nop			;1486
	rrca			;1487
	ret m			;1488
	call m,sub_1661h	;1489
	ld (hl),b		;148c
	ret nz			;148d
	call m,080f0h		;148e
	jr nc,$-66		;1491
	inc bc			;1493
	nop			;1494
	nop			;1495
	add hl,sp		;1496
	ld a,(bc)		;1497
	inc bc			;1498
	ex af,af'		;1499
	ld d,038h		;149a
	ld h,b			;149c
	add a,b			;149d
	or 068h			;149e
	sbc a,(hl)		;14a0
	cp 03dh			;14a1
	inc bc			;14a3
	nop			;14a4
	sbc a,(hl)		;14a5
	rst 18h			;14a6
	ret nc			;14a7
	inc bc			;14a8
	or (hl)			;14a9
	ld l,l			;14aa
	jr l14beh		;14ab
	jr nz,l14beh		;14ad
	ld a,a			;14af
	ccf			;14b0
	cp a			;14b1
	ret nz			;14b2
	rlca			;14b3
	pop af			;14b4
	inc a			;14b5
	ret p			;14b6
	cp 000h			;14b7
	ret po			;14b9
	rrca			;14ba
	rlca			;14bb
	rst 38h			;14bc
	ccf			;14bd
l14beh:
	pop af			;14be
	rra			;14bf
	add a,e			;14c0
	nop			;14c1
	cp 0fch			;14c2
	dec b			;14c4
	rst 38h			;14c5
	sub d			;14c6
	ld a,(hl)		;14c7
	inc c			;14c8
	pop hl			;14c9
	ret m			;14ca
	nop			;14cb
	adc a,09ch		;14cc
	add hl,sp		;14ce
	ld (hl),e		;14cf
	and 0c8h		;14d0
	nop			;14d2
	nop			;14d3
	ld (hl),e		;14d4
	rst 20h			;14d5
	call z,06038h		;14d6
	inc bc			;14d9
	nop			;14da
	adc a,b			;14db
	ld b,b			;14dc
	jr nz,l153fh		;14dd
	jr nc,l14f9h		;14df
	ex af,af'		;14e1
	inc b			;14e2
	ld (bc),a		;14e3
	inc bc			;14e4
	nop			;14e5
	add a,l			;14e6
	ret p			;14e7
	ld a,(hl)		;14e8
	rlca			;14e9
	rst 0			;14ea
	ld a,a			;14eb
	inc bc			;14ec
	nop			;14ed
	add a,l			;14ee
	rst 38h			;14ef
	ld h,b			;14f0
	jp p,0f9c1h		;14f1
	inc b			;14f4
	nop			;14f5
	add a,h			;14f6
	rst 38h			;14f7
	ret c			;14f8
l14f9h:
	rst 28h			;14f9
	cp e			;14fa
	dec b			;14fb
	nop			;14fc
	add a,e			;14fd
	ld c,03fh		;14fe
	ex af,af'		;1500
	dec b			;1501
	nop			;1502
	sub c			;1503
	add a,b			;1504
	ret m			;1505
	ld b,d			;1506
	ld a,b			;1507
	call m,07ae0h		;1508
	ret p			;150b
	ld (0f507h),hl		;150c
	rst 38h			;150f
	ld e,e			;1510
	rlca			;1511
	inc bc			;1512
	ld d,c			;1513
	ei			;1514
	inc bc			;1515
	ld a,a			;1516
	and a			;1517
	nop			;1518
	rst 18h			;1519
	rst 38h			;151a
	add a,c			;151b
	cpl			;151c
	ccf			;151d
	ret p			;151e
	dec e			;151f
	cp a			;1520
	ld c,0fdh		;1521
	rst 0			;1523
	cp 007h			;1524
	cp a			;1526
	ret nc			;1527
	dec a			;1528
	defb 0ddh,0eeh,047h ;illegal sequence	;1529
	add hl,sp		;152c
	rst 8			;152d
	ex (sp),hl		;152e
	ret m			;152f
	inc d			;1530
	ret po			;1531
	ld c,h			;1532
	jp m,0ff64h		;1533
	or l			;1536
	nop			;1537
	add a,b			;1538
	ret p			;1539
	cp 0e8h			;153a
	add a,a			;153c
	inc a			;153d
	ret m			;153e
l153fh:
	inc b			;153f
	nop			;1540
	call z,0f0c0h		;1541
	call m,0e380h		;1544
	ld b,e			;1547
	ret p			;1548
	ret nz			;1549
	ld a,a			;154a
	cp 077h			;154b
	rst 18h			;154d
	rra			;154e
	ld e,a			;154f
	ex de,hl		;1550
	ld d,a			;1551
	rst 38h			;1552
	djnz l1559h		;1553
	cp 0fbh			;1555
	rst 38h			;1557
	daa			;1558
l1559h:
	ld (hl),e		;1559
	ld (bc),a		;155a
	ld bc,l1f8fh		;155b
	rst 10h			;155e
	ex de,hl		;155f
	rst 38h			;1560
	rra			;1561
	inc bc			;1562
	add a,b			;1563
	nop			;1564
	ret m			;1565
	rlca			;1566
	cpl			;1567
	add a,c			;1568
	rst 0			;1569
	xor 058h		;156a
	adc a,h			;156c
	rst 38h			;156d
	pop de			;156e
	ei			;156f
	adc a,(hl)		;1570
	adc a,004h		;1571
	inc c			;1573
	nop			;1574
	ld b,c			;1575
	jp po,06f03h		;1576
	rst 10h			;1579
	inc bc			;157a
	ex af,af'		;157b
	set 7,d			;157c
	ld b,c			;157e
	sbc a,e			;157f
	or e			;1580
	call c,02ef9h		;1581
	ld e,a			;1584
	rst 38h			;1585
	ret nz			;1586
	ret p			;1587
	call m,sub_12e0h	;1588
	ret m			;158b
	pop de			;158c
	rst 18h			;158d
	inc b			;158e
	nop			;158f
	rst 38h			;1590
l1591h:
	add a,b			;1591
	ret nz			;1592
	ret p			;1593
	ret m			;1594
	dec de			;1595
	rrca			;1596
	ld a,(de)		;1597
	adc a,a			;1598
	ld b,a			;1599
	ld l,a			;159a
	rra			;159b
	ccf			;159c
	rst 20h			;159d
	rst 28h			;159e
	ret po			;159f
	nop			;15a0
	ret nc			;15a1
	sub b			;15a2
	inc b			;15a3
	cp 03fh			;15a4
	ld c,a			;15a6
	jr nz,l1591h		;15a7
	dec de			;15a9
	ld sp,hl		;15aa
	ccf			;15ab
	rst 38h			;15ac
	ret p			;15ad
	rst 38h			;15ae
	ld a,e			;15af
	ccf			;15b0
	add a,l			;15b1
	jr nc,$-58		;15b2
	cpl			;15b4
	ld b,0ffh		;15b5
	rst 18h			;15b7
	ex (sp),hl		;15b8
	cp 07ah			;15b9
	ld h,b			;15bb
	defb 0fdh,0f6h,0e7h ;illegal sequence	;15bc
	ld a,b			;15bf
	rst 8			;15c0
	call nz,038e2h		;15c1
	dec e			;15c4
	rst 30h			;15c5
	rst 8			;15c6
	rra			;15c7
	ccf			;15c8
	ld a,a			;15c9
	and 044h		;15ca
	ld (bc),a		;15cc
	ccf			;15cd
	nop			;15ce
	dec e			;15cf
	cp 007h			;15d0
	rrca			;15d2
	inc e			;15d3
	dec de			;15d4
	cp a			;15d5
	add a,0efh		;15d6
	rst 38h			;15d8
	cp h			;15d9
	inc d			;15da
	ld h,b			;15db
	cp 0feh			;15dc
	jp p,0e3ffh		;15de
	ld b,c			;15e1
	add a,b			;15e2
	ret nz			;15e3
	add a,b			;15e4
	nop			;15e5
	add a,b			;15e6
	ret nz			;15e7
	ret po			;15e8
	ret m			;15e9
	call m,0fffeh		;15ea
	ld a,a			;15ed
	ld a,a			;15ee
	ccf			;15ef
	ret p			;15f0
	jp (hl)			;15f1
	ld (hl),b		;15f2
	jr c,l1613h		;15f3
	ld a,h			;15f5
	ld a,b			;15f6
	ld a,a			;15f7
	cp 03fh			;15f8
	rst 30h			;15fa
	ld e,a			;15fb
	rst 28h			;15fc
	call m,0f0beh		;15fd
	ld a,b			;1600
	call nc,0eceeh		;1601
	pop af			;1604
	call m,03f3dh		;1605
	add a,a			;1608
	ex (sp),hl		;1609
	ret po			;160a
	ld b,b			;160b
	inc c			;160c
	ret m			;160d
	ret p			;160e
	pop af			;160f
	rst 38h			;1610
	rst 18h			;1611
	ld (hl),b		;1612
l1613h:
	jr nz,l1616h		;1613
	inc bc			;1615
l1616h:
	ld c,b			;1616
	ret p			;1617
	ret m			;1618
	ld a,(hl)		;1619
	inc bc			;161a
	ld de,0bf3fh		;161b
	rlca			;161e
	inc bc			;161f
	ret c			;1620
	ld a,a			;1621
	inc de			;1622
	ld bc,0f9f7h		;1623
	ld a,a			;1626
	ld c,0f6h		;1627
	cp 083h			;1629
	or b			;162b
	ret p			;162c
	ret po			;162d
l162eh:
	jr nz,l162eh		;162e
l1630h:
	ret pe			;1630
	ld b,b			;1631
	inc b			;1632
	ld c,044h		;1633
	call po,sub_00ffh	;1635
	add hl,bc		;1638
	dec e			;1639
	cpl			;163a
	ld a,a			;163b
	daa			;163c
	rrca			;163d
	jr nz,l1630h		;163e
	rra			;1640
	rrca			;1641
	ld a,a			;1642
	ret m			;1643
	call c,080f8h		;1644
	ret nz			;1647
	ret po			;1648
	ret p			;1649
	ret m			;164a
	call m,sub_00feh	;164b
	inc a			;164e
	cp 03fh			;164f
	ld a,a			;1651
	rst 38h			;1652
	ret po			;1653
	rst 38h			;1654
	rst 18h			;1655
	cp 064h			;1656
	ld (bc),a		;1658
	rst 30h			;1659
	ld d,e			;165a
l165bh:
	nop			;165b
	ld sp,hl		;165c
	rst 18h			;165d
	inc e			;165e
l165fh:
	jr nc,$+9		;165f
sub_1661h:
	inc sp			;1661
	ld a,(bc)		;1662
	ret po			;1663
	ret nz			;1664
	add a,b			;1665
	inc e			;1666
	call p,08028h		;1667
l166ah:
	djnz l16a8h		;166a
	ld e,05dh		;166c
	rlca			;166e
	cpl			;166f
	halt			;1670
l1671h:
	ld l,e			;1671
	rst 38h			;1672
	rlca			;1673
	djnz l1685h		;1674
	rst 30h			;1676
	ei			;1677
	or b			;1678
	ei			;1679
	rra			;167a
	ret nz			;167b
	call c,0ffffh		;167c
	cp a			;167f
	ld sp,hl		;1680
	ret po			;1681
	jp po,0fac7h		;1682
l1685h:
	call m,078d0h		;1685
	rst 38h			;1688
	sbc a,a			;1689
	pop hl			;168a
	ld e,a			;168b
	ret nz			;168c
	ld (bc),a		;168d
	ld l,(hl)		;168e
	ld (hl),a		;168f
	and (hl)		;1690
	jp m,l13d1h		;1691
	rlca			;1694
	ccf			;1695
l1696h:
	ld a,b			;1696
	add a,a			;1697
	inc bc			;1698
	rst 28h			;1699
	sbc a,0ffh		;169a
	rst 18h			;169c
	sub b			;169d
	ld h,e			;169e
	defb 0fdh,0ffh,076h ;illegal sequence	;169f
l16a2h:
	ret p			;16a2
	add a,b			;16a3
	nop			;16a4
	ret m			;16a5
	sub b			;16a6
	ex af,af'		;16a7
l16a8h:
	and e			;16a8
	ret pe			;16a9
	ret p			;16aa
	ret po			;16ab
	add a,h			;16ac
l16adh:
	rrca			;16ad
	ccf			;16ae
	add a,b			;16af
	ret nz			;16b0
	ret po			;16b1
	ret po			;16b2
l16b3h:
	ret p			;16b3
	ret m			;16b4
	ret m			;16b5
	call m,sub_0800h	;16b6
	or b			;16b9
	ex af,af'		;16ba
	jr nz,l16c7h		;16bb
	or b			;16bd
	ld b,030h		;16be
	djnz l16e2h		;16c0
	ld (bc),a		;16c2
	or b			;16c3
	ex af,af'		;16c4
	jr nc,l16cdh		;16c5
l16c7h:
	or b			;16c7
	inc bc			;16c8
	jr nz,$-125		;16c9
	or b			;16cb
	inc c			;16cc
l16cdh:
	jr nz,l16d2h		;16cd
	jr nc,l16d7h		;16cf
	or b			;16d1
l16d2h:
	rlca			;16d2
	jr nc,$+24		;16d3
	jr nz,l165bh		;16d5
l16d7h:
	nop			;16d7
	jr nz,l166ah		;16d8
	sub b			;16da
	dec b			;16db
	jr nz,l165fh		;16dc
	sub b			;16de
	ld b,0a0h		;16df
	ld (bc),a		;16e1
l16e2h:
	jr nc,l16eah		;16e2
	or b			;16e4
	dec b			;16e5
	jr nc,l16ech		;16e6
l16e8h:
	or b			;16e8
	add a,c			;16e9
l16eah:
	jr nc,l16f4h		;16ea
l16ech:
	jr nz,l1671h		;16ec
	and b			;16ee
	jr nz,l1731h		;16ef
	inc bc			;16f1
	ret nz			;16f2
	add a,d			;16f3
l16f4h:
	ld h,b			;16f4
	sub b			;16f5
	inc c			;16f6
	jr nz,l16fdh		;16f7
	sub b			;16f9
	add a,c			;16fa
	add a,b			;16fb
	rlca			;16fc
l16fdh:
	jr nz,$+5		;16fd
	jr nc,l1706h		;16ff
	jr nz,$+4		;1701
	sub b			;1703
	ld b,020h		;1704
l1706h:
	inc b			;1706
	ret nz			;1707
	inc b			;1708
	jr nz,$+12		;1709
	jr nc,l170fh		;170b
	or b			;170d
	inc b			;170e
l170fh:
	jr nc,l1716h		;170f
l1711h:
	jr nz,l1696h		;1711
	ld (03030h),a		;1713
l1716h:
	inc bc			;1716
	ld h,b			;1717
	add a,e			;1718
	and b			;1719
l171ah:
	add a,b			;171a
	jr nc,l1728h		;171b
	jr nz,l16a2h		;171d
	ret nz			;171f
	jr nz,l1742h		;1720
	inc bc			;1722
	add a,d			;1723
	add a,c			;1724
	jr nz,$+5		;1725
	ret nz			;1727
l1728h:
	inc bc			;1728
	jr nz,l16adh		;1729
	ret nz			;172b
	jr nz,l1732h		;172c
	jr nc,l16b3h		;172e
	add a,b			;1730
l1731h:
	ret nz			;1731
l1732h:
	ret nz			;1732
	inc b			;1733
	jr nc,l1738h		;1734
	jr nz,l173ah		;1736
l1738h:
	ret nz			;1738
	add a,d			;1739
l173ah:
	jr nc,$+114		;173a
l173ch:
	ld b,020h		;173c
	add a,e			;173e
	jr nc,$+114		;173f
	ld (hl),b		;1741
l1742h:
	inc bc			;1742
	jr nz,$-125		;1743
l1745h:
	ret nz			;1745
	rlca			;1746
	jr nz,l16e8h		;1747
	jr nc,l176bh		;1749
	jr nz,l177dh		;174b
	jr nc,l176fh		;174d
	jr nz,l1711h		;174f
	ret nz			;1751
	jr nz,l1774h		;1752
l1754h:
	jr nc,l1776h		;1754
	jr nz,l1788h		;1756
	jr nz,l171ah		;1758
	jr nz,$-60		;175a
	jr nz,$-62		;175c
l175eh:
	jr nz,$+34		;175e
	jr nc,l1782h		;1760
	ld (03030h),a		;1762
	jr nz,$+34		;1765
	ret nz			;1767
	inc bc			;1768
	jr nz,l16ech		;1769
l176bh:
	jr nc,l1771h		;176b
	jr nz,$-125		;176d
l176fh:
	ret nz			;176f
	inc bc			;1770
l1771h:
	jr nz,$-113		;1771
	ret nz			;1773
l1774h:
	jr nz,l1796h		;1774
l1776h:
	ret nz			;1776
	jr nz,$+34		;1777
	ret nz			;1779
	jr nz,l173ch		;177a
	ret nz			;177c
l177dh:
	jr nz,$+50		;177d
l177fh:
	jr nc,$+5		;177f
	ret nz			;1781
l1782h:
	add a,(hl)		;1782
	jr nz,l1745h		;1783
l1785h:
	ret nz			;1785
	jr nz,l17bah		;1786
l1788h:
	jr nc,l178eh		;1788
	jr nz,l178eh		;178a
l178ch:
	ret nz			;178c
	add a,e			;178d
l178eh:
	jr nz,$+52		;178e
	jr nc,l1795h		;1790
	jr nz,$+5		;1792
	ret nz			;1794
l1795h:
	add a,c			;1795
l1796h:
	jr nz,$+5		;1796
	jr nc,l179ch		;1798
	jr nz,$+5		;179a
l179ch:
	ret nz			;179c
	ld (bc),a		;179d
	jr nz,$-125		;179e
l17a0h:
	jr nc,l17a6h		;17a0
	jr nz,$+5		;17a2
	ret nz			;17a4
	add a,d			;17a5
l17a6h:
	jr nc,$+34		;17a6
	inc bc			;17a8
	jr nc,l17adh		;17a9
l17abh:
	jr nz,$-124		;17ab
l17adh:
	ret nz			;17ad
	jr nz,l17b4h		;17ae
	jr nc,l17b6h		;17b0
	jr nz,$+5		;17b2
l17b4h:
	or b			;17b4
	sub e			;17b5
l17b6h:
	jr nz,l17e8h		;17b6
	jr nc,$+34		;17b8
l17bah:
	jp nz,020c2h		;17ba
	jr nc,l17efh		;17bd
	jr nz,l17e1h		;17bf
l17c1h:
	jr nc,l17e3h		;17c1
	jr nz,l1785h		;17c3
l17c5h:
	jr nz,l17f7h		;17c5
	jr nc,l17e9h		;17c7
	inc bc			;17c9
	jr nc,l17ceh		;17ca
	jr nz,l1754h		;17cc
l17ceh:
	jr nc,l17f0h		;17ce
	jr nz,l1802h		;17d0
	ret nz			;17d2
	ret nz			;17d3
	rlca			;17d4
	jr nz,$+5		;17d5
	ret nz			;17d7
	inc bc			;17d8
	jr nz,l175eh		;17d9
	ret nz			;17db
	jr nz,l17a0h		;17dc
	inc b			;17de
	jr nz,l17e3h		;17df
l17e1h:
	nop			;17e1
	ex af,af'		;17e2
l17e3h:
	ret nz			;17e3
	add a,c			;17e4
	ld (02007h),a		;17e5
l17e8h:
	add a,d			;17e8
l17e9h:
	jr nc,l17abh		;17e9
	inc bc			;17eb
l17ech:
	jp nz,02002h		;17ec
l17efh:
	add a,e			;17ef
l17f0h:
	jp p,03032h		;17f0
	dec b			;17f3
	jr nz,$+15		;17f4
	ret nz			;17f6
l17f7h:
	add a,c			;17f7
	jr nz,$+5		;17f8
	jr nc,l17ffh		;17fa
	jr nz,l177fh		;17fc
	ret nz			;17fe
l17ffh:
	inc b			;17ff
	jr nz,l1806h		;1800
l1802h:
	jr nc,l1808h		;1802
	jr nz,l1808h		;1804
l1806h:
	jr nc,l178ch		;1806
l1808h:
	jr nz,$+50		;1808
	jr nc,l182ch		;180a
	inc bc			;180c
	jr nc,l1796h		;180d
	jr nz,l17c1h		;180f
	jr nc,l1833h		;1811
	jr nz,l17c5h		;1813
	or b			;1815
	inc bc			;1816
	jr nz,l181dh		;1817
	ret nz			;1819
	inc bc			;181a
	jr nz,l1821h		;181b
l181dh:
	ret nz			;181d
	ld (bc),a		;181e
	jr nz,l17a6h		;181f
l1821h:
	ret nz			;1821
	jr nz,$+34		;1822
	jp nz,l05c2h		;1824
	ret nz			;1827
	add a,h			;1828
	jp nz,03020h		;1829
l182ch:
	jr nc,$+6		;182c
	ret nz			;182e
	add a,(hl)		;182f
	call z,020c2h		;1830
l1833h:
	jr nc,$+52		;1833
	jp nz,0c004h		;1835
	add a,h			;1838
	jp nz,02020h		;1839
	jr nc,l1841h		;183c
	ret nz			;183e
	adc a,b			;183f
	ld h,b			;1840
l1841h:
	add a,b			;1841
	sub b			;1842
	jr nc,$+50		;1843
	ret nz			;1845
	ret nz			;1846
	jp nz,02005h		;1847
	add a,e			;184a
	ret nz			;184b
	jr nz,l186eh		;184c
	dec b			;184e
	ret nz			;184f
	add a,e			;1850
	jr nc,l1873h		;1851
	jr nz,$+7		;1853
	ret nz			;1855
	ld (bc),a		;1856
	jr nc,$-125		;1857
	jr nz,l1862h		;1859
	jr nc,l1865h		;185b
	ret nz			;185d
	ld (bc),a		;185e
	jr nz,l17ech		;185f
	ret nz			;1861
l1862h:
	jr nz,l1884h		;1862
	ret nz			;1864
l1865h:
	ret nz			;1865
	jr nz,$-60		;1866
	jr nz,l189ah		;1868
	jp l05cch		;186a
	ret nz			;186d
l186eh:
	add a,d			;186e
	jr nz,l1833h		;186f
	rlca			;1871
	ret nz			;1872
l1873h:
	add a,h			;1873
	jr nz,$-62		;1874
	ret nz			;1876
	jr nz,l1880h		;1877
	ret nz			;1879
	add a,c			;187a
	jr nz,l188fh		;187b
	ret nz			;187d
	inc bc			;187e
	add a,(hl)		;187f
l1880h:
	add a,d			;1880
	sbc a,b			;1881
	sub (hl)		;1882
	inc b			;1883
l1884h:
	ld h,b			;1884
	ld (bc),a		;1885
	add a,(hl)		;1886
	add a,d			;1887
	cp c			;1888
	sbc a,b			;1889
	dec b			;188a
	ld h,b			;188b
	add a,e			;188c
	sub (hl)		;188d
	sbc a,b			;188e
l188fh:
	add a,(hl)		;188f
	dec b			;1890
	add a,b			;1891
	ld (bc),a		;1892
	add a,(hl)		;1893
	add a,c			;1894
	sbc a,b			;1895
	inc bc			;1896
	sub b			;1897
	add a,c			;1898
	ld h,b			;1899
l189ah:
	inc bc			;189a
	add a,b			;189b
	add a,h			;189c
	sbc a,b			;189d
	xor c			;189e
	sbc a,b			;189f
	sbc a,b			;18a0
	inc b			;18a1
	add a,(hl)		;18a2
	add a,c			;18a3
	sbc a,b			;18a4
	dec b			;18a5
	add a,(hl)		;18a6
	inc bc			;18a7
	sub (hl)		;18a8
	xor b			;18a9
	add a,(hl)		;18aa
	sbc a,b			;18ab
	sub (hl)		;18ac
	sbc a,c			;18ad
	xor c			;18ae
	sbc a,b			;18af
	cp c			;18b0
	cp c			;18b1
	sbc a,b			;18b2
	sbc a,b			;18b3
	cp c			;18b4
	sub (hl)		;18b5
	ld sp,hl		;18b6
	sub (hl)		;18b7
	cp c			;18b8
	sub (hl)		;18b9
	cp c			;18ba
	cp c			;18bb
	ret m			;18bc
	xor c			;18bd
	xor c			;18be
	cp c			;18bf
	ld sp,hl		;18c0
	cp c			;18c1
	add a,b			;18c2
	cp b			;18c3
	xor c			;18c4
	xor c			;18c5
	ret m			;18c6
	xor c			;18c7
	sbc a,b			;18c8
	xor c			;18c9
	ld h,b			;18ca
	ld h,b			;18cb
	sub b			;18cc
	sub b			;18cd
	xor b			;18ce
	xor b			;18cf
	sbc a,b			;18d0
	sub (hl)		;18d1
	dec b			;18d2
	ld h,b			;18d3
	adc a,h			;18d4
	sub b			;18d5
	add a,b			;18d6
	sbc a,b			;18d7
	sbc a,b			;18d8
	xor c			;18d9
	sbc a,b			;18da
	sbc a,b			;18db
	add a,(hl)		;18dc
	add a,(hl)		;18dd
	sub (hl)		;18de
	sbc a,b			;18df
	xor b			;18e0
	inc b			;18e1
	sbc a,b			;18e2
	ld (bc),a		;18e3
	sub (hl)		;18e4
	add a,c			;18e5
	sbc a,b			;18e6
	inc b			;18e7
	sub (hl)		;18e8
	ld (bc),a		;18e9
	xor c			;18ea
	add a,d			;18eb
	sub (hl)		;18ec
	sbc a,b			;18ed
	inc bc			;18ee
	sub (hl)		;18ef
	adc a,l			;18f0
	xor c			;18f1
	ld sp,hl		;18f2
	xor c			;18f3
	xor c			;18f4
	sbc a,b			;18f5
	ld sp,hl		;18f6
	xor b			;18f7
	sub (hl)		;18f8
	sub (hl)		;18f9
	sbc a,b			;18fa
	ld sp,hl		;18fb
	xor c			;18fc
	sub (hl)		;18fd
	inc bc			;18fe
	xor c			;18ff
	add a,c			;1900
	sbc a,b			;1901
	inc bc			;1902
	xor c			;1903
	add a,l			;1904
	ld sp,hl		;1905
	and (hl)		;1906
	and (hl)		;1907
	ret m			;1908
	cp b			;1909
	inc bc			;190a
	xor c			;190b
	sub c			;190c
	sub (hl)		;190d
	sbc a,b			;190e
	sbc a,b			;190f
	xor c			;1910
	ld sp,hl		;1911
	cp c			;1912
	xor c			;1913
	sbc a,b			;1914
	sbc a,b			;1915
	add a,b			;1916
	sub b			;1917
	sub b			;1918
	xor c			;1919
	xor c			;191a
	sbc a,b			;191b
	sbc a,b			;191c
	sub (hl)		;191d
	ex af,af'		;191e
	sub b			;191f
	inc bc			;1920
	sub (hl)		;1921
	ld (bc),a		;1922
	and (hl)		;1923
	dec b			;1924
	sub (hl)		;1925
	adc a,e			;1926
	sbc a,b			;1927
	xor c			;1928
	xor c			;1929
	ld sp,hl		;192a
	xor c			;192b
	sub (hl)		;192c
	sbc a,b			;192d
	sbc a,b			;192e
	ret m			;192f
	xor b			;1930
	xor c			;1931
	rlca			;1932
	sbc a,b			;1933
	adc a,a			;1934
	xor b			;1935
	sbc a,b			;1936
	sub (hl)		;1937
	add a,(hl)		;1938
	xor c			;1939
	sub (hl)		;193a
	sub (hl)		;193b
	xor c			;193c
	sub (hl)		;193d
	sbc a,b			;193e
	sbc a,b			;193f
	add a,(hl)		;1940
	sub (hl)		;1941
	or 0a8h			;1942
	inc bc			;1944
	add a,(hl)		;1945
	ld (bc),a		;1946
	sbc a,b			;1947
	ld (bc),a		;1948
	sub (hl)		;1949
	inc bc			;194a
	sbc a,b			;194b
	ld (bc),a		;194c
	sub (hl)		;194d
	sub d			;194e
	add a,(hl)		;194f
	sbc a,b			;1950
	xor c			;1951
	xor c			;1952
	sbc a,b			;1953
	sub (hl)		;1954
	add a,(hl)		;1955
	add a,(hl)		;1956
	sub (hl)		;1957
	sub (hl)		;1958
	xor b			;1959
	sub (hl)		;195a
	sbc a,c			;195b
	sub (hl)		;195c
	add a,(hl)		;195d
	sbc a,b			;195e
	sub (hl)		;195f
	sub b			;1960
	inc bc			;1961
	sub (hl)		;1962
	inc b			;1963
	add a,(hl)		;1964
	inc bc			;1965
	ld h,b			;1966
	add a,c			;1967
	add a,b			;1968
	inc bc			;1969
	ld h,b			;196a
	add a,c			;196b
	ld h,(hl)		;196c
	inc bc			;196d
	sub (hl)		;196e
	ld (bc),a		;196f
	sbc a,b			;1970
	adc a,l			;1971
	sub (hl)		;1972
	sbc a,b			;1973
	add a,(hl)		;1974
	sub (hl)		;1975
	sub (hl)		;1976
	sbc a,b			;1977
	sbc a,b			;1978
	sub (hl)		;1979
	sbc a,b			;197a
	sub (hl)		;197b
	add a,(hl)		;197c
	sbc a,b			;197d
	sbc a,b			;197e
	inc bc			;197f
	add a,(hl)		;1980
	ld (bc),a		;1981
	sub (hl)		;1982
	adc a,l			;1983
	sbc a,b			;1984
	add a,(hl)		;1985
	add a,(hl)		;1986
	sub (hl)		;1987
	xor c			;1988
	sbc a,b			;1989
	add a,(hl)		;198a
	add a,(hl)		;198b
	sub (hl)		;198c
	add a,(hl)		;198d
	add a,(hl)		;198e
	and (hl)		;198f
	sbc a,b			;1990
	inc b			;1991
	add a,(hl)		;1992
	inc bc			;1993
	sub (hl)		;1994
	sub d			;1995
	sbc a,b			;1996
	add a,(hl)		;1997
	add a,(hl)		;1998
	sub (hl)		;1999
	sub (hl)		;199a
	add a,(hl)		;199b
	add a,(hl)		;199c
	sbc a,b			;199d
	sub (hl)		;199e
	sbc a,b			;199f
	sbc a,b			;19a0
	add a,(hl)		;19a1
	sub (hl)		;19a2
	sub (hl)		;19a3
	sbc a,b			;19a4
	sub (hl)		;19a5
	add a,(hl)		;19a6
	sbc a,b			;19a7
	inc bc			;19a8
	add a,(hl)		;19a9
	add a,c			;19aa
	sbc a,b			;19ab
	rlca			;19ac
	add a,(hl)		;19ad
	add a,c			;19ae
	ld h,(hl)		;19af
	dec b			;19b0
	add a,(hl)		;19b1
	ld (bc),a		;19b2
	sub (hl)		;19b3
	ld (bc),a		;19b4
	add a,(hl)		;19b5
	inc bc			;19b6
	sbc a,b			;19b7
	inc bc			;19b8
	sub (hl)		;19b9
	rlca			;19ba
	ld h,b			;19bb
	add a,c			;19bc
	sub (hl)		;19bd
	dec b			;19be
	add a,(hl)		;19bf
	add a,e			;19c0
	sbc a,b			;19c1
	sbc a,c			;19c2
	sub (hl)		;19c3
	dec b			;19c4
	add a,(hl)		;19c5
	adc a,b			;19c6
	sbc a,b			;19c7
	sub (hl)		;19c8
	sbc a,b			;19c9
	add a,(hl)		;19ca
	add a,(hl)		;19cb
	sbc a,b			;19cc
	sbc a,b			;19cd
	sub (hl)		;19ce
	rlca			;19cf
	sbc a,b			;19d0
	ex af,af'		;19d1
	add a,(hl)		;19d2
	sbc a,h			;19d3
	adc a,b			;19d4
	cp b			;19d5
	cp c			;19d6
	sbc a,b			;19d7
	sub (hl)		;19d8
	add a,(hl)		;19d9
	add a,(hl)		;19da
	sub (hl)		;19db
	ret m			;19dc
	cp c			;19dd
	sbc a,b			;19de
	sbc a,c			;19df
	sbc a,c			;19e0
	sbc a,b			;19e1
	sbc a,b			;19e2
	xor c			;19e3
	sub (hl)		;19e4
	or (hl)			;19e5
	sub (hl)		;19e6
	sub (hl)		;19e7
	sbc a,b			;19e8
	sbc a,b			;19e9
	sbc a,c			;19ea
	sbc a,b			;19eb
	sbc a,b			;19ec
	add a,(hl)		;19ed
	cp b			;19ee
	cp b			;19ef
	inc bc			;19f0
	add a,(hl)		;19f1
	add a,h			;19f2
	sub (hl)		;19f3
	sbc a,b			;19f4
	sbc a,b			;19f5
	sub (hl)		;19f6
	inc bc			;19f7
	sbc a,b			;19f8
	adc a,c			;19f9
	sub (hl)		;19fa
	sbc a,b			;19fb
	sbc a,c			;19fc
	sub (hl)		;19fd
	sbc a,b			;19fe
	sbc a,b			;19ff
	sub (hl)		;1a00
	sbc a,c			;1a01
	xor c			;1a02
	inc bc			;1a03
	sbc a,b			;1a04
	inc bc			;1a05
	add a,(hl)		;1a06
	add a,c			;1a07
	sbc a,b			;1a08
	inc bc			;1a09
	add a,(hl)		;1a0a
	inc bc			;1a0b
	sub (hl)		;1a0c
	dec b			;1a0d
	ld h,b			;1a0e
	inc bc			;1a0f
	add a,b			;1a10
	nop			;1a11
	ld hl,(053bah)		;1a12
	cp d			;1a15
	ld h,c			;1a16
	cp d			;1a17
	add a,0bah		;1a18
	xor 0bah		;1a1a
	call nc,038bah		;1a1c
	cp e			;1a1f
	ld e,e			;1a20
	cp e			;1a21
	ld d,c			;1a22
	cp d			;1a23
	ld (hl),b		;1a24
	cp e			;1a25
	ld (hl),b		;1a26
	cp e			;1a27
	ld (hl),b		;1a28
	cp e			;1a29
	ld h,b			;1a2a
	ld b,b			;1a2b
	dec c			;1a2c
	sbc a,b			;1a2d
	ld h,b			;1a2e
	dec c			;1a2f
	xor h			;1a30
	jr nz,l1a40h		;1a31
	ret nc			;1a33
	jr nz,l1a43h		;1a34
	ex af,af'		;1a36
	ld h,c			;1a37
	dec l			;1a38
	jr l1a5ch		;1a39
	dec l			;1a3b
	inc l			;1a3c
	ld h,c			;1a3d
	dec l			;1a3e
	ld b,h			;1a3f
l1a40h:
	ld (hl),c		;1a40
	ld c,l			;1a41
	ld d,b			;1a42
l1a43h:
	ld h,c			;1a43
	ld c,l			;1a44
	ld h,b			;1a45
	ld (hl),c		;1a46
	ld c,l			;1a47
	ld (hl),b		;1a48
	ld b,c			;1a49
	ld l,l			;1a4a
	ld a,b			;1a4b
	ld (hl),c		;1a4c
	ld l,l			;1a4d
	add a,h			;1a4e
	ld hl,0ff6dh		;1a4f
	rst 38h			;1a52
	ret nz			;1a53
	sub b			;1a54
	add hl,bc		;1a55
	rrc b			;1a56
	add hl,hl		;1a58
	ld a,(bc)		;1a59
	add hl,bc		;1a5a
	add hl,hl		;1a5b
l1a5ch:
	ld d,h			;1a5c
	ld hl,0ff29h		;1a5d
	rst 38h			;1a60
	add a,h			;1a61
	add a,b			;1a62
	ld bc,l0097h+1		;1a63
	ld bc,0809ch		;1a66
	ld bc,l00a3h		;1a69
	ld bc,080abh		;1a6c
	ld bc,l10b5h		;1a6f
	ld hl,l00c2h		;1a72
	ld bc,080c3h		;1a75
	ld bc,l00cah		;1a78
	ld bc,080d2h		;1a7b
	ld bc,l00dah		;1a7e
	ld bc,080f0h		;1a81
	ld bc,l00f1h		;1a84
	ld bc,l00f8h		;1a87
	ld bc,080f9h		;1a8a
	ld bc,0290eh		;1a8d
	ld bc,0811ch		;1a90
	ld bc,l013eh		;1a93
	ld bc,0813eh		;1a96
	ld bc,08143h		;1a99
	ld bc,00149h		;1a9c
	ld bc,l0152h		;1a9f
	ld bc,08155h		;1aa2
	ld b,c			;1aa5
	ld e,e			;1aa6
	ld bc,06301h		;1aa7
	ld bc,06801h		;1aaa
	sub c			;1aad
	dec bc			;1aae
	ld (hl),b		;1aaf
	ld hl,0782bh		;1ab0
	sub c			;1ab3
l1ab4h:
	dec bc			;1ab4
	add a,h			;1ab5
	ld hl,0942bh		;1ab6
	ld hl,09c2bh		;1ab9
	sub c			;1abc
	ld c,e			;1abd
	xor h			;1abe
l1abfh:
	sub c			;1abf
	ld c,e			;1ac0
	cp h			;1ac1
	ld hl,0ff6bh		;1ac2
	rst 38h			;1ac5
l1ac6h:
	ld b,(hl)		;1ac6
	adc a,c			;1ac7
	ld a,(bc)		;1ac8
	add a,d			;1ac9
	adc a,c			;1aca
	ld a,(bc)		;1acb
l1acch:
	sub h			;1acc
	ld hl,0962ah		;1acd
	ld (hl),c		;1ad0
	ld a,(bc)		;1ad1
	rst 38h			;1ad2
	rst 38h			;1ad3
	sub (hl)		;1ad4
	ex af,af'		;1ad5
	rlca			;1ad6
	xor b			;1ad7
	ld a,b			;1ad8
	rlca			;1ad9
	ret nz			;1ada
	ld a,b			;1adb
	rlca			;1adc
	call po,sub_0778h	;1add
	or 008h			;1ae0
	rlca			;1ae2
	ex af,af'		;1ae3
	ld a,c			;1ae4
	rlca			;1ae5
	inc l			;1ae6
	ld a,c			;1ae7
	add a,a			;1ae8
	ld c,h			;1ae9
	add hl,bc		;1aea
	add a,a			;1aeb
	rst 38h			;1aec
	rst 38h			;1aed
	ret p			;1aee
	djnz $+50		;1aef
	inc b			;1af1
	adc a,c			;1af2
	djnz l1afch		;1af3
	ld de,01030h		;1af5
	adc a,c			;1af8
	djnz $+22		;1af9
	add hl,hl		;1afb
l1afch:
	djnz l1b41h		;1afc
	ld c,c			;1afe
	ld c,05bh		;1aff
	adc a,c			;1b01
	ld c,073h		;1b02
	add hl,hl		;1b04
l1b05h:
	ld c,086h		;1b05
	ld c,c			;1b07
	djnz $-118		;1b08
	adc a,c			;1b0a
	djnz $-98		;1b0b
	adc a,c			;1b0d
	djnz l1ab4h		;1b0e
	ld l,c			;1b10
	djnz l1abfh		;1b11
	ld d,c			;1b13
	jr nc,l1ac6h		;1b14
	ld d,c			;1b16
l1b17h:
	jr nc,l1acch		;1b17
	adc a,c			;1b19
	ld l,0bch		;1b1a
	ld de,0cf30h		;1b1c
	ld c,c			;1b1f
	ld c,0e2h		;1b20
l1b22h:
	ld sp,0e630h		;1b22
	ld sp,0e830h		;1b25
	adc a,c			;1b28
	djnz l1b17h		;1b29
	adc a,c			;1b2b
	djnz l1b22h		;1b2c
	ld de,0f730h		;1b2e
	adc a,c			;1b31
	ld l,0f8h		;1b32
	ld de,0ff30h		;1b34
	rst 38h			;1b37
	or b			;1b38
	nop			;1b39
	inc c			;1b3a
	cp h			;1b3b
	nop			;1b3c
	inc l			;1b3d
	ret z			;1b3e
	nop			;1b3f
	ld c,h			;1b40
l1b41h:
	ld l,h			;1b41
	ld hl,07024h		;1b42
	ld hl,07024h		;1b45
	sub c			;1b48
	inc b			;1b49
	ld (hl),h		;1b4a
	ld hl,07624h		;1b4b
	sub c			;1b4e
	inc b			;1b4f
	ld a,b			;1b50
	ld hl,07c24h		;1b51
	ld hl,07c24h		;1b54
	sub c			;1b57
	inc b			;1b58
	rst 38h			;1b59
	rst 38h			;1b5a
	cp h			;1b5b
	jr nz,l1b63h		;1b5c
	adc a,010h		;1b5e
	ld hl,(021b8h)		;1b60
l1b63h:
	dec b			;1b63
	rst 8			;1b64
	adc a,c			;1b65
	ld a,(bc)		;1b66
	ret p			;1b67
	ld hl,07205h		;1b68
	adc a,d			;1b6b
	ld a,(bc)		;1b6c
	call c,sub_0642h	;1b6d
	rst 38h			;1b70
	rst 38h			;1b71
	adc a,d			;1b72
	cp e			;1b73
	or a			;1b74
	cp e			;1b75
	or a			;1b76
	cp e			;1b77
	sub e			;1b78
	cp e			;1b79
	sbc a,h			;1b7a
	cp e			;1b7b
	or a			;1b7c
	cp e			;1b7d
	sbc a,a			;1b7e
	cp e			;1b7f
	and l			;1b80
	cp e			;1b81
	or a			;1b82
	cp e			;1b83
	or a			;1b84
	cp e			;1b85
	or h			;1b86
	cp e			;1b87
	xor (hl)		;1b88
	cp e			;1b89
	ld h,h			;1b8a
	nop			;1b8b
	rla			;1b8c
	inc e			;1b8d
	ld bc,04295h		;1b8e
	ld bc,09015h		;1b91
	nop			;1b94
	rla			;1b95
	di			;1b96
	nop			;1b97
	daa			;1b98
	or d			;1b99
	ld bc,l0037h		;1b9a
	ld bc,0b657h		;1b9d
	nop			;1ba0
	ld h,e			;1ba1
	ld d,d			;1ba2
	ld bc,l0054h		;1ba3
	ld bc,04c53h		;1ba6
	ld bc,0bc33h		;1ba9
	ld bc,0a895h		;1bac
	nop			;1baf
	dec d			;1bb0
	ex af,af'		;1bb1
	ld bc,06d57h		;1bb2
	nop			;1bb5
	inc h			;1bb6
	rst 38h			;1bb7
	rst 38h			;1bb8
	inc b			;1bb9
	add hl,bc		;1bba
	ld bc,l0006h		;1bbb
	rlca			;1bbe
	inc bc			;1bbf
	dec b			;1bc0
	ld (bc),a		;1bc1
	ex af,af'		;1bc2
	inc bc			;1bc3
	inc b			;1bc4
	ex af,af'		;1bc5
	ld bc,l0205h		;1bc6
	rlca			;1bc9
	add hl,bc		;1bca
	nop			;1bcb
	ld b,007h		;1bcc
	ld b,001h		;1bce
	add hl,bc		;1bd0
	inc bc			;1bd1
	ex af,af'		;1bd2
	dec b			;1bd3
	ld (bc),a		;1bd4
	inc b			;1bd5
	nop			;1bd6
	ld b,003h		;1bd7
	rlca			;1bd9
	dec b			;1bda
	ld bc,l0003h+1		;1bdb
	ex af,af'		;1bde
	add hl,bc		;1bdf
	ld (bc),a		;1be0
	ld b,003h		;1be1
	nop			;1be3
	rlca			;1be4
	inc b			;1be5
	ld bc,00508h		;1be6
	ld (bc),a		;1be9
	add hl,bc		;1bea
	dec b			;1beb
	nop			;1bec
	add hl,bc		;1bed
	ld b,002h		;1bee
	inc bc			;1bf0
	ex af,af'		;1bf1
	ld bc,l0407h		;1bf2
	ld b,007h		;1bf5
	ld (bc),a		;1bf7
	nop			;1bf8
	dec b			;1bf9
	add hl,bc		;1bfa
	ld bc,l0403h		;1bfb
	ex af,af'		;1bfe
	add hl,bc		;1bff
	ex af,af'		;1c00
	rlca			;1c01
	ld b,005h		;1c02
	inc b			;1c04
	inc bc			;1c05
l1c06h:
	ld (bc),a		;1c06
	ld bc,l0000h		;1c07
	jr nz,l1c3ah		;1c0a
	ld (hl),c		;1c0c
	ld hl,06121h		;1c0d
	ld (02000h),hl		;1c10
	ld (hl),b		;1c13
	daa			;1c14
	jr nz,l1c37h		;1c15
	jr z,$+73		;1c17
	nop			;1c19
	jr nz,$+34		;1c1a
	jr nz,$+35		;1c1c
	ld hl,l1c22h		;1c1e
	nop			;1c21
l1c22h:
	ld b,h			;1c22
	ld e,(hl)		;1c23
	ld b,h			;1c24
	ld b,h			;1c25
	ld c,h			;1c26
	ld d,(hl)		;1c27
	inc l			;1c28
	ld a,(bc)		;1c29
	dec h			;1c2a
	ld (hl),b		;1c2b
	daa			;1c2c
	jr nz,l1c4fh		;1c2d
	jr z,$+73		;1c2f
	nop			;1c31
	ld b,h			;1c32
	ld e,(hl)		;1c33
	ld b,h			;1c34
	ld b,h			;1c35
	ld b,h			;1c36
l1c37h:
	ld b,h			;1c37
	jr z,l1c3ah		;1c38
l1c3ah:
	ex af,af'		;1c3a
	ld a,010h		;1c3b
	ld a,(0300ch)		;1c3d
	ld e,000h		;1c40
	inc e			;1c42
	ld hl,(04949h)		;1c43
	ld c,c			;1c46
	ld d,c			;1c47
	ld (03c00h),hl		;1c48
	ld (bc),a		;1c4b
	inc b			;1c4c
	nop			;1c4d
	nop			;1c4e
l1c4fh:
	jr nz,l1c6fh		;1c4f
	nop			;1c51
	djnz l1cd2h		;1c52
	ex af,af'		;1c54
	inc a			;1c55
	ld b,(hl)		;1c56
	ld b,b			;1c57
	jr c,l1c5ah		;1c58
l1c5ah:
	ld (02471h),hl		;1c5a
	inc h			;1c5d
	ld c,h			;1c5e
	ld d,00ch		;1c5f
	nop			;1c61
	jr nz,l1c8ch		;1c62
	ld (hl),h		;1c64
	inc h			;1c65
	inc h			;1c66
	ld h,l			;1c67
	ld (0450ah),hl		;1c68
	ld e,(hl)		;1c6b
	ld b,h			;1c6c
	ld b,h			;1c6d
	ld c,h			;1c6e
l1c6fh:
	ld d,(hl)		;1c6f
	inc l			;1c70
	nop			;1c71
	ex af,af'		;1c72
	inc b			;1c73
	djnz l1c94h		;1c74
	ld hl,00e01h		;1c76
	nop			;1c79
	nop			;1c7a
	ld b,d			;1c7b
	ld b,c			;1c7c
	ld b,c			;1c7d
	ld b,c			;1c7e
	ld d,b			;1c7f
	jr nz,l1c82h		;1c80
l1c82h:
	jr nz,l1caah		;1c82
	jr l1ca6h		;1c84
	ld b,b			;1c86
	ld b,b			;1c87
	ld a,000h		;1c88
	ld a,a			;1c8a
	inc b			;1c8b
l1c8ch:
	ex af,af'		;1c8c
	djnz l1c9fh		;1c8d
	djnz l1c9fh		;1c8f
	nop			;1c91
	jr nz,l1cb8h		;1c92
l1c94h:
	ld a,d			;1c94
	add hl,hl		;1c95
	add hl,hl		;1c96
	jr z,l1ce9h		;1c97
	nop			;1c99
	inc a			;1c9a
	ex af,af'		;1c9b
	djnz l1cdah		;1c9c
	ld b,d			;1c9e
l1c9fh:
	ld a,(de)		;1c9f
	inc e			;1ca0
	nop			;1ca1
	djnz $+122		;1ca2
	jr nz,l1d1eh		;1ca4
l1ca6h:
	ld (l1c22h),hl		;1ca6
	nop			;1ca9
l1caah:
	djnz l1cbah		;1caa
	ex af,af'		;1cac
	ex af,af'		;1cad
	jr c,l1cfch		;1cae
	ld (02200h),a		;1cb0
	ld (02222h),hl		;1cb3
	ld (bc),a		;1cb6
	inc b			;1cb7
l1cb8h:
	jr l1cbah		;1cb8
l1cbah:
	nop			;1cba
	ld e,061h		;1cbb
	ld bc,l0201h		;1cbd
	inc c			;1cc0
	nop			;1cc1
	inc b			;1cc2
	ex af,af'		;1cc3
	djnz l1ce6h		;1cc4
	djnz $+10		;1cc6
	inc b			;1cc8
	nop			;1cc9
	ld a,004h		;1cca
	ld a,004h		;1ccc
	inc e			;1cce
	ld h,018h		;1ccf
	ld a,(bc)		;1cd1
l1cd2h:
	add hl,bc		;1cd2
	ld a,a			;1cd3
	ld b,l			;1cd4
	halt			;1cd5
	ld d,h			;1cd6
	ld e,d			;1cd7
	sub c			;1cd8
	nop			;1cd9
l1cdah:
	ld (de),a		;1cda
	inc d			;1cdb
	ld a,a			;1cdc
	ex af,af'		;1cdd
	djnz l1cf0h		;1cde
	inc c			;1ce0
	ld a,(bc)		;1ce1
	dec h			;1ce2
	inc h			;1ce3
	ld a,d			;1ce4
	add hl,hl		;1ce5
l1ce6h:
	add hl,hl		;1ce6
	jr z,l1d39h		;1ce7
l1ce9h:
	nop			;1ce9
	ld a,012h		;1cea
	ld e,033h		;1cec
	ld d,l			;1cee
	ld e,c			;1cef
l1cf0h:
	ld hl,(l0400h)		;1cf0
	ld a,a			;1cf3
	dec h			;1cf4
	dec h			;1cf5
	dec (hl)		;1cf6
	ld c,c			;1cf7
	ld (de),a		;1cf8
	nop			;1cf9
	inc h			;1cfa
	inc h			;1cfb
l1cfch:
	ld a,a			;1cfc
	inc h			;1cfd
	inc h			;1cfe
	jr nz,l1d1fh		;1cff
	nop			;1d01
	ld b,b			;1d02
	ld c,a			;1d03
	ld b,b			;1d04
	ld b,b			;1d05
	ld b,b			;1d06
	ld c,b			;1d07
	daa			;1d08
	nop			;1d09
	nop			;1d0a
	djnz l1d35h		;1d0b
	ld b,h			;1d0d
	ld (bc),a		;1d0e
	ld bc,l0a00h		;1d0f
	dec b			;1d12
	djnz l1d35h		;1d13
	ld b,b			;1d15
	jr nz,l1d28h		;1d16
	ex af,af'		;1d18
	nop			;1d19
	ex af,af'		;1d1a
	ld a,004h		;1d1b
	ex af,af'		;1d1d
l1d1eh:
	inc d			;1d1e
l1d1fh:
	inc h			;1d1f
	ld b,e			;1d20
	nop			;1d21
	ex af,af'		;1d22
	djnz $+34		;1d23
	jr c,l1d4bh		;1d25
	ld b,l			;1d27
l1d28h:
	ld b,d			;1d28
	nop			;1d29
	nop			;1d2a
	ex af,af'		;1d2b
	inc l			;1d2c
	ld (l0854h),a		;1d2d
	inc b			;1d30
	ld a,(bc)		;1d31
	ld a,l			;1d32
	inc b			;1d33
	ex af,af'		;1d34
l1d35h:
	djnz l1d47h		;1d35
	djnz l1d47h		;1d37
l1d39h:
	nop			;1d39
	nop			;1d3a
	nop			;1d3b
	inc e			;1d3c
	ld h,d			;1d3d
	ld (bc),a		;1d3e
	inc b			;1d3f
	ex af,af'		;1d40
	nop			;1d41
	ex af,af'		;1d42
	ld a,(hl)		;1d43
	djnz l1d82h		;1d44
	ld h,d			;1d46
l1d47h:
	ld (bc),a		;1d47
	inc e			;1d48
	ld a,(bc)		;1d49
	dec b			;1d4a
l1d4bh:
	ld (hl),b		;1d4b
	inc h			;1d4c
	ld b,a			;1d4d
	ld b,h			;1d4e
	ld b,h			;1d4f
	jr c,l1d52h		;1d50
l1d52h:
	jr nc,l1d66h		;1d52
	ld (de),a		;1d54
	ld a,053h		;1d55
	ld d,d			;1d57
	inc h			;1d58
	nop			;1d59
	djnz l1d96h		;1d5a
	ld de,0523ch		;1d5c
	ld d,d			;1d5f
	inc h			;1d60
	ld a,(bc)		;1d61
	dec h			;1d62
	inc h			;1d63
	ld a,a			;1d64
	inc h			;1d65
l1d66h:
	inc h			;1d66
	jr nz,l1d87h		;1d67
	nop			;1d69
	ld a,063h		;1d6a
	inc bc			;1d6c
	ld e,030h		;1d6d
	ld h,b			;1d6f
	ld a,a			;1d70
	ld a,(bc)		;1d71
	ld b,l			;1d72
	ld e,(hl)		;1d73
	ld b,h			;1d74
	ld b,h			;1d75
	ld b,h			;1d76
	ld b,h			;1d77
	jr z,l1d7ah		;1d78
l1d7ah:
	inc b			;1d7a
	ld a,a			;1d7b
	inc b			;1d7c
	inc b			;1d7d
	inc b			;1d7e
	ex af,af'		;1d7f
	jr nc,l1d82h		;1d80
l1d82h:
	ld a,a			;1d82
	ld bc,l0c0ah		;1d83
	ex af,af'		;1d86
l1d87h:
	djnz l1da9h		;1d87
	nop			;1d89
	ld a,000h		;1d8a
	ld a,a			;1d8c
	ex af,af'		;1d8d
	ex af,af'		;1d8e
	ex af,af'		;1d8f
	djnz l1d92h		;1d90
l1d92h:
	inc a			;1d92
	ld (bc),a		;1d93
	inc a			;1d94
	ld (bc),a		;1d95
l1d96h:
	nop			;1d96
	inc a			;1d97
	ld (bc),a		;1d98
	nop			;1d99
	ld a,a			;1d9a
	ld b,c			;1d9b
	ld b,c			;1d9c
	ld b,c			;1d9d
	ld b,c			;1d9e
	ld a,a			;1d9f
	ld b,c			;1da0
	ld a,(bc)		;1da1
	ld h,l			;1da2
	djnz $+99		;1da3
	ld (de),a		;1da5
	ld (bc),a		;1da6
	inc c			;1da7
	ld (hl),b		;1da8
l1da9h:
	ld a,(bc)		;1da9
	ld a,l			;1daa
	ld bc,l0202h		;1dab
	inc b			;1dae
	jr l1dd1h		;1daf
	nop			;1db1
	jr z,$+42		;1db2
	jr z,$+43		;1db4
	add hl,hl		;1db6
	ld c,d			;1db7
	ld c,h			;1db8
	nop			;1db9
	ld h,b			;1dba
	ld de,l1261h		;1dbb
	ld (bc),a		;1dbe
	inc c			;1dbf
	ld (hl),b		;1dc0
	nop			;1dc1
	nop			;1dc2
	nop			;1dc3
	rrca			;1dc4
	ld bc,l010fh		;1dc5
	rrca			;1dc8
	nop			;1dc9
	ex af,af'		;1dca
	ld a,a			;1dcb
	add hl,bc		;1dcc
	add hl,bc		;1dcd
	ld de,02211h		;1dce
l1dd1h:
	nop			;1dd1
	jr nz,l1df4h		;1dd2
	jr nz,l1df7h		;1dd4
	ld (0302ch),hl		;1dd6
	ld a,(bc)		;1dd9
	dec h			;1dda
	jr nz,$+58		;1ddb
	inc h			;1ddd
	ld (02020h),hl		;1dde
	nop			;1de1
	ld (0227fh),hl		;1de2
	ld (00402h),hl		;1de5
	jr l1df4h		;1de8
	ld a,l			;1dea
	ld (bc),a		;1deb
	inc b			;1dec
	ex af,af'		;1ded
	inc d			;1dee
	ld (l0a41h),hl		;1def
	ld b,l			;1df2
	ld b,(hl)		;1df3
l1df4h:
	ld e,b			;1df4
	ld h,b			;1df5
	ld b,b			;1df6
l1df7h:
	ld b,b			;1df7
	ccf			;1df8
	nop			;1df9
	nop			;1dfa
	nop			;1dfb
	dec d			;1dfc
	dec d			;1dfd
	ld bc,00c02h		;1dfe
	ld a,(bc)		;1e01
	dec b			;1e02
	jr nz,l1e27h		;1e03
	ld (04141h),hl		;1e05
	ld b,c			;1e08
	nop			;1e09
	inc bc			;1e0a
	inc c			;1e0b
	jr l1e76h		;1e0c
	ex af,af'		;1e0e
	ex af,af'		;1e0f
	ex af,af'		;1e10
	ld (bc),a		;1e11
	dec b			;1e12
	ld (02220h),hl		;1e13
	ld b,c			;1e16
	ld b,c			;1e17
	ld b,c			;1e18
	nop			;1e19
	nop			;1e1a
	inc h			;1e1b
	ld (04122h),hl		;1e1c
	ld b,c			;1e1f
	ld b,c			;1e20
	ld (bc),a		;1e21
	dec b			;1e22
	ld (de),a		;1e23
	jr z,l1e6ah		;1e24
	ld (bc),a		;1e26
l1e27h:
	ld bc,l0000h		;1e27
	ld a,a			;1e2a
	ld bc,l0202h		;1e2b
	inc b			;1e2e
	jr l1e51h		;1e2f
	nop			;1e31
	nop			;1e32
	nop			;1e33
	rra			;1e34
	ld bc,l0406h		;1e35
	ex af,af'		;1e38
	nop			;1e39
	ld bc,01201h		;1e3a
	ld a,(bc)		;1e3d
	inc b			;1e3e
	ld a,(bc)		;1e3f
	ld sp,02200h		;1e40
	ld (02222h),hl		;1e43
	ld (bc),a		;1e46
	inc b			;1e47
	jr l1e4ah		;1e48
l1e4ah:
	inc b			;1e4a
	ld a,a			;1e4b
	inc c			;1e4c
	inc c			;1e4d
	inc d			;1e4e
	inc h			;1e4f
	ld c,h			;1e50
l1e51h:
	nop			;1e51
	ld h,b			;1e52
	ld de,l0201h		;1e53
	ld (bc),a		;1e56
	inc c			;1e57
	ld (hl),b		;1e58
	nop			;1e59
	ex af,af'		;1e5a
	ld a,a			;1e5b
	ld (bc),a		;1e5c
	inc c			;1e5d
	ld a,(de)		;1e5e
	ld l,c			;1e5f
	ex af,af'		;1e60
	ld (bc),a		;1e61
	ld (hl),l		;1e62
	ld (bc),a		;1e63
	nop			;1e64
	ld (bc),a		;1e65
	inc b			;1e66
	jr $+34			;1e67
	nop			;1e69
l1e6ah:
	jr nz,l1e8ch		;1e6a
	jr c,l1e92h		;1e6c
	ld (02020h),hl		;1e6e
	ld a,(bc)		;1e71
	dec a			;1e72
	ld (l0442h),hl		;1e73
l1e76h:
	inc b			;1e76
	ex af,af'		;1e77
	jr nc,l1e7ah		;1e78
l1e7ah:
	ld a,000h		;1e7a
	ld a,a			;1e7c
	ld bc,00c02h		;1e7d
	jr nc,l1e8ch		;1e80
	dec a			;1e82
l1e83h:
	nop			;1e83
	ld a,a			;1e84
	ex af,af'		;1e85
	ex af,af'		;1e86
	ex af,af'		;1e87
	djnz l1e8ah		;1e88
l1e8ah:
	nop			;1e8a
	nop			;1e8b
l1e8ch:
	ld bc,l1c06h		;1e8c
	inc b			;1e8f
	inc b			;1e90
	nop			;1e91
l1e92h:
	ex af,af'		;1e92
	ld a,a			;1e93
	ld b,c			;1e94
	ld b,d			;1e95
	ld (bc),a		;1e96
	inc b			;1e97
	jr l1e9ah		;1e98
l1e9ah:
	ld a,(hl)		;1e9a
	ld (bc),a		;1e9b
	inc b			;1e9c
	ex af,af'		;1e9d
	inc d			;1e9e
	ld (l0a41h),hl		;1e9f
	add hl,bc		;1ea2
	ld a,(hl)		;1ea3
	ld b,c			;1ea4
	ld b,d			;1ea5
	ld (bc),a		;1ea6
	inc b			;1ea7
	jr l1eaah		;1ea8
l1eaah:
	nop			;1eaa
	nop			;1eab
	nop			;1eac
	rrca			;1ead
	ld (bc),a		;1eae
	ld (bc),a		;1eaf
	rrca			;1eb0
	nop			;1eb1
	ld bc,l0201h		;1eb2
	ld (bc),a		;1eb5
	inc b			;1eb6
	ex af,af'		;1eb7
	jr nc,l1ebah		;1eb8
l1ebah:
	ex af,af'		;1eba
	ex af,af'		;1ebb
	djnz l1ed2h		;1ebc
	ld (0712fh),hl		;1ebe
	nop			;1ec1
	rra			;1ec2
	ld de,l0221h		;1ec3
	ld (bc),a		;1ec6
	inc b			;1ec7
	jr l1ecah		;1ec8
l1ecah:
	rra			;1eca
	ld de,l0629h		;1ecb
	ld (bc),a		;1ece
	inc b			;1ecf
	jr l1ed2h		;1ed0
l1ed2h:
	ccf			;1ed2
	ld b,00ch		;1ed3
	ld e,003h		;1ed5
	ld h,e			;1ed7
	ld a,000h		;1ed8
	nop			;1eda
	nop			;1edb
	nop			;1edc
	nop			;1edd
	nop			;1ede
	ld b,b			;1edf
	jr nz,l1ee2h		;1ee0
l1ee2h:
	inc a			;1ee2
	ex af,af'		;1ee3
	djnz l1f22h		;1ee4
	ld b,d			;1ee6
	ld (bc),a		;1ee7
	inc e			;1ee8
	nop			;1ee9
	jr l1f24h		;1eea
	jr l1f06h		;1eec
	jr l1f08h		;1eee
	ld a,(hl)		;1ef0
	nop			;1ef1
	nop			;1ef2
	nop			;1ef3
	nop			;1ef4
	nop			;1ef5
	nop			;1ef6
	nop			;1ef7
	ld b,b			;1ef8
	nop			;1ef9
	nop			;1efa
	nop			;1efb
	nop			;1efc
	nop			;1efd
	ld h,b			;1efe
	jr nz,l1f41h		;1eff
l1f01h:
	jr nc,l1f13h		;1f01
	jr nz,l1f05h		;1f03
l1f05h:
	nop			;1f05
l1f06h:
	nop			;1f06
	nop			;1f07
l1f08h:
	nop			;1f08
	nop			;1f09
	jr l1f24h		;1f0a
	jr l1f26h		;1f0c
	jr l1f10h		;1f0e
l1f10h:
	jr l1f12h		;1f10
l1f12h:
	nop			;1f12
l1f13h:
	nop			;1f13
	nop			;1f14
	inc a			;1f15
	nop			;1f16
	nop			;1f17
	nop			;1f18
	ld (bc),a		;1f19
	nop			;1f1a
	add a,c			;1f1b
	ld (bc),a		;1f1c
	inc b			;1f1d
	nop			;1f1e
	add a,(hl)		;1f1f
	ld b,b			;1f20
	ret nz			;1f21
l1f22h:
	ret nc			;1f22
	inc e			;1f23
l1f24h:
	inc c			;1f24
	inc b			;1f25
l1f26h:
	inc bc			;1f26
	nop			;1f27
	add a,c			;1f28
	sub b			;1f29
	inc bc			;1f2a
	nop			;1f2b
	adc a,c			;1f2c
	ld h,h			;1f2d
	adc a,d			;1f2e
	ld a,(bc)		;1f2f
	dec b			;1f30
	inc bc			;1f31
	ld (bc),a		;1f32
	ex af,af'		;1f33
	ex af,af'		;1f34
	djnz l1f3dh		;1f35
	nop			;1f37
	add a,d			;1f38
	jr nz,l1f73h		;1f39
	inc bc			;1f3b
	ccf			;1f3c
l1f3dh:
	add a,d			;1f3d
	rra			;1f3e
	ld c,003h		;1f3f
l1f41h:
	ld bc,l0381h		;1f41
	dec b			;1f44
	nop			;1f45
	adc a,e			;1f46
	ld a,h			;1f47
	sbc a,d			;1f48
	ld (hl),b		;1f49
	ret p			;1f4a
	jp m,0fcfch		;1f4b
	call p,0c0e0h		;1f4e
	add a,b			;1f51
	ex af,af'		;1f52
	nop			;1f53
	ld (bc),a		;1f54
	add a,b			;1f55
l1f56h:
	add a,(hl)		;1f56
	ld b,b			;1f57
	nop			;1f58
	ld d,b			;1f59
	ld e,b			;1f5a
	adc a,a			;1f5b
	inc bc			;1f5c
	rlca			;1f5d
	nop			;1f5e
	adc a,c			;1f5f
l1f60h:
	ld h,h			;1f60
	adc a,d			;1f61
	ld a,(bc)		;1f62
	dec b			;1f63
	inc bc			;1f64
	ld (bc),a		;1f65
	jr l1f60h		;1f66
	ret po			;1f68
	ld b,000h		;1f69
	adc a,b			;1f6b
	jr nz,l1fa6h		;1f6c
	ccf			;1f6e
	inc a			;1f6f
	dec sp			;1f70
	jr $+14			;1f71
l1f73h:
	rlca			;1f73
	ex af,af'		;1f74
	nop			;1f75
	adc a,b			;1f76
	ld a,h			;1f77
	sbc a,d			;1f78
	ld (hl),b		;1f79
	jr nc,l1f56h		;1f7a
	ld a,h			;1f7c
	call m,sub_04e4h	;1f7d
	nop			;1f80
	nop			;1f81
	ld (bc),a		;1f82
	nop			;1f83
	sbc a,h			;1f84
	ld (bc),a		;1f85
	jr nz,l1fc0h		;1f86
	daa			;1f88
	jr nz,l1febh		;1f89
	ret p			;1f8b
	pop de			;1f8c
	ld (de),a		;1f8d
	ld a,(bc)		;1f8e
l1f8fh:
	inc b			;1f8f
	inc bc			;1f90
	nop			;1f91
	nop			;1f92
	sub b			;1f93
	nop			;1f94
	nop			;1f95
	ld a,h			;1f96
	add a,(hl)		;1f97
	ld a,(bc)		;1f98
	ld a,(bc)		;1f99
	rlca			;1f9a
	dec b			;1f9b
	ld (bc),a		;1f9c
	inc d			;1f9d
	jr c,$+114		;1f9e
	ret nz			;1fa0
	ld b,000h		;1fa1
	adc a,d			;1fa3
	jr nz,l1fdeh		;1fa4
l1fa6h:
	and a			;1fa6
	and b			;1fa7
	ld h,e			;1fa8
	inc d			;1fa9
	ld d,e			;1faa
	ld e,b			;1fab
	adc a,a			;1fac
	inc bc			;1fad
	ld b,000h		;1fae
	adc a,h			;1fb0
	ld a,h			;1fb1
	add a,(hl)		;1fb2
	ld a,(bc)		;1fb3
	ld a,(bc)		;1fb4
	rst 0			;1fb5
	dec h			;1fb6
	add a,d			;1fb7
	inc d			;1fb8
	ret m			;1fb9
	ret po			;1fba
	nop			;1fbb
	nop			;1fbc
	nop			;1fbd
	rst 38h			;1fbe
	rst 38h			;1fbf
l1fc0h:
	rst 38h			;1fc0
	rst 38h			;1fc1
	rst 38h			;1fc2
	rst 38h			;1fc3
	rst 38h			;1fc4
	rst 38h			;1fc5
	rst 38h			;1fc6
	rst 38h			;1fc7
	rst 38h			;1fc8
	rst 38h			;1fc9
	rst 38h			;1fca
	rst 38h			;1fcb
	rst 38h			;1fcc
	rst 38h			;1fcd
	rst 38h			;1fce
	rst 38h			;1fcf
	rst 38h			;1fd0
	rst 38h			;1fd1
	rst 38h			;1fd2
	rst 38h			;1fd3
	rst 38h			;1fd4
	rst 38h			;1fd5
	rst 38h			;1fd6
	rst 38h			;1fd7
	rst 38h			;1fd8
	rst 38h			;1fd9
	rst 38h			;1fda
	rst 38h			;1fdb
	rst 38h			;1fdc
	rst 38h			;1fdd
l1fdeh:
	rst 38h			;1fde
	rst 38h			;1fdf
	rst 38h			;1fe0
sub_1fe1h:
	rst 38h			;1fe1
	rst 38h			;1fe2
	rst 38h			;1fe3
	rst 38h			;1fe4
	rst 38h			;1fe5
	rst 38h			;1fe6
	rst 38h			;1fe7
	rst 38h			;1fe8
	rst 38h			;1fe9
	rst 38h			;1fea
l1febh:
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
	rst 38h			;1ff5
	rst 38h			;1ff6
	rst 38h			;1ff7
	rst 38h			;1ff8
	rst 38h			;1ff9
	rst 38h			;1ffa
	rst 38h			;1ffb
	rst 38h			;1ffc
	rst 38h			;1ffd
	rst 38h			;1ffe
	rst 38h			;1fff
