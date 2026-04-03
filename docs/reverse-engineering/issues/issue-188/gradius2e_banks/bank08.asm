; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x0000 -o docs/reverse-engineering/issues/issue-188/gradius2e_banks/bank08.asm /tmp/gradius2e_bank08.bin

	org 00000h

l0000h:
	jp 0c203h		;0000
sub_0003h:
	ld (bc),a		;0003
sub_0004h:
	jr nz,$-125		;0004
l0006h:
	and b			;0006
	add hl,bc		;0007
l0008h:
	ret nz			;0008
	ld (bc),a		;0009
	jr nz,$-113		;000a
l000ch:
	jr nc,l000eh		;000c
l000eh:
	jp nz,0e320h		;000e
	add a,0c2h		;0011
	jr nz,l0045h		;0013
l0015h:
	ret nz			;0015
	ret nz			;0016
	jr nz,l0049h		;0017
	nop			;0019
	add a,a			;001a
	ret po			;001b
l001ch:
	ret p			;001c
	ld d,b			;001d
	ld b,b			;001e
	ld b,b			;001f
sub_0020h:
	ld d,b			;0020
	ld (hl),b		;0021
	rlca			;0022
	ret p			;0023
	add a,c			;0024
	ld (hl),b		;0025
	ld b,0f0h		;0026
	inc bc			;0028
	ld (hl),b		;0029
l002ah:
	inc bc			;002a
	ret p			;002b
	rlca			;002c
	ld (hl),b		;002d
	inc bc			;002e
	ld d,b			;002f
	inc bc			;0030
	ld b,b			;0031
l0032h:
	ld (bc),a		;0032
sub_0033h:
	ld (hl),b		;0033
	add a,c			;0034
	ld d,b			;0035
	dec b			;0036
	ld b,b			;0037
	add a,d			;0038
	ld (hl),b		;0039
	ld d,b			;003a
	ld b,040h		;003b
	inc b			;003d
	ld d,b			;003e
	adc a,a			;003f
	ld b,b			;0040
	jr nz,l0083h		;0041
	ld d,b			;0043
	ret p			;0044
l0045h:
	ret p			;0045
	ld (hl),b		;0046
	ld d,b			;0047
	ld b,b			;0048
l0049h:
	ld d,b			;0049
	ld d,b			;004a
	ld (hl),b		;004b
	nop			;004c
	and b			;004d
	jr nc,l0053h		;004e
	jr nz,l0054h		;0050
	ret nz			;0052
l0053h:
	ld (bc),a		;0053
l0054h:
	add a,b			;0054
	inc bc			;0055
	sub b			;0056
	ld (bc),a		;0057
	xor c			;0058
	add a,e			;0059
	jp m,0c0c0h		;005a
	inc bc			;005d
	jr nz,$+4		;005e
	ld (0f381h),a		;0060
	nop			;0063
	ld (bc),a		;0064
	nop			;0065
	adc a,(hl)		;0066
	add a,b			;0067
	jr nc,l002ah		;0068
	jp nz,0c0c2h		;006a
	ret nz			;006d
	jr nz,l0090h		;006e
	jr nc,l0032h		;0070
	jp nz,09620h		;0072
	nop			;0075
	ld (bc),a		;0076
	sub b			;0077
	adc a,h			;0078
l0079h:
	ld h,b			;0079
	sub b			;007a
	sub b			;007b
	ld h,b			;007c
	sub b			;007d
	sub (hl)		;007e
	sub (hl)		;007f
	sub b			;0080
	ld h,b			;0081
	sub b			;0082
l0083h:
	ld h,b			;0083
	ld h,b			;0084
l0085h:
	inc b			;0085
	sub b			;0086
	add a,e			;0087
l0088h:
	ld h,b			;0088
	sub b			;0089
	sub (hl)		;008a
	ld b,090h		;008b
	add a,l			;008d
	sub (hl)		;008e
	sub b			;008f
l0090h:
	ld h,b			;0090
l0091h:
	sub b			;0091
	nop			;0092
	ex af,af'		;0093
l0094h:
	ld b,b			;0094
l0095h:
	ex af,af'		;0095
	ld h,b			;0096
	nop			;0097
	ld (bc),a		;0098
	jr nz,l001ch		;0099
	ret nz			;009b
	inc bc			;009c
	ld h,b			;009d
sub_009eh:
	ld (bc),a		;009e
	add a,b			;009f
	ld (bc),a		;00a0
	ld b,b			;00a1
	adc a,a			;00a2
	ret nz			;00a3
	inc h			;00a4
	scf			;00a5
	inc (hl)		;00a6
	add a,h			;00a7
l00a8h:
	add a,h			;00a8
l00a9h:
	ld b,b			;00a9
	ld b,b			;00aa
	ret nz			;00ab
	inc h			;00ac
l00adh:
	scf			;00ad
	inc (hl)		;00ae
	add a,h			;00af
	add a,h			;00b0
	sub b			;00b1
	inc b			;00b2
l00b3h:
	add a,b			;00b3
	ld (bc),a		;00b4
	ld h,b			;00b5
	add a,c			;00b6
	sub b			;00b7
l00b8h:
	inc b			;00b8
	add a,b			;00b9
	dec b			;00ba
	ld h,b			;00bb
sub_00bch:
	adc a,h			;00bc
	ld b,b			;00bd
	add a,b			;00be
	and b			;00bf
sub_00c0h:
	sub b			;00c0
	ret nz			;00c1
	ld h,b			;00c2
	jr nz,$+34		;00c3
	ld b,b			;00c5
	ret nz			;00c6
	ld (hl),b		;00c7
	ld b,b			;00c8
	inc b			;00c9
	jr nc,l0054h		;00ca
	ld b,b			;00cc
	jr nz,l00ffh		;00cd
	ret nz			;00cf
	nop			;00d0
	jr nc,l0103h		;00d1
	add a,b			;00d3
	dec b			;00d4
	jr nz,$-122		;00d5
	ld b,b			;00d7
	jr nz,l00fah		;00d8
	ld h,b			;00da
	inc bc			;00db
	jr nz,$+5		;00dc
	ret nz			;00de
	add a,c			;00df
	jr nz,$+5		;00e0
	jr nc,$+8		;00e2
	jr nz,l0079h		;00e4
	jr nc,l00a8h		;00e6
	ld b,b			;00e8
	jr nz,l011bh		;00e9
	jr nc,l00adh		;00eb
	ret nz			;00ed
	jr nc,l0110h		;00ee
	ret nz			;00f0
	ret nz			;00f1
	jr nc,l0164h		;00f2
	ret nz			;00f4
	ld (hl),b		;00f5
	jr nz,l00b8h		;00f6
sub_00f8h:
	jr nc,l0100h		;00f8
l00fah:
	jr nz,l00feh		;00fa
	jr nc,l0085h		;00fc
l00feh:
	add a,b			;00fe
l00ffh:
	ret nz			;00ff
l0100h:
	jr nz,$+34		;0100
	nop			;0102
l0103h:
	ret nz			;0103
	ld (hl),b		;0104
	inc b			;0105
	jr nz,l0091h		;0106
	jr nc,l012ah		;0108
	jr nz,l013ch		;010a
	inc a			;010c
l010dh:
	call nz,04040h		;010d
l0110h:
	ret nz			;0110
	rlca			;0111
	jr nz,l0095h		;0112
	ret nz			;0114
	dec b			;0115
	jr nc,$-124		;0116
	ret nz			;0118
	jr nc,l0123h		;0119
l011bh:
	jr nz,l011fh		;011b
	ld b,b			;011d
	inc b			;011e
l011fh:
	ret nz			;011f
sub_0120h:
	add a,e			;0120
	jr nz,l0153h		;0121
l0123h:
	ret nz			;0123
	dec b			;0124
	jr nc,l00a9h		;0125
	ret nz			;0127
	jr nc,l012ah		;0128
l012ah:
	inc bc			;012a
	ret po			;012b
	adc a,l			;012c
	call po,0e0e0h		;012d
	call po,0f0e9h		;0130
	ret p			;0133
	call po,065f6h		;0134
	and 0e8h		;0137
	jp (hl)			;0139
	inc b			;013a
	ld d,b			;013b
l013ch:
	ld (bc),a		;013c
	ld h,b			;013d
	add a,d			;013e
	add a,b			;013f
	sub b			;0140
	nop			;0141
	ld (bc),a		;0142
	ret po			;0143
	add a,c			;0144
	ld d,b			;0145
	inc bc			;0146
	ld h,b			;0147
	ld (bc),a		;0148
	add a,b			;0149
	ld (bc),a		;014a
	ld b,b			;014b
	adc a,a			;014c
	ld d,b			;014d
	call po,0f4f7h		;014e
	add a,h			;0151
	add a,h			;0152
l0153h:
	ld b,b			;0153
	ld b,b			;0154
	ld d,b			;0155
	call po,0f4f7h		;0156
	add a,h			;0159
	add a,h			;015a
	sub b			;015b
	inc b			;015c
	add a,b			;015d
	ld (bc),a		;015e
	ld h,b			;015f
	add a,c			;0160
	sub b			;0161
	inc b			;0162
	add a,b			;0163
l0164h:
	dec b			;0164
	ld h,b			;0165
	adc a,h			;0166
	ld b,b			;0167
	add a,b			;0168
	and b			;0169
	sub b			;016a
	ld d,b			;016b
	ld h,b			;016c
	ret po			;016d
	ret po			;016e
	ld b,b			;016f
	ld d,b			;0170
	ld (hl),b		;0171
	ld b,b			;0172
	inc b			;0173
	ret p			;0174
	adc a,b			;0175
	ld b,b			;0176
	ret po			;0177
	ret p			;0178
	ld d,b			;0179
	nop			;017a
	ret p			;017b
	ret p			;017c
	add a,b			;017d
	dec b			;017e
	ret po			;017f
	add a,h			;0180
	ld b,b			;0181
	ret po			;0182
	ret po			;0183
	ld h,b			;0184
	inc bc			;0185
	ret po			;0186
	inc bc			;0187
	ld d,b			;0188
	add a,c			;0189
	ret po			;018a
	inc bc			;018b
	ret p			;018c
	ld b,0e0h		;018d
	sub e			;018f
	ret p			;0190
	ld d,b			;0191
	ld b,b			;0192
	ret po			;0193
	ret p			;0194
	ret p			;0195
	ld d,b			;0196
	ld d,b			;0197
	ret p			;0198
	ret po			;0199
	ld d,b			;019a
	ld d,b			;019b
	ret p			;019c
	ld (hl),b		;019d
	ld d,b			;019e
	ld (hl),b		;019f
	ret po			;01a0
	ld d,b			;01a1
	ret p			;01a2
	ld b,0e0h		;01a3
l01a5h:
	ld (bc),a		;01a5
	ret p			;01a6
	add a,a			;01a7
	add a,b			;01a8
	ld d,b			;01a9
	ret po			;01aa
	ret po			;01ab
	nop			;01ac
	ld d,b			;01ad
	ld (hl),b		;01ae
	inc b			;01af
	ret po			;01b0
	adc a,c			;01b1
	ret p			;01b2
	ret po			;01b3
	ret po			;01b4
	ret p			;01b5
	push af			;01b6
	ld d,h			;01b7
	ld b,b			;01b8
	ld b,b			;01b9
	ld d,b			;01ba
	rlca			;01bb
	ret po			;01bc
	add a,c			;01bd
	ld d,b			;01be
	dec b			;01bf
	ret p			;01c0
	add a,d			;01c1
	ld d,b			;01c2
l01c3h:
	ret p			;01c3
	ex af,af'		;01c4
	ret po			;01c5
	ld (bc),a		;01c6
	ld b,b			;01c7
	inc b			;01c8
	ld d,b			;01c9
	add a,e			;01ca
	ret po			;01cb
	ret p			;01cc
	ld d,b			;01cd
	dec b			;01ce
	ret p			;01cf
	add a,d			;01d0
	ld d,b			;01d1
	ret p			;01d2
	nop			;01d3
	sub b			;01d4
	add a,b			;01d5
	sub b			;01d6
	and b			;01d7
	or b			;01d8
	and b			;01d9
	sub b			;01da
	add a,b			;01db
	ld h,b			;01dc
	ld b,b			;01dd
	ld d,b			;01de
l01dfh:
	ld b,b			;01df
	jr nc,l0222h		;01e0
l01e2h:
	ld d,b			;01e2
	jr nz,l01a5h		;01e3
	nop			;01e5
	ld (bc),a		;01e6
l01e7h:
	ret p			;01e7
	inc b			;01e8
	ld h,b			;01e9
	ld (bc),a		;01ea
	sbc a,b			;01eb
	ld (bc),a		;01ec
	ret p			;01ed
	ld (bc),a		;01ee
	ld h,b			;01ef
	add a,l			;01f0
	add a,b			;01f1
	sub b			;01f2
	add a,b			;01f3
	ld h,b			;01f4
l01f5h:
	ld h,b			;01f5
	inc b			;01f6
	add a,b			;01f7
l01f8h:
	add a,a			;01f8
	sub b			;01f9
	add a,b			;01fa
	sub b			;01fb
	xor b			;01fc
	xor b			;01fd
	xor c			;01fe
	xor c			;01ff
l0200h:
	inc b			;0200
	ld sp,hl		;0201
l0202h:
	adc a,a			;0202
	and (hl)		;0203
	xor b			;0204
	xor b			;0205
	xor c			;0206
	xor c			;0207
	cp c			;0208
	ld sp,hl		;0209
	ld sp,hl		;020a
	sub b			;020b
	ld h,b			;020c
	sub b			;020d
	add a,b			;020e
	sub b			;020f
l0210h:
	add a,b			;0210
	sub b			;0211
	rlca			;0212
	add a,b			;0213
	ld (bc),a		;0214
	sub b			;0215
	add a,l			;0216
	ld sp,hl		;0217
	ret m			;0218
	ret m			;0219
	xor b			;021a
	xor b			;021b
	inc bc			;021c
	add a,b			;021d
	add a,l			;021e
	ld sp,hl		;021f
	ret m			;0220
	ret m			;0221
l0222h:
	xor b			;0222
	xor b			;0223
	ld b,080h		;0224
	dec b			;0226
	ld h,b			;0227
	nop			;0228
	ld (bc),a		;0229
	ret p			;022a
	inc b			;022b
	ret nz			;022c
	ld (bc),a		;022d
	ld (0f002h),a		;022e
	ld (bc),a		;0231
	ret nz			;0232
	add a,l			;0233
	jr nz,l0266h		;0234
	jr nz,l01f8h		;0236
	ret nz			;0238
	inc b			;0239
	jr nz,l01c3h		;023a
	jr nc,l025eh		;023c
	jr nc,l01e2h		;023e
	and d			;0240
	and e			;0241
	and e			;0242
	inc b			;0243
	di			;0244
	adc a,a			;0245
	jp z,0a2a2h		;0246
	and e			;0249
	and e			;024a
	or e			;024b
	di			;024c
	di			;024d
	jr nc,l0210h		;024e
	jr nc,l0272h		;0250
	jr nc,l0274h		;0252
	jr nc,$+9		;0254
	jr nz,l025ah		;0256
	jr nc,l01dfh		;0258
l025ah:
	di			;025a
	jp p,0a2f2h		;025b
l025eh:
	and d			;025e
	inc bc			;025f
	jr nz,l01e7h		;0260
	di			;0262
	jp p,0a2f2h		;0263
l0266h:
	and d			;0266
	ld b,020h		;0267
	dec b			;0269
	ret nz			;026a
	nop			;026b
	ld b,040h		;026c
	inc b			;026e
	ld d,h			;026f
	add a,c			;0270
	ld d,b			;0271
l0272h:
	ld a,(bc)		;0272
	ld b,b			;0273
l0274h:
	ld (bc),a		;0274
	ld d,h			;0275
	inc bc			;0276
	ld (hl),l		;0277
	add a,c			;0278
	ld d,h			;0279
	add hl,bc		;027a
	ld b,b			;027b
	ld (bc),a		;027c
	ld d,h			;027d
	inc b			;027e
	ld (hl),l		;027f
	ld (bc),a		;0280
	ld d,h			;0281
	ld (bc),a		;0282
	ld d,b			;0283
	dec b			;0284
	ld b,b			;0285
	ld (bc),a		;0286
l0287h:
	ld d,h			;0287
	ld (bc),a		;0288
	ld (hl),l		;0289
	inc bc			;028a
	rst 30h			;028b
	ld (bc),a		;028c
	ld (hl),l		;028d
	add a,c			;028e
	ld d,h			;028f
	inc bc			;0290
	ld b,b			;0291
	rlca			;0292
	ret p			;0293
	inc b			;0294
	jr nz,l0299h		;0295
	ret nz			;0297
	add a,e			;0298
l0299h:
	ld d,b			;0299
	ret po			;029a
	nop			;029b
	nop			;029c
	add a,d			;029d
	nop			;029e
	ld (hl),b		;029f
	inc b			;02a0
	ld b,b			;02a1
	inc b			;02a2
	ld (hl),b		;02a3
	inc b			;02a4
	ld b,b			;02a5
	ld (bc),a		;02a6
	ld (hl),b		;02a7
	add a,d			;02a8
	nop			;02a9
	ret p			;02aa
	inc b			;02ab
	and b			;02ac
	inc b			;02ad
	ret p			;02ae
	inc b			;02af
	and b			;02b0
	add a,h			;02b1
	ret p			;02b2
	nop			;02b3
	nop			;02b4
	sub b			;02b5
	inc b			;02b6
	ld h,b			;02b7
	inc b			;02b8
	sub b			;02b9
	inc b			;02ba
	ld h,b			;02bb
	adc a,d			;02bc
	sub b			;02bd
	nop			;02be
	nop			;02bf
	ld d,b			;02c0
	ret po			;02c1
	ret po			;02c2
	jr nc,l0335h		;02c3
	ld d,b			;02c5
	ret p			;02c6
	nop			;02c7
	add a,d			;02c8
	nop			;02c9
	ret p			;02ca
	inc b			;02cb
	and b			;02cc
	inc b			;02cd
	ret p			;02ce
	inc b			;02cf
	and b			;02d0
	add a,d			;02d1
	ret p			;02d2
	nop			;02d3
	nop			;02d4
	or a			;02d5
	nop			;02d6
	ret p			;02d7
	ret po			;02d8
	ret p			;02d9
	ret po			;02da
	ld h,b			;02db
	add a,b			;02dc
	sub b			;02dd
	sub b			;02de
	ret p			;02df
	ret po			;02e0
	ret p			;02e1
	ret po			;02e2
	ld h,b			;02e3
	add a,b			;02e4
	sub b			;02e5
	sub b			;02e6
	add a,b			;02e7
	ld h,b			;02e8
	ret po			;02e9
	ret p			;02ea
	ret po			;02eb
	ret p			;02ec
	nop			;02ed
	sub b			;02ee
	add a,b			;02ef
	ld h,b			;02f0
	ret po			;02f1
	ret p			;02f2
	ret po			;02f3
	ret p			;02f4
	ld b,b			;02f5
	ld (hl),e		;02f6
	cp d			;02f7
	ld d,h			;02f8
	nop			;02f9
	nop			;02fa
l02fbh:
	ld (hl),e		;02fb
	cp d			;02fc
	ld d,h			;02fd
	ld (hl),b		;02fe
	ret p			;02ff
	ld (hl),b		;0300
l0301h:
	ret p			;0301
	ld (hl),b		;0302
l0303h:
	ret p			;0303
l0304h:
	ld (hl),b		;0304
	ret p			;0305
	ld h,b			;0306
	sub (hl)		;0307
	cp b			;0308
	ld sp,hl		;0309
	ld sp,hl		;030a
	cp b			;030b
	sub (hl)		;030c
	ld b,060h		;030d
	add a,(hl)		;030f
	sub (hl)		;0310
	cp b			;0311
	ld sp,hl		;0312
	ld sp,hl		;0313
	cp b			;0314
	sub (hl)		;0315
	dec b			;0316
	ld h,b			;0317
	add a,d			;0318
	jr nc,l038bh		;0319
	ex af,af'		;031b
	nop			;031c
	add a,d			;031d
	jr nc,l0390h		;031e
	ex af,af'		;0320
	nop			;0321
	add a,d			;0322
	jr nc,l0395h		;0323
	ex af,af'		;0325
	nop			;0326
	add a,h			;0327
	jr nc,l039ah		;0328
	ld (hl),b		;032a
	ld d,b			;032b
	ex af,af'		;032c
	nop			;032d
	add a,d			;032e
	ld (hl),b		;032f
	ld d,b			;0330
	ex af,af'		;0331
	nop			;0332
	add a,h			;0333
	ld (hl),b		;0334
l0335h:
	ld d,b			;0335
	ld (hl),b		;0336
	ld d,b			;0337
	ld b,000h		;0338
	add a,l			;033a
	ld (hl),b		;033b
	ld d,b			;033c
	nop			;033d
	nop			;033e
	or b			;033f
	ex af,af'		;0340
	nop			;0341
	add a,c			;0342
	ld (hl),b		;0343
	inc b			;0344
	nop			;0345
	nop			;0346
	sub b			;0347
	ld (hl),b		;0348
	ld d,b			;0349
	ld d,b			;034a
	ld b,b			;034b
	ld b,b			;034c
	ld d,h			;034d
	nop			;034e
	nop			;034f
	ld (hl),b		;0350
	ld d,b			;0351
	ld d,b			;0352
	ld b,b			;0353
	ld b,b			;0354
	ld d,h			;0355
	nop			;0356
	nop			;0357
	nop			;0358
	sub e			;0359
	jr nc,l037ch		;035a
	ld (hl),h		;035c
	ld (hl),l		;035d
	ld (hl),l		;035e
	ld d,h			;035f
	ld b,b			;0360
	ld b,b			;0361
	ld d,b			;0362
l0363h:
	ld b,e			;0363
	ld b,d			;0364
	ld (hl),b		;0365
	ld (hl),l		;0366
	ld d,b			;0367
	ld b,b			;0368
l0369h:
	ld b,b			;0369
	ld b,e			;036a
	ld b,d			;036b
	ld b,d			;036c
	inc bc			;036d
	ld d,h			;036e
	inc b			;036f
	jr nz,l02fbh		;0370
	ld (hl),d		;0372
	ld (hl),l		;0373
	ld d,h			;0374
	ld d,h			;0375
	nop			;0376
	nop			;0377
	ld (hl),h		;0378
sub_0379h:
	ld d,d			;0379
	ld (hl),l		;037a
	inc bc			;037b
l037ch:
	ld d,h			;037c
	inc bc			;037d
	jr nz,l0301h		;037e
	ld (hl),b		;0380
	rlca			;0381
	ld (hl),l		;0382
	add a,e			;0383
	ld b,d			;0384
	ld b,b			;0385
	ld b,d			;0386
	inc b			;0387
	ld d,b			;0388
	adc a,e			;0389
l038ah:
	ld (hl),b		;038a
l038bh:
	ld d,b			;038b
	ld b,b			;038c
	jr nz,l03d1h		;038d
	ld d,h			;038f
l0390h:
	ld d,h			;0390
	ld b,b			;0391
	ld b,b			;0392
	ld b,d			;0393
l0394h:
	ld b,d			;0394
l0395h:
	inc bc			;0395
	ld d,h			;0396
	ld (bc),a		;0397
	nop			;0398
	or b			;0399
l039ah:
	jr nz,$+66		;039a
l039ch:
	jr nz,l03e1h		;039c
	jr nc,$+68		;039e
	jr nz,$+69		;03a0
	ret nz			;03a2
l03a3h:
	rst 30h			;03a3
	ret nz			;03a4
	push hl			;03a5
	ret nz			;03a6
	ld (hl),h		;03a7
	ret nz			;03a8
l03a9h:
	ld b,d			;03a9
	ret nz			;03aa
	rst 30h			;03ab
	ret nz			;03ac
	push hl			;03ad
	ret nz			;03ae
	ld (hl),h		;03af
	ret nz			;03b0
	ld b,d			;03b1
	ld (hl),b		;03b2
	and b			;03b3
	ld (hl),b		;03b4
	ld (hl),b		;03b5
	ld d,b			;03b6
	ld b,b			;03b7
	ld b,b			;03b8
l03b9h:
	add a,a			;03b9
	ret p			;03ba
	ret p			;03bb
	ret po			;03bc
	ld (hl),b		;03bd
	jr nc,l0402h		;03be
	ld b,e			;03c0
	ret nz			;03c1
	ret p			;03c2
	ld (hl),b		;03c3
	ret p			;03c4
	ld (hl),b		;03c5
	jr nz,l03f8h		;03c6
	jr nc,l03eah		;03c8
	nop			;03ca
	ex af,af'		;03cb
	ret nz			;03cc
	adc a,(hl)		;03cd
	jr nc,l03f0h		;03ce
	nop			;03d0
l03d1h:
	jr nz,$+50		;03d1
	nop			;03d3
	ret nz			;03d4
	ret nz			;03d5
	jr nc,l03f8h		;03d6
	nop			;03d8
l03d9h:
	jr nz,l040bh		;03d9
	jr nc,l03e3h		;03db
	ret nz			;03dd
	ld (bc),a		;03de
	jr nc,l0363h		;03df
