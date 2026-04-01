; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x0000 -o docs/reverse-engineering/issues/issue-188/gradius2e_banks/bank06.asm /tmp/gradius2e_bank06.bin

	org 00000h

l0000h:
	cp 001h			;0000
sub_0002h:
	ret m			;0002
	ld h,0e9h		;0003
	inc b			;0005
	defb 0edh ;next byte illegal after ed	;0006
	ld bc,0ea40h		;0007
	add hl,bc		;000a
	push de			;000b
	sub c			;000c
	call nc,0eb91h		;000d
	rra			;0010
l0011h:
	ld b,0d5h		;0011
	ld (hl),c		;0013
	call nc,0ea71h		;0014
	ex af,af'		;0017
	call nc,0d351h		;0018
	ld d,c			;001b
	ex de,hl		;001c
	djnz $+10		;001d
	push de			;001f
	and c			;0020
	call nc,0eba1h		;0021
	djnz $+8		;0024
	call nc,0d351h		;0026
	ld d,c			;0029
	ex de,hl		;002a
	djnz l0033h		;002b
	call nc,0d321h		;002d
	ld hl,l04ebh		;0030
l0033h:
	ld b,0d5h		;0033
	and c			;0035
	call nc,0eba1h		;0036
	inc b			;0039
	ld b,0d4h		;003a
	ld b,c			;003c
	out (041h),a		;003d
	ex de,hl		;003f
l0040h:
	ex af,af'		;0040
	ld b,0f8h		;0041
	ld a,(bc)		;0043
	defb 0edh ;next byte illegal after ed	;0044
	ex af,af'		;0045
	jr nc,$-20		;0046
	add hl,bc		;0048
	pop de			;0049
	ld b,l			;004a
	jp nc,0d195h		;004b
	ld b,e			;004e
	ld b,l			;004f
	jp nc,0d195h		;0050
	ld b,e			;0053
	dec h			;0054
	jp nc,0d175h		;0055
	inc hl			;0058
	dec h			;0059
	jp nc,0d1b5h		;005a
	add a,e			;005d
l005eh:
	sub l			;005e
	ld b,l			;005f
	sub e			;0060
	sub l			;0061
	ld b,l			;0062
	sub e			;0063
	ld (hl),l		;0064
l0065h:
	dec h			;0065
	ld (hl),e		;0066
l0067h:
	add a,l			;0067
	ld b,l			;0068
	add a,e			;0069
	defb 0fdh,000h,0a0h ;illegal sequence	;006a
	cp 001h			;006d
	rst 28h			;006f
	ld bc,l02f8h		;0070
	jp (hl)			;0073
	inc b			;0074
	jp pe,0d205h		;0075
	rrca			;0078
	cpl			;0079
	ld c,a			;007a
	ld l,a			;007b
	ld e,a			;007c
	defb 0edh ;next byte illegal after ed	;007d
	dec b			;007e
	jr nc,$-20		;007f
	ex af,af'		;0081
	out (053h),a		;0082
	sub e			;0084
	jp nc,05303h		;0085
	ld a,a			;0088
	out (073h),a		;0089
	or e			;008b
	jp nc,07323h		;008c
	ret m			;008f
	dec d			;0090
	jp pe,0d205h		;0091
	defb 0edh ;next byte illegal after ed	;0094
	ld b,050h		;0095
	ld d,l			;0097
	ld a,c			;0098
l0099h:
	sub l			;0099
	ld a,c			;009a
	ex de,hl		;009b
	ld b,006h		;009c
	ret m			;009e
	inc bc			;009f
	jp pe,0ed05h		;00a0
	dec b			;00a3
	jr nz,$+49		;00a4
	xor a			;00a6
	ld c,a			;00a7
	ld c,a			;00a8
	ret m			;00a9
	ld a,(bc)		;00aa
	defb 0edh ;next byte illegal after ed	;00ab
	ex af,af'		;00ac
	jr nc,l0099h		;00ad
	rlca			;00af
	pop de			;00b0
	ld b,l			;00b1
	jp nc,0d195h		;00b2
	ld b,e			;00b5
	ld b,l			;00b6
	jp nc,0d195h		;00b7
	ld b,e			;00ba
	dec h			;00bb
	jp nc,0d175h		;00bc
	inc hl			;00bf
l00c0h:
	dec h			;00c0
	jp nc,0d1b5h		;00c1
	add a,e			;00c4
	sub l			;00c5
	ld b,l			;00c6
	sub e			;00c7
	sub l			;00c8
	ld b,l			;00c9
	sub e			;00ca
	ld (hl),l		;00cb
	dec h			;00cc
	ld (hl),e		;00cd
	add a,l			;00ce
	ld b,l			;00cf
	add a,e			;00d0
	defb 0fdh,06dh ;ld iyl,iyl	;00d1
l00d3h:
	and b			;00d3
l00d4h:
	cp 004h			;00d4
	jp (hl)			;00d6
	ld b,081h		;00d7
	jr nz,$-125		;00d9
	add a,b			;00db
	jr nz,l005eh		;00dc
	ex de,hl		;00de
	djnz l00e9h		;00df
	add a,c			;00e1
	djnz l0065h		;00e2
	add a,b			;00e4
	djnz l0067h		;00e5
	ex de,hl		;00e7
	rrca			;00e8
l00e9h:
	ex af,af'		;00e9
	add a,b			;00ea
	sub b			;00eb
	sub b			;00ec
	ex de,hl		;00ed
	ld (bc),a		;00ee
	dec b			;00ef
	sub b			;00f0
	add a,b			;00f1
	defb 0fdh,0d4h,0a0h ;illegal sequence	;00f2
	cp 001h			;00f5
	jp (hl)			;00f7
	ld b,0eah		;00f8
	ld a,(bc)		;00fa
	defb 0edh ;next byte illegal after ed	;00fb
	ld bc,0d020h		;00fc
	nop			;00ff
	pop de			;0100
l0101h:
	nop			;0101
	nop			;0102
	ret nc			;0103
	nop			;0104
	pop de			;0105
	nop			;0106
l0107h:
	nop			;0107
	ret nc			;0108
	nop			;0109
	pop de			;010a
l010bh:
	nop			;010b
	ex de,hl		;010c
	rlca			;010d
	rrca			;010e
	ret nc			;010f
	nop			;0110
l0111h:
	pop de			;0111
	nop			;0112
	nop			;0113
	ret nc			;0114
	nop			;0115
	pop de			;0116
	nop			;0117
	nop			;0118
	and b			;0119
	jp nc,0d0a0h		;011a
	nop			;011d
	pop de			;011e
	nop			;011f
	nop			;0120
l0121h:
	ret nc			;0121
	nop			;0122
	pop de			;0123
	nop			;0124
	nop			;0125
	ret nc			;0126
	nop			;0127
	pop de			;0128
	nop			;0129
	ex de,hl		;012a
	rlca			;012b
	djnz $-46		;012c
	nop			;012e
	pop de			;012f
	nop			;0130
	nop			;0131
	ret nc			;0132
	nop			;0133
	pop de			;0134
l0135h:
	nop			;0135
	nop			;0136
	ret nc			;0137
	jr nz,l010bh		;0138
	jr nz,l0135h		;013a
	ld (hl),c		;013c
	and c			;013d
	ret nc			;013e
	ld (hl),b		;013f
	pop de			;0140
l0141h:
	ld (hl),b		;0141
	ld (hl),b		;0142
	ret nc			;0143
	ld (hl),b		;0144
l0145h:
	pop de			;0145
	ld (hl),b		;0146
	ld (hl),b		;0147
	ret nc			;0148
l0149h:
	ld (hl),b		;0149
l014ah:
	pop de			;014a
	ld (hl),b		;014b
	ex de,hl		;014c
l014dh:
	ld (bc),a		;014d
	djnz l0149h		;014e
	ld (hl),c		;0150
	and c			;0151
	jp pe,0d20ah		;0152
	ld (hl),b		;0155
l0156h:
	sub b			;0156
	or b			;0157
	pop de			;0158
	nop			;0159
	jr nz,l019ch		;015a
	ld d,b			;015c
	ld (hl),b		;015d
	sub b			;015e
	or b			;015f
l0160h:
	ret nc			;0160
	nop			;0161
	jr nz,l014dh		;0162
	inc bc			;0164
	ld b,b			;0165
	jr nz,l0168h		;0166
l0168h:
	pop de			;0168
	or b			;0169
	sub b			;016a
l016bh:
	ld (hl),b		;016b
	ld d,b			;016c
	ld b,b			;016d
	defb 0fdh,0f5h,0a0h ;illegal sequence	;016e
	ret nc			;0171
	jr nc,l0145h		;0172
	jr nc,l01a6h		;0174
	ret nc			;0176
	jr nc,l014ah		;0177
	jr nc,$+50		;0179
	ret nc			;017b
l017ch:
	jr nc,$-45		;017c
	jr nc,l016bh		;017e
	inc b			;0180
l0181h:
	djnz $-46		;0181
	jr nz,l0156h		;0183
	jr nz,$+34		;0185
	ret nc			;0187
	jr nz,$-45		;0188
	jr nz,l01ach		;018a
	ret nc			;018c
	jr nz,l0160h		;018d
	jr nz,l017ch		;018f
l0191h:
	ld (bc),a		;0191
	djnz $-4		;0192
	cp 001h			;0194
	ret m			;0196
	ld h,0e9h		;0197
	ld b,0eah		;0199
	add hl,bc		;019b
l019ch:
	defb 0edh ;next byte illegal after ed	;019c
	ld bc,0d452h		;019d
	ld sp,hl		;01a0
	ret po			;01a1
	and c			;01a2
	and b			;01a3
	push de			;01a4
	and b			;01a5
l01a6h:
	call nc,0e0f9h		;01a6
	and c			;01a9
	out (020h),a		;01aa
l01ach:
	call nc,0ea20h		;01ac
	ld a,(bc)		;01af
	defb 0edh ;next byte illegal after ed	;01b0
	ld bc,0f952h		;01b1
	call p,0d4a1h		;01b4
	ld (hl),c		;01b7
	out (070h),a		;01b8
	call nc,07071h		;01ba
	out (070h),a		;01bd
	call nc,0eb70h		;01bf
	ld (bc),a		;01c2
	dec c			;01c3
	ld sp,hl		;01c4
	call p,0d4a1h		;01c5
	ld (hl),c		;01c8
	out (070h),a		;01c9
	call nc,07071h		;01cb
	out (070h),a		;01ce
	call nc,0ed70h		;01d0
l01d3h:
	ld bc,05088h		;01d3
	ld (hl),b		;01d6
	ld (hl),b		;01d7
	ld d,b			;01d8
	ld (hl),b		;01d9
	ld (hl),b		;01da
l01dbh:
	ld (hl),b		;01db
	ld (hl),b		;01dc
	defb 0fdh,094h ;sub iyh	;01dd
	and c			;01df
l01e0h:
	ld bc,l00d3h		;01e0
	call nc,l0000h+1	;01e3
	out (000h),a		;01e6
	call nc,0eb00h		;01e8
	rlca			;01eb
	inc c			;01ec
l01edh:
	ld bc,l00d3h		;01ed
	call nc,l0000h+1	;01f0
	jp m,031d4h		;01f3
	out (030h),a		;01f6
	call nc,03031h		;01f8
	out (030h),a		;01fb
	call nc,0eb30h		;01fd
	inc b			;0200
	dec c			;0201
sub_0202h:
	call nc,0d321h		;0202
	jr nz,l01dbh		;0205
	ld hl,0d320h		;0207
	jr nz,l01e0h		;020a
	jr nz,$-19		;020c
	ld (bc),a		;020e
	dec c			;020f
sub_0210h:
	jp m,001feh		;0210
	ret m			;0213
	ld (bc),a		;0214
	pop af			;0215
	and d			;0216
	ld sp,hl		;0217
	ld d,l			;0218
	and d			;0219
	ld sp,hl		;021a
	ld h,a			;021b
	and d			;021c
	pop af			;021d
	and d			;021e
	rlca			;021f
	daa			;0220
l0221h:
	ld d,a			;0221
	and d			;0222
	ld d,d			;0223
	and c			;0224
	ld (hl),d		;0225
	nop			;0226
	jp p,0d1c7h		;0227
	nop			;022a
	ret nz			;022b
	ld d,b			;022c
	ld c,a			;022d
	ret nz			;022e
	ld sp,hl		;022f
	ld (hl),l		;0230
	and d			;0231
	ld sp,hl		;0232
	xor c			;0233
	and d			;0234
	ld d,c			;0235
	ld sp,hl		;0236
	sub 0a2h		;0237
	jp pe,0ed09h		;0239
	ld bc,0e920h		;023c
	ld bc,0e9c0h		;023f
	inc bc			;0242
	ret nc			;0243
	rst 28h			;0244
	ld bc,02040h		;0245
	nop			;0248
	pop de			;0249
	or b			;024a
	sub b			;024b
	ld (hl),b		;024c
	ld d,b			;024d
	jp (hl)			;024e
	ld (bc),a		;024f
	ld b,b			;0250
	ret p			;0251
	defb 0fdh,011h,0a2h ;illegal sequence	;0252
	jp (hl)			;0255
	ld b,0eah		;0256
	add hl,bc		;0258
	defb 0edh ;next byte illegal after ed	;0259
	ld bc,0d240h		;025a
	rlca			;025d
	daa			;025e
	ld d,a			;025f
	and d			;0260
	ld d,d			;0261
	and c			;0262
	ld (hl),d		;0263
	nop			;0264
	jp p,0c7fah		;0265
	pop de			;0268
	ld d,b			;0269
	ld b,b			;026a
	jr nz,l026dh		;026b
l026dh:
	ld (0a352h),hl		;026d
	sub c			;0270
	ld (hl),c		;0271
	ld d,c			;0272
	jp nc,0f8fah		;0273
	dec d			;0276
	jp (hl)			;0277
	inc bc			;0278
	jp pe,0ed09h		;0279
	ld bc,0d220h		;027c
	and b			;027f
	pop de			;0280
	jr nc,$-21		;0281
	ld b,071h		;0283
	ld (0a3d2h),a		;0285
	pop de			;0288
	ld (hl),c		;0289
	ld sp,0a1d2h		;028a
	jp (hl)			;028d
	inc bc			;028e
	pop de			;028f
	nop			;0290
	ld d,b			;0291
	jp (hl)			;0292
	ld b,091h		;0293
	ld d,d			;0295
	inc bc			;0296
	sub c			;0297
	ld d,c			;0298
	ld bc,l02ebh		;0299
	rrca			;029c
	or b			;029d
	ret nz			;029e
	ret nc			;029f
	nop			;02a0
	ld (0b0d2h),hl		;02a1
	ret nz			;02a4
	pop de			;02a5
	nop			;02a6
	ld h,0fah		;02a7
	jp (hl)			;02a9
	inc bc			;02aa
	jp pe,0d20ah		;02ab
	and b			;02ae
	pop de			;02af
	jr nc,$-21		;02b0
	ld b,071h		;02b2
	ld (0a3d2h),a		;02b4
	pop de			;02b7
	and c			;02b8
	ld (hl),c		;02b9
	ld sp,l03e9h		;02ba
	pop de			;02bd
	nop			;02be
	ld d,b			;02bf
	jp (hl)			;02c0
	ld b,091h		;02c1
	ld d,d			;02c3
	inc bc			;02c4
	ret nc			;02c5
	ld bc,091d1h		;02c6
	ld d,c			;02c9
	jp (hl)			;02ca
	inc bc			;02cb
	pop de			;02cc
	nop			;02cd
	ld d,b			;02ce
	jp (hl)			;02cf
	ld b,091h		;02d0
	ld d,d			;02d2
	inc bc			;02d3
	ret nc			;02d4
	jp m,0d101h		;02d5
	sub c			;02d8
	ret nc			;02d9
	ld bc,0d100h		;02da
	or d			;02dd
	ld (hl),d		;02de
	ld (0fefah),hl		;02df
	ld bc,003efh		;02e2
	ret m			;02e5
	ld (bc),a		;02e6
	ld sp,hl		;02e7
	ld d,l			;02e8
	and d			;02e9
	rst 28h			;02ea
l02ebh:
	ld bc,067f9h		;02eb
	and d			;02ee
l02efh:
	rlca			;02ef
	daa			;02f0
	ld d,a			;02f1
	and d			;02f2
	ld d,d			;02f3
	and c			;02f4
	ld (hl),d		;02f5
	pop de			;02f6
	nop			;02f7
l02f8h:
	rst 0			;02f8
	nop			;02f9
	ret nz			;02fa
	ld d,b			;02fb
sub_02fch:
	ld c,a			;02fc
	ret nz			;02fd
l02feh:
	ld sp,hl		;02fe
	ld (hl),l		;02ff
	and d			;0300
	ld sp,hl		;0301
	xor c			;0302
	and d			;0303
	ret p			;0304
l0305h:
	ld d,c			;0305
	rst 28h			;0306
l0307h:
	ld bc,0d6f9h		;0307
l030ah:
	and d			;030a
	ld bc,0b1d2h		;030b
	pop iy			;030e
	and d			;0310
l0311h:
	cp 001h			;0311
	rst 28h			;0313
	inc b			;0314
	ret m			;0315
	ld (bc),a		;0316
	jp (hl)			;0317
	ld b,0eah		;0318
	add hl,bc		;031a
	defb 0edh ;next byte illegal after ed	;031b
	ld bc,0d240h		;031c
	ld sp,hl		;031f
	xor c			;0320
	and e			;0321
	jp nc,l0221h		;0322
	out (070h),a		;0325
	rst 28h			;0327
	ld bc,0d1c7h		;0328
	jr nz,l032dh		;032b
l032dh:
	jp nc,090a0h		;032d
	and d			;0330
	pop de			;0331
	ld (02153h),hl		;0332
	ld bc,0a1d2h		;0335
	ld sp,hl		;0338
	xor c			;0339
	and e			;033a
	jp nc,l0221h		;033b
	ld (hl),b		;033e
l033fh:
	rst 0			;033f
	ld (hl),b		;0340
	ret nz			;0341
	pop de			;0342
	nop			;0343
l0344h:
	rrca			;0344
	ret nz			;0345
	ret m			;0346
	dec d			;0347
	jp pe,0320ah		;0348
	jp nc,073a2h		;034b
	pop de			;034e
	ld sp,0a1d2h		;034f
	ld (hl),c		;0352
	pop de			;0353
	ld d,d			;0354
	ld (bc),a		;0355
	jp nc,0d193h		;0356
	ld bc,091d2h		;0359
	ld d,c			;035c
	ex de,hl		;035d
	ld (bc),a		;035e
	inc c			;035f
	pop de			;0360
	ld (hl),b		;0361
	ret nz			;0362
	sub b			;0363
	or d			;0364
	jp nc,0c070h		;0365
	sub b			;0368
	or (hl)			;0369
	jp (hl)			;036a
	inc bc			;036b
	jp pe,0ed09h		;036c
	ld bc,0d220h		;036f
	jr nc,l03e4h		;0372
	jp (hl)			;0374
	ld b,0a1h		;0375
	ld (hl),d		;0377
	inc sp			;0378
	pop de			;0379
	ld sp,0a1d2h		;037a
	ld (hl),c		;037d
	jp (hl)			;037e
	inc bc			;037f
	ld d,b			;0380
	sub b			;0381
	jp (hl)			;0382
	ld b,0d1h		;0383
	ld bc,092d2h		;0385
	ld d,e			;0388
	pop de			;0389
	ld d,c			;038a
	ld bc,091d2h		;038b
	jp (hl)			;038e
	inc bc			;038f
	jp nc,0c090h		;0390
	pop de			;0393
	jp (hl)			;0394
	ld b,051h		;0395
	ld (bc),a		;0397
	jp nc,0d153h		;0398
	sub c			;039b
	ld d,c			;039c
	ld bc,05051h		;039d
	ld (hl),d		;03a0
	ld (0b2d2h),hl		;03a1
	ld (hl),c		;03a4
	ld hl,l11fdh		;03a5
	and e			;03a8
	rlca			;03a9
	rlca			;03aa
	rlca			;03ab
	ld (0a2d3h),hl		;03ac
	jp m,l04feh		;03af
	jp (hl)			;03b2
	dec b			;03b3
	ld bc,l1cebh		;03b4
	inc bc			;03b7
	add a,b			;03b8
	jr nz,l03dbh		;03b9
	jr nz,$-126		;03bb
	jr nz,l033fh		;03bd
	jr nz,l0344h		;03bf
	inc de			;03c1
	add a,c			;03c2
	add a,c			;03c3
	ld hl,0eb81h		;03c4
	rlca			;03c7
	ex af,af'		;03c8
	add a,e			;03c9
	inc de			;03ca
	add a,c			;03cb
	ld hl,02121h		;03cc
	ld sp,hl		;03cf
	rra			;03d0
l03d1h:
	and (hl)		;03d1
	add a,b			;03d2
	add a,b			;03d3
	ld b,c			;03d4
	ld de,l03ebh		;03d5
	add hl,bc		;03d8
	ld sp,hl		;03d9
	rra			;03da
l03dbh:
	and (hl)		;03db
	ld b,c			;03dc
	ld b,c			;03dd
	ld b,c			;03de
	ld sp,hl		;03df
	dec l			;03e0
	and (hl)		;03e1
	add a,c			;03e2
	ex de,hl		;03e3
l03e4h:
	inc bc			;03e4
	ld b,0f9h		;03e5
	dec l			;03e7
	and (hl)		;03e8
l03e9h:
	ld b,b			;03e9
	ld b,b			;03ea
l03ebh:
	defb 0fdh,0c0h,0a3h ;illegal sequence	;03eb
	cp 001h			;03ee
	rst 28h			;03f0
	ld bc,l05e9h		;03f1
	jp pe,0ed0ch		;03f4
	ld bc,0d350h		;03f7
	sub c			;03fa
	ex de,hl		;03fb
l03fch:
	inc e			;03fc
	inc bc			;03fd
	call nc,0d350h		;03fe
	ld d,b			;0401
	ex de,hl		;0402
	ld (bc),a		;0403
	ld b,0d5h		;0404
	and b			;0406
	call nc,0eba0h		;0407
	ld (bc),a		;040a
	ld b,0eah		;040b
	inc c			;040d
sub_040eh:
	defb 0edh ;next byte illegal after ed	;040e
	ld bc,0d450h		;040f
	sub c			;0412
	out (091h),a		;0413
	ex de,hl		;0415
	jr nz,l041eh		;0416
	jp pe,0ed0dh		;0418
	ld bc,0d433h		;041b
