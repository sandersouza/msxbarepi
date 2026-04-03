; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x0000 -o docs/reverse-engineering/issues/issue-188/gradius2e_banks/bank14.asm /tmp/gradius2e_bank14.bin

	org 00000h

l0000h:
	nop			;0000
l0001h:
	ld d,00eh		;0001
l0003h:
	ld (bc),a		;0003
	nop			;0004
	nop			;0005
	inc bc			;0006
	rla			;0007
	ld hl,l0200h		;0008
	nop			;000b
l000ch:
	nop			;000c
	jr $+17			;000d
l000fh:
	inc bc			;000f
l0010h:
	nop			;0010
l0011h:
	ld (bc),a		;0011
	nop			;0012
	dec de			;0013
l0014h:
	inc de			;0014
	nop			;0015
	ld bc,00500h		;0016
	add hl,de		;0019
	ld c,000h		;001a
l001ch:
	nop			;001c
	ld bc,l1907h		;001d
	dec c			;0020
	inc bc			;0021
	nop			;0022
	ld (bc),a		;0023
	nop			;0024
	dec de			;0025
l0026h:
	jr nz,l002ah		;0026
	nop			;0028
l0029h:
	nop			;0029
l002ah:
	dec b			;002a
	ld a,(de)		;002b
	rra			;002c
	nop			;002d
	ld bc,00600h		;002e
	add hl,de		;0031
	rrca			;0032
	nop			;0033
	nop			;0034
	ld (bc),a		;0035
	nop			;0036
	ld d,012h		;0037
	nop			;0039
	inc bc			;003a
	nop			;003b
	ld bc,l1018h		;003c
	ld (bc),a		;003f
	nop			;0040
	ld (bc),a		;0041
	inc bc			;0042
l0043h:
	dec de			;0043
	ld de,l0222h		;0044
	ld bc,l1d00h		;0047
	ld de,l0001h+1		;004a
	nop			;004d
l004eh:
	add hl,bc		;004e
	add hl,de		;004f
	ld (de),a		;0050
	nop			;0051
	inc bc			;0052
	nop			;0053
	dec bc			;0054
	ld e,012h		;0055
	inc bc			;0057
l0058h:
	nop			;0058
	ld (bc),a		;0059
	ld bc,l121eh		;005a
	nop			;005d
	ld bc,l0001h		;005e
	dec de			;0061
l0062h:
	ld (de),a		;0062
	nop			;0063
	ld (bc),a		;0064
	nop			;0065
l0066h:
	ld a,(bc)		;0066
	ld a,(de)		;0067
	inc de			;0068
	ld bc,l0001h+1		;0069
	inc b			;006c
	add hl,de		;006d
	inc c			;006e
	nop			;006f
	nop			;0070
	ld bc,01705h		;0071
	dec c			;0074
	nop			;0075
	ld (bc),a		;0076
	nop			;0077
	nop			;0078
	ld a,(de)		;0079
	jr nz,l007dh		;007a
	nop			;007c
l007dh:
	inc bc			;007d
l007eh:
	nop			;007e
	dec de			;007f
	ld c,000h		;0080
	inc bc			;0082
	nop			;0083
	nop			;0084
	add hl,de		;0085
	ld c,000h		;0086
	nop			;0088
	ld bc,l1906h		;0089
	ld hl,l0302h		;008c
	nop			;008f
	inc bc			;0090
	ld a,(de)		;0091
	dec c			;0092
	nop			;0093
	ld bc,l0001h+1		;0094
	dec de			;0097
	nop			;0098
	ld bc,l0100h		;0099
	inc bc			;009c
	nop			;009d
	inc bc			;009e
	nop			;009f
	inc bc			;00a0
	nop			;00a1
	ld (bc),a		;00a2
	nop			;00a3
	nop			;00a4
	ld (bc),a		;00a5
	ld bc,l0100h		;00a6
	nop			;00a9
	ld bc,l0200h		;00aa
	inc bc			;00ad
	nop			;00ae
	ld bc,00300h		;00af
	nop			;00b2
l00b3h:
	ld (bc),a		;00b3
l00b4h:
	inc bc			;00b4
	nop			;00b5
l00b6h:
	nop			;00b6
	nop			;00b7
	ld bc,l0003h		;00b8
	ld (bc),a		;00bb
	inc bc			;00bc
	nop			;00bd
	ld (bc),a		;00be
	nop			;00bf
l00c0h:
	ld (bc),a		;00c0
	inc bc			;00c1
	nop			;00c2
	inc bc			;00c3
	ld bc,l0200h		;00c4
	nop			;00c7
	nop			;00c8
	ld bc,l0301h		;00c9
	nop			;00cc
	nop			;00cd
	inc bc			;00ce
	nop			;00cf
	ld (bc),a		;00d0
	inc bc			;00d1
	ld bc,l0000h		;00d2
	inc bc			;00d5
	ld bc,l0001h+1		;00d6
	ld bc,l0001h+1		;00d9
	inc bc			;00dc
	ld bc,l0001h		;00dd
	nop			;00e0
	ld bc,l0000h		;00e1
	inc bc			;00e4
	nop			;00e5
	ld bc,l0100h		;00e6
	ld (bc),a		;00e9
	nop			;00ea
	ld (bc),a		;00eb
	nop			;00ec
	ld (bc),a		;00ed
l00eeh:
	inc bc			;00ee
	nop			;00ef
	ld bc,l0000h		;00f0
	nop			;00f3
	ld bc,l0003h		;00f4
	inc bc			;00f7
	rra			;00f8
	ld bc,l0100h		;00f9
	nop			;00fc
	dec de			;00fd
	ld c,000h		;00fe
l0100h:
	ld (bc),a		;0100
l0101h:
	nop			;0101
l0102h:
	inc bc			;0102
l0103h:
	ld a,(de)		;0103
	ld hl,l0301h		;0104
	ld (bc),a		;0107
	nop			;0108
	dec de			;0109
	jr nz,l010ch		;010a
l010ch:
	inc bc			;010c
	nop			;010d
	dec b			;010e
	ld a,(de)		;010f
l0110h:
	ld c,002h		;0110
	nop			;0112
	ld bc,l1e08h		;0113
	ld hl,l0302h		;0116
	nop			;0119
	dec b			;011a
	rla			;011b
	dec c			;011c
	nop			;011d
	ld bc,l0003h		;011e
l0121h:
	jr l0142h		;0121
	nop			;0123
l0124h:
	ld bc,l0001h+1		;0124
	dec de			;0127
	rra			;0128
	nop			;0129
	ld bc,l0001h		;012a
	jr l014fh		;012d
	nop			;012f
	ld (bc),a		;0130
	inc bc			;0131
	ld bc,l0c16h		;0132
	ld (bc),a		;0135
	nop			;0136
	inc bc			;0137
	nop			;0138
	rla			;0139
	ld c,000h		;013a
	ld bc,l0200h		;013c
	jr l0150h		;013f
	inc bc			;0141
l0142h:
	nop			;0142
	ld (bc),a		;0143
	inc b			;0144
	ld a,(de)		;0145
	ld (de),a		;0146
	nop			;0147
	nop			;0148
	ld bc,l1b00h		;0149
	ld de,00300h		;014c
l014fh:
	ld (bc),a		;014f
l0150h:
	ld b,01eh		;0150
	inc de			;0152
	nop			;0153
	ld (bc),a		;0154
	nop			;0155
	ld bc,00d19h		;0156
	ld (bc),a		;0159
	ld (bc),a		;015a
	nop			;015b
	inc bc			;015c
	dec de			;015d
	jr nz,l0160h		;015e
l0160h:
	inc bc			;0160
	ld bc,l1c00h		;0161
	ld c,000h		;0164
	inc bc			;0166
	nop			;0167
	dec b			;0168
	rla			;0169
	ld c,001h		;016a
	nop			;016c
	ld (bc),a		;016d
	ld bc,l0f1ah		;016e
	nop			;0171
	inc bc			;0172
	nop			;0173
	ld (bc),a		;0174
	dec de			;0175
	ld (de),a		;0176
	ld (bc),a		;0177
	ld bc,00300h		;0178
	dec de			;017b
	ld (de),a		;017c
	inc bc			;017d
	nop			;017e
	inc bc			;017f
	nop			;0180
	add hl,de		;0181
	inc de			;0182
	nop			;0183
	ld (bc),a		;0184
	nop			;0185
	dec bc			;0186
	add hl,de		;0187
	ld c,000h		;0188
	nop			;018a
	inc bc			;018b
	add hl,bc		;018c
	ld e,021h		;018d
	ld bc,l0000h		;018f
	ld a,(bc)		;0192
	ld e,00dh		;0193
	nop			;0195
	ld bc,l0003h		;0196
	dec e			;0199
	inc c			;019a
	inc bc			;019b
	ld (bc),a		;019c
	nop			;019d
	ld (bc),a		;019e
	dec de			;019f
	ld hl,00300h		;01a0
	nop			;01a3
	ld bc,0201ah		;01a4
	ld bc,l0200h		;01a7
	nop			;01aa
	add hl,de		;01ab
	ld de,l0100h		;01ac
	nop			;01af
	inc bc			;01b0
	inc e			;01b1
	ld (de),a		;01b2
	nop			;01b3
	ld (bc),a		;01b4
	ld (bc),a		;01b5
	nop			;01b6
	ld d,010h		;01b7
	nop			;01b9
	ld bc,l0001h+1		;01ba
	rla			;01bd
	ld (de),a		;01be
	inc bc			;01bf
	nop			;01c0
	inc bc			;01c1
	nop			;01c2
	jr l01d8h		;01c3
	nop			;01c5
	ld (bc),a		;01c6
	nop			;01c7
	ld bc,02119h		;01c8
	nop			;01cb
	nop			;01cc
	ld bc,l1b02h		;01cd
	jr nz,l01d3h		;01d0
	inc bc			;01d2
l01d3h:
	nop			;01d3
	nop			;01d4
	dec de			;01d5
	dec c			;01d6
	ld (bc),a		;01d7
l01d8h:
	ld (bc),a		;01d8
	nop			;01d9
	dec bc			;01da
	ld a,(de)		;01db
	ld hl,l0100h		;01dc
	inc bc			;01df
	nop			;01e0
	add hl,de		;01e1
	ld hl,l0200h		;01e2
	ld (bc),a		;01e5
	nop			;01e6
	ld e,01fh		;01e7
	nop			;01e9
	ld bc,l0301h		;01ea
	ld a,(de)		;01ed
	dec bc			;01ee
	ld bc,l0001h		;01ef
	dec b			;01f2
	jr nz,l0203h		;01f3
	ld e,002h		;01f5
	ld bc,l1c08h+1		;01f7
	ld a,(bc)		;01fa
	dec e			;01fb
	ld bc,l0403h		;01fc
	inc e			;01ff
l0200h:
	ld c,01dh		;0200
l0202h:
	inc bc			;0202
l0203h:
	ld (bc),a		;0203
	add hl,bc		;0204
	dec de			;0205
	dec bc			;0206
	ld bc,l0101h		;0207
	ex af,af'		;020a
	inc e			;020b
	rrca			;020c
	nop			;020d
	ld (bc),a		;020e
	nop			;020f
l0210h:
	add hl,bc		;0210
	dec de			;0211
	ld c,001h		;0212
	nop			;0214
	inc bc			;0215
	rlca			;0216
	dec de			;0217
	ld c,000h		;0218
	ld bc,l0602h		;021a
	jr nz,l022ch		;021d
	ld bc,l0101h		;021f
l0222h:
	rlca			;0222
	dec de			;0223
l0224h:
	inc c			;0224
	nop			;0225
	inc bc			;0226
	ld (bc),a		;0227
	add hl,bc		;0228
	inc e			;0229
	rrca			;022a
	nop			;022b
l022ch:
	ld (bc),a		;022c
	ld bc,l1c04h		;022d
	ld a,(bc)		;0230
	ld e,001h		;0231
	ld bc,l1c08h		;0233
	rrca			;0236
	nop			;0237
	nop			;0238
	nop			;0239
	add hl,bc		;023a
	inc e			;023b
	ld c,01dh		;023c
	ld bc,l0700h+1		;023e
	dec de			;0241
	dec c			;0242
	ld bc,l0003h		;0243
	inc b			;0246
	inc e			;0247
	inc c			;0248
	ld (bc),a		;0249
	nop			;024a
	nop			;024b
	add hl,bc		;024c
	dec de			;024d
	ld c,01eh		;024e
l0250h:
	nop			;0250
	inc bc			;0251
	ex af,af'		;0252
	inc e			;0253
l0254h:
	ld a,(bc)		;0254
	dec e			;0255
	ld bc,l0901h		;0256
	inc e			;0259
	rrca			;025a
	ld bc,l0202h		;025b
	add hl,bc		;025e
	dec de			;025f
	inc c			;0260
	ld (bc),a		;0261
	ld bc,l0703h		;0262
	inc e			;0265
	djnz l028bh		;0266
	nop			;0268
	ld bc,02512h		;0269
	ld de,l0224h		;026c
	nop			;026f
	inc de			;0270
	ld h,00dh		;0271
	nop			;0273
	ld bc,l0503h		;0274
	jr nz,$+17		;0277
	inc bc			;0279
	ld bc,00600h		;027a
	jr nz,l0289h		;027d
	dec e			;027f
	nop			;0280
	nop			;0281
	rlca			;0282
	inc e			;0283
	ld c,01eh		;0284
	ld bc,l0901h+1		;0286
l0289h:
	inc e			;0289
	rrca			;028a
l028bh:
	ld bc,l0102h		;028b
	ex af,af'		;028e
	inc e			;028f
	dec c			;0290
	nop			;0291
	nop			;0292
	ld (bc),a		;0293
	add hl,bc		;0294
	inc e			;0295
	rrca			;0296
	inc bc			;0297
	ld bc,l0400h+1		;0298
	inc e			;029b
	inc c			;029c
	ld bc,00300h		;029d
	rlca			;02a0
	jr nz,$+15		;02a1
	ld (bc),a		;02a3
	nop			;02a4
	ld (bc),a		;02a5
	ex af,af'		;02a6
	dec de			;02a7
	ld a,(bc)		;02a8
	dec e			;02a9
	ld bc,l0903h		;02aa
	inc e			;02ad
	rrca			;02ae
	ld bc,l0100h		;02af
	rlca			;02b2
	dec de			;02b3
	inc c			;02b4
	nop			;02b5
	nop			;02b6
	nop			;02b7
	add hl,bc		;02b8
	inc e			;02b9
	ld c,01eh		;02ba
	inc bc			;02bc
	ld bc,l1c04h		;02bd
	dec c			;02c0
	ld bc,l0001h		;02c1
	add hl,bc		;02c4
	dec de			;02c5
	ld c,01dh		;02c6
	ld (bc),a		;02c8
	ld bc,01c07h		;02c9
	djnz $+37		;02cc
	ld (bc),a		;02ce
	nop			;02cf
	ld (de),a		;02d0
	dec h			;02d1
	ld de,l0124h		;02d2
	ld bc,02613h		;02d5
	dec c			;02d8
	nop			;02d9
	ld bc,l0800h		;02da
	dec de			;02dd
	ld c,01eh		;02de
	nop			;02e0
	ld bc,l1c04h		;02e1
	dec c			;02e4
	nop			;02e5
	nop			;02e6
	inc bc			;02e7
	rlca			;02e8
	dec de			;02e9
	rrca			;02ea
	ld (bc),a		;02eb
	ld (bc),a		;02ec
	ld bc,02006h		;02ed
	ld c,01dh		;02f0
	ld bc,00500h		;02f2
	jr nz,l030bh		;02f5
	daa			;02f7
	ld (bc),a		;02f8
	nop			;02f9
	rla			;02fa
	ld hl,(02815h)		;02fb
	ld bc,l1802h		;02fe
l0301h:
	dec hl			;0301
l0302h:
	ld d,029h		;0302
	ld bc,01903h		;0304
	inc l			;0307
	rrca			;0308
	dec e			;0309
	nop			;030a
l030bh:
	ld bc,l1c08h		;030b
	ld c,01dh		;030e
	ld bc,l0903h		;0310
	inc e			;0313
l0314h:
	ld a,(bc)		;0314
	ld e,000h		;0315
	ld (bc),a		;0317
	rlca			;0318
	dec de			;0319
	rrca			;031a
	nop			;031b
	ld bc,00501h		;031c
	jr nz,l032dh		;031f
	ld bc,l0203h		;0321
	add hl,bc		;0324
	dec de			;0325
l0326h:
	dec bc			;0326
	inc bc			;0327
	inc bc			;0328
	nop			;0329
	inc b			;032a
	inc e			;032b
	rrca			;032c
l032dh:
	nop			;032d
	ld bc,l0801h		;032e
	inc e			;0331
	ld c,01eh		;0332
	inc bc			;0334
	nop			;0335
	add hl,bc		;0336
	dec de			;0337
	inc d			;0338
	daa			;0339
	ld bc,01703h		;033a
	ld hl,(02815h)		;033d
	nop			;0340
	ld bc,02b18h		;0341
	ld d,029h		;0344
	ld bc,l1900h		;0346
	inc l			;0349
	dec bc			;034a
	ld bc,l0103h		;034b
	add hl,bc		;034e
	dec de			;034f
	djnz l0375h		;0350
	inc bc			;0352
	nop			;0353
	ld (de),a		;0354
	dec h			;0355
	ld de,l0124h		;0356
	ld (bc),a		;0359
	inc de			;035a
	ld h,00fh		;035b
	dec e			;035d
	inc bc			;035e
	ld bc,01c07h		;035f
	ld c,01eh		;0362
	ld bc,l0802h		;0364
	inc e			;0367
	dec c			;0368
	ld bc,l0200h+1		;0369
	add hl,bc		;036c
	inc e			;036d
	rrca			;036e
	inc bc			;036f
	nop			;0370
	ld bc,l1b04h		;0371
	inc c			;0374
l0375h:
	ld (bc),a		;0375
	nop			;0376
	nop			;0377
	add hl,bc		;0378
	dec de			;0379
	dec bc			;037a
	nop			;037b
	ld bc,l0700h		;037c
	jr nz,l038bh		;037f
	dec e			;0381
	ld (bc),a		;0382
	ld (bc),a		;0383
	ex af,af'		;0384
	dec de			;0385
	ld c,01eh		;0386
	ld bc,l0900h		;0388
l038bh:
	dec de			;038b
	inc c			;038c
	nop			;038d
	nop			;038e
	ld (bc),a		;038f
	rlca			;0390
	jr nz,l03b5h		;0391
	ld bc,l0100h		;0393
	nop			;0396
	ld hl,l0200h+1		;0397
	ld de,l0001h		;039a
	inc bc			;039d
	nop			;039e
	nop			;039f
	dec d			;03a0
	ld hl,l0010h		;03a1
	inc bc			;03a4
	djnz $+20		;03a5
	ld (l0100h),hl		;03a7
	inc bc			;03aa
	inc bc			;03ab
	ld d,024h		;03ac
	ld (bc),a		;03ae
	ld de,l0011h		;03af
	ld de,l1000h		;03b2
l03b5h:
	nop			;03b5
	dec d			;03b6
	ld hl,00300h		;03b7
	ld (bc),a		;03ba
	nop			;03bb
	ld (de),a		;03bc
	dec h			;03bd
	inc bc			;03be
	nop			;03bf
	ld b,021h		;03c0
	inc de			;03c2
	dec h			;03c3
	djnz $+4		;03c4
	inc d			;03c6
	ld (02416h),hl		;03c7
	djnz l03cch		;03ca
l03cch:
	inc de			;03cc
	dec h			;03cd
	ld de,l0100h		;03ce
	nop			;03d1
	inc c			;03d2
	inc h			;03d3
	inc bc			;03d4
	ld de,l1510h		;03d5
	ld hl,l1000h		;03d8
	nop			;03db
	inc bc			;03dc
	ld a,(de)		;03dd
	ld (l0210h),hl		;03de
	dec d			;03e1
	ld hl,0171bh		;03e2
	nop			;03e5
	ld de,02416h		;03e6
	ld a,(de)		;03e9
	add hl,de		;03ea
	ld de,l0121h		;03eb
	ld de,0251bh		;03ee
	inc bc			;03f1
	ld (l0110h),hl		;03f2
	ld d,024h		;03f5
	djnz l041eh		;03f7
	dec d			;03f9
	ld hl,l0003h		;03fa
	djnz l0423h		;03fd
	dec e			;03ff
l0400h:
	ld (l0011h),hl		;0400
l0403h:
	nop			;0403
sub_0404h:
	djnz l0424h		;0404
	jr l0408h		;0406
l0408h:
	ld b,021h		;0408
	inc e			;040a
	rra			;040b
	add hl,de		;040c
	inc bc			;040d
	ld d,024h		;040e
	ld de,02520h		;0410
	ld (bc),a		;0413
	nop			;0414
	nop			;0415
	djnz l042eh		;0416
	inc h			;0418
	ld de,02615h		;0419
	nop			;041c
	nop			;041d
l041eh:
	nop			;041e
	ld (bc),a		;041f
	inc d			;0420
	daa			;0421
	inc bc			;0422
l0423h:
	nop			;0423
l0424h:
	djnz $+19		;0424
	ld (de),a		;0426
	jr z,l0429h		;0427
l0429h:
	nop			;0429
	inc bc			;042a
	djnz l0439h		;042b
	add hl,hl		;042d
l042eh:
	djnz l0430h		;042e
l0430h:
	ld bc,l0001h		;0430
	ld de,00300h		;0433
	ld de,l0603h		;0436
l0439h:
	ld hl,l1126h		;0439
	ld bc,l1d03h		;043c
	ld (01028h),hl		;043f
	ld bc,l1e10h		;0442
	jr l046eh		;0445
	ld bc,01c11h		;0447
	rra			;044a
	add hl,de		;044b
	add hl,hl		;044c
	nop			;044d
	ld bc,02003h		;044e
	dec h			;0451
	inc bc			;0452
l0453h:
	nop			;0453
	djnz l0456h		;0454
l0456h:
	inc c			;0456
	inc h			;0457
	nop			;0458
	ld de,l1000h		;0459
	nop			;045c
	ld bc,l0124h+2		;045d
	nop			;0460
	inc bc			;0461
	dec d			;0462
	ld h,027h		;0463
	nop			;0465
	ld (bc),a		;0466
	ld de,0271ah		;0467
	add hl,hl		;046a
	ld de,l0200h		;046b
l046eh:
	dec de			;046e
	jr z,l0471h		;046f
l0471h:
	dec d			;0471
	ld h,001h		;0472
	inc c			;0474
	add hl,hl		;0475
	ld de,02916h		;0476
	djnz l047bh		;0479
l047bh:
	djnz l0483h		;047b
	ld h,010h		;047d
	inc bc			;047f
	nop			;0480
	ld (bc),a		;0481
	ld a,(de)		;0482