l03e1h:
	jr nz,l03a3h		;03e1
l03e3h:
	inc bc			;03e3
	jr nz,$+7		;03e4
	jr nc,l0369h		;03e6
	ret nz			;03e8
	inc bc			;03e9
l03eah:
	jr nz,l03f0h		;03ea
	jr nc,l03f2h		;03ec
	ret nz			;03ee
	add a,c			;03ef
l03f0h:
	jr nz,l03f5h		;03f0
l03f2h:
	jr nc,l03f6h		;03f2
	ret nz			;03f4
l03f5h:
	ld (bc),a		;03f5
l03f6h:
	jr nz,l0402h		;03f6
l03f8h:
	jr nc,l03fch		;03f8
	jr nz,l0400h		;03fa
l03fch:
	jr nc,l0400h		;03fc
l03feh:
	and b			;03fe
	ld (bc),a		;03ff
l0400h:
	jr nc,l0404h		;0400
l0402h:
	jr nz,l0408h		;0402
l0404h:
	jr nc,l038ah		;0404
l0406h:
	or b			;0406
	ret p			;0407
l0408h:
	jr nz,l042ah		;0408
	inc bc			;040a
l040bh:
	ret nz			;040b
	ld (bc),a		;040c
	jr nz,l0417h		;040d
	jr nc,l0394h		;040f
	jr nz,$-14		;0411
	and b			;0413
	inc bc			;0414
	jr nc,l039ch		;0415
l0417h:
	ret nz			;0417
	jr nz,l044ah		;0418
	and b			;041a
l041bh:
	and b			;041b
	inc bc			;041c
	jr nc,l03a3h		;041d
	ret nz			;041f
	jr nz,l0452h		;0420
	ld (0c005h),a		;0422
	add a,e			;0425
	jr nc,l0448h		;0426
	jr nz,l042dh		;0428
l042ah:
	jr nc,l042eh		;042a
	ret nz			;042c
l042dh:
	inc bc			;042d
l042eh:
	jr nc,l0434h		;042e
	jr nz,l0434h		;0430
	ret nz			;0432
	ld (bc),a		;0433
l0434h:
	jr nz,l03b9h		;0434
	ret nz			;0436
	jr nz,$+50		;0437
	inc b			;0439
l043ah:
	ret nz			;043a
	adc a,e			;043b
	jr nz,l03feh		;043c
	jr nc,$+50		;043e
	jr nz,l0402h		;0440
	ret nz			;0442
	jr nc,$-62		;0443
	jr nz,$+50		;0445
	inc bc			;0447
l0448h:
	jr nz,l044eh		;0448
l044ah:
	ret nz			;044a
	ld (bc),a		;044b
	jr nz,l0458h		;044c
l044eh:
	ret nz			;044e
	add a,d			;044f
	nop			;0450
	ret nz			;0451
l0452h:
	inc bc			;0452
	jr nz,l03d9h		;0453
	jr nc,$+34		;0455
	ret nz			;0457
l0458h:
	nop			;0458
	rlca			;0459
	ret nz			;045a
	inc bc			;045b
	jr nz,$-122		;045c
	ret nz			;045e
	jr nz,l0491h		;045f
	jr nz,$+5		;0461
	ret nz			;0463
	add a,h			;0464
	jr nc,$-62		;0465
	ret nz			;0467
	jr nz,l046fh		;0468
	ret nz			;046a
	adc a,(hl)		;046b
	jr nc,$-59		;046c
	ret nz			;046e
l046fh:
	jr nc,$+50		;046f
	jr nz,l0493h		;0471
	jr nc,l0495h		;0473
	nop			;0475
	jr nz,$+50		;0476
	jr nc,l049ah		;0478
	dec b			;047a
	ret nz			;047b
	inc b			;047c
	jr nz,l0400h		;047d
	ret nz			;047f
	inc bc			;0480
	jr nz,l0487h		;0481
	jr nc,l0406h		;0483
	jr nz,l048ah		;0485
l0487h:
	jr nc,l048ch		;0487
	and b			;0489
l048ah:
	ld b,030h		;048a
l048ch:
	ld (bc),a		;048c
	and b			;048d
	ld (bc),a		;048e
	ret p			;048f
	add a,c			;0490
l0491h:
	and b			;0491
	inc bc			;0492
l0493h:
	jr nc,l041bh		;0493
l0495h:
	ret nz			;0495
	jr nz,l04c8h		;0496
	jr nz,l04cah		;0498
l049ah:
	jr nc,l04a0h		;049a
	jr nz,l04a0h		;049c
	jr nc,l04a2h		;049e
l04a0h:
	jr nz,$+5		;04a0
l04a2h:
	ret nz			;04a2
	add a,d			;04a3
	jr nc,$-62		;04a4
	inc bc			;04a6
	jr nz,l04abh		;04a7
	jr nc,l04adh		;04a9
l04abh:
	jr nz,$-122		;04ab
l04adh:
	jr nc,l046fh		;04ad
	jr nz,l04e1h		;04af
	inc b			;04b1
l04b2h:
	jr nz,$-125		;04b2
	ret nz			;04b4
	inc bc			;04b5
l04b6h:
	jr nz,l043ah		;04b6
	jr nc,l04dah		;04b8
	inc b			;04ba
	ret nz			;04bb
l04bch:
	add a,c			;04bc
	jr nz,$+5		;04bd
	ret nz			;04bf
	inc bc			;04c0
	jr nz,l04c3h		;04c1
l04c3h:
	add a,e			;04c3
	sub b			;04c4
	ret nc			;04c5
l04c6h:
	sub b			;04c6
	dec b			;04c7
l04c8h:
	add a,b			;04c8
	add a,e			;04c9
l04cah:
	ret p			;04ca
	and b			;04cb
	ret nc			;04cc
	dec b			;04cd
	sub b			;04ce
	ld (bc),a		;04cf
	add a,b			;04d0
	ld b,060h		;04d1
	add a,c			;04d3
	sub b			;04d4
	inc bc			;04d5
	add a,b			;04d6
	dec b			;04d7
	ld h,b			;04d8
	sub d			;04d9
l04dah:
	ld b,b			;04da
	nop			;04db
l04dch:
	ld d,b			;04dc
	ret nc			;04dd
	ld d,b			;04de
	ld b,b			;04df
	ld b,b			;04e0
l04e1h:
	ret nc			;04e1
	ld d,b			;04e2
	ret nc			;04e3
	jr nz,l0536h		;04e4
	sub b			;04e6
	ld (hl),l		;04e7
	nop			;04e8
	sub b			;04e9
	ret nc			;04ea
	ret nc			;04eb
l04ech:
	dec b			;04ec
	sub b			;04ed
	add a,e			;04ee
	ret p			;04ef
l04f0h:
	and b			;04f0
	ret nc			;04f1
	dec b			;04f2
	sub b			;04f3
	inc b			;04f4
	add a,b			;04f5
l04f6h:
	inc bc			;04f6
	ld h,b			;04f7
	add a,d			;04f8
	nop			;04f9
l04fah:
	sub b			;04fa
l04fbh:
	inc bc			;04fb
	add a,b			;04fc
	ld b,060h		;04fd
	add a,e			;04ff
	nop			;0500
	ld h,b			;0501
	add a,b			;0502
	inc bc			;0503
	ld h,b			;0504
	adc a,b			;0505
	or b			;0506
	sub b			;0507
	sub b			;0508
	and b			;0509
	sub b			;050a
	nop			;050b
	cp c			;050c
	nop			;050d
	nop			;050e
	inc bc			;050f
	sub b			;0510
	rlca			;0511
	add a,b			;0512
	ld b,060h		;0513
	nop			;0515
	inc bc			;0516
	or b			;0517
	dec b			;0518
l0519h:
	jr nc,l052bh		;0519
	or b			;051b
	ld (de),a		;051c
l051dh:
	jr nc,l0523h		;051d
	jr nz,l0527h		;051f
	jr nc,l0527h		;0521
l0523h:
	jr nz,l052bh		;0523
	jr nc,l0529h		;0525
l0527h:
	jr nz,l052bh		;0527
l0529h:
	jr nc,l0531h		;0529
l052bh:
	jr nz,l052fh		;052b
l052dh:
	ret nz			;052d
	ld (bc),a		;052e
l052fh:
	jr nz,l04b2h		;052f
l0531h:
	ret nz			;0531
	dec c			;0532
	jr nz,l04b6h		;0533
	ret nz			;0535
l0536h:
	dec b			;0536
	jr nc,l053ch		;0537
	jr nz,l04bch		;0539
	ret nz			;053b
l053ch:
	inc bc			;053c
	jr nc,l0547h		;053d
l053fh:
	jr nz,$-125		;053f
	ret nz			;0541
	inc bc			;0542
	jr nc,l04c6h		;0543
	jr nz,l054bh		;0545
l0547h:
	ret nz			;0547
	ld (bc),a		;0548
	jr nc,l054eh		;0549
l054bh:
	jr nz,l0551h		;054b
	ret nz			;054d
l054eh:
	ld (bc),a		;054e
	jr nz,$-125		;054f
l0551h:
	jr nc,l0556h		;0551
	jr nz,l04dch		;0553
	ret nz			;0555
l0556h:
	jr nz,$+34		;0556
	jr nc,$+50		;0558
	jr nz,$+34		;055a
	ld a,(bc)		;055c
	ret nz			;055d
	ld (bc),a		;055e
	jr nc,l0565h		;055f
	jr nz,$+7		;0561
	jr nc,$+5		;0563
l0565h:
	or b			;0565
	dec b			;0566
	jr nc,l04ech		;0567
	or b			;0569
	jr nc,l059ch		;056a
	inc b			;056c
	jr nz,l04f0h		;056d
	ret nz			;056f
	dec b			;0570
	jr nc,l0576h		;0571
	jr nz,l04f6h		;0573
	ret nz			;0575
l0576h:
	inc bc			;0576
	jr nc,l04fah		;0577
	jr nz,l0585h		;0579
	jr nc,l0581h		;057b
	jr nz,l0581h		;057d
	jr nc,l0583h		;057f
l0581h:
	or b			;0581
	add a,c			;0582
l0583h:
	jr nc,$+5		;0583
l0585h:
	or b			;0585
	add a,e			;0586
	jr nc,l05a9h		;0587
	jr nc,l058fh		;0589
l058bh:
	or b			;058b
	add a,(hl)		;058c
	jr nz,l053fh		;058d
l058fh:
	or b			;058f
	jr nz,l05b2h		;0590
	ret nz			;0592
	ld b,030h		;0593
	ld (bc),a		;0595
	jr nz,l0519h		;0596
	ret nz			;0598
	inc bc			;0599
	jr nc,l051dh		;059a
l059ch:
	jr nz,l05a4h		;059c
	jr nc,l05a2h		;059e
	or b			;05a0
	ld (bc),a		;05a1
l05a2h:
	jr nc,l05a9h		;05a2
l05a4h:
	jr nz,$+19		;05a4
	or b			;05a6
	ld (bc),a		;05a7
	ret nz			;05a8
l05a9h:
	ld (bc),a		;05a9
	jr nz,l052dh		;05aa
	ret nz			;05ac
	inc bc			;05ad
	jr nz,l0531h		;05ae
	or b			;05b0
	rlca			;05b1
l05b2h:
	jr nc,l05b8h		;05b2
	or b			;05b4
	inc bc			;05b5
	jr nc,l05bah		;05b6
l05b8h:
	jr nz,l05bch		;05b8
l05bah:
	ret nz			;05ba
	ld (bc),a		;05bb
l05bch:
	jr nz,$+5		;05bc
	jr nc,l05c2h		;05be
l05c0h:
	jr nz,l05c4h		;05c0
l05c2h:
	jr nc,$+5		;05c2
l05c4h:
	jr nz,l054bh		;05c4
	jr nc,l058bh		;05c6
	jr nz,$-62		;05c8
	ret nz			;05ca
	inc b			;05cb
	jr nz,l05d6h		;05cc
	ret nz			;05ce
	dec b			;05cf
	jr nz,l05d6h		;05d0
	jr nc,l05dah		;05d2
	jr nz,$-125		;05d4
l05d6h:
	jr nc,l05deh		;05d6
	jr nz,$+12		;05d8
l05dah:
	ret nz			;05da
	nop			;05db
	ex af,af'		;05dc
	ret nz			;05dd
l05deh:
	ld b,030h		;05de
	ld (bc),a		;05e0
	jr nz,l05e5h		;05e1
	jr nc,l05eah		;05e3
l05e5h:
	jr nz,l05f0h		;05e5
	ret nz			;05e7
	dec b			;05e8
	ld h,b			;05e9
l05eah:
	add a,e			;05ea
	add a,b			;05eb
	sub b			;05ec
	sub b			;05ed
	dec b			;05ee
	ld h,b			;05ef
l05f0h:
	add a,c			;05f0
	add a,b			;05f1
	inc b			;05f2
	sub b			;05f3
	ld b,0c0h		;05f4
	nop			;05f6
	add a,c			;05f7
	ret p			;05f8
	inc b			;05f9
	ld b,b			;05fa
	sub (hl)		;05fb
	ret p			;05fc
	ld (hl),b		;05fd
	ld b,b			;05fe
	ld (hl),b		;05ff
	ld (hl),b		;0600
	ld b,b			;0601
	nop			;0602
	ld (hl),b		;0603
	ld b,b			;0604
	ld b,b			;0605
	ret p			;0606
	ld (hl),b		;0607
	ret p			;0608
	ld (hl),b		;0609
	ld b,b			;060a
	nop			;060b
	nop			;060c
	ld (hl),b		;060d
	ret p			;060e
	ld (hl),b		;060f
	ld b,b			;0610
	ld b,b			;0611
	dec b			;0612
	ld (hl),b		;0613
	add a,e			;0614
	ld b,b			;0615
	ret p			;0616
	ret p			;0617
	inc bc			;0618
	ld (hl),b		;0619
	ld (bc),a		;061a
	ld b,b			;061b
	ld (bc),a		;061c
	call p,0f781h		;061d
	inc b			;0620
	ld (hl),h		;0621
	inc bc			;0622
	rst 30h			;0623
	sub e			;0624
	call p,07474h		;0625
	rst 30h			;0628
	call p,0f0f4h		;0629
	ld b,b			;062c
	ld b,b			;062d
	ret p			;062e
	ret p			;062f
	ld (hl),b		;0630
	ld (hl),b		;0631
	ld b,b			;0632
	ld (hl),b		;0633
	ret p			;0634
	ret p			;0635
	ld (hl),b		;0636
	ld (hl),b		;0637
	inc bc			;0638
	ld b,b			;0639
	inc b			;063a
	rst 30h			;063b
	add a,l			;063c
	ld (hl),h		;063d
	call p,0f7f7h		;063e
	ld (hl),h		;0641
	dec b			;0642
	rst 30h			;0643
	ld (bc),a		;0644
	call p,0f084h		;0645
	ld (hl),b		;0648
	ld b,b			;0649
	ld b,b			;064a
	inc b			;064b
	ret p			;064c
	add a,c			;064d
	ld (hl),b		;064e
	inc bc			;064f
	ld b,b			;0650
	add a,h			;0651
	ld (hl),b		;0652
	ld b,b			;0653
	nop			;0654
	nop			;0655
	inc b			;0656
	call p,07402h		;0657
	ld (bc),a		;065a
	ld b,b			;065b
	add a,a			;065c
	ld (hl),h		;065d
	call p,040f4h		;065e
	ld b,b			;0661
	nop			;0662
	ld (hl),b		;0663
	inc bc			;0664
	ld b,b			;0665
	add a,h			;0666
	nop			;0667
	ld b,b			;0668
	ld (hl),b		;0669
	ld b,b			;066a
	add hl,bc		;066b
	ret p			;066c
	inc b			;066d
	ld (hl),b		;066e
	inc b			;066f
	ret p			;0670
	inc bc			;0671
	ld (hl),b		;0672
	dec b			;0673
	ld b,b			;0674
	inc bc			;0675
	ld (hl),b		;0676
	ld (bc),a		;0677
	call p,07404h		;0678
	add a,d			;067b
	nop			;067c
	ret p			;067d
	inc bc			;067e
	ld (hl),b		;067f
l0680h:
	inc bc			;0680
	ld b,b			;0681
	add a,c			;0682
	ld (hl),b		;0683
	rlca			;0684
	ld b,b			;0685
	inc b			;0686
	rst 30h			;0687
	adc a,d			;0688
	ld (hl),h		;0689
	ld b,b			;068a
	ld (hl),h		;068b
	rst 30h			;068c
	ret p			;068d
sub_068eh:
	ld (hl),b		;068e
	ld b,b			;068f
	ret p			;0690
	ld (hl),b		;0691
	ld (hl),b		;0692
	ld a,(bc)		;0693
	ld b,b			;0694
	ld (bc),a		;0695
	call p,07003h		;0696
	dec b			;0699
	ld b,b			;069a
	ld (bc),a		;069b
	ret p			;069c
	add a,c			;069d
	ld (hl),b		;069e
	inc bc			;069f
	call p,04004h		;06a0
	add a,h			;06a3
	ld (hl),b		;06a4
	ld b,b			;06a5
	ld (hl),b		;06a6
	ret p			;06a7
	dec b			;06a8
	call p,07402h		;06a9
	add a,c			;06ac
	ld b,b			;06ad
	inc bc			;06ae
	ret p			;06af
	add a,c			;06b0
	ld (hl),b		;06b1
	inc bc			;06b2
	ld b,b			;06b3
	add a,c			;06b4
	ret p			;06b5
	nop			;06b6
	ld b,0f0h		;06b7
	ld b,090h		;06b9
	add a,h			;06bb
	ret po			;06bc
	or b			;06bd
	or b			;06be
	sub b			;06bf
	inc bc			;06c0
	or b			;06c1
	add a,l			;06c2
	ret p			;06c3
	and b			;06c4
	sub b			;06c5
	add a,b			;06c6
	sub b			;06c7
	inc bc			;06c8
	ret p			;06c9
	adc a,h			;06ca
	and b			;06cb
	sub b			;06cc
	sub b			;06cd
	add a,b			;06ce
	sub b			;06cf
	add a,b			;06d0
	nop			;06d1
	sub b			;06d2
	ld h,b			;06d3
	ret po			;06d4
	add a,b			;06d5
	ld h,b			;06d6
	inc bc			;06d7
	sub b			;06d8
	add a,(hl)		;06d9
	add a,b			;06da
	ld h,b			;06db
	ret po			;06dc
	add a,b			;06dd
	ld h,b			;06de
	add a,b			;06df
	nop			;06e0
	inc b			;06e1
	ret p			;06e2
	add a,a			;06e3
	sub b			;06e4
	or b			;06e5
	sub b			;06e6
	add a,b			;06e7
	ret p			;06e8
	ret p			;06e9
	or b			;06ea
	inc b			;06eb
	sub b			;06ec
	add a,c			;06ed
	add a,b			;06ee
	inc b			;06ef
	ret p			;06f0
	add a,h			;06f1
	or b			;06f2
	sub b			;06f3
	sub b			;06f4
	add a,b			;06f5
	inc b			;06f6
	ret p			;06f7
	sub h			;06f8
	or b			;06f9
	sub b			;06fa
	sub b			;06fb
	add a,b			;06fc
	ld h,b			;06fd
	ld h,b			;06fe
	sub b			;06ff
l0700h:
	add a,b			;0700
	ld h,b			;0701
	or b			;0702
l0703h:
	sub b			;0703
	add a,b			;0704
	ld h,b			;0705
	ld h,b			;0706
	sub b			;0707
	add a,b			;0708
	ld h,b			;0709
	or b			;070a
	sub b			;070b
	add a,b			;070c
	nop			;070d
	inc b			;070e
	sub b			;070f
	add a,c			;0710
	and b			;0711
	inc bc			;0712
	sub b			;0713
	inc bc			;0714
	ret p			;0715
	inc bc			;0716
	sub b			;0717
	adc a,c			;0718
	add a,b			;0719
	sub b			;071a
	add a,b			;071b
	add a,b			;071c
	sub b			;071d
	ld h,b			;071e
	and b			;071f
	add a,b			;0720
	ld h,b			;0721
	inc bc			;0722
	sub b			;0723
	add a,(hl)		;0724
	add a,b			;0725
	ld h,b			;0726
	and b			;0727
	add a,b			;0728
	ld h,b			;0729
	add a,b			;072a
	nop			;072b
	ld b,0f0h		;072c
	dec b			;072e
	ld (hl),b		;072f
	adc a,b			;0730
	ret p			;0731
	ld (hl),b		;0732
	ld (hl),b		;0733
	ld d,b			;0734
	ld (hl),b		;0735
	ld (hl),b		;0736
	ret p			;0737
	ret p			;0738
	inc bc			;0739
	ld (hl),b		;073a
	add a,d			;073b
	ld d,b			;073c
	ld (hl),b		;073d
	inc b			;073e
	ret p			;073f
	add a,c			;0740
	ret po			;0741
	inc bc			;0742
	ld (hl),b		;0743
	add a,a			;0744
	ld d,b			;0745
	nop			;0746
	ld (hl),b		;0747
	ld b,b			;0748
	ret po			;0749
	ld d,b			;074a
	ld b,b			;074b
	inc bc			;074c
	ld (hl),b		;074d
	add a,(hl)		;074e
	ld d,b			;074f
	ld b,b			;0750
	ret po			;0751
	ld d,b			;0752
	ld b,b			;0753
	ld d,b			;0754
	nop			;0755
	inc b			;0756
	ret p			;0757
	add a,(hl)		;0758
	ld (hl),b		;0759
	ret p			;075a
	ld (hl),b		;075b
	ld d,b			;075c
	ret p			;075d
	ret p			;075e
	dec b			;075f
	ld (hl),b		;0760
	add a,c			;0761
	ld d,b			;0762
	inc b			;0763
	ret p			;0764
	inc bc			;0765
	ld (hl),b		;0766
	add a,c			;0767
	ld d,b			;0768
	inc b			;0769
	ret p			;076a
	inc bc			;076b
	ld (hl),b		;076c
	sub c			;076d
	ld d,b			;076e
	ld b,b			;076f
	ld b,b			;0770
	ld (hl),b		;0771
	ld d,b			;0772
	ld b,b			;0773
	ret p			;0774
	ld (hl),b		;0775
	ld d,b			;0776
	ld b,b			;0777
	ld b,b			;0778
	ld (hl),b		;0779
	ld d,b			;077a
	ld b,b			;077b
	ret p			;077c
	ld (hl),b		;077d
	ld d,b			;077e
	nop			;077f
	inc b			;0780
	ld (hl),b		;0781
	add a,c			;0782
	ret po			;0783
	inc bc			;0784
	ld (hl),b		;0785
	inc bc			;0786
	ret p			;0787
	inc bc			;0788
	ld (hl),b		;0789
	adc a,c			;078a
	ld d,b			;078b
	ld (hl),b		;078c
	ld d,b			;078d
	ld d,b			;078e
	ld (hl),b		;078f
	ld b,b			;0790
	ret po			;0791
	ld d,b			;0792
	ld b,b			;0793
	inc bc			;0794
	ld (hl),b		;0795
	add a,(hl)		;0796
	ld d,b			;0797
	ld b,b			;0798
	ret po			;0799
	ld d,b			;079a
	ld b,b			;079b
	ld d,b			;079c
	nop			;079d
	add a,c			;079e
	ld (hl),b		;079f
	inc bc			;07a0
	ld d,b			;07a1
	add a,(hl)		;07a2
	ld (hl),b		;07a3
	ret po			;07a4
	ret p			;07a5
	sub b			;07a6
	ld (hl),b		;07a7
	ld (hl),b		;07a8
l07a9h:
	inc bc			;07a9
	ld d,b			;07aa
	adc a,e			;07ab
	ld (hl),b		;07ac
	ret po			;07ad
	ld h,b			;07ae
	ld (hl),b		;07af
l07b0h:
	ld d,b			;07b0
	ld d,b			;07b1
	ld (hl),b		;07b2
	ld (hl),b		;07b3
	ret p			;07b4
	ret po			;07b5
	or b			;07b6
	nop			;07b7
	ret nc			;07b8
	nop			;07b9
	add a,b			;07ba
	ld h,b			;07bb
	nop			;07bc
	ld b,b			;07bd
	nop			;07be
	add a,(hl)		;07bf
	ld h,b			;07c0
	nop			;07c1
	sub b			;07c2
	add a,b			;07c3
	nop			;07c4
	ld (hl),l		;07c5
	nop			;07c6
	sbc a,b			;07c7
	ld h,b			;07c8
	nop			;07c9
	add a,b			;07ca
	ld h,b			;07cb
	nop			;07cc
	ld b,b			;07cd
	nop			;07ce
	add a,(hl)		;07cf
	ld h,b			;07d0
	ret po			;07d1
	ld h,b			;07d2
	sbc a,b			;07d3
	ld h,b			;07d4
	ret po			;07d5
	ld h,b			;07d6
	sbc a,b			;07d7
	ld h,b			;07d8
	ld h,b			;07d9
	ret pe			;07da
	add a,(hl)		;07db
	sub (hl)		;07dc
	sub (hl)		;07dd
	add a,(hl)		;07de
	ret pe			;07df
	ld h,b			;07e0
	ret po			;07e1
	ld h,b			;07e2
	sbc a,b			;07e3
	ld h,b			;07e4
	ret po			;07e5
	ld h,b			;07e6
	sbc a,b			;07e7
	ld h,b			;07e8
	add a,b			;07e9
	ld h,b			;07ea
	add a,(hl)		;07eb
	ld h,b			;07ec
	add a,b			;07ed
	ld h,b			;07ee
	add a,(hl)		;07ef