l041eh:
	ld d,c			;041e
	out (001h),a		;041f
	ld d,c			;0421
	call nc,05153h		;0422
	ex de,hl		;0425
	dec bc			;0426
	inc bc			;0427
	call m,01d02h		;0428
	and h			;042b
	ld (hl),c		;042c
	out (021h),a		;042d
	ld (hl),c		;042f
	call nc,07173h		;0430
	ex de,hl		;0433
	ld a,(bc)		;0434
	inc bc			;0435
	ld hl,0d371h		;0436
	ld hl,0d471h		;0439
	ld (hl),e		;043c
	ld (hl),c		;043d
	ex de,hl		;043e
	add hl,bc		;043f
	inc bc			;0440
	out (021h),a		;0441
	call nc,08171h		;0443
	out (001h),a		;0446
	ld sp,083d4h		;0448
	add a,c			;044b
	ex de,hl		;044c
	dec bc			;044d
	inc bc			;044e
	ld d,c			;044f
	sub c			;0450
	out (001h),a		;0451
	call nc,05153h		;0453
	ex de,hl		;0456
	dec bc			;0457
	inc bc			;0458
	ld (hl),c		;0459
	ex de,hl		;045a
	dec c			;045b
	inc bc			;045c
	or c			;045d
	out (021h),a		;045e
	ld (hl),e		;0460
	ld (hl),c		;0461
	ld (hl),c		;0462
	ld (hl),c		;0463
	ld (hl),c		;0464
	ld (hl),c		;0465
	ld hl,l02ebh		;0466
	add hl,bc		;0469
	ld (hl),c		;046a
	defb 0fdh,00ch,0a4h ;illegal sequence	;046b
	cp 001h			;046e
	rst 28h			;0470
	ld bc,l05e9h		;0471
	ret m			;0474
	ld (bc),a		;0475
	jp pe,0ed09h		;0476
	ld bc,0d2a0h		;0479
	sub c			;047c
	sub c			;047d
	jp pe,0eb0ah		;047e
	ld c,007h		;0481
	call nc,05151h		;0483
	push de			;0486
	and c			;0487
	and c			;0488
	ret m			;0489
	ld h,0eah		;048a
	dec bc			;048c
	jp (hl)			;048d
	dec b			;048e
	defb 0edh ;next byte illegal after ed	;048f
	ld bc,0d550h		;0490
	sub c			;0493
	call nc,0eb91h		;0494
	jr nz,l049fh		;0497
	ret m			;0499
	ld (bc),a		;049a
	jp pe,0d20ah		;049b
	defb 0edh ;next byte illegal after ed	;049e
l049fh:
	add a,c			;049f
	ld (041f9h),a		;04a0
	and (hl)		;04a3
	pop de			;04a4
	inc bc			;04a5
	jp nc,073b3h		;04a6
	sub e			;04a9
	or c			;04aa
	pop de			;04ab
	inc bc			;04ac
	ex de,hl		;04ad
	inc bc			;04ae
	ld c,0f9h		;04af
	ld b,c			;04b1
	and (hl)		;04b2
	or c			;04b3
	pop de			;04b4
	ld bc,04353h		;04b5
	inc hl			;04b8
	dec b			;04b9
	jp pe,0f909h		;04ba
	ld c,c			;04bd
	and (hl)		;04be
	dec b			;04bf
	ld sp,hl		;04c0
	ld c,c			;04c1
	and (hl)		;04c2
	ld bc,03121h		;04c3
	jp (hl)			;04c6
	ld a,(bc)		;04c7
	dec hl			;04c8
	jp nc,0d190h		;04c9
	nop			;04cc
	ld d,b			;04cd
	ld (hl),h		;04ce
	ld hl,0d200h		;04cf
	cp b			;04d2
	defb 0fdh,089h,0a4h ;illegal sequence	;04d3
	cp 001h			;04d6
	ret m			;04d8
	ld (bc),a		;04d9
	jp (hl)			;04da
	dec b			;04db
	jp pe,0ed09h		;04dc
	ld bc,0f940h		;04df
	ld e,(hl)		;04e2
	and (hl)		;04e3
	ld hl,082f9h		;04e4
	and (hl)		;04e7
	pop bc			;04e8
l04e9h:
	sbc a,l			;04e9
	sbc a,a			;04ea
l04ebh:
	sbc a,a			;04eb
	sbc a,a			;04ec
	ret m			;04ed
	dec d			;04ee
	ex de,hl		;04ef
	ld (bc),a		;04f0
	add hl,bc		;04f1
	ret m			;04f2
	inc d			;04f3
	jp pe,0ed07h		;04f4
	add a,c			;04f7
	ld (03ff9h),a		;04f8
	and (hl)		;04fb
	pop de			;04fc
	inc bc			;04fd
l04feh:
	jp nc,073b3h		;04fe
	sub e			;0501
	or c			;0502
	pop de			;0503
	ld (bc),a		;0504
	ex de,hl		;0505
	inc bc			;0506
	ld c,0f9h		;0507
	ccf			;0509
	and (hl)		;050a
	or c			;050b
	pop de			;050c
	nop			;050d
	inc hl			;050e
	inc bc			;050f
	jp nc,095b3h		;0510
l0513h:
	ret m			;0513
	inc d			;0514
	jp pe,0d107h		;0515
	jr nz,l0513h		;0518
	ld c,c			;051a
	and (hl)		;051b
	dec b			;051c
	ld sp,hl		;051d
	ld c,c			;051e
	and (hl)		;051f
	ld bc,03021h		;0520
	jp (hl)			;0523
	ld a,(bc)		;0524
	ret m			;0525
	ld (bc),a		;0526
	jp pe,0d208h		;0527
	cp e			;052a
	ld d,b			;052b
	sub b			;052c
	pop de			;052d
	nop			;052e
	inc h			;052f
	ld hl,0d200h		;0530
	ld a,b			;0533
	push iy			;0534
	and h			;0536
l0537h:
	cp 001h			;0537
	rst 28h			;0539
	ld bc,l0af8h		;053a
	jp (hl)			;053d
	inc b			;053e
	jp pe,0ed08h		;053f
	and c			;0542
	ld d,b			;0543
	ret nz			;0544
	jp (hl)			;0545
	dec b			;0546
	ld sp,hl		;0547
	ld e,(hl)		;0548
	and (hl)		;0549
	jr nz,$-21		;054a
	ld bc,0f9c0h		;054c
	add a,d			;054f
	and (hl)		;0550
	ret nz			;0551
	ld c,l			;0552
	ccf			;0553
	cpl			;0554
	rrca			;0555
	ret nz			;0556
	ex de,hl		;0557
	ld (bc),a		;0558
	ex af,af'		;0559
	ret m			;055a
	dec c			;055b
	jp pe,0d307h		;055c
	defb 0edh ;next byte illegal after ed	;055f
	add a,c			;0560
	ld e,0e9h		;0561
	ld a,(bc)		;0563
	ld e,(hl)		;0564
	jp (hl)			;0565
	dec b			;0566
	ld d,b			;0567
	ld d,b			;0568
	ex de,hl		;0569
	ld (bc),a		;056a
	add hl,bc		;056b
	jp (hl)			;056c
	ld a,(bc)		;056d
	ld a,(hl)		;056e
	jp (hl)			;056f
	dec b			;0570
	ld (hl),b		;0571
	ld (hl),b		;0572
	jp (hl)			;0573
	ld a,(bc)		;0574
	ld a,e			;0575
	ld (hl),b		;0576
	ld (hl),b		;0577
	ld (hl),b		;0578
	ld (hl),b		;0579
	ld sp,hl		;057a
	ld d,e			;057b
	and (hl)		;057c
	add a,a			;057d
	add a,c			;057e
	add a,c			;057f
	pop bc			;0580
	adc a,c			;0581
	pop bc			;0582
	add a,e			;0583
	add a,c			;0584
	ld d,a			;0585
	ld d,c			;0586
	ld d,c			;0587
	pop bc			;0588
	ld e,c			;0589
	pop bc			;058a
	ld d,e			;058b
	ld d,c			;058c
	ld a,l			;058d
	ld (hl),b		;058e
	ld (hl),b		;058f
	ld a,l			;0590
	ld (hl),b		;0591
	ld (hl),b		;0592
	ld (hl),a		;0593
	ld (hl),c		;0594
	ld (hl),c		;0595
	pop bc			;0596
	ld (hl),e		;0597
	ld (hl),c		;0598
	ex de,hl		;0599
	rlca			;059a
	inc bc			;059b
	ld c,(iy-05bh)		;059c
	cp 001h			;059f
	ret m			;05a1
	ld a,(bc)		;05a2
	rst 28h			;05a3
	ld bc,l05e9h		;05a4
	jp pe,0d103h		;05a7
	sbc a,a			;05aa
	jp pe,09704h		;05ab
	jp pe,09705h		;05ae
	jp pe,09706h		;05b1
	jp pe,09707h		;05b4
	defb 0edh ;next byte illegal after ed	;05b7
	ld bc,0eac5h		;05b8
	dec bc			;05bb
	sub b			;05bc
	ex de,hl		;05bd
	ex af,af'		;05be
	inc bc			;05bf
	jp pe,0ed0ch		;05c0
	ld bc,090c1h		;05c3
	add a,b			;05c6
	ld (hl),b		;05c7
	ld h,b			;05c8
	ld d,b			;05c9
	ld b,b			;05ca
	jr nc,l05edh		;05cb
	ld sp,hl		;05cd
	add a,l			;05ce
	and (hl)		;05cf
	pop de			;05d0
	dec c			;05d1
	jp nc,0afbfh		;05d2
	sbc a,a			;05d5
	pop bc			;05d6
	ex de,hl		;05d7
	ld (bc),a		;05d8
	add hl,bc		;05d9
	ret m			;05da
	dec c			;05db
	jp pe,0d108h		;05dc
	defb 0edh ;next byte illegal after ed	;05df
	add a,c			;05e0
	ld e,0e9h		;05e1
	ld a,(bc)		;05e3
	ld c,0e9h		;05e4
	dec b			;05e6
	nop			;05e7
	nop			;05e8
l05e9h:
	ex de,hl		;05e9
l05eah:
	ld (bc),a		;05ea
	add hl,bc		;05eb
	jp (hl)			;05ec
l05edh:
	ld a,(bc)		;05ed
	ld l,0e9h		;05ee
	dec b			;05f0
	jr nz,l0613h		;05f1
	jp (hl)			;05f3
	ld a,(bc)		;05f4
	dec hl			;05f5
	jr nz,l0618h		;05f6
	jr nz,$+34		;05f8
	ld sp,hl		;05fa
	ld d,e			;05fb
	and (hl)		;05fc
	scf			;05fd
	ld sp,0c131h		;05fe
	add hl,sp		;0601
	pop bc			;0602
	inc sp			;0603
	ld sp,l0107h		;0604
	ld bc,l09c1h		;0607
	pop bc			;060a
sub_060bh:
	inc bc			;060b
	ld bc,0202dh		;060c
	jr nz,l063eh		;060f
	jr nz,l0633h		;0611
l0613h:
	daa			;0613
	ld hl,0c121h		;0614
	inc hl			;0617
l0618h:
	ld hl,007ebh		;0618
	inc bc			;061b
	defb 0fdh,0cdh,0a5h ;illegal sequence	;061c
	add a,c			;061f
	ld bc,l0141h		;0620
	add a,c			;0623
	add a,c			;0624
	ld b,c			;0625
	ld bc,l0181h		;0626
	ld b,c			;0629
	ld bc,0fa81h		;062a
	ld b,c			;062d
	add a,c			;062e
	ld b,c			;062f
	add a,c			;0630
	ld b,c			;0631
	add a,c			;0632
l0633h:
	ld b,c			;0633
	ld b,c			;0634
	ld b,c			;0635
	add a,c			;0636
	ld b,c			;0637
	add a,c			;0638
	ld b,c			;0639
	add a,b			;063a
	add a,b			;063b
	ld b,b			;063c
	ld b,b			;063d
l063eh:
	jp m,0b0d2h		;063e
	jp nc,0d1b1h		;0641
	ld bc,0d221h		;0644
	sub e			;0647
	jp m,03121h		;0648
	ld bc,02331h		;064b
	ld sp,05303h		;064e
	inc sp			;0651
	jp m,l0df8h		;0652
	jp (hl)			;0655
	dec b			;0656
	jp pe,0d30ah		;0657
	defb 0edh ;next byte illegal after ed	;065a
	add a,c			;065b
	ld a,(0d2fah)		;065c
	sub c			;065f
	pop de			;0660
	ld bc,0eb41h		;0661
	inc bc			;0664
	rlca			;0665
	jp nc,0d171h		;0666
	ld bc,0eb41h		;0669
	ld (bc),a		;066c
	rlca			;066d
	jp nc,09161h		;066e
	pop de			;0671
	ld hl,l03ebh		;0672
	rlca			;0675
	jp nc,09151h		;0676
	pop de			;0679
	ld hl,l02ebh		;067a
	rlca			;067d
	jp nc,0d151h		;067e
	jp m,l05e9h		;0681
	pop de			;0684
	ret m			;0685
	ld (bc),a		;0686
	jp pe,0ed0bh		;0687
	dec de			;068a
	ld h,b			;068b
	jp m,l04feh		;068c
	jp (hl)			;068f
	ld b,080h		;0690
	nop			;0692
	sub b			;0693
	nop			;0694
	add a,b			;0695
	add a,b			;0696
	sub b			;0697
	nop			;0698
	ex de,hl		;0699
	rlca			;069a
	ld c,090h		;069b
	ex de,hl		;069d
	ex af,af'		;069e
	inc bc			;069f
	defb 0fdh,08dh ;adc a,iyl	;06a0
	and (hl)		;06a2
	cp 001h			;06a3
	jp (hl)			;06a5
	ld b,0eah		;06a6
	dec c			;06a8
	defb 0edh ;next byte illegal after ed	;06a9
l06aah:
	ld bc,0d335h		;06aa
l06adh:
	rlca			;06ad
	pop bc			;06ae
	ld bc,l00c0h		;06af
	ret nz			;06b2
	nop			;06b3
	ex de,hl		;06b4
	ld (bc),a		;06b5
	add hl,bc		;06b6
	daa			;06b7
	pop bc			;06b8
	ld hl,020c0h		;06b9
	ret nz			;06bc
	jr nz,l06aah		;06bd
l06bfh:
	ld (bc),a		;06bf
	add hl,bc		;06c0
	defb 0fdh,0a3h,0a6h ;illegal sequence	;06c1
l06c4h:
	cp 001h			;06c4
	ret m			;06c6
	ld (bc),a		;06c7
	jp (hl)			;06c8
	ld b,0eah		;06c9
	add hl,bc		;06cb
	jp nc,l01edh		;06cc
	ld d,b			;06cf
	ld (hl),b		;06d0
	ld (hl),b		;06d1
	pop de			;06d2
	ld b,b			;06d3
	nop			;06d4
	jp nc,0d170h		;06d5
	ld h,b			;06d8
	jr nz,l06adh		;06d9
	ld (hl),b		;06db
	pop de			;06dc
	ld b,b			;06dd
	nop			;06de
	ex de,hl		;06df
	ld (bc),a		;06e0
	inc c			;06e1
l06e2h:
	call m,0c402h		;06e2
	and (hl)		;06e5
	jp nc,09090h		;06e6
l06e9h:
	pop de			;06e9
l06eah:
	ld h,b			;06ea
	jr nz,l06bfh		;06eb
	sub b			;06ed
	pop de			;06ee
	ld (hl),b		;06ef
	jr nz,l06c4h		;06f0
	sub b			;06f2
	pop de			;06f3
	ld h,b			;06f4
	jr nz,l06e2h		;06f5
	ld (bc),a		;06f7
	inc c			;06f8
	call m,0e602h		;06f9
	and (hl)		;06fc
	defb 0fdh,0c4h,0a6h ;illegal sequence	;06fd
	cp 001h			;0700
	ret m			;0702
	dec bc			;0703
	jp (hl)			;0704
	ld b,0eah		;0705
	ld a,(bc)		;0707
	defb 0edh ;next byte illegal after ed	;0708
	ld bc,0ef30h		;0709
	ld bc,070d3h		;070c
	ld (hl),b		;070f
	jp nc,l0040h		;0710
	out (070h),a		;0713
	jp nc,02060h		;0715
	out (070h),a		;0718
	jp nc,l0040h		;071a
	ex de,hl		;071d
	ld (bc),a		;071e
	inc c			;071f
	call m,sub_0002h	;0720
	and a			;0723
	out (090h),a		;0724
	sub b			;0726
	jp nc,02060h		;0727
	out (090h),a		;072a
	jp nc,02070h		;072c
	out (090h),a		;072f
	jp nc,02060h		;0731
	ex de,hl		;0734
	ld (bc),a		;0735
	inc c			;0736
	call m,02402h		;0737
	and a			;073a
	defb 0fdh,000h,0a7h ;illegal sequence	;073b
	cp 001h			;073e
	ret m			;0740
	ld (bc),a		;0741
	jp (hl)			;0742
	inc c			;0743
	jp pe,0ed0bh		;0744
	ld bc,0d245h		;0747
	ld sp,hl		;074a
	ld l,(hl)		;074b
	and a			;074c
	djnz l074fh		;074d
l074fh:
	jp nc,0a0b0h		;074f
	sub b			;0752
	add a,b			;0753
	ld (hl),b		;0754
	ld h,b			;0755
	defb 0fdh,03eh,0a7h ;illegal sequence	;0756
	cp 001h			;0759
	rst 28h			;075b
	ld bc,l02f8h		;075c
	jp (hl)			;075f
	inc c			;0760
	jp pe,0ed09h		;0761
	ld bc,0d235h		;0764
	ld (hl),c		;0767
	ld sp,hl		;0768
	ld l,(hl)		;0769
	and a			;076a
	defb 0fdh,059h,0a7h ;illegal sequence	;076b
	ld a,e			;076e
	pop de			;076f
	inc bc			;0770
	jp nc,0d19bh		;0771
	inc hl			;0774
	dec bc			;0775
	ld (hl),e		;0776
l0777h:
	ld l,e			;0777
	jp pe,0e908h		;0778
	inc bc			;077b
	sub b			;077c
	add a,b			;077d
	ld (hl),b		;077e
	ld h,b			;077f
	ld d,b			;0780
	ld b,b			;0781
	jr nc,l07a4h		;0782
	jp m,l04feh		;0784
	jp (hl)			;0787
l0788h:
	ld b,013h		;0788
l078ah:
	inc bc			;078a
	inc bc			;078b
	ld bc,l1010h		;078c
	ex de,hl		;078f
	inc b			;0790
	inc c			;0791
	ld sp,hl		;0792
	ld d,h			;0793
	xor c			;0794
	defb 0fdh,092h,0a7h ;illegal sequence	;0795
	cp 001h			;0798
	ret m			;079a
	ld (bc),a		;079b
	jp (hl)			;079c
	ld b,0eah		;079d
	inc c			;079f
	defb 0edh ;next byte illegal after ed	;07a0
	ld (bc),a		;07a1
	jr nc,l0777h		;07a2
l07a4h:
	ld c,e			;07a4
	pop bc			;07a5
	ld h,b			;07a6
	ld (hl),b		;07a7
	ex de,hl		;07a8
	ld (bc),a		;07a9
	ld (de),a		;07aa
	dec hl			;07ab
	pop bc			;07ac
	jr nz,$+34		;07ad
	ex de,hl		;07af
	ld (bc),a		;07b0
	ld b,0f0h		;07b1
	jp pe,0ed0dh		;07b3
	ld bc,0d360h		;07b6
	ld sp,hl		;07b9
	ld d,h			;07ba
	xor c			;07bb
	call m,0b902h		;07bc
	and a			;07bf
	jr nz,l07e2h		;07c0
	ret nz			;07c2
	ex de,hl		;07c3
	inc b			;07c4
	dec b			;07c5
	jr nz,l0788h		;07c6
	jr nz,l078ah		;07c8
	call m,0c002h		;07ca
	and a			;07cd
	cp 001h			;07ce
	ret m			;07d0
	ld h,0e9h		;07d1
	ld b,0eah		;07d3
	inc c			;07d5
	defb 0edh ;next byte illegal after ed	;07d6
	ld bc,0ef33h		;07d7
	ld bc,l00d4h		;07da
	out (000h),a		;07dd
	ex de,hl		;07df
	djnz $+8		;07e0
l07e2h:
	call nc,0d320h		;07e2
	jr nz,$-19		;07e5
	djnz l07efh		;07e7
	defb 0fdh,0b2h,0a7h ;illegal sequence	;07e9
	cp 001h			;07ec
	ret m			;07ee
l07efh:
	ld (bc),a		;07ef
	jp (hl)			;07f0
	ld b,0eah		;07f1
	ld a,(bc)		;07f3
	defb 0edh ;next byte illegal after ed	;07f4
	ld bc,0ef90h		;07f5
	ld bc,05ff9h		;07f8
	xor c			;07fb
	ld sp,hl		;07fc
	ld (hl),a		;07fd
	xor c			;07fe
	ret p			;07ff
	ret m			;0800
	dec bc			;0801
	jp pe,0ed0ah		;0802
	ld bc,0f90ah		;0805
	ld e,a			;0808
	xor c			;0809
	ld sp,hl		;080a
l080bh:
	ld (hl),a		;080b
	xor c			;080c
	jp pe,0ed09h		;080d
	ld bc,0ef20h		;0810
	ld bc,08ff9h		;0813
	xor c			;0816
	ld sp,hl		;0817
	and d			;0818
	xor c			;0819
	defb 0fdh,0ffh,0a7h ;illegal sequence	;081a
	cp 001h			;081d
	ret m			;081f
	jr z,l080bh		;0820
	ld b,0eah		;0822
	ld a,(bc)		;0824
	defb 0edh ;next byte illegal after ed	;0825
l0826h:
	ld bc,0d455h		;0826
	rlca			;0829
	pop bc			;082a
	ld bc,l00c0h		;082b
	ret nz			;082e
	nop			;082f
	ex de,hl		;0830
	ld (bc),a		;0831
l0832h:
	add hl,bc		;0832
	daa			;0833
	pop bc			;0834
	ld hl,020c0h		;0835
	ret nz			;0838
	jr nz,l0826h		;0839
	ld (bc),a		;083b
	add hl,bc		;083c
	ret m			;083d
	ld h,0f5h		;083e
	jp (hl)			;0840
	ld b,0eah		;0841
	add hl,bc		;0843
	defb 0edh ;next byte illegal after ed	;0844
	ld bc,0d440h		;0845
	nop			;0848
	nop			;0849
	ret nz			;084a
	ld (hl),b		;084b
	ld (hl),b		;084c
	ret nz			;084d
	out (000h),a		;084e
	nop			;0850
	ret nz			;0851