l0483h:
	jr z,l0485h		;0483
l0485h:
	ld de,l1102h		;0485
	dec de			;0488
	jr z,l048bh		;0489
l048bh:
	djnz l048dh		;048b
l048dh:
	ld de,02916h		;048d
	ld (bc),a		;0490
	djnz $+23		;0491
	ld h,000h		;0493
	nop			;0495
	inc bc			;0496
	ld bc,02812h		;0497
	ld de,l0210h		;049a
	ld (bc),a		;049d
sub_049eh:
	ld d,029h		;049e
	inc bc			;04a0
	inc bc			;04a1
	ld (bc),a		;04a2
	djnz l04a5h		;04a3
l04a5h:
	ld (bc),a		;04a5
	ld de,l0001h+1		;04a6
	ld b,021h		;04a9
	djnz l04adh		;04ab
l04adh:
	djnz $+4		;04ad
	rlca			;04af
	ld (l0210h),hl		;04b0
	ld de,l0800h		;04b3
	dec c			;04b6
	nop			;04b7
	nop			;04b8
	djnz l04bfh		;04b9
	add hl,bc		;04bb
	ld c,011h		;04bc
	ld (bc),a		;04be
l04bfh:
	ld bc,l0a05h		;04bf
	rrca			;04c2
	nop			;04c3
	ld de,l0000h		;04c4
	dec bc			;04c7
	inc hl			;04c8
	inc bc			;04c9
	ld h,003h		;04ca
	djnz $+14		;04cc
	inc h			;04ce
	djnz $+41		;04cf
	nop			;04d1
	ld de,l0001h+1		;04d2
	nop			;04d5
	jr z,l04d9h		;04d6
	ld (bc),a		;04d8
l04d9h:
	ld bc,l0811h		;04d9
	add hl,hl		;04dc
	djnz l04dfh		;04dd
l04dfh:
	nop			;04df
	inc b			;04e0
	add hl,bc		;04e1
	nop			;04e2
	ld (bc),a		;04e3
	ld de,00500h		;04e4
	ld a,(bc)		;04e7
	dec d			;04e8
	ld hl,01101h		;04e9
	nop			;04ec
	dec bc			;04ed
	ld d,024h		;04ee
	ld b,021h		;04f0
	ld (bc),a		;04f2
	nop			;04f3
	nop			;04f4
	nop			;04f5
	rlca			;04f6
	ld (l1000h),hl		;04f7
	ld de,l0802h		;04fa
	dec c			;04fd
	dec d			;04fe
	ld hl,l0400h		;04ff
l0502h:
	add hl,bc		;0502
l0503h:
	ld c,013h		;0503
	ld (l0510h),hl		;0505
	ld a,(bc)		;0508
	rrca			;0509
	ld (de),a		;050a
	dec h			;050b
	nop			;050c
	nop			;050d
	dec bc			;050e
	inc hl			;050f
l0510h:
	inc c			;0510
	inc h			;0511
	ld (bc),a		;0512
	ld de,02416h		;0513
	ld de,l0302h		;0516
	ld de,l0200h		;0519
	djnz l051eh		;051c
l051eh:
	dec d			;051e
	ld hl,02106h		;051f
	nop			;0522
	inc bc			;0523
	rlca			;0524
	ld (0240ch),hl		;0525
	dec d			;0528
	ld hl,00d08h		;0529
	ld de,l1d00h		;052c
	ld (l0e09h),hl		;052f
	nop			;0532
	djnz l0553h		;0533
	ld (l0f0ah),hl		;0535
	inc bc			;0538
	inc e			;0539
	rra			;053a
	dec h			;053b
	dec bc			;053c
	inc hl			;053d
	ld de,02000h		;053e
	inc hl			;0541
	ld d,024h		;0542
	djnz l0548h		;0544
	ld d,024h		;0546
l0548h:
	nop			;0548
	djnz l054eh		;0549
	dec d			;054b
	ld h,000h		;054c
l054eh:
	ld h,000h		;054e
	ld bc,0290ch		;0550
l0553h:
	ld de,00629h		;0553
	ld h,002h		;0556
	nop			;0558
	nop			;0559
	nop			;055a
	ld a,(de)		;055b
	daa			;055c
	djnz l0562h		;055d
	ex af,af'		;055f
	djnz l057dh		;0560
l0562h:
	jr z,l0575h		;0562
	inc b			;0564
	add hl,bc		;0565
	ld bc,02916h		;0566
	inc bc			;0569
	dec b			;056a
	ld a,(bc)		;056b
	ld h,002h		;056c
	ld (bc),a		;056e
	djnz l0571h		;056f
l0571h:
	dec bc			;0571
	jr z,l0585h		;0572
	nop			;0574
l0575h:
	nop			;0575
	ld (bc),a		;0576
	ld de,l0029h		;0577
	ld de,02115h		;057a
l057dh:
	ld de,02106h		;057d
	inc bc			;0580
	rlca			;0581
	ld (l0c02h),hl		;0582
l0585h:
	inc h			;0585
	ld bc,00d08h		;0586
	ld bc,l0010h		;0589
	inc b			;058c
	add hl,bc		;058d
	ld c,010h		;058e
	ld hl,l0503h		;0590
	ld a,(bc)		;0593
	rrca			;0594
	nop			;0595
	ld (l0010h),hl		;0596
	dec bc			;0599
	inc hl			;059a
	djnz l05c2h		;059b
	ld de,l0c01h		;059d
	inc h			;05a0
	ld (bc),a		;05a1
	inc h			;05a2
	nop			;05a3
	ld (bc),a		;05a4
	inc bc			;05a5
	nop			;05a6
	ld de,02606h		;05a7
	nop			;05aa
	djnz l05c2h		;05ab
	ld hl,0271ah		;05ad
	ld bc,l1503h		;05b0
	ld (0281bh),hl		;05b3
	ld de,l1300h		;05b6
	dec h			;05b9
	inc c			;05ba
	add hl,hl		;05bb
	ld (bc),a		;05bc
	ld bc,0240ch		;05bd
	ld h,000h		;05c0
l05c2h:
	inc bc			;05c2
	nop			;05c3
	ld de,02808h		;05c4
	djnz l05c9h		;05c7
l05c9h:
	nop			;05c9
	inc b			;05ca
	add hl,bc		;05cb
	daa			;05cc
	dec d			;05cd
	ld hl,l0503h		;05ce
	ld a,(bc)		;05d1
	add hl,hl		;05d2
	ld d,024h		;05d3
	ld de,l0b01h		;05d5
	jr nz,$+13		;05d8
	nop			;05da
	ld bc,04007h		;05db
	ld hl,l0b0ch		;05de
	nop			;05e1
	ex af,af'		;05e2
	inc b			;05e3
	ld (l0026h),hl		;05e4
	nop			;05e7
	add hl,bc		;05e8
	dec b			;05e9
	ld (l0b26h),hl		;05ea
	inc bc			;05ed
	add hl,bc		;05ee
	ld b,d			;05ef
	inc hl			;05f0
	daa			;05f1
	inc c			;05f2
	nop			;05f3
	ld a,(de)		;05f4
	ld b,c			;05f5
	inc h			;05f6
	ld h,00bh		;05f7
	dec bc			;05f9
	ld c,042h		;05fa
	inc h			;05fc
	inc l			;05fd
	nop			;05fe
	ld de,l0b13h		;05ff
l0602h:
	inc h			;0602
l0603h:
	ld h,000h		;0603
	ld (de),a		;0605
	inc d			;0606
	inc c			;0607
	ld (l0b26h),hl		;0608
	ld de,l0b15h		;060b
	inc hl			;060e
	ld h,00bh		;060f
	ld (de),a		;0611
	ld d,00bh		;0612
	inc h			;0614
	inc l			;0615
	inc c			;0616
	dec de			;0617
	rla			;0618
	dec bc			;0619
	inc h			;061a
	ld a,(03938h)		;061b
	inc de			;061e
	inc c			;061f
	ld a,03bh		;0620
	inc a			;0622
	jr c,l063bh		;0623
	dec bc			;0625
	dec a			;0626
	add hl,sp		;0627
	ld a,(l1738h)		;0628
	dec de			;062b
	add hl,hl		;062c
	inc a			;062d
	jr c,l066bh		;062e
	ld a,(de)		;0630
	ld b,c			;0631
	add hl,hl		;0632
	dec bc			;0633
	nop			;0634
	dec bc			;0635
	ld c,042h		;0636
	jr z,l0655h		;0638
	dec bc			;063a
l063bh:
	ld de,00c0fh		;063b
	ld hl,(l0b1bh)		;063e
	dec bc			;0641
	rla			;0642
	dec bc			;0643
	jr z,l0651h		;0644
	nop			;0646
	inc c			;0647
	ld a,(de)		;0648
	ld b,c			;0649
	add hl,hl		;064a
	nop			;064b
	ld bc,l090bh		;064c
	dec b			;064f
	add hl,hl		;0650
l0651h:
	nop			;0651
	nop			;0652
	dec bc			;0653
	ld a,(bc)		;0654
l0655h:
	ld b,028h		;0655
	dec bc			;0657
	inc c			;0658
	nop			;0659
	add hl,bc		;065a
	ld b,c			;065b
	ld hl,(l0b1bh)		;065c
	inc c			;065f
	ld a,(de)		;0660
	ld b,c			;0661
	ld hl,l0b00h		;0662
	ld de,0420eh		;0665
	ld (l0326h),hl		;0668
l066bh:
	ld de,l0b13h		;066b
	inc hl			;066e
	daa			;066f
	nop			;0670
	ld (de),a		;0671
	inc d			;0672
	inc c			;0673
	inc h			;0674
	inc l			;0675
	ld bc,l1510h+1		;0676
	dec bc			;0679
	inc h			;067a
	inc l			;067b
	dec bc			;067c
	ld (de),a		;067d
	ld d,00bh		;067e
	ld (l0026h),hl		;0680
	ld de,l0b15h		;0683
	dec h			;0686
	dec bc			;0687
	inc c			;0688
	ld de,00c15h		;0689
	jr z,l0699h		;068c
	nop			;068e
	ld (de),a		;068f
	ld d,00bh		;0690
	ld hl,(l000ch)		;0692
	ld (de),a		;0695
	inc d			;0696
	inc c			;0697
	dec h			;0698
l0699h:
	nop			;0699
	dec bc			;069a
	dec de			;069b
	rla			;069c
	dec bc			;069d
	ld hl,0393ah		;069e
	ld a,(03a0fh)		;06a1
	ld a,038h		;06a4
	jr c,l06e0h		;06a6
	ccf			;06a8
	jr c,l06e8h		;06a9
	inc a			;06ab
	jr c,l06e6h		;06ac
	jr c,l06ebh		;06ae
	add hl,hl		;06b0
	dec bc			;06b1
	inc a			;06b2
	jr c,l06f0h		;06b3
	ld b,b			;06b5
	jr z,l06b8h		;06b6
l06b8h:
	nop			;06b8
	inc c			;06b9
	ex af,af'		;06ba
	inc b			;06bb
	ld hl,(l000ch)		;06bc
	dec bc			;06bf
	add hl,bc		;06c0
	dec b			;06c1
	add hl,hl		;06c2
	dec de			;06c3
	dec bc			;06c4
	nop			;06c5
	ld a,(bc)		;06c6
	ld b,029h		;06c7
	nop			;06c9
	dec bc			;06ca
	nop			;06cb
	dec c			;06cc
	ld b,c			;06cd
	jr z,l06ebh		;06ce
	nop			;06d0
	ld de,0420eh		;06d1
	ld hl,(l0000h)		;06d4
	ld de,l0b17h		;06d7
	ld hl,l0b00h		;06da
	ld (de),a		;06dd
	jr l06ech		;06de
l06e0h:
	ld (l0026h),hl		;06e0
	ld (de),a		;06e3
	djnz $+66		;06e4
l06e6h:
	inc hl			;06e6
	daa			;06e7
l06e8h:
	nop			;06e8
	dec de			;06e9
	ex af,af'		;06ea
l06ebh:
	inc b			;06eb
l06ech:
	inc h			;06ec
	inc l			;06ed
	nop			;06ee
	dec bc			;06ef
l06f0h:
	add hl,bc		;06f0
	dec b			;06f1
	inc h			;06f2
	ld h,00bh		;06f3
	nop			;06f5
	ld c,042h		;06f6
	inc h			;06f8
	inc l			;06f9
	dec bc			;06fa
	ld a,(l000fh)		;06fb
	inc h			;06fe
	inc l			;06ff
l0700h:
	ld a,(03f38h)		;0700
l0703h:
	add hl,sp		;0703
	ld (0383ah),hl		;0704
	dec sp			;0707
	rla			;0708
	inc a			;0709
	ld a,038h		;070a
	jr c,l0720h		;070c
	jr l071bh		;070e
	ld (03b3ch),hl		;0710
l0713h:
	ex af,af'		;0713
	inc b			;0714
	dec bc			;0715
	ld (l1b26h),hl		;0716
	add hl,bc		;0719
	dec b			;071a
l071bh:
	inc c			;071b
	inc hl			;071c
	daa			;071d
	nop			;071e
	ld a,(de)		;071f
l0720h:
	ld b,c			;0720
	dec bc			;0721
	inc h			;0722
	jr z,$+13		;0723
	ld c,042h		;0725
	dec de			;0727
	inc h			;0728
	add hl,hl		;0729
	ld de,l0713h		;072a
	ld b,b			;072d
	ld (l122ah),hl		;072e
	inc d			;0731
	ex af,af'		;0732
	inc b			;0733
	inc h			;0734
	jr z,l0748h		;0735
	dec d			;0737
	add hl,bc		;0738
	dec b			;0739
	dec h			;073a
	ld hl,01911h		;073b
	ld a,(bc)		;073e
	ld b,021h		;073f
	ld (l1a1bh),hl		;0741
	dec c			;0744
	ld b,c			;0745
	dec h			;0746
	inc hl			;0747
l0748h:
	dec bc			;0748
	ld c,00eh		;0749
	ld b,d			;074b
	jr z,$+38		;074c
	dec de			;074e
	dec d			;074f
	rrca			;0750
	dec bc			;0751
	ld hl,l0b22h		;0752
	rla			;0755
	djnz l0792h		;0756
	ld (0393eh),hl		;0758
	rrca			;075b
	ld a,(02338h)		;075c
	dec a			;075f
	jr c,l07a1h		;0760
	dec sp			;0762
	ld b,b			;0763
	inc h			;0764
	add hl,hl		;0765
	inc a			;0766
	dec sp			;0767
	ex af,af'		;0768
	inc b			;0769
	ld (l0c2ah),hl		;076a
	inc c			;076d
	add hl,bc		;076e
	dec b			;076f
	inc h			;0770
	ld hl,(l0b00h)		;0771
	ld a,(bc)		;0774
	ld b,023h		;0775
	ld hl,(l0c0bh)		;0777
	inc e			;077a
	rra			;077b
	ld (l002ah),hl		;077c
	dec de			;077f
	dec e			;0780
	ld e,023h		;0781
	ld hl,(0001bh)		;0783
	ld a,(bc)		;0786
	ld b,024h		;0787
	dec hl			;0789
	dec bc			;078a
	inc c			;078b
	ld c,01fh		;078c
	ld (l1b26h),hl		;078e
	nop			;0791
l0792h:
	add hl,de		;0792
	dec de			;0793
	inc h			;0794
	inc l			;0795
	dec bc			;0796
	inc c			;0797
	dec c			;0798
	ld b,d			;0799
	ld (l0c26h),hl		;079a
	dec bc			;079d
	ld a,(de)		;079e
	ld b,022h		;079f
l07a1h:
	daa			;07a1
	dec bc			;07a2
	nop			;07a3
	inc e			;07a4
	rra			;07a5
	dec h			;07a6
	dec bc			;07a7
	dec bc			;07a8
	ld de,l1e1dh		;07a9
	dec a			;07ac
	add hl,sp		;07ad
	inc c			;07ae
	dec bc			;07af
	ld a,(de)		;07b0
	ld b,c			;07b1
	ld hl,(03a3ch)		;07b2
	add hl,sp		;07b5
	inc e			;07b6
	rra			;07b7
	add hl,hl		;07b8
	dec bc			;07b9
	inc a			;07ba
	inc a			;07bb
	dec sp			;07bc
	ld b,b			;07bd
	ld hl,03a39h		;07be
	add hl,sp		;07c1
	ex af,af'		;07c2
	inc b			;07c3
	ld a,038h		;07c4
	jr c,l0803h		;07c6
	add hl,bc		;07c8
	dec b			;07c9
	ld hl,03b3ch		;07ca
	nop			;07cd
	dec c			;07ce
	ld b,c			;07cf
	dec h			;07d0
	dec de			;07d1
	ld sp,01a0bh		;07d2
	dec b			;07d5
	ld (hl),034h		;07d6
	ld (02e2fh),a		;07d8
	ld b,c			;07db
	scf			;07dc
	dec (hl)		;07dd
	inc sp			;07de
	jr nc,l080eh		;07df
	ld b,c			;07e1
	dec hl			;07e2
	inc c			;07e3
	nop			;07e4
	dec bc			;07e5
	inc e			;07e6
	rra			;07e7
	ld h,a			;07e8
	ld l,e			;07e9
	ld l,e			;07ea
	ld l,e			;07eb
	ld l,e			;07ec
	ld a,04dh		;07ed
	ld l,e			;07ef
	ld l,e			;07f0
	ld a,05bh		;07f1
	ld c,e			;07f3
	ld d,e			;07f4
	ld l,e			;07f5
	ld l,e			;07f6
	ld b,b			;07f7
	ld c,c			;07f8
	ld h,d			;07f9
	ld l,b			;07fa
	ld l,e			;07fb
	ld l,e			;07fc
	ld l,e			;07fd
	ld l,e			;07fe
	ld h,e			;07ff
l0800h:
	ld l,b			;0800
l0801h:
	ld l,e			;0801
l0802h:
	ld l,e			;0802
l0803h:
	ld l,e			;0803
	ld l,e			;0804
	ld h,e			;0805
	ld l,b			;0806
	ld l,e			;0807
	ld l,e			;0808
	ld l,e			;0809
	ld l,e			;080a
	ld h,e			;080b
	ld l,d			;080c
	ld l,e			;080d
l080eh:
	ld l,e			;080e
	ld l,e			;080f
	ld l,e			;0810
l0811h:
	ccf			;0811
	ld c,l			;0812
	ld l,e			;0813
	ld l,e			;0814
	ld l,e			;0815
	ld l,e			;0816
	ccf			;0817
	ld c,a			;0818
	ld l,e			;0819
	ld l,e			;081a
	ld l,e			;081b
	ld a,060h		;081c
	ld d,e			;081e
	ld l,e			;081f
	ld l,e			;0820
	ld c,d			;0821
	ld c,h			;0822
	ld h,d			;0823
	ld d,h			;0824
	ld l,e			;0825
	ld l,e			;0826
	ld l,e			;0827
	ld l,e			;0828
	ld h,e			;0829
	ld b,d			;082a
	ld d,l			;082b
	ld l,e			;082c
	ld l,e			;082d
	ld l,e			;082e
	ccf			;082f
	ld h,a			;0830
	ld l,e			;0831
	ld l,e			;0832
	ld l,e			;0833
	ld c,d			;0834
	ld h,(hl)		;0835
	ld l,b			;0836
	ld l,e			;0837
	ld l,e			;0838
	ld l,e			;0839
	ld l,e			;083a
	ld h,e			;083b
	ld l,b			;083c
	ld l,e			;083d
	ld l,e			;083e
	ld l,e			;083f
	ld b,e			;0840
	ld h,(hl)		;0841
	ld c,l			;0842
	ld l,e			;0843
	ld l,e			;0844
	ld l,e			;0845
	ld l,e			;0846
	ccf			;0847
	ld d,d			;0848
	ld e,b			;0849
	ld l,e			;084a
	ld l,e			;084b
	ld c,d			;084c
	ld h,(hl)		;084d
	ld e,h			;084e
	ld d,e			;084f
	ld l,e			;0850
	ld l,e			;0851
	ld l,e			;0852
	ccf			;0853
	ld c,c			;0854
	ld d,h			;0855
	ld l,e			;0856
	ld l,e			;0857
	ld l,e			;0858
	ccf			;0859
	ld h,a			;085a
	ld l,e			;085b
	ld l,e			;085c
	ld l,e			;085d
	ld b,h			;085e
	ld h,b			;085f
	ld l,b			;0860
	ld l,e			;0861
	ld l,e			;0862
	ld l,e			;0863
	ld b,l			;0864
	ld h,h			;0865
	ld l,c			;0866
	ld l,e			;0867
	ld l,e			;0868
	ld l,e			;0869
	ld b,(hl)		;086a
	ld h,l			;086b
	ld d,h			;086c
	ld l,e			;086d
	ld l,e			;086e
	ld l,e			;086f
	ld c,b			;0870
	ld h,l			;0871
	ld d,l			;0872
	ld l,e			;0873
	ld l,e			;0874
	ld l,e			;0875
	ld b,b			;0876
	ld d,b			;0877
	ld e,b			;0878
	ld l,e			;0879
	ld l,e			;087a
	ld l,e			;087b
	ld b,h			;087c
	ld e,e			;087d
	ld e,c			;087e
	ld d,l			;087f
	ld l,e			;0880
	ld l,e			;0881
	ld b,l			;0882
	ld h,h			;0883
	ld h,a			;0884
	ld l,e			;0885
	ld l,e			;0886
	ld l,e			;0887
	ld c,b			;0888
	ld d,c			;0889
	ld l,b			;088a
	ld l,e			;088b
	ld l,e			;088c
	ld l,e			;088d
	ld b,c			;088e
	ld h,h			;088f
	ld l,d			;0890
	ld l,e			;0891
	ld l,e			;0892
	ld l,e			;0893
	ld b,b			;0894
	ld h,d			;0895
	ld c,l			;0896
	ld l,e			;0897
	ld l,e			;0898
	ld l,e			;0899
	ld l,e			;089a
	ld h,e			;089b
	ld d,e			;089c
	ld l,e			;089d
	ld l,e			;089e
	ld l,e			;089f
	ld l,e			;08a0
	ccf			;08a1
	ld d,h			;08a2
	ld l,e			;08a3
	ld l,e			;08a4
	ld l,e			;08a5
	ld l,e			;08a6
	ld b,b			;08a7
	inc e			;08a8
	inc a			;08a9
	ld l,e			;08aa
	ld l,e			;08ab
	ld a,(0203ch)		;08ac
	inc (hl)		;08af
	jr c,l090fh		;08b0
	dec a			;08b2
	inc c			;08b3
	ld hl,03235h		;08b4
	ld (hl),030h		;08b7
	ld c,025h		;08b9
	inc e			;08bb
	ld (hl),034h		;08bc
	ld (de),a		;08be
	dec b			;08bf
	cpl			;08c0
	jr nz,$+58		;08c1
	jr c,$+21		;08c3
	ld de,0292fh		;08c5
	jr z,l0900h		;08c8
	inc d			;08ca
	djnz $+38		;08cb
	inc hl			;08cd
	inc sp			;08ce
	ld sp,l0d14h+2		;08cf
	ld h,05eh		;08d2
	ld a,(00932h)		;08d4
	djnz l08f7h		;08d7
	ld e,l			;08d9
	ld l,e			;08da
	ld (hl),008h		;08db
	inc hl			;08dd
	dec e			;08de
	ld e,(hl)		;08df
	dec sp			;08e0
	jr nc,l0915h		;08e1
	ld d,01fh		;08e3
	ld (hl),034h		;08e5
	inc a			;08e7
	ld a,(l1e04h)		;08e8
	rrca			;08eb
	ld (hl),05eh		;08ec
	dec sp			;08ee
	rlca			;08ef
	ld e,031h		;08f0
	ld a,(l0a0bh)		;08f2
	jr $+31			;08f5