sub_07f0h:
	ld h,b			;07f0
	ld h,b			;07f1
	and 0f0h		;07f2
	sub b			;07f4
	add a,(hl)		;07f5
	ret po			;07f6
	ret p			;07f7
	sub (hl)		;07f8
	ld h,b			;07f9
	and 0f0h		;07fa
	sub b			;07fc
	add a,(hl)		;07fd
	ret po			;07fe
	ret p			;07ff
	sub (hl)		;0800
	add a,b			;0801
	ld h,b			;0802
	add a,(hl)		;0803
	ld h,b			;0804
	add a,b			;0805
	ld h,b			;0806
	add a,(hl)		;0807
l0808h:
	ld h,b			;0808
	nop			;0809
	add a,a			;080a
	xor h			;080b
l080ch:
	ret nz			;080c
	ret nz			;080d
	jr nz,l07b0h		;080e
	ret nz			;0810
	ret p			;0811
	rla			;0812
	ret nz			;0813
	sub d			;0814
	jr nc,l0817h		;0815
l0817h:
	call z,sub_0020h	;0817
	inc a			;081a
	nop			;081b
	call z,sub_0033h	;081c
	call z,sub_0020h	;081f
	inc a			;0822
	nop			;0823
	call z,sub_0033h	;0824
	ld b,0c0h		;0827
	add a,c			;0829
	jr nc,l0833h		;082a
	ret nz			;082c
	add a,c			;082d
	inc l			;082e
	rlca			;082f
	ret nz			;0830
	add a,h			;0831
	inc l			;0832
l0833h:
	ret nz			;0833
	nop			;0834
	jr nc,l083eh		;0835
	ret nz			;0837
	sub c			;0838
	inc sp			;0839
	call z,03c00h		;083a
	nop			;083d
l083eh:
	jr nz,l080ch		;083e
	nop			;0840
	inc sp			;0841
	call z,03c00h		;0842
	nop			;0845
	jr nz,l0808h		;0846
	ret nz			;0848
	jr nc,l0852h		;0849
	ret nz			;084b
	add a,c			;084c
	inc l			;084d
	rlca			;084e
	ret nz			;084f
	add a,c			;0850
l0851h:
	inc l			;0851
l0852h:
	ld b,0c0h		;0852
	sub a			;0854
	nop			;0855
	jr nc,$-62		;0856
	ret po			;0858
	ret p			;0859
	ret po			;085a
	ret nz			;085b
	ret nz			;085c
	nop			;085d
	ret nz			;085e
	jr nc,l0851h		;085f
	jr nc,l0883h		;0861
	ret nz			;0863
	nop			;0864
	nop			;0865
	ret nz			;0866
	inc a			;0867
	di			;0868
	ld (0c02ch),a		;0869
	inc bc			;086c
	nop			;086d
	adc a,c			;086e
	ret nz			;086f
	jr nc,l0892h		;0870
	ret nz			;0872
	nop			;0873
	nop			;0874
	ret nz			;0875
	ret nz			;0876
l0877h:
	jr nc,l087eh		;0877
	ret nz			;0879
	add a,c			;087a
	jr nz,l0883h		;087b
	ret nz			;087d
l087eh:
	add a,e			;087e
l087fh:
	ret po			;087f
	ret nz			;0880
	jr nz,l0886h		;0881
l0883h:
	ret nz			;0883
	add a,c			;0884
	and b			;0885
l0886h:
	inc b			;0886
	ret nz			;0887
	add a,e			;0888
	or b			;0889
	ret nz			;088a
	or b			;088b
	inc b			;088c
	ret nz			;088d
	add a,h			;088e
l088fh:
	ret p			;088f
l0890h:
	jr nc,$+34		;0890
l0892h:
	jr nc,l0899h		;0892
	ret nz			;0894
	ld (bc),a		;0895
	call m,03c02h		;0896
l0899h:
	ld (bc),a		;0899
	ret nz			;089a
	sub (hl)		;089b
	ld (0bc30h),a		;089c
	ret po			;089f
	ret po			;08a0
	cp h			;08a1
	jr nc,$+52		;08a2
	and b			;08a4
	jr nc,l08d3h		;08a5
	inc l			;08a7
	ret nz			;08a8
l08a9h:
	ret nz			;08a9
	xor h			;08aa
	ret nz			;08ab
	nop			;08ac
	jr nc,l08cfh		;08ad
	ret nz			;08af
	ret nz			;08b0
	jr nz,l08b7h		;08b1
	ret nz			;08b3
	xor c			;08b4
	jr nz,l0877h		;08b5
l08b7h:
	ret nz			;08b7
	jr nz,l08eah		;08b8
	ret nz			;08ba
	jp m,03cb0h		;08bb
	call m,0b020h		;08be
	inc a			;08c1
	inc l			;08c2
	call m,0e0f0h		;08c3
	inc a			;08c6
	jr nc,$-2		;08c7
	inc l			;08c9
	inc a			;08ca
	nop			;08cb
	ret p			;08cc
	ret nz			;08cd
	and b			;08ce
l08cfh:
	jr nz,$-62		;08cf
	jr nz,l087fh		;08d1
l08d3h:
	nop			;08d3
	di			;08d4
	jp po,03c00h		;08d5
	nop			;08d8
	cp h			;08d9
	call z,0b300h		;08da
	ld (0c003h),hl		;08dd
	sbc a,h			;08e0
	jr nz,l088fh		;08e1
	and b			;08e3
	ret p			;08e4
	ret nz			;08e5
	and b			;08e6
	jr nz,l08a9h		;08e7
	ret nz			;08e9
l08eah:
	xor h			;08ea
	xor h			;08eb
	jr nz,$-62		;08ec
	jr nz,l0890h		;08ee
	ret nz			;08f0
	ret p			;08f1
	nop			;08f2
	call z,sub_00bch	;08f3
	inc a			;08f6
	nop			;08f7
	jp po,000f3h		;08f8
	xor h			;08fb
	jr nz,$+5		;08fc
	ret nz			;08fe
	add a,e			;08ff
	ld (l00b3h),hl		;0900
	nop			;0903
	ld (bc),a		;0904
	ret p			;0905
	inc bc			;0906
	cp 081h			;0907
	ret po			;0909
l090ah:
	inc bc			;090a
	ld b,b			;090b
	ld (bc),a		;090c
	ret p			;090d
	ld (bc),a		;090e
	call p,0f082h		;090f
	ld b,b			;0912
	dec b			;0913
	ret p			;0914
	ld (bc),a		;0915
	cp 087h			;0916
	ret po			;0918
	nop			;0919
	ret p			;091a
	ret po			;091b
	ret po			;091c
	ret p			;091d
	ret p			;091e
	dec b			;091f
	ret po			;0920
	inc b			;0921
	ret p			;0922
	add a,c			;0923
	ret po			;0924
	inc b			;0925
	ret p			;0926
	inc bc			;0927
	ret po			;0928
	rlca			;0929
	ret p			;092a
	ld (bc),a		;092b
	ret po			;092c
	dec b			;092d
	ret p			;092e
	add a,l			;092f
	cp 0f0h			;0930
	ld d,b			;0932
	nop			;0933
	ret po			;0934
	dec b			;0935
	ret p			;0936
	or h			;0937
	ld d,b			;0938
	nop			;0939
	push hl			;093a
	push hl			;093b
	ret po			;093c
	ret po			;093d
	ld d,b			;093e
	cp 0e0h			;093f
	nop			;0941
	ld d,b			;0942
	ld b,b			;0943
	ret po			;0944
	ret p			;0945
	ret po			;0946
	ret p			;0947
	ret po			;0948
	ld d,b			;0949
	cp 054h			;094a
	ret p			;094c
	ret p			;094d
	ret po			;094e
	ret po			;094f
	ret p			;0950
	ld d,b			;0951
	ret p			;0952
	ld b,b			;0953
	ret po			;0954
	ret p			;0955
	ret p			;0956
	ret po			;0957
	ret p			;0958
	ld d,b			;0959
	ret p			;095a
	ld b,b			;095b
	ret po			;095c
	ret p			;095d
	ret po			;095e
	ret p			;095f
	ret po			;0960
	ld d,b			;0961
	ret p			;0962
	ld d,h			;0963
	ret po			;0964
	ret p			;0965
	ret p			;0966
	ret po			;0967
	ret p			;0968
	ld d,b			;0969
	ld d,b			;096a
	ret po			;096b
	inc bc			;096c
	ret p			;096d
	ld (bc),a		;096e
	ret po			;096f
	sub b			;0970
	ld d,b			;0971
	ret p			;0972
	cp 0feh			;0973
	ret po			;0975
	ret p			;0976
	ld d,b			;0977
	ret p			;0978
	ret po			;0979
	ret p			;097a
	cp 0f0h			;097b
	cp 050h			;097d
	ret p			;097f
	ret p			;0980
	inc b			;0981
	ret po			;0982
	adc a,(hl)		;0983
	ret p			;0984
	ld d,h			;0985
	cp 0feh			;0986
	push hl			;0988
	ret p			;0989
	ret po			;098a
	ret po			;098b
	ret p			;098c
	ld d,h			;098d
	cp 0feh			;098e
	push hl			;0990
	ret p			;0991
	rlca			;0992
	cp 081h			;0993
	ret p			;0995
l0996h:
	jr l0996h		;0996
	dec b			;0998
	ret po			;0999
	inc bc			;099a
	cp 082h			;099b
	ret po			;099d
	ret p			;099e
	dec b			;099f
	cp 003h			;09a0
	ret po			;09a2
	sub d			;09a3
	ret p			;09a4
	ret po			;09a5
	ret p			;09a6
	ret p			;09a7
	ret po			;09a8
	ld d,h			;09a9
	cp 0feh			;09aa
	ret po			;09ac
	rst 38h			;09ad
	cp 0feh			;09ae
	ret po			;09b0
	ld d,h			;09b1
	cp 0feh			;09b2
	ret po			;09b4
	ret p			;09b5
	dec b			;09b6
	cp 005h			;09b7
	ret po			;09b9
	add a,e			;09ba
	cp 000h			;09bb
	ret po			;09bd
	inc bc			;09be
	ret p			;09bf
	ld (bc),a		;09c0
	ret po			;09c1
	inc b			;09c2
	ret p			;09c3
	inc bc			;09c4
	ret po			;09c5
	ld b,0f0h		;09c6
	adc a,b			;09c8
	cp 0f0h			;09c9
	ld d,b			;09cb
	ret p			;09cc
	push af			;09cd
	push af			;09ce
	cp 0f5h			;09cf
	inc b			;09d1
	nop			;09d2
	add a,h			;09d3
	push hl			;09d4
	call po,0e5f4h		;09d5
	inc b			;09d8
	nop			;09d9
	add a,e			;09da
	push af			;09db
	cp 0feh			;09dc
	dec b			;09de
	ret po			;09df
	add a,h			;09e0
	push hl			;09e1
	push af			;09e2
	cp 0e5h			;09e3
	inc b			;09e5
	nop			;09e6
	inc b			;09e7
	cp 004h			;09e8
	nop			;09ea
	add a,h			;09eb
	call po,0f5e5h		;09ec
	call p,sub_0004h	;09ef
	ld (bc),a		;09f2
	push af			;09f3
	add a,c			;09f4
	push hl			;09f5
	dec b			;09f6
	ld b,b			;09f7
	inc b			;09f8
	push hl			;09f9
	ex af,af'		;09fa
	ret po			;09fb
	ld (bc),a		;09fc
	ret p			;09fd
	ld (bc),a		;09fe
	cp 002h			;09ff
	ret p			;0a01
	ld (bc),a		;0a02
	ret po			;0a03
	ld (bc),a		;0a04
	ret p			;0a05
	add a,d			;0a06
	call p,005e4h		;0a07
	nop			;0a0a
	add a,c			;0a0b
	push af			;0a0c
	inc b			;0a0d
	ret po			;0a0e
	inc b			;0a0f
	ret p			;0a10
	sub d			;0a11
	ret po			;0a12
	nop			;0a13
	ret p			;0a14
	ret po			;0a15
	ld d,b			;0a16
	ret p			;0a17
	ret p			;0a18
	ret po			;0a19
	ret p			;0a1a
	ret po			;0a1b
	ret p			;0a1c
	ret po			;0a1d
	ret p			;0a1e
	ret po			;0a1f
	ret p			;0a20
	ret p			;0a21
	ld b,b			;0a22
	call po,0f005h		;0a23
	ld (bc),a		;0a26
	ret po			;0a27
	add a,h			;0a28
l0a29h:
	ld b,b			;0a29
	ret p			;0a2a
	ret po			;0a2b
	ret po			;0a2c
	inc bc			;0a2d
	ret p			;0a2e
	ld (bc),a		;0a2f
	cp 08bh			;0a30
	nop			;0a32
	cp 0e0h			;0a33
	ret p			;0a35
	nop			;0a36
	push af			;0a37
	push hl			;0a38
	call po,0fe00h		;0a39
	ret po			;0a3c
	inc bc			;0a3d
	ret p			;0a3e
	add a,l			;0a3f
	push hl			;0a40
	ret po			;0a41
	nop			;0a42
	cp 0e0h			;0a43
	inc bc			;0a45
	ret p			;0a46
	add a,d			;0a47
	cp 050h			;0a48
	nop			;0a4a
	inc c			;0a4b
	ret po			;0a4c
	add a,e			;0a4d
	ret p			;0a4e
	ret po			;0a4f
	ret p			;0a50
	dec b			;0a51
	ret po			;0a52
	ld (bc),a		;0a53
	ret p			;0a54
	ld (de),a		;0a55
	ret po			;0a56
	nop			;0a57
	add a,h			;0a58
	jp m,0faf0h		;0a59
	jp m,sub_0004h		;0a5c
	inc b			;0a5f
	jp m,0807fh		;0a60
	inc sp			;0a63
	add a,b			;0a64
	add a,c			;0a65
	sbc a,b			;0a66
	rlca			;0a67
	add a,b			;0a68
	inc bc			;0a69
	sub b			;0a6a
	add a,c			;0a6b
	ld h,b			;0a6c
	ld b,080h		;0a6d
	jr $-102		;0a6f
	ld b,080h		;0a71
	adc a,b			;0a73
	sbc a,b			;0a74
	sub b			;0a75
	add a,b			;0a76
	nop			;0a77
	sub b			;0a78
	sub b			;0a79
	add a,b			;0a7a
	add a,b			;0a7b
	dec b			;0a7c
	sub b			;0a7d
	inc b			;0a7e
	add a,b			;0a7f
	add a,c			;0a80
	sbc a,b			;0a81
	ex af,af'		;0a82
	add a,b			;0a83
	adc a,d			;0a84
	ld h,b			;0a85
	add a,(hl)		;0a86
	add a,(hl)		;0a87
	sbc a,b			;0a88
	add a,b			;0a89
	sbc a,b			;0a8a
	xor b			;0a8b
	sbc a,b			;0a8c
	ld h,b			;0a8d
	add a,(hl)		;0a8e
	ld b,098h		;0a8f
	dec b			;0a91
	xor c			;0a92
	add hl,bc		;0a93
	jp m,0f981h		;0a94
	ld b,0a9h		;0a97
	ld (bc),a		;0a99
	jp m,0ff81h		;0a9a
	inc bc			;0a9d
	xor c			;0a9e
	inc bc			;0a9f
	jp m,0ff83h		;0aa0
	jp m,l03a9h		;0aa3
	jp m,0f984h		;0aa6
	jp m,0faffh		;0aa9
	dec b			;0aac
	xor c			;0aad
	inc bc			;0aae
	jp m,0a903h		;0aaf
	dec b			;0ab2
	jp m,0a907h		;0ab3
	add a,c			;0ab6
	jp m,0a905h		;0ab7
	ld e,e			;0aba
	jp m,0a935h		;0abb
	add a,c			;0abe
	sbc a,b			;0abf
	ld b,0a9h		;0ac0
	inc bc			;0ac2
	sbc a,b			;0ac3
	dec b			;0ac4
	xor c			;0ac5
	add a,c			;0ac6
	xor b			;0ac7
	inc bc			;0ac8
	xor c			;0ac9
	inc bc			;0aca
	sbc a,b			;0acb
	ld (bc),a		;0acc
	xor c			;0acd
	inc bc			;0ace
	jp m,09881h		;0acf
	dec b			;0ad2
	xor c			;0ad3
	ld (bc),a		;0ad4
	jp m,09803h		;0ad5
	ld (bc),a		;0ad8
	xor c			;0ad9
	inc bc			;0ada
	jp m,0a981h		;0adb
	inc bc			;0ade
	xor b			;0adf
	add a,(hl)		;0ae0
	xor c			;0ae1
	jp m,0faa9h		;0ae2
	ld sp,hl		;0ae5
	ld sp,hl		;0ae6
	inc b			;0ae7
	sbc a,b			;0ae8
	adc a,a			;0ae9
	ld sp,hl		;0aea
	xor c			;0aeb
	add a,(hl)		;0aec
	sbc a,b			;0aed
	xor c			;0aee
	xor b			;0aef
	xor c			;0af0
	xor c			;0af1
	jp m,0a6fah		;0af2
	xor b			;0af5
	xor c			;0af6
	xor b			;0af7
	xor c			;0af8
	inc bc			;0af9
	jp m,0a903h		;0afa
	add a,l			;0afd
	sbc a,b			;0afe
	xor b			;0aff
	xor b			;0b00
	sbc a,b			;0b01
	xor c			;0b02
	inc bc			;0b03
	sbc a,b			;0b04
	dec b			;0b05
	xor c			;0b06
	add a,e			;0b07
	sbc a,b			;0b08
	xor c			;0b09
	sbc a,b			;0b0a
	dec b			;0b0b
	xor c			;0b0c
	inc bc			;0b0d
	xor b			;0b0e
	add hl,bc		;0b0f
	sbc a,b			;0b10
	inc b			;0b11
	xor c			;0b12
	ld b,098h		;0b13
	ld (bc),a		;0b15
	xor c			;0b16
	add a,c			;0b17
	sub (hl)		;0b18
	inc b			;0b19
	xor c			;0b1a
	inc bc			;0b1b
	jp m,06085h		;0b1c
	sub (hl)		;0b1f
	sbc a,b			;0b20
	xor c			;0b21
	xor c			;0b22
	inc bc			;0b23
	jp m,06083h		;0b24
	add a,b			;0b27
	xor b			;0b28
	inc bc			;0b29
	xor c			;0b2a
	ld (bc),a		;0b2b
	jp m,0a904h		;0b2c
	ld (bc),a		;0b2f
	sbc a,b			;0b30
	add a,d			;0b31
	add a,b			;0b32
	sub b			;0b33
	inc bc			;0b34
	xor c			;0b35
	add a,l			;0b36
	sbc a,b			;0b37
	sub b			;0b38
	add a,b			;0b39
	add a,b			;0b3a
	nop			;0b3b
	inc b			;0b3c
	jp m,0f984h		;0b3d
	sbc a,b			;0b40
	sbc a,b			;0b41
	sub b			;0b42
	inc b			;0b43
	jp m,0a902h		;0b44
	add a,d			;0b47
	sbc a,b			;0b48
	add a,b			;0b49
	inc bc			;0b4a
	xor c			;0b4b
	ld (bc),a		;0b4c
	sbc a,b			;0b4d
	add a,e			;0b4e
	adc a,b			;0b4f
	add a,b			;0b50
	sub b			;0b51
	ld b,080h		;0b52
	ld (bc),a		;0b54
	xor b			;0b55
	ld (bc),a		;0b56
	add a,b			;0b57
	add a,e			;0b58
	xor b			;0b59
	add a,b			;0b5a
	add a,b			;0b5b
	inc bc			;0b5c
	xor b			;0b5d
	ld (bc),a		;0b5e
	sbc a,b			;0b5f
	add a,e			;0b60
	xor b			;0b61
	add a,b			;0b62
	add a,b			;0b63
	inc b			;0b64
	sbc a,b			;0b65
	add a,c			;0b66
	ret m			;0b67
	inc bc			;0b68
	xor b			;0b69
	rlca			;0b6a
	add a,b			;0b6b
	ld (bc),a		;0b6c
	sbc a,b			;0b6d
	adc a,d			;0b6e
	xor b			;0b6f
	xor c			;0b70
	sub b			;0b71
	add a,b			;0b72
	sbc a,b			;0b73
	sbc a,b			;0b74
	xor c			;0b75
	sbc a,b			;0b76
	xor c			;0b77
	xor c			;0b78
	dec b			;0b79
	add a,b			;0b7a
	ld (bc),a		;0b7b
	xor b			;0b7c
	add a,l			;0b7d
	xor c			;0b7e
	add a,b			;0b7f
	sub b			;0b80
	sbc a,b			;0b81
	xor c			;0b82
	inc b			;0b83
	jp m,08084h		;0b84
	sub b			;0b87
	sbc a,b			;0b88
	xor c			;0b89
	inc b			;0b8a
	jp m,08003h		;0b8b
l0b8eh:
	add a,l			;0b8e
	xor b			;0b8f
	sbc a,b			;0b90
	xor c			;0b91
	jp m,l07a9h		;0b92
	xor b			;0b95
	add a,c			;0b96
	sbc a,b			;0b97
	ex af,af'		;0b98
	add a,b			;0b99
	ld (bc),a		;0b9a
	xor c			;0b9b
	add a,c			;0b9c
l0b9dh:
	jp m,0a904h		;0b9d
	add a,c			;0ba0
	sbc a,b			;0ba1
	inc b			;0ba2
	jp m,0a904h		;0ba3
	inc b			;0ba6
	jp m,0a907h		;0ba7
	add a,h			;0baa
	sbc a,b			;0bab
	xor c			;0bac
	sbc a,b			;0bad
l0baeh:
	sbc a,b			;0bae
	inc bc			;0baf
	add a,b			;0bb0
	ld (bc),a		;0bb1
	sbc a,b			;0bb2
	inc c			;0bb3
	add a,b			;0bb4
	add a,c			;0bb5
	sub b			;0bb6
	rlca			;0bb7
	add a,b			;0bb8
	ld (bc),a		;0bb9
	xor c			;0bba
	add a,c			;0bbb
	sbc a,b			;0bbc
	dec b			;0bbd
	add a,b			;0bbe
	ld (bc),a		;0bbf
	sbc a,b			;0bc0
	add hl,bc		;0bc1
	add a,b			;0bc2
	add a,c			;0bc3
	sub b			;0bc4
	inc b			;0bc5
	add a,b			;0bc6
	nop			;0bc7
	nop			;0bc8
	nop			;0bc9
l0bcah:
	nop			;0bca
	add a,h			;0bcb
	ret nz			;0bcc
l0bcdh:
	jr nc,l0befh		;0bcd
	jr nz,l0bd5h		;0bcf
	ret nz			;0bd1
	ld (bc),a		;0bd2
	jr nz,l0bdbh		;0bd3
l0bd5h:
	ret nz			;0bd5
	inc bc			;0bd6
	jr nz,l0bdeh		;0bd7
	ret nz			;0bd9
	add a,d			;0bda
l0bdbh:
	jr nz,l0b9dh		;0bdb
	inc bc			;0bdd
l0bdeh:
	jr nz,$+5		;0bde
	ret nz			;0be0
	ld (bc),a		;0be1
	jr nc,l0be6h		;0be2
	jr nz,l0beah		;0be4
l0be6h:
	ret nz			;0be6
	ld (bc),a		;0be7
	jr nz,$+6		;0be8
l0beah:
	ret nz			;0bea
l0bebh:
	add a,c			;0beb
	nop			;0bec
	ld b,0c0h		;0bed
l0befh:
	add a,c			;0bef
	jr nz,$+5		;0bf0
	ret nz			;0bf2
	inc bc			;0bf3
	jr nz,l0bfah		;0bf4
	ret nz			;0bf6
	inc bc			;0bf7
	jr nz,l0bffh		;0bf8
l0bfah:
	ret nz			;0bfa
	ld (bc),a		;0bfb
	jr nz,$+5		;0bfc
	ret nz			;0bfe
l0bffh:
	ld (bc),a		;0bff
	jr nz,l0b8eh		;0c00
	ret nz			;0c02
	jr nz,l0c25h		;0c03
	jr nc,$+50		;0c05
	jr nz,l0c29h		;0c07
	ret nz			;0c09
	ret nz			;0c0a
	jr nz,l0bcdh		;0c0b
	jr nz,l0c14h		;0c0d
l0c0fh:
	ret nz			;0c0f
	ld (bc),a		;0c10
	jr nz,l0c1bh		;0c11
	ret nz			;0c13
l0c14h:
	add a,c			;0c14
	jr nz,l0c1ch		;0c15
