; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x0000 -o docs/reverse-engineering/issues/issue-188/gradius2e_banks/bank15.asm /tmp/gradius2e_bank15.bin

	org 00000h

l0000h:
	rst 20h			;0000
l0001h:
	or h			;0001
sub_0002h:
	sub a			;0002
sub_0003h:
	sub l			;0003
l0004h:
	sub l			;0004
sub_0005h:
	call p,0a8a8h		;0005
	xor b			;0008
	jr z,$-86		;0009
	xor (hl)		;000b
	add a,a			;000c
	add a,b			;000d
l000eh:
	add a,b			;000e
	add a,b			;000f
l0010h:
	add a,b			;0010
	rst 20h			;0011
l0012h:
	and 026h		;0012
	jr nz,$+34		;0014
	ld h,0e6h		;0016
	nop			;0018
	nop			;0019
	nop			;001a
l001bh:
	nop			;001b
l001ch:
	nop			;001c
	nop			;001d
	nop			;001e
l001fh:
	nop			;001f
	nop			;0020
	nop			;0021
	nop			;0022
	nop			;0023
l0024h:
	ld a,(hl)		;0024
	ld b,b			;0025
l0026h:
	ld b,b			;0026
	ld b,b			;0027
l0028h:
	ld b,b			;0028
	ld a,(hl)		;0029
	ld c,e			;002a
	ld c,d			;002b
	ld c,e			;002c
	ld c,d			;002d
	ld e,d			;002e
	ld (hl),e		;002f
	cp e			;0030
	ld hl,021a1h		;0031
	ld hl,0bdb9h		;0034
	dec h			;0037
	dec h			;0038
	dec h			;0039
l003ah:
	dec h			;003a
	dec a			;003b
	rst 20h			;003c
	jr nz,l001fh		;003d
	ld b,b			;003f
	ld h,b			;0040
	daa			;0041
	and 026h		;0042
	jr nz,l0066h		;0044
	ld h,0e6h		;0046
l0048h:
	nop			;0048
	nop			;0049
	nop			;004a
	nop			;004b
	nop			;004c
	nop			;004d
	nop			;004e
	nop			;004f
	nop			;0050
	nop			;0051
	nop			;0052
	nop			;0053
	ld a,(hl)		;0054
	ld b,b			;0055
	ld b,b			;0056
	ld b,b			;0057
	ld b,b			;0058
	ld a,(hl)		;0059
	ld a,b			;005a
	ld b,b			;005b
	ld a,b			;005c
	ld b,b			;005d
	ld b,b			;005e
	ld a,d			;005f
	call p,0f484h		;0060
	inc d			;0063
	inc d			;0064
	rst 30h			;0065
l0066h:
	ld a,d			;0066
	ld c,d			;0067
	ld c,d			;0068
	ld c,d			;0069
	ld c,d			;006a
	ld a,e			;006b
	and a			;006c
	and b			;006d
	and b			;006e
	and b			;006f
	and b			;0070
	rst 20h			;0071
	and 026h		;0072
	jr nz,l0096h		;0074
	ld h,0e6h		;0076
	nop			;0078
	nop			;0079
	nop			;007a
	nop			;007b
	nop			;007c
	nop			;007d
	nop			;007e
	nop			;007f
	nop			;0080
	nop			;0081
l0082h:
	nop			;0082
	nop			;0083
	ld e,012h		;0084
l0086h:
	ld (de),a		;0086
	ld (de),a		;0087
	ld (de),a		;0088
	ld e,025h		;0089
	dec h			;008b
	dec h			;008c
	dec h			;008d
	dec l			;008e
	cp c			;008f
	rst 28h			;0090
	add hl,hl		;0091
	rst 28h			;0092
	ld hl,(0292bh)		;0093
l0096h:
	ld a,d			;0096
	ld c,d			;0097
	ld a,d			;0098
	ld d,d			;0099
	ld e,d			;009a
	ld c,d			;009b
	rst 30h			;009c
	sub h			;009d
	sub a			;009e
	sub l			;009f
	sub l			;00a0
	call p,08686h		;00a1
	add a,b			;00a4
	nop			;00a5
l00a6h:
	add a,(hl)		;00a6
	add a,(hl)		;00a7
	nop			;00a8
	nop			;00a9
	nop			;00aa
	nop			;00ab
	nop			;00ac
	nop			;00ad
	nop			;00ae
	nop			;00af
	nop			;00b0
	nop			;00b1
	nop			;00b2
	nop			;00b3
	nop			;00b4
	ld e,b			;00b5
	add a,c			;00b6
	nop			;00b7
	ld e,h			;00b8
	sub c			;00b9
	nop			;00ba
	ld e,(hl)		;00bb
	sub c			;00bc
l00bdh:
	nop			;00bd
	ld l,b			;00be
	add a,c			;00bf
	nop			;00c0
	ld l,d			;00c1
	add a,c			;00c2
sub_00c3h:
	nop			;00c3
	add a,d			;00c4
	add a,c			;00c5
	nop			;00c6
	sub b			;00c7
	sub c			;00c8
l00c9h:
	nop			;00c9
	sbc a,b			;00ca
	sub c			;00cb
	nop			;00cc
	sbc a,d			;00cd
	sub c			;00ce
	nop			;00cf
l00d0h:
	xor b			;00d0
	add a,c			;00d1
	nop			;00d2
	xor d			;00d3
	add a,c			;00d4
l00d5h:
	rst 38h			;00d5
	rst 38h			;00d6
	rst 38h			;00d7
	dec bc			;00d8
	inc a			;00d9
	sub b			;00da
	dec bc			;00db
	ld a,090h		;00dc
	inc bc			;00de
	ld c,h			;00df
	sub b			;00e0
	inc bc			;00e1
	ld d,b			;00e2
	sub b			;00e3
	inc bc			;00e4
	ld d,d			;00e5
	sub b			;00e6
	inc bc			;00e7
	ld d,h			;00e8
	sub b			;00e9
	dec bc			;00ea
	adc a,h			;00eb
	djnz $+13		;00ec
	adc a,(hl)		;00ee
	djnz l00fch		;00ef
	sub b			;00f1
l00f2h:
	djnz l00f7h		;00f2
	sub h			;00f4
	jr nc,l00fah		;00f5
l00f7h:
	sub (hl)		;00f7
	jr nc,l00fdh		;00f8
l00fah:
	sub (hl)		;00fa
	ld b,b			;00fb
l00fch:
	inc bc			;00fc
l00fdh:
	sbc a,b			;00fd
	ld b,b			;00fe
	inc bc			;00ff
	sbc a,b			;0100
	ld d,b			;0101
	inc bc			;0102
	sbc a,d			;0103
	ld d,b			;0104
	inc bc			;0105
	call z,sub_0370h	;0106
	adc a,070h		;0109
	inc bc			;010b
	ret nc			;010c
	ld (hl),b		;010d
	inc bc			;010e
	ret nc			;010f
sub_0110h:
	sub b			;0110
	inc bc			;0111
	jp nc,sub_0370h		;0112
	call nc,sub_0390h	;0115
	sub 090h		;0118
	inc bc			;011a
	ret c			;011b
	sub b			;011c
	inc bc			;011d
	jp c,sub_0390h		;011e
	ld (de),a		;0121
	ld (hl),c		;0122
	inc bc			;0123
	inc d			;0124
	ld (hl),c		;0125
	inc bc			;0126
	ld d,071h		;0127
	inc bc			;0129
	jr l00bdh		;012a
	inc bc			;012c
	ld a,(de)		;012d
	sub c			;012e
	inc bc			;012f
	inc e			;0130
	sub c			;0131
	inc bc			;0132
	ld e,091h		;0133
	inc bc			;0135
	jr nz,l00c9h		;0136
	inc bc			;0138
	ld (l0391h),hl		;0139
	inc h			;013c
	sub c			;013d
	inc bc			;013e
	ld h,091h		;013f
	inc bc			;0141
	jr z,l00d5h		;0142
	inc bc			;0144
	ld hl,(0ff91h)		;0145
sub_0148h:
	rst 38h			;0148
	rst 38h			;0149
	dec bc			;014a
	inc (hl)		;014b
	ld h,b			;014c
	dec bc			;014d
	inc (hl)		;014e
	ld (hl),b		;014f
l0150h:
	dec bc			;0150
	ld (hl),060h		;0151
	dec bc			;0153
	ld (hl),070h		;0154
	inc bc			;0156
	ld c,b			;0157
	ld (hl),b		;0158
	inc bc			;0159
	ld c,d			;015a
	ld (hl),b		;015b
	inc bc			;015c
	ld c,h			;015d
	add a,b			;015e
	inc bc			;015f
	ld c,(hl)		;0160
	add a,b			;0161
	dec bc			;0162
	ld e,h			;0163
	jr nc,l0171h		;0164
	ld e,(hl)		;0166
	jr nc,l016ch		;0167
	ld l,d			;0169
	ld l,b			;016a
	inc bc			;016b
l016ch:
	ld l,d			;016c
	adc a,b			;016d
	inc bc			;016e
	ld l,h			;016f
	ld a,b			;0170
l0171h:
	inc bc			;0171
	ld l,h			;0172
	sub b			;0173
	inc bc			;0174
	ld l,l			;0175
	ld e,b			;0176
	inc bc			;0177
	ld l,(hl)		;0178
	sub b			;0179
	inc bc			;017a
	ld (hl),b		;017b
	ld e,b			;017c
	inc bc			;017d
	ld (hl),b		;017e
	add a,b			;017f
	inc bc			;0180
	ld (hl),d		;0181
	sub b			;0182
	inc bc			;0183
	adc a,h			;0184
	ld (hl),b		;0185
	inc bc			;0186
	adc a,(hl)		;0187
sub_0188h:
	ld (hl),b		;0188
sub_0189h:
	inc bc			;0189
	sub h			;018a
	ld (hl),b		;018b
	dec bc			;018c
	xor b			;018d
	ld (hl),b		;018e
	dec bc			;018f
	xor b			;0190
	add a,b			;0191
	dec bc			;0192
	xor d			;0193
	ld (hl),b		;0194
	dec bc			;0195
	xor d			;0196
	add a,b			;0197
	ld (bc),a		;0198
	cp b			;0199
	ld (hl),b		;019a
	inc bc			;019b
	ret c			;019c
	ld (hl),b		;019d
	inc bc			;019e
	jp c,sub_0370h		;019f
	jp c,sub_0390h		;01a2
	call c,sub_0390h	;01a5
	call c,sub_0370h	;01a8
	sbc a,070h		;01ab
	dec bc			;01ad
	jp pe,l0368h		;01ae
	call pe,sub_0b28h	;01b1
	call pe,sub_0c68h	;01b4
	xor 068h		;01b7
	inc c			;01b9
	ret p			;01ba
	ld l,b			;01bb
	dec bc			;01bc
	jp p,l0b68h		;01bd
	call p,sub_0268h	;01c0
	inc h			;01c3
	ld b,c			;01c4
	dec bc			;01c5
	scf			;01c6
	ld sp,0390bh		;01c7
	ld de,0390bh		;01ca
	ld hl,0390bh		;01cd
	ld sp,0390bh		;01d0
	ld (hl),c		;01d3
	dec bc			;01d4
	dec sp			;01d5
	ld sp,03b0ch		;01d6
	ld (hl),c		;01d9
	rst 38h			;01da
	rst 38h			;01db
	rst 38h			;01dc
	dec bc			;01dd
	jr c,l0200h		;01de
	dec bc			;01e0
	ld a,(l0b20h)		;01e1
	ld d,h			;01e4
	ld d,b			;01e5
	dec bc			;01e6
	ld d,(hl)		;01e7
	ld d,b			;01e8
	dec bc			;01e9
	ld e,d			;01ea
	ld h,b			;01eb
	dec bc			;01ec
	ld e,h			;01ed
	ld (hl),b		;01ee
	dec bc			;01ef
	ld e,(hl)		;01f0
	ld (hl),b		;01f1
	dec bc			;01f2
	ld h,h			;01f3
	ld h,b			;01f4
	dec bc			;01f5
	ld l,b			;01f6
	ld d,b			;01f7
	dec bc			;01f8
	ld l,d			;01f9
	ld b,b			;01fa
	dec bc			;01fb
	ld l,(hl)		;01fc
	ld b,b			;01fd
	dec bc			;01fe
	ld (hl),b		;01ff
l0200h:
	ld h,b			;0200
l0201h:
	dec bc			;0201
l0202h:
	ld (hl),d		;0202
	jr nc,$+13		;0203
	ld (hl),d		;0205
	ld h,b			;0206
	dec bc			;0207
	halt			;0208
	jr nc,l0216h		;0209
	ld a,b			;020b
	ld h,b			;020c
	dec bc			;020d
	ld a,h			;020e
	jr nz,$+13		;020f
	ld a,(hl)		;0211
	jr nz,l021fh		;0212
	ld a,(hl)		;0214
	ld (hl),b		;0215
l0216h:
	dec bc			;0216
	add a,h			;0217
	ld h,b			;0218
	dec bc			;0219
	add a,(hl)		;021a
	jr nz,l0228h		;021b
	adc a,b			;021d
	ld (hl),b		;021e
l021fh:
	dec bc			;021f
	adc a,d			;0220
	ld h,b			;0221
	dec bc			;0222
	sub b			;0223
	ld h,b			;0224
	dec bc			;0225
	sub d			;0226
	ld h,b			;0227
l0228h:
	dec bc			;0228
	sub h			;0229
	jr c,$+13		;022a
	sub h			;022c
	ld h,b			;022d
	dec bc			;022e
	sbc a,b			;022f
	adc a,b			;0230
	dec bc			;0231
	sbc a,d			;0232
	ld d,b			;0233
	dec bc			;0234
	sbc a,h			;0235
	jr l0243h		;0236
	sbc a,h			;0238
	ld d,b			;0239
	dec bc			;023a
	and d			;023b
	ld d,b			;023c
	dec bc			;023d
	xor a			;023e
	jr nc,l024ch		;023f
	or h			;0241
	ld c,b			;0242
l0243h:
	dec bc			;0243
	or (hl)			;0244
	ld e,b			;0245
	dec bc			;0246
	or a			;0247
	jr c,l0255h		;0248
	cp e			;024a
	ld b,b			;024b
l024ch:
	dec bc			;024c
	cp (hl)			;024d
	djnz l025bh		;024e
	call nz,sub_0b50h	;0250
	add a,050h		;0253
l0255h:
	dec bc			;0255
	jp z,l0b38h		;0256
	adc a,028h		;0259
l025bh:
	dec bc			;025b
	ret nc			;025c
	ld d,b			;025d
	dec bc			;025e
	jp nc,00b90h		;025f
	call c,sub_0b60h	;0262
	call c,00b90h		;0265
sub_0268h:
	sbc a,060h		;0268
	dec bc			;026a
	or 048h			;026b
	dec bc			;026d
	ret m			;026e
	ld a,b			;026f
	dec bc			;0270
	jp m,l0b48h		;0271
	jp m,l0b78h		;0274
	inc b			;0277
	ld c,c			;0278
	dec bc			;0279
	inc b			;027a
	sub c			;027b
	dec bc			;027c
	ld b,049h		;027d
	dec bc			;027f
	dec d			;0280
	add hl,de		;0281
	inc bc			;0282
	jr l02e6h		;0283
	inc bc			;0285
	jr l02f9h		;0286
	inc bc			;0288
	ld e,011h		;0289
	inc bc			;028b
	ld e,021h		;028c
	inc bc			;028e
	inc l			;028f
	ld hl,02c03h		;0290
	ld hl,02e03h		;0293
	ld hl,02e03h		;0296
	ld sp,03003h		;0299
	ld hl,03003h		;029c
	ld sp,03203h		;029f
	ld hl,03203h		;02a2
	ld sp,0ffffh		;02a5
	rst 38h			;02a8
	adc a,h			;02a9
	ld l,b			;02aa
	inc bc			;02ab
	sub b			;02ac
	add a,b			;02ad
	dec b			;02ae
	sub b			;02af
	djnz l02b3h		;02b0
	sub d			;02b2
l02b3h:
	jr z,$+9		;02b3
	sub (hl)		;02b5
	ld d,b			;02b6
	ld bc,088afh		;02b7
	ld bc,070b3h		;02ba
	ld bc,088bch		;02bd
	ld bc,058beh		;02c0
	inc bc			;02c3
	ret nz			;02c4
	jr nz,$+3		;02c5
	jp nz,l0538h		;02c7
	call nz,00670h		;02ca
	call nc,00120h		;02cd
	rst 10h			;02d0
	ld l,b			;02d1
	ld bc,038d8h		;02d2
	ld bc,080d8h		;02d5
	dec b			;02d8
	jp c,l0150h		;02d9
	call pe,sub_0188h	;02dc
	xor 030h		;02df
	ld bc,048f2h		;02e1
	inc b			;02e4
	di			;02e5
l02e6h:
	jr l02e9h		;02e6
	ret m			;02e8
l02e9h:
	ld h,b			;02e9
	rlca			;02ea
	call m,sub_0760h	;02eb
	inc bc			;02ee
	ld sp,05101h		;02ef
	ld b,e			;02f2
	ld bc,l1154h		;02f3
	inc c			;02f6
	ld d,h			;02f7
	adc a,c			;02f8
l02f9h:
	ld (bc),a		;02f9
	ld e,b			;02fa
	ld (hl),c		;02fb
	ld bc,0295ah		;02fc
	inc bc			;02ff
l0300h:
	ld e,h			;0300
l0301h:
	ld b,c			;0301
l0302h:
	ld b,060h		;0302
l0304h:
	ld de,06d01h		;0304
	add hl,hl		;0307
	ld bc,04170h		;0308
	dec b			;030b
	ld (hl),b		;030c
	ld h,c			;030d
	dec b			;030e
	ld (hl),b		;030f
	add a,c			;0310
l0311h:
	dec b			;0311
	halt			;0312
	ld hl,07601h		;0313
	adc a,c			;0316
	ld bc,03978h		;0317
	ld b,078h		;031a
	ld l,c			;031c
	dec b			;031d
	sub h			;031e
	adc a,c			;031f
	ld bc,l19a4h		;0320
	ld bc,071a4h		;0323
	ld bc,031a8h		;0326
	ld bc,089a8h		;0329
	ld bc,049ach		;032c
	inc bc			;032f
	or d			;0330
	inc sp			;0331
l0332h:
	ld bc,061b3h		;0332
	rlca			;0335
	or h			;0336
	ld de,0c00bh		;0337
	ld hl,0c60dh		;033a
	ld d,e			;033d
	ld bc,l11c9h		;033e
	dec c			;0341
	call z,sub_0189h	;0342
	adc a,011h		;0345
	ld bc,059cfh		;0347
	ld (bc),a		;034a
	ret nc			;034b
	add hl,hl		;034c
	ld b,0d1h		;034d
	ld (hl),c		;034f
	inc bc			;0350
	rst 10h			;0351
	add hl,hl		;0352
	ld b,0d7h		;0353
	ld de,0d801h		;0355
	adc a,c			;0358
	ld bc,029dbh		;0359
	ld b,0ffh		;035c
	rst 38h			;035e
	inc l			;035f
l0360h:
	djnz $+14		;0360
	dec l			;0362
	ld b,d			;0363
	inc bc			;0364
	jr nc,l0377h		;0365
	inc c			;0367
l0368h:
	jr nc,l03c2h		;0368
	inc bc			;036a
	jr nc,$+114		;036b
	ld b,034h		;036d
	ld (hl),b		;036f
sub_0370h:
	ld b,03bh		;0370
	djnz l0375h		;0372
	inc a			;0374
l0375h:
	ld e,b			;0375
	inc bc			;0376
l0377h:
	ld b,b			;0377
	jr z,l037bh		;0378
	ld b,e			;037a
l037bh:
	ld (hl),b		;037b
	ld b,048h		;037c
	ld l,b			;037e
	inc bc			;037f
	ld d,b			;0380
	jr z,l0384h		;0381
	ld d,h			;0383
l0384h:
	ld h,b			;0384
	ld bc,04856h		;0385
sub_0388h:
	ld (bc),a		;0388
	ld e,b			;0389
	ld (05a01h),a		;038a
	djnz l039ah		;038d
	ld e,h			;038f
sub_0390h:
	ld h,b			;0390
l0391h:
	rlca			;0391
	ld h,(hl)		;0392
	djnz l039bh		;0393
	ld h,(hl)		;0395
	ld b,b			;0396
	dec b			;0397
	ld h,(hl)		;0398
	ld h,b			;0399
l039ah:
	rlca			;039a
l039bh:
	ld l,d			;039b
	ld e,b			;039c
	ld bc,0886dh		;039d
	ld bc,0706fh		;03a0
	ld bc,02872h		;03a3
	ld bc,04074h		;03a6
	ld b,077h		;03a9
	djnz l03aeh		;03ab
	add a,h			;03ad
l03aeh:
	ld l,b			;03ae
	inc bc			;03af
	add a,h			;03b0
	add a,b			;03b1
	dec b			;03b2
	add a,l			;03b3
	jr nc,l03b7h		;03b4
	add a,l			;03b6
l03b7h:
	ld c,b			;03b7
	dec b			;03b8
	adc a,b			;03b9
	djnz l03c1h		;03ba
	adc a,b			;03bc
	add a,b			;03bd
	dec b			;03be
	adc a,c			;03bf
	ld c,b			;03c0
l03c1h:
	dec b			;03c1
l03c2h:
	adc a,h			;03c2
	add a,b			;03c3
	dec b			;03c4
	sub e			;03c5
	ld h,b			;03c6
	inc bc			;03c7
	and b			;03c8
	jr z,l03cch		;03c9
	and b			;03cb
l03cch:
	ld e,b			;03cc
	inc bc			;03cd
	and c			;03ce
	djnz l03d2h		;03cf
	and d			;03d1
l03d2h:
	ld b,b			;03d2
	ld bc,088a4h		;03d3
	inc bc			;03d6
	or d			;03d7
	jr z,l03dbh		;03d8
	or h			;03da
l03dbh:
	adc a,b			;03db
	ld bc,040b5h		;03dc
	ld bc,058b6h		;03df
	ld bc,070b8h		;03e2
	ld (bc),a		;03e5
	add a,010h		;03e6
	inc bc			;03e8
	rst 8			;03e9
	jr z,l03edh		;03ea
	push de			;03ec
l03edh:
	ld b,b			;03ed
	ld bc,058d8h		;03ee
	ld bc,070dch		;03f1
	ld bc,028fah		;03f4
	inc bc			;03f7
	call m,00340h		;03f8
	nop			;03fb
	ld de,l0001h		;03fc
	ld e,c			;03ff
sub_0400h:
	ld bc,05908h		;0400
	ld bc,08908h		;0403
	ld bc,0710ah		;0406
	ld bc,02930h		;0409
	ld bc,05930h		;040c
	ld (bc),a		;040f
	ld (l0311h),a		;0410
	inc (hl)		;0413
	ld b,c			;0414
	ld bc,07136h		;0415
	ld b,0ffh		;0418
	rst 38h			;041a
	ld h,058h		;041b
	ld bc,04028h		;041d
	ld bc,07028h		;0420
	ld bc,0882ch		;0423
	ld (bc),a		;0426
	dec l			;0427
	jr z,l042dh		;0428
	jr c,$+90		;042a
	ld (bc),a		;042c
l042dh:
	ld a,010h		;042d
	ld bc,04040h		;042f
	inc bc			;0432
	ld b,d			;0433
	jr z,l0437h		;0434
	ld c,b			;0436
l0437h:
	ld e,b			;0437
	ld bc,02850h		;0438
	inc bc			;043b
	ld e,d			;043c
	ld b,b			;043d
	ld (bc),a		;043e
	ld e,e			;043f
	adc a,b			;0440
	ld bc,0705ch		;0441
	inc bc			;0444
	ld e,l			;0445
	ld e,b			;0446
	ld bc,0426ah		;0447
	inc bc			;044a
	ld l,h			;044b
	djnz $+14		;044c
	ld a,c			;044e
	adc a,b			;044f
	inc bc			;0450
	add a,h			;0451
	djnz l0455h		;0452
	add a,l			;0454
l0455h:
	ld b,b			;0455
	ld bc,02888h		;0456
	ld bc,05888h		;0459
	ld (bc),a		;045c
	sub h			;045d
	jr z,l0462h		;045e
	sbc a,h			;0460
	adc a,b			;0461
