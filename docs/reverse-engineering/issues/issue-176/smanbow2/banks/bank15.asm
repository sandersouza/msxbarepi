; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank15.asm /tmp/smanbow2_bank_15.bin

	org 04000h

	ex (sp),hl		;4000
	ld e,e			;4001
	nop			;4002
	nop			;4003
	nop			;4004
	jp l4df3h		;4005
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
l4025h:
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
l403fh:
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
sub_405eh:
	rlca			;405e
	ld bc,0381ch		;405f
	jr nc,l4064h		;4062
l4064h:
	nop			;4064
l4065h:
	ld (0f6d8h),hl		;4065
	ld (iy+078h),e		;4068
	inc b			;406b
	ccf			;406c
l406dh:
	ld b,c			;406d
l406eh:
	dec sp			;406e
sub_406fh:
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
	call po,sub_5a00h	;4094
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
l40b3h:
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
l40beh:
	ld d,0e8h		;40be
	jr l40ach		;40c0
	call nc,0d0e8h		;40c2
	jp pe,0000fh		;40c5
l40c8h:
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
l40d4h:
	call nc,01ed6h		;40d4
	ret po			;40d7
	ld c,07ch		;40d8
	ld h,c			;40da
	inc sp			;40db
	inc a			;40dc
	ld b,b			;40dd
	rrca			;40de
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
l4120h:
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
l4140h:
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
l416fh:
	ld l,h			;416f
	ld a,b			;4170
	ld b,b			;4171
	ld a,011h		;4172
l4174h:
	nop			;4174
sub_4175h:
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
l4188h:
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
l4192h:
	jr nz,$+98		;4192
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
sub_41b3h:
	ld b,b			;41b3
	call pe,01f6ah		;41b4
	dec h			;41b7
	ex de,hl		;41b8
	ld (l55eah),a		;41b9
	ld (bc),a		;41bc
	ex af,af'		;41bd
	adc a,c			;41be
	jr nz,$-121		;41bf
l41c1h:
	ld h,a			;41c1
	dec c			;41c2
	ld l,l			;41c3
	nop			;41c4
	rlca			;41c5
	add a,b			;41c6
	ld hl,0100fh		;41c7
	adc a,b			;41ca
	sub h			;41cb
	ld d,e			;41cc
	djnz l41cfh		;41cd
l41cfh:
	ld e,a			;41cf
	inc hl			;41d0
	inc sp			;41d1
	jr z,l4224h		;41d2
	ld (hl),e		;41d4
	cp e			;41d5
	rst 8			;41d6
	ld l,e			;41d7
	out (01dh),a		;41d8
	inc bc			;41da
	inc e			;41db
	adc a,b			;41dc
	defb 0edh ;next byte illegal after ed	;41dd
	jp pe,0408bh		;41de
	rst 0			;41e1
l41e2h:
	ccf			;41e2
	inc l			;41e3
	ld l,a			;41e4
	inc bc			;41e5
	ld a,a			;41e6
	ld e,h			;41e7
	ld c,h			;41e8
	ld e,a			;41e9
	cpl			;41ea
	inc c			;41eb
	ld e,e			;41ec
	djnz l416fh		;41ed
	ld d,b			;41ef
	ld b,h			;41f0
	and h			;41f1
	ld hl,(02200h)		;41f2
	jp pe,03111h		;41f5
	ld d,c			;41f8
	jr z,$+58		;41f9
	halt			;41fb
	dec h			;41fc
	adc a,02ch		;41fd
	sbc a,a			;41ff
l4200h:
	pop hl			;4200
	ld (bc),a		;4201
	jr l4192h		;4202
l4204h:
	di			;4204
	pop de			;4205
	exx			;4206
	ld sp,hl		;4207
	defb 0edh ;next byte illegal after ed	;4208
	ld hl,(012cfh)		;4209
	ret nz			;420c
	adc a,0dch		;420d
	ret m			;420f
l4210h:
	cp d			;4210
	xor b			;4211
	ld b,060h		;4212
	sub h			;4214
	adc a,(hl)		;4215
	ld b,00ch		;4216
	ld c,080h		;4218
	adc a,b			;421a
	ret z			;421b
	jr $-107		;421c
	rst 0			;421e
	call po,sub_6846h	;421f
	ret nz			;4222
	ld (hl),h		;4223
l4224h:
	ld (hl),b		;4224
	ld bc,09eb0h		;4225
	add hl,bc		;4228
	jr z,l41c1h		;4229
	dec b			;422b
	ld (bc),a		;422c
	cp b			;422d
	ret nc			;422e
	ld d,a			;422f
	rla			;4230
	rst 20h			;4231
	ld bc,0ab4ch		;4232
	ld e,h			;4235
	inc bc			;4236
	inc (hl)		;4237
	ld d,h			;4238
	inc b			;4239
	jr nz,l4204h		;423a
	ld b,h			;423c
	ld c,l			;423d
	ld h,c			;423e
	rlca			;423f
	ld h,08fh		;4240
	sbc a,h			;4242
	ld e,b			;4243
	ld bc,08e50h		;4244
	ld h,l			;4247
	inc hl			;4248
	djnz l41e2h		;4249
	add hl,sp		;424b
	inc c			;424c
	nop			;424d
	ld l,h			;424e
	xor e			;424f
	and d			;4250
	sbc a,h			;4251
	ret z			;4252
	ld d,(hl)		;4253
	ret pe			;4254
	inc bc			;4255
	inc a			;4256
	or d			;4257
	xor c			;4258
	ld a,h			;4259
	dec h			;425a
	adc a,d			;425b
	ld e,050h		;425c
	ld a,a			;425e
	ld b,b			;425f
l4260h:
	dec b			;4260
	ld e,03fh		;4261
	ld a,l			;4263
	ld sp,01c49h		;4264
	rst 28h			;4267
	add a,l			;4268
	ld a,c			;4269
	ld b,h			;426a
	nop			;426b
	ld bc,0140ch		;426c
	and e			;426f
	ld a,e			;4270
	jr nc,$+6		;4271
	nop			;4273
	daa			;4274
l4275h:
	ld d,e			;4275
	call m,07000h		;4276
	adc a,b			;4279
	ld h,e			;427a
	cp a			;427b
	inc hl			;427c
	rst 8			;427d
	ret po			;427e
	add a,b			;427f
	inc b			;4280
	ld de,0032ch		;4281
	sbc a,b			;4284
	call nc,02798h		;4285
	ld (bc),a		;4288
	ldi			;4289
	call nz,0d0bbh		;428b
	rst 8			;428e
l428fh:
	inc h			;428f
	cp a			;4290
	ld a,a			;4291
	rst 30h			;4292
	inc de			;4293
	ret m			;4294
	ld a,a			;4295
	inc e			;4296
	call 0a0a0h		;4297
	ld d,079h		;429a
	inc sp			;429c
	add a,d			;429d
	ld l,092h		;429e
l42a0h:
	jr z,l42a0h		;42a0
	inc bc			;42a2
	jr c,l42e9h		;42a3
	ld a,(de)		;42a5
	or 0cch			;42a6
	ld e,05eh		;42a8
l42aah:
	ld l,0bah		;42aa
	ld c,c			;42ac
	ret m			;42ad
	ret m			;42ae
	ld a,a			;42af
	ld d,a			;42b0
	cp h			;42b1
	ld b,b			;42b2
	ret nz			;42b3
	adc a,a			;42b4
	halt			;42b5
	inc l			;42b6
	rst 8			;42b7
	ld (0fbf7h),hl		;42b8
	ld d,07dh		;42bb
	ret m			;42bd
	or c			;42be
	jp c,0202fh		;42bf
	ret nc			;42c2
	exx			;42c3
	daa			;42c4
	adc a,l			;42c5
	ld h,e			;42c6
	rst 38h			;42c7
	ex (sp),hl		;42c8
	ld de,0c040h		;42c9
	ex af,af'		;42cc
	rst 38h			;42cd
	ret pe			;42ce
	ld bc,0ff8fh		;42cf
	ld h,c			;42d2
	cp h			;42d3
	rra			;42d4
	rst 10h			;42d5
	rst 38h			;42d6
	ld e,099h		;42d7
	or c			;42d9
	inc hl			;42da
	ld b,c			;42db
	rst 38h			;42dc
l42ddh:
	call pe,0f611h		;42dd
	ex (sp),hl		;42e0
	xor (hl)		;42e1
	rst 38h			;42e2
	rst 30h			;42e3
	jr nz,l42e6h		;42e4
l42e6h:
	ld a,e			;42e6
	ld e,02dh		;42e7
l42e9h:
	ld (hl),l		;42e9
	ld a,(hl)		;42ea
	ld b,h			;42eb
	adc a,l			;42ec
	defb 0fdh,006h,0c5h ;illegal sequence	;42ed
	ld l,(hl)		;42f0
	nop			;42f1
	push af			;42f2
	nop			;42f3
	rla			;42f4
	ld l,b			;42f5
	ret po			;42f6
	sub a			;42f7
	ld d,a			;42f8
	nop			;42f9
	rst 10h			;42fa
	call pe,09b7ch		;42fb
	dec bc			;42fe
	inc e			;42ff
l4300h:
	call po,0bef8h		;4300
l4303h:
	cp 001h			;4303
	inc de			;4305
	ld a,02eh		;4306
	ld a,(l618dh)		;4308
	ret nc			;430b
	rrca			;430c
	rla			;430d
l430eh:
	ex af,af'		;430e
	adc a,b			;430f
	pop hl			;4310
	adc a,b			;4311
	ccf			;4312
	inc b			;4313
	xor b			;4314
	cp e			;4315
	in a,(06fh)		;4316
	rst 38h			;4318
	and h			;4319
	ld l,b			;431a
	jr nz,l4395h		;431b
	and b			;431d
	nop			;431e
	ld e,c			;431f
	dec e			;4320
	and (hl)		;4321
	xor d			;4322
	xor l			;4323
	sbc a,0fah		;4324
	ld b,(hl)		;4326
	ld c,041h		;4327
	ret po			;4329
	sbc a,h			;432a
	ld a,(hl)		;432b
	ld h,b			;432c
	ld bc,0d0e0h		;432d
	cp b			;4330
	ret m			;4331
	call nz,01c88h		;4332
	ld c,d			;4335
	and b			;4336
l4337h:
	or b			;4337
	ld b,b			;4338
	sbc a,a			;4339
	ld bc,0f145h		;433a
l433dh:
	ld d,l			;433d
	halt			;433e
	ld l,(hl)		;433f
	ret m			;4340
	call m,01d80h		;4341
	add a,d			;4344
	jr nz,l4337h		;4345
	ret nc			;4347
	jr nc,l430eh		;4348
	rst 38h			;434a
	ld a,074h		;434b
	nop			;434d
	rst 38h			;434e
	ld a,l			;434f
	add a,d			;4350
	xor h			;4351
	inc l			;4352
	rst 18h			;4353
	rst 38h			;4354
	dec a			;4355
	sub c			;4356
	ld bc,0f6ffh		;4357
l435ah:
	ex af,af'		;435a
	sub 0d3h		;435b
	xor 0ffh		;435d
	call m,sub_660dh	;435f
	or h			;4362
	sub e			;4363
	jp p,02d0eh		;4364
	ld b,b			;4367
	jr nz,l433dh		;4368
	inc a			;436a
	ld e,0e2h		;436b
	adc a,l			;436d
	di			;436e
	ld e,0cah		;436f
	ld e,l			;4371
	set 6,h			;4372
	ld b,00eh		;4374
	ld h,a			;4376
	rst 38h			;4377
	ld a,(hl)		;4378
	rrca			;4379
	cp a			;437a
	or h			;437b
	ld (bc),a		;437c
	cp d			;437d
	add a,l			;437e
	or a			;437f
	ret po			;4380
	nop			;4381
	sub b			;4382
	jr $-122		;4383
	jr nc,$+1		;4385
	add a,b			;4387
	adc a,b			;4388
	ld d,e			;4389
	ld b,0b2h		;438a
	dec l			;438c
	ld sp,0a9d6h		;438d
	jp c,00212h		;4390
	cp a			;4393
	ret z			;4394
l4395h:
	cp 0f0h			;4395
	sbc a,b			;4397
	jp nz,08bceh		;4398
	add a,b			;439b
	ld a,b			;439c
	ld e,078h		;439d
	ld c,b			;439f
	ld h,a			;43a0
	inc d			;43a1
	adc a,061h		;43a2
	ld a,h			;43a4
	cp 038h			;43a5
	rla			;43a7
	ccf			;43a8
	push de			;43a9
	ld sp,hl		;43aa
	push bc			;43ab
	inc a			;43ac
	ret m			;43ad
	ccf			;43ae
	call p,070b2h		;43af
	ld h,d			;43b2
	sbc a,h			;43b3
	ccf			;43b4
	ld c,03fh		;43b5
	and d			;43b7
	inc de			;43b8
	jp pe,l451dh		;43b9
	ex af,af'		;43bc
	inc bc			;43bd
	ccf			;43be
	jr l4439h		;43bf
	ret z			;43c1
	xor (hl)		;43c2
	inc c			;43c3
	ret po			;43c4
	ld a,a			;43c5
	call po,0235dh		;43c6
	ld l,b			;43c9
	inc e			;43ca
	sbc a,l			;43cb
l43cch:
	and d			;43cc
	ld e,03eh		;43cd
	ccf			;43cf
	call c,0dabfh		;43d0
	ld b,b			;43d3
	add hl,hl		;43d4
	ld a,(hl)		;43d5
	call z,08d3fh		;43d6
	xor e			;43d9
	add a,b			;43da
	inc de			;43db
	ret po			;43dc
	ld b,l			;43dd
	ld b,09eh		;43de
	ld (hl),h		;43e0
	ld c,019h		;43e1
	dec bc			;43e3
	ld b,c			;43e4
	ld bc,00047h		;43e5
	jp 00ee4h		;43e8
	ld a,(hl)		;43eb
	and (hl)		;43ec
	ld a,(hl)		;43ed
	ld a,0f0h		;43ee
	cp l			;43f0
	ret z			;43f1
	ld a,a			;43f2
	ld b,l			;43f3
	ret c			;43f4
	jr z,l4459h		;43f5
	inc c			;43f7
	sbc a,001h		;43f8
	ld sp,02f27h		;43fa
	inc e			;43fd
	ld (hl),a		;43fe
	dec sp			;43ff
	ret m			;4400
	halt			;4401
	sbc a,l			;4402
	jr nz,$+16		;4403
	ld (hl),b		;4405
	ret pe			;4406
	inc de			;4407
	and h			;4408
l4409h:
	nop			;4409
	ret p			;440a
	and a			;440b
	ld (de),a		;440c
	ld a,h			;440d
l440eh:
	or b			;440e
	add a,c			;440f
	ld l,b			;4410
	or l			;4411
	ld e,0b2h		;4412
	dec e			;4414
	sbc a,e			;4415
	ld c,005h		;4416
	ld (de),a		;4418
	add hl,hl		;4419
	scf			;441a
	or 082h			;441b
	ld (hl),h		;441d
	jr nz,l443eh		;441e
	rlca			;4420
	ld b,b			;4421
	or b			;4422
	add a,h			;4423
	ld c,h			;4424
	sub b			;4425
	adc a,b			;4426
	ld h,088h		;4427
	call nz,04c49h		;4429
	ret m			;442c
	inc b			;442d
	ld h,b			;442e
	or b			;442f
	ex af,af'		;4430
	dec e			;4431
	ld c,0b4h		;4432
	adc a,019h		;4434
	ccf			;4436
	pop af			;4437
	cp l			;4438
l4439h:
	ld d,e			;4439
	ld (bc),a		;443a
	ld c,000h		;443b
	ccf			;443d
l443eh:
	or b			;443e
	ld h,b			;443f
	djnz $-90		;4440
l4442h:
	inc (hl)		;4442
	inc h			;4443
	ld l,b			;4444
	and b			;4445
	jp 03ff0h		;4446
	defb 0ddh,0e2h,033h ;illegal sequence	;4449
l444ch:
	ld a,(bc)		;444c
	dec d			;444d
	ld h,(hl)		;444e
	ccf			;444f
	sub b			;4450
	ld (hl),b		;4451
	xor b			;4452
	sub b			;4453
	or d			;4454
	inc h			;4455
	ld (hl),b		;4456
	ld b,b			;4457
	daa			;4458
l4459h:
	dec h			;4459
	ld h,e			;445a
	rra			;445b
	rla			;445c
l445dh:
	ccf			;445d
	ld a,00dh		;445e
	ld e,h			;4460
	in a,(04ch)		;4461
	ld a,b			;4463
	cp c			;4464
	or d			;4465
	ei			;4466
	ret z			;4467
	sbc a,08ch		;4468
	call po,0f40ah		;446a
	jr c,l445dh		;446d
	call c,02dd7h		;446f
	xor b			;4472
	inc b			;4473
	ld (hl),b		;4474
	ld c,017h		;4475
	ld b,011h		;4477
	nop			;4479
	inc hl			;447a
	ld b,b			;447b
	ld b,b			;447c
	ld (0061fh),a		;447d
	dec c			;4480
	djnz $+106		;4481
	cp b			;4483
	and l			;4484
	jr nc,l4487h		;4485
l4487h:
	sbc a,b			;4487
	and b			;4488
	ld c,b			;4489
	sub h			;448a
	call pe,03870h		;448b
	ld l,014h		;448e
	inc b			;4490
	ld a,b			;4491
	ret po			;4492
	xor d			;4493
	add a,e			;4494
	djnz l44c9h		;4495
	add hl,bc		;4497
	ccf			;4498
	or b			;4499
	ld b,008h		;449a
	dec h			;449c
	inc l			;449d
	ld (00516h),hl		;449e
	defb 0fdh,0eeh,03fh ;illegal sequence	;44a1
	rst 18h			;44a4
	jp nc,06be6h		;44a5
	ld l,046h		;44a8
	add hl,sp		;44aa
	ccf			;44ab
	ld (bc),a		;44ac
	ld c,015h		;44ad
	add hl,bc		;44af
	ld c,l			;44b0
	ld c,002h		;44b1
	daa			;44b3
	ret p			;44b4
	ccf			;44b5
	push hl			;44b6
	jp po,0a9eah		;44b7
	rra			;44ba
	ld bc,02b2dh		;44bb
	dec hl			;44be
	dec l			;44bf
	dec l			;44c0
	inc l			;44c1
	cpl			;44c2
	inc bc			;44c3
	ld l,e			;44c4
	ld b,020h		;44c5
	nop			;44c7
	ld l,h			;44c8
l44c9h:
	ex af,af'		;44c9
	ld c,0ceh		;44ca
	dec d			;44cc
	dec c			;44cd
	ld (hl),c		;44ce
	nop			;44cf
	cpl			;44d0
	ld a,(de)		;44d1
	or a			;44d2
	inc de			;44d3
	ld c,06ch		;44d4
	dec hl			;44d6
	inc c			;44d7
	rla			;44d8
	dec l			;44d9
	cpl			;44da
	inc l			;44db
	inc de			;44dc
	dec c			;44dd
l44deh:
	inc e			;44de
	ccf			;44df
	cp l			;44e0
	ld hl,(l5e3fh)		;44e1
	ld hl,(08e3fh)		;44e4
	ld hl,(01e3fh)		;44e7
	ld hl,(08e3fh)		;44ea
	ld hl,(0ec3fh)		;44ed
	inc e			;44f0
	nop			;44f1
	adc a,004h		;44f2
	rlca			;44f4
	ld (hl),a		;44f5
	sbc a,l			;44f6
	ld e,h			;44f7
l44f8h:
	dec hl			;44f8
	xor l			;44f9
	ld h,a			;44fa
	ld c,h			;44fb
	or b			;44fc
	ld a,(bc)		;44fd
	dec hl			;44fe
	sbc a,06ch		;44ff
	ld l,02eh		;4501
	jp c,0160fh		;4503
	ret p			;4506
	sbc a,h			;4507
	ld b,e			;4508
	rrca			;4509
	ex af,af'		;450a
	ex af,af'		;450b
	rrca			;450c
	add hl,bc		;450d
	sbc a,h			;450e
	ld b,(hl)		;450f
	jp nz,00900h		;4510
	dec hl			;4513
	ld bc,06ea2h		;4514
	and c			;4517
	xor b			;4518
	inc (hl)		;4519
	dec (hl)		;451a
	nop			;451b
	dec bc			;451c
l451dh:
	dec bc			;451d
	ld hl,l4a0ah		;451e
	ld bc,00b0ch		;4521
	dec l			;4524
l4525h:
	dec bc			;4525
	sub (hl)		;4526
	ld (de),a		;4527
	rra			;4528
	sub c			;4529
	dec hl			;452a
	add hl,hl		;452b
	and l			;452c
	cp d			;452d
	rra			;452e
	jr nz,l459fh		;452f
	ld l,01fh		;4531
	jr nz,l4525h		;4533
	ret po			;4535
	inc l			;4536
	call p,09e1fh		;4537
	ld b,b			;453a
	dec l			;453b
	rra			;453c
	add a,l			;453d
	ld a,(bc)		;453e
	inc c			;453f
	ld de,l740bh		;4540
	ld l,a			;4543
	ld c,075h		;4544
	dec bc			;4546
	ld l,a			;4547
	nop			;4548
l4549h:
	and 00bh		;4549
	ld a,b			;454b
	ld c,005h		;454c
	call m,sub_7a00h	;454e
	add hl,de		;4551
	ld l,0f6h		;4552
	nop			;4554
	ld a,e			;4555
	ld l,e			;4556
	nop			;4557
	dec a			;4558
	dec bc			;4559
	nop			;455a
	sbc a,(hl)		;455b
	ld a,(bc)		;455c
	nop			;455d
	rst 8			;455e
	add a,(hl)		;455f
	nop			;4560
	ld h,a			;4561
	push bc			;4562
	nop			;4563
	or e			;4564
	adc a,e			;4565
	nop			;4566
	exx			;4567
	adc a,d			;4568
	nop			;4569
	call pe,0fb00h		;456a
	nop			;456d
	sbc a,a			;456e
	add hl,hl		;456f
	nop			;4570
	ld (hl),e		;4571
	jr nz,l4574h		;4572
l4574h:
	xor 0b4h		;4574
	sub 065h		;4576
	ld a,(bc)		;4578
	ld bc,059feh		;4579
	inc bc			;457c
	pop hl			;457d
	ld l,e			;457e
	ex de,hl		;457f
	ld b,c			;4580
	ld b,l			;4581
	ld b,c			;4582
	ld bc,00695h		;4583
	inc bc			;4586
	nop			;4587
	cp e			;4588
	and 0c6h		;4589
	ld (026f7h),hl		;458b
	jr l45dbh		;458e
	jr nz,l45d7h		;4590
	jr nz,l4598h		;4592
	add hl,sp		;4594
	ld h,0d6h		;4595
	rra			;4597
l4598h:
	inc c			;4598
	push bc			;4599
	ld b,(hl)		;459a
	dec bc			;459b
	ex af,af'		;459c
	ret z			;459d
	ld e,b			;459e
l459fh:
	ld sp,hl		;459f
	adc a,000h		;45a0
	adc a,c			;45a2
	ld b,e			;45a3
	ld b,e			;45a4
	ld c,l			;45a5
	ld (bc),a		;45a6
	ld b,b			;45a7
	nop			;45a8
	jp 00001h		;45a9
	sub e			;45ac
	dec bc			;45ad
	inc bc			;45ae
	ex af,af'		;45af
	and e			;45b0
	ld b,h			;45b1
	ld b,d			;45b2
	nop			;45b3
	ld e,c			;45b4
	ld c,a			;45b5
	nop			;45b6
	ex af,af'		;45b7
	jp nz,0c544h		;45b8
	add hl,sp		;45bb
	xor b			;45bc
	and c			;45bd
	ld l,02fh		;45be
	or 0aeh			;45c0
	xor (hl)		;45c2
	and h			;45c3
sub_45c4h:
	add a,002h		;45c4
	ex af,af'		;45c6
	ld (bc),a		;45c7
	ret p			;45c8
	nop			;45c9
	ld c,b			;45ca
	inc bc			;45cb
	nop			;45cc
	ld c,e			;45cd
	ld c,b			;45ce
	ld c,b			;45cf
	ld c,e			;45d0
	ld c,e			;45d1
	ld (bc),a		;45d2
	ld (hl),e		;45d3
	nop			;45d4
	xor a			;45d5
	ld d,e			;45d6
l45d7h:
	nop			;45d7
	xor c			;45d8
	rst 28h			;45d9
	ld l,l			;45da
l45dbh:
	ld b,e			;45db
	nop			;45dc
	jp z,0004dh		;45dd
	dec (hl)		;45e0
	ld c,h			;45e1
	ld c,l			;45e2
	nop			;45e3
	dec b			;45e4
	nop			;45e5
	ld d,007h		;45e6
	rlca			;45e8
	rst 0			;45e9
	inc sp			;45ea
	inc bc			;45eb
	ld (bc),a		;45ec
	nop			;45ed
	add a,l			;45ee
	ld b,(hl)		;45ef
	nop			;45f0
	ld a,(l4622h)		;45f1
	xor l			;45f4
	cp b			;45f5
	ld (bc),a		;45f6
	ld a,0f4h		;45f7
	xor (hl)		;45f9
	sub 021h		;45fa
	ld b,024h		;45fc
	ld h,(hl)		;45fe
	dec h			;45ff
sub_4600h:
	inc h			;4600
	ld a,(de)		;4601
l4602h:
	nop			;4602
	ld b,(hl)		;4603
	ld hl,0cc4dh		;4604
	inc h			;4607
	dec h			;4608
	ld c,a			;4609
	ld b,(hl)		;460a
	ld (bc),a		;460b
	inc bc			;460c
	nop			;460d
	ld h,a			;460e
	ld c,b			;460f
	nop			;4610
	or e			;4611
	dec c			;4612
	nop			;4613
	add a,l			;4614
l4615h:
	ld a,(bc)		;4615
	ld ix,00c0dh		;4616
	add hl,bc		;461a
	xor (hl)		;461b
	ld c,e			;461c
	nop			;461d
	ld l,(hl)		;461e
	ld a,l			;461f
	ex af,af'		;4620
	and e			;4621
l4622h:
	sbc a,l			;4622
	sbc a,l			;4623
	rra			;4624
	sub l			;4625
	sub e			;4626
	and e			;4627
	nop			;4628
	sbc a,(hl)		;4629
	sbc a,l			;462a
	rra			;462b
	dec (hl)		;462c
	ld b,e			;462d
	ld c,h			;462e
	add hl,bc		;462f
	ld b,000h		;4630
	add a,01fh		;4632
	sbc a,d			;4634
	ld b,00bh		;4635
	add hl,bc		;4637
l4638h:
	ld b,l			;4638
	ex (sp),hl		;4639
	nop			;463a
	rra			;463b
	sbc a,l			;463c
	add hl,bc		;463d
l463eh:
	res 2,e			;463e
	nop			;4640
	or a			;4641
	dec c			;4642
	dec b			;4643
	rla			;4644
	ld d,c			;4645
	ld hl,00031h		;4646
	ld b,a			;4649
	ld b,l			;464a
	rra			;464b
	jp 00005h		;464c
	or a			;464f
	dec c			;4650
l4651h:
	dec b			;4651
	inc de			;4652
	rra			;4653
	ld b,d			;4654
	nop			;4655
	and a			;4656
	ld b,a			;4657
	dec b			;4658
	ld e,03ah		;4659
	ld e,h			;465b
	nop			;465c
	ld a,c			;465d
	ld a,(sub_6769h+1)	;465e
	ld c,e			;4661
	or (hl)			;4662
	ld e,d			;4663
	ret p			;4664
	rra			;4665
	ld (hl),d		;4666
	ld b,(hl)		;4667
	nop			;4668
	ld b,l			;4669
	rst 28h			;466a
	nop			;466b
	inc de			;466c
	ld a,d			;466d
	or b			;466e
	ld c,e			;466f
	ld b,0e5h		;4670
	ld d,c			;4672
	sbc a,a			;4673
	in a,(045h)		;4674
l4676h:
	ld h,0c2h		;4676
l4678h:
	ld de,0056ch		;4678
	ld (bc),a		;467b
	pop bc			;467c
	and e			;467d
	inc b			;467e
	dec b			;467f
	add hl,bc		;4680
	ex af,af'		;4681
	ld c,097h		;4682
	ld l,l			;4684
	ld c,(hl)		;4685
	inc bc			;4686
	sub b			;4687
	dec h			;4688
	ld b,a			;4689
	ld c,(hl)		;468a
	nop			;468b
	sub h			;468c
	rst 10h			;468d
	and (hl)		;468e
	nop			;468f
	add hl,sp		;4690
	dec b			;4691
	ld a,0a9h		;4692
	inc b			;4694
	ld (bc),a		;4695
	call c,03a4eh		;4696
	jp p,0bf03h		;4699
	ld (hl),a		;469c
	inc d			;469d
	jr c,l46beh		;469e
	sbc a,(hl)		;46a0
	xor c			;46a1
	daa			;46a2
	sub b			;46a3
	scf			;46a4
	rla			;46a5
	ld e,a			;46a6
	xor h			;46a7
	ld hl,(00047h)		;46a8
	sbc a,d			;46ab
	ld de,0aca0h		;46ac
	dec bc			;46af
	add a,b			;46b0
	inc h			;46b1
	and e			;46b2
	in a,(0ffh)		;46b3
	ld a,(hl)		;46b5
	add a,d			;46b6
	ld b,h			;46b7
	ld b,h			;46b8
	inc bc			;46b9
	dec h			;46ba
	ld c,l			;46bb
	ld b,l			;46bc
	and b			;46bd
l46beh:
	ld h,e			;46be
	or l			;46bf
	sbc a,b			;46c0
	ret nz			;46c1
	pop hl			;46c2
	inc c			;46c3
	nop			;46c4
	or c			;46c5
	sbc a,(hl)		;46c6
	ret			;46c7
	ld c,(hl)		;46c8
	ld c,(hl)		;46c9
	push hl			;46ca
	dec de			;46cb
	nop			;46cc
	cp a			;46cd
	xor 0b8h		;46ce
	nop			;46d0
	ld b,0d5h		;46d1
	inc b			;46d3
	inc b			;46d4
	adc a,a			;46d5
	ld (hl),e		;46d6
	ld e,a			;46d7
	sub e			;46d8
	sbc a,b			;46d9
	sub l			;46da
	or c			;46db
	ld h,a			;46dc
	ld e,h			;46dd
	sbc a,a			;46de
	ld (hl),c		;46df
	nop			;46e0
	sbc a,c			;46e1
	inc hl			;46e2
	ex af,af'		;46e3
	pop de			;46e4
	rst 38h			;46e5
	ld b,l			;46e6
	rst 8			;46e7
	ld e,d			;46e8
	ld c,d			;46e9
	dec d			;46ea
	ld c,d			;46eb
	ld b,b			;46ec
	ld c,d			;46ed
	defb 0edh ;next byte illegal after ed	;46ee
	and h			;46ef
	ld b,l			;46f0
sub_46f1h:
	rst 38h			;46f1
	or h			;46f2
	pop af			;46f3
	and c			;46f4
	inc e			;46f5
	ld (0a905h),hl		;46f6
	ret z			;46f9
	nop			;46fa
	cp e			;46fb
	rst 20h			;46fc
	ld bc,04486h		;46fd
	ld l,c			;4700
	add a,0fdh		;4701
	ld b,(hl)		;4703
	cp 04bh			;4704
	jp m,01e1bh		;4706
	rra			;4709
	inc hl			;470a
	ld c,(hl)		;470b
	rst 38h			;470c
	sub h			;470d
	ld b,(hl)		;470e
	ld (bc),a		;470f
	ld c,h			;4710
	ld l,(hl)		;4711
	ld c,h			;4712
	rra			;4713
	inc e			;4714
	pop af			;4715
	ld (bc),a		;4716
	and b			;4717
	add hl,de		;4718
	ld b,(hl)		;4719
	sub c			;471a
	cp c			;471b
	sbc a,h			;471c
	ld (bc),a		;471d
	ld b,(hl)		;471e
	pop bc			;471f
	sub a			;4720
	ld b,h			;4721
	ld c,h			;4722
	cp c			;4723
	rst 20h			;4724
	ld a,0c4h		;4725
	and d			;4727
	ld l,a			;4728
	nop			;4729
	ld e,e			;472a
	ld e,l			;472b
	and c			;472c
	ld d,h			;472d
	cp c			;472e
	ret m			;472f
	adc a,086h		;4730
	ld c,d			;4732
	xor h			;4733
	inc hl			;4734
	ld c,(hl)		;4735
	jp c,0008eh		;4736
	ld (hl),h		;4739
	ld b,l			;473a
	jp nc,000fbh		;473b
	ld c,l			;473e
	ld a,001h		;473f
	ld (0c308h),a		;4741
	ld a,(000e8h)		;4744
	rst 38h			;4747
	or 002h			;4748
	and 0ffh		;474a
	and 07fh		;474c
	or 020h			;474e
	add a,b			;4750
	ld (0f30ah),a		;4751
	out (099h),a		;4754
	ld a,022h		;4756
	adc a,c			;4758
	ei			;4759
	inc b			;475a
	ld a,(015e7h)		;475b
	jr nz,l4780h		;475e
	ld (03e04h),a		;4760
	ld (bc),a		;4763
	ld (0000eh),a		;4764
	pop bc			;4767
l4768h:
	ld hl,(0057ch)		;4768
	ld (hl),01ah		;476b
	ld hl,(0847fh)		;476d
	inc b			;4770
	ret nc			;4771
	ld hl,(00482h)		;4772
	jp nz,02a35h		;4775
	add a,l			;4778
	inc b			;4779
	adc a,b			;477a
	inc b			;477b
	ex af,af'		;477c
	djnz l47a9h		;477d
	adc a,e			;477f
l4780h:
	inc b			;4780
	call nc,sub_6b2ah	;4781
	adc a,(hl)		;4784
	add hl,bc		;4785
	sub c			;4786
	add hl,bc		;4787
	ld e,d			;4788
	sub h			;4789
	add hl,bc		;478a
	sub a			;478b
	call nc,09a09h		;478c
	inc b			;478f
	ret z			;4790
	jr nz,l47bdh		;4791
	sbc a,l			;4793
	inc b			;4794
	jp nc,0dccdh		;4795
	ld c,a			;4798
	jr nz,l4768h		;4799
	ld a,h			;479b
	ld (bc),a		;479c
	ld h,e			;479d
	dec b			;479e
l479fh:
	call 01218h		;479f
	add a,(hl)		;47a2
	call 0059fh		;47a3
	and d			;47a6
	ld (bc),a		;47a7
	ld c,b			;47a8
l47a9h:
	and l			;47a9
	ld (bc),a		;47aa
	add hl,bc		;47ab
	ld de,084b3h		;47ac
	inc b			;47af
	call sub_5da1h		;47b0
	call 00baeh		;47b3
	add hl,sp		;47b6
	sub b			;47b7
	ld (bc),a		;47b8
	xor b			;47b9
	ld (bc),a		;47ba
	dec (hl)		;47bb
	ld h,d			;47bc
l47bdh:
	call 0ab41h		;47bd
	dec b			;47c0
	inc b			;47c1
	ld e,a			;47c2
	call 01aebh		;47c3
	nop			;47c6
	inc de			;47c7
	ld e,d			;47c8
	ld a,(0c13dh)		;47c9
	or a			;47cc
	jp z,08d11h		;47cd
	ld c,(hl)		;47d0
	ld a,011h		;47d1
	rrca			;47d3
	dec b			;47d4
	and l			;47d5
	jr l47deh		;47d6
	ld a,l			;47d8
	pop bc			;47d9
	rst 10h			;47da
	xor d			;47db
	djnz l479fh		;47dc
l47deh:
	ld (004a3h),a		;47de
	jp 01c3eh		;47e1
	ld (00707h),a		;47e4
	and d			;47e7
	inc d			;47e8
	jp 003cdh		;47e9
	ld a,(de)		;47ec
	sbc a,c			;47ed
	adc a,h			;47ee
	halt			;47ef
	ld e,l			;47f0
	ld hl,032afh		;47f1
	dec hl			;47f4
	ld a,(0c395h)		;47f5
	ld l,003h		;47f8
	adc a,04eh		;47fa
	call sub_4fb6h		;47fc
	add hl,bc		;47ff
	ld d,d			;4800
	ret			;4801
	ld (de),a		;4802
l4803h:
	ld d,023h		;4803
	ld c,c			;4805
	ccf			;4806
	ld (bc),a		;4807
	ld d,d			;4808
	ld (bc),a		;4809
	ld c,a			;480a
	ld (bc),a		;480b
	dec h			;480c
	ld b,e			;480d
	ld (bc),a		;480e
	ld b,b			;480f
	ccf			;4810
	rst 0			;4811
	ld (de),a		;4812
	ld b,d			;4813
	ld h,000h		;4814
	ld a,0c1h		;4816
	cp 01eh			;4818
	jp c,l4ef2h		;481a
	dec a			;481d
	jr nz,l4852h		;481e
	ld a,00bh		;4820
	pop de			;4822
	jp 0323ch		;4823
	add a,l			;4826
	inc bc			;4827
	ld a,(0c113h)		;4828
	dec c			;482b
	inc bc			;482c
	dec c			;482d
	inc a			;482e
	jp nz,03d60h		;482f
	nop			;4832
	xor a			;4833
	ret			;4834
	ld hl,l4f3dh		;4835
	ld (04f39h),hl		;4838
	ld hl,05d21h		;483b
	dec b			;483e
	dec sp			;483f
	ld c,a			;4840
	ld hl,(00008h)		;4841
	ld e,(hl)		;4844
	inc hl			;4845
	ld d,(hl)		;4846
	inc hl			;4847
	ld a,d			;4848
	or e			;4849
	jp z,l7b68h		;484a
	inc d			;484d
	ex de,hl		;484e
	ld c,(hl)		;484f
	inc hl			;4850
	dec l			;4851
l4852h:
	ld b,(hl)		;4852
	ld hl,(01215h)		;4853
	ret nz			;4856
l4857h:
	inc e			;4857
	ex de,hl		;4858
	ld (hl),c		;4859
	inc hl			;485a
	ld (hl),b		;485b
	ld (de),a		;485c
	jp l4f15h		;485d
	rst 28h			;4860
	or l			;4861
	and a			;4862
	ld a,b			;4863
	rst 28h			;4864
	rra			;4865
	nop			;4866
	dec b			;4867
	ld (02e05h),hl		;4868
	dec b			;486b
	add hl,de		;486c
	dec b			;486d
	ld sp,00500h		;486e
	ld e,e			;4871
	dec b			;4872
	ld e,(hl)		;4873
	dec b			;4874
	ld h,c			;4875
	dec b			;4876
	ld h,a			;4877
	ld (bc),a		;4878
	dec b			;4879
	ld l,d			;487a
	dec b			;487b
	ld (hl),b		;487c
	dec b			;487d
	ld (hl),e		;487e
	and c			;487f
	inc h			;4880
	dec b			;4881
	rra			;4882
	ld e,h			;4883
	nop			;4884
	ld e,d			;4885
	ld h,h			;4886
	ld e,d			;4887
	out (059h),a		;4888
	ei			;488a
	ld e,c			;488b
	ld c,c			;488c
	ld (bc),a		;488d
	ld e,d			;488e
	dec hl			;488f
sub_4890h:
	ld e,d			;4890
	ld b,e			;4891
	ld e,d			;4892
	halt			;4893
	jp po,l5920h		;4894
	ret nc			;4897
	ld e,c			;4898
	ld l,000h		;4899
	ld e,d			;489b
	ld b,b			;489c
	ld e,d			;489d
	ld b,(hl)		;489e
	ld e,d			;489f
	ld sp,0d65ah		;48a0
	rlca			;48a3
	ld e,c			;48a4
	ret			;48a5
	di			;48a6
	ld hl,09a38h		;48a7
	jp l4fd9h		;48aa
	ld bc,000c1h		;48ad
	ldir			;48b0
	ld hl,0c0fbh		;48b2
	ld l,c			;48b5
	nop			;48b6
	ld a,0c3h		;48b7
	ld (01281h),a		;48b9
	ld a,013h		;48bc
	ld (0fff1h),a		;48be
	adc a,l			;48c1
	jr c,l4857h		;48c2
sub_48c4h:
	sbc a,h			;48c4
	adc a,h			;48c5
l48c6h:
	rra			;48c6
	rst 18h			;48c7
	di			;48c8
	or 0e1h			;48c9
	ld e,b			;48cb
	inc b			;48cc
	dec c			;48cd
	add a,b			;48ce
	add a,003h		;48cf
	ld (bc),a		;48d1
	inc bc			;48d2
	daa			;48d3
	adc a,a			;48d4
	and e			;48d5
	ld (093ach),hl		;48d6
	dec (hl)		;48d9
	ld de,0f328h		;48da
	add hl,sp		;48dd
	adc a,h			;48de
	inc hl			;48df
	inc a			;48e0
	and 0efh		;48e1
	inc hl			;48e3
	dec de			;48e4
	xor a			;48e5
	ld (01103h),hl		;48e6
	ei			;48e9
	ret			;48ea
	sbc a,(hl)		;48eb
	sub d			;48ec
	ld e,a			;48ed
	jp m,03454h		;48ee
	ex af,af'		;48f1
	ld d,b			;48f2
	dec b			;48f3
l48f4h:
	jr l4946h		;48f4
	and e			;48f6
	ld de,0f50eh		;48f7
l48fah:
	ld e,b			;48fa
	ld c,04eh		;48fb
	add a,e			;48fd
	ld e,c			;48fe
	ld c,009h		;48ff
	ret			;4901
	push af			;4902
	rst 18h			;4903
	add hl,sp		;4904
	inc l			;4905
	add hl,bc		;4906
	in a,(099h)		;4907
	rrca			;4909
	call c,0af1ah		;490a
	inc c			;490d
	ret c			;490e
	ld (0c1a0h),a		;490f
	ld l,007h		;4912
	call c,06d24h		;4914
	ld h,h			;4917
	inc bc			;4918
	pop af			;4919
	ld hl,(03a02h)		;491a
	ld c,d			;491d
	ld c,h			;491e
	or (hl)			;491f
	ld h,048h		;4920
	ld c,d			;4922
	nop			;4923
	ld (bc),a		;4924
	rlca			;4925
	adc a,00dh		;4926
l4928h:
	ld c,d			;4928
	rrca			;4929
	ld e,h			;492a
	ld (bc),a		;492b
	rla			;492c
	ld a,(01700h)		;492d
	in a,(0e3h)		;4930
	djnz l4951h		;4932
	ld e,b			;4934
	rla			;4935
	dec de			;4936
	ld c,d			;4937
	ld e,b			;4938
	rrca			;4939
	jr l48c6h		;493a
	ld c,d			;493c
	sbc a,(hl)		;493d
	or e			;493e
	inc b			;493f
	ld bc,0b82ah		;4940
	call c,00f17h		;4943
l4946h:
	ld (hl),b		;4946
	ld c,b			;4947
	ld d,010h		;4948
	and 04fh		;494a
	ld b,0e3h		;494c
	daa			;494e
	ld b,002h		;494f
l4951h:
	ld b,b			;4951
	inc c			;4952
	ld c,002h		;4953
	inc h			;4955
	jr c,l48f4h		;4956
	sbc a,(hl)		;4958
	ld l,b			;4959
	adc a,04eh		;495a
	ld l,b			;495c
	dec de			;495d
	inc b			;495e
	rlca			;495f
	jr c,l48fah		;4960
	ld d,(hl)		;4962
	ld (hl),d		;4963
	dec sp			;4964
	ld d,h			;4965
	ld d,(hl)		;4966
	ld (hl),a		;4967
	rst 0			;4968
	scf			;4969
	inc b			;496a
	ld a,a			;496b
	adc a,(hl)		;496c
	rrca			;496d
	rst 0			;496e
	add a,a			;496f
	add a,a			;4970
	rla			;4971
	ld a,(09c07h)		;4972
	call z,01f0fh		;4975
	ld a,c			;4978
	ld b,b			;4979
	rra			;497a
	call p,0022fh		;497b
	jp po,06f27h		;497e
	rst 20h			;4981
	rla			;4982
	ex af,af'		;4983
	inc hl			;4984
	add a,(hl)		;4985
	ld (hl),a		;4986
	ld (hl),b		;4987
	ld b,015h		;4988
	cp d			;498a
	ld (bc),a		;498b
	ld l,b			;498c
	ld bc,05838h		;498d
	rla			;4990
	ld (hl),b		;4991
	ld c,020h		;4992
	ld a,b			;4994
	ret nc			;4995
	ld a,(05c04h)		;4996
	ld d,d			;4999
	add a,h			;499a
	ret nz			;499b
	ld de,l4e10h		;499c
	ld d,b			;499f
	ld d,d			;49a0
	ret nz			;49a1
	ld a,(de)		;49a2
	ld a,(de)		;49a3
	inc e			;49a4
	ld e,h			;49a5
	inc d			;49a6
	ld h,b			;49a7
	ld a,(bc)		;49a8
	rlca			;49a9
	ld h,028h		;49aa
	ld d,d			;49ac
	jr nz,l4a0bh		;49ad
	ld d,006h		;49af
	jr nc,$+52		;49b1
	inc (hl)		;49b3
	ld c,(hl)		;49b4
	call nz,sub_4e06h	;49b5
	jr z,l4a06h		;49b8
	ld l,(hl)		;49ba
	ld b,01eh		;49bb
	ccf			;49bd
	ld (hl),c		;49be
	rlca			;49bf
	cpl			;49c0
	or l			;49c1
	rlca			;49c2
	dec c			;49c3
	ld a,(bc)		;49c4
	sbc a,c			;49c5
	ld h,00dh		;49c6
	ld h,(hl)		;49c8
	ld b,03eh		;49c9
	and (hl)		;49cb
	ld e,h			;49cc
	ld (bc),a		;49cd
	inc d			;49ce
	ld l,0b8h		;49cf
	ld d,b			;49d1
	ld (hl),l		;49d2
	ld l,c			;49d3
	ld l,0a9h		;49d4
	ld e,e			;49d6
	ld (hl),b		;49d7
	ld a,b			;49d8
	inc d			;49d9
	ex (sp),hl		;49da
	ld e,e			;49db
l49dch:
	nop			;49dc
	jr c,$+93		;49dd
	jp po,l7b34h		;49df
	sub 000h		;49e2
	ld d,00bh		;49e4
	xor h			;49e6
	ld e,(hl)		;49e7
	inc bc			;49e8
	ld e,0bch		;49e9
sub_49ebh:
	inc l			;49eb
	inc hl			;49ec
	inc sp			;49ed
	ld sp,0e100h		;49ee
	sub l			;49f1
	ret nz			;49f2
	rst 20h			;49f3
	inc l			;49f4
	nop			;49f5
	dec de			;49f6
	ld d,b			;49f7
	inc l			;49f8
	dec bc			;49f9
	xor e			;49fa
	inc d			;49fb
	rlca			;49fc
	jr c,l4a5bh		;49fd
	ld e,(hl)		;49ff
	or l			;4a00
	ld e,c			;4a01
	ld (hl),l		;4a02
	rlca			;4a03
	dec b			;4a04
	inc a			;4a05
l4a06h:
	add a,h			;4a06
	ld h,h			;4a07
	ld a,h			;4a08
	inc (hl)		;4a09
l4a0ah:
	inc hl			;4a0a
l4a0bh:
	sub a			;4a0b
	ld c,b			;4a0c
	ld b,b			;4a0d
	ld b,d			;4a0e
	sub (hl)		;4a0f
	call nz,08508h		;4a10
	ld a,b			;4a13
	jp po,09e3ch		;4a14
	ex af,af'		;4a17
	ex (sp),hl		;4a18
	inc (hl)		;4a19
	inc de			;4a1a
	sub a			;4a1b
	ld d,b			;4a1c
	ld e,c			;4a1d
	jr z,l4a98h		;4a1e
	ret nz			;4a20
	sbc a,000h		;4a21
	jp m,0946dh		;4a23
sub_4a26h:
	sbc a,d			;4a26
	adc a,(hl)		;4a27
	sub d			;4a28
	ld l,069h		;4a29
	inc h			;4a2b
	ld h,d			;4a2c
	jp m,00671h		;4a2d
	ld h,d			;4a30
	inc a			;4a31
	ld l,e			;4a32
	jr nz,l4aa7h		;4a33
	ld e,b			;4a35
	ld a,b			;4a36
	ld b,l			;4a37
	adc a,e			;4a38
	retn			;4a39
	adc a,h			;4a3b
	ld l,025h		;4a3c
	ld e,h			;4a3e
	ex af,af'		;4a3f
	add a,(hl)		;4a40
	ld h,h			;4a41
	inc d			;4a42
	ex af,af'		;4a43
	ret m			;4a44
	ld l,h			;4a45
l4a46h:
	inc l			;4a46
	ld b,0b2h		;4a47
	jr nz,l4a7bh		;4a49
	ret			;4a4b
	ld c,c			;4a4c
	jr nc,l4a57h		;4a4d
	rra			;4a4f
	or c			;4a50
	xor l			;4a51
	jr z,$+22		;4a52
	jr l4a66h		;4a54
	cp d			;4a56
l4a57h:
	inc d			;4a57
	ld de,0505eh		;4a58
l4a5bh:
	ld d,08bh		;4a5b
	cp b			;4a5d
	ccf			;4a5e
	ld e,(hl)		;4a5f
	sub l			;4a60
	xor c			;4a61
	xor l			;4a62
	ld e,a			;4a63
	jr nz,l4a96h		;4a64
l4a66h:
	sbc a,h			;4a66
	jr c,l4ab7h		;4a67
	jr nc,l4a46h		;4a69
	rlca			;4a6b
	daa			;4a6c
	ld d,a			;4a6d
	jr c,l4a7ah		;4a6e
	ld h,c			;4a70
	jp po,00357h		;4a71
	dec hl			;4a74
	ld (hl),d		;4a75
	ld b,02dh		;4a76
	ld b,a			;4a78
	rla			;4a79
l4a7ah:
	ld l,e			;4a7a
l4a7bh:
	ld l,l			;4a7b
l4a7ch:
	ld b,079h		;4a7c
	ld (hl),e		;4a7e
	dec h			;4a7f
	sub 0d2h		;4a80
	call nz,00835h		;4a82
	djnz $-22		;4a85
	cp d			;4a87
	ld h,(hl)		;4a88
	ld b,020h		;4a89
l4a8bh:
	jr z,$-25		;4a8b
	ld (hl),a		;4a8d
	nop			;4a8e
	rla			;4a8f
l4a90h:
	cp c			;4a90
	ld d,028h		;4a91
	xor h			;4a93
	ld b,016h		;4a94
l4a96h:
	adc a,l			;4a96
	adc a,d			;4a97
l4a98h:
	ld (hl),d		;4a98
	ld b,030h		;4a99
	ld a,b			;4a9b
	or e			;4a9c
	ex af,af'		;4a9d
	rrca			;4a9e
	jr z,$-45		;4a9f
	ex af,af'		;4aa1
	jr c,$-48		;4aa2
	ld b,b			;4aa4
	ld b,a			;4aa5
	or d			;4aa6
l4aa7h:
	add hl,de		;4aa7
	jr nc,$+25		;4aa8
	pop hl			;4aaa
	ld b,b			;4aab
	call nc,070a9h		;4aac
	add a,h			;4aaf
	adc a,h			;4ab0
	ret z			;4ab1
	ex (sp),hl		;4ab2
	ld a,c			;4ab3
	sub h			;4ab4
	out (02fh),a		;4ab5
l4ab7h:
	ld h,e			;4ab7
	add a,d			;4ab8
	adc a,l			;4ab9
	jr nc,$-37		;4aba
	add hl,sp		;4abc
	call p,014e5h		;4abd
	jr nz,l4a90h		;4ac0
	ld hl,007d4h		;4ac2
	rst 38h			;4ac5
sub_4ac6h:
	or h			;4ac6
	adc a,h			;4ac7
	or l			;4ac8
	sub b			;4ac9
	or e			;4aca
	or a			;4acb
	and h			;4acc
	ld e,020h		;4acd
	and c			;4acf
	ret c			;4ad0
	add hl,hl		;4ad1
	ld e,(hl)		;4ad2
	jr c,l4affh		;4ad3
	inc l			;4ad5
	jr nz,l4af4h		;4ad6
	ex af,af'		;4ad8
	ld (hl),038h		;4ad9
	ld sp,01638h		;4adb
	xor a			;4ade
	sbc a,(hl)		;4adf
	add a,b			;4ae0
	ld a,e			;4ae1
	rlca			;4ae2
	ld a,(l5800h)		;4ae3
	rlca			;4ae6
	xor l			;4ae7
	rst 18h			;4ae8
	sbc a,h			;4ae9
	call nc,0f1a2h		;4aea
	jr l4a8bh		;4aed
	ld c,e			;4aef
	inc b			;4af0
	inc hl			;4af1
	in a,(0cch)		;4af2
l4af4h:
	ld (hl),0c5h		;4af4
	sub (hl)		;4af6
	rlca			;4af7
	ld e,(hl)		;4af8
	ld c,c			;4af9
	ld c,010h		;4afa
	dec bc			;4afc
	ld c,095h		;4afd
l4affh:
	ld a,d			;4aff
	inc b			;4b00
	or e			;4b01
	ld h,027h		;4b02
	ld (03a8eh),a		;4b04
	add hl,sp		;4b07
	ld b,e			;4b08
	xor l			;4b09
	jp p,02ee0h		;4b0a
	ld (bc),a		;4b0d
	ld (hl),b		;4b0e
	ret c			;4b0f
	cpl			;4b10
	ld hl,08e70h		;4b11
	ret po			;4b14
	cpl			;4b15
	sbc a,d			;4b16
	adc a,(hl)		;4b17
	ld c,e			;4b18
	adc a,(hl)		;4b19
	cpl			;4b1a
	ld d,(hl)		;4b1b
	dec sp			;4b1c
	rlca			;4b1d
	ld l,e			;4b1e
	rrca			;4b1f
	dec hl			;4b20
	rrca			;4b21
	add a,l			;4b22
	ld c,b			;4b23
	inc a			;4b24
	rlca			;4b25
	cp b			;4b26
	inc a			;4b27
	ld c,h			;4b28
	ex (sp),hl		;4b29
	rlca			;4b2a
sub_4b2bh:
	rra			;4b2b
	or a			;4b2c
	ld (bc),a		;4b2d
	rra			;4b2e
	scf			;4b2f
	ret z			;4b30
	cp d			;4b31
	rlca			;4b32
	nop			;4b33
	or h			;4b34
	rst 30h			;4b35
	jp po,0960fh		;4b36
	adc a,037h		;4b39
	ld (hl),e		;4b3b
	ld h,b			;4b3c
	rlca			;4b3d
	ld (hl),070h		;4b3e
	ld h,a			;4b40
	inc h			;4b41
	cp b			;4b42
	adc a,(hl)		;4b43
	dec l			;4b44
	inc b			;4b45
	ld (028aah),hl		;4b46
	ld h,d			;4b49
	xor h			;4b4a
	dec l			;4b4b
	sbc a,(hl)		;4b4c
	pop bc			;4b4d
	ld h,d			;4b4e
	xor d			;4b4f
	xor h			;4b50
	rst 18h			;4b51
	ld a,b			;4b52
	inc b			;4b53
	in a,(077h)		;4b54
	ld b,047h		;4b56
	sbc a,e			;4b58
	or a			;4b59
	ex (sp),hl		;4b5a
	rlca			;4b5b
	sub (hl)		;4b5c
	ld c,d			;4b5d
	ld h,a			;4b5e
	xor a			;4b5f
	ld l,(hl)		;4b60
	rst 8			;4b61
	ld (hl),c		;4b62
	rlca			;4b63
	ld h,b			;4b64
	rst 30h			;4b65
	ld a,e			;4b66
	rlca			;4b67
	adc a,e			;4b68
	xor b			;4b69
l4b6ah:
	daa			;4b6a
	ld d,a			;4b6b
	add a,l			;4b6c
	xor b			;4b6d
	or l			;4b6e
	xor 007h		;4b6f
	ld h,a			;4b71
	jr c,l4b7bh		;4b72
	jr z,l4b84h		;4b74
	and a			;4b76
	or h			;4b77
	ld e,a			;4b78
	adc a,(hl)		;4b79
	inc c			;4b7a
l4b7bh:
	cp h			;4b7b
	jp (hl)			;4b7c
	inc hl			;4b7d
	xor d			;4b7e
	ld (hl),b		;4b7f
	and b			;4b80
	ld h,(hl)		;4b81
	ex af,af'		;4b82
	ld h,d			;4b83
l4b84h:
	rrca			;4b84
l4b85h:
	ld e,a			;4b85
	and c			;4b86
	inc e			;4b87
	rrca			;4b88
	ld b,a			;4b89
	add a,a			;4b8a
	inc de			;4b8b
	rlca			;4b8c
	ld e,b			;4b8d
	rlca			;4b8e
	add a,e			;4b8f
	or h			;4b90
	ld d,(hl)		;4b91
	scf			;4b92
	add a,b			;4b93
	or h			;4b94
	or (hl)			;4b95
	xor d			;4b96
	djnz l4b6ah		;4b97
	rrca			;4b99
	ld h,b			;4b9a
	xor d			;4b9b
l4b9ch:
	xor d			;4b9c
	rla			;4b9d
	ret nz			;4b9e
	ld l,h			;4b9f
	ld l,(hl)		;4ba0
	ld h,d			;4ba1
	sub h			;4ba2
	and e			;4ba3
l4ba4h:
	push bc			;4ba4
	rra			;4ba5
	ld l,h			;4ba6
	ld a,b			;4ba7
	ld c,a			;4ba8
	call 08178h		;4ba9
	sbc a,b			;4bac
	ld h,d			;4bad
	ld b,(hl)		;4bae
	ld h,h			;4baf
	add a,b			;4bb0
	add ix,bc		;4bb1
	rlca			;4bb3
	out (04fh),a		;4bb4
	jr c,l4bbah		;4bb6
	rla			;4bb8
	inc hl			;4bb9
l4bbah:
	ld c,0a8h		;4bba
	xor d			;4bbc
	rst 28h			;4bbd
	ld (hl),027h		;4bbe
	sbc a,l			;4bc0
	cpl			;4bc1
	ld l,(hl)		;4bc2
	ex af,af'		;4bc3
	inc hl			;4bc4
	ld l,h			;4bc5
	or d			;4bc6
	ld (hl),d		;4bc7
	ex af,af'		;4bc8
	ld a,(de)		;4bc9
	ld l,e			;4bca
	ld h,d			;4bcb
	ld a,(01aach)		;4bcc
	ld (hl),019h		;4bcf
	ld hl,(032b6h)		;4bd1
	jr l4bddh		;4bd4
	jp (hl)			;4bd6
	jr nz,l4b85h		;4bd7
	jr nz,l4ba4h		;4bd9
	ld (bc),a		;4bdb
	cp b			;4bdc
l4bddh:
	jr nz,l4b9ch		;4bdd
	ld b,h			;4bdf
	ex de,hl		;4be0
	djnz $+4		;4be1
	ld (019ach),a		;4be3
	rst 20h			;4be6
	ld a,(de)		;4be7
	ld c,h			;4be8
	ld a,c			;4be9
	ld e,a			;4bea
	sub 008h		;4beb
	xor b			;4bed
	ld a,(de)		;4bee
	and l			;4bef
	xor h			;4bf0
	add a,c			;4bf1
	ld e,l			;4bf2
	ld (bc),a		;4bf3
	ld (0f366h),hl		;4bf4
	call p,04a6fh		;4bf7
	pop af			;4bfa
	inc a			;4bfb
	ex (sp),hl		;4bfc
	ld d,a			;4bfd
	ld l,c			;4bfe
	halt			;4bff
	ld l,b			;4c00
	rrca			;4c01
	sbc a,d			;4c02
	inc e			;4c03
	ld h,h			;4c04
	rlca			;4c05
	ld h,d			;4c06
	and l			;4c07
	ld (bc),a		;4c08
	rrca			;4c09
	ld h,b			;4c0a
	inc c			;4c0b
	jp m,06f27h		;4c0c
	inc d			;4c0f
	rrca			;4c10
	rlca			;4c11
	ld (hl),b		;4c12
	adc a,h			;4c13
	call po,00245h		;4c14
	rst 30h			;4c17
	ld b,091h		;4c18
	call c,01296h		;4c1a
	ld b,066h		;4c1d
	jr z,l4c26h		;4c1f
	add a,0b1h		;4c21
	ld (hl),b		;4c23
	rlca			;4c24
	sub b			;4c25
l4c26h:
	ld e,h			;4c26
	sub d			;4c27
	dec h			;4c28
	rrca			;4c29
	ld c,c			;4c2a
	and l			;4c2b
	rla			;4c2c
	res 5,b			;4c2d
l4c2fh:
	rrca			;4c2f
	xor b			;4c30
	inc l			;4c31
	xor d			;4c32
	cp b			;4c33
	sub 025h		;4c34
	cp b			;4c36
	jr z,l4c8bh		;4c37
	ld l,a			;4c39
	cp e			;4c3a
	adc a,e			;4c3b
	xor d			;4c3c
	jr nz,l4c61h		;4c3d
	dec hl			;4c3f
	ld e,005h		;4c40
	ld c,a			;4c42
	dec h			;4c43
	in a,(029h)		;4c44
	nop			;4c46
	ei			;4c47
	ld (hl),02dh		;4c48
l4c4ah:
	ld (hl),h		;4c4a
	dec (hl)		;4c4b
	and h			;4c4c
	and (hl)		;4c4d
	dec a			;4c4e
	ld h,d			;4c4f
	cp e			;4c50
	dec sp			;4c51
	rrca			;4c52
	add a,a			;4c53
	ld (hl),b		;4c54
	ld l,007h		;4c55
	inc h			;4c57
	xor h			;4c58
	ld b,b			;4c59
	ei			;4c5a
	or c			;4c5b
	sub 027h		;4c5c
	rrca			;4c5e
	ld b,(hl)		;4c5f
	ld h,h			;4c60
l4c61h:
	and h			;4c61
	daa			;4c62
	ld h,c			;4c63
	rlca			;4c64
	inc b			;4c65
	and h			;4c66
	cpl			;4c67
	call sub_63f2h		;4c68
	ld a,(02a57h)		;4c6b
	rrca			;4c6e
	cp e			;4c6f
	ld c,d			;4c70
	ld h,c			;4c71
	ld d,b			;4c72
	ld l,d			;4c73
	ld c,h			;4c74
	defb 0edh ;next byte illegal after ed	;4c75
	adc a,0e0h		;4c76
	ld l,b			;4c78
	rrca			;4c79
	ld e,b			;4c7a
	ld a,b			;4c7b
	ld c,b			;4c7c
	and h			;4c7d
	jp 00ccah		;4c7e
	or a			;4c81
	jp z,0cac6h		;4c82
	rst 38h			;4c85
	ld e,d			;4c86
	inc bc			;4c87
	jr nz,l4c2fh		;4c88
	rst 38h			;4c8a
l4c8bh:
	jp c,0ff18h		;4c8b
	ld d,(hl)		;4c8e
	inc c			;4c8f
	inc bc			;4c90
	cp d			;4c91
	and h			;4c92
	nop			;4c93
l4c94h:
	adc a,0c8h		;4c94
	ex de,hl		;4c96
	jp m,0a29bh		;4c97
	ld h,e			;4c9a
	rst 38h			;4c9b
	sbc a,b			;4c9c
	defb 0edh ;next byte illegal after ed	;4c9d
	sub 0b5h		;4c9e
	cp c			;4ca0
	and 09eh		;4ca1
	ld l,(hl)		;4ca3
	ld (l6797h),a		;4ca4
	xor b			;4ca7
	sbc a,c			;4ca8
	ld e,e			;4ca9
	ld e,b			;4caa
l4cabh:
	rst 30h			;4cab
	ld e,d			;4cac
	dec hl			;4cad
	nop			;4cae
	sub e			;4caf
	inc bc			;4cb0
	sbc a,(hl)		;4cb1
	dec hl			;4cb2
	ld (hl),d		;4cb3
	rrca			;4cb4
	adc a,l			;4cb5
	dec hl			;4cb6
	ld e,e			;4cb7
	nop			;4cb8
	cp 039h			;4cb9
	ld sp,01689h		;4cbb
	ld sp,hl		;4cbe
	ld l,(hl)		;4cbf
	ex af,af'		;4cc0
	rst 30h			;4cc1
	ld e,d			;4cc2
	ld b,0cdh		;4cc3
	ld e,d			;4cc5
	and (hl)		;4cc6
	dec de			;4cc7
	xor a			;4cc8
	dec de			;4cc9
	and (hl)		;4cca
	dec de			;4ccb
	rst 30h			;4ccc
	ld e,c			;4ccd
	rla			;4cce
	ld h,0bah		;4ccf
	ld l,a			;4cd1
	ld e,b			;4cd2
	jr $+92			;4cd3
	jp m,012e3h		;4cd5
	ld c,d			;4cd8
	ld h,l			;4cd9
	adc a,b			;4cda
	cp c			;4cdb
	set 2,l			;4cdc
	call nc,0ad58h		;4cde
	ld h,d			;4ce1
	inc b			;4ce2
	add a,a			;4ce3
	ld a,(0e78dh)		;4ce4
	ld l,d			;4ce7
	inc e			;4ce8
	jp p,l5061h		;4ce9
	ld a,(de)		;4cec
	jr z,l4cabh		;4ced
	adc a,c			;4cef
	inc a			;4cf0
	add a,e			;4cf1
	ld h,034h		;4cf2
	ld b,0b4h		;4cf4
	rrca			;4cf6
	ret			;4cf7
	ld e,(hl)		;4cf8
	push af			;4cf9
	dec (hl)		;4cfa
	ret nc			;4cfb
	ld h,a			;4cfc
	ld b,h			;4cfd
	djnz l4c94h		;4cfe
	ld l,(hl)		;4d00
l4d01h:
	daa			;4d01
	scf			;4d02
	ld e,h			;4d03
	or l			;4d04
	xor h			;4d05
	jp c,0ba67h		;4d06
	ld c,00eh		;4d09
	or h			;4d0b
	xor b			;4d0c
	adc a,(hl)		;4d0d
	sbc a,l			;4d0e
	inc h			;4d0f
	inc l			;4d10
	ld l,09dh		;4d11
	ld l,(hl)		;4d13
	or e			;4d14
	rst 28h			;4d15
	adc a,(hl)		;4d16
	ld h,02bh		;4d17
	and e			;4d19
	ld e,b			;4d1a
	xor d			;4d1b
	ld (08c9fh),a		;4d1c
	add a,h			;4d1f
	ld l,h			;4d20
	inc b			;4d21
	inc sp			;4d22
	and d			;4d23
	xor a			;4d24
	di			;4d25
	ld h,0ffh		;4d26
	ld b,048h		;4d28
	jr nz,l4d33h		;4d2a
	ld h,00ah		;4d2c
l4d2eh:
	jr l4d4eh		;4d2e
	cp 026h			;4d30
	xor b			;4d32
l4d33h:
	ld l,e			;4d33
	ld hl,(017feh)		;4d34
	jp nz,036b1h		;4d37
	cp 08dh			;4d3a
	add a,0feh		;4d3c
	ld h,e			;4d3e
	cp 06eh			;4d3f
	ld (hl),d		;4d41
	ld a,a			;4d42
	dec h			;4d43
	xor a			;4d44
	and a			;4d45
	ld l,000h		;4d46
	pop af			;4d48
	add a,b			;4d49
	ld d,h			;4d4a
	ld l,08eh		;4d4b
	sbc a,b			;4d4d
l4d4eh:
	add a,d			;4d4e
	adc a,c			;4d4f
	ld b,0a0h		;4d50
	and d			;4d52
	call m,0d667h		;4d53
	push de			;4d56
	ld c,d			;4d57
	djnz l4dach		;4d58
	ld c,0b2h		;4d5a
	add a,c			;4d5c
	ld c,004h		;4d5d
	ld (hl),h		;4d5f
	cp h			;4d60
	ld l,(hl)		;4d61
	and b			;4d62
	ld a,(de)		;4d63
	ld a,h			;4d64
	xor (hl)		;4d65
	or b			;4d66
	adc a,b			;4d67
	ld a,(hl)		;4d68
	ld e,097h		;4d69
	add a,(hl)		;4d6b
	ld h,(hl)		;4d6c
	ld l,b			;4d6d
	jr z,$+44		;4d6e
	adc a,b			;4d70
	ld h,b			;4d71
	inc (hl)		;4d72
	sub h			;4d73
	ld l,03eh		;4d74
	ld a,d			;4d76
	ld (hl),049h		;4d77
	nop			;4d79
	push bc			;4d7a
	push de			;4d7b
	push hl			;4d7c
	exx			;4d7d
	jr nc,l4d88h		;4d7e
	push af			;4d80
	dec b			;4d81
	ld a,(008dfh)		;4d82
	di			;4d85
	and 0efh		;4d86
l4d88h:
	ld (0d304h),a		;4d88
	sbc a,c			;4d8b
	ld (0803eh),hl		;4d8c
	inc bc			;4d8f
	ld a,(00de0h)		;4d90
	ld a,(de)		;4d93
	cp a			;4d94
	ld (00de0h),a		;4d95
	add a,c			;4d98
	add a,003h		;4d99
	ld (bc),a		;4d9b
	inc bc			;4d9c
	jr nz,l4d2eh		;4d9d
	inc bc			;4d9f
	in a,(099h)		;4da0
	and 020h		;4da2
	ld a,(de)		;4da4
	jp nz,l5922h		;4da5
	ld b,0cah		;4da8
	nop			;4daa
	add hl,hl		;4dab
l4dach:
	ld e,c			;4dac
	ld a,(0c1f5h)		;4dad
	or a			;4db0
	jp nz,08c40h		;4db1
	ld b,0fch		;4db4
	pop bc			;4db6
	dec e			;4db7
	ld h,b			;4db8
	sub d			;4db9
	inc sp			;4dba
	ld d,h			;4dbb
	pop bc			;4dbc
	ld b,a			;4dbd
	add a,009h		;4dbe
	sub a			;4dc0
	add hl,bc		;4dc1
	inc c			;4dc2
	pop af			;4dc3
	rst 38h			;4dc4
	add a,b			;4dc5
	add hl,bc		;4dc6
	ld h,b			;4dc7
	sub e			;4dc8
	add hl,bc		;4dc9
	rst 20h			;4dca
	rst 38h			;4dcb
	and 063h		;4dcc
	defb 0fdh,00ah,088h ;illegal sequence	;4dce
	ld a,(bc)		;4dd1
	ld a,(de)		;4dd2
	pop hl			;4dd3
	ld c,l			;4dd4
	add a,d			;4dd5
	ret po			;4dd6
	ld e,e			;4dd7
	or 042h			;4dd8
	ret p			;4dda
	ld e,e			;4ddb
	nop			;4ddc
	call 05f5dh		;4ddd
	pop hl			;4de0
	pop de			;4de1
	pop bc			;4de2
	pop af			;4de3
	ex af,af'		;4de4
	ld h,e			;4de5
	exx			;4de6
	dec b			;4de7
l4de8h:
	ret			;4de8
	ld l,00eh		;4de9
	or 002h			;4deb
	ld l,05eh		;4ded
	xor a			;4def
	ld c,d			;4df0
	dec e			;4df1
	ld c,c			;4df2
l4df3h:
	dec h			;4df3
	rst 18h			;4df4
	dec (hl)		;4df5
	djnz l4dfeh		;4df6
	and c			;4df8
	jr l4e39h		;4df9
	rst 10h			;4dfb
	ld e,e			;4dfc
	ld e,a			;4dfd
l4dfeh:
	ld c,e			;4dfe
	ld sp,0dc99h		;4dff
	add a,078h		;4e02
	sub c			;4e04
	sbc a,h			;4e05
sub_4e06h:
	jp 01094h		;4e06
	jp nc,l5559h		;4e09
	dec b			;4e0c
	call 09160h		;4e0d
l4e10h:
	ld (bc),a		;4e10
	ld e,002h		;4e11
	ld (hl),l		;4e13
	dec b			;4e14
	ld b,d			;4e15
	ld de,032c1h		;4e16
	and e			;4e19
	nop			;4e1a
	call sub_5f04h		;4e1b
	ld a,(0fff6h)		;4e1e
	ld (0a38ah),a		;4e21
	or (hl)			;4e24
	jr c,$+19		;4e25
	push af			;4e27
	ld e,c			;4e28
	xor a			;4e29
	or h			;4e2a
	ret nc			;4e2b
	sbc a,a			;4e2c
	jp 010e6h		;4e2d
	ld b,b			;4e30
	call nz,02721h		;4e31
	ld a,071h		;4e34
	call 09901h		;4e36
l4e39h:
	ld (hl),d		;4e39
	ld a,001h		;4e3a
	ld (0c156h),a		;4e3c
	adc a,(hl)		;4e3f
	ld e,022h		;4e40
	nop			;4e42
	xor a			;4e43
	ld hl,0000eh		;4e44
	cp (hl)			;4e47
l4e48h:
	jp z,05a17h		;4e48
	ld (hl),a		;4e4b
	call 00313h		;4e4c
	ret nc			;4e4f
	ld e,c			;4e50
	jr nz,$+49		;4e51
	call 0049bh		;4e53
	ld e,d			;4e56
	jr nz,$+14		;4e57
	call 02f18h		;4e59
	ld h,(hl)		;4e5c
	sub b			;4e5d
	ld (bc),a		;4e5e
	ld (hl),d		;4e5f
	ld (bc),a		;4e60
	ld e,a			;4e61
	ld e,d			;4e62
	call 0c800h		;4e63
	ld h,h			;4e66
	call sub_5b2dh		;4e67
	call sub_5d3ah		;4e6a
	inc h			;4e6d
	call 00e69h		;4e6e
	jr nc,l4e75h		;4e71
	ld l,a			;4e73
	ld e,b			;4e74
l4e75h:
	dec b			;4e75
	ld c,075h		;4e76
	add a,h			;4e78
	djnz l4e48h		;4e79
	adc a,d			;4e7b
	ld e,d			;4e7c
	dec bc			;4e7d
	ld e,d			;4e7e
	ei			;4e7f
l4e80h:
	call 00c48h		;4e80
	inc c			;4e83
	inc bc			;4e84
	ld (bc),a		;4e85
	ld b,005h		;4e86
	adc a,b			;4e88
	in a,(0afh)		;4e89
	ld h,h			;4e8b
	add a,b			;4e8c
	ld (hl),a		;4e8d
	dec d			;4e8e
	dec b			;4e8f
	ld hl,0c161h		;4e90
	ld de,00008h		;4e93
	nop			;4e96
	jp 09678h		;4e97
	add a,b			;4e9a
	jp (hl)			;4e9b
	ei			;4e9c
	and 010h		;4e9d
	jp nz,00385h		;4e9f
	ld e,d			;4ea2
	ld a,(05a84h)		;4ea3
	or a			;4ea6
	ret nz			;4ea7
	ld a,b			;4ea8
	ld hl,0c306h		;4ea9
	ld d,c			;4eac
	dec b			;4ead
	ld (hl),c		;4eae
	ld h,h			;4eaf
	rlca			;4eb0
	ld hl,(090eah)		;4eb1
	ld a,(de)		;4eb4
	ld bc,02013h		;4eb5
	ld (00443h),a		;4eb8
	pop bc			;4ebb
	ld a,0e0h		;4ebc
	ld (097a4h),a		;4ebe
	and d			;4ec1
	rst 8			;4ec2
	ld a,e			;4ec3
	inc bc			;4ec4
	ret z			;4ec5
	ld a,(0fbe8h)		;4ec6
	bit 6,a			;4ec9
	add hl,bc		;4ecb
	dec b			;4ecc
	jp nz,l5ab0h		;4ecd
	dec h			;4ed0
	ld b,000h		;4ed1
	ret			;4ed3
	ld (0c202h),a		;4ed4
	add a,004h		;4ed7
	ld (00608h),a		;4ed9
	jp nz,0d03ah		;4edc
	jp p,0c9c3h		;4edf
	ld e,d			;4ee2
	ld b,d			;4ee3
	inc d			;4ee4
	add hl,bc		;4ee5
	ld l,06ah		;4ee6
	rrca			;4ee8
	jr z,l4ef0h		;4ee9
	xor a			;4eeb
	inc d			;4eec
	push hl			;4eed
	adc a,c			;4eee
	inc b			;4eef
l4ef0h:
	pop bc			;4ef0
	ret m			;4ef1
l4ef2h:
	djnz $+52		;4ef2
	inc b			;4ef4
	ld a,006h		;4ef5
	ld (0080dh),a		;4ef7
	jp nz,00c32h		;4efa
	inc h			;4efd
	inc c			;4efe
	and 007h		;4eff
	jr nz,$+16		;4f01
	ld a,000h		;4f03
	add a,008h		;4f05
	cp 060h			;4f07
	jr nz,l4f0dh		;4f09
	ld a,048h		;4f0b
l4f0dh:
	pop bc			;4f0d
	ld b,d			;4f0e
	ld a,(0c200h)		;4f0f
	ld (01a48h),hl		;4f12
l4f15h:
	ld bc,00505h		;4f15
	jp nz,02100h		;4f18
	dec c			;4f1b
	pop bc			;4f1c
	ld b,(hl)		;4f1d
	ld (hl),016h		;4f1e
	xor a			;4f20
	call 0cc30h		;4f21
	ld e,h			;4f24
	ld hl,(0323ch)		;4f25
	add a,b			;4f28
	inc bc			;4f29
	cp 0a4h			;4f2a
	ld b,030h		;4f2c
	call nc,031dbh		;4f2e
	add a,h			;4f31
	ld a,(0d209h)		;4f32
	adc a,e			;4f35
	ld d,057h		;4f36
	jp po,03d61h		;4f38
	rst 0			;4f3b
	ld b,d			;4f3c
l4f3dh:
	or e			;4f3d
	add a,h			;4f3e
	rlca			;4f3f
	ld h,0a7h		;4f40
	ret			;4f42
	ld h,e			;4f43
	ld h,b			;4f44
	ld e,e			;4f45
	and h			;4f46
	jr c,l4f83h		;4f47
	inc a			;4f49
	ld a,(00080h)		;4f4a
	jp nz,l4011h		;4f4d
	jp nz,0103eh		;4f50
	ld (0005fh),a		;4f53
	pop bc			;4f56
	ld b,007h		;4f57
	push de			;4f59
	ld a,(hl)		;4f5a
	and 01fh		;4f5b
	cp 000h			;4f5d
	dec d			;4f5f
	jp z,05bf5h		;4f60
	inc hl			;4f63
	or a			;4f64
	jp z,00085h		;4f65
	ld e,e			;4f68
	cp 004h			;4f69
	jr z,l4fb2h		;4f6b
	dec a			;4f6d
	call z,000efh		;4f6e
	ld e,h			;4f71
	call nz,sub_5c29h	;4f72
	pop de			;4f75
	push hl			;4f76
	ldi			;4f77
	push hl			;4f79
	ld bc,004e1h		;4f7a
	and b			;4f7d
	ld a,(hl)		;4f7e
	inc a			;4f7f
	ld (de),a		;4f80
	inc de			;4f81
	inc de			;4f82
l4f83h:
	inc b			;4f83
	ld bc,0000dh		;4f84
	add hl,bc		;4f87
	ld a,(0c635h)		;4f88
	ld h,b			;4f8b
	ld (bc),a		;4f8c
	ld a,(01efeh)		;4f8d
	jp nz,l4602h		;4f90
	ld e,e			;4f93
	ret			;4f94
	pop de			;4f95
	ld bc,0120fh		;4f96
	rla			;4f99
	ex de,hl		;4f9a
	ld c,008h		;4f9b
	inc bc			;4f9d
	rla			;4f9e
	xor b			;4f9f
	dec hl			;4fa0
	ld a,(hl)		;4fa1
	cp 002h			;4fa2
	inc h			;4fa4
	jr z,$+63		;4fa5
	inc hl			;4fa7
	push hl			;4fa8
	inc hl			;4fa9
	nop			;4faa
	add a,h			;4fab
	add hl,bc		;4fac
	ld d,028h		;4fad
	add hl,bc		;4faf
	xor d			;4fb0
	ld b,b			;4fb1
l4fb2h:
	pop hl			;4fb2
	call sub_5cc2h		;4fb3
sub_4fb6h:
	jp l5f50h		;4fb6
	ld h,(hl)		;4fb9
	ld c,b			;4fba
	ld (hl),a		;4fbb
	cp 00ch			;4fbc
	ld bc,01228h		;4fbe
	and 003h		;4fc1
l4fc3h:
	jr z,l4fc9h		;4fc3
	pop hl			;4fc5
	rrca			;4fc6
	adc a,d			;4fc7
	dec hl			;4fc8
l4fc9h:
	add hl,hl		;4fc9
	pop hl			;4fca
	daa			;4fcb
	ld (hl),a		;4fcc
	add hl,bc		;4fcd
	ld b,036h		;4fce
	ld (09123h),hl		;4fd0
	ld (hl),006h		;4fd3
	ex af,af'		;4fd5
	nop			;4fd6
	inc hl			;4fd7
	rrca			;4fd8
l4fd9h:
	add a,(hl)		;4fd9
	ld (hl),004h		;4fda
	ld a,089h		;4fdc
	ld (hl),04bh		;4fde
	inc hl			;4fe0
	rla			;4fe1
	inc hl			;4fe2
	ld de,03e74h		;4fe3
	ld (hl),029h		;4fe6
	ld bc,09623h		;4fe8
	inc bc			;4feb
	ld b,a			;4fec
	ld a,(hl)		;4fed
	sub b			;4fee
	ld (hl),a		;4fef
	rrca			;4ff0
	ld e,b			;4ff1
	add a,l			;4ff2
	ld a,02bh		;4ff3
	nop			;4ff5
	djnz $+51		;4ff6
	pop hl			;4ff8
	ld a,(0c235h)		;4ff9
	cp d			;4ffc
	ret c			;4ffd
	nop			;4ffe
	cp e			;4fff
	ret nc			;5000
	ld a,(0c234h)		;5001
	cp c			;5004
	ret c			;5005
	sub 002h		;5006
sub_5008h:
	djnz l4fc3h		;5008
	ret nc			;500a
	ld a,0f0h		;500b
l500dh:
	ld (09111h),a		;500d
	add a,e			;5010
	ld (0000fh),a		;5011
	jp 05c67h		;5014
	ret			;5017
	ld a,(hl)		;5018
	sub 008h		;5019
	jr z,l506ch		;501b
	push hl			;501d
	ld (hl),a		;501e
	jr $+89			;501f
	add a,004h		;5021
	ld e,05fh		;5023
	ld hl,0c229h		;5025
	call p,sub_7e40h	;5028
	dec hl			;502b
	cp d			;502c
	jp c,01105h		;502d
	ld e,h			;5030
	cp e			;5031
	jp nc,07e03h		;5032
	cp c			;5035
	ex af,af'		;5036
	sbc a,c			;5037
	ld (0820ah),a		;5038
	ld a,(0c151h)		;503b
	add a,d			;503e
	ld b,c			;503f
	ld h,c			;5040
	ld e,h			;5041
	ld a,b			;5042
	add a,e			;5043
	ld (005d2h),hl		;5044
	ld h,h			;5047
	pop hl			;5048
	jr c,$+71		;5049
	ld (hl),a		;504b
	dec h			;504c
	inc hl			;504d
	ld (hl),a		;504e
	ld e,e			;504f
	ld a,0a6h		;5050
	add a,c			;5052
	ld de,00007h		;5053
	add hl,de		;5056
	ld (hl),d		;5057
	add a,d			;5058
	jp c,l5c87h		;5059
	cp (hl)			;505c
	jr nc,l5091h		;505d
	rlca			;505f
	ld c,d			;5060
l5061h:
	pop bc			;5061
	exx			;5062
	ld c,l			;5063
	or d			;5064
	xor b			;5065
	jr nc,$-61		;5066
	dec hl			;5068
	defb 0edh ;next byte illegal after ed	;5069
	cpl			;506a
	ld d,d			;506b
l506ch:
	ret			;506c
	ld de,02510h		;506d
	inc hl			;5070
	ld e,c			;5071
	inc de			;5072
	add a,d			;5073
	ld (hl),024h		;5074
	inc hl			;5076
	cp 060h			;5077
	inc a			;5079
	jr z,l5095h		;507a
	ld a,(l4c4ah)		;507c
	ld d,c			;507f
	ret nz			;5080
	cpl			;5081
l5082h:
	dec b			;5082
	adc a,h			;5083
	or d			;5084
	jr l500dh		;5085
	ld (01d4ah),a		;5087
	sub 0a1h		;508a
	add a,b			;508c
	ld c,e			;508d
	dec (hl)		;508e
	jr nc,$-53		;508f
l5091h:
	ex af,af'		;5091
	jr nz,l510bh		;5092
	ret			;5094
l5095h:
	ld b,000h		;5095
	ld b,(hl)		;5097
	ret nz			;5098
	add hl,de		;5099
	cp c			;509a
	jr z,l5082h		;509b
	inc c			;509d
	ld h,000h		;509e
	ld l,b			;50a0
	add hl,hl		;50a1
	nop			;50a2
	ld (bc),a		;50a3
	ld de,l4803h		;50a4
	add hl,de		;50a7
	push hl			;50a8
	ld l,a			;50a9
	inc c			;50aa
	ret po			;50ab
	dec bc			;50ac
	nop			;50ad
	ld (hl),h		;50ae
	nop			;50af
	add hl,de		;50b0
	call 00145h		;50b1
	pop hl			;50b4
	ld c,098h		;50b5
	call 0b400h		;50b7
	dec b			;50ba
	pop hl			;50bb
	ret			;50bc
	call 0865ah		;50bd
	ld b,(hl)		;50c0
	sub h			;50c1
	rlc c			;50c2
	inc bc			;50c4
	jp c,l5d2bh		;50c5
	cp 0e3h			;50c8
	jp nc,00004h		;50ca
	dec hl			;50cd
	cp 012h			;50ce
	ld c,001h		;50d0
	jr c,$+7		;50d2
	sbc a,b			;50d4
	call pe,0e10eh		;50d5
	ld h,0d8h		;50d8
	ld a,(l49dch)		;50da
	inc a			;50dd
	add hl,de		;50de
	ret z			;50df
	ex (sp),hl		;50e0
	ret nz			;50e1
	dec a			;50e2
	jp z,l5d22h		;50e3
	ld c,h			;50e6
	ld a,c			;50e7
	or 0c2h			;50e8
	ld c,(hl)		;50ea
	ld a,b			;50eb
	rst 20h			;50ec
	ld h,0c9h		;50ed
	ex af,af'		;50ef
	add hl,sp		;50f0
	ex af,af'		;50f1
	inc l			;50f2
	jr c,$+10		;50f3
	ld h,c			;50f5
	ld d,h			;50f6
l50f7h:
	add a,a			;50f7
	nop			;50f8
	ld (hl),c		;50f9
	in a,(0b3h)		;50fa
	ld c,024h		;50fc
	ld c,c			;50fe
	daa			;50ff
	ld (0c003h),a		;5100
	nop			;5103
	ld a,(0c147h)		;5104
	ld h,a			;5107
	ld a,(0c148h)		;5108
l510bh:
	ld l,a			;510b
	ld h,b			;510c
	ld a,(hl)		;510d
	inc c			;510e
	inc hl			;510f
	ld e,(hl)		;5110
	inc hl			;5111
	ex af,af'		;5112
	ld c,(hl)		;5113
	inc hl			;5114
	ld a,l			;5115
	ld (l7c0dh),a		;5116
	ld (01580h),a		;5119
	ld d,000h		;511c
	ld hl,097a8h		;511e
	add hl,de		;5121
	dec b			;5122
	ld (hl),c		;5123
	dec hl			;5124
	ex de,hl		;5125
	ld bc,00910h		;5126
	xor l			;5129
	ld b,b			;512a
	ld a,(hl)		;512b
	or a			;512c
	jr z,l5160h		;512d
	dec e			;512f
	add hl,bc		;5130
	inc b			;5131
	jr l5138h		;5132
	xor l			;5134
l5135h:
	inc de			;5135
	inc b			;5136
	ld l,e			;5137
l5138h:
	ld c,004h		;5138
	add hl,bc		;513a
	inc b			;513b
	ld e,b			;513c
	inc b			;513d
	inc b			;513e
	ret nz			;513f
	inc bc			;5140
	ex de,hl		;5141
	ldir			;5142
	ret			;5144
	push hl			;5145
	ld de,0892bh		;5146
	call c,01448h		;5149
	inc bc			;514c
	add hl,de		;514d
	ld (0f910h),hl		;514e
	or c			;5151
	ld de,0093eh		;5152
	ld (l50f7h),a		;5155
	ret m			;5158
	ld sp,hl		;5159
	sub c			;515a
	sbc a,b			;515b
	ret m			;515c
	ld (bc),a		;515d
	dec h			;515e
	push af			;515f
l5160h:
	and e			;5160
	ld d,b			;5161
	di			;5162
	rlca			;5163
	call p,021c1h		;5164
	ld bc,061dah		;5167
	call 0048bh		;516a
	ld a,(09213h)		;516d
	djnz $+73		;5170
	add a,a			;5172
	add a,b			;5173
	ld bc,012c6h		;5174
	ld (l61e9h),a		;5177
	ld hl,011e9h		;517a
	and l			;517d
	call 0b11bh		;517e
	ld d,(hl)		;5181
	jp nz,02910h		;5182
	ld h,d			;5185
	ld sp,l622bh		;5186
	ld (02540h),a		;5189
	ld (bc),a		;518c
	daa			;518d
	ld h,d			;518e
	ld a,(0c308h)		;518f
	ld b,c			;5192
	dec a			;5193
	ld d,l			;5194
	ld (bc),a		;5195
	jp z,05e2ch		;5196
	ld b,01ch		;5199
	ld d,b			;519b
	inc bc			;519c
	ld b,01ch		;519d
	ld a,b			;519f
	inc b			;51a0
	ld b,01ch		;51a1
	ret nz			;51a3
	dec b			;51a4
	ld b,01ch		;51a5
	ret po			;51a7
	ld b,006h		;51a8
	inc e			;51aa
	ld h,b			;51ab
	ex af,af'		;51ac
	ld b,019h		;51ad
	jr c,l51bbh		;51af
	ld b,0eah		;51b1
	jr z,l5135h		;51b3
	jp 03a76h		;51b5
	jp p,02606h		;51b8
l51bbh:
	inc bc			;51bb
	di			;51bc
	sub l			;51bd
	ld l,e			;51be
	ei			;51bf
	inc b			;51c0
	dec bc			;51c1
	ld (0b532h),a		;51c2
	dec hl			;51c5
	sbc a,(hl)		;51c6
	inc l			;51c7
	or a			;51c8
	inc l			;51c9
	sub 00ah		;51ca
	or 0a0h			;51cc
	inc b			;51ce
	add hl,bc		;51cf
	dec c			;51d0
	jp nz,0327ah		;51d1
	inc d			;51d4
	rst 30h			;51d5
	pop bc			;51d6
l51d7h:
	ld a,e			;51d7
l51d8h:
	ld hl,(l428fh)		;51d8
	dec h			;51db
	ld c,(hl)		;51dc
	add hl,de		;51dd
l51deh:
	ret m			;51de
	ld h,b			;51df
	xor (hl)		;51e0
	ld e,(hl)		;51e1
	ld b,006h		;51e2
	ld (hl),b		;51e4
	push bc			;51e5
	rst 10h			;51e6
	push bc			;51e7
	adc a,b			;51e8
	jp m,0e55eh		;51e9
	inc de			;51ec
	ld hl,060edh		;51ed
	xor 046h		;51f0
	add a,d			;51f2
	ld c,b			;51f3
	xor 0cbh		;51f4
	nop			;51f6
	ld b,a			;51f7
	jp z,l5e78h		;51f8
	and 0feh		;51fb
	add a,020h		;51fd
	adc a,h			;51ff
	adc a,l			;5200
	ld b,b			;5201
	ld a,034h		;5202
	jr z,l5268h		;5204
	jp l5e80h		;5206
	sub 00ah		;5209
	inc bc			;520b
	ld a,(bc)		;520c
	jr z,l5230h		;520d
	jr nz,l51d8h		;520f
	ret c			;5211
	xor h			;5212
	or d			;5213
	dec e			;5214
	inc b			;5215
	jr $-29			;5216
	inc hl			;5218
	pop bc			;5219
	sbc a,l			;521a
	ld c,h			;521b
	ret pe			;521c
	add hl,hl		;521d
	ret c			;521e
	dec c			;521f
	inc b			;5220
	djnz l51d7h		;5221
	ld b,l			;5223
	ld hl,(01158h)		;5224
	jr nc,l51deh		;5227
l5229h:
	ex af,af'		;5229
	ld (0cd06h),hl		;522a
	adc a,h			;522d
	ld b,060h		;522e
l5230h:
	jp l5eb9h		;5230
	ld hl,l42ddh+2		;5233
	ld de,l60ddh		;5236
	rst 8			;5239
	ld d,d			;523a
	xor d			;523b
	ld b,b			;523c
	ld a,007h		;523d
	ld (091f1h),a		;523f
	adc a,l			;5242
	rst 38h			;5243
	sbc a,(hl)		;5244
	ld (de),a		;5245
	pop bc			;5246
	and d			;5247
	or e			;5248
	jp c,0880bh		;5249
	jp l61ceh+1		;524c
	or a			;524f
	ld de,0f21ah		;5250
	ld de,061c0h		;5253
	bit 0,h			;5256
	ld e,h			;5258
	ret nc			;5259
	dec h			;525a
	ld (0840bh),a		;525b
	ld (de),a		;525e
	jp m,0fe0bh		;525f
	ld (bc),a		;5262
	dec h			;5263
	rst 38h			;5264
	ld h,c			;5265
l5266h:
	cp a			;5266
	sub b			;5267
l5268h:
	call 0601fh		;5268
	ld a,036h		;526b
	ccf			;526d
	ld (0de92h),a		;526e
	sub e			;5271
	inc hl			;5272
	ret nc			;5273
	add hl,bc		;5274
	ld hl,0b2adh		;5275
	ld d,(hl)		;5278
	ret			;5279
	jp c,01fc6h		;527a
	jp c,082a8h		;527d
	ret			;5280
	ld hl,06c6fh		;5281
	dec h			;5284
	inc bc			;5285
	nop			;5286
	jp m,0c444h		;5287
	inc e			;528a
	ld e,a			;528b
	ei			;528c
	add a,l			;528d
	ret m			;528e
	ret			;528f
	push af			;5290
	and c			;5291
	dec a			;5292
	ld (hl),a		;5293
	exx			;5294
	ld b,b			;5295
	ret nz			;5296
	ld (hl),a		;5297
	ret			;5298
	push de			;5299
	add a,(hl)		;529a
	sbc a,d			;529b
	ret pe			;529c
	jp (hl)			;529d
l529eh:
	jr nz,l529eh		;529e
	nop			;52a0
	jp z,l6b44h		;52a1
	ld e,a			;52a4
	rlca			;52a5
	ld bc,02707h		;52a6
	adc a,d			;52a9
	ld b,00eh		;52aa
	pop bc			;52ac
	jp 0d8c9h		;52ad
	sub (hl)		;52b0
	sub h			;52b1
	rlca			;52b2
	xor c			;52b3
	ld h,d			;52b4
	inc hl			;52b5
	and (hl)		;52b6
	ld (l5229h),a		;52b7
	di			;52ba
	sub l			;52bb
	ld b,b			;52bc
	inc bc			;52bd
	jp nz,l5e16h		;52be
	jp 07565h		;52c1
	ld e,a			;52c4
	inc c			;52c5
	add hl,sp		;52c6
	ld c,l			;52c7
	xor a			;52c8
l52c9h:
	ld b,09bh		;52c9
	add a,e			;52cb
	or (hl)			;52cc
	ld a,(bc)		;52cd
	ld c,c			;52ce
	push de			;52cf
	add a,l			;52d0
	exx			;52d1
	add a,d			;52d2
	sbc a,a			;52d3
	dec e			;52d4
	adc a,c			;52d5
	cp d			;52d6
	inc a			;52d7
	or (hl)			;52d8
	add a,h			;52d9
	ret nz			;52da
	ld h,(hl)		;52db
	or 061h			;52dc
	call 00e0bh		;52de
	ld b,l			;52e1
	adc a,00eh		;52e2
	inc hl			;52e4
	rrca			;52e5
	call nc,0fe0ah		;52e6
	ex af,af'		;52e9
	dec h			;52ea
	and e			;52eb
	inc h			;52ec
	xor 081h		;52ed
	sub l			;52ef
	inc b			;52f0
	ld c,(hl)		;52f1
	exx			;52f2
	inc d			;52f3
	dec e			;52f4
	jp nz,0bb15h		;52f5
	ld e,a			;52f8
	call 0139ch		;52f9
	ld hl,0f1cbh		;52fc
	call nz,059e5h		;52ff
	inc (hl)		;5302
	sub h			;5303
	call nz,sub_66edh	;5304
	dec de			;5307
	ld d,h			;5308
	xor (hl)		;5309
	jp nz,0d85ch		;530a
	adc a,h			;530d
	cp h			;530e
	jp po,0f618h		;530f
	add hl,hl		;5312
	sbc a,d			;5313
	add a,c			;5314
	cp 0f0h			;5315
	jp nz,l5fd5h		;5317
	add a,l			;531a
	jr z,$-62		;531b
	jp c,0bf1ch		;531d
	sub h			;5320
	dec b			;5321
	inc (hl)		;5322
	adc a,c			;5323
	sbc a,e			;5324
	dec de			;5325
	adc a,d			;5326
	ld h,01bh		;5327
	ld a,(bc)		;5329
	ret po			;532a
	jp nz,01bf1h		;532b
	sub (hl)		;532e
	ld d,l			;532f
	ld a,(07014h)		;5330
	ld hl,(l6400h)		;5333
	ld h,b			;5336
	ld hl,(0a5aah)		;5337
	adc a,091h		;533a
	inc l			;533c
	ld hl,l44f8h		;533d
	call nz,098afh		;5340
	rst 0			;5343
	ld c,e			;5344
	or h			;5345
	ld sp,0849dh		;5346
	cp 01fh			;5349
	adc a,b			;534b
	ld d,d			;534c
	cp d			;534d
	adc a,c			;534e
	ei			;534f
	ld (bc),a		;5350
	ld a,(bc)		;5351
	push de			;5352
	ld (005d2h),hl		;5353
	add hl,bc		;5356
	dec e			;5357
	ld h,d			;5358
	xor 001h		;5359
	bit 2,h			;535b
	ld c,00dh		;535d
	jp 06149h		;535f
	xor (hl)		;5362
	adc a,b			;5363
	inc (hl)		;5364
	sbc a,0c6h		;5365
	ld d,062h		;5367
	adc a,b			;5369
	ld d,e			;536a
	ret po			;536b
	pop bc			;536c
	ld e,c			;536d
	ld h,b			;536e
	ret po			;536f
	inc a			;5370
	daa			;5371
	jr $-30			;5372
	ld c,c			;5374
	add hl,de		;5375
	ld h,d			;5376
	ld e,060h		;5377
	ld a,(bc)		;5379
	xor h			;537a
	inc bc			;537b
	ld a,(bc)		;537c
	ld d,023h		;537d
	ex de,hl		;537f
	ld hl,05a24h		;5380
	ld h,h			;5383
	jp c,09d1ch		;5384
	push de			;5387
	adc a,d			;5388
	inc b			;5389
l538ah:
	jp nz,01b3dh		;538a
	dec b			;538d
	ld c,l			;538e
	ld a,(0eda8h)		;538f
	jr l538ah		;5392
	sbc a,l			;5394
	or b			;5395
	ld d,c			;5396
	ld a,(0d148h)		;5397
	ld h,0cah		;539a
	rst 18h			;539c
	sub h			;539d
	rst 0			;539e
	sbc a,h			;539f
	and d			;53a0
	add hl,bc		;53a1
	and b			;53a2
	ld h,b			;53a3
	ld a,(0b5f9h)		;53a4
	ld (hl),0b6h		;53a7
	sbc a,h			;53a9
	or c			;53aa
	ld hl,(090c2h)		;53ab
	inc de			;53ae
	rst 10h			;53af
	ld b,d			;53b0
	ld de,(04ad7h)		;53b1
	ret			;53b5
	add hl,hl		;53b6
	adc a,014h		;53b7
	ld e,a			;53b9
	sub 05dh		;53ba
	rst 10h			;53bc
	halt			;53bd
	adc a,c			;53be
	ld a,(05f26h)		;53bf
	add a,(hl)		;53c2
l53c3h:
	ld e,b			;53c3
	ret m			;53c4
	add a,d			;53c5
	dec d			;53c6
	ex de,hl		;53c7
	pop hl			;53c8
	ld bc,08b02h		;53c9
	sub d			;53cc
	call m,03e5bh		;53cd
	jr nz,l53d2h		;53d0
l53d2h:
	ld bc,l40d4h		;53d2
	ld bc,l4120h		;53d5
	ld b,b			;53d8
	nop			;53d9
	ld h,b			;53da
	ld b,b			;53db
	add a,b			;53dc
	ld b,b			;53dd
	ld h,(hl)		;53de
	jr c,l53e1h		;53df
l53e1h:
	sub b			;53e1
	ld d,b			;53e2
	ld h,b			;53e3
	ld a,(bc)		;53e4
	nop			;53e5
	add a,b			;53e6
	ld h,b			;53e7
	and b			;53e8
	ld a,(bc)		;53e9
	add a,b			;53ea
	nop			;53eb
	add a,b			;53ec
	jr nz,l5401h		;53ed
	ex af,af'		;53ef
	ld b,b			;53f0
l53f1h:
	add a,b			;53f1
	nop			;53f2
	and b			;53f3
	and b			;53f4
	nop			;53f5
	and b			;53f6
	jr nz,$+103		;53f7
	and b			;53f9
	ld e,014h		;53fa
	ld a,(bc)		;53fc
	nop			;53fd
	ret nz			;53fe
	nop			;53ff
l5400h:
	ret nz			;5400
l5401h:
	jr nz,l53c3h		;5401
	ld b,b			;5403
l5404h:
	ret nz			;5404
	nop			;5405
	ld h,b			;5406
	ret nz			;5407
	add a,b			;5408
	ret nz			;5409
	and b			;540a
	ret po			;540b
	nop			;540c
	ret po			;540d
	nop			;540e
	jr nz,l53f1h		;540f
	ld b,b			;5411
	ret po			;5412
	ld h,b			;5413
	ret po			;5414
	add a,b			;5415
	ret po			;5416
	xor d			;5417
	jr nz,l5465h		;5418
	nop			;541a
	ld c,d			;541b
	xor d			;541c
	ld b,b			;541d
	ld (hl),02eh		;541e
	nop			;5420
	jp c,04e58h		;5421
	ld b,h			;5424
	add a,b			;5425
	ld (hl),001h		;5426
	ld b,b			;5428
	ld hl,l4140h		;5429
	ld b,b			;542c
	dec b			;542d
	ld h,c			;542e
	ld b,b			;542f
	add a,c			;5430
	ld b,b			;5431
	and c			;5432
	and l			;5433
	ld d,d			;5434
	call m,sub_6009h	;5435
	ld b,c			;5438
	ld h,b			;5439
	adc a,b			;543a
	nop			;543b
	add a,c			;543c
	ld h,b			;543d
	and c			;543e
	add a,b			;543f
	ld bc,0b880h		;5440
	call nc,08041h		;5443
	nop			;5446
	ld h,c			;5447
	add a,b			;5448
	add a,c			;5449
	add a,b			;544a
	and c			;544b
	and b			;544c
	ld bc,000a0h		;544d
	ld hl,l41a0h		;5450
	and b			;5453
	ld h,c			;5454
	and b			;5455
	add a,c			;5456
	and b			;5457
	ld h,0a1h		;5458
	ret nz			;545a
	ret m			;545b
	inc de			;545c
	ld hl,041c0h		;545d
	xor h			;5460
	nop			;5461
	ret nz			;5462
	add a,c			;5463
	ret nz			;5464
l5465h:
	and c			;5465
	ret po			;5466
	ld bc,000e0h		;5467
	ld hl,041e0h		;546a
	ret po			;546d
	ld h,c			;546e
	ret po			;546f
	add a,c			;5470
	ret po			;5471
	nop			;5472
	and c			;5473
	jr nz,$+3		;5474
	jr nz,l5499h		;5476
	jr nz,$+67		;5478
	jr nz,l547dh		;547a
	ld h,c			;547c
l547dh:
	jr nz,l5400h		;547d
	jr nz,$-93		;547f
	nop			;5481
	ld bc,08090h		;5482
	nop			;5485
	ld b,c			;5486
	nop			;5487
	dec bc			;5488
	ld h,c			;5489
	nop			;548a
	add a,c			;548b
	nop			;548c
	dec bc			;548d
	nop			;548e
	sbc a,e			;548f
	ld de,l4d01h		;5490
	nop			;5493
	ret nc			;5494
	dec bc			;5495
	ld h,e			;5496
	ret po			;5497
	inc bc			;5498
l5499h:
	ld (bc),a		;5499
	ld (de),a		;549a
	inc de			;549b
	sbc a,c			;549c
	ld c,d			;549d
	nop			;549e
	ld e,0c2h		;549f
	ld (bc),a		;54a1
	ld e,l			;54a2
	add hl,bc		;54a3
	ld (hl),c		;54a4
	ld c,0e3h		;54a5
	rrca			;54a7
	ld (bc),a		;54a8
	dec e			;54a9
	add a,c			;54aa
	pop hl			;54ab
	inc bc			;54ac
	add hl,hl		;54ad
	defb 0ddh,050h,002h ;illegal sequence	;54ae
	ld b,000h		;54b1
	ld h,c			;54b3
	dec b			;54b4
	inc de			;54b5
	sub b			;54b6
	jr nz,l54bdh		;54b7
	sub (hl)		;54b9
	add a,051h		;54ba
	dec de			;54bc
l54bdh:
	rla			;54bd
	ex af,af'		;54be
	nop			;54bf
	ld c,d			;54c0
	adc a,l			;54c1
	ret po			;54c2
	inc b			;54c3
	ex de,hl		;54c4
	ld c,d			;54c5
	add hl,bc		;54c6
	sub (hl)		;54c7
	inc bc			;54c8
	ld (de),a		;54c9
	call 0200bh		;54ca
	inc l			;54cd
	defb 0ddh,00eh,049h ;illegal sequence	;54ce
	sub l			;54d1
	jp 01dd0h		;54d2
	call sub_63bfh		;54d5
	call 0bd7dh		;54d8
	call nc,096e2h		;54db
	in a,(020h)		;54de
	or a			;54e0
	dec a			;54e1
	ld bc,l7701h		;54e2
	sbc a,b			;54e5
	ld d,08eh		;54e6
	jp z,0626fh		;54e8
	ex af,af'		;54eb
	rlca			;54ec
	dec h			;54ed
	sbc a,c			;54ee
	ld d,002h		;54ef
	ex af,af'		;54f1
	ld c,0eeh		;54f2
	ex af,af'		;54f4
l54f5h:
	adc a,054h		;54f5
	sbc a,d			;54f7
	ex af,af'		;54f8
	sbc a,h			;54f9
	jp 08608h		;54fa
	ld (hl),b		;54fd
	inc hl			;54fe
	ld (hl),c		;54ff
	ld a,d			;5500
	and a			;5501
	and h			;5502
	jp (hl)			;5503
	pop bc			;5504
	xor d			;5505
	ld h,h			;5506
	ld (002a9h),a		;5507
	inc b			;550a
	dec hl			;550b
	ld (hl),d		;550c
	ld (0022ch),a		;550d
	or d			;5510
	sub b			;5511
	ex af,af'		;5512
	or e			;5513
	ld (bc),a		;5514
	inc a			;5515
	ld (hl),c		;5516
	ld (0b441h),a		;5517
	dec b			;551a
	ld l,l			;551b
	ld l,a			;551c
	ld (0026eh),a		;551d
	inc h			;5520
	ld l,a			;5521
	ld (bc),a		;5522
	ld (hl),b		;5523
	ld (bc),a		;5524
	or l			;5525
	sub d			;5526
	ld c,0b7h		;5527
	ld (bc),a		;5529
	cp b			;552a
	ld (bc),a		;552b
	ld c,c			;552c
	cp h			;552d
	ld (bc),a		;552e
	cp (hl)			;552f
	ld (bc),a		;5530
	cp a			;5531
	ld (bc),a		;5532
	jr nz,l54f5h		;5533
	ld (bc),a		;5535
	and d			;5536
	ld l,l			;5537
	ld (091c1h),a		;5538
	dec b			;553b
	jp nz,l6e02h		;553c
	ld a,c			;553f
	ld h,029h		;5540
	ld a,c			;5542
	ld h,002h		;5543
	or b			;5545
	dec bc			;5546
	inc h			;5547
	xor (hl)		;5548
	ld (bc),a		;5549
	xor l			;554a
	ld (bc),a		;554b
	or c			;554c
	sub d			;554d
	ld (bc),a		;554e
	jp 0c402h		;554f
	ld (bc),a		;5552
	ld c,c			;5553
	push bc			;5554
	ld (bc),a		;5555
	add a,002h		;5556
	rst 0			;5558
l5559h:
	ld (bc),a		;5559
	inc b			;555a
	and a			;555b
	jp 0a532h		;555c
	ld (bc),a		;555f
	and (hl)		;5560
	sbc a,b			;5561
	ld (bc),a		;5562
	cp 0a5h			;5563
	ld hl,(08c1fh)		;5565
	nop			;5568
	adc a,d			;5569
	ld a,0a0h		;556a
	ld (l6c8eh),a		;556c
	ld a,042h		;556f
	jr nz,l55a5h		;5571
	sub d			;5573
	inc b			;5574
	jr nc,l55a9h		;5575
	cp e			;5577
	ld h,h			;5578
	nop			;5579
	ld a,054h		;557a
	ld (l6a40h),a		;557c
	ld a,052h		;557f
	ld (04f41h),a		;5581
	inc b			;5584
	inc (hl)		;5585
	ld (06b02h),a		;5586
	rst 18h			;5589
	sbc a,b			;558a
	ld de,004aah		;558b
	jp po,0930ah		;558e
	ld l,c			;5591
	ld (01bbdh),a		;5592
	adc a,d			;5595
	ex (sp),hl		;5596
sub_5597h:
	ld h,d			;5597
	ld l,c			;5598
	rst 18h			;5599
	ld de,08769h		;559a
	ld (de),a		;559d
	ld l,d			;559e
	ld (bc),a		;559f
	ld b,c			;55a0
	ld l,e			;55a1
	ld (bc),a		;55a2
	ld l,h			;55a3
	ld l,a			;55a4
l55a5h:
	ld a,014h		;55a5
	add a,l			;55a7
	ld h,b			;55a8
l55a9h:
	ld l,l			;55a9
	ld a,01eh		;55aa
	jr $+52			;55ac
	ld b,h			;55ae
	ld l,(hl)		;55af
	ld c,h			;55b0
	ld c,h			;55b1
	sbc a,h			;55b2
	inc b			;55b3
	dec b			;55b4
	and d			;55b5
	ld sp,02e71h		;55b6
	xor a			;55b9
	ld h,a			;55ba
	nop			;55bb
	cp d			;55bc
	ld h,h			;55bd
	ld hl,l6848h		;55be
	ld de,04d08h		;55c1
	ld l,b			;55c4
	rst 38h			;55c5
	adc a,l			;55c6
	ld e,c			;55c7
	adc a,b			;55c8
	or b			;55c9
	ld h,e			;55ca
	ld de,l4de8h		;55cb
	ld (hl),d		;55ce
	cp 0a4h			;55cf
	sbc a,d			;55d1
	ld a,(de)		;55d2
	ld (0a032h),a		;55d3
	sbc a,d			;55d6
	dec c			;55d7
	ret m			;55d8
	ld (0c3a1h),a		;55d9
	add a,l			;55dc
	exx			;55dd
	jp m,00e18h		;55de
	cp a			;55e1
	add hl,de		;55e2
	sbc a,c			;55e3
	ld h,e			;55e4
	rlca			;55e5
	dec b			;55e6
	jp 00520h		;55e7
l55eah:
	add a,a			;55ea
	ret nz			;55eb
	dec b			;55ec
	ld c,0e0h		;55ed
	add a,l			;55ef
	cp b			;55f0
	rlca			;55f1
	ld (hl),b		;55f2
	and b			;55f3
	dec b			;55f4
	add a,b			;55f5
l55f6h:
	call 08205h		;55f6
	xor 03ah		;55f9
	ld l,l			;55fb
	add a,b			;55fc
	ld a,046h		;55fd
	ld b,040h		;55ff
	inc bc			;5601
	ld a,c			;5602
	or a			;5603
	push af			;5604
	call nz,00077h		;5605
	ld (hl),e		;5608
	pop af			;5609
	or a			;560a
	call z,0738eh		;560b
	call 01d18h		;560e
	add a,(hl)		;5611
	di			;5612
	ei			;5613
	rst 8			;5614
	ld de,005c6h		;5615
	add a,c			;5618
	adc a,b			;5619
	call z,093e0h		;561a
	sla d			;561d
	ld d,a			;561f
	sbc a,003h		;5620
	ld hl,0c498h		;5622
	ld h,h			;5625
	push hl			;5626
	ld b,b			;5627
	ld hl,0c438h		;5628
	add hl,bc		;562b
	ld b,032h		;562c
	cp b			;562e
	dec bc			;562f
	ld b,0edh		;5630
	add a,b			;5632
	rrca			;5633
	ld (06ca6h),hl		;5634
	ld d,(hl)		;5637
l5638h:
	ret			;5638
	and h			;5639
	or l			;563a
	jr nc,l55f6h		;563b
	inc (hl)		;563d
	adc a,0adh		;563e
	add hl,bc		;5640
	dec b			;5641
	inc bc			;5642
	and (hl)		;5643
	add a,b			;5644
	ld a,(0a30bh)		;5645
	pop af			;5648
	rla			;5649
	ld l,l			;564a
	rra			;564b
	inc hl			;564c
	sub d			;564d
	ld bc,02b50h		;564e
	ld (bc),a		;5651
	dec b			;5652
	adc a,e			;5653
	ret nz			;5654
	xor (hl)		;5655
	adc a,a			;5656
	dec b			;5657
	jp 03bb7h		;5658
	cpl			;565b
	ld e,c			;565c
	pop hl			;565d
	rst 28h			;565e
	nop			;565f
	ld h,l			;5660
	sbc a,005h		;5661
	sbc a,065h		;5663
	dec (hl)		;5665
	ld a,a			;5666
	dec b			;5667
	ld c,037h		;5668
	rst 10h			;566a
	cpl			;566b
	nop			;566c
	nop			;566d
	jp c,000cdh		;566e
	sub h			;5671
	ld (hl),h		;5672
	call sub_7a0eh		;5673
	call 07971h		;5676
	inc h			;5679
	call 00842h		;567a
	ld d,a			;567d
	sbc a,l			;567e
	add a,d			;567f
	cp (hl)			;5680
	ld (hl),e		;5681
	ld a,(082d6h)		;5682
	or a			;5685
	ret z			;5686
	ret nz			;5687
	ld (hl),d		;5688
	defb 0edh ;next byte illegal after ed	;5689
	add a,b			;568a
	ld a,r			;568b
	sla a			;568d
	nop			;568f
	ld (l64b9h),a		;5690
	call l722bh+2		;5693
	call 0017ch		;5696
	ld l,l			;5699
	call sub_6ca8h		;569a
	call sub_65a5h		;569d
	jr z,l56abh		;56a0
	ld l,a			;56a2
	call 0023ch		;56a3
	and e			;56a6
	ld c,000h		;56a7
	ld c,(hl)		;56a9
	ld l,c			;56aa
l56abh:
	call sub_6616h		;56ab
	call sub_4600h		;56ae
	ld (hl),c		;56b1
	dec a			;56b2
	ld h,l			;56b3
	ret			;56b4
	xor 08dh		;56b5
	pop bc			;56b7
	inc sp			;56b8
	ret c			;56b9
	sbc a,h			;56ba
	rrca			;56bb
	dec b			;56bc
	ld d,(hl)		;56bd
	xor a			;56be
	sub d			;56bf
	jp nc,056ebh		;56c0
	add a,e			;56c3
	add hl,hl		;56c4
	or h			;56c5
	exx			;56c6
	ld d,h			;56c7
	ld a,(002f1h)		;56c8
	cp 0ffh			;56cb
	jp z,l6574h		;56cd
	ld c,e			;56d0
	inc de			;56d1
	and 003h		;56d2
	ld b,a			;56d4
l56d5h:
	sbc a,e			;56d5
	adc a,c			;56d6
	xor b			;56d7
	sbc a,e			;56d8
	call z,0030bh		;56d9
	rrca			;56dc
	jp nz,l6552h		;56dd
	ld a,013h		;56e0
	call nz,0974fh		;56e2
	call nc,00406h		;56e5
	cp 038h			;56e8
	ld (06d08h),a		;56ea
	ld (bc),a		;56ed
	cp 014h			;56ee
	jp nc,0655dh		;56f0
	add a,0f5h		;56f3
	add a,b			;56f5
	jp nc,064dah		;56f6
	ld h,l			;56f9
	ld (032d6h),hl		;56fa
	ld a,e			;56fd
	sub a			;56fe
	ld a,(0187eh)		;56ff
	ld c,a			;5702
	ld e,010h		;5703
	jr nc,$+3		;5705
	jr l56d5h		;5707
	ld e,e			;5709
	ld e,l			;570a
	ld c,e			;570b
	inc a			;570c
	dec d			;570d
	jp z,l657fh		;570e
	call nz,07093h		;5711
	ld b,l			;5714
	call p,0a673h		;5715
	ld c,b			;5718
	dec b			;5719
	ld hl,07402h		;571a
	add a,l			;571d
	pop de			;571e
	ld b,068h		;571f
	jr nc,$-50		;5721
	djnz $+4		;5723
	call m,0a43ah		;5725
	ld h,l			;5728
	inc a			;5729
	ld (l6303h),a		;572a
	ret nz			;572d
	ld d,d			;572e
	dec a			;572f
l5730h:
	or a			;5730
	add a,b			;5731
	sub l			;5732
	jp 000c9h		;5733
	jp c,096dbh		;5736
	jr nc,$+60		;5739
	ret z			;573b
	ld b,l			;573c
	jp nz,0d081h		;573d
	dec de			;5740
	rlca			;5741
	ld l,d			;5742
	ex (sp),hl		;5743
	ld e,c			;5744
	xor l			;5745
	add a,b			;5746
	jp (hl)			;5747
	halt			;5748
	defb 0ddh,040h,076h ;illegal sequence	;5749
l574ch:
	dec c			;574c
	ld a,(0c13eh)		;574d
	sbc a,(hl)		;5750
	inc b			;5751
	ld e,a			;5752
	xor a			;5753
	ld hl,(0c4eah)		;5754
	sbc hl,de		;5757
	rst 28h			;5759
	pop hl			;575a
	ret nc			;575b
	ld a,(017b9h)		;575c
	adc a,a			;575f
	add a,0e8h		;5760
	ld h,l			;5762
	rrca			;5763
	ld a,c			;5764
	cp (hl)			;5765
	cp 038h			;5766
	ld a,(0bf45h)		;5768
	cp a			;576b
	push af			;576c
	di			;576d
	ret m			;576e
	rrca			;576f
	ret nz			;5770
	ld a,024h		;5771
	or c			;5773
	call z,0b9c2h		;5774
	ld e,0d2h		;5777
	add a,l			;5779
	ld d,d			;577a
sub_577bh:
	call z,082c9h		;577b
	ld (hl),b		;577e
	ld d,h			;577f
	xor e			;5780
	ld h,(hl)		;5781
	adc a,009h		;5782
	xor a			;5784
	xor l			;5785
	ld sp,hl		;5786
	ld l,a			;5787
	sbc a,l			;5788
	rla			;5789
	or a			;578a
	sub a			;578b
	ex de,hl		;578c
	sbc a,c			;578d
	ld (094afh),hl		;578e
	ld d,b			;5791
	call 02829h		;5792
	add a,(hl)		;5795
	ld a,(0971eh)		;5796
	add a,b			;5799
	call sub_668fh		;579a
	ld a,(l6615h)		;579d
l57a0h:
	adc a,c			;57a0
	or c			;57a1
	dec d			;57a2
	ld b,027h		;57a3
	add a,d			;57a5
	ld b,0e6h		;57a6
	rst 18h			;57a8
	sub c			;57a9
	dec b			;57aa
	call z,00b64h		;57ab
	ld e,b			;57ae
	pop bc			;57af
	dec a			;57b0
	ld de,000cah		;57b1
	ld l,c			;57b4
	inc bc			;57b5
	ret			;57b6
	ld h,(hl)		;57b7
	ld a,e			;57b8
	ld (0efbeh),hl		;57b9
	rla			;57bc
	cp 005h			;57bd
	ret z			;57bf
	jp 02185h		;57c0
	ex af,af'		;57c3
	and l			;57c4
	adc a,h			;57c5
	djnz l574ch		;57c6
	sbc a,(hl)		;57c8
	inc b			;57c9
	jp po,0ff44h		;57ca
	ld h,(hl)		;57cd
	push af			;57ce
	jp po,0362ch		;57cf
	ld bc,l696ch		;57d2
	sub b			;57d5
	ret pe			;57d6
	ld hl,023c8h		;57d7
	nop			;57da
	ld (0c0a6h),a		;57db
	add a,e			;57de
	ld h,(hl)		;57df
	out (007h),a		;57e0
	inc bc			;57e2
	ret nz			;57e3
	ret nz			;57e4
	sub (hl)		;57e5
	or e			;57e6
	and 002h		;57e7
	ld e,0f8h		;57e9
l57ebh:
	jr c,l5808h		;57eb
	jp nz,038b7h		;57ed
	di			;57f0
	ret nz			;57f1
	cp 050h			;57f2
	jp c,0c104h		;57f4
	ld h,(hl)		;57f7
	cp 0c3h			;57f8
	ret c			;57fa
	add a,h			;57fb
	ret pe			;57fc
	call z,sub_6db2h	;57fd
l5800h:
	cp h			;5800
	add hl,sp		;5801
	xor l			;5802
	ld e,b			;5803
	and 0d1h		;5804
	out (08dh),a		;5806
l5808h:
	or a			;5808
	dec sp			;5809
	rst 18h			;580a
	ld h,a			;580b
	and a			;580c
	inc c			;580d
	adc a,a			;580e
l580fh:
	ld l,b			;580f
	sub d			;5810
	inc h			;5811
	ld (bc),a		;5812
	rlc d			;5813
	jp (hl)			;5815
	ld h,b			;5816
	ld l,b			;5817
	inc a			;5818
	call 06765h		;5819
	push de			;581c
	ld b,d			;581d
	adc a,(hl)		;581e
	and c			;581f
	ret			;5820
	sbc a,l			;5821
	dec bc			;5822
	rst 20h			;5823
	dec bc			;5824
	jr c,l583fh		;5825
	ld de,01849h		;5827
	ld de,011ach		;582a
	cp e			;582d
	ld de,028c3h		;582e
	ld de,02884h		;5831
	ld de,09ccah		;5834
	ld de,011d9h		;5837
	jr c,l5874h		;583a
	ld de,005aeh		;583c
l583fh:
	call z,0119bh		;583f
	rst 30h			;5842
l5843h:
	ld de,0915ah		;5843
	push de			;5846
	ld a,b			;5847
	cp h			;5848
	ld l,b			;5849
	sbc a,l			;584a
	or c			;584b
	cp h			;584c
	dec b			;584d
	sbc a,e			;584e
	ld (hl),c		;584f
	ld b,009h		;5850
	dec b			;5852
	ld e,(hl)		;5853
	xor a			;5854
	rla			;5855
	ld d,a			;5856
	ld h,a			;5857
	or l			;5858
	jr c,l57ebh		;5859
	dec b			;585b
	ld h,h			;585c
	and b			;585d
	dec b			;585e
	ld a,(bc)		;585f
	ld a,b			;5860
	inc h			;5861
	ld (l798ah),a		;5862
	xor b			;5865
	ld (bc),a		;5866
	add a,082h		;5867
	ld (bc),a		;5869
	call po,0c968h		;586a
	ld a,(hl)		;586d
	and l			;586e
	ld c,b			;586f
	or b			;5870
	add a,c			;5871
l5872h:
	sub 00ah		;5872
l5874h:
	ld (0c30fh),a		;5874
	ld b,08fh		;5877
	inc l			;5879
	cp a			;587a
	jr nc,l580fh		;587b
	pop af			;587d
	adc a,b			;587e
	djnz l5885h		;587f
	jr nc,l5899h		;5881
	xor 001h		;5883
l5885h:
	jp 0cdd9h		;5885
	ld hl,(0d905h)		;5888
	ret nc			;588b
	call pe,08889h		;588c
	dec a			;588f
	and a			;5890
	ld (bc),a		;5891
	adc a,b			;5892
	jr nz,$+39		;5893
	dec a			;5895
	ld (hl),a		;5896
	ret nz			;5897
	push hl			;5898
l5899h:
	ld c,d			;5899
	dec hl			;589a
	dec hl			;589b
	ld (04cbah),hl		;589c
	ld b,052h		;589f
	inc b			;58a1
	cp e			;58a2
	jr z,l5872h		;58a3
	or a			;58a5
	rlca			;58a6
	pop hl			;58a7
	jp z,l67b4h		;58a8
	ld a,(hl)		;58ab
	rst 28h			;58ac
	sub e			;58ad
	cp e			;58ae
	ld (02d0eh),a		;58af
	and c			;58b2
	ld d,d			;58b3
	di			;58b4
	ld c,d			;58b5
	inc bc			;58b6
	dec e			;58b7
	ld a,h			;58b8
	add a,0beh		;58b9
	call c,sub_6769h	;58bb
	inc h			;58be
	ld (006deh),a		;58bf
	jr c,l58fah		;58c2
	xor h			;58c4
	dec a			;58c5
	ret c			;58c6
	ld h,a			;58c7
	defb 0edh ;next byte illegal after ed	;58c8
	ld d,0c9h		;58c9
	sub a			;58cb
	ret c			;58cc
	jr z,l58cfh		;58cd
l58cfh:
	jr l58d9h		;58cf
	nop			;58d1
	sbc a,c			;58d2
	dec b			;58d3
	ret nz			;58d4
	add a,c			;58d5
	jp nz,0021ah		;58d6
l58d9h:
	ld d,(hl)		;58d9
	rlca			;58da
	ld (de),a		;58db
	dec de			;58dc
	dec de			;58dd
	dec bc			;58de
	dec bc			;58df
	ex af,af'		;58e0
	nop			;58e1
	dec hl			;58e2
	push de			;58e3
	call 0865ah		;58e4
	inc sp			;58e7
	pop hl			;58e8
	dec hl			;58e9
	nop			;58ea
	dec l			;58eb
	and c			;58ec
	ld c,e			;58ed
	nop			;58ee
	ld e,02bh		;58ef
	rlca			;58f1
	defb 0fdh,00ah,0ffh ;illegal sequence	;58f2
	inc c			;58f5
	jr c,l5957h		;58f6
	rrca			;58f8
	add a,d			;58f9
l58fah:
	ld d,b			;58fa
	call m,0ef2fh		;58fb
	ccf			;58fe
	or c			;58ff
	cp 0bfh			;5900
	ret po			;5902
	inc bc			;5903
	ld h,h			;5904
	nop			;5905
	ld h,e			;5906
	ld h,h			;5907
l5908h:
	cp (hl)			;5908
	inc h			;5909
	inc b			;590a
	ret nc			;590b
	cp (hl)			;590c
	ld (hl),a		;590d
	ld c,0b1h		;590e
	cp (hl)			;5910
	sbc a,a			;5911
	dec e			;5912
	call z,0b6d2h		;5913
	ld h,0eeh		;5916
	adc a,h			;5918
	xor c			;5919
	inc b			;591a
	cp (hl)			;591b
	sub d			;591c
	ld (de),a		;591d
	ld l,c			;591e
	add a,h			;591f
l5920h:
	ld l,d			;5920
	cp e			;5921
l5922h:
	ld b,d			;5922
	sbc a,(hl)		;5923
	ld l,b			;5924
	ret m			;5925
	xor c			;5926
	ld (bc),a		;5927
	jp c,00a02h		;5928
	ret m			;592b
	ld l,b			;592c
	ld a,(034b5h)		;592d
	push de			;5930
	ld (de),a		;5931
	sub a			;5932
	ld l,b			;5933
	call nz,018a4h		;5934
	ld a,(00918h)		;5937
	or l			;593a
	jp po,0a509h		;593b
	adc a,c			;593e
	add hl,bc		;593f
	out (009h),a		;5940
	jp 00938h		;5942
	dec de			;5945
	pop af			;5946
	add hl,bc		;5947
	or a			;5948
	jr c,l5908h		;5949
	cp h			;594b
	adc a,05ah		;594c
	cp b			;594e
	sub b			;594f
	ld e,(hl)		;5950
	push hl			;5951
	ex (sp),hl		;5952
	and d			;5953
	and d			;5954
	ld (hl),l		;5955
	ld d,l			;5956
l5957h:
	rst 0			;5957
	and d			;5958
	sub b			;5959
	add a,b			;595a
	ld l,c			;595b
	add a,0a2h		;595c
	inc c			;595e
	add a,a			;595f
	ld l,c			;5960
	and d			;5961
	ld a,b			;5962
	cp b			;5963
	pop de			;5964
	or b			;5965
	cp d			;5966
	ld d,l			;5967
	ld l,h			;5968
	sbc a,b			;5969
	inc bc			;596a
	add hl,hl		;596b
	inc bc			;596c
	call pe,sub_6b4ch	;596d
	inc bc			;5970
	pop de			;5971
	inc bc			;5972
	ld h,e			;5973
	add a,l			;5974
	inc bc			;5975
	ld b,h			;5976
	inc bc			;5977
	jr l5994h		;5978
	inc bc			;597a
	rst 10h			;597b
	ld c,h			;597c
	ld l,d			;597d
	inc bc			;597e
	or d			;597f
	inc bc			;5980
	ld h,e			;5981
	add a,d			;5982
	inc bc			;5983
	ld e,b			;5984
	inc bc			;5985
	jr l599dh		;5986
	inc bc			;5988
	rst 8			;5989
	inc b			;598a
	ld l,c			;598b
	ret			;598c
	ld hl,l6a06h		;598d
	rst 8			;5990
	and 069h		;5991
l5993h:
	ld e,l			;5993
l5994h:
	sbc a,c			;5994
	inc b			;5995
	adc a,e			;5996
	ret nz			;5997
	ret p			;5998
	dec bc			;5999
	cp h			;599a
	ld (bc),a		;599b
	defb 0edh ;next byte illegal after ed	;599c
l599dh:
	ret nz			;599d
	ld hl,07632h		;599e
	ld de,0edbbh		;59a1
	call m,09173h		;59a4
	xor e			;59a7
	or l			;59a8
	res 7,h			;59a9
	sbc a,e			;59ab
	cp b			;59ac
	inc e			;59ad
	pop de			;59ae
	ld a,(hl)		;59af
	ld c,l			;59b0
	ret			;59b1
	add a,08ch		;59b2
	ld c,d			;59b4
	nop			;59b5
	inc bc			;59b6
	ld (hl),d		;59b7
	ld bc,0fea4h		;59b8
	ret po			;59bb
	ld a,(de)		;59bc
	ld hl,l4549h		;59bd
	ld hl,03a6bh		;59c0
	dec b			;59c3
	ld a,(0c4a1h)		;59c4
	add a,0dbh		;59c7
	ld d,c			;59c9
	inc b			;59ca
	ld a,(0074fh)		;59cb
	or c			;59ce
	inc b			;59cf
	cp 0deh			;59d0
	sub (hl)		;59d2
	ld (hl),e		;59d3
	dec c			;59d4
	ret p			;59d5
	or e			;59d6
	inc sp			;59d7
	dec de			;59d8
	ld d,d			;59d9
	cp 089h			;59da
	ld d,h			;59dc
	ret z			;59dd
	ld b,(hl)		;59de
	ld (hl),033h		;59df
	pop hl			;59e1
	inc bc			;59e2
	ld bc,0126ch		;59e3
	inc b			;59e6
	nop			;59e7
	ex af,af'		;59e8
	nop			;59e9
	ld (bc),a		;59ea
	rst 10h			;59eb
	add a,c			;59ec
	ld bc,021c0h		;59ed
	ld (hl),e		;59f0
	adc a,b			;59f1
	inc e			;59f2
	ld (0290ch),a		;59f3
	call m,0bc3dh		;59f6
	ld l,h			;59f9
	sbc a,h			;59fa
	ld a,06ch		;59fb
	jr c,l5993h		;59fd
	ld l,h			;59ff
sub_5a00h:
	ld (hl),b		;5a00
	and e			;5a01
sub_5a02h:
	cpl			;5a02
	dec bc			;5a03
	ret nc			;5a04
	ld e,c			;5a05
	ret po			;5a06
	nop			;5a07
	or b			;5a08
	inc bc			;5a09
	sbc a,024h		;5a0a
	jp z,0d065h		;5a0c
	ld l,b			;5a0f
	bit 3,d			;5a10
	ld c,01ch		;5a12
	ld l,02fh		;5a14
	jr c,$-54		;5a16
	add hl,hl		;5a18
	ld l,e			;5a19
	ld a,(bc)		;5a1a
	ld e,c			;5a1b
	rra			;5a1c
	xor e			;5a1d
	pop af			;5a1e
	ld a,0f1h		;5a1f
	add a,a			;5a21
	xor b			;5a22
	defb 0ddh,0deh,086h ;illegal sequence	;5a23
	ld hl,(00300h)		;5a26
	ld b,a			;5a29
	pop bc			;5a2a
	add a,c			;5a2b
	dec bc			;5a2c
	ld l,e			;5a2d
	ld d,h			;5a2e
	xor b			;5a2f
	call m,0e3c1h		;5a30
	exx			;5a33
	ret pe			;5a34
	cp c			;5a35
	ret			;5a36
	inc b			;5a37
	ld a,(0f6dch)		;5a38
	rlca			;5a3b
	ld d,c			;5a3c
	inc b			;5a3d
	pop bc			;5a3e
	xor l			;5a3f
	add hl,bc		;5a40
	ld h,a			;5a41
	sbc a,b			;5a42
	dec hl			;5a43
	ld (0342fh),a		;5a44
	adc a,a			;5a47
	pop bc			;5a48
	dec (hl)		;5a49
	inc l			;5a4a
	ld (de),a		;5a4b
	pop bc			;5a4c
	ld e,006h		;5a4d
	dec (hl)		;5a4f
	ld l,e			;5a50
l5a51h:
	ld h,a			;5a51
	and e			;5a52
	ex af,af'		;5a53
	pop bc			;5a54
	jp po,l6cf1h		;5a55
	adc a,(hl)		;5a58
	pop bc			;5a59
	cpl			;5a5a
	cp l			;5a5b
	inc hl			;5a5c
	add a,(hl)		;5a5d
	ld de,0861fh		;5a5e
	add a,a			;5a61
	ld hl,l7667h		;5a62
	ld c,076h		;5a65
	add hl,sp		;5a67
	jr l5a71h		;5a68
	add hl,sp		;5a6a
	ld a,(03d2eh)		;5a6b
	ld (hl),c		;5a6e
	and l			;5a6f
	and e			;5a70
l5a71h:
	inc bc			;5a71
	jp nc,0358eh		;5a72
	ld h,e			;5a75
	jp nc,0798eh		;5a76
	ld d,c			;5a79
	ld a,(0e0d2h)		;5a7a
	ld a,(de)		;5a7d
	ld b,(hl)		;5a7e
	ld l,h			;5a7f
	and a			;5a80
	sub h			;5a81
	ld hl,0fb6ch		;5a82
	sub a			;5a85
	inc b			;5a86
	dec c			;5a87
	ld h,021h		;5a88
	jp nz,0d744h		;5a8a
	sbc a,(hl)		;5a8d
	add a,d			;5a8e
	cp e			;5a8f
	adc a,a			;5a90
	add a,l			;5a91
	ld (0e503h),a		;5a92
	ld c,c			;5a95
	ld d,e			;5a96
	dec hl			;5a97
sub_5a98h:
	ret nz			;5a98
	xor e			;5a99
	ld e,b			;5a9a
	rst 18h			;5a9b
	inc d			;5a9c
	ld a,046h		;5a9d
	ld b,0c5h		;5a9f
	add a,h			;5aa1
	and b			;5aa2
	nop			;5aa3
	add a,000h		;5aa4
	inc bc			;5aa6
	ret z			;5aa7
	rst 0			;5aa8
	ld c,a			;5aa9
	jr l5af7h		;5aaa
	ld c,0ddh		;5aac
	ld a,h			;5aae
	ld a,(de)		;5aaf
l5ab0h:
	dec b			;5ab0
	ld a,(de)		;5ab1
	adc a,b			;5ab2
	ld de,0ac00h		;5ab3
	nop			;5ab6
	inc bc			;5ab7
	xor (hl)		;5ab8
	ld bc,02518h		;5ab9
	ld (09e94h),a		;5abc
	ld h,(hl)		;5abf
	inc bc			;5ac0
	rrca			;5ac1
	ld l,h			;5ac2
	add a,018h		;5ac3
	adc a,d			;5ac5
	ld hl,03a6ch		;5ac6
	dec bc			;5ac9
	rlca			;5aca
	or c			;5acb
	inc b			;5acc
	cp 088h			;5acd
	adc a,(hl)		;5acf
	inc hl			;5ad0
	inc b			;5ad1
	dec l			;5ad2
	ld d,(hl)		;5ad3
	ld b,b			;5ad4
	xor b			;5ad5
	ld c,d			;5ad6
	cp h			;5ad7
	ld sp,02d82h		;5ad8
	ld e,(hl)		;5adb
	adc a,(hl)		;5adc
	dec l			;5add
	ld de,06800h		;5ade
	ld (de),a		;5ae1
	ld bc,08e12h		;5ae2
	inc l			;5ae5
	in a,(0a0h)		;5ae6
	inc h			;5ae8
	inc sp			;5ae9
	ld l,h			;5aea
	add a,(hl)		;5aeb
	and b			;5aec
	ld c,06ch		;5aed
	ld (0e004h),a		;5aef
	ld l,e			;5af2
	ld (l6bc5h),a		;5af3
	xor l			;5af6
l5af7h:
	ld h,d			;5af7
	ld (de),a		;5af8
	ld a,(bc)		;5af9
	ld b,c			;5afa
	call po,0c90ah		;5afb
	ld l,e			;5afe
	ld a,040h		;5aff
	ld c,c			;5b01
	sbc a,c			;5b02
	ld d,h			;5b03
	or c			;5b04
	cp c			;5b05
	ld c,c			;5b06
	sbc a,b			;5b07
	dec hl			;5b08
	or 08dh			;5b09
	or l			;5b0b
	jr c,$+35		;5b0c
	adc a,b			;5b0e
	ld (hl),b		;5b0f
	ld d,c			;5b10
	adc a,(hl)		;5b11
	ld l,b			;5b12
	or a			;5b13
	ld hl,l708eh		;5b14
	sub d			;5b17
	ld l,h			;5b18
	sub 007h		;5b19
	ld d,h			;5b1b
	inc b			;5b1c
	ld l,(hl)		;5b1d
	push bc			;5b1e
	ld l,l			;5b1f
	call nc,01b9ch		;5b20
	ld b,a			;5b23
	jp z,0c94eh		;5b24
	cp e			;5b27
	adc a,b			;5b28
	sbc a,(hl)		;5b29
	nop			;5b2a
	inc bc			;5b2b
	and b			;5b2c
sub_5b2dh:
	ld bc,0a291h		;5b2d
	ld b,d			;5b30
	ld a,h			;5b31
	sbc a,012h		;5b32
	xor 00eh		;5b34
	ld a,h			;5b36
	ld c,(hl)		;5b37
	inc c			;5b38
	ld a,(0b68ch)		;5b39
	jp m,0b55dh		;5b3c
	ld e,a			;5b3f
	cp 0b2h			;5b40
	ld e,a			;5b42
	or a			;5b43
	and 0c7h		;5b44
	ret nz			;5b46
	adc a,a			;5b47
	cp (hl)			;5b48
	sbc a,c			;5b49
	ret m			;5b4a
	ld l,h			;5b4b
	adc a,a			;5b4c
	xor 011h		;5b4d
	adc a,0c1h		;5b4f
	ld (bc),a		;5b51
	ld l,l			;5b52
	jr nc,$-122		;5b53
	ld d,l			;5b55
	ld l,l			;5b56
	ret z			;5b57
	ld h,e			;5b58
	ld h,h			;5b59
	jp pe,l73e7h		;5b5a
	push hl			;5b5d
	inc b			;5b5e
	ld c,(hl)		;5b5f
	ld l,l			;5b60
	ld sp,hl		;5b61
l5b62h:
	xor e			;5b62
	ld e,l			;5b63
	dec b			;5b64
	add a,(hl)		;5b65
	ld l,h			;5b66
	dec b			;5b67
	rst 20h			;5b68
	ld e,0fch		;5b69
	ld h,e			;5b6b
	cp b			;5b6c
	ret p			;5b6d
	or e			;5b6e
	add a,e			;5b6f
	xor (hl)		;5b70
	di			;5b71
	rst 8			;5b72
	or l			;5b73
	ld a,b			;5b74
	rst 20h			;5b75
	jp po,0bcafh		;5b76
	ld b,c			;5b79
	pop af			;5b7a
	ret			;5b7b
	ret nz			;5b7c
	xor a			;5b7d
	jr nz,l5b82h		;5b7e
	and a			;5b80
	nop			;5b81
l5b82h:
	daa			;5b82
	ld a,b			;5b83
	nop			;5b84
	adc a,e			;5b85
	and c			;5b86
	ld (hl),h		;5b87
	nop			;5b88
	call nc,0860eh		;5b89
	ld a,d			;5b8c
	nop			;5b8d
	ex (sp),hl		;5b8e
	ld c,l			;5b8f
	inc d			;5b90
	ld c,006h		;5b91
	ld l,(hl)		;5b93
	nop			;5b94
	ret nz			;5b95
	ld (bc),a		;5b96
	or e			;5b97
	ld c,039h		;5b98
	ld (de),a		;5b9a
	ld c,08eh		;5b9b
	out (011h),a		;5b9d
	ret z			;5b9f
	set 1,c			;5ba0
	ld a,e			;5ba2
	ld l,l			;5ba3
	ld b,e			;5ba4
	ld d,a			;5ba5
	inc bc			;5ba6
	call m,01f89h		;5ba7
	dec bc			;5baa
	and c			;5bab
	adc a,a			;5bac
	dec de			;5bad
	inc b			;5bae
	ld h,b			;5baf
	adc a,h			;5bb0
	nop			;5bb1
	call c,0dcf3h		;5bb2
	sbc a,d			;5bb5
	ld d,d			;5bb6
	ld a,(0267ah)		;5bb7
	dec a			;5bba
	push af			;5bbb
	inc l			;5bbc
	ld e,064h		;5bbd
	and a			;5bbf
	dec b			;5bc0
	ret z			;5bc1
	ld l,e			;5bc2
	ret nz			;5bc3
	ld a,(hl)		;5bc4
	ld (03206h),hl		;5bc5
	or (hl)			;5bc8
	sub b			;5bc9
	jr nz,l5b62h		;5bca
	ld (l6eddh),a		;5bcc
	ld b,03eh		;5bcf
	halt			;5bd1
	ld (06eech),a		;5bd2
	ld d,0d0h		;5bd5
	ld c,h			;5bd7
	ld de,014d6h		;5bd8
	jp c,00607h		;5bdb
	ld l,a			;5bde
	ld a,(l6e81h)		;5bdf
	sbc a,d			;5be2
	ld d,d			;5be3
	adc a,a			;5be4
	ld b,h			;5be5
	dec b			;5be6
	jp nz,02ff2h		;5be7
	exx			;5bea
	ld d,d			;5beb
	ld l,(hl)		;5bec
	jp nz,0d926h		;5bed
	jr nz,$-22		;5bf0
	rlca			;5bf2
	jp z,02104h		;5bf3
	ld a,(bc)		;5bf6
	ret m			;5bf7
	ld d,l			;5bf8
	ret po			;5bf9
	dec c			;5bfa
	ld d,a			;5bfb
	ld b,e			;5bfc
	inc b			;5bfd
	dec c			;5bfe
	ld d,b			;5bff
	ccf			;5c00
	sub 005h		;5c01
	jp c,02256h		;5c03
	dec c			;5c06
	ld e,00dh		;5c07
	or l			;5c09
	rst 28h			;5c0a
	dec de			;5c0b
	rst 28h			;5c0c
	dec c			;5c0d
	call c,03260h		;5c0e
	ld c,(hl)		;5c11
	ei			;5c12
	dec bc			;5c13
	rst 30h			;5c14
	dec bc			;5c15
	ld a,(de)		;5c16
	cp 019h			;5c17
	cp 0eeh			;5c19
	dec c			;5c1b
	ld l,l			;5c1c
	adc a,d			;5c1d
	or l			;5c1e
	inc bc			;5c1f
	dec bc			;5c20
	cp 01eh			;5c21
	call z,sub_5d82h	;5c23
	rlca			;5c26
	dec de			;5c27
	rra			;5c28
sub_5c29h:
	rlca			;5c29
	ld c,c			;5c2a
	pop bc			;5c2b
	ld e,e			;5c2c
	ld l,(hl)		;5c2d
	sub c			;5c2e
	dec de			;5c2f
	jr c,$+83		;5c30
	ld a,(bc)		;5c32
	sbc a,(hl)		;5c33
	add a,h			;5c34
	ret nc			;5c35
	xor a			;5c36
	xor e			;5c37
	ld h,b			;5c38
	ld a,(l6dd2h)		;5c39
	inc b			;5c3c
	dec a			;5c3d
	cp 005h			;5c3e
	ret z			;5c40
	ld (03a06h),a		;5c41
	ld hl,(l6e44h)		;5c44
	jp z,l444ch		;5c47
	dec e			;5c4a
	ld c,h			;5c4b
	ld b,091h		;5c4c
	inc bc			;5c4e
	ret			;5c4f
	sbc a,065h		;5c50
	add a,d			;5c52
	sbc a,b			;5c53
	ld (00f91h),a		;5c54
	ld h,d			;5c57
	ld (hl),b		;5c58
	ld b,0a6h		;5c59
	rrca			;5c5b
	jr c,$+35		;5c5c
	cp e			;5c5e
	ld e,d			;5c5f
	ld l,l			;5c60
	jp nz,00468h		;5c61
	dec c			;5c64
	call z,0ca14h		;5c65
	pop hl			;5c68
	inc d			;5c69
	pop de			;5c6a
	inc d			;5c6b
	or a			;5c6c
	inc b			;5c6d
	dec c			;5c6e
	ld hl,(0adc9h)		;5c6f
	xor b			;5c72
	adc a,0c1h		;5c73
	sub a			;5c75
	halt			;5c76
	call pe,00a28h		;5c77
	sub l			;5c7a
	adc a,061h		;5c7b
	ret po			;5c7d
	call nc,0940eh		;5c7e
	inc d			;5c81
	ld c,00ch		;5c82
	call nc,09e0eh		;5c84
l5c87h:
	adc a,d			;5c87
	ex (sp),hl		;5c88
	sub (hl)		;5c89
	dec e			;5c8a
	add a,(hl)		;5c8b
	ld d,0f6h		;5c8c
	ex de,hl		;5c8e
	cp (hl)			;5c8f
	ld c,01eh		;5c90
	halt			;5c92
	ld c,03ch		;5c93
	add a,e			;5c95
	call z,0060eh		;5c96
	jp z,0dc0eh		;5c99
	out (034h),a		;5c9c
	ld l,a			;5c9e
	ld e,c			;5c9f
	inc h			;5ca0
	inc b			;5ca1
	ret z			;5ca2
	jp nc,03a74h		;5ca3
	dec bc			;5ca6
	ret nc			;5ca7
	jp 0a4feh		;5ca8
	xor a			;5cab
	nop			;5cac
	dec (hl)		;5cad
	ld l,a			;5cae
	ld bc,0029ah		;5caf
	xor a			;5cb2
	dec b			;5cb3
	call 002deh		;5cb4
	ld b,002h		;5cb7
	out (01ch),a		;5cb9
	ld b,090h		;5cbb
	ex af,af'		;5cbd
	jp 00006h		;5cbe
	ld (hl),a		;5cc1
sub_5cc2h:
	rlca			;5cc2
	jp c,0c301h		;5cc3
	ld (de),a		;5cc6
	or h			;5cc7
	jp p,068a4h		;5cc8
	ld l,a			;5ccb
	jp pe,005adh		;5ccc
	jp z,02cceh		;5ccf
	ld h,a			;5cd2
	ld de,082aah		;5cd3
	dec b			;5cd6
	xor b			;5cd7
	sub c			;5cd8
	jp nz,0b263h		;5cd9
	inc b			;5cdc
	sbc a,(hl)		;5cdd
	ccf			;5cde
	ld b,(hl)		;5cdf
	ld l,a			;5ce0
	adc a,(hl)		;5ce1
	jp nz,l71cdh		;5ce2
	or c			;5ce5
	inc (hl)		;5ce6
	or e			;5ce7
	jp 0acbch		;5ce8
	or d			;5ceb
	inc b			;5cec
	ld l,l			;5ced
	or 022h			;5cee
	call z,0b09dh		;5cf0
	ld h,(hl)		;5cf3
	ld l,(hl)		;5cf4
	ld b,012h		;5cf5
	ret nz			;5cf7
	ld l,a			;5cf8
	adc a,e			;5cf9
	and h			;5cfa
	call z,006e3h		;5cfb
	ld (hl),b		;5cfe
	jp nz,00606h		;5cff
	ld (hl),b		;5d02
	ld h,b			;5d03
	and h			;5d04
	and b			;5d05
l5d06h:
	inc hl			;5d06
	jp z,00eb1h		;5d07
	add a,b			;5d0a
	jp nz,088e5h		;5d0b
	daa			;5d0e
	ld de,0016fh		;5d0f
	ld (hl),b		;5d12
	jp z,l7034h		;5d13
	ld a,(l6f69h)		;5d16
	call c,088c0h		;5d19
	jp nz,092b8h		;5d1c
	jp z,02d08h		;5d1f
l5d22h:
	jp 00ee7h		;5d22
	ld (0d44ch),hl		;5d25
	ld (02290h),hl		;5d28
l5d2bh:
	adc a,(hl)		;5d2b
	ld b,e			;5d2c
	ld de,0228dh		;5d2d
	jr l5d9ch		;5d30
	ld (0db98h),hl		;5d32
	ld (02208h),hl		;5d35
	or h			;5d38
	rst 30h			;5d39
sub_5d3ah:
	ld (0c4a0h),hl		;5d3a
	ld (0226fh),hl		;5d3d
	xor e			;5d40
	sub e			;5d41
	ld (01329h),hl		;5d42
	ld l,e			;5d45
	ld (0a81bh),hl		;5d46
	ld (l7608h),hl		;5d49
	ld (0981ah),hl		;5d4c
	ld b,0b0h		;5d4f
	ld (09c70h),hl		;5d51
	ld (022c9h),hl		;5d54
	ld sp,0226ch		;5d57
	cp b			;5d5a
sub_5d5bh:
	ld (06cadh),hl		;5d5b
	ld (0f1a4h),hl		;5d5e
	dec l			;5d61
	or e			;5d62
	ld h,h			;5d63
	add a,l			;5d64
	sbc a,d			;5d65
	pop af			;5d66
	ret			;5d67
	cp d			;5d68
	and b			;5d69
	inc bc			;5d6a
	ld (hl),001h		;5d6b
	cp 003h			;5d6d
	ld c,0c2h		;5d6f
	ld c,a			;5d71
	ld (hl),b		;5d72
	push de			;5d73
	xor l			;5d74
	inc bc			;5d75
	ld h,h			;5d76
	ld de,l72e8h		;5d77
	and d			;5d7a
	ld (hl),e		;5d7b
	defb 0ddh,081h,0d1h ;illegal sequence	;5d7c
	ex de,hl		;5d7f
	push hl			;5d80
	sbc a,c			;5d81
sub_5d82h:
	add hl,sp		;5d82
	add a,d			;5d83
	xor h			;5d84
	add hl,bc		;5d85
	ld (hl),b		;5d86
	ld de,0dd0fh		;5d87
	add hl,bc		;5d8a
	ex af,af'		;5d8b
l5d8ch:
	ld a,(hl)		;5d8c
	sub 001h		;5d8d
	ld (hl),a		;5d8f
	add hl,de		;5d90
	djnz l5d8ch		;5d91
	pop hl			;5d93
	dec d			;5d94
	call 08ca0h		;5d95
	and b			;5d98
	pop hl			;5d99
	dec de			;5d9a
	ld (bc),a		;5d9b
l5d9ch:
	and d			;5d9c
	cp d			;5d9d
	add a,a			;5d9e
	rst 10h			;5d9f
	adc a,b			;5da0
sub_5da1h:
	jp p,0fe50h		;5da1
	adc a,h			;5da4
	ld h,(hl)		;5da5
	add a,(hl)		;5da6
	ld e,b			;5da7
	and b			;5da8
	ld a,(bc)		;5da9
	dec e			;5daa
	or b			;5dab
	push af			;5dac
	dec e			;5dad
	ld a,b			;5dae
	and b			;5daf
	dec e			;5db0
	out (03bh),a		;5db1
	ld h,h			;5db3
	ld h,b			;5db4
	dec e			;5db5
	adc a,00ch		;5db6
	ld a,c			;5db8
	ld (hl),b		;5db9
	dec sp			;5dba
	rst 8			;5dbb
	ld c,090h		;5dbc
	dec e			;5dbe
	ld d,a			;5dbf
	add a,b			;5dc0
	dec e			;5dc1
	ld (hl),c		;5dc2
	cp l			;5dc3
	sbc a,b			;5dc4
	and c			;5dc5
	ld b,(hl)		;5dc6
	push hl			;5dc7
	ret c			;5dc8
	add hl,bc		;5dc9
	or b			;5dca
	ld c,b			;5dcb
	cp l			;5dcc
	ld (09851h),a		;5dcd
	ld (bc),a		;5dd0
	defb 0fdh,05dh ;ld e,iyl	;5dd1
	rst 10h			;5dd3
	jp z,0b388h		;5dd4
	sbc a,l			;5dd7
	adc a,(hl)		;5dd8
	daa			;5dd9
	inc l			;5dda
	ld (hl),c		;5ddb
	or c			;5ddc
	ld l,d			;5ddd
	dec b			;5dde
	adc a,b			;5ddf
	ld b,l			;5de0
	ld (hl),c		;5de1
	adc a,b			;5de2
	inc l			;5de3
	ld hl,(00b2dh)		;5de4
	ld (hl),c		;5de7
	add a,016h		;5de8
	cp 0beh			;5dea
	ld a,(bc)		;5dec
	ld (0bc71h),hl		;5ded
	and l			;5df0
	ld a,(bc)		;5df1
	ld hl,0f002h		;5df2
	ld c,e			;5df5
	ld d,d			;5df6
	sub a			;5df7
	ret nz			;5df8
	ld a,(bc)		;5df9
	add a,(hl)		;5dfa
	nop			;5dfb
	ld l,h			;5dfc
	or e			;5dfd
	ld b,a			;5dfe
	jr z,$+101		;5dff
	ld h,03ah		;5e01
	or d			;5e03
	dec a			;5e04
	and a			;5e05
	pop bc			;5e06
	rst 0			;5e07
	ld l,c			;5e08
	ld e,(hl)		;5e09
	pop bc			;5e0a
	ld (de),a		;5e0b
	ld l,e			;5e0c
	sub a			;5e0d
	nop			;5e0e
	ld b,006h		;5e0f
	jp z,l7157h		;5e11
	ld b,007h		;5e14
l5e16h:
	or d			;5e16
	dec (hl)		;5e17
	ld l,(hl)		;5e18
	and d			;5e19
	ld b,e			;5e1a
	push af			;5e1b
	ld a,b			;5e1c
	sbc a,c			;5e1d
	ld d,016h		;5e1e
	ld (hl),d		;5e20
	pop af			;5e21
	add a,e			;5e22
	out (0d4h),a		;5e23
	ld (0a2bch),a		;5e25
	ld hl,l71adh		;5e28
	jp pe,006ach		;5e2b
	ld (hl),d		;5e2e
	cp a			;5e2f
	ld b,0d1h		;5e30
	push hl			;5e32
	ld b,0e3h		;5e33
	ld b,0cbh		;5e35
	push af			;5e37
	ld b,093h		;5e38
	rlca			;5e3a
	ld (hl),d		;5e3b
	ld b,086h		;5e3c
	add hl,de		;5e3e
l5e3fh:
	ld b,0aah		;5e3f
	ret			;5e41
	add a,(hl)		;5e42
	add hl,hl		;5e43
	ld (de),a		;5e44
	xor a			;5e45
	ret m			;5e46
	ld a,d			;5e47
	and b			;5e48
	push bc			;5e49
	ld (hl),a		;5e4a
	djnz l5e16h		;5e4b
	inc (hl)		;5e4d
	ld de,009e3h		;5e4e
	inc d			;5e51
	inc hl			;5e52
	call po,00036h		;5e53
	dec c			;5e56
	ld (hl),b		;5e57
	ld (01309h),hl		;5e58
	rst 0			;5e5b
	dec h			;5e5c
	jr nc,l5e7eh		;5e5d
	ld bc,00021h		;5e5f
	inc sp			;5e62
	ld bc,l4409h		;5e63
	rla			;5e66
	inc h			;5e67
	ld bc,l4025h		;5e68
	rrc a			;5e6b
	rra			;5e6d
	or 081h			;5e6e
	ld b,h			;5e70
	ld (bc),a		;5e71
	ld b,b			;5e72
	xor d			;5e73
	ret z			;5e74
	dec (hl)		;5e75
	dec h			;5e76
	ld (bc),a		;5e77
l5e78h:
	inc bc			;5e78
	or 028h			;5e79
	rrca			;5e7b
	rra			;5e7c
	ld b,e			;5e7d
l5e7eh:
	ld (bc),a		;5e7e
	inc h			;5e7f
l5e80h:
	ld d,l			;5e80
	inc bc			;5e81
	cp c			;5e82
	inc b			;5e83
	jr nc,l5e87h		;5e84
	ld b,(hl)		;5e86
l5e87h:
	inc bc			;5e87
	inc d			;5e88
	or b			;5e89
	and l			;5e8a
	rrca			;5e8b
	rra			;5e8c
	ld bc,00354h		;5e8d
	ld h,(hl)		;5e90
	inc b			;5e91
	ld h,b			;5e92
	inc bc			;5e93
	ex (sp),hl		;5e94
	ld e,h			;5e95
	ld sp,hl		;5e96
	ld bc,0eec6h		;5e97
	ld de,l722bh		;5e9a
	xor 09ah		;5e9d
	cp c			;5e9f
	pop bc			;5ea0
	inc a			;5ea1
	ld (hl),d		;5ea2
	jp nc,l7e28h		;5ea3
	ld c,d			;5ea6
	ld (hl),d		;5ea7
	xor h			;5ea8
	ld (de),a		;5ea9
	add a,d			;5eaa
	ld (hl),d		;5eab
	cp (hl)			;5eac
	nop			;5ead
	ld (hl),d		;5eae
	cp 010h			;5eaf
	jp z,0726ah		;5eb1
	ld hl,l7b2fh		;5eb4
	ld (hl),d		;5eb7
	and l			;5eb8
l5eb9h:
	ld b,c			;5eb9
	ld a,l			;5eba
	ld (hl),d		;5ebb
	add a,010h		;5ebc
	ld (l6504h),a		;5ebe
	add a,e			;5ec1
	rlca			;5ec2
	xor l			;5ec3
	add a,c			;5ec4
	dec e			;5ec5
	or d			;5ec6
	jp nc,l4803h		;5ec7
	ret			;5eca
	sub d			;5ecb
	dec hl			;5ecc
	and d			;5ecd
	dec bc			;5ece
	inc l			;5ecf
	ld (02791h),a		;5ed0
	ld l,l			;5ed3
	adc a,d			;5ed4
	daa			;5ed5
	sub e			;5ed6
	cp b			;5ed7
	and a			;5ed8
	ld bc,089b1h		;5ed9
	ret c			;5edc
	rlca			;5edd
	sub (hl)		;5ede
	ld (bc),a		;5edf
	and (hl)		;5ee0
	pop af			;5ee1
	daa			;5ee2
	sub l			;5ee3
	adc a,l			;5ee4
	ld hl,(0b60eh)		;5ee5
	and a			;5ee8
	ld h,l			;5ee9
	or d			;5eea
	sub (hl)		;5eeb
	and 041h		;5eec
	ld e,b			;5eee
	inc bc			;5eef
	cp (hl)			;5ef0
	add hl,bc		;5ef1
	jp nz,l72bdh		;5ef2
	ld b,l			;5ef5
	and 045h		;5ef6
	daa			;5ef8
	rst 20h			;5ef9
	rrca			;5efa
	and 0f3h		;5efb
	adc a,l			;5efd
	rst 20h			;5efe
	ex af,af'		;5eff
	dec c			;5f00
	add a,a			;5f01
	ld b,a			;5f02
	add a,a			;5f03
sub_5f04h:
	add a,b			;5f04
	rst 20h			;5f05
	push bc			;5f06
	ld hl,l4e80h		;5f07
	add hl,de		;5f0a
	inc l			;5f0b
	ld l,a			;5f0c
	or c			;5f0d
	push hl			;5f0e
	cp 000h			;5f0f
	add a,d			;5f11
	sbc a,(hl)		;5f12
	ld c,c			;5f13
	cp (hl)			;5f14
	dec h			;5f15
	sub c			;5f16
	dec e			;5f17
	or b			;5f18
	call m,0af36h		;5f19
	inc b			;5f1c
	ret			;5f1d
	ret z			;5f1e
	cp l			;5f1f
	call 0c0ceh		;5f20
	ccf			;5f23
	ld hl,l7348h		;5f24
	ld (bc),a		;5f27
	jp z,l7369h		;5f28
	ld hl,0734ah		;5f2b
	sbc a,l			;5f2e
	inc a			;5f2f
	ld a,(08cach)		;5f30
	sub b			;5f33
	jp 0ab2ah		;5f34
	ld h,h			;5f37
	sbc a,(hl)		;5f38
	ret nz			;5f39
	ld (hl),e		;5f3a
	ld de,0018eh		;5f3b
	dec l			;5f3e
l5f3fh:
	ld bc,0b806h		;5f3f
	ld (bc),a		;5f42
	ret			;5f43
	sub 004h		;5f44
	or a			;5f46
	ld (bc),a		;5f47
	call z,0153bh		;5f48
	ld (hl),b		;5f4b
	or e			;5f4c
	dec d			;5f4d
	inc b			;5f4e
	pop bc			;5f4f
l5f50h:
	dec d			;5f50
	ld hl,l73b7h		;5f51
	jr nc,l5f7bh		;5f54
	ld b,084h		;5f56
	and a			;5f58
	ld b,l			;5f59
	xor h			;5f5a
	dec h			;5f5b
	ld (hl),03bh		;5f5c
	add a,b			;5f5e
	ret z			;5f5f
	sub 008h		;5f60
	ret			;5f62
	ld (hl),09ch		;5f63
	xor l			;5f65
	add hl,hl		;5f66
	nop			;5f67
	inc bc			;5f68
	rst 38h			;5f69
	adc a,d			;5f6a
	jp m,0ab12h		;5f6b
	inc b			;5f6e
	ld a,0d9h		;5f6f
	ld h,b			;5f71
	jp p,0c873h		;5f72
	jp z,0d222h		;5f75
	ld (hl),e		;5f78
	xor 0c0h		;5f79
l5f7bh:
	ex af,af'		;5f7b
	ld a,(0c1f1h)		;5f7c
	add a,049h		;5f7f
	ex af,af'		;5f81
	and c			;5f82
	inc bc			;5f83
	ld l,h			;5f84
	cp b			;5f85
	pop bc			;5f86
	sbc a,(hl)		;5f87
	xor (hl)		;5f88
	add hl,de		;5f89
	rlca			;5f8a
	and b			;5f8b
	nop			;5f8c
	jp m,011c1h		;5f8d
	ld bc,0cdc2h		;5f90
	ld e,(hl)		;5f93
	ld b,b			;5f94
	ld bc,0ca14h		;5f95
	rra			;5f98
	ld (hl),h		;5f99
	ld a,(0d3afh)		;5f9a
	scf			;5f9d
	cp l			;5f9e
	ld (hl),e		;5f9f
	cp c			;5fa0
	ld (hl),005h		;5fa1
	or l			;5fa3
	sbc a,l			;5fa4
	or c			;5fa5
	djnz l5feah		;5fa6
	xor (hl)		;5fa8
	jp c,0cf71h		;5fa9
	jp l68a2h		;5fac
	ld hl,0a6d9h		;5faf
	jp 08413h		;5fb2
	ld (de),a		;5fb5
	pop bc			;5fb6
	sub b			;5fb7
	ld h,d			;5fb8
	cp l			;5fb9
	ld c,l			;5fba
	ld (hl),e		;5fbb
	xor (hl)		;5fbc
	ret p			;5fbd
	dec l			;5fbe
	xor (hl)		;5fbf
	ld (0af74h),hl		;5fc0
	ld (0f033h),hl		;5fc3
	ld (l7ed9h),hl		;5fc6
	xor b			;5fc9
	adc a,e			;5fca
	xor h			;5fcb
	ld h,h			;5fcc
l5fcdh:
	pop bc			;5fcd
	ld e,d			;5fce
	dec b			;5fcf
	ld d,l			;5fd0
	ld e,b			;5fd1
l5fd2h:
	xor l			;5fd2
	add hl,bc		;5fd3
	sub a			;5fd4
l5fd5h:
	add a,l			;5fd5
	ld e,e			;5fd6
	ld (hl),h		;5fd7
	ld a,(sub_6009h)	;5fd8
	call 00482h		;5fdb
	ld (hl),h		;5fde
	jp z,l746fh		;5fdf
	dec a			;5fe2
	jp (hl)			;5fe3
	ld e,d			;5fe4
	ld b,021h		;5fe5
	inc hl			;5fe7
	adc a,(hl)		;5fe8
	ld (hl),h		;5fe9
l5feah:
	adc a,0e2h		;5fea
	adc a,e			;5fec
	ret pe			;5fed
	ret nc			;5fee
	ld d,(hl)		;5fef
	inc bc			;5ff0
	dec hl			;5ff1
	halt			;5ff2
	rlca			;5ff3
	add hl,bc		;5ff4
	rlca			;5ff5
	dec c			;5ff6
	ld b,b			;5ff7
	ld a,(0c1f7h)		;5ff8
	cp 004h			;5ffb
	jp z,0bb26h		;5ffd
	ld (hl),h		;6000
	ret p			;6001
	dec hl			;6002
	jp z,004dch		;6003
l6006h:
	ret nc			;6006
	djnz l6006h		;6007
sub_6009h:
	inc b			;6009
	rlca			;600a
	jp z,02211h		;600b
	ld (hl),l		;600e
	cp 0b9h			;600f
	ld b,d			;6011
	ld h,a			;6012
	inc b			;6013
	add hl,bc		;6014
	jp z,0049bh		;6015
	ex af,af'		;6018
	ld a,(bc)		;6019
	jp z,l75a4h		;601a
	ld a,b			;601d
	or 0c1h			;601e
	or b			;6020
	ret pe			;6021
	ld d,001h		;6022
	nop			;6024
	ld c,020h		;6025
	cp 080h			;6027
	jp z,l7943h		;6029
	ld d,063h		;602c
	ld (bc),a		;602e
	ex af,af'		;602f
	ret nz			;6030
	ex af,af'		;6031
	ld e,b			;6032
	inc bc			;6033
	ex af,af'		;6034
	ret m			;6035
	adc a,008h		;6036
	jr nz,l5fd2h		;6038
	inc b			;603a
	ld c,040h		;603b
	sub 017h		;603d
	dec b			;603f
	ex af,af'		;6040
	dec (hl)		;6041
	ld l,b			;6042
	ex af,af'		;6043
	ld b,008h		;6044
	adc a,a			;6046
	sub b			;6047
	jr nz,$+14		;6048
	ld d,(hl)		;604a
	ld c,077h		;604b
	ld (hl),e		;604d
	ld d,007h		;604e
	dec a			;6050
	cp d			;6051
	inc (hl)		;6052
	ld h,e			;6053
	ex af,af'		;6054
	ld c,028h		;6055
	ld c,000h		;6057
	ld b,003h		;6059
	ld d,009h		;605b
	ld c,0c0h		;605d
l605fh:
	jr nc,l605fh		;605f
	ld c,b			;6061
	ld a,(bc)		;6062
	cp 050h			;6063
	nop			;6065
	jp z,0738eh		;6066
	ld b,001h		;6069
	ld d,00ah		;606b
	ld c,01ch		;606d
	add a,b			;606f
	cp 098h			;6070
	ld a,(de)		;6072
	or c			;6073
	dec bc			;6074
	dec h			;6075
	cp b			;6076
	ld a,(bc)		;6077
	or b			;6078
	dec d			;6079
	inc c			;607a
	ld c,040h		;607b
	ex (sp),hl		;607d
	ccf			;607e
	dec d			;607f
	jr l608fh		;6080
	dec d			;6082
	ret nc			;6083
	ret c			;6084
	ld a,(bc)		;6085
l6086h:
	ld b,(hl)		;6086
	ld c,00eh		;6087
	dec e			;6089
	inc d			;608a
	cp 0e8h			;608b
	ld d,l			;608d
	ld e,d			;608e
l608fh:
	and d			;608f
	ld bc,l734ch		;6090
	cp 058h			;6093
	jp z,00452h		;6095
	jr nc,l60fah		;6098
	ld (hl),c		;609a
	ld b,01fh		;609b
	jr nc,l60b5h		;609d
	rrca			;609f
	jr z,l60bah		;60a0
	jp z,l5843h		;60a2
	jr z,l60b6h		;60a5
	ld d,010h		;60a7
	ld a,(bc)		;60a9
	dec de			;60aa
	adc a,b			;60ab
	ld a,(bc)		;60ac
	inc sp			;60ad
	inc c			;60ae
	ld de,01e0eh		;60af
	ld d,h			;60b2
	ld (hl),d		;60b3
	ld e,b			;60b4
l60b5h:
	inc sp			;60b5
l60b6h:
	jr nz,l6086h		;60b6
	ld (hl),e		;60b8
	ex af,af'		;60b9
l60bah:
	ld (bc),a		;60ba
	ld a,b			;60bb
	jp z,l7666h		;60bc
	or h			;60bf
	ld sp,00442h		;60c0
	ex af,af'		;60c3
	and b			;60c4
	jp z,0044eh		;60c5
	or b			;60c8
	jp z,l5a51h		;60c9
	inc b			;60cc
	dec h			;60cd
	call c,sub_7475h	;60ce
	adc a,c			;60d1
	add a,08ah		;60d2
	ld b,(hl)		;60d4
	pop af			;60d5
	exx			;60d6
	ld h,(hl)		;60d7
	ld h,04eh		;60d8
	pop af			;60da
	ld d,e			;60db
	inc b			;60dc
l60ddh:
	sub (hl)		;60dd
	sbc a,c			;60de
	ret pe			;60df
	ld e,d			;60e0
	call pe,0c902h		;60e1
	ld a,004h		;60e4
	ld (09ff4h),a		;60e6
	ld h,b			;60e9
	dec d			;60ea
	ld b,d			;60eb
	jp z,l5638h		;60ec
	inc h			;60ef
	and c			;60f0
	jr $+1			;60f1
	inc c			;60f3
	cp h			;60f4
	or c			;60f5
	nop			;60f6
	dec d			;60f7
	sbc a,b			;60f8
	rrca			;60f9
l60fah:
	call pe,01e60h		;60fa
	jp nz,02638h		;60fd
l6100h:
	rrca			;6100
	ld l,a			;6101
	add a,b			;6102
	rrca			;6103
	ld h,b			;6104
	ld a,d			;6105
	rst 0			;6106
	jr c,l6131h		;6107
	call nz,03be7h		;6109
	rst 38h			;610c
l610dh:
	ld b,00fh		;610d
	ld a,d			;610f
	and b			;6110
	rrca			;6111
	dec b			;6112
	ld hl,l75e2h		;6113
	ld de,0d332h		;6116
	adc a,c			;6119
	push bc			;611a
	ld e,b			;611b
	ld hl,0e3f0h		;611c
	ld de,0eda0h		;611f
	dec bc			;6122
	ld (0260bh),hl		;6123
	ret nz			;6126
	dec bc			;6127
	djnz l6135h		;6128
	ret nc			;612a
	adc a,e			;612b
l612ch:
	ld c,08dh		;612c
	sub (hl)		;612e
	ld d,b			;612f
	or c			;6130
l6131h:
	pop bc			;6131
	add hl,bc		;6132
	adc a,c			;6133
	and b			;6134
l6135h:
	rst 38h			;6135
	add a,c			;6136
	ld h,h			;6137
	sub a			;6138
	ld h,c			;6139
	call 0ab8eh		;613a
	ld d,e			;613d
	dec b			;613e
	sub (hl)		;613f
	ld d,b			;6140
	ld hl,0573eh		;6141
	ld a,c			;6144
l6145h:
	xor 075h		;6145
	call 026c6h		;6147
	ld b,b			;614a
	ld b,032h		;614b
	and h			;614d
	jp 01132h		;614e
	xor b			;6151
	or b			;6152
	cp (hl)			;6153
	halt			;6154
	ret			;6155
	pop bc			;6156
	ld a,e			;6157
	ld h,(hl)		;6158
	add hl,bc		;6159
	call 00536h		;615a
	ld a,(bc)		;615d
	ld (hl),a		;615e
	ld a,(bc)		;615f
	ld a,(00a7ch)		;6160
	ld c,(hl)		;6163
	ld a,b			;6164
	ld a,(bc)		;6165
	ld a,l			;6166
	ld a,(bc)		;6167
	jr nc,l612ch		;6168
	nop			;616a
	inc bc			;616b
	dec b			;616c
	add hl,bc		;616d
	ex af,af'		;616e
	dec b			;616f
	rla			;6170
	ld (hl),e		;6171
	jr c,l61ach		;6172
	dec bc			;6174
	dec b			;6175
	ex de,hl		;6176
	ld b,(hl)		;6177
	ex af,af'		;6178
	adc a,h			;6179
	jr c,$-126		;617a
	add a,a			;617c
	nop			;617d
	jr nz,l6100h		;617e
	ret c			;6180
	sbc a,d			;6181
	ld d,h			;6182
	ret nz			;6183
	ret nz			;6184
	jr nc,l6145h		;6185
	sub a			;6187
	ld d,b			;6188
	inc bc			;6189
	ld hl,01b03h		;618a
l618dh:
	ret c			;618d
	inc bc			;618e
	call nz,00307h		;618f
	inc b			;6192
	ex af,af'		;6193
	djnz $+34		;6194
	add a,h			;6196
	add a,b			;6197
	ld (013b8h),hl		;6198
	ld h,062h		;619b
	ret po			;619d
	ld h,030h		;619e
	xor e			;61a0
	ld d,a			;61a1
l61a2h:
	ccf			;61a2
	sub e			;61a3
	inc sp			;61a4
l61a5h:
	ld a,b			;61a5
	ccf			;61a6
	ld c,004h		;61a7
	inc b			;61a9
	ccf			;61aa
	ret nz			;61ab
l61ach:
	jp c,0509ch		;61ac
	ret nz			;61af
	ret c			;61b0
	djnz l61a5h		;61b1
	ccf			;61b3
	ld a,(bc)		;61b4
	jr $-58			;61b5
	rst 0			;61b7
	inc bc			;61b8
	ld e,0a9h		;61b9
	or e			;61bb
	ccf			;61bc
	sub b			;61bd
	cp (hl)			;61be
	ld (0e060h),hl		;61bf
l61c2h:
	scf			;61c2
	or b			;61c3
	inc c			;61c4
	ld c,l			;61c5
	cp d			;61c6
	jr z,$+32		;61c7
	inc b			;61c9
	ld bc,01b13h		;61ca
	ld e,c			;61cd
l61ceh:
	ld hl,(00c26h)		;61ce
	ld l,088h		;61d1
	ld a,090h		;61d3
	djnz l61d7h		;61d5
l61d7h:
	and b			;61d7
	ret pe			;61d8
	adc a,01ch		;61d9
	ret nc			;61db
	and b			;61dc
	ld h,b			;61dd
	djnz l61c2h		;61de
	ld b,c			;61e0
	exx			;61e1
	jr z,l6206h		;61e2
	dec e			;61e4
	ld h,h			;61e5
	ld h,046h		;61e6
	rlca			;61e8
l61e9h:
	ld h,00ch		;61e9
	ld a,0d4h		;61eb
	jr nz,l6210h		;61ed
	ld e,e			;61ef
	dec de			;61f0
	inc b			;61f1
	inc hl			;61f2
	ret po			;61f3
	ret nz			;61f4
	jr nz,l6207h		;61f5
	sub b			;61f7
	ld e,l			;61f8
	ccf			;61f9
	dec bc			;61fa
	ld e,e			;61fb
	add hl,sp		;61fc
	ld a,(bc)		;61fd
	ld h,e			;61fe
	ld c,(hl)		;61ff
	adc a,(hl)		;6200
	ccf			;6201
	adc a,h			;6202
	call z,03f1eh		;6203
l6206h:
	dec sp			;6206
l6207h:
	jr nz,l6229h		;6207
	ccf			;6209
	jr z,l6289h		;620a
	ld b,h			;620c
	sub (hl)		;620d
	inc hl			;620e
	dec c			;620f
l6210h:
	jr nc,l61a2h		;6210
	sbc a,(hl)		;6212
l6213h:
	ccf			;6213
	ld (bc),a		;6214
	jr l623ah		;6215
	ex (sp),hl		;6217
l6218h:
	ret nz			;6218
	ld e,06ch		;6219
	ld b,b			;621b
	jr nz,l6213h		;621c
	ld b,b			;621e
	ld b,005h		;621f
	dec bc			;6221
	jr c,l6297h		;6222
	ex af,af'		;6224
	rla			;6225
	dec b			;6226
	ex af,af'		;6227
	add hl,bc		;6228
l6229h:
	xor b			;6229
	cp b			;622a
l622bh:
	ld hl,03040h		;622b
	ld (09a54h),hl		;622e
	ret c			;6231
	add a,b			;6232
	jr nz,l61ceh		;6233
	daa			;6235
	add a,b			;6236
	ld e,065h		;6237
	dec b			;6239
l623ah:
	inc b			;623a
	inc bc			;623b
	rlca			;623c
	call nz,0c671h		;623d
	add hl,de		;6240
	ld e,0c4h		;6241
	or 060h			;6243
	and b			;6245
	ret po			;6246
	ld h,d			;6247
	dec hl			;6248
	ld h,0b8h		;6249
	inc e			;624b
	nop			;624c
	rrca			;624d
	ld h,d			;624e
	sub 0c3h		;624f
	ccf			;6251
	ld a,b			;6252
	inc sp			;6253
	ccf			;6254
	ret z			;6255
	djnz $-38		;6256
	ld c,0c0h		;6258
	ld d,b			;625a
	sbc a,h			;625b
	jp c,0a33fh		;625c
	call p,03f21h		;625f
	rst 0			;6262
	call nz,03f18h		;6263
	pop hl			;6266
	ld d,c			;6267
	ld bc,0b00ch		;6268
l626bh:
	ret po			;626b
	ld h,b			;626c
	ld (03fbeh),hl		;626d
	call c,00c00h		;6270
	add a,h			;6273
	jr l62a0h		;6274
	ld e,c			;6276
	dec de			;6277
	ret nz			;6278
	rst 10h			;6279
	jr nz,l6218h		;627a
	ld (hl),b		;627c
	djnz l627fh		;627d
l627fh:
	ld h,b			;627f
	and b			;6280
	ret nc			;6281
	inc e			;6282
	adc a,0e8h		;6283
	and b			;6285
	djnz l62e2h		;6286
	sub b			;6288
l6289h:
	ld b,b			;6289
	ld e,a			;628a
	inc c			;628b
	add a,d			;628c
	jr $+9			;628d
	ld b,(hl)		;628f
	ld h,h			;6290
	dec e			;6291
	inc e			;6292
	or (hl)			;6293
	nop			;6294
	ld e,090h		;6295
l6297h:
	jr nz,l62b9h		;6297
	ret nz			;6299
	ret po			;629a
	inc hl			;629b
	sbc a,d			;629c
	sub c			;629d
	add a,033h		;629e
l62a0h:
	ld e,076h		;62a0
	ld d,b			;62a2
	ld e,e			;62a3
	dec e			;62a4
	ld a,(bc)		;62a5
	add hl,sp		;62a6
	ld e,e			;62a7
	ccf			;62a8
	push bc			;62a9
	sub 03fh		;62aa
	add a,a			;62ac
	ld e,0cch		;62ad
	ccf			;62af
	add a,h			;62b0
	ld sp,00730h		;62b1
l62b4h:
	dec c			;62b4
	rlca			;62b5
	ld b,044h		;62b6
	ld a,l			;62b8
l62b9h:
	ccf			;62b9
	ld d,c			;62ba
	call p,03f90h		;62bb
	ex (sp),hl		;62be
	inc hl			;62bf
	jr l62b4h		;62c0
	ccf			;62c2
	jp 019afh		;62c3
	adc a,a			;62c6
	nop			;62c7
	inc b			;62c8
	jr nz,l626bh		;62c9
	pop de			;62cb
	sbc a,h			;62cc
	ex (sp),hl		;62cd
	jp nz,0282ch		;62ce
	ld (bc),a		;62d1
	xor h			;62d2
	rst 20h			;62d3
	add a,c			;62d4
	add hl,hl		;62d5
	jp po,030c4h		;62d6
	cp l			;62d9
	sbc a,(hl)		;62da
	rrca			;62db
	inc h			;62dc
	dec b			;62dd
	ld bc,053c0h		;62de
	ld e,l			;62e1
l62e2h:
	dec b			;62e2
	ld e,0c1h		;62e3
	ld d,b			;62e5
	sbc a,a			;62e6
	dec d			;62e7
	nop			;62e8
	add a,d			;62e9
	daa			;62ea
	ld b,b			;62eb
	adc a,b			;62ec
	ld (bc),a		;62ed
	dec b			;62ee
	inc c			;62ef
	ld a,c			;62f0
	dec b			;62f1
	ccf			;62f2
	call nz,0189fh		;62f3
	sbc a,e			;62f6
	sbc a,(hl)		;62f7
	ld e,090h		;62f8
	sub 009h		;62fa
	ret z			;62fc
	scf			;62fd
	or b			;62fe
	call m,07970h		;62ff
	ex af,af'		;6302
l6303h:
	cp d			;6303
	ret z			;6304
	ld a,d			;6305
	ld (03a05h),a		;6306
	ld l,(hl)		;6309
	rla			;630a
l630bh:
	ld a,c			;630b
	add a,c			;630c
	ld (0f303h),a		;630d
	rst 0			;6310
	halt			;6311
	ld a,c			;6312
	inc d			;6313
	sub e			;6314
	ld l,a			;6315
	inc d			;6316
	ld l,003h		;6317
	inc d			;6319
	inc (hl)		;631a
	ld (l6d3ah),a		;631b
	dec (hl)		;631e
	ld a,c			;631f
	dec a			;6320
	push af			;6321
	jr nz,$+7		;6322
	ret nz			;6324
	call sub_79eah		;6325
	ld (082cdh),a		;6328
	add hl,hl		;632b
	inc e			;632c
	pop de			;632d
	adc a,c			;632e
	dec a			;632f
	ld (03a8bh),hl		;6330
	sbc a,c			;6333
	jr z,l633ch		;6334
	inc bc			;6336
	ld c,0ffh		;6337
	ld (0a6cdh),hl		;6339
l633ch:
	dec bc			;633c
	and c			;633d
	jp 08c0bh		;633e
	inc bc			;6341
	ld a,(006a0h)		;6342
	and b			;6345
	inc bc			;6346
	inc hl			;6347
	ld a,e			;6348
	jp nz,0cab7h		;6349
	ld b,c			;634c
	or h			;634d
	dec d			;634e
	ld a,b			;634f
	jp nz,03291h		;6350
	inc bc			;6353
	jr l6390h		;6354
	ld a,a			;6356
	dec c			;6357
	jp nz,00d99h		;6358
	ld a,h			;635b
	dec c			;635c
	inc bc			;635d
	inc l			;635e
	ld hl,015fch		;635f
	ld de,0000fh		;6362
	cp 010h			;6365
l6367h:
	ld a,(hl)		;6367
	inc hl			;6368
	inc d			;6369
	out (079h),a		;636a
	ld a,(hl)		;636c
	ld bc,07791h		;636d
	add hl,de		;6370
	djnz l6367h		;6371
	ld hl,01310h		;6373
	inc hl			;6376
	inc b			;6377
	inc de			;6378
	ld a,(bc)		;6379
	ld a,(hl)		;637a
	xor c			;637b
	ld b,c			;637c
	jp c,l79e6h		;637d
	ld (de),a		;6380
	xor d			;6381
	push af			;6382
	ld b,e			;6383
	sbc a,c			;6384
	dec l			;6385
	ld h,a			;6386
	ld l,e			;6387
	ld l,(hl)		;6388
	ld h,a			;6389
	inc a			;638a
	ld h,a			;638b
	ld e,h			;638c
	ld bc,0dc67h		;638d
l6390h:
	dec bc			;6390
	ld h,a			;6391
	ld e,e			;6392
	ld b,067h		;6393
	ld sp,hl		;6395
	xor b			;6396
	inc bc			;6397
	ld a,(de)		;6398
	jp z,l7a2bh		;6399
	cp 08bh			;639c
	inc (hl)		;639e
	inc b			;639f
	cp 045h			;63a0
	dec a			;63a2
	inc b			;63a3
	ld sp,hl		;63a4
	and d			;63a5
	ld b,(hl)		;63a6
	inc b			;63a7
	ret nc			;63a8
	and d			;63a9
	ld c,a			;63aa
	ld a,d			;63ab
	adc a,086h		;63ac
	inc sp			;63ae
	and e			;63af
	add hl,sp		;63b0
	ex af,af'		;63b1
	ret			;63b2
	add a,b			;63b3
	add a,b			;63b4
	ex af,af'		;63b5
	adc a,0e9h		;63b6
	adc a,(hl)		;63b8
	jp z,l7208h		;63b9
	ret			;63bc
	jr c,l63d4h		;63bd
sub_63bfh:
	ld a,e			;63bf
	ex af,af'		;63c0
	pop bc			;63c1
	rst 18h			;63c2
	ld l,d			;63c3
	ex af,af'		;63c4
	ld bc,02501h		;63c5
	sbc a,c			;63c8
	ld hl,0c147h		;63c9
	xor h			;63cc
	and b			;63cd
	ld (hl),b		;63ce
	inc hl			;63cf
	ld (hl),c		;63d0
	cpl			;63d1
	inc hl			;63d2
	ld (hl),d		;63d3
l63d4h:
	ret p			;63d4
	ld (de),a		;63d5
	ex af,af'		;63d6
	ld h,e			;63d7
	jp 0f9ddh		;63d8
	add a,l			;63db
	ld b,011h		;63dc
	or l			;63de
	ld a,e			;63df
	rst 10h			;63e0
	jp pe,0c105h		;63e1
	call p,0ee01h		;63e4
	di			;63e7
	daa			;63e8
	ex (sp),hl		;63e9
	pop bc			;63ea
	daa			;63eb
	inc e			;63ec
	call nz,0c027h		;63ed
	ld b,03eh		;63f0
sub_63f2h:
	inc c			;63f2
	ld (08c8fh),a		;63f3
	ld a,(de)		;63f6
	ld de,l4303h		;63f7
	inc l			;63fa
	inc b			;63fb
	cp l			;63fc
	ld sp,hl		;63fd
	dec b			;63fe
	or l			;63ff
l6400h:
	add a,b			;6400
	ld hl,sub_7e40h		;6401
	ld sp,hl		;6404
	pop af			;6405
	rlca			;6406
	nop			;6407
	ld a,a			;6408
	call 00145h		;6409
	ld hl,081b5h		;640c
	nop			;640f
	ld bc,0c098h		;6410
	otir			;6413
	ei			;6415
	call 0ca00h		;6416
	ld c,c			;6419
	push af			;641a
	cp h			;641b
	ld c,c			;641c
	sbc a,d			;641d
	inc b			;641e
	ld c,c			;641f
	push bc			;6420
	push hl			;6421
	ld c,c			;6422
	push bc			;6423
	ld (hl),c		;6424
	rst 20h			;6425
	ld b,c			;6426
	sbc a,h			;6427
	add hl,sp		;6428
	add hl,sp		;6429
	add a,b			;642a
	add hl,sp		;642b
	cp b			;642c
	ld d,048h		;642d
	add hl,sp		;642f
	ld b,e			;6430
	ld b,(hl)		;6431
	ld c,004h		;6432
	ld a,0ebh		;6434
	ld (08e1bh),a		;6436
	ld c,d			;6439
	jp 04af3h		;643a
	res 4,l			;643d
	ld c,d			;643f
	inc e			;6440
	add a,04ah		;6441
	defb 0ddh,006h,087h ;illegal sequence	;6443
	dec (hl)		;6446
	add a,d			;6447
	ld c,d			;6448
	ld (bc),a		;6449
	ld c,d			;644a
	and (hl)		;644b
	add a,b			;644c
	ld a,l			;644d
	dec sp			;644e
	sbc a,l			;644f
	dec (hl)		;6450
	ld a,(hl)		;6451
	ld c,d			;6452
	ld a,h			;6453
	ld e,c			;6454
	add a,h			;6455
l6456h:
	inc bc			;6456
	ld b,a			;6457
	ld c,000h		;6458
	ret z			;645a
	ld c,054h		;645b
	ld b,h			;645d
	sbc a,e			;645e
	jp p,l6b54h		;645f
l6462h:
	ld b,054h		;6462
	rst 0			;6464
	ld d,h			;6465
	sbc a,d			;6466
	ld b,0e4h		;6467
	inc a			;6469
	and e			;646a
	sbc a,a			;646b
	pop af			;646c
	ld l,0d2h		;646d
	ld b,00fh		;646f
	ld e,019h		;6471
	ld h,07fh		;6473
	nop			;6475
	ld (000ffh),hl		;6476
	cp 0e0h			;6479
	out (0b2h),a		;647b
	jp c,0f894h		;647d
	call m,00080h		;6480
	cp 0feh			;6483
	xor h			;6485
	inc e			;6486
	ret m			;6487
	nop			;6488
	jp z,0f5ech		;6489
	and d			;648c
	ld b,019h		;648d
	dec e			;648f
l6490h:
	nop			;6490
	ld a,(hl)		;6491
	ld l,h			;6492
	ld (hl),e		;6493
	call nz,02188h		;6494
	rra			;6497
	nop			;6498
	or b			;6499
	or l			;649a
	ret po			;649b
	ret p			;649c
	ld d,0f0h		;649d
	ret m			;649f
	ret nc			;64a0
	cp l			;64a1
	ld l,080h		;64a2
	adc a,012h		;64a4
	ld d,d			;64a6
	jp pe,01c16h		;64a7
	rlca			;64aa
	ld b,b			;64ab
	ld c,01ch		;64ac
	inc de			;64ae
	ccf			;64af
	ccf			;64b0
	ccf			;64b1
	ld d,l			;64b2
	ld (hl),b		;64b3
	call nc,0408bh		;64b4
	ld (bc),a		;64b7
	ccf			;64b8
l64b9h:
	adc a,b			;64b9
	ld b,b			;64ba
	ld c,h			;64bb
	jr l6456h		;64bc
	ccf			;64be
	ld (bc),a		;64bf
	cp b			;64c0
	add a,h			;64c1
	inc bc			;64c2
	inc l			;64c3
	rra			;64c4
	ld a,003h		;64c5
	inc (hl)		;64c7
	ld a,c			;64c8
	ld h,d			;64c9
l64cah:
	call nz,08f11h		;64ca
	ld e,030h		;64cd
	or h			;64cf
	ld b,070h		;64d0
	ret p			;64d2
	or b			;64d3
	ld h,b			;64d4
	ret nz			;64d5
l64d6h:
	ccf			;64d6
	nop			;64d7
	or d			;64d8
	or 026h			;64d9
	daa			;64db
	ld e,b			;64dc
	jr nc,l6462h		;64dd
	ld bc,03862h		;64df
	ld a,c			;64e2
l64e3h:
	jr l6516h		;64e3
	ld l,d			;64e5
	ld a,b			;64e6
	ldir			;64e7
	add a,b			;64e9
	ld b,c			;64ea
	ld b,c			;64eb
	nop			;64ec
	ret m			;64ed
	ld (hl),b		;64ee
	ret nz			;64ef
	ld (bc),a		;64f0
	inc c			;64f1
	jr c,l6530h		;64f2
	jr nc,l64fch		;64f4
	jr $+46			;64f6
	inc a			;64f8
	ld a,(bc)		;64f9
	add a,(hl)		;64fa
	or c			;64fb
l64fch:
	jr nz,l64d6h		;64fc
	and a			;64fe
	rst 8			;64ff
	nop			;6500
	ld a,h			;6501
	dec e			;6502
	rlca			;6503
l6504h:
	ld h,06fh		;6504
	adc a,085h		;6506
	jp l4300h		;6508
	ld b,c			;650b
	inc bc			;650c
	ld b,d			;650d
	ld b,d			;650e
	ld h,08eh		;650f
	ld a,000h		;6511
	call m,0c0f0h		;6513
l6516h:
	ret z			;6516
	call pe,0c2e6h		;6517
	add a,(hl)		;651a
	nop			;651b
	add a,h			;651c
	inc b			;651d
	add a,b			;651e
	add a,h			;651f
	add a,h			;6520
	rla			;6521
	inc l			;6522
	djnz l6525h		;6523
l6525h:
	ld b,c			;6525
	ld sp,0391ch		;6526
	jr z,l653ch		;6529
	add hl,hl		;652b
	ld a,b			;652c
	ld d,d			;652d
	or d			;652e
	ld d,e			;652f
l6530h:
	ld (0eff0h),hl		;6530
	pop bc			;6533
	add a,h			;6534
	jr $+114		;6535
	push de			;6537
	ret nz			;6538
	jr nc,l65a3h		;6539
	inc a			;653b
l653ch:
	nop			;653c
	sbc a,d			;653d
	ld c,004h		;653e
	add a,d			;6540
	ld (bc),a		;6541
	ld l,b			;6542
	ld d,e			;6543
	ld l,a			;6544
	inc a			;6545
	ld a,00eh		;6546
	ret z			;6548
	ex af,af'		;6549
	ld d,a			;654a
	ld l,(hl)		;654b
	add a,0c3h		;654c
	ld a,003h		;654e
	ld b,b			;6550
	nop			;6551
l6552h:
	ld b,d			;6552
	ld c,h			;6553
	inc e			;6554
	inc a			;6555
	ld a,b			;6556
	ret po			;6557
	add a,b			;6558
	ret nc			;6559
	nop			;655a
	call p,086cch		;655b
	add a,d			;655e
	inc b			;655f
	add a,h			;6560
l6561h:
	add a,b			;6561
	ld (bc),a		;6562
	sbc a,e			;6563
	add a,b			;6564
	sub h			;6565
	ld d,e			;6566
	adc a,a			;6567
	inc de			;6568
	nop			;6569
	pop bc			;656a
	ex af,af'		;656b
	ret nz			;656c
	add hl,de		;656d
	add a,d			;656e
	adc a,(hl)		;656f
	ld l,b			;6570
	ld (l4200h),hl		;6571
l6574h:
	ld (bc),a		;6574
	adc a,e			;6575
	add a,a			;6576
	sbc a,e			;6577
	ld c,h			;6578
	call m,080b1h		;6579
	add a,l			;657c
	adc a,b			;657d
	nop			;657e
l657fh:
	ld (hl),044h		;657f
	jp 0d420h		;6581
	or e			;6584
	ld l,e			;6585
	nop			;6586
	call nc,sub_405eh	;6587
	inc e			;658a
	ld c,03dh		;658b
	nop			;658d
	ld b,b			;658e
	ld d,e			;658f
	add a,d			;6590
	nop			;6591
	ld b,d			;6592
	ld a,059h		;6593
	djnz l6597h		;6595
l6597h:
	inc hl			;6597
	xor c			;6598
	add a,c			;6599
	nop			;659a
	add a,d			;659b
	ld a,0bbh		;659c
	rrca			;659e
	jr nz,l6561h		;659f
	ld h,b			;65a1
	ld c,h			;65a2
l65a3h:
	dec a			;65a3
	ld (bc),a		;65a4
sub_65a5h:
	ld a,(00412h)		;65a5
	dec e			;65a8
	add hl,bc		;65a9
	inc bc			;65aa
	ld h,l			;65ab
	add a,0fbh		;65ac
	pop hl			;65ae
	rra			;65af
	ld (hl),b		;65b0
	ld c,b			;65b1
	ret nz			;65b2
	ld l,(hl)		;65b3
	and b			;65b4
	ret nz			;65b5
	ld (0c001h),hl		;65b6
	sub b			;65b9
	inc h			;65ba
	inc (hl)		;65bb
	ld a,(hl)		;65bc
	cp h			;65bd
	ld h,01fh		;65be
	ld a,(bc)		;65c0
	ret nc			;65c1
	jp p,0cc54h		;65c2
	sub e			;65c5
	ld e,e			;65c6
	inc b			;65c7
	dec de			;65c8
	adc a,a			;65c9
	sbc a,c			;65ca
	sub l			;65cb
	ret c			;65cc
	ld c,012h		;65cd
	inc bc			;65cf
	xor 082h		;65d0
	dec d			;65d2
	ld b,h			;65d3
	ld a,d			;65d4
	adc a,l			;65d5
	nop			;65d6
	cp h			;65d7
	ld e,h			;65d8
	ld c,b			;65d9
	jr nz,$-70		;65da
	ex af,af'		;65dc
	sub b			;65dd
	ret nz			;65de
	ld b,b			;65df
	ld b,b			;65e0
	add a,a			;65e1
	ret p			;65e2
	push bc			;65e3
	ld (hl),a		;65e4
	jr nz,l6602h		;65e5
	xor a			;65e7
	xor c			;65e8
	ld (00982h),hl		;65e9
	inc l			;65ec
	ld a,(hl)		;65ed
	sbc a,c			;65ee
	ld h,e			;65ef
	ret m			;65f0
	ld d,b			;65f1
	sub e			;65f2
	adc a,(hl)		;65f3
	ld c,d			;65f4
	sbc a,e			;65f5
	ld b,h			;65f6
	adc a,e			;65f7
	or c			;65f8
	dec e			;65f9
	ld (de),a		;65fa
	ld c,07eh		;65fb
	call po,08040h		;65fd
	ld (hl),l		;6600
	cp b			;6601
l6602h:
	jr nz,$+74		;6602
	ld e,h			;6604
	cp h			;6605
sub_6606h:
	ld (0066ch),a		;6606
	dec de			;6609
	ld h,a			;660a
	ld b,h			;660b
	and e			;660c
sub_660dh:
	ld e,l			;660d
	sbc a,09dh		;660e
	sbc a,b			;6610
	ld (hl),b		;6611
	daa			;6612
	ld h,b			;6613
	ld d,b			;6614
l6615h:
	pop hl			;6615
sub_6616h:
	ex af,af'		;6616
	ld a,(hl)		;6617
	inc l			;6618
	or l			;6619
	cp b			;661a
	ld a,(hl)		;661b
	ld b,b			;661c
	ld (bc),a		;661d
	ld d,l			;661e
	dec e			;661f
	inc b			;6620
	ld (de),a		;6621
	ld a,(0263dh)		;6622
	ld c,h			;6625
	ld h,b			;6626
	inc c			;6627
	ld (0f0aah),hl		;6628
	ret nz			;662b
	inc a			;662c
	ld c,b			;662d
	ld (hl),b		;662e
	ld a,(hl)		;662f
	ld (hl),e		;6630
	rrca			;6631
	cp a			;6632
	inc b			;6633
	rra			;6634
	push bc			;6635
	ld b,h			;6636
	ld a,(hl)		;6637
l6638h:
	inc (hl)		;6638
	sub l			;6639
	ld e,c			;663a
	dec bc			;663b
	add a,a			;663c
	inc d			;663d
	inc hl			;663e
	inc b			;663f
	rst 10h			;6640
	sub 000h		;6641
	or b			;6643
	ld a,a			;6644
	ccf			;6645
	rlca			;6646
	nop			;6647
	add hl,bc		;6648
	nop			;6649
	add hl,bc		;664a
	jr $+35			;664b
	add a,a			;664d
	ld e,01dh		;664e
	ld d,c			;6650
	inc (hl)		;6651
	ccf			;6652
	push af			;6653
	and b			;6654
	ret p			;6655
	call m,0ffe6h		;6656
	ld a,(hl)		;6659
	dec h			;665a
	ret p			;665b
	ld h,b			;665c
	ret po			;665d
	sub b			;665e
	ret p			;665f
	ld a,a			;6660
	rrca			;6661
	add hl,de		;6662
	nop			;6663
	ld b,00fh		;6664
	rra			;6666
	rlca			;6667
	ld e,078h		;6668
	ld bc,03912h		;666a
	jr z,l666fh		;666d
l666fh:
	rra			;666f
	dec h			;6670
	adc a,h			;6671
	jr $-27			;6672
	ld a,(00840h)		;6674
	sub b			;6677
	ld a,(hl)		;6678
	cpl			;6679
	inc de			;667a
	sbc a,d			;667b
	add a,b			;667c
	ld c,018h		;667d
	ld c,00ch		;667f
	inc e			;6681
	add hl,de		;6682
	add hl,sp		;6683
	inc h			;6684
	ld (hl),b		;6685
	rra			;6686
	inc bc			;6687
	call p,sub_7f3eh	;6688
	inc e			;668b
	ret pe			;668c
	jr nz,l66ceh		;668d
sub_668fh:
	and b			;668f
	ld e,013h		;6690
	inc c			;6692
	ld c,005h		;6693
	rlca			;6695
	cp 027h			;6696
	ld bc,0850fh		;6698
	ld c,038h		;669b
	ccf			;669d
	sub c			;669e
	ret z			;669f
	add a,(hl)		;66a0
	dec e			;66a1
	and d			;66a2
	djnz l6638h		;66a3
	cp b			;66a5
	ld a,(hl)		;66a6
	ld a,(hl)		;66a7
	adc a,(hl)		;66a8
	ld a,(hl)		;66a9
	ld de,0f908h		;66aa
	djnz l66c7h		;66ad
	rra			;66af
	ld c,01ch		;66b0
	ld a,(de)		;66b2
	inc hl			;66b3
	jr z,l6716h		;66b4
	cp 014h			;66b6
	ret po			;66b8
	jp l7c22h		;66b9
	ccf			;66bc
	ret m			;66bd
	and b			;66be
l66bfh:
	ret nz			;66bf
	jr c,l66eah		;66c0
	ld (hl),b		;66c2
	ld a,(hl)		;66c3
	ld a,(hl)		;66c4
	ld a,00fh		;66c5
l66c7h:
	rla			;66c7
	sbc a,a			;66c8
	ld b,c			;66c9
	inc c			;66ca
	sbc a,h			;66cb
	ld (de),a		;66cc
	inc d			;66cd
l66ceh:
	jr nc,$-96		;66ce
	or l			;66d0
	cp (hl)			;66d1
	ld h,098h		;66d2
	jp nz,0e223h		;66d4
	nop			;66d7
	rst 18h			;66d8
	set 6,c			;66d9
	adc a,d			;66db
	ld bc,09cb4h		;66dc
	ld sp,hl		;66df
	sub e			;66e0
	ld a,(0de7dh)		;66e1
	or 092h			;66e4
	inc bc			;66e6
	ret z			;66e7
	ld (hl),l		;66e8
	ei			;66e9
l66eah:
	exx			;66ea
	adc a,097h		;66eb
sub_66edh:
	ld bc,035f3h		;66ed
	ld sp,hl		;66f0
	call m,0092dh		;66f1
	and l			;66f4
	inc a			;66f5
	jr nz,$+126		;66f6
	or b			;66f8
	and h			;66f9
	sbc a,d			;66fa
	cp h			;66fb
	ld (bc),a		;66fc
	ld e,a			;66fd
	jr z,l66bfh		;66fe
	ld e,006h		;6700
	inc c			;6702
	ex af,af'		;6703
	inc a			;6704
	ld c,a			;6705
	ld b,b			;6706
	sbc a,e			;6707
	ld e,a			;6708
	ld h,c			;6709
	ld h,003h		;670a
	or e			;670c
	push de			;670d
	ccf			;670e
	adc a,l			;670f
	inc hl			;6710
	inc b			;6711
	ld a,l			;6712
	cp d			;6713
	exx			;6714
	ld e,c			;6715
l6716h:
	push hl			;6716
	ld a,09eh		;6717
	ret pe			;6719
	ld e,00ch		;671a
	nop			;671c
	add hl,de		;671d
	rra			;671e
	inc e			;671f
	djnz $+19		;6720
	ld h,b			;6722
	defb 0ddh,00bh,0ceh ;illegal sequence	;6723
	ld e,c			;6726
	jr z,$-74		;6727
	rst 38h			;6729
	call nz,0c1c8h		;672a
	ld a,01fh		;672d
	rrca			;672f
	rlca			;6730
	add a,e			;6731
	djnz $+81		;6732
	nop			;6734
	rrca			;6735
	ld b,l			;6736
	ld (hl),b		;6737
	ret pe			;6738
	sbc a,e			;6739
	inc e			;673a
	ld b,h			;673b
l673ch:
	jp po,0b8f8h		;673c
	jp po,006cch		;673f
	nop			;6742
	ret nz			;6743
	cp 0f0h			;6744
	call po,09f00h		;6746
	ld b,a			;6749
	ld (hl),e		;674a
	inc h			;674b
	ld a,c			;674c
	inc a			;674d
	and c			;674e
	or c			;674f
	cp e			;6750
	jr nc,$-115		;6751
	ld (0870fh),hl		;6753
	ld l,h			;6756
	dec (hl)		;6757
	sub c			;6758
	sbc a,a			;6759
	ld a,b			;675a
	jp c,08e70h		;675b
	add a,(hl)		;675e
	ld (00c00h),a		;675f
	ld a,0c0h		;6762
	adc a,09ch		;6764
	nop			;6766
	jr nc,$-6		;6767
sub_6769h:
	in a,(03eh)		;6769
l676bh:
	add a,d			;676b
	ld c,l			;676c
	ccf			;676d
	jp nz,09ecch		;676e
	jr c,$-48		;6771
	ld (l403fh),hl		;6773
	ret nz			;6776
	adc a,b			;6777
	nop			;6778
	adc a,047h		;6779
	ld (hl),c		;677b
	inc hl			;677c
	jr c,l678dh		;677d
	add a,h			;677f
	dec de			;6780
	ld bc,l5f3fh		;6781
	cp b			;6784
	ret po			;6785
	ld hl,033e0h		;6786
	ld a,h			;6789
	adc a,h			;678a
	add a,03fh		;678b
l678dh:
	and e			;678d
	cp (hl)			;678e
	ld a,h			;678f
	rrca			;6790
	nop			;6791
	ld (hl),b		;6792
	jp nz,l40c8h		;6793
	sbc a,e			;6796
l6797h:
	jp pe,l76d6h		;6797
	add a,b			;679a
	ld c,d			;679b
	xor b			;679c
	inc a			;679d
	cp b			;679e
	inc d			;679f
	jr l67aeh		;67a0
	ld d,0d9h		;67a2
	inc d			;67a4
	ld e,01ch		;67a5
	nop			;67a7
	cp a			;67a8
	jp nc,09dbdh		;67a9
	rra			;67ac
	add hl,bc		;67ad
l67aeh:
	call m,sub_7078h	;67ae
	add hl,de		;67b1
	ld h,b			;67b2
	add a,d			;67b3
l67b4h:
	jr nc,$+50		;67b4
	sub b			;67b6
	ret c			;67b7
	dec l			;67b8
	ld h,b			;67b9
	jr nc,l673ch		;67ba
	dec de			;67bc
	rra			;67bd
	nop			;67be
	pop bc			;67bf
	sub l			;67c0
	sbc a,a			;67c1
	ld de,l57a0h		;67c2
	ret nz			;67c5
	inc de			;67c6
	jp c,l4065h		;67c7
	ret po			;67ca
	and (hl)		;67cb
	ccf			;67cc
	inc bc			;67cd
	jr c,l67e8h		;67ce
	adc a,h			;67d0
	adc a,h			;67d1
	ld b,h			;67d2
	rst 30h			;67d3
	inc b			;67d4
	inc a			;67d5
	nop			;67d6
	inc e			;67d7
	rla			;67d8
	ld bc,00e10h		;67d9
	ld h,d			;67dc
l67ddh:
	ld b,c			;67dd
	dec d			;67de
	inc c			;67df
	ld b,b			;67e0
	jp c,08244h		;67e1
	ld h,e			;67e4
	djnz l676bh		;67e5
	ld c,e			;67e7
l67e8h:
	ld b,l			;67e8
	xor b			;67e9
	add hl,bc		;67ea
l67ebh:
	ld sp,hl		;67eb
	add a,h			;67ec
	inc bc			;67ed
	dec a			;67ee
	ld a,h			;67ef
	ld e,a			;67f0
	ld (bc),a		;67f1
	ld d,b			;67f2
	ld (de),a		;67f3
	jp nz,l4a7ch		;67f4
	dec a			;67f7
	xor c			;67f8
	ld b,h			;67f9
	cp l			;67fa
	jr c,l6821h		;67fb
	sub b			;67fd
	ret po			;67fe
	sla h			;67ff
l6801h:
	jr z,$+42		;6801
	cp a			;6803
	ld (de),a		;6804
	ret po			;6805
	sub b			;6806
	jr c,l67ebh		;6807
	sub c			;6809
	rst 30h			;680a
	nop			;680b
	ld b,c			;680c
	sub d			;680d
	ex af,af'		;680e
	inc h			;680f
	ld l,d			;6810
	ld l,d			;6811
sub_6812h:
	inc h			;6812
	dec b			;6813
	ex af,af'		;6814
l6815h:
	sub d			;6815
	ld b,c			;6816
	jr nc,l681ch		;6817
	sub b			;6819
	inc hl			;681a
	add a,(hl)		;681b
l681ch:
	rst 8			;681c
	ret p			;681d
	adc a,h			;681e
	cp h			;681f
	ccf			;6820
l6821h:
	cp l			;6821
	adc a,h			;6822
	sbc a,009h		;6823
	add a,(hl)		;6825
	ld (hl),b		;6826
	sbc a,l			;6827
	ret nc			;6828
	dec c			;6829
	ld a,044h		;682a
	ld (bc),a		;682c
	sub b			;682d
	rst 38h			;682e
	add a,h			;682f
	ld a,(hl)		;6830
	ld e,c			;6831
	inc a			;6832
	adc a,b			;6833
	ex de,hl		;6834
	ld e,h			;6835
	ld (bc),a		;6836
	add a,b			;6837
	ret pe			;6838
	djnz $+14		;6839
	jr z,l6801h		;683b
	ld c,d			;683d
	push hl			;683e
	inc de			;683f
	sub b			;6840
	sub c			;6841
	ret nz			;6842
	ld bc,04831h		;6843
sub_6846h:
	ld b,084h		;6846
l6848h:
	xor d			;6848
	ld l,d			;6849
	nop			;684a
	ld a,b			;684b
	add a,a			;684c
l684dh:
	ex af,af'		;684d
	dec a			;684e
	add a,c			;684f
	ex (sp),hl		;6850
	ld (hl),002h		;6851
	djnz l67ddh		;6853
	cp l			;6855
	cp l			;6856
	ld a,(de)		;6857
	inc de			;6858
	xor (hl)		;6859
	ld d,b			;685a
	or b			;685b
l685ch:
	defb 0ddh,0c0h,001h ;illegal sequence	;685c
	inc a			;685f
	ld a,(hl)		;6860
	ld h,b			;6861
	dec b			;6862
	rlca			;6863
	ld b,h			;6864
	ld a,00dh		;6865
	ret c			;6867
	ccf			;6868
	inc sp			;6869
	sub b			;686a
	ret z			;686b
	nop			;686c
	ret p			;686d
	inc b			;686e
	sub h			;686f
	sub h			;6870
	add a,h			;6871
	djnz l685ch		;6872
	add a,b			;6874
	add a,0f2h		;6875
	ld b,(hl)		;6877
	dec a			;6878
	ld b,d			;6879
	add a,d			;687a
	add a,080h		;687b
	ld l,d			;687d
	xor d			;687e
	add a,h			;687f
	ld c,b			;6880
	ld sp,03fe0h		;6881
	or b			;6884
	ld d,b			;6885
	ld c,c			;6886
	xor (hl)		;6887
	inc h			;6888
	cp l			;6889
	ld a,a			;688a
	djnz l6815h		;688b
	dec de			;688d
	nop			;688e
	ld de,00c19h		;688f
	rst 30h			;6892
l6893h:
	and b			;6893
	ld (bc),a		;6894
	dec sp			;6895
	ld (hl),a		;6896
	inc e			;6897
	cpl			;6898
l6899h:
	inc de			;6899
	daa			;689a
	ld sp,09e0ch		;689b
	add a,b			;689e
	and b			;689f
	ld l,b			;68a0
	inc (hl)		;68a1
l68a2h:
	and h			;68a2
	djnz l684dh		;68a3
	rst 0			;68a5
	or b			;68a6
	ld a,h			;68a7
	cp d			;68a8
	push hl			;68a9
	ld b,a			;68aa
	sbc a,b			;68ab
	jp pe,00a15h		;68ac
	ret nz			;68af
	ld e,001h		;68b0
	ld e,020h		;68b2
	ld (hl),h		;68b4
	inc c			;68b5
	inc e			;68b6
	ld c,037h		;68b7
	add hl,hl		;68b9
	ret pe			;68ba
	inc l			;68bb
	rla			;68bc
	call c,0b200h		;68bd
	sub b			;68c0
	xor b			;68c1
	ld (hl),b		;68c2
	ret m			;68c3
	ld c,h			;68c4
	adc a,e			;68c5
	or e			;68c6
	rst 8			;68c7
l68c8h:
	ld l,d			;68c8
	adc a,b			;68c9
	dec c			;68ca
	ret pe			;68cb
	ld (hl),b		;68cc
	and l			;68cd
	ld sp,00074h		;68ce
	ccf			;68d1
	and l			;68d2
	scf			;68d3
	ld de,044a6h		;68d4
	ld e,00fh		;68d7
	sub c			;68d9
	sub d			;68da
	di			;68db
	inc e			;68dc
	jr nc,l691fh		;68dd
	ccf			;68df
	ret z			;68e0
	add a,h			;68e1
	sub b			;68e2
	ld c,l			;68e3
	ld c,h			;68e4
	jp m,01396h		;68e5
	rlca			;68e8
	ccf			;68e9
	add a,d			;68ea
	daa			;68eb
	add hl,de		;68ec
	and a			;68ed
	xor b			;68ee
	ld l,(hl)		;68ef
	ld b,00eh		;68f0
	ld (hl),01dh		;68f2
	ex af,af'		;68f4
	cp (hl)			;68f5
	jp (hl)			;68f6
	ccf			;68f7
	jr nz,l6899h		;68f8
	ld hl,01605h		;68fa
	add a,(hl)		;68fd
	add a,d			;68fe
	ex af,af'		;68ff
	jr c,l6893h		;6900
	add a,l			;6902
l6903h:
	ccf			;6903
	add a,a			;6904
	ld (0d620h),a		;6905
	add a,d			;6908
	sbc a,b			;6909
	jr nc,$-102		;690a
	call nc,0dc40h		;690c
	dec b			;690f
	xor 038h		;6910
	call p,08ce4h		;6912
	xor a			;6915
sub_6916h:
	and e			;6916
	dec c			;6917
	sbc a,h			;6918
	jr nz,l6968h		;6919
	dec h			;691b
	dec d			;691c
	ld c,030h		;691d
l691fh:
	rra			;691f
	ld (029d5h),a		;6920
	inc hl			;6923
	ld de,009fah		;6924
	xor b			;6927
	ld d,b			;6928
	ret po			;6929
	ret nc			;692a
	ld a,b			;692b
	inc b			;692c
	ld l,038h		;692d
	add hl,de		;692f
	ld (hl),b		;6930
	call pe,0a894h		;6931
	inc d			;6934
	ld a,b			;6935
	ret p			;6936
	pop bc			;6937
	inc h			;6938
	ld a,b			;6939
	xor a			;693a
	ld (hl),e		;693b
	ld (bc),a		;693c
	ccf			;693d
	ret m			;693e
	jr nz,l6958h		;693f
	ld c,070h		;6941
	ld d,(hl)		;6943
	jr nz,l68c8h		;6944
	ret pe			;6946
	ccf			;6947
	call pe,06088h		;6948
	ret nz			;694b
	ld c,(hl)		;694c
	ld h,b			;694d
	ld (hl),b		;694e
	cp b			;694f
	jr c,$+60		;6950
	dec c			;6952
	ld b,03fh		;6953
	rla			;6955
	inc b			;6956
	add hl,bc		;6957
l6958h:
	ld (044b8h),a		;6958
	sbc a,h			;695b
	ret po			;695c
	ret po			;695d
	ccf			;695e
	call po,sub_5a98h	;695f
	sub b			;6962
	add a,e			;6963
	call p,00f81h		;6964
	push bc			;6967
l6968h:
	call c,0000bh		;6968
	ld (hl),c		;696b
l696ch:
	dec h			;696c
	ld a,h			;696d
	nop			;696e
	ex (sp),hl		;696f
	ld hl,0fc3ch		;6970
	rst 38h			;6973
	sbc a,d			;6974
	sub c			;6975
	ret po			;6976
	adc a,b			;6977
	add a,d			;6978
	pop bc			;6979
	adc a,(hl)		;697a
	jp l6dfdh		;697b
	and e			;697e
	inc bc			;697f
	sub b			;6980
	nop			;6981
	ld bc,08effh		;6982
	jp c,06a2fh		;6985
	ld e,l			;6988
	ld a,h			;6989
	call po,0f291h		;698a
	ret nz			;698d
	djnz l6995h		;698e
	rra			;6990
	ld (hl),a		;6991
	rst 0			;6992
	rst 10h			;6993
	ld (hl),c		;6994
l6995h:
	rst 38h			;6995
	cp b			;6996
	ld h,l			;6997
	ld b,b			;6998
	ld b,c			;6999
	ld b,b			;699a
	ld b,058h		;699b
	ret m			;699d
	ld a,(hl)		;699e
	rra			;699f
	xor b			;69a0
	ex (sp),hl		;69a1
	jr c,l69e4h		;69a2
	inc de			;69a4
	rst 38h			;69a5
	cp l			;69a6
	rlca			;69a7
	inc e			;69a8
	inc hl			;69a9
	adc a,000h		;69aa
	ld b,b			;69ac
	adc a,e			;69ad
	jr nz,l69f0h		;69ae
	nop			;69b0
	and a			;69b1
	rst 38h			;69b2
	ld d,l			;69b3
	rra			;69b4
	inc b			;69b5
	inc c			;69b6
	dec b			;69b7
	inc c			;69b8
	ld b,l			;69b9
	jp 083e0h		;69ba
	ex de,hl		;69bd
	ld b,b			;69be
	scf			;69bf
	ex (sp),hl		;69c0
	call c,0c331h		;69c1
	ld e,(hl)		;69c4
	add a,b			;69c5
	cp e			;69c6
	ld l,l			;69c7
	dec sp			;69c8
	ld (bc),a		;69c9
	ret m			;69ca
	ld d,e			;69cb
	push hl			;69cc
	add a,d			;69cd
	ret nc			;69ce
	ld e,a			;69cf
	ld a,(bc)		;69d0
	dec d			;69d1
	ret nz			;69d2
	ret m			;69d3
	ret po			;69d4
	add a,c			;69d5
	adc a,d			;69d6
	ret po			;69d7
	cp 08ch			;69d8
	ret nz			;69da
	rst 38h			;69db
	rst 20h			;69dc
	jr nz,l69dfh		;69dd
l69dfh:
	jr c,l69e3h		;69df
	rra			;69e1
	ld a,a			;69e2
l69e3h:
	ld c,e			;69e3
l69e4h:
	call m,0e40bh		;69e4
	ret nc			;69e7
	dec bc			;69e8
	rst 38h			;69e9
	ld a,(de)		;69ea
	jp z,08301h		;69eb
	jr nz,$+22		;69ee
l69f0h:
	inc a			;69f0
	ret m			;69f1
	and c			;69f2
	inc d			;69f3
	ret			;69f4
	ld d,e			;69f5
	and (hl)		;69f6
	sub h			;69f7
	ld sp,hl		;69f8
	ld d,(hl)		;69f9
	and e			;69fa
	ld c,e			;69fb
	rlca			;69fc
	scf			;69fd
	jp z,0ee30h		;69fe
	ld b,h			;6a01
	ret z			;6a02
	ld e,08fh		;6a03
	ret m			;6a05
l6a06h:
	sub a			;6a06
	pop bc			;6a07
	ld a,a			;6a08
	ld e,h			;6a09
	cpl			;6a0a
	dec d			;6a0b
	ret			;6a0c
	inc h			;6a0d
	ret p			;6a0e
	ld c,b			;6a0f
	jr nz,l6a67h		;6a10
	ld a,(hl)		;6a12
	ret m			;6a13
	sub h			;6a14
	add a,e			;6a15
	adc a,d			;6a16
	and 08dh		;6a17
	call z,092b5h		;6a19
	rrca			;6a1c
	ld e,l			;6a1d
	ccf			;6a1e
	ld e,(hl)		;6a1f
	cp b			;6a20
	sbc a,d			;6a21
	ccf			;6a22
	adc a,a			;6a23
	call nz,sub_5597h	;6a24
	ld a,(bc)		;6a27
	ld e,b			;6a28
	ld e,a			;6a29
	sbc a,0a4h		;6a2a
	ld a,b			;6a2c
	ret p			;6a2d
	jp z,0ce06h		;6a2e
	ld h,d			;6a31
	add a,b			;6a32
	ld (050b9h),a		;6a33
	inc bc			;6a36
	rst 38h			;6a37
	ld l,e			;6a38
	ret po			;6a39
	ld a,a			;6a3a
	rla			;6a3b
	xor a			;6a3c
	add hl,hl		;6a3d
	or l			;6a3e
	xor c			;6a3f
l6a40h:
	ld hl,0fc20h		;6a40
	rst 30h			;6a43
	ld h,e			;6a44
	sbc a,b			;6a45
	adc a,a			;6a46
	call po,01ffbh		;6a47
	add a,a			;6a4a
	ld l,h			;6a4b
	ccf			;6a4c
	ld a,a			;6a4d
	rrca			;6a4e
	rst 38h			;6a4f
	jr nc,$+33		;6a50
	add a,b			;6a52
	ld a,a			;6a53
	ex af,af'		;6a54
	adc a,a			;6a55
	ld sp,08cfeh		;6a56
	sbc a,b			;6a59
	add a,b			;6a5a
	ld h,b			;6a5b
	adc a,0b8h		;6a5c
	ld h,a			;6a5e
	di			;6a5f
	ret z			;6a60
	sub d			;6a61
	dec a			;6a62
	ld bc,056a4h		;6a63
	ld l,h			;6a66
l6a67h:
	cp e			;6a67
	ld b,h			;6a68
	push bc			;6a69
	sbc a,(hl)		;6a6a
	ld h,c			;6a6b
	xor b			;6a6c
	ret po			;6a6d
	or b			;6a6e
	ld b,c			;6a6f
	ld c,0e4h		;6a70
	ld e,e			;6a72
	inc a			;6a73
	xor c			;6a74
	sub e			;6a75
	ld e,0e1h		;6a76
l6a78h:
	nop			;6a78
	ld d,b			;6a79
	inc e			;6a7a
	ld c,(hl)		;6a7b
	jp m,00698h		;6a7c
	ld h,e			;6a7f
	inc bc			;6a80
	ld (bc),a		;6a81
	inc c			;6a82
	add a,b			;6a83
	ld h,d			;6a84
	djnz l6abbh		;6a85
	defb 0edh ;next byte illegal after ed	;6a87
	ld l,l			;6a88
	out (067h),a		;6a89
	nop			;6a8b
	call z,00b0eh		;6a8c
	jr nc,l6a9ah		;6a8f
	inc c			;6a91
	ld (bc),a		;6a92
	inc bc			;6a93
	ld de,0b6a0h		;6a94
	ex af,af'		;6a97
	ld c,b			;6a98
	push de			;6a99
l6a9ah:
	defb 0ddh,094h ;sub ixh	;6a9a
	sbc a,l			;6a9c
	adc a,002h		;6a9d
	sbc a,d			;6a9f
	pop af			;6aa0
	ld d,d			;6aa1
	ld a,(bc)		;6aa2
	defb 0ddh,055h ;ld d,ixl	;6aa3
	and c			;6aa5
	pop hl			;6aa6
	jr z,l6aafh		;6aa7
	sub d			;6aa9
	exx			;6aaa
	ld b,e			;6aab
	call 0bd94h		;6aac
l6aafh:
	cp a			;6aaf
	adc a,003h		;6ab0
	ccf			;6ab2
	add a,h			;6ab3
	dec b			;6ab4
	dec b			;6ab5
	rlca			;6ab6
	add a,b			;6ab7
	push hl			;6ab8
	ex af,af'		;6ab9
	inc h			;6aba
l6abbh:
	ld a,(hl)		;6abb
	add a,(hl)		;6abc
	jr c,l6abfh		;6abd
l6abfh:
	inc e			;6abf
	and e			;6ac0
	add a,b			;6ac1
	inc bc			;6ac2
	ld a,(0003fh)		;6ac3
	ld a,(0c145h)		;6ac6
	or a			;6ac9
	ret nz			;6aca
	ld a,(08500h)		;6acb
l6aceh:
	jr z,l6b0dh		;6ace
	ld (00703h),a		;6ad0
	ld bc,0c085h		;6ad3
	ld b,021h		;6ad6
	ld (bc),a		;6ad8
	add a,l			;6ad9
	ld de,03224h		;6ada
	add a,l			;6add
	rst 0			;6ade
	nop			;6adf
l6ae0h:
	call 084d5h		;6ae0
	inc hl			;6ae3
	inc de			;6ae4
	djnz l6ae0h		;6ae5
	ld hl,03248h		;6ae7
	ld c,062h		;6aea
	ld c,010h		;6aec
	ld a,(hl)		;6aee
	ld h,b			;6aef
	add a,a			;6af0
	nop			;6af1
	inc hl			;6af2
	inc hl			;6af3
	ld c,(hl)		;6af4
	djnz l6a78h		;6af5
	dec hl			;6af7
	ld c,(hl)		;6af8
	dec b			;6af9
	ld (de),a		;6afa
	inc de			;6afb
	ld a,c			;6afc
	add a,h			;6afd
	ld (bc),a		;6afe
	djnz $-18		;6aff
	ld hl,0cd18h		;6b01
	dec b			;6b04
	jp (hl)			;6b05
	ld (bc),a		;6b06
	ld a,(0c398h)		;6b07
	ld a,003h		;6b0a
	inc c			;6b0c
l6b0dh:
	ret nz			;6b0d
	ld a,00ah		;6b0e
	dec b			;6b10
	ld de,0013eh		;6b11
	ld (00652h),a		;6b14
	ld d,b			;6b17
	dec (hl)		;6b18
	add a,b			;6b19
	xor a			;6b1a
l6b1bh:
	inc hl			;6b1b
	djnz l6b1bh		;6b1c
	ret			;6b1e
	inc bc			;6b1f
	ld a,(de)		;6b20
	cp (hl)			;6b21
	ret z			;6b22
	inc a			;6b23
	ld (de),a		;6b24
	ret			;6b25
	ld h,b			;6b26
	jp c,00f1bh		;6b27
sub_6b2ah:
	ld a,(hl)		;6b2a
	dec a			;6b2b
	cp 0ffh			;6b2c
	sub e			;6b2e
	ex af,af'		;6b2f
	xor a			;6b30
	ld (hl),a		;6b31
	ld (0cdf5h),hl		;6b32
	jr c,l6aceh		;6b35
	add a,h			;6b37
	jr c,l6b80h		;6b38
	ret			;6b3a
	and l			;6b3b
	ret			;6b3c
	adc a,e			;6b3d
	jp pe,001b2h		;6b3e
	adc a,0d2h		;6b41
	ld a,(bc)		;6b43
l6b44h:
	jp z,00bb0h		;6b44
	adc a,c			;6b47
	or b			;6b48
	dec b			;6b49
	sbc a,h			;6b4a
	add hl,hl		;6b4b
sub_6b4ch:
	ld bc,0db45h		;6b4c
	add a,l			;6b4f
	call m,0e7e6h		;6b50
	ld h,(hl)		;6b53
l6b54h:
	and a			;6b54
	ld d,l			;6b55
	ld (de),a		;6b56
	ld d,007h		;6b57
	ret nc			;6b59
	inc de			;6b5a
	nop			;6b5b
	nop			;6b5c
	ld sp,hl		;6b5d
	ld (bc),a		;6b5e
	ld a,(08cb0h)		;6b5f
	ld b,b			;6b62
	ret z			;6b63
	call 0056ch		;6b64
	jp nz,03c07h		;6b67
	ld (00103h),a		;6b6a
	cp 002h			;6b6d
	jp z,085adh		;6b6f
	cp 004h			;6b72
	or l			;6b74
	ld (de),a		;6b75
	or c			;6b76
	ld d,004h		;6b77
	ld hl,085b7h		;6b79
	jp z,0b9a6h		;6b7c
	ld b,b			;6b7f
l6b80h:
	rst 30h			;6b80
	add a,l			;6b81
	ld bc,0209ah		;6b82
	inc c			;6b85
	xor a			;6b86
	jp 002deh		;6b87
	ld b,022h		;6b8a
	ld hl,0e2d7h		;6b8c
	in a,(009h)		;6b8f
	add a,b			;6b91
	add a,b			;6b92
	ld (bc),a		;6b93
	ld h,b			;6b94
	dec b			;6b95
	ld (hl),h		;6b96
	rlca			;6b97
	ld (00200h),hl		;6b98
	ld h,l			;6b9b
	ld b,054h		;6b9c
	dec b			;6b9e
	ld b,e			;6b9f
	inc b			;6ba0
	ld de,0afc4h		;6ba1
	nop			;6ba4
	rla			;6ba5
	ld bc,00777h		;6ba6
	inc sp			;6ba9
	inc bc			;6baa
	ld b,l			;6bab
	inc b			;6bac
	and e			;6bad
	push af			;6bae
	pop hl			;6baf
	inc l			;6bb0
	rra			;6bb1
	nop			;6bb2
	inc bc			;6bb3
	ld h,b			;6bb4
	ld b,075h		;6bb5
	rlca			;6bb7
	ld h,d			;6bb8
	ld (bc),a		;6bb9
	ld (hl),l		;6bba
	inc bc			;6bbb
	ld b,064h		;6bbc
	dec b			;6bbe
	ld d,e			;6bbf
	inc b			;6bc0
	ld d,c			;6bc1
	rra			;6bc2
	and a			;6bc3
	ld (hl),d		;6bc4
l6bc5h:
	rra			;6bc5
	ld b,073h		;6bc6
	inc bc			;6bc8
	rra			;6bc9
	ld (bc),a		;6bca
	ld bc,00360h		;6bcb
	ld (hl),e		;6bce
	dec b			;6bcf
	ccf			;6bd0
	and e			;6bd1
	rra			;6bd2
	dec b			;6bd3
	ld d,b			;6bd4
	ld (bc),a		;6bd5
	ccf			;6bd6
	call c,02100h		;6bd7
	inc bc			;6bda
	ld b,(hl)		;6bdb
	add a,(hl)		;6bdc
	ld de,sub_5b2dh		;6bdd
	ld bc,0209bh		;6be0
l6be3h:
	ldir			;6be3
	ld a,0feh		;6be5
	inc bc			;6be7
	ld (l5d06h),a		;6be8
	ret			;6beb
	ld hl,01052h		;6bec
	jp nz,0f20bh		;6bef
	inc e			;6bf2
	ld l,b			;6bf3
	ret			;6bf4
	inc e			;6bf5
	xor a			;6bf6
	ld (00060h),a		;6bf7
	pop bc			;6bfa
	ld a,006h		;6bfb
	ld (0c238h),a		;6bfd
	ld (0183ch),a		;6c00
	jp nz,0023eh		;6c03
	inc c			;6c06
	jp 03933h		;6c07
	ld e,e			;6c0a
	sub a			;6c0b
	dec b			;6c0c
	add hl,de		;6c0d
	ld e,(hl)		;6c0e
	ld d,0e1h		;6c0f
	add a,d			;6c11
	ld hl,0866ch		;6c12
	rlca			;6c15
	nop			;6c16
	inc hl			;6c17
	ld d,(hl)		;6c18
	pop hl			;6c19
	push de			;6c1a
	ret			;6c1b
	inc l			;6c1c
	add a,a			;6c1d
	ld d,h			;6c1e
	nop			;6c1f
	add a,a			;6c20
	cp d			;6c21
	add a,a			;6c22
	dec bc			;6c23
	adc a,b			;6c24
	add a,e			;6c25
	adc a,b			;6c26
	or 000h			;6c27
	adc a,b			;6c29
	ld c,08ah		;6c2a
	ld c,b			;6c2c
	adc a,d			;6c2d
	ld (hl),l		;6c2e
	adc a,d			;6c2f
	or h			;6c30
	nop			;6c31
	adc a,e			;6c32
	or e			;6c33
	adc a,h			;6c34
	exx			;6c35
	adc a,h			;6c36
	rrca			;6c37
	adc a,l			;6c38
	ld b,a			;6c39
	nop			;6c3a
	adc a,l			;6c3b
	ld e,a			;6c3c
	adc a,l			;6c3d
	ld sp,hl		;6c3e
	adc a,l			;6c3f
	ld b,08eh		;6c40
	ld e,d			;6c42
	nop			;6c43
	adc a,(hl)		;6c44
	ld hl,(0768fh)		;6c45
	adc a,a			;6c48
	xor a			;6c49
	adc a,a			;6c4a
	ld d,000h		;6c4b
	sub b			;6c4d
	adc a,(hl)		;6c4e
	sub b			;6c4f
	jr nz,l6be3h		;6c50
	ld h,b			;6c52
	sub c			;6c53
	pop de			;6c54
	nop			;6c55
	sub c			;6c56
	ret c			;6c57
	sub c			;6c58
	rst 18h			;6c59
	sub c			;6c5a
	and 091h		;6c5b
	rlca			;6c5d
	nop			;6c5e
	sub d			;6c5f
	ld c,d			;6c60
	sub d			;6c61
	jp po,01292h		;6c62
	sub e			;6c65
	xor d			;6c66
	nop			;6c67
	sub e			;6c68
	dec d			;6c69
	sub h			;6c6a
	push hl			;6c6b
	sub h			;6c6c
	ld sp,06a95h		;6c6d
	nop			;6c70
	sub l			;6c71
	dec d			;6c72
	sub (hl)		;6c73
	in a,(096h)		;6c74
	and 096h		;6c76
	jp (hl)			;6c78
	ld bc,00296h		;6c79
	sub a			;6c7c
	dec de			;6c7d
	sub a			;6c7e
	ld de,l6903h		;6c7f
	ld c,h			;6c82
	in a,(0c2h)		;6c83
	ld bc,086d9h		;6c85
	ld a,(0c148h)		;6c88
	and 003h		;6c8b
	ld a,a			;6c8d
l6c8eh:
	add hl,bc		;6c8e
	jp z,086d8h		;6c8f
	call po,0ed85h		;6c92
	ld d,d			;6c95
	ret			;6c96
	sub l			;6c97
	ld (09a9dh),hl		;6c98
	sub l			;6c9b
	sbc a,(hl)		;6c9c
	and 030h		;6c9d
	ld c,0ffh		;6c9f
	jp 0f30dh		;6ca1
	add a,(hl)		;6ca4
	ld c,07fh		;6ca5
	inc b			;6ca7
sub_6ca8h:
	nop			;6ca8
	ccf			;6ca9
	push hl			;6caa
	ld a,(hl)		;6cab
	add a,002h		;6cac
	and c			;6cae
	ld (hl),a		;6caf
	ld h,00ah		;6cb0
	nop			;6cb2
	ld l,a			;6cb3
	add hl,de		;6cb4
	ld b,(hl)		;6cb5
	ret c			;6cb6
	ex af,af'		;6cb7
	pop hl			;6cb8
	dec hl			;6cb9
	nop			;6cba
	ld a,(hl)		;6cbb
	add a,c			;6cbc
	ld b,b			;6cbd
	ld (hl),a		;6cbe
	inc bc			;6cbf
	add a,b			;6cc0
	ld (hl),a		;6cc1
	ret			;6cc2
	nop			;6cc3
	cp 0d7h			;6cc4
	ld bc,001ffh		;6cc6
	add a,e			;6cc9
	cp 003h			;6cca
	ld l,e			;6ccc
	ld (bc),a		;6ccd
	ld (de),a		;6cce
	dec b			;6ccf
	ld (hl),b		;6cd0
	rlca			;6cd1
	xor a			;6cd2
	ld de,0f2dah		;6cd3
	ld d,(hl)		;6cd6
	jr nz,l6d13h		;6cd7
	jp p,00164h		;6cd9
	jp z,08743h		;6cdc
	ld h,03ah		;6cdf
l6ce1h:
	di			;6ce1
	xor e			;6ce2
	inc h			;6ce3
	ld bc,007c2h		;6ce4
	dec (hl)		;6ce7
	dec sp			;6ce8
	and 081h		;6ce9
	rlca			;6ceb
	ld c,a			;6cec
	add a,a			;6ced
	ld a,(hl)		;6cee
	sub 00fh		;6cef
l6cf1h:
	ld b,d			;6cf1
	ld e,c			;6cf2
	ld e,d			;6cf3
	inc b			;6cf4
	daa			;6cf5
	and 06dh		;6cf6
	jp pe,00727h		;6cf8
	xor d			;6cfb
	daa			;6cfc
	sub c			;6cfd
	ld c,h			;6cfe
	push af			;6cff
	out (0cah),a		;6d00
	ld h,b			;6d02
	cp b			;6d03
	add hl,hl		;6d04
	ld h,077h		;6d05
	ld a,(06f00h)		;6d07
	ld l,a			;6d0a
	or a			;6d0b
	jp nz,08784h		;6d0c
	ld b,00dh		;6d0f
	ld h,0c3h		;6d11
l6d13h:
	sbc a,h			;6d13
	ld hl,00b70h		;6d14
	ld h,090h		;6d17
	dec bc			;6d19
	defb 0edh ;next byte illegal after ed	;6d1a
	dec bc			;6d1b
	add a,h			;6d1c
	nop			;6d1d
	jp nz,06efeh		;6d1e
	dec d			;6d21
	jp c,009a8h		;6d22
	ld c,058h		;6d25
	push af			;6d27
	add a,b			;6d28
	xor b			;6d29
	xor h			;6d2a
	ld a,(l40b3h)		;6d2b
	ld h,h			;6d2e
	inc (hl)		;6d2f
	or b			;6d30
	add a,a			;6d31
	ld a,r			;6d32
	and 00ah		;6d34
	ccf			;6d36
	call z,09785h		;6d37
l6d3ah:
	ld h,b			;6d3a
	dec sp			;6d3b
	ld hl,(0f12bh)		;6d3c
	ld h,e			;6d3f
	ld c,h			;6d40
	ld h,l			;6d41
	ld h,d			;6d42
	ld b,065h		;6d43
	ld a,(hl)		;6d45
	sub (hl)		;6d46
	call z,00065h		;6d47
	ret pe			;6d4a
	add a,a			;6d4b
	ld (hl),063h		;6d4c
	inc hl			;6d4e
	ld (hl),024h		;6d4f
	dec hl			;6d51
	ret nz			;6d52
	nop			;6d53
	ld (hl),015h		;6d54
	inc hl			;6d56
	add hl,de		;6d57
	jr l6d90h		;6d58
	ld b,0afh		;6d5a
	ld a,a			;6d5c
	ld l,(hl)		;6d5d
	add a,b			;6d5e
	ld d,l			;6d5f
	ld a,0b4h		;6d60
	jp z,087e5h		;6d62
	ld a,042h		;6d65
l6d67h:
	ret z			;6d67
	ld l,0c9h		;6d68
	ld (hl),083h		;6d6a
	rra			;6d6c
	ld (hl),a		;6d6d
	ld h,01fh		;6d6e
	inc b			;6d70
	ld h,0feh		;6d71
	dec c			;6d73
	ex af,af'		;6d74
	inc hl			;6d75
	or b			;6d76
	ld l,l			;6d77
	inc hl			;6d78
	ld b,d			;6d79
	jp z,0090ch		;6d7a
	adc a,b			;6d7d
	ld a,028h		;6d7e
	ld d,d			;6d80
	nop			;6d81
	ld e,(hl)		;6d82
	ld a,(06d7bh)		;6d83
	and 007h		;6d86
	jp nz,01416h		;6d88
	adc a,b			;6d8b
	inc (hl)		;6d8c
	ld b,(hl)		;6d8d
	ld a,d			;6d8e
	ld (hl),e		;6d8f
l6d90h:
	inc l			;6d90
	ld c,b			;6d91
	adc a,b			;6d92
	call nc,01377h		;6d93
	jp nz,08827h		;6d96
	ld hl,(038fdh)		;6d99
	ld l,e			;6d9c
	ld (hl),c		;6d9d
	add a,e			;6d9e
	sbc a,d			;6d9f
	dec hl			;6da0
	ld hl,02003h		;6da1
	jp nz,01942h		;6da4
	add a,008h		;6da7
	cp 083h			;6da9
	inc h			;6dab
	jp nz,03741h		;6dac
	ld h,e			;6daf
	adc a,l			;6db0
	ld c,c			;6db1
sub_6db2h:
	ld a,c			;6db2
	sbc a,e			;6db3
	nop			;6db4
	jp nz,0884dh		;6db5
	dec (hl)		;6db8
	jp 0805bh		;6db9
	dec d			;6dbc
	inc a			;6dbd
	ld (hl),a		;6dbe
	cp 050h			;6dbf
	jp c,0a45bh		;6dc1
	ld sp,0ff32h		;6dc4
	rst 10h			;6dc7
	xor h			;6dc8
	cp l			;6dc9
	ld h,d			;6dca
	ld a,e			;6dcb
	cp e			;6dcc
	ld b,c			;6dcd
	jp nz,08868h		;6dce
	dec sp			;6dd1
l6dd2h:
	ld bc,l5fcdh		;6dd2
	ld bc,0d0ebh		;6dd5
	ld de,l64e3h		;6dd8
	sbc a,e			;6ddb
	ld b,h			;6ddc
	ld h,h			;6ddd
	inc hl			;6dde
	jp z,00160h		;6ddf
	sub 003h		;6de2
	and e			;6de4
	jr c,l6d67h		;6de5
	rla			;6de7
	dec (hl)		;6de8
	nop			;6de9
	ld (hl),a		;6dea
	add a,e			;6deb
	adc a,(hl)		;6dec
	ld (hl),a		;6ded
	inc bc			;6dee
	ld a,b			;6def
	neg			;6df0
	ld b,a			;6df2
	ld a,e			;6df3
	ld e,h			;6df4
	xor b			;6df5
	ld a,e			;6df6
	ld a,0a3h		;6df7
	ld a,e			;6df9
	daa			;6dfa
	cp (hl)			;6dfb
	ld a,e			;6dfc
l6dfdh:
	ld (bc),a		;6dfd
	and e			;6dfe
	jp nz,07bbdh		;6dff
l6e02h:
	ld (hl),d		;6e02
l6e03h:
	add a,e			;6e03
	ld a,e			;6e04
	ret			;6e05
	rst 0			;6e06
	ld a,e			;6e07
	rst 10h			;6e08
	ld a,e			;6e09
	ld c,a			;6e0a
	rst 10h			;6e0b
	ld a,e			;6e0c
	ld (hl),a		;6e0d
	call po,0ae7bh		;6e0e
	ld (hl),d		;6e11
	add hl,hl		;6e12
	inc (hl)		;6e13
	nop			;6e14
	and c			;6e15
	jp pe,09287h		;6e16
	ld b,c			;6e19
	dec d			;6e1a
	cp 04eh			;6e1b
	ret c			;6e1d
	xor c			;6e1e
	and (hl)		;6e1f
	ld (hl),00ch		;6e20
	ld a,(de)		;6e22
	ld d,c			;6e23
	add a,c			;6e24
	rst 10h			;6e25
	sub (hl)		;6e26
	or b			;6e27
	ld e,c			;6e28
	inc bc			;6e29
	adc a,b			;6e2a
	add a,(hl)		;6e2b
	sub a			;6e2c
	dec h			;6e2d
	inc bc			;6e2e
	rlca			;6e2f
	rst 0			;6e30
	dec b			;6e31
l6e32h:
	ld a,h			;6e32
	inc bc			;6e33
	ld (hl),l		;6e34
	ex af,af'		;6e35
	inc e			;6e36
	ld a,b			;6e37
	dec b			;6e38
	ld (hl),c		;6e39
	ld hl,(0d730h)		;6e3a
	ld bc,0c137h		;6e3d
	ld (hl),c		;6e40
	dec b			;6e41
	dec d			;6e42
	adc a,(hl)		;6e43
l6e44h:
	cp 00dh			;6e44
	dec sp			;6e46
	dec b			;6e47
	sub a			;6e48
	inc bc			;6e49
	defb 0fdh,005h,001h ;illegal sequence	;6e4a
	dec b			;6e4d
	defb 0fdh,000h,009h ;illegal sequence	;6e4e
	dec bc			;6e51
	adc a,l			;6e52
	nop			;6e53
	inc bc			;6e54
	ex (sp),hl		;6e55
	dec c			;6e56
	dec b			;6e57
	xor h			;6e58
	rlca			;6e59
	and h			;6e5a
	call pe,005d6h		;6e5b
	defb 0fdh,005h,054h ;illegal sequence	;6e5e
	inc bc			;6e61
	jp m,0fec3h		;6e62
	dec c			;6e65
	adc a,h			;6e66
	ld b,0deh		;6e67
	inc bc			;6e69
	ex af,af'		;6e6a
	or e			;6e6b
	ld (0be05h),hl		;6e6c
	ld hl,(0303ah)		;6e6f
	rst 20h			;6e72
	ld bc,l7758h		;6e73
	ld h,b			;6e76
	ld d,h			;6e77
	sbc a,(hl)		;6e78
	ld l,(hl)		;6e79
	cp b			;6e7a
	ld a,h			;6e7b
	adc a,(hl)		;6e7c
	add a,(hl)		;6e7d
	and e			;6e7e
	sub b			;6e7f
	adc a,b			;6e80
l6e81h:
	and (hl)		;6e81
	ex (sp),hl		;6e82
	inc bc			;6e83
	adc a,b			;6e84
	or h			;6e85
	call c,08d1fh		;6e86
	ei			;6e89
	sub b			;6e8a
	or a			;6e8b
	ld de,0090eh		;6e8c
	adc a,c			;6e8f
	call 086e7h		;6e90
	and c			;6e93
	ret nz			;6e94
	rra			;6e95
	ret nz			;6e96
	push hl			;6e97
	ld c,(hl)		;6e98
	dec d			;6e99
	ld e,020h		;6e9a
	inc hl			;6e9c
	xor e			;6e9d
	inc bc			;6e9e
	inc d			;6e9f
	ld (097c9h),a		;6ea0
	ld b,a			;6ea3
	jp 0c242h		;6ea4
	cp b			;6ea7
	ret			;6ea8
	ret nz			;6ea9
	jp c,08a32h		;6eaa
	ld a,00ah		;6ead
	rst 38h			;6eaf
	ld (097cch),a		;6eb0
	and h			;6eb3
	add a,0b9h		;6eb4
	dec c			;6eb6
	scf			;6eb7
	ld b,b			;6eb8
	dec c			;6eb9
	ret			;6eba
	ld b,b			;6ebb
	call sub_5d5bh		;6ebc
	pop hl			;6ebf
	sbc a,c			;6ec0
	sbc a,a			;6ec1
	ld b,(hl)		;6ec2
	and c			;6ec3
	add hl,sp		;6ec4
	and d			;6ec5
	ld sp,l6615h		;6ec6
	adc a,e			;6ec9
	ld l,b			;6eca
	ld e,d			;6ecb
	rlca			;6ecc
	adc a,d			;6ecd
	ld a,(hl)		;6ece
	xor 008h		;6ecf
	ld (hl),a		;6ed1
	dec bc			;6ed2
	ld (bc),a		;6ed3
	jp z,08a72h		;6ed4
	adc a,d			;6ed7
	ld h,l			;6ed8
	sub c			;6ed9
	sbc a,0a2h		;6eda
	sub b			;6edc
l6eddh:
	sbc a,l			;6edd
	ld l,(hl)		;6ede
	call m,09aa6h		;6edf
	ld c,(hl)		;6ee2
	ld bc,056c9h		;6ee3
	cp d			;6ee6
	jp z,0d8feh		;6ee7
	sub b			;6eea
	call 00a10h		;6eeb
	adc a,e			;6eee
	ld a,c			;6eef
	ld a,(hl)		;6ef0
	jp nc,08a8dh		;6ef1
	dec d			;6ef4
	ld (hl),000h		;6ef5
	inc hl			;6ef7
	ld (bc),a		;6ef8
l6ef9h:
	rla			;6ef9
	sub d			;6efa
	cp b			;6efb
	ld (08b60h),hl		;6efc
	sla e			;6eff
	djnz $-115		;6f01
	ld (00224h),a		;6f03
	ld l,08bh		;6f06
	ld a,009h		;6f08
	inc b			;6f0a
	ld (08b25h),a		;6f0b
	sbc a,h			;6f0e
	pop hl			;6f0f
	ld (de),a		;6f10
	sbc a,h			;6f11
	jr c,l6ef9h		;6f12
l6f14h:
	nop			;6f14
	call 08af9h		;6f15
	ld (08b28h),hl		;6f18
	ld a,(00020h)		;6f1b
	adc a,e			;6f1e
	add a,010h		;6f1f
	ld (08b30h),a		;6f21
	ex de,hl		;6f24
	ld hl,02f0ch		;6f25
	adc a,e			;6f28
	ld bc,08110h		;6f29
l6f2ch:
	call sub_6916h		;6f2c
	ld hl,(03216h)		;6f2f
	ld b,b			;6f32
	inc d			;6f33
	adc a,a			;6f34
	ccf			;6f35
	inc d			;6f36
	rla			;6f37
	inc l			;6f38
l6f39h:
	dec hl			;6f39
	ld c,h			;6f3a
	ld d,b			;6f3b
	ld d,073h		;6f3c
	ld c,a			;6f3e
	ld d,0edh		;6f3f
	ld (hl),b		;6f41
	ld (08b26h),hl		;6f42
	adc a,c			;6f45
l6f46h:
	out (032h),a		;6f46
	rla			;6f48
	djnz l6f14h		;6f49
	ld de,0210fh		;6f4b
	add a,b			;6f4e
	jp nz,0061ah		;6f4f
	rlca			;6f52
l6f53h:
	ld a,(hl)		;6f53
	call m,01904h		;6f54
	djnz l6f53h		;6f57
	pop hl			;6f59
	pop bc			;6f5a
	ld c,(hl)		;6f5b
	push hl			;6f5c
	ld de,00ec8h		;6f5d
	nop			;6f60
	inc de			;6f61
	jp nz,0251bh		;6f62
	adc a,e			;6f65
	inc c			;6f66
	ld d,0f7h		;6f67
l6f69h:
	dec d			;6f69
	xor h			;6f6a
	cp (hl)			;6f6b
	ret nz			;6f6c
	dec d			;6f6d
	nop			;6f6e
	call c,02f73h		;6f6f
l6f72h:
	add a,a			;6f72
	ld b,014h		;6f73
	rst 38h			;6f75
	ld a,(bc)		;6f76
	rrca			;6f77
	add a,c			;6f78
	ld l,e			;6f79
	dec l			;6f7a
	ld b,03ch		;6f7b
	ld d,00fh		;6f7d
	sbc a,b			;6f7f
	ld a,e			;6f80
	rra			;6f81
	jr l6f72h		;6f82
	rrca			;6f84
	ld l,e			;6f85
	call po,092f2h		;6f86
	sub 0feh		;6f89
	add a,0ffh		;6f8b
	add a,a			;6f8d
	ld h,d			;6f8e
	inc h			;6f8f
	sub b			;6f90
	jr z,$-32		;6f91
	cp d			;6f93
	sub d			;6f94
	adc a,h			;6f95
	inc bc			;6f96
	dec hl			;6f97
	ret nz			;6f98
	dec c			;6f99
	adc a,e			;6f9a
	push hl			;6f9b
	inc b			;6f9c
	ld a,(de)		;6f9d
	ld b,0b6h		;6f9e
	ld bc,03203h		;6fa0
	ex af,af'		;6fa3
	pop bc			;6fa4
	ld (0a7a3h),a		;6fa5
	sub b			;6fa8
	inc de			;6fa9
	ld (08c07h),a		;6faa
	rlca			;6fad
	and d			;6fae
	jp 028a4h		;6faf
	jr l6f46h		;6fb2
	sub a			;6fb4
	dec hl			;6fb5
	call z,02311h		;6fb6
	ret			;6fb9
	dec sp			;6fba
	inc d			;6fbb
	ret nc			;6fbc
	xor c			;6fbd
	add hl,hl		;6fbe
	cp 012h			;6fbf
	ld a,(de)		;6fc1
	sbc a,e			;6fc2
	or l			;6fc3
	ld de,0c6fbh		;6fc4
	ld b,06ah		;6fc7
	rla			;6fc9
	ld a,(04e95h)		;6fca
	and b			;6fcd
	ld bc,0bfcah		;6fce
	adc a,e			;6fd1
	jp l42aah		;6fd2
	or l			;6fd5
	inc c			;6fd6
	rst 18h			;6fd7
	ld c,c			;6fd8
	adc a,e			;6fd9
	or b			;6fda
	ret nz			;6fdb
	rrca			;6fdc
	jp nz,08bd3h		;6fdd
	and 064h		;6fe0
	ld (bc),a		;6fe2
	or b			;6fe3
	ret nz			;6fe4
	cpl			;6fe5
	adc a,h			;6fe6
	push bc			;6fe7
	rst 38h			;6fe8
	or d			;6fe9
	xor (hl)		;6fea
	rlca			;6feb
	inc h			;6fec
	push hl			;6fed
	ld a,(l52c9h)		;6fee
	inc a			;6ff1
	add hl,bc		;6ff2
	rst 8			;6ff3
	add a,b			;6ff4
	dec a			;6ff5
	ld c,083h		;6ff6
	ld b,031h		;6ff8
	ld (bc),a		;6ffa
	jp z,08c08h		;6ffb
	dec a			;6ffe
	jp z,00351h		;6fff
	ret pe			;7002
	dec bc			;7003
	ld c,063h		;7004
	jr $+8			;7006
	dec l			;7008
	xor a			;7009
	inc (hl)		;700a
	ld a,c			;700b
	call nc,sub_48c4h	;700c
	ld hl,(0369bh)		;700f
	inc l			;7012
	ld hl,0b719h		;7013
	dec de			;7016
	ld (hl),b		;7017
	ld hl,(0082ah)		;7018
	and 066h		;701b
	ld a,(bc)		;701d
	ret			;701e
	pop af			;701f
	ex af,af'		;7020
	and a			;7021
	ld hl,(0062ch)		;7022
	inc c			;7025
	pop hl			;7026
	jp c,0d2ebh		;7027
	dec l			;702a
	xor 01ch		;702b
	ld b,l			;702d
	ld h,c			;702e
	ld c,l			;702f
	pop hl			;7030
	rlca			;7031
	inc h			;7032
	dec (hl)		;7033
l7034h:
	ret nc			;7034
	ld b,l			;7035
	ld hl,0d5d3h		;7036
	ld hl,(025c3h)		;7039
	sub d			;703c
	adc a,e			;703d
	add a,0c2h		;703e
	push bc			;7040
	ret p			;7041
	ld l,d			;7042
	adc a,h			;7043
	sub b			;7044
	jp 0e1f8h		;7045
	inc b			;7048
	ld c,0a3h		;7049
	ld b,033h		;704b
	jp 0eb69h		;704d
	ld b,c			;7050
	ld a,(0c624h)		;7051
	rlca			;7054
	ld (036a5h),a		;7055
	inc d			;7058
	or 0ffh			;7059
	rst 8			;705b
	ld b,h			;705c
	dec hl			;705d
	add a,b			;705e
	add a,0deh		;705f
	call nz,08ca4h		;7061
	cp b			;7064
	ld h,c			;7065
	rlca			;7066
	sub 008h		;7067
	dec hl			;7069
	xor b			;706a
	dec d			;706b
	dec e			;706c
	sub l			;706d
	ld (de),a		;706e
	add a,b			;706f
	add a,b			;7070
	xor c			;7071
	adc a,h			;7072
	ld hl,04fa3h		;7073
	adc a,h			;7076
	xor h			;7077
sub_7078h:
	dec a			;7078
	jr c,l70e7h		;7079
	jp pe,024b4h		;707b
	jp 0ca35h		;707e
	dec h			;7081
	inc e			;7082
	ld c,d			;7083
	out (0a8h),a		;7084
	cp 0e0h			;7086
	jp c,l46beh		;7088
	adc a,h			;708b
	cp 023h			;708c
l708eh:
	inc a			;708e
	defb 0fdh,098h,095h ;illegal sequence	;708f
	jp pe,0a241h		;7092
	ret pe			;7095
	jp p,l4678h		;7096
	ld (hl),a		;7099
	add a,a			;709a
	ld (hl),d		;709b
	dec h			;709c
	call po,025f8h		;709d
	add hl,bc		;70a0
	call 01a9ch		;70a1
	ld hl,0001ah		;70a4
	pop de			;70a7
	jp c,08d04h		;70a8
	ld (hl),0beh		;70ab
	dec hl			;70ad
	and e			;70ae
	push af			;70af
	ld hl,(03033h)		;70b0
	scf			;70b3
	ld a,h			;70b4
	dec (hl)		;70b5
	ld c,a			;70b6
	ld a,(de)		;70b7
	adc a,l			;70b8
	dec (hl)		;70b9
	and c			;70ba
	ld a,(0ef35h)		;70bb
	ld l,l			;70be
	call z,0b997h		;70bf
	ld (de),a		;70c2
	ld e,l			;70c3
	adc a,l			;70c4
	sub a			;70c5
	call 0f107h		;70c6
	cp c			;70c9
	ld hl,00b68h		;70ca
	jp nz,08d69h		;70cd
	push de			;70d0
	jp nc,0c566h		;70d1
	sub a			;70d4
	inc l			;70d5
	add a,(hl)		;70d6
	add a,a			;70d7
	inc de			;70d8
	ret c			;70d9
	jp c,0447eh		;70da
	nop			;70dd
	ld b,h			;70de
	add hl,de		;70df
	pop bc			;70e0
	sbc a,c			;70e1
	ret nz			;70e2
	pop bc			;70e3
	jp c,06a8eh		;70e4
l70e7h:
	adc a,l			;70e7
	sub c			;70e8
	cp e			;70e9
	add a,(hl)		;70ea
	add a,c			;70eb
	dec h			;70ec
	sbc a,d			;70ed
	ld (hl),d		;70ee
	cp c			;70ef
	sub h			;70f0
	and l			;70f1
l70f2h:
	ld h,b			;70f2
	ret p			;70f3
	ld hl,0fe23h		;70f4
	push af			;70f7
	ld (hl),0dah		;70f8
	and l			;70fa
	add hl,hl		;70fb
	ld d,024h		;70fc
	pop af			;70fe
	pop bc			;70ff
	call m,0e099h		;7100
	add a,(hl)		;7103
	inc b			;7104
	ld a,(de)		;7105
	ld (010eeh),a		;7106
	cp 004h			;7109
	jr nz,$-38		;710b
	cp 0e0h			;710d
	ret nc			;710f
	ret c			;7110
	ret nz			;7111
	pop hl			;7112
	di			;7113
	and 020h		;7114
	jp z,0c627h		;7116
	adc a,l			;7119
	push af			;711a
	nop			;711b
	pop af			;711c
	adc a,l			;711d
	ld hl,08deah		;711e
	call 08b13h		;7121
	inc b			;7124
	ld a,(0ee08h)		;7125
	dec c			;7128
	ld d,b			;7129
	ld a,(0d627h)		;712a
l712dh:
	djnz l712dh		;712d
	inc sp			;712f
	djnz $-38		;7130
	cpl			;7132
	jr $-100		;7133
	ret			;7135
	add a,d			;7136
	ret nz			;7137
	nop			;7138
	sbc a,e			;7139
	ld (bc),a		;713a
	cp (hl)			;713b
	ld d,l			;713c
	dec b			;713d
	ld bc,00090h		;713e
	sbc a,b			;7141
	call 001c4h		;7142
	add a,(hl)		;7145
	ld (hl),020h		;7146
	ld a,(097fbh)		;7148
	xor 0aeh		;714b
	push af			;714d
	inc b			;714e
	cp l			;714f
	ld a,e			;7150
	xor c			;7151
	dec de			;7152
	add a,h			;7153
	or b			;7154
	dec d			;7155
	adc a,(hl)		;7156
l7157h:
	ld a,c			;7157
	ld b,l			;7158
	add a,b			;7159
	rst 10h			;715a
	rst 10h			;715b
	xor b			;715c
	ld bc,00638h		;715d
	out (081h),a		;7160
	jr nc,l70f2h		;7162
l7164h:
	or a			;7164
	inc bc			;7165
	ld a,008h		;7166
	jr nz,l7164h		;7168
	ld hl,(0f804h)		;716a
	add a,b			;716d
	ld b,a			;716e
	ld (hl),b		;716f
	ld l,l			;7170
	dec hl			;7171
	xor l			;7172
	ret nc			;7173
	inc e			;7174
	adc a,a			;7175
	jp z,08e46h		;7176
	or h			;7179
	ld bc,0fafeh		;717a
	jp c,08e45h		;717d
	or a			;7180
	ld a,h			;7181
	ld sp,09077h		;7182
	ld e,0beh		;7185
	jp po,0da02h		;7187
	ld d,c			;718a
	adc a,(hl)		;718b
	ld c,001h		;718c
	or b			;718e
	or l			;718f
	ld (hl),c		;7190
	xor a			;7191
	ld e,e			;7192
	or b			;7193
	jp c,035c2h		;7194
	ld a,(hl)		;7197
	adc a,(hl)		;7198
	jp pe,0fea0h		;7199
	xor d			;719c
	jp nc,0097ch		;719d
	adc a,(hl)		;71a0
	cp 028h			;71a1
	jp c,01904h		;71a3
	add a,a			;71a6
	rst 10h			;71a7
	cp d			;71a8
	ld (hl),e		;71a9
	jp 04dd9h		;71aa
l71adh:
	adc a,0f3h		;71ad
	call nz,04f86h		;71af
	sbc a,d			;71b2
	and h			;71b3
	add a,b			;71b4
	ld (hl),d		;71b5
	or (hl)			;71b6
l71b7h:
	or c			;71b7
	ld e,c			;71b8
	cp h			;71b9
	nop			;71ba
	cp 0e3h			;71bb
	ld b,0ffh		;71bd
	jp z,09aafh		;71bf
	jr nc,l71b7h		;71c2
	inc b			;71c4
	ex de,hl		;71c5
	dec (hl)		;71c6
	ld b,001h		;71c7
	ld b,0fbh		;71c9
	inc b			;71cb
l71cch:
	sbc a,e			;71cc
l71cdh:
	ret c			;71cd
	ret			;71ce
	inc hl			;71cf
	dec hl			;71d0
	rst 28h			;71d1
	ld e,e			;71d2
	adc a,l			;71d3
	ex de,hl		;71d4
	cp c			;71d5
	di			;71d6
	ld a,c			;71d7
	ret nz			;71d8
	and c			;71d9
	inc d			;71da
	jp m,09fcah		;71db
	djnz l71cch		;71de
	ld (011d5h),a		;71e0
	adc a,(hl)		;71e3
	ld (002e6h),a		;71e4
	ld de,0b28fh		;71e7
	sbc a,b			;71ea
	ld (hl),a		;71eb
	sub l			;71ec
	ret c			;71ed
	or b			;71ee
	ei			;71ef
	jp c,00910h		;71f0
	adc a,a			;71f3
	cp 0cdh			;71f4
	jp nc,0c604h		;71f6
	djnz l7240h		;71f9
	scf			;71fb
	add a,00ch		;71fc
	jr c,$+24		;71fe
	and d			;7200
	jp nc,08efah		;7201
	ld hl,00c7eh		;7204
	xor d			;7207
l7208h:
	cp d			;7208
	ld (bc),a		;7209
	djnz l726fh		;720a
	dec bc			;720c
	ld (0100eh),a		;720d
	dec bc			;7210
	sub 00bh		;7211
	inc b			;7213
	ld hl,(0f22dh)		;7214
	adc a,a			;7217
	bit 1,(hl)		;7218
	jp m,0ca4eh		;721a
	ld c,a			;721d
	call c,0f88eh		;721e
	add a,0abh		;7221
	ret z			;7223
	xor e			;7224
	call p,0a98eh		;7225
	ld c,c			;7228
	ld a,08fh		;7229
l722bh:
	call nc,090c8h		;722b
	ret z			;722e
	add a,e			;722f
	and e			;7230
	sub h			;7231
	dec l			;7232
	xor h			;7233
	ld (hl),h		;7234
	ld c,h			;7235
	jp c,0bb68h		;7236
	ld c,h			;7239
	ld e,b			;723a
	ld sp,064dah		;723b
	ld e,b			;723e
	ld a,(bc)		;723f
l7240h:
	ld e,b			;7240
	or l			;7241
	djnz $+5		;7242
	jr nz,$+105		;7244
	jp z,02209h		;7246
	sbc a,e			;7249
	ld l,d			;724a
	xor (hl)		;724b
	jp po,08f97h		;724c
	inc c			;724f
	call pe,sub_49ebh	;7250
	ld a,0e9h		;7253
	rst 38h			;7255
	add a,c			;7256
	adc a,l			;7257
	adc a,a			;7258
	jp z,006a0h		;7259
	ret p			;725c
	ld (hl),a		;725d
	xor 0b8h		;725e
	ld (hl),l		;7260
	and c			;7261
	jp nz,098cfh		;7262
	dec h			;7265
	xor l			;7266
	adc a,a			;7267
	jp p,0079ah		;7268
	rst 8			;726b
	sub d			;726c
	or l			;726d
	ld (hl),d		;726e
l726fh:
	xor e			;726f
	ld a,h			;7270
	ld c,c			;7271
	pop bc			;7272
	adc a,a			;7273
	xor e			;7274
	ret p			;7275
	add hl,bc		;7276
	cp e			;7277
	jp z,08fd6h		;7278
	xor e			;727b
	and c			;727c
	inc bc			;727d
	ld b,0c3h		;727e
	jp m,08904h		;7280
	or e			;7283
	xor c			;7284
	cp d			;7285
	call po,0a99eh		;7286
	adc a,c			;7289
	ret p			;728a
	adc a,a			;728b
	xor c			;728c
	ret po			;728d
	rst 28h			;728e
	adc a,a			;728f
	sbc a,a			;7290
	xor c			;7291
	ld b,d			;7292
	ei			;7293
	adc a,a			;7294
	xor c			;7295
	ld a,h			;7296
	ld e,(hl)		;7297
	inc hl			;7298
	sbc a,a			;7299
	add a,0f1h		;729a
	ld sp,09de6h		;729c
	rst 8			;729f
	and b			;72a0
	dec sp			;72a1
	sbc a,(hl)		;72a2
	ret nz			;72a3
	ld (bc),a		;72a4
	jp nc,l6f2ch		;72a5
	sub b			;72a8
	sbc a,(hl)		;72a9
	ld d,c			;72aa
	cp a			;72ab
	jp 0ad2ch		;72ac
	nop			;72af
	inc d			;72b0
	sub b			;72b1
	ld (l4615h),a		;72b2
	sub b			;72b5
	sbc a,l			;72b6
	ld d,h			;72b7
	xor h			;72b8
	add a,(hl)		;72b9
	nop			;72ba
	inc hl			;72bb
	ld (hl),a		;72bc
l72bdh:
	ld (0900eh),a		;72bd
	dec hl			;72c0
	ld a,0d4h		;72c1
	adc a,l			;72c3
	ld b,00fh		;72c4
	sub b			;72c6
	and b			;72c7
	ret po			;72c8
	djnz $-110		;72c9
	ret nc			;72cb
	call pe,0906eh		;72cc
	cp (hl)			;72cf
	cp a			;72d0
	ld a,b			;72d1
	djnz $+101		;72d2
	ld (de),a		;72d4
	djnz l7355h		;72d5
	djnz $-88		;72d7
	ret			;72d9
	sbc a,(hl)		;72da
	add a,d			;72db
	rst 10h			;72dc
	ld (hl),e		;72dd
	ld b,l			;72de
	ld e,(hl)		;72df
	ld l,b			;72e0
	ld l,09eh		;72e1
	ld bc,0aed6h		;72e3
	add a,h			;72e6
	rst 10h			;72e7
l72e8h:
	add a,e			;72e8
	ld b,a			;72e9
	ld b,030h		;72ea
	rst 28h			;72ec
	rrca			;72ed
	cp e			;72ee
	rst 30h			;72ef
	ld e,a			;72f0
	ld a,a			;72f1
	jp p,l4651h		;72f2
	call po,0acc9h		;72f5
	sub b			;72f8
	adc a,a			;72f9
	ld c,e			;72fa
	jp po,01559h		;72fb
	sub d			;72fe
	adc a,a			;72ff
	pop bc			;7300
	cp l			;7301
	sub b			;7302
	ret c			;7303
	inc e			;7304
	ret c			;7305
	rlca			;7306
	rst 30h			;7307
	sub e			;7308
	ld a,h			;7309
	ld c,a			;730a
	sbc a,d			;730b
	or b			;730c
	add a,032h		;730d
	ld e,h			;730f
	cp c			;7310
	adc a,091h		;7311
	sub b			;7313
	ld e,000h		;7314
	add hl,bc		;7316
	ld e,0beh		;7317
	inc hl			;7319
	call z,02e0ah		;731a
	adc a,e			;731d
	and c			;731e
	sbc a,059h		;731f
	push de			;7321
	sub 035h		;7322
	ld a,0feh		;7324
	ex (sp),hl		;7326
	daa			;7327
	ret nc			;7328
	add hl,de		;7329
	ld hl,091e4h		;732a
	pop bc			;732d
	inc h			;732e
	sub e			;732f
	ld h,l			;7330
	ld c,c			;7331
	dec b			;7332
	ld (0af15h),a		;7333
	ld e,006h		;7336
	sub a			;7338
	sub a			;7339
	cp (hl)			;733a
	adc a,d			;733b
	ret			;733c
	sub 0b5h		;733d
	xor e			;733f
	sub c			;7340
	rrca			;7341
	sub c			;7342
	dec (hl)		;7343
	ld d,a			;7344
	add a,b			;7345
	dec de			;7346
	sub c			;7347
l7348h:
	ld a,b			;7348
	cp 063h			;7349
	ret c			;734b
l734ch:
	rst 38h			;734c
	sub c			;734d
	inc (hl)		;734e
	and d			;734f
	ld e,l			;7350
	out (04ch),a		;7351
	ret			;7353
	sbc a,e			;7354
l7355h:
	call 03d1dh		;7355
	sub c			;7358
	ret z			;7359
	ld a,(09bb8h)		;735a
	ld a,(03473h)		;735d
	ld a,(l4638h)		;7360
	xor (hl)		;7363
	jp pe,03a00h		;7364
	sbc a,e			;7367
	add hl,hl		;7368
l7369h:
	call m,sub_5008h	;7369
	sub c			;736c
	xor b			;736d
	jp c,0920bh		;736e
	inc l			;7371
	inc b			;7372
	sbc a,(hl)		;7373
	add hl,sp		;7374
	add a,b			;7375
	add a,b			;7376
	sub h			;7377
	dec d			;7378
	ccf			;7379
	jr nz,$-11		;737a
	ccf			;737c
	ld c,c			;737d
	and e			;737e
	ld sp,0054bh		;737f
	jr c,$+65		;7382
	call 0d2a0h		;7384
	or l			;7387
	ld (de),a		;7388
	cp b			;7389
	sub a			;738a
	push bc			;738b
	and e			;738c
	ld (091c2h),a		;738d
	sub h			;7390
	or b			;7391
	cp c			;7392
	sub a			;7393
	ld e,032h		;7394
	jp 09391h		;7396
	ret			;7399
	ld bc,0bbd8h		;739a
	ld hl,(0093eh)		;739d
	dec d			;73a0
	ld (091c1h),a		;73a1
	cp l			;73a4
	add hl,hl		;73a5
	inc bc			;73a6
	cp l			;73a7
	ld h,a			;73a8
	add hl,de		;73a9
	jp z,02514h		;73aa
	or a			;73ad
	sub a			;73ae
	jp nc,0abc4h		;73af
	ld c,e			;73b2
	sub b			;73b3
	cp c			;73b4
	ld (hl),00ah		;73b5
l73b7h:
	dec h			;73b7
	ld a,(bc)		;73b8
	ld (bc),a		;73b9
	jp nz,00680h		;73ba
	cp 00eh			;73bd
	cp 007h			;73bf
	jp 091edh		;73c1
	ld b,002h		;73c4
	ld b,033h		;73c6
	dec c			;73c8
	ld (bc),a		;73c9
	dec c			;73ca
	sbc a,l			;73cb
	ld b,0beh		;73cc
	adc a,e			;73ce
	xor c			;73cf
	or h			;73d0
	dec hl			;73d1
	or h			;73d2
	ld a,08fh		;73d3
	inc e			;73d5
	jp nc,09202h		;73d6
	pop hl			;73d9
	sub e			;73da
	jp c,0f0c4h		;73db
	ld sp,hl		;73de
	inc b			;73df
	ld bc,01dd2h		;73e0
	sub d			;73e3
	ret p			;73e4
	push af			;73e5
	ld l,d			;73e6
l73e7h:
	ret			;73e7
	add hl,sp		;73e8
	sub d			;73e9
	ld l,d			;73ea
	call z,0f0feh		;73eb
	inc a			;73ee
	and h			;73ef
	or b			;73f0
	sbc a,b			;73f1
	and c			;73f2
	pop hl			;73f3
	sub d			;73f4
	pop bc			;73f5
	ld (hl),a		;73f6
	inc d			;73f7
	ei			;73f8
	ld c,a			;73f9
	ld l,(hl)		;73fa
	dec sp			;73fb
	ld a,0e9h		;73fc
	or h			;73fe
	nop			;73ff
	jp 0d4adh		;7400
	ld b,h			;7403
	ld d,a			;7404
	sub d			;7405
	or 0a1h			;7406
	ld c,c			;7408
	sub d			;7409
	ld c,a			;740a
l740bh:
	dec hl			;740b
	inc b			;740c
	cp a			;740d
	ld l,c			;740e
	ex af,af'		;740f
l7410h:
	sub a			;7410
	add hl,bc		;7411
	sbc a,b			;7412
	sub d			;7413
	sub a			;7414
	ld h,d			;7415
	rst 18h			;7416
	ld hl,092d1h		;7417
	dec hl			;741a
	call pe,0c61ah		;741b
	ld c,01ch		;741e
	ld (092d0h),a		;7420
	ld l,c			;7423
	ld b,h			;7424
	jp c,09296h		;7425
	call po,007f3h		;7428
	ld (hl),d		;742b
	ld l,d			;742c
	rst 8			;742d
	jp pe,0e16ah		;742e
	jp p,l78ebh		;7431
	daa			;7434
	xor c			;7435
	sub d			;7436
	ex de,hl		;7437
	sbc a,d			;7438
	rlca			;7439
	ex de,hl		;743a
	ld (hl),c		;743b
	rst 18h			;743c
	ccf			;743d
	ld c,d			;743e
	inc b			;743f
	ret po			;7440
	ld de,0da7ch		;7441
	sbc a,d			;7444
	inc bc			;7445
	ld a,e			;7446
	dec a			;7447
	and e			;7448
	inc de			;7449
	ex (sp),hl		;744a
	jp z,0e30ch		;744b
	ld (hl),a		;744e
	rst 0			;744f
	sub 095h		;7450
	jr nz,$+102		;7452
	ld h,h			;7454
	bit 2,c			;7455
	adc a,b			;7457
	adc a,e			;7458
	ld b,b			;7459
	ld c,d			;745a
	ld a,a			;745b
	djnz l7410h		;745c
	add a,h			;745e
	adc a,d			;745f
	ld a,c			;7460
	inc hl			;7461
	rst 30h			;7462
	adc a,d			;7463
	adc a,b			;7464
	cp (hl)			;7465
	xor d			;7466
	dec bc			;7467
	ld e,(hl)		;7468
	ld c,l			;7469
	sbc a,h			;746a
	and (hl)		;746b
	and a			;746c
	ld c,l			;746d
	rst 38h			;746e
l746fh:
	ld (hl),050h		;746f
	ld h,e			;7471
	rst 8			;7472
	ld d,d			;7473
	push af			;7474
sub_7475h:
	ld h,(hl)		;7475
	sbc a,e			;7476
	rst 28h			;7477
	defb 0fdh,089h,040h ;illegal sequence	;7478
	sub e			;747b
	xor d			;747c
	ld l,d			;747d
	or h			;747e
	dec sp			;747f
	adc a,a			;7480
	or d			;7481
	inc b			;7482
	ret c			;7483
	xor b			;7484
	ld a,d			;7485
	cp d			;7486
	ret			;7487
	ld e,l			;7488
	adc a,(hl)		;7489
	push bc			;748a
	add hl,bc		;748b
	ld l,c			;748c
	sub e			;748d
	push bc			;748e
	cp l			;748f
	jp (hl)			;7490
	jr nz,$+89		;7491
	ld b,0cbh		;7493
	jp z,03568h		;7495
	sub e			;7498
	dec a			;7499
	ret nz			;749a
	dec (hl)		;749b
	dec b			;749c
	in a,(005h)		;749d
	sub l			;749f
	ld a,(bc)		;74a0
	sub c			;74a1
	call nc,0c6e3h		;74a2
l74a5h:
	xor b			;74a5
	ld c,c			;74a6
	sub e			;74a7
	ld e,a			;74a8
	ld b,a			;74a9
	ld l,l			;74aa
	ld d,h			;74ab
	sub c			;74ac
	jp z,l7e04h		;74ad
	sub e			;74b0
	ld a,002h		;74b1
	add a,(hl)		;74b3
	dec hl			;74b4
	ld a,b			;74b5
	ld hl,002e6h		;74b6
	rlca			;74b9
	jp z,0938bh		;74ba
	ld de,00c4ah		;74bd
	ret			;74c0
	set 0,d			;74c1
	cp (hl)			;74c3
	ld a,09dh		;74c4
	call po,00d99h		;74c6
	ld bc,01acbh		;74c9
	xor e			;74cc
	call c,0700dh		;74cd
	and a			;74d0
	dec c			;74d1
	ret			;74d2
	cp h			;74d3
	rst 30h			;74d4
	xor (hl)		;74d5
	and (hl)		;74d6
	ld c,c			;74d7
	cp b			;74d8
	sub e			;74d9
	pop bc			;74da
	pop bc			;74db
	ld a,(hl)		;74dc
	ld c,a			;74dd
	cp 04ch			;74de
	nop			;74e0
	rst 0			;74e1
	sub e			;74e2
	cp 0fdh			;74e3
	jp z,093ceh		;74e5
	dec d			;74e8
	jp 093d5h		;74e9
	adc a,c			;74ec
	cp h			;74ed
	ld b,037h		;74ee
	ld bc,09306h		;74f0
	add hl,de		;74f3
	sub (hl)		;74f4
	ld a,b			;74f5
	rst 30h			;74f6
	rra			;74f7
	push de			;74f8
	dec c			;74f9
	out (006h),a		;74fa
	ld b,(hl)		;74fc
	ld (bc),a		;74fd
	sub d			;74fe
	ld h,e			;74ff
	ld b,0feh		;7500
	ld b,080h		;7502
	jp 093f8h		;7504
	ld (hl),b		;7507
	sub 0c1h		;7508
	ld c,c			;750a
	ld a,h			;750b
	sub a			;750c
	and 060h		;750d
	djnz l74a5h		;750f
	sub (hl)		;7511
	and 065h		;7512
	rlca			;7514
	dec (hl)		;7515
	sbc a,c			;7516
	ld l,0bah		;7517
	jp p,l6f39h		;7519
	sub h			;751c
	cp d			;751d
	adc a,c			;751e
	scf			;751f
	sub h			;7520
	cp d			;7521
	cp c			;7522
	inc b			;7523
	ld c,h			;7524
l7525h:
	cp 048h			;7525
	rst 18h			;7527
	cp d			;7528
	xor h			;7529
	ld (hl),c		;752a
	sub h			;752b
	rst 18h			;752c
	cp d			;752d
	inc b			;752e
	ld l,d			;752f
	jr nc,l7525h		;7530
	defb 0ddh,004h,0bah ;illegal sequence	;7532
	call c,sub_6606h	;7535
	ei			;7538
	inc b			;7539
	cp d			;753a
	call m,01e80h		;753b
	jp m,09485h		;753e
	ld a,002h		;7541
	jp po,09032h		;7543
	sub h			;7546
	ld (002a1h),a		;7547
	ld b,(hl)		;754a
	call z,0d63fh		;754b
	ld e,0bah		;754e
	or 0cbh			;7550
	or (hl)			;7552
	dec (hl)		;7553
	cp d			;7554
	xor (hl)		;7555
	inc b			;7556
	ret nc			;7557
	and h			;7558
	cp d			;7559
	ld l,a			;755a
	sub 0bah		;755b
	ld h,(hl)		;755d
	or l			;755e
	sub h			;755f
	add a,0eeh		;7560
	ret nc			;7562
	or c			;7563
	djnz $-51		;7564
	add a,010h		;7566
l7568h:
	dec (hl)		;7568
	pop hl			;7569
	ld c,l			;756a
	add a,00dh		;756b
	cp d			;756d
	add a,01eh		;756e
	cp d			;7570
	jp p,0bc46h		;7571
	jp (hl)			;7574
	ld c,l			;7575
	inc bc			;7576
	ld (bc),a		;7577
	ld bc,0fabah		;7578
	sub c			;757b
	ld sp,hl		;757c
	ret pe			;757d
	ld l,a			;757e
	cp d			;757f
	adc a,e			;7580
	sub 0bah		;7581
	ld a,e			;7583
	inc a			;7584
	inc hl			;7585
	sub l			;7586
	ld e,b			;7587
	rlca			;7588
	jp c,0951fh		;7589
	ld e,b			;758c
	ld e,e			;758d
	cp d			;758e
	adc a,l			;758f
	add a,0bah		;7590
	jp (hl)			;7592
	ld b,h			;7593
	cp d			;7594
	cp (hl)			;7595
	dec b			;7596
	ld d,d			;7597
	sub l			;7598
	inc c			;7599
	cp d			;759a
	cp l			;759b
	sbc a,e			;759c
	ld c,b			;759d
	sub l			;759e
	cp d			;759f
	call p,sub_6812h	;75a0
	sub l			;75a3
l75a4h:
	rst 10h			;75a4
	call 0ba07h		;75a5
	cp c			;75a8
	out (0aeh),a		;75a9
	add a,(hl)		;75ab
	add a,b			;75ac
	sub l			;75ad
	out (0b9h),a		;75ae
	or e			;75b0
	ld c,h			;75b1
	ld e,b			;75b2
	xor h			;75b3
	ld e,b			;75b4
	jr z,l7568h		;75b5
	sub l			;75b7
	jp c,0b529h		;75b8
	sub l			;75bb
	jp c,00e8dh		;75bc
	ld h,e			;75bf
	or e			;75c0
	ld c,0c5h		;75c1
	ld c,093h		;75c3
	pop hl			;75c5
	dec hl			;75c6
	cp b			;75c7
	add a,(hl)		;75c8
	sub l			;75c9
	and b			;75ca
	rst 30h			;75cb
	push hl			;75cc
	ld d,b			;75cd
	call c,sub_577bh	;75ce
	sub (hl)		;75d1
	ld b,04eh		;75d2
	ei			;75d4
	dec sp			;75d5
	ld (bc),a		;75d6
	rrca			;75d7
	dec h			;75d8
	sub e			;75d9
	ld e,c			;75da
	ld b,050h		;75db
	adc a,e			;75dd
	or 0ffh			;75de
	ld c,l			;75e0
	nop			;75e1
l75e2h:
	rst 30h			;75e2
	nop			;75e3
	ld (hl),b		;75e4
	inc bc			;75e5
	nop			;75e6
	ld h,(hl)		;75e7
	defb 0fdh,003h,009h ;illegal sequence	;75e8
	ld (hl),c		;75eb
	inc bc			;75ec
	jr $-122		;75ed
	rst 38h			;75ef
	ld bc,00001h		;75f0
	rst 10h			;75f3
	inc bc			;75f4
	ld (bc),a		;75f5
	rlca			;75f6
	inc d			;75f7
	dec b			;75f8
l75f9h:
	ld bc,0c703h		;75f9
	rlca			;75fc
	nop			;75fd
	rrca			;75fe
	ld e,e			;75ff
	ld hl,0bc86h		;7600
	ret nz			;7603
	nop			;7604
	ld de,095d5h		;7605
l7608h:
	call sub_46f1h		;7608
	add a,(hl)		;760b
	rst 28h			;760c
	ld d,b			;760d
	jp p,05735h		;760e
	sub (hl)		;7611
	adc a,e			;7612
	ld b,l			;7613
	inc sp			;7614
	sub (hl)		;7615
	adc a,e			;7616
	ld l,e			;7617
	inc hl			;7618
	di			;7619
	ld d,h			;761a
	ld d,b			;761b
	cp (hl)			;761c
	jr z,l75f9h		;761d
	adc a,l			;761f
	ld d,008h		;7620
	cp 0a0h			;7622
	inc e			;7624
	jp c,0964ch		;7625
	xor 064h		;7628
	inc c			;762a
	ld (hl),063h		;762b
	defb 0edh ;next byte illegal after ed	;762d
	sbc a,h			;762e
	adc a,h			;762f
	jp nc,0af44h		;7630
	out (052h),a		;7633
	adc a,h			;7635
	jp nc,02a45h		;7636
	rst 8			;7639
	ret m			;763a
	sub b			;763b
	inc hl			;763c
	ld (hl),c		;763d
	inc hl			;763e
	ld e,d			;763f
	ld a,b			;7640
	push hl			;7641
	ld c,c			;7642
	inc e			;7643
	add a,e			;7644
	ld (bc),a		;7645
	ld d,l			;7646
	rst 38h			;7647
	inc (hl)		;7648
	inc b			;7649
	ld d,h			;764a
	dec sp			;764b
	ld hl,(016b3h)		;764c
	ld h,d			;764f
	jr nz,$+24		;7650
	adc a,e			;7652
	ld (bc),a		;7653
	ld l,d			;7654
	ld e,e			;7655
	ld d,056h		;7656
	call z,057cbh		;7658
	jp 02918h		;765b
	or a			;765e
	sub (hl)		;765f
	rst 0			;7660
	ld a,d			;7661
	dec a			;7662
	or a			;7663
	nop			;7664
	inc c			;7665
l7666h:
	inc b			;7666
l7667h:
	ld h,088h		;7667
	adc a,037h		;7669
	ld c,0a4h		;766b
	adc a,l			;766d
	call c,026b8h		;766e
	cp 0e1h			;7671
	adc a,000h		;7673
	ld b,(hl)		;7675
	jp c,096c7h		;7676
	ld c,064h		;7679
	ld b,0dch		;767b
	jp nc,0232ch		;767d
	ld (hl),b		;7680
	ld d,e			;7681
	sbc a,022h		;7682
	ld l,l			;7684
	add hl,de		;7685
	ld (hl),c		;7686
	ld c,l			;7687
	call z,0aecbh		;7688
	ld e,h			;768b
	adc a,d			;768c
	jp 096dbh		;768d
	call z,0d6e8h		;7690
	inc bc			;7693
	ld bc,004feh		;7694
	jp nc,096fdh		;7697
	ld (hl),01eh		;769a
	and b			;769c
	ld b,e			;769d
	and 08dh		;769e
	res 5,h			;76a0
	rrca			;76a2
	add hl,hl		;76a3
	sub a			;76a4
	jr $+53			;76a5
	ld d,097h		;76a7
	jr $-27			;76a9
	jp po,l610dh		;76ab
	sub d			;76ae
	rst 38h			;76af
	ret nc			;76b0
	add a,h			;76b1
	rra			;76b2
	call nc,sub_4ac6h	;76b3
	sub a			;76b6
	ld l,e			;76b7
	halt			;76b8
	add hl,bc		;76b9
	or e			;76ba
	xor 009h		;76bb
	ld l,(hl)		;76bd
	call z,0be1fh		;76be
	inc hl			;76c1
l76c2h:
	or e			;76c2
	ld h,(hl)		;76c3
	inc b			;76c4
	or e			;76c5
	inc b			;76c6
	inc sp			;76c7
	pop hl			;76c8
	sbc a,d			;76c9
	sub (hl)		;76ca
	ex af,af'		;76cb
	sbc a,d			;76cc
	ld a,b			;76cd
	dec c			;76ce
	ld a,(0c157h)		;76cf
	in a,(043h)		;76d2
	sub a			;76d4
	sub a			;76d5
l76d6h:
	ex af,af'		;76d6
	adc a,d			;76d7
	add a,c			;76d8
	ld a,(l7608h)		;76d9
	inc bc			;76dc
	ex af,af'		;76dd
	inc b			;76de
	defb 0edh ;next byte illegal after ed	;76df
	ex af,af'		;76e0
	dec b			;76e1
	ex af,af'		;76e2
	cp b			;76e3
	ret m			;76e4
	add hl,de		;76e5
	ret z			;76e6
	jp 086edh		;76e7
	rst 0			;76ea
	jp l6ce1h		;76eb
	cp (hl)			;76ee
	ld e,c			;76ef
	rst 10h			;76f0
	inc b			;76f1
	ld a,d			;76f2
	ld a,(bc)		;76f3
	ld l,e			;76f4
	jr z,l76c2h		;76f5
	jp nz,00a04h		;76f7
	inc c			;76fa
	pop hl			;76fb
	ld a,c			;76fc
	ld h,a			;76fd
	inc h			;76fe
	defb 0ddh,07dh ;ld a,ixl	;76ff
l7701h:
	rrca			;7701
	ld h,(hl)		;7702
	rst 30h			;7703
	inc de			;7704
	and e			;7705
	jr z,$+8		;7706
	ld c,01fh		;7708
	cp l			;770a
	sbc a,l			;770b
	add a,h			;770c
	call c,02d63h		;770d
	ld b,010h		;7710
	and (hl)		;7712
	sub c			;7713
	pop hl			;7714
	rrca			;7715
	inc bc			;7716
	or e			;7717
	scf			;7718
	rst 18h			;7719
	ld sp,l4928h		;771a
	ret m			;771d
	xor 002h		;771e
	call c,039cbh		;7720
	rrca			;7723
	inc a			;7724
	ld e,093h		;7725
	rrca			;7727
	ld c,c			;7728
	ex (sp),hl		;7729
	dec a			;772a
	jp m,0228eh		;772b
	sub l			;772e
l772fh:
	and a			;772f
	ccf			;7730
	sbc a,b			;7731
	or d			;7732
	ld h,e			;7733
	ld b,e			;7734
	ld b,053h		;7735
	ld hl,(086e1h)		;7737
	rra			;773a
	scf			;773b
	ld c,l			;773c
	ex (sp),hl		;773d
	inc a			;773e
	rrca			;773f
	add a,b			;7740
	bit 2,e			;7741
	ei			;7743
	ld bc,0ff42h		;7744
	halt			;7747
	inc c			;7748
	rrca			;7749
	inc bc			;774a
	daa			;774b
	di			;774c
	ld b,c			;774d
	ld c,a			;774e
	ld b,h			;774f
l7750h:
	ccf			;7750
	adc a,h			;7751
	rra			;7752
	dec sp			;7753
	rst 0			;7754
	ld e,a			;7755
	sub l			;7756
	ld e,a			;7757
l7758h:
	adc a,c			;7758
	ld h,e			;7759
	ld e,l			;775a
	ld b,03bh		;775b
	ld c,d			;775d
	ccf			;775e
	ex af,af'		;775f
	inc hl			;7760
	ld d,b			;7761
	sbc a,b			;7762
	add hl,de		;7763
	ld (bc),a		;7764
	dec l			;7765
	ld d,b			;7766
	ld b,(hl)		;7767
	and d			;7768
	ex af,af'		;7769
	adc a,(hl)		;776a
	ld (00208h),a		;776b
	jr nc,l772fh		;776e
	ld b,(hl)		;7770
	ld d,b			;7771
	or h			;7772
	ld (bc),a		;7773
	inc c			;7774
	or (hl)			;7775
	ld a,(bc)		;7776
	ld h,b			;7777
	or b			;7778
	dec b			;7779
	sub d			;777a
	ld (bc),a		;777b
	and d			;777c
	ex af,af'		;777d
	sbc a,b			;777e
	dec b			;777f
	inc h			;7780
	ld h,(hl)		;7781
	ld e,d			;7782
	dec bc			;7783
	ld e,00bh		;7784
	ld a,(de)		;7786
l7787h:
	sub d			;7787
	ld (bc),a		;7788
	ld l,e			;7789
	ex af,af'		;778a
	jr z,$+28		;778b
	ld c,b			;778d
	rlca			;778e
	ld de,00b07h		;778f
	inc a			;7792
	ld h,b			;7793
	ld h,a			;7794
	sbc a,h			;7795
	dec b			;7796
	ld (bc),a		;7797
	ld bc,l5266h		;7798
	ld d,b			;779b
	and c			;779c
	ex af,af'		;779d
	sbc a,h			;779e
	dec b			;779f
	jp po,l440eh		;77a0
	ex af,af'		;77a3
	ld (bc),a		;77a4
	rst 38h			;77a5
	jr nc,$-58		;77a6
	ld l,(hl)		;77a8
	djnz l7787h		;77a9
	dec bc			;77ab
	ex af,af'		;77ac
	or (hl)			;77ad
	inc c			;77ae
	ld d,b			;77af
	jp z,0ac05h		;77b0
	ld a,b			;77b3
	cp h			;77b4
	ex af,af'		;77b5
	dec bc			;77b6
	inc de			;77b7
	add a,d			;77b8
	ex af,af'		;77b9
	rrca			;77ba
	ld (bc),a		;77bb
	ld d,c			;77bc
	sbc a,b			;77bd
	ld (bc),a		;77be
	ret nz			;77bf
	add hl,de		;77c0
	ld c,024h		;77c1
	add hl,de		;77c3
	inc d			;77c4
	inc hl			;77c5
	dec b			;77c6
	dec l			;77c7
	ret c			;77c8
	ex af,af'		;77c9
	adc a,h			;77ca
	call nz,0898eh		;77cb
	ld h,e			;77ce
	add hl,de		;77cf
	ld (bc),a		;77d0
	add a,a			;77d1
	rrca			;77d2
	ld (bc),a		;77d3
	ld c,b			;77d4
	add a,h			;77d5
	dec bc			;77d6
	ld a,d			;77d7
	rst 38h			;77d8
	djnz l782bh		;77d9
	ld (hl),b		;77db
	rst 38h			;77dc
	ld c,l			;77dd
	dec l			;77de
	ld b,b			;77df
	inc (hl)		;77e0
	sub c			;77e1
	ld (bc),a		;77e2
	ld a,002h		;77e3
	ld c,b			;77e5
	ld e,a			;77e6
	ex af,af'		;77e7
	ld c,001h		;77e8
	ld (hl),b		;77ea
	or (hl)			;77eb
	ld c,035h		;77ec
	ld (bc),a		;77ee
	ld c,e			;77ef
	ld (bc),a		;77f0
	inc h			;77f1
	rrca			;77f2
	inc d			;77f3
	add hl,de		;77f4
	dec b			;77f5
	inc hl			;77f6
	inc h			;77f7
	ld b,b			;77f8
	jp z,0b608h		;77f9
	ex af,af'		;77fc
	ret nz			;77fd
	pop bc			;77fe
	ld c,001h		;77ff
	add a,b			;7801
	inc a			;7802
	ld de,0acc1h		;7803
	inc hl			;7806
	ld de,09b29h		;7807
	ld de,08e2fh		;780a
	ld c,016h		;780d
	ld e,h			;780f
	rrca			;7810
	jr nz,l7818h		;7811
	ld h,d			;7813
	ld de,0050fh		;7814
	inc e			;7817
l7818h:
	ld a,(bc)		;7818
	ld b,b			;7819
	and d			;781a
	dec bc			;781b
	ld (00b8eh),hl		;781c
	ld h,h			;781f
	add hl,de		;7820
	ld (bc),a		;7821
	sbc a,h			;7822
	dec b			;7823
	ld l,(hl)		;7824
	dec b			;7825
	jr c,$-124		;7826
	ld c,04ch		;7828
	ld a,b			;782a
l782bh:
	ld a,069h		;782b
	ex af,af'		;782d
	dec c			;782e
	dec b			;782f
	ld b,b			;7830
	ld d,b			;7831
	dec b			;7832
	dec b			;7833
	ld h,c			;7834
	adc a,h			;7835
	dec bc			;7836
	jr z,l7879h		;7837
	add a,(hl)		;7839
	inc d			;783a
	ld (hl),h		;783b
	sub (hl)		;783c
	inc a			;783d
	ld (hl),b		;783e
	nop			;783f
l7840h:
	ld h,0fch		;7840
	jr nz,l7840h		;7842
	dec bc			;7844
	inc d			;7845
	rst 38h			;7846
	dec b			;7847
	sub l			;7848
	ld b,l			;7849
	ld e,d			;784a
	inc hl			;784b
	ld c,020h		;784c
	inc a			;784e
	ld e,d			;784f
l7850h:
	rla			;7850
	adc a,e			;7851
	ld l,(hl)		;7852
	dec b			;7853
	ld c,005h		;7854
	djnz $+1		;7856
	dec b			;7858
	dec l			;7859
	and b			;785a
	ld l,(hl)		;785b
	ld b,b			;785c
	ld e,d			;785d
	ld (bc),a		;785e
	ld c,e			;785f
	and b			;7860
	add a,d			;7861
	ld e,d			;7862
	sub b			;7863
	nop			;7864
	cp d			;7865
	ld (0d830h),a		;7866
	ld c,e			;7869
	sub b			;786a
	ret c			;786b
	ld b,c			;786c
	inc b			;786d
	sub b			;786e
	call pe,0905fh		;786f
	jp po,08217h		;7872
	call po,03202h		;7875
	and b			;7878
l7879h:
	inc l			;7879
	adc a,h			;787a
	ld h,h			;787b
	ld (bc),a		;787c
	dec b			;787d
	add hl,bc		;787e
	scf			;787f
	and b			;7880
	sub (hl)		;7881
	ld e,002h		;7882
	dec l			;7884
	ld (bc),a		;7885
	ld c,055h		;7886
	sub b			;7888
	nop			;7889
	ld (bc),a		;788a
l788bh:
	jp nz,03c1eh		;788b
	sub b			;788e
	ld (l44deh),a		;788f
	ld d,(hl)		;7892
	ld (bc),a		;7893
	ld (hl),a		;7894
	ld (de),a		;7895
	ld bc,l6490h		;7896
	dec sp			;7899
	sub (hl)		;789a
	dec b			;789b
	ld c,c			;789c
	add a,d			;789d
	dec b			;789e
	adc a,h			;789f
	rla			;78a0
	and b			;78a1
	ex af,af'		;78a2
	ld d,05ah		;78a3
	ld b,c			;78a5
	ex af,af'		;78a6
	inc d			;78a7
	ld (020ffh),a		;78a8
	xor (hl)		;78ab
	ld c,d			;78ac
	ex af,af'		;78ad
	push af			;78ae
	ld l,b			;78af
	ex af,af'		;78b0
	ld e,090h		;78b1
	inc h			;78b3
	ld d,b			;78b4
	ld bc,08c32h		;78b5
	jr c,l7850h		;78b8
	sub d			;78ba
	ld (bc),a		;78bb
	ld d,b			;78bc
	ld (bc),a		;78bd
	ld h,h			;78be
	ld (bc),a		;78bf
	dec d			;78c0
	ld (09640h),a		;78c1
	ld (bc),a		;78c4
	ld e,h			;78c5
	add a,(hl)		;78c6
	inc d			;78c7
	ld (bc),a		;78c8
	ld h,h			;78c9
	ld c,c			;78ca
	ld a,(00105h)		;78cb
	ld (bc),a		;78ce
	jr z,l78e5h		;78cf
	dec h			;78d1
	ld bc,l630bh		;78d2
	ld h,0a5h		;78d5
	ld (02ca2h),hl		;78d7
	ld (0ff41h),hl		;78da
	and h			;78dd
	ld b,l			;78de
	scf			;78df
	or e			;78e0
	ld (bc),a		;78e1
	inc h			;78e2
	ld b,(hl)		;78e3
	ld (bc),a		;78e4
l78e5h:
	ld (02802h),a		;78e5
	sub (hl)		;78e8
	ld (bc),a		;78e9
	inc a			;78ea
l78ebh:
	ld (bc),a		;78eb
	push de			;78ec
	ld (bc),a		;78ed
	or b			;78ee
	ld h,(hl)		;78ef
	inc hl			;78f0
	inc hl			;78f1
	defb 0edh ;next byte illegal after ed	;78f2
	dec b			;78f3
	sbc a,b			;78f4
	dec b			;78f5
	sub d			;78f6
	jp nc,00899h		;78f7
	call pe,0ff18h		;78fa
	and a			;78fd
	dec (hl)		;78fe
	sbc a,l			;78ff
	add a,h			;7900
	jr z,l788bh		;7901
	pop de			;7903
	or b			;7904
	ld b,(hl)		;7905
	ei			;7906
	call po,09f02h		;7907
	and d			;790a
	sub (hl)		;790b
	ld d,b			;790c
	and d			;790d
	out (c),e		;790e
	ld b,l			;7910
	and b			;7911
	ld d,(hl)		;7912
	ld b,(hl)		;7913
	ld h,b			;7914
	rst 0			;7915
	add a,b			;7916
	ld h,b			;7917
	inc a			;7918
	ld e,060h		;7919
	ld h,h			;791b
	sub h			;791c
	ld (bc),a		;791d
	ld l,(hl)		;791e
	cp a			;791f
	inc h			;7920
	ld a,b			;7921
	dec b			;7922
	sub (hl)		;7923
	ld (bc),a		;7924
	or h			;7925
	sub d			;7926
	ex af,af'		;7927
	ret z			;7928
	dec b			;7929
	and 002h		;792a
	nop			;792c
	ret p			;792d
	xor a			;792e
	ld h,b			;792f
	jp m,0904fh		;7930
	jr z,l7966h		;7933
	and h			;7935
	ld (bc),a		;7936
	dec b			;7937
	ld c,e			;7938
	ld (bc),a		;7939
	ld e,a			;793a
	ld l,b			;793b
	ld sp,06402h		;793c
	ld l,(hl)		;793f
	sub b			;7940
	jr nz,l79b1h		;7941
l7943h:
	and 002h		;7943
	ld e,d			;7945
	ret nz			;7946
	inc a			;7947
	ld h,l			;7948
	and h			;7949
	rla			;794a
	ld c,l			;794b
	cp (hl)			;794c
	ld c,l			;794d
	ret z			;794e
	ret z			;794f
	ld d,(hl)		;7950
	and h			;7951
	adc a,00bh		;7952
	ld h,d			;7954
	jr nz,l79b1h		;7955
	ld l,(hl)		;7957
	ld (bc),a		;7958
	ld b,l			;7959
	ld h,h			;795a
	defb 0ddh,002h,006h ;illegal sequence	;795b
	inc d			;795e
	cp (hl)			;795f
	ret nz			;7960
	nop			;7961
	ld a,l			;7962
	ld h,l			;7963
	ld (bc),a		;7964
	cp c			;7965
l7966h:
	inc de			;7966
	call c,0d150h		;7967
	dec l			;796a
	and e			;796b
	jp c,01408h		;796c
	ld (02308h),a		;796f
	jp nc,02392h		;7972
	call c,0eb20h		;7975
	dec b			;7978
	inc hl			;7979
	rst 30h			;797a
	ld bc,040feh		;797b
	ld b,(hl)		;797e
	ld a,b			;797f
	sub b			;7980
	ret z			;7981
	call sub_4890h		;7982
	ld d,a			;7985
	or a			;7986
	call m,sub_5a02h	;7987
l798ah:
	djnz $-33		;798a
	sbc a,e			;798c
	jr nc,l79bah		;798d
	push af			;798f
	sub d			;7990
	cpl			;7991
	ld d,(hl)		;7992
	and d			;7993
	call m,sub_4b2bh	;7994
	jp pe,0c04bh		;7997
	sub (hl)		;799a
	dec e			;799b
	jr nz,l79c2h		;799c
	cpl			;799e
	and 011h		;799f
	ret z			;79a1
	sub d			;79a2
	ld de,011d2h		;79a3
	sbc a,008h		;79a6
	ld e,b			;79a8
	cp (hl)			;79a9
	inc hl			;79aa
	ld d,(hl)		;79ab
	ret z			;79ac
	ld c,l			;79ad
	add hl,de		;79ae
	ld c,023h		;79af
l79b1h:
	dec bc			;79b1
	ld (hl),d		;79b2
	ret z			;79b3
	ld a,(de)		;79b4
	ret z			;79b5
	xor d			;79b6
	ld a,(de)		;79b7
	sub (hl)		;79b8
	ld b,c			;79b9
l79bah:
	ld e,002h		;79ba
	jr z,l79c8h		;79bc
	ld d,b			;79be
	ld hl,(09405h)		;79bf
l79c2h:
	ld (bc),a		;79c2
	call po,l5082h		;79c3
	inc (hl)		;79c6
	ld l,c			;79c7
l79c8h:
	rst 20h			;79c8
	ld b,h			;79c9
	ld a,b			;79ca
	ex af,af'		;79cb
	dec l			;79cc
	cp c			;79cd
	dec b			;79ce
	ld (bc),a		;79cf
	ld e,(hl)		;79d0
	rst 38h			;79d1
	ld h,d			;79d2
	ld (bc),a		;79d3
	rst 18h			;79d4
	nop			;79d5
	rst 38h			;79d6
	ret p			;79d7
	ld l,(hl)		;79d8
	ld b,000h		;79d9
	nop			;79db
	nop			;79dc
	ld hl,0f3e9h		;79dd
	ld (hl),00fh		;79e0
	inc hl			;79e2
	ld (hl),000h		;79e3
	ret nz			;79e5
l79e6h:
	ld (bc),a		;79e6
	call 005cfh		;79e7
sub_79eah:
	call 00100h		;79ea
	ld b,c			;79ed
	ld a,(0ffe7h)		;79ee
	and 0dfh		;79f1
	ld (00480h),a		;79f3
	xor a			;79f6
	di			;79f7
	out (099h),a		;79f8
	ld a,097h		;79fa
	ld h,b			;79fc
	ei			;79fd
	inc b			;79fe
	rlca			;79ff
sub_7a00h:
	ld (004bdh),a		;7a00
	ld b,b			;7a03
	ld a,01fh		;7a04
	ld (004ach),a		;7a06
	inc b			;7a09
	ex af,af'		;7a0a
	ld (0c029h),a		;7a0b
sub_7a0eh:
	ld a,024h		;7a0e
	rrca			;7a10
	dec b			;7a11
	or b			;7a12
	add hl,bc		;7a13
	inc b			;7a14
	call 000a5h		;7a15
	dec b			;7a18
	ld hl,l40beh		;7a19
	call 00103h		;7a1c
	call 0ef48h		;7a1f
	ld c,0cdh		;7a22
	ex af,af'		;7a24
	ld h,l			;7a25
	ld b,b			;7a26
	ld (bc),a		;7a27
	ld a,(l406eh)		;7a28
l7a2bh:
	or a			;7a2b
	jp z,0094ah		;7a2c
	add a,e			;7a2f
	ld b,l			;7a30
	call 005c3h		;7a31
	di			;7a34
	add hl,hl		;7a35
	add a,b			;7a36
	ei			;7a37
	halt			;7a38
	jp 080e6h		;7a39
	rla			;7a3c
	ld l,l			;7a3d
	ld b,b			;7a3e
	dec a			;7a3f
	jp z,l4260h		;7a40
	nop			;7a43
	ret			;7a44
	ld bc,0c500h		;7a45
	push de			;7a48
	push hl			;7a49
	exx			;7a4a
	ex af,af'		;7a4b
	ld h,c			;7a4c
	push af			;7a4d
	dec b			;7a4e
	call 01d0ch		;7a4f
	inc h			;7a52
	xor l			;7a53
	add hl,hl		;7a54
	and b			;7a55
	ld (bc),a		;7a56
	inc de			;7a57
	djnz l7a5dh		;7a58
	ld a,(0239ah)		;7a5a
l7a5dh:
	djnz $-52		;7a5d
	sub c			;7a5f
	add a,(hl)		;7a60
	ld e,a			;7a61
	ld bc,l6e32h		;7a62
	inc b			;7a65
	add a,b			;7a66
	ld d,(hl)		;7a67
	pop bc			;7a68
	pop hl			;7a69
	pop de			;7a6a
	pop bc			;7a6b
	pop af			;7a6c
	ex af,af'		;7a6d
	ld h,c			;7a6e
	exx			;7a6f
	dec b			;7a70
	ret			;7a71
	ld a,(l4676h)		;7a72
	adc a,b			;7a75
	and e			;7a76
	add a,d			;7a77
	adc a,b			;7a78
	inc b			;7a79
	ret			;7a7a
	nop			;7a7b
	ld a,(l4188h)		;7a7c
	add a,008h		;7a7f
	and 00fh		;7a81
	djnz $-80		;7a83
	sub d			;7a85
	djnz $+62		;7a86
	nop			;7a88
	ld a,(de)		;7a89
	ld bc,0c001h		;7a8a
	nop			;7a8d
	di			;7a8e
	ld hl,00038h		;7a8f
	ld de,040feh		;7a92
	ld bc,00300h		;7a95
	nop			;7a98
	ldir			;7a99
	ld hl,l40f4h		;7a9b
	ld (03904h),hl		;7a9e
	nop			;7aa1
	ld a,0c3h		;7aa2
	ld (0fb12h),a		;7aa4
	inc h			;7aa7
	ret			;7aa8
	ld hl,01114h		;7aa9
	rlca			;7aac
	di			;7aad
	jp po,00d18h		;7aae
	nop			;7ab1
	push af			;7ab2
	in a,(099h)		;7ab3
	rlca			;7ab5
	call c,sub_406fh	;7ab6
	pop af			;7ab9
	ld l,b			;7aba
	ei			;7abb
	ld b,b			;7abc
	ld a,(0f3e0h)		;7abd
	ld d,0e6h		;7ac0
	cp a			;7ac2
	ld (l5404h),a		;7ac3
	or a			;7ac6
	add a,c			;7ac7
	ld d,h			;7ac8
	djnz $+17		;7ac9
	or 042h			;7acb
	djnz l7b06h		;7acd
	nop			;7acf
	nop			;7ad0
	rst 20h			;7ad1
	nop			;7ad2
	ld a,(0c145h)		;7ad3
	or a			;7ad6
	ret nz			;7ad7
	ld a,(014deh)		;7ad8
	ld b,c			;7adb
	dec a			;7adc
	ld (00703h),a		;7add
	rst 18h			;7ae0
	ld h,b			;7ae1
	ld b,c			;7ae2
	ld b,021h		;7ae3
	ret po			;7ae5
	ld b,c			;7ae6
	nop			;7ae7
	ld de,l4210h		;7ae8
	ld b,030h		;7aeb
	call sub_41b3h		;7aed
	inc b			;7af0
	inc hl			;7af1
	inc de			;7af2
	djnz $-5		;7af3
	ld hl,0110bh		;7af5
	ld b,e			;7af8
	ld b,b			;7af9
	ld c,010h		;7afa
	ld a,(hl)		;7afc
	add a,a			;7afd
	nop			;7afe
	nop			;7aff
	inc hl			;7b00
	inc hl			;7b01
	ld c,(hl)		;7b02
	add a,c			;7b03
	dec hl			;7b04
	ld c,(hl)		;7b05
l7b06h:
	add a,h			;7b06
	dec b			;7b07
	ld (de),a		;7b08
	inc de			;7b09
	ld a,c			;7b0a
	ld (bc),a		;7b0b
	djnz l7b2eh		;7b0c
	call pe,01821h		;7b0e
	call 002e9h		;7b11
	ld a,(0982ah)		;7b14
	jp 0033eh		;7b17
	im 0			;7b1a
	ld a,(bc)		;7b1c
	dec b			;7b1d
	ld c,d			;7b1e
	sub d			;7b1f
	ld b,(hl)		;7b20
	ld d,d			;7b21
	ld b,050h		;7b22
	dec (hl)		;7b24
	nop			;7b25
l7b26h:
	xor a			;7b26
l7b27h:
	inc hl			;7b27
	djnz l7b27h		;7b28
	ret			;7b2a
	ld a,(de)		;7b2b
	cp (hl)			;7b2c
	rrca			;7b2d
l7b2eh:
	ret z			;7b2e
l7b2fh:
	inc a			;7b2f
	ld (de),a		;7b30
	ret			;7b31
	ld h,b			;7b32
	ld l,b			;7b33
l7b34h:
	dec de			;7b34
	ld a,(hl)		;7b35
	dec a			;7b36
	ld (bc),a		;7b37
	cp 0ffh			;7b38
	jr nz,l7b3dh		;7b3a
	xor a			;7b3c
l7b3dh:
	ld (hl),a		;7b3d
	ld (0f50eh),hl		;7b3e
	call sub_4175h		;7b41
	jr c,l7b4ah		;7b44
	ret			;7b46
	ld a,(bc)		;7b47
	ld a,(bc)		;7b48
	xor l			;7b49
l7b4ah:
	ld a,(hl)		;7b4a
	ld (bc),a		;7b4b
	rlca			;7b4c
	nop			;7b4d
	ld a,a			;7b4e
	nop			;7b4f
	nop			;7b50
	inc (hl)		;7b51
	xor a			;7b52
	ld c,h			;7b53
	ld hl,0becdh		;7b54
	ld bc,l64cah		;7b57
	ld b,d			;7b5a
	ld (hl),a		;7b5b
	ld a,(l4275h)		;7b5c
	add a,e			;7b5f
	ld b,e			;7b60
	halt			;7b61
	inc bc			;7b62
	inc d			;7b63
	and e			;7b64
	add a,a			;7b65
	adc a,b			;7b66
	xor a			;7b67
l7b68h:
	ret nc			;7b68
	ret z			;7b69
	and c			;7b6a
	ret po			;7b6b
	ld hl,024deh		;7b6c
	ld b,l			;7b6f
	ld de,0279bh		;7b70
	ld bc,09730h		;7b73
	jr z,l7b26h		;7b76
	adc a,h			;7b78
	rst 0			;7b79
	ld (0df32h),hl		;7b7a
	cp c			;7b7d
	ld hl,(03202h)		;7b7e
	ld hl,(0029eh)		;7b81
	ld b,l			;7b84
	ld hl,l463eh		;7b85
	adc a,b			;7b88
	ld d,b			;7b89
	jp 0a112h		;7b8a
	set 4,c			;7b8d
	ld c,004h		;7b8f
	ld b,l			;7b91
	ld b,h			;7b92
	call 0020ah		;7b93
	sub l			;7b96
	inc d			;7b97
	ld b,e			;7b98
	call 00578h		;7b99
	ld a,(de)		;7b9c
	call 0534ah		;7b9d
	inc d			;7ba0
	cp h			;7ba1
	ld b,(hl)		;7ba2
	sub 085h		;7ba3
	ld b,h			;7ba5
	xor 000h		;7ba6
	rst 10h			;7ba8
	ld b,d			;7ba9
	cp 02eh			;7baa
	jp z,0cf12h		;7bac
	ld b,d			;7baf
	ret nc			;7bb0
	call c,0b982h		;7bb1
	ld b,c			;7bb4
	ret			;7bb5
	call p,00885h		;7bb6
	call p,0c92ah		;7bb9
	jp z,09e98h		;7bbc
	cp c			;7bbf
	jr nc,l7be6h		;7bc0
l7bc2h:
	cp 096h			;7bc2
	nop			;7bc4
	ret nc			;7bc5
	ld a,(l42ddh)		;7bc6
	or a			;7bc9
	jp nz,l4303h		;7bca
	sbc a,d			;7bcd
	in a,(006h)		;7bce
	inc bc			;7bd0
	ret nz			;7bd1
	ld a,r			;7bd2
	and 03fh		;7bd4
	ret nz			;7bd6
	jr nz,l7c01h		;7bd7
	ld (de),a		;7bd9
	add a,(hl)		;7bda
	sub h			;7bdb
	sbc a,045h		;7bdc
	ld hl,01502h		;7bde
	ld b,e			;7be1
	inc a			;7be2
	and 0e4h		;7be3
	ld d,e			;7be5
l7be6h:
	dec b			;7be6
	or h			;7be7
	add a,(hl)		;7be8
	ld b,d			;7be9
	inc a			;7bea
	ld (de),a		;7beb
	ld b,h			;7bec
	and e			;7bed
	dec h			;7bee
	ld c,h			;7bef
sub_7bf0h:
	ld b,e			;7bf0
	inc bc			;7bf1
	dec a			;7bf2
	inc bc			;7bf3
	ld h,c			;7bf4
	ld b,h			;7bf5
	inc bc			;7bf6
	ld c,e			;7bf7
	ld b,e			;7bf8
	ld l,b			;7bf9
	and b			;7bfa
	add a,014h		;7bfb
	ld (l435ah),a		;7bfd
	inc h			;7c00
l7c01h:
	ld (00269h),a		;7c01
	ld a,b			;7c04
	ld (bc),a		;7c05
	add a,a			;7c06
	ld b,h			;7c07
	ld b,e			;7c08
	call nc,0ac43h		;7c09
	rst 30h			;7c0c
l7c0dh:
	and c			;7c0d
	sub 065h		;7c0e
	ld b,0cbh		;7c10
	ld (hl),h		;7c12
	ld b,08ah		;7c13
	ld c,l			;7c15
	ld d,c			;7c16
	jr c,$+35		;7c17
	add a,e			;7c19
	ld a,(bc)		;7c1a
	ld bc,000ach		;7c1b
	ld e,c			;7c1e
	inc bc			;7c1f
	cp (hl)			;7c20
	nop			;7c21
l7c22h:
	ld e,d			;7c22
	adc a,h			;7c23
	ld d,c			;7c24
	nop			;7c25
	ld (de),a		;7c26
	add a,d			;7c27
l7c28h:
	jr l7bc2h		;7c28
	ld (hl),h		;7c2a
	cp l			;7c2b
	ld c,014h		;7c2c
	push hl			;7c2e
	ld c,0d1h		;7c2f
	ld c,0d3h		;7c31
	dec d			;7c33
	ld c,098h		;7c34
	and l			;7c36
	sub 032h		;7c37
	ld c,036h		;7c39
	jr z,l7c4bh		;7c3b
	call nz,0c8a4h		;7c3d
l7c40h:
	or e			;7c40
	ld h,c			;7c41
	sub h			;7c42
l7c43h:
	ld b,e			;7c43
	pop bc			;7c44
	ld c,b			;7c45
	sub e			;7c46
	adc a,h			;7c47
	sub (hl)		;7c48
	add hl,hl		;7c49
	inc bc			;7c4a
l7c4bh:
	ld (00905h),a		;7c4b
	sub d			;7c4e
	add a,(hl)		;7c4f
	ld (de),a		;7c50
l7c51h:
	ld (00803h),a		;7c51
	cp 00ah			;7c54
	jp z,004bbh		;7c56
	inc bc			;7c59
	jp z,0c141h		;7c5a
	inc b			;7c5d
	nop			;7c5e
	jp z,l43cch		;7c5f
	halt			;7c62
	inc b			;7c63
	inc b			;7c64
	ld b,h			;7c65
	jp 08ac4h		;7c66
	ld b,b			;7c69
	ld b,044h		;7c6a
	ld bc,0029ah		;7c6c
	sub b			;7c6f
	call z,0dec3h		;7c70
	and d			;7c73
	inc b			;7c74
	out (0a3h),a		;7c75
	jr c,l7c51h		;7c77
	jp 00a08h		;7c79
	inc d			;7c7c
	ld b,h			;7c7d
	rst 0			;7c7e
	and h			;7c7f
	rlca			;7c80
	inc d			;7c81
	rst 10h			;7c82
	or e			;7c83
	di			;7c84
	ld l,024h		;7c85
	ld c,046h		;7c87
	di			;7c89
	cp b			;7c8a
	ld b,h			;7c8b
	or 030h			;7c8c
	sub c			;7c8e
	add a,c			;7c8f
	ld (hl),a		;7c90
	add a,d			;7c91
	ld c,b			;7c92
	djnz l7c43h		;7c93
	or (hl)			;7c95
	ld (bc),a		;7c96
	ret z			;7c97
	ld a,(l4409h)		;7c98
	adc a,e			;7c9b
	ld d,(hl)		;7c9c
	dec b			;7c9d
	add a,b			;7c9e
	ld (hl),h		;7c9f
	ex af,af'		;7ca0
	ld b,h			;7ca1
	ld b,a			;7ca2
	ld a,(l4442h)		;7ca3
	jr z,l7c28h		;7ca6
	ld (l6e03h),a		;7ca8
	call z,09839h		;7cab
	inc b			;7cae
	ld (hl),b		;7caf
	inc b			;7cb0
	ld hl,00cb5h		;7cb1
	ld l,h			;7cb4
	add hl,bc		;7cb5
	ld l,h			;7cb6
	sbc a,b			;7cb7
	rra			;7cb8
	cpd			;7cb9
	ld e,(hl)		;7cbb
	inc b			;7cbc
	call po,02151h		;7cbd
	ld l,c			;7cc0
	ld b,h			;7cc1
	push af			;7cc2
	add hl,de		;7cc3
	or l			;7cc4
	ld a,(de)		;7cc5
	jp z,l5730h		;7cc6
	ld b,h			;7cc9
	ld (hl),a		;7cca
	ld e,h			;7ccb
	ld b,h			;7ccc
	jr nc,l7d09h		;7ccd
	ld b,h			;7ccf
	ld b,a			;7cd0
	rrca			;7cd1
	ld (005a9h),a		;7cd2
	ld b,a			;7cd5
	cp e			;7cd6
	ld (0a5bch),hl		;7cd7
	inc bc			;7cda
	sub d			;7cdb
	inc b			;7cdc
	ld b,d			;7cdd
	inc bc			;7cde
	or h			;7cdf
	push hl			;7ce0
	ld h,b			;7ce1
	inc e			;7ce2
	nop			;7ce3
	rla			;7ce4
	adc a,l			;7ce5
	call p,02134h		;7ce6
	rst 10h			;7ce9
	ld (0ea21h),a		;7cea
	pop hl			;7ced
l7ceeh:
	dec b			;7cee
	defb 0fdh,005h,0a1h ;illegal sequence	;7cef
	ld b,0ffh		;7cf2
	ld hl,007d3h		;7cf4
	inc h			;7cf7
	push bc			;7cf8
	ld h,e			;7cf9
	push de			;7cfa
	dec b			;7cfb
	or l			;7cfc
	daa			;7cfd
	ld b,h			;7cfe
	ld b,015h		;7cff
	and 00dh		;7d01
	ld c,0e8h		;7d03
	dec c			;7d05
	sbc a,h			;7d06
	ld sp,hl		;7d07
	dec c			;7d08
l7d09h:
	dec (hl)		;7d09
	ei			;7d0a
	dec c			;7d0b
	ret			;7d0c
	jp pe,l7750h		;7d0d
	ret nz			;7d10
	inc hl			;7d11
	nop			;7d12
	ld a,(hl)		;7d13
	dec hl			;7d14
	ld (hl),a		;7d15
	ld de,00008h		;7d16
	add hl,de		;7d19
	ld a,(hl)		;7d1a
	dec a			;7d1b
	add a,b			;7d1c
	ld (hl),a		;7d1d
	rrca			;7d1e
	dec d			;7d1f
	dec (hl)		;7d20
	call p,02883h		;7d21
	jr z,l7ceeh		;7d24
	ld l,l			;7d26
	nop			;7d27
	rst 8			;7d28
	nop			;7d29
	ld d,a			;7d2a
	nop			;7d2b
	dec b			;7d2c
	nop			;7d2d
	ld l,b			;7d2e
	ld b,06dh		;7d2f
	ld d,016h		;7d31
	ld (03240h),a		;7d33
	ld (de),a		;7d36
	ld b,a			;7d37
	inc bc			;7d38
	jp nc,07000h		;7d39
	rl d			;7d3c
	ld bc,00212h		;7d3e
	ex af,af'		;7d41
	ex af,af'		;7d42
	ld e,01eh		;7d43
	ld (de),a		;7d45
	nop			;7d46
	ld c,h			;7d47
	inc bc			;7d48
	call l6100h		;7d49
	nop			;7d4c
	inc b			;7d4d
	nop			;7d4e
	ld b,a			;7d4f
	inc bc			;7d50
	sub e			;7d51
	nop			;7d52
	jr nc,l7d9ah		;7d53
	ld b,028h		;7d55
	ld d,(hl)		;7d57
	ld l,023h		;7d58
	ld e,(hl)		;7d5a
	sub b			;7d5b
	nop			;7d5c
	inc hl			;7d5d
	push de			;7d5e
	call sub_45c4h		;7d5f
	pop de			;7d62
	in a,(098h)		;7d63
	adc a,b			;7d65
	rst 8			;7d66
	daa			;7d67
	ld b,l			;7d68
	or b			;7d69
	push de			;7d6a
	jp nz,0a02dh		;7d6b
	pop af			;7d6e
	xor b			;7d6f
	ld b,l			;7d70
	nop			;7d71
	ld a,c			;7d72
	out (098h),a		;7d73
	djnz $-28		;7d75
	ret			;7d77
	inc d			;7d78
	jr c,l7d7bh		;7d79
l7d7bh:
	ret po			;7d7b
	dec d			;7d7c
	inc c			;7d7d
	ret nc			;7d7e
	ld d,023h		;7d7f
	call z,00017h		;7d81
	rla			;7d84
	ret nc			;7d85
	add hl,de		;7d86
	ld b,b			;7d87
	ret po			;7d88
	ld a,(de)		;7d89
	ld c,h			;7d8a
	ret po			;7d8b
	dec bc			;7d8c
	inc e			;7d8d
	inc l			;7d8e
	ret nc			;7d8f
	dec e			;7d90
	add a,(hl)		;7d91
	add a,b			;7d92
	rra			;7d93
	ld e,a			;7d94
	ret nc			;7d95
	jr nz,l7dedh		;7d96
l7d98h:
	defb 0edh ;next byte illegal after ed	;7d98
	nop			;7d99
l7d9ah:
	ld (0e06ah),hl		;7d9a
	inc h			;7d9d
	ld e,b			;7d9e
	call c,sub_4a26h	;7d9f
	nop			;7da2
	call 03728h		;7da3
	ret nc			;7da6
	ld hl,(0e00fh)		;7da7
	inc l			;7daa
	nop			;7dab
	ld d,(hl)		;7dac
	call pe,0142eh		;7dad
	ret nc			;7db0
	jr nc,l7dcch		;7db1
	ret nz			;7db3
	nop			;7db4
	ld (0dc3fh),a		;7db5
	inc (hl)		;7db8
	ld hl,(036edh)		;7db9
	djnz l7dc8h		;7dbc
	defb 0edh ;next byte illegal after ed	;7dbe
	jr c,l7df3h		;7dbf
	call c,001eeh		;7dc1
	ret nz			;7dc4
	inc a			;7dc5
	jr nz,l7d98h		;7dc6
l7dc8h:
	ld a,03bh		;7dc8
	inc de			;7dca
	ld b,b			;7dcb
l7dcch:
	ld l,09ch		;7dcc
	nop			;7dce
	jr z,$-46		;7dcf
	ld b,h			;7dd1
	ld l,d			;7dd2
	ret nz			;7dd3
	ld b,l			;7dd4
	ld e,d			;7dd5
	nop			;7dd6
	ld b,(ix+044h)		;7dd7
	ret po			;7dda
	ld b,a			;7ddb
	ld h,b			;7ddc
	in c,(c)		;7ddd
	add a,b			;7ddf
	ex af,af'		;7de0
	ld c,c			;7de1
	ld d,l			;7de2
	ret nz			;7de3
	ld c,d			;7de4
	rra			;7de5
	ret nc			;7de6
	ex af,af'		;7de7
	ld c,e			;7de8
	ld c,(hl)		;7de9
	call pe,01d4ch		;7dea
l7dedh:
	ld c,l			;7ded
	ld h,h			;7dee
	nop			;7def
	ret nc			;7df0
	ld c,(hl)		;7df1
	dec (hl)		;7df2
l7df3h:
	ret nz			;7df3
	ld c,a			;7df4
	ld l,h			;7df5
	ret nc			;7df6
	ld d,b			;7df7
	inc bc			;7df8
	inc e			;7df9
	ret po			;7dfa
	xor a			;7dfb
	rlc d			;7dfc
	rla			;7dfe
	ld (bc),a		;7dff
	ld d,(hl)		;7e00
	ld a,(09801h)		;7e01
l7e04h:
	ld l,d			;7e04
	adc a,(hl)		;7e05
	inc bc			;7e06
	ld b,e			;7e07
	ld a,e			;7e08
	ld (bc),a		;7e09
	ld a,d			;7e0a
	or 040h			;7e0b
	and b			;7e0d
	scf			;7e0e
	dec de			;7e0f
	push hl			;7e10
	adc a,0bah		;7e11
	sub d			;7e13
	ld b,000h		;7e14
	dec b			;7e16
	nop			;7e17
	ld c,b			;7e18
	inc bc			;7e19
	nop			;7e1a
	ld bc,00500h		;7e1b
	ld (bc),a		;7e1e
	ld (hl),l		;7e1f
	nop			;7e20
	ex af,af'		;7e21
	add a,d			;7e22
	dec hl			;7e23
	nop			;7e24
	adc a,h			;7e25
	inc bc			;7e26
	ld a,(de)		;7e27
l7e28h:
	ld c,c			;7e28
	ld (bc),a		;7e29
	nop			;7e2a
	inc bc			;7e2b
	ld bc,00004h		;7e2c
	ld (hl),e		;7e2f
	ld (de),a		;7e30
	cpl			;7e31
	and 007h		;7e32
	cp c			;7e34
	inc de			;7e35
	dec bc			;7e36
	and h			;7e37
	and b			;7e38
	add a,0a5h		;7e39
	add hl,de		;7e3b
	rlca			;7e3c
	nop			;7e3d
	cpl			;7e3e
	defb 0edh ;next byte illegal after ed	;7e3f
sub_7e40h:
	nop			;7e40
	ld sp,hl		;7e41
	sbc a,a			;7e42
	nop			;7e43
	rst 38h			;7e44
	ret p			;7e45
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
l7ed9h:
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
sub_7f3eh:
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
