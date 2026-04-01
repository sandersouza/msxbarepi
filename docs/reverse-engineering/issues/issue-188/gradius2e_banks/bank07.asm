; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x0000 -o docs/reverse-engineering/issues/issue-188/gradius2e_banks/bank07.asm /tmp/gradius2e_bank07.bin

	org 00000h

l0000h:
	ld h,c			;0000
	ld h,b			;0001
sub_0002h:
	sbc a,b			;0002
l0003h:
	ld h,b			;0003
l0004h:
	in a,(060h)		;0004
l0006h:
	ld b,061h		;0006
	ld c,d			;0008
l0009h:
	ld h,c			;0009
	ld b,e			;000a
	ld h,c			;000b
l000ch:
	ld l,a			;000c
	ld h,c			;000d
	sbc a,d			;000e
	ld h,c			;000f
	defb 0ddh,061h ;ld ixh,c	;0010
	ld b,061h		;0012
	ld b,061h		;0014
	ld b,061h		;0016
l0018h:
	sub l			;0018
	ld h,d			;0019
	ld c,062h		;001a
	inc h			;001c
	ld h,d			;001d
	jr nc,l0082h		;001e
	ld e,l			;0020
l0021h:
	ld h,d			;0021
	xor l			;0022
	ld h,d			;0023
	ld l,(hl)		;0024
	ld h,d			;0025
	ld c,c			;0026
sub_0027h:
	ld h,d			;0027
	add a,c			;0028
	ld h,d			;0029
	jr nc,l008eh		;002a
	jr nc,l0090h		;002c
	jr nc,l0092h		;002e
	cp b			;0030
	ld h,h			;0031
l0032h:
	or d			;0032
	ld h,d			;0033
	sub 062h		;0034
	jp p,l0f62h		;0036
	ld h,e			;0039
	inc hl			;003a
	ld h,h			;003b
	ld h,(hl)		;003c
	ld h,h			;003d
	ld h,063h		;003e
	and a			;0040
	ld h,h			;0041
	jp p,0f262h		;0042
	ld h,d			;0045
	jp p,l0162h		;0046
	inc b			;0049
	ld l,h			;004a
	dec bc			;004b
	sbc a,l			;004c
	add a,d			;004d
	rlca			;004e
	add hl,bc		;004f
	ld (hl),b		;0050
	set 6,a			;0051
	add a,l			;0053
	rlca			;0054
	ld a,06ch		;0055
	defb 0edh ;next byte illegal after ed	;0057
	push de			;0058
	add a,d			;0059
	ld bc,06c2eh		;005a
	dec e			;005d
	ret z			;005e
	add a,d			;005f
	nop			;0060
	ld b,0a7h		;0061
	ld l,c			;0063
	dec d			;0064
	add a,07fh		;0065
	rlca			;0067
	or b			;0068
	ld l,d			;0069
	rra			;006a
	sbc a,b			;006b
	add a,b			;006c
	rlca			;006d
	ld d,h			;006e
	ld (hl),c		;006f
	ld (hl),e		;0070
	ld c,087h		;0071
	rlca			;0073
l0074h:
	ld d,h			;0074
	ld (hl),c		;0075
	ld a,a			;0076
	add a,b			;0077
	add a,a			;0078
	ld b,057h		;0079
	ld l,e			;007b
	ld bc,081d4h		;007c
	rlca			;007f
	rst 8			;0080
	ld l,c			;0081
l0082h:
	ld l,l			;0082
	xor 07fh		;0083
	rlca			;0085
	defb 0fdh,069h ;ld iyl,c	;0086
	adc a,e			;0088
	ld a,(de)		;0089
	add a,b			;008a
	rlca			;008b
	ld e,d			;008c
	ld l,d			;008d
l008eh:
	cp e			;008e
	ld h,h			;008f
l0090h:
	add a,b			;0090
	rlca			;0091
l0092h:
	ld l,e			;0092
	ld l,d			;0093
	jp 08076h		;0094
	nop			;0097
	rlca			;0098
	and (hl)		;0099
	ld l,h			;009a
	adc a,b			;009b
	ld b,a			;009c
	add a,e			;009d
	rlca			;009e
	dec l			;009f
	ld l,c			;00a0
	jr nz,l00fch		;00a1
	add a,e			;00a3
	rlca			;00a4
	cp b			;00a5
	ld l,h			;00a6
	jr c,l0074h		;00a7
	add a,e			;00a9
	rlca			;00aa
	cp 064h			;00ab
	or c			;00ad
	dec c			;00ae
	ld a,(hl)		;00af
	ld b,060h		;00b0
	ld h,l			;00b2
	dec d			;00b3
	or e			;00b4
	ld a,l			;00b5
	rlca			;00b6
	ld (hl),h		;00b7
	ld (hl),c		;00b8
	adc a,e			;00b9
	sbc a,(hl)		;00ba
	add a,a			;00bb
	rlca			;00bc
	ei			;00bd
	ld l,l			;00be
	sub e			;00bf
	jp 00784h		;00c0
	ld d,h			;00c3
	ld (hl),c		;00c4
	xor e			;00c5
	ld c,087h		;00c6
	rlca			;00c8
	ld e,l			;00c9
	ld l,(hl)		;00ca
	cp l			;00cb
	rrca			;00cc
	add a,l			;00cd
	rlca			;00ce
	cp d			;00cf
	ld h,l			;00d0
	pop bc			;00d1
	ex de,hl		;00d2
	ld a,l			;00d3
	ld bc,07c99h		;00d4
	inc (hl)		;00d7
sub_00d8h:
	jp (hl)			;00d8
	adc a,a			;00d9
	nop			;00da
	rlca			;00db
sub_00dch:
	ld (hl),h		;00dc
	ld (hl),c		;00dd
	adc a,e			;00de
	sbc a,(hl)		;00df
	add a,a			;00e0
	rlca			;00e1
	ld l,a			;00e2
	ld l,(hl)		;00e3
	rra			;00e4
	ld d,085h		;00e5
	rlca			;00e7
	ret c			;00e8
	ld l,a			;00e9
	cp c			;00ea
	call c,sub_0785h	;00eb
	ret po			;00ee
	ld (hl),a		;00ef
	ld a,c			;00f0
	res 1,e			;00f1
	rlca			;00f3
	ld (hl),e		;00f4
	ld a,b			;00f5
	sub e			;00f6
	inc sp			;00f7
	adc a,h			;00f8
	rlca			;00f9
sub_00fah:
	or l			;00fa
	ld a,b			;00fb
l00fch:
	xor a			;00fc
	ld h,l			;00fd
	adc a,h			;00fe
sub_00ffh:
	rlca			;00ff
l0100h:
	rst 10h			;0100
	ld a,b			;0101
	or e			;0102
	add a,l			;0103
	adc a,h			;0104
	nop			;0105
	rlca			;0106
	jp (hl)			;0107
l0108h:
	ld (hl),d		;0108
	rra			;0109
	inc b			;010a
	adc a,c			;010b
	rlca			;010c
	cp e			;010d
	ld a,h			;010e
	ld h,b			;010f
	inc b			;0110
	sub b			;0111
	rlca			;0112
	ld h,l			;0113
	ld (hl),h		;0114
	jp nz,08a4bh		;0115
l0118h:
	rlca			;0118
	call p,07370h		;0119
	or a			;011c
	add a,(hl)		;011d
	rlca			;011e
	call p,06770h		;011f
	inc l			;0122
	add a,a			;0123
	rlca			;0124
	sbc a,c			;0125
	ld a,h			;0126
	ld e,h			;0127
	adc a,08fh		;0128
	rlca			;012a
	ld c,(hl)		;012b
	ld a,h			;012c
	sub e			;012d
	sub c			;012e
	adc a,a			;012f
	rlca			;0130
	ld h,a			;0131
	ld l,e			;0132
	and b			;0133
	xor c			;0134
	ld a,l			;0135
	rlca			;0136
	call c,0a164h		;0137
	ld h,l			;013a
	ld a,l			;013b
	rlca			;013c
	call c,0a564h		;013d
	add a,a			;0140
	ld a,l			;0141
	nop			;0142
	rlca			;0143
	add a,(hl)		;0144
	ld (hl),h		;0145
	rra			;0146
	ld e,b			;0147
l0148h:
	adc a,d			;0148
	nop			;0149
	rlca			;014a
	pop hl			;014b
	ld h,l			;014c
	rra			;014d
	ld e,e			;014e
	ld a,(hl)		;014f
	rlca			;0150
	ccf			;0151
	ld l,b			;0152
	adc a,e			;0153
	inc (hl)		;0154
	ld a,a			;0155
	rlca			;0156
	cp b			;0157
	ld l,b			;0158
	xor l			;0159
	adc a,d			;015a
	ld a,a			;015b
	rlca			;015c
	inc d			;015d
	ld l,c			;015e
	call nz,07fb7h		;015f
l0162h:
	rlca			;0162
	ld (07371h),hl		;0163
	pop hl			;0166
	add a,(hl)		;0167
	rlca			;0168
	ld (07f71h),hl		;0169
	ld d,(hl)		;016c
	add a,a			;016d
	nop			;016e
	rlca			;016f
	jp p,0737ch		;0170
	add hl,sp		;0173
	sub b			;0174
	rlca			;0175
	jp p,07f7ch		;0176
	ld d,a			;0179
	sub b			;017a
	ld b,0d2h		;017b
	ld a,e			;017d
	add hl,bc		;017e
	rrca			;017f
	adc a,a			;0180
	rlca			;0181
	or 078h			;0182
	rra			;0184
	and c			;0185
	adc a,h			;0186
	rlca			;0187
	jr z,l0204h		;0188
	ld d,e			;018a
	xor (hl)		;018b
	adc a,l			;018c
	rlca			;018d
	jp pe,0a97ah		;018e
	ld l,h			;0191
	adc a,(hl)		;0192
	rlca			;0193
	ld (hl),h		;0194
	ld (hl),c		;0195
	adc a,e			;0196
	sbc a,(hl)		;0197
	add a,a			;0198
	nop			;0199
	rlca			;019a
	ld d,h			;019b
	ld (hl),c		;019c
	ld a,a			;019d
	ld c,087h		;019e
	rlca			;01a0
	ld d,h			;01a1
l01a2h:
	ld (hl),c		;01a2
	add a,l			;01a3
	add a,b			;01a4
	add a,a			;01a5
	rlca			;01a6
	adc a,(hl)		;01a7
	ld (hl),c		;01a8
	rra			;01a9
	cp b			;01aa
	add a,a			;01ab
	rlca			;01ac
	ret po			;01ad
	ld (hl),c		;01ae
	and c			;01af
	ld a,(bc)		;01b0
	adc a,b			;01b1
	rlca			;01b2
	ld (hl),h		;01b3
	ld (hl),c		;01b4
	adc a,e			;01b5
	sbc a,(hl)		;01b6
	add a,a			;01b7
	rlca			;01b8
	ld c,(hl)		;01b9
	ld a,h			;01ba
	sbc a,e			;01bb
	sub c			;01bc
	adc a,a			;01bd
l01beh:
	ld b,037h		;01be
	ld a,h			;01c0
	dec b			;01c1
	ld a,e			;01c2
	adc a,a			;01c3
	ld b,0d2h		;01c4
	ld a,e			;01c6
	add hl,bc		;01c7
	rrca			;01c8
	adc a,a			;01c9
	ld b,0e5h		;01ca
	ld a,e			;01cc
	ld de,08f22h		;01cd
	rlca			;01d0
	inc (hl)		;01d1
	ld a,h			;01d2
	sub e			;01d3
	ld (hl),c		;01d4
	adc a,a			;01d5
	ld b,078h		;01d6
	ld a,h			;01d8
	dec de			;01d9
	xor l			;01da
	adc a,a			;01db
	nop			;01dc
	ld b,096h		;01dd
	ld l,d			;01df
	inc de			;01e0
	ld hl,(l0781h)		;01e1
	or b			;01e4
	ld l,d			;01e5
	rra			;01e6
	ld b,d			;01e7
	add a,c			;01e8
	ld b,057h		;01e9
	ld l,e			;01eb
	ld bc,081d4h		;01ec
	rlca			;01ef
	call p,07370h		;01f0
	or a			;01f3
	add a,(hl)		;01f4
	rlca			;01f5
	call p,07f70h		;01f6
	inc l			;01f9
	add a,a			;01fa
	rlca			;01fb
	ld (hl),c		;01fc
	ld l,e			;01fd
	sbc a,l			;01fe
	and 081h		;01ff
l0201h:
	rlca			;0201
	ld (hl),c		;0202
	ld l,e			;0203
l0204h:
	and a			;0204
	add hl,hl		;0205
	add a,d			;0206
	rlca			;0207
	jp 0b16bh		;0208
	ld l,h			;020b
	add a,d			;020c
	nop			;020d
	ld hl,(0392fh)		;020e
	dec b			;0211
	jr c,l0274h		;0212
	add hl,sp		;0214
	jr z,l01a2h		;0215
	adc a,(hl)		;0217
	ld a,a			;0218
	sub e			;0219
	sbc a,a			;021a
	add hl,sp		;021b
	inc c			;021c
l021dh:
	xor e			;021d
	xor a			;021e
	cp c			;021f
	cp l			;0220
	cp a			;0221
l0222h:
	cp c			;0222
	nop			;0223
	rra			;0224
l0225h:
	ld c,h			;0225
	add hl,sp		;0226
	dec l			;0227
	adc a,e			;0228
	adc a,(hl)		;0229
	ld a,a			;022a
	cp c			;022b
	ret nz			;022c
	add hl,sp		;022d
	rlca			;022e
	nop			;022f
l0230h:
	ld d,e			;0230
	ld d,a			;0231
	ld a,c			;0232
	ld d,e			;0233
	ld e,d			;0234
	ld a,c			;0235
	ld d,l			;0236
	ld e,e			;0237
	ld a,c			;0238
	ld (hl),e		;0239
	ld a,c			;023a
	add hl,sp		;023b
	ld b,067h		;023c
	ld l,l			;023e
	add hl,sp		;023f
	ld b,08bh		;0240
	adc a,(hl)		;0242
	ld a,a			;0243
	sub e			;0244
	sbc a,b			;0245
	add hl,sp		;0246
	dec b			;0247
	nop			;0248
	add hl,bc		;0249
	dec bc			;024a
	or h			;024b
	sbc a,e			;024c
	and b			;024d
	ld a,c			;024e
	sbc a,h			;024f
	ld a,e			;0250
	add hl,sp		;0251
	inc b			;0252
	ld a,a			;0253
	add a,e			;0254
	cp c			;0255
	add a,l			;0256
	adc a,c			;0257
	cp c			;0258
	adc a,e			;0259
	adc a,(hl)		;025a
	ld a,a			;025b
	nop			;025c
	cp d			;025d
	cp (hl)			;025e
	add hl,sp		;025f
	inc b			;0260
	adc a,e			;0261
	sbc a,h			;0262
	add hl,sp		;0263
	ld de,07973h		;0264
	add hl,sp		;0267
	ld b,07fh		;0268
	add a,l			;026a
	add hl,sp		;026b
	ld b,000h		;026c
	add hl,bc		;026e
	dec bc			;026f
	or h			;0270
	ld sp,03946h		;0271
l0274h:
	dec c			;0274
	ld (hl),e		;0275
	ld a,c			;0276
	add hl,de		;0277
	ld b,07fh		;0278
	add a,l			;027a
	add hl,bc		;027b
	ld b,08bh		;027c
	adc a,(hl)		;027e
	ld a,a			;027f
	nop			;0280
	inc de			;0281
	ld d,0f4h		;0282
	dec h			;0284
	dec (hl)		;0285
	add hl,sp		;0286
	djnz l02beh		;0287
	dec h			;0289
	ld sp,07310h		;028a
	ld a,c			;028d
	add hl,sp		;028e
	ld b,07fh		;028f
	add a,l			;0291
	add hl,sp		;0292
	ld b,000h		;0293
	dec h			;0295
	dec (hl)		;0296
	add hl,sp		;0297
	djnz l0225h		;0298
	sub a			;029a
	add hl,sp		;029b
	inc c			;029c
	ld (hl),d		;029d
	cp l			;029e
	ld a,c			;029f
	ld (hl),e		;02a0
	ld (hl),a		;02a1
	cp c			;02a2
	ld a,c			;02a3
	ld a,l			;02a4
	cp c			;02a5
	ld a,a			;02a6
	add a,e			;02a7
	cp c			;02a8
	add a,l			;02a9
	adc a,c			;02aa
	cp c			;02ab
	nop			;02ac
	ld (03f95h),hl		;02ad
	ld b,000h		;02b0
	jr nz,l02d4h		;02b2
	ld hl,08814h		;02b4
	adc a,b			;02b7
	and c			;02b8
	adc a,e			;02b9
	adc a,a			;02ba
	ccf			;02bb
	inc b			;02bc
	sub e			;02bd
l02beh:
	sub e			;02be
	ld hl,0b320h		;02bf
	or e			;02c2
	ld hl,03414h		;02c3
	inc (hl)		;02c6
	ld hl,0ab04h		;02c7
	xor e			;02ca
	ld hl,0c106h		;02cb
	pop bc			;02ce
	inc h			;02cf
	ld b,0c1h		;02d0
	pop bc			;02d2
	add hl,de		;02d3
l02d4h:
	ld b,000h		;02d4
	ld c,h			;02d6
	ld c,h			;02d7
	inc a			;02d8
	djnz l0337h		;02d9
	ld e,h			;02db
l02dch:
	inc a			;02dc
	dec e			;02dd
	ret nz			;02de
	ret nz			;02df
	inc a			;02e0
	rlca			;02e1
	ld a,a			;02e2
	sbc a,e			;02e3
	inc a			;02e4
	inc c			;02e5
	sub e			;02e6
	and a			;02e7
	inc a			;02e8
	ex af,af'		;02e9
	or e			;02ea
	or (hl)			;02eb
	call m,08f8bh		;02ec
	ccf			;02ef
	inc b			;02f0
	nop			;02f1
	ld b,b			;02f2
	ld b,b			;02f3
	inc h			;02f4
	inc de			;02f5
	ld (hl),e		;02f6
	ld a,a			;02f7
	add hl,sp		;02f8
	inc c			;02f9
	ld (hl),e		;02fa
	ld (hl),e		;02fb
	ld hl,06718h		;02fc
	ld h,a			;02ff
	ld hl,05c0ch		;0300
l0303h:
	ld e,h			;0303
	ld hl,09304h		;0304
	sub e			;0307
	ld hl,08b0ah		;0308
	adc a,a			;030b
	ccf			;030c
	inc b			;030d
	nop			;030e
	cp e			;030f
	jp nz,0bf79h		;0310
	jp 08b79h		;0313
	ld bc,l0d31h		;0316
	sbc a,h			;0319
	ld c,031h		;031a
	dec c			;031c
l031dh:
	ld (hl),e		;031d
	ld (hl),e		;031e
	ld hl,07f0ch		;031f
	ld a,a			;0322
	ld sp,l000ch		;0323
	dec b			;0326
	ld bc,l0436h		;0327
	add hl,bc		;032a
	dec c			;032b
	ld (hl),004h		;032c
	ld de,03e94h		;032e
	rlca			;0331
	ld a,e			;0332
	ld a,e			;0333
	ld hl,08b04h		;0334
l0337h:
	adc a,a			;0337
	ccf			;0338
	inc b			;0339
	rra			;033a
	ld l,089h		;033b
	inc hl			;033d
	ld a,089h		;033e
	ld (0c946h),hl		;0340
	ld (0894ah),hl		;0343
	rra			;0346
	ld c,h			;0347
	adc a,c			;0348
	jr nz,l039ch		;0349
	adc a,c			;034b
	rra			;034c
	ld d,h			;034d
	adc a,c			;034e
	ld (0895ch),hl		;034f
	ld h,064h		;0352
	adc a,c			;0354
	ld h,066h		;0355
	adc a,c			;0357
	ld h,068h		;0358
	adc a,c			;035a
	dec h			;035b
	ld (hl),b		;035c
	adc a,c			;035d
	daa			;035e
	ld (hl),e		;035f
	adc a,c			;0360
	rra			;0361
	add hl,hl		;0362
	ld c,c			;0363
	dec h			;0364
	ld hl,(02449h)		;0365
	dec hl			;0368
	ld c,c			;0369
	ld hl,0492ch		;036a
	jr z,l039ch		;036d
	ld c,c			;036f
	ld (04930h),hl		;0370
	inc h			;0373
	ld sp,02149h		;0374
	ld (02349h),a		;0377
	inc sp			;037a
	ld c,c			;037b
	ld hl,04934h		;037c
	inc h			;037f
	dec (hl)		;0380
	ld c,c			;0381
	jr z,l03bah		;0382
	ld c,c			;0384
	dec h			;0385
	scf			;0386
	ld c,c			;0387
	ld (04938h),hl		;0388
	dec h			;038b
	add hl,sp		;038c
	ld c,c			;038d
	inc hl			;038e
	ld a,(02549h)		;038f
	dec sp			;0392
	ld c,c			;0393
	jr z,l03d2h		;0394
	ld c,c			;0396
	daa			;0397
	dec a			;0398
	ld c,c			;0399
	ld h,040h		;039a
l039ch:
	ld c,c			;039c
	inc h			;039d
	ld b,c			;039e
	ld c,c			;039f
	jr z,l03e4h		;03a0
	ld c,c			;03a2
	ld hl,04943h		;03a3
	jr z,$+70		;03a6
	ld c,c			;03a8
	dec h			;03a9
	ld b,l			;03aa
	ld c,c			;03ab
	ld h,049h		;03ac
	ld c,c			;03ae
	inc hl			;03af
	ld c,(hl)		;03b0
	ld c,c			;03b1
	dec h			;03b2
	ld c,a			;03b3
	ld c,c			;03b4
	daa			;03b5
	ld d,b			;03b6
	ld c,c			;03b7
	inc hl			;03b8
	ld d,e			;03b9
l03bah:
	ld c,c			;03ba
	ld h,056h		;03bb
	ld c,c			;03bd
	ld hl,04957h		;03be
	jr z,l041bh		;03c1
	ld c,c			;03c3
	ld (04959h),hl		;03c4
	dec h			;03c7
	ld e,d			;03c8
	ld c,c			;03c9
	jr nz,l0427h		;03ca
l03cch:
	ld c,c			;03cc
	jr z,l042dh		;03cd
	ld c,c			;03cf
	dec h			;03d0
	ld e,a			;03d1
l03d2h:
	ld c,c			;03d2
	jr nz,l0435h		;03d3
	ld c,c			;03d5
	ld h,061h		;03d6
	ld c,c			;03d8
	jr nz,l043dh		;03d9
	ld c,c			;03db
	inc hl			;03dc
	ld h,e			;03dd
	ld c,c			;03de
	inc h			;03df
	ld l,d			;03e0
	ld c,c			;03e1
	daa			;03e2
	ld l,e			;03e3
l03e4h:
	ld c,c			;03e4
	ld (0496ch),hl		;03e5
	ld h,06dh		;03e8
	ld c,c			;03ea
	jr z,l045bh		;03eb
	ld c,c			;03ed
	ld h,06fh		;03ee
	ld c,c			;03f0
	inc hl			;03f1
	ld (hl),d		;03f2
	ld c,c			;03f3
	dec h			;03f4
	ld (hl),l		;03f5
	ld c,c			;03f6
	jr nz,l046fh		;03f7
	ld c,c			;03f9
	inc hl			;03fa
	ld (hl),a		;03fb
sub_03fch:
	ld c,c			;03fc
l03fdh:
	jr nz,$+122		;03fd
	ld c,c			;03ff
	daa			;0400
	ld a,c			;0401
l0402h:
	ld c,c			;0402
l0403h:
	dec h			;0403