l08f7h:
	ld e,(hl)		;08f7
	ld l,e			;08f8
	dec sp			;08f9
	jr c,l0900h		;08fa
	dec e			;08fc
	ld sp,03a5dh		;08fd
l0900h:
	inc (hl)		;0900
l0901h:
	ld c,01fh		;0901
l0903h:
	inc sp			;0903
	ld e,(hl)		;0904
	ld l,e			;0905
	dec a			;0906
	inc b			;0907
	ld e,036h		;0908
	inc sp			;090a
l090bh:
	dec sp			;090b
	jr c,l0915h		;090c
	dec e			;090e
l090fh:
	inc (hl)		;090f
l0910h:
	ld sp,l1939h		;0910
	jr $+34			;0913
l0915h:
	jr c,l094dh		;0915
	ld (hl),05dh		;0917
	inc b			;0919
	add hl,hl		;091a
	jr z,l094fh		;091b
	dec (hl)		;091d
	ld a,(0210eh)		;091e
	rrca			;0921
	jr c,l0957h		;0922
	ld b,005h		;0924
	ld h,036h		;0926
	ld (l1a06h),a		;0928
	djnz l094bh		;092b
	inc (hl)		;092d
	dec bc			;092e
	dec de			;092f
	rla			;0930
	jr l0952h		;0931
	ld (l0f31h),a		;0933
	ld sp,02004h		;0936
	inc a			;0939
	dec sp			;093a
	add hl,sp		;093b
	add hl,de		;093c
	jr l0964h		;093d
	dec hl			;093f
	ld l,e			;0940
	dec sp			;0941
	add hl,de		;0942
	jr l0972h		;0943
	inc l			;0945
	jr z,l097bh		;0946
	jr c,l0951h		;0948
	dec e			;094a
l094bh:
	ld e,(hl)		;094b
	ld l,e			;094c
l094dh:
	dec sp			;094d
	add hl,de		;094e
l094fh:
	jr l096fh		;094f
l0951h:
	inc a			;0951
l0952h:
	ld l,e			;0952
	ld a,(l0e38h)		;0953
	rra			;0956
l0957h:
	inc sp			;0957
	ld (hl),038h		;0958
	ld (hl),004h		;095a
	dec e			;095c
	ld (hl),006h		;095d
	inc e			;095f
	inc sp			;0960
	rlca			;0961
	ld e,037h		;0962
l0964h:
	add hl,bc		;0964
	dec e			;0965
	scf			;0966
	ld c,01eh		;0967
	inc (hl)		;0969
	ex af,af'		;096a
	daa			;096b
	inc (hl)		;096c
	ld c,020h		;096d
l096fh:
	ld sp,03b5eh		;096f
l0972h:
	ld (hl),004h		;0972
	ld h,031h		;0974
	ld e,l			;0976
	ld a,(l0e39h)		;0977
	dec e			;097a
l097bh:
	jr c,$+13		;097b
	ld a,(bc)		;097d
	ld a,(bc)		;097e
	jr l099fh		;097f
	dec (hl)		;0981
	ld l,e			;0982
	ld l,e			;0983
	ld a,(l1f04h)		;0984
	ld sp,06b5eh		;0987
	dec sp			;098a
	ld c,020h		;098b
	inc sp			;098d
	scf			;098e
	ld l,e			;098f
	ld a,(02107h)		;0990
	scf			;0993
	ld sp,l1939h		;0994
	jr l09bbh		;0997
	ld (hl),034h		;0999
	dec (hl)		;099b
	ld (02904h),a		;099c
l099fh:
	ld a,(bc)		;099f
	jr z,l09bbh		;09a0
	ld a,(bc)		;09a2
	jr $+40			;09a3
	ld sp,03c36h		;09a5
	ld l,e			;09a8
	inc b			;09a9
	ld e,034h		;09aa
	inc sp			;09ac
	ld e,(hl)		;09ad
	ld a,(01d07h)		;09ae
	jr nc,l09e9h		;09b1
	ld sp,00e36h		;09b3
	dec e			;09b6
	ld e,(hl)		;09b7
	dec a			;09b8
	ld e,l			;09b9
	dec sp			;09ba
l09bbh:
	ld c,01dh		;09bb
	ld e,l			;09bd
	ld (de),a		;09be
	dec hl			;09bf
	inc (hl)		;09c0
	rlca			;09c1
	jr nz,l09fah		;09c2
	ld d,026h		;09c4
	ld a,(02604h)		;09c6
	ld sp,02708h		;09c9
	dec sp			;09cc
	inc b			;09cd
	ld e,05eh		;09ce
	dec a			;09d0
	inc (hl)		;09d1
	ld (de),a		;09d2
	dec b			;09d3
	rra			;09d4
	ld e,l			;09d5
	ld a,(l1437h)		;09d6
	ld de,06b68h		;09d9
	ld l,e			;09dc
	dec sp			;09dd
	ld d,010h		;09de
	ld l,d			;09e0
	ld l,e			;09e1
	ld l,e			;09e2
	ld l,e			;09e3
	ld b,b			;09e4
	ld h,d			;09e5
	ld l,c			;09e6
	ld l,e			;09e7
	ld l,e			;09e8
l09e9h:
	ld l,e			;09e9
	ld l,e			;09ea
	ld e,a			;09eb
	ld c,l			;09ec
	ld l,e			;09ed
	ld l,e			;09ee
	ld l,e			;09ef
	ld b,e			;09f0
	ld h,(hl)		;09f1
	ld c,a			;09f2
	ld l,e			;09f3
	ld l,e			;09f4
	ld l,e			;09f5
	ld l,e			;09f6
	ld e,a			;09f7
	ld d,b			;09f8
	ld l,e			;09f9
l09fah:
	ld l,e			;09fa
	ld l,e			;09fb
	ld l,e			;09fc
	ld b,c			;09fd
	ld h,a			;09fe
	ld l,e			;09ff
l0a00h:
	ld l,e			;0a00
	ld l,e			;0a01
	ld l,e			;0a02
	ccf			;0a03
	ld l,c			;0a04
l0a05h:
	ld l,e			;0a05
	ld l,e			;0a06
	ld l,e			;0a07
	ld l,e			;0a08
	ld e,a			;0a09
	ld l,b			;0a0a
l0a0bh:
	ld l,e			;0a0b
	ld l,e			;0a0c
	ld l,e			;0a0d
	ld l,e			;0a0e
	ld e,a			;0a0f
	ld l,d			;0a10
	ld l,e			;0a11
	ld l,e			;0a12
	ld l,e			;0a13
	ld l,e			;0a14
	ccf			;0a15
	ld c,l			;0a16
	ld l,e			;0a17
	ld l,e			;0a18
	ld l,e			;0a19
	ld l,e			;0a1a
	ccf			;0a1b
	ld e,c			;0a1c
	ld d,l			;0a1d
	ld l,e			;0a1e
	ld l,e			;0a1f
	ld a,060h		;0a20
	ld d,l			;0a22
	ld l,e			;0a23
	ld l,e			;0a24
	ld l,e			;0a25
	ld b,b			;0a26
	ld c,c			;0a27
	ld d,l			;0a28
	ld l,e			;0a29
	ld l,e			;0a2a
	ld l,e			;0a2b
	ld l,e			;0a2c
	ld c,b			;0a2d
	ld h,a			;0a2e
	ld l,e			;0a2f
	ld l,e			;0a30
	ld l,e			;0a31
	ld l,e			;0a32
	ld e,a			;0a33
	ld l,c			;0a34
	ld l,e			;0a35
	ld l,e			;0a36
	ld l,e			;0a37
	ld a,060h		;0a38
l0a3ah:
	ld c,l			;0a3a
	ld l,e			;0a3b
	ld l,e			;0a3c
	ld l,e			;0a3d
	ccf			;0a3e
	ld h,l			;0a3f
	ld d,e			;0a40
	ld l,e			;0a41
	ld l,e			;0a42
	ld l,e			;0a43
	ld b,b			;0a44
	ld h,d			;0a45
	ld l,c			;0a46
	ld l,e			;0a47
	ld l,e			;0a48
	ld l,e			;0a49
	ld l,e			;0a4a
	ld h,e			;0a4b
	ld l,b			;0a4c
	ld l,e			;0a4d
	ld l,e			;0a4e
	ld l,e			;0a4f
	ld l,e			;0a50
	ld h,e			;0a51
	ld l,b			;0a52
	ld l,e			;0a53
	ld l,e			;0a54
	ld l,e			;0a55
	ld c,d			;0a56
	ld c,e			;0a57
	ld l,d			;0a58
	ld l,e			;0a59
	ld l,e			;0a5a
	ld l,e			;0a5b
	ld l,e			;0a5c
	ld b,c			;0a5d
	ld l,d			;0a5e
	ld l,e			;0a5f
	ld l,e			;0a60
	ld l,e			;0a61
	ld b,e			;0a62
	ld h,(hl)		;0a63
	ld d,h			;0a64
	ld l,e			;0a65
	ld l,e			;0a66
	ld l,e			;0a67
	ld l,e			;0a68
	ld e,a			;0a69
	ld h,a			;0a6a
	ld l,e			;0a6b
	ld l,e			;0a6c
	ld l,e			;0a6d
	ld l,e			;0a6e
	ccf			;0a6f
	ld d,h			;0a70
	ld l,e			;0a71
	ld l,e			;0a72
	ld l,e			;0a73
	ld l,e			;0a74
	ld b,c			;0a75
	ld b,d			;0a76
	ld d,l			;0a77
	ld b,h			;0a78
	ld e,e			;0a79
	ld e,b			;0a7a
	ccf			;0a7b
	ld e,e			;0a7c
	ld e,b			;0a7d
	ld b,l			;0a7e
	ld e,h			;0a7f
	ld c,a			;0a80
	ld h,e			;0a81
	ld e,h			;0a82
	ld d,e			;0a83
	ld b,l			;0a84
	ld e,h			;0a85
	ld c,a			;0a86
	ld h,e			;0a87
	ld c,h			;0a88
	ld d,h			;0a89
	ld b,l			;0a8a
	ld e,h			;0a8b
	ld c,(hl)		;0a8c
	ld e,a			;0a8d
	ld b,e			;0a8e
	ld d,l			;0a8f
	ld b,(hl)		;0a90
	ld e,h			;0a91
	ld c,a			;0a92
	ld b,c			;0a93
	ld e,e			;0a94
	ld e,b			;0a95
	dec d			;0a96
	ld c,c			;0a97
	ld d,b			;0a98
	ccf			;0a99
	ld e,h			;0a9a
	ld c,a			;0a9b
	ld (hl),03eh		;0a9c
	ld e,b			;0a9e
	ld h,e			;0a9f
	ld d,l			;0aa0
	ld c,(hl)		;0aa1
	scf			;0aa2
	ld b,b			;0aa3
	ld d,b			;0aa4
	ccf			;0aa5
	ld e,h			;0aa6
	ld d,e			;0aa7
	add hl,de		;0aa8
	ld b,d			;0aa9
	ld b,d			;0aaa
	ld h,(hl)		;0aab
	ld c,h			;0aac
	ld d,h			;0aad
	ld b,h			;0aae
	ld e,e			;0aaf
	ld e,b			;0ab0
	ccf			;0ab1
	ld b,e			;0ab2
	ld d,l			;0ab3
	ld b,(hl)		;0ab4
	ld e,h			;0ab5
	ld c,(hl)		;0ab6
	ld b,b			;0ab7
	ld a,058h		;0ab8
	ld b,l			;0aba
	ld e,h			;0abb
	ld d,d			;0abc
	ld e,b			;0abd
	ld b,b			;0abe
	ld d,b			;0abf
	ld b,a			;0ac0
	ld c,c			;0ac1
	ld c,c			;0ac2
	ld d,b			;0ac3
	ld h,a			;0ac4
	ld l,e			;0ac5
	ld l,e			;0ac6
	ld l,e			;0ac7
	ld l,e			;0ac8
	ld h,c			;0ac9
	ld l,b			;0aca
	ld l,e			;0acb
	ld l,e			;0acc
	ld l,e			;0acd
	ld l,e			;0ace
	ccf			;0acf
	ld c,l			;0ad0
	ld l,e			;0ad1
	ld l,e			;0ad2
	ld l,e			;0ad3
	ld l,e			;0ad4
	ccf			;0ad5
	ld c,a			;0ad6
	ld l,e			;0ad7
	ld l,e			;0ad8
	ld c,d			;0ad9
	ld b,d			;0ada
	ld h,(hl)		;0adb
	ld d,b			;0adc
	ld l,e			;0add
	ld l,e			;0ade
	ld l,e			;0adf
	ld l,e			;0ae0
	ld h,e			;0ae1
	ld e,b			;0ae2
	ld l,e			;0ae3
	ld l,e			;0ae4
	ld l,e			;0ae5
	ld l,e			;0ae6
	ccf			;0ae7
	ld d,(hl)		;0ae8
	ld d,l			;0ae9
	ld l,e			;0aea
	ld l,e			;0aeb
	ld l,e			;0aec
	ld h,e			;0aed
	ld d,e			;0aee
	ld l,e			;0aef
	ld l,e			;0af0
	ld l,e			;0af1
	ld b,e			;0af2
	ld h,(hl)		;0af3
	ld l,b			;0af4
	ld l,e			;0af5
	ld l,e			;0af6
	ld l,e			;0af7
	ld l,e			;0af8
	ld h,e			;0af9
	ld l,d			;0afa
	ld l,e			;0afb
	ld l,e			;0afc
	ld l,e			;0afd
	ld l,e			;0afe
	ld h,e			;0aff
l0b00h:
	ld l,d			;0b00
l0b01h:
	ld l,e			;0b01
	ld l,e			;0b02
	ld l,e			;0b03
	ld l,e			;0b04
	ccf			;0b05
	ld c,l			;0b06
	ld l,e			;0b07
	ld l,e			;0b08
	ld l,e			;0b09
	ld l,e			;0b0a
	ld h,e			;0b0b
l0b0ch:
	ld c,a			;0b0c
	ld l,e			;0b0d
	ld l,e			;0b0e
	ld l,e			;0b0f
l0b10h:
	ld a,060h		;0b10
	ld d,e			;0b12
l0b13h:
	ld l,e			;0b13
l0b14h:
	ld l,e			;0b14
l0b15h:
	ld l,e			;0b15
	ccf			;0b16
l0b17h:
	ld h,h			;0b17
	ld d,h			;0b18
	ld l,e			;0b19
	ld l,e			;0b1a
l0b1bh:
	ld l,e			;0b1b
	ld b,b			;0b1c
	ld h,d			;0b1d
	ld d,l			;0b1e
	ld l,e			;0b1f
	ld l,e			;0b20
	ld l,e			;0b21
l0b22h:
	ld l,e			;0b22
	ld b,b			;0b23
	inc e			;0b24
	ld e,l			;0b25
l0b26h:
	ld l,e			;0b26
	ld l,e			;0b27
	ld l,e			;0b28
	ld a,01dh		;0b29
	inc a			;0b2b
	ld l,e			;0b2c
	ld l,e			;0b2d
	ld a,(02707h)		;0b2e
	scf			;0b31
	ld l,e			;0b32
	ld l,e			;0b33
	dec sp			;0b34
	rlca			;0b35
	scf			;0b36
	inc a			;0b37
	ld l,e			;0b38
	ld l,e			;0b39
	ld (hl),009h		;0b3a
	inc e			;0b3c
	ld (de),a		;0b3d
	ld e,b			;0b3e
	ld l,e			;0b3f
	dec a			;0b40
	ex af,af'		;0b41
	daa			;0b42
	inc de			;0b43
	ld d,e			;0b44
	ld l,e			;0b45
	dec sp			;0b46
	ld b,02bh		;0b47
	dec d			;0b49
	ld d,h			;0b4a
	ld l,e			;0b4b
	dec sp			;0b4c
	add hl,bc		;0b4d
	ld (06b3ch),hl		;0b4e
	dec a			;0b51
	jr nc,l0b5bh		;0b52
	ld (03a37h),hl		;0b54
	add hl,de		;0b57
	ld a,(bc)		;0b58
	jr l0b81h		;0b59
l0b5bh:
	inc sp			;0b5b
	ld a,(03637h)		;0b5c
	add hl,bc		;0b5f
	daa			;0b60
	ld (03231h),a		;0b61
	jr c,l0b6dh		;0b64
	inc e			;0b66
	ld sp,03030h		;0b67
	scf			;0b6a
	ld c,027h		;0b6b
l0b6dh:
	jr nc,l0ba1h		;0b6d
	scf			;0b6f
	scf			;0b70
	ld c,028h		;0b71
	dec bc			;0b73
	jr z,l0b8fh		;0b74
	ld a,(bc)		;0b76
	jr l0be0h		;0b77
	ld l,e			;0b79
	ld l,e			;0b7a
	ld l,e			;0b7b
	ld l,e			;0b7c
	ld b,b			;0b7d
	ld l,c			;0b7e
	ld l,e			;0b7f
	ld l,e			;0b80
l0b81h:
	ld l,e			;0b81
	ld l,e			;0b82
	ld a,068h		;0b83
	ld l,e			;0b85
	ld l,e			;0b86
	ld l,e			;0b87
	ld l,e			;0b88
	ld e,a			;0b89
	ld c,l			;0b8a
	ld l,e			;0b8b
	ld l,e			;0b8c
	ld l,e			;0b8d
	ld b,h			;0b8e
l0b8fh:
	ld h,b			;0b8f
	ld c,a			;0b90
	ld l,e			;0b91
	ld l,e			;0b92
	ld l,e			;0b93
	ld b,(hl)		;0b94
	ld h,h			;0b95
	ld d,d			;0b96
	ld h,a			;0b97
	ld l,e			;0b98
	ld l,e			;0b99
	ld c,b			;0b9a
	ld h,h			;0b9b
	ld c,c			;0b9c
	ld d,h			;0b9d
	ld l,e			;0b9e
	ld l,e			;0b9f
	ld b,b			;0ba0
l0ba1h:
	ld c,c			;0ba1
	ld d,l			;0ba2
	ld l,e			;0ba3
	ld l,e			;0ba4
	ld l,e			;0ba5
	ld c,d			;0ba6
	ld b,d			;0ba7
	scf			;0ba8
	dec (hl)		;0ba9
	dec (hl)		;0baa
	dec (hl)		;0bab
	dec (hl)		;0bac
	ld (bc),a		;0bad
	rrca			;0bae
	dec (hl)		;0baf
	dec (hl)		;0bb0
	dec (hl)		;0bb1
	dec (hl)		;0bb2
	inc bc			;0bb3
	ld d,035h		;0bb4
	dec (hl)		;0bb6
	dec (hl)		;0bb7
	dec c			;0bb8
	ld b,038h		;0bb9
	nop			;0bbb
	dec (hl)		;0bbc
	nop			;0bbd
	dec c			;0bbe
	rlca			;0bbf
	ld (hl),035h		;0bc0
	dec (hl)		;0bc2
	dec (hl)		;0bc3
	inc b			;0bc4
	ex af,af'		;0bc5
	jr c,l0bc8h		;0bc6
l0bc8h:
	nop			;0bc8
	nop			;0bc9
	dec b			;0bca
	rlca			;0bcb
	scf			;0bcc
	dec (hl)		;0bcd
	dec (hl)		;0bce
	dec (hl)		;0bcf
	dec b			;0bd0
	ld b,014h		;0bd1
	nop			;0bd3
	dec (hl)		;0bd4
	nop			;0bd5
	add hl,bc		;0bd6
	dec b			;0bd7
	rla			;0bd8
	dec (hl)		;0bd9
	dec (hl)		;0bda
	dec (hl)		;0bdb
	ld (bc),a		;0bdc
	ld b,016h		;0bdd
	dec (hl)		;0bdf
l0be0h:
	dec (hl)		;0be0
	inc bc			;0be1
	rlca			;0be2
	dec bc			;0be3
	dec d			;0be4
	jr c,$+55		;0be5
	inc b			;0be7
	ex af,af'		;0be8
	inc c			;0be9
	rrca			;0bea
	dec (hl)		;0beb
	dec (hl)		;0bec
	dec b			;0bed
	ld de,l1806h		;0bee
	nop			;0bf1
	dec (hl)		;0bf2
	dec c			;0bf3
	ld d,011h		;0bf4
	ld (de),a		;0bf6
	ld (hl),035h		;0bf7
	dec (hl)		;0bf9
	add hl,bc		;0bfa
	ld a,(bc)		;0bfb
	ld (de),a		;0bfc
	ld d,035h		;0bfd
	dec (hl)		;0bff
l0c00h:
	dec c			;0c00
l0c01h:
	rlca			;0c01
l0c02h:
	inc de			;0c02
	scf			;0c03
	dec (hl)		;0c04
	dec (hl)		;0c05
	dec (hl)		;0c06
	inc b			;0c07
	rla			;0c08
	nop			;0c09
	dec (hl)		;0c0a
l0c0bh:
	nop			;0c0b
	dec (hl)		;0c0c
	dec bc			;0c0d
	ld c,035h		;0c0e
	dec (hl)		;0c10
	dec (hl)		;0c11
	dec (hl)		;0c12
	add hl,bc		;0c13
	djnz l0c29h		;0c14
l0c16h:
	rla			;0c16
	dec (hl)		;0c17
l0c18h:
	dec (hl)		;0c18
	inc bc			;0c19
	ld (de),a		;0c1a
	ld d,036h		;0c1b
	dec (hl)		;0c1d
	dec c			;0c1e
	inc c			;0c1f
	inc d			;0c20
	nop			;0c21
	dec (hl)		;0c22
	nop			;0c23
	dec (hl)		;0c24
	dec bc			;0c25
l0c26h:
	scf			;0c26
	dec (hl)		;0c27
	dec (hl)		;0c28
l0c29h:
	dec (hl)		;0c29