l0462h:
	inc bc			;0462
	sbc a,(hl)		;0463
	ld (hl),b		;0464
	ld bc,058a0h		;0465
	ld bc,040a2h		;0468
	ld (bc),a		;046b
	xor h			;046c
	ld (hl),b		;046d
	inc bc			;046e
	or h			;046f
	djnz $+5		;0470
	or (hl)			;0472
	ld e,b			;0473
	ld bc,028b7h		;0474
	ld bc,040b8h		;0477
	ld (bc),a		;047a
	call nz,sub_0188h	;047b
	ret z			;047e
	ld (hl),b		;047f
	ld bc,l10d8h		;0480
	ld bc,028dch		;0483
	inc bc			;0486
	jp pe,l0360h		;0487
	call m,sub_0388h	;048a
	nop			;048d
	ld de,00601h		;048e
	ld (hl),c		;0491
	ld bc,l110ah		;0492
	inc bc			;0495
	ld a,(bc)		;0496
	ld e,c			;0497
	inc bc			;0498
	inc c			;0499
	add hl,hl		;049a
	ld b,00eh		;049b
	ld (hl),c		;049d
	ld b,019h		;049e
	adc a,c			;04a0
	ld (bc),a		;04a1
	ld a,(de)		;04a2
	add hl,hl		;04a3
	inc bc			;04a4
	inc e			;04a5
	ld d,c			;04a6
	ld (bc),a		;04a7
	inc e			;04a8
	ld l,c			;04a9
	dec b			;04aa
	dec e			;04ab
	ld de,02403h		;04ac
	ld l,c			;04af
	dec b			;04b0
	ld h,039h		;04b1
	inc bc			;04b3
	jr nc,$+107		;04b4
	ld (bc),a		;04b6
	ld (l0581h),a		;04b7
	ld (hl),081h		;04ba
	dec b			;04bc
	ld (hl),033h		;04bd
	ld bc,l1138h		;04bf
	dec bc			;04c2
	ld a,(l0581h)		;04c3
	rst 38h			;04c6
	rst 38h			;04c7
	ld h,010h		;04c8
	ld bc,08828h		;04ca
	inc bc			;04cd
	inc l			;04ce
	ld (hl),b		;04cf
	inc bc			;04d0
	ld (l0332h),a		;04d1
	inc (hl)		;04d4
	djnz l04e2h		;04d5
	ld b,e			;04d7
	ld b,b			;04d8
	inc bc			;04d9
	ld b,l			;04da
	ld (hl),b		;04db
	ld bc,l1046h		;04dc
	ld bc,05848h		;04df
l04e2h:
	ld bc,08849h		;04e2
	ld bc,l1054h		;04e5
	inc bc			;04e8
	ld h,h			;04e9
	jr nz,$+5		;04ea
	ld l,h			;04ec
	adc a,b			;04ed
	ld bc,04070h		;04ee
	ld bc,0307ch		;04f1
	ld (bc),a		;04f4
	adc a,h			;04f5
	ld c,b			;04f6
	inc bc			;04f7
	sub b			;04f8
	djnz l04feh		;04f9
	sbc a,h			;04fb
	jr z,l04ffh		;04fc
l04feh:
	and h			;04fe
l04ffh:
	djnz l0502h		;04ff
l0501h:
	and l			;0501
l0502h:
	ld b,b			;0502
	inc bc			;0503
l0504h:
	and (hl)		;0504
	adc a,b			;0505
	ld bc,028a7h		;0506
	ld bc,058a8h		;0509
	ld b,0b1h		;050c
	djnz l0511h		;050e
	or c			;0510
l0511h:
	ld l,b			;0511
	ld bc,020b9h		;0512
	ld bc,050b9h		;0515
	ld bc,l10c8h		;0518
	ld bc,038c8h		;051b
	ld bc,060c8h		;051e
	ld bc,020d0h		;0521
	ld (bc),a		;0524
	call nc,sub_0148h	;0525
	jp pe,00318h		;0528
	in l,(c)		;052b
	ld bc,030f0h		;052d
	ld bc,080f0h		;0530
	dec b			;0533
	pop af			;0534
	ld c,b			;0535
	dec b			;0536
	ret m			;0537
l0538h:
	ld e,b			;0538
	inc bc			;0539
	call m,sub_0110h	;053a
	cp 030h			;053d
	ld bc,l1110h		;053f
	rlca			;0542
	inc d			;0543
	ld de,l1405h		;0544
	ld h,c			;0547
	dec b			;0548
	ld a,(de)		;0549
	ld de,l1a07h		;054a
	ld d,c			;054d
	ld b,01ah		;054e
	add a,c			;0550
	dec b			;0551
	jr nz,l05bdh		;0552
	inc bc			;0554
	ld (l0581h),hl		;0555
	inc h			;0558
	ld b,e			;0559
	ld (bc),a		;055a
	jr z,l056eh		;055b
	inc c			;055d
	rst 38h			;055e
	rst 38h			;055f
	inc bc			;0560
	ex af,af'		;0561
	inc bc			;0562
	djnz l0568h		;0563
	inc c			;0565
	inc bc			;0566
	inc d			;0567
l0568h:
	inc b			;0568
	inc b			;0569
	ld b,004h		;056a
	ex af,af'		;056c
	inc b			;056d
l056eh:
	inc b			;056e
	inc b			;056f
	ld b,004h		;0570
	ex af,af'		;0572
	inc b			;0573
	inc b			;0574
	inc b			;0575
	ld b,004h		;0576
	ex af,af'		;0578
	inc b			;0579
	inc b			;057a
	inc b			;057b
	ld b,004h		;057c
	ex af,af'		;057e
	inc b			;057f
	and b			;0580
l0581h:
	and l			;0581
	cp b			;0582
	and l			;0583
	ret pe			;0584
	and l			;0585
	inc c			;0586
	and (hl)		;0587
	ld c,b			;0588
	and (hl)		;0589
	ld e,b			;058a
	and (hl)		;058b
	ld (hl),b		;058c
	and (hl)		;058d
	sub b			;058e
	and (hl)		;058f
	and b			;0590
	and (hl)		;0591
	cp b			;0592
	and (hl)		;0593
	ld c,b			;0594
	and (hl)		;0595
	ld e,b			;0596
	and (hl)		;0597
	ld (hl),b		;0598
	and (hl)		;0599
	sub b			;059a
	and (hl)		;059b
	and b			;059c
	and (hl)		;059d
	cp b			;059e
	and (hl)		;059f
	rra			;05a0
	ld h,b			;05a1
	ld h,c			;05a2
	ld h,027h		;05a3
	rra			;05a5
	jr nz,l05c7h		;05a6
	ld h,d			;05a8
	ld h,e			;05a9
	ld h,h			;05aa
	ld h,l			;05ab
	ld h,d			;05ac
	ld h,d			;05ad
	ld h,l			;05ae
	ld h,d			;05af
	jr nz,$+104		;05b0
	ccf			;05b2
	jr nz,l05dbh		;05b3
	daa			;05b5
	ld hl,l1f1fh		;05b6
	jr nz,l061ch		;05b9
	ld h,027h		;05bb
l05bdh:
	rra			;05bd
	jr nz,$+33		;05be
	rra			;05c0
	ld h,027h		;05c1
	rra			;05c3
	rra			;05c4
	jr nz,l0628h		;05c5
l05c7h:
	ld h,062h		;05c7
	ld h,d			;05c9
	ld h,d			;05ca
	ld h,l			;05cb
	ld h,d			;05cc
	ld h,d			;05cd
	ld h,l			;05ce
	ld h,d			;05cf
	ld h,d			;05d0
	ld h,d			;05d1
	ld h,d			;05d2
	ld h,d			;05d3
	ld h,d			;05d4
	ld h,e			;05d5
	ld h,h			;05d6
	ld h,l			;05d7
	jr nz,$+104		;05d8
	ccf			;05da
l05dbh:
	jr nz,$+98		;05db
	daa			;05dd
	ld hl,0201fh		;05de
	ccf			;05e1
	rra			;05e2
	rra			;05e3
	jr nz,$+98		;05e4
	ld hl,l1f20h		;05e6
	jr nz,l064ch		;05e9
	ld h,027h		;05eb
	rra			;05ed
	jr nz,l060fh		;05ee
	rra			;05f0
	jr nz,l0654h		;05f1
	ld h,062h		;05f3
	ld h,d			;05f5
	ld h,d			;05f6
	ld h,l			;05f7
	ld h,d			;05f8
	ld h,d			;05f9
	ld h,l			;05fa
	ld h,d			;05fb
	ld h,d			;05fc
	ld h,d			;05fd
	ld h,e			;05fe
	ld h,h			;05ff
	jr nz,l0641h		;0600
	rra			;0602
	jr nz,$+104		;0603
l0605h:
	daa			;0605
	ccf			;0606
	rra			;0607
	jr nz,l066ah		;0608
	ld hl,l1f20h		;060a
	jr nz,$+99		;060d
l060fh:
	ld h,027h		;060f
	rra			;0611
l0612h:
	jr nz,l0633h		;0612
	rra			;0614
	jr nz,l0678h		;0615
	ld h,027h		;0617
	rra			;0619
	rra			;061a
	ld h,b			;061b
l061ch:
	ld h,c			;061c
	ld h,027h		;061d
	rra			;061f
	ld h,d			;0620
	ld h,d			;0621
l0622h:
	ld h,d			;0622
	ld h,l			;0623
	ld h,d			;0624
	ld h,d			;0625
	ld h,l			;0626
	ld h,d			;0627
l0628h:
	ld h,d			;0628
	ld h,d			;0629
	ld h,e			;062a
	ld h,h			;062b
	ld h,l			;062c
	ld h,d			;062d
	ld h,d			;062e
	ld h,d			;062f
	ld h,e			;0630
	ld h,h			;0631
	ld h,l			;0632
l0633h:
	ld h,d			;0633
	jr nz,l0675h		;0634
	rra			;0636
	jr nz,l069fh		;0637
	daa			;0639
l063ah:
	ccf			;063a
	rra			;063b
	jr nz,$+98		;063c
	ld hl,06620h		;063e
l0641h:
	daa			;0641
	jr nz,l06a4h		;0642
	ld hl,06620h		;0644
	ccf			;0647
	push bc			;0648
	cpl			;0649
	jr nc,l0612h		;064a
l064ch:
	nop			;064c
	ld sp,00032h		;064d
	nop			;0650
	inc sp			;0651
	inc (hl)		;0652
	nop			;0653
l0654h:
	jp 03b3ah		;0654
	call nz,02fc5h		;0657
l065ah:
	jr nc,l0622h		;065a
	nop			;065c
	ld sp,00032h		;065d
	nop			;0660
	dec (hl)		;0661
	ld (hl),000h		;0662
	nop			;0664
	dec (hl)		;0665
	ld (hl),000h		;0666
	nop			;0668
	dec (hl)		;0669
l066ah:
	ld (hl),000h		;066a
l066ch:
	jp 03b3ah		;066c
	call nz,02fc5h		;066f
	jr nc,l063ah		;0672
	nop			;0674
l0675h:
	ld sp,00032h		;0675
l0678h:
	nop			;0678
	inc sp			;0679
	inc (hl)		;067a
	nop			;067b
	nop			;067c
	jr c,$+62		;067d
	nop			;067f
	nop			;0680
	dec (hl)		;0681
l0682h:
	ld (hl),000h		;0682
	nop			;0684
	dec (hl)		;0685
	ld (hl),000h		;0686
	nop			;0688
	dec (hl)		;0689
	ld (hl),000h		;068a
	jp 03b3ah		;068c
	call nz,02fc5h		;068f
	jr nc,l065ah		;0692
	nop			;0694
	ld sp,00032h		;0695
	nop			;0698
	jr c,l06d4h		;0699
	nop			;069b
	jp 03b3ah		;069c
l069fh:
	call nz,02fc5h		;069f
	jr nc,l066ah		;06a2
l06a4h:
	nop			;06a4
	ld sp,00032h		;06a5
	nop			;06a8
	jr c,$+62		;06a9
	nop			;06ab
	nop			;06ac
	jr c,l06e8h		;06ad
	nop			;06af
	nop			;06b0
	scf			;06b1
	jr c,l06b4h		;06b2
l06b4h:
	jp 03b3ah		;06b4
	call nz,02fc5h		;06b7
	jr nc,l0682h		;06ba
	nop			;06bc
	ld sp,00032h		;06bd
	nop			;06c0
	inc sp			;06c1
	inc (hl)		;06c2
	nop			;06c3
	nop			;06c4
	jr c,$+62		;06c5
	nop			;06c7
	nop			;06c8
	jr c,l0704h		;06c9
	nop			;06cb
	nop			;06cc
	jr c,$+62		;06cd
	nop			;06cf
	nop			;06d0
	scf			;06d1
	jr c,l06d4h		;06d2
l06d4h:
	jp 03b3ah		;06d4
	call nz,sub_07abh	;06d7
	dec b			;06da
	rlca			;06db
	ld c,09ch		;06dc
	add hl,sp		;06de
	ld (hl),e		;06df
	defb 0edh ;next byte illegal after ed	;06e0
	nop			;06e1
	inc e			;06e2
	and 016h		;06e3
	adc a,(hl)		;06e5
	adc a,0e6h		;06e6
l06e8h:
	and 0e0h		;06e8
	jr nz,l066ch		;06ea
	ret nz			;06ec
	ex de,hl		;06ed
	ex de,hl		;06ee
	set 5,e			;06ef
	inc bc			;06f1
	ld bc,l0700h+1		;06f2
	rst 10h			;06f5
	out (0d7h),a		;06f6
	rst 10h			;06f8
	add a,b			;06f9
	ret nz			;06fa
	and b			;06fb
	ret nc			;06fc
	ld a,b			;06fd
	inc a			;06fe
	sbc a,d			;06ff
l0700h:
	in a,(026h)		;0700
	ld a,04ch		;0702
l0704h:
	inc bc			;0704
	sbc a,d			;0705
	push hl			;0706
	ld c,h			;0707
	ccf			;0708
	cp a			;0709
	sbc a,0efh		;070a
	rst 30h			;070c
	or 0f7h			;070d
	add a,b			;070f
	ld c,a			;0710
	and b			;0711
	ld (hl),b		;0712
	call m,sub_18fch	;0713
	ret po			;0716
	nop			;0717
	cp 000h			;0718
	ld a,a			;071a
	cp (hl)			;071b
	dec e			;071c
	dec bc			;071d
	ld b,a			;071e
	adc a,(hl)		;071f
	inc e			;0720
	add a,08eh		;0721
	ld d,07eh		;0723
	rst 38h			;0725
	cp 000h			;0726
	ld e,l			;0728
	ld a,l			;0729
	and b			;072a
	sbc a,h			;072b
	ld a,l			;072c
	jr c,l07a0h		;072d
	jp 0f0a2h		;072f
	rlca			;0732
	ld e,h			;0733
	ld e,b			;0734
	ld bc,08343h		;0735
	add a,l			;0738
	rst 38h			;0739
	nop			;073a
	inc a			;073b
	rst 38h			;073c
	ld a,(hl)		;073d
	inc a			;073e
	jr l077dh		;073f
	ret m			;0741
	inc c			;0742
	ld b,002h		;0743
	add a,e			;0745
	pop bc			;0746
	pop bc			;0747
	and c			;0748
	ret po			;0749
	ld a,a			;074a
	nop			;074b
	nop			;074c
	ld (hl),l		;074d
	dec d			;074e
	dec d			;074f
	ld d,l			;0750
	ld b,l			;0751
	ld c,03fh		;0752
	ld h,b			;0754
	jr l075eh		;0755
	nop			;0757
	ld a,a			;0758
	nop			;0759
	add a,b			;075a
	rst 10h			;075b
	rst 10h			;075c
	ld d,a			;075d
l075eh:
	nop			;075e
	ld a,a			;075f
sub_0760h:
	nop			;0760
	dec d			;0761
	dec d			;0762
	ld d,l			;0763
	dec d			;0764
	ld d,l			;0765
	ld d,l			;0766
	push de			;0767
	push de			;0768
	add a,b			;0769
	ld (hl),06ch		;076a
	dec b			;076c
	ld h,(hl)		;076d
	cp a			;076e
	ret po			;076f
	ld a,a			;0770
	nop			;0771
	nop			;0772
	ld (hl),l		;0773
	dec d			;0774
	dec d			;0775
	push de			;0776
	ret nc			;0777
	jp nz,006d9h		;0778
	ld c,01eh		;077b
l077dh:
	ld l,018h		;077d
	nop			;077f
	ccf			;0780
	add a,b			;0781
	rst 8			;0782
	ret po			;0783
	ld (hl),e		;0784
	jr c,l0787h		;0785
l0787h:
	add a,b			;0787
	ret p			;0788
	add a,c			;0789
	call m,0f386h		;078a
	sbc a,c			;078d
	inc c			;078e
	nop			;078f
	cp 07dh			;0790
	cp b			;0792
	ret nc			;0793
	jp po,03871h		;0794
	ld a,(bc)		;0797
	xor e			;0798
	dec bc			;0799
	nop			;079a
	nop			;079b
	jr c,$-122		;079c
	pop bc			;079e
	ld b,e			;079f
l07a0h:
	add a,h			;07a0
	rst 30h			;07a1
	rst 28h			;07a2
	ld l,a			;07a3
	rst 28h			;07a4
	ld bc,l00f2h		;07a5
	cpl			;07a8
	add a,b			;07a9
	ld l,l			;07aa
sub_07abh:
	add a,b			;07ab
	rst 10h			;07ac
	ret nc			;07ad
	inc b			;07ae
	and b			;07af
	pop bc			;07b0
	ret po			;07b1
	ret m			;07b2
	cp 0ffh			;07b3
l07b5h:
	ld e,l			;07b5
	ret nc			;07b6
	jp nz,005d9h		;07b7
	ld c,01eh		;07ba
	cpl			;07bc
	jr l07fbh		;07bd
	cpl			;07bf
	nop			;07c0
	defb 0fdh,01dh,020h ;illegal sequence	;07c1
	ld l,a			;07c4
	rst 30h			;07c5
	in a,(042h)		;07c6
	cp l			;07c8
	inc h			;07c9
	inc a			;07ca
	inc a			;07cb
	ld b,d			;07cc
	inc a			;07cd
	ld (hl),b		;07ce
	ex af,af'		;07cf
	ld l,b			;07d0
	ld c,b			;07d1
	xor d			;07d2
	cp d			;07d3
	ld e,l			;07d4
	ex de,hl		;07d5
	inc a			;07d6
	ld b,d			;07d7
	inc a			;07d8
	jp 0bd24h		;07d9
	ld b,d			;07dc
	in a,(066h)		;07dd
	ld hl,(06b4dh)		;07df
	halt			;07e2
	ld a,c			;07e3
	ld h,l			;07e4
	sbc a,c			;07e5
	ret po			;07e6
	ret po			;07e7
	ret p			;07e8
	ld (hl),b		;07e9
	ld a,b			;07ea
	ld a,b			;07eb
	ld a,h			;07ec
	inc a			;07ed
	cp (hl)			;07ee
	cp (hl)			;07ef
	cp a			;07f0
	rra			;07f1
	inc bc			;07f2
	ld e,a			;07f3
	adc a,c			;07f4
	rrca			;07f5
	rst 30h			;07f6
	ld a,b			;07f7
	cp e			;07f8
	ld e,h			;07f9
	dec l			;07fa
l07fbh:
	ld d,00ah		;07fb
	dec b			;07fd
	inc bc			;07fe
	cpl			;07ff
l0800h:
	add a,c			;0800
	rlca			;0801
l0802h:
	inc bc			;0802
	rla			;0803
	or e			;0804
	inc bc			;0805
l0806h:
	ld h,b			;0806
	ld h,b			;0807
	ld (hl),b		;0808
	ld (hl),b		;0809
	ld a,b			;080a
	jr c,l0869h		;080b
	ld l,h			;080d
	ld (09c39h),sp		;080e
	ld c,007h		;0812
	dec b			;0814
	rlca			;0815
	and 0e6h		;0816
	adc a,08eh		;0818
	ld d,0e6h		;081a
	inc e			;081c
	nop			;081d
	ex de,hl		;081e
	set 5,e			;081f
	ex de,hl		;0821
	ret nz			;0822
	add a,b			;0823
	jr nz,l0806h		;0824
	rst 10h			;0826
	rst 10h			;0827
	out (0d7h),a		;0828
	rlca			;082a
	ld bc,l0301h		;082b
	in a,(09ah)		;082e
	inc a			;0830
	ld a,b			;0831
	ret nc			;0832
	and b			;0833
	ret nz			;0834
	add a,b			;0835
	ccf			;0836
	ld c,h			;0837
	inc bc			;0838
	sbc a,d			;0839
	ex (sp),hl		;083a
	ld c,h			;083b
	ld a,026h		;083c
	ld c,a			;083e
	add a,b			;083f
	rst 30h			;0840
	or 0f7h			;0841
	rst 28h			;0843
	sbc a,0bfh		;0844
	cp 000h			;0846
	ret po			;0848
	jr $-2			;0849
	call m,0a070h		;084b
	inc e			;084e
	adc a,(hl)		;084f
	ld b,a			;0850
	dec bc			;0851
	dec e			;0852
	cp (hl)			;0853
	ld a,a			;0854
	nop			;0855
	ld e,l			;0856
	nop			;0857
	cp 0ffh			;0858
	ld a,(hl)		;085a
	ld d,08eh		;085b
	add a,0a2h		;085d
	jp 03871h		;085f
	ld a,l			;0862
	sbc a,h			;0863
	and b			;0864
	ld a,l			;0865
	add a,l			;0866
	add a,e			;0867
	ld b,e			;0868
l0869h:
	ld bc,05c58h		;0869
	rlca			;086c
	ret p			;086d
	inc a			;086e
	jr $+62			;086f
	ld a,(hl)		;0871
	rst 38h			;0872
	inc a			;0873
	nop			;0874
	rst 38h			;0875
	and c			;0876
	pop bc			;0877
	pop bc			;0878
	add a,e			;0879
	ld (bc),a		;087a
	ld b,00ch		;087b
	ret m			;087d
	ld d,l			;087e
	dec d			;087f
	dec d			;0880
	ld (hl),l		;0881
	nop			;0882
	nop			;0883
	ld a,a			;0884
	ret po			;0885
	ld a,a			;0886
	nop			;0887
	rlca			;0888
	jr l08ebh		;0889
	ccf			;088b
	ld c,045h		;088c
	nop			;088e
	ld a,a			;088f
	nop			;0890
	ld d,a			;0891
	rst 10h			;0892
	rst 10h			;0893
	add a,b			;0894
	nop			;0895
	push de			;0896
	push de			;0897
	ld d,l			;0898
	ld d,l			;0899
	dec d			;089a
	ld d,l			;089b
	dec d			;089c
	dec d			;089d
	dec b			;089e
	ld h,(hl)		;089f
	rst 38h			;08a0
	ld l,h			;08a1
	ld (hl),080h		;08a2
	push de			;08a4
	dec d			;08a5
	dec d			;08a6
	ld (hl),l		;08a7
	nop			;08a8
	nop			;08a9
	ld a,a			;08aa
	ret po			;08ab
	jr l08dch		;08ac
	ld e,00eh		;08ae
	ld b,0d9h		;08b0
	jp nz,l00d0h		;08b2
	jr c,l092ah		;08b5
	ret po			;08b7
	rst 8			;08b8
	add a,b			;08b9
	ccf			;08ba
	nop			;08bb
	inc c			;08bc
	sbc a,c			;08bd
	di			;08be
	add a,(hl)		;08bf
	call m,0f081h		;08c0
	add a,b			;08c3
	jr c,l0937h		;08c4
	jp po,0b8d0h		;08c6
	ld a,l			;08c9
	cp 000h			;08ca
	pop bc			;08cc
	add a,h			;08cd
	jr c,l08d0h		;08ce
l08d0h:
	nop			;08d0
	dec bc			;08d1
	xor e			;08d2
	ld a,(bc)		;08d3
	jp p,0ef01h		;08d4
	ld l,a			;08d7
	rst 28h			;08d8
	rst 30h			;08d9
	add a,h			;08da
	ld b,e			;08db
l08dch:
	nop			;08dc
	ret nc			;08dd
	rst 10h			;08de
	add a,b			;08df
	ld l,l			;08e0
	add a,b			;08e1
	cpl			;08e2
	nop			;08e3
	ld e,l			;08e4
	nop			;08e5
	cp 0f8h			;08e6
	ret po			;08e8
	nop			;08e9
	and b			;08ea