sub_0404h:
	ld a,d			;0404
	ld c,c			;0405
	add hl,hl		;0406
	add hl,hl		;0407
	add hl,sp		;0408
	djnz l0444h		;0409
	add hl,sp		;040b
	add hl,sp		;040c
	djnz l0458h		;040d
	ld c,c			;040f
	add hl,sp		;0410
	djnz $+91		;0411
	ld e,c			;0413
	add hl,sp		;0414
	djnz l0480h		;0415
	ld l,c			;0417
	add hl,sp		;0418
	ld (de),a		;0419
	ld a,a			;041a
l041bh:
	ld a,a			;041b
	ld hl,09b0ch		;041c
	sbc a,e			;041f
	ld hl,l0006h		;0420
	ld a,a			;0423
	adc a,d			;0424
	add hl,sp		;0425
	dec bc			;0426
l0427h:
	ld hl,039a0h		;0427
	jr l03cch		;042a
	and b			;042c
l042dh:
	add hl,sp		;042d
	jr $+62			;042e
	cp b			;0430
	add hl,sp		;0431
	inc b			;0432
	cp b			;0433
	cp b			;0434
l0435h:
	add hl,sp		;0435
l0436h:
	inc b			;0436
	ld (hl),h		;0437
	cp h			;0438
	ld a,c			;0439
	cp h			;043a
	cp h			;043b
	ld a,c			;043c
l043dh:
	add a,l			;043d
	cp l			;043e
	add hl,sp		;043f
	dec b			;0440
	cp l			;0441
	cp l			;0442
	add hl,sp		;0443
l0444h:
	dec b			;0444
	sub b			;0445
	jp nz,l0539h		;0446
	jp nz,039c2h		;0449
	dec b			;044c
	rra			;044d
	rra			;044e
	inc h			;044f
	jr nz,l0491h		;0450
	ccf			;0452
	inc h			;0453
	jr nz,l04b5h		;0454
	ld e,a			;0456
	inc h			;0457
l0458h:
	jr nz,l04d9h		;0458
	ld a,a			;045a
l045bh:
	inc h			;045b
	jr nz,l03fdh		;045c
	sbc a,a			;045e
	inc h			;045f
	jr nz,$-63		;0460
	cp a			;0462
	inc h			;0463
	ex af,af'		;0464
	nop			;0465
	add hl,bc		;0466
	dec c			;0467
	ld (0ac04h),a		;0468
	ld bc,0ab72h		;046b
	ld (bc),a		;046e
l046fh:
	ld (hl),d		;046f
	xor d			;0470
	inc bc			;0471
	ld (hl),d		;0472
	ld e,e			;0473
	inc b			;0474
	jp p,l075fh		;0475
	ld (hl),d		;0478
	ld h,b			;0479
	ex af,af'		;047a
	ld (hl),d		;047b
	ld h,c			;047c
	ld de,05972h		;047d
l0480h:
	ld (de),a		;0480
	or d			;0481
	ld bc,02401h		;0482
	dec bc			;0485
	rra			;0486
	rra			;0487
	inc h			;0488
	djnz l04bah		;0489
	cpl			;048b
	inc h			;048c
	djnz l04ceh		;048d
	ccf			;048f
	inc h			;0490
l0491h:
	djnz $+81		;0491
	ld c,a			;0493
	inc h			;0494
	inc e			;0495
	xor c			;0496
	xor c			;0497
	inc h			;0498
	ld e,073h		;0499
	ld a,a			;049b
	ld sp,07f0ch		;049c
	ld (hl),e		;049f
	ld hl,08b0ch		;04a0
	adc a,a			;04a3
	ccf			;04a4
	inc b			;04a5
	nop			;04a6
	inc de			;04a7
	add hl,de		;04a8
	inc (hl)		;04a9
	ld b,025h		;04aa
	ld b,l			;04ac
	add hl,sp		;04ad
	jr nz,l04cfh		;04ae
	ld h,l			;04b0
	add hl,sp		;04b1
	ld b,073h		;04b2
	ld (hl),e		;04b4
l04b5h:
	ld hl,l0018h		;04b5
	dec h			;04b8
	ld b,l			;04b9
l04bah:
	add hl,sp		;04ba
	jr nz,l04dch		;04bb
	ld h,l			;04bd
	add hl,sp		;04be
	ld b,073h		;04bf
	ld a,c			;04c1
	add hl,sp		;04c2
	ld b,07fh		;04c3
	add a,l			;04c5
	add hl,sp		;04c6
	ld b,015h		;04c7
	ld (de),a		;04c9
	jp p,l1a18h		;04ca
	or d			;04cd
l04ceh:
	ld l,l			;04ce
l04cfh:
	inc e			;04cf
	pop af			;04d0
	adc a,e			;04d1
	and e			;04d2
	add hl,sp		;04d3
	jr l0546h		;04d4
	cp (hl)			;04d6
	ld sp,hl		;04d7
	cp e			;04d8
l04d9h:
	pop bc			;04d9
l04dah:
	ld sp,hl		;04da
	nop			;04db
l04dch:
	and b			;04dc
	nop			;04dd
	add a,b			;04de
	ld h,b			;04df
	ld (hl),a		;04e0
	jr c,l04f3h		;04e1
	inc hl			;04e3
	and a			;04e4
	nop			;04e5
	ld bc,0ee06h		;04e6
	inc e			;04e9
	ex af,af'		;04ea
	call nz,0a7e5h		;04eb
	inc hl			;04ee
	djnz $+58		;04ef
	ld (hl),a		;04f1
	ld h,b			;04f2
l04f3h:
	add a,b			;04f3
	nop			;04f4
	push hl			;04f5
	call nz,01c08h		;04f6
	xor 006h		;04f9
	ld bc,l0000h		;04fb
	ret po			;04fe
	inc (hl)		;04ff
	ld l,(hl)		;0500
	ld e,d			;0501
	nop			;0502
	add a,(hl)		;0503
	call z,0f7ebh		;0504
	inc (hl)		;0507
	ld l,(hl)		;0508
	ld e,d			;0509
l050ah:
	ld h,c			;050a
	add a,(hl)		;050b
	call z,l0000h		;050c
	inc h			;050f
	ld (de),a		;0510
	ld b,b			;0511
	cp b			;0512
	call m,0fbf9h		;0513
	ld sp,hl		;0516
	ld sp,0f983h		;0517
	or 0c6h			;051a
	add a,d			;051c
	jr c,l059ch		;051d
	rlca			;051f
	ld h,h			;0520
	halt			;0521
	inc hl			;0522
l0523h:
	inc de			;0523
	cp l			;0524
	rst 8			;0525
	ccf			;0526
	jp l070fh		;0527
	jr c,l05aah		;052a
	ld e,a			;052c
	rst 30h			;052d
	rst 38h			;052e
	ld a,h			;052f
	or d			;0530
	rst 0			;0531
	ld a,b			;0532
	pop bc			;0533
	rrca			;0534
	dec a			;0535
	inc d			;0536
	out (00dh),a		;0537
l0539h:
	inc de			;0539
	cpl			;053a
	ld e,a			;053b
	ld a,a			;053c
	rra			;053d
	ld c,a			;053e
	ret po			;053f
	ld h,06eh		;0540
	call nz,0bdc8h		;0542
	di			;0545
l0546h:
	call m,0f0c3h		;0546
	ret po			;0549
	inc e			;054a
	ld a,(hl)		;054b
	jp m,0ffefh		;054c
	ld a,04dh		;054f
	ex (sp),hl		;0551
	ld e,083h		;0552
	ret p			;0554
	cp h			;0555
	jr z,l0523h		;0556
	or b			;0558
	ret z			;0559
	call p,0fefah		;055a
	ret m			;055d
	jp p,0c800h		;055e
l0561h:
	ld h,b			;0561
	ld l,b			;0562
	nop			;0563
	jr nz,l0561h		;0564
	ld (hl),0cdh		;0566
	djnz $-124		;0568
	and 000h		;056a
	dec h			;056c
	rlca			;056d
	ret z			;056e
	ld (hl),040h		;056f
	ret po			;0571
	ret p			;0572
	inc d			;0573
	ld h,l			;0574
	ld (hl),c		;0575
	inc d			;0576
	dec b			;0577
	sub c			;0578
	nop			;0579
	inc a			;057a
	ld a,09eh		;057b
	call z,01521h		;057d
	ld b,h			;0580
	inc e			;0581
	ld (bc),a		;0582
	inc b			;0583
	ld l,h			;0584
	ld b,016h		;0585
	ld (de),a		;0587
	adc a,b			;0588
	sbc a,b			;0589
	ex af,af'		;058a
	ld hl,(01a3ah)		;058b
	adc a,d			;058e
	and d			;058f
	ld (l1351h),a		;0590
	ld h,b			;0593
	xor b			;0594
	ret z			;0595
	xor b			;0596
	ld l,b			;0597
	ld l,c			;0598
	ld bc,0c6c0h		;0599
l059ch:
	ld b,b			;059c
	jr nz,$+8		;059d
	ld bc,04800h		;059f
	ld (bc),a		;05a2
	ld (0040ah),hl		;05a3
	nop			;05a6
	nop			;05a7
	inc b			;05a8
	inc bc			;05a9
l05aah:
	nop			;05aa
	adc a,l			;05ab
	ld b,d			;05ac
	inc b			;05ad
	ld (bc),a		;05ae
	ex af,af'		;05af
	inc d			;05b0
	ld bc,l0000h		;05b1
	ld sp,0406fh		;05b4
	inc e			;05b7
	jp nz,08200h		;05b8
	cp c			;05bb
	ld h,d			;05bc
	ld b,000h		;05bd
	add a,l			;05bf
	ld h,e			;05c0
	ld (hl),e		;05c1
	ld (hl),c		;05c2
	ld a,(0031bh)		;05c3
	ld bc,07983h		;05c6
	ld a,h			;05c9
	jr c,l05d1h		;05ca
	nop			;05cc
	add a,e			;05cd
	jp m,02074h		;05ce
l05d1h:
	dec b			;05d1
	nop			;05d2
	add a,d			;05d3
	sbc a,h			;05d4
	ld c,006h		;05d5
	nop			;05d7
	add a,l			;05d8
	add a,0ceh		;05d9
	adc a,(hl)		;05db
	ld e,h			;05dc
	ret c			;05dd
	inc bc			;05de
	add a,b			;05df
	nop			;05e0
	cp b			;05e1
	defb 0fdh,0ddh,0deh ;illegal sequence	;05e2
	adc a,0eeh		;05e5
	rst 20h			;05e7
	rst 20h			;05e8
	rst 30h			;05e9
	defb 0fdh,0ddh,0deh ;illegal sequence	;05ea
	adc a,0eeh		;05ed
	rst 20h			;05ef
	rst 20h			;05f0
	rst 30h			;05f1
	add a,b			;05f2
	ret po			;05f3
	ret po			;05f4
	ret p			;05f5
	ld (hl),b		;05f6
	ld a,b			;05f7
sub_05f8h:
	jr c,$-66		;05f8
	di			;05fa
	or e			;05fb
	cp c			;05fc
	cp l			;05fd
	cp l			;05fe
	sbc a,0dfh		;05ff
	rst 8			;0601
	sbc a,(hl)		;0602
	sbc a,a			;0603
	rst 18h			;0604
	rst 18h			;0605
	rst 28h			;0606
	rst 38h			;0607
	rst 30h			;0608
	di			;0609
	rst 8			;060a
	rst 20h			;060b
	ex (sp),hl		;060c
	ex (sp),hl		;060d
	ret p			;060e
	ret p			;060f
	ret m			;0610
	cp 0f9h			;0611
	ld sp,hl		;0613
	call m,0fefch		;0614
	ld a,a			;0617
	ld a,a			;0618
	ccf			;0619
	inc c			;061a
	rst 38h			;061b
	ld (bc),a		;061c
	ld a,a			;061d
	ld (bc),a		;061e
	ccf			;061f
	xor h			;0620
	ld a,a			;0621
	sbc a,a			;0622
	rst 8			;0623
	rst 0			;0624
	rst 20h			;0625
	di			;0626
	call m,0f8feh		;0627
	call m,0dffeh		;062a
	rst 20h			;062d
	ld h,c			;062e
	jr nc,$+10		;062f
sub_0631h:
	ret po			;0631
	ret nc			;0632
	ret nz			;0633
	add a,h			;0634
	ld b,b			;0635
	nop			;0636
	ld (bc),a		;0637
	ld bc,0f7ffh		;0638
	rst 28h			;063b
	rst 8			;063c
	adc a,a			;063d
	dec e			;063e
	ld de,0ff00h		;063f
	rst 38h			;0642
	ei			;0643
	ei			;0644
l0645h:
	pop af			;0645
	pop af			;0646
	ret p			;0647
	ret po			;0648
	sbc a,a			;0649
	sbc a,a			;064a
	add a,e			;064b
	add a,c			;064c
	inc bc			;064d
	ret nz			;064e
	sub d			;064f
	ld h,b			;0650
	rst 38h			;0651
	rst 18h			;0652
	rst 28h			;0653
	ex (sp),hl		;0654
	ld (hl),b		;0655
	jr l0658h		;0656
l0658h:
	nop			;0658
	ret nz			;0659
	ret po			;065a
	ld (hl),b		;065b
	sbc a,b			;065c
	ld b,001h		;065d
	nop			;065f
	nop			;0660
	ld bc,l0303h		;0661
	inc bc			;0664
	rlca			;0665
	add a,c			;0666
	rrca			;0667
	inc b			;0668
	nop			;0669
	sbc a,b			;066a
	ex af,af'		;066b
	inc c			;066c
	inc (hl)		;066d
	cp 001h			;066e
	inc bc			;0670
	rrca			;0671
	rra			;0672
	ccf			;0673
	ccf			;0674
	ld a,a			;0675
	defb 0edh ;next byte illegal after ed	;0676
	rrca			;0677
	rra			;0678
	rra			;0679
	ccf			;067a
	ccf			;067b
	ld a,a			;067c
	rst 30h			;067d
	rst 20h			;067e
	defb 0fdh,0e8h,050h ;illegal sequence	;067f
	add a,b			;0682
	inc c			;0683
	nop			;0684
	sub a			;0685
	rst 30h			;0686
	rst 8			;0687
	sbc a,a			;0688
	ld a,e			;0689
	rst 20h			;068a
	adc a,098h		;068b
	ld hl,0ffffh		;068d
	rst 28h			;0690
	sbc a,a			;0691
	add hl,sp		;0692
	inc hl			;0693
	cp 0fch			;0694
	ret m			;0696
	ret p			;0697
	ret nz			;0698
	add a,b			;0699
	rst 38h			;069a
	cp 0f8h			;069b
	inc b			;069d
	nop			;069e
	sbc a,d			;069f
	scf			;06a0
	ld (hl),a		;06a1
	ret z			;06a2
	sbc a,b			;06a3
	sbc a,b			;06a4
	sbc a,h			;06a5
	sbc a,h			;06a6
	cp h			;06a7
	inc a			;06a8
	ld l,h			;06a9
	ld l,b			;06aa
	ld l,b			;06ab
	jp pe,0d6dah		;06ac
	sbc a,0dch		;06af
	sbc a,h			;06b1
	sbc a,h			;06b2
	cp h			;06b3
	jr c,l0645h		;06b4
	cp 0feh			;06b6
	call m,sub_03fch	;06b8
	ret m			;06bb
	add a,d			;06bc
	jr nc,l06dfh		;06bd
	inc bc			;06bf
	ld h,b			;06c0
	sbc a,b			;06c1
	ret po			;06c2
	ret p			;06c3
	ret p			;06c4
	pop hl			;06c5
	pop bc			;06c6
	add a,a			;06c7
	ccf			;06c8
	call m,0f8fch		;06c9
	ret m			;06cc
	ret p			;06cd
	ret pe			;06ce
	ret po			;06cf
	ret po			;06d0
	ld (hl),b		;06d1
	jr nc,l06dch		;06d2
	inc b			;06d4
	ret p			;06d5
	ret po			;06d6
	ret nz			;06d7
	ret nz			;06d8
	add a,b			;06d9
	inc bc			;06da
	nop			;06db
l06dch:
	sub b			;06dc
	rrca			;06dd
	dec de			;06de
l06dfh:
	rla			;06df
	rlca			;06e0
	adc a,l			;06e1
	adc a,e			;06e2
	inc hl			;06e3
	pop af			;06e4
	ret m			;06e5
	jp nc,061b2h		;06e6
	rst 38h			;06e9
	rst 10h			;06ea
	ex (sp),hl		;06eb
	pop af			;06ec
	inc bc			;06ed
	nop			;06ee
	jp z,08101h		;06ef
	adc a,b			;06f2
	sbc a,h			;06f3
	cp (hl)			;06f4
	ei			;06f5
	or e			;06f6
	ld (hl),a		;06f7
	rst 38h			;06f8
	cp 0ddh			;06f9
	ccf			;06fb
	ld a,a			;06fc
	in a,(0b3h)		;06fd
	rst 20h			;06ff
l0700h:
	sbc a,a			;0700
	cp 0feh			;0701
l0703h:
	defb 0fdh,0fbh,000h ;illegal sequence	;0703
	nop			;0706
	ld h,b			;0707
	ld h,b			;0708
	ld (hl),b		;0709
	ret p			;070a
	rlca			;070b
	ei			;070c
	ld (bc),a		;070d
l070eh:
	ld b,a			;070e
l070fh:
	call z,080ceh		;070f
	sub b			;0712
	or b			;0713
	ld a,c			;0714
	ld bc,l0f07h		;0715
	rra			;0718
	ccf			;0719
	ld a,a			;071a
	ld a,a			;071b
	rst 38h			;071c
	ret m			;071d
	inc bc			;071e
	ld bc,03f7fh		;071f
	rst 18h			;0722
	rst 20h			;0723
	rst 38h			;0724
	ccf			;0725
	ld a,a			;0726
	scf			;0727
	ld c,a			;0728
l0729h:
	add hl,de		;0729
	cp a			;072a
	ld a,a			;072b
	ld a,001h		;072c
	inc bc			;072e
	rlca			;072f
	dec bc			;0730
	ld de,060c2h		;0731
	jr l0737h		;0734
	inc bc			;0736
l0737h:
	rla			;0737
	dec sp			;0738
	ld a,a			;0739
	inc bc			;073a
	rst 38h			;073b
	add a,h			;073c
	adc a,a			;073d
	set 4,a			;073e
	ei			;0740
	inc b			;0741
	rst 38h			;0742
	adc a,l			;0743
	rlca			;0744
	ld c,01ch		;0745
	ld h,b			;0747
	cp 0f8h			;0748
	ret po			;074a
	nop			;074b
	ex af,af'		;074c
	inc e			;074d
	ld (l0148h),a		;074e
	add hl,bc		;0751
	nop			;0752
	add a,d			;0753
	adc a,b			;0754
	ret c			;0755
	dec b			;0756
	nop			;0757
	sub b			;0758
	ex af,af'		;0759
	jr l06dfh		;075a
	nop			;075c
	jr nc,l0729h		;075d
l075fh:
	djnz l0799h		;075f
	ld a,c			;0761
	ld l,b			;0762
l0763h:
	jp pe,08401h		;0763
	ld (hl),04eh		;0766
	adc a,003h		;0768
	rst 20h			;076a
	inc b			;076b
	nop			;076c
	add a,h			;076d
	inc hl			;076e
	ld (hl),b		;076f
	ld l,(hl)		;0770
	add a,(hl)		;0771
	inc b			;0772
	nop			;0773
	add a,h			;0774
	ex af,af'		;0775
	jp po,025d9h		;0776
	ex af,af'		;0779
	nop			;077a
	rst 0			;077b
	add a,b			;077c
	ex (sp),hl		;077d
	rst 30h			;077e
	rst 30h			;077f
	ret po			;0780
l0781h:
	ld c,01fh		;0781
	ld c,000h		;0783
sub_0785h:
	rra			;0785
	cp a			;0786
	rst 18h			;0787
	rst 18h			;0788
	rlca			;0789
	jr nc,$+50		;078a
	inc c			;078c
	sbc a,(hl)		;078d
	sbc a,0cdh		;078e
	add a,b			;0790
	ld a,07eh		;0791
	jr c,l0798h		;0793
	adc a,a			;0795
	rst 18h			;0796
	ld e,a			;0797
l0798h:
	sbc a,a			;0798
l0799h:
	rst 18h			;0799
	rst 8			;079a
	add a,b			;079b
	ret nz			;079c
	pop hl			;079d
	di			;079e
	ret po			;079f
	rst 8			;07a0
	rst 18h			;07a1
	rra			;07a2
	rrca			;07a3
	rst 38h			;07a4
	rra			;07a5
	cp a			;07a6
	rst 18h			;07a7
	rst 18h			;07a8
	rlca			;07a9
	jr nc,l07dch		;07aa
	ld bc,09b3bh		;07ac
	ld h,e			;07af
	ret p			;07b0
	ld h,a			;07b1
	rlca			;07b2
	nop			;07b3
	add a,b			;07b4
	ex (sp),hl		;07b5
	rst 30h			;07b6
	rst 30h			;07b7
	ret po			;07b8
	ld c,01fh		;07b9
	ld c,000h		;07bb
	djnz l07c9h		;07bd
	ld b,c			;07bf
	add a,e			;07c0
	and c			;07c1
	ld b,b			;07c2
	inc bc			;07c3
	nop			;07c4
	sub (hl)		;07c5
	djnz l07c8h		;07c6
l07c8h:
	ld c,d			;07c8
l07c9h:
	inc c			;07c9
	add a,h			;07ca
	add a,h			;07cb
	nop			;07cc
	nop			;07cd
	ex af,af'		;07ce
	jr nz,l0763h		;07cf
	pop de			;07d1
	ld h,b			;07d2
	ld l,b			;07d3
	nop			;07d4
	djnz l07d7h		;07d5
l07d7h:
	ld (bc),a		;07d7
	sub b			;07d8
	adc a,c			;07d9
	xor l			;07da
	ld l,a			;07db
l07dch:
	inc bc			;07dc
	nop			;07dd
	ld (bc),a		;07de
	ld a,(bc)		;07df
	adc a,e			;07e0
	inc e			;07e1
	ld c,006h		;07e2
	nop			;07e4
	nop			;07e5
	djnz $+76		;07e6
	dec sp			;07e8
	ld e,00eh		;07e9
	ld c,a			;07eb
	inc bc			;07ec
	nop			;07ed
	add a,l			;07ee
	add a,b			;07ef
	ld (de),a		;07f0
	pop de			;07f1
	ret p			;07f2
	ld l,h			;07f3
	inc bc			;07f4
	nop			;07f5
	sbc a,d			;07f6
	ex af,af'		;07f7
	add a,h			;07f8
	rlca			;07f9
	sub d			;07fa
	and d			;07fb
	nop			;07fc
	nop			;07fd
	add a,b			;07fe
	add a,h			;07ff
l0800h:
	ld b,b			;0800
	ld c,c			;0801
l0802h:
	dec b			;0802
	rlca			;0803
	nop			;0804
	inc b			;0805
	nop			;0806
	adc a,d			;0807
	ld (de),a		;0808
	ld d,c			;0809
	ld hl,06300h		;080a
	dec hl			;080d
	ld sp,l1111h		;080e
	inc bc			;0811
	nop			;0812
	xor b			;0813
	ld h,0a5h		;0814
	and d			;0816
	inc bc			;0817
	ld b,d			;0818
	add a,c			;0819
	add a,c			;081a
	ld bc,05216h		;081b
	ld hl,090a9h		;081e
	djnz l083bh		;0821
	jr l082ch		;0823
	add a,a			;0825
	inc bc			;0826
	ld bc,02121h		;0827
l082ah:
	djnz l0840h		;082a
