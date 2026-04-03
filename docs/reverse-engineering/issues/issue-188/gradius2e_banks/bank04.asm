; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x0000 -o docs/reverse-engineering/issues/issue-188/gradius2e_banks/bank04.asm /tmp/gradius2e_bank04.bin

	org 00000h

l0000h:
	add a,b			;0000
l0001h:
	ld h,b			;0001
	and b			;0002
	ld h,b			;0003
	ret nz			;0004
	ld h,b			;0005
	ret po			;0006
	ld h,b			;0007
	nop			;0008
	ld h,c			;0009
	jr nz,l006dh		;000a
	ld b,b			;000c
	ld h,c			;000d
	ld h,b			;000e
	ld h,c			;000f
l0010h:
	add a,b			;0010
	ld h,c			;0011
l0012h:
	and b			;0012
	ld h,c			;0013
	ret nz			;0014
	ld h,c			;0015
	ret po			;0016
	ld h,c			;0017
	nop			;0018
l0019h:
	ld h,d			;0019
	jr nz,l007eh		;001a
	ld b,b			;001c
	ld h,d			;001d
	ld b,b			;001e
	ld h,d			;001f
	ld b,b			;0020
	ld h,d			;0021
	ld h,b			;0022
	ld h,d			;0023
	add a,b			;0024
	ld h,d			;0025
	and b			;0026
	ld h,d			;0027
l0028h:
	ret nz			;0028
	ld h,d			;0029
	ret po			;002a
	ld h,d			;002b
	nop			;002c
	ld h,e			;002d
	jr nz,l0093h		;002e
	ld b,b			;0030
	ld h,e			;0031
	ld h,b			;0032
	ld h,e			;0033
	add a,b			;0034
	ld h,e			;0035
	add a,b			;0036
	ld h,e			;0037
	add a,b			;0038
	ld h,e			;0039
	add a,b			;003a
	ld h,e			;003b
	and b			;003c
	ld h,e			;003d
	ret nz			;003e
	ld h,e			;003f
	ret nz			;0040
	ld h,e			;0041
	ret po			;0042
	ld h,e			;0043
	ret po			;0044
	ld h,e			;0045
	nop			;0046
	ld h,h			;0047
	nop			;0048
	ld h,h			;0049
	nop			;004a
	ld h,h			;004b
	nop			;004c
	ld h,h			;004d
	jr nz,l00b4h		;004e
l0050h:
	jr nz,l00b6h		;0050
	ld b,b			;0052
	ld h,h			;0053
	ld h,b			;0054
	ld h,h			;0055
	ld h,b			;0056
	ld h,h			;0057
	ld h,b			;0058
	ld h,h			;0059
	ld h,b			;005a
	ld h,h			;005b
	ld h,b			;005c
	ld h,h			;005d
	ld h,b			;005e
	ld h,h			;005f
	add a,b			;0060
	ld h,h			;0061
	add a,b			;0062
	ld h,h			;0063
	add a,b			;0064
	ld h,h			;0065
	add a,b			;0066
	ld h,h			;0067
	add a,b			;0068
	ld h,h			;0069
	add a,b			;006a
	ld h,h			;006b
	add a,b			;006c
l006dh:
	ld h,h			;006d
	add a,b			;006e
	ld h,h			;006f
	add a,b			;0070
	ld h,h			;0071
	add a,b			;0072
	ld h,h			;0073
	add a,b			;0074
	ld h,h			;0075
	add a,b			;0076
	ld h,h			;0077
	add a,b			;0078
	ld h,h			;0079
	add a,b			;007a
	ld h,h			;007b
	add a,b			;007c
	ld h,h			;007d
l007eh:
	add a,b			;007e
	ld h,h			;007f
l0080h:
	ld a,a			;0080
	ld a,a			;0081
	ld a,a			;0082
	ld a,a			;0083
	ld a,a			;0084
	ld a,a			;0085
	ld a,a			;0086
	ld a,a			;0087
	ld a,a			;0088
	ld a,a			;0089
	ld a,a			;008a
	ld a,a			;008b
	ld a,a			;008c
	ld a,a			;008d
	ld a,a			;008e
	ld a,a			;008f
	add a,b			;0090
	add a,b			;0091
	add a,b			;0092
l0093h:
	add a,b			;0093
	add a,b			;0094
	add a,b			;0095
	add a,b			;0096
	add a,b			;0097
	add a,b			;0098
	add a,b			;0099
	add a,b			;009a
	add a,b			;009b
	add a,b			;009c
	add a,b			;009d
	add a,b			;009e
	nop			;009f
	ld a,a			;00a0
	ld a,a			;00a1
	ld a,a			;00a2
	ld a,a			;00a3
	ld a,a			;00a4
	ld a,a			;00a5
sub_00a6h:
	ld a,a			;00a6
	ld a,a			;00a7
	add a,b			;00a8
	add a,b			;00a9
	add a,b			;00aa
	add a,b			;00ab
	add a,b			;00ac
	add a,b			;00ad
	add a,b			;00ae
	add a,b			;00af
	ld a,a			;00b0
	ld a,a			;00b1
	ld a,a			;00b2
l00b3h:
	ld a,a			;00b3
l00b4h:
	ld a,a			;00b4
	ld a,a			;00b5
l00b6h:
	ld a,a			;00b6
	ld a,a			;00b7
	add a,b			;00b8
	add a,b			;00b9
	add a,b			;00ba
	add a,b			;00bb
	add a,b			;00bc
	add a,b			;00bd
	add a,b			;00be
	add a,b			;00bf
	nop			;00c0
	ret m			;00c1
l00c2h:
	ret p			;00c2
	ret pe			;00c3
	ret po			;00c4
	ret c			;00c5
	ret nc			;00c6
	ret z			;00c7
	ret nz			;00c8
	cp b			;00c9
	or b			;00ca
	xor b			;00cb
	and b			;00cc
	sbc a,b			;00cd
	sub b			;00ce
	adc a,b			;00cf
	add a,b			;00d0
	ld a,b			;00d1
	ld (hl),b		;00d2
	ld l,b			;00d3
	ld h,b			;00d4
	ld e,b			;00d5
	ld d,b			;00d6
	ld c,b			;00d7
	ld b,b			;00d8
	jr c,l010bh		;00d9
	jr z,l00fdh		;00db
	jr l00efh		;00dd
	ex af,af'		;00df
	nop			;00e0
	ret p			;00e1
	ret po			;00e2
	ret nc			;00e3
l00e4h:
	ret nz			;00e4
	or b			;00e5
	and b			;00e6
	sub b			;00e7
	add a,b			;00e8
	ld (hl),b		;00e9
	ld h,b			;00ea
	ld d,b			;00eb
	ld b,b			;00ec
	jr nc,l010fh		;00ed
l00efh:
	djnz l00f1h		;00ef
l00f1h:
	ret p			;00f1
	ret po			;00f2
	ret nc			;00f3
	ret nz			;00f4
	or b			;00f5
	and b			;00f6
	sub b			;00f7
	add a,b			;00f8
	ld (hl),b		;00f9
	ld h,b			;00fa
	ld d,b			;00fb
	ld b,b			;00fc
l00fdh:
	jr nc,l011fh		;00fd
	djnz l0101h		;00ff
l0101h:
	ld c,(hl)		;0101
	ld h,d			;0102
	ld l,l			;0103
	ld (hl),l		;0104
	ld a,d			;0105
	ld a,l			;0106
	ld a,(hl)		;0107
	ld a,a			;0108
	ld a,(hl)		;0109
	ld a,l			;010a
l010bh:
	ld a,d			;010b
	ld (hl),l		;010c
	ld l,l			;010d
	ld h,d			;010e
l010fh:
	ld c,(hl)		;010f
l0110h:
	nop			;0110
	or c			;0111
	sbc a,l			;0112
	sub d			;0113
	adc a,d			;0114
	add a,l			;0115
	add a,d			;0116
	add a,c			;0117
	add a,b			;0118
	add a,c			;0119
	add a,d			;011a
	add a,l			;011b
	adc a,d			;011c
	sub d			;011d
	sbc a,l			;011e
l011fh:
	or c			;011f
	nop			;0120
	add hl,de		;0121
	ld sp,05a47h		;0122
	ld l,d			;0125
	ld (hl),l		;0126
	ld a,l			;0127
	ld a,a			;0128
	ld a,l			;0129
	ld (hl),l		;012a
	ld l,d			;012b
	ld e,d			;012c
	ld b,a			;012d
	ld sp,l0019h		;012e
	rst 20h			;0131
	rst 8			;0132
	cp c			;0133
	and (hl)		;0134
	sub (hl)		;0135
	adc a,e			;0136
	add a,e			;0137
	add a,b			;0138
	add a,e			;0139
	adc a,e			;013a
	sub (hl)		;013b
	and (hl)		;013c
	cp c			;013d
	rst 8			;013e
	rst 20h			;013f
	nop			;0140
	ret p			;0141
	ret po			;0142
	ret nc			;0143
	ret nz			;0144
	or b			;0145
	and b			;0146
	sub b			;0147
	add a,b			;0148
	sub b			;0149
	and b			;014a
	or b			;014b
	ret nz			;014c
	ret nc			;014d
	ret po			;014e
	ret p			;014f
	nop			;0150
	djnz l0173h		;0151
	jr nc,l0195h		;0153
	ld d,b			;0155
	ld h,b			;0156
	ld (hl),b		;0157
	ld a,a			;0158
	ld (hl),b		;0159
	ld h,b			;015a
	ld d,b			;015b
	ld b,b			;015c
	jr nc,l017fh		;015d
	djnz l0161h		;015f
l0161h:
	ret po			;0161
	ret nz			;0162
	and b			;0163
	add a,b			;0164
	and b			;0165
	ret nz			;0166
	ret po			;0167
	nop			;0168
	jr nz,l01abh		;0169
	ld h,b			;016b
	ld a,a			;016c
	ld h,b			;016d
	ld b,b			;016e
	jr nz,l0171h		;016f
l0171h:
	ret po			;0171
	ret nz			;0172
l0173h:
	and b			;0173
	add a,b			;0174
	and b			;0175
	ret nz			;0176
	ret po			;0177
	nop			;0178
	jr nz,l01bbh		;0179
	ld h,b			;017b
	ld a,a			;017c
	ld h,b			;017d
	ld b,b			;017e
l017fh:
	jr nz,l0181h		;017f
l0181h:
	add hl,de		;0181
	ld sp,05a47h		;0182
	ld l,d			;0185
	ld (hl),l		;0186
	ld a,l			;0187
	ld a,a			;0188
	ld a,l			;0189
	ld (hl),l		;018a
	ld l,d			;018b
	ld e,d			;018c
	ld b,a			;018d
	ld sp,l0019h		;018e
	ret p			;0191
	ret po			;0192
	ret nc			;0193
	ret nz			;0194
l0195h:
	or b			;0195
	and b			;0196
	sub b			;0197
	add a,b			;0198
	sub b			;0199
	and b			;019a
	or b			;019b
	ret nz			;019c
	ret nc			;019d
	ret po			;019e
	ret p			;019f
	nop			;01a0
	add hl,de		;01a1
	ld sp,05a47h		;01a2
	ld l,d			;01a5
	ld (hl),l		;01a6
	ld a,l			;01a7
	ld a,a			;01a8
	ld a,l			;01a9
	ld (hl),l		;01aa
l01abh:
	ld l,d			;01ab
	ld e,d			;01ac
	ld b,a			;01ad
	ld sp,l0019h		;01ae
	ret po			;01b1
	ret nz			;01b2
	and b			;01b3
	add a,b			;01b4
	and b			;01b5
	ret nz			;01b6
	ret po			;01b7
	nop			;01b8
	jr nz,l01fbh		;01b9
l01bbh:
	ld h,b			;01bb
	ld a,a			;01bc
	ld h,b			;01bd
	ld b,b			;01be
	jr nz,l01c1h		;01bf
l01c1h:
	add hl,de		;01c1
	ld sp,05a47h		;01c2
	ld l,d			;01c5
	ld (hl),l		;01c6
	ld a,l			;01c7
	ld a,a			;01c8
	ld a,l			;01c9
	ld (hl),l		;01ca
	ld l,d			;01cb
	ld e,d			;01cc
	ld b,a			;01cd
	ld sp,08019h		;01ce
	sub b			;01d1
	and b			;01d2
	or b			;01d3
	ret nz			;01d4
	ret nc			;01d5
	ret po			;01d6
	ret p			;01d7
	nop			;01d8
	djnz l01fbh		;01d9
	jr nc,l021dh		;01db
	ld d,b			;01dd
	ld h,b			;01de
	ld (hl),b		;01df
l01e0h:
	nop			;01e0
	add hl,de		;01e1
l01e2h:
	ld sp,05a47h		;01e2
	ld l,d			;01e5
	ld (hl),l		;01e6
	ld a,l			;01e7
	ld a,a			;01e8
	ld a,l			;01e9
	ld (hl),l		;01ea
	ld l,d			;01eb
	ld e,d			;01ec
	ld b,a			;01ed
	ld sp,08019h		;01ee
	and b			;01f1
	ret nz			;01f2
	ret po			;01f3
	nop			;01f4
	jr nz,$+66		;01f5
	ld h,b			;01f7
	add a,b			;01f8
	and b			;01f9
	ret nz			;01fa
l01fbh:
	ret po			;01fb
	nop			;01fc
	jr nz,l023fh		;01fd
	ld h,b			;01ff
	ld bc,0402ah		;0200
	ld d,b			;0203
	ld e,h			;0204
	ld l,b			;0205
	ld (hl),b		;0206
	ld a,b			;0207
	ld a,a			;0208
	ld a,b			;0209
	ld (hl),b		;020a
	ld l,b			;020b
	ld e,h			;020c
	ld d,b			;020d
	ld b,b			;020e
	ld hl,(0d6ffh)		;020f
	ret nz			;0212
	or b			;0213
	and h			;0214
	sbc a,b			;0215
	sub b			;0216
	adc a,b			;0217
	add a,c			;0218
	adc a,b			;0219
	sub b			;021a
	sbc a,b			;021b
	and h			;021c
l021dh:
	or b			;021d
	ret nz			;021e
	sub 000h		;021f
	ld b,b			;0221
	ld a,a			;0222
	ld b,b			;0223
	ld bc,081c0h		;0224
	ret nz			;0227
	ld bc,07f40h		;0228
	ld b,b			;022b
	ld bc,001c0h		;022c
	ld b,b			;022f
	ld bc,l01e0h		;0230
	jr nz,l0236h		;0233
	ret p			;0235
l0236h:
	ld bc,l0110h		;0236
	rst 38h			;0239
	rst 38h			;023a
	rst 38h			;023b
	rst 38h			;023c
	ld b,b			;023d
	ld b,b			;023e
l023fh:
	ld b,b			;023f
	nop			;0240
	ld b,b			;0241
	ld a,a			;0242
	ld b,b			;0243
	ld bc,02010h		;0244
	dec l			;0247
	scf			;0248
	ld b,h			;0249
	ld c,(hl)		;024a
	ld e,c			;024b
	ld h,e			;024c
	ld l,h			;024d
	ld (hl),e		;024e
	ld a,b			;024f
	ld a,h			;0250
	ld a,a			;0251
	ld a,h			;0252
	ld a,b			;0253
	ld (hl),e		;0254
	ld l,h			;0255
	ld e,c			;0256
	ld c,(hl)		;0257
	ld b,h			;0258
	scf			;0259
	dec l			;025a
	jr nz,l026dh		;025b
	inc bc			;025d
	ld (bc),a		;025e
	ld bc,04000h		;025f
	ld a,a			;0262
	ld b,b			;0263
	djnz $+3		;0264
	jp pe,0c3d6h		;0266
	cp c			;0269
	xor a			;026a
	and h			;026b
	sbc a,h			;026c
l026dh:
	sub l			;026d
	adc a,a			;026e
	adc a,d			;026f
	add a,(hl)		;0270
	add a,e			;0271
	add a,c			;0272
	add a,e			;0273
	add a,(hl)		;0274
	adc a,d			;0275
	adc a,a			;0276
	sub l			;0277
	sbc a,h			;0278
	and h			;0279
	xor a			;027a
	cp c			;027b
	jp 0ead6h		;027c
	rst 38h			;027f
l0280h:
	nop			;0280
	ld b,b			;0281
l0282h:
	ld a,a			;0282
	ld b,b			;0283
	nop			;0284
	ret nz			;0285
	rst 38h			;0286
	ret nz			;0287
	dec b			;0288
	ex de,hl		;0289
	sub 0c3h		;028a
	cp c			;028c
	xor a			;028d
	and h			;028e
	sbc a,h			;028f
	sub l			;0290
	adc a,a			;0291
	adc a,c			;0292
	add a,h			;0293
	add a,c			;0294
	add a,h			;0295
	adc a,c			;0296
	adc a,a			;0297
	sub l			;0298
	sbc a,h			;0299
	and h			;029a
	xor a			;029b
	cp c			;029c
	jp 0ead6h		;029d
	nop			;02a0
	ret p			;02a1
	ret po			;02a2
	ret nc			;02a3
	ret nz			;02a4
	or b			;02a5
	and b			;02a6
	sub b			;02a7
	add a,b			;02a8
	add a,b			;02a9
	add a,b			;02aa
	add a,b			;02ab
	add a,b			;02ac
	add a,b			;02ad
	add a,b			;02ae
	add a,b			;02af
	add a,b			;02b0
	add a,b			;02b1
	add a,b			;02b2
	add a,b			;02b3
l02b4h:
	add a,b			;02b4
	add a,b			;02b5
	add a,b			;02b6
	add a,b			;02b7
	ld a,a			;02b8
	ld (hl),b		;02b9
	ld h,b			;02ba
	ld d,b			;02bb
	ld b,b			;02bc
	jr nc,l02dfh		;02bd
	djnz l02c1h		;02bf
l02c1h:
	jr nc,$+82		;02c1
	ld h,b			;02c3
	ld (hl),b		;02c4
	ld h,b			;02c5
	ld d,b			;02c6
	jr nc,l02c9h		;02c7
l02c9h:
	ret nc			;02c9
	or b			;02ca
	and b			;02cb
	sub b			;02cc
	and b			;02cd
	or b			;02ce
	ret nc			;02cf
	nop			;02d0
	ld b,b			;02d1
	ld h,b			;02d2
	ld (hl),b		;02d3
	ld h,b			;02d4
	ld b,b			;02d5
	nop			;02d6
	ret nz			;02d7
	and b			;02d8
	sub b			;02d9
	and b			;02da
	ret nz			;02db
	nop			;02dc
l02ddh:
	ld (hl),b		;02dd
	nop			;02de
l02dfh:
	sub b			;02df
	jr nc,l0332h		;02e0
	ld d,b			;02e2
	jr nc,l02e5h		;02e3
l02e5h:
	nop			;02e5
	djnz l0328h		;02e6
	ld h,b			;02e8
	ld (hl),b		;02e9
	ld h,b			;02ea
	jr nc,l02ddh		;02eb
	ret po			;02ed
	ret po			;02ee
	nop			;02ef
	jr nz,l0312h		;02f0
	djnz l02b4h		;02f2
	and b			;02f4
	sub b			;02f5
	and b			;02f6
	ret nz			;02f7
	nop			;02f8
	nop			;02f9
	ret nc			;02fa
	or b			;02fb
	or b			;02fc
	ret nc			;02fd
l02feh:
	nop			;02fe
	nop			;02ff
	and b			;0300
	sub b			;0301
	sub b			;0302
	and b			;0303
	and b			;0304
	or b			;0305
	or b			;0306
	or b			;0307
	ret nz			;0308
	ret nz			;0309
	ret nc			;030a
	ret nc			;030b
	ret po			;030c
	ret po			;030d
	ret p			;030e
	ret p			;030f
sub_0310h:
	nop			;0310
	nop			;0311
l0312h:
	djnz l0324h		;0312
	jr nz,l0336h		;0314
	jr nc,l0348h		;0316
	ld b,b			;0318
	ld b,b			;0319
	ld d,b			;031a
	ld d,b			;031b
	ld h,b			;031c
	ld h,b			;031d
	ld h,b			;031e
	ld d,b			;031f
	nop			;0320
	ld a,a			;0321
	nop			;0322
	add a,b			;0323
l0324h:
	and b			;0324
	ret nz			;0325
	ret c			;0326
	ret p			;0327
l0328h:
	ex af,af'		;0328
	jr nz,l035bh		;0329
	ld b,b			;032b
	ld d,b			;032c
	ld h,b			;032d
	ld (hl),b		;032e
	ld a,b			;032f
	ld a,h			;0330
	ld a,a			;0331
l0332h:
	ld a,h			;0332
	ld a,b			;0333
	ld (hl),b		;0334
	ld h,b			;0335
l0336h:
	ld d,b			;0336
	ld b,b			;0337
	jr nc,l035ah		;0338
	ex af,af'		;033a
	ret p			;033b
	ret c			;033c
	ret nz			;033d
	and b			;033e
	add a,b			;033f
	ld a,a			;0340
	add a,b			;0341
	ld a,a			;0342
	add a,b			;0343
	ld a,a			;0344
	add a,b			;0345
	ld a,a			;0346
	add a,b			;0347
l0348h:
	ld a,a			;0348
	add a,b			;0349
	ld a,a			;034a
	add a,b			;034b
	ld a,a			;034c
	add a,b			;034d
	ld a,a			;034e
	add a,b			;034f
	ld a,a			;0350
	add a,b			;0351
	ld a,a			;0352
	add a,b			;0353
	ld a,a			;0354
	add a,b			;0355
	ld a,a			;0356
	add a,b			;0357
	ld a,a			;0358
	add a,b			;0359
l035ah:
	ld a,a			;035a
l035bh:
	add a,b			;035b
	ld a,a			;035c
	add a,b			;035d
	ld a,a			;035e
	add a,b			;035f
	ld a,a			;0360
	add a,b			;0361
	ld a,a			;0362
	add a,b			;0363
	ld a,a			;0364
	add a,b			;0365
	ld a,a			;0366
	add a,b			;0367
	nop			;0368
	nop			;0369
	nop			;036a
	nop			;036b
	nop			;036c
	nop			;036d
	nop			;036e
	nop			;036f
	nop			;0370
	nop			;0371
	nop			;0372
	nop			;0373
	nop			;0374
	nop			;0375
	nop			;0376
	nop			;0377
	ld a,a			;0378
	add a,b			;0379
	ld a,a			;037a