l0852h:
	ld (hl),b		;0852
	ld (hl),b		;0853
	ret nz			;0854
	jp nc,0e901h		;0855
	inc bc			;0858
	jp pe,07007h		;0859
	ld b,b			;085c
	nop			;085d
	out (070h),a		;085e
	ex de,hl		;0860
	ld (bc),a		;0861
	dec h			;0862
	jp (hl)			;0863
	ld b,0eah		;0864
	add hl,bc		;0866
	call nc,02020h		;0867
	ret nz			;086a
	sub b			;086b
	sub b			;086c
	ret nz			;086d
	out (020h),a		;086e
	jr nz,l0832h		;0870
	sub b			;0872
	sub b			;0873
	ret nz			;0874
	jp nc,0e921h		;0875
	inc bc			;0878
	jp pe,09007h		;0879
	ld h,b			;087c
	jr nz,l0852h		;087d
	sub b			;087f
	ex de,hl		;0880
	ld (bc),a		;0881
	rra			;0882
	jp (hl)			;0883
	ld b,0eah		;0884
	ld a,(bc)		;0886
	defb 0edh ;next byte illegal after ed	;0887
	ld bc,0d340h		;0888
	nop			;088b
	nop			;088c
	ret nz			;088d
	ld (hl),b		;088e
	ld (hl),b		;088f
	ret nz			;0890
	jp nc,l0000h		;0891
l0894h:
	ret nz			;0894
	ld (hl),b		;0895
	ld (hl),b		;0896
	ret nz			;0897
	pop de			;0898
	ld bc,l03e9h		;0899
	jp pe,07008h		;089c
	ld b,b			;089f
	nop			;08a0
	jp nc,0eb70h		;08a1
	ld (bc),a		;08a4
	ld (l06e9h),hl		;08a5
	jp pe,0d30ah		;08a8
	jr nz,$+34		;08ab
	ret nz			;08ad
	sub b			;08ae
	sub b			;08af
	ret nz			;08b0
	jp nc,02020h		;08b1
	ret nz			;08b4
	sub b			;08b5
	sub b			;08b6
	ret nz			;08b7
	pop de			;08b8
	ld hl,l03e9h		;08b9
	jp pe,09008h		;08bc
	ld h,b			;08bf
	jr nz,l0894h		;08c0
	sub b			;08c2
	ex de,hl		;08c3
	ld (bc),a		;08c4
	rra			;08c5
	defb 0fdh,03dh,0a8h ;illegal sequence	;08c6
	cp 001h			;08c9
	ret m			;08cb
	ld h,0e9h		;08cc
	ld b,0eah		;08ce
	add hl,bc		;08d0
	defb 0edh ;next byte illegal after ed	;08d1
	ld bc,0d3a0h		;08d2
	ld (hl),b		;08d5
	ld (hl),b		;08d6
	jp nc,l0040h		;08d7
	out (070h),a		;08da
	jp nc,02060h		;08dc
	out (070h),a		;08df
	ex de,hl		;08e1
	ld (bc),a		;08e2
	inc c			;08e3
	jp nc,l0040h		;08e4
	call m,0c902h		;08e7
	xor b			;08ea
l08ebh:
	out (090h),a		;08eb
l08edh:
	sub b			;08ed
	jp nc,02060h		;08ee
	out (090h),a		;08f1
	jp nc,02070h		;08f3
	out (090h),a		;08f6
	ex de,hl		;08f8
	ld (bc),a		;08f9
	inc c			;08fa
	jp nc,02060h		;08fb
	call m,0eb02h		;08fe
	xor b			;0901
	ret m			;0902
	ld a,(bc)		;0903
sub_0904h:
	jp (hl)			;0904
	ld b,0eah		;0905
	dec bc			;0907
	defb 0edh ;next byte illegal after ed	;0908
	ld bc,0ef29h		;0909
	ld bc,05ff9h		;090c
	xor c			;090f
	ld sp,hl		;0910
	ld (hl),a		;0911
	xor c			;0912
	ld sp,hl		;0913
	or h			;0914
	xor c			;0915
	ld sp,hl		;0916
	in a,(0a9h)		;0917
	defb 0fdh,002h,0a9h ;illegal sequence	;0919
	cp 001h			;091c
	ret m			;091e
	ld h,0e9h		;091f
	ld b,0eah		;0921
	add hl,bc		;0923
	defb 0edh ;next byte illegal after ed	;0924
	ld bc,0d355h		;0925
	ld (hl),a		;0928
	pop bc			;0929
	ld (hl),c		;092a
	ret nz			;092b
	ld (hl),b		;092c
	ret nz			;092d
	ld (hl),b		;092e
	ex de,hl		;092f
	ld (bc),a		;0930
	dec d			;0931
	sub a			;0932
	pop bc			;0933
	sub c			;0934
	ret nz			;0935
	sub b			;0936
	ret nz			;0937
	sub b			;0938
	ex de,hl		;0939
	ld (bc),a		;093a
	add hl,bc		;093b
	ld sp,hl		;093c
l093dh:
	or h			;093d
	xor c			;093e
	ld sp,hl		;093f
	in a,(0a9h)		;0940
	ret m			;0942
	dec d			;0943
	jp (hl)			;0944
	ld b,0eah		;0945
	ld a,(bc)		;0947
	defb 0edh ;next byte illegal after ed	;0948
	ld bc,0f980h		;0949
	adc a,a			;094c
	xor c			;094d
	ld sp,hl		;094e
	and d			;094f
l0950h:
	xor c			;0950
	defb 0fdh,03ch,0a9h ;illegal sequence	;0951
	nop			;0954
l0955h:
	nop			;0955
	ret nz			;0956
	ex de,hl		;0957
	inc b			;0958
	dec b			;0959
	nop			;095a
	ret nz			;095b
	nop			;095c
	ret nz			;095d
	jp m,070d2h		;095e
	ld (hl),b		;0961
	pop de			;0962
	ld b,b			;0963
	nop			;0964
	jp nc,0d170h		;0965
	ld h,b			;0968
	jr nz,l093dh		;0969
	ld (hl),b		;096b
	ex de,hl		;096c
	ld (bc),a		;096d
	inc c			;096e
	pop de			;096f
	ld b,b			;0970
	nop			;0971
	call m,05f02h		;0972
	xor c			;0975
	jp m,090d2h		;0976
	sub b			;0979
	pop de			;097a
	ld h,b			;097b
	jr nz,l0950h		;097c
	sub b			;097e
	pop de			;097f
	ld (hl),b		;0980
	jr nz,l0955h		;0981
	sub b			;0983
	ex de,hl		;0984
	ld (bc),a		;0985
	inc c			;0986
l0987h:
	pop de			;0987
	ld h,b			;0988
	jr nz,l0987h		;0989
	ld (bc),a		;098b
	ld (hl),a		;098c
	xor c			;098d
	jp m,040d1h		;098e
	nop			;0991
	ld b,b			;0992
	ld h,b			;0993
	jr nz,$+98		;0994
	ex de,hl		;0996
	ld (bc),a		;0997
	add hl,bc		;0998
	ld b,b			;0999
	nop			;099a
	ld b,b			;099b
	ld (hl),b		;099c
	call m,08f02h		;099d
	xor c			;09a0
	jp m,02060h		;09a1
	ld h,b			;09a4
	ld (hl),b		;09a5
	ld b,b			;09a6
l09a7h:
	ld (hl),b		;09a7
	ex de,hl		;09a8
	ld (bc),a		;09a9
	ex af,af'		;09aa
	ld h,b			;09ab
	jr nz,l0a0eh		;09ac
	sub b			;09ae
	call m,0a202h		;09af
	xor c			;09b2
	jp m,026f8h		;09b3
	jp (hl)			;09b6
	ld b,0eah		;09b7
	add hl,bc		;09b9
	defb 0edh ;next byte illegal after ed	;09ba
	ld bc,0d444h		;09bb
	ld (hl),b		;09be
	ld (hl),b		;09bf
	ret nz			;09c0
l09c1h:
	out (000h),a		;09c1
	nop			;09c3
	ret nz			;09c4
	ld (hl),b		;09c5
	ld (hl),b		;09c6
	ret nz			;09c7
	jp nc,l0000h		;09c8
	ret nz			;09cb
	ld (hl),c		;09cc
	jp (hl)			;09cd
	inc bc			;09ce
	jp pe,0d107h		;09cf
	nop			;09d2
	jp nc,04070h		;09d3
	nop			;09d6
	ex de,hl		;09d7
	ld (bc),a		;09d8
	dec h			;09d9
	jp m,l06e9h		;09da
	jp pe,0d409h		;09dd
	sub b			;09e0
	sub b			;09e1
	ret nz			;09e2
	out (020h),a		;09e3
l09e5h:
	jr nz,l09a7h		;09e5
	sub b			;09e7
	sub b			;09e8
	ret nz			;09e9
	jp nc,02020h		;09ea
	ret nz			;09ed
	sub c			;09ee
	pop de			;09ef
	jp (hl)			;09f0
	inc bc			;09f1
	jp pe,02007h		;09f2
	jp nc,06090h		;09f5
	jr nz,l09e5h		;09f8
	ld (bc),a		;09fa
	jr nz,$-4		;09fb
	push de			;09fd
	ld sp,hl		;09fe
	adc a,l			;09ff
	xor d			;0a00
sub_0a01h:
	sub a			;0a01
	sub a			;0a02
sub_0a03h:
	sbc a,a			;0a03
	rst 38h			;0a04
	call nc,sub_02fch	;0a05
	cp 0a9h			;0a08
	ld sp,hl		;0a0a
	sub b			;0a0b
sub_0a0ch:
	xor d			;0a0c
	ret m			;0a0d
l0a0eh:
	inc d			;0a0e
	defb 0edh ;next byte illegal after ed	;0a0f
sub_0a10h:
	add a,c			;0a10
	ld (077d2h),a		;0a11
	ld d,a			;0a14
	jp pe,04f0ah		;0a15
	rst 38h			;0a18
	cp 001h			;0a19
	jp (hl)			;0a1b
	ex af,af'		;0a1c
	ret m			;0a1d
	ld a,(bc)		;0a1e
	jp pe,0d10bh		;0a1f
	defb 0edh ;next byte illegal after ed	;0a22
	add a,c			;0a23
	ld (0d207h),a		;0a24
	or a			;0a27
	jp pe,09f08h		;0a28
	jp z,0feffh		;0a2b
	ld bc,008e9h		;0a2e
	ret m			;0a31
	ld a,(bc)		;0a32
	jp pe,0d10ch		;0a33
	defb 0edh ;next byte illegal after ed	;0a36
	add a,c			;0a37
	ld e,d			;0a38
	ld d,a			;0a39
	ld b,a			;0a3a
	cpl			;0a3b
	rst 38h			;0a3c
	ld sp,hl		;0a3d
	sub a			;0a3e
	xor d			;0a3f
	jp pe,0f90bh		;0a40
	ld d,d			;0a43
	xor d			;0a44
	sub b			;0a45
	rst 38h			;0a46
	rst 28h			;0a47
	ld bc,097f9h		;0a48
	xor d			;0a4b
	jp pe,0f90ah		;0a4c
	ld d,d			;0a4f
	xor d			;0a50
	rst 38h			;0a51
	ld d,b			;0a52
	ld d,b			;0a53
	ld (hl),b		;0a54
	sub b			;0a55
	jp nc,07050h		;0a56
	sub b			;0a59
	pop de			;0a5a
	ld d,b			;0a5b
	ld (hl),b		;0a5c
	sbc a,c			;0a5d
	add a,b			;0a5e
	ld (hl),b		;0a5f
	ld d,b			;0a60
	ld b,(hl)		;0a61
	jp pe,0d309h		;0a62
	jr nz,l0ad7h		;0a65
	sub b			;0a67
	jp nc,07020h		;0a68
	sub b			;0a6b
	pop de			;0a6c
	inc l			;0a6d
	defb 0edh ;next byte illegal after ed	;0a6e
	ld bc,0f87fh		;0a6f
	dec d			;0a72
	jp nc,09040h		;0a73
	pop de			;0a76
	jr nz,$+114		;0a77
	ret nc			;0a79
	nop			;0a7a
	ld d,b			;0a7b
	and b			;0a7c
	ld b,b			;0a7d
	sub b			;0a7e
	jp pe,0d204h		;0a7f
	ld b,b			;0a82
	sub b			;0a83
	pop de			;0a84
	jr nz,l0af7h		;0a85
	ret nc			;0a87
	nop			;0a88
	ld d,b			;0a89
	and b			;0a8a
	ld b,b			;0a8b
	jp m,l01edh		;0a8c
	ld (001feh),a		;0a8f
	jp (hl)			;0a92
	ex af,af'		;0a93
	jp pe,0fa0dh		;0a94
	cp 001h			;0a97
	ret m			;0a99
	ld h,0e9h		;0a9a
	inc b			;0a9c
	out (0edh),a		;0a9d
	ld bc,0fa54h		;0a9f
	cp 004h			;0aa2
	jp (hl)			;0aa4
	dec b			;0aa5
	or b			;0aa6
	nop			;0aa7
	nop			;0aa8
	nop			;0aa9
	jr nc,l0adch		;0aaa
	jr nc,$+50		;0aac
	ld b,b			;0aae
	ex de,hl		;0aaf
	ex af,af'		;0ab0
	inc bc			;0ab1
	ld sp,hl		;0ab2
	ld a,(de)		;0ab3
	xor e			;0ab4
	ex de,hl		;0ab5
	inc b			;0ab6
	dec b			;0ab7
	ld sp,hl		;0ab8
	dec h			;0ab9
	xor e			;0aba
	ex de,hl		;0abb
	jr l0ac3h		;0abc
	add a,c			;0abe
	ld bc,l0141h		;0abf
	add a,c			;0ac2
l0ac3h:
	ld bc,l1141h		;0ac3
	ex de,hl		;0ac6
	ex af,af'		;0ac7
	ld a,(bc)		;0ac8
	add a,b			;0ac9
	nop			;0aca
	nop			;0acb
	nop			;0acc
	ld b,b			;0acd
	nop			;0ace
	nop			;0acf
	djnz $-19		;0ad0
	ex af,af'		;0ad2
	ld a,(bc)		;0ad3
	ld b,b			;0ad4
	ld b,b			;0ad5
	ld b,c			;0ad6
l0ad7h:
	add a,c			;0ad7
	ex de,hl		;0ad8
	dec b			;0ad9
	ld b,011h		;0ada
l0adch:
	add a,c			;0adc
	ld bc,08141h		;0add
	ld bc,04101h		;0ae0
	ld de,l03ebh		;0ae3
	ld a,(bc)		;0ae6
	add a,c			;0ae7
	ld bc,08141h		;0ae8
	ld b,b			;0aeb
	ld b,b			;0aec
	add a,c			;0aed
	ld b,b			;0aee
	ld b,b			;0aef
	add a,c			;0af0
	call m,0dc04h		;0af1
	xor d			;0af4
	ld sp,hl		;0af5
	ld a,(de)		;0af6
l0af7h:
	xor e			;0af7
l0af8h:
	ex de,hl		;0af8
	ld (bc),a		;0af9
	dec b			;0afa
	ld sp,hl		;0afb
	dec h			;0afc
	xor e			;0afd
	ex de,hl		;0afe
	inc b			;0aff
	dec b			;0b00
	ld b,b			;0b01
	ld b,b			;0b02
	add a,c			;0b03
	add a,c			;0b04
	ex de,hl		;0b05
	inc b			;0b06
	ld b,041h		;0b07
	ld bc,08113h		;0b09
	ld bc,l1141h		;0b0c
	ex de,hl		;0b0f
	inc b			;0b10
	ld b,081h		;0b11
	ld bc,08101h		;0b13
	ld bc,08101h		;0b16
	rst 38h			;0b19
	add a,e			;0b1a
	inc bc			;0b1b
	inc bc			;0b1c
	ld bc,l0311h		;0b1d
	inc bc			;0b20
	inc bc			;0b21
	ld bc,0fa81h		;0b22
	add a,c			;0b25
	add a,c			;0b26
	ld b,c			;0b27
	add a,c			;0b28
	ld bc,04101h		;0b29
	ld de,0fefah		;0b2c
	ld bc,l05e9h		;0b2f
	jp pe,0d40ah		;0b32
	defb 0edh ;next byte illegal after ed	;0b35
	ld bc,04033h		;0b36
	ld b,b			;0b39
	ld b,b			;0b3a
	ld b,b			;0b3b
	jp pe,0400bh		;0b3c
	ld b,b			;0b3f
	ld b,b			;0b40
	or b			;0b41
	out (0eah),a		;0b42
	dec c			;0b44
	ld b,b			;0b45
	ex de,hl		;0b46
	ex af,af'		;0b47
	inc bc			;0b48
	ld sp,hl		;0b49
	or l			;0b4a
	xor e			;0b4b
	ex de,hl		;0b4c
	ld (bc),a		;0b4d
	dec b			;0b4e
	ld sp,hl		;0b4f
	jp nz,0fcabh		;0b50
	ld (bc),a		;0b53
	ld c,a			;0b54
	xor e			;0b55
	defb 0edh ;next byte illegal after ed	;0b56
	ld bc,0f923h		;0b57
	jp nz,0fcabh		;0b5a
	inc b			;0b5d
	ld e,c			;0b5e
	xor e			;0b5f
	defb 0edh ;next byte illegal after ed	;0b60
	ld bc,00333h		;0b61
	ex de,hl		;0b64
	djnz $+5		;0b65
	inc hl			;0b67
	ex de,hl		;0b68
	djnz l0b6eh		;0b69
	call nc,0eb71h		;0b6b
l0b6eh:
	jr nz,l0b74h		;0b6e
	jp pe,0750eh		;0b70
	ld (hl),l		;0b73
l0b74h:
	ld (hl),l		;0b74
	ld (hl),l		;0b75
	ld (hl),l		;0b76
	pop bc			;0b77
	jp pe,0d40dh		;0b78
	sub c			;0b7b
	ex de,hl		;0b7c
	ex af,af'		;0b7d
	inc bc			;0b7e
	or c			;0b7f
	ex de,hl		;0b80
	ex af,af'		;0b81
	inc bc			;0b82
	out (001h),a		;0b83
	ex de,hl		;0b85
	ex af,af'		;0b86
	inc b			;0b87
	call nc,0b1b1h		;0b88
	or c			;0b8b
	or c			;0b8c
	out (041h),a		;0b8d
	ld b,c			;0b8f
	ld b,c			;0b90
	call nc,0fc41h		;0b91
	inc b			;0b94
	ld a,b			;0b95
	xor e			;0b96
	ld sp,hl		;0b97
	or l			;0b98
	xor e			;0b99
	ld sp,hl		;0b9a
	jp nz,0edabh		;0b9b
	ld bc,0d423h		;0b9e
	sub l			;0ba1
	or l			;0ba2
	out (005h),a		;0ba3
	dec b			;0ba5
	call nc,0d3b3h		;0ba6
	inc bc			;0ba9
	call nc,06565h		;0baa
	or l			;0bad
	or l			;0bae
	or e			;0baf
	or e			;0bb0
	ld b,l			;0bb1
	ld b,l			;0bb2
	ld c,e			;0bb3
	rst 38h			;0bb4
	call nc,0919dh		;0bb5
	sbc a,l			;0bb8
	sub c			;0bb9
	adc a,l			;0bba
	add a,c			;0bbb
	add a,a			;0bbc
	add a,c			;0bbd
	sub c			;0bbe
	or c			;0bbf
	add a,c			;0bc0
	jp m,091d4h		;0bc1
	sub c			;0bc4
	or c			;0bc5
	sub c			;0bc6
	out (001h),a		;0bc7
	call nc,0d391h		;0bc9
	ld hl,0eb01h		;0bcc
	ld (bc),a		;0bcf
	ld c,0d4h		;0bd0
	add a,c			;0bd2
	add a,c			;0bd3
	sub c			;0bd4
	add a,c			;0bd5
	or c			;0bd6
	add a,c			;0bd7
	out (021h),a		;0bd8
	ld bc,l02ebh		;0bda
	inc c			;0bdd
	jp m,001feh		;0bde
	ret m			;0be1
	dec d			;0be2
	jp (hl)			;0be3
	dec b			;0be4
	jp pe,0d308h		;0be5
	defb 0edh ;next byte illegal after ed	;0be8
	add a,c			;0be9
	and e			;0bea
	jr nz,$+82		;0beb
	add a,b			;0bed
	or b			;0bee
	ld d,b			;0bef
	add a,b			;0bf0
	or b			;0bf1
	jp nc,0d320h		;0bf2
	or b			;0bf5
	jp nc,05020h		;0bf6
	add a,b			;0bf9
	ld d,b			;0bfa
	add a,b			;0bfb
	or b			;0bfc
	pop de			;0bfd
	jr nz,$-6		;0bfe
	ld (bc),a		;0c00
	jp pe,0d209h		;0c01
	defb 0edh ;next byte illegal after ed	;0c04
	add a,c			;0c05
	inc sp			;0c06
	ld sp,hl		;0c07
	cp e			;0c08
	xor h			;0c09
	ex de,hl		;0c0a
	inc b			;0c0b
	dec c			;0c0c
	ret m			;0c0d
	rla			;0c0e
	jp pe,0d308h		;0c0f
	ld b,c			;0c12
	jp nc,0d301h		;0c13
	or c			;0c16
	sub c			;0c17
	jp nc,l0121h		;0c18
	out (0b1h),a		;0c1b
	jp nc,0d305h		;0c1d
	sub e			;0c20
	jp nc,04303h		;0c21
	daa			;0c24
	out (0b7h),a		;0c25
	jp nc,0d35fh		;0c27
	ld b,c			;0c2a
	jp nc,0d301h		;0c2b
	or c			;0c2e
	sub c			;0c2f
	jp nc,l0121h		;0c30
	out (0b1h),a		;0c33
	jp nc,l0305h		;0c35
	ld b,e			;0c38
	sub e			;0c39
	adc a,a			;0c3a
	ld e,a			;0c3b
	call m,sub_0d02h	;0c3c
	xor h			;0c3f
	ld sp,hl		;0c40
	di			;0c41
	xor h			;0c42
	ld sp,hl		;0c43
	call m,0f9ach		;0c44
	rlca			;0c47
	xor l			;0c48
	ld a,a			;0c49
	ld sp,hl		;0c4a
	ld (de),a		;0c4b
	xor l			;0c4c
	ld sp,hl		;0c4d
	ld e,0adh		;0c4e
	sbc a,a			;0c50
	out (020h),a		;0c51
	ld d,b			;0c53
	add a,b			;0c54
	cp b			;0c55
	jr nz,l0ca8h		;0c56
	add a,b			;0c58
	or b			;0c59
	add a,b			;0c5a
	or b			;0c5b
	jp nc,05820h		;0c5c
	out (080h),a		;0c5f
	or b			;0c61
	jp nc,05020h		;0c62
	jr nz,l0cb7h		;0c65
	add a,b			;0c67
	cp b			;0c68
	jr nz,l0cbbh		;0c69
	add a,b			;0c6b
	or b			;0c6c
	add a,b			;0c6d
	or b			;0c6e
	pop de			;0c6f
	jr nz,l0ccah		;0c70
	jp nc,0b080h		;0c72
	pop de			;0c75
	jr nz,$+82		;0c76
	jp p,055d3h		;0c78
	add a,l			;0c7b
	or l			;0c7c
	jp nc,05125h		;0c7d
	add a,l			;0c80
	ret m			;0c81
	ld (bc),a		;0c82
	jp pe,0f909h		;0c83
	add hl,hl		;0c86
	xor l			;0c87
	ld hl,l02ebh		;0c88
	ld a,(bc)		;0c8b
	ld sp,hl		;0c8c
	ld a,(021adh)		;0c8d
	ret m			;0c90
	ld a,(bc)		;0c91
	jp pe,0d20ah		;0c92
	ld sp,hl		;0c95
	cp e			;0c96
	xor h			;0c97
	ex de,hl		;0c98
	ld (bc),a		;0c99
	ld a,(bc)		;0c9a
	rst 28h			;0c9b
	ld bc,0edd1h		;0c9c
	add a,c			;0c9f
	ld d,c			;0ca0
	dec b			;0ca1
	dec h			;0ca2
	ld b,l			;0ca3
	ld b,l			;0ca4
	ld bc,04121h		;0ca5