l082ch:
	ld l,b			;082c
	jr c,l0867h		;082d
	sub d			;082f
	ld (de),a		;0830
	ld de,02000h		;0831
	ret po			;0834
	ld c,b			;0835
	ld c,h			;0836
	dec b			;0837
	ld (bc),a		;0838
	ld b,d			;0839
	add a,b			;083a
l083bh:
	add a,b			;083b
	ex af,af'		;083c
	ret nz			;083d
	nop			;083e
	inc bc			;083f
l0840h:
	ld bc,l1386h		;0840
	di			;0843
	ret p			;0844
	rst 38h			;0845
	rst 38h			;0846
	ld bc,l0303h		;0847
	add a,c			;084a
	rlca			;084b
	rlca			;084c
	nop			;084d
	add a,c			;084e
	ld e,b			;084f
	inc bc			;0850
	ret c			;0851
	inc bc			;0852
	nop			;0853
	add a,c			;0854
	rra			;0855
	rlca			;0856
	rst 38h			;0857
	sbc a,d			;0858
	ld e,0feh		;0859
	cp 0ffh			;085b
	rst 38h			;085d
	nop			;085e
	dec l			;085f
	dec l			;0860
	nop			;0861
	inc b			;0862
	add hl,bc		;0863
	ld (de),a		;0864
	dec h			;0865
	nop			;0866
l0867h:
	cp e			;0867
	cp e			;0868
	nop			;0869
	or a			;086a
	ld (hl),a		;086b
	rst 28h			;086c
	rst 28h			;086d
	ld bc,03f0fh		;086e
	ld a,a			;0871
	ld a,a			;0872
	inc bc			;0873
	rst 38h			;0874
	ld (bc),a		;0875
	ld a,a			;0876
	adc a,e			;0877
	ccf			;0878
	rrca			;0879
	ld bc,0ff00h		;087a
	rst 38h			;087d
	nop			;087e
	inc bc			;087f
	rrca			;0880
	rra			;0881
	rra			;0882
	inc bc			;0883
	ccf			;0884
	ld (bc),a		;0885
	rra			;0886
	adc a,e			;0887
	rrca			;0888
	inc bc			;0889
	nop			;088a
	nop			;088b
	rst 38h			;088c
	rst 38h			;088d
	nop			;088e
	ld bc,l0703h		;088f
	rlca			;0892
	inc bc			;0893
	rrca			;0894
	ld (bc),a		;0895
	rlca			;0896
	add a,h			;0897
	inc bc			;0898
	ld bc,l0000h		;0899
	ld a,(bc)		;089c
	rst 38h			;089d
	adc a,l			;089e
	ld bc,09b3bh		;089f
	ld h,e			;08a2
	ret p			;08a3
	ld h,a			;08a4
	rlca			;08a5
	nop			;08a6
	nop			;08a7
	ld h,b			;08a8
	djnz l08b0h		;08a9
	inc b			;08ab
	inc bc			;08ac
	ld (bc),a		;08ad
	adc a,b			;08ae
	nop			;08af
l08b0h:
	add a,b			;08b0
	ld b,d			;08b1
	ld hl,l1029h		;08b2
	nop			;08b5
	nop			;08b6
	nop			;08b7
	ld (bc),a		;08b8
	nop			;08b9
	inc bc			;08ba
	add a,b			;08bb
	inc bc			;08bc
	ld b,b			;08bd
	inc bc			;08be
	nop			;08bf
	adc a,l			;08c0
	add a,b			;08c1
	ret nz			;08c2
	ret nz			;08c3
	ret po			;08c4
	ret p			;08c5
	nop			;08c6
	add a,b			;08c7
	add a,b			;08c8
	ld b,b			;08c9
	and b			;08ca
	sbc a,b			;08cb
	ld b,h			;08cc
	jr nz,l08d5h		;08cd
	nop			;08cf
	add a,a			;08d0
	ld e,b			;08d1
	rrca			;08d2
	jr l08d9h		;08d3
l08d5h:
	inc b			;08d5
	inc bc			;08d6
	inc bc			;08d7
	inc bc			;08d8
l08d9h:
	ld bc,05684h		;08d9
	ld (l0222h),hl		;08dc
	inc b			;08df
	nop			;08e0
	add a,c			;08e1
	inc d			;08e2
	inc bc			;08e3
	ex af,af'		;08e4
	rlca			;08e5
	nop			;08e6
	ld (bc),a		;08e7
	ld bc,00383h		;08e8
	rlca			;08eb
	rlca			;08ec
	dec b			;08ed
	nop			;08ee
	add a,c			;08ef
	rlca			;08f0
	ld a,(bc)		;08f1
	rst 38h			;08f2
	djnz l08f5h		;08f3
l08f5h:
	dec b			;08f5
	rst 38h			;08f6
	ld (bc),a		;08f7
	rst 30h			;08f8
	add a,c			;08f9
	ex (sp),hl		;08fa
	ld b,0ffh		;08fb
	add a,d			;08fd
sub_08feh:
	ld (bc),a		;08fe
l08ffh:
	rlca			;08ff
	inc bc			;0900
	ld bc,00302h		;0901
	add a,(hl)		;0904
	ld bc,l0100h		;0905
	nop			;0908
	jr l090fh		;0909
	rlca			;090b
	nop			;090c
	add a,e			;090d
	ld c,b			;090e
l090fh:
	ld (00302h),hl		;090f
	nop			;0912
	nop			;0913
	inc bc			;0914
	nop			;0915
	ld (bc),a		;0916
	ex af,af'		;0917
	ld (bc),a		;0918
	inc e			;0919
	sub c			;091a
	ld a,(l1c18h)		;091b
	ld hl,(07238h)		;091e
	ld b,c			;0921
	ex af,af'		;0922
	rst 38h			;0923
	inc e			;0924
	inc (hl)		;0925
	ld a,(07259h)		;0926
	ld b,c			;0929
	ex af,af'		;092a
	rst 38h			;092b
	nop			;092c
	sbc a,l			;092d
	ld c,03bh		;092e
	ld (hl),a		;0930
	ld l,h			;0931
	and b			;0932
	ld l,a			;0933
	ld h,a			;0934
	sbc a,a			;0935
	ld a,(hl)		;0936
	ccf			;0937
	add a,a			;0938
	cp 00dh			;0939
	ld a,l			;093b
	ret po			;093c
l093dh:
	call m,06489h		;093d
	ld sp,hl		;0940
l0941h:
	or c			;0941
	ld b,h			;0942
	add a,e			;0943
	nop			;0944
	nop			;0945
	jr nz,l09bdh		;0946
	ld sp,hl		;0948
	ld c,(hl)		;0949
	ld b,h			;094a
	inc bc			;094b
	add hl,bc		;094c
	and l			;094d
	ld (hl),d		;094e
	ld (hl),e		;094f
	jr nc,l09aah		;0950
	ld l,(hl)		;0952
	ld de,l0000h		;0953
	inc e			;0956
	ld a,(hl)		;0957
	pop hl			;0958
	ret nz			;0959
	pop bc			;095a
l095bh:
	add a,b			;095b
	ld bc,0c282h		;095c
	adc a,e			;095f
	inc a			;0960
	cp c			;0961
	ld sp,iy		;0962
	jp m,0e076h		;0964
	ld (hl),b		;0967
	ret m			;0968
	or h			;0969
	or a			;096a
	ld a,01eh		;096b
	inc l			;096d
	ld h,d			;096e
	sbc a,e			;096f
	ld h,(hl)		;0970
	or c			;0971
	ld b,h			;0972
	inc bc			;0973
	rrca			;0974
	or b			;0975
	and l			;0976
	sbc a,c			;0977
	ld e,d			;0978
	ld b,d			;0979
	jr l09a0h		;097a
	jr l0941h		;097c
	jr l093dh		;097e
	dec a			;0980
	cp l			;0981
	dec a			;0982
	cp l			;0983
	dec a			;0984
	ld b,d			;0985
	inc a			;0986
	dec a			;0987
	ld a,b			;0988
	ld a,c			;0989
	ret p			;098a
	di			;098b
	ret po			;098c
	jr $-125		;098d
	jp nz,07975h		;098f
	ld a,(l0b15h)		;0992
	adc a,h			;0995
	nop			;0996
	and e			;0997
	exx			;0998
	xor l			;0999
	and l			;099a
	and l			;099b
	xor e			;099c
	ld c,d			;099d
	dec d			;099e
	sub c			;099f
l09a0h:
	ld a,(bc)		;09a0
	adc a,d			;09a1
	adc a,b			;09a2
	ld d,a			;09a3
	inc h			;09a4
	jp 08f00h		;09a5
	ld a,d			;09a8
	dec hl			;09a9
l09aah:
	ld a,(bc)		;09aa
	ld bc,022c3h		;09ab
	ld e,003h		;09ae
	ret nz			;09b0
	rra			;09b1
	ld c,a			;09b2
	and c			;09b3
	ld c,b			;09b4
	xor h			;09b5
	cp b			;09b6
	inc b			;09b7
	nop			;09b8
	adc a,d			;09b9
	ld hl,(0eaeah)		;09ba
l09bdh:
	ld hl,(l1800h)		;09bd
	ret nz			;09c0
	ld a,a			;09c1
	ccf			;09c2
	ld bc,0af03h		;09c3
	add a,l			;09c6
	jr l09cch		;09c7
	cp 0fch			;09c9
	add a,b			;09cb
l09cch:
	inc bc			;09cc
	push af			;09cd
	nop			;09ce
	sbc a,h			;09cf
	ld sp,hl		;09d0
	ld a,c			;09d1
	ld a,(hl)		;09d2
	rra			;09d3
	jp 0331fh		;09d4
	ld b,b			;09d7
	rst 0			;09d8
	rst 28h			;09d9
	ld a,h			;09da
	add a,e			;09db
	cp e			;09dc
	ld a,(hl)		;09dd
	rst 38h			;09de
	ld a,(hl)		;09df
	ccf			;09e0
	ccf			;09e1
	rst 38h			;09e2
	ret m			;09e3
	ret po			;09e4
	ret m			;09e5
	call z,sub_0002h	;09e6
	ld a,a			;09e9
	nop			;09ea
	rrca			;09eb
	inc b			;09ec
	nop			;09ed
	inc b			;09ee
	ld a,e			;09ef
	adc a,c			;09f0
	rst 38h			;09f1
	ret m			;09f2
	ld b,007h		;09f3
	rst 20h			;09f5
	ccf			;09f6
	ld a,a			;09f7
	ccf			;09f8
	ld bc,0af03h		;09f9
	nop			;09fc
	adc a,b			;09fd
	di			;09fe
	ret nz			;09ff
	rra			;0a00
	ret m			;0a01
	or 0cch			;0a02
	inc a			;0a04
l0a05h:
	ret m			;0a05
	inc b			;0a06
	nop			;0a07
	xor b			;0a08
	ld bc,l1f0fh		;0a09
	ret nz			;0a0c
	nop			;0a0d
	nop			;0a0e
	ld bc,0f91eh		;0a0f
	rst 20h			;0a12
	call c,sub_0631h	;0a13
	ld a,(052bah)		;0a16
	add a,018h		;0a19
	ld (hl),b		;0a1b
	ret nz			;0a1c
	inc bc			;0a1d
	rrca			;0a1e
	inc e			;0a1f
	dec sp			;0a20
	jr nc,l0a6ah		;0a21
	call m,0dd00h		;0a23
	dec sp			;0a26
	call p,03f81h		;0a27
	ret po			;0a2a
	nop			;0a2b
	nop			;0a2c
	rst 0			;0a2d
	adc a,01ch		;0a2e
	ret m			;0a30
	rlca			;0a31
	nop			;0a32
	and l			;0a33
	rlca			;0a34
	rra			;0a35
	ld b,b			;0a36
	ld (bc),a		;0a37
	ld a,d			;0a38
	nop			;0a39
	rlca			;0a3a
	sbc a,0dch		;0a3b
	add a,e			;0a3d
	rrca			;0a3e
	call m,0fff2h		;0a3f
	ld bc,l0403h		;0a42
	ld bc,0260ch		;0a45
	ld h,b			;0a48
	rlca			;0a49
	rra			;0a4a
	ccf			;0a4b
	ld a,a			;0a4c
	ld a,a			;0a4d
	rrca			;0a4e
	ld a,a			;0a4f
	rla			;0a50
	rlca			;0a51
	rra			;0a52
	ccf			;0a53
	ld a,a			;0a54
	ld a,a			;0a55
	rrca			;0a56
	ld a,a			;0a57
	rla			;0a58
	nop			;0a59
	ld (bc),a		;0a5a
	nop			;0a5b
	add a,(hl)		;0a5c
	jr $+62			;0a5d
	add a,c			;0a5f
	rst 20h			;0a60
	ld b,d			;0a61
	ld a,(hl)		;0a62
	inc b			;0a63
	ld a,e			;0a64
	add a,h			;0a65
	nop			;0a66
	ret m			;0a67
	ld b,007h		;0a68
l0a6ah:
	nop			;0a6a
l0a6bh:
	sub l			;0a6b
	nop			;0a6c
	cp l			;0a6d
	cp l			;0a6e
	nop			;0a6f
	cp l			;0a70
	cp l			;0a71
	add a,c			;0a72
	inc a			;0a73
	inc a			;0a74
	add a,c			;0a75
	cp l			;0a76
	cp l			;0a77
	nop			;0a78
	cp l			;0a79
	cp l			;0a7a
	nop			;0a7b
	nop			;0a7c
	cp l			;0a7d
	cp l			;0a7e
	add a,c			;0a7f
	inc a			;0a80
	ld b,000h		;0a81
	add a,a			;0a83
	inc a			;0a84
	add a,c			;0a85
	cp l			;0a86
	cp l			;0a87
	rst 38h			;0a88
	nop			;0a89
	ld l,b			;0a8a
	dec b			;0a8b
	nop			;0a8c
	add a,c			;0a8d
	ld l,b			;0a8e
	inc b			;0a8f
	nop			;0a90
	add a,c			;0a91
	inc h			;0a92
	inc bc			;0a93
	nop			;0a94
	nop			;0a95
	sbc a,b			;0a96
	nop			;0a97
	or l			;0a98
	defb 0fdh,001h,07dh ;illegal sequence	;0a99
	dec c			;0a9c
	ret po			;0a9d
	rst 38h			;0a9e
	ld l,l			;0a9f
	ld l,l			;0aa0
	inc d			;0aa1
	ld a,a			;0aa2
	add a,b			;0aa3
	ccf			;0aa4
	ld hl,(0112ah)		;0aa5
	ex af,af'		;0aa8
	inc b			;0aa9
	inc bc			;0aaa
	ld bc,l0703h		;0aab
	rrca			;0aae
	nop			;0aaf
	xor d			;0ab0
	nop			;0ab1
	ld l,d			;0ab2
	ld h,d			;0ab3
	ld h,015h		;0ab4
	sub c			;0ab6
	ld c,c			;0ab7
	ld hl,(05500h)		;0ab8
	inc sp			;0abb
	sbc a,c			;0abc
	sbc a,a			;0abd
	ld b,b			;0abe
	dec hl			;0abf
	ld d,h			;0ac0
	nop			;0ac1
	xor d			;0ac2
	call z,0f999h		;0ac3
	ld (bc),a		;0ac6
	jr l0a6bh		;0ac7
	ld d,l			;0ac9
	ld d,h			;0aca
	xor d			;0acb
	xor c			;0acc
	ld h,h			;0acd
	call nz,09395h		;0ace
	inc h			;0ad1
l0ad2h:
	and h			;0ad2
	ld d,h			;0ad3
	ld d,h			;0ad4
	sub l			;0ad5
	and l			;0ad6
	ld hl,(l0032h)		;0ad7
	ld h,a			;0ada
	inc bc			;0adb
	ld d,h			;0adc
	adc a,a			;0add
	add a,b			;0ade
	cp 0bah			;0adf
	dec e			;0ae1
	scf			;0ae2
	ld l,(hl)		;0ae3
	ld e,l			;0ae4
	ld e,l			;0ae5
l0ae6h:
	nop			;0ae6
	ld l,05dh		;0ae7
	rst 30h			;0ae9
	rst 38h			;0aea
	ld a,(hl)		;0aeb
	defb 0ddh,004h,0fdh ;illegal sequence	;0aec
	add a,d			;0aef
	ld h,e			;0af0
	inc e			;0af1
	dec b			;0af2
	ld e,l			;0af3
	adc a,h			;0af4
	ld a,a			;0af5
	ld l,(hl)		;0af6
	ld l,(hl)		;0af7
	ld l,d			;0af8
	ld l,(hl)		;0af9
	ld h,h			;0afa
	ld h,h			;0afb
	inc h			;0afc
	ld (05c40h),hl		;0afd
	ld b,b			;0b00
	inc bc			;0b01
	ld e,h			;0b02
	and a			;0b03
	ld b,b			;0b04
	ld a,h			;0b05
	ld a,000h		;0b06
	ccf			;0b08
	inc de			;0b09
	inc c			;0b0a
	ld e,a			;0b0b
	jr l0b45h		;0b0c
	inc e			;0b0e
	nop			;0b0f
	defb 0ddh,0dch,0dfh ;illegal sequence	;0b10
	nop			;0b13
	inc e			;0b14
l0b15h:
	inc e			;0b15
	jr nc,l0b4dh		;0b16
	push bc			;0b18
	jr nc,l0ad2h		;0b19
	or c			;0b1b
	or l			;0b1c
	dec (hl)		;0b1d
	or l			;0b1e
	dec (hl)		;0b1f
	or c			;0b20
	or a			;0b21
	rst 0			;0b22
	jr nc,l0b5ch		;0b23
	scf			;0b25
	inc e			;0b26
	rrca			;0b27
	dec d			;0b28
	dec d			;0b29
	nop			;0b2a
	inc bc			;0b2b
	inc e			;0b2c
	adc a,b			;0b2d
	ld l,a			;0b2e
	nop			;0b2f
	ld d,l			;0b30
	ld d,l			;0b31
	rra			;0b32
	ccf			;0b33
	ld a,a			;0b34
	nop			;0b35
	ld b,05dh		;0b36
	adc a,d			;0b38
	ld e,h			;0b39
	ld e,l			;0b3a
	defb 0fdh,0fch,01dh ;illegal sequence	;0b3b
	pop af			;0b3e
	dec d			;0b3f
	push af			;0b40
	pop af			;0b41
	push af			;0b42
	ex af,af'		;0b43
	inc e			;0b44
l0b45h:
	sub b			;0b45
	ld (l031dh),a		;0b46
	ld h,06dh		;0b49
	ld c,c			;0b4b
	ld e,d			;0b4c
l0b4dh:
	jp 0fcfdh		;0b4d
	defb 0fdh,0f1h,0f5h ;illegal sequence	;0b50
	push af			;0b53
	pop af			;0b54
	push af			;0b55
	nop			;0b56
	add a,d			;0b57
	nop			;0b58
	ld (hl),c		;0b59
	inc b			;0b5a
	nop			;0b5b
l0b5ch:
	add a,h			;0b5c
	ld (hl),c		;0b5d
	nop			;0b5e
	nop			;0b5f
	nop			;0b60
	inc b			;0b61
	jr nz,l0ae6h		;0b62
	nop			;0b64
	nop			;0b65
	nop			;0b66
	adc a,b			;0b67
	nop			;0b68
	ld a,07fh		;0b69
l0b6bh:
	ld a,a			;0b6b
	ld a,l			;0b6c
	ld a,l			;0b6d
	ld a,e			;0b6e
	ld a,000h		;0b6f
	ret nc			;0b71
	rra			;0b72
	ret po			;0b73
	ld bc,04b17h		;0b74
	dec a			;0b77
	ld b,h			;0b78
	ld (de),a		;0b79
	ret m			;0b7a
	rlca			;0b7b
	ld h,b			;0b7c
	call nc,05904h		;0b7d
	ld d,h			;0b80
	cp 043h			;0b81
	ld b,e			;0b83
	ld h,a			;0b84
	sub a			;0b85
	adc a,e			;0b86
	sbc a,e			;0b87
	or l			;0b88
	sub a			;0b89
	inc b			;0b8a
	jr nz,$-122		;0b8b
	ld d,e			;0b8d
	dec c			;0b8e
	ld e,d			;0b8f
	dec a			;0b90
	ld e,0a0h		;0b91
	add a,b			;0b93
	ld c,d			;0b94
	jr nc,l0b6bh		;0b95
	ei			;0b97
	jp c,l02dch		;0b98
	ld b,d			;0b9b
	add a,d			;0b9c
	pop hl			;0b9d
	pop bc			;0b9e
	and c			;0b9f
	pop bc			;0ba0
	pop de			;0ba1
	sbc a,e			;0ba2
	adc a,l			;0ba3
	add a,l			;0ba4
	sub e			;0ba5
	sbc a,d			;0ba6
	ld c,l			;0ba7
	ld b,b			;0ba8
	ld b,b			;0ba9
	ccf			;0baa
	ccf			;0bab
	adc a,a			;0bac
	rra			;0bad
	ld b,0afh		;0bae
	ld e,e			;0bb0
	sbc a,h			;0bb1
	xor d			;0bb2
	jp p,0a0ech		;0bb3
	sub b			;0bb6
	call m,0f4aah		;0bb7
	pop af			;0bba
	pop bc			;0bbb
	pop bc			;0bbc
	pop hl			;0bbd
	ld h,c			;0bbe
	ld b,d			;0bbf
	and d			;0bc0
	add a,d			;0bc1
	nop			;0bc2
	dec b			;0bc3
	nop			;0bc4
	add a,(hl)		;0bc5
	inc e			;0bc6
	ld bc,01c2ah		;0bc7
	ld b,(hl)		;0bca
	ld hl,l0009h		;0bcb
	adc a,b			;0bce
	ld de,0f004h		;0bcf
	ld b,c			;0bd2
	ld d,08ah		;0bd3
	jr nc,l0c1ch		;0bd5
	rlca			;0bd7
	nop			;0bd8
	adc a,d			;0bd9
	inc e			;0bda
	ld bc,l082ah		;0bdb
	ld (hl),c		;0bde
	xor l			;0bdf
	rrca			;0be0
	inc e			;0be1
	ld b,(hl)		;0be2
	ld hl,l0004h+1		;0be3
	sub c			;0be6
	ld de,0f004h		;0be7
	ld b,c			;0bea
	inc (hl)		;0beb
	inc b			;0bec
	ld l,h			;0bed
	ld bc,08a16h		;0bee
	jr nc,$+71		;0bf1
	nop			;0bf3
	nop			;0bf4
	ld h,b			;0bf5
	ld h,b			;0bf6
	jr nz,l0bfeh		;0bf7
	nop			;0bf9
	adc a,b			;0bfa
	ld hl,(09149h)		;0bfb
l0bfeh:
	dec d			;0bfe
	ld h,062h		;0bff
	ld l,d			;0c01
	nop			;0c02
	nop			;0c03
	add a,c			;0c04
	rst 38h			;0c05
	ld b,07fh		;0c06
	ld (bc),a		;0c08
	nop			;0c09
	ld b,0fch		;0c0a
	add a,d			;0c0c
	nop			;0c0d
	rst 38h			;0c0e
	ld b,07fh		;0c0f
	ld (bc),a		;0c11
	nop			;0c12
	ld b,0fch		;0c13
	ld (bc),a		;0c15
	rst 38h			;0c16
	add a,c			;0c17
	ld a,a			;0c18
	inc b			;0c19
	ld b,b			;0c1a
	add a,h			;0c1b