l037bh:
	add a,b			;037b
	ld a,a			;037c
	add a,b			;037d
	ld a,a			;037e
	add a,b			;037f
	nop			;0380
	ld (hl),b		;0381
	ld d,b			;0382
	jr nz,l03d5h		;0383
	ld (hl),b		;0385
	jr nc,l0388h		;0386
l0388h:
	ld d,b			;0388
	ld a,a			;0389
	ld h,b			;038a
	djnz l03bdh		;038b
	ld b,b			;038d
	nop			;038e
	or b			;038f
	djnz l03f2h		;0390
	nop			;0392
	ret po			;0393
	ret p			;0394
	nop			;0395
	or b			;0396
	sub b			;0397
	ret nz			;0398
	djnz l037bh		;0399
	and b			;039b
	ret nz			;039c
	ret p			;039d
	ret nz			;039e
	and b			;039f
	add a,b			;03a0
	adc a,b			;03a1
	sub b			;03a2
	sbc a,b			;03a3
	and b			;03a4
	or b			;03a5
	or b			;03a6
	cp b			;03a7
	ret nz			;03a8
	ret z			;03a9
	ret nc			;03aa
	ret c			;03ab
	ret po			;03ac
	ret pe			;03ad
	ret p			;03ae
	ret m			;03af
	nop			;03b0
	ex af,af'		;03b1
	djnz l03cch		;03b2
	jr nz,l03deh		;03b4
	jr nc,l03f0h		;03b6
	ld b,b			;03b8
	ld c,b			;03b9
	ld d,b			;03ba
	ld e,b			;03bb
	ld h,b			;03bc
l03bdh:
	ld l,b			;03bd
	ld (hl),b		;03be
	ld a,b			;03bf
	nop			;03c0
	nop			;03c1
	nop			;03c2
	nop			;03c3
	nop			;03c4
	ld a,b			;03c5
	ld a,b			;03c6
	nop			;03c7
	nop			;03c8
	add a,b			;03c9
	add a,b			;03ca
	add a,b			;03cb
l03cch:
	nop			;03cc
	nop			;03cd
	nop			;03ce
	nop			;03cf
	ld a,b			;03d0
	ld a,b			;03d1
	ld a,b			;03d2
	nop			;03d3
	add a,b			;03d4
l03d5h:
	add a,b			;03d5
	nop			;03d6
	nop			;03d7
	nop			;03d8
	nop			;03d9
	ld a,b			;03da
	ld a,b			;03db
	nop			;03dc
	nop			;03dd
l03deh:
	add a,b			;03de
	add a,b			;03df
	ld a,b			;03e0
	ld a,b			;03e1
	ld a,b			;03e2
	ld a,b			;03e3
l03e4h:
	ld a,b			;03e4
	ld a,b			;03e5
	ld a,b			;03e6
	ld a,b			;03e7
	add a,b			;03e8
	add a,b			;03e9
	add a,b			;03ea
	add a,b			;03eb
	add a,b			;03ec
	add a,b			;03ed
	add a,b			;03ee
	add a,b			;03ef
l03f0h:
	add a,b			;03f0
	add a,b			;03f1
l03f2h:
	add a,b			;03f2
	add a,b			;03f3
	add a,b			;03f4
	add a,b			;03f5
	add a,b			;03f6
	add a,b			;03f7
	add a,b			;03f8
	add a,b			;03f9
	add a,b			;03fa
	add a,b			;03fb
	add a,b			;03fc
	add a,b			;03fd
	add a,b			;03fe
	add a,b			;03ff
	nop			;0400
	nop			;0401
	nop			;0402
	add a,b			;0403
	nop			;0404
	ld (hl),b		;0405
	ld (hl),b		;0406
	ld (hl),b		;0407
	nop			;0408
	nop			;0409
	nop			;040a
	add a,b			;040b
	nop			;040c
	nop			;040d
	nop			;040e
	add a,b			;040f
	add a,b			;0410
	add a,b			;0411
	add a,b			;0412
	nop			;0413
	add a,b			;0414
	nop			;0415
	nop			;0416
	nop			;0417
	nop			;0418
	add a,b			;0419
	add a,b			;041a
	add a,b			;041b
	nop			;041c
	add a,b			;041d
	add a,b			;041e
	add a,b			;041f
	ld (hl),b		;0420
	ld (hl),b		;0421
	ld (hl),b		;0422
	ld (hl),b		;0423
	ld (hl),b		;0424
	ld (hl),b		;0425
	ld (hl),b		;0426
	ld (hl),b		;0427
	add a,b			;0428
	add a,b			;0429
	add a,b			;042a
	add a,b			;042b
	add a,b			;042c
	add a,b			;042d
	add a,b			;042e
	add a,b			;042f
	ld (hl),b		;0430
	ld (hl),b		;0431
	ld (hl),b		;0432
	add a,b			;0433
	add a,b			;0434
	add a,b			;0435
	ld (hl),b		;0436
	ld (hl),b		;0437
	ld (hl),b		;0438
	ld (hl),b		;0439
	add a,b			;043a
	add a,b			;043b
	add a,b			;043c
	add a,b			;043d
	add a,b			;043e
	add a,b			;043f
	and b			;0440
	sub b			;0441
	sub b			;0442
	sub b			;0443
	and b			;0444
	and b			;0445
	or b			;0446
	or b			;0447
	ret nz			;0448
	ret nz			;0449
	ret nc			;044a
	ret nc			;044b
	ret po			;044c
	ret po			;044d
	ret p			;044e
	ret p			;044f
	nop			;0450
	nop			;0451
	djnz l0464h		;0452
	jr nz,l0476h		;0454
	jr nc,l0488h		;0456
	ld b,b			;0458
	ld b,b			;0459
	ld d,b			;045a
	ld d,b			;045b
	ld h,b			;045c
	ld h,b			;045d
	ld h,b			;045e
	ld d,b			;045f
	ret m			;0460
	ret p			;0461
	ret pe			;0462
	ret po			;0463
l0464h:
	ret c			;0464
	ret nc			;0465
	ret z			;0466
	ret nz			;0467
	cp b			;0468
	or b			;0469
	xor b			;046a
	and b			;046b
	sbc a,b			;046c
	sub b			;046d
	adc a,b			;046e
	add a,b			;046f
	ld a,b			;0470
	ld (hl),b		;0471
	ld l,b			;0472
	ld h,b			;0473
	ld e,b			;0474
	ld d,b			;0475
l0476h:
	ld c,b			;0476
	ld b,b			;0477
	jr c,$+50		;0478
	jr z,$+34		;047a
	jr $+18			;047c
	ex af,af'		;047e
	nop			;047f
	ld c,a			;0480
	cp 0f0h			;0481
	jp z,0658dh		;0483
	cp 0f1h			;0486
l0488h:
	jp z,06594h		;0488
	cp 0f2h			;048b
	jp z,065a1h		;048d
	cp 0f3h			;0490
	call z,065deh		;0492
	ld hl,0e078h		;0495
	ld a,c			;0498
	cp 005h			;0499
	jr nz,l04a0h		;049b
	ld a,(hl)		;049d
	cp c			;049e
	ret z			;049f
l04a0h:
	ld a,c			;04a0
	cp 012h			;04a1
	jr nz,l04a8h		;04a3
	ld a,(hl)		;04a5
	cp c			;04a6
	ret z			;04a7
l04a8h:
	ld a,c			;04a8
	cp 014h			;04a9
	jr nz,l04b0h		;04ab
	ld a,(hl)		;04ad
	cp c			;04ae
	ret z			;04af
l04b0h:
	ld hl,0e191h		;04b0
	ld (hl),c		;04b3
	ld hl,06612h		;04b4
	ld a,c			;04b7
	add a,c			;04b8
	ld e,a			;04b9
	ld d,000h		;04ba
	add hl,de		;04bc
	ld e,(hl)		;04bd
	inc hl			;04be
	ld d,(hl)		;04bf
	ex de,hl		;04c0
	ld de,0e192h		;04c1
	ld bc,l0012h		;04c4
	ldir			;04c7
	ld ix,0e194h		;04c9
	ld hl,0e192h		;04cd
	bit 7,(hl)		;04d0
	jr z,l04e0h		;04d2
	inc hl			;04d4
	ld a,(hl)		;04d5
	ld hl,0e001h		;04d6
	call 0655dh		;04d9
	inc ix			;04dc
	inc ix			;04de
l04e0h:
	ld hl,0e192h		;04e0
	bit 6,(hl)		;04e3
	jr z,l04f3h		;04e5
	inc hl			;04e7
	ld a,(hl)		;04e8
	ld hl,0e029h		;04e9
	call 0655dh		;04ec
	inc ix			;04ef
	inc ix			;04f1
l04f3h:
	ld hl,0e192h		;04f3
	bit 5,(hl)		;04f6
l04f8h:
	jr z,l0506h		;04f8
	inc hl			;04fa
	ld a,(hl)		;04fb
	ld hl,0e051h		;04fc
	call 0655dh		;04ff
	inc ix			;0502
	inc ix			;0504
l0506h:
	ld hl,0e192h		;0506
	bit 4,(hl)		;0509
	jr z,l0519h		;050b
	inc hl			;050d
	ld a,(hl)		;050e
	ld hl,0e079h		;050f
	call 0655dh		;0512
	inc ix			;0515
	inc ix			;0517
l0519h:
	ld hl,0e192h		;0519
	bit 3,(hl)		;051c
	jr z,l052ch		;051e
	inc hl			;0520
	ld a,(hl)		;0521
	ld hl,0e0a1h		;0522
	call 0655dh		;0525
	inc ix			;0528
	inc ix			;052a
l052ch:
	ld hl,0e192h		;052c
	bit 2,(hl)		;052f
	jr z,l053fh		;0531
	inc hl			;0533
	ld a,(hl)		;0534
	ld hl,0e0c9h		;0535
	call 0655dh		;0538
	inc ix			;053b
	inc ix			;053d
l053fh:
	ld hl,0e192h		;053f
	bit 1,(hl)		;0542
	jr z,l0552h		;0544
	inc hl			;0546
	ld a,(hl)		;0547
	ld hl,0e0f1h		;0548
	call 0655dh		;054b
	inc ix			;054e
	inc ix			;0550
l0552h:
	ld hl,0e192h		;0552
	bit 0,(hl)		;0555
	ret z			;0557
	inc hl			;0558
	ld a,(hl)		;0559
	ld hl,0e119h		;055a
	ld b,(hl)		;055d
	cp b			;055e
	ret c			;055f
	ex de,hl		;0560
	ld (de),a		;0561
	dec de			;0562
	ld hl,0e191h		;0563
	ld a,(hl)		;0566
	ld (de),a		;0567
	inc de			;0568
	inc de			;0569
	ld a,(ix+000h)		;056a
	ld (de),a		;056d
	inc de			;056e
	ld a,(ix+001h)		;056f
	ld (de),a		;0572
	inc de			;0573
	ld hl,0657dh		;0574
	ld bc,l0010h		;0577
	ldir			;057a
	ret			;057c
	ld bc,l0000h		;057d
	nop			;0580
	nop			;0581
	nop			;0582
	nop			;0583
	nop			;0584
	nop			;0585
	nop			;0586
	nop			;0587
	nop			;0588
	nop			;0589
	nop			;058a
	nop			;058b
	nop			;058c
	ld hl,0e190h		;058d
	res 0,(hl)		;0590
	jr l0599h		;0592
	ld hl,0e190h		;0594
	set 0,(hl)		;0597
l0599h:
	ld hl,0e1a4h		;0599
	xor a			;059c
	ld (hl),a		;059d
	inc hl			;059e
	ld (hl),a		;059f
	ret			;05a0
	ld hl,0e190h		;05a1
	res 1,(hl)		;05a4
	bit 3,(hl)		;05a6
	jr z,l05aeh		;05a8
	res 3,(hl)		;05aa
	set 0,(hl)		;05ac
l05aeh:
	ld hl,0e140h		;05ae
	ld de,0e000h		;05b1
	call 0660eh		;05b4
	ld a,(0e1c0h)		;05b7
	ld e,a			;05ba
	ld a,03fh		;05bb
	ld (09000h),a		;05bd
	ld a,e			;05c0
	ld (0988fh),a		;05c1
	ld a,005h		;05c4
	ld (09000h),a		;05c6
	ld a,0ffh		;05c9
	ld hl,0e1aeh		;05cb
	ld (hl),a		;05ce
	inc hl			;05cf
	ld (hl),a		;05d0
	call 071aeh		;05d1
	ld hl,0e05dh		;05d4
	ld a,(hl)		;05d7
	rrca			;05d8
	rrca			;05d9
	rrca			;05da
	rrca			;05db
	ld (hl),a		;05dc
	ret			;05dd
	ld hl,0e190h		;05de
	set 1,(hl)		;05e1
	bit 0,(hl)		;05e3
	jr z,l05ebh		;05e5
	res 0,(hl)		;05e7
	set 3,(hl)		;05e9
l05ebh:
	ld hl,0e000h		;05eb
	ld de,0e140h		;05ee
	call 0660eh		;05f1
	ld a,03fh		;05f4
	ld (09000h),a		;05f6
	xor a			;05f9
	ld (0988fh),a		;05fa
	ld a,005h		;05fd
	ld (09000h),a		;05ff
	ld hl,0e05dh		;0602
	ld a,(hl)		;0605
	rlca			;0606
	rlca			;0607
	rlca			;0608
	rlca			;0609
	ld (hl),a		;060a
	ld c,00dh		;060b
	ret			;060d
	ld bc,l0050h		;060e
	ldir			;0611
	ret			;0613
	sbc a,d			;0614
sub_0615h:
	ld h,(hl)		;0615
	and b			;0616
	ld h,(hl)		;0617
	and (hl)		;0618
	ld h,(hl)		;0619
	xor h			;061a
	ld h,(hl)		;061b
	or d			;061c
	ld h,(hl)		;061d
	cp b			;061e
sub_061fh:
	ld h,(hl)		;061f
	cp (hl)			;0620
	ld h,(hl)		;0621
	call nz,0ca66h		;0622
	ld h,(hl)		;0625
	ret nc			;0626
	ld h,(hl)		;0627
	sub 066h		;0628
	call c,0e266h		;062a
	ld h,(hl)		;062d
	ret pe			;062e
	ld h,(hl)		;062f
	xor 066h		;0630
	call p,0fa66h		;0632
	ld h,(hl)		;0635
	nop			;0636
	ld h,a			;0637
	ld b,067h		;0638
	inc c			;063a
	ld h,a			;063b
	ld (de),a		;063c
	ld h,a			;063d
	jr l06a7h		;063e
	ld e,067h		;0640
	inc h			;0642
	ld h,a			;0643
	ld hl,(03067h)		;0644
	ld h,a			;0647
	ld (hl),067h		;0648
	inc a			;064a
	ld h,a			;064b
	ld b,d			;064c
	ld h,a			;064d
	ld c,b			;064e
	ld h,a			;064f
	ld c,(hl)		;0650
	ld h,a			;0651
	ld d,h			;0652
	ld h,a			;0653
	ld e,d			;0654
	ld h,a			;0655
	ld h,b			;0656
	ld h,a			;0657
	ld h,(hl)		;0658
	ld h,a			;0659
	ld l,h			;065a
	ld h,a			;065b
	ld (hl),d		;065c
	ld h,a			;065d
	ld a,b			;065e
	ld h,a			;065f
	ld a,(hl)		;0660
	ld h,a			;0661
	add a,h			;0662
	ld h,a			;0663
	adc a,d			;0664
	ld h,a			;0665
	sbc a,b			;0666
	ld h,a			;0667
	and (hl)		;0668
	ld h,a			;0669
	or h			;066a
	ld h,a			;066b
	jp nz,0d067h		;066c
	ld h,a			;066f
	sbc a,067h		;0670
	call pe,0fa67h		;0672
	ld h,a			;0675
	ex af,af'		;0676
	ld l,b			;0677
	ld d,068h		;0678
	inc h			;067a
	ld l,b			;067b
	ld (04068h),a		;067c
	ld l,b			;067f
	ld c,(hl)		;0680
	ld l,b			;0681
	ld h,b			;0682
	ld l,b			;0683
	ld (hl),d		;0684
	ld l,b			;0685
	add a,h			;0686
	ld l,b			;0687
	sub (hl)		;0688
	ld l,b			;0689
	xor b			;068a
	ld l,b			;068b
	cp d			;068c
	ld l,b			;068d
	call z,0de68h		;068e
	ld l,b			;0691
	ret p			;0692
	ld l,b			;0693
	cp 068h			;0694
	djnz l0701h		;0696
	ld (09069h),hl		;0698
	ld (bc),a		;069b
	call c,0e872h		;069c
	ld (hl),d		;069f
	sub b			;06a0
	inc bc			;06a1
	ld de,l1573h		;06a2
	ld (hl),e		;06a5
	sub b			;06a6
l06a7h:
	inc bc			;06a7
	ld b,l			;06a8
	ld (hl),e		;06a9
	ld l,d			;06aa
	ld (hl),e		;06ab
	sub b			;06ac
	ld a,(bc)		;06ad
	xor a			;06ae
	ld (hl),e		;06af
	or (hl)			;06b0
	ld (hl),e		;06b1
	sub b			;06b2
	ex af,af'		;06b3
	ret po			;06b4
	ld (hl),e		;06b5
	ret m			;06b6
	ld (hl),e		;06b7
	sub b			;06b8
	dec c			;06b9
	jr nz,$+118		;06ba
	inc h			;06bc
	ld (hl),h		;06bd
	sub b			;06be
	ex af,af'		;06bf
	ld h,e			;06c0
	ld (hl),h		;06c1
	ld h,a			;06c2
	ld (hl),h		;06c3
	sub b			;06c4
	ex af,af'		;06c5
	and h			;06c6
	ld (hl),h		;06c7
	bit 6,h			;06c8
	sub b			;06ca
	ld (de),a		;06cb
	rst 30h			;06cc
	ld (hl),h		;06cd
	ei			;06ce
	ld (hl),h		;06cf
	sub b			;06d0
	inc c			;06d1
	ccf			;06d2
	ld (hl),l		;06d3
	ld c,e			;06d4
	ld (hl),l		;06d5
	sub b			;06d6
	ld (de),a		;06d7
	sub h			;06d8
	ld (hl),l		;06d9
	sbc a,b			;06da
	ld (hl),l		;06db
	sub b			;06dc
	ld (075c9h),hl		;06dd
	call pe,0c075h		;06e0
	ld (hl),b		;06e3
l06e4h:
	ld l,(hl)		;06e4
	halt			;06e5
	ld (hl),b		;06e6
	halt			;06e7
	sub b			;06e8
	inc b			;06e9
	add a,(hl)		;06ea
	halt			;06eb
	adc a,d			;06ec
	halt			;06ed
	sub b			;06ee
	rrca			;06ef
	ret nz			;06f0
	halt			;06f1
	ld (bc),a		;06f2
	ld (hl),a		;06f3
	sub b			;06f4
	rrca			;06f5
	ld a,a			;06f6
	ld (hl),a		;06f7
	sbc a,h			;06f8
	ld (hl),a		;06f9
	sub b			;06fa
	ld a,(bc)		;06fb
	ld (iy+022h),a		;06fc
	ld a,b			;06ff
	sub b			;0700
l0701h:
	inc b			;0701
	ld b,l			;0702
	ld a,b			;0703
	ld h,a			;0704
	ld a,b			;0705
	sub b			;0706
	dec bc			;0707
	sbc a,c			;0708
	ld a,b			;0709
	xor (hl)		;070a
	ld a,b			;070b
	sub b			;070c
	inc b			;070d
	inc de			;070e
	ld a,c			;070f
	dec l			;0710
	ld a,c			;0711
	sub b			;0712
	inc b			;0713
	ld e,c			;0714
	ld a,c			;0715
	ld h,d			;0716
	ld a,c			;0717
	sub b			;0718
	add hl,bc		;0719
	sub c			;071a
sub_071bh:
	ld a,c			;071b
	sub c			;071c
	ld a,c			;071d
	sub b			;071e
	add hl,bc		;071f
	jp nc,02179h		;0720
	ld a,d			;0723
	sub b			;0724
	add hl,bc		;0725
	xor b			;0726
	ld a,d			;0727
	xor h			;0728
	ld a,d			;0729
	sub b			;072a
	add hl,bc		;072b
	ret m			;072c
	ld a,h			;072d
	ld bc,0907dh		;072e
	dec b			;0731
	jp p,01e7ah		;0732
	ld a,e			;0735
l0736h:
	sub b			;0736
	rlca			;0737
	ld c,b			;0738
	ld a,e			;0739
	ld l,h			;073a
	ld a,e			;073b
	sub b			;073c
	rlca			;073d
	and (hl)		;073e
	ld a,e			;073f
	rst 20h			;0740
	ld a,e			;0741
	sub b			;0742
	ld a,(bc)		;0743
	dec d			;0744
	ld a,h			;0745
	dec d			;0746
	ld a,h			;0747
	sub b			;0748
	ld c,05ah		;0749
	ld a,h			;074b
	ld e,d			;074c
	ld a,h			;074d
	sub b			;074e
	inc c			;074f
	and d			;0750
	ld a,h			;0751
	ret nz			;0752
	ld a,h			;0753
	sub b			;0754
	ld a,(bc)		;0755
l0756h:
	ld l,h			;0756
	ld a,l			;0757
	ld (hl),l		;0758
	ld a,l			;0759
	sub b			;075a
	dec bc			;075b
	jr c,l07dbh		;075c
	inc a			;075e
	ld a,l			;075f
	sub b			;0760
	ld (de),a		;0761
	add hl,bc		;0762
	ld a,(hl)		;0763
	dec de			;0764
	ld a,(hl)		;0765
	sub b			;0766
	ld (de),a		;0767
	sub b			;0768
	ld a,l			;0769
	sbc a,c			;076a
	ld a,l			;076b
	sub b			;076c
	ld (de),a		;076d
