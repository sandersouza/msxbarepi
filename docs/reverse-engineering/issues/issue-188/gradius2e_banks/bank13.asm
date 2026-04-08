; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x0000 -o docs/reverse-engineering/issues/issue-188/gradius2e_banks/bank13.asm /tmp/gradius2e_bank13.bin

	org 00000h

l0000h:
	nop			;0000
l0001h:
	nop			;0001
l0002h:
	nop			;0002
l0003h:
	nop			;0003
	nop			;0004
	nop			;0005
	nop			;0006
	nop			;0007
l0008h:
	nop			;0008
	rst 38h			;0009
	nop			;000a
	nop			;000b
	nop			;000c
l000dh:
	nop			;000d
	nop			;000e
	nop			;000f
	nop			;0010
	nop			;0011
l0012h:
	nop			;0012
	nop			;0013
	nop			;0014
	rst 38h			;0015
	nop			;0016
	nop			;0017
l0018h:
	nop			;0018
	nop			;0019
	nop			;001a
	nop			;001b
	nop			;001c
	nop			;001d
	nop			;001e
	cp 000h			;001f
	nop			;0021
	nop			;0022
l0023h:
	nop			;0023
l0024h:
	cp 000h			;0024
l0026h:
	nop			;0026
	nop			;0027
l0028h:
	nop			;0028
	nop			;0029
	nop			;002a
l002bh:
	nop			;002b
	nop			;002c
l002dh:
	nop			;002d
	nop			;002e
l002fh:
	nop			;002f
	nop			;0030
	nop			;0031
	nop			;0032
	rst 38h			;0033
l0034h:
	nop			;0034
	nop			;0035
	nop			;0036
	nop			;0037
	cp 000h			;0038
	nop			;003a
	nop			;003b
	nop			;003c
	nop			;003d
	nop			;003e
	nop			;003f
	rst 38h			;0040
	nop			;0041
	nop			;0042
	nop			;0043
	nop			;0044
	nop			;0045
	nop			;0046
	inc l			;0047
	nop			;0048
	inc l			;0049
	ld sp,0ff2bh		;004a
	ld hl,(0322dh)		;004d
	nop			;0050
	nop			;0051
	nop			;0052
	nop			;0053
	ld sp,0fe00h		;0054
	nop			;0057
	jr nc,$+46		;0058
	ld sp,02d00h		;005a
	ld (l002fh),a		;005d
	inc h			;0060
	ld (02423h),hl		;0061
	jr nz,l0087h		;0064
	ld h,027h		;0066
	nop			;0068
	jr nz,$+39		;0069
	nop			;006b
	nop			;006c
	nop			;006d
	nop			;006e
	nop			;006f
	inc h			;0070
	ld (02423h),hl		;0071
	jr nz,l0097h		;0074
	jr nz,l009dh		;0076
	nop			;0078
	pop bc			;0079
	nop			;007a
	nop			;007b
	nop			;007c
	nop			;007d
	nop			;007e
	nop			;007f
	nop			;0080
	nop			;0081
	nop			;0082
	nop			;0083
	nop			;0084
	cp 000h			;0085
l0087h:
	nop			;0087
	nop			;0088
	nop			;0089
	inc l			;008a
	ld sp,l0000h		;008b
	ld hl,(l002dh)		;008e
	nop			;0091
	nop			;0092
	rst 38h			;0093
	cp 000h			;0094
	nop			;0096
l0097h:
	nop			;0097
	dec hl			;0098
	add hl,hl		;0099
	add hl,hl		;009a
	jr nc,$+52		;009b
l009dh:
	dec l			;009d
	ld (l002dh),a		;009e
	nop			;00a1
	nop			;00a2
	nop			;00a3
	nop			;00a4
	nop			;00a5
	nop			;00a6
	rst 38h			;00a7
	inc l			;00a8
	ld sp,l0000h		;00a9
	ld (l002fh),a		;00ac
	nop			;00af
	inc h			;00b0
	inc hl			;00b1
l00b2h:
	inc hl			;00b2
sub_00b3h:
	ld (02b2ch),hl		;00b3
	inc sp			;00b6
	ld l,000h		;00b7
sub_00b9h:
	ld hl,(0322dh)		;00b9
	nop			;00bc
	inc l			;00bd
	add hl,hl		;00be
	ld sp,02422h		;00bf
l00c2h:
	inc hl			;00c2
	inc h			;00c3
sub_00c4h:
	inc sp			;00c4
l00c5h:
	ld l,030h		;00c5
	ld sp,0322dh		;00c7
	cpl			;00ca
	nop			;00cb
	inc l			;00cc
	add hl,hl		;00cd
	ld sp,l0000h		;00ce
	nop			;00d1
	nop			;00d2
	nop			;00d3
	nop			;00d4
	nop			;00d5
	cp 000h			;00d6
	nop			;00d8
	nop			;00d9
	nop			;00da
	nop			;00db
	nop			;00dc
	push bc			;00dd
	dec h			;00de
	nop			;00df
	inc hl			;00e0
	ld (02824h),hl		;00e1
	inc sp			;00e4
	ld l,033h		;00e5
	ld l,02bh		;00e7
	add hl,hl		;00e9
	add hl,hl		;00ea
	jr nc,l0119h		;00eb
	dec hl			;00ed
	jr nc,$+51		;00ee
	nop			;00f0
	nop			;00f1
	nop			;00f2
	nop			;00f3
	nop			;00f4
	nop			;00f5
	nop			;00f6
	nop			;00f7
	jr c,$+86		;00f8
	dec d			;00fa
	rla			;00fb
	ld a,(de)		;00fc
	jr l017dh		;00fd
	ld d,057h		;00ff
l0101h:
	inc e			;0101
	ld e,01bh		;0102
	dec e			;0104
l0105h:
	ld e,01fh		;0105
l0107h:
	ld l,h			;0107
	ld e,d			;0108
	ld e,e			;0109
	add a,e			;010a
	add a,d			;010b
	jr l016bh		;010c
	add a,l			;010e
	ld a,(de)		;010f
	ld e,(hl)		;0110
	ld a,l			;0111
	add a,a			;0112
	add a,(hl)		;0113
	inc hl			;0114
	inc h			;0115
	jr z,l013ch		;0116
	nop			;0118
l0119h:
	nop			;0119
	nop			;011a
	nop			;011b
	nop			;011c
	nop			;011d
	nop			;011e
	nop			;011f
	jr z,l0142h		;0120
	inc h			;0122
	ld hl,05f1ch		;0123
	add a,a			;0126
	ld a,l			;0127
	ld e,015h		;0128
	ld d,017h		;012a
	jr l0147h		;012c
	ld a,(de)		;012e
	dec de			;012f
	ld b,c			;0130
	ld e,b			;0131
	add a,b			;0132
	ld a,a			;0133
l0134h:
	or e			;0134
	ld b,l			;0135
	add a,c			;0136
	ld l,h			;0137
	or h			;0138
	or e			;0139
	add a,e			;013a
	add a,d			;013b
l013ch:
	or a			;013c
	or c			;013d
	add a,l			;013e
	cp e			;013f
	nop			;0140
	nop			;0141
l0142h:
	nop			;0142
	nop			;0143
	nop			;0144
	nop			;0145
	nop			;0146
l0147h:
	nop			;0147
	jr c,l019eh		;0148
	ld h,d			;014a
	ld h,b			;014b
	ld d,l			;014c
	ld a,07eh		;014d
	ld a,l			;014f
	inc hl			;0150
	inc hl			;0151
	inc h			;0152
	inc hl			;0153
	ld b,c			;0154
	ld e,b			;0155
	add a,b			;0156
	ld a,a			;0157
	ld b,h			;0158
	ld b,l			;0159
	add a,c			;015a
	ld l,h			;015b
	ld e,d			;015c
	ld e,e			;015d
	add a,e			;015e
	add a,d			;015f
	ld e,h			;0160
	ld e,l			;0161
	add a,l			;0162
	add a,h			;0163
	ld e,(hl)		;0164
	ld e,a			;0165
	add a,a			;0166
	add a,(hl)		;0167
	ld d,d			;0168
	ld d,e			;0169
	ld a,e			;016a
l016bh:
	ld a,d			;016b
	nop			;016c
	nop			;016d
	nop			;016e
	nop			;016f
	inc hl			;0170
	inc h			;0171
	inc hl			;0172
	inc h			;0173
	ld h,020h		;0174
	dec h			;0176
	daa			;0177
	ld d,a			;0178
	ld e,025h		;0179
	ld l,h			;017b
	ld e,d			;017c
l017dh:
	ld e,e			;017d
	add a,e			;017e
	ld l,h			;017f
	inc hl			;0180
	inc h			;0181
	inc h			;0182
	inc h			;0183
	jr nz,l01a6h		;0184
	ld hl,l0026h		;0186
	nop			;0189
	jr nz,l01b2h		;018a
	nop			;018c
	nop			;018d
	nop			;018e
	jr nz,l01b5h		;018f
	inc hl			;0191
	jr z,$+37		;0192
	ld hl,l0024h+1		;0194
	nop			;0197
	dec h			;0198
	nop			;0199
	nop			;019a
	nop			;019b
	nop			;019c
	nop			;019d
l019eh:
	nop			;019e
	nop			;019f
	inc hl			;01a0
	inc h			;01a1
	inc h			;01a2
	inc hl			;01a3
	ld e,(hl)		;01a4
	ld e,a			;01a5
l01a6h:
	rla			;01a6
	ld h,e			;01a7
	ld d,d			;01a8
	ld d,e			;01a9
	ld d,07ah		;01aa
	nop			;01ac
	nop			;01ad
	nop			;01ae
	nop			;01af
	nop			;01b0
	nop			;01b1
l01b2h:
	pop bc			;01b2
	nop			;01b3
	adc a,b			;01b4
l01b5h:
	inc h			;01b5
	ld (l0024h),hl		;01b6
	nop			;01b9
	pop bc			;01ba
	jp 02823h		;01bb
	ld (02024h),hl		;01be
	ld hl,02726h		;01c1
	ld (02424h),hl		;01c4
	inc h			;01c7
	push bc			;01c8
	call nz,l0000h		;01c9
	ld (02824h),hl		;01cc
	inc hl			;01cf
	nop			;01d0
	nop			;01d1
	nop			;01d2
	push bc			;01d3
	inc h			;01d4
	jr z,$+38		;01d5
	ld (0c400h),hl		;01d7
	jp 02800h		;01da
	inc h			;01dd
	ld (02c89h),hl		;01de
	dec hl			;01e1
	ld l,033h		;01e2
	ld (02328h),hl		;01e4
	inc h			;01e7
	ld l,033h		;01e8
	jr nc,l021dh		;01ea
	jr z,l0212h		;01ec
	inc h			;01ee
	jr z,l01f1h		;01ef
l01f1h:
	inc l			;01f1
	dec hl			;01f2
	inc sp			;01f3
	jr z,l021ah		;01f4
	inc hl			;01f6
	ld (0332eh),hl		;01f7
	ld l,033h		;01fa
	inc h			;01fc
	inc h			;01fd
	inc hl			;01fe
	jr z,l022fh		;01ff
l0201h:
	jr nc,l0234h		;0201
l0203h:
	nop			;0203
	inc h			;0204
	inc hl			;0205
	inc h			;0206
	ld (02488h),hl		;0207
	ld (l0023h),hl		;020a
	push bc			;020d
	push bc			;020e
	nop			;020f
	jr z,l0234h		;0210
l0212h:
	inc hl			;0212
	ld (0c400h),hl		;0213
	nop			;0216
	push bc			;0217
l0218h:
	inc h			;0218
	inc hl			;0219
l021ah:
	inc h			;021a
	inc h			;021b
	nop			;021c
l021dh:
	nop			;021d
	nop			;021e
	jp 02422h		;021f
	inc hl			;0222
	jr z,$-58		;0223
	nop			;0225
	nop			;0226
	nop			;0227
	inc hl			;0228
	ld (02424h),hl		;0229
	nop			;022c
	push bc			;022d
	pop bc			;022e
l022fh:
	jp 02422h		;022f
	jr z,$-117		;0232
l0234h:
	push bc			;0234
	pop bc			;0235
	nop			;0236
	nop			;0237
	inc h			;0238
	ld (02823h),hl		;0239
	nop			;023c
	nop			;023d
	nop			;023e
	nop			;023f
	inc h			;0240
	ld (02223h),hl		;0241
	nop			;0244
	nop			;0245
	rst 38h			;0246
	jp l00c5h		;0247
	push bc			;024a
	nop			;024b
	ld (02424h),hl		;024c
	inc h			;024f
	nop			;0250
	cp 000h			;0251
	nop			;0253
	jr z,l027ah		;0254
	inc hl			;0256
	inc h			;0257
	ld d,a			;0258
	dec h			;0259
	add a,b			;025a
	ld a,a			;025b
	inc h			;025c
	inc h			;025d
	inc hl			;025e
	inc h			;025f
	ld e,(hl)		;0260
	ld e,a			;0261
	rla			;0262
	add a,(hl)		;0263
	ld d,d			;0264
	ld d,e			;0265
	ld d,07ah		;0266
	jr nz,l028ah		;0268
	ld hl,024c1h		;026a
	inc h			;026d
	ld (02028h),hl		;026e
	daa			;0271
	nop			;0272
	jp nz,02322h		;0273
	inc h			;0276
	ld (0b8b6h),hl		;0277
l027ah:
	cp h			;027a
	cp d			;027b
	ld (02423h),hl		;027c
	inc hl			;027f
	ld h,020h		;0280
	ld hl,02427h		;0282
	ld (02423h),hl		;0285
	ld e,(hl)		;0288
	ld e,a			;0289
l028ah:
	rla			;028a
	add a,(hl)		;028b
	ld d,d			;028c
	ld d,e			;028d
	ld d,079h		;028e
	sbc a,h			;0290
	sbc a,l			;0291
	sbc a,(hl)		;0292
	sbc a,a			;0293
	xor b			;0294
	xor c			;0295
	xor d			;0296
	xor e			;0297
	cp b			;0298
	xor b			;0299
	xor l			;029a
	xor (hl)		;029b
	nop			;029c
	or (hl)			;029d
	or a			;029e
	cp b			;029f
	sbc a,h			;02a0
	sbc a,l			;02a1
	sbc a,(hl)		;02a2
	sbc a,a			;02a3
	xor b			;02a4
	and c			;02a5
	and d			;02a6
	and e			;02a7
	xor b			;02a8
	xor c			;02a9
	and b			;02aa
	or a			;02ab
	and (hl)		;02ac
	and l			;02ad
	nop			;02ae
	nop			;02af
	sbc a,h			;02b0
	sbc a,l			;02b1
	sbc a,(hl)		;02b2
	sbc a,a			;02b3
	and (hl)		;02b4
	and h			;02b5
	xor h			;02b6
	xor l			;02b7
	and a			;02b8
	or (hl)			;02b9
	xor b			;02ba
	xor c			;02bb
	or (hl)			;02bc
	cp b			;02bd
	and h			;02be
	and l			;02bf
	sbc a,h			;02c0
	sbc a,l			;02c1
	sbc a,(hl)		;02c2
	sbc a,a			;02c3
	xor (hl)		;02c4
	xor b			;02c5
	and h			;02c6
	and l			;02c7
	xor d			;02c8
	xor l			;02c9
	xor (hl)		;02ca
	or a			;02cb
	xor b			;02cc
	xor c			;02cd
	xor d			;02ce
	nop			;02cf
	sbc a,h			;02d0
	sbc a,l			;02d1
	sbc a,(hl)		;02d2
	sbc a,a			;02d3
	and c			;02d4
	and d			;02d5
	and e			;02d6
	and a			;02d7
	cp b			;02d8
	and h			;02d9
	and l			;02da
	nop			;02db
	nop			;02dc
	nop			;02dd
	or a			;02de
	nop			;02df
	nop			;02e0
	and a			;02e1
	xor e			;02e2
	xor h			;02e3
	nop			;02e4
	or (hl)			;02e5
	cp b			;02e6
	xor c			;02e7
	nop			;02e8
	and (hl)		;02e9
	and c			;02ea
	and h			;02eb
	nop			;02ec
	nop			;02ed
	cp b			;02ee
	or (hl)			;02ef
	xor l			;02f0
	xor (hl)		;02f1
	xor b			;02f2
	or a			;02f3
	xor d			;02f4
	xor l			;02f5
	xor (hl)		;02f6
	nop			;02f7
	and e			;02f8
	and h			;02f9
	and l			;02fa
	nop			;02fb
	or a			;02fc
	and a			;02fd
	nop			;02fe
	nop			;02ff
l0300h:
	nop			;0300
l0301h:
	nop			;0301
l0302h:
	nop			;0302
	nop			;0303
l0304h:
	nop			;0304
l0305h:
	nop			;0305
	nop			;0306
	nop			;0307
l0308h:
	nop			;0308
	nop			;0309
	or e			;030a
	or h			;030b
	nop			;030c
	or l			;030d
	adc a,b			;030e
	adc a,c			;030f
	nop			;0310
	nop			;0311
	nop			;0312
	nop			;0313
	nop			;0314
	nop			;0315
	nop			;0316
	or e			;0317
	nop			;0318
	or e			;0319
	or l			;031a
	adc a,d			;031b
	sub e			;031c
	sub h			;031d
	sub l			;031e
	sub (hl)		;031f
	sub h			;0320
	sub l			;0321
	sub (hl)		;0322
	or h			;0323
	or l			;0324
	sbc a,d			;0325
	sub e			;0326
	sbc a,d			;0327
	or e			;0328
	sbc a,c			;0329
	sbc a,d			;032a
	sub (hl)		;032b
	sub e			;032c
	sub h			;032d
	sub a			;032e
	or h			;032f
	sub e			;0330
	add a,l			;0331
	add a,(hl)		;0332
	or l			;0333
	or l			;0334
	sub l			;0335
	sbc a,c			;0336
	sbc a,d			;0337
	or (hl)			;0338
	xor l			;0339
	xor (hl)		;033a
	sub (hl)		;033b
	sub h			;033c
	sbc a,d			;033d
	adc a,d			;033e
	or h			;033f
	nop			;0340
	nop			;0341
	nop			;0342
	nop			;0343
	nop			;0344
	nop			;0345
	nop			;0346
	or h			;0347
	or h			;0348
	or l			;0349
	adc a,b			;034a
	adc a,c			;034b
	sub e			;034c
	sub a			;034d
	sbc a,d			;034e
	add a,a			;034f
	nop			;0350
	nop			;0351
	nop			;0352
	nop			;0353
	nop			;0354
	nop			;0355
	nop			;0356
	nop			;0357
	nop			;0358
	or l			;0359
	nop			;035a
	or h			;035b
	sub l			;035c
	sub (hl)		;035d
	sbc a,c			;035e
	adc a,c			;035f
	nop			;0360
	or e			;0361
	adc a,c			;0362
	or h			;0363
	or e			;0364
	sub h			;0365
	sub l			;0366
	sub (hl)		;0367
	adc a,d			;0368
	add a,l			;0369
	adc a,b			;036a
	sub h			;036b
	or e			;036c
	sbc a,a			;036d
	add a,e			;036e
	adc a,c			;036f
	cp b			;0370
	sbc a,l			;0371
	sbc a,(hl)		;0372
	xor b			;0373
	or (hl)			;0374
	xor c			;0375
	xor d			;0376
	and d			;0377
	and a			;0378
	sub a			;0379
	sbc a,c			;037a
	sbc a,d			;037b
	or (hl)			;037c
	and e			;037d
	and a			;037e
	or a			;037f
	nop			;0380
	nop			;0381
	nop			;0382
	nop			;0383
	nop			;0384
	nop			;0385
	nop			;0386
	or h			;0387
	nop			;0388
	or l			;0389
	adc a,b			;038a
	adc a,c			;038b
	ld a,a			;038c
	add a,b			;038d
	add a,c			;038e
	add a,d			;038f
	nop			;0390
	nop			;0391
	nop			;0392
	nop			;0393
	nop			;0394
	nop			;0395
	or e			;0396
	or h			;0397
	or e			;0398
	sub h			;0399
	sub l			;039a
	sub (hl)		;039b
	add a,e			;039c
	add a,b			;039d
	add a,c			;039e
	add a,d			;039f
	nop			;03a0
	nop			;03a1
	or e			;03a2
	adc a,c			;03a3
	nop			;03a4
	sub h			;03a5
	sub l			;03a6
	sub (hl)		;03a7
	sub e			;03a8
	sub a			;03a9
	sbc a,b			;03aa
	sbc a,c			;03ab
	add a,e			;03ac
	add a,b			;03ad
	add a,c			;03ae
	add a,d			;03af
	nop			;03b0
	nop			;03b1
	nop			;03b2
	nop			;03b3
	adc a,d			;03b4
	nop			;03b5
	nop			;03b6
	or h			;03b7
	sbc a,d			;03b8
	or l			;03b9
	adc a,c			;03ba
	sub e			;03bb
	add a,e			;03bc
	add a,b			;03bd
	add a,c			;03be
	add a,d			;03bf
	nop			;03c0
	nop			;03c1
	or h			;03c2
	nop			;03c3
	or l			;03c4
	adc a,b			;03c5
	adc a,c			;03c6
	sub h			;03c7
	add a,l			;03c8
	add a,(hl)		;03c9
	add a,a			;03ca
	sub a			;03cb
	add a,e			;03cc
	add a,b			;03cd
	add a,c			;03ce
	add a,d			;03cf
	or l			;03d0
	adc a,c			;03d1
	or h			;03d2
	nop			;03d3
	sub l			;03d4
	sub (hl)		;03d5
	sub e			;03d6
	nop			;03d7
	sbc a,b			;03d8
	sbc a,c			;03d9
	sbc a,d			;03da
	or h			;03db
	add a,e			;03dc
	add a,b			;03dd
	add a,c			;03de
	add a,d			;03df
	nop			;03e0
	nop			;03e1
	nop			;03e2
	nop			;03e3
	nop			;03e4
	or h			;03e5
	nop			;03e6
	nop			;03e7
	sub e			;03e8
	adc a,d			;03e9
	adc a,c			;03ea
	or e			;03eb
	add a,e			;03ec
	add a,b			;03ed
	add a,c			;03ee
	add a,d			;03ef
	nop			;03f0
	nop			;03f1
	nop			;03f2
	nop			;03f3
	nop			;03f4
	or e			;03f5
	or h			;03f6
	nop			;03f7
	or l			;03f8
	adc a,b			;03f9
	adc a,c			;03fa
	nop			;03fb
	add a,e			;03fc
	add a,b			;03fd
	add a,c			;03fe
	add a,h			;03ff
	nop			;0400
	nop			;0401
	nop			;0402
	nop			;0403
	nop			;0404
	nop			;0405
	nop			;0406
	or l			;0407
	nop			;0408
	or e			;0409
	or l			;040a
	adc a,b			;040b
	or l			;040c
	or h			;040d
	adc a,d			;040e
	sub l			;040f
	nop			;0410
	nop			;0411