l0c1ch:
	ld a,a			;0c1c
	nop			;0c1d
	nop			;0c1e
	call m,sub_0404h	;0c1f
	adc a,d			;0c22
	call m,0ffffh		;0c23
	ex af,af'		;0c26
	ex af,af'		;0c27
	inc e			;0c28
	ex af,af'		;0c29
	ld hl,(06b7fh)		;0c2a
	nop			;0c2d
	add a,d			;0c2e
	rst 38h			;0c2f
	ld a,a			;0c30
	inc b			;0c31
	ld b,b			;0c32
	add a,h			;0c33
	ld a,a			;0c34
	nop			;0c35
	nop			;0c36
	call m,sub_0404h	;0c37
	add a,d			;0c3a
	call m,sub_00ffh	;0c3b
	and b			;0c3e
	rst 38h			;0c3f
	add a,b			;0c40
	ld h,b			;0c41
	ld (hl),a		;0c42
	jr c,l0c55h		;0c43
	inc hl			;0c45
	and a			;0c46
	nop			;0c47
	ld bc,0ee06h		;0c48
	inc e			;0c4b
	ex af,af'		;0c4c
	call nz,0a7e5h		;0c4d
	inc hl			;0c50
	djnz l0c8bh		;0c51
	ld (hl),a		;0c53
	ld h,b			;0c54
l0c55h:
	add a,b			;0c55
	rst 38h			;0c56
	push hl			;0c57
	call nz,01c08h		;0c58
	xor 006h		;0c5b
	ld bc,l0800h		;0c5d
	ld d,l			;0c60
l0c61h:
	sub b			;0c61
	inc (hl)		;0c62
	jr l0c91h		;0c63
	jr l0c9bh		;0c65
	jr l0c95h		;0c67
	jr l0cd5h		;0c69
	ld e,b			;0c6b
	jp z,05aa6h		;0c6c
	xor h			;0c6f
	ld e,d			;0c70
	ld c,(hl)		;0c71
	inc b			;0c72
	nop			;0c73
	adc a,b			;0c74
	ld l,d			;0c75
	ld e,b			;0c76
	jp z,05aa6h		;0c77
	xor h			;0c7a
	ld e,d			;0c7b
	ld c,(hl)		;0c7c
	inc b			;0c7d
	nop			;0c7e
	ld (bc),a		;0c7f
	ld h,(hl)		;0c80
	ex af,af'		;0c81
	nop			;0c82
	ld (bc),a		;0c83
	ld h,(hl)		;0c84
	ex af,af'		;0c85
	nop			;0c86
	ld (bc),a		;0c87
	ld h,(hl)		;0c88
	ex af,af'		;0c89
	nop			;0c8a
l0c8bh:
	ld (bc),a		;0c8b
	ld h,(hl)		;0c8c
	ld (bc),a		;0c8d
	rst 38h			;0c8e
	ex af,af'		;0c8f
	nop			;0c90
l0c91h:
	ld (bc),a		;0c91
	rst 38h			;0c92
	ex af,af'		;0c93
	nop			;0c94
l0c95h:
	ld (bc),a		;0c95
	rst 38h			;0c96
	ex af,af'		;0c97
	nop			;0c98
	ld (bc),a		;0c99
	rst 38h			;0c9a
l0c9bh:
	ld (bc),a		;0c9b
	nop			;0c9c
	add a,c			;0c9d
	jr nz,l0ca8h		;0c9e
	nop			;0ca0
	add a,c			;0ca1
	ld (bc),a		;0ca2
	inc b			;0ca3
	nop			;0ca4
	nop			;0ca5
	sub b			;0ca6
	inc bc			;0ca7
l0ca8h:
	rrca			;0ca8
	rra			;0ca9
	ccf			;0caa
	ld a,a			;0cab
	rst 38h			;0cac
	nop			;0cad
	nop			;0cae
	ret nz			;0caf
	ret p			;0cb0
	ret m			;0cb1
	call m,080feh		;0cb2
	nop			;0cb5
	nop			;0cb6
	nop			;0cb7
	rst 38h			;0cb8
	rlca			;0cb9
	rrca			;0cba
	jr z,$-87		;0cbb
	adc a,a			;0cbd
	jr z,l0c61h		;0cbe
	adc a,(hl)		;0cc0
	ld l,a			;0cc1
	ld l,a			;0cc2
	rst 38h			;0cc3
	and a			;0cc4
	xor a			;0cc5
	rst 38h			;0cc6
	cp a			;0cc7
	inc e			;0cc8
	or 0f6h			;0cc9
	rst 38h			;0ccb
	push hl			;0ccc
	rst 30h			;0ccd
	inc bc			;0cce
	ld c,c			;0ccf
	or h			;0cd0
	ret po			;0cd1
	ret p			;0cd2
	inc d			;0cd3
	push hl			;0cd4
l0cd5h:
	pop af			;0cd5
	call p,041e5h		;0cd6
	ccf			;0cd9
	ld a,h			;0cda
	ld h,e			;0cdb
	ld c,a			;0cdc
	rra			;0cdd
	ld a,07ch		;0cde
	ld a,b			;0ce0
	ld l,e			;0ce1
	add a,a			;0ce2
	xor a			;0ce3
	or a			;0ce4
	ld (hl),a		;0ce5
	ld a,(0f5c9h)		;0ce6
	or d			;0ce9
	cp c			;0cea
	cp d			;0ceb
	or (hl)			;0cec
	ld d,0cfh		;0ced
	xor a			;0cef
	scf			;0cf0
	add a,d			;0cf1
	call c,0accch		;0cf2
	ld h,h			;0cf5
	ld (hl),b		;0cf6
	call p,079f4h		;0cf7
	ld (hl),c		;0cfa
	ld (hl),e		;0cfb
	jr c,l0d37h		;0cfc
	inc e			;0cfe
	ld c,h			;0cff
	ld b,(hl)		;0d00
	ld sp,hl		;0d01
	di			;0d02
	ld h,h			;0d03
	xor b			;0d04
	ret			;0d05
	xor c			;0d06
	ld l,c			;0d07
	ld l,c			;0d08
	jp pe,06492h		;0d09
	adc a,h			;0d0c
	ld a,(de)		;0d0d
	ld (hl),b		;0d0e
	and d			;0d0f
	ld b,063h		;0d10
	ld hl,l1030h		;0d12
	ex af,af'		;0d15
	inc (hl)		;0d16
	ld a,d			;0d17
	cp l			;0d18
	inc h			;0d19
	ld d,043h		;0d1a
	ld sp,04810h		;0d1c
	inc c			;0d1f
	ld h,a			;0d20
	pop af			;0d21
	ld h,e			;0d22
	dec b			;0d23
	adc a,(hl)		;0d24
	or 003h			;0d25
	jr c,l0d6ch		;0d27
	adc a,(hl)		;0d29
	call nz,072a0h		;0d2a
	ld l,h			;0d2d
	ret nz			;0d2e
	ld (de),a		;0d2f
	ret pe			;0d30
l0d31h:
	ret nz			;0d31
	cp 0f9h			;0d32
	ld (hl),a		;0d34
	cpl			;0d35
	sbc a,h			;0d36
l0d37h:
	add a,e			;0d37
	cp c			;0d38
	rrca			;0d39
	ld b,a			;0d3a
	inc bc			;0d3b
	ret nc			;0d3c
	ret c			;0d3d
	call z,0d814h		;0d3e
	ret z			;0d41
	inc d			;0d42
	ret pe			;0d43
	inc d			;0d44
	ex af,af'		;0d45
	inc b			;0d46
	djnz l0d6dh		;0d47
	inc l			;0d49
	ld c,a			;0d4a
	ld c,a			;0d4b
	inc b			;0d4c
l0d4dh:
	ld b,e			;0d4d
	rlca			;0d4e
	ld d,e			;0d4f
	ld e,d			;0d50
	jr z,$-17		;0d51
	dec c			;0d53
	ret po			;0d54
	ret pe			;0d55
	defb 0edh ;next byte illegal after ed	;0d56
	add a,h			;0d57
	ld a,b			;0d58
	call c,02060h		;0d59
	jr nz,l0d72h		;0d5c
	ld de,l0d8bh		;0d5e
	inc b			;0d61
	ld c,h			;0d62
	ld c,b			;0d63
	ld b,h			;0d64
	ld c,h			;0d65
	inc h			;0d66
	and h			;0d67
	ret z			;0d68
	call z,06161h		;0d69
l0d6ch:
	inc d			;0d6c
l0d6dh:
	ld (hl),h		;0d6d
	halt			;0d6e
	ld (030ffh),hl		;0d6f
l0d72h:
	inc b			;0d72
	or d			;0d73
	rst 38h			;0d74
	cp d			;0d75
	ld e,h			;0d76
	rst 38h			;0d77
	inc c			;0d78
	ld (bc),a		;0d79
	ld b,c			;0d7a
	ld (09ab7h),hl		;0d7b
	ld e,l			;0d7e
	ld c,a			;0d7f
	ld h,00ah		;0d80
	jp nc,l1292h		;0d82
	ld a,(de)		;0d85
	inc c			;0d86
	add a,b			;0d87
	inc c			;0d88
	rra			;0d89
	ld c,a			;0d8a
l0d8bh:
	or b			;0d8b
	xor a			;0d8c
	ld l,(hl)		;0d8d
	ld e,001h		;0d8e
	nop			;0d90
	add a,e			;0d91
	ret m			;0d92
	ret m			;0d93
	rlca			;0d94
	ret m			;0d95
	rst 30h			;0d96
	rst 30h			;0d97
	rrca			;0d98
	ld l,a			;0d99
	ld l,a			;0d9a
	rst 38h			;0d9b
	and a			;0d9c
	xor a			;0d9d
	inc bc			;0d9e
	add hl,bc		;0d9f
	adc a,d			;0da0
	dec c			;0da1
	dec e			;0da2
	dec e			;0da3
	ld e,l			;0da4
	ld e,b			;0da5
	ld d,c			;0da6
	ld b,l			;0da7
	ld c,h			;0da8
	add a,0e1h		;0da9
	push af			;0dab
	defb 0edh ;next byte illegal after ed	;0dac
	xor 05eh		;0dad
	sbc a,a			;0daf
	xor a			;0db0
	ld e,c			;0db1
	inc de			;0db2
	ld h,h			;0db3
	xor b			;0db4
	ret			;0db5
	xor c			;0db6
	ld l,c			;0db7
	ld l,c			;0db8
	rla			;0db9
	ret			;0dba
	and 071h		;0dbb
	jr c,l0d4dh		;0dbd
	push bc			;0dbf
	ret po			;0dc0
	pop af			;0dc1
	ld h,d			;0dc2
	inc b			;0dc3
	adc a,d			;0dc4
	rst 30h			;0dc5
	ld (bc),a		;0dc6
	jr c,l0e0ch		;0dc7
	ld b,a			;0dc9
	inc bc			;0dca
	ld d,b			;0dcb
	ld e,b			;0dcc
	ld c,h			;0dcd
	inc d			;0dce
	ld e,b			;0dcf
	ld e,h			;0dd0
	adc a,h			;0dd1
	inc de			;0dd2
	inc l			;0dd3
	ld d,b			;0dd4
	ld b,b			;0dd5
	add a,b			;0dd6
	add a,b			;0dd7
	ret nc			;0dd8
	ld e,l			;0dd9
	dec c			;0dda
	ld d,b			;0ddb
	ld e,b			;0ddc
	ld e,l			;0ddd
	ld c,h			;0dde
	inc b			;0ddf
	add hl,sp		;0de0
	ld h,d			;0de1
	inc h			;0de2
	ld (01011h),hl		;0de3
	sub l			;0de6
	ld c,e			;0de7
	ld c,l			;0de8
	ld c,l			;0de9
	ld b,h			;0dea
	ld d,h			;0deb
	ld d,l			;0dec
	ld a,l			;0ded
	add hl,sp		;0dee
	ld bc,00630h		;0def
	add a,e			;0df2
	ex af,af'		;0df3
	add a,l			;0df4
	add hl,bc		;0df5
	dec l			;0df6
	dec c			;0df7
	ld c,h			;0df8
	ld c,(hl)		;0df9
	nop			;0dfa
	ret po			;0dfb
	inc b			;0dfc
	ld c,019h		;0dfd
	ld (l0a05h),a		;0dff
	dec d			;0e02
	inc d			;0e03
	inc bc			;0e04
	add a,h			;0e05
l0e06h:
	ei			;0e06
	inc e			;0e07
	ld l,l			;0e08
	ld a,(de)		;0e09
	exx			;0e0a
	inc (hl)		;0e0b
l0e0ch:
	dec hl			;0e0c
	jr z,$+89		;0e0d
	ld b,b			;0e0f
	ld e,(hl)		;0e10
	add a,c			;0e11
	rst 38h			;0e12
	nop			;0e13
	or e			;0e14
	ld l,h			;0e15
	ld h,e			;0e16
	ret c			;0e17
	rst 0			;0e18
	and b			;0e19
	sbc a,e			;0e1a
	nop			;0e1b
	ld (hl),a		;0e1c
	dec sp			;0e1d
	rst 38h			;0e1e
	dec bc			;0e1f
	dec bc			;0e20
	inc bc			;0e21
	halt			;0e22
	nop			;0e23
	cp l			;0e24
	sbc a,000h		;0e25
	ld (hl),a		;0e27
	ld (hl),a		;0e28
	nop			;0e29
	rrca			;0e2a
	rst 38h			;0e2b
	ld b,b			;0e2c
	ret pe			;0e2d
	sbc a,a			;0e2e
	ld hl,0a156h		;0e2f
	ld e,l			;0e32
	ld b,e			;0e33
	jr nc,l0e76h		;0e34
	or b			;0e36
	ret nz			;0e37
	ret nc			;0e38
	and b			;0e39
	sub b			;0e3a
	ld b,b			;0e3b
	cp e			;0e3c
	add a,(hl)		;0e3d
	halt			;0e3e
	dec c			;0e3f
	call pe,0f91ah		;0e40
	rst 38h			;0e43
	jr nc,l0e06h		;0e44
	jr nc,$-126		;0e46
	ld (hl),b		;0e48
	nop			;0e49
	or b			;0e4a
	nop			;0e4b
	ld (hl),a		;0e4c
	dec sp			;0e4d
	rst 38h			;0e4e
	dec bc			;0e4f
	dec bc			;0e50
	inc bc			;0e51
	halt			;0e52
	nop			;0e53
	cp l			;0e54
	sbc a,000h		;0e55
	ld (hl),a		;0e57
	ld (hl),a		;0e58
	rst 38h			;0e59
	rrca			;0e5a
	rst 38h			;0e5b
	nop			;0e5c
	ld (bc),a		;0e5d
	nop			;0e5e
	adc a,(hl)		;0e5f
	ld bc,l0003h		;0e60
	nop			;0e63
	ld bc,l0201h		;0e64
	ld (bc),a		;0e67
	dec b			;0e68
	inc b			;0e69
	dec b			;0e6a
	ex af,af'		;0e6b
	rrca			;0e6c
l0e6dh:
	nop			;0e6d
	nop			;0e6e
	sbc a,b			;0e6f
	inc d			;0e70
	ld a,(bc)		;0e71
	ld a,(bc)		;0e72
	ld c,014h		;0e73
	dec e			;0e75
l0e76h:
	ld a,(0603ah)		;0e76
	ret p			;0e79
	ret m			;0e7a
	ld a,b			;0e7b
	jr nc,$-126		;0e7c
	sbc a,h			;0e7e
	ld a,00ch		;0e7f
	ld e,01eh		;0e81
	inc e			;0e83
	dec bc			;0e84
	inc bc			;0e85
	add hl,bc		;0e86
	inc e			;0e87
	inc bc			;0e88
	nop			;0e89
	xor (hl)		;0e8a
	inc bc			;0e8b
	rlca			;0e8c
	ld c,01dh		;0e8d
	ld a,(de)		;0e8f
	nop			;0e90
	rra			;0e91
	ret p			;0e92
	rst 8			;0e93
	jr nc,$-62		;0e94
	ld b,01fh		;0e96
	nop			;0e98
	ret p			;0e99
	inc c			;0e9a
	jp po,l021dh		;0e9b
	pop hl			;0e9e
	ld a,b			;0e9f
	ld a,(06434h)		;0ea0
	ld (hl),h		;0ea3
	ld h,l			;0ea4
	ld d,l			;0ea5
	ld h,d			;0ea6
	ld d,d			;0ea7
	ccf			;0ea8
	ld a,c			;0ea9
	halt			;0eaa
	ld l,h			;0eab
	ld e,h			;0eac
	ld e,(hl)		;0ead
	ld a,03fh		;0eae
	cp h			;0eb0
	cp d			;0eb1
	in a,(017h)		;0eb2
	rla			;0eb4
	rrca			;0eb5
	sbc a,a			;0eb6
	ld a,(hl)		;0eb7
	and b			;0eb8
	inc bc			;0eb9
	ld d,b			;0eba
	inc b			;0ebb
	jr z,$+1		;0ebc
	dec h			;0ebe
	ld c,d			;0ebf
	add hl,hl		;0ec0
	dec l			;0ec1
	inc d			;0ec2
	ld d,00bh		;0ec3
l0ec5h:
	inc bc			;0ec5
	rra			;0ec6
	adc a,a			;0ec7
	ld b,e			;0ec8
	and b			;0ec9
	ret c			;0eca
	ld h,a			;0ecb
	jr c,l0e6dh		;0ecc
	cp h			;0ece
	jp c,0f8e4h		;0ecf
	ld bc,0fd02h		;0ed2
	inc bc			;0ed5
	ld d,b			;0ed6
	ld d,b			;0ed7
	or b			;0ed8
	and b			;0ed9
	ld h,b			;0eda
	and b			;0edb
	ret p			;0edc
	or b			;0edd
	nop			;0ede
	ld bc,0fae5h		;0edf
	dec e			;0ee2
	and 0f9h		;0ee3
	cp 0dfh			;0ee5
	and a			;0ee7
	pop af			;0ee8
	call m,0e71eh		;0ee9
	dec de			;0eec
	push hl			;0eed
	rst 8			;0eee
	ret p			;0eef
	call m,0443fh		;0ef0
	or c			;0ef3
l0ef4h:
	sbc a,0efh		;0ef4
l0ef6h:
	rrca			;0ef6
	di			;0ef7
	inc e			;0ef8
	jp 0e33ch		;0ef9
	ld c,a			;0efc
	cp a			;0efd
	ret po			;0efe
	or e			;0eff
	ld e,l			;0f00
	cp e			;0f01
	ld (hl),a		;0f02
	rst 30h			;0f03
	rst 28h			;0f04
	rst 18h			;0f05
	nop			;0f06
l0f07h:
	ret p			;0f07
	inc c			;0f08
	jp po,l021dh		;0f09
l0f0ch:
	pop hl			;0f0c
	jr c,$+58		;0f0d
	ld (hl),e		;0f0f
	ld l,b			;0f10
	ld b,e			;0f11
	ld d,a			;0f12
	ld d,a			;0f13
	dec sp			;0f14
	inc a			;0f15
	sbc a,h			;0f16
	adc a,(hl)		;0f17
	dec (hl)		;0f18
	sub l			;0f19
	pop de			;0f1a
	add a,e			;0f1b
	inc hl			;0f1c
	ld c,(hl)		;0f1d
	ld e,08fh		;0f1e
	ld b,e			;0f20
	and b			;0f21
	ret c			;0f22
	ld h,a			;0f23
	jr c,l0ec5h		;0f24
	inc a			;0f26
	sbc a,d			;0f27
	call po,001f8h		;0f28
	ld (bc),a		;0f2b
	defb 0fdh,003h,000h ;illegal sequence	;0f2c
	rra			;0f2f
	ret p			;0f30
	rst 8			;0f31
	jr nc,l0ef4h		;0f32
	ld b,01ch		;0f34
	nop			;0f36
	ret p			;0f37
	inc c			;0f38
	jp po,l021dh		;0f39
	pop hl			;0f3c
	jp nz,03108h		;0f3d
	ld h,e			;0f40
	ld c,b			;0f41
	ld e,e			;0f42
	ld d,a			;0f43
	ld b,a			;0f44
	inc hl			;0f45
	jr nc,l0f0ch		;0f46
	sbc a,d			;0f48
	dec a			;0f49
	sbc a,l			;0f4a
	ret c			;0f4b
	add a,e			;0f4c
	ld sp,l1878h		;0f4d
	adc a,h			;0f50
	ld b,e			;0f51
	and b			;0f52
	ret c			;0f53
	ld h,a			;0f54
	jr c,l0ef6h		;0f55
	jr c,$+20		;0f57
	add a,h			;0f59
	ret m			;0f5a
	ld bc,0fd02h		;0f5b
	inc bc			;0f5e
	nop			;0f5f
l0f60h:
	rra			;0f60
	ret p			;0f61
l0f62h:
	rst 8			;0f62
	jr nc,$-62		;0f63
	dec de			;0f65
	rlca			;0f66
	nop			;0f67
	ret p			;0f68
	inc c			;0f69
	jp po,l021dh		;0f6a
	add a,c			;0f6d
	ret nz			;0f6e
	ld h,a			;0f6f
	di			;0f70
	ret m			;0f71
	ld a,e			;0f72
	scf			;0f73
	add a,a			;0f74
	sbc a,e			;0f75
	inc a			;0f76
	call z,03e9eh		;0f77
	sbc a,h			;0f7a
	in a,(083h)		;0f7b
	add hl,sp		;0f7d
	ld a,h			;0f7e
	and b			;0f7f
	inc bc			;0f80
	ld d,b			;0f81
	call nc,0a828h		;0f82
	xor b			;0f85
	jr z,l0fa4h		;0f86
	add a,c			;0f88
	ld c,l			;0f89
	and (hl)		;0f8a
	ret c			;0f8b
	ld h,a			;0f8c
	jr c,$-95		;0f8d
	inc a			;0f8f
	in a,(0e7h)		;0f90
	ld l,d			;0f92
	add hl,de		;0f93
	ld (bc),a		;0f94
	defb 0fdh,003h,009h ;illegal sequence	;0f95
	dec e			;0f98
	ld e,038h		;0f99
	jr nc,l0ffdh		;0f9b
	ld b,b			;0f9d
	nop			;0f9e
	rst 8			;0f9f
	push hl			;0fa0
	ld sp,hl		;0fa1
	ld a,(hl)		;0fa2
	ccf			;0fa3
l0fa4h:
	ld e,a			;0fa4
	ld h,a			;0fa5
	inc sp			;0fa6
	ld bc,055feh		;0fa7
	xor d			;0faa
	ld d,l			;0fab
	jp pe,0fdf3h		;0fac
	ld e,b			;0faf
	cp b			;0fb0
	ld a,b			;0fb1
	cp b			;0fb2
	ld (hl),h		;0fb3
	call p,0e6eeh		;0fb4
	djnz l0fc9h		;0fb7
	jr l0fc7h		;0fb9
	rrca			;0fbb
	dec b			;0fbc
	inc bc			;0fbd
	ld bc,01e3ch		;0fbe
	rrca			;0fc1
	rla			;0fc2
	dec bc			;0fc3
	push de			;0fc4
	cp d			;0fc5
	ld (hl),a		;0fc6
l0fc7h:
	cp 07fh			;0fc7
l0fc9h:
	sbc a,(hl)		;0fc9
	defb 0edh ;next byte illegal after ed	;0fca
	di			;0fcb
	call m,03f7fh		;0fcc
	ld d,e			;0fcf
	or c			;0fd0
	ld (hl),c		;0fd1
	ret po			;0fd2
	ret nc			;0fd3
	jr nc,$-30		;0fd4
	pop bc			;0fd6
	nop			;0fd7
	dec b			;0fd8
	nop			;0fd9
	add a,e			;0fda
	add a,b			;0fdb
	ld b,b			;0fdc
	and b			;0fdd
	inc b			;0fde
	nop			;0fdf
	adc a,h			;0fe0
	ex af,af'		;0fe1
	jr $+50			;0fe2
	ret po			;0fe4
	ld b,b			;0fe5
	add a,b			;0fe6
	add a,b			;0fe7
	ld b,b			;0fe8
	ld b,b			;0fe9
	and b			;0fea
	ld h,b			;0feb
	and b			;0fec
	dec b			;0fed
	nop			;0fee
	add a,e			;0fef
	jr l1016h		;0ff0
	jp c,l0003h		;0ff2
	add a,l			;0ff5