l08ebh:
	nop			;08eb
	jr l091dh		;08ec
	ld e,00eh		;08ee
	dec b			;08f0
	exx			;08f1
	jp nz,0f7d0h		;08f2
	ld l,a			;08f5
	jr nz,l0915h		;08f6
	defb 0fdh,000h,02fh ;illegal sequence	;08f8
	inc a			;08fb
	inc a			;08fc
	ld b,d			;08fd
	inc a			;08fe
	inc a			;08ff
	inc h			;0900
l0901h:
	cp l			;0901
l0902h:
	ld b,d			;0902
	in a,(0ebh)		;0903
	ld e,l			;0905
	cp d			;0906
l0907h:
	xor d			;0907
	ld c,b			;0908
l0909h:
	ld l,b			;0909
	ex af,af'		;090a
l090bh:
	ld (hl),b		;090b
	in a,(042h)		;090c
l090eh:
	cp l			;090e
l090fh:
	inc h			;090f
	jp 0423ch		;0910
	inc a			;0913
	sbc a,c			;0914
l0915h:
	ld h,l			;0915
	ld a,c			;0916
	halt			;0917
	ld l,e			;0918
	ld c,l			;0919
	ld hl,(03c66h)		;091a
l091dh:
	ld a,h			;091d
	ld a,b			;091e
	ld a,b			;091f
	add a,l			;0920
	ld (hl),b		;0921
	ret p			;0922
	ret po			;0923
	ret po			;0924
	rrca			;0925
	inc bc			;0926
	ld e,a			;0927
	adc a,l			;0928
	rra			;0929
l092ah:
	cp a			;092a
	cp (hl)			;092b
	cp (hl)			;092c
	dec b			;092d
	ld a,(bc)		;092e
	ld d,02dh		;092f
	ld e,h			;0931
	cp e			;0932
	ld a,b			;0933
	rst 30h			;0934
	inc bc			;0935
	inc bc			;0936
l0937h:
	rla			;0937
	add a,c			;0938
	rlca			;0939
	inc bc			;093a
	cpl			;093b
	adc a,b			;093c
	ld l,h			;093d
	ld e,h			;093e
	jr c,$+122		;093f
	ld (hl),b		;0941
	ld (hl),b		;0942
	ld h,b			;0943
	ld h,b			;0944
	nop			;0945
	add a,e			;0946
	add a,b			;0947
	ld (hl),06ch		;0948
	dec b			;094a
	nop			;094b
	add a,e			;094c
	add a,b			;094d
	ld (hl),06ch		;094e
	dec b			;0950
	ld b,083h		;0951
	add a,b			;0953
	ld (hl),06ch		;0954
	dec b			;0956
	ld h,(hl)		;0957
	add a,c			;0958
	rst 38h			;0959
	dec b			;095a
	nop			;095b
	add a,l			;095c
	ret nz			;095d
	ret p			;095e
	rlca			;095f
	ret z			;0960
	rlca			;0961
	dec bc			;0962
l0963h:
	nop			;0963
	adc a,c			;0964
	inc bc			;0965
	rrca			;0966
	nop			;0967
	nop			;0968
	djnz l096bh		;0969
l096bh:
	inc b			;096b
	ld (bc),a		;096c
	ld bc,sub_0005h+1	;096d
	add a,e			;0970
	inc bc			;0971
	inc c			;0972
	jr nc,l097ah		;0973
	ld (bc),a		;0975
	add a,e			;0976
	rlca			;0977
	ld (bc),a		;0978
	rrca			;0979
l097ah:
	dec b			;097a
	nop			;097b
l097ch:
	adc a,c			;097c
	rlca			;097d
	add a,b			;097e
	jr c,l0981h		;097f
l0981h:
	ld bc,sub_0400h+2	;0981
	nop			;0984
	djnz l098eh		;0985
l0987h:
	nop			;0987
	adc a,e			;0988
	jr l0a05h		;0989
	dec de			;098b
	nop			;098c
	nop			;098d
l098eh:
	ret p			;098e
	nop			;098f
	inc bc			;0990
	rrca			;0991
	ld a,0fdh		;0992
	dec b			;0994
	nop			;0995
	sub l			;0996
	call c,006ddh		;0997
	add a,b			;099a
	ret nz			;099b
	ld h,b			;099c
	jr nc,l09b7h		;099d
	inc bc			;099f
	inc c			;09a0
	jr nc,l0963h		;09a1
	nop			;09a3
	add a,b			;09a4
	ret nz			;09a5
	ld h,b			;09a6
	ld h,b			;09a7
	sbc a,d			;09a8
	in a,(002h)		;09a9
	nop			;09ab
	ld b,002h		;09ac
	add a,d			;09ae
	ret nz			;09af
	add a,b			;09b0
	inc bc			;09b1
	nop			;09b2
	add a,a			;09b3
	ld l,(hl)		;09b4
	xor 0eeh		;09b5
l09b7h:
	ld bc,l0202h		;09b7
	nop			;09ba
	inc bc			;09bb
	ld bc,sub_0005h+2	;09bc
	ld (bc),a		;09bf
	ld b,b			;09c0
	inc bc			;09c1
	dec bc			;09c2
	add a,c			;09c3
	ld bc,l0504h		;09c4
	adc a,b			;09c7
	ld (bc),a		;09c8
	inc b			;09c9
	ex af,af'		;09ca
	jr nc,$+98		;09cb
	dec e			;09cd
	ld e,l			;09ce
	ld e,l			;09cf
	rlca			;09d0
	nop			;09d1
	add a,c			;09d2
	add a,b			;09d3
	dec b			;09d4
	nop			;09d5
	add a,e			;09d6
	ld l,h			;09d7
	ld (hl),080h		;09d8
	dec b			;09da
	ld b,083h		;09db
	ld l,h			;09dd
	ld (hl),080h		;09de
	dec b			;09e0
	ld h,(hl)		;09e1
	add a,l			;09e2
	ld l,h			;09e3
	ld (hl),080h		;09e4
	ret p			;09e6
	ret nz			;09e7
	dec bc			;09e8
	nop			;09e9
	add a,l			;09ea
	rlca			;09eb
	ret z			;09ec
	rlca			;09ed
	rrca			;09ee
	inc bc			;09ef
	rlca			;09f0
	nop			;09f1
	add a,e			;09f2
	ld bc,sub_0400h+2	;09f3
	inc b			;09f6
	djnz l097ch		;09f7
	jr nc,l0a07h		;09f9
	inc bc			;09fb
	dec b			;09fc
	nop			;09fd
	add a,e			;09fe
	rrca			;09ff
l0a00h:
	ld (bc),a		;0a00
	rlca			;0a01
	dec b			;0a02
	ld (bc),a		;0a03
	add a,e			;0a04
l0a05h:
	jr c,l0987h		;0a05
l0a07h:
	rlca			;0a07
	rlca			;0a08
	nop			;0a09
	adc a,c			;0a0a
	djnz l0a0dh		;0a0b
l0a0dh:
	inc b			;0a0d
	ld (bc),a		;0a0e
	ld bc,l1b00h		;0a0f
	ld a,d			;0a12
	jr l0a1ah		;0a13
	nop			;0a15
	add a,h			;0a16
	defb 0fdh,03eh,00fh ;illegal sequence	;0a17
l0a1ah:
	inc bc			;0a1a
	inc b			;0a1b
	nop			;0a1c
	add a,e			;0a1d
	ld b,0ddh		;0a1e
	call c,sub_0005h	;0a20
	sub b			;0a23
	jr nc,l0a32h		;0a24
	inc bc			;0a26
	jr $+50			;0a27
	ld h,b			;0a29
	ret nz			;0a2a
	add a,b			;0a2b
	in a,(09ah)		;0a2c
	ld h,b			;0a2e
	ld h,b			;0a2f
	ret nz			;0a30
	add a,b			;0a31
l0a32h:
	nop			;0a32
	ret nz			;0a33
	ld b,002h		;0a34
	add a,l			;0a36
	nop			;0a37
	ld (bc),a		;0a38
	xor 0eeh		;0a39
	ld l,(hl)		;0a3b
	inc bc			;0a3c
	nop			;0a3d
	add a,e			;0a3e
	add a,b			;0a3f
	ret nz			;0a40
	nop			;0a41
	inc bc			;0a42
	ld bc,l0086h		;0a43
	ld (bc),a		;0a46
	ld (bc),a		;0a47
	ld bc,04040h		;0a48
	rlca			;0a4b
	nop			;0a4c
	inc bc			;0a4d
	dec b			;0a4e
	add a,c			;0a4f
	ld bc,l0b03h		;0a50
	ld (bc),a		;0a53
	ld e,l			;0a54
	add a,a			;0a55
	dec e			;0a56
	ld h,b			;0a57
	jr nc,l0a62h		;0a58
	inc b			;0a5a
	ld (bc),a		;0a5b
	add a,b			;0a5c
	rlca			;0a5d
	nop			;0a5e
	nop			;0a5f
	sbc a,b			;0a60
	ret p			;0a61
l0a62h:
	rlca			;0a62
	ld e,h			;0a63
	ld e,b			;0a64
	ld bc,08343h		;0a65
	add a,l			;0a68
	nop			;0a69
	nop			;0a6a
l0a6bh:
	inc a			;0a6b
	nop			;0a6c
	ld a,(hl)		;0a6d
	inc a			;0a6e
	jr l0aadh		;0a6f
	ret m			;0a71
	inc c			;0a72
	ld b,002h		;0a73
	add a,e			;0a75
	pop bc			;0a76
	pop bc			;0a77
	and c			;0a78
	nop			;0a79
	sbc a,b			;0a7a
	add a,l			;0a7b
	add a,e			;0a7c
	ld b,e			;0a7d
	ld bc,05c58h		;0a7e
	rlca			;0a81
	ret p			;0a82
	inc a			;0a83
	jr $+62			;0a84
	ld a,(hl)		;0a86
	nop			;0a87
	inc a			;0a88
	nop			;0a89
	nop			;0a8a
	and c			;0a8b
	pop bc			;0a8c
	pop bc			;0a8d
	add a,e			;0a8e
	ld (bc),a		;0a8f
	ld b,00ch		;0a90
	ret m			;0a92
	nop			;0a93
	adc a,b			;0a94
	ld (hl),a		;0a95
	adc a,b			;0a96
	nop			;0a97
	ret m			;0a98
	adc a,a			;0a99
	nop			;0a9a
	xor 0eeh		;0a9b
	nop			;0a9d
	adc a,b			;0a9e
	ld h,b			;0a9f
	ld l,d			;0aa0
	nop			;0aa1
	ld (hl),l		;0aa2
	ld (hl),l		;0aa3
	nop			;0aa4
	and (hl)		;0aa5
	ld h,b			;0aa6
	nop			;0aa7
	add a,a			;0aa8
	jr nc,l0a6bh		;0aa9
	ld b,b			;0aab
	ld d,b			;0aac
l0aadh:
	ret po			;0aad
	ret po			;0aae
	ld d,b			;0aaf
	inc bc			;0ab0
	ld b,b			;0ab1
	sub (hl)		;0ab2
	ld d,b			;0ab3
	ld b,b			;0ab4
	ld b,b			;0ab5
	ld d,b			;0ab6
	ld (hl),b		;0ab7
	ret p			;0ab8
	ld b,b			;0ab9
	ld b,b			;0aba
	jr nz,l0aedh		;0abb
	call po,0f5f4h		;0abd
	call po,0e0e0h		;0ac0
	jr nz,l0af5h		;0ac3
	call po,0f5f5h		;0ac5
	call po,0e004h		;0ac8
	sub d			;0acb
	ret p			;0acc
	ld d,b			;0acd
	ret po			;0ace
	call p,05040h		;0acf
	ret po			;0ad2
	halt			;0ad3
	ret pe			;0ad4
	or 0e0h			;0ad5
	ld d,b			;0ad7
	ld b,b			;0ad8
	ld b,b			;0ad9
	ld d,b			;0ada
	ld (hl),b		;0adb
	ret po			;0adc
	ret p			;0add
	inc bc			;0ade
	ld b,b			;0adf
	ld (bc),a		;0ae0
	ld (hl),b		;0ae1
	add a,l			;0ae2
	rst 20h			;0ae3
	push hl			;0ae4
	call p,05050h		;0ae5
	inc bc			;0ae8
	ld b,b			;0ae9
	ld (bc),a		;0aea
	ld d,b			;0aeb
	inc bc			;0aec
l0aedh:
	ld b,b			;0aed
	sbc a,c			;0aee
	ret po			;0aef
	ld d,b			;0af0
	ld b,b			;0af1
	push hl			;0af2
	ld d,b			;0af3
	ld (hl),b		;0af4
l0af5h:
	ld (hl),b		;0af5
	ret nc			;0af6
	ret po			;0af7
	ld d,b			;0af8
	ld d,l			;0af9
	ret po			;0afa
	ld (hl),b		;0afb
	ld b,b			;0afc
	ld b,b			;0afd
	push hl			;0afe
	ret po			;0aff
	ld d,b			;0b00
	ld b,b			;0b01
	ld d,b			;0b02
l0b03h:
	ld h,b			;0b03
	ld h,b			;0b04
	add a,b			;0b05
	sub b			;0b06
	xor 003h		;0b07
	ld h,b			;0b09
	add a,h			;0b0a
	add a,(hl)		;0b0b
	sbc a,b			;0b0c
	ld sp,hl		;0b0d
	ld sp,hl		;0b0e
	inc b			;0b0f
	ret po			;0b10
	ld (bc),a		;0b11
	ld h,b			;0b12
	sub d			;0b13
	add a,b			;0b14
	sub b			;0b15
	ld (hl),l		;0b16
	ld (hl),b		;0b17
	ld (hl),b		;0b18
	ld d,b			;0b19
	ld b,b			;0b1a
	ld d,b			;0b1b
	ld (hl),b		;0b1c
	ret p			;0b1d
	ld b,b			;0b1e
	ld d,b			;0b1f
l0b20h:
	ld d,b			;0b20
	ld (hl),l		;0b21
	ld (hl),h		;0b22
	ld (hl),h		;0b23
	ld (hl),b		;0b24
	ld d,b			;0b25
	inc bc			;0b26
	ld b,b			;0b27
sub_0b28h:
	add a,l			;0b28
	ld d,b			;0b29
	ld (hl),b		;0b2a
	ld (hl),b		;0b2b
	ld h,b			;0b2c
	ld sp,hl		;0b2d
	ex af,af'		;0b2e
	ret p			;0b2f
	adc a,c			;0b30
	ld b,b			;0b31
	ld d,b			;0b32
	ld b,b			;0b33
	nop			;0b34
	ld d,b			;0b35
	ld (hl),b		;0b36
	ret po			;0b37
l0b38h:
	ret p			;0b38
	ld (hl),l		;0b39
	inc bc			;0b3a
	ld (hl),b		;0b3b
	sbc a,e			;0b3c
	ld b,b			;0b3d
	ld d,b			;0b3e
	ld (hl),b		;0b3f
	ret p			;0b40
	ld b,b			;0b41
	ld h,l			;0b42
	ld b,b			;0b43
	ld h,b			;0b44
	ld b,b			;0b45
	ld d,b			;0b46
	ld (hl),b		;0b47
l0b48h:
	ld b,b			;0b48
	sub b			;0b49
	sub b			;0b4a
	ld b,b			;0b4b
	add a,b			;0b4c
	ld b,b			;0b4d
	ld h,b			;0b4e
	ld b,b			;0b4f
sub_0b50h:
	ld b,b			;0b50
	ld d,b			;0b51
	sub h			;0b52
	ld d,b			;0b53
	add a,b			;0b54
	ld d,b			;0b55
	ld h,b			;0b56
	ld d,b			;0b57
	inc b			;0b58
	ld b,b			;0b59
	ld (bc),a		;0b5a
	ld d,b			;0b5b
	inc bc			;0b5c
	ld b,b			;0b5d
	add a,d			;0b5e
	ld h,b			;0b5f
sub_0b60h:
	sub b			;0b60
	inc bc			;0b61
	ld h,b			;0b62
	add a,l			;0b63
	ld b,b			;0b64
	ld (hl),b		;0b65
	ld b,b			;0b66
	ld (hl),h		;0b67
l0b68h:
	ld (hl),h		;0b68
	inc bc			;0b69
	ld d,b			;0b6a
	add a,c			;0b6b
	ld (hl),b		;0b6c
	inc bc			;0b6d
	ld b,b			;0b6e
	and b			;0b6f
	ret po			;0b70
	ld d,b			;0b71
	ld b,b			;0b72
	ld d,b			;0b73
	ld (hl),b		;0b74
	ld d,b			;0b75
	nop			;0b76
	nop			;0b77
l0b78h:
	or b			;0b78
	nop			;0b79
	ld b,b			;0b7a
	ld d,b			;0b7b
	ld (hl),b		;0b7c
	nop			;0b7d
	ret nc			;0b7e
	ld b,b			;0b7f
	ld h,l			;0b80
	ld b,b			;0b81
	ret po			;0b82
	ld b,b			;0b83
	ld d,b			;0b84
	ld (hl),b		;0b85
	ld b,b			;0b86
	ld b,b			;0b87
	ld d,b			;0b88
	ld d,b			;0b89
	add a,b			;0b8a
	ld b,b			;0b8b
	ld d,b			;0b8c
	ld d,b			;0b8d
	ld (hl),b		;0b8e
	call p,0f003h		;0b8f
	sub h			;0b92
	ld (hl),l		;0b93
	ld d,b			;0b94
	ld b,b			;0b95
	ld b,b			;0b96
	ld d,b			;0b97
	ld b,b			;0b98
	ld h,b			;0b99
	add a,b			;0b9a
	sub b			;0b9b
	and b			;0b9c
	or b			;0b9d
	ret p			;0b9e
	ld d,b			;0b9f
	ret p			;0ba0
	ld d,b			;0ba1
	rst 20h			;0ba2
	ret p			;0ba3
	ret po			;0ba4
	ret po			;0ba5
	call p,0f007h		;0ba6
	inc de			;0ba9
	ret po			;0baa
	inc bc			;0bab
	ret p			;0bac
	ld (bc),a		;0bad
	ret po			;0bae
l0bafh:
	add a,c			;0baf
	ret p			;0bb0
	ex af,af'		;0bb1
	ret po			;0bb2
	ex af,af'		;0bb3
	ret p			;0bb4
	and h			;0bb5
	ld b,b			;0bb6
	ld d,b			;0bb7
	ret po			;0bb8
	ret po			;0bb9
	ld d,b			;0bba
	ld b,b			;0bbb
	ret nz			;0bbc
	jr nc,l0bafh		;0bbd
	ld (hl),b		;0bbf
	ld d,b			;0bc0
	ld b,b			;0bc1
	ld b,b			;0bc2
	ld d,b			;0bc3
	ld b,b			;0bc4
	ld b,b			;0bc5
	call po,0f4f5h		;0bc6
	call po,02030h		;0bc9
	ld b,b			;0bcc
	ld b,b			;0bcd
	call po,0f5f5h		;0bce
	call po,02030h		;0bd1
	ret po			;0bd4
	ret po			;0bd5
	call p,050e0h		;0bd6
	ret p			;0bd9
	inc b			;0bda
	ret po			;0bdb
	add a,a			;0bdc
	ld d,b			;0bdd
	ret po			;0bde
	or 0e8h			;0bdf
	halt			;0be1
	ret po			;0be2
	ld d,b			;0be3
	inc bc			;0be4
	ld b,b			;0be5
	adc a,l			;0be6
	ret p			;0be7
	ret po			;0be8
	ld (hl),b		;0be9
	ld d,b			;0bea
	ld b,b			;0beb
	ld b,b			;0bec
	ld d,b			;0bed
	ret p			;0bee
	call p,0e7e5h		;0bef
	ld (hl),b		;0bf2
	ld (hl),b		;0bf3
	inc b			;0bf4
	ld b,b			;0bf5
	ld (bc),a		;0bf6
	ld d,b			;0bf7
	inc bc			;0bf8
	ld b,b			;0bf9
	sbc a,h			;0bfa
	ret nc			;0bfb
	ld (hl),b		;0bfc
	ld (hl),b		;0bfd
	ld d,b			;0bfe
	push hl			;0bff
l0c00h:
	ld b,b			;0c00
	ld d,b			;0c01
	ret po			;0c02
	push hl			;0c03
	ld b,b			;0c04
	ld b,b			;0c05
	ld (hl),b		;0c06
	ret po			;0c07
	ld d,l			;0c08
	ld d,b			;0c09
	ret po			;0c0a
	sub b			;0c0b
	add a,b			;0c0c
	ld h,b			;0c0d
	ld h,b			;0c0e
	ld d,b			;0c0f
	ld b,b			;0c10
	ld d,b			;0c11
	ret po			;0c12
	ld sp,hl		;0c13
	ld sp,hl		;0c14
	sbc a,b			;0c15
	add a,(hl)		;0c16
	inc bc			;0c17
	ld h,b			;0c18
	add a,l			;0c19
	xor 090h		;0c1a
	add a,b			;0c1c
	ld h,b			;0c1d
	ld h,b			;0c1e
	inc b			;0c1f
	ret po			;0c20
	add a,e			;0c21
	ret p			;0c22
	ld (hl),b		;0c23
	ld d,b			;0c24
	inc bc			;0c25
	ld b,b			;0c26
	adc a,a			;0c27
	ld (hl),b		;0c28
	ld (hl),l		;0c29
	ld d,b			;0c2a
	ld d,b			;0c2b
	ld (hl),h		;0c2c
	ld (hl),h		;0c2d
	ld (hl),l		;0c2e
	ld d,b			;0c2f
	ld d,b			;0c30
	ld b,b			;0c31
	ld sp,hl		;0c32
	ld h,b			;0c33
	ld h,b			;0c34
	ld (hl),b		;0c35
	ld d,b			;0c36
	inc bc			;0c37
	ld b,b			;0c38
	add hl,bc		;0c39
	ret p			;0c3a
	adc a,d			;0c3b
	ret po			;0c3c
	ld (hl),b		;0c3d
	ld d,b			;0c3e
	nop			;0c3f
	ld b,b			;0c40
	ld d,b			;0c41
	ld b,b			;0c42
	ret p			;0c43
	ld (hl),b		;0c44
	ld d,b			;0c45
	inc bc			;0c46
	ld b,b			;0c47
	adc a,c			;0c48
	ld (hl),b		;0c49
	ld (hl),l		;0c4a
	ld b,b			;0c4b
	ld (hl),b		;0c4c
	ld d,b			;0c4d
	ld b,b			;0c4e
	ld h,b			;0c4f
	ld b,b			;0c50
	ld h,l			;0c51
	inc bc			;0c52
	ld b,b			;0c53
	adc a,(hl)		;0c54
	ld h,b			;0c55
	ld b,b			;0c56
	add a,b			;0c57
	ld b,b			;0c58
	sub b			;0c59
	sub b			;0c5a
	ld b,b			;0c5b
	ld d,b			;0c5c
	ld h,b			;0c5d
	ld d,b			;0c5e
	add a,b			;0c5f
	ld d,b			;0c60
	sub h			;0c61
	ld d,b			;0c62
	inc bc			;0c63
	ld b,b			;0c64
	ld (bc),a		;0c65
	ld d,b			;0c66
	inc b			;0c67
sub_0c68h:
	ld b,b			;0c68
	add a,d			;0c69
	ld (hl),b		;0c6a
	ld b,b			;0c6b
	inc bc			;0c6c
	ld h,b			;0c6d
	add a,l			;0c6e
	sub b			;0c6f
	ld h,b			;0c70
	ld b,b			;0c71
	ld b,b			;0c72
	ld (hl),b		;0c73
	inc bc			;0c74
	ld d,b			;0c75
	ld (bc),a		;0c76
	ld (hl),h		;0c77
	sbc a,a			;0c78
	nop			;0c79
	ld d,b			;0c7a
	ld (hl),b		;0c7b
	ld d,b			;0c7c
	ld b,b			;0c7d
	ld d,b			;0c7e
	ret po			;0c7f
	ret po			;0c80
	ret nc			;0c81
	ret nc			;0c82
	ld (hl),b		;0c83
	ld d,b			;0c84
	ld b,b			;0c85
	ld b,b			;0c86
	or b			;0c87
	ld b,b			;0c88
	ld b,b			;0c89
	ld (hl),b		;0c8a
	ld d,b			;0c8b
	ld b,b			;0c8c
	ret po			;0c8d
	ld b,b			;0c8e
	ld h,l			;0c8f
	ld b,b			;0c90
	ld (hl),b		;0c91
	ld d,b			;0c92
	ld d,b			;0c93
	ld b,b			;0c94
	add a,b			;0c95