l0ca8h:
	ld bc,l1515h		;0ca8
	ld b,l			;0cab
	ld b,l			;0cac
	inc de			;0cad
	ld b,e			;0cae
	jp nc,0a161h		;0caf
	pop de			;0cb2
	ld de,071d2h		;0cb3
	or c			;0cb6
l0cb7h:
	pop de			;0cb7
	ld hl,0ff6bh		;0cb8
l0cbbh:
	sub c			;0cbb
	or c			;0cbc
	pop de			;0cbd
	ld bc,091d2h		;0cbe
	or c			;0cc1
	pop de			;0cc2
	ld bc,091d2h		;0cc3
	pop de			;0cc6
	ld bc,0d241h		;0cc7
l0ccah:
	sub c			;0cca
	pop de			;0ccb
	ld hl,091d2h		;0ccc
	pop de			;0ccf
	ld bc,091d2h		;0cd0
	or c			;0cd3
	pop de			;0cd4
	ld bc,081d2h		;0cd5
	or c			;0cd8
	pop de			;0cd9
	ld hl,081d2h		;0cda
	or c			;0cdd
	pop de			;0cde
	ld hl,081d2h		;0cdf
	or c			;0ce2
	pop de			;0ce3
	ld d,c			;0ce4
	jp nc,0d181h		;0ce5
	ld b,c			;0ce8
	jp nc,0d181h		;0ce9
	ld hl,081d2h		;0cec
	or c			;0cef
	pop de			;0cf0
	ld hl,0d3fah		;0cf1
	defb 0edh ;next byte illegal after ed	;0cf4
	add a,c			;0cf5
	inc sp			;0cf6
	pop af			;0cf7
	ld d,e			;0cf8
	di			;0cf9
	dec c			;0cfa
	jp m,07030h		;0cfb
	and b			;0cfe
	jp nc,03000h		;0cff
sub_0d02h:
	ld (hl),b		;0d02
	and b			;0d03
	pop de			;0d04
	nop			;0d05
	jp m,07737h		;0d06
	ld (hl),c		;0d09
	ld h,c			;0d0a
	ld d,c			;0d0b
	ld sp,l0537h		;0d0c
	jr nc,l0d61h		;0d0f
	jp m,050d3h		;0d11
	sub b			;0d14
	jp nc,02000h		;0d15
l0d18h:
	ld d,b			;0d18
	sub b			;0d19
	pop de			;0d1a
	nop			;0d1b
	jr nz,l0d18h		;0d1c
	ld d,a			;0d1e
	sub a			;0d1f
	sub c			;0d20
	add a,c			;0d21
	ld (hl),c		;0d22
	ld d,c			;0d23
	ld d,a			;0d24
	dec h			;0d25
	ld d,b			;0d26
	ld (hl),b		;0d27
	jp m,09fd1h		;0d28
	ld (hl),l		;0d2b
	add hl,hl		;0d2c
	ld b,a			;0d2d
	ld bc,04121h		;0d2e
	ld (hl),c		;0d31
	sub c			;0d32
	ld h,c			;0d33
	ld hl,02161h		;0d34
	ld b,c			;0d37
	ld h,c			;0d38
	jp m,0b59fh		;0d39
	ld (hl),l		;0d3c
	inc hl			;0d3d
	ld b,a			;0d3e
	ld bc,04121h		;0d3f
	ld (hl),c		;0d42
	sub c			;0d43
	ld h,c			;0d44
	ld hl,02161h		;0d45
	ld b,c			;0d48
	ld h,c			;0d49
	ld hl,0b59fh		;0d4a
	ld (hl),l		;0d4d
	or e			;0d4e
	ret nc			;0d4f
	dec b			;0d50
	pop de			;0d51
	ld (hl),l		;0d52
	ld b,e			;0d53
	pop bc			;0d54
	sub c			;0d55
	ld h,c			;0d56
	ld hl,04101h		;0d57
	ld h,c			;0d5a
	jp m,001feh		;0d5b
	ret m			;0d5e
	inc b			;0d5f
	jp (hl)			;0d60
l0d61h:
	dec b			;0d61
	jp pe,0d408h		;0d62
	defb 0edh ;next byte illegal after ed	;0d65
	add a,c			;0d66
	and e			;0d67
	jr nz,l0dbah		;0d68
	add a,b			;0d6a
	or b			;0d6b
	ld d,b			;0d6c
	add a,b			;0d6d
	or b			;0d6e
	out (020h),a		;0d6f
	call nc,0d3b0h		;0d71
	jr nz,$+82		;0d74
	add a,b			;0d76
	ld d,b			;0d77
	add a,b			;0d78
	or b			;0d79
	jp nc,0ef20h		;0d7a
	ld bc,015f8h		;0d7d
	jp pe,0d204h		;0d80
	xor 0f9h		;0d83
	cp e			;0d85
	xor h			;0d86
	ex de,hl		;0d87
	inc b			;0d88
	dec bc			;0d89
	rst 28h			;0d8a
	ld bc,l06eah		;0d8b
	jp nc,l08edh		;0d8e
	inc bc			;0d91
	ld b,c			;0d92
	pop de			;0d93
	ld bc,0b1d2h		;0d94
	sub c			;0d97
	pop de			;0d98
	ld hl,0d201h		;0d99
	or c			;0d9c
	pop de			;0d9d
	dec b			;0d9e
	jp nc,0d193h		;0d9f
	inc bc			;0da2
	ld b,e			;0da3
	daa			;0da4
	jp nc,0d1b7h		;0da5
	ld e,a			;0da8
	jp nc,0d141h		;0da9
	ld bc,0b1d2h		;0dac
	sub c			;0daf
	pop de			;0db0
	ld hl,0d201h		;0db1
	or c			;0db4
	pop de			;0db5
	dec b			;0db6
	inc bc			;0db7
	ld b,e			;0db8
	sub e			;0db9
l0dbah:
	adc a,l			;0dba
	ld (hl),b		;0dbb
	ld h,b			;0dbc
	ld e,a			;0dbd
	ret p			;0dbe
	call m,08a02h		;0dbf
	xor l			;0dc2
	rst 28h			;0dc3
	ld bc,l02f8h		;0dc4
	ld sp,hl		;0dc7
	di			;0dc8
	xor h			;0dc9
	jr nc,$-5		;0dca
	call m,0edach		;0dcc
	ex af,af'		;0dcf
	inc sp			;0dd0
	ld sp,007f9h		;0dd1
	xor l			;0dd4
	ld a,l			;0dd5
	defb 0edh ;next byte illegal after ed	;0dd6
	add a,c			;0dd7
	inc sp			;0dd8
	ld sp,hl		;0dd9
	ld (de),a		;0dda
	xor l			;0ddb
	defb 0edh ;next byte illegal after ed	;0ddc
	ex af,af'		;0ddd
	inc sp			;0dde
	ld d,c			;0ddf
	ld sp,hl		;0de0
	ld e,0adh		;0de1
	sbc a,h			;0de3
	out (055h),a		;0de4
	ld d,l			;0de6
	ld d,e			;0de7
	ld (hl),l		;0de8
	ld (hl),l		;0de9
l0deah:
	ld (hl),e		;0dea
	or l			;0deb
	or l			;0dec
	or e			;0ded
	jp nc,02525h		;0dee
	inc hl			;0df1
l0df2h:
	jp p,08555h		;0df2
	or l			;0df5
	pop de			;0df6
	dec h			;0df7
l0df8h:
	ld d,c			;0df8
	add a,l			;0df9
	ret p			;0dfa
	rst 28h			;0dfb
	ld bc,015f8h		;0dfc
	jp pe,09007h		;0dff
	ld sp,hl		;0e02
	add hl,hl		;0e03
	xor l			;0e04
	jr nz,l0df2h		;0e05
	ld (bc),a		;0e07
	rlca			;0e08
	sub b			;0e09
	ld sp,hl		;0e0a
	ld a,(020adh)		;0e0b
	rst 28h			;0e0e
	ld bc,l06eah		;0e0f
	jp nc,0f9eeh		;0e12
	cp e			;0e15
	xor h			;0e16
	ex de,hl		;0e17
	ld (bc),a		;0e18
	add hl,bc		;0e19
	ret p			;0e1a
	ret m			;0e1b
	ld (bc),a		;0e1c
	jp pe,0d20ah		;0e1d
	defb 0edh ;next byte illegal after ed	;0e20
	add a,c			;0e21
	ld d,c			;0e22
	ld b,l			;0e23
	ld (hl),l		;0e24
	ld (hl),l		;0e25
	ld (hl),l		;0e26
	ld (hl),e		;0e27
	ld (hl),e		;0e28
	sub l			;0e29
	sub l			;0e2a
	sub l			;0e2b
	sub l			;0e2c
	sub e			;0e2d
	sub e			;0e2e
	ld h,l			;0e2f
	ld (hl),l		;0e30
	ld l,e			;0e31
	rst 38h			;0e32
	cp 001h			;0e33
	ret m			;0e35
	inc b			;0e36
	jp (hl)			;0e37
	dec b			;0e38
	jp pe,0d308h		;0e39
	defb 0edh ;next byte illegal after ed	;0e3c
	add a,c			;0e3d
l0e3eh:
	and e			;0e3e
	ld sp,hl		;0e3f
	ld a,l			;0e40
	xor a			;0e41
	ret m			;0e42
	dec c			;0e43
	jp (hl)			;0e44
	ld a,(bc)		;0e45
	jp pe,0d30ah		;0e46
	defb 0edh ;next byte illegal after ed	;0e49
	add a,e			;0e4a
	ld sp,0909eh		;0e4b
	adc a,(hl)		;0e4e
	add a,b			;0e4f
	ex de,hl		;0e50
	ld (bc),a		;0e51
	djnz l0e3eh		;0e52
	add hl,bc		;0e54
	defb 0edh ;next byte illegal after ed	;0e55
	add a,c			;0e56
	add a,c			;0e57
	ld sp,hl		;0e58
	out (0aeh),a		;0e59
	call m,05806h		;0e5b
	xor (hl)		;0e5e
	ret m			;0e5f
	dec d			;0e60
	jp (hl)			;0e61
	dec b			;0e62
	jp pe,0ed0ah		;0e63
	ld bc,0a161h		;0e66
	and c			;0e69
	and c			;0e6a
	sub c			;0e6b
	sub c			;0e6c
	sub c			;0e6d
	add a,c			;0e6e
	add a,c			;0e6f
	ex de,hl		;0e70
	inc b			;0e71
	ld a,(bc)		;0e72
	jp nc,l0101h		;0e73
	ld bc,0b1d3h		;0e76
	or c			;0e79
	or c			;0e7a
	and c			;0e7b
	and c			;0e7c
	ex de,hl		;0e7d
	inc b			;0e7e
	inc c			;0e7f
	out (02dh),a		;0e80
	jr nz,$+34		;0e82
	ex de,hl		;0e84
	inc bc			;0e85
	ld b,027h		;0e86
	ld hl,02121h		;0e88
	ld hl,l0df8h		;0e8b
	add a,l			;0e8e
	add a,l			;0e8f
	add a,l			;0e90
	add a,l			;0e91
	add a,c			;0e92
	add a,l			;0e93
	ret m			;0e94
	ld (bc),a		;0e95
	jp nc,081edh		;0e96
	ld d,c			;0e99
	rrca			;0e9a
	cpl			;0e9b
	ld c,a			;0e9c
	daa			;0e9d
	ld h,a			;0e9e
	ex de,hl		;0e9f
	inc b			;0ea0
	rlca			;0ea1
	rst 28h			;0ea2
	ld bc,00ae9h		;0ea3
	jp nc,083edh		;0ea6
	ld sp,0909eh		;0ea9
	adc a,(hl)		;0eac
	add a,b			;0ead
	jp pe,0ed09h		;0eae
	add a,c			;0eb1
	add a,c			;0eb2
	ld sp,hl		;0eb3
	out (0aeh),a		;0eb4
	ret p			;0eb6
	jp (hl)			;0eb7
	dec b			;0eb8
	jp pe,0d20ah		;0eb9
	defb 0edh ;next byte illegal after ed	;0ebc
	add a,c			;0ebd
	ld d,c			;0ebe
	ld (hl),l		;0ebf
	or l			;0ec0
	pop de			;0ec1
	dec b			;0ec2
	dec b			;0ec3
	jp nc,0d1b3h		;0ec4
	inc bc			;0ec7
	dec d			;0ec8
	dec d			;0ec9
	dec d			;0eca
	dec d			;0ecb
	inc de			;0ecc
	inc de			;0ecd
	jp nc,0b5a5h		;0ece
	xor e			;0ed1
	rst 38h			;0ed2
	sub b			;0ed3
	ex de,hl		;0ed4
	djnz $+5		;0ed5
	add a,b			;0ed7
	ex de,hl		;0ed8
	djnz l0edeh		;0ed9
	jp m,001feh		;0edb
l0edeh:
	ret m			;0ede
	inc b			;0edf
	jp (hl)			;0ee0
	dec b			;0ee1
	jp pe,0ef05h		;0ee2
	inc bc			;0ee5
	out (0edh),a		;0ee6
	add a,c			;0ee8
	and e			;0ee9
sub_0eeah:
	ld sp,hl		;0eea
	ld a,l			;0eeb
	xor a			;0eec
l0eedh:
	ret p			;0eed
	ret m			;0eee
	dec c			;0eef
	jp (hl)			;0ef0
	ld a,(bc)		;0ef1
	jp pe,0d30ah		;0ef2
	defb 0edh ;next byte illegal after ed	;0ef5
	add a,e			;0ef6
	ld b,c			;0ef7
	ld c,(hl)		;0ef8
	ld b,b			;0ef9
	ld e,(hl)		;0efa
	ld d,b			;0efb
	ex de,hl		;0efc
	ld (bc),a		;0efd
	djnz l0eedh		;0efe
	add a,c			;0f00
	add a,c			;0f01
	ld sp,hl		;0f02
	sub c			;0f03
	xor a			;0f04
	call m,sub_0202h	;0f05
	xor a			;0f08
	jp pe,0f909h		;0f09
	sub c			;0f0c
	xor a			;0f0d
	call m,sub_0904h	;0f0e
	xor a			;0f11
	ret m			;0f12
	dec d			;0f13
	jp (hl)			;0f14
	dec b			;0f15
	jp pe,0d20bh		;0f16
	defb 0edh ;next byte illegal after ed	;0f19
	ld bc,03161h		;0f1a
	ex de,hl		;0f1d
	jr nz,l0f2dh		;0f1e
	ld d,c			;0f20
	ex de,hl		;0f21
	jr nz,l0f27h		;0f22
	out (07dh),a		;0f24
	ld (hl),b		;0f26
l0f27h:
	ld (hl),b		;0f27
	ex de,hl		;0f28
	inc bc			;0f29
	ld b,077h		;0f2a
	ld (hl),c		;0f2c
l0f2dh:
	ld (hl),c		;0f2d
	ld (hl),c		;0f2e
	ld (hl),c		;0f2f
	ret m			;0f30
	dec c			;0f31
	or l			;0f32
	or l			;0f33
	or l			;0f34
	or l			;0f35
	or c			;0f36
	or l			;0f37
	ret m			;0f38
	ld (bc),a		;0f39
	jp (hl)			;0f3a
	dec b			;0f3b
	jp pe,0d20ah		;0f3c
	defb 0edh ;next byte illegal after ed	;0f3f
	add a,c			;0f40
	ld d,c			;0f41
	ld c,a			;0f42
	ld a,a			;0f43
	ld a,a			;0f44
	ld h,a			;0f45
	sub a			;0f46
	ex de,hl		;0f47
	inc b			;0f48
	rlca			;0f49
	cp 001h			;0f4a
	ret m			;0f4c
	ld (bc),a		;0f4d
	jp (hl)			;0f4e
	ld a,(bc)		;0f4f
	jp pe,0d208h		;0f50
	rst 28h			;0f53
	ld bc,083edh		;0f54
	ld b,c			;0f57
	ld c,(hl)		;0f58
	ld b,b			;0f59
	ld e,(hl)		;0f5a
	ld d,b			;0f5b
	defb 0edh ;next byte illegal after ed	;0f5c
	add a,c			;0f5d
	add a,c			;0f5e
	ld sp,hl		;0f5f
	sub c			;0f60
	xor a			;0f61
	ret p			;0f62
	ret m			;0f63
	ld (bc),a		;0f64
	jp (hl)			;0f65
	dec b			;0f66
	jp pe,0d10ah		;0f67
	defb 0edh ;next byte illegal after ed	;0f6a
	add a,c			;0f6b
	ld d,c			;0f6c
	dec b			;0f6d
	dec h			;0f6e
	ld b,l			;0f6f
	ld b,l			;0f70
	inc hl			;0f71
	ld b,e			;0f72
	ld b,l			;0f73
	ld b,l			;0f74
	ld b,l			;0f75
	ld b,l			;0f76
	ld b,e			;0f77
	ld b,e			;0f78
	dec d			;0f79
	dec h			;0f7a
	dec de			;0f7b
	rst 38h			;0f7c
	jr nz,$+34		;0f7d
	ld d,b			;0f7f
	add a,b			;0f80
	or b			;0f81
	ld d,b			;0f82
	add a,b			;0f83
l0f84h:
	or b			;0f84
	jp nc,0d320h		;0f85
	or b			;0f88
	jp nc,05020h		;0f89
	add a,b			;0f8c
	ld d,b			;0f8d
	add a,b			;0f8e
	or b			;0f8f
	jp m,0eb40h		;0f90
	djnz $+5		;0f93
	ld d,b			;0f95
	ex de,hl		;0f96
	djnz l0f9ch		;0f97
	jp m,l04feh		;0f99
l0f9ch:
	jp (hl)			;0f9c
	dec b			;0f9d
	ld bc,l1101h		;0f9e
	ld bc,l0101h		;0fa1
	ld bc,l0101h		;0fa4
	ld bc,l1101h		;0fa7
	nop			;0faa
	nop			;0fab
l0fach:
	sub c			;0fac
	sub c			;0fad
	ld b,c			;0fae
	ld b,c			;0faf
	ld b,c			;0fb0
	nop			;0fb1
	nop			;0fb2
	ld bc,l0101h		;0fb3
	ld bc,l0111h		;0fb6
	ld bc,l0111h		;0fb9
	ld bc,l0101h		;0fbc
	ld bc,l0101h		;0fbf
	ld bc,l0011h		;0fc2
	nop			;0fc5
	ld b,c			;0fc6
	ld b,c			;0fc7
	add a,c			;0fc8
	add a,c			;0fc9
	add a,c			;0fca
	ld b,c			;0fcb
	ld bc,04111h		;0fcc
	ld b,c			;0fcf
	ld b,c			;0fd0
	ld sp,hl		;0fd1
l0fd2h:
	jr c,l0f84h		;0fd2
	ex de,hl		;0fd4
	ld d,005h		;0fd5
	add a,l			;0fd7
	dec b			;0fd8
	inc de			;0fd9
	inc de			;0fda
	ld bc,0f911h		;0fdb
	ccf			;0fde
	or b			;0fdf
	dec b			;0fe0
	ex de,hl		;0fe1
	ld (bc),a		;0fe2
	ld b,0f9h		;0fe3
	ccf			;0fe5
	or b			;0fe6
	ld b,c			;0fe7
	ld b,c			;0fe8
	ld b,c			;0fe9
	call m,0dd02h		;0fea
	xor a			;0fed
	add a,c			;0fee
	nop			;0fef
	nop			;0ff0
	ld bc,l0141h		;0ff1
	ld bc,038f9h		;0ff4
	or b			;0ff7
l0ff8h:
	add a,c			;0ff8
	ld bc,l0101h		;0ff9
	ld bc,03101h		;0ffc
	ld sp,09031h		;0fff
	sub b			;1002
	ld b,c			;1003
	ld b,c			;1004
	ld sp,hl		;1005
	jr c,$-78		;1006
	ex de,hl		;1008
	rla			;1009
	dec b			;100a
	add a,c			;100b
	ld bc,03001h		;100c
	sub b			;100f