l0ff6h:
	inc b			;0ff6
	ld l,(hl)		;0ff7
	push af			;0ff8
	ld h,e			;0ff9
	add hl,bc		;0ffa
	inc b			;0ffb
	nop			;0ffc
l0ffdh:
	add a,h			;0ffd
	ld (hl),b		;0ffe
	cp d			;0fff
	out (08ch),a		;1000
	dec b			;1002
	nop			;1003
	add a,e			;1004
	djnz l102dh		;1005
	jr z,l1009h		;1007
l1009h:
	sbc a,d			;1009
	add a,b			;100a
	ld b,b			;100b
	nop			;100c
	nop			;100d
	inc de			;100e
	dec bc			;100f
	jp 040c1h		;1010
	jr nc,l1045h		;1013
	nop			;1015
l1016h:
	inc c			;1016
	adc a,(hl)		;1017
	rst 8			;1018
	ex (sp),hl		;1019
	ld h,b			;101a
	ret p			;101b
	ret p			;101c
	ld h,b			;101d
	nop			;101e
	nop			;101f
	ex (sp),hl		;1020
	rst 30h			;1021
	inc bc			;1022
	inc bc			;1023
	inc bc			;1024
	ld (hl),b		;1025
	ld (bc),a		;1026
	nop			;1027
	inc bc			;1028
l1029h:
	rlca			;1029
	ld (bc),a		;102a
	rrca			;102b
	sbc a,b			;102c
l102dh:
	rlca			;102d
	inc bc			;102e
	rlca			;102f
l1030h:
	rrca			;1030
	adc a,e			;1031
	out (0d3h),a		;1032
	ld d,(hl)		;1034
	ld h,e			;1035
	pop bc			;1036
	inc a			;1037
l1038h:
	sbc a,l			;1038
	jp (hl)			;1039
	ex (sp),hl		;103a
	ret nz			;103b
	ret			;103c
	ld bc,0f870h		;103d
	ret m			;1040
	rrca			;1041
	rrca			;1042
	rst 0			;1043
	ret po			;1044
l1045h:
	inc bc			;1045
	ret p			;1046
	ret nz			;1047
	ret po			;1048
	rra			;1049
	rra			;104a
	ccf			;104b
	ccf			;104c
	rra			;104d
	rra			;104e
	dec c			;104f
	ld bc,03f1dh		;1050
	ccf			;1053
	ld c,03eh		;1054
	ld b,b			;1056
	ld a,(03f1eh)		;1057
	dec sp			;105a
	call m,0797ch		;105b
	jp 08307h		;105e
	ex af,af'		;1061
	jp (ix)			;1062
	add a,086h		;1064
	rst 8			;1066
	rst 28h			;1067
	add a,007h		;1068
	rlca			;106a
	inc bc			;106b
	ld de,l1038h		;106c
	nop			;106f
	nop			;1070
	cp a			;1071
	ld a,(hl)		;1072
	ld a,a			;1073
	ld a,a			;1074
	ld a,(hl)		;1075
	inc e			;1076
	ld a,01ch		;1077
	ld (hl),c		;1079
	ret m			;107a
	ld (hl),b		;107b
	ret m			;107c
	ld (hl),b		;107d
	nop			;107e
	inc bc			;107f
	ld bc,080c6h		;1080
	nop			;1083
	djnz $+58		;1084
	djnz $-126		;1086
	ld b,000h		;1088
	add a,e			;108a
	ld h,b			;108b
	ret p			;108c
	cp 006h			;108d
	nop			;108f
	ld (bc),a		;1090
	ld h,b			;1091
	add a,e			;1092
	djnz l10d0h		;1093
	rla			;1095
	inc bc			;1096
	rlca			;1097
	xor e			;1098
	inc sp			;1099
	ld a,b			;109a
	ld l,a			;109b
	sbc a,a			;109c
	xor 0ceh		;109d
	pop de			;109f
	dec e			;10a0
	rra			;10a1
	ld a,(hl)		;10a2
	nop			;10a3
	inc bc			;10a4
	ld h,e			;10a5
	ret p			;10a6
	ret nc			;10a7
	ret nz			;10a8
	ret p			;10a9
	ret m			;10aa
	ld a,c			;10ab
	inc sp			;10ac
	inc bc			;10ad
	inc bc			;10ae
	ld bc,l0000h		;10af
	ld bc,07610h		;10b2
	ld a,a			;10b5
	ld a,(hl)		;10b6
	or 07fh			;10b7
	add hl,sp		;10b9
	ld a,0ceh		;10ba
	call nz,0ccc0h		;10bc
	sbc a,(hl)		;10bf
	ld e,00ch		;10c0
	nop			;10c2
	ld bc,l0303h		;10c3
	add a,c			;10c6
	ld bc,l0003h		;10c7
	sbc a,d			;10ca
	ld a,07eh		;10cb
	call m,0eef4h		;10cd
l10d0h:
	call nz,l0000h		;10d0
	inc bc			;10d3
	rlca			;10d4
	rlca			;10d5
	cp a			;10d6
	ld a,a			;10d7
	add hl,de		;10d8
	inc a			;10d9
	dec sp			;10da
	add a,b			;10db
sub_10dch:
	ret nz			;10dc
	ret nz			;10dd
	call nz,0e080h		;10de
	ret p			;10e1
	jp m,03f1fh		;10e2
	inc bc			;10e5
	ld a,(hl)		;10e6
	adc a,e			;10e7
	ld a,00ch		;10e8
	inc a			;10ea
	ret m			;10eb
	ret p			;10ec
	or 0efh			;10ed
	rst 8			;10ef
	ld b,080h		;10f0
	add a,b			;10f2
	nop			;10f3
	dec b			;10f4
	nop			;10f5
	add a,e			;10f6
	ld a,l			;10f7
	ld a,c			;10f8
	rlca			;10f9
sub_10fah:
	inc b			;10fa
	nop			;10fb
	and h			;10fc
	ret po			;10fd
	ret pe			;10fe
	sbc a,h			;10ff
	ld l,h			;1100
	nop			;1101
	nop			;1102
	jr nz,l1175h		;1103
	jr c,l1124h		;1105
	add hl,bc		;1107
	rlca			;1108
	nop			;1109
	jr l1124h		;110a
	inc e			;110c
	inc c			;110d
	dec c			;110e
	add hl,bc		;110f
	rlca			;1110
l1111h:
	ld e,01fh		;1111
	rra			;1113
	ld (bc),a		;1114
	dec l			;1115
	dec l			;1116
	ld (de),a		;1117
	ld a,a			;1118
	ret pe			;1119
	nop			;111a
	ret m			;111b
	ld b,b			;111c
	or h			;111d
	or h			;111e
	ld c,b			;111f
	cp 000h			;1120
	ld (bc),a		;1122
	nop			;1123
l1124h:
	sbc a,c			;1124
	inc bc			;1125
	ld c,001h		;1126
	defb 0fdh,0fah,000h ;illegal sequence	;1128
	nop			;112b
	ld (hl),b		;112c
	call pe,0e40eh		;112d
	dec de			;1130
	ld c,d			;1131
	call pe,02000h		;1132
	ld (hl),e		;1135
	add hl,sp		;1136
	dec e			;1137
	dec c			;1138
	ld (bc),a		;1139
	inc b			;113a
	jr l1155h		;113b
	dec e			;113d
	inc bc			;113e
	dec c			;113f
	sub d			;1140
	ld (bc),a		;1141
	inc b			;1142
	dec b			;1143
	nop			;1144
	ld d,016h		;1145
	ex af,af'		;1147
	dec b			;1148
	inc c			;1149
	add hl,sp		;114a
	ret z			;114b
	nop			;114c
	jp c,l04dah		;114d
	ret pe			;1150
	call z,sub_0027h	;1151
	inc b			;1154
l1155h:
	nop			;1155
	sbc a,h			;1156
	ret po			;1157
	ret pe			;1158
	sbc a,h			;1159
	ld l,h			;115a
	nop			;115b
	jr $+26			;115c
	inc e			;115e
	inc c			;115f
	dec c			;1160
	add hl,bc		;1161
	rlca			;1162
	ld e,000h		;1163
	rra			;1165
	ld (bc),a		;1166
	dec l			;1167
	dec l			;1168
	ld (de),a		;1169
	ld a,a			;116a
	ret pe			;116b
	nop			;116c
	ret m			;116d
	ld b,b			;116e
	or h			;116f
	or h			;1170
	ld c,b			;1171
	cp 000h			;1172
	sbc a,b			;1174
l1175h:
	ld a,01ch		;1175
	nop			;1177
	ld a,(07d3ah)		;1178
	inc b			;117b
	ld (hl),l		;117c
	nop			;117d
	inc e			;117e
	inc e			;117f
	nop			;1180
	ld a,07fh		;1181
	ld b,c			;1183
	ld e,l			;1184
	cp 004h			;1185
	ld e,h			;1187
	ld e,h			;1188
	sbc a,(hl)		;1189
	cp (hl)			;118a
	djnz $-39		;118b
	nop			;118d
	ret nc			;118e
	rst 38h			;118f
	ld (de),a		;1190
	ld (hl),0ffh		;1191
	cpl			;1193
	rst 38h			;1194
	ld h,00dh		;1195
	rst 38h			;1197
	ld e,d			;1198
	in a,(0ffh)		;1199
	inc a			;119b
	rst 38h			;119c
	ld e,d			;119d
	in a,(0ffh)		;119e
	ld c,b			;11a0
	ld l,h			;11a1
	rst 38h			;11a2
	call p,064ffh		;11a3
	add a,b			;11a6
	ld (de),a		;11a7
	dec sp			;11a8
	sub h			;11a9
	dec sp			;11aa
	ld (de),a		;11ab
	dec sp			;11ac
	sub l			;11ad
	dec sp			;11ae
	ld a,(hl)		;11af
	ld e,(hl)		;11b0
	ld b,c			;11b1
	ld c,c			;11b2
	ld c,c			;11b3
	ld b,c			;11b4
	ld a,(ix+048h)		;11b5
	call c,0dc29h		;11b8
	ld c,b			;11bb
	call c,0dca9h		;11bc
	inc bc			;11bf
	ld b,l			;11c0
	ld d,h			;11c1
	ld (04503h),hl		;11c2
	ld d,l			;11c5
	ld (04366h),hl		;11c6
	ld e,e			;11c9
	ld e,e			;11ca
	ld bc,05d5ch		;11cb
	ld e,h			;11ce
	ld h,(hl)		;11cf
	jp nz,0dadah		;11d0
	add a,b			;11d3
	ld a,(03abah)		;11d4
	ret nz			;11d7
	and d			;11d8
	ld hl,(0c044h)		;11d9
	and d			;11dc
	xor d			;11dd
	ld b,h			;11de
	nop			;11df
	adc a,c			;11e0
	add hl,hl		;11e1
	sub 016h		;11e2
	or 006h			;11e4
	xor (hl)		;11e6
	xor (hl)		;11e7
	nop			;11e8
	ld h,e			;11e9
	ld b,06bh		;11ea
	add a,d			;11ec
	ld h,e			;11ed
	add a,006h		;11ee
	sub 088h		;11f0
	add a,06bh		;11f2
	ld l,e			;11f4
	ld l,b			;11f5
	ld l,a			;11f6
	ld h,b			;11f7
	ld a,a			;11f8
	ld a,a			;11f9
	inc b			;11fa
	rst 38h			;11fb
	add a,c			;11fc
	ex af,af'		;11fd
	dec b			;11fe
	rst 38h			;11ff
	add a,e			;1200
	ld a,a			;1201
	rst 38h			;1202
	add a,c			;1203
	inc b			;1204
	rst 38h			;1205
	ld (bc),a		;1206
	sub 09fh		;1207
	ld d,0f6h		;1209
	ld b,0feh		;120b
	cp 000h			;120d
	sub 0d7h		;120f
	rst 10h			;1211
	ret nc			;1212
	rst 18h			;1213
	ret nz			;1214
	ld a,a			;1215
	rst 38h			;1216
	ld l,e			;1217
	ex de,hl		;1218
	ex de,hl		;1219
	dec bc			;121a
	ei			;121b
	inc bc			;121c
	cp 0ffh			;121d
	rst 38h			;121f
	ld a,a			;1220
	ld a,a			;1221
	ld h,b			;1222
	ld l,a			;1223
	ld l,b			;1224
	ld l,e			;1225
	ld l,e			;1226
	nop			;1227
	inc bc			;1228
	rst 38h			;1229
	add a,c			;122a
	ex af,af'		;122b
	rlca			;122c
	rst 38h			;122d
	sbc a,a			;122e
	add a,c			;122f
	rst 38h			;1230
	ld a,a			;1231
	rst 38h			;1232
	nop			;1233
	cp 0feh			;1234
	ld b,0f6h		;1236
	ld d,0d6h		;1238
	sub 0ffh		;123a
	ld a,a			;123c
	ret nz			;123d
	rst 18h			;123e
	ret nc			;123f
	rst 10h			;1240
	rst 10h			;1241
	sub 0ffh		;1242
	cp 003h			;1244
	ei			;1246
	dec bc			;1247
	ex de,hl		;1248
	ex de,hl		;1249
	ld l,e			;124a
	rst 38h			;124b
	rst 20h			;124c
	inc h			;124d
	inc bc			;124e
	and l			;124f
	adc a,c			;1250
	inc h			;1251
	rst 20h			;1252
	rst 38h			;1253
	ex de,hl		;1254
	ex (sp),hl		;1255
	ex de,hl		;1256
	ex de,hl		;1257
	ex (sp),hl		;1258
	ex de,hl		;1259
	ld de,l08ffh		;125a
	ld e,d			;125d
	inc bc			;125e
	inc (hl)		;125f
	add a,(hl)		;1260
	inc a			;1261
	inc (hl)		;1262
	inc a			;1263
	inc (hl)		;1264
	ld c,d			;1265
	add a,006h		;1266
	sub 082h		;1268
	add a,063h		;126a
	ld b,06bh		;126c
	and d			;126e
	ld h,e			;126f
	ld e,d			;1270
	ld b,d			;1271
	ld a,(hl)		;1272
	ld b,d			;1273
	ld a,(hl)		;1274
	ld b,d			;1275
	ld e,d			;1276
	ld e,d			;1277
	inc a			;1278
	ld a,(hl)		;1279
	inc a			;127a
	ld b,d			;127b
	ld b,d			;127c
	inc a			;127d
	ld a,(hl)		;127e
	inc a			;127f
	sbc a,c			;1280
	ld b,d			;1281
	inc h			;1282
	sbc a,c			;1283
	sbc a,c			;1284
	inc h			;1285
	ld b,d			;1286
	sbc a,c			;1287
	add a,c			;1288
	ld a,(hl)		;1289
	ld c,e			;128a
	jp z,0813ch		;128b
	inc d			;128e
	ret pe			;128f
	rst 38h			;1290
	inc bc			;1291
l1292h:
	ld e,(hl)		;1292
	adc a,b			;1293
	add a,c			;1294
	ld e,(hl)		;1295
	ld e,(hl)		;1296
	ld b,d			;1297
	ld b,d			;1298
	ld e,(hl)		;1299
	ld e,(hl)		;129a
	add a,c			;129b
	inc bc			;129c
	ld e,(hl)		;129d
	ret			;129e
	nop			;129f
	ld e,d			;12a0
	inc h			;12a1
	inc a			;12a2
	inc h			;12a3
	ld h,(hl)		;12a4
	inc h			;12a5
	inc a			;12a6
	ld h,(hl)		;12a7
	inc c			;12a8
	ld h,b			;12a9
	inc c			;12aa
	ld l,h			;12ab
	ld c,h			;12ac
	ld c,a			;12ad
	ld b,a			;12ae
	ld h,l			;12af
	rst 38h			;12b0
	ld h,b			;12b1
	ld a,e			;12b2
	ld h,b			;12b3
	ld l,a			;12b4
	ld l,b			;12b5
	ld l,e			;12b6
	sub h			;12b7
	rst 38h			;12b8
	ld (0ff41h),a		;12b9
	ex af,af'		;12bc
	rst 38h			;12bd
	add a,h			;12be
	add hl,bc		;12bf
	rst 38h			;12c0
	add a,c			;12c1
	rst 18h			;12c2
	inc b			;12c3
	or l			;12c4
	inc b			;12c5
	ld a,e			;12c6
	jr z,l12c9h		;12c7
l12c9h:
	xor (hl)		;12c9
	xor (hl)		;12ca
	ld b,0f6h		;12cb
	ld d,0d6h		;12cd
	add hl,hl		;12cf
	sub h			;12d0
	ld l,e			;12d1
	ld l,b			;12d2
	ld l,a			;12d3
	ld h,b			;12d4
	ld a,e			;12d5
	ld h,b			;12d6
	rst 38h			;12d7
	add hl,bc		;12d8
	add a,h			;12d9
	rst 38h			;12da
	ex af,af'		;12db
	rst 38h			;12dc
	ld b,c			;12dd
	ld (028ffh),a		;12de
	ld a,e			;12e1
	inc b			;12e2
	or l			;12e3
	inc b			;12e4
	rst 18h			;12e5
	add a,c			;12e6
	rst 38h			;12e7
	nop			;12e8
	xor a			;12e9
	ccf			;12ea
	ld a,a			;12eb
	ld a,e			;12ec
	daa			;12ed
	rra			;12ee
	cp 0feh			;12ef
	nop			;12f1
	jp nz,07a37h		;12f2
	ld a,a			;12f5
	ld a,(hl)		;12f6
	cp 0feh			;12f7
	nop			;12f9
	ld bc,09fc6h		;12fa
	ld a,(hl)		;12fd
	call m,03ed0h		;12fe
	rst 38h			;1301
	and 0f3h		;1302
	dec l			;1304
	sbc a,(hl)		;1305
	rst 18h			;1306
	ld e,a			;1307
	xor 070h		;1308
	nop			;130a
	nop			;130b
	dec b			;130c
	ld e,03eh		;130d
	adc a,(hl)		;130f
	ld d,a			;1310
	nop			;1311
	or b			;1312
	ld a,0e3h		;1313
	ld e,063h		;1315
	ld l,l			;1317
	ld l,c			;1318
	inc bc			;1319
	nop			;131a
	and d			;131b
	ld b,b			;131c
	ld a,b			;131d
	xor 07ah		;131e
	adc a,(hl)		;1320
	nop			;1321
	ld a,(hl)		;1322
	defb 0fdh,0ffh,0fbh ;illegal sequence	;1323
	ld a,a			;1326
	sbc a,a			;1327
	rst 18h			;1328
	rst 38h			;1329
	ld l,h			;132a
	set 4,a			;132b
	jp c,0a6d4h		;132d
	call 085ffh		;1330
	ld a,a			;1333
	rst 38h			;1334
	xor 061h		;1335
	cp 0dfh			;1337
	rst 38h			;1339
	ld l,04dh		;133a
	dec l			;133c
	xor l			;133d
	inc b			;133e
	ld l,l			;133f
	add a,d			;1340
	rlca			;1341
	ld c,c			;1342
	ld b,0b6h		;1343
	adc a,h			;1345
	sbc a,09bh		;1346
	in a,(0cah)		;1348
	jp nz,05142h		;134a
	ld d,b			;134d
	ld l,04dh		;134e
	dec l			;1350
l1351h:
	dec l			;1351
	inc b			;1352
	ld l,l			;1353
	or c			;1354
	cp 024h			;1355
	in a,(0dbh)		;1357
	bit 3,d			;1359
	ld e,e			;135b
	ld e,d			;135c
	dec b			;135d
	sbc a,d			;135e
	ld l,h			;135f
	ld (hl),h		;1360
	and d			;1361
	ld c,h			;1362
	ld e,0b6h		;1363
	rst 28h			;1365
	or 076h			;1366
	ld c,a			;1368
	call p,06d7bh		;1369
	ld a,e			;136c
	defb 0fdh,06dh ;ld iyl,iyl	;136d
	rst 28h			;136f
	defb 0edh ;next byte illegal after ed	;1370
	rst 28h			;1371
	ld e,0dah		;1372
	cp 000h			;1374
	ld (hl),l		;1376
	ld l,d			;1377
	ld a,l			;1378
	rst 0			;1379
	dec sp			;137a
	rst 30h			;137b
	cp a			;137c
	nop			;137d
	xor 056h		;137e
	jp c,0efcdh		;1380
	jp z,0b0f6h		;1383
l1386h:
	rlca			;1386
	or (hl)			;1387
	add a,c			;1388
	dec c			;1389
	rlca			;138a
	ld l,l			;138b
	ex af,af'		;138c
	or (hl)			;138d
	ex af,af'		;138e
	ld l,l			;138f
	call z,073b6h		;1390
	dec l			;1393
	sbc a,(hl)		;1394
	and l			;1395
	ld e,a			;1396
	rrca			;1397
	or 061h			;1398
	jp m,07c64h		;139a
	ld c,061h		;139d
	ld l,l			;139f
	ld l,l			;13a0
	halt			;13a1
	sbc a,h			;13a2
	ld l,d			;13a3
	and (hl)		;13a4
	adc a,0b2h		;13a5
	call m,0f0feh		;13a7
	ld (hl),b		;13aa
	ld a,b			;13ab
	ld b,a			;13ac
	rst 38h			;13ad
	ld a,e			;13ae
	rst 30h			;13af
	rst 18h			;13b0
	rrca			;13b1
	ld c,068h		;13b2
	ld l,b			;13b4
	cp a			;13b5
	sbc a,a			;13b6
	rst 18h			;13b7
	jp po,l0ff6h		;13b8
	ld e,a			;13bb
	and l			;13bc
	sbc a,(hl)		;13bd
	dec l			;13be
	ld (hl),e		;13bf
	or (hl)			;13c0
	rst 38h			;13c1
	ld (hl),b		;13c2
	jp nz,0779eh		;13c3
	ld e,(hl)		;13c6
	ld (hl),c		;13c7
	nop			;13c8
	dec c			;13c9
	ld a,h			;13ca
	rst 0			;13cb
	ld a,b			;13cc
	add a,0b6h		;13cd
	sub (hl)		;13cf
	nop			;13d0
	ld a,(hl)		;13d1
	call m,0fbfbh		;13d2
	ld a,l			;13d5
	sbc a,l			;13d6
	sbc a,000h		;13d7
	sbc a,a			;13d9
	cp l			;13da
	cp a			;13db
	cp a			;13dc
	inc b			;13dd
	rst 38h			;13de
	add a,h			;13df
	ld c,037h		;13e0
l13e2h:
	ld a,(hl)		;13e2
	cp c			;13e3
	inc b			;13e4
	rst 38h			;13e5
	add a,h			;13e6
	daa			;13e7
	dec e			;13e8
	jr l13e2h		;13e9
	inc b			;13eb
	nop			;13ec
	add a,h			;13ed
	ld h,h			;13ee
	ei			;13ef
	inc h			;13f0
	rst 18h			;13f1
	inc b			;13f2
	rst 38h			;13f3
	add a,h			;13f4
	rst 8			;13f5
	rst 10h			;13f6
	ld a,c			;13f7
	rst 30h			;13f8
	inc b			;13f9
	rst 38h			;13fa
	add a,h			;13fb
	cp 0dfh			;13fc
	ex de,hl		;13fe
	ld (hl),h		;13ff
	inc b			;1400
	rst 38h			;1401
	add a,h			;1402
	or a			;1403
	ld a,(de)		;1404
	add a,c			;1405