sub_076eh:
	ld b,c			;076e
	halt			;076f
	ld c,h			;0770
	halt			;0771
	sub b			;0772
	ld a,(bc)		;0773
	ld l,h			;0774
	ld a,(hl)		;0775
	adc a,(hl)		;0776
	ld a,(hl)		;0777
	sub b			;0778
	ld a,(bc)		;0779
	rst 8			;077a
	ld a,l			;077b
	jp c,0907dh		;077c
	ld (de),a		;077f
	cp b			;0780
	ld a,(hl)		;0781
	defb 0edh ;next byte illegal after ed	;0782
	ld a,(hl)		;0783
	sub b			;0784
	ld (de),a		;0785
	inc h			;0786
	ld a,a			;0787
	dec (hl)		;0788
	ld a,a			;0789
	ld l,a			;078a
	ld d,0b0h		;078b
	and e			;078d
	xor 0a3h		;078e
	ld l,(hl)		;0790
	and h			;0791
	sub 0a4h		;0792
	scf			;0794
	and l			;0795
	sbc a,a			;0796
	and l			;0797
	ld l,a			;0798
	ld d,0a4h		;0799
	add a,h			;079b
	and h			;079c
	add a,h			;079d
	and h			;079e
	add a,h			;079f
	and h			;07a0
	add a,h			;07a1
	and h			;07a2
	add a,h			;07a3
	and h			;07a4
	add a,h			;07a5
	ld l,a			;07a6
	ld d,0a6h		;07a7
	add a,h			;07a9
	xor 084h		;07aa
	ret z			;07ac
	add a,l			;07ad
	jr c,l0736h		;07ae
	rlca			;07b0
	add a,a			;07b1
	ld (hl),e		;07b2
l07b3h:
	add a,a			;07b3
	ld l,a			;07b4
	ld d,0dch		;07b5
	add a,a			;07b7
	rra			;07b8
	adc a,b			;07b9
	call pe,06f88h		;07ba
	adc a,c			;07bd
	jp p,0a489h		;07be
	adc a,d			;07c1
	ld l,a			;07c2
	ld d,0f3h		;07c3
	adc a,e			;07c5
	ld d,c			;07c6
	adc a,e			;07c7
	jr nz,l0756h		;07c8
	ld a,e			;07ca
	adc a,h			;07cb
	xor b			;07cc
	adc a,l			;07cd
	add a,(hl)		;07ce
	adc a,(hl)		;07cf
	ld l,a			;07d0
	ld d,061h		;07d1
	adc a,a			;07d3
	jp p,0918fh		;07d4
	sub b			;07d7
	inc h			;07d8
	sub c			;07d9
	and d			;07da
l07dbh:
	sub c			;07db
	ld e,b			;07dc
	sub d			;07dd
	ld l,a			;07de
	ld d,09ch		;07df
	sub d			;07e1
	sbc a,h			;07e2
	sub d			;07e3
	sbc a,h			;07e4
	sub d			;07e5
	sbc a,h			;07e6
	sub d			;07e7
	sbc a,h			;07e8
	sub d			;07e9
	sbc a,h			;07ea
	sub d			;07eb
	ld l,a			;07ec
	ld d,09dh		;07ed
	sub d			;07ef
	ld sp,hl		;07f0
	sub d			;07f1
	ld a,h			;07f2
	sub e			;07f3
	sub h			;07f4
	sub h			;07f5
	adc a,b			;07f6
	sub l			;07f7
	ld de,06f96h		;07f8
	ld d,097h		;07fb
	sub (hl)		;07fd
	rst 38h			;07fe
	sub (hl)		;07ff
	ret z			;0800
	sub a			;0801
	dec sp			;0802
	sbc a,b			;0803
	ld (de),a		;0804
	sbc a,c			;0805
	call 06f99h		;0806
	ld d,065h		;0809
	sbc a,d			;080b
	and l			;080c
	sbc a,d			;080d
	ret m			;080e
	sbc a,d			;080f
	ex af,af'		;0810
	sbc a,h			;0811
	sub c			;0812
	sbc a,h			;0813
	jr z,l07b3h		;0814
	ld l,a			;0816
	ld d,0d1h		;0817
sub_0819h:
	sbc a,l			;0819
	defb 0ddh,09dh ;sbc a,ixl	;081a
	ld a,l			;081c
	sbc a,(hl)		;081d
	ld d,e			;081e
	sbc a,a			;081f
	nop			;0820
	and b			;0821
	ld l,l			;0822
	and b			;0823
	ld l,a			;0824
	ld d,085h		;0825
	and a			;0827
	sbc a,b			;0828
	and a			;0829
	call pe,sub_1da7h	;082a
	xor b			;082d
	ret			;082e
	xor b			;082f
	inc e			;0830
	xor c			;0831
	ld l,a			;0832
	ld d,08dh		;0833
	and (hl)		;0835
	and e			;0836
	and (hl)		;0837
	call nz,sub_00a6h	;0838
	and a			;083b
	ld a,0a7h		;083c
	ld e,c			;083e
	and a			;083f
	ld l,a			;0840
	ld d,0d4h		;0841
	and b			;0843
l0844h:
	push af			;0844
	and b			;0845
	sub h			;0846
	and c			;0847
	ld de,0e1a2h		;0848
	and d			;084b
	ld de,0ffa3h		;084c
	ld b,(hl)		;084f
	ld h,c			;0850
	ld a,a			;0851
	ld h,c			;0852
	ld a,a			;0853
	ld h,c			;0854
	ld a,a			;0855
	ld h,c			;0856
	ld a,a			;0857
	ld h,d			;0858
	ld a,a			;0859
	halt			;085a
	ld a,a			;085b
	adc a,e			;085c
	ld a,a			;085d
	sbc a,b			;085e
	ld a,a			;085f
	rst 38h			;0860
	ld b,(hl)		;0861
	pop hl			;0862
	ld a,a			;0863
	pop hl			;0864
	ld a,a			;0865
	pop hl			;0866
	ld a,a			;0867
	and e			;0868
	ld a,a			;0869
	jp po,0527fh		;086a
	add a,b			;086d
	adc a,b			;086e
	add a,b			;086f
	adc a,b			;0870
	add a,b			;0871
	rst 38h			;0872
	ld b,(hl)		;0873
	adc a,b			;0874
	add a,b			;0875
	adc a,b			;0876
	add a,b			;0877
	adc a,b			;0878
	add a,b			;0879
	adc a,c			;087a
	add a,b			;087b
	and e			;087c
	add a,b			;087d
	pop bc			;087e
	add a,b			;087f
	rst 8			;0880
	add a,b			;0881
	ret pe			;0882
	add a,b			;0883
	rst 38h			;0884
	dec sp			;0885
	ld bc,l0181h		;0886
	add a,c			;0889
	jp m,l0280h		;088a
	add a,c			;088d
	dec sp			;088e
	add a,c			;088f
	ld c,(hl)		;0890
	add a,c			;0891
	ld h,c			;0892
	add a,c			;0893
	ld l,l			;0894
	add a,c			;0895
	rst 38h			;0896
	ld b,(hl)		;0897
	sub h			;0898
	add a,c			;0899
	rst 30h			;089a
	add a,c			;089b
	ld bc,l0282h		;089c
	add a,d			;089f
	sub b			;08a0
	add a,d			;08a1
	and e			;08a2
	add a,d			;08a3
	xor l			;08a4
	add a,d			;08a5
	cp b			;08a6
	add a,d			;08a7
	rst 38h			;08a8
	ld b,(hl)		;08a9
	call c,0dc82h		;08aa
	add a,d			;08ad
	call c,0dc82h		;08ae
	add a,d			;08b1
	pop hl			;08b2
	add a,d			;08b3
	rst 30h			;08b4
	add a,d			;08b5
	inc c			;08b6
	add a,e			;08b7
	ld (0ff83h),hl		;08b8
	ld b,a			;08bb
	dec de			;08bc
	add a,h			;08bd
	jr nc,l0844h		;08be
	ccf			;08c0
	add a,h			;08c1
	ld c,(hl)		;08c2
	add a,h			;08c3
	ld h,e			;08c4
	add a,h			;08c5
	ld a,d			;08c6
	add a,h			;08c7
	add a,a			;08c8
	add a,h			;08c9
	sub (hl)		;08ca
	add a,h			;08cb
	rst 38h			;08cc
	ld c,b			;08cd
	ccf			;08ce
	cp (hl)			;08cf
	adc a,a			;08d0
	cp (hl)			;08d1
	call pe,sub_1dbeh	;08d2
	cp a			;08d5
	ld d,(hl)		;08d6
	cp a			;08d7
	ld a,a			;08d8
	cp a			;08d9
	xor c			;08da
	cp a			;08db
	ret z			;08dc
	cp a			;08dd
	rst 38h			;08de
	ld c,b			;08df
	dec sp			;08e0
	or (hl)			;08e1
	ld b,d			;08e2
	or l			;08e3
l08e4h:
	call z,053b6h		;08e4
	or a			;08e7
	call nc,0bab7h		;08e8
	cp b			;08eb
	ld a,(0beb9h)		;08ec
	cp c			;08ef
	ld l,a			;08f0
	ld c,b			;08f1
	and d			;08f2
	xor d			;08f3
	ld l,0abh		;08f4
	rst 18h			;08f6
	xor e			;08f7
	ld e,h			;08f8
	xor l			;08f9
	inc sp			;08fa
	xor (hl)		;08fb
	call c,0ffaeh		;08fc
	ld c,b			;08ff
	sbc a,d			;0900
	xor a			;0901
	ld c,c			;0902
	or b			;0903
	ld sp,hl		;0904
	or b			;0905
	ld d,c			;0906
	or c			;0907
	ld l,e			;0908
	or d			;0909
	add hl,sp		;090a
	or e			;090b
	dec de			;090c
	or h			;090d
	cp e			;090e
	or h			;090f
	rst 38h			;0910
	ld (hl),b		;0911
	defb 0fdh,0a9h,005h ;illegal sequence	;0912
	xor d			;0915
	ld a,(bc)		;0916
	xor d			;0917
	add hl,de		;0918
	xor d			;0919
	dec l			;091a
	xor d			;091b
	dec a			;091c
	xor d			;091d
	ld b,a			;091e
	xor d			;091f
	ld d,c			;0920
	xor d			;0921
	rst 38h			;0922
	add a,b			;0923
	and h			;0924
	add a,h			;0925
	and h			;0926
	add a,h			;0927
	and h			;0928
	add a,h			;0929
	and h			;092a
	add a,h			;092b
	and h			;092c
	add a,h			;092d
	and h			;092e
	add a,h			;092f
	and h			;0930
	add a,h			;0931
	and h			;0932
	add a,h			;0933
	ld a,(0e1a6h)		;0934
	call 0702dh		;0937
	ld hl,0e190h		;093a
	bit 1,(hl)		;093d
	jp nz,06979h		;093f
	ld a,(0e190h)		;0942
	bit 0,a			;0945
	call nz,06b1ch		;0947
	ld ix,0e000h		;094a
	exx			;094e
	ld de,l0028h		;094f
	ld b,008h		;0952
	ld c,001h		;0954
	ld a,c			;0956
l0957h:
	exx			;0957
	ld (0e1a7h),a		;0958
	call 06969h		;095b
	exx			;095e
	add ix,de		;095f
	ld a,c			;0961
	add a,c			;0962
	djnz l0957h		;0963
	call 06f6ah		;0965
	ret			;0968
	ld a,(ix+000h)		;0969
	or a			;096c
	call nz,0699ah		;096d
	ld hl,0e190h		;0970
	bit 0,(hl)		;0973
	call nz,06b79h		;0975
	ret			;0978
	ld a,001h		;0979
	ld (0e1a7h),a		;097b
	ld ix,0e000h		;097e
	call 06969h		;0982
	ld a,002h		;0985
	ld (0e1a7h),a		;0987
	ld ix,0e028h		;098a
	call 06969h		;098e
	ld a,0bch		;0991
	ld (0e1a6h),a		;0993
	call 06f71h		;0996
	ret			;0999
	dec (ix+004h)		;099a
	jp nz,06bfah		;099d
	ld l,(ix+002h)		;09a0
	ld h,(ix+003h)		;09a3
	ld a,(hl)		;09a6
	cp 0ffh			;09a7
	jp z,06ae3h		;09a9
	cp 0d0h			;09ac
	jr c,l09b7h		;09ae
	call 06d12h		;09b0
	inc hl			;09b3
	jp 069a6h		;09b4
l09b7h:
	bit 0,(ix+009h)		;09b7
	call nz,069cdh		;09bb
	bit 1,(ix+009h)		;09be
	call nz,06a3fh		;09c2
	bit 2,(ix+009h)		;09c5
	call nz,06aaah		;09c9
	ret			;09cc
	ld a,(hl)		;09cd
	and 00fh		;09ce
	ld b,a			;09d0
	ld a,(ix+014h)		;09d1
	jr z,l09dah		;09d4
	ld e,a			;09d6
l09d7h:
	add a,e			;09d7
	djnz l09d7h		;09d8
l09dah:
	ld (ix+004h),a		;09da
	ld a,(hl)		;09dd
	and 0f0h		;09de
	rrca			;09e0
	rrca			;09e1
	rrca			;09e2
	rrca			;09e3
	call 06adbh		;09e4
	bit 3,(ix+009h)		;09e7
	ret nz			;09eb
	cp 00ch			;09ec
	jr nc,l0a2dh		;09ee
	ld hl,06a32h		;09f0
	ld e,a			;09f3
	ld d,000h		;09f4
	add hl,de		;09f6
	ld l,(hl)		;09f7
	ld h,000h		;09f8
	ld a,(ix+016h)		;09fa
	or a			;09fd
	jr z,l0a04h		;09fe
	ld b,a			;0a00
l0a01h:
	add hl,hl		;0a01
	djnz l0a01h		;0a02
l0a04h:
	ld (ix+010h),l		;0a04
	ld (ix+011h),h		;0a07
	ld e,(ix+015h)		;0a0a
	ld a,(0e190h)		;0a0d
	bit 0,a			;0a10
	call nz,06a20h		;0a12
	ld (ix+012h),e		;0a15
	ld (ix+00dh),002h	;0a18
	call 06babh		;0a1c
	ret			;0a1f
	ld a,(0e1a5h)		;0a20
	ld d,a			;0a23
	ld a,e			;0a24
	sub d			;0a25
	ld e,a			;0a26
	cp 008h			;0a27
	ret nc			;0a29
	ld e,009h		;0a2a
	ret			;0a2c
l0a2dh:
	ld (ix+00dh),000h	;0a2d
	ret			;0a31
	ld l,d			;0a32
	ld h,h			;0a33
	ld e,(hl)		;0a34
	ld e,c			;0a35
	ld d,h			;0a36
	ld c,a			;0a37
	ld c,d			;0a38
	ld b,(hl)		;0a39
	ld b,d			;0a3a
	ccf			;0a3b
	dec sp			;0a3c
	jr c,l0a74h		;0a3d
	ld a,(ix+00dh)		;0a3f
	and 003h		;0a42
	jr z,l0a9bh		;0a44
	cp 001h			;0a46
	jr z,l0a80h		;0a48
	ld a,(hl)		;0a4a
	bit 7,(ix+00eh)		;0a4b
	jr nz,l0a6ch		;0a4f
	bit 5,(ix+00eh)		;0a51
	jr nz,l0a71h		;0a55
	and 0f0h		;0a57
	ld b,a			;0a59
	xor (hl)		;0a5a
	ld d,a			;0a5b
	inc hl			;0a5c
	ld a,(hl)		;0a5d
	ld (ix+010h),a		;0a5e
	ld (ix+011h),d		;0a61
	ld a,b			;0a64
	rrca			;0a65
	rrca			;0a66
	rrca			;0a67
	rrca			;0a68
	ld b,a			;0a69
	jr l0a84h		;0a6a
l0a6ch:
	ld (ix+010h),a		;0a6c
	jr l0a98h		;0a6f
l0a71h:
	and 0f0h		;0a71
	rrca			;0a73
l0a74h:
	rrca			;0a74
	rrca			;0a75
	rrca			;0a76
	ld b,a			;0a77
	ld a,(hl)		;0a78
	and 00fh		;0a79
	ld (ix+011h),a		;0a7b
	jr l0a84h		;0a7e
l0a80h:
	ld a,(hl)		;0a80
	and 00fh		;0a81
	ld b,a			;0a83
l0a84h:
	ld a,(0e1a7h)		;0a84
	cp 008h			;0a87
	jr nc,l0a93h		;0a89
	bit 2,(ix+00dh)		;0a8b
	jr z,l0a93h		;0a8f
	ld b,010h		;0a91
l0a93h:
	inc b			;0a93
	inc b			;0a94
	ld (ix+012h),b		;0a95
l0a98h:
	call 06babh		;0a98
l0a9bh:
	bit 3,(ix+009h)		;0a9b
	ret nz			;0a9f
	call 06adbh		;0aa0
	ld a,(ix+013h)		;0aa3
	ld (ix+004h),a		;0aa6
	ret			;0aa9
	ld (ix+009h),009h	;0aaa
	call 069cdh		;0aae
	ld hl,07255h		;0ab1
	add a,a			;0ab4
	ld e,a			;0ab5
	ld d,000h		;0ab6
	add hl,de		;0ab8
	ld e,(hl)		;0ab9
	inc hl			;0aba
	ld d,(hl)		;0abb
	ex de,hl		;0abc
	ld a,(hl)		;0abd
	set 0,(ix+00eh)		;0abe
	ld (ix+009h),00ah	;0ac2
	call 069a6h		;0ac6
	ld a,(ix+013h)		;0ac9
	ld (ix+019h),a		;0acc
	inc hl			;0acf
	ld (ix+017h),l		;0ad0
	ld (ix+018h),h		;0ad3
	ld (ix+009h),004h	;0ad6
	ret			;0ada
	inc hl			;0adb
	ld (ix+002h),l		;0adc
	ld (ix+003h),h		;0adf
	ret			;0ae2
	xor a			;0ae3
l0ae4h:
	ld (ix+000h),a		;0ae4
	ld (ix+001h),a		;0ae7
	ld (ix+005h),a		;0aea
	ld (ix+006h),a		;0aed
	ld (ix+00ah),a		;0af0
	ld (ix+00bh),a		;0af3
	ld (ix+00ch),a		;0af6
	ld (ix+00dh),a		;0af9
	ld (ix+00eh),a		;0afc
	ld (ix+00fh),a		;0aff
	ld a,(0e1a7h)		;0b02
	cp 008h			;0b05
	ret nc			;0b07
	cp 001h			;0b08
	ld hl,0e1aah		;0b0a
	jr nz,l0b19h		;0b0d
	res 1,(hl)		;0b0f
	bit 3,(hl)		;0b11
	ret z			;0b13
	res 3,(hl)		;0b14
	set 2,(hl)		;0b16
	ret			;0b18
l0b19h:
	res 3,(hl)		;0b19
	ret			;0b1b
	ld hl,0e1a4h		;0b1c
	inc (hl)		;0b1f
	ld a,(0e0a0h)		;0b20
	ld a,(hl)		;0b23
	cp 060h			;0b24
	ret nz			;0b26
	ld (hl),000h		;0b27
	inc hl			;0b29
	inc (hl)		;0b2a
	ld a,(hl)		;0b2b
	cp 002h			;0b2c
	ret nz			;0b2e
	xor a			;0b2f
	ld hl,0e190h		;0b30
	res 0,(hl)		;0b33
	ld hl,0e1a4h		;0b35
	ld (hl),a		;0b38
	inc hl			;0b39
	ld (hl),a		;0b3a
	ld a,(0e000h)		;0b3b
	ld e,a			;0b3e
	ld a,(0e028h)		;0b3f
	cp e			;0b42
	jr nz,l0b53h		;0b43
	ld ix,0e000h		;0b45
	call 06ae3h		;0b49
	ld ix,0e078h		;0b4c
	call 06ae3h		;0b50
l0b53h:
	ld de,l0028h		;0b53
	ld ix,0e028h		;0b56
	call 06ae3h		;0b5a
	add ix,de		;0b5d
	call 06ae3h		;0b5f
	ld ix,0e0a0h		;0b62
	call 06ae3h		;0b66
	add ix,de		;0b69
	call 06ae3h		;0b6b
	add ix,de		;0b6e
	call 06ae3h		;0b70
	add ix,de		;0b73
	call 06ae3h		;0b75
	ret			;0b78
	ld a,(0e000h)		;0b79
	ld e,a			;0b7c
	ld a,(0e028h)		;0b7d
	cp e			;0b80
	jr z,l0b8eh		;0b81
	ld a,(0e1a7h)		;0b83
	and 0f6h		;0b86
	ret z			;0b88
	bit 1,(ix+009h)		;0b89
	ret nz			;0b8d
l0b8eh:
	bit 2,(ix+00dh)		;0b8e
	jr nz,l0ba6h		;0b92
	bit 4,(ix+00fh)		;0b94
	ret nz			;0b98
	ld a,(0e1a5h)		;0b99
	ld e,a			;0b9c
	ld a,(ix+00ch)		;0b9d
	sub e			;0ba0
	ret m			;0ba1
	ld (ix+00ch),a		;0ba2
	ret			;0ba5
l0ba6h:
	ld (ix+00ch),000h	;0ba6
	ret			;0baa
	call 06c2ch		;0bab
	res 4,(ix+00eh)		;0bae
	ld a,(ix+00fh)		;0bb2
	and 0e7h		;0bb5
	ld (ix+00fh),a		;0bb7
	xor a			;0bba
	ld (ix+01dh),a		;0bbb
	ld (ix+01eh),a		;0bbe
	ld (ix+01fh),a		;0bc1
	ld (ix+020h),a		;0bc4
	set 2,(ix+00fh)		;0bc7
	ld a,(ix+012h)		;0bcb
	bit 6,(ix+00eh)		;0bce
	jr z,l0bdbh		;0bd2
	ld e,(ix+015h)		;0bd4
	sub e			;0bd7
	call m,06bf8h		;0bd8