l0c17h:
	ret nz			;0c17
	add a,l			;0c18
	jr nc,$+34		;0c19
l0c1bh:
	ret nz			;0c1b
l0c1ch:
	ret nz			;0c1c
	jr nz,$+5		;0c1d
	ret nz			;0c1f
	ld (bc),a		;0c20
	jr nc,l0c25h		;0c21
	jr nz,l0c2ch		;0c23
l0c25h:
	ret nz			;0c25
	ld (bc),a		;0c26
	jr nc,l0baeh		;0c27
l0c29h:
	jr nz,l0bebh		;0c29
	ret nz			;0c2b
l0c2ch:
	jr nc,$+34		;0c2c
	dec b			;0c2e
	ret nz			;0c2f
	add a,c			;0c30
	jr nz,l0c33h		;0c31
l0c33h:
	inc bc			;0c33
	ret nz			;0c34
	ld (bc),a		;0c35
	jr nz,$+5		;0c36
	ret nz			;0c38
	ld (bc),a		;0c39
sub_0c3ah:
	jr nc,l0c3fh		;0c3a
	jr nz,$+5		;0c3c
	ret nz			;0c3e
l0c3fh:
	add a,h			;0c3f
	jr nz,l0c72h		;0c40
	jr nc,$+34		;0c42
	dec b			;0c44
	ret nz			;0c45
	ld (bc),a		;0c46
	jr nc,l0bcah		;0c47
	jr nz,$+5		;0c49
	ret nz			;0c4b
	add a,e			;0c4c
	jr nc,l0c0fh		;0c4d
	ret nz			;0c4f
	inc bc			;0c50
	jr nz,l0c55h		;0c51
	ret nz			;0c53
	add a,c			;0c54
l0c55h:
	jp nz,0c007h		;0c55
	add a,e			;0c58
	jr nz,l0c8bh		;0c59
	jr nz,l0c62h		;0c5b
	ret nz			;0c5d
	inc bc			;0c5e
	jr nz,l0c65h		;0c5f
	ret nz			;0c61
l0c62h:
	ld (bc),a		;0c62
	jr nz,l0c65h		;0c63
l0c65h:
	ld (bc),a		;0c65
	ld h,b			;0c66
	ld (bc),a		;0c67
	add a,b			;0c68
	ld (bc),a		;0c69
	sub b			;0c6a
	inc b			;0c6b
	and b			;0c6c
	adc a,h			;0c6d
	sub b			;0c6e
	add a,b			;0c6f
	ld h,b			;0c70
	add a,b			;0c71
l0c72h:
	sub b			;0c72
	add a,b			;0c73
	and b			;0c74
	and b			;0c75
	sub b			;0c76
	sub b			;0c77
	add a,b			;0c78
	add a,b			;0c79
	inc bc			;0c7a
	ld h,b			;0c7b
	add a,a			;0c7c
	add a,b			;0c7d
	sub b			;0c7e
	sub b			;0c7f
	or b			;0c80
	and b			;0c81
	sub b			;0c82
	add a,b			;0c83
	nop			;0c84
	inc bc			;0c85
	ret nz			;0c86
	ld (bc),a		;0c87
	jr nz,l0c8ch		;0c88
	ret nz			;0c8a
l0c8bh:
	add a,c			;0c8b
l0c8ch:
	jr nc,l0c91h		;0c8c
	ret nz			;0c8e
	add a,c			;0c8f
	nop			;0c90
l0c91h:
	inc bc			;0c91
	ret nz			;0c92
	ld (bc),a		;0c93
	jr nc,l0c17h		;0c94
	jr nz,l0c9dh		;0c96
	ret nz			;0c98
	add a,c			;0c99
	jr nz,l0c9ch		;0c9a
l0c9ch:
	nop			;0c9c
l0c9dh:
	nop			;0c9d
	nop			;0c9e
	nop			;0c9f
	nop			;0ca0
	ld (bc),a		;0ca1
	or 081h			;0ca2
	ld sp,hl		;0ca4
	inc b			;0ca5
	cp c			;0ca6
	add a,l			;0ca7
	and (hl)		;0ca8
	ld h,l			;0ca9
	or 0f6h			;0caa
	ld sp,hl		;0cac
	inc bc			;0cad
	cp c			;0cae
	add a,h			;0caf
	and (hl)		;0cb0
	ld h,l			;0cb1
	or 0f6h			;0cb2
	inc bc			;0cb4
	cp c			;0cb5
	adc a,b			;0cb6
	or (hl)			;0cb7
	and (hl)		;0cb8
	ld h,l			;0cb9
	or 0f6h			;0cba
	ld sp,hl		;0cbc
	cp c			;0cbd
	cp c			;0cbe
	inc bc			;0cbf
	and (hl)		;0cc0
	and c			;0cc1
	sub (hl)		;0cc2
	xor c			;0cc3
	and (hl)		;0cc4
	or 0a9h			;0cc5
	sub (hl)		;0cc7
	ld h,b			;0cc8
	and (hl)		;0cc9
	sub (hl)		;0cca
	or 0f9h			;0ccb
	xor c			;0ccd
	sub (hl)		;0cce
	sub (hl)		;0ccf
	ld h,b			;0cd0
	sub (hl)		;0cd1
	sub (hl)		;0cd2
	and (hl)		;0cd3
	or 096h			;0cd4
	sub (hl)		;0cd6
	and (hl)		;0cd7
	ld h,b			;0cd8
	ld h,b			;0cd9
	sub (hl)		;0cda
	and (hl)		;0cdb
	or 0a9h			;0cdc
	sub (hl)		;0cde
	sub (hl)		;0cdf
	ld h,b			;0ce0
	add a,b			;0ce1
	add a,b			;0ce2
	ld b,090h		;0ce3
	adc a,c			;0ce5
	add a,a			;0ce6
	add a,l			;0ce7
	ld h,l			;0ce8
	sub (hl)		;0ce9
	ld sp,hl		;0cea
	ld sp,hl		;0ceb
	xor c			;0cec
	sbc a,b			;0ced
	xor b			;0cee
	dec b			;0cef
	add a,b			;0cf0
	ld (bc),a		;0cf1
	sub b			;0cf2
	inc b			;0cf3
	ld h,l			;0cf4
	ld (bc),a		;0cf5
	ret m			;0cf6
	sbc a,b			;0cf7
	cp b			;0cf8
	xor b			;0cf9
	ld h,l			;0cfa
	sbc a,b			;0cfb
	xor b			;0cfc
	ret m			;0cfd
	xor b			;0cfe
	cp b			;0cff
	cp b			;0d00
	xor b			;0d01
	ld h,h			;0d02
	sub (hl)		;0d03
	and (hl)		;0d04
	or 0a9h			;0d05
	sub (hl)		;0d07
	sub (hl)		;0d08
	ld h,h			;0d09
	ret m			;0d0a
	ret m			;0d0b
	cp b			;0d0c
	xor b			;0d0d
	ld h,h			;0d0e
	ld h,h			;0d0f
	dec b			;0d10
	ld b,b			;0d11
	add a,d			;0d12
	ld d,h			;0d13
	ld (hl),h		;0d14
	inc bc			;0d15
	ld d,h			;0d16
	add a,h			;0d17
	ld h,h			;0d18
	ld (hl),h		;0d19
	call p,00574h		;0d1a
	ld b,b			;0d1d
	adc a,e			;0d1e
	ld (hl),b		;0d1f
	ld b,b			;0d20
	ld (hl),b		;0d21
	ld d,b			;0d22
	ld d,b			;0d23
	ld b,b			;0d24
	ld d,b			;0d25
	ret m			;0d26
	cp b			;0d27
	cp b			;0d28
	xor b			;0d29
	inc bc			;0d2a
	add a,b			;0d2b
	add a,c			;0d2c
	sub b			;0d2d
	inc bc			;0d2e
	xor b			;0d2f
	inc b			;0d30
	add a,b			;0d31
	add a,c			;0d32
	sub b			;0d33
	inc bc			;0d34
	add a,h			;0d35
	adc a,e			;0d36
	ret m			;0d37
	cp b			;0d38
	cp b			;0d39
	xor b			;0d3a
	xor b			;0d3b
	ld d,b			;0d3c
	ld d,h			;0d3d
	ld (hl),h		;0d3e
	ld d,h			;0d3f
	add a,l			;0d40
	add a,l			;0d41
	dec b			;0d42
	ret m			;0d43
	ld (bc),a		;0d44
	cp b			;0d45
	add a,c			;0d46
	xor b			;0d47
	inc b			;0d48
	add a,b			;0d49
	ex af,af'		;0d4a
	sub b			;0d4b
	add a,(hl)		;0d4c
	ld b,b			;0d4d
	ld h,b			;0d4e
	ld d,b			;0d4f
	ld d,b			;0d50
	ld (hl),b		;0d51
	ld (hl),b		;0d52
	inc bc			;0d53
	ld h,h			;0d54
	add a,c			;0d55
	and (hl)		;0d56
	inc b			;0d57
	nop			;0d58
	inc bc			;0d59
	or (hl)			;0d5a
	add a,c			;0d5b
	and (hl)		;0d5c
	dec b			;0d5d
	add a,b			;0d5e
	adc a,c			;0d5f
	add a,h			;0d60
	halt			;0d61
	ld h,h			;0d62
	ld h,l			;0d63
	add a,h			;0d64
	add a,l			;0d65
	sbc a,b			;0d66
	ld (hl),h		;0d67
	ld (hl),h		;0d68
	inc bc			;0d69
	ld h,l			;0d6a
	add a,h			;0d6b
	sub (hl)		;0d6c
	or 0b8h			;0d6d
	xor b			;0d6f
	add hl,bc		;0d70
	add a,b			;0d71
	ld b,090h		;0d72
	adc a,e			;0d74
	ld h,h			;0d75
	add a,h			;0d76
	add a,h			;0d77
	sub h			;0d78
	call p,094a4h		;0d79
	sub h			;0d7c
	ld b,b			;0d7d
	ld b,b			;0d7e
	ld h,b			;0d7f
	inc b			;0d80
	add a,h			;0d81
	add a,l			;0d82
	sub h			;0d83
	or h			;0d84
	sub h			;0d85
	add a,h			;0d86
	add a,h			;0d87
	inc bc			;0d88
	add a,l			;0d89
	adc a,e			;0d8a
	ld h,l			;0d8b
	sub h			;0d8c
	add a,h			;0d8d
	sub h			;0d8e
	add a,l			;0d8f
	add a,l			;0d90
	ld h,l			;0d91
	add a,l			;0d92
	ld h,l			;0d93
	sub h			;0d94
	sub h			;0d95
	inc bc			;0d96
	sub l			;0d97
	inc bc			;0d98
	add a,l			;0d99
	inc b			;0d9a
	sub h			;0d9b
	add a,c			;0d9c
	push af			;0d9d
	inc bc			;0d9e
	ld h,l			;0d9f
	ld b,084h		;0da0
	adc a,d			;0da2
	add a,l			;0da3
	ld h,l			;0da4
	sub h			;0da5
	add a,h			;0da6
	sub h			;0da7
	add a,h			;0da8
	add a,h			;0da9
	ld h,l			;0daa
	add a,h			;0dab
	ld h,h			;0dac
	nop			;0dad
	ld (bc),a		;0dae
	ld b,b			;0daf
	or d			;0db0
	ld h,b			;0db1
	ld h,h			;0db2
	add a,h			;0db3
	sub h			;0db4
	call p,0b5a4h		;0db5
	or l			;0db8
	call p,0b4f4h		;0db9
	and h			;0dbc
	ld d,b			;0dbd
	ld d,b			;0dbe
	push af			;0dbf
	and h			;0dc0
	and h			;0dc1
	call p,0b4f4h		;0dc2
	and h			;0dc5
	ld d,b			;0dc6
	ret p			;0dc7
	ld (hl),b		;0dc8
	ld d,b			;0dc9
	ld b,b			;0dca
	ld d,b			;0dcb
	ld b,b			;0dcc
	or l			;0dcd
	or l			;0dce
	ld (hl),b		;0dcf
	ld (hl),b		;0dd0
	ld d,b			;0dd1
	ld d,b			;0dd2
	ld b,b			;0dd3
	and h			;0dd4
	push af			;0dd5
	call p,07070h		;0dd6
	ld d,b			;0dd9
	ld b,b			;0dda
	ld d,b			;0ddb
	ld (hl),b		;0ddc
	ret p			;0ddd
	ret p			;0dde
	or h			;0ddf
	ld h,h			;0de0
	sub h			;0de1
	sub h			;0de2
	inc bc			;0de3
	ld b,b			;0de4
	add a,d			;0de5
	ld d,b			;0de6
	ld (hl),l		;0de7
	inc b			;0de8
	ld (hl),h		;0de9
	ld (bc),a		;0dea
	call p,0f094h		;0deb
	ld h,h			;0dee
	add a,h			;0def
	sub h			;0df0
	and h			;0df1
	add a,h			;0df2
	add a,b			;0df3
	sub b			;0df4
	ld b,b			;0df5
	ld h,l			;0df6
	add a,l			;0df7
	sub h			;0df8
	sub h			;0df9
	add a,h			;0dfa
	add a,h			;0dfb
	sub h			;0dfc
	sub b			;0dfd
	xor b			;0dfe
	add a,l			;0dff
	add a,l			;0e00
l0e01h:
	inc b			;0e01
	add a,h			;0e02
	add a,c			;0e03
	sub h			;0e04
	inc bc			;0e05
	ret m			;0e06
l0e07h:
	ld (bc),a		;0e07
	cp b			;0e08
	adc a,h			;0e09
	xor b			;0e0a
	add a,l			;0e0b
	add a,l			;0e0c
	ld h,h			;0e0d
	and (hl)		;0e0e
	or 0b6h			;0e0f
	and (hl)		;0e11
	halt			;0e12
	halt			;0e13
	ld (hl),l		;0e14
	xor b			;0e15
	inc b			;0e16
	add a,l			;0e17
	add a,a			;0e18
	add a,h			;0e19
	ld b,b			;0e1a
	ld b,b			;0e1b
	ld h,l			;0e1c
	add a,l			;0e1d
	sub h			;0e1e
	sub h			;0e1f
	inc b			;0e20
	ld b,b			;0e21
	adc a,d			;0e22
	ld (hl),b		;0e23
	call p,0faf5h		;0e24
	ld sp,hl		;0e27
	push af			;0e28
	call p,06570h		;0e29
	add a,l			;0e2c
	inc bc			;0e2d
	sub h			;0e2e
	add a,(hl)		;0e2f
	add a,h			;0e30
	ld d,b			;0e31
	ld d,b			;0e32
	sub l			;0e33
	ld h,h			;0e34
	add a,h			;0e35
	inc bc			;0e36
	sub h			;0e37
	sbc a,c			;0e38
	add a,h			;0e39
	ld d,b			;0e3a
	ret p			;0e3b
	ld (hl),b		;0e3c
	ld d,b			;0e3d
	ld b,b			;0e3e
	ld d,b			;0e3f
	ld b,b			;0e40
l0e41h:
	ld h,l			;0e41
	add a,l			;0e42
	ld (hl),b		;0e43
	ld (hl),b		;0e44
	ld d,b			;0e45
	ld d,b			;0e46
	ld b,b			;0e47
	ld h,h			;0e48
	add a,l			;0e49
	sub h			;0e4a
	ret nz			;0e4b
	ret nz			;0e4c
	jr nz,l0e41h		;0e4d
	ld (02020h),a		;0e4f
	inc bc			;0e52
	ret nz			;0e53
	sub (hl)		;0e54
	jr nz,l0e89h		;0e55
	ld (02020h),a		;0e57
	ret nz			;0e5a
	ld b,b			;0e5b
	ld d,b			;0e5c
	ld (hl),b		;0e5d
	rst 30h			;0e5e
	rst 30h			;0e5f
	ld (hl),b		;0e60
	ld d,b			;0e61
	ld b,b			;0e62
	ret nz			;0e63
	ret nz			;0e64
	jr nz,l0e99h		;0e65
	ld (02020h),a		;0e67
	ret nz			;0e6a
	nop			;0e6b
	ex af,af'		;0e6c
	ld b,b			;0e6d
	inc bc			;0e6e
	ld (hl),b		;0e6f
	add a,c			;0e70
	ld b,b			;0e71
	inc bc			;0e72
	ld d,b			;0e73
	add a,c			;0e74
	ld (hl),b		;0e75
	ex af,af'		;0e76
	ld b,b			;0e77
	ld (bc),a		;0e78
	sub h			;0e79
	add a,l			;0e7a
	sub b			;0e7b
	add a,b			;0e7c
	add a,b			;0e7d
	ld b,b			;0e7e
	ld d,b			;0e7f
	inc b			;0e80
	ld b,b			;0e81
	add a,e			;0e82
	ld d,b			;0e83
	ld b,b			;0e84
	ld d,b			;0e85
	ld a,(bc)		;0e86
	ld b,b			;0e87
	ld (bc),a		;0e88
l0e89h:
	or b			;0e89
	ld (bc),a		;0e8a
	ret p			;0e8b
	ld (bc),a		;0e8c
	ld (hl),b		;0e8d
	ld (bc),a		;0e8e
	ld d,b			;0e8f
	add a,e			;0e90
	or b			;0e91
	ret p			;0e92
	ret p			;0e93
	dec b			;0e94
	ld (hl),b		;0e95
	inc b			;0e96
	ld b,b			;0e97
	add a,e			;0e98
l0e99h:
	ld (hl),b		;0e99
	ld d,b			;0e9a
	ld d,b			;0e9b
	dec b			;0e9c
	ld b,b			;0e9d
	inc b			;0e9e
	add a,h			;0e9f
	add a,d			;0ea0
	add a,b			;0ea1
	ld d,b			;0ea2
	add hl,bc		;0ea3
	ld b,b			;0ea4
	add a,(hl)		;0ea5
	ld d,b			;0ea6
	ld b,b			;0ea7
	ld b,b			;0ea8
	ld d,b			;0ea9
	ld b,b			;0eaa
	ld d,b			;0eab
	inc bc			;0eac
	ld b,b			;0ead
	add a,c			;0eae
	ld d,b			;0eaf
	rlca			;0eb0
	ld b,b			;0eb1
	inc b			;0eb2
	add a,h			;0eb3
	ex af,af'		;0eb4
	ld b,b			;0eb5
	add a,c			;0eb6
	ld (hl),b		;0eb7
	inc bc			;0eb8
	ld d,b			;0eb9
	rlca			;0eba
	ld b,b			;0ebb
	inc bc			;0ebc
	add a,h			;0ebd
	add a,d			;0ebe
	add a,l			;0ebf
	ld h,l			;0ec0
	inc b			;0ec1
	ld b,b			;0ec2
	inc b			;0ec3
	add a,h			;0ec4
	ld (bc),a		;0ec5
	ld d,b			;0ec6
	ld b,040h		;0ec7
	ld (bc),a		;0ec9
	ld d,b			;0eca
	inc bc			;0ecb
	ld b,b			;0ecc
	ld (bc),a		;0ecd
	sub h			;0ece
	add a,l			;0ecf
	call p,08060h		;0ed0
	sub b			;0ed3
	and b			;0ed4
	inc b			;0ed5
	ld d,b			;0ed6
	ex af,af'		;0ed7
	sub b			;0ed8
	inc b			;0ed9
	ld b,b			;0eda
	add a,a			;0edb
	ld (hl),b		;0edc
	ld d,b			;0edd
	ld (hl),b		;0ede
	ld d,b			;0edf
	ld (hl),b		;0ee0
	ld b,b			;0ee1
	ld b,b			;0ee2
	inc b			;0ee3
	add a,b			;0ee4
	add a,c			;0ee5
	ld h,b			;0ee6
	dec b			;0ee7
	sub b			;0ee8
	sub e			;0ee9
	add a,b			;0eea
	add a,h			;0eeb
	add a,h			;0eec
	sub b			;0eed
	add a,b			;0eee
	sub b			;0eef
	add a,b			;0ef0
	add a,b			;0ef1
	ld h,l			;0ef2
	add a,h			;0ef3
	ld h,h			;0ef4
	ld d,b			;0ef5
	ld (hl),b		;0ef6
	ld d,b			;0ef7
	ld h,b			;0ef8
	add a,b			;0ef9
	sub b			;0efa
	ld (hl),b		;0efb
	ld b,b			;0efc
	inc b			;0efd
	ld (hl),b		;0efe
	add a,d			;0eff
	ld d,b			;0f00
	ld (hl),b		;0f01
	inc b			;0f02
l0f03h:
	ld d,b			;0f03
	ld b,070h		;0f04
	add a,c			;0f06
	ld h,b			;0f07
	inc bc			;0f08
	sub b			;0f09
	add a,c			;0f0a
	ld (hl),b		;0f0b
	inc bc			;0f0c
	ld b,b			;0f0d
	nop			;0f0e
	ld (bc),a		;0f0f
	ld d,b			;0f10
	adc a,(hl)		;0f11
	sub b			;0f12
	ret po			;0f13
	ld d,b			;0f14
	ld (hl),b		;0f15
	sub l			;0f16
	ld h,h			;0f17
	and b			;0f18
	and b			;0f19
	call p,060c0h		;0f1a
	add a,b			;0f1d
	sub h			;0f1e
	ld h,h			;0f1f
	nop			;0f20
	nop			;0f21
	inc bc			;0f22
	or b			;0f23
	add a,e			;0f24
	ld b,b			;0f25
	ld d,b			;0f26
	ld (hl),b		;0f27
	inc b			;0f28
	ret nc			;0f29
	adc a,b			;0f2a
	ld h,b			;0f2b
	and b			;0f2c
	add a,b			;0f2d
	ld h,b			;0f2e
	sub b			;0f2f
	ld h,b			;0f30
	halt			;0f31
	ld d,b			;0f32
	inc bc			;0f33
	ld b,b			;0f34
	add a,c			;0f35
	add a,l			;0f36
	inc bc			;0f37
	ld b,b			;0f38
	or c			;0f39
	ld d,b			;0f3a
	ld b,b			;0f3b
	nop			;0f3c
	ld h,b			;0f3d
	add a,b			;0f3e
	sub b			;0f3f
	and b			;0f40
	ld d,b			;0f41
	ld (hl),b		;0f42
	ld (hl),b		;0f43
	ret nc			;0f44
	ld h,b			;0f45
	ld d,b			;0f46
	sub b			;0f47
	ret po			;0f48
	add a,b			;0f49
	ld h,b			;0f4a
	sub b			;0f4b
	ld h,b			;0f4c
	halt			;0f4d
	ld d,b			;0f4e
	ld b,b			;0f4f
	ld b,b			;0f50
	ret nz			;0f51
	call p,040a0h		;0f52
l0f55h:
	ld b,b			;0f55
	ld d,b			;0f56
	ld b,b			;0f57
	ld b,b			;0f58
	ld h,b			;0f59
	add a,b			;0f5a
	sub h			;0f5b
	ld h,h			;0f5c
	ld h,h			;0f5d
	sub h			;0f5e
	add a,b			;0f5f
	ld h,b			;0f60
	ld d,b			;0f61
	ld (hl),b		;0f62
	sub l			;0f63
	ld h,h			;0f64
	ld h,h			;0f65
	sub l			;0f66
	ld (hl),b		;0f67
	ld d,b			;0f68
	ld b,b			;0f69
	add a,l			;0f6a
	inc b			;0f6b
	ld b,b			;0f6c
	add a,d			;0f6d
	add a,l			;0f6e
	ld b,b			;0f6f
l0f70h:
	nop			;0f70
	adc a,b			;0f71
	ld h,b			;0f72
	add a,b			;0f73
	sub b			;0f74
	and b			;0f75
	and b			;0f76
	sub b			;0f77
	add a,b			;0f78
	ld h,b			;0f79
	nop			;0f7a
	rlca			;0f7b
	or b			;0f7c
	inc b			;0f7d
	ld b,b			;0f7e
	inc b			;0f7f
	ld h,b			;0f80
	add a,c			;0f81
	and b			;0f82
	inc b			;0f83
	nop			;0f84
	add a,e			;0f85
	ld h,h			;0f86
	sub h			;0f87
	add a,b			;0f88
	inc b			;0f89
	ld h,b			;0f8a