l1406h:
	ld a,a			;1406
	inc b			;1407
	nop			;1408
	add a,h			;1409
	jp m,0dd85h		;140a
	jr c,l1413h		;140d
	nop			;140f
	adc a,c			;1410
	ret nz			;1411
	ld b,b			;1412
l1413h:
	ret nz			;1413
	ret nz			;1414
	sbc a,(hl)		;1415
	ld a,a			;1416
	call m,0d0feh		;1417
	inc bc			;141a
	ret c			;141b
	add a,h			;141c
	ld e,b			;141d
	adc a,b			;141e
	or 0f8h			;141f
	dec b			;1421
	rst 38h			;1422
	add a,d			;1423
	rst 10h			;1424
	ld l,(hl)		;1425
	ld b,000h		;1426
	cp e			;1428
l1429h:
	ret p			;1429
	ret m			;142a
	rst 38h			;142b
	ccf			;142c
	dec l			;142d
	ld e,01eh		;142e
	ld c,01eh		;1430
	inc e			;1432
	ld e,01ah		;1433
	inc e			;1435
	ld e,09eh		;1436
	ld e,09ah		;1438
	cp e			;143a
	scf			;143b
	nop			;143c
	ret nz			;143d
	jr l1406h		;143e
	ret c			;1440
l1441h:
	jp c,0da5ah		;1441
	ld e,a			;1444
	or (hl)			;1445
	ld h,(hl)		;1446
	ld h,(hl)		;1447
	jr nz,l1429h		;1448
	ld l,a			;144a
	ld h,h			;144b
	rst 38h			;144c
	sbc a,c			;144d
	ld h,(hl)		;144e
	ld h,(hl)		;144f
	rst 38h			;1450
	rst 18h			;1451
	rst 38h			;1452
	rst 30h			;1453
l1454h:
	rst 38h			;1454
	sbc a,c			;1455
	ld h,(hl)		;1456
	ld h,(hl)		;1457
	jr nz,$-31		;1458
	djnz $-23		;145a
	rst 38h			;145c
	sbc a,c			;145d
	ld h,(hl)		;145e
	ld h,(hl)		;145f
	jr nz,l1441h		;1460
	ld l,a			;1462
	or 000h			;1463
	ld b,000h		;1465
	add a,a			;1467
	ld b,02dh		;1468
	nop			;146a
	nop			;146b
	ld bc,l0100h		;146c
	inc bc			;146f
	inc bc			;1470
	ld (bc),a		;1471
	nop			;1472
	add a,e			;1473
	add a,b			;1474
	nop			;1475
	add a,b			;1476
	inc bc			;1477
	ret nz			;1478
	ld (bc),a		;1479
	inc bc			;147a
	ld (bc),a		;147b
	ld bc,l0004h		;147c
	ld (bc),a		;147f
	ret nz			;1480
	ld (bc),a		;1481
	add a,b			;1482
	inc b			;1483
	nop			;1484
	nop			;1485
	add a,h			;1486
	cp 0ffh			;1487
	defb 0edh ;next byte illegal after ed	;1489
	rst 28h			;148a
	inc b			;148b
	nop			;148c
	add a,h			;148d
	add a,(hl)		;148e
	ld (hl),c		;148f
	ex (sp),hl		;1490
	ld c,004h		;1491
	nop			;1493
	rst 38h			;1494
	inc h			;1495
	inc e			;1496
	ld c,00fh		;1497
	rla			;1499
	rrca			;149a
	ld c,l			;149b
	add a,a			;149c
	ex af,af'		;149d
	dec de			;149e
	rla			;149f
	ld h,0a8h		;14a0
	ld a,c			;14a2
	sbc a,d			;14a3
	ld c,(hl)		;14a4
	nop			;14a5
	nop			;14a6
	ex af,af'		;14a7
	nop			;14a8
	jr nz,$+18		;14a9
	djnz l14ddh		;14ab
	inc hl			;14ad
	sub (hl)		;14ae
	and a			;14af
	ld h,a			;14b0
	dec sp			;14b1
	rra			;14b2
	rrca			;14b3
	ld e,e			;14b4
	adc a,b			;14b5
	ret nc			;14b6
	call p,0f661h		;14b7
	call pe,0fafch		;14ba
	rra			;14bd
	rrca			;14be
	rra			;14bf
	dec de			;14c0
	ld l,e			;14c1
	add a,a			;14c2
	rla			;14c3
	cpl			;14c4
	rra			;14c5
	ld c,a			;14c6
	ccf			;14c7
	dec de			;14c8
	rra			;14c9
	rrca			;14ca
	daa			;14cb
	ld d,a			;14cc
	nop			;14cd
	ex af,af'		;14ce
	nop			;14cf
	djnz $+50		;14d0
	jr nz,l1454h		;14d2
	nop			;14d4
	ld b,b			;14d5
	jr nz,l14e8h		;14d6
	jr l14e8h		;14d8
	rlca			;14da
	inc bc			;14db
	ld b,c			;14dc
l14ddh:
	ld (de),a		;14dd
	inc de			;14de
	jr nz,l154bh		;14df
	ld l,l			;14e1
	call p,03f7eh		;14e2
	ret nz			;14e5
	ret nc			;14e6
	ret m			;14e7
l14e8h:
	call pe,0eefch		;14e8
	cp 0ffh			;14eb
	ld b,b			;14ed
	ld h,c			;14ee
	jr c,l150dh		;14ef
	rrca			;14f1
	dec d			;14f2
	ld (bc),a		;14f3
	adc a,l			;14f4
	call nc,0f8a8h		;14f5
	pop hl			;14f8
	rst 0			;14f9
	adc a,h			;14fa
	jr l151dh		;14fb
	jp p,06060h		;14fd
	ret po			;1500
	call po,0c8c0h		;1501
	sub b			;1504
	sbc a,b			;1505
	sub b			;1506
	or h			;1507
	ld hl,0ede5h		;1508
	pop hl			;150b
	ld sp,hl		;150c
l150dh:
	ld l,b			;150d
	cp e			;150e
	scf			;150f
	or 0e8h			;1510
	ld sp,hl		;1512
	cp d			;1513
	add a,d			;1514
	xor 01bh		;1515
	inc bc			;1517
	rlca			;1518
	adc a,c			;1519
	add hl,bc		;151a
	nop			;151b
	ld (bc),a		;151c
l151dh:
	nop			;151d
	ld (hl),a		;151e
	ld h,l			;151f
	ld hl,(l0118h)		;1520
	inc bc			;1523
	nop			;1524
	sub b			;1525
	cp 0f6h			;1526
	call c,0e1f8h		;1528
	add a,a			;152b
	inc c			;152c
	nop			;152d
	nop			;152e
	ld b,b			;152f
	nop			;1530
	inc bc			;1531
	inc bc			;1532
	rrca			;1533
	daa			;1534
	ld d,a			;1535
	inc bc			;1536
	nop			;1537
	rst 38h			;1538
	ex af,af'		;1539
	ld de,l050ah		;153a
	ld d,c			;153d
	rrca			;153e
	ld e,e			;153f
	ld c,a			;1540
	ld l,a			;1541
	rst 28h			;1542
	rst 30h			;1543
	ld bc,0f0ffh		;1544
	call p,0ccc4h		;1547
	cp c			;154a
l154bh:
	ret p			;154b
	jp p,0d0e0h		;154c
	jp po,090c1h		;154f
	add a,b			;1552
	add a,d			;1553
	ld b,h			;1554
	call nz,0dc72h		;1555
	ret nz			;1558
	call po,0e3cdh		;1559
	cp e			;155c
	call nc,08484h		;155d
	or 0d6h			;1560
	ld l,0b4h		;1562
	jr nc,l159ah		;1564
	ld b,e			;1566
	ld hl,l1933h		;1567
	inc bc			;156a
	and (hl)		;156b
	ccf			;156c
	ld e,a			;156d
	ld b,a			;156e
	ld h,e			;156f
	ld sp,l0100h		;1570
	rlca			;1573
	ld (hl),h		;1574
	sbc a,a			;1575
	inc b			;1576
	rst 38h			;1577
	ex af,af'		;1578
	ld (hl),b		;1579
	ret po			;157a
	ret nz			;157b
	nop			;157c
	nop			;157d
	inc d			;157e
	inc bc			;157f
	add a,b			;1580
	ld d,b			;1581
	ret po			;1582
	ret p			;1583
	ld a,(hl)		;1584
	and 000h		;1585
	nop			;1587
	and b			;1588
	djnz l1593h		;1589
	ld (bc),a		;158b
	ld bc,03f80h		;158c
	rra			;158f
	ccf			;1590
	nop			;1591
	ld a,a			;1592
l1593h:
	jr c,l15c6h		;1593
	ld a,(hl)		;1595
	ret m			;1596
	sub b			;1597
	ld h,b			;1598
	add a,c			;1599
l159ah:
	ld c,b			;159a
	inc a			;159b
	rst 18h			;159c
	cp a			;159d
	inc e			;159e
	cp l			;159f
	sbc a,(hl)		;15a0
	xor (hl)		;15a1
	ld a,a			;15a2
	jr nz,$-66		;15a3
	xor (hl)		;15a5
	ld e,a			;15a6
	ld c,a			;15a7
	dec e			;15a8
	scf			;15a9
	rrca			;15aa
	ld d,a			;15ab
	rrca			;15ac
	ld h,e			;15ad
	ld a,(bc)		;15ae
	or l			;15af
	sbc a,a			;15b0
	xor (hl)		;15b1
	ld a,a			;15b2
	inc h			;15b3
	adc a,d			;15b4
	rst 38h			;15b5
	cp a			;15b6
	ld l,a			;15b7
	rst 38h			;15b8
	defb 0ddh,060h ;ld ixh,b	;15b9
	xor l			;15bb
	inc sp			;15bc
	rst 38h			;15bd
	rst 30h			;15be
	ret pe			;15bf
	djnz l1636h		;15c0
	rst 38h			;15c2
	cp 0edh			;15c3
	rst 38h			;15c5
l15c6h:
	push bc			;15c6
	ex (sp),hl		;15c7
	or c			;15c8
	sbc a,(hl)		;15c9
	xor (hl)		;15ca
	ld a,a			;15cb
	ld hl,(0a0feh)		;15cc
	jr l15d8h		;15cf
	cp a			;15d1
	ld h,d			;15d2
	dec h			;15d3
	ld h,a			;15d4
	ld (hl),e		;15d5
	dec sp			;15d6
	ld (hl),b		;15d7
l15d8h:
	inc a			;15d8
	inc a			;15d9
	inc e			;15da
	inc a			;15db
	ld e,01eh		;15dc
	add a,e			;15de
	rla			;15df
	ld hl,0f32ch		;15e0
	ld a,a			;15e3
	ld bc,00301h		;15e4
	ld bc,02222h		;15e7
	ld h,d			;15ea
	dec h			;15eb
	ld h,a			;15ec
	ld (hl),e		;15ed
	dec sp			;15ee
	cp 0feh			;15ef
	call m,0fdfeh		;15f1
	rst 38h			;15f4
	cp 0feh			;15f5
	dec c			;15f7
	rlca			;15f8
	inc bc			;15f9
	dec bc			;15fa
	rrca			;15fb
	inc bc			;15fc
	ccf			;15fd
	scf			;15fe
	ret m			;15ff
	ret m			;1600
	jp p,0f6f4h		;1601
	cp 0fah			;1604
	call m,0f6f5h		;1606
	ld sp,hl		;1609
	cp 0fdh			;160a
	ld a,c			;160c
	rst 28h			;160d
	cp a			;160e
	rlca			;160f
	rla			;1610
	ccf			;1611
	rrca			;1612
	ccf			;1613
	ccf			;1614
	ld a,07eh		;1615
	ld bc,03c28h		;1617
	ld e,b			;161a
	ld a,b			;161b
	ret m			;161c
	ret p			;161d
	pop hl			;161e
	nop			;161f
	dec bc			;1620
	rrca			;1621
	dec de			;1622
	halt			;1623
	ret m			;1624
	ret m			;1625
	ret nc			;1626
	daa			;1627
	rst 38h			;1628
	sbc a,078h		;1629
	sbc a,0e8h		;162b
	ret c			;162d
	sub b			;162e
	ld e,a			;162f
	ld c,a			;1630
	dec e			;1631
	scf			;1632
	rrca			;1633
	ld d,a			;1634
	rrca			;1635
l1636h:
	sub e			;1636
	call m,0f8ffh		;1637
	pop de			;163a
	or b			;163b
	jp p,0fcf7h		;163c
	call m,02934h		;163f
	ld de,04e5ch		;1642
	dec a			;1645
	ld d,00eh		;1646
	ld h,b			;1648
	ret nz			;1649
	and c			;164a
	adc a,c			;164b
	ld b,e			;164c
	or a			;164d
	rst 18h			;164e
	rst 38h			;164f
	add a,b			;1650
	pop bc			;1651
	jp 0f7e9h		;1652
	ld a,e			;1655
	ld l,a			;1656
	ccf			;1657
	dec bc			;1658
	rlca			;1659
	rlca			;165a
	inc hl			;165b
	dec bc			;165c
	inc bc			;165d
	dec e			;165e
	inc bc			;165f
	cp h			;1660
	or b			;1661
	ret m			;1662
	cp b			;1663
	ld h,d			;1664
	ret po			;1665
	call nz,0e8cch		;1666
	call m,0f0f8h		;1669
	ret po			;166c
	jp po,0a4e2h		;166d
	rla			;1670
	inc bc			;1671
	inc bc			;1672
	inc de			;1673
	ld bc,0057fh		;1674
	add a,c			;1677
	ld b,d			;1678
	ld b,(hl)		;1679
	dec hl			;167a
	dec b			;167b
	ld a,a			;167c
	ccf			;167d
	cpl			;167e
	add a,e			;167f
	ret p			;1680
	and b			;1681
	and h			;1682
	ret nc			;1683
	ld a,l			;1684
	jp pe,09aeah		;1685
	jp 0df37h		;1688
	dec h			;168b
	ld c,(hl)		;168c
	inc b			;168d
	dec a			;168e
	rst 18h			;168f
	sbc a,(hl)		;1690
	push bc			;1691
	ld bc,0c78bh		;1692
	sbc a,e			;1695
	ld b,l			;1696
	ccf			;1697
	cp (hl)			;1698
	dec sp			;1699
	adc a,025h		;169a
	ld c,(hl)		;169c
	inc b			;169d
	ld c,l			;169e
	cp a			;169f
	jp p,0fcf2h		;16a0
	defb 0fdh,0fah,0c0h ;illegal sequence	;16a3
	di			;16a6
	adc a,c			;16a7
	jr nz,$-124		;16a8
	ld a,h			;16aa
	ld l,b			;16ab
	pop af			;16ac
	sub 004h		;16ad
	adc a,b			;16af
	inc a			;16b0
	cp c			;16b1
	ld e,c			;16b2
	jp c,0d9beh		;16b3
	or b			;16b6
	and b			;16b7
	rst 38h			;16b8
	inc a			;16b9
	cp a			;16ba
	ld e,e			;16bb
	jp c,026beh		;16bc
	di			;16bf
	cp a			;16c0
	nop			;16c1
	rlca			;16c2
	ld h,b			;16c3
	ld a,a			;16c4
	rra			;16c5
	ld bc,l18d7h		;16c6
	ld a,h			;16c9
	call c,sub_08feh	;16ca
	ld (bc),a		;16cd
	and e			;16ce
	pop af			;16cf
	ld a,b			;16d0
	ccf			;16d1
	inc b			;16d2
	rst 38h			;16d3
	jr l1706h		;16d4
	ld (hl),b		;16d6
	ld b,b			;16d7
	ret nz			;16d8
	ld bc,l0802h		;16d9
	ld bc,l1705h		;16dc
l16dfh:
	dec de			;16df
	ld l,a			;16e0
	ret p			;16e1
	ret pe			;16e2
	cp 0fbh			;16e3
	djnz l16f9h		;16e5
	jr nz,l172ah		;16e7
	rrca			;16e9
	add a,a			;16ea
	ld a,e			;16eb
	xor a			;16ec
	sbc a,a			;16ed
	rra			;16ee
	add a,b			;16ef
	jr nz,l172ah		;16f0
	adc a,l			;16f2
	ld a,c			;16f3
	ld (hl),l		;16f4
	cp 004h			;16f5
	dec c			;16f7
	dec b			;16f8
l16f9h:
	ccf			;16f9
	inc sp			;16fa
	jp z,04e27h		;16fb
	inc b			;16fe
	dec a			;16ff
	rst 18h			;1700
	ld l,e			;1701
	rst 0			;1702
	adc a,b			;1703
	ld d,c			;1704
l1705h:
	ld (hl),d		;1705
l1706h:
	rst 18h			;1706
	adc a,l			;1707
	rst 28h			;1708
	ld b,d			;1709
	ld b,(hl)		;170a
	dec hl			;170b
	dec b			;170c
	ld a,a			;170d
	ccf			;170e
	ccf			;170f
	inc bc			;1710
	add hl,bc		;1711
	dec hl			;1712
	rra			;1713
	ccf			;1714
	dec de			;1715
	cp a			;1716
	ld c,0ffh		;1717
	ld e,a			;1719
	ld c,a			;171a
	dec e			;171b
	scf			;171c
	rrca			;171d
	ld d,a			;171e
	rrca			;171f
	add hl,de		;1720
	jp m,0b8f2h		;1721
	call pe,0c0fch		;1724
	ret p			;1727
	sbc a,b			;1728
	sub b			;1729
l172ah:
	call nc,0fcf8h		;172a
	ret c			;172d
	rst 38h			;172e
	ld (hl),b		;172f
	inc bc			;1730
	nop			;1731
	add a,d			;1732
	sub b			;1733
	jr nz,l16dfh		;1734
	ld sp,hl		;1736
	ld b,c			;1737
	rst 38h			;1738
	or b			;1739
	call nc,sub_10fah	;173a
	ld sp,hl		;173d
	rst 30h			;173e
	or b			;173f
	ret po			;1740
	ld b,b			;1741
	jr l176bh		;1742
	inc bc			;1744
	ld a,a			;1745
	ccf			;1746
	inc bc			;1747
	inc de			;1748
	rrca			;1749
	ld l,b			;174a
	sub b			;174b
	ld b,b			;174c
	and b			;174d
	ret nz			;174e
	cp 0f6h			;174f
	or 058h			;1751
	in a,(074h)		;1753
	cp l			;1755
	jr $+14			;1756
	ld b,h			;1758
	ld bc,06f14h		;1759
	rlca			;175c
	ccf			;175d
	ld bc,0057fh		;175e
	add a,c			;1761
	ld bc,l0108h		;1762
	rrca			;1765
	ccf			;1766
	dec de			;1767
	rrca			;1768
	dec de			;1769
	add a,b			;176a
l176bh:
	inc bc			;176b
	dec a			;176c
	dec e			;176d
	ld hl,07367h		;176e
	dec sp			;1771
	ld bc,0bcc0h		;1772
	cp b			;1775
	add a,h			;1776
	and 0ceh		;1777
	call c,sub_05f8h	;1779
	ret po			;177c
	nop			;177d
	ret p			;177e
	call m,0da80h		;177f
	jp m,0f8fdh		;1782
	jp po,0e8dch		;1785
	call nz,sub_1f04h	;1788
	rrca			;178b
	daa			;178c
	ld d,a			;178d
	ld (hl),a		;178e
	ld h,l			;178f
	ld hl,(03f18h)		;1790
	ccf			;1793
	ld bc,l095bh		;1794
	ld hl,(03f01h)		;1797
	rrca			;179a
	inc bc			;179b
	rla			;179c
	nop			;179d
	cp a			;179e
	ld a,a			;179f
	inc d			;17a0
	add a,l			;17a1
	or 0feh			;17a2
	cp d			;17a4
	and b			;17a5
	jp p,0f6c5h		;17a6
	jr z,$-20		;17a9
	ret p			;17ab
	ld h,b			;17ac
	rst 38h			;17ad
	sub b			;17ae
	sub 0e0h		;17af
	call m,0ffb1h		;17b1
	add a,c			;17b4
	jr nz,$-32		;17b5
	ret pe			;17b7
	add a,(hl)		;17b8
	djnz l17bbh		;17b9
l17bbh:
	ret po			;17bb
	add a,b			;17bc
	ld b,b			;17bd
	ret nz			;17be
	inc b			;17bf
	nop			;17c0
	add a,e			;17c1
	dec de			;17c2
	cp a			;17c3
	ld c,005h		;17c4
	nop			;17c6
	add a,h			;17c7
	ld a,(00e01h)		;17c8
	rra			;17cb
	inc b			;17cc
	nop			;17cd
	add a,h			;17ce
	call m,0f530h		;17cf
	ld c,b			;17d2
	inc b			;17d3
	nop			;17d4
	add a,h			;17d5
	ret po			;17d6
	add a,d			;17d7
	djnz l17dbh		;17d8
	inc b			;17da
l17dbh:
	nop			;17db
	nop			;17dc
	nop			;17dd
	nop			;17de
	nop			;17df
	rst 38h			;17e0
	nop			;17e1
	inc bc			;17e2
	inc e			;17e3
	inc hl			;17e4
	ld c,a			;17e5
	cp a			;17e6
	nop			;17e7
	nop			;17e8
	push hl			;17e9
	jp m,0e61dh		;17ea
	ld sp,hl		;17ed
	cp 000h			;17ee
	nop			;17f0
	pop af			;17f1
	call m,0e71eh		;17f2
	dec de			;17f5
	push hl			;17f6
l17f7h:
	nop			;17f7
	nop			;17f8
	call m,0443fh		;17f9
	or c			;17fc
	sbc a,0efh		;17fd
	nop			;17ff
l1800h:
	nop			;1800
	inc e			;1801
	jp 0e33ch		;1802
	ld c,a			;1805
	cp a			;1806
	nop			;1807
	nop			;1808
	ret po			;1809
	ret m			;180a
	inc e			;180b
	and 0f9h		;180c
	cp 0ffh			;180e
	nop			;1810
	nop			;1811
	inc bc			;1812
	inc c			;1813
	inc bc			;1814
	inc e			;1815
	inc hl			;1816
	ld c,a			;1817
	cp a			;1818
	nop			;1819
	inc bc			;181a
	push hl			;181b
	jp m,0e61dh		;181c
	ld sp,hl		;181f
	cp 0dfh			;1820
	and a			;1822
	pop af			;1823
	call m,0e71eh		;1824
	dec de			;1827
	push hl			;1828
	rst 8			;1829
	ret p			;182a
	call m,0443fh		;182b
	or c			;182e
	sbc a,0efh		;182f
	rrca			;1831
	di			;1832
	inc e			;1833
	jp 0e33ch		;1834
	ld c,a			;1837
	cp a			;1838
	add a,b			;1839
	and b			;183a
	ret p			;183b
	call m,0e61eh		;183c
	dec de			;183f
	push hl			;1840
	ld b,087h		;1841
	rlca			;1843
	ld c,e			;1844
	inc c			;1845
	ld c,a			;1846
	ld h,a			;1847
	ld sp,03973h		;1848
	jp z,079f3h		;184b
	sbc a,h			;184e
	and 0fbh		;184f
	ret po			;1851
	ret m			;1852
	ld a,h			;1853
	sbc a,(hl)		;1854
	jp po,07efch		;1855
	sbc a,a			;1858
	dec c			;1859
	dec e			;185a
	ld e,e			;185b
	in a,(0d3h)		;185c
	sub 0ech		;185e
	sub c			;1860
	jp (hl)			;1861
	ld h,b			;1862
	ld b,b			;1863
	ld b,h			;1864
	djnz l1898h		;1865
	jr c,$-70		;1867
	ret z			;1869
	inc c			;186a
	ld a,073h		;186b
	ret po			;186d
	add a,0deh		;186e
	ld c,a			;1870
	rlca			;1871
	nop			;1872
	ret nz			;1873
	nop			;1874
	djnz l17f7h		;1875
	inc de			;1877