l0bdbh:
	ld (ix+00ch),a		;0bdb
	ld a,(0e1a7h)		;0bde
	cp 008h			;0be1
	jr nc,l0beah		;0be3
	bit 2,(ix+00dh)		;0be5
	ret nz			;0be9
l0beah:
	bit 1,(ix+00fh)		;0bea
	ret z			;0bee
	ld (ix+00ch),008h	;0bef
	res 2,(ix+00fh)		;0bf3
	ret			;0bf7
	xor a			;0bf8
	ret			;0bf9
	bit 0,(ix+00eh)		;0bfa
	call nz,06c10h		;0bfe
	bit 2,(ix+00eh)		;0c01
	call nz,06c47h		;0c05
	bit 0,(ix+00fh)		;0c08
	call nz,06c95h		;0c0c
	ret			;0c0f
	dec (ix+019h)		;0c10
	ret nz			;0c13
	ld l,(ix+017h)		;0c14
	ld h,(ix+018h)		;0c17
	ld a,(hl)		;0c1a
	cp 0ffh			;0c1b
	jr z,l0c23h		;0c1d
	call 06ac2h		;0c1f
	ret			;0c22
l0c23h:
	res 0,(ix+00eh)		;0c23
	ld (ix+00dh),000h	;0c27
	ret			;0c2b
	ld e,(ix+010h)		;0c2c
	ld d,(ix+011h)		;0c2f
	bit 1,(ix+00eh)		;0c32
	jr z,l0c40h		;0c36
	ld a,(ix+025h)		;0c38
	add a,e			;0c3b
	ld e,a			;0c3c
	jr nc,l0c40h		;0c3d
	inc d			;0c3f
l0c40h:
	ld (ix+00ah),e		;0c40
	ld (ix+00bh),d		;0c43
	ret			;0c46
	inc (ix+01eh)		;0c47
	ld a,(ix+01eh)		;0c4a
	ld b,(ix+00eh)		;0c4d
	bit 4,b			;0c50
	jr nz,l0c66h		;0c52
	bit 3,b			;0c54
	jr z,l0c66h		;0c56
	cp (ix+01ah)		;0c58
	ret nz			;0c5b
	ld (ix+01eh),000h	;0c5c
	set 4,(ix+00eh)		;0c60
	jr l0c6ah		;0c64
l0c66h:
	cp (ix+01bh)		;0c66
	ret nz			;0c69
l0c6ah:
	ld e,(ix+00ah)		;0c6a
	ld d,(ix+00bh)		;0c6d
	ld b,(ix+01ch)		;0c70
	ld a,(ix+01dh)		;0c73
	cpl			;0c76
	ld (ix+01dh),a		;0c77
	and a			;0c7a
	ld a,e			;0c7b
	jr nz,l0c85h		;0c7c
	add a,b			;0c7e
	ld e,a			;0c7f
	jr nc,l0c8ah		;0c80
	inc d			;0c82
	jr l0c8ah		;0c83
l0c85h:
	sub b			;0c85
	ld e,a			;0c86
	jr nc,l0c8ah		;0c87
	dec d			;0c89
l0c8ah:
	ld (ix+00ah),e		;0c8a
	ld (ix+00bh),d		;0c8d
	ld (ix+01eh),000h	;0c90
	ret			;0c94
	ld a,(0e1a7h)		;0c95
	cp 008h			;0c98
	jr nc,l0ca1h		;0c9a
	bit 2,(ix+00dh)		;0c9c
	ret nz			;0ca0
l0ca1h:
	call 06ca8h		;0ca1
	ld (ix+00ch),e		;0ca4
	ret			;0ca7
	ld e,(ix+00ch)		;0ca8
	inc (ix+01fh)		;0cab
	ld b,(ix+01fh)		;0cae
	bit 4,(ix+00fh)		;0cb1
	jr nz,l0d06h		;0cb5
	bit 3,(ix+00fh)		;0cb7
	jr nz,l0ceah		;0cbb
	bit 2,(ix+00fh)		;0cbd
	jr nz,l0cd6h		;0cc1
	ld a,e			;0cc3
	inc a			;0cc4
	ld e,a			;0cc5
	cp (ix+012h)		;0cc6
	ret c			;0cc9
	set 2,(ix+00fh)		;0cca
	ld e,(ix+012h)		;0cce
	ld (ix+01fh),000h	;0cd1
	ret			;0cd5
l0cd6h:
	ld a,e			;0cd6
	dec a			;0cd7
	jp m,06cdch		;0cd8
	ld e,a			;0cdb
	ld a,b			;0cdc
	cp (ix+021h)		;0cdd
	ret c			;0ce0
	ld (ix+01fh),000h	;0ce1
	set 3,(ix+00fh)		;0ce5
	ret			;0ce9
l0ceah:
	ld a,b			;0cea
	cp (ix+022h)		;0ceb
	ret nz			;0cee
	ld a,e			;0cef
	dec a			;0cf0
	ret m			;0cf1
	ld e,a			;0cf2
	inc (ix+020h)		;0cf3
	ld a,(ix+020h)		;0cf6
	cp (ix+023h)		;0cf9
	ld (ix+01fh),000h	;0cfc
	ret nz			;0d00
	set 4,(ix+00fh)		;0d01
	ret			;0d05
l0d06h:
	ld a,(ix+004h)		;0d06
	cp (ix+024h)		;0d09
	ret nc			;0d0c
	ld a,e			;0d0d
	dec a			;0d0e
	ret m			;0d0f
	ld e,a			;0d10
	ret			;0d11
	cp 0e0h			;0d12
	jp c,06f55h		;0d14
	and 01fh		;0d17
	push hl			;0d19
	ld hl,06d27h		;0d1a
	add a,a			;0d1d
	ld e,a			;0d1e
	ld d,000h		;0d1f
	add hl,de		;0d21
	ld e,(hl)		;0d22
	inc hl			;0d23
	ld d,(hl)		;0d24
	ex de,hl		;0d25
	jp (hl)			;0d26
	ld h,l			;0d27
	ld l,l			;0d28
	ld a,e			;0d29
	ld l,l			;0d2a
	ld h,l			;0d2b
	ld l,l			;0d2c
	ld a,e			;0d2d
	ld l,l			;0d2e
	sbc a,b			;0d2f
	ld l,l			;0d30
	jp nz,0d56dh		;0d31
	ld l,l			;0d34
	call po,0f66dh		;0d35
	ld l,l			;0d38
	dec b			;0d39
	ld l,(hl)		;0d3a
	inc c			;0d3b
	ld l,(hl)		;0d3c
	inc de			;0d3d
	ld l,(hl)		;0d3e
	jr nc,$+112		;0d3f
	ld (hl),06eh		;0d41
	ld a,e			;0d43
	ld l,(hl)		;0d44
	add a,c			;0d45
	ld l,(hl)		;0d46
	adc a,h			;0d47
	ld l,(hl)		;0d48
	sub d			;0d49
	ld l,(hl)		;0d4a
	xor l			;0d4b
	ld l,(hl)		;0d4c
	or a			;0d4d
	ld l,(hl)		;0d4e
	add a,06eh		;0d4f
	call z,0d26eh		;0d51
	ld l,(hl)		;0d54
	call c,0e26eh		;0d55
	ld l,(hl)		;0d58
	call m,sub_076eh	;0d59
	ld l,a			;0d5c
	rrca			;0d5d
	ld l,a			;0d5e
	add hl,hl		;0d5f
	ld l,a			;0d60
	ld a,06fh		;0d61
	ld b,c			;0d63
	ld l,a			;0d64
	pop hl			;0d65
l0d66h:
	res 7,(ix+00eh)		;0d66
	ld a,(hl)		;0d6a
	and 003h		;0d6b
	ld (ix+00dh),a		;0d6d
	ld b,a			;0d70
	inc hl			;0d71
	ld a,(hl)		;0d72
	ld (ix+013h),a		;0d73
	ld a,b			;0d76
	or a			;0d77
	ret nz			;0d78
	dec hl			;0d79
	ret			;0d7a
	pop hl			;0d7b
	ld a,(0e1a7h)		;0d7c
	cp 001h			;0d7f
	ld a,(0e1aah)		;0d81
	jr nz,l0d8fh		;0d84
	set 0,a			;0d86
	res 1,a			;0d88
	ld (0e1aah),a		;0d8a
	jr l0d66h		;0d8d
l0d8fh:
	set 2,a			;0d8f
	res 3,a			;0d91
	ld (0e1aah),a		;0d93
	jr l0d66h		;0d96
	pop hl			;0d98
	inc hl			;0d99
	ld a,(hl)		;0d9a
	and 01fh		;0d9b
	ld b,a			;0d9d
	ld a,(0e1a7h)		;0d9e
	cp 001h			;0da1
	ld a,b			;0da3
	jr nz,l0db4h		;0da4
	ld (0e1a8h),a		;0da6
	ld a,(0e1aah)		;0da9
	set 0,a			;0dac
	res 1,a			;0dae
	ld (0e1aah),a		;0db0
	ret			;0db3
l0db4h:
	ld (0e1a9h),a		;0db4
	ld a,(0e1aah)		;0db7
	set 2,a			;0dba
	res 3,a			;0dbc
	ld (0e1aah),a		;0dbe
	ret			;0dc1
	pop hl			;0dc2
	inc hl			;0dc3
	res 3,(ix+00dh)		;0dc4
	ld a,(hl)		;0dc8
	ld (0e1abh),a		;0dc9
	ld de,0e1aah		;0dcc
	ld a,(de)		;0dcf
	set 5,a			;0dd0
	ld (de),a		;0dd2
	jr l0dd6h		;0dd3
	pop hl			;0dd5
l0dd6h:
	inc hl			;0dd6
	ld a,(hl)		;0dd7
	ld (0e1adh),a		;0dd8
	ld de,0e1aah		;0ddb
	ld a,(de)		;0dde
	set 6,a			;0ddf
	ld (de),a		;0de1
	jr l0de5h		;0de2
	pop hl			;0de4
l0de5h:
	inc hl			;0de5
	ld a,(hl)		;0de6
	ld (0e1ach),a		;0de7
	ld de,0e1aah		;0dea
	ld a,(de)		;0ded
	set 7,a			;0dee
	ld (de),a		;0df0
	set 2,(ix+00dh)		;0df1
	ret			;0df5
	pop hl			;0df6
	ld de,0e1aah		;0df7
	xor a			;0dfa
	ld (de),a		;0dfb
	ld a,(ix+00dh)		;0dfc
	and 0f3h		;0dff
	ld (ix+00dh),a		;0e01
	ret			;0e04
	pop hl			;0e05
	inc hl			;0e06
	ld a,(hl)		;0e07
	ld (ix+014h),a		;0e08
	ret			;0e0b
	pop hl			;0e0c
	inc hl			;0e0d
	ld a,(hl)		;0e0e
	ld (ix+015h),a		;0e0f
	ret			;0e12
	pop hl			;0e13
	inc hl			;0e14
	ld a,(ix+005h)		;0e15
	inc a			;0e18
	cp (hl)			;0e19
	jr z,l0e2ah		;0e1a
	ld (ix+005h),a		;0e1c
	inc hl			;0e1f
	ld a,(hl)		;0e20
	ld e,a			;0e21
	ld a,l			;0e22
	sub e			;0e23
	ld l,a			;0e24
	jr nc,l0e28h		;0e25
	dec h			;0e27
l0e28h:
	dec hl			;0e28
	ret			;0e29
l0e2ah:
	inc hl			;0e2a
	ld (ix+005h),000h	;0e2b
	ret			;0e2f
	pop hl			;0e30
	res 6,(ix+00eh)		;0e31
	ret			;0e35
	pop hl			;0e36
	inc hl			;0e37
	ld a,(ix+00fh)		;0e38
	and 080h		;0e3b
	ld (ix+00fh),a		;0e3d
	ld a,(hl)		;0e40
	and 0f0h		;0e41
	rrca			;0e43
	rrca			;0e44
	rrca			;0e45
	rrca			;0e46
	cp 008h			;0e47
	jr nc,l0e4fh		;0e49
	set 2,(ix+00fh)		;0e4b
l0e4fh:
	res 3,a			;0e4f
	inc a			;0e51
	bit 2,(ix+00fh)		;0e52
	jr nz,l0e5ch		;0e56
	set 1,(ix+00fh)		;0e58
l0e5ch:
	ld (ix+021h),a		;0e5c
	ld a,(hl)		;0e5f
	and 00fh		;0e60
	ld (ix+022h),a		;0e62
	inc hl			;0e65
	ld a,(hl)		;0e66
	and 0f0h		;0e67
	rrca			;0e69
	rrca			;0e6a
	rrca			;0e6b
	rrca			;0e6c
	ld (ix+023h),a		;0e6d
	ld a,(hl)		;0e70
	and 00fh		;0e71
	ld (ix+024h),a		;0e73
	set 0,(ix+00fh)		;0e76
	ret			;0e7a
	pop hl			;0e7b
	res 0,(ix+00fh)		;0e7c
	ret			;0e80
	pop hl			;0e81
	inc hl			;0e82
	ld a,(hl)		;0e83
	ld (ix+025h),a		;0e84
	set 1,(ix+00eh)		;0e87
	ret			;0e8b
	pop hl			;0e8c
	res 1,(ix+00eh)		;0e8d
	ret			;0e91
	pop hl			;0e92
	inc hl			;0e93
	ld a,(ix+00eh)		;0e94
	or 014h			;0e97
	ld (ix+00eh),a		;0e99
	ld a,(hl)		;0e9c
	and 00fh		;0e9d
	ld (ix+01ch),a		;0e9f
	ld a,(hl)		;0ea2
	and 0f0h		;0ea3
	rrca			;0ea5
	rrca			;0ea6
	rrca			;0ea7
	rrca			;0ea8
	ld (ix+01bh),a		;0ea9
	ret			;0eac
	pop hl			;0ead
	ld a,(ix+00eh)		;0eae
	and 0e2h		;0eb1
	ld (ix+00eh),a		;0eb3
	ret			;0eb6
	pop hl			;0eb7
	inc hl			;0eb8
	ld a,(hl)		;0eb9
	ld (ix+01ah),a		;0eba
	ld a,(ix+00eh)		;0ebd
	or 00ch			;0ec0
	ld (ix+00eh),a		;0ec2
	ret			;0ec5
	pop hl			;0ec6
	res 3,(ix+00eh)		;0ec7
	ret			;0ecb
	pop hl			;0ecc
	set 7,(ix+00eh)		;0ecd
	ret			;0ed1
	pop hl			;0ed2
	ld a,(ix+00eh)		;0ed3
	and 05fh		;0ed6
	ld (ix+00eh),a		;0ed8
	ret			;0edb
	pop hl			;0edc
	set 5,(ix+00eh)		;0edd
	ret			;0ee1
	pop hl			;0ee2
	inc hl			;0ee3
	ld a,(hl)		;0ee4
	ld de,06000h		;0ee5
	add a,a			;0ee8
	add a,e			;0ee9
	ld e,a			;0eea
	jr nc,l0eeeh		;0eeb
	inc d			;0eed
l0eeeh:
	ld a,(de)		;0eee
	ld (ix+026h),a		;0eef
	inc de			;0ef2
	ld a,(de)		;0ef3
	ld (ix+027h),a		;0ef4
	set 7,(ix+00fh)		;0ef7
	ret			;0efb
	pop hl			;0efc
	call 06f1bh		;0efd
	ld (ix+007h),e		;0f00
	ld (ix+008h),d		;0f03
	ret			;0f06
	pop hl			;0f07
	ld l,(ix+007h)		;0f08
	ld h,(ix+008h)		;0f0b
	ret			;0f0e
	pop hl			;0f0f
	inc hl			;0f10
	ld a,(ix+005h)		;0f11
	inc a			;0f14
	cp (hl)			;0f15
	jr z,l0f22h		;0f16
	ld (ix+005h),a		;0f18
l0f1bh:
	inc hl			;0f1b
	ld e,(hl)		;0f1c
	inc hl			;0f1d
	ld d,(hl)		;0f1e
	ex de,hl		;0f1f
	dec hl			;0f20
	ret			;0f21
l0f22h:
	inc hl			;0f22
	inc hl			;0f23
	ld (ix+005h),000h	;0f24
	ret			;0f28
	pop hl			;0f29
	inc hl			;0f2a
	ld a,(ix+006h)		;0f2b
	inc a			;0f2e
	cp (hl)			;0f2f
	jr z,l0f37h		;0f30
	ld (ix+006h),a		;0f32
	jr l0f1bh		;0f35
l0f37h:
	inc hl			;0f37
	inc hl			;0f38
	ld (ix+006h),000h	;0f39
	ret			;0f3d
	pop hl			;0f3e
	jr l0f1bh		;0f3f
	pop hl			;0f41
	inc hl			;0f42
	ld a,(hl)		;0f43
	ld (ix+009h),a		;0f44
	cp 004h			;0f47
	ret nz			;0f49
	xor a			;0f4a
	ld (ix+00dh),a		;0f4b
	ld (ix+00eh),a		;0f4e
	ld (ix+00fh),a		;0f51
	ret			;0f54
	ld a,(hl)		;0f55
	and 00fh		;0f56
	cp 006h			;0f58
	jr nc,l0f60h		;0f5a
	ld (ix+016h),a		;0f5c
	ret			;0f5f
l0f60h:
	set 6,(ix+00eh)		;0f60
	sub 005h		;0f64
	ld (ix+015h),a		;0f66
	ret			;0f69
	call 06f71h		;0f6a
	call 0704ah		;0f6d
	ret			;0f70
	call 06f7eh		;0f71
	call 06fb3h		;0f74
	call 06fdch		;0f77
	call 0700ah		;0f7a
	ret			;0f7d
	ld b,000h		;0f7e
	ld c,008h		;0f80
	ld hl,0e00ah		;0f82
	call 06f95h		;0f85
	ld hl,0e032h		;0f88
	call 06f95h		;0f8b
	ld hl,0e05ah		;0f8e
	call 06f95h		;0f91
	ret			;0f94
	ld e,(hl)		;0f95
	ld a,b			;0f96
	call l0093h		;0f97
	inc hl			;0f9a
	inc b			;0f9b
	ld e,(hl)		;0f9c
	ld a,b			;0f9d
	call l0093h		;0f9e
	inc hl			;0fa1
	ld e,(hl)		;0fa2
	ld a,c			;0fa3
	inc b			;0fa4
	inc c			;0fa5
	inc hl			;0fa6
	bit 3,(hl)		;0fa7
	ret nz			;0fa9
	call l0093h		;0faa
	bit 2,(hl)		;0fad
	ret z			;0faf
	set 3,(hl)		;0fb0
	ret			;0fb2
	ld hl,0e1aah		;0fb3
	bit 0,(hl)		;0fb6
	jr z,l0fc8h		;0fb8
	res 0,(hl)		;0fba
	set 1,(hl)		;0fbc
	ld a,(0e1a8h)		;0fbe
	ld e,a			;0fc1
	ld a,006h		;0fc2
	call l0093h		;0fc4
	ret			;0fc7
l0fc8h:
	bit 1,(hl)		;0fc8
	ret nz			;0fca
	bit 2,(hl)		;0fcb
	ret z			;0fcd
	res 2,(hl)		;0fce
	set 3,(hl)		;0fd0
	ld a,(0e1a9h)		;0fd2
	ld e,a			;0fd5
	ld a,006h		;0fd6
	call l0093h		;0fd8
	ret			;0fdb
	ld hl,0e1aah		;0fdc
	bit 7,(hl)		;0fdf
	ret z			;0fe1
	res 7,(hl)		;0fe2
l0fe4h:
	ld a,(0e1ach)		;0fe4
	ld e,a			;0fe7
	ld a,00bh		;0fe8
l0feah:
	call l0093h		;0fea
	bit 6,(hl)		;0fed
	ret z			;0fef
	res 6,(hl)		;0ff0
	ld a,(0e1adh)		;0ff2
	ld e,a			;0ff5
	ld a,00ch		;0ff6
	call l0093h		;0ff8
	bit 5,(hl)		;0ffb
	ret z			;0ffd
	res 5,(hl)		;0ffe
l1000h:
	ld a,(0e1abh)		;1000
	ld e,a			;1003
	ld a,00dh		;1004
	call l0093h		;1006
	ret			;1009
	ld hl,0e00dh		;100a
	ld a,(hl)		;100d
	ld hl,0703eh		;100e
	call 07037h		;1011
	ld b,(hl)		;1014
	ld hl,0e035h		;1015
	ld a,(hl)		;1018
	ld hl,07042h		;1019
	call 07037h		;101c
	ld c,(hl)		;101f
	ld hl,0e05dh		;1020
	ld a,(hl)		;1023
	ld hl,07046h		;1024
	call 07037h		;1027
	ld a,(hl)		;102a
	or b			;102b
	or c			;102c
	ld e,a			;102d
	ld (0e1a6h),a		;102e
	ld a,007h		;1031
	call l0093h		;1033
	ret			;1036
	and 003h		;1037
	ld e,a			;1039
	ld d,000h		;103a
	add hl,de		;103c
	ret			;103d
	adc a,c			;103e
	add a,c			;103f
	adc a,b			;1040
	add a,b			;1041
	sub d			;1042
	add a,d			;1043
	sub b			;1044
	add a,b			;1045
	and h			;1046
	add a,h			;1047
	and b			;1048
	add a,b			;1049
	call 07057h		;104a
	call 0715ch		;104d
	call 071aeh		;1050
	call 071e2h		;1053
	ret			;1056
	ld ix,0e1aeh		;1057
	ld bc,0e1bah		;105b
	ld de,0e1b0h		;105e
	ld hl,0e082h		;1061
	ld a,(de)		;1064
	res 0,(ix+000h)		;1065
	cp (hl)			;1069
	jr z,l1072h		;106a
	set 0,(ix+000h)		;106c
	ld a,(hl)		;1070
	ld (de),a		;1071
l1072h:
	inc de			;1072
	inc hl			;1073
	ld a,(de)		;1074
	res 1,(ix+000h)		;1075
	cp (hl)			;1079
	jr z,l1082h		;107a
	set 1,(ix+000h)		;107c
	ld a,(hl)		;1080
	ld (de),a		;1081