l0412h:
	nop			;0412
	nop			;0413
	or h			;0414
	nop			;0415
	nop			;0416
	nop			;0417
	adc a,c			;0418
	nop			;0419
	or e			;041a
	or h			;041b
	sub (hl)		;041c
	or l			;041d
	adc a,b			;041e
	adc a,c			;041f
	and (hl)		;0420
	xor b			;0421
	xor e			;0422
	and a			;0423
	or (hl)			;0424
	xor l			;0425
	xor (hl)		;0426
	cp b			;0427
	cp b			;0428
	xor e			;0429
	xor h			;042a
	xor d			;042b
	and a			;042c
	xor b			;042d
	xor c			;042e
	xor d			;042f
	xor l			;0430
	xor (hl)		;0431
	and e			;0432
	and a			;0433
	or (hl)			;0434
	xor h			;0435
	xor c			;0436
	or a			;0437
	cp b			;0438
	xor l			;0439
	and (hl)		;043a
	xor d			;043b
	or (hl)			;043c
	and (hl)		;043d
	sbc a,d			;043e
	or a			;043f
	add a,l			;0440
	add a,a			;0441
	sub h			;0442
	sbc a,c			;0443
	or l			;0444
	add a,a			;0445
	adc a,c			;0446
	adc a,d			;0447
	add a,l			;0448
	add a,(hl)		;0449
	add a,a			;044a
	sub h			;044b
	add a,e			;044c
	add a,b			;044d
	add a,c			;044e
	add a,d			;044f
	sbc a,d			;0450
	add a,l			;0451
	add a,a			;0452
	or l			;0453
	sbc a,c			;0454
	sub a			;0455
	sbc a,b			;0456
	sbc a,d			;0457
	sub l			;0458
	sub (hl)		;0459
	adc a,d			;045a
	sub a			;045b
	add a,e			;045c
	add a,b			;045d
	add a,c			;045e
	add a,d			;045f
	nop			;0460
	sub e			;0461
	or h			;0462
	nop			;0463
	or e			;0464
	sbc a,d			;0465
	sub h			;0466
	or l			;0467
	sub e			;0468
	sub h			;0469
	sub l			;046a
	sub (hl)		;046b
	add a,e			;046c
	add a,b			;046d
	add a,c			;046e
	add a,d			;046f
	nop			;0470
	nop			;0471
	nop			;0472
	or h			;0473
	nop			;0474
	or e			;0475
	adc a,b			;0476
	adc a,c			;0477
	adc a,d			;0478
	add a,l			;0479
	add a,(hl)		;047a
	add a,a			;047b
	add a,e			;047c
	add a,b			;047d
	add a,c			;047e
	add a,d			;047f
	sbc a,h			;0480
	sbc a,l			;0481
	sbc a,(hl)		;0482
	sbc a,a			;0483
	or (hl)			;0484
	and (hl)		;0485
	and c			;0486
	and d			;0487
	nop			;0488
	or a			;0489
	or c			;048a
	and h			;048b
	nop			;048c
	xor a			;048d
	or b			;048e
	or d			;048f
	sbc a,h			;0490
	sbc a,l			;0491
	sbc a,(hl)		;0492
	sbc a,a			;0493
	and e			;0494
	and a			;0495
	xor b			;0496
	xor d			;0497
	or b			;0498
	xor b			;0499
	and a			;049a
	or a			;049b
	xor a			;049c
	or d			;049d
	xor d			;049e
	nop			;049f
	cp b			;04a0
	sbc a,l			;04a1
	sbc a,(hl)		;04a2
	xor b			;04a3
	or (hl)			;04a4
	cp b			;04a5
	or b			;04a6
	xor a			;04a7
	xor a			;04a8
	or c			;04a9
	or d			;04aa
	or d			;04ab
	or c			;04ac
	xor a			;04ad
	or c			;04ae
	or d			;04af
	nop			;04b0
	or b			;04b1
	or d			;04b2
	xor a			;04b3
	nop			;04b4
	or c			;04b5
	xor a			;04b6
	or d			;04b7
	nop			;04b8
	nop			;04b9
	or d			;04ba
	or b			;04bb
	nop			;04bc
	nop			;04bd
	nop			;04be
	or c			;04bf
	or b			;04c0
	nop			;04c1
	nop			;04c2
	nop			;04c3
	xor a			;04c4
	or c			;04c5
	nop			;04c6
	nop			;04c7
	or d			;04c8
	or b			;04c9
	or d			;04ca
	nop			;04cb
	or b			;04cc
	or c			;04cd
	xor a			;04ce
	nop			;04cf
	or d			;04d0
	or c			;04d1
	or b			;04d2
	or d			;04d3
	or b			;04d4
	xor a			;04d5
	or d			;04d6
	xor a			;04d7
	xor a			;04d8
	or d			;04d9
	or c			;04da
	or d			;04db
	or c			;04dc
	xor a			;04dd
	or d			;04de
	or c			;04df
	xor a			;04e0
	or b			;04e1
	xor a			;04e2
	nop			;04e3
	or b			;04e4
	xor a			;04e5
	or c			;04e6
	nop			;04e7
	xor a			;04e8
	or d			;04e9
	nop			;04ea
	nop			;04eb
	or c			;04ec
	nop			;04ed
	nop			;04ee
	nop			;04ef
	nop			;04f0
	nop			;04f1
	nop			;04f2
	or d			;04f3
	nop			;04f4
	nop			;04f5
	or b			;04f6
	xor a			;04f7
	nop			;04f8
	sub e			;04f9
	sub h			;04fa
	sbc a,c			;04fb
	sub l			;04fc
	sub (hl)		;04fd
	sub a			;04fe
	sbc a,b			;04ff
	or b			;0500
	xor a			;0501
	or d			;0502
	or b			;0503
	or d			;0504
	or c			;0505
	or b			;0506
	xor a			;0507
	or c			;0508
	sub a			;0509
	adc a,d			;050a
	or l			;050b
	sub a			;050c
	sub h			;050d
	sub a			;050e
	adc a,d			;050f
	nop			;0510
	nop			;0511
	xor a			;0512
	or b			;0513
	nop			;0514
	or c			;0515
	xor a			;0516
	or d			;0517
	nop			;0518
	xor a			;0519
	or b			;051a
	or c			;051b
	or b			;051c
	or d			;051d
	or c			;051e
	xor a			;051f
	or d			;0520
	nop			;0521
	nop			;0522
	nop			;0523
	xor a			;0524
	or b			;0525
	nop			;0526
	nop			;0527
	or c			;0528
	or l			;0529
	or d			;052a
	or h			;052b
	sub l			;052c
	sub (hl)		;052d
	sbc a,c			;052e
	adc a,c			;052f
	nop			;0530
	nop			;0531
	nop			;0532
	nop			;0533
	nop			;0534
	nop			;0535
	nop			;0536
	or d			;0537
	nop			;0538
	nop			;0539
	or c			;053a
	xor a			;053b
	nop			;053c
	nop			;053d
	xor a			;053e
	or b			;053f
	xor a			;0540
	or d			;0541
	or c			;0542
	or d			;0543
	or d			;0544
	or b			;0545
	or d			;0546
	sub e			;0547
	or l			;0548
	adc a,b			;0549
	adc a,c			;054a
	adc a,d			;054b
	add a,e			;054c
	add a,b			;054d
	add a,c			;054e
	add a,d			;054f
	nop			;0550
	nop			;0551
	nop			;0552
	nop			;0553
	sub a			;0554
	nop			;0555
	nop			;0556
	nop			;0557
	sub h			;0558
	sub l			;0559
	sub (hl)		;055a
	nop			;055b
	add a,e			;055c
	add a,b			;055d
	add a,c			;055e
	add a,d			;055f
	nop			;0560
	nop			;0561
	nop			;0562
	xor a			;0563
	nop			;0564
	or e			;0565
	or c			;0566
	or d			;0567
	sub e			;0568
	sub h			;0569
	sub a			;056a
	sbc a,d			;056b
	add a,e			;056c
	add a,b			;056d
	add a,c			;056e
	add a,d			;056f
	sbc a,e			;0570
	sbc a,h			;0571
	sbc a,(hl)		;0572
	sbc a,a			;0573
	nop			;0574
	or (hl)			;0575
	nop			;0576
	or a			;0577
	sbc a,h			;0578
	sbc a,l			;0579
	sbc a,(hl)		;057a
	sbc a,a			;057b
	nop			;057c
	cp b			;057d
	or a			;057e
	or (hl)			;057f
	sbc a,h			;0580
	sbc a,l			;0581
	sbc a,(hl)		;0582
	sbc a,a			;0583
	and a			;0584
	and e			;0585
	or a			;0586
	and a			;0587
	sbc a,h			;0588
	sbc a,l			;0589
	sbc a,(hl)		;058a
	sbc a,a			;058b
	xor c			;058c
	xor d			;058d
	or (hl)			;058e
	or a			;058f
	sbc a,h			;0590
	sbc a,l			;0591
	sbc a,(hl)		;0592
	and b			;0593
	or (hl)			;0594
	or a			;0595
	cp b			;0596
	nop			;0597
	nop			;0598
	or h			;0599
	or e			;059a
	nop			;059b
	ld a,c			;059c
	ld a,d			;059d
	ld a,e			;059e
	ld a,h			;059f
	or l			;05a0
	sub l			;05a1
	sub (hl)		;05a2
	or h			;05a3
	ld a,l			;05a4
	ld a,d			;05a5
	ld a,e			;05a6
	ld a,h			;05a7
	adc a,d			;05a8
	or l			;05a9
	adc a,b			;05aa
	adc a,c			;05ab
	ld a,l			;05ac
	ld a,d			;05ad
	ld a,e			;05ae
	ld a,h			;05af
	or e			;05b0
	nop			;05b1
	or e			;05b2
	adc a,c			;05b3
	ld a,l			;05b4
	ld a,d			;05b5
	ld a,e			;05b6
	ld a,h			;05b7
	or e			;05b8
	add a,l			;05b9
	add a,(hl)		;05ba
	add a,a			;05bb
	ld a,l			;05bc
	ld a,d			;05bd
	ld a,e			;05be
	ld a,h			;05bf
	sub a			;05c0
	sbc a,b			;05c1
	sbc a,c			;05c2
	sbc a,d			;05c3
	ld a,l			;05c4
	ld a,d			;05c5
	ld a,e			;05c6
	ld a,h			;05c7
	sub h			;05c8
	sub l			;05c9
	sub (hl)		;05ca
	add a,(hl)		;05cb
	ld a,l			;05cc
	ld a,d			;05cd
	ld a,e			;05ce
	ld a,h			;05cf
	and e			;05d0
	add a,l			;05d1
	add a,(hl)		;05d2
	add a,a			;05d3
	ld a,l			;05d4
	ld a,d			;05d5
	ld a,e			;05d6
	ld a,h			;05d7
	or (hl)			;05d8
	cp b			;05d9
	xor b			;05da
	or a			;05db
	nop			;05dc
	nop			;05dd
	or a			;05de
	nop			;05df
	nop			;05e0
	nop			;05e1
	nop			;05e2
	nop			;05e3
	nop			;05e4
	nop			;05e5
	nop			;05e6
	nop			;05e7
	ld c,d			;05e8
	ld c,h			;05e9
	nop			;05ea
	nop			;05eb
	ld c,h			;05ec
	ld c,l			;05ed
	ld c,(hl)		;05ee
	ld c,e			;05ef
	nop			;05f0
	nop			;05f1
	nop			;05f2
	nop			;05f3
	nop			;05f4
	nop			;05f5
	nop			;05f6
	nop			;05f7
	nop			;05f8
	nop			;05f9
	nop			;05fa
	nop			;05fb
	ld c,h			;05fc
	nop			;05fd
	nop			;05fe
	nop			;05ff
	nop			;0600
	nop			;0601
	nop			;0602
	nop			;0603
	nop			;0604
	nop			;0605
	nop			;0606
	nop			;0607
	nop			;0608
	ld c,e			;0609
	nop			;060a
	nop			;060b
	ld c,d			;060c
	ld c,c			;060d
	ld c,(hl)		;060e
	ld c,d			;060f
	nop			;0610
	nop			;0611
	nop			;0612
	nop			;0613
	nop			;0614
	nop			;0615
	nop			;0616
	nop			;0617
	nop			;0618
	nop			;0619
	nop			;061a
	nop			;061b
	nop			;061c
	nop			;061d
	nop			;061e
	nop			;061f
	nop			;0620
	nop			;0621
	nop			;0622
	nop			;0623
	nop			;0624
	nop			;0625
	nop			;0626
	nop			;0627
	nop			;0628
	nop			;0629
	nop			;062a
	nop			;062b
	ld c,d			;062c
	ld c,b			;062d
	nop			;062e
	ld c,e			;062f
	nop			;0630
	nop			;0631
	nop			;0632
	nop			;0633
	nop			;0634
	nop			;0635
	nop			;0636
	nop			;0637
	ld c,h			;0638
	ld c,d			;0639
l063ah:
	nop			;063a
	nop			;063b
	ld c,l			;063c
	ld c,a			;063d
	ld c,c			;063e
	ld c,(hl)		;063f
	nop			;0640
	nop			;0641
	nop			;0642
	nop			;0643
	nop			;0644
	nop			;0645
	nop			;0646
	nop			;0647
	nop			;0648
	nop			;0649
	nop			;064a
	nop			;064b
	inc hl			;064c
	inc h			;064d
	dec h			;064e
	ld c,e			;064f
	nop			;0650
	nop			;0651
	nop			;0652
	nop			;0653
	nop			;0654
	nop			;0655
	nop			;0656
	nop			;0657
	nop			;0658
	nop			;0659
	ld c,d			;065a
	ld c,h			;065b
	nop			;065c
	ld c,d			;065d
	ld c,c			;065e
	ld c,l			;065f
	ld b,h			;0660
	ld b,b			;0661
	ld b,d			;0662
	ld b,e			;0663
	ld d,c			;0664
	ld d,b			;0665
	ld d,b			;0666
	ld c,a			;0667
	nop			;0668
	ld c,l			;0669
	ld c,(hl)		;066a
	ld c,c			;066b
	nop			;066c
	ld c,h			;066d
	nop			;066e
	nop			;066f
	ld b,c			;0670
	ld b,h			;0671
	ld b,b			;0672
	ld b,d			;0673
	ld c,l			;0674
	ld d,d			;0675
	ld c,(hl)		;0676
	ld c,a			;0677
	ld c,h			;0678
	nop			;0679
	nop			;067a
	nop			;067b
	nop			;067c
	nop			;067d
	nop			;067e
	nop			;067f
	ld b,b			;0680
	ld b,b			;0681
	ld b,e			;0682
	ld b,b			;0683
	ld d,b			;0684
	ld d,c			;0685
	ld c,a			;0686
	ld c,a			;0687
	nop			;0688
	nop			;0689
	nop			;068a
	nop			;068b
	nop			;068c
	nop			;068d
	nop			;068e
	nop			;068f
	ld b,a			;0690
	ld b,e			;0691
	ld b,b			;0692
	ld b,e			;0693
	jr nc,l06c0h		;0694
	ld a,03fh		;0696
	ld c,(hl)		;0698
	ld d,b			;0699
	ld d,c			;069a
	ld d,c			;069b
	nop			;069c
	ld c,d			;069d
	inc h			;069e
	ld c,(hl)		;069f
	ld b,b			;06a0
	ld b,h			;06a1
	ld b,d			;06a2
	ld b,b			;06a3
	ld c,l			;06a4
	ld c,(hl)		;06a5
	ld c,c			;06a6
	ld d,b			;06a7
	ld d,d			;06a8
	ld c,a			;06a9
	ld d,b			;06aa
	ld c,c			;06ab
	ld c,h			;06ac
	ld c,(hl)		;06ad
	ld c,d			;06ae
	nop			;06af
	ld b,c			;06b0
	ld b,h			;06b1
	ld b,l			;06b2
	ld b,a			;06b3
	ld c,c			;06b4
	ld c,l			;06b5
	ld c,c			;06b6
	ld c,(hl)		;06b7
	dec hl			;06b8
	ld c,a			;06b9
	dec hl			;06ba
	ld d,c			;06bb
	ld d,d			;06bc
	ld d,c			;06bd
	ld c,a			;06be
	ld d,d			;06bf
l06c0h:
	ld b,h			;06c0
	ld b,e			;06c1
	ld b,(hl)		;06c2
	ld b,e			;06c3
	ld c,d			;06c4
	ld c,l			;06c5
	ld c,l			;06c6
	ld c,l			;06c7
	ld c,(hl)		;06c8
	ld c,h			;06c9
	ld c,h			;06ca
	ld c,h			;06cb
	ld d,c			;06cc
	ld d,b			;06cd
	dec hl			;06ce
	ld d,c			;06cf
	ld b,b			;06d0
	ld b,h			;06d1
	ld b,b			;06d2
	ld b,h			;06d3
	ld c,l			;06d4
	ld c,l			;06d5
	ld c,c			;06d6
	ld c,h			;06d7
	ld c,h			;06d8
	ld c,d			;06d9
	ld c,e			;06da
	nop			;06db
	ld c,(hl)		;06dc
	nop			;06dd
	nop			;06de
	nop			;06df
	and b			;06e0
	and b			;06e1
	and b			;06e2
	and b			;06e3
	and b			;06e4
	and b			;06e5
	and b			;06e6
	and b			;06e7
	and b			;06e8
	and b			;06e9
	and b			;06ea
	and b			;06eb
	and b			;06ec
	and b			;06ed
	and b			;06ee
	and b			;06ef
	ld b,b			;06f0
	ld b,b			;06f1
	ld b,e			;06f2
	ld b,b			;06f3
	ld d,b			;06f4
	ld d,c			;06f5
	ld c,a			;06f6
	ld c,a			;06f7
	and b			;06f8
	and b			;06f9
	and b			;06fa
	and b			;06fb
	and b			;06fc
	and b			;06fd
	and b			;06fe
	and b			;06ff
	ld c,c			;0700
	ld c,b			;0701
	ld c,d			;0702
	ld c,e			;0703
	ld b,b			;0704
	ld b,c			;0705
	ld b,b			;0706
	ld b,c			;0707
	ld c,l			;0708
	ld c,d			;0709
	ld c,c			;070a
	ld c,b			;070b
	ld b,h			;070c
	ld b,b			;070d
	ld b,l			;070e
	ld b,(hl)		;070f
	ld c,(hl)		;0710
	ld c,d			;0711
	ld c,e			;0712
	ld c,e			;0713
	ld b,a			;0714
	ld b,h			;0715
	ld b,b			;0716
	ld b,b			;0717
	ld c,a			;0718
	ld d,b			;0719
	ld d,d			;071a
	ld d,c			;071b
	ld b,b			;071c
	ld b,h			;071d
l071eh:
	ld b,b			;071e
	ld b,b			;071f
	ld d,b			;0720
	ld c,a			;0721
	ld c,c			;0722
	ld d,d			;0723
	ld b,e			;0724
	ld b,e			;0725
	ld b,b			;0726
	ld b,h			;0727
	ld c,d			;0728
	ld c,d			;0729
	ld d,b			;072a
	ld d,c			;072b
	ld b,h			;072c
	ld b,b			;072d
	ld b,h			;072e
	ld b,d			;072f
	ld c,d			;0730
	ld c,b			;0731
	ld c,c			;0732
	ld c,d			;0733
	ld b,l			;0734
	ld b,(hl)		;0735
	ld b,a			;0736
	ld b,e			;0737
	jr nz,l075bh		;0738
	inc h			;073a
	dec h			;073b
	ld b,c			;073c
	ld b,h			;073d
	ld b,b			;073e
	ld b,h			;073f
	add hl,hl		;0740
	dec hl			;0741
	inc l			;0742
	jr z,l0788h		;0743
	ld b,b			;0745
	ld b,e			;0746
	ld b,b			;0747
	ld b,b			;0748
	ld b,c			;0749
	ld b,h			;074a
	ld b,b			;074b
	nop			;074c
	nop			;074d
	nop			;074e
	ld d,d			;074f
	ld b,e			;0750
	ld b,l			;0751
	ld b,(hl)		;0752
	ld b,a			;0753
	ld d,b			;0754
	ld d,b			;0755
	ld c,c			;0756
	ld c,a			;0757
	ld b,e			;0758
	ld b,h			;0759
	ld b,b			;075a
l075bh:
	ld b,l			;075b
	cpl			;075c
	ld c,(hl)		;075d
	ld hl,(l002bh)		;075e
	nop			;0761
	nop			;0762
	ld c,c			;0763
	nop			;0764
	nop			;0765
	nop			;0766
	nop			;0767
	nop			;0768
	nop			;0769
	nop			;076a
	nop			;076b
	nop			;076c
	nop			;076d
	nop			;076e
	nop			;076f
	nop			;0770
	nop			;0771
	jr nc,l0774h		;0772
l0774h:
	nop			;0774
	nop			;0775
	inc sp			;0776
	dec sp			;0777
	nop			;0778
	nop			;0779
	nop			;077a
	nop			;077b
	nop			;077c
	nop			;077d
	nop			;077e
	nop			;077f
	nop			;0780
	xor l			;0781
	nop			;0782
	nop			;0783
	rra			;0784
	ld hl,l0000h		;0785
l0788h:
	nop			;0788
	nop			;0789
	nop			;078a
	nop			;078b
	nop			;078c
	nop			;078d
	nop			;078e
	nop			;078f
	nop			;0790
	nop			;0791
	cp c			;0792
	cp c			;0793
	nop			;0794
	or (hl)			;0795
	push bc			;0796
	push bc			;0797
	nop			;0798
	nop			;0799
	nop			;079a
	nop			;079b
	nop			;079c
	nop			;079d
	nop			;079e
	nop			;079f
	call nz,l0000h		;07a0
	or h			;07a3
	add a,0b5h		;07a4
	ld c,h			;07a6
	ld c,l			;07a7
	nop			;07a8
	nop			;07a9
	nop			;07aa
	nop			;07ab
	nop			;07ac
	cp d			;07ad
	or h			;07ae
	ld b,a			;07af
	ld b,e			;07b0
	ld c,d			;07b1
	ld b,c			;07b2
	ld b,h			;07b3
	inc (hl)		;07b4
	dec (hl)		;07b5
	dec (hl)		;07b6
	inc (hl)		;07b7
	nop			;07b8
	ld (03d3ch),a		;07b9
	ld c,b			;07bc
	ld b,l			;07bd
	ld a,03fh		;07be
	ld (hl),037h		;07c0
	ld b,b			;07c2
	ld h,04eh		;07c3
	jr c,$+45		;07c5
	inc l			;07c7
	ld (0ae23h),hl		;07c8
	ld sp,02524h		;07cb
	ld c,c			;07ce
	ld b,d			;07cf
	daa			;07d0
	jr z,l07fbh		;07d1
	add hl,hl		;07d3
	dec l			;07d4
	ld l,02eh		;07d5
	cpl			;07d7
	nop			;07d8
	nop			;07d9
	nop			;07da
	nop			;07db
	xor a			;07dc
	cp (hl)			;07dd
	nop			;07de
	nop			;07df
	ld c,e			;07e0
	ld hl,(l0000h)		;07e1
	nop			;07e4
	nop			;07e5
	ld c,a			;07e6
	or b			;07e7
	nop			;07e8
	nop			;07e9
	nop			;07ea
	nop			;07eb
	nop			;07ec
	nop			;07ed
	nop			;07ee
	nop			;07ef
	call nz,sub_00b9h	;07f0
	nop			;07f3
	add a,0c5h		;07f4
	or (hl)			;07f6
	nop			;07f7
	ld e,h			;07f8
	ld e,l			;07f9
	ld e,(hl)		;07fa
l07fbh:
	sbc a,c			;07fb
	ld h,b			;07fc
	ld h,c			;07fd
	ld h,d			;07fe
	ld h,d			;07ff
l0800h:
	or d			;0800
	or d			;0801
	ld l,c			;0802
	ld l,d			;0803
	nop			;0804
	nop			;0805
	nop			;0806