l1878h:
	daa			;1878
	ld (hl),038h		;1879
	inc e			;187b
	inc b			;187c
	jr c,l18dfh		;187d
	jp 05eceh		;187f
	dec a			;1882
	ld sp,063e0h		;1883
	rra			;1886
	ccf			;1887
	ld a,0b8h		;1888
	out (0c7h),a		;188a
	nop			;188c
	ret nz			;188d
	pop af			;188e
	call c,08206h		;188f
	call nc,041c0h		;1892
	add a,0ceh		;1895
	ld l,a			;1897
l1898h:
	add a,a			;1898
	jp 0f138h		;1899
	rst 20h			;189c
	ld (hl),a		;189d
	sub e			;189e
	ld h,b			;189f
	cp (hl)			;18a0
	rst 18h			;18a1
	ld h,b			;18a2
	add a,a			;18a3
	jp l1e8fh		;18a4
	dec a			;18a7
	dec sp			;18a8
	cp b			;18a9
	rst 8			;18aa
	jr nc,$-16		;18ab
	sbc a,(hl)		;18ad
	inc a			;18ae
	ret p			;18af
	adc a,h			;18b0
	ld a,00fh		;18b1
	di			;18b3
	nop			;18b4
	and b			;18b5
	ld h,b			;18b6
	or b			;18b7
	or 06bh			;18b8
	rrca			;18ba
	ld h,(hl)		;18bb
	ld l,c			;18bc
	ld b,008h		;18bd
	inc (hl)		;18bf
	ld e,d			;18c0
	ld a,d			;18c1
	or d			;18c2
	ld b,h			;18c3
	dec sp			;18c4
	inc bc			;18c5
	inc a			;18c6
	ld b,d			;18c7
	sbc a,c			;18c8
	xor l			;18c9
	cp l			;18ca
	sbc a,c			;18cb
	ld b,d			;18cc
	inc a			;18cd
	ld b,06dh		;18ce
	ld l,a			;18d0
	ld b,058h		;18d1
	or h			;18d3
	cp h			;18d4
	ld e,b			;18d5
	nop			;18d6
l18d7h:
	sbc a,b			;18d7
	nop			;18d8
	ld b,(hl)		;18d9
	dec c			;18da
	add a,h			;18db
	jr c,l195ah		;18dc
	ld b,(hl)		;18de
l18dfh:
	ld bc,l0000h		;18df
	jr nz,$+1		;18e2
	ld (bc),a		;18e4
	djnz l1907h		;18e5
	and b			;18e7
	ex af,af'		;18e8
	jr l1927h		;18e9
	inc a			;18eb
	dec e			;18ec
	dec e			;18ed
	add hl,bc		;18ee
	ld (bc),a		;18ef
	nop			;18f0
	nop			;18f1
	nop			;18f2
	nop			;18f3
	nop			;18f4
	nop			;18f5
	jp 07320h		;18f6
	ld d,a			;18f9
	push de			;18fa
	or h			;18fb
	call pe,05fd9h		;18fc
	sbc a,a			;18ff
	rrca			;1900
	sbc a,a			;1901
	sbc a,c			;1902
	cp c			;1903
	or c			;1904
	cp e			;1905
	cp a			;1906
l1907h:
	sbc a,(hl)		;1907
	inc e			;1908
	cp (hl)			;1909
	or d			;190a
	and d			;190b
	or (hl)			;190c
	cp (hl)			;190d
	sbc a,h			;190e
	ld a,(hl)		;190f
	inc a			;1910
	ld a,(hl)		;1911
	xor 0c6h		;1912
	xor 0feh		;1914
	ld a,h			;1916
	rrca			;1917
	ret po			;1918
	jr nc,l1982h		;1919
	rrca			;191b
	ld e,03ch		;191c
	ld a,(hl)		;191e
	rrca			;191f
	ld (hl),b		;1920
	ld a,h			;1921
	ld a,(hl)		;1922
	ld a,07ch		;1923
	add hl,sp		;1925
	ld a,l			;1926
l1927h:
	inc bc			;1927
	rst 8			;1928
	rst 28h			;1929
	rst 20h			;192a
	ld (hl),a		;192b
	inc sp			;192c
	sub b			;192d
	cp c			;192e
	rst 38h			;192f
	adc a,09eh		;1930
	cp a			;1932
l1933h:
	inc e			;1933
	sbc a,(hl)		;1934
	inc c			;1935
	sbc a,06ch		;1936
	and 026h		;1938
	dec b			;193a
	nop			;193b
	push af			;193c
	inc a			;193d
	ld e,03fh		;193e
	inc a			;1940
	ld (hl),b		;1941
	defb 0fdh,01ch,088h ;illegal sequence	;1942
	sbc a,b			;1945
	call m,sub_19e2h	;1946
	ld a,d			;1949
	scf			;194a
	or e			;194b
	sub b			;194c
	ld a,c			;194d
	ld a,e			;194e
	ld a,05dh		;194f
	jr nc,l19b9h		;1951
	rla			;1953
	dec sp			;1954
	ld a,h			;1955
	nop			;1956
	nop			;1957
	ld h,(hl)		;1958
	ld (hl),a		;1959
l195ah:
	ld a,a			;195a
	inc a			;195b
	add a,b			;195c
	ld a,a			;195d
	adc a,09eh		;195e
	cp a			;1960
	inc e			;1961
	sbc a,(hl)		;1962
	inc c			;1963
	ccf			;1964
	ex af,af'		;1965
	inc e			;1966
	inc a			;1967
	sbc a,b			;1968
	ld a,(hl)		;1969
	inc a			;196a
	ld a,a			;196b
	inc e			;196c
	jp nz,0d6e1h		;196d
	jr l1982h		;1970
	inc h			;1972
	ld a,(bc)		;1973
	inc b			;1974
	nop			;1975
	inc b			;1976
	nop			;1977
	ld b,b			;1978
	jp m,0b0ech		;1979
	nop			;197c
	inc b			;197d
	ld (bc),a		;197e
	djnz l19c1h		;197f
	ld h,b			;1981
l1982h:
	adc a,b			;1982
	sbc a,c			;1983
	ld c,c			;1984
	ei			;1985
	ret m			;1986
	or 070h			;1987
	ret p			;1989
	rlca			;198a
	dec sp			;198b
	sbc a,e			;198c
	cp h			;198d
	inc e			;198e
	add hl,bc		;198f
	rra			;1990
	ld h,a			;1991
	ld h,e			;1992
	dec (hl)		;1993
	sub (hl)		;1994
	and 0feh		;1995
	cp 0c4h			;1997
	ld c,0eeh		;1999
	and 042h		;199b
	rra			;199d
	ret m			;199e
	ld sp,0230fh		;199f
	rra			;19a2
	rlca			;19a3
	rst 30h			;19a4
	ld bc,0de6dh		;19a5
l19a8h:
	ld a,07ch		;19a8
l19aah:
	jr c,l19a8h		;19aa
	add a,c			;19ac
	ld l,h			;19ad
	and 076h		;19ae
	ld (hl),b		;19b0
	jr nz,$+5		;19b1
	nop			;19b3
	adc a,e			;19b4
	defb 0ddh,0cch,000h ;illegal sequence	;19b5
	nop			;19b8
l19b9h:
	jr nc,$+50		;19b9
	ld (bc),a		;19bb
	nop			;19bc
	rlca			;19bd
	rra			;19be
	ld a,a			;19bf
	dec b			;19c0
l19c1h:
	inc bc			;19c1
	add a,h			;19c2
	ld e,03fh		;19c3
	sbc a,a			;19c5
	adc a,004h		;19c6
	nop			;19c8
	sub h			;19c9
	call po,087ech		;19ca
	ei			;19cd
	cp 03fh			;19ce
	ccf			;19d0
	rlca			;19d1
	ld (bc),a		;19d2
	call z,01760h		;19d3
	ld a,a			;19d6
	rrca			;19d7
	inc a			;19d8
	cp 070h			;19d9
	ret m			;19db
	ex (sp),hl		;19dc
	adc a,l			;19dd
	dec b			;19de
	nop			;19df
	add a,e			;19e0
	ld h,a			;19e1
sub_19e2h:
	inc sp			;19e2
	sub d			;19e3
	inc b			;19e4
	nop			;19e5
	ret nz			;19e6
	inc bc			;19e7
	ld b,018h		;19e8
	ld sp,022e2h		;19ea
	ld b,h			;19ed
	adc a,b			;19ee
	adc a,a			;19ef
	jp 08e43h		;19f0
	ld (04944h),a		;19f3
	adc a,b			;19f6
	ld hl,0a2a1h		;19f7
	call nc,06854h		;19fa
	ld a,b			;19fd
	inc a			;19fe
	ld a,(bc)		;19ff
	scf			;1a00
	ld l,h			;1a01
	add hl,sp		;1a02
	sbc a,(hl)		;1a03
	ld e,h			;1a04
	jr c,$+58		;1a05
	ex af,af'		;1a07
	jr nc,l19aah		;1a08
	ld h,d			;1a0a
	halt			;1a0b
	inc a			;1a0c
	ret m			;1a0d
	ld a,b			;1a0e
	ld (de),a		;1a0f
	ld (04121h),hl		;1a10
	ld b,b			;1a13
	sub b			;1a14
	adc a,d			;1a15
	adc a,c			;1a16
	ld (bc),a		;1a17
l1a18h:
	inc c			;1a18
	djnz l1a7bh		;1a19
	ret nz			;1a1b
	ret z			;1a1c
	ret nc			;1a1d
	jp p,0370ah		;1a1e
	ld l,h			;1a21
	add hl,sp		;1a22
	sbc a,(hl)		;1a23
	ld e,h			;1a24
	jr c,l1a5fh		;1a25
	nop			;1a27
	adc a,d			;1a28
	ret p			;1a29
	add a,d			;1a2a
	inc l			;1a2b
	ld (de),a		;1a2c
	ld d,c			;1a2d
	adc a,b			;1a2e
	ex af,af'		;1a2f
	inc d			;1a30
	dec c			;1a31
	dec e			;1a32
	inc bc			;1a33
	ld a,0f5h		;1a34
	sbc a,h			;1a36
	ccf			;1a37
	inc e			;1a38
	call pe,0b6d6h		;1a39
	ld a,d			;1a3c
	jp m,070f8h		;1a3d
	ld a,h			;1a40
	add a,b			;1a41
	ld h,c			;1a42
	ld a,(l070eh)		;1a43
	ld l,a			;1a46
	ld hl,09c41h		;1a47
	ex af,af'		;1a4a
	ex af,af'		;1a4b
	sbc a,h			;1a4c
	cp 0c2h			;1a4d
	pop hl			;1a4f
	call pe,0a090h		;1a50
	and b			;1a53
	ret po			;1a54
	ld (hl),c		;1a55
	ld d,d			;1a56
	ld d,d			;1a57
	sub h			;1a58
	ld bc,07032h		;1a59
	ld h,h			;1a5c
	dec e			;1a5d
	rlca			;1a5e
l1a5fh:
	inc sp			;1a5f
	ld de,0943ah		;1a60
	ld e,b			;1a63
	jr c,l1acfh		;1a64
	ld c,d			;1a66
	adc a,h			;1a67
	sbc a,b			;1a68
	rra			;1a69
	dec (hl)		;1a6a
	dec (hl)		;1a6b
	ld hl,0ee46h		;1a6c
	sub h			;1a6f
	ld h,c			;1a70
	or (hl)			;1a71
	ld h,(hl)		;1a72
	ld l,(hl)		;1a73
	inc c			;1a74
	and l			;1a75
	ld (hl),e		;1a76
	rst 20h			;1a77
	jp nz,07e30h		;1a78
l1a7bh:
	dec (hl)		;1a7b
	dec de			;1a7c
	ld l,l			;1a7d
	ld l,e			;1a7e
	dec (hl)		;1a7f
	sub (hl)		;1a80
	add a,b			;1a81
	or (hl)			;1a82
	ld a,e			;1a83
	ld a,h			;1a84
	ld a,01ch		;1a85
	ccf			;1a87
	add a,c			;1a88
	rst 38h			;1a89
	inc e			;1a8a
	ld a,03fh		;1a8b
	ld e,0a1h		;1a8d
	ld de,07052h		;1a8f
	ret m			;1a92
	ex (sp),hl		;1a93
l1a94h:
	xor l			;1a94
	ld (hl),b		;1a95
	jr c,l1a94h		;1a96
	ret p			;1a98
	call m,0327eh		;1a99
	sub b			;1a9c
	rst 28h			;1a9d
	ld a,b			;1a9e
	add a,d			;1a9f
	ld h,0dch		;1aa0
	inc sp			;1aa2
	ret c			;1aa3
	ld b,005h		;1aa4
	ret c			;1aa6
	inc sp			;1aa7
	call c,sub_1d0dh	;1aa8
	inc bc			;1aab
	ld a,0bbh		;1aac
	sbc a,h			;1aae
	ccf			;1aaf
	inc e			;1ab0
	call pe,0b6d6h		;1ab1
	ld a,d			;1ab4
	jp m,070f8h		;1ab5
	ld a,h			;1ab8
	add a,b			;1ab9
	ld h,c			;1aba
	ld a,(l070eh)		;1abb
	ld l,a			;1abe
	ld hl,09c41h		;1abf
	ex af,af'		;1ac2
	ex af,af'		;1ac3
	sbc a,h			;1ac4
	cp 0c2h			;1ac5
	pop hl			;1ac7
	call pe,03a44h		;1ac8
	ld a,(hl)		;1acb
	ld e,h			;1acc
	ld e,h			;1acd
	ld l,l			;1ace
l1acfh:
	or d			;1acf
	inc l			;1ad0
	ld b,h			;1ad1
	ld a,(l1c7eh)		;1ad2
	inc e			;1ad5
	ld l,l			;1ad6
	or d			;1ad7
	inc l			;1ad8
	ld b,h			;1ad9
	ld a,(05c7eh)		;1ada
	ld e,h			;1add
	ld l,l			;1ade
	or d			;1adf
	inc l			;1ae0
	ld b,h			;1ae1
	ld a,(l1c7eh)		;1ae2
	inc e			;1ae5
	ld l,l			;1ae6
	or d			;1ae7
	inc l			;1ae8
	nop			;1ae9
	cp l			;1aea
	xor b			;1aeb
	jp nz,0e2e7h		;1aec
	ret pe			;1aef
	ret po			;1af0
	ret pe			;1af1
	pop hl			;1af2
	inc hl			;1af3
	add hl,de		;1af4
	add a,d			;1af5
	ld sp,l0021h		;1af6
	add a,b			;1af9
	ex af,af'		;1afa
	pop hl			;1afb
	ret c			;1afc
	defb 0ddh,088h,0a0h ;illegal sequence	;1afd
	ld sp,l0840h		;1b00
	defb 0ddh,0cch,062h ;illegal sequence	;1b03
	ld l,(hl)		;1b06
	ld b,010h		;1b07
	add hl,sp		;1b09
	djnz l1b1ch		;1b0a
	nop			;1b0c
	ld bc,07230h		;1b0d
	jr nz,l1b13h		;1b10
	nop			;1b12
l1b13h:
	ex af,af'		;1b13
	ld b,b			;1b14
	nop			;1b15
	nop			;1b16
	ld b,d			;1b17
	nop			;1b18
	add a,b			;1b19
	nop			;1b1a
	ret nz			;1b1b
l1b1ch:
	jr nz,l1b2eh		;1b1c
	ex af,af'		;1b1e
	ex af,af'		;1b1f
	inc b			;1b20
	inc b			;1b21
	ld (bc),a		;1b22
	ld bc,l0402h		;1b23
	inc b			;1b26
	ex af,af'		;1b27
	inc bc			;1b28
	nop			;1b29
	ld (bc),a		;1b2a
	add a,b			;1b2b
	sub d			;1b2c
	sub b			;1b2d
l1b2eh:
	add a,c			;1b2e
	jr nz,l1b35h		;1b2f
	jr nz,$+34		;1b31
	nop			;1b33
	ret po			;1b34
l1b35h:
	ret c			;1b35
	call p,0d888h		;1b36
	call pe,sub_00dch	;1b39
	ret nz			;1b3c
	ret nz			;1b3d
	ld bc,l0004h		;1b3e
	cp h			;1b41
	ld hl,08101h		;1b42
	add hl,de		;1b45
	inc d			;1b46
	ld e,b			;1b47
	dec b			;1b48
	sub (hl)		;1b49
	add a,d			;1b4a
	rlca			;1b4b
	ld b,d			;1b4c
	nop			;1b4d
	sub h			;1b4e
	add a,0f1h		;1b4f
	call m,0e104h		;1b51
	ret c			;1b54
	call p,0d888h		;1b55
	call pe,sub_10dch	;1b58
	nop			;1b5b
	ld bc,07230h		;1b5c
	jr nz,$+7		;1b5f
	nop			;1b61
	ex af,af'		;1b62
	add a,b			;1b63
	nop			;1b64
	ld hl,08231h		;1b65
	ld de,03703h		;1b68
	ld c,a			;1b6b
	rra			;1b6c
	ld h,d			;1b6d
	pop bc			;1b6e
	ret z			;1b6f
	ret nc			;1b70
	jp p,l0700h		;1b71
	dec de			;1b74
	cpl			;1b75
	ld de,0371bh		;1b76
	dec sp			;1b79
	nop			;1b7a
	inc bc			;1b7b
	inc bc			;1b7c
	add a,b			;1b7d
	inc b			;1b7e
	nop			;1b7f
	sub d			;1b80
	adc a,b			;1b81
	ld c,c			;1b82
	ex (sp),hl		;1b83
	ld b,(hl)		;1b84
	rra			;1b85
	inc bc			;1b86
	inc c			;1b87
	djnz l1b96h		;1b88
	ld (hl),l		;1b8a
	ld (hl),l		;1b8b
	ld hl,l0800h		;1b8c
	nop			;1b8f
	nop			;1b90
	defb 0ddh,0cch,009h ;illegal sequence	;1b91
	nop			;1b94
	ld (bc),a		;1b95
l1b96h:
	ld h,b			;1b96
	xor (hl)		;1b97
	inc hl			;1b98
	rlca			;1b99
	inc bc			;1b9a
	ld b,004h		;1b9b
	djnz $+98		;1b9d
	ret nz			;1b9f
	ret z			;1ba0
	ret nc			;1ba1
	jp p,03008h		;1ba2
	and b			;1ba5
	ld h,d			;1ba6
	halt			;1ba7
	inc a			;1ba8
	ret m			;1ba9
	ld a,b			;1baa
	ld a,(bc)		;1bab
	scf			;1bac
	ld l,h			;1bad
	add hl,sp		;1bae
	sbc a,(hl)		;1baf
	ld e,h			;1bb0
	jr c,l1bebh		;1bb1
	inc bc			;1bb3
	ld (l0230h),a		;1bb4
	ld (bc),a		;1bb7
	ld bc,l0f60h		;1bb8
	nop			;1bbb
	ld (bc),a		;1bbc
	nop			;1bbd
	ld h,b			;1bbe
	ld h,b			;1bbf
	inc b			;1bc0
	nop			;1bc1
	inc bc			;1bc2
	nop			;1bc3
	nop			;1bc4
	jr nz,l1bcch		;1bc5
	nop			;1bc7
	adc a,b			;1bc8
	inc bc			;1bc9
	ex af,af'		;1bca
	inc b			;1bcb
l1bcch:
	inc bc			;1bcc
	ld b,e			;1bcd
	rst 8			;1bce
	rra			;1bcf
	ld a,a			;1bd0
	nop			;1bd1
	sub b			;1bd2
	nop			;1bd3
	add a,a			;1bd4
	ld e,(hl)		;1bd5
	dec a			;1bd6
	ld a,e			;1bd7
	jp m,04c89h		;1bd8
	nop			;1bdb
	add a,b			;1bdc
	ld a,l			;1bdd
	add a,b			;1bde
	ld h,b			;1bdf
	ret p			;1be0
	call sub_00fah		;1be1
	nop			;1be4
	adc a,d			;1be5
	ex af,af'		;1be6
	rlca			;1be7
	nop			;1be8
	rlca			;1be9
	rra			;1bea
l1bebh:
	ld a,a			;1beb
	nop			;1bec
	ld a,(l0000h)		;1bed
	inc b			;1bf0
	ld l,e			;1bf1
	ld (bc),a		;1bf2
	ld (hl),a		;1bf3
	adc a,e			;1bf4
	ld e,d			;1bf5
	add a,c			;1bf6
	ld e,d			;1bf7
	jp 0423ch		;1bf8
	add a,c			;1bfb
	inc a			;1bfc
	add a,b			;1bfd
	ld (hl),06ch		;1bfe
	dec b			;1c00
	ld h,0b0h		;1c01
	rra			;1c03
	ld a,a			;1c04
	nop			;1c05
	ld a,(08700h)		;1c06
	ld e,(hl)		;1c09
	dec a			;1c0a
	ld l,e			;1c0b
	ld l,e			;1c0c
	ld (hl),a		;1c0d
	ld (hl),a		;1c0e
	ld e,d			;1c0f
	add a,c			;1c10
	ld e,d			;1c11
	jp 07d80h		;1c12
	add a,b			;1c15
	nop			;1c16
	add a,b			;1c17
l1c18h:
	ld (hl),06ch		;1c18
	nop			;1c1a
	ld b,00fh		;1c1b
	or e			;1c1d
	ld e,a			;1c1e
	ld e,a			;1c1f
	or e			;1c20
l1c21h:
	rrca			;1c21
	ld b,07bh		;1c22
	jp m,04c89h		;1c24
	ld c,h			;1c27
	adc a,c			;1c28
	jp m,03c7bh		;1c29
	ld b,d			;1c2c
	add a,c			;1c2d
	inc a			;1c2e
	inc a			;1c2f
	add a,c			;1c30
	ld b,d			;1c31
	inc a			;1c32
	nop			;1c33
	ex af,af'		;1c34
	ld h,000h		;1c35
	inc b			;1c37
	nop			;1c38
	add a,h			;1c39
	ex af,af'		;1c3a
	rlca			;1c3b
	nop			;1c3c
	rlca			;1c3d
	ld b,000h		;1c3e
	ld b,06bh		;1c40
	add a,h			;1c42
	jp m,0f0cdh		;1c43
	ld h,b			;1c46
	dec b			;1c47
	nop			;1c48
	add a,e			;1c49
	ld bc,l01beh		;1c4a
	nop			;1c4d
	ld (bc),a		;1c4e
	ld bc,00302h		;1c4f
	ld (bc),a		;1c52
	rlca			;1c53
	and d			;1c54
	rrca			;1c55
	rlca			;1c56
	ld c,01eh		;1c57
	sub (hl)		;1c59
	sbc a,e			;1c5a
	rst 8			;1c5b
	rst 20h			;1c5c
	ld d,b			;1c5d
	ld l,a			;1c5e
	scf			;1c5f
	xor 022h		;1c60
	ld de,020cch		;1c62
	jp nc,l1de5h		;1c65
	jr l1c9bh		;1c68
	ld c,e			;1c6a
	or (hl)			;1c6b
	or h			;1c6c
	ld c,h			;1c6d
	inc c			;1c6e
	ld b,h			;1c6f
	ex af,af'		;1c70
	ret m			;1c71
	ld sp,hl		;1c72
	add a,(hl)		;1c73
	jr z,l1c21h		;1c74
	add a,(hl)		;1c76
	nop			;1c77
	add a,(hl)		;1c78
	jr l1c7ch		;1c79
	ld (bc),a		;1c7b
l1c7ch:
	inc b			;1c7c
	ex af,af'		;1c7d