l1010h:
	ld b,c			;1010
	ld b,c			;1011
	ld b,c			;1012
	ld sp,0eb31h		;1013
	ld b,005h		;1016
	jr nc,$+50		;1018
	jr nc,l0fach		;101a
	sub b			;101c
	sub b			;101d
	ld b,b			;101e
	ld b,b			;101f
	ld b,b			;1020
	ld b,b			;1021
	ld de,l03fch		;1022
	ld (de),a		;1025
	or b			;1026
	ld b,c			;1027
	ld sp,04131h		;1028
	ld sp,0e931h		;102b
	ld b,041h		;102e
	ld sp,04031h		;1030
	ld b,b			;1033
	add a,c			;1034
	add a,c			;1035
	add a,c			;1036
	rst 38h			;1037
	add a,c			;1038
	ld bc,04101h		;1039
	ld bc,0fa11h		;103c
	add a,l			;103f
	dec b			;1040
	dec b			;1041
	ld bc,l1101h		;1042
	add a,l			;1045
	dec b			;1046
	dec b			;1047
	jp m,001feh		;1048
	jp (hl)			;104b
	dec b			;104c
	jp pe,0d30ch		;104d
	defb 0edh ;next byte illegal after ed	;1050
	ld bc,0f915h		;1051
	call nz,0d4b0h		;1054
	ld sp,hl		;1057
	and b			;1058
	or b			;1059
	ld (hl),l		;105a
	ld (hl),l		;105b
	ld (hl),l		;105c
	ld (hl),l		;105d
	jp (hl)			;105e
	ld a,(bc)		;105f
	jp pe,07b0ah		;1060
	jp (hl)			;1063
	dec b			;1064
	jp pe,0f90ch		;1065
	pop af			;1068
	or b			;1069
	out (003h),a		;106a
	inc hl			;106c
	ld c,c			;106d
	call nc,09b41h		;106e
	ld l,e			;1071
	ld h,l			;1072
	ld sp,hl		;1073
	call po,0ebb0h		;1074
	ld (bc),a		;1077
	ld de,0cbf9h		;1078
	or b			;107b
	jp pe,0f90ch		;107c
	and b			;107f
	or b			;1080
	ld (hl),c		;1081
	ex de,hl		;1082
	inc c			;1083
	inc bc			;1084
	out (071h),a		;1085
	ex de,hl		;1087
	inc c			;1088
	inc bc			;1089
	ld bc,02eebh		;108a
	inc bc			;108d
	ld b,c			;108e
	ld (hl),c		;108f
	jp nc,0eb01h		;1090
	ld e,004h		;1093
	jp (hl)			;1095
	ld b,005h		;1096
	ld bc,071d3h		;1098
	ld b,c			;109b
	jp (hl)			;109c
	inc c			;109d
	dec c			;109e
	rst 38h			;109f
	ld d,l			;10a0
	ex de,hl		;10a1
	ex af,af'		;10a2
	inc bc			;10a3
	ld b,l			;10a4
	ld b,l			;10a5
	ld b,l			;10a6
	ld b,l			;10a7
	dec (hl)		;10a8
	dec (hl)		;10a9
	dec (hl)		;10aa
	ld sp,03171h		;10ab
	add a,l			;10ae
	ex de,hl		;10af
	ex af,af'		;10b0
	inc bc			;10b1
	ld (hl),l		;10b2
	ld (hl),l		;10b3
	ld (hl),e		;10b4
	ld (hl),e		;10b5
	ld (hl),e		;10b6
	ld h,l			;10b7
	ld h,l			;10b8
	ld h,e			;10b9
	ld h,e			;10ba
	ld h,e			;10bb
	ld d,l			;10bc
	ex de,hl		;10bd
	rlca			;10be
	inc bc			;10bf
	ld d,c			;10c0
	ld d,c			;10c1
	ld d,c			;10c2
	jp m,0eb01h		;10c3
	inc hl			;10c6
	inc bc			;10c7
	dec c			;10c8
	dec bc			;10c9
	jp m,08585h		;10ca
	add a,l			;10cd
	add a,l			;10ce
	jp pe,0a109h		;10cf
	and c			;10d2
	and c			;10d3
	jp pe,0a10bh		;10d4
	and c			;10d7
	and c			;10d8
	jp pe,0a10ch		;10d9
	and c			;10dc
	and c			;10dd
	jp pe,0a10dh		;10de
	and c			;10e1
	and c			;10e2
	jp m,02161h		;10e3
	ld h,c			;10e6
	ld e,e			;10e7
	ld d,e			;10e8
	ld d,e			;10e9
	ld d,e			;10ea
	ld e,a			;10eb
	ld d,c			;10ec
	ld d,c			;10ed
	ld (hl),c		;10ee
	sub c			;10ef
	jp m,0818fh		;10f0
	add a,c			;10f3
	ld sp,08b81h		;10f4
	add a,e			;10f7
	jp m,001feh		;10f8
	jp (hl)			;10fb
	dec b			;10fc
	jp pe,0d40bh		;10fd
	defb 0edh ;next byte illegal after ed	;1100
l1101h:
	ld bc,0f915h		;1101
	call nz,0edb0h		;1104
	ld bc,0d525h		;1107
	ld sp,hl		;110a
	and b			;110b
	or b			;110c
	ld (hl),l		;110d
	ld (hl),l		;110e
	ld (hl),l		;110f
	ld (hl),l		;1110
	jp (hl)			;1111
	ld a,(bc)		;1112
	jp pe,07b09h		;1113
	jp (hl)			;1116
	dec b			;1117
	jp pe,0f90bh		;1118
	pop af			;111b
	or b			;111c
	call nc,02303h		;111d
	ld c,c			;1120
	push de			;1121
	ld b,c			;1122
	sbc a,e			;1123
	ld l,e			;1124
	ld h,l			;1125
	ld sp,hl		;1126
	call po,0ebb0h		;1127
	ld (bc),a		;112a
	ld de,0cbf9h		;112b
	or b			;112e
	ld sp,hl		;112f
	and b			;1130
	or b			;1131
	ld (hl),c		;1132
	ex de,hl		;1133
	inc c			;1134
	inc bc			;1135
	call nc,0eb71h		;1136
	inc c			;1139
	inc b			;113a
	ld bc,02eebh		;113b
	inc bc			;113e
	ld b,c			;113f
	ld (hl),c		;1140
l1141h:
	out (001h),a		;1141
	ex de,hl		;1143
	ld e,004h		;1144
	jp (hl)			;1146
	ld b,005h		;1147
	ld bc,071d4h		;1149
	ld b,c			;114c
	jp (hl)			;114d
	inc c			;114e
	dec c			;114f
	rst 38h			;1150
	cp 001h			;1151
	ret m			;1153
	ld (bc),a		;1154
	rst 28h			;1155
	ld bc,l05e9h		;1156
	jp pe,0d20ah		;1159
	defb 0edh ;next byte illegal after ed	;115c
	add a,c			;115d
	dec (hl)		;115e
	ld sp,hl		;115f
	ld a,(bc)		;1160
	or d			;1161
	dec c			;1162
	jp pe,0f909h		;1163
	inc hl			;1166
	or d			;1167
	pop de			;1168
	add a,b			;1169
	ret p			;116a
	ret m			;116b
	inc de			;116c
	jp (hl)			;116d
	dec b			;116e
	jp pe,0d108h		;116f
	defb 0edh ;next byte illegal after ed	;1172
l1173h:
	add a,c			;1173
	dec h			;1174
	pop af			;1175
	ld d,e			;1176
	di			;1177
	jr l1173h		;1178
	inc sp			;117a
	or d			;117b
	ld sp,hl		;117c
	ld c,b			;117d
	or d			;117e
	ld e,e			;117f
	ld c,e			;1180
	jp pe,02907h		;1181
	jp nc,0f2bdh		;1184
	ret m			;1187
	ld (bc),a		;1188
	rst 28h			;1189
	ld bc,l05e9h		;118a
	jp pe,0d209h		;118d
	defb 0edh ;next byte illegal after ed	;1190
	add a,c			;1191
	dec h			;1192
	pop af			;1193
	ld d,e			;1194
	di			;1195
l1196h:
	jr $+13			;1196
	out (073h),a		;1198
	jp nc,05cf9h		;119a
	or d			;119d
	out (09bh),a		;119e
	sub e			;11a0
	or e			;11a1
	jp nc,05503h		;11a2
	ld b,l			;11a5
l11a6h:
	dec b			;11a6
	dec h			;11a7
	ex de,hl		;11a8
	ld (bc),a		;11a9
	inc de			;11aa
	dec bc			;11ab
	inc bc			;11ac
	inc hl			;11ad
l11aeh:
	inc sp			;11ae
	dec bc			;11af
	ret m			;11b0
	rla			;11b1
	jp pe,02308h		;11b2
	ld d,e			;11b5
	and e			;11b6
	ret p			;11b7
	jp p,013f8h		;11b8
	jp (hl)			;11bb
	dec b			;11bc
	jp pe,0d108h		;11bd
	defb 0edh ;next byte illegal after ed	;11c0
l11c1h:
	add a,c			;11c1
	dec h			;11c2
	pop af			;11c3
	ld d,e			;11c4
	di			;11c5
	jr l11c1h		;11c6
	inc sp			;11c8
	or d			;11c9
	ld sp,hl		;11ca
	ld c,b			;11cb
	or d			;11cc
	ld e,e			;11cd
	ld c,e			;11ce
	add hl,hl		;11cf
	jp nc,0f2bdh		;11d0
	ret m			;11d3
	ld (bc),a		;11d4
	rst 28h			;11d5
	ld bc,l05e9h		;11d6
	jp pe,0d20ah		;11d9
	defb 0edh ;next byte illegal after ed	;11dc
	add a,c			;11dd
	dec (hl)		;11de
	ld sp,hl		;11df
	ld a,(bc)		;11e0
	or d			;11e1
	dec c			;11e2
	jp pe,0f908h		;11e3
	inc hl			;11e6
	or d			;11e7
	pop de			;11e8
	add a,b			;11e9
	jp pe,l030ah		;11ea
	inc bc			;11ed
	ld hl,05541h		;11ee
	ld b,c			;11f1
	ld hl,0d20dh		;11f2
	jr nc,$+50		;11f5
	add a,c			;11f7
	pop de			;11f8
	ld bc,051d2h		;11f9
	and c			;11fc
l11fdh:
	pop de			;11fd
	ld hl,02107h		;11fe
	ld b,c			;1201
	jp (hl)			;1202
	ld b,055h		;1203
	ld b,c			;1205
	inc hl			;1206
	dec bc			;1207
	rrca			;1208
	rst 38h			;1209
	inc bc			;120a
	inc bc			;120b
	ld hl,05541h		;120c
	ld b,c			;120f
	ld hl,0300dh		;1210
	jr nc,l1196h		;1213
	pop de			;1215
	ld bc,051d2h		;1216
	and c			;1219
	pop de			;121a
	ld hl,02107h		;121b
	ld b,c			;121e
	ld d,l			;121f
	ld b,c			;1220
	ld hl,0d3fah		;1221
	jr nc,l11a6h		;1224
	jp nc,03000h		;1226
	add a,b			;1229
	pop de			;122a
	nop			;122b
	jr nc,l11aeh		;122c
	ret nc			;122e
	nop			;122f
	jr nc,l1232h		;1230
l1232h:
	jp m,0d22bh		;1232
	or e			;1235
	pop de			;1236
	inc bc			;1237
	inc hl			;1238
	dec hl			;1239
	inc bc			;123a
	jp nc,0d1b7h		;123b
	ld a,e			;123e
	dec hl			;123f
	ld a,e			;1240
	dec hl			;1241
	ld a,e			;1242
	ld e,e			;1243
	dec bc			;1244
	dec hl			;1245
	ld c,e			;1246
	jp m,073d2h		;1247
	pop de			;124a
	inc bc			;124b
	ld b,e			;124c
	ld c,e			;124d
	jp nc,0d193h		;124e
	inc bc			;1251
	ld b,e			;1252
	ld e,e			;1253
	ld c,e			;1254
	add hl,bc		;1255
	dec l			;1256
	jp m,0d20bh		;1257
	ld (hl),e		;125a
	pop de			;125b
	inc bc			;125c
	inc hl			;125d
	ld (hl),l		;125e
	ld d,l			;125f
	ld d,e			;1260
	ld (hl),e		;1261
	ld d,e			;1262
	ld c,e			;1263
	inc hl			;1264
	rlca			;1265
	ld b,l			;1266
	dec b			;1267
	inc hl			;1268
	ld b,a			;1269
	jp m,001feh		;126a
	ret m			;126d
	inc de			;126e
	rst 28h			;126f
	ld (bc),a		;1270
	jp (hl)			;1271
	dec b			;1272
	jp pe,0d208h		;1273
	defb 0edh ;next byte illegal after ed	;1276
	add a,c			;1277
	dec (hl)		;1278
	nop			;1279
	ld sp,hl		;127a
	ld a,(bc)		;127b
	or d			;127c
	dec c			;127d
	ret m			;127e
	dec e			;127f
	defb 0edh ;next byte illegal after ed	;1280
	add a,c			;1281
	dec d			;1282
	jp pe,0f905h		;1283
	inc hl			;1286
	or d			;1287
	ret p			;1288
	rst 28h			;1289
	ld bc,l14f8h		;128a
	jp (hl)			;128d
	dec b			;128e
	jp pe,0d107h		;128f
	defb 0edh ;next byte illegal after ed	;1292
l1293h:
	add a,c			;1293
	dec d			;1294
	pop af			;1295
	ld d,l			;1296
	di			;1297
	jr l1293h		;1298
	inc sp			;129a
	or d			;129b
	ld sp,hl		;129c
	ld c,b			;129d
	or d			;129e
	ret p			;129f
	dec hl			;12a0
	dec bc			;12a1
	jp nc,l06eah		;12a2
	cp c			;12a5
	adc a,l			;12a6
	ret p			;12a7
	jp p,015f8h		;12a8
	jp (hl)			;12ab
	dec b			;12ac
	jp pe,0d107h		;12ad
	defb 0edh ;next byte illegal after ed	;12b0
l12b1h:
	add a,c			;12b1
	dec h			;12b2
	pop af			;12b3
	ld d,e			;12b4
	di			;12b5
	jr l12b1h		;12b6
	ld e,b			;12b8
	or d			;12b9
	ld sp,hl		;12ba
	cpl			;12bb
	or e			;12bc
	dec h			;12bd
	ex de,hl		;12be
	ld (bc),a		;12bf
	add hl,bc		;12c0
	dec bc			;12c1
	inc bc			;12c2
	inc hl			;12c3
	inc sp			;12c4
	dec bc			;12c5
	jp pe,0f806h		;12c6
	ld (bc),a		;12c9
	inc hl			;12ca
	ld d,e			;12cb
	and e			;12cc
	jp p,l01edh+2		;12cd
	ret m			;12d0
	inc d			;12d1
	jp (hl)			;12d2
	dec b			;12d3
	jp pe,0d107h		;12d4
	defb 0edh ;next byte illegal after ed	;12d7
l12d8h:
	add a,c			;12d8
	dec d			;12d9
	pop af			;12da
	ld d,l			;12db
	di			;12dc
	jr l12d8h		;12dd
	inc sp			;12df
	or d			;12e0
	ld sp,hl		;12e1
	ld c,b			;12e2
	or d			;12e3
	ret p			;12e4
	dec hl			;12e5
	dec bc			;12e6
	jp nc,08db9h		;12e7
	ret p			;12ea
	jp p,013f8h		;12eb
	rst 28h			;12ee
	ld (bc),a		;12ef
	jp (hl)			;12f0
	dec b			;12f1
	jp pe,0d208h		;12f2
	defb 0edh ;next byte illegal after ed	;12f5
	add a,c			;12f6
	dec (hl)		;12f7
	nop			;12f8
	ld sp,hl		;12f9
	ld a,(bc)		;12fa
	or d			;12fb
	dec c			;12fc
	ret m			;12fd
	dec e			;12fe
	defb 0edh ;next byte illegal after ed	;12ff
	add a,c			;1300
	dec d			;1301
	jp pe,0f904h		;1302
	inc hl			;1305
	or d			;1306
	pop de			;1307
	add a,b			;1308
	ret m			;1309
	inc de			;130a
	jp pe,0ed08h		;130b
	add a,c			;130e
	dec (hl)		;130f
	inc bc			;1310
	inc bc			;1311
	ld hl,05541h		;1312
	ld b,c			;1315
	ld hl,0d20dh		;1316
	jr nc,l134bh		;1319
	add a,c			;131b
	pop de			;131c
	ld bc,051d2h		;131d
	and c			;1320
	pop de			;1321
	jr nz,$-14		;1322
	ld b,a			;1324
	ld d,c			;1325
	ld (hl),c		;1326
	jp (hl)			;1327
	ld b,0a5h		;1328
	sub c			;132a
	ld (hl),e		;132b
	ld e,e			;132c
	ld c,a			;132d
	rst 38h			;132e
	jp nc,0939bh		;132f
	or e			;1332
	pop de			;1333
	inc bc			;1334
	ld d,l			;1335
	ld b,l			;1336
	dec b			;1337
	jp m,001feh		;1338
	rst 28h			;133b
	inc bc			;133c
	ret m			;133d
	inc de			;133e
	jp (hl)			;133f
	dec b			;1340
	jp pe,0d206h		;1341
	defb 0edh ;next byte illegal after ed	;1344
	add a,c			;1345
	dec (hl)		;1346
	ld (bc),a		;1347
	ld sp,hl		;1348
	ld a,(bc)		;1349
	or d			;134a
l134bh:
	ld a,(bc)		;134b
	jp pe,0ef05h		;134c
	ld (bc),a		;134f
	ld sp,hl		;1350
	inc hl			;1351
	or d			;1352
	pop de			;1353
	add a,b			;1354
	ret p			;1355
	rst 28h			;1356
	ld (bc),a		;1357
	pop af			;1358
	ld d,l			;1359
	ret m			;135a
	inc de			;135b
	jp (hl)			;135c
	dec b			;135d
	jp pe,0d106h		;135e
	defb 0edh ;next byte illegal after ed	;1361
	add a,c			;1362
	dec d			;1363
	ld (033f9h),hl		;1364
	or d			;1367
	ld sp,hl		;1368
	jp m,048b3h		;1369
	jp pe,02906h		;136c
	jp nc,0f0bdh		;136f
	jp p,015f8h		;1372
	rst 28h			;1375
	ld bc,l05e9h		;1376
	jp pe,0d106h		;1379
	defb 0edh ;next byte illegal after ed	;137c
	nop			;137d
	dec d			;137e
	pop af			;137f
	ld d,e			;1380
	di			;1381
	jr l1385h		;1382
	ld sp,hl		;1384
l1385h:
	ld e,b			;1385
	or d			;1386
	ld sp,hl		;1387
	cpl			;1388
	or e			;1389
	inc hl			;138a
	ex de,hl		;138b
	ld (bc),a		;138c
	ld a,(bc)		;138d
	dec bc			;138e
	ret p			;138f
	jp nc,0a383h		;1390
	pop de			;1393
	inc bc			;1394
	jp nc,0f88bh		;1395
	rla			;1398
	jp pe,0a307h		;1399
	pop de			;139c
	inc hl			;139d
	ld d,e			;139e
	jp p,l02efh		;139f
	pop af			;13a2
	ld d,l			;13a3
	ret m			;13a4
	inc de			;13a5
	jp (hl)			;13a6
	dec b			;13a7
	jp pe,0d106h		;13a8
	defb 0edh ;next byte illegal after ed	;13ab
	add a,c			;13ac
	dec d			;13ad
	ld (033f9h),hl		;13ae
	or d			;13b1
	ld sp,hl		;13b2
	jp m,04bb3h		;13b3
	add hl,hl		;13b6
	jp nc,0f0bah		;13b7
	jp p,003efh		;13ba
	ret m			;13bd
	inc de			;13be
	jp (hl)			;13bf
	dec b			;13c0
	jp pe,0d206h		;13c1
	defb 0edh ;next byte illegal after ed	;13c4
	add a,c			;13c5
	dec (hl)		;13c6
	ld (bc),a		;13c7
	ld sp,hl		;13c8
	ld a,(bc)		;13c9
	or d			;13ca
	ld a,(bc)		;13cb
	jp pe,0ef04h		;13cc
	ld (bc),a		;13cf
	ld sp,hl		;13d0
	inc hl			;13d1
	or d			;13d2
	pop de			;13d3
	add a,b			;13d4
	rst 28h			;13d5
	inc bc			;13d6
	ret m			;13d7
	inc de			;13d8
	jp pe,00206h		;13d9
	inc bc			;13dc
	inc bc			;13dd
	ld hl,05541h		;13de
	ld b,c			;13e1
	ld hl,0d20dh		;13e2
	jr nc,l1417h		;13e5
	add a,c			;13e7
	pop de			;13e8
	ld bc,051d2h		;13e9
	and c			;13ec
	pop de			;13ed
	ld hl,02107h		;13ee
	ld b,c			;13f1
	jp (hl)			;13f2
	ld b,055h		;13f3
	ld b,c			;13f5
	ld hl,00f0bh		;13f6
	rst 38h			;13f9
	ret m			;13fa
	dec d			;13fb
	jp pe,0d209h		;13fc
	ld (hl),e		;13ff
	pop de			;1400
	inc bc			;1401
	ld b,e			;1402
	ret m			;1403
	inc de			;1404
	jp pe,04b06h		;1405
	ret m			;1408
	dec d			;1409
	jp pe,0d209h		;140a
	sub e			;140d
	pop de			;140e
	inc bc			;140f
	ld b,e			;1410
	ret m			;1411
	inc de			;1412
	jp pe,05b06h		;1413
	ld c,e			;1416