l0c96h:
	add a,b			;0c96
	ld d,b			;0c97
	inc bc			;0c98
	ld b,b			;0c99
	add a,d			;0c9a
	ld d,b			;0c9b
	ld (hl),l		;0c9c
	inc bc			;0c9d
	ret p			;0c9e
	sub d			;0c9f
	call p,0b0f0h		;0ca0
	and b			;0ca3
	sub b			;0ca4
	add a,b			;0ca5
	ld h,b			;0ca6
	ld b,b			;0ca7
	ld d,b			;0ca8
	call p,0e0e0h		;0ca9
	ret p			;0cac
	rst 20h			;0cad
	ld d,b			;0cae
	ret p			;0caf
	ld d,b			;0cb0
	ret po			;0cb1
	rlca			;0cb2
	ret p			;0cb3
	djnz l0c96h		;0cb4
	add a,e			;0cb6
	ret p			;0cb7
	ret po			;0cb8
	ret po			;0cb9
	inc bc			;0cba
	ret p			;0cbb
	ld a,(bc)		;0cbc
	ret po			;0cbd
	ex af,af'		;0cbe
	ret p			;0cbf
	nop			;0cc0
	add a,d			;0cc1
	ld b,b			;0cc2
	ld d,b			;0cc3
	rlca			;0cc4
	ld b,b			;0cc5
	sub b			;0cc6
	ld d,b			;0cc7
	ld b,b			;0cc8
	nop			;0cc9
	ld h,b			;0cca
	sub b			;0ccb
	ret po			;0ccc
	ret p			;0ccd
	ld b,b			;0cce
	ld d,b			;0ccf
	ld b,b			;0cd0
	nop			;0cd1
	ld h,b			;0cd2
	sub b			;0cd3
	ret po			;0cd4
	ret p			;0cd5
	nop			;0cd6
	ld b,070h		;0cd7
	ld (bc),a		;0cd9
	ld b,b			;0cda
	add a,c			;0cdb
	ld (hl),l		;0cdc
	add hl,bc		;0cdd
	ld b,b			;0cde
	inc b			;0cdf
	ld (hl),b		;0ce0
	add a,c			;0ce1
	ld b,b			;0ce2
	inc b			;0ce3
	ret nc			;0ce4
	ld (bc),a		;0ce5
	ld h,b			;0ce6
	inc b			;0ce7
	ld d,b			;0ce8
	inc b			;0ce9
	jr nz,l0ceeh		;0cea
	ld b,b			;0cec
	inc bc			;0ced
l0ceeh:
	ret po			;0cee
	add a,l			;0cef
	ret p			;0cf0
	nop			;0cf1
	ret po			;0cf2
	ld d,b			;0cf3
	ret po			;0cf4
	ld b,020h		;0cf5
	inc bc			;0cf7
	ld (hl),b		;0cf8
	add a,c			;0cf9
	ld d,b			;0cfa
	inc bc			;0cfb
	ld b,b			;0cfc
	dec b			;0cfd
	ld d,b			;0cfe
	inc b			;0cff
	ret po			;0d00
	add a,c			;0d01
	ret p			;0d02
	dec b			;0d03
	ret po			;0d04
	ld b,040h		;0d05
	inc b			;0d07
l0d08h:
	ret p			;0d08
	ld (bc),a		;0d09
	ret po			;0d0a
	dec b			;0d0b
	ret p			;0d0c
	add a,c			;0d0d
	jr nz,l0d14h		;0d0e
	ld b,b			;0d10
	ld (bc),a		;0d11
	ret po			;0d12
	add a,h			;0d13
l0d14h:
	ret p			;0d14
	ld d,b			;0d15
	ret po			;0d16
	call p,0f008h		;0d17
	add a,c			;0d1a
	jr nc,l0d21h		;0d1b
	jr nz,$-123		;0d1d
	ld d,b			;0d1f
	ld (hl),b		;0d20
l0d21h:
	ld b,b			;0d21
	ex af,af'		;0d22
	ret po			;0d23
	ex af,af'		;0d24
	ret p			;0d25
	rlca			;0d26
	ret po			;0d27
	add a,d			;0d28
	nop			;0d29
	add a,b			;0d2a
	dec b			;0d2b
	ld b,b			;0d2c
	add a,c			;0d2d
	ld (hl),b		;0d2e
	inc b			;0d2f
	ret po			;0d30
	dec b			;0d31
	or b			;0d32
	ld b,040h		;0d33
	sub e			;0d35
	ld d,b			;0d36
	ld b,b			;0d37
	ret p			;0d38
	ret po			;0d39
	sub b			;0d3a
	ld h,b			;0d3b
	nop			;0d3c
	ld b,b			;0d3d
	ld d,b			;0d3e
	ld b,b			;0d3f
	ret p			;0d40
	ret po			;0d41
	sub b			;0d42
	ld h,b			;0d43
	nop			;0d44
	ld b,b			;0d45
	ld d,b			;0d46
	ld b,b			;0d47
	ld b,b			;0d48
	rlca			;0d49
	ld (hl),b		;0d4a
	ld b,040h		;0d4b
	add a,e			;0d4d
	ld (hl),l		;0d4e
	ld b,b			;0d4f
	ld b,b			;0d50
	dec b			;0d51
	ld (hl),b		;0d52
	inc b			;0d53
	ld d,b			;0d54
	ld (bc),a		;0d55
	ld h,b			;0d56
	add a,(hl)		;0d57
	nop			;0d58
	ret nc			;0d59
	nop			;0d5a
	nop			;0d5b
	ld b,b			;0d5c
	ld b,b			;0d5d
	ld b,020h		;0d5e
	add a,l			;0d60
	ret po			;0d61
	ld d,b			;0d62
	ret po			;0d63
	nop			;0d64
	ret p			;0d65
	inc bc			;0d66
	ret po			;0d67
	ld (bc),a		;0d68
	ld (hl),b		;0d69
	ld b,020h		;0d6a
	inc b			;0d6c
	ld d,b			;0d6d
	ld (bc),a		;0d6e
	ld b,b			;0d6f
	ld (bc),a		;0d70
	ld d,b			;0d71
	add a,d			;0d72
	ret po			;0d73
	ret p			;0d74
	ld b,0e0h		;0d75
	ex af,af'		;0d77
	ld b,b			;0d78
	ld (bc),a		;0d79
	ret po			;0d7a
	inc b			;0d7b
	ret p			;0d7c
	inc b			;0d7d
	ld b,b			;0d7e
	add a,c			;0d7f
	jr nz,l0d87h		;0d80
	ret p			;0d82
	add a,h			;0d83
	call p,050e0h		;0d84
l0d87h:
	ret p			;0d87
	inc bc			;0d88
	ret po			;0d89
	add a,c			;0d8a
	ld b,b			;0d8b
	ex af,af'		;0d8c
	ret p			;0d8d
	add a,d			;0d8e
	ld b,b			;0d8f
	ld (hl),b		;0d90
	inc b			;0d91
	ld d,b			;0d92
	add a,d			;0d93
	jr nz,l0dc6h		;0d94
	ex af,af'		;0d96
	ret po			;0d97
	ex af,af'		;0d98
	ret p			;0d99
	add hl,bc		;0d9a
	ret po			;0d9b
	add a,c			;0d9c
	ld (hl),b		;0d9d
	dec b			;0d9e
	ld b,b			;0d9f
	add a,d			;0da0
	add a,b			;0da1
	or b			;0da2
	rlca			;0da3
	nop			;0da4
	nop			;0da5
	sub b			;0da6
	ret po			;0da7
	ld d,b			;0da8
	ld b,b			;0da9
	ld d,b			;0daa
	ld b,b			;0dab
	ld b,b			;0dac
	ld d,b			;0dad
	ld (hl),b		;0dae
	xor 000h		;0daf
	ld b,b			;0db1
	ld b,h			;0db2
	ld d,h			;0db3
	ld (hl),l		;0db4
	rst 30h			;0db5
	rst 30h			;0db6
	inc b			;0db7
	ret po			;0db8
	ld (bc),a		;0db9
	ld b,b			;0dba
	add a,d			;0dbb
	ld d,b			;0dbc
	ld (hl),b		;0dbd
	nop			;0dbe
	sub h			;0dbf
	ld (hl),b		;0dc0
	ld d,b			;0dc1
	ld b,b			;0dc2
	ld b,b			;0dc3
	ld d,b			;0dc4
	ld b,b			;0dc5
l0dc6h:
	ld d,b			;0dc6
	ret po			;0dc7
	rst 30h			;0dc8
	rst 30h			;0dc9
	ld (hl),l		;0dca
	ld d,h			;0dcb
	ld d,l			;0dcc
	ld d,b			;0dcd
	nop			;0dce
l0dcfh:
	xor 070h		;0dcf
	ld d,b			;0dd1
	ld b,b			;0dd2
	ld b,b			;0dd3
	inc b			;0dd4
	ret po			;0dd5
	nop			;0dd6
	add a,e			;0dd7
	ld a,a			;0dd8
	ccf			;0dd9
	ld a,a			;0dda
	inc bc			;0ddb
	nop			;0ddc
	add a,d			;0ddd
	ld a,a			;0dde
	ccf			;0ddf
	inc bc			;0de0
	ei			;0de1
	inc bc			;0de2
	nop			;0de3
	ld (bc),a		;0de4
	ei			;0de5
	add a,c			;0de6
	ld a,a			;0de7
	inc bc			;0de8
	nop			;0de9
	add a,l			;0dea
	ld a,a			;0deb
	ccf			;0dec
	ld a,a			;0ded
	nop			;0dee
	ei			;0def
	inc bc			;0df0
	nop			;0df1
	inc bc			;0df2
	ei			;0df3
	add a,h			;0df4
	nop			;0df5
	ld a,a			;0df6
	rst 38h			;0df7
	ld a,a			;0df8
	dec b			;0df9
	nop			;0dfa
	inc bc			;0dfb
	push af			;0dfc
	ex af,af'		;0dfd
sub_0dfeh:
	nop			;0dfe
	add a,e			;0dff
	ld a,a			;0e00
	and b			;0e01
l0e02h:
	ld a,a			;0e02
	dec b			;0e03
	nop			;0e04
	inc bc			;0e05
	push af			;0e06
	rlca			;0e07
	nop			;0e08
	add a,e			;0e09
	ld a,a			;0e0a
	rst 38h			;0e0b
	ld a,a			;0e0c
	dec b			;0e0d
	nop			;0e0e
	dec b			;0e0f
	push af			;0e10
	add a,e			;0e11
l0e12h:
	ld a,a			;0e12
	and b			;0e13
	ld a,a			;0e14
	dec b			;0e15
	nop			;0e16
	inc bc			;0e17
l0e18h:
	push af			;0e18
	inc b			;0e19
	nop			;0e1a
	sub c			;0e1b
	call m,sub_0003h	;0e1c
	ret p			;0e1f
	inc c			;0e20
	rlca			;0e21
	ret m			;0e22
	nop			;0e23
	inc bc			;0e24
	call pe,02f10h		;0e25
	ret nz			;0e28
	nop			;0e29
	nop			;0e2a
	ld a,h			;0e2b
	add a,e			;0e2c
	inc bc			;0e2d
	nop			;0e2e
	xor b			;0e2f
	call m,sub_0003h	;0e30
	nop			;0e33
	add a,b			;0e34
	ld h,b			;0e35
	djnz $+10		;0e36
	ld b,0c1h		;0e38
	inc a			;0e3a
	nop			;0e3b
	nop			;0e3c
	add a,b			;0e3d
	ld b,b			;0e3e
	jr nc,l0dcfh		;0e3f
	ld h,c			;0e41
	ld e,0f0h		;0e42
	rrca			;0e44
	nop			;0e45
	rlca			;0e46
	ld a,b			;0e47
	add a,b			;0e48
	ret p			;0e49
	rrca			;0e4a
	nop			;0e4b
	add a,a			;0e4c
	ld a,b			;0e4d
	add a,b			;0e4e
	ld bc,0f00eh		;0e4f
	nop			;0e52
	inc bc			;0e53
	ret m			;0e54
	rlca			;0e55
	jr c,l0e18h		;0e56
	inc bc			;0e58
	nop			;0e59
	sub a			;0e5a
	ld e,061h		;0e5b
	adc a,(hl)		;0e5d
	jr nc,l0ea0h		;0e5e
	add a,b			;0e60
	nop			;0e61
	nop			;0e62
	rrca			;0e63
	ret p			;0e64
	add a,b			;0e65
	ld a,b			;0e66
	rlca			;0e67
	nop			;0e68
	rrca			;0e69
	ret p			;0e6a
	nop			;0e6b
	ret p			;0e6c
	ld c,001h		;0e6d
	add a,b			;0e6f
	ld a,b			;0e70
	add a,a			;0e71
	inc b			;0e72
	nop			;0e73
l0e74h:
	adc a,h			;0e74
	ret nz			;0e75
	jr c,l0e7fh		;0e76
	ret m			;0e78
	inc bc			;0e79
	ret m			;0e7a
	rlca			;0e7b
	inc c			;0e7c
	ret p			;0e7d
	nop			;0e7e
l0e7fh:
	inc bc			;0e7f
	call m,sub_0003h	;0e80
	add a,h			;0e83
	ret nz			;0e84
	cpl			;0e85
	djnz l0e74h		;0e86
	inc b			;0e88
	inc bc			;0e89
	add a,c			;0e8a
	call m,sub_0003h	;0e8b
	adc a,e			;0e8e
	add a,e			;0e8f
	ld a,h			;0e90
	inc a			;0e91
	pop bc			;0e92
	ld b,008h		;0e93
	djnz l0ef7h		;0e95
	add a,b			;0e97
	nop			;0e98
	rst 38h			;0e99
	inc c			;0e9a
	nop			;0e9b
	add a,c			;0e9c
	rst 38h			;0e9d
	inc b			;0e9e
	nop			;0e9f
l0ea0h:
	add a,h			;0ea0
	rst 38h			;0ea1
	nop			;0ea2
	nop			;0ea3
	rst 38h			;0ea4
	inc b			;0ea5
	nop			;0ea6
	add a,c			;0ea7
	rst 38h			;0ea8
	dec b			;0ea9
	nop			;0eaa
	nop			;0eab
	add a,d			;0eac
	add a,b			;0ead
	sbc a,b			;0eae
	dec b			;0eaf
	add a,b			;0eb0
	add a,e			;0eb1
	sbc a,b			;0eb2
	add a,b			;0eb3
	sub b			;0eb4
	dec b			;0eb5
	add a,b			;0eb6
	add a,c			;0eb7
	sub b			;0eb8
	dec b			;0eb9
	add a,b			;0eba
	add a,c			;0ebb
	sbc a,b			;0ebc
	rlca			;0ebd
	add a,b			;0ebe
	add a,l			;0ebf
	sub b			;0ec0
	add a,b			;0ec1
	add a,b			;0ec2
	ld d,b			;0ec3
	ld (hl),a		;0ec4
	rlca			;0ec5
	ld d,b			;0ec6
	add a,c			;0ec7
	ld (hl),b		;0ec8
	ld b,050h		;0ec9
	inc b			;0ecb
	ld h,b			;0ecc
	add a,c			;0ecd
	ei			;0ece
	rlca			;0ecf
	ld h,b			;0ed0
	add a,c			;0ed1
	and b			;0ed2
	inc b			;0ed3
	ld h,b			;0ed4
	dec b			;0ed5
	ld d,b			;0ed6
	add a,c			;0ed7
	ld (hl),a		;0ed8
	rlca			;0ed9
	ld d,b			;0eda
	add a,(hl)		;0edb
	ld (hl),b		;0edc
	ld d,b			;0edd
	nop			;0ede
	nop			;0edf
	ld h,b			;0ee0
	ei			;0ee1
	rlca			;0ee2
	ld h,b			;0ee3
	add a,c			;0ee4
l0ee5h:
	and b			;0ee5
	inc b			;0ee6
	ld h,b			;0ee7
	inc b			;0ee8
	ld (hl),b		;0ee9
l0eeah:
	ld (bc),a		;0eea
	jr nc,$-125		;0eeb
	ret p			;0eed
	inc bc			;0eee
	and b			;0eef
	ld (bc),a		;0ef0
	ld (hl),b		;0ef1
	add a,d			;0ef2
	jr nc,l0ee5h		;0ef3
	rlca			;0ef5
	and b			;0ef6
l0ef7h:
	add a,d			;0ef7
	jr nc,l0eeah		;0ef8
	rlca			;0efa
	and b			;0efb
	ld (bc),a		;0efc
	ret p			;0efd
	add a,c			;0efe
	and b			;0eff
l0f00h:
	inc bc			;0f00
	ret p			;0f01
l0f02h:
	add a,c			;0f02
	and b			;0f03
	inc bc			;0f04
	ld (hl),b		;0f05
	inc bc			;0f06
	and b			;0f07
	ld (bc),a		;0f08
	jr nc,$-125		;0f09
	ld (hl),b		;0f0b
	inc b			;0f0c
	and b			;0f0d
	add a,h			;0f0e
	ret p			;0f0f
	jr nc,l0f02h		;0f10
	ret p			;0f12
	ld b,0a0h		;0f13
	inc b			;0f15
	ret p			;0f16
	inc bc			;0f17
	ld (hl),b		;0f18
	add a,c			;0f19
l0f1ah:
	and b			;0f1a
	inc b			;0f1b
	ret p			;0f1c
	ld (bc),a		;0f1d
	and b			;0f1e
	add a,e			;0f1f
	ld (hl),b		;0f20
	jr nc,l0f53h		;0f21
	dec b			;0f23
	and b			;0f24
	ld (bc),a		;0f25
	ret p			;0f26
	add a,d			;0f27
	jr nc,l0f1ah		;0f28
	dec b			;0f2a
	and b			;0f2b
	add a,c			;0f2c
	ret p			;0f2d
	dec b			;0f2e
	and b			;0f2f
	add a,c			;0f30
	ret p			;0f31
	inc bc			;0f32
	jr nc,l0f3ah		;0f33
	ld (hl),b		;0f35
	adc a,b			;0f36
	ret p			;0f37
	jr nc,l0faah		;0f38
l0f3ah:
	ld (hl),b		;0f3a
	and b			;0f3b
	nop			;0f3c
	nop			;0f3d
	ret p			;0f3e
	inc b			;0f3f
	jr nc,l0f44h		;0f40
	and b			;0f42
	ld (bc),a		;0f43
l0f44h:
	ret p			;0f44
	dec bc			;0f45
	and b			;0f46
	add a,c			;0f47
	and e			;0f48
	inc b			;0f49
	and b			;0f4a
	add a,h			;0f4b
	and a			;0f4c
	and b			;0f4d
	and b			;0f4e
	and a			;0f4f
	inc b			;0f50
	and b			;0f51
	add a,c			;0f52
l0f53h:
	and e			;0f53
	inc b			;0f54
	ld (hl),b		;0f55
	inc b			;0f56
	jr nc,$+6		;0f57
	ret p			;0f59
	add a,c			;0f5a
	jp m,l0300h		;0f5b
	adc a,d			;0f5e
	rlca			;0f5f
	nop			;0f60
	inc bc			;0f61
	adc a,d			;0f62
	rlca			;0f63
	nop			;0f64
	inc bc			;0f65
	adc a,d			;0f66
	ld b,000h		;0f67
	inc bc			;0f69
	adc a,d			;0f6a
	nop			;0f6b
	inc bc			;0f6c
	xor d			;0f6d
	rlca			;0f6e
	nop			;0f6f
	inc bc			;0f70
	xor d			;0f71
	rlca			;0f72
	nop			;0f73
	inc bc			;0f74
	xor d			;0f75
	ld b,000h		;0f76
	inc bc			;0f78
	xor d			;0f79
	nop			;0f7a
	inc b			;0f7b
	nop			;0f7c
	add a,e			;0f7d
	ld bc,00703h		;0f7e
	inc b			;0f81
	nop			;0f82
	add a,l			;0f83
	add a,b			;0f84
	and b			;0f85
	cp h			;0f86
	cp a			;0f87
	rra			;0f88
	ld b,000h		;0f89
	add a,d			;0f8b
	ret nz			;0f8c
	rst 38h			;0f8d
	rlca			;0f8e
	nop			;0f8f
	add a,c			;0f90
	ret po			;0f91
	jr nc,l0f94h		;0f92
l0f94h:
	nop			;0f94
	add a,e			;0f95
	inc bc			;0f96
	ld bc,l0501h		;0f97
	nop			;0f9a
	adc a,e			;0f9b
	and e			;0f9c
	call c,0efdfh		;0f9d
	ld (hl),a		;0fa0
	ld (hl),a		;0fa1
	dec sp			;0fa2
	dec a			;0fa3
	rst 38h			;0fa4
	ccf			;0fa5
	ret nz			;0fa6
	rlca			;0fa7
	rst 38h			;0fa8
	add a,d			;0fa9
l0faah:
	rra			;0faa
	ret po			;0fab
	rlca			;0fac
	rst 38h			;0fad
	add a,c			;0fae
	nop			;0faf
	inc b			;0fb0
	rst 38h			;0fb1
	sub l			;0fb2
	add a,b			;0fb3
	ret p			;0fb4
	call m,sub_0dfeh	;0fb5
	ret p			;0fb8
	defb 0fdh,0ffh,000h ;illegal sequence	;0fb9
	rrca			;0fbc
	rst 38h			;0fbd
	rst 38h			;0fbe
	ret p			;0fbf
	rrca			;0fc0
	rst 38h			;0fc1
	rst 38h			;0fc2
	ccf			;0fc3
	rst 38h			;0fc4
	rst 38h			;0fc5
	ret nz			;0fc6
	ccf			;0fc7
	inc bc			;0fc8
	rst 38h			;0fc9
	nop			;0fca
	sub b			;0fcb
	dec e			;0fcc
	ld e,00fh		;0fcd
	rlca			;0fcf
	inc bc			;0fd0
	ld bc,l0000h		;0fd1
	rst 38h			;0fd4
	rst 38h			;0fd5
	ld a,a			;0fd6
	cp a			;0fd7
	rst 18h			;0fd8
	rst 20h			;0fd9
	ret m			;0fda
	ccf			;0fdb
	rlca			;0fdc
	rst 38h			;0fdd
	sub e			;0fde
	nop			;0fdf
	ret po			;0fe0
	ret p			;0fe1
	ret m			;0fe2
	call m,0fffeh		;0fe3
	nop			;0fe6
	rrca			;0fe7
	nop			;0fe8
	nop			;0fe9
	rst 38h			;0fea
	ld a,a			;0feb
	ccf			;0fec
	rra			;0fed
	add a,b			;0fee
	ret nz			;0fef
	nop			;0ff0
	nop			;0ff1
	inc b			;0ff2
	rst 38h			;0ff3
	inc b			;0ff4
	nop			;0ff5
	inc b			;0ff6
	rst 38h			;0ff7
	add a,h			;0ff8
	ld bc,sub_0003h		;0ff9
	nop			;0ffc
	inc b			;0ffd
	ccf			;0ffe
	add a,h			;0fff
sub_1000h:
	inc b			;1000
	inc c			;1001
	nop			;1002
	nop			;1003
	inc b			;1004
	call m,03c84h		;1005
	ld a,h			;1008
	nop			;1009
	nop			;100a
	inc b			;100b
	rst 38h			;100c
	add a,h			;100d
l100eh:
	djnz l1040h		;100e
	nop			;1010
	nop			;1011
	inc b			;1012
	di			;1013
	ld (bc),a		;1014
	ret p			;1015
	ld (bc),a		;1016
	nop			;1017
	inc b			;1018
	rst 38h			;1019
	adc a,h			;101a
	ld b,e			;101b
	jp l0000h		;101c
	pop bc			;101f
	jp 0cfc7h		;1020
	pop bc			;1023
	jp l0000h		;1024
	inc b			;1027
	inc a			;1028
	add a,h			;1029
	inc b			;102a
	inc c			;102b
	nop			;102c
	nop			;102d
	ld b,03ch		;102e
	adc a,h			;1030
	inc b			;1031
	rrca			;1032
	rra			;1033
	ccf			;1034
	ld a,a			;1035
	rst 38h			;1036
	rst 38h			;1037
	ret p			;1038
	rla			;1039
	ld (hl),d		;103a
	ld (hl),l		;103b
	ld (hl),a		;103c
	inc bc			;103d
	rst 38h			;103e
	adc a,c			;103f
l1040h:
	nop			;1040
	ld a,a			;1041
	ld a,a			;1042
	ld a,(hl)		;1043
	ld a,l			;1044
	ei			;1045
l1046h:
	rst 20h			;1046
	rra			;1047
	call m,08200h		;1048
	rrca			;104b
	inc bc			;104c
	ld b,000h		;104d
	adc a,b			;104f
	rst 18h			;1050
	sbc a,a			;1051
	ld l,a			;1052
	ld l,a			;1053