l0f8bh:
	inc bc			;0f8b
	and b			;0f8c
	add a,d			;0f8d
	call p,sub_00c0h	;0f8e
	inc bc			;0f91
	ret p			;0f92
	ld (bc),a		;0f93
	ld (hl),b		;0f94
	add a,e			;0f95
	ld b,b			;0f96
	ret p			;0f97
	ld b,b			;0f98
	djnz l0f8bh		;0f99
	adc a,b			;0f9b
	ld (hl),b		;0f9c
	ret p			;0f9d
	ret po			;0f9e
	ret p			;0f9f
	sub b			;0fa0
	ld h,b			;0fa1
	ret p			;0fa2
	ld d,b			;0fa3
	inc bc			;0fa4
	ret p			;0fa5
	ld (bc),a		;0fa6
	ld (hl),b		;0fa7
	ld (bc),a		;0fa8
	call p,0f081h		;0fa9
	nop			;0fac
	add a,(hl)		;0fad
	ld d,b			;0fae
	ld (hl),b		;0faf
	ret nc			;0fb0
	ld (hl),b		;0fb1
	ret p			;0fb2
	sub b			;0fb3
	inc b			;0fb4
	add a,b			;0fb5
	sub d			;0fb6
	sub b			;0fb7
	ret p			;0fb8
	ld (hl),b		;0fb9
	ret nc			;0fba
	ld (hl),b		;0fbb
	ld d,b			;0fbc
	ld (hl),l		;0fbd
	ld h,b			;0fbe
	ld h,b			;0fbf
	add a,b			;0fc0
	add a,b			;0fc1
	xor b			;0fc2
	ret m			;0fc3
	xor b			;0fc4
	xor b			;0fc5
	sbc a,b			;0fc6
	sbc a,b			;0fc7
	add a,b			;0fc8
	inc bc			;0fc9
	ld h,b			;0fca
	add a,c			;0fcb
	ld (hl),l		;0fcc
	nop			;0fcd
	inc bc			;0fce
	ret nz			;0fcf
	inc b			;0fd0
	jr nc,l0f55h		;0fd1
	ret nz			;0fd3
	jr nz,l0fddh		;0fd4
	jr nc,l0fdah		;0fd6
	ret nz			;0fd8
	add a,c			;0fd9
l0fdah:
	jr nc,l0fdfh		;0fda
	ret nz			;0fdc
l0fddh:
	adc a,d			;0fdd
	ret po			;0fde
l0fdfh:
	rst 28h			;0fdf
	ret nz			;0fe0
	jr nc,$+50		;0fe1
	ret nz			;0fe3
	ret nz			;0fe4
	ret po			;0fe5
	ret po			;0fe6
	rst 28h			;0fe7
	nop			;0fe8
	inc bc			;0fe9
	ret nz			;0fea
	inc b			;0feb
	jr nc,l0f70h		;0fec
	ret nz			;0fee
	jr nz,l0ff8h		;0fef
	jr nc,l0ff5h		;0ff1
l0ff3h:
	ret nz			;0ff3
	add a,c			;0ff4
l0ff5h:
	jr nc,l0ffah		;0ff5
	ret nz			;0ff7
l0ff8h:
	adc a,d			;0ff8
	ld d,b			;0ff9
l0ffah:
	ld d,h			;0ffa
	ret nz			;0ffb
	jr nc,l102eh		;0ffc
	ret nz			;0ffe
	ret nz			;0fff
	ld d,b			;1000
	ld d,b			;1001
	ld d,h			;1002
	nop			;1003
	add a,c			;1004
	ld d,b			;1005
	dec b			;1006
	ret p			;1007
sub_1008h:
	add a,c			;1008
	ld b,b			;1009
	inc b			;100a
	ret p			;100b
	and l			;100c
	push af			;100d
	cp 0feh			;100e
	ret po			;1010
	ret po			;1011
	cp 054h			;1012
	ret p			;1014
	ret p			;1015
	ret po			;1016
	ret po			;1017
	ret p			;1018
	ld d,b			;1019
	ret p			;101a
	ld b,b			;101b
	ret p			;101c
	ret p			;101d
	ret po			;101e
	ret po			;101f
	ret p			;1020
	ld d,b			;1021
	cp 054h			;1022
	ret p			;1024
	ret p			;1025
	ret po			;1026
	ret po			;1027
	ret p			;1028
	ld d,b			;1029
	cp 040h			;102a
	ret p			;102c
	ret p			;102d
l102eh:
	ret po			;102e
	ret po			;102f
	ret p			;1030
	ld d,b			;1031
	inc bc			;1032
	ret p			;1033
	inc bc			;1034
	ret po			;1035
	ld (bc),a		;1036
	ld b,b			;1037
	nop			;1038
	adc a,b			;1039
	nop			;103a
	ret p			;103b
	ret p			;103c
	and b			;103d
	ret p			;103e
l103fh:
	and b			;103f
	sub b			;1040
	sub b			;1041
	inc b			;1042
	and b			;1043
	dec d			;1044
	sub b			;1045
l1046h:
	ld (bc),a		;1046
	add a,b			;1047
	inc bc			;1048
	ld h,b			;1049
	add a,d			;104a
	ld h,h			;104b
	add a,h			;104c
	inc bc			;104d
	add a,b			;104e
	add a,l			;104f
	ld h,(hl)		;1050
	ld h,b			;1051
	ld h,h			;1052
	add a,h			;1053
	ld h,h			;1054
	nop			;1055
	nop			;1056
	adc a,b			;1057
	nop			;1058
	ret p			;1059
	ret p			;105a
	and b			;105b
	ret p			;105c
	and b			;105d
	jr nc,l1090h		;105e
	inc b			;1060
	and b			;1061
	dec d			;1062
	jr nc,l1067h		;1063
	jr nz,l106ah		;1065
l1067h:
	ret nz			;1067
	add a,d			;1068
	ld h,h			;1069
l106ah:
	add a,h			;106a
	inc bc			;106b
	jr nz,l0ff3h		;106c
	call z,064c0h		;106e
	add a,h			;1071
	ld h,h			;1072
	nop			;1073
	inc b			;1074
	ret nz			;1075
	add a,e			;1076
	ret z			;1077
	ret nz			;1078
	jr nz,l1081h		;1079
	ret nz			;107b
	add a,e			;107c
	jr nz,l103fh		;107d
	jr nz,l1089h		;107f
l1081h:
	ret nz			;1081
	add a,c			;1082
	add a,b			;1083
	djnz l1046h		;1084
	add a,e			;1086
	ld d,b			;1087
	ret p			;1088
l1089h:
	jr nz,l108fh		;1089
	ret nz			;108b
l108ch:
	add a,h			;108c
	ld b,b			;108d
	push af			;108e
l108fh:
	push af			;108f
l1090h:
	ld (hl),h		;1090
	ld b,040h		;1091
	add a,c			;1093
	ld (hl),h		;1094
	dec b			;1095
	ld b,b			;1096
	nop			;1097
	or h			;1098
	sub b			;1099
	sub 090h		;109a
	push hl			;109c
	sub b			;109d
	rlca			;109e
	sub c			;109f
	ld e,091h		;10a0
l10a2h:
	ld a,091h		;10a2
	ld d,d			;10a4
	sub c			;10a5
	ld (hl),h		;10a6
	sub c			;10a7
	sub d			;10a8
	sub c			;10a9
	or d			;10aa
	sub c			;10ab
	ret			;10ac
	sub c			;10ad
	ex de,hl		;10ae
	sub c			;10af
	or 091h			;10b0
	jr l1046h		;10b2
	and b			;10b4
	nop			;10b5
	rlca			;10b6
	ccf			;10b7
	add a,b			;10b8
	inc c			;10b9
	inc e			;10ba
	ld a,07fh		;10bb
	ret po			;10bd
	ret p			;10be
	ret c			;10bf
	inc h			;10c0
	or d			;10c1
	ld d,b			;10c2
	ld b,02fh		;10c3
	ld a,01ch		;10c5
	inc c			;10c7
	add a,b			;10c8
	ccf			;10c9
	rlca			;10ca
	nop			;10cb
	nop			;10cc
	ld b,050h		;10cd
	sub d			;10cf
	inc h			;10d0
	sbc a,b			;10d1
	ret p			;10d2
	ret po			;10d3
	nop			;10d4
	nop			;10d5
	inc b			;10d6
	ret po			;10d7
	add a,e			;10d8
	ret nz			;10d9
	jr nz,l108ch		;10da
	add hl,bc		;10dc
	ret po			;10dd
	add a,e			;10de
	or b			;10df
	jr nz,l10a2h		;10e0
	dec c			;10e2
	ret po			;10e3
	nop			;10e4
	and b			;10e5
	ld b,00ch		;10e6
	add hl,de		;10e8
	add hl,de		;10e9
	ld (02505h),hl		;10ea
	dec (hl)		;10ed
	ld h,b			;10ee
	jr nc,l1089h		;10ef
	sbc a,b			;10f1
	ld b,h			;10f2
	and b			;10f3
	and h			;10f4
	xor h			;10f5
	dec (hl)		;10f6
	dec h			;10f7
	dec b			;10f8
	ld (l1919h),hl		;10f9
	inc c			;10fc
	ld b,0ach		;10fd
	and h			;10ff
	and b			;1100
l1101h:
	ld b,h			;1101
	sbc a,b			;1102
	sbc a,b			;1103
	jr nc,l1166h		;1104
	nop			;1106
	ld (bc),a		;1107
	sub b			;1108
	dec b			;1109
	or b			;110a
	add a,e			;110b
	ret p			;110c
	sub b			;110d
	sub b			;110e
	dec b			;110f
	or b			;1110
	ld (bc),a		;1111
	ret p			;1112
	dec b			;1113
	or b			;1114
	ld (bc),a		;1115
	sub b			;1116
	add a,c			;1117
	ret p			;1118
	dec b			;1119
	or b			;111a
	ld (bc),a		;111b
	sub b			;111c
	nop			;111d
	inc bc			;111e
	nop			;111f
	add a,l			;1120
	ld a,c			;1121
	call m,07801h		;1122
	defb 0fdh,003h,000h ;illegal sequence	;1125
	adc a,d			;1128
	sbc a,(hl)		;1129
	ccf			;112a
	add a,b			;112b
	ld e,0bfh		;112c
	defb 0fdh,078h,001h ;illegal sequence	;112e
	call m,sub_0379h	;1131
	nop			;1134
	add a,l			;1135
	cp a			;1136
	ld e,080h		;1137
	ccf			;1139
	sbc a,(hl)		;113a
	inc bc			;113b
	nop			;113c
	nop			;113d
	ld b,0f0h		;113e
	add a,d			;1140
	ret nz			;1141
	and b			;1142
	ld b,0f0h		;1143
	add a,h			;1145
	ret nz			;1146
	and b			;1147
	and b			;1148
	ret nz			;1149
	ld b,0f0h		;114a
	add a,d			;114c
	and b			;114d
	ret nz			;114e
	ld b,0f0h		;114f
	nop			;1151
	and b			;1152
	inc bc			;1153
	rlca			;1154
	nop			;1155
	ld de,05853h		;1156
	out (0d7h),a		;1159
	ret nz			;115b
	ret po			;115c
	nop			;115d
	adc a,b			;115e
	jp z,0cb1ah		;115f
	ex de,hl		;1162
	rst 10h			;1163
	out (058h),a		;1164
l1166h:
	ld d,e			;1166
	ld de,l0700h		;1167
	inc bc			;116a
	ex de,hl		;116b
	rr d			;116c
	jp z,l0088h		;116e
	ret po			;1171
	ret nz			;1172
	nop			;1173
	add a,d			;1174
	ld (hl),b		;1175
	ld d,b			;1176
	inc b			;1177
	ret p			;1178
	add a,h			;1179
	ld d,b			;117a
	ld (hl),b		;117b
	ld (hl),b		;117c
	ld d,b			;117d
	inc b			;117e
	ret p			;117f
	add a,h			;1180
	ld d,b			;1181
	ld (hl),b		;1182
	ld (hl),b		;1183
	ld d,b			;1184
	inc b			;1185
	ret p			;1186
	add a,h			;1187
	ld d,b			;1188
	ld (hl),b		;1189
l118ah:
	ld (hl),b		;118a
	ld d,b			;118b
	inc b			;118c
	ret p			;118d
	add a,d			;118e
	ld d,b			;118f
	ld (hl),b		;1190
	nop			;1191
	inc bc			;1192
	nop			;1193
	add a,l			;1194
	ld (de),a		;1195
	jr nz,$+105		;1196
	nop			;1198
	sbc a,a			;1199
	inc bc			;119a
	nop			;119b
	adc a,d			;119c
	ld c,b			;119d
	inc b			;119e
	and 000h		;119f
	ld sp,hl		;11a1
	sbc a,a			;11a2
	nop			;11a3
	ld h,a			;11a4
	jr nz,l11b9h		;11a5
	inc bc			;11a7
	nop			;11a8
	add a,l			;11a9
	ld sp,hl		;11aa
	nop			;11ab
	and 004h		;11ac
	ld c,b			;11ae
	inc bc			;11af
	nop			;11b0
	nop			;11b1
	inc bc			;11b2
	ret p			;11b3
	add a,e			;11b4
	ret po			;11b5
	ret p			;11b6
	ret po			;11b7
	dec b			;11b8
l11b9h:
	ret p			;11b9
	add a,e			;11ba
	ret po			;11bb
	ret p			;11bc
	ret po			;11bd
	inc b			;11be
	ret p			;11bf
	inc bc			;11c0
	ret po			;11c1
	dec b			;11c2
	ret p			;11c3
	inc bc			;11c4
	ret po			;11c5
	inc bc			;11c6
	ret p			;11c7
	nop			;11c8
	and b			;11c9
	ld b,b			;11ca
	jr nc,$+58		;11cb
	dec d			;11cd
	nop			;11ce
	dec bc			;11cf
	inc (hl)		;11d0
	halt			;11d1
	ld bc,08e06h		;11d2
l11d5h:
	call nc,0e800h		;11d5
	ld d,0b7h		;11d8
	inc (hl)		;11da
	dec bc			;11db
	nop			;11dc
	dec d			;11dd
	jr c,l1210h		;11de
	ld b,b			;11e0
	nop			;11e1
	ld d,0e8h		;11e2
	nop			;11e4
	call nc,sub_068eh	;11e5
	ld bc,l0000h		;11e8
	rlca			;11eb
	ret po			;11ec
	add a,c			;11ed
	ld h,b			;11ee
	rlca			;11ef
	ret po			;11f0
	add a,c			;11f1
	ld h,b			;11f2
	djnz l11d5h		;11f3
	nop			;11f5
	and b			;11f6
	nop			;11f7
	ld b,b			;11f8
	ccf			;11f9
	rra			;11fa
	nop			;11fb
	inc c			;11fc
	ld hl,l0094h		;11fd
	ld (bc),a		;1200
	call m,sub_00f8h	;1201
	jr nc,l118ah		;1204
	add hl,hl		;1206
	sub 094h		;1207
	ld hl,l000ch		;1209
	rra			;120c
	ccf			;120d
	ld b,b			;120e
	ld l,e			;120f
l1210h:
	add hl,hl		;1210
	add a,h			;1211
	jr nc,l1214h		;1212
l1214h:
	ret m			;1214
	call m,l0000h+2		;1215
	and b			;1218
	ret p			;1219
	ld b,b			;121a
	ld b,b			;121b
	ld d,b			;121c
	ret p			;121d
	ld d,b			;121e
	ld (hl),b		;121f
	ld (hl),b		;1220
l1221h:
	ret p			;1221
	ld b,b			;1222
	ld b,b			;1223
	ld d,b			;1224
	ret p			;1225
	ld d,b			;1226
	ld (hl),b		;1227
	ld (hl),b		;1228
	ret p			;1229
	ld (hl),b		;122a
	ld (hl),b		;122b
	ld d,b			;122c
	ret p			;122d
	ld d,b			;122e
	ld b,b			;122f
	ld b,b			;1230
	ret p			;1231
	ld (hl),b		;1232
	ld (hl),b		;1233
	ld d,b			;1234
	ret p			;1235
	ld d,b			;1236
	ld b,b			;1237
	ld b,b			;1238
	nop			;1239
	and b			;123a
	nop			;123b
	inc a			;123c
	ld b,b			;123d
	adc a,a			;123e
	and b			;123f
	inc bc			;1240
	ld c,a			;1241
	sbc a,a			;1242
	nop			;1243
	inc a			;1244
	ld (bc),a		;1245
	pop af			;1246
	dec b			;1247
	ret nz			;1248
	jp p,09ff9h		;1249
	ld c,a			;124c
	inc bc			;124d
	and b			;124e
	adc a,a			;124f
	ld b,b			;1250
	inc a			;1251
	nop			;1252
	ld sp,hl		;1253
	jp p,l05c0h		;1254
	pop af			;1257
	ld (bc),a		;1258
	inc a			;1259
	nop			;125a
	nop			;125b
	dec b			;125c
	ret p			;125d
	ld (bc),a		;125e
	ld d,b			;125f
	add a,c			;1260
	ld (hl),b		;1261
	dec b			;1262
	ret p			;1263
	ld (bc),a		;1264
	ld d,b			;1265
	ld (bc),a		;1266
	ld (hl),b		;1267
	ld (bc),a		;1268
	ld d,b			;1269
	dec b			;126a
	ret p			;126b
	add a,e			;126c
	ld (hl),b		;126d
	ld d,b			;126e
	ld d,b			;126f
	dec b			;1270
	ret p			;1271
	nop			;1272
	nop			;1273
	djnz l129eh		;1274
	jr z,l12a0h		;1276
	jr z,l128ah		;1278
	nop			;127a
	nop			;127b
	nop			;127c
	nop			;127d
	djnz l1290h		;127e
	nop			;1280
	nop			;1281
	nop			;1282
	nop			;1283
	nop			;1284
	ex af,af'		;1285
	jr nz,l128ch		;1286
	djnz l128ah		;1288
l128ah:
	nop			;128a
	nop			;128b
l128ch:
	ex af,af'		;128c
	nop			;128d
	add a,b			;128e
	nop			;128f
l1290h:
	ld (bc),a		;1290
	nop			;1291
	jr nz,l1294h		;1292
l1294h:
	jr nz,$+34		;1294
	jr nz,$+34		;1296
	jr nz,l12bah		;1298
	nop			;129a
	nop			;129b
	nop			;129c
	nop			;129d
l129eh:
	ld (hl),b		;129e
	ld (hl),b		;129f
l12a0h:
	nop			;12a0
	nop			;12a1
	nop			;12a2
	nop			;12a3
	nop			;12a4
	or b			;12a5
	or b			;12a6
	and b			;12a7
	and b			;12a8
	nop			;12a9
	nop			;12aa
	nop			;12ab
	ret p			;12ac
	nop			;12ad
	ret p			;12ae
	nop			;12af
	and b			;12b0
	nop			;12b1
	and b			;12b2
	ld a,093h		;12b3
	res 2,d			;12b5
	sbc a,092h		;12b7
	ret pe			;12b9
l12bah:
	sub d			;12ba
	ld c,093h		;12bb
	ret m			;12bd
	sub d			;12be
	daa			;12bf
	sub e			;12c0
	scf			;12c1
	sub e			;12c2
	ld a,(0e593h)		;12c3
	sub d			;12c6
	push hl			;12c7
	sub d			;12c8
	push hl			;12c9
	sub d			;12ca
	and h			;12cb
	and b			;12cc
	sbc a,e			;12cd
	call nz,098a0h		;12ce
	call c,09787h		;12d1
	call pe,09b32h		;12d4
	ret p			;12d7
	ld b,098h		;12d8
	ret m			;12da
	pop de			;12db
	sbc a,d			;12dc
	nop			;12dd
	or h			;12de
	ld c,b			;12df
	sbc a,b			;12e0
	call nz,098a0h		;12e1
	nop			;12e4
	sub h			;12e5
	or (hl)			;12e6
	and b			;12e7
	ld a,h			;12e8
	ld d,e			;12e9
	sbc a,c			;12ea
	ret po			;12eb
	add a,a			;12ec
	sub a			;12ed
	call pe,09902h		;12ee
	ld (hl),h		;12f1
	pop de			;12f2
	sbc a,d			;12f3
	call m,09b13h		;12f4
	nop			;12f7
	ld (hl),h		;12f8
	and b			;12f9
	sbc a,e			;12fa
	and h			;12fb
	ld (bc),a		;12fc
	sbc a,c			;12fd
	or h			;12fe
	ld c,b			;12ff
	sbc a,b			;1300
	sub b			;1301
	ld d,e			;1302
	sbc a,c			;1303
	ret nc			;1304
	ld c,l			;1305
	sbc a,e			;1306
	call c,09a22h		;1307
	call p,099e4h		;130a
	nop			;130d
	ld (hl),h		;130e
	and b			;130f
	sbc a,e			;1310
	and h			;1311
	ld (0849bh),a		;1312
	ld c,b			;1315
	sbc a,b			;1316
	or h			;1317
	ld d,e			;1318
	sbc a,c			;1319
	call nc,09a7eh		;131a
	call pe,09902h		;131d
	call nz,09c77h		;1320
	call po,09cd7h		;1323
	nop			;1326
	and h			;1327
l1328h:
	and b			;1328
	sbc a,e			;1329
	ld (hl),h		;132a
	dec de			;132b
	sbc a,h			;132c
	or h			;132d
	ld h,d			;132e
	sub (hl)		;132f
	call c,09a22h		;1330
	call pe,09902h		;1333
	nop			;1336
	or h			;1337
	ld c,b			;1338
	sbc a,b			;1339
	call m,09b13h		;133a
	nop			;133d
	and h			;133e
	and b			;133f
	sbc a,e			;1340
	call m,09b13h		;1341
	call po,099c2h		;1344
	nop			;1347
	ld l,(hl)		;1348
	sub e			;1349
	ld h,b			;134a
	sub e			;134b
	ld l,(hl)		;134c
	sub e			;134d
	ld h,l			;134e
	sub e			;134f
	ld l,(hl)		;1350
	sub e			;1351
	ld l,(hl)		;1352
	sub e			;1353
	ld l,d			;1354
	sub e			;1355
	ld l,(hl)		;1356
	sub e			;1357
	ld l,(hl)		;1358
	sub e			;1359
	ld l,(hl)		;135a
	sub e			;135b
	ld l,(hl)		;135c
	sub e			;135d
	ld l,(hl)		;135e
	sub e			;135f
	ld bc,0dc04h		;1360
	or h			;1363
	nop			;1364
	ld bc,0dc04h		;1365
	or h			;1368
	nop			;1369
	ld bc,07403h		;136a
	add a,b			;136d
	nop			;136e
	add a,(hl)		;136f
	nop			;1370
	add a,b			;1371
	ret po			;1372
	ld (hl),b		;1373
	ld a,a			;1374
	ld a,a			;1375
	inc bc			;1376
	cp a			;1377
	add a,d			;1378
	ld a,b			;1379
	ret po			;137a
	ld a,(bc)		;137b
	nop			;137c
	add a,e			;137d
	adc a,b			;137e
	rst 38h			;137f
	ret m			;1380
	inc e			;1381
	nop			;1382
	add a,d			;1383
	ret nz			;1384
	ld (hl),b		;1385
	dec c			;1386
	nop			;1387
	add a,h			;1388
	or b			;1389
	call m,07f7fh		;138a
	inc bc			;138d
	cp a			;138e
	add a,e			;138f
	ld a,a			;1390
	ld a,b			;1391
	ret po			;1392
	ex af,af'		;1393
	nop			;1394
	add a,l			;1395
	add a,b			;1396
	jr l1328h		;1397
	call m,sub_1ce0h	;1399
	nop			;139c
	add a,d			;139d
	ret po			;139e
	ld (hl),b		;139f
	add hl,bc		;13a0
	nop			;13a1
	add a,(hl)		;13a2
	add a,b			;13a3
	ret po			;13a4
	ld (hl),b		;13a5
	rst 38h			;13a6
	rra			;13a7
	ld bc,l000ch+1		;13a8
	add a,e			;13ab
	add a,b			;13ac
	ret p			;13ad
	rst 38h			;13ae
	ld c,000h		;13af
	add a,(hl)		;13b1
	ret po			;13b2
	cp 07fh			;13b3
	ccf			;13b5
	ld e,018h		;13b6
	inc c			;13b8
	nop			;13b9
	add a,d			;13ba
	call m,sub_07f0h	;13bb
	nop			;13be
	nop			;13bf
	add a,a			;13c0
	inc bc			;13c1
	rlca			;13c2
	ld (bc),a		;13c3
	nop			;13c4
	jr nc,l1437h		;13c5
	jr nz,l13e2h		;13c7
	nop			;13c9
	add a,e			;13ca
	cp (hl)			;13cb
	cp a			;13cc
	cp (hl)			;13cd
	dec e			;13ce
	nop			;13cf
	add a,a			;13d0
	jr nz,l1433h		;13d1
	ret c			;13d3
	inc a			;13d4
	ld e,00eh		;13d5
	ld (bc),a		;13d7
	add hl,de		;13d8
	nop			;13d9
	add a,l			;13da
	and b			;13db
	ld l,(hl)		;13dc
	rst 28h			;13dd
	ld l,(hl)		;13de
	and b			;13df
	dec de			;13e0
	nop			;13e1
l13e2h:
	adc a,b			;13e2
	djnz l13edh		;13e3
sub_13e5h:
	jr nc,$-90		;13e5
	ld c,h			;13e7
	ld e,007h		;13e8
	inc bc			;13ea
	jr l13edh		;13eb
l13edh:
	nop			;13ed
	adc a,h			;13ee
	add hl,bc		;13ef