l1417h:
	add hl,bc		;1417
	dec l			;1418
	ld e,e			;1419
	jp m,07af9h		;141a
	or h			;141d
	ld sp,hl		;141e
	add a,a			;141f
	or h			;1420
	defb 0edh ;next byte illegal after ed	;1421
	add a,d			;1422
	inc (hl)		;1423
	ld sp,hl		;1424
	sbc a,a			;1425
	or h			;1426
	out (0bbh),a		;1427
	jp nc,0e92bh		;1429
	ld a,(bc)		;142c
	ld e,e			;142d
	ret m			;142e
	ld a,(bc)		;142f
	jp (hl)			;1430
	ld a,(bc)		;1431
	ld a,e			;1432
	ld a,e			;1433
	ld a,e			;1434
	sbc a,e			;1435
	sbc a,e			;1436
	sbc a,e			;1437
	ex de,hl		;1438
	ld (bc),a		;1439
	ex af,af'		;143a
	ld a,e			;143b
	xor e			;143c
	jp (hl)			;143d
	dec b			;143e
	ld sp,hl		;143f
	sbc a,a			;1440
	or h			;1441
	out (0edh),a		;1442
	add a,c			;1444
	ld d,h			;1445
	or c			;1446
	or c			;1447
	or c			;1448
	or c			;1449
	or c			;144a
	or c			;144b
	jp nc,0aef9h		;144c
	or h			;144f
	ld hl,02121h		;1450
	ld hl,02121h		;1453
	ret p			;1456
	ret m			;1457
	inc d			;1458
	defb 0edh ;next byte illegal after ed	;1459
	add a,d			;145a
	inc (hl)		;145b
	ld sp,hl		;145c
	add a,a			;145d
	or h			;145e
	defb 0edh ;next byte illegal after ed	;145f
	add a,d			;1460
	inc (hl)		;1461
	inc bc			;1462
	inc bc			;1463
	inc bc			;1464
	jp nc,0a3a5h		;1465
	adc a,l			;1468
	add a,l			;1469
	and l			;146a
	pop de			;146b
	inc bc			;146c
	inc bc			;146d
	inc bc			;146e
	jp nc,l06e9h		;146f
	and l			;1472
	sub l			;1473
	defb 0edh ;next byte illegal after ed	;1474
	adc a,b			;1475
	ld (hl),c		;1476
	ld a,e			;1477
	ld a,a			;1478
	rst 38h			;1479
	cp 001h			;147a
	ret m			;147c
	inc d			;147d
	jp (hl)			;147e
	dec b			;147f
	jp pe,0d208h		;1480
	defb 0edh ;next byte illegal after ed	;1483
	add a,d			;1484
	inc (hl)		;1485
	jp m,l03d1h		;1486
	inc bc			;1489
	inc bc			;148a
	jp nc,0a3a5h		;148b
	adc a,l			;148e
	add a,l			;148f
	and l			;1490
	pop de			;1491
	inc bc			;1492
	inc bc			;1493
	inc bc			;1494
	jp nc,0a3a5h		;1495
	adc a,l			;1498
	defb 0edh ;next byte illegal after ed	;1499
	adc a,b			;149a
	sub c			;149b
	pop de			;149c
	dec bc			;149d
	jp m,l0df8h		;149e
	out (0bbh),a		;14a1
	ex de,hl		;14a3
	ld b,003h		;14a4
	xor e			;14a6
	xor e			;14a7
	jp nc,0eb0bh		;14a8
	inc c			;14ab
	inc b			;14ac
	jp m,02121h		;14ad
	ld hl,02121h		;14b0
	ld hl,05151h		;14b3
	ld d,c			;14b6
	ld d,c			;14b7
	ld d,c			;14b8
	ld d,c			;14b9
	jp m,07af9h		;14ba
	or h			;14bd
	ld sp,hl		;14be
	ld e,0b5h		;14bf
	ret m			;14c1
	dec c			;14c2
	jp pe,0ed09h		;14c3
	add a,d			;14c6
	ld b,h			;14c7
	ld sp,hl		;14c8
	ld sp,02bb5h		;14c9
	ld e,e			;14cc
	jp (hl)			;14cd
	ld a,(bc)		;14ce
	adc a,e			;14cf
	ret m			;14d0
	ld a,(bc)		;14d1
	jp pe,0ed08h		;14d2
	add a,d			;14d5
	inc (hl)		;14d6
	dec bc			;14d7
	ex de,hl		;14d8
	dec c			;14d9
	inc bc			;14da
	dec hl			;14db
	ret m			;14dc
	dec c			;14dd
	jp (hl)			;14de
	dec b			;14df
	jp pe,0d209h		;14e0
	defb 0edh ;next byte illegal after ed	;14e3
	add a,d			;14e4
	ld b,h			;14e5
	ld sp,hl		;14e6
	ld sp,0edb5h		;14e7
	add a,c			;14ea
	ld d,h			;14eb
	ld sp,hl		;14ec
	xor (hl)		;14ed
	or h			;14ee
	add a,c			;14ef
	add a,c			;14f0
	add a,c			;14f1
	add a,c			;14f2
	add a,c			;14f3
	add a,c			;14f4
	ld d,c			;14f5
	ld d,c			;14f6
	ld d,c			;14f7
l14f8h:
	ld d,c			;14f8
	ld d,c			;14f9
	ld d,c			;14fa
	ret p			;14fb
	ret m			;14fc
	inc d			;14fd
	jp pe,0ed08h		;14fe
	add a,e			;1501
	inc (hl)		;1502
	ld sp,hl		;1503
	ld e,0b5h		;1504
	defb 0edh ;next byte illegal after ed	;1506
	add a,d			;1507
	inc (hl)		;1508
	ld b,e			;1509
	ld b,e			;150a
	ld b,e			;150b
	dec h			;150c
	inc hl			;150d
	dec c			;150e
	dec b			;150f
	dec h			;1510
	ld b,e			;1511
	ld b,e			;1512
	ld b,e			;1513
	jp (hl)			;1514
l1515h:
	ld b,025h		;1515
	dec b			;1517
	defb 0edh ;next byte illegal after ed	;1518
	adc a,b			;1519
	sub c			;151a
l151bh:
	ld e,e			;151b
	ld c,a			;151c
	rst 38h			;151d
	ld b,e			;151e
	ld b,e			;151f
	ld b,e			;1520
	dec h			;1521
	inc hl			;1522
	dec c			;1523
	dec b			;1524
	dec h			;1525
	ld b,e			;1526
	ld b,e			;1527
	ld b,e			;1528
	dec h			;1529
	inc hl			;152a
	dec c			;152b
	defb 0edh ;next byte illegal after ed	;152c
	adc a,b			;152d
	sub c			;152e
	dec sp			;152f
	jp m,0eb2bh		;1530
	ex af,af'		;1533
	inc bc			;1534
	dec sp			;1535
	dec sp			;1536
	dec sp			;1537
	dec sp			;1538
	ld c,e			;1539
	ld c,e			;153a
	ld c,e			;153b
	ld c,e			;153c
	ld e,e			;153d
	ld e,e			;153e
	ld e,e			;153f
	ld e,e			;1540
	jp m,001feh		;1541
	jp (hl)			;1544
	inc b			;1545
	rst 8			;1546
	rst 8			;1547
	rst 8			;1548
	rst 8			;1549
	rst 8			;154a
	defb 0edh ;next byte illegal after ed	;154b
	adc a,a			;154c
	ld (hl),b		;154d
	jp (hl)			;154e
	inc bc			;154f
	jp pe,0d20dh		;1550
	ld b,b			;1553
	jp (hl)			;1554
	rrca			;1555
l1556h:
	sbc a,a			;1556
	jp (hl)			;1557
	inc bc			;1558
	ld b,b			;1559
	jp (hl)			;155a
	rrca			;155b
	ld a,a			;155c
	cp 004h			;155d
	jp (hl)			;155f
	dec b			;1560
	add a,c			;1561
	ld sp,03131h		;1562
	sub c			;1565
	sub c			;1566
	sub c			;1567
	sub c			;1568
	cp 004h			;1569
	jp (hl)			;156b
	dec b			;156c
	ld sp,hl		;156d
	add hl,bc		;156e
l156fh:
	or (hl)			;156f
	ld sp,hl		;1570
	inc de			;1571
	or (hl)			;1572
	ex de,hl		;1573
l1574h:
	inc bc			;1574
	inc c			;1575
	ld sp,hl		;1576
	dec e			;1577
	or (hl)			;1578
	sub c			;1579
l157ah:
	sub c			;157a
	sub c			;157b
	sub c			;157c
	ld sp,hl		;157d
	add hl,bc		;157e
	or (hl)			;157f
l1580h:
	ld sp,hl		;1580
	inc de			;1581
	or (hl)			;1582
	ex de,hl		;1583
	inc bc			;1584
	ex af,af'		;1585
	ld sp,hl		;1586
	dec e			;1587
	or (hl)			;1588
	jr nc,l151bh		;1589
	sub c			;158b
l158ch:
	sub c			;158c
	sub c			;158d
	add a,c			;158e
	ld sp,l0191h		;158f
	sub c			;1592
	ld bc,l0000h+1		;1593
	nop			;1596
	add a,c			;1597
	add a,c			;1598
	ld bc,09101h		;1599
	ld bc,l0000h+1		;159c
	djnz l158ch		;159f
	inc bc			;15a1
	inc d			;15a2
	ld sp,hl		;15a3
	dec e			;15a4
	or (hl)			;15a5
	sub c			;15a6
	sub c			;15a7
	sub c			;15a8
	sub c			;15a9
	ld sp,hl		;15aa
	add hl,bc		;15ab
	or (hl)			;15ac
	ld sp,hl		;15ad
	inc de			;15ae
	or (hl)			;15af
	ld sp,hl		;15b0
	add hl,bc		;15b1
	or (hl)			;15b2
	add a,e			;15b3
	inc bc			;15b4
	inc bc			;15b5
	inc bc			;15b6
	cp 004h			;15b7
	jp (hl)			;15b9
	ld a,(bc)		;15ba
	add a,e			;15bb
	add a,e			;15bc
	add a,e			;15bd
	add a,e			;15be
	add a,e			;15bf
	add a,e			;15c0
	add a,e			;15c1
	sub b			;15c2
	sub b			;15c3
	sub b			;15c4
	sub b			;15c5
	ex de,hl		;15c6
	ld b,00dh		;15c7
	add a,e			;15c9
	sub d			;15ca
	nop			;15cb
	add a,e			;15cc
	sub d			;15cd
	nop			;15ce
	add a,e			;15cf
	sub d			;15d0
l15d1h:
	djnz l1556h		;15d1
	sub b			;15d3
	sub b			;15d4
	sub b			;15d5
	sub b			;15d6
	add a,b			;15d7
	sub b			;15d8
	nop			;15d9
	djnz l156fh		;15da
	add a,e			;15dc
	sub d			;15dd
	nop			;15de
	add a,e			;15df
	sub d			;15e0
	nop			;15e1
	add a,e			;15e2
	sub d			;15e3
	djnz l15d1h		;15e4
	ld (bc),a		;15e6
	djnz $-2		;15e7
	ld (bc),a		;15e9
	ret			;15ea
	or l			;15eb
	add a,c			;15ec
	nop			;15ed
	nop			;15ee
	sub c			;15ef
	nop			;15f0
	djnz l1574h		;15f1
	nop			;15f3
	nop			;15f4
	sub c			;15f5
	nop			;15f6
	djnz l157ah		;15f7
	nop			;15f9
	nop			;15fa
	sub c			;15fb
	nop			;15fc
	djnz l1580h		;15fd
	nop			;15ff
	nop			;1600
	sub b			;1601
	sub b			;1602
	ld de,l04ebh		;1603
	ld a,(de)		;1606
	rrca			;1607
	rst 38h			;1608
	add a,c			;1609
	ld bc,l0101h		;160a
	sub c			;160d
	ld bc,l0000h+1		;160e
	nop			;1611
	jp m,08181h		;1612
	ld bc,09101h		;1615
	ld bc,l0000h+1		;1618
	djnz $-4		;161b
	add a,c			;161d
	ld bc,03131h		;161e
	sub c			;1621
	ld bc,l0000h+1		;1622
	nop			;1625
	add a,c			;1626
	add a,c			;1627
	ld sp,0fa31h		;1628
	cp 001h			;162b
	jp (hl)			;162d
	inc b			;162e
	rst 8			;162f
	rst 8			;1630
	rst 8			;1631
	rst 8			;1632
	rst 8			;1633
	defb 0edh ;next byte illegal after ed	;1634
	adc a,a			;1635
	ld (hl),b		;1636
	jp (hl)			;1637
	inc bc			;1638
	jp nc,0fefah		;1639
	ld bc,l04e9h		;163c
	rst 8			;163f
	rst 8			;1640
	rst 8			;1641
	rst 8			;1642
	rst 8			;1643
	defb 0edh ;next byte illegal after ed	;1644
	adc a,a			;1645
	ld (hl),b		;1646
	jp (hl)			;1647
	inc bc			;1648
	jp nc,l0deah		;1649
	sub b			;164c
	jp (hl)			;164d
	rrca			;164e
	pop de			;164f
	rrca			;1650
	jp (hl)			;1651
	inc bc			;1652
	jp nc,0e990h		;1653
	rrca			;1656
	cp a			;1657
	ld sp,hl		;1658
	ret nz			;1659
	or (hl)			;165a
	jp pe,09108h		;165b
	jp pe,09109h		;165e
	jp pe,0910ah		;1661
	jp pe,0910bh		;1664
	sub c			;1667
	jp pe,0910ch		;1668
	sub c			;166b
	defb 0edh ;next byte illegal after ed	;166c
	ld bc,0fe34h		;166d
	ld bc,l05e9h		;1670
	jp pe,0d407h		;1673
	defb 0edh ;next byte illegal after ed	;1676
	ld bc,0ea34h		;1677
	inc c			;167a
	ld sp,hl		;167b
	or b			;167c
	or (hl)			;167d
	out (041h),a		;167e
	call nc,0fc43h		;1680
	ld (bc),a		;1683
	ld l,a			;1684
	or (hl)			;1685
	call nc,l0deah		;1686
	defb 0edh ;next byte illegal after ed	;1689
	ld bc,0f934h		;168a
	sub a			;168d
	or (hl)			;168e
	jp pe,0f90ch		;168f
	and b			;1692
	or (hl)			;1693
	ld sp,hl		;1694
	ld b,e			;1695
	cp d			;1696
	ld d,a			;1697
	ld d,a			;1698
	ld d,a			;1699
	ld d,a			;169a
	ld h,a			;169b
	ld h,a			;169c
	ld h,a			;169d
	ld h,a			;169e
	jp m,05757h		;169f
	ld d,a			;16a2
	ld d,a			;16a3
	ld (hl),a		;16a4
	ld (hl),a		;16a5
	ld (hl),a		;16a6
	ld (hl),a		;16a7
	or a			;16a8
	or a			;16a9
	or a			;16aa
	or a			;16ab
	jp (hl)			;16ac
	ld a,(bc)		;16ad
	ld c,a			;16ae
	jp m,0eb97h		;16af
	rlca			;16b2
	inc bc			;16b3
	sub e			;16b4
	ld b,c			;16b5
	ld sp,02727h		;16b6
	daa			;16b9
	daa			;16ba
	ld b,a			;16bb
	ld b,a			;16bc
	ld b,a			;16bd
	ld b,c			;16be
	jp m,001feh		;16bf
	jp (hl)			;16c2
	dec b			;16c3
	jp pe,0d407h		;16c4
	defb 0edh ;next byte illegal after ed	;16c7
	add a,c			;16c8
	ld sp,0fa91h		;16c9
	rst 28h			;16cc
	dec bc			;16cd
	ld sp,hl		;16ce
	dec bc			;16cf
	or a			;16d0
	ld sp,hl		;16d1
	ld hl,(0f9b7h)		;16d2
	ret nz			;16d5
	or (hl)			;16d6
	jp pe,09106h		;16d7
	jp pe,09107h		;16da
	jp pe,09108h		;16dd
	jp pe,09109h		;16e0
	sub c			;16e3
	jp pe,0910ah		;16e4
	sub c			;16e7
	defb 0edh ;next byte illegal after ed	;16e8
	ld bc,0fe34h		;16e9
	ld bc,l05e9h		;16ec
	jp pe,0d50ah		;16ef
	defb 0edh ;next byte illegal after ed	;16f2
	ld bc,0f934h		;16f3
	or b			;16f6
	or (hl)			;16f7
	call nc,0d541h		;16f8
	ld b,e			;16fb
	call m,0eb02h		;16fc
	or (hl)			;16ff
	jp pe,0f90ah		;1700
	sub a			;1703
	or (hl)			;1704
	ld sp,hl		;1705
	and b			;1706
	or (hl)			;1707
	ld sp,hl		;1708
	cp b			;1709
	cp d			;170a
	cp 001h			;170b
	jp (hl)			;170d
	inc b			;170e
	push de			;170f
	rst 28h			;1710
	dec bc			;1711
	jp pe,09303h		;1712
	jp pe,09304h		;1715
	jp pe,09305h		;1718
	jp pe,09306h		;171b
	jp pe,09307h		;171e
	jp pe,09308h		;1721
	jp pe,09309h		;1724
	jp pe,0fa0ah		;1727
	rst 28h			;172a
	rrca			;172b
	sbc a,a			;172c
	rst 28h			;172d
	inc c			;172e
	sbc a,a			;172f
	rst 28h			;1730
	add hl,bc		;1731
	sbc a,a			;1732
	rst 28h			;1733
	inc c			;1734
	sbc a,a			;1735
	jp pe,0ef09h		;1736
	rrca			;1739
	sbc a,a			;173a
	rst 28h			;173b
	inc c			;173c
	sbc a,a			;173d
	rst 28h			;173e
	add hl,bc		;173f
	sbc a,a			;1740
	rst 28h			;1741
	inc c			;1742
	sbc a,a			;1743
	jp pe,0ef08h		;1744
	rrca			;1747
	sbc a,a			;1748
	rst 28h			;1749
	inc c			;174a
	sbc a,a			;174b
	rst 28h			;174c
	add hl,bc		;174d
	sbc a,h			;174e
	jp (hl)			;174f
	ld bc,0fac1h		;1750
	ret m			;1753
	ld (bc),a		;1754
	ld sp,hl		;1755
	dec bc			;1756
	or a			;1757
	sbc a,a			;1758
	sbc a,a			;1759
	sbc a,a			;175a
	sbc a,a			;175b
	jp pe,09f0ah		;175c
	sbc a,a			;175f
	sbc a,a			;1760
	sbc a,a			;1761
	jp pe,09f09h		;1762
	sbc a,a			;1765
	sbc a,h			;1766
	jp (hl)			;1767
	ld bc,0f0c1h		;1768
	ret m			;176b
	ld a,(bc)		;176c
	jp (hl)			;176d
	dec b			;176e
	jp pe,0d102h		;176f
	xor 090h		;1772
	add a,b			;1774
	ld (hl),b		;1775
	ld h,b			;1776
	ld d,b			;1777
	ld b,b			;1778
	jr nc,l179bh		;1779
	djnz l177dh		;177b
l177dh:
	jp nc,0a0b0h		;177d
	sub b			;1780
	add a,b			;1781
	ld (hl),b		;1782
	ld h,b			;1783
	ret m			;1784
	dec c			;1785
	jp (hl)			;1786
	ld a,(bc)		;1787
	jp pe,0d308h		;1788
	defb 0edh ;next byte illegal after ed	;178b
	add a,e			;178c
	ld b,h			;178d
	or c			;178e
	jp nc,02101h		;178f
	ld b,e			;1792
	inc bc			;1793
	ld b,e			;1794
	inc hl			;1795
	out (0b3h),a		;1796
	jp nc,02103h		;1798
l179bh:
	ld b,a			;179b
	inc hl			;179c
	out (093h),a		;179d
	ld (hl),a		;179f
	jp nc,0d307h		;17a0
	or c			;17a3
	jp nc,02101h		;17a4
	ld b,e			;17a7
	inc bc			;17a8
	sub e			;17a9
	ld b,e			;17aa
	inc hl			;17ab
	inc bc			;17ac
	ld hl,02347h		;17ad
	out (093h),a		;17b0
	ld (hl),e		;17b2
	jp nc,04303h		;17b3
	ld (hl),e		;17b6
	defb 0edh ;next byte illegal after ed	;17b7
	add a,e			;17b8
	ld b,h			;17b9
	ld (hl),a		;17ba
	ld d,a			;17bb
	ld b,a			;17bc
	rlca			;17bd
	out (091h),a		;17be
	or c			;17c0
	jp nc,02901h		;17c1
	out (091h),a		;17c4
	or c			;17c6
	jp nc,02301h		;17c7
	inc bc			;17ca
	out (0b1h),a		;17cb
	sub a			;17cd
	jp nc,04f27h		;17ce
	ld sp,hl		;17d1
	dec l			;17d2
	cp e			;17d3
	cp 001h			;17d4
	ret m			;17d6
	ld (bc),a		;17d7
	jp (hl)			;17d8
	ld (bc),a		;17d9
	push de			;17da
	rst 28h			;17db
	dec bc			;17dc
	jp pe,09301h		;17dd
	jp pe,09302h		;17e0
	jp pe,09303h		;17e3
	jp pe,09304h		;17e6
	jp pe,09305h		;17e9
	jp pe,09306h		;17ec
	jp pe,09307h		;17ef
	jp pe,09308h		;17f2
	jp pe,09709h		;17f5
	sub a			;17f8
	sub a			;17f9
	jp (hl)			;17fa
	inc b			;17fb
	jp pe,0ef0ah		;17fc
	rrca			;17ff
	sbc a,a			;1800
	rst 28h			;1801
	dec bc			;1802
	sbc a,a			;1803
	rst 28h			;1804
	rlca			;1805
	sbc a,a			;1806
	rst 28h			;1807
	dec bc			;1808
	sbc a,a			;1809
	jp pe,0ef09h		;180a
	rrca			;180d
	sbc a,a			;180e
	rst 28h			;180f
	dec bc			;1810
	sbc a,a			;1811
	rst 28h			;1812
	rlca			;1813
	sbc a,a			;1814
	rst 28h			;1815
	dec bc			;1816
	sbc a,a			;1817
	jp pe,0ef08h		;1818
	rrca			;181b
	sbc a,a			;181c
	rst 28h			;181d
	dec bc			;181e
	sbc a,a			;181f
	rst 28h			;1820
	rlca			;1821
	sbc a,h			;1822
	jp (hl)			;1823
	ld bc,0f0c1h		;1824
	cp 001h			;1827
	rst 28h			;1829
	ld (bc),a		;182a
	ret m			;182b
	ld a,(bc)		;182c
	jp (hl)			;182d
	dec b			;182e
	jp pe,0d102h		;182f
	xor 090h		;1832
	add a,b			;1834
	ld (hl),b		;1835
	sub b			;1836
	add a,b			;1837
	ld (hl),b		;1838
	ld h,b			;1839
	ld d,b			;183a
	ld b,b			;183b
	jr nc,$+34		;183c
	djnz l1840h		;183e