l0c2ah:
	dec (hl)		;0c2a
	ld (bc),a		;0c2b
	scf			;0c2c
	dec (hl)		;0c2d
	nop			;0c2e
	dec (hl)		;0c2f
	dec (hl)		;0c30
	inc bc			;0c31
	ld (hl),035h		;0c32
	nop			;0c34
	dec (hl)		;0c35
	dec c			;0c36
	ld (de),a		;0c37
	jr c,$+55		;0c38
	nop			;0c3a
	dec (hl)		;0c3b
	inc bc			;0c3c
	rlca			;0c3d
	ld c,035h		;0c3e
	nop			;0c40
	dec (hl)		;0c41
	inc b			;0c42
	ld d,038h		;0c43
	dec (hl)		;0c45
	nop			;0c46
	dec c			;0c47
	rlca			;0c48
	djnz l0c81h		;0c49
	dec (hl)		;0c4b
	dec (hl)		;0c4c
	inc b			;0c4d
	inc de			;0c4e
	inc c			;0c4f
	scf			;0c50
	nop			;0c51
	nop			;0c52
	nop			;0c53
	inc bc			;0c54
	rlca			;0c55
	jr $+55			;0c56
	dec (hl)		;0c58
	dec (hl)		;0c59
	ld (bc),a		;0c5a
	ld b,007h		;0c5b
	ld d,035h		;0c5d
	inc bc			;0c5f
	dec b			;0c60
	inc c			;0c61
	dec d			;0c62
	jr l0c96h		;0c63
	dec b			;0c65
	ld b,007h		;0c66
	jr $+55			;0c68
	dec (hl)		;0c6a
	dec (hl)		;0c6b
	dec b			;0c6c
	rlca			;0c6d
	ld (hl),000h		;0c6e
	dec (hl)		;0c70
	nop			;0c71
	dec (hl)		;0c72
	dec b			;0c73
	scf			;0c74
	dec (hl)		;0c75
	dec (hl)		;0c76
	dec (hl)		;0c77
	dec (hl)		;0c78
	dec b			;0c79
	jr c,l0c7ch		;0c7a
l0c7ch:
	nop			;0c7c
	nop			;0c7d
	dec (hl)		;0c7e
	dec b			;0c7f
	inc de			;0c80
l0c81h:
	rla			;0c81
	ld bc,l1304h		;0c82
	ex af,af'		;0c85
	scf			;0c86
	nop			;0c87
	dec (hl)		;0c88
	nop			;0c89
	dec (hl)		;0c8a
	dec b			;0c8b
	ld (hl),035h		;0c8c
	dec (hl)		;0c8e
	dec (hl)		;0c8f
	dec (hl)		;0c90
	dec b			;0c91
	jr l0c94h		;0c92
l0c94h:
	nop			;0c94
	nop			;0c95
l0c96h:
	dec b			;0c96
	rlca			;0c97
	rra			;0c98
	inc bc			;0c99
	nop			;0c9a
	ld bc,l1600h		;0c9b
	jr nz,l0ca1h		;0c9e
	nop			;0ca0
l0ca1h:
	inc bc			;0ca1
	nop			;0ca2
	add hl,de		;0ca3
	inc c			;0ca4
	nop			;0ca5
	inc bc			;0ca6
	nop			;0ca7
	inc bc			;0ca8
	dec de			;0ca9
	ld c,000h		;0caa
	ld bc,l0101h		;0cac
	ld a,(de)		;0caf
	jr nz,l0cb3h		;0cb0
	nop			;0cb2
l0cb3h:
	inc bc			;0cb3
	nop			;0cb4
	add hl,de		;0cb5
	dec c			;0cb6
	inc d			;0cb7
	nop			;0cb8
	ld (bc),a		;0cb9
	ld bc,l0e1ah		;0cba
	inc d			;0cbd
	inc d			;0cbe
	ld bc,l1e0bh		;0cbf
	jr nz,l0cd8h		;0cc2
	inc d			;0cc4
	nop			;0cc5
	inc bc			;0cc6
	add hl,de		;0cc7
	ld hl,l1400h+1		;0cc8
	ld (bc),a		;0ccb
	nop			;0ccc
	ld a,(de)		;0ccd
	ld c,000h		;0cce
	inc d			;0cd0
	nop			;0cd1
	ld bc,l1f19h		;0cd2
	ld bc,l0314h		;0cd5
l0cd8h:
	ld (bc),a		;0cd8
	rla			;0cd9
	inc c			;0cda
	nop			;0cdb
	inc d			;0cdc
	nop			;0cdd
	inc d			;0cde
	jr l0cf0h		;0cdf
	ld (bc),a		;0ce1
	inc d			;0ce2
	ld bc,01614h		;0ce3
	djnz l0ce8h		;0ce6
l0ce8h:
	inc d			;0ce8
	inc d			;0ce9
	inc d			;0cea
	ld e,00eh		;0ceb
	ld bc,l1400h+2		;0ced
l0cf0h:
	inc d			;0cf0
	add hl,de		;0cf1
	jr nz,$+4		;0cf2
	nop			;0cf4
	ld bc,l1a02h		;0cf5
	djnz l0cfah		;0cf8
l0cfah:
	ld (bc),a		;0cfa
	nop			;0cfb
	ex af,af'		;0cfc
	ld a,(de)		;0cfd
	ld hl,l0200h+1		;0cfe
	nop			;0d01
	ld bc,l0e1bh		;0d02
	nop			;0d05
	nop			;0d06
	ld bc,l1a00h		;0d07
	inc c			;0d0a
	inc bc			;0d0b
	ld (bc),a		;0d0c
	nop			;0d0d
	inc bc			;0d0e
	rla			;0d0f
	jr nz,l0d14h		;0d10
	nop			;0d12
	nop			;0d13
l0d14h:
	ld bc,02119h		;0d14
	ld bc,l0001h		;0d17
	nop			;0d1a
	dec de			;0d1b
	rra			;0d1c
	ld (bc),a		;0d1d
	nop			;0d1e
	ld bc,l1906h		;0d1f
	jr nz,l0d24h		;0d22
l0d24h:
	ld bc,l0400h		;0d24
	ld a,(de)		;0d27
	jr nz,$+3		;0d28
	ld bc,l0102h		;0d2a
	add hl,de		;0d2d
	dec c			;0d2e
	ld (bc),a		;0d2f
	nop			;0d30
	ld bc,l1b00h		;0d31
	ld hl,l0301h		;0d34
	ld (bc),a		;0d37
	ld bc,l1f1ah		;0d38
	inc d			;0d3b
	inc d			;0d3c
	ld bc,l1c03h		;0d3d
	ld c,014h		;0d40
	inc d			;0d42
	nop			;0d43
	ld b,01ah		;0d44
	ld hl,l1414h		;0d46
	ld (bc),a		;0d49
	nop			;0d4a
	dec e			;0d4b
	rra			;0d4c
	inc d			;0d4d
	inc d			;0d4e
l0d4fh:
	ld bc,l190bh		;0d4f
	jr nz,l0d68h		;0d52
	inc d			;0d54
	nop			;0d55
	inc b			;0d56
	ld e,021h		;0d57
	nop			;0d59
	ld bc,l0502h		;0d5a
	rla			;0d5d
	ld c,001h		;0d5e
	ld (bc),a		;0d60
	inc d			;0d61
	inc d			;0d62
	add hl,de		;0d63
	dec d			;0d64
	ld (bc),a		;0d65
	nop			;0d66
	inc d			;0d67
l0d68h:
	inc d			;0d68
	rla			;0d69
	dec d			;0d6a
	nop			;0d6b
	ld bc,l0000h		;0d6c
	ld a,(de)		;0d6f
	ld hl,l0001h		;0d70
	ld bc,l1b00h+1		;0d73
	dec c			;0d76
	ld (bc),a		;0d77
	ld bc,l0200h		;0d78
	inc e			;0d7b
	ld c,014h		;0d7c
	ld (bc),a		;0d7e
	nop			;0d7f
	nop			;0d80
	dec e			;0d81
	jr nz,l0d98h		;0d82
	inc d			;0d84
	inc d			;0d85
	ld bc,l1f19h		;0d86
	inc d			;0d89
	inc d			;0d8a
	inc d			;0d8b
	nop			;0d8c
	ld a,(de)		;0d8d
	ld c,014h		;0d8e
	inc d			;0d90
	inc d			;0d91
	nop			;0d92
sub_0d93h:
	dec de			;0d93
	ld hl,l1414h		;0d94
	inc d			;0d97
l0d98h:
	inc d			;0d98
	rla			;0d99
	jr nz,l0db0h		;0d9a
	inc d			;0d9c
	inc d			;0d9d
	inc d			;0d9e
	ld d,00eh		;0d9f
	ld bc,l1414h		;0da1
	inc d			;0da4
	jr l0dc6h		;0da5
	nop			;0da7
	inc d			;0da8
	inc d			;0da9
	inc d			;0daa
	dec de			;0dab
	inc c			;0dac
	inc bc			;0dad
	ld (bc),a		;0dae
	inc d			;0daf
l0db0h:
	inc d			;0db0
	add hl,de		;0db1
	ld c,001h		;0db2
	ld (bc),a		;0db4
	ld bc,l1c14h		;0db5
	jr nz,l0dbbh		;0db8
	nop			;0dba
l0dbbh:
	ld (bc),a		;0dbb
	inc d			;0dbc
	ld e,021h		;0dbd
	nop			;0dbf
	nop			;0dc0
	ld bc,l1d00h		;0dc1
	inc c			;0dc4
	ld (bc),a		;0dc5
l0dc6h:
	nop			;0dc6
	ld (bc),a		;0dc7
	nop			;0dc8
	rla			;0dc9
	dec c			;0dca
	ld bc,l0001h		;0dcb
	ld bc,l1f19h		;0dce
	nop			;0dd1
	nop			;0dd2
	ld bc,l1b00h		;0dd3
	jr nz,$+3		;0dd6
	ld bc,l0000h		;0dd8
	ld a,(de)		;0ddb
	ld hl,00300h		;0ddc
	nop			;0ddf
	ld bc,l0e18h		;0de0
	ld bc,l0001h+1		;0de3
	inc bc			;0de6
	add hl,de		;0de7
	jr nz,l0debh		;0de8
	nop			;0dea
l0debh:
	inc d			;0deb
	inc d			;0dec
	ld e,021h		;0ded
	nop			;0def
	ld bc,l1414h		;0df0
	ld a,(de)		;0df3
	ld c,014h		;0df4
	inc d			;0df6
	inc d			;0df7
	inc d			;0df8
	dec de			;0df9
	ld hl,l1414h		;0dfa
	nop			;0dfd
	ld (bc),a		;0dfe
	add hl,de		;0dff
l0e00h:
	jr nz,l0e16h		;0e00
	inc d			;0e02
	inc d			;0e03
	inc d			;0e04
l0e05h:
	rla			;0e05
	ld c,014h		;0e06
	inc d			;0e08
l0e09h:
	inc d			;0e09
	inc d			;0e0a
	jr l0e2eh		;0e0b
	inc d			;0e0d
	inc d			;0e0e
	inc d			;0e0f
	inc d			;0e10
	dec de			;0e11
	jr nz,l0e28h		;0e12
	inc d			;0e14
	inc d			;0e15
l0e16h:
	inc d			;0e16
	inc e			;0e17
l0e18h:
	rra			;0e18
	inc d			;0e19
l0e1ah:
	inc d			;0e1a
l0e1bh:
	inc d			;0e1b
l0e1ch:
	inc d			;0e1c
l0e1dh:
	ld e,021h		;0e1d
	inc d			;0e1f
	inc d			;0e20
	inc d			;0e21
	inc d			;0e22
	rla			;0e23
	jr nz,l0e3ah		;0e24
	inc d			;0e26
	inc d			;0e27
l0e28h:
	inc d			;0e28
	ld d,00eh		;0e29
	nop			;0e2b
	inc d			;0e2c
	inc d			;0e2d
l0e2eh:
	inc d			;0e2e
	ld a,(de)		;0e2f
	ld hl,l0000h		;0e30
	nop			;0e33
	nop			;0e34
	jr l0e57h		;0e35
	nop			;0e37
l0e38h:
	nop			;0e38
l0e39h:
	nop			;0e39
l0e3ah:
	nop			;0e3a
	add hl,de		;0e3b
	ld c,000h		;0e3c
	nop			;0e3e
	nop			;0e3f
	nop			;0e40
	dec de			;0e41
	jr nz,l0e44h		;0e42
l0e44h:
	nop			;0e44
	nop			;0e45
	nop			;0e46
	dec e			;0e47
	rra			;0e48
	ld bc,l0100h		;0e49
	ld (bc),a		;0e4c
	jr l0e6fh		;0e4d
	ld (bc),a		;0e4f
	nop			;0e50
	ld (bc),a		;0e51
	nop			;0e52
	add hl,de		;0e53
	jr nz,l0e57h		;0e54
	inc bc			;0e56
l0e57h:
	ld bc,l1b02h		;0e57
	ld c,002h		;0e5a
	nop			;0e5c
	ld (bc),a		;0e5d
	nop			;0e5e
	rla			;0e5f
	ld hl,l0103h		;0e60
	nop			;0e63
	ld bc,02018h		;0e64
	ld bc,l0102h		;0e67
	inc bc			;0e6a
	ld a,(de)		;0e6b
	ld c,000h		;0e6c
	nop			;0e6e
l0e6fh:
	inc d			;0e6f
	inc d			;0e70
	ld d,01fh		;0e71
	ld bc,l1403h		;0e73
	inc d			;0e76
	dec de			;0e77
	jr nz,l0e7ah		;0e78
l0e7ah:
	ld bc,l1414h		;0e7a
	ld a,(de)		;0e7d
	ld hl,l0000h		;0e7e
	inc d			;0e81
	inc d			;0e82
	inc e			;0e83
	ld c,001h		;0e84
	ld (bc),a		;0e86
	inc d			;0e87
	inc d			;0e88
	jr l0eaah		;0e89
	nop			;0e8b
	inc d			;0e8c
	inc d			;0e8d
	inc d			;0e8e
	dec de			;0e8f
	dec c			;0e90
	ld (bc),a		;0e91
	inc d			;0e92
	inc d			;0e93
	inc d			;0e94
	ld a,(de)		;0e95
	ld hl,l0001h		;0e96
	ld bc,01702h		;0e99
	jr nz,l0e9eh		;0e9c
l0e9eh:
	nop			;0e9e
	ld (bc),a		;0e9f
	ld bc,l0e18h		;0ea0
	ld bc,l0203h		;0ea3
	nop			;0ea6
	ld a,(de)		;0ea7
	rra			;0ea8
	nop			;0ea9
l0eaah:
	ld bc,l0001h+1		;0eaa
	ld d,020h		;0ead
	ld (bc),a		;0eaf
	nop			;0eb0
	inc d			;0eb1
	inc d			;0eb2
	add hl,de		;0eb3
	ld c,001h		;0eb4
	inc d			;0eb6
	inc d			;0eb7
	inc d			;0eb8
	ld a,(de)		;0eb9
	ld hl,l1400h		;0eba
	inc d			;0ebd
	inc d			;0ebe
	dec de			;0ebf
	rra			;0ec0
	ld bc,l1414h		;0ec1
	inc d			;0ec4
	rla			;0ec5
	dec c			;0ec6
	ld (bc),a		;0ec7
	nop			;0ec8
	nop			;0ec9
	ld bc,02019h		;0eca
	ld bc,l0102h		;0ecd
	ld (bc),a		;0ed0
	ld d,021h		;0ed1
	ld (bc),a		;0ed3
	nop			;0ed4
	nop			;0ed5
	ld bc,00d19h		;0ed6
	nop			;0ed9
	nop			;0eda
	inc bc			;0edb
	nop			;0edc
	ld d,00eh		;0edd
	ld (bc),a		;0edf
	ld bc,l0100h		;0ee0
	add hl,de		;0ee3
	ld hl,l0200h+1		;0ee4
	inc d			;0ee7
	inc d			;0ee8
	ld e,021h		;0ee9
	inc bc			;0eeb
	inc d			;0eec
	inc d			;0eed
	inc d			;0eee
	dec e			;0eef
	rra			;0ef0
	ld bc,l1414h		;0ef1
	inc d			;0ef4
	rla			;0ef5
	ld c,003h		;0ef6
	inc d			;0ef8
	inc d			;0ef9
	inc d			;0efa
	add hl,de		;0efb
	dec c			;0efc
	nop			;0efd
	nop			;0efe
	ld bc,l1802h		;0eff
	ld hl,l0101h		;0f02
	inc bc			;0f05
	nop			;0f06
	dec de			;0f07
	jr nz,l0f0bh		;0f08
l0f0ah:
	ld (bc),a		;0f0a
l0f0bh:
	nop			;0f0b
	ld bc,l1517h		;0f0c
	inc d			;0f0f
	nop			;0f10
	ld bc,l1800h		;0f11
	dec d			;0f14
	inc d			;0f15
	inc bc			;0f16
	nop			;0f17
	nop			;0f18
	ld a,(de)		;0f19
l0f1ah:
	dec d			;0f1a
	inc d			;0f1b
	inc d			;0f1c
	inc d			;0f1d
	nop			;0f1e
	add hl,de		;0f1f
	rra			;0f20
	ld bc,l0100h		;0f21
	inc d			;0f24
	rla			;0f25
	ld hl,l0003h		;0f26
	nop			;0f29
	inc d			;0f2a
	add hl,de		;0f2b
	jr nz,l0f2fh		;0f2c
	inc bc			;0f2e
l0f2fh:
	inc d			;0f2f
	inc d			;0f30
l0f31h:
	ld a,(de)		;0f31
	ld c,000h		;0f32
	nop			;0f34
	ld bc,l1b00h		;0f35
	rra			;0f38
	nop			;0f39
	ld bc,l0100h		;0f3a
	ld e,020h		;0f3d
	inc bc			;0f3f
	inc d			;0f40
	inc d			;0f41
	inc d			;0f42
	add hl,de		;0f43
	ld hl,l0001h		;0f44
	nop			;0f47
	ld bc,l0e1dh		;0f48
	nop			;0f4b
	ld bc,l0200h		;0f4c
	ld a,(de)		;0f4f
	dec c			;0f50
	ld bc,l0003h		;0f51
	ld bc,02019h		;0f54
	nop			;0f57
	ld (bc),a		;0f58
	nop			;0f59
	nop			;0f5a
	ld a,(de)		;0f5b
	ld hl,l1414h		;0f5c
	inc d			;0f5f
	inc d			;0f60
	rla			;0f61
	ld c,001h		;0f62
	inc d			;0f64
	inc d			;0f65
	inc d			;0f66
	ld d,020h		;0f67
	inc d			;0f69
	inc d			;0f6a
	inc d			;0f6b
	inc d			;0f6c
	add hl,de		;0f6d
	ld hl,l1414h		;0f6e
	inc d			;0f71
	inc d			;0f72
	dec de			;0f73
	ld c,014h		;0f74
	inc d			;0f76
	inc d			;0f77
	inc d			;0f78
	rla			;0f79
	jr nz,l0f90h		;0f7a
	inc d			;0f7c
	inc d			;0f7d
	inc d			;0f7e
	ld e,021h		;0f7f
	inc d			;0f81
	inc d			;0f82
	inc d			;0f83
	inc d			;0f84
	inc e			;0f85
	ld hl,l1414h		;0f86
	inc d			;0f89
	inc d			;0f8a
	ld a,(de)		;0f8b
	ld c,014h		;0f8c
	inc d			;0f8e
	inc d			;0f8f
l0f90h:
	inc d			;0f90
	add hl,de		;0f91
	jr nz,l0f94h		;0f92
l0f94h:
	ld (bc),a		;0f94
	ld bc,l1b02h		;0f95
	rra			;0f98
	ld bc,l0001h		;0f99
	ld bc,l0e1dh+1		;0f9c
	ld bc,l0100h		;0f9f
	nop			;0fa2
	ld a,(de)		;0fa3
	jr nz,l0fa6h		;0fa4
l0fa6h:
	nop			;0fa6
	nop			;0fa7
	ld bc,02118h		;0fa8
	ld bc,l0001h+1		;0fab
	ld (bc),a		;0fae
	rla			;0faf
	jr nz,l0fc6h		;0fb0
	inc d			;0fb2
	nop			;0fb3
	nop			;0fb4
	add hl,de		;0fb5
	ld c,002h		;0fb6
	nop			;0fb8
	ld bc,l1603h		;0fb9
	jr nz,l0fbfh		;0fbc
	ld (bc),a		;0fbe
l0fbfh:
	nop			;0fbf
	ld bc,0211bh		;0fc0
	nop			;0fc3
	inc d			;0fc4
	inc bc			;0fc5
l0fc6h:
	nop			;0fc6
	ld a,(de)		;0fc7
	jr nz,l0fcbh		;0fc8
	inc d			;0fca
l0fcbh:
	ld bc,l1b00h		;0fcb
	rra			;0fce
	nop			;0fcf
	inc d			;0fd0
	nop			;0fd1
	ld (bc),a		;0fd2
	add hl,de		;0fd3
	ld c,000h		;0fd4
	nop			;0fd6
	nop			;0fd7
	ld bc,0201ah		;0fd8
	ld bc,l0100h		;0fdb
	nop			;0fde
	rla			;0fdf
	dec c			;0fe0
	ld (bc),a		;0fe1
	ld (bc),a		;0fe2
	nop			;0fe3
	ld (bc),a		;0fe4
	ld d,021h		;0fe5
	nop			;0fe7
	nop			;0fe8
	ld (bc),a		;0fe9
	nop			;0fea
	ld e,020h		;0feb
	ld bc,l0100h		;0fed
	nop			;0ff0
	ld a,(de)		;0ff1
	ld hl,l0200h		;0ff2
	nop			;0ff5
	ld bc,l1f1dh		;0ff6
	ld bc,l0000h		;0ff9
	ld bc,02018h		;0ffc
	nop			;0fff
l1000h:
	ld bc,l0000h		;1000
	add hl,de		;1003
	ld c,001h		;1004
	ld (bc),a		;1006
	nop			;1007
	ld bc,0211ah		;1008
	nop			;100b
	ld (bc),a		;100c
	ld bc,l1b00h		;100d
	ld c,001h		;1010
	ld bc,l0001h+1		;1012
	ld a,(de)		;1015
	jr nz,l101ah		;1016
l1018h:
	inc bc			;1018
	nop			;1019
l101ah:
	ld bc,02117h		;101a
	ld bc,l0200h+1		;101d
	nop			;1020
	inc e			;1021
	ld hl,l0000h		;1022
	nop			;1025
	ld (bc),a		;1026
	ld e,01fh		;1027
	ld bc,l0200h		;1029
	nop			;102c
	dec de			;102d
	jr nz,l1030h		;102e