l1054h:
	ld (hl),a		;1054
	dec sp			;1055
	inc e			;1056
	rrca			;1057
	rlca			;1058
	rst 38h			;1059
	ld (bc),a		;105a
	nop			;105b
	add a,a			;105c
	rst 38h			;105d
	nop			;105e
	rst 38h			;105f
	nop			;1060
	nop			;1061
	rst 38h			;1062
	rrca			;1063
	ex af,af'		;1064
	rst 38h			;1065
	add a,c			;1066
	rlca			;1067
	rlca			;1068
	rrca			;1069
	add a,c			;106a
	nop			;106b
	inc b			;106c
	ccf			;106d
	inc bc			;106e
	rrca			;106f
	add a,e			;1070
	inc e			;1071
	dec a			;1072
	ccf			;1073
	dec b			;1074
	inc a			;1075
	add a,e			;1076
	ret m			;1077
	ret p			;1078
	ret po			;1079
	dec b			;107a
	inc a			;107b
	add a,c			;107c
	ld (hl),b		;107d
	inc b			;107e
	rst 38h			;107f
	inc bc			;1080
	ret p			;1081
	add a,c			;1082
	pop af			;1083
	rlca			;1084
	di			;1085
	ex af,af'		;1086
	jp 0c781h		;1087
	rlca			;108a
	rst 8			;108b
	add a,c			;108c
	inc e			;108d
	rrca			;108e
	inc a			;108f
	add a,c			;1090
	ld (hl),b		;1091
	inc b			;1092
	rst 38h			;1093
	inc b			;1094
	nop			;1095
	rlca			;1096
	ret p			;1097
	nop			;1098
	add a,d			;1099
	rlca			;109a
	ld bc,sub_0005h+1	;109b
	adc a,b			;109e
	rst 28h			;109f
	rst 10h			;10a0
	scf			;10a1
	scf			;10a2
	dec sp			;10a3
	inc e			;10a4
	rrca			;10a5
	rlca			;10a6
	inc b			;10a7
	nop			;10a8
	add a,h			;10a9
	rst 38h			;10aa
	add a,b			;10ab
	nop			;10ac
	cp a			;10ad
	ex af,af'		;10ae
	rst 38h			;10af
	dec b			;10b0
	rrca			;10b1
	ld (bc),a		;10b2
	nop			;10b3
	add a,d			;10b4
	rst 38h			;10b5
	rrca			;10b6
	inc b			;10b7
	rst 38h			;10b8
	ld (bc),a		;10b9
	nop			;10ba
	add a,c			;10bb
	rst 38h			;10bc
	dec b			;10bd
	inc a			;10be
	ld (bc),a		;10bf
	nop			;10c0
	add a,c			;10c1
	rst 38h			;10c2
	dec b			;10c3
	ret p			;10c4
	ld (bc),a		;10c5
	nop			;10c6
	add a,c			;10c7
l10c8h:
	rst 38h			;10c8
	dec b			;10c9
	di			;10ca
	ld (bc),a		;10cb
	nop			;10cc
	add a,d			;10cd
	rst 38h			;10ce
	jp 0ff03h		;10cf
	adc a,l			;10d2
	cp 000h			;10d3
	nop			;10d5
	rst 38h			;10d6
	rst 8			;10d7
l10d8h:
	rst 8			;10d8
	adc a,a			;10d9
	rrca			;10da
	rrca			;10db
	nop			;10dc
	nop			;10dd
	rst 38h			;10de
	inc a			;10df
	inc b			;10e0
	ccf			;10e1
	ld (bc),a		;10e2
	nop			;10e3
	add a,d			;10e4
	rst 38h			;10e5
	inc a			;10e6
	inc b			;10e7
	call m,sub_0002h	;10e8
	add a,e			;10eb
	rst 38h			;10ec
	nop			;10ed
	nop			;10ee
	inc bc			;10ef
	rst 38h			;10f0
	ld (bc),a		;10f1
	nop			;10f2
	add a,c			;10f3
	rst 38h			;10f4
	nop			;10f5
	adc a,b			;10f6
	ld e,a			;10f7
	rst 28h			;10f8
	ld (hl),e		;10f9
	inc a			;10fa
	rra			;10fb
	rrca			;10fc
	inc bc			;10fd
	nop			;10fe
	inc bc			;10ff
l1100h:
	rst 38h			;1100
	add a,c			;1101
	nop			;1102
	dec b			;1103
	rst 38h			;1104
	ld (bc),a		;1105
	ret po			;1106
	add a,c			;1107
	jr nz,l110dh		;1108
l110ah:
	rst 20h			;110a
	add a,l			;110b
	daa			;110c
l110dh:
	rst 38h			;110d
	rst 38h			;110e
	nop			;110f
l1110h:
	nop			;1110
	dec b			;1111
	rst 38h			;1112
	inc bc			;1113
	nop			;1114
	adc a,b			;1115
	rst 38h			;1116
	nop			;1117
	rst 38h			;1118
	ld b,b			;1119
	rst 38h			;111a
	rst 38h			;111b
	nop			;111c
	nop			;111d
	dec b			;111e
	rst 38h			;111f
	ld (bc),a		;1120
	ld bc,l0082h		;1121
	cp 005h			;1124
	rst 38h			;1126
	add a,(hl)		;1127
	ld a,a			;1128
	ld h,b			;1129
	rra			;112a
	adc a,a			;112b
	rst 8			;112c
	call nz,sub_0400h	;112d
	daa			;1130
	inc b			;1131
	jr nz,l1138h		;1132
	rst 38h			;1134
	inc b			;1135
	nop			;1136
	add a,h			;1137
l1138h:
	rst 38h			;1138
	defb 0fdh,0ffh,0ffh ;illegal sequence	;1139
	inc b			;113c
	nop			;113d
	ld (bc),a		;113e
	rst 38h			;113f
	add a,(hl)		;1140
	ret nc			;1141
	call m,l0001h		;1142
	nop			;1145
	ld bc,0ff08h		;1146
	ex af,af'		;1149
	call po,02002h		;114a
	add a,(hl)		;114d
	inc hl			;114e
	daa			;114f
	ld b,a			;1150
	ld c,a			;1151
	adc a,a			;1152
	sbc a,a			;1153
l1154h:
	dec b			;1154
	rst 38h			;1155
	add a,e			;1156
	nop			;1157
	rla			;1158
	ld a,a			;1159
	inc bc			;115a
	rst 38h			;115b
	add a,e			;115c
	ld (bc),a		;115d
	rst 38h			;115e
	cp a			;115f
	ld de,081ffh		;1160
	cp 004h			;1163
	call po,0c484h		;1165
	ret z			;1168
	adc a,b			;1169
	djnz l1174h		;116a
	sbc a,a			;116c
	ex af,af'		;116d
	rst 38h			;116e
	add a,h			;116f
	add a,b			;1170
	nop			;1171
	nop			;1172
	add a,b			;1173
l1174h:
	inc b			;1174
	rst 38h			;1175
	add a,c			;1176
	ccf			;1177
	inc bc			;1178
	ld bc,0f904h		;1179
	inc b			;117c
	sbc a,a			;117d
	ld (bc),a		;117e
	add a,b			;117f
	add a,d			;1180
	rst 38h			;1181
	nop			;1182
	inc b			;1183
	rst 38h			;1184
	ld (bc),a		;1185
	nop			;1186
	add a,e			;1187
	rst 38h			;1188
	nop			;1189
	ccf			;118a
	rlca			;118b
	rst 38h			;118c
	inc b			;118d
	nop			;118e
	inc b			;118f
	rst 38h			;1190
	nop			;1191
	jr nz,l11d4h		;1192
	jr nc,l1196h		;1194
l1196h:
	nop			;1196
	add a,h			;1197
	ld b,b			;1198
	ret nz			;1199
	ld b,b			;119a
	ret nz			;119b
	dec b			;119c
	ld b,b			;119d
	add a,a			;119e
	ret nz			;119f
	ld b,b			;11a0
	ret nz			;11a1
	ld b,b			;11a2
	ret nz			;11a3
	ld b,b			;11a4
	ret nz			;11a5
	inc bc			;11a6
	ld b,b			;11a7
	add a,l			;11a8
	ret nz			;11a9
	ld b,b			;11aa
	ret nz			;11ab
	ld b,b			;11ac
	ret nz			;11ad
	inc bc			;11ae
	ld b,b			;11af
	add a,l			;11b0
	ret nz			;11b1
	ld b,b			;11b2
	ret nz			;11b3
	ld b,b			;11b4
	ret nz			;11b5
	dec b			;11b6
	ld b,b			;11b7
	add a,e			;11b8
	ret nz			;11b9
	ld b,b			;11ba
	ret nz			;11bb
	dec b			;11bc
	ld b,b			;11bd
	add a,e			;11be
	ret nz			;11bf
	ld b,b			;11c0
	ret nz			;11c1
	dec b			;11c2
	ld b,b			;11c3
	add a,e			;11c4
	ret nz			;11c5
	ld b,b			;11c6
	ret nz			;11c7
	dec b			;11c8
l11c9h:
	ld b,b			;11c9
	add a,e			;11ca
	ret nz			;11cb
	ld b,b			;11cc
	ret nz			;11cd
	nop			;11ce
	add a,(hl)		;11cf
	ld b,b			;11d0
	ret nz			;11d1
	ld b,b			;11d2
	ret nz			;11d3
l11d4h:
	ld d,b			;11d4
l11d5h:
	ret nz			;11d5
	inc bc			;11d6
	ld b,b			;11d7
	sub a			;11d8
	ret nz			;11d9
	ld b,b			;11da
	ret nz			;11db
	ld d,b			;11dc
	ret nz			;11dd
	ld d,b			;11de
	ret nz			;11df
	ld b,b			;11e0
	ret nz			;11e1
	ld b,b			;11e2
	ret nz			;11e3
	ld d,b			;11e4
	ret nz			;11e5
	ld d,b			;11e6
	ld b,b			;11e7
	ld b,b			;11e8
	ret nz			;11e9
	ld b,b			;11ea
	ret nz			;11eb
	ld d,b			;11ec
	ret nz			;11ed
	push bc			;11ee
	ret nz			;11ef
	ld b,060h		;11f0
	ld (bc),a		;11f2
	ret nz			;11f3
	ld d,b			;11f4
	ld h,b			;11f5
	sbc a,b			;11f6
	ld b,b			;11f7
	ret nz			;11f8
	ld b,b			;11f9
	ret nz			;11fa
	ld d,b			;11fb
	ret nz			;11fc
	ld d,b			;11fd
	ret nz			;11fe
	ld b,b			;11ff
	ret nz			;1200
	ld b,b			;1201
l1202h:
	ret nz			;1202
	ld d,b			;1203
	ret nz			;1204
	ld d,b			;1205
	ld d,b			;1206
	ld b,b			;1207
	ret nz			;1208
	ld b,b			;1209
l120ah:
	ret nz			;120a
	ld d,b			;120b
	ret nz			;120c
l120dh:
	ld d,b			;120d
	ret nz			;120e
	nop			;120f
	add a,c			;1210
	ld d,b			;1211
	rlca			;1212
	ret nz			;1213
	and b			;1214
	ld d,b			;1215
	ret nz			;1216
	ld (hl),b		;1217
	ret nz			;1218
	ld (hl),b		;1219
	jr nz,l128ch		;121a
	jr nz,l126eh		;121c
	ret nz			;121e
	ld (hl),b		;121f
	ret nz			;1220
	ld (hl),b		;1221
	jr nz,l1294h		;1222
	ld (hl),b		;1224
	push bc			;1225
	call nz,0c5c7h		;1226
	rst 0			;1229
	ld d,d			;122a
	ld (hl),b		;122b
	jr nz,l127eh		;122c
	ret nz			;122e
	ld (hl),b		;122f
	ret nz			;1230
	ld (hl),b		;1231
	jr nz,l12a4h		;1232
	jr nz,l1296h		;1234
	ld h,b			;1236
	nop			;1237
	add a,c			;1238
	ld (hl),b		;1239
	rlca			;123a
	jr nz,l11d5h		;123b
	ld (hl),b		;123d
	jr nz,l12b0h		;123e
	jr nc,$+114		;1240
	jr nc,l12b4h		;1242
	jr nc,l120dh		;1244
	ld (hl),d		;1246
	rst 0			;1247
	ld (hl),e		;1248
	ld (hl),d		;1249
	and e			;124a
	jr nz,l127dh		;124b
	ld (hl),b		;124d
	jr nz,l12c0h		;124e
	jr nc,l12c2h		;1250
	jr nc,l12c4h		;1252
	jr nc,$+9		;1254
	ld h,b			;1256
	add a,c			;1257
	jr nc,$+9		;1258
	ld h,b			;125a
	add a,c			;125b
	jr nc,$+9		;125c
	ld h,b			;125e
	add a,c			;125f
	jr nc,$+9		;1260
	ld h,b			;1262
	add a,c			;1263
	jr nc,$+9		;1264
	ld h,b			;1266
	add a,c			;1267
	jr nc,$+9		;1268
	ld h,b			;126a
	add a,c			;126b
	jr nc,$+9		;126c
l126eh:
	ld h,b			;126e
	add a,c			;126f
	jr nc,$+9		;1270
	ld h,b			;1272
	add a,c			;1273
	jr nc,l127dh		;1274
	ld h,b			;1276
	add a,e			;1277
	jr nc,l12dah		;1278
	or (hl)			;127a
	dec b			;127b
	ld h,b			;127c
l127dh:
	add a,c			;127d
l127eh:
	jr nc,l1280h		;127e
l1280h:
	add a,l			;1280
	ld (hl),b		;1281
	or b			;1282
	ret p			;1283
	ld d,b			;1284
	ld d,b			;1285
	inc bc			;1286
	ld b,b			;1287
	adc a,e			;1288
	ld (hl),b		;1289
	or b			;128a
	ret p			;128b
l128ch:
	ld b,b			;128c
	ld d,b			;128d
	ld b,b			;128e
	ld b,b			;128f
	nop			;1290
	ld (hl),b		;1291
	or h			;1292
	ret p			;1293
l1294h:
	inc b			;1294
	ld b,b			;1295
l1296h:
	add a,d			;1296
	ld d,b			;1297
	ld (hl),b		;1298
	ld b,040h		;1299
	adc a,d			;129b
	ld d,b			;129c
	ld (hl),b		;129d
	ld (hl),h		;129e
	ld (hl),b		;129f
l12a0h:
	ld (hl),b		;12a0
	ld b,b			;12a1
	ld (hl),h		;12a2
	ld b,e			;12a3
l12a4h:
	ld d,h			;12a4
	ld (hl),b		;12a5
	rlca			;12a6
	ld b,b			;12a7
	add a,d			;12a8
	ld (hl),b		;12a9
	or h			;12aa
	ld b,040h		;12ab
l12adh:
	add a,l			;12ad
	ld (hl),b		;12ae
	or b			;12af
l12b0h:
	call p,05040h		;12b0
	inc bc			;12b3
l12b4h:
	ld b,b			;12b4
	nop			;12b5
	add a,h			;12b6
	ld b,b			;12b7
	ld d,b			;12b8
	ld (hl),b		;12b9
	ret p			;12ba
l12bbh:
	dec b			;12bb
	ld b,b			;12bc
	add a,d			;12bd
	ld d,b			;12be
	ld (hl),b		;12bf
l12c0h:
	dec b			;12c0
	ret p			;12c1
l12c2h:
	add a,e			;12c2
l12c3h:
	ld b,b			;12c3
l12c4h:
	ld d,h			;12c4
	ld (hl),b		;12c5
	dec b			;12c6
	ret p			;12c7
	ld (bc),a		;12c8
	ld b,b			;12c9
	add a,d			;12ca
l12cbh:
	ld (hl),h		;12cb
	call p,04021h		;12cc
	add a,e			;12cf
	ld d,h			;12d0
	ld (hl),h		;12d1
	call p,04003h		;12d2
	add a,l			;12d5
	ld d,h			;12d6
l12d7h:
	ld b,b			;12d7
	ld d,h			;12d8
	ld (hl),b		;12d9
l12dah:
	ret p			;12da
l12dbh:
	inc bc			;12db
	ld b,b			;12dc
	add a,l			;12dd
	ld d,b			;12de
l12dfh:
	ld b,b			;12df
	ld d,b			;12e0
	ld (hl),b		;12e1
	ret p			;12e2
	inc bc			;12e3
	ld b,b			;12e4
	add a,l			;12e5
	ld d,b			;12e6
l12e7h:
	ld b,b			;12e7
	ld d,b			;12e8
	ld (hl),b		;12e9
	ret p			;12ea
	inc bc			;12eb
l12ech:
	ld b,b			;12ec
	add a,l			;12ed
	ld d,b			;12ee
	ld b,b			;12ef
	ld d,b			;12f0
	ld (hl),b		;12f1
	ret p			;12f2
	rlca			;12f3
	ld b,b			;12f4
l12f5h:
	add a,c			;12f5
	ld d,b			;12f6
	rlca			;12f7
	ld b,b			;12f8
	add a,c			;12f9
	ld d,b			;12fa
	rlca			;12fb
	ld b,b			;12fc
	add a,c			;12fd
	ld d,b			;12fe
	rlca			;12ff
	ld b,b			;1300
	add a,l			;1301
	ld d,b			;1302
	ld b,b			;1303
	ld d,b			;1304
	ld (hl),b		;1305
	ret p			;1306
	dec b			;1307
	ld b,b			;1308
	add a,d			;1309
l130ah:
	ld d,b			;130a
	ld (hl),b		;130b
	inc bc			;130c
	ret p			;130d
	add a,d			;130e
l130fh:
	ld b,b			;130f
	ret p			;1310
	rrca			;1311
	ld b,b			;1312
	add a,c			;1313
	ld d,b			;1314
	nop			;1315
	add a,h			;1316
	jr nc,l1339h		;1317
	ld (hl),b		;1319
	ret p			;131a
	dec b			;131b
	jr nc,l12a0h		;131c
	jr nz,$+114		;131e
	dec b			;1320
l1321h:
	ret p			;1321
	add a,e			;1322
	jr nc,l1348h		;1323
	ld (hl),b		;1325
	dec b			;1326
	ret p			;1327
	ld (bc),a		;1328
	jr nc,l12adh		;1329
	ld (hl),e		;132b
	di			;132c
	ld hl,08330h		;132d
	inc hl			;1330
	ld (hl),e		;1331
	di			;1332
	inc bc			;1333
	jr nc,l12bbh		;1334
	inc hl			;1336
	jr nc,l135ch		;1337
l1339h:
	ld (hl),b		;1339
	ret p			;133a
	inc bc			;133b
	jr nc,l12c3h		;133c
	jr nz,$+50		;133e
	jr nz,$+114		;1340
	ret p			;1342
	inc bc			;1343
	jr nc,l12cbh		;1344
	jr nz,l1378h		;1346
l1348h:
	jr nz,l13bah		;1348
	ret p			;134a
	inc bc			;134b
	jr nc,$-121		;134c
	jr nz,l1380h		;134e
	jr nz,l13c2h		;1350
	ret p			;1352
	rlca			;1353
	jr nc,l12d7h		;1354
	jr nz,$+9		;1356
	jr nc,l12dbh		;1358
	jr nz,$+9		;135a
l135ch:
	jr nc,l12dfh		;135c
	jr nz,l1367h		;135e
	jr nc,l12e7h		;1360
	jr nz,l1394h		;1362
	jr nz,l13d6h		;1364
	ret p			;1366
l1367h:
	dec b			;1367
	jr nc,l12ech		;1368
	jr nz,l13dch		;136a
	inc bc			;136c
	ret p			;136d
	add a,d			;136e
	jr nc,$-14		;136f
	rrca			;1371
	jr nc,l12f5h		;1372
	jr nz,l1376h		;1374
l1376h:
	add a,l			;1376
	ld (hl),b		;1377
l1378h:
	or b			;1378
	ret p			;1379
	ld d,b			;137a
	ld d,b			;137b
	inc bc			;137c
	jr nc,l130ah		;137d
	ld (hl),b		;137f
l1380h:
	or b			;1380
	ret p			;1381
	jr nc,l13a4h		;1382
	jr nc,l13b6h		;1384
	nop			;1386
	ld (hl),b		;1387
	or e			;1388
	ret p			;1389
	inc b			;138a
	jr nc,l130fh		;138b
	jr nz,l13ffh		;138d
	ld b,030h		;138f
	adc a,d			;1391
	jr nz,l1404h		;1392
l1394h:
	ld (hl),e		;1394
	ld (hl),b		;1395
	ld (hl),b		;1396
	jr nc,l140ch		;1397
	inc sp			;1399
	inc hl			;139a
	ld (hl),b		;139b
	rlca			;139c
	jr nc,l1321h		;139d
	ld (hl),b		;139f
	or e			;13a0
	ld b,030h		;13a1
	add a,l			;13a3
l13a4h:
	ld (hl),b		;13a4
	or b			;13a5
	call p,02040h		;13a6
	inc bc			;13a9
	jr nc,l13ach		;13aa
l13ach:
	rlca			;13ac
	jp nz,l1fb3h		;13ad
	ld (l07b5h),hl		;13b0
	ld c,e			;13b3
	or h			;13b4
	ld (hl),b		;13b5
l13b6h:
	sbc a,a			;13b6
	or l			;13b7
	nop			;13b8
	rra			;13b9
l13bah:
	ld sp,0123fh		;13ba
	ld (hl),b		;13bd
	adc a,(hl)		;13be
	ccf			;13bf
	dec e			;13c0
	nop			;13c1
l13c2h:
	sub b			;13c2
	nop			;13c3
	jr c,$+105		;13c4
l13c6h:
	ld l,b			;13c6
	ld (hl),c		;13c7
	ld (hl),e		;13c8
	ld h,a			;13c9
	ld h,a			;13ca
	nop			;13cb
	inc e			;13cc
	and 016h		;13cd
	adc a,(hl)		;13cf
	adc a,0e6h		;13d0
	and 003h		;13d2
	nop			;13d4
	adc a,l			;13d5
l13d6h:
	call m,0f0aah		;13d6
	nop			;13d9
	nop			;13da
	ld (bc),a		;13db
l13dch:
	inc b			;13dc
	ex af,af'		;13dd
	jr nc,$+98		;13de
	dec e			;13e0
	ld e,l			;13e1
	ld e,l			;13e2
	inc bc			;13e3
	nop			;13e4
	add a,c			;13e5
	defb 0edh ;next byte illegal after ed	;13e6
	inc b			;13e7
	ld l,l			;13e8
	sbc a,a			;13e9
	ld a,(bc)		;13ea
	xor e			;13eb
	dec bc			;13ec
	nop			;13ed
	nop			;13ee
	jr c,$-122		;13ef
	pop bc			;13f1
	nop			;13f2
	ld a,a			;13f3
	cp (hl)			;13f4
	dec e			;13f5
	dec bc			;13f6
	ld b,a			;13f7
	adc a,(hl)		;13f8
	inc e			;13f9
	ld h,e			;13fa
	ld (hl),c		;13fb
	ld l,b			;13fc
	ld a,(hl)		;13fd
	nop			;13fe
l13ffh:
	ld a,a			;13ff
	nop			;1400
	ld a,a			;1401
	ld l,l			;1402
	ld l,l			;1403
l1404h:
	defb 0edh ;next byte illegal after ed	;1404
l1405h:
	ld l,l			;1405
	nop			;1406
	ret nc			;1407
l1408h:
	ret nc			;1408
	ld b,000h		;1409
	xor a			;140b
l140ch:
	inc bc			;140c
	inc c			;140d
	jr nc,l1410h		;140e
