; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank11.asm /tmp/smanbow2_bank_11.bin

	org 04000h

l4000h:
	adc a,l			;4000
	ld b,a			;4001
	nop			;4002
	nop			;4003
	nop			;4004
	jp l4bf3h		;4005
	inc b			;4008
	ex af,af'		;4009
	ex af,af'		;400a
	inc b			;400b
	inc b			;400c
	ld bc,00303h		;400d
	rlca			;4010
l4011h:
	nop			;4011
	jp m,00001h		;4012
	nop			;4015
	inc c			;4016
	ex af,af'		;4017
	inc c			;4018
	nop			;4019
	nop			;401a
	ld (bc),a		;401b
	ret nz			;401c
	ret nz			;401d
	ret z			;401e
	jp nz,03cf8h		;401f
	rlca			;4022
	jr nc,$+98		;4023
	nop			;4025
	inc bc			;4026
	ld h,b			;4027
	jr l404ah		;4028
	inc e			;402a
	ld c,015h		;402b
	ld e,020h		;402d
	rra			;402f
	rla			;4030
	ld b,003h		;4031
	rrca			;4033
	ld c,01ch		;4034
	jr l4057h		;4036
	ret nz			;4038
	nop			;4039
	ret po			;403a
	ret p			;403b
	call p,00fdeh		;403c
sub_403fh:
	scf			;403f
	rst 38h			;4040
	ret m			;4041
	ld a,(bc)		;4042
	ld b,b			;4043
	sub b			;4044
	dec b			;4045
	nop			;4046
	defb 0fdh,001h,04eh ;illegal sequence	;4047
l404ah:
	rlca			;404a
	inc c			;404b
	djnz l406dh		;404c
	ld h,b			;404e
	ccf			;404f
	jp p,03ffch		;4050
	cp 01eh			;4053
	cp (hl)			;4055
	ret nz			;4056
l4057h:
	nop			;4057
	ld b,b			;4058
	ld (bc),a		;4059
	djnz l409bh		;405a
	rra			;405c
	ld e,h			;405d
	rlca			;405e
	ld bc,0381ch		;405f
	jr nc,l4064h		;4062
l4064h:
	nop			;4064
	ld (0f6d8h),hl		;4065
	ld (iy+078h),e		;4068
	inc b			;406b
	ccf			;406c
l406dh:
	ld b,c			;406d
	dec sp			;406e
	ld bc,000f2h		;406f
	ld (bc),a		;4072
	rrca			;4073
	halt			;4074
	ccf			;4075
	call pe,0e251h		;4076
	ld h,c			;4079
	add a,b			;407a
	ld (hl),d		;407b
	ccf			;407c
	ld (hl),b		;407d
	ret nc			;407e
	ccf			;407f
	jr $+65			;4080
	jr c,l4098h		;4082
	ld e,00fh		;4084
l4086h:
	rlca			;4086
	inc c			;4087
	ccf			;4088
	ld bc,l7c40h		;4089
	ld a,(hl)		;408c
	rra			;408d
	add a,b			;408e
	ld d,008h		;408f
	ld a,0ffh		;4091
	nop			;4093
l4094h:
	call po,05a00h		;4094
	rra			;4097
l4098h:
	nop			;4098
	rst 38h			;4099
	inc bc			;409a
l409bh:
	add hl,bc		;409b
	ld a,h			;409c
	add hl,bc		;409d
	inc bc			;409e
	rst 38h			;409f
	rra			;40a0
	or b			;40a1
	ld h,h			;40a2
	jr nc,l40f5h		;40a3
	cp b			;40a5
	nop			;40a6
	call nc,0d8dah		;40a7
	djnz l4094h		;40aa
l40ach:
	djnz l4086h		;40ac
	jp c,0d41ch		;40ae
	cp b			;40b1
	ld d,b			;40b2
	ld c,e			;40b3
	daa			;40b4
	inc bc			;40b5
	jr nz,l40f4h		;40b6
	dec e			;40b8
	ld a,d			;40b9
	nop			;40ba
	ret nc			;40bb
	nop			;40bc
	ret pe			;40bd
	ld d,0e8h		;40be
	jr l40ach		;40c0
	call nc,0d0e8h		;40c2
	jp pe,0000fh		;40c5
	inc bc			;40c8
	rlca			;40c9
	ld a,a			;40ca
	rst 38h			;40cb
	ld a,a			;40cc
	rrca			;40cd
	inc bc			;40ce
	ld c,0c0h		;40cf
	and b			;40d1
	xor b			;40d2
	daa			;40d3
	call nc,01ed6h		;40d4
	ret po			;40d7
	ld c,07ch		;40d8
l40dah:
	ld h,c			;40da
	inc sp			;40db
	inc a			;40dc
	ld b,b			;40dd
	rrca			;40de
sub_40dfh:
	and (hl)		;40df
	ld d,b			;40e0
	ld e,033h		;40e1
	jr l4128h		;40e3
	ld e,l			;40e5
	sbc a,(hl)		;40e6
	nop			;40e7
	add hl,de		;40e8
	inc a			;40e9
	nop			;40ea
	dec c			;40eb
	ex (sp),hl		;40ec
	rrca			;40ed
	ret pe			;40ee
	ld bc,000e3h		;40ef
	rlca			;40f2
	push bc			;40f3
l40f4h:
	add a,b			;40f4
l40f5h:
	nop			;40f5
	rst 0			;40f6
	rlca			;40f7
	adc a,a			;40f8
	ccf			;40f9
	rst 18h			;40fa
	nop			;40fb
	ret m			;40fc
	jr nz,l412fh		;40fd
	inc e			;40ff
	dec b			;4100
	dec d			;4101
	dec (hl)		;4102
	ld (de),a		;4103
	dec d			;4104
	dec b			;4105
	inc e			;4106
	cp e			;4107
	call c,0a0dfh		;4108
	ret p			;410b
	call m,sub_7bf0h	;410c
	ret nz			;410f
	dec h			;4110
	nop			;4111
	ld (bc),a		;4112
	ld e,c			;4113
	sub e			;4114
	or (hl)			;4115
	rst 8			;4116
	ld h,c			;4117
	ex af,af'		;4118
	pop af			;4119
	djnz l412ah		;411a
	ld b,b			;411c
	ld a,(0ec57h)		;411d
	ld a,a			;4120
	jp 0f060h		;4121
	ret p			;4124
	ld h,b			;4125
	ld e,(hl)		;4126
	rst 20h			;4127
l4128h:
	and d			;4128
	sub (hl)		;4129
l412ah:
	sub l			;412a
	add a,(hl)		;412b
	jr nc,l412eh		;412c
l412eh:
	ld c,l			;412e
l412fh:
	and (hl)		;412f
	and d			;4130
	inc l			;4131
	jp 0385ch		;4132
	jr l4143h		;4135
	nop			;4137
	ld c,018h		;4138
	jr c,l419fh		;413a
	ld b,b			;413c
	inc bc			;413d
	inc c			;413e
	inc de			;413f
	rla			;4140
	ld l,02ch		;4141
l4143h:
	rlca			;4143
	inc l			;4144
	ld l,017h		;4145
	inc de			;4147
	inc c			;4148
	rra			;4149
	jr nz,$+50		;414a
	ret z			;414c
	ret pe			;414d
	ld (hl),h		;414e
	inc (hl)		;414f
l4150h:
	ld b,034h		;4150
	ld (hl),h		;4152
	ret pe			;4153
	ret z			;4154
	jr nc,$+33		;4155
	ret			;4157
	ld a,01eh		;4158
	push de			;415a
	sub h			;415b
	ld (hl),b		;415c
	and l			;415d
	ld b,070h		;415e
	jr nc,l419ah		;4160
	ld e,040h		;4162
	ret nz			;4164
	ld a,078h		;4165
	inc e			;4167
	inc c			;4168
	ld c,006h		;4169
	ld c,h			;416b
	ld b,0f3h		;416c
	inc e			;416e
	ld l,h			;416f
	ld a,b			;4170
	ld b,b			;4171
	ld a,011h		;4172
l4174h:
	nop			;4174
	ld h,028h		;4175
	ld c,b			;4177
	ld d,b			;4178
	ld d,b			;4179
	ld c,b			;417a
	jr z,$+40		;417b
	ld l,h			;417d
	ld de,03e40h		;417e
	adc a,b			;4181
	nop			;4182
	ld h,h			;4183
	inc d			;4184
	ld (de),a		;4185
	ld a,(bc)		;4186
	ld a,(bc)		;4187
	ld (de),a		;4188
	inc d			;4189
	ld h,h			;418a
l418bh:
	ld h,l			;418b
	adc a,b			;418c
	ld b,b			;418d
	push bc			;418e
	dec d			;418f
	sbc a,h			;4190
	inc c			;4191
	jr nz,l41f4h		;4192
	ret nz			;4194
	nop			;4195
	nop			;4196
	ld h,b			;4197
	jr nz,l419ah		;4198
l419ah:
	inc c			;419a
	rlca			;419b
	inc bc			;419c
	ret nz			;419d
	ret po			;419e
l419fh:
	ld d,b			;419f
l41a0h:
	jr nc,l4174h		;41a0
	ld b,061h		;41a2
	inc bc			;41a4
	nop			;41a5
	ld b,004h		;41a6
	ld sp,hl		;41a8
	djnz l418bh		;41a9
	ret nz			;41ab
	inc bc			;41ac
	ld b,(hl)		;41ad
	inc b			;41ae
	jp z,0cacah		;41af
	xor c			;41b2
	ld b,b			;41b3
	call pe,01f6ah		;41b4
	dec h			;41b7
	ex de,hl		;41b8
	ld (055eah),a		;41b9
	ld (bc),a		;41bc
	ex af,af'		;41bd
	adc a,e			;41be
	jr nz,l4201h		;41bf
	ld b,06bh		;41c1
	cp b			;41c3
	inc de			;41c4
	ld b,080h		;41c5
	ld d,d			;41c7
	ld (0c9ffh),a		;41c8
	ld b,b			;41cb
	jr nc,$+82		;41cc
	ld hl,(08880h)		;41ce
	and l			;41d1
	ld d,c			;41d2
	cp 087h			;41d3
	dec b			;41d5
	rra			;41d6
	ld (de),a		;41d7
	sub a			;41d8
	ld d,l			;41d9
	cpl			;41da
	and (hl)		;41db
	inc l			;41dc
	ld (bc),a		;41dd
	jr c,$+78		;41de
	ld (bc),a		;41e0
	jr nz,l422bh		;41e1
	djnz $+18		;41e3
	ld h,h			;41e5
	ld b,b			;41e6
	ld c,b			;41e7
	ld e,e			;41e8
	jr nz,l423ch		;41e9
	jr nz,l4237h		;41eb
	and c			;41ed
	inc bc			;41ee
	ld (bc),a		;41ef
	ld a,(de)		;41f0
	nop			;41f1
	ld a,09ch		;41f2
l41f4h:
	ld hl,(08038h)		;41f4
	cpl			;41f7
	ld d,c			;41f8
	ld h,b			;41f9
	rlca			;41fa
	sub e			;41fb
	sub d			;41fc
	cp a			;41fd
	adc a,035h		;41fe
	inc l			;4200
l4201h:
	ld hl,03e1eh		;4201
	in a,(05fh)		;4204
	scf			;4206
	ld d,(hl)		;4207
	ld c,d			;4208
	djnz l420bh		;4209
l420bh:
	ld h,(hl)		;420b
	ld b,b			;420c
	adc a,h			;420d
	sbc a,b			;420e
	inc h			;420f
	ld bc,0bc06h		;4210
	ld a,(bc)		;4213
	ld h,b			;4214
	ld h,e			;4215
	ld a,a			;4216
	inc e			;4217
	xor h			;4218
	nop			;4219
	and d			;421a
	ld b,c			;421b
	inc bc			;421c
	ld c,01dh		;421d
	ld c,011h		;421f
	ret po			;4221
	djnz $+14		;4222
	cp l			;4224
	nop			;4225
	rst 20h			;4226
	rst 38h			;4227
	inc c			;4228
	push bc			;4229
	ld (bc),a		;422a
l422bh:
	ld a,0d4h		;422b
	ld d,h			;422d
	ld h,b			;422e
	ld e,0ddh		;422f
	jp nz,0003fh		;4231
	ld c,b			;4234
	nop			;4235
	ld l,h			;4236
l4237h:
	ld b,c			;4237
	and c			;4238
	push bc			;4239
	ld c,0fah		;423a
l423ch:
	xor b			;423c
	call m,0fefeh		;423d
	rlca			;4240
	ld a,0c0h		;4241
	ld (bc),a		;4243
	ret nz			;4244
	call po,00448h		;4245
	rlca			;4248
	ex af,af'		;4249
	ld a,0c0h		;424a
	adc a,e			;424c
	cpl			;424d
	jr nc,$-91		;424e
	sub c			;4250
	inc c			;4251
	dec hl			;4252
	ld b,068h		;4253
	ld e,c			;4255
	add a,b			;4256
	xor 040h		;4257
	nop			;4259
	add a,0feh		;425a
	jr c,l4268h		;425c
	nop			;425e
	ld b,l			;425f
	add a,d			;4260
	ex af,af'		;4261
	ret nz			;4262
	ld (hl),b		;4263
	cp b			;4264
	ld (hl),b		;4265
	jr nz,l4277h		;4266
l4268h:
	ccf			;4268
	ld bc,07f7fh		;4269
	ld a,h			;426c
	inc bc			;426d
	ld b,b			;426e
l426fh:
	inc bc			;426f
l4270h:
	daa			;4270
	push hl			;4271
	ld h,h			;4272
	and b			;4273
	ld l,b			;4274
	add a,b			;4275
	ret po			;4276
l4277h:
	ret m			;4277
	ld c,b			;4278
	call m,00000h		;4279
	adc a,h			;427c
	sub c			;427d
	add a,d			;427e
	and c			;427f
	sub l			;4280
	ld e,043h		;4281
	and 018h		;4283
	and b			;4285
	nop			;4286
	and b			;4287
	and h			;4288
	call pe,0cb09h		;4289
	ld l,e			;428c
	inc sp			;428d
	add hl,de		;428e
	cp h			;428f
	adc a,c			;4290
	add a,b			;4291
	ld h,h			;4292
	add a,c			;4293
	add a,c			;4294
	add a,l			;4295
	add a,l			;4296
	dec h			;4297
	scf			;4298
	ld bc,0d390h		;4299
	ld d,(hl)		;429c
	ld c,h			;429d
l429eh:
	sbc a,b			;429e
	and b			;429f
	jr nz,l429eh		;42a0
	ld a,(00172h)		;42a2
	ld d,(hl)		;42a5
	ld d,(hl)		;42a6
	ld c,d			;42a7
	ld bc,023e1h		;42a8
	inc bc			;42ab
	push hl			;42ac
	ld (hl),l		;42ad
	sbc a,(hl)		;42ae
	jr nc,l42b7h		;42af
	ld bc,l6a4eh		;42b1
	ld l,d			;42b4
	ld d,d			;42b5
	add a,b			;42b6
l42b7h:
	add a,a			;42b7
	call nz,011deh		;42b8
	and b			;42bb
	djnz l4305h		;42bc
	ld c,h			;42be
	rst 20h			;42bf
	ex af,af'		;42c0
	sbc a,b			;42c1
	ld sp,hl		;42c2
l42c3h:
	jr z,l42d5h		;42c3
	ld e,h			;42c5
	add hl,sp		;42c6
	defb 0ddh,014h,029h ;illegal sequence	;42c7
	ex af,af'		;42ca
	ld (0c71fh),hl		;42cb
l42ceh:
	sbc a,b			;42ce
	ld a,b			;42cf
	ld bc,00034h		;42d0
	ex af,af'		;42d3
	cp h			;42d4
l42d5h:
	jr nc,$-106		;42d5
	inc l			;42d7
	djnz $+68		;42d8
	djnz $+36		;42da
	add a,b			;42dc
	ld (bc),a		;42dd
	ld c,a			;42de
	djnz $+5		;42df
	or 040h			;42e1
	jr nc,l4307h		;42e3
	djnz l42f0h		;42e5
	ld e,l			;42e7
	ld de,0c286h		;42e8
	inc d			;42eb
	res 6,b			;42ec
	ld c,b			;42ee
	adc a,d			;42ef
l42f0h:
	call po,0e0f6h		;42f0
	and b			;42f3
	add a,h			;42f4
	add a,b			;42f5
	sub h			;42f6
	jp 00e4ch		;42f7
	ld e,001h		;42fa
	ld hl,03d2ah		;42fc
	inc c			;42ff
	add hl,hl		;4300
	inc (hl)		;4301
	dec h			;4302
	ld b,d			;4303
	ld b,h			;4304
l4305h:
	jr nz,l42ceh		;4305
l4307h:
	ld a,(bc)		;4307
	djnz l42c3h		;4308
	dec h			;430a
	ld c,d			;430b
	sbc a,h			;430c
	ld a,(02454h)		;430d
	ld b,h			;4310
	ld e,a			;4311
	nop			;4312
	xor e			;4313
	xor d			;4314
	ld (de),a		;4315
	call po,02020h		;4316
	djnz $+7		;4319
	ld hl,00127h		;431b
	add hl,hl		;431e
	jp z,0c044h		;431f
	ex af,af'		;4322
	ret nz			;4323
	or (hl)			;4324
	ret nz			;4325
	inc c			;4326
	ld b,h			;4327
	ex af,af'		;4328
	sub b			;4329
	adc a,b			;432a
	ld (090c0h),hl		;432b
	cp (hl)			;432e
	ld b,b			;432f
	ex af,af'		;4330
	inc l			;4331
	add hl,de		;4332
	ld e,h			;4333
	ld c,(hl)		;4334
	ld l,h			;4335
	jr nc,l4338h		;4336
l4338h:
	add hl,sp		;4338
	ld c,b			;4339
	add hl,hl		;433a
	ld (hl),h		;433b
	jr nz,l4340h		;433c
	jr nz,l4341h		;433e
l4340h:
	xor d			;4340
l4341h:
	inc a			;4341
	adc a,l			;4342
	nop			;4343
	ld a,(03672h)		;4344
	inc c			;4347
	sbc a,h			;4348
	ld (de),a		;4349
	sub h			;434a
	ld l,027h		;434b
	inc b			;434d
	ld b,b			;434e
	call m,07f20h		;434f
	add hl,hl		;4352
	ld bc,l4912h		;4353
l4356h:
	add hl,bc		;4356
	ld d,b			;4357
	ld (l4150h),hl		;4358
	rst 18h			;435b
	ld de,0ff21h		;435c
	and h			;435f
	ret nz			;4360
	inc d			;4361
	inc (hl)		;4362
	sub d			;4363
l4364h:
	add hl,bc		;4364
	ld a,(bc)		;4365
	ld b,h			;4366
	ld a,(bc)		;4367
	add a,d			;4368
	sbc a,a			;4369
	inc de			;436a
	add a,h			;436b
	xor h			;436c
	call z,0b0e3h		;436d
	ld a,(hl)		;4370
	ld b,h			;4371
	ld a,b			;4372
	rlca			;4373
	ld c,d			;4374
	sub d			;4375
	defb 0edh ;next byte illegal after ed	;4376
	call nz,0321ch		;4377
	rst 8			;437a
	adc a,c			;437b
	add a,092h		;437c
	jr z,$-41		;437e
	and d			;4380
	rst 0			;4381
	rst 38h			;4382
	call c,02378h		;4383
	inc b			;4386
	inc a			;4387
	ld c,d			;4388
	or l			;4389
	ld l,l			;438a
	sbc a,d			;438b
	rst 8			;438c
	ld e,c			;438d
	rlc c			;438e
	jr nc,l43bah		;4390
	ld h,(hl)		;4392
	ld b,b			;4393
	ret nc			;4394
	adc a,h			;4395
	and (hl)		;4396
	ld b,d			;4397
	ld b,b			;4398
	nop			;4399
	ld (hl),d		;439a
	add a,b			;439b
	dec a			;439c
	ld a,a			;439d
	ld e,c			;439e
	cp 0d0h			;439f
	rlca			;43a1
	inc b			;43a2
	ld c,d			;43a3
	ld c,d			;43a4
	add hl,hl		;43a5
	inc h			;43a6
	ld c,070h		;43a7
	nop			;43a9
	add a,b			;43aa
	adc a,b			;43ab
	inc c			;43ac
	inc d			;43ad
	jr $+42			;43ae
	jr nc,l43c2h		;43b0
	sbc a,h			;43b2
	adc a,e			;43b3
	ret p			;43b4
	ccf			;43b5
	sbc a,h			;43b6
	cp d			;43b7
	add a,c			;43b8
	ld e,a			;43b9
l43bah:
	or l			;43ba
	or l			;43bb
l43bch:
	ld d,(hl)		;43bc
	ld e,e			;43bd
	jr l4364h		;43be
	ld d,b			;43c0
	ld h,b			;43c1
l43c2h:
	ld d,b			;43c2
	pop bc			;43c3
	ld d,(hl)		;43c4
	and d			;43c5
	adc a,l			;43c6
	ld b,004h		;43c7
	inc l			;43c9
	ld e,b			;43ca
	sub b			;43cb
	jr nz,l4356h		;43cc
	ld c,001h		;43ce
	ld de,01850h		;43d0
	inc d			;43d3
	ld d,d			;43d4
	inc c			;43d5
	jp po,00629h		;43d6
	pop bc			;43d9
	adc a,c			;43da
	and c			;43db
	ret nz			;43dc
	cp 07fh			;43dd
	ccf			;43df
	rrca			;43e0
	add a,d			;43e1
	rlca			;43e2
	ld d,d			;43e3
	ld d,d			;43e4
	sub h			;43e5
	inc h			;43e6
	cpl			;43e7
	dec b			;43e8
	jr nc,$+8		;43e9
	ld a,(bc)		;43eb
	add a,e			;43ec
	ld b,l			;43ed
	xor l			;43ee
	ld h,b			;43ef
	jr nz,l4426h		;43f0
	ld a,(de)		;43f2
	ld (hl),e		;43f3
	add hl,bc		;43f4
	jr nz,l43bch		;43f5
	inc e			;43f7
	nop			;43f8
	ld (hl),b		;43f9
	ld e,000h		;43fa
	xor l			;43fc
	xor l			;43fd
	ld l,d			;43fe
	jp c,00014h		;43ff
	jr c,l4450h		;4402
	xor a			;4404
	ld h,063h		;4405
	or l			;4407
	adc a,d			;4408
	xor l			;4409
	or c			;440a
	inc l			;440b
	cp a			;440c
	ld h,e			;440d
	ld b,c			;440e
	and c			;440f
	call m,01e7eh		;4410
	rlca			;4413
	ex af,af'		;4414
	ld d,d			;4415
	ld c,c			;4416
	and b			;4417
	and c			;4418
	adc a,b			;4419
	jr nc,l4424h		;441a
	adc a,(hl)		;441c
	add a,b			;441d
	ld h,(hl)		;441e
	ld (bc),a		;441f
	dec bc			;4420
	ld sp,00c02h		;4421
l4424h:
	xor c			;4424
	cp (hl)			;4425
l4426h:
	ld (bc),a		;4426
	ccf			;4427
	sbc a,023h		;4428
	add a,e			;442a
l442bh:
	inc a			;442b
	ld d,d			;442c
	xor l			;442d
	or (hl)			;442e
	ld e,c			;442f
	defb 0fdh,040h,01ch ;illegal sequence	;4430
	ld e,c			;4433
	ld e,c			;4434
	defb 0ddh,001h,0dah ;illegal sequence	;4435
	defb 0ddh,0cbh,08dh,083h ;res 0,(ix-073h) & ld e,(ix-073h)	;4438
	ld c,l			;443c
	ld e,b			;443d
	srl c			;443e
	rst 38h			;4440
	jr nz,l44b7h		;4441
	ld (hl),036h		;4443
	nop			;4445
	ld (hl),a		;4446
	or a			;4447
	ld (hl),a		;4448
	and (hl)		;4449
	ld h,h			;444a
	add a,l			;444b
	ld h,(hl)		;444c
l444dh:
	ld (hl),049h		;444d
	ld h,h			;444f
l4450h:
	or 01fh			;4450
	nop			;4452
	inc d			;4453
	ld c,c			;4454
	ld d,c			;4455
	push bc			;4456
	jp 0d2c5h		;4457
	ret nc			;445a
	or l			;445b
	ld d,l			;445c
l445dh:
	ld b,b			;445d
	ld e,d			;445e
	inc d			;445f
	or c			;4460
	nop			;4461
	jr nc,$+86		;4462
	ld h,016h		;4464
	ld b,a			;4466
	add a,a			;4467
	ld b,a			;4468
	ld (bc),a		;4469
	sub a			;446a
	ld d,a			;446b
	or a			;446c
	ld d,(hl)		;446d
	ld b,054h		;446e
	pop de			;4470
	jp nc,08080h		;4471
	dec l			;4474
	dec l			;4475
	ld l,l			;4476
	ld l,(hl)		;4477
	ld (bc),a		;4478
	ld l,l			;4479
	ld h,a			;447a
	ld b,l			;447b
	ld b,e			;447c
	dec h			;447d
	inc l			;447e
	dec bc			;447f
	sub b			;4480
	jp p,l6860h		;4481
	nop			;4484
	ld l,h			;4485
	ld l,h			;4486
	ld l,(hl)		;4487
	xor 06eh		;4488
	adc a,04ch		;448a
	adc a,b			;448c
	dec d			;448d
	ld c,b			;448e
	ld l,h			;448f
	ld c,b			;4490
	pop bc			;4491
	ld b,b			;4492
	rra			;4493
l4494h:
	ex af,af'		;4494
	dec h			;4495
	add hl,hl		;4496
	ld h,c			;4497
	ld h,e			;4498
	dec b			;4499
	ld h,c			;449a
	ld l,d			;449b
	ld l,b			;449c
	ld l,(hl)		;449d
	add hl,hl		;449e
	ld c,h			;449f
	cp a			;44a0
	jr c,$+98		;44a1
	nop			;44a3
	jr z,l44f2h		;44a4
	inc l			;44a6
	ld c,08eh		;44a7
	ld c,0aeh		;44a9
	ld l,00bh		;44ab
	xor 02ch		;44ad
	inc c			;44af
	jr z,l444dh		;44b0
l44b2h:
	ld c,e			;44b2
	jp (hl)			;44b3
	add a,h			;44b4
	ld d,016h		;44b5
l44b7h:
	ld (hl),000h		;44b7
	ld (02209h),a		;44b9
	jr nz,l44d0h		;44bc
	ld d,00ch		;44be
	ld (bc),a		;44c0
	ret c			;44c1
	djnz l4494h		;44c2
	ret c			;44c4
	ret c			;44c5
	ld b,b			;44c6
	call c,09c00h		;44c7
	sbc a,h			;44ca
l44cbh:
	jr l445dh		;44cb
	ret nc			;44cd
	ld d,l			;44ce
	sub b			;44cf
l44d0h:
	sbc a,e			;44d0
	ld (de),a		;44d1
	ld l,004h		;44d2
	jp (hl)			;44d4
	call nz,0c0ddh		;44d5
	or b			;44d8
	ld (hl),014h		;44d9
	ld c,(hl)		;44db
	djnz $-48		;44dc
	ld b,c			;44de
	rra			;44df
	ld d,b			;44e0
	sbc a,b			;44e1
	ld e,b			;44e2
	inc e			;44e3
	nop			;44e4
	ld bc,l5c5ch		;44e5
	call c,01858h		;44e8
	ld d,b			;44eb
	in a,(06ah)		;44ec
	ld b,080h		;44ee
	nop			;44f0
	ld (de),a		;44f1
l44f2h:
	ld (03e3ch),a		;44f2
	jp p,00af2h		;44f5
	ld c,066h		;44f8
	ld h,(hl)		;44fa
	ld c,0d4h		;44fb
	xor c			;44fd
	or d			;44fe
	daa			;44ff
	sub a			;4500
l4501h:
	nop			;4501
	call po,042e4h		;4502
	ld c,d			;4505
	call po,0ca4ah		;4506
	ld (bc),a		;4509
	jr nz,l4501h		;450a
	add a,c			;450c
	ex af,af'		;450d
	ld c,00ah		;450e
	ld de,00e12h		;4510
	ld c,0b1h		;4513
	dec d			;4515
	ld e,070h		;4516
	ret m			;4518
	ld b,h			;4519
	jr nz,l4574h		;451a
	xor b			;451c
	call nc,0a844h		;451d
	and d			;4520
	sbc a,b			;4521
	ld c,l			;4522
	xor d			;4523
	ld (bc),a		;4524
	jr l44cbh		;4525
	ld c,(hl)		;4527
	and h			;4528
	ld (bc),a		;4529
	add a,h			;452a
	inc l			;452b
	ld c,(hl)		;452c
	ld c,(hl)		;452d
	inc c			;452e
	ld e,l			;452f
	nop			;4530
l4531h:
	ld de,08200h		;4531
	ret po			;4534
	call z,0e0cch		;4535
	sbc a,(hl)		;4538
	ld a,(bc)		;4539
	sbc a,(hl)		;453a
	ret m			;453b
	ld a,b			;453c
	sbc a,b			;453d
	ld a,h			;453e
	nop			;453f
	cp h			;4540
	and l			;4541
	inc (hl)		;4542
	xor d			;4543
	ld b,b			;4544
	ld (bc),a		;4545
	adc a,d			;4546
	ld hl,(0adb8h)		;4547
	ld hl,(04635h)		;454a
	ld de,l7e21h		;454d
	inc e			;4550
	adc a,d			;4551
	add a,d			;4552
	inc e			;4553
	ret po			;4554
	ret po			;4555
	inc l			;4556
	ld hl,(0e0a0h)		;4557
	ld de,l629fh		;455a
	sbc a,04ah		;455d
	ex (sp),hl		;455f
	ret			;4560
	exx			;4561
	inc l			;4562
	sbc a,h			;4563
	call p,0e0a6h		;4564
	nop			;4567
	ld h,e			;4568
	push bc			;4569
	jr nz,l4531h		;456a
	rst 30h			;456c
	rra			;456d
	or 0e4h			;456e
	ld h,l			;4570
	inc bc			;4571
	sbc a,(hl)		;4572
	adc a,a			;4573
l4574h:
	ld l,e			;4574
	call pe,01839h		;4575
	add hl,hl		;4578
	djnz l4583h		;4579
	adc a,b			;457b
	ld d,d			;457c
	dec c			;457d
l457eh:
	ex (sp),hl		;457e
l457fh:
	nop			;457f
	jr z,l458ah		;4580
	xor c			;4582
l4583h:
	and c			;4583
	add hl,bc		;4584
	add hl,bc		;4585
	adc a,b			;4586
	ld h,(hl)		;4587
	ld h,b			;4588
	add hl,sp		;4589
l458ah:
	ld d,001h		;458a
	add a,0a6h		;458c
	and e			;458e
	adc a,a			;458f
	ld hl,0d921h		;4590
	ld (0f6a1h),hl		;4593
	sub e			;4596
	dec h			;4597
	ld d,l			;4598
	jr nc,l457eh		;4599
	sub l			;459b
	ld (hl),c		;459c
	call c,0b0a6h		;459d
	call pe,0b00ah		;45a0
	ld e,b			;45a3
	djnz l457fh		;45a4
	ld (hl),b		;45a6
	dec b			;45a7
	sub h			;45a8
	add a,h			;45a9
	rst 38h			;45aa
	sub a			;45ab
	ld d,08ah		;45ac
	inc d			;45ae
	rst 28h			;45af
	push bc			;45b0
	adc a,h			;45b1
	and (hl)		;45b2
	sub h			;45b3
	jp p,0b608h		;45b4
	sbc a,(hl)		;45b7
	ccf			;45b8
	nop			;45b9
	ld (hl),h		;45ba
	jr nz,$+47		;45bb
	ld h,02bh		;45bd
	dec hl			;45bf
	ret nz			;45c0
	dec l			;45c1
	inc l			;45c2
	cpl			;45c3
	inc bc			;45c4
	ld b,08bh		;45c5
	jp nc,01b00h		;45c7
	dec hl			;45ca
	ld c,015h		;45cb
	sbc a,h			;45cd
	dec c			;45ce
	ex (sp),hl		;45cf
	nop			;45d0
	cpl			;45d1
	ld a,(de)		;45d2
	ld l,(hl)		;45d3
	inc de			;45d4
	ld c,0d8h		;45d5
	dec hl			;45d7
	inc c			;45d8
	dec l			;45d9
	ld l,02fh		;45da
	inc l			;45dc
	inc de			;45dd
	dec c			;45de
	add hl,sp		;45df
	ccf			;45e0
	ld a,d			;45e1
	ld hl,(0bd3fh)		;45e2
	ld hl,(01c3fh)		;45e5
	ld hl,(03d3fh)		;45e8
	ld hl,(01d3fh)		;45eb
	ld hl,(0d93fh)		;45ee
	inc e			;45f1
	nop			;45f2
	inc b			;45f3
	sbc a,h			;45f4
	rlca			;45f5
	add a,0d9h		;45f6
	cp b			;45f8
	dec hl			;45f9
	xor l			;45fa
	adc a,04ch		;45fb
	or b			;45fd
	ld de,0a32bh		;45fe
	exx			;4601
	ld l,02eh		;4602
	rrca			;4604
	or h			;4605
	ld d,0b5h		;4606
	ld a,b			;4608
	and (hl)		;4609
	rrca			;460a
	pop bc			;460b
	ld (hl),e		;460c
	rrca			;460d
	add hl,bc		;460e
	ld b,(hl)		;460f
l4610h:
	sbc a,b			;4610
	nop			;4611
	add hl,bc		;4612
	ld d,h			;4613
	dec hl			;4614
	ld bc,0a16eh		;4615
	ld d,l			;4618
	inc (hl)		;4619
	dec (hl)		;461a
	nop			;461b
	inc b			;461c
	dec bc			;461d
	dec bc			;461e
	ld a,(bc)		;461f
	ld c,d			;4620
	ld bc,0320ch		;4621
	dec bc			;4624
	dec l			;4625
	dec bc			;4626
	ld (de),a		;4627
	jp nc,02b1fh		;4628
	add hl,hl		;462b
	and l			;462c
	scf			;462d
	rra			;462e
	ld c,l			;462f
	jr nz,l4660h		;4630
	rra			;4632
	exx			;4633
	jr nz,$-80		;4634
	sbc a,(hl)		;4636
	inc l			;4637
	rra			;4638
	adc a,e			;4639
	dec hl			;463a
	add hl,bc		;463b
	rra			;463c
	ret nc			;463d
l463eh:
	ld a,(bc)		;463e
	inc c			;463f
	xor (hl)		;4640
	ld de,l6f0bh		;4641
	adc a,(hl)		;4644
	ld c,00bh		;4645
	ld l,a			;4647
	cp h			;4648
	nop			;4649
	rst 8			;464a
	dec bc			;464b
	ld c,005h		;464c
	rra			;464e
	nop			;464f
	adc a,a			;4650
	add hl,de		;4651
	ld e,(hl)		;4652
	ld l,000h		;4653
	rst 8			;4655
	ld l,e			;4656
	nop			;4657
	ld h,a			;4658
	nop			;4659
	nop			;465a
	rst 30h			;465b
	rst 8			;465c
	add hl,hl		;465d
	nop			;465e
	cp c			;465f
l4660h:
	jr nz,l4662h		;4660
l4662h:
	rst 30h			;4662
	dec a			;4663
	ex af,af'		;4664
	nop			;4665
	sbc a,(hl)		;4666
	ld b,e			;4667
	nop			;4668
	sub 0d6h		;4669
	adc a,l			;466b
	inc bc			;466c
	nop			;466d
	add a,007h		;466e
	dec bc			;4670
	ld a,(bc)		;4671
	sbc a,09bh		;4672
	inc (hl)		;4674
	ld b,h			;4675
	nop			;4676
	ld c,a			;4677
	ld c,e			;4678
	inc hl			;4679
	ld c,e			;467a
	ld c,(hl)		;467b
	ld (bc),a		;467c
	ld b,h			;467d
	ld b,b			;467e
	sub a			;467f
	rst 0			;4680
	ex af,af'		;4681
	ld bc,0d91fh		;4682
	ld (hl),b		;4685
	ld a,000h		;4686
	sub 01dh		;4688
	ld c,c			;468a
	jr nz,l463eh		;468b
	ld c,c			;468d
	nop			;468e
	ld c,e			;468f
	ld (bc),a		;4690
	add hl,sp		;4691
	add hl,bc		;4692
	nop			;4693
	inc e			;4694
	dec c			;4695
	add hl,bc		;4696
	ld bc,0f208h		;4697
	dec a			;469a
l469bh:
	ld b,h			;469b
	ld c,l			;469c
	ld c,(hl)		;469d
	ld e,c			;469e
	ld b,d			;469f
	nop			;46a0
	ld b,a			;46a1
	ld b,b			;46a2
	push bc			;46a3
	ld hl,(09c2fh)		;46a4
	ld de,0d02fh		;46a7
	out (004h),a		;46aa
	nop			;46ac
	jp 08750h		;46ad
	ld b,c			;46b0
	nop			;46b1
	sub (hl)		;46b2
	ld d,d			;46b3
	jp (hl)			;46b4
	ret z			;46b5
	xor d			;46b6
	ld a,c			;46b7
	jp z,001f6h		;46b8
	jr nz,$+5		;46bb
	ld (bc),a		;46bd
	rrca			;46be
	ld bc,0400fh		;46bf
	inc de			;46c2
	ld c,a			;46c3
	ld c,a			;46c4
	ld b,c			;46c5
	ld bc,00148h		;46c6
	ex af,af'		;46c9
	ld c,h			;46ca
	ld c,b			;46cb
	nop			;46cc
	ld b,b			;46cd
	ld c,b			;46ce
	ld a,e			;46cf
	inc b			;46d0
	nop			;46d1
	dec a			;46d2
	ld c,e			;46d3
	nop			;46d4
	and l			;46d5
	ccf			;46d6
	ld bc,00e9dh		;46d7
	ld bc,l7503h		;46da
	ld (bc),a		;46dd
	ld b,b			;46de
	add a,a			;46df
	ld de,04c4ch		;46e0
	add a,a			;46e3
l46e4h:
	rla			;46e4
	inc bc			;46e5
	dec de			;46e6
	ld (bc),a		;46e7
	dec d			;46e8
	rst 8			;46e9
	inc hl			;46ea
	ld (hl),a		;46eb
	inc l			;46ec
	dec d			;46ed
	dec a			;46ee
	inc hl			;46ef
	add a,h			;46f0
	ld b,e			;46f1
	nop			;46f2
	dec c			;46f3
	inc c			;46f4
	ld bc,0dc0ah		;46f5
	nop			;46f8
	rlca			;46f9
	ret c			;46fa
	ld bc,0a4e2h		;46fb
	ld d,e			;46fe
	ld c,c			;46ff
	ex de,hl		;4700
	ld (hl),c		;4701
	nop			;4702
	or c			;4703
	adc a,h			;4704
	ld (hl),l		;4705
sub_4706h:
	ld d,001h		;4706
	pop hl			;4708
	ld a,a			;4709
	rst 28h			;470a
	rla			;470b
	in a,(00bh)		;470c
	nop			;470e
	dec (hl)		;470f
	rlca			;4710
	ld c,a			;4711
	ld d,0ceh		;4712
	jp pe,00059h		;4714
	ld a,049h		;4717
	call c,sub_6c9bh	;4719
	ld (hl),c		;471c
	nop			;471d
	and e			;471e
	ld l,h			;471f
	jp z,l65efh		;4720
	ld (00057h),hl		;4723
	ld b,(hl)		;4726
	jp (hl)			;4727
	ld h,b			;4728
	inc c			;4729
	jp nc,l4bfah		;472a
	nop			;472d
	xor a			;472e
	ld (0c308h),a		;472f
	ld a,(0ffe8h)		;4732
	or 000h			;4735
	ld (bc),a		;4737
	and 0ffh		;4738
	and 07fh		;473a
	or 080h			;473c
	ld (00a80h),a		;473e
	di			;4741
	out (099h),a		;4742
	ld a,089h		;4744
	ei			;4746
	adc a,b			;4747
	inc b			;4748
	ld a,(011e7h)		;4749
	rst 18h			;474c
	ld (004a0h),a		;474d
	ld hl,0c10eh		;4750
	ld hl,(0047ch)		;4753
	dec b			;4756
	ld (hl),008h		;4757
	ld hl,(0047fh)		;4759
	xor 021h		;475c
	ld hl,(00482h)		;475e
	jp nz,0852ah		;4761
	inc b			;4764
	xor b			;4765
	adc a,b			;4766
	inc b			;4767
	nop			;4768
	ld hl,(08b43h)		;4769
	inc b			;476c
	or 02ah			;476d
	adc a,(hl)		;476f
	add hl,bc		;4770
	ld e,d			;4771
	sub c			;4772
	add hl,bc		;4773
	sub h			;4774
	sub 009h		;4775
	sub a			;4777
	add hl,bc		;4778
	and c			;4779
	sbc a,d			;477a
	inc b			;477b
	sbc a,02ah		;477c
	sbc a,l			;477e
	inc b			;477f
	ld bc,0cde8h		;4780
	jp c,0cd4dh		;4783
	ld a,d			;4786
	ld (bc),a		;4787
	nop			;4788
	ld h,e			;4789
	dec b			;478a
	call 07965h		;478b
	call 0929fh		;478e
	dec b			;4791
	and d			;4792
	ld (bc),a		;4793
	and l			;4794
	ld (bc),a		;4795
	ld b,b			;4796
	rlca			;4797
	ld de,078a4h		;4798
sub_479bh:
	call sub_5bceh		;479b
	inc h			;479e
	call 00baeh		;479f
	add hl,sp		;47a2
	ld (bc),a		;47a3
	xor b			;47a4
	add a,d			;47a5
	ld (bc),a		;47a6
	dec hl			;47a7
	ld h,b			;47a8
	call 005abh		;47a9
	ex af,af'		;47ac
	jp m,0cd5ch		;47ad
	jp (hl)			;47b0
	ld a,(de)		;47b1
	ld d,b			;47b2
	ld e,b			;47b3
	nop			;47b4
	ld a,(0c13dh)		;47b5
	or a			;47b8
	jp z,04c8bh		;47b9
	ld a,080h		;47bc
	ld de,0050fh		;47be
	ld a,001h		;47c1
	ld (01106h),a		;47c3
	pop bc			;47c6
	ld a,0feh		;47c7
	xor c			;47c9
	inc bc			;47ca
	pop bc			;47cb
	ld (0c3a3h),a		;47cc
	ld a,093h		;47cf
	call po,00707h		;47d1
	and d			;47d4
	djnz $-59		;47d5
	call 01a03h		;47d7
	ld b,005h		;47da
	halt			;47dc
	ret z			;47dd
	ld e,l			;47de
	and b			;47df
	and c			;47e0
	dec hl			;47e1
	ld a,(0c395h)		;47e2
	ld l,003h		;47e5
	call z,0cd4ch		;47e7
	or h			;47ea
	ld c,l			;47eb
	add hl,bc		;47ec
	ld d,d			;47ed
	ret			;47ee
	ld (de),a		;47ef
	ld d,023h		;47f0
	ld c,c			;47f2
	ccf			;47f3
	ld (bc),a		;47f4
	ld d,d			;47f5
	ld (bc),a		;47f6
	ld c,a			;47f7
	ld (bc),a		;47f8
	inc h			;47f9
	ld b,e			;47fa
	ld (bc),a		;47fb
	ld b,b			;47fc
	ccf			;47fd
	ld (bc),a		;47fe
	jr nz,l4833h		;47ff
	ld b,d			;4801
	ld h,03eh		;4802
	pop bc			;4804
	cp 01eh			;4805
	ld (bc),a		;4807
	jp c,04cf0h		;4808
	dec a			;480b
	ld (00b3eh),a		;480c
	ex af,af'		;480f
	pop de			;4810
l4811h:
	jp 0323ch		;4811
	inc bc			;4814
	ld a,(l5013h)		;4815
	pop bc			;4818
	dec c			;4819
	inc bc			;481a
	inc a			;481b
	jp nz,0d05eh		;481c
	dec a			;481f
	xor a			;4820
	ret			;4821
	ld hl,0023bh		;4822
	ld c,l			;4825
	ld (l4d37h),hl		;4826
	ld hl,0055bh		;4829
	djnz l4867h		;482c
	ld c,l			;482e
	ld hl,(l5e08h)		;482f
	inc hl			;4832
l4833h:
	ld d,(hl)		;4833
	ld b,023h		;4834
	ld a,d			;4836
	or e			;4837
	jp z,01479h		;4838
	add a,d			;483b
	ex de,hl		;483c
	ld c,(hl)		;483d
	inc hl			;483e
	ld b,(hl)		;483f
	ld hl,(0dc15h)		;4840
	ld (de),a		;4843
	inc e			;4844
	ld bc,l71ebh		;4845
	inc hl			;4848
	ld (hl),b		;4849
	jp l4d13h		;484a
	and 04ah		;484d
	rlca			;484f
l4850h:
	nop			;4850
	dec b			;4851
	ld d,005h		;4852
	rra			;4854
	dec b			;4855
	ld (02e05h),hl		;4856
	nop			;4859
	dec b			;485a
	add hl,de		;485b
	dec b			;485c
	ld sp,l5b05h		;485d
	dec b			;4860
	ld e,(hl)		;4861
	nop			;4862
	dec b			;4863
	ld h,c			;4864
	dec b			;4865
	ld h,a			;4866
l4867h:
	dec b			;4867
	ld l,d			;4868
	dec b			;4869
	ld (hl),b		;486a
	ld (l7305h),hl		;486b
	and c			;486e
	ld b,b			;486f
	dec b			;4870
	rra			;4871
	sbc a,c			;4872
	ld e,b			;4873
	ld l,b			;4874
	ld e,b			;4875
	ld c,(hl)		;4876
	nop			;4877
	ld e,b			;4878
	inc a			;4879
	ld e,b			;487a
	ld a,l			;487b
	ld e,b			;487c
	ld l,e			;487d
	ld e,b			;487e
	ld (hl),a		;487f
	nop			;4880
	ld e,b			;4881
	ld l,h			;4882
	ld e,l			;4883
	ld (02558h),hl		;4884
	ld e,b			;4887
	ld l,(hl)		;4888
	nop			;4889
	ld e,b			;488a
	ld (hl),h		;488b
	ld e,b			;488c
	ld a,d			;488d
	ld e,b			;488e
	ld (hl),c		;488f
	ld e,b			;4890
	dec hl			;4891
	rlca			;4892
	ld e,b			;4893
	ret			;4894
l4895h:
	di			;4895
	ld hl,0ec38h		;4896
	ld (bc),a		;4899
	rst 10h			;489a
	ld c,l			;489b
	ld bc,0a0f6h		;489c
	ldir			;489f
	ld hl,0c0f9h		;48a1
	ld a,b			;48a4
	nop			;48a5
	ld a,0c3h		;48a6
	ld (03841h),a		;48a8
	inc b			;48ab
	inc de			;48ac
	ld (0fff1h),a		;48ad
	adc a,h			;48b0
	jr c,$-107		;48b1
	sbc a,h			;48b3
	adc a,e			;48b4
	dec b			;48b5
	rst 18h			;48b6
	di			;48b7
	or 010h			;48b8
	ld (00d04h),a		;48ba
	adc a,h			;48bd
	add a,b			;48be
	inc bc			;48bf
	ld h,d			;48c0
	ld (bc),a		;48c1
	inc bc			;48c2
	adc a,a			;48c3
	and d			;48c4
	ld (hl),d		;48c5
	xor h			;48c6
	add hl,hl		;48c7
	dec (hl)		;48c8
	ld de,03828h		;48c9
	di			;48cc
	add hl,sp		;48cd
	jp 0e623h		;48ce
	rst 28h			;48d1
	inc hl			;48d2
	pop bc			;48d3
	xor a			;48d4
	ld (003b1h),hl		;48d5
	ei			;48d8
	ret			;48d9
	sbc a,(hl)		;48da
	add hl,de		;48db
	ld e,a			;48dc
	inc hl			;48dd
	ret m			;48de
	ld d,h			;48df
	ld b,04eh		;48e0
	dec b			;48e2
	ld c,d			;48e3
l48e4h:
	ld d,04eh		;48e4
	ld de,0340eh		;48e6
	push bc			;48e9
	ld d,(hl)		;48ea
	ld c,0d0h		;48eb
	ld d,a			;48ed
	ret po			;48ee
	ld c,0c9h		;48ef
	push af			;48f1
	sub e			;48f2
	rst 18h			;48f3
	inc l			;48f4
	sub b			;48f5
	in a,(099h)		;48f6
	rrca			;48f8
	call c,01a9dh		;48f9
	xor a			;48fc
	inc c			;48fd
	add a,d			;48fe
	ld (0c1a0h),a		;48ff
	rlca			;4902
	call c,0e624h		;4903
	ld l,l			;4906
	inc bc			;4907
	ld l,b			;4908
	pop af			;4909
	ld c,e			;490a
	ld c,b			;490b
	ret c			;490c
	call z,0ca00h		;490d
	add a,d			;4910
	adc a,(hl)		;4911
l4912h:
	call z,04830h		;4912
	jp c,008ceh		;4915
	sbc a,h			;4918
	add a,h			;4919
	sub b			;491a
	add a,(hl)		;491b
	rlca			;491c
	add a,(hl)		;491d
	sbc a,h			;491e
	ex af,af'		;491f
	add a,(hl)		;4920
	sub d			;4921
	sub 090h		;4922
	rlca			;4924
	sbc a,h			;4925
	adc a,07eh		;4926
	sub d			;4928
	and (hl)		;4929
	ld h,(hl)		;492a
	rlca			;492b
	ld b,050h		;492c
	ld a,(bc)		;492e
	rlca			;492f
	adc a,086h		;4930
	add a,h			;4932
	ld (hl),092h		;4933
	adc a,00fh		;4935
	dec c			;4937
	call z,02702h		;4938
	sub (hl)		;493b
	jr z,$-108		;493c
	ld (bc),a		;493e
	rra			;493f
	cp b			;4940
	ret c			;4941
	ccf			;4942
	rla			;4943
	sub d			;4944
l4945h:
	sbc a,h			;4945
	jp c,01f3fh		;4946
	ld b,0dah		;4949
	sbc a,h			;494b
	rla			;494c
	add a,b			;494d
	sbc a,08eh		;494e
	ret nc			;4950
	jp z,092d0h		;4951
	jr z,l4986h		;4954
	ld d,b			;4956
	adc a,058h		;4957
	add a,(hl)		;4959
	adc a,012h		;495a
	ld hl,(09252h)		;495c
	ld d,092h		;495f
	ld l,e			;4961
	ld a,(bc)		;4962
	inc l			;4963
	nop			;4964
	inc c			;4965
	sub b			;4966
	dec c			;4967
	ld a,(bc)		;4968
l4969h:
	ld (de),a		;4969
	inc l			;496a
l496bh:
	ld (bc),a		;496b
	ld c,034h		;496c
	sbc a,h			;496e
	ld a,(de)		;496f
	rrc a			;4970
	inc c			;4972
	rlca			;4973
	ld (de),a		;4974
	ld l,00fh		;4975
	sub b			;4977
	ld h,04ah		;4978
	jp c,01e67h		;497a
	ld l,e			;497d
	ld e,l			;497e
	push bc			;497f
	rlca			;4980
	ld c,b			;4981
l4982h:
	ld d,l			;4982
	sub a			;4983
	ld d,04fh		;4984
l4986h:
	call nz,0ca55h		;4986
	sbc a,039h		;4989
	jr c,l49deh		;498b
	ld d,b			;498d
	ld d,e			;498e
	sbc a,b			;498f
	add a,l			;4990
	add a,(hl)		;4991
	ld a,(l782fh)		;4992
	ld b,(hl)		;4995
	add a,b			;4996
	ld hl,(02f3ah)		;4997
	daa			;499a
	jr z,l4a03h		;499b
	adc a,00fh		;499d
	jr z,$-102		;499f
l49a1h:
	sub d			;49a1
	ld a,(0843fh)		;49a2
	ld b,l			;49a5
	adc a,(hl)		;49a6
	and c			;49a7
	rrca			;49a8
	sub c			;49a9
	cp l			;49aa
	sbc a,b			;49ab
	rra			;49ac
	ld d,h			;49ad
	adc a,d			;49ae
	adc a,b			;49af
	jr c,l4969h		;49b0
	ld h,c			;49b2
	rlca			;49b3
	add hl,sp		;49b4
	ld a,(bc)		;49b5
	jr l49dch		;49b6
	rlca			;49b8
	or (hl)			;49b9
	jr c,l4a21h		;49ba
	inc a			;49bc
l49bdh:
	rrca			;49bd
	dec (hl)		;49be
	rlca			;49bf
	add a,a			;49c0
	ld e,h			;49c1
	ld d,b			;49c2
	rlca			;49c3
	jr z,l4a1ah		;49c4
	sbc a,b			;49c6
	and e			;49c7
	add a,028h		;49c8
	cp l			;49ca
	ret z			;49cb
	rlca			;49cc
	scf			;49cd
	add a,(hl)		;49ce
	inc (hl)		;49cf
	inc h			;49d0
	ld b,b			;49d1
	ld d,h			;49d2
	ld b,b			;49d3
	add a,h			;49d4
	ld de,03236h		;49d5
	ld b,d			;49d8
	ld d,h			;49d9
	jr z,$-80		;49da
l49dch:
	inc l			;49dc
	rra			;49dd
l49deh:
	ret z			;49de
	jr c,l4982h		;49df
	or e			;49e1
	rlca			;49e2
	ld (hl),b		;49e3
	inc (hl)		;49e4
	rlca			;49e5
	ld (de),a		;49e6
	ld e,091h		;49e7
	dec d			;49e9
	add a,(hl)		;49ea
	sub 062h		;49eb
	ld b,a			;49ed
	jp c,03190h		;49ee
	ld hl,(0b807h)		;49f1
	jr c,$+46		;49f4
	call nz,0da4fh		;49f6
	xor (hl)		;49f9
	and e			;49fa
	ld hl,(0244fh)		;49fb
	and a			;49fe
	adc a,d			;49ff
	exx			;4a00
	rrca			;4a01
	and d			;4a02
l4a03h:
	rlca			;4a03
	or h			;4a04
	adc a,c			;4a05
	cp 02eh			;4a06
	ld e,a			;4a08
	xor (hl)		;4a09
	sbc a,h			;4a0a
	ld h,a			;4a0b
	inc hl			;4a0c
	sbc a,b			;4a0d
	inc l			;4a0e
	rra			;4a0f
	scf			;4a10
	adc a,l			;4a11
	adc a,b			;4a12
	ld h,h			;4a13
	sub d			;4a14
	daa			;4a15
	adc a,b			;4a16
	ld l,h			;4a17
	add a,(hl)		;4a18
	sbc a,h			;4a19
l4a1ah:
	ld d,a			;4a1a
	ld (027d6h),a		;4a1b
	ld d,a			;4a1e
l4a1fh:
	jr z,l49bdh		;4a1f
l4a21h:
	call c,09f20h		;4a21
	pop hl			;4a24
l4a25h:
	sbc a,0a7h		;4a25
	inc e			;4a27
	ret			;4a28
	defb 0edh ;next byte illegal after ed	;4a29
	exx			;4a2a
l4a2bh:
	djnz l4a47h		;4a2b
	ld h,056h		;4a2d
	ld c,d			;4a2f
	ld c,d			;4a30
	sbc a,(hl)		;4a31
	ld b,(hl)		;4a32
	rst 10h			;4a33
	ld d,058h		;4a34
	ld c,h			;4a36
	dec l			;4a37
	ld (hl),c		;4a38
	inc c			;4a39
	ld a,(04e5ah)		;4a3a
	ld d,a			;4a3d
	and e			;4a3e
	ld h,b			;4a3f
	rst 10h			;4a40
	ld (hl),a		;4a41
l4a42h:
	djnz l4a4bh		;4a42
	ld h,l			;4a44
	pop af			;4a45
	ld e,c			;4a46
l4a47h:
	djnz l4a9fh		;4a47
	sbc a,b			;4a49
	add hl,de		;4a4a
l4a4bh:
	ld b,b			;4a4b
	ld b,a			;4a4c
	and (hl)		;4a4d
	inc de			;4a4e
	and a			;4a4f
	adc a,c			;4a50
	ld d,d			;4a51
	ld a,0d0h		;4a52
	rst 38h			;4a54
sub_4a55h:
	dec d			;4a55
	ld c,b			;4a56
	add a,(hl)		;4a57
	inc d			;4a58
	rst 38h			;4a59
	ld l,h			;4a5a
	rst 10h			;4a5b
	call nc,0d75eh		;4a5c
	push af			;4a5f
	dec c			;4a60
	sub e			;4a61
	rst 10h			;4a62
	call nz,0d2cfh		;4a63
	and b			;4a66
	ld c,(hl)		;4a67
	or a			;4a68
	adc a,0efh		;4a69
	and h			;4a6b
	ret nc			;4a6c
	rst 18h			;4a6d
	sbc a,h			;4a6e
	cp a			;4a6f
	ret			;4a70
	jr z,l4a42h		;4a71
	inc h			;4a73
	ld c,(hl)		;4a74
	jr l4a1fh		;4a75
	ld h,h			;4a77
	xor a			;4a78
	sub c			;4a79
	rra			;4a7a
	jr c,l4a81h		;4a7b
	sbc a,b			;4a7d
	inc h			;4a7e
	xor a			;4a7f
	ld d,c			;4a80
l4a81h:
	rra			;4a81
	ld a,(01606h)		;4a82
	add hl,hl		;4a85
	ld hl,(l6a07h)		;4a86
	ld a,(bc)		;4a89
	rra			;4a8a
	ld b,l			;4a8b
	and a			;4a8c
	daa			;4a8d
	inc h			;4a8e
	djnz l4aabh		;4a8f
	sub d			;4a91
	sbc a,a			;4a92
	ld c,c			;4a93
	ld c,d			;4a94
	ld e,d			;4a95
	inc b			;4a96
	rla			;4a97
	ld c,c			;4a98
	rra			;4a99
	ld c,h			;4a9a
	ld c,d			;4a9b
	ex af,af'		;4a9c
	daa			;4a9d
	ld c,c			;4a9e
l4a9fh:
	rra			;4a9f
	ld c,(hl)		;4aa0
	ld h,d			;4aa1
	ld b,076h		;4aa2
	ld h,l			;4aa4
	daa			;4aa5
	rla			;4aa6
	rrca			;4aa7
	ld b,(hl)		;4aa8
	rst 10h			;4aa9
	inc h			;4aaa
l4aabh:
	ld c,b			;4aab
	ld d,d			;4aac
	ld a,(bc)		;4aad
	rra			;4aae
	ld l,0dch		;4aaf
	scf			;4ab1
l4ab2h:
	ld h,d			;4ab2
	ld l,l			;4ab3
	jr nc,l4afdh		;4ab4
	ld c,a			;4ab6
	cpl			;4ab7
	sub c			;4ab8
	rra			;4ab9
	djnz l4ac4h		;4aba
	or a			;4abc
	dec hl			;4abd
	daa			;4abe
	sub h			;4abf
	rra			;4ac0
	rst 30h			;4ac1
	ld h,d			;4ac2
	ld c,d			;4ac3
l4ac4h:
	jp p,01792h		;4ac4
	sub b			;4ac7
	rst 38h			;4ac8
	ld c,h			;4ac9
	sub d			;4aca
	ld d,b			;4acb
	ld a,(de)		;4acc
	sub c			;4acd
	sbc a,091h		;4ace
	rst 38h			;4ad0
	ld c,(hl)		;4ad1
	adc a,(hl)		;4ad2
	add hl,sp		;4ad3
	adc a,(hl)		;4ad4
	ld b,h			;4ad5
	rst 38h			;4ad6
	sub c			;4ad7
	add a,a			;4ad8
	or c			;4ad9
	ret z			;4ada
	ld a,(bc)		;4adb
	jr c,l4b22h		;4adc
	ld d,b			;4ade
	jp pe,09658h		;4adf
	sub d			;4ae2
	ld b,(hl)		;4ae3
	cp (hl)			;4ae4
	ld d,d			;4ae5
	jp pe,007c3h		;4ae6
	ld d,h			;4ae9
	inc b			;4aea
	jr z,l4afch		;4aeb
	ld de,00710h		;4aed
	ex af,af'		;4af0
	inc l			;4af1
	scf			;4af2
	ld d,c			;4af3
	dec sp			;4af4
l4af5h:
	rlca			;4af5
	ld a,(bc)		;4af6
	ld l,089h		;4af7
	jr z,l4b33h		;4af9
	sbc a,c			;4afb
l4afch:
	rlca			;4afc
l4afdh:
	ld c,b			;4afd
	ld b,a			;4afe
	ld h,e			;4aff
	ld h,l			;4b00
	rlca			;4b01
	ld b,a			;4b02
	rst 30h			;4b03
	ld b,(hl)		;4b04
	rlca			;4b05
	and a			;4b06
	sbc a,h			;4b07
	rst 28h			;4b08
	ld (hl),007h		;4b09
	xor l			;4b0b
	ld hl,(l4d9eh)		;4b0c
	rrca			;4b0f
	ld (0cedch),hl		;4b10
	sub 04ch		;4b13
	ld b,(hl)		;4b15
	and a			;4b16
	call c,08e8dh		;4b17
	dec d			;4b1a
	ld b,(hl)		;4b1b
	ld e,(hl)		;4b1c
	ld d,d			;4b1d
	defb 0edh ;next byte illegal after ed	;4b1e
	adc a,l			;4b1f
	jr z,l4b29h		;4b20
l4b22h:
	ld b,(hl)		;4b22
	sbc a,h			;4b23
	or (hl)			;4b24
	jp po,08607h		;4b25
	xor (hl)		;4b28
l4b29h:
	scf			;4b29
	rlca			;4b2a
	inc e			;4b2b
	adc a,01fh		;4b2c
	call nc,03f70h		;4b2e
	ld a,(hl)		;4b31
	inc a			;4b32
l4b33h:
	jr c,l4b93h		;4b33
	ld d,h			;4b35
	ld d,(hl)		;4b36
	xor e			;4b37
	rlca			;4b38
	jr c,$+41		;4b39
	rlca			;4b3b
	ld (hl),a		;4b3c
	jr nc,$+9		;4b3d
	sub e			;4b3f
	adc a,d			;4b40
	sub (hl)		;4b41
	rlca			;4b42
	sbc a,c			;4b43
	cp a			;4b44
	jr c,l4b4eh		;4b45
	ld c,014h		;4b47
	jp nc,020d2h		;4b49
	rra			;4b4c
	adc a,l			;4b4d
l4b4eh:
	djnz $+30		;4b4e
	rlca			;4b50
	xor (hl)		;4b51
	ld c,b			;4b52
	ld b,a			;4b53
	rra			;4b54
	ld a,c			;4b55
	rlca			;4b56
	ld (hl),c		;4b57
	sbc a,h			;4b58
	rlca			;4b59
	ret pe			;4b5a
	inc (hl)		;4b5b
	add a,(hl)		;4b5c
	out (0d6h),a		;4b5d
	ld l,d			;4b5f
	ld d,a			;4b60
	adc a,0d6h		;4b61
	ld l,e			;4b63
	jr z,l4bc5h		;4b64
	ld (hl),l		;4b66
	jr z,l4bc7h		;4b67
	ret pe			;4b69
	ld (0ef92h),a		;4b6a
	xor h			;4b6d
	rlca			;4b6e
	sbc a,d			;4b6f
	ret pe			;4b70
	ret pe			;4b71
	out (007h),a		;4b72
	ld h,0e8h		;4b74
	ld e,h			;4b76
	adc a,018h		;4b77
	rla			;4b79
	ld d,c			;4b7a
l4b7bh:
	scf			;4b7b
	adc a,b			;4b7c
	sbc a,b			;4b7d
	rla			;4b7e
	sub d			;4b7f
	adc a,l			;4b80
	cp a			;4b81
	jp po,0ae17h		;4b82
	ld c,c			;4b85
	rlca			;4b86
	ld (bc),a		;4b87
	xor (hl)		;4b88
	inc l			;4b89
	ld b,(hl)		;4b8a
	or a			;4b8b
	jp nc,0ae00h		;4b8c
	jr z,l4bd7h		;4b8f
	rst 20h			;4b91
	or h			;4b92
l4b93h:
	xor 0b0h		;4b93
	ld d,a			;4b95
	rlca			;4b96
	adc a,d			;4b97
	jp po,0e046h		;4b98
	sbc a,b			;4b9b
	ld d,e			;4b9c
	rst 30h			;4b9d
	ld de,095b0h		;4b9e
	add a,a			;4ba1
	sub c			;4ba2
	ret nc			;4ba3
	sbc a,d			;4ba4
	rlca			;4ba5
	call z,sub_479bh	;4ba6
	jp z,0b607h		;4ba9
	inc de			;4bac
	adc a,d			;4bad
	rra			;4bae
l4bafh:
	ld h,e			;4baf
	xor (hl)		;4bb0
	inc hl			;4bb1
	or b			;4bb2
	ld (hl),d		;4bb3
	ccf			;4bb4
	ld c,a			;4bb5
	defb 0ddh,057h,02fh ;illegal sequence	;4bb6
	sub (hl)		;4bb9
	sub a			;4bba
	jr z,l4be4h		;4bbb
	adc a,(hl)		;4bbd
	adc a,017h		;4bbe
	ld h,l			;4bc0
	add a,a			;4bc1
	sub h			;4bc2
	sub d			;4bc3
	add a,a			;4bc4
l4bc5h:
	or l			;4bc5
	rst 30h			;4bc6
l4bc7h:
	inc e			;4bc7
	xor c			;4bc8
	ld d,h			;4bc9
	cp c			;4bca
	add hl,sp		;4bcb
	rlca			;4bcc
	ld c,(ix+007h)		;4bcd
	adc a,(hl)		;4bd0
	rst 38h			;4bd1
	ld (hl),e		;4bd2
	rla			;4bd3
	ld b,(hl)		;4bd4
	jr c,l4be6h		;4bd5
l4bd7h:
	jp z,00736h		;4bd7
	adc a,b			;4bda
	or e			;4bdb
	rlca			;4bdc
	adc a,h			;4bdd
	ld a,a			;4bde
l4bdfh:
	push hl			;4bdf
	rlca			;4be0
	adc a,046h		;4be1
	or l			;4be3
l4be4h:
	rst 20h			;4be4
	cp d			;4be5
l4be6h:
	ld a,01ch		;4be6
	sbc a,l			;4be8
	sub a			;4be9
	rst 0			;4bea
	rlca			;4beb
	inc a			;4bec
	ld b,(hl)		;4bed
	ld e,c			;4bee
	rlca			;4bef
	push hl			;4bf0
	dec sp			;4bf1
	rrca			;4bf2
l4bf3h:
	add a,046h		;4bf3
	ld e,c			;4bf5
	ex af,af'		;4bf6
	rra			;4bf7
	ld (hl),0ach		;4bf8
l4bfah:
	ld b,h			;4bfa
	rrca			;4bfb
	exx			;4bfc
	rlca			;4bfd
	rst 0			;4bfe
	ret c			;4bff
	push af			;4c00
	call 0bc17h		;4c01
	and h			;4c04
	jp po,0a407h		;4c05
	di			;4c08
	daa			;4c09
	pop hl			;4c0a
	ld (hl),l		;4c0b
l4c0ch:
	ld b,h			;4c0c
	rrca			;4c0d
	rst 28h			;4c0e
	dec sp			;4c0f
	rrca			;4c10
	call nz,06486h		;4c11
	sub l			;4c14
	and l			;4c15
	rlca			;4c16
	add a,a			;4c17
	ld l,c			;4c18
	cp (hl)			;4c19
	ld a,(09c44h)		;4c1a
	sub 08dh		;4c1d
	and (hl)		;4c1f
	ret c			;4c20
	rla			;4c21
	adc a,(hl)		;4c22
	jp z,0c508h		;4c23
	ld a,c			;4c26
	ret z			;4c27
	rlca			;4c28
	defb 0ddh,0dch,04fh ;illegal sequence	;4c29
	sbc a,(hl)		;4c2c
	push bc			;4c2d
	ld (hl),a		;4c2e
	rrca			;4c2f
	ld l,01eh		;4c30
	ld b,(hl)		;4c32
	rra			;4c33
	ld d,c			;4c34
	xor (hl)		;4c35
	cp (hl)			;4c36
	rrca			;4c37
	ld a,l			;4c38
	rlca			;4c39
	jp nc,0bc9dh		;4c3a
	ld b,(hl)		;4c3d
	cpl			;4c3e
	ld a,h			;4c3f
l4c40h:
	ccf			;4c40
	ld e,086h		;4c41
	ccf			;4c43
	or e			;4c44
	push af			;4c45
	ld d,d			;4c46
	sub l			;4c47
l4c48h:
	rst 10h			;4c48
	rlca			;4c49
	defb 0fdh,091h,097h ;illegal sequence	;4c4a
	sbc a,c			;4c4d
l4c4eh:
	rlca			;4c4e
	xor 017h		;4c4f
	rlca			;4c51
	ld l,09ch		;4c52
	rrca			;4c54
	or b			;4c55
	and h			;4c56
	adc a,(hl)		;4c57
	adc a,a			;4c58
	dec e			;4c59
	ld c,b			;4c5a
	ld b,a			;4c5b
	ld d,c			;4c5c
	rra			;4c5d
	and (hl)		;4c5e
	cp e			;4c5f
	rrca			;4c60
	adc a,01ch		;4c61
	ld h,a			;4c63
	rrca			;4c64
	rlca			;4c65
	ld e,l			;4c66
	rrca			;4c67
	xor 02eh		;4c68
	rlca			;4c6a
	and l			;4c6b
	sub d			;4c6c
	call 00f76h		;4c6d
	cp l			;4c70
	ld d,a			;4c71
	rra			;4c72
	ld a,d			;4c73
	rrca			;4c74
	ld (hl),a		;4c75
	add a,(hl)		;4c76
	rrca			;4c77
	halt			;4c78
	jp nz,0271ch		;4c79
	sub l			;4c7c
	add a,(hl)		;4c7d
	and l			;4c7e
	nop			;4c7f
	xor 09ah		;4c80
	jr nz,l4c48h		;4c82
	rst 10h			;4c84
	jr l4cfbh		;4c85
l4c87h:
	add a,(hl)		;4c87
	and 018h		;4c88
	cp 073h			;4c8a
	add hl,sp		;4c8c
	adc a,d			;4c8d
	cp (hl)			;4c8e
l4c8fh:
	ld c,b			;4c8f
	or b			;4c90
	ret c			;4c91
	rst 28h			;4c92
	ret z			;4c93
l4c94h:
	ret p			;4c94
	or a			;4c95
	jr nz,l4c87h		;4c96
	ld d,c			;4c98
	adc a,020h		;4c99
	or l			;4c9b
	sbc a,(hl)		;4c9c
	sub e			;4c9d
	and b			;4c9e
	push bc			;4c9f
	add a,(hl)		;4ca0
	ld d,(hl)		;4ca1
	jr nc,l4cabh		;4ca2
	and 087h		;4ca4
	ld b,l			;4ca6
	pop hl			;4ca7
	jr nz,l4c40h		;4ca8
	sub (hl)		;4caa
l4cabh:
	cp d			;4cab
	ld b,c			;4cac
	ld d,0b5h		;4cad
	rst 0			;4caf
	push bc			;4cb0
	ld (hl),e		;4cb1
	ld d,0f7h		;4cb2
	inc (hl)		;4cb4
	ld e,(hl)		;4cb5
	call 04948h		;4cb6
	cp c			;4cb9
	rrca			;4cba
	sbc a,06ah		;4cbb
	rlca			;4cbd
	or 0cbh			;4cbe
	ret p			;4cc0
	inc sp			;4cc1
	ld d,c			;4cc2
	rst 8			;4cc3
	scf			;4cc4
	ret c			;4cc5
	ld c,e			;4cc6
l4cc7h:
	ret m			;4cc7
	dec hl			;4cc8
	adc a,072h		;4cc9
	or a			;4ccb
	ld (hl),d		;4ccc
	ld hl,(0da47h)		;4ccd
	or d			;4cd0
	ret m			;4cd1
	adc a,a			;4cd2
	ld h,l			;4cd3
	jp z,06ec0h		;4cd4
	ld a,a			;4cd7
	dec hl			;4cd8
	sub (hl)		;4cd9
	and b			;4cda
	adc a,d			;4cdb
	sbc a,(hl)		;4cdc
	jp po,l53cbh		;4cdd
	ld b,(hl)		;4ce0
	ld l,d			;4ce1
	ret nc			;4ce2
	jr c,l4cc7h		;4ce3
	ld a,(0e497h)		;4ce5
	xor 0b0h		;4ce8
	inc bc			;4cea
	call m,036cch		;4ceb
	rst 8			;4cee
	sbc a,08fh		;4cef
l4cf1h:
	ld c,h			;4cf1
	ld c,09ah		;4cf2
	jp l71cfh		;4cf4
	sub d			;4cf7
	rst 18h			;4cf8
	cp e			;4cf9
	add a,a			;4cfa
l4cfbh:
	dec de			;4cfb
	ld c,085h		;4cfc
	ld b,h			;4cfe
	ld d,0afh		;4cff
	ld h,l			;4d01
	and a			;4d02
	or c			;4d03
	djnz l4c8fh		;4d04
	add a,(hl)		;4d06
	and d			;4d07
	ld b,l			;4d08
	ld d,0c0h		;4d09
	ld h,l			;4d0b
	sub a			;4d0c
	ld (hl),b		;4d0d
	ld d,0adh		;4d0e
	ld h,c			;4d10
	or 008h			;4d11
l4d13h:
	inc e			;4d13
	ld d,088h		;4d14
	sub c			;4d16
	add a,(hl)		;4d17
	ret c			;4d18
	cp c			;4d19
	ld c,0f6h		;4d1a
	and (hl)		;4d1c
	djnz l4d65h		;4d1d
	sub a			;4d1f
	jp (hl)			;4d20
	and a			;4d21
	djnz l4d96h		;4d22
	adc a,a			;4d24
	ld h,a			;4d25
	ld e,a			;4d26
	ccf			;4d27
	inc (hl)		;4d28
	and c			;4d29
	cp a			;4d2a
	ccf			;4d2b
	ld d,l			;4d2c
	rra			;4d2d
l4d2eh:
	ccf			;4d2e
	push hl			;4d2f
	rst 28h			;4d30
	add hl,de		;4d31
	ccf			;4d32
	sub c			;4d33
	rst 28h			;4d34
	ex (sp),hl		;4d35
	rst 18h			;4d36
l4d37h:
	ld h,a			;4d37
	ret nz			;4d38
	ld h,d			;4d39
	add a,(hl)		;4d3a
	jr nz,l4cf1h		;4d3b
	rst 30h			;4d3d
	push af			;4d3e
	or (hl)			;4d3f
	xor b			;4d40
	rra			;4d41
	ld l,0a9h		;4d42
l4d44h:
	call 0decfh		;4d44
	rst 38h			;4d47
	ld l,l			;4d48
	add a,(hl)		;4d49
	ret c			;4d4a
	sub (hl)		;4d4b
	rst 20h			;4d4c
	di			;4d4d
	add a,e			;4d4e
	cp c			;4d4f
	rrca			;4d50
	rst 0			;4d51
	in a,(05bh)		;4d52
	daa			;4d54
	ret nz			;4d55
	add hl,sp		;4d56
	ld c,d			;4d57
l4d58h:
	ld e,c			;4d58
	ld d,b			;4d59
	rla			;4d5a
	ex (sp),hl		;4d5b
	in a,(0dfh)		;4d5c
	in a,(0dbh)		;4d5e
	cp e			;4d60
	inc de			;4d61
	ld b,(hl)		;4d62
	adc a,h			;4d63
	scf			;4d64
l4d65h:
	ld e,(hl)		;4d65
	dec de			;4d66
	adc a,e			;4d67
	ld d,0d4h		;4d68
	ld (hl),d		;4d6a
	cp (hl)			;4d6b
	call z,0c9f3h		;4d6c
	call nc,00acah		;4d6f
	adc a,(hl)		;4d72
	ret			;4d73
	defb 0cbh,035h ;sli l	;4d74
	sbc a,h			;4d76
	dec h			;4d77
	adc a,h			;4d78
	ld (08f71h),a		;4d79
	ld c,c			;4d7c
	sub a			;4d7d
l4d7eh:
	ld h,(hl)		;4d7e
	adc a,a			;4d7f
	ld d,(hl)		;4d80
	ret nc			;4d81
	ld d,d			;4d82
	inc sp			;4d83
	or d			;4d84
	ld c,a			;4d85
	ld c,016h		;4d86
	ld l,e			;4d88
	ld (01c87h),hl		;4d89
	ld l,a			;4d8c
	ret p			;4d8d
	rrca			;4d8e
	ld d,0f5h		;4d8f
	rrca			;4d91
	ld (hl),a		;4d92
	inc a			;4d93
	daa			;4d94
	rlca			;4d95
l4d96h:
	cp 02eh			;4d96
	ld a,(0df04h)		;4d98
	di			;4d9b
	and 0efh		;4d9c
l4d9eh:
	ld (0d304h),a		;4d9e
	ld de,03e99h		;4da1
	add a,b			;4da4
	inc bc			;4da5
	ld a,(00de0h)		;4da6
	dec c			;4da9
	cp a			;4daa
	ld (00de0h),a		;4dab
	ld h,e			;4dae
	add a,c			;4daf
	inc bc			;4db0
	ld (bc),a		;4db1
	inc bc			;4db2
	djnz l4d44h		;4db3
	inc bc			;4db5
	in a,(099h)		;4db6
	and 00dh		;4db8
	jr nz,l4d7eh		;4dba
	jp (hl)			;4dbc
	ld d,(hl)		;4dbd
	ld b,009h		;4dbe
	jp z,l56f0h		;4dc0
	push bc			;4dc3
	or a			;4dc4
	inc c			;4dc5
	pop bc			;4dc6
	ld b,a			;4dc7
	jr l4e2ah		;4dc8
	sub a			;4dca
	ld l,0f1h		;4dcb
	rst 38h			;4dcd
	add a,b			;4dce
	add a,009h		;4dcf
	sub e			;4dd1
	add hl,bc		;4dd2
	ld b,0e7h		;4dd3
	rst 38h			;4dd5
	and 0fdh		;4dd6
	ld a,(bc)		;4dd8
	ld sp,00388h		;4dd9
	ccf			;4ddc
	inc bc			;4ddd
	adc a,(hl)		;4dde
	add a,d			;4ddf
	ld c,e			;4de0
l4de1h:
	rrca			;4de1
	or 042h			;4de2
	ld c,e			;4de4
	nop			;4de5
	push de			;4de6
	push hl			;4de7
	exx			;4de8
	ex af,af'		;4de9
	jr nz,l4de1h		;4dea
	push bc			;4dec
	dec b			;4ded
	ld a,(l620eh)		;4dee
	dec a			;4df1
	nop			;4df2
	call nz,sub_72ach	;4df3
	ld hl,l7400h		;4df6
	call 0001eh		;4df9
	ld l,(hl)		;4dfc
	ld b,000h		;4dfd
	ld c,098h		;4dff
	ld hl,l6f3ah		;4e01
	ld a,0edh		;4e04
	and d			;4e06
	ld bc,0c2d1h		;4e07
	ld c,c			;4e0a
	ld d,a			;4e0b
	dec h			;4e0c
	ccf			;4e0d
	ld l,(hl)		;4e0e
	dec h			;4e0f
	nop			;4e10
sub_4e11h:
	ld l,a			;4e11
	ld d,a			;4e12
	add a,d			;4e13
	ld d,l			;4e14
	ld (hl),b		;4e15
	call 00145h		;4e16
	ld d,l			;4e19
	ret z			;4e1a
	dec l			;4e1b
	cp e			;4e1c
	adc a,a			;4e1d
	outi			;4e1e
	ld bc,0c2b4h		;4e20
l4e23h:
	sbc a,a			;4e23
l4e24h:
	jr nc,$+89		;4e24
	dec a			;4e26
	inc bc			;4e27
	pop hl			;4e28
	pop de			;4e29
l4e2ah:
	inc c			;4e2a
	pop bc			;4e2b
	pop af			;4e2c
	ex af,af'		;4e2d
	exx			;4e2e
	dec b			;4e2f
	ld de,03ec9h		;4e30
	add hl,bc		;4e33
	xor d			;4e34
	adc a,b			;4e35
	add a,a			;4e36
	set 4,b			;4e37
	or 002h			;4e39
	adc a,(hl)		;4e3b
	bit 2,c			;4e3c
	xor a			;4e3e
	rst 20h			;4e3f
	pop hl			;4e40
	and 01dh		;4e41
	ld c,b			;4e43
	xor b			;4e44
	or 052h			;4e45
	djnz $+8		;4e47
	xor a			;4e49
	adc a,b			;4e4a
	ld a,0f8h		;4e4b
	call nc,0e95fh		;4e4d
	ld (hl),e		;4e50
	and a			;4e51
	dec l			;4e52
	and e			;4e53
	push bc			;4e54
	call po,09cc0h		;4e55
	jp 0b700h		;4e58
	jp nz,l5827h		;4e5b
	call 0055dh		;4e5e
	call sub_6048h		;4e61
	ld (bc),a		;4e64
	ld a,(09094h)		;4e65
	ld (hl),l		;4e68
	dec b			;4e69
	jp m,03a5ch		;4e6a
	ld (de),a		;4e6d
	or 0ffh			;4e6e
	ld (000bah),a		;4e70
	ld a,(0c39fh)		;4e73
	and 040h		;4e76
	call nz,00321h		;4e78
	dec b			;4e7b
	ld a,001h		;4e7c
	ld (0c156h),a		;4e7e
	ld a,h			;4e81
	add a,08dh		;4e82
	ld b,c			;4e84
	dec b			;4e85
	xor a			;4e86
	ld hl,00010h		;4e87
	cp (hl)			;4e8a
	jp z,l5854h		;4e8b
	ld (hl),a		;4e8e
	call sub_6813h		;4e8f
	inc bc			;4e92
	ld b,c			;4e93
	jr nz,l4ec5h		;4e94
	call 0c802h		;4e96
	ld e,b			;4e99
	jr nz,l4ea8h		;4e9a
	call 03c15h		;4e9c
	ld c,c			;4e9f
	jr l4ea4h		;4ea0
	ld h,(hl)		;4ea2
	ld (bc),a		;4ea3
l4ea4h:
	ld (hl),d		;4ea4
	ld (bc),a		;4ea5
	inc h			;4ea6
	ld l,c			;4ea7
l4ea8h:
	ld (bc),a		;4ea8
	jr nc,l4eadh		;4ea9
	ld l,a			;4eab
	sbc a,b			;4eac
l4eadh:
	ld (bc),a		;4ead
	dec l			;4eae
	ld de,02478h		;4eaf
	call sub_63b7h		;4eb2
	sbc a,h			;4eb5
	ld (bc),a		;4eb6
	ld h,a			;4eb7
	nop			;4eb8
	ld e,e			;4eb9
	call sub_595ah		;4eba
	call sub_61a0h		;4ebd
	ei			;4ec0
	inc h			;4ec1
	call 0150ch		;4ec2
l4ec5h:
	inc bc			;4ec5
	ld (bc),a		;4ec6
	ld b,000h		;4ec7
	dec b			;4ec9
	ret			;4eca
	ld a,(0fbe9h)		;4ecb
	and 010h		;4ece
	jp nz,0b201h		;4ed0
	ld e,b			;4ed3
	ld a,(l58b1h)		;4ed4
	or a			;4ed7
	ret nz			;4ed8
	ld l,d			;4ed9
	sub b			;4eda
	ld b,0c3h		;4edb
	ld d,c			;4edd
	dec b			;4ede
	ld (0af00h),a		;4edf
	rlca			;4ee2
	ld a,(de)		;4ee3
	ld c,b			;4ee4
	jp pe,0011ah		;4ee5
	inc de			;4ee8
	jr nz,l4f1dh		;4ee9
	ld (bc),a		;4eeb
	ld b,e			;4eec
	pop bc			;4eed
	ld a,0e0h		;4eee
	ld (07aa4h),a		;4ef0
	jr nz,l4f2fh		;4ef3
	rst 8			;4ef5
	ld l,e			;4ef6
	ret z			;4ef7
	ld a,(0fbe8h)		;4ef8
	jr nc,$-51		;4efb
	ld (hl),a		;4efd
	add hl,bc		;4efe
	jp nz,l50ddh		;4eff
	ld e,b			;4f02
	dec h			;4f03
	ld b,0c9h		;4f04
	ld (00002h),a		;4f06
	jp nz,004c6h		;4f09
	ld (0c206h),a		;4f0c
	ld a,(08cd0h)		;4f0f
	jp z,0f631h		;4f12
	ld e,b			;4f15
	ld b,d			;4f16
	add hl,bc		;4f17
	ld l,048h		;4f18
	ld e,d			;4f1a
	rrca			;4f1b
	and l			;4f1c
l4f1dh:
	xor b			;4f1d
	inc d			;4f1e
	jp 00489h		;4f1f
	pop bc			;4f22
	defb 0edh ;next byte illegal after ed	;4f23
	adc a,b			;4f24
	ld (01004h),a		;4f25
	ld b,032h		;4f28
	dec c			;4f2a
	ex af,af'		;4f2b
	jp nz,00c32h		;4f2c
l4f2fh:
	inc h			;4f2f
	inc c			;4f30
	and 007h		;4f31
	jr nz,l4f43h		;4f33
	ld a,000h		;4f35
	add a,008h		;4f37
	cp 060h			;4f39
	jr nz,l4f3fh		;4f3b
	ld a,048h		;4f3d
l4f3fh:
	bit 0,d			;4f3f
	and 014h		;4f41
l4f43h:
	jp nz,01a22h		;4f43
	ld bc,00580h		;4f46
	dec b			;4f49
	jp nz,00d21h		;4f4a
	pop bc			;4f4d
	ld b,(hl)		;4f4e
	inc bc			;4f4f
	ld (hl),016h		;4f50
	xor a			;4f52
	call sub_5af9h		;4f53
	ld hl,(03c08h)		;4f56
	ld (0fe03h),a		;4f59
	and h			;4f5c
	inc bc			;4f5d
	ld b,030h		;4f5e
	call nc,078bdh		;4f60
	ld a,(00e09h)		;4f63
	jp nc,l57c0h		;4f66
	jr nc,l4fcch		;4f69
	dec a			;4f6b
	pop bc			;4f6c
	ld de,0a4cdh		;4f6d
	ld a,b			;4f70
	rlca			;4f71
	and a			;4f72
	ret			;4f73
	ld h,e			;4f74
	dec (hl)		;4f75
	ld h,b			;4f76
	ld e,e			;4f77
	jr c,l4fb4h		;4f78
	jr nz,l4fb8h		;4f7a
	ld a,(0c280h)		;4f7c
	ld de,00040h		;4f7f
	jp nz,0103eh		;4f82
	ld (0c15fh),a		;4f85
	ld b,007h		;4f88
	nop			;4f8a
	push de			;4f8b
	ld a,(hl)		;4f8c
	and 01fh		;4f8d
	cp 015h			;4f8f
	jp z,00022h		;4f91
	ld e,d			;4f94
	inc hl			;4f95
	or a			;4f96
	jp z,059b2h		;4f97
	cp 004h			;4f9a
	nop			;4f9c
	jr z,l4fe4h		;4f9d
	dec a			;4f9f
	call z,sub_5b1ch	;4fa0
	call nz,00756h		;4fa3
	ld e,d			;4fa6
	pop de			;4fa7
	push hl			;4fa8
	ldi			;4fa9
	ld bc,0e12dh		;4fab
	inc b			;4fae
	ld h,b			;4faf
	ld a,(hl)		;4fb0
	rst 30h			;4fb1
	inc de			;4fb2
	ld (bc),a		;4fb3
l4fb4h:
	inc de			;4fb4
	ld bc,0000dh		;4fb5
l4fb8h:
	add hl,bc		;4fb8
	ld a,(03035h)		;4fb9
	add a,002h		;4fbc
	ld a,(01efeh)		;4fbe
	ld bc,l73c2h		;4fc1
	ld e,c			;4fc4
l4fc5h:
	ret			;4fc5
	pop de			;4fc6
	ld bc,0120fh		;4fc7
	dec bc			;4fca
	ex de,hl		;4fcb
l4fcch:
	ld c,008h		;4fcc
	inc bc			;4fce
	rla			;4fcf
	call nc,sub_7e2bh	;4fd0
	ld bc,024feh		;4fd3
	jr z,l5015h		;4fd6
	inc hl			;4fd8
	push hl			;4fd9
	inc hl			;4fda
	nop			;4fdb
	ld b,d			;4fdc
	add hl,bc		;4fdd
	ld d,028h		;4fde
	add hl,bc		;4fe0
	xor d			;4fe1
	jr nz,l4fc5h		;4fe2
l4fe4h:
	call sub_5aefh		;4fe4
	ex af,af'		;4fe7
	jp l598ch		;4fe8
	inc hl			;4feb
	ld c,b			;4fec
	ld (hl),a		;4fed
	cp 000h			;4fee
	inc c			;4ff0
	jr z,l5005h		;4ff1
	and 003h		;4ff3
	jr z,l4ffbh		;4ff5
	pop hl			;4ff7
	push bc			;4ff8
	rrca			;4ff9
	dec hl			;4ffa
l4ffbh:
	add hl,hl		;4ffb
	pop hl			;4ffc
	inc de			;4ffd
	ld (hl),a		;4ffe
	add hl,bc		;4fff
	add a,e			;5000
l5001h:
	ld (hl),022h		;5001
	inc hl			;5003
	ld c,b			;5004
l5005h:
	ld (hl),006h		;5005
	ex af,af'		;5007
	nop			;5008
	inc hl			;5009
	jp 0360fh		;500a
	inc b			;500d
	ld a,044h		;500e
	ld (hl),04bh		;5010
	inc hl			;5012
l5013h:
	rla			;5013
	inc hl			;5014
l5015h:
	cp d			;5015
	ld de,0133eh		;5016
	ld (hl),001h		;5019
	inc hl			;501b
	call p,04781h		;501c
	ld a,(hl)		;501f
	sub b			;5020
	ld (hl),a		;5021
	rrca			;5022
	xor h			;5023
	or d			;5024
	ld a,000h		;5025
	dec hl			;5027
	djnz $+51		;5028
	pop hl			;502a
l502bh:
	ld a,(0c235h)		;502b
	cp d			;502e
	nop			;502f
	ret c			;5030
	cp e			;5031
	ret nc			;5032
	ld a,(0c234h)		;5033
	cp c			;5036
	ret c			;5037
	ld bc,010d6h		;5038
	cp c			;503b
	ret nc			;503c
	ld a,0f0h		;503d
	ld (l4811h),a		;503f
	add a,e			;5042
	ld (00f80h),a		;5043
	jp l5a94h		;5046
	ret			;5049
	ld a,(hl)		;504a
	sub 014h		;504b
	ex af,af'		;504d
	ld c,a			;504e
	push hl			;504f
	ld (hl),a		;5050
	jr $+89			;5051
	ld (bc),a		;5053
	add a,01eh		;5054
	ld e,a			;5056
	ld hl,0c229h		;5057
	call p,07e20h		;505a
	dec hl			;505d
	cp d			;505e
	jp c,03208h		;505f
	ld e,d			;5062
	cp e			;5063
	jp nc,l7e03h		;5064
	cp c			;5067
	call z,03208h		;5068
	pop bc			;506b
	ld a,(bc)		;506c
	ld a,(0c151h)		;506d
	add a,d			;5070
	jr nz,l5001h		;5071
	ld e,d			;5073
	ld a,b			;5074
	sub c			;5075
	add a,e			;5076
	jp nc,03205h		;5077
	pop hl			;507a
	jr c,l50c2h		;507b
	ld (de),a		;507d
	ld (hl),a		;507e
	inc hl			;507f
	ld (hl),a		;5080
	ld e,e			;5081
	ld a,09bh		;5082
	ret po			;5084
	ld de,00007h		;5085
	add hl,de		;5088
	pop bc			;5089
	ld (hl),d		;508a
	jp c,05ab4h		;508b
	cp (hl)			;508e
	jr l50c3h		;508f
	dec h			;5091
	rlca			;5092
	pop bc			;5093
	exx			;5094
	ld h,0b2h		;5095
	sbc a,b			;5097
	xor b			;5098
	pop bc			;5099
	dec hl			;509a
	rla			;509b
	sbc hl,de		;509c
	ret			;509e
	ld de,09210h		;509f
	inc hl			;50a2
l50a3h:
	ld e,c			;50a3
	pop bc			;50a4
	inc de			;50a5
	ld (hl),024h		;50a6
	inc hl			;50a8
	cp 030h			;50a9
	inc a			;50ab
	jr z,$+27		;50ac
	dec h			;50ae
	ld a,(0514ch)		;50af
	ret nz			;50b2
	cpl			;50b3
	dec b			;50b4
	ld b,(hl)		;50b5
	or d			;50b6
	ld h,h			;50b7
	call m,0c54ah		;50b8
	dec e			;50bb
	sub 080h		;50bc
	add hl,bc		;50be
	ld c,e			;50bf
	dec (hl)		;50c0
	ret			;50c1
l50c2h:
	ex af,af'		;50c2
l50c3h:
	add a,(hl)		;50c3
	jr nz,l513dh		;50c4
	ld b,048h		;50c6
	nop			;50c8
	ld b,(hl)		;50c9
	ret nz			;50ca
	ret			;50cb
	cp c			;50cc
	ld b,b			;50cd
	push hl			;50ce
	ld h,000h		;50cf
	ld l,b			;50d1
	ld h,b			;50d2
	add hl,hl		;50d3
l50d4h:
	nop			;50d4
	ld de,04803h		;50d5
	rla			;50d8
	add hl,de		;50d9
	push hl			;50da
	ld l,a			;50db
	inc c			;50dc
l50ddh:
	dec bc			;50dd
	rla			;50de
	ret nc			;50df
	dec l			;50e0
	add hl,de		;50e1
	ei			;50e2
	rla			;50e3
	pop hl			;50e4
	ret nc			;50e5
l50e6h:
	dec b			;50e6
	call 005b4h		;50e7
	pop hl			;50ea
	adc a,042h		;50eb
	and a			;50ed
	ld a,c			;50ee
	ld b,(hl)		;50ef
	bit 2,b			;50f0
	inc bc			;50f2
	jp c,l5804h		;50f3
	ld e,e			;50f6
	cp 0e3h			;50f7
	jp nc,02b04h		;50f9
	ld (bc),a		;50fc
	cp 012h			;50fd
	ld c,001h		;50ff
	jr c,l5108h		;5101
	call pe,00e60h		;5103
	pop hl			;5106
	ret c			;5107
l5108h:
	ld a,(0dc99h)		;5108
	inc a			;510b
	add hl,de		;510c
	daa			;510d
	ret z			;510e
	ex (sp),hl		;510f
	nop			;5110
	dec a			;5111
	jp z,l5b4fh		;5112
	ld a,c			;5115
	ld (085b9h),a		;5116
	ld a,b			;5119
	rst 20h			;511a
	jr c,l50e6h		;511b
	sbc a,b			;511d
	ex af,af'		;511e
	add hl,sp		;511f
	ex af,af'		;5120
	jr c,l50d4h		;5121
	ex af,af'		;5123
	ld h,c			;5124
	add a,a			;5125
	nop			;5126
	ld d,d			;5127
	ld (hl),c		;5128
	in a,(0cch)		;5129
	ld c,049h		;512b
	sub b			;512d
	daa			;512e
	ld (0c003h),a		;512f
	ld a,(00147h)		;5132
	pop bc			;5135
	ld h,a			;5136
	ld a,(0c148h)		;5137
	ld l,a			;513a
	ld a,(hl)		;513b
	inc c			;513c
l513dh:
	add a,b			;513d
	inc hl			;513e
	ld e,(hl)		;513f
	inc hl			;5140
	ld c,(hl)		;5141
	inc hl			;5142
	ld (0327dh),hl		;5143
	dec c			;5146
	ld a,h			;5147
	ld (l5c15h),a		;5148
	ld d,0efh		;514b
	ld h,d			;514d
	ld bc,01984h		;514e
	ld (hl),c		;5151
	dec hl			;5152
	ex de,hl		;5153
	ld bc,00910h		;5154
	ld d,b			;5157
	xor l			;5158
	ld a,(hl)		;5159
	inc c			;515a
	or a			;515b
	jr z,l517bh		;515c
	add hl,bc		;515e
	inc b			;515f
	ld l,e			;5160
	jr $+6			;5161
	inc de			;5163
	inc b			;5164
	ld e,d			;5165
	ld c,004h		;5166
	add hl,bc		;5168
	sub 004h		;5169
	inc b			;516b
	inc b			;516c
	nop			;516d
	ret nz			;516e
	ex de,hl		;516f
	ldir			;5170
	ret			;5172
	push hl			;5173
	ld de,02be2h		;5174
	call c,01452h		;5177
	dec b			;517a
l517bh:
	inc bc			;517b
	add hl,de		;517c
	djnz $-5		;517d
	pop hl			;517f
	di			;5180
	ld (093f9h),hl		;5181
	ld b,h			;5184
	ret m			;5185
	ld (bc),a		;5186
	push af			;5187
	sub d			;5188
	sbc a,(hl)		;5189
	sbc a,b			;518a
	add a,h			;518b
	di			;518c
	rlca			;518d
	call p,0c100h		;518e
	ld hl,l5fd0h		;5191
	call 0048bh		;5194
	ld a,(01344h)		;5197
	adc a,l			;519a
	ld b,a			;519b
	dec bc			;519c
	add a,a			;519d
	add a,b			;519e
	add a,012h		;519f
	call p,08ea6h		;51a1
	ld l,c			;51a4
	rst 18h			;51a5
	ld de,01bcdh		;51a6
	xor h			;51a9
	ld d,l			;51aa
	ret			;51ab
	ret z			;51ac
	jp p,03f27h		;51ad
	ld (0e10dh),a		;51b0
	di			;51b3
	ld hl,012a3h		;51b4
	ld c,d			;51b7
	ret			;51b8
	or e			;51b9
	ld de,03280h		;51ba
	inc bc			;51bd
	ld a,(006f2h)		;51be
	sub e			;51c1
	inc bc			;51c2
	di			;51c3
	or (hl)			;51c4
	dec d			;51c5
	ei			;51c6
	inc b			;51c7
l51c8h:
	add a,l			;51c8
	ld (0fe32h),a		;51c9
	ld d,h			;51cc
	rst 20h			;51cd
	sub (hl)		;51ce
	add a,b			;51cf
	ld d,0d6h		;51d0
l51d2h:
	ld a,(bc)		;51d2
	cp a			;51d3
	ld d,b			;51d4
	inc b			;51d5
	add hl,bc		;51d6
	dec c			;51d7
	jp nz,00a7ah		;51d8
	ld (0c1f7h),a		;51db
	ld a,e			;51de
	ld hl,(0135dh)		;51df
	inc hl			;51e2
	ld c,h			;51e3
	add hl,de		;51e4
	pop bc			;51e5
	nop			;51e6
	and h			;51e7
	ld e,h			;51e8
	ld b,006h		;51e9
	push bc			;51eb
	ld b,008h		;51ec
	ld b,h			;51ee
	push bc			;51ef
	jp 0045eh		;51f0
	push hl			;51f3
	ld hl,05ee3h		;51f4
	add hl,de		;51f7
	call c,01b44h		;51f8
	ld h,b			;51fb
	or a			;51fc
	add a,b			;51fd
	bit 0,a			;51fe
l5200h:
	jp z,l5c6eh		;5200
	rla			;5203
	and 0feh		;5204
	add a,0a3h		;5206
	ld de,l601dh		;5208
	adc a,l			;520b
	add a,b			;520c
	ld e,060h		;520d
	jp l5c76h		;520f
	sub 00ah		;5212
	inc bc			;5214
	ld a,(bc)		;5215
	jr z,l5239h		;5216
	jr nz,$-105		;5218
	out (021h),a		;521a
	ld h,b			;521c
	dec e			;521d
	ld hl,0e104h		;521e
	inc hl			;5221
	pop bc			;5222
	and 074h		;5223
	or c			;5225
	call 00d1fh		;5226
	add a,h			;5229
	inc b			;522a
	djnz $-74		;522b
	ld hl,(01158h)		;522d
	ld c,h			;5230
l5231h:
	jr nc,l5231h		;5231
	ld (00680h),hl		;5233
	call 05e82h		;5236
l5239h:
	jp l5cafh		;5239
	ld (bc),a		;523c
	ld hl,05ec3h		;523d
	ld de,l5ed3h		;5240
	sbc a,b			;5243
	ld d,d			;5244
	di			;5245
	jr nz,$+64		;5246
	rlca			;5248
	ld (047f1h),a		;5249
	pop bc			;524c
	cp b			;524d
	inc (hl)		;524e
	ex de,hl		;524f
	ld d,000h		;5250
	jp 086d1h		;5252
	push bc			;5255
	ld e,a			;5256
	add a,b			;5257
	jr nz,l526ah		;5258
	ld h,b			;525a
	ld (0b609h),a		;525b
	ld e,a			;525e
	ld (00afdh),a		;525f
	ret nc			;5262
	xor e			;5263
	ld (de),a		;5264
	ld h,b			;5265
	add a,h			;5266
	ld b,h			;5267
	ret p			;5268
	dec bc			;5269
l526ah:
	call p,00294h		;526a
	push af			;526d
	ld (bc),a		;526e
	adc a,l			;526f
	or c			;5270
	ei			;5271
	add a,d			;5272
	ld e,(hl)		;5273
	push hl			;5274
	jr c,$+104		;5275
	di			;5277
	ret pe			;5278
	add a,0d0h		;5279
	ld b,a			;527b
	defb 0edh ;next byte illegal after ed	;527c
	ld e,h			;527d
	adc a,c			;527e
	add hl,de		;527f
	rra			;5280
	jp c,008cfh		;5281
	ret			;5284
	ld hl,06c6fh		;5285
	inc bc			;5288
	nop			;5289
	sub l			;528a
	jp 0c412h		;528b
	ld (de),a		;528e
l528fh:
	ld e,l			;528f
	call nz,0f816h		;5290
	ret			;5293
	cp (hl)			;5294
	add a,l			;5295
	dec a			;5296
	ld (hl),a		;5297
	and d			;5298
	inc b			;5299
	ret nz			;529a
	ld (hl),a		;529b
	adc a,a			;529c
	sbc a,c			;529d
	cp a			;529e
	sub e			;529f
	or c			;52a0
	inc l			;52a1
	rst 30h			;52a2
	rst 18h			;52a3
	dec c			;52a4
	nop			;52a5
sub_52a6h:
	jp z,l5d3ah		;52a6
	rlca			;52a9
	ld h,l			;52aa
	ld bc,0f707h		;52ab
	jr nz,l52beh		;52ae
	pop bc			;52b0
	jp 05325h		;52b1
	ld e,l			;52b4
	ex de,hl		;52b5
	jr z,l52bfh		;52b6
	xor c			;52b8
	call nz,0a623h		;52b9
	ld h,l			;52bc
	add hl,hl		;52bd
l52beh:
	ex de,hl		;52be
l52bfh:
	inc h			;52bf
	sbc a,0d0h		;52c0
	inc bc			;52c2
	jp nz,l5c0ch		;52c3
	ld l,0c3h		;52c6
	ld e,e			;52c8
	add hl,hl		;52c9
	inc c			;52ca
	ld l,c			;52cb
	add hl,sp		;52cc
	defb 0fdh,031h,006h ;illegal sequence	;52cd
	ld a,(0368bh)		;52d0
	ld b,h			;52d3
	ld l,(hl)		;52d4
	ld c,c			;52d5
	rst 18h			;52d6
	ld e,b			;52d7
	and d			;52d8
l52d9h:
	dec h			;52d9
	sub l			;52da
	dec e			;52db
	jp p,017b8h		;52dc
	rst 38h			;52df
	ld b,(hl)		;52e0
	ret nz			;52e1
	ld h,(hl)		;52e2
	cp a			;52e3
	inc de			;52e4
	call 00e01h		;52e5
	pop af			;52e8
	ld c,011h		;52e9
	rrca			;52eb
	call nc,0fe85h		;52ec
	ex af,af'		;52ef
	dec h			;52f0
	and e			;52f1
	ld (de),a		;52f2
	xor 081h		;52f3
	ld c,d			;52f5
	inc b			;52f6
	ld c,(hl)		;52f7
	adc a,d			;52f8
	exx			;52f9
	dec e			;52fa
	ld a,(de)		;52fb
	jp nz,l5db1h		;52fc
	and (hl)		;52ff
	add hl,bc		;5300
	ld e,(hl)		;5301
	ld hl,0bfc1h		;5302
	jp po,02ce5h		;5305
	inc (hl)		;5308
	ld b,(hl)		;5309
	or 0edh			;530a
	push hl			;530c
	dec de			;530d
l530eh:
	rst 30h			;530e
	nop			;530f
	jp nz,l5dceh		;5310
	ld hl,0e2b2h		;5313
	jr l530eh		;5316
	add hl,hl		;5318
	sbc a,d			;5319
	add a,c			;531a
	cp 0f0h			;531b
	jp nz,l5dcbh		;531d
	add a,l			;5320
	jr z,l52d9h		;5321
	jp c,0881ch		;5323
	sub e			;5326
	ei			;5327
	dec de			;5328
	defb 0fdh,01bh,089h ;illegal sequence	;5329
	adc a,d			;532c
	jr nc,l534ah		;532d
	ret po			;532f
	jp nz,0e752h		;5330
	dec de			;5333
	sub (hl)		;5334
l5335h:
	and a			;5335
	ld a,(02afdh)		;5336
	dec l			;5339
	or 02ah			;533a
	sub h			;533c
	xor d			;533d
	or d			;533e
	sub a			;533f
	inc l			;5340
	jr c,l5364h		;5341
	xor 028h		;5343
	sub e			;5345
	xor a			;5346
	sub b			;5347
	add hl,bc		;5348
	or h			;5349
l534ah:
	ld h,(hl)		;534a
	sbc a,l			;534b
l534ch:
	jr nc,l534ch		;534c
	rra			;534e
	adc a,d			;534f
	adc a,b			;5350
	cp d			;5351
	ld d,b			;5352
	pop af			;5353
	ld e,a			;5354
	and h			;5355
	rra			;5356
	push de			;5357
	ld b,c			;5358
	ret z			;5359
	dec b			;535a
	inc de			;535b
	ld h,b			;535c
	xor 001h		;535d
	sra d			;535f
l5361h:
	inc b			;5361
	adc a,c			;5362
	dec c			;5363
l5364h:
	cp c			;5364
	ld e,a			;5365
	xor (hl)		;5366
	ld h,088h		;5367
	ld l,b			;5369
	ld a,(hl)		;536a
	xor h			;536b
	ld h,b			;536c
	jp nz,0e0d1h		;536d
	ld a,b			;5370
	daa			;5371
	ld c,a			;5372
	ld e,(hl)		;5373
l5374h:
	ret po			;5374
	add a,h			;5375
	ld c,0e0h		;5376
	jp pe,0e00fh		;5378
	ld h,e			;537b
	ld d,a			;537c
	ld e,(hl)		;537d
	ld a,(bc)		;537e
	ld h,(hl)		;537f
	ret po			;5380
	add a,l			;5381
	ld a,(bc)		;5382
	inc hl			;5383
	ex de,hl		;5384
	ld hl,l5a24h		;5385
	sbc a,c			;5388
	and e			;5389
	daa			;538a
	ld (de),a		;538b
	push de			;538c
	ld h,d			;538d
	inc b			;538e
	jp nz,01b33h		;538f
	sub e			;5392
	dec b			;5393
	ld a,(046a8h)		;5394
	defb 0edh ;next byte illegal after ed	;5397
	daa			;5398
	or 0b0h			;5399
	ld d,h			;539b
	ld a,(0d148h)		;539c
l539fh:
	ld c,c			;539f
	jp z,0a5dfh		;53a0
	rst 0			;53a3
	daa			;53a4
	and d			;53a5
	ld (bc),a		;53a6
	sub (hl)		;53a7
l53a8h:
	ld e,(hl)		;53a8
	ld a,(0b5f9h)		;53a9
	ld c,l			;53ac
	rst 38h			;53ad
	daa			;53ae
	or c			;53af
	ld a,(bc)		;53b0
	jp nz,01386h		;53b1
	rst 10h			;53b4
	sub b			;53b5
	ld de,(0d792h)		;53b6
	ret			;53ba
	adc a,d			;53bb
	adc a,045h		;53bc
	ld e,a			;53be
	sub 017h		;53bf
	and b			;53c1
	ld h,d			;53c2
	halt			;53c3
	ld a,(08c26h)		;53c4
	ret nz			;53c7
	ret nz			;53c8
	inc l			;53c9
	add hl,de		;53ca
l53cbh:
	ex de,hl		;53cb
	pop hl			;53cc
l53cdh:
	ld bc,00252h		;53cd
	adc a,e			;53d0
	ld c,e			;53d1
	call m,02067h		;53d2
	nop			;53d5
	ld bc,l40dah		;53d6
	adc a,b			;53d9
	ld bc,04020h		;53da
	nop			;53dd
sub_53deh:
	ld h,b			;53de
	ld b,b			;53df
	ex af,af'		;53e0
	add a,b			;53e1
	ld b,b			;53e2
	and b			;53e3
	ld h,b			;53e4
	out (08ah),a		;53e5
	jr nz,l5449h		;53e7
	ld a,(bc)		;53e9
	nop			;53ea
	nop			;53eb
	add a,b			;53ec
	ld h,b			;53ed
	and b			;53ee
	add a,b			;53ef
	nop			;53f0
	add a,b			;53f1
	jr nz,l5374h		;53f2
	xor b			;53f4
	inc d			;53f5
l53f6h:
	ld a,(bc)		;53f6
	nop			;53f7
	and b			;53f8
	and b			;53f9
	inc c			;53fa
	nop			;53fb
	and b			;53fc
	jr nz,l539fh		;53fd
	ld e,0a0h		;53ff
	inc d			;5401
	ld a,(bc)		;5402
	ret nz			;5403
	nop			;5404
	ret nz			;5405
l5406h:
	jr nz,l5408h		;5406
l5408h:
	ret nz			;5408
	ld b,b			;5409
	ret nz			;540a
	ld h,b			;540b
	ret nz			;540c
	add a,b			;540d
	ret nz			;540e
	and b			;540f
	nop			;5410
	ret po			;5411
	nop			;5412
	ret po			;5413
	jr nz,l53f6h		;5414
	ld b,b			;5416
	ret po			;5417
	ld h,b			;5418
	dec d			;5419
	ret po			;541a
	add a,b			;541b
	ret po			;541c
	jr nz,l546ah		;541d
	nop			;541f
	ld d,l			;5420
	ld c,d			;5421
	ld b,b			;5422
	ld (hl),02eh		;5423
	ld e,e			;5425
	nop			;5426
	ld e,b			;5427
l5428h:
	ld c,(hl)		;5428
	ld d,b			;5429
	ld b,h			;542a
	ld (hl),001h		;542b
	ld b,b			;542d
	ld hl,l4000h		;542e
	ld b,c			;5431
	ld b,b			;5432
	ld h,c			;5433
	ld b,b			;5434
	add a,c			;5435
l5436h:
	ld b,b			;5436
	and c			;5437
	ld c,c			;5438
	ld h,b			;5439
	rst 20h			;543a
	rst 8			;543b
	ld d,b			;543c
	ld b,c			;543d
	ld h,b			;543e
	ld h,c			;543f
	ld bc,08160h		;5440
	ld h,b			;5443
	and c			;5444
	add a,b			;5445
	ld bc,09d80h		;5446
l5449h:
	ld (hl),b		;5449
	ld b,c			;544a
	add a,b			;544b
	ld h,c			;544c
	nop			;544d
	add a,b			;544e
	add a,c			;544f
	add a,b			;5450
	and c			;5451
	and b			;5452
	ld bc,021a0h		;5453
	ld a,(l41a0h)		;5456
	defb 0ddh,004h,0a0h ;illegal sequence	;5459
	add a,c			;545c
	and b			;545d
	and c			;545e
	ret nz			;545f
	ret m			;5460
	ret nz			;5461
	ld hl,041c0h		;5462
	ret nz			;5465
	ld h,c			;5466
	nop			;5467
	ret nz			;5468
	add a,c			;5469
l546ah:
	ret nz			;546a
	and c			;546b
	ret po			;546c
	ld bc,021e0h		;546d
	nop			;5470
	ret po			;5471
	ld b,c			;5472
	ret po			;5473
	ld h,c			;5474
	ret po			;5475
	add a,c			;5476
	ret po			;5477
	and c			;5478
	nop			;5479
	jr nz,$+3		;547a
	jr nz,l549fh		;547c
	jr nz,$+67		;547e
	jr nz,$+99		;5480
	ld (bc),a		;5482
	jr nz,l5406h		;5483
	jr nz,l5428h		;5485
	nop			;5487
	ld bc,0e0d9h		;5488
	nop			;548b
	ld b,c			;548c
	nop			;548d
	ld h,c			;548e
	rla			;548f
	nop			;5490
	add a,c			;5491
	nop			;5492
	dec bc			;5493
	nop			;5494
	ld (hl),011h		;5495
	ld bc,0009ah		;5497
	ret nc			;549a
	dec bc			;549b
	ret po			;549c
	add a,003h		;549d
l549fh:
	ld (bc),a		;549f
	ld (de),a		;54a0
	daa			;54a1
	sbc a,c			;54a2
	ld c,d			;54a3
	nop			;54a4
	ld e,084h		;54a5
	ld (bc),a		;54a7
	add hl,bc		;54a8
	sbc a,(hl)		;54a9
	ld (hl),c		;54aa
	nop			;54ab
	rrca			;54ac
	ld l,002h		;54ad
	dec e			;54af
	dec b			;54b0
	pop hl			;54b1
	inc bc			;54b2
	add hl,hl		;54b3
	defb 0ddh,041h,002h ;illegal sequence	;54b4
	ld b,000h		;54b7
	dec b			;54b9
	inc de			;54ba
	add a,(hl)		;54bb
	sub b			;54bc
	jr nz,l54c3h		;54bd
	ld (01b10h),a		;54bf
	rla			;54c2
l54c3h:
	ld sp,00008h		;54c3
	ld c,d			;54c6
	ret po			;54c7
	inc b			;54c8
	cp l			;54c9
	ld c,d			;54ca
	ld (hl),d		;54cb
	add hl,bc		;54cc
	inc bc			;54cd
	exx			;54ce
	ld (de),a		;54cf
	dec bc			;54d0
	jr nz,l54ffh		;54d1
	cp e			;54d3
	ld c,049h		;54d4
	or d			;54d6
	jp 01dbah		;54d7
	call 01603h		;54da
	ld h,c			;54dd
	call 005bdh		;54de
	ld hl,022abh		;54e1
	ld a,(0cd08h)		;54e4
	and b			;54e7
	dec a			;54e8
	ld bc,085e9h		;54e9
	ld e,b			;54ec
	ld d,08fh		;54ed
	ld e,h			;54ef
	ld b,a			;54f0
	ld h,b			;54f1
	ex af,af'		;54f2
	dec hl			;54f3
	add a,(hl)		;54f4
	ex af,af'		;54f5
	ld c,(hl)		;54f6
l54f7h:
	adc a,e			;54f7
	ex af,af'		;54f8
	call c,008dch		;54f9
	add a,d			;54fc
	ld (hl),b		;54fd
	inc hl			;54fe
l54ffh:
	ld (hl),c		;54ff
	inc hl			;5500
	ld (hl),d		;5501
	sbc a,060h		;5502
	sub (hl)		;5504
	ld h,c			;5505
	ld (08c9bh),a		;5506
	ld (bc),a		;5509
	ld h,b			;550a
	ld h,a			;550b
	jp c,0b94bh		;550c
	jp nz,l6195h		;550f
	xor e			;5512
	sub e			;5513
	or l			;5514
	ld c,h			;5515
	ret			;5516
	inc b			;5517
	ld h,d			;5518
	ld (0020ah),a		;5519
	dec bc			;551c
	ld d,(hl)		;551d
	ld h,d			;551e
	add a,a			;551f
	ld (de),a		;5520
	ld a,l			;5521
	ld h,d			;5522
	inc h			;5523
	nop			;5524
	dec bc			;5525
	ld c,b			;5526
	rrca			;5527
	ld (bc),a		;5528
	ex (sp),hl		;5529
	daa			;552a
	ld a,d			;552b
	ld h,(hl)		;552c
	inc h			;552d
	ld (0027eh),a		;552e
	ld a,c			;5531
	dec bc			;5532
	ld a,e			;5533
	add a,c			;5534
	ld (bc),a		;5535
	ld d,e			;5536
	add a,e			;5537
l5538h:
	ld (l627ch),a		;5538
	ld de,02355h		;553b
	ret m			;553e
	nop			;553f
	inc b			;5540
l5541h:
	ld h,d			;5541
	ld hl,l6dach		;5542
	ld de,08c0fh		;5545
	sbc a,e			;5548
	ld l,008h		;5549
	ld (hl),c		;554b
	and l			;554c
	cpl			;554d
	call m,0ccafh		;554e
	ld e,c			;5551
	sub d			;5552
	sbc a,l			;5553
	xor h			;5554
	ex af,af'		;5555
	sub b			;5556
	ld d,b			;5557
	rst 28h			;5558
	ld a,0e7h		;5559
	ld (0e45fh),a		;555b
	ret po			;555e
	inc c			;555f
	add a,l			;5560
	inc bc			;5561
	ld d,l			;5562
	ld (bc),a		;5563
	add a,d			;5564
	ld h,e			;5565
	add a,(hl)		;5566
	jp pe,00affh		;5567
	jr nc,l54f7h		;556a
	ld (l75cdh),hl		;556c
	ld e,(hl)		;556f
	ld (hl),c		;5570
	or h			;5571
	ld (0acf2h),a		;5572
	ld bc,l618eh		;5575
	ld de,0018eh		;5578
	ld bc,0ba03h		;557b
	ld c,c			;557e
	pop de			;557f
	add a,b			;5580
	ld c,d			;5581
	ld (l689ah),hl		;5582
	pop bc			;5585
	cp (hl)			;5586
	ld (bc),a		;5587
	sub b			;5588
	call m,0cd74h		;5589
	ld l,b			;558c
	inc sp			;558d
	adc a,c			;558e
	ld b,h			;558f
	ld a,032h		;5590
	ld a,(075a6h)		;5592
	ld a,0bfh		;5595
	rst 8			;5597
	or d			;5598
	adc a,l			;5599
	ex (sp),hl		;559a
	inc hl			;559b
	halt			;559c
	ld a,c			;559d
	ld sp,hl		;559e
	ld h,b			;559f
	add a,005h		;55a0
	ld a,(088d1h)		;55a2
	call po,025c2h		;55a5
	adc a,d			;55a8
	xor h			;55a9
	ld e,a			;55aa
	ld (0c157h),hl		;55ab
	sbc a,(hl)		;55ae
	jr nc,$-50		;55af
	jp 0ca42h		;55b1
	jp 03a56h		;55b4
	dec bc			;55b7
	call m,0c444h		;55b8
	jp c,03a48h		;55bb
	rla			;55be
	rrca			;55bf
	call nz,07f99h		;55c0
	ld c,0fdh		;55c3
	sub d			;55c5
	ld b,(hl)		;55c6
	dec bc			;55c7
	sbc a,h			;55c8
	ld a,(de)		;55c9
	rr d			;55ca
	ld d,d			;55cc
	ld a,b			;55cd
	ld a,(de)		;55ce
	ld d,l			;55cf
	ld c,0b8h		;55d0
	defb 0ddh,017h,081h ;illegal sequence	;55d2
	call po,00a29h		;55d5
	jp c,l6451h		;55d8
	ld c,0f3h		;55db
	inc bc			;55dd
	adc a,c			;55de
	add a,h			;55df
	ld (08499h),a		;55e0
	ld de,00458h		;55e3
	ld de,09676h		;55e6
	ld de,0c964h		;55e9
	ld l,e			;55ec
	ld c,087h		;55ed
	nop			;55ef
	add hl,bc		;55f0
	ld (01bd9h),a		;55f1
	jp (hl)			;55f4
	ld (bc),a		;55f5
	jr nz,l5661h		;55f6
	ld (bc),a		;55f8
	ld a,c			;55f9
	add a,h			;55fa
	ret			;55fb
	nop			;55fc
	ld h,h			;55fd
	sub 096h		;55fe
	ret z			;5600
	rst 0			;5601
	inc bc			;5602
	nop			;5603
	nop			;5604
	adc a,b			;5605
	call 061bfh		;5606
	ret nc			;5609
	add a,h			;560a
	ld h,(hl)		;560b
	call 09b01h		;560c
	ld l,d			;560f
	call sub_70aeh		;5610
	call 0bb62h		;5613
	call nz,08ea1h		;5616
	or a			;5619
	sbc a,h			;561a
	nop			;561b
	ld h,d			;561c
	call l6be3h+1		;561d
	call 00120h		;5620
	ld h,a			;5623
	call sub_72c2h		;5624
	ld a,(0c396h)		;5627
	rst 30h			;562a
	ret nc			;562b
	ld a,(0c397h)		;562c
	jp pe,003f2h		;562f
	inc bc			;5632
	jp z,061dah		;5633
	cp 0b4h			;5636
	ret c			;5638
	sub 010h		;5639
	ld b,030h		;563b
	sbc a,b			;563d
	and a			;563e
	ld a,b			;563f
	ret			;5640
	adc a,h			;5641
	sub l			;5642
	inc h			;5643
	dec a			;5644
	pop bc			;5645
	xor 079h		;5646
	jp 0274dh		;5648
	jr z,$-35		;564b
	daa			;564d
	ret m			;564e
	inc d			;564f
	ld bc,0b580h		;5650
	cp l			;5653
	add a,e			;5654
	add a,b			;5655
	ld (bc),a		;5656
	ld d,b			;5657
	inc c			;5658
	inc d			;5659
	inc c			;565a
	sub c			;565b
	or e			;565c
	defb 0edh ;next byte illegal after ed	;565d
	pop bc			;565e
	nop			;565f
	add hl,bc		;5660
l5661h:
	ld c,096h		;5661
	nop			;5663
	inc bc			;5664
	ld (hl),l		;5665
	ld b,003h		;5666
	rst 0			;5668
	inc b			;5669
	inc sp			;566a
	nop			;566b
	ld (bc),a		;566c
	dec b			;566d
	rst 0			;566e
	inc b			;566f
	ld e,l			;5670
	ld (bc),a		;5671
	ld (bc),a		;5672
	ld (hl),l		;5673
	ld bc,0b302h		;5674
	nop			;5677
	inc bc			;5678
	ld b,b			;5679
	adc a,a			;567a
	scf			;567b
	ld l,04bh		;567c
	dec hl			;567e
	sbc a,e			;567f
	adc a,d			;5680
	and d			;5681
	rst 20h			;5682
	inc b			;5683
	xor c			;5684
	dec b			;5685
	ld (bc),a		;5686
	ld b,0c4h		;5687
	sbc a,e			;5689
	and d			;568a
	ld c,c			;568b
	call m,0a2e0h		;568c
	ld h,d			;568f
	ld a,(l78e4h)		;5690
	ld h,c			;5693
	add a,014h		;5694
	ld b,h			;5696
	ld h,(hl)		;5697
	inc bc			;5698
	ret m			;5699
	ld h,l			;569a
	inc bc			;569b
	and b			;569c
	add a,003h		;569d
	daa			;569f
	inc bc			;56a0
	ld de,064b1h		;56a1
	inc bc			;56a4
	ld l,(hl)		;56a5
	ld h,e			;56a6
	adc a,e			;56a7
	jr nc,$+41		;56a8
	ld h,e			;56aa
	ld a,(09aa2h)		;56ab
	ret po			;56ae
	add hl,hl		;56af
	inc bc			;56b0
sub_56b1h:
	ld e,a			;56b1
	and h			;56b2
	jp (hl)			;56b3
	dec b			;56b4
	ld h,c			;56b5
	sub h			;56b6
	ret c			;56b7
	ld hl,0c1cah		;56b8
	ld (0e07eh),a		;56bb
	call z,0c903h		;56be
	dec de			;56c1
	ld h,d			;56c2
	dec a			;56c3
	dec de			;56c4
	ld a,(089a5h)		;56c5
	adc a,d			;56c8
	sub l			;56c9
	sub 006h		;56ca
	cp b			;56cc
	ld (de),a		;56cd
	sbc a,a			;56ce
	ld hl,(006e2h)		;56cf
l56d2h:
	defb 0ddh,01dh,047h ;illegal sequence	;56d2
	call 020d4h		;56d5
	ld c,a			;56d8
	srl h			;56d9
	inc bc			;56db
	inc a			;56dc
	ld e,c			;56dd
	ld d,b			;56de
	inc a			;56df
	dec h			;56e0
	inc de			;56e1
	add hl,bc		;56e2
	ld h,e			;56e3
	xor b			;56e4
	dec c			;56e5
	jp z,l6318h		;56e6
	inc hl			;56e9
	and h			;56ea
	rst 38h			;56eb
	ret p			;56ec
	ld h,0abh		;56ed
	adc a,l			;56ef
l56f0h:
	ld c,0ceh		;56f0
	jp p,l496bh		;56f2
	ld (de),a		;56f5
	dec hl			;56f6
	and (hl)		;56f7
	ld l,c			;56f8
	inc d			;56f9
	jp nz,l5735h		;56fa
	ret nz			;56fd
	ld sp,03998h		;56fe
	ld a,08ch		;5701
	add hl,sp		;5703
	ld h,063h		;5704
	push bc			;5706
	cp b			;5707
	pop de			;5708
	sub d			;5709
	dec b			;570a
	ret nz			;570b
	ex (sp),hl		;570c
	sub l			;570d
	jr l573ah		;570e
	ld e,l			;5710
	ld l,b			;5711
	ld a,(de)		;5712
	jp po,l5bcah		;5713
	add a,b			;5716
	ld e,c			;5717
	ld (l64cah),hl		;5718
	ld h,e			;571b
	ld a,r			;571c
l571eh:
	sbc a,e			;571e
	add a,h			;571f
	ld b,031h		;5720
	inc de			;5722
	add a,0b8h		;5723
	ld d,l			;5725
l5726h:
	ld b,e			;5726
	ld e,d			;5727
	ld c,(hl)		;5728
	ex af,af'		;5729
	sub 008h		;572a
	inc de			;572c
	nop			;572d
	jp z,l640ah		;572e
	call 018efh		;5731
	rst 10h			;5734
l5735h:
	xor (hl)		;5735
	call pe,02c13h		;5736
	cp e			;5739
l573ah:
	inc (hl)		;573a
	ld a,e			;573b
	ld d,e			;573c
	ld l,l			;573d
	ld h,e			;573e
	push hl			;573f
	adc a,(hl)		;5740
	or b			;5741
	dec b			;5742
	sub l			;5743
	dec l			;5744
	adc a,d			;5745
	add a,a			;5746
	in a,(02ch)		;5747
	cp b			;5749
	or (hl)			;574a
	or l			;574b
	ld (01d58h),a		;574c
	dec d			;574f
	call sub_5b67h		;5750
	sub e			;5753
	nop			;5754
	ld (08576h),a		;5755
	ld hl,08571h		;5758
	ld de,0903bh		;575b
	jp nz,097ffh		;575e
	or d			;5761
	rrca			;5762
	ld c,(hl)		;5763
	and b			;5764
	rrca			;5765
	sbc a,l			;5766
	and d			;5767
	rrca			;5768
	ld a,(00fb0h)		;5769
	ld (hl),h		;576c
	sub d			;576d
	rrca			;576e
	ret nz			;576f
	call po,0210fh		;5770
	add a,c			;5773
	sbc a,h			;5774
	ld a,(bc)		;5775
	ret nc			;5776
	ld a,(bc)		;5777
	call nz,sub_52a6h	;5778
	ld b,(hl)		;577b
	add a,e			;577c
	sub 058h		;577d
	call pe,0373ah		;577f
	dec l			;5782
	ld h,h			;5783
	pop de			;5784
	jr nz,l578bh		;5785
	ld b,001h		;5787
	ld c,001h		;5789
l578bh:
	ld b,h			;578b
	ld e,0cfh		;578c
	ex af,af'		;578e
	nop			;578f
	ld h,h			;5790
	inc b			;5791
	inc c			;5792
	ld e,004h		;5793
	ld hl,0c238h		;5795
	nop			;5798
	call sub_642eh		;5799
	ld hl,0c23ch		;579c
	ld a,b			;579f
	sub e			;57a0
	ld l,d			;57a1
	ld b,a			;57a2
	ex af,af'		;57a3
	ld a,b			;57a4
	ex af,af'		;57a5
	ld b,083h		;57a6
	ld b,a			;57a8
	ld a,c			;57a9
	sub e			;57aa
	ld c,a			;57ab
	dec bc			;57ac
	cp d			;57ad
	ld a,h			;57ae
	inc d			;57af
	adc a,b			;57b0
	cp a			;57b1
	ld a,(hl)		;57b2
l57b3h:
	add a,b			;57b3
	ld d,(hl)		;57b4
	cp 0c0h			;57b5
	dec b			;57b7
	ld h,h			;57b8
	cp 0dch			;57b9
	jp nc,08104h		;57bb
	ret z			;57be
	add a,c			;57bf
l57c0h:
	ex af,af'		;57c0
	cp 01ah			;57c1
	jp c,00d77h		;57c3
	ret c			;57c6
	jp nc,004a3h		;57c7
	dec c			;57ca
	ld (hl),044h		;57cb
	or h			;57cd
	adc a,0ffh		;57ce
	nop			;57d0
	jp nz,07e57h		;57d1
	sub 006h		;57d4
	cp d			;57d6
	ld (hl),b		;57d7
	ret nc			;57d8
	rst 8			;57d9
	cp d			;57da
	ld (hl),c		;57db
	ret c			;57dc
	rst 38h			;57dd
	inc c			;57de
	ld h,023h		;57df
	dec c			;57e1
	ld a,(bc)		;57e2
	dec c			;57e3
	ld d,e			;57e4
	inc bc			;57e5
	dec c			;57e6
	rst 8			;57e7
	add a,d			;57e8
	ret nc			;57e9
l57eah:
	ld a,048h		;57ea
	ld b,a			;57ec
	ld (03606h),a		;57ed
	nop			;57f0
	ex (sp),hl		;57f1
	and b			;57f2
	ld (hl),038h		;57f3
	ld a,(0898ah)		;57f5
	sub a			;57f8
	ld l,c			;57f9
	inc bc			;57fa
	ret			;57fb
	jr l57b3h		;57fc
	jp nz,0e75dh		;57fe
	dec e			;5801
	ld l,b			;5802
l5803h:
	xor l			;5803
l5804h:
	jp nz,092bbh		;5804
	xor h			;5807
	ld (l7e06h),hl		;5808
l580bh:
	push hl			;580b
	ld b,c			;580c
	jp nc,l649eh		;580d
	push hl			;5810
	ld (hl),c		;5811
	rst 30h			;5812
	ret			;5813
	ld de,036d9h		;5814
	inc h			;5817
	dec c			;5818
	dec h			;5819
	ei			;581a
	sub e			;581b
	jr z,l5843h		;581c
	ld l,0e8h		;581e
	ld h,c			;5820
	ld (hl),d		;5821
	inc a			;5822
	and a			;5823
	ld d,d			;5824
	dec b			;5825
	cp d			;5826
l5827h:
	inc d			;5827
	rst 20h			;5828
	ld h,c			;5829
	ld b,b			;582a
	inc bc			;582b
	ld bc,09a20h		;582c
	ld b,02fh		;582f
	ld hl,l6515h		;5831
	jp z,01028h		;5834
	ld h,l			;5837
	sbc a,b			;5838
	jr c,$+35		;5839
	dec de			;583b
	rlca			;583c
	adc a,c			;583d
	adc a,021h		;583e
	rlca			;5840
	ld d,0deh		;5841
l5843h:
	ld h,h			;5843
	add a,e			;5844
	ld a,b			;5845
	pop af			;5846
l5847h:
	sbc a,0b8h		;5847
	sub h			;5849
	ld b,032h		;584a
	and d			;584c
	sbc a,02ch		;584d
	ld a,(0f6ffh)		;584f
	add a,a			;5852
	or c			;5853
l5854h:
	inc b			;5854
	and e			;5855
	ld e,b			;5856
	adc a,b			;5857
	sub h			;5858
	add a,e			;5859
	ld de,l76a6h		;585a
	ret po			;585d
	ld b,(hl)		;585e
	ld a,e			;585f
	sbc a,b			;5860
	add a,d			;5861
	call 00536h		;5862
	ld b,b			;5865
	add a,a			;5866
	ld a,00eh		;5867
	ld h,l			;5869
	ld a,08dh		;586a
	sub l			;586c
	ld hl,(0316bh)		;586d
	ld (hl),c		;5870
	ld b,0a6h		;5871
	xor d			;5873
	jr nz,l5847h		;5874
	inc bc			;5876
	ld bc,00130h		;5877
	inc bc			;587a
l587bh:
	adc a,(hl)		;587b
	ld (bc),a		;587c
	sbc a,l			;587d
	sub e			;587e
	ld h,c			;587f
	jp m,03a88h		;5880
	ld e,c			;5883
	dec b			;5884
	jp z,05a60h		;5885
	ld e,(hl)		;5888
	jp z,0657ah		;5889
	add a,b			;588c
	ld e,e			;588d
	ld e,d			;588e
	ld (l61feh),a		;588f
	ld hl,l7afah		;5892
	ld h,c			;5895
	ret nz			;5896
	and (hl)		;5897
	nop			;5898
	jp (hl)			;5899
	jp nz,0048fh		;589a
	ld (de),a		;589d
	cp 0ffh			;589e
	ret nz			;58a0
	ccf			;58a1
	ld (0cd2ah),a		;58a2
	adc a,09fh		;58a5
	rra			;58a7
	cp (hl)			;58a8
	rra			;58a9
	inc hl			;58aa
	inc b			;58ab
	rra			;58ac
	pop bc			;58ad
	sub (hl)		;58ae
	rra			;58af
	add a,(hl)		;58b0
l58b1h:
	ld a,011h		;58b1
	exx			;58b3
l58b4h:
	ld l,a			;58b4
	inc h			;58b5
	add a,l			;58b6
	dec c			;58b7
	ld b,h			;58b8
	in a,(0e4h)		;58b9
	push de			;58bb
	ld d,0dch		;58bc
	daa			;58be
	ret			;58bf
	push af			;58c0
	ld d,(hl)		;58c1
	sbc a,c			;58c2
	dec d			;58c3
	ld b,03ch		;58c4
	rst 28h			;58c6
	daa			;58c7
	ld h,l			;58c8
	dec b			;58c9
	ld e,d			;58ca
	dec b			;58cb
	ld c,080h		;58cc
	dec b			;58ce
	inc e			;58cf
	sub (hl)		;58d0
	dec b			;58d1
	ld sp,005beh		;58d2
	ld a,b			;58d5
	ld h,l			;58d6
	ret pe			;58d7
	djnz $-53		;58d8
	ld b,b			;58da
	sbc a,b			;58db
	jr nz,l58ech		;58dc
	cp 040h			;58de
sub_58e0h:
	ld a,04ch		;58e0
	ld (0e0cah),hl		;58e2
	call nc,0402ch		;58e5
	ld (l420bh),a		;58e8
	ld a,c			;58eb
l58ech:
	inc a			;58ec
	or (hl)			;58ed
	ld (de),a		;58ee
	ld h,006h		;58ef
l58f1h:
	ld d,a			;58f1
	ld (bc),a		;58f2
	ld a,h			;58f3
	ld b,(hl)		;58f4
	add a,c			;58f5
	ld d,d			;58f6
	ld e,h			;58f7
	exx			;58f8
	jr c,$-21		;58f9
	ld (0ed3fh),a		;58fb
	ld h,c			;58fe
	ld sp,hl		;58ff
	add hl,hl		;5900
	inc b			;5901
	jp nz,01ba7h		;5902
	inc bc			;5905
	ld (hl),e		;5906
	inc (hl)		;5907
	jr z,l5925h		;5908
	sub c			;590a
	sub 0a8h		;590b
	inc d			;590d
	inc b			;590e
	or h			;590f
	add a,h			;5910
	ld a,(0ede6h)		;5911
	and h			;5914
	cp d			;5915
	ld d,h			;5916
	dec b			;5917
	ld d,h			;5918
	push hl			;5919
	call nz,0e545h		;591a
	defb 0edh ;next byte illegal after ed	;591d
	or h			;591e
	ld l,b			;591f
	add hl,bc		;5920
	ld h,(hl)		;5921
	jp z,l664ch		;5922
l5925h:
	neg			;5925
	ld l,(hl)		;5927
	rlca			;5928
	ld d,c			;5929
	and h			;592a
	rlca			;592b
	neg			;592c
	ld (hl),h		;592e
	rlca			;592f
	ld d,(hl)		;5930
	ld h,(hl)		;5931
	defb 0edh ;next byte illegal after ed	;5932
l5933h:
	and h			;5933
	cp e			;5934
	and a			;5935
	inc b			;5936
	dec l			;5937
	ld (bc),a		;5938
	ld c,h			;5939
	ld h,h			;593a
	jr z,l5996h		;593b
	add a,c			;593d
	ret p			;593e
	jp 0fde2h		;593f
	call z,09659h		;5942
	ret c			;5945
	ld a,l			;5946
	nop			;5947
	ld e,e			;5948
	ld a,(l58f1h)		;5949
	adc a,l			;594c
	sub c			;594d
	jr l59b6h		;594e
	ld a,(0067eh)		;5950
	jp c,06654h		;5953
	ld a,h			;5956
	jp nz,03a2ah		;5957
sub_595ah:
	adc a,e			;595a
	ld b,h			;595b
	sub 0dbh		;595c
	jr nc,l59a4h		;595e
	ld h,09ah		;5960
	cp (hl)			;5962
	ld (bc),a		;5963
	jr c,$+35		;5964
	ld a,(0c239h)		;5966
	inc hl			;5969
	jp 00d89h		;596a
	jr l5933h		;596d
	ld b,h			;596f
	dec c			;5970
	inc de			;5971
	and l			;5972
l5973h:
	xor h			;5973
	inc d			;5974
	jp nz,l66c2h		;5975
	rst 0			;5978
	jp 0abafh		;5979
	sub (hl)		;597c
	ld hl,(09eaah)		;597d
	dec sp			;5980
	inc b			;5981
	ld a,l			;5982
l5983h:
	ld h,(hl)		;5983
	add a,(hl)		;5984
	ld (hl),a		;5985
	ld (0eb28h),a		;5986
	ld c,0cdh		;5989
	ld e,(hl)		;598b
l598ch:
	ld bc,016d0h		;598c
	cp b			;598f
	ld c,b			;5990
	ld (hl),b		;5991
	inc a			;5992
l5993h:
	ld c,b			;5993
	inc hl			;5994
	pop de			;5995
l5996h:
	ld c,b			;5996
	ld e,03ah		;5997
	dec a			;5999
	ld c,b			;599a
	rl l			;599b
	ld c,b			;599d
	ld e,h			;599e
	djnz l59e9h		;599f
	rla			;59a1
	ex af,af'		;59a2
	ld h,a			;59a3
l59a4h:
	ld c,b			;59a4
	ld b,l			;59a5
	ld l,c			;59a6
	add a,b			;59a7
	ld b,l			;59a8
	add a,c			;59a9
	ld b,l			;59aa
	or a			;59ab
	dec h			;59ac
	ld b,l			;59ad
	ld e,l			;59ae
	add a,l			;59af
	sub h			;59b0
	ld a,0ffh		;59b1
	adc a,l			;59b3
	ld c,e			;59b4
	or l			;59b5
l59b6h:
	add a,d			;59b6
	inc a			;59b7
	jp nc,0672ch		;59b8
	rrca			;59bb
	ld (hl),h		;59bc
	ld c,h			;59bd
	rst 30h			;59be
	ld c,d			;59bf
	ex af,af'		;59c0
	pop bc			;59c1
	add a,00ch		;59c2
	ld (02104h),a		;59c4
	ld l,a			;59c7
	pop hl			;59c8
	cp d			;59c9
	inc bc			;59ca
	sub l			;59cb
	ld d,e			;59cc
	rlca			;59cd
	xor e			;59ce
	djnz l5a20h		;59cf
	ld a,(hl)		;59d1
	adc a,b			;59d2
	or h			;59d3
	ld c,c			;59d4
	ld h,a			;59d5
	xor b			;59d6
	sbc a,h			;59d7
	ret m			;59d8
	ret			;59d9
	xor b			;59da
	jp (hl)			;59db
	dec hl			;59dc
	sub c			;59dd
	or d			;59de
	sbc a,h			;59df
	scf			;59e0
	or b			;59e1
	adc a,b			;59e2
	inc hl			;59e3
	ld (hl),a		;59e4
	or c			;59e5
	adc a,b			;59e6
	ret			;59e7
	rst 18h			;59e8
l59e9h:
	ld e,05dh		;59e9
	ld sp,hl		;59eb
	ld b,b			;59ec
	ld l,c			;59ed
	inc h			;59ee
	ld l,b			;59ef
	ld hl,(l4e23h)		;59f0
	ld c,h			;59f3
	ld a,l			;59f4
	sub l			;59f5
	jp z,08c0dh		;59f6
	ld h,a			;59f9
	cp 070h			;59fa
	inc b			;59fc
	djnz $-6		;59fd
	jp z,00497h		;59ff
	adc a,b			;5a02
	jp z,084a2h		;5a03
	inc b			;5a06
	ret nz			;5a07
	jp z,004adh		;5a08
	ret nc			;5a0b
	inc b			;5a0c
	jp z,l67b8h		;5a0d
	ret			;5a10
	ld a,h			;5a11
	exx			;5a12
	sub e			;5a13
	add a,(hl)		;5a14
	inc e			;5a15
	ld h,(hl)		;5a16
	ld c,0ebh		;5a17
	ld (de),a		;5a19
	jp 00a67h		;5a1a
	inc b			;5a1d
	ld a,(bc)		;5a1e
	inc e			;5a1f
l5a20h:
	ld e,00eh		;5a20
	ld (hl),h		;5a22
	ld a,(bc)		;5a23
l5a24h:
	ld hl,00a05h		;5a24
	ld b,00eh		;5a27
	ld l,h			;5a29
	ld a,(bc)		;5a2a
	jp 00a06h		;5a2b
	ld e,h			;5a2e
	call pe,03b0ah		;5a2f
	rlca			;5a32
	ld a,(bc)		;5a33
	ld b,032h		;5a34
	ld d,h			;5a36
	ld l,d			;5a37
	add a,00eh		;5a38
	cp e			;5a3a
	ld b,c			;5a3b
	ld (hl),d		;5a3c
	ld l,d			;5a3d
	ld (00281h),a		;5a3e
	nop			;5a41
	adc a,h			;5a42
	ld l,d			;5a43
	ld a,c			;5a44
	ld (l6a63h),a		;5a45
	sub b			;5a48
	jp nz,00a85h		;5a49
	ld b,h			;5a4c
	add a,l			;5a4d
	ld (bc),a		;5a4e
	sub h			;5a4f
	ld l,d			;5a50
	and e			;5a51
	ld h,b			;5a52
	and 0e0h		;5a53
	add a,013h		;5a55
	ret po			;5a57
	ld (00c56h),a		;5a58
	ld h,l			;5a5b
	ld h,009h		;5a5c
	ld (00774h),a		;5a5e
	add a,e			;5a61
	ld (bc),a		;5a62
	inc d			;5a63
	adc a,(hl)		;5a64
	ld l,d			;5a65
	jp po,05c88h		;5a66
	add hl,sp		;5a69
	ld e,l			;5a6a
	ld h,a			;5a6b
	sbc a,h			;5a6c
	pop af			;5a6d
	adc a,d			;5a6e
	sbc a,a			;5a6f
	call c,l6123h+1		;5a70
	dec bc			;5a73
	ld e,(hl)		;5a74
	add a,l			;5a75
	ld (bc),a		;5a76
	ld e,a			;5a77
	ld h,a			;5a78
	ld hl,0963fh		;5a79
	ld c,c			;5a7c
	xor b			;5a7d
	and a			;5a7e
	dec b			;5a7f
	dec c			;5a80
	ld e,a			;5a81
	dec b			;5a82
	ld b,(hl)		;5a83
	ret			;5a84
	pop bc			;5a85
	ld d,c			;5a86
	ld a,(de)		;5a87
	pop bc			;5a88
	ex af,af'		;5a89
	call pe,03a68h		;5a8a
	ld d,a			;5a8d
	sub 012h		;5a8e
	ld a,(00e32h)		;5a90
	jp (hl)			;5a93
l5a94h:
	and h			;5a94
	ld c,b			;5a95
	rst 0			;5a96
	jp nc,007f2h		;5a97
	ld c,c			;5a9a
	ld h,a			;5a9b
	ld c,b			;5a9c
	djnz $+7		;5a9d
	ld l,c			;5a9f
	dec b			;5aa0
	ld (bc),a		;5aa1
	ld de,0cdc3h		;5aa2
	ld hl,(0bb05h)		;5aa5
	ld h,b			;5aa8
	ld l,b			;5aa9
	ld a,e			;5aaa
	sub 008h		;5aab
	ld l,h			;5aad
	ld e,a			;5aae
	xor (hl)		;5aaf
	dec b			;5ab0
	ld h,e			;5ab1
	jp nc,l442bh		;5ab2
	sbc a,c			;5ab5
	ret			;5ab6
	and (hl)		;5ab7
	and h			;5ab8
	ld b,068h		;5ab9
	or c			;5abb
l5abch:
	sub h			;5abc
	adc a,d			;5abd
	ld b,d			;5abe
	inc b			;5abf
	ld (hl),0f0h		;5ac0
	dec hl			;5ac2
	rst 20h			;5ac3
	call z,sub_746ah	;5ac4
	ld b,090h		;5ac7
	ex af,af'		;5ac9
	jp m,0bdadh		;5aca
	call po,0cb07h		;5acd
	sub e			;5ad0
l5ad1h:
	ld a,d			;5ad1
	dec a			;5ad2
	ld a,(hl)		;5ad3
	ld (0e356h),a		;5ad4
	jp m,0076eh		;5ad7
	sbc a,c			;5ada
	ld (de),a		;5adb
	sbc a,h			;5adc
	ld l,b			;5add
	ret			;5ade
	sbc a,b			;5adf
	add hl,de		;5ae0
	inc a			;5ae1
	push bc			;5ae2
	add hl,de		;5ae3
	jp 0f519h		;5ae4
	ld (hl),d		;5ae7
	inc hl			;5ae8
	cp (hl)			;5ae9
	ld sp,06f47h		;5aea
	adc a,c			;5aed
	sub b			;5aee
sub_5aefh:
	push de			;5aef
	ld sp,l777dh		;5af0
	sub 048h		;5af3
	ex af,af'		;5af5
	sbc a,a			;5af6
	ld b,c			;5af7
	and e			;5af8
sub_5af9h:
	adc a,e			;5af9
	jr nc,l5b05h		;5afa
	ld b,c			;5afc
	ld (011a2h),a		;5afd
	jp 07d21h		;5b00
	and c			;5b03
	cp d			;5b04
l5b05h:
	sub e			;5b05
	sub c			;5b06
	xor c			;5b07
	ld b,a			;5b08
	xor h			;5b09
	ld h,03eh		;5b0a
	ret nz			;5b0c
	ld a,(bc)		;5b0d
	ld h,h			;5b0e
	ld h,a			;5b0f
	adc a,070h		;5b10
	ret			;5b12
	inc d			;5b13
	inc h			;5b14
	ld h,h			;5b15
	ld h,h			;5b16
	jp (hl)			;5b17
	jp pe,08c5fh		;5b18
	rst 0			;5b1b
sub_5b1ch:
	ld (de),a		;5b1c
	sbc a,c			;5b1d
	ld l,c			;5b1e
l5b1fh:
	ld a,(046afh)		;5b1f
	push bc			;5b22
	and e			;5b23
	ld d,(hl)		;5b24
	push bc			;5b25
	and h			;5b26
	ld e,b			;5b27
	push bc			;5b28
	ld (hl),b		;5b29
	ld e,d			;5b2a
	adc a,(hl)		;5b2b
	push bc			;5b2c
	jp nz,l691dh		;5b2d
	ld a,e			;5b30
	add a,0c5h		;5b31
	add hl,sp		;5b33
	and e			;5b34
	add hl,hl		;5b35
	or (hl)			;5b36
	out (077h),a		;5b37
	ld h,e			;5b39
	cp c			;5b3a
	ld (hl),b		;5b3b
	ld (hl),a		;5b3c
	ld a,(08c5ch)		;5b3d
	cp h			;5b40
	or d			;5b41
	inc bc			;5b42
	ld c,e			;5b43
	cp h			;5b44
	inc a			;5b45
	adc a,b			;5b46
	ld e,c			;5b47
	ld l,c			;5b48
l5b49h:
	cp h			;5b49
	exx			;5b4a
	dec d			;5b4b
	inc a			;5b4c
	add hl,de		;5b4d
	sub c			;5b4e
l5b4fh:
	cp h			;5b4f
	push hl			;5b50
	ld h,(hl)		;5b51
	ld b,(hl)		;5b52
	cp h			;5b53
	and e			;5b54
	ld d,h			;5b55
	cp h			;5b56
	ret pe			;5b57
	inc h			;5b58
	call c,0ec32h		;5b59
	sub (hl)		;5b5c
	rst 28h			;5b5d
	ld c,h			;5b5e
	ld a,0ceh		;5b5f
	ld a,(bc)		;5b61
	adc a,(hl)		;5b62
l5b63h:
	cp h			;5b63
	ld h,d			;5b64
	xor b			;5b65
	and d			;5b66
sub_5b67h:
	ret m			;5b67
	ld b,089h		;5b68
	xor h			;5b6a
	jp c,017ach		;5b6b
	ld b,e			;5b6e
	ld (004c6h),hl		;5b6f
sub_5b72h:
	sub b			;5b72
	ld b,0a8h		;5b73
	ret nc			;5b75
	cp b			;5b76
	jp c,011aah		;5b77
	pop de			;5b7a
l5b7bh:
	ld (0d2b8h),a		;5b7b
	rla			;5b7e
	ld d,c			;5b7f
sub_5b80h:
	or h			;5b80
	djnz l5b63h		;5b81
	exx			;5b83
	djnz l5b1fh		;5b84
	ld c,(hl)		;5b86
	ld a,(bc)		;5b87
	ld (hl),015h		;5b88
	push de			;5b8a
	or (hl)			;5b8b
	ld b,0b6h		;5b8c
	sbc a,(hl)		;5b8e
	dec b			;5b8f
	ld a,(l6823h)		;5b90
	cp d			;5b93
	rst 10h			;5b94
	call nc,00556h		;5b95
	add a,(hl)		;5b98
	jr c,l5c05h		;5b99
	ld c,h			;5b9b
	jp 02206h		;5b9c
	ld l,b			;5b9f
	ld sp,hl		;5ba0
	ld (hl),d		;5ba1
	inc b			;5ba2
	dec (hl)		;5ba3
	jp z,06721h		;5ba4
	ld a,b			;5ba7
	inc b			;5ba8
	ld hl,(0fcaah)		;5ba9
	sbc a,d			;5bac
	ld a,h			;5bad
	ld l,(hl)		;5bae
	ld a,h			;5baf
	ld a,(l7453h)		;5bb0
	ld h,e			;5bb3
	inc l			;5bb4
	ld (hl),h		;5bb5
	dec c			;5bb6
	push bc			;5bb7
	sub 00dh		;5bb8
	or h			;5bba
	ld b,h			;5bbb
	inc hl			;5bbc
	inc b			;5bbd
	rst 10h			;5bbe
	jr z,$-67		;5bbf
	jr z,l5b49h		;5bc1
	ld (de),a		;5bc3
	ld b,a			;5bc4
	cp c			;5bc5
	ld sp,0dbddh		;5bc6
	ld b,a			;5bc9
l5bcah:
	jp 0b820h		;5bca
	ret c			;5bcd
sub_5bceh:
	ld a,00fh		;5bce
	ld e,d			;5bd0
	cp b			;5bd1
	or d			;5bd2
	ld (0b660h),hl		;5bd3
	ld e,l			;5bd6
	adc a,0e5h		;5bd7
	jp c,0dafbh		;5bd9
	add a,0beh		;5bdc
	and h			;5bde
	nop			;5bdf
	ret nc			;5be0
	ld a,d			;5be1
	ret nz			;5be2
	ld c,0ceh		;5be3
	add a,l			;5be5
	and l			;5be6
	rst 38h			;5be7
	ld bc,00301h		;5be8
	call c,0bb80h		;5beb
	ld bc,08ec0h		;5bee
	inc c			;5bf1
	ret nz			;5bf2
l5bf3h:
	ld (bc),a		;5bf3
	ld c,0f3h		;5bf4
	dec e			;5bf6
	ld a,(bc)		;5bf7
	ld a,c			;5bf8
	ld (de),a		;5bf9
	ret po			;5bfa
	ld c,03ah		;5bfb
	sbc a,e			;5bfd
	ld e,b			;5bfe
	ld h,c			;5bff
	call c,089aah		;5c00
	or h			;5c03
	sub (hl)		;5c04
l5c05h:
	ld b,009h		;5c05
	jp nz,l6b46h		;5c07
	sub b			;5c0a
	inc c			;5c0b
l5c0ch:
	sbc a,(hl)		;5c0c
	ld h,c			;5c0d
	pop af			;5c0e
	inc b			;5c0f
	jp c,l6ab3h		;5c10
	ex af,af'		;5c13
	sbc a,a			;5c14
l5c15h:
	and 081h		;5c15
	ld h,005h		;5c17
	ret nz			;5c19
	ld (de),a		;5c1a
	ld c,c			;5c1b
	defb 0edh ;next byte illegal after ed	;5c1c
	ld d,09eh		;5c1d
	defb 0edh ;next byte illegal after ed	;5c1f
	dec de			;5c20
	call nc,09e6ah		;5c21
	add a,h			;5c24
	ex de,hl		;5c25
	ld l,d			;5c26
	jr nz,l5bf3h		;5c27
	ld h,e			;5c29
	ld (bc),a		;5c2a
	add hl,hl		;5c2b
	sbc a,h			;5c2c
	push de			;5c2d
	jr nz,l5c30h		;5c2e
l5c30h:
	ld (06b1dh),a		;5c30
	jr z,l5c6fh		;5c33
	sbc a,l			;5c35
	rlca			;5c36
	push bc			;5c37
	add a,c			;5c38
	rra			;5c39
	ld l,e			;5c3a
	ld hl,l6b19h		;5c3b
	ret z			;5c3e
	ld e,e			;5c3f
	ld d,0b3h		;5c40
	ld c,02ch		;5c42
	ld d,089h		;5c44
	adc a,e			;5c46
	sub e			;5c47
	ld l,016h		;5c48
	jr z,$+24		;5c4a
	jp nz,08788h		;5c4c
	dec sp			;5c4f
	ld d,00bh		;5c50
	ld bc,0a7feh		;5c52
l5c55h:
	ld d,037h		;5c55
	ld d,001h		;5c57
	or (hl)			;5c59
	nop			;5c5a
	ld b,b			;5c5b
l5c5ch:
	ld (bc),a		;5c5c
	or e			;5c5d
l5c5eh:
	djnz l5cc0h		;5c5e
l5c60h:
	ld bc,02318h		;5c60
	nop			;5c63
	ld a,(bc)		;5c64
	adc a,h			;5c65
	inc de			;5c66
	sbc a,b			;5c67
	ld c,04ah		;5c68
	ld c,081h		;5c6a
	dec de			;5c6c
	nop			;5c6d
l5c6eh:
	dec d			;5c6e
l5c6fh:
	ld c,0aeh		;5c6f
	and b			;5c71
	dec e			;5c72
	add a,(hl)		;5c73
	ld d,000h		;5c74
l5c76h:
	dec de			;5c76
	ld c,091h		;5c77
	ld a,(09b99h)		;5c79
	xor h			;5c7c
	ld c,a			;5c7d
	ld a,d			;5c7e
	ld b,a			;5c7f
	sbc a,d			;5c80
	sbc a,e			;5c81
	inc de			;5c82
	dec b			;5c83
	ret nz			;5c84
	ld (de),a		;5c85
	ld (l469bh),hl		;5c86
	sbc a,c			;5c89
	sbc a,e			;5c8a
	sub c			;5c8b
	ld (hl),b		;5c8c
	ld l,e			;5c8d
	sbc a,e			;5c8e
	adc a,d			;5c8f
	add a,a			;5c90
	inc b			;5c91
	sbc a,e			;5c92
	ld h,09eh		;5c93
	jr nz,l5ccch		;5c95
	sub a			;5c97
l5c98h:
	pop af			;5c98
	ld d,d			;5c99
	cp c			;5c9a
sub_5c9bh:
	ld l,l			;5c9b
	sbc a,b			;5c9c
	add a,h			;5c9d
	dec (hl)		;5c9e
	cp e			;5c9f
	ld l,l			;5ca0
	inc hl			;5ca1
	or l			;5ca2
	add a,h			;5ca3
	sub (hl)		;5ca4
	sub a			;5ca5
	ld c,0b8h		;5ca6
	ret z			;5ca8
	ld d,089h		;5ca9
	add a,h			;5cab
	jp z,03c16h		;5cac
l5cafh:
	call nz,02216h		;5caf
	ret			;5cb2
	ld (hl),h		;5cb3
	rst 10h			;5cb4
	ld d,0d9h		;5cb5
	sbc a,h			;5cb7
	ld d,0d3h		;5cb8
	ld d,025h		;5cba
	add a,e			;5cbc
	push de			;5cbd
	inc hl			;5cbe
	sbc a,e			;5cbf
l5cc0h:
	ret z			;5cc0
	add a,b			;5cc1
	nop			;5cc2
	ld b,a			;5cc3
	ld hl,(09b9bh)		;5cc4
	sbc a,e			;5cc7
	dec e			;5cc8
	xor b			;5cc9
	sbc a,e			;5cca
	ex de,hl		;5ccb
l5ccch:
	ret z			;5ccc
	ld h,c			;5ccd
	ld a,(l6be2h)		;5cce
	xor (hl)		;5cd1
	ld d,l			;5cd2
	inc bc			;5cd3
	sub d			;5cd4
	ld de,l6be3h		;5cd5
	cp 039h			;5cd8
	inc b			;5cda
	ld (00c3ch),a		;5cdb
	cp l			;5cde
	ld (hl),d		;5cdf
	ld b,0c4h		;5ce0
	sbc a,e			;5ce2
	ld a,b			;5ce3
	ld bc,095fah		;5ce4
l5ce7h:
	sbc a,0e2h		;5ce7
	ld hl,0c205h		;5ce9
	add a,b			;5cec
	ld l,h			;5ced
	ld (0cd01h),a		;5cee
	inc hl			;5cf1
	ld l,l			;5cf2
	ld (06da8h),a		;5cf3
	call nc,0a6c1h		;5cf6
	ld l,l			;5cf9
	rst 0			;5cfa
	add a,c			;5cfb
	xor c			;5cfc
	ld l,l			;5cfd
	dec c			;5cfe
	xor h			;5cff
	or a			;5d00
	dec c			;5d01
	ld h,e			;5d02
	or l			;5d03
	dec c			;5d04
	cp b			;5d05
	dec c			;5d06
	add a,(hl)		;5d07
	add a,00dh		;5d08
	ld sp,00dc4h		;5d0a
	rst 0			;5d0d
	dec c			;5d0e
	jp 00dd5h		;5d0f
	jr l5ce7h		;5d12
	dec c			;5d14
	sub 0e1h		;5d15
	dec c			;5d17
	call po,08c0dh		;5d18
l5d1bh:
	jp po,l700dh		;5d1b
	push hl			;5d1e
	dec c			;5d1f
	di			;5d20
	add a,00dh		;5d21
l5d23h:
	pop af			;5d23
	dec c			;5d24
	jr c,l5d1bh		;5d25
	dec c			;5d27
	ld (06e02h),hl		;5d28
	dec c			;5d2b
	nop			;5d2c
	ld l,(hl)		;5d2d
	dec c			;5d2e
	dec (hl)		;5d2f
	inc bc			;5d30
	ld l,(hl)		;5d31
	dec c			;5d32
	ld de,08c0dh		;5d33
	rrca			;5d36
	dec c			;5d37
	inc e			;5d38
	ld (de),a		;5d39
l5d3ah:
	ld l,(hl)		;5d3a
	ld d,0cch		;5d3b
	ld d,h			;5d3d
	ld l,d			;5d3e
	call 0aca1h		;5d3f
l5d42h:
	ld l,l			;5d42
	add a,d			;5d43
	ld (02a03h),a		;5d44
	ld a,(0067bh)		;5d47
	inc bc			;5d4a
	sub e			;5d4b
	sub l			;5d4c
	inc de			;5d4d
	add a,(hl)		;5d4e
	cp e			;5d4f
	inc c			;5d50
	ld b,(hl)		;5d51
	inc bc			;5d52
	ld a,(006b7h)		;5d53
	ld d,d			;5d56
	inc bc			;5d57
	sub d			;5d58
	ld (hl),b		;5d59
	inc de			;5d5a
	jp z,00cc4h		;5d5b
	jp z,0c613h		;5d5e
	jp z,00306h		;5d61
	adc a,a			;5d64
	ld c,(hl)		;5d65
	inc de			;5d66
	jr l5d42h		;5d67
	inc c			;5d69
	exx			;5d6a
	sbc a,b			;5d6b
	inc de			;5d6c
	push de			;5d6d
	ld b,0d5h		;5d6e
	and d			;5d70
	inc de			;5d71
	add a,d			;5d72
	sub 013h		;5d73
	ret pe			;5d75
	inc c			;5d76
	ld h,0e8h		;5d77
	inc de			;5d79
	call po,sub_4706h	;5d7a
	inc bc			;5d7d
	ld hl,013f1h		;5d7e
	inc c			;5d81
	rst 30h			;5d82
	inc c			;5d83
	ld d,c			;5d84
	rst 30h			;5d85
	inc de			;5d86
	sbc a,c			;5d87
l5d88h:
	ld c,d			;5d88
	ld b,0f3h		;5d89
	inc de			;5d8b
	adc a,(hl)		;5d8c
l5d8dh:
	dec l			;5d8d
	inc de			;5d8e
	jr z,l5d97h		;5d8f
	ld l,(hl)		;5d91
	inc c			;5d92
	inc bc			;5d93
	ld a,(0c802h)		;5d94
l5d97h:
	ld b,003h		;5d97
	ld hl,0e10fh		;5d99
	inc de			;5d9c
	dec d			;5d9d
	inc c			;5d9e
	adc a,c			;5d9f
	dec d			;5da0
	inc de			;5da1
	ld de,09306h		;5da2
	inc bc			;5da5
l5da6h:
	ret			;5da6
	cp c			;5da7
	ld (hl),b		;5da8
	inc hl			;5da9
	ld (00380h),hl		;5daa
	ld bc,l4e24h		;5dad
	add hl,bc		;5db0
l5db1h:
	ld a,(hl)		;5db1
	cp 026h			;5db2
	ld a,a			;5db4
	ld c,0e7h		;5db5
	nop			;5db7
	add hl,sp		;5db8
	ld l,l			;5db9
	dec c			;5dba
	and 07fh		;5dbb
	ld e,a			;5dbd
	ld hl,01b42h		;5dbe
	ld l,l			;5dc1
	add hl,de		;5dc2
	ld b,(hl)		;5dc3
	push af			;5dc4
	inc d			;5dc5
	ret			;5dc6
	ld b,b			;5dc7
	adc a,d			;5dc8
	djnz l5debh		;5dc9
l5dcbh:
	ld b,b			;5dcb
	nop			;5dcc
	ld h,b			;5dcd
l5dceh:
	ld b,b			;5dce
	add a,b			;5dcf
	ld (de),a		;5dd0
	ld b,b			;5dd1
	and b			;5dd2
	ld h,b			;5dd3
	or 024h			;5dd4
	jr nz,l5de0h		;5dd6
	ld h,b			;5dd8
	nop			;5dd9
	add a,b			;5dda
	ld h,060h		;5ddb
	and b			;5ddd
	sub l			;5dde
	dec d			;5ddf
l5de0h:
	add a,b			;5de0
	jr nz,$-126		;5de1
l5de3h:
	inc d			;5de3
	ld a,(bc)		;5de4
	nop			;5de5
	jr z,l5d88h		;5de6
	xor (hl)		;5de8
	add hl,de		;5de9
	and b			;5dea
l5debh:
	jr nz,l5d8dh		;5deb
	ld e,014h		;5ded
	ld c,d			;5def
	ld a,(bc)		;5df0
	ret nz			;5df1
	pop hl			;5df2
	add a,b			;5df3
	jr nz,$-62		;5df4
	ld b,b			;5df6
	ret nz			;5df7
	ld h,b			;5df8
	ret nz			;5df9
	nop			;5dfa
	add a,b			;5dfb
	ret nz			;5dfc
	and b			;5dfd
	ret po			;5dfe
	nop			;5dff
	ret po			;5e00
	jr nz,l5de3h		;5e01
	ld (bc),a		;5e03
	ld b,b			;5e04
	ret po			;5e05
	ld h,b			;5e06
	ret po			;5e07
l5e08h:
	add a,b			;5e08
l5e09h:
	ret po			;5e09
	jr nz,l5da6h		;5e0a
	or (hl)			;5e0c
	nop			;5e0d
	xor d			;5e0e
	ld c,d			;5e0f
	ld b,b			;5e10
	ld (hl),02eh		;5e11
	sub l			;5e13
	nop			;5e14
	jr nz,$+88		;5e15
	ld c,h			;5e17
	ld b,d			;5e18
	ld b,e			;5e19
	jr c,l5e6ah		;5e1a
	and b			;5e1c
	ld e,b			;5e1d
	rrca			;5e1e
	ld d,(hl)		;5e1f
	inc bc			;5e20
	add a,0b2h		;5e21
	inc d			;5e23
	ld (bc),a		;5e24
	add a,0d9h		;5e25
	ld e,0a0h		;5e27
	inc bc			;5e29
	jr nz,$+16		;5e2a
	ld (hl),e		;5e2c
	dec e			;5e2d
	ld b,b			;5e2e
	ld c,0d6h		;5e2f
	add hl,sp		;5e31
	call p,07a0eh		;5e32
	add a,b			;5e35
	ld c,0bdh		;5e36
	and b			;5e38
	ld c,05eh		;5e39
	ret nz			;5e3b
	ld c,0b1h		;5e3c
	sub h			;5e3e
	ld a,b			;5e3f
	ld c,060h		;5e40
	and l			;5e42
	defb 0cbh,035h ;sli l	;5e43
	inc b			;5e45
	rla			;5e46
	ld (bc),a		;5e47
	inc a			;5e48
	ld bc,0f302h		;5e49
	out (099h),a		;5e4c
	ld a,08eh		;5e4e
	inc bc			;5e50
	ld (0007dh),hl		;5e51
	inc bc			;5e54
	ld a,h			;5e55
	ei			;5e56
	inc bc			;5e57
	rst 28h			;5e58
	pop hl			;5e59
	cpl			;5e5a
	nop			;5e5b
	ei			;5e5c
	sub 0bfh		;5e5d
	ret nz			;5e5f
	ld (hl),d		;5e60
	call 00145h		;5e61
	call nz,sub_5ec7h	;5e64
	ld c,a			;5e67
	add hl,bc		;5e68
	add a,h			;5e69
l5e6ah:
	nop			;5e6a
	ld d,l			;5e6b
l5e6ch:
	jp 01006h		;5e6c
	ld a,(hl)		;5e6f
	add a,c			;5e70
	cp 000h			;5e71
	ret c			;5e73
	jp nz,l7054h		;5e74
	inc a			;5e77
	ld (de),a		;5e78
	inc hl			;5e79
	inc de			;5e7a
l5e7bh:
	ld (hl),e		;5e7b
	ld a,(hl)		;5e7c
	inc bc			;5e7d
	inc b			;5e7e
	ld (bc),a		;5e7f
	inc de			;5e80
	djnz l5e6ch		;5e81
	ld hl,01e40h		;5e83
	halt			;5e86
	dec d			;5e87
	ld e,073h		;5e88
	ret m			;5e8a
	ld e,000h		;5e8b
	ld a,(0c359h)		;5e8d
	cp 0d7h			;5e90
	jp nz,09305h		;5e92
	ld (hl),b		;5e95
	ld a,0d6h		;5e96
	ld (09309h),a		;5e98
	sub h			;5e9b
	ld c,b			;5e9c
	ld a,(l5541h)		;5e9d
	djnz l5e7bh		;5ea0
	jp nz,l70a2h		;5ea2
	ld c,0d2h		;5ea5
	ld hl,0063bh		;5ea7
	ld c,098h		;5eaa
	call 005bah		;5eac
	ld (bc),a		;5eaf
	ld l,c			;5eb0
	adc a,a			;5eb1
	add a,(hl)		;5eb2
	ld (hl),b		;5eb3
	cp 040h			;5eb4
l5eb6h:
	jp z,0d334h		;5eb6
	ld (hl),b		;5eb9
	rlca			;5eba
	ret po			;5ebb
	jp z,0ec00h		;5ebc
	ld (hl),b		;5ebf
	cp 088h			;5ec0
	jp z,l7105h		;5ec2
	cp 017h			;5ec5
sub_5ec7h:
	ex af,af'		;5ec7
	jp z,0041eh		;5ec8
	call nc,03748h		;5ecb
	inc b			;5ece
	ld h,b			;5ecf
	jp z,l502bh		;5ed0
l5ed3h:
	ld (hl),c		;5ed3
	inc h			;5ed4
	xor b			;5ed5
	sub (hl)		;5ed6
	cp 0e3h			;5ed7
	ld e,03eh		;5ed9
	nop			;5edb
	xor 000h		;5edc
l5edeh:
	jp 0a101h		;5ede
	add a,l			;5ee1
	ld hl,0c147h		;5ee2
	ld bc,00a16h		;5ee5
	ld (hl),b		;5ee8
	inc hl			;5ee9
	ld (hl),c		;5eea
	inc hl			;5eeb
	ld (hl),d		;5eec
	jr l5eb6h		;5eed
	call p,0f91dh		;5eef
	sbc a,b			;5ef2
	jr l5edeh		;5ef3
	rst 30h			;5ef5
	jr $-75			;5ef6
	add a,l			;5ef8
	and b			;5ef9
	or 018h			;5efa
	dec a			;5efc
	dec hl			;5efd
	add a,(hl)		;5efe
	jr $-107		;5eff
	dec b			;5f01
	jr l5f07h		;5f02
	jr l5f62h		;5f04
	adc a,e			;5f06
l5f07h:
	jr $+62			;5f07
	inc d			;5f09
	jr l5f5fh		;5f0a
	ld b,018h		;5f0c
	inc b			;5f0e
	jr $+94			;5f0f
	call c,03c18h		;5f11
	dec bc			;5f14
	jr l5f71h		;5f15
	ex af,af'		;5f17
	ld h,e			;5f18
	ex (sp),hl		;5f19
	ld h,c			;5f1a
	ld h,c			;5f1b
	rst 30h			;5f1c
	ld (bc),a		;5f1d
	jr z,$-25		;5f1e
	ld (bc),a		;5f20
	xor d			;5f21
	or b			;5f22
	call nz,0c132h		;5f23
l5f26h:
	xor a			;5f26
	or e			;5f27
	rrca			;5f28
	jp 03032h		;5f29
	jp nz,022cah		;5f2c
	ld (bc),a		;5f2f
	ld a,h			;5f30
	jp nz,08024h		;5f31
	dec (hl)		;5f34
	or a			;5f35
	jp z,0718bh		;5f36
	dec a			;5f39
	jp z,09263h		;5f3a
	inc bc			;5f3d
	sbc a,c			;5f3e
	inc bc			;5f3f
	ld bc,l71a0h		;5f40
	jp 071a7h		;5f43
	or c			;5f46
	djnz l5f4fh		;5f47
	nop			;5f49
	jp 0ae43h		;5f4a
	ld b,0a0h		;5f4d
l5f4fh:
	ld b,001h		;5f4f
	ld b,046h		;5f51
	ld c,b			;5f53
	ld b,003h		;5f54
	ld b,08dh		;5f56
	ret z			;5f58
	ld b,004h		;5f59
	ld b,019h		;5f5b
	jr z,l5f65h		;5f5d
l5f5fh:
	ld b,006h		;5f5f
	ld c,h			;5f61
l5f62h:
	sbc a,d			;5f62
	cp b			;5f63
sub_5f64h:
	ld d,c			;5f64
l5f65h:
	ld h,c			;5f65
	xor c			;5f66
	add a,b			;5f67
l5f68h:
	ld c,c			;5f68
	pop bc			;5f69
	ld a,05fh		;5f6a
	ld (0f4fbh),a		;5f6c
	or h			;5f6f
	sub b			;5f70
l5f71h:
	dec b			;5f71
	jp nz,0d674h		;5f72
	cp (hl)			;5f75
	add hl,bc		;5f76
	and b			;5f77
	inc b			;5f78
	add hl,bc		;5f79
	dec c			;5f7a
	jp nz,00806h		;5f7b
	ld h,(hl)		;5f7e
	push bc			;5f7f
sub_5f80h:
	ld (bc),a		;5f80
	or b			;5f81
	ld a,d			;5f82
	ret nz			;5f83
	ld b,(hl)		;5f84
	jp c,l71ebh		;5f85
	ld b,002h		;5f88
	res 6,c			;5f8a
	call c,sub_5f64h	;5f8c
	inc a			;5f8f
	jr nz,l5ff8h		;5f90
	ld (hl),d		;5f92
	or a			;5f93
	cp h			;5f94
	ld a,(hl)		;5f95
	sbc a,l			;5f96
	ld h,l			;5f97
	ld (hl),d		;5f98
	cp d			;5f99
	sbc a,d			;5f9a
	push hl			;5f9b
	inc c			;5f9c
	rlca			;5f9d
	ld h,(hl)		;5f9e
	ret p			;5f9f
	add a,d			;5fa0
	ld hl,0c672h		;5fa1
	jr nz,l5fd8h		;5fa4
	inc b			;5fa6
	inc b			;5fa7
	pop bc			;5fa8
	inc hl			;5fa9
	djnz $-60		;5faa
	pop bc			;5fac
	in a,(09bh)		;5fad
	inc c			;5faf
	inc b			;5fb0
	inc c			;5fb1
	djnz l5f68h		;5fb2
	ret			;5fb4
	or 071h			;5fb5
	cp 0bdh			;5fb7
	inc h			;5fb9
	cp h			;5fba
	ld bc,00c06h		;5fbb
	jp z,l7235h		;5fbe
	ld b,00dh		;5fc1
	sbc a,018h		;5fc3
	ld b,04ah		;5fc5
	pop bc			;5fc7
	xor (hl)		;5fc8
	add a,e			;5fc9
	pop bc			;5fca
	ld (0c3a3h),a		;5fcb
	ld a,0eeh		;5fce
l5fd0h:
	and h			;5fd0
	rlca			;5fd1
	rlca			;5fd2
	and d			;5fd3
	sbc a,b			;5fd4
	or (hl)			;5fd5
	adc a,l			;5fd6
	ld h,c			;5fd7
l5fd8h:
	jp po,003e5h		;5fd8
	ret po			;5fdb
	push bc			;5fdc
	ld (hl),d		;5fdd
	ld de,01050h		;5fde
	sbc a,h			;5fe1
	add a,b			;5fe2
	adc a,b			;5fe3
	adc a,e			;5fe4
	rlca			;5fe5
	ld (hl),004h		;5fe6
	inc h			;5fe8
	add hl,de		;5fe9
	djnz $-3		;5fea
	ld a,0b8h		;5fec
	add a,00fh		;5fee
	dec b			;5ff0
	jr nc,l601ah		;5ff1
	sub (hl)		;5ff3
l5ff4h:
	jr z,l5ff4h		;5ff4
	jr nc,l6046h		;5ff6
l5ff8h:
	ex af,af'		;5ff8
	jr nc,$+102		;5ff9
	sub e			;5ffb
	jr $+85			;5ffc
	add a,e			;5ffe
	ret			;5fff
	dec (hl)		;6000
	ld e,006h		;6001
	ld h,h			;6003
	sub e			;6004
	jp nc,l728eh		;6005
	ld (l7a1ah),hl		;6008
	ld h,d			;600b
	dec c			;600c
	ld e,093h		;600d
	dec c			;600f
	sbc a,(hl)		;6010
	ld h,e			;6011
	dec bc			;6012
	ld d,(hl)		;6013
	add a,h			;6014
	ld a,b			;6015
	out (048h),a		;6016
	ld h,d			;6018
	ld b,b			;6019
l601ah:
	ld (l710eh),a		;601a
l601dh:
	ld h,d			;601d
	dec hl			;601e
	rlca			;601f
	add a,d			;6020
	dec a			;6021
	jp nz,029b8h		;6022
	ld h,d			;6025
	add hl,bc		;6026
	dec d			;6027
	ld a,(0cc02h)		;6028
	adc a,a			;602b
	ld h,(hl)		;602c
	add a,a			;602d
	add a,a			;602e
	ld c,03ah		;602f
	jp p,0c5c1h		;6031
	ret nc			;6034
	push bc			;6035
	ld (hl),h		;6036
	or a			;6037
	jp nz,00388h		;6038
	call 0022eh		;603b
	ld l,b			;603e
	ld (hl),h		;603f
	inc de			;6040
	ret c			;6041
	call 089dah		;6042
	add a,d			;6045
l6046h:
	ld c,h			;6046
	pop bc			;6047
sub_6048h:
	or a			;6048
	ld d,000h		;6049
	ld c,e			;604b
	pop bc			;604c
	cp 0d0h			;604d
	jp nc,l72fbh		;604f
	cp 021h			;6052
	ld (de),a		;6054
	jp c,03a04h		;6055
	jp m,0ff72h		;6058
	exx			;605b
	inc b			;605c
	nop			;605d
	jp z,l731ch		;605e
	jp 073ceh		;6061
	ld bc,l53a8h		;6064
	ld hl,l4a25h		;6067
	pop bc			;606a
	nop			;606b
	sub 012h		;606c
	cp c			;606e
	ret nc			;606f
	add a,024h		;6070
	cp c			;6072
	ret c			;6073
	ld h,a			;6074
	ld c,(hl)		;6075
	inc l			;6076
	dec bc			;6077
	ld h,c			;6078
	pop af			;6079
	jp l736ah		;607a
	call nz,sub_6f10h	;607d
	pop bc			;6080
	ld a,(hl)		;6081
	ld c,d			;6082
	or a			;6083
	rlc a			;6084
	call nz,07300h		;6086
	inc hl			;6089
	ex af,af'		;608a
	jp pe,l5c60h		;608b
	cp 0efh			;608e
	jp nc,l49a1h		;6090
	ld a,l			;6093
	jp nc,l7375h		;6094
	sub b			;6097
	ld e,c			;6098
	ld l,a			;6099
	ld (hl),03eh		;609a
	ld a,a			;609c
	ret z			;609d
	inc hl			;609e
	ei			;609f
	ld (hl),h		;60a0
	ld l,e			;60a1
	ld (bc),a		;60a2
	add a,010h		;60a3
	ld (007f9h),a		;60a5
	ld a,(bc)		;60a8
l60a9h:
	pop hl			;60a9
	di			;60aa
	and 020h		;60ab
	dec d			;60ad
	adc a,l			;60ae
	add a,e			;60af
	ld (hl),e		;60b0
	dec a			;60b1
	xor l			;60b2
	call nz,09e74h		;60b3
	ld h,b			;60b6
	call m,01174h		;60b7
	sub c			;60ba
	di			;60bb
	ld b,07bh		;60bc
	ret z			;60be
	jp z,l73a8h		;60bf
	jr nz,l60ddh		;60c2
	ld a,b			;60c4
	ld h,047h		;60c5
	jp l739bh		;60c7
	inc c			;60ca
	call sub_7417h		;60cb
	ld (hl),a		;60ce
	ld c,(hl)		;60cf
	ld d,l			;60d0
	inc hl			;60d1
	inc b			;60d2
	jr c,l60d9h		;60d3
	sub a			;60d5
	ld (039fdh),hl		;60d6
l60d9h:
	sbc a,d			;60d9
	inc a			;60da
	sub 041h		;60db
l60ddh:
	ld hl,002a7h		;60dd
	jp nz,05830h		;60e0
	dec de			;60e3
	ld (hl),e		;60e4
	adc a,d			;60e5
	call 08c03h		;60e6
	di			;60e9
	adc a,l			;60ea
	ld e,l			;60eb
	ld (01ef0h),a		;60ec
	jr z,l6123h		;60ef
	xor 005h		;60f1
	ld (bc),a		;60f3
	and 0feh		;60f4
	call z,01e07h		;60f6
	ld c,l			;60f9
	pop af			;60fa
	add hl,hl		;60fb
	jp pe,08d29h		;60fc
	or 0cch			;60ff
	dec hl			;6101
	add hl,de		;6102
	dec d			;6103
	cp 0b4h			;6104
	ret c			;6106
	ld sp,08706h		;6107
	add hl,de		;610a
	jr z,l60a9h		;610b
	ld a,h			;610d
l610eh:
	ld (hl),a		;610e
	inc hl			;610f
	ld d,00ah		;6110
	and e			;6112
	pop bc			;6113
	inc a			;6114
	ret po			;6115
	add a,l			;6116
	jp nz,l7421h		;6117
	dec l			;611a
	add hl,bc		;611b
	nop			;611c
	ld de,0c1a4h		;611d
	add a,e			;6120
	ld e,a			;6121
	ld a,(de)		;6122
l6123h:
	ld (019a5h),a		;6123
	ld d,0cfh		;6126
	cp b			;6128
	ld b,c			;6129
	ret nz			;612a
l612bh:
	ld hl,0c183h		;612b
	in a,(032h)		;612e
	ld a,(082fbh)		;6130
	ld d,a			;6133
	ld a,(0e5f7h)		;6134
	ld e,a			;6137
	rst 38h			;6138
	call po,0cd1bh		;6139
l613ch:
	nop			;613c
	ld c,l			;613d
	ld (hl),h		;613e
	dec hl			;613f
	dec hl			;6140
	djnz l613ch		;6141
	ret			;6143
	ld c,d			;6144
	add hl,bc		;6145
	ld a,(hl)		;6146
	dec hl			;6147
	sub 00eh		;6148
	ret nz			;614a
	ld b,h			;614b
	jr l610eh		;614c
	add a,c			;614e
	ld c,e			;614f
	ld a,(hl)		;6150
	sub 00ch		;6151
	add hl,bc		;6153
	adc a,d			;6154
	inc d			;6155
	add hl,bc		;6156
	xor e			;6157
	dec h			;6158
	ld h,a			;6159
	jr c,l612bh		;615a
	ld de,0c170h		;615c
	rst 10h			;615f
	dec de			;6160
	scf			;6161
	ld d,l			;6162
	inc c			;6163
	xor 00ch		;6164
	ld a,e			;6166
	ld (hl),h		;6167
	add hl,de		;6168
	dec l			;6169
	dec de			;616a
	ld a,b			;616b
	xor 007h		;616c
l616eh:
	nop			;616e
	sub h			;616f
	ld b,d			;6170
	ld (hl),l		;6171
	sbc a,b			;6172
	ld (hl),d		;6173
	or (hl)			;6174
	ld hl,(0898eh)		;6175
	ld c,075h		;6178
	cp c			;617a
	ld de,08847h		;617b
	ld c,b			;617e
	sbc a,b			;617f
	add hl,bc		;6180
	ld (de),a		;6181
	and 00fh		;6182
	add a,b			;6184
	adc a,(hl)		;6185
	ld de,l750ch		;6186
	or l			;6189
	add a,e			;618a
	rrca			;618b
	ld (hl),l		;618c
	xor a			;618d
l618eh:
	ccf			;618e
	ex af,af'		;618f
	ld (hl),a		;6190
	dec hl			;6191
	ld bc,0367eh		;6192
l6195h:
	inc b			;6195
	nop			;6196
	call 00557h		;6197
	ld a,(0fe15h)		;619a
sub_619dh:
	ld de,0d228h		;619d
sub_61a0h:
	cp l			;61a0
	ret nc			;61a1
	xor b			;61a2
	push bc			;61a3
	xor h			;61a4
	xor b			;61a5
	ld a,(0c5ach)		;61a6
	scf			;61a9
	ld e,l			;61aa
	defb 0fdh,03ah,0c8h ;illegal sequence	;61ab
	and l			;61ae
	jr z,l61b6h		;61af
	ld a,(0da43h)		;61b1
	ld d,b			;61b4
	ld (hl),l		;61b5
l61b6h:
	ld hl,0d117h		;61b6
	rla			;61b9
	ld a,(0751eh)		;61ba
	jp nc,00419h		;61bd
	ld (hl),d		;61c0
	dec c			;61c1
	ret			;61c2
	inc c			;61c3
	ld (hl),b		;61c4
	nop			;61c5
	pop af			;61c6
	inc bc			;61c7
	or a			;61c8
	jp c,0989ch		;61c9
	rrca			;61cc
	dec b			;61cd
	sbc a,b			;61ce
	adc a,0c4h		;61cf
	ld c,d			;61d1
	ret p			;61d2
	inc bc			;61d3
	ld c,001h		;61d4
	xor 0f8h		;61d6
	ld (l640ah),hl		;61d8
	nop			;61db
	ld bc,00ef0h		;61dc
	or 080h			;61df
	jr c,l61f1h		;61e1
	ld h,c			;61e3
	sbc a,c			;61e4
	or e			;61e5
	ld a,(bc)		;61e6
	and b			;61e7
	inc c			;61e8
	rrca			;61e9
	rlca			;61ea
	ld (bc),a		;61eb
	ld (bc),a		;61ec
	inc e			;61ed
	rlca			;61ee
	rrca			;61ef
	inc c			;61f0
l61f1h:
	scf			;61f1
	nop			;61f2
	ld bc,06301h		;61f3
	push bc			;61f6
	call nz,004f6h		;61f7
	ld c,004h		;61fa
	rst 30h			;61fc
	push hl			;61fd
l61feh:
	ld h,l			;61fe
	ld d,h			;61ff
	inc hl			;6200
	nop			;6201
	ex af,af'		;6202
	djnz $+7		;6203
	add a,01eh		;6205
	ld b,b			;6207
	ld (bc),a		;6208
	ld h,028h		;6209
l620bh:
	add hl,hl		;620b
	add hl,bc		;620c
	and c			;620d
l620eh:
	xor c			;620e
	ld bc,00808h		;620f
	add a,b			;6212
	ld l,b			;6213
	dec c			;6214
	inc bc			;6215
	ld bc,0c814h		;6216
	inc bc			;6219
	ld (bc),a		;621a
	ld e,0eeh		;621b
	ld a,(bc)		;621d
	nop			;621e
	ld (0c462h),hl		;621f
	ccf			;6222
	dec b			;6223
	dec b			;6224
	ccf			;6225
	ld h,a			;6226
	ld h,h			;6227
	ld h,a			;6228
	inc d			;6229
	ld sp,03c00h		;622a
	jr nz,l620bh		;622d
	xor l			;622f
	add a,b			;6230
	ld (bc),a		;6231
	inc b			;6232
	add hl,bc		;6233
l6234h:
	add hl,hl		;6234
	add hl,hl		;6235
	ld bc,003a8h		;6236
	xor b			;6239
	ex af,af'		;623a
	nop			;623b
	adc a,c			;623c
	ld l,c			;623d
	dec c			;623e
	ld h,c			;623f
	and b			;6240
	ld bc,00e3bh		;6241
	ld b,039h		;6244
	rrca			;6246
	add hl,sp		;6247
	ld a,(bc)		;6248
	and d			;6249
	ld (bc),a		;624a
	ccf			;624b
	push bc			;624c
	rst 30h			;624d
	ccf			;624e
	inc l			;624f
	or 0e4h			;6250
	ccf			;6252
	ld c,h			;6253
	ret po			;6254
	inc d			;6255
	jr c,l625ch		;6256
	sbc a,l			;6258
	inc bc			;6259
	jr nc,$+65		;625a
l625ch:
	ld de,00d03h		;625c
	ccf			;625f
	jr nz,l626ah		;6260
	ccf			;6262
	inc de			;6263
	ld bc,03f09h		;6264
	inc b			;6267
	ld h,c			;6268
	nop			;6269
l626ah:
	add a,b			;626a
	add a,b			;626b
	add a,0a6h		;626c
	inc hl			;626e
	rrca			;626f
	ld e,h			;6270
	ld hl,0a096h		;6271
	add hl,sp		;6274
	and c			;6275
	add a,021h		;6276
	nop			;6278
	djnz l62abh		;6279
	ret po			;627b
l627ch:
	ret nz			;627c
l627dh:
	ld b,b			;627d
	ld b,b			;627e
	ret po			;627f
	or b			;6280
	ret po			;6281
	inc c			;6282
	add a,b			;6283
	ld b,b			;6284
	add a,b			;6285
	jr c,l6299h		;6286
	sub h			;6288
	ret p			;6289
	add a,h			;628a
	sub h			;628b
	ld a,a			;628c
	ld l,h			;628d
	rla			;628e
	and a			;628f
	or b			;6290
	inc hl			;6291
	ret nz			;6292
	add a,b			;6293
	jp z,02096h		;6294
	dec h			;6297
	inc e			;6298
l6299h:
	ld c,b			;6299
	jr nc,l62bbh		;629a
	ld b,h			;629c
	nop			;629d
	ld b,(hl)		;629e
l629fh:
	ld h,03fh		;629f
	and c			;62a1
	ld b,(hl)		;62a2
	and c			;62a3
	ccf			;62a4
	ld hl,00e46h		;62a5
	ld (hl),d		;62a8
	inc (hl)		;62a9
	ret nz			;62aa
l62abh:
	ld h,a			;62ab
	ld a,b			;62ac
	jr $+79			;62ad
	jr nz,l62f1h		;62af
	jr nz,$-110		;62b1
	sub c			;62b3
	sub h			;62b4
	ld bc,014e0h		;62b5
	inc d			;62b8
	ld a,a			;62b9
	rlca			;62ba
l62bbh:
	sub (hl)		;62bb
	sub b			;62bc
	ccf			;62bd
	ld b,a			;62be
	push bc			;62bf
	ld h,e			;62c0
	inc b			;62c1
	ld a,h			;62c2
	ld b,b			;62c3
	ex af,af'		;62c4
	sbc a,h			;62c5
	dec h			;62c6
	adc a,e			;62c7
	ccf			;62c8
	and e			;62c9
	adc a,a			;62ca
	ccf			;62cb
	ret z			;62cc
	dec bc			;62cd
	ccf			;62ce
	ld c,h			;62cf
	add hl,sp		;62d0
	inc d			;62d1
	ld c,090h		;62d2
	ld h,b			;62d4
	ld b,b			;62d5
	call pe,0883fh		;62d6
	ret nz			;62d9
	or b			;62da
	ccf			;62db
	inc b			;62dc
	ld (hl),b		;62dd
	adc a,c			;62de
	ccf			;62df
	rst 28h			;62e0
	sub a			;62e1
	ccf			;62e2
l62e3h:
	jr nz,l6319h		;62e3
	pop de			;62e5
	inc e			;62e6
	ld l,h			;62e7
	add a,c			;62e8
	ld de,01c10h		;62e9
	ld c,b			;62ec
	ret z			;62ed
	ld a,(bc)		;62ee
	dec bc			;62ef
	dec c			;62f0
l62f1h:
	nop			;62f1
	add hl,de		;62f2
	inc d			;62f3
	inc (hl)		;62f4
	jr nc,$+59		;62f5
	cpl			;62f7
	ld (hl),0ddh		;62f8
	inc l			;62fa
	jr $+62			;62fb
	sbc a,l			;62fd
	nop			;62fe
	inc d			;62ff
	ld d,012h		;6300
	cp 0e6h			;6302
	jp nc,0c3d3h		;6304
	nop			;6307
	rst 20h			;6308
	ld (hl),e		;6309
	ex (sp),hl		;630a
	ld e,07eh		;630b
	cp h			;630d
	ret c			;630e
l630fh:
	nop			;630f
	pop de			;6310
	and e			;6311
	rlca			;6312
l6313h:
	sbc a,e			;6313
	jr nz,$+33		;6314
	dec de			;6316
	ccf			;6317
l6318h:
	nop			;6318
l6319h:
	ld c,030h		;6319
	dec e			;631b
	adc a,e			;631c
	rla			;631d
	inc hl			;631e
	ld hl,00010h		;631f
	jr $+10			;6322
	inc c			;6324
	adc a,0dch		;6325
	ld a,(hl)		;6327
	ld l,(hl)		;6328
	ld a,a			;6329
	nop			;632a
	call c,0febeh		;632b
	jp pe,0f492h		;632e
	jr nz,l6313h		;6331
	ld c,l			;6333
	ld bc,03fb9h		;6334
	jp c,03f1dh		;6337
	rlca			;633a
	rlca			;633b
	nop			;633c
	ld d,b			;633d
	ret c			;633e
	ret z			;633f
	ccf			;6340
	adc a,c			;6341
	cp l			;6342
	ret pe			;6343
	adc a,a			;6344
	dec sp			;6345
	ccf			;6346
	jp c,03f0bh		;6347
	ld c,b			;634a
	jr nz,l62e3h		;634b
	jr nz,l63c7h		;634d
	or b			;634f
	ccf			;6350
	add a,b			;6351
	push af			;6352
	djnz l635dh		;6353
	inc bc			;6355
	rla			;6356
	ld l,01fh		;6357
	nop			;6359
	rla			;635a
	jr nc,l63d5h		;635b
l635dh:
	cp h			;635d
	ld a,03fh		;635e
	ld c,h			;6360
	add hl,hl		;6361
	ld h,027h		;6362
	ld de,00094h		;6364
	ret po			;6367
	ret c			;6368
	ld a,(hl)		;6369
	ld h,(hl)		;636a
	ld a,08ah		;636b
	ld a,a			;636d
	rrca			;636e
	nop			;636f
	ld e,09eh		;6370
	call z,0b8bch		;6372
	ret p			;6375
	jr nz,$-62		;6376
	nop			;6378
	ld (bc),a		;6379
	djnz l63a5h		;637a
	inc b			;637c
	dec bc			;637d
	rrca			;637e
	ld (hl),a		;637f
	sub e			;6380
	ex af,af'		;6381
	dec e			;6382
	inc hl			;6383
	ld b,e			;6384
	daa			;6385
	or e			;6386
l6387h:
	xor b			;6387
	rra			;6388
	and 080h		;6389
	cp d			;638b
	ret c			;638c
	ret p			;638d
	call m,0f9f1h		;638e
	ld e,b			;6391
	call m,078d8h		;6392
	jr nz,l63dfh		;6395
	djnz l63b8h		;6397
	ld bc,01f07h		;6399
	ld e,000h		;639c
	dec de			;639e
	jr c,l641ch		;639f
	cp h			;63a1
	jr c,l63e0h		;63a2
	ld l,h			;63a4
l63a5h:
	ld c,a			;63a5
	djnz l63efh		;63a6
	dec b			;63a8
	nop			;63a9
	ccf			;63aa
	ret m			;63ab
	ld a,01eh		;63ac
	nop			;63ae
	add a,(hl)		;63af
	ld c,a			;63b0
	rra			;63b1
	add a,e			;63b2
	add a,(hl)		;63b3
l63b4h:
	adc a,(hl)		;63b4
	ld l,(hl)		;63b5
	ld a,h			;63b6
sub_63b7h:
	inc h			;63b7
l63b8h:
	call m,0bce2h		;63b8
	adc a,b			;63bb
	ret po			;63bc
	inc e			;63bd
	rlca			;63be
	and b			;63bf
	jp c,08f6fh		;63c0
	and b			;63c3
	jp po,l426fh		;63c4
l63c7h:
	dec h			;63c7
	ld b,(hl)		;63c8
	inc b			;63c9
	sbc a,d			;63ca
	ld bc,0e2b0h		;63cb
	and 0fch		;63ce
	ld sp,hl		;63d0
	ld a,001h		;63d1
	ret m			;63d3
	ret p			;63d4
l63d5h:
	or 0b8h			;63d5
	inc c			;63d7
	ld b,d			;63d8
	rra			;63d9
	nop			;63da
	rlca			;63db
	ld e,01ch		;63dc
	rrca			;63de
l63dfh:
	dec c			;63df
l63e0h:
	ld c,007h		;63e0
	ld d,d			;63e2
	ld b,0c3h		;63e3
	inc d			;63e5
	nop			;63e6
	dec b			;63e7
	out (040h),a		;63e8
	ccf			;63ea
	jr nc,$+50		;63eb
	jr c,l6387h		;63ed
l63efh:
	inc a			;63ef
	ld c,h			;63f0
	djnz l63b4h		;63f1
	ret nz			;63f3
	sub (hl)		;63f4
	res 0,l			;63f5
	ld de,00f13h		;63f7
	jp c,0e125h		;63fa
	inc h			;63fd
	ld sp,hl		;63fe
	call z,03f03h		;63ff
l6402h:
	ld hl,0d010h		;6402
	ld a,(de)		;6405
	ret po			;6406
	call m,0b6f0h		;6407
l640ah:
	cp c			;640a
	sra h			;640b
	add a,b			;640d
	rlca			;640e
	inc c			;640f
	inc c			;6410
	inc e			;6411
	add hl,de		;6412
	inc a			;6413
	ex af,af'		;6414
	ld d,h			;6415
l6416h:
	rlca			;6416
	inc e			;6417
	xor e			;6418
	ret z			;6419
	ret po			;641a
	ld a,b			;641b
l641ch:
	jr c,l6422h		;641c
	ret p			;641e
	or b			;641f
	ld (hl),b		;6420
	ret po			;6421
l6422h:
	ld h,b			;6422
	jp 000e0h		;6423
	and b			;6426
	djnz l6475h		;6427
	djnz l6416h		;6429
	dec bc			;642b
	adc a,e			;642c
	ld a,(de)		;642d
sub_642eh:
	rlca			;642e
	ccf			;642f
	sub a			;6430
	inc h			;6431
	ld a,(0fb02h)		;6432
	or d			;6435
	adc a,b			;6436
	add hl,hl		;6437
	ret z			;6438
	ret p			;6439
	add a,l			;643a
	ld hl,(03e1dh)		;643b
	ld h,d			;643e
	xor (hl)		;643f
l6440h:
	sub h			;6440
	jr nz,l647ch		;6441
	ld c,01eh		;6443
	rra			;6445
	rra			;6446
	sub d			;6447
	ld h,h			;6448
l6449h:
	rra			;6449
	adc a,e			;644a
	ld d,a			;644b
	adc a,(hl)		;644c
	djnz l6465h		;644d
	ld (hl),b		;644f
	ld a,b			;6450
l6451h:
	ret m			;6451
	adc a,b			;6452
	sbc a,(hl)		;6453
	ret nz			;6454
	ret m			;6455
	ld e,h			;6456
	djnz l6462h		;6457
	ld sp,00c20h		;6459
	ld e,c			;645c
	jr nz,l647fh		;645d
	jr nc,l649dh		;645f
	dec l			;6461
l6462h:
	nop			;6462
	rla			;6463
	and b			;6464
l6465h:
	sbc a,d			;6465
	adc a,c			;6466
	and d			;6467
	sbc a,c			;6468
	or c			;6469
	sbc a,(hl)		;646a
	inc c			;646b
	rrca			;646c
	add hl,hl		;646d
	ret pe			;646e
	ret nz			;646f
	ld c,l			;6470
	ld a,(08b45h)		;6471
	add a,d			;6474
l6475h:
	ret nz			;6475
	ld a,(l78e2h)		;6476
	call nc,003eah		;6479
l647ch:
	rlca			;647c
	jr nc,l6462h		;647d
l647fh:
	ld a,b			;647f
	ld b,011h		;6480
	call po,07800h		;6482
	ld hl,l7914h		;6485
	ld b,030h		;6488
	ld a,(de)		;648a
l648bh:
	cp (hl)			;648b
	nop			;648c
	jp z,l7887h		;648d
	inc (hl)		;6490
	inc hl			;6491
	inc de			;6492
	djnz l648bh		;6493
	jp nz,0110eh		;6495
	ld b,h			;6498
	ld de,01019h		;6499
	ld a,(hl)		;649c
l649dh:
	add a,a			;649d
l649eh:
	nop			;649e
	ret nz			;649f
	xor b			;64a0
l64a1h:
	add a,(hl)		;64a1
	rla			;64a2
	ld (de),a		;64a3
	inc de			;64a4
	ld a,c			;64a5
	ld (bc),a		;64a6
	sub d			;64a7
	ld b,h			;64a8
	rst 28h			;64a9
	ld hl,0cd15h		;64aa
	dec b			;64ad
	jp (hl)			;64ae
	ld (bc),a		;64af
	ld a,(0c398h)		;64b0
	ld a,003h		;64b3
	ld a,c			;64b5
	in a,(0edh)		;64b6
	push de			;64b8
l64b9h:
	dec b			;64b9
	cp 079h			;64ba
	ld d,d			;64bc
	dec a			;64bd
	ret			;64be
	ld d,c			;64bf
	ld (hl),b		;64c0
	ccf			;64c1
	ld a,(hl)		;64c2
	dec a			;64c3
	dec de			;64c4
	cp 0ffh			;64c5
	jr nz,l64a1h		;64c7
	dec h			;64c9
l64cah:
	ld (hl),a		;64ca
	inc (hl)		;64cb
	push af			;64cc
	jp p,l78ceh		;64cd
	add hl,hl		;64d0
	dec b			;64d1
	ret			;64d2
	ld (bc),a		;64d3
	inc bc			;64d4
	ret nz			;64d5
	dec l			;64d6
	nop			;64d7
	xor h			;64d8
	ld h,c			;64d9
	dec b			;64da
	ld b,000h		;64db
	sub h			;64dd
	dec b			;64de
	xor b			;64df
	and d			;64e0
	ld (bc),a		;64e1
	ld (bc),a		;64e2
	sub h			;64e3
	xor d			;64e4
	cpl			;64e5
	rlca			;64e6
	inc b			;64e7
	adc a,e			;64e8
	sbc a,h			;64e9
	add a,l			;64ea
	call nc,0b703h		;64eb
	and l			;64ee
	ld (02f07h),hl		;64ef
	nop			;64f2
	ld bc,0e400h		;64f3
	ld c,b			;64f6
	ld hl,0d993h		;64f7
	add a,h			;64fa
	ld e,d			;64fb
	ld e,c			;64fc
	ld bc,08799h		;64fd
	ldir			;6500
	add a,h			;6502
	and b			;6503
	inc sp			;6504
	ld e,e			;6505
	ret			;6506
	inc a			;6507
	ld hl,0109fh		;6508
	ld e,0c9h		;650b
	inc e			;650d
	ld l,l			;650e
	ret			;650f
	inc e			;6510
	ret			;6511
	rst 0			;6512
	ld h,b			;6513
	and a			;6514
l6515h:
	ret nz			;6515
	ld b,032h		;6516
	jr c,l6529h		;6518
	jp nz,03c32h		;651a
	jp nz,l48e4h		;651d
	inc c			;6520
	jp 02666h		;6521
	ld e,c			;6524
	ld de,03efah		;6525
	add hl,de		;6528
l6529h:
	ld e,(hl)		;6529
	ret nz			;652a
	ex af,af'		;652b
	push hl			;652c
	ld hl,079b9h		;652d
	rlca			;6530
	inc hl			;6531
	ld d,(hl)		;6532
	nop			;6533
	pop hl			;6534
	push de			;6535
	ret			;6536
	rra			;6537
	ld a,d			;6538
	ld b,c			;6539
	ld a,d			;653a
	and a			;653b
	nop			;653c
	ld a,d			;653d
	ld e,e			;653e
	ld a,e			;653f
	ld (hl),l		;6540
	ld a,e			;6541
	rst 30h			;6542
	ld a,e			;6543
	halt			;6544
	nop			;6545
	ld a,h			;6546
	ret nz			;6547
	ld a,h			;6548
	ld l,(hl)		;6549
	ld a,l			;654a
	xor a			;654b
	ld a,l			;654c
	rst 38h			;654d
	dec d			;654e
	ld a,(hl)		;654f
	ld c,h			;6550
	ld a,a			;6551
	sub l			;6552
	nop			;6553
	or l			;6554
	ld a,a			;6555
	ret po			;6556
	ld a,a			;6557
	call sub_5f80h		;6558
	nop			;655b
	add a,c			;655c
	sub c			;655d
	add a,c			;655e
	sub 081h		;655f
	jp po,02181h		;6561
	ld b,082h		;6564
	ld d,h			;6566
	add a,e			;6567
	and d			;6568
	add a,e			;6569
	ei			;656a
	and a			;656b
	call p,0bcdeh		;656c
	rlca			;656f
	call m,03a79h		;6570
	ld c,b			;6573
	xor l			;6574
	adc a,b			;6575
	inc bc			;6576
	ld d,l			;6577
	jp z,048fbh		;6578
	ld a,c			;657b
	and l			;657c
	defb 0edh ;next byte illegal after ed	;657d
	nop			;657e
	ld d,d			;657f
	ret			;6580
	ret			;6581
	ld b,07fh		;6582
	jp l7a07h		;6584
	nop			;6587
	ld b,03fh		;6588
	push hl			;658a
	ld a,(hl)		;658b
	add a,002h		;658c
	and b			;658e
	ld (hl),a		;658f
	ld b,026h		;6590
	nop			;6592
	ld l,a			;6593
	add hl,de		;6594
	ld b,(hl)		;6595
	add a,e			;6596
	call nz,02be1h		;6597
	nop			;659a
	add a,(hl)		;659b
	call nc,002f0h		;659c
	add a,b			;659f
	ld (hl),a		;65a0
	ret			;65a1
	call sub_79e7h		;65a2
	rlca			;65a5
	jr c,l65efh		;65a6
	inc hl			;65a8
	jp l7746h		;65a9
	add a,c			;65ac
	ld e,e			;65ad
	cpl			;65ae
	defb 0edh ;next byte illegal after ed	;65af
	add a,h			;65b0
	add a,(hl)		;65b1
	inc hl			;65b2
	add hl,de		;65b3
	ld a,b			;65b4
	ret p			;65b5
	ret p			;65b6
	ld a,0d4h		;65b7
	ld (de),a		;65b9
	jp z,l7a3fh		;65ba
	ret po			;65bd
	ld e,h			;65be
	ld hl,08017h		;65bf
	jp po,03d6bh		;65c2
	ret nz			;65c5
	dec (hl)		;65c6
	ex de,hl		;65c7
	ld a,(l4945h)		;65c8
	ld e,h			;65cb
	rrca			;65cc
	cp 0a9h			;65cd
	nop			;65cf
	inc bc			;65d0
	ld hl,04743h		;65d1
	jp c,l750ah		;65d4
	ld a,d			;65d7
	cp 007h			;65d8
	or d			;65da
	add a,(hl)		;65db
	ld hl,07526h		;65dc
	add hl,bc		;65df
	add a,e			;65e0
	dec bc			;65e1
	ld c,00bh		;65e2
	ld hl,00966h		;65e4
	ld e,c			;65e7
	ld c,084h		;65e8
	ld (hl),0a6h		;65ea
	rst 28h			;65ec
	nop			;65ed
	and (hl)		;65ee
l65efh:
	ld a,d			;65ef
	cp c			;65f0
l65f1h:
	jp z,l7a91h		;65f1
	ld a,c			;65f4
	ld (0a641h),a		;65f5
	rrca			;65f8
	sbc a,b			;65f9
	exx			;65fa
	ld hl,0ae40h		;65fb
	djnz l6645h		;65fe
	ld bc,000d9h		;6600
	call 005bah		;6603
	ex de,hl		;6606
	jp l7be1h		;6607
	ex de,hl		;660a
	nop			;660b
	ld a,r			;660c
	and 01fh		;660e
l6610h:
	call z,sub_7b0dh	;6610
	cp 020h			;6613
	inc d			;6615
	jp nz,0230ch		;6616
	call 0843fh		;6619
	ld h,e			;661c
	dec hl			;661d
	inc d			;661e
	nop			;661f
	ld h,l			;6620
	push hl			;6621
	ld c,(hl)		;6622
	add a,e			;6623
	ld h,l			;6624
	in a,(065h)		;6625
	ld c,l			;6627
	and 075h		;6628
	add hl,bc		;662a
	out (065h),a		;662b
	ld h,076h		;662d
	add hl,bc		;662f
	jr nc,$+103		;6630
	ld h,(hl)		;6632
	halt			;6633
	pop hl			;6634
	xor d			;6635
	ld a,e			;6636
	ld h,l			;6637
	ld (065f7h),a		;6638
	rlca			;663b
	rst 10h			;663c
	ld h,l			;663d
	add a,b			;663e
	ld h,l			;663f
	ret po			;6640
	xor (hl)		;6641
	ld a,(0f0d5h)		;6642
l6645h:
	di			;6645
	ld a,(0277bh)		;6646
	ld a,(0067ah)		;6649
l664ch:
	ret nz			;664c
	adc a,(hl)		;664d
	ld b,h			;664e
	ld a,e			;664f
	ld h,(hl)		;6650
	add a,e			;6651
	jp po,00723h		;6652
	dec sp			;6655
	ld a,h			;6656
	ld h,(hl)		;6657
	call pe,0be13h		;6658
	cp b			;665b
	add hl,bc		;665c
	jp c,l7b30h		;665d
	adc a,(hl)		;6660
	pop bc			;6661
	ld a,l			;6662
	ld h,(hl)		;6663
	dec hl			;6664
	call m,02149h		;6665
	inc h			;6668
	ret			;6669
	jr $+129		;666a
	jr nz,l66aah		;666c
	rst 10h			;666e
	jr nz,l65f1h		;666f
	jr nz,l66e0h		;6671
	ld d,c			;6673
	jr nz,$+115		;6674
	add a,c			;6676
	jr nz,l66c2h		;6677
	ld c,e			;6679
	sbc a,c			;667a
	ld a,086h		;667b
	rlca			;667d
	ld (bc),a		;667e
	ld (hl),a		;667f
	dec e			;6680
	add hl,de		;6681
	push de			;6682
	ld e,(hl)		;6683
	xor d			;6684
	ld bc,03cc6h		;6685
	cp b			;6688
	jp c,07b72h		;6689
	call nz,0c3d0h		;668c
	adc a,h			;668f
	ld a,e			;6690
	push hl			;6691
	add hl,de		;6692
	add a,019h		;6693
	jp c,019d6h		;6695
	ld d,a			;6698
	jp nc,01914h		;6699
	ret p			;669c
	ret nz			;669d
	jp nz,l7bdch		;669e
	dec hl			;66a1
	ld b,(hl)		;66a2
	sub b			;66a3
	ret p			;66a4
	inc a			;66a5
	and 0c2h		;66a6
	res 0,d			;66a8
l66aah:
	ld h,d			;66aa
	jp nz,04ed5h		;66ab
	inc b			;66ae
	ld d,b			;66af
	cp (hl)			;66b0
	jp c,l7ba9h		;66b1
	ld c,(hl)		;66b4
	jp 0bf41h		;66b5
	inc b			;66b8
	and (hl)		;66b9
	cp (hl)			;66ba
	jp nc,005b4h		;66bb
	inc sp			;66be
	rst 38h			;66bf
	ld a,(bc)		;66c0
	ld l,l			;66c1
l66c2h:
	add a,c			;66c2
	rst 38h			;66c3
	jp c,018bfh		;66c4
	sbc a,h			;66c7
	ret nc			;66c8
	ld bc,08619h		;66c9
	cp 004h			;66cc
	jp nz,00acah		;66ce
	ld (bc),a		;66d1
	inc bc			;66d2
	cp 0fch			;66d3
	jp nz,006d1h		;66d5
	add hl,de		;66d8
	ld (iy-051h),a		;66d9
	ld e,d			;66dc
	cp c			;66dd
	inc (hl)		;66de
	rst 8			;66df
l66e0h:
	ld l,l			;66e0
	ex af,af'		;66e1
	inc b			;66e2
	add a,b			;66e3
l66e4h:
	pop af			;66e4
	ld a,(hl)		;66e5
	cp 0e3h			;66e6
	ret c			;66e8
	dec d			;66e9
	ld a,(0c15fh)		;66ea
	ex (sp),hl		;66ed
	sub e			;66ee
	cp c			;66ef
	add a,d			;66f0
	ld (hl),006h		;66f1
	dec hl			;66f3
	ld h,a			;66f4
	jr z,$+37		;66f5
	xor a			;66f7
	ex (sp),hl		;66f8
	dec h			;66f9
	ld de,0d005h		;66fa
	ld h,b			;66fd
	ld c,b			;66fe
	ld b,(hl)		;66ff
	sub b			;6700
	jp m,0111fh		;6701
	ld a,h			;6704
	cp 00ah			;6705
	sub b			;6707
	djnz l66e4h		;6708
	jr c,l6712h		;670a
	ld e,006h		;670c
	ld bc,006ddh		;670e
	ret po			;6711
l6712h:
	jr l6716h		;6712
	ld b,006h		;6714
l6716h:
	inc hl			;6716
	inc bc			;6717
	jp 0ed04h		;6718
	ld b,h			;671b
	dec de			;671c
	push bc			;671d
	rst 38h			;671e
	dec de			;671f
	set 7,(hl)		;6720
	dec de			;6722
	ld c,b			;6723
	dec iy			;6724
	or a			;6726
	ret nz			;6727
	ld c,(hl)		;6728
	sub c			;6729
	jp m,08954h		;672a
	ld de,00e14h		;672d
	rra			;6730
	ld h,(hl)		;6731
	ld b,07dh		;6732
	cp l			;6734
	dec sp			;6735
	ld b,l			;6736
	ld b,00eh		;6737
	ld (bc),a		;6739
	xor h			;673a
	ld e,e			;673b
	inc (hl)		;673c
	inc d			;673d
	ret po			;673e
	rst 38h			;673f
	ret nc			;6740
	inc d			;6741
	cp 023h			;6742
	add hl,de		;6744
	ld (hl),000h		;6745
	inc c			;6747
	dec hl			;6748
	ld (hl),b		;6749
	dec hl			;674a
	ld (hl),c		;674b
	ld e,004h		;674c
	xor a			;674e
	adc a,(hl)		;674f
	sub h			;6750
	inc hl			;6751
	call po,sub_4e11h	;6752
	and 0a4h		;6755
	rlca			;6757
	ld (hl),a		;6758
	push hl			;6759
	ld b,b			;675a
	adc a,b			;675b
	ld a,h			;675c
	ld a,(hl)		;675d
	xor 008h		;675e
	adc a,h			;6760
	xor 09ch		;6761
	sub c			;6763
	nop			;6764
	ld bc,0a1cah		;6765
	ld a,h			;6768
	ld a,b			;6769
	or a			;676a
	jp m,l5c98h		;676b
	ld a,h			;676e
	and h			;676f
	inc b			;6770
	ld b,b			;6771
	ld a,c			;6772
	rlca			;6773
	and b			;6774
	ld a,h			;6775
	dec c			;6776
	dec c			;6777
	inc c			;6778
	ld l,07eh		;6779
	add a,c			;677b
	call 0cf8ch		;677c
	ld bc,0cdebh		;677f
	ld e,(hl)		;6782
	ld bc,0d2ebh		;6783
	pop hl			;6786
	cp d			;6787
	dec hl			;6788
	ld c,e			;6789
	ld (0c40eh),hl		;678a
	ld a,(0230ah)		;678d
	ld c,c			;6790
	xor d			;6791
	push de			;6792
	rra			;6793
	sub c			;6794
	xor c			;6795
	ld a,h			;6796
	ld de,00111h		;6797
	inc hl			;679a
	ld b,c			;679b
	cp 064h			;679c
	ld a,(bc)		;679e
	sub h			;679f
	dec de			;67a0
	call c,01d66h		;67a1
	ld h,c			;67a4
	ld d,b			;67a5
	rrca			;67a6
	call z,039d9h		;67a7
	or (hl)			;67aa
	ld c,e			;67ab
	push hl			;67ac
	jr c,l67e4h		;67ad
	rst 0			;67af
	dec l			;67b0
	ld bc,02e00h		;67b1
	nop			;67b4
	ld b,070h		;67b5
	add a,c			;67b7
l67b8h:
	ret p			;67b8
	dec c			;67b9
	ex (sp),hl		;67ba
	inc bc			;67bb
	rrca			;67bc
	dec (hl)		;67bd
	ld bc,003ffh		;67be
	in a,(002h)		;67c1
	add hl,bc		;67c3
	sbc a,l			;67c4
	ld bc,007e3h		;67c5
	rrca			;67c8
	inc a			;67c9
	dec c			;67ca
	or e			;67cb
	rrca			;67cc
	rlca			;67cd
	sbc a,a			;67ce
	ld sp,03f0eh		;67cf
	cp h			;67d2
	ld d,c			;67d3
	ccf			;67d4
	sbc a,c			;67d5
	ld e,000h		;67d6
	ld (hl),c		;67d8
	ld (hl),l		;67d9
	rrca			;67da
	ret c			;67db
	and h			;67dc
	push af			;67dd
	ld (hl),h		;67de
	ld a,(hl)		;67df
	ld b,(hl)		;67e0
	ld a,l			;67e1
	push af			;67e2
l67e3h:
	add a,b			;67e3
l67e4h:
	inc hl			;67e4
	inc hl			;67e5
	ld de,l7ceeh		;67e6
	call 00500h		;67e9
	ld a,d			;67ec
	inc hl			;67ed
	ld a,(0c157h)		;67ee
	rst 0			;67f1
	ld b,d			;67f2
	jp c,l7da4h		;67f3
	ret po			;67f6
	jp nc,0e69eh		;67f7
	jp nz,04f07h		;67fa
	jp po,0a224h		;67fd
	ld a,l			;6800
	jp po,089d7h		;6801
	ld b,(hl)		;6804
	ret z			;6805
	inc hl			;6806
	ccf			;6807
	ret z			;6808
	ld h,e			;6809
	xor 086h		;680a
	or a			;680c
	ld b,e			;680d
	ld c,b			;680e
	ld a,0ddh		;680f
	ld a,0d6h		;6811
sub_6813h:
	scf			;6813
	sub (hl)		;6814
	sub h			;6815
	ld b,d			;6816
	inc (hl)		;6817
	jp nc,l7dd4h		;6818
	ret p			;681b
	jr nc,l6837h		;681c
	xor a			;681e
	and c			;681f
	ld hl,(0364fh)		;6820
l6823h:
	inc d			;6823
	inc e			;6824
	ret m			;6825
	ld (de),a		;6826
	inc hl			;6827
	jp c,03585h		;6828
	add a,b			;682b
	ld sp,l7807h		;682c
	inc hl			;682f
	add hl,sp		;6830
	or 023h			;6831
	ret p			;6833
	ld hl,0d672h		;6834
l6837h:
	ld hl,08800h		;6837
	or (hl)			;683a
	cp 000h			;683b
	ld (hl),a		;683d
	cp 005h			;683e
l6840h:
	inc bc			;6840
	ld b,l			;6841
	add a,007h		;6842
	add a,005h		;6844
	ld (hl),0ffh		;6846
	dec b			;6848
	inc b			;6849
	call 0090dh		;684a
	ex (sp),hl		;684d
	nop			;684e
	ld b,0aeh		;684f
	rlca			;6851
	cp c			;6852
	jr l6823h		;6853
	ld a,(03903h)		;6855
	sub 025h		;6858
	add a,l			;685a
	and h			;685b
	nop			;685c
	adc a,a			;685d
	or e			;685e
	ret			;685f
l6860h:
	inc l			;6860
	ld c,e			;6861
	sub c			;6862
	ld a,h			;6863
	rlca			;6864
	and l			;6865
	ld (bc),a		;6866
	ex (sp),hl		;6867
	sbc a,h			;6868
	dec c			;6869
	jp pe,0a505h		;686a
	ld e,c			;686d
	pop af			;686e
	inc de			;686f
	rst 28h			;6870
	ld hl,l5e09h		;6871
	rst 38h			;6874
	ld b,c			;6875
	ld (de),a		;6876
	rst 28h			;6877
	pop hl			;6878
	ld h,a			;6879
	rst 0			;687a
	rlca			;687b
	add a,a			;687c
	ld a,c			;687d
	ld sp,0e19eh		;687e
	ld a,a			;6881
	sbc a,h			;6882
	inc c			;6883
	rst 28h			;6884
	ex af,af'		;6885
	jr $+19			;6886
	cp l			;6888
	call z,sub_71a2h	;6889
	out (01dh),a		;688c
	ld b,a			;688e
	defb 0ddh,031h,0ebh ;illegal sequence	;688f
	sbc a,005h		;6892
	jp z,000cfh		;6894
	ld de,l7dffh		;6897
l689ah:
	jp nz,l7f0bh		;689a
	ld de,l7f2ah		;689d
	ld a,(hl)		;68a0
	sub d			;68a1
	sbc a,l			;68a2
	adc a,c			;68a3
	sub (hl)		;68a4
	call pe,04800h		;68a5
	add a,h			;68a8
	ld a,c			;68a9
	cp 028h			;68aa
	jp nz,02224h		;68ac
	ld a,a			;68af
	xor l			;68b0
	add hl,hl		;68b1
l68b2h:
	sbc a,e			;68b2
	dec hl			;68b3
	out (017h),a		;68b4
	ld a,(0aa1eh)		;68b6
	ex af,af'		;68b9
	add hl,de		;68ba
	ld hl,(08b06h)		;68bb
	inc b			;68be
	jp z,l7f34h		;68bf
	ld b,093h		;68c2
	inc (hl)		;68c4
	dec hl			;68c5
	xor h			;68c6
	call z,0188ah		;68c7
	ld a,(hl)		;68ca
	jp nz,0e98fh		;68cb
	ld (de),a		;68ce
	adc a,e			;68cf
	ld e,l			;68d0
	ld c,a			;68d1
	defb 0ddh,082h,05ch ;illegal sequence	;68d2
	ld c,l			;68d5
	xor l			;68d6
	out (0c0h),a		;68d7
l68d9h:
	ld c,e			;68d9
	rst 38h			;68da
	call z,08436h		;68db
	xor h			;68de
	sub a			;68df
	add hl,bc		;68e0
	inc a			;68e1
	jp nc,l7f75h		;68e2
	out (0d9h),a		;68e5
	adc a,b			;68e7
	and d			;68e8
	rlca			;68e9
	dec (hl)		;68ea
	dec (hl)		;68eb
	ex de,hl		;68ec
	cp c			;68ed
	ld c,b			;68ee
	add a,a			;68ef
	ld de,01100h		;68f0
	dec (hl)		;68f3
	jp c,00789h		;68f4
	inc (hl)		;68f7
	inc (hl)		;68f8
	jp c,03be2h		;68f9
	ld h,c			;68fc
	inc bc			;68fd
	dec sp			;68fe
	and d			;68ff
	ld a,a			;6900
	ex af,af'		;6901
	cpl			;6902
	ld (hl),a		;6903
	out (02ah),a		;6904
	rlca			;6906
l6907h:
	sbc a,l			;6907
	add hl,bc		;6908
	ld (hl),01ah		;6909
	ld d,d			;690b
	ld b,(hl)		;690c
	ld d,(hl)		;690d
	or a			;690e
	ret nc			;690f
	sbc a,h			;6910
	inc sp			;6911
	ld e,(hl)		;6912
	ld h,02ah		;6913
	ld l,d			;6915
	call 0fd2ah		;6916
	xor e			;6919
	rst 30h			;691a
	add a,0cdh		;691b
l691dh:
	ld hl,(018beh)		;691d
	ld hl,(01749h)		;6920
	rst 38h			;6923
	inc de			;6924
	sbc a,c			;6925
	push de			;6926
	add hl,de		;6927
	ld (hl),b		;6928
	add a,b			;6929
	pop af			;692a
	and d			;692b
	jp nz,08062h		;692c
	jp (hl)			;692f
	sub h			;6930
	dec b			;6931
l6932h:
	jp c,007b1h		;6932
	add a,b			;6935
	add a,b			;6936
	ld a,(hl)		;6937
	add hl,de		;6938
	cp 0aah			;6939
	ld d,c			;693b
	jp nc,09e0bh		;693c
	ld h,(hl)		;693f
	djnz l68d9h		;6940
	add hl,de		;6942
	jr z,l698ch		;6943
	inc bc			;6945
	cp 031h			;6946
	jp z,0803ch		;6948
	ret nz			;694b
	jr nc,$-104		;694c
	ld h,c			;694e
	ret pe			;694f
	add a,a			;6950
	sbc a,c			;6951
	ld h,c			;6952
	call z,023cfh		;6953
	ld h,085h		;6956
	call m,02a30h		;6958
	and 0e0h		;695b
	ld c,032h		;695d
	sub a			;695f
	ld h,c			;6960
	dec hl			;6961
	add a,c			;6962
	ld e,h			;6963
	add hl,bc		;6964
	inc sp			;6965
	sbc a,b			;6966
	ld h,c			;6967
	ld e,e			;6968
	dec h			;6969
	jr l6907h		;696a
l696ch:
	dec h			;696c
	sbc a,(hl)		;696d
	sbc a,(hl)		;696e
	dec h			;696f
	cp 025h			;6970
	ld l,a			;6972
	sbc a,h			;6973
	dec h			;6974
	ld b,09dh		;6975
	dec h			;6977
	ex (sp),hl		;6978
	jp (hl)			;6979
	dec sp			;697a
	cp d			;697b
	call nz,074bah		;697c
	rra			;697f
	ld d,077h		;6980
	jp z,l7f89h		;6982
	ld l,0dfh		;6985
	sbc a,d			;6987
	sub a			;6988
	and c			;6989
	ld h,l			;698a
	rrca			;698b
l698ch:
	ei			;698c
	sbc a,c			;698d
	xor d			;698e
	jr z,l6932h		;698f
	ld a,c			;6991
	add a,b			;6992
	rla			;6993
	ld l,b			;6994
	sbc a,0cch		;6995
	add a,b			;6997
	dec hl			;6998
	ld (l7885h),hl		;6999
	ld (de),a		;699c
	dec de			;699d
	push de			;699e
	dec c			;699f
	exx			;69a0
	ld de,00010h		;69a1
	add a,084h		;69a4
	jp nz,00706h		;69a6
l69a9h:
	rst 8			;69a9
	ld b,b			;69aa
	jr z,l69b5h		;69ab
	add hl,de		;69ad
	djnz l69a9h		;69ae
	jr nc,$-45		;69b0
	exx			;69b2
	rra			;69b3
	pop de			;69b4
l69b5h:
	ex de,hl		;69b5
	ld e,(hl)		;69b6
	ld bc,0ba15h		;69b7
	ld l,d			;69ba
	ld a,(bc)		;69bb
	nop			;69bc
	ret pe			;69bd
	dec (hl)		;69be
	pop hl			;69bf
	ret z			;69c0
	add hl,de		;69c1
	ld (hl),d		;69c2
	call z,sub_7737h	;69c3
	sub 070h		;69c6
	ld c,(hl)		;69c8
	and d			;69c9
l69cah:
	jr nz,l69cah		;69ca
	dec e			;69cc
	ld (hl),a		;69cd
	dec bc			;69ce
	jp nz,0810fh		;69cf
	inc hl			;69d2
	add hl,de		;69d3
	push de			;69d4
	ld de,020f6h		;69d5
	ld (de),a		;69d8
	jr nz,$+37		;69d9
	ld sp,hl		;69db
	adc a,h			;69dc
	ld b,a			;69dd
	jr nz,$+52		;69de
	cp b			;69e0
	ld a,0b4h		;69e1
	ld (08106h),hl		;69e3
	cp (hl)			;69e6
	or h			;69e7
	sub (hl)		;69e8
	ld b,a			;69e9
	jr nz,l696ch		;69ea
	ld (de),a		;69ec
	add a,d			;69ed
	sbc a,b			;69ee
	rst 28h			;69ef
	ld c,a			;69f0
	or (hl)			;69f1
	ld c,02dh		;69f2
	sub d			;69f4
	ld h,(hl)		;69f5
	xor e			;69f6
	sbc a,c			;69f7
	rst 20h			;69f8
	ld bc,0ba00h		;69f9
	defb 0ddh,0eah,0a9h ;illegal sequence	;69fc
	or e			;69ff
	ld bc,00f9eh		;6a00
	ei			;6a03
	nop			;6a04
	rst 28h			;6a05
	cpl			;6a06
l6a07h:
	dec sp			;6a07
	ld (0937dh),a		;6a08
	sbc a,c			;6a0b
	djnz $-60		;6a0c
	ld a,b			;6a0e
	add a,c			;6a0f
	ex af,af'		;6a10
	add a,008h		;6a11
	cp 012h			;6a13
	in a,(0c2h)		;6a15
	halt			;6a17
	ld l,a			;6a18
	jp 0f4f8h		;6a19
	rra			;6a1c
	add a,c			;6a1d
	inc e			;6a1e
	call sub_7a05h		;6a1f
	ld l,l			;6a22
	dec sp			;6a23
	or a			;6a24
	add a,e			;6a25
	add a,a			;6a26
	inc h			;6a27
	ld (hl),b		;6a28
	ld sp,0a4c3h		;6a29
	jp nz,0a981h		;6a2c
	ld e,d			;6a2f
	cp 002h			;6a30
l6a32h:
	ld de,08562h		;6a32
	ld a,004h		;6a35
	or 03eh			;6a37
	ld e,d			;6a39
	jr nz,l6a32h		;6a3a
	dec sp			;6a3c
	ld c,c			;6a3d
	djnz l6a5dh		;6a3e
sub_6a40h:
	dec b			;6a40
	ret z			;6a41
	ld (hl),d		;6a42
	sub b			;6a43
	xor l			;6a44
	sub b			;6a45
	add a,c			;6a46
	sub l			;6a47
	call z,0aef6h		;6a48
	add hl,hl		;6a4b
	ld a,(bc)		;6a4c
	add a,b			;6a4d
l6a4eh:
	ld d,e			;6a4e
	ld (hl),028h		;6a4f
	ld hl,0d488h		;6a51
	ret nz			;6a54
	rlca			;6a55
	ld b,03ch		;6a56
	ld c,0aah		;6a58
	call m,020f1h		;6a5a
l6a5dh:
	dec d			;6a5d
	add a,d			;6a5e
	ld b,05ah		;6a5f
	in a,(0a8h)		;6a61
l6a63h:
	pop bc			;6a63
	call sub_7908h		;6a64
	add a,b			;6a67
	add a,0ebh		;6a68
	ld b,(hl)		;6a6a
	ex af,af'		;6a6b
	add a,e			;6a6c
	sub (hl)		;6a6d
	ld c,004h		;6a6e
	cp 006h			;6a70
	ex af,af'		;6a72
	ld b,b			;6a73
	cp (hl)			;6a74
	ld c,005h		;6a75
	ld a,b			;6a77
	sub 004h		;6a78
	ld a,d			;6a7a
	ld (hl),a		;6a7b
	or (hl)			;6a7c
	add hl,sp		;6a7d
	ld h,d			;6a7e
	call nz,08f8bh		;6a7f
	ld b,b			;6a82
	jp nz,0829bh		;6a83
	ld a,(0e024h)		;6a86
	jp nz,0ca39h		;6a89
	rlca			;6a8c
	push hl			;6a8d
	ld (hl),e		;6a8e
	xor a			;6a8f
	ld e,e			;6a90
	ret po			;6a91
	jr nc,$+72		;6a92
	add a,(hl)		;6a94
	ld (09230h),a		;6a95
	add a,l			;6a98
	ret z			;6a99
	ld a,(bc)		;6a9a
	ld c,a			;6a9b
	ld (08593h),a		;6a9c
	exx			;6a9f
	ret nz			;6aa0
	sub c			;6aa1
	jp c,0825bh		;6aa2
	and d			;6aa5
	add a,l			;6aa6
	adc a,050h		;6aa7
	ld d,l			;6aa9
	add a,d			;6aaa
	and h			;6aab
	or e			;6aac
	add hl,bc		;6aad
	sub a			;6aae
	add a,l			;6aaf
	jp 00e6ah		;6ab0
l6ab3h:
	adc a,092h		;6ab3
	ret pe			;6ab5
	ld h,h			;6ab6
	sbc a,h			;6ab7
	ld c,0ffh		;6ab8
	ld c,0cah		;6aba
	jp p,09009h		;6abc
	jp c,01580h		;6abf
l6ac2h:
	jr z,l6ae8h		;6ac2
	adc a,l			;6ac4
	ld a,d			;6ac5
	inc h			;6ac6
	ld c,c			;6ac7
	sub (hl)		;6ac8
	dec d			;6ac9
	adc a,a			;6aca
	ld c,0d8h		;6acb
	inc h			;6acd
	adc a,l			;6ace
	adc a,c			;6acf
	inc h			;6ad0
	ret po			;6ad1
	ld c,021h		;6ad2
	sub c			;6ad4
	and d			;6ad5
	rst 0			;6ad6
	ld l,c			;6ad7
	adc a,(hl)		;6ad8
	jp c,0e116h		;6ad9
	ld e,e			;6adc
	add a,h			;6add
	ld b,d			;6ade
	jp z,082aah		;6adf
	ret nz			;6ae2
	xor h			;6ae3
	dec hl			;6ae4
	inc d			;6ae5
	ld d,e			;6ae6
	add a,e			;6ae7
l6ae8h:
	xor a			;6ae8
	rst 18h			;6ae9
	call 0b2dfh		;6aea
	cp h			;6aed
	ld (hl),e		;6aee
	add a,d			;6aef
	or e			;6af0
	jr z,l6b2dh		;6af1
	and e			;6af3
	and d			;6af4
	sub l			;6af5
	ret pe			;6af6
	xor l			;6af7
	jp z,0451eh		;6af8
	add a,e			;6afb
	call 0a204h		;6afc
	inc b			;6aff
	jp z,067f8h		;6b00
	ld c,(hl)		;6b03
	dec bc			;6b04
	inc de			;6b05
	ld (bc),a		;6b06
	inc de			;6b07
	ld c,(hl)		;6b08
	ld (de),a		;6b09
	ld b,015h		;6b0a
	ld b,022h		;6b0c
	ld b,004h		;6b0e
	ld b,0bah		;6b10
	jp p,0d4ddh		;6b12
	ld b,0e2h		;6b15
	cp a			;6b17
	ld e,c			;6b18
l6b19h:
	ld b,025h		;6b19
	ret pe			;6b1b
	ld bc,025e7h		;6b1c
	rla			;6b1f
	ld (hl),c		;6b20
	dec h			;6b21
	inc bc			;6b22
	dec h			;6b23
	adc a,033h		;6b24
	add a,a			;6b26
	ld a,b			;6b27
	ld (0839fh),a		;6b28
	ret po			;6b2b
	pop hl			;6b2c
l6b2dh:
	and b			;6b2d
	add a,e			;6b2e
	sub l			;6b2f
	jr nc,l6ac2h		;6b30
	cp 008h			;6b32
	inc h			;6b34
	jp nc,03641h		;6b35
	ld d,d			;6b38
	ld a,(de)		;6b39
	dec b			;6b3a
	cp c			;6b3b
	rst 30h			;6b3c
	ld b,l			;6b3d
	adc a,(hl)		;6b3e
	djnz l6b73h		;6b3f
	ld a,e			;6b41
	ld h,d			;6b42
	adc a,d			;6b43
	sbc a,c			;6b44
	sbc a,a			;6b45
l6b46h:
	ld d,b			;6b46
	ld (hl),a		;6b47
	ld (0a167h),a		;6b48
	ld (hl),a		;6b4b
	sbc a,c			;6b4c
	ld h,(hl)		;6b4d
	ld de,0efcah		;6b4e
	call 0b8ffh		;6b51
	inc e			;6b54
	ld de,08363h		;6b55
	cp b			;6b58
	adc a,b			;6b59
	ld bc,0dbb8h		;6b5a
	sub h			;6b5d
	adc a,0ech		;6b5e
	ret p			;6b60
	inc hl			;6b61
	ld (hl),l		;6b62
	add a,e			;6b63
	cp b			;6b64
	xor b			;6b65
	inc (hl)		;6b66
	cp c			;6b67
	jp nc,09652h		;6b68
	ld c,(hl)		;6b6b
	ld e,(hl)		;6b6c
	ld b,a			;6b6d
	ld e,c			;6b6e
	cp h			;6b6f
	defb 0edh ;next byte illegal after ed	;6b70
	rrc e			;6b71
l6b73h:
	ld l,05ch		;6b73
	ld a,(bc)		;6b75
	inc a			;6b76
	ld (0b503h),a		;6b77
	push af			;6b7a
	ld a,(06f72h)		;6b7b
	sbc a,a			;6b7e
	ld a,(02b4dh)		;6b7f
	add a,b			;6b82
	ld c,(hl)		;6b83
	jp nz,08410h		;6b84
	ld a,(l627dh)		;6b87
	call nz,03195h		;6b8a
	add hl,de		;6b8d
	add a,h			;6b8e
	ld c,h			;6b8f
	ld b,(hl)		;6b90
	xor e			;6b91
	ld e,h			;6b92
	ld d,d			;6b93
	cp e			;6b94
	ld b,d			;6b95
	add hl,de		;6b96
	ld e,0dah		;6b97
	ret c			;6b99
	ld a,(hl)		;6b9a
	dec hl			;6b9b
	adc a,0d2h		;6b9c
	inc b			;6b9e
	rst 30h			;6b9f
	jp 0c0feh		;6ba0
	rlca			;6ba3
	daa			;6ba4
	xor a			;6ba5
	dec bc			;6ba6
	ld a,a			;6ba7
	jp nz,0e09bh		;6ba8
	ld b,0c1h		;6bab
	sub h			;6bad
	cp b			;6bae
	nop			;6baf
	ex af,af'		;6bb0
	pop bc			;6bb1
	ld (0c3a3h),a		;6bb2
	ld a,010h		;6bb5
	ld (00747h),a		;6bb7
	rlca			;6bba
	and d			;6bbb
	jp 088a4h		;6bbc
	inc h			;6bbf
	call 038c0h		;6bc0
	jp nz,03c32h		;6bc3
	sub c			;6bc6
	ld (bc),a		;6bc7
	ld a,b			;6bc8
	ld (bc),a		;6bc9
	ld a,h			;6bca
	jp nz,0890dh		;6bcb
	add hl,sp		;6bce
	rlca			;6bcf
	dec a			;6bd0
	ld (bc),a		;6bd1
	dec l			;6bd2
	ld a,c			;6bd3
	ld (bc),a		;6bd4
	add a,l			;6bd5
	ld (hl),070h		;6bd6
	sbc a,079h		;6bd8
	ld e,h			;6bda
	jp 00847h		;6bdb
	rst 0			;6bde
	jp po,0b218h		;6bdf
l6be2h:
	and b			;6be2
l6be3h:
	ld bc,l51d2h		;6be3
	add a,h			;6be6
	ret			;6be7
	rst 10h			;6be8
	ex af,af'		;6be9
	ld (bc),a		;6bea
	ex af,af'		;6beb
	ld l,(hl)		;6bec
l6bedh:
	inc bc			;6bed
	ex af,af'		;6bee
	jp po,0e9bch		;6bef
	ex af,af'		;6bf2
	dec b			;6bf3
	ex af,af'		;6bf4
	or d			;6bf5
	ld d,c			;6bf6
	ret z			;6bf7
	ld h,a			;6bf8
	add a,h			;6bf9
	inc b			;6bfa
	rst 0			;6bfb
	jp 08223h		;6bfc
	ld h,b			;6bff
	ret			;6c00
	jp 005c9h		;6c01
	dec d			;6c04
	nop			;6c05
	call c,024ebh		;6c06
	and h			;6c09
	and c			;6c0a
	ld a,(bc)		;6c0b
	ld a,(bc)		;6c0c
	inc bc			;6c0d
	ld l,(hl)		;6c0e
	nop			;6c0f
	rrca			;6c10
	daa			;6c11
	di			;6c12
	rrca			;6c13
	inc b			;6c14
	rrca			;6c15
	sbc a,c			;6c16
	in a,(033h)		;6c17
	defb 0edh ;next byte illegal after ed	;6c19
	ld d,h			;6c1a
	rrca			;6c1b
	inc c			;6c1c
	ret p			;6c1d
	rrca			;6c1e
	rrca			;6c1f
	ex (sp),hl		;6c20
l6c21h:
	dec (hl)		;6c21
	nop			;6c22
	add hl,bc		;6c23
	rrca			;6c24
	ld (02a73h),a		;6c25
	dec c			;6c28
	jr z,l6c2bh		;6c29
l6c2bh:
	ld (0ec93h),a		;6c2b
	rrca			;6c2e
	ld h,e			;6c2f
	jr z,l6bedh		;6c30
	pop hl			;6c32
	ccf			;6c33
	dec e			;6c34
	ld bc,0870fh		;6c35
	sub e			;6c38
	cpl			;6c39
	nop			;6c3a
l6c3bh:
	inc de			;6c3b
	ld c,a			;6c3c
	sbc a,b			;6c3d
	and e			;6c3e
	dec l			;6c3f
	nop			;6c40
	ld c,a			;6c41
	ld d,00fh		;6c42
	djnz l6c55h		;6c44
	scf			;6c46
	rla			;6c47
	rrca			;6c48
	sbc a,b			;6c49
	add a,e			;6c4a
	ld h,0fdh		;6c4b
	ld a,c			;6c4d
	add hl,de		;6c4e
	cpl			;6c4f
	rst 0			;6c50
	rrca			;6c51
	inc bc			;6c52
	dec de			;6c53
	rrca			;6c54
l6c55h:
	sbc a,b			;6c55
	jr c,l6c89h		;6c56
	nop			;6c58
	ld e,l			;6c59
	inc e			;6c5a
	cp (hl)			;6c5b
	ld (de),a		;6c5c
	halt			;6c5d
	rrca			;6c5e
	jp 0311eh		;6c5f
	ld (bc),a		;6c62
	ld e,06fh		;6c63
	ld h,a			;6c65
	jr c,l6c98h		;6c66
	rra			;6c68
	xor d			;6c69
	jr c,l6c3bh		;6c6a
	dec h			;6c6c
	ld (0a20fh),hl		;6c6d
	inc d			;6c70
	sbc a,a			;6c71
	ld a,b			;6c72
	rrca			;6c73
	scf			;6c74
	nop			;6c75
	ld h,00fh		;6c76
	inc a			;6c78
	rra			;6c79
	ld a,b			;6c7a
	inc h			;6c7b
	rrca			;6c7c
	and d			;6c7d
	ld (01ecfh),a		;6c7e
	add hl,sp		;6c81
	nop			;6c82
	ld hl,(l630fh)		;6c83
	add a,e			;6c86
	dec sp			;6c87
	add a,d			;6c88
l6c89h:
	rrca			;6c89
	ret z			;6c8a
	ld h,h			;6c8b
	ret z			;6c8c
	ld hl,03d93h		;6c8d
	ld b,02ch		;6c90
	rst 38h			;6c92
	rrca			;6c93
	call pe,0028dh		;6c94
	and b			;6c97
l6c98h:
	ld d,b			;6c98
l6c99h:
	and 090h		;6c99
sub_6c9bh:
	and b			;6c9b
	dec b			;6c9c
	ld hl,0f45ah		;6c9d
	dec b			;6ca0
	ld h,h			;6ca1
	ld h,b			;6ca2
	ld b,(hl)		;6ca3
l6ca4h:
	ld (bc),a		;6ca4
	nop			;6ca5
	ld e,d			;6ca6
	add a,d			;6ca7
	ld h,b			;6ca8
	ld (01062h),a		;6ca9
	rra			;6cac
	ld e,h			;6cad
	scf			;6cae
	ld (bc),a		;6caf
	ld c,081h		;6cb0
	ld e,a			;6cb2
	nop			;6cb3
	ret			;6cb4
	ld l,(hl)		;6cb5
	or b			;6cb6
	ret z			;6cb7
	defb 0edh ;next byte illegal after ed	;6cb8
	add a,b			;6cb9
	ret z			;6cba
	ld (l4850h),a		;6cbb
	ld d,b			;6cbe
	ld (bc),a		;6cbf
	ld e,d			;6cc0
	ld (bc),a		;6cc1
	adc a,h			;6cc2
	add hl,de		;6cc3
	rla			;6cc4
	ld d,b			;6cc5
	ld a,b			;6cc6
	pop hl			;6cc7
	inc d			;6cc8
	ld c,082h		;6cc9
	inc (hl)		;6ccb
	ld c,00ah		;6ccc
	rst 30h			;6cce
	ret nc			;6ccf
	ld h,03ch		;6cd0
	ld a,047h		;6cd2
	nop			;6cd4
	adc a,h			;6cd5
	inc hl			;6cd6
	jr nz,l6cf7h		;6cd7
	push af			;6cd9
	jr nz,l6ca4h		;6cda
	jr z,l6d02h		;6cdc
	ld b,b			;6cde
	sub (hl)		;6cdf
	add a,b			;6ce0
	nop			;6ce1
	ld c,b			;6ce2
	ld bc,08c40h		;6ce3
	ld c,e			;6ce6
	ret nc			;6ce7
	ex af,af'		;6ce8
	ld e,012h		;6ce9
	ld b,b			;6ceb
	or h			;6cec
	and 00bh		;6ced
	ld e,l			;6cef
	ld (bc),a		;6cf0
	ld h,b			;6cf1
	rst 30h			;6cf2
	ld b,h			;6cf3
	djnz $+1		;6cf4
	ld l,c			;6cf6
l6cf7h:
	add a,b			;6cf7
	ld (bc),a		;6cf8
	ld h,h			;6cf9
	nop			;6cfa
	xor c			;6cfb
	ld h,h			;6cfc
	djnz l6d3eh		;6cfd
	add a,b			;6cff
	dec b			;6d00
	xor b			;6d01
l6d02h:
	inc a			;6d02
	djnz l6d4bh		;6d03
	adc a,(hl)		;6d05
	nop			;6d06
	jr nz,l6c99h		;6d07
	ld (02802h),a		;6d09
	ret po			;6d0c
	inc b			;6d0d
	jp m,01020h		;6d0e
	ld h,b			;6d11
	ld c,a			;6d12
	sub (hl)		;6d13
	ld a,(de)		;6d14
	ld d,b			;6d15
	add a,d			;6d16
	add hl,bc		;6d17
	inc d			;6d18
	ret nc			;6d19
	ld b,h			;6d1a
	jp 01e50h		;6d1b
	ex af,af'		;6d1e
	nop			;6d1f
	or h			;6d20
	or b			;6d21
	xor b			;6d22
l6d23h:
	rlc b			;6d23
	or b			;6d25
	inc bc			;6d26
	add a,h			;6d27
l6d28h:
	ld a,(de)		;6d28
	ld (l6440h),a		;6d29
	add hl,hl		;6d2c
	ld b,b			;6d2d
	ld b,c			;6d2e
	ld d,b			;6d2f
	dec (hl)		;6d30
	ld bc,l4270h		;6d31
	ld e,d			;6d34
	ex af,af'		;6d35
	add hl,hl		;6d36
	ld b,(hl)		;6d37
	cpl			;6d38
	ld d,e			;6d39
	add a,d			;6d3a
	ld (bc),a		;6d3b
	inc de			;6d3c
	ld a,b			;6d3d
l6d3eh:
	inc a			;6d3e
	dec b			;6d3f
	inc a			;6d40
	dec b			;6d41
	ld b,b			;6d42
	ld h,h			;6d43
	and b			;6d44
	ld b,b			;6d45
	ld l,(hl)		;6d46
	ld a,(bc)		;6d47
	ld b,b			;6d48
	jr z,l6d69h		;6d49
l6d4bh:
	ld a,(bc)		;6d4b
	ex af,af'		;6d4c
	ld (bc),a		;6d4d
	ld (0a40ah),a		;6d4e
	jr z,l6d55h		;6d51
	jr z,l6d57h		;6d53
l6d55h:
	ld e,d			;6d55
	adc a,c			;6d56
l6d57h:
	jr nz,l6d9fh		;6d57
	ld e,011h		;6d59
	pop hl			;6d5b
	ex af,af'		;6d5c
	dec d			;6d5d
	ld a,(de)		;6d5e
	or b			;6d5f
	rst 10h			;6d60
	ld b,b			;6d61
	dec e			;6d62
	call c,l5f4fh+1		;6d63
	ld h,l			;6d66
	ld d,b			;6d67
	ld h,d			;6d68
l6d69h:
	rst 38h			;6d69
	ld c,l			;6d6a
	ld a,e			;6d6b
	dec e			;6d6c
	ld b,h			;6d6d
	ld d,l			;6d6e
	jp c,031adh		;6d6f
	ld b,b			;6d72
	ld b,d			;6d73
	dec bc			;6d74
	ld (hl),00bh		;6d75
	jr nz,l6d28h		;6d77
	dec bc			;6d79
	add a,e			;6d7a
	jr nz,$+62		;6d7b
	rst 38h			;6d7d
	add a,b			;6d7e
	add hl,hl		;6d7f
	ld d,b			;6d80
	jr nz,l6dabh		;6d81
	inc d			;6d83
	ld d,b			;6d84
	inc d			;6d85
	sub e			;6d86
	ld (bc),a		;6d87
	ld e,002h		;6d88
	add hl,de		;6d8a
	dec b			;6d8b
	adc a,h			;6d8c
	dec bc			;6d8d
	ld h,h			;6d8e
	jr z,$+13		;6d8f
	and a			;6d91
	ld c,d			;6d92
	jr nc,l6d23h		;6d93
	ex af,af'		;6d95
	ld d,b			;6d96
	ld l,(hl)		;6d97
	ld (bc),a		;6d98
	ld h,d			;6d99
	nop			;6d9a
l6d9bh:
	jr nz,l6e0dh		;6d9b
	sub (hl)		;6d9d
	inc l			;6d9e
l6d9fh:
	ld bc,022d0h		;6d9f
	adc a,h			;6da2
	adc a,c			;6da3
	add a,b			;6da4
	ld a,b			;6da5
	cp a			;6da6
	djnz l6dbdh		;6da7
	nop			;6da9
	xor (hl)		;6daa
l6dabh:
	ld b,h			;6dab
l6dach:
	add a,d			;6dac
	adc a,h			;6dad
	ld bc,019a2h		;6dae
	ld (bc),a		;6db1
	ld e,d			;6db2
	jp c,02cadh		;6db3
	ld c,l			;6db6
	ld d,c			;6db7
	ld bc,00265h		;6db8
	ld b,(hl)		;6dbb
	ret z			;6dbc
l6dbdh:
	sub l			;6dbd
	rla			;6dbe
	ex af,af'		;6dbf
	inc l			;6dc0
	sub (hl)		;6dc1
	ex af,af'		;6dc2
	adc a,d			;6dc3
	ret z			;6dc4
	ld (bc),a		;6dc5
	inc h			;6dc6
	ld h,h			;6dc7
	ld e,0a2h		;6dc8
	ret m			;6dca
	ex af,af'		;6dcb
	ld e,e			;6dcc
	and 01dh		;6dcd
	dec sp			;6dcf
	sub c			;6dd0
	and 045h		;6dd1
	jp nz,0cc08h		;6dd3
	cpl			;6dd6
	ld d,b			;6dd7
	call po,08208h		;6dd8
	ld b,b			;6ddb
	ld h,h			;6ddc
	cp (hl)			;6ddd
	ld d,e			;6dde
	ld (bc),a		;6ddf
	sub (hl)		;6de0
	ld b,h			;6de1
	ld l,(hl)		;6de2
	adc a,05ah		;6de3
	adc a,l			;6de5
	jp c,l6449h		;6de6
	add a,c			;6de9
	xor b			;6dea
	add a,h			;6deb
	xor d			;6dec
	ld d,e			;6ded
	ld (bc),a		;6dee
	and b			;6def
	dec b			;6df0
	di			;6df1
	dec h			;6df2
	defb 0edh ;next byte illegal after ed	;6df3
	dec a			;6df4
	ld (bc),a		;6df5
	rrca			;6df6
	ret p			;6df7
	inc a			;6df8
	nop			;6df9
	rst 38h			;6dfa
	ret m			;6dfb
	ld (hl),b		;6dfc
	ld b,e			;6dfd
	nop			;6dfe
	nop			;6dff
	nop			;6e00
	jp 04b73h		;6e01
	inc b			;6e04
	ex af,af'		;6e05
	ex af,af'		;6e06
	inc b			;6e07
	inc b			;6e08
	ld bc,00303h		;6e09
	rlca			;6e0c
l6e0dh:
	nop			;6e0d
	jp m,00001h		;6e0e
	nop			;6e11
	inc c			;6e12
	ex af,af'		;6e13
	inc c			;6e14
	nop			;6e15
	nop			;6e16
	ld (bc),a		;6e17
	ret nz			;6e18
	ret nz			;6e19
	ret z			;6e1a
	jp nz,03cf8h		;6e1b
	rlca			;6e1e
	jr nc,$+98		;6e1f
	nop			;6e21
	inc bc			;6e22
	ld h,b			;6e23
	jr l6e46h		;6e24
	inc e			;6e26
	ld c,015h		;6e27
	ld e,020h		;6e29
	rra			;6e2b
	rla			;6e2c
	ld b,003h		;6e2d
	rrca			;6e2f
	ld c,01ch		;6e30
	jr l6e53h		;6e32
	ret nz			;6e34
	nop			;6e35
	ret po			;6e36
	ret p			;6e37
	call p,00fdeh		;6e38
	scf			;6e3b
	rst 38h			;6e3c
	ret m			;6e3d
	ld a,(bc)		;6e3e
	ld b,b			;6e3f
	sub b			;6e40
	dec b			;6e41
	nop			;6e42
	defb 0fdh,001h,04eh ;illegal sequence	;6e43
l6e46h:
	rlca			;6e46
	inc c			;6e47
	djnz l6e69h		;6e48
	ld h,b			;6e4a
	ccf			;6e4b
	jp p,03ffch		;6e4c
	cp 01eh			;6e4f
	cp (hl)			;6e51
	ret nz			;6e52
l6e53h:
	nop			;6e53
	ld b,b			;6e54
	ld (bc),a		;6e55
	djnz l6e97h		;6e56
	rra			;6e58
	ld e,h			;6e59
	rlca			;6e5a
	ld bc,0381ch		;6e5b
	jr nc,l6e60h		;6e5e
l6e60h:
	nop			;6e60
	ld (0f6d8h),hl		;6e61
	ld (iy+078h),e		;6e64
	inc b			;6e67
	ccf			;6e68
l6e69h:
	ld b,c			;6e69
	dec sp			;6e6a
	ld bc,000f2h		;6e6b
	ld (bc),a		;6e6e
	rrca			;6e6f
	halt			;6e70
	ccf			;6e71
	call pe,0e251h		;6e72
	ld h,c			;6e75
	add a,b			;6e76
	ld (hl),d		;6e77
	ccf			;6e78
	ld (hl),b		;6e79
	ret nc			;6e7a
	ccf			;6e7b
	jr $+65			;6e7c
	jr c,l6e94h		;6e7e
	ld e,00fh		;6e80
l6e82h:
	rlca			;6e82
	inc c			;6e83
	ccf			;6e84
	ld bc,l7c40h		;6e85
	ld a,(hl)		;6e88
	rra			;6e89
	add a,b			;6e8a
	ld d,008h		;6e8b
	ld a,0ffh		;6e8d
	nop			;6e8f
l6e90h:
	call po,05a00h		;6e90
	rra			;6e93
l6e94h:
	nop			;6e94
	rst 38h			;6e95
	inc bc			;6e96
l6e97h:
	add hl,bc		;6e97
	ld a,h			;6e98
	add hl,bc		;6e99
	inc bc			;6e9a
	rst 38h			;6e9b
	rra			;6e9c
	or b			;6e9d
	ld h,h			;6e9e
	jr nc,l6ef1h		;6e9f
	cp b			;6ea1
	nop			;6ea2
	call nc,0d8dah		;6ea3
	djnz l6e90h		;6ea6
l6ea8h:
	djnz l6e82h		;6ea8
	jp c,0d41ch		;6eaa
	cp b			;6ead
	ld d,b			;6eae
	ld c,e			;6eaf
	daa			;6eb0
	inc bc			;6eb1
	jr nz,l6ef0h		;6eb2
	dec e			;6eb4
	ld a,d			;6eb5
	nop			;6eb6
	ret nc			;6eb7
	nop			;6eb8
	ret pe			;6eb9
	ld d,0e8h		;6eba
	jr l6ea8h		;6ebc
	call nc,0d0e8h		;6ebe
	jp pe,0000fh		;6ec1
	inc bc			;6ec4
	rlca			;6ec5
	ld a,a			;6ec6
	rst 38h			;6ec7
	ld a,a			;6ec8
	rrca			;6ec9
	inc bc			;6eca
	ld c,0c0h		;6ecb
	and b			;6ecd
	xor b			;6ece
	daa			;6ecf
	call nc,01ed6h		;6ed0
	ret po			;6ed3
	ld c,07ch		;6ed4
	ld h,c			;6ed6
	inc sp			;6ed7
	inc a			;6ed8
	ld b,b			;6ed9
	rrca			;6eda
	and (hl)		;6edb
	ld d,b			;6edc
	ld e,033h		;6edd
	jr l6f24h		;6edf
	ld e,l			;6ee1
	sbc a,(hl)		;6ee2
	nop			;6ee3
	add hl,de		;6ee4
	inc a			;6ee5
	nop			;6ee6
	dec c			;6ee7
	ex (sp),hl		;6ee8
	rrca			;6ee9
	ret pe			;6eea
	ld bc,000e3h		;6eeb
	rlca			;6eee
	push bc			;6eef
l6ef0h:
	add a,b			;6ef0
l6ef1h:
	nop			;6ef1
	rst 0			;6ef2
	rlca			;6ef3
	adc a,a			;6ef4
	ccf			;6ef5
	rst 18h			;6ef6
	nop			;6ef7
	ret m			;6ef8
	jr nz,l6f2bh		;6ef9
	inc e			;6efb
	dec b			;6efc
	dec d			;6efd
	dec (hl)		;6efe
	ld (de),a		;6eff
	dec d			;6f00
	dec b			;6f01
	inc e			;6f02
	cp e			;6f03
	call c,0a0dfh		;6f04
	ret p			;6f07
	call m,sub_7bf0h	;6f08
l6f0bh:
	ret nz			;6f0b
	dec h			;6f0c
	nop			;6f0d
	ld (bc),a		;6f0e
	ld e,c			;6f0f
sub_6f10h:
	sub e			;6f10
	or (hl)			;6f11
	rst 8			;6f12
	ld h,c			;6f13
	ex af,af'		;6f14
	pop af			;6f15
	djnz l6f26h		;6f16
	ld b,b			;6f18
	ld a,(0ec57h)		;6f19
	ld a,a			;6f1c
	jp 0f060h		;6f1d
	ret p			;6f20
	ld h,b			;6f21
	ld e,(hl)		;6f22
	rst 20h			;6f23
l6f24h:
	and d			;6f24
	sub (hl)		;6f25
l6f26h:
	sub l			;6f26
	add a,(hl)		;6f27
	jr nc,l6f2ah		;6f28
l6f2ah:
	ld c,l			;6f2a
l6f2bh:
	and (hl)		;6f2b
	and d			;6f2c
	inc l			;6f2d
	jp 0385ch		;6f2e
	jr l6f3fh		;6f31
	nop			;6f33
	ld c,018h		;6f34
	jr c,l6f9bh		;6f36
	ld b,b			;6f38
	inc bc			;6f39
l6f3ah:
	inc c			;6f3a
	inc de			;6f3b
	rla			;6f3c
	ld l,02ch		;6f3d
l6f3fh:
	rlca			;6f3f
	inc l			;6f40
	ld l,017h		;6f41
	inc de			;6f43
	inc c			;6f44
	rra			;6f45
	jr nz,$+50		;6f46
	ret z			;6f48
	ret pe			;6f49
	ld (hl),h		;6f4a
	inc (hl)		;6f4b
	ld b,034h		;6f4c
	ld (hl),h		;6f4e
	ret pe			;6f4f
	ret z			;6f50
	jr nc,$+33		;6f51
	ret			;6f53
	ld a,01eh		;6f54
	push de			;6f56
	sub h			;6f57
	ld (hl),b		;6f58
	and l			;6f59
	ld b,070h		;6f5a
	jr nc,l6f96h		;6f5c
	ld e,040h		;6f5e
	ret nz			;6f60
	ld a,078h		;6f61
	inc e			;6f63
	inc c			;6f64
	ld c,006h		;6f65
	ld c,h			;6f67
	ld b,0f3h		;6f68
	inc e			;6f6a
	ld l,h			;6f6b
	ld a,b			;6f6c
	ld b,b			;6f6d
	ld a,011h		;6f6e
l6f70h:
	nop			;6f70
	ld h,028h		;6f71
	ld c,b			;6f73
	ld d,b			;6f74
	ld d,b			;6f75
	ld c,b			;6f76
	jr z,$+40		;6f77
	ld l,h			;6f79
	ld de,03e40h		;6f7a
l6f7dh:
	adc a,b			;6f7d
	nop			;6f7e
	ld h,h			;6f7f
	inc d			;6f80
	ld (de),a		;6f81
	ld a,(bc)		;6f82
	ld a,(bc)		;6f83
	ld (de),a		;6f84
	inc d			;6f85
	ld h,h			;6f86
l6f87h:
	ld h,l			;6f87
	adc a,b			;6f88
	ld b,b			;6f89
l6f8ah:
	push bc			;6f8a
	dec d			;6f8b
	sbc a,h			;6f8c
	inc c			;6f8d
	jr nz,l6ff0h		;6f8e
	ret nz			;6f90
	nop			;6f91
l6f92h:
	nop			;6f92
	ld h,b			;6f93
	jr nz,l6f96h		;6f94
l6f96h:
	inc c			;6f96
	rlca			;6f97
	inc bc			;6f98
	ret nz			;6f99
	ret po			;6f9a
l6f9bh:
	ld d,b			;6f9b
	jr nc,l6f70h		;6f9c
	ld b,061h		;6f9e
	inc bc			;6fa0
	nop			;6fa1
	ld b,004h		;6fa2
	ld sp,hl		;6fa4
	djnz l6f87h		;6fa5
	ret nz			;6fa7
	inc bc			;6fa8
	ld b,(hl)		;6fa9
	inc b			;6faa
	jp z,0cacah		;6fab
	xor c			;6fae
	ld b,b			;6faf
	call pe,01f6ah		;6fb0
	dec h			;6fb3
	ex de,hl		;6fb4
	ld (055eah),a		;6fb5
	ld (bc),a		;6fb8
	ex af,af'		;6fb9
	add a,d			;6fba
	jr nz,l6f7dh		;6fbb
	inc c			;6fbd
	rst 38h			;6fbe
	sub b			;6fbf
	inc bc			;6fc0
	ld h,002h		;6fc1
	ld hl,02b2bh		;6fc3
	ld hl,00326h		;6fc6
	adc a,c			;6fc9
	or b			;6fca
	inc c			;6fcb
	jr nz,l6fceh		;6fcc
l6fceh:
	jr nz,$+18		;6fce
	djnz l6f92h		;6fd0
	ld b,d			;6fd2
	xor d			;6fd3
	jp c,014d2h		;6fd4
	or d			;6fd7
	ld h,(hl)		;6fd8
	add a,b			;6fd9
	add hl,bc		;6fda
	dec c			;6fdb
	ex af,af'		;6fdc
	xor c			;6fdd
	sub e			;6fde
	ld de,0043fh		;6fdf
	ld e,l			;6fe2
	ld d,e			;6fe3
	ld d,e			;6fe4
	ld e,l			;6fe5
	ccf			;6fe6
	ld de,01055h		;6fe7
	jp 08002h		;6fea
	adc a,b			;6fed
	nop			;6fee
	inc h			;6fef
l6ff0h:
	sub h			;6ff0
	ld b,h			;6ff1
	ld h,04ch		;6ff2
	adc a,h			;6ff4
	dec d			;6ff5
	adc a,b			;6ff6
	inc e			;6ff7
	inc l			;6ff8
	ld (bc),a		;6ff9
	sub h			;6ffa
	nop			;6ffb
	ccf			;6ffc
	ld l,a			;6ffd
	ld b,e			;6ffe
	inc b			;6fff
	inc de			;7000
l7001h:
	inc de			;7001
	ld b,h			;7002
	ld l,e			;7003
	xor d			;7004
	jp po,09482h		;7005
	ld h,b			;7008
	ld b,b			;7009
	ld bc,0f4a0h		;700a
l700dh:
	inc b			;700d
	and b			;700e
	ld h,b			;700f
	ld a,b			;7010
	add a,b			;7011
	and h			;7012
	ld h,b			;7013
	call nz,0b0d8h		;7014
	add a,h			;7017
	dec b			;7018
	ld bc,07b3bh		;7019
	dec d			;701c
	inc bc			;701d
	rlca			;701e
l701fh:
	scf			;701f
	scf			;7020
	inc sp			;7021
	inc e			;7022
	rlca			;7023
l7024h:
	rra			;7024
	nop			;7025
	ret po			;7026
	or b			;7027
	ret c			;7028
	sbc a,b			;7029
	ret p			;702a
	djnz l7051h		;702b
	cp d			;702d
	cp h			;702e
	jr z,$-78		;702f
	ld (hl),h		;7031
	ld (hl),b		;7032
	ld b,(hl)		;7033
	ld (hl),b		;7034
	rst 18h			;7035
	ld bc,01004h		;7036
	ld bc,00605h		;7039
	ld d,a			;703c
	ret p			;703d
	djnz l7045h		;703e
	ld bc,l4610h		;7040
	inc b			;7043
	rst 18h			;7044
l7045h:
	ld b,h			;7045
	and a			;7046
	djnz l7091h		;7047
l7049h:
	ld b,06ah		;7049
	jr c,l7001h		;704b
	jp nz,01006h		;704d
	or a			;7050
l7051h:
	inc l			;7051
	ld e,015h		;7052
l7054h:
	inc sp			;7054
	add hl,hl		;7055
	jr $+70			;7056
	call nc,00210h		;7058
	jr l7086h		;705b
l705dh:
	inc sp			;705d
	and b			;705e
	jr nz,$+32		;705f
l7061h:
	sbc a,b			;7061
	ld hl,(00731h)		;7062
	or b			;7065
	ld sp,hl		;7066
	jr c,l7061h		;7067
	inc c			;7069
	rlca			;706a
	ld sp,0982ah		;706b
	jr nz,l7024h		;706e
	dec de			;7070
	ccf			;7071
	dec hl			;7072
	inc bc			;7073
	jp c,0c13fh		;7074
	jp (hl)			;7077
	ld (0313fh),hl		;7078
	sbc a,h			;707b
	ccf			;707c
	ld (04cdfh),hl		;707d
	sbc a,d			;7080
	ld (bc),a		;7081
	add hl,bc		;7082
	ccf			;7083
	jr z,l7049h		;7084
l7086h:
	ccf			;7086
	add hl,bc		;7087
	ld (bc),a		;7088
	jr nz,l70cdh		;7089
	add a,b			;708b
	jr nz,l70e2h		;708c
	ld b,03fh		;708e
	inc b			;7090
l7091h:
	inc e			;7091
	ret m			;7092
	ld b,054h		;7093
	jr nz,$-32		;7095
	ret pe			;7097
	ld b,019h		;7098
	ld b,a			;709a
	djnz l7061h		;709b
	and e			;709d
	ld c,000h		;709e
	rrca			;70a0
l70a1h:
	nop			;70a1
l70a2h:
	dec de			;70a2
	ld (bc),a		;70a3
	call nz,01b5bh		;70a4
	nop			;70a7
	ld (hl),b		;70a8
	jr nz,l70a1h		;70a9
	and l			;70ab
	adc a,d			;70ac
	pop de			;70ad
sub_70aeh:
	ld c,c			;70ae
	ld h,b			;70af
	rst 10h			;70b0
	inc bc			;70b1
	ld (bc),a		;70b2
	add a,b			;70b3
	jr $-30			;70b4
	ccf			;70b6
	ld b,e			;70b7
	ld b,008h		;70b8
	jr nz,l70fch		;70ba
	ld d,a			;70bc
	sbc a,d			;70bd
	dec e			;70be
	cp (hl)			;70bf
	halt			;70c0
	or h			;70c1
	ld b,b			;70c2
	ld b,b			;70c3
	add a,(hl)		;70c4
	ld (hl),b		;70c5
	sbc a,b			;70c6
	inc hl			;70c7
	ret m			;70c8
	ld (hl),b		;70c9
	jp z,01438h		;70ca
l70cdh:
	ld h,05bh		;70cd
	call nz,00f17h		;70cf
	ld b,b			;70d2
	inc bc			;70d3
	and e			;70d4
	call nz,01947h		;70d5
	ld b,09bh		;70d8
	inc d			;70da
	jr l705dh		;70db
	ld c,h			;70dd
	ld (bc),a		;70de
	add a,a			;70df
	ld h,b			;70e0
	or c			;70e1
l70e2h:
	adc a,08ah		;70e2
	ret			;70e4
	ld h,c			;70e5
	jr nz,l7158h		;70e6
	ld (hl),0dch		;70e8
	adc a,a			;70ea
	ld h,h			;70eb
	res 1,b			;70ec
	ld b,0a0h		;70ee
	ex (sp),hl		;70f0
	ld (hl),001h		;70f1
	ld (hl),b		;70f3
	ret m			;70f4
	sbc a,b			;70f5
	ld (hl),b		;70f6
	add a,(hl)		;70f7
	djnz l715ah		;70f8
	ld c,h			;70fa
	ret nz			;70fb
l70fch:
	ret			;70fc
	call p,0ad00h		;70fd
	call po,09cb5h		;7100
	ld l,e			;7103
	ld e,d			;7104
l7105h:
	adc a,a			;7105
	xor e			;7106
	ld (de),a		;7107
	ld h,(hl)		;7108
	add hl,hl		;7109
	inc h			;710a
	cp e			;710b
	ld b,(hl)		;710c
	sbc a,a			;710d
l710eh:
	djnz $-62		;710e
	and b			;7110
	add hl,de		;7111
	ld b,(hl)		;7112
	ld b,d			;7113
	add a,d			;7114
	add a,b			;7115
	ld bc,l58b4h		;7116
	and b			;7119
	ld (hl),b		;711a
	ret po			;711b
	rst 38h			;711c
	nop			;711d
	set 2,(hl)		;711e
	sbc a,l			;7120
	in a,(0e3h)		;7121
	ld h,a			;7123
	halt			;7124
	jp nc,0f702h		;7125
	sbc a,0f0h		;7128
	rst 18h			;712a
	call pe,0bfe0h		;712b
	inc (hl)		;712e
	ld d,b			;712f
	ld a,b			;7130
	nop			;7131
	sub 0afh		;7132
	sub e			;7134
	ld h,e			;7135
	and e			;7136
	ld b,d			;7137
	halt			;7138
	cp h			;7139
	nop			;713a
	ret c			;713b
	ld (hl),b		;713c
	ret nz			;713d
	jp nc,0a9edh		;713e
	jp pe,000b8h		;7141
	sub c			;7144
	ld l,b			;7145
	ld e,e			;7146
	add a,(hl)		;7147
	xor c			;7148
	ld (hl),h		;7149
	ld a,(03429h)		;714a
	ld c,b			;714d
	or b			;714e
	ld l,b			;714f
	ret po			;7150
	sub b			;7151
	inc d			;7152
	ld c,b			;7153
	sub h			;7154
	sub b			;7155
	cp e			;7156
	inc d			;7157
l7158h:
	ret pe			;7158
	or b			;7159
l715ah:
	cp (hl)			;715a
	add a,b			;715b
	call p,0dfffh		;715c
	sub 09bh		;715f
	nop			;7161
	sbc a,0e7h		;7162
	ld h,a			;7164
	ld (hl),a		;7165
	out (0fbh),a		;7166
	out (0e7h),a		;7168
	ld a,(de)		;716a
	defb 0ddh,0eeh,0f0h ;illegal sequence	;716b
	ld e,a			;716e
	jr nz,l7171h		;716f
l7171h:
	ret m			;7171
	cp h			;7172
	halt			;7173
	ld a,d			;7174
	cp d			;7175
	ld (hl),h		;7176
	ld l,h			;7177
	cp b			;7178
	and l			;7179
	rst 38h			;717a
	nop			;717b
	ld (hl),00ch		;717c
	jp nz,08234h		;717e
	adc a,d			;7181
	exx			;7182
	ld b,012h		;7183
	cp d			;7185
	jr nc,l719ch		;7186
	cp a			;7188
	sub d			;7189
	jp 03810h		;718a
	inc b			;718d
	ld a,b			;718e
	ld (bc),a		;718f
	rst 28h			;7190
	jr nz,l719dh		;7191
	cp l			;7193
	and d			;7194
	add a,b			;7195
	ret po			;7196
	cp l			;7197
	ret po			;7198
	add hl,sp		;7199
	ld (hl),e		;719a
	ld e,h			;719b
l719ch:
	cp a			;719c
l719dh:
	call m,00976h		;719d
l71a0h:
	daa			;71a0
	ld sp,hl		;71a1
sub_71a2h:
	defb 0fdh,037h,0beh ;illegal sequence	;71a2
	sub c			;71a5
	ld c,0d7h		;71a6
	nop			;71a8
	cp h			;71a9
	cp (hl)			;71aa
	and 0e2h		;71ab
	inc hl			;71ad
	ex (sp),hl		;71ae
	rrca			;71af
	inc de			;71b0
	rst 18h			;71b1
	add a,e			;71b2
	sbc a,(hl)		;71b3
	ex (sp),hl		;71b4
	cpl			;71b5
	ret po			;71b6
	and b			;71b7
	ld b,b			;71b8
	rlca			;71b9
	ld b,h			;71ba
	ld b,c			;71bb
	ld de,0b131h		;71bc
l71bfh:
	ld c,0c1h		;71bf
l71c1h:
	ld b,0b8h		;71c1
	ld (02a3fh),a		;71c3
	cp (hl)			;71c6
	adc a,d			;71c7
	cp h			;71c8
	sub (hl)		;71c9
	and c			;71ca
	inc a			;71cb
	ld c,b			;71cc
	jr $-66			;71cd
l71cfh:
	ld (hl),0bfh		;71cf
	and h			;71d1
	cp b			;71d2
	and b			;71d3
	ccf			;71d4
	ei			;71d5
	cp 001h			;71d6
	jp m,07ffeh		;71d8
	ccf			;71db
	ld sp,hl		;71dc
	call m,03f36h		;71dd
	ret nz			;71e0
	ret p			;71e1
	ret m			;71e2
	call nz,0f401h		;71e3
	call p,0fc34h		;71e6
	xor b			;71e9
	ret m			;71ea
l71ebh:
	ret p			;71eb
	xor c			;71ec
	ld d,h			;71ed
	ccf			;71ee
	ret nz			;71ef
	or (hl)			;71f0
	ret po			;71f1
	di			;71f2
	xor b			;71f3
	dec a			;71f4
	nop			;71f5
	dec a			;71f6
	rrca			;71f7
	cp 000h			;71f8
	sub h			;71fa
	ld bc,l4ab2h		;71fb
	ex af,af'		;71fe
	jp pe,00b8ah		;71ff
	jr z,l71bfh		;7202
	adc a,e			;7204
	add hl,bc		;7205
	djnz l71c1h		;7206
	defb 0edh ;next byte illegal after ed	;7208
	add a,b			;7209
	call po,0f042h		;720a
	cp e			;720d
	and e			;720e
	sub b			;720f
	ex af,af'		;7210
	cp a			;7211
	add hl,de		;7212
	call nz,0d0d5h		;7213
	jp c,00245h		;7216
	adc a,0deh		;7219
	ex de,hl		;721b
	jp 0f824h		;721c
	inc a			;721f
	ld b,h			;7220
	nop			;7221
	ld a,d			;7222
	inc b			;7223
	jr l725ah		;7224
	ld (hl),l		;7226
	ld (l50a3h),hl		;7227
	daa			;722a
	jp m,0307ch		;722b
	inc bc			;722e
	ld sp,0703bh		;722f
	ld a,b			;7232
	sub d			;7233
	and c			;7234
l7235h:
	add a,c			;7235
	ret nz			;7236
	push hl			;7237
	call p,010e0h		;7238
	add a,e			;723b
	dec a			;723c
	ld a,b			;723d
	ld (hl),b		;723e
	ld b,b			;723f
	ld bc,l4af5h		;7240
	sub h			;7243
	ret nz			;7244
	and (hl)		;7245
	inc b			;7246
	add a,b			;7247
	and h			;7248
	xor h			;7249
	ret			;724a
	and c			;724b
	sub h			;724c
	ld bc,0233dh		;724d
	inc a			;7250
	rst 10h			;7251
	ld de,0ea35h		;7252
	inc sp			;7255
	dec d			;7256
	add a,(hl)		;7257
	ld l,b			;7258
	sbc a,d			;7259
l725ah:
	nop			;725a
	ld b,079h		;725b
	ld bc,03a03h		;725d
	nop			;7260
	ld (hl),d		;7261
	inc c			;7262
	nop			;7263
	ld b,b			;7264
	ld (hl),d		;7265
	ld bc,0033ah		;7266
	ld bc,00679h		;7269
	cp h			;726c
	cp a			;726d
	pop de			;726e
	sbc a,a			;726f
	xor 0bfh		;7270
	sbc a,d			;7272
	sbc a,09ah		;7273
	res 7,a			;7275
	ret p			;7277
	ld bc,l4c4eh		;7278
	or (hl)			;727b
	push af			;727c
	adc a,l			;727d
	dec b			;727e
	inc c			;727f
	ld (de),a		;7280
	ld e,00ch		;7281
	adc a,l			;7283
	ret			;7284
	nop			;7285
	or (hl)			;7286
	ld c,(hl)		;7287
	ld bc,03880h		;7288
	ld b,00eh		;728b
	ret nz			;728d
l728eh:
	ret m			;728e
	ld sp,l6840h		;728f
	nop			;7292
	ld sp,0c0f8h		;7293
	ld c,038h		;7296
	add a,b			;7298
	dec b			;7299
	inc bc			;729a
	dec c			;729b
	dec l			;729c
	ld l,(hl)		;729d
	ld (hl),a		;729e
	dec sp			;729f
	ld bc,09082h		;72a0
	dec l			;72a3
	ld e,l			;72a4
	nop			;72a5
	dec sp			;72a6
	scf			;72a7
	ld d,006h		;72a8
	add a,b			;72aa
	or b			;72ab
sub_72ach:
	jp c,000c0h		;72ac
	jr $-31			;72af
	ld d,h			;72b1
	sbc a,a			;72b2
	sbc a,a			;72b3
	ld d,h			;72b4
	rst 18h			;72b5
	jr l72b8h		;72b6
l72b8h:
	ld b,b			;72b8
	ld l,h			;72b9
	ret c			;72ba
	add a,b			;72bb
	ld b,016h		;72bc
	ld (hl),037h		;72be
	jr z,l72fdh		;72c0
sub_72c2h:
	inc e			;72c2
	ret nc			;72c3
	xor b			;72c4
	adc a,(hl)		;72c5
	ld (0156eh),a		;72c6
	ld e,l			;72c9
	dec de			;72ca
	dec de			;72cb
	rst 38h			;72cc
	inc d			;72cd
	ret c			;72ce
	call po,009c0h		;72cf
	ld l,080h		;72d2
	adc a,a			;72d4
	ld b,b			;72d5
	ld l,0beh		;72d6
	ld hl,l68b2h		;72d8
	sbc a,a			;72db
l72dch:
	inc (hl)		;72dc
	inc de			;72dd
	ld e,l			;72de
l72dfh:
	dec (hl)		;72df
	ld l,(hl)		;72e0
	ld (hl),03fh		;72e1
	ld (hl),01fh		;72e3
	ret nz			;72e5
	nop			;72e6
	ld l,b			;72e7
	or (hl)			;72e8
	halt			;72e9
	add a,b			;72ea
	ccf			;72eb
	add a,b			;72ec
	ld e,h			;72ed
	or (hl)			;72ee
	rra			;72ef
	ld e,a			;72f0
	inc (hl)		;72f1
	add hl,sp		;72f2
	ccf			;72f3
	add hl,sp		;72f4
	ld (hl),a		;72f5
	ex af,af'		;72f6
	ld l,(hl)		;72f7
	dec l			;72f8
	dec c			;72f9
l72fah:
	dec b			;72fa
l72fbh:
	ld e,a			;72fb
	ret z			;72fc
l72fdh:
	ld b,b			;72fd
	call pe,sub_403fh	;72fe
	ret z			;7301
	ld h,h			;7302
	or b			;7303
	ld e,a			;7304
l7305h:
	ld e,(hl)		;7305
	ld e,l			;7306
	ld l,e			;7307
	dec l			;7308
	ccf			;7309
	dec sp			;730a
	rra			;730b
	sub c			;730c
	ret c			;730d
	ld l,h			;730e
	ld b,b			;730f
	ccf			;7310
	exx			;7311
	ret nz			;7312
	jp c,l701fh		;7313
	ld e,a			;7316
	ld (03fd4h),a		;7317
	inc e			;731a
	sbc a,(hl)		;731b
l731ch:
	ld c,b			;731c
	ld (hl),09fh		;731d
	and e			;731f
	ld e,a			;7320
	or d			;7321
	add a,b			;7322
	ccf			;7323
sub_7324h:
	or d			;7324
	nop			;7325
	call po,02c9fh		;7326
	call z,02442h		;7329
	add hl,sp		;732c
	ret m			;732d
	inc l			;732e
	add a,a			;732f
	rla			;7330
	ld (l4bafh),a		;7331
	defb 0fdh,049h,030h ;illegal sequence	;7334
	in a,(041h)		;7337
	ex af,af'		;7339
	ld b,b			;733a
	ld c,b			;733b
	or d			;733c
	ld (hl),a		;733d
	call z,00572h		;733e
	ld c,a			;7341
	add hl,bc		;7342
	ld a,d			;7343
	jr $-38			;7344
	rlca			;7346
	ld bc,00138h		;7347
	cp l			;734a
	dec (hl)		;734b
	push af			;734c
	jr nc,l72dfh		;734d
	ld e,014h		;734f
	ld c,b			;7351
	jr nc,l72dch		;7352
	and b			;7354
	sub 0f8h		;7355
	sbc a,l			;7357
	inc b			;7358
	sbc a,e			;7359
	ld d,b			;735a
	push af			;735b
	jp nz,0123ch		;735c
	ex af,af'		;735f
	sbc a,a			;7360
	ret p			;7361
	ccf			;7362
	ld (bc),a		;7363
	ex af,af'		;7364
	ld a,(de)		;7365
	ld b,d			;7366
	ld c,b			;7367
	djnz l72fah		;7368
l736ah:
	jp 03f4eh		;736a
	add a,d			;736d
	add hl,bc		;736e
	add hl,bc		;736f
	ld b,b			;7370
	inc l			;7371
	ld h,d			;7372
	ld a,b			;7373
	dec b			;7374
l7375h:
	ccf			;7375
	adc a,d			;7376
	sub b			;7377
	ld bc,l6234h		;7378
	cp (hl)			;737b
	ret m			;737c
	ret po			;737d
	ccf			;737e
	jp nz,0c941h		;737f
	ld a,a			;7382
	ld b,008h		;7383
	ccf			;7385
	jp c,08248h		;7386
	ld b,d			;7389
	ld b,b			;738a
	ld c,c			;738b
	push hl			;738c
	ld (hl),e		;738d
	ld a,a			;738e
	cp h			;738f
	xor l			;7390
	dec d			;7391
	ex af,af'		;7392
	ccf			;7393
	and b			;7394
	ld e,03fh		;7395
	ex af,af'		;7397
	nop			;7398
	sbc a,c			;7399
	add a,l			;739a
l739bh:
	inc (hl)		;739b
	add a,(hl)		;739c
	inc h			;739d
	add a,c			;739e
	jr nc,l73c1h		;739f
	ld h,h			;73a1
	dec l			;73a2
	jp m,0162dh		;73a3
	dec l			;73a6
	inc l			;73a7
l73a8h:
	cpl			;73a8
	inc bc			;73a9
	ld b,0b5h		;73aa
	jr nz,l73aeh		;73ac
l73aeh:
	dec hl			;73ae
	ld c,0b9h		;73af
	dec d			;73b1
	dec c			;73b2
	adc a,000h		;73b3
	ld (hl),02fh		;73b5
	ld a,(de)		;73b7
	inc de			;73b8
	defb 0edh ;next byte illegal after ed	;73b9
	ld c,02bh		;73ba
	inc c			;73bc
	add a,h			;73bd
	dec l			;73be
	cpl			;73bf
	ld (bc),a		;73c0
l73c1h:
	dec l			;73c1
l73c2h:
	ex (sp),hl		;73c2
	dec c			;73c3
	ccf			;73c4
	sub a			;73c5
	ld hl,(0ab3fh)		;73c6
	ld hl,(0d13fh)		;73c9
	ld hl,(0c33fh)		;73cc
	ld hl,(0d13fh)		;73cf
	ld hl,(0dd3fh)		;73d2
	inc e			;73d5
	nop			;73d6
	sbc a,c			;73d7
	inc b			;73d8
	rlca			;73d9
	call z,06bb3h		;73da
	dec hl			;73dd
	xor l			;73de
	adc a,h			;73df
	ld c,h			;73e0
	pop hl			;73e1
	or b			;73e2
	dec hl			;73e3
	or b			;73e4
	ld e,l			;73e5
	sbc a,e			;73e6
	ld l,02eh		;73e7
	rrca			;73e9
	ld d,057h		;73ea
	call p,00f8ah		;73ec
	xor h			;73ef
	ld c,h			;73f0
	xor a			;73f1
	cp b			;73f2
	nop			;73f3
	call z,00046h		;73f4
	ld hl,(02b09h)		;73f7
	ld bc,0a16eh		;73fa
	ld hl,(03534h)		;73fd
l7400h:
	add a,d			;7400
	nop			;7401
	dec bc			;7402
	dec bc			;7403
	ld a,(bc)		;7404
	ld c,d			;7405
	ld bc,00c19h		;7406
	dec bc			;7409
	dec l			;740a
	dec bc			;740b
	ld (de),a		;740c
	ld l,c			;740d
	rra			;740e
	dec hl			;740f
	add hl,hl		;7410
	and l			;7411
	dec de			;7412
	rra			;7413
	and (hl)		;7414
	jr nz,$+48		;7415
sub_7417h:
	rra			;7417
	rst 28h			;7418
	jr nz,$-30		;7419
	rla			;741b
	ld d,d			;741c
	rra			;741d
	sbc a,d			;741e
	dec hl			;741f
	add hl,bc		;7420
l7421h:
	call p,02b1fh		;7421
	ld a,(bc)		;7424
	inc c			;7425
	ld de,l6f0bh		;7426
	and e			;7429
	ld c,00bh		;742a
	ld l,a			;742c
	xor a			;742d
	nop			;742e
	inc sp			;742f
	dec bc			;7430
	ld c,005h		;7431
	rst 0			;7433
	nop			;7434
	ex (sp),hl		;7435
	rst 10h			;7436
	add hl,de		;7437
	ld l,000h		;7438
	or e			;743a
	ld l,e			;743b
	nop			;743c
	exx			;743d
	inc c			;743e
	nop			;743f
	ret			;7440
	dec bc			;7441
	dec c			;7442
	ex af,af'		;7443
	out (04dh),a		;7444
	nop			;7446
	add a,(hl)		;7447
	ld c,a			;7448
	nop			;7449
	ld (hl),d		;744a
	add hl,bc		;744b
	dec bc			;744c
	or 000h			;744d
	ld a,e			;744f
	ld b,h			;7450
	nop			;7451
	ld (hl),l		;7452
l7453h:
	ld l,d			;7453
	add a,b			;7454
	add a,a			;7455
	sbc a,l			;7456
	call m,000feh		;7457
	rst 8			;745a
	ld c,b			;745b
	nop			;745c
	ld h,a			;745d
	add hl,hl		;745e
	nop			;745f
	call c,0fb20h		;7460
	nop			;7463
	and h			;7464
	sbc a,d			;7465
	pop bc			;7466
	nop			;7467
	inc b			;7468
	rrca			;7469
sub_746ah:
	dec bc			;746a
	inc b			;746b
	cp b			;746c
	nop			;746d
	nop			;746e
	call po,sub_4a55h	;746f
	ld b,b			;7472
	add hl,sp		;7473
	ld b,d			;7474
	ld c,d			;7475
	add hl,bc		;7476
	ld a,(00505h)		;7477
	exx			;747a
	or e			;747b
	cp h			;747c
	nop			;747d
	sbc a,(hl)		;747e
	ex (sp),hl		;747f
	ret nz			;7480
	dec b			;7481
	ld b,(hl)		;7482
	ld b,b			;7483
	ld b,a			;7484
	inc e			;7485
	ld b,a			;7486
	ld b,b			;7487
	ld c,l			;7488
	nop			;7489
	pop hl			;748a
	add hl,bc		;748b
	ld b,(hl)		;748c
	ld c,089h		;748d
	ret m			;748f
	dec b			;7490
	ex de,hl		;7491
	nop			;7492
	ld a,(bc)		;7493
	ex af,af'		;7494
	ld c,040h		;7495
	out (0c1h),a		;7497
	ld b,(hl)		;7499
	ld b,a			;749a
	ld b,(hl)		;749b
	nop			;749c
	add a,00ah		;749d
	ld h,c			;749f
	rst 38h			;74a0
	nop			;74a1
	ret			;74a2
	dec bc			;74a3
	inc bc			;74a4
	ex af,af'		;74a5
	pop de			;74a6
	ld b,h			;74a7
	ld b,d			;74a8
	nop			;74a9
	or d			;74aa
	sbc a,a			;74ab
	cp h			;74ac
	ex af,af'		;74ad
	ld b,a			;74ae
	rst 38h			;74af
	ld c,d			;74b0
	cpl			;74b1
	sbc a,h			;74b2
	inc e			;74b3
	cpl			;74b4
	add hl,bc		;74b5
	push hl			;74b6
	xor l			;74b7
	call m,007fah		;74b8
	xor c			;74bb
	cpl			;74bc
	ex af,af'		;74bd
	nop			;74be
	ld b,005h		;74bf
	jr c,l7512h		;74c1
	ld c,h			;74c3
	call c,0062fh		;74c4
	ld c,a			;74c7
	ld b,a			;74c8
	ex af,af'		;74c9
	ld b,000h		;74ca
	ld h,a			;74cc
	ld b,e			;74cd
	nop			;74ce
	or h			;74cf
	or l			;74d0
	push hl			;74d1
	nop			;74d2
	ld a,038h		;74d3
	inc c			;74d5
	ld bc,0d494h		;74d6
	ld b,h			;74d9
	ld b,b			;74da
	xor h			;74db
	ld c,b			;74dc
	sbc a,(hl)		;74dd
	adc a,d			;74de
	ld (bc),a		;74df
	ld c,e			;74e0
	ld c,l			;74e1
	ld c,h			;74e2
	ld c,l			;74e3
	inc c			;74e4
	ret z			;74e5
	cp b			;74e6
	inc c			;74e7
	ld b,0cdh		;74e8
	ld bc,0c300h		;74ea
	dec b			;74ed
	inc bc			;74ee
	dec c			;74ef
	rra			;74f0
	dec hl			;74f1
	jr nz,l750ch		;74f2
	nop			;74f4
	ld c,l			;74f5
sub_74f6h:
	ld c,h			;74f6
	ld b,b			;74f7
	nop			;74f8
	ld (00205h),hl		;74f9
	ret p			;74fc
	or b			;74fd
	jp pe,00202h		;74fe
	ld d,c			;7501
	dec bc			;7502
l7503h:
	inc b			;7503
	rst 10h			;7504
	sub c			;7505
	inc c			;7506
	ld c,b			;7507
	ld b,l			;7508
	ld (hl),l		;7509
l750ah:
	djnz l7554h		;750a
l750ch:
	ld b,b			;750c
	inc b			;750d
	ld c,a			;750e
	ld b,l			;750f
	ld b,b			;7510
	ld b,h			;7511
l7512h:
	ld c,e			;7512
	add a,b			;7513
	ld b,l			;7514
	nop			;7515
	ld c,b			;7516
	jp nc,l4b7bh		;7517
	ld a,001h		;751a
	ld (00008h),a		;751c
	jp 0e83ah		;751f
	rst 38h			;7522
	or 002h			;7523
	and 0ffh		;7525
	inc b			;7527
	and 07fh		;7528
	or 080h			;752a
	ld (0f30ah),a		;752c
	inc b			;752f
	out (099h),a		;7530
	ld a,089h		;7532
	ei			;7534
	inc b			;7535
	ld a,(0e744h)		;7536
	dec d			;7539
	jr nz,$+52		;753a
	inc b			;753c
	xor a			;753d
	nop			;753e
	ld (0c10eh),a		;753f
	ld hl,(0057ch)		;7542
	ld (hl),01ah		;7545
	ld hl,l7f2ah		;7547
	inc b			;754a
	ret nc			;754b
	ld hl,(00482h)		;754c
	dec c			;754f
	jp nz,0852ah		;7550
	inc b			;7553
l7554h:
	ld b,d			;7554
	adc a,b			;7555
	inc b			;7556
	djnz l7583h		;7557
	adc a,e			;7559
	inc b			;755a
	ld a,(de)		;755b
	call nc,08e2ah		;755c
	add hl,bc		;755f
	sub c			;7560
	sub 009h		;7561
	sub h			;7563
	add hl,bc		;7564
	or l			;7565
	sub a			;7566
	add hl,bc		;7567
	sbc a,d			;7568
	inc b			;7569
	ex af,af'		;756a
	ret z			;756b
	ld hl,(0049dh)		;756c
	jp nc,000cdh		;756f
	ld e,e			;7572
	ld c,l			;7573
	call l4cfbh		;7574
	call 00563h		;7577
	inc b			;757a
	call sub_75d3h		;757b
	call 0059fh		;757e
	and d			;7581
	sub d			;7582
l7583h:
	ld (bc),a		;7583
	and l			;7584
	ld (bc),a		;7585
	adc a,b			;7586
	ld de,0ce01h		;7587
	ld (hl),h		;758a
	call 05652h		;758b
	call 00baeh		;758e
	inc h			;7591
	add hl,sp		;7592
	ld (bc),a		;7593
	xor b			;7594
	ld (bc),a		;7595
	in a,(010h)		;7596
	ld e,d			;7598
	call 005abh		;7599
	xor d			;759c
	ld d,a			;759d
	call sub_6a40h		;759e
	cpl			;75a1
	rst 10h			;75a2
	ld d,d			;75a3
	ld a,(0c13dh)		;75a4
	inc b			;75a7
	or a			;75a8
	jp z,l4c0ch		;75a9
	ld a,011h		;75ac
	rrca			;75ae
	ld b,(hl)		;75af
	dec b			;75b0
	and h			;75b1
	inc b			;75b2
	ld b,0c1h		;75b3
	ld a,0feh		;75b5
	xor c			;75b7
	ld b,b			;75b8
	pop bc			;75b9
	ld (0c3a3h),a		;75ba
	ld a,010h		;75bd
	inc e			;75bf
	ld (00707h),a		;75c0
	and d			;75c3
	jp l53cdh		;75c4
	inc bc			;75c7
	ld a,(de)		;75c8
	jp l7632h		;75c9
	ld e,l			;75cc
l75cdh:
	and b			;75cd
	jr z,$+45		;75ce
	ld a,(l4895h)		;75d0
sub_75d3h:
	jp l4d2eh		;75d3
	ld d,e			;75d6
	dec (hl)		;75d7
	ld c,l			;75d8
	call nc,0c909h		;75d9
	ld (de),a		;75dc
	ld d,092h		;75dd
	inc hl			;75df
	ccf			;75e0
	ld (bc),a		;75e1
	ld d,d			;75e2
	ld (bc),a		;75e3
	ld c,c			;75e4
	ld c,a			;75e5
	ld (bc),a		;75e6
	ld b,e			;75e7
	ld (bc),a		;75e8
	ld b,b			;75e9
	ccf			;75ea
	ld h,h			;75eb
	sub l			;75ec
	ld b,d			;75ed
	add a,b			;75ee
	ld h,03eh		;75ef
	pop bc			;75f1
	cp 01eh			;75f2
	jp c,00871h		;75f4
	ld c,h			;75f7
	dec a			;75f8
	ld (00b3eh),a		;75f9
	pop de			;75fc
	jp 03c21h		;75fd
	ld (03a03h),a		;7600
	inc de			;7603
	pop bc			;7604
	dec c			;7605
	ld b,c			;7606
	inc bc			;7607
	inc a			;7608
	jp nz,l4bdfh		;7609
	dec a			;760c
	add a,b			;760d
	xor a			;760e
	ret			;760f
	ld hl,04cbch		;7610
	inc b			;7613
	ld (04cb8h),hl		;7614
	ld hl,005dch		;7617
	cp d			;761a
	jr nz,l7669h		;761b
	ld hl,(l5e08h)		;761d
	inc hl			;7620
	ld d,(hl)		;7621
	inc hl			;7622
	dec c			;7623
	ld a,d			;7624
	or e			;7625
	jp z,014fah		;7626
	dec b			;7629
	ex de,hl		;762a
	ld c,(hl)		;762b
	inc hl			;762c
	ld b,(hl)		;762d
	ld hl,(01215h)		;762e
	cp b			;7631
l7632h:
	inc e			;7632
	ex de,hl		;7633
	ld (bc),a		;7634
l7635h:
	ld (hl),c		;7635
	inc hl			;7636
	ld (hl),b		;7637
	jp l4c94h		;7638
	ret pe			;763b
	ld a,b			;763c
	nop			;763d
	dec b			;763e
	ld d,005h		;763f
	rra			;7641
	dec b			;7642
	ld (02e05h),hl		;7643
	nop			;7646
	dec b			;7647
	add hl,de		;7648
	dec b			;7649
	ld sp,l5b05h		;764a
	dec b			;764d
	ld e,(hl)		;764e
	nop			;764f
	dec b			;7650
	ld h,c			;7651
	dec b			;7652
	ld h,a			;7653
	dec b			;7654
	ld l,d			;7655
	dec b			;7656
	ld (hl),b		;7657
	ld (l7305h),hl		;7658
	and c			;765b
	call nc,000aah		;765c
	dec e			;765f
	ld d,e			;7660
	ret m			;7661
	ld d,d			;7662
	sub b			;7663
	ld d,d			;7664
	add a,052h		;7665
	nop			;7667
	ld a,(bc)		;7668
l7669h:
	ld d,e			;7669
	ei			;766a
	ld d,d			;766b
	inc b			;766c
	ld d,e			;766d
	inc e			;766e
	ld e,b			;766f
	nop			;7670
	adc a,d			;7671
	ld d,d			;7672
	adc a,l			;7673
	ld d,d			;7674
	cp 052h			;7675
	ld bc,00053h		;7677
	rlca			;767a
	ld d,e			;767b
	ld sp,09352h		;767c
	ld d,d			;767f
	ret			;7680
	di			;7681
	ld bc,03821h		;7682
	nop			;7685
	ld de,l4d58h		;7686
	ld bc,0c0b0h		;7689
	ldir			;768c
	ld hl,l7a00h		;768e
	ld c,l			;7691
	ld (00039h),hl		;7692
	ld a,0c3h		;7695
	ld (03841h),a		;7697
	inc b			;769a
	inc de			;769b
	ld (0fff1h),a		;769c
	adc a,h			;769f
	jr c,l7635h		;76a0
	sbc a,h			;76a2
	adc a,e			;76a3
	dec b			;76a4
	rst 18h			;76a5
l76a6h:
	di			;76a6
	or 010h			;76a7
	ld (00d04h),a		;76a9
	adc a,h			;76ac
	add a,b			;76ad
	inc bc			;76ae
	ld h,d			;76af
	ld (bc),a		;76b0
	inc bc			;76b1
	adc a,a			;76b2
	and d			;76b3
	ld (hl),d		;76b4
	xor h			;76b5
	add hl,hl		;76b6
	dec (hl)		;76b7
	ld de,03828h		;76b8
	di			;76bb
	add hl,sp		;76bc
	jp 0e623h		;76bd
	rst 28h			;76c0
	inc hl			;76c1
	pop bc			;76c2
	xor a			;76c3
	ld (003b1h),hl		;76c4
	ei			;76c7
	ret			;76c8
	sbc a,(hl)		;76c9
	add hl,de		;76ca
	ld e,a			;76cb
	inc hl			;76cc
	ld a,c			;76cd
	ld d,h			;76ce
	add a,a			;76cf
	ld c,l			;76d0
	dec b			;76d1
	ld c,d			;76d2
	sub a			;76d3
	ld c,l			;76d4
	ld de,0340eh		;76d5
	and h			;76d8
	ld d,c			;76d9
	ld c,040h		;76da
	ld d,d			;76dc
	ret po			;76dd
	ld c,0c9h		;76de
	push af			;76e0
	sub e			;76e1
	rst 18h			;76e2
	inc l			;76e3
	sub b			;76e4
	in a,(099h)		;76e5
	rrca			;76e7
	call c,01abah		;76e8
	add hl,sp		;76eb
	add a,c			;76ec
	inc c			;76ed
	ld (0c1a0h),a		;76ee
	rlca			;76f1
	call c,sub_7324h	;76f2
	ld l,l			;76f5
	inc bc			;76f6
	daa			;76f7
	pop af			;76f8
	ld hl,(00030h)		;76f9
	or 043h			;76fc
	ld e,d			;76fe
	ld e,h			;76ff
	ld e,(hl)		;7700
	rlca			;7701
	add a,c			;7702
	ld c,(hl)		;7703
	ld d,b			;7704
	ld d,d			;7705
l7706h:
	rlca			;7706
	ret nz			;7707
	ld b,008h		;7708
	ld a,(bc)		;770a
	cp 064h			;770b
	ld b,h			;770d
	ld d,h			;770e
	ld d,(hl)		;770f
	ld (hl),c		;7710
	ld e,b			;7711
	rlca			;7712
	xor h			;7713
	add a,e			;7714
	ld c,h			;7715
	rlca			;7716
	adc a,(hl)		;7717
	ret z			;7718
	ret z			;7719
	call c,090feh		;771a
	ld (0e434h),a		;771d
	rlca			;7720
	ld a,040h		;7721
	defb 0fdh,024h ;inc iyh	;7723
	ld l,b			;7725
	cp b			;7726
	cp 0deh			;7727
	or (hl)			;7729
	ld a,a			;772a
	pop bc			;772b
	ld a,(hl)		;772c
	nop			;772d
	pop bc			;772e
	inc c			;772f
	ld c,010h		;7730
	rlca			;7732
	ret nz			;7733
	jr $+28			;7734
	inc e			;7736
sub_7737h:
	ret po			;7737
	rlca			;7738
	inc h			;7739
	ld h,07fh		;773a
	jr z,$+44		;773c
	dec b			;773e
	nop			;773f
	call m,0c7b4h		;7740
	rst 38h			;7743
	adc a,h			;7744
	ld a,d			;7745
l7746h:
	nop			;7746
	ld h,e			;7747
	jp po,03aa9h		;7748
	ret po			;774b
	dec c			;774c
	dec c			;774d
	cp a			;774e
	ld (00de0h),a		;774f
	ld h,a			;7752
	add a,c			;7753
	sub h			;7754
	ld a,b			;7755
	or a			;7756
	and b			;7757
	and 020h		;7758
	jp nz,l51c8h		;775a
	ret nc			;775d
	ld b,0cah		;775e
	rst 8			;7760
	ld d,c			;7761
	ld a,(0050dh)		;7762
	ld l,a			;7765
	or a			;7766
	call nz,087d3h		;7767
	ld a,(l6e97h)		;776a
	ld b,006h		;776d
	call m,024c1h		;776f
	jr nz,l7706h		;7772
	inc bc			;7774
	push bc			;7775
	ld a,(0c154h)		;7776
	ld h,e			;7779
	ld b,a			;777a
	ld a,(bc)		;777b
	sub a			;777c
l777dh:
	ld b,l			;777d
	ld (l67e3h),a		;777e
	add a,b			;7781
	call po,0e74eh		;7782
	add a,d			;7785
	sbc a,b			;7786
	defb 0fdh,00ah,088h ;illegal sequence	;7787
	add a,00ah		;778a
	pop hl			;778c
	ld d,l			;778d
	cp b			;778e
	add a,d			;778f
	ld h,e			;7790
	inc a			;7791
	or 042h			;7792
	ld h,e			;7794
	nop			;7795
	push de			;7796
	push hl			;7797
	exx			;7798
	ex af,af'		;7799
	push af			;779a
	push bc			;779b
	or h			;779c
	dec b			;779d
	ld c,(hl)		;779e
	call z,0d872h		;779f
	rst 38h			;77a2
	or 057h			;77a3
	inc bc			;77a5
	pop hl			;77a6
	pop de			;77a7
	pop bc			;77a8
	pop af			;77a9
	ex af,af'		;77aa
	exx			;77ab
	dec b			;77ac
	dec e			;77ad
	ret			;77ae
	xor (hl)		;77af
	xor (hl)		;77b0
	ld (bc),a		;77b1
	dec a			;77b2
	ld e,(hl)		;77b3
	xor a			;77b4
	ld e,c			;77b5
	ld a,(de)		;77b6
	cp l			;77b7
	push hl			;77b8
	ld b,046h		;77b9
	cp b			;77bb
	ld l,e			;77bc
	cp l			;77bd
	ld c,05fh		;77be
	ld e,d			;77c0
	ld h,e			;77c1
	or b			;77c2
	or a			;77c3
	push bc			;77c4
	ld d,l			;77c5
	add a,e			;77c6
	sbc a,h			;77c7
	cp c			;77c8
	add a,b			;77c9
	jp nz,l528fh		;77ca
	call 05d49h		;77cd
	ld e,b			;77d0
	ld h,b			;77d1
	ld (bc),a		;77d2
	ld e,002h		;77d3
	rlca			;77d5
	ld (hl),l		;77d6
	dec b			;77d7
	ld a,(09cf3h)		;77d8
	ld (bc),a		;77db
	call z,071f9h		;77dc
	ld c,c			;77df
	pop hl			;77e0
	pop bc			;77e1
	call m,0c0b0h		;77e2
	or 0ffh			;77e5
	ld (0b68bh),a		;77e7
	and c			;77ea
	or c			;77eb
	xor a			;77ec
	call nz,0f01ch		;77ed
	inc e			;77f0
	ld d,046h		;77f1
	ld (hl),b		;77f3
	adc a,h			;77f4
	push bc			;77f5
	ret p			;77f6
	or b			;77f7
	ret nc			;77f8
	sbc a,a			;77f9
	jp 01de6h		;77fa
	ld b,b			;77fd
	call nz,0ac21h		;77fe
	and h			;7801
	ld d,(hl)		;7802
	pop bc			;7803
	sub (hl)		;7804
	ld a,b			;7805
	sub b			;7806
l7807h:
	xor a			;7807
	ld hl,0be0dh		;7808
	jp z,006dbh		;780b
	ld d,d			;780e
	ld (hl),a		;780f
	call 00313h		;7810
	ld h,b			;7813
	add a,b			;7814
	jr nz,$+46		;7815
	call l5c05h		;7817
	call 000ebh		;781a
	ld d,l			;781d
	call sub_53deh		;781e
	call l534ch		;7821
	jr nz,l7838h		;7824
	add hl,bc		;7826
	call 06715h		;7827
	jr l782eh		;782a
	ld c,c			;782c
	ld h,(hl)		;782d
l782eh:
	ld (bc),a		;782e
l782fh:
	ld l,c			;782f
	ld (bc),a		;7830
	jr nc,l7835h		;7831
	inc h			;7833
	ld l,a			;7834
l7835h:
	ld (bc),a		;7835
	dec l			;7836
	ld (bc),a		;7837
l7838h:
	sub b			;7838
	pop af			;7839
	sbc a,d			;783a
	dec sp			;783b
	rra			;783c
	jr c,l785fh		;783d
	xor (hl)		;783f
	dec e			;7840
	call 0050ch		;7841
	ret pe			;7844
	call z,sub_40dfh	;7845
	jp (hl)			;7848
	ei			;7849
	and 010h		;784a
	jp nz,03601h		;784c
l784fh:
	ld d,e			;784f
	ld a,(l5335h)		;7850
	or a			;7853
	ret nz			;7854
	ld h,h			;7855
	sub c			;7856
	ld b,0c3h		;7857
	ld d,c			;7859
	jp c,0afc3h		;785a
	rlca			;785d
	inc h			;785e
l785fh:
	ld a,(de)		;785f
	jp pe,0011ah		;7860
	sbc a,l			;7863
	inc de			;7864
	jr nz,l784fh		;7865
	add a,c			;7867
	ld a,0e0h		;7868
	ld (08ba4h),a		;786a
	jr z,$-47		;786d
	sbc a,a			;786f
	ld l,b			;7870
	ret z			;7871
	push de			;7872
	inc c			;7873
	ei			;7874
	bit 6,a			;7875
	add hl,bc		;7877
	inc d			;7878
	jp nz,l5361h		;7879
	dec h			;787c
	ld b,0c9h		;787d
	rlca			;787f
	ld (0c202h),a		;7880
	add a,004h		;7883
l7885h:
	ret z			;7885
	add a,d			;7886
l7887h:
	jp nz,0d03ah		;7887
	and 030h		;788a
	ld a,d			;788c
	ld d,e			;788d
	push bc			;788e
	ld b,d			;788f
	add hl,bc		;7890
	ld l,0deh		;7891
	ex de,hl		;7893
	dec e			;7894
	ld (0db06h),hl		;7895
	inc h			;7898
	inc b			;7899
	pop bc			;789a
	ei			;789b
	daa			;789c
	ld (01004h),a		;789d
	ld b,0e5h		;78a0
	add a,e			;78a2
	jp nz,00c32h		;78a3
	inc h			;78a6
	ld b,e			;78a7
	and 007h		;78a8
	jr nz,$+16		;78aa
	ld a,000h		;78ac
	add a,008h		;78ae
	cp 060h			;78b0
	jr nz,l78b6h		;78b2
	jr nc,$+64		;78b4
l78b6h:
	ld c,b			;78b6
	ld b,d			;78b7
	ld a,(l5200h)		;78b8
	jp nz,01a22h		;78bb
	ld bc,00005h		;78be
	dec b			;78c1
	jp nz,00d21h		;78c2
	pop bc			;78c5
	ld b,(hl)		;78c6
	ld (hl),016h		;78c7
	inc c			;78c9
	xor a			;78ca
	call 0557dh		;78cb
l78ceh:
	ld hl,(0c7f2h)		;78ce
	inc bc			;78d1
	nop			;78d2
	cp 0a4h			;78d3
	ld b,030h		;78d5
	call nc,sub_74f6h	;78d7
	ld a,(009c4h)		;78da
	jp nc,05f8bh		;78dd
	or (hl)			;78e0
	rst 10h			;78e1
l78e2h:
	sbc a,b			;78e2
	rst 18h			;78e3
l78e4h:
	push hl			;78e4
	sub e			;78e5
	rlca			;78e6
	and a			;78e7
	sub b			;78e8
	pop af			;78e9
	ld h,b			;78ea
	ld e,e			;78eb
	xor c			;78ec
	jr c,$+60		;78ed
	inc a			;78ef
	ld a,(08001h)		;78f0
	jp nz,l4011h		;78f3
	jp nz,0cf3eh		;78f6
	ret nc			;78f9
	ld e,a			;78fa
	pop bc			;78fb
	ld b,000h		;78fc
	rlca			;78fe
	push de			;78ff
	ld a,(hl)		;7900
	and 01fh		;7901
	cp 015h			;7903
	jp z,0a61fh		;7905
sub_7908h:
	ld d,h			;7908
	inc hl			;7909
	cp a			;790a
	ld bc,l5436h		;790b
	cp 004h			;790e
	jr z,$+71		;7910
	out (020h),a		;7912
l7914h:
	and b			;7914
	ld d,l			;7915
	call nz,0da03h		;7916
	ld d,h			;7919
	pop de			;791a
	push hl			;791b
	ldi			;791c
	ld bc,0e196h		;791e
	inc b			;7921
	add a,b			;7922
	ld a,(hl)		;7923
	inc a			;7924
	ld (de),a		;7925
	inc de			;7926
	inc de			;7927
	ld bc,0110dh		;7928
	nop			;792b
	add hl,bc		;792c
	ld a,(0c635h)		;792d
	ld (bc),a		;7930
	ld a,(0c79fh)		;7931
	ld de,0f7c2h		;7934
	jp m,0d108h		;7937
	ld bc,0120fh		;793a
	ex de,hl		;793d
	ld c,05eh		;793e
	ex af,af'		;7940
	inc bc			;7941
	rla			;7942
	and b			;7943
	dec hl			;7944
	ld a,(hl)		;7945
	cp 024h			;7946
	jr z,l7954h		;7948
	dec a			;794a
	inc hl			;794b
	push hl			;794c
	inc hl			;794d
	nop			;794e
	add hl,bc		;794f
	ld de,02816h		;7950
	add hl,bc		;7953
l7954h:
	xor d			;7954
	ld bc,0cde1h		;7955
	ld (hl),e		;7958
	ld d,l			;7959
	jp l6610h		;795a
	ld b,b			;795d
	ld c,b			;795e
	ld (hl),a		;795f
	cp 00ch			;7960
	jr z,l7976h		;7962
	ld b,0e6h		;7964
	inc bc			;7966
	jr z,l796dh		;7967
	pop hl			;7969
	rrca			;796a
	jr z,l7998h		;796b
l796dh:
	add hl,hl		;796d
	pop hl			;796e
	sbc a,h			;796f
	ld (hl),a		;7970
	add hl,bc		;7971
	ld a,(de)		;7972
	ld (hl),022h		;7973
	inc hl			;7975
l7976h:
	ld (hl),046h		;7976
	ld b,008h		;7978
	nop			;797a
	inc hl			;797b
	rrca			;797c
	ld a,(de)		;797d
	ld (hl),004h		;797e
	ld a,036h		;7980
	add hl,hl		;7982
	ld c,e			;7983
	inc hl			;7984
	rla			;7985
	ld (bc),a		;7986
	nop			;7987
	ld a,0d0h		;7988
	ld (hl),001h		;798a
	inc hl			;798c
	and h			;798d
	add a,(hl)		;798e
	dec c			;798f
	ld b,a			;7990
	ld a,(hl)		;7991
	sub b			;7992
	ld (hl),a		;7993
	rrca			;7994
	ld h,b			;7995
	ld (hl),03eh		;7996
l7998h:
	dec hl			;7998
	djnz $+51		;7999
	ld c,h			;799b
	pop hl			;799c
	sub e			;799d
	jp nz,0ba00h		;799e
	ret c			;79a1
	cp e			;79a2
	ret nc			;79a3
	ld a,(0c234h)		;79a4
	cp c			;79a7
	nop			;79a8
	ret c			;79a9
	sub 010h		;79aa
	cp c			;79ac
	ret nc			;79ad
	ld a,0f0h		;79ae
	ld (011a4h),a		;79b0
	add a,e			;79b3
	ld b,b			;79b4
	ld (0c30fh),a		;79b5
	jr l7a0fh		;79b8
	ret			;79ba
	ld a,(hl)		;79bb
	ld (de),a		;79bc
	sub 008h		;79bd
	ld c,a			;79bf
	ld c,c			;79c0
	ld a,(hl)		;79c1
	jr l79c5h		;79c2
	ld d,a			;79c4
l79c5h:
	add a,01eh		;79c5
	ld e,a			;79c7
	ld hl,0c229h		;79c8
	call p,07e10h		;79cb
	dec hl			;79ce
	cp d			;79cf
	inc b			;79d0
	jp c,054b6h		;79d1
	cp e			;79d4
	jp nc,l7e03h		;79d5
	ld h,(hl)		;79d8
	cp c			;79d9
	ex af,af'		;79da
	ld (00a60h),a		;79db
	ld a,(0c151h)		;79de
	sub b			;79e1
	add a,d			;79e2
	ld (de),a		;79e3
	ld d,l			;79e4
	ld c,b			;79e5
	ld a,b			;79e6
sub_79e7h:
	add a,e			;79e7
	jp nc,00599h		;79e8
	pop hl			;79eb
	jr c,l7a33h		;79ec
	ld de,02377h		;79ee
	sbc a,c			;79f1
	ld d,03ah		;79f2
	ld a,0a9h		;79f4
	ld b,011h		;79f6
	rlca			;79f8
	nop			;79f9
	add hl,de		;79fa
	ld (hl),d		;79fb
	ex af,af'		;79fc
	jp c,l5538h		;79fd
l7a00h:
	cp (hl)			;7a00
	pop bc			;7a01
	ld (0c107h),a		;7a02
sub_7a05h:
	exx			;7a05
	add hl,hl		;7a06
l7a07h:
	or d			;7a07
	inc (hl)		;7a08
	xor b			;7a09
	ret nz			;7a0a
	pop bc			;7a0b
	dec hl			;7a0c
	sbc hl,de		;7a0d
l7a0fh:
	ret			;7a0f
	cp h			;7a10
	ld de,09610h		;7a11
	inc hl			;7a14
	ld e,c			;7a15
	inc de			;7a16
	add hl,bc		;7a17
	ld (hl),024h		;7a18
l7a1ah:
	inc hl			;7a1a
	cp 081h			;7a1b
	inc a			;7a1d
	jr z,$+27		;7a1e
	ld a,(0514ch)		;7a20
	dec h			;7a23
	ret nz			;7a24
	cpl			;7a25
	ld c,h			;7a26
	cp c			;7a27
	ld l,b			;7a28
	add a,(hl)		;7a29
	ld (0c54ah),a		;7a2a
	dec e			;7a2d
	sub 080h		;7a2e
	add hl,bc		;7a30
	ld c,e			;7a31
	dec (hl)		;7a32
l7a33h:
	ret			;7a33
	ex af,af'		;7a34
	add a,(hl)		;7a35
	jr nz,$+121		;7a36
	ld b,048h		;7a38
	nop			;7a3a
	ld b,(hl)		;7a3b
	ret nz			;7a3c
	ret			;7a3d
	cp c			;7a3e
l7a3fh:
	ld b,b			;7a3f
	push hl			;7a40
	ld h,000h		;7a41
	ld l,b			;7a43
	ld h,b			;7a44
	add hl,hl		;7a45
	nop			;7a46
	ld de,04803h		;7a47
	rla			;7a4a
	add hl,de		;7a4b
	push hl			;7a4c
	ld l,a			;7a4d
	inc c			;7a4e
	dec bc			;7a4f
	nop			;7a50
	nop			;7a51
	ld (hl),h		;7a52
	add hl,de		;7a53
	call 00045h		;7a54
	ld bc,00ee1h		;7a57
	sbc a,b			;7a5a
	call 005b4h		;7a5b
	pop hl			;7a5e
	ld d,h			;7a5f
	ret			;7a60
	xor b			;7a61
	halt			;7a62
	ld c,d			;7a63
	ld b,(hl)		;7a64
	rlc b			;7a65
	inc bc			;7a67
	jp c,055dch		;7a68
	cp 0e3h			;7a6b
	jp nc,00480h		;7a6d
	dec hl			;7a70
	cp 012h			;7a71
	ld c,001h		;7a73
	jr c,l7ac3h		;7a75
	dec b			;7a77
	call pe,0130eh		;7a78
	pop hl			;7a7b
	ret c			;7a7c
	ld a,(024dch)		;7a7d
	inc a			;7a80
	add hl,de		;7a81
	ret z			;7a82
	ex (sp),hl		;7a83
	ret po			;7a84
	dec a			;7a85
	jp z,026d3h		;7a86
	ld d,l			;7a89
	ld a,c			;7a8a
	or 027h			;7a8b
	jp nz,0e778h		;7a8d
	inc de			;7a90
l7a91h:
	ret			;7a91
	ex af,af'		;7a92
	add hl,sp		;7a93
	ex af,af'		;7a94
	ld d,038h		;7a95
	ex af,af'		;7a97
	ld h,c			;7a98
	ld hl,(00087h)		;7a99
	ld (hl),c		;7a9c
	in a,(059h)		;7a9d
	sub d			;7a9f
	ld c,049h		;7aa0
	daa			;7aa2
	ld (00003h),a		;7aa3
	ret nz			;7aa6
	ld a,(0c147h)		;7aa7
	ld h,a			;7aaa
	ld a,(0c148h)		;7aab
	jr nc,$+113		;7aae
	ld a,(hl)		;7ab0
	inc c			;7ab1
	inc hl			;7ab2
	ld e,(hl)		;7ab3
	inc b			;7ab4
	inc hl			;7ab5
	ld c,(hl)		;7ab6
	inc hl			;7ab7
	ld a,l			;7ab8
	ld (l7c0dh),a		;7ab9
	ld b,l			;7abc
	ld (01615h),a		;7abd
	nop			;7ac0
	or l			;7ac1
	add a,b			;7ac2
l7ac3h:
	ld a,a			;7ac3
	add hl,de		;7ac4
	ld (hl),c		;7ac5
	dec hl			;7ac6
	ex de,hl		;7ac7
	ld hl,(01001h)		;7ac8
	add hl,bc		;7acb
	xor l			;7acc
	ld bc,0b77eh		;7acd
	jr z,l7aefh		;7ad0
	add hl,bc		;7ad2
	inc b			;7ad3
	adc a,l			;7ad4
	jr $+6			;7ad5
	ld l,e			;7ad7
	inc de			;7ad8
	inc b			;7ad9
	ld c,004h		;7ada
	ld e,d			;7adc
	add hl,bc		;7add
	inc b			;7ade
	inc b			;7adf
	ret nz			;7ae0
	inc b			;7ae1
	ret nz			;7ae2
	ex de,hl		;7ae3
	ldir			;7ae4
	inc e			;7ae6
	ret			;7ae7
	push hl			;7ae8
	ld de,l4a2bh		;7ae9
l7aech:
	call c,01441h		;7aec
l7aefh:
	inc bc			;7aef
	add hl,de		;7af0
	djnz l7aech		;7af1
	or c			;7af3
	djnz l7b34h		;7af4
	add hl,bc		;7af6
	ld (0f78ah),a		;7af7
l7afah:
	ret m			;7afa
	add a,h			;7afb
	ld sp,hl		;7afc
	sbc a,b			;7afd
	adc a,c			;7afe
	ret m			;7aff
	ld (bc),a		;7b00
	push af			;7b01
	and e			;7b02
	dec h			;7b03
	sbc a,l			;7b04
	ex af,af'		;7b05
	di			;7b06
	rlca			;7b07
	call p,080c1h		;7b08
	inc h			;7b0b
	ld e,d			;7b0c
sub_7b0dh:
	call 0048bh		;7b0d
	ld a,(08813h)		;7b10
	sub d			;7b13
	ld b,a			;7b14
	add a,a			;7b15
	ld bc,0c680h		;7b16
	ld (de),a		;7b19
	ld (05a8fh),a		;7b1a
	ld hl,06002h		;7b1d
	ld de,01bcdh		;7b20
	dec b			;7b23
	or h			;7b24
	jp nz,0cf20h		;7b25
	ld e,d			;7b28
	ld sp,l5ad1h		;7b29
	ld (080cbh),a		;7b2c
	ld (bc),a		;7b2f
l7b30h:
	call 03a5ah		;7b30
	ex af,af'		;7b33
l7b34h:
	jp 0823dh		;7b34
	ld d,l			;7b37
	ld (bc),a		;7b38
	jp z,l56d2h		;7b39
	ld b,072h		;7b3c
	ret pe			;7b3e
	ld b,0a8h		;7b3f
	ld (hl),b		;7b41
	inc bc			;7b42
	ld b,070h		;7b43
	ld (hl),b		;7b45
	inc b			;7b46
	ld b,008h		;7b47
	ld h,b			;7b49
	dec b			;7b4a
	ld b,0c3h		;7b4b
	cp h			;7b4d
	ld d,(hl)		;7b4e
	sub h			;7b4f
	rst 18h			;7b50
	ld h,c			;7b51
	add a,b			;7b52
	ld l,e			;7b53
	ld a,(006f2h)		;7b54
	sub e			;7b57
	inc bc			;7b58
	di			;7b59
	cp 015h			;7b5a
	ei			;7b5c
	inc b			;7b5d
	add a,l			;7b5e
	ld (0aa32h),a		;7b5f
	sub l			;7b62
	sub e			;7b63
	sub (hl)		;7b64
	xor h			;7b65
	ld d,0d6h		;7b66
	ld a,(bc)		;7b68
	ex de,hl		;7b69
	ld d,d			;7b6a
	inc b			;7b6b
	add hl,bc		;7b6c
	dec c			;7b6d
	rst 30h			;7b6e
	ret nz			;7b6f
	ld (0c1f7h),a		;7b70
l7b73h:
	ld a,e			;7b73
	and d			;7b74
	ld hl,(01384h)		;7b75
	and h			;7b78
	ld c,e			;7b79
	add hl,de		;7b7a
	defb 0edh ;next byte illegal after ed	;7b7b
	inc bc			;7b7c
	ld d,h			;7b7d
	ld d,a			;7b7e
	ld b,006h		;7b7f
	push bc			;7b81
	sbc a,c			;7b82
	call nz,0efc5h		;7b83
	ld b,b			;7b86
	ld e,(hl)		;7b87
	push hl			;7b88
	ld hl,l5993h		;7b89
	sbc a,e			;7b8c
	ex (sp),hl		;7b8d
	ld (hl),a		;7b8e
	inc h			;7b8f
	ex (sp),hl		;7b90
	nop			;7b91
	bit 0,a			;7b92
	jp z,l571eh		;7b94
	and 0feh		;7b97
	add a,046h		;7b99
	jr nz,$-124		;7b9b
	ld b,(hl)		;7b9d
	or h			;7b9e
	inc bc			;7b9f
	adc a,05ah		;7ba0
	jp l5726h		;7ba2
	ld a,(bc)		;7ba5
	ld e,b			;7ba6
	inc bc			;7ba7
	ld a,(bc)		;7ba8
l7ba9h:
	ld hl,020a3h		;7ba9
	cp h			;7bac
	ld h,d			;7bad
	and c			;7bae
	ret z			;7baf
	dec e			;7bb0
	inc b			;7bb1
	pop hl			;7bb2
	inc hl			;7bb3
	ld h,b			;7bb4
	pop bc			;7bb5
	sub d			;7bb6
	pop bc			;7bb7
	cp e			;7bb8
	and h			;7bb9
	dec c			;7bba
	ld h,c			;7bbb
	inc b			;7bbc
	djnz l7b73h		;7bbd
	ld hl,(01458h)		;7bbf
	ld de,0aa30h		;7bc2
	jr nz,$+36		;7bc5
	ld b,0cdh		;7bc7
	ld (0c359h),a		;7bc9
	nop			;7bcc
	ld e,a			;7bcd
	ld d,a			;7bce
	ld hl,l5973h		;7bcf
	ld de,l5983h		;7bd2
	sub h			;7bd5
	call nz,09f90h		;7bd6
	ld a,007h		;7bd9
	inc h			;7bdb
l7bdch:
	ld (082f1h),a		;7bdc
	ld b,l			;7bdf
	rst 38h			;7be0
l7be1h:
	sbc a,(hl)		;7be1
	di			;7be2
	ld a,b			;7be3
	ld (0002dh),a		;7be4
	jp 016fdh		;7be7
	ld (hl),l		;7bea
	ld d,c			;7beb
	xor h			;7bec
	ex af,af'		;7bed
	ret nz			;7bee
	rst 20h			;7bef
sub_7bf0h:
	sub d			;7bf0
	ld h,(hl)		;7bf1
	ld (bc),a		;7bf2
	xor l			;7bf3
	ld a,(bc)		;7bf4
	ld de,032d0h		;7bf5
	or c			;7bf8
	ld sp,hl		;7bf9
	adc a,c			;7bfa
	and b			;7bfb
	dec bc			;7bfc
	and h			;7bfd
	ld (bc),a		;7bfe
	ld (de),a		;7bff
	and l			;7c00
	ld e,d			;7c01
	or h			;7c02
	ret z			;7c03
	call 058c5h		;7c04
	dec de			;7c07
	ld a,03fh		;7c08
	ld (l6f8ah),a		;7c0a
l7c0dh:
	adc a,e			;7c0d
	ld de,086d0h		;7c0e
	ld hl,l7c53h		;7c11
	or (hl)			;7c14
	ret			;7c15
	jp c,01f34h		;7c16
	jp c,01184h		;7c19
	ret			;7c1c
	ld hl,06c6fh		;7c1d
	inc bc			;7c20
	nop			;7c21
	rst 28h			;7c22
	ld hl,(024c4h)		;7c23
	jp nz,0f057h		;7c26
	dec l			;7c29
	ret m			;7c2a
	ret			;7c2b
	jp pe,03d0ah		;7c2c
	ld (hl),a		;7c2f
	adc a,006h		;7c30
	ret nz			;7c32
	ld (hl),a		;7c33
l7c34h:
	ret			;7c34
	ret pe			;7c35
	ld l,h			;7c36
	defb 0ddh,0d1h,0e9h ;illegal sequence	;7c37
	inc bc			;7c3a
	cp 000h			;7c3b
	jp z,l57eah		;7c3d
l7c40h:
	rlca			;7c40
	ld e,c			;7c41
	ld bc,0a307h		;7c42
	ld e,b			;7c45
	ld c,00ch		;7c46
	pop bc			;7c48
	jp l5803h		;7c49
	adc a,e			;7c4c
	ld c,d			;7c4d
	rlca			;7c4e
	xor c			;7c4f
	ld sp,0a623h		;7c50
l7c53h:
	jr $-53			;7c53
	push de			;7c55
	jp 0969ch		;7c56
	inc bc			;7c59
	jp nz,l7305h		;7c5a
	jp l580bh		;7c5d
	inc c			;7c60
	xor d			;7c61
	add hl,sp		;7c62
	and h			;7c63
	ld l,h			;7c64
	ld b,04dh		;7c65
	ld a,(l44b2h)		;7c67
	sbc a,e			;7c6a
	ld c,c			;7c6b
	ei			;7c6c
	ld (de),a		;7c6d
	dec b			;7c6e
	adc a,b			;7c6f
	xor c			;7c70
	dec e			;7c71
	jp p,l46e4h		;7c72
	xor e			;7c75
	ld de,099c0h		;7c76
	ex de,hl		;7c79
	add a,h			;7c7a
	call sub_56b1h		;7c7b
	pop af			;7c7e
	call nz,00f0eh		;7c7f
	call nc,0fe61h		;7c82
	ex af,af'		;7c85
	dec h			;7c86
	ld b,h			;7c87
	and e			;7c88
	xor 092h		;7c89
	add a,c			;7c8b
	inc b			;7c8c
	and d			;7c8d
	ld c,(hl)		;7c8e
	exx			;7c8f
	or d			;7c90
	dec e			;7c91
	ret p			;7c92
	ld (bc),a		;7c93
	ld e,b			;7c94
	call sub_58e0h		;7c95
	ld hl,0a971h		;7c98
	ld e,b			;7c9b
	adc a,e			;7c9c
	push hl			;7c9d
	inc (hl)		;7c9e
	ld de,0edf6h		;7c9f
	cp c			;7ca2
	dec de			;7ca3
	and e			;7ca4
	ld d,l			;7ca5
	rl e			;7ca6
	jr l7d0ch		;7ca8
	jr l7c34h		;7caa
	or 0a6h			;7cac
	sbc a,d			;7cae
	inc b			;7caf
	cp 0f0h			;7cb0
	jp nz,l587bh		;7cb2
	add a,l			;7cb5
	and e			;7cb6
	ld h,(hl)		;7cb7
	inc e			;7cb8
	ld l,d			;7cb9
	or h			;7cba
	ld c,(hl)		;7cbb
	xor e			;7cbc
l7cbdh:
	dec de			;7cbd
	xor l			;7cbe
	dec de			;7cbf
	inc h			;7cc0
	adc a,d			;7cc1
	pop bc			;7cc2
	dec de			;7cc3
	ret po			;7cc4
	jp nz,01b97h		;7cc5
	ld c,d			;7cc8
	sub (hl)		;7cc9
	xor (hl)		;7cca
	ld a,(02a14h)		;7ccb
	dec de			;7cce
	and (hl)		;7ccf
	ld hl,(029aah)		;7cd0
	jp 02c64h		;7cd3
	ld hl,09e71h		;7cd6
	jr z,$-79		;7cd9
	ld h,0bch		;7cdb
	ld (de),a		;7cdd
	or h			;7cde
	call z,sub_619dh	;7cdf
l7ce2h:
	cp 01fh			;7ce2
	adc a,b			;7ce4
	inc d			;7ce5
	cp d			;7ce6
	and d			;7ce7
	and c			;7ce8
	ld (bc),a		;7ce9
	ld c,b			;7cea
	or b			;7ceb
	ld (bc),a		;7cec
	ld a,b			;7ced
l7ceeh:
	ld (bc),a		;7cee
	jp 0255ah		;7cef
	xor 001h		;7cf2
	bit 2,c			;7cf4
	or h			;7cf6
	ld (bc),a		;7cf7
	ld l,c			;7cf8
	ld e,d			;7cf9
	xor (hl)		;7cfa
	inc h			;7cfb
	adc a,b			;7cfc
	out (0deh),a		;7cfd
	jr l7cbdh		;7cff
	ld e,d			;7d01
	defb 0fdh,04fh,0e0h ;illegal sequence	;7d02
	inc b			;7d05
	rst 38h			;7d06
	ld e,b			;7d07
	ret po			;7d08
l7d09h:
	ret p			;7d09
	cp (hl)			;7d0a
	sbc a,l			;7d0b
l7d0ch:
	ret po			;7d0c
	ld c,h			;7d0d
	cp a			;7d0e
	ret po			;7d0f
	rlca			;7d10
	ld l,e			;7d11
	ld e,c			;7d12
	ld a,(bc)		;7d13
	inc bc			;7d14
	ld a,(bc)		;7d15
	inc bc			;7d16
	inc hl			;7d17
	ex de,hl		;7d18
	ld hl,l5abch		;7d19
	ld (hl),d		;7d1c
	rst 8			;7d1d
	ld c,(hl)		;7d1e
	jp nz,0c3d5h		;7d1f
	inc b			;7d22
	jp nz,058e3h		;7d23
	dec b			;7d26
	inc de			;7d27
	ld a,(046a8h)		;7d28
	defb 0edh ;next byte illegal after ed	;7d2b
	daa			;7d2c
	or 0b0h			;7d2d
	ld d,h			;7d2f
	ld a,(0d148h)		;7d30
l7d33h:
	ld c,c			;7d33
	jp z,0a5dfh		;7d34
	rst 0			;7d37
	daa			;7d38
	and d			;7d39
	inc b			;7d3a
	ld b,(hl)		;7d3b
	ld e,c			;7d3c
	ld a,(0cdabh)		;7d3d
	dec a			;7d40
	xor e			;7d41
	and a			;7d42
	or c			;7d43
	jr c,l7ce2h		;7d44
	xor c			;7d46
	inc de			;7d47
	rst 10h			;7d48
	add hl,bc		;7d49
	ld de,(028d7h)		;7d4a
	ret			;7d4e
	and h			;7d4f
	adc a,051h		;7d50
	ld e,a			;7d52
	sub 0cch		;7d53
	halt			;7d55
	halt			;7d56
	dec h			;7d57
	ld a,(l5f26h)		;7d58
	add a,(hl)		;7d5b
	ld h,d			;7d5c
l7d5dh:
	ret m			;7d5d
	dec d			;7d5e
	ld a,(bc)		;7d5f
	ex de,hl		;7d60
	pop hl			;7d61
	ld bc,08b02h		;7d62
	ld c,c			;7d65
	call m,0206ch		;7d66
	nop			;7d69
	ei			;7d6a
	ld bc,04051h		;7d6b
	ld bc,04020h		;7d6e
	nop			;7d71
	nop			;7d72
	ld h,b			;7d73
	ld b,b			;7d74
	add a,b			;7d75
	ld b,b			;7d76
	and b			;7d77
	ld h,b			;7d78
	nop			;7d79
	pop hl			;7d7a
	add a,l			;7d7b
	ld h,b			;7d7c
	ld a,(bc)		;7d7d
	ld b,b			;7d7e
	nop			;7d7f
	add a,b			;7d80
	ld h,b			;7d81
	and b			;7d82
	add a,b			;7d83
	nop			;7d84
	dec d			;7d85
	add a,b			;7d86
	jr nz,l7d09h		;7d87
	inc d			;7d89
l7d8ah:
	ld a,(bc)		;7d8a
	nop			;7d8b
	ld bc,0a0a0h		;7d8c
	nop			;7d8f
	and b			;7d90
	jr nz,l7d33h		;7d91
	ld e,094h		;7d93
	inc d			;7d95
	ld a,(bc)		;7d96
	ret nz			;7d97
	nop			;7d98
	nop			;7d99
	ret nz			;7d9a
	jr nz,l7d5dh		;7d9b
	ld b,b			;7d9d
	ret nz			;7d9e
	ld h,b			;7d9f
	ret nz			;7da0
	nop			;7da1
	add a,b			;7da2
	ret nz			;7da3
l7da4h:
	and b			;7da4
	ret po			;7da5
	nop			;7da6
	ret po			;7da7
	jr nz,l7d8ah		;7da8
	ld (bc),a		;7daa
	ld b,b			;7dab
	ret po			;7dac
	ld h,b			;7dad
	ret po			;7dae
	add a,b			;7daf
	ret po			;7db0
	jr nz,l7d5dh		;7db1
	ld c,e			;7db3
	nop			;7db4
	ld c,d			;7db5
	ld b,b			;7db6
	xor e			;7db7
	ld (hl),02eh		;7db8
	nop			;7dba
	ld e,b			;7dbb
	ld l,d			;7dbc
	ld c,(hl)		;7dbd
l7dbeh:
	ld b,h			;7dbe
	ld (hl),000h		;7dbf
	ld bc,02140h		;7dc1
	ld b,b			;7dc4
	ld b,c			;7dc5
	ld b,b			;7dc6
	ld h,c			;7dc7
	ld b,b			;7dc8
	nop			;7dc9
	add a,c			;7dca
	ld b,b			;7dcb
	and c			;7dcc
	ld h,b			;7dcd
	ld bc,02160h		;7dce
	ld h,b			;7dd1
	nop			;7dd2
	ld b,c			;7dd3
l7dd4h:
	ld h,b			;7dd4
	ld h,c			;7dd5
	ld h,b			;7dd6
	add a,c			;7dd7
	ld h,b			;7dd8
	and c			;7dd9
	add a,b			;7dda
	ld l,001h		;7ddb
	add a,b			;7ddd
	and h			;7dde
	nop			;7ddf
	ld b,c			;7de0
	add a,b			;7de1
	ld h,c			;7de2
	add a,b			;7de3
	add a,c			;7de4
	add a,b			;7de5
	and c			;7de6
	and b			;7de7
	nop			;7de8
	ld bc,021a0h		;7de9
	and b			;7dec
	ld b,c			;7ded
	and b			;7dee
	ld h,c			;7def
	and b			;7df0
	add hl,bc		;7df1
	add a,c			;7df2
	and b			;7df3
	and c			;7df4
	ret nz			;7df5
	ret m			;7df6
	add a,b			;7df7
	ld hl,041c0h		;7df8
	ret nz			;7dfb
	ld h,c			;7dfc
	ret nz			;7dfd
	nop			;7dfe
l7dffh:
	add a,c			;7dff
	ret nz			;7e00
	and c			;7e01
	ret po			;7e02
l7e03h:
	ld bc,021e0h		;7e03
l7e06h:
	ret po			;7e06
	nop			;7e07
	ld b,c			;7e08
	ret po			;7e09
	ld h,c			;7e0a
	ret po			;7e0b
	add a,c			;7e0c
	ret po			;7e0d
	and c			;7e0e
	jr nz,l7e11h		;7e0f
l7e11h:
	ld bc,02120h		;7e11
	jr nz,$+67		;7e14
	jr nz,$+99		;7e16
	jr nz,$+8		;7e18
	add a,c			;7e1a
	jr nz,l7dbeh		;7e1b
	nop			;7e1d
	ld bc,00085h		;7e1e
l7e21h:
	nop			;7e21
	ld b,c			;7e22
	nop			;7e23
	ld h,c			;7e24
	nop			;7e25
	ld l,081h		;7e26
	nop			;7e28
	dec bc			;7e29
	nop			;7e2a
sub_7e2bh:
	ld l,l			;7e2b
	ld de,03601h		;7e2c
	nop			;7e2f
	ret nc			;7e30
	dec bc			;7e31
	sub (hl)		;7e32
	add hl,hl		;7e33
l7e34h:
	nop			;7e34
	ld (bc),a		;7e35
	ld (de),a		;7e36
	adc a,c			;7e37
	sbc a,c			;7e38
	ld c,d			;7e39
	nop			;7e3a
	ld e,0e1h		;7e3b
	ld (bc),a		;7e3d
	daa			;7e3e
	add hl,bc		;7e3f
	ld (hl),c		;7e40
	nop			;7e41
	rrca			;7e42
	adc a,e			;7e43
	ld (bc),a		;7e44
	dec e			;7e45
	add a,c			;7e46
	pop hl			;7e47
	inc bc			;7e48
	add hl,hl		;7e49
	defb 0ddh,050h,002h ;illegal sequence	;7e4a
	ld b,000h		;7e4d
	ld h,c			;7e4f
	dec b			;7e50
	inc de			;7e51
	sub b			;7e52
	jr nz,l7e59h		;7e53
	adc a,h			;7e55
	djnz $+29		;7e56
	adc a,h			;7e58
l7e59h:
	rla			;7e59
	ex af,af'		;7e5a
	nop			;7e5b
	ld c,d			;7e5c
	ld l,a			;7e5d
	ret po			;7e5e
	inc b			;7e5f
	ld c,d			;7e60
	ld e,h			;7e61
	add hl,bc		;7e62
	or (hl)			;7e63
	inc bc			;7e64
	ld (de),a		;7e65
	dec bc			;7e66
	sub 027h		;7e67
	sub b			;7e69
	ld c,0ech		;7e6a
	ld c,c			;7e6c
	jp 01daeh		;7e6d
	add a,b			;7e70
	call sub_5b80h		;7e71
	call 005bdh		;7e74
	ld hl,0d7cbh		;7e77
	ret nc			;7e7a
	djnz l7e34h		;7e7b
	dec a			;7e7d
	inc c			;7e7e
	ld bc,08055h		;7e7f
	ld d,0cch		;7e82
	add hl,bc		;7e84
	dec d			;7e85
	ld e,e			;7e86
	ex af,af'		;7e87
	jp m,0d908h		;7e88
	xor b			;7e8b
	add a,c			;7e8c
	ex af,af'		;7e8d
	pop de			;7e8e
	ld a,(de)		;7e8f
	add a,d			;7e90
	ex af,af'		;7e91
	out (08fh),a		;7e92
	ex af,af'		;7e94
	sub b			;7e95
	ld (hl),b		;7e96
	inc hl			;7e97
	ld (hl),c		;7e98
	ld a,d			;7e99
	call nc,0989ch		;7e9a
	jp (hl)			;7e9d
	add a,e			;7e9e
	ld l,h			;7e9f
	inc b			;7ea0
	ld (l6d9bh),a		;7ea1
	ld (00586h),a		;7ea4
	sbc a,(hl)		;7ea7
	adc a,d			;7ea8
	dec b			;7ea9
	sub a			;7eaa
	ld l,(hl)		;7eab
	push af			;7eac
	add a,d			;7ead
	ld e,e			;7eae
	ld (l5c5eh),a		;7eaf
	add a,(hl)		;7eb2
	xor c			;7eb3
	ld (bc),a		;7eb4
	call m,02408h		;7eb5
	ld h,e			;7eb8
	dec b			;7eb9
	ld bc,l6402h		;7eba
	sub d			;7ebd
	ld (bc),a		;7ebe
	ld (bc),a		;7ebf
	ld (bc),a		;7ec0
	inc bc			;7ec1
	ld (bc),a		;7ec2
	ld a,005h		;7ec3
	ld l,a			;7ec5
	and e			;7ec6
	add a,b			;7ec7
	dec b			;7ec8
	push af			;7ec9
	ld l,e			;7eca
	ld hl,l5b7bh		;7ecb
	ld de,08e09h		;7ece
	ld bc,00301h		;7ed1
	rst 28h			;7ed4
	jp nz,l6c21h		;7ed5
	ld a,(bc)		;7ed8
	jr c,l7ee8h		;7ed9
	ld d,h			;7edb
	ld a,(bc)		;7edc
	cp h			;7edd
	add a,h			;7ede
	ld e,0d2h		;7edf
	ld (hl),l		;7ee1
	ret			;7ee2
l7ee3h:
	sbc a,081h		;7ee3
	call nz,sub_5b72h	;7ee5
l7ee8h:
	ld a,(0e8ach)		;7ee8
	djnz l7f0fh		;7eeb
	ret nz			;7eed
	jp 0d60bh		;7eee
	add hl,bc		;7ef1
	res 1,l			;7ef2
	rst 18h			;7ef4
	sbc a,a			;7ef5
	add a,0b0h		;7ef6
	and (hl)		;7ef8
	call z,082c3h		;7ef9
	ld e,a			;7efc
	rst 20h			;7efd
	ld hl,01857h		;7efe
	rlca			;7f01
	jp nc,020abh		;7f02
	rla			;7f05
	pop de			;7f06
	jp l64b9h		;7f07
	sbc a,(hl)		;7f0a
l7f0bh:
	jp c,0a72ch		;7f0b
	ld e,e			;7f0e
l7f0fh:
	cp b			;7f0f
	res 5,b			;7f10
	ld b,016h		;7f12
	jp 0cf13h		;7f14
	sub 01ch		;7f17
	rra			;7f19
	ld (bc),a		;7f1a
	or a			;7f1b
	ld b,00fh		;7f1c
	jp z,0a7bch		;7f1e
l7f21h:
	dec hl			;7f21
	defb 0fdh,0b0h,005h ;illegal sequence	;7f22
	ld b,003h		;7f25
	adc a,l			;7f27
	inc d			;7f28
	ret pe			;7f29
l7f2ah:
	ld l,b			;7f2a
	inc (hl)		;7f2b
	inc bc			;7f2c
	ld (bc),a		;7f2d
	ld a,0a0h		;7f2e
	jp c,l5bcah+2		;7f30
	push hl			;7f33
l7f34h:
	djnz l7ee3h		;7f34
	ld a,a			;7f36
	add a,00eh		;7f37
	add a,a			;7f39
	nop			;7f3a
	ld c,032h		;7f3b
	adc a,l			;7f3d
	ld a,a			;7f3e
	adc a,l			;7f3f
	inc (hl)		;7f40
	sub h			;7f41
	ld (hl),06dh		;7f42
	ld a,a			;7f44
	ld e,060h		;7f45
	ld a,(de)		;7f47
	ld a,(bc)		;7f48
	jp c,01eebh		;7f49
	defb 0fdh,01fh,07fh ;illegal sequence	;7f4c
	ret			;7f4f
	nop			;7f50
	nop			;7f51
	jr nz,l7f21h		;7f52
	cp (hl)			;7f54
	ld l,e			;7f55
	rla			;7f56
	call sub_5c9bh		;7f57
	rst 28h			;7f5a
	ld bc,0cd64h		;7f5b
	exx			;7f5e
	ld h,e			;7f5f
	call 0083ah		;7f60
	rla			;7f63
	jr l7fc2h		;7f64
	jp nc,0cd45h		;7f66
	call z,080d4h		;7f69
	sub c			;7f6c
	dec b			;7f6d
	ld a,000h		;7f6e
	call nz,0fcb9h		;7f70
	add hl,de		;7f73
	sbc a,l			;7f74
l7f75h:
	add a,h			;7f75
	pop hl			;7f76
	ld c,h			;7f77
	ld c,c			;7f78
	sbc a,l			;7f79
	ld c,d			;7f7a
	dec b			;7f7b
	ei			;7f7c
	jp pe,0ee17h		;7f7d
	jr z,$+35		;7f80
	sub (hl)		;7f82
	jp 02187h		;7f83
	ld a,(0c397h)		;7f86
l7f89h:
	jp (hl)			;7f89
	ld d,b			;7f8a
	inc bc			;7f8b
	jp z,l5c55h		;7f8c
l7f8fh:
	jr l7f8fh		;7f8f
	or h			;7f91
	ret c			;7f92
	and c			;7f93
	add a,b			;7f94
	ld b,030h		;7f95
	call sub_74f6h		;7f97
	pop hl			;7f9a
	add a,d			;7f9b
	ld bc,0477dh		;7f9c
	inc sp			;7f9f
	sub l			;7fa0
	jp l616eh		;7fa1
	ld h,l			;7fa4
	ld b,021h		;7fa5
	ld (bc),a		;7fa7
	and h			;7fa8
	jr nz,$+85		;7fa9
	inc b			;7fab
	ld (hl),d		;7fac
	ld d,b			;7fad
	dec b			;7fae
	ei			;7faf
	ld d,b			;7fb0
	ld l,h			;7fb1
	ld (bc),a		;7fb2
	push bc			;7fb3
	jr nc,$+3		;7fb4
	ld bc,00777h		;7fb6
	ld (hl),l		;7fb9
	rlca			;7fba
	halt			;7fbb
	rlca			;7fbc
	dec b			;7fbd
	ld c,b			;7fbe
	inc bc			;7fbf
	ld (hl),d		;7fc0
	dec d			;7fc1
l7fc2h:
	ld b,072h		;7fc2
	ld (bc),a		;7fc4
	rlca			;7fc5
	ld (hl),c		;7fc6
	inc b			;7fc7
	ld h,l			;7fc8
	dec b			;7fc9
	ld de,00035h		;7fca
	ld (bc),a		;7fcd
	ld d,h			;7fce
	inc bc			;7fcf
	ld (hl),h		;7fd0
	ld (bc),a		;7fd1
	ld b,e			;7fd2
	nop			;7fd3
	ld d,e			;7fd4
	ld hl,07300h		;7fd5
	ld (hl),l		;7fd8
	nop			;7fd9
	ld a,(0825eh)		;7fda
	ld d,09ch		;7fdd
	inc c			;7fdf
	ld e,h			;7fe0
	ret z			;7fe1
	ret nc			;7fe2
	ld b,0cah		;7fe3
	sbc a,a			;7fe5
	ld h,e			;7fe6
	sub c			;7fe7
	ld d,l			;7fe8
	rst 38h			;7fe9
	add a,b			;7fea
	or d			;7feb
	rst 30h			;7fec
	ld l,h			;7fed
	ret nz			;7fee
	ld (hl),h		;7fef
	ld h,e			;7ff0
	ld e,l			;7ff1
	ld h,c			;7ff2
	push af			;7ff3
	dec bc			;7ff4
	ld e,l			;7ff5
	inc a			;7ff6
	defb 0fdh,052h,004h ;illegal sequence	;7ff7
	add a,b			;7ffa
	rlca			;7ffb
	jp z,l5d23h		;7ffc
	defb 0feh		;7fff