l1030h:
	ld bc,l0003h		;1030
	rla			;1033
	ld hl,l0014h		;1034
	nop			;1037
	ld bc,l0e16h		;1038
	nop			;103b
	inc bc			;103c
	nop			;103d
	nop			;103e
	jr l104eh		;103f
	ld bc,l0100h		;1041
	ld bc,0211bh		;1044
	nop			;1047
	ld bc,l0700h		;1048
	add hl,de		;104b
	ld c,003h		;104c
l104eh:
	nop			;104e
	ld bc,l1c00h		;104f
	jr nz,l1055h		;1052
	nop			;1054
l1055h:
	nop			;1055
	ld bc,02119h		;1056
	nop			;1059
	ld bc,l0200h		;105a
	add hl,de		;105d
	jr nz,l1060h		;105e
l1060h:
	nop			;1060
	nop			;1061
	ld bc,l0c18h		;1062
	ld bc,l0100h		;1065
	nop			;1068
	rla			;1069
	inc de			;106a
	nop			;106b
	ld bc,l0100h		;106c
	dec de			;106f
	ld hl,00300h		;1070
	nop			;1073
	nop			;1074
	add hl,de		;1075
	rra			;1076
	ld bc,l0200h		;1077
	nop			;107a
	ld a,(de)		;107b
	jr nz,l107eh		;107c
l107eh:
	inc bc			;107e
	nop			;107f
	ld bc,l0e1ch		;1080
	ld (bc),a		;1083
	ld bc,l0001h		;1084
	ld e,020h		;1087
	ld (bc),a		;1089
	nop			;108a
	ld bc,l1b00h		;108b
	ld hl,l0001h		;108e
	nop			;1091
	ld (bc),a		;1092
	inc e			;1093
	dec c			;1094
	nop			;1095
	ld bc,l0400h+1		;1096
	ld e,00eh		;1099
	ld bc,l0001h		;109b
	ld b,019h		;109e
	ld hl,l0000h		;10a0
	ld bc,l1a00h		;10a3
	rra			;10a6
	ld bc,l0001h+1		;10a7
	ld bc,02018h		;10aa
	ld bc,l0100h		;10ad
	nop			;10b0
	add hl,de		;10b1
	ld hl,l0000h		;10b2
	ld (bc),a		;10b5
	ld bc,01f17h		;10b6
	nop			;10b9
	ld bc,l0700h		;10ba
	ld a,(de)		;10bd
	jr nz,l10c1h		;10be
	nop			;10c0
l10c1h:
	ld bc,l1b00h		;10c1
	ld c,002h		;10c4
	nop			;10c6
	nop			;10c7
	inc d			;10c8
	inc e			;10c9
	dec c			;10ca
	nop			;10cb
	ld (bc),a		;10cc
	nop			;10cd
	nop			;10ce
	jr l10f2h		;10cf
	nop			;10d1
	ld bc,l0803h		;10d2
	add hl,de		;10d5
	jr nz,l10d9h		;10d6
	nop			;10d8
l10d9h:
	ld bc,l1c01h		;10d9
	ld hl,l0200h		;10dc
	nop			;10df
	ld (bc),a		;10e0
	dec de			;10e1
	rra			;10e2
	inc bc			;10e3
	ld bc,l0603h		;10e4
	add hl,de		;10e7
	jr nz,l10eah		;10e8
l10eah:
	nop			;10ea
	ld bc,l1600h		;10eb
	ld c,001h		;10ee
	ld (bc),a		;10f0
	nop			;10f1
l10f2h:
	ld bc,0211ah		;10f2
	nop			;10f5
	ld (bc),a		;10f6
	nop			;10f7
	nop			;10f8
	add hl,de		;10f9
	rra			;10fa
	nop			;10fb
	ld bc,l0001h		;10fc
	dec de			;10ff
	jr nz,l1103h		;1100
l1102h:
	nop			;1102
l1103h:
	nop			;1103
	ld bc,02117h		;1104
	ld (bc),a		;1107
	nop			;1108
	ld (bc),a		;1109
	nop			;110a
	ld a,(de)		;110b
	ld c,000h		;110c
	nop			;110e
	ld bc,l1c02h		;110f
	jr nz,$+3		;1112
	ld bc,l0100h		;1114
	jr l1138h		;1117
	nop			;1119
	ld bc,l0700h		;111a
	ld a,(de)		;111d
	jr nz,l1121h		;111e
	nop			;1120
l1121h:
	ld bc,l1b00h		;1121
	ld c,002h		;1124
l1126h:
	nop			;1126
	nop			;1127
	inc d			;1128
	inc e			;1129
	dec c			;112a
	nop			;112b
	ld (bc),a		;112c
	nop			;112d
	nop			;112e
	jr l1152h		;112f
	nop			;1131
	ld bc,l0803h		;1132
	add hl,de		;1135
	jr nz,l1139h		;1136
l1138h:
	nop			;1138
l1139h:
	ld bc,l1c01h		;1139
	ld hl,l0200h		;113c
	nop			;113f
	ld (bc),a		;1140
	dec de			;1141
	rra			;1142
	inc bc			;1143
	ld bc,l0603h		;1144
	add hl,de		;1147
	ld c,001h		;1148
	nop			;114a
	ld bc,l1802h		;114b
	dec c			;114e
	nop			;114f
	ld (bc),a		;1150
	nop			;1151
l1152h:
	ld bc,0211ah		;1152
	ld bc,l0101h		;1155
	ld (bc),a		;1158
	dec de			;1159
	dec d			;115a
	inc d			;115b
	inc d			;115c
	inc d			;115d
	inc d			;115e
	add hl,de		;115f
	dec d			;1160
	inc d			;1161
	inc d			;1162
	inc d			;1163
	inc d			;1164
	rla			;1165
	dec d			;1166
	inc d			;1167
	inc d			;1168
	inc d			;1169
	inc d			;116a
	ld e,015h		;116b
	inc d			;116d
	inc d			;116e
	inc d			;116f
	inc d			;1170
	dec e			;1171
	dec d			;1172
	inc d			;1173
	inc d			;1174
	inc d			;1175
	inc d			;1176
	rla			;1177
	dec d			;1178
	inc d			;1179
	inc d			;117a
	inc d			;117b
	inc d			;117c
	add hl,de		;117d
	dec d			;117e
	inc d			;117f
	inc d			;1180
	inc d			;1181
	inc d			;1182
	rla			;1183
	dec d			;1184
	inc d			;1185
	inc d			;1186
	inc d			;1187
	inc d			;1188
	ld a,(de)		;1189
	ld hl,l1414h		;118a
	inc d			;118d
	inc d			;118e
	ld d,020h		;118f
	inc d			;1191
	inc d			;1192
	inc d			;1193
	inc d			;1194
	ld e,01fh		;1195
	nop			;1197
	inc d			;1198
	inc d			;1199
	inc d			;119a
	jr l11beh		;119b
	ld bc,l1400h+2		;119d
	inc d			;11a0
	add hl,de		;11a1
	dec c			;11a2
	ld (bc),a		;11a3
	nop			;11a4
	ld bc,01d14h		;11a5
	add a,h			;11a8
	ld c,b			;11a9
	ld c,c			;11aa
	ld d,(hl)		;11ab
	ld c,h			;11ac
	ld a,(bc)		;11ad
	nop			;11ae
	sbc a,e			;11af
	ld e,(hl)		;11b0
	ld l,b			;11b1
	ld e,e			;11b2
	ld e,d			;11b3
	ld c,a			;11b4
	ld c,e			;11b5
	ld c,d			;11b6
	ld b,a			;11b7
	ld d,c			;11b8
	ld b,b			;11b9
	ld d,e			;11ba
	ld d,h			;11bb
	ld d,l			;11bc
	ld h,a			;11bd
l11beh:
	ld h,(hl)		;11be
	ld h,l			;11bf
	ld h,h			;11c0
	ld h,e			;11c1
	ld e,c			;11c2
	ld e,h			;11c3
	ld e,l			;11c4
	ld h,c			;11c5
	ld d,b			;11c6
	ld c,l			;11c7
	ld b,(hl)		;11c8
	ld c,(hl)		;11c9
	ld b,l			;11ca
	ex af,af'		;11cb
	ld h,089h		;11cc
	ld d,a			;11ce
	ld h,b			;11cf
	ld e,b			;11d0
	ld e,a			;11d1
	ld h,d			;11d2
	ld d,e			;11d3
	ld d,h			;11d4
	ld e,c			;11d5
	ld d,d			;11d6
	ld a,(bc)		;11d7
	nop			;11d8
	adc a,b			;11d9
	ld l,a			;11da
	halt			;11db
	ld (hl),c		;11dc
	ld (hl),b		;11dd
	ld e,d			;11de
	ld e,e			;11df
	ld d,l			;11e0
	ld c,l			;11e1
	ld a,(bc)		;11e2
	nop			;11e3
	adc a,b			;11e4
	ld l,d			;11e5
	ld (hl),d		;11e6
	ld a,b			;11e7
	ld (hl),a		;11e8
	ld d,a			;11e9
	ld e,b			;11ea
	ld c,(hl)		;11eb
	ld d,b			;11ec
	ld a,(bc)		;11ed
	nop			;11ee
	adc a,b			;11ef
	ld l,l			;11f0
	ld l,e			;11f1
	ld (hl),l		;11f2
	ld (hl),h		;11f3
l11f4h:
	ld e,(hl)		;11f4
	ld e,h			;11f5
	ld c,a			;11f6
	ld d,c			;11f7
	ld a,(bc)		;11f8
	dec l			;11f9
	adc a,d			;11fa
	ld l,(hl)		;11fb
	ld l,h			;11fc
	ld a,c			;11fd
	ld a,e			;11fe
	ld e,a			;11ff
sub_1200h:
	ld d,(hl)		;1200
	ld e,l			;1201
	ld h,h			;1202
	ld h,l			;1203
	ld h,(hl)		;1204
	inc bc			;1205
	ld h,a			;1206
	inc bc			;1207
	add a,h			;1208
	adc a,h			;1209
	add a,e			;120a
	add a,d			;120b
	add a,c			;120c
	ld a,d			;120d
	ld (hl),e		;120e
	ld a,h			;120f
	ld h,b			;1210
	ld a,(06200h)		;1211
	ld h,e			;1214
	ld l,b			;1215
	inc bc			;1216
	ld l,c			;1217
	inc bc			;1218
	add a,(hl)		;1219
	add a,(hl)		;121a
	add a,l			;121b
	add a,b			;121c
l121dh:
	ld a,a			;121d
l121eh:
	nop			;121e
	add a,a			;121f
	ld a,l			;1220
	nop			;1221
	inc l			;1222
	sub d			;1223
	ld b,c			;1224
	sub d			;1225
	ld d,c			;1226
	sub d			;1227
	ld h,a			;1228
	sub d			;1229
l122ah:
	jp 02794h		;122a
	ld a,(0b73eh)		;122d
	xor a			;1230
	ret nz			;1231
	ld h,b			;1232
	ld h,c			;1233
	rst 10h			;1234
	jp pe,l00c0h		;1235
	ld (hl),0c7h		;1238
	or c			;123a
	ld (02fa2h),a		;123b
	inc h			;123e
	ccf			;123f
	rst 38h			;1240
	ld l,c			;1241
	ld a,(0f43eh)		;1242
	push af			;1245
	or 0f7h			;1246
	and h			;1248
	jr nc,l11f4h		;1249
	and l			;124b
	add hl,sp		;124c
	add hl,sp		;124d
	add hl,sp		;124e
	ccf			;124f
	rst 38h			;1250
	and (hl)		;1251
	ld a,(0cb3eh)		;1252
	or d			;1255
	and e			;1256
	xor a			;1257
	inc h			;1258
	jp c,02c93h		;1259
	sub e			;125c
	and h			;125d
	call nz,02da8h		;125e
	cp h			;1261
	xor e			;1262
	xor a			;1263
	inc h			;1264
	ccf			;1265
	rst 38h			;1266
	call po,03e3ah		;1267
	add hl,sp		;126a
	add hl,sp		;126b
	add hl,sp		;126c
	call p,0f6f5h		;126d
	rst 30h			;1270
	and h			;1271
	jr nc,l121dh		;1272
	ret nz			;1274
	ld h,(hl)		;1275
	rst 0			;1276
	or c			;1277
	and e			;1278
	cp c			;1279
	rst 0			;127a
	and d			;127b
	call nz,024a5h		;127c
	ccf			;127f
	rst 38h			;1280
	adc a,l			;1281
	sub d			;1282
	xor (hl)		;1283
	sub d			;1284
	cp l			;1285
	sub d			;1286
	jp 0f194h		;1287
	sub d			;128a
	ld c,093h		;128b
	ld hl,03e3ah		;128d
	xor c			;1290
	ret z			;1291
	xor (hl)		;1292
	ld (hl),l		;1293
	ld a,a			;1294
	dec hl			;1295
	jp pe,0d3edh		;1296
	sub e			;1299
l129ah:
	sub 027h		;129a
	jp pe,093f9h		;129c
	nop			;129f
	rst 20h			;12a0
	ld sp,hl		;12a1
	ret pe			;12a2
	jp (hl)			;12a3
	jp pe,02dcbh		;12a4
	or b			;12a7
	dec l			;12a8
	cp a			;12a9
	or l			;12aa
	inc h			;12ab
	ccf			;12ac
	rst 38h			;12ad
	ld l,d			;12ae
	ld a,(0a93eh)		;12af
	ret z			;12b2
	xor (hl)		;12b3
	nop			;12b4
	rst 20h			;12b5
	ld sp,hl		;12b6
l12b7h:
	ret pe			;12b7
	jp (hl)			;12b8
	jp pe,03f24h		;12b9
	rst 38h			;12bc
	and (hl)		;12bd
	ld a,(0f43eh)		;12be
	push af			;12c1
	or 0f7h			;12c2
	cp h			;12c4
	ld h,b			;12c5
	ld h,c			;12c6
	xor 0efh		;12c7
	ret p			;12c9
	pop af			;12ca
	jp p,0c0f3h		;12cb
	add a,(hl)		;12ce
	sbc a,a			;12cf
	and b			;12d0
	ld e,e			;12d1
	ld b,b			;12d2
	inc h			;12d3
	cp 0e4h			;12d4
	ld a,(0f9e7h)		;12d6
	ret pe			;12d9
	jp (hl)			;12da
	jp pe,0fba4h		;12db
	and d			;12de
	and l			;12df
	ret z			;12e0
	ret nz			;12e1
	ld h,b			;12e2
	ld h,c			;12e3
	xor 0efh		;12e4
	ret p			;12e6
	pop af			;12e7
	jp p,0c0f3h		;12e8
	or h			;12eb
	jr nc,l129ah		;12ec
	inc h			;12ee
	ccf			;12ef
	rst 38h			;12f0
	inc hl			;12f1
	ld a,(0e73eh)		;12f2
	ld sp,hl		;12f5
	ret pe			;12f6
	jp (hl)			;12f7
	jp pe,0fba4h		;12f8
	and d			;12fb
	and l			;12fc
	ret z			;12fd
	ret nz			;12fe
	ld h,b			;12ff
l1300h:
	ld h,c			;1300
	xor 0efh		;1301
	ret p			;1303
l1304h:
	pop af			;1304
	jp p,0c0f3h		;1305
	or h			;1308
	jr nc,l12b7h		;1309
	inc h			;130b
	ccf			;130c
	rst 38h			;130d
	ld l,l			;130e
	ld a,(0ab3eh)		;130f
	ret nz			;1312
	rst 0			;1313
	inc h			;1314
	ccf			;1315
	rst 38h			;1316
	inc h			;1317
	ld a,(0e73eh)		;1318
	ld sp,hl		;131b
	ret pe			;131c
	jp (hl)			;131d
	jp pe,060bch		;131e
	ld h,c			;1321
	rst 10h			;1322
	jp pe,037c0h		;1323
	and (hl)		;1326
	or c			;1327
	and b			;1328
	ld e,e			;1329
	ld b,b			;132a
	add a,0bdh		;132b
	or e			;132d
	xor c			;132e
	or b			;132f
	and a			;1330
	cp 064h			;1331
	ld a,(0c7a3h)		;1333
	and d			;1336
	call p,0f6f5h		;1337
	rst 30h			;133a
	and h			;133b
	ei			;133c
	jp z,0b234h		;133d
	xor (hl)		;1340
	jr z,$+43		;1341
	sub e			;1343
	rst 10h			;1344
	rst 18h			;1345
	call pe,0a8c0h		;1346
	or (hl)			;1349
	xor c			;134a
	jp z,0a4feh		;134b
	ld a,(06160h)		;134e
	xor 0efh		;1351
	ret p			;1353
	pop af			;1354
	jp p,0c0f3h		;1355
	scf			;1358
	or d			;1359
	rst 0			;135a
	or c			;135b
	xor a			;135c
	and d			;135d
	jr c,l139fh		;135e
	rst 38h			;1360
	inc hl			;1361
	ld a,(0f43eh)		;1362
	push af			;1365
	or 0f7h			;1366
	and h			;1368
	ei			;1369
	dec (hl)		;136a
	add a,0c0h		;136b
	ld h,b			;136d
	ld h,c			;136e
	xor 0efh		;136f
	ret p			;1371
	pop af			;1372
	jp p,0c0f3h		;1373
	and b			;1376
	ld e,e			;1377
	ld b,b			;1378
	add a,0bdh		;1379
	or e			;137b
	cp 064h			;137c
	ld a,(0a8b0h)		;137e
	adc a,l			;1381
	adc a,(hl)		;1382
	and a			;1383
	dec l			;1384
	and (hl)		;1385
	and d			;1386
	rst 20h			;1387
	ld sp,hl		;1388
	ret pe			;1389
	jp (hl)			;138a
	jp pe,0fba4h		;138b
	and d			;138e
	and l			;138f
	ret z			;1390
	ret nz			;1391
	call p,0f6f5h		;1392
	rst 30h			;1395
	and a			;1396
	cp 0a4h			;1397
	ld a,(0afcbh)		;1399
	ei			;139c
	ld h,b			;139d
	ld h,c			;139e
l139fh:
	xor 0efh		;139f
	ret p			;13a1
	pop af			;13a2
	jp p,0c0f3h		;13a3
	scf			;13a6
	and (hl)		;13a7
	or c			;13a8
	add a,(hl)		;13a9
	sbc a,a			;13aa
	ld e,c			;13ab
	add a,a			;13ac
	and a			;13ad
	ld h,(hl)		;13ae
	rst 0			;13af
	and d			;13b0
	jr c,l13f2h		;13b1
	rst 38h			;13b3
	call nz,0e493h		;13b4
	sub e			;13b7
	call m,sub_0d93h	;13b8
	sub h			;13bb
	dec l			;13bc
	sub h			;13bd
	add a,(hl)		;13be
	sub h			;13bf
	and c			;13c0
	sub h			;13c1
	jp 02194h		;13c2
	ld a,(0a93eh)		;13c5
	ret z			;13c8
	xor (hl)		;13c9
	rst 20h			;13ca
	ld sp,hl		;13cb
	ret pe			;13cc
	jp (hl)			;13cd
	jp pe,04dfbh		;13ce
	ld c,(hl)		;13d1
	ld (hl),l		;13d2
	ld a,a			;13d3
	dec hl			;13d4
	jp pe,0d3edh		;13d5
	sub e			;13d8
	sub 027h		;13d9
	jp pe,093f9h		;13db
	jr nc,l140dh		;13de
	cpl			;13e0
	jr c,l1422h		;13e1
	rst 38h			;13e3
	ld h,l			;13e4
	ld a,(0a23eh)		;13e5
	rst 0			;13e8
	and d			;13e9
	xor a			;13ea
l13ebh:
	cp c			;13eb
	ei			;13ec
	call p,0f6f5h		;13ed
	rst 30h			;13f0
	ld a,a			;13f1
l13f2h:
	ld a,e			;13f2
	ld a,h			;13f3
	ret nz			;13f4
	cp d			;13f5
	cp (hl)			;13f6
	and e			;13f7
	and d			;13f8
	jr c,$+65		;13f9
	rst 38h			;13fb
	xor c			;13fc
	ld a,(0cb3eh)		;13fd
l1400h:
	ld sp,0b0c6h		;1400
l1403h:
	dec l			;1403
	inc h			;1404
	call nc,0e1f5h		;1405
	rst 30h			;1408
	di			;1409
	inc h			;140a
	ccf			;140b
	rst 38h			;140c
l140dh:
	pop hl			;140d
	ld a,(0a93eh)		;140e
	xor h			;1411
	add a,060h		;1412
l1414h:
	ld h,c			;1414
	xor 0efh		;1415
	ret p			;1417
	pop af			;1418
	jp p,0c0f3h		;1419
	add a,b			;141c
	ret			;141d
	ld a,l			;141e
	ld a,(hl)		;141f
	cp h			;1420
	or h			;1421
l1422h:
	jr nc,l13ebh		;1422
	or c			;1424
	cp b			;1425
	or e			;1426
	and l			;1427
	call m,0382dh		;1428
	ccf			;142b
	rst 38h			;142c
	ld hl,(03e3ah)		;142d
	cp e			;1430
	dec l			;1431
	ld h,0bch		;1432
	xor a			;1434
	and d			;1435
	xor a			;1436
l1437h:
	ld h,038h		;1437
	cp 062h			;1439
	ld a,(0b2a3h)		;143b
	and e			;143e
	ei			;143f
	cp c			;1440
	and l			;1441
	nop			;1442
	ret po			;1443
	ret m			;1444
	pop de			;1445
	ret pe			;1446
	ret nc			;1447
	jp pe,07b7fh		;1448
	ld a,h			;144b
	ret nz			;144c
	cp d			;144d
	cp (hl)			;144e
	and e			;144f
	and d			;1450
	and c			;1451
l1452h:
	and (hl)		;1452
	add a,0a4h		;1453
	xor e			;1455
	xor a			;1456
l1457h:
	jr c,l1457h		;1457
	xor b			;1459
	ld a,(03939h)		;145a
	add hl,sp		;145d
	add a,c			;145e
	ld a,e			;145f
	xor e			;1460
	ld a,l			;1461
	ld a,(hl)		;1462
	cp h			;1463
	res 6,b			;1464
	inc (hl)		;1466
	xor h			;1467
	or e			;1468
	xor b			;1469
	and h			;146a
	ei			;146b
	cp 0e5h			;146c
	ld a,(0f8e0h)		;146e
	pop de			;1471
	ret pe			;1472
	ret nc			;1473
	jp pe,04da7h		;1474
	ld c,(hl)		;1477
	or d			;1478
	xor (hl)		;1479
	ld a,h			;147a
	ld l,0a3h		;147b
	and d			;147d
	or b			;147e
	ld (0a6a5h),a		;147f
	and l			;1482
	jr c,l14c4h		;1483
	rst 38h			;1485
	inc h			;1486
	ld a,(0393eh)		;1487
	add hl,sp		;148a
	add hl,sp		;148b
	cp e			;148c
	xor b			;148d
	or b			;148e
	ld (0a4c0h),a		;148f
	ei			;1492
	cp c			;1493
	and d			;1494
	ld b,(hl)		;1495
	add a,a			;1496
	and e			;1497
	or c			;1498
	cp b			;1499
	xor h			;149a
	or e			;149b
	or d			;149c