l1840h:
	jp nc,0a0b0h		;1840
	sub b			;1843
	add a,b			;1844
	ld (hl),b		;1845
	ld h,b			;1846
	rst 28h			;1847
	ld (bc),a		;1848
	ret m			;1849
	dec c			;184a
	jp (hl)			;184b
	ld a,(bc)		;184c
	jp pe,0d306h		;184d
	defb 0edh ;next byte illegal after ed	;1850
	add a,e			;1851
	ld de,0d2b1h		;1852
	ld bc,04321h		;1855
	inc bc			;1858
	ld b,e			;1859
	inc hl			;185a
	out (0b3h),a		;185b
	jp nc,02103h		;185d
	ld b,a			;1860
	inc hl			;1861
	out (093h),a		;1862
	ld (hl),a		;1864
	jp nc,0d307h		;1865
	or c			;1868
	jp nc,02101h		;1869
	ld b,e			;186c
	inc bc			;186d
	sub e			;186e
	ld b,e			;186f
	inc hl			;1870
	inc bc			;1871
	ld hl,02347h		;1872
	out (093h),a		;1875
	ld (hl),e		;1877
	jp nc,04303h		;1878
	ld (hl),c		;187b
	jp (hl)			;187c
	dec b			;187d
	ret nz			;187e
	cp 001h			;187f
	ret m			;1881
	dec c			;1882
	jp (hl)			;1883
	ld a,(bc)		;1884
	jp pe,0d207h		;1885
	defb 0edh ;next byte illegal after ed	;1888
	add a,e			;1889
	ld sp,02747h		;188a
	rlca			;188d
	out (097h),a		;188e
	jp pe,0ed06h		;1890
	add a,d			;1893
	inc (hl)		;1894
	call nc,0b191h		;1895
	out (001h),a		;1898
	add hl,hl		;189a
	rst 28h			;189b
	ld (bc),a		;189c
	jp (hl)			;189d
	dec b			;189e
	jp pe,0ed06h		;189f
	add a,e			;18a2
	ld de,0e992h		;18a3
	ld a,(bc)		;18a6
	sub c			;18a7
	or c			;18a8
	jp nc,02301h		;18a9
	inc bc			;18ac
	out (0b1h),a		;18ad
	sub a			;18af
	jp nc,04d27h		;18b0
	jp (hl)			;18b3
	dec b			;18b4
	ret nz			;18b5
	ret p			;18b6
	ld sp,hl		;18b7
	or h			;18b8
	cp e			;18b9
	cp 001h			;18ba
	ret m			;18bc
	ld (bc),a		;18bd
	jp (hl)			;18be
	ld (bc),a		;18bf
	call nc,0eacfh		;18c0
	ld bc,0ea97h		;18c3
	ld (bc),a		;18c6
	sub e			;18c7
	jp pe,09303h		;18c8
	jp pe,0e904h		;18cb
	ex af,af'		;18ce
	sbc a,a			;18cf
	sbc a,a			;18d0
	defb 0edh ;next byte illegal after ed	;18d1
	adc a,a			;18d2
	ld (hl),b		;18d3
	jp (hl)			;18d4
	inc bc			;18d5
	jp pe,0d20ah		;18d6
	ld b,b			;18d9
	jp (hl)			;18da
	rrca			;18db
	sbc a,a			;18dc
	jp (hl)			;18dd
	inc bc			;18de
	ld b,b			;18df
	jp (hl)			;18e0
	rrca			;18e1
	ld a,a			;18e2
	ret p			;18e3
	ret m			;18e4
	ld a,(bc)		;18e5
	jp (hl)			;18e6
	dec b			;18e7
	jp pe,0d102h		;18e8
	xor 040h		;18eb
	jr nc,l190fh		;18ed
	djnz l18f1h		;18ef
l18f1h:
	jp nc,0a0b0h		;18f1
	sub b			;18f4
	add a,b			;18f5
l18f6h:
	ld (hl),b		;18f6
	ld h,b			;18f7
	ld d,b			;18f8
	ld b,b			;18f9
	jr nc,l191ch		;18fa
	djnz l18f6h		;18fc
	ld a,(bc)		;18fe
	jp (hl)			;18ff
	ld a,(bc)		;1900
	jp pe,0d206h		;1901
	defb 0edh ;next byte illegal after ed	;1904
	adc a,a			;1905
	ld b,h			;1906
	rst 28h			;1907
	ld bc,04f4fh		;1908
	rrca			;190b
	rrca			;190c
	ret p			;190d
	ex de,hl		;190e
l190fh:
	ld (bc),a		;190f
	add hl,bc		;1910
	cp 001h			;1911
	ret m			;1913
	ld a,(bc)		;1914
	jp (hl)			;1915
	ld a,(bc)		;1916
	jp pe,0d206h		;1917
	defb 0edh ;next byte illegal after ed	;191a
	adc a,a			;191b
l191ch:
	ld d,(hl)		;191c
	rst 28h			;191d
	ld bc,05347h		;191e
	ld d,b			;1921
	ld d,d			;1922
	ld b,a			;1923
	ld b,e			;1924
	ld b,b			;1925
	ld b,d			;1926
	ld bc,04121h		;1927
	ld d,l			;192a
	ld d,b			;192b
	ld d,d			;192c
	ld bc,04121h		;192d
	ld d,l			;1930
	ld d,b			;1931
	ld d,d			;1932
	daa			;1933
	ld h,a			;1934
	ld b,a			;1935
	ld b,a			;1936
	ld sp,hl		;1937
	ld d,a			;1938
	cp h			;1939
	cp 001h			;193a
	ret m			;193c
	ld (bc),a		;193d
	jp (hl)			;193e
	inc b			;193f
	jp pe,0d301h		;1940
	rst 8			;1943
	sbc a,a			;1944
	jp pe,09f02h		;1945
	sbc a,a			;1948
	sbc a,a			;1949
	ret p			;194a
	defb 0edh ;next byte illegal after ed	;194b
	adc a,a			;194c
	ld (hl),b		;194d
	jp (hl)			;194e
	inc bc			;194f
	jp pe,0d20ah		;1950
	ld b,b			;1953
	jp (hl)			;1954
	rrca			;1955
	sbc a,a			;1956
	jp (hl)			;1957
	inc bc			;1958
	ld b,b			;1959
	jp (hl)			;195a
	rrca			;195b
	ld a,a			;195c
	ret p			;195d
	cp 001h			;195e
	rst 28h			;1960
	ld (bc),a		;1961
	ret m			;1962
	ld a,(bc)		;1963
	jp (hl)			;1964
	dec b			;1965
	jp pe,0d102h		;1966
	xor 040h		;1969
	jr nc,l198dh		;196b
	ld b,b			;196d
	jr nc,l1990h		;196e
	djnz l1972h		;1970
l1972h:
	jp nc,0a0b0h		;1972
	sub b			;1975
	add a,b			;1976
	ld (hl),b		;1977
	ld h,b			;1978
	ld d,b			;1979
	ld b,b			;197a
	ret m			;197b
	ld a,(bc)		;197c
	jp (hl)			;197d
	ld a,(bc)		;197e
	jp pe,0ed06h		;197f
	adc a,a			;1982
	ld b,h			;1983
	rst 28h			;1984
	ld bc,l0fd2h		;1985
	rrca			;1988
	out (09fh),a		;1989
	ld a,a			;198b
	ret p			;198c
l198dh:
	ex de,hl		;198d
	ld (bc),a		;198e
	dec bc			;198f
l1990h:
	ret m			;1990
	ld a,(bc)		;1991
	jp (hl)			;1992
	ld a,(bc)		;1993
	jp pe,0d206h		;1994
	defb 0edh ;next byte illegal after ed	;1997
	adc a,a			;1998
	ld d,(hl)		;1999
	rst 28h			;199a
	ld bc,l0307h		;199b
	nop			;199e
	ld (bc),a		;199f
	rlca			;19a0
	inc bc			;19a1
	nop			;19a2
	ld (bc),a		;19a3
	out (091h),a		;19a4
	or c			;19a6
	jp nc,02501h		;19a7
	jr nz,l19ceh		;19aa
	out (091h),a		;19ac
	or c			;19ae
	jp nc,02501h		;19af
	jr nz,$+36		;19b2
	out (097h),a		;19b4
	jp nc,0d327h		;19b6
	or a			;19b9
	or a			;19ba
	ld sp,hl		;19bb
	add hl,bc		;19bc
	cp l			;19bd
	cp 001h			;19be
	ret m			;19c0
	ld (bc),a		;19c1
	jp (hl)			;19c2
	inc b			;19c3
	jp pe,0d201h		;19c4
	rst 8			;19c7
	sbc a,a			;19c8
	jp pe,09f02h		;19c9
	sbc a,a			;19cc
	sbc a,a			;19cd
l19ceh:
	ret p			;19ce
	defb 0edh ;next byte illegal after ed	;19cf
	adc a,a			;19d0
	ld (hl),b		;19d1
	jp (hl)			;19d2
	inc bc			;19d3
	jp pe,0d20ah		;19d4
	sub b			;19d7
	jp (hl)			;19d8
	rrca			;19d9
	pop de			;19da
	rrca			;19db
	jp (hl)			;19dc
	inc bc			;19dd
	jp nc,0e990h		;19de
	rrca			;19e1
	cp a			;19e2
	ret p			;19e3
	cp 001h			;19e4
	ret m			;19e6
	ld a,(bc)		;19e7
	jp (hl)			;19e8
	dec b			;19e9
	jp pe,0d302h		;19ea
	xor 040h		;19ed
	jr nc,l1a11h		;19ef
	djnz l19f3h		;19f1
l19f3h:
	out (0b0h),a		;19f3
	and b			;19f5
	sub b			;19f6
	add a,b			;19f7
l19f8h:
	ld (hl),b		;19f8
	ld h,b			;19f9
	ld d,b			;19fa
	ld b,b			;19fb
	jr nc,l1a1eh		;19fc
	djnz l19f8h		;19fe
	ld a,(bc)		;1a00
	jp (hl)			;1a01
	ld a,(bc)		;1a02
	jp pe,0d305h		;1a03
	defb 0edh ;next byte illegal after ed	;1a06
	adc a,a			;1a07
	ld b,h			;1a08
	rst 28h			;1a09
	ld bc,07f7fh		;1a0a
	ld e,a			;1a0d
	ld c,a			;1a0e
	ret p			;1a0f
	ex de,hl		;1a10
l1a11h:
	ld (bc),a		;1a11
	add hl,bc		;1a12
	cp 001h			;1a13
	ret m			;1a15
	ld a,(bc)		;1a16
	jp (hl)			;1a17
	ld a,(bc)		;1a18
	jp pe,0d305h		;1a19
	defb 0edh ;next byte illegal after ed	;1a1c
	adc a,a			;1a1d
l1a1eh:
	ld d,(hl)		;1a1e
	rst 28h			;1a1f
	ld bc,09397h		;1a20
	sub b			;1a23
	sub d			;1a24
	sub a			;1a25
	sub e			;1a26
	sub b			;1a27
	sub d			;1a28
	out (091h),a		;1a29
	or c			;1a2b
	jp nc,02501h		;1a2c
	jr nz,l1a53h		;1a2f
	out (051h),a		;1a31
	ld (hl),c		;1a33
	sub c			;1a34
	jp nc,02025h		;1a35
	ld (067d3h),hl		;1a38
	jp nc,0d367h		;1a3b
	sub a			;1a3e
	add a,a			;1a3f
	ld sp,hl		;1a40
	ld a,(hl)		;1a41
	cp l			;1a42
	cp 001h			;1a43
	jp (hl)			;1a45
	ld a,(bc)		;1a46
	jp pe,0d40ch		;1a47
	defb 0edh ;next byte illegal after ed	;1a4a
	ld bc,09355h		;1a4b
	sub e			;1a4e
	sub e			;1a4f
	sub e			;1a50
	sub e			;1a51
	sub e			;1a52
l1a53h:
	sub e			;1a53
	sub b			;1a54
	ld h,b			;1a55
	ld (hl),b		;1a56
	add a,b			;1a57
	ex de,hl		;1a58
	ld b,017h		;1a59
	jp (hl)			;1a5b
	ld a,(bc)		;1a5c
	call nc,sub_0eeah	;1a5d
	defb 0edh ;next byte illegal after ed	;1a60
	ld bc,05354h		;1a61
	ld d,e			;1a64
	ld d,e			;1a65
	ld d,e			;1a66
	ld h,e			;1a67
	ld h,e			;1a68
	ld h,e			;1a69
	ld h,e			;1a6a
	jp pe,0700ch		;1a6b
	ld (hl),d		;1a6e
	ld (hl),e		;1a6f
	ld (hl),e		;1a70
	ld (hl),e		;1a71
	ld (hl),b		;1a72
	ld (hl),d		;1a73
	ld (hl),e		;1a74
	ld (hl),e		;1a75
	ld (hl),e		;1a76
	ex de,hl		;1a77
	ld (bc),a		;1a78
	inc c			;1a79
	call m,05b02h		;1a7a
	cp d			;1a7d
	jp (hl)			;1a7e
	ld a,(bc)		;1a7f
	call nc,sub_0eeah	;1a80
	defb 0edh ;next byte illegal after ed	;1a83
	ld bc,05154h		;1a84
	ex de,hl		;1a87
	ex af,af'		;1a88
	inc bc			;1a89
	ld b,c			;1a8a
	ex de,hl		;1a8b
	ex af,af'		;1a8c
	inc bc			;1a8d
	ld sp,l08ebh		;1a8e
	inc bc			;1a91
	ld hl,02121h		;1a92
	ld hl,02121h		;1a95
	jr nz,l1abah		;1a98
	jr nc,l1adch		;1a9a
	ld d,c			;1a9c
	ex de,hl		;1a9d
	ex af,af'		;1a9e
	inc bc			;1a9f
	ld b,c			;1aa0
l1aa1h:
	ex de,hl		;1aa1
	ex af,af'		;1aa2
	inc bc			;1aa3
	ld sp,l08ebh		;1aa4
	inc bc			;1aa7
	ld hl,02121h		;1aa8
	ld hl,02121h		;1aab
	jr nz,l1ad0h		;1aae
	sub b			;1ab0
	jr nz,l1aa1h		;1ab1
	jp pe,07b09h		;1ab3
	ld a,a			;1ab6
	rst 38h			;1ab7
	cp 001h			;1ab8
l1abah:
	jp (hl)			;1aba
	ld a,(bc)		;1abb
	jp pe,0d50dh		;1abc
	defb 0edh ;next byte illegal after ed	;1abf
	ld bc,09355h		;1ac0
	sub e			;1ac3
	sub e			;1ac4
	sub e			;1ac5
	sub e			;1ac6
	sub e			;1ac7
	sub e			;1ac8
	sub b			;1ac9
	ld h,b			;1aca
	ld (hl),b		;1acb
	add a,b			;1acc
	ex de,hl		;1acd
	ld b,00dh		;1ace
l1ad0h:
	jp (hl)			;1ad0
	ld a,(bc)		;1ad1
	push de			;1ad2
	jp pe,0ed0ch		;1ad3
	ld bc,05354h		;1ad6
	ld d,e			;1ad9
	ld d,e			;1ada
	ld d,e			;1adb
l1adch:
	ld h,e			;1adc
	ld h,e			;1add
	ld h,e			;1ade
	ld h,e			;1adf
	jp pe,0700dh		;1ae0
	ld (hl),d		;1ae3
	ld (hl),e		;1ae4
	ld (hl),e		;1ae5
	ld (hl),e		;1ae6
	ld (hl),b		;1ae7
	ld (hl),d		;1ae8
	ld (hl),e		;1ae9
	ld (hl),e		;1aea
	ld (hl),e		;1aeb
	ex de,hl		;1aec
	ld (bc),a		;1aed
	inc c			;1aee
	call m,0d002h		;1aef
	cp d			;1af2
	jp (hl)			;1af3
	ld a,(bc)		;1af4
	push de			;1af5
	jp pe,0ed0ch		;1af6
	ld bc,05154h		;1af9
	ex de,hl		;1afc
	ex af,af'		;1afd
	inc bc			;1afe
	ld b,c			;1aff
	ex de,hl		;1b00
	ex af,af'		;1b01
	inc bc			;1b02
	ld sp,l08ebh		;1b03
	inc bc			;1b06
	ld hl,02121h		;1b07
	ld hl,02121h		;1b0a
	jr nz,l1b2fh		;1b0d
	jr nc,l1b51h		;1b0f
	ld d,c			;1b11
	ex de,hl		;1b12
	ex af,af'		;1b13
	inc bc			;1b14
	ld b,c			;1b15
l1b16h:
	ex de,hl		;1b16
	ex af,af'		;1b17
	inc bc			;1b18
	ld sp,l08ebh		;1b19
	inc bc			;1b1c
	ld hl,02121h		;1b1d
	ld hl,02121h		;1b20
	jr nz,l1b45h		;1b23
	sub b			;1b25
	jr nz,l1b16h		;1b26
	jp pe,07b09h		;1b28
	ld a,e			;1b2b
	rst 38h			;1b2c
	cp 001h			;1b2d
l1b2fh:
	ret m			;1b2f
	dec c			;1b30
	rst 28h			;1b31
	ld bc,00ae9h		;1b32
	jp pe,0d40ch		;1b35
	defb 0edh ;next byte illegal after ed	;1b38
	add a,c			;1b39
	add a,l			;1b3a
	sub e			;1b3b
	sub e			;1b3c
	sub e			;1b3d
	sub e			;1b3e
	sub e			;1b3f
	sub e			;1b40
	sub e			;1b41
	sub b			;1b42
	ld h,b			;1b43
	ld (hl),b		;1b44
l1b45h:
	add a,b			;1b45
	ex de,hl		;1b46
	ld b,00dh		;1b47
	ret p			;1b49
	ret m			;1b4a
	inc d			;1b4b
	jp (hl)			;1b4c
	ld a,(bc)		;1b4d
	jp pe,0d208h		;1b4e
l1b51h:
	defb 0edh ;next byte illegal after ed	;1b51
	add a,e			;1b52
	ld b,h			;1b53
	ld (hl),a		;1b54
	ld d,a			;1b55
	ld b,a			;1b56
	rlca			;1b57
	ret m			;1b58
	dec c			;1b59
	rst 28h			;1b5a
	ld bc,00ceah		;1b5b
	defb 0edh ;next byte illegal after ed	;1b5e
	add a,c			;1b5f
	add a,l			;1b60
	call nc,0d370h		;1b61
	ld (hl),d		;1b64
	call nc,07373h		;1b65
	ld (hl),e		;1b68
	ld (hl),b		;1b69
	ld (hl),d		;1b6a
	ld (hl),e		;1b6b
	ld (hl),e		;1b6c
	ld (hl),e		;1b6d
	ex de,hl		;1b6e
	ld (bc),a		;1b6f
	jr $-14			;1b70
	call m,04a02h		;1b72
	cp e			;1b75
	jp (hl)			;1b76
	ld a,(bc)		;1b77
	ret m			;1b78
	dec c			;1b79
	rst 28h			;1b7a
	ld bc,00ceah		;1b7b
	defb 0edh ;next byte illegal after ed	;1b7e
	add a,c			;1b7f
	add a,l			;1b80
	call nc,0eb51h		;1b81
	ex af,af'		;1b84
	inc bc			;1b85
	ld b,c			;1b86
	ex de,hl		;1b87
	ex af,af'		;1b88
	inc bc			;1b89
	ld sp,l08ebh		;1b8a
	inc bc			;1b8d
	ld hl,02121h		;1b8e
	ld hl,02121h		;1b91
	jr nz,l1bb6h		;1b94
	jr nc,l1bd8h		;1b96
	ld d,c			;1b98
	ex de,hl		;1b99
	ex af,af'		;1b9a
	inc bc			;1b9b
	ld b,c			;1b9c
l1b9dh:
	ex de,hl		;1b9d
	ex af,af'		;1b9e
	inc bc			;1b9f
	ld sp,l08ebh		;1ba0
	inc bc			;1ba3
	ld hl,02121h		;1ba4
	ld hl,02121h		;1ba7
	jr nz,l1bcch		;1baa
	sub b			;1bac
	jr nz,l1b9dh		;1bad
	jp pe,07b05h		;1baf
	ld a,a			;1bb2
	rst 38h			;1bb3
	cp 001h			;1bb4
l1bb6h:
	ret m			;1bb6
	ld (bc),a		;1bb7
	jp (hl)			;1bb8
	ld a,(bc)		;1bb9
	jp pe,0d108h		;1bba
	defb 0edh ;next byte illegal after ed	;1bbd
	add a,c			;1bbe
	dec (hl)		;1bbf
	pop af			;1bc0
	ld d,e			;1bc1
	di			;1bc2
	jr nz,l1c0ch		;1bc3
	ld (hl),a		;1bc5
	ld h,a			;1bc6
	ld d,a			;1bc7
	ex de,hl		;1bc8
	ld (bc),a		;1bc9
	ld b,0f8h		;1bca
l1bcch:
	inc d			;1bcc
	jp pe,0d309h		;1bcd
	ld (hl),b		;1bd0
	sub b			;1bd1
	or b			;1bd2
	jp nc,04700h		;1bd3
	ld (hl),e		;1bd6
	ld h,a			;1bd7
l1bd8h:
	ld d,d			;1bd8
	ld (hl),d		;1bd9
	ld d,c			;1bda
	ret m			;1bdb
	ld (bc),a		;1bdc
	jp pe,0d108h		;1bdd
	ld b,a			;1be0
	ld (hl),a		;1be1
	ld h,a			;1be2
	ld d,a			;1be3
	ex de,hl		;1be4
	ld (bc),a		;1be5
	dec de			;1be6
	jp p,l0df8h		;1be7
	jp (hl)			;1bea
	ld a,(bc)		;1beb
	jp pe,0d207h		;1bec
	defb 0edh ;next byte illegal after ed	;1bef
	add a,e			;1bf0
	ld sp,02747h		;1bf1
	rlca			;1bf4
	out (097h),a		;1bf5
	jp pe,0ed0ah		;1bf7
	add a,c			;1bfa
	dec (hl)		;1bfb
	jr nz,l1c6eh		;1bfc
	jp nc,0d300h		;1bfe
	ld (hl),b		;1c01
sub_1c02h:
	jp nc,05000h		;1c02
	nop			;1c05
	ld d,b			;1c06
	and b			;1c07
	ld d,b			;1c08
	and b			;1c09
	pop de			;1c0a
	ld (hl),h		;1c0b