l1082h:
	inc de			;1082
	inc hl			;1083
	res 2,(ix+001h)		;1084
	ld a,(bc)		;1088
	cp (hl)			;1089
	jr z,l1092h		;108a
	set 2,(ix+001h)		;108c
	ld a,(hl)		;1090
	ld (bc),a		;1091
l1092h:
	inc bc			;1092
	ld hl,0e0aah		;1093
	ld a,(de)		;1096
	res 2,(ix+000h)		;1097
	cp (hl)			;109b
	jr z,l10a4h		;109c
	set 2,(ix+000h)		;109e
	ld a,(hl)		;10a2
	ld (de),a		;10a3
l10a4h:
	inc de			;10a4
	inc hl			;10a5
	ld a,(de)		;10a6
	res 3,(ix+000h)		;10a7
	cp (hl)			;10ab
	jr z,l10b4h		;10ac
	set 3,(ix+000h)		;10ae
	ld a,(hl)		;10b2
	ld (de),a		;10b3
l10b4h:
	inc de			;10b4
	inc hl			;10b5
	res 3,(ix+001h)		;10b6
	ld a,(bc)		;10ba
	cp (hl)			;10bb
	jr z,l10c4h		;10bc
	set 3,(ix+001h)		;10be
	ld a,(hl)		;10c2
	ld (bc),a		;10c3
l10c4h:
	inc bc			;10c4
	ld hl,0e0d2h		;10c5
	ld a,(de)		;10c8
	res 4,(ix+000h)		;10c9
	cp (hl)			;10cd
	jr z,l10d6h		;10ce
	set 4,(ix+000h)		;10d0
	ld a,(hl)		;10d4
	ld (de),a		;10d5
l10d6h:
	inc de			;10d6
	inc hl			;10d7
	ld a,(de)		;10d8
	res 5,(ix+000h)		;10d9
	cp (hl)			;10dd
	jr z,l10e6h		;10de
	set 5,(ix+000h)		;10e0
	ld a,(hl)		;10e4
	ld (de),a		;10e5
l10e6h:
	inc de			;10e6
	inc hl			;10e7
	res 4,(ix+001h)		;10e8
	ld a,(bc)		;10ec
	cp (hl)			;10ed
	jr z,l10f6h		;10ee
	set 4,(ix+001h)		;10f0
	ld a,(hl)		;10f4
	ld (bc),a		;10f5
l10f6h:
	inc bc			;10f6
	ld hl,0e0fah		;10f7
	ld a,(de)		;10fa
	res 6,(ix+000h)		;10fb
	cp (hl)			;10ff
	jr z,l1108h		;1100
	set 6,(ix+000h)		;1102
	ld a,(hl)		;1106
	ld (de),a		;1107
l1108h:
	inc de			;1108
	inc hl			;1109
	ld a,(de)		;110a
	res 7,(ix+000h)		;110b
	cp (hl)			;110f
	jr z,l1118h		;1110
	set 7,(ix+000h)		;1112
	ld a,(hl)		;1116
	ld (de),a		;1117
l1118h:
	inc de			;1118
	inc hl			;1119
	res 5,(ix+001h)		;111a
	ld a,(bc)		;111e
	cp (hl)			;111f
	jr z,l1128h		;1120
	set 5,(ix+001h)		;1122
	ld a,(hl)		;1126
	ld (bc),a		;1127
l1128h:
	inc bc			;1128
	ld hl,0e122h		;1129
	ld a,(de)		;112c
	res 0,(ix+001h)		;112d
	cp (hl)			;1131
	jr z,l113ah		;1132
	set 0,(ix+001h)		;1134
	ld a,(hl)		;1138
	ld (de),a		;1139
l113ah:
	inc de			;113a
	inc hl			;113b
	ld a,(de)		;113c
	res 1,(ix+001h)		;113d
	cp (hl)			;1141
	jr z,l114ah		;1142
	set 1,(ix+001h)		;1144
	ld a,(hl)		;1148
	ld (de),a		;1149
l114ah:
	inc de			;114a
	inc hl			;114b
	res 6,(ix+001h)		;114c
l1150h:
	ld a,(bc)		;1150
	cp (hl)			;1151
	jr z,l115ah		;1152
	set 6,(ix+001h)		;1154
	ld a,(hl)		;1158
	ld (bc),a		;1159
l115ah:
	inc bc			;115a
	ret			;115b
	ld e,000h		;115c
	ld hl,0e085h		;115e
	ld c,001h		;1161
	ld a,(hl)		;1163
	or a			;1164
	jr z,l1168h		;1165
	ld a,c			;1167
l1168h:
	or e			;1168
	ld e,a			;1169
	ld hl,0e0adh		;116a
	sla c			;116d
	ld a,(hl)		;116f
	or a			;1170
	jr z,l1174h		;1171
	ld a,c			;1173
l1174h:
	or e			;1174
	ld e,a			;1175
	ld hl,0e0d5h		;1176
	sla c			;1179
	ld a,(hl)		;117b
	or a			;117c
	jr z,l1180h		;117d
	ld a,c			;117f
l1180h:
	or e			;1180
	ld e,a			;1181
	ld hl,0e0fdh		;1182
	sla c			;1185
	ld a,(hl)		;1187
	or a			;1188
	jr z,l118ch		;1189
	ld a,c			;118b
l118ch:
	or e			;118c
	ld e,a			;118d
	ld hl,0e125h		;118e
	sla c			;1191
	ld a,(hl)		;1193
	or a			;1194
	jr z,l1198h		;1195
	ld a,c			;1197
l1198h:
	or e			;1198
	ld e,a			;1199
	ld hl,0e1bfh		;119a
	ld a,(hl)		;119d
	cp e			;119e
	jr z,l11a8h		;119f
	ld (hl),e		;11a1
	ld hl,0e1afh		;11a2
	set 7,(hl)		;11a5
	ret			;11a7
l11a8h:
	ld hl,0e1afh		;11a8
	res 7,(hl)		;11ab
	ret			;11ad
	ld ix,0e1aeh		;11ae
	ld hl,0e1b0h		;11b2
	ld de,09880h		;11b5
	ld b,010h		;11b8
	ld c,001h		;11ba
l11bch:
	ld a,(ix+000h)		;11bc
	and c			;11bf
	push bc			;11c0
	call nz,071d3h		;11c1
	pop bc			;11c4
	inc hl			;11c5
	inc de			;11c6
	rlc c			;11c7
	ld a,b			;11c9
	cp 009h			;11ca
	jr nz,l11d0h		;11cc
	inc ix			;11ce
l11d0h:
	djnz l11bch		;11d0
	ret			;11d2
	ld a,(hl)		;11d3
	ld c,a			;11d4
	ld a,03fh		;11d5
	ld (09000h),a		;11d7
	ld a,c			;11da
	ld (de),a		;11db
	ld a,002h		;11dc
	ld (09000h),a		;11de
	ret			;11e1
	ld hl,0e087h		;11e2
	bit 7,(hl)		;11e5
	jr z,l11f8h		;11e7
	res 7,(hl)		;11e9
	ld hl,0e09eh		;11eb
	ld e,(hl)		;11ee
	inc hl			;11ef
	ld d,(hl)		;11f0
	ex de,hl		;11f1
	ld de,09800h		;11f2
	call 07236h		;11f5
l11f8h:
	ld hl,0e0afh		;11f8
	bit 7,(hl)		;11fb
	jr z,l120eh		;11fd
	res 7,(hl)		;11ff
	ld hl,0e0c6h		;1201
	ld e,(hl)		;1204
	inc hl			;1205
	ld d,(hl)		;1206
	ex de,hl		;1207
	ld de,09820h		;1208
	call 07236h		;120b
l120eh:
	ld hl,0e0d7h		;120e
	bit 7,(hl)		;1211
	jr z,l1224h		;1213
	res 7,(hl)		;1215
	ld hl,0e0eeh		;1217
	ld e,(hl)		;121a
	inc hl			;121b
	ld d,(hl)		;121c
	ex de,hl		;121d
	ld de,09840h		;121e
	call 07236h		;1221
l1224h:
	ld hl,0e0ffh		;1224
	bit 7,(hl)		;1227
	ret z			;1229
	res 7,(hl)		;122a
	ld hl,0e116h		;122c
	ld e,(hl)		;122f
	inc hl			;1230
	ld d,(hl)		;1231
	ex de,hl		;1232
	ld de,09860h		;1233
	ld a,03fh		;1236
	ld (09000h),a		;1238
	xor a			;123b
	ld (0988fh),a		;123c
	ld b,020h		;123f
l1241h:
	ld a,(hl)		;1241
	ld (de),a		;1242
	inc hl			;1243
	inc de			;1244
	djnz l1241h		;1245
	ld hl,0988fh		;1247
	ld de,0e1bfh		;124a
	ld a,(de)		;124d
	ld (hl),a		;124e
	ld a,002h		;124f
	ld (09000h),a		;1251
	ret			;1254
	ld l,c			;1255
	ld (hl),d		;1256
	ld l,a			;1257
	ld (hl),d		;1258
	ld a,h			;1259
	ld (hl),d		;125a
	adc a,e			;125b
	ld (hl),d		;125c
	and b			;125d
	ld (hl),d		;125e
	cp c			;125f
	ld (hl),d		;1260
	cp c			;1261
	ld (hl),d		;1262
	cp c			;1263
	ld (hl),d		;1264
	cp d			;1265
	ld (hl),d		;1266
	ret			;1267
	ld (hl),d		;1268
	pop hl			;1269
	ld bc,l00e4h		;126a
	rlca			;126d
	rst 38h			;126e
	ex (sp),hl		;126f
	ld bc,l00e4h		;1270
	adc a,d			;1273
	nop			;1274
	pop hl			;1275
	inc b			;1276
	ld b,005h		;1277
	inc b			;1279
	inc bc			;127a
	rst 38h			;127b
	ex (sp),hl		;127c
	ld bc,l06e4h		;127d
	add a,c			;1280
	and b			;1281
	jp po,08201h		;1282
	nop			;1285
	ld d,d			;1286
	ld (hl),b		;1287
	inc sp			;1288
	jr nc,$+1		;1289
	pop hl			;128b
	ld bc,l14e4h		;128c
	rlca			;128f
	jp po,07201h		;1290
	nop			;1293
	pop hl			;1294
	ld (bc),a		;1295
	call po,sub_0310h	;1296
	ld (bc),a		;1299
	pop hl			;129a
	ld bc,l06e4h		;129b
	ld (bc),a		;129e
	rst 38h			;129f
	jp po,0e501h		;12a0
	ld a,(bc)		;12a3
	nop			;12a4
	ld b,d			;12a5
	pop bc			;12a6
	or b			;12a7
	ret pe			;12a8
	pop hl			;12a9
	ld bc,l08e4h		;12aa
	ex af,af'		;12ad
l12aeh:
	rlca			;12ae
	ld b,005h		;12af
	inc b			;12b1
	inc bc			;12b2
	ld (bc),a		;12b3
	ld (bc),a		;12b4
	ld bc,l0001h		;12b5
	rst 38h			;12b8
	rst 38h			;12b9
	jp po,0e501h		;12ba
	add hl,bc		;12bd
l12beh:
	inc bc			;12be
	nop			;12bf
	sub e			;12c0
	ret nc			;12c1
	sub (hl)		;12c2
	nop			;12c3
	sub a			;12c4
	nop			;12c5
	sbc a,b			;12c6
	nop			;12c7
	rst 38h			;12c8
	jp po,0a101h		;12c9
	add a,b			;12cc
	push hl			;12cd
	ld a,(bc)		;12ce
	nop			;12cf
l12d0h:
	cp b			;12d0
	pop hl			;12d1
	ld bc,004e4h		;12d2
	rlca			;12d5
	dec b			;12d6
	inc b			;12d7
	inc bc			;12d8
	ld (bc),a		;12d9
	ld bc,0feffh		;12da
	ld (bc),a		;12dd
	ret po			;12de
	ld bc,0f9d7h		;12df
l12e2h:
	di			;12e2
	ld (hl),d		;12e3
	ld sp,hl		;12e4
	cp 072h			;12e5
	rst 38h			;12e7
	cp 002h			;12e8
	ret m			;12ea
	inc bc			;12eb
	ld sp,hl		;12ec
l12edh:
	di			;12ed
	ld (hl),d		;12ee
	ld sp,hl		;12ef
	cp 072h			;12f0
l12f2h:
	rst 38h			;12f2
	jp po,08001h		;12f3
	jr nz,l12edh		;12f6
	jr z,l132ah		;12f8
	ld b,b			;12fa
	ld d,b			;12fb
	or 0fah			;12fc
	ld (hl),b		;12fe
	ld h,b			;12ff
	ld d,b			;1300
	ld (hl),b		;1301
	ld b,b			;1302
	ld h,b			;1303
	ld b,b			;1304
	ld b,b			;1305
	jr nc,$+34		;1306
	jr nc,l133ah		;1308
	jr nz,l134ch		;130a
	djnz l135eh		;130c
	nop			;130e
	ld h,b			;130f
	jp m,l02feh		;1310
	ret po			;1313
	ld bc,l02feh		;1314
	ret m			;1317
	dec d			;1318
	jp po,08001h		;1319
	jr nc,l12aeh		;131c
	ld b,b			;131e
	add a,b			;131f
	ld d,b			;1320
	add a,b			;1321
	ld h,b			;1322
	add a,b			;1323
	ld (hl),b		;1324
	ex de,hl		;1325
	ld (bc),a		;1326
	ld c,080h		;1327
	add a,b			;1329
l132ah:
	ld (hl),b		;132a
	sub b			;132b
	ld d,b			;132c
	and b			;132d
	ld b,b			;132e
	or b			;132f
	jr nc,l12f2h		;1330
	jr nc,l1364h		;1332
	jr nc,$+66		;1334
	jr nc,l1388h		;1336
	jr nc,l139ah		;1338
l133ah:
	jr nc,l13ach		;133a
	jr nz,l12beh		;133c
	jr nz,l12d0h		;133e
	djnz l12e2h		;1340
	djnz $-78		;1342
	rst 38h			;1344
	cp 002h			;1345
	jp po,l0001h		;1347
	nop			;134a
	ld (hl),b		;134b
l134ch:
	ld d,b			;134c
	ld (hl),b		;134d
	ld e,b			;134e
	ex de,hl		;134f
	ex af,af'		;1350
l1351h:
	ld b,020h		;1351
	ld d,b			;1353
	jr nz,l13aeh		;1354
	jr nz,l13a8h		;1356
	jr nz,l13b2h		;1358
	djnz l13ach		;135a
	djnz l13b6h		;135c
l135eh:
	djnz $+82		;135e
	djnz l13bah		;1360
	nop			;1362
	ld d,b			;1363
l1364h:
	nop			;1364
	ld e,b			;1365
	ex de,hl		;1366
l1367h:
	inc b			;1367
	ld b,0ffh		;1368
	cp 002h			;136a
	ret m			;136c
	djnz l1351h		;136d
	ld bc,05080h		;136f
	push af			;1372
	ld e,b			;1373
	ret m			;1374
	ld de,05850h		;1375
	ret m			;1378
	dec d			;1379
	ld d,b			;137a
	ld e,b			;137b
	ret m			;137c
	ld d,050h		;137d
	ld e,b			;137f
	ret m			;1380
	ld (bc),a		;1381
	ld d,b			;1382
	ld e,b			;1383
	ret m			;1384
	inc d			;1385
	ld d,b			;1386
	ld e,b			;1387
l1388h:
	ret m			;1388
	ld (de),a		;1389
	ld d,b			;138a
	ld e,b			;138b
	ld d,b			;138c
	ld e,b			;138d
	ret m			;138e
	dec d			;138f
	or 020h			;1390
	ld d,b			;1392
	push af			;1393
	ld e,b			;1394
	ret m			;1395
	ld d,050h		;1396
	ld e,b			;1398
	ret m			;1399
l139ah:
	ld (bc),a		;139a
	or 010h			;139b
	ld d,b			;139d
	push af			;139e
	ld e,b			;139f
	ret m			;13a0
	inc d			;13a1
	ld d,b			;13a2
	ld e,b			;13a3
	or 0f8h			;13a4
	ld (de),a		;13a6
	nop			;13a7
l13a8h:
	ld d,b			;13a8
	nop			;13a9
	ld e,b			;13aa
	ex de,hl		;13ab
l13ach:
	inc b			;13ac
	ex af,af'		;13ad
l13aeh:
	rst 38h			;13ae
	cp 002h			;13af
	ret c			;13b1
l13b2h:
	ld sp,hl		;13b2
	cp (hl)			;13b3
	ld (hl),e		;13b4
	rst 38h			;13b5
l13b6h:
	cp 002h			;13b6
	ret m			;13b8
	dec d			;13b9
l13bah:
	ld sp,hl		;13ba
	cp (hl)			;13bb
	ld (hl),e		;13bc
	rst 38h			;13bd
	jp po,0b001h		;13be
	sub b			;13c1
	or c			;13c2
	nop			;13c3
	or c			;13c4
	ld h,b			;13c5
	or d			;13c6
	nop			;13c7
	rst 30h			;13c8
	or e			;13c9
	or l			;13ca
	ret m			;13cb
	ld b,0b3h		;13cc
	or d			;13ce
	and c			;13cf
	or 090h			;13d0
	ret po			;13d2
	add a,b			;13d3
	ret nz			;13d4
	ld (hl),b		;13d5
	and b			;13d6
	ld h,b			;13d7
	sub b			;13d8
	ld d,b			;13d9
	add a,b			;13da
	ld b,b			;13db
	ld (hl),b		;13dc
	jr nc,l143fh		;13dd
	jp m,l02feh		;13df
	jp po,08001h		;13e2
	jr nz,l1367h		;13e5
	ld b,b			;13e7
	add a,b			;13e8
	add a,b			;13e9
	add a,c			;13ea
	nop			;13eb
	add a,d			;13ec
	nop			;13ed
l13eeh:
	add a,e			;13ee
	nop			;13ef
	and b			;13f0
	ld b,b			;13f1
	ld h,b			;13f2
	jr nz,l13eeh		;13f3
	rrca			;13f5
	ld (hl),h		;13f6
	rst 38h			;13f7
	cp 002h			;13f8
	ret m			;13fa
	ld (bc),a		;13fb
	jp po,08001h		;13fc
	ld b,b			;13ff
	add a,b			;1400
	add a,b			;1401
	add a,c			;1402
	nop			;1403
	rst 30h			;1404
l1405h:
	add a,d			;1405
	add a,h			;1406
	adc a,b			;1407
	or 070h			;1408
	jr nz,l1405h		;140a
	rrca			;140c
	ld (hl),h		;140d
	rst 38h			;140e
	ld h,b			;140f
	rra			;1410
	jp po,05002h		;1411
	ld e,040h		;1414
	dec e			;1416
	jr nc,l1435h		;1417
	jr nz,l1436h		;1419
	djnz l1437h		;141b
	nop			;141d
	add hl,de		;141e
	jp m,l02feh		;141f
	ret po			;1422
	ld (bc),a		;1423
	cp 002h			;1424
	ret m			;1426
	dec e			;1427
	jp po,0f901h		;1428
	ld d,c			;142b
	ld (hl),h		;142c
	ld sp,hl		;142d
	ld e,d			;142e
	ld (hl),h		;142f
	rst 10h			;1430
	ld sp,hl		;1431
	ld d,c			;1432
	ld (hl),h		;1433
	rst 10h			;1434
l1435h:
	ld sp,hl		;1435
l1436h:
	ld e,d			;1436
l1437h:
	ld (hl),h		;1437
	exx			;1438
	ld sp,hl		;1439
	ld d,c			;143a
	ld (hl),h		;143b
	exx			;143c
	ld sp,hl		;143d
	ld e,d			;143e
l143fh:
	ld (hl),h		;143f
	jp c,051f9h		;1440
	ld (hl),h		;1443
	jp c,05af9h		;1444
	ld (hl),h		;1447
	ld sp,ix		;1448
	ld d,c			;144a
	ld (hl),h		;144b
	ld sp,ix		;144c
	ld e,d			;144e
	ld (hl),h		;144f
	rst 38h			;1450
	and b			;1451
	ld b,b			;1452
	push af			;1453
	ld b,c			;1454
	ld b,d			;1455
	ld b,c			;1456
	ld b,b			;1457
	or 0fah			;1458
	and b			;145a
	dec e			;145b
	push af			;145c
	ld e,01fh		;145d
	ld e,01dh		;145f
	or 0fah			;1461
	cp 002h			;1463
	ret po			;1465
	inc b			;1466
	cp 002h			;1467
	ret m			;1469
	inc c			;146a
	jp po,0f901h		;146b
	adc a,h			;146e
	ld (hl),h		;146f
	ld sp,hl		;1470
	sub l			;1471
	ld (hl),h		;1472
	exx			;1473
	ld sp,hl		;1474
	adc a,h			;1475
	ld (hl),h		;1476
	ret c			;1477
	ld sp,hl		;1478
	sub l			;1479
	ld (hl),h		;147a
	call c,08cf9h		;147b
	ld (hl),h		;147e
	jp c,095f9h		;147f
	ld (hl),h		;1482
	ld sp,ix		;1483
	adc a,h			;1485
	ld (hl),h		;1486
	jp c,095f9h		;1487
	ld (hl),h		;148a
	rst 38h			;148b
	sub b			;148c
	jr nz,$-9		;148d
	dec (hl)		;148f
	ld b,a			;1490
	ld d,a			;1491
	ld (hl),b		;1492
	or 0fah			;1493
	ld h,b			;1495
	ld a,(hl)		;1496
	ld h,b			;1497
	add a,e			;1498
	ld d,b			;1499
	ld d,b			;149a
	ld d,b			;149b
	jr nc,l14deh		;149c
	ld h,000h		;149e
	nop			;14a0
	nop			;14a1
	nop			;14a2
	jp m,l02feh		;14a3
	ret po			;14a6
	ld bc,l01e2h		;14a7
	ld h,c			;14aa
	add a,b			;14ab
	ld h,c			;14ac
	ret nz			;14ad
	ld h,d			;14ae
	nop			;14af
	ld h,d			;14b0
	ld (hl),b		;14b1
	nop			;14b2
	nop			;14b3
	ex de,hl		;14b4
	inc b			;14b5
	inc c			;14b6
	ld h,e			;14b7
	nop			;14b8
	ld h,e			;14b9
	add a,b			;14ba
	ld h,h			;14bb
	nop			;14bc
	ld e,b			;14bd
	nop			;14be
	ld b,e			;14bf
	nop			;14c0
	inc sp			;14c1
	add a,b			;14c2
	inc h			;14c3
	nop			;14c4
	jr l14c7h		;14c5