sub_149dh:
	xor a			;149d
	jr c,l14dfh		;149e
	rst 38h			;14a0
	ld l,h			;14a1
	ld a,(0bb3eh)		;14a2
	dec l			;14a5
	and l			;14a6
	xor e			;14a7
	add hl,sp		;14a8
	add hl,sp		;14a9
	add hl,sp		;14aa
	cp 0a7h			;14ab
	ld a,(0dfd3h)		;14ad
	ret m			;14b0
	add a,0b4h		;14b1
	ld (hl),0b6h		;14b3
	xor e			;14b5
	cp h			;14b6
	xor (hl)		;14b7
	or d			;14b8
	call nz,0c3bch		;14b9
	or c			;14bc
	jp z,0b5b3h		;14bd
	jr c,l1501h		;14c0
	rst 38h			;14c2
	nop			;14c3
l14c4h:
	dec hl			;14c4
	add hl,sp		;14c5
	and h			;14c6
	xor h			;14c7
	and h			;14c8
	or c			;14c9
	and (hl)		;14ca
	and h			;14cb
	xor l			;14cc
	and d			;14cd
	cp b			;14ce
	cp l			;14cf
	rst 38h			;14d0
	ld (l0a3ah),hl		;14d1
	jr l14f7h		;14d4
	inc e			;14d6
	dec bc			;14d7
	inc d			;14d8
	dec d			;14d9
	inc de			;14da
	nop			;14db
	rrca			;14dc
	add hl,de		;14dd
	nop			;14de
l14dfh:
	inc c			;14df
	rlca			;14e0
	add hl,de		;14e1
	ld a,(de)		;14e2
	nop			;14e3
	rlca			;14e4
	ld d,016h		;14e5
	jr l14feh		;14e7
	rlca			;14e9
	add hl,bc		;14ea
	ld c,00fh		;14eb
	inc d			;14ed
	dec c			;14ee
	cp 062h			;14ef
	ld a,(l0b14h)		;14f1
	inc de			;14f4
	dec bc			;14f5
	add hl,de		;14f6
l14f7h:
	rrca			;14f7
	add hl,de		;14f8
	inc h			;14f9
	nop			;14fa
	jr l1508h		;14fb
	ld a,(de)		;14fd
l14feh:
	dec de			;14fe
	jr l1515h		;14ff
l1501h:
	nop			;1501
	rrca			;1502
l1503h:
	inc de			;1503
	inc de			;1504
	dec bc			;1505
	ld a,(bc)		;1506
	rrca			;1507
l1508h:
	rlca			;1508
	ld a,(de)		;1509
	dec bc			;150a
	ld (de),a		;150b
	rra			;150c
	inc h			;150d
	rst 38h			;150e
	inc bc			;150f
l1510h:
	ld a,(04e4dh)		;1510
	ld c,a			;1513
	nop			;1514
l1515h:
	inc bc			;1515
	inc bc			;1516
l1517h:
	inc bc			;1517
	inc bc			;1518
	ld d,b			;1519
	nop			;151a
	ex (sp),hl		;151b
	pop hl			;151c
	jp po,0f393h		;151d
	call po,0f393h		;1520
	push hl			;1523
	and 0e1h		;1524
	ld sp,hl		;1526
	sub e			;1527
	add hl,sp		;1528
	rst 20h			;1529
	ld sp,hl		;152a
	ret pe			;152b
	cp 04dh			;152c
	ld a,(0eae9h)		;152e
	ei			;1531
	call p,0f6f5h		;1532
	rst 30h			;1535
	ld a,e			;1536
	ld a,h			;1537
	ret nz			;1538
	cp d			;1539
	cp (hl)			;153a
	jr c,l159dh		;153b
	ld h,c			;153d
	xor 0efh		;153e
	cp 08dh			;1540
	ld a,(0f1f0h)		;1542
	jp p,0c0f3h		;1545
	add a,b			;1548
	ret			;1549
	ld a,l			;154a
	ld a,(hl)		;154b
	cp h			;154c
	or l			;154d
	jp z,0c3bch		;154e
	or e			;1551
	jr c,$+1		;1552
	ld l,h			;1554
	sub l			;1555
	ld l,l			;1556
	sub (hl)		;1557
	sbc a,d			;1558
	sub (hl)		;1559
	sbc a,h			;155a
	sub (hl)		;155b
	sub (ix-025h)		;155c
	sub (hl)		;155f
	ld l,h			;1560
	sub a			;1561
	pop de			;1562
	sub a			;1563
	jp l1c98h		;1564
	sbc a,c			;1567
	ld d,c			;1568
	sbc a,c			;1569
	add a,b			;156a
	sbc a,c			;156b
	jr nz,l156eh		;156c
l156eh:
	add hl,hl		;156e
l156fh:
	jr nz,l1571h		;156f
l1571h:
	dec c			;1571
	inc hl			;1572
	nop			;1573
	ld l,d			;1574
	inc hl			;1575
	nop			;1576
	ld c,h			;1577
	inc l			;1578
	nop			;1579
	ld l,c			;157a
	inc l			;157b
	nop			;157c
	ld c,l			;157d
	ld (02900h),a		;157e
	ld (00d00h),a		;1581
	scf			;1584
	nop			;1585
	ld l,d			;1586
	scf			;1587
	nop			;1588
	ld c,h			;1589
	ld a,000h		;158a
	ld l,c			;158c
	ld a,000h		;158d
	ld c,l			;158f
	ld b,e			;1590
	nop			;1591
	ld hl,(l0043h)		;1592
	inc c			;1595
	ld d,h			;1596
	nop			;1597
	ld h,d			;1598
	ld d,h			;1599
	nop			;159a
	ld (de),a		;159b
	ld d,(hl)		;159c
l159dh:
	nop			;159d
	ld (00056h),hl		;159e
	ld d,d			;15a1
	ld e,(hl)		;15a2
	nop			;15a3
	ld h,d			;15a4
	ld e,(hl)		;15a5
	nop			;15a6
	ld (de),a		;15a7
	ld (hl),b		;15a8
	nop			;15a9
	djnz l161eh		;15aa
	nop			;15ac
	ld d,b			;15ad
	ld a,h			;15ae
	nop			;15af
	ld (l007eh),hl		;15b0
	ld h,d			;15b3
	adc a,b			;15b4
	nop			;15b5
	inc h			;15b6
	adc a,b			;15b7
	nop			;15b8
	ld d,d			;15b9
	adc a,d			;15ba
	nop			;15bb
	ld h,h			;15bc
	sub d			;15bd
	nop			;15be
	ld d,d			;15bf
	sub (hl)		;15c0
	nop			;15c1
	ld h,d			;15c2
	sub (hl)		;15c3
	nop			;15c4
	djnz l156fh		;15c5
	nop			;15c7
	ld (000a8h),hl		;15c8
	ld (de),a		;15cb
	xor d			;15cc
	nop			;15cd
	ld h,d			;15ce
	xor d			;15cf
	nop			;15d0
	ld d,d			;15d1
	or h			;15d2
	nop			;15d3
	inc c			;15d4
	or (hl)			;15d5
	nop			;15d6
	ld c,h			;15d7
	cp b			;15d8
	nop			;15d9
	inc h			;15da
	cp d			;15db
	nop			;15dc
	ld h,h			;15dd
	djnz l15e1h		;15de
	ld h,d			;15e0
l15e1h:
	ld (de),a		;15e1
	ld bc,l1452h		;15e2
	ld bc,01622h		;15e5
	ld bc,l1e12h		;15e8
	ld bc,02062h		;15eb
	ld bc,02224h		;15ee
	ld bc,02224h		;15f1
	ld bc,02452h		;15f4
	ld bc,02462h		;15f7
	ld bc,02610h		;15fa
	ld bc,02810h		;15fd
l1600h:
	ld bc,03052h		;1600
l1603h:
	ld bc,03022h		;1603
	ld bc,03212h		;1606
	ld bc,03412h		;1609
	ld bc,03864h		;160c
	ld bc,03c62h		;160f
	ld bc,03c2ah		;1612
	ld bc,03e10h		;1615
	ld bc,03e6ah		;1618
	ld bc,04050h		;161b
l161eh:
	ld bc,04806h		;161e
	ld bc,0482ch		;1621
	ld bc,04a12h		;1624
	ld bc,04a6ch		;1627
	ld bc,04c52h		;162a
	ld bc,04c2ah		;162d
	ld bc,04e10h		;1630
	ld bc,04e44h		;1633
	ld bc,04e6ah		;1636
	ld bc,05450h		;1639
	ld bc,0562ah		;163c
	ld bc,05e62h		;163f
	ld bc,06462h		;1642
	ld bc,06812h		;1645
	ld bc,06c66h		;1648
	ld bc,06e24h		;164b
	ld bc,08c52h		;164e
	ld bc,09052h		;1651
	ld bc,09250h		;1654
	ld bc,09450h		;1657
	ld bc,09462h		;165a
	ld bc,0964eh		;165d
	ld bc,09862h		;1660
	ld bc,09e62h		;1663
	ld bc,09e62h		;1666
	ld bc,0ff52h		;1669
	rst 38h			;166c
	or h			;166d
	nop			;166e
	ld d,e			;166f
	cp d			;1670
	nop			;1671
	ld h,c			;1672
	call z,05300h		;1673
	call nc,06100h		;1676
	sub 000h		;1679
	ld h,c			;167b
	ld (bc),a		;167c
	ld bc,l0453h		;167d
	ld bc,l0553h		;1680
	ld bc,00761h		;1683
	ld bc,02861h		;1686
	ld bc,02a52h		;1689
	ld bc,05c52h		;168c
	ld bc,05e53h		;168f
	ld bc,06e53h		;1692
	ld bc,07061h		;1695
	ld bc,0ff53h		;1698
	rst 38h			;169b
	ld (hl),e		;169c
	nop			;169d
	ld d,d			;169e
	ld (hl),l		;169f
	nop			;16a0
	ld d,d			;16a1
	sbc a,c			;16a2
	nop			;16a3
	ld (0009bh),hl		;16a4
	ld h,d			;16a7
	sbc a,h			;16a8
	nop			;16a9
	ld d,d			;16aa
	and b			;16ab
	nop			;16ac
	ld (de),a		;16ad
	xor e			;16ae
	nop			;16af
	ld h,d			;16b0
	or c			;16b1
	nop			;16b2
	ld (l00b3h),hl		;16b3
	ld h,d			;16b6
	ret			;16b7
	nop			;16b8
	ld d,d			;16b9
	adc a,000h		;16ba
	ld de,l00eeh		;16bc
	ld h,d			;16bf
	ret p			;16c0
	nop			;16c1
	ld h,d			;16c2
	add a,c			;16c3
	ld bc,08322h		;16c4
	ld bc,08c62h		;16c7
	ld bc,09452h		;16ca
	ld bc,09a4fh		;16cd
	ld bc,0a464h		;16d0
	ld bc,0ba0ch		;16d3
	ld bc,0bc64h		;16d6
	ld bc,0ff64h		;16d9
	rst 38h			;16dc
	add a,a			;16dd
	nop			;16de
	ld c,d			;16df
	adc a,c			;16e0
	nop			;16e1
	ld c,d			;16e2
	adc a,h			;16e3
	nop			;16e4
	ld c,d			;16e5
	sub l			;16e6
	nop			;16e7
	ld h,l			;16e8
	sbc a,d			;16e9
	nop			;16ea
	ld d,d			;16eb
	sbc a,h			;16ec
	nop			;16ed
	ld (de),a		;16ee
	and c			;16ef
	nop			;16f0
	ld (de),a		;16f1
	and e			;16f2
	nop			;16f3
	ld d,d			;16f4
	xor c			;16f5
	nop			;16f6
	ld c,(hl)		;16f7
	xor e			;16f8
	nop			;16f9
	ld c,(hl)		;16fa
	pop bc			;16fb
	nop			;16fc
	add hl,hl		;16fd
	pop bc			;16fe
	nop			;16ff
	ld h,c			;1700
	jp z,05200h		;1701
	call z,sub_1200h	;1704
	call nc,02900h		;1707
	ret pe			;170a
	nop			;170b
	ld d,d			;170c
	jp pe,05200h		;170d
	or 000h			;1710
	ld h,d			;1712
	ret m			;1713
	nop			;1714
	ld h,d			;1715
	djnz l1719h		;1716
	add hl,hl		;1718
l1719h:
	ld (de),a		;1719
	ld bc,0202ah		;171a
	ld bc,02266h		;171d
	ld bc,02666h		;1720
	ld bc,02812h		;1723
	ld bc,02a12h		;1726
	ld bc,02c52h		;1729
	ld bc,03552h		;172c
	ld bc,04d4eh		;172f
	ld bc,050ceh		;1732
	ld bc,05262h		;1735
l1738h:
	ld bc,06462h		;1738
	ld bc,0664ah		;173b
	ld bc,06e4ah		;173e
	ld bc,07012h		;1741
	ld bc,07652h		;1744
	ld bc,07852h		;1747
	ld bc,07d12h		;174a
	ld bc,09c4ah		;174d
	ld bc,0a0e5h		;1750
	ld bc,0a64eh		;1753
	ld bc,0a862h		;1756
	ld bc,0c062h		;1759
	ld bc,0c24eh		;175c
	ld bc,0d94eh		;175f
	ld bc,0ea4eh		;1762
	ld bc,0ec26h		;1765
	ld bc,0ff26h		;1768
	rst 38h			;176b
	ld h,e			;176c
	nop			;176d
	ld (l0066h),hl		;176e
	ld de,l0066h		;1771
	ld h,e			;1774
	ld l,b			;1775
	nop			;1776
	inc h			;1777
	ld l,b			;1778
	nop			;1779
	ld d,b			;177a
	ld (hl),a		;177b
	nop			;177c
	ld c,a			;177d
	ld a,(hl)		;177e
	nop			;177f
	inc h			;1780
	add a,(hl)		;1781
l1782h:
	nop			;1782
	ld h,h			;1783
	adc a,c			;1784
	nop			;1785
	ld d,b			;1786
	adc a,e			;1787
	nop			;1788
	ld c,a			;1789
	sbc a,l			;178a
	nop			;178b
	djnz l1782h		;178c
	nop			;178e
	ld (000f6h),hl		;178f
	ld d,c			;1792
	ret m			;1793
	nop			;1794
	ld d,b			;1795
	defb 0fdh,000h,022h ;illegal sequence	;1796
	ld bc,02201h		;1799
	dec b			;179c
	ld bc,l0910h		;179d
	ld bc,l0b10h		;17a0
	ld bc,l0d4fh		;17a3
	ld bc,01c4eh		;17a6
	ld bc,l1e64h		;17a9
	ld bc,02364h		;17ac
	ld bc,02f64h		;17af
	ld bc,0324eh		;17b2
	ld bc,0344dh		;17b5
	ld bc,03c4ch		;17b8
	ld bc,04726h		;17bb
	ld bc,04e66h		;17be
	ld bc,0524bh		;17c1
	ld bc,05268h		;17c4
	ld bc,05d4ch		;17c7
	ld bc,05d68h		;17ca
	ld bc,0ff4ch		;17cd
	rst 38h			;17d0
	ld h,b			;17d1
	nop			;17d2
	ld h,d			;17d3
	ld h,b			;17d4
	nop			;17d5
	ld d,d			;17d6
	ld h,d			;17d7
	nop			;17d8
	ld (l0062h),hl		;17d9
	ld (de),a		;17dc
	ld l,b			;17dd
	nop			;17de
	inc h			;17df
	ld l,b			;17e0
	nop			;17e1
	ld c,d			;17e2
	ld l,d			;17e3
	nop			;17e4
	inc h			;17e5
	ld l,d			;17e6
	nop			;17e7
	ld a,(bc)		;17e8
	ld a,h			;17e9
	nop			;17ea
	jp nc,l007eh		;17eb
	ld h,h			;17ee
	add a,(hl)		;17ef
	nop			;17f0
	inc h			;17f1
	add a,(hl)		;17f2
	nop			;17f3
	ld c,h			;17f4
	adc a,(hl)		;17f5
	nop			;17f6
	sub d			;17f7
	sub d			;17f8
	nop			;17f9
	ld d,b			;17fa
	sub (hl)		;17fb
	nop			;17fc
	ld (00096h),hl		;17fd
l1800h:
	ld (de),a		;1800
	sbc a,b			;1801
l1802h:
	nop			;1802
	ld h,d			;1803
	xor d			;1804
	nop			;1805
l1806h:
	ld d,d			;1806
	xor h			;1807
	nop			;1808
	ret nc			;1809
	or d			;180a
	nop			;180b
	ld (l00b4h),hl		;180c
	ld (l00b6h),hl		;180f
	ld h,d			;1812
	cp b			;1813
	nop			;1814
	ld c,(hl)		;1815
	add a,000h		;1816
	ld d,b			;1818
	ret z			;1819
	nop			;181a
	ld c,0d8h		;181b
	nop			;181d
	ld h,h			;181e
	exx			;181f
	nop			;1820
	ld (de),a		;1821
	jp c,02400h		;1822
	in a,(000h)		;1825
	ld d,d			;1827
	defb 0ddh,000h,012h ;illegal sequence	;1828
	jr z,l182eh		;182b
	ld d,d			;182d
l182eh:
	ld hl,(05201h)		;182e
	jr nc,l1834h		;1831
	ld h,h			;1833
l1834h:
	ld (06401h),a		;1834
	adc a,b			;1837
	ld bc,08a52h		;1838
	ld bc,0b252h		;183b
	ld bc,0b462h		;183e
	ld bc,0b662h		;1841
	ld bc,0c862h		;1844
	ld bc,0ca62h		;1847
	ld bc,0d862h		;184a
	ld bc,0da4eh		;184d
	ld bc,0e44eh		;1850
	ld bc,0e652h		;1853
	ld bc,0e852h		;1856
	ld bc,0ea62h		;1859
	ld bc,0f862h		;185c
	ld bc,0f852h		;185f
	ld bc,0fae2h		;1862
	ld bc,0fe52h		;1865
	ld bc,l0250h		;1868
	ld (bc),a		;186b
	ld d,d			;186c
	ld b,002h		;186d
	ld c,(hl)		;186f
	ex af,af'		;1870
	ld (bc),a		;1871
	ld h,d			;1872
	ld a,(bc)		;1873
	ld (bc),a		;1874
	ld h,d			;1875
	dec bc			;1876
	ld (bc),a		;1877
	ld d,d			;1878
	ld (de),a		;1879
	ld (bc),a		;187a
	ld h,d			;187b
	ld (de),a		;187c
	ld (bc),a		;187d
	ld d,d			;187e
	ld c,h			;187f
	ld (bc),a		;1880
	ld h,d			;1881
	ld c,(hl)		;1882
	ld (bc),a		;1883
	ld h,d			;1884
	ld d,b			;1885
	ld (bc),a		;1886
	ld d,d			;1887
	ld d,d			;1888
	ld (bc),a		;1889
	jp nc,l0254h		;188a
	ld h,h			;188d
	ld d,h			;188e
	ld (bc),a		;188f
	ld c,h			;1890
	ld d,(hl)		;1891
	ld (bc),a		;1892
	ld h,h			;1893
	ld d,(hl)		;1894
	ld (bc),a		;1895
	ld c,h			;1896
	ld e,(hl)		;1897
	ld (bc),a		;1898
	ld h,h			;1899
	ld e,(hl)		;189a
	ld (bc),a		;189b
	ld d,d			;189c
	ld h,d			;189d
	ld (bc),a		;189e
	ld d,d			;189f
	ld h,(hl)		;18a0
	ld (bc),a		;18a1
	ld c,(hl)		;18a2
	ld l,h			;18a3
	ld (bc),a		;18a4
	ld h,d			;18a5
	ld l,h			;18a6
	ld (bc),a		;18a7
	ld d,d			;18a8
	ld (hl),d		;18a9
	ld (bc),a		;18aa
	ld h,d			;18ab
	ld a,b			;18ac
	ld (bc),a		;18ad
	ld c,(hl)		;18ae
	ld a,l			;18af
	ld (bc),a		;18b0
	ld h,h			;18b1
	add a,d			;18b2
	ld (bc),a		;18b3
	ld h,d			;18b4
	add a,d			;18b5
	ld (bc),a		;18b6
	ld c,(hl)		;18b7
	add a,(hl)		;18b8
	ld (bc),a		;18b9
	ld h,h			;18ba
	add a,(hl)		;18bb
	ld (bc),a		;18bc
	ld d,d			;18bd
	adc a,b			;18be
	ld (bc),a		;18bf
	ld d,d			;18c0
	rst 38h			;18c1
	rst 38h			;18c2
	ld c,000h		;18c3
	djnz l18d7h		;18c5
	nop			;18c7
	ld c,01ah		;18c8
	nop			;18ca
	ld (l001ch),hl		;18cb
	inc h			;18ce
	ld (l0e00h),hl		;18cf
	ld h,000h		;18d2
	inc h			;18d4
	jr z,l18d7h		;18d5
l18d7h:
	ld h,028h		;18d7
	nop			;18d9
	ld a,(bc)		;18da
	ld hl,(02600h)		;18db
	ld hl,(l0a00h)		;18de
	ld (06400h),a		;18e1
	ld (l0c00h),a		;18e4
	ld (hl),000h		;18e7
	ld h,036h		;18e9
	nop			;18eb
	ld c,03ah		;18ec
	nop			;18ee
	ld d,b			;18ef
	ld b,h			;18f0
	nop			;18f1
	ld h,h			;18f2
	ld b,(hl)		;18f3
	nop			;18f4
	ld d,d			;18f5
	ld c,b			;18f6
	nop			;18f7
	ld (de),a		;18f8
	ld c,d			;18f9
	nop			;18fa
	ld (de),a		;18fb
	ld c,(hl)		;18fc
	nop			;18fd
	djnz $+90		;18fe
l1900h:
	nop			;1900
	ld (l0058h),hl		;1901
	ld d,d			;1904
	ld e,d			;1905
l1906h:
	nop			;1906
l1907h:
	ld h,d			;1907
	ld e,d			;1908
	nop			;1909
	ld (de),a		;190a