sub_0807h:
	nop			;0807
	ld e,d			;0808
	ld e,e			;0809
	ld e,b			;080a
	ld e,c			;080b
	ld h,e			;080c
	ld h,h			;080d
	ld h,c			;080e
	ld h,l			;080f
	ld l,e			;0810
	ld l,h			;0811
	ld l,d			;0812
	ld l,l			;0813
	or e			;0814
	or e			;0815
	ld l,c			;0816
	ld l,d			;0817
	sbc a,c			;0818
	ld d,a			;0819
	ld e,d			;081a
	ld e,e			;081b
	ld h,(hl)		;081c
	ld h,(hl)		;081d
	ld h,a			;081e
	ld l,b			;081f
	ld l,(hl)		;0820
	or d			;0821
	or d			;0822
	cp l			;0823
	xor h			;0824
	ret nz			;0825
	nop			;0826
	nop			;0827
	nop			;0828
	nop			;0829
	nop			;082a
	nop			;082b
	nop			;082c
	nop			;082d
	cp b			;082e
	nop			;082f
	or a			;0830
	nop			;0831
	nop			;0832
	nop			;0833
	nop			;0834
	nop			;0835
	nop			;0836
	nop			;0837
	nop			;0838
l0839h:
	nop			;0839
	nop			;083a
	cp b			;083b
	or a			;083c
	nop			;083d
	nop			;083e
	nop			;083f
	nop			;0840
	nop			;0841
	nop			;0842
	nop			;0843
	nop			;0844
	cp b			;0845
	nop			;0846
	nop			;0847
	nop			;0848
	nop			;0849
	nop			;084a
	nop			;084b
	nop			;084c
	nop			;084d
	nop			;084e
	nop			;084f
	call nz,0b9c4h		;0850
	call nz,0c6c6h		;0853
	push bc			;0856
	add a,000h		;0857
	nop			;0859
	nop			;085a
	nop			;085b
	nop			;085c
	nop			;085d
	nop			;085e
	nop			;085f
	nop			;0860
	call nz,0b900h		;0861
	or (hl)			;0864
	add a,0b6h		;0865
	push bc			;0867
	nop			;0868
	nop			;0869
	nop			;086a
	nop			;086b
	nop			;086c
	nop			;086d
	nop			;086e
	nop			;086f
	cp c			;0870
	nop			;0871
	cp c			;0872
	call nz,0b6c5h		;0873
	push bc			;0876
	add a,000h		;0877
	nop			;0879
	nop			;087a
	nop			;087b
	nop			;087c
	nop			;087d
	nop			;087e
	nop			;087f
	nop			;0880
	nop			;0881
	cp c			;0882
	nop			;0883
	nop			;0884
	or (hl)			;0885
	push bc			;0886
	or (hl)			;0887
	nop			;0888
	nop			;0889
	nop			;088a
	nop			;088b
	nop			;088c
	nop			;088d
	nop			;088e
	nop			;088f
	call nz,sub_00c4h	;0890
	nop			;0893
	add a,0c6h		;0894
	or (hl)			;0896
	nop			;0897
	ld e,(hl)		;0898
	ld e,h			;0899
	ld e,l			;089a
	ld e,h			;089b
	ld h,b			;089c
	ld h,c			;089d
	ld h,d			;089e
	ld h,d			;089f
	or d			;08a0
	or d			;08a1
	ld l,c			;08a2
	ld l,d			;08a3
	nop			;08a4
	nop			;08a5
	nop			;08a6
	nop			;08a7
	ld e,h			;08a8
	ld e,l			;08a9
	ld e,l			;08aa
	ld e,h			;08ab
	ld h,e			;08ac
	ld h,h			;08ad
	ld h,c			;08ae
	ld h,l			;08af
	ld l,e			;08b0
	ld l,h			;08b1
	ld l,d			;08b2
	ld l,l			;08b3
	or e			;08b4
	or e			;08b5
	ld l,c			;08b6
	ld l,d			;08b7
	ld e,(hl)		;08b8
	ld e,h			;08b9
	ld e,l			;08ba
	ld e,h			;08bb
	ld h,(hl)		;08bc
	ld h,(hl)		;08bd
	ld h,a			;08be
	ld l,b			;08bf
	ld l,(hl)		;08c0
	or d			;08c1
	or d			;08c2
	cp l			;08c3
	xor h			;08c4
	ret nz			;08c5
	nop			;08c6
	nop			;08c7
	nop			;08c8
	nop			;08c9
	nop			;08ca
	nop			;08cb
	nop			;08cc
	nop			;08cd
	nop			;08ce
	nop			;08cf
	nop			;08d0
	nop			;08d1
	cp d			;08d2
	or h			;08d3
	or h			;08d4
	ld b,e			;08d5
	ld c,d			;08d6
	ld b,c			;08d7
	nop			;08d8
	nop			;08d9
	nop			;08da
	nop			;08db
	nop			;08dc
	nop			;08dd
	nop			;08de
	nop			;08df
	ld b,a			;08e0
	xor a			;08e1
	ld sp,04400h		;08e2
	dec a			;08e5
	ld b,d			;08e6
	xor a			;08e7
	nop			;08e8
	nop			;08e9
	nop			;08ea
	nop			;08eb
	nop			;08ec
	nop			;08ed
	nop			;08ee
	nop			;08ef
	nop			;08f0
	nop			;08f1
	nop			;08f2
	nop			;08f3
	add hl,sp		;08f4
	ld b,a			;08f5
	add hl,sp		;08f6
	ld b,(hl)		;08f7
	nop			;08f8
	nop			;08f9
	nop			;08fa
	nop			;08fb
	nop			;08fc
	nop			;08fd
	nop			;08fe
	nop			;08ff
	nop			;0900
	cp c			;0901
	nop			;0902
	cp d			;0903
	or (hl)			;0904
	push bc			;0905
	ld b,e			;0906
	ld c,d			;0907
	nop			;0908
	nop			;0909
	nop			;090a
	jr nc,l090dh		;090b
l090dh:
	nop			;090d
	nop			;090e
	inc sp			;090f
	or h			;0910
	ld b,a			;0911
	ld c,b			;0912
	scf			;0913
	ld b,c			;0914
	ld b,h			;0915
	ld (hl),03dh		;0916
	dec sp			;0918
	dec a			;0919
	ld a,(0441fh)		;091a
	ccf			;091d
	dec sp			;091e
	ld (0263bh),hl		;091f
	daa			;0922
	inc h			;0923
	dec hl			;0924
	inc l			;0925
	dec l			;0926
	ld l,0adh		;0927
	nop			;0929
	nop			;092a
	nop			;092b
	ld hl,l0000h		;092c
	nop			;092f
	daa			;0930
	xor (hl)		;0931
	ld sp,02800h		;0932
	ld c,c			;0935
	ld b,d			;0936
	xor a			;0937
	sbc a,c			;0938
	ld e,l			;0939
	ld e,(hl)		;093a
	ld e,l			;093b
	nop			;093c
	nop			;093d
	cp h			;093e
	cp l			;093f
	ld e,(hl)		;0940
	ld e,h			;0941
	ld e,l			;0942
	ld e,l			;0943
	sbc a,d			;0944
	sbc a,e			;0945
	ld e,a			;0946
	ld h,b			;0947
	ld e,c			;0948
	ld e,d			;0949
	ld e,e			;094a
	ld d,a			;094b
	xor h			;094c
	xor e			;094d
	cp l			;094e
	ret nz			;094f
	ld e,h			;0950
	ld e,l			;0951
	ld e,(hl)		;0952
	xor d			;0953
	ret nz			;0954
	ret nz			;0955
	nop			;0956
	nop			;0957
	ld e,(hl)		;0958
	ld e,l			;0959
	ld e,h			;095a
	ld e,l			;095b
	xor h			;095c
	xor e			;095d
	cp l			;095e
	ret nz			;095f
	sbc a,c			;0960
	ld e,h			;0961
	ld e,l			;0962
	ld e,(hl)		;0963
	nop			;0964
	nop			;0965
	sbc a,c			;0966
	ld e,d			;0967
	ld e,h			;0968
	ld e,(hl)		;0969
	ld e,h			;096a
	ld e,l			;096b
	ld e,d			;096c
	ld e,b			;096d
	ld e,c			;096e
	ld e,d			;096f
	ld e,(hl)		;0970
	ld e,l			;0971
	ld e,(hl)		;0972
	ld e,h			;0973
	ld e,c			;0974
	ld e,e			;0975
	ld e,d			;0976
	ld e,b			;0977
	ld e,h			;0978
	ld e,l			;0979
	ld e,(hl)		;097a
	xor d			;097b
	ld e,c			;097c
	xor d			;097d
	nop			;097e
	nop			;097f
	nop			;0980
	nop			;0981
	add a,000h		;0982
	nop			;0984
	and c			;0985
	or d			;0986
	cp c			;0987
	and c			;0988
	xor c			;0989
	and h			;098a
	add a,078h		;098b
	ld a,c			;098d
	adc a,(hl)		;098e
	cp h			;098f
	nop			;0990
	nop			;0991
	nop			;0992
	nop			;0993
	nop			;0994
	nop			;0995
	nop			;0996
	nop			;0997
	nop			;0998
	nop			;0999
	nop			;099a
	nop			;099b
	or h			;099c
	or e			;099d
	push bc			;099e
	add a,000h		;099f
	nop			;09a1
	nop			;09a2
	nop			;09a3
	nop			;09a4
	nop			;09a5
	nop			;09a6
	nop			;09a7
	nop			;09a8
	xor e			;09a9
	nop			;09aa
	nop			;09ab
	and d			;09ac
	add a,0b3h		;09ad
	and c			;09af
	nop			;09b0
	nop			;09b1
	nop			;09b2
	nop			;09b3
	nop			;09b4
	nop			;09b5
	nop			;09b6
	nop			;09b7
	add a,0c6h		;09b8
	nop			;09ba
	and a			;09bb
	or e			;09bc
	cp b			;09bd
	xor a			;09be
	cp d			;09bf
	nop			;09c0
	and d			;09c1
	add a,0a2h		;09c2
	and d			;09c4
	or h			;09c5
	xor e			;09c6
	add a,0c6h		;09c7
	and c			;09c9
	and h			;09ca
	xor a			;09cb
	cp h			;09cc
	ld a,b			;09cd
	ld a,b			;09ce
	adc a,(hl)		;09cf
	nop			;09d0
	nop			;09d1
	nop			;09d2
	nop			;09d3
	nop			;09d4
	nop			;09d5
	add a,000h		;09d6
	and a			;09d8
	add a,0b3h		;09d9
	or a			;09db
	cp h			;09dc
	ld a,b			;09dd
	or l			;09de
	cp h			;09df
	jr nz,l0a01h		;09e0
	jr nz,l0a03h		;09e2
	ld h,c			;09e4
	ld b,l			;09e5
	ld h,d			;09e6
	ld b,h			;09e7
	cp h			;09e8
	ld a,b			;09e9
	ld a,b			;09ea
	adc a,(hl)		;09eb
	add a,0a1h		;09ec
	and h			;09ee
	xor a			;09ef
	jr nz,l0a11h		;09f0
	jr nz,l0a13h		;09f2
	ld l,h			;09f4
	ld c,d			;09f5
	ld c,b			;09f6
	ld b,a			;09f7
	or e			;09f8
	cp b			;09f9
	xor a			;09fa
	cp d			;09fb
	add a,0c6h		;09fc
	nop			;09fe
	and a			;09ff
	rra			;0a00
l0a01h:
	jr nz,l0a22h		;0a01
l0a03h:
	jr nz,l0a73h		;0a03
	ld l,(hl)		;0a05
	ld e,(hl)		;0a06
	ld h,h			;0a07
	or h			;0a08
	or e			;0a09
	push bc			;0a0a
	add a,000h		;0a0b
	nop			;0a0d
	nop			;0a0e
	nop			;0a0f
	rra			;0a10
l0a11h:
	jr nz,l0a32h		;0a11
l0a13h:
	jr nz,l0a83h		;0a13
	ld l,(hl)		;0a15
	ld e,(hl)		;0a16
	ld h,h			;0a17
	and d			;0a18
	add a,0b3h		;0a19
	and c			;0a1b
	nop			;0a1c
	xor e			;0a1d
	nop			;0a1e
	nop			;0a1f
	jr nz,l0a41h		;0a20
l0a22h:
	jr nz,$+33		;0a22
	ld h,c			;0a24
	ld b,l			;0a25
	ld h,d			;0a26
	ld b,h			;0a27
	ld a,b			;0a28
	ld a,c			;0a29
	adc a,(hl)		;0a2a
	cp h			;0a2b
	and c			;0a2c
	xor c			;0a2d
	and h			;0a2e
	add a,020h		;0a2f
	rra			;0a31
l0a32h:
	jr nz,l0a53h		;0a32
	ld h,c			;0a34
	ld b,l			;0a35
	ld h,d			;0a36
	ld b,h			;0a37
	cp h			;0a38
	ld a,b			;0a39
	or l			;0a3a
	cp h			;0a3b
	and a			;0a3c
	add a,0b3h		;0a3d
	or a			;0a3f
	rra			;0a40
l0a41h:
	rra			;0a41
	jr nz,l0a63h		;0a42
	ld h,c			;0a44
	ld b,h			;0a45
	ld b,l			;0a46
	ld d,b			;0a47
	cp b			;0a48
	dec sp			;0a49
	ld d,(hl)		;0a4a
	ld c,d			;0a4b
	xor b			;0a4c
	or l			;0a4d
	ld l,e			;0a4e
	ld e,b			;0a4f
	jr nz,l0a72h		;0a50
	rra			;0a52
l0a53h:
	jr nz,l0aa1h		;0a53
	ld c,a			;0a55
	ld b,(hl)		;0a56
	ld b,a			;0a57
	ld c,l			;0a58
	ld c,a			;0a59
	ld h,d			;0a5a
	ld (hl),l		;0a5b
	ld d,h			;0a5c
	ld d,l			;0a5d
	ld e,b			;0a5e
	xor (hl)		;0a5f
	nop			;0a60
	nop			;0a61
	nop			;0a62
l0a63h:
	nop			;0a63
	nop			;0a64
	xor e			;0a65
	ld l,c			;0a66
	ld l,b			;0a67
	xor b			;0a68
	or l			;0a69
	ld l,e			;0a6a
	ld e,b			;0a6b
	cp b			;0a6c
	dec sp			;0a6d
	ld d,(hl)		;0a6e
	ld c,d			;0a6f
	nop			;0a70
	nop			;0a71
l0a72h:
	nop			;0a72
l0a73h:
	nop			;0a73
	ld c,l			;0a74
	ld c,(hl)		;0a75
	ld e,(hl)		;0a76
	xor l			;0a77
	ld d,h			;0a78
	ld d,l			;0a79
	ld e,b			;0a7a
	xor (hl)		;0a7b
	ld c,l			;0a7c
	ld c,a			;0a7d
	ld h,d			;0a7e
	ld (hl),l		;0a7f
	jr nz,l0aa1h		;0a80
	rra			;0a82
l0a83h:
	rra			;0a83
	ld l,h			;0a84
	ld h,b			;0a85
	ld h,c			;0a86
	ld b,h			;0a87
	cp h			;0a88
	ld a,b			;0a89
	cp b			;0a8a
	dec sp			;0a8b
	nop			;0a8c
	add a,0a8h		;0a8d
	or l			;0a8f
	jr nz,l0ab1h		;0a90
	jr nz,l0ab4h		;0a92
	ld b,l			;0a94
	ld d,b			;0a95
	ld c,h			;0a96
	ld c,a			;0a97
	ld d,(hl)		;0a98
	ld c,d			;0a99
	ld c,l			;0a9a
	ld c,a			;0a9b
	ld l,e			;0a9c
	ld e,b			;0a9d
	ld d,h			;0a9e
	ld d,l			;0a9f
	rra			;0aa0
l0aa1h:
	jr nz,l0ac2h		;0aa1
	rra			;0aa3
	ld b,(hl)		;0aa4
	ld b,a			;0aa5
	ld e,d			;0aa6
	adc a,e			;0aa7
	ld h,d			;0aa8
	ld (hl),l		;0aa9
	ld a,b			;0aaa
	adc a,(hl)		;0aab
	ld e,b			;0aac
	xor (hl)		;0aad
	and h			;0aae
	xor a			;0aaf
	nop			;0ab0
l0ab1h:
	nop			;0ab1
	nop			;0ab2
	nop			;0ab3
l0ab4h:
	nop			;0ab4
	nop			;0ab5
	nop			;0ab6
	xor e			;0ab7
	add a,0c6h		;0ab8
	xor b			;0aba
	or l			;0abb
	or e			;0abc
	cp b			;0abd
	cp b			;0abe
	dec sp			;0abf
	nop			;0ac0
	nop			;0ac1
l0ac2h:
	nop			;0ac2
	nop			;0ac3
	ld l,c			;0ac4
	ld l,b			;0ac5
	ld c,l			;0ac6
	ld c,(hl)		;0ac7
	ld l,e			;0ac8
	ld e,b			;0ac9
	ld d,h			;0aca
	ld d,l			;0acb
	ld d,(hl)		;0acc
	ld c,d			;0acd
	ld c,l			;0ace
	ld c,a			;0acf
	nop			;0ad0
	nop			;0ad1
	nop			;0ad2
	nop			;0ad3
	ld e,(hl)		;0ad4
	xor l			;0ad5
	add a,000h		;0ad6
	ld e,b			;0ad8
	xor (hl)		;0ad9
	or e			;0ada
	or a			;0adb
	ld h,d			;0adc
	ld (hl),l		;0add
	ld a,b			;0ade
	cp h			;0adf
	jp 07ac4h		;0ae0
	ld a,e			;0ae3
	cp (hl)			;0ae4
	cp (hl)			;0ae5
	cp a			;0ae6
	ld (hl),b		;0ae7
	ld l,h			;0ae8
	ld c,d			;0ae9
	ld c,b			;0aea
	ld b,a			;0aeb
	jr nz,$+33		;0aec
	jr nz,l0b0fh		;0aee
	ld h,c			;0af0
	ld b,l			;0af1
	ld h,d			;0af2
	ld b,h			;0af3
	rra			;0af4
	jr nz,$+33		;0af5
	rra			;0af7
	and d			;0af8
	or h			;0af9
	xor e			;0afa
	add a,000h		;0afb
	and d			;0afd
	add a,0a2h		;0afe
	nop			;0b00
	and c			;0b01
	or d			;0b02
	cp c			;0b03
	nop			;0b04
	nop			;0b05
	add a,000h		;0b06
	cp (hl)			;0b08
	cp (hl)			;0b09
	cp a			;0b0a
	ld (hl),b		;0b0b
	jp 07ac4h		;0b0c
l0b0fh:
	ld a,e			;0b0f
	ld l,(hl)		;0b10
	ld l,(hl)		;0b11
	ld e,(hl)		;0b12
	ld h,h			;0b13
	rra			;0b14
	jr nz,l0b37h		;0b15
	rra			;0b17
	ld (hl),l		;0b18
	cp h			;0b19
	add a,0a7h		;0b1a
	ld (hl),b		;0b1c
	add a,e			;0b1d
	add a,h			;0b1e
	pop bc			;0b1f
	ld (hl),b		;0b20
	add a,e			;0b21
	add a,h			;0b22
	pop bc			;0b23
	ld (hl),l		;0b24
	cp h			;0b25
	add a,0a7h		;0b26
	nop			;0b28
	xor e			;0b29
	ld l,c			;0b2a
	ld l,b			;0b2b
	nop			;0b2c
	nop			;0b2d
l0b2eh:
	nop			;0b2e
	nop			;0b2f
	ld c,l			;0b30
	ld c,(hl)		;0b31
	ld e,(hl)		;0b32
	xor l			;0b33
	nop			;0b34
	nop			;0b35
	nop			;0b36
l0b37h:
	nop			;0b37
	ld h,c			;0b38
	ld b,h			;0b39
	ld b,l			;0b3a
	ld d,b			;0b3b
	rra			;0b3c
	rra			;0b3d
	jr nz,l0b5fh		;0b3e
	ld c,h			;0b40
	ld c,a			;0b41
	ld b,(hl)		;0b42
	ld b,a			;0b43
	jr nz,$+34		;0b44
	rra			;0b46
	jr nz,l0b49h		;0b47
l0b49h:
	rst 38h			;0b49
	nop			;0b4a
	xor e			;0b4b
	nop			;0b4c
	nop			;0b4d
	nop			;0b4e
	nop			;0b4f
	ld l,c			;0b50
	ld l,b			;0b51
	ld c,l			;0b52
	ld c,(hl)		;0b53
	nop			;0b54
	nop			;0b55
	nop			;0b56
	nop			;0b57
	ld e,(hl)		;0b58
	xor l			;0b59
	nop			;0b5a
	nop			;0b5b
	nop			;0b5c
	nop			;0b5d
	nop			;0b5e
l0b5fh:
	nop			;0b5f
	ld h,c			;0b60
	ld b,l			;0b61
	ld h,c			;0b62
	ld b,h			;0b63
	rra			;0b64
	jr nz,l0b86h		;0b65
	rra			;0b67
	ld b,l			;0b68
	ld d,b			;0b69
	ld c,h			;0b6a
	ld c,a			;0b6b
	jr nz,l0b8dh		;0b6c
	jr nz,$+34		;0b6e
	ld b,(hl)		;0b70
	ld b,a			;0b71
	ld c,b			;0b72
	ld b,a			;0b73
	rra			;0b74
	jr nz,l0b97h		;0b75
	rra			;0b77
	dec hl			;0b78
	dec (hl)		;0b79
	ld sp,0bd29h		;0b7a
	daa			;0b7d
	cp (hl)			;0b7e
	or e			;0b7f
	nop			;0b80
	cp a			;0b81
	call nz,l00c5h		;0b82
	nop			;0b85
l0b86h:
	nop			;0b86
	nop			;0b87
	ld (hl),037h		;0b88
	or e			;0b8a
	ld c,h			;0b8b
	push bc			;0b8c
l0b8dh:
	or e			;0b8d
	push bc			;0b8e
	call nz,0c400h		;0b8f
	nop			;0b92
	push bc			;0b93
	nop			;0b94
	nop			;0b95
	nop			;0b96
l0b97h:
	push bc			;0b97
	dec l			;0b98
	cpl			;0b99
	dec l			;0b9a
	or e			;0b9b
	call nz,0c530h		;0b9c
	call nz,0c400h		;0b9f
	push bc			;0ba2
	cp a			;0ba3
	nop			;0ba4
	push bc			;0ba5
	nop			;0ba6
	nop			;0ba7
	nop			;0ba8
	push bc			;0ba9
	nop			;0baa
	nop			;0bab
	nop			;0bac
	call nz,0bb00h		;0bad
	cp a			;0bb0
	nop			;0bb1
	nop			;0bb2
	nop			;0bb3
	nop			;0bb4
	ret nz			;0bb5
	jp 000c1h		;0bb6
	nop			;0bb9
	push bc			;0bba
	nop			;0bbb
	nop			;0bbc
	call nz,0c300h		;0bbd
	call nz,0c0c1h		;0bc0
	jp nz,028c2h		;0bc3
	ld hl,(l002bh)		;0bc6
	push bc			;0bc9
	nop			;0bca
	nop			;0bcb
	pop bc			;0bcc
	call nz,0c2c0h		;0bcd
	jr z,l0c06h		;0bd0
	ld hl,(0352ah)		;0bd2
	ld sp,03229h		;0bd5
	nop			;0bd8
	call nz,l0000h		;0bd9
	cp a			;0bdc
	nop			;0bdd
	push bc			;0bde
	call nz,030b2h		;0bdf
	cp d			;0be2
	inc (hl)		;0be3
	inc sp			;0be4
	ld l,048h		;0be5
	ld b,a			;0be7
	nop			;0be8
	call nz,0c500h		;0be9
	nop			;0bec
	nop			;0bed
	nop			;0bee
	cp e			;0bef
	or e			;0bf0
	nop			;0bf1
	call nz,0bbc5h		;0bf2
	nop			;0bf5
	push bc			;0bf6
	nop			;0bf7
	nop			;0bf8
	call nz,0bfc4h		;0bf9
	nop			;0bfc
	nop			;0bfd
	push bc			;0bfe
	nop			;0bff