l14c7h:
	ex de,hl		;14c7
	ld (bc),a		;14c8
	ex af,af'		;14c9
	rst 38h			;14ca
	cp 002h			;14cb
	ret m			;14cd
	ld a,(de)		;14ce
	jp po,0c101h		;14cf
	add a,b			;14d2
	pop bc			;14d3
	ret nz			;14d4
	jp nz,0c200h		;14d5
	ld (hl),b		;14d8
	nop			;14d9
	nop			;14da
	ex de,hl		;14db
	inc bc			;14dc
	inc c			;14dd
l14deh:
	jp po,0a302h		;14de
	nop			;14e1
l14e2h:
	and e			;14e2
	add a,b			;14e3
l14e4h:
	and h			;14e4
	nop			;14e5
	rst 30h			;14e6
	and l			;14e7
	and (hl)		;14e8
	xor b			;14e9
	or 073h			;14ea
	nop			;14ec
	ld h,e			;14ed
	add a,b			;14ee
	ld d,h			;14ef
	nop			;14f0
l14f1h:
	rst 30h			;14f1
	ld d,l			;14f2
	ld b,(hl)		;14f3
	ld c,b			;14f4
	or 0ffh			;14f5
	cp 002h			;14f7
	ret po			;14f9
	ld bc,l02feh		;14fa
	ret m			;14fd
	jr z,l14e2h		;14fe
	ld bc,040b1h		;1500
	or c			;1503
	sub b			;1504
	or c			;1505
	defb 0fdh,0b2h,071h ;illegal sequence	;1506
	or e			;1509
	dec c			;150a
	or e			;150b
	ret nc			;150c
	or h			;150d
	call nz,0f5b5h		;150e
	nop			;1511
	nop			;1512
	ex de,hl		;1513
	ld (bc),a		;1514
	inc d			;1515
	ld sp,hl		;1516
	ld hl,(0d675h)		;1517
	ld sp,hl		;151a
	ld hl,(0d875h)		;151b
	ld sp,hl		;151e
	ld hl,(0da75h)		;151f
	ld sp,hl		;1522
	ld hl,(0dc75h)		;1523
	ld sp,hl		;1526
	ld hl,(0ff75h)		;1527
	or b			;152a
	ld a,b			;152b
l152ch:
	or b			;152c
	cp e			;152d
	or b			;152e
	jp pe,024b1h		;152f
	or c			;1532
	ld l,(hl)		;1533
	or c			;1534
	ret			;1535
	or e			;1536
	nop			;1537
	or h			;1538
	jr nc,l14f1h		;1539
	nop			;153b
	cp b			;153c
	nop			;153d
	jp m,l02feh		;153e
	ret po			;1541
	ld (bc),a		;1542
	ret c			;1543
	ld sp,hl		;1544
	ld d,(hl)		;1545
	ld (hl),l		;1546
	ld sp,hl		;1547
	ld a,b			;1548
	ld (hl),l		;1549
	rst 38h			;154a
	cp 002h			;154b
	ret m			;154d
	dec d			;154e
	ld sp,hl		;154f
	ld d,(hl)		;1550
	ld (hl),l		;1551
	ld sp,hl		;1552
	ld a,b			;1553
	ld (hl),l		;1554
	rst 38h			;1555
	jp po,0c101h		;1556
	nop			;1559
	push af			;155a
	djnz l157dh		;155b
	jr nc,l159fh		;155d
	nop			;155f
	or 0c0h			;1560
	ret p			;1562
	ret nz			;1563
	ret po			;1564
	ret nz			;1565
	ret nz			;1566
	ret nz			;1567
	or b			;1568
	ret nz			;1569
	ret po			;156a
	ret nz			;156b
	ret nc			;156c
l156dh:
	push af			;156d
	ret nz			;156e
	or b			;156f
	and b			;1570
	ret nz			;1571
	or b			;1572
l1573h:
	and b			;1573
	sub b			;1574
	add a,b			;1575
	or 0fah			;1576
	ld b,c			;1578
	nop			;1579
	ld b,b			;157a
	ret p			;157b
	ld b,b			;157c
l157dh:
	ret po			;157d
	ld b,b			;157e
	ret nz			;157f
	ld b,b			;1580
	or b			;1581
	ld b,b			;1582
	ret po			;1583
	ld b,b			;1584
	ret nc			;1585
	ld b,b			;1586
	ret nz			;1587
	ld b,b			;1588
	or b			;1589
	jr nc,l152ch		;158a
	push af			;158c
	ret nz			;158d
	or b			;158e
	and b			;158f
	sub b			;1590
	add a,b			;1591
	or 0fah			;1592
	cp 002h			;1594
	ret po			;1596
	ld (bc),a		;1597
	cp 002h			;1598
	ret m			;159a
	rla			;159b
	jp po,0b201h		;159c
l159fh:
	add a,b			;159f
	or d			;15a0
	nop			;15a1
	or c			;15a2
	and b			;15a3
	or c			;15a4
	ld h,b			;15a5
	ld sp,hl		;15a6
	cp d			;15a7
	ld (hl),l		;15a8
	sub 0f9h		;15a9
	cp d			;15ab
	ld (hl),l		;15ac
	rst 10h			;15ad
	ld sp,hl		;15ae
	cp d			;15af
	ld (hl),l		;15b0
	ret c			;15b1
	ld sp,hl		;15b2
	cp d			;15b3
	ld (hl),l		;15b4
	jp c,0baf9h		;15b5
	ld (hl),l		;15b8
	rst 38h			;15b9
	or c			;15ba
	jr nz,l156dh		;15bb
	ret po			;15bd
l15beh:
	push af			;15be
	and b			;15bf
	ld (hl),b		;15c0
	ld d,b			;15c1
	jr nc,$+42		;15c2
	jr nz,l15deh		;15c4
	djnz l15beh		;15c6
	jp m,l02feh		;15c8
	jp po,0f903h		;15cb
	pop hl			;15ce
	ld (hl),l		;15cf
	sub 0f9h		;15d0
	pop hl			;15d2
	ld (hl),l		;15d3
	rst 10h			;15d4
	ld sp,hl		;15d5
	pop hl			;15d6
	ld (hl),l		;15d7
	ret c			;15d8
	ld sp,hl		;15d9
	pop hl			;15da
	ld (hl),l		;15db
	exx			;15dc
	ld sp,hl		;15dd
l15deh:
	pop hl			;15de
	ld (hl),l		;15df
	rst 38h			;15e0
l15e1h:
	or d			;15e1
	nop			;15e2
	or c			;15e3
	nop			;15e4
	or b			;15e5
	add a,b			;15e6
	push af			;15e7
	ld b,b			;15e8
	jr nz,l15e1h		;15e9
	jp m,l02feh		;15eb
	ret m			;15ee
	inc b			;15ef
	jp po,0b001h		;15f0
	add a,b			;15f3
	or b			;15f4
	and b			;15f5
	or b			;15f6
	or b			;15f7
	or c			;15f8
l15f9h:
	nop			;15f9
	or c			;15fa
	add a,b			;15fb
	or d			;15fc
	nop			;15fd
	or d			;15fe
	add a,b			;15ff
	or e			;1600
	nop			;1601
	ret m			;1602
	ld a,(bc)		;1603
	or d			;1604
	nop			;1605
	or c			;1606
	ret po			;1607
	or c			;1608
	ret p			;1609
	push af			;160a
	ret nz			;160b
	or b			;160c
	and b			;160d
	sub b			;160e
	add a,b			;160f
	ld (hl),b		;1610
	ld h,b			;1611
	ld d,b			;1612
	ld b,b			;1613
	jr nc,l1636h		;1614
	djnz l1618h		;1616
l1618h:
	or 0b0h			;1618
	call p,0f0b0h		;161a
	or b			;161d
	ret po			;161e
	or b			;161f
	ret nc			;1620
l1621h:
	push af			;1621
	ret nz			;1622
	or b			;1623
	and b			;1624
	sbc a,b			;1625
	sub b			;1626
	adc a,b			;1627
	add a,b			;1628
	ld a,b			;1629
	ld (hl),b		;162a
	ld l,b			;162b
	ld h,b			;162c
	ld e,b			;162d
	ld d,b			;162e
	ld c,h			;162f
	ld c,b			;1630
	ld b,h			;1631
	ld b,b			;1632
	inc a			;1633
	jr c,l166ah		;1634
l1636h:
	jr nc,l1666h		;1636
	inc l			;1638
	ld hl,(02628h)		;1639
	inc h			;163c
	ld (0f620h),hl		;163d
	rst 38h			;1640
	cp 002h			;1641
	ex (sp),hl		;1643
	ld bc,l0fe4h		;1644
	rst 10h			;1647
	ld sp,hl		;1648
	ld d,(hl)		;1649
	halt			;164a
	rst 38h			;164b
	cp 002h			;164c
	ret m			;164e
	dec c			;164f
	jp po,0f901h		;1650
	ld d,(hl)		;1653
	halt			;1654
	rst 38h			;1655
	or b			;1656
	add a,b			;1657
	and b			;1658
	ld b,b			;1659
	sub b			;165a
	add a,b			;165b
	ld (hl),b		;165c
	jr nz,l1621h		;165d
	ld bc,l00c2h		;165f
	rst 30h			;1662
	or h			;1663
	or l			;1664
	or (hl)			;1665
l1666h:
	or a			;1666
	cp b			;1667
	cp c			;1668
	cp d			;1669
l166ah:
	xor e			;166a
	xor h			;166b
	or 0fah			;166c
	rst 28h			;166e
	ld (bc),a		;166f
	cp 001h			;1670
	jp (hl)			;1672
	ld bc,l0ceah		;1673
	pop de			;1676
l1677h:
	call pe,0ed00h		;1677
	ld bc,l0488h		;167a
	ld (hl),h		;167d
	ld b,h			;167e
	ld (hl),h		;167f
	defb 0edh ;next byte illegal after ed	;1680
l1681h:
	ld bc,0d023h		;1681
	add hl,bc		;1684
	rst 38h			;1685
l1686h:
	cp 002h			;1686
	ret po			;1688
	ld (bc),a		;1689
	cp 002h			;168a
	ret m			;168c
	dec d			;168d
	jp po,06001h		;168e
	ld e,b			;1691
	ld h,b			;1692
	ld h,b			;1693
	add a,b			;1694
l1695h:
	ld l,c			;1695
	push af			;1696
	ld (hl),b		;1697
	ld a,b			;1698
	add a,b			;1699
	ld (hl),b		;169a
	ld a,b			;169b
	add a,b			;169c
	adc a,b			;169d
	sub b			;169e
l169fh:
	add a,b			;169f
	or 070h			;16a0
	adc a,b			;16a2
	ld h,b			;16a3
	sub b			;16a4
	ld h,b			;16a5
	sbc a,b			;16a6
	ld h,b			;16a7
	and b			;16a8
	ld d,b			;16a9
	sub b			;16aa
	ld d,b			;16ab
	sbc a,b			;16ac
	ld d,b			;16ad
	and b			;16ae
	ld b,b			;16af
	xor b			;16b0
	ld b,b			;16b1
	or b			;16b2
	jr nc,$-70		;16b3
	jr nc,l1677h		;16b5
	jr nz,l1681h		;16b7
	jr nz,$-46		;16b9
	djnz l1695h		;16bb
	djnz l169fh		;16bd
	rst 38h			;16bf
	cp 002h			;16c0
	jp po,0a201h		;16c2
	ret p			;16c5
	and d			;16c6
	ret nc			;16c7
l16c8h:
	push af			;16c8
	ret nz			;16c9
	or b			;16ca
	ld (hl),b		;16cb
	ld d,b			;16cc
	sub b			;16cd
	ld (hl),b		;16ce
	ld d,b			;16cf
	jr nc,l16c8h		;16d0
l16d2h:
	or d			;16d2
	djnz l1686h		;16d3
	ret p			;16d5
	or c			;16d6
	ret po			;16d7
	or c			;16d8
	ret nc			;16d9
	push af			;16da
	ret nz			;16db
	or b			;16dc
	and b			;16dd
	sub b			;16de
	add a,b			;16df
l16e0h:
	or 0ebh			;16e0
	inc bc			;16e2
	rra			;16e3
	ld sp,hl		;16e4
l16e5h:
	ld a,077h		;16e5
	add a,d			;16e7
	ld d,b			;16e8
	add a,d			;16e9
	jr nc,l16e5h		;16ea
	ld c,h			;16ec
	ld (hl),a		;16ed
	ld sp,hl		;16ee
	ld d,l			;16ef
	ld (hl),a		;16f0
	sub 0f9h		;16f1
	ld a,077h		;16f3
	ld (hl),d		;16f5
	ld d,b			;16f6
	ld (hl),d		;16f7
	jr nc,l16d2h		;16f8
	ld sp,hl		;16fa
	ld c,h			;16fb
	ld (hl),a		;16fc
	in a,(0f9h)		;16fd
	ld d,l			;16ff
	ld (hl),a		;1700
	rst 38h			;1701
	cp 002h			;1702
	ret m			;1704
	ld a,(bc)		;1705
	jp po,0c201h		;1706
	ret nc			;1709
	push af			;170a
	ret nz			;170b
	and b			;170c
	add a,b			;170d
	ld h,b			;170e
	ld b,b			;170f
	jr nz,$-8		;1710
	pop bc			;1712
	ret p			;1713
	pop bc			;1714
	ret po			;1715
	pop bc			;1716
	ret nc			;1717
	pop bc			;1718
	ret nz			;1719
	pop bc			;171a
	ret nc			;171b
	push af			;171c
	ret nz			;171d
	or b			;171e
	and b			;171f
	sub b			;1720
	add a,b			;1721
	ld (hl),b		;1722
	ld h,b			;1723
	or 0ebh			;1724
	inc bc			;1726
	ld hl,05ef9h		;1727
	ld (hl),a		;172a
	ld sp,hl		;172b
	ld l,e			;172c
	ld (hl),a		;172d
	ld sp,hl		;172e
	halt			;172f
	ld (hl),a		;1730
	ret c			;1731
	ld sp,hl		;1732
	ld e,(hl)		;1733
	ld (hl),a		;1734
	exx			;1735
	ld sp,hl		;1736
	ld l,e			;1737
	ld (hl),a		;1738
	jp c,076f9h		;1739
	ld (hl),a		;173c
	rst 38h			;173d
	add a,d			;173e
	ret p			;173f
	add a,d			;1740
	ret nc			;1741
	add a,d			;1742
	or b			;1743
	push af			;1744
	sub b			;1745
	ld (hl),b		;1746
	ld d,b			;1747
	sub b			;1748
	ld (hl),b		;1749
	or 0fah			;174a
	sub d			;174c
	djnz l16e0h		;174d
	ret p			;174f
	sub c			;1750
	ret po			;1751
	sub c			;1752
	ret nc			;1753
	jp m,0c091h		;1754
	push af			;1757
	or b			;1758
	and b			;1759
	sub b			;175a
	add a,b			;175b
	or 0fah			;175c
l175eh:
	and d			;175e
	ret nc			;175f
	push af			;1760
	ret nz			;1761
	and b			;1762
	add a,b			;1763
	ld h,b			;1764
	ld b,b			;1765
	jr nz,l175eh		;1766
	and c			;1768
	ret p			;1769
	jp m,0e0a1h		;176a
	and c			;176d
	ret nc			;176e
	push af			;176f
	ret nz			;1770
	or b			;1771
	and b			;1772
	sub b			;1773
	or 0fah			;1774
	and c			;1776
	add a,b			;1777
	push af			;1778
	ld (hl),b		;1779
	ld h,b			;177a
	ld d,b			;177b
	ld b,b			;177c
	or 0fah			;177d
	cp 002h			;177f
	ex (sp),hl		;1781
	ex af,af'		;1782
	call po,09000h		;1783
	ld b,b			;1786
	push af			;1787
	ccf			;1788
	ld a,03dh		;1789
	inc a			;178b
	dec sp			;178c
	ld a,(03839h)		;178d
	or 080h			;1790
	scf			;1792
	ld (hl),b		;1793
	ld (hl),060h		;1794
	dec (hl)		;1796
	ld d,b			;1797
	inc (hl)		;1798
	ld b,b			;1799
	inc sp			;179a
	rst 38h			;179b
	cp 001h			;179c
	ret m			;179e
	jr nz,$-21		;179f
	ld bc,l0feah		;17a1
	out (090h),a		;17a4
	ld sp,hl		;17a6
	call po,05077h		;17a7
	ld b,b			;17aa
	jr nc,l17cdh		;17ab
	djnz l17afh		;17ad
l17afh:
	out (0b0h),a		;17af
	ld sp,hl		;17b1
	call po,03077h		;17b2
	jr nz,$+18		;17b5
	nop			;17b7
	out (0b0h),a		;17b8
	jp nc,l1000h		;17ba
	jr nz,l17efh		;17bd
	ld b,b			;17bf
	jr nc,$+34		;17c0
	djnz l17c4h		;17c2
l17c4h:
	ex de,hl		;17c4
	inc b			;17c5
	ld c,0f9h		;17c6
	defb 0edh ;next byte illegal after ed	;17c8
	ld (hl),a		;17c9
	jp pe,0f90eh		;17ca
l17cdh:
	defb 0edh ;next byte illegal after ed	;17cd
	ld (hl),a		;17ce
	jp pe,0f90dh		;17cf
	defb 0edh ;next byte illegal after ed	;17d2
	ld (hl),a		;17d3
	jp pe,0f90bh		;17d4
	defb 0edh ;next byte illegal after ed	;17d7
	ld (hl),a		;17d8
	jp pe,0f90ah		;17d9
	or 077h			;17dc
	jp pe,0f908h		;17de
	or 077h			;17e1
	rst 38h			;17e3
	and b			;17e4
	or b			;17e5
	jp nc,l1000h		;17e6
	jr nz,l181bh		;17e9
	ld b,b			;17eb
	jp m,02010h		;17ec
l17efh:
	jr nc,l1831h		;17ef
	jr nc,l1813h		;17f1
	djnz l17f5h		;17f3
l17f5h:
	jp m,02010h		;17f5
	jr nc,l183ah		;17f8
	jr nc,l181ch		;17fa
	jp m,l02feh		;17fc
	jp po,0d801h		;17ff
	ld sp,hl		;1802
	dec d			;1803
	ld a,b			;1804
	sub 0f9h		;1805
	dec d			;1807
	ld a,b			;1808
	ld sp,hl		;1809
	dec d			;180a
	ld a,b			;180b
	rst 10h			;180c
	ld sp,hl		;180d
	dec d			;180e
	ld a,b			;180f
	jp c,l15f9h		;1810
l1813h:
	ld a,b			;1813
	rst 38h			;1814
	ld (hl),e		;1815
	ld b,b			;1816
	ld (hl),e		;1817
	nop			;1818
	sub d			;1819
	ret nz			;181a
l181bh:
	sub d			;181b
l181ch:
	add a,b			;181c
	sub d			;181d
	ld b,b			;181e
	add a,d			;181f
	nop			;1820
	jp m,l02feh		;1821
	ret m			;1824
	ld b,0e2h		;1825
	ld bc,0f9d7h		;1827
	jr c,l18a4h		;182a
	ld sp,hl		;182c
	jr c,l18a7h		;182d
	sub 0f9h		;182f
l1831h:
	jr c,l18abh		;1831
	jp c,038f9h		;1833
	ld a,b			;1836
	rst 38h			;1837
	or d			;1838
	nop			;1839
l183ah:
	or c			;183a
	ret nc			;183b
	pop bc			;183c
	and b			;183d
	pop bc			;183e
	add a,b			;183f
	or c			;1840
	ld h,b			;1841
	or c			;1842
	ld b,b			;1843
	jp m,l02feh		;1844
	jp po,0d601h		;1847
	ld sp,hl		;184a
	add a,l			;184b
	ld a,b			;184c
	ld (hl),c		;184d
	nop			;184e
	ret c			;184f
	ld sp,hl		;1850
	add a,l			;1851
	ld a,b			;1852
	pop hl			;1853
	inc bc			;1854
	call po,00511h		;1855
	call po,sub_0615h	;1858
	call po,sub_0819h	;185b
	call po,sub_071bh	;185e
	call po,sub_061fh	;1861
	dec b			;1864
	ld (bc),a		;1865
	rst 38h			;1866
	cp 002h			;1867
	ret m			;1869
	inc bc			;186a
	ld sp,hl		;186b
	add a,l			;186c
	ld a,b			;186d
	ret m			;186e
	dec b			;186f
	sub c			;1870
	nop			;1871
	ld sp,hl		;1872
	add a,l			;1873
	ld a,b			;1874
	jp po,0f801h		;1875
	inc b			;1878
	add a,c			;1879
	nop			;187a
	rst 30h			;187b
	add a,d			;187c
	ld (hl),h		;187d
	adc a,b			;187e
	ld (hl),c		;187f
	ld (hl),d		;1880
	ld h,h			;1881
	ld l,b			;1882
	or 0ffh			;1883
	jp po,09101h		;1885
	ld d,b			;1888
	sub c			;1889
	and b			;188a
	sub d			;188b
l188ch:
	nop			;188c
	push af			;188d
	ld b,b			;188e
	add a,b			;188f
	ret nz			;1890
	or 093h			;1891
	nop			;1893
	sub e			;1894
	add a,b			;1895
	sub h			;1896
	nop			;1897
	jp m,l02feh		;1898
	ex (sp),hl		;189b
	ld bc,l08e4h		;189c
	ret c			;189f
	ld sp,hl		;18a0
	ret nz			;18a1
	ld a,b			;18a2
	exx			;18a3
