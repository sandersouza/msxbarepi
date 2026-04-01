; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank01.asm /tmp/smanbow2_bank_01.bin

	org 04000h

	nop			;4000
	ld h,b			;4001
	nop			;4002
	nop			;4003
	ld a,l			;4004
	sbc a,c			;4005
	nop			;4006
	ret nz			;4007
	ld (de),a		;4008
	ld hl,01300h		;4009
	ld (00000h),a		;400c
	ld (02102h),hl		;400f
	ld bc,03223h		;4012
	ld (de),a		;4015
	ld e,022h		;4016
	nop			;4018
	nop			;4019
	dec de			;401a
	ld h,b			;401b
	ld bc,02211h		;401c
	djnz l4021h		;401f
l4021h:
	inc hl			;4021
	ld de,00200h		;4022
	djnz l4049h		;4025
	ld e,01eh		;4027
	jr nz,$+9		;4029
	ld a,(bc)		;402b
	nop			;402c
	jr z,l4048h		;402d
	add a,h			;402f
	inc c			;4030
	ld bc,01001h		;4031
	ex af,af'		;4034
	ld c,b			;4035
	nop			;4036
	adc a,c			;4037
	sub h			;4038
	ld b,h			;4039
	ld b,h			;403a
	adc a,c			;403b
	sbc a,c			;403c
	adc a,b			;403d
	adc a,b			;403e
	ld bc,08889h		;403f
	sbc a,c			;4042
	ld c,h			;4043
	ld b,h			;4044
	ld c,b			;4045
	sbc a,c			;4046
	rrca			;4047
l4048h:
	dec (hl)		;4048
l4049h:
	sbc a,b			;4049
	rrca			;404a
	adc a,c			;404b
	rrca			;404c
l404dh:
	and l			;404d
	add a,h			;404e
	call nz,0000fh		;404f
	rst 30h			;4052
	pop de			;4053
	ld b,e			;4054
	ld d,(hl)		;4055
	inc hl			;4056
	ld (01285h),hl		;4057
	ld (0174bh),hl		;405a
	inc hl			;405d
	ld de,00b21h		;405e
	ld a,(de)		;4061
	sub d			;4062
	sub c			;4063
	ld l,e			;4064
l4065h:
	ld hl,(00131h)		;4065
	ld h,l			;4068
	ld l,b			;4069
	inc e			;406a
	and e			;406b
	ld h,a			;406c
	ld (hl),l		;406d
	ld sp,00700h		;406e
	cp d			;4071
	ld a,h			;4072
	or c			;4073
	ld (l422bh),a		;4074
	ld (de),a		;4077
	ld a,(de)		;4078
	ld bc,09822h		;4079
	ld (hl),l		;407c
	ld d,d			;407d
l407eh:
	ld c,h			;407e
	ld (hl),a		;407f
	ld (hl),h		;4080
	adc a,b			;4081
	ld l,(hl)		;4082
	rla			;4083
	sub h			;4084
	call z,sub_75c4h	;4085
	rrca			;4088
	ex af,af'		;4089
	ld c,b			;408a
	add a,b			;408b
	sbc a,b			;408c
	sbc a,b			;408d
	ld (bc),a		;408e
	ld c,h			;408f
	rst 8			;4090
	rrca			;4091
	ld a,a			;4092
	cp (hl)			;4093
	ld c,a			;4094
	ld c,c			;4095
	ld (de),a		;4096
	ld d,l			;4097
	ld (02269h),a		;4098
	ld c,e			;409b
	adc a,h			;409c
	jr nc,l410bh		;409d
	jp p,l4b1ah		;409f
	add hl,de		;40a2
	rla			;40a3
	djnz $+126		;40a4
	inc de			;40a6
	ld bc,02303h		;40a7
	ld hl,02113h		;40aa
	rra			;40ad
	dec sp			;40ae
	nop			;40af
	rlca			;40b0
	ld c,c			;40b1
	ld (de),a		;40b2
	add a,e			;40b3
	adc a,d			;40b4
	inc d			;40b5
	xor e			;40b6
	ld h,h			;40b7
	or h			;40b8
	sub c			;40b9
	or h			;40ba
	ld l,c			;40bb
	ld (hl),l		;40bc
	call nz,0e744h		;40bd
	inc e			;40c0
	inc l			;40c1
	ld c,h			;40c2
	rlca			;40c3
	ex af,af'		;40c4
	pop af			;40c5
	rrca			;40c6
	jr z,l404dh		;40c7
	call z,0ff0fh		;40c9
	call m,sub_610ah	;40cc
	call m,09a38h		;40cf
	add a,e			;40d2
	ld c,d			;40d3
	ld c,d			;40d4
	ld hl,023e1h		;40d5
	ld hl,0c8feh		;40d8
	sub c			;40db
	inc hl			;40dc
	or c			;40dd
	ld h,e			;40de
	ld h,l			;40df
	jr nz,l4065h		;40e0
	ld (de),a		;40e2
	ld (032a2h),a		;40e3
	ld (hl),a		;40e6
	halt			;40e7
	djnz l40f1h		;40e8
	ld bc,01245h		;40ea
	or e			;40ed
	nop			;40ee
	ld c,l			;40ef
	sbc a,b			;40f0
l40f1h:
	or c			;40f1
	inc d			;40f2
	inc c			;40f3
	adc a,c			;40f4
	jp c,l6f75h		;40f5
	add a,b			;40f8
	ld d,d			;40f9
	ld a,a			;40fa
	ld d,d			;40fb
	call z,08907h		;40fc
	inc h			;40ff
	adc a,h			;4100
	adc a,l			;4101
	ld (hl),d		;4102
	call z,08c0fh		;4103
	dec h			;4106
sub_4107h:
	call nz,088cch		;4107
	dec h			;410a
l410bh:
	rst 38h			;410b
	rst 28h			;410c
	adc a,d			;410d
	jp nc,02981h		;410e
	push de			;4111
	ld (bc),a		;4112
	ld (bc),a		;4113
	ld (02320h),a		;4114
	add a,l			;4117
	ld b,c			;4118
	jr nz,l412eh		;4119
	ld (0e41ah),hl		;411b
	ld (03129h),hl		;411e
	djnz l4140h		;4121
	ld bc,l7012h		;4123
	adc a,c			;4126
	inc hl			;4127
	ld (hl),a		;4128
	ld hl,019edh		;4129
	rlca			;412c
	sub c			;412d
l412eh:
	rst 30h			;412e
	ld d,c			;412f
	rlca			;4130
	sub e			;4131
	ld (hl),013h		;4132
	ld a,(hl)		;4134
	ld a,h			;4135
	ld d,e			;4136
	ld (de),a		;4137
	ld (de),a		;4138
	ld a,a			;4139
	ld b,h			;413a
	ld a,a			;413b
	ld c,b			;413c
	adc a,b			;413d
	add a,h			;413e
	ld a,c			;413f
l4140h:
	sub h			;4140
	add a,h			;4141
	and e			;4142
	ex af,af'		;4143
	add a,l			;4144
	adc a,c			;4145
	or 0aeh			;4146
	ld (hl),a		;4148
	rrca			;4149
	add hl,de		;414a
l414bh:
	call nz,0000fh		;414b
	rst 30h			;414e
	dec d			;414f
	inc de			;4150
	ld bc,0ce50h		;4151
	dec h			;4154
	sub 020h		;4155
	ld (02323h),hl		;4157
	sub c			;415a
	dec bc			;415b
	ld (0e2feh),a		;415c
l415fh:
	ld (bc),a		;415f
	ld d,d			;4160
	djnz l414bh		;4161
	ld b,l			;4163
	sbc a,b			;4164
	dec de			;4165
	ld (de),a		;4166
	jr nz,$+18		;4167
	rlca			;4169
	ld sp,04b9fh		;416a
	add hl,bc		;416d
	rlca			;416e
	ld e,e			;416f
	ld (0f807h),hl		;4170
	ld (de),a		;4173
	inc sp			;4174
	add a,b			;4175
	ld (hl),c		;4176
	ld (de),a		;4177
	cp 048h			;4178
	djnz l41c3h		;417a
	sbc a,b			;417c
	rst 38h			;417d
	inc h			;417e
	sub h			;417f
	ld c,h			;4180
	ld l,d			;4181
	sbc a,b			;4182
	ld d,0c4h		;4183
	add a,h			;4185
	add a,h			;4186
	inc b			;4187
	rrca			;4188
	adc a,005h		;4189
	sbc a,c			;418b
	rrca			;418c
	ld d,e			;418d
	adc a,c			;418e
	rst 38h			;418f
	ret m			;4190
	dec hl			;4191
	ld (de),a		;4192
	ld a,(hl)		;4193
	ld b,a			;4194
	ld h,h			;4195
	ex de,hl		;4196
	adc a,d			;4197
	jp po,l6bffh		;4198
	dec bc			;419b
	jr l415fh		;419c
	sub b			;419e
	ld a,(hl)		;419f
	or e			;41a0
	sub d			;41a1
	ld c,l			;41a2
	ex de,hl		;41a3
	ld sp,hl		;41a4
	ld d,077h		;41a5
	ld c,c			;41a7
	and c			;41a8
	and l			;41a9
	daa			;41aa
	rlca			;41ab
	ld a,e			;41ac
	ld a,a			;41ad
	adc a,c			;41ae
	inc (hl)		;41af
	sbc a,l			;41b0
	adc a,e			;41b1
	ld (de),a		;41b2
l41b3h:
	cp c			;41b3
	add hl,hl		;41b4
	dec b			;41b5
	ld l,a			;41b6
	call z,0a470h		;41b7
	sbc a,h			;41ba
	call nz,0a5fah		;41bb
	rst 30h			;41be
	inc d			;41bf
	rst 38h			;41c0
	sbc a,h			;41c1
	rrca			;41c2
l41c3h:
	ld b,l			;41c3
	ei			;41c4
	rrca			;41c5
	or e			;41c6
	add a,(hl)		;41c7
	sub e			;41c8
	rst 38h			;41c9
	ret m			;41ca
	ld (de),a		;41cb
	add a,02dh		;41cc
	ret nz			;41ce
	call nc,01112h		;41cf
	ld e,c			;41d2
	jr nc,l41b3h		;41d3
	adc a,c			;41d5
	rst 38h			;41d6
	adc a,b			;41d7
	add a,b			;41d8
	ld (0f0feh),hl		;41d9
	and (hl)		;41dc
	ld l,h			;41dd
	adc a,(hl)		;41de
	ret z			;41df
	ld l,(hl)		;41e0
	jp pe,0e9c9h		;41e1
	sub 032h		;41e4
	dec bc			;41e6
	dec sp			;41e7
	ld (09c07h),a		;41e8
	add a,b			;41eb
	adc a,c			;41ec
	cp 022h			;41ed
	xor (hl)		;41ef
	ld h,l			;41f0
	sbc a,a			;41f1
	push hl			;41f2
	xor a			;41f3
	ld d,d			;41f4
	defb 0edh ;next byte illegal after ed	;41f5
	ld c,(hl)		;41f6
	cp 0d1h			;41f7
	ld a,a			;41f9
	dec b			;41fa
	ld c,c			;41fb
	sbc a,b			;41fc
l41fdh:
	xor 02bh		;41fd
l41ffh:
	call p,0fe29h		;41ff
	dec hl			;4202
	add a,h			;4203
	dec de			;4204
	rrca			;4205
	rst 0			;4206
	nop			;4207
	sbc a,088h		;4208
	xor (hl)		;420a
	and e			;420b
	dec d			;420c
	ld c,c			;420d
	ld (bc),a		;420e
	or e			;420f
	ld h,l			;4210
	xor (hl)		;4211
	cp c			;4212
	ld e,(hl)		;4213
	adc a,e			;4214
	ld c,c			;4215
	call m,sub_516fh	;4216
	di			;4219
	add a,b			;421a
	inc l			;421b
	ld c,h			;421c
	jp (hl)			;421d
	ld de,0a1a3h		;421e
	rlca			;4221
	cp d			;4222
	sub (hl)		;4223
	ld c,d			;4224
	or l			;4225
	and h			;4226
	ex af,af'		;4227
	nop			;4228
	adc a,d			;4229
	ld d,d			;422a
l422bh:
	xor a			;422b
	daa			;422c
	ld de,027e8h		;422d
	defb 0fdh,013h,089h ;illegal sequence	;4230
	push af			;4233
	sbc a,c			;4234
	ld l,h			;4235
	rlca			;4236
	dec d			;4237
	sub h			;4238
	adc a,c			;4239
	ld c,a			;423a
	cp 0adh			;423b
	adc a,e			;423d
	ld l,a			;423e
	rrca			;423f
	rra			;4240
	ld a,(hl)		;4241
	ld a,h			;4242
	ld (hl),l		;4243
	adc a,b			;4244
	and a			;4245
	jr c,l41fdh		;4246
	inc h			;4248
	dec (hl)		;4249
	ret z			;424a
	xor l			;424b
	xor d			;424c
	ld c,h			;424d
	cp 03bh			;424e
	sub d			;4250
	ld e,e			;4251
	ld bc,0c597h		;4252
	ld l,d			;4255
	ret pe			;4256
	dec d			;4257
	ex de,hl		;4258
	and (hl)		;4259
	inc c			;425a
	dec e			;425b
	ld (bc),a		;425c
	inc sp			;425d
	rlca			;425e
	sbc a,095h		;425f
	ld c,d			;4261
	rlca			;4262
	djnz l41ffh		;4263
	ret			;4265
	adc a,a			;4266
	jp z,0803fh		;4267
	dec hl			;426a
	ei			;426b
	jp z,l5883h		;426c
	ret p			;426f
	srl a			;4270
	ld c,a			;4272
	and 0fah		;4273
	nop			;4275
	ld de,0f244h		;4276
	push bc			;4279
	or h			;427a
	push de			;427b
	or l			;427c
	sub d			;427d
	xor l			;427e
	cp (hl)			;427f
	ld a,a			;4280
	inc c			;4281
	ld hl,0a87ch		;4282
	ld h,a			;4285
	ld (bc),a		;4286
	rst 20h			;4287
	and l			;4288
	jp (hl)			;4289
	add hl,hl		;428a
	ld l,b			;428b
	jp pe,010c7h		;428c
	rlca			;428f
	add a,(hl)		;4290
	ld a,b			;4291
	ld c,d			;4292
	ld a,a			;4293
	ld (bc),a		;4294
	or d			;4295
	dec hl			;4296
	add a,a			;4297
	ld a,e			;4298
	ccf			;4299
	xor l			;429a
	add a,l			;429b
	rst 18h			;429c
	ccf			;429d
	ld c,a			;429e
	sbc a,d			;429f
	rst 38h			;42a0
	ld a,099h		;42a1
	or b			;42a3
	ld c,l			;42a4
	jp 0cc42h		;42a5
	ld c,h			;42a8
	or l			;42a9
	cp b			;42aa
	ld h,e			;42ab
	sbc a,c			;42ac
	or b			;42ad
	ld l,c			;42ae
	sub d			;42af
	call m,0fb23h		;42b0
	ld (0a7deh),hl		;42b3
	ld (bc),a		;42b6
	ret p			;42b7
	adc a,h			;42b8
	jp (hl)			;42b9
	call z,04ea0h		;42ba
	rlca			;42bd
	push hl			;42be
	ei			;42bf
	add hl,hl		;42c0
	ld d,087h		;42c1
	ld de,08d31h		;42c3
	ld d,033h		;42c6
	add hl,bc		;42c8
	jp (hl)			;42c9
	or h			;42ca
	xor 0aeh		;42cb
	ld b,h			;42cd
	ld a,a			;42ce
	ld e,a			;42cf
	ld b,h			;42d0
	ld c,a			;42d1
l42d2h:
	scf			;42d2
	nop			;42d3
l42d4h:
	ret nc			;42d4
	add a,h			;42d5
	push bc			;42d6
	ret nz			;42d7
	or e			;42d8
	cp (hl)			;42d9
	inc bc			;42da
	ex af,af'		;42db
	add a,h			;42dc
	ld c,b			;42dd
	cp b			;42de
	jp c,0eafch		;42df
	sub c			;42e2
	jp nc,l6881h		;42e3
	jp m,0e7cah		;42e6
	dec l			;42e9
	and b			;42ea
	jr z,l42d2h		;42eb
	ld c,e			;42ed
	ld (de),a		;42ee
	ld (hl),a		;42ef
	inc de			;42f0
	ld a,h			;42f1
	rlca			;42f2
	jp 00619h		;42f3
	inc sp			;42f6
	sub d			;42f7
	add hl,de		;42f8
	and b			;42f9
	sub d			;42fa
	and (hl)		;42fb
	ld a,d			;42fc
	ccf			;42fd
	inc sp			;42fe
	adc a,b			;42ff
	ccf			;4300
	ld c,a			;4301
	push hl			;4302
	and a			;4303
	cp 0a9h			;4304
	sub h			;4306
	xor c			;4307
	dec hl			;4308
	inc (hl)		;4309
	jp nz,0b089h		;430a
	sub d			;430d
	call m,09ddbh		;430e
	ei			;4311
	and d			;4312
	ld a,c			;4313
	ret p			;4314
	call nz,08b93h		;4315
	jp pe,l52a1h		;4318
	jp m,0908ah		;431b
	and h			;431e
	ret m			;431f
	jp (hl)			;4320
	rlca			;4321
sub_4322h:
	ld hl,0c8b2h		;4322
	add hl,sp		;4325
	jp nc,0eea9h		;4326
	ld (hl),e		;4329
	ret m			;432a
	sub d			;432b
	jp m,0e138h		;432c
	ccf			;432f
	adc a,b			;4330
	ccf			;4331
	cp a			;4332
	ld c,a			;4333
	inc l			;4334
	add a,b			;4335
	cp l			;4336
	ld a,e			;4337
	xor (hl)		;4338
	ld (hl),d		;4339
	and (hl)		;433a
	inc (hl)		;433b
	add a,h			;433c
	xor h			;433d
	ld h,l			;433e
	ld b,h			;433f
	dec b			;4340
	or b			;4341
	or (hl)			;4342
	ld (de),a		;4343
	rst 0			;4344
	sub e			;4345
	dec c			;4346
	sub h			;4347
l4348h:
	inc h			;4348
	add a,c			;4349
	adc a,h			;434a
	adc a,b			;434b
	adc a,h			;434c
	ret m			;434d
	sbc a,e			;434e
	push af			;434f
	rlca			;4350
	cp c			;4351
	rst 30h			;4352
	sub c			;4353
	ld (bc),a		;4354
	cp 08eh			;4355
	sub h			;4357
	cpl			;4358
	ld l,l			;4359
	jp (hl)			;435a
	ld (hl),c		;435b
	ld l,d			;435c
	adc a,h			;435d
	dec b			;435e
	xor (hl)		;435f
	sub h			;4360
	rrca			;4361
	ld a,04fh		;4362
	cpl			;4364
	nop			;4365
	and (hl)		;4366
	inc hl			;4367
	and e			;4368
	xor d			;4369
	and (hl)		;436a
	ld l,h			;436b
	xor e			;436c
	res 6,h			;436d
	ret z			;436f
	or l			;4370
	rst 8			;4371
	or b			;4372
	ld h,h			;4373
	sub b			;4374
	nop			;4375
	rst 10h			;4376
	sub e			;4377
	inc c			;4378
	add a,b			;4379
	inc hl			;437a
	adc a,b			;437b
	jr z,l4387h		;437c
	ret m			;437e
	cp e			;437f
l4380h:
	pop af			;4380
	dec sp			;4381
	rlca			;4382
	ld l,d			;4383
	nop			;4384
	add a,a			;4385
	ld d,d			;4386
l4387h:
	cp c			;4387
	xor 02fh		;4388
	ccf			;438a
	ld h,e			;438b
	rst 38h			;438c
	ld d,a			;438d
	add a,l			;438e
	sub c			;438f
	add a,e			;4390
	cp a			;4391
	ld c,a			;4392
	rra			;4393
	ld a,a			;4394
	in a,(0aah)		;4395
	ld c,e			;4397
	xor h			;4398
	add a,0bbh		;4399
	ld (hl),b		;439b
	ld b,h			;439c
	ld (hl),d		;439d
	add a,h			;439e
	ld a,a			;439f
	ld bc,093e7h		;43a0
	add hl,de		;43a3
	adc a,b			;43a4
	ld c,l			;43a5
	jp pe,0f6d9h		;43a6
	ld b,l			;43a9
	ld (bc),a		;43aa
	rst 30h			;43ab
	ld h,d			;43ac
	ld hl,02cfeh		;43ad
	xor c			;43b0
	ret			;43b1
	cp 01dh			;43b2
	add hl,hl		;43b4
	cpl			;43b5
	call z,0c93fh		;43b6
	cp (hl)			;43b9
	ld h,(hl)		;43ba
	adc a,e			;43bb
	adc a,l			;43bc
l43bdh:
	ei			;43bd
	call 0a90fh		;43be
	ld c,a			;43c1
	dec bc			;43c2
	sbc a,c			;43c3
	sbc a,c			;43c4
	sbc a,h			;43c5
	ld e,d			;43c6
	ld c,a			;43c7
	pop hl			;43c8
	rst 38h			;43c9
	ccf			;43ca
	ld a,(hl)		;43cb
	or (hl)			;43cc
	sub 031h		;43cd
	ei			;43cf
	inc h			;43d0
	jp z,009d5h		;43d1
	defb 0fdh,0b2h,011h ;illegal sequence	;43d4
	rst 30h			;43d7
	sub e			;43d8
	dec b			;43d9
	ld hl,065eeh		;43da
	rst 28h			;43dd
	defb 0edh ;next byte illegal after ed	;43de
	add hl,bc		;43df
	pop af			;43e0
	jr nz,l43f5h		;43e1
	add hl,de		;43e3
	sub c			;43e4
	jr nz,l4409h		;43e5
	add hl,de		;43e7
	ld a,e			;43e8
	sbc a,c			;43e9
	ret			;43ea
	add hl,de		;43eb
	ld sp,02ff0h		;43ec
	xor c			;43ef
	ccf			;43f0
	and b			;43f1
	inc hl			;43f2
	sub h			;43f3
	inc d			;43f4
l43f5h:
	ld (029aeh),a		;43f5
	sbc a,b			;43f8
	adc a,d			;43f9
	jr l4380h		;43fa
	ld c,a			;43fc
	ld b,b			;43fd
	dec hl			;43fe
	ld (03100h),hl		;43ff
	sbc a,a			;4402
	ld (hl),09eh		;4403
	ld (hl),a		;4405
	inc b			;4406
	ld c,a			;4407
	ld a,a			;4408
l4409h:
	push af			;4409
	jp p,l56b0h		;440a
	cp b			;440d
	out (008h),a		;440e
	cp d			;4410
	or c			;4411
	adc a,e			;4412
	ld a,e			;4413
	sub h			;4414
	ld e,(hl)		;4415
	ret pe			;4416
	sub d			;4417
	call pe,0824eh		;4418
	ld l,l			;441b
l441ch:
	push hl			;441c
	add a,c			;441d
	sbc a,c			;441e
	rst 30h			;441f
	add hl,de		;4420
	ret p			;4421
	ld l,d			;4422
	sub d			;4423
l4424h:
	or h			;4424
	ld (hl),l		;4425
	adc a,h			;4426
	add a,h			;4427
	ld (bc),a		;4428
	add hl,sp		;4429
	sub h			;442a
	ld c,b			;442b
	sbc a,a			;442c
	ld e,(hl)		;442d
	cpl			;442e
	dec bc			;442f
	adc a,b			;4430
	djnz l43bdh		;4431
	ld a,(bc)		;4433
	inc hl			;4434
	sbc a,b			;4435
	ld h,d			;4436
	ld bc,09100h		;4437
	adc a,a			;443a
	ld sp,hl		;443b
	call z,sub_514fh	;443c
	sub c			;443f
	or b			;4440
	ld l,045h		;4441
	cp e			;4443
	ld (hl),03bh		;4444
	add hl,hl		;4446
	ld c,a			;4447
sub_4448h:
	rst 8			;4448
	rst 38h			;4449
	or c			;444a
	ld b,h			;444b
	inc (hl)		;444c
	xor b			;444d
	sbc a,b			;444e
	call 0b4b5h		;444f
	adc a,(hl)		;4452
	cpl			;4453
	ld h,e			;4454
	cp a			;4455
	add hl,hl		;4456
	ld a,h			;4457
	add a,d			;4458
	ld e,c			;4459
	ld l,a			;445a
	add a,c			;445b
	jp po,l4ca5h		;445c
	ld (bc),a		;445f
	sub c			;4460
	ld h,h			;4461
	add hl,de		;4462
	inc hl			;4463
	rst 28h			;4464
	ld h,c			;4465
	sub e			;4466
	add hl,sp		;4467
	call p,0de69h		;4468
	ld e,c			;446b
	cpl			;446c
	or d			;446d
	xor 093h		;446e
	cp c			;4470
	sub c			;4471
	adc a,e			;4472
	ld e,b			;4473
	and h			;4474
	jr nz,l4424h		;4475
	xor h			;4477
	ld b,l			;4478
	nop			;4479
	sub e			;447a
	adc a,d			;447b
	ei			;447c
	ld c,a			;447d
	sbc a,d			;447e
	cp e			;447f
	ld c,c			;4480
	adc a,a			;4481
	xor d			;4482
	xor d			;4483
	djnz $+121		;4484
	add hl,de		;4486
	ld c,a			;4487
	rst 38h			;4488
l4489h:
	adc a,a			;4489
	ld h,d			;448a
	add a,h			;448b
	inc sp			;448c
	or e			;448d
sub_448eh:
	ld c,l			;448e
	inc b			;448f
	xor h			;4490
	ld (093cah),a		;4491
	inc d			;4494
	adc a,d			;4495
	ld c,h			;4496
	ei			;4497
	ld c,e			;4498
l4499h:
	ld (hl),d		;4499
	ret pe			;449a
	call po,0ff01h		;449b
	jp z,0f648h		;449e
	ld c,e			;44a1
	rst 28h			;44a2
	jp po,l577fh		;44a3
	sbc a,c			;44a6
	ld c,a			;44a7
	rst 28h			;44a8
	ld c,a			;44a9
	ld h,094h		;44aa
	cpl			;44ac
	ld b,e			;44ad
	ld c,c			;44ae
	inc de			;44af
	sbc a,(hl)		;44b0
	or (hl)			;44b1
	add a,d			;44b2
	add hl,hl		;44b3
	and b			;44b4
	ld c,b			;44b5
	cp a			;44b6
	jp po,093f5h		;44b7
	and a			;44ba
	push de			;44bb
	ld (de),a		;44bc
	and c			;44bd
	xor c			;44be
	sub b			;44bf
	daa			;44c0
	ld c,a			;44c1
	ld (hl),d		;44c2
	rst 38h			;44c3
	push af			;44c4
	push bc			;44c5
	res 5,(hl)		;44c6
	cp c			;44c8
	cp c			;44c9
	ld c,e			;44ca
	rst 8			;44cb
	add hl,de		;44cc
	xor a			;44cd
l44ceh:
	dec a			;44ce
l44cfh:
	sbc a,06fh		;44cf
	adc a,e			;44d1
	ld d,a			;44d2
	ld b,c			;44d3
	jp pe,08392h		;44d4
	daa			;44d7
	add a,c			;44d8
	add a,l			;44d9
	cpl			;44da
	rst 28h			;44db
	ld d,a			;44dc
	jr nc,l44ceh		;44dd
	ld hl,(0e499h)		;44df
	ld a,(094c9h)		;44e2
	cpl			;44e5
	ld (hl),a		;44e6
	ld b,h			;44e7
	cpl			;44e8
	cp 014h			;44e9
	jp m,0ac66h		;44eb
	and h			;44ee
	and c			;44ef
	ld d,c			;44f0
	xor 027h		;44f1
	add hl,de		;44f3
	rst 38h			;44f4
	ld h,h			;44f5
	sbc a,b			;44f6
	jp c,0af7bh		;44f7
	xor c			;44fa
	ld a,(01385h)		;44fb
	sub h			;44fe
	rst 38h			;44ff
	ret m			;4500
	dec l			;4501
	ld c,b			;4502
	cp a			;4503
	ret p			;4504
	or 0b4h			;4505
	ld h,a			;4507
	rst 38h			;4508
	sub e			;4509
	inc hl			;450a
	ld (bc),a		;450b
	ld b,d			;450c
	inc de			;450d
	ld bc,09181h		;450e
	ret			;4511
	add a,l			;4512
	jr nc,$+19		;4513
	rst 28h			;4515
	xor 0eeh		;4516
	adc a,098h		;4518
	rra			;451a
	inc a			;451b
	cpl			;451c
	xor h			;451d
	call p,0ef94h		;451e
	ld e,(hl)		;4521
	ld (de),a		;4522
	sub (hl)		;4523
	jp z,02482h		;4524
	ld (bc),a		;4527
	call p,0a0a1h		;4528
	sbc a,c			;452b
	rra			;452c
	add a,034h		;452d
	ld c,d			;452f
	add a,d			;4530
	ld h,d			;4531
	xor l			;4532
	ld d,c			;4533
	sub b			;4534
	rst 38h			;4535
	cpl			;4536
	add a,e			;4537
	cp e			;4538
	call c,0af6eh		;4539
	ld a,d			;453c
	xor a			;453d
	jp c,l73afh		;453e
	cpl			;4541
	push af			;4542
	ld c,c			;4543
	call p,083a5h		;4544
	call po,sub_67c9h	;4547
	rst 20h			;454a
	xor l			;454b
	rst 28h			;454c
	call pe,09c8dh		;454d
	rra			;4550
	ei			;4551
	cpl			;4552
	call nc,09f6ah		;4553
	cp d			;4556
	and e			;4557
	adc a,c			;4558
	ld hl,09931h		;4559
	ld bc,01f6ah		;455c
	inc de			;455f
	add hl,sp		;4560
	sbc a,l			;4561
	ld a,(0a702h)		;4562
	xor a			;4565
	add hl,hl		;4566
	ld a,a			;4567
	jp 0a492h		;4568
	ld c,c			;456b
	or l			;456c
	inc bc			;456d
	or b			;456e
	ld d,c			;456f
	sbc a,b			;4570
	ret po			;4571
	ld h,a			;4572
l4573h:
	xor a			;4573
	inc l			;4574
	inc sp			;4575
	ld d,e			;4576
	ld b,l			;4577
	jr nc,l4573h		;4578
	push hl			;457a
	ld (hl),h		;457b
	ld d,(ix-009h)		;457c
	sub e			;457f
l4580h:
	call p,0ef5eh		;4580
	ld c,a			;4583
	or 019h			;4584
	rra			;4586
	cpl			;4587
	defb 0ddh,0eah,02eh ;illegal sequence	;4588
	rrca			;458b
	push bc			;458c
	jp m,0a493h		;458d
	ld a,e			;4590
	ld de,0ac8ch		;4591
	or h			;4594
	di			;4595
	sbc a,h			;4596
	di			;4597
	adc a,d			;4598
	rra			;4599
	sub d			;459a
	ld (08009h),a		;459b
	ld d,d			;459e
	sub a			;459f
	adc a,d			;45a0
	dec sp			;45a1
	xor d			;45a2
	xor h			;45a3
	rst 38h			;45a4
	call m,0cb19h		;45a5
	ld c,(hl)		;45a8
	xor a			;45a9
	ld c,d			;45aa
	cp c			;45ab
	ld c,c			;45ac
	cp d			;45ad
	call z,0ee5dh		;45ae
	call m,0ec22h		;45b1
	jp nc,0fdfbh		;45b4
	adc a,l			;45b7
	ei			;45b8
	ld l,0eeh		;45b9
	adc a,d			;45bb
	add a,e			;45bc
	di			;45bd
	jp po,l4919h		;45be
	rst 28h			;45c1
	di			;45c2
	rra			;45c3
	cp (hl)			;45c4
	cpl			;45c5
	cp l			;45c6
	xor 08dh		;45c7
	rrca			;45c9
	call m,05194h		;45ca
	inc bc			;45cd
	add a,d			;45ce
	ret p			;45cf
	ld de,01233h		;45d0
	add a,d			;45d3
	inc de			;45d4
	ld (bc),a		;45d5
	sbc a,(hl)		;45d6
	jp nc,0fa1fh		;45d7
	cp d			;45da
	add a,a			;45db
	ld hl,(0bd11h)		;45dc
	ld (hl),l		;45df
	ld de,02bddh		;45e0
	nop			;45e3
	rst 30h			;45e4
	dec a			;45e5
	sbc a,b			;45e6
	cp e			;45e7
	ld (hl),d		;45e8
	ld c,a			;45e9
	ret			;45ea
	di			;45eb
	xor (hl)		;45ec
	sub e			;45ed
	cpl			;45ee
	xor c			;45ef
	defb 0fdh,03ch,0dch ;illegal sequence	;45f0
	add hl,hl		;45f3
	ld (l7a13h),hl		;45f4
	pop bc			;45f7
	adc a,d			;45f8
	ld (l7e39h),a		;45f9
l45fch:
	ld sp,hl		;45fc
	dec hl			;45fd
	rst 28h			;45fe
	sbc a,l			;45ff
	sub h			;4600
	rra			;4601
	or 02fh			;4602
	ld c,h			;4604
	call 07f0fh		;4605
	adc a,d			;4608
	and h			;4609
	call m,093d3h		;460a
	call nz,0b213h		;460d
	call nz,02001h		;4610
	add a,(hl)		;4613
	ld e,d			;4614
	or d			;4615
	ld e,(hl)		;4616
	sbc a,b			;4617
	ld d,c			;4618
	xor a			;4619
	or d			;461a
	cp e			;461b
	or e			;461c
	ld d,b			;461d
	djnz l4629h		;461e
	add hl,de		;4620
	call m,0197fh		;4621
	push bc			;4624
	ld b,h			;4625
	ld c,h			;4626
	rst 8			;4627
	and l			;4628
l4629h:
	rst 8			;4629
	ld b,0c8h		;462a
l462ch:
	add a,h			;462c
	ld e,h			;462d
	ld b,(hl)		;462e
	sbc a,070h		;462f
	ld a,a			;4631
	nop			;4632
	call nc,0e4f4h		;4633
	jp m,02949h		;4636
	add a,b			;4639
	and c			;463a
	add hl,de		;463b
	rra			;463c
	ld e,(hl)		;463d
	dec d			;463e
	rra			;463f
	ld e,02fh		;4640
	inc d			;4642
	adc a,d			;4643
	cp b			;4644
	rrca			;4645
	ld (09ebch),a		;4646
	sub d			;4649
	xor c			;464a
	xor b			;464b
	xor l			;464c
	xor b			;464d
	cpl			;464e
	di			;464f
	cpl			;4650
	and a			;4651
	cpl			;4652
	sub a			;4653
	ld (hl),0bdh		;4654
	sub h			;4656
	cp 09bh			;4657
	pop bc			;4659
	sub c			;465a
	ld de,08d92h		;465b
	add hl,de		;465e
	nop			;465f
	rst 30h			;4660
	ld hl,(l4fc4h)		;4661
	rst 8			;4664
	ld c,d			;4665
	ret			;4666
	ld b,a			;4667
	call z,0aeafh		;4668
	or (hl)			;466b
	defb 0edh ;next byte illegal after ed	;466c
	rst 38h			;466d
	ld l,(hl)		;466e
	rst 8			;466f
	ld h,l			;4670
	jp p,0cf51h		;4671
	sub l			;4674
	jp (hl)			;4675
	sbc a,(hl)		;4676
	rra			;4677
	defb 0ddh,02fh,04eh ;illegal sequence	;4678
	adc a,(hl)		;467b
	ld c,d			;467c
	sub b			;467d
	jp c,0a30fh		;467e
	adc a,b			;4681
	ld (de),a		;4682
	call m,09bb8h		;4683
	jp z,0f583h		;4686
	dec hl			;4689
	ld a,(bc)		;468a
	and h			;468b
	ld b,d			;468c
	call nz,08c40h		;468d
l4690h:
	sub e			;4690
	cp b			;4691
	ld d,a			;4692
	ld a,(hl)		;4693
	ld h,092h		;4694
	jp pe,0ff4fh		;4696
	ld a,0b9h		;4699
	ld c,h			;469b
	add a,h			;469c
	ret			;469d
	ld e,c			;469e
	add a,e			;469f
	ret			;46a0
	cp b			;46a1
	inc d			;46a2
	xor h			;46a3
	ld h,a			;46a4
	cp e			;46a5
	inc h			;46a6
	rst 38h			;46a7
	ld l,(hl)		;46a8
	cp (hl)			;46a9
	and l			;46aa
	jp nc,0d159h		;46ab
	sbc a,a			;46ae
	rra			;46af
	rrca			;46b0
	rrca			;46b1
	ld (hl),a		;46b2
	ld a,a			;46b3
	add a,b			;46b4
	ld h,(hl)		;46b5
	rrca			;46b6
	ld b,l			;46b7
	jp (hl)			;46b8
	ld a,e			;46b9
	ld h,(hl)		;46ba
	xor b			;46bb
	add hl,hl		;46bc
	ld de,017fdh		;46bd
	ld (bc),a		;46c0
	xor h			;46c1
sub_46c2h:
	add a,l			;46c2
	ld hl,07f44h		;46c3
	cp d			;46c6
	rla			;46c7
	or h			;46c8
	ld (08a32h),hl		;46c9
	ld c,(hl)		;46cc
	cp e			;46cd
	ld c,(hl)		;46ce
	ld c,a			;46cf
	and e			;46d0
	rst 38h			;46d1
	ex de,hl		;46d2
	push bc			;46d3
	ret nc			;46d4
	and h			;46d5
	ld (bc),a		;46d6
	call c,0b9c5h		;46d7
	or h			;46da
	in a,(0e6h)		;46db
	rst 38h			;46dd
	ld d,(hl)		;46de
	add hl,hl		;46df
	ld a,d			;46e0
	ex (sp),hl		;46e1
	pop af			;46e2
	sbc a,h			;46e3
	cp c			;46e4
	rra			;46e5
	defb 0edh ;next byte illegal after ed	;46e6
	rrca			;46e7
	jp c,0ab48h		;46e8
	sub a			;46eb
	call pe,0f952h		;46ec
	or e			;46ef
	sbc a,l			;46f0
	inc c			;46f1
	ld a,h			;46f2
	sbc a,c			;46f3
	ld (hl),c		;46f4
	inc sp			;46f5
	add a,h			;46f6
	sub b			;46f7
	nop			;46f8
	call nz,01392h		;46f9
	and d			;46fc
	cp 0feh			;46fd
	ld (0d37fh),a		;46ff
	cp e			;4702
	or a			;4703
	ld l,04fh		;4704
	and a			;4706
	rst 38h			;4707
	call pe,086beh		;4708
	ld h,a			;470b
	defb 0ddh,025h ;dec ixh	;470c
	ld d,l			;470e
	ld c,b			;470f
	call c,0171dh		;4710
	cp c			;4713
	add a,h			;4714
	sub b			;4715
	scf			;4716
	rrca			;4717
	rra			;4718
	rst 18h			;4719
	rrca			;471a
	sbc a,l			;471b
	add a,e			;471c
	ld c,h			;471d
	rrca			;471e
	sbc a,d			;471f
	sbc a,e			;4720
	ld (bc),a		;4721
	sbc a,h			;4722
	jp p,l6d95h		;4723
l4726h:
	ld bc,l7680h		;4726
	xor l			;4729
	ld h,(hl)		;472a
	ld (hl),a		;472b
	xor a			;472c
	rlca			;472d
	ld b,h			;472e
	sub d			;472f
	or l			;4730
	rst 18h			;4731
	or e			;4732
	cp b			;4733
	add a,b			;4734
	adc a,c			;4735
	inc hl			;4736
	sbc a,c			;4737
	ld h,0beh		;4738
	jp m,0937ah		;473a
	add hl,hl		;473d
	xor c			;473e
	ld c,(hl)		;473f
	and l			;4740
	call c,0aa33h		;4741
	sub d			;4744
	xor h			;4745
	ld c,d			;4746
	rst 28h			;4747
	cpl			;4748
	ld bc,02fc0h		;4749
	sub h			;474c
	xor l			;474d
	sub a			;474e
	ret z			;474f
	add a,e			;4750
	ret			;4751
	call pe,09fb5h		;4752
	daa			;4755
	rst 28h			;4756
	ld l,d			;4757
	ld de,0cfech		;4758
	rrca			;475b
	sub e			;475c
	ld a,a			;475d
	defb 0ddh,048h,07fh ;illegal sequence	;475e
	ret pe			;4761
	sbc a,b			;4762
	adc a,a			;4763
	jp m,039aeh		;4764
	ld h,032h		;4767
	ld (bc),a		;4769
	cp l			;476a
	call po,0acbch		;476b
	xor e			;476e
	jp pe,0afe5h		;476f
	ld (hl),c		;4772
	djnz $-75		;4773
	ld l,c			;4775
	rst 38h			;4776
	ld c,h			;4777
	or b			;4778
	jr nz,l47c4h		;4779
	ld de,04a08h		;477b
	nop			;477e
	call pe,0e5f6h		;477f
	ld e,d			;4782
	add a,b			;4783
	sub 0c9h		;4784
	ld a,(hl)		;4786
	xor c			;4787
	ld a,h			;4788
	rrca			;4789
	ld (0eeffh),a		;478a
	sbc a,b			;478d
	sub a			;478e
	rst 38h			;478f
	ld c,d			;4790
	rst 38h			;4791
	ei			;4792
	jr l4726h		;4793
	call c,02a66h		;4795
	ld a,d			;4798
	ld l,a			;4799
	ld a,b			;479a
	ret nz			;479b
	inc l			;479c
	rst 0			;479d
	ld d,l			;479e
	rrca			;479f
	rst 38h			;47a0
	ld a,(0091bh)		;47a1
	ld b,h			;47a4
	jp pe,0f0c5h		;47a5
	call po,0f192h		;47a8
	adc a,0ech		;47ab
	ld a,e			;47ad
	rrca			;47ae
	ld d,e			;47af
	rst 38h			;47b0
	cp l			;47b1
	defb 0fdh,094h ;sub iyh	;47b2
	rst 38h			;47b4
	rst 20h			;47b5
	cp 02fh			;47b6
	ld e,h			;47b8
	and 064h		;47b9
	push af			;47bb
	and a			;47bc
	ex (sp),hl		;47bd
l47beh:
	push hl			;47be
	ld l,c			;47bf
	add a,l			;47c0
	ld hl,(06d31h)		;47c1
l47c4h:
	ld (de),a		;47c4
l47c5h:
	ret pe			;47c5
	dec bc			;47c6
	sub (hl)		;47c7
	rst 38h			;47c8
	xor 099h		;47c9
	ld e,d			;47cb
	adc a,h			;47cc
	jp m,0d572h		;47cd
	ld c,l			;47d0
	pop af			;47d1
	add hl,bc		;47d2
	ld h,l			;47d3
	and h			;47d4
	jp (ix)			;47d5
	rrca			;47d7
	defb 0edh ;next byte illegal after ed	;47d8
	rst 38h			;47d9
	ld l,(hl)		;47da
	push hl			;47db
	adc a,c			;47dc
	add a,b			;47dd
	rst 38h			;47de
	cp c			;47df
	rst 0			;47e0
	rst 38h			;47e1
	ret c			;47e2
	sbc a,b			;47e3
	ld e,d			;47e4
	add a,b			;47e5
	jr c,$-24		;47e6
	sub c			;47e8
	add a,d			;47e9
	ld d,c			;47ea
	ld b,c			;47eb
	jp m,0ae49h		;47ec
	cp h			;47ef
	sub h			;47f0
	add a,b			;47f1
	and h			;47f2
	rst 38h			;47f3
	ret p			;47f4
	sub b			;47f5
	add a,0ffh		;47f6
	rst 30h			;47f8
l47f9h:
	ret nc			;47f9
	ld c,d			;47fa
	nop			;47fb
	inc c			;47fc
	di			;47fd
	adc a,a			;47fe
	ld c,c			;47ff
	sbc a,c			;4800
	ret p			;4801
	jp z,03bebh		;4802
	rst 38h			;4805
	rra			;4806
	adc a,b			;4807
	call po,0f6b3h		;4808
	ld a,d			;480b
	xor e			;480c
	ld (hl),l		;480d
	rrca			;480e
	rst 38h			;480f
	adc a,(hl)		;4810
	or 0f1h			;4811
	sbc a,b			;4813
	rst 38h			;4814
	call po,0cf94h		;4815
	rst 38h			;4818
	or c			;4819
	add a,b			;481a
sub_481bh:
	daa			;481b
	add a,a			;481c
	djnz l4851h		;481d
l481fh:
	and a			;481f
	inc h			;4820
	cp b			;4821
	rst 28h			;4822
sub_4823h:
	di			;4823
	ld h,l			;4824
	ld l,a			;4825
sub_4826h:
	ld (hl),a		;4826
	ld (hl),e		;4827
	ld a,a			;4828
	rst 38h			;4829
	xor h			;482a
	and d			;482b
	djnz l47c5h		;482c
	and l			;482e
	call z,00413h		;482f
	ld b,h			;4832
	ld bc,l6a89h		;4833
	rst 28h			;4836
	ld d,098h		;4837
	call nz,sub_6694h	;4839
	adc a,c			;483c
	ld h,(hl)		;483d
	ld sp,hl		;483e
	jp nc,07585h		;483f
	rrca			;4842
	rst 38h			;4843
	xor a			;4844
	inc bc			;4845
	ld c,h			;4846
	rst 38h			;4847
l4848h:
	ld e,h			;4848
	rst 28h			;4849
	rra			;484a
	ld a,(hl)		;484b
	xor c			;484c
	add hl,de		;484d
	and l			;484e
	ld c,c			;484f
	dec h			;4850
l4851h:
	ld (0b603h),hl		;4851
	adc a,d			;4854
	jp m,l50bch		;4855
	ld sp,0a210h		;4858
	ld b,h			;485b
	or e			;485c
l485dh:
	ld (hl),e		;485d
	ld de,0a5ffh		;485e
	jr nz,l48ach		;4861
l4863h:
	and d			;4863
	djnz l48a6h		;4864
	djnz $-99		;4866
	jr z,l485dh		;4868
	and d			;486a
	ret p			;486b
	defb 0fdh,0dch,0b5h ;illegal sequence	;486c
	ld e,a			;486f
	jp m,08479h		;4870
	ld a,(0e70fh)		;4873
	rst 38h			;4876
	ld a,e			;4877
	rra			;4878
	rst 38h			;4879
	sbc a,h			;487a
	push af			;487b
	cp 0edh			;487c
	and h			;487e
	and h			;487f
	ld c,c			;4880
	ld bc,035feh		;4881
	ld b,l			;4884
	jp nz,l462ch		;4885
	add a,e			;4888
	ld d,b			;4889
	add a,a			;488a
	ld (de),a		;488b
	inc hl			;488c
	ex af,af'		;488d
	ld (bc),a		;488e
	rst 38h			;488f
	adc a,a			;4890
l4891h:
	rst 38h			;4891
	ld l,(hl)		;4892
	djnz l481fh		;4893
	and c			;4895
	adc a,b			;4896
	adc a,b			;4897
	jp z,009cbh		;4898
	rst 38h			;489b
	jp nc,0d2f9h		;489c
	adc a,052h		;489f
	call p,0fe52h		;48a1
	ld d,(hl)		;48a4
	add a,h			;48a5
l48a6h:
	scf			;48a6
	rrca			;48a7
	ld a,l			;48a8
	rst 38h			;48a9
	sbc a,01fh		;48aa
l48ach:
	rst 30h			;48ac
	rst 38h			;48ad
	ld a,0feh		;48ae
	ld a,e			;48b0
	ld d,l			;48b1
	ld bc,02831h		;48b2
	add a,b			;48b5
	adc a,c			;48b6
	inc b			;48b7
	ld c,b			;48b8
	ld l,d			;48b9
	jr $-11			;48ba
	sub d			;48bc
	ld (0800bh),hl		;48bd
	ccf			;48c0
	exx			;48c1
	ld a,a			;48c2
	adc a,e			;48c3
	res 7,(hl)		;48c4
	or d			;48c6
	ld d,d			;48c7
	sub d			;48c8
	xor d			;48c9
	jp z,0964ah		;48ca
	xor c			;48cd
	adc a,(hl)		;48ce
	ld (de),a		;48cf
	ld sp,l65adh		;48d0
	pop af			;48d3
	sub h			;48d4
	adc a,b			;48d5
	sub h			;48d6
	cp c			;48d7
	or 044h			;48d8
	cp 06bh			;48da
	add a,l			;48dc
	ld c,c			;48dd
	rrca			;48de
	call z,sub_65e5h	;48df
	dec e			;48e2
	ld l,a			;48e3
	ld c,c			;48e4
l48e5h:
	ei			;48e5
	and a			;48e6
	inc d			;48e7
	ei			;48e8
sub_48e9h:
	sub 001h		;48e9
	rra			;48eb
	dec d			;48ec
	ld c,c			;48ed
	inc de			;48ee
l48efh:
	add hl,sp		;48ef
	ld a,(05d0dh)		;48f0
	ld c,a			;48f3
	cp a			;48f4
	ld h,a			;48f5
	rst 8			;48f6
	adc a,l			;48f7
	rst 38h			;48f8
	ld a,h			;48f9
sub_48fah:
	cp c			;48fa
l48fbh:
	ld bc,02c74h		;48fb
	inc b			;48fe
	dec b			;48ff
	ld h,l			;4900
	ld c,c			;4901
	ld b,h			;4902
	ld b,010h		;4903
	ld l,b			;4905
	ld c,h			;4906
	ld a,a			;4907
	push bc			;4908
	cp 051h			;4909
	call p,0c14bh		;490b
	ld de,l44cfh		;490e
	ld e,d			;4911
	jr nc,l4925h		;4912
	sbc a,(hl)		;4914
	sub (hl)		;4915
	adc a,h			;4916
	add hl,de		;4917
	sub d			;4918
l4919h:
	add hl,de		;4919
	defb 0fdh,09bh,0efh ;illegal sequence	;491a
	sub (hl)		;491d
	ld sp,hl		;491e
	dec sp			;491f
	adc a,b			;4920
	ret m			;4921
	ld d,c			;4922
	ld c,h			;4923
	add a,l			;4924
l4925h:
	jr c,l48efh		;4925
	rrca			;4927
	adc a,h			;4928
	call m,01eb0h		;4929
	ld a,002h		;492c
	ld (de),a		;492e
	sbc a,h			;492f
	ld c,c			;4930
	sub d			;4931
	rra			;4932
	ld e,c			;4933
	sub d			;4934
	ret nc			;4935
	add hl,de		;4936
	ld c,d			;4937
	ld c,l			;4938
	add a,l			;4939
	cp l			;493a
	rst 30h			;493b
	rst 8			;493c
	scf			;493d
	ld a,a			;493e
	call p,011a6h		;493f
	xor l			;4942
	call 01789h		;4943
	inc hl			;4946
	sbc a,c			;4947
	ret			;4948
	in a,(0bdh)		;4949
	cpl			;494b
	inc d			;494c
	sub b			;494d
	djnz l48e5h		;494e
	ld d,h			;4950
	dec a			;4951
	adc a,h			;4952
	sub d			;4953
	sub a			;4954
	ld h,(hl)		;4955
	rst 10h			;4956
	out (006h),a		;4957
	add a,b			;4959
	adc a,h			;495a
	add hl,sp		;495b
	daa			;495c
	halt			;495d
	sbc a,b			;495e
	rst 28h			;495f
	daa			;4960
	ld b,h			;4961
	jp nc,0848ch		;4962
	dec l			;4965
	add a,l			;4966
	daa			;4967
	adc a,l			;4968
	ld h,(hl)		;4969
	defb 0edh ;next byte illegal after ed	;496a
	sbc a,d			;496b
	jp pe,08b6bh		;496c
	cp 0beh			;496f
	dec d			;4971
	djnz $+65		;4972
	cp c			;4974
	rra			;4975
	or l			;4976
	dec hl			;4977
	ld e,b			;4978
	ld h,e			;4979
	ld a,(l7f01h)		;497a
	xor 066h		;497d
	nop			;497f
	and 022h		;4980
	ld c,c			;4982
	rst 10h			;4983
	sub e			;4984
l4985h:
	ret			;4985
	ex de,hl		;4986
	add a,h			;4987
	add hl,de		;4988
sub_4989h:
	rst 8			;4989
	and 05fh		;498a
	cp c			;498c
	ld b,h			;498d
	ld a,a			;498e
	ld d,000h		;498f
	inc de			;4991
	ld (0d654h),a		;4992
	ld h,0c3h		;4995
	ld d,e			;4997
	sub l			;4998
	sub l			;4999
	ld (bc),a		;499a
	rst 10h			;499b
	and h			;499c
	add a,b			;499d
	and h			;499e
	add a,d			;499f
	exx			;49a0
	or d			;49a1
	ld (hl),d		;49a2
	jp p,02f62h		;49a3
	adc a,c			;49a6
sub_49a7h:
	ld a,a			;49a7
	call p,06a88h		;49a8
	adc a,b			;49ab
	cpl			;49ac
	ld c,c			;49ad
	rst 20h			;49ae
	ld l,l			;49af
l49b0h:
	xor e			;49b0
	ld c,b			;49b1
	call pe,083a3h		;49b2
	ld de,08f04h		;49b5
	sbc a,b			;49b8
sub_49b9h:
	dec de			;49b9
	adc a,c			;49ba
	ld b,(hl)		;49bb
	ld hl,l4690h		;49bc
	add a,e			;49bf
	and e			;49c0
	nop			;49c1
l49c2h:
	rst 38h			;49c2
	add hl,sp		;49c3
	rst 38h			;49c4
	call pe,0a08ah		;49c5
	ld h,c			;49c8
	dec l			;49c9
	adc a,c			;49ca
	add hl,de		;49cb
	ret nc			;49cc
	inc d			;49cd
	ld c,c			;49ce
sub_49cfh:
	defb 0ddh,092h,000h ;illegal sequence	;49cf
	ld c,b			;49d2
	ret c			;49d3
	ld (hl),0ffh		;49d4
	exx			;49d6
	and d			;49d7
l49d8h:
	ld (hl),b		;49d8
	or 094h			;49d9
	defb 0fdh,0abh,092h ;illegal sequence	;49db
	sub l			;49de
	ld (de),a		;49df
	rst 18h			;49e0
	ld (hl),a		;49e1
	adc a,a			;49e2
	ld de,09202h		;49e3
	ld h,h			;49e6
	ld d,a			;49e7
	inc bc			;49e8
	ld e,(hl)		;49e9
	jr nc,l49c2h		;49ea
	ld b,l			;49ec
	cpl			;49ed
	ld b,b			;49ee
	add hl,bc		;49ef
	add a,h			;49f0
	ld h,e			;49f1
	add a,h			;49f2
	cpl			;49f3
	add a,h			;49f4
	add a,h			;49f5
	add a,b			;49f6
	sub l			;49f7
	ld a,h			;49f8
sub_49f9h:
	ret p			;49f9
l49fah:
	xor l			;49fa
	rst 0			;49fb
	inc hl			;49fc
	adc a,b			;49fd
	rrca			;49fe
	ld d,d			;49ff
	adc a,c			;4a00
	sub d			;4a01
	ld c,l			;4a02
	adc a,d			;4a03
	adc a,e			;4a04
	adc a,c			;4a05
	call nc,07fc9h		;4a06
	sub e			;4a09
	rst 38h			;4a0a
	or 066h			;4a0b
	and c			;4a0d
	and d			;4a0e
	adc a,b			;4a0f
	jp z,0c994h		;4a10
	or e			;4a13
	inc (hl)		;4a14
	ld d,b			;4a15
	pop de			;4a16
	sub d			;4a17
	xor a			;4a18
	cp d			;4a19
	adc a,d			;4a1a
	sub a			;4a1b
	ld a,l			;4a1c
	or c			;4a1d
	call m,0c623h		;4a1e
	sbc a,d			;4a21
	ld sp,047cah		;4a22
	and e			;4a25
	ld c,b			;4a26
	sbc a,0cah		;4a27
	ret po			;4a29
	jr z,l4a37h		;4a2a
	adc a,a			;4a2c
	xor l			;4a2d
	sbc a,b			;4a2e
	add hl,bc		;4a2f
	inc b			;4a30
	call nz,01dddh		;4a31
	sbc a,h			;4a34
	cpl			;4a35
	pop de			;4a36
l4a37h:
	ld bc,0929ah		;4a37
	inc hl			;4a3a
	inc hl			;4a3b
	ret			;4a3c
	jr z,l49d8h		;4a3d
	cp b			;4a3f
	rrca			;4a40
	add a,(hl)		;4a41
	ld c,a			;4a42
	sub c			;4a43
	jr nz,l4a66h		;4a44
	ret nz			;4a46
	call pe,02936h		;4a47
	xor a			;4a4a
	rst 38h			;4a4b
	cp e			;4a4c
	and d			;4a4d
	ld (hl),d		;4a4e
	rst 28h			;4a4f
	set 1,c			;4a50
	dec h			;4a52
	nop			;4a53
	adc a,b			;4a54
	rst 8			;4a55
	adc a,c			;4a56
	adc a,h			;4a57
	adc a,0cch		;4a58
	call nc,030ceh		;4a5a
	ld h,(hl)		;4a5d
	adc a,a			;4a5e
	adc a,l			;4a5f
	call m,01362h		;4a60
	jp c,0c36eh		;4a63
l4a66h:
	ld c,c			;4a66
	res 1,l			;4a67
	dec h			;4a69
	and b			;4a6a
	call po,0102ah		;4a6b
	call nc,09ca6h		;4a6e
	adc a,d			;4a71
	adc a,c			;4a72
	add a,d			;4a73
	ret nz			;4a74
	adc a,a			;4a75
	add a,(hl)		;4a76
	call m,02fa7h		;4a77
	ld c,d			;4a7a
	add a,h			;4a7b
	ld a,(de)		;4a7c
	rst 30h			;4a7d
	jp z,0ca03h		;4a7e
	ex de,hl		;4a81
	dec b			;4a82
	sbc a,l			;4a83
	di			;4a84
	sub h			;4a85
	call nc,022c0h		;4a86
	sub h			;4a89
	cp a			;4a8a
	adc a,d			;4a8b
	xor (hl)		;4a8c
	add a,d			;4a8d
	ld h,a			;4a8e
	add hl,bc		;4a8f
	ld c,a			;4a90
	ld a,a			;4a91
	nop			;4a92
	inc sp			;4a93
	ld (02a5ch),hl		;4a94
	ld b,e			;4a97
	jp z,0c636h		;4a98
	call z,0bccbh		;4a9b
	call nc,08594h		;4a9e
	cp 0edh			;4aa1
	ld h,e			;4aa3
	add a,b			;4aa4
	inc l			;4aa5
l4aa6h:
	sub d			;4aa6
	ex (sp),hl		;4aa7
	rst 8			;4aa8
	call m,0ff29h		;4aa9
	cp l			;4aac
	bit 4,h			;4aad
	exx			;4aaf
	cp h			;4ab0
	rst 18h			;4ab1
	sub d			;4ab2
	dec hl			;4ab3
	ld (bc),a		;4ab4
	add a,a			;4ab5
	sub h			;4ab6
	call nc,08092h		;4ab7
	ld d,(hl)		;4aba
	adc a,(hl)		;4abb
	dec sp			;4abc
	add hl,hl		;4abd
	cpl			;4abe
	sub c			;4abf
	ccf			;4ac0
l4ac1h:
	ret			;4ac1
	dec l			;4ac2
	ld c,c			;4ac3
	ld c,c			;4ac4
	adc a,d			;4ac5
	dec sp			;4ac6
	adc a,a			;4ac7
	inc d			;4ac8
	jp 04fe6h		;4ac9
	sub 0a9h		;4acc
	jp z,l79f8h		;4ace
	ld c,a			;4ad1
	ld (hl),a		;4ad2
	rst 38h			;4ad3
	bit 4,e			;4ad4
	add hl,de		;4ad6
	nop			;4ad7
	inc hl			;4ad8
	cpl			;4ad9
	jp z,0cf4bh		;4ada
	inc de			;4add
	ld c,b			;4ade
	in a,(0d2h)		;4adf
	add hl,bc		;4ae1
	ld (hl),h		;4ae2
	add a,h			;4ae3
	dec de			;4ae4
	ld (bc),a		;4ae5
	ret			;4ae6
	ld (hl),l		;4ae7
	call nc,0d52eh		;4ae8
	call p,0d5a1h		;4aeb
	add a,d			;4aee
	sub d			;4aef
	sbc a,07ah		;4af0
	or l			;4af2
	ret pe			;4af3
l4af4h:
	rst 20h			;4af4
	rlca			;4af5
	adc a,a			;4af6
	jr l4b6ch		;4af7
	sbc a,c			;4af9
	cpl			;4afa
	adc a,c			;4afb
	sbc a,h			;4afc
	ld h,d			;4afd
	adc a,e			;4afe
	ld h,a			;4aff
	ccf			;4b00
	sbc a,e			;4b01
	ld h,00fh		;4b02
	call m,0994fh		;4b04
	rst 38h			;4b07
	jp p,0cdc4h		;4b08
	inc sp			;4b0b
	sbc a,(hl)		;4b0c
	rst 38h			;4b0d
	rla			;4b0e
	add a,h			;4b0f
	cpl			;4b10
	rst 8			;4b11
	ld d,(hl)		;4b12
	cp b			;4b13
	ld l,c			;4b14
	call nc,sub_7409h	;4b15
	add hl,de		;4b18
	ld (de),a		;4b19
l4b1ah:
	and l			;4b1a
	jp nc,l6d9bh		;4b1b
	ld (de),a		;4b1e
	add a,e			;4b1f
	or e			;4b20
	adc a,05dh		;4b21
	ld b,0dbh		;4b23
	sub l			;4b25
	call po,0079dh		;4b26
	ld h,e			;4b29
	adc a,a			;4b2a
	ld l,099h		;4b2b
	cpl			;4b2d
	ld l,03fh		;4b2e
	ld a,a			;4b30
	dec a			;4b31
	adc a,a			;4b32
	ld a,(de)		;4b33
	adc a,b			;4b34
	ld a,(bc)		;4b35
	add a,h			;4b36
	ld sp,hl		;4b37
	ld c,a			;4b38
	ld h,e			;4b39
	rst 38h			;4b3a
	push hl			;4b3b
	ld h,(hl)		;4b3c
	inc hl			;4b3d
	ld d,b			;4b3e
	jp z,0a424h		;4b3f
	sub e			;4b42
	and l			;4b43
	xor c			;4b44
	adc a,b			;4b45
	cp d			;4b46
	jp c,09a3bh		;4b47
	ld a,h			;4b4a
	dec (hl)		;4b4b
	sbc a,h			;4b4c
	ld l,d			;4b4d
	jp c,02319h		;4b4e
	inc hl			;4b51
	ld bc,094dbh		;4b52
	add a,(hl)		;4b55
	or e			;4b56
	add a,b			;4b57
	sbc a,l			;4b58
	rlca			;4b59
	ex (sp),hl		;4b5a
	adc a,a			;4b5b
	ld (hl),d		;4b5c
	ld e,a			;4b5d
	ret			;4b5e
	call p,0904eh		;4b5f
	ret c			;4b62
	ex de,hl		;4b63
	call z,0e43fh		;4b64
	sub h			;4b67
	and h			;4b68
	sub h			;4b69
	ld sp,hl		;4b6a
	ld c,a			;4b6b
l4b6ch:
	ld l,c			;4b6c
	rst 38h			;4b6d
	push hl			;4b6e
	xor h			;4b6f
	and 05dh		;4b70
	ld c,b			;4b72
	and d			;4b73
	inc (hl)		;4b74
	cp a			;4b75
	xor b			;4b76
	sbc a,d			;4b77
	call nc,02fc7h		;4b78
	ld (hl),c		;4b7b
	defb 0fdh,094h ;sub iyh	;4b7c
	or 093h			;4b7e
	and b			;4b80
	ld d,c			;4b81
	ld hl,l6985h		;4b82
	jp z,l548eh		;4b85
	or 04fh			;4b88
	inc de			;4b8a
	ret po			;4b8b
	ld c,(hl)		;4b8c
	rlca			;4b8d
	pop af			;4b8e
	adc a,a			;4b8f
	or (hl)			;4b90
	call z,02c8fh		;4b91
	xor 0a4h		;4b94
	rst 28h			;4b96
	ld e,c			;4b97
	ccf			;4b98
	cp 02bh			;4b99
	call nz,sub_4f7bh	;4b9b
	jp p,0ff5bh		;4b9e
l4ba1h:
	call 017dah		;4ba1
	ret			;4ba4
	jp pe,02d48h		;4ba5
	ld e,(hl)		;4ba8
	add a,h			;4ba9
	defb 0fdh,0f6h,0dah ;illegal sequence	;4baa
	rst 8			;4bad
	rst 38h			;4bae
	adc a,l			;4baf
	rst 30h			;4bb0
	and (hl)		;4bb1
	inc b			;4bb2
	dec sp			;4bb3
	ld (de),a		;4bb4
	add a,e			;4bb5
	adc a,(hl)		;4bb6
	ret c			;4bb7
	res 1,h			;4bb8
	ld c,(hl)		;4bba
	rlca			;4bbb
	pop af			;4bbc
	adc a,a			;4bbd
	adc a,03fh		;4bbe
	and e			;4bc0
	ld l,a			;4bc1
	cp 03ah			;4bc2
	ccf			;4bc4
	xor (hl)		;4bc5
	add a,b			;4bc6
	ld a,04fh		;4bc7
	ccf			;4bc9
	ld a,a			;4bca
	sub (hl)		;4bcb
	or a			;4bcc
	ex de,hl		;4bcd
	rst 38h			;4bce
	and a			;4bcf
	cp c			;4bd0
	ld d,h			;4bd1
	sbc a,b			;4bd2
	cp c			;4bd3
	or c			;4bd4
	cp a			;4bd5
	sub e			;4bd6
	xor a			;4bd7
	ex (sp),hl		;4bd8
	add a,c			;4bd9
	adc a,c			;4bda
	push af			;4bdb
	ld l,c			;4bdc
	push de			;4bdd
	and l			;4bde
	ld l,h			;4bdf
	add a,h			;4be0
	add hl,hl		;4be1
	add a,a			;4be2
	ld b,h			;4be3
	add hl,hl		;4be4
	inc de			;4be5
	call po,0efcfh		;4be6
	rlca			;4be9
	adc a,a			;4bea
	inc e			;4beb
	di			;4bec
	ccf			;4bed
	adc a,a			;4bee
	sub d			;4bef
	call p,03f2eh		;4bf0
	ld (hl),e		;4bf3
	dec b			;4bf4
	ld c,a			;4bf5
	push hl			;4bf6
	ld sp,hl		;4bf7
	ld a,a			;4bf8
	xor (hl)		;4bf9
	ld h,c			;4bfa
	call nz,0cf5dh		;4bfb
	call c,05acfh		;4bfe
	jp z,l7fdeh		;4c01
	push af			;4c04
	pop bc			;4c05
l4c06h:
	dec hl			;4c06
	sbc a,(hl)		;4c07
	dec (hl)		;4c08
	jp c,l7633h		;4c09
	call z,0aa37h		;4c0c
	ld de,00733h		;4c0f
	sbc a,08fh		;4c12
	add hl,sp		;4c14
	ld sp,hl		;4c15
	ccf			;4c16
	jr c,l4ba1h		;4c17
	sbc a,h			;4c19
	adc a,l			;4c1a
	rst 38h			;4c1b
	ld sp,hl		;4c1c
	ld c,a			;4c1d
	ld a,07fh		;4c1e
	ld l,c			;4c20
	ret nc			;4c21
	and e			;4c22
	cp e			;4c23
	adc a,l			;4c24
	rst 8			;4c25
	rst 8			;4c26
	rst 8			;4c27
	ld e,e			;4c28
	xor a			;4c29
	ld c,(hl)		;4c2a
sub_4c2bh:
	cpl			;4c2b
	xor 019h		;4c2c
	sub 0dch		;4c2e
	jr nz,l4c06h		;4c30
	jp z,l779bh		;4c32
	ld de,08a0eh		;4c35
	ld d,a			;4c38
	rlca			;4c39
	ld a,b			;4c3a
	adc a,a			;4c3b
	rst 20h			;4c3c
	ccf			;4c3d
	jp 03f49h		;4c3e
	rst 0			;4c41
	ld c,a			;4c42
	and 0f9h		;4c43
	ld a,a			;4c45
	ld h,l			;4c46
	push hl			;4c47
	dec l			;4c48
	or l			;4c49
	ld l,d			;4c4a
	add hl,hl		;4c4b
	inc bc			;4c4c
	push bc			;4c4d
	or l			;4c4e
	sbc a,b			;4c4f
	or b			;4c50
	ld d,0afh		;4c51
	ld (hl),a		;4c53
	add a,d			;4c54
	push af			;4c55
	ld h,h			;4c56
	add a,b			;4c57
	daa			;4c58
	sbc a,b			;4c59
	call po,0a4e2h		;4c5a
	or 0ddh			;4c5d
	adc a,a			;4c5f
	sbc a,a			;4c60
	xor d			;4c61
	adc a,(hl)		;4c62
	inc hl			;4c63
	rlca			;4c64
	pop af			;4c65
	sub b			;4c66
	inc h			;4c67
	sbc a,(hl)		;4c68
	adc a,l			;4c69
	ld a,(de)		;4c6a
	ld sp,0a610h		;4c6b
	ld c,e			;4c6e
	push af			;4c6f
	ld h,c			;4c70
	ld c,b			;4c71
	add a,h			;4c72
	ld a,h			;4c73
	exx			;4c74
	ccf			;4c75
	ld a,(hl)		;4c76
	ld c,a			;4c77
	jp p,000fch		;4c78
	ld l,e			;4c7b
	add hl,de		;4c7c
	ld c,d			;4c7d
	push hl			;4c7e
sub_4c7fh:
	xor e			;4c7f
	and l			;4c80
	ret z			;4c81
	xor d			;4c82
	call z,09d03h		;4c83
	cp d			;4c86
	srl l			;4c87
	sbc a,(hl)		;4c89
l4c8ah:
	jp p,086eah		;4c8a
	jr nz,$+73		;4c8d
	ld (de),a		;4c8f
	cp 031h			;4c90
	adc a,b			;4c92
	sub l			;4c93
	adc a,h			;4c94
l4c95h:
	sbc a,l			;4c95
	rlca			;4c96
	push bc			;4c97
	or 094h			;4c98
	dec d			;4c9a
	sub l			;4c9b
	ld h,0f1h		;4c9c
	and a			;4c9e
	call m,03f9dh		;4c9f
	ld l,a			;4ca2
	ld a,a			;4ca3
	ccf			;4ca4
l4ca5h:
	rra			;4ca5
	ld c,a			;4ca6
	ld c,a			;4ca7
	nop			;4ca8
	jp nz,l4580h		;4ca9
	ld (de),a		;4cac
	pop de			;4cad
	xor d			;4cae
	ld d,h			;4caf
	cp a			;4cb0
	ld (hl),e		;4cb1
	jr nc,$+105		;4cb2
	dec hl			;4cb4
	cpl			;4cb5
	and d			;4cb6
	add hl,de		;4cb7
	push hl			;4cb8
	sbc a,b			;4cb9
	or h			;4cba
	call m,0deebh		;4cbb
	rst 28h			;4cbe
	ld (0abf6h),a		;4cbf
	add hl,bc		;4cc2
	rlca			;4cc3
	ld e,e			;4cc4
	ld (09407h),hl		;4cc5
	jr l4cebh		;4cc8
	adc a,e			;4cca
	add a,l			;4ccb
	and e			;4ccc
	jr c,$-17		;4ccd
	ccf			;4ccf
	ld c,h			;4cd0
	ccf			;4cd1
	sbc a,e			;4cd2
	ld l,a			;4cd3
	ld c,a			;4cd4
	call p,000fch		;4cd5
	inc b			;4cd8
	sbc a,b			;4cd9
	add a,b			;4cda
	call 02389h		;4cdb
	and l			;4cde
	ld b,h			;4cdf
	ld c,h			;4ce0
	xor a			;4ce1
	and l			;4ce2
	xor a			;4ce3
	ld b,0c8h		;4ce4
	add a,h			;4ce6
	inc a			;4ce7
	ld b,(hl)		;4ce8
	cp (hl)			;4ce9
	ld (hl),e		;4cea
l4cebh:
	sbc a,(hl)		;4ceb
	sub e			;4cec
	ld sp,0b2f9h		;4ced
	ld bc,08293h		;4cf0
	rst 30h			;4cf3
	ld d,d			;4cf4
	ei			;4cf5
	ret nc			;4cf6
	ld (bc),a		;4cf7
	ld hl,007dah		;4cf8
	rst 38h			;4cfb
	ld c,h			;4cfc
	cp 04bh			;4cfd
	jr c,l4c95h		;4cff
	sbc a,b			;4d01
	adc a,h			;4d02
	cp a			;4d03
	sub 03fh		;4d04
	ld b,h			;4d06
	ccf			;4d07
	adc a,0fah		;4d08
	rst 20h			;4d0a
	ccf			;4d0b
	ld c,a			;4d0c
	push de			;4d0d
	nop			;4d0e
	ret p			;4d0f
	ld d,(hl)		;4d10
	call z,01215h		;4d11
	call nz,0af2fh		;4d14
	ld h,043h		;4d17
	dec a			;4d19
	call z,sub_49cfh	;4d1a
	sbc a,c			;4d1d
	sbc a,h			;4d1e
	rst 38h			;4d1f
	ld (hl),d		;4d20
	jp nc,0df9fh		;4d21
	sub e			;4d24
	and e			;4d25
	ld (de),a		;4d26
	cpd			;4d27
	and 03bh		;4d29
	rst 18h			;4d2b
	ld (0ee86h),hl		;4d2c
	rlca			;4d2f
	defb 0fdh,078h,09eh ;illegal sequence	;4d30
	adc a,l			;4d33
	ld l,00ch		;4d34
	ccf			;4d36
	add hl,hl		;4d37
	ld l,b			;4d38
	xor 048h		;4d39
	ret p			;4d3b
	in a,(03fh)		;4d3c
	ld c,a			;4d3e
	jp (hl)			;4d3f
	rst 10h			;4d40
	rst 38h			;4d41
	add a,l			;4d42
	ld (de),a		;4d43
	defb 0ddh,0c9h,02ch ;illegal sequence	;4d44
	adc a,d			;4d47
	add a,h			;4d48
l4d49h:
	xor c			;4d49
	call 0c6b3h		;4d4a
	ld c,b			;4d4d
	or c			;4d4e
	ld h,l			;4d4f
	or d			;4d50
	sbc a,01fh		;4d51
	ld e,b			;4d53
	ret p			;4d54
	sub (hl)		;4d55
	jp (hl)			;4d56
	sub c			;4d57
	ld l,l			;4d58
	ld de,08803h		;4d59
	ld d,0f5h		;4d5c
	ld d,e			;4d5e
	ld l,d			;4d5f
	nop			;4d60
	rlca			;4d61
	cp h			;4d62
	scf			;4d63
	sub h			;4d64
	cp 089h			;4d65
	sbc a,c			;4d67
	ld (bc),a		;4d68
	cp a			;4d69
	jp (hl)			;4d6a
	ccf			;4d6b
	defb 0ddh,07fh,084h ;illegal sequence	;4d6c
	cp e			;4d6f
	add a,d			;4d70
	xor e			;4d71
	ld c,a			;4d72
	call p,0fe6bh		;4d73
	pop bc			;4d76
	ld e,a			;4d77
	ld e,l			;4d78
	jp 0f9fbh		;4d79
	and l			;4d7c
	add hl,hl		;4d7d
	xor c			;4d7e
	ld d,c			;4d7f
	adc a,b			;4d80
	add a,h			;4d81
	jp 0bbbbh		;4d82
	ld h,h			;4d85
	sbc a,a			;4d86
	ld a,c			;4d87
	ret z			;4d88
	xor 031h		;4d89
	adc a,h			;4d8b
	call pe,0828bh		;4d8c
	and (hl)		;4d8f
	ld (hl),e		;4d90
	add a,(hl)		;4d91
	ld h,(hl)		;4d92
	nop			;4d93
	defb 0edh ;next byte illegal after ed	;4d94
	dec e			;4d95
	rlca			;4d96
	xor e			;4d97
	ld de,02bb7h		;4d98
	add a,h			;4d9b
	ld (hl),l		;4d9c
	adc a,l			;4d9d
	dec e			;4d9e
	ld (0a73fh),hl		;4d9f
	ld c,b			;4da2
	ex de,hl		;4da3
	ld a,(hl)		;4da4
l4da5h:
	add a,(hl)		;4da5
	cp (hl)			;4da6
	ld (hl),a		;4da7
	ld c,a			;4da8
	sbc a,a			;4da9
	nop			;4daa
	halt			;4dab
	ld (0e4ffh),hl		;4dac
	cp a			;4daf
	rst 20h			;4db0
	dec bc			;4db1
	add hl,de		;4db2
	ld l,035h		;4db3
	adc a,d			;4db5
	ld c,b			;4db6
	cp h			;4db7
	inc a			;4db8
	rra			;4db9
	xor a			;4dba
	add a,e			;4dbb
	add hl,hl		;4dbc
	jp p,0872fh		;4dbd
	ld (0ec81h),hl		;4dc0
	adc a,(hl)		;4dc3
	adc a,e			;4dc4
	di			;4dc5
	rlca			;4dc6
	jp l52fdh		;4dc7
	add hl,de		;4dca
	call z,08a83h		;4dcb
	sbc a,h			;4dce
	ex af,af'		;4dcf
	rst 20h			;4dd0
	ccf			;4dd1
	defb 0fdh,0b7h,0ffh ;illegal sequence	;4dd2
	sub e			;4dd5
	ccf			;4dd6
	ld a,04fh		;4dd7
	xor h			;4dd9
	ret c			;4dda
	ld l,d			;4ddb
	or (hl)			;4ddc
	ld l,h			;4ddd
	call nc,0f9d9h		;4dde
	sub e			;4de1
	jr nz,l4deah		;4de2
	jr nz,l4da5h		;4de4
	ld (hl),0afh		;4de6
	halt			;4de8
	xor d			;4de9
l4deah:
	ld c,d			;4dea
	cp h			;4deb
	adc a,0afh		;4dec
	srl h			;4dee
	rrca			;4df0
	cp b			;4df1
	call m,0ecbdh		;4df2
	dec hl			;4df5
	jp po,02f38h		;4df6
	ld d,l			;4df9
	nop			;4dfa
	di			;4dfb
	ld a,h			;4dfc
	sbc a,h			;4dfd
	ld (hl),a		;4dfe
	ld c,b			;4dff
	call p,0b332h		;4e00
	add a,e			;4e03
	sub d			;4e04
	halt			;4e05
	add a,a			;4e06
	sub d			;4e07
	add a,(hl)		;4e08
	sub e			;4e09
	and e			;4e0a
	di			;4e0b
	ccf			;4e0c
	pop hl			;4e0d
	adc a,(hl)		;4e0e
	sub c			;4e0f
	inc sp			;4e10
	inc bc			;4e11
	rrca			;4e12
	ld a,l			;4e13
	nop			;4e14
	jp pe,0d145h		;4e15
	xor e			;4e18
	ld d,d			;4e19
	call nz,sub_4826h	;4e1a
	ld (025ceh),hl		;4e1d
	ld d,h			;4e20
	xor d			;4e21
	cp c			;4e22
	nop			;4e23
	ld l,d			;4e24
	or h			;4e25
	halt			;4e26
	or b			;4e27
	ld a,d			;4e28
	cp c			;4e29
	ld b,(hl)		;4e2a
	or e			;4e2b
	ld (hl),h		;4e2c
	rrca			;4e2d
	sub d			;4e2e
	ld e,d			;4e2f
	ld de,036fbh		;4e30
	ld sp,0ca84h		;4e33
	ld (hl),l		;4e36
	ld hl,(0ba03h)		;4e37
	or 005h			;4e3a
	sub h			;4e3c
	adc a,(hl)		;4e3d
	sub h			;4e3e
	rst 30h			;4e3f
	sub h			;4e40
	ld (hl),c		;4e41
	ld (08806h),a		;4e42
	ld h,h			;4e45
	sub d			;4e46
	ld h,h			;4e47
	adc a,e			;4e48
	sbc a,(hl)		;4e49
	sbc a,a			;4e4a
	adc a,l			;4e4b
	add hl,de		;4e4c
	cpl			;4e4d
	push af			;4e4e
	push iy			;4e4f
	xor 0e1h		;4e51
	ccf			;4e53
	ld b,b			;4e54
	add hl,de		;4e55
	ld d,c			;4e56
	or a			;4e57
	and c			;4e58
	ld b,h			;4e59
	dec sp			;4e5a
	inc c			;4e5b
	ret			;4e5c
	rrca			;4e5d
	call p,033f8h		;4e5e
	ld a,d			;4e61
	ld a,b			;4e62
	ld (hl),d		;4e63
	ld a,a			;4e64
	ret nz			;4e65
	ld d,d			;4e66
	add a,b			;4e67
	ld c,l			;4e68
	xor d			;4e69
	call nc,0b4c4h		;4e6a
	or d			;4e6d
	add a,h			;4e6e
	or 0aeh			;4e6f
	ld a,(l520fh)		;4e71
	sub b			;4e74
	call po,0222bh		;4e75
	ei			;4e78
	scf			;4e79
	jp pe,08488h		;4e7a
	jp z,0f829h		;4e7d
	jp z,l5bf7h		;4e80
	add a,a			;4e83
	in a,(0fch)		;4e84
	push bc			;4e86
	ld de,0118ch		;4e87
	sub b			;4e8a
l4e8bh:
	sub d			;4e8b
	adc a,e			;4e8c
	ld c,(hl)		;4e8d
	jp 02f6eh		;4e8e
	ld h,(hl)		;4e91
	jp po,0f1f3h		;4e92
	ccf			;4e95
	ld d,l			;4e96
	ld c,c			;4e97
	jp c,l59bah		;4e98
	jr c,l4ed2h		;4e9b
l4e9dh:
	jr nz,l4e9dh		;4e9d
	jp po,0d7fch		;4e9f
	adc a,d			;4ea2
	ret c			;4ea3
	dec de			;4ea4
	adc a,d			;4ea5
	cp e			;4ea6
	in a,(032h)		;4ea7
	rlca			;4ea9
	adc a,e			;4eaa
	dec bc			;4eab
	adc a,c			;4eac
	adc a,h			;4ead
	xor d			;4eae
	ld b,h			;4eaf
	ld b,h			;4eb0
	or l			;4eb1
	and h			;4eb2
	cp (hl)			;4eb3
	adc a,h			;4eb4
	adc a,h			;4eb5
	or h			;4eb6
	ld l,007h		;4eb7
	rrca			;4eb9
	push de			;4eba
	sub b			;4ebb
	pop hl			;4ebc
	adc a,d			;4ebd
	inc hl			;4ebe
	ld (hl),e		;4ebf
	and c			;4ec0
	sub d			;4ec1
	di			;4ec2
	sub e			;4ec3
	cpl			;4ec4
	dec hl			;4ec5
	jp pe,0f72dh		;4ec6
	adc a,e			;4ec9
	add a,b			;4eca
	scf			;4ecb
	or h			;4ecc
	dec a			;4ecd
	sbc a,c			;4ece
	daa			;4ecf
	sbc a,(hl)		;4ed0
	rla			;4ed1
l4ed2h:
	ld hl,09205h		;4ed2
	inc hl			;4ed5
	add hl,de		;4ed6
l4ed7h:
	cpl			;4ed7
l4ed8h:
	ld (hl),c		;4ed8
	jp pe,0f337h		;4ed9
	ld a,(0b93fh)		;4edc
	ld a,(de)		;4edf
	or h			;4ee0
	dec sp			;4ee1
	xor d			;4ee2
	inc l			;4ee3
	dec (hl)		;4ee4
	rrca			;4ee5
	rst 30h			;4ee6
	ld a,a			;4ee7
	adc a,e			;4ee8
	cp l			;4ee9
	call nc,0d5f6h		;4eea
	or e			;4eed
	cp (hl)			;4eee
	ld c,d			;4eef
	call m,027b3h		;4ef0
	or h			;4ef3
	or 0a6h			;4ef4
	ld l,a			;4ef6
	or l			;4ef7
	in a,(040h)		;4ef8
	xor a			;4efa
	or c			;4efb
	adc a,b			;4efc
	rrca			;4efd
	pop hl			;4efe
	and (hl)		;4eff
	jr c,l4f22h		;4f00
	call z,02f7bh		;4f02
	xor e			;4f05
	ld (hl),c		;4f06
	add a,(hl)		;4f07
	cpl			;4f08
	jp pe,0f731h		;4f09
	add a,e			;4f0c
	ld de,09232h		;4f0d
	di			;4f10
	sub h			;4f11
	ld (de),a		;4f12
	sbc a,e			;4f13
	sub d			;4f14
	defb 0fdh,0b3h,08eh ;illegal sequence	;4f15
	ld de,02f19h		;4f18
	sub a			;4f1b
	jp m,l4489h		;4f1c
l4f1fh:
	jp m,008cdh		;4f1f
l4f22h:
	sub d			;4f22
	ccf			;4f23
	ret			;4f24
	xor (hl)		;4f25
	sbc a,(hl)		;4f26
	cp l			;4f27
	adc a,c			;4f28
	ld bc,0cd85h		;4f29
	rrca			;4f2c
	sbc a,a			;4f2d
	rst 38h			;4f2e
	ld (hl),l		;4f2f
	ld (014bch),a		;4f30
	add hl,sp		;4f33
	cp 0aah			;4f34
	ld sp,092ffh		;4f36
	jr z,l4ed7h		;4f39
	call p,0bfc5h		;4f3b
	cp h			;4f3e
	cp b			;4f3f
	xor (hl)		;4f40
	inc b			;4f41
	or e			;4f42
	adc a,e			;4f43
	cp (hl)			;4f44
	rrca			;4f45
	pop bc			;4f46
	ld b,b			;4f47
	ld b,e			;4f48
	inc sp			;4f49
	ld (bc),a		;4f4a
	ld b,h			;4f4b
	cpl			;4f4c
	jr z,l4ed8h		;4f4d
	bit 7,a			;4f4f
	ex de,hl		;4f51
	defb 0ddh,0f7h,058h ;illegal sequence	;4f52
	cp e			;4f55
	and a			;4f56
	ld sp,hl		;4f57
	add hl,sp		;4f58
	rst 30h			;4f59
	ld d,023h		;4f5a
	add a,c			;4f5c
	sbc a,l			;4f5d
	adc a,l			;4f5e
	ld c,h			;4f5f
	ld b,019h		;4f60
	pop af			;4f62
	cpl			;4f63
	ei			;4f64
	ld de,0b389h		;4f65
	sub c			;4f68
	ld sp,hl		;4f69
	jr c,l4fb4h		;4f6a
	ccf			;4f6c
	ld l,e			;4f6d
	ret			;4f6e
	ld a,e			;4f6f
	ld bc,02222h		;4f70
	defb 0ddh,027h,094h ;illegal sequence	;4f73
	adc a,c			;4f76
	rst 38h			;4f77
	pop hl			;4f78
	ld c,d			;4f79
	inc bc			;4f7a
sub_4f7bh:
	rst 10h			;4f7b
	ld h,d			;4f7c
	push de			;4f7d
	ld c,(hl)		;4f7e
	and b			;4f7f
	ld h,c			;4f80
	call z,sub_49a7h	;4f81
	cpl			;4f84
	ld l,d			;4f85
	cp d			;4f86
l4f87h:
	xor 0b4h		;4f87
	ld b,h			;4f89
	cp l			;4f8a
	adc a,c			;4f8b
	defb 0fdh,0bch ;cp iyh	;4f8c
	pop af			;4f8e
	rrca			;4f8f
	ld a,(de)		;4f90
	sub c			;4f91
	ld (08229h),hl		;4f92
	ld d,e			;4f95
	ld l,l			;4f96
	cpl			;4f97
	ld (de),a		;4f98
	add a,a			;4f99
	ld d,d			;4f9a
	jr nc,$+76		;4f9b
	jr nz,l4f1fh		;4f9d
	exx			;4f9f
	ld a,(bc)		;4fa0
	add hl,sp		;4fa1
	cp e			;4fa2
	add hl,de		;4fa3
	ld bc,03015h		;4fa4
	ld (de),a		;4fa7
	cp a			;4fa8
	or c			;4fa9
	sbc a,b			;4faa
	ld (hl),091h		;4fab
	cpl			;4fad
	scf			;4fae
	ld h,d			;4faf
	call z,066ffh		;4fb0
	inc sp			;4fb3
l4fb4h:
	ccf			;4fb4
	cp l			;4fb5
	ret			;4fb6
	or e			;4fb7
	ld sp,0211ah		;4fb8
	and d			;4fbb
	daa			;4fbc
	sbc a,h			;4fbd
	inc h			;4fbe
	rst 38h			;4fbf
	call m,0b612h		;4fc0
	ld a,l			;4fc3
l4fc4h:
	or (hl)			;4fc4
	ld a,d			;4fc5
	ld c,(hl)		;4fc6
	sbc a,a			;4fc7
	jr z,l4fdbh		;4fc8
	ret z			;4fca
	xor b			;4fcb
l4fcch:
	ld hl,l4ac1h		;4fcc
	sbc a,c			;4fcf
	call p,0ee4ah		;4fd0
	jp pe,09874h		;4fd3
	xor (hl)		;4fd6
	ld d,a			;4fd7
	rrca			;4fd8
	ret nz			;4fd9
	ld c,c			;4fda
l4fdbh:
	ld hl,01915h		;4fdb
	add hl,hl		;4fde
	adc a,c			;4fdf
	dec h			;4fe0
	cpl			;4fe1
	xor 054h		;4fe2
	xor b			;4fe4
	call po,057d4h		;4fe5
	ld bc,02ff8h		;4fe8
	cp 02eh			;4feb
	cp b			;4fed
	inc l			;4fee
	sub h			;4fef
	and h			;4ff0
	add a,b			;4ff1
	and h			;4ff2
	sub a			;4ff3
	ld e,h			;4ff4
	cpl			;4ff5
	xor c			;4ff6
	sbc a,c			;4ff7
l4ff8h:
	ei			;4ff8
	adc a,l			;4ff9
	add a,d			;4ffa
	call z,0113fh		;4ffb
	ret			;4ffe
	inc de			;4fff
sub_5000h:
	ld bc,09aa1h		;5000
	ld h,001h		;5003
	ld (hl),e		;5005
	add hl,hl		;5006
	cp 0c3h			;5007
	call nz,09e39h		;5009
	dec de			;500c
	call nz,02bbch		;500d
	inc b			;5010
	sbc a,(hl)		;5011
l5012h:
	inc de			;5012
	adc a,c			;5013
	cp c			;5014
	ld e,d			;5015
	xor 0a9h		;5016
	ld c,h			;5018
	di			;5019
	add hl,hl		;501a
	call nz,00f8fh		;501b
	ld d,041h		;501e
	add a,e			;5020
	or c			;5021
	cpl			;5022
	sub a			;5023
l5024h:
	xor a			;5024
	sbc a,c			;5025
	add a,e			;5026
	jp z,08f02h		;5027
	sub d			;502a
	call p,08f72h		;502b
	xor a			;502e
	ei			;502f
	set 7,e			;5030
	ld b,h			;5032
	jr nz,l4ff8h		;5033
	adc a,(hl)		;5035
	add hl,de		;5036
	cpl			;5037
	ld a,c			;5038
	rst 38h			;5039
	adc a,d			;503a
	jp 03fddh		;503b
	ld b,l			;503e
	ld c,c			;503f
	rst 30h			;5040
	sbc a,(hl)		;5041
	exx			;5042
	inc bc			;5043
	and (hl)		;5044
	ld (de),a		;5045
	sbc a,c			;5046
	rst 38h			;5047
	inc a			;5048
	dec (hl)		;5049
	ld d,b			;504a
	and c			;504b
	adc a,h			;504c
	sub c			;504d
	ld e,026h		;504e
	inc bc			;5050
	jr nc,l5024h		;5051
	xor c			;5053
	cp b			;5054
	ld c,c			;5055
	cp d			;5056
	ld a,e			;5057
	cp b			;5058
	jp c,0954ch		;5059
	ld b,l			;505c
	ret z			;505d
	xor h			;505e
	cp (hl)			;505f
	rrca			;5060
	jp pe,02f49h		;5061
	ei			;5064
	inc l			;5065
	add a,c			;5066
	call 0e783h		;5067
	ld a,h			;506a
	add hl,hl		;506b
	add a,(hl)		;506c
	ld (de),a		;506d
	inc hl			;506e
	sub e			;506f
	dec hl			;5070
	inc sp			;5071
	sbc a,d			;5072
	dec d			;5073
	inc sp			;5074
	sbc a,c			;5075
	sbc a,l			;5076
	cpl			;5077
	ld h,(hl)		;5078
	or 072h			;5079
	add a,b			;507b
	cp b			;507c
	sbc a,c			;507d
	ccf			;507e
	ld d,(hl)		;507f
	adc a,c			;5080
	cp 04eh			;5081
	call m,0e5c6h		;5083
	scf			;5086
	add hl,de		;5087
	rst 38h			;5088
	pop hl			;5089
	add hl,hl		;508a
	sbc a,b			;508b
	jr z,l5012h		;508c
	ld l,h			;508e
	add a,00ah		;508f
	inc sp			;5091
	inc sp			;5092
	jr nc,l5095h		;5093
l5095h:
	add hl,sp		;5095
	ld a,a			;5096
	cp (hl)			;5097
	cp d			;5098
	cpl			;5099
	or h			;509a
	dec hl			;509b
	push bc			;509c
	adc a,(hl)		;509d
	cp a			;509e
	ld e,a			;509f
	rrca			;50a0
	ld h,h			;50a1
	sub d			;50a2
	xor 0d9h		;50a3
	ld c,a			;50a5
	xor l			;50a6
	daa			;50a7
	ei			;50a8
	ld l,07ch		;50a9
	jp z,l6580h		;50ab
l50aeh:
	ld a,a			;50ae
	add a,c			;50af
	xor 09eh		;50b0
	ld d,e			;50b2
	add hl,de		;50b3
	add hl,de		;50b4
	cpl			;50b5
	and h			;50b6
	ld c,h			;50b7
	rst 38h			;50b8
	xor h			;50b9
	cp a			;50ba
	ld (hl),c		;50bb
l50bch:
	rrca			;50bc
	sub h			;50bd
	cpl			;50be
	xor l			;50bf
	and a			;50c0
	inc bc			;50c1
	rrca			;50c2
	add hl,hl		;50c3
l50c4h:
	ld a,a			;50c4
	add a,l			;50c5
	ld c,c			;50c6
	push hl			;50c7
	add hl,sp		;50c8
	jp c,0d545h		;50c9
	nop			;50cc
	dec sp			;50cd
	ld e,e			;50ce
	dec (hl)		;50cf
	nop			;50d0
	add a,h			;50d1
	xor h			;50d2
	or a			;50d3
	call p,0c9a5h		;50d4
	inc bc			;50d7
	ld l,a			;50d8
	ld c,h			;50d9
	push af			;50da
	ld e,h			;50db
	ld a,099h		;50dc
	rrca			;50de
	ld bc,02140h		;50df
	ld sp,019ebh		;50e2
	call pe,0fba9h		;50e5
	jp (hl)			;50e8
	rst 28h			;50e9
	ex de,hl		;50ea
	push de			;50eb
	add hl,de		;50ec
	ld (bc),a		;50ed
	ld c,c			;50ee
	sub b			;50ef
	jp 0888bh		;50f0
	ld e,c			;50f3
	cpl			;50f4
	sbc a,02dh		;50f5
	ld (hl),e		;50f7
	ld a,a			;50f8
	inc b			;50f9
	adc a,l			;50fa
	adc a,c			;50fb
	xor a			;50fc
	ld c,l			;50fd
	or (hl)			;50fe
	jp c,09c03h		;50ff
	adc a,(hl)		;5102
	rst 38h			;5103
	ld a,b			;5104
	ld d,l			;5105
	adc a,c			;5106
	dec hl			;5107
	jp c,09020h		;5108
	inc sp			;510b
	cp e			;510c
	jr l50c4h		;510d
	cp e			;510f
	scf			;5110
	di			;5111
	sub a			;5112
	di			;5113
	ld l,l			;5114
	rrca			;5115
	cp d			;5116
	ld h,l			;5117
	inc bc			;5118
	cp a			;5119
	inc l			;511a
	ld a,h			;511b
	rrca			;511c
	dec (hl)		;511d
	push af			;511e
	ld h,h			;511f
	ld a,a			;5120
	ld (hl),h		;5121
	djnz l50aeh		;5122
	or 07fh			;5124
	jp z,0fb07h		;5126
	ret			;5129
	adc a,l			;512a
	ld c,e			;512b
	adc a,(hl)		;512c
	push bc			;512d
	ld hl,l6fc3h		;512e
	cpl			;5131
	ld d,d			;5132
	add a,089h		;5133
	ld b,h			;5135
	add a,(hl)		;5136
	sbc a,03fh		;5137
	dec e			;5139
	ld c,c			;513a
	or l			;513b
	add a,003h		;513c
	and d			;513e
	djnz $+1		;513f
	sbc a,a			;5141
	rst 38h			;5142
	add a,d			;5143
	xor d			;5144
	sub d			;5145
	exx			;5146
	ld d,b			;5147
	add a,b			;5148
	inc sp			;5149
	adc a,b			;514a
	rst 38h			;514b
	or e			;514c
	rlca			;514d
	ld a,d			;514e
sub_514fh:
	ld a,c			;514f
	and b			;5150
	ld (hl),e		;5151
	rrca			;5152
	ld (hl),h		;5153
	rst 0			;5154
	pop bc			;5155
	daa			;5156
	rrca			;5157
	call nz,09199h		;5158
	call po,0af19h		;515b
	ld b,(hl)		;515e
	out (029h),a		;515f
	ld sp,08810h		;5161
	adc a,c			;5164
	exx			;5165
	sbc a,e			;5166
	cp l			;5167
	sbc a,b			;5168
	inc bc			;5169
	xor l			;516a
	add a,c			;516b
	ld a,(00921h)		;516c
sub_516fh:
	cpl			;516f
	ld l,d			;5170
	ld c,b			;5171
	ei			;5172
	jp p,0ea82h		;5173
	rrca			;5176
	ret			;5177
	xor d			;5178
	ld c,(hl)		;5179
	in a,(04dh)		;517a
	inc bc			;517c
	sbc a,d			;517d
	rst 38h			;517e
	rst 38h			;517f
	cp (hl)			;5180
	dec de			;5181
	xor a			;5182
	ld c,d			;5183
	nop			;5184
	add hl,hl		;5185
	ld (bc),a		;5186
	inc bc			;5187
	inc sp			;5188
	or e			;5189
	nop			;518a
	ld (hl),a		;518b
	ld a,c			;518c
	or b			;518d
	rst 10h			;518e
	rrca			;518f
	sub (hl)		;5190
	add a,h			;5191
	call m,0bf91h		;5192
	sbc a,a			;5195
	rrca			;5196
	dec e			;5197
	add a,(hl)		;5198
	sra c			;5199
	ex de,hl		;519b
	ld h,(hl)		;519c
	ld a,c			;519d
	jp po,08483h		;519e
	ld l,h			;51a1
	di			;51a2
	scf			;51a3
	adc a,(hl)		;51a4
	dec h			;51a5
sub_51a6h:
	add a,h			;51a6
	inc b			;51a7
	inc sp			;51a8
	ld (de),a		;51a9
	sub c			;51aa
	sub a			;51ab
	ld e,(hl)		;51ac
l51adh:
	cpl			;51ad
	ld (de),a		;51ae
	ret			;51af
	ld h,(hl)		;51b0
	or l			;51b1
	cp c			;51b2
	sbc a,c			;51b3
	rrca			;51b4
	ld e,l			;51b5
	ld bc,0a37bh		;51b6
	ld l,l			;51b9
	inc bc			;51ba
	sbc a,(hl)		;51bb
	ld e,c			;51bc
	rst 38h			;51bd
	ret p			;51be
	call nc,0da53h		;51bf
	scf			;51c2
	call z,011deh		;51c3
	nop			;51c6
	ld a,(hl)		;51c7
	ld h,a			;51c8
	ld (hl),a		;51c9
	cp e			;51ca
	sub l			;51cb
	jp (hl)			;51cc
	and 00fh		;51cd
	and 0fbh		;51cf
	ld e,(hl)		;51d1
	call p,0f546h		;51d2
	ld a,h			;51d5
	rrca			;51d6
	ld d,(hl)		;51d7
	or e			;51d8
	adc a,c			;51d9
	ld (bc),a		;51da
	add a,b			;51db
	ld h,b			;51dc
	inc de			;51dd
	djnz l51adh		;51de
	call nc,0809dh		;51e0
	ld c,d			;51e3
	ld (l75fah),a		;51e4
	ret m			;51e7
	defb 0ddh,059h,02fh ;illegal sequence	;51e8
	sbc a,0ffh		;51eb
	ld hl,(0fa88h)		;51ed
	ld l,00fh		;51f0
	ld l,d			;51f2
	dec l			;51f3
	ld bc,0ec9dh		;51f4
	inc bc			;51f7
	adc a,e			;51f8
	rst 38h			;51f9
	add a,b			;51fa
	cp 01ch			;51fb
	rra			;51fd
	sbc a,l			;51fe
	xor h			;51ff
	dec b			;5200
	sub a			;5201
	ld (hl),a		;5202
	halt			;5203
	ld h,(hl)		;5204
	ld h,(hl)		;5205
	ld a,a			;5206
	cp c			;5207
	xor c			;5208
	rrca			;5209
	rst 8			;520a
	call m,sub_7316h	;520b
	cp e			;520e
l520fh:
	and a			;520f
	rrca			;5210
	jp z,l5f91h		;5211
	nop			;5214
	ld c,(hl)		;5215
	ei			;5216
	or h			;5217
	add a,h			;5218
	ld l,l			;5219
	defb 0fdh,08bh,067h ;illegal sequence	;521a
	add a,c			;521d
	ld h,l			;521e
	ei			;521f
	jp p,0f299h		;5220
	cpl			;5223
	adc a,d			;5224
	rst 38h			;5225
	cp 052h			;5226
	ld a,a			;5228
	call c,0ff0fh		;5229
	ld h,0a1h		;522c
	adc a,e			;522e
	sbc a,a			;522f
	inc bc			;5230
	ld l,d			;5231
	ld a,a			;5232
	rrca			;5233
	rst 38h			;5234
	ld a,(hl)		;5235
	ld c,b			;5236
	xor e			;5237
	adc a,h			;5238
	sub (hl)		;5239
	ld d,(hl)		;523a
	ld a,(hl)		;523b
	inc sp			;523c
	sub a			;523d
	sub h			;523e
	add hl,bc		;523f
	rrca			;5240
	sbc a,d			;5241
	ld c,e			;5242
	cp l			;5243
	ld (hl),d		;5244
	ld c,0f9h		;5245
	rrca			;5247
	ld d,a			;5248
	sub c			;5249
	call pe,0fb9fh		;524a
	cp b			;524d
	add a,h			;524e
	ld d,l			;524f
	add a,c			;5250
	add a,e			;5251
	sub d			;5252
	ld de,0fbfbh		;5253
	call p,0a72fh		;5256
	ld a,(hl)		;5259
	jr nc,l52a8h		;525a
	rrca			;525c
	dec bc			;525d
	ret			;525e
	xor l			;525f
	ld c,(hl)		;5260
	cp h			;5261
	call z,09f03h		;5262
	ld (07fc4h),hl		;5265
	rrca			;5268
	ret po			;5269
	ld h,0e9h		;526a
	ld h,c			;526c
	ld l,c			;526d
	sub (hl)		;526e
	ld a,(hl)		;526f
	ld e,066h		;5270
	ld a,c			;5272
	or b			;5273
	ld e,d			;5274
	call po,00f71h		;5275
	jr $-107		;5278
	cp d			;527a
	cp a			;527b
	rrca			;527c
	ld hl,(04b92h)		;527d
	ld a,(hl)		;5280
	inc hl			;5281
l5282h:
	ei			;5282
	push hl			;5283
	rst 30h			;5284
	ld a,h			;5285
	ld d,h			;5286
	ret m			;5287
	ld bc,0fbbeh		;5288
	call m,0a32fh		;528b
	xor a			;528e
	ld a,e			;528f
	jp m,00f38h		;5290
	call z,sub_5affh	;5293
	ld de,l6fafh		;5296
	inc bc			;5299
	sbc a,e			;529a
	and a			;529b
	ld a,a			;529c
	cp h			;529d
	sub b			;529e
	ret c			;529f
	ret c			;52a0
l52a1h:
	or a			;52a1
	exx			;52a2
	ld c,d			;52a3
	add a,b			;52a4
	dec sp			;52a5
	ld h,a			;52a6
	cp d			;52a7
l52a8h:
	ld a,d			;52a8
	rrca			;52a9
	call po,0d6a9h		;52aa
	call p,00f3eh		;52ad
	ld c,h			;52b0
	ld d,c			;52b1
	or h			;52b2
	ei			;52b3
	call po,0a2f0h		;52b4
	pop de			;52b7
	cp 093h			;52b8
	add a,c			;52ba
	adc a,e			;52bb
	ei			;52bc
	ex de,hl		;52bd
l52beh:
	cpl			;52be
	jp z,0d2aah		;52bf
	ld sp,08e93h		;52c2
	rrca			;52c5
	adc a,e			;52c6
	rst 38h			;52c7
	daa			;52c8
	and d			;52c9
	halt			;52ca
sub_52cbh:
	inc bc			;52cb
	rst 38h			;52cc
	rst 0			;52cd
	ld b,h			;52ce
	ld a,a			;52cf
	jp l58d4h		;52d0
	ld c,b			;52d3
	add a,l			;52d4
	dec hl			;52d5
	halt			;52d6
	sub a			;52d7
	ld h,l			;52d8
	cp 026h			;52d9
	cpl			;52db
	di			;52dc
	rrca			;52dd
	inc b			;52de
	sbc a,d			;52df
	ld c,a			;52e0
	call nz,00ff9h		;52e1
l52e4h:
	dec hl			;52e4
	ld a,a			;52e5
	ld c,e			;52e6
	ei			;52e7
	rst 30h			;52e8
	or l			;52e9
	ld c,h			;52ea
	add a,e			;52eb
	and e			;52ec
	add a,e			;52ed
	rla			;52ee
	ld (0d7fbh),hl		;52ef
	cpl			;52f2
	sub e			;52f3
	sbc a,b			;52f4
	cp l			;52f5
	or e			;52f6
	or h			;52f7
	ld d,a			;52f8
	rrca			;52f9
	ld d,a			;52fa
	adc a,c			;52fb
	ld a,e			;52fc
l52fdh:
	or b			;52fd
	ld c,l			;52fe
l52ffh:
	ld (de),a		;52ff
	inc bc			;5300
	ld b,(hl)		;5301
	djnz l52e4h		;5302
	ld c,e			;5304
	rst 38h			;5305
	pop bc			;5306
	and l			;5307
	ret			;5308
	cp 018h			;5309
	ld h,l			;530b
	inc h			;530c
	sub a			;530d
	ld h,(hl)		;530e
	cp 0c7h			;530f
	ld e,084h		;5311
	rrca			;5313
	ld d,h			;5314
	cp c			;5315
	sub d			;5316
	cp a			;5317
	xor a			;5318
	call nz,0900fh		;5319
	adc a,c			;531c
	ld hl,06dbfh		;531d
	ei			;5320
	ld l,a			;5321
	push de			;5322
	adc a,b			;5323
	rst 10h			;5324
	sub a			;5325
	inc de			;5326
	ei			;5327
	res 3,b			;5328
	cpl			;532a
	and 04ah		;532b
	sbc a,c			;532d
	and e			;532e
	add a,0aah		;532f
	halt			;5331
	rst 38h			;5332
	rst 8			;5333
	rst 38h			;5334
	jp 0aba4h		;5335
	nop			;5338
	ld c,b			;5339
	defb 0fdh,059h,045h ;illegal sequence	;533a
	halt			;533d
	rst 38h			;533e
	push hl			;533f
	sbc a,c			;5340
	or h			;5341
	xor h			;5342
	ld l,(hl)		;5343
	rst 28h			;5344
	rst 0			;5345
	ret			;5346
	rra			;5347
	rrca			;5348
	ld a,0f8h		;5349
	and a			;534b
	ei			;534c
	call pe,l6580h		;534d
	add a,b			;5350
	sub l			;5351
	ld a,(bc)		;5352
	ei			;5353
	jp po,08101h		;5354
	ld l,a			;5357
	cpl			;5358
	and b			;5359
	sub d			;535a
	ld de,0a9f4h		;535b
	ld l,l			;535e
	inc sp			;535f
	inc bc			;5360
	rst 38h			;5361
	ld h,h			;5362
	rst 38h			;5363
	ld a,h			;5364
	ld sp,l4aa6h		;5365
	xor e			;5368
	ld b,096h		;5369
	ld d,l			;536b
	ld l,c			;536c
	sub a			;536d
	cp 016h			;536e
	cp a			;5370
	sub (hl)		;5371
	rra			;5372
	and c			;5373
	ld sp,055b4h		;5374
	sbc a,c			;5377
	inc l			;5378
	push bc			;5379
	ld h,a			;537a
	rra			;537b
	ld e,h			;537c
	rst 38h			;537d
	cp b			;537e
	add a,h			;537f
sub_5380h:
	sub (hl)		;5380
	exx			;5381
	add a,00fh		;5382
	ld c,c			;5384
	call z,sub_48fah	;5385
	ld bc,085cdh		;5388
l538bh:
	call m,09a85h		;538b
	sbc a,0fbh		;538e
	push af			;5390
	sbc a,h			;5391
	rra			;5392
	rst 20h			;5393
	cpl			;5394
	ret pe			;5395
	sub c			;5396
	ld d,b			;5397
	ld (023f9h),a		;5398
	ld l,a			;539b
	inc hl			;539c
	inc bc			;539d
	rst 38h			;539e
	sbc a,a			;539f
	ld a,a			;53a0
l53a1h:
	inc e			;53a1
	push af			;53a2
	ld d,l			;53a3
	add hl,hl		;53a4
	defb 0fdh,048h,065h ;illegal sequence	;53a5
	ld a,(bc)		;53a8
	sub a			;53a9
	sbc a,b			;53aa
	call z,0fcafh		;53ab
	in a,(08fh)		;53ae
	ld d,l			;53b0
	ld (bc),a		;53b1
	inc b			;53b2
	jp c,000c7h		;53b3
	rst 20h			;53b6
	pop hl			;53b7
	ret nz			;53b8
	ld (0cd1fh),hl		;53b9
	inc bc			;53bc
	add a,b			;53bd
	cp e			;53be
	rra			;53bf
	ld e,(hl)		;53c0
	push de			;53c1
	ld l,d			;53c2
	rrca			;53c3
	add a,b			;53c4
	defb 0edh ;next byte illegal after ed	;53c5
	defb 0edh ;next byte illegal after ed	;53c6
	add a,e			;53c7
	ld c,h			;53c8
	ld sp,hl		;53c9
	ld c,l			;53ca
	ld sp,hl		;53cb
	ld b,c			;53cc
	ld (bc),a		;53cd
	ld (0f730h),a		;53ce
	ei			;53d1
	rra			;53d2
	jp (hl)			;53d3
	cpl			;53d4
	ret pe			;53d5
	sub d			;53d6
	ld h,(hl)		;53d7
	ld (0a9a7h),a		;53d8
	djnz l538bh		;53db
	ld h,07fh		;53dd
	call nz,sub_7cffh	;53df
l53e2h:
	ld (094abh),a		;53e2
	in a,(081h)		;53e5
	ld e,c			;53e7
	ld h,(hl)		;53e8
	sbc a,c			;53e9
	ld (hl),a		;53ea
	add a,b			;53eb
	ld h,02dh		;53ec
	ld l,020h		;53ee
	pop de			;53f0
	xor (hl)		;53f1
	ld e,c			;53f2
	exx			;53f3
	and (hl)		;53f4
	ld e,e			;53f5
	ex af,af'		;53f6
	ld (de),a		;53f7
	dec bc			;53f8
	di			;53f9
	rra			;53fa
	rst 8			;53fb
	cp e			;53fc
	jp z,0d439h		;53fd
	ld a,e			;5400
	rrca			;5401
	jp nz,08191h		;5402
	sub d			;5405
	ld c,a			;5406
	call c,0e4fah		;5407
	add a,c			;540a
	cpl			;540b
	inc hl			;540c
	ld sp,01f5dh		;540d
	ld a,a			;5410
	rrca			;5411
	dec sp			;5412
	dec hl			;5413
	and a			;5414
	halt			;5415
	add a,h			;5416
	xor c			;5417
	dec h			;5418
	ld de,02bcdh		;5419
	nop			;541c
	defb 0edh ;next byte illegal after ed	;541d
	and (hl)		;541e
	ld l,e			;541f
	cpl			;5420
	inc b			;5421
	sub (hl)		;5422
	sbc a,c			;5423
	ld d,l			;5424
	ld h,(hl)		;5425
	add a,b			;5426
	ret c			;5427
	or h			;5428
	xor h			;5429
	ld (de),a		;542a
	and (hl)		;542b
	inc h			;542c
	call c,0206ah		;542d
	ld d,a			;5430
	ld de,08cd8h		;5431
	dec bc			;5434
	and 01fh		;5435
	jp z,03bd7h		;5437
	inc sp			;543a
	rra			;543b
l543ch:
	rrca			;543c
	sbc a,(hl)		;543d
	add a,h			;543e
	xor e			;543f
	nop			;5440
	ld d,e			;5441
	ld a,a			;5442
	ld (de),a		;5443
	ld de,l69dch		;5444
	ret c			;5447
	ei			;5448
	ld a,c			;5449
	rra			;544a
	defb 0edh ;next byte illegal after ed	;544b
	cpl			;544c
	and 099h		;544d
	ld (hl),a		;544f
	ld de,01da7h		;5450
	cp 087h			;5453
	nop			;5455
	add hl,de		;5456
	ld a,a			;5457
	jp 028a5h		;5458
	ld c,h			;545b
	add a,0dfh		;545c
	add hl,bc		;545e
	ld d,a			;545f
	ld a,c			;5460
	add a,b			;5461
	dec hl			;5462
	jp c,0010bh		;5463
	jr nz,l543ch		;5466
	ld c,b			;5468
	xor h			;5469
	and l			;546a
	ld e,d			;546b
	ld bc,00b31h		;546c
	cp h			;546f
	rra			;5470
	jp nc,037cfh		;5471
	ret z			;5474
	ret nc			;5475
	inc sp			;5476
	rra			;5477
	rrca			;5478
	and d			;5479
	sub c			;547a
	ld sp,l7679h		;547b
	inc hl			;547e
	add a,l			;547f
	sbc a,0d6h		;5480
	ld d,(hl)		;5482
	add a,c			;5483
	ld a,h			;5484
	rra			;5485
	ld e,00fh		;5486
	ld d,l			;5488
	rst 38h			;5489
	ld a,a			;548a
	and a			;548b
	rrca			;548c
	nop			;548d
l548eh:
	add a,b			;548e
	call nz,08d92h		;548f
	ld h,a			;5492
	nop			;5493
	or h			;5494
	xor h			;5495
	rst 10h			;5496
	xor e			;5497
	and b			;5498
sub_5499h:
	sub a			;5499
	ld l,c			;549a
	ld l,c			;549b
	ld d,(hl)		;549c
	sub a			;549d
	and l			;549e
	ld a,a			;549f
	ld c,09ch		;54a0
	rst 10h			;54a2
	and h			;54a3
	call m,0d153h		;54a4
	ld h,(hl)		;54a7
	sbc a,044h		;54a8
	or h			;54aa
	jr nc,$-114		;54ab
	add a,(hl)		;54ad
	and 01fh		;54ae
	ret			;54b0
	sub e			;54b1
	call nc,0a692h		;54b2
	ld sp,00f9ch		;54b5
	ret nc			;54b8
	ld c,c			;54b9
	inc de			;54ba
	ld de,l7ee2h		;54bb
	ld a,d			;54be
	cp h			;54bf
	rst 10h			;54c0
	sub e			;54c1
	ret c			;54c2
	rra			;54c3
	ret po			;54c4
	pop af			;54c5
	rrca			;54c6
	ld d,(hl)		;54c7
	ld c,c			;54c8
	and b			;54c9
	inc sp			;54ca
	ld (l7e02h),hl		;54cb
	ld (0a3d7h),hl		;54ce
	rrca			;54d1
l54d2h:
	rst 38h			;54d2
	ret po			;54d3
	sub c			;54d4
	inc l			;54d5
	add a,h			;54d6
	xor a			;54d7
	ld e,h			;54d8
	defb 0fdh,059h,028h ;illegal sequence	;54d9
	ld a,c			;54dc
	ld h,a			;54dd
	add a,c			;54de
	xor h			;54df
	pop af			;54e0
	call nz,00076h		;54e1
	pop de			;54e4
	sub l			;54e5
	jp nc,01288h		;54e6
	cp 0cah			;54e9
	ex (sp),hl		;54eb
	ld c,(hl)		;54ec
	rra			;54ed
	ld l,e			;54ee
	ld d,e			;54ef
	cp c			;54f0
	and d			;54f1
	ret z			;54f2
	adc a,h			;54f3
	cp h			;54f4
	ld (hl),l		;54f5
	ld c,h			;54f6
	rrca			;54f7
	ld d,l			;54f8
	dec l			;54f9
	jr nc,l54d2h		;54fa
	dec l			;54fc
	ld bc,l4f87h		;54fd
	ei			;5500
	or (hl)			;5501
	rst 10h			;5502
	ret m			;5503
	rra			;5504
	inc a			;5505
	rrca			;5506
	ld l,c			;5507
	add hl,hl		;5508
	and c			;5509
	and d			;550a
	cp 0ach			;550b
	or b			;550d
	call z,sub_51a6h	;550e
	djnz l5522h		;5511
	rst 38h			;5513
	ret p			;5514
	ld h,e			;5515
	ret nc			;5516
	ld (bc),a		;5517
	sub a			;5518
	halt			;5519
	sbc a,c			;551a
	cp 045h			;551b
	ld a,c			;551d
	inc bc			;551e
	adc a,(hl)		;551f
	rla			;5520
	push de			;5521
l5522h:
	jp po,00302h		;5522
	and l			;5525
	xor l			;5526
	adc a,c			;5527
	add a,a			;5528
	ld de,0f9dah		;5529
	rra			;552c
	jp z,0cc98h		;552d
	ld c,h			;5530
	ret			;5531
	ld e,e			;5532
	in a,(04eh)		;5533
	rrca			;5535
	ret pe			;5536
	push de			;5537
	xor h			;5538
	and e			;5539
	pop af			;553a
	jp nc,0fa11h		;553b
	xor c			;553e
	sub 077h		;553f
	rra			;5541
	push bc			;5542
	rrca			;5543
	ret po			;5544
	sub d			;5545
	ld d,c			;5546
	inc de			;5547
	cp 0feh			;5548
	add hl,de		;554a
	ld a,a			;554b
	scf			;554c
	inc hl			;554d
	xor l			;554e
	add hl,hl		;554f
	rrca			;5550
	rst 38h			;5551
	ret m			;5552
	ld a,b			;5553
	ld b,09bh		;5554
	add a,b			;5556
	defb 0fdh,0a1h,079h ;illegal sequence	;5557
	sub a			;555a
	ld h,a			;555b
	cp h			;555c
	ld d,h			;555d
	cp 062h			;555e
	inc bc			;5560
	rst 30h			;5561
	ld hl,(0b681h)		;5562
	ld l,087h		;5565
	ld sp,01f00h		;5567
	sub 04eh		;556a
	ld h,d			;556c
	ld d,l			;556d
	ld c,b			;556e
	call c,00f8eh		;556f
	jp nc,0fb92h		;5572
	ld h,d			;5575
	add a,b			;5576
	or (hl)			;5577
	ld sp,093fdh		;5578
	exx			;557b
	rra			;557c
	ex (sp),hl		;557d
	ret p			;557e
	rrca			;557f
	or d			;5580
	cp 07fh			;5581
	xor h			;5583
	add a,b			;5584
	ld c,d			;5585
	ld (02327h),hl		;5586
	dec hl			;5589
	ld e,a			;558a
	ld sp,hl		;558b
	ld a,a			;558c
	adc a,e			;558d
	ld (hl),a		;558e
	halt			;558f
	cp 04dh			;5590
	ld a,a			;5592
	defb 0ddh,032h,0bbh ;illegal sequence	;5593
	call z,0d43dh		;5596
	cp a			;5599
	rr h			;559a
	rrca			;559c
	bit 7,b			;559d
	ld l,l			;559f
	adc a,c			;55a0
	rrca			;55a1
	adc a,0deh		;55a2
	rrca			;55a4
	ld a,07fh		;55a5
	ld l,a			;55a7
	sub h			;55a8
	rra			;55a9
	adc a,e			;55aa
	rrca			;55ab
	jp 0d17fh		;55ac
sub_55afh:
	sbc a,b			;55af
	ld a,(hl)		;55b0
	rst 28h			;55b1
	cpl			;55b2
	call c,0a4fdh		;55b3
	defb 0fdh,0c4h,076h ;illegal sequence	;55b6
	ld d,(hl)		;55b9
	add a,b			;55ba
	ld e,e			;55bb
	cp d			;55bc
	adc a,e			;55bd
	ld c,h			;55be
l55bfh:
	ld (hl),a		;55bf
	call nz,0c477h		;55c0
	ld d,(hl)		;55c3
	jp 00f33h		;55c4
	ld l,e			;55c7
	ld b,(hl)		;55c8
	ret z			;55c9
	rst 10h			;55ca
	ld c,h			;55cb
	rrca			;55cc
	adc a,l			;55cd
	push de			;55ce
	call pe,0b9ffh		;55cf
	ld hl,(00fc8h)		;55d2
	exx			;55d5
	rst 8			;55d6
	ld sp,hl		;55d7
	ld c,a			;55d8
	rra			;55d9
	rra			;55da
	rrca			;55db
	add hl,bc		;55dc
	rst 38h			;55dd
	ld (hl),h		;55de
	xor a			;55df
	rst 38h			;55e0
	add a,a			;55e1
	cpl			;55e2
	cp c			;55e3
	defb 0fdh,01eh,079h ;illegal sequence	;55e4
	add a,d			;55e7
	add hl,hl		;55e8
	ld h,(hl)		;55e9
	add a,e			;55ea
	ld sp,0c475h		;55eb
	sub h			;55ee
	inc l			;55ef
	cp a			;55f0
	ld c,h			;55f1
	adc a,(hl)		;55f2
	adc a,(hl)		;55f3
	rrca			;55f4
	scf			;55f5
	ld (hl),0d3h		;55f6
	ld d,0beh		;55f8
	ld (hl),e		;55fa
	rra			;55fb
	xor d			;55fc
	rst 38h			;55fd
	ld (hl),l		;55fe
sub_55ffh:
	ret po			;55ff
	cpl			;5600
	add a,h			;5601
	call z,01ff2h		;5602
	ret p			;5605
	rrca			;5606
	ld d,e			;5607
	sbc a,c			;5608
	rst 38h			;5609
	sbc a,h			;560a
	cp 0bch			;560b
	ld e,02fh		;560d
	inc (hl)		;560f
	ld a,d			;5610
	cp 05eh			;5611
	add a,e			;5613
	dec de			;5614
	ld h,a			;5615
	adc a,c			;5616
	ld (hl),l		;5617
	or l			;5618
	ret			;5619
	add a,b			;561a
	daa			;561b
	adc a,0eah		;561c
	ld c,b			;561e
	ld a,c			;561f
	ld e,d			;5620
	adc a,h			;5621
	jp z,0cb61h		;5622
	and a			;5625
	jp (hl)			;5626
	jr z,l55bfh		;5627
	out (09ch),a		;5629
	rrca			;562b
	sub 007h		;562c
	rst 38h			;562e
	defb 0edh ;next byte illegal after ed	;562f
	cpl			;5630
	xor a			;5631
	adc a,h			;5632
	rra			;5633
	ccf			;5634
	rrca			;5635
	dec b			;5636
	adc a,c			;5637
	rst 38h			;5638
	cp c			;5639
	rst 0			;563a
	rst 38h			;563b
	jp 0dc2fh		;563c
	add a,b			;563f
	and c			;5640
	ld (hl),l		;5641
	ld h,(hl)		;5642
	rst 38h			;5643
	ld (l7f66h),hl		;5644
	ld l,l			;5647
	ld b,h			;5648
	ld a,a			;5649
	cp a			;564a
	inc e			;564b
	call nz,00392h		;564c
	ld b,h			;564f
	add a,l			;5650
	jr c,l56b9h		;5651
	call nz,sub_52cbh	;5653
	adc a,d			;5656
	rst 28h			;5657
	ex af,af'		;5658
	rrca			;5659
	ld d,009h		;565a
	rst 38h			;565c
	dec sp			;565d
	ld e,h			;565e
	ld b,(hl)		;565f
	cpl			;5660
	ld a,b			;5661
	rra			;5662
	inc a			;5663
	ld c,b			;5664
	rrca			;5665
	or c			;5666
	rst 38h			;5667
	call 0ff94h		;5668
	sbc a,a			;566b
	rlca			;566c
	cpl			;566d
	ld a,a			;566e
	add a,h			;566f
	or d			;5670
	add a,b			;5671
	sbc a,d			;5672
	add a,d			;5673
	ld b,a			;5674
	rst 38h			;5675
	inc a			;5676
	rst 8			;5677
	ld c,e			;5678
	ld a,(0c398h)		;5679
	xor d			;567c
	push bc			;567d
	ret po			;567e
	rrca			;567f
	add a,h			;5680
	adc a,c			;5681
	ret z			;5682
	inc hl			;5683
	xor c			;5684
	sub e			;5685
	ld c,b			;5686
	rlca			;5687
	adc a,c			;5688
	rrca			;5689
	adc a,e			;568a
	ld b,l			;568b
	rst 38h			;568c
	ld e,l			;568d
	call c,02f99h		;568e
	or 01fh			;5691
	sbc a,b			;5693
	jp p,0d70fh		;5694
sub_5697h:
	rst 38h			;5697
	inc (hl)		;5698
	adc a,c			;5699
	rst 38h			;569a
	call m,02f3dh		;569b
	ld (de),a		;569e
	sbc a,c			;569f
	ld h,a			;56a0
	add a,c			;56a1
	inc c			;56a2
	ld d,(hl)		;56a3
	halt			;56a4
	halt			;56a5
	ld a,a			;56a6
	ld l,(hl)		;56a7
	call z,0c710h		;56a8
	ld h,h			;56ab
	ret nz			;56ac
	ld e,d			;56ad
	ret z			;56ae
	sbc a,c			;56af
l56b0h:
	ccf			;56b0
	jp z,l45fch		;56b1
	and h			;56b4
	rst 8			;56b5
	add a,a			;56b6
	ret c			;56b7
	ld h,l			;56b8
l56b9h:
	call nc,01f2eh		;56b9
	cp c			;56bc
	ld bc,0d8ffh		;56bd
	nop			;56c0
	inc b			;56c1
	exx			;56c2
	cpl			;56c3
	add a,05eh		;56c4
sub_56c6h:
	rra			;56c6
	ld a,c			;56c7
	add a,h			;56c8
	inc a			;56c9
l56cah:
	rrca			;56ca
	add hl,sp		;56cb
	rst 38h			;56cc
	rst 8			;56cd
	ld a,(hl)		;56ce
	ret po			;56cf
	defb 0edh ;next byte illegal after ed	;56d0
	cpl			;56d1
	sbc a,c			;56d2
	cp 041h			;56d3
	sub (hl)		;56d5
	ld l,c			;56d6
	dec (iy-001h)		;56d7
	inc h			;56da
	call po,037a6h		;56db
	ld d,c			;56de
	ld a,a			;56df
	dec b			;56e0
	ld c,c			;56e1
	sbc a,b			;56e2
	ret pe			;56e3
	add hl,de		;56e4
	call nz,00e69h		;56e5
	ld c,c			;56e8
	ei			;56e9
	ei			;56ea
	ld c,h			;56eb
	ld a,(hl)		;56ec
	sbc a,(hl)		;56ed
	ld (hl),d		;56ee
	rrca			;56ef
	ld c,c			;56f0
	rst 30h			;56f1
	rst 38h			;56f2
	ld (hl),e		;56f3
	djnz l56fah		;56f4
	ld b,h			;56f6
	ld a,h			;56f7
	cpl			;56f8
	ld h,h			;56f9
l56fah:
	cp 0f1h			;56fa
	rrca			;56fc
	rst 30h			;56fd
	rst 38h			;56fe
	add hl,sp		;56ff
	cp 078h			;5700
	ld a,d			;5702
	cpl			;5703
	or a			;5704
	ld a,a			;5705
	cp 036h			;5706
	add a,l			;5708
	cp c			;5709
	add a,e			;570a
	adc a,c			;570b
	call p,0f639h		;570c
	add hl,de		;570f
	sub l			;5710
	add hl,sp		;5711
	call p,0a64ch		;5712
	adc a,c			;5715
	ld sp,hl		;5716
	and 0cfh		;5717
	ld l,c			;5719
	out (08eh),a		;571a
	rrca			;571c
	ld c,e			;571d
	ld c,c			;571e
	sub c			;571f
	out (0a5h),a		;5720
	pop de			;5722
	cpl			;5723
	call nc,08022h		;5724
	ld d,d			;5727
	ld (045deh),hl		;5728
	adc a,b			;572b
	add a,d			;572c
	ld (hl),e		;572d
	sbc a,h			;572e
	dec (hl)		;572f
	inc a			;5730
	cpl			;5731
	cpl			;5732
	xor e			;5733
	ld a,h			;5734
	rrca			;5735
	jr z,l5764h		;5736
	ld a,h			;5738
	inc hl			;5739
	inc hl			;573a
	jp c,l7f03h		;573b
	rrca			;573e
	and a			;573f
	rst 38h			;5740
	add a,e			;5741
	cpl			;5742
	ld l,e			;5743
	defb 0fdh,016h,069h ;illegal sequence	;5744
	add a,b			;5747
	sbc a,c			;5748
	ld (bc),a		;5749
	rst 38h			;574a
	add a,h			;574b
	push hl			;574c
	ld l,e			;574d
	adc a,b			;574e
	sub (hl)		;574f
	sub d			;5750
	ei			;5751
	or (hl)			;5752
	add a,072h		;5753
	jp m,00ff2h		;5755
	call 09c93h		;5758
	add a,b			;575b
	and l			;575c
	xor l			;575d
	jp nc,0890fh		;575e
	sub c			;5761
	ld a,b			;5762
	sub h			;5763
l5764h:
	jp m,02331h		;5764
	inc sp			;5767
	ld a,h			;5768
	ld (l48fbh+2),a		;5769
	inc sp			;576c
	xor b			;576d
	ret c			;576e
	add hl,de		;576f
	add hl,de		;5770
	add hl,hl		;5771
	ld c,h			;5772
	ret z			;5773
	call nz,02f79h		;5774
	and h			;5777
	or l			;5778
	cp e			;5779
	ld d,l			;577a
	rrca			;577b
	jp z,026a9h		;577c
l577fh:
	ld (hl),002h		;577f
	inc sp			;5781
	inc bc			;5782
	and l			;5783
	dec l			;5784
	rst 38h			;5785
	ret m			;5786
	ld (hl),c		;5787
	cpl			;5788
	ld c,c			;5789
	add a,b			;578a
	xor h			;578b
	ld d,l			;578c
	rst 38h			;578d
	add a,b			;578e
	xor c			;578f
	or (hl)			;5790
	ld c,c			;5791
	and d			;5792
	inc a			;5793
	ld b,(hl)		;5794
	rst 28h			;5795
	jp z,0f780h		;5796
	rrca			;5799
	adc a,(hl)		;579a
	dec hl			;579b
	call 00f3bh		;579c
	call nc,0e7fdh		;579f
	and a			;57a2
	and (hl)		;57a3
	ld d,e			;57a4
	ld e,(hl)		;57a5
	push de			;57a6
	ld e,c			;57a7
	add a,b			;57a8
	exx			;57a9
	ld hl,00131h		;57aa
	rst 18h			;57ad
	rla			;57ae
	ret			;57af
	ld e,02fh		;57b0
	ld d,l			;57b2
	ccf			;57b3
	or l			;57b4
	or c			;57b5
	rrca			;57b6
	jp z,02000h		;57b7
	sub e			;57ba
	and (hl)		;57bb
	inc bc			;57bc
	ld c,a			;57bd
	ld bc,l7f29h		;57be
	add a,a			;57c1
	cpl			;57c2
	sbc a,(hl)		;57c3
	add a,b			;57c4
	ld c,a			;57c5
	defb 0fdh,058h,0afh ;illegal sequence	;57c6
	exx			;57c9
	add a,b			;57ca
	jp c,l47beh		;57cb
	ld b,h			;57ce
	ld a,a			;57cf
	add hl,sp		;57d0
	ld (hl),h		;57d1
	jp m,09469h		;57d2
	ld a,l			;57d5
	ld a,(00f89h)		;57d6
	ld c,l			;57d9
	ld c,c			;57da
	adc a,0ceh		;57db
	ld e,c			;57dd
	ret nc			;57de
	add hl,sp		;57df
	ld (bc),a		;57e0
	ld c,h			;57e1
	add hl,bc		;57e2
	ld (0cb85h),a		;57e3
	add a,e			;57e6
	ret z			;57e7
	sub c			;57e8
	sub l			;57e9
	sub h			;57ea
	push bc			;57eb
	cp l			;57ec
	cpl			;57ed
	ld e,c			;57ee
	ld a,a			;57ef
	ld sp,0d20fh		;57f0
	adc a,c			;57f3
	jp m,0a38ch		;57f4
	ld c,l			;57f7
	inc bc			;57f8
	call po,0e7a8h		;57f9
	rst 38h			;57fc
	add a,e			;57fd
	ld d,h			;57fe
	ld c,e			;57ff
	adc a,h			;5800
	ld c,c			;5801
	call m,0fc4ah		;5802
	inc hl			;5805
	adc a,(hl)		;5806
	add a,(hl)		;5807
	add a,h			;5808
	add a,b			;5809
	ld l,l			;580a
	jp pe,00365h		;580b
	add a,0e9h		;580e
	ret z			;5810
	add hl,de		;5811
	rrca			;5812
	jp l4d49h		;5813
	ld h,a			;5816
	add a,(hl)		;5817
	ld a,(l590fh)		;5818
	add hl,de		;581b
	ld c,c			;581c
	rst 30h			;581d
	sub e			;581e
	cp 064h			;581f
	ld a,e			;5821
	in a,(06bh)		;5822
	ld (bc),a		;5824
	and l			;5825
	rrc a			;5826
	add a,e			;5828
l5829h:
	ld de,0f848h		;5829
	dec de			;582c
	ccf			;582d
	rst 20h			;582e
	rrca			;582f
	jp z,0a049h		;5830
	adc a,h			;5833
	and h			;5834
	ld c,l			;5835
	inc bc			;5836
	add hl,sp		;5837
	djnz l5863h		;5838
	rst 38h			;583a
	pop hl			;583b
	rr a			;583c
	ld a,a			;583e
	add hl,hl		;583f
	dec d			;5840
	ld h,l			;5841
	ei			;5842
	cp b			;5843
	cpl			;5844
	adc a,b			;5845
	adc a,(hl)		;5846
	jp m,04438h		;5847
	and h			;584a
	add a,(hl)		;584b
	add a,001h		;584c
	sub h			;584e
	sbc a,a			;584f
	ld l,0fbh		;5850
	xor a			;5852
	add a,d			;5853
	cpl			;5854
	rrca			;5855
	add hl,hl		;5856
	sub d			;5857
	ld c,l			;5858
	inc hl			;5859
	defb 0fdh,032h,020h ;illegal sequence	;585a
	rst 10h			;585d
	jp z,0fe7bh		;585e
	xor c			;5861
	ld d,(hl)		;5862
l5863h:
	ld de,07d05h		;5863
	or e			;5866
l5867h:
	add a,e			;5867
	adc a,b			;5868
	adc a,c			;5869
	ret p			;586a
	cpl			;586b
	rst 20h			;586c
	ccf			;586d
	rrca			;586e
	and d			;586f
	ret			;5870
	ld (de),a		;5871
	rra			;5872
	and e			;5873
	defb 0fdh,003h,085h ;illegal sequence	;5874
	add hl,de		;5877
	rst 38h			;5878
	ld a,h			;5879
	inc (hl)		;587a
	rra			;587b
	and (hl)		;587c
	sbc a,l			;587d
	cp a			;587e
	sub (hl)		;587f
	ld a,a			;5880
	ei			;5881
	adc a,e			;5882
l5883h:
	ld a,b			;5883
	cp a			;5884
	ld l,a			;5885
	ld a,(08c5bh)		;5886
	dec b			;5889
	or 047h			;588a
	call nz,0006dh		;588c
	ld (08831h),hl		;588f
	push af			;5892
	add a,a			;5893
	add a,h			;5894
	rrca			;5895
	jr z,l5829h		;5896
	xor 08eh		;5898
	inc sp			;589a
	ld de,032d1h		;589b
	pop de			;589e
	adc a,h			;589f
	ld a,e			;58a0
	ld (de),a		;58a1
	ld (bc),a		;58a2
	ld a,h			;58a3
	call nz,0210eh		;58a4
	adc a,b			;58a7
	call nc,0ba48h		;58a8
	rst 20h			;58ab
	cpl			;58ac
	ld d,(hl)		;58ad
	add hl,bc		;58ae
	call m,sub_448eh	;58af
	rrca			;58b2
	xor c			;58b3
	ld a,a			;58b4
	add a,b			;58b5
	jr nc,l5867h		;58b6
	call nc,02103h		;58b8
	sbc a,091h		;58bb
	add a,b			;58bd
	pop af			;58be
	ld c,d			;58bf
	and (hl)		;58c0
	push bc			;58c1
	ei			;58c2
	ld a,a			;58c3
	or c			;58c4
	cp d			;58c5
	sbc a,c			;58c6
	inc sp			;58c7
	rst 38h			;58c8
	adc a,l			;58c9
	sbc a,085h		;58ca
	ld b,(hl)		;58cc
	add a,e			;58cd
	sub 00fh		;58ce
	nop			;58d0
	rst 38h			;58d1
	jr nc,$-118		;58d2
l58d4h:
	adc a,d			;58d4
	xor d			;58d5
	push de			;58d6
	dec l			;58d7
	rrca			;58d8
	ld c,l			;58d9
	ret			;58da
	call m,0a6fah		;58db
	ld sp,hl		;58de
	daa			;58df
	ei			;58e0
	ld h,l			;58e1
	cp 052h			;58e2
	ret c			;58e4
	call nz,0200eh		;58e5
	jp nz,0dc83h		;58e8
	xor b			;58eb
	push af			;58ec
	adc a,02fh		;58ed
	or e			;58ef
	ei			;58f0
	cpl			;58f1
	call nc,00f39h		;58f2
	ld c,d			;58f5
	ret			;58f6
	jr nz,l58f9h		;58f7
l58f9h:
	and d			;58f9
	ld c,h			;58fa
	inc bc			;58fb
	adc a,e			;58fc
	rst 38h			;58fd
sub_58feh:
	sub b			;58fe
	jp p,0deffh		;58ff
	add hl,bc		;5902
	sub 049h		;5903
	call m,0fcb9h		;5905
	ld (07183h),hl		;5908
	ld c,h			;590b
	ld l,a			;590c
	rst 38h			;590d
	xor h			;590e
l590fh:
	ld b,l			;590f
	rst 38h			;5910
	cp 02bh			;5911
	djnz l5947h		;5913
	add a,h			;5915
	ld c,a			;5916
	call m,0ff76h		;5917
	inc l			;591a
	daa			;591b
	ld (hl),b		;591c
	sub h			;591d
	rrca			;591e
	sbc a,c			;591f
	inc (hl)		;5920
	sub b			;5921
	ld bc,0c9f2h		;5922
	ld c,h			;5925
	jp m,0d7b1h		;5926
	ld e,c			;5929
	ld bc,09985h		;592a
	sbc a,09ah		;592d
	adc a,(hl)		;592f
	sub a			;5930
	add a,d			;5931
	inc a			;5932
	sbc a,b			;5933
	cpl			;5934
	ld h,a			;5935
	out (035h),a		;5936
	cp e			;5938
	ld a,b			;5939
	rrca			;593a
	ld a,(hl)		;593b
	ld (bc),a		;593c
	ei			;593d
	defb 0edh ;next byte illegal after ed	;593e
	inc bc			;593f
	ld a,a			;5940
	rrca			;5941
	ld a,h			;5942
	ld a,a			;5943
	sbc a,e			;5944
	rst 30h			;5945
	add a,e			;5946
l5947h:
	halt			;5947
	ld h,a			;5948
	ld h,a			;5949
	ld l,023h		;594a
	push hl			;594c
	dec e			;594d
	sub h			;594e
	rst 38h			;594f
	in a,(088h)		;5950
	ld a,(bc)		;5952
	ld d,e			;5953
	add a,h			;5954
	rst 8			;5955
	call nz,09905h		;5956
	ret z			;5959
	ld c,0ceh		;595a
	call z,04d09h		;595c
	sub b			;595f
	or 0fbh			;5960
	sbc a,c			;5962
	ld sp,hl		;5963
	ret			;5964
	di			;5965
	ld d,(hl)		;5966
	rst 10h			;5967
	xor l			;5968
	add a,b			;5969
	ld h,h			;596a
	rst 38h			;596b
	sub c			;596c
	add a,e			;596d
	sbc a,b			;596e
	add a,e			;596f
	sub d			;5970
	adc a,(hl)		;5971
	ld l,a			;5972
	rra			;5973
	cpl			;5974
	ld e,c			;5975
	xor e			;5976
	sub h			;5977
	call z,00f72h		;5978
	ld bc,0fbfdh		;597b
	in a,(003h)		;597e
	and e			;5980
	rst 8			;5981
	ld a,a			;5982
	add a,c			;5983
	adc a,b			;5984
	ld l,b			;5985
	adc a,c			;5986
	sub (hl)		;5987
	ld a,a			;5988
	ld h,a			;5989
	ei			;598a
	sbc a,b			;598b
	ld a,b			;598c
	cp h			;598d
	push hl			;598e
	and 0f0h		;598f
	ld d,h			;5991
	ld c,b			;5992
	jp pe,0efb1h		;5993
	sbc a,a			;5996
	sbc a,c			;5997
	sbc a,e			;5998
	rrca			;5999
	adc a,d			;599a
	dec hl			;599b
	ld h,08ah		;599c
	sbc a,c			;599e
	add hl,bc		;599f
	and b			;59a0
	ld (hl),c		;59a1
	sub b			;59a2
	adc a,045h		;59a3
	ret			;59a5
	pop de			;59a6
	cp 0a7h			;59a7
	ld (de),a		;59a9
	ld sp,031d7h		;59aa
	add a,h			;59ad
	ret			;59ae
	add a,l			;59af
	cp b			;59b0
	inc bc			;59b1
	add a,083h		;59b2
	ld e,l			;59b4
	call z,sub_6d2fh	;59b5
	ld e,b			;59b8
	adc a,d			;59b9
l59bah:
	ld l,00fh		;59ba
	sbc a,a			;59bc
	ld c,c			;59bd
	djnz $-3		;59be
	cp e			;59c0
	inc bc			;59c1
	rst 38h			;59c2
	dec d			;59c3
	rrca			;59c4
	ld a,a			;59c5
	pop af			;59c6
	ld c,c			;59c7
	cp 0fch			;59c8
	ld e,c			;59ca
	add a,d			;59cb
	ld b,a			;59cc
	jp m,0b925h		;59cd
	ld l,d			;59d0
	add hl,de		;59d1
	rst 28h			;59d2
	sub 097h		;59d3
	ld d,e			;59d5
	xor d			;59d6
	jp p,053efh		;59d7
	or 0d3h			;59da
	ret z			;59dc
	ld d,0cah		;59dd
	or d			;59df
	rrca			;59e0
	ld h,l			;59e1
	sub h			;59e2
	ld c,(hl)		;59e3
	ld a,(de)		;59e4
	adc a,0c9h		;59e5
	pop af			;59e7
	ld sp,hl		;59e8
	add a,e			;59e9
	dec d			;59ea
	add a,d			;59eb
	and a			;59ec
	rst 10h			;59ed
	or c			;59ee
	cp 029h			;59ef
	call c,002d8h		;59f1
	add a,083h		;59f4
	cp d			;59f6
	cpl			;59f7
	ld h,h			;59f8
	sbc a,b			;59f9
	dec a			;59fa
	xor a			;59fb
	ld h,a			;59fc
	ccf			;59fd
	ld d,0ffh		;59fe
	ld a,(hl)		;5a00
	ei			;5a01
	defb 0edh ;next byte illegal after ed	;5a02
	inc bc			;5a03
	rst 38h			;5a04
	sbc a,h			;5a05
	call nz,0ff99h		;5a06
	ret p			;5a09
	ld l,d			;5a0a
	push hl			;5a0b
	ld d,c			;5a0c
	ei			;5a0d
	ei			;5a0e
	ld l,e			;5a0f
	xor 039h		;5a10
	ld e,a			;5a12
	sub e			;5a13
	push bc			;5a14
	ld b,d			;5a15
	inc sp			;5a16
	sub c			;5a17
	ld de,09219h		;5a18
	jp nc,l56cah		;5a1b
	sub b			;5a1e
l5a1fh:
	sub (hl)		;5a1f
	inc bc			;5a20
	cp e			;5a21
l5a22h:
	ld c,(hl)		;5a22
	and d			;5a23
	ld (hl),e		;5a24
	call nc,09a23h		;5a25
	inc c			;5a28
	ld hl,07f31h		;5a29
	ret			;5a2c
	ld (hl),e		;5a2d
	jp m,l7f2ch		;5a2e
	ld a,e			;5a31
	adc a,h			;5a32
	add a,d			;5a33
	call pe,0b1feh		;5a34
	ld b,083h		;5a37
	sub a			;5a39
	sub h			;5a3a
l5a3bh:
	cpl			;5a3b
	ld e,e			;5a3c
	inc b			;5a3d
	or l			;5a3e
	xor d			;5a3f
	call nz,0ffc5h		;5a40
	cp a			;5a43
	ld d,0fbh		;5a44
	ld (hl),c		;5a46
	inc bc			;5a47
	djnz l5a1fh		;5a48
	exx			;5a4a
	rst 38h			;5a4b
	adc a,a			;5a4c
	ld e,0fch		;5a4d
	ld h,h			;5a4f
	cp 04bh			;5a50
	ld h,a			;5a52
	jp m,l6f4ch		;5a53
	adc a,e			;5a56
	sbc a,00fh		;5a57
	ld h,0abh		;5a59
	call z,0ac03h		;5a5b
	dec h			;5a5e
	ret p			;5a5f
	inc d			;5a60
	ld c,h			;5a61
	push bc			;5a62
	sbc a,e			;5a63
	adc a,095h		;5a64
	adc a,c			;5a66
	or d			;5a67
	rst 38h			;5a68
	xor (hl)		;5a69
	call nz,0aacdh		;5a6a
	ld h,l			;5a6d
	ld (hl),a		;5a6e
	pop af			;5a6f
	jr nc,$+5		;5a70
	inc hl			;5a72
	call nc,0c8f7h		;5a73
	ld a,e			;5a76
	add a,d			;5a77
	jp z,08b09h		;5a78
	rst 10h			;5a7b
	add a,e			;5a7c
	add hl,de		;5a7d
	ld (hl),h		;5a7e
	inc d			;5a7f
	cpl			;5a80
	ld b,h			;5a81
	xor 02fh		;5a82
	ret			;5a84
	ld (hl),c		;5a85
	ld (de),a		;5a86
	ei			;5a87
	ei			;5a88
l5a89h:
	inc bc			;5a89
	jp nz,0ff29h		;5a8a
l5a8dh:
	ld a,(hl)		;5a8d
	cpl			;5a8e
	and d			;5a8f
	ret			;5a90
	add hl,hl		;5a91
	ld a,c			;5a92
	defb 0fdh,0bah,099h ;illegal sequence	;5a93
	and l			;5a96
	rst 28h			;5a97
	adc a,(hl)		;5a98
	ld a,a			;5a99
	add hl,de		;5a9a
	sub h			;5a9b
	sbc a,02dh		;5a9c
	ld c,a			;5a9e
	inc bc			;5a9f
	ex de,hl		;5aa0
	call nc,sub_778fh	;5aa1
	adc a,a			;5aa4
	sbc a,e			;5aa5
	ld l,d			;5aa6
	ld c,b			;5aa7
	rra			;5aa8
	ret			;5aa9
	rra			;5aaa
	and d			;5aab
	ld a,l			;5aac
	xor 0bch		;5aad
	jp m,0fe8ah		;5aaf
	ret m			;5ab2
	adc a,d			;5ab3
	ld a,e			;5ab4
	add a,d			;5ab5
	scf			;5ab6
	ld a,a			;5ab7
	jr $+53			;5ab8
	add a,e			;5aba
	out (091h),a		;5abb
	and h			;5abd
	ld a,b			;5abe
	jp pe,0c42fh		;5abf
	defb 0edh ;next byte illegal after ed	;5ac2
	or h			;5ac3
	push hl			;5ac4
	ld (de),a		;5ac5
	ei			;5ac6
	ei			;5ac7
	inc bc			;5ac8
	or l			;5ac9
	rst 38h			;5aca
	sub c			;5acb
	rst 38h			;5acc
	pop af			;5acd
	adc a,0eeh		;5ace
	cp c			;5ad0
	ld h,a			;5ad1
	rst 38h			;5ad2
	dec e			;5ad3
	sbc a,b			;5ad4
	push hl			;5ad5
	xor c			;5ad6
	ld (bc),a		;5ad7
sub_5ad8h:
	xor l			;5ad8
	ld c,d			;5ad9
	add hl,hl		;5ada
	ld e,e			;5adb
	exx			;5adc
	inc bc			;5add
	rst 10h			;5ade
	rrca			;5adf
	add a,b			;5ae0
	nop			;5ae1
	adc a,e			;5ae2
	ld h,c			;5ae3
	adc a,c			;5ae4
	rst 8			;5ae5
	sla l			;5ae6
	sub d			;5ae8
	ld d,b			;5ae9
	sub c			;5aea
	inc de			;5aeb
	jp z,021c8h		;5aec
	cp l			;5aef
	nop			;5af0
	ld sp,hl		;5af1
	ld d,c			;5af2
	ld (bc),a		;5af3
	cp 0c4h			;5af4
	xor b			;5af6
	ld e,d			;5af7
	add a,a			;5af8
	ld d,d			;5af9
	ex (sp),iy		;5afa
	add a,e			;5afc
	rrca			;5afd
	sub h			;5afe
sub_5affh:
	cpl			;5aff
	inc e			;5b00
	add a,h			;5b01
	ld c,e			;5b02
	cp c			;5b03
	jp po,0fd7fh		;5b04
	ei			;5b07
	rst 18h			;5b08
	inc bc			;5b09
	rst 38h			;5b0a
	ld a,07fh		;5b0b
	ld a,(de)		;5b0d
	jp c,0f34ah		;5b0e
	rst 0			;5b11
	sub a			;5b12
l5b13h:
	cp 025h			;5b13
	ld a,a			;5b15
	rst 38h			;5b16
	ld a,(0b911h)		;5b17
	ld h,0aah		;5b1a
	ld (090adh),hl		;5b1c
	inc b			;5b1f
	jr nz,l5b85h		;5b20
	ld (bc),a		;5b22
	ex af,af'		;5b23
	ld (bc),a		;5b24
	cp l			;5b25
	add a,l			;5b26
	xor l			;5b27
	ld c,c			;5b28
	inc bc			;5b29
	push af			;5b2a
	ret			;5b2b
	sbc a,c			;5b2c
	ld h,092h		;5b2d
	or d			;5b2f
	ld a,h			;5b30
	pop af			;5b31
	set 7,c			;5b32
	rra			;5b34
	ld a,(bc)		;5b35
	ld (de),a		;5b36
	nop			;5b37
l5b38h:
	ld bc,0b7fdh		;5b38
	ld l,(iy-028h)		;5b3b
	ret			;5b3e
	dec d			;5b3f
	ld (l7c93h),hl		;5b40
	sbc a,l			;5b43
	nop			;5b44
	add hl,de		;5b45
	cpl			;5b46
	add a,0fah		;5b47
	xor h			;5b49
	sbc a,b			;5b4a
	add a,b			;5b4b
	ld h,d			;5b4c
	adc a,b			;5b4d
	ld a,a			;5b4e
	inc de			;5b4f
	sbc a,(hl)		;5b50
	bit 2,l			;5b51
	ld h,065h		;5b53
	rst 38h			;5b55
	inc sp			;5b56
	rst 38h			;5b57
	ret po			;5b58
	cp l			;5b59
	exx			;5b5a
	sub c			;5b5b
	add a,e			;5b5c
	sub (hl)		;5b5d
	ld a,(hl)		;5b5e
	adc a,c			;5b5f
	ld a,c			;5b60
	rst 38h			;5b61
	sub 088h		;5b62
	and l			;5b64
	rla			;5b65
	and (hl)		;5b66
	ld c,b			;5b67
	ret nc			;5b68
	nop			;5b69
	or l			;5b6a
	jp c,l5fa5h		;5b6b
	ld b,011h		;5b6e
	or 02bh			;5b70
	ld b,h			;5b72
	rst 38h			;5b73
	ld a,b			;5b74
	cp l			;5b75
	rst 28h			;5b76
	xor l			;5b77
	halt			;5b78
	jp (hl)			;5b79
	ld a,(de)		;5b7a
	ld (de),a		;5b7b
	rra			;5b7c
	djnz l5b13h		;5b7d
	call m,006aah		;5b7f
	ld a,(bc)		;5b82
	or 061h			;5b83
l5b85h:
	ld (02501h),hl		;5b85
	jr nc,l5b38h		;5b88
	ld (00231h),a		;5b8a
	ld (hl),c		;5b8d
	add hl,bc		;5b8e
	cpl			;5b8f
	cp (hl)			;5b90
	call m,0db62h		;5b91
	halt			;5b94
	or e			;5b95
	jp pe,l65abh		;5b96
	ld a,(de)		;5b99
	or (hl)			;5b9a
	sub d			;5b9b
	add a,a			;5b9c
	ld e,(hl)		;5b9d
	call nz,0ffe3h		;5b9e
	cp (hl)			;5ba1
	ld bc,0ae50h		;5ba2
	halt			;5ba5
	and 0fch		;5ba6
	xor b			;5ba8
	nop			;5ba9
	ret			;5baa
	and l			;5bab
	and a			;5bac
	dec l			;5bad
	xor h			;5bae
	ld d,l			;5baf
	ld hl,0006eh		;5bb0
	add hl,sp		;5bb3
	ld e,d			;5bb4
	or 0e9h			;5bb5
	ld c,a			;5bb7
	call z,0dd40h		;5bb8
	inc hl			;5bbb
	ld (bc),a		;5bbc
	di			;5bbd
	ld (de),a		;5bbe
	rst 30h			;5bbf
	or c			;5bc0
	ld de,0b61fh		;5bc1
	ret p			;5bc4
	ld a,d			;5bc5
	rst 8			;5bc6
	ld c,b			;5bc7
	ld c,033h		;5bc8
	sub c			;5bca
	add a,002h		;5bcb
	ld de,0b345h		;5bcd
	add a,h			;5bd0
	add hl,de		;5bd1
	adc a,e			;5bd2
	sub h			;5bd3
	ld b,010h		;5bd4
	cp b			;5bd6
	ld a,a			;5bd7
	cpl			;5bd8
	halt			;5bd9
	ld c,h			;5bda
	xor a			;5bdb
	jp po,0984fh		;5bdc
	rst 38h			;5bdf
	ld (hl),e		;5be0
	ld (hl),024h		;5be1
	add a,d			;5be3
	and l			;5be4
	add a,d			;5be5
	ret m			;5be6
	ld a,a			;5be7
	sbc a,e			;5be8
	sbc a,b			;5be9
	ld a,(hl)		;5bea
	call m,06678h		;5beb
	adc a,08ah		;5bee
	ld d,d			;5bf0
	adc a,b			;5bf1
	rst 0			;5bf2
	cp c			;5bf3
	ld h,l			;5bf4
	pop de			;5bf5
	ld l,c			;5bf6
l5bf7h:
	or h			;5bf7
	ei			;5bf8
	add hl,bc		;5bf9
	ld c,d			;5bfa
	push bc			;5bfb
	ld d,l			;5bfc
	add a,e			;5bfd
	adc a,c			;5bfe
	ld a,b			;5bff
	call nz,0e6ach		;5c00
	and h			;5c03
	call po,0c792h		;5c04
	push hl			;5c07
	sub e			;5c08
	rra			;5c09
	ld h,a			;5c0a
	ret m			;5c0b
	add hl,hl		;5c0c
	adc a,d			;5c0d
	ld d,013h		;5c0e
	ld b,026h		;5c10
	ld d,l			;5c12
	ld a,b			;5c13
	call m,0af52h		;5c14
	ld d,d			;5c17
	adc a,d			;5c18
	ld d,l			;5c19
	inc (hl)		;5c1a
	or h			;5c1b
	ld (hl),l		;5c1c
	cpl			;5c1d
	jp m,0843bh		;5c1e
	xor c			;5c21
	or (hl)			;5c22
	ld e,c			;5c23
	xor e			;5c24
	sbc a,e			;5c25
	add a,e			;5c26
	dec de			;5c27
	or h			;5c28
	ld h,094h		;5c29
	xor a			;5c2b
	nop			;5c2c
	or (hl)			;5c2d
	rra			;5c2e
	ld b,(hl)		;5c2f
	add a,d			;5c30
	ld b,(hl)		;5c31
	add a,b			;5c32
	jr z,l5cach		;5c33
	defb 0fdh,0cdh,0f3h ;illegal sequence	;5c35
	in a,(044h)		;5c38
	set 1,c			;5c3a
	ret			;5c3c
	and l			;5c3d
	call po,03772h		;5c3e
	call z,0fb6bh		;5c41
	ret c			;5c44
	ld d,e			;5c45
	ret			;5c46
	ld hl,0c6e4h		;5c47
	call pe,sub_46c2h	;5c4a
	ld (l6c83h),hl		;5c4d
	rra			;5c50
	cp 070h			;5c51
	ld (de),a		;5c53
	cp c			;5c54
	dec bc			;5c55
	defb 0fdh,016h,021h ;illegal sequence	;5c56
	defb 0fdh,0b1h,0afh ;illegal sequence	;5c59
	sbc a,c			;5c5c
	adc a,h			;5c5d
	sub l			;5c5e
	add a,h			;5c5f
	ld h,(hl)		;5c60
	ld a,a			;5c61
	cpl			;5c62
	jp c,l52ffh		;5c63
	jp m,0b1d5h		;5c66
	ccf			;5c69
	adc a,b			;5c6a
	ld bc,0dcc7h		;5c6b
	inc a			;5c6e
	or e			;5c6f
	dec (hl)		;5c70
	rrca			;5c71
	ld a,a			;5c72
	rst 18h			;5c73
	sub c			;5c74
	or d			;5c75
	rst 38h			;5c76
	dec l			;5c77
	defb 0fdh,031h,081h ;illegal sequence	;5c78
	dec e			;5c7b
	ld a,b			;5c7c
	sbc a,e			;5c7d
	xor c			;5c7e
	sbc a,h			;5c7f
	exx			;5c80
	ld c,a			;5c81
	xor c			;5c82
	jp z,0d47eh		;5c83
	ld d,d			;5c86
	rst 20h			;5c87
	jp nc,l4c8ah		;5c88
	ld c,h			;5c8b
	ld d,(hl)		;5c8c
	add a,h			;5c8d
	ret			;5c8e
	ld a,(de)		;5c8f
	ld b,h			;5c90
	ret nz			;5c91
	xor 04eh		;5c92
	adc a,l			;5c94
	ld h,020h		;5c95
	ex de,hl		;5c97
	call 01f75h		;5c98
	and d			;5c9b
	adc a,e			;5c9c
	cp 0a9h			;5c9d
	defb 0fdh,08ah,020h ;illegal sequence	;5c9f
	ld hl,09175h		;5ca2
	ld b,h			;5ca5
	inc sp			;5ca6
	add a,c			;5ca7
	ld h,h			;5ca8
	sub b			;5ca9
	ld d,a			;5caa
	ld a,(de)		;5cab
l5cach:
	sub a			;5cac
	ld d,e			;5cad
	sbc a,h			;5cae
	sbc a,b			;5caf
	cp a			;5cb0
	ld (hl),c		;5cb1
	cpl			;5cb2
	ld a,a			;5cb3
	ld l,(hl)		;5cb4
	call nz,0d2e6h		;5cb5
	sub e			;5cb8
	adc a,c			;5cb9
	ld bc,0b2c7h		;5cba
	and (hl)		;5cbd
	inc l			;5cbe
	djnz l5cc8h		;5cbf
	rrca			;5cc1
	adc a,a			;5cc2
	rst 38h			;5cc3
	add a,e			;5cc4
	ret c			;5cc5
	inc sp			;5cc6
	rst 38h			;5cc7
l5cc8h:
	ld l,e			;5cc8
	rst 38h			;5cc9
	and h			;5cca
	add a,c			;5ccb
	sub e			;5ccc
	add a,(hl)		;5ccd
	cpl			;5cce
	ld h,(hl)		;5ccf
	call 0015ah		;5cd0
	rst 18h			;5cd3
	xor 0adh		;5cd4
	exx			;5cd6
	ld a,a			;5cd7
	ld l,c			;5cd8
	set 7,c			;5cd9
	or l			;5cdb
	add hl,hl		;5cdc
	ret			;5cdd
	ld d,l			;5cde
	ld l,h			;5cdf
	ex (sp),hl		;5ce0
	ld h,0efh		;5ce1
	ld h,h			;5ce3
	jp m,01b59h		;5ce4
	rra			;5ce7
	sub e			;5ce8
	ret nc			;5ce9
	sub h			;5cea
	ld l,(hl)		;5ceb
	inc h			;5cec
	ld (0f1a4h),a		;5ced
	xor d			;5cf0
	or b			;5cf1
	ld b,0bch		;5cf2
	add a,a			;5cf4
	ld c,c			;5cf5
	ld (bc),a		;5cf6
	rst 18h			;5cf7
	add a,e			;5cf8
	ld a,c			;5cf9
	adc a,c			;5cfa
	rla			;5cfb
	add a,(hl)		;5cfc
	call c,02b2fh		;5cfd
	ld c,b			;5d00
	ld sp,hl		;5d01
	ld (hl),a		;5d02
	adc a,h			;5d03
	ld l,d			;5d04
	inc c			;5d05
	rst 0			;5d06
	jp po,029a9h		;5d07
	add a,d			;5d0a
	xor (hl)		;5d0b
	call z,00fa3h		;5d0c
	rst 38h			;5d0f
	ret po			;5d10
	ld l,e			;5d11
	adc a,b			;5d12
	ld a,a			;5d13
	ld h,a			;5d14
	cp 00bh			;5d15
	adc a,e			;5d17
	ld h,d			;5d18
	rra			;5d19
	add a,0ddh		;5d1a
	ld (0cc62h),a		;5d1c
	sub 0b7h		;5d1f
	push de			;5d21
	ld b,h			;5d22
	or c			;5d23
	call m,00bd4h		;5d24
	inc c			;5d27
	in a,(0d5h)		;5d28
	ld b,e			;5d2a
	sub h			;5d2b
	and 01fh		;5d2c
	call po,0886ch		;5d2e
	sub (hl)		;5d31
	ld b,076h		;5d32
	ld b,l			;5d34
	ld (hl),a		;5d35
	ld (0b231h),a		;5d36
	ld h,h			;5d39
	xor l			;5d3a
	in a,(092h)		;5d3b
	sub e			;5d3d
	adc a,(hl)		;5d3e
	sub c			;5d3f
	adc a,l			;5d40
l5d41h:
	ld l,d			;5d41
	cp a			;5d42
	or 0adh			;5d43
	or 0bfh			;5d45
	xor (hl)		;5d47
	ld c,b			;5d48
	ld (bc),a		;5d49
	ccf			;5d4a
	xor d			;5d4b
	in a,(0e5h)		;5d4c
	jp nc,00fcah		;5d4e
	rst 38h			;5d51
	ld a,b			;5d52
	dec hl			;5d53
	add a,d			;5d54
	ld (hl),b		;5d55
	ei			;5d56
	ld e,b			;5d57
	ld h,a			;5d58
	add a,b			;5d59
	sub (hl)		;5d5a
	ld b,(hl)		;5d5b
	ld a,c			;5d5c
	cp c			;5d5d
	and a			;5d5e
	ld c,b			;5d5f
	cp e			;5d60
	ld l,l			;5d61
	sub h			;5d62
	add hl,sp		;5d63
	jp p,0be6eh		;5d64
	or c			;5d67
	inc a			;5d68
	call c,02014h		;5d69
	ld e,c			;5d6c
	and 0d4h		;5d6d
	ld (hl),b		;5d6f
	sub b			;5d70
	and h			;5d71
	jp p,l4863h		;5d72
	sbc a,b			;5d75
	ld de,08b10h		;5d76
	ld e,c			;5d79
	rst 8			;5d7a
	ld (hl),0fah		;5d7b
	ld l,d			;5d7d
	ex af,af'		;5d7e
	and d			;5d7f
	ld d,e			;5d80
	add a,l			;5d81
	djnz $+3		;5d82
	jr nc,l5d41h		;5d84
	ld de,02389h		;5d86
	sub a			;5d89
	ld l,a			;5d8a
	sub 0bdh		;5d8b
	ccf			;5d8d
	sub d			;5d8e
	call m,08d3fh		;5d8f
	add a,d			;5d92
	call z,0beb9h		;5d93
	adc a,c			;5d96
	ld e,08ch		;5d97
	sbc a,b			;5d99
	call nz,sub_7c81h	;5d9a
	ld (de),a		;5d9d
	xor e			;5d9e
	ld b,l			;5d9f
	add a,b			;5da0
	add a,b			;5da1
	halt			;5da2
	add a,b			;5da3
	sbc a,h			;5da4
	add a,b			;5da5
	sub l			;5da6
	defb 0edh ;next byte illegal after ed	;5da7
	sbc a,l			;5da8
	or l			;5da9
	sbc a,d			;5daa
	call p,097b6h		;5dab
	cp b			;5dae
	di			;5daf
	ld c,d			;5db0
	inc (hl)		;5db1
	ld (l4af4h),hl		;5db2
	ld a,a			;5db5
	ex (sp),hl		;5db6
	ld l,d			;5db7
	ld (hl),l		;5db8
	sub (hl)		;5db9
	ld a,c			;5dba
	ld c,(hl)		;5dbb
	ex af,af'		;5dbc
	add a,h			;5dbd
	call 0eccdh		;5dbe
	ld e,c			;5dc1
	rla			;5dc2
	sub e			;5dc3
	pop de			;5dc4
	ld h,080h		;5dc5
	adc a,b			;5dc7
	or h			;5dc8
	add a,(hl)		;5dc9
	ld e,c			;5dca
	inc bc			;5dcb
	inc b			;5dcc
	ld a,a			;5dcd
	ld a,h			;5dce
	ld c,c			;5dcf
	sbc a,l			;5dd0
	ld a,a			;5dd1
l5dd2h:
	jp (ix)			;5dd2
	xor l			;5dd4
	add a,h			;5dd5
	and h			;5dd6
	adc a,c			;5dd7
	and 04fh		;5dd8
	dec h			;5dda
	ld c,c			;5ddb
	dec c			;5ddc
	ld b,h			;5ddd
	rst 20h			;5dde
	ld l,h			;5ddf
	rrca			;5de0
	ld c,b			;5de1
	xor a			;5de2
	rst 38h			;5de3
	add a,e			;5de4
	ld h,(hl)		;5de5
	dec hl			;5de6
	xor c			;5de7
	inc sp			;5de8
	cp 03bh			;5de9
l5debh:
	add a,d			;5deb
	dec sp			;5dec
	ld sp,hl		;5ded
	ld h,09fh		;5dee
	call nz,0c435h		;5df0
	or h			;5df3
	or e			;5df4
	adc a,(hl)		;5df5
	in a,(0f8h)		;5df6
	dec h			;5df8
	adc a,c			;5df9
	push hl			;5dfa
	xor 064h		;5dfb
	add a,b			;5dfd
	adc a,d			;5dfe
	ld (0cdc0h),a		;5dff
	sbc a,h			;5e02
	ld c,c			;5e03
	add a,(hl)		;5e04
	ld (0dc87h),hl		;5e05
l5e08h:
	sbc a,h			;5e08
sub_5e09h:
	xor h			;5e09
	ex de,hl		;5e0a
	call m,0cb83h		;5e0b
	jr l5e08h		;5e0e
	ld c,e			;5e10
	rla			;5e11
	jp m,08592h		;5e12
	ld d,(hl)		;5e15
	sub a			;5e16
	or a			;5e17
	ld e,d			;5e18
	set 1,b			;5e19
	di			;5e1b
	ld c,b			;5e1c
	dec d			;5e1d
	sbc a,h			;5e1e
	ld c,a			;5e1f
	pop bc			;5e20
	ld e,e			;5e21
	adc a,(hl)		;5e22
	ld (hl),l		;5e23
	ret z			;5e24
	ld h,a			;5e25
	sbc a,e			;5e26
	rrca			;5e27
	add a,b			;5e28
	xor a			;5e29
	ld de,l4848h		;5e2a
	ld a,a			;5e2d
	adc a,a			;5e2e
	ld h,a			;5e2f
	add a,l			;5e30
	inc hl			;5e31
	and (hl)		;5e32
	ld (l49b0h),hl		;5e33
	adc a,h			;5e36
	or l			;5e37
	ret nz			;5e38
	sbc a,c			;5e39
	call p,0ae49h		;5e3a
	ld h,0f4h		;5e3d
	inc d			;5e3f
	rlca			;5e40
	ret m			;5e41
	jp po,08002h		;5e42
	ld e,c			;5e45
	cp a			;5e46
	ld (hl),c		;5e47
	rst 30h			;5e48
	ld d,a			;5e49
	add a,b			;5e4a
	cp 0a8h			;5e4b
	ld de,0cbfeh		;5e4d
	ret m			;5e50
	ld c,b			;5e51
	ei			;5e52
	or e			;5e53
	sub c			;5e54
	ld h,a			;5e55
	sub h			;5e56
	cpl			;5e57
	or e			;5e58
	ld h,a			;5e59
	cp 02fh			;5e5a
	sub a			;5e5c
	ld h,l			;5e5d
	push de			;5e5e
	jp nz,053feh		;5e5f
	ld b,a			;5e62
	ld h,0cah		;5e63
	ld d,d			;5e65
	ld c,h			;5e66
	ld b,l			;5e67
	ld a,a			;5e68
	ld c,h			;5e69
	dec bc			;5e6a
	ld b,l			;5e6b
	ret z			;5e6c
	defb 0ddh,080h,01bh ;illegal sequence	;5e6d
	rst 38h			;5e70
	adc a,a			;5e71
	inc c			;5e72
	rst 38h			;5e73
	and l			;5e74
	ld h,(hl)		;5e75
	cp 035h			;5e76
	ld bc,03780h		;5e78
	adc a,d			;5e7b
l5e7ch:
	ld h,035h		;5e7c
	ret			;5e7e
	and (hl)		;5e7f
	push bc			;5e80
	ei			;5e81
	cp b			;5e82
	inc (hl)		;5e83
	rst 38h			;5e84
l5e85h:
	pop de			;5e85
	adc a,a			;5e86
	ld h,(hl)		;5e87
	jp p,l5dd2h		;5e88
	jp m,0e352h		;5e8b
	ld c,c			;5e8e
	ret pe			;5e8f
	call nz,0f079h		;5e90
	dec (hl)		;5e93
	ld h,a			;5e94
	di			;5e95
	ld h,(hl)		;5e96
	ld (hl),d		;5e97
	ld h,d			;5e98
	rst 30h			;5e99
	ld h,d			;5e9a
	rla			;5e9b
	ex af,af'		;5e9c
	adc a,h			;5e9d
	rst 30h			;5e9e
	or d			;5e9f
	ld (0b18fh),a		;5ea0
	ld hl,09cb7h		;5ea3
	ld c,a			;5ea6
	call nc,03f86h		;5ea7
	xor 083h		;5eaa
	push bc			;5eac
	call 021ffh		;5ead
	ld b,h			;5eb0
	ld c,h			;5eb1
	ld bc,l7f96h		;5eb2
	ld e,d			;5eb5
	ld l,a			;5eb6
	rst 38h			;5eb7
	jp 09169h		;5eb8
	xor 093h		;5ebb
	cp 09bh			;5ebd
	add a,c			;5ebf
	sub (hl)		;5ec0
	cp c			;5ec1
	or d			;5ec2
	or l			;5ec3
	cp a			;5ec4
	ret p			;5ec5
	push bc			;5ec6
	inc b			;5ec7
	xor l			;5ec8
	push af			;5ec9
	sub d			;5eca
	ret c			;5ecb
	ld a,a			;5ecc
	ld hl,0ee95h		;5ecd
	call nz,01061h		;5ed0
	add a,b			;5ed3
	jp po,09e12h		;5ed4
	jp pe,033eah		;5ed7
	sbc a,d			;5eda
	inc (hl)		;5edb
	jp pe,0968ch		;5edc
	adc a,d			;5edf
	di			;5ee0
	ret p			;5ee1
	ld (hl),d		;5ee2
	sbc a,d			;5ee3
	dec l			;5ee4
	add a,(hl)		;5ee5
	call 047b3h		;5ee6
	ld (de),a		;5ee9
	or c			;5eea
	xor a			;5eeb
	ld a,a			;5eec
	add a,e			;5eed
	sub h			;5eee
	ccf			;5eef
	sbc a,(hl)		;5ef0
	jp c,l4fcch		;5ef1
	halt			;5ef4
	ld c,c			;5ef5
	ret c			;5ef6
	xor c			;5ef7
	call nz,0d87fh		;5ef8
	xor e			;5efb
	add a,b			;5efc
	jp po,0ffech		;5efd
	xor h			;5f00
	ret p			;5f01
	sbc a,h			;5f02
	add a,b			;5f03
	inc de			;5f04
	sub (hl)		;5f05
	ld h,a			;5f06
	ld l,c			;5f07
	adc a,h			;5f08
	sub (hl)		;5f09
	cpl			;5f0a
	cp d			;5f0b
	xor (hl)		;5f0c
	call p,0bae4h		;5f0d
	and a			;5f10
	cp h			;5f11
	call pe,sub_65f0h	;5f12
	rst 18h			;5f15
	rst 18h			;5f16
	adc a,l			;5f17
	cp l			;5f18
	sub a			;5f19
	sbc a,b			;5f1a
	jp m,06797h		;5f1b
	ret pe			;5f1e
	and 0cch		;5f1f
	ld l,a			;5f21
	defb 0fdh,0a2h,033h ;illegal sequence	;5f22
	ld a,l			;5f25
	push de			;5f26
	add a,a			;5f27
	and h			;5f28
	and b			;5f29
	rr e			;5f2a
	add a,a			;5f2c
	ld b,(hl)		;5f2d
	ld (0afb2h),hl		;5f2e
	ld d,l			;5f31
	ld c,l			;5f32
	sbc a,h			;5f33
	ccf			;5f34
	call c,0b488h		;5f35
	call l4f87h+1		;5f38
	ld c,c			;5f3b
	add a,h			;5f3c
	jp m,098d4h		;5f3d
	cp 0edh			;5f40
	rst 38h			;5f42
	inc a			;5f43
	ld c,e			;5f44
	adc a,b			;5f45
	and (hl)		;5f46
l5f47h:
	ld c,b			;5f47
	sub (hl)		;5f48
	push bc			;5f49
	sub a			;5f4a
	add a,d			;5f4b
	exx			;5f4c
	dec c			;5f4d
	sbc a,a			;5f4e
	ld (hl),h		;5f4f
	call p,0fea4h		;5f50
	xor h			;5f53
	add a,h			;5f54
	ld l,l			;5f55
	ld sp,02d17h		;5f56
	djnz l5f47h		;5f59
	ld l,l			;5f5b
	jp pe,08025h		;5f5c
	daa			;5f5f
	add a,h			;5f60
	ld (hl),c		;5f61
	sbc a,(hl)		;5f62
	dec de			;5f63
	inc hl			;5f64
	add hl,bc		;5f65
	defb 0fdh,049h,086h ;illegal sequence	;5f66
	ld h,08ch		;5f69
	ld h,(hl)		;5f6b
	xor c			;5f6c
	defb 0edh ;next byte illegal after ed	;5f6d
	sub l			;5f6e
	and (hl)		;5f6f
	rla			;5f70
	ld c,(hl)		;5f71
	adc a,l			;5f72
	ld a,(hl)		;5f73
	sub a			;5f74
	ret m			;5f75
	ld a,a			;5f76
	ld c,l			;5f77
	ccf			;5f78
	ld c,c			;5f79
	ccf			;5f7a
	call z,0a381h		;5f7b
	ld c,b			;5f7e
	jp po,0fb22h		;5f7f
	and l			;5f82
	rst 38h			;5f83
	and a			;5f84
	cp 086h			;5f85
	ld de,09ca2h		;5f87
	ret p			;5f8a
	ld d,d			;5f8b
	ld a,(hl)		;5f8c
	ld hl,(l7677h)		;5f8d
	rst 38h			;5f90
l5f91h:
	xor h			;5f91
	or e			;5f92
	sub (hl)		;5f93
	dec hl			;5f94
	ld b,h			;5f95
	cp 0b4h			;5f96
	cp e			;5f98
l5f99h:
	or l			;5f99
	sbc a,c			;5f9a
	sub c			;5f9b
	adc a,a			;5f9c
	add a,c			;5f9d
	sub d			;5f9e
	add hl,hl		;5f9f
	sub d			;5fa0
	ld (0ebfah),hl		;5fa1
	ld sp,hl		;5fa4
l5fa5h:
	ld a,(de)		;5fa5
	ld hl,0fcc4h		;5fa6
	or e			;5fa9
	push hl			;5faa
	ret pe			;5fab
	push de			;5fac
	inc de			;5fad
	inc de			;5fae
	adc a,b			;5faf
	inc hl			;5fb0
	cp 0c6h			;5fb1
	ld de,06e87h		;5fb3
	sbc a,a			;5fb6
	inc hl			;5fb7
	djnz l5f99h		;5fb8
l5fbah:
	or 086h			;5fba
	push bc			;5fbc
	jr nz,l5fbah		;5fbd
	ld a,b			;5fbf
	ld e,d			;5fc0
	cp e			;5fc1
	ld (hl),c		;5fc2
	ccf			;5fc3
sub_5fc4h:
	cp l			;5fc4
	cp b			;5fc5
	ld b,h			;5fc6
	bit 2,e			;5fc7
	exx			;5fc9
	ret c			;5fca
	add a,l			;5fcb
	or c			;5fcc
	rst 38h			;5fcd
	jp po,01cc9h		;5fce
	ret p			;5fd1
	exx			;5fd2
	rst 38h			;5fd3
	ld c,a			;5fd4
	adc a,e			;5fd5
	ld h,d			;5fd6
	ld a,e			;5fd7
	cp e			;5fd8
	inc (hl)		;5fd9
	cp b			;5fda
	ld l,c			;5fdb
	or b			;5fdc
	ld (de),a		;5fdd
	ret z			;5fde
	xor h			;5fdf
	cp b			;5fe0
	rrca			;5fe1
	sub d			;5fe2
	ld l,(hl)		;5fe3
	sub c			;5fe4
	jp (hl)			;5fe5
	ld l,(hl)		;5fe6
	jp m,0edcdh		;5fe7
	push af			;5fea
	inc de			;5feb
	ld de,0d69fh		;5fec
	add a,l			;5fef
	ld (l76f0h),a		;5ff0
	ld sp,hl		;5ff3
	or d			;5ff4
	ret p			;5ff5
	inc sp			;5ff6
	add a,a			;5ff7
	ld (hl),d		;5ff8
	add a,e			;5ff9
	dec hl			;5ffa
	sbc a,(hl)		;5ffb
	ccf			;5ffc
	rst 18h			;5ffd
	adc a,c			;5ffe
	sub b			;5fff
	cp c			;6000
	rst 18h			;6001
	cp c			;6002
	ex de,hl		;6003
	ld e,c			;6004
	ret nz			;6005
	ld c,h			;6006
	ccf			;6007
	jp m,l42d4h		;6008
	adc a,d			;600b
	add a,h			;600c
	ld d,h			;600d
	call sub_6fd3h		;600e
	adc a,b			;6011
	rst 38h			;6012
	jp l69e9h		;6013
	ld a,a			;6016
	and c			;6017
	adc a,c			;6018
	halt			;6019
	ld h,(hl)		;601a
	ld h,a			;601b
	adc a,e			;601c
	xor e			;601d
	ei			;601e
	sbc a,e			;601f
	cp (hl)			;6020
	ld c,d			;6021
	call z,085b4h		;6022
	sub l			;6025
	dec d			;6026
	sub c			;6027
	add a,(hl)		;6028
	sub d			;6029
	rrca			;602a
	sub b			;602b
l602ch:
	ret m			;602c
	ld (hl),0dbh		;602d
	daa			;602f
	djnz l602ch		;6030
	ld l,l			;6032
	adc a,b			;6033
	ld l,l			;6034
	pop af			;6035
	ld l,d			;6036
	ld sp,04eebh		;6037
	and c			;603a
	push de			;603b
	ld hl,00315h		;603c
	sub c			;603f
	adc a,(hl)		;6040
	ld h,d			;6041
	add a,b			;6042
	ld e,(hl)		;6043
	sub a			;6044
	ld c,(hl)		;6045
	adc a,d			;6046
	ld (hl),l		;6047
	ld e,a			;6048
	rst 38h			;6049
	call pe,0fd4ah		;604a
	sub 086h		;604d
	halt			;604f
	add a,(hl)		;6050
	defb 0fdh,090h,057h ;illegal sequence	;6051
	rst 8			;6054
	ld a,a			;6055
	jp l53e2h		;6056
	sbc a,b			;6059
	sub (hl)		;605a
	ld c,h			;605b
	add hl,hl		;605c
	ld l,(hl)		;605d
	ld h,l			;605e
	add a,c			;605f
	ld l,(hl)		;6060
	jr c,$-88		;6061
	ld h,l			;6063
	and l			;6064
	inc h			;6065
	ccf			;6066
	ld c,h			;6067
	or l			;6068
	add a,l			;6069
	inc sp			;606a
	sub c			;606b
	add hl,de		;606c
	dec bc			;606d
	sub d			;606e
	ld l,(hl)		;606f
	call po,00044h		;6070
	pop hl			;6073
	ld h,(hl)		;6074
	pop af			;6075
	ld l,e			;6076
	ld (01683h),hl		;6077
	sub d			;607a
	sub c			;607b
	ld (de),a		;607c
	rst 30h			;607d
	in a,(0f7h)		;607e
	ld a,c			;6080
	di			;6081
	adc a,c			;6082
	sbc a,(hl)		;6083
	sbc a,e			;6084
	sub a			;6085
	ret			;6086
	rst 18h			;6087
	ld sp,hl		;6088
	nop			;6089
	sub a			;608a
	rst 18h			;608b
	push de			;608c
	cp (hl)			;608d
	ld e,c			;608e
	ld a,(hl)		;608f
	defb 0fdh,03ch,056h ;illegal sequence	;6090
	add a,d			;6093
	ld l,h			;6094
	ld a,e			;6095
	jp m,08466h		;6096
	xor l			;6099
	rst 38h			;609a
	call m,0ea36h		;609b
	sbc a,l			;609e
	xor c			;609f
	or c			;60a0
	ld a,a			;60a1
	ld h,(hl)		;60a2
	ld h,(hl)		;60a3
	ld a,a			;60a4
	sbc a,c			;60a5
	ex af,af'		;60a6
	cp a			;60a7
	push de			;60a8
	or b			;60a9
	and l			;60aa
	inc bc			;60ab
	xor b			;60ac
	dec d			;60ad
	ld (hl),003h		;60ae
	inc hl			;60b0
	sub c			;60b1
	sbc a,a			;60b2
	dec b			;60b3
	ld c,h			;60b4
	pop bc			;60b5
	ld bc,0efe2h		;60b6
	defb 0edh ;next byte illegal after ed	;60b9
	call pe,00269h		;60ba
	and l			;60bd
	ld l,(hl)		;60be
	push af			;60bf
	inc l			;60c0
	sub c			;60c1
	or d			;60c2
	ld a,a			;60c3
	ld b,08fh		;60c4
	ld d,c			;60c6
	nop			;60c7
	add a,h			;60c8
	dec hl			;60c9
	sbc a,b			;60ca
	ld l,c			;60cb
	rst 18h			;60cc
	call m,0fc5ah		;60cd
	inc a			;60d0
	sub h			;60d1
	ld a,a			;60d2
	ld e,048h		;60d3
	add a,d			;60d5
	sbc a,c			;60d6
	ex af,af'		;60d7
	rst 18h			;60d8
	add hl,de		;60d9
	adc a,e			;60da
	ld c,c			;60db
	inc b			;60dc
	ld h,(hl)		;60dd
	ret nc			;60de
	ld e,c			;60df
	adc a,c			;60e0
	nop			;60e1
	scf			;60e2
	sub h			;60e3
	rst 38h			;60e4
	pop hl			;60e5
	sbc a,h			;60e6
	sub (hl)		;60e7
	cp e			;60e8
	cp 07fh			;60e9
	sbc a,d			;60eb
	or b			;60ec
	ret z			;60ed
	ld l,c			;60ee
	jr nc,l60f5h		;60ef
	ld c,h			;60f1
	call nz,00cd4h		;60f2
l60f5h:
	ld d,b			;60f5
	ret nz			;60f6
	rst 10h			;60f7
	ld c,h			;60f8
	inc h			;60f9
	ld b,b			;60fa
	inc bc			;60fb
	ld d,l			;60fc
	adc a,b			;60fd
	adc a,d			;60fe
	adc a,c			;60ff
	ld b,b			;6100
	push hl			;6101
	res 0,e			;6102
	add hl,hl		;6104
	ld (hl),a		;6105
	inc bc			;6106
	ld bc,099e6h		;6107
sub_610ah:
	di			;610a
	jr c,$+5		;610b
	or d			;610d
	add hl,bc		;610e
	defb 0fdh,09ch ;sbc a,iyh	;610f
	or 092h			;6111
	dec hl			;6113
	inc hl			;6114
	ret m			;6115
	ld c,d			;6116
	add a,b			;6117
	ld a,d			;6118
	sbc a,b			;6119
	cp 0dfh			;611a
	and e			;611c
	ex af,af'		;611d
	cp a			;611e
l611fh:
	ld (hl),l		;611f
	ei			;6120
	jp 0f381h		;6121
	call c,0d056h		;6124
	jp nc,l72cch		;6127
	jp (hl)			;612a
	ld d,(hl)		;612b
	inc de			;612c
	cp (hl)			;612d
	add hl,bc		;612e
	ld a,l			;612f
	inc h			;6130
	sbc a,b			;6131
	sbc a,c			;6132
	ld c,b			;6133
	sub (hl)		;6134
	ld a,e			;6135
	halt			;6136
	ld d,(hl)		;6137
	sub h			;6138
	rst 38h			;6139
	sub h			;613a
	jp m,0e2c2h		;613b
	sub 0a1h		;613e
	ret nz			;6140
	djnz l6174h		;6141
	ld e,e			;6143
	add a,d			;6144
	ld bc,0000ch		;6145
	call po,03e33h		;6148
	inc d			;614b
	ret nz			;614c
	in a,(061h)		;614d
	or 0e2h			;614f
	dec de			;6151
	jp po,09dc9h		;6152
	jp m,0ba10h		;6155
	adc a,a			;6158
	ret m			;6159
	add hl,hl		;615a
	ret p			;615b
	ld d,031h		;615c
	ret m			;615e
	xor d			;615f
	ld sp,029f3h		;6160
	inc hl			;6163
	sbc a,h			;6164
	ld e,a			;6165
	rst 18h			;6166
	rst 10h			;6167
	add a,b			;6168
	ret			;6169
	inc h			;616a
	sub 0b6h		;616b
	adc a,h			;616d
	ld c,(hl)		;616e
	ld b,h			;616f
	add a,0dah		;6170
	add a,e			;6172
	sbc a,d			;6173
l6174h:
	ret z			;6174
	call nz,089fdh		;6175
	ld c,b			;6178
	cp 04ah			;6179
	ld a,l			;617b
	add a,c			;617c
	ld c,h			;617d
	rst 38h			;617e
	ld a,b			;617f
	add hl,hl		;6180
	sub (hl)		;6181
	add a,(hl)		;6182
	ld d,(hl)		;6183
	ld a,a			;6184
	ld d,067h		;6185
	ld h,a			;6187
	xor e			;6188
	sub (hl)		;6189
	and a			;618a
	ld e,(hl)		;618b
	ret z			;618c
	jr z,l61bfh		;618d
	ld d,a			;618f
	rst 10h			;6190
	call nz,0fb32h		;6191
	ld c,c			;6194
	inc bc			;6195
	jp pe,0bbceh		;6196
	ld e,b			;6199
	or l			;619a
	pop hl			;619b
	ld c,c			;619c
	inc bc			;619d
	sub l			;619e
	push hl			;619f
	sbc a,(hl)		;61a0
	add a,h			;61a1
	sub (hl)		;61a2
	jp p,08b91h		;61a3
	ld c,c			;61a6
	sub c			;61a7
	add a,c			;61a8
	ld (de),a		;61a9
	ld de,0f2f8h		;61aa
	sbc a,c			;61ad
	out (0c5h),a		;61ae
	ret m			;61b0
	defb 0fdh,0dfh,0dch ;illegal sequence	;61b1
	ex de,hl		;61b4
	ld h,e			;61b5
	ld c,b			;61b6
	rst 38h			;61b7
	adc a,h			;61b8
	ld sp,hl		;61b9
	call po,sub_6f83h	;61ba
	rst 8			;61bd
	dec l			;61be
l61bfh:
	ld (bc),a		;61bf
	add a,e			;61c0
	push de			;61c1
l61c2h:
	add a,(hl)		;61c2
	sub e			;61c3
	rst 8			;61c4
	ld a,b			;61c5
	rra			;61c6
	rst 8			;61c7
	rst 38h			;61c8
	sub h			;61c9
	dec sp			;61ca
	sub (hl)		;61cb
	add a,b			;61cc
	ld a,a			;61cd
	ld h,a			;61ce
	sub a			;61cf
	ld h,(hl)		;61d0
	ld (hl),a		;61d1
	ld (hl),h		;61d2
	sbc a,b			;61d3
	push bc			;61d4
	ld a,a			;61d5
	ld (02adch),a		;61d6
	nop			;61d9
	jp nc,0e352h		;61da
	ld l,e			;61dd
	call po,sub_634bh	;61de
	ld a,a			;61e1
	ld sp,08f9fh		;61e2
	cp e			;61e5
	ret z			;61e6
	xor d			;61e7
	xor c			;61e8
	ld (hl),b		;61e9
	sub d			;61ea
	daa			;61eb
	adc a,h			;61ec
	ld sp,0021fh		;61ed
	di			;61f0
	adc a,h			;61f1
	jr z,l6226h		;61f2
	rra			;61f4
	add a,h			;61f5
	res 6,h			;61f6
	ld c,(hl)		;61f8
	rra			;61f9
	ld l,a			;61fa
	or l			;61fb
	dec de			;61fc
l61fdh:
	add a,h			;61fd
	rst 38h			;61fe
	jp c,0fe8ch		;61ff
	ld d,a			;6202
	rrca			;6203
	add hl,sp		;6204
	ei			;6205
l6206h:
	dec de			;6206
	ld b,h			;6207
	nop			;6208
	push hl			;6209
	add hl,sp		;620a
	rst 8			;620b
	rst 10h			;620c
	rra			;620d
	adc a,l			;620e
	rst 38h			;620f
	add hl,sp		;6210
	sub l			;6211
	adc a,c			;6212
	sub (hl)		;6213
	call m,0fd9eh		;6214
	ld h,c			;6217
l6218h:
	cp 07fh			;6218
	ld c,l			;621a
	or l			;621b
	ret nc			;621c
	ld e,c			;621d
	defb 0edh ;next byte illegal after ed	;621e
	adc a,c			;621f
	push hl			;6220
	ret			;6221
	xor 049h		;6222
	pop de			;6224
	xor b			;6225
l6226h:
	ld de,0ff9ch		;6226
	ld l,l			;6229
	ld b,h			;622a
	rst 0			;622b
	cp l			;622c
	ld e,e			;622d
	xor c			;622e
	jr z,l61c2h		;622f
	dec (hl)		;6231
	ld (de),a		;6232
	jr l6218h		;6233
	ld h,l			;6235
	di			;6236
	adc a,l			;6237
	di			;6238
	ld e,e			;6239
	sub a			;623a
	ld b,b			;623b
	add a,c			;623c
	ld hl,09419h		;623d
	xor 01fh		;6240
	ex af,af'		;6242
	cp e			;6243
	add hl,bc		;6244
	rst 38h			;6245
	add a,000h		;6246
	xor h			;6248
	add a,l			;6249
	call po,0cc80h		;624a
	add a,b			;624d
	defb 0ddh,08ch ;adc a,ixh	;624e
	sbc a,h			;6250
	rst 38h			;6251
	call nc,0f880h		;6252
	ld a,a			;6255
	daa			;6256
	sbc a,b			;6257
	ld (l4580h+1),hl	;6258
	ld h,(hl)		;625b
	call m,0c433h		;625c
	and a			;625f
	ld h,c			;6260
	ld hl,0cf30h		;6261
	ld c,c			;6264
	ex (sp),hl		;6265
	ld e,c			;6266
	ld h,(hl)		;6267
	ld (0e311h),a		;6268
	call po,0e5fah		;626b
	ret nz			;626e
	and 0b5h		;626f
	inc hl			;6271
	adc a,00bh		;6272
	add a,h			;6274
	sub d			;6275
	ld a,a			;6276
	ld (hl),e		;6277
	ld l,c			;6278
	di			;6279
	ld a,c			;627a
	di			;627b
l627ch:
	ld a,e			;627c
	jp p,02013h		;627d
	ld a,a			;6280
	add hl,hl		;6281
l6282h:
	rra			;6282
	add a,0e1h		;6283
	ld (hl),d		;6285
	ret c			;6286
	inc a			;6287
	ld l,l			;6288
	ret m			;6289
	ld (0bc8fh),hl		;628a
	call nz,0839ah		;628d
	adc a,h			;6290
	or d			;6291
	cp 0d8h			;6292
	cp l			;6294
	add a,b			;6295
	rst 0			;6296
	rst 38h			;6297
	adc a,d			;6298
	jr z,l6315h		;6299
	sub a			;629b
	cp 033h			;629c
	ld h,a			;629e
	ld (0141fh),a		;629f
	inc de			;62a2
	ld d,h			;62a3
	jp po,0e553h		;62a4
	ld e,(hl)		;62a7
	push de			;62a8
	ld c,l			;62a9
	ld h,c			;62aa
	inc sp			;62ab
	defb 0ddh,048h,09fh ;illegal sequence	;62ac
	sbc a,e			;62af
	ld b,h			;62b0
	ld b,h			;62b1
	sbc a,d			;62b2
	xor c			;62b3
	sbc a,h			;62b4
	xor b			;62b5
	ret			;62b6
	cp l			;62b7
	add hl,de		;62b8
	ex (sp),hl		;62b9
	ld l,l			;62ba
	di			;62bb
	ld e,l			;62bc
	ld (de),a		;62bd
	di			;62be
	rst 0			;62bf
	add a,h			;62c0
	pop hl			;62c1
	ld (de),a		;62c2
	inc b			;62c3
	rra			;62c4
	ex (sp),hl		;62c5
	call p,0d6a9h		;62c6
	cp 015h			;62c9
	ld sp,hl		;62cb
	sub d			;62cc
	ld sp,hl		;62cd
	cp d			;62ce
	or 079h			;62cf
	add a,h			;62d1
	ld a,b			;62d2
	adc a,c			;62d3
	adc a,c			;62d4
	sub b			;62d5
	ld d,l			;62d6
	ld c,b			;62d7
	rst 38h			;62d8
	call m,07f79h		;62d9
	add hl,hl		;62dc
	ld a,l			;62dd
	ei			;62de
	add a,b			;62df
	ld (de),a		;62e0
	ld a,c			;62e1
	dec bc			;62e2
	sbc a,h			;62e3
	rst 38h			;62e4
	ld c,(hl)		;62e5
	ld sp,07ef8h		;62e6
	xor 04ah		;62e9
	add a,b			;62eb
	ret			;62ec
	jp po,0a9e9h		;62ed
l62f0h:
	adc a,d			;62f0
	exx			;62f1
	ld b,e			;62f2
	sbc a,e			;62f3
	inc b			;62f4
	call nc,09abbh		;62f5
	add hl,sp		;62f8
	inc iy			;62f9
	djnz l62f0h		;62fb
	rla			;62fd
	ei			;62fe
	ld (de),a		;62ff
	add a,(hl)		;6300
	adc a,c			;6301
	adc a,h			;6302
	jp 01922h		;6303
	rra			;6306
	call sub_5fc4h		;6307
	rst 18h			;630a
	rrca			;630b
l630ch:
	ld e,e			;630c
	ld a,a			;630d
	ld d,l			;630e
	ld h,d			;630f
	adc a,c			;6310
	ld d,e			;6311
l6312h:
	dec b			;6312
	jp (hl)			;6313
	sbc a,c			;6314
l6315h:
	inc d			;6315
	rst 38h			;6316
	rra			;6317
	dec d			;6318
	dec hl			;6319
	jp c,08059h		;631a
	ld b,h			;631d
	add a,c			;631e
	ld d,c			;631f
	rst 38h			;6320
	call nz,053cfh		;6321
	rst 10h			;6324
	ld d,(hl)		;6325
	or 056h			;6326
	ld e,e			;6328
	ld e,(hl)		;6329
	call nc,0112ah		;632a
	sbc a,a			;632d
	jr c,l630ch		;632e
	rst 0			;6330
	sbc a,h			;6331
	ret			;6332
	cp h			;6333
	call nc,0c976h		;6334
	rst 30h			;6337
	ld h,(hl)		;6338
	call pe,0f76ah		;6339
	call 08d85h		;633c
	ld (hl),l		;633f
	sbc a,a			;6340
	push hl			;6341
	defb 0fdh,01eh,01fh ;illegal sequence	;6342
	ld (hl),e		;6345
	rst 38h			;6346
	ret po			;6347
	ld b,h			;6348
	rst 20h			;6349
	rrca			;634a
sub_634bh:
	dec b			;634b
	ld l,c			;634c
	sub 033h		;634d
	ld a,(hl)		;634f
	rst 38h			;6350
	ld d,(hl)		;6351
l6352h:
	rst 38h			;6352
	ld e,(hl)		;6353
	jr c,l6352h		;6354
	ret			;6356
	cp (hl)			;6357
	ld b,a			;6358
	sub a			;6359
	rst 38h			;635a
	inc l			;635b
	xor c			;635c
	ld h,h			;635d
	rst 38h			;635e
	push hl			;635f
	ret c			;6360
	ld d,c			;6361
	in a,(065h)		;6362
	ld a,a			;6364
	ld b,0f2h		;6365
	or l			;6367
	ld l,h			;6368
	ld l,e			;6369
	ld a,a			;636a
	or c			;636b
	dec sp			;636c
	rst 8			;636d
	cp a			;636e
	sub h			;636f
	rst 8			;6370
	ei			;6371
	cpl			;6372
	di			;6373
	dec h			;6374
	ld a,c			;6375
	adc a,d			;6376
	add a,h			;6377
	xor b			;6378
	call po,0cfa4h		;6379
	adc a,b			;637c
	rra			;637d
	ld l,l			;637e
	rst 38h			;637f
	pop af			;6380
	adc a,c			;6381
	call p,0ff9ch		;6382
	dec hl			;6385
	ld d,(hl)		;6386
	sbc a,c			;6387
	call m,0089bh		;6388
	ld hl,(0843eh)		;638b
	ld a,a			;638e
	ld a,0a0h		;638f
	res 0,c			;6391
	inc h			;6393
	ld a,(hl)		;6394
	sub a			;6395
	ret z			;6396
	ld l,h			;6397
	xor c			;6398
	ld d,(hl)		;6399
	rst 10h			;639a
	sbc a,c			;639b
	ld a,d			;639c
	ld d,a			;639d
	halt			;639e
	jp pe,0874eh		;639f
	ld b,l			;63a2
	adc a,d			;63a3
	sbc a,a			;63a4
	dec de			;63a5
	cp e			;63a6
	rla			;63a7
	adc a,a			;63a8
	ld l,h			;63a9
	call nz,0d0a4h		;63aa
	and 098h		;63ad
	ld h,(hl)		;63af
	call p,0118ch		;63b0
	cp 0e2h			;63b3
	adc a,b			;63b5
	inc l			;63b6
	adc a,h			;63b7
	ld c,a			;63b8
	rra			;63b9
	ld a,(hl)		;63ba
	ld a,a			;63bb
	ei			;63bc
	rrca			;63bd
	xor h			;63be
	sbc a,d			;63bf
	xor l			;63c0
	sbc a,c			;63c1
	ld c,c			;63c2
	ld b,h			;63c3
	adc a,e			;63c4
	add a,e			;63c5
	cp e			;63c6
	rlca			;63c7
	ld l,l			;63c8
	dec e			;63c9
	or a			;63ca
	ld (de),a		;63cb
	cp l			;63cc
	inc sp			;63cd
	nop			;63ce
	ld c,b			;63cf
	push bc			;63d0
	ex de,hl		;63d1
	rst 18h			;63d2
	jp z,0be2bh		;63d3
	ld d,e			;63d6
	ei			;63d7
	ex de,hl		;63d8
	add a,b			;63d9
	ld h,d			;63da
	or e			;63db
	out (0e9h),a		;63dc
	di			;63de
	pop hl			;63df
	sub 0e3h		;63e0
	ld l,l			;63e2
	out (047h),a		;63e3
	ld hl,0e5dfh		;63e5
	push bc			;63e8
	xor l			;63e9
	ld c,c			;63ea
	inc bc			;63eb
	ld l,d			;63ec
	ret nc			;63ed
	sbc a,09fh		;63ee
	cpl			;63f0
	adc a,b			;63f1
	di			;63f2
	ld h,e			;63f3
sub_63f4h:
	sbc a,d			;63f4
	ccf			;63f5
	push af			;63f6
	dec d			;63f7
	nop			;63f8
	rra			;63f9
	add a,d			;63fa
	ld h,a			;63fb
	rra			;63fc
	cp a			;63fd
	rst 38h			;63fe
	add hl,sp		;63ff
	ld h,a			;6400
	rrca			;6401
	defb 0fdh,065h ;ld iyh,iyl	;6402
	adc a,l			;6404
	ld (hl),c		;6405
	ei			;6406
	xor b			;6407
	call z,0e9adh		;6408
	ld (hl),c		;640b
	ld c,h			;640c
	ld c,038h		;640d
	ld l,l			;640f
	cp a			;6410
	cp c			;6411
	adc a,c			;6412
	jp z,0ea46h		;6413
	ld h,h			;6416
	sub h			;6417
	ld d,a			;6418
	ld a,a			;6419
	call p,0964dh		;641a
	add a,d			;641d
	ld c,h			;641e
	add a,c			;641f
	jr c,l64a1h		;6420
	and h			;6422
	or 04dh			;6423
	inc sp			;6425
	ret m			;6426
	add a,c			;6427
	and e			;6428
	ld bc,l72f1h		;6429
	jp (hl)			;642c
	jp nc,0329fh		;642d
	jp z,00333h		;6430
	daa			;6433
	jp z,08919h		;6434
	rra			;6437
	sub d			;6438
	add hl,sp		;6439
	jp (hl)			;643a
	ret pe			;643b
	ld (01fc8h),a		;643c
	add a,h			;643f
	jp z,04f83h		;6440
	rra			;6443
	ld a,a			;6444
	ld a,a			;6445
	ld l,00fh		;6446
	daa			;6448
	sbc a,(hl)		;6449
	inc d			;644a
	sbc a,b			;644b
	ld sp,hl		;644c
	sbc a,(hl)		;644d
	rrca			;644e
	ld de,0c2ffh		;644f
	inc bc			;6452
	sbc a,072h		;6453
	ld a,h			;6455
	ld b,l			;6456
	inc bc			;6457
	rst 38h			;6458
	ex de,hl		;6459
	or h			;645a
	and l			;645b
	ld h,e			;645c
	ld c,b			;645d
l645eh:
	dec d			;645e
	add a,e			;645f
	ld d,a			;6460
	ld a,c			;6461
	add a,c			;6462
	ld (l5a22h),a		;6463
	jr nc,l645eh		;6466
	ld e,b			;6468
	ld a,(hl)		;6469
	in a,(088h)		;646a
	ld sp,0c9feh		;646c
	ld h,a			;646f
	ld (de),a		;6470
	sbc a,a			;6471
	add hl,de		;6472
	exx			;6473
	add hl,de		;6474
	inc bc			;6475
	ld e,h			;6476
	ld h,b			;6477
	adc a,0b7h		;6478
	nop			;647a
	rst 28h			;647b
	jp po,09532h		;647c
	ld l,l			;647f
	or 0bah			;6480
	rra			;6482
	ld a,e			;6483
	ld hl,0f71fh		;6484
	ld a,a			;6487
	ret m			;6488
	call m,00f65h		;6489
l648ch:
	adc a,b			;648c
	call po,0a585h		;648d
	ld a,a			;6490
	rrca			;6491
	rst 18h			;6492
	ld a,a			;6493
	inc d			;6494
	ld a,l			;6495
	ld e,b			;6496
	ld hl,0ddd8h		;6497
	ld sp,01820h		;649a
	ld (0c430h),a		;649d
	ld a,a			;64a0
l64a1h:
	sub h			;64a1
	ret nz			;64a2
	add a,b			;64a3
	ld l,c			;64a4
	ld h,a			;64a5
	ld d,(hl)		;64a6
	ld d,(hl)		;64a7
	add a,d			;64a8
	defb 0edh ;next byte illegal after ed	;64a9
	or a			;64aa
	ei			;64ab
	cp c			;64ac
	push de			;64ad
	ld (0fc13h),hl		;64ae
	or (hl)			;64b1
	jp pe,024b2h		;64b2
	ld b,(hl)		;64b5
	inc hl			;64b6
	sbc a,a			;64b7
	dec h			;64b8
l64b9h:
	ld c,h			;64b9
	rst 18h			;64ba
	jr z,l648ch		;64bb
	ld (084c8h),a		;64bd
	ld c,h			;64c0
	ld b,d			;64c1
	call 02496h		;64c2
	ld bc,08113h		;64c5
	jp (hl)			;64c8
	rra			;64c9
	jr nc,l64ebh		;64ca
	rst 28h			;64cc
	rst 38h			;64cd
	ld c,(hl)		;64ce
	ld l,044h		;64cf
	rrca			;64d1
	ld (hl),01fh		;64d2
	sbc a,a			;64d4
	sub a			;64d5
	rrca			;64d6
	cp l			;64d7
	dec e			;64d8
	sbc a,c			;64d9
	ret nz			;64da
	jr nz,l64b9h		;64db
	inc e			;64dd
	defb 0edh ;next byte illegal after ed	;64de
	add a,05fh		;64df
	ld d,e			;64e1
	inc e			;64e2
	sub a			;64e3
	sbc a,e			;64e4
	defb 0fdh,044h ;ld b,iyh	;64e5
	cp 067h			;64e7
	ld e,l			;64e9
	ld a,c			;64ea
l64ebh:
	add a,c			;64eb
	or d			;64ec
	ld h,h			;64ed
	defb 0fdh,0ech,0feh ;illegal sequence	;64ee
	ld h,l			;64f1
	add a,h			;64f2
	and l			;64f3
	defb 0fdh,0e4h,00ch ;illegal sequence	;64f4
	ld sp,09f8ch		;64f7
	call z,sub_4322h	;64fa
	sbc a,h			;64fd
sub_64feh:
	cp a			;64fe
	ld b,(hl)		;64ff
	adc a,b			;6500
	sbc a,a			;6501
	ld l,(hl)		;6502
	sub (hl)		;6503
	ret c			;6504
	add hl,sp		;6505
	add a,b			;6506
	cp h			;6507
	rra			;6508
	dec a			;6509
	jr nz,l652bh		;650a
	pop af			;650c
	cp 0a9h			;650d
	adc a,(hl)		;650f
	ret			;6510
	ei			;6511
	pop hl			;6512
	sbc a,h			;6513
	rra			;6514
	jp 00f88h		;6515
	rst 0			;6518
	ld a,a			;6519
	adc a,a			;651a
	adc a,0ceh		;651b
	rst 0			;651d
	ld c,b			;651e
	ret z			;651f
	ret z			;6520
	jp 0b1a8h		;6521
	call z,0899ah		;6524
	rst 38h			;6527
	halt			;6528
	add a,d			;6529
	sbc a,e			;652a
l652bh:
	inc bc			;652b
	ld d,l			;652c
	set 6,h			;652d
	adc a,c			;652f
	ld d,a			;6530
	dec a			;6531
	ld de,026dfh		;6532
	jp c,086bch		;6535
	or e			;6538
	inc c			;6539
	ld e,h			;653a
	cp (hl)			;653b
	rla			;653c
	add a,e			;653d
	sub c			;653e
	ld c,b			;653f
	xor e			;6540
	jp pe,0fc4ch		;6541
	jp p,0bca2h		;6544
	sbc a,l			;6547
	dec hl			;6548
	ld bc,0971fh		;6549
	ld hl,0bf1fh		;654c
	ld a,a			;654f
	adc a,a			;6550
	or b			;6551
	ld l,(hl)		;6552
	add a,d			;6553
	xor a			;6554
	rra			;6555
	dec a			;6556
	rrca			;6557
	ret p			;6558
	ld a,a			;6559
	ld (bc),a		;655a
	adc a,h			;655b
	jp 0ba92h		;655c
	sbc a,0f2h		;655f
	ld b,e			;6561
	ld a,e			;6562
	ld b,h			;6563
	sub c			;6564
	dec hl			;6565
	ld (hl),a		;6566
	add a,c			;6567
	ld c,e			;6568
	add a,d			;6569
	sub d			;656a
	ld h,a			;656b
	cp b			;656c
l656dh:
	ld c,(hl)		;656d
	sbc a,d			;656e
	inc sp			;656f
	nop			;6570
	call c,09f25h		;6571
	dec sp			;6574
	add a,l			;6575
	ld h,d			;6576
	adc a,e			;6577
	ld h,(hl)		;6578
	call nz,0da80h		;6579
	cp b			;657c
	ld e,(hl)		;657d
	sbc a,d			;657e
	ld l,d			;657f
l6580h:
	jp nc,0ffddh		;6580
	rra			;6583
	adc a,h			;6584
	ld (01cfeh),hl		;6585
	inc sp			;6588
	rra			;6589
	cp (hl)			;658a
	ld (00e1fh),a		;658b
	ld a,a			;658e
	or d			;658f
	ld l,l			;6590
	xor 033h		;6591
	ret c			;6593
	daa			;6594
	ld b,h			;6595
	rra			;6596
	ld a,l			;6597
	rrca			;6598
	pop af			;6599
	ld a,a			;659a
	add a,b			;659b
	inc h			;659c
	cp h			;659d
	and 0c0h		;659e
	jr l656dh		;65a0
	adc a,a			;65a2
	djnz l6624h		;65a3
	inc e			;65a5
	add a,e			;65a6
	add hl,de		;65a7
	ld l,c			;65a8
	jr c,$+1		;65a9
l65abh:
	add hl,hl		;65ab
	rst 10h			;65ac
l65adh:
	jr l65c0h		;65ad
	call m,0d580h		;65af
	jp po,000bah		;65b2
	rra			;65b5
	call z,0455eh		;65b6
	ld c,l			;65b9
	ld c,b			;65ba
	ret z			;65bb
	sub e			;65bc
	add hl,de		;65bd
	dec sp			;65be
	add a,a			;65bf
l65c0h:
	inc hl			;65c0
	inc hl			;65c1
	rra			;65c2
	rrca			;65c3
	ld hl,0871fh		;65c4
	defb 0fdh,0bch ;cp iyh	;65c7
l65c9h:
	ld a,c			;65c9
	rst 38h			;65ca
	inc sp			;65cb
	rrca			;65cc
	rra			;65cd
	sbc a,a			;65ce
	rrca			;65cf
	ld d,002h		;65d0
	call nc,0bba5h		;65d2
	call po,07183h		;65d5
	ld h,(hl)		;65d8
	adc a,l			;65d9
	nop			;65da
	ld (09bd4h),hl		;65db
	adc a,d			;65de
	call m,sub_65ffh	;65df
	ld h,(hl)		;65e2
	add a,c			;65e3
	ld l,a			;65e4
sub_65e5h:
	ret c			;65e5
	daa			;65e6
	out (0e4h),a		;65e7
	add a,l			;65e9
	ld l,h			;65ea
	sbc a,e			;65eb
	ld e,b			;65ec
	ld hl,(0bc22h)		;65ed
sub_65f0h:
	or l			;65f0
	exx			;65f1
	rra			;65f2
	in a,(09dh)		;65f3
	adc a,c			;65f5
	rst 18h			;65f6
	or e			;65f7
	ld c,h			;65f8
	ld c,b			;65f9
	add a,b			;65fa
	ld de,0bf10h		;65fb
	add hl,sp		;65fe
sub_65ffh:
	ld a,(de)		;65ff
	sub h			;6600
	rst 38h			;6601
l6602h:
	add a,a			;6602
	ex af,af'		;6603
	nop			;6604
	rra			;6605
	pop bc			;6606
	ex de,hl		;6607
	add hl,de		;6608
	adc a,e			;6609
	jp c,0ce98h		;660a
	ld l,a			;660d
	rrca			;660e
	ld a,b			;660f
	ld e,a			;6610
	xor l			;6611
l6612h:
	call m,08c9ch		;6612
	xor c			;6615
	rrca			;6616
	or l			;6617
l6618h:
	dec hl			;6618
	halt			;6619
	add hl,sp		;661a
	ld a,a			;661b
	inc sp			;661c
	ld h,d			;661d
	ld b,d			;661e
	scf			;661f
	cp d			;6620
	ld hl,(02000h)		;6621
l6624h:
	call m,sub_7ab8h	;6624
	ld (hl),a		;6627
	add a,a			;6628
	ld h,l			;6629
	inc d			;662a
	ld a,b			;662b
	defb 0ddh,058h,021h ;illegal sequence	;662c
	adc a,d			;662f
	sbc a,(hl)		;6630
	call m,0e3edh		;6631
	ld c,(hl)		;6634
	rra			;6635
	scf			;6636
	add a,h			;6637
	dec l			;6638
	rst 0			;6639
	ccf			;663a
	adc a,c			;663b
	inc hl			;663c
	ld b,l			;663d
	ex af,af'		;663e
	ld bc,l7398h		;663f
	and c			;6642
	ret m			;6643
	and e			;6644
	dec de			;6645
	ld (bc),a		;6646
	jr nz,l65c9h		;6647
	rra			;6649
	sbc a,00fh		;664a
	or l			;664c
	jp p,0f5beh		;664d
	ld a,c			;6650
	rrca			;6651
	ex (sp),hl		;6652
	ld e,a			;6653
	call po,084b6h		;6654
	jp nc,0920fh		;6657
	cp b			;665a
	cp h			;665b
	sub d			;665c
	rst 18h			;665d
	xor d			;665e
	add a,e			;665f
	call nc,0c430h		;6660
	and e			;6663
	nop			;6664
	dec d			;6665
	ld d,d			;6666
	call nz,0b5a4h		;6667
	ld a,e			;666a
	ld a,a			;666b
	add a,h			;666c
	jp (hl)			;666d
	sbc a,a			;666e
	ld (09812h),hl		;666f
	ld d,e			;6672
	rst 20h			;6673
	or d			;6674
	inc b			;6675
	ld (hl),d		;6676
	ld (0f8e3h),hl		;6677
	rra			;667a
	halt			;667b
	out (07ah),a		;667c
	sbc a,0e6h		;667e
	sbc a,(hl)		;6680
	ld b,l			;6681
sub_6682h:
	ei			;6682
	sbc a,l			;6683
	dec d			;6684
	rst 38h			;6685
	ld d,c			;6686
	cp (hl)			;6687
	ld d,d			;6688
	dec h			;6689
	xor b			;668a
	sbc a,(hl)		;668b
	rra			;668c
	jp m,08bceh		;668d
	adc a,c			;6690
	add a,h			;6691
	ex de,hl		;6692
	rrca			;6693
sub_6694h:
	xor a			;6694
	rra			;6695
	dec c			;6696
	and d			;6697
	ld c,d			;6698
	ex af,af'		;6699
	sbc a,0b6h		;669a
	cp a			;669c
	xor d			;669d
	ld d,(hl)		;669e
	cp e			;669f
	sub d			;66a0
	add a,e			;66a1
	push bc			;66a2
	inc sp			;66a3
	add a,h			;66a4
	dec c			;66a5
	adc a,c			;66a6
	dec d			;66a7
	call po,0c9bbh		;66a8
	ld a,(hl)		;66ab
	ld a,a			;66ac
	ld h,a			;66ad
	add a,l			;66ae
	daa			;66af
	out (092h),a		;66b0
	rst 38h			;66b2
	ld h,(hl)		;66b3
	sbc a,e			;66b4
	ld e,d			;66b5
	sbc a,d			;66b6
	ld d,l			;66b7
	add a,d			;66b8
	ex (sp),hl		;66b9
l66bah:
	jp pe,l5a89h		;66ba
	adc a,h			;66bd
	jp c,01f67h		;66be
	ret nz			;66c1
	and e			;66c2
	adc a,h			;66c3
	jp 01656h		;66c4
	or e			;66c7
	ld a,a			;66c8
	ret m			;66c9
	dec hl			;66ca
	and c			;66cb
	adc a,d			;66cc
	ld b,0a1h		;66cd
	cpl			;66cf
	rra			;66d0
	ld a,c			;66d1
	nop			;66d2
	adc a,b			;66d3
	call p,08679h		;66d4
	rst 20h			;66d7
l66d8h:
	rrca			;66d8
	add a,a			;66d9
	ld e,a			;66da
	ld e,c			;66db
	rrca			;66dc
	adc a,(hl)		;66dd
	ld sp,hl		;66de
	rst 38h			;66df
	push hl			;66e0
	ret c			;66e1
	dec l			;66e2
l66e3h:
	ld d,l			;66e3
	rst 38h			;66e4
	add hl,hl		;66e5
	jp 00a84h		;66e6
	ld sp,0bfd4h		;66e9
	or h			;66ec
	and c			;66ed
	ret nz			;66ee
	rra			;66ef
	add a,a			;66f0
	halt			;66f1
	ld h,(hl)		;66f2
	ld l,c			;66f3
	push af			;66f4
	add a,h			;66f5
	jr z,l676fh		;66f6
	ld bc,09415h		;66f8
	and e			;66fb
	ret po			;66fc
	ld hl,(0fe67h)		;66fd
	pop hl			;6700
	ld (0b335h),hl		;6701
	add a,076h		;6704
	in a,(062h)		;6706
	call nz,0c56ah		;6708
	ld l,l			;670b
	rst 38h			;670c
	cp h			;670d
	ld h,015h		;670e
	ld a,d			;6710
	add a,l			;6711
	add a,09dh		;6712
	ld c,a			;6714
	ld a,(hl)		;6715
	djnz l6737h		;6716
	ld a,d			;6718
	ex (sp),hl		;6719
	ret			;671a
	add a,d			;671b
	ld b,e			;671c
	ld b,h			;671d
	ld c,c			;671e
	rrca			;671f
	cp (hl)			;6720
	ld e,a			;6721
	sbc a,h			;6722
	adc a,b			;6723
	rrca			;6724
	ld h,d			;6725
	adc a,c			;6726
	ld c,d			;6727
	ld d,e			;6728
	ld hl,l5a3bh		;6729
	defb 0edh ;next byte illegal after ed	;672c
	add a,e			;672d
	ld l,(hl)		;672e
	inc de			;672f
	push bc			;6730
	daa			;6731
	jr nc,l66d8h		;6732
	inc (hl)		;6734
	rra			;6735
	sub (hl)		;6736
l6737h:
	ld h,l			;6737
	ld h,c			;6738
	ld h,(hl)		;6739
	add a,d			;673a
	ld a,a			;673b
	ld e,c			;673c
	add a,l			;673d
	sbc a,e			;673e
l673fh:
	ld b,d			;673f
	ld (08adfh),hl		;6740
	ld h,d			;6743
	defb 0fdh,032h,05bh ;illegal sequence	;6744
	xor l			;6747
	rst 38h			;6748
	ex (sp),hl		;6749
	rra			;674a
	ret po			;674b
	ret m			;674c
	xor (hl)		;674d
	inc b			;674e
	ex (sp),hl		;674f
	adc a,c			;6750
	adc a,001h		;6751
	ret nz			;6753
	add hl,hl		;6754
	ld b,d			;6755
	sub h			;6756
	sbc a,h			;6757
	sub d			;6758
	and h			;6759
	ld d,a			;675a
	ccf			;675b
	daa			;675c
	rra			;675d
	cp l			;675e
	add a,e			;675f
	sub (hl)		;6760
	adc a,h			;6761
	sub a			;6762
	jp pe,00f9eh		;6763
l6766h:
	inc e			;6766
	ld e,a			;6767
	cp c			;6768
	sub h			;6769
	rrca			;676a
	ld b,(hl)		;676b
	add a,h			;676c
	cp a			;676d
	ld b,l			;676e
l676fh:
	rst 38h			;676f
	add a,e			;6770
	ld a,h			;6771
	ld b,l			;6772
	cp (hl)			;6773
	jp 00272h		;6774
	res 5,e			;6777
	rra			;6779
	sbc a,d			;677a
	ld e,b			;677b
	jr $-105		;677c
	ld h,(hl)		;677e
	ld h,a			;677f
	rst 38h			;6780
	adc a,e			;6781
	ld (hl),a		;6782
	add a,d			;6783
	and a			;6784
	sub 023h		;6785
	ld a,(de)		;6787
	inc bc			;6788
	ld (l6206h),hl		;6789
	and d			;678c
	and c			;678d
	and b			;678e
	ld hl,0ce1fh		;678f
	call po,0bae4h		;6792
	sbc a,d			;6795
	res 2,e			;6796
	exx			;6798
	ld b,h			;6799
	or d			;679a
	ld (de),a		;679b
	jp c,0a47fh		;679c
	ld c,c			;679f
	adc a,c			;67a0
	ld c,l			;67a1
	add a,e			;67a2
	ld c,a			;67a3
	rra			;67a4
	ld a,(hl)		;67a5
	adc a,a			;67a6
	ld b,l			;67a7
	ld c,c			;67a8
	ld a,(hl)		;67a9
	inc c			;67aa
	ld a,b			;67ab
	rrca			;67ac
	ld (hl),d		;67ad
	ld e,a			;67ae
	sbc a,h			;67af
	defb 0ddh,00fh,0a8h ;illegal sequence	;67b0
	call 0cabfh		;67b3
	di			;67b6
	ld c,h			;67b7
	nop			;67b8
	and e			;67b9
	rst 18h			;67ba
	ld h,d			;67bb
	inc sp			;67bc
	ret z			;67bd
	ld sp,027a1h		;67be
	sbc a,(hl)		;67c1
l67c2h:
	ld a,d			;67c2
	rst 38h			;67c3
	halt			;67c4
	ld h,a			;67c5
l67c6h:
	rst 38h			;67c6
	ld e,096h		;67c7
sub_67c9h:
	halt			;67c9
	rst 18h			;67ca
	push bc			;67cb
	ld a,b			;67cc
	add ix,de		;67cd
	and b			;67cf
	ret m			;67d0
	ld de,0dff4h		;67d1
	ld c,d			;67d4
	sbc a,c			;67d5
	call nz,0de4ah		;67d6
	jp pe,09864h		;67d9
	ld b,a			;67dc
	ld c,d			;67dd
	sub b			;67de
	sbc a,a			;67df
	ld a,(hl)		;67e0
	sbc a,(hl)		;67e1
	xor h			;67e2
	ld bc,08ca4h		;67e3
	add a,a			;67e6
	ld b,l			;67e7
	ld (bc),a		;67e8
	add a,d			;67e9
	rra			;67ea
	defb 0edh ;next byte illegal after ed	;67eb
	jp pe,l627ch		;67ec
	adc a,e			;67ef
	ld a,b			;67f0
	rrca			;67f1
	di			;67f2
	ld e,a			;67f3
	ld a,a			;67f4
	ld c,l			;67f5
	dec b			;67f6
	ld c,c			;67f7
	rrca			;67f8
	sbc a,h			;67f9
	cp b			;67fa
	adc a,h			;67fb
	jp c,0168fh		;67fc
	djnz l6804h		;67ff
	jp (hl)			;6801
	ld c,d			;6802
	ld c,h			;6803
l6804h:
	rst 38h			;6804
	ld l,c			;6805
	sub h			;6806
	call sub_5499h		;6807
	ld d,l			;680a
	rst 38h			;680b
	jp nc,009ffh		;680c
	sbc a,c			;680f
	ld h,(hl)		;6810
	ld l,b			;6811
	ld (hl),l		;6812
	ld (l7e18h),hl		;6813
	defb 0ddh,053h,060h ;illegal sequence	;6816
	jp po,00db2h		;6819
	adc a,c			;681c
	bit 5,e			;681d
	sbc a,05ah		;681f
	cp e			;6821
	ld e,(hl)		;6822
	rst 18h			;6823
	ret z			;6824
	call c,0fbbfh		;6825
	cpl			;6828
	or l			;6829
	ld (0821bh),a		;682a
	add hl,hl		;682d
	and d			;682e
	ret			;682f
	and a			;6830
	ld e,099h		;6831
	rra			;6833
	call nc,099ffh		;6834
	add a,a			;6837
	cp (hl)			;6838
	rrca			;6839
	inc a			;683a
	ld e,a			;683b
	ex (sp),hl		;683c
	rrca			;683d
	ld b,h			;683e
	rrca			;683f
	adc a,d			;6840
	rst 18h			;6841
	xor b			;6842
	nop			;6843
	cp e			;6844
	cp l			;6845
	add a,e			;6846
	inc h			;6847
	cp h			;6848
	xor b			;6849
	ld c,c			;684a
	add a,e			;684b
	ld c,l			;684c
	jr nz,$-80		;684d
	sbc a,b			;684f
	call z,0690ah		;6850
	ld h,(hl)		;6853
	ld h,(hl)		;6854
	call m,0a8b3h		;6855
	ld (hl),d		;6858
	ld (hl),d		;6859
	ei			;685a
	or c			;685b
	ld de,l79fdh		;685c
	defb 0ddh,099h,0a4h ;illegal sequence	;685f
	exx			;6862
	rra			;6863
	dec sp			;6864
	adc a,b			;6865
	cp b			;6866
	ld d,e			;6867
	ld c,h			;6868
	ld h,l			;6869
	ret z			;686a
	ld h,(hl)		;686b
	add hl,hl		;686c
	ld h,a			;686d
	inc a			;686e
	ld (0fbf7h),hl		;686f
	rst 38h			;6872
	adc a,c			;6873
	sbc a,l			;6874
	ld (hl),083h		;6875
	ld hl,09913h		;6877
	rra			;687a
	defb 0edh ;next byte illegal after ed	;687b
	add a,l			;687c
	ret			;687d
	add a,d			;687e
	jr c,$-118		;687f
l6881h:
	jp p,0e20fh		;6881
	ld e,a			;6884
	add a,e			;6885
	sub l			;6886
	ld b,h			;6887
	adc a,h			;6888
	adc a,e			;6889
	cp c			;688a
	or a			;688b
	di			;688c
	sub c			;688d
	cp b			;688e
	ld d,d			;688f
	jr $+5			;6890
	inc de			;6892
	ld iy,(00b80h)		;6893
	nop			;6897
	ld b,h			;6898
	xor h			;6899
	pop hl			;689a
	sub (hl)		;689b
	ld bc,l6624h+2		;689c
	nop			;689f
	ld (hl),a		;68a0
	cpl			;68a1
	ld c,d			;68a2
	ret m			;68a3
l68a4h:
	sub l			;68a4
	jr nz,$+3		;68a5
	jr l68a4h		;68a7
	call pe,097deh		;68a9
	ld h,c			;68ac
	rra			;68ad
	scf			;68ae
	call nz,0e556h		;68af
	ld b,(hl)		;68b2
	ret nz			;68b3
	ld c,c			;68b4
	cp 0f7h			;68b5
	dec iy			;68b7
	ld (de),a		;68b9
	sbc a,h			;68ba
	ld l,0bdh		;68bb
	or c			;68bd
	ld b,c			;68be
	and b			;68bf
	inc a			;68c0
	rra			;68c1
	ex de,hl		;68c2
	add a,(hl)		;68c3
	scf			;68c4
	cpl			;68c5
	add a,d			;68c6
	ld c,a			;68c7
	rrca			;68c8
	ld e,a			;68c9
	adc a,a			;68ca
	rst 20h			;68cb
	rrca			;68cc
	adc a,c			;68cd
	jp p,0beb1h		;68ce
	ld h,e			;68d1
	rst 38h			;68d2
	inc c			;68d3
	ld bc,0c431h		;68d4
	ld c,d			;68d7
	ld h,l			;68d8
	cp c			;68d9
	sub 023h		;68da
	and h			;68dc
	ld a,a			;68dd
	jp m,00093h		;68de
	sub a			;68e1
	xor l			;68e2
	sub l			;68e3
	ld (de),a		;68e4
	inc de			;68e5
	jp c,0fc59h		;68e6
	cp e			;68e9
	sbc a,h			;68ea
	or l			;68eb
	jp pe,01fd8h		;68ec
	adc a,b			;68ef
	sbc a,h			;68f0
	cp (hl)			;68f1
	sub l			;68f2
	ccf			;68f3
	ld c,h			;68f4
	push hl			;68f5
	push bc			;68f6
	inc d			;68f7
	rst 30h			;68f8
	defb 0fdh,018h,023h ;illegal sequence	;68f9
	nop			;68fc
	push bc			;68fd
	sub c			;68fe
	ld l,(iy-053h)		;68ff
	inc a			;6902
	add hl,de		;6903
	rra			;6904
	push de			;6905
	sbc a,c			;6906
	dec bc			;6907
	ld c,(hl)		;6908
	defb 0fdh,098h,084h ;illegal sequence	;6909
	pop af			;690c
	rrca			;690d
	jp po,09e5fh		;690e
	xor e			;6911
	add a,l			;6912
	jp c,l5a8dh		;6913
	ld d,d			;6916
	defb 0ddh,0c8h,081h ;illegal sequence	;6917
	xor e			;691a
	rst 38h			;691b
	add hl,hl		;691c
	ei			;691d
	jr z,$+101		;691e
	ex de,hl		;6920
	sbc a,b			;6921
	add a,h			;6922
	and b			;6923
	or (hl)			;6924
	cp 04ch			;6925
	add a,b			;6927
	ld h,a			;6928
	ld e,c			;6929
	halt			;692a
	add a,c			;692b
	xor b			;692c
	add hl,de		;692d
	ret c			;692e
	ld a,(0e422h)		;692f
	exx			;6932
	cp l			;6933
	ei			;6934
	push bc			;6935
	adc a,e			;6936
	rst 20h			;6937
	rra			;6938
	ccf			;6939
	inc h			;693a
	ld e,b			;693b
	ld c,b			;693c
	cp 057h			;693d
	add hl,sp		;693f
	rst 30h			;6940
	call p,0b332h		;6941
	ld (bc),a		;6944
	and e			;6945
	dec hl			;6946
	ld e,0a8h		;6947
	rst 0			;6949
	inc c			;694a
	rra			;694b
	adc a,(hl)		;694c
	ccf			;694d
	ld hl,(0fb84h)		;694e
	push bc			;6951
	add a,c			;6952
	pop af			;6953
	rrca			;6954
	jp p,l673fh		;6955
	adc a,b			;6958
	rrca			;6959
	cp (hl)			;695a
	jp nc,0b1d5h		;695b
	rst 38h			;695e
	sub (hl)		;695f
	add a,b			;6960
	sub l			;6961
	ex (sp),hl		;6962
	xor b			;6963
	adc a,b			;6964
	sbc a,d			;6965
	ret po			;6966
	adc a,c			;6967
	ld h,l			;6968
	sbc a,h			;6969
	rst 38h			;696a
	out (0fdh),a		;696b
	ret nz			;696d
	pop de			;696e
	ld (de),a		;696f
	call m,0e19bh		;6970
	jr l6976h		;6973
	push de			;6975
l6976h:
	xor b			;6976
	sub h			;6977
	xor c			;6978
	and l			;6979
	rra			;697a
l697bh:
	ret			;697b
	ld a,b			;697c
	ld b,h			;697d
	sub e			;697e
	adc a,c			;697f
	or a			;6980
	rst 20h			;6981
	djnz l697bh		;6982
	push af			;6984
l6985h:
	sbc a,h			;6985
	dec h			;6986
	ld c,b			;6987
	pop bc			;6988
	ld (hl),0cah		;6989
	push hl			;698b
	xor b			;698c
	rrca			;698d
	add hl,hl		;698e
	rra			;698f
	inc e			;6990
	ccf			;6991
	and a			;6992
	cpl			;6993
	defb 0edh ;next byte illegal after ed	;6994
	cpl			;6995
	ld a,c			;6996
	rrca			;6997
	ld l,05fh		;6998
	dec (hl)		;699a
	rrca			;699b
	adc a,b			;699c
	rrca			;699d
	xor h			;699e
	ld (033f5h),hl		;699f
	ld h,d			;69a2
	and b			;69a3
	ld a,c			;69a4
	sbc a,0a5h		;69a5
	ld l,l			;69a7
	sbc a,a			;69a8
	adc a,e			;69a9
	ld sp,hl		;69aa
	and e			;69ab
	add a,b			;69ac
	ld d,d			;69ad
	sub h			;69ae
	and d			;69af
	ld c,d			;69b0
	jp p,09556h		;69b1
	ld d,a			;69b4
	ld a,c			;69b5
	ei			;69b6
	xor h			;69b7
	ld (de),a		;69b8
	ld e,a			;69b9
	rr a			;69ba
	nop			;69bc
	jp z,0ccb3h		;69bd
	ld c,c			;69c0
	dec de			;69c1
	add a,b			;69c2
	call p,0f719h		;69c3
	defb 0fdh,0ach ;xor iyh	;69c6
	ld de,0f4fah		;69c8
	add a,c			;69cb
	inc l			;69cc
	ld (bc),a		;69cd
	ld sp,03b8fh		;69ce
	add hl,de		;69d1
	sub h			;69d2
	rra			;69d3
	sub h			;69d4
	jp pe,062c7h		;69d5
	ld c,b			;69d8
	add a,b			;69d9
	cpl			;69da
	rrca			;69db
l69dch:
	adc a,a			;69dc
	ld e,a			;69dd
	ld h,088h		;69de
	adc a,h			;69e0
	dec b			;69e1
	pop hl			;69e2
	ld e,a			;69e3
	ld de,08032h		;69e4
	ld c,c			;69e7
	ld a,a			;69e8
l69e9h:
	push hl			;69e9
	inc hl			;69ea
	add hl,sp		;69eb
	call z,0649eh		;69ec
	adc a,b			;69ef
	jr c,l69f9h		;69f0
	halt			;69f2
	call m,023c7h		;69f3
	ld (0a4dch),a		;69f6
l69f9h:
	ret m			;69f9
	exx			;69fa
	jp c,02795h		;69fb
	jp (hl)			;69fe
	ld h,l			;69ff
	sbc a,a			;6a00
	defb 0edh ;next byte illegal after ed	;6a01
	jp z,0c61bh		;6a02
	ld a,(de)		;6a05
	add a,c			;6a06
	sbc a,b			;6a07
	ex (sp),hl		;6a08
	xor e			;6a09
	add hl,bc		;6a0a
	or d			;6a0b
	ld c,a			;6a0c
	rst 30h			;6a0d
	rst 28h			;6a0e
	cp (hl)			;6a0f
	sub 047h		;6a10
	ld sp,03123h		;6a12
	rst 8			;6a15
	dec bc			;6a16
	sbc a,c			;6a17
	call z,01f72h		;6a18
	adc a,b			;6a1b
	push hl			;6a1c
	call z,0dc69h		;6a1d
	rst 38h			;6a20
	or e			;6a21
	add a,c			;6a22
	rrca			;6a23
	push bc			;6a24
	add a,h			;6a25
	rst 38h			;6a26
	adc a,l			;6a27
	add a,097h		;6a28
	ld h,l			;6a2a
	ld e,a			;6a2b
	ld b,c			;6a2c
	add a,c			;6a2d
	ld c,c			;6a2e
	rst 38h			;6a2f
	ld a,c			;6a30
	ld (hl),b		;6a31
	dec d			;6a32
	ld (bc),a		;6a33
	jr nz,$-22		;6a34
	ld (hl),d		;6a36
	cp a			;6a37
	ld b,a			;6a38
	sbc a,a			;6a39
	nop			;6a3a
	sub b			;6a3b
	inc sp			;6a3c
	dec sp			;6a3d
	jr nc,l6a47h		;6a3e
	ld d,(hl)		;6a40
	ld (hl),a		;6a41
	xor l			;6a42
	ld de,00184h		;6a43
	ex (sp),hl		;6a46
l6a47h:
	add hl,hl		;6a47
	jr nc,l6a9dh		;6a48
	and l			;6a4a
	call nz,08832h		;6a4b
	adc a,c			;6a4e
	inc bc			;6a4f
	add hl,hl		;6a50
	djnz l6a92h		;6a51
	add a,h			;6a53
	ld c,h			;6a54
	add a,h			;6a55
	xor b			;6a56
	ld l,c			;6a57
	add hl,de		;6a58
	sbc a,c			;6a59
	dec (hl)		;6a5a
	ld e,(hl)		;6a5b
	ld (de),a		;6a5c
	di			;6a5d
	sub c			;6a5e
	add a,d			;6a5f
	adc a,e			;6a60
	ld (de),a		;6a61
	ld b,044h		;6a62
	ld de,0a113h		;6a64
	add a,h			;6a67
	ld sp,08811h		;6a68
	ld d,l			;6a6b
	ret p			;6a6c
	and h			;6a6d
	sbc a,c			;6a6e
	sbc a,h			;6a6f
	jp z,08565h		;6a70
	call po,0d8eeh		;6a73
	ei			;6a76
	sbc a,(hl)		;6a77
	rst 38h			;6a78
l6a79h:
	xor h			;6a79
	adc a,h			;6a7a
	ld l,(hl)		;6a7b
	ex (sp),hl		;6a7c
	rrca			;6a7d
	ld e,a			;6a7e
	ld h,l			;6a7f
	ei			;6a80
	ld sp,0880fh		;6a81
	ld e,a			;6a84
	cp c			;6a85
	call nc,0819ah		;6a86
l6a89h:
	push bc			;6a89
	ld a,(hl)		;6a8a
	ret			;6a8b
	ld (hl),l		;6a8c
	call po,05094h		;6a8d
	sbc a,a			;6a90
	ret p			;6a91
l6a92h:
	ld c,b			;6a92
	inc bc			;6a93
	inc bc			;6a94
	inc sp			;6a95
	cp e			;6a96
	cp e			;6a97
	jr nc,$+121		;6a98
	ld a,(bc)		;6a9a
	inc d			;6a9b
	add a,h			;6a9c
l6a9dh:
	rst 18h			;6a9d
	add a,d			;6a9e
	nop			;6a9f
	ret nz			;6aa0
	djnz l6a79h		;6aa1
	dec l			;6aa3
	pop hl			;6aa4
	ld c,d			;6aa5
	sbc a,l			;6aa6
	and h			;6aa7
	ld l,c			;6aa8
	ld bc,0edffh		;6aa9
	or 01ah			;6aac
	sub b			;6aae
	ld d,(hl)		;6aaf
	sub l			;6ab0
	ld d,d			;6ab1
l6ab2h:
	ei			;6ab2
	dec a			;6ab3
	ld (bc),a		;6ab4
	jp p,l7f21h+1		;6ab5
	inc de			;6ab8
	ld sp,l6ea0h		;6ab9
	add a,c			;6abc
	jp c,0c9a0h		;6abd
	and c			;6ac0
	xor c			;6ac1
	ld a,(bc)		;6ac2
	sub l			;6ac3
	ret			;6ac4
	dec e			;6ac5
	jr nz,l6aebh		;6ac6
	dec l			;6ac8
	add hl,bc		;6ac9
	ccf			;6aca
	pop hl			;6acb
	and h			;6acc
	adc a,c			;6acd
	or (hl)			;6ace
	ld bc,0067fh		;6acf
	cp b			;6ad2
	inc bc			;6ad3
	rrca			;6ad4
	sbc a,(hl)		;6ad5
	rst 38h			;6ad6
	dec sp			;6ad7
	rst 38h			;6ad8
	ld l,l			;6ad9
	nop			;6ada
	ld e,a			;6adb
	xor h			;6adc
	call c,0ffceh		;6add
	jr nc,$-119		;6ae0
	ld b,(hl)		;6ae2
	jr nc,l6ab2h		;6ae3
	ld c,023h		;6ae5
	djnz $-118		;6ae7
	and b			;6ae9
	ld e,c			;6aea
l6aebh:
	ld a,a			;6aeb
	dec sp			;6aec
	ld a,a			;6aed
	ld h,0b3h		;6aee
	cp 0fch			;6af0
	xor c			;6af2
	sub e			;6af3
	ld (hl),a		;6af4
	jr nc,l6afbh		;6af5
	ld bc,03285h		;6af7
	push hl			;6afa
l6afbh:
	sub b			;6afb
	add a,b			;6afc
	inc bc			;6afd
	adc a,h			;6afe
	sbc a,a			;6aff
	sbc a,d			;6b00
	rra			;6b01
	ret			;6b02
	adc a,h			;6b03
	sub d			;6b04
	or h			;6b05
	ld l,c			;6b06
	xor h			;6b07
	sbc a,d			;6b08
	ld c,c			;6b09
	or 026h			;6b0a
	or 025h			;6b0c
	sbc a,c			;6b0e
	dec d			;6b0f
	ld (hl),0bbh		;6b10
	ld h,(hl)		;6b12
	adc a,c			;6b13
	ld e,0a9h		;6b14
	xor c			;6b16
	ld (bc),a		;6b17
	adc a,a			;6b18
	ret			;6b19
	adc a,(hl)		;6b1a
	dec a			;6b1b
	sla l			;6b1c
	ld l,001h		;6b1e
	ccf			;6b20
	xor e			;6b21
	inc de			;6b22
	adc a,b			;6b23
	ld a,b			;6b24
	cpl			;6b25
	jp p,08884h		;6b26
	jp m,00feeh		;6b29
	out (0fah),a		;6b2c
	inc d			;6b2e
	ld (de),a		;6b2f
	sub (hl)		;6b30
	and 05fh		;6b31
	jp c,l66bah		;6b33
	ld d,l			;6b36
	rst 38h			;6b37
	jp po,0c220h		;6b38
	jp z,092c0h		;6b3b
	ld hl,034dfh		;6b3e
	add hl,de		;6b41
	rra			;6b42
	nop			;6b43
	inc sp			;6b44
	adc a,(hl)		;6b45
	ld a,(hl)		;6b46
	or b			;6b47
	add hl,bc		;6b48
	and h			;6b49
	call 08ca4h		;6b4a
	add hl,de		;6b4d
	sbc a,h			;6b4e
	inc b			;6b4f
	call nz,08ac1h		;6b50
	cp l			;6b53
	xor (hl)		;6b54
l6b55h:
	ld b,b			;6b55
	ld c,c			;6b56
	sub c			;6b57
	sub h			;6b58
	ld c,b			;6b59
	cp c			;6b5a
	or d			;6b5b
	ret			;6b5c
	xor a			;6b5d
	and h			;6b5e
	defb 0edh ;next byte illegal after ed	;6b5f
	and 0efh		;6b60
	and a			;6b62
	sub e			;6b63
	xor l			;6b64
	ld l,h			;6b65
	ld a,a			;6b66
	ld l,d			;6b67
	or a			;6b68
	add hl,hl		;6b69
	ld (de),a		;6b6a
	and (hl)		;6b6b
	ld e,c			;6b6c
	ld (09aa6h),a		;6b6d
	xor d			;6b70
	sbc a,b			;6b71
	ld a,l			;6b72
	ld bc,0d5f5h		;6b73
	or l			;6b76
	add hl,sp		;6b77
	call po,sub_481bh	;6b78
	ld l,b			;6b7b
	and 014h		;6b7c
	add a,e			;6b7e
	or b			;6b7f
	ld c,h			;6b80
	ex (sp),hl		;6b81
	rrca			;6b82
	ld d,h			;6b83
	dec h			;6b84
	sub l			;6b85
	inc hl			;6b86
	add a,b			;6b87
	dec (hl)		;6b88
	add hl,bc		;6b89
	ld b,h			;6b8a
	ret c			;6b8b
	ld l,c			;6b8c
	cp h			;6b8d
	adc a,c			;6b8e
	rst 38h			;6b8f
	dec hl			;6b90
	call m,0e237h		;6b91
	call nc,sub_48e9h	;6b94
	ld l,a			;6b97
	sbc a,b			;6b98
	inc hl			;6b99
	sbc a,b			;6b9a
	ld hl,03351h		;6b9b
	nop			;6b9e
	call p,0ea4ah		;6b9f
	ld c,d			;6ba2
	xor c			;6ba3
	halt			;6ba4
	cp d			;6ba5
	ld d,(hl)		;6ba6
	cp c			;6ba7
	sbc a,0bdh		;6ba8
	ld (hl),c		;6baa
	ccf			;6bab
	ld a,(bc)		;6bac
	ld (0f640h),hl		;6bad
	call nc,0cb8dh		;6bb0
	ld h,b			;6bb3
	rst 28h			;6bb4
	ret			;6bb5
	cp 0d9h			;6bb6
	rst 30h			;6bb8
	ld c,(hl)		;6bb9
	cp 04ah			;6bba
	ld b,0a4h		;6bbc
	or e			;6bbe
	and h			;6bbf
	sub d			;6bc0
	adc a,d			;6bc1
	ld (0319ah),a		;6bc2
	jr nz,l6b55h		;6bc5
	jr c,l6bd2h		;6bc7
	xor l			;6bc9
	ld sp,l6ff5h		;6bca
	call po,0880eh		;6bcd
	ld c,c			;6bd0
	ccf			;6bd1
l6bd2h:
	sbc a,a			;6bd2
	call nz,0024fh		;6bd3
	inc bc			;6bd6
	ld a,l			;6bd7
	jp nc,0ffffh		;6bd8
	or d			;6bdb
	ld a,(hl)		;6bdc
	xor l			;6bdd
	dec sp			;6bde
	adc a,c			;6bdf
	ld e,c			;6be0
	sub c			;6be1
	adc a,e			;6be2
	sbc a,e			;6be3
	adc a,h			;6be4
	sub d			;6be5
	add a,b			;6be6
	ld c,d			;6be7
	in a,(05eh)		;6be8
	or l			;6bea
	add hl,hl		;6beb
	ld c,h			;6bec
	or l			;6bed
	scf			;6bee
	xor a			;6bef
	sbc a,b			;6bf0
	or e			;6bf1
	xor a			;6bf2
	call nz,08452h		;6bf3
	rrca			;6bf6
	sub b			;6bf7
	call p,01f28h		;6bf8
	ld de,0dc20h		;6bfb
	sub c			;6bfe
l6bffh:
	ld (hl),d		;6bff
	jr nz,$-110		;6c00
	xor l			;6c02
	inc hl			;6c03
	sub l			;6c04
	ld hl,(09b6fh)		;6c05
	sub d			;6c08
	inc hl			;6c09
	cp l			;6c0a
	sbc a,c			;6c0b
	ret nz			;6c0c
	cp e			;6c0d
	xor e			;6c0e
	sub h			;6c0f
	sub l			;6c10
	ld d,l			;6c11
	dec e			;6c12
	sub e			;6c13
	or a			;6c14
	call 0e9b2h		;6c15
	sub a			;6c18
	add a,d			;6c19
	sub l			;6c1a
	ld sp,hl		;6c1b
	ld (hl),e		;6c1c
	ccf			;6c1d
	rst 38h			;6c1e
	add hl,sp		;6c1f
	ld c,a			;6c20
	defb 0edh ;next byte illegal after ed	;6c21
	or 049h			;6c22
	cp a			;6c24
	ret			;6c25
	rst 38h			;6c26
	jr l6c49h		;6c27
	defb 0fdh,0e0h,0a2h ;illegal sequence	;6c29
	ld (hl),e		;6c2c
	ld a,a			;6c2d
	add hl,de		;6c2e
	sub c			;6c2f
	inc bc			;6c30
	ld e,(hl)		;6c31
	nop			;6c32
	ld (de),a		;6c33
	adc a,e			;6c34
	sub d			;6c35
	ret nz			;6c36
	ld (hl),d		;6c37
	xor a			;6c38
	ld l,a			;6c39
	xor a			;6c3a
	add a,h			;6c3b
	or l			;6c3c
	ld d,e			;6c3d
l6c3eh:
	adc a,c			;6c3e
	sub c			;6c3f
	or (hl)			;6c40
	adc a,h			;6c41
	sub d			;6c42
	ld h,c			;6c43
	cp h			;6c44
	sub c			;6c45
	and d			;6c46
	rst 20h			;6c47
	add a,a			;6c48
l6c49h:
	ld (hl),024h		;6c49
	sub d			;6c4b
	or 0feh			;6c4c
	inc sp			;6c4e
	sbc a,h			;6c4f
	ld (de),a		;6c50
	cp 02ch			;6c51
	adc a,b			;6c53
	ld c,d			;6c54
	and a			;6c55
	cp e			;6c56
	xor e			;6c57
	ld l,c			;6c58
	add a,l			;6c59
	add hl,hl		;6c5a
	sla h			;6c5b
	call z,0192fh		;6c5d
	add hl,hl		;6c60
	jr c,l6ca2h		;6c61
	dec hl			;6c63
	jp c,04f67h		;6c64
	jp c,0f6b7h		;6c67
	rst 38h			;6c6a
	ld (hl),0b8h		;6c6b
	ld d,d			;6c6d
	res 2,d			;6c6e
	add a,l			;6c70
	jp p,0b1c9h		;6c71
	add a,d			;6c74
	jp (hl)			;6c75
	adc a,c			;6c76
	adc a,0b2h		;6c77
	djnz l6c3eh		;6c79
	ld (hl),d		;6c7b
	inc de			;6c7c
	adc a,(hl)		;6c7d
	xor e			;6c7e
	inc e			;6c7f
	ld c,c			;6c80
	rst 8			;6c81
	or a			;6c82
l6c83h:
	call nc,0b093h		;6c83
	sub e			;6c86
	and a			;6c87
	adc a,e			;6c88
	ld (bc),a		;6c89
	rst 20h			;6c8a
	ld c,c			;6c8b
	xor l			;6c8c
	cpl			;6c8d
	inc b			;6c8e
	push af			;6c8f
	ld e,d			;6c90
	ld a,a			;6c91
	ei			;6c92
	pop af			;6c93
	djnz $+1		;6c94
	adc a,e			;6c96
	ld l,091h		;6c97
	add a,(hl)		;6c99
	ld b,l			;6c9a
	add a,c			;6c9b
	xor e			;6c9c
	call m,0c972h		;6c9d
	ld d,(hl)		;6ca0
	add a,a			;6ca1
l6ca2h:
	ld d,a			;6ca2
	inc h			;6ca3
	jp nc,03f9ch		;6ca4
	inc a			;6ca7
	adc a,c			;6ca8
	ccf			;6ca9
	ld a,l			;6caa
	ld c,a			;6cab
	push hl			;6cac
	xor b			;6cad
	dec sp			;6cae
	ret m			;6caf
	ld a,(0cf7fh)		;6cb0
	inc bc			;6cb3
	adc a,0ceh		;6cb4
	call 0d3cdh		;6cb6
	call z,0b47dh		;6cb9
	sbc a,05bh		;6cbc
	ld (bc),a		;6cbe
	and l			;6cbf
	dec bc			;6cc0
	ld c,b			;6cc1
	or h			;6cc2
	ld h,(hl)		;6cc3
	add a,h			;6cc4
	xor c			;6cc5
	ld a,010h		;6cc6
	pop af			;6cc8
	add hl,hl		;6cc9
	adc a,b			;6cca
	jp m,0f510h		;6ccb
	or 065h			;6cce
	ld de,0887dh		;6cd0
	call pe,0eeb9h		;6cd3
	jr c,l6d3ah		;6cd6
	add a,e			;6cd8
	ld l,a			;6cd9
	jp 0d217h		;6cda
	xor a			;6cdd
	ld bc,0cacdh		;6cde
	sbc a,(hl)		;6ce1
	ld e,l			;6ce2
	ccf			;6ce3
	xor d			;6ce4
	ld l,c			;6ce5
	inc bc			;6ce6
	push de			;6ce7
	in a,(03fh)		;6ce8
	sbc a,c			;6cea
	ld c,a			;6ceb
	ld c,a			;6cec
	ld a,c			;6ced
	call p,08249h		;6cee
	and e			;6cf1
	rst 38h			;6cf2
	ld h,a			;6cf3
	di			;6cf4
	dec de			;6cf5
l6cf6h:
	nop			;6cf6
	ld c,c			;6cf7
	jp z,0d829h		;6cf8
	ld l,c			;6cfb
	call p,sub_49b9h	;6cfc
l6cffh:
	dec hl			;6cff
	ld (012deh),hl		;6d00
	adc a,c			;6d03
	xor e			;6d04
	sbc a,l			;6d05
	cpl			;6d06
	inc sp			;6d07
	adc a,b			;6d08
	bit 3,d			;6d09
	ld bc,0b6ech		;6d0b
	ld e,d			;6d0e
	adc a,a			;6d0f
	ret p			;6d10
	djnz l6cf6h		;6d11
	ld a,e			;6d13
	rst 30h			;6d14
	ret m			;6d15
	sub c			;6d16
	inc sp			;6d17
	ld bc,0b190h		;6d18
	call 02127h		;6d1b
	add a,072h		;6d1e
	dec de			;6d20
	sub a			;6d21
	ld d,a			;6d22
	ld b,a			;6d23
	ld a,d			;6d24
	ccf			;6d25
	and h			;6d26
	jp (hl)			;6d27
	sbc a,h			;6d28
	jp m,08bd5h		;6d29
	or 04fh			;6d2c
	adc a,h			;6d2e
sub_6d2fh:
	xor l			;6d2f
	call c,0e4c3h		;6d30
	rst 38h			;6d33
	sub h			;6d34
	add a,066h		;6d35
	inc bc			;6d37
	ex (sp),hl		;6d38
	ld h,e			;6d39
l6d3ah:
	ld (hl),022h		;6d3a
	ld a,e			;6d3c
	ld (hl),d		;6d3d
	ccf			;6d3e
	sub d			;6d3f
	defb 0edh ;next byte illegal after ed	;6d40
	exx			;6d41
	res 5,b			;6d42
	inc hl			;6d44
	xor a			;6d45
	sbc a,c			;6d46
	xor d			;6d47
	inc e			;6d48
	adc a,b			;6d49
	cpl			;6d4a
	call po,0f672h		;6d4b
	call po,sub_64feh	;6d4e
	ld sp,hl		;6d51
	ld h,(hl)		;6d52
	inc c			;6d53
	ld a,a			;6d54
	rst 30h			;6d55
l6d56h:
	ld c,e			;6d56
	djnz l6d56h		;6d57
	or d			;6d59
	ld b,(hl)		;6d5a
	cp c			;6d5b
	ld c,d			;6d5c
	dec (hl)		;6d5d
	sub (hl)		;6d5e
	sub e			;6d5f
	ld c,e			;6d60
	ld (0a344h),a		;6d61
	inc sp			;6d64
	ld b,a			;6d65
	dec sp			;6d66
	ccf			;6d67
	ld c,d			;6d68
	call z,0e7f9h		;6d69
	ccf			;6d6c
	ld c,a			;6d6d
	pop bc			;6d6e
	push af			;6d6f
	inc l			;6d70
	ld h,d			;6d71
	ld a,a			;6d72
	inc hl			;6d73
	ld d,h			;6d74
	xor h			;6d75
	jp z,0cfbch		;6d76
	sbc a,h			;6d79
	add a,b			;6d7a
	rst 8			;6d7b
	scf			;6d7c
	ex de,hl		;6d7d
	ld d,l			;6d7e
	ld (de),a		;6d7f
	defb 0ddh,0a4h ;and ixh	;6d80
	and l			;6d82
	and (hl)		;6d83
	ld hl,(09437h)		;6d84
	or h			;6d87
	adc a,h			;6d88
	bit 3,d			;6d89
	and h			;6d8b
	ret c			;6d8c
	cp 0c9h			;6d8d
	sbc a,a			;6d8f
	ld c,e			;6d90
	jp po,084dch		;6d91
	cp a			;6d94
l6d95h:
	rst 30h			;6d95
	xor h			;6d96
	add hl,hl		;6d97
	adc a,l			;6d98
	add a,h			;6d99
	ld e,c			;6d9a
l6d9bh:
	ld hl,084cbh		;6d9b
	dec sp			;6d9e
	ld a,(hl)		;6d9f
	sub d			;6da0
	adc a,c			;6da1
	sbc a,h			;6da2
	ld b,a			;6da3
	ld l,h			;6da4
	ccf			;6da5
	rst 38h			;6da6
	and h			;6da7
	ccf			;6da8
	ret z			;6da9
	ld (hl),c		;6daa
	add a,h			;6dab
	ccf			;6dac
	ld c,a			;6dad
	rst 28h			;6dae
	rst 30h			;6daf
	call sub_6ed7h		;6db0
	ld c,e			;6db3
	call z,05d33h		;6db4
	ld e,c			;6db7
	adc a,d			;6db8
	push bc			;6db9
	add hl,sp		;6dba
	cp h			;6dbb
	dec hl			;6dbc
	ld c,c			;6dbd
	ld h,012h		;6dbe
	cp h			;6dc0
	or e			;6dc1
	xor a			;6dc2
	or h			;6dc3
	ld (l52beh),a		;6dc4
	ret nz			;6dc7
	scf			;6dc8
	sub 065h		;6dc9
	ld (bc),a		;6dcb
	ret po			;6dcc
	ld h,(hl)		;6dcd
	ld e,d			;6dce
	ld h,l			;6dcf
	inc b			;6dd0
	jp p,0fa27h		;6dd1
	and a			;6dd4
	rst 30h			;6dd5
	call p,0dc12h		;6dd6
	and a			;6dd9
	call m,099c7h		;6dda
	ld a,(00501h)		;6ddd
	ld b,e			;6de0
	add a,088h		;6de1
	ld h,047h		;6de3
	pop af			;6de5
	ccf			;6de6
	ld sp,hl		;6de7
	cp e			;6de8
	sub h			;6de9
	out (089h),a		;6dea
	ccf			;6dec
	ld a,l			;6ded
	ld c,a			;6dee
	call m,0257fh		;6def
	out (02ah),a		;6df2
	ret c			;6df4
	exx			;6df5
	ld (hl),e		;6df6
	jp 000e1h		;6df7
	dec bc			;6dfa
	ld h,d			;6dfb
	call z,sub_5ad8h	;6dfc
	inc a			;6dff
	add a,h			;6e00
	ld (hl),c		;6e01
	ld c,b			;6e02
l6e03h:
	cpl			;6e03
	or h			;6e04
	xor e			;6e05
	adc a,a			;6e06
	ld (hl),l		;6e07
	sub h			;6e08
	dec de			;6e09
	jp p,0dfb6h		;6e0a
	ld d,(hl)		;6e0d
	sbc a,065h		;6e0e
	ld h,a			;6e10
	and c			;6e11
	ld e,a			;6e12
	rst 30h			;6e13
	defb 0ddh,0f0h,066h ;illegal sequence	;6e14
	and c			;6e17
	call po,04db4h		;6e18
	jr nz,l6e96h		;6e1b
	jp z,0bb43h		;6e1d
	add hl,hl		;6e20
	sub h			;6e21
	inc sp			;6e22
	ld b,a			;6e23
	ccf			;6e24
	cp e			;6e25
	ld sp,hl		;6e26
	xor (hl)		;6e27
	cp c			;6e28
	rst 18h			;6e29
	ccf			;6e2a
	ld c,a			;6e2b
	ld a,(hl)		;6e2c
	ld a,a			;6e2d
	call po,0dcf7h		;6e2e
	ex (sp),hl		;6e31
	jp z,0f330h		;6e32
	add a,021h		;6e35
	defb 0edh ;next byte illegal after ed	;6e37
	xor 0dah		;6e38
	dec l			;6e3a
	sub e			;6e3b
	ld h,c			;6e3c
	djnz l6e03h		;6e3d
	or b			;6e3f
	adc a,c			;6e40
	ld (bc),a		;6e41
	sbc a,c			;6e42
	dec l			;6e43
	xor (hl)		;6e44
	jr l6e90h		;6e45
	or c			;6e47
	cp e			;6e48
	ld (0b9f2h),hl		;6e49
	and 019h		;6e4c
	rst 28h			;6e4e
	ld l,e			;6e4f
	ld a,(hl)		;6e50
	adc a,a			;6e51
	djnz $-7		;6e52
	defb 0edh ;next byte illegal after ed	;6e54
	inc sp			;6e55
	sub c			;6e56
	ld c,c			;6e57
	xor l			;6e58
	ld c,c			;6e59
	adc a,e			;6e5a
	xor e			;6e5b
	jr nz,l6ecbh		;6e5c
	ld b,e			;6e5e
	jp z,0a7d1h		;6e5f
	sub l			;6e62
	pop de			;6e63
	sbc a,l			;6e64
	ccf			;6e65
	ld sp,hl		;6e66
	add a,l			;6e67
	di			;6e68
	cp e			;6e69
	ccf			;6e6a
	ld a,e			;6e6b
	ld c,a			;6e6c
	rst 30h			;6e6d
	ld a,a			;6e6e
	cp b			;6e6f
	adc a,c			;6e70
	ld e,b			;6e71
	sbc a,b			;6e72
	ld (bc),a		;6e73
	ld bc,005d9h		;6e74
	defb 0ddh,05ch ;ld e,ixh	;6e77
	dec bc			;6e79
	call 0a706h		;6e7a
	ld e,a			;6e7d
	rst 8			;6e7e
	ld c,h			;6e7f
	dec l			;6e80
	call po,sub_55afh	;6e81
	ld c,b			;6e84
	ld (bc),a		;6e85
	call nc,08e7dh		;6e86
	ret po			;6e89
	ld a,e			;6e8a
	ld l,h			;6e8b
	ld (0e810h),hl		;6e8c
	xor h			;6e8f
l6e90h:
	cp d			;6e90
	cp 0f7h			;6e91
	sub e			;6e93
	inc hl			;6e94
	cp d			;6e95
l6e96h:
	jp nz,09a21h		;6e96
	sub a			;6e99
	ret			;6e9a
	ld d,e			;6e9b
	ld b,e			;6e9c
	ld sp,03186h		;6e9d
l6ea0h:
	nop			;6ea0
	ld (bc),a		;6ea1
	ccf			;6ea2
	push de			;6ea3
	ld a,c			;6ea4
	add iy,sp		;6ea5
	ld (hl),l		;6ea7
	ld h,a			;6ea8
	ccf			;6ea9
	ld c,a			;6eaa
	cp a			;6eab
	nop			;6eac
	rst 38h			;6ead
	call m,sub_5000h	;6eae
	nop			;6eb1
	nop			;6eb2
	nop			;6eb3
	ld c,b			;6eb4
	adc a,c			;6eb5
	sub h			;6eb6
	add hl,de		;6eb7
	ld de,02711h		;6eb8
	halt			;6ebb
	ld bc,01372h		;6ebc
	inc e			;6ebf
	ld h,066h		;6ec0
	ld hl,00011h		;6ec2
	nop			;6ec5
	rla			;6ec6
	ld de,03273h		;6ec7
	ld (hl),a		;6eca
l6ecbh:
	ld (08027h),hl		;6ecb
	rlca			;6ece
	ld (hl),c		;6ecf
	inc e			;6ed0
	rla			;6ed1
	pop bc			;6ed2
	ld (hl),d		;6ed3
	ld (01fc0h),a		;6ed4
sub_6ed7h:
	ld b,h			;6ed7
	ld b,h			;6ed8
	adc a,c			;6ed9
	sbc a,c			;6eda
	nop			;6edb
	adc a,b			;6edc
	adc a,b			;6edd
	adc a,c			;6ede
	adc a,b			;6edf
	sbc a,c			;6ee0
	ld c,h			;6ee1
	ld b,h			;6ee2
	ld c,b			;6ee3
	ld sp,00099h		;6ee4
	nop			;6ee7
	rst 38h			;6ee8
	inc b			;6ee9
	cp d			;6eea
	nop			;6eeb
	sbc a,c			;6eec
	cp 000h			;6eed
	dec b			;6eef
	sbc a,b			;6ef0
	ld d,l			;6ef1
	nop			;6ef2
	ld c,h			;6ef3
	ld (de),a		;6ef4
	ld de,0751ch		;6ef5
	ld l,h			;6ef8
	ld de,02100h		;6ef9
	inc de			;6efc
	ld h,062h		;6efd
	ld hl,01212h		;6eff
	ld (0c22ah),hl		;6f02
	inc hl			;6f05
	ld a,a			;6f06
	ld (bc),a		;6f07
	ld a,a			;6f08
	inc bc			;6f09
	ld (hl),a		;6f0a
	inc a			;6f0b
	ld a,h			;6f0c
	ld a,h			;6f0d
	rst 0			;6f0e
	ld hl,l611fh		;6f0f
	ld (hl),a		;6f12
	adc a,c			;6f13
	sbc a,b			;6f14
	adc a,b			;6f15
	ld a,(hl)		;6f16
	ex af,af'		;6f17
	sub h			;6f18
	call z,085c4h		;6f19
	cp b			;6f1c
	ld a,a			;6f1d
	rlca			;6f1e
	rst 38h			;6f1f
	di			;6f20
	nop			;6f21
	rrca			;6f22
	rst 38h			;6f23
	ld a,a			;6f24
	ret p			;6f25
	and c			;6f26
	sbc a,c			;6f27
	sbc a,h			;6f28
	call z,0f61ch		;6f29
	djnz $-50		;6f2c
	ld (hl),l		;6f2e
	ld d,a			;6f2f
	nop			;6f30
	rst 0			;6f31
	ld (de),a		;6f32
	jp l6612h		;6f33
	inc sp			;6f36
	ld (00023h),hl		;6f37
	ld (033cbh),hl		;6f3a
	ld (02317h),a		;6f3d
	inc sp			;6f40
	ld (hl),a		;6f41
	ld bc,02717h		;6f42
	inc l			;6f45
	ld sp,011c7h		;6f46
	sbc a,c			;6f49
	ld (hl),l		;6f4a
	xor b			;6f4b
l6f4ch:
	call nz,0ccf7h		;6f4c
	nop			;6f4f
	ld d,(hl)		;6f50
	ld c,h			;6f51
	rlca			;6f52
	ex af,af'		;6f53
	ld a,a			;6f54
	add a,c			;6f55
	di			;6f56
	inc sp			;6f57
	inc sp			;6f58
	rst 38h			;6f59
	inc sp			;6f5a
	ret p			;6f5b
	ld a,a			;6f5c
	call m,0892ah		;6f5d
	ld d,l			;6f60
	ld b,h			;6f61
	inc e			;6f62
	cp 0c7h			;6f63
	nop			;6f65
	halt			;6f66
	ld d,(hl)		;6f67
	rst 0			;6f68
	inc de			;6f69
	ld h,e			;6f6a
	ld sp,01126h		;6f6b
	add a,b			;6f6e
	ld a,b			;6f6f
	daa			;6f70
	ld a,h			;6f71
	call z,01721h		;6f72
l6f75h:
	dec hl			;6f75
	add a,b			;6f76
	ld b,077h		;6f77
	ld de,02177h		;6f79
	rst 0			;6f7c
	ret			;6f7d
	jp c,l751fh		;6f7e
	halt			;6f81
	sub h			;6f82
sub_6f83h:
	add a,b			;6f83
	sub e			;6f84
	ld a,a			;6f85
	call z,sub_4107h	;6f86
	ld (hl),l		;6f89
	add hl,de		;6f8a
	rrca			;6f8b
	ld a,a			;6f8c
	add a,c			;6f8d
	add hl,de		;6f8e
	ld a,a			;6f8f
	call m,04432h		;6f90
	rst 38h			;6f93
	jr nz,l6fb2h		;6f94
	pop bc			;6f96
	rst 0			;6f97
l6f98h:
	ld h,(hl)		;6f98
	ld (bc),a		;6f99
	ld d,(hl)		;6f9a
	call z,03672h		;6f9b
	scf			;6f9e
	halt			;6f9f
	cp 046h			;6fa0
	dec sp			;6fa2
	ld a,a			;6fa3
	jr z,$-55		;6fa4
	add a,c			;6fa6
	ld c,l			;6fa7
	ld (09683h),hl		;6fa8
	ld b,h			;6fab
	ld d,061h		;6fac
	ld c,l			;6fae
l6fafh:
	add hl,de		;6faf
	ld a,a			;6fb0
	ld b,h			;6fb1
l6fb2h:
	ld a,a			;6fb2
	inc d			;6fb3
	adc a,b			;6fb4
	add a,h			;6fb5
	ld b,h			;6fb6
	adc a,b			;6fb7
	inc h			;6fb8
	add a,h			;6fb9
	ex af,af'		;6fba
	adc a,b			;6fbb
	cp 0a8h			;6fbc
	inc sp			;6fbe
	xor 0eeh		;6fbf
	add a,h			;6fc1
	ld a,a			;6fc2
l6fc3h:
	ccf			;6fc3
	rst 38h			;6fc4
	ret p			;6fc5
	rst 38h			;6fc6
	rst 38h			;6fc7
	add hl,bc		;6fc8
	rst 38h			;6fc9
	jr l6f98h		;6fca
	nop			;6fcc
	add hl,de		;6fcd
	sbc a,h			;6fce
	halt			;6fcf
	ld d,l			;6fd0
	ld a,h			;6fd1
	ld (hl),l		;6fd2
sub_6fd3h:
	ld (05052h),hl		;6fd3
	ld h,0f3h		;6fd6
	inc hl			;6fd8
	ld c,h			;6fd9
	daa			;6fda
	adc a,h			;6fdb
	ld de,08588h		;6fdc
	dec sp			;6fdf
	ld (l712bh),a		;6fe0
	add hl,de		;6fe3
	adc a,e			;6fe4
	inc c			;6fe5
	ld l,h			;6fe6
	ret			;6fe7
	rra			;6fe8
	jp nc,0947fh		;6fe9
	ld c,h			;6fec
	ld a,d			;6fed
	inc b			;6fee
	sbc a,b			;6fef
	call nz,08184h		;6ff0
	add a,c			;6ff3
	ret m			;6ff4
l6ff5h:
	ret po			;6ff5
	di			;6ff6
	ld a,0eeh		;6ff7
	ld b,(hl)		;6ff9
l6ffah:
	ex de,hl		;6ffa
	add a,c			;6ffb
	rst 38h			;6ffc
	ld a,a			;6ffd
	dec bc			;6ffe
l6fffh:
	rst 38h			;6fff
	ld d,000h		;7000
	nop			;7002
	sbc a,h			;7003
	ld (hl),a		;7004
	ld d,l			;7005
	ld l,h			;7006
	ld (hl),l		;7007
	ld d,d			;7008
	dec (hl)		;7009
	adc a,d			;700a
	ld a,a			;700b
	pop bc			;700c
	jp 0d0f9h		;700d
	ld (hl),a		;7010
	inc sp			;7011
l7012h:
	or e			;7012
	scf			;7013
	add hl,bc		;7014
	add hl,de		;7015
	ld (hl),a		;7016
	ld a,h			;7017
	jp nz,09497h		;7018
	add hl,de		;701b
	ld a,a			;701c
	rst 38h			;701d
	pop de			;701e
	or 081h			;701f
	sbc a,h			;7021
	call nz,sub_4448h	;7022
	adc a,d			;7025
	jr nz,l7070h		;7026
	add hl,de		;7028
	inc sp			;7029
	sub l			;702a
	call m,sub_7c8fh	;702b
	cp e			;702e
	cp (hl)			;702f
	ld a,a			;7030
	pop hl			;7031
	jp l4499h		;7032
	call nz,sub_7f41h	;7035
	inc hl			;7038
	rst 38h			;7039
	ld de,0fe77h		;703a
	ld (bc),a		;703d
	ld h,(hl)		;703e
	ld l,h			;703f
	inc e			;7040
	add a,02ch		;7041
	cp 045h			;7043
	ld (l48fbh),hl		;7045
	ld (hl),a		;7048
	cp 080h			;7049
	ld (023cch),hl		;704b
	add hl,de		;704e
	rst 0			;704f
	pop bc			;7050
	ret			;7051
	rra			;7052
	cp 0dah			;7053
	ld a,a			;7055
	dec b			;7056
	ld b,h			;7057
	ld c,c			;7058
	xor e			;7059
	inc de			;705a
	inc hl			;705b
	ld hl,0fd00h		;705c
	ld d,b			;705f
	cp e			;7060
	nop			;7061
	cp (hl)			;7062
	ld a,0e3h		;7063
	cp 07fh			;7065
	djnz $-117		;7067
	add a,h			;7069
	and b			;706a
	out (076h),a		;706b
	ld a,h			;706d
	adc a,h			;706e
	rst 38h			;706f
l7070h:
	or b			;7070
	ex de,hl		;7071
	ld (hl),l		;7072
	ld d,l			;7073
	or c			;7074
l7075h:
	ld a,a			;7075
	ld a,h			;7076
	inc e			;7077
	ld (bc),a		;7078
	inc d			;7079
	ld (hl),c		;707a
	ld de,005fdh		;707b
	ld (hl),d		;707e
l707fh:
	or a			;707f
	ld (08033h),hl		;7080
	ld h,l			;7083
	rra			;7084
	defb 0fdh,03bh,0fah ;illegal sequence	;7085
	ld (de),a		;7088
	call z,05084h		;7089
	sbc a,c			;708c
	add a,c			;708d
	inc h			;708e
	or d			;708f
	ld de,l6cffh		;7090
	ld a,07eh		;7093
	nop			;7095
	ex de,hl		;7096
	cp 07fh			;7097
	ld d,0d9h		;7099
	ld h,c			;709b
	adc a,b			;709c
	ld b,c			;709d
	ld h,l			;709e
	ld a,a			;709f
	ld hl,003c7h		;70a0
	call z,l7677h		;70a3
	add a,b			;70a6
	jr nz,l7075h		;70a7
	ld (hl),c		;70a9
	jp nz,02149h		;70aa
	adc a,(hl)		;70ad
	adc a,e			;70ae
	ld (de),a		;70af
	ld (hl),c		;70b0
	add a,d			;70b1
	add a,d			;70b2
	cp e			;70b3
	inc sp			;70b4
	add a,e			;70b5
	xor d			;70b6
	add hl,bc		;70b7
	ld sp,hl		;70b8
	ret z			;70b9
	add a,b			;70ba
	xor a			;70bb
	ei			;70bc
	add hl,hl		;70bd
	add a,e			;70be
	ld h,(hl)		;70bf
	add a,b			;70c0
	ld e,01bh		;70c1
	ld hl,l7f21h		;70c3
	inc bc			;70c6
	cp e			;70c7
	ex (sp),hl		;70c8
	ccf			;70c9
	ld a,a			;70ca
	ret m			;70cb
	inc a			;70cc
	ld e,h			;70cd
	ld b,l			;70ce
	adc a,h			;70cf
	ei			;70d0
	add a,h			;70d1
	add a,b			;70d2
	ld h,(hl)		;70d3
	ld a,h			;70d4
	sbc a,c			;70d5
	sub c			;70d6
	add a,b			;70d7
	ld h,l			;70d8
	ld a,a			;70d9
	ld c,h			;70da
	nop			;70db
	inc sp			;70dc
	ld a,a			;70dd
	inc l			;70de
	jp l7f21h		;70df
	adc a,e			;70e2
	inc bc			;70e3
	ld a,c			;70e4
	ld de,l797ch		;70e5
	ei			;70e8
	ld sp,08499h		;70e9
	adc a,h			;70ec
	ld b,(hl)		;70ed
	add a,c			;70ee
	ld b,(hl)		;70ef
	cp 012h			;70f0
	ld (de),a		;70f2
	rrca			;70f3
	rst 38h			;70f4
	ccf			;70f5
	cp e			;70f6
	ld a,a			;70f7
	adc a,e			;70f8
	sub h			;70f9
	in a,(046h)		;70fa
	sub a			;70fc
	ld a,a			;70fd
	sub a			;70fe
	ld (hl),a		;70ff
	ld a,a			;7100
	add a,b			;7101
	ld (hl),a		;7102
	ld h,d			;7103
	ld h,0cch		;7104
	pop bc			;7106
	inc e			;7107
	jp 02208h		;7108
	ld (hl),a		;710b
	ld l,h			;710c
	jp 0cbffh		;710d
	add a,c			;7110
	ld a,(bc)		;7111
	sbc a,c			;7112
	rla			;7113
	add a,l			;7114
	inc de			;7115
	ld c,b			;7116
	add a,b			;7117
	or (hl)			;7118
	jp m,l7e69h		;7119
	ld b,h			;711c
	adc a,e			;711d
	xor b			;711e
	sub c			;711f
	ld (0fdf3h),hl		;7120
	ld b,a			;7123
	ld a,a			;7124
	ld c,d			;7125
	xor 080h		;7126
	cp a			;7128
	ld a,a			;7129
	add a,d			;712a
l712bh:
	ld h,b			;712b
	add a,h			;712c
	exx			;712d
	push bc			;712e
	sbc a,h			;712f
	ei			;7130
	ex af,af'		;7131
	ld a,h			;7132
	ld h,l			;7133
	ld (hl),a		;7134
	ret			;7135
	rst 30h			;7136
	sub c			;7137
	halt			;7138
	add a,l			;7139
	ld e,c			;713a
	call m,07582h		;713b
	add a,d			;713e
	ld b,(hl)		;713f
	sub c			;7140
	ld de,l5282h		;7141
	ld (iy-07ah),c		;7144
	ld a,a			;7147
	ld d,a			;7148
	rra			;7149
	add a,b			;714a
	sub e			;714b
	and h			;714c
	ld h,l			;714d
	inc bc			;714e
	xor b			;714f
	ld b,013h		;7150
	ld de,0119fh		;7152
	cp 04bh			;7155
	cp 055h			;7157
	add a,c			;7159
	ccf			;715a
	ex (sp),hl		;715b
	ld a,a			;715c
	add a,e			;715d
	ld b,l			;715e
	adc a,b			;715f
	add a,c			;7160
	ld a,a			;7161
	ld (de),a		;7162
	ld (hl),c		;7163
	sub a			;7164
	rst 38h			;7165
	ld hl,(07e67h)		;7166
	ld sp,hl		;7169
	inc d			;716a
	ld d,d			;716b
	ld b,080h		;716c
	add a,b			;716e
	jp nz,l7c32h		;716f
	add hl,de		;7172
	add hl,de		;7173
	ld (hl),c		;7174
	sub c			;7175
	add a,d			;7176
	adc a,e			;7177
	and b			;7178
	inc sp			;7179
	scf			;717a
	ld de,08847h		;717b
	jp m,08411h		;717e
	jp 09488h		;7181
	adc a,d			;7184
	ld a,a			;7185
	cp 07ch			;7186
l7188h:
	cpl			;7188
	add a,d			;7189
	ex af,af'		;718a
	ccf			;718b
	sbc a,c			;718c
	add a,b			;718d
	cp 00dh			;718e
	ret z			;7190
	ei			;7191
	or b			;7192
	ld (hl),c		;7193
	sbc a,h			;7194
	ld a,h			;7195
	ld h,(hl)		;7196
	add a,0f6h		;7197
	inc l			;7199
	rst 0			;719a
	add a,l			;719b
	and l			;719c
	nop			;719d
	rlca			;719e
	call z,058f8h		;719f
	call m,sub_7385h	;71a2
	inc sp			;71a5
	add a,b			;71a6
	ld d,e			;71a7
	add a,e			;71a8
	ld (09e11h),hl		;71a9
	or (hl)			;71ac
	rst 38h			;71ad
	jr z,$-90		;71ae
	add a,h			;71b0
	dec b			;71b1
	ld b,d			;71b2
	ld sp,08012h		;71b3
	sub 0ffh		;71b6
	sub d			;71b8
	rst 38h			;71b9
	ret po			;71ba
	ex (sp),hl		;71bb
	or a			;71bc
	rst 38h			;71bd
	ret po			;71be
	ret z			;71bf
	adc a,h			;71c0
	ld c,h			;71c1
	ld a,a			;71c2
	call z,sub_5697h	;71c3
	ld l,h			;71c6
	di			;71c7
	ld de,l67c6h		;71c8
	add a,l			;71cb
	jr l7233h		;71cc
	ld d,l			;71ce
	add a,d			;71cf
	ld h,e			;71d0
	ld a,a			;71d1
	daa			;71d2
	ei			;71d3
	ld sp,0ff23h		;71d4
	ld d,l			;71d7
	add a,e			;71d8
	inc h			;71d9
	cp 0d8h			;71da
	rst 38h			;71dc
	ret c			;71dd
l71deh:
	ld c,b			;71de
	add a,e			;71df
	ld hl,02238h		;71e0
	inc d			;71e3
	rst 38h			;71e4
	and d			;71e5
	add a,b			;71e6
	rst 38h			;71e7
	ld a,a			;71e8
	adc a,h			;71e9
	add a,c			;71ea
	ld e,a			;71eb
	ld b,c			;71ec
	ld (hl),l		;71ed
	ld d,(hl)		;71ee
	ret			;71ef
	sub a			;71f0
	add iy,de		;71f1
	xor 034h		;71f3
	jp m,0c760h		;71f5
	ld h,d			;71f8
	ld d,a			;71f9
	in a,(0f5h)		;71fa
	cp 0c7h			;71fc
	daa			;71fe
	defb 0fdh,04ch ;ld c,iyh	;71ff
	ld (hl),c		;7201
	add a,h			;7202
	add a,073h		;7203
	ld a,a			;7205
	ex de,hl		;7206
	rst 38h			;7207
	ld de,00fffh		;7208
	ld c,b			;720b
	add a,b			;720c
	inc hl			;720d
	and d			;720e
	adc a,a			;720f
	ld b,h			;7210
	inc b			;7211
	ld a,a			;7212
	ld a,(de)		;7213
	rst 38h			;7214
	cp 017h			;7215
	push de			;7217
	ld h,c			;7218
	adc a,h			;7219
l721ah:
	ld h,l			;721a
	ld d,a			;721b
	ld a,a			;721c
	cp b			;721d
	ld a,l			;721e
	pop bc			;721f
	cp c			;7220
	rst 28h			;7221
	call z,0d389h		;7222
	pop bc			;7225
	add a,e			;7226
	ld a,(bc)		;7227
	ld (hl),a		;7228
	jp m,0878dh		;7229
	call nc,08812h		;722c
	out (0ffh),a		;722f
	rst 8			;7231
	rst 38h			;7232
l7233h:
	ld l,b			;7233
	nop			;7234
	ld (l6312h),a		;7235
	inc d			;7238
	ld a,a			;7239
	rrca			;723a
	ld a,a			;723b
	and a			;723c
	cp (hl)			;723d
	ld a,a			;723e
	ret p			;723f
	and 04ch		;7240
	ld h,l			;7242
	push af			;7243
	ld h,c			;7244
	pop bc			;7245
	halt			;7246
	ld a,a			;7247
	dec b			;7248
	rst 0			;7249
	ld (hl),d		;724a
	inc hl			;724b
	scf			;724c
	defb 0fdh,020h,07ch ;illegal sequence	;724d
	ld de,0a2c2h		;7250
	ei			;7253
	add a,d			;7254
	ld c,c			;7255
	jp m,080a5h		;7256
	ld h,088h		;7259
	jp z,0fa1fh		;725b
	ld e,h			;725e
	add a,l			;725f
	add hl,bc		;7260
	add a,b			;7261
	ld bc,096feh		;7262
	call nz,sub_7f0ah	;7265
	dec h			;7268
	xor 0feh		;7269
	sbc a,e			;726b
	rst 38h			;726c
	cp 019h			;726d
	sbc a,b			;726f
	ld h,(hl)		;7270
	ld c,c			;7271
	ld a,c			;7272
	rst 0			;7273
	cp 049h			;7274
	ld a,d			;7276
	ld (hl),d		;7277
	di			;7278
	sub c			;7279
	pop bc			;727a
	sbc a,h			;727b
	add a,h			;727c
	ld (hl),c		;727d
	call z,0f97bh		;727e
	inc (hl)		;7281
	pop iy			;7282
	ld (hl),a		;7284
	rla			;7285
	adc a,b			;7286
	add a,l			;7287
	ex af,af'		;7288
	rst 38h			;7289
	sub a			;728a
	add a,b			;728b
	jp po,08584h		;728c
	jr nz,l721ah		;728f
	sub b			;7291
	ld (bc),a		;7292
	ld sp,0fe92h		;7293
	nop			;7296
	ret p			;7297
	cp 0feh			;7298
	inc sp			;729a
	ld b,a			;729b
	ex de,hl		;729c
	cp 01dh			;729d
	add a,b			;729f
	sbc a,a			;72a0
	ld a,a			;72a1
	jp nz,07959h		;72a2
	ld a,a			;72a5
	add a,d			;72a6
	inc h			;72a7
	ei			;72a8
	adc a,b			;72a9
	rla			;72aa
	ld (hl),h		;72ab
	cp e			;72ac
	ld hl,01975h		;72ad
	add a,c			;72b0
	defb 0fdh,091h,032h ;illegal sequence	;72b1
	ld hl,074feh		;72b4
	jp m,l774bh		;72b7
	ld a,a			;72ba
	add a,h			;72bb
	ld c,c			;72bc
	ld sp,hl		;72bd
	ld a,(08c80h)		;72be
	cp 047h			;72c1
	add a,h			;72c3
	ld a,b			;72c4
	inc bc			;72c5
	ld hl,02c84h		;72c6
	ld a,a			;72c9
	di			;72ca
	defb 0edh ;next byte illegal after ed	;72cb
l72cch:
	rst 38h			;72cc
	call p,025ffh		;72cd
	rst 38h			;72d0
	rst 38h			;72d1
	rst 38h			;72d2
	ret m			;72d3
	ld c,h			;72d4
	or 093h			;72d5
	ld h,a			;72d7
	ld a,a			;72d8
	sub a			;72d9
	ret m			;72da
	ld d,l			;72db
	ld (061f3h),hl		;72dc
	or e			;72df
	add hl,hl		;72e0
	ld a,a			;72e1
	ld d,c			;72e2
	add a,c			;72e3
	adc a,e			;72e4
	dec d			;72e5
	defb 0fdh,061h ;ld iyh,c	;72e6
	ld (08e2ch),hl		;72e8
	ld b,d			;72eb
	rla			;72ec
	ex (sp),hl		;72ed
	add hl,hl		;72ee
	ld a,d			;72ef
	sbc a,b			;72f0
l72f1h:
	rst 38h			;72f1
	cp h			;72f2
	jp nz,0107fh		;72f3
	inc c			;72f6
	call nz,sub_4989h	;72f7
	ld a,a			;72fa
	rst 38h			;72fb
	add a,c			;72fc
	ret m			;72fd
	ex de,hl		;72fe
	sub h			;72ff
	defb 0fdh,0e2h,0feh ;illegal sequence	;7300
	rst 38h			;7303
l7304h:
	ld e,a			;7304
	add a,h			;7305
	inc d			;7306
	sub c			;7307
	add a,066h		;7308
	jp m,0fe9ch		;730a
	ld c,l			;730d
	ret m			;730e
	rst 28h			;730f
	or b			;7310
	ld (de),a		;7311
	daa			;7312
	sbc a,c			;7313
	ld h,071h		;7314
sub_7316h:
	sub c			;7316
	add a,b			;7317
	ld b,e			;7318
	ld l,h			;7319
	ld a,(hl)		;731a
	ld (hl),d		;731b
	inc sp			;731c
	jp nz,l4985h		;731d
	sub c			;7320
	ld (de),a		;7321
	ld (l6fffh),a		;7322
	rst 38h			;7325
	ld h,l			;7326
	ld b,b			;7327
	inc hl			;7328
	ld a,a			;7329
	rst 38h			;732a
	inc l			;732b
	ld b,l			;732c
	add a,b			;732d
	ld a,a			;732e
	inc hl			;732f
	ld a,0feh		;7330
	ccf			;7332
	ld a,a			;7333
	add a,l			;7334
	ld (09188h),hl		;7335
	rst 28h			;7338
	adc a,c			;7339
	add a,b			;733a
	ld a,c			;733b
	ret m			;733c
	and d			;733d
	sub c			;733e
	call p,sub_79a3h	;733f
	sub c			;7342
	pop af			;7343
	ld h,d			;7344
	ld d,a			;7345
	sbc a,c			;7346
	add a,b			;7347
	ld d,a			;7348
sub_7349h:
	add a,c			;7349
	ld c,085h		;734a
	jp z,01f94h		;734c
	ld (hl),d		;734f
	add a,c			;7350
	ld b,a			;7351
	ei			;7352
	inc b			;7353
	ld c,c			;7354
	sub h			;7355
	dec c			;7356
	ld b,b			;7357
	ld c,032h		;7358
	djnz l735ch		;735a
l735ch:
	ld c,h			;735c
	ld a,a			;735d
	ld hl,(09481h)		;735e
	add a,c			;7361
	adc a,l			;7362
	cp 0feh			;7363
	ld a,a			;7365
	djnz l7304h		;7366
	halt			;7368
	jp 0c97fh		;7369
	ld d,(hl)		;736c
	cp 088h			;736d
	ld l,h			;736f
	ld a,c			;7370
	sbc a,c			;7371
	adc a,e			;7372
	adc a,h			;7373
	jp m,08b4fh		;7374
	sbc a,b			;7377
	halt			;7378
	adc a,b			;7379
	sbc a,h			;737a
	add a,a			;737b
	ld e,d			;737c
	sub h			;737d
	dec hl			;737e
	rla			;737f
	rst 38h			;7380
	cpl			;7381
	add a,b			;7382
	ld (hl),a		;7383
	rst 38h			;7384
sub_7385h:
	ld b,c			;7385
	ld b,c			;7386
	ld (00040h),a		;7387
	inc b			;738a
	ld a,(hl)		;738b
	or d			;738c
	ld a,a			;738d
	ccf			;738e
	add a,d			;738f
	ld h,l			;7390
	rst 38h			;7391
	call m,sub_7f5fh	;7392
	jp nz,08995h		;7395
l7398h:
	sbc a,h			;7398
	ld a,(hl)		;7399
	ld a,a			;739a
	rst 38h			;739b
	ld c,b			;739c
	add hl,de		;739d
	ld b,d			;739e
	sub d			;739f
	ld a,a			;73a0
	sub a			;73a1
	inc e			;73a2
	ld (hl),l		;73a3
	defb 0fdh,0c7h,091h ;illegal sequence	;73a4
	add a,a			;73a7
	adc a,05ch		;73a8
	adc a,e			;73aa
	ld c,l			;73ab
	add a,(hl)		;73ac
	jr nc,l73afh		;73ad
l73afh:
	dec sp			;73af
	ld (hl),a		;73b0
	ld c,d			;73b1
	adc a,c			;73b2
	ei			;73b3
	ld (hl),d		;73b4
	ld a,a			;73b5
	ld sp,l71deh		;73b6
	ld a,a			;73b9
	ld (l6ffah),hl		;73ba
	ret p			;73bd
	inc b			;73be
	ld a,a			;73bf
	ret p			;73c0
	sbc a,b			;73c1
	cp 038h			;73c2
	halt			;73c4
	di			;73c5
	sub d			;73c6
	add a,e			;73c7
	cp 062h			;73c8
	pop bc			;73ca
	sub a			;73cb
	rst 38h			;73cc
	ld h,c			;73cd
	ld (hl),d		;73ce
	ld (hl),a		;73cf
	dec h			;73d0
	di			;73d1
	ld (080cch),a		;73d2
	sub d			;73d5
	ld (de),a		;73d6
	sub d			;73d7
	call m,sub_5e09h	;73d8
	inc l			;73db
	sub h			;73dc
	ld e,c			;73dd
	ret m			;73de
	rst 38h			;73df
	inc e			;73e0
	cp h			;73e1
	ld c,h			;73e2
	ld a,a			;73e3
	ld (hl),b		;73e4
	nop			;73e5
	ld a,(bc)		;73e6
	and b			;73e7
	ld b,a			;73e8
	nop			;73e9
	rst 38h			;73ea
	ret p			;73eb
	jp nz,04c44h		;73ec
	halt			;73ef
	xor 051h		;73f0
	ld h,l			;73f2
	add a,c			;73f3
	ret m			;73f4
	sub c			;73f5
	xor e			;73f6
	rst 38h			;73f7
	rst 28h			;73f8
	push bc			;73f9
	inc hl			;73fa
	ld a,h			;73fb
	adc a,(hl)		;73fc
	ld l,b			;73fd
	call z,09934h		;73fe
	sbc a,h			;7401
	adc a,h			;7402
	sub d			;7403
	defb 0fdh,010h,0ach ;illegal sequence	;7404
	ld a,a			;7407
	ld a,e			;7408
sub_7409h:
	add a,b			;7409
	xor h			;740a
	add a,b			;740b
	and h			;740c
	rst 38h			;740d
	call p,0227fh		;740e
	and l			;7411
	ld e,d			;7412
	add a,d			;7413
	cp 07fh			;7414
	ld d,0d8h		;7416
	dec l			;7418
	rst 30h			;7419
	pop bc			;741a
	sbc a,h			;741b
	ld h,l			;741c
	call z,08204h		;741d
	daa			;7420
	pop bc			;7421
	ld (hl),d		;7422
	ld a,a			;7423
	or d			;7424
	push af			;7425
	adc a,(hl)		;7426
	ld sp,088c9h		;7427
	ld b,e			;742a
	ld de,0347eh		;742b
	add a,d			;742e
	sub c			;742f
	sub b			;7430
	call nz,0727fh		;7431
	cp 063h			;7434
	inc bc			;7436
	ld bc,0847fh		;7437
	inc c			;743a
	ld (iy-056h),b		;743b
	add hl,bc		;743e
	ld e,(hl)		;743f
	push hl			;7440
	xor d			;7441
	and l			;7442
	add a,d			;7443
	ld c,b			;7444
	rst 38h			;7445
	cp 012h			;7446
	ld sp,hl		;7448
	ld h,079h		;7449
	add a,d			;744b
	ld bc,0c7c9h		;744c
	ret			;744f
	sbc a,h			;7450
	add a,d			;7451
	inc d			;7452
	ld a,a			;7453
	rst 0			;7454
	ld l,c			;7455
	or a			;7456
	add a,(hl)		;7457
	adc a,d			;7458
	ld d,h			;7459
	ld a,(hl)		;745a
	ld (de),a		;745b
	ld e,(hl)		;745c
	ld (l6282h),hl		;745d
	sub b			;7460
	ccf			;7461
	scf			;7462
	ei			;7463
	rrca			;7464
	add a,h			;7465
	ld c,b			;7466
	ld a,a			;7467
	inc d			;7468
	ld c,h			;7469
	ld (bc),a		;746a
	and b			;746b
	add a,c			;746c
	ld a,d			;746d
	ld d,l			;746e
	xor 055h		;746f
	ld e,d			;7471
	ld d,l			;7472
	ld a,a			;7473
	call m,0c428h		;7474
	adc a,h			;7477
	call z,0ed92h		;7478
	cp 085h			;747b
	ret			;747d
	push af			;747e
	sbc a,l			;747f
	call p,sub_7c39h	;7480
	pop af			;7483
	dec c			;7484
	ld (08fc1h),a		;7485
	and e			;7488
	dec d			;7489
	inc e			;748a
	ld (081ech),hl		;748b
	ld h,d			;748e
	ld (0ff27h),a		;748f
	ld de,0c431h		;7492
	add a,b			;7495
	sbc a,c			;7496
	ld (bc),a		;7497
	sub c			;7498
	add a,e			;7499
	jr $+3			;749a
	ld hl,l407eh		;749c
	or h			;749f
	add a,b			;74a0
	or b			;74a1
	ld a,l			;74a2
	ld a,a			;74a3
	push hl			;74a4
	ld d,l			;74a5
	ld b,a			;74a6
	push hl			;74a7
	rst 38h			;74a8
	ret p			;74a9
	jp p,099eeh		;74aa
	ld a,a			;74ad
	add a,l			;74ae
	rla			;74af
	pop af			;74b0
	inc c			;74b1
	ld (030f7h),hl		;74b2
	pop af			;74b5
	ex de,hl		;74b6
	add a,l			;74b7
	or 048h			;74b8
	cp 0c2h			;74ba
	inc l			;74bc
	ld (hl),d		;74bd
	ld a,(hl)		;74be
	out (086h),a		;74bf
	pop af			;74c1
	pop de			;74c2
	ld c,b			;74c3
	and l			;74c4
	ld e,h			;74c5
	ld e,h			;74c6
	add a,(hl)		;74c7
	ld bc,01143h		;74c8
	ld l,a			;74cb
	inc b			;74cc
	ld c,b			;74cd
	inc b			;74ce
	ld a,a			;74cf
	ld a,(de)		;74d0
	ld e,(hl)		;74d1
	call m,0eb09h		;74d2
	cp (hl)			;74d5
	xor 081h		;74d6
	cp a			;74d8
	ld a,a			;74d9
	add a,h			;74da
	and d			;74db
	cp 0f6h			;74dc
	ld c,h			;74de
	ld a,a			;74df
	ld a,d			;74e0
	ld de,l5debh		;74e1
	nop			;74e4
	or 03ch			;74e5
	ld (hl),d		;74e7
	pop af			;74e8
	ret pe			;74e9
	add a,l			;74ea
	or d			;74eb
	ld hl,02307h		;74ec
	ld hl,09921h		;74ef
	ld (0068bh),hl		;74f2
	ld (de),a		;74f5
	sbc a,b			;74f6
	sbc a,a			;74f7
	sub l			;74f8
	rst 38h			;74f9
	ld c,(hl)		;74fa
	add a,d			;74fb
	ld (l7f99h),a		;74fc
	rst 38h			;74ff
	ld d,d			;7500
	adc a,c			;7501
	and c			;7502
	ld b,b			;7503
	ld a,(bc)		;7504
	ld a,(bc)		;7505
	ld a,a			;7506
	ld a,(080bbh)		;7507
	rlca			;750a
	cp (hl)			;750b
	cp (hl)			;750c
	push hl			;750d
	ld e,d			;750e
	and b			;750f
	ld a,a			;7510
	ret p			;7511
	ld h,e			;7512
	sbc a,h			;7513
	ld (hl),l		;7514
	ld d,(hl)		;7515
	rst 38h			;7516
	sub b			;7517
	ld l,h			;7518
	inc e			;7519
	ld (01977h),hl		;751a
	rst 30h			;751d
	ret p			;751e
l751fh:
	rst 38h			;751f
	daa			;7520
	inc de			;7521
	call m,sub_49f9h	;7522
	inc sp			;7525
	ei			;7526
	ld bc,08660h		;7527
	sub c			;752a
	ld c,c			;752b
	ld hl,02902h		;752c
	ld sp,hl		;752f
	ld (l53a1h),hl		;7530
	ld c,h			;7533
	halt			;7534
	add a,e			;7535
	sbc a,b			;7536
	ld a,a			;7537
	inc b			;7538
	or c			;7539
	add a,l			;753a
	add a,b			;753b
	ei			;753c
	ld b,c			;753d
	ld d,l			;753e
	ld e,(hl)		;753f
	rst 38h			;7540
	jp c,0a0bbh		;7541
	add a,d			;7544
	xor d			;7545
	ld a,(bc)		;7546
	cp 07fh			;7547
	dec c			;7549
	ld h,l			;754a
	ld a,a			;754b
	xor c			;754c
	ld h,a			;754d
	push af			;754e
	sub e			;754f
	ld a,c			;7550
	call m,07728h		;7551
	xor 064h		;7554
	ld (de),a		;7556
	pop af			;7557
	daa			;7558
	ld c,h			;7559
	ld (02587h),hl		;755a
	adc a,c			;755d
	ei			;755e
	ld de,l6602h		;755f
	nop			;7562
	jp m,0c4f0h		;7563
	sbc a,l			;7566
	add a,h			;7567
	call nz,sub_4c7fh	;7568
	ex af,af'		;756b
	ld b,h			;756c
	ld h,00ah		;756d
	ld d,l			;756f
	call m,07edah		;7570
	ld a,a			;7573
	add a,b			;7574
	ld b,a			;7575
	xor d			;7576
	ld a,a			;7577
	ret p			;7578
	ld c,c			;7579
	adc a,h			;757a
	ld a,a			;757b
	ld a,h			;757c
	jp m,l66e3h		;757d
	defb 0fdh,002h,079h ;illegal sequence	;7580
	ld de,0e9edh		;7583
	jp m,0f5c9h		;7586
	ret			;7589
	nop			;758a
	ld (hl),c		;758b
	cp 018h			;758c
	inc de			;758e
	ld h,b			;758f
	ld hl,09190h		;7590
	ld l,c			;7593
	sub d			;7594
	sbc a,a			;7595
	ld (hl),h		;7596
	or h			;7597
	ld a,a			;7598
	add a,b			;7599
	sbc a,e			;759a
	ld a,a			;759b
	rst 38h			;759c
	ex de,hl		;759d
	cp 01dh			;759e
	ld c,l			;75a0
	add a,e			;75a1
	add a,e			;75a2
	ld l,c			;75a3
	ld a,a			;75a4
	call m,0761ah		;75a5
	ld a,a			;75a8
	cp b			;75a9
	pop af			;75aa
	ld d,(hl)		;75ab
	pop bc			;75ac
	add hl,hl		;75ad
	sub c			;75ae
	ld a,c			;75af
	call p,0002fh		;75b0
	di			;75b3
	set 6,e			;75b4
	xor b			;75b6
	rst 30h			;75b7
	dec b			;75b8
	ld (de),a		;75b9
	ld d,c			;75ba
	sub c			;75bb
	ld (00f19h),a		;75bc
	add a,(hl)		;75bf
	ld d,0feh		;75c0
	ld e,h			;75c2
	di			;75c3
sub_75c4h:
	sbc a,c			;75c4
	ld a,a			;75c5
	add a,c			;75c6
	sub d			;75c7
	ld b,c			;75c8
	rst 38h			;75c9
	ld d,c			;75ca
	add a,h			;75cb
	ex af,af'		;75cc
	ld d,d			;75cd
	cp 071h			;75ce
	ld a,(hl)		;75d0
	nop			;75d1
	ld l,0beh		;75d2
	add a,c			;75d4
	cp 07fh			;75d5
	dec bc			;75d7
	cp 0cch			;75d8
	rst 28h			;75da
	sbc a,b			;75db
	add a,07fh		;75dc
	sbc a,c			;75de
	ld (de),a		;75df
	ld (hl),a		;75e0
	sub a			;75e1
	inc hl			;75e2
	ld a,(hl)		;75e3
	daa			;75e4
	add a,c			;75e5
	ld d,d			;75e6
	add a,l			;75e7
	ld h,l			;75e8
	daa			;75e9
	adc a,e			;75ea
	nop			;75eb
	add hl,sp		;75ec
	inc de			;75ed
	ld (02219h),hl		;75ee
	dec d			;75f1
	add hl,hl		;75f2
	sbc a,c			;75f3
	ld de,l47f9h		;75f4
	rst 38h			;75f7
	daa			;75f8
	sub h			;75f9
l75fah:
	ld c,h			;75fa
	rst 38h			;75fb
	inc d			;75fc
	rst 38h			;75fd
	ex af,af'		;75fe
	call nz,08884h		;75ff
	rst 38h			;7602
	adc a,07fh		;7603
	adc a,a			;7605
	ex de,hl		;7606
	push hl			;7607
	ld a,a			;7608
	pop hl			;7609
	inc (hl)		;760a
	rst 28h			;760b
	ld e,b			;760c
	call z,sub_6682h	;760d
	jp pe,080f6h		;7610
	jp nc,0407bh		;7613
	ld de,0c703h		;7616
	ld (03733h),a		;7619
	ld de,089a8h		;761c
	jp nz,0e921h		;761f
	adc a,a			;7622
	add hl,hl		;7623
	add a,c			;7624
	ld (hl),07fh		;7625
	inc hl			;7627
	call z,03c80h		;7628
	and l			;762b
	out (087h),a		;762c
	rst 38h			;762e
	call nc,08048h		;762f
	sbc a,d			;7632
l7633h:
	rst 38h			;7633
	cp 059h			;7634
	rst 8			;7636
	nop			;7637
	ld a,a			;7638
	pop hl			;7639
	ld (026f7h),hl		;763a
	ld h,a			;763d
	ld (hl),a		;763e
	ld a,a			;763f
	ld h,l			;7640
	ld a,a			;7641
	add hl,bc		;7642
	ld (hl),e		;7643
	or e			;7644
	daa			;7645
l7646h:
	rst 30h			;7646
	add hl,bc		;7647
	scf			;7648
	call z,02c84h		;7649
	add a,l			;764c
	cp d			;764d
	add a,e			;764e
	ld a,(bc)		;764f
	inc b			;7650
	add hl,de		;7651
	inc hl			;7652
	inc hl			;7653
	add hl,hl		;7654
	ld (de),a		;7655
	add a,h			;7656
	ret c			;7657
	and b			;7658
	ld h,e			;7659
	ld a,(hl)		;765a
	ld c,b			;765b
	and l			;765c
	ret			;765d
	dec b			;765e
	inc hl			;765f
	ld a,a			;7660
	ld h,000h		;7661
	cp 0f1h			;7663
	ld a,a			;7665
	sub a			;7666
	rst 38h			;7667
	pop hl			;7668
	ld c,b			;7669
	adc a,c			;766a
	call z,0a280h		;766b
	ld iy,(0cc66h)		;766e
	rst 28h			;7672
	ld h,d			;7673
	inc hl			;7674
	ld a,a			;7675
	ld a,h			;7676
l7677h:
	adc a,d			;7677
	ret			;7678
l7679h:
	sub c			;7679
	dec d			;767a
	ld (hl),d		;767b
	rst 38h			;767c
	ld e,a			;767d
	ld a,a			;767e
	adc a,c			;767f
l7680h:
	ld b,h			;7680
	add a,a			;7681
	sub c			;7682
	call po,0d281h		;7683
	defb 0fdh,0fdh,075h ;illegal sequence	;7686
	adc a,c			;7689
	jp m,l4348h		;768a
	jp z,0827fh		;768d
	ld h,0ffh		;7690
	defb 0edh ;next byte illegal after ed	;7692
	ld a,a			;7693
	push hl			;7694
	ld a,a			;7695
	call m,sub_4823h	;7696
	or 06fh			;7699
	call pe,0ff2ah		;769b
	ret c			;769e
	add a,e			;769f
	rla			;76a0
	inc hl			;76a1
	sub b			;76a2
	ei			;76a3
	call z,000c7h		;76a4
	rst 0			;76a7
	add hl,de		;76a8
	sub c			;76a9
	sbc a,c			;76aa
	sub a			;76ab
	daa			;76ac
	rla			;76ad
	rst 0			;76ae
	ret po			;76af
	add a,l			;76b0
	ld (hl),c		;76b1
	ld a,h			;76b2
	ld d,l			;76b3
	ld (08180h),hl		;76b4
	dec h			;76b7
	ld sp,hl		;76b8
	sub c			;76b9
	add a,b			;76ba
	ld h,c			;76bb
	call m,02285h		;76bc
	ld b,h			;76bf
	ld a,a			;76c0
	ld l,(hl)		;76c1
	ld hl,0c5ffh		;76c2
	rst 38h			;76c5
	cp 06ch			;76c6
	sbc a,080h		;76c8
	dec (hl)		;76ca
	ld e,d			;76cb
	rst 38h			;76cc
	ret m			;76cd
	ld b,h			;76ce
	adc a,h			;76cf
	call m,05745h		;76d0
	ld a,h			;76d3
	rst 38h			;76d4
	pop de			;76d5
	jp p,02b09h		;76d6
	inc sp			;76d9
	rst 0			;76da
	adc a,e			;76db
	inc h			;76dc
	ld a,a			;76dd
	ld de,0a0fah		;76de
	ld (de),a		;76e1
	ld (hl),c		;76e2
	inc e			;76e3
	adc a,b			;76e4
	adc a,c			;76e5
	inc sp			;76e6
	ld h,00ch		;76e7
	ld de,02192h		;76e9
	ld (de),a		;76ec
	ei			;76ed
	add a,099h		;76ee
l76f0h:
	add a,h			;76f0
	jr nc,l7737h		;76f1
	inc e			;76f3
	ld b,d			;76f4
l76f5h:
	ld sp,l7f21h		;76f5
	ld d,a			;76f8
	rst 38h			;76f9
	add a,d			;76fa
	push hl			;76fb
	rst 38h			;76fc
	ccf			;76fd
	add a,h			;76fe
	sub d			;76ff
	ld a,a			;7700
	ld h,l			;7701
	ld a,a			;7702
	ld h,(hl)		;7703
	ld a,c			;7704
	ld l,d			;7705
	inc hl			;7706
	ld (iy-07ch),b		;7707
	jp nz,l771dh		;770a
	rla			;770d
	daa			;770e
	defb 0fdh,089h,02ch ;illegal sequence	;770f
	adc a,c			;7712
	add a,e			;7713
	inc de			;7714
	inc sp			;7715
	ld hl,09d1ch		;7716
	ld (l4891h),hl		;7719
	add a,b			;771c
l771dh:
	ld (hl),a		;771d
	add a,e			;771e
	ld l,d			;771f
	add a,h			;7720
	ld c,e			;7721
	add a,b			;7722
	sub h			;7723
	ld (de),a		;7724
	add a,b			;7725
	sbc a,l			;7726
	call m,0eb8eh		;7727
	ld a,(hl)		;772a
	xor a			;772b
	rst 38h			;772c
	ret m			;772d
sub_772eh:
	ld b,(hl)		;772e
	add a,h			;772f
	ld sp,hl		;7730
	sbc a,c			;7731
	add a,c			;7732
	add a,(hl)		;7733
	ld h,(hl)		;7734
	rst 0			;7735
	push af			;7736
l7737h:
	and h			;7737
	or 09dh			;7738
	add a,h			;773a
	cp b			;773b
	add a,c			;773c
	ld d,h			;773d
	sub d			;773e
	ld (de),a		;773f
	ld b,03ch		;7740
	sbc a,h			;7742
	ld a,h			;7743
	ld (de),a		;7744
	ld (hl),d		;7745
	sub b			;7746
	ld h,b			;7747
	ld (hl),c		;7748
	add hl,de		;7749
	add a,h			;774a
l774bh:
	call 0b380h		;774b
	cp 003h			;774e
	dec de			;7750
	add a,h			;7751
	sub h			;7752
	ld d,b			;7753
	add a,c			;7754
	inc b			;7755
	ld l,l			;7756
	and b			;7757
	rst 38h			;7758
	add a,b			;7759
	inc a			;775a
	and 0feh		;775b
	ld h,a			;775d
	rst 38h			;775e
	ret p			;775f
	ld l,a			;7760
	adc a,b			;7761
	xor 034h		;7762
	pop de			;7764
	ld d,b			;7765
	ld a,h			;7766
	add a,c			;7767
	ld (hl),d		;7768
	jp nc,06ff8h		;7769
	sbc a,e			;776c
	rst 38h			;776d
	call p,022f1h		;776e
	add a,b			;7771
	ld d,b			;7772
	ld (hl),d		;7773
	cp h			;7774
	ld d,0fah		;7775
	adc a,e			;7777
	adc a,c			;7778
	ld d,d			;7779
	add a,d			;777a
	ld b,(hl)		;777b
	ld de,017f8h		;777c
	rst 38h			;777f
	or c			;7780
	add a,h			;7781
	jp 09213h		;7782
	ld l,e			;7785
	cp 0bbh			;7786
	rst 38h			;7788
	ld h,l			;7789
	add a,b			;778a
	add a,e			;778b
	or l			;778c
	xor d			;778d
	rst 38h			;778e
sub_778fh:
	sbc a,a			;778f
	add a,h			;7790
	jp m,0fffbh		;7791
	ld hl,(081ffh)		;7794
	ld l,h			;7797
	add hl,de		;7798
	sub a			;7799
	ld (hl),d		;779a
l779bh:
	ld (hl),c		;779b
	ld sp,hl		;779c
	add a,d			;779d
	pop bc			;779e
	add a,b			;779f
	inc l			;77a0
	add a,h			;77a1
	sub h			;77a2
	scf			;77a3
	ld a,a			;77a4
	rst 38h			;77a5
	ld c,b			;77a6
	add a,0f9h		;77a7
	xor (hl)		;77a9
	adc a,h			;77aa
	add hl,bc		;77ab
	or l			;77ac
	cp e			;77ad
	ld (0a072h),a		;77ae
	dec l			;77b1
	rst 38h			;77b2
	add a,d			;77b3
	adc a,b			;77b4
	adc a,h			;77b5
	add a,b			;77b6
	or h			;77b7
	ld hl,08c14h		;77b8
	add a,b			;77bb
	ld a,00ah		;77bc
	ld e,(hl)		;77be
	add a,b			;77bf
	call p,08bfeh		;77c0
	rst 38h			;77c3
	rst 38h			;77c4
	rst 18h			;77c5
	add a,h			;77c6
	rlca			;77c7
	adc a,c			;77c8
	rst 0			;77c9
	halt			;77ca
	ld d,l			;77cb
	ld h,a			;77cc
	rst 38h			;77cd
	ld e,d			;77ce
	rst 38h			;77cf
	jr nc,l77e9h		;77d0
	di			;77d2
	xor b			;77d3
	rst 38h			;77d4
	ld a,h			;77d5
	call z,sub_7349h	;77d6
	add a,a			;77d9
	or 060h			;77da
	rla			;77dc
	ld hl,l5e7ch		;77dd
	pop bc			;77e0
	add a,a			;77e1
	ld a,(hl)		;77e2
	sub c			;77e3
	ld h,022h		;77e4
	cp 0c6h			;77e6
	rst 38h			;77e8
l77e9h:
	jp z,08248h		;77e9
	add a,b			;77ec
	inc h			;77ed
	adc a,a			;77ee
	push bc			;77ef
	ld a,a			;77f0
	ld d,l			;77f1
l77f2h:
	add a,d			;77f2
	ld e,e			;77f3
	ei			;77f4
	adc a,a			;77f5
	ld d,l			;77f6
	ld a,a			;77f7
	pop hl			;77f8
	add a,(hl)		;77f9
	call z,sub_56c6h	;77fa
	ld a,a			;77fd
	ld bc,091c7h		;77fe
	ld (hl),a		;7801
	dec hl			;7802
	dec sp			;7803
	inc a			;7804
	call p,0c761h		;7805
	ld a,e			;7808
	add a,l			;7809
	add a,h			;780a
	ld a,a			;780b
	ld (hl),a		;780c
	adc a,e			;780d
	adc a,b			;780e
	ei			;780f
	bit 7,a			;7810
	adc a,d			;7812
	adc a,l			;7813
	ld a,a			;7814
	sub 0ffh		;7815
	ld (08bffh),hl		;7817
	ld (bc),a		;781a
	adc a,b			;781b
	ld (01b8eh),a		;781c
	ld (de),a		;781f
	ld a,a			;7820
	add a,d			;7821
	ld d,(hl)		;7822
	ld a,a			;7823
	daa			;7824
	xor d			;7825
	adc a,d			;7826
	daa			;7827
	rst 38h			;7828
	ret m			;7829
	add hl,sp		;782a
	jp p,l6618h		;782b
	ld a,a			;782e
	ret			;782f
	sbc a,c			;7830
	ld a,a			;7831
	inc sp			;7832
	rst 30h			;7833
	ld de,0c1c6h		;7834
	adc a,l			;7837
	add hl,bc		;7838
	ld (09771h),a		;7839
	ld sp,hl		;783c
	xor d			;783d
	ld a,a			;783e
	ei			;783f
	ld b,(hl)		;7840
	ld (hl),d		;7841
	sub d			;7842
	sub h			;7843
	add a,b			;7844
	ld c,a			;7845
	rst 38h			;7846
	dec a			;7847
	rst 38h			;7848
	adc a,c			;7849
	adc a,b			;784a
	nop			;784b
	inc de			;784c
	ld a,a			;784d
	pop bc			;784e
	nop			;784f
	xor d			;7850
	add a,e			;7851
	ld h,d			;7852
	push hl			;7853
	call m,sub_7f73h	;7854
	ret m			;7857
	ld l,e			;7858
	jp (hl)			;7859
	sub c			;785a
	ld h,l			;785b
	ld a,a			;785c
	ld h,a			;785d
	ld de,0c5fdh		;785e
	cp 0adh			;7861
	add a,b			;7863
	push hl			;7864
	add a,(hl)		;7865
	ld e,h			;7866
	add a,l			;7867
	dec hl			;7868
	rla			;7869
	ld a,(bc)		;786a
	ld (bc),a		;786b
	add a,h			;786c
	and e			;786d
	ld hl,l7f23h		;786e
	dec sp			;7871
	add a,b			;7872
	ld (hl),l		;7873
	add a,b			;7874
	add hl,hl		;7875
	jr z,l787bh		;7876
	ld (hl),e		;7878
	cp 023h			;7879
l787bh:
	ld (02475h),hl		;787b
	ld a,d			;787e
	and l			;787f
	ei			;7880
	and a			;7881
	ld a,a			;7882
	ret p			;7883
	adc a,048h		;7884
	ld a,a			;7886
	dec c			;7887
	ld h,(hl)		;7888
	pop bc			;7889
	rst 30h			;788a
	or d			;788b
	ret p			;788c
	adc a,c			;788d
	call p,07e1ch		;788e
	ld hl,(l7971h)		;7891
	add a,l			;7894
	ld (0ab8fh),a		;7895
	call m,08280h		;7898
	ld (hl),c		;789b
	inc hl			;789c
	adc a,h			;789d
	ld c,h			;789e
	rst 38h			;789f
	cp a			;78a0
	add a,b			;78a1
	ld de,08584h		;78a2
l78a5h:
	ld b,(hl)		;78a5
	add a,b			;78a6
	inc a			;78a7
	sbc a,c			;78a8
	add a,d			;78a9
	xor e			;78aa
	sub e			;78ab
	ld (hl),a		;78ac
	add a,e			;78ad
	ld a,(bc)		;78ae
	and b			;78af
	ld a,a			;78b0
	ret m			;78b1
	rst 18h			;78b2
	add a,c			;78b3
	jr z,l78a5h		;78b4
	ld e,e			;78b6
	inc e			;78b7
	ld a,h			;78b8
	call m,0c92dh		;78b9
l78bch:
	push af			;78bc
	inc d			;78bd
	ld (0fe7eh),hl		;78be
	and e			;78c1
	sub a			;78c2
	add a,h			;78c3
l78c4h:
	adc a,b			;78c4
	sub c			;78c5
	xor d			;78c6
	adc a,e			;78c7
	ld c,c			;78c8
	ld (hl),a		;78c9
	ld sp,hl		;78ca
	add a,b			;78cb
	call nc,067feh		;78cc
	ld sp,hl		;78cf
	call po,sub_4c2bh	;78d0
	ld e,c			;78d3
	dec de			;78d4
	add a,c			;78d5
	jp p,0c16fh		;78d6
	set 7,a			;78d9
	and b			;78db
	sub c			;78dc
	rst 0			;78dd
	ld (hl),l		;78de
	or b			;78df
	rst 38h			;78e0
	ld (hl),l		;78e1
	ld h,a			;78e2
	add a,c			;78e3
	ld (hl),e		;78e4
	pop bc			;78e5
	rst 0			;78e6
	ld (hl),c		;78e7
	ld h,d			;78e8
	ld a,c			;78e9
	add a,e			;78ea
	add a,e			;78eb
	ld (hl),e		;78ec
	adc a,b			;78ed
	jr z,$-126		;78ee
	cp h			;78f0
	adc a,(hl)		;78f1
	jp z,0ff7fh		;78f2
l78f5h:
	inc h			;78f5
	ld a,a			;78f6
	rla			;78f7
	ld a,d			;78f8
	sbc a,b			;78f9
	sbc a,0ffh		;78fa
	ld h,h			;78fc
	add a,e			;78fd
	add a,a			;78fe
	ld a,a			;78ff
	rst 0			;7900
	or d			;7901
	ld de,0f17fh		;7902
	call pe,sub_7f41h	;7905
	ld e,056h		;7908
	ld (hl),a		;790a
	add a,083h		;790b
	ld b,l			;790d
	add a,h			;790e
	call p,08134h		;790f
	ld c,a			;7912
	sub c			;7913
	add a,(hl)		;7914
	inc l			;7915
	call p,sub_7c48h	;7916
	adc a,c			;7919
	sbc a,c			;791a
	pop af			;791b
	jp m,08779h		;791c
	ld d,l			;791f
	sub c			;7920
	ld b,(hl)		;7921
	ld de,0ff48h		;7922
	ret m			;7925
	ld l,048h		;7926
	add a,h			;7928
	ld d,l			;7929
	ld b,h			;792a
	add a,c			;792b
	adc a,h			;792c
	ld e,b			;792d
	add a,c			;792e
	ld c,l			;792f
	inc hl			;7930
	add a,(hl)		;7931
	ld b,096h		;7932
	adc a,(hl)		;7934
	inc hl			;7935
	ld l,08dh		;7936
	ret m			;7938
	jr nz,l78bch		;7939
	ret			;793b
	inc e			;793c
	halt			;793d
	cp h			;793e
	add a,b			;793f
	ld l,056h		;7940
	ld d,(hl)		;7942
	add a,d			;7943
	sub b			;7944
	cp 017h			;7945
	ld (hl),c		;7947
	pop af			;7948
	add a,(hl)		;7949
	dec sp			;794a
	add a,a			;794b
	or l			;794c
	ex af,af'		;794d
	adc a,(hl)		;794e
	add a,h			;794f
	add a,(hl)		;7950
	sub b			;7951
	dec bc			;7952
	sub a			;7953
	ld (hl),e		;7954
	daa			;7955
	ld b,a			;7956
	ld hl,009fbh		;7957
	ld c,c			;795a
	ld a,a			;795b
	call z,0957fh		;795c
	adc a,d			;795f
	jr l79a9h		;7960
	inc sp			;7962
	ld a,b			;7963
	add a,e			;7964
	and c			;7965
	add a,(hl)		;7966
	ld (0c57fh),hl		;7967
	adc a,l			;796a
	sbc a,a			;796b
	ld a,a			;796c
	ret nz			;796d
	cp b			;796e
	adc a,h			;796f
	ld a,a			;7970
l7971h:
	jp nz,08083h		;7971
	sub c			;7974
	call z,0a8fbh		;7975
	ld a,c			;7978
	jp z,0ff7fh		;7979
l797ch:
	adc a,e			;797c
	add a,0c9h		;797d
	adc a,(hl)		;797f
	ld b,a			;7980
	ld a,c			;7981
	adc a,c			;7982
	call z,09292h		;7983
	xor l			;7986
	ld a,a			;7987
	ei			;7988
	in a,(084h)		;7989
	push hl			;798b
	sbc a,b			;798c
	add a,l			;798d
	ld b,e			;798e
	ld (hl),a		;798f
	add a,(hl)		;7990
	adc a,l			;7991
	add a,a			;7992
	sub (hl)		;7993
	ld sp,00678h		;7994
	inc de			;7997
	add a,e			;7998
	ld hl,07fach		;7999
	ld a,a			;799c
	inc b			;799d
	pop bc			;799e
	add a,d			;799f
	ld a,a			;79a0
	ld h,(hl)		;79a1
	ld (hl),a		;79a2
sub_79a3h:
	push bc			;79a3
	ld l,h			;79a4
	ld b,066h		;79a5
	inc e			;79a7
	rst 28h			;79a8
l79a9h:
	ld b,h			;79a9
	ld a,a			;79aa
	ld (de),a		;79ab
	dec sp			;79ac
	call p,071c9h		;79ad
	ld a,a			;79b0
	inc e			;79b1
	ld a,(bc)		;79b2
	add a,h			;79b3
	ld (hl),d		;79b4
	daa			;79b5
	add a,b			;79b6
	ld e,b			;79b7
	rst 38h			;79b8
	ld c,d			;79b9
	ei			;79ba
	ld (hl),l		;79bb
	ld a,a			;79bc
	adc a,d			;79bd
	ld b,(hl)		;79be
	add a,e			;79bf
	inc h			;79c0
	add a,(hl)		;79c1
	and e			;79c2
	inc hl			;79c3
	add a,(hl)		;79c4
	inc de			;79c5
	ld b,015h		;79c6
	inc de			;79c8
	adc a,h			;79c9
	call m,09b21h		;79ca
	call z,0947fh		;79cd
	rst 38h			;79d0
	add hl,hl		;79d1
	ld a,h			;79d2
	rst 38h			;79d3
	ccf			;79d4
	add a,c			;79d5
	ld h,h			;79d6
	rst 38h			;79d7
	ld l,033h		;79d8
	cp e			;79da
	call p,sub_772eh	;79db
	ret			;79de
	adc a,(hl)		;79df
	ld d,b			;79e0
	ld (hl),a		;79e1
	adc a,c			;79e2
	or e			;79e3
	sbc a,c			;79e4
	add a,d			;79e5
	ld de,064f8h		;79e6
	rst 38h			;79e9
	ld (hl),e		;79ea
	add a,l			;79eb
	ld (hl),e		;79ec
	adc a,b			;79ed
	ld a,a			;79ee
	sbc a,d			;79ef
	inc c			;79f0
	cp 048h			;79f1
	ld sp,hl		;79f3
	sbc a,l			;79f4
	ld b,h			;79f5
	adc a,(hl)		;79f6
	cp h			;79f7
l79f8h:
	adc a,l			;79f8
	ld a,a			;79f9
	ld a,a			;79fa
	inc bc			;79fb
	pop de			;79fc
l79fdh:
	daa			;79fd
	jp m,l67c2h		;79fe
	ld a,h			;7a01
	ld d,(hl)		;7a02
	add a,l			;7a03
	add hl,hl		;7a04
	call z,sub_7f24h	;7a05
	ld (hl),c		;7a08
	ret nc			;7a09
	and e			;7a0a
	ld (hl),d		;7a0b
	jp c,0c1a4h		;7a0c
	add a,(hl)		;7a0f
	ld e,c			;7a10
	add a,a			;7a11
	add a,e			;7a12
l7a13h:
	rla			;7a13
	dec hl			;7a14
	or e			;7a15
	add a,e			;7a16
	ld a,(bc)		;7a17
	rra			;7a18
l7a19h:
	push af			;7a19
	ld c,h			;7a1a
	ld a,d			;7a1b
	and l			;7a1c
	rst 38h			;7a1d
	adc a,h			;7a1e
	add a,b			;7a1f
	ld b,h			;7a20
	sbc a,b			;7a21
	add a,d			;7a22
	ld c,b			;7a23
	adc a,d			;7a24
	ret m			;7a25
	cp 045h			;7a26
	inc d			;7a28
	dec b			;7a29
	ld b,023h		;7a2a
	add a,d			;7a2c
	add a,e			;7a2d
	ccf			;7a2e
	ld a,a			;7a2f
	add a,c			;7a30
	dec e			;7a31
	call nz,sub_7cc6h	;7a32
	rst 30h			;7a35
	jr nc,$-55		;7a36
	rst 28h			;7a38
	and d			;7a39
	jp pe,0cbefh		;7a3a
	jp p,0833ch		;7a3d
	or d			;7a40
	ret m			;7a41
	add a,l			;7a42
	ld h,d			;7a43
	call z,0946ch		;7a44
	call 0d3fch		;7a47
	or d			;7a4a
	ld (hl),c		;7a4b
	add a,h			;7a4c
	xor e			;7a4d
	call m,09899h		;7a4e
	ld a,c			;7a51
	inc bc			;7a52
	adc a,e			;7a53
	add a,h			;7a54
	add a,(hl)		;7a55
	out (099h),a		;7a56
	sbc a,h			;7a58
	ld (hl),a		;7a59
	inc bc			;7a5a
	ld sp,l441ch		;7a5b
	sub h			;7a5e
	adc a,l			;7a5f
	sub e			;7a60
	sbc a,b			;7a61
	ld sp,0ff94h		;7a62
	rra			;7a65
	pop bc			;7a66
	ld h,d			;7a67
	push af			;7a68
	inc bc			;7a69
	ld a,h			;7a6a
	add a,06ch		;7a6b
	call z,0f6bbh		;7a6d
	adc a,h			;7a70
	ei			;7a71
	inc a			;7a72
	add a,d			;7a73
	defb 0edh ;next byte illegal after ed	;7a74
	defb 0fdh,0b4h ;or iyh	;7a75
	cp 086h			;7a77
	ld a,a			;7a79
	inc sp			;7a7a
	ld (hl),a		;7a7b
	ld (l61fdh),hl		;7a7c
	sub c			;7a7f
	ld (hl),c		;7a80
	ei			;7a81
	ld sp,hl		;7a82
	jp pe,07f47h		;7a83
	dec de			;7a86
	add a,h			;7a87
	or a			;7a88
	ld (hl),e		;7a89
	add a,l			;7a8a
	ld hl,(l78c4h)		;7a8b
	ld d,a			;7a8e
	adc a,b			;7a8f
	sub a			;7a90
	rra			;7a91
	ld a,a			;7a92
	pop bc			;7a93
	ld b,0c4h		;7a94
	adc a,h			;7a96
	halt			;7a97
	call z,sub_58feh	;7a98
	cp 04fh			;7a9b
	ld a,b			;7a9d
	sbc a,c			;7a9e
	pop af			;7a9f
	jp nz,0b33bh		;7aa0
	add a,e			;7aa3
	ld h,h			;7aa4
	inc e			;7aa5
	adc a,e			;7aa6
	pop de			;7aa7
	rst 38h			;7aa8
	ld hl,(00fc2h)		;7aa9
	add a,c			;7aac
	jr l7ad6h		;7aad
	add a,d			;7aaf
	add hl,de		;7ab0
	daa			;7ab1
	call nz,09980h		;7ab2
	ld (bc),a		;7ab5
	ld a,l			;7ab6
	sub c			;7ab7
sub_7ab8h:
	pop af			;7ab8
	adc a,b			;7ab9
	ld c,c			;7aba
	xor (hl)		;7abb
	or b			;7abc
	ld a,a			;7abd
	inc d			;7abe
	call nz,0c452h		;7abf
	adc a,h			;7ac2
	call nc,0067fh		;7ac3
	rst 38h			;7ac6
	ld a,a			;7ac7
	inc b			;7ac8
	ld b,c			;7ac9
	ret nz			;7aca
	ei			;7acb
	ld (hl),a		;7acc
	ld (hl),l		;7acd
	xor c			;7ace
	cp 02bh			;7acf
	ex de,hl		;7ad1
	inc (hl)		;7ad2
	ld a,a			;7ad3
	ld (hl),e		;7ad4
	xor c			;7ad5
l7ad6h:
	push af			;7ad6
	inc sp			;7ad7
	rst 30h			;7ad8
	ld b,e			;7ad9
	ld a,h			;7ada
	ld a,a			;7adb
	ld (0a9fdh),hl		;7adc
	ld a,(hl)		;7adf
	nop			;7ae0
	ld a,a			;7ae1
	scf			;7ae2
	ex (sp),hl		;7ae3
	inc a			;7ae4
	or 0fdh			;7ae5
	and 071h		;7ae7
	adc a,h			;7ae9
	ld d,c			;7aea
	pop af			;7aeb
	ld c,e			;7aec
	ld a,a			;7aed
	ld de,l4e8bh		;7aee
	adc a,l			;7af1
	ld e,l			;7af2
	ld b,0dfh		;7af3
	rst 38h			;7af5
	ret po			;7af6
	ld d,c			;7af7
	adc a,h			;7af8
	defb 0fdh,002h,065h ;illegal sequence	;7af9
	ld h,l			;7afc
	ld l,h			;7afd
	ld de,l7f3bh		;7afe
	jp nz,0f1fdh		;7b01
	call nz,0f712h		;7b04
	ld d,d			;7b07
	ld a,a			;7b08
	rst 0			;7b09
	add a,c			;7b0a
	ld l,083h		;7b0b
	adc a,l			;7b0d
	ld (hl),d		;7b0e
	ld (0acfch),a		;7b0f
	rst 38h			;7b12
	ld a,h			;7b13
	scf			;7b14
	add a,(hl)		;7b15
	ld (0290bh),a		;7b16
	add hl,de		;7b19
	sub c			;7b1a
	inc hl			;7b1b
	ex de,hl		;7b1c
	ld b,b			;7b1d
	ld (01921h),hl		;7b1e
	ld (de),a		;7b21
	ld b,d			;7b22
	sbc a,b			;7b23
	cpl			;7b24
	sbc a,c			;7b25
	inc de			;7b26
	inc e			;7b27
	sub b			;7b28
	xor 08dh		;7b29
	ld h,c			;7b2b
	call z,0fc7fh		;7b2c
	add hl,de		;7b2f
	sbc a,b			;7b30
	sbc a,h			;7b31
	push af			;7b32
	and (hl)		;7b33
	ei			;7b34
	and l			;7b35
	rst 38h			;7b36
	inc hl			;7b37
	sbc a,c			;7b38
	pop af			;7b39
	ret p			;7b3a
	ld hl,0b013h		;7b3b
	call m,02c17h		;7b3e
	sbc a,(hl)		;7b41
	ld a,a			;7b42
	call z,01181h		;7b43
	jp nz,08062h		;7b46
	ld e,b			;7b49
	adc a,h			;7b4a
	scf			;7b4b
	ld hl,(01717h)		;7b4c
	sub l			;7b4f
	ld (01229h),a		;7b50
	jp pe,01109h		;7b53
	sub c			;7b56
	sub c			;7b57
	ld hl,02902h		;7b58
	adc a,h			;7b5b
	ld b,h			;7b5c
	rst 38h			;7b5d
	ld b,l			;7b5e
	sbc a,h			;7b5f
	call nz,01c8ch		;7b60
	adc a,l			;7b63
	sbc a,e			;7b64
	ld b,080h		;7b65
	adc a,a			;7b67
	pop bc			;7b68
	inc sp			;7b69
	sbc a,h			;7b6a
	ld l,l			;7b6b
	add a,c			;7b6c
	ret nz			;7b6d
	ret			;7b6e
	sub d			;7b6f
	rla			;7b70
	sub c			;7b71
	jp nz,0717fh		;7b72
	dec hl			;7b75
	ld a,a			;7b76
	dec l			;7b77
	ld (de),a		;7b78
	inc a			;7b79
	adc a,(hl)		;7b7a
	inc h			;7b7b
	add a,b			;7b7c
	or d			;7b7d
	add a,c			;7b7e
	adc a,h			;7b7f
	ld h,b			;7b80
	add hl,de		;7b81
	ld (hl),e		;7b82
	scf			;7b83
	ld (de),a		;7b84
	ld b,(hl)		;7b85
	ld (hl),a		;7b86
	ei			;7b87
	ld e,h			;7b88
	rst 28h			;7b89
	ld (de),a		;7b8a
l7b8bh:
	adc a,d			;7b8b
	ei			;7b8c
	dec c			;7b8d
	and h			;7b8e
	and c			;7b8f
	ld b,h			;7b90
	sub c			;7b91
	ld sp,hl		;7b92
	add a,d			;7b93
	ex (sp),hl		;7b94
	add a,(hl)		;7b95
	adc a,h			;7b96
	ld d,a			;7b97
	adc a,l			;7b98
	sub d			;7b99
	rst 38h			;7b9a
	ccf			;7b9b
	add a,e			;7b9c
	ld h,089h		;7b9d
	ld c,h			;7b9f
	and 0c1h		;7ba0
	cp 055h			;7ba2
	ret p			;7ba4
sub_7ba5h:
	or l			;7ba5
	ex de,hl		;7ba6
	ld d,l			;7ba7
	jp m,l7f70h		;7ba8
	ld (hl),e		;7bab
	adc a,d			;7bac
	rst 38h			;7bad
	adc a,(hl)		;7bae
	and a			;7baf
	ld de,0a18eh		;7bb0
	ld (08232h),hl		;7bb3
	ret pe			;7bb6
	rla			;7bb7
	ld c,d			;7bb8
	ld (de),a		;7bb9
	ld a,a			;7bba
	inc l			;7bbb
	ld c,078h		;7bbc
	ld b,l			;7bbe
	ld (de),a		;7bbf
	add a,h			;7bc0
	dec l			;7bc1
	ld h,d			;7bc2
	adc a,a			;7bc3
	jp c,0eef8h		;7bc4
	ld a,a			;7bc7
	ld b,0ffh		;7bc8
	ld a,a			;7bca
	ld b,076h		;7bcb
	ld c,h			;7bcd
	halt			;7bce
	ret p			;7bcf
	ld d,l			;7bd0
	or e			;7bd1
	pop af			;7bd2
	xor 06fh		;7bd3
	pop af			;7bd5
	in a,(0f3h)		;7bd6
	ld (091efh),hl		;7bd8
	ld c,066h		;7bdb
	sub d			;7bdd
	ld c,c			;7bde
	ld a,a			;7bdf
	pop bc			;7be0
	ld sp,hl		;7be1
	ld b,b			;7be2
	ld (hl),a		;7be3
	pop bc			;7be4
	ld de,01617h		;7be5
	ld (02c22h),a		;7be8
	ld c,088h		;7beb
	jr l7b8bh		;7bed
	call nz,sub_5380h	;7bef
	jp m,094abh		;7bf2
	ld (hl),a		;7bf5
	ld b,0a9h		;7bf6
	rst 38h			;7bf8
	cp 00ah			;7bf9
	ld a,a			;7bfb
	ld hl,(l6766h)		;7bfc
	add a,d			;7bff
	and d			;7c00
	pop af			;7c01
	cp 08ah			;7c02
	ld a,l			;7c04
	xor 024h		;7c05
	dec hl			;7c07
	ret p			;7c08
	rst 10h			;7c09
	adc a,(hl)		;7c0a
	sub h			;7c0b
	sub b			;7c0c
	ld a,c			;7c0d
	sub c			;7c0e
	ld b,052h		;7c0f
	adc a,b			;7c11
	ld h,d			;7c12
	ld a,a			;7c13
	ld (hl),d		;7c14
	ld a,a			;7c15
	add a,h			;7c16
	ld a,(hl)		;7c17
	jp nz,09211h		;7c18
	sub a			;7c1b
	ret c			;7c1c
	sbc a,h			;7c1d
	adc a,d			;7c1e
	sub d			;7c1f
	ei			;7c20
	call sub_63f4h		;7c21
	ld b,0afh		;7c24
	ld a,a			;7c26
	ret po			;7c27
	ret pe			;7c28
	ld l,h			;7c29
	xor 099h		;7c2a
	rst 0			;7c2c
	add a,b			;7c2d
	ld hl,(0fa19h)		;7c2e
	or c			;7c31
l7c32h:
	xor 017h		;7c32
	pop af			;7c34
	ld sp,hl		;7c35
	ei			;7c36
	add a,c			;7c37
	ld (hl),l		;7c38
sub_7c39h:
	ld d,a			;7c39
	ld a,h			;7c3a
	ld (hl),l		;7c3b
	adc a,(hl)		;7c3c
	inc bc			;7c3d
	ld c,(hl)		;7c3e
	nop			;7c3f
	dec sp			;7c40
	add a,l			;7c41
	ld b,d			;7c42
	dec (hl)		;7c43
	daa			;7c44
	sbc a,l			;7c45
	xor (hl)		;7c46
	sub (hl)		;7c47
sub_7c48h:
	sbc a,b			;7c48
	sub c			;7c49
	sbc a,h			;7c4a
	sla d			;7c4b
	add a,l			;7c4d
	ld e,b			;7c4e
	adc a,07fh		;7c4f
	ld b,07fh		;7c51
	nop			;7c53
	add a,d			;7c54
	adc a,h			;7c55
	rst 38h			;7c56
	sbc a,(hl)		;7c57
	ld a,a			;7c58
	call z,sub_55ffh	;7c59
	ex de,hl		;7c5c
	pop af			;7c5d
	ld sp,hl		;7c5e
	inc b			;7c5f
	ld d,c			;7c60
	push hl			;7c61
	sub b			;7c62
	ld d,h			;7c63
	adc a,l			;7c64
	sbc a,b			;7c65
	ld a,d			;7c66
	ld de,097b1h		;7c67
	pop bc			;7c6a
	adc a,h			;7c6b
	rst 10h			;7c6c
	add a,l			;7c6d
	inc de			;7c6e
	sub c			;7c6f
	ld h,067h		;7c70
	adc a,e			;7c72
	cp d			;7c73
	add a,c			;7c74
	ld a,a			;7c75
	add a,09ch		;7c76
	ld de,0ff32h		;7c78
	call m,08979h		;7c7b
	add a,c			;7c7e
	cp 069h			;7c7f
sub_7c81h:
	ret po			;7c81
	dec h			;7c82
	add a,c			;7c83
	sub 05fh		;7c84
	xor 0a4h		;7c86
	defb 0edh ;next byte illegal after ed	;7c88
	jp nz,09937h		;7c89
	inc e			;7c8c
	djnz $-19		;7c8d
sub_7c8fh:
	defb 0fdh,084h ;add a,iyh	;7c8f
	sub d			;7c91
	ld a,a			;7c92
l7c93h:
	ld b,l			;7c93
	call z,09592h		;7c94
	ret z			;7c97
	ld h,089h		;7c98
	adc a,l			;7c9a
	ret			;7c9b
	cp 03bh			;7c9c
	sbc a,h			;7c9e
	adc a,d			;7c9f
	ld (01272h),hl		;7ca0
	add a,(hl)		;7ca3
	ld e,d			;7ca4
	or h			;7ca5
	push af			;7ca6
	ld b,0ffh		;7ca7
	adc a,a			;7ca9
	pop bc			;7caa
	inc d			;7cab
	sub c			;7cac
	add a,0edh		;7cad
	xor d			;7caf
	ld h,l			;7cb0
	add a,b			;7cb1
	inc de			;7cb2
	jp nz,02bffh		;7cb3
	ld (de),a		;7cb6
	ld l,(hl)		;7cb7
	call po,0fea6h		;7cb8
	ld b,l			;7cbb
	ld l,h			;7cbc
	add a,(hl)		;7cbd
	ld a,c			;7cbe
	ld hl,(0f5c2h)		;7cbf
	ld d,c			;7cc2
	call z,010fbh		;7cc3
sub_7cc6h:
	ld c,d			;7cc6
	add a,a			;7cc7
	ld h,(hl)		;7cc8
	add a,a			;7cc9
	ld e,l			;7cca
	add a,d			;7ccb
	sbc a,h			;7ccc
	adc a,h			;7ccd
	or a			;7cce
	inc de			;7ccf
	adc a,b			;7cd0
	dec h			;7cd1
	or h			;7cd2
	ld a,d			;7cd3
	ld b,0d7h		;7cd4
	rst 38h			;7cd6
	ret po			;7cd7
	sub (hl)		;7cd8
	adc a,c			;7cd9
	defb 0edh ;next byte illegal after ed	;7cda
	ld d,l			;7cdb
	ret p			;7cdc
	jp p,00019h		;7cdd
	inc h			;7ce0
	ld (l6580h+2),hl	;7ce1
	or e			;7ce4
	ex (sp),hl		;7ce5
	cp 01bh			;7ce6
	push af			;7ce8
	inc (hl)		;7ce9
	or 095h			;7cea
	push af			;7cec
	ld a,l			;7ced
	add a,(hl)		;7cee
	rst 38h			;7cef
	ld hl,01137h		;7cf0
	nop			;7cf3
	dec b			;7cf4
	inc e			;7cf5
	ret			;7cf6
	sub c			;7cf7
	ld (0d8ffh),a		;7cf8
	sbc a,h			;7cfb
	res 2,d			;7cfc
	add a,(hl)		;7cfe
sub_7cffh:
	sub a			;7cff
	add a,a			;7d00
	adc a,c			;7d01
	cp 0ceh			;7d02
	ld b,023h		;7d04
	rst 38h			;7d06
	ret m			;7d07
	add hl,hl		;7d08
	ld a,a			;7d09
	ld (hl),a		;7d0a
	ld a,a			;7d0b
	sub h			;7d0c
	rst 38h			;7d0d
	ld d,c			;7d0e
	add a,e			;7d0f
	jp pe,02391h		;7d10
	cp e			;7d13
	ld a,a			;7d14
	sbc a,a			;7d15
	sub b			;7d16
	ld a,(de)		;7d17
	jp 08432h		;7d18
	ld e,d			;7d1b
	ld l,e			;7d1c
	cp 054h			;7d1d
	ret m			;7d1f
	dec sp			;7d20
	adc a,c			;7d21
	rst 38h			;7d22
	sbc a,h			;7d23
	add a,b			;7d24
	ld (de),a		;7d25
	ld e,c			;7d26
	ei			;7d27
	call po,08123h		;7d28
	exx			;7d2b
	sbc a,h			;7d2c
	res 1,b			;7d2d
	add a,l			;7d2f
	out (087h),a		;7d30
	add a,a			;7d32
	sub h			;7d33
	ld b,05fh		;7d34
	ld a,a			;7d36
	ret nz			;7d37
	adc a,l			;7d38
	add a,h			;7d39
	adc a,c			;7d3a
	rla			;7d3b
	ld a,a			;7d3c
	sub h			;7d3d
	call po,0f3c8h		;7d3e
	ld (hl),d		;7d41
	dec sp			;7d42
	ld (hl),0bbh		;7d43
	pop bc			;7d45
	adc a,(hl)		;7d46
	ret p			;7d47
	adc a,a			;7d48
	ld a,e			;7d49
	inc sp			;7d4a
	inc l			;7d4b
	ld (0ec17h),a		;7d4c
	adc a,d			;7d4f
	defb 0fdh,07fh,08ah ;illegal sequence	;7d50
	add a,h			;7d53
	adc a,a			;7d54
	ld hl,(00d99h)		;7d55
	dec h			;7d58
	sub c			;7d59
	add a,b			;7d5a
	sbc a,b			;7d5b
	sub c			;7d5c
	sbc a,h			;7d5d
	ret nz			;7d5e
	ld a,c			;7d5f
	ld (08c89h),hl		;7d60
	rst 30h			;7d63
	pop bc			;7d64
	ret m			;7d65
	ld c,c			;7d66
	ld b,0d7h		;7d67
	ld a,a			;7d69
	ret p			;7d6a
	ccf			;7d6b
	add a,038h		;7d6c
	call z,0acfdh		;7d6e
	jp pe,l7646h		;7d71
	add a,l			;7d74
	dec b			;7d75
	ld (hl),d		;7d76
	inc hl			;7d77
	scf			;7d78
	pop bc			;7d79
	or 093h			;7d7a
	ld l,a			;7d7c
	jp nz,03785h		;7d7d
	call m,09828h		;7d80
	or c			;7d83
	ld a,a			;7d84
	ld de,0109ah		;7d85
	ld (de),a		;7d88
	ld (hl),e		;7d89
	add hl,de		;7d8a
	ld d,b			;7d8b
	inc hl			;7d8c
	ret m			;7d8d
	ld (hl),c		;7d8e
	jr nc,l7e02h		;7d8f
	sub a			;7d91
	sbc a,h			;7d92
	ld (02219h),a		;7d93
	ld (hl),a		;7d96
	ld sp,0c43ah		;7d97
	adc a,c			;7d9a
	ld b,0b7h		;7d9b
	add a,b			;7d9d
	ret po			;7d9e
	sub b			;7d9f
l7da0h:
	add a,h			;7da0
	ld a,a			;7da1
	ld d,a			;7da2
	ret			;7da3
	rla			;7da4
	xor e			;7da5
	add a,c			;7da6
	jp p,08336h		;7da7
	ld l,(hl)		;7daa
	adc a,h			;7dab
	pop bc			;7dac
	pop bc			;7dad
	call z,08a71h		;7dae
	ld h,h			;7db1
	ei			;7db2
	sub a			;7db3
	ld a,c			;7db4
	adc a,a			;7db5
	adc a,e			;7db6
	ld (de),a		;7db7
	sub d			;7db8
	cp b			;7db9
	adc a,b			;7dba
	and c			;7dbb
	sub l			;7dbc
	ld a,c			;7dbd
	cp 015h			;7dbe
	sbc a,e			;7dc0
	ld a,(de)		;7dc1
	sbc a,a			;7dc2
	inc de			;7dc3
	ret			;7dc4
	inc hl			;7dc5
	cp 029h			;7dc6
	ld sp,l78f5h		;7dc8
	ret m			;7dcb
	ld a,b			;7dcc
	ld b,h			;7dcd
	ld b,0dbh		;7dce
	rst 38h			;7dd0
	rst 28h			;7dd1
	add a,(hl)		;7dd2
	add a,h			;7dd3
	pop bc			;7dd4
	ld (hl),l		;7dd5
	ld d,(hl)		;7dd6
	ld a,a			;7dd7
	call 08180h		;7dd8
	add hl,de		;7ddb
	ld a,(hl)		;7ddc
	adc a,l			;7ddd
	ld d,a			;7dde
	ret m			;7ddf
	and d			;7de0
	call m,0f6b8h		;7de1
	daa			;7de4
	ld (hl),c		;7de5
	adc a,h			;7de6
	cp 0bch			;7de7
	sub d			;7de9
	nop			;7dea
	sub a			;7deb
	ld e,h			;7dec
	inc e			;7ded
	inc hl			;7dee
	ld (hl),a		;7def
	ld hl,02222h		;7df0
	nop			;7df3
	sbc a,c			;7df4
	ld (hl),c		;7df5
	sbc a,h			;7df6
	ret			;7df7
	ld (hl),d		;7df8
	add hl,hl		;7df9
	inc hl			;7dfa
	ld sp,0887bh		;7dfb
	ret m			;7dfe
	dec a			;7dff
	ld b,07fh		;7e00
l7e02h:
	ld a,a			;7e02
	ld b,0c4h		;7e03
	ld b,h			;7e05
	ld (hl),l		;7e06
	rst 38h			;7e07
	sub a			;7e08
	sbc a,d			;7e09
	add a,d			;7e0a
	cp 045h			;7e0b
	add a,088h		;7e0d
	add a,b			;7e0f
	add a,065h		;7e10
	ld d,l			;7e12
	ld l,h			;7e13
	inc e			;7e14
	cp (hl)			;7e15
	or 02dh			;7e16
l7e18h:
	add a,c			;7e18
	jr z,l7da0h		;7e19
	ld de,0323bh		;7e1b
	ld a,h			;7e1e
	cp 04ch			;7e1f
	ret m			;7e21
	halt			;7e22
	and e			;7e23
	rst 38h			;7e24
	call m,082cch		;7e25
	or d			;7e28
	adc a,(hl)		;7e29
	ld a,(bc)		;7e2a
	ld sp,03122h		;7e2b
	ld b,h			;7e2e
	rst 30h			;7e2f
	ld b,(hl)		;7e30
	add a,h			;7e31
	call m,006ddh		;7e32
	ld c,a			;7e35
	rst 38h			;7e36
	ret p			;7e37
	ld a,c			;7e38
l7e39h:
	ld a,a			;7e39
	in a,(015h)		;7e3a
	ld a,c			;7e3c
	add a,c			;7e3d
	add hl,hl		;7e3e
	ret m			;7e3f
	djnz l7e97h		;7e40
	ld d,l			;7e42
	dec h			;7e43
	sub h			;7e44
	add a,h			;7e45
	ld l,d			;7e46
	jp nz,03289h		;7e47
	sub c			;7e4a
	xor 021h		;7e4b
	cp e			;7e4d
	inc sp			;7e4e
	ld a,a			;7e4f
	rla			;7e50
	ld e,h			;7e51
	sub c			;7e52
	ret m			;7e53
	ld h,b			;7e54
	ld (hl),e		;7e55
	ld sp,08a29h		;7e56
	add a,l			;7e59
	ld de,092d2h		;7e5a
	cp 0adh			;7e5d
	rst 38h			;7e5f
	ld b,c			;7e60
	sbc a,b			;7e61
	sbc a,c			;7e62
	call nz,0f7fdh		;7e63
	ld b,05fh		;7e66
	ld a,a			;7e68
l7e69h:
	pop bc			;7e69
	ld (hl),b		;7e6a
	add a,b			;7e6b
	push bc			;7e6c
	ld c,b			;7e6d
	ld d,l			;7e6e
	push hl			;7e6f
	call z,084ech		;7e70
	ld e,h			;7e73
	call z,l56fah		;7e74
	ld a,h			;7e77
	ld h,0fah		;7e78
	sbc a,c			;7e7a
	adc a,d			;7e7b
	rlca			;7e7c
	ld a,h			;7e7d
	add hl,de		;7e7e
	ld l,l			;7e7f
	add a,b			;7e80
	xor c			;7e81
	add a,b			;7e82
	ld l,0feh		;7e83
	rrca			;7e85
	push bc			;7e86
	ld h,c			;7e87
	sbc a,h			;7e88
	ld (hl),c		;7e89
l7e8ah:
	add a,d			;7e8a
	adc a,09ch		;7e8b
	inc hl			;7e8d
	ld de,03712h		;7e8e
	and e			;7e91
	adc a,h			;7e92
	add a,a			;7e93
	and e			;7e94
	ld sp,hl		;7e95
	ld d,a			;7e96
l7e97h:
	ld c,h			;7e97
	or h			;7e98
	ld (hl),l		;7e99
	ld b,0ffh		;7e9a
	ld a,a			;7e9c
	pop bc			;7e9d
	ld d,h			;7e9e
	ld b,(hl)		;7e9f
	ld a,a			;7ea0
	ei			;7ea1
	add a,l			;7ea2
	ld a,h			;7ea3
	ld h,l			;7ea4
	rst 38h			;7ea5
	sbc a,l			;7ea6
	ret m			;7ea7
	sub e			;7ea8
	add a,c			;7ea9
	ld e,b			;7eaa
	ld h,e			;7eab
	rst 28h			;7eac
	ld b,(hl)		;7ead
	ex af,af'		;7eae
	sub c			;7eaf
	add hl,de		;7eb0
	add a,b			;7eb1
	dec d			;7eb2
	add a,e			;7eb3
	ld d,l			;7eb4
	add a,h			;7eb5
	ld d,050h		;7eb6
	adc a,l			;7eb8
	ld (hl),c		;7eb9
	sbc a,d			;7eba
	add a,b			;7ebb
	ld a,l			;7ebc
	and d			;7ebd
	ld bc,09290h		;7ebe
	and d			;7ec1
	rst 38h			;7ec2
	adc a,a			;7ec3
	rst 38h			;7ec4
	ld b,(hl)		;7ec5
	ld b,d			;7ec6
	or h			;7ec7
	ld h,(hl)		;7ec8
	rst 38h			;7ec9
	ex (sp),hl		;7eca
	ld c,c			;7ecb
	ld b,071h		;7ecc
	rst 38h			;7ece
	ret m			;7ecf
	scf			;7ed0
	ld b,h			;7ed1
	push iy			;7ed2
	ex de,hl		;7ed4
	ex af,af'		;7ed5
	ld h,(hl)		;7ed6
	di			;7ed7
	and h			;7ed8
	cp 069h			;7ed9
	ld h,l			;7edb
	di			;7edc
	add a,b			;7edd
	ld a,c			;7ede
	rlca			;7edf
	dec d			;7ee0
	ld l,h			;7ee1
l7ee2h:
	jp l49fah		;7ee2
	ei			;7ee5
	add a,h			;7ee6
	jr nc,l7f00h		;7ee7
	ld d,061h		;7ee9
	cp d			;7eeb
	adc a,h			;7eec
	ld a,a			;7eed
	ld (hl),c		;7eee
	ld (hl),d		;7eef
	defb 0fdh,090h,015h ;illegal sequence	;7ef0
	add a,d			;7ef3
	adc a,a			;7ef4
	inc e			;7ef5
	add a,a			;7ef6
	jr l7e8ah		;7ef7
	ld a,b			;7ef9
	inc de			;7efa
	rst 0			;7efb
	dec (hl)		;7efc
	sub h			;7efd
	rst 38h			;7efe
	inc sp			;7eff
l7f00h:
	rst 38h			;7f00
l7f01h:
	adc a,a			;7f01
	pop bc			;7f02
l7f03h:
	ld h,l			;7f03
	rst 0			;7f04
	add a,b			;7f05
	dec (hl)		;7f06
	ld a,a			;7f07
	push af			;7f08
	add a,e			;7f09
sub_7f0ah:
	ld h,d			;7f0a
	add a,b			;7f0b
l7f0ch:
	rst 8			;7f0c
	rst 30h			;7f0d
	jr z,l7f0ch		;7f0e
	or h			;7f10
	add a,c			;7f11
	call m,0d1f9h		;7f12
	add a,c			;7f15
	ld hl,l707fh		;7f16
	call pe,02679h		;7f19
	sbc a,h			;7f1c
	add a,020h		;7f1d
	ld (de),a		;7f1f
	ret m			;7f20
l7f21h:
	and 0ffh		;7f21
l7f23h:
	dec b			;7f23
sub_7f24h:
	sbc a,c			;7f24
	sub e			;7f25
	call m,01c86h		;7f26
l7f29h:
	halt			;7f29
	ld a,a			;7f2a
	adc a,h			;7f2b
l7f2ch:
	ld c,b			;7f2c
	inc de			;7f2d
	add hl,de		;7f2e
	jp m,08059h		;7f2f
	defb 0ddh,0ffh,0feh ;illegal sequence	;7f32
	ld c,0c3h		;7f35
	ld (hl),b		;7f37
	sub c			;7f38
	ld h,l			;7f39
	cp c			;7f3a
l7f3bh:
	ld a,a			;7f3b
l7f3ch:
	add a,h			;7f3c
	jr nc,$-125		;7f3d
	ld l,076h		;7f3f
sub_7f41h:
	ld d,(hl)		;7f41
	ld a,a			;7f42
	call m,08727h		;7f43
	ld h,08fh		;7f46
	adc a,h			;7f48
	rst 38h			;7f49
	and e			;7f4a
	cp 082h			;7f4b
	ld hl,01367h		;7f4d
	inc hl			;7f50
	ld sp,hl		;7f51
	ld (hl),c		;7f52
	inc hl			;7f53
	ld d,c			;7f54
	adc a,h			;7f55
	ld c,c			;7f56
	add a,d			;7f57
	ld (hl),l		;7f58
	ei			;7f59
	inc b			;7f5a
	add a,06ch		;7f5b
	rst 38h			;7f5d
	ld (hl),b		;7f5e
sub_7f5fh:
	jr l7f3ch		;7f5f
	ld a,a			;7f61
	add a,d			;7f62
	and 0ffh		;7f63
	ccf			;7f65
l7f66h:
	add a,d			;7f66
	adc a,b			;7f67
	ld b,(hl)		;7f68
	ld b,c			;7f69
	halt			;7f6a
	ld a,a			;7f6b
	ld (hl),a		;7f6c
	ld d,a			;7f6d
	and d			;7f6e
	ld (hl),e		;7f6f
l7f70h:
	cp 06ah			;7f70
	ld h,d			;7f72
sub_7f73h:
	adc a,c			;7f73
	ld hl,(0857ch)		;7f74
	ld c,b			;7f77
	ld (l77f2h),hl		;7f78
	sub c			;7f7b
	call p,084b7h		;7f7c
	push af			;7f7f
	sub (hl)		;7f80
	adc a,a			;7f81
	ld (de),a		;7f82
	add a,c			;7f83
	ld l,088h		;7f84
	ld h,d			;7f86
	ld e,c			;7f87
	rst 38h			;7f88
	call po,021fah		;7f89
	sbc a,l			;7f8c
	ld c,099h		;7f8d
	ld a,a			;7f8f
	add hl,sp		;7f90
	ld b,h			;7f91
	ld a,a			;7f92
	ld a,a			;7f93
	ld b,h			;7f94
	ld a,a			;7f95
l7f96h:
	ld b,094h		;7f96
	adc a,h			;7f98
l7f99h:
	ret p			;7f99
	adc a,e			;7f9a
	ld a,a			;7f9b
	ld (hl),d		;7f9c
	ld a,h			;7f9d
	call m,0fd2ah		;7f9e
	ld (hl),c		;7fa1
	ld l,h			;7fa2
	defb 0fdh,082h,045h ;illegal sequence	;7fa3
	ld a,a			;7fa6
	jp m,l7188h		;7fa7
	ret c			;7faa
	defb 0fdh,0cch,02ch ;illegal sequence	;7fab
	dec d			;7fae
	ld d,07ch		;7faf
	inc de			;7fb1
	add a,l			;7fb2
	adc a,h			;7fb3
	inc hl			;7fb4
	call p,sub_7ba5h	;7fb5
	ld hl,l5e85h		;7fb8
	sub c			;7fbb
	ld h,071h		;7fbc
	adc a,l			;7fbe
	add hl,bc		;7fbf
	ld c,b			;7fc0
	add a,h			;7fc1
	inc de			;7fc2
	ld hl,0cbf8h		;7fc3
	ld b,080h		;7fc6
	or 0ffh			;7fc8
	ld a,a			;7fca
	add a,d			;7fcb
	call nz,098c7h		;7fcc
	ld a,(hl)		;7fcf
	ret			;7fd0
	ld a,a			;7fd1
	ld l,h			;7fd2
	adc a,h			;7fd3
	cp 050h			;7fd4
	ld d,(hl)		;7fd6
	pop hl			;7fd7
	jp 0f7d5h		;7fd8
	exx			;7fdb
	rst 30h			;7fdc
	or e			;7fdd
l7fdeh:
	ret m			;7fde
	and 08eh		;7fdf
	and c			;7fe1
	add a,071h		;7fe2
	jp p,l76f5h		;7fe4
	ei			;7fe7
	dec d			;7fe8
	cp 01eh			;7fe9
	add a,b			;7feb
	cpl			;7fec
	sub c			;7fed
	rlca			;7fee
	add a,e			;7fef
	adc a,c			;7ff0
	sub d			;7ff1
	ld de,085f8h		;7ff2
	add a,d			;7ff5
	ld sp,l7a19h		;7ff6
	ld b,04ah		;7ff9
	cp b			;7ffb
	dec hl			;7ffc
	adc a,b			;7ffd
	rst 38h			;7ffe
	ret m			;7fff