l0c00h:
	nop			;0c00
	push bc			;0c01
	push bc			;0c02
	push bc			;0c03
	nop			;0c04
	nop			;0c05
l0c06h:
	call nz,l0000h		;0c06
	nop			;0c09
	push bc			;0c0a
	nop			;0c0b
	pop bc			;0c0c
	jp 0c0c1h		;0c0d
	ld hl,(02849h)		;0c10
	ld hl,(04646h)		;0c13
	ld c,d			;0c16
	dec hl			;0c17
	call nz,0c300h		;0c18
	pop bc			;0c1b
	pop bc			;0c1c
	ret nz			;0c1d
	jp nz,02828h		;0c1e
	ld hl,(0352bh)		;0c21
	dec (hl)		;0c24
	ld sp,03629h		;0c25
	call nz,0c2c2h		;0c28
	inc (hl)		;0c2b
	inc (hl)		;0c2c
	dec hl			;0c2d
	dec (hl)		;0c2e
	ld c,d			;0c2f
	ld sp,0bd29h		;0c30
	ld (hl),037h		;0c33
	push bc			;0c35
	or e			;0c36
	call nz,02a2ah		;0c37
	or d			;0c3a
	jr nc,$+51		;0c3b
	ld (02e33h),a		;0c3d
	scf			;0c40
	or e			;0c41
	dec l			;0c42
	cpl			;0c43
	cp a			;0c44
	nop			;0c45
	cp a			;0c46
	jr nc,l0c49h		;0c47
l0c49h:
	push bc			;0c49
	nop			;0c4a
	nop			;0c4b
	call nz,0b300h		;0c4c
	nop			;0c4f
	cp a			;0c50
	nop			;0c51
	nop			;0c52
	nop			;0c53
	nop			;0c54
	call nz,0c3c5h		;0c55
	nop			;0c58
	nop			;0c59
	nop			;0c5a
	call nz,0c500h		;0c5b
	nop			;0c5e
	nop			;0c5f
	nop			;0c60
	call nz,0bbc5h		;0c61
	call nz,0bfc1h		;0c64
	or e			;0c67
	call nz,0c1c0h		;0c68
	inc (hl)		;0c6b
	inc (hl)		;0c6c
	ld hl,(0221fh)		;0c6d
	ld sp,02332h		;0c70
	ld h,036h		;0c73
	scf			;0c75
	cp l			;0c76
	cp (hl)			;0c77
	jr z,l0ca4h		;0c78
	or d			;0c7a
	ret nz			;0c7b
	rra			;0c7c
	jr nz,l0ca0h		;0c7d
	rra			;0c7f
	inc hl			;0c80
	inc h			;0c81
	dec h			;0c82
	inc hl			;0c83
	cp l			;0c84
	cp (hl)			;0c85
	ld d,d			;0c86
	cp l			;0c87
	cp d			;0c88
	inc (hl)		;0c89
	ld d,b			;0c8a
	or d			;0c8b
	jr nz,l0cafh		;0c8c
	ld (02421h),hl		;0c8e
	dec h			;0c91
	ld h,025h		;0c92
	dec a			;0c94
	ld c,h			;0c95
	inc a			;0c96
	cp l			;0c97
	inc (hl)		;0c98
	jr z,$-76		;0c99
	jp nz,l1f22h		;0c9b
	jr nz,l0cc1h		;0c9e
l0ca0h:
	ld h,023h		;0ca0
	inc h			;0ca2
	dec h			;0ca3
l0ca4h:
	dec a			;0ca4
	inc a			;0ca5
	ld (hl),052h		;0ca6
	or d			;0ca8
	cp a			;0ca9
	nop			;0caa
	call nz,0b22ah		;0cab
	cp d			;0cae
l0cafh:
	inc (hl)		;0caf
	ld (02233h),a		;0cb0
	inc h			;0cb3
	ld c,h			;0cb4
	dec l			;0cb5
	dec h			;0cb6
	dec l			;0cb7
	add a,03ah		;0cb8
	ld d,b			;0cba
	jr z,l0cf8h		;0cbb
	ld (04726h),hl		;0cbd
	ld b,a			;0cc0
l0cc1h:
	inc a			;0cc1
	dec a			;0cc2
	cp e			;0cc3
	cp (hl)			;0cc4
	push bc			;0cc5
	call nz,0c1b3h		;0cc6
	ret nz			;0cc9
	call nz,022c0h		;0cca
	ld hl,(02850h)		;0ccd
	ld h,047h		;0cd0
	ld b,(hl)		;0cd2
	inc h			;0cd3
	push bc			;0cd4
	scf			;0cd5
	ld c,e			;0cd6
	add hl,hl		;0cd7
	nop			;0cd8
	nop			;0cd9
	nop			;0cda
	nop			;0cdb
	or d			;0cdc
	ret nz			;0cdd
	ret nz			;0cde
	cp h			;0cdf
	ld (02833h),hl		;0ce0
	ld hl,(02646h)		;0ce3
	ld c,d			;0ce6
	inc hl			;0ce7
	push bc			;0ce8
	nop			;0ce9
	push bc			;0cea
	nop			;0ceb
l0cech:
	cp a			;0cec
	nop			;0ced
	or e			;0cee
	nop			;0cef
	or h			;0cf0
	cp a			;0cf1
	nop			;0cf2
l0cf3h:
	push bc			;0cf3
	call nz,0c5bbh		;0cf4
	nop			;0cf7
l0cf8h:
	call nz,0c4c5h		;0cf8
	cp a			;0cfb
	or l			;0cfc
	cp e			;0cfd
	push bc			;0cfe
	cp e			;0cff
	ld hl,(030b2h)		;0d00
	call nz,03332h		;0d03
	ld l,030h		;0d06
	push bc			;0d08
	nop			;0d09
	nop			;0d0a
	call nz,0c400h		;0d0b
	call nz,030c2h		;0d0e
	add a,034h		;0d11
	ld hl,(0482eh)		;0d13
	ld sp,02f32h		;0d16
	dec l			;0d19
	ld c,h			;0d1a
	ld c,e			;0d1b
	jr nc,$-75		;0d1c
	nop			;0d1e
	call nz,0c4c4h		;0d1f
	push bc			;0d22
	or e			;0d23
	nop			;0d24
	cp a			;0d25
	nop			;0d26
	cp e			;0d27
	ld (hl),02dh		;0d28
	cpl			;0d2a
	jr nc,l0cech		;0d2b
	jr nc,l0cf3h		;0d2d
	call nz,0c400h		;0d2f
	push bc			;0d32
	cp a			;0d33
	nop			;0d34
	cp a			;0d35
	cp e			;0d36
	nop			;0d37
	jr c,l0d73h		;0d38
	inc a			;0d3a
	dec a			;0d3b
	add a,03ah		;0d3c
	dec sp			;0d3e
l0d3fh:
	jr z,l0d41h		;0d3f
l0d41h:
	ret nz			;0d41
	jp 0c5c1h		;0d42
	nop			;0d45
	call nz,0bdc5h		;0d46
	daa			;0d49
	cp (hl)			;0d4a
	or e			;0d4b
	dec hl			;0d4c
	dec (hl)		;0d4d
	ld sp,0c229h		;0d4e
	jr z,l0d7dh		;0d51
	dec hl			;0d53
l0d54h:
	call nz,0c0c1h		;0d54
	jp nz,0b3c5h		;0d57
	push bc			;0d5a
	call nz,03736h		;0d5b
	or e			;0d5e
	ld c,h			;0d5f
	dec (hl)		;0d60
	ld sp,03229h		;0d61
	jr z,$+54		;0d64
	ld hl,(0bf2ah)		;0d66
	call nz,0c3bbh		;0d69
	cp l			;0d6c
l0d6dh:
	cp (hl)			;0d6d
	cp l			;0d6e
	cp (hl)			;0d6f
	ld sp,02332h		;0d70
l0d73h:
	ld h,034h		;0d73
	ld hl,(0221fh)		;0d75
	push bc			;0d78
	jr nc,l0d3fh		;0d79
	push bc			;0d7b
	cp l			;0d7c
l0d7dh:
	cp (hl)			;0d7d
	ld d,d			;0d7e
	cp l			;0d7f
	inc hl			;0d80
	inc h			;0d81
	dec h			;0d82
	ld h,01fh		;0d83
	jr nz,l0da8h		;0d85
	ld (037bdh),hl		;0d87
	ld c,e			;0d8a
	add hl,hl		;0d8b
	ld c,d			;0d8c
	ld b,a			;0d8d
	ld b,(hl)		;0d8e
	inc h			;0d8f
	ld (0502ah),hl		;0d90
	jr z,$-61		;0d93
	ret nz			;0d95
	jr nc,l0d54h		;0d96
	pop bc			;0d98
l0d99h:
	call nz,0c2c0h		;0d99
	or e			;0d9c
	cp a			;0d9d
	nop			;0d9e
	nop			;0d9f
	nop			;0da0
	call nz,0c5c5h		;0da1
	nop			;0da4
	nop			;0da5
l0da6h:
	push bc			;0da6
	nop			;0da7
l0da8h:
	jr nc,l0d6dh		;0da8
	jp nz,0c430h		;0daa
	nop			;0dad
	push bc			;0dae
	call nz,0c500h		;0daf
	or e			;0db2
	push bc			;0db3
	nop			;0db4
	nop			;0db5
	call nz,03200h		;0db6
	dec h			;0db9
	inc hl			;0dba
	inc h			;0dbb
	ld hl,(0221fh)		;0dbc
	ld hl,0c2c0h		;0dbf
	ld hl,(l00b2h)		;0dc2
	nop			;0dc5
	ret nz			;0dc6
	jr nc,$+37		;0dc7
	inc h			;0dc9
	dec h			;0dca
	ld h,01fh		;0dcb
	jr nz,l0df1h		;0dcd
	ld (0c630h),hl		;0dcf
	pop bc			;0dd2
	ret nz			;0dd3
	nop			;0dd4
	nop			;0dd5
	nop			;0dd6
	nop			;0dd7
	inc sp			;0dd8
	ld l,048h		;0dd9
	dec (hl)		;0ddb
	or d			;0ddc
	jr nc,l0d99h		;0ddd
	dec hl			;0ddf
	jr nc,l0da6h		;0de0
	cp e			;0de2
	jp nz,0c5c4h		;0de3
	push bc			;0de6
	call nz,02223h		;0de7
	ld d,b			;0dea
	jr nc,l0e17h		;0deb
	or d			;0ded
	call nz,0b5c5h		;0dee
l0df1h:
	call nz,0bb00h		;0df1
	xor e			;0df4
	nop			;0df5
	call nz,0ba00h		;0df6
	or d			;0df9
	jp nz,0c5b2h		;0dfa
	or e			;0dfd
	call nz,sub_00b3h	;0dfe
	cp e			;0e01
	push bc			;0e02
	nop			;0e03
	call nz,l0000h		;0e04
	push bc			;0e07
	ld d,e			;0e08
	or l			;0e09
	or a			;0e0a
	call nz,04443h		;0e0b
	ld b,l			;0e0e
	or (hl)			;0e0f
	ld (02833h),hl		;0e10
	ld hl,(02646h)		;0e13
	ld c,d			;0e16
l0e17h:
	inc hl			;0e17
	cp b			;0e18
	cp h			;0e19
	ld a,03fh		;0e1a
	cp c			;0e1c
	ld b,b			;0e1d
	ld b,c			;0e1e
	ld b,d			;0e1f
	jr z,l0e4dh		;0e20
	ld hl,(0352bh)		;0e22
	ld sp,03229h		;0e25
	call nz,0acadh		;0e28
	ld e,c			;0e2b
	nop			;0e2c
	nop			;0e2d
	xor (hl)		;0e2e
	xor a			;0e2f
	xor (hl)		;0e30
	or b			;0e31
	xor a			;0e32
	ld d,(hl)		;0e33
	or e			;0e34
	xor l			;0e35
	or h			;0e36
	ld d,h			;0e37
	ld e,d			;0e38
	xor e			;0e39
	xor l			;0e3a
	xor (hl)		;0e3b
	ld e,b			;0e3c
	or a			;0e3d
	xor (hl)		;0e3e
	push bc			;0e3f
	ld d,a			;0e40
	call nz,0c400h		;0e41
	ld d,l			;0e44
	or c			;0e45
	or a			;0e46
	or e			;0e47
	or e			;0e48
	nop			;0e49
	nop			;0e4a
	or a			;0e4b
	nop			;0e4c
l0e4dh:
	cp b			;0e4d
	xor (hl)		;0e4e
	inc bc			;0e4f
	call nz,0c4b8h		;0e50
	ld h,d			;0e53
	or e			;0e54
	push bc			;0e55
	or a			;0e56
	xor d			;0e57
	cp b			;0e58
	xor l			;0e59
	ld bc,l0412h		;0e5a
	dec b			;0e5d
	ld b,023h		;0e5e
	inc l			;0e60
	ld e,(hl)		;0e61
	ld (05b25h),hl		;0e62
	ld e,h			;0e65
	ld e,l			;0e66
	inc hl			;0e67
	inc de			;0e68
	ld (bc),a		;0e69
	xor (hl)		;0e6a
	call nz,sub_0807h	;0e6b
	ld de,02202h		;0e6e
	inc hl			;0e71
	ld (05fa9h),hl		;0e72
	ld h,b			;0e75
	ld h,c			;0e76
	xor e			;0e77
	cp b			;0e78
	cp h			;0e79
	ld a,03fh		;0e7a
	call nz,0b4b7h		;0e7c
	ld d,h			;0e7f
	or e			;0e80
	or b			;0e81
	xor a			;0e82
	ld d,(hl)		;0e83
	call nz,0b3aeh		;0e84
	xor a			;0e87
	ld d,e			;0e88
	or l			;0e89
	or a			;0e8a
	call nz,0b155h		;0e8b
	nop			;0e8e
	push bc			;0e8f
	ld d,a			;0e90
	nop			;0e91
	xor (hl)		;0e92
	nop			;0e93
	ld e,b			;0e94
	call nz,0bf00h		;0e95
	cp l			;0e98
	daa			;0e99
	cp (hl)			;0e9a
	or e			;0e9b
	inc hl			;0e9c
	dec (hl)		;0e9d
	ld sp,02b29h		;0e9e
	jr z,l0ecdh		;0ea1
	dec hl			;0ea3
	cp c			;0ea4
	ld b,b			;0ea5
	ld b,c			;0ea6
	ld b,d			;0ea7
	ld c,h			;0ea8
	cp l			;0ea9
	ld c,e			;0eaa
	add hl,hl		;0eab
	ld (0234ah),a		;0eac
	inc h			;0eaf
	ld (0502ah),hl		;0eb0
	jr z,l0ef8h		;0eb3
	ld b,h			;0eb5
	ld b,l			;0eb6
	or (hl)			;0eb7
	ld l,c			;0eb8
	ld l,c			;0eb9
	ld l,c			;0eba
	ld l,c			;0ebb
	ld l,c			;0ebc
	ld l,c			;0ebd
	ld l,c			;0ebe
	ld l,c			;0ebf
	ld l,c			;0ec0
	ld l,b			;0ec1
	ld l,c			;0ec2
	ld l,c			;0ec3
	ld l,c			;0ec4
	ld l,c			;0ec5
	ld l,b			;0ec6
	ld l,c			;0ec7
	or c			;0ec8
	ld l,c			;0ec9
	ld l,c			;0eca
	ld l,c			;0ecb
	nop			;0ecc
l0ecdh:
	call nz,06969h		;0ecd
	push bc			;0ed0
	nop			;0ed1
	ld l,c			;0ed2
	ld l,c			;0ed3
	xor (hl)		;0ed4
	nop			;0ed5
l0ed6h:
	push bc			;0ed6
	ld l,c			;0ed7
	nop			;0ed8
	call nz,06969h		;0ed9
	xor (hl)		;0edc
	ld l,c			;0edd
	ld l,c			;0ede
	ld l,c			;0edf
	or c			;0ee0
	ld l,c			;0ee1
	ld l,b			;0ee2
	ld l,c			;0ee3
	ld l,c			;0ee4
	ld l,c			;0ee5
l0ee6h:
	ld l,c			;0ee6
	ld l,c			;0ee7
	ld l,c			;0ee8
	ld l,b			;0ee9
	ld l,c			;0eea
	call nz,06969h		;0eeb
	ld l,c			;0eee
	nop			;0eef
	ld l,b			;0ef0
	ld l,c			;0ef1
	push bc			;0ef2
	nop			;0ef3
	ld l,c			;0ef4
	or c			;0ef5
	nop			;0ef6
	xor (hl)		;0ef7
l0ef8h:
	ld l,b			;0ef8
	ld l,c			;0ef9
	or a			;0efa
	xor (hl)		;0efb
	ld l,c			;0efc
	ld l,c			;0efd
	ld l,c			;0efe
	push bc			;0eff
l0f00h:
	ld l,c			;0f00
	ld l,c			;0f01
	ld l,c			;0f02
	ld l,c			;0f03
	ld l,c			;0f04
	ld l,b			;0f05
	ld l,c			;0f06
	ld l,c			;0f07
	ld (02325h),a		;0f08
	inc h			;0f0b
	ld hl,(0221fh)		;0f0c
	ld hl,0c269h		;0f0f
	ld hl,(069b2h)		;0f12
	ld l,b			;0f15
	ld l,c			;0f16
	jr nc,l0ed6h		;0f17
	scf			;0f19
	ld c,e			;0f1a
	add hl,hl		;0f1b
	ld c,d			;0f1c
	ld b,a			;0f1d
	ld b,(hl)		;0f1e
	inc h			;0f1f
	ld (0502ah),hl		;0f20
	jr z,l0ee6h		;0f23
	ld l,c			;0f25
	ld l,c			;0f26
	ld l,b			;0f27
	ld hl,(0692ah)		;0f28
	ld l,c			;0f2b
	ld sp,03332h		;0f2c
	ld l,b			;0f2f
	ld l,c			;0f30
	ld l,c			;0f31
	dec l			;0f32
	ld l,c			;0f33
	ld l,c			;0f34
	ld l,b			;0f35
	ld l,c			;0f36
	ld l,c			;0f37
	add a,03ah		;0f38
	dec sp			;0f3a
	jr z,l0f75h		;0f3b
	add hl,sp		;0f3d
	inc a			;0f3e
	dec a			;0f3f
	ld c,h			;0f40
	ld c,h			;0f41
	ld c,e			;0f42
	cp l			;0f43
	nop			;0f44
	push bc			;0f45
	push bc			;0f46
	or e			;0f47
	daa			;0f48
	cp l			;0f49
	or e			;0f4a
	push bc			;0f4b
	push bc			;0f4c
	nop			;0f4d
	nop			;0f4e
	push bc			;0f4f
	ld b,(hl)		;0f50
	ld a,(03f72h)		;0f51
	ld e,a			;0f54
	ld c,c			;0f55
	ld d,b			;0f56
	ld e,(hl)		;0f57
	rra			;0f58
	jr nz,l0f7bh		;0f59
	ld hl,02625h		;0f5b
	daa			;0f5e
	jr z,l0f98h		;0f5f
	ld l,b			;0f61
	ld h,l			;0f62
	ld l,(hl)		;0f63
	ld (hl),l		;0f64
	ld h,c			;0f65
	ld a,c			;0f66
	ld e,(hl)		;0f67
	dec h			;0f68
	ld h,027h		;0f69
	jr z,l0f8fh		;0f6b
	inc hl			;0f6d
	inc hl			;0f6e
	inc h			;0f6f
	add hl,sp		;0f70
	ld (hl),c		;0f71
	ld (hl),e		;0f72
	inc a			;0f73
	add hl,hl		;0f74
l0f75h:
	ld h,b			;0f75
	ld h,d			;0f76
	ld d,d			;0f77
	ld e,c			;0f78
	ld d,e			;0f79
	ld e,l			;0f7a
l0f7bh:
	ld l,d			;0f7b
	ld hl,(06964h)		;0f7c
	ld e,(hl)		;0f7f
	dec sp			;0f80
	ld b,b			;0f81
	dec a			;0f82
	inc a			;0f83
	ld d,d			;0f84
	ld c,c			;0f85
	ld d,b			;0f86
	ld c,h			;0f87
	ld l,d			;0f88
	ld b,a			;0f89
	ld e,l			;0f8a
	ld b,(hl)		;0f8b
	ld c,a			;0f8c
	ld h,h			;0f8d
	ld l,c			;0f8e
l0f8fh:
	ld e,(hl)		;0f8f
	dec sp			;0f90
	ld b,b			;0f91
	dec a			;0f92
	ld b,d			;0f93
	ld d,h			;0f94
	ld d,l			;0f95
	ld d,c			;0f96
	ld d,a			;0f97
l0f98h:
	ld c,d			;0f98
	ld e,l			;0f99
	ld c,e			;0f9a
	dec hl			;0f9b
	ld e,h			;0f9c
	ld c,(hl)		;0f9d
	ld e,l			;0f9e
	dec hl			;0f9f
	ld (hl),b		;0fa0
	ld (hl),e		;0fa1
	ld (hl),c		;0fa2
	inc a			;0fa3
	ld l,h			;0fa4
	ld e,l			;0fa5
	ld e,l			;0fa6
	ld c,b			;0fa7
	ld c,h			;0fa8
	ld d,l			;0fa9
	ld d,l			;0faa
	ld d,d			;0fab
	ld d,h			;0fac
	ld h,b			;0fad
	ld h,d			;0fae
	ld d,d			;0faf
	add hl,hl		;0fb0
	ld h,d			;0fb1
	ld e,e			;0fb2
	inc l			;0fb3
	ld hl,(06566h)		;0fb4
	ld e,b			;0fb7
	ld hl,(05061h)		;0fb8
	dec l			;0fbb
	ld e,d			;0fbc
	ld l,l			;0fbd
	ld l,c			;0fbe
	ld e,b			;0fbf
	jr c,l0ffch		;0fc0
	ld a,041h		;0fc2
	ld hl,(06968h)		;0fc4
	dec l			;0fc7
	ld hl,(06766h)		;0fc8
	ld e,b			;0fcb
	add hl,hl		;0fcc
	ld c,l			;0fcd
	ld c,l			;0fce
	inc l			;0fcf
	add hl,sp		;0fd0
	dec a			;0fd1
	ld l,a			;0fd2
	ld (hl),h		;0fd3
	ld e,d			;0fd4
	ld h,h			;0fd5
	ld l,e			;0fd6
	ld e,(hl)		;0fd7
	ld (02323h),hl		;0fd8
	inc h			;0fdb
	rra			;0fdc
	jr nz,l0fffh		;0fdd
	ld hl,06f7ah		;0fdf
	ld h,l			;0fe2
	inc a			;0fe3
	ld l,h			;0fe4
	ld e,l			;0fe5
	ld h,e			;0fe6
	ld c,b			;0fe7
	rra			;0fe8
	jr nz,l100bh		;0fe9
	ld hl,02322h		;0feb
	inc hl			;0fee
	inc h			;0fef
	dec sp			;0ff0
	ld b,b			;0ff1
	dec a			;0ff2
	inc a			;0ff3
	ld c,h			;0ff4
	ld e,e			;0ff5
	ld e,e			;0ff6
	ld d,d			;0ff7
	ld (02323h),hl		;0ff8
	inc h			;0ffb