l18a4h:
	ld sp,hl		;18a4
	rst 8			;18a5
	ld a,b			;18a6
l18a7h:
	ex (sp),hl		;18a7
	ld (bc),a		;18a8
	exx			;18a9
	ld sp,hl		;18aa
l18abh:
	ret po			;18ab
	ld a,b			;18ac
	rst 38h			;18ad
	cp 002h			;18ae
	ret m			;18b0
	ld (l01e2h),hl		;18b1
	ld sp,hl		;18b4
	ret nz			;18b5
	ld a,b			;18b6
	ld sp,hl		;18b7
	rst 8			;18b8
	ld a,b			;18b9
	jp po,0f902h		;18ba
	ret po			;18bd
	ld a,b			;18be
	rst 38h			;18bf
	and c			;18c0
	nop			;18c1
	rst 30h			;18c2
	and d			;18c3
	and e			;18c4
	sub h			;18c5
	sub l			;18c6
	sub (hl)		;18c7
	add a,a			;18c8
	ld a,b			;18c9
	or 0ebh			;18ca
	ld (bc),a		;18cc
	add hl,bc		;18cd
l18ceh:
	jp m,l00b6h		;18ce
	or d			;18d1
	add a,b			;18d2
	or e			;18d3
l18d4h:
	nop			;18d4
	or e			;18d5
	add a,b			;18d6
	and h			;18d7
	nop			;18d8
	and h			;18d9
	add a,b			;18da
	and l			;18db
	nop			;18dc
	and l			;18dd
	add a,b			;18de
	jp m,l00b3h		;18df
	push af			;18e2
	ld b,b			;18e3
	add a,b			;18e4
	ret nz			;18e5
	or 094h			;18e6
	nop			;18e8
	push af			;18e9
	ld b,b			;18ea
	add a,b			;18eb
	ret nz			;18ec
	or 075h			;18ed
	nop			;18ef
	ld (hl),l		;18f0
	ld b,b			;18f1
	ld h,l			;18f2
	add a,b			;18f3
	ld h,l			;18f4
	ret nz			;18f5
	ld d,(hl)		;18f6
	nop			;18f7
	ld d,(hl)		;18f8
	ld b,b			;18f9
	ld d,(hl)		;18fa
	add a,b			;18fb
	ld b,(hl)		;18fc
	ret nz			;18fd
	ld b,a			;18fe
	nop			;18ff
	scf			;1900
	ld h,b			;1901
	scf			;1902
	add a,b			;1903
	scf			;1904
	ret nz			;1905
	jr z,l1908h		;1906
l1908h:
	jr z,$+66		;1908
	jr l188ch		;190a
	jr l18ceh		;190c
	add hl,bc		;190e
	nop			;190f
	add hl,bc		;1910
	ld b,b			;1911
	jp m,l02feh		;1912
	jp po,05002h		;1915
	jr nz,$+66		;1918
	ld b,b			;191a
	ld b,b			;191b
	jr nc,$+66		;191c
	jr nz,l1960h		;191e
	jr nz,$-19		;1920
	ld (bc),a		;1922
	inc c			;1923
	jp po,03004h		;1924
	jr nz,$-28		;1927
	add hl,bc		;1929
	djnz l194ch		;192a
	rst 38h			;192c
	cp 002h			;192d
	ret m			;192f
	jr $-28			;1930
	ld bc,l0050h+1		;1932
	ld d,b			;1935
	ld b,b			;1936
	ld d,c			;1937
	nop			;1938
	ld d,d			;1939
	nop			;193a
	ld d,b			;193b
	ld h,b			;193c
	ex de,hl		;193d
	ld (bc),a		;193e
	inc c			;193f
	ld h,d			;1940
	nop			;1941
	ld sp,hl		;1942
	ld c,(hl)		;1943
	ld a,c			;1944
	sub 0f9h		;1945
	ld c,(hl)		;1947
	ld a,c			;1948
	ld de,l0080h		;1949
l194ch:
	ret nz			;194c
	rst 38h			;194d
	ld b,c			;194e
	add a,b			;194f
	ld b,b			;1950
	ret nz			;1951
	jr nc,l18d4h		;1952
	ld d,b			;1954
	ld h,b			;1955
	ld d,e			;1956
	nop			;1957
	jp m,l02feh		;1958
	ret po			;195b
	ld bc,0f9d7h		;195c
	ld l,d			;195f
l1960h:
	ld a,c			;1960
	rst 38h			;1961
	cp 002h			;1962
	ret m			;1964
	dec c			;1965
	ld sp,hl		;1966
	ld l,d			;1967
	ld a,c			;1968
	rst 38h			;1969
	jp po,0c101h		;196a
	ld b,b			;196d
	pop bc			;196e
	sub b			;196f
	pop bc			;1970
	ret p			;1971
	jp nz,0c371h		;1972
	dec c			;1975
	jp 0c4d0h		;1976
	call nz,0f5c5h		;1979
l197ch:
	or l			;197c
	push af			;197d
	and l			;197e
	push af			;197f
	sub l			;1980
	push af			;1981
	add a,l			;1982
	push af			;1983
	add a,c			;1984
	ld b,b			;1985
	add a,c			;1986
	sub b			;1987
	add a,c			;1988
	ret p			;1989
	add a,d			;198a
	ld (hl),c		;198b
	add a,e			;198c
	dec c			;198d
	add a,e			;198e
	ret nc			;198f
	jp m,l02feh		;1990
	ret m			;1993
	add hl,de		;1994
	jp po,0a101h		;1995
	ld b,b			;1998
	and c			;1999
	sub b			;199a
	and c			;199b
	ret p			;199c
	and d			;199d
	ld (hl),c		;199e
	and e			;199f
	dec c			;19a0
	and e			;19a1
	ret nc			;19a2
	and h			;19a3
	call nz,0f5a5h		;19a4
	sub l			;19a7
	nop			;19a8
	jp po,08502h		;19a9
	push af			;19ac
	add a,l			;19ad
	nop			;19ae
	ld (hl),l		;19af
	push af			;19b0
	ld (hl),l		;19b1
	jr nc,l1a19h		;19b2
	push af			;19b4
	ld h,l			;19b5
	jr nc,$+87		;19b6
	push af			;19b8
	ld d,l			;19b9
	jr nc,l1a01h		;19ba
	push af			;19bc
	ld b,l			;19bd
	jr nc,l19f5h		;19be
	push af			;19c0
	dec (hl)		;19c1
	jr nc,l19e9h		;19c2
	push af			;19c4
	dec h			;19c5
	jr nc,l19ddh		;19c6
	push af			;19c8
	dec d			;19c9
	jr nc,l19d1h		;19ca
	push af			;19cc
	dec b			;19cd
	jr nc,l19d5h		;19ce
	push af			;19d0
l19d1h:
	rst 38h			;19d1
	cp 002h			;19d2
	ex (sp),hl		;19d4
l19d5h:
	ld bc,047f9h		;19d5
	ld a,d			;19d8
	call po,0a30ah		;19d9
	nop			;19dc
l19ddh:
	ld sp,hl		;19dd
	ld b,a			;19de
	ld a,d			;19df
	call po,0a30ah		;19e0
	nop			;19e3
	call po,0f91ah		;19e4
	ld e,(hl)		;19e7
	ld a,d			;19e8
l19e9h:
	and h			;19e9
	ld a,(bc)		;19ea
l19ebh:
	sub e			;19eb
	nop			;19ec
	ld sp,hl		;19ed
	ld b,a			;19ee
	ld a,d			;19ef
	call nz,0f90ah		;19f0
	ld e,(hl)		;19f3
	ld a,d			;19f4
l19f5h:
	call po,08013h		;19f5
	ld c,h			;19f8
	add a,b			;19f9
	jr c,l197ch		;19fa
	ld c,(hl)		;19fc
	jp po,08401h		;19fd
	nop			;1a00
l1a01h:
	ex (sp),hl		;1a01
	ld bc,l0ae4h		;1a02
	ld sp,hl		;1a05
	ld (hl),e		;1a06
	ld a,d			;1a07
l1a08h:
	ex (sp),hl		;1a08
	ld bc,l0ae4h		;1a09
	sub 0f9h		;1a0c
	ld (hl),e		;1a0e
	ld a,d			;1a0f
	ex (sp),hl		;1a10
	ld bc,l0ae4h		;1a11
	exx			;1a14
	ld sp,hl		;1a15
	ld (hl),e		;1a16
	ld a,d			;1a17
	ex (sp),hl		;1a18
l1a19h:
	ld bc,l0ae4h		;1a19
	jp c,073f9h		;1a1c
	ld a,d			;1a1f
	rst 38h			;1a20
	cp 002h			;1a21
	ret m			;1a23
	jr z,l1a08h		;1a24
	ld bc,086f9h		;1a26
	ld a,d			;1a29
	ld sp,hl		;1a2a
	add a,(hl)		;1a2b
	ld a,d			;1a2c
	sub 0f9h		;1a2d
	sub a			;1a2f
	ld a,d			;1a30
	ld sp,hl		;1a31
	add a,(hl)		;1a32
	ld a,d			;1a33
l1a34h:
	ld sp,hl		;1a34
	sub a			;1a35
	ld a,d			;1a36
	ld sp,hl		;1a37
	sub a			;1a38
	ld a,d			;1a39
	exx			;1a3a
	ld sp,hl		;1a3b
	sub a			;1a3c
	ld a,d			;1a3d
	jp c,097f9h		;1a3e
	ld a,d			;1a41
	in a,(0f9h)		;1a42
	sub a			;1a44
	ld a,d			;1a45
	rst 38h			;1a46
	call po,0b30ah		;1a47
	nop			;1a4a
	call po,09015h		;1a4b
	jr c,l1a34h		;1a4e
	inc de			;1a50
	sub b			;1a51
	ld c,h			;1a52
	sub b			;1a53
	jr c,$-110		;1a54
	ld c,(hl)		;1a56
	jp po,09401h		;1a57
	nop			;1a5a
	ex (sp),hl		;1a5b
	ld bc,0a3fah		;1a5c
	nop			;1a5f
	call po,08015h		;1a60
	jr c,$-26		;1a63
	inc de			;1a65
	add a,b			;1a66
	ld c,h			;1a67
	add a,b			;1a68
	jr c,l19ebh		;1a69
	ld c,(hl)		;1a6b
	jp po,08401h		;1a6c
	nop			;1a6f
	ex (sp),hl		;1a70
	ld bc,093fah		;1a71
	nop			;1a74
	call po,07015h		;1a75
	jr c,$-26		;1a78
	inc de			;1a7a
	ld (hl),b		;1a7b
	ld c,h			;1a7c
	ld (hl),b		;1a7d
	jr c,l1af0h		;1a7e
	ld c,(hl)		;1a80
	jp po,07401h		;1a81
	nop			;1a84
	jp m,l0093h		;1a85
	ld (hl),c		;1a88
	jr c,l1afch		;1a89
	ld c,h			;1a8b
	ld (hl),d		;1a8c
	jr c,$+117		;1a8d
	ld c,(hl)		;1a8f
	ld (hl),h		;1a90
l1a91h:
	nop			;1a91
	add a,e			;1a92
l1a93h:
	nop			;1a93
	ld h,l			;1a94
	jr c,l1a91h		;1a95
	ld (hl),e		;1a97
	nop			;1a98
	ld h,c			;1a99
	jr c,l1afdh		;1a9a
	ld c,h			;1a9c
	ld h,d			;1a9d
	jr c,$+101		;1a9e
	ld c,(hl)		;1aa0
	ld d,h			;1aa1
l1aa2h:
	nop			;1aa2
	ld h,e			;1aa3
	nop			;1aa4
	ld d,l			;1aa5
	jr c,l1aa2h		;1aa6
	cp 002h			;1aa8
	ret po			;1aaa
	ld bc,l02feh		;1aab
	ret m			;1aae
	jr z,l1a93h		;1aaf
	ld bc,04091h		;1ab1
	sub c			;1ab4
	sub b			;1ab5
	sub c			;1ab6
	ret p			;1ab7
	sub d			;1ab8
	ld (hl),c		;1ab9
	sub e			;1aba
	dec c			;1abb
	sub e			;1abc
	ret nc			;1abd
	sub h			;1abe
	call nz,0f595h		;1abf
	nop			;1ac2
	nop			;1ac3
	add a,l			;1ac4
	push af			;1ac5
	add a,d			;1ac6
	ld d,b			;1ac7
	add a,c			;1ac8
	ld b,b			;1ac9
	ex de,hl		;1aca
	ex af,af'		;1acb
	ex af,af'		;1acc
	ld h,l			;1acd
	push af			;1ace
	ld h,d			;1acf
	ld d,b			;1ad0
	ld h,c			;1ad1
	ld b,b			;1ad2
	ex de,hl		;1ad3
	ld b,008h		;1ad4
	ld b,l			;1ad6
	push af			;1ad7
	ld b,d			;1ad8
	ld d,b			;1ad9
	ld b,c			;1ada
	ld b,b			;1adb
	ex de,hl		;1adc
	inc b			;1add
	ex af,af'		;1ade
	dec (hl)		;1adf
	push af			;1ae0
	ld (03150h),a		;1ae1
	ld b,b			;1ae4
	ex de,hl		;1ae5
	ld (bc),a		;1ae6
	ex af,af'		;1ae7
	dec d			;1ae8
	push af			;1ae9
	ld (de),a		;1aea
	ld d,b			;1aeb
	ld de,0eb40h		;1aec
	ld (bc),a		;1aef
l1af0h:
	ex af,af'		;1af0
	rst 38h			;1af1
	cp 002h			;1af2
	ex (sp),hl		;1af4
	ld bc,l00e4h		;1af5
	add a,b			;1af8
	inc e			;1af9
	add a,b			;1afa
	inc h			;1afb
l1afch:
	add a,b			;1afc
l1afdh:
	inc (hl)		;1afd
	ld (hl),b		;1afe
	inc h			;1aff
	ld (hl),b		;1b00
	ld (03670h),hl		;1b01
	add a,b			;1b04
	inc a			;1b05
	add a,b			;1b06
	ld b,b			;1b07
	ld (hl),b		;1b08
	inc e			;1b09
	ex de,hl		;1b0a
	inc bc			;1b0b
	inc d			;1b0c
	ld h,b			;1b0d
	inc h			;1b0e
	ld h,b			;1b0f
	inc (hl)		;1b10
	ld d,b			;1b11
	inc h			;1b12
	ld d,b			;1b13
	ld (03650h),hl		;1b14
	ld h,b			;1b17
	inc a			;1b18
	ld h,b			;1b19
	ld b,b			;1b1a
	jr nc,$+30		;1b1b
	rst 38h			;1b1d
	cp 002h			;1b1e
	ret m			;1b20
	dec d			;1b21
	jp po,0f901h		;1b22
	scf			;1b25
	ld a,e			;1b26
	ret c			;1b27
	ld sp,hl		;1b28
	scf			;1b29
	ld a,e			;1b2a
	ld sp,hl		;1b2b
	scf			;1b2c
	ld a,e			;1b2d
	ret c			;1b2e
	ld sp,hl		;1b2f
	scf			;1b30
	ld a,e			;1b31
	in a,(0f9h)		;1b32
	scf			;1b34
	ld a,e			;1b35
	rst 38h			;1b36
	and c			;1b37
	ld h,0a1h		;1b38
	sbc a,a			;1b3a
	and d			;1b3b
	dec e			;1b3c
	sub c			;1b3d
	ld e,c			;1b3e
	sub c			;1b3f
	cp l			;1b40
	sub d			;1b41
	dec a			;1b42
	and c			;1b43
	or (hl)			;1b44
	and d			;1b45
	sbc a,(hl)		;1b46
	jp m,l02feh		;1b47
	jp po,08201h		;1b4a
	xor h			;1b4d
	add a,d			;1b4e
	pop hl			;1b4f
	add a,e			;1b50
	ld a,(03f92h)		;1b51
	sub d			;1b54
	ld h,a			;1b55
	nop			;1b56
	nop			;1b57
	ld sp,hl		;1b58
	sub e			;1b59
	ld a,e			;1b5a
	rst 10h			;1b5b
	ld sp,hl		;1b5c
	sub e			;1b5d
	ld a,e			;1b5e
	ret c			;1b5f
	ld sp,hl		;1b60
	sub e			;1b61
	ld a,e			;1b62
	ret c			;1b63
	ld sp,hl		;1b64
	sub e			;1b65
	ld a,e			;1b66
	exx			;1b67
	ld sp,hl		;1b68
	sub e			;1b69
	ld a,e			;1b6a
	rst 38h			;1b6b
	cp 002h			;1b6c
	ret m			;1b6e
	add hl,de		;1b6f
	jp po,07201h		;1b70
	sbc a,h			;1b73
	ld (hl),d		;1b74
	pop hl			;1b75
	ld h,e			;1b76
	ld a,(03f72h)		;1b77
	ld (hl),d		;1b7a
	ld h,a			;1b7b
	nop			;1b7c
	nop			;1b7d
	ret c			;1b7e
	ld sp,hl		;1b7f
	sub e			;1b80
	ld a,e			;1b81
	jp c,093f9h		;1b82
	ld a,e			;1b85
	in a,(0f9h)		;1b86
	sub e			;1b88
	ld a,e			;1b89
	in a,(0f9h)		;1b8a
	sub e			;1b8c
	ld a,e			;1b8d
	call c,093f9h		;1b8e
	ld a,e			;1b91
	rst 38h			;1b92
	ld (hl),d		;1b93
	xor h			;1b94
	ld (hl),d		;1b95
	pop hl			;1b96
	ld h,e			;1b97
	ld a,(03f62h)		;1b98
	ld d,d			;1b9b
	ld h,a			;1b9c
	sub d			;1b9d
	xor e			;1b9e
	sub d			;1b9f
	rrca			;1ba0
	sub c			;1ba1
	rst 28h			;1ba2
	nop			;1ba3
	nop			;1ba4
	jp m,l02feh		;1ba5
	ex (sp),hl		;1ba8
	ld bc,013e4h		;1ba9
	ld d,e			;1bac
	nop			;1bad
	call po,06214h		;1bae
	nop			;1bb1
	call po,07315h		;1bb2
	nop			;1bb5
	call po,07216h		;1bb6
	nop			;1bb9
	call po,07317h		;1bba
	nop			;1bbd
	call po,06318h		;1bbe
	nop			;1bc1
	call po,0721dh		;1bc2
	nop			;1bc5
	call po,0731eh		;1bc6
	nop			;1bc9
	call po,0911ch		;1bca
	add a,b			;1bcd
	ex (sp),hl		;1bce
	inc bc			;1bcf
	call po,0731fh		;1bd0
	nop			;1bd3
	ld (hl),c		;1bd4
	add a,b			;1bd5
	add a,d			;1bd6
	nop			;1bd7
	sub d			;1bd8
	add a,b			;1bd9
	ld h,c			;1bda
	add a,b			;1bdb
	ld d,d			;1bdc
	nop			;1bdd
	call po,0511fh		;1bde
	ret nz			;1be1
	ld b,d			;1be2
	ld h,b			;1be3
	inc sp			;1be4
	nop			;1be5
	rst 38h			;1be6
	cp 002h			;1be7
	ret m			;1be9
	inc c			;1bea
	jp po,0a301h		;1beb
	nop			;1bee
	rst 30h			;1bef
	or d			;1bf0
	and e			;1bf1
	and d			;1bf2
	and e			;1bf3
	or e			;1bf4
	jp nz,0f6c3h		;1bf5
	pop bc			;1bf8
	add a,b			;1bf9
	ld sp,hl		;1bfa
	ld (bc),a		;1bfb
	ld a,h			;1bfc
	exx			;1bfd
	ld sp,hl		;1bfe
	ld (bc),a		;1bff
	ld a,h			;1c00
	rst 38h			;1c01
	jp 0c100h		;1c02
	add a,b			;1c05
	jp nz,0c200h		;1c06
	add a,b			;1c09
	or c			;1c0a
	add a,b			;1c0b
	and d			;1c0c
	nop			;1c0d
	and c			;1c0e
	ret nz			;1c0f
	sub d			;1c10
	ld h,b			;1c11
	add a,c			;1c12
	ld h,b			;1c13
	jp m,l02feh		;1c14
	ret m			;1c17
	dec d			;1c18
	jp po,0f901h		;1c19
	inc a			;1c1c
	ld a,h			;1c1d
	nop			;1c1e
	nop			;1c1f
	sub 0f9h		;1c20
	inc a			;1c22
	ld a,h			;1c23
	ld sp,hl		;1c24
	ld b,a			;1c25
	ld a,h			;1c26
	sub 0f9h		;1c27
	ld b,a			;1c29
	ld a,h			;1c2a
	ret c			;1c2b
	ld sp,hl		;1c2c
	ld b,a			;1c2d
	ld a,h			;1c2e
	ld hl,0113fh		;1c2f
	ld h,a			;1c32
	ld b,c			;1c33
	xor e			;1c34
	ld b,c			;1c35
	rrca			;1c36
	ld b,b			;1c37
	rst 28h			;1c38
	ld b,c			;1c39
	ld e,0ffh		;1c3a
	and c			;1c3c
	xor h			;1c3d
	and c			;1c3e
	pop hl			;1c3f
	and d			;1c40
	ld a,(03fb1h)		;1c41
	or c			;1c44
	ld h,a			;1c45
	jp m,0ab91h		;1c46
	sub c			;1c49
	rrca			;1c4a
	sub b			;1c4b
	rst 28h			;1c4c
	sub c			;1c4d
	ld e,071h		;1c4e
	xor h			;1c50
	ld (hl),c		;1c51
	pop hl			;1c52
	ld h,d			;1c53
	ld a,(03f61h)		;1c54
	ld d,c			;1c57
	ld h,a			;1c58
	jp m,l02feh		;1c59
	ret m			;1c5c
	inc d			;1c5d
	jp po,0c401h		;1c5e
	adc a,h			;1c61
	or h			;1c62
	dec d			;1c63
	or h			;1c64
	adc a,h			;1c65
	and h			;1c66
	dec d			;1c67
	and h			;1c68
	adc a,h			;1c69
	add a,h			;1c6a
	dec d			;1c6b
	jp nz,0c226h		;1c6c
	sbc a,a			;1c6f
	jp 0b21dh		;1c70
	ld e,c			;1c73
	or d			;1c74
	cp l			;1c75
	or e			;1c76