l1c0ch:
	ret m			;1c0c
	dec d			;1c0d
	defb 0edh ;next byte illegal after ed	;1c0e
	add a,e			;1c0f
	ld d,c			;1c10
	jp pe,0d207h		;1c11
	ret nz			;1c14
	and d			;1c15
	sub e			;1c16
	ld (hl),d		;1c17
	pop de			;1c18
	inc b			;1c19
	ret m			;1c1a
	dec c			;1c1b
	out (0ebh),a		;1c1c
	ld (bc),a		;1c1e
	jr z,$-2		;1c1f
	ld (bc),a		;1c21
	ret pe			;1c22
	cp e			;1c23
	ret m			;1c24
	dec c			;1c25
	jp (hl)			;1c26
	ld a,(bc)		;1c27
	jp pe,0d309h		;1c28
	defb 0edh ;next byte illegal after ed	;1c2b
	add a,e			;1c2c
	ld d,c			;1c2d
	or a			;1c2e
	or d			;1c2f
	jp nc,02102h		;1c30
	out (0ebh),a		;1c33
	ld (bc),a		;1c35
	ex af,af'		;1c36
	and a			;1c37
	and d			;1c38
	jp nc,07122h		;1c39
	ld (hl),a		;1c3c
	ld h,a			;1c3d
	ld (0b2d3h),hl		;1c3e
	jp nc,02201h		;1c41
	ld (hl),d		;1c44
	ld hl,l02ebh		;1c45
	ld a,(bc)		;1c48
	ld (0a2d3h),hl		;1c49
	jp nc,07221h		;1c4c
	sub d			;1c4f
	ld (hl),c		;1c50
	ld (hl),a		;1c51
	ld h,a			;1c52
	ld d,a			;1c53
	ld b,a			;1c54
	dec hl			;1c55
	rst 38h			;1c56
	cp 001h			;1c57
	ret m			;1c59
	inc d			;1c5a
	jp (hl)			;1c5b
	ld a,(bc)		;1c5c
	jp pe,0d206h		;1c5d
	defb 0edh ;next byte illegal after ed	;1c60
	add a,c			;1c61
	ld (hl),l		;1c62
	ld (hl),a		;1c63
	pop de			;1c64
	rlca			;1c65
	jp nc,097b7h		;1c66
	ex de,hl		;1c69
	ld (bc),a		;1c6a
	ex af,af'		;1c6b
	ret m			;1c6c
	inc d			;1c6d
l1c6eh:
	rst 28h			;1c6e
	inc bc			;1c6f
	jp pe,0d308h		;1c70
	defb 0edh ;next byte illegal after ed	;1c73
	add a,c			;1c74
	inc sp			;1c75
	ld (hl),b		;1c76
	sub b			;1c77
	or b			;1c78
	jp nc,04700h		;1c79
	ld (hl),e		;1c7c
	ld h,a			;1c7d
	ld d,d			;1c7e
	ld (hl),d		;1c7f
	ld d,c			;1c80
	ret p			;1c81
	ret m			;1c82
	inc d			;1c83
	defb 0edh ;next byte illegal after ed	;1c84
	add a,c			;1c85
	ld (hl),l		;1c86
	jp pe,0d30bh		;1c87
	ld (hl),a		;1c8a
	jp nc,0d307h		;1c8b
	or a			;1c8e
	sub a			;1c8f
	ex de,hl		;1c90
	ld (bc),a		;1c91
	ld h,0f8h		;1c92
	ld a,(bc)		;1c94
	jp (hl)			;1c95
	ld a,(bc)		;1c96
	jp pe,0d206h		;1c97
	defb 0edh ;next byte illegal after ed	;1c9a
	adc a,a			;1c9b
	ld d,(hl)		;1c9c
	rst 28h			;1c9d
	ld bc,05347h		;1c9e
	ld d,b			;1ca1
	ld d,d			;1ca2
	ld b,a			;1ca3
	ld b,e			;1ca4
	ld b,b			;1ca5
	ld b,d			;1ca6
	ret m			;1ca7
	dec c			;1ca8
	jp pe,0d30ah		;1ca9
	defb 0edh ;next byte illegal after ed	;1cac
	add a,c			;1cad
	dec (hl)		;1cae
	jr nz,$+114		;1caf
	jp nc,0d300h		;1cb1
	ld (hl),b		;1cb4
	jp nc,05000h		;1cb5
	nop			;1cb8
	ld d,b			;1cb9
	and b			;1cba
	ld d,b			;1cbb
	and b			;1cbc
	pop de			;1cbd
	ld (hl),h		;1cbe
	ret p			;1cbf
	ret m			;1cc0
	dec d			;1cc1
	jp pe,0d207h		;1cc2
	defb 0edh ;next byte illegal after ed	;1cc5
	add a,e			;1cc6
	ld d,c			;1cc7
	ret nz			;1cc8
	ld (hl),d		;1cc9
	ld d,e			;1cca
	ld b,d			;1ccb
	ld (hl),h		;1ccc
	rst 28h			;1ccd
	ld bc,l02ebh		;1cce
	ld hl,(0fcf0h)		;1cd1
	ld (bc),a		;1cd4
	sub e			;1cd5
	cp h			;1cd6
	jp (hl)			;1cd7
	ld a,(bc)		;1cd8
	ret m			;1cd9
	dec c			;1cda
	jp pe,0d309h		;1cdb
	defb 0edh ;next byte illegal after ed	;1cde
	add a,e			;1cdf
	ld d,c			;1ce0
	ld (hl),a		;1ce1
	ld (hl),d		;1ce2
	sub d			;1ce3
	or c			;1ce4
	ex de,hl		;1ce5
	ld (bc),a		;1ce6
	ld b,077h		;1ce7
	ld (hl),d		;1ce9
	and d			;1cea
l1cebh:
	jp nc,02721h		;1ceb
	daa			;1cee
	out (0b2h),a		;1cef
	ld (hl),d		;1cf1
	sub c			;1cf2
	or d			;1cf3
	jp nc,0d322h		;1cf4
	or c			;1cf7
	ex de,hl		;1cf8
	ld (bc),a		;1cf9
	dec bc			;1cfa
	and d			;1cfb
	ld (hl),d		;1cfc
	and c			;1cfd
	jp nc,02222h		;1cfe
	ld hl,02727h		;1d01
	rlca			;1d04
	rlca			;1d05
	out (0bbh),a		;1d06
	rst 38h			;1d08
	cp 001h			;1d09
	ret m			;1d0b
	ld a,(bc)		;1d0c
	jp (hl)			;1d0d
	ld a,(bc)		;1d0e
	jp pe,0d20ah		;1d0f
	defb 0edh ;next byte illegal after ed	;1d12
	add a,c			;1d13
	ld (hl),l		;1d14
	rlca			;1d15
	ld b,a			;1d16
	scf			;1d17
	daa			;1d18
	ex de,hl		;1d19
	ld b,006h		;1d1a
	ret m			;1d1c
	ld a,(bc)		;1d1d
	jp (hl)			;1d1e
	ld a,(bc)		;1d1f
	jp pe,0d206h		;1d20
	defb 0edh ;next byte illegal after ed	;1d23
	adc a,a			;1d24
	ld d,(hl)		;1d25
	rst 28h			;1d26
	ld bc,l0307h		;1d27
	nop			;1d2a
	ld (bc),a		;1d2b
	rlca			;1d2c
	inc bc			;1d2d
	nop			;1d2e
	ld (bc),a		;1d2f
	ret p			;1d30
	jp pe,0ed0ah		;1d31
	add a,c			;1d34
	ld (hl),l		;1d35
	ret nz			;1d36
	and d			;1d37
	sub e			;1d38
	ld (hl),d		;1d39
	ld b,l			;1d3a
	and d			;1d3b
	sub e			;1d3c
	ld (hl),d		;1d3d
	pop de			;1d3e
	inc b			;1d3f
	jp nc,l02ebh		;1d40
	ld (de),a		;1d43
	call m,sub_1c02h	;1d44
	cp l			;1d47
	jp (hl)			;1d48
	ld a,(bc)		;1d49
	jp nc,l0af8h		;1d4a
	rst 28h			;1d4d
	ld bc,007eah		;1d4e
	defb 0edh ;next byte illegal after ed	;1d51
	adc a,a			;1d52
	ld d,(hl)		;1d53
	daa			;1d54
	out (0b2h),a		;1d55
	jp nc,02102h		;1d57
	ex de,hl		;1d5a
	ld (bc),a		;1d5b
	ex af,af'		;1d5c
	daa			;1d5d
	out (0a2h),a		;1d5e
	jp nc,07122h		;1d60
	ld (hl),a		;1d63
	ld h,a			;1d64
	ld (0b2d3h),hl		;1d65
	jp nc,02201h		;1d68
	ld (hl),d		;1d6b
	ld hl,l02ebh		;1d6c
	ld a,(bc)		;1d6f
	ld (0a2d3h),hl		;1d70
	jp nc,07221h		;1d73
	sub d			;1d76
	ld (hl),c		;1d77
	ld (hl),a		;1d78
	ld h,a			;1d79
	ld d,a			;1d7a
	ld b,a			;1d7b
	dec hl			;1d7c
	rst 38h			;1d7d
	cp 001h			;1d7e
	ret m			;1d80
	ld a,(bc)		;1d81
	jp (hl)			;1d82
	ld a,(bc)		;1d83
	jp pe,0d20ah		;1d84
	defb 0edh ;next byte illegal after ed	;1d87
	add a,c			;1d88
	ld (hl),l		;1d89
	ld b,a			;1d8a
	ld (hl),a		;1d8b
	ld h,a			;1d8c
	ld d,a			;1d8d
	ex de,hl		;1d8e
	ld b,006h		;1d8f
	ret m			;1d91
	ld a,(bc)		;1d92
	jp (hl)			;1d93
	ld a,(bc)		;1d94
	jp pe,0d305h		;1d95
	defb 0edh ;next byte illegal after ed	;1d98
	adc a,a			;1d99
	ld d,(hl)		;1d9a
	rst 28h			;1d9b
	ld bc,09397h		;1d9c
	sub b			;1d9f
	sub d			;1da0
	sub a			;1da1
	sub e			;1da2
	sub b			;1da3
	sub d			;1da4
	ret p			;1da5
	jp pe,0d20ah		;1da6
	defb 0edh ;next byte illegal after ed	;1da9
	add a,c			;1daa
	ld (hl),l		;1dab
	ret nz			;1dac
	ld (hl),d		;1dad
	ld d,e			;1dae
	ld b,d			;1daf
	dec b			;1db0
	ld (hl),d		;1db1
	ld d,e			;1db2
	ld b,d			;1db3
	ld (hl),h		;1db4
	ex de,hl		;1db5
	ld (bc),a		;1db6
	ld de,sub_02fch		;1db7
	sub c			;1dba
	cp l			;1dbb
	ret m			;1dbc
	ld a,(bc)		;1dbd
	jp (hl)			;1dbe
	ld a,(bc)		;1dbf
	rst 28h			;1dc0
	ld bc,007eah		;1dc1
	defb 0edh ;next byte illegal after ed	;1dc4
	adc a,a			;1dc5
	ld d,(hl)		;1dc6
	pop de			;1dc7
	daa			;1dc8
	jp nc,0d1b2h		;1dc9
	ld (bc),a		;1dcc
	ld hl,l02ebh		;1dcd
	ex af,af'		;1dd0
	daa			;1dd1
	jp nc,0d1a2h		;1dd2
	ld (07771h),hl		;1dd5
	ld h,a			;1dd8
	ld (0b2d2h),hl		;1dd9
	pop de			;1ddc
	ld bc,07222h		;1ddd
	ld hl,l02ebh		;1de0
	ld a,(bc)		;1de3
l1de4h:
	ld (0a2d2h),hl		;1de4
	pop de			;1de7
	ld hl,09272h		;1de8
	ld (hl),c		;1deb
	ld (hl),a		;1dec
	ld h,a			;1ded
	ld d,a			;1dee
	ld b,a			;1def
	dec hl			;1df0
	rst 38h			;1df1
	jp nc,0d340h		;1df2
	or b			;1df5
	jp nc,06040h		;1df6
	out (0b0h),a		;1df9
	jp nc,0d160h		;1dfb
	ld b,b			;1dfe
	jp nc,0d1b0h		;1dff
	ld b,b			;1e02
	ld h,b			;1e03
	jp nc,0d1b0h		;1e04
	ld h,b			;1e07
	jp nc,0d1b0h		;1e08
	ld b,b			;1e0b
	ld h,b			;1e0c
	or b			;1e0d
	jp m,l05eah		;1e0e
	jp nc,0d1b0h		;1e11
	ld b,b			;1e14
	ld h,b			;1e15
	or b			;1e16
	jp pe,0d202h		;1e17
	or b			;1e1a
	pop de			;1e1b
	ld b,b			;1e1c
	ld h,b			;1e1d
	or c			;1e1e
	ret p			;1e1f
	jp m,l06e9h		;1e20
	jp pe,0d20bh		;1e23
	defb 0edh ;next byte illegal after ed	;1e26
	add a,c			;1e27
	ld (hl),e		;1e28
	ld d,l			;1e29
	dec b			;1e2a
	ld d,l			;1e2b
	and l			;1e2c
	pop de			;1e2d
	dec (hl)		;1e2e
	defb 0edh ;next byte illegal after ed	;1e2f
	add a,c			;1e30
	ld d,e			;1e31
	adc a,e			;1e32
	jp m,055a5h		;1e33
	and l			;1e36
	pop de			;1e37
	dec (hl)		;1e38
	add a,l			;1e39
	ret nc			;1e3a
	defb 0edh ;next byte illegal after ed	;1e3b
	add a,c			;1e3c
	ld d,a			;1e3d
	jp m,l02feh		;1e3e
	ret po			;1e41
	ld l,l			;1e42
	ld sp,hl		;1e43
	and (hl)		;1e44
	cp (hl)			;1e45
	cp 002h			;1e46
	ex (sp),hl		;1e48
	ld bc,l1fe4h		;1e49
	and d			;1e4c
	nop			;1e4d
	and d			;1e4e
	ld d,b			;1e4f
	and d			;1e50
	and b			;1e51
	and e			;1e52
	nop			;1e53
	and h			;1e54
	nop			;1e55
	and l			;1e56
	nop			;1e57
	and (hl)		;1e58
	nop			;1e59
	xor b			;1e5a
	nop			;1e5b
	pop hl			;1e5c
	ld bc,l1de4h		;1e5d
	ld a,(bc)		;1e60
	call po,00a1ah		;1e61
	call po,00a17h		;1e64
	call po,00a13h		;1e67
	call po,sub_0a10h	;1e6a
	call po,sub_0a0ch	;1e6d
	call po,00a09h		;1e70
	call po,00a06h		;1e73
	call po,sub_0a03h	;1e76
	call po,sub_0a01h	;1e79
	pop hl			;1e7c
	rlca			;1e7d
	call po,sub_0904h	;1e7e
	call po,00807h		;1e81
	call po,sub_060bh	;1e84
	call po,sub_040eh	;1e87
	call po,sub_0210h	;1e8a
	ld bc,0feffh		;1e8d
	ld (bc),a		;1e90
	ret po			;1e91
	ld l,h			;1e92
	ld sp,hl		;1e93
	and (hl)		;1e94
	cp (hl)			;1e95
	cp 002h			;1e96
	jp po,0f901h		;1e98
	exx			;1e9b
	cp (hl)			;1e9c
	rst 10h			;1e9d
	ld sp,hl		;1e9e
	exx			;1e9f
	cp (hl)			;1ea0
	exx			;1ea1
	ld sp,hl		;1ea2
	exx			;1ea3
	cp (hl)			;1ea4
	rst 38h			;1ea5
	cp 001h			;1ea6
	jp (hl)			;1ea8
l1ea9h:
	ld (bc),a		;1ea9
	jp pe,0d408h		;1eaa
	and b			;1ead
	or b			;1eae
	out (000h),a		;1eaf
	djnz l1ed3h		;1eb1
	ex de,hl		;1eb3
	ld (bc),a		;1eb4
	add hl,bc		;1eb5
	call nc,0d3b0h		;1eb6
	nop			;1eb9
	djnz $+34		;1eba
	jr nc,l1ea9h		;1ebc
	ld (bc),a		;1ebe
	add hl,bc		;1ebf
	nop			;1ec0
	djnz l1ee3h		;1ec1
	jr nc,l1f05h		;1ec3
	ex de,hl		;1ec5
	ld (bc),a		;1ec6
	rlca			;1ec7
	djnz l1eeah		;1ec8
	jr nc,$+66		;1eca
	ld d,b			;1ecc
	ex de,hl		;1ecd
	ld (bc),a		;1ece
	rlca			;1ecf
	jr nz,l1f02h		;1ed0
	ld b,b			;1ed2
l1ed3h:
	ld d,b			;1ed3
	ld h,b			;1ed4
	ex de,hl		;1ed5
	ld (bc),a		;1ed6
	rlca			;1ed7
	jp m,000c3h		;1ed8
	jp 0c450h		;1edb
	nop			;1ede
	call nz,0c580h		;1edf
	nop			;1ee2
l1ee3h:
	rst 30h			;1ee3
	add a,0c8h		;1ee4
	ret			;1ee6
	or 0ebh			;1ee7
	ld (bc),a		;1ee9
l1eeah:
	ld de,0fefah		;1eea
	ld bc,l04e9h		;1eed
	jp pe,0f90ah		;1ef0
	jp p,0eabdh		;1ef3
	rlca			;1ef6
	jp nc,0d1b0h		;1ef7
	ld b,b			;1efa
	ld h,b			;1efb
	or b			;1efc
	jp pe,0d205h		;1efd
	or b			;1f00
	pop de			;1f01
l1f02h:
	ld b,b			;1f02
	ld h,b			;1f03
	or c			;1f04
l1f05h:
	jp (hl)			;1f05
	inc bc			;1f06
	jp pe,0d50bh		;1f07
	defb 0edh ;next byte illegal after ed	;1f0a
	ld bc,0d524h		;1f0b
	ld bc,l01d3h+1		;1f0e
	ex de,hl		;1f11
	rrca			;1f12
	ld b,0d5h		;1f13
	ld bc,l06e9h		;1f15
	defb 0edh ;next byte illegal after ed	;1f18
	ld bc,00a35h		;1f19
	rst 38h			;1f1c
	cp 001h			;1f1d
	jp (hl)			;1f1f
	inc b			;1f20
	jp pe,0d10ah		;1f21
	ret m			;1f24
	dec b			;1f25
	ld b,b			;1f26
	jr nc,$+34		;1f27
	djnz l1f2bh		;1f29
l1f2bh:
	jp nc,0a0b0h		;1f2b
	sub b			;1f2e
	add a,b			;1f2f
	ld (hl),b		;1f30
	ld h,b			;1f31
	ld d,b			;1f32
	ld b,e			;1f33
	jp pe,04308h		;1f34
	jp pe,04206h		;1f37
	jp pe,04104h		;1f3a
	ret m			;1f3d
	dec c			;1f3e
	jp (hl)			;1f3f
	inc bc			;1f40
	jp pe,0ed0fh		;1f41
	ld bc,0d464h		;1f44
	ld bc,l01d3h		;1f47
	ex de,hl		;1f4a
	rrca			;1f4b
	ld b,0d4h		;1f4c
	ld bc,l06e9h		;1f4e
	defb 0edh ;next byte illegal after ed	;1f51
	ld bc,00a35h		;1f52
	rst 38h			;1f55
	cp 001h			;1f56
	jp (hl)			;1f58
	inc b			;1f59
	jp pe,0d207h		;1f5a
	ret m			;1f5d
	dec b			;1f5e
	or b			;1f5f
	and b			;1f60
	sub b			;1f61
	add a,b			;1f62
	ld (hl),b		;1f63
	ld h,b			;1f64
	ld d,b			;1f65
	ld b,b			;1f66
	jr nc,$+34		;1f67
	djnz l1f6bh		;1f69
l1f6bh:
	out (0b3h),a		;1f6b
	jp pe,0b308h		;1f6d
	jp pe,0b206h		;1f70
	jp pe,0b104h		;1f73
	ret m			;1f76
	inc de			;1f77
	rst 28h			;1f78
	ld bc,021f9h		;1f79
	cp (hl)			;1f7c
	ret p			;1f7d
	rst 38h			;1f7e
	cp 001h			;1f7f
	jp (hl)			;1f81
	dec b			;1f82
	jp pe,0d40ah		;1f83
	ret m			;1f86
	dec c			;1f87
	ld hl,02145h		;1f88
	ld b,c			;1f8b
	jp pe,04109h		;1f8c
	jp pe,04108h		;1f8f
	jp pe,04107h		;1f92
	jp pe,04106h		;1f95
	ret m			;1f98
	inc de			;1f99
	jp (hl)			;1f9a
	ld b,0eah		;1f9b
	add hl,bc		;1f9d
	jp nc,081edh		;1f9e
	ld (hl),e		;1fa1
	and c			;1fa2
	ld sp,hl		;1fa3
	inc (hl)		;1fa4
	cp (hl)			;1fa5
	add hl,de		;1fa6
	ret p			;1fa7
	rst 38h			;1fa8
	rst 28h			;1fa9
	ld bc,l0ff8h		;1faa
	cp 001h			;1fad
	jp (hl)			;1faf
	inc b			;1fb0
	jp pe,0f907h		;1fb1
	jp p,0f9bdh		;1fb4
	rrca			;1fb7
	cp (hl)			;1fb8
	ret m			;1fb9
	inc de			;1fba
	jp (hl)			;1fbb
	ld b,0eah		;1fbc
	dec bc			;1fbe
	jp nc,081edh		;1fbf
	ld (hl),e		;1fc2
	ld sp,hl		;1fc3
	inc (hl)		;1fc4
	cp (hl)			;1fc5
	dec de			;1fc6
	rst 38h			;1fc7
	rst 28h			;1fc8
	ld (bc),a		;1fc9
	ret m			;1fca
	rrca			;1fcb
	cp 001h			;1fcc
	jp (hl)			;1fce
	inc b			;1fcf
	jp pe,0f907h		;1fd0
	jp p,0f9bdh		;1fd3
	rrca			;1fd6
	cp (hl)			;1fd7
	ret m			;1fd8
	inc de			;1fd9
	ld sp,hl		;1fda
	ld hl,0ffbeh		;1fdb
	nop			;1fde
	nop			;1fdf
	nop			;1fe0
	nop			;1fe1
	inc hl			;1fe2
	dec b			;1fe3
l1fe4h:
	inc (hl)		;1fe4
	ld b,015h		;1fe5
	ld (bc),a		;1fe7
	ld h,003h		;1fe8
	ld d,c			;1fea
	ld (bc),a		;1feb
	scf			;1fec
	dec b			;1fed
	ld h,d			;1fee
	inc bc			;1fef
	ld (hl),d		;1ff0
	inc b			;1ff1
	ld (hl),d		;1ff2
	ld b,074h		;1ff3
	rlca			;1ff5
	ld (de),a		;1ff6
	inc b			;1ff7
	ld d,h			;1ff8
	ld (bc),a		;1ff9
	ld d,l			;1ffa
	dec b			;1ffb
	ld (hl),a		;1ffc
	rlca			;1ffd
	rst 38h			;1ffe
	rst 38h			;1fff