l0ffch:
	ld (02323h),hl		;0ffc
l0fffh:
	inc h			;0fff
l1000h:
	ld (02323h),hl		;1000
	inc h			;1003
	dec h			;1004
	ld h,027h		;1005
	jr z,$+39		;1007
	ld h,027h		;1009
l100bh:
	jr z,$+33		;100b
	jr nz,l102fh		;100d
	ld hl,04e4ah		;100f
	ld c,e			;1012
	ld l,d			;1013
	ld c,h			;1014
	ld c,l			;1015
	ld h,b			;1016
	ld d,d			;1017
	ld (02323h),hl		;1018
	inc h			;101b
	ld (02323h),hl		;101c
	inc h			;101f
	ld e,h			;1020
	ld d,e			;1021
	ld d,e			;1022
	ld c,b			;1023
	ld e,a			;1024
	ld c,c			;1025
	ld d,b			;1026
	ld e,(hl)		;1027
	dec h			;1028
	ld h,027h		;1029
	jr z,$+39		;102b
	ld h,027h		;102d
l102fh:
	jr z,$+39		;102f
	ld h,027h		;1031
	jr z,l105ah		;1033
	ld h,027h		;1035
	jr z,l1072h		;1037
	ld b,b			;1039
	ld (hl),e		;103a
	inc a			;103b
	ld e,c			;103c
	ld (hl),d		;103d
	ld c,e			;103e
	ld c,b			;103f
	dec h			;1040
	ld h,027h		;1041
	jr z,l106ah		;1043
	ld h,027h		;1045
	jr z,l1084h		;1047
	ld b,b			;1049
	ld (hl),e		;104a
	inc a			;104b
	ld d,h			;104c
	ld h,d			;104d
	ld d,c			;104e
	ld d,d			;104f
	dec h			;1050
	ld h,027h		;1051
	jr z,l107ah		;1053
	ld h,027h		;1055
	jr z,$+61		;1057
	ld b,b			;1059
l105ah:
	dec a			;105a
	inc a			;105b
	ld c,d			;105c
	ld h,e			;105d
	ld c,(hl)		;105e
	ld l,d			;105f
	rra			;1060
	jr nz,l1083h		;1061
	ld hl,02322h		;1063
	inc hl			;1066
	inc h			;1067
	dec sp			;1068
	ld b,b			;1069
l106ah:
	dec a			;106a
	ld b,d			;106b
	ld c,a			;106c
	ld c,c			;106d
	ld d,b			;106e
	ld e,b			;106f
	jr c,l10b0h		;1070
l1072h:
	ld a,(0293fh)		;1072
	ld d,c			;1075
	ld d,c			;1076
	ld d,d			;1077
	scf			;1078
	ld c,c			;1079
l107ah:
	ld d,b			;107a
	ld e,(hl)		;107b
	ld b,(hl)		;107c
	ld e,l			;107d
	ld e,l			;107e
	ld c,b			;107f
	ld d,h			;1080
	ld d,c			;1081
	ld d,c			;1082
l1083h:
	ld d,a			;1083
l1084h:
	ld e,a			;1084
	ld h,h			;1085
	ld h,l			;1086
	dec l			;1087
	ld c,a			;1088
	ld c,c			;1089
	ld d,b			;108a
	ld e,b			;108b
	ld c,h			;108c
	ld c,l			;108d
	ld c,l			;108e
	inc l			;108f
	scf			;1090
	ld h,h			;1091
	ld l,e			;1092
	ld (hl),05fh		;1093
	ld h,h			;1095
	ld h,l			;1096
	ld l,(hl)		;1097
	rra			;1098
	jr nz,l10bbh		;1099
	ld hl,02322h		;109b
	inc hl			;109e
	inc h			;109f
	dec h			;10a0
	ld h,027h		;10a1
	jr z,l10c4h		;10a3
	jr nz,l10c7h		;10a5
	ld hl,03a38h		;10a7
	ld a,(05a41h)		;10aa
	ld h,h			;10ad
	ld h,l			;10ae
	ld e,b			;10af
l10b0h:
	scf			;10b0
	ld h,h			;10b1
	ld h,l			;10b2
	ld l,(hl)		;10b3
	ld b,(hl)		;10b4
	ld h,e			;10b5
	ld e,l			;10b6
	ld l,d			;10b7
	ld c,d			;10b8
	ld c,(hl)		;10b9
	ld c,e			;10ba
l10bbh:
	ld l,d			;10bb
	ld (hl),l		;10bc
	ld h,h			;10bd
	ld (hl),e		;10be
	ld (hl),h		;10bf
	scf			;10c0
	ld h,h			;10c1
	ld d,b			;10c2
	dec l			;10c3
l10c4h:
	ld (hl),b		;10c4
	ld (hl),c		;10c5
	ld (hl),e		;10c6
l10c7h:
	dec l			;10c7
	ld b,(hl)		;10c8
	ld b,a			;10c9
	ld b,a			;10ca
	dec hl			;10cb
	ld (hl),l		;10cc
	ld l,b			;10cd
	ld l,c			;10ce
	ld (hl),059h		;10cf
	ld e,l			;10d1
	ld e,l			;10d2
	ld l,d			;10d3
	ld l,02fh		;10d4
	ld a,b			;10d6
	ld (02322h),a		;10d7
	inc hl			;10da
	inc h			;10db
	ld (02323h),hl		;10dc
	inc h			;10df
	ld c,h			;10e0
	ld c,l			;10e1
	ld c,l			;10e2
	ld d,d			;10e3
	jr nc,l115dh		;10e4
	inc sp			;10e6
	ld sp,02625h		;10e7
	daa			;10ea
	jr z,l1112h		;10eb
	ld h,027h		;10ed
	jr z,l1150h		;10ef
	ld h,h			;10f1
	ld h,l			;10f2
	ld e,(hl)		;10f3
	jr nc,l1129h		;10f4
	inc sp			;10f6
	ld sp,02625h		;10f7
	daa			;10fa
	jr z,l1122h		;10fb
	ld h,027h		;10fd
	jr z,l1155h		;10ff
	ld d,c			;1101
	ld e,e			;1102
	ld d,d			;1103
	jr nc,l1139h		;1104
	ld (hl),a		;1106
	ld sp,02322h		;1107
	inc hl			;110a
	inc h			;110b
	ld (02323h),hl		;110c
	inc h			;110f
	ld e,h			;1110
	ld b,a			;1111
l1112h:
	ld b,a			;1112
	ld c,b			;1113
	ld b,l			;1114
	ld c,c			;1115
	ld d,b			;1116
	ld e,(hl)		;1117
	add hl,hl		;1118
	ld d,c			;1119
	ld d,c			;111a
	ld d,d			;111b
	ld l,02fh		;111c
	cpl			;111e
	ld (04e4ah),a		;111f
l1122h:
	ld c,e			;1122
	ld c,b			;1123
	ld e,a			;1124
	ld h,h			;1125
	ld h,l			;1126
	ld e,(hl)		;1127
	ld c,h			;1128
l1129h:
	ld h,b			;1129
	ld c,l			;112a
	ld d,d			;112b
	jr nc,l1161h		;112c
	inc sp			;112e
	ld sp,06d5fh		;112f
	ld h,l			;1132
	ld e,(hl)		;1133
	ld c,a			;1134
	ld c,c			;1135
	ld l,c			;1136
	ld e,(hl)		;1137
	ld c,a			;1138
l1139h:
	ld c,c			;1139
	ld d,b			;113a
	ld e,(hl)		;113b
	jr nc,l1171h		;113c
	ld (hl),a		;113e
	ld sp,0645fh		;113f
	ld h,l			;1142
	dec l			;1143
	ld c,d			;1144
	ld c,(hl)		;1145
	ld c,(hl)		;1146
	dec hl			;1147
	ld d,h			;1148
	ld h,d			;1149
	ld h,d			;114a
	ld d,a			;114b
	jr nc,l1181h		;114c
	inc sp			;114e
	dec (hl)		;114f
l1150h:
	ld c,a			;1150
	ld c,c			;1151
	ld d,b			;1152
	ld e,(hl)		;1153
	ld e,a			;1154
l1155h:
	ld c,c			;1155
	ld d,b			;1156
	ld l,(hl)		;1157
	ld b,(hl)		;1158
	ld e,l			;1159
	ld e,l			;115a
	ld c,b			;115b
	ld d,h			;115c
l115dh:
	ld d,c			;115d
	ld d,c			;115e
	ld b,e			;115f
	ld e,a			;1160
l1161h:
	ld l,b			;1161
	ld h,l			;1162
	ld e,(hl)		;1163
	ld c,d			;1164
	ld c,(hl)		;1165
	ld c,(hl)		;1166
	ld c,b			;1167
	ld c,d			;1168
	ld c,e			;1169
	ld c,(hl)		;116a
	ld c,b			;116b
	ld b,l			;116c
	ld c,c			;116d
	ld d,b			;116e
	ld e,(hl)		;116f
	ld c,h			;1170
l1171h:
	ld h,b			;1171
	ld c,l			;1172
	ld d,d			;1173
	ld d,h			;1174
	ld h,d			;1175
	ld h,d			;1176
	ld b,e			;1177
	ld d,h			;1178
	ld d,c			;1179
	ld e,e			;117a
	inc l			;117b
	jr nc,l11b1h		;117c
	inc sp			;117e
	dec (hl)		;117f
	ld e,a			;1180
l1181h:
	ld d,e			;1181
	ld d,e			;1182
	dec l			;1183
	jr nc,l11fdh		;1184
	inc sp			;1186
	dec (hl)		;1187
	ld (02323h),hl		;1188
	inc h			;118b
	ld (02323h),hl		;118c
	inc h			;118f
	ld e,c			;1190
	ld d,e			;1191
	ld c,e			;1192
	dec hl			;1193
	add hl,hl		;1194
	ld e,e			;1195
	ld e,e			;1196
	inc l			;1197
	ld hl,(05049h)		;1198
	ld e,b			;119b
	ld l,02fh		;119c
	cpl			;119e
	inc (hl)		;119f
	ld e,a			;11a0
	ld h,h			;11a1
	ld l,e			;11a2
	ld e,(hl)		;11a3
	ld d,h			;11a4
	ld d,c			;11a5
	ld d,c			;11a6
	ld d,d			;11a7
	ld c,d			;11a8
	ld c,e			;11a9
	ld c,(hl)		;11aa
	ld c,b			;11ab
	ld b,l			;11ac
	ld h,h			;11ad
	ld h,l			;11ae
	ld b,h			;11af
	add hl,hl		;11b0
l11b1h:
	ld d,l			;11b1
	ld d,l			;11b2
	ld b,e			;11b3
	add hl,hl		;11b4
	ld d,l			;11b5
	ld d,l			;11b6
	inc l			;11b7
	ld hl,(05d5dh)		;11b8
	dec l			;11bb
	ld l,033h		;11bc
	inc sp			;11be
	inc (hl)		;11bf
	add hl,hl		;11c0
	ld h,d			;11c1
	ld e,e			;11c2
	ld d,d			;11c3
	ld hl,(05049h)		;11c4
	ld e,(hl)		;11c7
	ld hl,(06968h)		;11c8
	ld e,(hl)		;11cb
	ld l,02fh		;11cc
	cpl			;11ce
	ld (0635ch),a		;11cf
	ld h,e			;11d2
	dec hl			;11d3
	ld b,(hl)		;11d4
	ld c,e			;11d5
	ld c,(hl)		;11d6
	dec hl			;11d7
	ld c,d			;11d8
	ld e,l			;11d9
	ld d,e			;11da
	dec hl			;11db
	ld b,l			;11dc
	ld h,(hl)		;11dd
	ld h,a			;11de
	dec l			;11df
	ld c,d			;11e0
	ld c,(hl)		;11e1
	ld c,(hl)		;11e2
	ld c,b			;11e3
	ld d,h			;11e4
	ld d,c			;11e5
	ld e,e			;11e6
	ld b,e			;11e7
	ld c,d			;11e8
	ld c,(hl)		;11e9
	ld c,(hl)		;11ea
	dec hl			;11eb
	ld b,(hl)		;11ec
	ld d,e			;11ed
	ld e,l			;11ee
	dec hl			;11ef
	add hl,hl		;11f0
	ld d,c			;11f1
	ld d,c			;11f2
	ld d,d			;11f3
	ld hl,(06766h)		;11f4
	ld l,(hl)		;11f7
	ld hl,(06968h)		;11f8
	ld l,(hl)		;11fb
	ld e,c			;11fc
l11fdh:
	ld c,e			;11fd
	ld c,e			;11fe
	ld c,b			;11ff
	ld c,d			;1200
	ld c,(hl)		;1201
	ld c,(hl)		;1202
	ld l,d			;1203
	ld e,h			;1204
	ld d,e			;1205
	ld e,l			;1206
	ld c,b			;1207
	ld c,d			;1208
	ld d,e			;1209
	ld d,e			;120a
	ld l,d			;120b
	ld l,h			;120c
	ld c,e			;120d
	ld c,(hl)		;120e
	ld l,d			;120f
	ld (02323h),hl		;1210
	inc h			;1213
	dec h			;1214
	ld h,027h		;1215
	jr z,$+33		;1217
	jr nz,l123bh		;1219
	ld hl,02625h		;121b
	daa			;121e
	jr z,$+39		;121f
	ld h,027h		;1221
	jr z,l124ah		;1223
	ld h,027h		;1225
	jr z,$+36		;1227
	inc hl			;1229
	inc hl			;122a
	inc h			;122b
	ld (02323h),hl		;122c
	inc h			;122f
	dec h			;1230
	ld h,027h		;1231
	jr z,$+33		;1233
	jr nz,$+34		;1235
	ld hl,02322h		;1237
	inc hl			;123a
l123bh:
	inc h			;123b
	dec h			;123c
	ld h,027h		;123d
	jr z,l1263h		;123f
	inc hl			;1241
	inc hl			;1242
	inc h			;1243
	rra			;1244
	jr nz,l1267h		;1245
	ld hl,0201fh		;1247
l124ah:
	jr nz,l126dh		;124a
	rra			;124c
	jr nz,l126fh		;124d
	ld hl,0241fh		;124f
	inc h			;1252
	ld hl,0201fh		;1253
	jr nz,l1279h		;1256
	ld (02323h),hl		;1258
	inc h			;125b
	ld (02323h),hl		;125c
	inc h			;125f
	jr nz,l1283h		;1260
	rra			;1262
l1263h:
	jr nz,$+41		;1263
	jr z,$+39		;1265
l1267h:
	ld h,023h		;1267
	inc h			;1269
	ld (l1f23h),hl		;126a
l126dh:
	jr nz,l128fh		;126d
l126fh:
	ld hl,0201fh		;126f
	jr nz,$+35		;1272
	dec h			;1274
	ld h,027h		;1275
	jr z,l129eh		;1277
l1279h:
	ld h,027h		;1279
	jr z,$+39		;127b
	ld h,027h		;127d
	jr z,l12a3h		;127f
	inc hl			;1281
	inc hl			;1282
l1283h:
	inc h			;1283
	dec h			;1284
	ld h,027h		;1285
	jr z,$+39		;1287
	ld h,027h		;1289
	jr z,l12ach		;128b
	jr nz,l12afh		;128d
l128fh:
	ld hl,02322h		;128f
	inc hl			;1292
	inc h			;1293
	ld (02323h),hl		;1294
	inc h			;1297
	rra			;1298
	jr nz,l12bbh		;1299
	ld hl,02322h		;129b
l129eh:
	inc hl			;129e
	inc h			;129f
	dec h			;12a0
	ld h,027h		;12a1
l12a3h:
	jr z,$+39		;12a3
	ld h,027h		;12a5
	jr z,l12cbh		;12a7
	inc hl			;12a9
	inc hl			;12aa
	inc h			;12ab
l12ach:
	dec h			;12ac
	ld h,027h		;12ad
l12afh:
	jr z,l12b1h		;12af
l12b1h:
	nop			;12b1
	nop			;12b2
	nop			;12b3
	nop			;12b4
	nop			;12b5
	nop			;12b6
	nop			;12b7
	nop			;12b8
	nop			;12b9
	nop			;12ba
l12bbh:
	nop			;12bb
	rra			;12bc
	jr nz,l12dfh		;12bd
	ld hl,l0000h		;12bf
	nop			;12c2
	nop			;12c3
	nop			;12c4
	nop			;12c5
	nop			;12c6
	nop			;12c7
	rra			;12c8
	jr nz,l12ebh		;12c9
l12cbh:
	ld hl,02625h		;12cb
	daa			;12ce
	jr z,$+36		;12cf
	inc hl			;12d1
	inc hl			;12d2
	inc h			;12d3
	ld (02323h),hl		;12d4
	inc h			;12d7
	rra			;12d8
	jr nz,l12fbh		;12d9
	ld hl,l0000h		;12db
	nop			;12de
l12dfh:
	nop			;12df
	nop			;12e0
	nop			;12e1
	nop			;12e2
	nop			;12e3
	rra			;12e4
	jr nz,l1307h		;12e5
	ld hl,02322h		;12e7
	inc hl			;12ea
l12ebh:
	inc h			;12eb
	ld (02323h),hl		;12ec
	inc h			;12ef
	xor d			;12f0
	pop bc			;12f1
	jp nz,0a2abh		;12f2
	cp d			;12f5
	cp e			;12f6
	or e			;12f7
	or a			;12f8
	or e			;12f9
	cp b			;12fa
l12fbh:
	cp (hl)			;12fb
	and d			;12fc
	cp e			;12fd
	cp l			;12fe
	cp b			;12ff
	xor e			;1300
	xor h			;1301
	xor e			;1302
	xor e			;1303
	or e			;1304
	or c			;1305
	or d			;1306
l1307h:
	or c			;1307
	cp (hl)			;1308
	or b			;1309
	cp b			;130a
	or b			;130b
	or d			;130c
	cp e			;130d
	cp l			;130e
	cp b			;130f
	xor e			;1310
	xor h			;1311
	xor e			;1312
	xor l			;1313
	or e			;1314
	or h			;1315
	or e			;1316
	or (hl)			;1317
	or c			;1318
	cp b			;1319
	or c			;131a
	and e			;131b
	cp b			;131c
	or d			;131d
	cp b			;131e
	and e			;131f
	pop bc			;1320
	jp nz,0abc1h		;1321
	cp a			;1324
	cp b			;1325
	cp b			;1326
	or b			;1327
	or c			;1328
	or h			;1329
	or h			;132a
	or e			;132b
	or e			;132c
	cp d			;132d
	cp e			;132e
	or e			;132f
	and d			;1330
	cp e			;1331
	cp b			;1332
	and e			;1333
	and d			;1334
	cp h			;1335
	cp e			;1336
	or (hl)			;1337
	and d			;1338
	cp d			;1339
	or d			;133a
	and e			;133b
	or a			;133c
	cp a			;133d
	cp l			;133e
	or (hl)			;133f
	xor d			;1340
	xor e			;1341
	xor h			;1342
	xor l			;1343
	and d			;1344
	cp l			;1345
	cp l			;1346
	and e			;1347
	and d			;1348
	cp h			;1349
	cp h			;134a
	or (hl)			;134b
	and d			;134c
	or d			;134d
	or d			;134e
	and e			;134f
	nop			;1350
	nop			;1351
	nop			;1352
	nop			;1353
	nop			;1354
	nop			;1355
	nop			;1356
	nop			;1357
	xor d			;1358
	xor h			;1359
	jp nz,0b7abh		;135a
	jp nz,0b0b1h		;135d
	nop			;1360
	nop			;1361
	nop			;1362
	nop			;1363
	nop			;1364
	nop			;1365
	nop			;1366
	nop			;1367
	xor e			;1368
	xor h			;1369
	jp nz,0b3abh		;136a
	cp e			;136d
	or e			;136e
	or e			;136f
	nop			;1370
	nop			;1371
	nop			;1372
	nop			;1373
	nop			;1374
	nop			;1375
	nop			;1376
	nop			;1377
	xor e			;1378
	xor h			;1379
	xor e			;137a
	xor e			;137b
	or c			;137c
	cp e			;137d
	or d			;137e
	cp (hl)			;137f
	nop			;1380
	nop			;1381
	nop			;1382
	nop			;1383
	nop			;1384
	nop			;1385
	nop			;1386
	nop			;1387
	xor e			;1388
	xor h			;1389
	xor e			;138a
	xor l			;138b
	or d			;138c
	or c			;138d
	or d			;138e
	or (hl)			;138f
	xor d			;1390
	xor h			;1391
	xor e			;1392
	xor h			;1393
	and d			;1394
	or e			;1395
	or e			;1396
	or e			;1397
	xor c			;1398
	or c			;1399
	or d			;139a
	cp b			;139b
	or b			;139c
	cp b			;139d
	cp b			;139e
	or b			;139f
	or e			;13a0
	or e			;13a1
	or e			;13a2
	or (hl)			;13a3
	cp c			;13a4
	cp e			;13a5
	cp e			;13a6
	and e			;13a7
	or d			;13a8
	or c			;13a9
	or d			;13aa
	or (hl)			;13ab
	or c			;13ac
	or d			;13ad
	or d			;13ae
	and e			;13af
	nop			;13b0
	nop			;13b1
	nop			;13b2
	nop			;13b3
	nop			;13b4
	nop			;13b5
	nop			;13b6
	nop			;13b7
	xor d			;13b8
	xor e			;13b9
	xor e			;13ba
	xor l			;13bb
	or a			;13bc
	cp e			;13bd
	cp e			;13be
	or (hl)			;13bf
	xor c			;13c0
	cp e			;13c1
	cp e			;13c2
	cp b			;13c3
	or b			;13c4
	cp e			;13c5
	cp b			;13c6
	cp (hl)			;13c7
	or c			;13c8
	or d			;13c9
	or c			;13ca
	cp (hl)			;13cb
	call nz,0c2bbh		;13cc
	jp nz,0bba9h		;13cf
	or d			;13d2
	and e			;13d3
	pop bc			;13d4
	pop bc			;13d5
	jp nz,0b0a3h		;13d6
	or b			;13d9
	or b			;13da
	and e			;13db
	call nz,0bdbdh		;13dc
	and e			;13df
	cp b			;13e0
	or b			;13e1
	or b			;13e2
	or b			;13e3
	xor a			;13e4
	or c			;13e5
	or d			;13e6
	cp b			;13e7
	and d			;13e8
	or e			;13e9
	or e			;13ea
	or e			;13eb
	and h			;13ec
	and l			;13ed
	and l			;13ee
	and (hl)		;13ef
	or c			;13f0
	or d			;13f1
	or c			;13f2
	or b			;13f3
	cp c			;13f4
	cp e			;13f5
	cp e			;13f6
	cp b			;13f7
	or c			;13f8
	cp d			;13f9
	or d			;13fa
	or e			;13fb
	and l			;13fc
	and (hl)		;13fd
	and (hl)		;13fe
	and l			;13ff
	cp c			;1400
	cp a			;1401