l190bh:
	ld e,h			;190b
	nop			;190c
	djnz l1975h		;190d
	nop			;190f
	ld c,06ah		;1910
	nop			;1912
	ld h,d			;1913
	halt			;1914
	nop			;1915
	inc h			;1916
	halt			;1917
	nop			;1918
	ld c,0ffh		;1919
	rst 38h			;191b
	ld (06200h),hl		;191c
	inc h			;191f
	nop			;1920
	ld h,d			;1921
	inc h			;1922
	nop			;1923
	ld d,d			;1924
	ld h,000h		;1925
	ld h,d			;1927
	ld h,000h		;1928
	ld d,d			;192a
	dec hl			;192b
	nop			;192c
	ld d,d			;192d
	ld l,000h		;192e
	ld d,d			;1930
	ld l,d			;1931
	nop			;1932
	ld h,d			;1933
	ld (hl),d		;1934
	nop			;1935
	ld h,d			;1936
	ld a,h			;1937
	nop			;1938
l1939h:
	ld d,d			;1939
	ld a,(hl)		;193a
	nop			;193b
	ld d,d			;193c
	add a,b			;193d
	nop			;193e
	ld h,d			;193f
	add a,b			;1940
	nop			;1941
	ld d,d			;1942
	add a,d			;1943
	nop			;1944
	ld h,d			;1945
	add a,d			;1946
	nop			;1947
	ld d,d			;1948
	call po,06200h		;1949
	and 000h		;194c
	ld h,d			;194e
	rst 38h			;194f
	rst 38h			;1950
	inc h			;1951
	nop			;1952
	ld h,d			;1953
	inc h			;1954
	nop			;1955
	ld d,d			;1956
	ld h,000h		;1957
	ld d,d			;1959
	ld h,000h		;195a
	ld h,d			;195c
	jr z,l195fh		;195d
l195fh:
	ld h,d			;195f
	ld hl,(06200h)		;1960
	add a,b			;1963
	nop			;1964
	ld c,a			;1965
	ret z			;1966
	nop			;1967
	ld h,d			;1968
	jp z,06200h		;1969
	ret nc			;196c
	nop			;196d
	ld h,d			;196e
	jp nc,06200h		;196f
	call nc,06200h		;1972
l1975h:
	call nc,05200h		;1975
	sub 000h		;1978
	ld h,d			;197a
	sub 000h		;197b
	ld d,d			;197d
	rst 38h			;197e
	rst 38h			;197f
	ld h,000h		;1980
	ld d,d			;1982
	jr z,l1985h		;1983
l1985h:
	ld c,a			;1985
	ld l,000h		;1986
	ld c,h			;1988
	jr nc,l198bh		;1989
l198bh:
	ld c,h			;198b
	jr nc,l198eh		;198c
l198eh:
	ld h,d			;198e
	ld (hl),000h		;198f
	ld d,d			;1991
	jr c,l1994h		;1992
l1994h:
	ld d,d			;1994
	inc a			;1995
	nop			;1996
	ld h,d			;1997
	ld a,000h		;1998
	ld h,d			;199a
	ld b,h			;199b
	nop			;199c
	ld h,d			;199d
	ld b,h			;199e
	nop			;199f
	ld d,d			;19a0
	ld b,l			;19a1
	nop			;19a2
	ld c,h			;19a3
	ld b,(hl)		;19a4
	nop			;19a5
	ld d,d			;19a6
	ld h,b			;19a7
	nop			;19a8
	ld d,d			;19a9
	ld h,d			;19aa
	nop			;19ab
	ld d,d			;19ac
	ld a,b			;19ad
	nop			;19ae
	ld h,d			;19af
	ld a,d			;19b0
	nop			;19b1
	ld d,d			;19b2
	adc a,h			;19b3
	nop			;19b4
	ld h,d			;19b5
	sbc a,d			;19b6
	nop			;19b7
	ld d,d			;19b8
	and 000h		;19b9
	ld d,d			;19bb
	ret pe			;19bc
	nop			;19bd
	ld d,d			;19be
	ld a,(bc)		;19bf
	ld bc,0ff62h		;19c0
	rst 38h			;19c3
	sub 099h		;19c4
	and 099h		;19c6
	or 099h			;19c8
	ld b,09ah		;19ca
	ld h,09ah		;19cc
	ld d,09ah		;19ce
	ld (hl),09ah		;19d0
	ld b,(hl)		;19d2
	sbc a,d			;19d3
	ld e,(hl)		;19d4
	sbc a,d			;19d5
	nop			;19d6
	nop			;19d7
	nop			;19d8
	rlca			;19d9
	jr nz,l19fch		;19da
	djnz l19eeh		;19dc
	jr nc,l1a10h		;19de
	jr nz,l1a02h		;19e0
	ld (hl),b		;19e2
	nop			;19e3
	nop			;19e4
	nop			;19e5
	nop			;19e6
	nop			;19e7
	ld bc,00330h		;19e8
	ld hl,l0000h		;19eb
l19eeh:
	ld bc,l0000h		;19ee
	jr nc,l19f3h		;19f1
l19f3h:
	nop			;19f3
	nop			;19f4
	nop			;19f5
	nop			;19f6
	nop			;19f7
	djnz l1a0eh		;19f8
	nop			;19fa
	nop			;19fb
l19fch:
	nop			;19fc
	nop			;19fd
	nop			;19fe
	ld b,b			;19ff
l1a00h:
	inc b			;1a00
	nop			;1a01
l1a02h:
	and b			;1a02
	and b			;1a03
	nop			;1a04
	nop			;1a05
l1a06h:
	nop			;1a06
	nop			;1a07
	djnz l1a1ah		;1a08
	djnz $+98		;1a0a
	ld h,b			;1a0c
	nop			;1a0d
l1a0eh:
	ld h,b			;1a0e
	ld h,b			;1a0f
l1a10h:
	nop			;1a10
	ld b,000h		;1a11
	nop			;1a13
	nop			;1a14
	nop			;1a15
	nop			;1a16
	nop			;1a17
	ld d,l			;1a18
	ld b,h			;1a19
l1a1ah:
	nop			;1a1a
l1a1bh:
	ld h,b			;1a1b
	nop			;1a1c
	ld d,l			;1a1d
	nop			;1a1e
	ld h,h			;1a1f
	ld h,h			;1a20
	ld h,b			;1a21
	nop			;1a22
	nop			;1a23
	nop			;1a24
	nop			;1a25
	nop			;1a26
	nop			;1a27
	nop			;1a28
	sub b			;1a29
	sub b			;1a2a
	nop			;1a2b
	djnz $-106		;1a2c
	nop			;1a2e
	jr nc,$-110		;1a2f
	nop			;1a31
	sub b			;1a32
	add hl,bc		;1a33
	nop			;1a34
	sub b			;1a35
	nop			;1a36
	nop			;1a37
	jr nc,$-126		;1a38
	add a,b			;1a3a
	adc a,e			;1a3b
	adc a,e			;1a3c
	nop			;1a3d
	nop			;1a3e
	or b			;1a3f
	or b			;1a40
	or b			;1a41
	cp b			;1a42
	nop			;1a43
	nop			;1a44
	nop			;1a45
	nop			;1a46
	djnz l1a59h		;1a47
	djnz l1a8bh		;1a49
	jr nz,l1a6dh		;1a4b
	ld b,b			;1a4d
	nop			;1a4e
	nop			;1a4f
	nop			;1a50
	nop			;1a51
	ld b,b			;1a52
	nop			;1a53
	jr nz,l1a76h		;1a54
	ld b,b			;1a56
	nop			;1a57
	nop			;1a58
l1a59h:
	nop			;1a59
	nop			;1a5a
	nop			;1a5b
	nop			;1a5c
	nop			;1a5d
	jr nz,l1a60h		;1a5e
l1a60h:
	nop			;1a60
	nop			;1a61
	nop			;1a62
	nop			;1a63
	halt			;1a64
	sbc a,d			;1a65
	cp b			;1a66
	sbc a,d			;1a67
	ret p			;1a68
	sbc a,d			;1a69
	jp p,0429ah		;1a6a
l1a6dh:
	sbc a,e			;1a6d
	ld b,d			;1a6e
	sbc a,e			;1a6f
	ld b,d			;1a70
	sbc a,e			;1a71
	ld b,h			;1a72
	sbc a,e			;1a73
	sub (hl)		;1a74
l1a75h:
	sbc a,e			;1a75
l1a76h:
	add a,b			;1a76
	nop			;1a77
	ld c,000h		;1a78
	add a,b			;1a7a
	nop			;1a7b
	ld c,0a0h		;1a7c
	add a,b			;1a7e
	inc b			;1a7f
l1a80h:
	ld c,000h		;1a80
	add a,b			;1a82
	inc b			;1a83
	ld c,0a0h		;1a84
	and b			;1a86
	nop			;1a87
	ld c,000h		;1a88
	and b			;1a8a
l1a8bh:
	nop			;1a8b
	ld c,0a0h		;1a8c
	and b			;1a8e
	inc b			;1a8f
	ld c,000h		;1a90
	and b			;1a92
	inc b			;1a93
	ld c,0a0h		;1a94
	and b			;1a96
	ex af,af'		;1a97
	ld c,000h		;1a98
	and b			;1a9a
	ex af,af'		;1a9b
	ld c,0a0h		;1a9c
	and b			;1a9e
	ld bc,0000eh		;1a9f
	and b			;1aa2
	ld bc,0a00eh		;1aa3
	and b			;1aa6
	dec b			;1aa7
	ld c,000h		;1aa8
	and b			;1aaa
	dec b			;1aab
	ld c,0a0h		;1aac
	and b			;1aae
	add hl,bc		;1aaf
	ld c,000h		;1ab0
	and b			;1ab2
	add hl,bc		;1ab3
	ld c,0a0h		;1ab4
	rst 38h			;1ab6
	rst 38h			;1ab7
	add a,h			;1ab8
	inc b			;1ab9
	inc bc			;1aba
	ex af,af'		;1abb
	add a,h			;1abc
	nop			;1abd
	inc bc			;1abe
	sbc a,b			;1abf
	adc a,(hl)		;1ac0
	nop			;1ac1
	inc bc			;1ac2
	sbc a,b			;1ac3
	sbc a,b			;1ac4
	inc b			;1ac5
	inc bc			;1ac6
	ex af,af'		;1ac7
	and (hl)		;1ac8
	inc b			;1ac9
	ld (bc),a		;1aca
	jr l1a75h		;1acb
	inc b			;1acd
	ld (bc),a		;1ace
	jr nz,l1a80h		;1acf
	inc b			;1ad1
	ld (bc),a		;1ad2
	jr nz,l1afdh		;1ad3
	dec b			;1ad5
	inc bc			;1ad6
	ex af,af'		;1ad7
	ld a,001h		;1ad8
	ld b,d			;1ada
	adc a,b			;1adb
	ld b,b			;1adc
	ld bc,08042h		;1add
	ld b,(hl)		;1ae0
	ld bc,08042h		;1ae1
	ld c,b			;1ae4
	ld bc,08842h		;1ae5
	ld d,h			;1ae8
	ld bc,09803h		;1ae9
	ld (hl),d		;1aec
	ld bc,09843h		;1aed
	rst 38h			;1af0
	rst 38h			;1af1
	ld a,b			;1af2
	nop			;1af3
	ld (bc),a		;1af4
	jr nc,$-120		;1af5
	nop			;1af7
	ld (bc),a		;1af8
	add a,b			;1af9
	sbc a,a			;1afa
	inc b			;1afb
	adc a,(hl)		;1afc
l1afdh:
	and b			;1afd
	and c			;1afe
	inc b			;1aff
l1b00h:
	ld c,000h		;1b00
l1b02h:
	jr nc,$+3		;1b02
l1b04h:
	ld c,000h		;1b04
	jr nc,$+3		;1b06
l1b08h:
	ld c,0a0h		;1b08
	ld (l0e05h),a		;1b0a
	and b			;1b0d
	ld (l0e05h),a		;1b0e
	nop			;1b11
	ld a,(l0e00h+1)		;1b12
	and b			;1b15
	ld a,(l0e00h+1)		;1b16
	nop			;1b19
	inc a			;1b1a
	dec b			;1b1b
	ld c,0a0h		;1b1c
	inc a			;1b1e
	dec b			;1b1f
	ld c,000h		;1b20
	ld l,c			;1b22
	ld bc,08002h		;1b23
l1b26h:
	and b			;1b26
	ld bc,07002h		;1b27
	ret nz			;1b2a
	ld bc,0000eh		;1b2b
	pop bc			;1b2e
	ld bc,0980eh		;1b2f
	ret z			;1b32
	dec b			;1b33
	ld c,000h		;1b34
	ret			;1b36
	dec b			;1b37
	ld c,098h		;1b38
	ret nc			;1b3a
	ld bc,0000eh		;1b3b
	pop de			;1b3e
	dec b			;1b3f
	ld c,098h		;1b40
	rst 38h			;1b42
	rst 38h			;1b43
	ret po			;1b44
	ld bc,0000eh		;1b45
	ret po			;1b48
	ld bc,0900eh		;1b49
	ret po			;1b4c
	ld bc,l004eh		;1b4d
	ret po			;1b50
l1b51h:
	ld bc,0904eh		;1b51
	jr nz,l1b5ch		;1b54
	dec de			;1b56
	ld b,b			;1b57
	jr z,l1b5ch		;1b58
	dec de			;1b5a
	ld b,b			;1b5b
l1b5ch:
	jr nc,l1b60h		;1b5c
	dec de			;1b5e
	ld b,b			;1b5f
l1b60h:
	inc (hl)		;1b60
l1b61h:
	ld b,01bh		;1b61
	ld b,b			;1b63
	ld h,b			;1b64
	ld (bc),a		;1b65
	ld c,000h		;1b66
	ld h,b			;1b68
	ld (bc),a		;1b69
	ld c,098h		;1b6a
	ld h,b			;1b6c
	ld b,00eh		;1b6d
	nop			;1b6f
	ld h,b			;1b70
	ld a,(bc)		;1b71
	ld c,098h		;1b72
	ld h,b			;1b74
	ld a,(bc)		;1b75
	ld c,000h		;1b76
	ret nz			;1b78
	ld (bc),a		;1b79
	jr nz,$+18		;1b7a
	call nz,02006h		;1b7c
	sub b			;1b7f
	ret z			;1b80
	ld b,020h		;1b81
	djnz l1b51h		;1b83
	ld (bc),a		;1b85
	jr nz,l1b08h		;1b86
	ret nc			;1b88
	ld b,020h		;1b89
	jr nz,l1b61h		;1b8b
	ld (bc),a		;1b8d
	jr nz,l1bc0h		;1b8e
	ret c			;1b90
	ld b,020h		;1b91
	ld (hl),b		;1b93
	rst 38h			;1b94
	rst 38h			;1b95
	jr z,l1b98h		;1b96
l1b98h:
	ld c,090h		;1b98
	jr z,l1b9ch		;1b9a
l1b9ch:
	ld c,000h		;1b9c
	jr z,l1ba4h		;1b9e
	ld c,090h		;1ba0
	jr z,l1ba8h		;1ba2
l1ba4h:
	ld c,010h		;1ba4
	jr c,l1ba8h		;1ba6
l1ba8h:
	ld c,090h		;1ba8
	jr c,l1bach		;1baa
l1bach:
	ld c,000h		;1bac
	jr c,l1bb4h		;1bae
	ld c,090h		;1bb0
	jr c,l1bb8h		;1bb2
l1bb4h:
	ld c,010h		;1bb4
	ld h,b			;1bb6
	nop			;1bb7
l1bb8h:
	ld c,000h		;1bb8
	ld h,b			;1bba
	nop			;1bbb
	ld c,090h		;1bbc
	ld h,b			;1bbe
	inc b			;1bbf
l1bc0h:
	ld c,000h		;1bc0
	ld h,b			;1bc2
	inc b			;1bc3
	adc a,(hl)		;1bc4
	sub b			;1bc5
	ld h,b			;1bc6
	ex af,af'		;1bc7
	ld c,010h		;1bc8
	ld h,b			;1bca
	ex af,af'		;1bcb
	ld c,090h		;1bcc
	rst 38h			;1bce
	rst 38h			;1bcf
	call nz,0949fh		;1bd0
	sbc a,a			;1bd3
	call po,sub_149dh	;1bd4
	sbc a,(hl)		;1bd7
	ld b,h			;1bd8
	sbc a,(hl)		;1bd9
	ld h,h			;1bda
	sbc a,h			;1bdb
	inc b			;1bdc
	sbc a,h			;1bdd
	ld (hl),h		;1bde
	sbc a,(hl)		;1bdf
	call nz,0349ch		;1be0
	sbc a,h			;1be3
	inc h			;1be4
	sbc a,l			;1be5
	ld d,h			;1be6
l1be7h:
	sbc a,l			;1be7
	add a,h			;1be8
	sbc a,l			;1be9
	or h			;1bea
	sbc a,l			;1beb
	inc (hl)		;1bec
	sbc a,a			;1bed
	ld h,h			;1bee
	sbc a,a			;1bef
	call p,0949ch		;1bf0
	sbc a,h			;1bf3
	and h			;1bf4
	sbc a,(hl)		;1bf5
	call nc,sub_049eh	;1bf6
	sbc a,a			;1bf9
	call nz,0f49fh		;1bfa
	sbc a,a			;1bfd
	inc h			;1bfe
	and b			;1bff
l1c00h:
	ld d,h			;1c00
l1c01h:
	and b			;1c01
l1c02h:
	add a,h			;1c02
l1c03h:
	and b			;1c03
l1c04h:
	cp 0feh			;1c04
	cp 0feh			;1c06
l1c08h:
	cp 0feh			;1c08
	jr l1be7h		;1c0a
	dec bc			;1c0c
	ret pe			;1c0d
l1c0eh:
	ex de,hl		;1c0e
	dec bc			;1c0f
	jr nz,$-79		;1c10
	xor a			;1c12
	cpl			;1c13
l1c14h:
	xor a			;1c14
	and b			;1c15
	or a			;1c16
	or a			;1c17
	add a,e			;1c18
	cp e			;1c19
	cp e			;1c1a
l1c1bh:
	cp e			;1c1b
	inc c			;1c1c
	ld l,l			;1c1d
	inc b			;1c1e
	ld (hl),l		;1c1f
l1c20h:
	ld (hl),l		;1c20
	inc b			;1c21
	djnz l1c1bh		;1c22
	rla			;1c24
	ret p			;1c25
	rst 30h			;1c26
	rla			;1c27
	ld b,b			;1c28
	ld e,e			;1c29
	ld e,e			;1c2a
	ld e,e			;1c2b
	ld e,e			;1c2c
	ld e,e			;1c2d
	ld a,a			;1c2e
	ld a,a			;1c2f
	ld a,a			;1c30
	ld a,a			;1c31
	ld a,a			;1c32
	ld a,a			;1c33
	add a,d			;1c34
	cp (hl)			;1c35
	add a,d			;1c36
	cp (hl)			;1c37
	cp (hl)			;1c38
	cp (hl)			;1c39
	add a,d			;1c3a
	cp d			;1c3b
	add a,d			;1c3c
	or (hl)			;1c3d
	or (hl)			;1c3e
	or d			;1c3f
	inc c			;1c40
	defb 0fdh,00ch,0fdh ;illegal sequence	;1c41
	defb 0fdh,00ch,037h ;illegal sequence	;1c44
	or a			;1c47
	rla			;1c48
	rst 10h			;1c49
	rst 10h			;1c4a
	djnz l1c0eh		;1c4b
	defb 0ddh,0ddh,0c1h ;illegal sequence	;1c4d
	defb 0ddh,05dh ;ld e,ixl	;1c50
	inc b			;1c52
	ld a,a			;1c53
	rlca			;1c54
	rst 30h			;1c55
	rst 30h			;1c56
	rlca			;1c57
	djnz l1cd1h		;1c58
	ld (hl),b		;1c5a
	ld (hl),a		;1c5b
	ld (hl),a		;1c5c
	ld (hl),b		;1c5d
	ld b,c			;1c5e
	defb 0ddh,041h,0dbh ;illegal sequence	;1c5f
	in a,(059h)		;1c62
	add a,d			;1c64
	cp d			;1c65
	cp d			;1c66
	cp d			;1c67
	cp d			;1c68
	cp d			;1c69
	ex af,af'		;1c6a
	ex de,hl		;1c6b
	ret pe			;1c6c
	dec bc			;1c6d
	ex de,hl		;1c6e
	ex de,hl		;1c6f
	jr nz,l1c20h		;1c70
	ld l,0e0h		;1c72
	xor 0eeh		;1c74
	cp h			;1c76
	cp l			;1c77
	cp l			;1c78
	cp l			;1c79
	cp l			;1c7a
	add a,l			;1c7b
	rlca			;1c7c
	or (hl)			;1c7d
	or (hl)			;1c7e
	or (hl)			;1c7f
	or (hl)			;1c80
	or (hl)			;1c81
	rst 38h			;1c82
	ld a,(bc)		;1c83
	xor d			;1c84
	xor d			;1c85
	xor e			;1c86
	xor d			;1c87
	rst 38h			;1c88
	ld (022eeh),hl		;1c89
	cp d			;1c8c
	ld (0b1ffh),hl		;1c8d
	or a			;1c90
	or c			;1c91
	or a			;1c92
	add a,c			;1c93
	defb 0ddh,0ddh,0ddh ;illegal sequence	;1c94
	pop de			;1c97
l1c98h:
	rst 10h			;1c98
	rst 0			;1c99
	inc b			;1c9a
	ld a,l			;1c9b
	dec b			;1c9c
	ld a,l			;1c9d
	ld a,l			;1c9e
	inc b			;1c9f
	ex af,af'		;1ca0
	cp 0feh			;1ca1
	cp 0feh			;1ca3
	ld c,020h		;1ca5
	rst 28h			;1ca7
	rst 28h			;1ca8
	rst 28h			;1ca9
	rst 28h			;1caa
	ret po			;1cab
	ld b,b			;1cac
	ld e,(hl)		;1cad
	ld b,b			;1cae
	ld e,l			;1caf
	ld e,l			;1cb0
	ld e,h			;1cb1
	call c,0ddddh		;1cb2
	call c,0c5ddh		;1cb5
	ld b,h			;1cb8
	ld e,l			;1cb9
	ld b,h			;1cba
	ld (hl),l		;1cbb
	ld (hl),l		;1cbc
	ld b,h			;1cbd
	ld b,e			;1cbe
	in a,(043h)		;1cbf
	rst 10h			;1cc1
	rst 10h			;1cc2
	ld d,e			;1cc3
	ret po			;1cc4
	xor 0e0h		;1cc5
	defb 0edh ;next byte illegal after ed	;1cc7
	defb 0edh ;next byte illegal after ed	;1cc8
	call pe,0be82h		;1cc9
	add a,d			;1ccc
	cp (hl)			;1ccd
	cp (hl)			;1cce
	add a,d			;1ccf
	dec bc			;1cd0