l1410h:
	rlca			;1410
	rra			;1411
	rlca			;1412
	ccf			;1413
	ret nz			;1414
	ld bc,0bfc2h		;1415
	sbc a,0efh		;1418
	rst 30h			;141a
	or 0f7h			;141b
	add a,b			;141d
	ld c,a			;141e
	and d			;141f
	ld (hl),b		;1420
	call m,sub_1806h	;1421
	ret po			;1424
	nop			;1425
	cp 0c0h			;1426
	nop			;1428
	add a,b			;1429
	ret nz			;142a
	ld h,b			;142b
	jr nc,l13c6h		;142c
	call z,0d0fch		;142e
	ex af,af'		;1431
	call m,042fch		;1432
	cp (hl)			;1435
	ld l,c			;1436
	add a,b			;1437
	ld (hl),06ch		;1438
	nop			;143a
	inc b			;143b
	ld h,(hl)		;143c
	add a,h			;143d
	add a,b			;143e
	ld (hl),06ch		;143f
	nop			;1441
	inc b			;1442
	ld b,083h		;1443
	add a,b			;1445
	ld (hl),06ch		;1446
	dec b			;1448
	nop			;1449
	nop			;144a
	add a,h			;144b
	ccf			;144c
	rst 38h			;144d
	rst 38h			;144e
	ccf			;144f
	inc b			;1450
	nop			;1451
	inc b			;1452
	di			;1453
	ex af,af'		;1454
	nop			;1455
	add a,h			;1456
	inc bc			;1457
	rrca			;1458
	ld a,0fdh		;1459
	ld b,000h		;145b
	add a,d			;145d
	inc bc			;145e
	rrca			;145f
	dec b			;1460
	nop			;1461
	or (hl)			;1462
	rlca			;1463
	add a,b			;1464
	jr c,l1467h		;1465
l1467h:
	ld bc,sub_0400h+2	;1467
	nop			;146a
	djnz l146dh		;146b
l146dh:
	nop			;146d
	add a,08eh		;146e
	ld d,07eh		;1470
	nop			;1472
	cp 000h			;1473
	ld e,l			;1475
	nop			;1476
	call m,07d78h		;1477
	ld a,(hl)		;147a
	ld a,h			;147b
	nop			;147c
	dec sp			;147d
	ld e,l			;147e
	inc e			;147f
	ld e,(hl)		;1480
	xor a			;1481
	out (069h),a		;1482
	inc (hl)		;1484
	ld a,(de)		;1485
	inc a			;1486
	ld a,d			;1487
	rst 30h			;1488
	xor 0dch		;1489
	add a,c			;148b
	ld a,a			;148c
	nop			;148d
	ccf			;148e
	ld a,a			;148f
	nop			;1490
	ld d,a			;1491
	rst 10h			;1492
	rst 10h			;1493
	add a,b			;1494
	nop			;1495
	ld e,l			;1496
	ld e,l			;1497
	nop			;1498
	inc bc			;1499
	rst 30h			;149a
	rst 28h			;149b
	inc bc			;149c
	ld bc,07f00h		;149d
	ld a,081h		;14a0
	sbc a,h			;14a2
	adc a,0e7h		;14a3
	ret p			;14a5
	nop			;14a6
	ccf			;14a7
	add a,b			;14a8
	rst 8			;14a9
	ret po			;14aa
	ld (hl),e		;14ab
	jr c,l14aeh		;14ac
l14aeh:
	add a,b			;14ae
	ret p			;14af
	add a,c			;14b0
	call m,0f386h		;14b1
	sbc a,c			;14b4
	inc c			;14b5
	ld a,l			;14b6
	and b			;14b7
	ld h,e			;14b8
	ld a,l			;14b9
	jr c,l152dh		;14ba
	jp 0f0a2h		;14bc
	rlca			;14bf
	ld e,h			;14c0
	ld e,b			;14c1
	ld bc,08343h		;14c2
	add a,l			;14c5
	nop			;14c6
	nop			;14c7
	inc a			;14c8
	nop			;14c9
	ld a,(hl)		;14ca
	inc a			;14cb
	jr l150ah		;14cc
	ret m			;14ce
	inc c			;14cf
	ld b,002h		;14d0
	add a,e			;14d2
	pop bc			;14d3
	pop bc			;14d4
	and c			;14d5
	ret po			;14d6
	ld a,a			;14d7
	nop			;14d8
	nop			;14d9
	ld (hl),l		;14da
	dec d			;14db
	dec d			;14dc
	push de			;14dd
	ld a,a			;14de
	ld a,a			;14df
	nop			;14e0
	cp (hl)			;14e1
	add a,b			;14e2
	cp (hl)			;14e3
	add a,b			;14e4
	cp (hl)			;14e5
	nop			;14e6
	ret nz			;14e7
	inc a			;14e8
	ld bc,0703fh		;14e9
	rra			;14ec
	ccf			;14ed
	ret p			;14ee
	rlca			;14ef
	ld e,h			;14f0
	ld e,b			;14f1
	ld bc,08343h		;14f2
	add a,l			;14f5
	nop			;14f6
	nop			;14f7
	inc a			;14f8
	nop			;14f9
	ld a,(hl)		;14fa
	inc a			;14fb
	jr l153ah		;14fc
	ret m			;14fe
	inc c			;14ff
	ld b,002h		;1500
	add a,e			;1502
	pop bc			;1503
	pop bc			;1504
	and c			;1505
	ld a,l			;1506
	and b			;1507
	ld h,e			;1508
	ld a,l			;1509
l150ah:
	jr c,l150fh		;150a
	nop			;150c
	adc a,c			;150d
	ret p			;150e
l150fh:
	rlca			;150f
	ld e,h			;1510
	ld e,b			;1511
	nop			;1512
	ld b,b			;1513
	add a,b			;1514
	nop			;1515
	rst 38h			;1516
	rlca			;1517
	nop			;1518
	add a,l			;1519
	ret m			;151a
	inc c			;151b
	ld b,002h		;151c
	inc bc			;151e
	inc bc			;151f
	ld bc,l0200h		;1520
	ld b,b			;1523
	adc a,(hl)		;1524
	ld d,b			;1525
	ld b,b			;1526
	ld b,b			;1527
	ld d,b			;1528
	ld (hl),b		;1529
	ret p			;152a
	ld b,b			;152b
	ld b,b			;152c
l152dh:
	ld d,b			;152d
	ld b,b			;152e
	ld b,b			;152f
	ld d,b			;1530
	ld (hl),b		;1531
	ret p			;1532
	inc b			;1533
	ld b,b			;1534
	add a,l			;1535
	add a,b			;1536
	push bc			;1537
	ld b,h			;1538
	ld d,l			;1539
l153ah:
	add a,b			;153a
	dec b			;153b
	ld b,b			;153c
	add a,d			;153d
	ld (hl),b		;153e
	ret po			;153f
	inc b			;1540
	ld b,b			;1541
	add a,a			;1542
	ld d,b			;1543
	ld (hl),b		;1544
	ret po			;1545
	ret p			;1546
	ld h,b			;1547
	sub b			;1548
	ld h,b			;1549
	inc bc			;154a
	ld b,b			;154b
	add a,c			;154c
	ld (hl),b		;154d
	inc b			;154e
	ld b,b			;154f
	ld (bc),a		;1550
	ld d,b			;1551
	inc bc			;1552
	ld b,b			;1553
	adc a,(hl)		;1554
	ret po			;1555
	ld d,b			;1556
	ld b,b			;1557
	push hl			;1558
	ld d,l			;1559
	ld (hl),b		;155a
	ld b,b			;155b
	ret nc			;155c
	ret po			;155d
	ld (hl),b		;155e
	ld d,b			;155f
	ld b,b			;1560
	djnz l15d3h		;1561
	inc b			;1563
	ld d,b			;1564
	inc b			;1565
	jr nz,l156dh		;1566
	ld b,b			;1568
	add a,a			;1569
	ld d,h			;156a
	ld d,b			;156b
	ld b,b			;156c
l156dh:
	ld d,b			;156d
	ld d,h			;156e
	ld b,b			;156f
	ld b,b			;1570
	inc bc			;1571
	ld d,b			;1572
	add a,c			;1573
	ld (hl),b		;1574
	inc bc			;1575
	ld b,b			;1576
	ld (bc),a		;1577
	ld d,b			;1578
	add a,l			;1579
	ld (hl),l		;157a
	ld (hl),h		;157b
	ld (hl),h		;157c
	ld d,b			;157d
	ld d,b			;157e
	ex af,af'		;157f
	ld b,b			;1580
	sbc a,d			;1581
	ret po			;1582
	ld d,b			;1583
	ld (hl),b		;1584
	ld b,b			;1585
	ld (hl),b		;1586
	ld b,b			;1587
	ld b,b			;1588
	and 040h		;1589
	ld d,b			;158b
	ld b,b			;158c
	ld b,b			;158d
	ld d,b			;158e
	ld (hl),b		;158f
	ret po			;1590
l1591h:
	ret p			;1591
	ld b,b			;1592
	ld d,b			;1593
	ld b,b			;1594
	ld b,b			;1595
	ld d,b			;1596
	ld (hl),b		;1597
	ret po			;1598
	ret p			;1599
	ld b,b			;159a
	ld d,b			;159b
	ld b,040h		;159c
	nop			;159e
	add a,e			;159f
	ld b,b			;15a0
	ret p			;15a1
	ld (hl),b		;15a2
	ld b,040h		;15a3
	add a,d			;15a5
	ret p			;15a6
	ld (hl),b		;15a7
	dec c			;15a8
	ld b,b			;15a9
	rlca			;15aa
	ld (hl),b		;15ab
	add a,c			;15ac
	ld b,b			;15ad
	ld b,020h		;15ae
	inc bc			;15b0
	ld (hl),b		;15b1
	add a,c			;15b2
	ld d,b			;15b3
	inc bc			;15b4
	ld b,b			;15b5
	inc bc			;15b6
	ld d,b			;15b7
	adc a,l			;15b8
	ret po			;15b9
	ld d,b			;15ba
	ld b,b			;15bb
	push hl			;15bc
	ld d,l			;15bd
	ld (hl),b		;15be
	djnz l1591h		;15bf
	ld (hl),a		;15c1
	ld b,b			;15c2
	ld (hl),b		;15c3
	ld b,b			;15c4
	ld d,b			;15c5
	inc bc			;15c6
	ld b,b			;15c7
	add a,e			;15c8
	ret p			;15c9
	ld (hl),b		;15ca
	ld d,b			;15cb
	inc bc			;15cc
	ld b,b			;15cd
	add a,d			;15ce
	ld d,b			;15cf
	ld (hl),b		;15d0
	rlca			;15d1
	ld b,b			;15d2
l15d3h:
	add a,(hl)		;15d3
	ld b,h			;15d4
	xor c			;15d5
	ld h,b			;15d6
	djnz l1649h		;15d7
	ld d,b			;15d9
	inc bc			;15da
	ld b,b			;15db
	add a,l			;15dc
	and b			;15dd
	ld h,b			;15de
	djnz l1651h		;15df
	ld d,b			;15e1
	dec b			;15e2
	ld b,b			;15e3
	add a,d			;15e4
	ld d,b			;15e5
	ld h,b			;15e6
	dec b			;15e7
	ld b,b			;15e8
	and a			;15e9
	sub b			;15ea
	ld b,b			;15eb
	add a,b			;15ec
	ld b,b			;15ed
	ld h,b			;15ee
	ld b,b			;15ef
	ld b,b			;15f0
	ld d,b			;15f1
	sub h			;15f2
	ld d,b			;15f3
	add a,b			;15f4
	ld d,b			;15f5
	ld h,b			;15f6
	ld d,b			;15f7
	ld b,b			;15f8
	ret po			;15f9
	ld d,b			;15fa
	ld d,l			;15fb
	ret po			;15fc
	ld (hl),b		;15fd
	ld b,b			;15fe
	ld b,b			;15ff
l1600h:
	push hl			;1600
	ret po			;1601
	ld d,b			;1602
	ld b,b			;1603
	ld d,b			;1604
	ld h,b			;1605
	ld h,b			;1606
	add a,b			;1607
	sub b			;1608
	xor 000h		;1609
	ld h,b			;160b
	ld h,(hl)		;160c
	add a,(hl)		;160d
	sbc a,b			;160e
	ld sp,hl		;160f
	ld sp,hl		;1610
	inc b			;1611
	ret po			;1612
	ld (bc),a		;1613
	ld h,b			;1614
	xor d			;1615
	add a,b			;1616
	sub b			;1617
	ld (hl),l		;1618
	ld (hl),b		;1619
	nop			;161a
	nop			;161b
	ld b,b			;161c
	ld d,b			;161d
	ld (hl),b		;161e
	ret p			;161f
	ld b,b			;1620
	ld (hl),b		;1621
	nop			;1622
	ld b,b			;1623
	ld b,b			;1624
	ld d,b			;1625
	ld (hl),b		;1626
	or b			;1627
	xor 0a5h		;1628
	ld b,b			;162a
	ld b,b			;162b
	ld d,b			;162c
	ld (hl),b		;162d
	add a,l			;162e
	sub h			;162f
	ret po			;1630
	ld d,b			;1631
	ld b,b			;1632
	ld d,b			;1633
	ld b,b			;1634
	ld b,b			;1635
	ld d,b			;1636
	ld (hl),b		;1637
	xor 010h		;1638
	ld b,b			;163a
	ld b,h			;163b
	ld d,h			;163c
	ld (hl),l		;163d
	rst 30h			;163e
	rst 30h			;163f
	inc b			;1640
	ret po			;1641
	ld (bc),a		;1642
	ld b,b			;1643
	add a,a			;1644
	ld d,b			;1645
	ld (hl),b		;1646
	ret po			;1647
	ld d,b			;1648
l1649h:
	ld d,l			;1649
	ret po			;164a
	ld (hl),b		;164b
	inc b			;164c
	ret po			;164d
	add a,a			;164e
	ld d,b			;164f
	ld b,b			;1650
l1651h:
	ld d,b			;1651
	ld b,b			;1652
	ld b,b			;1653
	ld d,b			;1654
	ld (hl),b		;1655
	inc c			;1656
	ret po			;1657
	ld (bc),a		;1658
	ld b,b			;1659
	add a,d			;165a
	ld d,b			;165b
	ld (hl),b		;165c
	nop			;165d
	xor 0b6h		;165e
	inc c			;1660
	or a			;1661
	cpl			;1662
	or a			;1663
	ld c,l			;1664
	or a			;1665
	ld l,e			;1666
	or a			;1667
	adc a,c			;1668
	or a			;1669
	and a			;166a
	or a			;166b
	push bc			;166c
	or a			;166d
	ex (sp),hl		;166e
	or a			;166f
	ld bc,l1fb8h		;1670
	cp b			;1673
	dec a			;1674
	cp b			;1675
	ld e,e			;1676
	cp b			;1677
	ld a,c			;1678
	cp b			;1679
	sub a			;167a
	cp b			;167b
	or l			;167c
	cp b			;167d
	out (0b8h),a		;167e
	rst 20h			;1680
	cp b			;1681
	ei			;1682
	cp b			;1683
	rrca			;1684
	cp c			;1685
	rrca			;1686
	cp c			;1687
	rra			;1688
	cp c			;1689
	ld sp,043b9h		;168a
	cp c			;168d
	ld d,l			;168e
	cp c			;168f
	ld h,a			;1690
	cp c			;1691
	ld a,c			;1692
	cp c			;1693
	and e			;1694
	cp c			;1695
	or l			;1696
	cp c			;1697
	adc a,e			;1698
	cp c			;1699
	sub a			;169a
	cp c			;169b
	rst 0			;169c
	cp c			;169d
	rst 30h			;169e
	cp c			;169f
	daa			;16a0
	cp d			;16a1
	ld d,a			;16a2
	cp d			;16a3
	add a,a			;16a4
	cp d			;16a5
	or a			;16a6
	cp d			;16a7
	rst 20h			;16a8
	cp d			;16a9
	rla			;16aa
	cp e			;16ab
	ld b,a			;16ac
	cp e			;16ad
	ld (hl),a		;16ae
	cp e			;16af
	and a			;16b0
	cp e			;16b1
	rst 10h			;16b2
	cp e			;16b3
	rlca			;16b4
	cp h			;16b5
	scf			;16b6
	cp h			;16b7
	ld h,a			;16b8
	cp h			;16b9
	sub a			;16ba
	cp h			;16bb
	rst 0			;16bc
	cp h			;16bd
	res 7,h			;16be
	rst 8			;16c0
	cp h			;16c1
	out (0bch),a		;16c2
	rst 10h			;16c4
	cp h			;16c5
	ex (sp),hl		;16c6
	cp h			;16c7
	rra			;16c8
	cp c			;16c9
	rst 28h			;16ca
	cp h			;16cb
	rst 28h			;16cc
	cp h			;16cd
	rst 28h			;16ce
	cp h			;16cf
	ei			;16d0
	cp h			;16d1
	rlca			;16d2
	cp l			;16d3
	inc de			;16d4
	cp l			;16d5
	rra			;16d6
	cp l			;16d7
	dec hl			;16d8
	cp l			;16d9
	scf			;16da
	cp l			;16db
	ld b,e			;16dc
	cp l			;16dd
	ld c,a			;16de
	cp l			;16df
	ld e,e			;16e0
	cp l			;16e1
	ld h,a			;16e2
	cp l			;16e3
	ld (hl),e		;16e4
	cp l			;16e5
	ld a,a			;16e6
	cp l			;16e7
	adc a,e			;16e8
	cp l			;16e9
	sub a			;16ea
	cp l			;16eb
	and e			;16ec
	cp l			;16ed
	nop			;16ee
	nop			;16ef
	rst 38h			;16f0
	nop			;16f1
	nop			;16f2
	nop			;16f3
	nop			;16f4
	nop			;16f5
	nop			;16f6
	nop			;16f7
	ld (02423h),hl		;16f8
	cp c			;16fb
	nop			;16fc
	dec h			;16fd
	ld h,027h		;16fe
	jr z,l1702h		;1700
l1702h:
	add hl,hl		;1702
	ld hl,(02c2bh)		;1703
	cp d			;1706
	dec l			;1707
	ld l,02fh		;1708
	jr nc,l173dh		;170a
	nop			;170c
	nop			;170d
	rst 38h			;170e
	nop			;170f
	nop			;1710
	nop			;1711
	nop			;1712
	nop			;1713
	nop			;1714
	nop			;1715
	ld (03223h),hl		;1716
	cp c			;1719
	nop			;171a
	dec h			;171b
	inc sp			;171c
	inc (hl)		;171d
	jr z,l1720h		;171e
l1720h:
	add hl,hl		;1720
	dec (hl)		;1721
	ld (hl),02ch		;1722
	cp d			;1724
	dec l			;1725
	ld l,02fh		;1726
	jr nc,l175bh		;1728
	dec l			;172a
	ld l,02fh		;172b
	jr nc,l1760h		;172d
	nop			;172f
	nop			;1730
	rst 38h			;1731
	nop			;1732
	nop			;1733
	nop			;1734
	nop			;1735
	nop			;1736
	nop			;1737
	nop			;1738
	ld (03837h),hl		;1739
	cp c			;173c
l173dh:
	nop			;173d
	dec h			;173e
	add hl,sp		;173f
	ld a,(l0028h)		;1740
	add hl,hl		;1743
	dec sp			;1744
	inc a			;1745
	inc l			;1746
	cp d			;1747
	dec l			;1748
	ld l,02fh		;1749
	jr nc,l177eh		;174b
	nop			;174d
	nop			;174e
	rst 38h			;174f
	nop			;1750
	nop			;1751
	nop			;1752
	nop			;1753
	nop			;1754
	nop			;1755
	nop			;1756
	ld (03e3dh),hl		;1757
	cp c			;175a
l175bh:
	nop			;175b
	dec h			;175c
	ccf			;175d
	ld b,b			;175e
	ld b,c			;175f
l1760h:
	nop			;1760
	add hl,hl		;1761
	ld b,d			;1762
	ld b,e			;1763
	inc l			;1764
	cp d			;1765
	dec l			;1766
	ld l,02fh		;1767
	jr nc,l179ch		;1769
	nop			;176b
	nop			;176c
	nop			;176d
	nop			;176e
	nop			;176f
	ld (03e3dh),hl		;1770
	cp c			;1773
	nop			;1774
	dec h			;1775
	ccf			;1776
	ld b,b			;1777
	ld b,c			;1778
	nop			;1779
	add hl,hl		;177a
	ld b,d			;177b
	ld b,e			;177c
	inc l			;177d
l177eh:
	nop			;177e
	ld b,h			;177f
	ld b,l			;1780
	ld b,(hl)		;1781
	ld b,a			;1782
	cp d			;1783
	dec l			;1784
	ld l,02fh		;1785
	jr nc,l17bah		;1787
	ld (03e3dh),hl		;1789
	cp c			;178c
	nop			;178d
	dec h			;178e
	ccf			;178f
	ld b,b			;1790
	ld b,c			;1791
	nop			;1792
	add hl,hl		;1793
	ld b,d			;1794
	ld b,e			;1795
	inc l			;1796
	nop			;1797
	ld b,h			;1798
	ld b,l			;1799
	ld b,(hl)		;179a
	ld b,a			;179b
l179ch:
	nop			;179c
	ld c,b			;179d
	ld c,c			;179e
	ld c,d			;179f
	ld c,e			;17a0
	cp d			;17a1
	dec l			;17a2
	ld l,02fh		;17a3
	jr nc,l17d8h		;17a5
	rra			;17a7
	nop			;17a8
	nop			;17a9
	cp e			;17aa
	nop			;17ab
	dec h			;17ac
	jr nz,l17d0h		;17ad
	ld b,c			;17af
	nop			;17b0
	add hl,hl		;17b1
	ld b,d			;17b2
	ld b,e			;17b3
	inc l			;17b4
	nop			;17b5
	ld b,h			;17b6
	ld b,l			;17b7
	ld b,(hl)		;17b8
	ld b,a			;17b9
l17bah:
	nop			;17ba
	ld c,b			;17bb
	ld c,c			;17bc
	ld c,d			;17bd
	ld c,e			;17be
	cp d			;17bf
	dec l			;17c0
	ld l,02fh		;17c1
	jr nc,l17f6h		;17c3
	cp 000h			;17c5
	nop			;17c7
	nop			;17c8
	nop			;17c9
	nop			;17ca
	nop			;17cb
	rst 38h			;17cc
	nop			;17cd
	nop			;17ce
	nop			;17cf
l17d0h:
	nop			;17d0
	nop			;17d1
	nop			;17d2
	nop			;17d3
	cp h			;17d4
	cp l			;17d5
	cp (hl)			;17d6
	cp a			;17d7
l17d8h:
	nop			;17d8
	add hl,hl		;17d9
	ld b,d			;17da
	ld b,e			;17db
	inc l			;17dc
	cp d			;17dd
	dec l			;17de
	ld l,02fh		;17df
	jr nc,l1814h		;17e1
	ld e,(hl)		;17e3
	ld e,l			;17e4
	ld e,h			;17e5
	ld e,e			;17e6
	ld e,d			;17e7
	pop bc			;17e8
	ld e,c			;17e9
	ld e,b			;17ea
	ld d,a			;17eb
	ld d,(hl)		;17ec
	nop			;17ed
	ld d,l			;17ee
	ld d,h			;17ef
	ld d,e			;17f0
	ld d,d			;17f1
	nop			;17f2
	ret nz			;17f3
	ld d,c			;17f4
	ld d,b			;17f5
l17f6h:
	ld c,a			;17f6
	nop			;17f7
	nop			;17f8
	nop			;17f9
	nop			;17fa
	nop			;17fb
	nop			;17fc
	nop			;17fd
	rst 38h			;17fe
	nop			;17ff
	nop			;1800
	ld e,(hl)		;1801
	ld e,l			;1802
	ld e,h			;1803
	ld e,e			;1804
	ld e,d			;1805
sub_1806h:
	pop bc			;1806
	ld e,c			;1807
	ld h,e			;1808
	ld h,d			;1809
	ld d,(hl)		;180a
	nop			;180b
	ld d,l			;180c
	ld h,c			;180d
	ld h,b			;180e
	ld d,d			;180f
	nop			;1810
	ret nz			;1811
	ld e,a			;1812
	ld d,b			;1813
