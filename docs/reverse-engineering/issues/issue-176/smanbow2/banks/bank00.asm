; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank00.asm /tmp/smanbow2_bank_00.bin

	org 04000h

l4000h:
	ld b,c			;4000
	ld b,d			;4001
	ld h,h			;4002
	ld b,c			;4003
	nop			;4004
	nop			;4005
	nop			;4006
	nop			;4007
	nop			;4008
	nop			;4009
	nop			;400a
	nop			;400b
	nop			;400c
	nop			;400d
	nop			;400e
	nop			;400f
l4010h:
	call 0c0c2h		;4010
	ld (0c0c1h),a		;4013
	ld hl,00000h		;4016
	call 0c0dbh		;4019
	ld (0f341h),a		;401c
	ld hl,l4000h		;401f
	call 0c0dbh		;4022
	ld (0f342h),a		;4025
	ld hl,08000h		;4028
	call 0c0dbh		;402b
	ld (0f343h),a		;402e
	and 003h		;4031
	add a,a			;4033
	add a,a			;4034
	ld b,a			;4035
	ld a,(0f342h)		;4036
	and 003h		;4039
	or b			;403b
	add a,a			;403c
	add a,a			;403d
l403eh:
	ld b,a			;403e
	ld a,(0f341h)		;403f
	and 003h		;4042
	or b			;4044
	ld b,a			;4045
	call 00138h		;4046
	and 0c0h		;4049
	or b			;404b
	ld b,a			;404c
	ld (0c3f2h),a		;404d
	and 0f3h		;4050
	ld c,a			;4052
	ld a,(0c0c1h)		;4053
	and 003h		;4056
	add a,a			;4058
	add a,a			;4059
	or c			;405a
	ld (0c3f3h),a		;405b
	ld a,b			;405e
	and 0cfh		;405f
	ld c,a			;4061
	ld a,(0c0c1h)		;4062
	and 003h		;4065
	add a,a			;4067
	add a,a			;4068
	add a,a			;4069
	add a,a			;406a
	or c			;406b
	ld (0c3f4h),a		;406c
	ld a,b			;406f
l4070h:
	and 0c3h		;4070
	ld c,a			;4072
	ld a,(0c0c1h)		;4073
	and 003h		;4076
	ld b,a			;4078
	add a,a			;4079
	add a,a			;407a
	or b			;407b
	add a,a			;407c
	add a,a			;407d
	or c			;407e
	ld (0c3f5h),a		;407f
	ld a,(0c0c1h)		;4082
	ld h,080h		;4085
	call 00024h		;4087
	ld a,(0f342h)		;408a
	ld h,040h		;408d
	call 00024h		;408f
	ld a,(0c0c1h)		;4092
	ld h,040h		;4095
	call 00024h		;4097
	ld b,003h		;409a
	ld de,0c0b9h		;409c
	ld hl,03ffdh		;409f
	push hl			;40a2
l40a3h:
	push bc			;40a3
	push de			;40a4
	push hl			;40a5
	ld a,(de)		;40a6
	ld e,a			;40a7
	ld a,(0f341h)		;40a8
	call 00014h		;40ab
	pop hl			;40ae
	pop de			;40af
	pop bc			;40b0
	inc de			;40b1
	inc hl			;40b2
	djnz l40a3h		;40b3
	ld a,(0f341h)		;40b5
	push af			;40b8
	pop iy			;40b9
	pop ix			;40bb
	ld (0c0bfh),sp		;40bd
	jp 0001ch		;40c1
l40c4h:
	ld sp,(0c0bfh)		;40c4
	ret			;40c8
	jp 0c0b4h		;40c9
	nop			;40cc
	nop			;40cd
	nop			;40ce
	nop			;40cf
	nop			;40d0
	nop			;40d1
	call 00138h		;40d2
	rrca			;40d5
	rrca			;40d6
	and 003h		;40d7
	ld c,a			;40d9
	ld b,000h		;40da
	ld hl,0fcc1h		;40dc
	add hl,bc		;40df
	or (hl)			;40e0
	ld c,a			;40e1
	inc hl			;40e2
	inc hl			;40e3
	inc hl			;40e4
	inc hl			;40e5
	ld a,(hl)		;40e6
	and 00ch		;40e7
	or c			;40e9
	ret			;40ea
	ld bc,00400h		;40eb
	ld (0c0bdh),hl		;40ee
	ld hl,0fcc1h		;40f1
l40f4h:
	push bc			;40f4
	push hl			;40f5
	ld a,(hl)		;40f6
	bit 7,a			;40f7
	jr nz,l410fh		;40f9
	ld a,c			;40fb
	call 0c111h		;40fc
l40ffh:
	pop hl			;40ff
	pop bc			;4100
	ld a,(0c0bch)		;4101
	ret c			;4104
	inc hl			;4105
	inc c			;4106
	djnz l40f4h		;4107
	ld a,0ffh		;4109
	ld (0c0bch),a		;410b
	ret			;410e
l410fh:
	and 080h		;410f
	or c			;4111
	ld b,004h		;4112
l4114h:
	push bc			;4114
	call 0c111h		;4115
l4118h:
	pop bc			;4118
	jr c,l40ffh		;4119
	add a,004h		;411b
	djnz l4114h		;411d
	jr l40ffh		;411f
	ld (0c0bch),a		;4121
	call 0c137h		;4124
	ld b,a			;4127
	cpl			;4128
	ld c,a			;4129
	call 0c145h		;412a
	call 0c137h		;412d
	cp c			;4130
	jr nz,l4142h		;4131
	cpl			;4133
	call 0c145h		;4134
	call 0c137h		;4137
	cp b			;413a
	jr nz,l4142h		;413b
	ld a,(0c0bch)		;413d
	scf			;4140
	ret			;4141
l4142h:
	ld a,(0c0bch)		;4142
	or a			;4145
	ret			;4146
	push bc			;4147
	push hl			;4148
	ld a,(0c0bch)		;4149
	ld hl,(0c0bdh)		;414c
	call 0000ch		;414f
	pop hl			;4152
	pop bc			;4153
	ret			;4154
	push bc			;4155
	push hl			;4156
	ld e,a			;4157
	ld a,(0c0bch)		;4158
	ld hl,(0c0bdh)		;415b
	call 00014h		;415e
	pop hl			;4161
	pop bc			;4162
	ret			;4163
	ld ix,001f5h		;4164
	call 0015fh		;4168
	ld (0c1fdh),a		;416b
	ld a,(0002dh)		;416e
	cp 003h			;4171
	jp c,l4179h		;4173
	xor a			;4176
	out (0a7h),a		;4177
l4179h:
	im 1			;4179
	ld bc,00154h		;417b
	ld de,0c000h		;417e
	ld hl,l4010h		;4181
	ldir			;4184
	call 0c000h		;4186
	xor a			;4189
	ld (0c3f6h),a		;418a
	ld (05000h),a		;418d
	inc a			;4190
	ld (0c3f7h),a		;4191
	ld (07000h),a		;4194
	inc a			;4197
	ld (0c3f8h),a		;4198
	ld (09000h),a		;419b
	inc a			;419e
	ld (0c3f9h),a		;419f
	ld (0b000h),a		;41a2
	ld bc,003f6h		;41a5
	ld de,00103h		;41a8
	ld hl,l41d8h		;41ab
	ldir			;41ae
	ld hl,l45ceh		;41b0
	ld de,00500h		;41b3
	call 001a0h		;41b6
	ld hl,l41d2h		;41b9
	ld (00039h),hl		;41bc
	ld a,0c3h		;41bf
	ld (00038h),a		;41c1
	ld bc,00ed7h		;41c4
	ld de,0c400h		;41c7
	ld hl,l6a23h		;41ca
	ldir			;41cd
	jp 0c400h		;41cf
l41d2h:
	push af			;41d2
	in a,(099h)		;41d3
	pop af			;41d5
	ei			;41d6
	ret			;41d7
l41d8h:
	ld a,020h		;41d8
	di			;41da
	out (099h),a		;41db
	ld a,091h		;41dd
	ei			;41df
	out (099h),a		;41e0
	ld c,09bh		;41e2
l41e4h:
	ld a,002h		;41e4
	di			;41e6
	out (099h),a		;41e7
	ld a,08fh		;41e9
	out (099h),a		;41eb
	in a,(099h)		;41ed
	rra			;41ef
	ld a,000h		;41f0
	out (099h),a		;41f2
	ld a,08fh		;41f4
	ei			;41f6
	out (099h),a		;41f7
	jr c,l41e4h		;41f9
	outi			;41fb
	outi			;41fd
	outi			;41ff
	outi			;4201
	outi			;4203
	outi			;4205
	outi			;4207
	outi			;4209
	outi			;420b
	outi			;420d
	outi			;420f
	outi			;4211
	outi			;4213
	outi			;4215
	outi			;4217
	ret			;4219
	scf			;421a
	ld a,h			;421b
	rla			;421c
	rla			;421d
	rla			;421e
	and 007h		;421f
	di			;4221
	out (099h),a		;4222
	ld a,08eh		;4224
	out (099h),a		;4226
	ld a,l			;4228
	out (099h),a		;4229
	ld a,h			;422b
	and 03fh		;422c
	or 040h			;422e
	out (099h),a		;4230
	ret			;4232
	ex de,hl		;4233
	ld a,(0c1fbh)		;4234
	add a,(hl)		;4237
	ld e,a			;4238
	dec hl			;4239
l423ah:
	ld a,(0fff6h)		;423a
	add a,(hl)		;423d
	add a,009h		;423e
	ld d,a			;4240
	srl d			;4241
	rr e			;4243
	ld a,(0c1fah)		;4245
	or d			;4248
	ld d,a			;4249
	ex de,hl		;424a
	rlca			;424b
	rlca			;424c
	and 003h		;424d
	di			;424f
	out (099h),a		;4250
	ld a,08eh		;4252
	out (099h),a		;4254
	ld a,l			;4256
	out (099h),a		;4257
	ld a,h			;4259
	and 03fh		;425a
	out (099h),a		;425c
	ei			;425e
	in a,(098h)		;425f
	and 00fh		;4261
	sub 004h		;4263
	ret			;4265
	nop			;4266
	nop			;4267
	nop			;4268
	nop			;4269
	nop			;426a
	nop			;426b
	nop			;426c
	nop			;426d
	nop			;426e
	nop			;426f
	nop			;4270
	nop			;4271
	nop			;4272
	nop			;4273
	nop			;4274
	inc hl			;4275
	inc hl			;4276
	inc hl			;4277
	inc hl			;4278
	ld a,080h		;4279
	exx			;427b
	ld de,00001h		;427c
	exx			;427f
l4280h:
	call 001f7h		;4280
	jr c,l4289h		;4283
sub_4285h:
	ldi			;4285
	jr l4280h		;4287
l4289h:
	ld c,(hl)		;4289
	inc hl			;428a
	ld b,000h		;428b
	bit 7,c			;428d
	jr z,l42a1h		;428f
	call 001f7h		;4291
	call 001f5h		;4294
	call 001f5h		;4297
	call 001f5h		;429a
	jr c,l42a1h		;429d
	res 7,c			;429f
l42a1h:
	inc bc			;42a1
	exx			;42a2
	ld h,d			;42a3
	ld l,e			;42a4
	ld b,e			;42a5
l42a6h:
	exx			;42a6
	call 001f7h		;42a7
l42aah:
	exx			;42aa
	jr nc,l42b7h		;42ab
	inc b			;42ad
	jr l42a6h		;42ae
l42b0h:
	exx			;42b0
	call 001f7h		;42b1
	exx			;42b4
	adc hl,hl		;42b5
l42b7h:
	djnz l42b0h		;42b7
	inc hl			;42b9
	exx			;42ba
	ret c			;42bb
	push hl			;42bc
	exx			;42bd
	push hl			;42be
	exx			;42bf
	ld h,d			;42c0
	ld l,e			;42c1
	sbc hl,bc		;42c2
	pop bc			;42c4
	ldir			;42c5
	pop hl			;42c7
	jr l4280h		;42c8
	rl b			;42ca
	add a,a			;42cc
	ret nz			;42cd
	ld a,(hl)		;42ce
	inc hl			;42cf
	rla			;42d0
	ret			;42d1
	call 00283h		;42d2
	inc hl			;42d5
	inc hl			;42d6
	inc hl			;42d7
	inc hl			;42d8
	exx			;42d9
	ld bc,00080h		;42da
	exx			;42dd
l42deh:
	exx			;42de
	call 0025fh		;42df
	exx			;42e2
	jr c,l42ech		;42e3
	ld c,098h		;42e5
	outi			;42e7
	inc de			;42e9
	jr l42deh		;42ea
l42ech:
	ld a,(hl)		;42ec
	inc hl			;42ed
	or a			;42ee
	jr z,l4322h		;42ef
	exx			;42f1
	ld e,a			;42f2
	ld d,b			;42f3
	rlca			;42f4
	jr nc,l430dh		;42f5
	call 0025fh		;42f7
	rl d			;42fa
	call 0025fh		;42fc
	rl d			;42ff
	call 0025fh		;4301
	rl d			;4304
	call 0025fh		;4306
	jr c,l430dh		;4309
	res 7,e			;430b
l430dh:
	inc de			;430d
	call 0026ch		;430e
	push hl			;4311
	exx			;4312
	push hl			;4313
	push de			;4314
	exx			;4315
	ld h,d			;4316
	ld l,e			;4317
	pop bc			;4318
	sbc hl,bc		;4319
	pop bc			;431b
	call 002a2h		;431c
	pop hl			;431f
	jr l42deh		;4320
l4322h:
	call 0026bh		;4322
	ret c			;4325
	push hl			;4326
	exx			;4327
	push hl			;4328
	exx			;4329
	pop bc			;432a
	ld h,d			;432b
	ld l,e			;432c
	dec hl			;432d
	call 002a2h		;432e
	pop hl			;4331
	jr l42deh		;4332
	sla c			;4334
	ret nz			;4336
	exx			;4337
	ld a,(hl)		;4338
	inc hl			;4339
	exx			;433a
	ld c,a			;433b
	sla c			;433c
	inc c			;433e
	ret			;433f
	exx			;4340
	ld hl,00001h		;4341
	ld b,001h		;4344
l4346h:
	call 0025fh		;4346
	jr nc,l4353h		;4349
	inc b			;434b
	jr l4346h		;434c
l434eh:
	call 0025fh		;434e
	adc hl,hl		;4351
l4353h:
	djnz l434eh		;4353
	inc hl			;4355
	exx			;4356
	ret			;4357
	ld a,d			;4358
	rla			;4359
	rla			;435a
	rla			;435b
	and 007h		;435c
	out (099h),a		;435e
	and 004h		;4360
	ld (002a9h),a		;4362
	ld (002c2h),a		;4365
	ld a,08eh		;4368
	out (099h),a		;436a
	ld a,e			;436c
	out (099h),a		;436d
	ld a,d			;436f
	and 03fh		;4370
	or 040h			;4372
	out (099h),a		;4374
	ret			;4376
l4377h:
	di			;4377
l4378h:
	ld a,h			;4378
	and 0c0h		;4379
	rlca			;437b
	rlca			;437c
	or 000h			;437d
	out (099h),a		;437f
	ld a,08eh		;4381
	out (099h),a		;4383
	ld a,l			;4385
	out (099h),a		;4386
	ld a,h			;4388
	and 03fh		;4389
	out (099h),a		;438b
	inc hl			;438d
	in a,(098h)		;438e
	push af			;4390
	ld a,d			;4391
	and 0c0h		;4392
	rlca			;4394
	rlca			;4395
	or 000h			;4396
	out (099h),a		;4398
	ld a,08eh		;439a
	out (099h),a		;439c
	ld a,e			;439e
	out (099h),a		;439f
	ld a,d			;43a1
	and 03fh		;43a2
	or 040h			;43a4
	out (099h),a		;43a6
	inc de			;43a8
	pop af			;43a9
	out (098h),a		;43aa
	dec bc			;43ac
	ld a,c			;43ad
	or b			;43ae
	jr nz,l4378h		;43af
	ei			;43b1
	ret			;43b2
	di			;43b3
	out (099h),a		;43b4
	ld a,090h		;43b6
	out (099h),a		;43b8
	otir			;43ba
	ei			;43bc
	ret			;43bd
	xor a			;43be
	di			;43bf
	out (099h),a		;43c0
	ld a,090h		;43c2
	out (099h),a		;43c4
	ld bc,0209ah		;43c6
sub_43c9h:
	otir			;43c9
	ei			;43cb
	ret			;43cc
	in a,(0aah)		;43cd
	and 0f0h		;43cf
	ld d,a			;43d1
	ld c,0a9h		;43d2
	ld b,00bh		;43d4
	ld hl,0fbf0h		;43d6
	ld a,d			;43d9
	or b			;43da
	out (0aah),a		;43db
	ind			;43dd
	jp nz,00304h		;43df
	ld a,d			;43e2
	out (0aah),a		;43e3
	ind			;43e5
	ret			;43e7
	ld a,00fh		;43e8
	di			;43ea
	out (0a0h),a		;43eb
	ld a,08fh		;43ed
	out (0a1h),a		;43ef
	ld a,00eh		;43f1
	out (0a0h),a		;43f3
	ei			;43f5
	in a,(0a2h)		;43f6
	cpl			;43f8
	and 03fh		;43f9
	ld c,a			;43fb
	ld de,004f0h		;43fc
	in a,(0aah)		;43ff
	and e			;4401
	or 006h			;4402
	out (0aah),a		;4404
	in a,(0a9h)		;4406
	cpl			;4408
	and 020h		;4409
	rlca			;440b
	or c			;440c
	ld c,a			;440d
	in a,(0aah)		;440e
	and e			;4410
	or d			;4411
	out (0aah),a		;4412
	in a,(0a9h)		;4414
	cpl			;4416
	and d			;4417
	ld b,a			;4418
	in a,(0aah)		;4419
	and e			;441b
	or 008h			;441c
	out (0aah),a		;441e
	in a,(0a9h)		;4420
	cpl			;4422
sub_4423h:
	and 0f1h		;4423
	rlca			;4425
	or b			;4426
	rla			;4427
	rla			;4428
	rla			;4429
	ld b,a			;442a
	rla			;442b
	rla			;442c
	rla			;442d
	and d			;442e
l442fh:
	or b			;442f
	or c			;4430
	ld b,a			;4431
	ld hl,0c39ah		;4432
	ld a,(hl)		;4435
	xor b			;4436
	and b			;4437
	ld (0c39fh),a		;4438
	ld (hl),b		;443b
	ret			;443c
	ld hl,003f7h		;443d
	ld (0f323h),hl		;4440
	ld hl,003f9h		;4443
	ld (0f325h),hl		;4446
	nop			;4449
	nop			;444a
	nop			;444b
	ld a,(003fbh)		;444c
	or a			;444f
	ld a,000h		;4450
l4452h:
	ld (003fbh),a		;4452
	ret			;4455
	ld c,01ah		;4456
	call 003feh		;4458
	ld hl,003c5h		;445b
	ld de,003c6h		;445e
	ld bc,00024h		;4461
	ld (hl),b		;4464
	ldir			;4465
	ld hl,00405h		;4467
	ld de,003c6h		;446a
	ld bc,0000bh		;446d
	ldir			;4470
	ld c,00fh		;4472
	ld de,003c5h		;4474
	call 003feh		;4477
	ld hl,00000h		;447a
sub_447dh:
	ld (003e6h),hl		;447d
	ld (003e8h),hl		;4480
	inc hl			;4483
	ld (003d3h),hl		;4484
	ld hl,(003d5h)		;4487
	ld de,003c5h		;448a
	ld c,026h		;448d
	call 003feh		;448f
	ld c,010h		;4492
	ld de,003c5h		;4494
	jp 003feh		;4497
	nop			;449a
	ld a,b			;449b
	ld a,b			;449c
	ld a,b			;449d
	ld a,b			;449e
	ld a,b			;449f
	ld a,b			;44a0
	ld a,b			;44a1
	ld a,b			;44a2
	ld a,b			;44a3
	ld a,b			;44a4
	ld a,b			;44a5
	nop			;44a6
	nop			;44a7
	nop			;44a8
	nop			;44a9
	nop			;44aa
	nop			;44ab
	nop			;44ac
	nop			;44ad
	nop			;44ae
	nop			;44af
	nop			;44b0
	nop			;44b1
	nop			;44b2
	nop			;44b3
	nop			;44b4
	nop			;44b5
	nop			;44b6
	nop			;44b7
	nop			;44b8
	nop			;44b9
	nop			;44ba
	nop			;44bb
	nop			;44bc
	nop			;44bd
	nop			;44be
	ld c,000h		;44bf
	ld a,001h		;44c1
	ld (003fbh),a		;44c3
	ld sp,(003fch)		;44c6
	ret			;44ca
	ret			;44cb
	jp pe,0f603h		;44cc
	inc bc			;44cf
	nop			;44d0
	nop			;44d1
	nop			;44d2
	ld (003fch),sp		;44d3
	jp 00005h		;44d7
	ld d,e			;44da
	ld h,c			;44db
	halt			;44dc
	ld h,l			;44dd
	ld b,h			;44de
	ld h,c			;44df
	ld (hl),h		;44e0
	ld h,c			;44e1
	ld h,h			;44e2
	ld h,c			;44e3
	ld (hl),h		;44e4
	ld hl,003f7h		;44e5
	ld (0f323h),hl		;44e8
	ld hl,003f9h		;44eb
	ld (0f325h),hl		;44ee
	ld (00434h),de		;44f1
	call 00436h		;44f5
	ld de,(00434h)		;44f8
	ld a,(003fbh)		;44fc
	or a			;44ff
	ret z			;4500
sub_4501h:
	xor a			;4501
	ld (003fbh),a		;4502
	jp 0041ch		;4505
	ret			;4508
	nop			;4509
	nop			;450a
	ld c,01ah		;450b
	call 003feh		;450d
	ld hl,0c1dbh		;4510
	ld de,00467h		;4513
	ld bc,0000bh		;4516
	ldir			;4519
	ld c,00fh		;451b
	ld de,00466h		;451d
	call 003feh		;4520
	ld hl,00000h		;4523
	ld (00487h),hl		;4526
	ld (00489h),hl		;4529
	inc hl			;452c
	ld (00474h),hl		;452d
	ld hl,(00476h)		;4530
	ld de,00466h		;4533
	ld c,027h		;4536
	jp 003feh		;4538
	nop			;453b
	ld b,(hl)		;453c
	ld c,c			;453d
	ld c,h			;453e
	ld b,l			;453f
	ld c,(hl)		;4540
	ld b,c			;4541
	ld c,l			;4542
	ld b,l			;4543
	ld b,l			;4544
	ld e,b			;4545
	ld d,h			;4546
	nop			;4547
	nop			;4548
	nop			;4549
	nop			;454a
	nop			;454b
	nop			;454c
	nop			;454d
	nop			;454e
	nop			;454f
	nop			;4550
	nop			;4551
	nop			;4552
	nop			;4553
	nop			;4554
l4555h:
	nop			;4555
	nop			;4556
	nop			;4557
	nop			;4558
	nop			;4559
	nop			;455a
	nop			;455b
	nop			;455c
	nop			;455d
	nop			;455e
	nop			;455f
	ld a,020h		;4560
	di			;4562
	out (099h),a		;4563
	ld a,091h		;4565
	ei			;4567
	out (099h),a		;4568
	ld c,09bh		;456a
l456ch:
	in a,(099h)		;456c
	rra			;456e
	jr c,l456ch		;456f
	outi			;4571
	outi			;4573
	outi			;4575
	outi			;4577
	outi			;4579
	outi			;457b
	outi			;457d
	outi			;457f
	outi			;4581
	outi			;4583
	outi			;4585
	outi			;4587
	outi			;4589
	outi			;458b
	outi			;458d
	ret			;458f
	push de			;4590
	ld de,0c1dbh		;4591
	ld bc,0000bh		;4594
	ldir			;4597
	pop de			;4599
	jp 00410h		;459a
	ld de,0c1dbh		;459d
	ld bc,0000bh		;45a0
	ldir			;45a3
	ld de,0b000h		;45a5
	call 00410h		;45a8
	ld hl,0b000h		;45ab
	ld de,08000h		;45ae
	jp 001a0h		;45b1
	push af			;45b4
	push de			;45b5
	ld de,l4000h		;45b6
	call 004bbh		;45b9
	pop de			;45bc
	pop af			;45bd
	ld hl,l4000h		;45be
	jp 001fdh		;45c1
	ret			;45c4
	nop			;45c5
l45c6h:
	push bc			;45c6
	call 0fd9fh		;45c7
	pop bc			;45ca
l45cbh:
	djnz l45c6h		;45cb
	ret			;45cd
l45ceh:
	rla			;45ce
	scf			;45cf
	nop			;45d0
	nop			;45d1
	nop			;45d2
	jp 03a2bh		;45d3
	jp 005e6h		;45d6
	jp 00145h		;45d9
	ld b,0c3h		;45dc
	ld b,h			;45de
	add hl,de		;45df
	jp 00e77h		;45e0
	ex af,af'		;45e3
	ld c,b			;45e4
	dec b			;45e5
	ld d,(hl)		;45e6
	ld (bc),a		;45e7
	ld bc,0001ah		;45e8
	jp 01c73h		;45eb
l45eeh:
	jp 01d7dh		;45ee
	jp 01276h		;45f1
	dec de			;45f4
	jp 002dch		;45f5
	dec b			;45f8
	dec bc			;45f9
	ld c,c			;45fa
	ld sp,03902h		;45fb
	ld (bc),a		;45fe
	pop hl			;45ff
	ld (bc),a		;4600
	nop			;4601
	ld a,e			;4602
	ld e,0c3h		;4603
	inc d			;4605
	jr nz,l45cbh		;4606
	dec h			;4608
	add a,d			;4609
	ld (bc),a		;460a
	or b			;460b
	inc h			;460c
l460dh:
	jp 00275h		;460d
	ld c,b			;4610
	ld d,h			;4611
	ld (bc),a		;4612
	inc l			;4613
	ld (bc),a		;4614
	call pe,02023h		;4615
	jp 00286h		;4618
	ld e,h			;461b
	ld (0f9c3h),hl		;461c
	sub d			;461f
	rla			;4620
	sbc a,c			;4621
	ld (bc),a		;4622
	ld a,c			;4623
	ld (bc),a		;4624
	ld b,b			;4625
	ld c,e			;4626
	ld (bc),a		;4627
	cpl			;4628
	jr z,l45eeh		;4629
	xor a			;462b
	ld hl,(0c302h)		;462c
	cp a			;462f
	dec hl			;4630
	jp 03497h		;4631
	inc hl			;4634
	ld (bc),a		;4635
	inc l			;4636
	jp 03109h		;4637
	jp 008a1h		;463a
	ex af,af'		;463d
	ld a,d			;463e
	ld (hl),0c3h		;463f
	push de			;4641
	ld (bc),a		;4642
	jr nz,l467ch		;4643
	inc h			;4645
	jp l6222h		;4646
	ld h,h			;4649
	ld (bc),a		;464a
	ld l,b			;464b
	sub d			;464c
	ld (bc),a		;464d
	adc a,b			;464e
	ld (bc),a		;464f
	jp m,00802h		;4650
	jp po,0c332h		;4653
	rst 20h			;4656
	ld (bc),a		;4657
	pop bc			;4658
	inc sp			;4659
	inc h			;465a
	jp 002c6h		;465b
	ld (bc),a		;465e
	jr nz,l4668h		;465f
	add a,c			;4661
	ld (bc),a		;4662
	rst 10h			;4663
	cpl			;4664
	jp 030cdh		;4665
l4668h:
	add a,b			;4668
	ld (de),a		;4669
	scf			;466a
	ld e,h			;466b
	adc a,b			;466c
	ld (bc),a		;466d
	sub (hl)		;466e
	jr c,l46beh		;466f
	add hl,sp		;4671
	jp l7029h		;4672
	add hl,sp		;4675
	ld h,l			;4676
	ld (bc),a		;4677
	sbc a,l			;4678
	ld d,b			;4679
	inc h			;467a
	ld a,l			;467b
l467ch:
	ld (bc),a		;467c
	ld e,l			;467d
	ld (bc),a		;467e
	dec a			;467f
	sub c			;4680
	ld (bc),a		;4681
	add hl,sp		;4682
	cp h			;4683
	ld de,01b81h		;4684
	or b			;4687
	ld c,c			;4688
	dec b			;4689
	jp z,0e802h		;468a
	ld (bc),a		;468d
	nop			;468e
	ld h,03bh		;468f
	jp 03b4eh		;4691
	nop			;4694
	add a,b			;4695
	nop			;4696
	ld b,00fh		;4697
	ld (0c107h),a		;4699
	xor a			;469c
	ld (000a2h),a		;469d
	jp 0a33ah		;46a0
	jp 00832h		;46a3
	pop bc			;46a6
	jp 00601h		;46a7
	ld b,03ah		;46aa
	ld b,0c1h		;46ac
	or a			;46ae
	ret z			;46af
	ld de,00548h		;46b0
	ld a,(0b714h)		;46b3
	jr nz,l46b9h		;46b6
	pop hl			;46b8
l46b9h:
	ld a,(0c104h)		;46b9
	and 002h		;46bc
l46beh:
	jp z,08116h		;46be
	dec b			;46c1
	pop bc			;46c2
	ld b,a			;46c3
	ld a,(00120h)		;46c4
	cp b			;46c7
	ret c			;46c8
	call 007cfh		;46c9
	ld a,(03132h)		;46cc
	ld l,a			;46cf
	dec bc			;46d0
	ld (00012h),a		;46d1
	ld h,000h		;46d4
	add hl,hl		;46d6
	ld de,(005d2h)		;46d7
	nop			;46db
	add hl,de		;46dc
	ld de,00010h		;46dd
	add hl,de		;46e0
	ld c,(hl)		;46e1
	inc hl			;46e2
	ld b,(hl)		;46e3
	dec b			;46e4
	ld a,b			;46e5
	cp 0ffh			;46e6
	jp z,01edfh		;46e8
	ld (0f608h),a		;46eb
	inc b			;46ee
	ld (0ed04h),a		;46ef
	ld b,e			;46f2
	nop			;46f3
	rst 28h			;46f4
	rlca			;46f5
	call 007adh		;46f6
	ld hl,00000h		;46f9
	ld b,022h		;46fc
	defb 0edh ;next byte illegal after ed	;46fe
	rlca			;46ff
	ld a,003h		;4700
	ld de,0c331h		;4702
	inc e			;4705
	sbc a,h			;4706
	ld d,l			;4707
	jr nc,$-62		;4708
	ld hl,047cbh		;470a
	ld (de),a		;470d
	ret z			;470e
	bit 1,a			;470f
	ld (bc),a		;4711
	ld d,a			;4712
	dec bc			;4713
	inc b			;4714
	xor 007h		;4715
	sub 001h		;4717
	ld (0d004h),a		;4719
	in a,(058h)		;471c
	daa			;471e
	add hl,bc		;471f
	ex af,af'		;4720
	ld hl,(008f1h)		;4721
	di			;4724
	rlca			;4725
	inc b			;4726
	and a			;4727
	jr z,l4734h		;4728
sub_472ah:
	dec a			;472a
	ld (0c206h),a		;472b
	add a,c			;472e
	ld (l7ec3h),a		;472f
	ld b,0cdh		;4732
l4734h:
	add a,a			;4734
	ld (bc),a		;4735
	dec bc			;4736
	djnz $+9		;4737
	ld (l4118h),hl		;4739
	nop			;473c
	ld a,(hl)		;473d
	ld c,a			;473e
	and 070h		;473f
	ret z			;4741
	cp 000h			;4742
	djnz l476eh		;4744
	add hl,de		;4746
	cp 020h			;4747
	jp z,006b3h		;4749
	ex af,af'		;474c
	cp 030h			;474d
	jp z,004d1h		;474f
	ld b,b			;4752
	jr z,l476dh		;4753
	ld d,a			;4755
	cp 050h			;4756
	inc bc			;4758
	ld h,b			;4759
	and h			;475a
	inc bc			;475b
	adc a,a			;475c
	inc c			;475d
	rlca			;475e
	ld a,c			;475f
	and 00fh		;4760
	add hl,sp		;4762
	ld l,b			;4763
	pop af			;4764
	ld l,l			;4765
	call p,03c07h		;4766
	ld d,b			;4769
	and 079h		;476a
	dec b			;476c
l476dh:
	ex de,hl		;476d
l476eh:
	ld hl,000f5h		;476e
	rlca			;4771
	ld b,a			;4772
	add a,a			;4773
	add a,b			;4774
	ld c,a			;4775
	ld b,000h		;4776
	add hl,bc		;4778
	ld b,b			;4779
	ld a,(de)		;477a
	dec e			;477b
	ld (hl),a		;477c
	inc hl			;477d
	ld (hl),e		;477e
	inc hl			;477f
	ld (hl),d		;4780
l4781h:
	ld (0c9ebh),a		;4781
	dec e			;4784
	inc e			;4785
	jp p,00819h		;4786
	dec (hl)		;4789
	jr z,$+8		;478a
	inc hl			;478c
	push bc			;478d
	adc a,l			;478e
	ld h,(hl)		;478f
	ld l,c			;4790
	jr l4805h		;4791
	dec a			;4793
	ld (hl),0c9h		;4794
	ld b,022h		;4796
	ld bc,0c908h		;4798
	ld hl,(06c03h)		;479b
	ld d,e			;479e
	sbc a,l			;479f
	ld (hl),b		;47a0
	ret			;47a1
	inc hl			;47a2
	ld a,001h		;47a3
	ret			;47a5
	jr c,l4804h		;47a6
	adc a,b			;47a8
	rst 38h			;47a9
	cp 0feh			;47aa
	nop			;47ac
	jp z,00812h		;47ad
	ld de,00807h		;47b0
	ld bc,0a305h		;47b3
	dec a			;47b6
	rst 38h			;47b7
	inc b			;47b8
	bit 7,(hl)		;47b9
	jp z,080ceh		;47bb
	push hl			;47be
	ld a,(de)		;47bf
l47c0h:
	ld l,a			;47c0
	inc de			;47c1
	ld a,(de)		;47c2
	nop			;47c3
	ld h,a			;47c4
	dec de			;47c5
	add hl,bc		;47c6
	ld b,h			;47c7
	ld c,l			;47c8
	pop hl			;47c9
	bit 6,(hl)		;47ca
	dec sp			;47cc
	jp z,00f44h		;47cd
	jr l4781h		;47d0
	sbc hl,bc		;47d2
	ld de,00023h		;47d4
	ld a,004h		;47d7
	out (0a0h),a		;47d9
	ld a,c			;47db
	out (0a1h),a		;47dc
	ld (de),a		;47de
	ld (de),a		;47df
	inc de			;47e0
	ld a,005h		;47e1
	ex af,af'		;47e3
	ld a,b			;47e4
	ld d,h			;47e5
	call nc,0230ah		;47e6
	inc c			;47e9
	rlca			;47ea
	add a,b			;47eb
	inc c			;47ec
	in a,(0a2h)		;47ed
	and 0dbh		;47ef
	ld c,a			;47f1
	ld a,(hl)		;47f2
	ld de,024e6h		;47f3
	or c			;47f6
	ld (de),a		;47f7
	inc hl			;47f8
	inc hl			;47f9
	ld (de),a		;47fa
	inc h			;47fb
	inc de			;47fc
	inc d			;47fd
	ld a,(bc)		;47fe
	inc d			;47ff
	ld a,(hl)		;4800
	jr nz,l4826h		;4801
	ld c,a			;4803
l4804h:
	inc hl			;4804
l4805h:
	bit 7,c			;4805
	jp z,08881h		;4807
	adc a,d			;480a
	add a,(hl)		;480b
	ex de,hl		;480c
	inc b			;480d
	bit 6,c			;480e
	jp z,0078fh		;4810
	ld c,047h		;4813
	ld (de),a		;4815
	ld a,(de)		;4816
	sub b			;4817
	jp nc,0af07h		;4818
	ex af,af'		;481b
	ld c,b			;481c
	ld (de),a		;481d
	cp b			;481e
	jp nc,09850h		;481f
	ex af,af'		;4822
	cpl			;4823
	ld c,0a1h		;4824
l4826h:
	ld a,043h		;4826
	dec bc			;4828
	dec hl			;4829
	outi			;482a
	inc a			;482c
	inc b			;482d
	ret nz			;482e
	ret			;482f
	push af			;4830
	inc de			;4831
	push hl			;4832
	push bc			;4833
	ld hl,(00198h)		;4834
	ld bc,00210h		;4837
	add hl,bc		;483a
	ld bc,(03086h)		;483b
	ld de,0000fh		;483f
	inc de			;4842
	ld a,b			;4843
	or c			;4844
	jr z,$-87		;4845
	add hl,bc		;4847
	dec bc			;4848
	jp 0c5beh		;4849
l484ch:
	ld d,b			;484c
	ex de,hl		;484d
	pop bc			;484e
	pop hl			;484f
	pop af			;4850
	adc a,h			;4851
	call po,0c300h		;4852
	out (0a8h),a		;4855
	ld a,022h		;4857
	di			;4859
l485ah:
	ld (098f8h),a		;485a
	ld sp,hl		;485d
	nop			;485e
	sub b			;485f
	ld c,h			;4860
	ei			;4861
	rrca			;4862
	jp p,0000fh		;4863
	ret			;4866
	ld d,e			;4867
	ld b,l			;4868
	ld b,l			;4869
	inc sp			;486a
	ld b,l			;486b
	ld b,h			;486c
	ld c,c			;486d
	ccf			;486e
	ld d,h			;486f
	nop			;4870
	nop			;4871
	inc c			;4872
	ld ix,00300h		;4873
	ex af,af'		;4877
	ld e,000h		;4878
	inc hl			;487a
	ld b,003h		;487b
	push bc			;487d
	adc a,(hl)		;487e
	call m,0c404h		;487f
	sub c			;4882
	ex af,af'		;4883
	pop af			;4884
	ld b,b			;4885
	call nz,0089dh		;4886
	inc hl			;4889
	ld a,c			;488a
	ld de,0b5cdh		;488b
	ex af,af'		;488e
	in a,(098h)		;488f
	dec b			;4891
	pop bc			;4892
	ld (0e410h),hl		;4893
	jp nz,0cb08h		;4896
	ld a,a			;4899
	call nz,01987h		;489a
	ld (hl),a		;489d
	call nz,08b0ch		;489e
	ex af,af'		;48a1
	and 01fh		;48a2
	inc de			;48a4
	adc a,b			;48a5
	ex (sp),hl		;48a6
	ccf			;48a7
	or 033h			;48a8
	add a,b			;48aa
	inc hl			;48ab
	ex af,af'		;48ac
	scf			;48ad
	inc hl			;48ae
	rst 18h			;48af
	xor l			;48b0
	rra			;48b1
	ex af,af'		;48b2
	ld (hl),c		;48b3
	call nz,008abh		;48b4
	dec bc			;48b7
	ld (ix+046h),a		;48b8
	nop			;48bb
	push de			;48bc
	ex af,af'		;48bd
	ld l,(hl)		;48be
	ex af,af'		;48bf
	xor a			;48c0
	ld hl,(023ddh)		;48c1
	ld (l7bf5h),hl		;48c4
	sla d			;48c7
	inc e			;48c9
	pop af			;48ca
	rst 18h			;48cb
	sub e			;48cc
	ld b,l			;48cd
	sub 02bh		;48ce
	ld a,(hl)		;48d0
	ld (01040h),a		;48d1
	ld sp,hl		;48d4
	ret			;48d5
	add a,(ix+000h)		;48d6
	add a,b			;48d9
	inc bc			;48da
	sub (hl)		;48db
	nop			;48dc
	neg			;48dd
	ret			;48df
	push hl			;48e0
	ld (l6eddh),hl		;48e1
	add a,d			;48e4
	ex af,af'		;48e5
	ld h,(hl)		;48e6
	ld bc,0e509h		;48e7
	adc a,0bbh		;48ea
	dec bc			;48ec
	sub h			;48ed
	push hl			;48ee
	exx			;48ef
	dec c			;48f0
	and h			;48f1
	ld b,d			;48f2
	ld a,(ix-02ch)		;48f3
	ld (0afd0h),hl		;48f6
	add hl,hl		;48f9
	cp h			;48fa
	ld c,a			;48fb
	ld b,a			;48fc
	ld d,l			;48fd
	ret			;48fe
	rst 10h			;48ff
	ld de,0f414h		;4900
	rst 28h			;4903
	nop			;4904
	ex af,af'		;4905
	ld a,(0f7f8h)		;4906
	or a			;4909
	jp z,000f9h		;490a
	ex af,af'		;490d
	dec a			;490e
	jp z,00959h		;490f
	sub 003h		;4912
	jp z,01626h		;4914
	add hl,bc		;4917
	ex af,af'		;4918
	jr nz,l491eh		;4919
	ld sp,0032ah		;491b
l491eh:
	dec (hl)		;491e
	inc bc			;491f
	adc a,h			;4920
	ld b,b			;4921
	inc bc			;4922
	ld h,b			;4923
	ld c,(hl)		;4924
	inc bc			;4925
	ld (hl),b		;4926
	add hl,bc		;4927
	ld a,060h		;4928
	ld h,l			;492a
	cpl			;492b
	ret			;492c
	nop			;492d
	ld a,(02600h)		;492e
	ret nz			;4931
	or a			;4932
l4933h:
	jp nz,0096ah		;4933
	call 001bfh		;4936
	add hl,bc		;4939
	jp c,00964h		;493a
	ld a,(00a79h)		;493d
	adc a,b			;4940
	ld h,b			;4941
	ld a,d			;4942
	ld a,(bc)		;4943
	add a,a			;4944
	add a,000h		;4945
	or b			;4947
	dec e			;4948
	push af			;4949
	inc e			;494a
	adc a,h			;494b
	ld (hl),e		;494c
	ld a,(bc)		;494d
	add hl,bc		;494e
	ld e,b			;494f
	jp z,0cb09h		;4950
	ld h,c			;4953
	dec bc			;4954
	add hl,bc		;4955
	cp 001h			;4956
	inc d			;4958
	xor (hl)		;4959
	push hl			;495a
	ld a,(bc)		;495b
	ld a,(de)		;495c
	ld (bc),a		;495d
	ld a,(bc)		;495e
	xor 074h		;495f
	dec bc			;4961
	rra			;4962
	ld a,(03d04h)		;4963
	ret nz			;4966
	ld b,a			;4967
	jp l5b91h		;4968
	ld bc,0888dh		;496b
	adc a,a			;496e
	dec bc			;496f
	jp 00a78h		;4970
	inc d			;4973
	and h			;4974
	ld a,(bc)		;4975
	ld h,h			;4976
	out (053h),a		;4977
	ld a,066h		;4979
	dec b			;497b
	ld h,d			;497c
	xor h			;497d
	ld (bc),a		;497e
	ld (0cd18h),a		;497f
	sub 00bh		;4982
	ret			;4984
	inc (hl)		;4985
	dec b			;4986
	adc a,e			;4987
	add hl,bc		;4988
	cp 02dh			;4989
	jp nc,08f04h		;498b
	ld h,c			;498e
	ld sp,02b18h		;498f
	sub e			;4992
	dec d			;4993
	ret			;4994
	ld h,0a8h		;4995
	dec bc			;4997
	and h			;4998
	inc d			;4999
	ld d,h			;499a
	ld a,097h		;499b
	and l			;499d
	ld b,b			;499e
	inc d			;499f
	ld hl,(014a6h)		;49a0
	ld a,b			;49a3
	ld (062ach),a		;49a4
	inc d			;49a7
	dec hl			;49a8
	cp c			;49a9
	dec hl			;49aa
	jr z,l49b0h		;49ab
	jp nc,09f04h		;49ad
l49b0h:
	jp nc,l7b32h		;49b0
	sub e			;49b3
	add hl,hl		;49b4
	ld e,b			;49b5
	or a			;49b6
	dec l			;49b7
	ret nc			;49b8
	ld (0c3ceh),sp		;49b9
	rst 10h			;49bd
	cp c			;49be
	ld (0d0cdh),hl		;49bf
	sub c			;49c2
	add a,h			;49c3
	ld a,e			;49c4
	add hl,bc		;49c5
	ret			;49c6
	sbc a,b			;49c7
	cp l			;49c8
	ld a,0ffh		;49c9
	ld b,h			;49cb
	ld (032cbh),a		;49cc
	adc a,b			;49cf
	jp z,0a8dbh		;49d0
	jr nz,$+52		;49d3
	ld (hl),a		;49d5
	jr z,$+1		;49d6
	rst 38h			;49d8
	cpl			;49d9
	ld (l7800h),a		;49da
	ld a,(bc)		;49dd
	ld b,004h		;49de
	ld d,000h		;49e0
	push bc			;49e2
	call 01400h		;49e3
	ld a,(bc)		;49e6
	pop bc			;49e7
	jp z,00a07h		;49e8
	ld a,d			;49eb
	add a,005h		;49ec
	ld d,b			;49ee
	ld d,a			;49ef
	djnz $-12		;49f0
	ld a,(0961bh)		;49f2
	ld b,c			;49f5
	ld a,(02878h)		;49f6
	ld d,h			;49f9
	jr nz,l4a61h		;49fa
	ld d,b			;49fc
	scf			;49fd
	ld a,c			;49fe
	ret			;49ff
	djnz $+82		;4a00
	ld e,d			;4a02
	cpl			;4a03
	ld c,000h		;4a04
	call 02608h		;4a06
	ld a,(bc)		;4a09
	ret z			;4a0a
	ld a,c			;4a0b
	dec hl			;4a0c
	ld c,a			;4a0d
	djnz l4a55h		;4a0e
	or 090h			;4a10
	ld de,04d52h		;4a12
	call m,0b233h		;4a15
	jr nz,l4a69h		;4a18
	ld h,008h		;4a1a
	or c			;4a1c
	inc h			;4a1d
	ld a,(bc)		;4a1e
	push de			;4a1f
	ld a,03fh		;4a20
	rst 18h			;4a22
	ld b,h			;4a23
l4a24h:
	ld a,(0fe02h)		;4a24
	ex af,af'		;4a27
	ccf			;4a28
	jp z,00a72h		;4a29
	rlca			;4a2c
	sbc a,b			;4a2d
	ld e,a			;4a2e
l4a2fh:
	ld d,02fh		;4a2f
	ld d,a			;4a31
	ld (00805h),a		;4a32
	inc de			;4a35
	cp d			;4a36
	jp nz,02f0fh		;4a37
	ld a,(bc)		;4a3a
	sub (hl)		;4a3b
	cp e			;4a3c
	ld a,(bc)		;4a3d
	inc b			;4a3e
	pop de			;4a3f
	ld a,d			;4a40
	and 030h		;4a41
	sub c			;4a43
	ld l,h			;4a44
	ld h,h			;4a45
	ld a,c			;4a46
	ret z			;4a47
	ex af,af'		;4a48
	sub a			;4a49
	and (hl)		;4a4a
	cp h			;4a4b
	ld l,l			;4a4c
	pop de			;4a4d
	ld d,b			;4a4e
	jp (hl)			;4a4f
	ld sp,02311h		;4a50
	ld c,0c3h		;4a53
l4a55h:
	ld b,03ah		;4a55
	ld d,b			;4a57
	ret nz			;4a58
	ld e,c			;4a59
	add hl,de		;4a5a
	ld d,c			;4a5b
	ret nz			;4a5c
	ld d,l			;4a5d
	jp l4e11h		;4a5e
l4a61h:
	ret nz			;4a61
	adc a,e			;4a62
	inc d			;4a63
	cp d			;4a64
	ld h,l			;4a65
	ld (de),a		;4a66
	cp d			;4a67
	inc e			;4a68
l4a69h:
	ld d,c			;4a69
	inc d			;4a6a
	rst 18h			;4a6b
	ld b,e			;4a6c
	ld de,l7dcdh		;4a6d
	di			;4a70
	jr nc,l4ab8h		;4a71
	ld a,(0f342h)		;4a73
	cp (hl)			;4a76
	pop de			;4a77
	rst 38h			;4a78
	daa			;4a79
	ld b,a			;4a7a
	and d			;4a7b
	ld de,08f47h		;4a7c
	sbc a,d			;4a7f
	rst 38h			;4a80
	inc de			;4a81
	and 0cfh		;4a82
	or e			;4a84
	ld d,e			;4a85
	ld d,(hl)		;4a86
	xor a			;4a87
	ld bc,0c028h		;4a88
	ret			;4a8b
	call 00aaah		;4a8c
	ret m			;4a8f
	add hl,de		;4a90
	ret z			;4a91
	add hl,hl		;4a92
	or a			;4a93
l4a94h:
	ld (00443h),hl		;4a94
	inc bc			;4a97
	djnz l4acch		;4a98
	inc sp			;4a9a
	jr $+60			;4a9b
	ld (bc),a		;4a9d
	jp z,l4a24h		;4a9e
	ld b,l			;4aa1
	jp nc,086b2h		;4aa2
	adc a,c			;4aa5
	ret c			;4aa6
	jr $+62			;4aa7
	ld (006f9h),a		;4aa9
	or b			;4aac
	jp nz,02b24h		;4aad
	ret nz			;4ab0
	pop af			;4ab1
	inc h			;4ab2
	ld c,b			;4ab3
	ret po			;4ab4
	xor c			;4ab5
	inc l			;4ab6
	ret nz			;4ab7
l4ab8h:
	ld (hl),h		;4ab8
	dec bc			;4ab9
	add a,c			;4aba
	ld b,a			;4abb
	ld a,0f7h		;4abc
	inc c			;4abe
	ld (0122dh),a		;4abf
	nop			;4ac2
	ld b,b			;4ac3
	inc d			;4ac4
	ld hl,0146bh		;4ac5
	ld de,0146ch		;4ac8
	ld a,(bc)		;4acb
l4acch:
	ld bc,00041h		;4acc
	ld (hl),086h		;4acf
	add a,b			;4ad1
	or b			;4ad2
	ld hl,0c02eh		;4ad3
	ld de,l552fh		;4ad6
	ret nz			;4ad9
	add a,l			;4ada
	inc c			;4adb
	ret nz			;4adc
	call 00bffh		;4add
l4ae0h:
	ret nc			;4ae0
	rrca			;4ae1
	add a,b			;4ae2
	sbc a,b			;4ae3
	ld bc,0c00ah		;4ae4
	dec c			;4ae7
	ld a,01fh		;4ae8
	ld (00c8fh),a		;4aea
	sbc a,b			;4aed
	call 00c13h		;4aee
	call m,094c4h		;4af1
	inc (hl)		;4af4
	ld d,a			;4af5
	inc de			;4af6
l4af7h:
	add a,c			;4af7
l4af8h:
	ld de,0347ch		;4af8
	inc b			;4afb
	ld (l5252h),a		;4afc
	ld a,(bc)		;4aff
	jr c,l4b34h		;4b00
	ld l,d			;4b02
	dec b			;4b03
	ld a,(bc)		;4b04
	ld h,b			;4b05
	ld a,(bc)		;4b06
	add hl,sp		;4b07
	sbc a,a			;4b08
	inc d			;4b09
	ld a,(bc)		;4b0a
	ld c,(hl)		;4b0b
	ld e,e			;4b0c
	ld a,(bc)		;4b0d
	ld b,e			;4b0e
	ld a,(bc)		;4b0f
	and h			;4b10
	sub c			;4b11
	ld (de),a		;4b12
	ld (01469h),hl		;4b13
	call c,02122h		;4b16
	jr nc,l4ae0h		;4b19
	push hl			;4b1b
	sbc a,c			;4b1c
	dec a			;4b1d
	ret nc			;4b1e
	ld b,(hl)		;4b1f
	ld d,0e0h		;4b20
	ld a,a			;4b22
	ld de,02868h		;4b23
	pop af			;4b26
	djnz l4b47h		;4b27
	defb 0fdh,03eh,024h ;illegal sequence	;4b29
l4b2ch:
	add hl,de		;4b2c
	add a,h			;4b2d
	ld de,03e49h		;4b2e
	jr nz,$-112		;4b31
	add a,l			;4b33
l4b34h:
	ld d,(hl)		;4b34
	ld hl,(00d3eh)		;4b35
	jr c,$-19		;4b38
	ld c,064h		;4b3a
	ex de,hl		;4b3c
	ld c,e			;4b3d
	add a,l			;4b3e
	ld h,b			;4b3f
	pop hl			;4b40
	pop bc			;4b41
	inc hl			;4b42
	add hl,hl		;4b43
	djnz l4af7h		;4b44
	or e			;4b46
l4b47h:
	ld hl,(0a486h)		;4b47
	jp c,004b2h		;4b4a
	ld de,096ddh		;4b4d
	add a,d			;4b50
	ld e,b			;4b51
	inc sp			;4b52
	ld d,0bfh		;4b53
	add a,c			;4b55
	ld d,(hl)		;4b56
	ld a,d			;4b57
	and c			;4b58
	add a,(hl)		;4b59
	ld a,002h		;4b5a
	ld a,(de)		;4b5c
	and 017h		;4b5d
	ld b,e			;4b5f
	ld b,a			;4b60
	cp (hl)			;4b61
	add a,a			;4b62
	inc sp			;4b63
	ld (de),a		;4b64
	ex de,hl		;4b65
	add a,(hl)		;4b66
	dec h			;4b67
	inc c			;4b68
	or h			;4b69
	inc sp			;4b6a
	ret nc			;4b6b
	dec sp			;4b6c
	ld b,d			;4b6d
	inc d			;4b6e
	ret po			;4b6f
	sbc a,b			;4b70
	adc a,e			;4b71
	ld (hl),b		;4b72
	ld a,l			;4b73
	ld a,(l7ce1h)		;4b74
	ld a,(l621dh)		;4b77
	cp a			;4b7a
	scf			;4b7b
	nop			;4b7c
	ret po			;4b7d
	adc a,b			;4b7e
	inc e			;4b7f
	ld (de),a		;4b80
	pop bc			;4b81
	adc a,a			;4b82
	sbc a,e			;4b83
	ld a,b			;4b84
	jp nc,0ed85h		;4b85
	ld d,e			;4b88
	cp e			;4b89
	ld b,b			;4b8a
	call z,0fe10h		;4b8b
	inc sp			;4b8e
	jp z,06801h		;4b8f
	inc c			;4b92
	ld hl,08008h		;4b93
	call 005a1h		;4b96
	ld e,0b8h		;4b99
	add a,h			;4b9b
	dec b			;4b9c
	ld h,000h		;4b9d
	add a,e			;4b9f
	dec b			;4ba0
	ld de,080c3h		;4ba1
	ex af,af'		;4ba4
	jr nc,l4b2ch		;4ba5
	ld c,0a7h		;4ba7
	ret c			;4ba9
	add a,a			;4baa
	dec b			;4bab
	or a			;4bac
	adc a,d			;4bad
	ld (hl),d		;4bae
	sub b			;4baf
	ld l,d			;4bb0
	inc c			;4bb1
	rst 30h			;4bb2
	call c,09fb5h		;4bb3
	adc a,l			;4bb6
	sub (hl)		;4bb7
	jp pe,0daa5h		;4bb8
	ld d,e			;4bbb
	call po,03e03h		;4bbc
	jr $-57			;4bbf
	or e			;4bc1
	pop de			;4bc2
	ld (0bd11h),hl		;4bc3
	pop de			;4bc6
	ld (00cddh),hl		;4bc7
	add a,d			;4bca
	halt			;4bcb
	ex af,af'		;4bcc
	jp (hl)			;4bcd
	sub (hl)		;4bce
	cp e			;4bcf
	inc c			;4bd0
	cp d			;4bd1
	ld (hl),d		;4bd2
	jp 0c18bh		;4bd3
	jp z,0043fh		;4bd6
	ldi			;4bd9
	defb 0fdh,001h,0d7h ;illegal sequence	;4bdb
	ret			;4bde
	ret c			;4bdf
	ld (hl),d		;4be0
	ld de,0c145h		;4be1
	xor 003h		;4be4
	ld e,0feh		;4be6
	ei			;4be8
	call po,00d02h		;4be9
	cp 0fch			;4bec
	jp z,00441h		;4bee
	ld b,0fdh		;4bf1
	jp z,00d48h		;4bf3
	ret			;4bf6
	ex de,hl		;4bf7
	pop bc			;4bf8
	call 01945h		;4bf9
	pop af			;4bfc
	ld b,055h		;4bfd
	and (hl)		;4bff
	defb 0fdh,016h,006h ;illegal sequence	;4c00
	ld sp,00d04h		;4c03
	xor a			;4c06
	ld h,090h		;4c07
	ld a,(bc)		;4c09
	cp 0f9h			;4c0a
	jp nc,01e0dh		;4c0c
	dec c			;4c0f
	ld a,(039cfh)		;4c10
	pop hl			;4c13
	ld a,0a4h		;4c14
	inc b			;4c16
	ld c,0c2h		;4c17
	push de			;4c19
	dec c			;4c1a
	ld b,l			;4c1b
	jp po,051ech		;4c1c
	sbc a,c			;4c1f
	ld b,b			;4c20
	jp (hl)			;4c21
	ld hl,00493h		;4c22
	ld h,e			;4c25
	jp z,004a0h		;4c26
	dec b			;4c29
	ld h,h			;4c2a
	jp z,00da7h		;4c2b
	sub 050h		;4c2e
	inc h			;4c30
	sub d			;4c31
	dec c			;4c32
	xor 08ah		;4c33
	ld sp,hl		;4c35
	inc b			;4c36
	rla			;4c37
	out (0abh),a		;4c38
	ret			;4c3a
	jp nz,00d32h		;4c3b
	ex af,af'		;4c3e
	ld d,b			;4c3f
	ld (hl),e		;4c40
	ex af,af'		;4c41
	ld e,(hl)		;4c42
	ld h,l			;4c43
	adc a,059h		;4c44
	jp z,08fe5h		;4c46
	ld h,03ah		;4c49
	out (0ebh),a		;4c4b
	add a,e			;4c4d
	cp b			;4c4e
	dec c			;4c4f
	ld a,026h		;4c50
	ld (hl),h		;4c52
	ld a,(0aa72h)		;4c53
	cp c			;4c56
	or e			;4c57
	ld d,d			;4c58
	cp e			;4c59
	xor d			;4c5a
	jp c,0d6e2h		;4c5b
l4c5eh:
	cp b			;4c5e
	call po,sub_4285h	;4c5f
	and l			;4c62
	add hl,hl		;4c63
	dec d			;4c64
	jp nc,073e7h		;4c65
	inc a			;4c68
	and (hl)		;4c69
	jp 09aa9h		;4c6a
	rst 10h			;4c6d
	dec b			;4c6e
	xor e			;4c6f
	ld e,a			;4c70
	ld de,0157dh		;4c71
	inc bc			;4c74
	ld bc,00dcah		;4c75
	ld c,07dh		;4c78
	djnz l4c9ah		;4c7a
	inc b			;4c7c
	dec b			;4c7d
	jp z,05a25h		;4c7e
	ld c,024h		;4c81
	add hl,bc		;4c83
	ld d,020h		;4c84
	jp z,00431h		;4c86
	rla			;4c89
	jp z,00e3dh		;4c8a
	adc a,b			;4c8d
	scf			;4c8e
	cp 0c1h			;4c8f
	xor a			;4c91
	or d			;4c92
	ld c,l			;4c93
	ld b,0f5h		;4c94
	ld a,l			;4c96
	dec sp			;4c97
	ld a,023h		;4c98
l4c9ah:
	ld l,(hl)		;4c9a
	rst 0			;4c9b
	dec bc			;4c9c
	dec (hl)		;4c9d
	dec bc			;4c9e
	adc a,l			;4c9f
	ld a,h			;4ca0
	in a,(014h)		;4ca1
	sbc a,b			;4ca3
	ld h,h			;4ca4
	and (hl)		;4ca5
	or l			;4ca6
	rst 18h			;4ca7
	add a,l			;4ca8
	ld h,d			;4ca9
	inc bc			;4caa
	ld l,b			;4cab
	jp po,l4c5eh		;4cac
l4cafh:
	ld c,003h		;4caf
	ld h,h			;4cb1
	inc bc			;4cb2
	add hl,sp		;4cb3
	ld h,l			;4cb4
	ld c,03fh		;4cb5
	ld c,h			;4cb7
	ret			;4cb8
	ld b,01ah		;4cb9
	inc sp			;4cbb
	adc a,h			;4cbc
	inc l			;4cbd
	add hl,bc		;4cbe
	pop bc			;4cbf
	rra			;4cc0
	ex (sp),hl		;4cc1
	ld a,(0b9a7h)		;4cc2
	dec e			;4cc5
l4cc6h:
	call 00e85h		;4cc6
	sbc a,a			;4cc9
	jp z,0193ah		;4cca
	ld (de),a		;4ccd
	or a			;4cce
	jr nz,$-68		;4ccf
	and c			;4cd1
	add a,d			;4cd2
	or a			;4cd3
	call nz,0b453h		;4cd4
	ld h,012h		;4cd7
	ld b,01ah		;4cd9
	ld h,00ch		;4cdb
	ret c			;4cdd
	pop bc			;4cde
	ret p			;4cdf
	inc de			;4ce0
	xor a			;4ce1
	add hl,hl		;4ce2
	inc b			;4ce3
	ld c,d			;4ce4
	ld a,(05e27h)		;4ce5
	rst 20h			;4ce8
	add hl,hl		;4ce9
	add a,008h		;4cea
	ld h,l			;4cec
	ld (de),a		;4ced
	sbc a,l			;4cee
	push bc			;4cef
	daa			;4cf0
	sub 0fch		;4cf1
	dec bc			;4cf3
	ld a,(0a5c1h)		;4cf4
	add a,(hl)		;4cf7
	ld (de),a		;4cf8
	ld a,(04284h)		;4cf9
	ld hl,011e5h		;4cfc
	ld a,(04081h)		;4cff
	inc a			;4d02
	cp 010h			;4d03
	jp z,008a5h		;4d05
	adc a,d			;4d08
	dec bc			;4d09
	ld hl,(0b041h)		;4d0a
	ld d,00ch		;4d0d
	out (030h),a		;4d0f
	ld (00206h),hl		;4d11
	nop			;4d14
	inc l			;4d15
	ld hl,0fc80h		;4d16
	ld (hl),h		;4d19
	dec b			;4d1a
	and a			;4d1b
	inc b			;4d1c
	ld b,0cah		;4d1d
	rst 30h			;4d1f
	ld c,072h		;4d20
	add hl,de		;4d22
	rst 10h			;4d23
	ld e,b			;4d24
	dec de			;4d25
	ld e,01ah		;4d26
	ld a,(bc)		;4d28
	add hl,de		;4d29
	ld a,(040f8h)		;4d2a
	inc (hl)		;4d2d
	inc h			;4d2e
	rrca			;4d2f
	ld a,(hl)		;4d30
l4d31h:
	ld (0ca42h),a		;4d31
	ld l,(hl)		;4d34
	rlca			;4d35
	add a,(hl)		;4d36
	or h			;4d37
	cp 0c2h			;4d38
	ld d,l			;4d3a
	rra			;4d3b
	rlca			;4d3c
	sub (hl)		;4d3d
	dec de			;4d3e
	bit 1,a			;4d3f
	rla			;4d41
	sbc a,(hl)		;4d42
	cp d			;4d43
	inc hl			;4d44
	sbc a,b			;4d45
	dec e			;4d46
	ld b,e			;4d47
	dec e			;4d48
	ld e,h			;4d49
	nop			;4d4a
	rrca			;4d4b
	cp 01ah			;4d4c
	jp c,00f52h		;4d4e
	jp z,0804ah		;4d51
	rlca			;4d54
	jr z,l4d31h		;4d55
	ld b,d			;4d57
	rrca			;4d58
	sub 028h		;4d59
	call nz,023ebh		;4d5b
	jp 0075ch		;4d5e
	ld hl,0b632h		;4d61
	inc c			;4d64
	rlca			;4d65
	sbc a,(hl)		;4d66
	add a,l			;4d67
l4d68h:
	inc sp			;4d68
l4d69h:
	rlca			;4d69
	jp 0c6a4h		;4d6a
	xor 051h		;4d6d
	sub b			;4d6f
	add a,083h		;4d70
	jr nz,l4d95h		;4d72
	sub l			;4d74
	inc d			;4d75
l4d76h:
	ld b,h			;4d76
	exx			;4d77
	ld (hl),h		;4d78
	exx			;4d79
	ld a,(de)		;4d7a
	sub b			;4d7b
	ld h,b			;4d7c
	ld l,(hl)		;4d7d
	rrca			;4d7e
	or 008h			;4d7f
	jr nz,l4d69h		;4d81
	ret p			;4d83
	ld (hl),a		;4d84
	xor e			;4d85
	rst 0			;4d86
	inc a			;4d87
	call pe,088deh		;4d88
	ld b,(hl)		;4d8b
	ld de,082d2h		;4d8c
	dec hl			;4d8f
	or h			;4d90
	djnz $-46		;4d91
	pop de			;4d93
l4d94h:
	defb 0edh ;next byte illegal after ed	;4d94
l4d95h:
	inc c			;4d95
	call m,086f0h		;4d96
	rrca			;4d99
	add a,b			;4d9a
	nop			;4d9b
	ld b,a			;4d9c
	ld a,c			;4d9d
	or (hl)			;4d9e
	ld (hl),a		;4d9f
	inc hl			;4da0
	ld (hl),b		;4da1
	inc hl			;4da2
	inc de			;4da3
	rra			;4da4
	exx			;4da5
l4da6h:
	djnz l4d76h		;4da6
	add a,h			;4da8
	inc hl			;4da9
	jr c,l4d68h		;4daa
	ld e,b			;4dac
	ex de,hl		;4dad
	rst 30h			;4dae
	adc a,d			;4daf
	ld bc,0a5c7h		;4db0
	ld c,a			;4db3
	dec a			;4db4
	cp (hl)			;4db5
	jp 00fefh		;4db6
	inc de			;4db9
	call p,0c6abh		;4dba
	ld h,00fh		;4dbd
	ld (bc),a		;4dbf
l4dc0h:
	rrca			;4dc0
	dec sp			;4dc1
	ld a,00fh		;4dc2
	ld c,h			;4dc4
	ld (0040fh),a		;4dc5
	rrca			;4dc8
	halt			;4dc9
	ccf			;4dca
	rrca			;4dcb
	inc (hl)		;4dcc
	sbc a,b			;4dcd
	rrca			;4dce
	ld b,00fh		;4dcf
	ld b,b			;4dd1
	defb 0edh ;next byte illegal after ed	;4dd2
	rrca			;4dd3
	ld (hl),00fh		;4dd4
	ld sp,00f08h		;4dd6
	ld b,c			;4dd9
	rrca			;4dda
	and d			;4ddb
	jp 01269h		;4ddc
	push bc			;4ddf
	jr nz,$+111		;4de0
	ld de,061feh		;4de2
	ld bc,076dah		;4de5
	ld de,061d6h		;4de8
	add a,a			;4deb
	exx			;4dec
	sub l			;4ded
	ret nz			;4dee
	ld e,a			;4def
	ld hl,00009h		;4df0
	djnz l4e0eh		;4df3
	ld e,(hl)		;4df5
	inc hl			;4df6
	ld d,(hl)		;4df7
	push de			;4df8
	exx			;4df9
	ret			;4dfa
	nop			;4dfb
	ld e,l			;4dfc
	ld de,01025h		;4dfd
	call nc,0eb10h		;4e00
	djnz l4e05h		;4e03
l4e05h:
	xor d			;4e05
	djnz l4dc0h		;4e06
	djnz l4d94h		;4e08
	djnz l4da6h		;4e0a
	djnz l4e0eh		;4e0c
l4e0eh:
	ei			;4e0e
	djnz l4e18h		;4e0f
l4e11h:
	ld de,01117h		;4e11
	jr nz,l4e27h		;4e14
	nop			;4e16
	ccf			;4e17
l4e18h:
	ld de,0114dh		;4e18
	inc de			;4e1b
	ld a,c			;4e1c
	cp 008h			;4e1d
	add hl,de		;4e1f
	ret z			;4e20
	sra c			;4e21
l4e23h:
	cp b			;4e23
	add a,a			;4e24
	add hl,bc		;4e25
	exx			;4e26
l4e27h:
	add a,e			;4e27
	ld l,b			;4e28
	ld l,a			;4e29
	ld h,000h		;4e2a
	cp h			;4e2c
	ld sp,hl		;4e2d
	ld h,(hl)		;4e2e
	add hl,de		;4e2f
	add a,c			;4e30
	ld b,h			;4e31
	exx			;4e32
	cp (hl)			;4e33
	nop			;4e34
	ret z			;4e35
	cp 0cfh			;4e36
	ret nc			;4e38
	ld (hl),a		;4e39
	inc a			;4e3a
	exx			;4e3b
	ld b,a			;4e3c
	rst 8			;4e3d
	cp a			;4e3e
	xor b			;4e3f
	call 05efdh		;4e40
	inc de			;4e43
	ret nz			;4e44
	rst 10h			;4e45
	ex af,af'		;4e46
	ret nz			;4e47
	jr c,l4eb3h		;4e48
	inc c			;4e4a
	cp d			;4e4b
	cp h			;4e4c
	jp nz,0e27dh		;4e4d
	add a,b			;4e50
	sbc a,h			;4e51
	sbc a,(hl)		;4e52
	ex af,af'		;4e53
	add hl,bc		;4e54
	ld (hl),b		;4e55
	ld hl,0048ah		;4e56
	ld (hl),003h		;4e59
	rrca			;4e5b
	inc de			;4e5c
	ld a,(de)		;4e5d
	inc hl			;4e5e
	ld (hl),a		;4e5f
	rrca			;4e60
	daa			;4e61
	ld (bc),a		;4e62
	rrca			;4e63
	dec l			;4e64
	adc a,d			;4e65
	rrca			;4e66
l4e67h:
	ld h,b			;4e67
	add a,b			;4e68
	rrca			;4e69
	rlca			;4e6a
	jp 078c3h		;4e6b
	djnz l4e7dh		;4e6e
l4e70h:
	sub d			;4e70
	ld b,023h		;4e71
	jp nc,00ec1h		;4e73
	rst 38h			;4e76
	dec h			;4e77
	ld h,b			;4e78
	add a,0d2h		;4e79
	ld e,0cdh		;4e7b
l4e7dh:
	djnz l4ef0h		;4e7d
	add hl,hl		;4e7f
	ld b,l			;4e80
	inc bc			;4e81
	inc hl			;4e82
	inc d			;4e83
	jp p,0e811h		;4e84
	djnz l4ec6h		;4e87
	inc a			;4e89
	dec hl			;4e8a
	ld b,b			;4e8b
	ld sp,hl		;4e8c
	ld d,b			;4e8d
	adc a,h			;4e8e
	ret nc			;4e8f
	ld d,c			;4e90
	ld b,e			;4e91
	inc c			;4e92
	ld a,(bc)		;4e93
	or 080h			;4e94
	dec bc			;4e96
	jp po,04ee6h		;4e97
	ld a,a			;4e9a
	sub d			;4e9b
	ld h,h			;4e9c
	rrca			;4e9d
	or a			;4e9e
	rst 20h			;4e9f
	or (hl)			;4ea0
	pop bc			;4ea1
	jr nc,l4e67h		;4ea2
	ld h,011h		;4ea4
	ex af,af'		;4ea6
	jp nz,0b520h		;4ea7
	ld a,c			;4eaa
	ret			;4eab
	ld e,0abh		;4eac
	and 0f3h		;4eae
	xor c			;4eb0
	xor e			;4eb1
	ex de,hl		;4eb2
l4eb3h:
	scf			;4eb3
	ld e,h			;4eb4
	sbc a,a			;4eb5
	scf			;4eb6
	ld c,l			;4eb7
	call c,09e64h		;4eb8
	dec c			;4ebb
	inc sp			;4ebc
	ret c			;4ebd
	or c			;4ebe
	rrca			;4ebf
	xor a			;4ec0
	ld (hl),a		;4ec1
	ld h,(hl)		;4ec2
	ld b,a			;4ec3
	add a,080h		;4ec4
l4ec6h:
	ld (hl),b		;4ec6
	inc de			;4ec7
	ret			;4ec8
	ret nc			;4ec9
	add hl,de		;4eca
	ret z			;4ecb
	ld (ix+000h),a		;4ecc
	ld bc,008c9h		;4ecf
	ld a,c			;4ed2
	sra a			;4ed3
	exx			;4ed5
	ld c,a			;4ed6
	xor b			;4ed7
	ld (hl),074h		;4ed8
	ret nc			;4eda
	call c,025e4h		;4edb
	ld de,019d9h		;4ede
	exx			;4ee1
	sbc a,e			;4ee2
	dec b			;4ee3
	jp nz,l6e9ah+1		;4ee4
	dec l			;4ee7
	dec e			;4ee8
	sla c			;4ee9
	cpl			;4eeb
	inc sp			;4eec
	exx			;4eed
	dec l			;4eee
	inc l			;4eef
l4ef0h:
	dec e			;4ef0
	ex af,af'		;4ef1
	push hl			;4ef2
	ld d,b			;4ef3
	rst 18h			;4ef4
	add a,b			;4ef5
	sbc a,h			;4ef6
	or h			;4ef7
	nop			;4ef8
	xor a			;4ef9
	ld de,0603eh		;4efa
	or a			;4efd
	ret z			;4efe
	exx			;4eff
	dec a			;4f00
	ld a,(bc)		;4f01
	add a,a			;4f02
	ld c,a			;4f03
	ld hl,01eadh		;4f04
	or l			;4f07
	ld (hl),b		;4f08
	ld l,e			;4f09
l4f0ah:
	ld h,d			;4f0a
	ld l,l			;4f0b
	ld c,099h		;4f0c
	inc a			;4f0e
	ld bc,080feh		;4f0f
	jp z,011dch		;4f12
	dec b			;4f15
	cp c			;4f16
	djnz l4f48h		;4f17
	inc a			;4f19
	ld c,a			;4f1a
	pop bc			;4f1b
	dec c			;4f1c
	bit 7,a			;4f1d
	jp nz,l460dh		;4f1f
	call nz,sub_4f80h	;4f22
	inc b			;4f25
	add hl,bc		;4f26
	push hl			;4f27
	exx			;4f28
	pop bc			;4f29
	ld (hl),c		;4f2a
	adc a,h			;4f2b
sub_4f2ch:
	and h			;4f2c
	dec hl			;4f2d
	nop			;4f2e
	xor a			;4f2f
	sbc a,c			;4f30
	dec bc			;4f31
	ld a,(09d48h)		;4f32
	ld b,b			;4f35
	ld hl,03a12h		;4f36
	dec hl			;4f39
	adc a,h			;4f3a
	ret z			;4f3b
	ld (bc),a		;4f3c
	ld a,(0804eh)		;4f3d
	cp b			;4f40
	jp nz,0cb01h		;4f41
	sub 014h		;4f44
	xor h			;4f46
	dec de			;4f47
l4f48h:
	and (hl)		;4f48
	ld h,d			;4f49
	ld a,b			;4f4a
	cp d			;4f4b
	ld (bc),a		;4f4c
	ld hl,08051h		;4f4d
	ld e,a			;4f50
	ld d,0beh		;4f51
	ld l,(hl)		;4f53
	add a,a			;4f54
	rst 0			;4f55
	nop			;4f56
	or c			;4f57
	ld c,c			;4f58
	ret nz			;4f59
	rst 0			;4f5a
	in a,(0b5h)		;4f5b
	ld b,c			;4f5d
	jp 00ee8h		;4f5e
	xor l			;4f61
	jp pe,0243ah		;4f62
	ld c,a			;4f65
	add a,b			;4f66
	push bc			;4f67
	ld l,l			;4f68
	ld e,e			;4f69
	cpl			;4f6a
	ld b,a			;4f6b
	cp h			;4f6c
	jp pe,0f810h		;4f6d
	inc sp			;4f70
	ld e,0b4h		;4f71
	inc sp			;4f73
	add a,b			;4f74
	call 00bcbh		;4f75
	jp l7c97h		;4f78
	inc de			;4f7b
	ret c			;4f7c
	add a,b			;4f7d
	ld h,d			;4f7e
	dec a			;4f7f
sub_4f80h:
	inc h			;4f80
	jp 0e989h		;4f81
	ld b,040h		;4f84
	adc a,c			;4f86
	ld l,e			;4f87
l4f88h:
	sbc a,(hl)		;4f88
	jp (hl)			;4f89
	adc a,e			;4f8a
	ld h,b			;4f8b
	xor a			;4f8c
	ld c,(hl)		;4f8d
	inc hl			;4f8e
	ld h,h			;4f8f
	cp (hl)			;4f90
	ret m			;4f91
	ld (de),a		;4f92
	ld c,b			;4f93
	dec (hl)		;4f94
	add a,c			;4f95
	ld l,a			;4f96
	ret nz			;4f97
	ld b,0cbh		;4f98
	ld h,a			;4f9a
	jp z,04595h		;4f9b
	ld (de),a		;4f9e
	and 0b9h		;4f9f
	ld de,0811ah		;4fa1
	sub b			;4fa4
	ld h,c			;4fa5
	jp c,l6291h		;4fa6
	rlca			;4fa9
	rrca			;4faa
	ld (de),a		;4fab
	jp 010a0h		;4fac
	jr nz,$-109		;4faf
	jp nc,0129fh		;4fb1
	xor a			;4fb4
	and (hl)		;4fb5
	ld bc,03dc1h		;4fb6
	djnz l4f88h		;4fb9
	defb 0fdh,08bh,0bch ;illegal sequence	;4fbb
	push bc			;4fbe
	ld a,(de)		;4fbf
	sub e			;4fc0
	ret nz			;4fc1
	jp z,012cch		;4fc2
	push bc			;4fc5
	push de			;4fc6
	inc l			;4fc7
	inc de			;4fc8
	set 0,c			;4fc9
	sub b			;4fcb
	cp h			;4fcc
	jr z,l4fd2h		;4fcd
	adc a,b			;4fcf
	and 005h		;4fd0
l4fd2h:
	ld c,a			;4fd2
	sub h			;4fd3
	add a,a			;4fd4
	ld bc,009ebh		;4fd5
	ex de,hl		;4fd8
	ld (hl),d		;4fd9
	dec hl			;4fda
	ld (hl),e		;4fdb
l4fdch:
	pop de			;4fdc
	adc a,c			;4fdd
	push hl			;4fde
	dec hl			;4fdf
	inc l			;4fe0
	rra			;4fe1
	in a,(021h)		;4fe2
	sub l			;4fe4
	inc b			;4fe5
	dec (hl)		;4fe6
	jp nz,01326h		;4fe7
	ei			;4fea
	jp c,08a35h		;4feb
	jp pe,0c235h		;4fee
	xor c			;4ff1
	dec (hl)		;4ff2
	push hl			;4ff3
	ld a,c			;4ff4
	ex af,af'		;4ff5
	ld b,(hl)		;4ff6
	ld l,c			;4ff7
	ld h,b			;4ff8
	ld a,(01acah)		;4ff9
	ld (0ee13h),hl		;4ffc
	call m,0f192h		;4fff
	cp d			;5002
	jr nc,$-71		;5003
	defb 0edh ;next byte illegal after ed	;5005
	add hl,bc		;5006
	ld d,d			;5007
	ld c,l			;5008
	ld b,h			;5009
	pop hl			;500a
	and e			;500b
	ld c,d			;500c
	inc a			;500d
	ld a,(0c8f0h)		;500e
	push de			;5011
	jp 037b2h		;5012
	rlca			;5015
	ex af,af'		;5016
	ld h,a			;5017
sub_5018h:
	call z,02308h		;5018
	ld h,d			;501b
	add hl,de		;501c
	jp 0bd01h		;501d
	or l			;5020
	ld de,01f4dh		;5021
	ld hl,0896dh		;5024
	rla			;5027
	add a,b			;5028
	sbc a,b			;5029
	rst 8			;502a
	ret nz			;502b
	inc de			;502c
	cp (hl)			;502d
	jp nz,l4452h		;502e
	call nz,0c944h		;5031
	ld d,h			;5034
	nop			;5035
	inc de			;5036
	dec hl			;5037
	ld a,(de)		;5038
	ld (hl),a		;5039
	ld (bc),a		;503a
	ld a,(de)		;503b
	inc bc			;503c
	ld (bc),a		;503d
	sbc a,d			;503e
	jp (hl)			;503f
	jr c,$+94		;5040
	inc bc			;5042
	cp c			;5043
	call po,0c30eh		;5044
	ld e,e			;5047
	inc de			;5048
	inc bc			;5049
	add hl,bc		;504a
	dec de			;504b
	jp c,l4af8h		;504c
	pop af			;504f
	ld de,01398h		;5050
	push af			;5053
	add a,h			;5054
	ld hl,03877h		;5055
	adc a,d			;5058
	and 038h		;5059
	ld sp,l7501h		;505b
	inc de			;505e
	ld (hl),a		;505f
	sub 004h		;5060
	jp nc,0d47bh		;5062
	sub e			;5065
	ld (bc),a		;5066
	ld h,087h		;5067
	call pe,0ed8bh		;5069
	or c			;506c
	cp d			;506d
	add a,(hl)		;506e
	call 0156dh		;506f
	ret			;5072
	cp d			;5073
	ret nc			;5074
	inc a			;5075
	jp z,013a6h		;5076
	sub d			;5079
	cp c			;507a
	rlca			;507b
	rra			;507c
	jp 013bfh		;507d
	ret z			;5080
	ld h,e			;5081
	rlca			;5082
	ld a,(000eeh)		;5083
	dec a			;5086
	jp m,013b5h		;5087
	call nz,0d9f5h		;508a
	call 00914h		;508d
	ld e,e			;5090
	dec d			;5091
	ret nc			;5092
	ld c,c			;5093
	push de			;5094
	jp nc,00e2bh		;5095
	add a,b			;5098
	ld c,a			;5099
	ld a,(hl)		;509a
	cp c			;509b
	jp c,022ceh		;509c
	inc de			;509f
	ld (hl),c		;50a0
	cp c			;50a1
	nop			;50a2
	rst 30h			;50a3
	jp 01362h		;50a4
	ld hl,01840h		;50a7
	ld b,060h		;50aa
	inc bc			;50ac
	inc d			;50ad
	add a,007h		;50ae
	cp 013h			;50b0
	rrca			;50b2
	jp c,03ce5h		;50b3
	rrca			;50b6
	dec e			;50b7
	ld e,h			;50b8
	call pe,0231dh		;50b9
	ret			;50bc
	ret			;50bd
	ld h,0d1h		;50be
	ld (0988fh),a		;50c0
	ld (hl),h		;50c3
	and c			;50c4
	ld (hl),e		;50c5
	sbc a,a			;50c6
	rst 18h			;50c7
	add a,b			;50c8
	ld a,a			;50c9
	nop			;50ca
	nop			;50cb
	ld e,d			;50cc
	ld e,l			;50cd
	nop			;50ce
l50cfh:
	dec c			;50cf
	sbc a,h			;50d0
	inc c			;50d1
	rst 20h			;50d2
	dec bc			;50d3
	inc a			;50d4
	dec bc			;50d5
	sbc a,e			;50d6
	add hl,bc		;50d7
	ld a,(bc)		;50d8
	ld (bc),a		;50d9
	ld a,(bc)		;50da
	ld (hl),e		;50db
	call p,00880h		;50dc
	ld l,e			;50df
	ex af,af'		;50e0
	jp p,08007h		;50e1
	nop			;50e4
	rlca			;50e5
	inc d			;50e6
	rlca			;50e7
	xor a			;50e8
	ld b,04eh		;50e9
l50ebh:
	ld b,0f4h		;50eb
	nop			;50ed
	dec b			;50ee
	sbc a,(hl)		;50ef
	dec b			;50f0
	ld c,(hl)		;50f1
	dec b			;50f2
	ld bc,0ba05h		;50f3
	inc bc			;50f6
	inc b			;50f7
	halt			;50f8
	inc b			;50f9
	ld (hl),004h		;50fa
	ld sp,hl		;50fc
	jp nc,003c0h		;50fd
	adc a,d			;5100
	inc bc			;5101
	ld d,a			;5102
	nop			;5103
	inc bc			;5104
	daa			;5105
	inc bc			;5106
	jp m,0cf02h		;5107
	ld (bc),a		;510a
	and a			;510b
	nop			;510c
	ld (bc),a		;510d
	add a,c			;510e
	ld (bc),a		;510f
	ld e,l			;5110
	ld (bc),a		;5111
	add hl,sp		;5112
	ld (bc),a		;5113
	dec de			;5114
	nop			;5115
	ld (bc),a		;5116
	defb 0fdh,001h,0e0h ;illegal sequence	;5117
	ld bc,001c5h		;511a
	xor h			;511d
	nop			;511e
	ld bc,00194h		;511f
	ld a,l			;5122
	ld bc,00168h		;5123
	ld d,e			;5126
	nop			;5127
	ld bc,00140h		;5128
	ld l,001h		;512b
	dec e			;512d
	ld bc,0000dh		;512e
	ld bc,000feh		;5131
	ret p			;5134
	nop			;5135
	ex (sp),hl		;5136
	nop			;5137
	sub 000h		;5138
	nop			;513a
	jp z,0be00h		;513b
	nop			;513e
	or h			;513f
	nop			;5140
	xor d			;5141
	nop			;5142
	nop			;5143
	and b			;5144
	nop			;5145
	sub a			;5146
	nop			;5147
	adc a,a			;5148
	nop			;5149
	add a,a			;514a
	nop			;514b
	nop			;514c
	ld a,a			;514d
	nop			;514e
	ld a,b			;514f
	nop			;5150
	ld (hl),c		;5151
	nop			;5152
	ld l,e			;5153
	inc (hl)		;5154
	nop			;5155
	ld h,l			;5156
	xor d			;5157
	nop			;5158
	nop			;5159
	ld e,d			;515a
	nop			;515b
	ld d,l			;515c
	nop			;515d
	ld d,b			;515e
	nop			;515f
	ld c,h			;5160
	nop			;5161
	nop			;5162
	ld b,a			;5163
	nop			;5164
	ld b,e			;5165
	nop			;5166
	ld b,b			;5167
	nop			;5168
	inc a			;5169
	inc b			;516a
	nop			;516b
l516ch:
	add hl,sp		;516c
	nop			;516d
	dec (hl)		;516e
	nop			;516f
	xor l			;5170
	ret nz			;5171
	jr nc,l5174h		;5172
l5174h:
	dec l			;5174
	nop			;5175
	ld hl,(00065h)		;5176
	ret m			;5179
	sub d			;517a
	and b			;517b
	inc h			;517c
	nop			;517d
	ld (00000h),hl		;517e
	jr nz,l5183h		;5181
l5183h:
	ld e,000h		;5183
	inc e			;5185
	nop			;5186
	dec de			;5187
	and b			;5188
	or h			;5189
	nop			;518a
	jr l51ddh		;518b
	nop			;518d
	cp d			;518e
	dec d			;518f
	inc bc			;5190
	nop			;5191
	inc d			;5192
	nop			;5193
	inc de			;5194
	nop			;5195
	ld (de),a		;5196
	xor h			;5197
	ld d,b			;5198
	djnz l519bh		;5199
l519bh:
	cpl			;519b
	rrca			;519c
	nop			;519d
	xor h			;519e
	jr c,l516ch		;519f
	ld d,b			;51a1
	inc a			;51a2
	cp 0c4h			;51a3
	ld (hl),d		;51a5
	dec d			;51a6
	call p,0d776h		;51a7
	ld e,a			;51aa
	rlca			;51ab
	adc a,(hl)		;51ac
	add hl,bc		;51ad
	jp nz,01586h		;51ae
	call p,00da0h		;51b1
	ld hl,09fb0h		;51b4
	ld de,0b86bh		;51b7
	cp e			;51ba
	nop			;51bb
	rlca			;51bc
	out (0a0h),a		;51bd
	ld a,0bfh		;51bf
	rlca			;51c1
	out (0a1h),a		;51c2
	ld (01834h),hl		;51c4
	set 4,h			;51c7
	rst 0			;51c9
	in a,(0b8h)		;51ca
	ld c,b			;51cc
	ld (bc),a		;51cd
	ld b,d			;51ce
	ld (bc),a		;51cf
	ld (hl),018h		;51d0
	sbc a,c			;51d2
	or h			;51d3
	inc sp			;51d4
	ld b,024h		;51d5
	scf			;51d7
	ld (bc),a		;51d8
	inc a			;51d9
	ld (bc),a		;51da
	dec a			;51db
	ld d,b			;51dc
l51ddh:
	jr l5174h		;51dd
	jr c,$-108		;51df
	ld (l6e00h),a		;51e1
	ld a,024h		;51e4
	jp m,l53f5h		;51e6
	ld d,h			;51e9
	ld a,(0ab17h)		;51ea
	dec d			;51ed
	ret nc			;51ee
	dec d			;51ef
	dec d			;51f0
	rlca			;51f1
	or a			;51f2
l51f3h:
	ld b,l			;51f3
	jr nz,l5201h		;51f4
	ld (00bdch),a		;51f6
	rlca			;51f9
	and h			;51fa
	dec bc			;51fb
	ld (hl),047h		;51fc
	ld b,l			;51fe
	sub b			;51ff
	push bc			;5200
l5201h:
	ld d,03ah		;5201
	inc a			;5203
	sbc a,060h		;5204
	jp nz,015f3h		;5206
	sub d			;5209
	ld b,l			;520a
	ld (02a16h),a		;520b
	ld e,e			;520e
	ld b,l			;520f
	ld a,(hl)		;5210
	inc hl			;5211
	add hl,de		;5212
	ld d,0f0h		;5213
	and e			;5215
	rst 0			;5216
	or 0e3h			;5217
	rst 18h			;5219
	rla			;521a
	push de			;521b
	or c			;521c
	cp 007h			;521d
	ld bc,01806h		;521f
	sub 01bh		;5222
	jp z,l5a12h		;5224
	djnz l51f3h		;5227
	add hl,hl		;5229
	ex af,af'		;522a
	ld de,0b8dah		;522b
	jr z,l5247h		;522e
	inc hl			;5230
	jp nz,00e44h		;5231
	call z,sub_7401h	;5234
	ld d,(hl)		;5237
	call m,005b2h		;5238
	jp z,017b4h		;523b
	ld a,(hl)		;523e
	dec hl			;523f
	xor (hl)		;5240
	ret nz			;5241
	jp nz,0172eh		;5242
	bit 6,a			;5245
l5247h:
	ex af,af'		;5247
	jp nz,01758h		;5248
	ld a,c			;524b
	and d			;524c
	sub c			;524d
	ld a,(hl)		;524e
	and c			;524f
	dec bc			;5250
	inc hl			;5251
l5252h:
	inc c			;5252
	ld a,(hl)		;5253
	cp h			;5254
	jp nz,0164dh		;5255
l5258h:
	or c			;5258
	inc (hl)		;5259
	in a,(0a2h)		;525a
	ld d,h			;525c
	or e			;525d
	djnz l5258h		;525e
	rlca			;5260
	ld d,07bh		;5261
	cpl			;5263
	ld e,a			;5264
	ld c,02bh		;5265
	and e			;5267
	ld c,00bh		;5268
	add hl,sp		;526a
	jr z,l529bh		;526b
l526dh:
	sla e			;526d
	ld hl,(015d3h)		;526f
	defb 0ddh,094h ;sub ixh	;5272
	sbc a,h			;5274
	dec de			;5275
	add a,b			;5276
	or 038h			;5277
	ld d,a			;5279
	ld bc,003f7h		;527a
	ld a,(hl)		;527d
	add a,b			;527e
	ld c,d			;527f
	jp z,01682h		;5280
	ld a,d			;5283
	and c			;5284
	ld d,a			;5285
	ret m			;5286
	sub b			;5287
	ccf			;5288
	jp z,09622h		;5289
	ld d,04ah		;528c
	jp nz,l5d7fh		;528e
l5291h:
	adc a,h			;5291
	ld h,d			;5292
	sub d			;5293
	rla			;5294
	di			;5295
	pop hl			;5296
	inc hl			;5297
	cp c			;5298
	ret nc			;5299
	scf			;529a
l529bh:
	rl c			;529b
	adc a,e			;529d
	sbc a,a			;529e
	ld sp,l7a55h		;529f
	ld b,d			;52a2
	inc l			;52a3
	add hl,de		;52a4
	inc (hl)		;52a5
	djnz $+126		;52a6
	rra			;52a8
	rla			;52a9
	adc a,b			;52aa
	cp b			;52ab
	cp h			;52ac
	ld d,01ch		;52ad
	ld d,a			;52af
	ld a,006h		;52b0
	ld d,04bh		;52b2
	add a,025h		;52b4
	push de			;52b6
	ld d,098h		;52b7
	and l			;52b9
	jp p,l4e70h		;52ba
	dec b			;52bd
	cp c			;52be
	jp nc,016d2h		;52bf
	ld (hl),a		;52c2
	push hl			;52c3
	ld h,a			;52c4
	cp l			;52c5
	jp p,089edh		;52c6
	sbc a,e			;52c9
	ld a,(bc)		;52ca
	daa			;52cb
	ld de,l423ah		;52cc
	rst 8			;52cf
	add hl,bc		;52d0
	ld bc,0ebd2h		;52d1
	dec bc			;52d4
	ld bc,01830h		;52d5
	ld a,008h		;52d8
	rrca			;52da
	ld b,b			;52db
	rst 10h			;52dc
	rrca			;52dd
	ei			;52de
	rrca			;52df
	inc l			;52e0
	add hl,bc		;52e1
	rrca			;52e2
	ld l,c			;52e3
	ld b,c			;52e4
	rrca			;52e5
	dec bc			;52e6
	rla			;52e7
	rrca			;52e8
	and h			;52e9
	jp l7ea2h		;52ea
	rra			;52ed
	ld l,h			;52ee
	ld b,a			;52ef
	ld e,l			;52f0
	and (hl)		;52f1
	ld c,b			;52f2
	sub b			;52f3
	add hl,bc		;52f4
	jp l78b4h		;52f5
	ld d,00eh		;52f8
	jr c,$-126		;52fa
	ld c,046h		;52fc
	push de			;52fe
	jp nc,00b51h		;52ff
	ret c			;5302
	ld (hl),03ch		;5303
	ld b,0bah		;5305
	daa			;5307
	push hl			;5308
	adc a,b			;5309
	and e			;530a
	ex de,hl		;530b
	jp 01513h		;530c
	inc de			;530f
	ld a,l			;5310
	dec a			;5311
	inc c			;5312
	ld b,010h		;5313
	ld a,h			;5315
	ld b,0e1h		;5316
	pop de			;5318
	inc hl			;5319
	sub h			;531a
	adc a,d			;531b
	ret m			;531c
	add hl,hl		;531d
	sbc a,a			;531e
	add hl,de		;531f
	ld h,012h		;5320
	push bc			;5322
	xor 020h		;5323
	ld b,a			;5325
	ld a,(ix+000h)		;5326
	daa			;5329
	add a,b			;532a
	pop bc			;532b
	adc a,h			;532c
	ld de,09393h		;532d
	ld a,h			;5330
	and d			;5331
	sub e			;5332
	call pe,09012h		;5333
	pop bc			;5336
	ld c,h			;5337
	jp nc,0af0bh		;5338
	rrca			;533b
	sbc a,h			;533c
	cp e			;533d
	and d			;533e
	and d			;533f
	inc bc			;5340
	sbc a,h			;5341
	or l			;5342
	ld hl,(00b11h)		;5343
	ld b,e			;5346
	sbc a,b			;5347
	ld b,e			;5348
	ret			;5349
	inc c			;534a
	jr c,$+6		;534b
	sub 01dh		;534d
	ld (0f8ddh),a		;534f
	ld h,0c3h		;5352
	set 3,c			;5354
	jp nc,02538h		;5356
	dec l			;5359
	jp nz,09507h		;535a
	and d			;535d
	rlca			;535e
	ld (0ef3ah),hl		;535f
	ld (hl),h		;5362
	ld (0dc39h),a		;5363
	rla			;5366
	ld d,027h		;5367
	cp 0ffh			;5369
	ex de,hl		;536b
	add hl,hl		;536c
	or c			;536d
	ld e,b			;536e
	inc a			;536f
	rlca			;5370
	ld a,(015b6h)		;5371
	ld c,e			;5374
l5375h:
	ld hl,l47c0h		;5375
	jp 015e6h		;5378
	sub 0d9h		;537b
	ret			;537d
	inc a			;537e
	ld h,0b4h		;537f
	ret			;5381
	sbc a,d			;5382
	ld (0e23dh),a		;5383
	ld (0a608h),a		;5386
	ld c,l			;5389
	add hl,bc		;538a
	cp b			;538b
	dec l			;538c
	ld l,e			;538d
	ld hl,(02a3eh)		;538e
	xor d			;5391
	adc a,(hl)		;5392
	add a,033h		;5393
	ld e,0abh		;5395
	nop			;5397
	defb 0cbh,031h ;sli c	;5398
	nop			;539a
	rst 38h			;539b
	jp m,0d77fh		;539c
	ld a,a			;539f
	nop			;53a0
	adc a,l			;53a1
	or (hl)			;53a2
	ret			;53a3
	cp l			;53a4
	and b			;53a5
	jp p,0c3f4h		;53a6
	ld bc,0a8d3h		;53a9
	call 008c3h		;53ac
	ld a,(007f2h)		;53af
	add a,l			;53b2
	ret			;53b3
	di			;53b4
	sbc a,l			;53b5
	ret nz			;53b6
	ret nz			;53b7
	ld bc,03fffh		;53b8
	ld a,005h		;53bb
	ld a,(0b1edh)		;53bd
l53c0h:
	jr nz,$+33		;53c0
	pop bc			;53c2
	add a,b			;53c3
	cp 0f2h			;53c4
	jr nz,$-10		;53c6
	dec hl			;53c8
	add a,b			;53c9
	dec b			;53ca
	ret z			;53cb
	jr c,$-16		;53cc
	cp 0cbh			;53ce
	jr nc,$+10		;53d0
	jp pe,0362bh		;53d2
	in a,(012h)		;53d5
	sub 0c7h		;53d7
	ld hl,(0fcc6h)		;53d9
	xor d			;53dc
	ld h,b			;53dd
	ld (hl),0a6h		;53de
	in a,(0a8h)		;53e0
	and b			;53e2
	di			;53e3
	push af			;53e4
	add hl,de		;53e5
	and 003h		;53e6
	add a,a			;53e8
	nop			;53e9
	call pe,021c8h		;53ea
	nop			;53ed
	ret			;53ee
	call m,0f119h		;53ef
	and 00ch		;53f2
	ld e,a			;53f4
l53f5h:
	add hl,de		;53f5
	add a,b			;53f6
	ld a,(de)		;53f7
	jr nz,l5438h		;53f8
	inc b			;53fa
	ld (0c029h),a		;53fb
	nop			;53fe
	ld a,005h		;53ff
	ld (0c02ah),a		;5401
	call 019adh		;5404
	cp b			;5407
	cp c			;5408
	ld h,0c0h		;5409
	inc c			;540b
	ret			;540c
	in a,(0a8h)		;540d
	ld b,a			;540f
	dec l			;5410
	call nc,sub_4f2ch	;5411
	ld (bc),a		;5414
	or c			;5415
	nop			;5416
	ld c,a			;5417
	ld a,b			;5418
	and 0c3h		;5419
	or c			;541b
	ld (0c046h),a		;541c
	dec bc			;541f
	ld a,(0ffffh)		;5420
	cpl			;5423
	add hl,bc		;5424
	add hl,de		;5425
	add a,(hl)		;5426
	inc c			;5427
	rla			;5428
	cp (hl)			;5429
	or b			;542a
	and d			;542b
	adc a,(hl)		;542c
	ld hl,(00100h)		;542d
	nop			;5430
	sbc a,(hl)		;5431
	ld (bc),a		;5432
	inc bc			;5433
	dec e			;5434
	ld bc,0005dh		;5435
l5438h:
	inc bc			;5438
	pop af			;5439
	nop			;543a
	cp h			;543b
	ld h,b			;543c
	pop bc			;543d
	and 0f8h		;543e
	ld h,b			;5440
	ld c,a			;5441
l5442h:
	dec b			;5442
	inc a			;5443
	and 007h		;5444
	xor b			;5446
	ld c,l			;5447
	ld b,084h		;5448
	pop de			;544a
	exx			;544b
	add hl,de		;544c
	add hl,de		;544d
	add a,090h		;544e
	bit 1,(hl)		;5450
	ld hl,06100h		;5452
	pop bc			;5455
	jp nz,01a40h		;5456
	ld a,(0c39ah)		;5459
	ld bc,0d21fh		;545c
	inc l			;545f
	ld a,(de)		;5460
	dec e			;5461
	dec (hl)		;5462
	dec (hl)		;5463
	ld b,002h		;5464
	inc sp			;5466
	ld a,(de)		;5467
	inc e			;5468
	inc (hl)		;5469
	inc (hl)		;546a
	ld b,011h		;546b
	jr c,l5489h		;546d
	dec d			;546f
	inc b			;5470
	ld e,a			;5471
	ld a,(de)		;5472
	sbc a,c			;5473
	out (05fh),a		;5474
	dec e			;5476
	sub b			;5477
	ld c,e			;5478
	ld a,(de)		;5479
	ld e,0feh		;547a
	push de			;547c
	ld e,053h		;547d
	ld e,01fh		;547f
	pop bc			;5481
	ld e,c			;5482
	ld a,(de)		;5483
	call c,02087h		;5484
	dec e			;5487
	or e			;5488
l5489h:
	ld h,h			;5489
	pop hl			;548a
	add a,d			;548b
	pop bc			;548c
	rst 18h			;548d
	jr c,$+16		;548e
	inc b			;5490
	ret nc			;5491
	jr nc,$+20		;5492
	ld (0c60bh),a		;5494
	ld (bc),a		;5497
	ld (bc),a		;5498
	ld (0c205h),a		;5499
	ld a,(01309h)		;549c
	ld b,b			;549f
	ld (03203h),a		;54a0
	dec c			;54a3
	jp nz,0b77bh		;54a4
	nop			;54a7
	ret z			;54a8
	ld a,(0c200h)		;54a9
	add a,e			;54ac
	cp 018h			;54ad
	ret c			;54af
	ld (bc),a		;54b0
	cp 0c2h			;54b1
	ret nc			;54b3
	ld a,(0c10eh)		;54b4
	call c,0f2e3h		;54b7
	ld a,(de)		;54ba
	add a,b			;54bb
	cpl			;54bc
	sbc a,a			;54bd
	add a,a			;54be
	ld a,(019d8h)		;54bf
	defb 0fdh,089h,032h ;illegal sequence	;54c2
	inc b			;54c5
	jp nz,00c0eh		;54c6
	ld hl,(0c3a0h)		;54c9
	ld (0fe10h),hl		;54cc
	ld d,h			;54cf
	jp c,0fe0ah		;54d0
	add a,(hl)		;54d3
	jp nc,0f240h		;54d4
	ld a,(de)		;54d7
	or 0ffh			;54d8
	add a,e			;54da
	ld b,a			;54db
	sub h			;54dc
	jr nc,$-40		;54dd
	inc bc			;54df
	rrca			;54e0
	ld a,b			;54e1
	sub l			;54e2
	push hl			;54e3
	ld b,032h		;54e4
	ld (de),a		;54e6
	rlca			;54e7
	ld c,e			;54e8
	jp 01b37h		;54e9
	ld h,0c0h		;54ec
	sub 070h		;54ee
	ld b,(hl)		;54f0
	rra			;54f1
	sub 070h		;54f2
	sub e			;54f4
	ld b,0c6h		;54f5
	ld a,b			;54f7
	rst 18h			;54f8
	daa			;54f9
	call p,03271h		;54fa
	xor h			;54fd
	add hl,bc		;54fe
	sub a			;54ff
	ld b,h			;5500
	inc b			;5501
	adc a,a			;5502
	ld d,0a2h		;5503
	ld a,b			;5505
	add a,a			;5506
	inc h			;5507
	ld e,e			;5508
	pop bc			;5509
	ld a,c			;550a
	inc hl			;550b
	inc e			;550c
	ex af,af'		;550d
	adc a,l			;550e
	inc e			;550f
	ld (01208h),a		;5510
	ld c,h			;5513
	dec a			;5514
	ld (de),a		;5515
	inc c			;5516
	dec bc			;5517
	sbc a,l			;5518
	inc bc			;5519
	ret			;551a
	rlca			;551b
	ld (hl),e		;551c
	inc de			;551d
	rra			;551e
	ret z			;551f
	ret			;5520
	ld hl,000a9h		;5521
	jp 00511h		;5524
	nop			;5527
	ld b,006h		;5528
	xor a			;552a
	cp (hl)			;552b
	inc de			;552c
	jr z,l5537h		;552d
l552fh:
	inc hl			;552f
	call 09103h		;5530
	ld (hl),a		;5533
	dec hl			;5534
	dec hl			;5535
	xor a			;5536
l5537h:
	cp (hl)			;5537
	ld h,b			;5538
	jp p,08021h		;5539
	jp nz,01124h		;553c
	rrca			;553f
	ld d,007h		;5540
	ld d,023h		;5542
	inc sp			;5544
	jr z,l554bh		;5545
	dec d			;5547
	inc de			;5548
	inc b			;5549
	push af			;554a
l554bh:
	ld hl,01310h		;554b
	inc b			;554e
	sub e			;554f
	inc de			;5550
	ld a,(bc)		;5551
	rst 38h			;5552
	dec b			;5553
	ld a,(bc)		;5554
	jp c,01b72h		;5555
sub_5558h:
	inc de			;5558
	ld (de),a		;5559
	sub b			;555a
	ld a,000h		;555b
	halt			;555d
	call sub_4501h		;555e
	ld bc,0f13ah		;5561
	pop bc			;5564
	add a,008h		;5565
	out (c),a		;5567
	xor h			;5569
	jr $+81			;556a
	and b			;556c
	ld de,01525h		;556d
	jp 0203eh		;5570
	nop			;5573
	ld (01bdbh),a		;5574
	ld a,(hl)		;5577
	add a,c			;5578
	cp 0d8h			;5579
	jp nz,09b00h		;557b
	dec de			;557e
	inc a			;557f
	ld (de),a		;5580
	inc hl			;5581
	inc de			;5582
	ld a,(hl)		;5583
	add a,b			;5584
	jp c,00304h		;5585
	inc b			;5588
	jr z,l559eh		;5589
	ld a,(0ac18h)		;558b
	and d			;558e
	inc bc			;558f
	jp nz,0a393h		;5590
	jr nz,l55aeh		;5593
	jp 0d7feh		;5595
	ld (bc),a		;5598
	jp nz,01bc4h		;5599
	ld a,0d6h		;559c
l559eh:
	ld (0c209h),a		;559e
	sbc a,d			;55a1
	dec (hl)		;55a2
	ld h,b			;55a3
	ld hl,0d938h		;55a4
	cp (hl)			;55a7
	jp nz,0d234h		;55a8
	dec de			;55ab
	rrca			;55ac
	ld (hl),a		;55ad
l55aeh:
	ld c,0f8h		;55ae
	call c,02b3dh		;55b0
	ret nz			;55b3
	ld (bc),a		;55b4
	ret			;55b5
	jr nz,l55f2h		;55b6
	sbc a,h			;55b8
	add hl,bc		;55b9
	jp 0c2b7h		;55ba
	call p,00627h		;55bd
	ld l,e			;55c0
	ld (de),a		;55c1
	add hl,de		;55c2
	ld a,0cfh		;55c3
	ld b,d			;55c5
	dec c			;55c6
	ld a,(0c1f3h)		;55c7
	rst 28h			;55ca
	inc hl			;55cb
	inc e			;55cc
	ret			;55cd
	push de			;55ce
	ld c,h			;55cf
	djnz $+110		;55d0
	xor a			;55d2
	rrca			;55d3
	inc c			;55d4
	ld (012a8h),a		;55d5
	xor e			;55d8
	inc d			;55d9
	exx			;55da
	ld a,(0bf0bh)		;55db
	sub e			;55de
	sbc a,(hl)		;55df
	add a,b			;55e0
	inc d			;55e1
	ld c,a			;55e2
	cp b			;55e3
	jp c,l442fh		;55e4
	inc e			;55e7
	ret p			;55e8
	jp 08035h		;55e9
	cp c			;55ec
	rlca			;55ed
	ld a,(bc)		;55ee
	dec d			;55ef
	adc a,c			;55f0
	nop			;55f1
l55f2h:
	dec d			;55f2
	ld (de),a		;55f3
	dec d			;55f4
	rrc l			;55f5
	dec d			;55f7
	ld de,0bad9h		;55f8
	nop			;55fb
	inc (hl)		;55fc
	jp nz,00106h		;55fd
	jp 01c55h		;5600
	adc a,h			;5603
	sub 08ah		;5604
	rst 20h			;5606
l5607h:
	cp c			;5607
	jr nc,$+89		;5608
	ld a,(0b4c9h)		;560a
	sub d			;560d
l560eh:
	inc b			;560e
	jr z,l561fh		;560f
	adc a,e			;5611
	inc d			;5612
	ld a,(0c310h)		;5613
	rst 0			;5616
l5617h:
	nop			;5617
	ld de,032c3h		;5618
	ld e,h			;561b
	inc e			;561c
	ld a,(hl)		;561d
	inc hl			;561e
l561fh:
	nop			;561f
	cp d			;5620
	jp c,01c6ch		;5621
	sub 0ffh		;5624
	cp d			;5626
	jp nc,06c4ch		;5627
	dec bc			;562a
	cp e			;562b
	ld a,(bc)		;562c
	ld sp,0bb91h		;562d
	add hl,bc		;5630
	ret			;5631
	add a,016h		;5632
	sbc a,e			;5634
	call nz,0afe4h		;5635
	rst 8			;5638
	adc a,h			;5639
	sbc a,a			;563a
	adc a,009h		;563b
	jr nz,l5607h		;563d
	push af			;563f
	ld h,d			;5640
	sub l			;5641
	jr nc,l564ah		;5642
	pop bc			;5644
	xor h			;5645
	rst 20h			;5646
	ld c,c			;5647
	rlca			;5648
	inc b			;5649
l564ah:
	ld (bc),a		;564a
	sub 001h		;564b
	pop bc			;564d
	ld hl,0c132h		;564e
	ld a,(hl)		;5651
	pop de			;5652
	or e			;5653
	jr z,l5617h		;5654
	and c			;5656
	jr z,l5663h		;5657
	xor a			;5659
	call m,016c3h		;565a
	cp 080h			;565d
	ret m			;565f
	jp 01cb5h		;5660
l5663h:
	adc a,d			;5663
	add hl,de		;5664
	ld c,003h		;5665
	cp a			;5667
	dec c			;5668
	ld e,004h		;5669
	ld a,(bc)		;566b
	inc b			;566c
	ld bc,0010eh		;566d
	ld d,002h		;5670
	ld a,(bc)		;5672
	call 0d919h		;5673
	inc e			;5676
	ld a,c			;5677
	inc bc			;5678
	adc a,h			;5679
	jr c,l560eh		;567a
	sbc a,l			;567c
	xor h			;567d
	ld d,d			;567e
	inc c			;567f
	rst 8			;5680
	add hl,hl		;5681
	inc c			;5682
	sub 066h		;5683
	sbc a,d			;5685
	and d			;5686
	inc bc			;5687
	and (hl)		;5688
	ret z			;5689
	ld b,003h		;568a
	ret			;568c
	ld b,059h		;568d
	ld (bc),a		;568f
	sbc a,06eh		;5690
	ld (l6dfbh),hl		;5692
	ld (de),a		;5695
	jp 00c67h		;5696
	in a,(099h)		;5699
	rra			;569b
	ret c			;569c
	ex af,af'		;569d
	ex af,af'		;569e
	dec a			;569f
	jp nz,01d37h		;56a0
	rst 30h			;56a3
	xor d			;56a4
	rlca			;56a5
	ind			;56a6
	xor a			;56a8
	nop			;56a9
	and d			;56aa
	jp c,01d14h		;56ab
	ld hl,01e4eh		;56ae
	call 08b15h		;56b1
	inc b			;56b4
	ld a,(09705h)		;56b5
	ld h,h			;56b8
	inc b			;56b9
	ld a,(l526dh)		;56ba
	rlca			;56bd
	inc b			;56be
	jp po,03f13h		;56bf
	ld d,086h		;56c2
	ld b,e			;56c4
	ld c,0a4h		;56c5
	ld b,e			;56c7
	ld d,013h		;56c8
	scf			;56ca
	ld (003afh),a		;56cb
	adc a,c			;56ce
	ld e,d			;56cf
	inc de			;56d0
	add hl,sp		;56d1
	inc a			;56d2
	rst 0			;56d3
	inc de			;56d4
	ret			;56d5
	ld b,l			;56d6
	ex af,af'		;56d7
	ld h,c			;56d8
	ld b,l			;56d9
l56dah:
	ld b,b			;56da
	jp nc,l5a4eh		;56db
	ld b,l			;56de
	ld l,h			;56df
	ld l,024h		;56e0
	dec b			;56e2
	sub 02eh		;56e3
	ld l,h			;56e5
	sbc a,e			;56e6
	ld l,070h		;56e7
	rlca			;56e9
	inc b			;56ea
	ld c,(hl)		;56eb
	ld b,l			;56ec
	ld e,l			;56ed
	ld d,01ah		;56ee
	ld h,c			;56f0
	ld c,061h		;56f1
	sbc a,c			;56f3
	ld d,014h		;56f4
	ld b,l			;56f6
	inc bc			;56f7
	ld l,e			;56f8
	ld b,l			;56f9
	inc d			;56fa
	add hl,sp		;56fb
	ld l,d			;56fc
	inc c			;56fd
	inc bc			;56fe
	adc a,b			;56ff
	ld h,b			;5700
	ld l,e			;5701
l5702h:
	ld (01e16h),a		;5702
	ld a,(0033eh)		;5705
	add a,007h		;5708
	ld e,01eh		;570a
	dec b			;570c
	ld hl,02e12h		;570d
	add hl,bc		;5710
	ld d,074h		;5711
	dec bc			;5713
	inc d			;5714
	add a,c			;5715
	dec e			;5716
	jp nz,01d89h		;5717
	dec bc			;571a
	add a,(hl)		;571b
	sub 063h		;571c
	dec bc			;571e
	ld l,l			;571f
	xor h			;5720
	inc de			;5721
	dec (hl)		;5722
	add hl,bc		;5723
	inc hl			;5724
	ex af,af'		;5725
	inc hl			;5726
	xor 0adh		;5727
	sbc a,d			;5729
l572ah:
	ld a,e			;572a
	ld hl,02111h		;572b
	ld l,c			;572e
	jr nc,l5736h		;572f
	ld a,06ch		;5731
	sbc a,c			;5733
	jr l5774h		;5734
l5736h:
	ld b,(hl)		;5736
	jr nc,l5702h		;5737
	ld de,0a33eh		;5739
	add a,086h		;573c
	ld a,0a0h		;573e
	ld h,d			;5740
	jr c,l5781h		;5741
	sbc a,a			;5743
	ld d,h			;5744
	ld l,h			;5745
	inc b			;5746
	ld l,h			;5747
	adc a,a			;5748
	ld d,c			;5749
	cp (hl)			;574a
	add a,07bh		;574b
	add a,d			;574d
	ld a,0c1h		;574e
	sub 00ah		;5750
	jp z,l40c4h		;5752
	push af			;5755
	call 01cf1h		;5756
	ld c,b			;5759
	pop af			;575a
	sub b			;575b
	ld sp,hl		;575c
	sbc a,b			;575d
	ld h,(hl)		;575e
	ld d,l			;575f
	djnz l572ah		;5760
	and h			;5762
	ld c,09ah		;5763
	call nz,0080eh		;5765
	sub h			;5768
	ld b,b			;5769
	add a,a			;576a
	nop			;576b
	rst 20h			;576c
	inc bc			;576d
	ld l,e			;576e
	inc bc			;576f
	nop			;5770
	inc bc			;5771
l5772h:
	ld (bc),a		;5772
	inc c			;5773
l5774h:
	nop			;5774
	add hl,bc		;5775
	in a,(030h)		;5776
	sub b			;5778
	sub e			;5779
	nop			;577a
	nop			;577b
	rst 18h			;577c
	inc bc			;577d
	and e			;577e
	nop			;577f
	inc b			;5780
l5781h:
	ld (bc),a		;5781
	ld d,b			;5782
	ld (hl),000h		;5783
	ld a,(bc)		;5785
	ld c,002h		;5786
	jr c,l5772h		;5788
	inc bc			;578a
	add a,b			;578b
	ld b,00dh		;578c
	ld (bc),a		;578e
	cpl			;578f
	nop			;5790
	ex af,af'		;5791
	ld c,080h		;5792
	ld d,c			;5794
	nop			;5795
	jp po,06c03h		;5796
	nop			;5799
	rlca			;579a
	jp nz,021c6h		;579b
	sub 00eh		;579e
	jr nc,l57ddh		;57a0
	ld l,l			;57a2
	inc l			;57a3
	ld c,03bh		;57a4
	ret nc			;57a6
	ex de,hl		;57a7
	inc bc			;57a8
	and b			;57a9
	ex (sp),hl		;57aa
	xor a			;57ab
	dec e			;57ac
	cp d			;57ad
	inc a			;57ae
	ld c,d			;57af
	ld h,e			;57b0
	dec a			;57b1
	dec sp			;57b2
	ld (bc),a		;57b3
	dec sp			;57b4
	sub d			;57b5
	ld a,(099cah)		;57b6
	ld (hl),b		;57b9
	call 0030bh		;57ba
	rra			;57bd
	call 01fbah		;57be
	ld a,(00ac9h)		;57c1
	inc h			;57c4
	out (0adh),a		;57c5
	dec b			;57c7
	rst 10h			;57c8
	sub d			;57c9
	ld a,(00ecbh)		;57ca
	ld a,h			;57cd
	ld b,0d9h		;57ce
	xor c			;57d0
	ld a,h			;57d1
	ld e,0d3h		;57d2
	ld a,(0cc5ah)		;57d4
	ld a,(bc)		;57d7
	ex af,af'		;57d8
	ld b,02ch		;57d9
	ld a,(hl)		;57db
	or a			;57dc
l57ddh:
	pop de			;57dd
	or b			;57de
	cp d			;57df
	ld sp,hl		;57e0
	ret			;57e1
	ld bc,03c16h		;57e2
	ld (hl),001h		;57e5
	inc hl			;57e7
	ld a,(099c7h)		;57e8
	ld e,h			;57eb
	ld b,c			;57ec
	ld l,a			;57ed
	rrca			;57ee
	ld c,0ffh		;57ef
	add a,d			;57f1
	defb 0ddh,081h,00eh ;illegal sequence	;57f2
	cp 004h			;57f5
	ld bc,00e11h		;57f7
	defb 0fdh,0c3h,0dbh ;illegal sequence	;57fa
	ld e,09fh		;57fd
	ld b,b			;57ff
	sub d			;5800
	jr c,l580ah		;5801
	ld hl,(0020eh)		;5803
	inc b			;5806
	or h			;5807
	ld b,b			;5808
	ld (hl),c		;5809
l580ah:
	inc hl			;580a
	ld a,b			;580b
	ld (hl),a		;580c
	sub l			;580d
	add hl,hl		;580e
	ret z			;580f
	exx			;5810
	rst 0			;5811
	add hl,hl		;5812
	cp c			;5813
	dec b			;5814
	rra			;5815
	add hl,hl		;5816
	rst 28h			;5817
	add a,l			;5818
	ld h,l			;5819
	xor 04ch		;581a
	rra			;581c
	push af			;581d
	ld c,b			;581e
	inc b			;581f
	jp z,08b36h		;5820
	adc a,a			;5823
	ld (hl),l		;5824
	inc b			;5825
	ret z			;5826
	ld hl,08bb8h		;5827
	ld b,b			;582a
	ld a,b			;582b
	jp nz,071cdh		;582c
	rra			;582f
	daa			;5830
	ld hl,008bdh		;5831
	ld a,h			;5834
	ex af,af'		;5835
	add hl,bc		;5836
	jp nz,03008h		;5837
	inc bc			;583a
	ld h,071h		;583b
	rra			;583d
	ld a,h			;583e
	ld hl,(004c4h)		;583f
	ld (00281h),a		;5842
	sub d			;5845
	adc a,b			;5846
	ld (bc),a		;5847
	sub a			;5848
	rra			;5849
	or a			;584a
	sbc a,02bh		;584b
	ld e,l			;584d
	xor (hl)		;584e
	dec hl			;584f
	or (hl)			;5850
	or e			;5851
	dec hl			;5852
	ret			;5853
	dec (hl)		;5854
	ret z			;5855
	jr nc,$-102		;5856
	and e			;5858
	adc a,h			;5859
	ld (de),a		;585a
	inc bc			;585b
	ld de,01213h		;585c
	ret			;585f
	rst 0			;5860
	add a,h			;5861
l5862h:
	jp p,00423h		;5862
	jp p,08016h		;5865
	rra			;5868
	add a,0c6h		;5869
	ex af,af'		;586b
	add a,d			;586c
	rra			;586d
	sub 0cch		;586e
	add a,b			;5870
	add a,(hl)		;5871
	ld (hl),a		;5872
	ld (de),a		;5873
	cp 0fch			;5874
	jr nc,l58adh		;5876
	add hl,hl		;5878
	inc de			;5879
	dec d			;587a
	sub (hl)		;587b
	dec d			;587c
	xor (hl)		;587d
	sbc a,b			;587e
	dec d			;587f
	ret nz			;5880
	ld (de),a		;5881
	jr c,l588eh		;5882
	cp 0ddh			;5884
	jr nc,$+3		;5886
	ld b,0e5h		;5888
	call 0015eh		;588a
	pop hl			;588d
l588eh:
	ret nc			;588e
	pop hl			;588f
	add a,a			;5890
	xor l			;5891
	ld a,(de)		;5892
	inc bc			;5893
	ret			;5894
	jp pe,09906h		;5895
	push af			;5898
	ld b,0b5h		;5899
	ld a,h			;589b
	ld de,l4f0ah		;589c
	cp d			;589f
	sub d			;58a0
	and l			;58a1
	jr z,$-31		;58a2
	ld (hl),e		;58a4
	or c			;58a5
	adc a,b			;58a6
	call 0aeeeh		;58a7
l58aah:
	defb 0ddh,005h,089h ;illegal sequence	;58aa
l58adh:
	and a			;58ad
	jp 08e05h		;58ae
	xor c			;58b1
	dec bc			;58b2
	inc e			;58b3
	xor (hl)		;58b4
	dec b			;58b5
	ld b,l			;58b6
	sub c			;58b7
	ld h,c			;58b8
	inc hl			;58b9
	ret z			;58ba
	add a,l			;58bb
	inc c			;58bc
	cp b			;58bd
	ret nc			;58be
	or 00ch			;58bf
	cp b			;58c1
	ret c			;58c2
	ex af,af'		;58c3
	dec h			;58c4
	cp c			;58c5
	ret nc			;58c6
	dec sp			;58c7
	cp c			;58c8
	sbc a,b			;58c9
sub_58cah:
	add a,c			;58ca
	rst 8			;58cb
	jp 0c0a7h		;58cc
	ld d,h			;58cf
	ret z			;58d0
	ld a,048h		;58d1
	ld (00c98h),a		;58d3
	ret			;58d6
	pop bc			;58d7
	sbc a,c			;58d8
	sbc a,h			;58d9
	nop			;58da
	ld hl,(0c19ah)		;58db
	ld b,e			;58de
	otir			;58df
	dec d			;58e1
	ld d,0c2h		;58e2
	add hl,de		;58e4
	jr nz,l58aah		;58e5
	nop			;58e7
l58e8h:
	ld (0c19ch),hl		;58e8
	ld (0c19eh),de		;58eb
	ld h,b			;58ef
	push bc			;58f0
	ld d,0ebh		;58f1
	ld bc,04498h		;58f3
	nop			;58f6
	ld d,0fbh		;58f7
	ld hl,(02411h)		;58f9
	call nc,05b15h		;58fc
	dec d			;58ff
l5900h:
	inc d			;5900
	ret nc			;5901
	ld a,(de)		;5902
	pop bc			;5903
	djnz l58e8h		;5904
	ret			;5906
	nop			;5907
	cp 0a0h			;5908
	jp z,02099h		;590a
	cp 0b0h			;590d
	jp z,08602h		;590f
	inc hl			;5912
	cp 090h			;5913
	jp z,004ech		;5915
	dec c			;5918
	add a,b			;5919
	jp z,0242ch		;591a
	rst 30h			;591d
	adc a,b			;591e
	jp z,00475h		;591f
	ret po			;5922
	jp z,l5442h		;5923
	inc b			;5926
	ret nz			;5927
	jp z,01d79h		;5928
	nop			;592b
	ret p			;592c
	jp z,0225ch		;592d
	cp 070h			;5930
	jp z,02ff9h		;5932
	jr nz,l5900h		;5935
	jp m,00595h		;5937
	jp m,080f7h		;593a
	exx			;593d
	sub h			;593e
	rla			;593f
	cp 020h			;5940
	cp 020h			;5942
	ret c			;5944
	rlca			;5945
	ld a,0e0h		;5946
	ld (0c1a4h),a		;5948
	rra			;594b
	ret nz			;594c
	ld e,c			;594d
	ld d,h			;594e
	pop bc			;594f
	sbc a,l			;5950
	or h			;5951
	di			;5952
	sub e			;5953
	or h			;5954
	ld h,h			;5955
	and a			;5956
	dec bc			;5957
	ld d,0eah		;5958
	xor h			;595a
	rst 38h			;595b
	xor l			;595c
	xor a			;595d
	rst 0			;595e
	push de			;595f
	rrca			;5960
	ld d,d			;5961
	adc a,c			;5962
	jr $-40			;5963
	djnz l58e8h		;5965
	xor h			;5967
	nop			;5968
	pop bc			;5969
	call 0de9dh		;596a
	sub h			;596d
	push bc			;596e
	and 0beh		;596f
	ex af,af'		;5971
	ex de,hl		;5972
	dec e			;5973
	nop			;5974
l5975h:
	ld (0d6dbh),a		;5975
	dec d			;5978
	jp 03851h		;5979
	dec c			;597c
	ex (sp),hl		;597d
	dec hl			;597e
	ld e,a			;597f
	rst 18h			;5980
	ld c,00ah		;5981
	ld d,d			;5983
	pop bc			;5984
	add a,c			;5985
	sbc a,d			;5986
	ld d,c			;5987
	and b			;5988
	dec h			;5989
	ccf			;598a
	ld (bc),a		;598b
	ld c,a			;598c
	ld (bc),a		;598d
	defb 0ddh,095h ;sub ixl	;598e
	xor e			;5990
	sub d			;5991
	ld (bc),a		;5992
	jr l5997h		;5993
	ld c,b			;5995
	inc l			;5996
l5997h:
	ld d,(hl)		;5997
	or a			;5998
	ld l,d			;5999
	ld (0a053h),a		;599a
	add hl,sp		;599d
	ld (bc),a		;599e
	or a			;599f
	ld hl,021ach		;59a0
	inc l			;59a3
	jp z,0f337h		;59a4
	ld (de),a		;59a7
	call pe,02221h		;59a8
	sbc a,l			;59ab
	inc bc			;59ac
	ld de,00120h		;59ad
	ld hl,086a0h		;59b0
	inc hl			;59b3
	inc d			;59b4
	jr nz,l59cfh		;59b5
	add a,h			;59b7
	call z,sub_5018h	;59b8
	adc a,(hl)		;59bb
	jr l59cah		;59bc
	ld (08c18h),hl		;59be
	nop			;59c1
	ld a,d			;59c2
	jr $+50			;59c3
	ld a,034h		;59c5
	and l			;59c7
	add a,d			;59c8
	ld b,b			;59c9
l59cah:
	ld a,(de)		;59ca
	jp nz,l403eh		;59cb
	xor l			;59ce
l59cfh:
	jr z,$+9		;59cf
	ld l,0c2h		;59d1
	ld a,(de)		;59d3
	ld hl,l4933h		;59d4
	ld e,030h		;59d7
	adc a,h			;59d9
	ld e,040h		;59da
	ld (hl),h		;59dc
	ld e,038h		;59dd
	ld hl,00e43h		;59df
	ld c,l			;59e2
	djnz $+16		;59e3
	or b			;59e5
	ld c,0cbh		;59e6
	add a,(hl)		;59e8
	rst 38h			;59e9
	or b			;59ea
	and (hl)		;59eb
	ld hl,03a31h		;59ec
	ld e,b			;59ef
	ld b,0a0h		;59f0
	ld b,024h		;59f2
	ld a,08ah		;59f4
	daa			;59f6
	ld c,c			;59f7
	jp nc,03e0eh		;59f8
	call 0a8c9h		;59fb
	adc a,h			;59fe
	ld b,(hl)		;59ff
	sub b			;5a00
	dec b			;5a01
	jp c,l78b4h		;5a02
	nop			;5a05
	rlca			;5a06
	ld sp,0ceceh		;5a07
	ld sp,0980fh		;5a0a
	adc a,h			;5a0d
	ld (hl),e		;5a0e
	ld (hl),e		;5a0f
	ld a,h			;5a10
	adc a,h			;5a11
l5a12h:
	inc de			;5a12
	ld l,a			;5a13
	nop			;5a14
	nop			;5a15
	sbc a,h			;5a16
	rst 38h			;5a17
	rst 38h			;5a18
	push af			;5a19
	ld c,0e5h		;5a1a
	ld de,023ffh		;5a1c
	push af			;5a1f
	ld sp,hl		;5a20
	nop			;5a21
	sbc a,(hl)		;5a22
	dec bc			;5a23
	ld c,005h		;5a24
	ccf			;5a26
	rra			;5a27
	inc a			;5a28
	jp nz,0a2fbh		;5a29
	ld d,b			;5a2c
	exx			;5a2d
	ld d,b			;5a2e
	ld a,099h		;5a2f
	halt			;5a31
	ld de,03e22h		;5a32
	ld (hl),b		;5a35
	call 0af89h		;5a36
	ret pe			;5a39
	ld e,c			;5a3a
	jp p,0f125h		;5a3b
	ld h,l			;5a3e
	ex de,hl		;5a3f
	defb 0cbh,032h ;sli d	;5a40
	inc e			;5a42
	ld c,a			;5a43
	add a,(hl)		;5a44
	ld (de),a		;5a45
	sub 022h		;5a46
	rst 18h			;5a48
	and 021h		;5a49
	ld c,e			;5a4b
	or 0d5h			;5a4c
l5a4eh:
	and b			;5a4e
	ld hl,02356h		;5a4f
	sub (hl)		;5a52
	or (hl)			;5a53
	and l			;5a54
	push bc			;5a55
	sub e			;5a56
	ld h,(hl)		;5a57
	inc hl			;5a58
	dec e			;5a59
	and (hl)		;5a5a
	ld d,b			;5a5b
	ld c,092h		;5a5c
	ld a,044h		;5a5e
	di			;5a60
	sub d			;5a61
	xor c			;5a62
	sbc a,b			;5a63
	pop hl			;5a64
	nop			;5a65
	dec (hl)		;5a66
	ld a,d			;5a67
	rst 30h			;5a68
	cp 0cdh			;5a69
	rst 28h			;5a6b
	defb 0fdh,011h,07ah ;illegal sequence	;5a6c
	djnz l5a75h		;5a6f
	sub c			;5a71
	adc a,0b5h		;5a72
	ld b,b			;5a74
l5a75h:
	ret nz			;5a75
	jp m,0ecf7h		;5a76
	add a,b			;5a79
	jr c,l5a7ch		;5a7a
l5a7ch:
	ld b,b			;5a7c
	dec c			;5a7d
	ret nz			;5a7e
	rra			;5a7f
	ld e,d			;5a80
	sub a			;5a81
	cp e			;5a82
l5a83h:
	jp nz,0d73ch		;5a83
	adc a,l			;5a86
	rra			;5a87
	add a,a			;5a88
	ld b,b			;5a89
	ld a,(01f57h)		;5a8a
	add a,(hl)		;5a8d
	rrca			;5a8e
	nop			;5a8f
	ld (bc),a		;5a90
	ld a,c			;5a91
	jp p,0cff5h		;5a92
	ld h,c			;5a95
	ex af,af'		;5a96
	adc a,a			;5a97
	out (01eh),a		;5a98
	ccf			;5a9a
	ld a,e			;5a9b
	nop			;5a9c
	add a,a			;5a9d
	rra			;5a9e
	ld e,c			;5a9f
	sub e			;5aa0
	or (hl)			;5aa1
	rra			;5aa2
	and a			;5aa3
	ccf			;5aa4
	ld a,000h		;5aa5
	ld hl,00e09h		;5aa7
	dec bc			;5aaa
	add hl,bc		;5aab
	add hl,bc		;5aac
	rrc (hl)		;5aad
	nop			;5aaf
	exx			;5ab0
	ld c,e			;5ab1
	nop			;5ab2
	defb 0edh ;next byte illegal after ed	;5ab3
	adc a,h			;5ab4
	ld e,(hl)		;5ab5
	call p,0c2b8h		;5ab6
	ld d,0bbh		;5ab9
	sbc a,b			;5abb
	and h			;5abc
	add hl,de		;5abd
	and a			;5abe
	ld d,a			;5abf
	xor a			;5ac0
	sub c			;5ac1
	or h			;5ac2
	or a			;5ac3
	or d			;5ac4
	ld a,015h		;5ac5
	ret z			;5ac7
	ld (00a11h),a		;5ac8
	and c			;5acb
	rst 18h			;5acc
	push af			;5acd
	ld c,h			;5ace
	ld (bc),a		;5acf
	dec l			;5ad0
	jp p,0b00ah		;5ad1
	inc h			;5ad4
	pop bc			;5ad5
	ld h,b			;5ad6
	exx			;5ad7
	inc hl			;5ad8
	add hl,hl		;5ad9
	ld a,0f0h		;5ada
	xor h			;5adc
	ld h,l			;5add
	out (c),c		;5ade
	jp z,00ce6h		;5ae0
	ld (hl),b		;5ae3
	cp a			;5ae4
	ld c,(hl)		;5ae5
	ccf			;5ae6
	ld h,l			;5ae7
	ld c,h			;5ae8
	adc a,h			;5ae9
	pop af			;5aea
	ld h,b			;5aeb
	push hl			;5aec
	rrca			;5aed
	add a,073h		;5aee
	ld (hl),e		;5af0
	ld h,a			;5af1
	add a,d			;5af2
	ld e,e			;5af3
	ld e,(hl)		;5af4
l5af5h:
	sub (hl)		;5af5
	or d			;5af6
	pop af			;5af7
	inc h			;5af8
	ld b,b			;5af9
	rra			;5afa
	ld b,c			;5afb
	rst 10h			;5afc
	rst 0			;5afd
	ld e,d			;5afe
	pop bc			;5aff
	or h			;5b00
	set 1,b			;5b01
	adc a,c			;5b03
	push bc			;5b04
	and l			;5b05
	ld h,d			;5b06
	sub a			;5b07
	ex de,hl		;5b08
	daa			;5b09
	jp nc,0f706h		;5b0a
	ld a,h			;5b0d
	rla			;5b0e
	ld d,l			;5b0f
	xor (hl)		;5b10
	nop			;5b11
	cp 04fh			;5b12
	jp z,0244fh		;5b14
	ld (0df55h),a		;5b17
	djnz l5b3ch		;5b1a
	adc a,c			;5b1c
	ld a,020h		;5b1d
	add a,c			;5b1f
	ld c,e			;5b20
	jp nz,0249eh		;5b21
	ld sp,hl		;5b24
	ld a,b			;5b25
	xor c			;5b26
	cp l			;5b27
	defb 0ddh,098h,04eh ;illegal sequence	;5b28
	ret nz			;5b2b
	ld a,(bc)		;5b2c
	and a			;5b2d
	adc a,l			;5b2e
	ld c,(hl)		;5b2f
	ld (l653eh),a		;5b30
	call p,044eah		;5b33
	ld c,a			;5b36
	call z,0fbc0h		;5b37
	sbc a,a			;5b3a
	inc b			;5b3b
l5b3ch:
	ld l,l			;5b3c
	sub a			;5b3d
	ld b,04ah		;5b3e
	jp nc,0cee6h		;5b40
	ld (bc),a		;5b43
	add hl,hl		;5b44
	jp nc,004dch		;5b45
	djnz l5b5fh		;5b48
	jp nc,004d2h		;5b4a
	ld a,(bc)		;5b4d
	jp nc,045c8h		;5b4e
	inc h			;5b51
	xor 0b0h		;5b52
	inc d			;5b54
	xor 040h		;5b55
	rst 30h			;5b57
	inc h			;5b58
	jp 025a1h		;5b59
	ret po			;5b5c
	add hl,bc		;5b5d
	inc h			;5b5e
l5b5fh:
	dec h			;5b5f
	add hl,sp		;5b60
	jp 009cfh		;5b61
	ld c,d			;5b64
	ld d,c			;5b65
	add hl,bc		;5b66
	add iy,bc		;5b67
	call nc,02fd6h		;5b69
	pop hl			;5b6c
	djnz l5bedh		;5b6d
	djnz l5b82h		;5b6f
	dec hl			;5b71
	ld h,0e0h		;5b72
	and d			;5b74
	ld hl,0264fh		;5b75
	add a,0fdh		;5b78
	ld (01223h),a		;5b7a
	ld bc,0ca27h		;5b7d
	rla			;5b80
	dec h			;5b81
l5b82h:
	ld hl,0277fh		;5b82
	pop hl			;5b85
	ld c,h			;5b86
	add hl,hl		;5b87
	inc bc			;5b88
	pop hl			;5b89
	sub a			;5b8a
	ret			;5b8b
	inc l			;5b8c
	rrca			;5b8d
	ld l,a			;5b8e
	inc l			;5b8f
	add a,l			;5b90
l5b91h:
	ld e,a			;5b91
	inc l			;5b92
	daa			;5b93
	ld b,h			;5b94
	inc l			;5b95
	adc a,a			;5b96
	inc l			;5b97
	call nz,0f88fh		;5b98
	inc l			;5b9b
	ld d,d			;5b9c
	ld l,a			;5b9d
	inc l			;5b9e
	ld (hl),c		;5b9f
	inc l			;5ba0
	ld a,h			;5ba1
	sbc a,a			;5ba2
	inc l			;5ba3
	ld c,a			;5ba4
	xor a			;5ba5
	inc l			;5ba6
l5ba7h:
	ld b,c			;5ba7
	ld hl,0281fh		;5ba8
	ld (080e9h),hl		;5bab
	ld c,h			;5bae
	rra			;5baf
	ld hl,l50cfh		;5bb0
	ld a,(bc)		;5bb3
	xor a			;5bb4
	ld d,b			;5bb5
	ld b,a			;5bb6
	jp nz,0df50h		;5bb7
	daa			;5bba
	dec l			;5bbb
	call nz,0f8efh		;5bbc
	dec l			;5bbf
	ld d,c			;5bc0
	cp a			;5bc1
	dec l			;5bc2
	ret p			;5bc3
	dec h			;5bc4
	jr l5c43h		;5bc5
	dec l			;5bc7
	ld h,a			;5bc8
	rrca			;5bc9
	daa			;5bca
	dec l			;5bcb
	ret nz			;5bcc
	rst 8			;5bcd
	add a,e			;5bce
	dec l			;5bcf
	ld e,026h		;5bd0
	ld hl,02dffh		;5bd2
	ex (sp),hl		;5bd5
	ld a,d			;5bd6
	cpl			;5bd7
	dec l			;5bd8
	ld d,c			;5bd9
	inc a			;5bda
	xor l			;5bdb
	ex de,hl		;5bdc
	xor 05ch		;5bdd
	or e			;5bdf
	inc a			;5be0
	nop			;5be1
	adc a,h			;5be2
	inc e			;5be3
	defb 0fdh,00fh,081h ;illegal sequence	;5be4
	jr c,l5c65h		;5be7
	add a,07ch		;5be9
	jr c,$+17		;5beb
l5bedh:
	call p,01c80h		;5bed
	ld a,063h		;5bf0
	pop bc			;5bf2
	ld h,e			;5bf3
	ld a,01ch		;5bf4
	ld sp,hl		;5bf6
	rrca			;5bf7
	add a,b			;5bf8
	inc bc			;5bf9
	rrca			;5bfa
	ld e,038h		;5bfb
	jr nc,l5c6fh		;5bfd
	ld bc,07060h		;5bff
	jr nc,l5c3ch		;5c02
l5c04h:
	ld e,00fh		;5c04
	inc bc			;5c06
	sub h			;5c07
	ld a,d			;5c08
	ret p			;5c09
	nop			;5c0a
	ld a,b			;5c0b
	inc e			;5c0c
	inc c			;5c0d
	ld c,006h		;5c0e
	ld c,00ch		;5c10
	inc e			;5c12
	inc e			;5c13
	ld a,b			;5c14
	ret p			;5c15
	ret nz			;5c16
	ld hl,0171ch		;5c17
	ld bc,01d06h		;5c1a
	ld bc,03117h		;5c1d
	nop			;5c20
	add a,b			;5c21
	ret po			;5c22
	ld (hl),b		;5c23
	ld a,b			;5c24
	jr c,$+122		;5c25
	ld (hl),b		;5c27
	ld e,a			;5c28
	ret po			;5c29
	sbc a,d			;5c2a
	jr nz,l5c5ch		;5c2b
	inc bc			;5c2d
	dec d			;5c2e
	nop			;5c2f
	dec b			;5c30
	cp h			;5c31
	sbc a,e			;5c32
	dec bc			;5c33
	nop			;5c34
	dec d			;5c35
	inc bc			;5c36
	cpl			;5c37
	push de			;5c38
	call po,0f0e0h		;5c39
l5c3ch:
	ld bc,l78f8h		;5c3c
	ld a,b			;5c3f
	ret m			;5c40
	ret p			;5c41
	ret po			;5c42
l5c43h:
	ret nz			;5c43
	ld e,0dbh		;5c44
	ld bc,08e3eh		;5c46
	jr nz,l5c04h		;5c49
	ld e,0ech		;5c4b
	jr nz,l5c9eh		;5c4d
	ld bc,0131bh		;5c4f
	nop			;5c52
	ld a,(bc)		;5c53
	ld e,0b4h		;5c54
	add a,b			;5c56
l5c57h:
	ld (bc),a		;5c57
	nop			;5c58
	inc de			;5c59
	jr z,l5c5dh		;5c5a
l5c5ch:
	ld c,a			;5c5c
l5c5dh:
	ld e,e			;5c5d
	ld a,(hl)		;5c5e
	call m,05c1ch		;5c5f
	cp (hl)			;5c62
	pop de			;5c63
	cp (hl)			;5c64
l5c65h:
	jr z,$+30		;5c65
	call m,sub_627fh	;5c67
	jr nz,l5c96h		;5c6a
	ld h,(hl)		;5c6c
	dec hl			;5c6d
	nop			;5c6e
l5c6fh:
	inc b			;5c6f
	ld (hl),d		;5c70
	rlca			;5c71
l5c72h:
	jr nz,l5c57h		;5c72
	ld h,c			;5c74
	dec bc			;5c75
	ld d,c			;5c76
	ld hl,(0e3dfh)		;5c77
	ld a,(de)		;5c7a
	rst 0			;5c7b
	djnz $-97		;5c7c
	ld (hl),h		;5c7e
	ld c,03dh		;5c7f
	cpl			;5c81
	ld c,01eh		;5c82
	ld l,00fh		;5c84
	ld l,c			;5c86
	cpl			;5c87
	dec c			;5c88
	dec hl			;5c89
	ld de,01078h		;5c8a
	adc a,(hl)		;5c8d
	inc l			;5c8e
	dec l			;5c8f
	dec hl			;5c90
	ld bc,02c1dh		;5c91
	dec c			;5c94
	ld l,(hl)		;5c95
l5c96h:
	inc c			;5c96
	rrca			;5c97
l5c98h:
	ret p			;5c98
	djnz $+46		;5c99
	cp e			;5c9b
	dec b			;5c9c
	rrca			;5c9d
l5c9eh:
	adc a,00ah		;5c9e
	ccf			;5ca0
	ret m			;5ca1
	ld bc,02f75h		;5ca2
	dec c			;5ca5
	inc c			;5ca6
	cp e			;5ca7
	rrca			;5ca8
	djnz l5c72h		;5ca9
	ld c,05dh		;5cab
	djnz l5c5dh		;5cad
	cpl			;5caf
	rrca			;5cb0
	ld l,038h		;5cb1
	cpl			;5cb3
	ld e,h			;5cb4
	ld l,00dh		;5cb5
	ld a,l			;5cb7
	cp b			;5cb8
	ld l,015h		;5cb9
	ret nc			;5cbb
	ld b,c			;5cbc
	ld a,(0c1f2h)		;5cbd
	and 000h		;5cc0
	ld bc,03ac8h		;5cc2
	inc a			;5cc5
	ld hl,(0c2b7h)		;5cc6
	dec a			;5cc9
	nop			;5cca
	ld hl,(085cdh)		;5ccb
	add hl,hl		;5cce
	call 029bfh		;5ccf
	ret c			;5cd2
	ld d,0cdh		;5cd3
	ld b,a			;5cd5
l5cd6h:
	jr z,l5cd6h		;5cd6
	jr z,$+78		;5cd8
	or l			;5cda
	adc a,a			;5cdb
	ld d,04bh		;5cdc
	pop bc			;5cde
	rst 28h			;5cdf
	add a,b			;5ce0
	jp nc,0286ah		;5ce1
	cp 012h			;5ce4
	jp c,00488h		;5ce6
	ld a,(00cf1h)		;5ce9
	rlca			;5cec
	jp z,03234h		;5ced
	add hl,hl		;5cf0
	rlca			;5cf1
	ld b,0cah		;5cf2
	ld d,l			;5cf4
	adc a,e			;5cf5
	ld (l50ebh),hl		;5cf6
	inc hl			;5cf9
	daa			;5cfa
	ld c,d			;5cfb
	pop bc			;5cfc
	sub 000h		;5cfd
	ld (de),a		;5cff
l5d00h:
	cp c			;5d00
	ret nc			;5d01
	add a,024h		;5d02
	cp c			;5d04
	ret c			;5d05
	ld c,(hl)		;5d06
	adc a,02eh		;5d07
	dec bc			;5d09
	ret			;5d0a
	pop af			;5d0b
	jp 00030h		;5d0c
	and d			;5d0f
	ld h,b			;5d10
	pop bc			;5d11
	ld a,(hl)		;5d12
	or a			;5d13
	ld bc,l4e23h		;5d14
	inc hl			;5d17
	call nz,0286fh		;5d18
	inc hl			;5d1b
	ex af,af'		;5d1c
	jp m,l5c98h		;5d1d
	cp 076h			;5d20
	rst 28h			;5d22
	ld a,a			;5d23
	ld (06d31h),a		;5d24
	ld hl,(0c660h)		;5d27
	ex de,hl		;5d2a
	jp p,0076bh		;5d2b
	inc e			;5d2e
	pop hl			;5d2f
	di			;5d30
	and 098h		;5d31
	rlca			;5d33
	ld bc,0efcah		;5d34
	jr z,l5d00h		;5d37
	jp nz,02a63h		;5d39
	xor 0c6h		;5d3c
	and c			;5d3e
	ld l,(hl)		;5d3f
	ld hl,(0ba11h)		;5d40
	ld b,e			;5d43
	ld b,070h		;5d44
	sub b			;5d46
	jp z,0290ch		;5d47
	add hl,de		;5d4a
	ld b,b			;5d4b
	ld a,b			;5d4c
	ld h,047h		;5d4d
	jp 028ffh		;5d4f
	call 09818h		;5d52
	ld hl,(l4377h)		;5d55
	inc hl			;5d58
	xor b			;5d59
	inc b			;5d5a
	jr c,l5d61h		;5d5b
	ld a,b			;5d5d
	ld (06f10h),a		;5d5e
l5d61h:
	ld hl,(03c21h)		;5d61
	call 0048bh		;5d64
	ld c,l			;5d67
	ld a,(0d605h)		;5d68
	ld b,a			;5d6b
	or h			;5d6c
	add a,b			;5d6d
	ld b,(hl)		;5d6e
	adc a,d			;5d6f
	jp pe,00351h		;5d70
	jp pe,l5d91h		;5d73
	ld (l5862h),a		;5d76
	dec h			;5d79
	ld l,e			;5d7a
	dec b			;5d7b
	ld h,b			;5d7c
	dec b			;5d7d
	ld (bc),a		;5d7e
l5d7fh:
	dec de			;5d7f
	and 0feh		;5d80
	rlca			;5d82
	ld h,(hl)		;5d83
	ret nz			;5d84
	nop			;5d85
	jp nz,06257h		;5d86
	add hl,hl		;5d89
	jr z,l5defh		;5d8a
	dec sp			;5d8c
	ld l,h			;5d8d
	ld e,h			;5d8e
	dec sp			;5d8f
	push af			;5d90
l5d91h:
	ld l,(hl)		;5d91
	dec (hl)		;5d92
	ld h,b			;5d93
	inc hl			;5d94
	cp 0b4h			;5d95
	ret c			;5d97
	xor b			;5d98
	dec sp			;5d99
	ld b,091h		;5d9a
	call z,08e2ah		;5d9c
	add a,(hl)		;5d9f
	dec sp			;5da0
	inc hl			;5da1
	adc a,h			;5da2
	ld d,0cfh		;5da3
	jp 080d9h		;5da5
	ld hl,0c183h		;5da8
	ld b,007h		;5dab
	ld a,(00148h)		;5dad
	ld a,03ah		;5db0
	ld b,d			;5db2
	ld e,a			;5db3
	ld a,(0f601h)		;5db4
	rst 38h			;5db7
	add a,e			;5db8
	ld e,a			;5db9
	call 029a4h		;5dba
	call p,01020h		;5dbd
	ld sp,hl		;5dc0
	ret			;5dc1
	inc b			;5dc2
	ld c,d			;5dc3
	ld a,(hl)		;5dc4
	dec hl			;5dc5
	sub 00eh		;5dc6
	xor b			;5dc8
	and d			;5dc9
	jr $-86			;5dca
	ld b,b			;5dcc
	ld c,e			;5dcd
	ld a,(hl)		;5dce
l5dcfh:
	sub 00ch		;5dcf
	push bc			;5dd1
	add hl,bc		;5dd2
	inc d			;5dd3
	add hl,bc		;5dd4
	sbc a,(hl)		;5dd5
	djnz $-64		;5dd6
	add hl,hl		;5dd8
	ret			;5dd9
	adc a,b			;5dda
	jp nz,0c170h		;5ddb
	adc a,l			;5dde
	jp z,037a1h		;5ddf
	inc c			;5de2
	dec a			;5de3
	jp z,0c9d2h		;5de4
	ld d,02dh		;5de7
	dec c			;5de9
	ld a,b			;5dea
	xor 007h		;5deb
	nop			;5ded
	inc h			;5dee
l5defh:
	ld (l657ah),a		;5def
	pop af			;5df2
	ret po			;5df3
	add a,b			;5df4
	rlca			;5df5
	ret z			;5df6
	dec a			;5df7
	ret z			;5df8
	ld a,(hl)		;5df9
	ld (de),a		;5dfa
	ld (02a80h),a		;5dfb
	and h			;5dfe
	jr nc,$+73		;5dff
	ld c,0c6h		;5e01
	add hl,bc		;5e03
	ld bc,00fe6h		;5e04
	add a,b			;5e07
	sub 00fh		;5e08
	ld (0937eh),a		;5e0a
	ld l,004h		;5e0d
	inc bc			;5e0f
	ld hl,(08393h)		;5e10
	add a,c			;5e13
	ld hl,(l4cafh)		;5e14
	ex af,af'		;5e17
	ld (hl),a		;5e18
	dec hl			;5e19
	ld bc,0367eh		;5e1a
	rla			;5e1d
	nop			;5e1e
	call 0d44bh		;5e1f
	ld d,c			;5e22
	ld a,(0b4f5h)		;5e23
	ld d,0a3h		;5e26
	ld h,d			;5e28
	add a,c			;5e29
	add hl,hl		;5e2a
	ld b,(hl)		;5e2b
	ld a,(hl)		;5e2c
	or e			;5e2d
	pop bc			;5e2e
	inc b			;5e2f
	cp 028h			;5e30
	jp nc,08234h		;5e32
	dec hl			;5e35
	ei			;5e36
	scf			;5e37
	rra			;5e38
	ld hl,(l7d37h)		;5e39
	ld (hl),051h		;5e3c
	inc a			;5e3e
	ld e,05bh		;5e3f
	ld (0128fh),a		;5e41
l5e44h:
	jr c,l5dcfh		;5e44
	ld (0906bh),a		;5e46
	ld (00d90h),a		;5e49
	and b			;5e4c
	ret			;5e4d
	ld (hl),b		;5e4e
	nop			;5e4f
	pop af			;5e50
	ld a,e			;5e51
	inc bc			;5e52
	exx			;5e53
	inc l			;5e54
	rrca			;5e55
	dec b			;5e56
	ld d,a			;5e57
	sbc a,b			;5e58
	cp l			;5e59
	dec h			;5e5a
	ret p			;5e5b
	inc bc			;5e5c
	ld c,001h		;5e5d
	ld c,l			;5e5f
	nop			;5e60
	ret nc			;5e61
	ld a,(bc)		;5e62
	cpl			;5e63
	ld h,h			;5e64
	nop			;5e65
	ld bc,00b0eh		;5e66
	pop de			;5e69
	ld c,(hl)		;5e6a
	inc l			;5e6b
	inc hl			;5e6c
	ld bc,00199h		;5e6d
	rst 20h			;5e70
	ld h,a			;5e71
	and e			;5e72
	sub e			;5e73
	jr nz,l5e7ch		;5e74
	jp nz,08ca2h		;5e76
	sbc a,d			;5e79
	add a,h			;5e7a
	add hl,bc		;5e7b
l5e7ch:
	ld de,0c1a4h		;5e7c
	adc a,l			;5e7f
	add a,h			;5e80
	ld a,(de)		;5e81
	ld (092ach),a		;5e82
	xor c			;5e85
	ret			;5e86
	ld a,(0e761h)		;5e87
	jr nc,$-105		;5e8a
	dec a			;5e8c
	jr nc,l5ec7h		;5e8d
	ld (bc),a		;5e8f
	add a,0bch		;5e90
	pop bc			;5e92
	add hl,bc		;5e93
	xor d			;5e94
	jp c,096cbh		;5e95
	djnz l5e44h		;5e98
	jp 089d2h		;5e9a
	and b			;5e9d
	add a,d			;5e9e
	adc a,l			;5e9f
	call nz,08209h		;5ea0
	ret nc			;5ea3
	inc de			;5ea4
	and b			;5ea5
	jr nc,$+39		;5ea6
	cp 000h			;5ea8
	adc a,h			;5eaa
	jr c,l5eb0h		;5eab
	jp 02b1ch		;5ead
l5eb0h:
	ld a,(09d62h)		;5eb0
	dec c			;5eb3
	rst 38h			;5eb4
	sbc a,h			;5eb5
	rrca			;5eb6
	ex af,af'		;5eb7
	ld (0ca02h),a		;5eb8
	ex af,af'		;5ebb
	inc c			;5ebc
	ld (02150h),a		;5ebd
	nop			;5ec0
	ret z			;5ec1
	and a			;5ec2
	ld b,l			;5ec3
	ld bc,03e01h		;5ec4
l5ec7h:
	rst 38h			;5ec7
	ld hl,048e3h		;5ec8
	jp 01d34h		;5ecb
	jp nz,01d01h		;5ece
	ld l,e			;5ed1
	djnz l5ef1h		;5ed2
	inc d			;5ed4
	dec e			;5ed5
	rst 0			;5ed6
	call c,00323h		;5ed7
	ld c,c			;5eda
	dec e			;5edb
	sbc a,c			;5edc
	jp (hl)			;5edd
	sbc a,d			;5ede
	xor a			;5edf
	dec de			;5ee0
	inc b			;5ee1
	ret p			;5ee2
	dec de			;5ee3
	inc b			;5ee4
	xor a			;5ee5
	ld hl,048c3h		;5ee6
	ld (00e17h),a		;5ee9
	ld bc,0cd98h		;5eec
	ld a,l			;5eef
	dec hl			;5ef0
l5ef1h:
	ret			;5ef1
	outi			;5ef2
	ld bc,0eafdh		;5ef4
	ei			;5ef7
	adc a,a			;5ef8
	ld b,d			;5ef9
	ld a,(bc)		;5efa
	jp nz,041a6h		;5efb
	inc l			;5efe
	jr nz,l5f03h		;5eff
	sbc a,(hl)		;5f01
	and d			;5f02
l5f03h:
	ld (00009h),a		;5f03
	ld (0c20eh),a		;5f06
	ld b,a			;5f09
	and 003h		;5f0a
	ret nz			;5f0c
	ld a,b			;5f0d
	nop			;5f0e
	add a,a			;5f0f
	add a,a			;5f10
	sub 050h		;5f11
	ld d,000h		;5f13
	ld e,a			;5f15
	ld hl,02046h		;5f16
	or b			;5f19
	call nz,047e8h		;5f1a
	ld b,l			;5f1d
	add hl,de		;5f1e
	xor l			;5f1f
	ld c,c			;5f20
	rst 30h			;5f21
	adc a,a			;5f22
	ld e,030h		;5f23
	add hl,de		;5f25
	ld l,h			;5f26
	jp nz,09a02h		;5f27
	jp 010e6h		;5f2a
	jr nz,l5f37h		;5f2d
	sub c			;5f2f
	ld b,l			;5f30
	inc d			;5f31
	jp nc,l644bh		;5f32
	set 1,d			;5f35
l5f37h:
	ld b,0bdh		;5f37
	jp 02c6ch		;5f39
	sbc a,e			;5f3c
	call p,sub_58cah	;5f3d
	and (hl)		;5f40
	ld b,011h		;5f41
	inc a			;5f43
	sbc a,d			;5f44
	jr l5f5eh		;5f45
	ret nz			;5f47
	exx			;5f48
	rra			;5f49
	inc e			;5f4a
	ld b,(hl)		;5f4b
	sub b			;5f4c
	adc a,e			;5f4d
	inc de			;5f4e
	xor a			;5f4f
	inc bc			;5f50
	inc de			;5f51
	nop			;5f52
	ld (0c117h),a		;5f53
	call 02129h		;5f56
	inc sp			;5f59
	jp nz,00b2fh		;5f5a
	adc a,c			;5f5d
l5f5eh:
	pop de			;5f5e
	jp nz,02ca6h		;5f5f
	jp nc,0cafah		;5f62
	ld c,h			;5f65
	sbc a,e			;5f66
	ld b,051h		;5f67
	dec c			;5f69
	ld (02cbeh),a		;5f6a
	add hl,de		;5f6d
	ex af,af'		;5f6e
	and c			;5f6f
	jp nc,02c2eh		;5f70
	nop			;5f73
	dec a			;5f74
	ld l,032h		;5f75
	dec sp			;5f77
	ld l,021h		;5f78
	add hl,de		;5f7a
	or b			;5f7b
	sub b			;5f7c
	inc bc			;5f7d
	call 0dd89h		;5f7e
	jp l6519h		;5f81
	ld a,(bc)		;5f84
	xor c			;5f85
	ret nz			;5f86
	call z,02d07h		;5f87
	ld hl,0e91bh		;5f8a
	rlca			;5f8d
	dec e			;5f8e
	rlca			;5f8f
	rst 8			;5f90
	ld a,e			;5f91
	add hl,bc		;5f92
	rst 8			;5f93
	ccf			;5f94
	ld h,l			;5f95
	ld a,e			;5f96
	push bc			;5f97
	dec b			;5f98
	sbc a,d			;5f99
	ld b,e			;5f9a
	ld d,076h		;5f9b
	ld bc,0283dh		;5f9d
	dec d			;5fa0
	ld a,(0075bh)		;5fa1
	ld b,c			;5fa4
	ld c,(hl)		;5fa5
	jp nz,02ce1h		;5fa6
	inc a			;5fa9
	ld (hl),h		;5faa
	sbc a,(hl)		;5fab
	jp nc,l484ch		;5fac
	ld (bc),a		;5faf
	ld c,b			;5fb0
	jp po,0cd14h		;5fb1
	ld h,c			;5fb4
	or 02ch			;5fb5
	dec a			;5fb7
	inc d			;5fb8
	xor h			;5fb9
	inc hl			;5fba
	inc d			;5fbb
l5fbch:
	add a,b			;5fbc
	ld b,h			;5fbd
	jr z,$+7		;5fbe
	inc hl			;5fc0
	inc hl			;5fc1
	djnz l5fbch		;5fc2
	call pe,036dbh		;5fc4
	ld (hl),a		;5fc7
	ld de,004d9h		;5fc8
	add hl,de		;5fcb
	ld a,(hl)		;5fcc
	sbc hl,de		;5fcd
	inc hl			;5fcf
	ex af,af'		;5fd0
	ld a,(de)		;5fd1
	ld c,(hl)		;5fd2
	pop bc			;5fd3
	ld b,029h		;5fd4
	out (08bh),a		;5fd6
	jp nz,08919h		;5fd8
	jp z,017e3h		;5fdb
	ld c,a			;5fde
	sub e			;5fdf
l5fe0h:
	sub (hl)		;5fe0
	cp e			;5fe1
	jr nz,l5ffbh		;5fe2
	ld a,(00616h)		;5fe4
	jr z,$+11		;5fe7
	inc b			;5fe9
	dec a			;5fea
	ld d,0fdh		;5feb
	ld a,0eeh		;5fed
	xor 080h		;5fef
	neg			;5ff1
	add a,c			;5ff3
	ld (hl),a		;5ff4
	inc hl			;5ff5
	ld de,08278h		;5ff6
	ld (hl),a		;5ff9
	cp a			;5ffa
l5ffbh:
	xor h			;5ffb
	jr nz,l5fe0h		;5ffc
	sbc a,b			;5ffe
	ld c,a			;5fff
	dec b			;6000
	ld (hl),08dh		;6001
	jp nc,02822h		;6003
	rrca			;6006
	cp e			;6007
	inc hl			;6008
	ex af,af'		;6009
	pop bc			;600a
	rst 0			;600b
	ld a,(de)		;600c
	rlca			;600d
	inc b			;600e
	ld b,08ch		;600f
	jp p,00dc7h		;6011
	nop			;6014
	dec c			;6015
	add a,(hl)		;6016
	ld b,l			;6017
	or l			;6018
	ret nz			;6019
	ld (de),a		;601a
	inc bc			;601b
	ld (de),a		;601c
	ret po			;601d
	defb 0edh ;next byte illegal after ed	;601e
	ld e,h			;601f
	ld e,a			;6020
	sub c			;6021
	ret z			;6022
	pop hl			;6023
	inc (hl)		;6024
	ld (bc),a		;6025
	inc de			;6026
	ret po			;6027
	ld a,(bc)		;6028
	ld de,0c8fch		;6029
	nop			;602c
	ld bc,01200h		;602d
	ld b,0c8h		;6030
	ld a,(de)		;6032
	call m,0d708h		;6033
	ld b,022h		;6036
	ld b,02dh		;6038
	ld hl,(01c06h)		;603a
	ld bc,0324eh		;603d
	dec c			;6040
	cp b			;6041
	ld a,(0390dh)		;6042
	ld d,b			;6045
	ld b,d			;6046
	dec c			;6047
	ld c,h			;6048
	ld c,d			;6049
	ld b,0fch		;604a
	ld b,072h		;604c
	ld d,d			;604e
	ld b,05ah		;604f
	call nz,00806h		;6051
	ld b,062h		;6054
	push hl			;6056
	ld b,06ah		;6057
	ld b,0a3h		;6059
	ld bc,0726eh		;605b
	dec c			;605e
	sub a			;605f
	ld a,d			;6060
	dec c			;6061
	inc bc			;6062
	or b			;6063
	ld bc,0e74ch		;6064
	or c			;6067
	ld d,d			;6068
	ret m			;6069
	ld l,b			;606a
	ld bc,003c6h		;606b
	ld (bc),a		;606e
	dec bc			;606f
	ld sp,0036ch		;6070
	or d			;6073
	dec bc			;6074
	adc a,h			;6075
	inc bc			;6076
	inc bc			;6077
	ld b,h			;6078
	inc b			;6079
	dec e			;607a
	ld bc,01d4dh		;607b
	ld bc,l5375h		;607e
	push hl			;6081
	rra			;6082
	inc d			;6083
	ld bc,01f51h		;6084
	dec e			;6087
	ld bc,06d41h		;6088
	dec e			;608b
	ld bc,001b3h		;608c
	ld l,a			;608f
	rra			;6090
	ld e,l			;6091
	dec e			;6092
	adc a,(hl)		;6093
sub_6094h:
	pop hl			;6094
	or e			;6095
	jr l60feh		;6096
	cp c			;6098
	and c			;6099
	ld b,0b8h		;609a
	add a,b			;609c
	rst 20h			;609d
	ld sp,0b511h		;609e
	ld e,d			;60a1
	dec b			;60a2
	ld a,(bc)		;60a3
	dec b			;60a4
	jp 0050ch		;60a5
	ld d,e			;60a8
	ld a,(l4cc6h)		;60a9
	and b			;60ac
	and c			;60ad
	dec b			;60ae
	cpl			;60af
	ld a,(02e3ah)		;60b0
	add a,082h		;60b3
	ret nc			;60b5
	inc b			;60b6
	ld (0c211h),a		;60b7
	call nc,sub_43c9h	;60ba
	dec d			;60bd
	inc b			;60be
	jr nc,$+52		;60bf
	add hl,de		;60c1
	add hl,bc		;60c2
	ld b,d			;60c3
	dec l			;60c4
	jp nz,03e3ah		;60c5
	inc d			;60c8
	sub d			;60c9
	jp (hl)			;60ca
	cp e			;60cb
	ld c,c			;60cc
	dec b			;60cd
	inc d			;60ce
	dec b			;60cf
	inc h			;60d0
	ld b,b			;60d1
	dec b			;60d2
	jr l60dah		;60d3
	ld b,c			;60d5
	sub l			;60d6
	dec b			;60d7
	inc l			;60d8
	dec b			;60d9
l60dah:
	add a,d			;60da
	inc de			;60db
	cp d			;60dc
	ld c,d			;60dd
	inc bc			;60de
	ld a,(0268dh)		;60df
	xor h			;60e2
	add a,d			;60e3
	inc bc			;60e4
	cp 000h			;60e5
	jp z,004dbh		;60e7
	ld a,(bc)		;60ea
	rst 38h			;60eb
	jp nz,02f04h		;60ec
	cp a			;60ef
	inc b			;60f0
	ld c,c			;60f1
	ld (l6e9ah),hl		;60f2
	jr nc,$-85		;60f5
	rst 10h			;60f7
	ld b,b			;60f8
	defb 0ddh,053h,014h ;illegal sequence	;60f9
	xor d			;60fc
	daa			;60fd
l60feh:
	ld b,e			;60fe
	ld c,009h		;60ff
	djnz l6111h		;6101
	or b			;6103
	ld c,0b2h		;6104
	ret z			;6106
	ld d,d			;6107
	ret nz			;6108
	ld e,c			;6109
	dec (hl)		;610a
	and l			;610b
	xor (hl)		;610c
	ld l,0f0h		;610d
	ld c,h			;610f
	ld e,e			;6110
l6111h:
	call z,sub_5558h	;6111
	ld l,(hl)		;6114
	ld b,c			;6115
	ld h,h			;6116
	ld h,c			;6117
	ld h,(hl)		;6118
	ld e,(hl)		;6119
	ld e,e			;611a
	ld b,a			;611b
	adc a,b			;611c
	ld sp,09186h		;611d
	add a,h			;6120
	sub c			;6121
	add a,d			;6122
	adc a,h			;6123
	ret			;6124
	ld l,e			;6125
	ld e,d			;6126
	add a,a			;6127
	xor a			;6128
	inc de			;6129
	ld a,(09d53h)		;612a
	ld d,b			;612d
	ret pe			;612e
	ld l,022h		;612f
	jp nz,l6418h		;6131
	ei			;6134
	dec l			;6135
	adc a,d			;6136
	adc a,d			;6137
	rst 0			;6138
	ld b,c			;6139
	jp z,02f81h		;613a
	or a			;613d
	and e			;613e
	cp 0a4h			;613f
	ld b,b			;6141
	ld l,l			;6142
	cpl			;6143
	cp 002h			;6144
	jr nz,$-52		;6146
	ld e,c			;6148
	inc b			;6149
	inc bc			;614a
	jp z,02f45h		;614b
	and e			;614e
	ld d,l			;614f
	sbc a,a			;6150
	add a,c			;6151
	ld hl,0762ch		;6152
	call c,0a669h		;6155
	cp b			;6158
	ei			;6159
	ld (098d3h),a		;615a
	ld l,c			;615d
	cp c			;615e
	jr c,$+63		;615f
	ld hl,01318h		;6161
	inc hl			;6164
	out (083h),a		;6165
	ld hl,01314h		;6167
	jp nc,038edh		;616a
	inc a			;616d
	ld hl,01310h		;616e
	sub e			;6171
	inc hl			;6172
	ld a,c			;6173
	ld e,(hl)		;6174
	jp c,01911h		;6175
	rst 30h			;6178
	adc a,d			;6179
	adc a,c			;617a
	and e			;617b
	rrca			;617c
	add a,h			;617d
	ld b,l			;617e
	jp z,02f99h		;617f
	call pe,00c96h		;6182
	dec e			;6185
	adc a,0e2h		;6186
	ld b,(hl)		;6188
	defb 0fdh,002h,010h ;illegal sequence	;6189
	jp z,03087h		;618c
	ld a,(0cc37h)		;618f
	rst 28h			;6192
	ld c,b			;6193
	sbc a,a			;6194
	jp z,0b611h		;6195
	rlca			;6198
	ret nz			;6199
	djnz $-94		;619a
	cpl			;619c
	ld de,0cd02h		;619d
	ld e,(hl)		;61a0
	ld bc,0da38h		;61a1
	rst 20h			;61a4
	djnz l6222h		;61a5
	ld (de),a		;61a7
	djnz $+5		;61a8
	cp 0c8h			;61aa
	jp c,03004h		;61ac
	add hl,sp		;61af
	ld l,d			;61b0
	cp d			;61b1
	xor d			;61b2
	rrca			;61b3
	ld (hl),l		;61b4
	ld a,(l5291h)		;61b5
	adc a,c			;61b8
	ld l,h			;61b9
	ld b,d			;61ba
	adc a,h			;61bb
	add a,b			;61bc
	cp d			;61bd
	or (hl)			;61be
	dec b			;61bf
	ld d,d			;61c0
	ccf			;61c1
	dec b			;61c2
	adc a,c			;61c3
	adc a,d			;61c4
	ld b,b			;61c5
	dec b			;61c6
	adc a,h			;61c7
l61c8h:
	ld d,c			;61c8
	ld b,c			;61c9
	call po,sub_472ah	;61ca
	ld b,087h		;61cd
	ld c,a			;61cf
	add a,a			;61d0
	add a,c			;61d1
	add a,b			;61d2
	or h			;61d3
	ld hl,(0fa8dh)		;61d4
	ld hl,(0c4f0h)		;61d7
l61dah:
	add a,(hl)		;61da
	and b			;61db
	xor h			;61dc
	and (hl)		;61dd
	sub e			;61de
	xor h			;61df
	call pe,03023h		;61e0
	push hl			;61e3
	inc hl			;61e4
	nop			;61e5
	call 02d6eh		;61e6
	jr nc,$-29		;61e9
	sbc a,c			;61eb
	inc l			;61ec
	ld (01a4eh),hl		;61ed
	add hl,sp		;61f0
	ld l,023h		;61f1
	ld a,(bc)		;61f3
	jp nc,l4a2fh		;61f4
	jr nc,l61dah		;61f7
	dec l			;61f9
	rra			;61fa
	dec bc			;61fb
	ld (l56dah),a		;61fc
	dec bc			;61ff
	ld e,l			;6200
	push hl			;6201
	rla			;6202
	ld h,d			;6203
	dec bc			;6204
	sub e			;6205
	call z,sub_6094h	;6206
	call z,003d1h		;6209
	inc hl			;620c
	ret			;620d
	call nc,0f02bh		;620e
	ld e,068h		;6211
	adc a,(hl)		;6213
	jp po,03e88h		;6214
	adc a,e			;6217
	rst 20h			;6218
	jp c,l5ba7h		;6219
	cp h			;621c
l621dh:
	xor l			;621d
	ld c,l			;621e
	ld d,e			;621f
	sbc a,e			;6220
	dec sp			;6221
l6222h:
	add a,0a9h		;6222
l6224h:
	daa			;6224
	inc d			;6225
	xor b			;6226
	ld h,e			;6227
	di			;6228
	ld d,c			;6229
	ld b,0f3h		;622a
	ret p			;622c
	sub c			;622d
	pop de			;622e
	jr nc,l6224h		;622f
	defb 0edh ;next byte illegal after ed	;6231
	djnz l61c8h		;6232
	ret po			;6234
	and b			;6235
	cp 0d2h			;6236
	jp c,030f3h		;6238
	adc a,a			;623b
	jp (hl)			;623c
	or (hl)			;623d
	add a,a			;623e
	cp (hl)			;623f
	add a,b			;6240
	ret			;6241
	call 03395h		;6242
	adc a,086h		;6245
	ld d,042h		;6247
	inc h			;6249
	call nc,0ae28h		;624a
	ld sp,0113eh		;624d
l6250h:
	jr c,l6284h		;6250
	ld d,033h		;6252
	ld a,(de)		;6254
	jp nz,l7aa1h		;6255
	sub 025h		;6258
	ex af,af'		;625a
	ld b,a			;625b
	push de			;625c
	ld b,c			;625d
	add a,d			;625e
	ld a,01eh		;625f
	jp c,01835h		;6261
	ld b,00ah		;6264
	ld (0316fh),a		;6266
	ld h,c			;6269
	dec hl			;626a
	add a,b			;626b
	or d			;626c
	ld h,e			;626d
l626eh:
	adc a,b			;626e
	inc b			;626f
	inc b			;6270
	jp nc,01349h		;6271
	add a,d			;6274
	adc a,04dh		;6275
	inc de			;6277
	inc e			;6278
	jr $+21			;6279
	add hl,bc		;627b
	jr nz,l6250h		;627c
	ld e,l			;627e
sub_627fh:
	inc de			;627f
	and b			;6280
	ld e,h			;6281
	sbc a,d			;6282
	and h			;6283
l6284h:
	and d			;6284
	jp nz,0316eh		;6285
	sbc a,l			;6288
	ld d,a			;6289
	ld a,(de)		;628a
	ld c,h			;628b
	xor l			;628c
	ld sp,0a2a8h		;628d
	ret			;6290
l6291h:
	or l			;6291
	dec b			;6292
	ld c,(hl)		;6293
	sub b			;6294
	add a,l			;6295
	add hl,de		;6296
	sub e			;6297
	ret c			;6298
l6299h:
	sub 02dh		;6299
	ld (0c0afh),a		;629b
	ld h,(hl)		;629e
	jp (hl)			;629f
	or l			;62a0
	xor (hl)		;62a1
	dec a			;62a2
	ld h,e			;62a3
	pop bc			;62a4
	ret nz			;62a5
	rra			;62a6
	ld h,e			;62a7
	dec c			;62a8
	jr nz,l626eh		;62a9
	call nz,sub_7831h	;62ab
	nop			;62ae
	add hl,hl		;62af
	sbc a,h			;62b0
	ld de,00502h		;62b1
	inc (hl)		;62b4
	inc b			;62b5
	dec b			;62b6
	ld a,006h		;62b7
	bit 0,h			;62b9
	add a,(hl)		;62bb
	ei			;62bc
	ld a,(de)		;62bd
	ret			;62be
	ret nz			;62bf
	sub l			;62c0
	pop de			;62c1
	or c			;62c2
	jp c,036c2h		;62c3
	add a,b			;62c6
	ld c,d			;62c7
	add hl,hl		;62c8
	sub h			;62c9
	inc l			;62ca
	ld b,0ebh		;62cb
	ld e,a			;62cd
	ld a,(bc)		;62ce
	ex af,af'		;62cf
	ld a,034h		;62d0
	call pe,03ec2h		;62d2
	ld b,b			;62d5
	xor 039h		;62d6
	daa			;62d8
	ld bc,0bb47h		;62d9
	ld de,0dd3ch		;62dc
	xor b			;62df
	ld bc,088c9h		;62e0
	inc de			;62e3
	add a,b			;62e4
	exx			;62e5
	defb 0ddh,00fh,077h ;illegal sequence	;62e6
	jr l62fah		;62e9
	push de			;62eb
	add hl,de		;62ec
	ex de,hl		;62ed
	sbc a,c			;62ee
	sub e			;62ef
	ld d,a			;62f0
	ld b,a			;62f1
	ld (02106h),a		;62f2
	rst 0			;62f5
	inc h			;62f6
	ld a,e			;62f7
	adc a,c			;62f8
	ld h,h			;62f9
l62fah:
	ld de,08581h		;62fa
l62fdh:
	ld a,(de)		;62fd
	cp e			;62fe
	jp nc,0166ah		;62ff
	add hl,sp		;6302
	ld (03d93h),a		;6303
	ld a,(bc)		;6306
	ld c,h			;6307
	ld h,h			;6308
	ld d,a			;6309
	jp po,0053dh		;630a
	ld c,002h		;630d
	ld a,e			;630f
	jp 01adfh		;6310
	adc a,b			;6313
	jr c,l6299h		;6314
	ret nz			;6316
	ld b,h			;6317
	cp 0fah			;6318
	jp c,0d97ch		;631a
	rla			;631d
	ld b,l			;631e
	ld c,e			;631f
	ld d,0a3h		;6320
	ld c,a			;6322
	ld a,005h		;6323
	dec b			;6325
	ld d,04bh		;6326
	rst 20h			;6328
	dec c			;6329
	sla e			;632a
	ld hl,045f2h		;632c
	ld e,a			;632f
	jp (hl)			;6330
	sbc a,h			;6331
	sub a			;6332
	ld e,e			;6333
	ld b,c			;6334
	xor c			;6335
	and b			;6336
	ld b,016h		;6337
	jr nc,l62fdh		;6339
	cp d			;633b
	ld l,b			;633c
	ld (0c3eah),a		;633d
	xor h			;6340
	inc b			;6341
	ld sp,hl		;6342
	ld l,016h		;6343
	inc l			;6345
	ld a,d			;6346
	ld d,05dh		;6347
	jp m,00116h		;6349
	add a,(hl)		;634c
	ld (hl),a		;634d
	cp 014h			;634e
	jp c,01af1h		;6350
	ld (de),a		;6353
	and 0d2h		;6354
	inc b			;6356
	inc hl			;6357
	adc a,c			;6358
	inc (hl)		;6359
	jp z,086d1h		;635a
	rlca			;635d
	ld (hl),d		;635e
	dec hl			;635f
	ld a,e			;6360
	adc a,d			;6361
	rlc l			;6362
	ld a,(01152h)		;6364
	dec a			;6367
	add hl,hl		;6368
	jr nz,$+14		;6369
	inc h			;636b
	adc a,l			;636c
	djnz l6393h		;636d
	ld h,b			;636f
	call nc,0c524h		;6370
	call 01c5fh		;6373
	ld bc,0d0c1h		;6376
	push de			;6379
	and b			;637a
	nop			;637b
	add hl,bc		;637c
	ld (hl),b		;637d
	sla c			;637e
	ret nz			;6380
	ld l,l			;6381
	add hl,bc		;6382
	ld (hl),006h		;6383
	ret			;6385
l6386h:
	call 000c2h		;6386
	jr nc,l63a3h		;6389
	dec a			;638b
	defb 0edh ;next byte illegal after ed	;638c
	defb 0edh ;next byte illegal after ed	;638d
	dec a			;638e
	jr $+50			;638f
	ld a,b			;6391
	nop			;6392
l6393h:
	nop			;6393
	rlca			;6394
	ld a,b			;6395
	ld a,(hl)		;6396
	ld a,(hl)		;6397
	ld a,b			;6398
	add hl,bc		;6399
	add hl,sp		;639a
	sub h			;639b
	halt			;639c
	ret z			;639d
	sub l			;639e
	ld b,h			;639f
	pop bc			;63a0
	sbc a,(hl)		;63a1
	add a,(hl)		;63a2
l63a3h:
	scf			;63a3
	jp nz,03004h		;63a4
	ld b,c			;63a7
	ld l,b			;63a8
	ld b,e			;63a9
	inc sp			;63aa
l63abh:
	call nz,0e985h		;63ab
	jp 0be42h		;63ae
	dec h			;63b1
	sub c			;63b2
	ret nc			;63b3
	inc b			;63b4
	ld hl,l79e0h		;63b5
	cp l			;63b8
	adc a,09eh		;63b9
	ex af,af'		;63bb
	or a			;63bc
	ex de,hl		;63bd
	nop			;63be
	ld b,c			;63bf
	jp z,03356h		;63c0
	ld hl,03301h		;63c3
	ret p			;63c6
	ret p			;63c7
	call sub_447dh		;63c8
	dec hl			;63cb
	inc hl			;63cc
	ld l,h			;63cd
	pop bc			;63ce
	or l			;63cf
	add a,h			;63d0
	ld l,c			;63d1
	pop bc			;63d2
	ret po			;63d3
	ld b,l			;63d4
	ld (02c6ah),a		;63d5
	cp e			;63d8
	ex (sp),hl		;63d9
	rra			;63da
	or 060h			;63db
	jp nc,03372h		;63dd
	cpl			;63e0
	inc b			;63e1
	ld (0c16bh),a		;63e2
	rlca			;63e5
	ld c,a			;63e6
	ret nc			;63e7
	and h			;63e8
	xor h			;63e9
	adc a,c			;63ea
	inc (hl)		;63eb
	ret nc			;63ec
	ld h,e			;63ed
	adc a,e			;63ee
	add a,l			;63ef
	dec (hl)		;63f0
	sbc a,(hl)		;63f1
	call pe,0325ch		;63f2
	ld de,03649h		;63f5
	ld a,02fh		;63f8
	ld (hl),0c2h		;63fa
	sub d			;63fc
	ld d,069h		;63fd
	sub 073h		;63ff
	ld d,b			;6401
	push af			;6402
	jr nz,l6444h		;6403
	inc (hl)		;6405
	ld a,(016afh)		;6406
	sub a			;6409
	ld bc,02ffeh		;640a
	jp z,033b2h		;640d
	add a,b			;6410
	adc a,c			;6411
	inc c			;6412
	jr nz,l6436h		;6413
	ld (bc),a		;6415
	add hl,de		;6416
	ld b,(hl)		;6417
l6418h:
	inc hl			;6418
	ld c,(hl)		;6419
	ld d,h			;641a
	ld a,(04135h)		;641b
	inc bc			;641e
	cp 028h			;641f
	rrca			;6421
	jp c,0de47h		;6422
	push bc			;6425
	ld (l4e27h),a		;6426
	jr nc,l63abh		;6429
	ld d,d			;642b
	ld (l4a94h),a		;642c
	inc sp			;642f
	sub d			;6430
	ld e,b			;6431
	ex af,af'		;6432
	ld a,(bc)		;6433
	exx			;6434
	ld d,(hl)		;6435
l6436h:
	ld de,09e1fh		;6436
	add a,l			;6439
	exx			;643a
	ld a,(00d12h)		;643b
	adc a,h			;643e
	ret nc			;643f
	jr nz,$+104		;6440
	sub b			;6442
	rlca			;6443
l6444h:
	ld l,e			;6444
	ld e,h			;6445
	ld b,c			;6446
	add hl,de		;6447
	ret z			;6448
	ld (de),a		;6449
	ld c,l			;644a
l644bh:
	call 03aceh		;644b
	inc c			;644e
	sub 005h		;644f
	ld a,(de)		;6451
	rst 28h			;6452
	dec d			;6453
	ld c,0e1h		;6454
	ld a,b			;6456
	ld a,(bc)		;6457
	ld c,0a3h		;6458
	xor a			;645a
	xor d			;645b
	ld h,h			;645c
	adc a,a			;645d
	and h			;645e
	call p,01292h		;645f
	ret			;6462
	sbc a,b			;6463
	and e			;6464
	jp z,035a7h		;6465
	ld (0fe02h),hl		;6468
	dec b			;646b
	jp nz,l485ah		;646c
	inc hl			;646f
	ld h,a			;6470
	pop bc			;6471
	push de			;6472
	ld d,l			;6473
	ld l,b			;6474
	dec b			;6475
	dec hl			;6476
	ld a,(de)		;6477
	sub c			;6478
	call sub_4423h		;6479
	jp 07740h		;647c
	dec (hl)		;647f
	cp 030h			;6480
	jp z,08088h		;6482
	inc b			;6485
	ld sp,096cah		;6486
	dec (hl)		;6489
	and 003h		;648a
	ld de,0cdc0h		;648c
	dec hl			;648f
	cpl			;6490
	ld h,l			;6491
	dec (hl)		;6492
	and d			;6493
	ld h,c			;6494
	cp 080h			;6495
	pop bc			;6497
	ld (de),a		;6498
	inc (hl)		;6499
	ld c,l			;649a
	or c			;649b
	ld a,(bc)		;649c
	or 065h			;649d
	jp 02180h		;649f
	xor e			;64a2
	inc (hl)		;64a3
	add hl,de		;64a4
	sub (hl)		;64a5
	cp d			;64a6
	ld (0b8fdh),a		;64a7
	sbc a,b			;64aa
	ld h,a			;64ab
	inc (hl)		;64ac
	adc a,c			;64ad
	ld a,06ch		;64ae
	inc (hl)		;64b0
	add hl,bc		;64b1
	jr l64bdh		;64b2
l64b4h:
	ret c			;64b4
	call nz,020c0h		;64b5
	nop			;64b8
	ld c,01fh		;64b9
	ld a,e			;64bb
	dec d			;64bc
l64bdh:
	dec de			;64bd
	cp a			;64be
l64bfh:
	rra			;64bf
	rlca			;64c0
	rrca			;64c1
	ld a,e			;64c2
	cp a			;64c3
	cp 06fh			;64c4
	cp l			;64c6
	add a,b			;64c7
	add a,(hl)		;64c8
	ld h,b			;64c9
	call nc,0feeeh		;64ca
	call p,0f000h		;64cd
	dec hl			;64d0
	call p,0daffh		;64d1
	ld a,d			;64d4
	ret p			;64d5
	or 000h			;64d6
	ld (hl),b		;64d8
	add a,b			;64d9
	ld c,b			;64da
	nop			;64db
	ld b,00fh		;64dc
	adc a,e			;64de
	rra			;64df
	sbc a,b			;64e0
	rst 30h			;64e1
	ccf			;64e2
	rra			;64e3
	sub b			;64e4
	sbc a,h			;64e5
	ld e,00ch		;64e6
	halt			;64e8
	djnz l64bfh		;64e9
	nop			;64eb
	ld b,h			;64ec
	jp po,0f0f0h		;64ed
	ret po			;64f0
	add a,b			;64f1
	jp p,0760ah		;64f2
	ret nc			;64f5
	ld a,b			;64f6
	ret p			;64f7
	ld a,b			;64f8
	ld c,054h		;64f9
	inc bc			;64fb
	and h			;64fc
	inc b			;64fd
	nop			;64fe
	ld a,(de)		;64ff
	jr l6505h		;6500
	scf			;6502
	ccf			;6503
	inc de			;6504
l6505h:
	rlca			;6505
	ld (de),a		;6506
	sbc a,(hl)		;6507
	defb 0ddh,040h,064h ;illegal sequence	;6508
	jp p,00c78h		;650b
	xor b			;650e
	cp b			;650f
	ld b,042h		;6510
	sub b			;6512
	cp b			;6513
	djnz l6518h		;6514
	ld c,0d8h		;6516
l6518h:
	cp b			;6518
l6519h:
	inc l			;6519
	djnz l6529h		;651a
	ld bc,03b0dh		;651c
	ld hl,00c0ch		;651f
	ld l,b			;6522
	add a,b			;6523
	ld c,040h		;6524
	nop			;6526
	ret nz			;6527
	nop			;6528
l6529h:
	ret po			;6529
	jp (hl)			;652a
	ret nz			;652b
	inc l			;652c
	call z,0c0e0h		;652d
	djnz l64b4h		;6530
	dec c			;6532
	ld hl,03566h		;6533
	ld a,(hl)		;6536
	add a,c			;6537
	ld h,l			;6538
	cp 0ech			;6539
	ld b,h			;653b
	jr c,$+55		;653c
l653eh:
	jp l7788h		;653e
	or h			;6541
	ret			;6542
	add a,(hl)		;6543
l6544h:
	jp po,l5af5h		;6544
	adc a,d			;6547
	ret m			;6548
	sub b			;6549
	ld a,d			;654a
	ld a,032h		;654b
	ld l,b			;654d
	ret nz			;654e
	dec a			;654f
	ld c,00bh		;6550
	nop			;6552
	ld e,00eh		;6553
	call nc,sub_7a4fh	;6555
	ld (bc),a		;6558
	call nc,03c48h		;6559
	nop			;655c
	add iy,bc		;655d
	cp 0feh			;655f
	defb 0fdh,000h,093h ;illegal sequence	;6561
	inc b			;6564
	ld hl,074d0h		;6565
	rst 28h			;6568
	ld l,c			;6569
	ld d,l			;656a
	dec (hl)		;656b
	xor 018h		;656c
	sbc a,l			;656e
	ld (de),a		;656f
	dec hl			;6570
	jp 08773h		;6571
	sbc a,h			;6574
	ld b,h			;6575
	ld (hl),l		;6576
	ld b,b			;6577
	ld e,0d1h		;6578
l657ah:
	sub e			;657a
	ld c,b			;657b
	ld e,0cch		;657c
	and c			;657e
	pop af			;657f
	ret po			;6580
	jr z,l6544h		;6581
	sub d			;6583
	cp b			;6584
	ret po			;6585
	ld e,h			;6586
	and a			;6587
	ret z			;6588
	inc h			;6589
	sbc a,09bh		;658a
	add a,c			;658c
	ld a,h			;658d
	cp h			;658e
	scf			;658f
	ld d,c			;6590
	ld a,(08ff0h)		;6591
	ld (hl),d		;6594
	ret po			;6595
	inc h			;6596
	and c			;6597
	ex de,hl		;6598
	and 0dch		;6599
	ld d,c			;659b
	ld a,(de)		;659c
	ld (hl),0b5h		;659d
	add hl,hl		;659f
	ld (de),a		;65a0
	ld d,c			;65a1
	jp m,0e4c0h		;65a2
	inc bc			;65a5
	jp nz,0f645h		;65a6
	or e			;65a9
	add a,(hl)		;65aa
	ld e,h			;65ab
l65ach:
	dec hl			;65ac
	ld l,c			;65ad
	sub d			;65ae
	adc a,h			;65af
	ld b,062h		;65b0
	ld b,a			;65b2
	ld (0c080h),a		;65b3
	sbc a,l			;65b6
	daa			;65b7
	rst 18h			;65b8
	adc a,0dah		;65b9
	ld (hl),l		;65bb
	ld l,e			;65bc
	inc hl			;65bd
	sub c			;65be
	defb 0ddh,098h,077h ;illegal sequence	;65bf
	jr z,l660ah		;65c2
	ld (hl),0e3h		;65c4
	out (0d6h),a		;65c6
	jr l65eeh		;65c8
	push bc			;65ca
l65cbh:
	sla l			;65cb
	rst 0			;65cd
	inc sp			;65ce
	ld a,l			;65cf
	ld e,l			;65d0
	add hl,hl		;65d1
	jp nc,0cb0ah		;65d2
	jr z,l65ach		;65d5
	ld e,d			;65d7
	or h			;65d8
	adc a,c			;65d9
l65dah:
	dec b			;65da
	inc b			;65db
	sbc a,01dh		;65dc
	inc bc			;65de
	nop			;65df
	cp h			;65e0
	ld (bc),a		;65e1
	inc bc			;65e2
	dec c			;65e3
	ld (bc),a		;65e4
	inc b			;65e5
	ld bc,0016bh		;65e6
	inc bc			;65e9
	dec b			;65ea
	inc bc			;65eb
	adc a,0b0h		;65ec
l65eeh:
	ret nz			;65ee
	and b			;65ef
	pop bc			;65f0
	and 020h		;65f1
	ld (de),a		;65f3
	ret z			;65f4
	ld de,0d711h		;65f5
	ld sp,0df82h		;65f8
	ld b,l			;65fb
	add a,00ah		;65fc
	ld b,a			;65fe
	adc a,l			;65ff
	xor b			;6600
	djnz l6652h		;6601
	exx			;6603
	nop			;6604
l6605h:
	ld b,007h		;6605
	exx			;6607
	ld a,(hl)		;6608
	dec hl			;6609
l660ah:
	cp c			;660a
	jp nc,004adh		;660b
	ld (hl),0c6h		;660e
	jr l65cbh		;6610
	jp c,l7e05h		;6612
	ld l,d			;6615
	cp b			;6616
	ld a,(bc)		;6617
	djnz l661fh		;6618
	ld d,h			;661a
	or d			;661b
	rst 30h			;661c
	exx			;661d
	ld (bc),a		;661e
l661fh:
	djnz l6605h		;661f
	ret			;6621
	dec hl			;6622
	ld a,(hl)		;6623
	dec a			;6624
	add a,l			;6625
	jp po,0c3cfh		;6626
	adc a,d			;6629
	ret po			;662a
	ld (hl),024h		;662b
	ld a,048h		;662d
	ld b,c			;662f
	ld (01108h),a		;6630
	dec bc			;6633
	nop			;6634
	add hl,de		;6635
	and h			;6636
	pop af			;6637
	rst 38h			;6638
	ret nz			;6639
	sub b			;663a
	jr l65dah		;663b
	ld h,c			;663d
	jp 09e04h		;663e
	jp 011bah		;6641
	pop af			;6644
	pop bc			;6645
	and 0b6h		;6646
	rst 20h			;6648
	sbc a,e			;6649
	jp pe,0fb88h		;664a
	and d			;664d
	adc a,c			;664e
	pop hl			;664f
	di			;6650
	ld h,(hl)		;6651
l6652h:
	add a,a			;6652
	and h			;6653
	sub d			;6654
	jp m,0eba7h		;6655
	ld e,(hl)		;6658
	add a,c			;6659
	ld de,03bd0h		;665a
	add a,06ah		;665d
	ld c,b			;665f
	add a,a			;6660
	ld bc,l77a2h		;6661
	in a,(0aeh)		;6664
	ld b,003h		;6666
	add hl,de		;6668
	ld (hl),c		;6669
	inc de			;666a
	dec a			;666b
	inc de			;666c
	call 00306h		;666d
	jr c,$-46		;6670
	ld e,h			;6672
	sbc a,c			;6673
	adc a,c			;6674
	add a,b			;6675
	rst 20h			;6676
	jr nz,l6687h		;6677
	ld (0d25eh),a		;6679
	exx			;667c
	add a,b			;667d
l667eh:
	adc a,b			;667e
	sub a			;667f
	sub l			;6680
	ld a,(08207h)		;6681
	push hl			;6684
	inc b			;6685
	ld l,(hl)		;6686
l6687h:
	nop			;6687
	ld hl,00428h		;6688
	add hl,de		;668b
	djnz l667eh		;668c
	ret			;668e
	ex af,af'		;668f
	ld (hl),001h		;6690
	ld e,004h		;6692
	ld a,h			;6694
l6695h:
	ld (l5975h),a		;6695
	scf			;6698
l6699h:
	ex (sp),hl		;6699
	dec d			;669a
	ld b,06fh		;669b
	ld h,000h		;669d
	add hl,hl		;669f
	nop			;66a0
	dec sp			;66a1
	ld de,095dbh		;66a2
	ld a,(01014h)		;66a5
	exx			;66a8
	inc bc			;66a9
	ld c,b			;66aa
	push de			;66ab
	ld e,h			;66ac
	xor b			;66ad
	exx			;66ae
	ret c			;66af
	dec b			;66b0
	add hl,de		;66b1
	ld e,010h		;66b2
	djnz $-69		;66b4
	ret po			;66b6
	jp po,09743h		;66b7
	ret nz			;66ba
	jr nz,$+64		;66bb
	ret nz			;66bd
	jp c,08202h		;66be
	scf			;66c1
	ld a,0e0h		;66c2
	ld (0a3aah),a		;66c4
	inc h			;66c7
	ld e,d			;66c8
	or a			;66c9
	jp nz,01428h		;66ca
	ld a,0e4h		;66cd
	ld b,(hl)		;66cf
	xor e			;66d0
	ld a,(bc)		;66d1
	jp c,018b1h		;66d2
	and h			;66d5
	scf			;66d6
	or 0b8h			;66d7
	ld b,03eh		;66d9
	ld l,e			;66db
	ret nc			;66dc
	inc de			;66dd
	ld e,c			;66de
	or 030h			;66df
	ret nc			;66e1
	jr z,l6756h		;66e2
	ld (bc),a		;66e4
	ret nc			;66e5
	jr l6695h		;66e6
	pop bc			;66e8
	jr nc,l6699h		;66e9
	sbc a,b			;66eb
	ld de,01d5ch		;66ec
	jp nz,01d9ah		;66ef
	or b			;66f2
	dec bc			;66f3
	ld a,091h		;66f4
	ld sp,0154ah		;66f6
	jp z,02cceh		;66f9
	xor b			;66fc
	xor a			;66fd
	push hl			;66fe
	and b			;66ff
	ld c,(hl)		;6700
l6701h:
	ld de,0c1a4h		;6701
	ld bc,0e3c8h		;6704
	ldir			;6707
	sbc a,h			;6709
	pop af			;670a
	ld c,h			;670b
	and e			;670c
	rrca			;670d
	ld l,a			;670e
	rst 28h			;670f
	add a,b			;6710
	dec d			;6711
l6712h:
	ld (hl),000h		;6712
	inc hl			;6714
	djnz l6712h		;6715
	ld de,006c9h		;6717
	add a,b			;671a
	call 00a9ch		;671b
	inc bc			;671e
	ld hl,0c3a9h		;671f
	ld b,01eh		;6722
	add hl,bc		;6724
	sbc a,l			;6725
	adc a,(hl)		;6726
	ld b,a			;6727
	inc h			;6728
	add hl,bc		;6729
	ld (03816h),hl		;672a
	ld de,l6386h		;672d
	ld bc,03880h		;6730
	dec b			;6733
	ret			;6734
	ld h,h			;6735
	ret z			;6736
	xor 042h		;6737
	ld h,e			;6739
	jp z,0f204h		;673a
	ld (01cc0h),hl		;673d
	inc bc			;6740
	ld h,c			;6741
	cp (hl)			;6742
	inc bc			;6743
	nop			;6744
	inc (hl)		;6745
	inc bc			;6746
	call po,0f42ch		;6747
	inc bc			;674a
	or l			;674b
	nop			;674c
	inc de			;674d
	ld b,h			;674e
	inc bc			;674f
	adc a,b			;6750
	inc a			;6751
	ld a,(bc)		;6752
	ld bc,0e018h		;6753
l6756h:
	inc bc			;6756
	ld e,00ah		;6757
	ex af,af'		;6759
	ld h,b			;675a
	ei			;675b
	ld hl,(0033ch)		;675c
	ld b,b			;675f
	ld h,h			;6760
	ex af,af'		;6761
	ld h,b			;6762
	call m,0c852h		;6763
	inc bc			;6766
	ld e,d			;6767
	ld b,(hl)		;6768
	ex af,af'		;6769
	ld h,b			;676a
	defb 0fdh,064h ;ld iyh,iyh	;676b
	inc d			;676d
	inc bc			;676e
	ld l,(hl)		;676f
	ld a,b			;6770
	ex af,af'		;6771
	ld h,b			;6772
	cp 078h			;6773
	ld e,d			;6775
	rlca			;6776
	add a,d			;6777
	ret p			;6778
	adc a,b			;6779
	rlca			;677a
	adc a,h			;677b
	ld bc,09607h		;677c
	ld h,c			;677f
	adc a,b			;6780
	inc bc			;6781
	and b			;6782
	sub (hl)		;6783
	inc bc			;6784
	xor d			;6785
	inc a			;6786
	adc a,e			;6787
	inc hl			;6788
	or h			;6789
	ret p			;678a
	inc bc			;678b
	ld b,a			;678c
	sbc a,c			;678d
	inc bc			;678e
	xor a			;678f
	jp m,03228h		;6790
	ld c,d			;6793
	ret nc			;6794
	ld (bc),a		;6795
	dec c			;6796
	rst 20h			;6797
	cp h			;6798
	cp a			;6799
	jp po,002c1h		;679a
	ld c,c			;679d
	rla			;679e
	ld (bc),a		;679f
	ld b,h			;67a0
	ld (bc),a		;67a1
	ld b,002h		;67a2
	inc h			;67a4
	rlca			;67a5
	ld (bc),a		;67a6
	ex af,af'		;67a7
	ld (bc),a		;67a8
	inc b			;67a9
	sub d			;67aa
	ld (bc),a		;67ab
	dec b			;67ac
	ld (bc),a		;67ad
	and d			;67ae
	jr nz,l67fah		;67af
	add hl,bc		;67b1
	dec b			;67b2
	ld a,(bc)		;67b3
	ld (bc),a		;67b4
	ld b,l			;67b5
	ld (bc),a		;67b6
	ld hl,(0024ch)		;67b7
	adc a,(hl)		;67ba
	cp h			;67bb
	ret nc			;67bc
	sub d			;67bd
	ld (bc),a		;67be
	ld (de),a		;67bf
	ld (bc),a		;67c0
	or b			;67c1
	ld (bc),a		;67c2
	ld c,c			;67c3
	or c			;67c4
	ld (bc),a		;67c5
	ld h,e			;67c6
	ld (bc),a		;67c7
	ld d,c			;67c8
	ld c,095h		;67c9
	inc hl			;67cb
	adc a,d			;67cc
	sbc a,(hl)		;67cd
	call m,032c9h		;67ce
	inc l			;67d1
	ld (bc),a		;67d2
	inc h			;67d3
	ld h,d			;67d4
	ld de,011c9h		;67d5
	rst 0			;67d8
	sub e			;67d9
	ld (bc),a		;67da
	ret z			;67db
	ld (bc),a		;67dc
	sbc a,d			;67dd
	ld a,024h		;67de
	ld (bc),a		;67e0
	sbc a,h			;67e1
	ld (bc),a		;67e2
	sub (hl)		;67e3
	sub d			;67e4
	ld (bc),a		;67e5
	sub a			;67e6
	ld (bc),a		;67e7
	sub l			;67e8
	ld (bc),a		;67e9
	ld d,d			;67ea
	and h			;67eb
l67ech:
	cp a			;67ec
	xor h			;67ed
	jp z,0ed04h		;67ee
	sub d			;67f1
	sbc a,b			;67f2
	inc b			;67f3
	rlca			;67f4
	ld (0ec91h),a		;67f5
	inc (hl)		;67f8
	ld b,b			;67f9
l67fah:
	ld e,(hl)		;67fa
	inc (hl)		;67fb
	sbc a,c			;67fc
	ld a,d			;67fd
	sub a			;67fe
	dec b			;67ff
	ld a,096h		;6800
	ld (0ed61h),a		;6802
	and a			;6805
	ret m			;6806
	ld h,c			;6807
	call nz,0ee86h		;6808
	jp 0064fh		;680b
	inc bc			;680e
	ld e,h			;680f
	ld (0523ah),hl		;6810
	ld b,002h		;6813
	ld sp,hl		;6815
	jr nz,l6852h		;6816
	ld d,08dh		;6818
	ld (hl),b		;681a
	ld l,e			;681b
	add hl,sp		;681c
	inc b			;681d
	dec a			;681e
	jp z,03958h		;681f
	ld (0cd0ah),a		;6822
	rla			;6825
	sbc a,c			;6826
	jr nz,l67ech		;6827
	inc c			;6829
	xor d			;682a
	ld l,b			;682b
	jp nz,03961h		;682c
	ld sp,0023eh		;682f
	ld h,(hl)		;6832
	xor a			;6833
	dec d			;6834
	call z,00606h		;6835
	add a,c			;6838
	ld b,b			;6839
	call 03b26h		;683a
	ld a,(l69d3h)		;683d
	dec h			;6840
	jp nc,0055fh		;6841
	and h			;6844
	inc bc			;6845
	add hl,de		;6846
	ld a,004h		;6847
	inc b			;6849
	nop			;684a
	ret			;684b
	dec h			;684c
	dec h			;684d
	ld a,(0f3e0h)		;684e
	nop			;6851
l6852h:
	or 002h			;6852
	di			;6854
	out (099h),a		;6855
	ld a,081h		;6857
	ei			;6859
	ret nz			;685a
	inc b			;685b
	rst 28h			;685c
	ld (0f3e4h),a		;685d
	sub 00ch		;6860
	add a,l			;6862
	inc bc			;6863
	ld b,(hl)		;6864
	ccf			;6865
	jp pe,006ffh		;6866
	inc sp			;6869
	adc a,e			;686a
	inc bc			;686b
	cp c			;686c
	add a,(hl)		;686d
	push hl			;686e
	dec d			;686f
	or b			;6870
	add a,(hl)		;6871
	ld (00321h),hl		;6872
	dec d			;6875
	ld c,d			;6876
	ld (0939ah),hl		;6877
	add a,e			;687a
	jr nz,l689eh		;687b
	nop			;687d
	xor b			;687e
	inc b			;687f
	inc d			;6880
	dec b			;6881
	add a,h			;6882
	ld (hl),b		;6883
	add hl,sp		;6884
	ld c,00eh		;6885
	sbc a,e			;6887
	ld c,075h		;6888
	ld c,014h		;688a
	sbc a,b			;688c
	cp l			;688d
	add a,b			;688e
	jp 00148h		;688f
	sbc a,b			;6892
	jr nz,l68adh		;6893
	otir			;6895
	ei			;6897
	call z,00ee1h		;6898
	inc (hl)		;689b
	djnz l68ach		;689c
l689eh:
	add a,e			;689e
	ld c,b			;689f
	ret po			;68a0
	inc l			;68a1
	rlca			;68a2
	ld hl,l4070h		;68a3
	dec sp			;68a6
	jp 04ae5h		;68a7
	ld (bc),a		;68aa
	add a,d			;68ab
l68ach:
	or e			;68ac
l68adh:
	ld (hl),l		;68ad
	ld c,0cah		;68ae
	cpl			;68b0
	ld l,l			;68b1
	ret nz			;68b2
	dec e			;68b3
	cp e			;68b4
	ld c,b			;68b5
	ld b,b			;68b6
	ld c,l			;68b7
	ld a,b			;68b8
	ld b,00bh		;68b9
	ex af,af'		;68bb
	call 02025h		;68bc
	adc a,d			;68bf
	ld e,e			;68c0
	add a,l			;68c1
	ld h,d			;68c2
	rst 30h			;68c3
	push bc			;68c4
	add hl,de		;68c5
	call z,03d25h		;68c6
	dec c			;68c9
	ld d,d			;68ca
	and b			;68cb
	add hl,bc		;68cc
	ld c,0afh		;68cd
	ld (hl),a		;68cf
	dec c			;68d0
	call m,03623h		;68d1
	halt			;68d4
	ld h,d			;68d5
	cp (hl)			;68d6
	sub b			;68d7
	sbc a,b			;68d8
	add a,b			;68d9
	ret z			;68da
	ld h,d			;68db
	inc e			;68dc
	jp (hl)			;68dd
	di			;68de
	ld b,036h		;68df
	dec bc			;68e1
	inc hl			;68e2
	ld (hl),009h		;68e3
	ld (bc),a		;68e5
	ld (bc),a		;68e6
	ld hl,03a7fh		;68e7
	call 01a03h		;68ea
	ld (hl),b		;68ed
	adc a,(hl)		;68ee
	dec b			;68ef
	sbc a,l			;68f0
	pop hl			;68f1
	dec b			;68f2
	xor h			;68f3
	dec b			;68f4
	ret nz			;68f5
	cp e			;68f6
	ld a,(0bdc3h)		;68f7
	dec b			;68fa
	xor 0a5h		;68fb
	ld (bc),a		;68fd
	or h			;68fe
	nop			;68ff
	jr z,l6902h		;6900
l6902h:
	sbc a,c			;6902
	ld bc,08bc0h		;6903
	add hl,bc		;6906
	rst 18h			;6907
	inc bc			;6908
	ld h,d			;6909
	xor e			;690a
	ld bc,000e1h		;690b
	ld de,08d15h		;690e
	sub b			;6911
	ld a,(de)		;6912
	or (hl)			;6913
	rla			;6914
	ret pe			;6915
	xor c			;6916
	sbc a,a			;6917
	ld b,01dh		;6918
	call z,0ea00h		;691a
	ld b,l			;691d
	nop			;691e
	xor c			;691f
	sub 067h		;6920
	ld c,000h		;6922
	in a,(000h)		;6924
	ex de,hl		;6926
	inc bc			;6927
	ld (hl),0c6h		;6928
	dec e			;692a
	inc h			;692b
	jp m,02c1ah		;692c
	ld a,(01365h)		;692f
	jp c,082c2h		;6932
	or d			;6935
	adc a,d			;6936
	ld (hl),b		;6937
	pop hl			;6938
	ld a,(0f510h)		;6939
	ld a,(00cb5h)		;693c
	add a,b			;693f
	ld b,a			;6940
	pop af			;6941
	ei			;6942
	out (0dfh),a		;6943
	ld h,b			;6945
	srl a			;6946
	ld (09357h),a		;6948
	rst 30h			;694b
	rst 8			;694c
	pop de			;694d
	djnz $-33		;694e
	add a,b			;6950
	inc d			;6951
	cp (hl)			;6952
	ret c			;6953
	inc c			;6954
	sub 01ch		;6955
	cp (hl)			;6957
	ret nc			;6958
	ret pe			;6959
	ld h,b			;695a
	inc hl			;695b
	cp (hl)			;695c
	ld e,e			;695d
	dec hl			;695e
	ex af,af'		;695f
	call z,0c618h		;6960
	ld e,008h		;6963
	ret c			;6965
	ld l,h			;6966
	inc hl			;6967
	exx			;6968
	ld b,00ch		;6969
	ld (hl),a		;696b
	dec hl			;696c
	ld de,0ca07h		;696d
	ld bc,0ff36h		;6970
	xor a			;6973
	sbc hl,de		;6974
	add a,(hl)		;6976
	ld c,c			;6977
	xor e			;6978
	ld (hl),004h		;6979
	dec h			;697b
	ex af,af'		;697c
	inc b			;697d
	rra			;697e
	jp p,0f624h		;697f
	call 0c5d9h		;6982
	jr l69b6h		;6985
	ret nc			;6987
	inc bc			;6988
	ld (01376h),a		;6989
	ld a,(009dah)		;698c
	sub e			;698f
	sub e			;6990
	rlca			;6991
	add a,047h		;6992
	ex af,af'		;6994
	inc c			;6995
	ld h,c			;6996
	push hl			;6997
	ld d,032h		;6998
	push af			;699a
	ld (bc),a		;699b
	inc b			;699c
	dec b			;699d
	rla			;699e
	ret			;699f
	di			;69a0
	ret z			;69a1
	ret po			;69a2
	and 0bfh		;69a3
	ld (004a7h),a		;69a5
	jp z,00362h		;69a8
	ld a,(00ddfh)		;69ab
	inc a			;69ae
	pop af			;69af
	or 0a8h			;69b0
	ld l,e			;69b2
	rst 18h			;69b3
	rrca			;69b4
	add a,b			;69b5
l69b6h:
	rrca			;69b6
	ld sp,0e41dh		;69b7
	ret pe			;69ba
	scf			;69bb
	rra			;69bc
	add a,(hl)		;69bd
	ld e,h			;69be
	ld h,l			;69bf
	sbc a,l			;69c0
	ld b,08ch		;69c1
	add a,d			;69c3
	ld a,(de)		;69c4
	ld l,e			;69c5
	jp pe,08708h		;69c6
	ex af,af'		;69c9
	ld a,(de)		;69ca
	ex de,hl		;69cb
	ex af,af'		;69cc
	adc a,h			;69cd
	xor b			;69ce
	inc bc			;69cf
	xor (hl)		;69d0
	ld c,(hl)		;69d1
	pop af			;69d2
l69d3h:
	ld sp,hl		;69d3
	or l			;69d4
	sub d			;69d5
	add hl,bc		;69d6
	or 009h			;69d7
	xor c			;69d9
	sub a			;69da
	rst 30h			;69db
	jp nz,03bfdh		;69dc
	cp d			;69df
	ld d,b			;69e0
	call 0140ch		;69e1
	inc a			;69e4
	ld a,00ch		;69e5
	sbc a,a			;69e7
	jp nc,09c00h		;69e8
	sbc a,d			;69eb
	ld d,d			;69ec
	rrca			;69ed
	sbc a,c			;69ee
	ret p			;69ef
	ld h,c			;69f0
	or 078h			;69f1
	ld b,d			;69f3
	ld a,a			;69f4
	add a,c			;69f5
	rst 20h			;69f6
	rst 38h			;69f7
	and 0ddh		;69f8
	ld (03ce7h),a		;69fa
	xor h			;69fd
	adc a,b			;69fe
	dec c			;69ff
	ld h,0e8h		;6a00
	rst 38h			;6a02
	ld a,e			;6a03
	or 0e4h			;6a04
	dec c			;6a06
	ret pe			;6a07
	rrca			;6a08
	ld d,e			;6a09
	adc a,c			;6a0a
	inc bc			;6a0b
	and (hl)		;6a0c
	ld c,e			;6a0d
	defb 0fdh,057h,0b2h ;illegal sequence	;6a0e
	sbc a,d			;6a11
	ld bc,092c0h		;6a12
	push de			;6a15
	ld c,(hl)		;6a16
	ld bc,0fe10h		;6a17
	dec a			;6a1a
	jp nz,03c10h		;6a1b
	ret			;6a1e
	nop			;6a1f
	rst 38h			;6a20
	rst 38h			;6a21
	nop			;6a22
l6a23h:
	jp 0c6d7h		;6a23
	nop			;6a26
	nop			;6a27
	nop			;6a28
	nop			;6a29
	nop			;6a2a
	nop			;6a2b
	nop			;6a2c
	nop			;6a2d
	nop			;6a2e
	ld bc,00005h		;6a2f
	nop			;6a32
	ld bc,000c0h		;6a33
	nop			;6a36
	ret nz			;6a37
	inc bc			;6a38
	nop			;6a39
	nop			;6a3a
	nop			;6a3b
	nop			;6a3c
	dec b			;6a3d
	nop			;6a3e
	dec b			;6a3f
	nop			;6a40
	nop			;6a41
	nop			;6a42
	sbc a,b			;6a43
	nop			;6a44
	nop			;6a45
	nop			;6a46
	nop			;6a47
	nop			;6a48
	nop			;6a49
	nop			;6a4a
	nop			;6a4b
	nop			;6a4c
	nop			;6a4d
	dec b			;6a4e
	nop			;6a4f
	nop			;6a50
	nop			;6a51
	sbc a,b			;6a52
	ld (0c5edh),a		;6a53
	and 001h		;6a56
	ld (0c5eeh),a		;6a58
	xor a			;6a5b
	ld (0c416h),a		;6a5c
	ld a,b			;6a5f
	ld (0c5efh),a		;6a60
	ld a,0fah		;6a63
	ld (0c418h),a		;6a65
	ld (0c423h),a		;6a68
	ld (0c409h),a		;6a6b
	call 0c451h		;6a6e
	call 0c45ah		;6a71
	exx			;6a74
	ld hl,0c403h		;6a75
	call 00103h		;6a78
	exx			;6a7b
	ret			;6a7c
	ld a,(hl)		;6a7d
	exx			;6a7e
	or a			;6a7f
	jp z,0c48eh		;6a80
	sub 041h		;6a83
	ld d,a			;6a85
	add a,a			;6a86
	add a,d			;6a87
	ld d,000h		;6a88
	ld e,a			;6a8a
	ld hl,0c4e4h		;6a8b
	add hl,de		;6a8e
	ld a,(hl)		;6a8f
	ld (0c412h),a		;6a90
	inc hl			;6a93
	ld a,(hl)		;6a94
	ld (0c414h),a		;6a95
	inc hl			;6a98
	ld a,(hl)		;6a99
	ld (0c41ah),a		;6a9a
	ld d,a			;6a9d
	ld hl,0c412h		;6a9e
	call 00103h		;6aa1
	ld a,(0c416h)		;6aa4
	add a,d			;6aa7
	inc a			;6aa8
	ld (0c416h),a		;6aa9
	exx			;6aac
	inc hl			;6aad
	jp 0c45ah		;6aae
	ld a,(0c5edh)		;6ab1
	ld (0c427h),a		;6ab4
	ld a,(0c416h)		;6ab7
	ld (0c429h),a		;6aba
	srl a			;6abd
	ld b,a			;6abf
	ld a,080h		;6ac0
	sub b			;6ac2
	ld (0c425h),a		;6ac3
	ld a,(0c5eeh)		;6ac6
	or a			;6ac9
	jp z,0c4b0h		;6aca
	ld a,(0c5efh)		;6acd
	ld (0c425h),a		;6ad0
	ld hl,0c421h		;6ad3
	jp 00103h		;6ad6
	ld b,a			;6ad9
	ld b,c			;6ada
	ld c,l			;6adb
	ld b,l			;6adc
	ld e,e			;6add
	ld c,a			;6ade
	ld d,(hl)		;6adf
	ld b,l			;6ae0
	ld d,d			;6ae1
	nop			;6ae2
	ld b,e			;6ae3
	ld c,a			;6ae4
	ld c,(hl)		;6ae5
	ld d,h			;6ae6
	ld c,c			;6ae7
	ld c,(hl)		;6ae8
	ld d,l			;6ae9
	ld b,l			;6aea
	ld e,e			;6aeb
	ld d,h			;6aec
	ld c,a			;6aed
	ld e,e			;6aee
	ld b,(hl)		;6aef
	ld h,c			;6af0
	nop			;6af1
	ld h,(hl)		;6af2
	ld b,e			;6af3
	ld c,a			;6af4
	ld c,(hl)		;6af5
	ld d,h			;6af6
	ld c,c			;6af7
	ld c,(hl)		;6af8
	ld d,l			;6af9
	ld b,l			;6afa
	ld h,(hl)		;6afb
	nop			;6afc
	ld b,e			;6afd
	ld d,d			;6afe
	ld b,l			;6aff
	ld b,h			;6b00
	ld c,c			;6b01
	ld d,h			;6b02
	ld d,e			;6b03
	ld e,e			;6b04
	ld e,a			;6b05
	nop			;6b06
	nop			;6b07
	ret nz			;6b08
	rlca			;6b09
	rlca			;6b0a
	ret nz			;6b0b
	rlca			;6b0c
	ld c,0c0h		;6b0d
	rlca			;6b0f
	dec d			;6b10
	ret nz			;6b11
	rlca			;6b12
	dec de			;6b13
	ret nz			;6b14
	ld b,021h		;6b15
	ret nz			;6b17
	dec b			;6b18
l6b19h:
	ld h,0c0h		;6b19
	rlca			;6b1b
	dec l			;6b1c
	ret nz			;6b1d
	rlca			;6b1e
	ld (002c0h),a		;6b1f
	ld (hl),0c0h		;6b22
	ld b,03ch		;6b24
	ret nz			;6b26
	rlca			;6b27
	ld b,e			;6b28
	ret nz			;6b29
	ld b,049h		;6b2a
	ret nz			;6b2c
	rlca			;6b2d
	ld c,a			;6b2e
	ret nz			;6b2f
	rlca			;6b30
	ld d,(hl)		;6b31
	ret nz			;6b32
	rlca			;6b33
	ld e,l			;6b34
	ret nz			;6b35
	rlca			;6b36
	ld h,h			;6b37
	ret nz			;6b38
	rlca			;6b39
	ld l,e			;6b3a
	ret nz			;6b3b
	rlca			;6b3c
	nop			;6b3d
	push bc			;6b3e
	rlca			;6b3f
	rlca			;6b40
	push bc			;6b41
	ld b,00dh		;6b42
	push bc			;6b44
	rlca			;6b45
	inc d			;6b46
	push bc			;6b47
	rlca			;6b48
	dec de			;6b49
	push bc			;6b4a
	rlca			;6b4b
	ld (007c5h),hl		;6b4c
	add hl,hl		;6b4f
	push bc			;6b50
	rlca			;6b51
	jr nc,l6b19h		;6b52
	ld b,068h		;6b54
	push bc			;6b56
	inc b			;6b57
	ld (hl),0c5h		;6b58
	ld b,03ch		;6b5a
	push bc			;6b5c
	inc bc			;6b5d
	ccf			;6b5e
	push bc			;6b5f
	dec b			;6b60
	ld b,h			;6b61
	push bc			;6b62
	dec b			;6b63
	ld c,c			;6b64
	push bc			;6b65
	dec b			;6b66
	ld c,(hl)		;6b67
	push bc			;6b68
	ld b,054h		;6b69
	push bc			;6b6b
	dec b			;6b6c
	ld e,c			;6b6d
	push bc			;6b6e
	dec b			;6b6f
	ld e,(hl)		;6b70
	push bc			;6b71
	dec b			;6b72
	ld h,e			;6b73
	push bc			;6b74
	dec b			;6b75
	cpl			;6b76
	ret nz			;6b77
	inc bc			;6b78
	scf			;6b79
	pop bc			;6b7a
	ld (bc),a		;6b7b
	ld a,(0c5e5h)		;6b7c
	inc a			;6b7f
	and 003h		;6b80
	ld (0c5e5h),a		;6b82
	ret nz			;6b85
	ld a,(0c5e3h)		;6b86
	add a,011h		;6b89
	ld (0c5e3h),a		;6b8b
	ld a,(0c5e4h)		;6b8e
	inc a			;6b91
	ld (0c5e4h),a		;6b92
	ld hl,0c5e3h		;6b95
	ld bc,0029ah		;6b98
	ld a,00bh		;6b9b
	call 002deh		;6b9d
	ld hl,0c5e3h		;6ba0
	ld bc,0029ah		;6ba3
	ld a,00eh		;6ba6
	call 002deh		;6ba8
	ld a,(0c5e4h)		;6bab
	cp 007h			;6bae
	ret nz			;6bb0
	xor a			;6bb1
	ld (0c5eah),a		;6bb2
	ld a,001h		;6bb5
	ld (0c5ech),a		;6bb7
	ret			;6bba
	ld a,(0c5e9h)		;6bbb
	inc a			;6bbe
	ld (0c5e9h),a		;6bbf
	ret nz			;6bc2
	xor a			;6bc3
	ld (0c5ech),a		;6bc4
	ld a,001h		;6bc7
	ld (0c5ebh),a		;6bc9
	ret			;6bcc
	ld a,(0c5e8h)		;6bcd
	inc a			;6bd0
	and 003h		;6bd1
	ld (0c5e8h),a		;6bd3
	ret nz			;6bd6
	ld a,(0c5e6h)		;6bd7
	sub 011h		;6bda
	ld (0c5e6h),a		;6bdc
	ld a,(0c5e7h)		;6bdf
	dec a			;6be2
	ld (0c5e7h),a		;6be3
	ld hl,0c5e6h		;6be6
	ld bc,0029ah		;6be9
	ld a,00bh		;6bec
	call 002deh		;6bee
	ld hl,0c5e6h		;6bf1
	ld bc,0029ah		;6bf4
	ld a,00eh		;6bf7
	call 002deh		;6bf9
	ld a,(0c5e7h)		;6bfc
	or a			;6bff
	ret nz			;6c00
	xor a			;6c01
	ld (0c5ebh),a		;6c02
	ret			;6c05
	nop			;6c06
	nop			;6c07
	nop			;6c08
	nop			;6c09
	nop			;6c0a
	nop			;6c0b
	nop			;6c0c
	nop			;6c0d
	nop			;6c0e
	nop			;6c0f
	nop			;6c10
	nop			;6c11
	nop			;6c12
	ld b,000h		;6c13
l6c15h:
	push bc			;6c15
	call 0fd9fh		;6c16
	pop bc			;6c19
	djnz l6c15h		;6c1a
	ret			;6c1c
	ld a,(0c3f5h)		;6c1d
	out (0a8h),a		;6c20
	ld a,038h		;6c22
	call 0cbcch		;6c24
	ld a,(l4000h)		;6c27
	cp 0ffh			;6c2a
	jp z,0c6c6h		;6c2c
	ld hl,l4000h		;6c2f
	ld bc,00023h		;6c32
	ld a,0ffh		;6c35
	add hl,bc		;6c37
	cp (hl)			;6c38
	jp nz,0c614h		;6c39
	xor a			;6c3c
	sbc hl,bc		;6c3d
	ld de,0c1b8h		;6c3f
	ldir			;6c42
	dec hl			;6c44
	ld a,(hl)		;6c45
	cp 0ffh			;6c46
	jp z,0c6c6h		;6c48
	ld a,(0c3f2h)		;6c4b
	out (0a8h),a		;6c4e
	ret			;6c50
	ld a,(0c3f5h)		;6c51
	out (0a8h),a		;6c54
	ld a,038h		;6c56
	call 0cc4eh		;6c58
	ld a,(l4fdch)		;6c5b
	cp 0ffh			;6c5e
	jp z,0c66ah		;6c60
	ld a,0aah		;6c63
	ld (l4555h),a		;6c65
	ld a,055h		;6c68
	ld (l42aah),a		;6c6a
	ld a,080h		;6c6d
	ld (l4555h),a		;6c6f
	ld a,0aah		;6c72
	ld (l4555h),a		;6c74
	ld a,055h		;6c77
	ld (l42aah),a		;6c79
	ld a,030h		;6c7c
	ld (l4000h),a		;6c7e
	ld b,000h		;6c81
	ei			;6c83
l6c84h:
	halt			;6c84
	djnz l6c84h		;6c85
	ld hl,l4000h		;6c87
	jp 0c677h		;6c8a
	ld hl,03fddh		;6c8d
	ld bc,00023h		;6c90
	ld a,0ffh		;6c93
	add hl,bc		;6c95
	cp (hl)			;6c96
	jp nz,0c672h		;6c97
	ex de,hl		;6c9a
	ld hl,0c1b8h		;6c9b
	ld bc,00023h		;6c9e
	call 0c687h		;6ca1
	ld a,(0c3f2h)		;6ca4
	out (0a8h),a		;6ca7
	ret			;6ca9
	ld a,0aah		;6caa
	ld (l4555h),a		;6cac
	ld a,055h		;6caf
	ld (l42aah),a		;6cb1
	ld a,0a0h		;6cb4
	ld (l4555h),a		;6cb6
	ld a,(hl)		;6cb9
	ld (de),a		;6cba
l6cbbh:
	ld a,(de)		;6cbb
	cp (hl)			;6cbc
	jr nz,l6cbbh		;6cbd
	inc hl			;6cbf
	inc de			;6cc0
	dec c			;6cc1
	jp nz,0c687h		;6cc2
	ret			;6cc5
	nop			;6cc6
	nop			;6cc7
	nop			;6cc8
	nop			;6cc9
	nop			;6cca
	nop			;6ccb
	nop			;6ccc
	nop			;6ccd
	nop			;6cce
	nop			;6ccf
	ld bc,00000h		;6cd0
	nop			;6cd3
	nop			;6cd4
	nop			;6cd5
	nop			;6cd6
	nop			;6cd7
	nop			;6cd8
	nop			;6cd9
	nop			;6cda
	ld (bc),a		;6cdb
	nop			;6cdc
	nop			;6cdd
	nop			;6cde
	nop			;6cdf
	nop			;6ce0
	nop			;6ce1
	nop			;6ce2
	nop			;6ce3
	nop			;6ce4
	nop			;6ce5
	inc bc			;6ce6
	djnz $+17		;6ce7
	ld hl,0c6a3h		;6ce9
	ld de,0c1b8h		;6cec
	ld bc,00023h		;6cef
	ldir			;6cf2
	ld a,(0c3f2h)		;6cf4
	out (0a8h),a		;6cf7
	ret			;6cf9
	ld hl,0caf0h		;6cfa
	ld (00039h),hl		;6cfd
	ld a,0c3h		;6d00
	ld (00038h),a		;6d02
	call 002f8h		;6d05
	ld hl,0c80fh		;6d08
	call 002e9h		;6d0b
	ld a,(0fbebh)		;6d0e
	and 0e0h		;6d11
	cp 0e0h			;6d13
	jp z,0c8ddh		;6d15
	call 0c5fah		;6d18
	ld hl,0f3e9h		;6d1b
	ld (hl),00fh		;6d1e
	inc hl			;6d20
	ld (hl),00fh		;6d21
	inc hl			;6d23
	ld (hl),00fh		;6d24
	call 005cfh		;6d26
	ld hl,0c82fh		;6d29
	call 00103h		;6d2c
	ld a,(0c3f5h)		;6d2f
	out (0a8h),a		;6d32
	ld a,011h		;6d34
	call 0cc10h		;6d36
	ld hl,0a08eh		;6d39
	xor a			;6d3c
	ld de,00000h		;6d3d
	call 001fdh		;6d40
	ld hl,0d26eh		;6d43
	call 00103h		;6d46
	call 005cfh		;6d49
	ld a,(0f3e0h)		;6d4c
	and 0bfh		;6d4f
	ld (0f3e0h),a		;6d51
	out (099h),a		;6d54
	ld a,081h		;6d56
	out (099h),a		;6d58
	ld hl,0c7ceh		;6d5a
	call 002e9h		;6d5d
	ld a,012h		;6d60
	call 0cc10h		;6d62
	ld hl,08840h		;6d65
	scf			;6d68
	ld de,00000h		;6d69
	call 001fdh		;6d6c
	ld a,(0c1fdh)		;6d6f
	and 003h		;6d72
	ld d,000h		;6d74
	ld e,000h		;6d76
	jp z,0c76dh		;6d78
	dec a			;6d7b
	ld d,069h		;6d7c
	ld e,000h		;6d7e
	jp z,0c76dh		;6d80
	dec a			;6d83
	ld d,000h		;6d84
	ld e,039h		;6d86
	jp z,0c76dh		;6d88
	dec a			;6d8b
	ld d,069h		;6d8c
	ld e,039h		;6d8e
	ld a,d			;6d90
	ld (0c7b0h),a		;6d91
	ld a,e			;6d94
	ld (0c7b2h),a		;6d95
	ld hl,0c7b0h		;6d98
	call 00103h		;6d9b
	ld a,(0f3e0h)		;6d9e
	or 042h			;6da1
	ld (0f3e0h),a		;6da3
	out (099h),a		;6da6
	ld a,081h		;6da8
	out (099h),a		;6daa
	call 002f8h		;6dac
	ld a,(0fbeah)		;6daf
	bit 6,a			;6db2
	jp z,0c79fh		;6db4
	ld a,(0fbe9h)		;6db7
	bit 3,a			;6dba
	jp z,0c7adh		;6dbc
	jp 0c789h		;6dbf
	ld hl,0c7eeh		;6dc2
	ld de,0c1b8h		;6dc5
	ld bc,00021h		;6dc8
	ldir			;6dcb
	jp 0c868h		;6dcd
	jp 0c868h		;6dd0
	nop			;6dd3
	nop			;6dd4
	nop			;6dd5
	ld (bc),a		;6dd6
	ld c,h			;6dd7
	nop			;6dd8
	ld d,b			;6dd9
	nop			;6dda
	ld l,c			;6ddb
	nop			;6ddc
	add hl,sp		;6ddd
	nop			;6dde
	nop			;6ddf
	nop			;6de0
	sub b			;6de1
	nop			;6de2
	nop			;6de3
	ld hl,00000h		;6de4
	nop			;6de7
	ret nz			;6de8
	inc bc			;6de9
	ld a,l			;6dea
	nop			;6deb
	ld a,(bc)		;6dec
	nop			;6ded
	nop			;6dee
	nop			;6def
	sub b			;6df0
	ld bc,l6701h		;6df1
	rlca			;6df4
	dec d			;6df5
	inc bc			;6df6
	ld (hl),004h		;6df7
	inc de			;6df9
	ld (bc),a		;6dfa
l6dfbh:
	ld b,(hl)		;6dfb
	dec b			;6dfc
	ld h,003h		;6dfd
	inc d			;6dff
l6e00h:
	ld (bc),a		;6e00
	ld h,003h		;6e01
	inc d			;6e03
	ld (bc),a		;6e04
	ld h,004h		;6e05
	inc d			;6e07
	inc bc			;6e08
	ld (de),a		;6e09
	ld bc,00657h		;6e0a
	inc d			;6e0d
	inc bc			;6e0e
	nop			;6e0f
	nop			;6e10
	nop			;6e11
	nop			;6e12
	nop			;6e13
	nop			;6e14
	nop			;6e15
	nop			;6e16
	nop			;6e17
	nop			;6e18
	nop			;6e19
	nop			;6e1a
	ld bc,00000h		;6e1b
	nop			;6e1e
	nop			;6e1f
	nop			;6e20
	nop			;6e21
	nop			;6e22
	nop			;6e23
	nop			;6e24
	nop			;6e25
	ld (bc),a		;6e26
	nop			;6e27
	nop			;6e28
	nop			;6e29
	nop			;6e2a
	nop			;6e2b
	nop			;6e2c
	nop			;6e2d
	nop			;6e2e
	nop			;6e2f
	nop			;6e30
	inc bc			;6e31
	nop			;6e32
	nop			;6e33
	nop			;6e34
	nop			;6e35
	nop			;6e36
	nop			;6e37
	nop			;6e38
	nop			;6e39
	nop			;6e3a
	nop			;6e3b
	nop			;6e3c
	nop			;6e3d
	nop			;6e3e
	nop			;6e3f
	nop			;6e40
	nop			;6e41
	nop			;6e42
	nop			;6e43
	nop			;6e44
	nop			;6e45
	nop			;6e46
	nop			;6e47
	nop			;6e48
	nop			;6e49
	nop			;6e4a
	nop			;6e4b
	nop			;6e4c
	nop			;6e4d
	nop			;6e4e
	nop			;6e4f
	nop			;6e50
	nop			;6e51
	nop			;6e52
	nop			;6e53
	nop			;6e54
	nop			;6e55
	nop			;6e56
	nop			;6e57
	nop			;6e58
	nop			;6e59
	nop			;6e5a
	ld bc,00400h		;6e5b
	rst 38h			;6e5e
	ld bc,l53c0h		;6e5f
	ld b,l			;6e62
	ld c,h			;6e63
	ld b,l			;6e64
	ld b,e			;6e65
	ld d,h			;6e66
	ld e,e			;6e67
	ld d,e			;6e68
	ld b,e			;6e69
	ld b,e			;6e6a
	ld e,e			;6e6b
	ld d,(hl)		;6e6c
	ld c,a			;6e6d
	ld c,h			;6e6e
	ld d,l			;6e6f
	ld c,l			;6e70
	ld b,l			;6e71
	ld h,a			;6e72
	ld h,a			;6e73
	ld h,a			;6e74
	nop			;6e75
	ld d,e			;6e76
	ld b,l			;6e77
	ld c,h			;6e78
	ld b,l			;6e79
	ld b,e			;6e7a
	ld d,h			;6e7b
	ld e,e			;6e7c
	ld d,b			;6e7d
	ld d,e			;6e7e
	ld b,a			;6e7f
	ld e,e			;6e80
	ld d,(hl)		;6e81
	ld c,a			;6e82
	ld c,h			;6e83
	ld d,l			;6e84
	ld c,l			;6e85
	ld b,l			;6e86
	ld h,a			;6e87
	ld h,a			;6e88
	ld h,a			;6e89
	nop			;6e8a
	ld hl,0c80fh		;6e8b
	call 002e9h		;6e8e
	ld hl,0f3e9h		;6e91
	ld (hl),00bh		;6e94
	inc hl			;6e96
	ld (hl),009h		;6e97
	inc hl			;6e99
l6e9ah:
	ld (hl),009h		;6e9a
	call 005cfh		;6e9c
	ld a,r			;6e9f
	and 007h		;6ea1
	ld b,026h		;6ea3
	jp z,0c8ach		;6ea5
	dec a			;6ea8
	ld b,027h		;6ea9
	jp z,0c8ach		;6eab
	dec a			;6eae
l6eafh:
	ld b,02bh		;6eaf
	jp z,0c8ach		;6eb1
	dec a			;6eb4
	ld b,02ch		;6eb5
	jp z,0c8ach		;6eb7
	dec a			;6eba
	ld b,02dh		;6ebb
	jp z,0c8ach		;6ebd
	dec a			;6ec0
	ld b,030h		;6ec1
	jp z,0c8ach		;6ec3
	dec a			;6ec6
	ld b,031h		;6ec7
	jp z,0c8ach		;6ec9
	dec a			;6ecc
	ld b,021h		;6ecd
	ld a,b			;6ecf
	ld (0c3d2h),a		;6ed0
	ld a,050h		;6ed3
	ld hl,0c83eh		;6ed5
	call 0c430h		;6ed8
	ld a,078h		;6edb
l6eddh:
	ld hl,0c853h		;6edd
	call 0c430h		;6ee0
	ld a,(0c3f4h)		;6ee3
	out (0a8h),a		;6ee6
	ld a,023h		;6ee8
	call 0cc10h		;6eea
	ld hl,08840h		;6eed
	ld de,l4000h		;6ef0
	ld bc,08000h		;6ef3
	ldir			;6ef6
	ld a,(0c3f2h)		;6ef8
	out (0a8h),a		;6efb
	jp l4000h		;6efd
	call 0ca1dh		;6f00
	call 0d227h		;6f03
	call 00512h		;6f06
	call 00509h		;6f09
	call 0cb16h		;6f0c
	ld a,(0c3a8h)		;6f0f
	dec a			;6f12
	jp z,0cb43h		;6f13
	dec a			;6f16
	call z,0cb49h		;6f17
	call 0cbb9h		;6f1a
	jp 0c915h		;6f1d
	jp 0c963h		;6f20
	jp 0c97fh		;6f23
	jp 0c995h		;6f26
	jp 0c9abh		;6f29
	jp 0c9c1h		;6f2c
	jp 0c9d7h		;6f2f
	jp 0c9edh		;6f32
	jp 0ca02h		;6f35
	call 0cc6ch		;6f38
	scf			;6f3b
	call l4000h		;6f3c
	call 0cf91h		;6f3f
	jp z,0c919h		;6f42
	jp nc,0c8e9h		;6f45
	call 0cbb9h		;6f48
	ld b,000h		;6f4b
	ld a,(0c15ah)		;6f4d
	or a			;6f50
	call nz,0ca1bh		;6f51
	ld a,(0c158h)		;6f54
	or a			;6f57
	call nz,0ca1bh		;6f58
	ld a,(0c159h)		;6f5b
	or a			;6f5e
	call nz,0ca1bh		;6f5f
	ld a,(0c15ch)		;6f62
	or a			;6f65
	call nz,0ca1bh		;6f66
	ld a,b			;6f69
	cp 002h			;6f6a
	jp z,0c959h		;6f6c
	ld a,(0c1b6h)		;6f6f
	ld b,a			;6f72
	ld a,(0c1b5h)		;6f73
	add a,b			;6f76
	cp 003h			;6f77
	jp z,0c8fdh		;6f79
	ld a,(0c39bh)		;6f7c
	inc a			;6f7f
	ld (0c39bh),a		;6f80
	jp 0c900h		;6f83
	call 0cce5h		;6f86
	call l4000h		;6f89
	call 0cf91h		;6f8c
	jp z,0c966h		;6f8f
	jp nc,0c8e9h		;6f92
	xor a			;6f95
	ld (0c143h),a		;6f96
	call 0cb75h		;6f99
	call 0cbb9h		;6f9c
	jp 0c900h		;6f9f
	call 0cd14h		;6fa2
	scf			;6fa5
	call l4000h		;6fa6
	call 0cf91h		;6fa9
	jp z,0c983h		;6fac
	jp nc,0c8e9h		;6faf
	call 0cbb9h		;6fb2
	jp 0c903h		;6fb5
	call 0cd4dh		;6fb8
	scf			;6fbb
	call l4000h		;6fbc
	call 0cf91h		;6fbf
	jp z,0c999h		;6fc2
	jp nc,0c8e9h		;6fc5
	call 0cbb9h		;6fc8
	jp 0c906h		;6fcb
	call 0cdb5h		;6fce
	scf			;6fd1
	call l4000h		;6fd2
	call 0cf91h		;6fd5
	jp z,0c9afh		;6fd8
	jp nc,0c8e9h		;6fdb
	call 0cbb9h		;6fde
	jp 0c909h		;6fe1
	call 0cdeeh		;6fe4
	scf			;6fe7
	call l4000h		;6fe8
	call 0cf91h		;6feb
	jp z,0c9c5h		;6fee
	jp nc,0c8e9h		;6ff1
	call 0cbb9h		;6ff4
	jp 0c90ch		;6ff7
	call 0ce1dh		;6ffa
	scf			;6ffd
	call l4000h		;6ffe
	call 0cf91h		;7001
	jp z,0c9dbh		;7004
	jp nc,0c8e9h		;7007
	call 0cbb9h		;700a
	jp 0c90fh		;700d
	call 0ce4ch		;7010
	call l4000h		;7013
	call 0cf91h		;7016
	jp z,0c9f0h		;7019
	jp nc,0c8e9h		;701c
	call 0cbb9h		;701f
	jp 0c912h		;7022
	call 0ce7bh		;7025
	scf			;7028
l7029h:
	call l4000h		;7029
	call 0cf91h		;702c
	jp z,0ca06h		;702f
	jp nc,0c8e9h		;7032
	call 0cbb9h		;7035
	call 0cb8dh		;7038
	jp 0c8ddh		;703b
	inc b			;703e
	ret			;703f
	xor a			;7040
	ld (0c103h),a		;7041
	inc a			;7044
	ld (0c102h),a		;7045
	inc a			;7048
	ld (0c101h),a		;7049
	inc a			;704c
	ld (0c100h),a		;704d
	ld hl,0f3e9h		;7050
	ld (hl),00bh		;7053
	inc hl			;7055
	ld (hl),009h		;7056
	inc hl			;7058
	ld (hl),009h		;7059
	call 005cfh		;705b
	xor a			;705e
	out (099h),a		;705f
	ld a,097h		;7061
	out (099h),a		;7063
	xor a			;7065
	out (099h),a		;7066
	ld a,092h		;7068
	out (099h),a		;706a
	ld hl,0cad4h		;706c
	call 00103h		;706f
	ld hl,0cae3h		;7072
	ld de,0c1a3h		;7075
	ld bc,0000dh		;7078
	ldir			;707b
	xor a			;707d
	ld (0f3dbh),a		;707e
	ld (0c13dh),a		;7081
	ld (0c143h),a		;7084
	ld (0c309h),a		;7087
	ld (0c14fh),a		;708a
	ld (0c152h),a		;708d
	ld (0c146h),a		;7090
	ld (0c140h),a		;7093
	ld (0c14dh),a		;7096
	ld (0c13fh),a		;7099
	ld (0c116h),a		;709c
	ld (0c15bh),a		;709f
	ld (0c142h),a		;70a2
	ld a,002h		;70a5
	ld (0c159h),a		;70a7
	ld a,002h		;70aa
	ld (0c15ah),a		;70ac
	ld a,001h		;70af
	ld (0c158h),a		;70b1
	ld (0c15ch),a		;70b4
	xor a			;70b7
	ld (0c14eh),a		;70b8
	ld (0c150h),a		;70bb
	ld (0c153h),a		;70be
	ld a,005h		;70c1
	ld (0c157h),a		;70c3
	ld a,001h		;70c6
	ld (0c1b6h),a		;70c8
	ld a,001h		;70cb
	ld (0c1b2h),a		;70cd
	ld a,002h		;70d0
	ld (0c1b5h),a		;70d2
	ld a,002h		;70d5
	ld (0c113h),a		;70d7
	ld a,000h		;70da
	ld (0c39bh),a		;70dc
	ld a,00ah		;70df
	ld (0c155h),a		;70e1
	ld a,(0c158h)		;70e4
	or a			;70e7
	ld a,00ah		;70e8
	ld a,049h		;70ea
	jp z,0cad0h		;70ec
	ld a,014h		;70ef
	ld a,049h		;70f1
	ld (0c13eh),a		;70f3
	ret			;70f6
	nop			;70f7
	nop			;70f8
	nop			;70f9
	nop			;70fa
	nop			;70fb
	nop			;70fc
	nop			;70fd
	nop			;70fe
	nop			;70ff
	ld bc,00400h		;7100
	sbc a,c			;7103
	ld bc,005c0h		;7104
	ret nz			;7107
	ret nc			;7108
	ret po			;7109
	ret nc			;710a
	ret po			;710b
	ret nc			;710c
	ret nz			;710d
	ret nc			;710e
	ret po			;710f
	ret nc			;7110
	ret po			;7111
	ret nc			;7112
	push af			;7113
	ld a,001h		;7114
	out (099h),a		;7116
	ld a,08fh		;7118
	out (099h),a		;711a
	in a,(099h)		;711c
	xor a			;711e
	out (099h),a		;711f
	ld a,08fh		;7121
	out (099h),a		;7123
	in a,(099h)		;7125
	pop af			;7127
	ei			;7128
	ret			;7129
	nop			;712a
	nop			;712b
	nop			;712c
	nop			;712d
	nop			;712e
	nop			;712f
	nop			;7130
	nop			;7131
	nop			;7132
	ld bc,00300h		;7133
	nop			;7136
	ld bc,03ac0h		;7137
	call p,0d3c3h		;713a
	xor b			;713d
	ld a,021h		;713e
	call 0cc10h		;7140
	ld hl,09181h		;7143
	call 0cee9h		;7146
	call l4000h		;7149
	call 005cfh		;714c
	ld a,(0f3e0h)		;714f
	and 0bfh		;7152
	ld (0f3e0h),a		;7154
	out (099h),a		;7157
	ld a,081h		;7159
	out (099h),a		;715b
	ld hl,0cad4h		;715d
	call 00103h		;7160
	jp 0d22ah		;7163
	call 0cb49h		;7166
	jp 0c8e9h		;7169
	ld a,034h		;716c
	ld (0c3d2h),a		;716e
	ld a,(0c3f5h)		;7171
	out (0a8h),a		;7174
	ld a,00dh		;7176
	call 0cc4eh		;7178
	ld hl,08c0dh		;717b
	xor a			;717e
	ld de,08000h		;717f
	call 001fdh		;7182
	ld a,(0c3f4h)		;7185
	out (0a8h),a		;7188
	ld a,01ah		;718a
	call 0cc4eh		;718c
	ld hl,0aae1h		;718f
	call 0cee9h		;7192
	jp l4000h		;7195
	ld a,036h		;7198
	ld (0c3d2h),a		;719a
	ld a,(0c3f4h)		;719d
	out (0a8h),a		;71a0
	ld a,01eh		;71a2
	call 0cc10h		;71a4
	ld hl,0b9d8h		;71a7
	call 0cee9h		;71aa
	jp l4000h		;71ad
	ld a,037h		;71b0
	ld (0c3d2h),a		;71b2
	ld a,(0c3f5h)		;71b5
	out (0a8h),a		;71b8
	ld a,00fh		;71ba
	call 0cc4eh		;71bc
	ld hl,l7cd3h		;71bf
	scf			;71c2
	ld de,00000h		;71c3
	call 001fdh		;71c6
	ld a,(0c3f4h)		;71c9
	out (0a8h),a		;71cc
	ld a,014h		;71ce
	call 0cc10h		;71d0
	ld hl,0ab11h		;71d3
	call 0cee9h		;71d6
	jp l4000h		;71d9
	ld a,(0c3f4h)		;71dc
	out (0a8h),a		;71df
	ld a,023h		;71e1
	call 0cc10h		;71e3
	ld hl,08281h		;71e6
	call 0cee9h		;71e9
	jp l4000h		;71ec
	di			;71ef
	ld (0c3f6h),a		;71f0
	ld (05000h),a		;71f3
	ei			;71f6
	ret			;71f7
	di			;71f8
	ld (0c3f7h),a		;71f9
	ld (07000h),a		;71fc
	ei			;71ff
	ret			;7200
	di			;7201
	ld (0c3f8h),a		;7202
	ld (09000h),a		;7205
	ei			;7208
	ret			;7209
	di			;720a
	ld (0c3f9h),a		;720b
	ld (0b000h),a		;720e
	ei			;7211
	ret			;7212
	di			;7213
	ld (0c3f6h),a		;7214
	ld (05000h),a		;7217
	inc a			;721a
	ld (0c3f7h),a		;721b
	ld (07000h),a		;721e
	ei			;7221
	ret			;7222
	di			;7223
	ld (0c3f7h),a		;7224
	ld (07000h),a		;7227
	inc a			;722a
	ld (0c3f8h),a		;722b
	ld (09000h),a		;722e
	ei			;7231
	ret			;7232
	di			;7233
	ld (0c3f8h),a		;7234
	ld (09000h),a		;7237
	inc a			;723a
	ld (0c3f9h),a		;723b
	ld (0b000h),a		;723e
	ei			;7241
	ret			;7242
	di			;7243
	ld (0c3f6h),a		;7244
	ld (05000h),a		;7247
	inc a			;724a
	ld (0c3f7h),a		;724b
	ld (07000h),a		;724e
	inc a			;7251
	ld (0c3f8h),a		;7252
	ld (09000h),a		;7255
	ei			;7258
	ret			;7259
	di			;725a
	ld (0c3f7h),a		;725b
	ld (07000h),a		;725e
	inc a			;7261
	ld (0c3f8h),a		;7262
	ld (09000h),a		;7265
	inc a			;7268
	ld (0c3f9h),a		;7269
	ld (0b000h),a		;726c
	ei			;726f
	ret			;7270
	di			;7271
	ld (0c3f6h),a		;7272
	ld (05000h),a		;7275
	inc a			;7278
	ld (0c3f7h),a		;7279
	ld (07000h),a		;727c
	inc a			;727f
	ld (0c3f8h),a		;7280
	ld (09000h),a		;7283
	inc a			;7286
	ld (0c3f9h),a		;7287
	ld (0b000h),a		;728a
	ei			;728d
	ret			;728e
	ld hl,0cf0ah		;728f
	call 00103h		;7292
	ld a,027h		;7295
	ld (0c3d3h),a		;7297
	ld a,(0c3f5h)		;729a
	out (0a8h),a		;729d
	ld a,002h		;729f
	call 0cc4eh		;72a1
	ld hl,l4000h		;72a4
	scf			;72a7
	ld de,08000h		;72a8
	call 001fdh		;72ab
	ld hl,l6eafh		;72ae
	scf			;72b1
	ld de,01000h		;72b2
	call 001fdh		;72b5
	ld a,(0c3f4h)		;72b8
	out (0a8h),a		;72bb
	ld a,036h		;72bd
	call 0cbe7h		;72bf
	ld hl,0a641h		;72c2
	ld de,l4000h		;72c5
	ld bc,019bfh		;72c8
	ldir			;72cb
	ld a,02fh		;72cd
	call 0cbe7h		;72cf
	ld hl,0a7c1h		;72d2
	ld de,059bfh		;72d5
	ld bc,0183fh		;72d8
	ldir			;72db
	ld a,02eh		;72dd
	call 0cbe7h		;72df
	ld hl,0ac81h		;72e2
	ld de,071feh		;72e5
	ld bc,00e02h		;72e8
	ldir			;72eb
	ld a,(0c3f3h)		;72ed
	out (0a8h),a		;72f0
	ld a,02eh		;72f2
	call 0cbcch		;72f4
	ld hl,l5a83h		;72f7
	ld de,08000h		;72fa
	ld bc,0002dh		;72fd
	ldir			;7300
	ld a,(0c3f2h)		;7302
	out (0a8h),a		;7305
	ret			;7307
	ld hl,0cf0ah		;7308
	call 00103h		;730b
	ld a,029h		;730e
	ld (0c3d3h),a		;7310
	ld a,(0c3f5h)		;7313
	out (0a8h),a		;7316
	ld a,002h		;7318
	call 0cc4eh		;731a
	ld hl,08bd9h		;731d
	scf			;7320
	ld de,08000h		;7321
	call 001fdh		;7324
	ld a,(0c3f4h)		;7327
	out (0a8h),a		;732a
	ld a,037h		;732c
	call 0cc10h		;732e
	ld hl,08941h		;7331
	jp 0cee9h		;7334
	ld hl,0cf0ah		;7337
	call 00103h		;733a
	ld a,02bh		;733d
	ld (0c3d3h),a		;733f
	ld a,(0c3f5h)		;7342
	out (0a8h),a		;7345
	ld a,003h		;7347
	call 0cc4eh		;7349
	ld hl,08376h		;734c
	scf			;734f
	ld de,08000h		;7350
	call 001fdh		;7353
	ld hl,0a85dh		;7356
	scf			;7359
	ld de,01000h		;735a
	call 001fdh		;735d
	ld a,(0c3f4h)		;7360
	out (0a8h),a		;7363
	ld a,016h		;7365
	call 0cc10h		;7367
	ld hl,08000h		;736a
	jp 0cee9h		;736d
	ld hl,0cf0ah		;7370
	call 00103h		;7373
	ld a,02ch		;7376
	ld (0c3d3h),a		;7378
	ld a,(0c3f5h)		;737b
	out (0a8h),a		;737e
	ld a,005h		;7380
	call 0cc4eh		;7382
	ld hl,076d6h		;7385
	xor a			;7388
	ld de,00000h		;7389
	call 001fdh		;738c
	ld hl,0cd97h		;738f
	call 00103h		;7392
	ld hl,0cda6h		;7395
	call 00103h		;7398
	ld a,006h		;739b
	call 0cc4eh		;739d
	ld hl,0841dh		;73a0
	scf			;73a3
	ld de,00b00h		;73a4
	call 001fdh		;73a7
	ld a,(0c3f4h)		;73aa
	out (0a8h),a		;73ad
	ld a,016h		;73af
	call 0cc37h		;73b1
	ld hl,08dfch		;73b4
	jp 0cee9h		;73b7
	nop			;73ba
	nop			;73bb
	nop			;73bc
	nop			;73bd
	nop			;73be
	nop			;73bf
	nop			;73c0
	inc bc			;73c1
	nop			;73c2
	ld bc,000c0h		;73c3
	nop			;73c6
	nop			;73c7
	ret nc			;73c8
	ld a,(hl)		;73c9
	nop			;73ca
	ret nz			;73cb
	nop			;73cc
	ld a,(hl)		;73cd
	nop			;73ce
	ret nz			;73cf
	inc bc			;73d0
	add a,d			;73d1
	nop			;73d2
	djnz l73d5h		;73d3
l73d5h:
	nop			;73d5
	nop			;73d6
	ret nc			;73d7
	ld hl,0cf0ah		;73d8
	call 00103h		;73db
	ld a,02dh		;73de
	ld (0c3d3h),a		;73e0
	ld a,(0c3f5h)		;73e3
	out (0a8h),a		;73e6
	ld a,007h		;73e8
	call 0cc4eh		;73ea
	ld hl,08cd9h		;73ed
	scf			;73f0
	ld de,08000h		;73f1
	call 001fdh		;73f4
	ld hl,0a694h		;73f7
	scf			;73fa
	ld de,00c00h		;73fb
	call 001fdh		;73fe
sub_7401h:
	ld a,(0c3f4h)		;7401
	out (0a8h),a		;7404
	ld a,018h		;7406
	call 0cc10h		;7408
	ld hl,0990fh		;740b
	jp 0cee9h		;740e
	ld hl,0cf0ah		;7411
	call 00103h		;7414
	ld a,030h		;7417
	ld (0c3d3h),a		;7419
	ld a,(0c3f5h)		;741c
	out (0a8h),a		;741f
	ld a,008h		;7421
	call 0cc4eh		;7423
	ld hl,09769h		;7426
	scf			;7429
	ld de,08000h		;742a
	call 001fdh		;742d
	ld a,(0c3f4h)		;7430
	out (0a8h),a		;7433
	ld a,01ah		;7435
	call 0cc10h		;7437
	ld hl,08281h		;743a
	jp 0cee9h		;743d
	ld hl,0cf0ah		;7440
	call 00103h		;7443
	ld a,031h		;7446
	ld (0c3d3h),a		;7448
	ld a,(0c3f5h)		;744b
	out (0a8h),a		;744e
	ld a,009h		;7450
	call 0cc4eh		;7452
	ld hl,099d7h		;7455
	scf			;7458
	ld de,08000h		;7459
	call 001fdh		;745c
	ld a,(0c3f4h)		;745f
	out (0a8h),a		;7462
	ld a,01ah		;7464
	call 0cc37h		;7466
	ld hl,09328h		;7469
	jp 0cee9h		;746c
	ld hl,0cf0ah		;746f
	call 00103h		;7472
	ld a,029h		;7475
	ld (0c3d3h),a		;7477
	ld a,(0c3f5h)		;747a
	out (0a8h),a		;747d
	ld a,00ah		;747f
	call 0cc4eh		;7481
	ld hl,096fbh		;7484
	scf			;7487
	ld de,08000h		;7488
	call 001fdh		;748b
	ld a,(0c3f4h)		;748e
	out (0a8h),a		;7491
	ld a,01ah		;7493
	call 0cc4eh		;7495
	ld hl,09487h		;7498
	jp 0cee9h		;749b
	ld hl,0cf0ah		;749e
	call 00103h		;74a1
	ld a,021h		;74a4
	ld (0c3d3h),a		;74a6
	ld a,(0c3f5h)		;74a9
	out (0a8h),a		;74ac
	ld a,00bh		;74ae
	call 0cc4eh		;74b0
	ld hl,08aech		;74b3
	scf			;74b6
	ld de,01000h		;74b7
	call 001fdh		;74ba
	ld hl,0cf19h		;74bd
	call 00103h		;74c0
	ld hl,0cf28h		;74c3
	call 00103h		;74c6
	ld a,00ch		;74c9
	call 0cc4eh		;74cb
	ld hl,091f5h		;74ce
	xor a			;74d1
	ld de,01000h		;74d2
	call 001fdh		;74d5
	ld hl,0cf37h		;74d8
	call 00103h		;74db
	ld hl,0cf46h		;74de
	call 00103h		;74e1
	ld hl,0cf55h		;74e4
	call 00103h		;74e7
	ld hl,0cf64h		;74ea
	call 00103h		;74ed
	ld hl,0cf73h		;74f0
	call 00103h		;74f3
	ld hl,0cf82h		;74f6
	call 00103h		;74f9
	ld a,(0c3f4h)		;74fc
	out (0a8h),a		;74ff
l7501h:
	ld a,01eh		;7501
	call 0cc10h		;7503
	ld hl,08000h		;7506
	jp 0cee9h		;7509
	ld de,l4000h		;750c
	ld bc,l4000h		;750f
	ldir			;7512
	ld a,(0c3f2h)		;7514
	out (0a8h),a		;7517
	ld hl,l4000h		;7519
	ld de,08000h		;751c
	ld bc,l4000h		;751f
	ldir			;7522
	ld hl,08000h		;7524
	ld de,l4000h		;7527
	jp 001a0h		;752a
	nop			;752d
	nop			;752e
	nop			;752f
	nop			;7530
	nop			;7531
	nop			;7532
	ld d,002h		;7533
	nop			;7535
	ld bc,0000ah		;7536
	sbc a,c			;7539
	ld bc,000c0h		;753a
	nop			;753d
	nop			;753e
	nop			;753f
	nop			;7540
	nop			;7541
	nop			;7542
	inc bc			;7543
	nop			;7544
	ld bc,000c0h		;7545
	sbc a,c			;7548
	ld bc,000c0h		;7549
	nop			;754c
	jr nz,l7551h		;754d
	nop			;754f
	nop			;7550
l7551h:
	nop			;7551
	inc bc			;7552
	nop			;7553
	ld bc,000c0h		;7554
	nop			;7557
	nop			;7558
	sbc a,b			;7559
	jr nz,l755ch		;755a
l755ch:
	ld h,b			;755c
	nop			;755d
	jr nz,l7560h		;755e
l7560h:
	add a,b			;7560
	ld (bc),a		;7561
	ld b,b			;7562
	nop			;7563
	ld b,b			;7564
	nop			;7565
	nop			;7566
	nop			;7567
	ret nc			;7568
	nop			;7569
	nop			;756a
	add a,b			;756b
	nop			;756c
	nop			;756d
	nop			;756e
	and b			;756f
	ld (bc),a		;7570
	and b			;7571
	nop			;7572
	ld c,b			;7573
	nop			;7574
	nop			;7575
	nop			;7576
	ret nc			;7577
	add a,b			;7578
	nop			;7579
	jr nz,l757ch		;757a
l757ch:
	add a,b			;757c
	nop			;757d
	ld b,b			;757e
	ld (bc),a		;757f
	ld b,b			;7580
	nop			;7581
	add a,b			;7582
	nop			;7583
	nop			;7584
	nop			;7585
	ret nc			;7586
	ret nz			;7587
	nop			;7588
	ld b,b			;7589
	nop			;758a
	ret nz			;758b
	nop			;758c
	ld h,b			;758d
	ld (bc),a		;758e
	ld b,b			;758f
	nop			;7590
	ld b,b			;7591
	nop			;7592
	nop			;7593
	nop			;7594
	ret nc			;7595
	ret nz			;7596
	nop			;7597
	add a,b			;7598
	nop			;7599
	ret nz			;759a
	nop			;759b
	and b			;759c
	ld (bc),a		;759d
	jr nz,l75a0h		;759e
l75a0h:
	jr nz,l75a2h		;75a0
l75a2h:
	nop			;75a2
	nop			;75a3
	ret nc			;75a4
	ret po			;75a5
	nop			;75a6
	add a,b			;75a7
	nop			;75a8
	ret po			;75a9
	nop			;75aa
	add a,b			;75ab
	inc bc			;75ac
	jr nz,l75afh		;75ad
l75afh:
	ld b,b			;75af
	nop			;75b0
	nop			;75b1
	nop			;75b2
	ret nc			;75b3
	ld a,(0c395h)		;75b4
	or a			;75b7
	jp z,0cf9ch		;75b8
	sub 00ah		;75bb
	scf			;75bd
	ret			;75be
	ld a,(0c1b5h)		;75bf
	ld (0c113h),a		;75c2
	ld a,(0c158h)		;75c5
	or a			;75c8
	ld c,00fh		;75c9
	jp z,0cfadh		;75cb
	ld c,019h		;75ce
	ld a,(0c13eh)		;75d0
	cp c			;75d3
	jp c,0cfb9h		;75d4
	sub 005h		;75d7
	ld (0c13eh),a		;75d9
	ld a,(0c155h)		;75dc
	cp 00fh			;75df
	jp c,0cfc6h		;75e1
	sub 004h		;75e4
	ld (0c155h),a		;75e6
	call 005cfh		;75e9
	ld a,011h		;75ec
	ld (0c5e3h),a		;75ee
	ld a,001h		;75f1
	ld (0c5e4h),a		;75f3
	ld a,077h		;75f6
	ld (0c5e6h),a		;75f8
	ld a,007h		;75fb
	ld (0c5e7h),a		;75fd
	ld a,001h		;7600
	ld (0c5eah),a		;7602
	xor a			;7605
	ld (0c5e9h),a		;7606
	ld (0c5ebh),a		;7609
	ld (0c5ech),a		;760c
	ld (0c1b3h),a		;760f
	ld (0c1b4h),a		;7612
	ld (0d105h),a		;7615
	ld (0d106h),a		;7618
	ld a,014h		;761b
	ld (0c3d2h),a		;761d
	ld a,005h		;7620
	call 0050fh		;7622
	ld a,004h		;7625
	call 0050fh		;7627
	call 0d1ebh		;762a
	ld a,(0c1b2h)		;762d
	dec a			;7630
	ld (0c1b2h),a		;7631
	cp 0ffh			;7634
	jp z,0d04ah		;7636
	ld a,05ah		;7639
	ld hl,0c4b6h		;763b
	call 0c430h		;763e
	ld a,06eh		;7641
	ld hl,0c4c0h		;7643
	call 0c430h		;7646
	ld a,001h		;7649
	ld (0d103h),a		;764b
	xor a			;764e
	ld (0d102h),a		;764f
	ld (0d104h),a		;7652
	ld a,(0d105h)		;7655
	or a			;7658
	jp z,0d032h		;7659
	di			;765c
	ld a,005h		;765d
	call 0050fh		;765f
	ei			;7662
	halt			;7663
	halt			;7664
	call 0d204h		;7665
	ld a,(0d106h)		;7668
	or a			;766b
	ret			;766c
	ld hl,0c4b6h		;766d
	ld a,064h		;7670
	call 0c430h		;7672
	ld a,001h		;7675
	ld (0d102h),a		;7677
	xor a			;767a
	ld (0d103h),a		;767b
	ld (0d104h),a		;767e
	ld a,(0d105h)		;7681
	or a			;7684
	jp z,0d05eh		;7685
	di			;7688
	ld a,005h		;7689
	call 0050fh		;768b
	ei			;768e
	halt			;768f
	halt			;7690
	call 0d204h		;7691
	ld a,(0d106h)		;7694
	or a			;7697
	ret			;7698
	call 0d212h		;7699
	ld a,011h		;769c
	ld (0c5e3h),a		;769e
	ld a,001h		;76a1
	ld (0c5e4h),a		;76a3
	ld a,077h		;76a6
	ld (0c5e6h),a		;76a8
	ld a,007h		;76ab
	ld (0c5e7h),a		;76ad
	ld a,001h		;76b0
	ld (0c5eah),a		;76b2
	xor a			;76b5
	ld (0c5e9h),a		;76b6
	ld (0c5ebh),a		;76b9
	ld (0c5ech),a		;76bc
	ld hl,0c4b6h		;76bf
	ld a,064h		;76c2
	call 0c430h		;76c4
	xor a			;76c7
	ld (0d103h),a		;76c8
	ld (0d104h),a		;76cb
	ld a,001h		;76ce
	ld (0d102h),a		;76d0
	ret			;76d3
	xor a			;76d4
	ld (0d102h),a		;76d5
	ld (0d103h),a		;76d8
	call 0d212h		;76db
	ld a,(0c1b2h)		;76de
	add a,05ch		;76e1
	ld (0c4e2h),a		;76e3
	ld a,0bah		;76e6
	ld hl,0c4dah		;76e8
	call 0c430h		;76eb
	ld a,064h		;76ee
	ld hl,0c4cfh		;76f0
	call 0c430h		;76f3
	ld a,011h		;76f6
	ld (0c5e3h),a		;76f8
	ld a,001h		;76fb
	ld (0c5e4h),a		;76fd
	ld a,077h		;7700
	ld (0c5e6h),a		;7702
	ld a,007h		;7705
	ld (0c5e7h),a		;7707
	ld a,001h		;770a
	ld (0c5eah),a		;770c
	xor a			;770f
	ld (0c5e9h),a		;7710
	ld (0c5ebh),a		;7713
	ld (0c5ech),a		;7716
	ld (0c1b3h),a		;7719
	ld (0c1b4h),a		;771c
	ld a,001h		;771f
	ld (0d104h),a		;7721
	ret			;7724
	nop			;7725
	nop			;7726
	nop			;7727
	nop			;7728
	nop			;7729
	push bc			;772a
	push de			;772b
	push hl			;772c
	exx			;772d
	ex af,af'		;772e
	push af			;772f
	push bc			;7730
	push de			;7731
	push hl			;7732
	push iy			;7733
	push ix			;7735
	ld a,(0d102h)		;7737
	or a			;773a
	call nz,0d17bh		;773b
	ld a,(0d103h)		;773e
	or a			;7741
	call nz,0d199h		;7742
	ld a,(0d104h)		;7745
	or a			;7748
	call nz,0d1bch		;7749
	call 002f8h		;774c
	call 00313h		;774f
	call 0050ch		;7752
	pop ix			;7755
	pop iy			;7757
	pop hl			;7759
	pop de			;775a
	pop bc			;775b
	pop af			;775c
	ex af,af'		;775d
	exx			;775e
	pop hl			;775f
	pop de			;7760
	pop bc			;7761
	pop af			;7762
	ei			;7763
	ret			;7764
	ld a,(0fbech)		;7765
	bit 1,a			;7768
	jp z,0d150h		;776a
	ld a,(0c39ah)		;776d
	bit 5,a			;7770
	ret z			;7772
	ld a,(0c1b4h)		;7773
	or a			;7776
	ret nz			;7777
	ld a,001h		;7778
	ld (0c1b3h),a		;777a
	ld (0c1b4h),a		;777d
	ld a,(0c5ebh)		;7780
	or a			;7783
	ret nz			;7784
	ld a,(0c5e3h)		;7785
l7788h:
	ld (0c5e6h),a		;7788
	ld a,(0c5e4h)		;778b
	ld (0c5e7h),a		;778e
	ld a,001h		;7791
	ld (0c5ebh),a		;7793
	xor a			;7796
	ld (0c5ech),a		;7797
	ld (0c5eah),a		;779a
	ret			;779d
	ld a,(0c5eah)		;779e
	or a			;77a1
l77a2h:
	jp nz,0c559h		;77a2
	ld a,(0c5ech)		;77a5
	or a			;77a8
	jp nz,0c598h		;77a9
	ld a,(0c5ebh)		;77ac
	or a			;77af
	jp nz,0c5aah		;77b0
	ld a,001h		;77b3
	ld (0d105h),a		;77b5
	ld (0d106h),a		;77b8
	ret			;77bb
	call 0d142h		;77bc
	ld a,(0c5eah)		;77bf
	or a			;77c2
	jp nz,0c559h		;77c3
	ld a,(0c5ech)		;77c6
	or a			;77c9
	jp nz,0c598h		;77ca
	ld a,(0c5ebh)		;77cd
	or a			;77d0
	jp nz,0c5aah		;77d1
	ld a,(0c1b3h)		;77d4
	or a			;77d7
	jp nz,0d0b1h		;77d8
	call 0d076h		;77db
	ret			;77de
	ld a,(0c5eah)		;77df
	or a			;77e2
	jp nz,0c559h		;77e3
	call 0d142h		;77e6
	ld a,(0c5ech)		;77e9
	or a			;77ec
	jp nz,0c598h		;77ed
	ld a,(0c5ebh)		;77f0
	or a			;77f3
	jp nz,0c5aah		;77f4
	ld a,001h		;77f7
	ld (0d105h),a		;77f9
	xor a			;77fc
	ld (0d106h),a		;77fd
l7800h:
	ret			;7800
	push af			;7801
	in a,(099h)		;7802
	rlca			;7804
	jp c,0d107h		;7805
	pop af			;7808
	ei			;7809
	ret			;780a
	nop			;780b
	nop			;780c
	nop			;780d
	di			;780e
	ld hl,00038h		;780f
	ld de,0d1e8h		;7812
	ld bc,00003h		;7815
	ldir			;7818
	ld hl,0d1deh		;781a
	ld (00039h),hl		;781d
	ld a,0c3h		;7820
	ld (00038h),a		;7822
	ei			;7825
	ret			;7826
	ld hl,0d1e8h		;7827
	ld de,00038h		;782a
	di			;782d
	ld bc,00003h		;782e
sub_7831h:
	ldir			;7831
	ei			;7833
	ret			;7834
	ld hl,0d218h		;7835
	jp 00103h		;7838
	nop			;783b
	nop			;783c
	nop			;783d
	nop			;783e
	nop			;783f
	nop			;7840
	nop			;7841
	nop			;7842
	nop			;7843
	ld bc,00100h		;7844
	nop			;7847
	ld bc,0cdc0h		;7848
	jp m,03ac5h		;784b
	push af			;784e
	jp 0a8d3h		;784f
	ld a,00fh		;7852
	call 0cc4eh		;7854
	ld hl,0a08eh		;7857
	xor a			;785a
	ld de,00000h		;785b
	call 001fdh		;785e
	ld hl,0d27dh		;7861
	call 00103h		;7864
	ld hl,0d28ch		;7867
	call 00103h		;786a
	ld hl,0d29bh		;786d
	call 00103h		;7870
	ld hl,0d2aah		;7873
	call 00103h		;7876
	ld hl,0d2b9h		;7879
	call 00103h		;787c
	ld hl,0d2c8h		;787f
	call 00103h		;7882
	ld hl,0d26eh		;7885
	call 00103h		;7888
	ld a,(0c3f2h)		;788b
	out (0a8h),a		;788e
	ret			;7890
	nop			;7891
	nop			;7892
	ld hl,00000h		;7893
	nop			;7896
	ret nz			;7897
	inc bc			;7898
	ld a,l			;7899
	nop			;789a
	ld a,(bc)		;789b
	nop			;789c
	nop			;789d
	nop			;789e
	sub b			;789f
	nop			;78a0
	nop			;78a1
	nop			;78a2
	nop			;78a3
	nop			;78a4
	nop			;78a5
	rst 18h			;78a6
	inc bc			;78a7
	nop			;78a8
	ld bc,00021h		;78a9
	nop			;78ac
	nop			;78ad
	sub b			;78ae
	adc a,b			;78af
	nop			;78b0
	ld hl,00000h		;78b1
l78b4h:
	nop			;78b4
	jp z,07803h		;78b5
	nop			;78b8
	inc d			;78b9
	nop			;78ba
	nop			;78bb
	nop			;78bc
	sub b			;78bd
	nop			;78be
	nop			;78bf
	rst 18h			;78c0
	inc bc			;78c1
	djnz l78c4h		;78c2
l78c4h:
	inc b			;78c4
	ld (bc),a		;78c5
	pop hl			;78c6
	nop			;78c7
	ld de,00000h		;78c8
	nop			;78cb
	sub b			;78cc
	nop			;78cd
	nop			;78ce
	nop			;78cf
	nop			;78d0
	jr z,l78d3h		;78d1
l78d3h:
	ld b,002h		;78d3
	ld (hl),000h		;78d5
	ld b,000h		;78d7
	sbc a,c			;78d9
	ld bc,000c0h		;78da
	nop			;78dd
	nop			;78de
	nop			;78df
	jp pe,01000h		;78e0
	ld (bc),a		;78e3
	ld h,000h		;78e4
	ld b,000h		;78e6
	sbc a,c			;78e8
	ld bc,0dbc0h		;78e9
	nop			;78ec
	ex de,hl		;78ed
	inc bc			;78ee
	ld (hl),000h		;78ef
	ld b,002h		;78f1
	inc h			;78f3
	nop			;78f4
	dec b			;78f5
	nop			;78f6
	nop			;78f7
l78f8h:
	nop			;78f8
	sub b			;78f9
	rst 38h			;78fa
	rst 38h			;78fb
	rst 38h			;78fc
	rst 38h			;78fd
	rst 38h			;78fe
	rst 38h			;78ff
	rst 38h			;7900
	rst 38h			;7901
	rst 38h			;7902
	rst 38h			;7903
	rst 38h			;7904
	rst 38h			;7905
	rst 38h			;7906
	rst 38h			;7907
	rst 38h			;7908
	rst 38h			;7909
	rst 38h			;790a
	rst 38h			;790b
	rst 38h			;790c
	rst 38h			;790d
	rst 38h			;790e
	rst 38h			;790f
	rst 38h			;7910
	rst 38h			;7911
	rst 38h			;7912
	rst 38h			;7913
	rst 38h			;7914
	rst 38h			;7915
	rst 38h			;7916
	rst 38h			;7917
	rst 38h			;7918
	rst 38h			;7919
	rst 38h			;791a
	rst 38h			;791b
	rst 38h			;791c
	rst 38h			;791d
	rst 38h			;791e
	rst 38h			;791f
	rst 38h			;7920
	rst 38h			;7921
	rst 38h			;7922
	rst 38h			;7923
	rst 38h			;7924
	rst 38h			;7925
	rst 38h			;7926
	rst 38h			;7927
	rst 38h			;7928
	rst 38h			;7929
	rst 38h			;792a
	rst 38h			;792b
	rst 38h			;792c
	rst 38h			;792d
	rst 38h			;792e
	rst 38h			;792f
	rst 38h			;7930
	rst 38h			;7931
	rst 38h			;7932
	rst 38h			;7933
	rst 38h			;7934
	rst 38h			;7935
	rst 38h			;7936
	rst 38h			;7937
	rst 38h			;7938
	rst 38h			;7939
	rst 38h			;793a
	rst 38h			;793b
	rst 38h			;793c
	rst 38h			;793d
	rst 38h			;793e
	rst 38h			;793f
	rst 38h			;7940
	rst 38h			;7941
	rst 38h			;7942
	rst 38h			;7943
	rst 38h			;7944
	rst 38h			;7945
	rst 38h			;7946
	rst 38h			;7947
	rst 38h			;7948
	rst 38h			;7949
	rst 38h			;794a
	rst 38h			;794b
	rst 38h			;794c
	rst 38h			;794d
	rst 38h			;794e
	rst 38h			;794f
	rst 38h			;7950
	rst 38h			;7951
	rst 38h			;7952
	rst 38h			;7953
	rst 38h			;7954
	rst 38h			;7955
	rst 38h			;7956
	rst 38h			;7957
	rst 38h			;7958
	rst 38h			;7959
	rst 38h			;795a
	rst 38h			;795b
	rst 38h			;795c
	rst 38h			;795d
	rst 38h			;795e
	rst 38h			;795f
	rst 38h			;7960
	rst 38h			;7961
	rst 38h			;7962
	rst 38h			;7963
	rst 38h			;7964
	rst 38h			;7965
	rst 38h			;7966
	rst 38h			;7967
	rst 38h			;7968
	rst 38h			;7969
	rst 38h			;796a
	rst 38h			;796b
	rst 38h			;796c
	rst 38h			;796d
	rst 38h			;796e
	rst 38h			;796f
	rst 38h			;7970
	rst 38h			;7971
	rst 38h			;7972
	rst 38h			;7973
	rst 38h			;7974
	rst 38h			;7975
	rst 38h			;7976
	rst 38h			;7977
	rst 38h			;7978
	rst 38h			;7979
	rst 38h			;797a
	rst 38h			;797b
	rst 38h			;797c
	rst 38h			;797d
	rst 38h			;797e
	rst 38h			;797f
	rst 38h			;7980
	rst 38h			;7981
	rst 38h			;7982
	rst 38h			;7983
	rst 38h			;7984
	rst 38h			;7985
	rst 38h			;7986
	rst 38h			;7987
	rst 38h			;7988
	rst 38h			;7989
	rst 38h			;798a
	rst 38h			;798b
	rst 38h			;798c
	rst 38h			;798d
	rst 38h			;798e
	rst 38h			;798f
	rst 38h			;7990
	rst 38h			;7991
	rst 38h			;7992
	rst 38h			;7993
	rst 38h			;7994
	rst 38h			;7995
	rst 38h			;7996
	rst 38h			;7997
	rst 38h			;7998
	rst 38h			;7999
	rst 38h			;799a
	rst 38h			;799b
	rst 38h			;799c
	rst 38h			;799d
	rst 38h			;799e
	rst 38h			;799f
	rst 38h			;79a0
	rst 38h			;79a1
	rst 38h			;79a2
	rst 38h			;79a3
	rst 38h			;79a4
	rst 38h			;79a5
	rst 38h			;79a6
	rst 38h			;79a7
	rst 38h			;79a8
	rst 38h			;79a9
	rst 38h			;79aa
	rst 38h			;79ab
	rst 38h			;79ac
	rst 38h			;79ad
	rst 38h			;79ae
	rst 38h			;79af
	rst 38h			;79b0
	rst 38h			;79b1
	rst 38h			;79b2
	rst 38h			;79b3
	rst 38h			;79b4
	rst 38h			;79b5
	rst 38h			;79b6
	rst 38h			;79b7
	rst 38h			;79b8
	rst 38h			;79b9
	rst 38h			;79ba
	rst 38h			;79bb
	rst 38h			;79bc
	rst 38h			;79bd
	rst 38h			;79be
	rst 38h			;79bf
	rst 38h			;79c0
	rst 38h			;79c1
	rst 38h			;79c2
	rst 38h			;79c3
	rst 38h			;79c4
	rst 38h			;79c5
	rst 38h			;79c6
	rst 38h			;79c7
	rst 38h			;79c8
	rst 38h			;79c9
	rst 38h			;79ca
	rst 38h			;79cb
	rst 38h			;79cc
	rst 38h			;79cd
	rst 38h			;79ce
	rst 38h			;79cf
	rst 38h			;79d0
	rst 38h			;79d1
	rst 38h			;79d2
	rst 38h			;79d3
	rst 38h			;79d4
	rst 38h			;79d5
	rst 38h			;79d6
	rst 38h			;79d7
	rst 38h			;79d8
	rst 38h			;79d9
	rst 38h			;79da
	rst 38h			;79db
	rst 38h			;79dc
	rst 38h			;79dd
	rst 38h			;79de
	rst 38h			;79df
l79e0h:
	rst 38h			;79e0
	rst 38h			;79e1
	rst 38h			;79e2
	rst 38h			;79e3
	rst 38h			;79e4
	rst 38h			;79e5
	rst 38h			;79e6
	rst 38h			;79e7
	rst 38h			;79e8
	rst 38h			;79e9
	rst 38h			;79ea
	rst 38h			;79eb
	rst 38h			;79ec
	rst 38h			;79ed
	rst 38h			;79ee
	rst 38h			;79ef
	rst 38h			;79f0
	rst 38h			;79f1
	rst 38h			;79f2
	rst 38h			;79f3
	rst 38h			;79f4
	rst 38h			;79f5
	rst 38h			;79f6
	rst 38h			;79f7
	rst 38h			;79f8
	rst 38h			;79f9
	rst 38h			;79fa
	rst 38h			;79fb
	rst 38h			;79fc
	rst 38h			;79fd
	rst 38h			;79fe
	rst 38h			;79ff
	rst 38h			;7a00
	rst 38h			;7a01
	rst 38h			;7a02
	rst 38h			;7a03
	rst 38h			;7a04
	rst 38h			;7a05
	rst 38h			;7a06
	rst 38h			;7a07
	rst 38h			;7a08
	rst 38h			;7a09
	rst 38h			;7a0a
	rst 38h			;7a0b
	rst 38h			;7a0c
	rst 38h			;7a0d
	rst 38h			;7a0e
	rst 38h			;7a0f
	rst 38h			;7a10
	rst 38h			;7a11
	rst 38h			;7a12
	rst 38h			;7a13
	rst 38h			;7a14
	rst 38h			;7a15
	rst 38h			;7a16
	rst 38h			;7a17
	rst 38h			;7a18
	rst 38h			;7a19
	rst 38h			;7a1a
	rst 38h			;7a1b
	rst 38h			;7a1c
	rst 38h			;7a1d
	rst 38h			;7a1e
	rst 38h			;7a1f
	rst 38h			;7a20
	rst 38h			;7a21
	rst 38h			;7a22
	rst 38h			;7a23
	rst 38h			;7a24
	rst 38h			;7a25
	rst 38h			;7a26
	rst 38h			;7a27
	rst 38h			;7a28
	rst 38h			;7a29
	rst 38h			;7a2a
	rst 38h			;7a2b
	rst 38h			;7a2c
	rst 38h			;7a2d
	rst 38h			;7a2e
	rst 38h			;7a2f
	rst 38h			;7a30
	rst 38h			;7a31
	rst 38h			;7a32
	rst 38h			;7a33
	rst 38h			;7a34
	rst 38h			;7a35
	rst 38h			;7a36
	rst 38h			;7a37
	rst 38h			;7a38
	rst 38h			;7a39
	rst 38h			;7a3a
	rst 38h			;7a3b
	rst 38h			;7a3c
	rst 38h			;7a3d
	rst 38h			;7a3e
	rst 38h			;7a3f
	rst 38h			;7a40
	rst 38h			;7a41
	rst 38h			;7a42
	rst 38h			;7a43
	rst 38h			;7a44
	rst 38h			;7a45
	rst 38h			;7a46
	rst 38h			;7a47
	rst 38h			;7a48
	rst 38h			;7a49
	rst 38h			;7a4a
	rst 38h			;7a4b
	rst 38h			;7a4c
	rst 38h			;7a4d
	rst 38h			;7a4e
sub_7a4fh:
	rst 38h			;7a4f
	rst 38h			;7a50
	rst 38h			;7a51
	rst 38h			;7a52
	rst 38h			;7a53
	rst 38h			;7a54
l7a55h:
	rst 38h			;7a55
	rst 38h			;7a56
	rst 38h			;7a57
	rst 38h			;7a58
	rst 38h			;7a59
	rst 38h			;7a5a
	rst 38h			;7a5b
	rst 38h			;7a5c
	rst 38h			;7a5d
	rst 38h			;7a5e
	rst 38h			;7a5f
	rst 38h			;7a60
	rst 38h			;7a61
	rst 38h			;7a62
	rst 38h			;7a63
	rst 38h			;7a64
	rst 38h			;7a65
	rst 38h			;7a66
	rst 38h			;7a67
	rst 38h			;7a68
	rst 38h			;7a69
	rst 38h			;7a6a
	rst 38h			;7a6b
	rst 38h			;7a6c
	rst 38h			;7a6d
	rst 38h			;7a6e
	rst 38h			;7a6f
	rst 38h			;7a70
	rst 38h			;7a71
	rst 38h			;7a72
	rst 38h			;7a73
	rst 38h			;7a74
	rst 38h			;7a75
	rst 38h			;7a76
	rst 38h			;7a77
	rst 38h			;7a78
	rst 38h			;7a79
	rst 38h			;7a7a
	rst 38h			;7a7b
	rst 38h			;7a7c
	rst 38h			;7a7d
	rst 38h			;7a7e
	rst 38h			;7a7f
	rst 38h			;7a80
	rst 38h			;7a81
	rst 38h			;7a82
	rst 38h			;7a83
	rst 38h			;7a84
	rst 38h			;7a85
	rst 38h			;7a86
	rst 38h			;7a87
	rst 38h			;7a88
	rst 38h			;7a89
	rst 38h			;7a8a
	rst 38h			;7a8b
	rst 38h			;7a8c
	rst 38h			;7a8d
	rst 38h			;7a8e
	rst 38h			;7a8f
	rst 38h			;7a90
	rst 38h			;7a91
	rst 38h			;7a92
	rst 38h			;7a93
	rst 38h			;7a94
	rst 38h			;7a95
	rst 38h			;7a96
	rst 38h			;7a97
	rst 38h			;7a98
	rst 38h			;7a99
	rst 38h			;7a9a
	rst 38h			;7a9b
	rst 38h			;7a9c
	rst 38h			;7a9d
	rst 38h			;7a9e
	rst 38h			;7a9f
	rst 38h			;7aa0
l7aa1h:
	rst 38h			;7aa1
	rst 38h			;7aa2
	rst 38h			;7aa3
	rst 38h			;7aa4
	rst 38h			;7aa5
	rst 38h			;7aa6
	rst 38h			;7aa7
	rst 38h			;7aa8
	rst 38h			;7aa9
	rst 38h			;7aaa
	rst 38h			;7aab
	rst 38h			;7aac
	rst 38h			;7aad
	rst 38h			;7aae
	rst 38h			;7aaf
	rst 38h			;7ab0
	rst 38h			;7ab1
	rst 38h			;7ab2
	rst 38h			;7ab3
	rst 38h			;7ab4
	rst 38h			;7ab5
	rst 38h			;7ab6
	rst 38h			;7ab7
	rst 38h			;7ab8
	rst 38h			;7ab9
	rst 38h			;7aba
	rst 38h			;7abb
	rst 38h			;7abc
	rst 38h			;7abd
	rst 38h			;7abe
	rst 38h			;7abf
	rst 38h			;7ac0
	rst 38h			;7ac1
	rst 38h			;7ac2
	rst 38h			;7ac3
	rst 38h			;7ac4
	rst 38h			;7ac5
	rst 38h			;7ac6
	rst 38h			;7ac7
	rst 38h			;7ac8
	rst 38h			;7ac9
	rst 38h			;7aca
	rst 38h			;7acb
	rst 38h			;7acc
	rst 38h			;7acd
	rst 38h			;7ace
	rst 38h			;7acf
	rst 38h			;7ad0
	rst 38h			;7ad1
	rst 38h			;7ad2
	rst 38h			;7ad3
	rst 38h			;7ad4
	rst 38h			;7ad5
	rst 38h			;7ad6
	rst 38h			;7ad7
	rst 38h			;7ad8
	rst 38h			;7ad9
	rst 38h			;7ada
	rst 38h			;7adb
	rst 38h			;7adc
	rst 38h			;7add
	rst 38h			;7ade
	rst 38h			;7adf
	rst 38h			;7ae0
	rst 38h			;7ae1
	rst 38h			;7ae2
	rst 38h			;7ae3
	rst 38h			;7ae4
	rst 38h			;7ae5
	rst 38h			;7ae6
	rst 38h			;7ae7
	rst 38h			;7ae8
	rst 38h			;7ae9
	rst 38h			;7aea
	rst 38h			;7aeb
	rst 38h			;7aec
	rst 38h			;7aed
	rst 38h			;7aee
	rst 38h			;7aef
	rst 38h			;7af0
	rst 38h			;7af1
	rst 38h			;7af2
	rst 38h			;7af3
	rst 38h			;7af4
	rst 38h			;7af5
	rst 38h			;7af6
	rst 38h			;7af7
	rst 38h			;7af8
	rst 38h			;7af9
	rst 38h			;7afa
	rst 38h			;7afb
	rst 38h			;7afc
	rst 38h			;7afd
	rst 38h			;7afe
	rst 38h			;7aff
	rst 38h			;7b00
	rst 38h			;7b01
	rst 38h			;7b02
	rst 38h			;7b03
	rst 38h			;7b04
	rst 38h			;7b05
	rst 38h			;7b06
	rst 38h			;7b07
	rst 38h			;7b08
	rst 38h			;7b09
	rst 38h			;7b0a
	rst 38h			;7b0b
	rst 38h			;7b0c
	rst 38h			;7b0d
	rst 38h			;7b0e
	rst 38h			;7b0f
	rst 38h			;7b10
	rst 38h			;7b11
	rst 38h			;7b12
	rst 38h			;7b13
	rst 38h			;7b14
	rst 38h			;7b15
	rst 38h			;7b16
	rst 38h			;7b17
	rst 38h			;7b18
	rst 38h			;7b19
	rst 38h			;7b1a
	rst 38h			;7b1b
	rst 38h			;7b1c
	rst 38h			;7b1d
	rst 38h			;7b1e
	rst 38h			;7b1f
	rst 38h			;7b20
	rst 38h			;7b21
	rst 38h			;7b22
	rst 38h			;7b23
	rst 38h			;7b24
	rst 38h			;7b25
	rst 38h			;7b26
	rst 38h			;7b27
	rst 38h			;7b28
	rst 38h			;7b29
	rst 38h			;7b2a
	rst 38h			;7b2b
	rst 38h			;7b2c
	rst 38h			;7b2d
	rst 38h			;7b2e
	rst 38h			;7b2f
	rst 38h			;7b30
	rst 38h			;7b31
l7b32h:
	rst 38h			;7b32
	rst 38h			;7b33
	rst 38h			;7b34
	rst 38h			;7b35
	rst 38h			;7b36
	rst 38h			;7b37
	rst 38h			;7b38
	rst 38h			;7b39
	rst 38h			;7b3a
	rst 38h			;7b3b
	rst 38h			;7b3c
	rst 38h			;7b3d
	rst 38h			;7b3e
	rst 38h			;7b3f
	rst 38h			;7b40
	rst 38h			;7b41
	rst 38h			;7b42
	rst 38h			;7b43
	rst 38h			;7b44
	rst 38h			;7b45
	rst 38h			;7b46
	rst 38h			;7b47
	rst 38h			;7b48
	rst 38h			;7b49
	rst 38h			;7b4a
	rst 38h			;7b4b
	rst 38h			;7b4c
	rst 38h			;7b4d
	rst 38h			;7b4e
	rst 38h			;7b4f
	rst 38h			;7b50
	rst 38h			;7b51
	rst 38h			;7b52
	rst 38h			;7b53
	rst 38h			;7b54
	rst 38h			;7b55
	rst 38h			;7b56
	rst 38h			;7b57
	rst 38h			;7b58
	rst 38h			;7b59
	rst 38h			;7b5a
	rst 38h			;7b5b
	rst 38h			;7b5c
	rst 38h			;7b5d
	rst 38h			;7b5e
	rst 38h			;7b5f
	rst 38h			;7b60
	rst 38h			;7b61
	rst 38h			;7b62
	rst 38h			;7b63
	rst 38h			;7b64
	rst 38h			;7b65
	rst 38h			;7b66
	rst 38h			;7b67
	rst 38h			;7b68
	rst 38h			;7b69
	rst 38h			;7b6a
	rst 38h			;7b6b
	rst 38h			;7b6c
	rst 38h			;7b6d
	rst 38h			;7b6e
	rst 38h			;7b6f
	rst 38h			;7b70
	rst 38h			;7b71
	rst 38h			;7b72
	rst 38h			;7b73
	rst 38h			;7b74
	rst 38h			;7b75
	rst 38h			;7b76
	rst 38h			;7b77
	rst 38h			;7b78
	rst 38h			;7b79
	rst 38h			;7b7a
	rst 38h			;7b7b
	rst 38h			;7b7c
	rst 38h			;7b7d
	rst 38h			;7b7e
	rst 38h			;7b7f
	rst 38h			;7b80
	rst 38h			;7b81
	rst 38h			;7b82
	rst 38h			;7b83
	rst 38h			;7b84
	rst 38h			;7b85
	rst 38h			;7b86
	rst 38h			;7b87
	rst 38h			;7b88
	rst 38h			;7b89
	rst 38h			;7b8a
	rst 38h			;7b8b
	rst 38h			;7b8c
	rst 38h			;7b8d
	rst 38h			;7b8e
	rst 38h			;7b8f
	rst 38h			;7b90
	rst 38h			;7b91
	rst 38h			;7b92
	rst 38h			;7b93
	rst 38h			;7b94
	rst 38h			;7b95
	rst 38h			;7b96
	rst 38h			;7b97
	rst 38h			;7b98
	rst 38h			;7b99
	rst 38h			;7b9a
	rst 38h			;7b9b
	rst 38h			;7b9c
	rst 38h			;7b9d
	rst 38h			;7b9e
	rst 38h			;7b9f
	rst 38h			;7ba0
	rst 38h			;7ba1
	rst 38h			;7ba2
	rst 38h			;7ba3
	rst 38h			;7ba4
	rst 38h			;7ba5
	rst 38h			;7ba6
	rst 38h			;7ba7
	rst 38h			;7ba8
	rst 38h			;7ba9
	rst 38h			;7baa
	rst 38h			;7bab
	rst 38h			;7bac
	rst 38h			;7bad
	rst 38h			;7bae
	rst 38h			;7baf
	rst 38h			;7bb0
	rst 38h			;7bb1
	rst 38h			;7bb2
	rst 38h			;7bb3
	rst 38h			;7bb4
	rst 38h			;7bb5
	rst 38h			;7bb6
	rst 38h			;7bb7
	rst 38h			;7bb8
	rst 38h			;7bb9
	rst 38h			;7bba
	rst 38h			;7bbb
	rst 38h			;7bbc
	rst 38h			;7bbd
	rst 38h			;7bbe
	rst 38h			;7bbf
	rst 38h			;7bc0
	rst 38h			;7bc1
	rst 38h			;7bc2
	rst 38h			;7bc3
	rst 38h			;7bc4
	rst 38h			;7bc5
	rst 38h			;7bc6
	rst 38h			;7bc7
	rst 38h			;7bc8
	rst 38h			;7bc9
	rst 38h			;7bca
	rst 38h			;7bcb
	rst 38h			;7bcc
	rst 38h			;7bcd
	rst 38h			;7bce
	rst 38h			;7bcf
	rst 38h			;7bd0
	rst 38h			;7bd1
	rst 38h			;7bd2
	rst 38h			;7bd3
	rst 38h			;7bd4
	rst 38h			;7bd5
	rst 38h			;7bd6
	rst 38h			;7bd7
	rst 38h			;7bd8
	rst 38h			;7bd9
	rst 38h			;7bda
	rst 38h			;7bdb
	rst 38h			;7bdc
	rst 38h			;7bdd
	rst 38h			;7bde
	rst 38h			;7bdf
	rst 38h			;7be0
	rst 38h			;7be1
	rst 38h			;7be2
	rst 38h			;7be3
	rst 38h			;7be4
	rst 38h			;7be5
	rst 38h			;7be6
	rst 38h			;7be7
	rst 38h			;7be8
	rst 38h			;7be9
	rst 38h			;7bea
	rst 38h			;7beb
	rst 38h			;7bec
	rst 38h			;7bed
	rst 38h			;7bee
	rst 38h			;7bef
	rst 38h			;7bf0
	rst 38h			;7bf1
	rst 38h			;7bf2
	rst 38h			;7bf3
	rst 38h			;7bf4
l7bf5h:
	rst 38h			;7bf5
	rst 38h			;7bf6
	rst 38h			;7bf7
	rst 38h			;7bf8
	rst 38h			;7bf9
	rst 38h			;7bfa
	rst 38h			;7bfb
	rst 38h			;7bfc
	rst 38h			;7bfd
	rst 38h			;7bfe
	rst 38h			;7bff
	rst 38h			;7c00
	rst 38h			;7c01
	rst 38h			;7c02
	rst 38h			;7c03
	rst 38h			;7c04
	rst 38h			;7c05
	rst 38h			;7c06
	rst 38h			;7c07
	rst 38h			;7c08
	rst 38h			;7c09
	rst 38h			;7c0a
	rst 38h			;7c0b
	rst 38h			;7c0c
	rst 38h			;7c0d
	rst 38h			;7c0e
	rst 38h			;7c0f
	rst 38h			;7c10
	rst 38h			;7c11
	rst 38h			;7c12
	rst 38h			;7c13
	rst 38h			;7c14
	rst 38h			;7c15
	rst 38h			;7c16
	rst 38h			;7c17
	rst 38h			;7c18
	rst 38h			;7c19
	rst 38h			;7c1a
	rst 38h			;7c1b
	rst 38h			;7c1c
	rst 38h			;7c1d
	rst 38h			;7c1e
	rst 38h			;7c1f
	rst 38h			;7c20
	rst 38h			;7c21
	rst 38h			;7c22
	rst 38h			;7c23
	rst 38h			;7c24
	rst 38h			;7c25
	rst 38h			;7c26
	rst 38h			;7c27
	rst 38h			;7c28
	rst 38h			;7c29
	rst 38h			;7c2a
	rst 38h			;7c2b
	rst 38h			;7c2c
	rst 38h			;7c2d
	rst 38h			;7c2e
	rst 38h			;7c2f
	rst 38h			;7c30
	rst 38h			;7c31
	rst 38h			;7c32
	rst 38h			;7c33
	rst 38h			;7c34
	rst 38h			;7c35
	rst 38h			;7c36
	rst 38h			;7c37
	rst 38h			;7c38
	rst 38h			;7c39
	rst 38h			;7c3a
	rst 38h			;7c3b
	rst 38h			;7c3c
	rst 38h			;7c3d
	rst 38h			;7c3e
	rst 38h			;7c3f
	rst 38h			;7c40
	rst 38h			;7c41
	rst 38h			;7c42
	rst 38h			;7c43
	rst 38h			;7c44
	rst 38h			;7c45
	rst 38h			;7c46
	rst 38h			;7c47
	rst 38h			;7c48
	rst 38h			;7c49
	rst 38h			;7c4a
	rst 38h			;7c4b
	rst 38h			;7c4c
	rst 38h			;7c4d
	rst 38h			;7c4e
	rst 38h			;7c4f
	rst 38h			;7c50
	rst 38h			;7c51
	rst 38h			;7c52
	rst 38h			;7c53
	rst 38h			;7c54
	rst 38h			;7c55
	rst 38h			;7c56
	rst 38h			;7c57
	rst 38h			;7c58
	rst 38h			;7c59
	rst 38h			;7c5a
	rst 38h			;7c5b
	rst 38h			;7c5c
	rst 38h			;7c5d
	rst 38h			;7c5e
	rst 38h			;7c5f
	rst 38h			;7c60
	rst 38h			;7c61
	rst 38h			;7c62
	rst 38h			;7c63
	rst 38h			;7c64
	rst 38h			;7c65
	rst 38h			;7c66
	rst 38h			;7c67
	rst 38h			;7c68
	rst 38h			;7c69
	rst 38h			;7c6a
	rst 38h			;7c6b
	rst 38h			;7c6c
	rst 38h			;7c6d
	rst 38h			;7c6e
	rst 38h			;7c6f
	rst 38h			;7c70
	rst 38h			;7c71
	rst 38h			;7c72
	rst 38h			;7c73
	rst 38h			;7c74
	rst 38h			;7c75
	rst 38h			;7c76
	rst 38h			;7c77
	rst 38h			;7c78
	rst 38h			;7c79
	rst 38h			;7c7a
	rst 38h			;7c7b
	rst 38h			;7c7c
	rst 38h			;7c7d
	rst 38h			;7c7e
	rst 38h			;7c7f
	rst 38h			;7c80
	rst 38h			;7c81
	rst 38h			;7c82
	rst 38h			;7c83
	rst 38h			;7c84
	rst 38h			;7c85
	rst 38h			;7c86
	rst 38h			;7c87
	rst 38h			;7c88
	rst 38h			;7c89
	rst 38h			;7c8a
	rst 38h			;7c8b
	rst 38h			;7c8c
	rst 38h			;7c8d
	rst 38h			;7c8e
	rst 38h			;7c8f
	rst 38h			;7c90
	rst 38h			;7c91
	rst 38h			;7c92
	rst 38h			;7c93
	rst 38h			;7c94
	rst 38h			;7c95
	rst 38h			;7c96
l7c97h:
	rst 38h			;7c97
	rst 38h			;7c98
	rst 38h			;7c99
	rst 38h			;7c9a
	rst 38h			;7c9b
	rst 38h			;7c9c
	rst 38h			;7c9d
	rst 38h			;7c9e
	rst 38h			;7c9f
	rst 38h			;7ca0
	rst 38h			;7ca1
	rst 38h			;7ca2
	rst 38h			;7ca3
	rst 38h			;7ca4
	rst 38h			;7ca5
	rst 38h			;7ca6
	rst 38h			;7ca7
	rst 38h			;7ca8
	rst 38h			;7ca9
	rst 38h			;7caa
	rst 38h			;7cab
	rst 38h			;7cac
	rst 38h			;7cad
	rst 38h			;7cae
	rst 38h			;7caf
	rst 38h			;7cb0
	rst 38h			;7cb1
	rst 38h			;7cb2
	rst 38h			;7cb3
	rst 38h			;7cb4
	rst 38h			;7cb5
	rst 38h			;7cb6
	rst 38h			;7cb7
	rst 38h			;7cb8
	rst 38h			;7cb9
	rst 38h			;7cba
	rst 38h			;7cbb
	rst 38h			;7cbc
	rst 38h			;7cbd
	rst 38h			;7cbe
	rst 38h			;7cbf
	rst 38h			;7cc0
	rst 38h			;7cc1
	rst 38h			;7cc2
	rst 38h			;7cc3
	rst 38h			;7cc4
	rst 38h			;7cc5
	rst 38h			;7cc6
	rst 38h			;7cc7
	rst 38h			;7cc8
	rst 38h			;7cc9
	rst 38h			;7cca
	rst 38h			;7ccb
	rst 38h			;7ccc
	rst 38h			;7ccd
	rst 38h			;7cce
	rst 38h			;7ccf
	rst 38h			;7cd0
	rst 38h			;7cd1
	rst 38h			;7cd2
l7cd3h:
	rst 38h			;7cd3
	rst 38h			;7cd4
	rst 38h			;7cd5
	rst 38h			;7cd6
	rst 38h			;7cd7
	rst 38h			;7cd8
	rst 38h			;7cd9
	rst 38h			;7cda
	rst 38h			;7cdb
	rst 38h			;7cdc
	rst 38h			;7cdd
	rst 38h			;7cde
	rst 38h			;7cdf
	rst 38h			;7ce0
l7ce1h:
	rst 38h			;7ce1
	rst 38h			;7ce2
	rst 38h			;7ce3
	rst 38h			;7ce4
	rst 38h			;7ce5
	rst 38h			;7ce6
	rst 38h			;7ce7
	rst 38h			;7ce8
	rst 38h			;7ce9
	rst 38h			;7cea
	rst 38h			;7ceb
	rst 38h			;7cec
	rst 38h			;7ced
	rst 38h			;7cee
	rst 38h			;7cef
	rst 38h			;7cf0
	rst 38h			;7cf1
	rst 38h			;7cf2
	rst 38h			;7cf3
	rst 38h			;7cf4
	rst 38h			;7cf5
	rst 38h			;7cf6
	rst 38h			;7cf7
	rst 38h			;7cf8
	rst 38h			;7cf9
	rst 38h			;7cfa
	rst 38h			;7cfb
	rst 38h			;7cfc
	rst 38h			;7cfd
	rst 38h			;7cfe
	rst 38h			;7cff
	rst 38h			;7d00
	rst 38h			;7d01
	rst 38h			;7d02
	rst 38h			;7d03
	rst 38h			;7d04
	rst 38h			;7d05
	rst 38h			;7d06
	rst 38h			;7d07
	rst 38h			;7d08
	rst 38h			;7d09
	rst 38h			;7d0a
	rst 38h			;7d0b
	rst 38h			;7d0c
	rst 38h			;7d0d
	rst 38h			;7d0e
	rst 38h			;7d0f
	rst 38h			;7d10
	rst 38h			;7d11
	rst 38h			;7d12
	rst 38h			;7d13
	rst 38h			;7d14
	rst 38h			;7d15
	rst 38h			;7d16
	rst 38h			;7d17
	rst 38h			;7d18
	rst 38h			;7d19
	rst 38h			;7d1a
	rst 38h			;7d1b
	rst 38h			;7d1c
	rst 38h			;7d1d
	rst 38h			;7d1e
	rst 38h			;7d1f
	rst 38h			;7d20
	rst 38h			;7d21
	rst 38h			;7d22
	rst 38h			;7d23
	rst 38h			;7d24
	rst 38h			;7d25
	rst 38h			;7d26
	rst 38h			;7d27
	rst 38h			;7d28
	rst 38h			;7d29
	rst 38h			;7d2a
	rst 38h			;7d2b
	rst 38h			;7d2c
	rst 38h			;7d2d
	rst 38h			;7d2e
	rst 38h			;7d2f
	rst 38h			;7d30
	rst 38h			;7d31
	rst 38h			;7d32
	rst 38h			;7d33
	rst 38h			;7d34
	rst 38h			;7d35
	rst 38h			;7d36
l7d37h:
	rst 38h			;7d37
	rst 38h			;7d38
	rst 38h			;7d39
	rst 38h			;7d3a
	rst 38h			;7d3b
	rst 38h			;7d3c
	rst 38h			;7d3d
	rst 38h			;7d3e
	rst 38h			;7d3f
	rst 38h			;7d40
	rst 38h			;7d41
	rst 38h			;7d42
	rst 38h			;7d43
	rst 38h			;7d44
	rst 38h			;7d45
	rst 38h			;7d46
	rst 38h			;7d47
	rst 38h			;7d48
	rst 38h			;7d49
	rst 38h			;7d4a
	rst 38h			;7d4b
	rst 38h			;7d4c
	rst 38h			;7d4d
	rst 38h			;7d4e
	rst 38h			;7d4f
	rst 38h			;7d50
	rst 38h			;7d51
	rst 38h			;7d52
	rst 38h			;7d53
	rst 38h			;7d54
	rst 38h			;7d55
	rst 38h			;7d56
	rst 38h			;7d57
	rst 38h			;7d58
	rst 38h			;7d59
	rst 38h			;7d5a
	rst 38h			;7d5b
	rst 38h			;7d5c
	rst 38h			;7d5d
	rst 38h			;7d5e
	rst 38h			;7d5f
	rst 38h			;7d60
	rst 38h			;7d61
	rst 38h			;7d62
	rst 38h			;7d63
	rst 38h			;7d64
	rst 38h			;7d65
	rst 38h			;7d66
	rst 38h			;7d67
	rst 38h			;7d68
	rst 38h			;7d69
	rst 38h			;7d6a
	rst 38h			;7d6b
	rst 38h			;7d6c
	rst 38h			;7d6d
	rst 38h			;7d6e
	rst 38h			;7d6f
	rst 38h			;7d70
	rst 38h			;7d71
	rst 38h			;7d72
	rst 38h			;7d73
	rst 38h			;7d74
	rst 38h			;7d75
	rst 38h			;7d76
	rst 38h			;7d77
	rst 38h			;7d78
	rst 38h			;7d79
	rst 38h			;7d7a
	rst 38h			;7d7b
	rst 38h			;7d7c
	rst 38h			;7d7d
	rst 38h			;7d7e
	rst 38h			;7d7f
	rst 38h			;7d80
	rst 38h			;7d81
	rst 38h			;7d82
	rst 38h			;7d83
	rst 38h			;7d84
	rst 38h			;7d85
	rst 38h			;7d86
	rst 38h			;7d87
	rst 38h			;7d88
	rst 38h			;7d89
	rst 38h			;7d8a
	rst 38h			;7d8b
	rst 38h			;7d8c
	rst 38h			;7d8d
	rst 38h			;7d8e
	rst 38h			;7d8f
	rst 38h			;7d90
	rst 38h			;7d91
	rst 38h			;7d92
	rst 38h			;7d93
	rst 38h			;7d94
	rst 38h			;7d95
	rst 38h			;7d96
	rst 38h			;7d97
	rst 38h			;7d98
	rst 38h			;7d99
	rst 38h			;7d9a
	rst 38h			;7d9b
	rst 38h			;7d9c
	rst 38h			;7d9d
	rst 38h			;7d9e
	rst 38h			;7d9f
	rst 38h			;7da0
	rst 38h			;7da1
	rst 38h			;7da2
	rst 38h			;7da3
	rst 38h			;7da4
	rst 38h			;7da5
	rst 38h			;7da6
	rst 38h			;7da7
	rst 38h			;7da8
	rst 38h			;7da9
	rst 38h			;7daa
	rst 38h			;7dab
	rst 38h			;7dac
	rst 38h			;7dad
	rst 38h			;7dae
	rst 38h			;7daf
	rst 38h			;7db0
	rst 38h			;7db1
	rst 38h			;7db2
	rst 38h			;7db3
	rst 38h			;7db4
	rst 38h			;7db5
	rst 38h			;7db6
	rst 38h			;7db7
	rst 38h			;7db8
	rst 38h			;7db9
	rst 38h			;7dba
	rst 38h			;7dbb
	rst 38h			;7dbc
	rst 38h			;7dbd
	rst 38h			;7dbe
	rst 38h			;7dbf
	rst 38h			;7dc0
	rst 38h			;7dc1
	rst 38h			;7dc2
	rst 38h			;7dc3
	rst 38h			;7dc4
	rst 38h			;7dc5
	rst 38h			;7dc6
	rst 38h			;7dc7
	rst 38h			;7dc8
	rst 38h			;7dc9
	rst 38h			;7dca
	rst 38h			;7dcb
	rst 38h			;7dcc
l7dcdh:
	rst 38h			;7dcd
	rst 38h			;7dce
	rst 38h			;7dcf
	rst 38h			;7dd0
	rst 38h			;7dd1
	rst 38h			;7dd2
	rst 38h			;7dd3
	rst 38h			;7dd4
	rst 38h			;7dd5
	rst 38h			;7dd6
	rst 38h			;7dd7
	rst 38h			;7dd8
	rst 38h			;7dd9
	rst 38h			;7dda
	rst 38h			;7ddb
	rst 38h			;7ddc
	rst 38h			;7ddd
	rst 38h			;7dde
	rst 38h			;7ddf
	rst 38h			;7de0
	rst 38h			;7de1
	rst 38h			;7de2
	rst 38h			;7de3
	rst 38h			;7de4
	rst 38h			;7de5
	rst 38h			;7de6
	rst 38h			;7de7
	rst 38h			;7de8
	rst 38h			;7de9
	rst 38h			;7dea
	rst 38h			;7deb
	rst 38h			;7dec
	rst 38h			;7ded
	rst 38h			;7dee
	rst 38h			;7def
	rst 38h			;7df0
	rst 38h			;7df1
	rst 38h			;7df2
	rst 38h			;7df3
	rst 38h			;7df4
	rst 38h			;7df5
	rst 38h			;7df6
	rst 38h			;7df7
	rst 38h			;7df8
	rst 38h			;7df9
	rst 38h			;7dfa
	rst 38h			;7dfb
	rst 38h			;7dfc
	rst 38h			;7dfd
	rst 38h			;7dfe
	rst 38h			;7dff
	rst 38h			;7e00
	rst 38h			;7e01
	rst 38h			;7e02
	rst 38h			;7e03
	rst 38h			;7e04
l7e05h:
	rst 38h			;7e05
	rst 38h			;7e06
	rst 38h			;7e07
	rst 38h			;7e08
	rst 38h			;7e09
	rst 38h			;7e0a
	rst 38h			;7e0b
	rst 38h			;7e0c
	rst 38h			;7e0d
	rst 38h			;7e0e
	rst 38h			;7e0f
	rst 38h			;7e10
	rst 38h			;7e11
	rst 38h			;7e12
	rst 38h			;7e13
	rst 38h			;7e14
	rst 38h			;7e15
	rst 38h			;7e16
	rst 38h			;7e17
	rst 38h			;7e18
	rst 38h			;7e19
	rst 38h			;7e1a
	rst 38h			;7e1b
	rst 38h			;7e1c
	rst 38h			;7e1d
	rst 38h			;7e1e
	rst 38h			;7e1f
	rst 38h			;7e20
	rst 38h			;7e21
	rst 38h			;7e22
	rst 38h			;7e23
	rst 38h			;7e24
	rst 38h			;7e25
	rst 38h			;7e26
	rst 38h			;7e27
	rst 38h			;7e28
	rst 38h			;7e29
	rst 38h			;7e2a
	rst 38h			;7e2b
	rst 38h			;7e2c
	rst 38h			;7e2d
	rst 38h			;7e2e
	rst 38h			;7e2f
	rst 38h			;7e30
	rst 38h			;7e31
	rst 38h			;7e32
	rst 38h			;7e33
	rst 38h			;7e34
	rst 38h			;7e35
	rst 38h			;7e36
	rst 38h			;7e37
	rst 38h			;7e38
	rst 38h			;7e39
	rst 38h			;7e3a
	rst 38h			;7e3b
	rst 38h			;7e3c
	rst 38h			;7e3d
	rst 38h			;7e3e
	rst 38h			;7e3f
	rst 38h			;7e40
	rst 38h			;7e41
	rst 38h			;7e42
	rst 38h			;7e43
	rst 38h			;7e44
	rst 38h			;7e45
	rst 38h			;7e46
	rst 38h			;7e47
	rst 38h			;7e48
	rst 38h			;7e49
	rst 38h			;7e4a
	rst 38h			;7e4b
	rst 38h			;7e4c
	rst 38h			;7e4d
	rst 38h			;7e4e
	rst 38h			;7e4f
	rst 38h			;7e50
	rst 38h			;7e51
	rst 38h			;7e52
	rst 38h			;7e53
	rst 38h			;7e54
	rst 38h			;7e55
	rst 38h			;7e56
	rst 38h			;7e57
	rst 38h			;7e58
	rst 38h			;7e59
	rst 38h			;7e5a
	rst 38h			;7e5b
	rst 38h			;7e5c
	rst 38h			;7e5d
	rst 38h			;7e5e
	rst 38h			;7e5f
	rst 38h			;7e60
	rst 38h			;7e61
	rst 38h			;7e62
	rst 38h			;7e63
	rst 38h			;7e64
	rst 38h			;7e65
	rst 38h			;7e66
	rst 38h			;7e67
	rst 38h			;7e68
	rst 38h			;7e69
	rst 38h			;7e6a
	rst 38h			;7e6b
	rst 38h			;7e6c
	rst 38h			;7e6d
	rst 38h			;7e6e
	rst 38h			;7e6f
	rst 38h			;7e70
	rst 38h			;7e71
	rst 38h			;7e72
	rst 38h			;7e73
	rst 38h			;7e74
	rst 38h			;7e75
	rst 38h			;7e76
	rst 38h			;7e77
	rst 38h			;7e78
	rst 38h			;7e79
	rst 38h			;7e7a
	rst 38h			;7e7b
	rst 38h			;7e7c
	rst 38h			;7e7d
	rst 38h			;7e7e
	rst 38h			;7e7f
	rst 38h			;7e80
	rst 38h			;7e81
	rst 38h			;7e82
	rst 38h			;7e83
	rst 38h			;7e84
	rst 38h			;7e85
	rst 38h			;7e86
	rst 38h			;7e87
	rst 38h			;7e88
	rst 38h			;7e89
	rst 38h			;7e8a
	rst 38h			;7e8b
	rst 38h			;7e8c
	rst 38h			;7e8d
	rst 38h			;7e8e
	rst 38h			;7e8f
	rst 38h			;7e90
	rst 38h			;7e91
	rst 38h			;7e92
	rst 38h			;7e93
	rst 38h			;7e94
	rst 38h			;7e95
	rst 38h			;7e96
	rst 38h			;7e97
	rst 38h			;7e98
	rst 38h			;7e99
	rst 38h			;7e9a
	rst 38h			;7e9b
	rst 38h			;7e9c
	rst 38h			;7e9d
	rst 38h			;7e9e
	rst 38h			;7e9f
	rst 38h			;7ea0
	rst 38h			;7ea1
l7ea2h:
	rst 38h			;7ea2
	rst 38h			;7ea3
	rst 38h			;7ea4
	rst 38h			;7ea5
	rst 38h			;7ea6
	rst 38h			;7ea7
	rst 38h			;7ea8
	rst 38h			;7ea9
	rst 38h			;7eaa
	rst 38h			;7eab
	rst 38h			;7eac
	rst 38h			;7ead
	rst 38h			;7eae
	rst 38h			;7eaf
	rst 38h			;7eb0
	rst 38h			;7eb1
	rst 38h			;7eb2
	rst 38h			;7eb3
	rst 38h			;7eb4
	rst 38h			;7eb5
	rst 38h			;7eb6
	rst 38h			;7eb7
	rst 38h			;7eb8
	rst 38h			;7eb9
	rst 38h			;7eba
	rst 38h			;7ebb
	rst 38h			;7ebc
	rst 38h			;7ebd
	rst 38h			;7ebe
	rst 38h			;7ebf
	rst 38h			;7ec0
	rst 38h			;7ec1
	rst 38h			;7ec2
l7ec3h:
	rst 38h			;7ec3
	rst 38h			;7ec4
	rst 38h			;7ec5
	rst 38h			;7ec6
	rst 38h			;7ec7
	rst 38h			;7ec8
	rst 38h			;7ec9
	rst 38h			;7eca
	rst 38h			;7ecb
	rst 38h			;7ecc
	rst 38h			;7ecd
	rst 38h			;7ece
	rst 38h			;7ecf
	rst 38h			;7ed0
	rst 38h			;7ed1
	rst 38h			;7ed2
	rst 38h			;7ed3
	rst 38h			;7ed4
	rst 38h			;7ed5
	rst 38h			;7ed6
	rst 38h			;7ed7
	rst 38h			;7ed8
	rst 38h			;7ed9
	rst 38h			;7eda
	rst 38h			;7edb
	rst 38h			;7edc
	rst 38h			;7edd
	rst 38h			;7ede
	rst 38h			;7edf
	rst 38h			;7ee0
	rst 38h			;7ee1
	rst 38h			;7ee2
	rst 38h			;7ee3
	rst 38h			;7ee4
	rst 38h			;7ee5
	rst 38h			;7ee6
	rst 38h			;7ee7
	rst 38h			;7ee8
	rst 38h			;7ee9
	rst 38h			;7eea
	rst 38h			;7eeb
	rst 38h			;7eec
	rst 38h			;7eed
	rst 38h			;7eee
	rst 38h			;7eef
	rst 38h			;7ef0
	rst 38h			;7ef1
	rst 38h			;7ef2
	rst 38h			;7ef3
	rst 38h			;7ef4
	rst 38h			;7ef5
	rst 38h			;7ef6
	rst 38h			;7ef7
	rst 38h			;7ef8
	rst 38h			;7ef9
	rst 38h			;7efa
	rst 38h			;7efb
	rst 38h			;7efc
	rst 38h			;7efd
	rst 38h			;7efe
	rst 38h			;7eff
	rst 38h			;7f00
	rst 38h			;7f01
	rst 38h			;7f02
	rst 38h			;7f03
	rst 38h			;7f04
	rst 38h			;7f05
	rst 38h			;7f06
	rst 38h			;7f07
	rst 38h			;7f08
	rst 38h			;7f09
	rst 38h			;7f0a
	rst 38h			;7f0b
	rst 38h			;7f0c
	rst 38h			;7f0d
	rst 38h			;7f0e
	rst 38h			;7f0f
	rst 38h			;7f10
	rst 38h			;7f11
	rst 38h			;7f12
	rst 38h			;7f13
	rst 38h			;7f14
	rst 38h			;7f15
	rst 38h			;7f16
	rst 38h			;7f17
	rst 38h			;7f18
	rst 38h			;7f19
	rst 38h			;7f1a
	rst 38h			;7f1b
	rst 38h			;7f1c
	rst 38h			;7f1d
	rst 38h			;7f1e
	rst 38h			;7f1f
	rst 38h			;7f20
	rst 38h			;7f21
	rst 38h			;7f22
	rst 38h			;7f23
	rst 38h			;7f24
	rst 38h			;7f25
	rst 38h			;7f26
	rst 38h			;7f27
	rst 38h			;7f28
	rst 38h			;7f29
	rst 38h			;7f2a
	rst 38h			;7f2b
	rst 38h			;7f2c
	rst 38h			;7f2d
	rst 38h			;7f2e
	rst 38h			;7f2f
	rst 38h			;7f30
	rst 38h			;7f31
	rst 38h			;7f32
	rst 38h			;7f33
	rst 38h			;7f34
	rst 38h			;7f35
	rst 38h			;7f36
	rst 38h			;7f37
	rst 38h			;7f38
	rst 38h			;7f39
	rst 38h			;7f3a
	rst 38h			;7f3b
	rst 38h			;7f3c
	rst 38h			;7f3d
	rst 38h			;7f3e
	rst 38h			;7f3f
	rst 38h			;7f40
	rst 38h			;7f41
	rst 38h			;7f42
	rst 38h			;7f43
	rst 38h			;7f44
	rst 38h			;7f45
	rst 38h			;7f46
	rst 38h			;7f47
	rst 38h			;7f48
	rst 38h			;7f49
	rst 38h			;7f4a
	rst 38h			;7f4b
	rst 38h			;7f4c
	rst 38h			;7f4d
	rst 38h			;7f4e
	rst 38h			;7f4f
	rst 38h			;7f50
	rst 38h			;7f51
	rst 38h			;7f52
	rst 38h			;7f53
	rst 38h			;7f54
	rst 38h			;7f55
	rst 38h			;7f56
	rst 38h			;7f57
	rst 38h			;7f58
	rst 38h			;7f59
	rst 38h			;7f5a
	rst 38h			;7f5b
	rst 38h			;7f5c
	rst 38h			;7f5d
	rst 38h			;7f5e
	rst 38h			;7f5f
	rst 38h			;7f60
	rst 38h			;7f61
	rst 38h			;7f62
	rst 38h			;7f63
	rst 38h			;7f64
	rst 38h			;7f65
	rst 38h			;7f66
	rst 38h			;7f67
	rst 38h			;7f68
	rst 38h			;7f69
	rst 38h			;7f6a
	rst 38h			;7f6b
	rst 38h			;7f6c
	rst 38h			;7f6d
	rst 38h			;7f6e
	rst 38h			;7f6f
	rst 38h			;7f70
	rst 38h			;7f71
	rst 38h			;7f72
	rst 38h			;7f73
	rst 38h			;7f74
	rst 38h			;7f75
	rst 38h			;7f76
	rst 38h			;7f77
	rst 38h			;7f78
	rst 38h			;7f79
	rst 38h			;7f7a
	rst 38h			;7f7b
	rst 38h			;7f7c
	rst 38h			;7f7d
	rst 38h			;7f7e
	rst 38h			;7f7f
	rst 38h			;7f80
	rst 38h			;7f81
	rst 38h			;7f82
	rst 38h			;7f83
	rst 38h			;7f84
	rst 38h			;7f85
	rst 38h			;7f86
	rst 38h			;7f87
	rst 38h			;7f88
	rst 38h			;7f89
	rst 38h			;7f8a
	rst 38h			;7f8b
	rst 38h			;7f8c
	rst 38h			;7f8d
	rst 38h			;7f8e
	rst 38h			;7f8f
	rst 38h			;7f90
	rst 38h			;7f91
	rst 38h			;7f92
	rst 38h			;7f93
	rst 38h			;7f94
	rst 38h			;7f95
	rst 38h			;7f96
	rst 38h			;7f97
	rst 38h			;7f98
	rst 38h			;7f99
	rst 38h			;7f9a
	rst 38h			;7f9b
	rst 38h			;7f9c
	rst 38h			;7f9d
	rst 38h			;7f9e
	rst 38h			;7f9f
	rst 38h			;7fa0
	rst 38h			;7fa1
	rst 38h			;7fa2
	rst 38h			;7fa3
	rst 38h			;7fa4
	rst 38h			;7fa5
	rst 38h			;7fa6
	rst 38h			;7fa7
	rst 38h			;7fa8
	rst 38h			;7fa9
	rst 38h			;7faa
	rst 38h			;7fab
	rst 38h			;7fac
	rst 38h			;7fad
	rst 38h			;7fae
	rst 38h			;7faf
	rst 38h			;7fb0
	rst 38h			;7fb1
	rst 38h			;7fb2
	rst 38h			;7fb3
	rst 38h			;7fb4
	rst 38h			;7fb5
	rst 38h			;7fb6
	rst 38h			;7fb7
	rst 38h			;7fb8
	rst 38h			;7fb9
	rst 38h			;7fba
	rst 38h			;7fbb
	rst 38h			;7fbc
	rst 38h			;7fbd
	rst 38h			;7fbe
	rst 38h			;7fbf
	rst 38h			;7fc0
	rst 38h			;7fc1
	rst 38h			;7fc2
	rst 38h			;7fc3
	rst 38h			;7fc4
	rst 38h			;7fc5
	rst 38h			;7fc6
	rst 38h			;7fc7
	rst 38h			;7fc8
	rst 38h			;7fc9
	rst 38h			;7fca
	rst 38h			;7fcb
	rst 38h			;7fcc
	rst 38h			;7fcd
	rst 38h			;7fce
	rst 38h			;7fcf
	rst 38h			;7fd0
	rst 38h			;7fd1
	rst 38h			;7fd2
	rst 38h			;7fd3
	rst 38h			;7fd4
	rst 38h			;7fd5
	rst 38h			;7fd6
	rst 38h			;7fd7
	rst 38h			;7fd8
	rst 38h			;7fd9
	rst 38h			;7fda
	rst 38h			;7fdb
	rst 38h			;7fdc
	rst 38h			;7fdd
	rst 38h			;7fde
	rst 38h			;7fdf
	rst 38h			;7fe0
	rst 38h			;7fe1
	rst 38h			;7fe2
	rst 38h			;7fe3
	rst 38h			;7fe4
	rst 38h			;7fe5
	rst 38h			;7fe6
	rst 38h			;7fe7
	rst 38h			;7fe8
	rst 38h			;7fe9
	rst 38h			;7fea
	rst 38h			;7feb
	rst 38h			;7fec
	rst 38h			;7fed
	rst 38h			;7fee
	rst 38h			;7fef
	rst 38h			;7ff0
	rst 38h			;7ff1
	rst 38h			;7ff2
	rst 38h			;7ff3
	rst 38h			;7ff4
	rst 38h			;7ff5
	rst 38h			;7ff6
	rst 38h			;7ff7
	rst 38h			;7ff8
	rst 38h			;7ff9
	rst 38h			;7ffa
	rst 38h			;7ffb
	rst 38h			;7ffc
	rst 38h			;7ffd
	rst 38h			;7ffe
	rst 38h			;7fff