l1cd1h:
	ei			;1cd1
	dec bc			;1cd2
	ei			;1cd3
	ei			;1cd4
	ret m			;1cd5
	pop bc			;1cd6
	rst 18h			;1cd7
	pop bc			;1cd8
	rst 18h			;1cd9
	rst 18h			;1cda
	ld b,c			;1cdb
	add hl,sp		;1cdc
	sub e			;1cdd
	rst 0			;1cde
	rst 0			;1cdf
	sub e			;1ce0
	add hl,sp		;1ce1
	pop bc			;1ce2
	defb 0ddh,0c1h,0dbh ;illegal sequence	;1ce3
	in a,(0d9h)		;1ce6
	ld b,c			;1ce8
	ld e,l			;1ce9
	ld e,l			;1cea
	ld e,l			;1ceb
	ld e,l			;1cec
	ld e,l			;1ced
	rlca			;1cee
	ld a,a			;1cef
	ld b,a			;1cf0
	ld (hl),a		;1cf1
	ld (hl),a		;1cf2
	rlca			;1cf3
	pop bc			;1cf4
	rst 18h			;1cf5
l1cf6h:
	pop bc			;1cf6
	rst 18h			;1cf7
	rst 18h			;1cf8
	pop bc			;1cf9
	jr c,$-107		;1cfa
	rst 0			;1cfc
	rst 0			;1cfd
	sub e			;1cfe
	add hl,sp		;1cff
l1d00h:
	ex af,af'		;1d00
	cp e			;1d01
	cp b			;1d02
l1d03h:
	cp e			;1d03
	cp e			;1d04
	cp b			;1d05
	jr nz,l1cf6h		;1d06
	ld l,0eeh		;1d08
	xor 02eh		;1d0a
	add a,a			;1d0c
	or e			;1d0d
	cp c			;1d0e
	cp l			;1d0f
	cp l			;1d10
	add a,c			;1d11
	call c,0ddddh		;1d12
	call c,0c5ddh		;1d15
	ld b,h			;1d18
	ld e,l			;1d19
	ld b,h			;1d1a
	ld (hl),l		;1d1b
	ld (hl),l		;1d1c
	ld b,h			;1d1d
	ld b,e			;1d1e
	in a,(043h)		;1d1f
	rst 10h			;1d21
	rst 10h			;1d22
	ld d,e			;1d23
	rst 30h			;1d24
	rst 30h			;1d25
	rst 30h			;1d26
	rst 30h			;1d27
	rst 30h			;1d28
	ret p			;1d29
	ld b,b			;1d2a
	ld e,(hl)		;1d2b
	ld b,b			;1d2c
	ld e,a			;1d2d
	ld e,a			;1d2e
	ld e,a			;1d2f
	rst 18h			;1d30
	rst 18h			;1d31
	rst 18h			;1d32
	rst 18h			;1d33
	rst 18h			;1d34
l1d35h:
	pop bc			;1d35
	inc b			;1d36
	ld (hl),l		;1d37
	ld (hl),h		;1d38
	rlca			;1d39
	ld (hl),a		;1d3a
	ld (hl),h		;1d3b
	djnz l1d35h		;1d3c
	djnz $-39		;1d3e
	rst 10h			;1d40
	djnz l1d83h		;1d41
	sbc a,040h		;1d43
	defb 0ddh,0ddh,05ch ;illegal sequence	;1d45
	ex de,hl		;1d48
	pop bc			;1d49
	ex de,hl		;1d4a
	pop bc			;1d4b
	ex de,hl		;1d4c
	rst 38h			;1d4d
	rrca			;1d4e
	rst 8			;1d4f
	rst 8			;1d50
	rst 8			;1d51
	rst 8			;1d52
	rst 8			;1d53
	rst 30h			;1d54
	rst 30h			;1d55
	rst 30h			;1d56
	rst 30h			;1d57
	rst 30h			;1d58
	ret p			;1d59
	ld b,b			;1d5a
	ld e,(hl)		;1d5b
	ld b,b			;1d5c
	ld e,a			;1d5d
	ld e,a			;1d5e
	ld e,a			;1d5f
	rst 18h			;1d60
	rst 18h			;1d61
	rst 18h			;1d62
	rst 18h			;1d63
	rst 18h			;1d64
l1d65h:
	pop bc			;1d65
	inc b			;1d66
	ld (hl),l		;1d67
	ld (hl),h		;1d68
	rlca			;1d69
	ld (hl),a		;1d6a
	ld (hl),h		;1d6b
	djnz l1d65h		;1d6c
	djnz $-39		;1d6e
	rst 10h			;1d70
	djnz l1db3h		;1d71
	sbc a,040h		;1d73
	defb 0ddh,0ddh,05ch ;illegal sequence	;1d75
	ex de,hl		;1d78
	pop bc			;1d79
	ex de,hl		;1d7a
	pop bc			;1d7b
	ex de,hl		;1d7c
	rst 38h			;1d7d
	rrca			;1d7e
	rst 28h			;1d7f
	rrca			;1d80
	ld a,a			;1d81
	rrca			;1d82
l1d83h:
	rrca			;1d83
	rst 0			;1d84
	out (0d9h),a		;1d85
	defb 0ddh,0ddh,0c1h ;illegal sequence	;1d87
l1d8ah:
	dec b			;1d8a
	ld (hl),l		;1d8b
	ld (hl),l		;1d8c
	ld (hl),l		;1d8d
	ld (hl),l		;1d8e
	inc b			;1d8f
	ld d,b			;1d90
	ld d,(hl)		;1d91
	ld d,(hl)		;1d92
	ld d,(hl)		;1d93
	ld d,(hl)		;1d94
	ld d,0dch		;1d95
	defb 0ddh,0ddh,0dch ;illegal sequence	;1d97
	defb 0ddh,0c5h,044h ;illegal sequence	;1d9a
	ld e,l			;1d9d
	ld b,h			;1d9e
	ld (hl),l		;1d9f
	ld (hl),l		;1da0
	ld b,h			;1da1
	ld b,e			;1da2
	in a,(043h)		;1da3
	rst 10h			;1da5
	rst 10h			;1da6
	ld d,e			;1da7
	ex de,hl		;1da8
	pop bc			;1da9
	ex de,hl		;1daa
	pop bc			;1dab
	ex de,hl		;1dac
	rst 38h			;1dad
	rrca			;1dae
	rst 8			;1daf
	rst 8			;1db0
	rst 8			;1db1
	rst 8			;1db2
l1db3h:
	rst 8			;1db3
	rst 0			;1db4
	out (0d9h),a		;1db5
	defb 0ddh,0ddh,0c1h ;illegal sequence	;1db7
	dec b			;1dba
	ld (hl),l		;1dbb
	ld (hl),l		;1dbc
	ld (hl),l		;1dbd
	ld (hl),l		;1dbe
	inc b			;1dbf
	ld d,b			;1dc0
	ld d,(hl)		;1dc1
	ld d,(hl)		;1dc2
	ld d,(hl)		;1dc3
	ld d,(hl)		;1dc4
	ld d,0dch		;1dc5
	defb 0ddh,0ddh,0dch ;illegal sequence	;1dc7
	defb 0ddh,0c5h,044h ;illegal sequence	;1dca
	ld e,l			;1dcd
	ld b,h			;1dce
	ld (hl),l		;1dcf
	ld (hl),l		;1dd0
	ld b,h			;1dd1
	ld b,e			;1dd2
	in a,(043h)		;1dd3
	rst 10h			;1dd5
	rst 10h			;1dd6
	ld d,e			;1dd7
	ex de,hl		;1dd8
	pop bc			;1dd9
	ex de,hl		;1dda
	pop bc			;1ddb
	ex de,hl		;1ddc
	rst 38h			;1ddd
	rrca			;1dde
	rst 28h			;1ddf
	rrca			;1de0
	ld a,a			;1de1
	rrca			;1de2
	rrca			;1de3
	rst 38h			;1de4
	rst 38h			;1de5
	rst 38h			;1de6
	rst 38h			;1de7
	rst 38h			;1de8
	rst 38h			;1de9
	rst 38h			;1dea
	rst 38h			;1deb
	rst 38h			;1dec
l1dedh:
	rst 38h			;1ded
	rst 38h			;1dee
l1defh:
	rst 38h			;1def
	add a,d			;1df0
	cp (hl)			;1df1
	add a,d			;1df2
	jp m,082fah		;1df3
	ex af,af'		;1df6
	ex de,hl		;1df7
	ex af,af'		;1df8
	ei			;1df9
	ei			;1dfa
	ret m			;1dfb
	jr nz,l1dedh		;1dfc
	jr nz,l1defh		;1dfe
	rst 28h			;1e00
	jr nz,l1d8ah		;1e01
	or e			;1e03
l1e04h:
	cp c			;1e04
	cp l			;1e05
	cp l			;1e06
	add a,c			;1e07
l1e08h:
	rst 38h			;1e08
	rst 38h			;1e09
	rst 38h			;1e0a
l1e0bh:
	rst 38h			;1e0b
	rst 38h			;1e0c
	rst 38h			;1e0d
	rst 38h			;1e0e
	rst 38h			;1e0f
l1e10h:
	rst 38h			;1e10
	rst 38h			;1e11
l1e12h:
	rst 38h			;1e12
	rst 38h			;1e13
	ret m			;1e14
l1e15h:
	ei			;1e15
	ei			;1e16
	ei			;1e17
	ei			;1e18
	ei			;1e19
	ld a,(bc)		;1e1a
	ld l,d			;1e1b
	ld l,d			;1e1c
l1e1dh:
	ld l,e			;1e1d
	ld l,e			;1e1e
	ld l,d			;1e1f
	ex af,af'		;1e20
	ei			;1e21
	ex af,af'		;1e22
	rst 28h			;1e23
	rst 28h			;1e24
	ex af,af'		;1e25
	dec hl			;1e26
	ex de,hl		;1e27
	dec hl			;1e28
	xor e			;1e29
	xor e			;1e2a
	jr z,l1e15h		;1e2b
	ex de,hl		;1e2d
	ret pe			;1e2e
	ex de,hl		;1e2f
	ex de,hl		;1e30
	jr z,l1e52h		;1e31
	rst 38h			;1e33
	rra			;1e34
	rst 38h			;1e35
	rst 38h			;1e36
	rra			;1e37
	ex de,hl		;1e38
	pop bc			;1e39
	ex de,hl		;1e3a
	pop bc			;1e3b
	ex de,hl		;1e3c
	rst 38h			;1e3d
	rrca			;1e3e
	rst 8			;1e3f
	rst 8			;1e40
	rst 8			;1e41
	rst 8			;1e42
	rst 8			;1e43
	ret m			;1e44
l1e45h:
	ei			;1e45
	ei			;1e46
	ei			;1e47
	ei			;1e48
	ei			;1e49
	ld a,(bc)		;1e4a
	ld l,d			;1e4b
	ld l,d			;1e4c
	ld l,e			;1e4d
	ld l,e			;1e4e
	ld l,d			;1e4f
	ex af,af'		;1e50
	ei			;1e51
l1e52h:
	ex af,af'		;1e52
	rst 28h			;1e53
	rst 28h			;1e54
	ex af,af'		;1e55
	dec hl			;1e56
	ex de,hl		;1e57
	dec hl			;1e58
	xor e			;1e59
	xor e			;1e5a
	jr z,l1e45h		;1e5b
	ex de,hl		;1e5d
	ret pe			;1e5e
	ex de,hl		;1e5f
	ex de,hl		;1e60
	jr z,l1e82h		;1e61
	rst 38h			;1e63
l1e64h:
	rra			;1e64
	rst 38h			;1e65
	rst 38h			;1e66
	rra			;1e67
	ex de,hl		;1e68
	pop bc			;1e69
	ex de,hl		;1e6a
	pop bc			;1e6b
	ex de,hl		;1e6c
l1e6dh:
	rst 38h			;1e6d
	rrca			;1e6e
	rst 28h			;1e6f
	rrca			;1e70
	ld a,a			;1e71
	rrca			;1e72
	rrca			;1e73
	rst 38h			;1e74
	rst 38h			;1e75
	rst 38h			;1e76
	rst 38h			;1e77
	rst 38h			;1e78
	rst 38h			;1e79
	ret m			;1e7a
	ei			;1e7b
	ei			;1e7c
	ei			;1e7d
	ei			;1e7e
	ret m			;1e7f
	ld (hl),b		;1e80
	scf			;1e81
l1e82h:
	sub a			;1e82
l1e83h:
	rst 10h			;1e83
	rst 10h			;1e84
	djnz l1eb6h		;1e85
	xor a			;1e87
	xor a			;1e88
	xor a			;1e89
	xor a			;1e8a
	jr nz,l1ed0h		;1e8b
	ld e,e			;1e8d
	ld b,c			;1e8e
	ld e,l			;1e8f
	ld e,l			;1e90
	ld b,c			;1e91
	ld a,h			;1e92
	ld a,l			;1e93
	ld a,h			;1e94
	ld a,l			;1e95
	ld a,l			;1e96
	inc b			;1e97
	rra			;1e98
	rst 38h			;1e99
	rra			;1e9a
	rst 38h			;1e9b
	rst 38h			;1e9c
l1e9dh:
	rra			;1e9d
	rst 38h			;1e9e
	rst 38h			;1e9f
	rst 38h			;1ea0
	rst 38h			;1ea1
	rst 38h			;1ea2
	rst 38h			;1ea3
	ret m			;1ea4
	ei			;1ea5
	ei			;1ea6
	ei			;1ea7
	ei			;1ea8
	ret m			;1ea9
	djnz l1e83h		;1eaa
	ret nc			;1eac
	rst 10h			;1ead
	rst 10h			;1eae
	rla			;1eaf
	jr nz,l1e6dh		;1eb0
	dec sp			;1eb2
l1eb3h:
	ei			;1eb3
	ei			;1eb4
	ei			;1eb5
l1eb6h:
	and b			;1eb6
	xor a			;1eb7
	xor a			;1eb8
	xor a			;1eb9
	xor a			;1eba
	and b			;1ebb
	ld b,b			;1ebc
	ld e,(hl)		;1ebd
	ld e,(hl)		;1ebe
	ld e,(hl)		;1ebf
	ld e,(hl)		;1ec0
	ld e,(hl)		;1ec1
	rst 38h			;1ec2
	rst 38h			;1ec3
	rst 38h			;1ec4
	rst 38h			;1ec5
	rst 38h			;1ec6
	rst 38h			;1ec7
	ex de,hl		;1ec8
	pop bc			;1ec9
	ex de,hl		;1eca
	pop bc			;1ecb
	ex de,hl		;1ecc
	rst 38h			;1ecd
l1eceh:
	rrca			;1ece
	rst 8			;1ecf
l1ed0h:
	rst 8			;1ed0
	rst 8			;1ed1
	rst 8			;1ed2
	rst 8			;1ed3
	ret m			;1ed4
	ei			;1ed5
	ei			;1ed6
	ei			;1ed7
	ei			;1ed8
	ret m			;1ed9
	djnz l1eb3h		;1eda
	ret nc			;1edc
	rst 10h			;1edd
	rst 10h			;1ede
	rla			;1edf
	jr nz,l1e9dh		;1ee0
	dec sp			;1ee2
	ei			;1ee3
	ei			;1ee4
	ei			;1ee5
	and b			;1ee6
	xor a			;1ee7
	xor a			;1ee8
	xor a			;1ee9
	xor a			;1eea
	and b			;1eeb
	ld b,b			;1eec
	ld e,(hl)		;1eed
	ld e,(hl)		;1eee
	ld e,(hl)		;1eef
	ld e,(hl)		;1ef0
	ld e,(hl)		;1ef1
	rst 38h			;1ef2
	rst 38h			;1ef3
	rst 38h			;1ef4
	rst 38h			;1ef5
	rst 38h			;1ef6
	rst 38h			;1ef7
	ex de,hl		;1ef8
l1ef9h:
	pop bc			;1ef9
	ex de,hl		;1efa
	pop bc			;1efb
	ex de,hl		;1efc
l1efdh:
	rst 38h			;1efd
l1efeh:
	rrca			;1efe
	rst 28h			;1eff
	rrca			;1f00
	ld a,a			;1f01
	rrca			;1f02
	rrca			;1f03
l1f04h:
	ret po			;1f04
	rst 28h			;1f05
	ret po			;1f06
l1f07h:
	rst 28h			;1f07
	rst 28h			;1f08
	rst 28h			;1f09
	add a,d			;1f0a
	cp d			;1f0b
	cp d			;1f0c
	cp d			;1f0d
	cp d			;1f0e
	add a,d			;1f0f
	ex af,af'		;1f10
	ex de,hl		;1f11
	dec bc			;1f12
	in a,(0dbh)		;1f13
	ret z			;1f15
	jr nz,l1f07h		;1f16
	ret po			;1f18
l1f19h:
	rst 28h			;1f19
l1f1ah:
	rst 28h			;1f1a
	jr nz,l1efdh		;1f1b
l1f1dh:
	rst 28h			;1f1d
	ret po			;1f1e
	rst 28h			;1f1f
	rst 28h			;1f20
	rst 28h			;1f21
	and b			;1f22
	xor a			;1f23
	and b			;1f24
	xor a			;1f25
	xor a			;1f26
	and b			;1f27
	cp (hl)			;1f28
l1f29h:
	cp (hl)			;1f29
	cp (hl)			;1f2a
	cp (hl)			;1f2b
	cp (hl)			;1f2c
	add a,d			;1f2d
	rra			;1f2e
	rst 8			;1f2f
	rst 20h			;1f30
	rst 30h			;1f31
	rst 30h			;1f32
	rlca			;1f33
	rst 38h			;1f34
	rst 38h			;1f35
	rst 38h			;1f36
l1f37h:
	rst 38h			;1f37
	rst 38h			;1f38
	rst 38h			;1f39
	cp (hl)			;1f3a
	cp (hl)			;1f3b
	cp (hl)			;1f3c
	cp (hl)			;1f3d
	cp (hl)			;1f3e
	add a,d			;1f3f
	ex af,af'		;1f40
	ex de,hl		;1f41
	ret pe			;1f42
	rrca			;1f43
	rst 28h			;1f44
	ret pe			;1f45
	jr nz,l1f37h		;1f46
	jr nz,l1ef9h		;1f48
	xor a			;1f4a
	jr nz,l1eceh		;1f4b
	cp l			;1f4d
	add a,c			;1f4e
	cp e			;1f4f
	cp e			;1f50
	cp c			;1f51
	rst 38h			;1f52
	rst 38h			;1f53
	rst 38h			;1f54
	rst 38h			;1f55
	rst 38h			;1f56
	rst 38h			;1f57
	ex de,hl		;1f58
	pop bc			;1f59
	ex de,hl		;1f5a
	pop bc			;1f5b
	ex de,hl		;1f5c
	rst 38h			;1f5d
	rrca			;1f5e
	rst 8			;1f5f
	rst 8			;1f60
	rst 8			;1f61
	rst 8			;1f62
	rst 8			;1f63
	rst 38h			;1f64
	rst 38h			;1f65
	rst 38h			;1f66
l1f67h:
	rst 38h			;1f67
	rst 38h			;1f68
	rst 38h			;1f69
	cp (hl)			;1f6a
	cp (hl)			;1f6b
	cp (hl)			;1f6c
	cp (hl)			;1f6d
	cp (hl)			;1f6e
	add a,d			;1f6f
	ex af,af'		;1f70
	ex de,hl		;1f71
	ret pe			;1f72
	rrca			;1f73
	rst 28h			;1f74
	ret pe			;1f75
	jr nz,l1f67h		;1f76
	jr nz,l1f29h		;1f78
	xor a			;1f7a
	jr nz,l1efeh		;1f7b
	cp l			;1f7d
	add a,c			;1f7e
	cp e			;1f7f
	cp e			;1f80
	cp c			;1f81
	rst 38h			;1f82
	rst 38h			;1f83
	rst 38h			;1f84
	rst 38h			;1f85
	rst 38h			;1f86
	rst 38h			;1f87
	ex de,hl		;1f88
	pop bc			;1f89
	ex de,hl		;1f8a
	pop bc			;1f8b
	ex de,hl		;1f8c
	rst 38h			;1f8d
	rrca			;1f8e
	rst 28h			;1f8f
	rrca			;1f90
	ld a,a			;1f91
	rrca			;1f92
	rrca			;1f93
	rst 38h			;1f94
	rst 38h			;1f95
	rst 38h			;1f96
	rst 38h			;1f97
	rst 38h			;1f98
	rst 38h			;1f99
	jp 0c1dbh		;1f9a
	defb 0ddh,0ddh,0c1h ;illegal sequence	;1f9d
	inc b			;1fa0
	ld (hl),l		;1fa1
	ld (hl),l		;1fa2
	dec b			;1fa3
	ld (hl),l		;1fa4
	ld (hl),h		;1fa5
	ld d,0f6h		;1fa6
	ret p			;1fa8
	rst 30h			;1fa9
	rst 30h			;1faa
	rla			;1fab
	rst 38h			;1fac
	rst 38h			;1fad
	ld a,a			;1fae
	ld a,a			;1faf
	ld a,a			;1fb0
	ld h,b			;1fb1
	xor 0eeh		;1fb2
	xor 0eeh		;1fb4
	xor 0e0h		;1fb6
	add a,e			;1fb8
	cp e			;1fb9
	add a,e			;1fba
	cp a			;1fbb
	cp a			;1fbc
	cp a			;1fbd
	rst 38h			;1fbe
	rst 38h			;1fbf
	rst 38h			;1fc0
	rst 38h			;1fc1
	rst 38h			;1fc2
	rst 38h			;1fc3
	nop			;1fc4
	ccf			;1fc5
	jr nz,l1fe8h		;1fc6
	jr nz,$+65		;1fc8
	nop			;1fca
	ret m			;1fcb
	nop			;1fcc
	nop			;1fcd
	nop			;1fce
	ret m			;1fcf
	nop			;1fd0
	rst 30h			;1fd1
	add a,h			;1fd2
	call p,0f484h		;1fd3
	nop			;1fd6
	rst 18h			;1fd7
	ld d,c			;1fd8
	ld e,a			;1fd9
	ld d,c			;1fda
	ld d,c			;1fdb
	nop			;1fdc
	ld a,c			;1fdd
	ld c,c			;1fde
	ld a,l			;1fdf
	ld b,l			;1fe0
	ld a,l			;1fe1
	nop			;1fe2
	rrca			;1fe3
	ex af,af'		;1fe4
	rrca			;1fe5
	ex af,af'		;1fe6
	rst 28h			;1fe7
l1fe8h:
	nop			;1fe8
	rra			;1fe9
	nop			;1fea
	nop			;1feb
	nop			;1fec
	rra			;1fed
	nop			;1fee
	call m,sub_0404h	;1fef
	inc b			;1ff2
	call m,0407eh		;1ff3
	ld b,b			;1ff6
	ld b,b			;1ff7
	ld b,b			;1ff8
	ld a,(hl)		;1ff9
	ld a,b			;1ffa
	ld c,b			;1ffb
	ld a,b			;1ffc
	ld d,b			;1ffd
	ld e,b			;1ffe
	ld c,d			;1fff