l1814h:
	ld c,a			;1814
	nop			;1815
	nop			;1816
	nop			;1817
	nop			;1818
	nop			;1819
	nop			;181a
	nop			;181b
	rst 38h			;181c
	nop			;181d
	nop			;181e
	ld e,(hl)		;181f
	ld e,l			;1820
	ld e,h			;1821
	ld e,e			;1822
	ld e,d			;1823
	pop bc			;1824
	ld e,c			;1825
	ld l,c			;1826
	ld l,b			;1827
	ld d,(hl)		;1828
	nop			;1829
	ld d,l			;182a
	ld h,a			;182b
	ld h,(hl)		;182c
	ld d,d			;182d
	nop			;182e
	ret nz			;182f
	ld h,l			;1830
	ld h,h			;1831
	ld c,a			;1832
	nop			;1833
	nop			;1834
	nop			;1835
	nop			;1836
	nop			;1837
	nop			;1838
	nop			;1839
	rst 38h			;183a
	nop			;183b
	nop			;183c
	ld e,(hl)		;183d
	ld e,l			;183e
	ld e,h			;183f
	ld e,e			;1840
	ld e,d			;1841
	pop bc			;1842
	ld e,c			;1843
	ld (hl),b		;1844
	ld l,a			;1845
	ld d,(hl)		;1846
	nop			;1847
	ld l,(hl)		;1848
	ld l,l			;1849
	ld l,h			;184a
	ld d,d			;184b
	nop			;184c
	ret nz			;184d
	ld l,e			;184e
	ld l,d			;184f
	ld c,a			;1850
	nop			;1851
	nop			;1852
	nop			;1853
	nop			;1854
	nop			;1855
	nop			;1856
	nop			;1857
	rst 38h			;1858
	nop			;1859
	nop			;185a
	ld e,(hl)		;185b
	ld e,l			;185c
	ld e,h			;185d
	ld e,e			;185e
	ld e,d			;185f
	pop bc			;1860
	ld (hl),h		;1861
	ld (hl),e		;1862
	ld (hl),d		;1863
	ld (hl),c		;1864
	nop			;1865
	ld e,c			;1866
	ld (hl),b		;1867
	ld l,a			;1868
	ld d,(hl)		;1869
	nop			;186a
	ld l,(hl)		;186b
	ld l,l			;186c
	ld l,h			;186d
	ld d,d			;186e
	nop			;186f
	ret nz			;1870
	ld l,e			;1871
	ld l,d			;1872
	ld c,a			;1873
	nop			;1874
	nop			;1875
	nop			;1876
	nop			;1877
	nop			;1878
	ld e,(hl)		;1879
	ld e,l			;187a
	ld e,h			;187b
	ld e,e			;187c
	ld e,d			;187d
	pop bc			;187e
	ld a,b			;187f
	ld (hl),a		;1880
	halt			;1881
	ld (hl),l		;1882
	nop			;1883
	ld (hl),h		;1884
	ld (hl),e		;1885
	ld (hl),d		;1886
	ld (hl),c		;1887
	nop			;1888
	ld e,c			;1889
	ld (hl),b		;188a
	ld l,a			;188b
	ld d,(hl)		;188c
	nop			;188d
	ld l,(hl)		;188e
	ld l,l			;188f
	ld l,h			;1890
	ld d,d			;1891
	nop			;1892
	ret nz			;1893
	ld l,e			;1894
	ld l,d			;1895
	ld c,a			;1896
	ld e,(hl)		;1897
	ld e,l			;1898
	ld e,h			;1899
	ld e,e			;189a
	ld e,d			;189b
	pop bc			;189c
	ld a,b			;189d
	ld (hl),a		;189e
	halt			;189f
	ld (hl),l		;18a0
	nop			;18a1
	ld (hl),h		;18a2
	ld (hl),e		;18a3
	ld (hl),d		;18a4
	ld (hl),c		;18a5
	nop			;18a6
	ld e,c			;18a7
	ld (hl),b		;18a8
	ld l,a			;18a9
	ld d,(hl)		;18aa
	nop			;18ab
	ld l,(hl)		;18ac
	ld c,(hl)		;18ad
	ld c,l			;18ae
	ld d,d			;18af
	nop			;18b0
	jp nz,l0000h		;18b1
	ld c,h			;18b4
	ld e,(hl)		;18b5
	ld e,l			;18b6
	ld e,h			;18b7
	ld e,e			;18b8
	ld e,d			;18b9
	pop bc			;18ba
	ld e,c			;18bb
	ld (hl),b		;18bc
	ld l,a			;18bd
	ld d,(hl)		;18be
	nop			;18bf
	add a,0c5h		;18c0
	call nz,sub_00c3h	;18c2
	nop			;18c5
	nop			;18c6
	nop			;18c7
	nop			;18c8
	nop			;18c9
	nop			;18ca
	rst 38h			;18cb
	nop			;18cc
	nop			;18cd
	cp 000h			;18ce
	nop			;18d0
	nop			;18d1
	nop			;18d2
	nop			;18d3
	nop			;18d4
	nop			;18d5
	nop			;18d6
	nop			;18d7
	ld de,l0e12h		;18d8
	inc c			;18db
	add hl,bc		;18dc
	inc de			;18dd
	inc d			;18de
	djnz $+15		;18df
	sub (hl)		;18e1
	sub a			;18e2
	nop			;18e3
	sub h			;18e4
	sub l			;18e5
	ld a,(bc)		;18e6
	nop			;18e7
	dec b			;18e8
	ld b,007h		;18e9
	ex af,af'		;18eb
	dec d			;18ec
	ld d,017h		;18ed
	jr l190ah		;18ef
	ld a,(de)		;18f1
	sub e			;18f2
	inc b			;18f3
	sbc a,b			;18f4
	sbc a,c			;18f5
	sbc a,d			;18f6
	nop			;18f7
	ld bc,l0302h		;18f8
	nop			;18fb
sub_18fch:
	ld de,l0e12h		;18fc
	inc c			;18ff
	add hl,bc		;1900
	inc de			;1901
	inc d			;1902
	djnz l1912h		;1903
	sub (hl)		;1905
	sub a			;1906
	nop			;1907
l1908h:
	sub h			;1908
	sub l			;1909
l190ah:
	ld a,(bc)		;190a
	nop			;190b
	nop			;190c
	nop			;190d
	nop			;190e
	inc de			;190f
	djnz l1924h		;1910
l1912h:
	or c			;1912
	dec de			;1913
	dec e			;1914
	sub a			;1915
	cp l			;1916
	inc e			;1917
	ld e,014h		;1918
	cp h			;191a
	sub (hl)		;191b
	inc c			;191c
	sub l			;191d
	or c			;191e
	nop			;191f
	sub e			;1920
	sub h			;1921
	and b			;1922
	sbc a,a			;1923
l1924h:
	nop			;1924
	nop			;1925
	sub l			;1926
	sub (hl)		;1927
	and d			;1928
	and c			;1929
	nop			;192a
	nop			;192b
	sub a			;192c
	sbc a,b			;192d
	and h			;192e
	and e			;192f
	nop			;1930
	cp l			;1931
	sbc a,c			;1932
	sbc a,d			;1933
	and (hl)		;1934
	and l			;1935
	cp a			;1936
	cp (hl)			;1937
	sbc a,e			;1938
	sbc a,h			;1939
	xor b			;193a
	and a			;193b
	ret nz			;193c
	nop			;193d
	sub a			;193e
	sbc a,b			;193f
	and h			;1940
	and e			;1941
	nop			;1942
	sub e			;1943
	sub h			;1944
	nop			;1945
	nop			;1946
	and b			;1947
	sbc a,a			;1948
	sub l			;1949
	sub (hl)		;194a
	nop			;194b
	nop			;194c
	and d			;194d
	and c			;194e
	nop			;194f
	sub a			;1950
	sbc a,b			;1951
	and h			;1952
	and e			;1953
	nop			;1954
	nop			;1955
	sub a			;1956
	sbc a,b			;1957
	and h			;1958
	and e			;1959
	nop			;195a
	nop			;195b
	sub l			;195c
	sub (hl)		;195d
	and d			;195e
	and c			;195f
	nop			;1960
	nop			;1961
	sub e			;1962
	sub h			;1963
	and b			;1964
	sbc a,a			;1965
	nop			;1966
	nop			;1967
	sub a			;1968
	sbc a,b			;1969
	and h			;196a
	and e			;196b
	nop			;196c
	cp (hl)			;196d
	sbc a,e			;196e
	sbc a,h			;196f
	xor b			;1970
	and a			;1971
	ret nz			;1972
	cp l			;1973
	sbc a,c			;1974
	sbc a,d			;1975
	and (hl)		;1976
	and l			;1977
	cp a			;1978
	nop			;1979
	sub a			;197a
	sbc a,b			;197b
	and h			;197c
	and e			;197d
	nop			;197e
	sub l			;197f
	sub (hl)		;1980
	nop			;1981
	nop			;1982
	and d			;1983
	and c			;1984
	sub e			;1985
	sub h			;1986
	nop			;1987
	nop			;1988
	and b			;1989
	sbc a,a			;198a
	sbc a,e			;198b
	nop			;198c
	nop			;198d
	and b			;198e
	sbc a,h			;198f
	sbc a,l			;1990
	ld a,h			;1991
	ld a,e			;1992
	sbc a,(hl)		;1993
	sbc a,a			;1994
	ld a,(hl)		;1995
	ld a,l			;1996
	sbc a,(hl)		;1997
	sbc a,a			;1998
	ld a,(hl)		;1999
	ld a,l			;199a
	sbc a,h			;199b
	sbc a,l			;199c
	ld a,h			;199d
	ld a,e			;199e
	sbc a,e			;199f
	nop			;19a0
	nop			;19a1
	and b			;19a2
	sub e			;19a3
l19a4h:
	sub h			;19a4
	nop			;19a5
	nop			;19a6
	and b			;19a7
	sbc a,a			;19a8
	sub l			;19a9
	sub (hl)		;19aa
	nop			;19ab
	nop			;19ac
	and d			;19ad
	and c			;19ae
	nop			;19af
	sbc a,l			;19b0
	sbc a,(hl)		;19b1
	xor d			;19b2
	xor c			;19b3
	nop			;19b4
	nop			;19b5
	sbc a,l			;19b6
	sbc a,(hl)		;19b7
	xor d			;19b8
	xor c			;19b9
	nop			;19ba
	sub l			;19bb
	sub (hl)		;19bc
	nop			;19bd
	nop			;19be
	and d			;19bf
	and c			;19c0
	sub e			;19c1
	sub h			;19c2
	nop			;19c3
	nop			;19c4
	and b			;19c5
	sbc a,a			;19c6
	ld h,c			;19c7
	ld b,h			;19c8
	ld c,d			;19c9
	ld b,h			;19ca
	ld b,l			;19cb
	ld b,l			;19cc
	ld b,a			;19cd
	ld h,h			;19ce
	or h			;19cf
	and e			;19d0
	ld a,c			;19d1
	adc a,e			;19d2
	ld a,h			;19d3
	ld a,l			;19d4
	cp d			;19d5
	nop			;19d6
	nop			;19d7
	and d			;19d8
	and b			;19d9
	nop			;19da
	and c			;19db
	nop			;19dc
	nop			;19dd
	nop			;19de
	nop			;19df
	nop			;19e0
	or h			;19e1
	nop			;19e2
	nop			;19e3
	nop			;19e4
	nop			;19e5
	nop			;19e6
	nop			;19e7
	nop			;19e8
	nop			;19e9
	nop			;19ea
	nop			;19eb
	nop			;19ec
	nop			;19ed
	nop			;19ee
	nop			;19ef
	nop			;19f0
	nop			;19f1
	nop			;19f2
	nop			;19f3
	nop			;19f4
	nop			;19f5
	nop			;19f6
	ld h,c			;19f7
	ld h,l			;19f8
	ld c,b			;19f9
	ld d,b			;19fa
	ld d,e			;19fb
	ld d,d			;19fc
	ld h,l			;19fd
	ld l,h			;19fe
	xor c			;19ff
l1a00h:
	halt			;1a00
	ld d,(hl)		;1a01
l1a02h:
	ld c,b			;1a02
	ld d,e			;1a03
	ld d,d			;1a04
	ld a,(hl)		;1a05
	ld a,b			;1a06
l1a07h:
	nop			;1a07
	xor e			;1a08
	xor c			;1a09
	ld a,d			;1a0a
	ld a,e			;1a0b
	ld a,h			;1a0c
	ld a,l			;1a0d
	cp d			;1a0e
	nop			;1a0f
	nop			;1a10
	nop			;1a11
	nop			;1a12
	nop			;1a13
	nop			;1a14
	nop			;1a15
	nop			;1a16
	nop			;1a17
	nop			;1a18
	nop			;1a19
	nop			;1a1a
	nop			;1a1b
	nop			;1a1c
	nop			;1a1d
	nop			;1a1e
	nop			;1a1f
	nop			;1a20
	nop			;1a21
	nop			;1a22
	nop			;1a23
	nop			;1a24
	nop			;1a25
	nop			;1a26
	ld h,c			;1a27
	ld b,h			;1a28
	ld b,l			;1a29
	ld d,b			;1a2a
	ld c,a			;1a2b
	ld c,l			;1a2c
	ld c,(hl)		;1a2d
	ld h,h			;1a2e
	and e			;1a2f
	halt			;1a30
	ld d,a			;1a31
	ld h,b			;1a32
	ld d,d			;1a33
	ld d,d			;1a34
	ld h,d			;1a35
	ld (hl),l		;1a36
	and d			;1a37
	xor c			;1a38
	ld l,c			;1a39
	ld e,b			;1a3a
	ld h,a			;1a3b
	ld e,b			;1a3c
	ld h,a			;1a3d
	and h			;1a3e
	nop			;1a3f
	and d			;1a40
	xor c			;1a41
	jp 0c5c4h		;1a42
	add a,0a7h		;1a45
	nop			;1a47
	nop			;1a48
	nop			;1a49
	nop			;1a4a
	nop			;1a4b
	nop			;1a4c
	nop			;1a4d
	nop			;1a4e
	nop			;1a4f
	nop			;1a50
	nop			;1a51
	nop			;1a52
	nop			;1a53
	nop			;1a54
	nop			;1a55
	nop			;1a56
	ld h,c			;1a57
	ld b,h			;1a58
	ld c,d			;1a59
	ld d,b			;1a5a
	ld c,a			;1a5b
	ld d,d			;1a5c
	ld b,(hl)		;1a5d
	ld b,a			;1a5e
	xor b			;1a5f
	or l			;1a60
	ld l,e			;1a61
	ld e,b			;1a62
	ld d,a			;1a63
	ld h,b			;1a64
	ld d,c			;1a65
	ld (hl),a		;1a66
	or h			;1a67
	and b			;1a68
	ld l,c			;1a69
	ld l,b			;1a6a
	ld l,d			;1a6b
	ld h,e			;1a6c
	ld c,c			;1a6d
	ld a,(0ab00h)		;1a6e
	xor c			;1a71
	halt			;1a72
	add hl,sp		;1a73
	ld h,(hl)		;1a74
	ld h,a			;1a75
	xor d			;1a76
	nop			;1a77
	nop			;1a78
	and d			;1a79
	and e			;1a7a
	ld b,b			;1a7b
	ld b,c			;1a7c
	xor a			;1a7d
	add a,000h		;1a7e
	nop			;1a80
	nop			;1a81
	nop			;1a82
	nop			;1a83
	nop			;1a84
	nop			;1a85
	nop			;1a86
	ld h,c			;1a87
	ld h,c			;1a88
	ld h,c			;1a89
	ld b,h			;1a8a
	ld b,l			;1a8b
	ld d,e			;1a8c
	ld h,l			;1a8d
	ld l,h			;1a8e
	cp b			;1a8f
	ld a,b			;1a90
	ld d,(hl)		;1a91
	add a,b			;1a92
	add a,c			;1a93
	add a,d			;1a94
	ld a,(hl)		;1a95
	ld a,b			;1a96
	nop			;1a97
	and (hl)		;1a98
	ld l,a			;1a99
	ld b,e			;1a9a
	ld d,a			;1a9b
	ld h,b			;1a9c
	ld d,c			;1a9d
	ld (hl),a		;1a9e
	nop			;1a9f
	cp b			;1aa0
	adc a,e			;1aa1
	ld c,b			;1aa2
	ld a,(hl)		;1aa3
	ld h,(hl)		;1aa4
	ld h,a			;1aa5
	xor (hl)		;1aa6
	xor b			;1aa7
	or l			;1aa8
	ld d,(hl)		;1aa9
	add a,d			;1aaa
	add a,d			;1aab
	add a,e			;1aac
	ld l,d			;1aad
	xor l			;1aae
	nop			;1aaf
	or e			;1ab0
	ld a,c			;1ab1
	adc a,e			;1ab2
	ld a,h			;1ab3
	ld a,l			;1ab4
	cp d			;1ab5
	nop			;1ab6
	ld h,c			;1ab7
	ld b,h			;1ab8
	ld c,b			;1ab9
	ld d,b			;1aba
	ld d,e			;1abb
	ld d,d			;1abc
	ld h,l			;1abd
	ld l,h			;1abe
	cp b			;1abf
	dec sp			;1ac0
	ld d,(hl)		;1ac1
	ld c,b			;1ac2
	ld d,e			;1ac3
	ld d,d			;1ac4
	ld a,(hl)		;1ac5
	ld a,b			;1ac6
	xor e			;1ac7
	ld l,a			;1ac8
	ld b,e			;1ac9
	add a,d			;1aca
	ld c,d			;1acb
	ld c,d			;1acc
	ld h,d			;1acd
	xor a			;1ace
	and e			;1acf
	ld d,(hl)		;1ad0
	ld b,l			;1ad1
	ld c,b			;1ad2
	ld b,(hl)		;1ad3
	ld h,h			;1ad4
	xor (hl)		;1ad5
	and d			;1ad6
	cp e			;1ad7
	cp h			;1ad8
	adc a,e			;1ad9
	ld d,d			;1ada
	add a,d			;1adb
	add a,d			;1adc
	add a,e			;1add
	or a			;1ade
	nop			;1adf
	or e			;1ae0
	and c			;1ae1
	ld a,d			;1ae2
	ld a,e			;1ae3
	ld a,h			;1ae4
	ld a,l			;1ae5
	cp d			;1ae6
	ld h,c			;1ae7
	ld b,h			;1ae8
	ld c,b			;1ae9
	ld d,b			;1aea
	ld d,e			;1aeb
	ld d,d			;1aec
	ld h,l			;1aed
	ld l,h			;1aee
	cp b			;1aef
	dec sp			;1af0
	ld d,(hl)		;1af1
	ld c,b			;1af2
	ld d,e			;1af3
	ld d,d			;1af4
	ld a,(hl)		;1af5
	ld a,b			;1af6
	xor e			;1af7
	ld l,a			;1af8
	ld b,e			;1af9
	add a,d			;1afa
	ld c,d			;1afb
	ld c,d			;1afc
	ld h,d			;1afd
	xor a			;1afe
	and e			;1aff