l1c7eh:
	ex af,af'		;1c7e
	inc b			;1c7f
	ld de,l0802h		;1c80
	sub h			;1c83
	inc b			;1c84
	ld (bc),a		;1c85
	ld bc,00518h		;1c86
	dec c			;1c89
	dec a			;1c8a
	ld a,l			;1c8b
	defb 0fdh,032h,072h ;illegal sequence	;1c8c
	ld h,d			;1c8f
	ld h,d			;1c90
	ld (0fd1ah),a		;1c91
	ld a,l			;1c94
	dec a			;1c95
	dec c			;1c96
	dec b			;1c97
	nop			;1c98
	and b			;1c99
	ex af,af'		;1c9a
l1c9bh:
	ld hl,(0292bh)		;1c9b
	inc l			;1c9e
	ld h,04ah		;1c9f
	sub d			;1ca1
	djnz l1cf8h		;1ca2
	call nc,03494h		;1ca4
	ld h,h			;1ca7
	ld d,d			;1ca8
	ld c,c			;1ca9
	and a			;1caa
	adc a,b			;1cab
	and e			;1cac
	xor e			;1cad
	xor e			;1cae
	adc a,e			;1caf
	jr nc,l1d0fh		;1cb0
	call po,0c511h		;1cb2
	push de			;1cb5
	sub l			;1cb6
	ld h,l			;1cb7
	or d			;1cb8
	adc a,l			;1cb9
	nop			;1cba
	sub d			;1cbb
	ret nz			;1cbc
	dec (hl)		;1cbd
	ld a,b			;1cbe
	ld (hl),l		;1cbf
	halt			;1cc0
	call pe,sub_00d8h	;1cc1
	ld bc,09fc6h		;1cc4
	ld a,(hl)		;1cc7
	call m,03ed0h		;1cc8
	nop			;1ccb
	ret m			;1ccc
	ld c,c			;1ccd
	ld b,066h		;1cce
	and b			;1cd0
	ret po			;1cd1
	or h			;1cd2
	ld h,(hl)		;1cd3
	ld h,d			;1cd4
	ld h,b			;1cd5
	ld h,c			;1cd6
	ld h,h			;1cd7
	ld l,h			;1cd8
	ret m			;1cd9
	ld c,c			;1cda
	ld h,(hl)		;1cdb
	ld h,(hl)		;1cdc
	ld b,(hl)		;1cdd
	ld b,(hl)		;1cde
	ld h,026h		;1cdf
	ret m			;1ce1
	or (hl)			;1ce2
	ld h,d			;1ce3
	ld h,(hl)		;1ce4
	ld b,(hl)		;1ce5
	ld (06664h),hl		;1ce6
	ld sp,0f873h		;1ce9
	jp m,09878h		;1cec
	pop bc			;1cef
	nop			;1cf0
	nop			;1cf1
	and b			;1cf2
	nop			;1cf3
	inc bc			;1cf4
	ex af,af'		;1cf5
	djnz l1d18h		;1cf6
l1cf8h:
	jr nz,l1d2dh		;1cf8
	ccf			;1cfa
	nop			;1cfb
	ld b,b			;1cfc
	jr nz,l1d1fh		;1cfd
	ld (hl),b		;1cff
	ret p			;1d00
	ret m			;1d01
	call m,l0000h		;1d02
	inc bc			;1d05
	inc c			;1d06
	dec de			;1d07
	rra			;1d08
	rrca			;1d09
	rrca			;1d0a
	nop			;1d0b
	nop			;1d0c
sub_1d0dh:
	add a,b			;1d0d
	ret nz			;1d0e
l1d0fh:
	ld h,b			;1d0f
	ret po			;1d10
	ret p			;1d11
	ret m			;1d12
	inc bc			;1d13
	rra			;1d14
	ld (bc),a		;1d15
	ccf			;1d16
	adc a,e			;1d17
l1d18h:
	sbc a,a			;1d18
	or l			;1d19
	ld e,e			;1d1a
	call m,0fefeh		;1d1b
	nop			;1d1e
l1d1fh:
	cp (hl)			;1d1f
	ld l,a			;1d20
	cp 0dbh			;1d21
	nop			;1d23
	ld (bc),a		;1d24
	nop			;1d25
	sub e			;1d26
	ld bc,02f1ch		;1d27
	ret m			;1d2a
	inc bc			;1d2b
	ld c,a			;1d2c
l1d2dh:
	nop			;1d2d
	nop			;1d2e
	ex af,af'		;1d2f
	sub b			;1d30
l1d31h:
	jr nz,l1d31h		;1d31
	add a,b			;1d33
	ld e,a			;1d34
	nop			;1d35
	inc bc			;1d36
	rrca			;1d37
	djnz l1da5h		;1d38
	inc bc			;1d3a
	nop			;1d3b
	add a,l			;1d3c
	ccf			;1d3d
	cp 0c1h			;1d3e
	ld (hl),0cdh		;1d40
	inc bc			;1d42
l1d43h:
	nop			;1d43
	add a,l			;1d44
	ld a,0ffh		;1d45
	nop			;1d47
	xor l			;1d48
l1d49h:
	add a,b			;1d49
	inc bc			;1d4a
	nop			;1d4b
	add a,l			;1d4c
	cp (hl)			;1d4d
	nop			;1d4e
	ld bc,0f07ch		;1d4f
	inc bc			;1d52
	nop			;1d53
	add a,l			;1d54
	inc bc			;1d55
	ld (0247dh),hl		;1d56
	rlca			;1d59
	inc bc			;1d5a
	nop			;1d5b
	add a,l			;1d5c
l1d5dh:
	add a,b			;1d5d
	ret nc			;1d5e
	ret pe			;1d5f
	ret m			;1d60
	and b			;1d61
	inc bc			;1d62
	nop			;1d63
l1d64h:
	nop			;1d64
	and b			;1d65
	nop			;1d66
	ret p			;1d67
	ret po			;1d68
	ret p			;1d69
l1d6ah:
	ret po			;1d6a
	and b			;1d6b
	and b			;1d6c
	or b			;1d6d
	nop			;1d6e
	ret p			;1d6f
	ret po			;1d70
	ret p			;1d71
	ret po			;1d72
	and b			;1d73
	and b			;1d74
	or b			;1d75
	or b			;1d76
	and b			;1d77
	and b			;1d78
	ret po			;1d79
	ret p			;1d7a
	ret po			;1d7b
	ret p			;1d7c
	nop			;1d7d
	or b			;1d7e
	and b			;1d7f
	and b			;1d80
	ret po			;1d81
	ret p			;1d82
	ret po			;1d83
	ret p			;1d84
	nop			;1d85
	nop			;1d86
	and b			;1d87
	nop			;1d88
	ret p			;1d89
	ret po			;1d8a
	ret p			;1d8b
	ret po			;1d8c
	ret nz			;1d8d
	jr nz,l1dc0h		;1d8e
	nop			;1d90
	ret p			;1d91
	ret po			;1d92
	ret p			;1d93
	ret po			;1d94
	ret nz			;1d95
	jr nz,l1dc8h		;1d96
	jr nc,l1dbah		;1d98
	ret nz			;1d9a
	ret po			;1d9b
	ret p			;1d9c
	ret po			;1d9d
	ret p			;1d9e
	nop			;1d9f
	jr nc,l1dc2h		;1da0
	ret nz			;1da2
	ret po			;1da3
	ret p			;1da4
l1da5h:
	ret po			;1da5
	ret p			;1da6
	nop			;1da7
	nop			;1da8
	adc a,b			;1da9
	ld h,b			;1daa
	ld h,b			;1dab
	add a,b			;1dac
	sub b			;1dad
	sub b			;1dae
	add a,b			;1daf
	ld h,b			;1db0
	ld h,b			;1db1
	nop			;1db2
	adc a,c			;1db3
	jr nc,$+34		;1db4
	jr nc,l1dd8h		;1db6
	jr nc,l1deah		;1db8
l1dbah:
	jr nz,l1ddch		;1dba
	jr nc,$+5		;1dbc
	jr nz,l1dc2h		;1dbe
l1dc0h:
	jr nc,l1d43h		;1dc0
l1dc2h:
	jr nz,l1dd0h		;1dc2
	ret nz			;1dc4
	dec b			;1dc5
	jr nz,l1d49h		;1dc6
l1dc8h:
	ret nz			;1dc8
	inc bc			;1dc9
	jr nz,l1dd0h		;1dca
	jr nc,l1dd0h		;1dcc
	ret nz			;1dce
	rlca			;1dcf
l1dd0h:
	jr nz,l1dd5h		;1dd0
	jr nc,l1dd7h		;1dd2
	and b			;1dd4
l1dd5h:
	ld b,030h		;1dd5
l1dd7h:
	ld (bc),a		;1dd7
l1dd8h:
	and b			;1dd8
	ex af,af'		;1dd9
	jr nc,l1d5dh		;1dda
l1ddch:
	ret p			;1ddc
	dec b			;1ddd
	jr nc,l1d64h		;1dde
	ret nz			;1de0
	jr nz,l1e13h		;1de1
	ret p			;1de3
	inc b			;1de4
l1de5h:
	jr nc,l1d6ah		;1de5
	ret nz			;1de7
	jr nz,l1e1ah		;1de8
l1deah:
	nop			;1dea
	add a,c			;1deb
	ld (hl),h		;1dec
	rlca			;1ded
	ld (hl),b		;1dee
	add a,c			;1def
	ld b,b			;1df0
	inc bc			;1df1
	ld d,b			;1df2
	add a,(hl)		;1df3
	ld (hl),b		;1df4
	jr nc,l1e47h		;1df5
	ld (hl),b		;1df7
	ld d,h			;1df8
	ld (hl),l		;1df9
	rlca			;1dfa
	ld (hl),b		;1dfb
	rlca			;1dfc
	ld d,b			;1dfd
	add a,d			;1dfe
	ld (hl),h		;1dff
	ld (hl),b		;1e00
	ld b,050h		;1e01
	add a,c			;1e03
	ld b,b			;1e04
	inc bc			;1e05
	ld d,b			;1e06
	add a,h			;1e07
	ld (hl),b		;1e08
	jr nc,l1e5bh		;1e09
	ld (hl),b		;1e0b
	nop			;1e0c
	inc b			;1e0d
	ld b,b			;1e0e
	add a,c			;1e0f
	ld (hl),b		;1e10
	ld b,040h		;1e11
l1e13h:
	add a,e			;1e13
	jr nc,l1e86h		;1e14
	ld b,b			;1e16
	inc b			;1e17
	jr nc,l1e1ch		;1e18
l1e1ah:
	ld (hl),b		;1e1a
	adc a,h			;1e1b
l1e1ch:
	ld d,b			;1e1c
	ld (hl),b		;1e1d
	ld d,b			;1e1e
	ld b,b			;1e1f
	ld b,b			;1e20
	ld (hl),b		;1e21
	ld d,b			;1e22
	ld b,b			;1e23
	ld b,b			;1e24
	jr nc,l1e97h		;1e25
	ld d,b			;1e27
	inc b			;1e28
	ld b,b			;1e29
	ld (bc),a		;1e2a
	ld d,b			;1e2b
	dec b			;1e2c
	ld b,b			;1e2d
	add a,e			;1e2e
	ld (hl),b		;1e2f
	ld d,b			;1e30
	ld d,b			;1e31
	dec b			;1e32
	ld b,b			;1e33
	add a,e			;1e34
	ld (hl),h		;1e35
	ld (hl),l		;1e36
	ld d,h			;1e37
	inc bc			;1e38
	ld b,b			;1e39
	add a,e			;1e3a
	jr nc,$+114		;1e3b
	ld (hl),b		;1e3d
	inc bc			;1e3e
	ld d,b			;1e3f
	dec b			;1e40
	ld b,b			;1e41
	ld (bc),a		;1e42
	ld d,b			;1e43
	dec b			;1e44
	ld b,b			;1e45
	add a,e			;1e46
l1e47h:
	ld (hl),b		;1e47
	ld d,b			;1e48
	ld d,b			;1e49
	dec b			;1e4a
	ld b,b			;1e4b
	add a,e			;1e4c
	ld (hl),h		;1e4d
	ld (hl),l		;1e4e
	ld d,h			;1e4f
	inc bc			;1e50
	ld b,b			;1e51
	add a,e			;1e52
	jr nc,$+114		;1e53
	ld (hl),b		;1e55
	inc bc			;1e56
	ld d,b			;1e57
	add a,c			;1e58
	ld b,b			;1e59
	nop			;1e5a
l1e5bh:
	ld b,e			;1e5b
	ld b,b			;1e5c
	add a,c			;1e5d
	ld b,h			;1e5e
	ld b,h			;1e5f
l1e60h:
	ld b,b			;1e60
	rla			;1e61
	ret p			;1e62
	add a,c			;1e63
	rst 30h			;1e64
	ld b,0f0h		;1e65
	jr nz,l1e60h		;1e67
	ld b,074h		;1e69
	inc b			;1e6b
	ld b,b			;1e6c
	inc b			;1e6d
	ret p			;1e6e
	add a,c			;1e6f
	ld b,b			;1e70
	inc de			;1e71
	call p,0f781h		;1e72
	ld l,0f4h		;1e75
	dec b			;1e77
	ld (hl),h		;1e78
	rlca			;1e79
	ld b,b			;1e7a
	add a,d			;1e7b
	ld (hl),b		;1e7c
	ld b,b			;1e7d
	rlca			;1e7e
	call p,0f708h		;1e7f
	inc b			;1e82
	call p,0f003h		;1e83
l1e86h:
	inc bc			;1e86
	ld b,b			;1e87
	add a,h			;1e88
	call p,0f040h		;1e89
	ret p			;1e8c
	ld b,0f4h		;1e8d
l1e8fh:
	ld (bc),a		;1e8f
	ret p			;1e90
	ld b,0f4h		;1e91
	add a,e			;1e93
	ld b,b			;1e94
	ld (hl),h		;1e95
	ld (hl),h		;1e96
l1e97h:
	dec b			;1e97
	ld b,b			;1e98
	ld (bc),a		;1e99
	ret p			;1e9a
	inc bc			;1e9b
	rst 30h			;1e9c
	inc bc			;1e9d
	ld (hl),h		;1e9e
	add a,d			;1e9f
	ret p			;1ea0
	ld (hl),b		;1ea1
	ld b,040h		;1ea2
	inc b			;1ea4
	ret p			;1ea5
	add a,c			;1ea6
	ld (hl),b		;1ea7
	inc bc			;1ea8
	ld (hl),a		;1ea9
	ld (bc),a		;1eaa
	call p,07406h		;1eab
	inc b			;1eae
	rst 30h			;1eaf
	inc b			;1eb0
	ld (hl),h		;1eb1
	ld (bc),a		;1eb2
	ld d,b			;1eb3
	ld b,040h		;1eb4
	ex af,af'		;1eb6
	ret p			;1eb7
	rlca			;1eb8
	ld b,b			;1eb9
	add a,c			;1eba
	call p,04003h		;1ebb
	inc bc			;1ebe
	ret p			;1ebf
	ld (bc),a		;1ec0
	call p,04008h		;1ec1
	ld b,0f0h		;1ec4
	add a,c			;1ec6
	ret po			;1ec7
	ld b,0f0h		;1ec8
	add a,c			;1eca
	ld d,b			;1ecb
	ld a,(bc)		;1ecc
	ld b,b			;1ecd
	ld (bc),a		;1ece
	ret p			;1ecf
	add a,(hl)		;1ed0
	ld (hl),b		;1ed1
	ld d,b			;1ed2
	ld b,b			;1ed3
	ld (hl),b		;1ed4
	ld d,b			;1ed5
	ld b,b			;1ed6
	inc bc			;1ed7
	ret p			;1ed8
	adc a,l			;1ed9
	ld (hl),b		;1eda
	ld d,b			;1edb
	ld b,b			;1edc
	ld (hl),b		;1edd
	ld b,b			;1ede
	ret p			;1edf
	ret p			;1ee0
	ld (hl),b		;1ee1
	ld (hl),b		;1ee2
	ld d,b			;1ee3
	ld (hl),b		;1ee4
	ld d,b			;1ee5
	ld b,b			;1ee6
	inc bc			;1ee7
	ret p			;1ee8
	ld (bc),a		;1ee9
	ld (hl),b		;1eea
	add a,e			;1eeb
	ld d,b			;1eec
	ld b,b			;1eed
	ld b,b			;1eee
	inc b			;1eef
	ret p			;1ef0
	sbc a,e			;1ef1
	ld (hl),b		;1ef2
	ld d,b			;1ef3
	ld d,b			;1ef4
	ld b,b			;1ef5
	ld (hl),a		;1ef6
	ret p			;1ef7
	ret p			;1ef8
	ld (hl),b		;1ef9
	ld d,b			;1efa
	ld b,b			;1efb
	ld (hl),b		;1efc
	ld b,b			;1efd
	rst 30h			;1efe
	ret p			;1eff
	ld (hl),b		;1f00
	ld d,b			;1f01
	ret p			;1f02
	ld d,b			;1f03
sub_1f04h:
	ld b,b			;1f04
	ld b,b			;1f05
	rst 30h			;1f06
	ret p			;1f07
	ld (hl),b		;1f08
	ld d,b			;1f09
	ld b,b			;1f0a
	ld (hl),b		;1f0b
	ld d,b			;1f0c
	ld b,040h		;1f0d
l1f0fh:
	inc bc			;1f0f
	ld d,b			;1f10
	rlca			;1f11
	ld b,b			;1f12
	add a,c			;1f13
	ld d,b			;1f14
	ld a,040h		;1f15
	ld (bc),a		;1f17
	ld d,b			;1f18
	inc bc			;1f19
	ld b,b			;1f1a
	dec b			;1f1b
	ld d,b			;1f1c
	dec b			;1f1d
	ld b,b			;1f1e
	inc bc			;1f1f
	ld d,b			;1f20
	ld (bc),a		;1f21
	ld b,b			;1f22
	ld (bc),a		;1f23
	ld d,b			;1f24
	ld b,040h		;1f25
	inc b			;1f27
	ld d,b			;1f28
	dec b			;1f29
	ld b,b			;1f2a
	inc b			;1f2b
	ld d,b			;1f2c
	inc b			;1f2d
	ld b,b			;1f2e
	dec b			;1f2f
	ld d,b			;1f30
	ex af,af'		;1f31
	and b			;1f32
	nop			;1f33
	inc bc			;1f34
	ret p			;1f35
	adc a,l			;1f36
	ret po			;1f37
	ld (hl),b		;1f38
	ld (hl),b		;1f39
	ld d,l			;1f3a
	ld b,h			;1f3b
	ret p			;1f3c
	ld (hl),b		;1f3d
	ld (hl),b		;1f3e
	ld d,b			;1f3f
	ld b,b			;1f40
	ld b,b			;1f41
	ld d,l			;1f42
	ld b,h			;1f43
	dec b			;1f44
	ret p			;1f45
	add a,e			;1f46
	rst 30h			;1f47
	push hl			;1f48
	call po,0e004h		;1f49
	ld (bc),a		;1f4c
	ld (hl),b		;1f4d
	add a,d			;1f4e
	ld d,b			;1f4f
	ld b,b			;1f50
	inc bc			;1f51
	nop			;1f52
	sub l			;1f53
	ret po			;1f54
	ld (hl),b		;1f55
	ld (hl),b		;1f56
	ld d,l			;1f57
	ld b,h			;1f58
	ret nc			;1f59
	ret nc			;1f5a
	add a,b			;1f5b
	add a,b			;1f5c
	ld d,b			;1f5d
	ld (hl),b		;1f5e
	ld b,b			;1f5f
	ld b,b			;1f60
	ret nc			;1f61
	ret nc			;1f62
	add a,b			;1f63
	add a,b			;1f64
	ld d,b			;1f65
	ld (hl),b		;1f66
	ld b,b			;1f67
	ld b,b			;1f68
	ld c,0a0h		;1f69
	add a,d			;1f6b
	ld d,l			;1f6c
	ld b,h			;1f6d
	ld c,0b0h		;1f6e
	add a,d			;1f70
	ld d,l			;1f71
	ld b,h			;1f72
	ld c,0f0h		;1f73
	add a,d			;1f75
	ld d,l			;1f76
	ld b,h			;1f77
	ex af,af'		;1f78
	nop			;1f79
	ld (bc),a		;1f7a
	ret p			;1f7b
	add a,h			;1f7c
	ld (hl),b		;1f7d
	ld d,b			;1f7e
	ret p			;1f7f
	ld d,b			;1f80
	add hl,bc		;1f81
	ld b,b			;1f82
	add a,c			;1f83
	ld d,b			;1f84
	dec b			;1f85
	ld b,b			;1f86
	inc bc			;1f87
	ld d,b			;1f88
	nop			;1f89
	inc h			;1f8a
	ld b,b			;1f8b
	inc b			;1f8c
	ld d,b			;1f8d
	ld (bc),a		;1f8e
	ld b,b			;1f8f
	ld c,050h		;1f90
	ex af,af'		;1f92
	ret p			;1f93
	ex af,af'		;1f94
	ld (hl),b		;1f95
l1f96h:
	rlca			;1f96
l1f97h:
	nop			;1f97
	add a,e			;1f98
l1f99h:
	ld b,b			;1f99
	nop			;1f9a
	nop			;1f9b
	inc bc			;1f9c
	and b			;1f9d
	inc b			;1f9e
	nop			;1f9f
	dec b			;1fa0
	and b			;1fa1
	rlca			;1fa2
	nop			;1fa3
	inc bc			;1fa4
	rrca			;1fa5
	ld b,000h		;1fa6
	ld b,0f0h		;1fa8
	ld (bc),a		;1faa
	ret po			;1fab
	ld (bc),a		;1fac
	ret p			;1fad
	ld (bc),a		;1fae
	ld b,b			;1faf
	ld b,050h		;1fb0
	inc bc			;1fb2
	ld b,b			;1fb3
	dec b			;1fb4
	ld d,b			;1fb5
	nop			;1fb6
	inc c			;1fb7
	ret p			;1fb8
	ld (bc),a		;1fb9
	ret po			;1fba
	add a,d			;1fbb
	ld h,b			;1fbc
	ld b,b			;1fbd
	inc bc			;1fbe
	ret p			;1fbf
	inc bc			;1fc0
	ret po			;1fc1
	add a,d			;1fc2
	ld h,b			;1fc3
	ld b,b			;1fc4
	nop			;1fc5
	adc a,a			;1fc6
	sub 080h		;1fc7
	add a,b			;1fc9
	ld d,b			;1fca
	ret po			;1fcb
	ret p			;1fcc
	ret p			;1fcd
	ret po			;1fce
	ret p			;1fcf
	ld (hl),b		;1fd0
	jr nz,l1f99h		;1fd1
	add a,e			;1fd3
	jr nz,l1f96h		;1fd4
	dec b			;1fd6
	add a,b			;1fd7
	sub h			;1fd8
	sub (hl)		;1fd9
	and (hl)		;1fda
	add a,b			;1fdb
	add a,b			;1fdc
	ld h,h			;1fdd
	ld d,h			;1fde
	ld d,b			;1fdf
	ld (hl),b		;1fe0
	ret nz			;1fe1
	ret nz			;1fe2
	jr nz,$+50		;1fe3
	ld h,h			;1fe5
	ld d,h			;1fe6
	ld d,b			;1fe7
	ld (hl),b		;1fe8
	ret nz			;1fe9
	ret nz			;1fea
	jr nz,$+50		;1feb
	nop			;1fed
	sub d			;1fee
	jp z,0c3c3h		;1fef
	jp nz,020c2h		;1ff2
	jr nz,l1f97h		;1ff5
	ret z			;1ff7
	ret z			;1ff8
	jp 0c0c3h		;1ff9
	jp nz,02022h		;1ffc
	defb 0cah		;1fff