l13f0h:
	scf			;13f0
	ld l,a			;13f1
	ld l,(hl)		;13f2
	defb 0edh,071h ;out (c),0	;13f3
	ld a,b			;13f5
	cp e			;13f6
	ld b,a			;13f7
	ld a,a			;13f8
	ld a,009h		;13f9
	dec b			;13fb
	nop			;13fc
	adc a,d			;13fd
	ret nz			;13fe
	ret po			;13ff
	jr nz,$-46		;1400
	ret po			;1402
	ret po			;1403
	ld (hl),b		;1404
	ld h,b			;1405
	ld h,b			;1406
	ret nz			;1407
	dec b			;1408
	nop			;1409
	nop			;140a
	add hl,bc		;140b
	scf			;140c
	ld l,a			;140d
	ld l,(hl)		;140e
	defb 0edh,071h ;out (c),0	;140f
	ld a,b			;1411
	cp e			;1412
	ld b,a			;1413
	ld a,a			;1414
	ld a,009h		;1415
	nop			;1417
	nop			;1418
	nop			;1419
	nop			;141a
	nop			;141b
	ret nz			;141c
	ret po			;141d
	jr nz,l13f0h		;141e
	ret po			;1420
	ret po			;1421
	ld (hl),b		;1422
	ld h,b			;1423
	ld h,b			;1424
	ret nz			;1425
	nop			;1426
	nop			;1427
	nop			;1428
	nop			;1429
	nop			;142a
	inc b			;142b
	nop			;142c
	add a,d			;142d
	ret nz			;142e
	ld (hl),b		;142f
	ld a,(bc)		;1430
	nop			;1431
	sub b			;1432
l1433h:
	ld h,(hl)		;1433
	sbc a,c			;1434
	add a,c			;1435
	ld e,d			;1436
l1437h:
	ld e,d			;1437
	add a,c			;1438
	sbc a,c			;1439
	ld h,(hl)		;143a
	ld h,(hl)		;143b
	sbc a,c			;143c
	add a,c			;143d
	ld e,d			;143e
	ld e,d			;143f
	add a,c			;1440
	sbc a,c			;1441
	ld h,(hl)		;1442
	inc b			;1443
	nop			;1444
	add a,d			;1445
	ret nz			;1446
	ld (hl),b		;1447
	ld a,(bc)		;1448
	nop			;1449
	sub b			;144a
	jr $+104		;144b
	ld b,d			;144d
	sbc a,c			;144e
	sbc a,c			;144f
	ld b,d			;1450
	ld h,(hl)		;1451
	jr l146ch		;1452
	ld h,(hl)		;1454
	ld b,d			;1455
	sbc a,c			;1456
	sbc a,c			;1457
	ld b,d			;1458
	ld h,(hl)		;1459
	jr l1462h		;145a
	nop			;145c
	add a,d			;145d
	ret po			;145e
	ld (hl),b		;145f
	ex af,af'		;1460
	nop			;1461
l1462h:
	sub b			;1462
	ld h,(hl)		;1463
	sbc a,c			;1464
	add a,c			;1465
	ld e,d			;1466
	ld e,d			;1467
	add a,c			;1468
	sbc a,c			;1469
	ld h,(hl)		;146a
	ld h,(hl)		;146b
l146ch:
	sbc a,c			;146c
	add a,c			;146d
	ld e,d			;146e
	ld e,d			;146f
	add a,c			;1470
	sbc a,c			;1471
	ld h,(hl)		;1472
	ld b,000h		;1473
l1475h:
	add a,d			;1475
	ret po			;1476
	ld (hl),b		;1477
	ex af,af'		;1478
	nop			;1479
	sub b			;147a
	jr l14e3h		;147b
	ld b,d			;147d
	sbc a,c			;147e
	sbc a,c			;147f
	ld b,d			;1480
	ld h,(hl)		;1481
	jr l149ch		;1482
	ld h,(hl)		;1484
	ld b,d			;1485
	sbc a,c			;1486
	sbc a,c			;1487
	ld b,d			;1488
	ld h,(hl)		;1489
sub_148ah:
	jr l148fh		;148a
	nop			;148c
	add a,e			;148d
	inc bc			;148e
l148fh:
	rra			;148f
	ld a,a			;1490
	inc b			;1491
	rst 38h			;1492
	add a,e			;1493
	ld a,a			;1494
	rra			;1495
l1496h:
	inc bc			;1496
	ld b,000h		;1497
	add a,e			;1499
	ret nz			;149a
	ret m			;149b
l149ch:
	cp 004h			;149c
	rst 38h			;149e
	add a,e			;149f
	cp 0f8h			;14a0
	ret nz			;14a2
	ex af,af'		;14a3
	nop			;14a4
	add a,(hl)		;14a5
	rlca			;14a6
	rra			;14a7
	ccf			;14a8
	ccf			;14a9
	rra			;14aa
	rlca			;14ab
	ld a,(bc)		;14ac
	nop			;14ad
	add a,(hl)		;14ae
	ret po			;14af
	ret m			;14b0
	call m,0f8fch		;14b1
	ret po			;14b4
	dec b			;14b5
	nop			;14b6
	nop			;14b7
	xor l			;14b8
	add a,b			;14b9
	add hl,bc		;14ba
	nop			;14bb
	dec b			;14bc
	dec (hl)		;14bd
	and c			;14be
	ld a,(de)		;14bf
	rlca			;14c0
	xor e			;14c1
	dec (hl)		;14c2
	dec bc			;14c3
	dec (hl)		;14c4
	inc d			;14c5
	ld h,e			;14c6
	nop			;14c7
	djnz l14dah		;14c8
	add a,b			;14ca
	ld (bc),a		;14cb
	nop			;14cc
	jr nc,$+84		;14cd
	ret po			;14cf
	ret nz			;14d0
	ret nz			;14d1
	ret po			;14d2
	ret nc			;14d3
	adc a,h			;14d4
l14d5h:
	jr z,l14fdh		;14d5
	nop			;14d7
	ld b,b			;14d8
	nop			;14d9
l14dah:
	inc b			;14da
	inc b			;14db
	nop			;14dc
	jr l14f8h		;14dd
	ld bc,l0e01h		;14df
	rra			;14e2
l14e3h:
	cpl			;14e3
	rra			;14e4
	ld l,005h		;14e5
	nop			;14e7
	adc a,h			;14e8
	add a,b			;14e9
	ld e,b			;14ea
	call m,0f0f4h		;14eb
	ret p			;14ee
	or 026h			;14ef
	ld (hl),b		;14f1
	ld (hl),b		;14f2
	jr nz,l1475h		;14f3
	ld b,000h		;14f5
	adc a,b			;14f7
l14f8h:
	ld bc,l0100h		;14f8
	inc b			;14fb
	nop			;14fc
l14fdh:
	inc bc			;14fd
	rlca			;14fe
	ld (bc),a		;14ff
	ld a,(bc)		;1500
	nop			;1501
	add a,(hl)		;1502
	ld d,b			;1503
	ret po			;1504
	ld b,b			;1505
	djnz l1548h		;1506
	ld b,b			;1508
	ld a,(bc)		;1509
	nop			;150a
	add a,h			;150b
	ld (bc),a		;150c
	inc b			;150d
	ld (bc),a		;150e
	ld (bc),a		;150f
	dec bc			;1510
	nop			;1511
	add a,h			;1512
	ret nz			;1513
	jr nz,l1496h		;1514
	jr nz,l151fh		;1516
	nop			;1518
	add a,h			;1519
	ld h,b			;151a
	ret p			;151b
	ret p			;151c
	ld h,b			;151d
	inc e			;151e
l151fh:
	nop			;151f
	sbc a,005h		;1520
	inc e			;1522
	ld b,c			;1523
	dec d			;1524
	ld e,h			;1525
	ld e,c			;1526
	ld l,e			;1527
	ld l,e			;1528
	add hl,hl		;1529
	inc c			;152a
	ld hl,l0a29h		;152b
	inc c			;152e
	inc b			;152f
	inc b			;1530
	ld b,b			;1531
	ld (hl),b		;1532
	inc b			;1533
	ld d,b			;1534
	ld (hl),h		;1535
	inc (hl)		;1536
	xor h			;1537
	xor h			;1538
	jr z,l159bh		;1539
	ex af,af'		;153b
	jr z,$-94		;153c
	ld h,b			;153e
	ld b,b			;153f
	ld b,b			;1540
	dec b			;1541
	dec bc			;1542
	jr nz,$+8		;1543
	ld (hl),034h		;1545
	inc (hl)		;1547
l1548h:
	inc d			;1548
	inc d			;1549
	ld b,011h		;154a
	rla			;154c
	ld b,002h		;154d
	ld (bc),a		;154f
	ld bc,04000h		;1550
	jr nz,l14d5h		;1553
	ld d,b			;1555
	sub b			;1556
	ret nz			;1557
	ret nz			;1558
	add a,b			;1559
	jr nz,l155ch		;155a
l155ch:
	ret nz			;155c
	ret nz			;155d
	add a,b			;155e
	add a,b			;155f
	nop			;1560
	dec b			;1561
	dec d			;1562
	jr l157ah		;1563
	dec c			;1565
	dec e			;1566
	dec e			;1567
	dec c			;1568
	inc c			;1569
	dec b			;156a
	ld (bc),a		;156b
	ld b,006h		;156c
	inc bc			;156e
	ld bc,04001h		;156f
	ld d,b			;1572
	jr nc,l15c5h		;1573
	ld h,b			;1575
	ld (hl),b		;1576
	ld (hl),b		;1577
	ld h,b			;1578
	ld h,b			;1579
l157ah:
	ld b,b			;157a
	add a,b			;157b
	ret nz			;157c
	ret nz			;157d
l157eh:
	add a,b			;157e
l157fh:
	inc bc			;157f
	nop			;1580
	rst 38h			;1581
	ld (bc),a		;1582
	inc b			;1583
	ld bc,l090ah		;1584
	inc bc			;1587
	inc bc			;1588
	ld bc,sub_0004h		;1589
	inc bc			;158c
	inc bc			;158d
	ld bc,l0000h+1		;158e
	and b			;1591
	ret nc			;1592
	inc b			;1593
	ld h,b			;1594
	ld l,h			;1595
	inc l			;1596
	inc l			;1597
	jr z,l15c2h		;1598
	ld h,b			;159a
l159bh:
	adc a,b			;159b
	ret pe			;159c
	ld h,b			;159d
	ld b,b			;159e
	ld b,b			;159f
	add a,b			;15a0
	dec c			;15a1
	ld e,00fh		;15a2
	rla			;15a4
	ld a,d			;15a5
	sub c			;15a6
	ld c,(hl)		;15a7
	defb 0ddh,0ddh,04eh ;illegal sequence	;15a8
	sub c			;15ab
	ld a,d			;15ac
	rla			;15ad
	rrca			;15ae
	rra			;15af
	ld c,0f8h		;15b0
	rst 38h			;15b2
	ret nz			;15b3
	jr nc,l157eh		;15b4
	ret p			;15b6
	inc e			;15b7
	jp po,l1ce2h		;15b8
	ret p			;15bb
	ret z			;15bc
	jr nc,l157fh		;15bd
	ld a,a			;15bf
	ret m			;15c0
	nop			;15c1
l15c2h:
	ld c,002h		;15c2
	ld a,(de)		;15c4
l15c5h:
	ld d,h			;15c5
	ld c,(hl)		;15c6
	ld (hl),h		;15c7
	ld bc,0faf5h		;15c8
	ex de,hl		;15cb
	ld e,d			;15cc
	dec e			;15cd
	ld c,007h		;15ce
	ld bc,0f0e0h		;15d0
	ret po			;15d3
	ret c			;15d4
	ld a,h			;15d5
	adc a,(hl)		;15d6
	halt			;15d7
	xor e			;15d8
	exx			;15d9
	sub b			;15da
	ex af,af'		;15db
	ret z			;15dc
	or b			;15dd
	nop			;15de
	nop			;15df
	add a,b			;15e0
	ld bc,l0e07h		;15e1
	dec e			;15e4
	ld e,d			;15e5
	ex de,hl		;15e6
	jp m,l01f5h		;15e7
	ld (hl),h		;15ea
	ld c,(hl)		;15eb
	ld d,h			;15ec
	ld a,(de)		;15ed
	ld (bc),a		;15ee
	ld c,000h		;15ef
	add a,b			;15f1
	nop			;15f2
	nop			;15f3
	or b			;15f4
	ret z			;15f5
	ex af,af'		;15f6
	sub b			;15f7
	exx			;15f8
	xor e			;15f9
	halt			;15fa
	adc a,(hl)		;15fb
	ld a,h			;15fc
	ret c			;15fd
	ret po			;15fe
	ret p			;15ff
	ret po			;1600
	add a,e			;1601
	scf			;1602
	ex af,af'		;1603
	inc bc			;1604
	inc b			;1605
	nop			;1606
	exx			;1607
	ld bc,l1b04h		;1608
	nop			;160b
	cp 006h			;160c
	jr nc,l162bh		;160e
	ld bc,0e0d8h		;1610
	ld a,b			;1613
	sbc a,d			;1614
	ld b,b			;1615
	ld b,d			;1616
	inc c			;1617
	ld e,h			;1618
	add a,d			;1619
	xor c			;161a
	inc c			;161b
	jp (hl)			;161c
	adc a,l			;161d
	ld hl,(0d884h)		;161e
	nop			;1621
	nop			;1622
	dec sp			;1623
	dec e			;1624
	ld b,000h		;1625
	ld bc,l1b04h		;1627
	nop			;162a
l162bh:
	cp 006h			;162b
	jr nc,l164ah		;162d
	ld bc,03200h		;162f
	add hl,de		;1632
	ld c,003h		;1633
	ret po			;1635
	inc bc			;1636
	ld e,h			;1637
	add a,d			;1638
	xor b			;1639
	dec c			;163a
	jp (hl)			;163b
	adc a,l			;163c
	ld hl,(0e884h)		;163d
	nop			;1640
	call p,sub_0c3ah	;1641
	ld bc,l0000h		;1644
	inc bc			;1647
	inc b			;1648
	dec b			;1649
l164ah:
	add hl,bc		;164a
	ld (bc),a		;164b
	daa			;164c
	ld c,(hl)		;164d
	sbc a,c			;164e
	ld (hl),060h		;164f
	jp pe,0344eh		;1651
	jr l165ah		;1654
	ret z			;1656
	sbc a,d			;1657
	ld a,(de)		;1658
	add a,(hl)		;1659
l165ah:
	ld e,b			;165a
	call pe,03058h		;165b
	ld h,b			;165e
	nop			;165f
	nop			;1660
	nop			;1661
	adc a,h			;1662
	ld bc,l1f07h		;1663
	ccf			;1666
	ld a,a			;1667
	ld a,a			;1668
	rst 38h			;1669
	rst 38h			;166a
	cp 0f1h			;166b
	ld a,a			;166d
	ccf			;166e
	inc b			;166f
	nop			;1670
	add a,d			;1671
	ret p			;1672
	ret m			;1673
	inc b			;1674
	call m,0d885h		;1675
	cp b			;1678
	ld (hl),b		;1679
	ret po			;167a
	ret nz			;167b
	dec b			;167c
	nop			;167d
	adc a,h			;167e
	ld bc,l0703h		;167f
	scf			;1682
	ld (hl),a		;1683
	ld a,a			;1684
	rst 38h			;1685
	ei			;1686
	defb 0fdh,0f2h,07fh ;illegal sequence	;1687
	ccf			;168a
	inc b			;168b
	nop			;168c
	add a,d			;168d
	ret p			;168e
	ret m			;168f
	inc b			;1690
	call m,0d885h		;1691
	cp b			;1694
	ret p			;1695
	ret po			;1696
	add a,b			;1697
	ld b,000h		;1698
	adc a,h			;169a
	ld bc,l0303h		;169b
	dec sp			;169e
	ld a,e			;169f
	defb 0fdh,0fdh,0feh ;illegal sequence	;16a0
	rst 30h			;16a3
	ld l,e			;16a4
	halt			;16a5
	inc a			;16a6
	inc bc			;16a7
	nop			;16a8
	adc a,c			;16a9
	ret p			;16aa
	ret m			;16ab
	call m,0dcfch		;16ac
	xor h			;16af
	call c,070f8h		;16b0
	ex af,af'		;16b3
	nop			;16b4
	add a,c			;16b5
	ld bc,l0304h		;16b6
	sub (hl)		;16b9
	add hl,sp		;16ba
	ld a,l			;16bb
	cp 0ffh			;16bc
	rst 28h			;16be
	rst 30h			;16bf
	ld sp,hl		;16c0
	ld a,a			;16c1
	ccf			;16c2
	rra			;16c3
	ret p			;16c4
	ret m			;16c5
	call m,0eedch		;16c6
	or 0f6h			;16c9
	cp 0feh			;16cb
	ld a,h			;16cd
	cp b			;16ce
	add a,b			;16cf
	inc bc			;16d0
	ret nz			;16d1
	adc a,b			;16d2
	add a,b			;16d3
	ld bc,l0703h		;16d4
	rrca			;16d7
	rra			;16d8
	ccf			;16d9
	ld a,a			;16da
	inc bc			;16db
	rst 38h			;16dc
	add a,d			;16dd
	ld a,(hl)		;16de
	inc a			;16df
	inc b			;16e0
	nop			;16e1
	add a,d			;16e2
	ret po			;16e3
	ret p			;16e4
	inc bc			;16e5
	ret m			;16e6
	add a,h			;16e7
	ret p			;16e8
	ret po			;16e9
	ret nz			;16ea
	add a,b			;16eb
	rlca			;16ec
	nop			;16ed
	adc a,l			;16ee
	ld bc,l0f03h		;16ef
	rra			;16f2
	ccf			;16f3
	ld a,a			;16f4
	ld a,a			;16f5
	rst 38h			;16f6
	cp 0fdh			;16f7
	ld a,h			;16f9
	ld a,a			;16fa
	inc e			;16fb
	inc bc			;16fc
	nop			;16fd
	add a,d			;16fe
	ret po			;16ff
	ret m			;1700
	inc b			;1701
	call m,09885h		;1702
	ld e,b			;1705
	or b			;1706
	ld h,b			;1707
	ret nz			;1708
	dec b			;1709
	nop			;170a
	adc a,l			;170b
	inc bc			;170c
	rrca			;170d
	rra			;170e
	ccf			;170f
	ld a,a			;1710
	ld a,(hl)		;1711
	defb 0fdh,0fbh,0f3h ;illegal sequence	;1712
	pop af			;1715
	ld (hl),h		;1716
	ld a,c			;1717
	ld e,003h		;1718
	nop			;171a
	adc a,h			;171b
	ret po			;171c
	ret p			;171d
	ret m			;171e
	ret m			;171f
	inc e			;1720
	inc l			;1721
	adc a,h			;1722
	ret c			;1723
	ret c			;1724
	or b			;1725
	ld h,b			;1726
	ret nz			;1727
	inc b			;1728
	nop			;1729
	xor l			;172a
	rrca			;172b
	rra			;172c
	ccf			;172d
	ld (hl),l		;172e
	ld l,b			;172f
	di			;1730
	rst 20h			;1731
	rst 20h			;1732
	ex (sp),hl		;1733
	ld (hl),b		;1734
	ld (hl),l		;1735
	ccf			;1736
l1737h:
	rra			;1737
	rrca			;1738
	nop			;1739
	nop			;173a
	ret nz			;173b
	ret po			;173c
	ret p			;173d
l173eh:
	ld a,b			;173e
	jr l175dh		;173f
	sbc a,h			;1741
	cp h			;1742
	inc e			;1743
	ld a,b			;1744
	jr c,l1737h		;1745
	ret po			;1747
	ret nz			;1748
	nop			;1749
	nop			;174a
	ld bc,l180eh		;174b
	ld (hl),06fh		;174e
	ld l,a			;1750
	add a,0d1h		;1751
	ex (sp),hl		;1753
	ld a,a			;1754
	ld a,a			;1755
	ccf			;1756
	rra			;1757
	inc bc			;1758
	nop			;1759
	adc a,h			;175a
	ret po			;175b
	ld a,b			;175c
l175dh:
	cp b			;175d
	inc a			;175e
	inc a			;175f
	ld a,h			;1760
	call m,0f8f8h		;1761
	ret p			;1764
	ret po			;1765
	ret nz			;1766
	inc b			;1767
	nop			;1768
	adc a,h			;1769
	ld bc,l1807h		;176a
	ld (hl),06eh		;176d
	ld l,l			;176f
	jp 0ffefh		;1770
	rst 38h			;1773
	ld a,a			;1774
	ccf			;1775
	inc b			;1776
	nop			;1777
	adc a,e			;1778
	ret p			;1779
	ld a,b			;177a
	inc a			;177b
	cp h			;177c
	ld a,h			;177d
	call m,0f8f8h		;177e
	ret p			;1781
	ret po			;1782
	ret nz			;1783
	dec b			;1784
	nop			;1785
	nop			;1786
	inc b			;1787
	nop			;1788
	adc a,h			;1789
	rlca			;178a
	dec sp			;178b
	ld a,h			;178c
	ret			;178d
	inc sp			;178e
	ld d,c			;178f
	jr z,l17a7h		;1790
	ld b,b			;1792
	ld e,e			;1793
	inc c			;1794
	inc bc			;1795
	inc b			;1796
	nop			;1797
	call pe,0dce0h		;1798
	ld a,093h		;179b
	call z,sub_148ah	;179d
	xor b			;17a0
	ld (bc),a		;17a1
	jp c,0c030h		;17a2
	nop			;17a5
	nop			;17a6
l17a7h:
	rlca			;17a7
	jr l17d1h		;17a8
	ld e,a			;17aa
	nop			;17ab
	ld d,(hl)		;17ac
	dec hl			;17ad
	dec d			;17ae
	nop			;17af
	dec bc			;17b0
	ld b,b			;17b1
	ld l,(hl)		;17b2
	add hl,de		;17b3
	rlca			;17b4
	nop			;17b5
	nop			;17b6
	ret po			;17b7
	jr c,l173eh		;17b8
	ld a,(de)		;17ba
	jr c,$-108		;17bb
	ld b,h			;17bd
l17beh:
	xor b			;17be
	nop			;17bf
	ret nc			;17c0
	ld (bc),a		;17c1
	xor 030h		;17c2
l17c4h:
	ret nz			;17c4
	nop			;17c5
	nop			;17c6
	rlca			;17c7
	inc e			;17c8
	ld hl,01c58h		;17c9
	ld c,c			;17cc
	ld (l0015h),hl		;17cd
	dec bc			;17d0
l17d1h:
	ld b,b			;17d1
	ld (hl),a		;17d2
	inc c			;17d3
	inc bc			;17d4
	nop			;17d5
	nop			;17d6
	ret po			;17d7
	jr l17beh		;17d8
	jp m,06a00h		;17da
	call nc,l00a8h		;17dd
	ret nc			;17e0
	ld (bc),a		;17e1
	halt			;17e2
	sbc a,b			;17e3
	ret po			;17e4
	rlca			;17e5
	dec sp			;17e6
	ld e,e			;17e7
	call pe,05d33h		;17e8
	ld hl,(l0015h)		;17eb
	dec bc			;17ee
	nop			;17ef
	add hl,bc		;17f0
	ld b,b			;17f1
	ld e,e			;17f2
	inc c			;17f3
	inc bc			;17f4
	ret po			;17f5
	call c,036dbh		;17f6
	call z,054bah		;17f9
	xor b			;17fc
	nop			;17fd
	ret nc			;17fe
	nop			;17ff
	sub b			;1800
	ld (bc),a		;1801
	jp c,0c030h		;1802
	nop			;1805
	and d			;1806
l1807h:
	nop			;1807
	inc bc			;1808
	rlca			;1809
	inc b			;180a
	dec d			;180b
	djnz l188dh		;180c
l180eh:
	rst 38h			;180e
	nop			;180f
	dec hl			;1810
	ld l,b			;1811
	ex de,hl		;1812
	call po,sub_13e5h	;1813
	inc bc			;1816
	nop			;1817
	ret nz			;1818
	ret po			;1819
	jr nz,l17c4h		;181a
	ex af,af'		;181c
	cp 0ffh			;181d
	nop			;181f
	call nc,0d716h		;1820
	daa			;1823
	and a			;1824
	ret z			;1825
	ret nz			;1826
	nop			;1827
	inc bc			;1828
	inc bc			;1829
	rlca			;182a
	adc a,l			;182b
	ld bc,0ff7fh		;182c
	nop			;182f
	dec e			;1830
	ld bc,l010dh		;1831
	dec b			;1834
	inc bc			;1835
l1836h:
	inc bc			;1836
	nop			;1837
	ret nz			;1838
	inc bc			;1839
	ret po			;183a
	adc a,e			;183b
	add a,b			;183c
	cp 0ffh			;183d
	nop			;183f
	cp b			;1840
	add a,b			;1841
	or b			;1842
	add a,b			;1843
	and b			;1844
	ret nz			;1845
	ret nz			;1846
	nop			;1847
	and b			;1848
	inc bc			;1849
	rrca			;184a
	rla			;184b
	jr c,l18abh		;184c
	ld l,h			;184e
	ex (sp),hl		;184f
	ex de,hl		;1850
	ex de,hl		;1851
	ex (sp),hl		;1852
	ld c,h			;1853
	dec e			;1854
	jr c,$+25		;1855
	rrca			;1857
	inc bc			;1858
	ret nz			;1859
	ret po			;185a
	ret z			;185b
	inc e			;185c
	cp d			;185d
	ld (hl),0c7h		;185e
	rst 10h			;1860
	rst 10h			;1861
	rst 0			;1862
	ld (l1cb8h),a		;1863
	ret z			;1866
	ret po			;1867
	ret nz			;1868
	inc bc			;1869
	nop			;186a
	adc a,d			;186b
	rlca			;186c
	jr $+95			;186d
	ret pe			;186f
	ex (sp),hl		;1870
	ret c			;1871
	cp e			;1872
	ld a,b			;1873
	rla			;1874
	rlca			;1875
	ld b,000h		;1876
	adc a,d			;1878
	ret po			;1879
	jr l1836h		;187a
	rla			;187c
	rst 0			;187d
	dec de			;187e
	defb 0ddh,01eh,0e8h ;illegal sequence	;187f
	ret po			;1882
	ex af,af'		;1883
	nop			;1884
	add a,(hl)		;1885
	rrca			;1886
	jr nc,$-35		;1887
	ret z			;1889
	jr nc,l189bh		;188a
	ld a,(bc)		;188c