l1b00h:
	ld d,(hl)		;1b00
	ld b,l			;1b01
	ld c,b			;1b02
	ld b,(hl)		;1b03
	ld h,h			;1b04
	xor (hl)		;1b05
	and d			;1b06
	cp e			;1b07
	cp h			;1b08
	adc a,e			;1b09
	ld d,d			;1b0a
	add a,d			;1b0b
	add a,d			;1b0c
	add a,e			;1b0d
	or a			;1b0e
	nop			;1b0f
	or e			;1b10
	and c			;1b11
	ld a,d			;1b12
	ld a,e			;1b13
	ld a,h			;1b14
	ld a,l			;1b15
	cp d			;1b16
	ld h,c			;1b17
	ld b,h			;1b18
	ld b,l			;1b19
	ld d,b			;1b1a
	ld c,a			;1b1b
	ld b,(hl)		;1b1c
	ld b,a			;1b1d
	ld h,h			;1b1e
	cp b			;1b1f
	dec sp			;1b20
	ld d,(hl)		;1b21
	ld c,d			;1b22
	ld d,d			;1b23
	ld d,e			;1b24
	ld a,(hl)		;1b25
	xor h			;1b26
	xor b			;1b27
	or l			;1b28
	ld l,e			;1b29
	ld e,b			;1b2a
	ld d,a			;1b2b
	ld h,b			;1b2c
	ld d,c			;1b2d
	ld (hl),a		;1b2e
	or h			;1b2f
	and b			;1b30
	ld l,c			;1b31
	ld l,b			;1b32
	ld l,d			;1b33
	ld h,e			;1b34
	ld c,c			;1b35
	ld a,(0ab00h)		;1b36
	xor c			;1b39
	halt			;1b3a
	add hl,sp		;1b3b
	ld h,(hl)		;1b3c
	ld h,a			;1b3d
	xor d			;1b3e
	nop			;1b3f
	nop			;1b40
	and d			;1b41
	and e			;1b42
	ld b,b			;1b43
	ld b,c			;1b44
	xor a			;1b45
	add a,000h		;1b46
	nop			;1b48
	nop			;1b49
	nop			;1b4a
	nop			;1b4b
	nop			;1b4c
	nop			;1b4d
	nop			;1b4e
	nop			;1b4f
	nop			;1b50
	nop			;1b51
	nop			;1b52
	nop			;1b53
	nop			;1b54
	nop			;1b55
	nop			;1b56
	nop			;1b57
	nop			;1b58
	or h			;1b59
	nop			;1b5a
	nop			;1b5b
	nop			;1b5c
	nop			;1b5d
	nop			;1b5e
	nop			;1b5f
	and d			;1b60
	and b			;1b61
	nop			;1b62
	and c			;1b63
	nop			;1b64
	nop			;1b65
	nop			;1b66
	or h			;1b67
	and e			;1b68
	ld a,c			;1b69
	adc a,e			;1b6a
	ld a,h			;1b6b
	ld a,l			;1b6c
	cp d			;1b6d
	nop			;1b6e
	ld h,c			;1b6f
	ld b,h			;1b70
	ld c,d			;1b71
	ld b,h			;1b72
	ld b,l			;1b73
	ld b,l			;1b74
	ld b,a			;1b75
	ld h,h			;1b76
	nop			;1b77
	nop			;1b78
	nop			;1b79
	nop			;1b7a
	nop			;1b7b
	nop			;1b7c
	nop			;1b7d
	nop			;1b7e
	nop			;1b7f
	nop			;1b80
	nop			;1b81
	nop			;1b82
	nop			;1b83
	nop			;1b84
	nop			;1b85
	nop			;1b86
	nop			;1b87
	nop			;1b88
	nop			;1b89
	nop			;1b8a
	nop			;1b8b
	nop			;1b8c
	nop			;1b8d
	nop			;1b8e
	nop			;1b8f
	xor e			;1b90
	xor c			;1b91
	ld a,d			;1b92
	ld a,e			;1b93
	ld a,h			;1b94
	ld a,l			;1b95
	cp d			;1b96
	xor c			;1b97
	halt			;1b98
	ld d,(hl)		;1b99
	ld c,b			;1b9a
	ld d,e			;1b9b
	ld d,d			;1b9c
	ld a,(hl)		;1b9d
	ld a,b			;1b9e
	ld h,c			;1b9f
	ld h,l			;1ba0
	ld c,b			;1ba1
	ld d,b			;1ba2
	ld d,e			;1ba3
	ld d,d			;1ba4
	ld h,l			;1ba5
	ld l,h			;1ba6
	nop			;1ba7
	nop			;1ba8
	nop			;1ba9
	nop			;1baa
	nop			;1bab
	nop			;1bac
	nop			;1bad
	nop			;1bae
	nop			;1baf
	nop			;1bb0
	nop			;1bb1
	nop			;1bb2
	nop			;1bb3
	nop			;1bb4
	nop			;1bb5
	nop			;1bb6
	nop			;1bb7
	and d			;1bb8
	xor c			;1bb9
	jp 0c5c4h		;1bba
	add a,0a7h		;1bbd
	and d			;1bbf
	xor c			;1bc0
	ld l,c			;1bc1
	ld e,b			;1bc2
	ld h,a			;1bc3
	ld e,b			;1bc4
	ld h,a			;1bc5
	and h			;1bc6
	and e			;1bc7
	halt			;1bc8
	ld d,a			;1bc9
	ld h,b			;1bca
	ld d,d			;1bcb
	ld d,d			;1bcc
	ld h,d			;1bcd
	ld (hl),l		;1bce
	ld h,c			;1bcf
	ld b,h			;1bd0
	ld b,l			;1bd1
	ld d,b			;1bd2
	ld c,a			;1bd3
	ld c,l			;1bd4
	ld c,(hl)		;1bd5
	ld h,h			;1bd6
	nop			;1bd7
	nop			;1bd8
	nop			;1bd9
	nop			;1bda
	nop			;1bdb
	nop			;1bdc
	nop			;1bdd
	nop			;1bde
	nop			;1bdf
	nop			;1be0
	and d			;1be1
	and e			;1be2
	ld b,b			;1be3
	ld b,c			;1be4
	xor a			;1be5
	add a,000h		;1be6
	xor e			;1be8
	xor c			;1be9
	halt			;1bea
	add hl,sp		;1beb
	ld h,(hl)		;1bec
	ld h,a			;1bed
	xor d			;1bee
	or h			;1bef
	and b			;1bf0
	ld l,c			;1bf1
	ld l,b			;1bf2
	ld l,d			;1bf3
	ld h,e			;1bf4
	ld c,c			;1bf5
	ld a,(0b5a8h)		;1bf6
	ld l,e			;1bf9
	ld e,b			;1bfa
	ld d,a			;1bfb
	ld h,b			;1bfc
	ld d,c			;1bfd
	ld (hl),a		;1bfe
	ld h,c			;1bff
	ld b,h			;1c00
	ld c,d			;1c01
	ld d,b			;1c02
	ld c,a			;1c03
	ld d,d			;1c04
	ld b,(hl)		;1c05
	ld b,a			;1c06
	nop			;1c07
	or e			;1c08
	ld a,c			;1c09
	adc a,e			;1c0a
	ld a,h			;1c0b
	ld a,l			;1c0c
	cp d			;1c0d
	nop			;1c0e
	xor b			;1c0f
	or l			;1c10
	ld d,(hl)		;1c11
	add a,d			;1c12
	add a,d			;1c13
	add a,e			;1c14
	ld l,d			;1c15
	xor l			;1c16
	nop			;1c17
	cp b			;1c18
	adc a,e			;1c19
	ld c,b			;1c1a
	ld a,(hl)		;1c1b
	ld h,(hl)		;1c1c
	ld h,a			;1c1d
	xor (hl)		;1c1e
	nop			;1c1f
	and (hl)		;1c20
	ld l,a			;1c21
	ld b,e			;1c22
	ld d,a			;1c23
	ld h,b			;1c24
	ld d,c			;1c25
	ld (hl),a		;1c26
	cp b			;1c27
	ld a,b			;1c28
	ld d,(hl)		;1c29
	add a,b			;1c2a
	add a,c			;1c2b
	add a,d			;1c2c
	ld a,(hl)		;1c2d
	ld a,b			;1c2e
	ld h,c			;1c2f
	ld h,c			;1c30
	ld h,c			;1c31
	ld b,h			;1c32
	ld b,l			;1c33
	ld d,e			;1c34
	ld h,l			;1c35
	ld l,h			;1c36
	nop			;1c37
	or e			;1c38
	and c			;1c39
	ld a,d			;1c3a
	ld a,e			;1c3b
	ld a,h			;1c3c
	ld a,l			;1c3d
	cp d			;1c3e
	cp e			;1c3f
	cp h			;1c40
	adc a,e			;1c41
	ld d,d			;1c42
	add a,d			;1c43
	add a,d			;1c44
	add a,e			;1c45
	or a			;1c46
	and e			;1c47
	ld d,(hl)		;1c48
	ld b,l			;1c49
	ld c,b			;1c4a
	ld b,(hl)		;1c4b
	ld h,h			;1c4c
	xor (hl)		;1c4d
	and d			;1c4e
	xor e			;1c4f
	ld l,a			;1c50
	ld b,e			;1c51
	add a,d			;1c52
	ld c,d			;1c53
	ld c,d			;1c54
	ld h,d			;1c55
	xor a			;1c56
	cp b			;1c57
	dec sp			;1c58
	ld d,(hl)		;1c59
	ld c,b			;1c5a
	ld d,e			;1c5b
	ld d,d			;1c5c
	ld a,(hl)		;1c5d
	ld a,b			;1c5e
	ld h,c			;1c5f
	ld b,h			;1c60
	ld c,b			;1c61
	ld d,b			;1c62
	ld d,e			;1c63
	ld d,d			;1c64
	ld h,l			;1c65
	ld l,h			;1c66
	nop			;1c67
	nop			;1c68
	nop			;1c69
	jp 0c5c4h		;1c6a
	add a,0a7h		;1c6d
	nop			;1c6f
	nop			;1c70
	adc a,d			;1c71
	halt			;1c72
	ld l,b			;1c73
	ld h,(hl)		;1c74
	ld (hl),l		;1c75
	xor a			;1c76
	and d			;1c77
	and l			;1c78
	ld l,c			;1c79
	ld e,b			;1c7a
	ld h,a			;1c7b
	ld e,b			;1c7c
	ld h,a			;1c7d
	and h			;1c7e
	xor c			;1c7f
	or l			;1c80
	ld h,a			;1c81
	ld e,c			;1c82
	ld d,a			;1c83
	ld d,c			;1c84
	ld h,d			;1c85
	or (hl)			;1c86
	and e			;1c87
	ld d,(hl)		;1c88
	ld d,a			;1c89
	ld h,b			;1c8a
	ld d,d			;1c8b
	ld d,d			;1c8c
	ld h,d			;1c8d
	ld (hl),l		;1c8e
	ld h,c			;1c8f
	ld b,h			;1c90
	ld b,l			;1c91
	ld d,b			;1c92
	ld c,a			;1c93
	ld c,l			;1c94
	ld c,(hl)		;1c95
	ld h,h			;1c96
	nop			;1c97
	nop			;1c98
	and d			;1c99
	and e			;1c9a
	ld b,b			;1c9b
	ld b,c			;1c9c
	xor a			;1c9d
	add a,000h		;1c9e
	xor e			;1ca0
	xor c			;1ca1
	halt			;1ca2
	add hl,sp		;1ca3
	ld h,(hl)		;1ca4
	ld h,a			;1ca5
	xor d			;1ca6
	or h			;1ca7
	and b			;1ca8
	ld l,c			;1ca9
	ld l,b			;1caa
	ld l,d			;1cab
	ld h,e			;1cac
	ld c,c			;1cad
	ld a,(0b5a8h)		;1cae
	ld l,e			;1cb1
	ld e,b			;1cb2
	ld d,a			;1cb3
	ld h,b			;1cb4
	ld d,c			;1cb5
	ld (hl),a		;1cb6
	cp b			;1cb7
	dec sp			;1cb8
	ld d,(hl)		;1cb9
	ld c,d			;1cba
	ld d,d			;1cbb
	ld d,e			;1cbc
	ld a,(hl)		;1cbd
	xor h			;1cbe
	ld h,c			;1cbf
	ld b,h			;1cc0
	ld b,l			;1cc1
	ld d,b			;1cc2
	ld c,a			;1cc3
	ld b,(hl)		;1cc4
	ld b,a			;1cc5
	ld h,h			;1cc6
	add hl,sp		;1cc7
	ld b,(hl)		;1cc8
	ld a,(0501fh)		;1cc9
	ld d,c			;1ccc
	ld a,(l001fh)		;1ccd
	nop			;1cd0
	ld d,d			;1cd1
	ld d,e			;1cd2
	nop			;1cd3
	nop			;1cd4
	ld d,h			;1cd5
	ld d,l			;1cd6
	nop			;1cd7
	nop			;1cd8
	nop			;1cd9
	nop			;1cda
	cp c			;1cdb
	nop			;1cdc
	cp c			;1cdd
	call nz,0b6c5h		;1cde
	push bc			;1ce1
	add a,000h		;1ce2
	nop			;1ce4
	nop			;1ce5
	nop			;1ce6
	nop			;1ce7
	call nz,0b900h		;1ce8
	nop			;1ceb
	add a,000h		;1cec
	push bc			;1cee
	sub e			;1cef
	nop			;1cf0
	nop			;1cf1
	sbc a,b			;1cf2
	sub h			;1cf3
	sub l			;1cf4
	sbc a,d			;1cf5
	sbc a,c			;1cf6
	sub (hl)		;1cf7
	sub a			;1cf8
	sbc a,h			;1cf9
	sbc a,e			;1cfa
	sub (hl)		;1cfb
	sub a			;1cfc
	sbc a,h			;1cfd
	sbc a,e			;1cfe
	sub h			;1cff
	sub l			;1d00
	sbc a,d			;1d01
	sbc a,c			;1d02
	sub e			;1d03
	nop			;1d04
	nop			;1d05
	sbc a,b			;1d06
	nop			;1d07
	nop			;1d08
	nop			;1d09
	nop			;1d0a
	adc a,l			;1d0b
	adc a,(hl)		;1d0c
	sbc a,a			;1d0d
	sbc a,(hl)		;1d0e
	sub b			;1d0f
	sub c			;1d10
	and d			;1d11
	and c			;1d12
	nop			;1d13
	nop			;1d14
	nop			;1d15
	nop			;1d16
	adc a,l			;1d17
	adc a,a			;1d18
	and b			;1d19
	sbc a,(hl)		;1d1a
	sub b			;1d1b
	sub c			;1d1c
	and d			;1d1d
	and c			;1d1e
	nop			;1d1f
	nop			;1d20
	nop			;1d21
	nop			;1d22
	adc a,l			;1d23
	adc a,e			;1d24
	sbc a,h			;1d25
	sbc a,(hl)		;1d26
	sub b			;1d27
	sub c			;1d28
	and d			;1d29
	and c			;1d2a
	nop			;1d2b
	cp e			;1d2c
	cp a			;1d2d
	nop			;1d2e
	adc a,l			;1d2f
	adc a,h			;1d30
	sbc a,l			;1d31
	sbc a,(hl)		;1d32
	sub b			;1d33
	sub c			;1d34
	and d			;1d35
	and c			;1d36
	nop			;1d37
	sub d			;1d38
	and e			;1d39
	nop			;1d3a
	adc a,l			;1d3b
	sub e			;1d3c
	and h			;1d3d
	sbc a,(hl)		;1d3e
	sub b			;1d3f
	sub c			;1d40
	and d			;1d41
	and c			;1d42
	nop			;1d43
	sub h			;1d44
	and l			;1d45
	nop			;1d46
	adc a,l			;1d47
	sub l			;1d48
	and (hl)		;1d49
	sbc a,(hl)		;1d4a
	sub b			;1d4b
	sub c			;1d4c
	and d			;1d4d
	and c			;1d4e
	nop			;1d4f
	sub (hl)		;1d50
	and a			;1d51
	nop			;1d52
	adc a,l			;1d53
	sub a			;1d54
	xor b			;1d55
	sbc a,(hl)		;1d56
	sub b			;1d57
	sub c			;1d58
	and d			;1d59
	and c			;1d5a
	ld b,007h		;1d5b
	rlca			;1d5d
	inc de			;1d5e
	inc bc			;1d5f
	inc b			;1d60
	ld de,l0010h		;1d61
	nop			;1d64
	nop			;1d65
	nop			;1d66
	ld b,007h		;1d67
	rlca			;1d69
	inc de			;1d6a
	inc bc			;1d6b
	dec b			;1d6c
	ld (de),a		;1d6d
	djnz l1d70h		;1d6e
l1d70h:
	nop			;1d70
	nop			;1d71
	nop			;1d72
	ld b,007h		;1d73
	rlca			;1d75
	inc de			;1d76
	inc bc			;1d77
	ld bc,l100eh		;1d78
	nop			;1d7b
	nop			;1d7c
	nop			;1d7d
	nop			;1d7e
	ld b,007h		;1d7f
	rlca			;1d81
	inc de			;1d82
	inc bc			;1d83
	ld (bc),a		;1d84
	rrca			;1d85
	djnz l1d88h		;1d86
l1d88h:
	jp nz,sub_00c3h		;1d88
	ld b,007h		;1d8b
	rlca			;1d8d
	inc de			;1d8e
	inc bc			;1d8f
	add hl,bc		;1d90
	ld d,010h		;1d91
	nop			;1d93
	ex af,af'		;1d94
	dec d			;1d95
	nop			;1d96
	ld b,007h		;1d97
	rlca			;1d99
	inc de			;1d9a
	inc bc			;1d9b
	dec bc			;1d9c
	jr l1dafh		;1d9d
	nop			;1d9f
	ld a,(bc)		;1da0
	rla			;1da1
	nop			;1da2
	ld b,007h		;1da3
	rlca			;1da5
	inc de			;1da6
	inc bc			;1da7
	dec c			;1da8
	ld a,(de)		;1da9
	djnz l1dach		;1daa
l1dach:
	inc c			;1dac
	add hl,de		;1dad
	nop			;1dae
l1dafh:
	and c			;1daf
	nop			;1db0
	ex af,af'		;1db1
	inc b			;1db2
	ld a,(bc)		;1db3
	ld b,001h		;1db4
	ld (bc),a		;1db6
	djnz l1db9h		;1db7
l1db9h:
	inc b			;1db9
	dec b			;1dba
	ld bc,04801h		;1dbb
	nop			;1dbe
	ld a,(bc)		;1dbf
	ld bc,l001ch		;1dc0
	rlca			;1dc3
	ex af,af'		;1dc4
	ld a,(de)		;1dc5
	ld a,(bc)		;1dc6
	ld bc,l0d08h		;1dc7
	nop			;1dca
	ld d,004h		;1dcb
	dec c			;1dcd
	nop			;1dce
	jr nz,$+3		;1dcf
	ld a,(02000h)		;1dd1
	ex af,af'		;1dd4
	rlca			;1dd5
	nop			;1dd6
	ld bc,l0304h		;1dd7
	dec b			;1dda
	rrca			;1ddb
	inc b			;1ddc
	rla			;1ddd
	nop			;1dde
	rrca			;1ddf
	ld (bc),a		;1de0
	dec bc			;1de1
	ld b,00bh		;1de2
	nop			;1de4
	rrca			;1de5
	ex af,af'		;1de6
	ld bc,l0c00h		;1de7
	ld bc,0050ah		;1dea
	ex af,af'		;1ded
	ld bc,l0012h		;1dee
	djnz l1df5h		;1df1
	inc b			;1df3
	nop			;1df4
l1df5h:
	inc de			;1df5
	ld (bc),a		;1df6
	inc b			;1df7
	ld a,(bc)		;1df8
	rrca			;1df9
	nop			;1dfa
	ld (bc),a		;1dfb
	inc b			;1dfc
	ld bc,l0605h		;1dfd
	ld bc,l090fh		;1e00
	ld a,(bc)		;1e03
	ld bc,sub_0005h		;1e04
	inc d			;1e07
	inc b			;1e08
	ld de,l1600h		;1e09
	ex af,af'		;1e0c
	ld c,00ah		;1e0d
	dec c			;1e0f
	ld (bc),a		;1e10
	ld bc,00d06h		;1e11
	inc b			;1e14
	rlca			;1e15
	nop			;1e16
	rlca			;1e17
	inc b			;1e18
	dec bc			;1e19
	nop			;1e1a
	rlca			;1e1b
	inc b			;1e1c
	add hl,hl		;1e1d
	nop			;1e1e
	ld e,001h		;1e1f
	rlca			;1e21
	nop			;1e22
	inc c			;1e23
	inc b			;1e24
	rst 38h			;1e25
	call z,sub_1000h	;1e26
	ex af,af'		;1e29
	ld a,(bc)		;1e2a
	nop			;1e2b
	rla			;1e2c
	ld (bc),a		;1e2d
	inc (hl)		;1e2e
	nop			;1e2f
	rlca			;1e30
	ld bc,00516h		;1e31
	cp h			;1e34
	nop			;1e35
	dec bc			;1e36
	inc b			;1e37
	add hl,bc		;1e38
	ld b,003h		;1e39
	inc b			;1e3b
	add hl,bc		;1e3c
	nop			;1e3d
	dec bc			;1e3e
	ld bc,0000ah		;1e3f
	rlca			;1e42
	ld bc,sub_0005h+2	;1e43
	ex af,af'		;1e46
	ex af,af'		;1e47
	ex af,af'		;1e48
	nop			;1e49
	inc bc			;1e4a
	ld bc,l000eh		;1e4b
	rla			;1e4e
	ex af,af'		;1e4f
	rrca			;1e50
	nop			;1e51
	inc bc			;1e52
	ex af,af'		;1e53
	dec b			;1e54
	ld a,(bc)		;1e55
	rlca			;1e56
	ld (bc),a		;1e57
	ld (bc),a		;1e58
	ld b,010h		;1e59
	inc b			;1e5b
	ld l,000h		;1e5c
	inc c			;1e5e
	ld (bc),a		;1e5f
	dec bc			;1e60
	inc b			;1e61
	ld d,000h		;1e62
	ex af,af'		;1e64
	ld bc,l0901h		;1e65
	inc c			;1e68
	ex af,af'		;1e69
	ld e,000h		;1e6a
	inc b			;1e6c
	ld bc,l0902h		;1e6d
	ld c,008h		;1e70
	add hl,bc		;1e72
	nop			;1e73
	ld (de),a		;1e74
	inc b			;1e75
	inc de			;1e76
	nop			;1e77
	ld (bc),a		;1e78
	ld (bc),a		;1e79
	ld (bc),a		;1e7a
	ld b,009h		;1e7b
	inc b			;1e7d
	inc de			;1e7e
	nop			;1e7f
	ld b,001h		;1e80
	ex af,af'		;1e82
	nop			;1e83
	ld bc,00601h		;1e84
	nop			;1e87
	ld de,02208h		;1e88
	nop			;1e8b
	inc b			;1e8c
	ex af,af'		;1e8d
	ld bc,l120ah		;1e8e
	ld (bc),a		;1e91
	add hl,bc		;1e92
	ld b,005h		;1e93
	nop			;1e95
	inc c			;1e96
	inc b			;1e97
	add hl,hl		;1e98
	nop			;1e99
	ex af,af'		;1e9a
	ld bc,0050ah		;1e9b
	rrca			;1e9e
	ld bc,l0004h		;1e9f
	dec e			;1ea2
	ex af,af'		;1ea3
	inc c			;1ea4
	ld a,(bc)		;1ea5
	rst 38h			;1ea6
	ld d,c			;1ea7
	nop			;1ea8
	dec bc			;1ea9
	ld (bc),a		;1eaa
	dec sp			;1eab
	nop			;1eac
	ld bc,l0802h		;1ead
	ld a,(bc)		;1eb0
	rlca			;1eb1
	nop			;1eb2
	inc b			;1eb3
	ld bc,l0907h		;1eb4
	ld b,001h		;1eb7
	ld (de),a		;1eb9
	dec b			;1eba
	dec l			;1ebb
	nop			;1ebc
	ld e,002h		;1ebd
	inc h			;1ebf
	nop			;1ec0
	inc c			;1ec1
	ld bc,l090eh		;1ec2
	inc b			;1ec5
	ex af,af'		;1ec6
	rlca			;1ec7
	nop			;1ec8
	ld bc,l0e02h		;1ec9
	ld b,00dh		;1ecc
	nop			;1ece
	rlca			;1ecf
	inc b			;1ed0
	dec c			;1ed1
	dec b			;1ed2
	inc bc			;1ed3
	ld bc,l090bh		;1ed4
	ld a,(de)		;1ed7
	nop			;1ed8
	ld bc,l1408h		;1ed9
	ld a,(bc)		;1edc
	ld (bc),a		;1edd
	ld (bc),a		;1ede
	inc d			;1edf
	nop			;1ee0
	ex af,af'		;1ee1
	ld bc,l001bh		;1ee2
	jr nz,l1ee9h		;1ee5
	rrca			;1ee7
	nop			;1ee8
l1ee9h:
	ld de,l0201h		;1ee9
	add hl,bc		;1eec
	ld bc,07208h		;1eed
	nop			;1ef0
	ex af,af'		;1ef1
	ld (bc),a		;1ef2
	ld (de),a		;1ef3
	nop			;1ef4
	add hl,bc		;1ef5
	ld bc,l0048h		;1ef6
	dec c			;1ef9
	ex af,af'		;1efa
	inc c			;1efb
	nop			;1efc
	rla			;1efd
	inc b			;1efe
	ld a,(de)		;1eff
	nop			;1f00
	ld a,(de)		;1f01
	inc b			;1f02
	ld c,d			;1f03
	nop			;1f04
	ld b,002h		;1f05
	dec bc			;1f07
	nop			;1f08
	dec hl			;1f09
	ex af,af'		;1f0a
	rst 38h			;1f0b
	ld e,c			;1f0c
	nop			;1f0d
	inc b			;1f0e
	dec b			;1f0f
	ex af,af'		;1f10
	inc b			;1f11
	ex af,af'		;1f12
	nop			;1f13
	ld (bc),a		;1f14
	ld (bc),a		;1f15
	inc b			;1f16
	ld b,003h		;1f17
	ld (bc),a		;1f19
	ld hl,l1100h		;1f1a
	ex af,af'		;1f1d
	rlca			;1f1e
l1f1fh:
	ld a,(bc)		;1f1f
l1f20h:
	ld bc,l1a02h		;1f20
	nop			;1f23
	inc d			;1f24
	ld bc,l0024h		;1f25
	ld (de),a		;1f28
	ld (bc),a		;1f29
	ld sp,l0700h		;1f2a
	ld bc,l0909h		;1f2d
	inc bc			;1f30
	ld bc,l00a6h		;1f31
	ld b,005h		;1f34
	add hl,de		;1f36
	inc b			;1f37
	rra			;1f38
	nop			;1f39
	rlca			;1f3a
	inc b			;1f3b
	dec h			;1f3c
	nop			;1f3d
	ld bc,l1202h		;1f3e
	ld b,00eh		;1f41
	ld (bc),a		;1f43
	dec b			;1f44
	nop			;1f45
	dec bc			;1f46
	ex af,af'		;1f47
	inc l			;1f48
	nop			;1f49
	djnz l1f50h		;1f4a
	scf			;1f4c
	nop			;1f4d
	ld (bc),a		;1f4e
	ex af,af'		;1f4f
l1f50h:
	ld d,009h		;1f50
	add hl,bc		;1f52
	ld bc,l0010h		;1f53
	dec bc			;1f56
	ex af,af'		;1f57
	ex af,af'		;1f58
	nop			;1f59
	add hl,de		;1f5a
	inc b			;1f5b
	rra			;1f5c
	nop			;1f5d
	rrca			;1f5e
	ld (bc),a		;1f5f
	inc c			;1f60
	ld b,001h		;1f61
	inc b			;1f63
	rrca			;1f64
	nop			;1f65
	inc de			;1f66
	ld bc,l090bh		;1f67
	inc bc			;1f6a
	ex af,af'		;1f6b
	ld (l0a00h),a		;1f6c
	inc b			;1f6f
	ld bc,l1a00h		;1f70
	ld (bc),a		;1f73
	dec c			;1f74
	nop			;1f75
	ld b,002h		;1f76
	ld a,(bc)		;1f78
	nop			;1f79
	dec d			;1f7a
	ld bc,03effh		;1f7b
	nop			;1f7e
	rrca			;1f7f
	ld bc,l000eh		;1f80
	dec b			;1f83
	dec b			;1f84
	dec bc			;1f85
	nop			;1f86
	dec h			;1f87
	ld (bc),a		;1f88
	djnz l1f8bh		;1f89
l1f8bh:
	inc bc			;1f8b
	ld (bc),a		;1f8c
	ld (de),a		;1f8d
	nop			;1f8e
	dec e			;1f8f
	ld bc,l003ah		;1f90
	djnz l1f97h		;1f93
	inc hl			;1f95
	nop			;1f96
l1f97h:
	inc b			;1f97
	ld (bc),a		;1f98
	ld c,000h		;1f99
	ld b,008h		;1f9b
	inc c			;1f9d
	nop			;1f9e
	ld d,001h		;1f9f
	dec bc			;1fa1
	nop			;1fa2
	ld a,(bc)		;1fa3
	ex af,af'		;1fa4
	ld bc,l0f00h		;1fa5
	ld (bc),a		;1fa8
	jr z,l1fabh		;1fa9
l1fabh:
	add hl,bc		;1fab
	ld (bc),a		;1fac
	inc de			;1fad
	nop			;1fae
	ld (de),a		;1faf
	ld bc,l0026h		;1fb0
l1fb3h:
	ld c,004h		;1fb3
	ld (l0800h),hl		;1fb5
l1fb8h:
	inc b			;1fb8
	ld l,c			;1fb9
	nop			;1fba
	ld de,l1908h		;1fbb
	nop			;1fbe
	inc e			;1fbf
	inc b			;1fc0
	cpl			;1fc1
	nop			;1fc2
	ld b,001h		;1fc3
	inc bc			;1fc5
	nop			;1fc6
	dec c			;1fc7
	ld (bc),a		;1fc8
	dec bc			;1fc9
	nop			;1fca
	rlca			;1fcb
	ld (bc),a		;1fcc
	ld d,c			;1fcd
	nop			;1fce
	rlca			;1fcf
	ex af,af'		;1fd0
	rlca			;1fd1
	nop			;1fd2
	djnz l1fddh		;1fd3
	rrca			;1fd5
	nop			;1fd6
	ex af,af'		;1fd7
	inc b			;1fd8
	ld a,(de)		;1fd9
	nop			;1fda
	dec bc			;1fdb
	inc b			;1fdc
l1fddh:
	ld b,h			;1fdd
	nop			;1fde
	inc e			;1fdf
	ex af,af'		;1fe0
	add hl,bc		;1fe1
	add hl,bc		;1fe2
	inc bc			;1fe3
	ld bc,sub_0005h		;1fe4
	rlca			;1fe7
	inc b			;1fe8
	dec c			;1fe9
	ld (bc),a		;1fea
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