l1402h:
	cp e			;1402
l1403h:
	cp b			;1403
	or d			;1404
	or c			;1405
	cp l			;1406
	cp b			;1407
	or d			;1408
	or c			;1409
	or d			;140a
	cp b			;140b
	and l			;140c
	and (hl)		;140d
	push bc			;140e
	and l			;140f
	cp c			;1410
	cp e			;1411
	cp e			;1412
	and e			;1413
	or c			;1414
	or d			;1415
	or d			;1416
	and e			;1417
	or e			;1418
	cp e			;1419
	cp e			;141a
	or (hl)			;141b
	and l			;141c
	and (hl)		;141d
	and (hl)		;141e
	and a			;141f
	or d			;1420
	or c			;1421
	or d			;1422
	cp b			;1423
	cp c			;1424
	or c			;1425
	or d			;1426
	cp a			;1427
	or b			;1428
	cp b			;1429
	cp b			;142a
	or b			;142b
	or e			;142c
	or e			;142d
	or e			;142e
	xor (hl)		;142f
	cp c			;1430
	cp l			;1431
	cp e			;1432
	cp b			;1433
	or c			;1434
	or d			;1435
	or d			;1436
	or b			;1437
	or c			;1438
	or c			;1439
	or d			;143a
	or b			;143b
	xor a			;143c
	or c			;143d
	or d			;143e
	cp b			;143f
	or c			;1440
	cp d			;1441
	or d			;1442
	or e			;1443
	or e			;1444
	cp e			;1445
	cp e			;1446
	xor (hl)		;1447
	or e			;1448
	or e			;1449
	cp b			;144a
	and e			;144b
	and l			;144c
	and (hl)		;144d
	and (hl)		;144e
	and a			;144f
	cp c			;1450
	or e			;1451
	or e			;1452
	and e			;1453
	and l			;1454
	push bc			;1455
	and (hl)		;1456
	and a			;1457
	nop			;1458
	nop			;1459
	nop			;145a
	nop			;145b
	nop			;145c
	nop			;145d
	nop			;145e
	nop			;145f
	or a			;1460
	or e			;1461
	or c			;1462
	and e			;1463
	and d			;1464
	cp b			;1465
	cp b			;1466
	and e			;1467
	and d			;1468
	or c			;1469
	or d			;146a
	or (hl)			;146b
	and h			;146c
	and l			;146d
	and l			;146e
	and a			;146f
	cp c			;1470
	cp e			;1471
	cp (hl)			;1472
	cp b			;1473
	or e			;1474
	or e			;1475
	or e			;1476
	or e			;1477
	or c			;1478
	or c			;1479
	or d			;147a
	or b			;147b
	xor a			;147c
	cp e			;147d
	cp e			;147e
	xor (hl)		;147f
	and d			;1480
	or h			;1481
	or h			;1482
	xor (hl)		;1483
	and d			;1484
	or h			;1485
	or h			;1486
	and e			;1487
	and d			;1488
	cp b			;1489
	cp b			;148a
	and e			;148b
	call nz,0a6a6h		;148c
	and c			;148f
	and d			;1490
	cp e			;1491
	cp b			;1492
	or e			;1493
	and d			;1494
	or c			;1495
	or d			;1496
	cp b			;1497
	and d			;1498
	cp l			;1499
	cp l			;149a
	cp b			;149b
	and h			;149c
	and l			;149d
	and l			;149e
	and (hl)		;149f
	cp b			;14a0
	cp l			;14a1
	cp l			;14a2
	and e			;14a3
	or b			;14a4
	or c			;14a5
	or d			;14a6
	and e			;14a7
	or c			;14a8
	cp b			;14a9
	or e			;14aa
	and e			;14ab
	xor a			;14ac
	cp h			;14ad
	cp h			;14ae
	and e			;14af
	or c			;14b0
	or d			;14b1
	or d			;14b2
	or b			;14b3
	or e			;14b4
	or e			;14b5
	cp b			;14b6
	xor (hl)		;14b7
	or c			;14b8
	or d			;14b9
	or d			;14ba
	and e			;14bb
	or b			;14bc
	or e			;14bd
	cp b			;14be
	and e			;14bf
	and d			;14c0
	or e			;14c1
	or e			;14c2
	or e			;14c3
	and d			;14c4
	cp h			;14c5
	cp h			;14c6
	cp a			;14c7
	and d			;14c8
	cp l			;14c9
	cp l			;14ca
	cp a			;14cb
	or a			;14cc
	or c			;14cd
	or c			;14ce
	or b			;14cf
	or c			;14d0
	or d			;14d1
	or d			;14d2
	cp (hl)			;14d3
	cp b			;14d4
	or e			;14d5
	cp b			;14d6
	or b			;14d7
	or c			;14d8
	or e			;14d9
	or e			;14da
	cp (hl)			;14db
	cp a			;14dc
	or c			;14dd
	or d			;14de
	cp (hl)			;14df
	rra			;14e0
	jr nz,l1503h		;14e1
	ld hl,l0000h		;14e3
	nop			;14e6
	nop			;14e7
	ld (02323h),hl		;14e8
	inc h			;14eb
	rra			;14ec
	jr nz,l150fh		;14ed
	ld hl,0abb0h		;14ef
	jp nz,0b9ach		;14f2
	or c			;14f5
	or d			;14f6
	cp b			;14f7
	xor c			;14f8
	cp l			;14f9
	cp e			;14fa
	cp a			;14fb
	call nz,0a1bah		;14fc
	cp b			;14ff
	xor d			;1500
	xor e			;1501
	ret nz			;1502
l1503h:
	jp nz,0bbb7h		;1503
	cp (hl)			;1506
l1507h:
	cp b			;1507
	jp 0bbc0h		;1508
	xor b			;150b
l150ch:
	cp a			;150c
	cp b			;150d
	cp e			;150e
l150fh:
	or b			;150f
	xor e			;1510
	xor h			;1511
	xor e			;1512
	xor e			;1513
	or c			;1514
	cp b			;1515
	cp b			;1516
	or e			;1517
	or c			;1518
	or d			;1519
	or c			;151a
	cp (hl)			;151b
	or c			;151c
	or d			;151d
	cp d			;151e
l151fh:
	or e			;151f
	cp b			;1520
	or e			;1521
	or e			;1522
	or b			;1523
	cp c			;1524
	or c			;1525
	or d			;1526
	cp b			;1527
	xor c			;1528
	cp e			;1529
	cp (hl)			;152a
	xor b			;152b
	cp c			;152c
	cp e			;152d
	cp e			;152e
	cp a			;152f
	or a			;1530
	cp b			;1531
	cp b			;1532
	cp (hl)			;1533
	and h			;1534
	and l			;1535
	add a,0a6h		;1536
	or c			;1538
	or d			;1539
	or d			;153a
	or e			;153b
	and l			;153c
	push bc			;153d
	and (hl)		;153e
	and l			;153f
	cp c			;1540
	cp e			;1541
	cp e			;1542
	cp b			;1543
	and l			;1544
	and (hl)		;1545
	and (hl)		;1546
	and l			;1547
	or e			;1548
	or e			;1549
	cp b			;154a
	or e			;154b
	and l			;154c
	and (hl)		;154d
	push bc			;154e
	and l			;154f
	nop			;1550
	nop			;1551
	nop			;1552
	nop			;1553
	nop			;1554
	nop			;1555
	nop			;1556
	nop			;1557
	nop			;1558
	nop			;1559
	nop			;155a
	nop			;155b
	nop			;155c
	ld bc,l0000h		;155d
	nop			;1560
	nop			;1561
	nop			;1562
	ld (bc),a		;1563
	nop			;1564
	ld bc,l0000h		;1565
	jr z,l1507h		;1568
	sbc a,(hl)		;156a
	jr c,l150ch		;156b
	and b			;156d
	and c			;156e
	and d			;156f
	and e			;1570
	and h			;1571
	and l			;1572
	and (hl)		;1573
	ld c,b			;1574
	ld h,l			;1575
	ld h,l			;1576
	ld e,b			;1577
	dec h			;1578
	ld h,036h		;1579
	dec (hl)		;157b
	jr nc,$+54		;157c
	ld b,h			;157e
	ld b,b			;157f
	daa			;1580
	jr z,l15bbh		;1581
	scf			;1583
	ld (02322h),a		;1584
	ld b,d			;1587
	dec h			;1588
	ld h,036h		;1589
	dec (hl)		;158b
	daa			;158c
	jr z,l15c7h		;158d
	scf			;158f
	add hl,hl		;1590
	ld hl,(0393ah)		;1591
	dec hl			;1594
	inc l			;1595
	inc a			;1596
	dec sp			;1597
	dec h			;1598
	ld h,036h		;1599
	dec (hl)		;159b
	jr nc,$+54		;159c
	ld b,h			;159e
	ld b,b			;159f
	add hl,hl		;15a0
	jr nz,l15c4h		;15a1
	add hl,sp		;15a3
	ld (02322h),a		;15a4
	ld b,d			;15a7
	dec h			;15a8
	ld h,036h		;15a9
	dec (hl)		;15ab
	jr nc,l15efh		;15ac
	ld sp,02740h		;15ae
	jr z,l15ebh		;15b1
	scf			;15b3
	add hl,hl		;15b4
	inc sp			;15b5
	ld b,e			;15b6
	add hl,sp		;15b7
	add hl,hl		;15b8
	inc sp			;15b9
	ld b,e			;15ba
l15bbh:
	add hl,sp		;15bb
	inc l			;15bc
	dec a			;15bd
	dec l			;15be
	inc a			;15bf
	jr nc,l15f3h		;15c0
	ld b,c			;15c2
	ld b,b			;15c3
l15c4h:
	jr nc,$+86		;15c4
	ld h,h			;15c6
l15c7h:
	ld b,b			;15c7
	add hl,hl		;15c8
	dec l			;15c9
	dec a			;15ca
	add hl,sp		;15cb
	ld l,02fh		;15cc
	ccf			;15ce
	ld a,025h		;15cf
	ld h,036h		;15d1
	dec (hl)		;15d3
	daa			;15d4
	jr z,$+58		;15d5
	scf			;15d7
	ld (02223h),a		;15d8
	ld b,d			;15db
	daa			;15dc
	jr z,l1617h		;15dd
	scf			;15df
	add hl,hl		;15e0
	inc sp			;15e1
	ld b,e			;15e2
	add hl,sp		;15e3
	ld (02322h),a		;15e4
	ld b,d			;15e7
	dec h			;15e8
	ld h,036h		;15e9
l15ebh:
	dec (hl)		;15eb
	daa			;15ec
	jr z,l1627h		;15ed
l15efh:
	scf			;15ef
	ld e,l			;15f0
	inc a			;15f1
	inc l			;15f2
l15f3h:
	ld c,l			;15f3
	ld hl,(05f4fh)		;15f4
	ld a,(02427h)		;15f7
	inc h			;15fa
	scf			;15fb
	add hl,hl		;15fc
	ld (03923h),hl		;15fd
	ld b,l			;1600
	ld b,(hl)		;1601
	ld d,(hl)		;1602
	ld d,l			;1603
	daa			;1604
	inc sp			;1605
	ld b,e			;1606
	scf			;1607
	dec h			;1608
	ld h,036h		;1609
	dec (hl)		;160b
	jr z,l162eh		;160c
	ld hl,02a38h		;160e
	cpl			;1611
	ccf			;1612
	ld a,(05164h)		;1613
	ld h,c			;1616
l1617h:
	ld d,h			;1617
	daa			;1618
	jr z,l1653h		;1619
	scf			;161b
	dec h			;161c
	ld h,036h		;161d
	dec (hl)		;161f
	add hl,hl		;1620
	jr nz,l1644h		;1621
	add hl,sp		;1623
	dec h			;1624
	ld h,036h		;1625
l1627h:
	dec (hl)		;1627
	nop			;1628
	nop			;1629
	nop			;162a
	nop			;162b
	nop			;162c
	nop			;162d
l162eh:
	nop			;162e
	nop			;162f
	dec h			;1630
	ld h,036h		;1631
	dec (hl)		;1633
	dec a			;1634
	ld b,h			;1635
	inc (hl)		;1636
	dec l			;1637
	ld d,d			;1638
	ld l,b			;1639
	ld l,b			;163a
	ld h,d			;163b
	ld b,a			;163c
	ld c,b			;163d
	ld e,b			;163e
	ld d,a			;163f
	ld d,b			;1640
	ld d,h			;1641
	ld h,h			;1642
	ld h,b			;1643
l1644h:
	ld b,l			;1644
	ld b,(hl)		;1645
	ld d,(hl)		;1646
	ld d,l			;1647
	ld b,h			;1648
	ld sp,03441h		;1649
	ld c,d			;164c
	ld c,a			;164d
	ld e,a			;164e
	ld e,d			;164f
	ld c,b			;1650
	ld h,(hl)		;1651
	ld h,a			;1652
l1653h:
	ld e,b			;1653
	ld b,l			;1654
	ld b,(hl)		;1655
	ld d,(hl)		;1656
	ld d,l			;1657
	ld b,l			;1658
	ld b,(hl)		;1659
	ld d,(hl)		;165a
	ld d,l			;165b
	ld c,c			;165c
	ld h,(hl)		;165d
	ld h,a			;165e
	ld e,c			;165f
	ld c,(hl)		;1660
	ld c,l			;1661
	ld e,l			;1662
	ld e,(hl)		;1663
	ld b,a			;1664
	ld c,b			;1665
	ld e,b			;1666
	ld d,a			;1667
	ld d,b			;1668
	inc (hl)		;1669
	ld b,h			;166a
	ld h,b			;166b
	ld d,b			;166c
	ld d,c			;166d
	ld h,c			;166e
	ld h,b			;166f
	ld c,h			;1670
	ld c,l			;1671
	ld e,l			;1672
	ld e,h			;1673
	ld c,c			;1674
	ld d,e			;1675
	ld h,e			;1676
	ld e,c			;1677
	ld b,a			;1678
	ld c,b			;1679
	ld e,b			;167a
	ld d,a			;167b
	ld b,l			;167c
	ld b,(hl)		;167d
	ld d,(hl)		;167e
	ld d,l			;167f
	ld c,(hl)		;1680
	ld c,a			;1681
	ld e,a			;1682
	ld e,(hl)		;1683
	ld c,c			;1684
	ld c,l			;1685
	ld e,l			;1686
	ld e,c			;1687
	ld d,d			;1688
	ld l,b			;1689
	ld l,c			;168a
	ld h,d			;168b
	ld c,c			;168c
	ld d,e			;168d
	ld h,e			;168e
	ld e,c			;168f
	ld b,a			;1690
	ld c,b			;1691
	ld e,b			;1692
	ld d,a			;1693
	ld d,d			;1694
	ld l,b			;1695
	ld l,c			;1696
	ld h,d			;1697
	ld c,d			;1698
	cpl			;1699
	ccf			;169a
	ld e,d			;169b
	dec a			;169c
	ld e,h			;169d
	ld c,h			;169e
	dec l			;169f
	daa			;16a0
	ld c,b			;16a1
	ld e,b			;16a2
	scf			;16a3
	ld b,l			;16a4
	ld b,(hl)		;16a5
	ld d,(hl)		;16a6
	ld d,l			;16a7
	ld b,a			;16a8
	ld d,e			;16a9
	ld h,e			;16aa
	ld d,a			;16ab
	dec h			;16ac
	ld h,036h		;16ad
	dec (hl)		;16af
	ld c,c			;16b0
	ld l,b			;16b1
	ld l,c			;16b2
	ld e,c			;16b3
	ld b,a			;16b4
	ld l,d			;16b5
	ld l,d			;16b6
	ld d,a			;16b7
	ld c,e			;16b8
	ld c,h			;16b9
	ld e,h			;16ba
	ld e,e			;16bb
	ld c,c			;16bc
	ld c,d			;16bd
	ld e,d			;16be
	ld e,c			;16bf
	ld b,a			;16c0
	ld c,b			;16c1
	ld e,b			;16c2
	ld d,a			;16c3
	ld b,l			;16c4
	ld b,(hl)		;16c5
	ld d,(hl)		;16c6
	ld d,l			;16c7
	ld d,d			;16c8
	ld (06223h),hl		;16c9
	ld c,c			;16cc
	ld h,(hl)		;16cd
	ld h,a			;16ce
	ld e,c			;16cf
	ld d,b			;16d0
	ld d,h			;16d1
	ld h,h			;16d2
	ld h,b			;16d3
	ld b,l			;16d4
	ld b,(hl)		;16d5
	ld d,(hl)		;16d6
	ld d,l			;16d7
	ld c,c			;16d8
	ld d,e			;16d9
	ld h,e			;16da
	ld e,c			;16db
	daa			;16dc
	ld c,b			;16dd
	ld e,b			;16de
	scf			;16df
	ld d,b			;16e0
	ld h,c			;16e1
	ld d,c			;16e2
	ld h,b			;16e3
	ld b,l			;16e4
	ld b,(hl)		;16e5
	ld d,(hl)		;16e6
	ld d,l			;16e7
	nop			;16e8
	nop			;16e9
	nop			;16ea
	nop			;16eb
	nop			;16ec
	nop			;16ed
	cp 000h			;16ee
	nop			;16f0
	nop			;16f1
	nop			;16f2
	nop			;16f3
	nop			;16f4
	nop			;16f5
	cp (hl)			;16f6
	cp e			;16f7
	nop			;16f8
	nop			;16f9
	nop			;16fa
	nop			;16fb
	nop			;16fc
	nop			;16fd
	nop			;16fe
	cp e			;16ff
	cp (hl)			;1700
	cp e			;1701
	inc e			;1702
	dec e			;1703
	ld (hl),d		;1704
	ld (hl),c		;1705
	ret nz			;1706
	cp a			;1707
	nop			;1708
	nop			;1709
	nop			;170a
	nop			;170b
	nop			;170c
	nop			;170d
	cp 0beh			;170e
	ld e,072h		;1710
	cp h			;1712
l1713h:
	cp h			;1713
	ld (hl),c		;1714
	jp nz,0c2c2h		;1715
	nop			;1718
	rst 38h			;1719
	nop			;171a
	nop			;171b
	cp e			;171c
	cp (hl)			;171d
	cp e			;171e
	inc e			;171f
	cp h			;1720
	cp h			;1721
	cp h			;1722
	ret nz			;1723
	jp nz,0c3c2h		;1724
	cp l			;1727
	cp e			;1728
	cp (hl)			;1729
	cp e			;172a
	ld (hl),d		;172b
	dec e			;172c
	ld e,0bdh		;172d
	ret nz			;172f
	cp a			;1730
	ld (hl),c		;1731
	cp e			;1732
	cp a			;1733
	pop bc			;1734
	ld (hl),d		;1735
	cp a			;1736
	cp a			;1737
	ld (hl),c		;1738
	ret nz			;1739
	cp a			;173a
	ld (hl),c		;173b
	cp l			;173c
	ld (hl),b		;173d
	pop bc			;173e
	ld (hl),d		;173f
	jp 0bbbeh		;1740
	ret nz			;1743
	cp a			;1744
	ld (hl),d		;1745
	ld (hl),c		;1746
	cp a			;1747
	nop			;1748
	nop			;1749
	nop			;174a
	nop			;174b
	nop			;174c
	rst 38h			;174d
	nop			;174e
	nop			;174f
	nop			;1750
	nop			;1751
	cp (hl)			;1752
	jr l17c5h		;1753
	pop bc			;1755
	ret nz			;1756
	ld (hl),c		;1757
	nop			;1758
	nop			;1759
	nop			;175a
	nop			;175b
	nop			;175c
	nop			;175d
	nop			;175e
	nop			;175f
	add hl,de		;1760
	cp (hl)			;1761
	nop			;1762
	cp 071h			;1763
	jp 0bbbeh		;1765
	nop			;1768
	nop			;1769
	nop			;176a
	nop			;176b
	nop			;176c
	nop			;176d
	nop			;176e
	nop			;176f
	nop			;1770
	nop			;1771
	nop			;1772
	nop			;1773
	jr l178fh		;1774
	cp (hl)			;1776
	cp e			;1777
	nop			;1778
	nop			;1779
	nop			;177a
	nop			;177b
	nop			;177c
	nop			;177d
	rst 38h			;177e
	nop			;177f
	nop			;1780
	nop			;1781
	nop			;1782
	nop			;1783
	nop			;1784
	cp e			;1785
	jr l17a1h		;1786
	ret nz			;1788
	cp a			;1789
	ld (hl),d		;178a
	ld (hl),c		;178b
	ld (hl),b		;178c
	pop bc			;178d
	ld l,l			;178e
l178fh:
	ld l,(hl)		;178f
	nop			;1790
	nop			;1791
	nop			;1792
	pop bc			;1793
	nop			;1794
	rst 38h			;1795
	nop			;1796
	nop			;1797
	cp a			;1798
	cp h			;1799
	cp h			;179a
	cp h			;179b
	ld l,a			;179c
	ret nz			;179d
	jp nz,l00c2h		;179e
l17a1h:
	nop			;17a1
	nop			;17a2
	ld (hl),b		;17a3
	nop			;17a4
	nop			;17a5
	nop			;17a6
	nop			;17a7
	cp h			;17a8
	cp h			;17a9
	cp l			;17aa
	jp 0c2c2h		;17ab
	jp nz,0c172h		;17ae
	ld (hl),b		;17b1
	pop bc			;17b2
	ld l,l			;17b3
	nop			;17b4
	nop			;17b5
	rst 38h			;17b6
	nop			;17b7
	cp e			;17b8
	ret nz			;17b9
	ld (hl),c		;17ba
	ld (hl),c		;17bb
	ld (hl),c		;17bc
	cp a			;17bd
	pop bc			;17be
	ld (hl),c		;17bf
	ld l,(hl)		;17c0
	ld l,a			;17c1
	jp 0c172h		;17c2
l17c5h:
	ld (hl),b		;17c5
	pop bc			;17c6
	ret nz			;17c7
	inc d			;17c8
	inc de			;17c9
	adc a,l			;17ca
	adc a,(hl)		;17cb
	sbc a,(hl)		;17cc
	sbc a,l			;17cd
	xor b			;17ce
	cp e			;17cf
	ld (de),a		;17d0
	sub e			;17d1
	adc a,e			;17d2
	sub l			;17d3
	dec d			;17d4
	xor e			;17d5
	and e			;17d6
	xor l			;17d7
	sbc a,d			;17d8
	sbc a,c			;17d9
	sbc a,b			;17da
	nop			;17db
	and b			;17dc
	sbc a,l			;17dd
	sbc a,h			;17de
	sbc a,e			;17df
	and c			;17e0
	sub a			;17e1