l1c77h:
	dec a			;1c77
	jp nz,0c3b6h		;1c78
	sbc a,(hl)		;1c7b
	call nz,0f9e9h		;1c7c
	sub l			;1c7f
	ld a,h			;1c80
	ld sp,hl		;1c81
	sub l			;1c82
	ld a,h			;1c83
	rst 10h			;1c84
	ld sp,hl		;1c85
	sub l			;1c86
	ld a,h			;1c87
	ret c			;1c88
	ld sp,hl		;1c89
	sub l			;1c8a
	ld a,h			;1c8b
	exx			;1c8c
	ld sp,hl		;1c8d
	sub l			;1c8e
	ld a,h			;1c8f
	in a,(0f9h)		;1c90
	sub l			;1c92
	ld a,h			;1c93
	rst 38h			;1c94
	jp nz,0c3e9h		;1c95
	adc a,0c5h		;1c98
	inc (hl)		;1c9a
	jp nz,0c3b6h		;1c9b
	sbc a,(hl)		;1c9e
	call nz,0fae9h		;1c9f
	cp 002h			;1ca2
	jp po,0b402h		;1ca4
	nop			;1ca7
	or e			;1ca8
	add a,b			;1ca9
	or e			;1caa
	nop			;1cab
	or d			;1cac
	add a,b			;1cad
	or d			;1cae
	nop			;1caf
	or c			;1cb0
	ret po			;1cb1
	or c			;1cb2
	ret nz			;1cb3
	ld sp,hl		;1cb4
	ex de,hl		;1cb5
	ld a,h			;1cb6
	ld (hl),b		;1cb7
	ret p			;1cb8
	ld (hl),b		;1cb9
	ret po			;1cba
	ld h,b			;1cbb
	ret nc			;1cbc
	ld d,b			;1cbd
	ret nz			;1cbe
	rst 38h			;1cbf
	cp 002h			;1cc0
	jp po,0f802h		;1cc2
	ld a,(bc)		;1cc5
	jp 0c3d0h		;1cc6
	ld h,b			;1cc9
	or d			;1cca
	ret po			;1ccb
	or d			;1ccc
	ld h,b			;1ccd
	or c			;1cce
	ret po			;1ccf
	or c			;1cd0
	ret nz			;1cd1
	or c			;1cd2
	and b			;1cd3
	and c			;1cd4
	add a,b			;1cd5
	and c			;1cd6
	ld h,b			;1cd7
	sub c			;1cd8
	ld b,b			;1cd9
	sub c			;1cda
	jr nz,$-109		;1cdb
	nop			;1cdd
	sub b			;1cde
	ret p			;1cdf
	add a,b			;1ce0
	ret nc			;1ce1
l1ce2h:
	add a,b			;1ce2
	or b			;1ce3
	add a,b			;1ce4
	and b			;1ce5
	ret c			;1ce6
	ld sp,hl		;1ce7
	ex de,hl		;1ce8
	ld a,h			;1ce9
	rst 38h			;1cea
	and c			;1ceb
	and b			;1cec
	and c			;1ced
	add a,b			;1cee
	and c			;1cef
	ld h,b			;1cf0
	sub c			;1cf1
	ld b,b			;1cf2
	sub c			;1cf3
	jr nz,l1c77h		;1cf4
	nop			;1cf6
	jp m,l02feh		;1cf7
	ret po			;1cfa
	ld bc,0f9d7h		;1cfb
	add hl,bc		;1cfe
l1cffh:
	ld a,l			;1cff
	rst 38h			;1d00
	cp 002h			;1d01
	ret m			;1d03
	jr z,l1cffh		;1d04
	add hl,bc		;1d06
	ld a,l			;1d07
	rst 38h			;1d08
	jp po,09201h		;1d09
	ret nc			;1d0c
	and d			;1d0d
	ld h,b			;1d0e
	or c			;1d0f
	ret po			;1d10
	pop bc			;1d11
	ld h,b			;1d12
	ex de,hl		;1d13
	inc b			;1d14
	ld a,(bc)		;1d15
	ld h,d			;1d16
	ret nc			;1d17
	ld (hl),d		;1d18
	ld h,b			;1d19
	add a,c			;1d1a
	ret po			;1d1b
	sub c			;1d1c
	ld h,b			;1d1d
	ex de,hl		;1d1e
	ld (bc),a		;1d1f
	ld a,(bc)		;1d20
	ld b,d			;1d21
	ret nc			;1d22
	ld d,d			;1d23
	ld h,b			;1d24
	ld h,c			;1d25
	ret po			;1d26
	ld (hl),c		;1d27
	ld h,b			;1d28
	ex de,hl		;1d29
	ld (bc),a		;1d2a
	ld a,(bc)		;1d2b
	ld (de),a		;1d2c
	ret nc			;1d2d
	ld (de),a		;1d2e
	ld h,b			;1d2f
	ld de,011e0h		;1d30
	ld h,b			;1d33
	ex de,hl		;1d34
	ld (bc),a		;1d35
	ld a,(bc)		;1d36
	jp m,l02feh		;1d37
	ret po			;1d3a
	ld (bc),a		;1d3b
	cp 002h			;1d3c
	ret m			;1d3e
	dec d			;1d3f
	jp po,06302h		;1d40
	ld b,b			;1d43
	ld (hl),d		;1d44
	ret nz			;1d45
	add a,d			;1d46
	ld b,b			;1d47
	sub c			;1d48
	ret p			;1d49
	sub c			;1d4a
	or b			;1d4b
	sub c			;1d4c
	ld (hl),b		;1d4d
	sub c			;1d4e
	jr nc,l1ce2h		;1d4f
	ld (02891h),hl		;1d51
	ex de,hl		;1d54
	inc bc			;1d55
	ld b,043h		;1d56
	ld b,b			;1d58
	ld b,d			;1d59
	ret nz			;1d5a
	ld (03140h),a		;1d5b
	ret p			;1d5e
	ld hl,021b0h		;1d5f
	ld (hl),b		;1d62
	ld hl,01130h		;1d63
	ld (02811h),hl		;1d66
	ex de,hl		;1d69
	inc b			;1d6a
	ld b,0feh		;1d6b
	ld (bc),a		;1d6d
	ret po			;1d6e
	inc b			;1d6f
	ret c			;1d70
	ld sp,hl		;1d71
	ld a,l			;1d72
	ld a,l			;1d73
	rst 38h			;1d74
	cp 002h			;1d75
	ret m			;1d77
	dec d			;1d78
	ld sp,hl		;1d79
	ld a,l			;1d7a
	ld a,l			;1d7b
	rst 38h			;1d7c
	jp po,05002h		;1d7d
	ld h,b			;1d80
	ld h,b			;1d81
	ld e,h			;1d82
	add a,b			;1d83
	ld e,(hl)		;1d84
	add a,b			;1d85
	ld h,b			;1d86
	jr nc,l1de9h		;1d87
	ld b,b			;1d89
	ld e,h			;1d8a
	ld d,b			;1d8b
	ld e,(hl)		;1d8c
	ld b,b			;1d8d
	ld h,b			;1d8e
	jp m,l02feh		;1d8f
	ret po			;1d92
	inc bc			;1d93
	exx			;1d94
	ld sp,hl		;1d95
	and c			;1d96
	ld a,l			;1d97
	rst 38h			;1d98
	cp 002h			;1d99
	ret m			;1d9b
	inc c			;1d9c
	ld sp,hl		;1d9d
	and c			;1d9e
	ld a,l			;1d9f
	rst 38h			;1da0
	jp po,0a001h		;1da1
	jp po,0aab0h		;1da4
sub_1da7h:
	ret nz			;1da7
	adc a,a			;1da8
	ret nz			;1da9
	add a,(hl)		;1daa
	ex de,hl		;1dab
	inc b			;1dac
	ld b,0b0h		;1dad
	adc a,a			;1daf
	or b			;1db0
	add a,(hl)		;1db1
	ex de,hl		;1db2
	ld (bc),a		;1db3
	ld b,0c0h		;1db4
	ld (hl),c		;1db6
	ret nz			;1db7
	ld d,l			;1db8
	ret nz			;1db9
	ld b,a			;1dba
	ret nz			;1dbb
	ld b,d			;1dbc
	ex de,hl		;1dbd
sub_1dbeh:
	inc b			;1dbe
	ld b,090h		;1dbf
l1dc1h:
	ld b,a			;1dc1
	sub b			;1dc2
	ld b,d			;1dc3
	ex de,hl		;1dc4
	ld (bc),a		;1dc5
	ld b,060h		;1dc6
	ld b,a			;1dc8
	ld h,b			;1dc9
	ld b,d			;1dca
	ex de,hl		;1dcb
	inc b			;1dcc
	ld b,0fah		;1dcd
	cp 002h			;1dcf
	ret po			;1dd1
	inc bc			;1dd2
	jp po,0d801h		;1dd3
	ld sp,hl		;1dd6
	call po,0ff7dh		;1dd7
	cp 002h			;1dda
	ret m			;1ddc
	jr z,l1dc1h		;1ddd
	ld bc,0e4f9h		;1ddf
	ld a,l			;1de2
	rst 38h			;1de3
	ret nz			;1de4
	ld b,b			;1de5
	ret nz			;1de6
	sub b			;1de7
	ret nz			;1de8
l1de9h:
	ret p			;1de9
	pop bc			;1dea
	ld (hl),c		;1deb
	jp nz,0c20dh		;1dec
	ret nc			;1def
	jp 0c4c4h		;1df0
	push af			;1df3
	nop			;1df4
	nop			;1df5
	and e			;1df6
	push af			;1df7
	and c			;1df8
	ld d,b			;1df9
	and c			;1dfa
	ld b,b			;1dfb
	ex de,hl		;1dfc
	ld b,008h		;1dfd
	inc de			;1dff
	push af			;1e00
	ld de,l1150h		;1e01
	ld b,b			;1e04
	ex de,hl		;1e05
	ld b,008h		;1e06
	jp m,l02feh		;1e08
	ret po			;1e0b
	inc b			;1e0c
	jp c,02bf9h		;1e0d
	ld a,(hl)		;1e10
	ld sp,ix		;1e11
	ld b,e			;1e13
	ld a,(hl)		;1e14
	rst 18h			;1e15
	ld a,(bc)		;1e16
	ld sp,hl		;1e17
	ld e,c			;1e18
	ld a,(hl)		;1e19
	rst 38h			;1e1a
	cp 002h			;1e1b
	ret m			;1e1d
	dec d			;1e1e
	jp po,0f901h		;1e1f
	dec hl			;1e22
	ld a,(hl)		;1e23
	ld sp,hl		;1e24
	ld b,e			;1e25
	ld a,(hl)		;1e26
	ld sp,hl		;1e27
	ld e,c			;1e28
	ld a,(hl)		;1e29
	rst 38h			;1e2a
	pop bc			;1e2b
	ret p			;1e2c
	pop bc			;1e2d
	ret po			;1e2e
	pop bc			;1e2f
	ret nc			;1e30
	push af			;1e31
	ret nz			;1e32
	or b			;1e33
	sub b			;1e34
	ld (hl),b		;1e35
	ld d,b			;1e36
	jr nc,l1e49h		;1e37
	or 0c0h			;1e39
	xor 0c0h		;1e3b
	defb 0ddh,0c0h,0cch ;illegal sequence	;1e3d
	ret nz			;1e40
	call z,071fah		;1e41
	ret p			;1e44
	ld (hl),c		;1e45
	ret po			;1e46
	ld (hl),c		;1e47
	ret nc			;1e48
l1e49h:
	push af			;1e49
	ret nz			;1e4a
	or b			;1e4b
	sub b			;1e4c
	ld (hl),b		;1e4d
	ld d,b			;1e4e
	jr nc,$+18		;1e4f
	or 070h			;1e51
	xor 070h		;1e53
	ld (ix-034h),b		;1e55
	jp m,0cc70h		;1e58
	jp po,02102h		;1e5b
	ret p			;1e5e
	ld hl,021d0h		;1e5f
	or b			;1e62
	ld hl,02170h		;1e63
	jr nc,l1e88h		;1e66
	xor 020h		;1e68
	call z,0fefah		;1e6a
	ld (bc),a		;1e6d
	ex (sp),hl		;1e6e
	ld bc,l03e4h		;1e6f
	ld (hl),b		;1e72
	jr l1ee5h		;1e73
	jr nc,l1e77h		;1e75
l1e77h:
	nop			;1e77
	ex de,hl		;1e78
	ld b,008h		;1e79
	ld b,b			;1e7b
	jr l1ebeh		;1e7c
	jr nc,l1e80h		;1e7e
l1e80h:
	nop			;1e80
	ex de,hl		;1e81
	ld b,008h		;1e82
	jr nc,l1e9eh		;1e84
	jr nc,$+50		;1e86
l1e88h:
	nop			;1e88
	nop			;1e89
	ex de,hl		;1e8a
	inc b			;1e8b
	ex af,af'		;1e8c
	rst 38h			;1e8d
	cp 002h			;1e8e
	ret m			;1e90
	inc d			;1e91
	jp po,0a201h		;1e92
	ld a,b			;1e95
	and d			;1e96
	and b			;1e97
	nop			;1e98
	nop			;1e99
	ld sp,hl		;1e9a
	xor (hl)		;1e9b
	ld a,(hl)		;1e9c
	ret c			;1e9d
l1e9eh:
	ld sp,hl		;1e9e
	xor (hl)		;1e9f
	ld a,(hl)		;1ea0
	in a,(0f9h)		;1ea1
	xor (hl)		;1ea3
	ld a,(hl)		;1ea4
	sbc a,0f9h		;1ea5
	xor (hl)		;1ea7
	ld a,(hl)		;1ea8
	rst 18h			;1ea9
	ld sp,hl		;1eaa
	xor (hl)		;1eab
	ld a,(hl)		;1eac
	rst 38h			;1ead
	jp nz,0c248h		;1eae
	ld (hl),b		;1eb1
	nop			;1eb2
	nop			;1eb3
	ex de,hl		;1eb4
	inc bc			;1eb5
	ex af,af'		;1eb6
	jp m,l02feh		;1eb7
	jp po,0b001h		;1eba
	ld h,b			;1ebd
l1ebeh:
	or b			;1ebe
	ret po			;1ebf
	or (hl)			;1ec0
	nop			;1ec1
	or h			;1ec2
	ret po			;1ec3
	sub d			;1ec4
	ret po			;1ec5
	nop			;1ec6
	nop			;1ec7
	ex de,hl		;1ec8
	ld (bc),a		;1ec9
	ld c,095h		;1eca
	ret po			;1ecc
	sbc a,(hl)		;1ecd
	ret po			;1ece
	ld (hl),h		;1ecf
	ret po			;1ed0
	nop			;1ed1
	nop			;1ed2
	nop			;1ed3
	nop			;1ed4
	add a,b			;1ed5
	ld h,b			;1ed6
	add a,b			;1ed7
	ret po			;1ed8
	add a,(hl)		;1ed9
	nop			;1eda
	add a,h			;1edb
	ret po			;1edc
	ld (hl),d		;1edd
	ret po			;1ede
	nop			;1edf
	nop			;1ee0
	nop			;1ee1
	nop			;1ee2
	ex de,hl		;1ee3
	ld (bc),a		;1ee4
l1ee5h:
	djnz l1f4ch		;1ee5
	nop			;1ee7
	ld d,h			;1ee8
	ret po			;1ee9
	ld b,d			;1eea
	ret po			;1eeb
	rst 38h			;1eec
	cp 002h			;1eed
	ret m			;1eef
	inc d			;1ef0
	jp po,0c201h		;1ef1
	ld bc,040c2h		;1ef4
	jp nz,0c3f0h		;1ef7
	ret p			;1efa
	push bc			;1efb
	ret po			;1efc
	nop			;1efd
	nop			;1efe
	ex de,hl		;1eff
	ld (bc),a		;1f00
	ld c,0c7h		;1f01
	ret po			;1f03
	set 4,b			;1f04
	adc a,0e0h		;1f06
	nop			;1f08
	nop			;1f09
	nop			;1f0a
	nop			;1f0b
	ld d,d			;1f0c
	ld bc,04052h		;1f0d
l1f10h:
	ld d,d			;1f10
	ret p			;1f11
l1f12h:
	ld d,e			;1f12
	ret p			;1f13
	ld d,l			;1f14
	ret po			;1f15
	nop			;1f16
	nop			;1f17
	nop			;1f18
	nop			;1f19
	ex de,hl		;1f1a
	ld (bc),a		;1f1b
	djnz $+73		;1f1c
	ret po			;1f1e
	dec sp			;1f1f
	ret po			;1f20
	ld l,0e0h		;1f21
	rst 38h			;1f23
	cp 002h			;1f24
	ret po			;1f26
	ld (bc),a		;1f27
	ret c			;1f28
	ld sp,hl		;1f29
	ld b,l			;1f2a
	ld a,a			;1f2b
	ret c			;1f2c
	ld sp,hl		;1f2d
	ld b,l			;1f2e
	ld a,a			;1f2f
	jp c,045f9h		;1f30
	ld a,a			;1f33
	rst 38h			;1f34
	cp 002h			;1f35
	ret m			;1f37
	dec c			;1f38
	ld sp,hl		;1f39
	ld b,l			;1f3a
	ld a,a			;1f3b
	rst 10h			;1f3c
	ld sp,hl		;1f3d
	ld b,l			;1f3e
	ld a,a			;1f3f
	call c,045f9h		;1f40
	ld a,a			;1f43
	rst 38h			;1f44
	jp po,09201h		;1f45
	add a,b			;1f48
	and d			;1f49
	ld h,b			;1f4a
	or d			;1f4b
l1f4ch:
	jr nc,l1f10h		;1f4c
	djnz l1f12h		;1f4e
	nop			;1f50
	pop bc			;1f51
	ret nc			;1f52
	jp po,0c10eh		;1f53
	add a,b			;1f56
	jp po,0b104h		;1f57
	add a,b			;1f5a
	sub c			;1f5b
	add a,b			;1f5c
	ex de,hl		;1f5d
	ex af,af'		;1f5e
	ld a,(de)		;1f5f
	jp m,0feffh		;1f60
	ld bc,l04f8h		;1f63
	jp (hl)			;1f66
	ld (bc),a		;1f67
	jp pe,0d20ah		;1f68
	ld (hl),b		;1f6b
	add a,b			;1f6c
	sub b			;1f6d
	and b			;1f6e
	or b			;1f6f
	and b			;1f70
	sub b			;1f71
	add a,b			;1f72
	defb 0fdh,06bh ;ld iyl,e	;1f73
	ld a,a			;1f75
	cp 001h			;1f76
	ret m			;1f78
	ld (de),a		;1f79
	jp (hl)			;1f7a
	ld (bc),a		;1f7b
	jp pe,0d209h		;1f7c
	rst 28h			;1f7f
	dec b			;1f80
	sub b			;1f81
	add a,b			;1f82
	ld (hl),b		;1f83
	add a,b			;1f84
	sub b			;1f85
	and b			;1f86
	or b			;1f87
	defb 0fdh,081h,07fh ;illegal sequence	;1f88
	cp 001h			;1f8b
	ret m			;1f8d
	dec b			;1f8e
	jp (hl)			;1f8f
	ld b,0eah		;1f90
	dec bc			;1f92
	jp nc,0fd8fh		;1f93
	sub h			;1f96
	ld a,a			;1f97
	cp 001h			;1f98
	jp (hl)			;1f9a
	ld b,0eah		;1f9b
	dec bc			;1f9d
	jp nc,0fd7fh		;1f9e
	sbc a,a			;1fa1
	ld a,a			;1fa2
	cp 002h			;1fa3
	ret m			;1fa5
	dec b			;1fa6
	jp po,0c202h		;1fa7
l1faah:
	nop			;1faa
	pop bc			;1fab
	ret nc			;1fac
	push af			;1fad
	and b			;1fae
	add a,b			;1faf
	ld h,b			;1fb0
	ld b,b			;1fb1
	jr nz,l1faah		;1fb2
	ex de,hl		;1fb4
	inc c			;1fb5
	dec c			;1fb6
	ld (hl),d		;1fb7
l1fb8h:
	nop			;1fb8
	ld (hl),c		;1fb9
	ret nc			;1fba
	push af			;1fbb
	and b			;1fbc
	add a,b			;1fbd
	ld h,b			;1fbe
	ld b,b			;1fbf
	jr nz,l1fb8h		;1fc0
	ex de,hl		;1fc2
	inc b			;1fc3
	dec c			;1fc4
	ld (03100h),a		;1fc5
	ret nc			;1fc8
	push af			;1fc9
	and b			;1fca
	add a,b			;1fcb
	ld h,b			;1fcc
	ld b,b			;1fcd
	jr nz,$-8		;1fce
	ex de,hl		;1fd0
	ld (bc),a		;1fd1
	dec c			;1fd2
	ld (bc),a		;1fd3
l1fd4h:
	nop			;1fd4
	ld bc,0f5d0h		;1fd5
	and b			;1fd8
	add a,b			;1fd9
	ld h,b			;1fda
	ld b,b			;1fdb
	jr nz,l1fd4h		;1fdc
	ex de,hl		;1fde
	ld (bc),a		;1fdf
	dec c			;1fe0
	rst 38h			;1fe1
	cp 002h			;1fe2
	ret m			;1fe4
	inc c			;1fe5
	jp po,0c504h		;1fe6
	nop			;1fe9
	call nz,0c480h		;1fea
	nop			;1fed
	jp po,0c301h		;1fee
	nop			;1ff1
	jp po,0c304h		;1ff2
	nop			;1ff5
	jp po,0c304h		;1ff6
	add a,b			;1ff9
	jp 0c200h		;1ffa
	add a,b			;1ffd
	ex de,hl		;1ffe
	ld (bc),a		;1fff