l188dh:
	nop			;188d
	add a,(hl)		;188e
	ret p			;188f
	inc c			;1890
	in a,(013h)		;1891
	inc c			;1893
	ret p			;1894
	inc c			;1895
	nop			;1896
	ld (bc),a		;1897
	rst 38h			;1898
	ld c,000h		;1899
l189bh:
	ld (bc),a		;189b
	rst 38h			;189c
	rlca			;189d
	nop			;189e
	nop			;189f
	ret po			;18a0
	nop			;18a1
	inc c			;18a2
	rra			;18a3
	rla			;18a4
	ld d,015h		;18a5
	dec de			;18a7
	jr c,$+36		;18a8
	dec sp			;18aa
l18abh:
	dec a			;18ab
	dec e			;18ac
	ld b,007h		;18ad
	inc bc			;18af
	nop			;18b0
	ld (hl),b		;18b1
	ret m			;18b2
	call z,0ff3eh		;18b3
	ld sp,hl		;18b6
	rst 0			;18b7
	ccf			;18b8
	cp 07eh			;18b9
	sbc a,(hl)		;18bb
sub_18bch:
	and 0fch		;18bc
	ret m			;18be
	add a,b			;18bf
	nop			;18c0
	jr c,l1932h		;18c1
	ld l,a			;18c3
	ld l,(hl)		;18c4
	ld (hl),036h		;18c5
	dec (hl)		;18c7
	jr c,l1945h		;18c8
	ld (hl),l		;18ca
	ld (hl),00fh		;18cb
	rlca			;18cd
	rlca			;18ce
	inc bc			;18cf
	nop			;18d0
	ret po			;18d1
	ret p			;18d2
	ld (hl),b		;18d3
	ret p			;18d4
	ret m			;18d5
	cp 086h			;18d6
	ld a,(hl)		;18d8
	sbc a,h			;18d9
	ret pe			;18da
	ld a,b			;18db
	sbc a,h			;18dc
	call pe,sub_18bch	;18dd
	nop			;18e0
	ld (hl),b		;18e1
	call m,077efh		;18e2
	scf			;18e5
	ld d,015h		;18e6
	jr l1925h		;18e8
	ld h,l			;18ea
	sbc a,0beh		;18eb
	or 063h			;18ed
	inc bc			;18ef
	inc bc			;18f0
	ld h,b			;18f1
	ret p			;18f2
	or b			;18f3
	cp (hl)			;18f4
	ld a,a			;18f5
	pop af			;18f6
	rst 8			;18f7
	ld a,0d8h		;18f8
	ret pe			;18fa
	ld a,b			;18fb
	cp h			;18fc
	adc a,0b7h		;18fd
	sbc a,e			;18ff
	ld c,000h		;1900
	inc bc			;1902
	nop			;1903
	adc a,b			;1904
	ld bc,07e0fh		;1905
	rst 38h			;1908
	ccf			;1909
	add a,b			;190a
	ld a,a			;190b
	rlca			;190c
	ld b,000h		;190d
	adc a,d			;190f
	inc c			;1910
	inc e			;1911
	ret nz			;1912
	ld (hl),h		;1913
	ei			;1914
	rlca			;1915
	call m,08c53h		;1916
l1919h:
	ld (hl),h		;1919
	ld b,000h		;191a
	add a,l			;191c
	ld c,03eh		;191d
	ld a,(hl)		;191f
	rst 38h			;1920
	rlca			;1921
	inc b			;1922
	nop			;1923
	sub l			;1924
l1925h:
	rlca			;1925
	rst 38h			;1926
	ld a,(hl)		;1927
	ld a,00eh		;1928
	nop			;192a
	nop			;192b
	add a,b			;192c
	jp p,l04fbh		;192d
	ret m			;1930
	ld (bc),a		;1931
l1932h:
	ld d,(hl)		;1932
	ld d,a			;1933
	ld (bc),a		;1934
	ret m			;1935
	rlca			;1936
	ei			;1937
	jp p,l0680h		;1938
	nop			;193b
	add a,a			;193c
	ld b,07fh		;193d
	add a,b			;193f
	ccf			;1940
	rst 38h			;1941
	ld a,(hl)		;1942
	ld c,009h		;1943
l1945h:
	nop			;1945
	adc a,e			;1946
	call p,0538ch		;1947
	call m,0fb07h		;194a
	call po,01c00h		;194d
	inc c			;1950
	nop			;1951
	nop			;1952
	sbc a,a			;1953
	nop			;1954
	inc bc			;1955
	rrca			;1956
	ccf			;1957
	ld a,b			;1958
	rst 0			;1959
	dec hl			;195a
	push hl			;195b
	dec hl			;195c
	rst 0			;195d
	ld a,b			;195e
	ccf			;195f
	rrca			;1960
	inc bc			;1961
	nop			;1962
	nop			;1963
	call nc,0b0b7h		;1964
	ld h,b			;1967
	ret po			;1968
	ld (hl),b		;1969
	add a,b			;196a
	cp (hl)			;196b
	add a,b			;196c
	ld (hl),b		;196d
	ret po			;196e
	ld h,b			;196f
	or b			;1970
	or a			;1971
	call nc,sub_0003h	;1972
	adc a,e			;1975
	inc bc			;1976
	rrca			;1977
	ld a,0c5h		;1978
	dec hl			;197a
	call p,0fffeh		;197b
	ld a,a			;197e
	rra			;197f
	rlca			;1980
	dec b			;1981
	nop			;1982
	adc a,e			;1983
	or b			;1984
	or h			;1985
	ld h,a			;1986
	add a,b			;1987
	or b			;1988
	halt			;1989
	ret p			;198a
	ld h,b			;198b
	and a			;198c
	or h			;198d
	or b			;198e
	ex af,af'		;198f
	nop			;1990
	add a,a			;1991
	dec b			;1992
	ld a,0ffh		;1993
	rst 38h			;1995
	ld a,a			;1996
	ld a,005h		;1997
	add hl,bc		;1999
	nop			;199a
	add a,a			;199b
	ret po			;199c
	ret p			;199d
	ld a,a			;199e
	ld (hl),h		;199f
	ld (hl),a		;19a0
l19a1h:
	ret p			;19a1
	ret po			;19a2
	rlca			;19a3
	nop			;19a4
	adc a,e			;19a5
	rlca			;19a6
	rra			;19a7
	ld a,a			;19a8
	rst 38h			;19a9
	cp 0f4h			;19aa
	dec hl			;19ac
	push bc			;19ad
	ld a,00fh		;19ae
	inc bc			;19b0
	dec b			;19b1
	nop			;19b2
	adc a,l			;19b3
	or b			;19b4
	or h			;19b5
	and a			;19b6
	ld h,b			;19b7
	ret p			;19b8
	halt			;19b9
	or b			;19ba
	add a,b			;19bb
	ld h,a			;19bc
	or h			;19bd
	or b			;19be
	nop			;19bf
	nop			;19c0
	nop			;19c1
	and b			;19c2
	nop			;19c3
	inc bc			;19c4
	rrca			;19c5
	jr nc,$+1		;19c6
	nop			;19c8
	dec d			;19c9
	dec (hl)		;19ca
	dec d			;19cb
	nop			;19cc
	rst 38h			;19cd
	jr nc,l19dfh		;19ce
	inc bc			;19d0
	nop			;19d1
	nop			;19d2
	ret p			;19d3
	cp b			;19d4
	ld e,h			;19d5
	ld b,(hl)		;19d6
	rst 38h			;19d7
	ld h,b			;19d8
	or 0f4h			;19d9
	or 060h			;19db
	rst 38h			;19dd
	ld b,(hl)		;19de
l19dfh:
	ld e,h			;19df
	cp b			;19e0
	ret p			;19e1
	nop			;19e2
	nop			;19e3
	sub b			;19e4
	ret nz			;19e5
	ret m			;19e6
	cp a			;19e7
	sbc a,a			;19e8
	ld c,a			;19e9
	ld b,a			;19ea
	ld b,e			;19eb
	ld hl,02221h		;19ec
	ld (de),a		;19ef
	inc d			;19f0
	inc d			;19f1
	add hl,bc		;19f2
	ld a,(bc)		;19f3
	inc c			;19f4
	inc bc			;19f5
	nop			;19f6
	adc a,d			;19f7
	ret po			;19f8
	call m,0faffh		;19f9
	call nz,sub_1008h	;19fc
	jr nz,l1a41h		;19ff
	add a,b			;1a01
	inc b			;1a02
	nop			;1a03
	add a,h			;1a04
	inc b			;1a05
	rlca			;1a06
	rlca			;1a07
	dec b			;1a08
	inc b			;1a09
	ex af,af'		;1a0a
	inc b			;1a0b
	djnz l19a1h		;1a0c
	jr nz,l1a37h		;1a0e
	jr c,l1a12h		;1a10
l1a12h:
	nop			;1a12
	add a,b			;1a13
	ret m			;1a14
	rst 38h			;1a15
	rst 38h			;1a16
	ld a,a			;1a17
	ccf			;1a18
	rra			;1a19
	rrca			;1a1a
	rlca			;1a1b
	inc bc			;1a1c
	rlca			;1a1d
	ld a,b			;1a1e
	add a,b			;1a1f
	nop			;1a20
	nop			;1a21
	xor l			;1a22
	ld bc,02e1eh		;1a23
	ld e,000h		;1a26
	rla			;1a28
	nop			;1a29
	rlca			;1a2a
	rlca			;1a2b
	nop			;1a2c
	rla			;1a2d
	nop			;1a2e
	ld e,02eh		;1a2f
	ld e,001h		;1a31
	nop			;1a33
	ret p			;1a34
	ret pe			;1a35
	ret p			;1a36
l1a37h:
	nop			;1a37
	ret nc			;1a38
	nop			;1a39
	ret nz			;1a3a
	ret nz			;1a3b
	nop			;1a3c
	ret nc			;1a3d
	nop			;1a3e
	ret p			;1a3f
	ret pe			;1a40
l1a41h:
	ret p			;1a41
	nop			;1a42
	nop			;1a43
	rlca			;1a44
	dec l			;1a45
	ld c,03dh		;1a46
	ld a,e			;1a48
	ld d,(hl)		;1a49
	ld l,h			;1a4a
	inc de			;1a4b
	inc bc			;1a4c
	nop			;1a4d
	nop			;1a4e
l1a4fh:
	ld bc,l0006h		;1a4f
	adc a,h			;1a52
	add a,b			;1a53
	nop			;1a54
	nop			;1a55
	ret nz			;1a56
	ret z			;1a57
	ld (hl),06ah		;1a58
	sbc a,0bch		;1a5a
	ld (hl),b		;1a5c
	or h			;1a5d
	ret po			;1a5e
	inc bc			;1a5f
	nop			;1a60
	adc a,e			;1a61
	jr nz,l1ab8h		;1a62
	ld (hl),b		;1a64
	ld (hl),l		;1a65
	ld (hl),l		;1a66
	add a,l			;1a67
	ld (hl),l		;1a68
	ld (hl),l		;1a69
	ld (hl),b		;1a6a
	ld d,h			;1a6b
	jr nz,$+7		;1a6c
	nop			;1a6e
	adc a,e			;1a6f
	inc b			;1a70
	ld hl,(0ae0eh)		;1a71
	xor (hl)		;1a74
	and c			;1a75
	xor (hl)		;1a76
	xor (hl)		;1a77
	ld c,02ah		;1a78
	inc b			;1a7a
	inc bc			;1a7b
	nop			;1a7c
	nop			;1a7d
	sbc a,h			;1a7e
	nop			;1a7f
	ld bc,l0202h		;1a80
	rlca			;1a83
	rrca			;1a84
	dec e			;1a85
	ld e,017h		;1a86
	rla			;1a88
	ld c,008h		;1a89
	inc b			;1a8b
	ld (bc),a		;1a8c
	ld bc,l0000h		;1a8d
	add a,b			;1a90
	ret nz			;1a91
	ret p			;1a92
	cp b			;1a93
	ld a,h			;1a94
	ld a,h			;1a95
	call m,0c81ch		;1a96
	ret p			;1a99
	ret p			;1a9a
	inc bc			;1a9b
	ld h,b			;1a9c
	adc a,(hl)		;1a9d
	ret nz			;1a9e
	nop			;1a9f
	nop			;1aa0
	ld b,00dh		;1aa1
	jr c,l1b23h		;1aa3
	ld e,(hl)		;1aa5
	rst 8			;1aa6
	ld d,(hl)		;1aa7
	dec (hl)		;1aa8
	ld e,007h		;1aa9
	inc bc			;1aab
	ld b,000h		;1aac
	adc a,c			;1aae
	ret po			;1aaf
	ld d,b			;1ab0
	jr c,l1b11h		;1ab1
	ld c,a			;1ab3
	ld h,d			;1ab4
	call z,0c0f8h		;1ab5
l1ab8h:
	ld a,(bc)		;1ab8
	nop			;1ab9
	adc a,b			;1aba
	ld bc,l0402h		;1abb
	rrca			;1abe
	dec c			;1abf
	ld (bc),a		;1ac0
	ld (bc),a		;1ac1
	ld bc,l0008h		;1ac2
	adc a,d			;1ac5
	ret p			;1ac6
	cp h			;1ac7
	ld a,(hl)		;1ac8
	jp m,0c8b4h		;1ac9
	ret p			;1acc
	ld b,b			;1acd
	nop			;1ace
	nop			;1acf
	nop			;1ad0
	ret nz			;1ad1
	nop			;1ad2
	ld bc,l0303h		;1ad3
	ld a,(bc)		;1ad6
	jr z,$+106		;1ad7
	inc bc			;1ad9
	ld e,l			;1ada
	ld d,d			;1adb
	dec hl			;1adc
	add hl,bc		;1add
	ld (bc),a		;1ade
	ld (bc),a		;1adf
	nop			;1ae0
	nop			;1ae1
	add a,b			;1ae2
	ret nz			;1ae3
	ret po			;1ae4
	ld h,b			;1ae5
	xor b			;1ae6
	adc a,d			;1ae7
	adc a,e			;1ae8
	ld h,b			;1ae9
	defb 0ddh,025h ;dec ixh	;1aea
	ld l,d			;1aec
	ret z			;1aed
	and b			;1aee
	and b			;1aef
	add a,b			;1af0
	add a,b			;1af1
	nop			;1af2
	nop			;1af3
	ld (bc),a		;1af4
	ld (bc),a		;1af5
	add hl,bc		;1af6
	dec hl			;1af7
	ld d,d			;1af8
	ld e,l			;1af9
	inc bc			;1afa
	ld l,b			;1afb
	jr z,l1b08h		;1afc
	inc bc			;1afe
	inc bc			;1aff
	ld bc,08000h		;1b00
	add a,b			;1b03
l1b04h:
	and b			;1b04
	and b			;1b05
	ret z			;1b06
	ld l,d			;1b07
l1b08h:
	dec h			;1b08
	defb 0ddh,060h ;ld ixh,b	;1b09
	adc a,e			;1b0b
l1b0ch:
	adc a,d			;1b0c
	xor b			;1b0d
	ld h,b			;1b0e
	ret po			;1b0f
	ret nz			;1b10
l1b11h:
	add a,b			;1b11
	nop			;1b12
	adc a,l			;1b13
	nop			;1b14
	ld bc,l1101h		;1b15
	add hl,bc		;1b18
	ld b,007h		;1b19
	rrca			;1b1b
	ld l,l			;1b1c
	ld a,(bc)		;1b1d
	dec b			;1b1e
	add hl,bc		;1b1f
	djnz l1b28h		;1b20
l1b22h:
	nop			;1b22
l1b23h:
	adc a,l			;1b23
	ex af,af'		;1b24
	ld d,b			;1b25
	and b			;1b26
	ret nz			;1b27
l1b28h:
	call p,0d0f0h		;1b28
	and b			;1b2b
	sub b			;1b2c
	ex af,af'		;1b2d
	add a,b			;1b2e
	add a,b			;1b2f
	nop			;1b30
	nop			;1b31
l1b32h:
	add a,c			;1b32
	nop			;1b33
	inc bc			;1b34
	ld bc,l0287h		;1b35
	ld a,(bc)		;1b38
	inc b			;1b39
	add hl,de		;1b3a
	inc b			;1b3b
	ld a,(bc)		;1b3c
	ld (bc),a		;1b3d
	inc bc			;1b3e
	ld bc,l0006h		;1b3f
	add a,a			;1b42
	add a,b			;1b43
l1b44h:
	and b			;1b44
	ld b,b			;1b45
	jr nc,$+66		;1b46
	and b			;1b48
	add a,b			;1b49
	dec b			;1b4a
	nop			;1b4b
	nop			;1b4c
	and b			;1b4d
	inc bc			;1b4e
	ld sp,l1a4fh		;1b4f
	ld (hl),a		;1b52
	dec h			;1b53
	ld e,e			;1b54
	push de			;1b55
	xor e			;1b56
	ld d,l			;1b57
	ld h,a			;1b58
l1b59h:
	cp d			;1b59
	dec d			;1b5a
	ccf			;1b5b
	ld b,(hl)		;1b5c
	ld de,0c8a0h		;1b5d
	jr c,l1b32h		;1b60
	defb 0fdh,0f4h,0feh ;illegal sequence	;1b62
	call m,0fdf6h		;1b65
	jp pe,0f2bch		;1b68
	ld l,b			;1b6b
	add a,h			;1b6c
	jr nc,l1b73h		;1b6d
	nop			;1b6f
	adc a,e			;1b70
	inc bc			;1b71
	inc d			;1b72
l1b73h:
	rla			;1b73
	dec c			;1b74
	ld hl,(l1b0ch)		;1b75
	dec c			;1b78
	rla			;1b79
	ld bc,l0406h		;1b7a
	nop			;1b7d
	adc a,h			;1b7e
	ld b,b			;1b7f
	djnz l1b22h		;1b80
	ret pe			;1b82
	call p,0f8f0h		;1b83
	call p,0e0b8h		;1b86
	xor b			;1b89
	jr nz,l1b93h		;1b8a
	nop			;1b8c
	add a,l			;1b8d
	dec b			;1b8e
	inc bc			;1b8f
	ld b,009h		;1b90
	ld (bc),a		;1b92
l1b93h:
	ld a,(bc)		;1b93
	nop			;1b94
	add a,a			;1b95
	add a,b			;1b96
	jr nz,l1b59h		;1b97
	ret nz			;1b99
	ret nc			;1b9a
	add a,b			;1b9b
	ld b,b			;1b9c
l1b9dh:
	inc b			;1b9d
	nop			;1b9e
	nop			;1b9f
	sbc a,a			;1ba0
	nop			;1ba1
	rrca			;1ba2
	inc sp			;1ba3
	ld a,l			;1ba4
	cp 00eh			;1ba5
	inc h			;1ba7
	ld l,d			;1ba8
	ld l,d			;1ba9
	inc h			;1baa
	ld c,0feh		;1bab
	ld a,l			;1bad
	inc sp			;1bae
	rrca			;1baf
	nop			;1bb0
	nop			;1bb1
	ld (hl),b		;1bb2
	cp (hl)			;1bb3
	ret nc			;1bb4
	ret po			;1bb5
	djnz l1b44h		;1bb6
	cp l			;1bb8
	cp l			;1bb9
	adc a,h			;1bba
	djnz l1b9dh		;1bbb
	ret nc			;1bbd
	cp (hl)			;1bbe
	ld (hl),b		;1bbf
	inc bc			;1bc0
	nop			;1bc1
	adc a,h			;1bc2
	inc bc			;1bc3
	dec a			;1bc4
	ld a,(hl)		;1bc5
	call nz,06aaah		;1bc6
	nop			;1bc9
	call m,07efeh		;1bca
	dec a			;1bcd
	inc bc			;1bce
	inc b			;1bcf
	nop			;1bd0
	adc a,l			;1bd1
	add a,h			;1bd2
	ret nc			;1bd3
	xor 010h		;1bd4
	adc a,h			;1bd6
	cp l			;1bd7
	cp l			;1bd8
	inc b			;1bd9
	ret p			;1bda
	xor 0d0h		;1bdb
	or h			;1bdd
	inc b			;1bde
	ld b,000h		;1bdf
	add a,a			;1be1
	dec c			;1be2
	dec sp			;1be3
	ld (hl),a		;1be4
	rst 30h			;1be5
	ld (hl),a		;1be6
	dec sp			;1be7
	dec c			;1be8
	ld b,000h		;1be9
	adc a,l			;1beb
	inc b			;1bec
	inc c			;1bed
	ex af,af'		;1bee
	ret po			;1bef
	sub 0b8h		;1bf0
	cp a			;1bf2
	cp b			;1bf3
	sub 0e0h		;1bf4
	ex af,af'		;1bf6
	inc c			;1bf7
	inc b			;1bf8
	inc bc			;1bf9
	nop			;1bfa
	adc a,h			;1bfb
	inc bc			;1bfc
	dec a			;1bfd
	ld a,(hl)		;1bfe
	cp 0fch			;1bff
	nop			;1c01
	ld l,d			;1c02
	xor d			;1c03
l1c04h:
	call nz,03d7eh		;1c04
	inc bc			;1c07
	inc bc			;1c08
	nop			;1c09
	adc a,a			;1c0a
	inc b			;1c0b
	or h			;1c0c
	ret nc			;1c0d
	xor 0f0h		;1c0e
	inc b			;1c10
	cp l			;1c11
	cp l			;1c12
	adc a,h			;1c13
	djnz l1c04h		;1c14
	ret nc			;1c16
	add a,h			;1c17
	nop			;1c18
	nop			;1c19
	nop			;1c1a
	adc a,h			;1c1b
	ld (bc),a		;1c1c
	dec hl			;1c1d
	rra			;1c1e
	rra			;1c1f
	ld a,a			;1c20
	ccf			;1c21
	ld a,a			;1c22
	cp a			;1c23
	ld a,l			;1c24
	rst 38h			;1c25
	adc a,c			;1c26
	add a,b			;1c27
	inc b			;1c28
	nop			;1c29
	adc a,h			;1c2a
	and b			;1c2b
	ret z			;1c2c
	ret p			;1c2d
	jp m,0fcfch		;1c2e
	defb 0fdh,0feh,0eeh ;illegal sequence	;1c31
	dec de			;1c34
	or c			;1c35
	ld b,b			;1c36
	rlca			;1c37
	nop			;1c38
	ld (bc),a		;1c39
	ld bc,l058bh		;1c3a
	ld a,(bc)		;1c3d
	ld a,(bc)		;1c3e
	dec e			;1c3f
	cpl			;1c40
	rst 18h			;1c41
	rst 38h			;1c42
	ld a,a			;1c43
	rra			;1c44
	inc hl			;1c45
	inc c			;1c46
	inc b			;1c47
	nop			;1c48
	and a			;1c49
	ld b,b			;1c4a
	jr nz,$-86		;1c4b
	ret pe			;1c4d
	call pe,0fbfch		;1c4e
	rst 38h			;1c51
	cp 0c8h			;1c52
	call z,sub_0120h	;1c54
	ld bc,l0200h		;1c57
	dec b			;1c5a
	dec b			;1c5b
	ld b,006h		;1c5c
	dec c			;1c5e
	rrca			;1c5f
	cpl			;1c60
	cpl			;1c61
	rra			;1c62
	rra			;1c63
	rrca			;1c64
	inc bc			;1c65
	nop			;1c66
	nop			;1c67
	add a,b			;1c68
	add a,b			;1c69
	ret nz			;1c6a
	ld h,b			;1c6b
	ld h,b			;1c6c
	or h			;1c6d
	call p,0fcf4h		;1c6e
	inc bc			;1c71
	ret m			;1c72
	add a,d			;1c73
	ret p			;1c74
	ret po			;1c75
	nop			;1c76
	ld (bc),a		;1c77
	nop			;1c78
	adc a,h			;1c79
	inc d			;1c7a
	ld h,00fh		;1c7b
	ccf			;1c7d
	rra			;1c7e
	ld c,001h		;1c7f
	dec bc			;1c81
	ld a,(de)		;1c82
	ld a,(de)		;1c83
	dec e			;1c84
	inc c			;1c85
	inc b			;1c86
	nop			;1c87
	adc a,h			;1c88
	sbc a,b			;1c89
	inc h			;1c8a
	ld h,d			;1c8b
	ld (hl),d		;1c8c
	ld a,h			;1c8d
	cp b			;1c8e
	ret nc			;1c8f
	ret pe			;1c90
	inc l			;1c91
	ld l,0deh		;1c92
	inc e			;1c94
	inc bc			;1c95
	nop			;1c96
	sbc a,(hl)		;1c97
	inc bc			;1c98
	inc b			;1c99
	rlca			;1c9a
	rlca			;1c9b
	scf			;1c9c
	ld (hl),b		;1c9d
	ld (hl),a		;1c9e
	cpl			;1c9f
	inc de			;1ca0
	ld hl,l1221h		;1ca1
	dec c			;1ca4
	ld bc,l0000h		;1ca5
	add a,b			;1ca8
	ld b,b			;1ca9
	ret nz			;1caa