l17e2h:
	sbc a,a			;17e2
	sbc a,(hl)		;17e3
	cp c			;17e4
	xor a			;17e5
	or a			;17e6
	or (hl)			;17e7
	sub h			;17e8
	jr z,l1854h		;17e9
	ld l,b			;17eb
	nop			;17ec
	ld l,065h		;17ed
	ld l,c			;17ef
	nop			;17f0
	pop bc			;17f1
	ld e,b			;17f2
	ld h,l			;17f3
	nop			;17f4
	sub h			;17f5
	ld d,e			;17f6
	cpl			;17f7
	ld (03823h),hl		;17f8
	and b			;17fb
	inc hl			;17fc
	ld h,l			;17fd
	ld a,000h		;17fe
	ld h,l			;1800
	ld c,b			;1801
	pop bc			;1802
	nop			;1803
	ccf			;1804
	ld h,e			;1805
	and b			;1806
	nop			;1807
	or (hl)			;1808
	or l			;1809
	sub b			;180a
	pop bc			;180b
	rla			;180c
	ld d,0a5h		;180d
	and (hl)		;180f
	nop			;1810
	xor h			;1811
	inc sp			;1812
	ld c,a			;1813
	nop			;1814
	cp e			;1815
	jr c,$+33		;1816
	cp b			;1818
	or l			;1819
	or h			;181a
	or e			;181b
	or d			;181c
	or c			;181d
	or b			;181e
	nop			;181f
	ld e,a			;1820
	ld b,e			;1821
	cp b			;1822
	nop			;1823
	rra			;1824
	jr z,l17e2h		;1825
	nop			;1827
	ld d,b			;1828
	jr z,l1863h		;1829
	ld h,b			;182b
	ld c,c			;182c
	inc sp			;182d
	ld b,e			;182e
	ld e,c			;182f
	xor h			;1830
	ld (hl),c		;1831
	cp l			;1832
	ld c,b			;1833
	nop			;1834
	jp nz,02120h		;1835
	ld d,b			;1838
	jr z,l1873h		;1839
	ld h,b			;183b
	ld c,c			;183c
	inc sp			;183d
	ld b,e			;183e
	ld e,c			;183f
	ld e,b			;1840
	ld (hl),d		;1841
	ld (hl),c		;1842
	cp b			;1843
	jr nz,l1867h		;1844
	jp nz,l0000h		;1846
	ld c,(hl)		;1849
	rra			;184a
	ld (048ach),hl		;184b
	ld l,b			;184e
	inc hl			;184f
	nop			;1850
	cp h			;1851
	ld h,(hl)		;1852
	ld h,a			;1853
l1854h:
	sub h			;1854
	cp a			;1855
	jp 06828h		;1856
	rra			;1859
	ld e,(hl)		;185a
	nop			;185b
	ld (05823h),hl		;185c
	cp b			;185f
	ld h,(hl)		;1860
	ld h,a			;1861
	cp h			;1862
l1863h:
	nop			;1863
	jr c,$-62		;1864
	cp a			;1866
l1867h:
	and b			;1867
	ld d,e			;1868
	inc de			;1869
	ld d,063h		;186a
	dec d			;186c
	inc d			;186d
	rla			;186e
	jr l188ch		;186f
	ld a,(de)		;1871
	dec e			;1872
l1873h:
	ld e,033h		;1873
	add hl,de		;1875
	inc e			;1876
	ld b,e			;1877
	nop			;1878
	nop			;1879
	nop			;187a
	nop			;187b
	nop			;187c
	nop			;187d
	nop			;187e
	nop			;187f
	nop			;1880
	rst 38h			;1881
	nop			;1882
	nop			;1883
	nop			;1884
	nop			;1885
	nop			;1886
	nop			;1887
	nop			;1888
	nop			;1889
	nop			;188a
	nop			;188b
l188ch:
	nop			;188c
	rst 38h			;188d
	nop			;188e
	nop			;188f
	nop			;1890
	nop			;1891
	nop			;1892
	nop			;1893
	nop			;1894
	nop			;1895
	nop			;1896
	cp 000h			;1897
	nop			;1899
	nop			;189a
	rst 38h			;189b
	nop			;189c
	nop			;189d
	nop			;189e
	nop			;189f
	cp 000h			;18a0
	nop			;18a2
	nop			;18a3
	nop			;18a4
	nop			;18a5
	nop			;18a6
	nop			;18a7
	nop			;18a8
	nop			;18a9
	nop			;18aa
	nop			;18ab
	nop			;18ac
	nop			;18ad
	nop			;18ae
	nop			;18af
	ld a,(05a4ah)		;18b0
	ld hl,(04645h)		;18b3
	ld d,(hl)		;18b6
	ld d,l			;18b7
	ld c,l			;18b8
	ld h,h			;18b9
	ld d,h			;18ba
	ld e,l			;18bb
	ld b,l			;18bc
	ld b,(hl)		;18bd
	ld d,(hl)		;18be
	ld d,l			;18bf
	ld b,c			;18c0
	ld c,l			;18c1
	ld e,l			;18c2
	ld sp,04645h		;18c3
	ld d,(hl)		;18c6
	ld d,l			;18c7
	cp (hl)			;18c8
	cp e			;18c9
	ld (hl),d		;18ca
	cp a			;18cb
	nop			;18cc
	nop			;18cd
	ld (hl),b		;18ce
	ld a,(de)		;18cf
	cp a			;18d0
	cp l			;18d1
	ld (hl),b		;18d2
	pop bc			;18d3
	dec de			;18d4
	ld (hl),b		;18d5
	nop			;18d6
	nop			;18d7
	ld a,(de)		;18d8
	dec de			;18d9
	ld (hl),b		;18da
	pop bc			;18db
	nop			;18dc
	nop			;18dd
	cp 000h			;18de
	nop			;18e0
	pop bc			;18e1
	ld a,(de)		;18e2
	dec de			;18e3
	nop			;18e4
	nop			;18e5
	nop			;18e6
	nop			;18e7
	nop			;18e8
	nop			;18e9
	ld (hl),b		;18ea
	pop bc			;18eb
	nop			;18ec
	nop			;18ed
	nop			;18ee
	nop			;18ef
	nop			;18f0
	nop			;18f1
	nop			;18f2
	nop			;18f3
	nop			;18f4
	nop			;18f5
	nop			;18f6
	nop			;18f7
	nop			;18f8
	nop			;18f9
	nop			;18fa
	nop			;18fb
	cp 000h			;18fc
	nop			;18fe
	nop			;18ff
	jr l197bh		;1900
	cp b			;1902
	ld a,e			;1903
	sbc a,b			;1904
	ld a,l			;1905
	xor b			;1906
	ld a,a			;1907
	sbc a,b			;1908
	add a,e			;1909
	ret pe			;190a
	add a,c			;190b
	ret c			;190c
	add a,l			;190d
	ret pe			;190e
	add a,a			;190f
	xor b			;1910
	adc a,e			;1911
	sbc a,b			;1912
	adc a,h			;1913
	ld c,b			;1914
	adc a,(hl)		;1915
	ret m			;1916
	adc a,a			;1917
	ld (03233h),a		;1918
	inc sp			;191b
	inc (hl)		;191c
	ld (03234h),a		;191d
	inc (hl)		;1920
	ld (0323fh),a		;1921
	ld (0333fh),a		;1924
	ld (03233h),a		;1927
	inc sp			;192a
	ld (0343fh),a		;192b
	ld (03233h),a		;192e
	inc (hl)		;1931
	ld (0343fh),a		;1932
	ld (03232h),a		;1935
	inc sp			;1938
	inc (hl)		;1939
	ld (0343fh),a		;193a
	ld (0323fh),a		;193d
	ccf			;1940
	inc (hl)		;1941
	ld (03334h),a		;1942
	ld (0323fh),a		;1945
	dec (hl)		;1948
	add hl,de		;1949
	add hl,sp		;194a
	rra			;194b
	dec a			;194c
	dec (hl)		;194d
	dec (hl)		;194e
	ld a,(de)		;194f
	ld a,(02320h)		;1950
	dec (hl)		;1953
	dec (hl)		;1954
	dec de			;1955
	dec sp			;1956
	ld hl,03524h		;1957
	dec (hl)		;195a
	inc e			;195b
	dec sp			;195c
	ld hl,03525h		;195d
	add hl,de		;1960
	dec e			;1961
	inc a			;1962
	ld (03d26h),hl		;1963
	ld a,(de)		;1966
	ld e,039h		;1967
	rra			;1969
	ld e,023h		;196a
	dec de			;196c
	ld e,03ah		;196d
	jr nz,l198fh		;196f
	inc h			;1971
	inc e			;1972
	ld e,03ch		;1973
	ld (0251eh),hl		;1975
	dec e			;1978
	ld (de),a		;1979
	add hl,sp		;197a
l197bh:
	rra			;197b
	ld (de),a		;197c
	ld h,01eh		;197d
	ld de,0203ah		;197f
	rlca			;1982
	ld e,015h		;1983
	jr c,l19bch		;1985
	dec (hl)		;1987
	dec c			;1988
	ld b,036h		;1989
	nop			;198b
	dec (hl)		;198c
	nop			;198d
	dec (hl)		;198e
l198fh:
	ld (bc),a		;198f
	scf			;1990
	dec (hl)		;1991
	dec (hl)		;1992
	dec (hl)		;1993
	dec (hl)		;1994
	inc bc			;1995
	jr c,l1998h		;1996
l1998h:
	nop			;1998
	nop			;1999
	dec (hl)		;199a
	inc b			;199b
	jr c,l19d3h		;199c
	dec (hl)		;199e
	dec (hl)		;199f
	dec (hl)		;19a0
	dec bc			;19a1
	ld (hl),000h		;19a2
	dec (hl)		;19a4
	nop			;19a5
	dec (hl)		;19a6
	add hl,bc		;19a7
	inc de			;19a8
	rla			;19a9
	dec (hl)		;19aa
	inc b			;19ab
	ex af,af'		;19ac
	inc c			;19ad
	jr c,l19b0h		;19ae
l19b0h:
	nop			;19b0
	nop			;19b1
	dec c			;19b2
	rlca			;19b3
	scf			;19b4
	dec (hl)		;19b5
	dec (hl)		;19b6
	dec (hl)		;19b7
	dec (hl)		;19b8
	ld (bc),a		;19b9
	ld (hl),000h		;19ba
l19bch:
	dec (hl)		;19bc
	nop			;19bd
	dec (hl)		;19be
	inc bc			;19bf
	jr c,$+55		;19c0
	dec (hl)		;19c2
	dec (hl)		;19c3
	dec c			;19c4
	rlca			;19c5
	ld (hl),000h		;19c6
	nop			;19c8
	nop			;19c9
	dec (hl)		;19ca
	inc bc			;19cb
	scf			;19cc
	dec (hl)		;19cd
	dec (hl)		;19ce
	dec (hl)		;19cf
	dec (hl)		;19d0
	ld (bc),a		;19d1
	scf			;19d2
l19d3h:
	nop			;19d3
	dec (hl)		;19d4
	nop			;19d5
	dec (hl)		;19d6
	ld (bc),a		;19d7
	scf			;19d8
	dec (hl)		;19d9
	dec (hl)		;19da
	dec (hl)		;19db
	dec (hl)		;19dc
	inc bc			;19dd
	ld (hl),000h		;19de
	nop			;19e0
	nop			;19e1
	dec (hl)		;19e2
	dec b			;19e3
	ld d,035h		;19e4
	dec (hl)		;19e6
	dec (hl)		;19e7
	dec (hl)		;19e8
	dec bc			;19e9
	ld (hl),000h		;19ea
	dec (hl)		;19ec
	nop			;19ed
	dec (hl)		;19ee
	add hl,bc		;19ef
	scf			;19f0
	dec (hl)		;19f1
	dec (hl)		;19f2
	dec (hl)		;19f3
	dec (hl)		;19f4
	dec b			;19f5
	ld (hl),000h		;19f6
	nop			;19f8
	nop			;19f9
	dec c			;19fa
	rlca			;19fb
	inc de			;19fc
	inc de			;19fd
	rla			;19fe
	dec (hl)		;19ff
l1a00h:
	inc b			;1a00
	ex af,af'		;1a01
	jr c,l1a04h		;1a02
l1a04h:
	dec (hl)		;1a04
	nop			;1a05
	dec (hl)		;1a06
	dec b			;1a07
	ld (hl),000h		;1a08
	nop			;1a0a
	nop			;1a0b
	dec (hl)		;1a0c
	inc b			;1a0d
	scf			;1a0e
	dec (hl)		;1a0f
	dec (hl)		;1a10
	dec (hl)		;1a11
	dec (hl)		;1a12
	ld (bc),a		;1a13
	scf			;1a14
	nop			;1a15
	dec (hl)		;1a16
	nop			;1a17
	dec (hl)		;1a18
	inc bc			;1a19
	rla			;1a1a
	dec (hl)		;1a1b
	inc b			;1a1c
	ex af,af'		;1a1d
	inc c			;1a1e
	ld b,037h		;1a1f
	nop			;1a21
	nop			;1a22
	nop			;1a23
	dec b			;1a24
	ld de,03538h		;1a25
	dec (hl)		;1a28
	dec c			;1a29
	inc d			;1a2a
	inc c			;1a2b
	ld d,035h		;1a2c
	dec (hl)		;1a2e
	dec (hl)		;1a2f
	dec (hl)		;1a30
	ld (bc),a		;1a31
	scf			;1a32
	nop			;1a33
	dec (hl)		;1a34
	nop			;1a35
	dec (hl)		;1a36
	inc bc			;1a37
	jr l1a6fh		;1a38
	dec (hl)		;1a3a
	dec (hl)		;1a3b
	dec (hl)		;1a3c
	dec b			;1a3d
	ld (hl),000h		;1a3e
	nop			;1a40
	nop			;1a41
	dec c			;1a42
	rlca			;1a43
	jr c,l1a7bh		;1a44
	dec (hl)		;1a46
	dec (hl)		;1a47
	dec (hl)		;1a48
	inc bc			;1a49
	scf			;1a4a
	nop			;1a4b
	dec (hl)		;1a4c
	nop			;1a4d
	dec (hl)		;1a4e
	ld (bc),a		;1a4f
	rla			;1a50
	dec (hl)		;1a51
	inc b			;1a52
	rla			;1a53
	dec (hl)		;1a54
	inc b			;1a55
	ld (hl),000h		;1a56
	dec c			;1a58
	jr l1a90h		;1a59
	ld (bc),a		;1a5b
	scf			;1a5c
	dec (hl)		;1a5d
	dec (hl)		;1a5e
	inc bc			;1a5f
	ld (hl),003h		;1a60
	ld de,03812h		;1a62
	dec b			;1a65
	jr c,l1a6dh		;1a66
	ld d,011h		;1a68
	ld (hl),009h		;1a6a
	scf			;1a6c
l1a6dh:
	add hl,bc		;1a6d
	rlca			;1a6e
l1a6fh:
	ld d,035h		;1a6f
	dec b			;1a71
	jr c,$+7		;1a72
	ld de,00d18h		;1a74
	rlca			;1a77
	ld (hl),003h		;1a78
	ld (de),a		;1a7a
l1a7bh:
	ld d,000h		;1a7b
	nop			;1a7d
	dec (hl)		;1a7e
	add hl,bc		;1a7f
	ld d,035h		;1a80
	dec (hl)		;1a82
	dec (hl)		;1a83
	dec (hl)		;1a84
	ld (bc),a		;1a85
	jr l1a88h		;1a86
l1a88h:
	dec (hl)		;1a88
	nop			;1a89
	dec c			;1a8a
	rlca			;1a8b
	jr l1ac3h		;1a8c
	dec (hl)		;1a8e
	dec (hl)		;1a8f
l1a90h:
	dec (hl)		;1a90
	inc bc			;1a91
	ld (hl),000h		;1a92
	nop			;1a94
	nop			;1a95
	dec (hl)		;1a96
	ld (bc),a		;1a97
	jr c,$+55		;1a98
	dec (hl)		;1a9a
	dec (hl)		;1a9b
	dec c			;1a9c
	ld b,037h		;1a9d
	nop			;1a9f
	dec (hl)		;1aa0
	nop			;1aa1
	dec (hl)		;1aa2
	inc bc			;1aa3
	ld de,l1713h		;1aa4
	dec (hl)		;1aa7
	inc b			;1aa8
	ld b,037h		;1aa9
	nop			;1aab
	nop			;1aac
	nop			;1aad
	dec (hl)		;1aae
	ld (bc),a		;1aaf
	jr c,$+55		;1ab0
	dec (hl)		;1ab2
	dec (hl)		;1ab3
	dec (hl)		;1ab4
	dec b			;1ab5
	ld (hl),000h		;1ab6
	dec (hl)		;1ab8
	nop			;1ab9
	dec (hl)		;1aba
	add hl,bc		;1abb
	rla			;1abc
	dec (hl)		;1abd
	inc b			;1abe
	ex af,af'		;1abf
	ld b,00ah		;1ac0
	scf			;1ac2
l1ac3h:
	nop			;1ac3
	dec (hl)		;1ac4
	nop			;1ac5
	dec (hl)		;1ac6
	add hl,bc		;1ac7
	ld d,035h		;1ac8
	dec (hl)		;1aca
	dec (hl)		;1acb
	dec (hl)		;1acc
	ld (bc),a		;1acd
	ld (hl),000h		;1ace
	nop			;1ad0
	nop			;1ad1
	dec c			;1ad2
	rlca			;1ad3
	scf			;1ad4
	dec (hl)		;1ad5
	dec (hl)		;1ad6
	dec (hl)		;1ad7
	dec (hl)		;1ad8
	add hl,bc		;1ad9
	djnz l1aefh		;1ada
	rla			;1adc
	nop			;1add
	inc b			;1ade
	ex af,af'		;1adf
	scf			;1ae0
	dec (hl)		;1ae1
	dec (hl)		;1ae2
	dec (hl)		;1ae3
	dec (hl)		;1ae4
	dec b			;1ae5
	ld d,000h		;1ae6
	dec (hl)		;1ae8
	nop			;1ae9
	dec (hl)		;1aea
	add hl,bc		;1aeb
	scf			;1aec
	dec (hl)		;1aed
	dec (hl)		;1aee
l1aefh:
	dec (hl)		;1aef
	dec (hl)		;1af0
	ld (bc),a		;1af1
	ld (hl),003h		;1af2
	scf			;1af4
	nop			;1af5
	dec c			;1af6
	rlca			;1af7
	scf			;1af8
	nop			;1af9
	inc bc			;1afa
	jr c,l1b32h		;1afb
	add hl,bc		;1afd
	ld d,00dh		;1afe
	inc de			;1b00
	ld (hl),00dh		;1b01
	ld a,(bc)		;1b03
	ld d,00dh		;1b04
	inc d			;1b06
	nop			;1b07
	dec (hl)		;1b08
	ld (bc),a		;1b09
	ld (hl),00dh		;1b0a
	ld (hl),035h		;1b0c
	dec c			;1b0e
	ld b,037h		;1b0f
	ld (bc),a		;1b11
	rla			;1b12
	nop			;1b13
	inc b			;1b14
	ex af,af'		;1b15
	scf			;1b16
	dec c			;1b17
	ld (hl),035h		;1b18
	dec (hl)		;1b1a
	inc bc			;1b1b
	inc d			;1b1c
	dec (hl)		;1b1d
	dec (hl)		;1b1e
	dec (hl)		;1b1f
	dec (hl)		;1b20
	ld (bc),a		;1b21
	ld (hl),000h		;1b22
	nop			;1b24
	nop			;1b25
	dec (hl)		;1b26
	ld (bc),a		;1b27
	dec d			;1b28
	inc de			;1b29
	ex af,af'		;1b2a
	ld (hl),00dh		;1b2b
	ld a,(bc)		;1b2d
	jr $+55			;1b2e
	dec (hl)		;1b30
	dec (hl)		;1b31
l1b32h:
	dec (hl)		;1b32
	inc bc			;1b33
	djnz l1b6ch		;1b34
	dec (hl)		;1b36
	dec (hl)		;1b37
	dec (hl)		;1b38
	ld (bc),a		;1b39
	jr l1b3ch		;1b3a
l1b3ch:
	dec (hl)		;1b3c
	nop			;1b3d
	dec (hl)		;1b3e
	dec b			;1b3f
	inc de			;1b40
	rla			;1b41
	dec (hl)		;1b42
	inc b			;1b43
	ex af,af'		;1b44
	inc c			;1b45
	ld (hl),035h		;1b46
	dec (hl)		;1b48
	dec (hl)		;1b49
	dec (hl)		;1b4a
	add hl,bc		;1b4b
	dec d			;1b4c
	inc de			;1b4d
	ex af,af'		;1b4e
	ld (hl),00dh		;1b4f
	ld a,(bc)		;1b51
	scf			;1b52
	nop			;1b53
	nop			;1b54
	nop			;1b55
	dec (hl)		;1b56
	ld (bc),a		;1b57
	scf			;1b58
	dec (hl)		;1b59
	dec (hl)		;1b5a
	dec (hl)		;1b5b
	dec (hl)		;1b5c
	dec b			;1b5d
	rla			;1b5e
	dec (hl)		;1b5f
	inc b			;1b60
	ex af,af'		;1b61
	ex af,af'		;1b62
	ld a,(bc)		;1b63
	ld (hl),035h		;1b64
	dec (hl)		;1b66
	dec (hl)		;1b67
	dec (hl)		;1b68
	inc b			;1b69
	scf			;1b6a
	nop			;1b6b
l1b6ch:
	dec (hl)		;1b6c
	nop			;1b6d
	dec (hl)		;1b6e
	inc bc			;1b6f
	scf			;1b70
	dec (hl)		;1b71
	dec (hl)		;1b72
	dec (hl)		;1b73
	dec c			;1b74
	rlca			;1b75
	jr c,l1b78h		;1b76
l1b78h:
	nop			;1b78
	nop			;1b79
	inc bc			;1b7a
	ld b,038h		;1b7b
	dec (hl)		;1b7d
	dec (hl)		;1b7e
	dec (hl)		;1b7f
	dec (hl)		;1b80
	add hl,bc		;1b81
	scf			;1b82
	nop			;1b83
	dec (hl)		;1b84
	nop			;1b85
	dec (hl)		;1b86
	dec bc			;1b87
	inc de			;1b88
	rla			;1b89
	dec (hl)		;1b8a
	inc b			;1b8b
	dec d			;1b8c
	ex af,af'		;1b8d
	ld d,000h		;1b8e
	nop			;1b90
	nop			;1b91
	dec c			;1b92
	rlca			;1b93
	jr $+55			;1b94
	dec (hl)		;1b96
	dec (hl)		;1b97
	dec c			;1b98
	ld (de),a		;1b99
	ld (hl),000h		;1b9a
	dec (hl)		;1b9c
	nop			;1b9d
	dec (hl)		;1b9e
	inc bc			;1b9f
	scf			;1ba0
	dec (hl)		;1ba1
	dec (hl)		;1ba2
	dec (hl)		;1ba3
	dec (hl)		;1ba4
	ld (bc),a		;1ba5
	dec l			;1ba6
	add hl,hl		;1ba7
	daa			;1ba8
	dec hl			;1ba9
	cpl			;1baa
	jr l1bdbh		;1bab
	ld hl,(02c28h)		;1bad
	jr nc,l1bcah		;1bb0
	scf			;1bb2
	nop			;1bb3
	nop			;1bb4
	nop			;1bb5
	dec (hl)		;1bb6
	inc bc			;1bb7
	ld h,003h		;1bb8
	nop			;1bba
	inc bc			;1bbb
	nop			;1bbc
	dec de			;1bbd
	daa			;1bbe
	nop			;1bbf
	ld (bc),a		;1bc0
	ld (bc),a		;1bc1
	nop			;1bc2
	inc e			;1bc3
	ld b,000h		;1bc4
	nop			;1bc6
	nop			;1bc7
	dec c			;1bc8
	dec e			;1bc9
l1bcah:
	jr z,l1bceh		;1bca
	ld (bc),a		;1bcc
	inc bc			;1bcd
l1bceh:
	nop			;1bce
	ld e,007h		;1bcf
	nop			;1bd1
	ld (bc),a		;1bd2
	ld bc,l1f00h		;1bd3
	add hl,hl		;1bd6
	ld bc,l0000h		;1bd7
	nop			;1bda