l1cabh:
	ret nc			;1cab
	ret nz			;1cac
	cp (hl)			;1cad
	ld a,c			;1cae
	cp c			;1caf
	cp c			;1cb0
	cp (hl)			;1cb1
	ld b,b			;1cb2
	ret nz			;1cb3
	ret nz			;1cb4
	add a,b			;1cb5
	inc bc			;1cb6
	nop			;1cb7
l1cb8h:
	adc a,h			;1cb8
	inc c			;1cb9
	dec e			;1cba
	ld a,(de)		;1cbb
	ld a,(de)		;1cbc
	dec bc			;1cbd
	ld bc,l1f0eh		;1cbe
	ccf			;1cc1
	rrca			;1cc2
	ld h,014h		;1cc3
	inc b			;1cc5
	nop			;1cc6
	adc a,(hl)		;1cc7
	inc e			;1cc8
	sbc a,02eh		;1cc9
	inc l			;1ccb
	ret pe			;1ccc
	ret nc			;1ccd
	cp b			;1cce
	ld a,h			;1ccf
	ld (hl),d		;1cd0
	ld h,d			;1cd1
	inc h			;1cd2
	sbc a,b			;1cd3
	nop			;1cd4
	nop			;1cd5
	nop			;1cd6
	ld (bc),a		;1cd7
	nop			;1cd8
	adc a,h			;1cd9
	ld a,(bc)		;1cda
	dec c			;1cdb
	ld c,00fh		;1cdc
	rrca			;1cde
	rla			;1cdf
sub_1ce0h:
	dec bc			;1ce0
	inc e			;1ce1
l1ce2h:
	ld a,000h		;1ce2
	ld b,004h		;1ce4
	inc b			;1ce6
	nop			;1ce7
	adc a,l			;1ce8
	jr nz,l1d53h		;1ce9
	ret c			;1ceb
	jr z,l1d3eh		;1cec
	jr c,$+126		;1cee
	sbc a,(hl)		;1cf0
	ret nz			;1cf1
	ret pe			;1cf2
	ret po			;1cf3
	ld h,b			;1cf4
	jr nz,l1cfah		;1cf5
	nop			;1cf7
	adc a,h			;1cf8
	ld (bc),a		;1cf9
l1cfah:
	inc bc			;1cfa
	inc bc			;1cfb
	inc e			;1cfc
	ld l,017h		;1cfd
	nop			;1cff
	rrca			;1d00
	ld c,00dh		;1d01
	ld a,(bc)		;1d03
	inc b			;1d04
	inc b			;1d05
	nop			;1d06
	adc a,(hl)		;1d07
	djnz l1d2ah		;1d08
	ld d,b			;1d0a
	or b			;1d0b
	or b			;1d0c
	inc h			;1d0d
	ld c,(hl)		;1d0e
	ld (hl),b		;1d0f
	ld a,b			;1d10
	jr c,l1cabh		;1d11
	ret z			;1d13
	add a,b			;1d14
	nop			;1d15
	nop			;1d16
	inc d			;1d17
	nop			;1d18
	add a,d			;1d19
	ret nz			;1d1a
	ld (hl),b		;1d1b
	dec bc			;1d1c
	nop			;1d1d
	add a,l			;1d1e
	add a,b			;1d1f
	ret po			;1d20
	ld (hl),b		;1d21
	ld a,a			;1d22
	ld a,a			;1d23
	inc bc			;1d24
	cp a			;1d25
	add a,d			;1d26
	ld a,b			;1d27
	ret po			;1d28
	ld a,(bc)		;1d29
l1d2ah:
	nop			;1d2a
	add a,e			;1d2b
	adc a,b			;1d2c
	rst 38h			;1d2d
	ret m			;1d2e
	rra			;1d2f
	nop			;1d30
	ld (bc),a		;1d31
	ret p			;1d32
	ex af,af'		;1d33
	nop			;1d34
	adc a,(hl)		;1d35
	ld h,b			;1d36
	ld a,b			;1d37
	ld a,(hl)		;1d38
	ccf			;1d39
	ld a,(06f3fh)		;1d3a
	ld l,a			;1d3d
l1d3eh:
	ccf			;1d3e
	ld a,(07e3fh)		;1d3f
	ld a,b			;1d42
	ld h,b			;1d43
	ld b,000h		;1d44
	add a,(hl)		;1d46
	ld h,b			;1d47
	ret m			;1d48
	rst 38h			;1d49
	rst 38h			;1d4a
	ret m			;1d4b
	ld h,b			;1d4c
	rra			;1d4d
	nop			;1d4e
	add a,d			;1d4f
	ld (hl),b		;1d50
	ret nz			;1d51
	add hl,bc		;1d52
l1d53h:
	nop			;1d53
	add a,d			;1d54
	ret po			;1d55
	ld a,b			;1d56
	inc bc			;1d57
	cp a			;1d58
	ld (bc),a		;1d59
	ld a,a			;1d5a
	add a,e			;1d5b
	ld (hl),b		;1d5c
	ret po			;1d5d
	add a,b			;1d5e
	add hl,bc		;1d5f
	nop			;1d60
	add a,e			;1d61
	ret m			;1d62
	rst 38h			;1d63
	adc a,b			;1d64
	dec b			;1d65
	nop			;1d66
	nop			;1d67
	add hl,bc		;1d68
	nop			;1d69
	add a,a			;1d6a
	ld bc,0ff1fh		;1d6b
	ld a,b			;1d6e
	ld h,b			;1d6f
	ret nz			;1d70
	add a,b			;1d71
	add hl,bc		;1d72
	nop			;1d73
	add a,d			;1d74
	rst 38h			;1d75
	ret p			;1d76
	ld a,(bc)		;1d77
	nop			;1d78
	add a,(hl)		;1d79
	jr l1d9bh		;1d7a
	rra			;1d7c
	ld a,066h		;1d7d
	ret po			;1d7f
	inc c			;1d80
	nop			;1d81
	add a,d			;1d82
	ret p			;1d83
	call m,l0008h		;1d84
	add a,(hl)		;1d87
	add a,b			;1d88
	ret po			;1d89
	ld (hl),b		;1d8a
	rst 38h			;1d8b
	rra			;1d8c
	ld bc,l000ch+1		;1d8d
	add a,e			;1d90
	add a,b			;1d91
	ret p			;1d92
	rst 38h			;1d93
	ld c,000h		;1d94
	add a,(hl)		;1d96
	ret po			;1d97
	cp 07fh			;1d98
	ccf			;1d9a
l1d9bh:
	ld e,018h		;1d9b
	inc c			;1d9d
	nop			;1d9e
	add a,d			;1d9f
	call m,sub_07f0h	;1da0
	nop			;1da3
	nop			;1da4
	and c			;1da5
	sbc a,(hl)		;1da6
	xor c			;1da7
l1da8h:
	sbc a,(hl)		;1da8
	xor c			;1da9
l1daah:
	sbc a,(hl)		;1daa
	xor c			;1dab
l1dach:
	sbc a,(hl)		;1dac
	xor c			;1dad
	sbc a,(hl)		;1dae
	xor c			;1daf
	sbc a,(hl)		;1db0
	xor l			;1db1
	sbc a,(hl)		;1db2
	xor l			;1db3
l1db4h:
	sbc a,(hl)		;1db4
	xor l			;1db5
l1db6h:
	sbc a,(hl)		;1db6
	or c			;1db7
l1db8h:
	sbc a,(hl)		;1db8
	or c			;1db9
	sbc a,(hl)		;1dba
	or c			;1dbb
l1dbch:
	sbc a,(hl)		;1dbc
	or c			;1dbd
l1dbeh:
	sbc a,(hl)		;1dbe
	or c			;1dbf
l1dc0h:
	sbc a,(hl)		;1dc0
	or c			;1dc1
	sbc a,(hl)		;1dc2
	or l			;1dc3
	sbc a,(hl)		;1dc4
	or l			;1dc5
	sbc a,(hl)		;1dc6
	or l			;1dc7
l1dc8h:
	sbc a,(hl)		;1dc8
	cp c			;1dc9
l1dcah:
	sbc a,(hl)		;1dca
	cp c			;1dcb
l1dcch:
	sbc a,(hl)		;1dcc
	cp c			;1dcd
	sbc a,(hl)		;1dce
	cp l			;1dcf
	sbc a,(hl)		;1dd0
	cp l			;1dd1
	sbc a,(hl)		;1dd2
	cp l			;1dd3
l1dd4h:
	sbc a,(hl)		;1dd4
	pop bc			;1dd5
	sbc a,(hl)		;1dd6
	push bc			;1dd7
l1dd8h:
	sbc a,(hl)		;1dd8
	ret			;1dd9
	sbc a,(hl)		;1dda
	call 0d19eh		;1ddb
	sbc a,(hl)		;1dde
	push de			;1ddf
	sbc a,(hl)		;1de0
	exx			;1de1
	sbc a,(hl)		;1de2
	ret p			;1de3
	sbc a,(hl)		;1de4
	ret p			;1de5
	sbc a,(hl)		;1de6
	ret p			;1de7
	sbc a,(hl)		;1de8
	call p,0f89eh		;1de9
	sbc a,(hl)		;1dec
	call m,sub_009eh	;1ded
	sbc a,a			;1df0
	nop			;1df1
	sbc a,a			;1df2
	nop			;1df3
	sbc a,a			;1df4
	inc b			;1df5
	sbc a,a			;1df6
	inc b			;1df7
	sbc a,a			;1df8
	inc b			;1df9
	sbc a,a			;1dfa
	ex af,af'		;1dfb
	sbc a,a			;1dfc
	ex af,af'		;1dfd
	sbc a,a			;1dfe
	ex af,af'		;1dff
	sbc a,a			;1e00
	inc c			;1e01
	sbc a,a			;1e02
	inc c			;1e03
	sbc a,a			;1e04
	inc c			;1e05
	sbc a,a			;1e06
	djnz l1da8h		;1e07
	djnz l1daah		;1e09
	djnz l1dach		;1e0b
	inc d			;1e0d
	sbc a,a			;1e0e
	inc d			;1e0f
	sbc a,a			;1e10
	inc d			;1e11
	sbc a,a			;1e12
	jr l1db4h		;1e13
	jr l1db6h		;1e15
	jr l1db8h		;1e17
	inc e			;1e19
	sbc a,a			;1e1a
	jr nz,l1dbch		;1e1b
	jr nz,l1dbeh		;1e1d
	jr nz,l1dc0h		;1e1f
	inc h			;1e21
	sbc a,a			;1e22
	inc h			;1e23
	sbc a,a			;1e24
	inc h			;1e25
	sbc a,a			;1e26
	jr z,l1dc8h		;1e27
	jr z,l1dcah		;1e29
	jr z,l1dcch		;1e2b
	inc l			;1e2d
	sbc a,a			;1e2e
	inc l			;1e2f
	sbc a,a			;1e30
	inc l			;1e31
	sbc a,a			;1e32
	jr nc,l1dd4h		;1e33
	inc (hl)		;1e35
	sbc a,a			;1e36
	jr c,l1dd8h		;1e37
	inc a			;1e39
	sbc a,a			;1e3a
	ld b,b			;1e3b
	sbc a,a			;1e3c
	ld b,h			;1e3d
	sbc a,a			;1e3e
	ld c,b			;1e3f
	sbc a,a			;1e40
	ld c,h			;1e41
	sbc a,a			;1e42
	ld d,b			;1e43
	sbc a,a			;1e44
	ld d,h			;1e45
	sbc a,a			;1e46
	ld e,b			;1e47
	sbc a,a			;1e48
	ld e,h			;1e49
	sbc a,a			;1e4a
	ld h,b			;1e4b
	sbc a,a			;1e4c
	ld h,h			;1e4d
	sbc a,a			;1e4e
	ld l,b			;1e4f
	sbc a,a			;1e50
	ld l,h			;1e51
	sbc a,a			;1e52
	ld (hl),b		;1e53
	sbc a,a			;1e54
	ld (hl),h		;1e55
	sbc a,a			;1e56
	ld a,b			;1e57
	sbc a,a			;1e58
	ld a,h			;1e59
	sbc a,a			;1e5a
	add a,b			;1e5b
	sbc a,a			;1e5c
	add a,h			;1e5d
	sbc a,a			;1e5e
	adc a,b			;1e5f
	sbc a,a			;1e60
	adc a,b			;1e61
	sbc a,a			;1e62
	adc a,b			;1e63
	sbc a,a			;1e64
	adc a,b			;1e65
	sbc a,a			;1e66
	adc a,h			;1e67
	sbc a,a			;1e68
	sub b			;1e69
	sbc a,a			;1e6a
	sub h			;1e6b
	sbc a,a			;1e6c
	sbc a,b			;1e6d
	sbc a,a			;1e6e
	sbc a,h			;1e6f
	sbc a,a			;1e70
	and b			;1e71
	sbc a,a			;1e72
	and h			;1e73
	sbc a,a			;1e74
	xor b			;1e75
	sbc a,a			;1e76
	xor h			;1e77
	sbc a,a			;1e78
	or b			;1e79
	sbc a,a			;1e7a
	or h			;1e7b
	sbc a,a			;1e7c
	cp b			;1e7d
	sbc a,a			;1e7e
	cp h			;1e7f
	sbc a,a			;1e80
	ret nz			;1e81
	sbc a,a			;1e82
	call nz,0c89fh		;1e83
	sbc a,a			;1e86
	call z,0d09fh		;1e87
	sbc a,a			;1e8a
	jp nc,0d49fh		;1e8b
	sbc a,a			;1e8e
	sub 09fh		;1e8f
	ret c			;1e91
	sbc a,a			;1e92
	jp c,0dc9fh		;1e93
	sbc a,a			;1e96
	ret po			;1e97
	sbc a,a			;1e98
	call po,0e89fh		;1e99
	sbc a,a			;1e9c
	call pe,0f09fh		;1e9d
	sbc a,a			;1ea0
	ret nz			;1ea1
	jp nz,0c3c1h		;1ea2
	call nz,0c5c6h		;1ea5
	and c			;1ea8
	ld a,e			;1ea9
	ld a,h			;1eaa
	ld a,d			;1eab
	ld a,c			;1eac
	ld a,e			;1ead
	ld a,h			;1eae
	ld a,l			;1eaf
	ld a,(hl)		;1eb0
	xor l			;1eb1
	xor (hl)		;1eb2
	xor h			;1eb3
	xor e			;1eb4
	xor l			;1eb5
	xor (hl)		;1eb6
	xor a			;1eb7
	or b			;1eb8
	xor h			;1eb9
	xor e			;1eba
	xor l			;1ebb
	xor (hl)		;1ebc
	xor a			;1ebd
	or b			;1ebe
	xor l			;1ebf
	xor (hl)		;1ec0
	ld (hl),e		;1ec1
	ld (hl),h		;1ec2
	ld (hl),a		;1ec3
	ld a,b			;1ec4
	ld (hl),l		;1ec5
	ld (hl),h		;1ec6
	ld (hl),a		;1ec7
	ld a,b			;1ec8
	halt			;1ec9
	ld (hl),h		;1eca
	ld (hl),a		;1ecb
	ld a,b			;1ecc
	ld a,d			;1ecd
	ld a,h			;1ece
	ld a,(hl)		;1ecf
	ld a,l			;1ed0
	ld a,d			;1ed1
	ld a,e			;1ed2
	ld a,(hl)		;1ed3
	ld a,l			;1ed4
	ld a,d			;1ed5
	ld a,c			;1ed6
	ld a,(hl)		;1ed7
	ld a,l			;1ed8
	ld l,a			;1ed9
	ld l,a			;1eda
	ld l,a			;1edb
	ld l,a			;1edc
	ld l,a			;1edd
	ld l,a			;1ede
	ld l,a			;1edf
	ld l,a			;1ee0
	ld l,a			;1ee1
	ld l,a			;1ee2
	ld l,a			;1ee3
	ld l,a			;1ee4
	ld l,a			;1ee5
	ld l,a			;1ee6
	ld l,a			;1ee7
	ld l,a			;1ee8
	ld l,a			;1ee9
	ld l,a			;1eea
	ld l,a			;1eeb
	ld l,a			;1eec
	ld l,a			;1eed
	ld l,a			;1eee
	ld l,a			;1eef
	adc a,e			;1ef0
	nop			;1ef1
	adc a,a			;1ef2
	nop			;1ef3
	adc a,h			;1ef4
	nop			;1ef5
	sub b			;1ef6
	nop			;1ef7
	adc a,(hl)		;1ef8
	nop			;1ef9
	sub d			;1efa
	nop			;1efb
	adc a,l			;1efc
	nop			;1efd
	sub c			;1efe
	nop			;1eff
	add a,b			;1f00
	ld a,a			;1f01
	add a,c			;1f02
	add a,d			;1f03
	add a,e			;1f04
	add a,h			;1f05
	add a,c			;1f06
l1f07h:
	add a,d			;1f07
	add a,c			;1f08
	add a,d			;1f09
	add a,b			;1f0a
	ld a,a			;1f0b
	add a,c			;1f0c
	add a,d			;1f0d
l1f0eh:
	add a,e			;1f0e
	add a,h			;1f0f
	add a,a			;1f10
	adc a,b			;1f11
	add a,(hl)		;1f12
	add a,l			;1f13
	add a,a			;1f14
	adc a,b			;1f15
	adc a,c			;1f16
	adc a,d			;1f17
	inc c			;1f18
	dec bc			;1f19
	djnz l1f2bh		;1f1a
	add hl,bc		;1f1c
	ld a,(bc)		;1f1d
	dec c			;1f1e
	ld c,086h		;1f1f
	add a,l			;1f21
	add a,a			;1f22
	adc a,b			;1f23
	adc a,c			;1f24
	adc a,d			;1f25
	add a,a			;1f26
	adc a,b			;1f27
	ld (hl),h		;1f28
	ld (hl),e		;1f29
	ld (hl),l		;1f2a
l1f2bh:
	halt			;1f2b
	ld (hl),a		;1f2c
	ld a,b			;1f2d
	ld (hl),l		;1f2e
	halt			;1f2f
	ld (hl),a		;1f30
	ld a,b			;1f31
	ld (hl),e		;1f32
	ld (hl),h		;1f33
	ld (hl),a		;1f34
	ld a,b			;1f35
	ld (hl),l		;1f36
	halt			;1f37
	ld a,(hl)		;1f38
	ld a,l			;1f39
	ld a,d			;1f3a
	ld a,c			;1f3b
	ld a,(hl)		;1f3c
	ld a,l			;1f3d
	ld a,h			;1f3e
	ld a,e			;1f3f
	add a,e			;1f40
	add a,h			;1f41
	ld a,a			;1f42
	add a,b			;1f43
	add a,e			;1f44
	add a,h			;1f45
	add a,c			;1f46
	add a,b			;1f47
	add a,e			;1f48
	add a,h			;1f49
	add a,d			;1f4a
	add a,b			;1f4b
	adc a,d			;1f4c
	adc a,c			;1f4d
	add a,(hl)		;1f4e
	adc a,b			;1f4f
	adc a,d			;1f50
	adc a,c			;1f51
	add a,(hl)		;1f52
	add a,a			;1f53
	adc a,d			;1f54
	adc a,c			;1f55
	add a,(hl)		;1f56
	add a,l			;1f57
	ld h,a			;1f58
	ld l,b			;1f59
	ld l,e			;1f5a
	ld l,h			;1f5b
	ld l,c			;1f5c
	ld l,b			;1f5d
	ld l,e			;1f5e
	ld l,h			;1f5f
	ld l,d			;1f60
	ld l,b			;1f61
	ld l,e			;1f62
	ld l,h			;1f63
	ld l,(hl)		;1f64
	ld (hl),b		;1f65
	ld (hl),d		;1f66
	ld (hl),c		;1f67
	ld l,(hl)		;1f68
	ld l,a			;1f69
	ld (hl),d		;1f6a
	ld (hl),c		;1f6b
	ld l,(hl)		;1f6c
	ld l,l			;1f6d
	ld (hl),d		;1f6e
	ld (hl),c		;1f6f
	ld l,e			;1f70
	ld l,h			;1f71
	ld h,a			;1f72
	ld l,b			;1f73
	ld l,e			;1f74
	ld l,h			;1f75
	ld l,c			;1f76
	ld l,b			;1f77
	ld l,e			;1f78
	ld l,h			;1f79
	ld l,d			;1f7a
	ld l,b			;1f7b
	ld (hl),d		;1f7c
	ld (hl),c		;1f7d
	ld l,(hl)		;1f7e
	ld (hl),b		;1f7f
	ld (hl),d		;1f80
	ld (hl),c		;1f81
	ld l,(hl)		;1f82
	ld l,a			;1f83
	ld (hl),d		;1f84
	ld (hl),c		;1f85
	ld l,(hl)		;1f86
	ld l,l			;1f87
	ld a,a			;1f88
	add a,b			;1f89
	add a,e			;1f8a
	add a,h			;1f8b
	add a,c			;1f8c
	add a,d			;1f8d
	add a,e			;1f8e
	add a,h			;1f8f
	add a,(hl)		;1f90
	add a,l			;1f91
	adc a,d			;1f92
	adc a,c			;1f93
	adc a,b			;1f94
	add a,a			;1f95
	adc a,d			;1f96
	adc a,c			;1f97
	ld (hl),e		;1f98
	ld (hl),h		;1f99
	ld (hl),a		;1f9a
	ld a,b			;1f9b
	ld (hl),l		;1f9c
	halt			;1f9d
	ld (hl),a		;1f9e
	ld a,b			;1f9f
	ld a,d			;1fa0
	ld a,c			;1fa1
	ld a,(hl)		;1fa2
	ld a,l			;1fa3
	ld a,h			;1fa4
	ld a,e			;1fa5
	ld a,(hl)		;1fa6
	ld a,l			;1fa7
	add a,e			;1fa8
	add a,h			;1fa9
	ld a,a			;1faa
	add a,b			;1fab
	add a,e			;1fac
	add a,h			;1fad
	add a,c			;1fae
	add a,d			;1faf
	adc a,d			;1fb0
	adc a,c			;1fb1
	add a,(hl)		;1fb2
	add a,l			;1fb3
	adc a,d			;1fb4
	adc a,c			;1fb5
	adc a,b			;1fb6
	add a,a			;1fb7
	ld (hl),a		;1fb8
	ld a,b			;1fb9
	ld (hl),e		;1fba
	ld (hl),h		;1fbb
	ld (hl),a		;1fbc
	ld a,b			;1fbd
	ld (hl),l		;1fbe
	ld (hl),h		;1fbf
	ld (hl),a		;1fc0
	ld a,b			;1fc1
	halt			;1fc2
	ld (hl),h		;1fc3
	ld a,(hl)		;1fc4
	ld a,l			;1fc5
	ld a,d			;1fc6
	ld a,h			;1fc7
	ld a,(hl)		;1fc8
	ld a,l			;1fc9
	ld a,d			;1fca
	ld a,e			;1fcb
	ld a,(hl)		;1fcc
	ld a,l			;1fcd
	ld a,d			;1fce
	ld a,c			;1fcf
	and h			;1fd0
	and l			;1fd1
	and (hl)		;1fd2
	and a			;1fd3
	xor d			;1fd4
	xor e			;1fd5
	xor b			;1fd6
	xor c			;1fd7
	ld (hl),b		;1fd8
	ld (hl),c		;1fd9
	adc a,(hl)		;1fda
	adc a,a			;1fdb
	ld a,a			;1fdc
	add a,b			;1fdd
	add a,e			;1fde
	add a,h			;1fdf
	add a,c			;1fe0
	add a,b			;1fe1
	add a,e			;1fe2
	add a,h			;1fe3
	add a,d			;1fe4
	add a,b			;1fe5
	add a,e			;1fe6
	add a,h			;1fe7
	add a,(hl)		;1fe8
	adc a,b			;1fe9
	adc a,d			;1fea
	adc a,c			;1feb
	add a,(hl)		;1fec
	add a,a			;1fed
	adc a,d			;1fee
	adc a,c			;1fef
	add a,(hl)		;1ff0
	add a,l			;1ff1
	adc a,d			;1ff2
	adc a,c			;1ff3
	ld b,000h		;1ff4
	add a,e			;1ff6
	ld bc,l011fh		;1ff7
	dec bc			;1ffa
	nop			;1ffb
	add a,a			;1ffc
	ld bc,0f00eh		;1ffd