l1bdbh:
	ld l,02ah		;1bdb
	ld (bc),a		;1bdd
	nop			;1bde
	nop			;1bdf
	ld (bc),a		;1be0
	cpl			;1be1
	daa			;1be2
	nop			;1be3
	ld bc,l0003h		;1be4
	inc e			;1be7
	rlca			;1be8
	nop			;1be9
	nop			;1bea
	ld (bc),a		;1beb
	ld bc,0282eh		;1bec
	nop			;1bef
	ld bc,00d02h		;1bf0
	dec e			;1bf3
	dec bc			;1bf4
	ld (bc),a		;1bf5
	nop			;1bf6
	inc d			;1bf7
	inc de			;1bf8
	inc (hl)		;1bf9
	inc c			;1bfa
	nop			;1bfb
	nop			;1bfc
	nop			;1bfd
	inc d			;1bfe
	dec (hl)		;1bff
l1c00h:
	rlca			;1c00
	ld (bc),a		;1c01
l1c02h:
	ld bc,l0002h		;1c02
	ld e,02ah		;1c05
	nop			;1c07
	nop			;1c08
	ld bc,l1f00h		;1c09
	daa			;1c0c
	nop			;1c0d
	ld (bc),a		;1c0e
	nop			;1c0f
	dec c			;1c10
	ld (l0218h),a		;1c11
	nop			;1c14
	nop			;1c15
	inc d			;1c16
	dec (hl)		;1c17
	rla			;1c18
	ld (hl),000h		;1c19
	ld (bc),a		;1c1b
	nop			;1c1c
	inc e			;1c1d
	ld a,(de)		;1c1e
	nop			;1c1f
	ld bc,l0201h+1		;1c20
	ld l,006h		;1c23
	ld bc,l0000h		;1c25
	inc bc			;1c28
	cpl			;1c29
	add hl,hl		;1c2a
	ld (bc),a		;1c2b
	ld (bc),a		;1c2c
	ld bc,l1f00h		;1c2d
	rlca			;1c30
	ld bc,l0001h		;1c31
	dec c			;1c34
	ld (l0028h),a		;1c35
	ld (bc),a		;1c38
	nop			;1c39
	inc d			;1c3a
	dec e			;1c3b
	ld b,002h		;1c3c
	nop			;1c3e
	inc d			;1c3f
	inc de			;1c40
	dec (hl)		;1c41
	daa			;1c42
	nop			;1c43
	nop			;1c44
	inc d			;1c45
	inc de			;1c46
	inc (hl)		;1c47
	rlca			;1c48
	nop			;1c49
	ld bc,l1402h		;1c4a
	dec (hl)		;1c4d
	add hl,hl		;1c4e
	ld bc,l0000h		;1c4f
	nop			;1c52
	ld l,028h		;1c53
	ld (bc),a		;1c55
	ld (bc),a		;1c56
	nop			;1c57
	nop			;1c58
	ld (l0018h),a		;1c59
	ld bc,00200h		;1c5c
	cpl			;1c5f
	rla			;1c60
	ld (hl),000h		;1c61
	ld (bc),a		;1c63
	ld bc,l071eh		;1c64
	nop			;1c67
	ld bc,00d02h		;1c68
	dec e			;1c6b
	jr z,l1c6eh		;1c6c
l1c6eh:
	ld (bc),a		;1c6e
	inc d			;1c6f
	inc de			;1c70
	inc (hl)		;1c71
	daa			;1c72
	ld (bc),a		;1c73
	nop			;1c74
	nop			;1c75
	dec c			;1c76
	dec e			;1c77
	ld b,001h		;1c78
	nop			;1c7a
	ld bc,l1c02h		;1c7b
	add hl,hl		;1c7e
	nop			;1c7f
	nop			;1c80
	nop			;1c81
	nop			;1c82
	rra			;1c83
	daa			;1c84
	inc bc			;1c85
	ld (bc),a		;1c86
	ld (bc),a		;1c87
	nop			;1c88
	inc sp			;1c89
	jr z,l1c8ch		;1c8a
l1c8ch:
	inc bc			;1c8c
	nop			;1c8d
	inc d			;1c8e
	dec (hl)		;1c8f
	jr l1c92h		;1c90
l1c92h:
	rrca			;1c92
	djnz l1ca8h		;1c93
	inc (hl)		;1c95
	rla			;1c96
	ld sp,l1403h		;1c97
	inc de			;1c9a
	inc (hl)		;1c9b
	dec d			;1c9c
	ld d,000h		;1c9d
	nop			;1c9f
	inc d			;1ca0
	dec (hl)		;1ca1
	rla			;1ca2
	ld sp,l0002h		;1ca3
	nop			;1ca6
	inc e			;1ca7
l1ca8h:
	add hl,de		;1ca8
	nop			;1ca9
	ld (bc),a		;1caa
	nop			;1cab
	nop			;1cac
	ld l,028h		;1cad
	inc bc			;1caf
	nop			;1cb0
	inc bc			;1cb1
	ld bc,0292fh		;1cb2
	nop			;1cb5
	ld (bc),a		;1cb6
	nop			;1cb7
	nop			;1cb8
	dec e			;1cb9
	ld hl,(00100h)		;1cba
	inc bc			;1cbd
	dec c			;1cbe
	dec e			;1cbf
	jr l1cc4h		;1cc0
	inc bc			;1cc2
	nop			;1cc3
l1cc4h:
	nop			;1cc4
	cpl			;1cc5
	dec d			;1cc6
	ld d,000h		;1cc7
	ld bc,l1e00h		;1cc9
	ld b,003h		;1ccc
	ld bc,00200h		;1cce
	cpl			;1cd1
	inc l			;1cd2
	nop			;1cd3
	nop			;1cd4
	ld (bc),a		;1cd5
	nop			;1cd6
	ld l,028h		;1cd7
	ld (bc),a		;1cd9
	nop			;1cda
	ld (bc),a		;1cdb
	ex af,af'		;1cdc
	ld hl,l0107h		;1cdd
	ld (bc),a		;1ce0
	nop			;1ce1
	ld a,(bc)		;1ce2
	ld (03617h),hl		;1ce3
	ld (bc),a		;1ce6
	inc bc			;1ce7
	ld bc,l151fh		;1ce8
	djnz $+51		;1ceb
	nop			;1ced
	ld (bc),a		;1cee
	cpl			;1cef
	dec bc			;1cf0
	inc bc			;1cf1
	nop			;1cf2
	ld bc,l1e00h		;1cf3
	ld c,001h		;1cf6
	nop			;1cf8
	ld (bc),a		;1cf9
	ld (bc),a		;1cfa
	ld l,00ch		;1cfb
	ld (bc),a		;1cfd
	ld (bc),a		;1cfe
	ld (bc),a		;1cff
	nop			;1d00
	cpl			;1d01
	add hl,hl		;1d02
	inc bc			;1d03
	ld bc,00200h		;1d04
	ld l,027h		;1d07
	nop			;1d09
	nop			;1d0a
	ld bc,03300h		;1d0b
	ld hl,(l0301h)		;1d0e
	rrca			;1d11
	inc de			;1d12
	inc (hl)		;1d13
l1d14h:
	jr z,l1d16h		;1d14
l1d16h:
	inc bc			;1d16
	ld bc,l1d14h		;1d17
	jr z,$+4		;1d1a
	nop			;1d1c
	ld bc,03202h		;1d1d
	rlca			;1d20
	nop			;1d21
	nop			;1d22
	ld (bc),a		;1d23
	nop			;1d24
	ld l,027h		;1d25
	nop			;1d27
	ld (bc),a		;1d28
	nop			;1d29
	ld (bc),a		;1d2a
	cpl			;1d2b
	add hl,hl		;1d2c
	nop			;1d2d
	nop			;1d2e
	ld bc,l1f00h		;1d2f
	dec bc			;1d32
	nop			;1d33
	inc bc			;1d34
	ld bc,02308h		;1d35
	ld c,000h		;1d38
	nop			;1d3a
	inc bc			;1d3b
	add hl,bc		;1d3c
	inc h			;1d3d
	inc c			;1d3e
	ld bc,l0002h		;1d3f
	ld a,(bc)		;1d42
	dec h			;1d43
	ld hl,(l0000h)		;1d44
	ld (bc),a		;1d47
	dec c			;1d48
	dec e			;1d49
	jr z,l1d4dh		;1d4a
	ld (bc),a		;1d4c
l1d4dh:
	nop			;1d4d
	ld bc,l0b2eh		;1d4e
	nop			;1d51
	ld bc,l0800h		;1d52
	inc hl			;1d55
	inc c			;1d56
	nop			;1d57
	inc bc			;1d58
	ld bc,0250ah		;1d59
	add hl,hl		;1d5c
	inc bc			;1d5d
	ld (bc),a		;1d5e
	inc bc			;1d5f
	nop			;1d60
	ld l,00bh		;1d61
	ld bc,l0001h		;1d63
	inc b			;1d66
	inc hl			;1d67
	ld c,001h		;1d68
	ld (bc),a		;1d6a
	ld bc,02409h		;1d6b
	inc c			;1d6e
	ld (bc),a		;1d6f
	nop			;1d70
	nop			;1d71
	dec b			;1d72
	dec h			;1d73
	ld hl,(l0203h)		;1d74
	inc bc			;1d77
	nop			;1d78
	ld l,00bh		;1d79
	ld (bc),a		;1d7b
	nop			;1d7c
	inc bc			;1d7d
	ex af,af'		;1d7e
	inc hl			;1d7f
	inc c			;1d80
	nop			;1d81
	inc bc			;1d82
	ld bc,0250ah		;1d83
	dec bc			;1d86
	nop			;1d87
	nop			;1d88
	nop			;1d89
	ex af,af'		;1d8a
	inc hl			;1d8b
	inc c			;1d8c
	nop			;1d8d
	ld bc,l0a03h		;1d8e
	dec h			;1d91
	dec hl			;1d92
	nop			;1d93
	nop			;1d94
	inc bc			;1d95
	ld bc,03220h		;1d96
	inc bc			;1d99
	nop			;1d9a
	ld bc,03703h		;1d9b
	ex af,af'		;1d9e
	ld bc,l0101h		;1d9f
	nop			;1da2
	jr c,l1da9h		;1da3
	nop			;1da5
	inc bc			;1da6
	nop			;1da7
	ld (bc),a		;1da8
l1da9h:
	ld a,(l0105h)		;1da9
	ld bc,l0001h		;1dac
	add hl,sp		;1daf
	inc sp			;1db0
	nop			;1db1
	inc bc			;1db2
	nop			;1db3
	dec bc			;1db4
	inc a			;1db5
	ex af,af'		;1db6
	ld bc,l0201h		;1db7
	rrca			;1dba
	dec a			;1dbb
	dec (hl)		;1dbc
	ld (bc),a		;1dbd
	nop			;1dbe
	nop			;1dbf
	ld (bc),a		;1dc0
	add hl,sp		;1dc1
	inc sp			;1dc2
	ld (bc),a		;1dc3
	inc bc			;1dc4
	nop			;1dc5
	nop			;1dc6
	jr c,l1dfdh		;1dc7
	nop			;1dc9
	nop			;1dca
	ld (bc),a		;1dcb
	nop			;1dcc
	add hl,sp		;1dcd
	dec (hl)		;1dce
	ld bc,00100h		;1dcf
	ld (bc),a		;1dd2
	ld a,(l0008h)		;1dd3
	nop			;1dd6
	nop			;1dd7
	ld bc,03438h		;1dd8
	ld bc,l0001h		;1ddb
	nop			;1dde
	add hl,sp		;1ddf
	inc b			;1de0
	nop			;1de1
	nop			;1de2
	ld (bc),a		;1de3
	dec bc			;1de4
	dec sp			;1de5
	inc b			;1de6
	ld bc,l0002h		;1de7
	inc c			;1dea
	inc a			;1deb
	dec b			;1dec
	nop			;1ded
	nop			;1dee
	ld (bc),a		;1def
	djnz l1e30h		;1df0
	dec (hl)		;1df2
	ld bc,l0201h+1		;1df3
	nop			;1df6
	ld a,(00233h)		;1df7
	nop			;1dfa
	nop			;1dfb
	ld (bc),a		;1dfc
l1dfdh:
	ld a,(l0134h)		;1dfd
l1e00h:
	nop			;1e00
	ld (bc),a		;1e01
	nop			;1e02
	jr c,l1e3ah		;1e03
	inc bc			;1e05
	nop			;1e06
	nop			;1e07
	inc c			;1e08
	add hl,sp		;1e09
	inc sp			;1e0a
	ld bc,l0003h		;1e0b
	djnz $+64		;1e0e
	ex af,af'		;1e10
	nop			;1e11
	nop			;1e12
	ld bc,03800h		;1e13
	dec b			;1e16
	nop			;1e17
	ld (bc),a		;1e18
	nop			;1e19
	ld (bc),a		;1e1a
	add hl,sp		;1e1b
	inc sp			;1e1c
	ld bc,l0000h		;1e1d
	dec bc			;1e20
	inc a			;1e21
	inc (hl)		;1e22
	nop			;1e23
	ld (bc),a		;1e24
	nop			;1e25
	ld hl,(0343ch)		;1e26
	inc bc			;1e29
	ld l,02ch		;1e2a
	dec hl			;1e2c
	inc a			;1e2d
	inc hl			;1e2e
	inc l			;1e2f
l1e30h:
	jr z,l1e5bh		;1e30
	dec l			;1e32
	dec a			;1e33
	inc h			;1e34
	add hl,hl		;1e35
	nop			;1e36
	ld (bc),a		;1e37
	inc c			;1e38
	inc a			;1e39
l1e3ah:
	ex af,af'		;1e3a
	nop			;1e3b
	inc bc			;1e3c
	nop			;1e3d
	djnz l1e7dh		;1e3e
	inc sp			;1e40
	ld bc,l0201h		;1e41
	nop			;1e44
	add hl,sp		;1e45
	inc (hl)		;1e46
	nop			;1e47
	nop			;1e48
	ld (bc),a		;1e49
	dec bc			;1e4a
	ld a,035h		;1e4b
	ld bc,l0301h		;1e4d
	ld (bc),a		;1e50
	jr c,$+37		;1e51
	ld h,013h		;1e53
	ld (03a00h),a		;1e55
	inc h			;1e58
	daa			;1e59
	cpl			;1e5a
l1e5bh:
	inc b			;1e5b
	nop			;1e5c
	jr c,$+55		;1e5d
	nop			;1e5f
	dec d			;1e60
	dec (hl)		;1e61
	ld bc,l0839h		;1e62
	ld (bc),a		;1e65
	ld d,034h		;1e66
	djnz $+63		;1e68
	inc (hl)		;1e6a
	nop			;1e6b
	inc d			;1e6c
	inc hl			;1e6d
	inc l			;1e6e
	add hl,sp		;1e6f
	dec (hl)		;1e70
	ld bc,02417h		;1e71
	add hl,hl		;1e74
	jr c,l1eaah		;1e75
	ld (bc),a		;1e77
	ld a,(de)		;1e78
	ld (hl),002h		;1e79
	add hl,sp		;1e7b
	inc (hl)		;1e7c
l1e7dh:
	ld bc,l0000h		;1e7d
	rrca			;1e80
	inc a			;1e81
	dec (hl)		;1e82
	inc bc			;1e83
	nop			;1e84
	ld (bc),a		;1e85
	nop			;1e86
	jr c,$+37		;1e87
	ld h,013h		;1e89
	ld (03a01h),a		;1e8b
	inc h			;1e8e
	daa			;1e8f
	cpl			;1e90
	ex af,af'		;1e91
	ld (bc),a		;1e92
	jr c,$+6		;1e93
	nop			;1e95
	ld d,034h		;1e96
	djnz l1ed7h		;1e98
	dec b			;1e9a
	ld (bc),a		;1e9b
	dec d			;1e9c
	inc hl			;1e9d
	inc l			;1e9e
	inc a			;1e9f
	ex af,af'		;1ea0
	ld bc,02431h		;1ea1
	add hl,hl		;1ea4
	ld a,(02c23h)		;1ea5
	cpl			;1ea8
	inc sp			;1ea9
l1eaah:
	ld bc,02439h		;1eaa
	add hl,hl		;1ead
	ld a,(de)		;1eae
	ld (hl),00bh		;1eaf
	dec sp			;1eb1
	dec (hl)		;1eb2
	ld (bc),a		;1eb3
	ld bc,l1000h		;1eb4
	dec a			;1eb7
	inc (hl)		;1eb8
	nop			;1eb9
	ld bc,00200h		;1eba
	ld a,(l0308h)		;1ebd
	nop			;1ec0
	nop			;1ec1
	inc bc			;1ec2
	jr c,$+54		;1ec3
	ld bc,00200h		;1ec5
	nop			;1ec8
	add hl,sp		;1ec9
	dec (hl)		;1eca
	ld (bc),a		;1ecb
	nop			;1ecc
	ld bc,03d0fh		;1ecd
	inc sp			;1ed0
	ld bc,l0003h		;1ed1
	djnz l1f12h		;1ed4
	inc (hl)		;1ed6
l1ed7h:
	nop			;1ed7
	ld (bc),a		;1ed8
	inc bc			;1ed9
	nop			;1eda
	add hl,sp		;1edb
	dec (hl)		;1edc
	inc bc			;1edd
	nop			;1ede
	inc bc			;1edf
	ld bc,03338h		;1ee0
	ld bc,00100h		;1ee3
	nop			;1ee6
	ld a,(l0034h)		;1ee7
	ld (bc),a		;1eea
	nop			;1eeb
	dec bc			;1eec
	dec sp			;1eed
	dec (hl)		;1eee
	ld bc,00200h		;1eef
	inc c			;1ef2
	inc a			;1ef3
	inc sp			;1ef4
	nop			;1ef5
	ld (bc),a		;1ef6
	nop			;1ef7
	djnz $+63		;1ef8
	inc b			;1efa
	ld (bc),a		;1efb
	nop			;1efc
	inc bc			;1efd
	dec bc			;1efe
	inc a			;1eff
l1f00h:
	ld b,03fh		;1f00
	ld bc,l0c00h		;1f02
	inc a			;1f05
	dec b			;1f06
	inc bc			;1f07
	nop			;1f08
	nop			;1f09
	djnz l1f49h		;1f0a
	ex af,af'		;1f0c
	ld bc,l0302h		;1f0d
	rrca			;1f10
	inc a			;1f11
l1f12h:
	dec (hl)		;1f12
	nop			;1f13
	ld bc,l1c00h		;1f14
	dec sp			;1f17
	inc b			;1f18
	inc bc			;1f19
	nop			;1f1a
	ld (bc),a		;1f1b
	ld bc,l063ah		;1f1c
	ccf			;1f1f
	ld (bc),a		;1f20
	ld (bc),a		;1f21
l1f22h:
	dec de			;1f22
l1f23h:
	inc a			;1f23
	dec b			;1f24
	ld bc,00100h		;1f25
	inc e			;1f28
	ld a,008h		;1f29
	inc bc			;1f2b
	ld de,02b25h		;1f2c
	inc a			;1f2f
	ex af,af'		;1f30
	nop			;1f31
	ld bc,l0f00h		;1f32
	inc a			;1f35
	ld b,002h		;1f36
	nop			;1f38
	ld (bc),a		;1f39
	inc c			;1f3a
	inc a			;1f3b
	dec b			;1f3c
	ld bc,00100h		;1f3d
	djnz $+62		;1f40
	dec (hl)		;1f42
	ld bc,l0300h		;1f43
	djnz l1f85h		;1f46
	inc sp			;1f48
l1f49h:
	ld (bc),a		;1f49
	nop			;1f4a
	ld bc,03d1ch		;1f4b
	inc (hl)		;1f4e
	ld de,l0212h		;1f4f
	dec de			;1f52
	inc a			;1f53
	dec (hl)		;1f54
	nop			;1f55
	ld (bc),a		;1f56
	djnz l1f66h		;1f57
	dec sp			;1f59
	inc sp			;1f5a
	ld bc,l0301h		;1f5b
	rrca			;1f5e
	inc a			;1f5f
	inc (hl)		;1f60
	ld bc,l0000h		;1f61
	dec bc			;1f64
	dec sp			;1f65
l1f66h:
	ex af,af'		;1f66
	nop			;1f67
	ld de,l0012h		;1f68
	ld a,(l0304h)		;1f6b
	ld bc,l0302h		;1f6e
	jr c,$+8		;1f71
	ccf			;1f73
	ld bc,l0301h		;1f74
	add hl,sp		;1f77
	ld b,01eh		;1f78
	ccf			;1f7a
	ld (bc),a		;1f7b
	nop			;1f7c
	ld a,(l0305h)		;1f7d
	nop			;1f80
	ld bc,03c2ah		;1f81
	ex af,af'		;1f84
l1f85h:
	ld bc,02c2eh		;1f85
	cpl			;1f88
	inc a			;1f89
	inc hl			;1f8a
	jr z,l1fb5h		;1f8b
	jr z,$+45		;1f8d
	dec a			;1f8f
	inc h			;1f90
	add hl,hl		;1f91
	daa			;1f92
	add hl,hl		;1f93
	dec l			;1f94
	inc a			;1f95
	ld (hl),000h		;1f96
	ld bc,l0003h		;1f98
	ld a,(l0300h)		;1f9b
	nop			;1f9e
	ld (bc),a		;1f9f
	nop			;1fa0
	ld bc,l0003h		;1fa1
	nop			;1fa4
	inc bc			;1fa5
	ld (bc),a		;1fa6
	ld bc,l000dh		;1fa7
	ld bc,l0000h		;1faa
	dec de			;1fad
	jr nz,l1fb1h		;1fae
	nop			;1fb0
l1fb1h:
	inc bc			;1fb1
	nop			;1fb2
	ld d,021h		;1fb3
l1fb5h:
	ld (bc),a		;1fb5
	nop			;1fb6
	nop			;1fb7
	ld (bc),a		;1fb8
	jr $+17			;1fb9
	inc bc			;1fbb
	nop			;1fbc
	ld (bc),a		;1fbd
	nop			;1fbe
	inc e			;1fbf
	ld de,l0300h		;1fc0
	nop			;1fc3
	rlca			;1fc4
	ld a,(de)		;1fc5
	ld (de),a		;1fc6
	nop			;1fc7
	nop			;1fc8
	ld bc,l1a00h		;1fc9
	ld (de),a		;1fcc
	ld (l0002h),hl		;1fcd
	nop			;1fd0
	dec de			;1fd1
	ld de,l0000h		;1fd2
	inc bc			;1fd5
	inc b			;1fd6
	add hl,de		;1fd7
	inc de			;1fd8
	ld bc,l0000h		;1fd9
	rlca			;1fdc
	ld a,(de)		;1fdd
	ld hl,l0002h		;1fde
	ld (bc),a		;1fe1
	nop			;1fe2
	dec de			;1fe3
	jr nz,l1fe6h		;1fe4
l1fe6h:
	nop			;1fe6
	inc bc			;1fe7
	ld b,019h		;1fe8
	inc c			;1fea
	nop			;1feb
	ld (bc),a		;1fec
	nop			;1fed
	nop			;1fee
	ld a,(de)		;1fef
	jr nz,$+5		;1ff0
	nop			;1ff2
	inc bc			;1ff3
	ld bc,02019h		;1ff4
	nop			;1ff7
	ld bc,l0000h		;1ff8
	dec de			;1ffb
	dec c			;1ffc
	inc bc			;1ffd
	nop			;1ffe
	ld (bc),a		;1fff
