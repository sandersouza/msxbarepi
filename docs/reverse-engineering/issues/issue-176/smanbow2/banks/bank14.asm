; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank14.asm /tmp/smanbow2_bank_14.bin

	org 04000h

	cp d			;4000
	ret c			;4001
	cp e			;4002
	xor l			;4003
	add a,b			;4004
	inc (hl)		;4005
	jp nz,0d8b9h		;4006
	sub 010h		;4009
	dec b			;400b
	cp c			;400c
	ret nc			;400d
	ld a,0f0h		;400e
l4010h:
	ld (08311h),a		;4010
	ld (00f32h),hl		;4013
	nop			;4016
	jp l5812h		;4017
	ret			;401a
	ld a,(hl)		;401b
	sub 008h		;401c
	ld c,a			;401e
	ld d,b			;401f
l4020h:
	push hl			;4020
	ld (hl),a		;4021
	jr l407bh		;4022
	add a,01eh		;4024
	ex af,af'		;4026
	ld e,a			;4027
	ld hl,0c229h		;4028
	call p,sub_7e80h	;402b
	dec hl			;402e
	cp d			;402f
	jp c,l57b0h		;4030
	inc hl			;4033
	cp e			;4034
	jp nc,l7e03h		;4035
	cp c			;4038
	ex af,af'		;4039
	inc sp			;403a
l403bh:
	ld (0040ah),a		;403b
	ld a,(0c151h)		;403e
	add a,d			;4041
	add a,d			;4042
	inc c			;4043
	ld e,b			;4044
	ld a,b			;4045
	add a,e			;4046
	ld b,l			;4047
	jp nc,09005h		;4048
	dec d			;404b
	jr c,l4093h		;404c
	ex af,af'		;404e
	ld (hl),a		;404f
	inc hl			;4050
l4051h:
	ld (hl),a		;4051
	ld e,e			;4052
	ld a,0c1h		;4053
	ld b,047h		;4055
	ld de,00007h		;4057
	add hl,de		;405a
	ld (hl),d		;405b
	ex af,af'		;405c
	jp c,l5832h		;405d
	cp (hl)			;4060
	pop bc			;4061
	ld (0c107h),a		;4062
	exx			;4065
	add hl,hl		;4066
	or d			;4067
	inc (hl)		;4068
	xor b			;4069
	ret nz			;406a
	pop bc			;406b
	dec hl			;406c
	sbc hl,de		;406d
	ret			;406f
	cp h			;4070
	ld de,0a610h		;4071
	inc c			;4074
	dec hl			;4075
	inc de			;4076
	add hl,bc		;4077
	ld (hl),024h		;4078
	inc hl			;407a
l407bh:
	cp 081h			;407b
	inc a			;407d
	jr z,$+27		;407e
l4080h:
	ld a,(0514ch)		;4080
	ld hl,(02fc0h)		;4083
	dec b			;4086
	or d			;4087
	jr nc,l4010h		;4088
	ld (l4a62h),a		;408a
	dec e			;408d
	sub 080h		;408e
	add a,h			;4090
	ld c,e			;4091
	dec (hl)		;4092
l4093h:
	ret			;4093
l4094h:
	jp 02008h		;4094
	ld (hl),a		;4097
	ld b,024h		;4098
	nop			;409a
	ld b,(hl)		;409b
	ret nz			;409c
	ld h,h			;409d
	cp c			;409e
	and b			;409f
	push hl			;40a0
	ld h,000h		;40a1
	jr nc,l410dh		;40a3
	add hl,hl		;40a5
	nop			;40a6
	ld de,00b03h		;40a7
	ld c,b			;40aa
	add hl,de		;40ab
	push hl			;40ac
	ld l,a			;40ad
	inc c			;40ae
	dec bc			;40af
	add a,c			;40b0
	nop			;40b1
	ld (hl),h		;40b2
	add hl,de		;40b3
	and b			;40b4
	ld l,b			;40b5
	pop hl			;40b6
	ld (bc),a		;40b7
	ld c,098h		;40b8
	call 005b4h		;40ba
	pop hl			;40bd
sub_40beh:
	xor l			;40be
	and c			;40bf
	or b			;40c0
	ld l,l			;40c1
	ld b,(hl)		;40c2
	sra b			;40c3
	inc bc			;40c5
	ld (bc),a		;40c6
	jp c,l58d6h		;40c7
	cp 0e3h			;40ca
	jp nc,00104h		;40cc
	dec hl			;40cf
	cp 012h			;40d0
	ld c,001h		;40d2
	jr c,l40dbh		;40d4
	call pe,00e30h		;40d6
	pop hl			;40d9
	ret c			;40da
l40dbh:
	ld c,h			;40db
	ld a,(03cdch)		;40dc
	sub e			;40df
	add hl,de		;40e0
	ret z			;40e1
	ex (sp),hl		;40e2
	add a,b			;40e3
	dec a			;40e4
	jp z,l58cdh		;40e5
	ld a,c			;40e8
	sbc a,b			;40e9
	or 0c2h			;40ea
	ld a,b			;40ec
	sbc a,h			;40ed
	rst 20h			;40ee
	ld c,h			;40ef
	ret			;40f0
	ex af,af'		;40f1
	add hl,sp		;40f2
	ex af,af'		;40f3
	ld e,b			;40f4
	jr c,$+10		;40f5
	ld h,c			;40f7
	add a,a			;40f8
	xor c			;40f9
	nop			;40fa
l40fbh:
	ld (hl),c		;40fb
l40fch:
	in a,(066h)		;40fc
	ld c,048h		;40fe
	ld c,c			;4100
l4101h:
	daa			;4101
	ld (0c003h),a		;4102
l4105h:
	ld a,(l4700h)		;4105
	pop bc			;4108
	ld h,a			;4109
	ld a,(0c148h)		;410a
l410dh:
	ld l,a			;410d
	ld a,(hl)		;410e
	ret nz			;410f
	inc c			;4110
	inc hl			;4111
	ld e,(hl)		;4112
	inc hl			;4113
	ld c,(hl)		;4114
	ld de,07d23h		;4115
	ld (l7c0dh),a		;4118
	ld (00015h),a		;411b
	ld d,000h		;411e
	ld hl,l716fh		;4120
	add hl,de		;4123
	ld (hl),c		;4124
	ld a,(bc)		;4125
	dec hl			;4126
	ex de,hl		;4127
	ld bc,00910h		;4128
	xor l			;412b
	add a,b			;412c
	ld a,(hl)		;412d
	or a			;412e
	jr z,l414eh		;412f
	ld h,e			;4131
	add hl,bc		;4132
	inc b			;4133
	jr $+6			;4134
	ld e,d			;4136
	inc de			;4137
	inc b			;4138
	ld c,0d6h		;4139
	inc b			;413b
	add hl,bc		;413c
	inc b			;413d
	or b			;413e
	inc b			;413f
l4140h:
	inc b			;4140
	ret nz			;4141
	ex de,hl		;4142
	rlca			;4143
	ldir			;4144
	ret			;4146
	push hl			;4147
	ld de,0122bh		;4148
	call c,01490h		;414b
l414eh:
	inc bc			;414e
	add hl,de		;414f
	djnz l4197h		;4150
	ld sp,hl		;4152
	or c			;4153
	sbc a,h			;4154
	ld l,b			;4155
	ld h,l			;4156
	ld (0325ah),hl		;4157
	jp m,00692h		;415a
	ld sp,hl		;415d
	sbc a,e			;415e
	inc h			;415f
	ret m			;4160
	ld (bc),a		;4161
	push af			;4162
	and (hl)		;4163
	xor d			;4164
	di			;4165
	rlca			;4166
	nop			;4167
	call p,021c1h		;4168
	xor a			;416b
	ld e,h			;416c
	call 0048bh		;416d
	ld (0133ah),hl		;4170
	sub l			;4173
	nop			;4174
	ld b,a			;4175
l4176h:
	add a,a			;4176
	add a,b			;4177
	add a,012h		;4178
	ld (l5cbeh),a		;417a
	inc (hl)		;417d
	ld hl,011beh		;417e
	call sub_5a1bh		;4181
	dec b			;4184
	push bc			;4185
	nop			;4186
	cp 05ch			;4187
	ld a,018h		;4189
	ld (l5d00h),a		;418b
	inc l			;418e
	ld a,(0a708h)		;418f
	sub c			;4192
	add a,e			;4193
	nop			;4194
	sbc a,d			;4195
	ld d,b			;4196
l4197h:
	ld e,c			;4197
	dec a			;4198
	ld de,09538h		;4199
	ld bc,00106h		;419c
	ld a,c			;419f
	inc bc			;41a0
	ld a,d			;41a1
	ld (0c1f7h),a		;41a2
	ld a,e			;41a5
	ld d,e			;41a6
	ld b,d			;41a7
	ld b,c			;41a8
	jp nz,0194dh		;41a9
	xor l			;41ac
	ld h,b			;41ad
l41aeh:
	cp l			;41ae
	ld e,c			;41af
	dec hl			;41b0
	ld b,08ah		;41b1
	jp nc,l4094h		;41b3
	ld a,a			;41b6
	jp c,l59b3h		;41b7
	djnz $+18		;41ba
	rst 30h			;41bc
	inc hl			;41bd
	dec bc			;41be
	push bc			;41bf
l41c0h:
	ld b,00fh		;41c0
	ld (0c5e5h),hl		;41c2
	cp l			;41c5
	jp nc,0d011h		;41c6
	ld e,c			;41c9
	defb 0ddh,0a0h,001h ;illegal sequence	;41ca
	push bc			;41cd
	and 07fh		;41ce
	sbc a,b			;41d0
	pop af			;41d1
	ld (0445ch),hl		;41d2
	add hl,de		;41d5
	sbc a,h			;41d6
	push af			;41d7
	ld (03a5bh),hl		;41d8
	adc a,h			;41db
	add a,b			;41dc
	ld sp,l59e7h		;41dd
	inc de			;41e0
	dec a			;41e1
	jp 008deh		;41e2
	ld e,c			;41e5
	ld bc,00003h		;41e6
	or d			;41e9
	sbc a,b			;41ea
	pop hl			;41eb
	ld de,046c6h		;41ec
	inc bc			;41ef
	and e			;41f0
	ld l,07eh		;41f1
	ret p			;41f3
	ld c,(hl)		;41f4
	ld e,h			;41f5
	add a,034h		;41f6
	call m,00404h		;41f8
	ld e,l			;41fb
	ex af,af'		;41fc
	ld b,a			;41fd
	push bc			;41fe
	ld hl,08cfah		;41ff
	exx			;4202
	or l			;4203
	and d			;4204
	add a,e			;4205
	ld b,(hl)		;4206
	add a,b			;4207
	add a,a			;4208
	ld bc,0e1c1h		;4209
	inc hl			;420c
	djnz $-84		;420d
	ld a,(01294h)		;420f
	add a,099h		;4212
	inc a			;4214
	inc hl			;4215
	rst 10h			;4216
	ld b,e			;4217
	pop bc			;4218
	djnz l41aeh		;4219
	ld a,0b2h		;421b
	inc c			;421d
	cp (hl)			;421e
	dec l			;421f
	add a,01ah		;4220
	and h			;4222
	dec d			;4223
	rst 8			;4224
	dec d			;4225
	ld e,h			;4226
	ld (007d3h),a		;4227
	defb 0fdh,0cah,0efh ;illegal sequence	;422a
	inc b			;422d
	add hl,bc		;422e
	ld h,0ebh		;422f
	ld e,h			;4231
	ld (015edh),hl		;4232
sub_4235h:
	and c			;4235
	pop af			;4236
	inc b			;4237
	nop			;4238
	ld (l4dd4h),a		;4239
	ld b,0f6h		;423c
	ld e,d			;423e
	ld hl,l5382h		;423f
	adc a,h			;4242
	ld a,03fh		;4243
	ld (024e2h),a		;4245
	sbc a,b			;4248
	ret c			;4249
	xor a			;424a
	rra			;424b
	jp c,0dfcah		;424c
	jp nc,05a63h		;424f
	dec b			;4252
	jp 08736h		;4253
	ld l,c			;4256
	sbc a,c			;4257
	ld sp,0f304h		;4258
	sub h			;425b
	add hl,sp		;425c
	inc bc			;425d
	ld d,d			;425e
	rlca			;425f
	sbc a,(hl)		;4260
	ld h,l			;4261
l4262h:
	ld b,0b6h		;4262
	ret nz			;4264
	ld e,d			;4265
	call sub_5b11h		;4266
	call sub_5906h		;4269
	ld l,d			;426c
	call sub_5ab7h		;426d
	and h			;4270
	ld h,e			;4271
	inc a			;4272
	and b			;4273
	inc l			;4274
	ld l,e			;4275
	ld (hl),b		;4276
	ret			;4277
	dec l			;4278
l4279h:
	ld hl,0a04bh		;4279
	cp h			;427c
	inc d			;427d
	ld (hl),l		;427e
	jp p,020cch		;427f
	sbc a,b			;4282
	ld c,l			;4283
	ld a,a			;4284
	and b			;4285
	jr l42a4h		;4286
	cp 006h			;4288
	jr z,l42afh		;428a
	ld b,0feh		;428c
	rlca			;428e
	jr z,l42bfh		;428f
	cp 0bfh			;4291
	ld a,(bc)		;4293
	rst 8			;4294
	ld (03065h),a		;4295
	xor 020h		;4298
	ld l,d			;429a
	ld hl,0e1cdh		;429b
	dec hl			;429e
	rst 8			;429f
	cp h			;42a0
	ld (de),a		;42a1
	inc c			;42a2
	and c			;42a3
l42a4h:
	add hl,sp		;42a4
	ld b,a			;42a5
	ret			;42a6
	xor d			;42a7
	ld h,e			;42a8
	ld hl,05d09h		;42a9
	add hl,de		;42ac
	rlca			;42ad
	ret			;42ae
l42afh:
	ld hl,020dch		;42af
	ld de,l61a2h		;42b2
	pop bc			;42b5
	ld (bc),a		;42b6
	inc h			;42b7
	rst 18h			;42b8
	ld (bc),a		;42b9
	and a			;42ba
	ld (bc),a		;42bb
	jp p,05c26h		;42bc
l42bfh:
	xor 0a6h		;42bf
	call nz,0e310h		;42c1
	ld (bc),a		;42c4
	djnz l430bh		;42c5
	ld e,l			;42c7
	and e			;42c8
	scf			;42c9
	ld b,a			;42ca
	ld e,e			;42cb
	rst 0			;42cc
	ld b,03ah		;42cd
	rst 28h			;42cf
	ld l,a			;42d0
	ld (06ff0h),a		;42d1
	jp po,03a35h		;42d4
	call 0fe20h		;42d7
l42dah:
	ld e,d			;42da
	jr z,l42e6h		;42db
	ld a,0feh		;42dd
	ld a,h			;42df
	jr z,l4279h		;42e0
l42e2h:
	inc b			;42e2
	sbc a,(hl)		;42e3
	jr z,l431ch		;42e4
l42e6h:
	ret nc			;42e6
	ld c,c			;42e7
	ld hl,l7e10h		;42e8
	push af			;42eb
sub_42ech:
	add hl,de		;42ec
	jp c,0c174h		;42ed
	and d			;42f0
	defb 0edh ;next byte illegal after ed	;42f1
	add a,055h		;42f2
	push af			;42f4
	inc a			;42f5
	rla			;42f6
	ld (hl),05bh		;42f7
	cp a			;42f9
	dec de			;42fa
	ld hl,l5eebh		;42fb
	ret pe			;42fe
	inc h			;42ff
	ccf			;4300
	ld b,a			;4301
l4302h:
	ld c,h			;4302
	ld a,(0800fh)		;4303
	ld b,a			;4306
	ld a,(de)		;4307
	cp 0c0h			;4308
	ret nc			;430a
l430bh:
	xor e			;430b
	sbc a,c			;430c
	jp z,l5b29h		;430d
	sbc a,l			;4310
	ld a,(bc)		;4311
	ld l,d			;4312
l4313h:
	ld e,e			;4313
	sub (hl)		;4314
	ld b,d			;4315
	call 09985h		;4316
	ld l,d			;4319
	dec b			;431a
	add a,a			;431b
l431ch:
	ld (hl),d		;431c
	inc b			;431d
	jr nz,$+60		;431e
	ld l,d			;4320
	ld d,(hl)		;4321
	add a,b			;4322
	jr c,l4313h		;4323
	ret			;4325
l4326h:
	sbc a,h			;4326
	call c,0ed26h		;4327
	ld e,e			;432a
	ex (sp),hl		;432b
	or e			;432c
	jp p,02a0dh		;432d
	rla			;4330
	inc d			;4331
	call nz,0c369h		;4332
	call nz,0d65fh		;4335
	out (0c6h),a		;4338
	ld h,(hl)		;433a
	ld h,a			;433b
	inc l			;433c
	ld l,c			;433d
	ld a,(bc)		;433e
	ex de,hl		;433f
	pop hl			;4340
	jp sub_593bh+1		;4341
	exx			;4344
	sbc a,e			;4345
	dec h			;4346
	adc a,(hl)		;4347
	ld hl,095feh		;4348
	sub d			;434b
	ld d,c			;434c
	cp 079h			;434d
	sbc a,e			;434f
	ld d,h			;4350
	add a,0a3h		;4351
	rst 30h			;4353
	djnz l437ch		;4354
	inc bc			;4356
	ret			;4357
	rlca			;4358
l4359h:
	jr z,l4359h		;4359
	or h			;435b
	jr c,$-38		;435c
	ld e,e			;435e
	ex af,af'		;435f
	ld d,h			;4360
	inc bc			;4361
	ld d,0cch		;4362
	ld d,(hl)		;4364
	ld d,003h		;4365
	adc a,e			;4367
	rlca			;4368
	ld b,b			;4369
	jr nz,l436eh		;436a
	rst 28h			;436c
	ld (de),a		;436d
l436eh:
	ld e,h			;436e
	nop			;436f
	ld (bc),a		;4370
	jr nz,$+4		;4371
	call nz,sub_6008h	;4373
	ld (bc),a		;4376
	add a,b			;4377
	sub e			;4378
	ld de,00200h		;4379
l437ch:
	jr nz,$+25		;437c
	ld l,b			;437e
	xor l			;437f
	ld d,d			;4380
	ex af,af'		;4381
	ld h,h			;4382
	ld (bc),a		;4383
	djnz $+4		;4384
	ld c,c			;4386
	jr l438bh		;4387
	jr nz,l438dh		;4389
l438bh:
	jr z,l438fh		;438b
l438dh:
	ld d,030h		;438d
l438fh:
	jr l436eh		;438f
	ld b,c			;4391
	ld (bc),a		;4392
	ld h,b			;4393
	djnz l43d0h		;4394
	ld (hl),b		;4396
	dec b			;4397
	ld (00288h),hl		;4398
	and b			;439b
	jr l43d0h		;439c
	add a,b			;439e
	ld (bc),a		;439f
	ld l,d			;43a0
	djnz l43ffh		;43a1
	ld a,b			;43a3
	ex af,af'		;43a4
	ld a,(hl)		;43a5
	adc a,c			;43a6
	ex af,af'		;43a7
	ld a,(hl)		;43a8
	ld a,b			;43a9
	ld (bc),a		;43aa
	sub b			;43ab
	ld (bc),a		;43ac
	inc bc			;43ad
	xor b			;43ae
	jr $-97			;43af
	nop			;43b1
	ld e,h			;43b2
	ld d,b			;43b3
	ld b,h			;43b4
	and b			;43b5
	djnz $-65		;43b6
	ex af,af'		;43b8
	defb 0ddh,0aah,002h ;illegal sequence	;43b9
	pop af			;43bc
	pop hl			;43bd
	nop			;43be
	ld bc,0c101h		;43bf
	nop			;43c2
	ret nc			;43c3
	dec bc			;43c4
	xor h			;43c5
	ret po			;43c6
	inc bc			;43c7
	ld h,d			;43c8
	ld (bc),a		;43c9
	ld (de),a		;43ca
	sbc a,c			;43cb
	cp b			;43cc
	ld c,(hl)		;43cd
	inc e			;43ce
	ld e,b			;43cf
l43d0h:
	jr $+28			;43d0
	xor b			;43d2
	ret nc			;43d3
	rst 30h			;43d4
	ld bc,0eb80h		;43d5
	inc l			;43d8
	ld l,05ch		;43d9
	ld (bc),a		;43db
	dec e			;43dc
	nop			;43dd
	pop hl			;43de
	inc bc			;43df
	add hl,hl		;43e0
	nop			;43e1
	ld b,002h		;43e2
	ld b,075h		;43e4
	nop			;43e6
	sbc a,c			;43e7
l43e8h:
	nop			;43e8
	jr $-110		;43e9
	jr nz,l43f1h		;43eb
	djnz $-54		;43ed
	dec de			;43ef
	rla			;43f0
l43f1h:
	inc c			;43f1
	nop			;43f2
	jp z,0464ah		;43f3
	scf			;43f6
	xor d			;43f7
	ld c,a			;43f8
	inc bc			;43f9
	ld (de),a		;43fa
	dec sp			;43fb
	push hl			;43fc
	ld e,c			;43fd
	inc bc			;43fe
l43ffh:
	ld e,c			;43ff
	cp e			;4400
	ld c,d			;4401
	inc l			;4402
	sbc a,e			;4403
	ld c,049h		;4404
	cp e			;4406
	inc (hl)		;4407
	ld (hl),a		;4408
	pop hl			;4409
	inc l			;440a
	rrc c			;440b
	ld c,09fh		;440d
	nop			;440f
	dec (hl)		;4410
	ld a,(bc)		;4411
	cp b			;4412
	ld (hl),d		;4413
	jr nz,$+118		;4414
	ld e,l			;4416
	jp z,0a03fh		;4417
	ret z			;441a
	ld d,e			;441b
	ld e,l			;441c
	or b			;441d
	jp z,0b762h		;441e
	sub b			;4421
	ld a,r			;4422
	call 06828h		;4424
	ld h,d			;4427
	or c			;4428
	ld bc,l642dh+1		;4429
	call sub_5ef0h		;442c
	call 016d4h		;442f
	ld e,002h		;4432
	ld h,d			;4434
	or 026h			;4435
	ld h,(hl)		;4437
	add a,b			;4438
	ld (l5f02h),a		;4439
	sub l			;443c
	dec d			;443d
	ld e,l			;443e
	ld e,l			;443f
	ld (08f06h),a		;4440
	exx			;4443
	xor l			;4444
	ex af,af'		;4445
	jp nc,l5d7bh		;4446
	sbc a,a			;4449
	adc a,l			;444a
	cp 0a0h			;444b
	ld b,051h		;444d
	inc bc			;444f
	jp 0a306h		;4450
	inc b			;4453
	cp 014h			;4454
	ld b,059h		;4456
	ld b,0a9h		;4458
	ld (l461ch),hl		;445a
	dec de			;445d
	ld e,l			;445e
	add a,h			;445f
	jp z,l5803h		;4460
	or d			;4463
	ld a,(bc)		;4464
	ld b,0c3h		;4465
	ld c,e			;4467
	dec c			;4468
	call nc,0042bh		;4469
	ld e,h			;446c
	ld h,d			;446d
	ld (de),a		;446e
	ld a,(de)		;446f
	ld e,l			;4470
	ld b,(hl)		;4471
	ld h,c			;4472
	and (hl)		;4473
	inc bc			;4474
	cp a			;4475
	ld e,l			;4476
	and b			;4477
	ld b,b			;4478
	jr $+95			;4479
	ld b,(hl)		;447b
	dec c			;447c
	ld a,0bah		;447d
	add a,b			;447f
	ld b,a			;4480
	rst 10h			;4481
	ld b,d			;4482
	dec a			;4483
	cp b			;4484
	ld hl,00584h		;4485
	ld a,(l5d19h)		;4488
	sbc a,0ceh		;448b
	add hl,de		;448d
	jr l4501h		;448e
l4490h:
	inc d			;4490
	inc a			;4491
	inc d			;4492
	in a,(03dh)		;4493
	inc d			;4495
	ld (hl),c		;4496
	ld b,(hl)		;4497
	cp 09eh			;4498
	ret m			;449a
	ld a,(bc)		;449b
	out (049h),a		;449c
	ld de,0d6c2h		;449e
	pop bc			;44a1
	bit 1,a			;44a2
	ld b,0d5h		;44a4
	add a,b			;44a6
	call p,0cb5dh		;44a7
	ld b,l			;44aa
	ld d,a			;44ab
	adc a,a			;44ac
	ld b,091h		;44ad
	adc a,l			;44af
	ld d,a			;44b0
	ld a,b			;44b1
	ld e,d			;44b2
	jp c,0fea0h		;44b3
	ld d,b			;44b6
	jp c,01305h		;44b7
	ld e,(hl)		;44ba
	ld a,r			;44bb
	and 014h		;44bd
	ld b,066h		;44bf
	xor b			;44c1
	ld d,(hl)		;44c2
	inc de			;44c3
	xor e			;44c4
	inc hl			;44c5
	jp nc,018b4h		;44c6
	ret			;44c9
	ld (de),a		;44ca
	inc bc			;44cb
	dec c			;44cc
	jp nz,l5e1fh		;44cd
	xor a			;44d0
	ld de,03a2ah		;44d1
	dec d			;44d4
	ccf			;44d5
	call z,01944h		;44d6
	ld d,b			;44d9
	ld c,e			;44da
	add a,e			;44db
	inc a			;44dc
	jp c,l5e30h		;44dd
	inc b			;44e0
	dec sp			;44e1
	add a,d			;44e2
	ld c,b			;44e3
	ld e,(hl)		;44e4
	sbc a,a			;44e5
	jp po,03207h		;44e6
	dec b			;44e9
	ld l,c			;44ea
	ret nz			;44eb
	inc hl			;44ec
	ld a,028h		;44ed
	ld h,a			;44ef
	adc a,c			;44f0
	ret			;44f1
	and c			;44f2
	dec h			;44f3
	sbc a,e			;44f4
	ld h,h			;44f5
	add hl,hl		;44f6
	inc h			;44f7
	inc b			;44f8
	ld e,083h		;44f9
	ld l,h			;44fb
	ld e,d			;44fc
	ld e,(hl)		;44fd
	ld e,014h		;44fe
	inc (hl)		;4500
l4501h:
	nop			;4501
	sub e			;4502
	sub 006h		;4503
	ld e,a			;4505
	add a,018h		;4506
	ld a,(02157h)		;4508
	sbc a,e			;450b
	ld (hl),00eh		;450c
	sub c			;450e
	add a,e			;450f
	ld e,d			;4510
	ld e,(hl)		;4511
	and 051h		;4512
	inc b			;4514
	jp 02700h		;4515
	ld e,l			;4518
	sub b			;4519
	jp z,l5e7ch		;451a
	ld (00691h),a		;451d
	add a,c			;4520
	sub a			;4521
l4522h:
	rlca			;4522
	ld a,(bc)		;4523
	call sub_5e89h		;4524
	jp nc,0f869h		;4527
	ret			;452a
	ret z			;452b
	rst 0			;452c
	add a,05dh		;452d
	xor (hl)		;452f
	ld (hl),h		;4530
	adc a,07eh		;4531
	dec de			;4533
	cp d			;4534
	ret nc			;4535
	cp e			;4536
	rst 18h			;4537
	dec sp			;4538
	ld b,h			;4539
	sbc a,d			;453a
	ld c,0a3h		;453b
	ld e,(hl)		;453d
	sbc a,d			;453e
	add a,b			;453f
	ld a,(bc)		;4540
	jp z,l5ea9h		;4541
	ld (hl),005h		;4544
	ret p			;4546
	adc a,(hl)		;4547
	ret p			;4548
	dec hl			;4549
	ld e,b			;454a
	ld a,098h		;454b
	inc bc			;454d
	ld (hl),e		;454e
	ld e,a			;454f
	or 00eh			;4550
	ld a,0d3h		;4552
	dec d			;4554
	ex af,af'		;4555
	inc b			;4556
	ld a,a			;4557
	add a,l			;4558
sub_4559h:
	ret nc			;4559
	ld a,(l6916h)		;455a
	pop hl			;455d
	rst 30h			;455e
	push bc			;455f
	or b			;4560
	jp c,l493ah		;4561
	dec e			;4564
	ld d,h			;4565
	ld (0c103h),a		;4566
	sub d			;4569
	jp po,0831eh		;456a
	ld d,d			;456d
l456eh:
	inc bc			;456e
	ld a,b			;456f
	ret nz			;4570
	adc a,h			;4571
	call 00f32h		;4572
	dec b			;4575
	ld l,094h		;4576
	dec l			;4578
	ld sp,0fe6bh		;4579
	ld sp,03108h		;457c
	ld (004d0h),hl		;457f
	sbc a,a			;4582
	jp 010e6h		;4583
	ret z			;4586
	and d			;4587
	ret po			;4588
	add a,00fh		;4589
	cp 023h			;458b
	and 0d0h		;458d
	xor 051h		;458f
	ld bc,l51b7h+2		;4591
	ld e,b			;4594
	ld l,l			;4595
	jr l45f7h		;4596
	ld b,094h		;4598
	ld a,(02103h)		;459a
	nop			;459d
	ld d,e			;459e
	ld e,a			;459f
	jp 002e9h		;45a0
	ld a,(l642dh)		;45a3
	adc a,h			;45a6
	call 0cf62h		;45a7
	cp 0aah			;45aa
	inc sp			;45ac
	add hl,de		;45ad
	ld d,b			;45ae
	adc a,c			;45af
	inc h			;45b0
	jp nc,02114h		;45b1
	ld l,h			;45b4
	ld (hl),e		;45b5
	ld a,(de)		;45b6
	call z,05080h		;45b7
	inc bc			;45ba
	ld (hl),c		;45bb
	dec b			;45bc
	ld (hl),e		;45bd
	jr nz,l45c6h		;45be
	jr nc,l45c9h		;45c0
	nop			;45c2
	ld (hl),b		;45c3
	inc b			;45c4
	ld (hl),b		;45c5
l45c6h:
	ld de,07706h		;45c6
l45c9h:
	rlca			;45c9
	call m,01714h		;45ca
	ld bc,03b05h		;45cd
	ld b,l			;45d0
	add a,h			;45d1
	dec c			;45d2
	rlca			;45d3
	ld (hl),b		;45d4
	nop			;45d5
	rra			;45d6
	ld (hl),l		;45d7
	rla			;45d8
	rlca			;45d9
	halt			;45da
	rlca			;45db
	rrca			;45dc
	rra			;45dd
	jp nc,l4740h		;45de
	ld (bc),a		;45e1
	ld b,c			;45e2
	ld h,b			;45e3
	inc b			;45e4
	rra			;45e5
	rst 8			;45e6
	jp z,09328h		;45e7
	adc a,c			;45ea
	adc a,c			;45eb
	and 0efh		;45ec
	dec d			;45ee
	dec b			;45ef
	add a,c			;45f0
	ld (de),a		;45f1
	sub h			;45f2
	sbc a,d			;45f3
	jr nz,$+8		;45f4
	rst 38h			;45f6
l45f7h:
	jp z,0a4aah		;45f7
	jp z,03a18h		;45fa
	ld b,e			;45fd
	ld e,a			;45fe
	rst 8			;45ff
	ld b,h			;4600
	inc bc			;4601
	ld (00263h),a		;4602
l4605h:
	add a,e			;4605
	ld c,c			;4606
	ld e,a			;4607
	and b			;4608
	inc c			;4609
	adc a,c			;460a
	ld b,h			;460b
	add hl,bc		;460c
	ld h,h			;460d
	ld (bc),a		;460e
	rla			;460f
l4610h:
	add a,h			;4610
	ld e,a			;4611
	xor 013h		;4612
l4614h:
	jp z,004cfh		;4614
	rlca			;4617
	inc b			;4618
	add hl,de		;4619
	ret			;461a
	cpl			;461b
l461ch:
	push hl			;461c
	add hl,hl		;461d
	inc b			;461e
	ld c,c			;461f
	ex af,af'		;4620
	ld hl,l4a87h		;4621
	inc bc			;4624
	ld b,b			;4625
	ld (l5d22h),hl		;4626
	in a,(046h)		;4629
	xor 0d8h		;462b
	ld c,d			;462d
	rlca			;462e
	ret			;462f
l4630h:
	ld l,l			;4630
	sbc a,(hl)		;4631
	ld (hl),h		;4632
	jp z,l4e00h		;4633
	ld h,b			;4636
	sbc a,d			;4637
	inc b			;4638
	sub 00eh		;4639
	ld (0eaech),a		;463b
	ld d,e			;463e
	jp pe,03a18h		;463f
	dec h			;4642
	ld de,l5024h		;4643
	ld h,b			;4646
	push hl			;4647
	ld b,l			;4648
	add a,003h		;4649
	ld l,b			;464b
	inc bc			;464c
	ld sp,00389h		;464d
	rst 0			;4650
	inc bc			;4651
	adc a,h			;4652
	defb 0edh ;next byte illegal after ed	;4653
	inc bc			;4654
	ld hl,l6110h		;4655
	inc bc			;4658
	inc sp			;4659
	ld h,c			;465a
	ret			;465b
	pop hl			;465c
	add hl,sp		;465d
	ld c,c			;465e
	ld d,d			;465f
	xor b			;4660
	jp z,l52cfh		;4661
	ld l,0d9h		;4664
	nop			;4666
	ld (l5d26h),a		;4667
	jp z,l618dh		;466a
l466dh:
	ld a,066h		;466d
	ld (bc),a		;466f
	inc c			;4670
	ld a,(bc)		;4671
	rrca			;4672
	jp l6167h		;4673
	jr nz,l468eh		;4676
	nop			;4678
	jr nz,l4630h		;4679
	ld b,020h		;467b
	sbc a,d			;467d
	dec d			;467e
	dec (hl)		;467f
	inc bc			;4680
	inc c			;4681
	add hl,bc		;4682
	ld (0eaafh),hl		;4683
	ld (0206dh),hl		;4686
	ld (hl),h		;4689
	ld d,(hl)		;468a
	jr nz,$+6		;468b
	rst 10h			;468d
l468eh:
	jr nz,l4610h		;468e
	jr nz,l4614h		;4690
	inc bc			;4692
	call pe,06026h		;4693
	ret z			;4696
	ld h,c			;4697
	or a			;4698
	ld h,b			;4699
	jr $-102		;469a
	dec e			;469c
	ex af,af'		;469d
	ret nz			;469e
	dec e			;469f
	call 06241h		;46a0
	jp 0d273h		;46a3
	ld l,a			;46a6
	or 039h			;46a7
	ld a,(0b389h)		;46a9
	inc c			;46ac
	ld b,00ch		;46ad
	xor l			;46af
	inc bc			;46b0
	inc e			;46b1
	ld c,a			;46b2
	call m,0791ch		;46b3
	ld e,(hl)		;46b6
	cpl			;46b7
	ld (hl),h		;46b8
	ld b,0cah		;46b9
	ld (hl),h		;46bb
	ccf			;46bc
	dec b			;46bd
	dec h			;46be
	inc de			;46bf
	ld l,b			;46c0
	jp l7e65h		;46c1
	ld (00757h),hl		;46c4
	ld a,e			;46c7
	ld h,a			;46c8
	jp 022b3h		;46c9
	sub h			;46cc
	sub c			;46cd
	ld (hl),c		;46ce
	inc b			;46cf
	ld h,d			;46d0
	ld (09167h),hl		;46d1
	ld a,(0cc8eh)		;46d4
	add a,a			;46d7
	ld hl,l632eh		;46d8
	add a,(hl)		;46db
	ld hl,01f21h		;46dc
	dec b			;46df
	or (hl)			;46e0
	and e			;46e1
	cpl			;46e2
	inc h			;46e3
	and a			;46e4
	inc e			;46e5
	ld e,e			;46e6
	djnz l471fh		;46e7
	ld c,h			;46e9
	dec b			;46ea
	push bc			;46eb
	ld d,e			;46ec
l46edh:
	ld de,l6a5bh		;46ed
	dec bc			;46f0
	ld b,038h		;46f1
	adc a,b			;46f3
	jr l476fh		;46f4
	or l			;46f6
	inc c			;46f7
	cp c			;46f8
	call nz,sub_700bh+1	;46f9
	jp po,0a60ch		;46fc
	pop hl			;46ff
l4700h:
	dec b			;4700
	out (005h),a		;4701
	jp 01897h		;4703
	pop hl			;4706
	dec (hl)		;4707
	nop			;4708
	ld h,h			;4709
	dec b			;470a
	pop af			;470b
	ld e,0e6h		;470c
	dec a			;470e
	pop hl			;470f
l4710h:
	inc c			;4710
	ld e,018h		;4711
	jp 0050fh		;4713
	ld a,d			;4716
	ld (hl),b		;4717
	ld a,h			;4718
	ld e,e			;4719
	rla			;471a
	and d			;471b
	ld a,(l5d1fh)		;471c
l471fh:
	call nz,0f8c9h		;471f
	ld e,h			;4722
	and h			;4723
	ld b,d			;4724
	ld (de),a		;4725
	ld h,d			;4726
	rst 20h			;4727
l4728h:
	sub b			;4728
	jr c,l46edh		;4729
	or d			;472b
	jp z,01403h		;472c
	ld a,(0c240h)		;472f
	pop hl			;4732
	ld hl,00640h		;4733
	add hl,sp		;4736
	jp nz,0e1d6h		;4737
	inc d			;473a
	inc b			;473b
	ld (03d4ch),a		;473c
	ld (bc),a		;473f
l4740h:
	ld b,c			;4740
	or d			;4741
	inc bc			;4742
	djnz $-46		;4743
	ld a,0f0h		;4745
	inc e			;4747
	ld a,(bc)		;4748
	ld (0023ch),a		;4749
	dec de			;474c
	adc a,c			;474d
	exx			;474e
	rra			;474f
	ld a,0cbh		;4750
	ret nz			;4752
	ld c,c			;4753
	inc hl			;4754
	ld b,03eh		;4755
	adc a,h			;4757
l4758h:
	daa			;4758
	jp nz,090e0h		;4759
	add a,017h		;475c
	ret p			;475e
	daa			;475f
	ld d,(hl)		;4760
	ret			;4761
	jp nc,0d2e6h		;4762
	ld e,b			;4765
	or 067h			;4766
	call nc,029b4h		;4768
	ld a,e			;476b
l476ch:
	ld h,d			;476c
	scf			;476d
	inc c			;476e
l476fh:
	ld (00a0ah),a		;476f
	ld a,(l6266h)		;4772
	sbc a,015h		;4775
	add a,(hl)		;4777
	add hl,bc		;4778
	ld b,09bh		;4779
	ld de,l62b0h		;477b
	sub l			;477e
	jp m,l66b4h		;477f
	ld h,d			;4782
	sub e			;4783
	inc bc			;4784
	sbc a,d			;4785
l4786h:
	ld h,d			;4786
	ld hl,l6379h		;4787
	dec c			;478a
	sbc a,d			;478b
	ld a,c			;478c
	ld (hl),b		;478d
	jr z,$-36		;478e
	cp a			;4790
	ld hl,03e09h		;4791
	inc l			;4794
	dec h			;4795
	ld (022b8h),a		;4796
	ret c			;4799
	add hl,hl		;479a
	ld c,c			;479b
l479ch:
	scf			;479c
	ld h,0b5h		;479d
	add a,c			;479f
	inc l			;47a0
	nop			;47a1
	dec c			;47a2
	dec b			;47a3
	add a,h			;47a4
	sbc a,b			;47a5
	ld a,(0c638h)		;47a6
	adc a,d			;47a9
	sbc a,(hl)		;47aa
	inc b			;47ab
	inc sp			;47ac
	ld a,(02cb8h)		;47ad
	ld (0fe04h),hl		;47b0
	inc b			;47b3
	ret nc			;47b4
	adc a,e			;47b5
	ld h,d			;47b6
	ld h,a			;47b7
	daa			;47b8
	xor l			;47b9
	jp po,00c33h		;47ba
	ld b,a			;47bd
	push hl			;47be
	ld a,(bc)		;47bf
	cp b			;47c0
	ret c			;47c1
	jp pe,0b88ch		;47c2
	ret nc			;47c5
	ld c,h			;47c6
	add a,e			;47c7
	inc c			;47c8
	ld bc,0c6c2h		;47c9
	ld a,(bc)		;47cc
	ld c,008h		;47cd
	ld e,0b8h		;47cf
	inc hl			;47d1
	ld c,b			;47d2
	ld (0dabah),a		;47d3
	inc hl			;47d6
	push de			;47d7
	and 0cah		;47d8
	ld l,006h		;47da
	call nz,06671h		;47dc
	inc b			;47df
	inc (hl)		;47e0
	ld h,h			;47e1
	ld l,b			;47e2
	ld b,(hl)		;47e3
	ld (0b646h),a		;47e4
	and b			;47e7
l47e8h:
	ld h,0b0h		;47e8
	ex af,af'		;47ea
	ld hl,(l604eh)		;47eb
	ld l,(hl)		;47ee
	halt			;47ef
	inc bc			;47f0
l47f1h:
	add a,h			;47f1
	ld sp,03800h		;47f2
	ld bc,0a42eh		;47f5
	call 083f4h		;47f8
	ld b,h			;47fb
	jr c,l47feh		;47fc
l47feh:
	inc b			;47fe
	adc a,a			;47ff
	ld (hl),d		;4800
	nop			;4801
	cp 004h			;4802
	and c			;4804
	nop			;4805
	add a,e			;4806
	inc bc			;4807
	ld c,058h		;4808
	add a,01dh		;480a
	inc h			;480c
	dec e			;480d
	call z,0610eh		;480e
	ld c,09ch		;4811
	inc c			;4813
	inc a			;4814
	out (0c7h),a		;4815
	rst 28h			;4817
	jr nc,l479ch		;4818
	pop af			;481a
	dec e			;481b
	ld h,b			;481c
	call c,0811dh		;481d
	nop			;4820
	ld b,l			;4821
	inc sp			;4822
	nop			;4823
	ld (de),a		;4824
	ld bc,093feh		;4825
	ld c,0d5h		;4828
	sbc a,b			;482a
	ld c,000h		;482b
	ld (hl),h		;482d
	inc bc			;482e
	call z,03d00h		;482f
	nop			;4832
	inc e			;4833
	dec (hl)		;4834
	nop			;4835
	ld b,(hl)		;4836
	inc l			;4837
	jp (hl)			;4838
	ld h,d			;4839
	ld h,l			;483a
	ld c,048h		;483b
	ld c,03bh		;483d
	ld c,b			;483f
	xor e			;4840
	and b			;4841
	ld (bc),a		;4842
	jp po,l5400h		;4843
	call nz,06cbah		;4846
	jr l48c2h		;4849
	dec d			;484b
	and l			;484c
	nop			;484d
	inc bc			;484e
	xor a			;484f
	nop			;4850
	ld (hl),000h		;4851
	dec e			;4853
	nop			;4854
	dec de			;4855
	and 01dh		;4856
	ld c,063h		;4858
	or b			;485a
	ld c,01ch		;485b
l485dh:
	ld c,097h		;485d
	and b			;485f
	pop bc			;4860
	ld e,c			;4861
	ld c,075h		;4862
	ld (02c1eh),a		;4864
	add a,(hl)		;4867
	add hl,sp		;4868
	ld sp,0b602h		;4869
	dec e			;486c
	ex af,af'		;486d
	jp nc,03be9h		;486e
	adc a,h			;4871
	cp (hl)			;4872
	dec e			;4873
	ld h,e			;4874
	and (hl)		;4875
	dec e			;4876
	inc d			;4877
	dec e			;4878
	sub (hl)		;4879
	xor h			;487a
	ld c,031h		;487b
	cp h			;487d
	ld c,010h		;487e
	ld c,0cfh		;4880
	ld e,c			;4882
	ld (hl),e		;4883
	rlca			;4884
	ld a,(de)		;4885
	ld c,d			;4886
	ld h,e			;4887
	pop de			;4888
	or h			;4889
	jr nc,l485dh		;488a
	ld (hl),l		;488c
	ex (sp),hl		;488d
	cp d			;488e
	ret z			;488f
	push de			;4890
	sbc a,d			;4891
	ld (de),a		;4892
	jp nz,l6447h		;4893
	cp b			;4896
	sub b			;4897
	ex af,af'		;4898
	ld (l65f1h),a		;4899
	sub b			;489c
	xor h			;489d
	jp p,0f065h		;489e
	add a,e			;48a1
	dec (hl)		;48a2
	ld l,d			;48a3
	ld d,e			;48a4
	ld a,(0ce0ah)		;48a5
	ld sp,00355h		;48a8
	dec de			;48ab
	inc bc			;48ac
	add a,e			;48ad
	ld e,h			;48ae
	ld h,h			;48af
	ret			;48b0
	and d			;48b1
	ld b,e			;48b2
	ld bc,0b19ah		;48b3
	ld b,h			;48b6
	ld e,d			;48b7
	daa			;48b8
	inc b			;48b9
	ld e,0cdh		;48ba
	sbc a,002h		;48bc
	cp l			;48be
	ret			;48bf
	di			;48c0
	ld h,l			;48c1
l48c2h:
	or a			;48c2
	rlc l			;48c3
	dec de			;48c5
	jp nz,03d87h		;48c6
	sub a			;48c9
	cp (hl)			;48ca
	ld a,l			;48cb
	jp 03440h		;48cc
	ld b,a			;48cf
	add a,a			;48d0
	add a,a			;48d1
	add a,b			;48d2
	ld d,064h		;48d3
	nop			;48d5
	sub h			;48d6
	add hl,bc		;48d7
	ld e,066h		;48d8
	add hl,de		;48da
	ld a,(hl)		;48db
	or b			;48dc
	add hl,de		;48dd
	jp nz,039a2h		;48de
	ld e,(hl)		;48e1
	sub h			;48e2
	sbc a,e			;48e3
sub_48e4h:
	ld d,006h		;48e4
	ld h,(hl)		;48e6
	dec d			;48e7
	rra			;48e8
l48e9h:
	nop			;48e9
	ld b,a			;48ea
l48ebh:
	call sub_64b2h		;48eb
	inc hl			;48ee
	djnz l48ebh		;48ef
	jp po,0c2a8h		;48f1
	add a,b			;48f4
	rla			;48f5
	ld h,l			;48f6
	ld a,(004f4h)		;48f7
	ld h,l			;48fa
	inc hl			;48fb
	add a,(hl)		;48fc
	ld (007fbh),a		;48fd
	push af			;4900
	push de			;4901
	rlca			;4902
	defb 0fdh,004h,031h ;illegal sequence	;4903
	ex af,af'		;4906
	ld a,b			;4907
	jp nz,031d0h		;4908
	inc d			;490b
	cp 016h			;490c
	adc a,h			;490e
	jp nz,006d7h		;490f
	ex (sp),hl		;4912
	dec bc			;4913
	rst 30h			;4914
	ld (de),a		;4915
	and 0c2h		;4916
	jp nz,031e4h		;4918
	dec bc			;491b
	ld (hl),001h		;491c
	dec hl			;491e
	ld a,(hl)		;491f
	ld (hl),l		;4920
	sbc a,048h		;4921
	ld a,l			;4923
	pop hl			;4924
	di			;4925
	ld a,(020e6h)		;4926
	rst 38h			;4929
	ret nc			;492a
	ld a,c			;492b
	cp 065h			;492c
	exx			;492e
	ld a,(03384h)		;492f
	cp 0ech			;4932
	ld hl,0dc25h		;4934
	and c			;4937
	ret pe			;4938
	exx			;4939
l493ah:
	jr nz,$+14		;493a
	add a,014h		;493c
	ld (hl),a		;493e
	ld (hl),c		;493f
	ld (bc),a		;4940
	dec d			;4941
	ld h,l			;4942
l4943h:
	ld e,003h		;4943
	sbc hl,de		;4945
	call m,01920h		;4947
	inc hl			;494a
	ret			;494b
	ld e,018h		;494c
	inc b			;494e
	add hl,de		;494f
sub_4950h:
	ret			;4950
	jr z,l48e9h		;4951
	ld h,b			;4953
	jp 0ee35h		;4954
	jr nz,l498bh		;4957
	or c			;4959
	inc b			;495a
	jp z,08222h		;495b
	adc a,h			;495e
	adc a,d			;495f
	ld b,a			;4960
	ld c,08ah		;4961
	ld (bc),a		;4963
l4964h:
	xor a			;4964
sub_4965h:
	ld (hl),a		;4965
	inc hl			;4966
	nop			;4967
	ld b,h			;4968
	ld (hl),c		;4969
	ld (bc),a		;496a
	djnz l4964h		;496b
	rst 0			;496d
	ld l,b			;496e
	ld h,(hl)		;496f
l4970h:
	ld a,0a0h		;4970
l4972h:
	ld b,h			;4972
	ld (03e8fh),a		;4973
	ld (0325ah),hl		;4976
	adc a,h			;4979
	call nz,08cb5h		;497a
	or d			;497d
	ld c,c			;497e
	ld a,(09d91h)		;497f
	push af			;4982
l4983h:
	inc bc			;4983
	defb 0ddh,011h,0c2h ;illegal sequence	;4984
	ld h,a			;4987
	ld de,00234h		;4988
l498bh:
	ld de,0bfcdh		;498b
	ld e,d			;498e
	ld h,l			;498f
	jp po,0072ch		;4990
	jp nc,l6547h		;4993
	ret m			;4996
	or (hl)			;4997
	dec d			;4998
	ld hl,(0993fh)		;4999
	inc l			;499c
	cp e			;499d
	ld h,l			;499e
	ex de,hl		;499f
	and a			;49a0
	inc bc			;49a1
	add hl,bc		;49a2
	ld c,a			;49a3
	set 4,b			;49a4
	ld d,a			;49a6
	ld a,b			;49a7
	sub d			;49a8
	ld h,b			;49a9
	add a,0e1h		;49aa
	cp l			;49ac
	ld e,065h		;49ad
	ld a,c			;49af
	add a,0ebh		;49b0
	jr nz,l4972h		;49b2
	ld (hl),d		;49b4
	add a,b			;49b5
	jp nz,01011h		;49b6
	sbc a,c			;49b9
	rst 30h			;49ba
	rlca			;49bb
	push af			;49bc
	jr l4970h		;49bd
	dec a			;49bf
	ld h,l			;49c0
	add hl,de		;49c1
	and a			;49c2
	ld bc,021ebh		;49c3
	cp h			;49c6
	ld h,l			;49c7
	ld bc,l6082h		;49c8
	ldir			;49cb
	ret			;49cd
	and b			;49ce
	sub 064h		;49cf
	ld h,h			;49d1
	adc a,(hl)		;49d2
	call nc,sub_5222h	;49d3
	jp z,l57cbh		;49d6
	adc a,c			;49d9
	di			;49da
	jp (hl)			;49db
	adc a,(hl)		;49dc
	ld (l74e6h+2),hl	;49dd
	ld h,c			;49e0
	ret m			;49e1
	sbc a,a			;49e2
	push de			;49e3
	dec de			;49e4
	ld a,(bc)		;49e5
	adc a,d			;49e6
	add a,060h		;49e7
	inc b			;49e9
	or l			;49ea
	call m,000e4h		;49eb
	ld bc,09d08h		;49ee
	rst 38h			;49f1
	jp po,0c50ah		;49f2
	dec hl			;49f5
	ex de,hl		;49f6
	add a,h			;49f7
	inc bc			;49f8
	rst 38h			;49f9
	nop			;49fa
	ld bc,0ca14h		;49fb
	ld bc,l4efdh		;49fe
	jr nz,l4a5dh		;4a01
l4a03h:
	rrca			;4a03
	dec bc			;4a04
	call pe,00f61h		;4a05
	inc b			;4a08
	pop af			;4a09
	call pe,08604h		;4a0a
	inc d			;4a0d
	pop af			;4a0e
	inc b			;4a0f
	jr $+32			;4a10
	ld e,004h		;4a12
	or 061h			;4a14
	inc hl			;4a16
	inc b			;4a17
	jp po,00419h		;4a18
	add a,(hl)		;4a1b
	defb 0ddh,0fbh,009h ;illegal sequence	;4a1c
	or b			;4a1f
	jp po,00504h		;4a20
	defb 0ddh,0c6h,004h ;illegal sequence	;4a23
	inc hl			;4a26
	add hl,bc		;4a27
	sbc a,l			;4a28
	ld e,005h		;4a29
	ld (000fch),hl		;4a2b
	ld b,b			;4a2e
	call sub_6783h		;4a2f
	call 0523ch		;4a32
l4a35h:
	ld h,a			;4a35
l4a36h:
	or a			;4a36
	xor (hl)		;4a37
	ret nz			;4a38
	xor e			;4a39
	ld c,(hl)		;4a3a
	ld h,(hl)		;4a3b
	cp 0deh			;4a3c
	dec b			;4a3e
l4a3fh:
	jp nc,l4522h		;4a3f
	call nc,0210fh		;4a42
	ld h,a			;4a45
	ld b,00dh		;4a46
l4a48h:
	call m,0668ch		;4a48
	inc hl			;4a4b
	nop			;4a4c
	inc bc			;4a4d
	inc de			;4a4e
	inc de			;4a4f
	djnz $-9		;4a50
	ret			;4a52
	ld a,(de)		;4a53
	jr nz,l4a91h		;4a54
	sbc a,l			;4a56
	ld (bc),a		;4a57
	ld c,012h		;4a58
	jp nz,0e497h		;4a5a
l4a5dh:
	ld b,b			;4a5d
	ld (iy-07ch),02bh	;4a5e
l4a62h:
	cp h			;4a62
	pop bc			;4a63
	ld c,c			;4a64
	sub c			;4a65
	and 0dbh		;4a66
	ld (de),a		;4a68
	ld (de),a		;4a69
	and d			;4a6a
	ld d,b			;4a6b
	rrca			;4a6c
	ld c,a			;4a6d
	ld b,c			;4a6e
	add a,a			;4a6f
	nop			;4a70
	sub c			;4a71
	inc de			;4a72
	ld (de),a		;4a73
	pop af			;4a74
	call 0ae17h		;4a75
	call 001ffh		;4a78
	cp b			;4a7b
	ld b,001h		;4a7c
	add hl,sp		;4a7e
	ld bc,00dffh		;4a7f
	ld (hl),a		;4a82
	rst 38h			;4a83
	dec c			;4a84
	rrca			;4a85
	cp h			;4a86
l4a87h:
	ld b,0dch		;4a87
	ld c,016h		;4a89
	di			;4a8b
	ld b,00dh		;4a8c
	sbc a,h			;4a8e
	dec d			;4a8f
	ld (hl),c		;4a90
l4a91h:
	dec c			;4a91
	ld b,0bch		;4a92
	jr c,l4b06h		;4a94
sub_4a96h:
	dec bc			;4a96
	rst 38h			;4a97
	ei			;4a98
	dec de			;4a99
	ld a,000h		;4a9a
	and b			;4a9c
	call 06747h		;4a9d
	ld hl,0e3c8h		;4aa0
	ld b,003h		;4aa3
	inc hl			;4aa5
	jp 00756h		;4aa6
	ld b,h			;4aa9
	jp nz,013ebh		;4aaa
	add a,d			;4aad
	ld h,057h		;4aae
l4ab0h:
	call po,sub_5f22h	;4ab0
	ret c			;4ab3
	jr nz,l4b34h		;4ab4
	cp d			;4ab6
	inc hl			;4ab7
	jp c,l6d02h		;4ab8
l4abbh:
	ld h,a			;4abb
	sub 007h		;4abc
	cp d			;4abe
	jp nc,03505h		;4abf
	ld a,(hl)		;4ac2
l4ac3h:
	cp e			;4ac3
	ld a,(bc)		;4ac4
	ld c,005h		;4ac5
	ld de,l6773h		;4ac7
	ex de,hl		;4aca
	add a,l			;4acb
	djnz $-26		;4acc
	sbc a,l			;4ace
	dec bc			;4acf
	rst 8			;4ad0
	adc a,e			;4ad1
	ld b,c			;4ad2
	ld (hl),003h		;4ad3
	dec hl			;4ad5
	ret pe			;4ad6
	ld b,(hl)		;4ad7
	add a,(hl)		;4ad8
	ld (hl),d		;4ad9
	ld a,01bh		;4ada
	dec c			;4adc
	ld (l403bh),a		;4add
	sub d			;4ae0
	jr z,l4ab0h		;4ae1
	dec h			;4ae3
	and d			;4ae4
	ld h,a			;4ae5
	sub b			;4ae6
	sub h			;4ae7
	ld a,(03d11h)		;4ae8
	pop bc			;4aeb
	dec d			;4aec
	jp nz,l678eh		;4aed
	sbc a,b			;4af0
	jr z,l4abbh		;4af1
	ld l,c			;4af3
	add a,087h		;4af4
l4af6h:
	cp d			;4af6
	ld b,c			;4af7
	xor (hl)		;4af8
	ld h,a			;4af9
	adc a,e			;4afa
	jr z,l4b10h		;4afb
	jr $+73			;4afd
	ld a,(de)		;4aff
	add a,b			;4b00
	add a,h			;4b01
	nop			;4b02
	ld c,a			;4b03
	push hl			;4b04
	dec de			;4b05
l4b06h:
	ld hl,l66b1h		;4b06
	add hl,bc		;4b09
	ld d,e			;4b0a
	ld c,(hl)		;4b0b
	jp nc,0c500h		;4b0c
	ld h,a			;4b0f
l4b10h:
	dec c			;4b10
	inc hl			;4b11
	ld b,(hl)		;4b12
	ld a,(bc)		;4b13
	pop hl			;4b14
	ld a,(hl)		;4b15
	add a,b			;4b16
	ld (hl),a		;4b17
	ret p			;4b18
	add a,b			;4b19
	jr l4af6h		;4b1a
	ret po			;4b1c
	ld h,a			;4b1d
	cp 0c0h			;4b1e
	inc hl			;4b20
	jp nc,l73e0h		;4b21
	add a,c			;4b24
	ld (hl),a		;4b25
	cp c			;4b26
	ld d,d			;4b27
	rlca			;4b28
	ld hl,(0c92bh)		;4b29
	xor c			;4b2c
	ex af,af'		;4b2d
	dec hl			;4b2e
	ld (hl),a		;4b2f
	ld (de),a		;4b30
	ret			;4b31
	xor d			;4b32
	add a,b			;4b33
l4b34h:
	adc a,068h		;4b34
	call 005bdh		;4b36
	ld hl,l4758h		;4b39
	ret pe			;4b3c
	ex af,af'		;4b3d
	add a,b			;4b3e
	ld a,h			;4b3f
sub_4b40h:
	ld bc,0724eh		;4b40
	ld d,00fh		;4b43
	jp z,00b04h		;4b45
	ld l,b			;4b48
	dec a			;4b49
	ld bc,008dbh		;4b4a
	ld (008e0h),a		;4b4d
	ld (hl),a		;4b50
	ld (hl),e		;4b51
	dec d			;4b52
	ld d,02ah		;4b53
	ld (hl),b		;4b55
	pop de			;4b56
	ld a,(bc)		;4b57
	ld a,d			;4b58
	ld (09649h),a		;4b59
	adc a,l			;4b5c
	ld (0a832h),a		;4b5d
sub_4b60h:
	ld c,d			;4b60
	or l			;4b61
	sub c			;4b62
	dec b			;4b63
	adc a,00dh		;4b64
	ld a,(bc)		;4b66
	ld (0fd09h),a		;4b67
	out (00dh),a		;4b6a
	jp nz,0a092h		;4b6c
	ld l,b			;4b6f
	ld de,0018eh		;4b70
	and (hl)		;4b73
	or 004h			;4b74
	ld a,070h		;4b76
	ld (0af76h),a		;4b78
	sbc a,h			;4b7b
	push bc			;4b7c
	adc a,h			;4b7d
	sbc a,(hl)		;4b7e
	djnz $+52		;4b7f
	ld (0305dh),hl		;4b81
	ld e,(hl)		;4b84
	ld (08248h),a		;4b85
	ld (bc),a		;4b88
	ld (bc),a		;4b89
	ld e,a			;4b8a
	ld (00293h),a		;4b8b
	ld b,(hl)		;4b8e
	sub h			;4b8f
	ld (bc),a		;4b90
	call pe,0955fh		;4b91
	jr z,l4ba9h		;4b94
	ld l,c			;4b96
	ld (01444h),a		;4b97
	ld (bc),a		;4b9a
	dec d			;4b9b
	ld l,c			;4b9c
	daa			;4b9d
	ld (de),a		;4b9e
	sub d			;4b9f
	ld b,016h		;4ba0
	ld (bc),a		;4ba2
	inc bc			;4ba3
	dec d			;4ba4
	ld c,e			;4ba5
	jr nz,l4bd2h		;4ba6
	ld a,(de)		;4ba8
l4ba9h:
	ld (bc),a		;4ba9
l4baah:
	and l			;4baa
	adc a,l			;4bab
	ei			;4bac
	sub 066h		;4bad
	cp 0efh			;4baf
	call nz,032a1h		;4bb1
	inc hl			;4bb4
	ld (bc),a		;4bb5
	ld c,l			;4bb6
	di			;4bb7
	or a			;4bb8
	jp (hl)			;4bb9
	or l			;4bba
	ret pe			;4bbb
	ld a,095h		;4bbc
	ld l,h			;4bbe
	jr z,l4bc5h		;4bbf
	push hl			;4bc1
	adc a,c			;4bc2
	dec de			;4bc3
	inc c			;4bc4
l4bc5h:
	inc e			;4bc5
	rlca			;4bc6
	ex af,af'		;4bc7
	ld e,032h		;4bc8
	jr l4bd0h		;4bca
	ld c,e			;4bcc
	ld (082a3h),a		;4bcd
l4bd0h:
	sub h			;4bd0
	ld (hl),b		;4bd1
l4bd2h:
	daa			;4bd2
	ld e,l			;4bd3
	ld d,d			;4bd4
	ld hl,024ach		;4bd5
	ld a,(de)		;4bd8
	xor (hl)		;4bd9
	sub b			;4bda
l4bdbh:
	cp h			;4bdb
l4bdch:
	ei			;4bdc
	ld a,(l5708h)		;4bdd
	pop bc			;4be0
	cp 002h			;4be1
	dec e			;4be3
	jp c,004bbh		;4be4
	ld l,b			;4be7
	ld a,050h		;4be8
	ld (01d1eh),a		;4bea
	rst 38h			;4bed
	ld a,(01d32h)		;4bee
	add a,d			;4bf1
	inc l			;4bf2
	sub 004h		;4bf3
	rst 18h			;4bf5
	inc b			;4bf6
	ld c,06ah		;4bf7
	call sub_6917h		;4bf9
	ld b,0c6h		;4bfc
	ld e,d			;4bfe
	dec b			;4bff
	rst 18h			;4c00
	dec b			;4c01
	call z,032c3h		;4c02
l4c05h:
	res 7,b			;4c05
	rst 0			;4c07
l4c08h:
	pop de			;4c08
	jp 0008ch		;4c09
l4c0ch:
	ld b,008h		;4c0c
	jp c,l68edh		;4c0e
	inc l			;4c11
	cp 006h			;4c12
	nop			;4c14
	ld b,016h		;4c15
	jp 068f1h		;4c17
	ret nc			;4c1a
	ld e,b			;4c1b
	ld a,041h		;4c1c
	or a			;4c1e
	adc a,d			;4c1f
	ld l,e			;4c20
	jp z,l40fch		;4c21
	dec sp			;4c24
	add hl,sp		;4c25
l4c26h:
	and 071h		;4c26
	ld c,a			;4c28
	inc c			;4c29
	ld a,(bc)		;4c2a
	jp c,l690bh		;4c2b
	ld c,005h		;4c2e
	ld h,072h		;4c30
	ld (l7236h),a		;4c32
	xor a			;4c35
	or d			;4c36
	ld a,(0b78ah)		;4c37
	or 04ch			;4c3a
	ld (de),a		;4c3c
	ld d,c			;4c3d
	ld c,c			;4c3e
	cpl			;4c3f
	rlc b			;4c40
	cp 003h			;4c42
	jp c,l6932h		;4c44
	call 01104h		;4c47
	ld e,a			;4c4a
	call 00295h		;4c4b
	ld c,d			;4c4e
	ld e,(hl)		;4c4f
	djnz $-101		;4c50
	rst 18h			;4c52
l4c53h:
	ld sp,003f1h		;4c53
	adc a,e			;4c56
	inc bc			;4c57
	adc a,h			;4c58
	ld l,d			;4c59
	inc bc			;4c5a
	ld h,e			;4c5b
	ld c,d			;4c5c
	inc bc			;4c5d
	ld b,e			;4c5e
	rst 18h			;4c5f
	push de			;4c60
	ld l,c			;4c61
	out (0ech),a		;4c62
	push bc			;4c64
	rst 28h			;4c65
	add a,019h		;4c66
	inc h			;4c68
	add hl,sp		;4c69
	ret			;4c6a
	xor h			;4c6b
	sbc a,l			;4c6c
	rst 28h			;4c6d
	dec d			;4c6e
	ld (hl),b		;4c6f
	ld c,l			;4c70
	ret m			;4c71
	xor c			;4c72
	ld a,(l6af7h)		;4c73
	dec h			;4c76
	ld b,005h		;4c77
	or 005h			;4c79
	add a,e			;4c7b
	sub 0a6h		;4c7c
	ld (059f4h),hl		;4c7e
	add hl,sp		;4c81
	pop af			;4c82
	pop bc			;4c83
	cp 083h			;4c84
	push af			;4c86
	pop bc			;4c87
	ret pe			;4c88
	inc sp			;4c89
	cpl			;4c8a
	inc a			;4c8b
	jr nz,l4ce1h		;4c8c
	and b			;4c8e
	jr nz,l4c93h		;4c8f
	jr nz,l4c9dh		;4c91
l4c93h:
	ld hl,0dc3ah		;4c93
	inc bc			;4c96
	ld (de),a		;4c97
	ld a,044h		;4c98
	ld de,085edh		;4c9a
l4c9dh:
	ld (hl),a		;4c9d
	ld sp,hl		;4c9e
	ret nz			;4c9f
	call m,02321h		;4ca0
	ld c,c			;4ca3
	ld (09a30h),hl		;4ca4
	pop bc			;4ca7
	adc a,h			;4ca8
	ld (bc),a		;4ca9
	dec c			;4caa
	ld hl,l7510h		;4cab
	call 0cb33h		;4cae
	ld h,e			;4cb1
	or e			;4cb2
	ld c,b			;4cb3
	ld c,080h		;4cb4
	inc bc			;4cb6
	ld hl,l74e0h		;4cb7
	pop bc			;4cba
	ld c,0cdh		;4cbb
	ld a,a			;4cbd
	ld l,l			;4cbe
	ld d,h			;4cbf
	sbc a,c			;4cc0
	ld b,l			;4cc1
	sbc a,l			;4cc2
	ld b,c			;4cc3
	ld d,b			;4cc4
	inc bc			;4cc5
	jp m,l73a0h		;4cc6
	ld b,030h		;4cc9
	and b			;4ccb
	rlca			;4ccc
	ld a,c			;4ccd
	inc b			;4cce
	ld (hl),b		;4ccf
	ld b,077h		;4cd0
	ld b,h			;4cd2
	rlca			;4cd3
	add a,l			;4cd4
	rla			;4cd5
	ld d,e			;4cd6
	ld bc,08305h		;4cd7
	inc h			;4cda
	ld b,l			;4cdb
	dec c			;4cdc
	rlca			;4cdd
	adc a,e			;4cde
	ld h,h			;4cdf
	sbc a,b			;4ce0
l4ce1h:
	jp c,0938eh		;4ce1
	sbc a,(hl)		;4ce4
	add a,d			;4ce5
	ret nz			;4ce6
	ld b,01bh		;4ce7
	xor (hl)		;4ce9
	ld b,d			;4cea
	ld l,h			;4ceb
	ld a,(06aa4h)		;4cec
	ret pe			;4cef
	jr z,l4cf5h		;4cf0
	add a,a			;4cf2
	sub c			;4cf3
	ld (bc),a		;4cf4
l4cf5h:
	add a,d			;4cf5
	jp pe,l4a48h		;4cf6
	ret c			;4cf9
	add a,d			;4cfa
	add a,09eh		;4cfb
	exx			;4cfd
	ld b,004h		;4cfe
	ret nc			;4d00
	jr c,l4d14h		;4d01
	ld (de),a		;4d03
	pop bc			;4d04
	call 0dd6ch		;4d05
	ld (02c10h),a		;4d08
	ld h,0d3h		;4d0b
	sub a			;4d0d
	add a,(hl)		;4d0e
	sub b			;4d0f
	sub a			;4d10
	jp 0e4cah		;4d11
l4d14h:
	inc bc			;4d14
	ld (bc),a		;4d15
	jp z,06a50h		;4d16
	cp 0b4h			;4d19
	ret c			;4d1b
	ld d,c			;4d1c
	ld e,c			;4d1d
	ret nz			;4d1e
	ld (hl),c		;4d1f
	ld c,(hl)		;4d20
l4d21h:
	or h			;4d21
	xor d			;4d22
	dec a			;4d23
	add hl,bc		;4d24
	pop bc			;4d25
	ld (0c395h),a		;4d26
	adc a,d			;4d29
	add a,b			;4d2a
	jp p,0cd6bh		;4d2b
	call 0d86bh		;4d2e
	ld h,0cdh		;4d31
	rra			;4d33
	ld b,04fh		;4d34
	ld b,012h		;4d36
	ld l,e			;4d38
	ld l,d			;4d39
	dec (hl)		;4d3a
	ld c,h			;4d3b
	rst 28h			;4d3c
	add hl,hl		;4d3d
	dec (hl)		;4d3e
	ld c,e			;4d3f
	ld e,e			;4d40
	inc b			;4d41
	ret nc			;4d42
	ret nc			;4d43
	cp 01ah			;4d44
	ld e,(hl)		;4d46
	pop af			;4d47
	jp nz,0ca6ah		;4d48
	adc a,b			;4d4b
	inc a			;4d4c
	inc d			;4d4d
	rlca			;4d4e
	jp z,01be4h		;4d4f
	sub (hl)		;4d52
	ld c,b			;4d53
	ld c,d			;4d54
	dec (hl)		;4d55
	dec (hl)		;4d56
	ld l,h			;4d57
	call nz,0c61dh		;4d58
	ld h,c			;4d5b
	inc sp			;4d5c
	ld h,a			;4d5d
	ld l,h			;4d5e
	sub 064h		;4d5f
	and c			;4d61
	ld l,d			;4d62
	sbc a,h			;4d63
	ld b,d			;4d64
	dec hl			;4d65
	ld l,h			;4d66
	xor 053h		;4d67
	ld c,036h		;4d69
	ld l,h			;4d6b
	ld de,0fd03h		;4d6c
	pop bc			;4d6f
	ld hl,0c16fh		;4d70
	adc a,b			;4d73
	xor b			;4d74
	cp (hl)			;4d75
	djnz $+108		;4d76
	add hl,de		;4d78
	ld a,b			;4d79
	ld h,047h		;4d7a
	jp 098b1h		;4d7c
	di			;4d7f
	dec c			;4d80
	ld l,h			;4d81
	ld h,d			;4d82
	ld (hl),a		;4d83
	add hl,sp		;4d84
	inc hl			;4d85
	inc b			;4d86
	xor c			;4d87
l4d88h:
	jr c,l4d8eh		;4d88
	sbc a,084h		;4d8a
	scf			;4d8c
	ld l,h			;4d8d
l4d8eh:
	ld hl,0cd3ch		;4d8e
	call z,09bfch		;4d91
	dec b			;4d94
l4d95h:
	sub 047h		;4d95
	adc a,l			;4d97
	jr l4d21h		;4d98
	bit 7,b			;4d9a
	inc bc			;4d9c
	ld a,b			;4d9d
	ld (0325dh),hl		;4d9e
	ld hl,(0a858h)		;4da1
	inc de			;4da4
	and 09bh		;4da5
	inc h			;4da7
	inc h			;4da8
	inc h			;4da9
	sbc a,h			;4daa
	ld d,h			;4dab
	sub b			;4dac
	ld e,b			;4dad
	ld e,03ah		;4dae
	and e			;4db0
	rrca			;4db1
	ret nz			;4db2
	inc sp			;4db3
	dec b			;4db4
	ld a,c			;4db5
	rla			;4db6
	jr z,l4dd9h		;4db7
	ld l,(hl)		;4db9
	ld c,02bh		;4dba
	ld (0d4a6h),hl		;4dbc
	inc (hl)		;4dbf
	add a,e			;4dc0
	pop bc			;4dc1
	ei			;4dc2
	cp h			;4dc3
	out (0bah),a		;4dc4
	rst 10h			;4dc6
	jp (ix)			;4dc7
	call m,03480h		;4dc9
	ld l,e			;4dcc
	dec hl			;4dcd
	dec hl			;4dce
	djnz $-5		;4dcf
	dec bc			;4dd1
	ret			;4dd2
	ld c,d			;4dd3
l4dd4h:
	ld a,(hl)		;4dd4
	dec hl			;4dd5
	rst 8			;4dd6
	add a,b			;4dd7
	cp c			;4dd8
l4dd9h:
	ret nc			;4dd9
	add a,018h		;4dda
	cp c			;4ddc
	ret c			;4ddd
	inc c			;4dde
	ld c,e			;4ddf
	ld a,(hl)		;4de0
	sub 00ch		;4de1
	add hl,bc		;4de3
	ld d,b			;4de4
	inc d			;4de5
	add hl,bc		;4de6
	ld a,h			;4de7
	ld c,(hl)		;4de8
	ld l,e			;4de9
	ret			;4dea
	adc a,b			;4deb
	and b			;4dec
	ld (hl),b		;4ded
	pop bc			;4dee
	adc a,l			;4def
	xor b			;4df0
	xor d			;4df1
	ld (0940ch),a		;4df2
l4df5h:
	add hl,bc		;4df5
	ld h,d			;4df6
	ld l,e			;4df7
	or (hl)			;4df8
	and c			;4df9
	dec l			;4dfa
	ld a,b			;4dfb
	xor 007h		;4dfc
	nop			;4dfe
	and l			;4dff
l4e00h:
	ld (l5b42h),a		;4e00
	jp p,09216h		;4e03
	ld bc,03dc8h		;4e06
	ret z			;4e09
	ld a,(hl)		;4e0a
	or c			;4e0b
	ld h,e			;4e0c
	ld l,h			;4e0d
	or b			;4e0e
	and (hl)		;4e0f
	ld b,a			;4e10
	ld c,019h		;4e11
	add a,009h		;4e13
	jp c,08002h		;4e15
	sub 00fh		;4e18
	ld (0f146h),a		;4e1a
	inc a			;4e1d
	dec d			;4e1e
	sub e			;4e1f
	scf			;4e20
	call p,sub_6c06h	;4e21
	xor a			;4e24
	ld c,h			;4e25
	ld e,(hl)		;4e26
	cp b			;4e27
	ld (hl),h		;4e28
	sbc a,b			;4e29
	ld (hl),0b9h		;4e2a
	cp c			;4e2c
	ld d,a			;4e2d
	jp pe,03a35h		;4e2e
	out (01ah),a		;4e31
l4e33h:
	ld c,c			;4e33
	adc a,l			;4e34
	sbc a,c			;4e35
	ld c,b			;4e36
	ld c,c			;4e37
	add hl,hl		;4e38
	ld b,(hl)		;4e39
	xor c			;4e3a
	ret c			;4e3b
	inc b			;4e3c
	cp 028h			;4e3d
	dec d			;4e3f
	jp nc,l6bc4h		;4e40
	defb 0edh ;next byte illegal after ed	;4e43
	xor (hl)		;4e44
	ld l,e			;4e45
	rra			;4e46
	ld d,d			;4e47
	scf			;4e48
	call nz,00b94h		;4e49
	ret pe			;4e4c
	ld d,h			;4e4d
	dec sp			;4e4e
	dec b			;4e4f
	ld a,(l60aah)		;4e50
	jp pe,0c389h		;4e53
	ld d,c			;4e56
	scf			;4e57
	jp 03758h		;4e58
	ld l,(hl)		;4e5b
	inc b			;4e5c
	dec c			;4e5d
	ld l,c			;4e5e
	dec h			;4e5f
	jp 0a248h		;4e60
	jp po,041c8h		;4e63
	call nz,sub_6c03h	;4e66
	pop de			;4e69
	jp z,08923h		;4e6a
	adc a,e			;4e6d
	dec a			;4e6e
	ld l,d			;4e6f
	add hl,bc		;4e70
	dec hl			;4e71
	ret nz			;4e72
	ld (hl),a		;4e73
	xor b			;4e74
	inc b			;4e75
	and e			;4e76
	pop bc			;4e77
	inc a			;4e78
	sub h			;4e79
	add a,0c2h		;4e7a
	rla			;4e7c
	ld a,a			;4e7d
	jr nz,$-91		;4e7e
	inc h			;4e80
	and h			;4e81
sub_4e82h:
	pop bc			;4e82
	add a,e			;4e83
	ld e,a			;4e84
	ld e,l			;4e85
	ld a,(de)		;4e86
	sbc a,a			;4e87
	out (033h),a		;4e88
	ld (hl),b		;4e8a
	adc a,a			;4e8b
	adc a,e			;4e8c
	jr nc,l4e8fh		;4e8d
l4e8fh:
	inc e			;4e8f
	djnz l4e33h		;4e90
	ld (hl),e		;4e92
	xor h			;4e93
	adc a,c			;4e94
	ret p			;4e95
	inc bc			;4e96
	ld c,053h		;4e97
	ld bc,0d000h		;4e99
	ld a,(bc)		;4e9c
	ld c,e			;4e9d
	ld h,h			;4e9e
	nop			;4e9f
	ld bc,0960eh		;4ea0
	sub b			;4ea3
l4ea4h:
	inc bc			;4ea4
	add hl,sp		;4ea5
	ld (bc),a		;4ea6
	inc l			;4ea7
	xor e			;4ea8
	ld bc,l4df5h		;4ea9
	ld b,l			;4eac
	pop bc			;4ead
	ret c			;4eae
	jp nz,06cebh		;4eaf
	push de			;4eb2
	ld hl,(00703h)		;4eb3
	jr nc,l4ea4h		;4eb6
	ld l,h			;4eb8
	ld b,021h		;4eb9
	defb 0edh ;next byte illegal after ed	;4ebb
	sbc a,b			;4ebc
	call z,sub_6d1dh	;4ebd
	and h			;4ec0
	xor (hl)		;4ec1
	ld (l6cc0h),a		;4ec2
	jp (hl)			;4ec5
	sub c			;4ec6
	and b			;4ec7
	ld hl,0100bh		;4ec8
	ld de,00e4dh		;4ecb
	djnz l4f4eh		;4ece
l4ed0h:
	add a,a			;4ed0
	ret z			;4ed1
	nop			;4ed2
	adc a,e			;4ed3
	add a,d			;4ed4
	ld c,(hl)		;4ed5
	add a,c			;4ed6
	dec hl			;4ed7
	ld c,(hl)		;4ed8
	dec b			;4ed9
	ret			;4eda
	ret pe			;4edb
	ld a,c			;4edc
	ld (bc),a		;4edd
	ld a,010h		;4ede
	and b			;4ee0
	add a,b			;4ee1
	jr $-49			;4ee2
	jp (hl)			;4ee4
l4ee5h:
	ld (bc),a		;4ee5
	ld a,(0c398h)		;4ee6
	and (hl)		;4ee9
	ld a,003h		;4eea
	ret nz			;4eec
	and d			;4eed
	dec h			;4eee
	dec b			;4eef
	pop af			;4ef0
	add hl,de		;4ef1
	ld d,d			;4ef2
	jr $+8			;4ef3
	ld d,b			;4ef5
	dec (hl)		;4ef6
	xor a			;4ef7
	pop bc			;4ef8
	adc a,a			;4ef9
	defb 0fdh,09dh ;sbc a,iyl	;4efa
	and b			;4efc
l4efdh:
	cp (hl)			;4efd
	ret z			;4efe
l4effh:
	inc a			;4eff
l4f00h:
	set 3,a			;4f00
	ld h,b			;4f02
	jp c,0881bh		;4f03
	pop de			;4f06
	cp 0ffh			;4f07
	ccf			;4f09
	jr nz,l4f0dh		;4f0a
sub_4f0ch:
	and (hl)		;4f0c
l4f0dh:
	jr c,$-37		;4f0d
	inc e			;4f0f
	call sub_6c82h		;4f10
	jr c,l4f26h		;4f13
	ret			;4f15
sub_4f16h:
	ld (bc),a		;4f16
	call nz,0c299h		;4f17
l4f1ah:
	ld a,(0b902h)		;4f1a
	dec de			;4f1d
	inc b			;4f1e
	ld bc,0b407h		;4f1f
	ld h,e			;4f22
	inc c			;4f23
	inc b			;4f24
	rrca			;4f25
l4f26h:
	ld (0d603h),a		;4f26
	adc a,(hl)		;4f29
	ret nz			;4f2a
	call c,0b10bh		;4f2b
	ld d,000h		;4f2e
	inc bc			;4f30
	ld hl,00409h		;4f31
	inc b			;4f34
	dec b			;4f35
	rlca			;4f36
	nop			;4f37
	or a			;4f38
	ld l,c			;4f39
	nop			;4f3a
	call m,02181h		;4f3b
	sbc a,h			;4f3e
	ex de,hl		;4f3f
	djnz l4f1ah		;4f40
	ld d,(hl)		;4f42
	ld bc,00c6ah		;4f43
	rst 0			;4f46
	add a,h			;4f47
	cp 032h			;4f48
	or c			;4f4a
	ld e,b			;4f4b
	adc a,h			;4f4c
	rst 8			;4f4d
l4f4eh:
	xor b			;4f4e
	djnz l4f58h		;4f4f
	ret			;4f51
	inc e			;4f52
	sbc a,e			;4f53
	ret			;4f54
	inc e			;4f55
	ld h,(hl)		;4f56
	add a,l			;4f57
l4f58h:
	ld h,b			;4f58
	ld h,b			;4f59
	sbc a,d			;4f5a
	ld b,070h		;4f5b
	ld (032e2h),a		;4f5d
	cpl			;4f60
	inc a			;4f61
	jp nz,0209fh		;4f62
	inc c			;4f65
	jp l56e4h		;4f66
	ld de,0ad88h		;4f69
	add hl,de		;4f6c
	ld e,(hl)		;4f6d
	ld (bc),a		;4f6e
	ld d,000h		;4f6f
	push hl			;4f71
	ld hl,l6dc2h		;4f72
	rlca			;4f75
	nop			;4f76
	inc hl			;4f77
	ld d,(hl)		;4f78
	pop hl			;4f79
	push de			;4f7a
	ret			;4f7b
	dec e			;4f7c
	ld l,(hl)		;4f7d
	ld e,d			;4f7e
	nop			;4f7f
	ld l,(hl)		;4f80
sub_4f81h:
	pop hl			;4f81
	ld l,(hl)		;4f82
	add hl,de		;4f83
	ld l,(hl)		;4f84
	ld a,(de)		;4f85
	ld l,a			;4f86
	ld d,(hl)		;4f87
	nop			;4f88
	ld l,a			;4f89
	adc a,06fh		;4f8a
	ei			;4f8c
	ld l,a			;4f8d
	jp z,0006fh		;4f8e
	ld bc,0df6fh		;4f91
	ld (hl),b		;4f94
	or l			;4f95
	ld l,(hl)		;4f96
	rrca			;4f97
	ld (hl),c		;4f98
	and 038h		;4f99
l4f9bh:
	add hl,de		;4f9b
	sub b			;4f9c
	adc a,b			;4f9d
	jp nz,050f1h		;4f9e
	ld l,l			;4fa1
	adc a,(hl)		;4fa2
	pop bc			;4fa3
	ld hl,003e6h		;4fa4
	ld b,c			;4fa7
	jp z,l6df0h		;4fa8
	sub c			;4fab
	jr nz,l4f9bh		;4fac
	ld d,d			;4fae
	ret			;4faf
l4fb0h:
	ret nz			;4fb0
	and e			;4fb1
	rst 38h			;4fb2
	jp 0010dh		;4fb3
	ld l,(hl)		;4fb6
	ld b,07fh		;4fb7
	inc b			;4fb9
	dec de			;4fba
	ccf			;4fbb
	push hl			;4fbc
	ld a,(hl)		;4fbd
	ex de,hl		;4fbe
	ex af,af'		;4fbf
	and b			;4fc0
l4fc1h:
	ld (hl),a		;4fc1
	ld h,033h		;4fc2
	add hl,de		;4fc4
	ld b,(hl)		;4fc5
	and b			;4fc6
	add a,a			;4fc7
	pop hl			;4fc8
	dec hl			;4fc9
	sub h			;4fca
	nop			;4fcb
	add a,(hl)		;4fcc
	or 09ch			;4fcd
	call z,02342h		;4fcf
	ld l,(hl)		;4fd2
	jr l4fd7h		;4fd3
	and 041h		;4fd5
l4fd7h:
	call sub_6ddch		;4fd7
l4fdah:
	adc a,(hl)		;4fda
	jr nc,l5008h		;4fdb
	dec (hl)		;4fdd
	ld d,(hl)		;4fde
	ret nz			;4fdf
	rla			;4fe0
	dec (hl)		;4fe1
	dec (hl)		;4fe2
	ld a,(hl)		;4fe3
	and 002h		;4fe4
	rra			;4fe6
	jr nz,l4ff3h		;4fe7
	ld a,(0c254h)		;4fe9
	ld c,e			;4fec
	dec b			;4fed
	jr nz,l4ff3h		;4fee
	call sub_714ch		;4ff0
l4ff3h:
	ld h,0e5h		;4ff3
	ret nz			;4ff5
	cp b			;4ff6
	ld b,001h		;4ff7
	inc h			;4ff9
	jr c,l4ffeh		;4ffa
	ld c,(hl)		;4ffc
	ld a,d			;4ffd
l4ffeh:
	ex (sp),hl		;4ffe
	pop de			;4fff
	sbc a,b			;5000
	cp e			;5001
	jr c,l4fdah		;5002
l5004h:
	jp nc,0be0ch		;5004
	ld h,(hl)		;5007
l5008h:
	xor a			;5008
	ld h,l			;5009
	ld d,h			;500a
	inc c			;500b
	rlc (hl)		;500c
	ld a,(bc)		;500e
	jr nz,l5026h		;500f
	push hl			;5011
	ld a,(l7e06h)		;5012
	xor 008h		;5015
	ld (hl),a		;5017
	dec b			;5018
	and (hl)		;5019
	ld (bc),a		;501a
	adc a,a			;501b
	or d			;501c
	inc b			;501d
l501eh:
	adc a,e			;501e
	ld b,l			;501f
	pop hl			;5020
	add a,l			;5021
	xor a			;5022
	add a,d			;5023
l5024h:
	ld a,09fh		;5024
l5026h:
	ld h,h			;5026
	ld (bc),a		;5027
	add a,e			;5028
	sbc a,c			;5029
	in a,(094h)		;502a
	ld hl,(l476fh+2)	;502c
	ld sp,hl		;502f
	defb 0edh ;next byte illegal after ed	;5030
	ld de,0c3f3h		;5031
	inc (hl)		;5034
	sbc a,b			;5035
	ld b,c			;5036
	ld b,(hl)		;5037
	ld a,(00710h)		;5038
	jr nz,$+14		;503b
	rlca			;503d
	sub 016h		;503e
	cp b			;5040
	ret nc			;5041
	or h			;5042
	jp p,069ach		;5043
	xor h			;5046
	ret c			;5047
	ld (ix+01eh),a		;5048
	add hl,bc		;504b
	ld b,019h		;504c
	ld (hl),016h		;504e
	ld e,b			;5050
	ei			;5051
	ld (bc),a		;5052
	dec c			;5053
	ld (bc),a		;5054
	ld e,004h		;5055
	ld e,d			;5057
	adc a,d			;5058
	sub d			;5059
	or d			;505a
	or b			;505b
	jp nz,049cah		;505c
	ld l,(hl)		;505f
	rrca			;5060
	inc hl			;5061
	ld h,l			;5062
	ld (hl),a		;5063
	jp nz,0d688h		;5064
	inc hl			;5067
	ld l,(hl)		;5068
	dec hl			;5069
	defb 0edh ;next byte illegal after ed	;506a
	ld (de),a		;506b
	and a			;506c
	dec de			;506d
	dec (hl)		;506e
	sub l			;506f
l5070h:
	ld (hl),0d2h		;5070
	xor d			;5072
	jr l5004h		;5073
	inc sp			;5075
	dec c			;5076
	rla			;5077
	dec (hl)		;5078
	dec hl			;5079
	ld a,b			;507a
	ld sp,082bfh		;507b
	ld a,(hl)		;507e
	cp 064h			;507f
	cp (hl)			;5081
	ld sp,0be01h		;5082
	ld e,016h		;5085
	ld c,l			;5087
	jp nc,0c98eh		;5088
	ld h,004h		;508b
	inc (hl)		;508d
	inc (hl)		;508e
	ld a,(hl)		;508f
	sub b			;5090
	ld d,c			;5091
	sbc a,b			;5092
	jr nz,l50dch		;5093
	ld c,h			;5095
	sub b			;5096
	cp 0aah			;5097
	jp c,01718h		;5099
	ld l,a			;509c
	sub 02fh		;509d
	add hl,de		;509f
	inc bc			;50a0
	ld a,0c8h		;50a1
	ld (06ffah),a		;50a3
	dec hl			;50a6
	ld e,(hl)		;50a7
	ld l,0a2h		;50a8
	jr nz,l50cch		;50aa
	dec c			;50ac
	rra			;50ad
	ld b,b			;50ae
	dec hl			;50af
l50b0h:
	jr nz,$+7		;50b0
	ld bc,02335h		;50b2
	jp l6f34h		;50b5
	inc (hl)		;50b8
	inc hl			;50b9
	inc d			;50ba
	ld (l6c47h),a		;50bb
	ld (hl),0c8h		;50be
	add a,h			;50c0
	inc b			;50c1
	bit 3,a			;50c2
	cpl			;50c4
	ld bc,00883h		;50c5
	ld c,a			;50c8
	ld a,(hl)		;50c9
	sub c			;50ca
	ld e,e			;50cb
l50cch:
	jp nc,0254eh		;50cc
	ld l,a			;50cf
	dec a			;50d0
	cp d			;50d1
	sbc a,(hl)		;50d2
	cp (hl)			;50d3
	ld b,e			;50d4
l50d5h:
	ld d,l			;50d5
	ld l,a			;50d6
	sbc a,e			;50d7
	ld c,d			;50d8
	inc bc			;50d9
	ld l,c			;50da
	inc b			;50db
l50dch:
	dec hl			;50dc
	ld b,(hl)		;50dd
	add a,b			;50de
	and 03fh		;50df
	sbc a,062h		;50e1
	dec hl			;50e3
	ld a,c			;50e4
	ld d,l			;50e5
	ld a,(hl)		;50e6
	daa			;50e7
	sub h			;50e8
	push de			;50e9
	dec c			;50ea
	pop hl			;50eb
	ld d,h			;50ec
	add a,099h		;50ed
	ld hl,00803h		;50ef
	add a,c			;50f2
	add a,d			;50f3
	add a,e			;50f4
	ld a,c			;50f5
	jr nz,l50fch		;50f6
	sub l			;50f8
	and b			;50f9
	ld e,h			;50fa
	ld a,b			;50fb
l50fch:
	ret nc			;50fc
	jr c,$+75		;50fd
	ld de,0a0bah		;50ff
l5102h:
	jr l513ah		;5102
	inc h			;5104
	ld bc,0d4b9h		;5105
	add hl,de		;5108
sub_5109h:
	ld (hl),0ffh		;5109
	dec hl			;510b
	nop			;510c
	ret			;510d
	dec d			;510e
	and (hl)		;510f
	push bc			;5110
	jr z,l5133h		;5111
	sub h			;5113
	sub c			;5114
	push bc			;5115
	and l			;5116
	sub c			;5117
	ld (hl),a		;5118
	ld c,l			;5119
	sub e			;511a
	jr z,l50d5h		;511b
	ld a,(bc)		;511d
	dec b			;511e
	jp c,l6fb9h		;511f
	and d			;5122
	or d			;5123
	ld b,b			;5124
	ld e,(hl)		;5125
	rla			;5126
	jp z,06fc2h		;5127
	sbc a,l			;512a
l512bh:
	ld c,l			;512b
	rst 8			;512c
	call c,02919h		;512d
	inc de			;5130
	ld c,0ffh		;5131
l5133h:
	or b			;5133
	ld (de),a		;5134
	ld c,001h		;5135
	sbc a,b			;5137
	or c			;5138
	xor b			;5139
l513ah:
	ex af,af'		;513a
	ld (hl),00ah		;513b
	dec hl			;513d
	and (hl)		;513e
	add a,046h		;513f
	dec (hl)		;5141
	adc a,091h		;5142
	ld c,d			;5144
	sub c			;5145
	ld a,(0e2feh)		;5146
	dec b			;5149
	jp p,0fe6fh		;514a
	cp (hl)			;514d
	jp nc,09b04h		;514e
	jr z,l51b7h		;5151
	halt			;5153
	dec hl			;5154
	sbc a,e			;5155
	jp po,011a8h		;5156
	ret m			;5159
	ld l,a			;515a
	rst 0			;515b
	call nz,0c262h		;515c
	dec h			;515f
	dec de			;5160
	ld (hl),b		;5161
	sbc hl,bc		;5162
	ld (bc),a		;5164
	add a,033h		;5165
	ld (hl),a		;5167
	sub c			;5168
	ld (hl),d		;5169
	cp l			;516a
	ld (hl),d		;516b
	sbc a,d			;516c
	ld d,(hl)		;516d
	jp m,l602ah		;516e
	defb 0fdh,024h ;inc iyh	;5171
	dec a			;5173
	ld a,020h		;5174
	inc b			;5176
	ex af,af'		;5177
	add a,008h		;5178
	cp 0f3h			;517a
	xor (hl)		;517c
	pop hl			;517d
	out (077h),a		;517e
	xor e			;5180
	adc a,c			;5181
	ld d,h			;5182
	add a,b			;5183
	cp 000h			;5184
	jr z,$+11		;5186
	cp 01eh			;5188
	ld bc,02f28h		;518a
	cp d			;518d
	ld c,c			;518e
	ret m			;518f
	jr c,l51a3h		;5190
	ld sp,hl		;5192
	ld l,a			;5193
	jp nz,0d611h		;5194
	inc bc			;5197
	ret pe			;5198
	ld l,h			;5199
	add a,h			;519a
	jp m,06280h		;519b
	ret c			;519e
l519fh:
	jr z,$+25		;519f
	ld b,(hl)		;51a1
	cp b			;51a2
l51a3h:
	jr c,l520bh		;51a3
	inc de			;51a5
l51a6h:
	ld a,(bc)		;51a6
	add a,b			;51a7
l51a8h:
	call c,sub_64c4h	;51a8
	inc sp			;51ab
	push bc			;51ac
	xor h			;51ad
	cp l			;51ae
	jp z,l5201h		;51af
	ld (hl),h		;51b2
	ld (0e52bh),a		;51b3
	ld sp,hl		;51b6
l51b7h:
	ld hl,(06ff7h)		;51b7
	pop de			;51ba
	ld b,e			;51bb
	add a,(hl)		;51bc
	ld b,(hl)		;51bd
	ex de,hl		;51be
	call 0eb5eh		;51bf
	ld (07083h),hl		;51c2
	call z,083f2h		;51c5
	ld hl,0e5e1h		;51c8
	ld a,(l6915h)		;51cb
	ret nc			;51ce
	inc d			;51cf
	out (098h),a		;51d0
	inc d			;51d2
	and h			;51d3
	ld a,(0a703h)		;51d4
	dec b			;51d7
	jp z,l70aeh		;51d8
	ld de,0c305h		;51db
	ld h,c			;51de
	cpl			;51df
	inc a			;51e0
	sub 048h		;51e1
	nop			;51e3
	ld e,b			;51e4
	inc hl			;51e5
	ld b,e			;51e6
	jr z,$+121		;51e7
	jp po,00a11h		;51e9
	call nz,0236fh		;51ec
	push af			;51ef
l51f0h:
	ld e,d			;51f0
	dec h			;51f1
	ret z			;51f2
	adc a,h			;51f3
	add a,c			;51f4
	adc a,e			;51f5
	xor d			;51f6
	ret po			;51f7
	ld c,c			;51f8
	dec b			;51f9
	ret nz			;51fa
	add a,c			;51fb
	ld d,l			;51fc
l51fdh:
	sub c			;51fd
	dec h			;51fe
	and b			;51ff
	inc h			;5200
l5201h:
	ret nc			;5201
	out (0bdh),a		;5202
	jp z,0bfc9h		;5204
	or c			;5207
l5208h:
	or a			;5208
	jr nc,l519fh		;5209
l520bh:
	adc a,c			;520b
l520ch:
	adc a,c			;520c
	ld b,(hl)		;520d
	ret c			;520e
	ld b,c			;520f
	add a,040h		;5210
	cp b			;5212
	cp a			;5213
	djnz l51f0h		;5214
	jp m,00170h		;5216
	or 008h			;5219
	jp l70fch		;521b
	and 0f7h		;521e
	sbc a,c			;5220
l5221h:
	add hl,hl		;5221
sub_5222h:
	pop de			;5222
	ld e,h			;5223
	add hl,hl		;5224
	ld c,h			;5225
	sub d			;5226
	sub l			;5227
	ld sp,00992h		;5228
	ret			;522b
	adc a,a			;522c
	ld c,d			;522d
	jp c,02a60h		;522e
	ld (hl),c		;5231
	ld d,d			;5232
	ld (hl),0e8h		;5233
	nop			;5235
	ld a,008h		;5236
	add a,(hl)		;5238
	cp 09bh			;5239
	jp nz,00227h		;523b
	ld (hl),c		;523e
	ld a,083h		;523f
	ld (hl),a		;5241
	and a			;5242
	add hl,de		;5243
	ld sp,hl		;5244
	sub (hl)		;5245
	and 050h		;5246
	ld a,(04457h)		;5248
	pop bc			;524b
	jp m,038d2h		;524c
	ld e,(hl)		;524f
	ld (hl),c		;5250
	ex af,af'		;5251
	halt			;5252
	ld (bc),a		;5253
	ex af,af'		;5254
	inc bc			;5255
	defb 0edh ;next byte illegal after ed	;5256
	ex af,af'		;5257
	inc b			;5258
	ex af,af'		;5259
	in a,(005h)		;525a
	ex af,af'		;525c
	ld h,d			;525d
	rst 28h			;525e
	djnz $-54		;525f
	jp 0042bh		;5261
	rst 0			;5264
	jp 08c23h		;5265
	call nc,0c964h		;5268
	add a,d			;526b
	dec d			;526c
	ld l,h			;526d
	nop			;526e
	and 024h		;526f
	ret nz			;5271
	rst 20h			;5272
	nop			;5273
	ld a,(bc)		;5274
	ld e,e			;5275
	ld a,(bc)		;5276
	inc bc			;5277
	nop			;5278
	rrca			;5279
	add a,(hl)		;527a
	and e			;527b
	ld h,0b0h		;527c
	and b			;527e
	ld h,h			;527f
	ld a,(bc)		;5280
l5281h:
	nop			;5281
	ret pe			;5282
	rrca			;5283
	jp po,l66abh		;5284
l5287h:
	jr z,l5221h		;5287
	ld e,0ffh		;5289
	djnz $+17		;528b
	ld b,0a3h		;528d
	ld hl,(l5d1fh)		;528f
	cpl			;5292
	rrca			;5293
	ret po			;5294
	ccf			;5295
	rrca			;5296
	rst 38h			;5297
	ld b,0f1h		;5298
	ccf			;529a
	ld bc,0c3e2h		;529b
l529eh:
	cpl			;529e
	ld bc,0080ah		;529f
	dec c			;52a2
	ccf			;52a3
	jp po,l63b3h		;52a4
	dec l			;52a7
	ld e,(hl)		;52a8
	adc a,h			;52a9
	rrca			;52aa
	call nz,031cbh		;52ab
	ld e,0fbh		;52ae
	dec b			;52b0
	inc c			;52b1
	ccf			;52b2
	ld h,0e0h		;52b3
	out (0e8h),a		;52b5
	ld h,c			;52b7
	ld c,00ah		;52b8
	rra			;52ba
	jp pe,0f210h		;52bb
	rra			;52be
	add a,a			;52bf
	ld c,a			;52c0
	rst 38h			;52c1
	ld a,(bc)		;52c2
	ld (de),a		;52c3
	ld c,a			;52c4
l52c5h:
	sub c			;52c5
	ld a,e			;52c6
	scf			;52c7
	ld b,00fh		;52c8
	inc d			;52ca
	ld a,(bc)		;52cb
	inc c			;52cc
	ld l,a			;52cd
	rlca			;52ce
l52cfh:
	ld h,e			;52cf
	rrca			;52d0
	or d			;52d1
	add a,e			;52d2
	rrca			;52d3
	inc hl			;52d4
	inc b			;52d5
	jr l5287h		;52d6
	or b			;52d8
	ld bc,08250h		;52d9
	ld e,002h		;52dc
	ld (hl),b		;52de
	jr z,l5309h		;52df
	sub b			;52e1
	and b			;52e2
	scf			;52e3
	dec b			;52e4
l52e5h:
	jr $+15			;52e5
	nop			;52e7
	ld e,002h		;52e8
	ld e,080h		;52ea
	ld (bc),a		;52ec
	ld a,(bc)		;52ed
	and b			;52ee
	and b			;52ef
	dec c			;52f0
	ld b,b			;52f1
	ld b,(hl)		;52f2
	call nz,02102h		;52f3
	ld (bc),a		;52f6
	ld d,(hl)		;52f7
	daa			;52f8
	and b			;52f9
	adc a,h			;52fa
	inc d			;52fb
	ld b,(hl)		;52fc
	ld (bc),a		;52fd
	jr z,l5317h		;52fe
	ld (bc),a		;5300
	ld e,060h		;5301
	ld bc,02878h		;5303
l5306h:
	ret nz			;5306
	ld d,b			;5307
	inc a			;5308
l5309h:
	or b			;5309
	adc a,a			;530a
	dec b			;530b
	djnz $+34		;530c
	inc d			;530e
	ld (bc),a		;530f
	ld (l4fb0h),a		;5310
	ex af,af'		;5313
	ld de,037b0h		;5314
l5317h:
	ld h,b			;5317
	ld (bc),a		;5318
	inc b			;5319
	ld d,b			;531a
	ld h,h			;531b
	ld h,h			;531c
	add hl,hl		;531d
	add a,h			;531e
	ld b,h			;531f
	ld d,l			;5320
	add hl,hl		;5321
	ld (bc),a		;5322
	ld a,(bc)		;5323
	ld de,0aa40h		;5324
	ex af,af'		;5327
	ld (bc),a		;5328
	rlca			;5329
	ret nz			;532a
	ret po			;532b
	ret po			;532c
	djnz $-86		;532d
	inc e			;532f
	inc d			;5330
	jr nc,$-86		;5331
	ld (de),a		;5333
	dec b			;5334
	dec (hl)		;5335
	add a,d			;5336
	nop			;5337
	add hl,bc		;5338
	jr nz,l52e5h		;5339
	ld (l50b0h),hl		;533b
	ld d,b			;533e
	ld h,b			;533f
	inc b			;5340
	ld (hl),e		;5341
	ld bc,09160h		;5342
	ld a,h			;5345
	ex af,af'		;5346
	inc l			;5347
	add a,(hl)		;5348
	inc d			;5349
	ld d,(hl)		;534a
	add a,b			;534b
	ld b,(hl)		;534c
	cp c			;534d
	adc a,b			;534e
	ld c,h			;534f
	ld (bc),a		;5350
	ld c,(hl)		;5351
	ld d,084h		;5352
	dec b			;5354
	ld b,c			;5355
	and b			;5356
	ld h,h			;5357
	ld (bc),a		;5358
	ld l,(hl)		;5359
	add a,c			;535a
	ld (bc),a		;535b
	ld d,b			;535c
	ld a,0a0h		;535d
	ld e,d			;535f
	ccf			;5360
	ld (bc),a		;5361
	inc h			;5362
	ld a,(de)		;5363
	ex af,af'		;5364
	ld l,c			;5365
	ld h,d			;5366
	ld de,l5fbah		;5367
	adc a,(hl)		;536a
	or d			;536b
	jp z,08208h		;536c
	ld l,(hl)		;536f
	and a			;5370
	rrca			;5371
	ld (hl),b		;5372
	inc d			;5373
	ld (bc),a		;5374
	dec c			;5375
	inc a			;5376
	rrca			;5377
	sub b			;5378
	cp (hl)			;5379
	ex af,af'		;537a
	jr c,$-110		;537b
	cp c			;537d
	dec b			;537e
	ld c,c			;537f
	or h			;5380
	dec b			;5381
l5382h:
	nop			;5382
	dec b			;5383
	ret z			;5384
	dec b			;5385
	jp p,03220h		;5386
	dec b			;5389
	dec a			;538a
	ret nc			;538b
	add a,a			;538c
	dec h			;538d
	inc d			;538e
	and b			;538f
	and d			;5390
l5391h:
	ld b,h			;5391
	dec b			;5392
	adc a,044h		;5393
	xor d			;5395
	inc d			;5396
	sbc a,e			;5397
	ld c,c			;5398
	ld e,005h		;5399
	ld bc,00462h		;539b
	ld e,050h		;539e
	adc a,h			;53a0
	ld c,e			;53a1
	add a,l			;53a2
	ld c,c			;53a3
	ld e,00eh		;53a4
	ld bc,04462h		;53a6
	dec bc			;53a9
	and b			;53aa
	cp a			;53ab
	or (hl)			;53ac
	ld b,b			;53ad
	ld (hl),h		;53ae
	ret nc			;53af
	ld c,b			;53b0
	inc a			;53b1
l53b2h:
	ret nz			;53b2
	inc b			;53b3
	add a,b			;53b4
	inc d			;53b5
	add a,b			;53b6
	and e			;53b7
	ld b,(hl)		;53b8
	sub d			;53b9
	ld c,d			;53ba
	ld a,b			;53bb
	ld (bc),a		;53bc
	and (hl)		;53bd
	ld b,b			;53be
	ld l,001h		;53bf
l53c1h:
	djnz $-58		;53c1
	push bc			;53c3
	ld (bc),a		;53c4
	rrca			;53c5
	ld (bc),a		;53c6
	sbc a,e			;53c7
	inc e			;53c8
	add a,0a4h		;53c9
	inc h			;53cb
	ccf			;53cc
	ld (bc),a		;53cd
	ld a,e			;53ce
	ld (bc),a		;53cf
	res 2,d			;53d0
	ld (bc),a		;53d2
	ex af,af'		;53d3
	ld d,(hl)		;53d4
	ex af,af'		;53d5
	ld e,h			;53d6
	ld c,c			;53d7
	add hl,bc		;53d8
	dec b			;53d9
	inc c			;53da
	dec b			;53db
	ld c,h			;53dc
	dec b			;53dd
	ld c,h			;53de
	dec e			;53df
l53e0h:
	nop			;53e0
	ld d,(hl)		;53e1
	ld b,b			;53e2
	ld h,l			;53e3
	ld d,(hl)		;53e4
	add hl,bc		;53e5
	ld b,b			;53e6
	sub (hl)		;53e7
	add hl,bc		;53e8
l53e9h:
	ret nz			;53e9
	nop			;53ea
	ld e,(hl)		;53eb
	dec l			;53ec
	or b			;53ed
	xor b			;53ee
	djnz l53c1h		;53ef
	adc a,(hl)		;53f1
	dec a			;53f2
sub_53f3h:
	nop			;53f3
	or b			;53f4
	adc a,(hl)		;53f5
	ld bc,l4ed0h		;53f6
	dec sp			;53f9
	ld (hl),b		;53fa
	jr nz,l53feh		;53fb
	ld b,d			;53fd
l53feh:
	or b			;53fe
	ld h,a			;53ff
l5400h:
	rra			;5400
	ret nc			;5401
	ld c,c			;5402
	ld d,b			;5403
	ex af,af'		;5404
	ld c,c			;5405
	inc l			;5406
	ld b,c			;5407
l5408h:
	ld (bc),a		;5408
	inc a			;5409
	ld (bc),a		;540a
	inc b			;540b
	scf			;540c
	inc sp			;540d
	ld (hl),b		;540e
	ld (02d05h),a		;540f
	sub a			;5412
	ld (bc),a		;5413
	jr z,l5418h		;5414
	or b			;5416
	add a,b			;5417
l5418h:
	sub b			;5418
	jp nc,0900ch		;5419
	call c,00282h		;541c
	and 06ch		;541f
	sub b			;5421
l5422h:
	ret p			;5422
	add a,l			;5423
	ld h,d			;5424
	sub c			;5425
	add hl,hl		;5426
	di			;5427
	ld b,h			;5428
	inc a			;5429
	adc a,e			;542a
	pop bc			;542b
	inc sp			;542c
	ld d,b			;542d
	ld a,b			;542e
l542fh:
	ld b,(hl)		;542f
	sub d			;5430
	inc d			;5431
	sbc a,b			;5432
	ld d,d			;5433
	pop hl			;5434
	ld c,b			;5435
	add a,h			;5436
	inc e			;5437
	and b			;5438
	dec b			;5439
	ld c,l			;543a
	cpl			;543b
	ld l,d			;543c
	or b			;543d
	cpl			;543e
	ld bc,0b024h		;543f
	ld b,a			;5442
	rlca			;5443
	or b			;5444
	ld h,b			;5445
	rla			;5446
	ld l,d			;5447
	inc b			;5448
	ld hl,l77b0h		;5449
	dec (hl)		;544c
	adc a,l			;544d
	add a,c			;544e
	rrca			;544f
	ld b,b			;5450
	or h			;5451
	djnz $+13		;5452
	ld c,d			;5454
l5455h:
	ld (bc),a		;5455
	jr z,l545ah		;5456
	ret po			;5458
	ld c,c			;5459
l545ah:
	dec b			;545a
	add hl,de		;545b
	dec bc			;545c
	ld a,l			;545d
	call po,02499h		;545e
	sbc a,d			;5461
	ret c			;5462
	dec b			;5463
	inc hl			;5464
	add a,d			;5465
	dec b			;5466
	jr z,l53e9h		;5467
	dec h			;5469
	rrca			;546a
	rla			;546b
sub_546ch:
	or 002h			;546c
	ld d,c			;546e
	ld b,c			;546f
	ld (bc),a		;5470
	cp c			;5471
	adc a,b			;5472
	ld a,(bc)		;5473
	cp h			;5474
	ret z			;5475
	cp c			;5476
	jp z,0b902h		;5477
	ld (l5fc0h),a		;547a
	ld bc,005ffh		;547d
	ld l,l			;5480
	ld (bc),a		;5481
	ex af,af'		;5482
	nop			;5483
	rst 38h			;5484
	rst 38h			;5485
	nop			;5486
	sbc a,023h		;5487
	nop			;5489
	nop			;548a
	nop			;548b
	jp l4ac3h		;548c
l548fh:
	inc b			;548f
	ex af,af'		;5490
	ex af,af'		;5491
	inc b			;5492
	inc b			;5493
	ld bc,00303h		;5494
	rlca			;5497
	nop			;5498
	jp m,00001h		;5499
	nop			;549c
	inc c			;549d
	ex af,af'		;549e
	inc c			;549f
	nop			;54a0
	nop			;54a1
	ld (bc),a		;54a2
	ret nz			;54a3
	ret nz			;54a4
	ret z			;54a5
	jp nz,03cf8h		;54a6
	rlca			;54a9
	jr nc,$+98		;54aa
	nop			;54ac
	inc bc			;54ad
	ld h,b			;54ae
	jr l54d1h		;54af
	inc e			;54b1
	ld c,015h		;54b2
	ld e,020h		;54b4
	rra			;54b6
	rla			;54b7
	ld b,003h		;54b8
	rrca			;54ba
	ld c,01ch		;54bb
	jr l54deh		;54bd
	ret nz			;54bf
	nop			;54c0
	ret po			;54c1
	ret p			;54c2
	call p,00fdeh		;54c3
	scf			;54c6
	rst 38h			;54c7
	ret m			;54c8
	ld a,(bc)		;54c9
	ld b,b			;54ca
	sub b			;54cb
	dec b			;54cc
	nop			;54cd
	defb 0fdh,001h,04eh ;illegal sequence	;54ce
l54d1h:
	rlca			;54d1
	inc c			;54d2
	djnz l54f4h		;54d3
	ld h,b			;54d5
	ccf			;54d6
	jp p,03ffch		;54d7
	cp 01eh			;54da
	cp (hl)			;54dc
	ret nz			;54dd
l54deh:
	nop			;54de
	ld b,b			;54df
	ld (bc),a		;54e0
	djnz l5522h		;54e1
	rra			;54e3
	ld e,h			;54e4
	rlca			;54e5
	ld bc,0381ch		;54e6
	jr nc,l54ebh		;54e9
l54ebh:
	nop			;54eb
	ld (0f6d8h),hl		;54ec
	ld (iy+078h),e		;54ef
	inc b			;54f2
	ccf			;54f3
l54f4h:
	ld b,c			;54f4
	dec sp			;54f5
	ld bc,000f2h		;54f6
	ld (bc),a		;54f9
	rrca			;54fa
	halt			;54fb
	ccf			;54fc
	call pe,0e251h		;54fd
	ld h,c			;5500
	add a,b			;5501
	ld (hl),d		;5502
	ccf			;5503
	ld (hl),b		;5504
	ret nc			;5505
	ccf			;5506
	jr $+65			;5507
	jr c,l551fh		;5509
	ld e,00fh		;550b
l550dh:
	rlca			;550d
	inc c			;550e
	ccf			;550f
	ld bc,07c40h		;5510
	ld a,(hl)		;5513
	rra			;5514
	add a,b			;5515
	ld d,008h		;5516
	ld a,0ffh		;5518
l551ah:
	nop			;551a
l551bh:
	call po,sub_5a00h	;551b
	rra			;551e
l551fh:
	nop			;551f
	rst 38h			;5520
	inc bc			;5521
l5522h:
	add hl,bc		;5522
	ld a,h			;5523
	add hl,bc		;5524
	inc bc			;5525
	rst 38h			;5526
	rra			;5527
	or b			;5528
	ld h,h			;5529
l552ah:
	jr nc,l557ch		;552a
	cp b			;552c
	nop			;552d
	call nc,0d8dah		;552e
	djnz l551bh		;5531
l5533h:
	djnz l550dh		;5533
	jp c,0d41ch		;5535
	cp b			;5538
	ld d,b			;5539
l553ah:
	ld c,e			;553a
	daa			;553b
	inc bc			;553c
	jr nz,l557bh		;553d
	dec e			;553f
	ld a,d			;5540
	nop			;5541
	ret nc			;5542
	nop			;5543
	ret pe			;5544
	ld d,0e8h		;5545
	jr l5533h		;5547
	call nc,0d0e8h		;5549
	jp pe,0000fh		;554c
	inc bc			;554f
	rlca			;5550
	ld a,a			;5551
	rst 38h			;5552
	ld a,a			;5553
	rrca			;5554
	inc bc			;5555
	ld c,0c0h		;5556
	and b			;5558
	xor b			;5559
	daa			;555a
	call nc,01ed6h		;555b
	ret po			;555e
	ld c,07ch		;555f
	ld h,c			;5561
	inc sp			;5562
	inc a			;5563
	ld b,b			;5564
	rrca			;5565
	and (hl)		;5566
	ld d,b			;5567
	ld e,033h		;5568
	jr l55afh		;556a
	ld e,l			;556c
	sbc a,(hl)		;556d
	nop			;556e
	add hl,de		;556f
	inc a			;5570
	nop			;5571
	dec c			;5572
	ex (sp),hl		;5573
	rrca			;5574
	ret pe			;5575
	ld bc,000e3h		;5576
	rlca			;5579
	push bc			;557a
l557bh:
	add a,b			;557b
l557ch:
	nop			;557c
	rst 0			;557d
	rlca			;557e
	adc a,a			;557f
	ccf			;5580
	rst 18h			;5581
	nop			;5582
	ret m			;5583
	jr nz,l55b6h		;5584
	inc e			;5586
	dec b			;5587
	dec d			;5588
	dec (hl)		;5589
l558ah:
	ld (de),a		;558a
	dec d			;558b
	dec b			;558c
	inc e			;558d
	cp e			;558e
	call c,0a0dfh		;558f
	ret p			;5592
	call m,sub_7bf0h	;5593
	ret nz			;5596
	dec h			;5597
	nop			;5598
	ld (bc),a		;5599
	ld e,c			;559a
	sub e			;559b
	or (hl)			;559c
	rst 8			;559d
	ld h,c			;559e
	ex af,af'		;559f
	pop af			;55a0
	djnz l55b1h		;55a1
	ld b,b			;55a3
	ld a,(0ec57h)		;55a4
	ld a,a			;55a7
	jp 0f060h		;55a8
	ret p			;55ab
	ld h,b			;55ac
	ld e,(hl)		;55ad
	rst 20h			;55ae
l55afh:
	and d			;55af
	sub (hl)		;55b0
l55b1h:
	sub l			;55b1
	add a,(hl)		;55b2
	jr nc,l55b5h		;55b3
l55b5h:
	ld c,l			;55b5
l55b6h:
	and (hl)		;55b6
	and d			;55b7
	inc l			;55b8
	jp 0385ch		;55b9
	jr l55cah		;55bc
	nop			;55be
	ld c,018h		;55bf
	jr c,l5626h		;55c1
	ld b,b			;55c3
	inc bc			;55c4
	inc c			;55c5
	inc de			;55c6
	rla			;55c7
	ld l,02ch		;55c8
l55cah:
	rlca			;55ca
	inc l			;55cb
	ld l,017h		;55cc
	inc de			;55ce
	inc c			;55cf
	rra			;55d0
	jr nz,$+50		;55d1
	ret z			;55d3
	ret pe			;55d4
	ld (hl),h		;55d5
	inc (hl)		;55d6
	ld b,034h		;55d7
	ld (hl),h		;55d9
	ret pe			;55da
	ret z			;55db
	jr nc,$+33		;55dc
	ret			;55de
	ld a,01eh		;55df
	push de			;55e1
	sub h			;55e2
	ld (hl),b		;55e3
	and l			;55e4
	ld b,070h		;55e5
	jr nc,l5621h		;55e7
	ld e,040h		;55e9
	ret nz			;55eb
	ld a,078h		;55ec
	inc e			;55ee
	inc c			;55ef
	ld c,006h		;55f0
	ld c,h			;55f2
	ld b,0f3h		;55f3
	inc e			;55f5
	ld l,h			;55f6
	ld a,b			;55f7
	ld b,b			;55f8
	ld a,011h		;55f9
l55fbh:
	nop			;55fb
	ld h,028h		;55fc
	ld c,b			;55fe
	ld d,b			;55ff
	ld d,b			;5600
	ld c,b			;5601
	jr z,$+40		;5602
	ld l,h			;5604
	ld de,03e40h		;5605
	adc a,b			;5608
	nop			;5609
	ld h,h			;560a
	inc d			;560b
	ld (de),a		;560c
	ld a,(bc)		;560d
	ld a,(bc)		;560e
	ld (de),a		;560f
	inc d			;5610
	ld h,h			;5611
l5612h:
	ld h,l			;5612
	adc a,b			;5613
	ld b,b			;5614
	push bc			;5615
	dec d			;5616
	sbc a,h			;5617
	inc c			;5618
	jr nz,l567bh		;5619
	ret nz			;561b
	nop			;561c
	nop			;561d
	ld h,b			;561e
	jr nz,l5621h		;561f
l5621h:
	inc c			;5621
	rlca			;5622
	inc bc			;5623
	ret nz			;5624
	ret po			;5625
l5626h:
	ld d,b			;5626
	jr nc,l55fbh		;5627
	ld b,061h		;5629
	inc bc			;562b
	nop			;562c
	ld b,004h		;562d
	ld sp,hl		;562f
	djnz l5612h		;5630
	ret nz			;5632
	inc bc			;5633
	ld b,(hl)		;5634
	inc b			;5635
l5636h:
	jp z,0cacah		;5636
	xor c			;5639
	ld b,b			;563a
	call pe,01f6ah		;563b
	dec h			;563e
	ex de,hl		;563f
	ld (055eah),a		;5640
	ld (bc),a		;5643
	ex af,af'		;5644
	adc a,b			;5645
	jr nz,l5688h		;5646
	rra			;5648
	djnz l564fh		;5649
	jr nc,$-78		;564b
	jr nc,$+18		;564d
l564fh:
	rra			;564f
	dec bc			;5650
	ld a,(hl)		;5651
	ld h,l			;5652
	ld h,e			;5653
	ld bc,024d0h		;5654
	call nc,00571h		;5657
	add a,b			;565a
	ld a,030h		;565b
	ld a,h			;565d
	jr nc,$+64		;565e
	nop			;5660
	nop			;5661
	ccf			;5662
	ret po			;5663
	ld l,a			;5664
	adc a,b			;5665
	ex af,af'		;5666
	adc a,b			;5667
	ld l,a			;5668
	ld b,020h		;5669
	ccf			;566b
	rst 38h			;566c
	add a,c			;566d
	sbc a,h			;566e
	ld bc,0d052h		;566f
	inc sp			;5672
	rst 38h			;5673
	ld c,e			;5674
	dec b			;5675
	nop			;5676
	ld a,a			;5677
l5678h:
	pop bc			;5678
	rst 8			;5679
	add a,e			;567a
l567bh:
	rst 8			;567b
	pop bc			;567c
	ld a,b			;567d
	ld a,a			;567e
	cpl			;567f
	add a,d			;5680
	jr c,l56efh		;5681
	add a,0feh		;5683
	add a,006h		;5685
	ld e,b			;5687
l5688h:
	ret m			;5688
	jp 02d0dh		;5689
	inc c			;568c
	ex af,af'		;568d
	sbc a,d			;568e
	ld (bc),a		;568f
	add a,0eeh		;5690
	cp 0d6h			;5692
	rrca			;5694
	ret p			;5695
	cpl			;5696
	nop			;5697
	ld a,l			;5698
	rst 0			;5699
	sub e			;569a
	add hl,sp		;569b
	ld bc,0ef39h		;569c
	call m,00700h		;569f
	or 081h			;56a2
	add a,b			;56a4
	add a,c			;56a5
	or 007h			;56a6
	call m,0ef05h		;56a8
	add hl,sp		;56ab
	ld de,02901h		;56ac
	rrca			;56af
	add a,c			;56b0
	ld c,h			;56b1
	ld (bc),a		;56b2
	ld (bc),a		;56b3
	ld b,018h		;56b4
	jr l56beh		;56b6
	sub h			;56b8
	ld (l59d0h),a		;56b9
	adc a,h			;56bc
	xor d			;56bd
l56beh:
	ld c,b			;56be
	ld h,b			;56bf
	rrca			;56c0
	ld h,b			;56c1
	or h			;56c2
	jp z,l69a1h		;56c3
	nop			;56c6
	sbc a,060h		;56c7
	rla			;56c9
	rla			;56ca
	dec b			;56cb
	adc a,e			;56cc
	ei			;56cd
	rra			;56ce
	cp c			;56cf
	add a,e			;56d0
	ld (bc),a		;56d1
	and b			;56d2
	ret pe			;56d3
l56d4h:
	ret pe			;56d4
	and b			;56d5
	cp d			;56d6
	add hl,hl		;56d7
	sbc a,l			;56d8
	xor 03ah		;56d9
	ld b,h			;56db
l56dch:
	inc b			;56dc
	call pe,sub_4f0ch	;56dd
	rrca			;56e0
	sub d			;56e1
	adc a,c			;56e2
	ret c			;56e3
l56e4h:
	jr $-42			;56e4
	djnz l5708h		;56e6
	and b			;56e8
	ret po			;56e9
	ld (hl),a		;56ea
	jr nz,l570ch		;56eb
	and c			;56ed
	ld d,b			;56ee
l56efh:
	dec b			;56ef
	rlca			;56f0
	dec bc			;56f1
	ld a,c			;56f2
	ld a,(bc)		;56f3
l56f4h:
	rra			;56f4
	ld d,h			;56f5
	cp h			;56f6
	ret nc			;56f7
	ld e,l			;56f8
	ret po			;56f9
	ld e,a			;56fa
	rra			;56fb
	and d			;56fc
	nop			;56fd
	or b			;56fe
	ld b,d			;56ff
	inc b			;5700
	ld b,e			;5701
	ld (bc),a		;5702
	inc bc			;5703
	ld (bc),a		;5704
	or b			;5705
	sbc a,e			;5706
	ld d,a			;5707
l5708h:
	and b			;5708
	ld a,089h		;5709
	dec sp			;570b
l570ch:
	ret m			;570c
	ld e,(hl)		;570d
l570eh:
	call nz,00b1fh		;570e
	add a,c			;5711
	ld c,e			;5712
	inc bc			;5713
	ld a,l			;5714
	rra			;5715
	jp nz,l60a3h		;5716
	ret nc			;5719
	ret p			;571a
	ret pe			;571b
	jr z,l570eh		;571c
	rra			;571e
	dec (hl)		;571f
	rra			;5720
	ccf			;5721
	nop			;5722
	rra			;5723
	sbc a,a			;5724
l5725h:
	ld l,(hl)		;5725
l5726h:
	dec hl			;5726
	jr nz,l5767h		;5727
	ld a,a			;5729
	dec hl			;572a
	sub b			;572b
	ret pe			;572c
	ld h,040h		;572d
	ret nz			;572f
	and l			;5730
	and a			;5731
	ld (bc),a		;5732
	adc a,a			;5733
	ld h,e			;5734
	ret po			;5735
	and c			;5736
	ld b,009h		;5737
	rrca			;5739
	call c,0fe74h		;573a
	ld (hl),a		;573d
	jp po,0d83ah		;573e
	rla			;5741
	ld c,b			;5742
	ld c,b			;5743
	jr nz,l5767h		;5744
	jr nz,l56dch		;5746
	inc bc			;5748
	ld c,0b6h		;5749
	sbc a,0f6h		;574b
	jr nz,l57afh		;574d
	inc e			;574f
	jr nc,$-6		;5750
	ld (hl),b		;5752
	ld a,(bc)		;5753
	rla			;5754
	ld a,a			;5755
	ld a,a			;5756
	defb 0edh ;next byte illegal after ed	;5757
	rst 20h			;5758
	dec c			;5759
	ex de,hl		;575a
	rst 38h			;575b
	ld a,h			;575c
	ld l,h			;575d
	nop			;575e
	jp z,03ccah		;575f
	jr nc,l56f4h		;5762
	ld l,c			;5764
	sbc a,a			;5765
	rst 0			;5766
l5767h:
	add a,00fh		;5767
	nop			;5769
	rst 18h			;576a
l576bh:
	ret c			;576b
l576ch:
	rst 18h			;576c
	exx			;576d
	ret c			;576e
	inc bc			;576f
	nop			;5770
	ei			;5771
	jp 0c3f3h		;5772
l5775h:
	ei			;5775
	rrca			;5776
	add a,b			;5777
sub_5778h:
	sbc a,a			;5778
sub_5779h:
	ret c			;5779
	sbc a,(hl)		;577a
	sbc a,b			;577b
	ld bc,000dfh		;577c
	di			;577f
	dec de			;5780
	di			;5781
	inc sp			;5782
	dec de			;5783
	add a,a			;5784
	ld de,01d0fh		;5785
	add a,h			;5788
	ld l,l			;5789
	ld e,h			;578a
	ret po			;578b
	ret nz			;578c
l578dh:
	cp a			;578d
	inc bc			;578e
	ld a,(0e12ah)		;578f
	inc a			;5792
	cp b			;5793
	ld a,(00831h)		;5794
	dec e			;5797
	ld c,h			;5798
	nop			;5799
	nop			;579a
	rst 38h			;579b
	sub e			;579c
	ret nz			;579d
	jr nz,l57cdh		;579e
	dec hl			;57a0
	dec hl			;57a1
	dec l			;57a2
	ld d,02dh		;57a3
	inc l			;57a5
	cpl			;57a6
sub_57a7h:
	inc bc			;57a7
	ld b,0b5h		;57a8
	jr nz,l57ach		;57aa
l57ach:
	dec hl			;57ac
	ld c,0b9h		;57ad
l57afh:
	dec d			;57af
l57b0h:
	dec c			;57b0
	adc a,000h		;57b1
	ld (hl),02fh		;57b3
	ld a,(de)		;57b5
	inc de			;57b6
	defb 0edh ;next byte illegal after ed	;57b7
	ld c,02bh		;57b8
	inc c			;57ba
	add a,d			;57bb
	dec l			;57bc
	cpl			;57bd
	inc l			;57be
	inc de			;57bf
	ex (sp),hl		;57c0
	dec c			;57c1
	ccf			;57c2
	sub a			;57c3
	ld hl,(0ad3fh)		;57c4
	ld c,03fh		;57c7
	and 02ah		;57c9
l57cbh:
	pop hl			;57cb
	ccf			;57cc
l57cdh:
	ld hl,(0e83fh)		;57cd
	ld hl,(03feeh)		;57d0
	inc e			;57d3
	call z,00400h		;57d4
	rst 20h			;57d7
	rlca			;57d8
	sub d			;57d9
	dec (hl)		;57da
	dec hl			;57db
	xor l			;57dc
	add a,04ch		;57dd
	ld (hl),b		;57df
	or b			;57e0
	dec hl			;57e1
	adc a,(hl)		;57e2
	and e			;57e3
	call 02e2eh		;57e4
	rrca			;57e7
	and e			;57e8
	ld d,0b5h		;57e9
	call nz,0080fh		;57eb
	ld e,e			;57ee
l57efh:
	ex af,af'		;57ef
	exx			;57f0
	ld e,c			;57f1
	ld b,(hl)		;57f2
	nop			;57f3
	add a,l			;57f4
	add hl,bc		;57f5
	dec hl			;57f6
	ld bc,l456eh		;57f7
	and c			;57fa
	inc (hl)		;57fb
	ld d,e			;57fc
	dec (hl)		;57fd
	nop			;57fe
	dec bc			;57ff
	ex de,hl		;5800
	inc h			;5801
	ld c,d			;5802
l5803h:
	ld bc,0320ch		;5803
	dec bc			;5806
	dec l			;5807
	dec bc			;5808
	ld (de),a		;5809
	jp nc,02b1fh		;580a
	add hl,hl		;580d
	and l			;580e
	scf			;580f
	rra			;5810
	ld c,l			;5811
l5812h:
	jr nz,l5842h		;5812
	rra			;5814
	sbc a,020h		;5815
	ret po			;5817
	ld e,02ch		;5818
	rra			;581a
	adc a,e			;581b
	dec hl			;581c
	add hl,bc		;581d
	rra			;581e
	ret nc			;581f
	ld a,(bc)		;5820
	inc c			;5821
	xor (hl)		;5822
	ld de,l6f0bh		;5823
	adc a,e			;5826
	ld c,00bh		;5827
	ret			;5829
	ret m			;582a
	adc a,a			;582b
	dec bc			;582c
	ld c,005h		;582d
	rra			;582f
	nop			;5830
	adc a,a			;5831
l5832h:
	add hl,de		;5832
	ld e,(hl)		;5833
	ld l,000h		;5834
	rst 8			;5836
	ld l,e			;5837
	nop			;5838
	ld l,c			;5839
	rst 38h			;583a
	cp 0fdh			;583b
	add hl,hl		;583d
	nop			;583e
	rst 30h			;583f
	ld a,020h		;5840
l5842h:
	nop			;5842
	xor 09bh		;5843
	ld h,000h		;5845
	dec bc			;5847
	inc bc			;5848
	ld b,(hl)		;5849
	in l,(c)		;584a
	nop			;584c
	nop			;584d
	ld c,c			;584e
	ld c,c			;584f
	inc bc			;5850
	ld c,h			;5851
	ld b,(hl)		;5852
	ld b,a			;5853
	ld b,(hl)		;5854
	ld c,h			;5855
	ld c,c			;5856
	nop			;5857
	or a			;5858
	ld c,000h		;5859
	or e			;585b
	ld c,e			;585c
	nop			;585d
	jp c,03583h		;585e
	ex af,af'		;5861
	nop			;5862
	rst 8			;5863
	ret z			;5864
	or e			;5865
	nop			;5866
	add a,b			;5867
	ld c,h			;5868
	ld c,h			;5869
	ld c,l			;586a
	ld c,e			;586b
	ld c,l			;586c
	or a			;586d
	inc b			;586e
	cp a			;586f
	pop bc			;5870
	ld b,000h		;5871
	and a			;5873
	dec b			;5874
	dec b			;5875
	add a,h			;5876
	daa			;5877
	cp e			;5878
	ld h,000h		;5879
	or b			;587b
	ld b,a			;587c
	nop			;587d
	ld b,(hl)		;587e
	ld b,(hl)		;587f
	ret po			;5880
	ld a,(bc)		;5881
	jp nc,000cbh		;5882
	ld c,d			;5885
	ld a,001h		;5886
	ld (0c308h),a		;5888
	ld a,(000e8h)		;588b
	rst 38h			;588e
	or 002h			;588f
	and 0ffh		;5891
	and 07fh		;5893
	or 020h			;5895
	add a,b			;5897
	ld (0f30ah),a		;5898
	out (099h),a		;589b
	ld a,022h		;589d
	adc a,c			;589f
	ei			;58a0
	inc b			;58a1
	ld a,(015e7h)		;58a2
	jr nz,l58c7h		;58a5
	ld (0af04h),a		;58a7
	ld (0c10eh),a		;58aa
	ld bc,l7c2ah		;58ad
	dec b			;58b0
	ld (hl),016h		;58b1
	ld hl,(0047fh)		;58b3
	ex af,af'		;58b6
	ret nc			;58b7
	ld hl,(00482h)		;58b8
	jp nz,l6a2ah		;58bb
	add a,l			;58be
	inc b			;58bf
	adc a,b			;58c0
	inc b			;58c1
	djnz l58c4h		;58c2
l58c4h:
	ld hl,(0048bh)		;58c4
l58c7h:
	call nc,08e2ah		;58c7
	sub 009h		;58ca
	sub c			;58cc
l58cdh:
	add hl,bc		;58cd
	or l			;58ce
	sub h			;58cf
	add hl,bc		;58d0
	sub a			;58d1
	add hl,bc		;58d2
	xor b			;58d3
	sbc a,d			;58d4
	inc b			;58d5
l58d6h:
	ret z			;58d6
	ld hl,(09d40h)		;58d7
	inc b			;58da
	jp nc,0abcdh		;58db
	ld c,h			;58de
	call sub_4b40h		;58df
	ld (bc),a		;58e2
	ld h,e			;58e3
	dec b			;58e4
	call sub_60c2h		;58e5
	inc h			;58e8
	call 0059fh		;58e9
	and d			;58ec
	ld (bc),a		;58ed
	and l			;58ee
	add a,b			;58ef
	ld (bc),a		;58f0
	ret c			;58f1
	ld c,e			;58f2
	call sub_5ff2h		;58f3
	call 01c09h		;58f6
	ld d,d			;58f9
	call 00baeh		;58fa
	add hl,sp		;58fd
	ld (bc),a		;58fe
	ld (002a8h),hl		;58ff
	add a,c			;5902
	ld d,(hl)		;5903
l5904h:
	add hl,hl		;5904
	add a,d			;5905
sub_5906h:
	dec b			;5906
	ld d,c			;5907
	ld d,e			;5908
	call 02cbah		;5909
	nop			;590c
l590dh:
	add a,h			;590d
	ld c,(hl)		;590e
	ld a,(0c13dh)		;590f
l5912h:
	or a			;5912
	jp z,0225ch		;5913
	ld c,e			;5916
	ld a,011h		;5917
	rrca			;5919
	dec b			;591a
	and h			;591b
	jr nc,l5924h		;591c
	pop bc			;591e
	ld (0fe3eh),hl		;591f
	xor c			;5922
	nop			;5923
l5924h:
	pop bc			;5924
	ld (0c3a3h),a		;5925
	ld a,01ch		;5928
	ld (08207h),a		;592a
l592dh:
	rlca			;592d
	and d			;592e
	jp 003cdh		;592f
	ld a,(de)		;5932
	adc a,c			;5933
	ret c			;5934
	halt			;5935
	ld e,l			;5936
	sub c			;5937
	and b			;5938
	ld b,d			;5939
	dec hl			;593a
sub_593bh:
	ld a,(0c395h)		;593b
	ld l,046h		;593e
	sbc a,l			;5940
	ld d,e			;5941
	add a,l			;5942
	ld c,h			;5943
	add hl,bc		;5944
	and h			;5945
	ret			;5946
	ld (de),a		;5947
	ld d,023h		;5948
	ccf			;594a
	sub d			;594b
	ld (bc),a		;594c
	ld d,d			;594d
	ld (bc),a		;594e
	ld c,a			;594f
	ld (bc),a		;5950
	ld c,b			;5951
l5952h:
	ld b,e			;5952
	ld (bc),a		;5953
	ld b,b			;5954
	ccf			;5955
	ld (bc),a		;5956
	ld (04240h),a		;5957
	ld h,03eh		;595a
	pop bc			;595c
	cp 01eh			;595d
	jp c,0c104h		;595f
	ld c,e			;5962
	dec a			;5963
	ld (00b3eh),a		;5964
	pop de			;5967
	djnz l592dh		;5968
	inc a			;596a
	ld (03a03h),a		;596b
	inc de			;596e
	pop bc			;596f
	and c			;5970
	dec c			;5971
	inc bc			;5972
	inc a			;5973
	jp nz,03d2fh		;5974
	and b			;5977
	xor a			;5978
	ret			;5979
	ld hl,l4c0ch		;597a
	inc b			;597d
	ld (l4c08h),hl		;597e
	ld hl,0052ch		;5981
	ld a,(bc)		;5984
	jr nz,$+78		;5985
	ld hl,(l5e08h)		;5987
	inc hl			;598a
	ld d,(hl)		;598b
	inc hl			;598c
	dec c			;598d
	ld a,d			;598e
	or e			;598f
	jp z,0144ah		;5990
	dec b			;5993
	ex de,hl		;5994
	ld c,(hl)		;5995
	inc hl			;5996
	ld b,(hl)		;5997
	ld hl,(01215h)		;5998
	cp b			;599b
	inc e			;599c
	ex de,hl		;599d
l599eh:
	inc b			;599e
	ld (hl),c		;599f
	inc hl			;59a0
	ld (hl),b		;59a1
	jp 084e4h		;59a2
	ret p			;59a5
	rlca			;59a6
	nop			;59a7
	dec b			;59a8
	ld d,005h		;59a9
	rra			;59ab
	dec b			;59ac
	ld (02e05h),hl		;59ad
	nop			;59b0
	dec b			;59b1
	add hl,de		;59b2
l59b3h:
	dec b			;59b3
	ld sp,l5b05h		;59b4
	dec b			;59b7
	ld e,(hl)		;59b8
	nop			;59b9
	dec b			;59ba
	ld h,c			;59bb
	dec b			;59bc
	ld h,a			;59bd
	dec b			;59be
	ld l,d			;59bf
	dec b			;59c0
	ld (hl),b		;59c1
	ld (l7305h),hl		;59c2
	and c			;59c5
	ld b,b			;59c6
	dec b			;59c7
	rra			;59c8
	rst 20h			;59c9
	ld c,(hl)		;59ca
	or b			;59cb
	ld c,(hl)		;59cc
	ld b,e			;59cd
	nop			;59ce
	ld c,(hl)		;59cf
l59d0h:
	ld (hl),e		;59d0
	ld c,(hl)		;59d1
	call nc,0b34eh		;59d2
	ld c,(hl)		;59d5
	jp 00180h		;59d6
	ld d,e			;59d9
	dec a			;59da
	ld c,(hl)		;59db
	ld b,b			;59dc
	ld c,(hl)		;59dd
	cp l			;59de
	nop			;59df
	ld c,(hl)		;59e0
	ret nz			;59e1
	ld c,(hl)		;59e2
	pop de			;59e3
	ld c,(hl)		;59e4
sub_59e5h:
	add a,04eh		;59e5
l59e7h:
	ld b,(hl)		;59e7
	nop			;59e8
	ld c,(hl)		;59e9
	ret			;59ea
	di			;59eb
	ld hl,00038h		;59ec
	ld de,000a8h		;59ef
	ld c,h			;59f2
	ld bc,00003h		;59f3
	ldir			;59f6
	ld hl,09ecah		;59f8
	ld l,c			;59fb
	add hl,sp		;59fc
	call p,0c308h		;59fd
sub_5a00h:
	ld (00438h),a		;5a00
	inc de			;5a03
	ld (0f127h),a		;5a04
	rst 38h			;5a07
	adc a,h			;5a08
	inc de			;5a09
l5a0ah:
	sub e			;5a0a
	adc a,e			;5a0b
	add a,b			;5a0c
	rst 18h			;5a0d
	di			;5a0e
	or 010h			;5a0f
	ld (004b1h),a		;5a11
	dec c			;5a14
	add a,b			;5a15
	inc bc			;5a16
	adc a,h			;5a17
	ld (bc),a		;5a18
	inc bc			;5a19
	ld c,(hl)		;5a1a
sub_5a1bh:
	adc a,a			;5a1b
	and d			;5a1c
	ld b,l			;5a1d
	xor h			;5a1e
	dec (hl)		;5a1f
	daa			;5a20
	ld de,0f328h		;5a21
	add hl,sp		;5a24
	jr l5a4ah		;5a25
	and 078h		;5a27
	rst 28h			;5a29
	inc hl			;5a2a
	ld (hl),0afh		;5a2b
	ld (02303h),hl		;5a2d
l5a30h:
	ei			;5a30
	ret			;5a31
	sbc a,(hl)		;5a32
	inc h			;5a33
	ld e,a			;5a34
	ret			;5a35
	ld d,h			;5a36
	rst 10h			;5a37
	ld l,c			;5a38
	ld c,h			;5a39
	dec b			;5a3a
	rst 20h			;5a3b
	ld c,h			;5a3c
	ld de,00e46h		;5a3d
	ld h,h			;5a40
	ld c,l			;5a41
	ld c,0adh		;5a42
	di			;5a44
l5a45h:
	dec b			;5a45
	ld c,024h		;5a46
	ret			;5a48
	push af			;5a49
l5a4ah:
	rst 18h			;5a4a
	call po,0db2ch		;5a4b
	sbc a,c			;5a4e
	daa			;5a4f
	rrca			;5a50
	call c,0af1ah		;5a51
	inc c			;5a54
	ld h,b			;5a55
	ld (0c1a0h),a		;5a56
	rlca			;5a59
	call c,024b9h		;5a5a
	ld l,l			;5a5d
	sub e			;5a5e
	inc bc			;5a5f
	pop af			;5a60
	ld hl,(00054h)		;5a61
	rst 30h			;5a64
	ret nz			;5a65
	ld d,(hl)		;5a66
	ld e,b			;5a67
	ld e,d			;5a68
	ld e,h			;5a69
	ld e,(hl)		;5a6a
	jr nc,l5a91h		;5a6b
	ld (0ce54h),a		;5a6d
	nop			;5a70
	ld c,(hl)		;5a71
	ld d,b			;5a72
	ld d,d			;5a73
	inc a			;5a74
	ld a,054h		;5a75
	ld (bc),a		;5a77
	inc b			;5a78
	nop			;5a79
	ld b,008h		;5a7a
	ld a,(bc)		;5a7c
	inc (hl)		;5a7d
	ld (hl),00ch		;5a7e
	ld c,010h		;5a80
	nop			;5a82
	ld (de),a		;5a83
	inc d			;5a84
sub_5a85h:
	ld d,040h		;5a85
	ld b,d			;5a87
	jr l5aa4h		;5a88
	inc e			;5a8a
	nop			;5a8b
	ld e,020h		;5a8c
	ld (03a38h),hl		;5a8e
l5a91h:
	inc h			;5a91
	ld h,028h		;5a92
	ld h,b			;5a94
	ld hl,(044ceh)		;5a95
	ld b,a			;5a98
	ld b,(hl)		;5a99
	jp nc,03aa9h		;5a9a
	ret po			;5a9d
	dec c			;5a9e
	dec c			;5a9f
	cp a			;5aa0
	ld (00de0h),a		;5aa1
l5aa4h:
	ld c,e			;5aa4
	add a,c			;5aa5
	add a,h			;5aa6
	ld (hl),c		;5aa7
	and a			;5aa8
	and b			;5aa9
	and 020h		;5aaa
	jp nz,l4d88h		;5aac
	ret nc			;5aaf
	ld b,0cah		;5ab0
	adc a,a			;5ab2
	ld c,l			;5ab3
	ld a,(0f54ch)		;5ab4
sub_5ab7h:
	ret po			;5ab7
	ld (bc),a		;5ab8
	inc hl			;5ab9
	jp z,007a7h		;5aba
	pop af			;5abd
	pop bc			;5abe
	ld e,010h		;5abf
	sub d			;5ac1
	inc bc			;5ac2
	push bc			;5ac3
	ld a,(031f6h)		;5ac4
	rst 38h			;5ac7
	ld b,a			;5ac8
	ld a,(bc)		;5ac9
	sub a			;5aca
	ccf			;5acb
	sub d			;5acc
	call 08025h		;5acd
	adc a,0a5h		;5ad0
	rst 20h			;5ad2
	call pe,0fd4ch		;5ad3
	ld a,(bc)		;5ad6
	ld h,e			;5ad7
	adc a,b			;5ad8
	ld a,(bc)		;5ad9
	pop hl			;5ada
	ld c,a			;5adb
	ld e,h			;5adc
	add a,d			;5add
	ld e,l			;5ade
	ld e,0f6h		;5adf
	ld b,d			;5ae1
	ld e,l			;5ae2
	nop			;5ae3
l5ae4h:
	push de			;5ae4
	push hl			;5ae5
	exx			;5ae6
	ex af,af'		;5ae7
	push af			;5ae8
	ld b,b			;5ae9
	push bc			;5aea
	dec b			;5aeb
	call 0539dh		;5aec
	pop hl			;5aef
	pop de			;5af0
	inc c			;5af1
	pop bc			;5af2
l5af3h:
	pop af			;5af3
	ex af,af'		;5af4
	exx			;5af5
	dec b			;5af6
	ld e,d			;5af7
	ret			;5af8
	sub c			;5af9
	cp c			;5afa
	ld (bc),a		;5afb
	ld (hl),078h		;5afc
	xor a			;5afe
	ld d,d			;5aff
	ld c,a			;5b00
	and b			;5b01
	sub l			;5b02
	ld b,0abh		;5b03
l5b05h:
	add hl,de		;5b05
	and b			;5b06
	inc a			;5b07
	add hl,sp		;5b08
	ld e,a			;5b09
	ld d,e			;5b0a
	adc a,(hl)		;5b0b
	and e			;5b0c
	defb 0ddh,0c5h,04eh ;illegal sequence	;5b0d
	sub l			;5b10
sub_5b11h:
	ld a,(09c9ch)		;5b11
	ld (bc),a		;5b14
	jp nz,04e42h		;5b15
	call 0bb5dh		;5b18
	and h			;5b1b
	ld h,b			;5b1c
	ld (bc),a		;5b1d
	ld e,088h		;5b1e
	ld (bc),a		;5b20
	ld (hl),l		;5b21
l5b22h:
	dec b			;5b22
	or c			;5b23
	push hl			;5b24
	ld e,d			;5b25
	inc de			;5b26
	ld d,l			;5b27
	ld sp,hl		;5b28
l5b29h:
	ld d,h			;5b29
	xor h			;5b2a
	sub d			;5b2b
	ld c,e			;5b2c
	ld d,h			;5b2d
	di			;5b2e
	sub c			;5b2f
	call z,01b23h		;5b30
	ld e,(hl)		;5b33
	jp nz,03204h		;5b34
	call m,0bec1h		;5b37
	ld h,h			;5b3a
	xor (hl)		;5b3b
	sub b			;5b3c
	dec b			;5b3d
	sbc a,a			;5b3e
	jp 016e6h		;5b3f
l5b42h:
	ld b,b			;5b42
	call nz,08921h		;5b43
	and h			;5b46
	ld d,(hl)		;5b47
	pop bc			;5b48
	sub b			;5b49
	ld a,b			;5b4a
	sub b			;5b4b
	xor a			;5b4c
l5b4dh:
	ld hl,0be0dh		;5b4d
	jp z,00688h		;5b50
	ld c,(hl)		;5b53
	ld (hl),a		;5b54
	call 00313h		;5b55
	ld e,d			;5b58
	add a,b			;5b59
	ret nz			;5b5a
	call sub_5779h		;5b5b
	call 051b5h		;5b5e
	or b			;5b61
	call 03e4fh		;5b62
	add a,b			;5b65
	dec (hl)		;5b66
	ld c,c			;5b67
	pop bc			;5b68
	call sub_4f16h		;5b69
l5b6ch:
	jr nz,l5b77h		;5b6c
	rla			;5b6e
	ld a,(l576bh)		;5b6f
	ld (hl),d		;5b72
	cp a			;5b73
	ld e,(hl)		;5b74
	inc h			;5b75
l5b76h:
	dec d			;5b76
l5b77h:
	ld l,h			;5b77
	jr l5be6h		;5b78
	ld h,(hl)		;5b7a
	push hl			;5b7b
	inc c			;5b7c
	ld h,(hl)		;5b7d
	inc c			;5b7e
	inc h			;5b7f
	ld l,c			;5b80
	ld (bc),a		;5b81
	jr nc,$+4		;5b82
	ld (hl),d		;5b84
	call po,0c27fh		;5b85
	out (092h),a		;5b88
	inc de			;5b8a
	ld l,a			;5b8b
	dec c			;5b8c
	dec l			;5b8d
	ld (bc),a		;5b8e
	ld e,h			;5b8f
	or h			;5b90
	sub h			;5b91
	dec b			;5b92
	ld bc,0cd4fh		;5b93
	jp pe,0fb4eh		;5b96
	call 00c0ch		;5b99
	ld e,e			;5b9c
	jp po,0f611h		;5b9d
	nop			;5ba0
	jp (hl)			;5ba1
	ei			;5ba2
	and 010h		;5ba3
	jp nz,l4f00h		;5ba5
	inc d			;5ba8
	ld a,(l4effh)		;5ba9
	ld h,c			;5bac
	add a,c			;5bad
	ld h,h			;5bae
	ld b,0c3h		;5baf
	ld d,h			;5bb1
	ld d,c			;5bb2
	call nc,0c9afh		;5bb3
	rlca			;5bb6
	ld a,(de)		;5bb7
	jp pe,0251ah		;5bb8
	ld bc,02013h		;5bbb
	jp po,03ea0h		;5bbe
	ret po			;5bc1
l5bc2h:
	ld (0a44ah),a		;5bc2
	and d			;5bc5
	ld (085cfh),hl		;5bc6
	ld h,b			;5bc9
	ret z			;5bca
	rst 8			;5bcb
	ei			;5bcc
	jr nc,$-51		;5bcd
	ld (hl),a		;5bcf
	add hl,bc		;5bd0
	jp nz,l512bh		;5bd1
	ld c,a			;5bd4
	dec h			;5bd5
	ld b,0c9h		;5bd6
	ld (0175fh),a		;5bd8
	add a,004h		;5bdb
	jp nz,0c208h		;5bdd
	ld a,(0fdd0h)		;5be0
	jp 04f44h		;5be3
l5be6h:
	ld b,d			;5be6
	dec d			;5be7
	add hl,bc		;5be8
	ld l,0d8h		;5be9
	call pe,0061dh		;5beb
	adc a,b			;5bee
	jp c,0c104h		;5bef
	sbc a,b			;5bf2
	adc a,e			;5bf3
	ld (09704h),a		;5bf4
	djnz l5bffh		;5bf7
	rst 18h			;5bf9
	dec c			;5bfa
	jp nz,00c32h		;5bfb
	inc h			;5bfe
l5bffh:
	inc c			;5bff
	and 007h		;5c00
l5c02h:
	jr nz,$+16		;5c02
	ld a,000h		;5c04
	add a,008h		;5c06
	cp 060h			;5c08
	jr nz,l5c0eh		;5c0a
	ld a,048h		;5c0c
l5c0eh:
	pop bc			;5c0e
	ld b,d			;5c0f
	ld a,(0c200h)		;5c10
	ld (01a48h),hl		;5c13
	ld bc,00505h		;5c16
	jp nz,0210ch		;5c19
	dec c			;5c1c
	pop bc			;5c1d
	ld b,(hl)		;5c1e
	adc a,h			;5c1f
	add a,e			;5c20
	xor a			;5c21
	call 05147h		;5c22
	ld hl,(0c12eh)		;5c25
	add a,b			;5c28
	inc bc			;5c29
	cp 0a4h			;5c2a
	ld b,030h		;5c2c
	call nc,0301ah		;5c2e
	ld h,b			;5c31
	ld a,(0d209h)		;5c32
	ret nz			;5c35
	add a,0b0h		;5c36
	ret p			;5c38
	sub d			;5c39
	call nz,098dfh		;5c3a
	rlca			;5c3d
	and a			;5c3e
	adc a,d			;5c3f
	adc a,l			;5c40
	ld h,b			;5c41
	ld e,e			;5c42
	ld c,b			;5c43
	jr c,$+60		;5c44
	inc a			;5c46
	ld a,(0c280h)		;5c47
	dec bc			;5c4a
	ld de,0c240h		;5c4b
	ld a,0c9h		;5c4e
	nop			;5c50
	ld e,a			;5c51
	pop bc			;5c52
	ld b,007h		;5c53
	push de			;5c55
	ld a,(hl)		;5c56
	nop			;5c57
	and 01fh		;5c58
	cp 015h			;5c5a
	jp z,l5070h		;5c5c
	inc hl			;5c5f
	ret nz			;5c60
	cp c			;5c61
	nop			;5c62
	ld d,b			;5c63
	add hl,bc		;5c64
	cp 004h			;5c65
	jr z,$+71		;5c67
	push af			;5c69
	nop			;5c6a
	ld l,d			;5c6b
	ld d,c			;5c6c
	call nz,050a4h		;5c6d
	pop de			;5c70
	inc e			;5c71
	push hl			;5c72
	ldi			;5c73
	ld bc,0e1b4h		;5c75
	inc b			;5c78
	ld a,(hl)		;5c79
	inc a			;5c7a
	dec c			;5c7b
	ld (de),a		;5c7c
	inc de			;5c7d
	inc de			;5c7e
	ld bc,088a4h		;5c7f
	add hl,bc		;5c82
	ld a,(0c635h)		;5c83
	ld (bc),a		;5c86
	call z,0c13ah		;5c87
	nop			;5c8a
	jp nz,l4fc1h		;5c8b
	ret			;5c8e
	pop de			;5c8f
	ld bc,00f42h		;5c90
	ld (de),a		;5c93
	ex de,hl		;5c94
l5c95h:
	ld c,008h		;5c95
l5c97h:
	inc bc			;5c97
	push af			;5c98
	rla			;5c99
	nop			;5c9a
	dec hl			;5c9b
	ld a,(hl)		;5c9c
	cp 024h			;5c9d
	jr z,$+63		;5c9f
	inc hl			;5ca1
	push hl			;5ca2
	ld d,b			;5ca3
	inc hl			;5ca4
	nop			;5ca5
	add hl,bc		;5ca6
	ld d,028h		;5ca7
	add hl,bc		;5ca9
	adc a,b			;5caa
	xor d			;5cab
	pop hl			;5cac
	call 03d02h		;5cad
	ld d,c			;5cb0
	jp l4fdah		;5cb1
	inc hl			;5cb4
l5cb5h:
	ld c,b			;5cb5
	nop			;5cb6
	ld (hl),a		;5cb7
	cp 00ch			;5cb8
	jr z,$+20		;5cba
	and 003h		;5cbc
l5cbeh:
	jr z,l5cf1h		;5cbe
	inc b			;5cc0
	pop hl			;5cc1
	rrca			;5cc2
	dec hl			;5cc3
	add hl,hl		;5cc4
	ld b,h			;5cc5
	pop hl			;5cc6
	ld (hl),a		;5cc7
sub_5cc8h:
	ret po			;5cc8
	add hl,bc		;5cc9
	ld (hl),022h		;5cca
l5ccch:
	jp nc,03623h		;5ccc
	ld b,008h		;5ccf
	jr nc,l5cd3h		;5cd1
l5cd3h:
	inc hl			;5cd3
	rrca			;5cd4
	ld (hl),004h		;5cd5
	pop de			;5cd7
	ld a,036h		;5cd8
	ld c,e			;5cda
	inc hl			;5cdb
	rla			;5cdc
	ld l,023h		;5cdd
	ld de,0853eh		;5cdf
	ld (hl),001h		;5ce2
	inc hl			;5ce4
	jp z,l7e68h		;5ce5
	sub b			;5ce8
	ld (hl),a		;5ce9
l5ceah:
	ret c			;5cea
	rrca			;5ceb
	or b			;5cec
	cp l			;5ced
	call p,01000h		;5cee
l5cf1h:
	ld sp,03ae1h		;5cf1
	dec (hl)		;5cf4
	jp nz,0ba00h		;5cf5
	ret c			;5cf8
	cp e			;5cf9
	ret nc			;5cfa
	ld a,(0c234h)		;5cfb
	cp c			;5cfe
l5cffh:
	nop			;5cff
l5d00h:
	ret c			;5d00
	sub 010h		;5d01
	cp c			;5d03
	ret nc			;5d04
sub_5d05h:
	ld a,0f0h		;5d05
	ld (011a4h),a		;5d07
	add a,e			;5d0a
	ld b,b			;5d0b
	ld (0c30fh),a		;5d0c
	jp po,0c950h		;5d0f
	ld a,(hl)		;5d12
	ld a,(bc)		;5d13
	sub 008h		;5d14
	ld c,a			;5d16
	push hl			;5d17
	ld (hl),a		;5d18
l5d19h:
	jr l5d1ch		;5d19
	ld d,a			;5d1b
l5d1ch:
	add a,01eh		;5d1c
	ld e,a			;5d1e
l5d1fh:
	ld hl,0c229h		;5d1f
l5d22h:
	call p,l7e10h		;5d22
	dec hl			;5d25
l5d26h:
	cp d			;5d26
	inc b			;5d27
	jp c,05080h		;5d28
	cp e			;5d2b
	jp nc,l7e03h		;5d2c
	ld h,(hl)		;5d2f
	cp c			;5d30
	ex af,af'		;5d31
	ld (00a61h),a		;5d32
	ld a,(0eb51h)		;5d35
	xor b			;5d38
	call c,l5024h		;5d39
	ld a,b			;5d3c
	add a,e			;5d3d
l5d3eh:
	ld c,h			;5d3e
	jp nc,0e105h		;5d3f
	jr c,l5ccch		;5d42
	ld b,l			;5d44
l5d45h:
	ld (hl),a		;5d45
	inc hl			;5d46
	sbc a,c			;5d47
	or l			;5d48
	xor h			;5d49
	ld bc,01147h		;5d4a
	rlca			;5d4d
	nop			;5d4e
	add hl,de		;5d4f
	ld (hl),d		;5d50
	add a,d			;5d51
	jp c,l5102h		;5d52
	cp (hl)			;5d55
	inc sp			;5d56
	ret m			;5d57
	ld d,e			;5d58
	adc a,d			;5d59
	ld a,b			;5d5a
	call c,00b88h		;5d5b
	dec hl			;5d5e
	sbc hl,de		;5d5f
	ret			;5d61
	ld de,0c910h		;5d62
	inc hl			;5d65
	ld e,c			;5d66
	ld h,b			;5d67
	inc de			;5d68
	ld (hl),024h		;5d69
	inc hl			;5d6b
	sbc a,b			;5d6c
	cp 03ch			;5d6d
	jr z,l5d83h		;5d6f
	add hl,de		;5d71
	ld a,(0514ch)		;5d72
	ret nz			;5d75
	cpl			;5d76
	ld d,(hl)		;5d77
	ld c,h			;5d78
	cp (hl)			;5d79
	adc a,h			;5d7a
l5d7bh:
	add a,(hl)		;5d7b
	ld (01d4ah),a		;5d7c
	ld d,b			;5d7f
	sub 080h		;5d80
	ld c,e			;5d82
l5d83h:
	sbc a,b			;5d83
	dec (hl)		;5d84
	ret			;5d85
	ex af,af'		;5d86
	jr nz,l5dedh		;5d87
	ld (hl),a		;5d89
	ld b,000h		;5d8a
	ld b,(hl)		;5d8c
	adc a,h			;5d8d
	ret nz			;5d8e
	sub h			;5d8f
	cp c			;5d90
	rrca			;5d91
	push hl			;5d92
	ld h,000h		;5d93
	ld l,b			;5d95
	xor e			;5d96
	ld d,b			;5d97
	ld de,04803h		;5d98
	add hl,de		;5d9b
	ld l,0e5h		;5d9c
	ld l,a			;5d9e
	inc c			;5d9f
	dec bc			;5da0
	nop			;5da1
	nop			;5da2
	ld (hl),h		;5da3
	add hl,de		;5da4
	call 00145h		;5da5
	dec d			;5da8
	pop hl			;5da9
	ld c,098h		;5daa
	adc a,(hl)		;5dac
	nop			;5dad
	dec b			;5dae
	pop hl			;5daf
	ret			;5db0
	call sub_6104h		;5db1
	ld b,(hl)		;5db4
	sub h			;5db5
	rlc c			;5db6
	inc bc			;5db8
	jp c,l51a6h		;5db9
	cp 0e3h			;5dbc
	jp nc,00004h		;5dbe
	dec hl			;5dc1
	cp 012h			;5dc2
	ld c,001h		;5dc4
	jr c,l5dcdh		;5dc6
	sbc a,b			;5dc8
	call pe,0e10eh		;5dc9
	dec de			;5dcc
l5dcdh:
	ret c			;5dcd
	ld a,(0b960h)		;5dce
	ld c,c			;5dd1
	add hl,de		;5dd2
	ret z			;5dd3
	ex (sp),hl		;5dd4
	add a,03dh		;5dd5
	cp 0c4h			;5dd7
	ld d,c			;5dd9
	ld a,c			;5dda
	or 0c4h			;5ddb
	jp nz,0e778h		;5ddd
	jp po,008c9h		;5de0
	ld h,d			;5de3
	add hl,sp		;5de4
	ex af,af'		;5de5
	jr c,l5df0h		;5de6
	push bc			;5de8
	ld h,c			;5de9
	add a,a			;5dea
	nop			;5deb
	ld (hl),c		;5dec
l5dedh:
	ld c,e			;5ded
	in a,(033h)		;5dee
l5df0h:
	ld c,049h		;5df0
	call pe,00372h		;5df2
	nop			;5df5
	ret nz			;5df6
	ld a,(0c147h)		;5df7
	ld h,a			;5dfa
	ld a,(0c148h)		;5dfb
	ld b,l			;5dfe
	ld l,a			;5dff
	pop bc			;5e00
	inc c			;5e01
	ld (hl),023h		;5e02
	rst 8			;5e04
	ret c			;5e05
	rst 10h			;5e06
	ld a,l			;5e07
l5e08h:
	ld (00d88h),a		;5e08
	ld a,h			;5e0b
	ld (01615h),a		;5e0c
	nop			;5e0f
	nop			;5e10
	ld hl,l636fh		;5e11
	add hl,de		;5e14
	ld (hl),c		;5e15
	dec hl			;5e16
l5e17h:
	ex de,hl		;5e17
	ld bc,01054h		;5e18
	add hl,bc		;5e1b
	xor l			;5e1c
	inc bc			;5e1d
	ld a,(hl)		;5e1e
l5e1fh:
	or a			;5e1f
	jr z,l5e3fh		;5e20
	add hl,bc		;5e22
	inc b			;5e23
	ld a,(de)		;5e24
	jr $+6			;5e25
	inc de			;5e27
	sub 004h		;5e28
	ld c,004h		;5e2a
	or l			;5e2c
	add hl,bc		;5e2d
	inc b			;5e2e
	inc b			;5e2f
l5e30h:
	inc b			;5e30
	add a,(hl)		;5e31
	ret nz			;5e32
	ex de,hl		;5e33
	rst 30h			;5e34
	add a,e			;5e35
	ret			;5e36
	push hl			;5e37
	ld de,0892bh		;5e38
	call c,01448h		;5e3b
	inc bc			;5e3e
l5e3fh:
	add hl,de		;5e3f
	ld (0f910h),hl		;5e40
	or c			;5e43
	rrca			;5e44
	ld a,01eh		;5e45
	ld (0b7f6h),a		;5e47
	ld b,h			;5e4a
	ld sp,hl		;5e4b
	sbc a,b			;5e4c
	adc a,c			;5e4d
	ret m			;5e4e
	ld (bc),a		;5e4f
	push af			;5e50
	jp m,0f3cah		;5e51
	add a,e			;5e54
	rlca			;5e55
	call p,021c1h		;5e56
	daa			;5e59
	jp po,08ba3h		;5e5a
l5e5dh:
	inc b			;5e5d
	ret p			;5e5e
	sub b			;5e5f
	add a,a			;5e60
	ld b,a			;5e61
	nop			;5e62
	add a,a			;5e63
	add a,b			;5e64
	add a,012h		;5e65
	ld (l5636h),a		;5e67
	ld hl,03668h		;5e6a
	ld de,01bcdh		;5e6d
	dec b			;5e70
	or h			;5e71
	jp nz,07620h		;5e72
	ld d,(hl)		;5e75
	ld sp,l5678h		;5e76
	ld (08872h),a		;5e79
l5e7ch:
	ld (bc),a		;5e7c
	ld (hl),h		;5e7d
	ld d,(hl)		;5e7e
	ld d,c			;5e7f
l5e80h:
	ld (bc),a		;5e80
	jp l7925h		;5e81
	ld d,d			;5e84
	cp h			;5e85
	jr l5e08h		;5e86
	ld c,b			;5e88
sub_5e89h:
	ld a,(0f264h)		;5e89
	ld b,003h		;5e8c
	di			;5e8e
	push bc			;5e8f
	jp p,0fb61h		;5e90
	inc b			;5e93
	ld (08732h),a		;5e94
	ld h,l			;5e97
	ret p			;5e98
	dec h			;5e99
	adc a,c			;5e9a
	add a,l			;5e9b
	sub 00ah		;5e9c
	ret z			;5e9e
	sub h			;5e9f
	inc b			;5ea0
	add hl,bc		;5ea1
	dec c			;5ea2
	ld (bc),a		;5ea3
	jp nz,0327ah		;5ea4
l5ea7h:
	rst 30h			;5ea7
	pop bc			;5ea8
l5ea9h:
	ld a,e			;5ea9
	ld hl,(l6184h)		;5eaa
	call p,0194ah		;5ead
	jp z,0fbc7h		;5eb0
	ld d,d			;5eb3
	jp p,0c5cdh		;5eb4
	ret c			;5eb7
	ld de,0ccc5h		;5eb8
	ld (bc),a		;5ebb
	ld e,(hl)		;5ebc
	push hl			;5ebd
	ld hl,l553ah		;5ebe
	ret nz			;5ec1
	ld l,h			;5ec2
	ld d,h			;5ec3
	sub b			;5ec4
	ret nz			;5ec5
	bit 0,a			;5ec6
	ld (bc),a		;5ec8
	jp z,l52c5h		;5ec9
	and 0feh		;5ecc
	add a,069h		;5ece
	and e			;5ed0
	ld e,a			;5ed1
l5ed2h:
	sub c			;5ed2
	rrca			;5ed3
	ld (hl),l		;5ed4
	ld d,(hl)		;5ed5
	jp nz,0521ah		;5ed6
	ld a,(bc)		;5ed9
	inc bc			;5eda
	push bc			;5edb
	ld a,(bc)		;5edc
	ld hl,09920h		;5edd
	dec de			;5ee0
	ld a,(hl)		;5ee1
	ld h,h			;5ee2
	dec e			;5ee3
	inc b			;5ee4
	pop hl			;5ee5
	ld l,023h		;5ee6
	pop bc			;5ee8
	rst 28h			;5ee9
	sbc a,d			;5eea
l5eebh:
	cp d			;5eeb
	sub b			;5eec
	inc l			;5eed
	dec c			;5eee
	add a,h			;5eef
sub_5ef0h:
	inc b			;5ef0
	djnz l5ea7h		;5ef1
	ld hl,(01158h)		;5ef3
	ld d,b			;5ef6
	jr nc,l5e80h		;5ef7
	ld (00680h),hl		;5ef9
	call 054d9h		;5efc
	jp l5306h		;5eff
l5f02h:
	ld (bc),a		;5f02
	ld hl,l551ah		;5f03
	ld de,l552ah		;5f06
	and c			;5f09
	ld d,d			;5f0a
	call m,03e21h		;5f0b
	rlca			;5f0e
	ld (096a6h),a		;5f0f
	call pe,0f222h		;5f12
	ret nc			;5f15
	ret p			;5f16
	ld (sub_5a00h),a	;5f17
	jp 02cdah		;5f1a
	inc e			;5f1d
	ld d,c			;5f1e
	adc a,c			;5f1f
	ex af,af'		;5f20
	ld h,a			;5f21
sub_5f22h:
	ld d,(hl)		;5f22
	sub h			;5f23
	and h			;5f24
	ld (bc),a		;5f25
l5f26h:
	ld d,h			;5f26
	ld a,(bc)		;5f27
	ret nc			;5f28
	inc hl			;5f29
	ld (0d658h),a		;5f2a
	ld (de),a		;5f2d
	ld b,a			;5f2e
	dec bc			;5f2f
	ld c,e			;5f30
l5f31h:
	ld (bc),a		;5f31
	dec h			;5f32
	ld c,h			;5f33
	ld d,(hl)		;5f34
	sub c			;5f35
	sub b			;5f36
	call sub_546ch		;5f37
	ld a,034h		;5f3a
	ccf			;5f3c
	ld (0d6f7h),a		;5f3d
	ret m			;5f40
	inc hl			;5f41
	ret nc			;5f42
	ld b,021h		;5f43
	jp m,l7c55h		;5f45
	ld (hl),0c9h		;5f48
	pop bc			;5f4a
	inc (hl)		;5f4b
	rra			;5f4c
	jp c,l4983h		;5f4d
	ret			;5f50
	rst 38h			;5f51
	ld l,h			;5f52
	ld (hl),l		;5f53
l5f54h:
	adc a,0cch		;5f54
	ld hl,(024c4h)		;5f56
	ld l,c			;5f59
	ld d,e			;5f5a
	call 0f82dh		;5f5b
	ret			;5f5e
	rst 0			;5f5f
	inc de			;5f60
	dec a			;5f61
	ret nz			;5f62
	ld b,02bh		;5f63
	ret nz			;5f65
	ld (hl),a		;5f66
	ret			;5f67
	jp po,03a70h		;5f68
	ld e,b			;5f6b
	rst 30h			;5f6c
	ret pe			;5f6d
	nop			;5f6e
	ld a,(de)		;5f6f
	jp z,l5391h		;5f70
	rlca			;5f73
	ld bc,007cah		;5f74
	add a,b			;5f77
	ret nz			;5f78
	ld c,0c1h		;5f79
	jp 0aaaah		;5f7b
	jr c,$+104		;5f7e
	rlca			;5f80
	xor c			;5f81
	inc sp			;5f82
	sbc a,d			;5f83
	jp (hl)			;5f84
	inc bc			;5f85
	ret			;5f86
	jp nz,0f3abh		;5f87
	jr z,$-60		;5f8a
	rlca			;5f8c
	daa			;5f8d
	ld e,a			;5f8e
	jp l53b2h		;5f8f
	inc c			;5f92
	ld d,h			;5f93
	add hl,sp		;5f94
	add a,c			;5f95
	exx			;5f96
	ld b,0efh		;5f97
	sbc a,c			;5f99
	ld b,h			;5f9a
	sbc a,d			;5f9b
	xor h			;5f9c
	jp 0ab5ah		;5f9d
	inc b			;5fa0
	call pe,0f21dh		;5fa1
	and e			;5fa4
	pop bc			;5fa5
	adc a,b			;5fa6
	ex af,af'		;5fa7
l5fa8h:
	ret nz			;5fa8
	call z,0c2c8h		;5fa9
	call 00e58h		;5fac
	ld h,d			;5faf
	pop af			;5fb0
	ld c,00fh		;5fb1
	call nc,0fe30h		;5fb3
	ex af,af'		;5fb6
	and d			;5fb7
	dec h			;5fb8
	and e			;5fb9
l5fbah:
	ld c,c			;5fba
	xor 081h		;5fbb
	inc b			;5fbd
	ld d,c			;5fbe
	ld c,(hl)		;5fbf
l5fc0h:
	exx			;5fc0
	ld b,b			;5fc1
	dec e			;5fc2
	jp nz,l5408h		;5fc3
	call 01287h		;5fc6
	ld d,h			;5fc9
	ld hl,0a918h		;5fca
	call nz,sub_59e5h	;5fcd
	inc (hl)		;5fd0
	sub d			;5fd1
	ld sp,hl		;5fd2
	rlca			;5fd3
	ld h,l			;5fd4
	dec de			;5fd5
	add a,b			;5fd6
	ld b,h			;5fd7
	jp nz,01825h		;5fd8
	add hl,bc		;5fdb
	jp po,0f618h		;5fdc
	add hl,hl		;5fdf
	sbc a,d			;5fe0
	add a,c			;5fe1
	cp 0f0h			;5fe2
	jp nz,l5422h		;5fe4
	add a,l			;5fe7
	jr z,l5ff7h		;5fe8
	jp c,0911ch		;5fea
l5fedh:
	sub e			;5fed
	ld d,d			;5fee
	dec de			;5fef
	ld d,h			;5ff0
	dec de			;5ff1
sub_5ff2h:
	adc a,c			;5ff2
	adc a,d			;5ff3
	ld sp,0e01bh		;5ff4
l5ff7h:
	sbc a,(hl)		;5ff7
	ld (hl),l		;5ff8
	dec de			;5ff9
	sub (hl)		;5ffa
	ld hl,(l723ah)		;5ffb
	ld d,h			;5ffe
	ld hl,(0d94dh)		;5fff
	ld hl,(l4baah)		;6002
	and b			;6005
	inc hl			;6006
	inc l			;6007
sub_6008h:
	ld hl,02845h		;6008
	adc a,c			;600b
	xor a			;600c
	jr nc,l5fa8h		;600d
	sub (hl)		;600f
	or h			;6010
	ld h,e			;6011
	sbc a,l			;6012
	ex af,af'		;6013
sub_6014h:
	cp 01fh			;6014
	adc a,b			;6016
	and l			;6017
	cp d			;6018
	ld (de),a		;6019
sub_601ah:
	ld c,b			;601a
	ld (bc),a		;601b
	ld d,a			;601c
	ld (bc),a		;601d
	ld b,c			;601e
	rra			;601f
	ld (bc),a		;6020
	ld l,d			;6021
	ld d,(hl)		;6022
	xor 001h		;6023
	sra d			;6025
	ld e,e			;6027
	adc a,c			;6028
	ld (bc),a		;6029
l602ah:
	djnz l6082h		;602a
	xor (hl)		;602c
	ld h,088h		;602d
	sbc a,b			;602f
	sbc a,063h		;6030
	ld d,(hl)		;6032
	jp nz,0e0dah		;6033
	ld a,b			;6036
	daa			;6037
	and (hl)		;6038
	ld d,h			;6039
	ret po			;603a
l603bh:
	add a,h			;603b
	ld h,l			;603c
	ret po			;603d
	jp pe,0e066h		;603e
l6041h:
	ld h,e			;6041
	xor (hl)		;6042
	ld d,h			;6043
	ld a,(bc)		;6044
	ld e,b			;6045
	inc bc			;6046
	ld a,(bc)		;6047
	inc hl			;6048
	dec de			;6049
	ex de,hl		;604a
	ld hl,05a63h		;604b
l604eh:
	xor h			;604e
	sub d			;604f
	ld l,c			;6050
	push de			;6051
	halt			;6052
	inc b			;6053
	dec h			;6054
	jp nz,01b8ah		;6055
	ld l,c			;6058
	ld e,(hl)		;6059
	xor b			;605a
	inc (hl)		;605b
	sbc hl,hl		;605c
	or 0b0h			;605e
	ld (hl),l		;6060
	ld a,(04448h)		;6061
l6064h:
	pop de			;6064
l6065h:
	jp z,0df9ah		;6065
	rst 0			;6068
	ld d,d			;6069
	and d			;606a
	ld (hl),b		;606b
	defb 0edh ;next byte illegal after ed	;606c
	ld d,h			;606d
	inc h			;606e
	ld a,(0b5f9h)		;606f
	jp c,0b188h		;6072
	ld (hl),b		;6075
	jp nz,0a9ddh		;6076
	inc de			;6079
	rst 10h			;607a
	add hl,bc		;607b
	ld de,(028d7h)		;607c
	ret			;6080
	and h			;6081
l6082h:
	adc a,051h		;6082
	ld e,a			;6084
	sub 0a9h		;6085
	halt			;6087
	halt			;6088
	dec h			;6089
	ld a,(l5f26h)		;608a
	add a,(hl)		;608d
	ld h,d			;608e
l608fh:
	ret m			;608f
	dec d			;6090
	ld a,(bc)		;6091
	ex de,hl		;6092
	pop hl			;6093
	ld bc,08b02h		;6094
	ld c,c			;6097
	call m,0206ch		;6098
	nop			;609b
	ei			;609c
	ld bc,l4051h		;609d
	ld bc,l4020h		;60a0
l60a3h:
	nop			;60a3
	nop			;60a4
	ld h,b			;60a5
	ld b,b			;60a6
	add a,b			;60a7
	ld b,b			;60a8
	and b			;60a9
l60aah:
	ld h,b			;60aa
	nop			;60ab
	exx			;60ac
	jp po,00a60h		;60ad
	ld b,b			;60b0
	nop			;60b1
	add a,b			;60b2
	ld h,b			;60b3
	and b			;60b4
	add a,b			;60b5
	nop			;60b6
	dec d			;60b7
	add a,b			;60b8
	jr nz,l603bh		;60b9
	inc d			;60bb
l60bch:
	ld a,(bc)		;60bc
	nop			;60bd
	ld bc,0a0a0h		;60be
	nop			;60c1
sub_60c2h:
	and b			;60c2
	jr nz,l6065h		;60c3
	ld e,094h		;60c5
	inc d			;60c7
	ld a,(bc)		;60c8
	ret nz			;60c9
	nop			;60ca
	nop			;60cb
	ret nz			;60cc
	jr nz,l608fh		;60cd
	ld b,b			;60cf
	ret nz			;60d0
	ld h,b			;60d1
	ret nz			;60d2
	nop			;60d3
	add a,b			;60d4
l60d5h:
	ret nz			;60d5
	and b			;60d6
	ret po			;60d7
	nop			;60d8
	ret po			;60d9
	jr nz,l60bch		;60da
	ld (bc),a		;60dc
	ld b,b			;60dd
	ret po			;60de
	ld h,b			;60df
	ret po			;60e0
	add a,b			;60e1
	ret po			;60e2
	jr nz,l608fh		;60e3
	ld c,e			;60e5
	nop			;60e6
	ld c,d			;60e7
	ld b,b			;60e8
	xor e			;60e9
	ld (hl),02eh		;60ea
	nop			;60ec
	ld e,b			;60ed
	ld l,d			;60ee
	ld c,(hl)		;60ef
l60f0h:
	ld b,h			;60f0
	ld (hl),000h		;60f1
	ld bc,02140h		;60f3
	ld b,b			;60f6
	ld b,c			;60f7
	ld b,b			;60f8
	ld h,c			;60f9
	ld b,b			;60fa
	nop			;60fb
	add a,c			;60fc
	ld b,b			;60fd
	and c			;60fe
	ld h,b			;60ff
	ld bc,02160h		;6100
	ld h,b			;6103
sub_6104h:
	nop			;6104
	ld b,c			;6105
	ld h,b			;6106
	ld h,c			;6107
	ld h,b			;6108
	add a,c			;6109
	ld h,b			;610a
	and c			;610b
	add a,b			;610c
	ld l,001h		;610d
	add a,b			;610f
l6110h:
	and (hl)		;6110
	nop			;6111
	ld b,c			;6112
	add a,b			;6113
	ld h,c			;6114
	add a,b			;6115
l6116h:
	add a,c			;6116
	add a,b			;6117
	and c			;6118
	and b			;6119
	nop			;611a
	ld bc,021a0h		;611b
	and b			;611e
	ld b,c			;611f
	and b			;6120
	ld h,c			;6121
	and b			;6122
	add hl,bc		;6123
	add a,c			;6124
	and b			;6125
	and c			;6126
	ret nz			;6127
	ret m			;6128
	add a,b			;6129
	ld hl,l41c0h		;612a
	ret nz			;612d
	ld h,c			;612e
	ret nz			;612f
	nop			;6130
	add a,c			;6131
	ret nz			;6132
	and c			;6133
	ret po			;6134
	ld bc,021e0h		;6135
	ret po			;6138
	nop			;6139
sub_613ah:
	ld b,c			;613a
	ret po			;613b
	ld h,c			;613c
	ret po			;613d
	add a,c			;613e
	ret po			;613f
	and c			;6140
	jr nz,l6143h		;6141
l6143h:
	ld bc,02120h		;6143
	jr nz,$+67		;6146
	jr nz,l61abh		;6148
	jr nz,$+7		;614a
	add a,c			;614c
	jr nz,l60f0h		;614d
	nop			;614f
	ld bc,0c0e2h		;6150
	nop			;6153
	ld b,c			;6154
	nop			;6155
	ld h,c			;6156
l6157h:
	nop			;6157
	ld l,081h		;6158
	nop			;615a
	dec bc			;615b
	nop			;615c
	ld l,l			;615d
	ld de,03601h		;615e
	nop			;6161
	ret nc			;6162
	dec bc			;6163
	sub (hl)		;6164
	add hl,hl		;6165
	nop			;6166
l6167h:
	ld (bc),a		;6167
	ld (de),a		;6168
	adc a,c			;6169
	sbc a,c			;616a
	ld c,d			;616b
	nop			;616c
	ld e,0e1h		;616d
	ld (bc),a		;616f
	daa			;6170
	add hl,bc		;6171
	ld (hl),c		;6172
	nop			;6173
	rrca			;6174
	adc a,e			;6175
	ld (bc),a		;6176
	dec e			;6177
	add a,c			;6178
	pop hl			;6179
	inc bc			;617a
	add hl,hl		;617b
	defb 0ddh,050h,002h ;illegal sequence	;617c
	ld b,000h		;617f
	ld h,c			;6181
	dec b			;6182
	inc de			;6183
l6184h:
	sub b			;6184
	jr nz,l618bh		;6185
	adc a,h			;6187
	djnz $+29		;6188
	adc a,h			;618a
l618bh:
	rla			;618b
	ex af,af'		;618c
l618dh:
	nop			;618d
	ld c,d			;618e
	ld l,a			;618f
	ret po			;6190
	inc b			;6191
	ld c,d			;6192
	ld e,h			;6193
	add hl,bc		;6194
	or (hl)			;6195
	inc bc			;6196
	ld (de),a		;6197
	dec bc			;6198
	sub 027h		;6199
	sub b			;619b
	ld c,0ech		;619c
	ld c,c			;619e
	jp 01daeh		;619f
l61a2h:
	dec d			;61a2
	call 0bebdh		;61a3
	ld (0ddd3h),hl		;61a6
	ld h,b			;61a9
	ret m			;61aa
l61abh:
	xor h			;61ab
	adc a,(hl)		;61ac
	ld (de),a		;61ad
	ld bc,00b01h		;61ae
	rst 38h			;61b1
	add a,b			;61b2
	ld hl,l5775h		;61b3
	ld de,028d7h		;61b6
	ld c,a			;61b9
	ld bc,00a23h		;61ba
	ld c,0dfh		;61bd
	ld b,01eh		;61bf
	nop			;61c1
	call 051d6h		;61c2
l61c5h:
	ld b,031h		;61c5
	djnz l61cfh		;61c7
	call 044b9h		;61c9
	call nc,l62c4h+2	;61cc
l61cfh:
	ld d,a			;61cf
	and h			;61d0
	sub b			;61d1
	ld (bc),a		;61d2
	dec a			;61d3
	ld e,l			;61d4
	ld (03049h),a		;61d5
l61d8h:
	ld (bc),a		;61d8
	inc (hl)		;61d9
	ld (bc),a		;61da
	ld h,h			;61db
	dec bc			;61dc
	inc h			;61dd
	ld h,l			;61de
	ld (bc),a		;61df
	ld h,(hl)		;61e0
	ld (bc),a		;61e1
	ld l,b			;61e2
	sub d			;61e3
	ld (bc),a		;61e4
	ld l,e			;61e5
	ld (bc),a		;61e6
	ld l,l			;61e7
	ld (bc),a		;61e8
	ld c,c			;61e9
	ld l,(hl)		;61ea
	ld (bc),a		;61eb
	ld l,a			;61ec
	ld (bc),a		;61ed
	ld (hl),b		;61ee
	ld (bc),a		;61ef
	inc h			;61f0
	ld (hl),c		;61f1
	ld (bc),a		;61f2
	ld (hl),d		;61f3
	ld (bc),a		;61f4
	ld (hl),e		;61f5
	sub c			;61f6
	ld (bc),a		;61f7
	ld (hl),h		;61f8
	ld (bc),a		;61f9
	jp z,0c9c3h		;61fa
	ld c,b			;61fd
	ld h,c			;61fe
	ld e,d			;61ff
	ld d,a			;6200
l6201h:
	call po,sub_6324h	;6201
	inc b			;6204
	rra			;6205
	ld h,061h		;6206
	ld e,b			;6208
	ret			;6209
sub_620ah:
	sub a			;620a
	jp z,00336h		;620b
	ld d,a			;620e
	call 0c02fh		;620f
	jp 0ec05h		;6212
	jp nc,00ccah		;6215
	ld e,e			;6218
	ret			;6219
	rst 28h			;621a
	dec bc			;621b
	adc a,c			;621c
	call 004e7h		;621d
	adc a,e			;6220
l6221h:
	nop			;6221
	ld bc,0029ah		;6222
	ld hl,0835ch		;6225
	ld l,008h		;6228
	call 002deh		;622a
	rrca			;622d
	ld l,075h		;622e
	ld b,d			;6230
	ld d,037h		;6231
	dec h			;6233
	push bc			;6234
	ld b,b			;6235
	ld h,043h		;6236
l6238h:
	ld (04328h),a		;6238
	adc a,c			;623b
	adc a,e			;623c
	daa			;623d
	ld b,024h		;623e
	ld (hl),002h		;6240
	scf			;6242
	ld (bc),a		;6243
	jr c,l61d8h		;6244
	ld (bc),a		;6246
	ld h,(hl)		;6247
	ld (bc),a		;6248
	ld h,a			;6249
	ld (bc),a		;624a
	ld b,(hl)		;624b
	ld l,b			;624c
	ld (bc),a		;624d
	ld (hl),a		;624e
	ld b,e			;624f
	inc l			;6250
	jr nz,l62c9h		;6251
	rlca			;6253
	ld a,b			;6254
	ld b,e			;6255
	ret			;6256
	ld (hl),a		;6257
	ex (sp),hl		;6258
	push af			;6259
	nop			;625a
	push hl			;625b
	inc e			;625c
	call nz,sub_5778h	;625d
	adc a,(hl)		;6260
	nop			;6261
	call 0cd5ch		;6262
	ld sp,hl		;6265
l6266h:
	ld e,l			;6266
	call 00063h		;6267
	ld e,d			;626a
	call sub_5b11h		;626b
	call sub_593bh		;626e
	call 06808h		;6271
	ld e,b			;6274
	call 0021dh		;6275
	sbc a,d			;6278
	ld d,a			;6279
	push bc			;627a
	sub b			;627b
	dec bc			;627c
	ld (bc),a		;627d
	jp z,l5ceah		;627e
	xor l			;6281
	and d			;6282
	cp d			;6283
	jp (hl)			;6284
	add a,h			;6285
	ld a,(010bch)		;6286
	cp 00ah			;6289
	jp nz,0b346h		;628b
	ret m			;628e
	ld b,a			;628f
	ret z			;6290
	dec bc			;6291
	ld b,0dbh		;6292
	ld de,021d0h		;6294
	call m,0ac57h		;6297
	ret nz			;629a
	rla			;629b
	jp nz,096c4h		;629c
	ex af,af'		;629f
	ld (hl),h		;62a0
	ex af,af'		;62a1
	inc d			;62a2
	ld d,a			;62a3
	dec de			;62a4
	djnz l6238h		;62a5
	jp nz,l7906h		;62a7
	jp c,0951ah		;62aa
	rra			;62ad
	ld a,b			;62ae
	ld a,b			;62af
l62b0h:
	sbc a,c			;62b0
	jp nz,03236h		;62b1
	ld a,c			;62b4
	inc b			;62b5
	inc e			;62b6
	sbc a,h			;62b7
	ld (0bc7ah),a		;62b8
	adc a,b			;62bb
	ld a,h			;62bc
	ex af,af'		;62bd
	ld b,(hl)		;62be
	ld (l7d40h+1),a		;62bf
	inc b			;62c2
	and b			;62c3
l62c4h:
	ld (0c27eh),a		;62c4
	sub d			;62c7
	ld b,e			;62c8
l62c9h:
	ld (hl),l		;62c9
	adc a,a			;62ca
	or b			;62cb
	ld hl,000fdh		;62cc
	ld d,a			;62cf
	ld bc,02098h		;62d0
	otir			;62d3
	ei			;62d5
	ret			;62d6
	ld a,000h		;62d7
	dec bc			;62d9
l62dah:
	nop			;62da
	call pe,sub_48e4h	;62db
	adc a,e			;62de
	xor (hl)		;62df
	or (hl)			;62e0
	sub e			;62e1
	ret c			;62e2
	jp pe,l7211h		;62e3
	ld h,e			;62e6
	ld c,h			;62e7
	xor 0ffh		;62e8
	ld bc,l42dah		;62ea
	ld e,b			;62ed
	cp 005h			;62ee
	ld b,07fh		;62f0
	ld b,0a3h		;62f2
	ld a,(bc)		;62f4
	ld b,03fh		;62f5
	ld b,001h		;62f7
	ld b,01fh		;62f9
	ld a,r			;62fb
	and b			;62fd
	dec e			;62fe
	rla			;62ff
	or h			;6300
	ld h,e			;6301
	add a,b			;6302
	ld e,l			;6303
	and b			;6304
	dec b			;6305
	inc b			;6306
	ld c,04dh		;6307
l6309h:
	ld e,040h		;6309
	xor d			;630b
	jp po,0c5c0h		;630c
	ld e,c			;630f
	sub c			;6310
l6311h:
	or b			;6311
	ex af,af'		;6312
	inc b			;6313
	ld (hl),c		;6314
	and b			;6315
	call nc,06a25h		;6316
l6319h:
	ld c,d			;6319
	ex de,hl		;631a
	ret c			;631b
	add hl,de		;631c
	ld c,a			;631d
	add a,(hl)		;631e
	inc b			;631f
	ld b,0f9h		;6320
	ld c,e			;6322
	adc a,c			;6323
sub_6324h:
	ld b,c			;6324
	sub c			;6325
	call z,08404h		;6326
	jr nz,$+105		;6329
	ld e,b			;632b
	inc a			;632c
	and h			;632d
l632eh:
	ld d,(hl)		;632e
	inc b			;632f
	cp l			;6330
	ld b,h			;6331
	ret po			;6332
	ld e,b			;6333
	ld d,d			;6334
	and a			;6335
	ld e,0cah		;6336
	and b			;6338
	ld e,b			;6339
	adc a,d			;633a
	ld (de),a		;633b
	ret nz			;633c
	ld e,b			;633d
	add a,l			;633e
	ld sp,0316dh		;633f
	ld a,0e1h		;6342
	or d			;6344
	sub b			;6345
	ld e,d			;6346
	jr $+91			;6347
	ld e,020h		;6349
	ld e,d			;634b
	call z,02b31h		;634c
	ld e,c			;634f
	ld c,0a0h		;6350
	ld c,0a4h		;6352
	jr nc,l6319h		;6354
	ld c,03ah		;6356
	ld l,e			;6358
	ld l,(hl)		;6359
	rra			;635a
	ld d,h			;635b
	rra			;635c
	ld e,(hl)		;635d
	ld h,h			;635e
	rra			;635f
	dec c			;6360
	ld d,h			;6361
	rra			;6362
sub_6363h:
	or a			;6363
l6364h:
	ld c,01fh		;6364
	ld c,d			;6366
	ld e,b			;6367
	ex de,hl		;6368
	ld c,d			;6369
	dec bc			;636a
	ld c,a			;636b
	ld e,c			;636c
	ld c,d			;636d
	ld l,a			;636e
l636fh:
	ld hl,(0b207h)		;636f
	ld hl,(0b2abh)		;6372
	ld c,d			;6375
	sub (hl)		;6376
	ld (hl),b		;6377
	rra			;6378
l6379h:
	or l			;6379
	ld d,a			;637a
	rra			;637b
	cp l			;637c
	rra			;637d
	ret po			;637e
	ld d,a			;637f
	in a,(01fh)		;6380
	ld c,01fh		;6382
	ld l,c			;6384
	sbc a,c			;6385
	call nz,00e3eh		;6386
	adc a,l			;6389
	out (08dh),a		;638a
	call z,0c80ah		;638c
	ld a,000h		;638f
	ld (009beh),a		;6391
	ld a,(09171h)		;6394
	ret nz			;6397
	jr nc,l6364h		;6398
	call nz,0a459h		;639a
	call p,0fe00h		;639d
	ld hl,(0b6cah)		;63a0
	ld e,c			;63a3
	cp 02ch			;63a4
	jp z,l6143h		;63a6
	inc b			;63a9
	cpl			;63aa
	jp z,l7587h		;63ab
	nop			;63ae
	nop			;63af
	jp nz,04032h		;63b0
l63b3h:
	jp nz,l493ah		;63b3
	ld bc,l4105h		;63b6
	dec b			;63b9
	inc b			;63ba
	dec b			;63bb
	ld l,048h		;63bc
	dec b			;63be
	jp p,0afbeh		;63bf
	ld c,l			;63c2
	jp nz,018b5h		;63c3
	sbc a,b			;63c6
	rrca			;63c7
	ld b,h			;63c8
	sbc a,a			;63c9
	ld (bc),a		;63ca
	ld c,h			;63cb
	ret po			;63cc
	ld e,h			;63cd
	sub l			;63ce
	ld (hl),h		;63cf
	sbc a,l			;63d0
	sbc a,d			;63d1
	ld h,0a6h		;63d2
	ld e,c			;63d4
	sbc a,d			;63d5
	ld c,(hl)		;63d6
	djnz $-100		;63d7
	jr l6419h		;63d9
	ld l,a			;63db
	dec e			;63dc
	ld a,07ah		;63dd
	ld e,b			;63df
	and c			;63e0
	dec b			;63e1
	ld a,098h		;63e2
	ld (01e02h),a		;63e4
	and h			;63e7
	ret p			;63e8
	inc b			;63e9
	inc bc			;63ea
	ld (bc),a		;63eb
	jp z,0009dh		;63ec
l63efh:
	sbc a,d			;63ef
	inc bc			;63f0
	inc bc			;63f1
	dec bc			;63f2
	ld c,016h		;63f3
	jp m,l501eh		;63f5
	sbc a,b			;63f8
	or d			;63f9
	ld b,060h		;63fa
	sbc a,b			;63fc
	ld (0844ah),a		;63fd
	ld b,a			;6400
	ld a,(l576ch)		;6401
	add a,c			;6404
	defb 0edh ;next byte illegal after ed	;6405
	dec b			;6406
	sbc a,024h		;6407
	ld l,l			;6409
	cp 005h			;640a
	ld (hl),e		;640c
	jp z,sub_5a00h+1	;640d
	jp 0df02h		;6410
	jr nz,l63efh		;6413
	call po,09959h		;6415
	or h			;6418
l6419h:
	add a,b			;6419
	add a,b			;641a
	dec de			;641b
	ld (hl),a		;641c
	ld d,l			;641d
	ld b,003h		;641e
	xor a			;6420
	add hl,bc		;6421
	ld d,b			;6422
	ld a,(bc)		;6423
	ex af,af'		;6424
	ld a,(bc)		;6425
	adc a,c			;6426
	ex af,af'		;6427
	ld b,00ch		;6428
	ld b,089h		;642a
	inc c			;642c
l642dh:
	ld b,041h		;642d
	ld l,006h		;642f
	ld b,e			;6431
	call nc,sub_601ah	;6432
	rlca			;6435
	add a,(hl)		;6436
	ld b,d			;6437
	call z,05a5bh		;6438
	rlca			;643b
	adc a,(hl)		;643c
	ld d,h			;643d
	call z,00753h		;643e
	rlca			;6441
	ld d,l			;6442
	call z,0074ah		;6443
	dec bc			;6446
l6447h:
	inc a			;6447
	jp (hl)			;6448
	adc a,h			;6449
	jp c,04d2dh		;644a
	call nz,0800bh		;644d
	add a,06ch		;6450
	cp l			;6452
	ld d,d			;6453
	ld b,049h		;6454
	ld b,065h		;6456
	add hl,bc		;6458
	ld b,003h		;6459
	xor e			;645b
	add a,006h		;645c
	ld c,c			;645e
	inc bc			;645f
	ret			;6460
	sbc a,c			;6461
	ld b,a			;6462
	dec a			;6463
	sbc a,c			;6464
	ld b,b			;6465
	sub l			;6466
	jp 0f3c9h		;6467
	ld a,0b8h		;646a
	pop de			;646c
	rrca			;646d
	dec b			;646e
	ld h,l			;646f
l6470h:
	ei			;6470
	rlca			;6471
	cp d			;6472
	sbc a,d			;6473
	rlca			;6474
	ld a,(l684eh)		;6475
	rst 28h			;6478
	and e			;6479
	ld l,d			;647a
	sbc a,a			;647b
	add hl,hl		;647c
	ld hl,0c005h		;647d
	cp d			;6480
	or l			;6481
	or l			;6482
	ld h,h			;6483
	inc bc			;6484
	ld b,004h		;6485
	inc d			;6487
	cp 006h			;6488
	jp c,l548fh		;648a
	call pe,0dfach		;648d
	sub h			;6490
	ld b,0cdh		;6491
	ld (bc),a		;6493
	push bc			;6494
	ld d,h			;6495
	daa			;6496
	dec hl			;6497
	ld (bc),a		;6498
	ld d,d			;6499
	ld e,e			;649a
	ld c,h			;649b
	inc bc			;649c
	ld hl,0dc02h		;649d
	push hl			;64a0
	jr nz,l6470h		;64a1
	cp c			;64a3
	ld a,l			;64a4
	ex af,af'		;64a5
	ld e,e			;64a6
	cp 064h			;64a7
	nop			;64a9
	ld hl,l5ae4h		;64aa
	jp c,05ab5h		;64ad
	cp 0b4h			;64b0
sub_64b2h:
	ex af,af'		;64b2
	ld hl,l5af3h		;64b3
	jp nc,02107h		;64b6
	push de			;64b9
	ld a,d			;64ba
	ld e,d			;64bb
	rst 20h			;64bc
	ret pe			;64bd
	add hl,de		;64be
	adc a,b			;64bf
	ret c			;64c0
	cp 008h			;64c1
	sub (hl)		;64c3
sub_64c4h:
	ret nc			;64c4
	ld a,(00806h)		;64c5
	ld c,(hl)		;64c8
	ret c			;64c9
	and (hl)		;64ca
	exx			;64cb
	inc hl			;64cc
	add a,d			;64cd
	ld h,006h		;64ce
	jp l4c93h		;64d0
	or b			;64d3
	jp po,0c34dh		;64d4
	ld e,h			;64d7
	sub e			;64d8
	sbc a,b			;64d9
	inc l			;64da
	jp po,0a8a8h		;64db
	ld b,003h		;64de
	ld d,b			;64e0
	call nc,018d6h		;64e1
	jr l64e6h		;64e4
l64e6h:
	inc e			;64e6
	ld c,098h		;64e7
	add a,(hl)		;64e9
	ld c,048h		;64ea
	inc bc			;64ec
	ld d,h			;64ed
	sub (hl)		;64ee
	ld h,a			;64ef
	ld c,046h		;64f0
	rst 38h			;64f2
	nop			;64f3
	adc a,c			;64f4
	inc d			;64f5
	inc bc			;64f6
	ld bc,0cc14h		;64f7
	ld bc,0230eh		;64fa
	ld a,(0ad64h)		;64fd
	ld d,b			;6500
	ld h,(hl)		;6501
	inc b			;6502
	jp nz,l5b76h		;6503
	inc a			;6506
	ld a,(0b09fh)		;6507
	ld c,c			;650a
	djnz l6519h		;650b
	ld bc,00c81h		;650d
	ld b,(hl)		;6510
	ret nc			;6511
	ld e,e			;6512
	xor e			;6513
	inc d			;6514
	or l			;6515
	ld (0b5bbh),hl		;6516
l6519h:
	adc a,c			;6519
	ld b,0c2h		;651a
	ld b,d			;651c
	ld e,e			;651d
	ld a,00fh		;651e
	rst 0			;6520
	ld hl,059c3h		;6521
	ld a,h			;6524
	ld c,h			;6525
	adc a,04fh		;6526
	sbc a,l			;6528
	inc c			;6529
	rlca			;652a
	inc c			;652b
	ld d,00fh		;652c
	jp nz,02a04h		;652e
	ld e,l			;6531
	xor l			;6532
	xor l			;6533
	ld c,h			;6534
	xor c			;6535
	inc bc			;6536
	xor l			;6537
	inc c			;6538
	ld (0fda3h),a		;6539
	inc d			;653c
	rla			;653d
	or b			;653e
	add a,c			;653f
	ld (0c3a2h),a		;6540
	xor a			;6543
	ret po			;6544
	ld d,e			;6545
	ld d,a			;6546
l6547h:
	add a,032h		;6547
	cp h			;6549
	ld hl,0fff6h		;654a
	ld b,a			;654d
	sbc a,b			;654e
	ld c,c			;654f
	sbc a,(hl)		;6550
	call po,sub_42ech	;6551
	and (hl)		;6554
	ld e,h			;6555
	sub 0a6h		;6556
	jp l5c97h		;6558
	ld h,h			;655b
	inc bc			;655c
	add a,018h		;655d
	ld (00ca4h),a		;655f
	ld d,h			;6562
	sub l			;6563
	inc c			;6564
	dec h			;6565
	add a,0a0h		;6566
	add hl,sp		;6568
	inc b			;6569
	ld (05ca8h),a		;656a
	ld (09904h),a		;656d
	ld e,h			;6570
	ld hl,05c91h		;6571
	adc a,h			;6574
	xor d			;6575
	ret pe			;6576
	adc a,(hl)		;6577
	ld hl,(0351eh)		;6578
	sub d			;657b
	ld (de),a		;657c
	add a,b			;657d
	sub c			;657e
	inc de			;657f
	jp nc,0150dh		;6580
	and b			;6583
	dec d			;6584
	ld (hl),b		;6585
	ld (de),a		;6586
	ld (092b3h),a		;6587
	ld (bc),a		;658a
	jp nz,0a632h		;658b
	dec b			;658e
	ld sp,l5cb5h		;658f
	dec (hl)		;6592
	call nz,sub_620ah	;6593
	dec (hl)		;6596
	or a			;6597
	ld (bc),a		;6598
	ld c,l			;6599
	add a,022h		;659a
	xor a			;659c
	ld (0210eh),hl		;659d
	cp (hl)			;65a0
	ld e,h			;65a1
	jp 03428h		;65a2
	dec sp			;65a5
	sub 016h		;65a6
	sbc a,h			;65a8
	di			;65a9
	or (hl)			;65aa
	ld hl,0307eh		;65ab
	ld (bc),a		;65ae
	sub b			;65af
	ld (05c0bh),a		;65b0
	ld de,0230ch		;65b3
	dec b			;65b6
	ld e,(hl)		;65b7
	ld bc,0f1d0h		;65b8
	jp 0fc51h		;65bb
	inc de			;65be
	xor a			;65bf
	ret			;65c0
	ld d,(hl)		;65c1
	rst 38h			;65c2
	inc l			;65c3
	ld a,(de)		;65c4
	ld (de),a		;65c5
	sub 00ah		;65c6
	ld (l76dfh),a		;65c8
	inc sp			;65cb
	ld (de),a		;65cc
	sub e			;65cd
	inc sp			;65ce
	ld b,08fh		;65cf
	ld (de),a		;65d1
	ld d,c			;65d2
	ld e,h			;65d3
	ld e,002h		;65d4
	in a,(036h)		;65d6
	and (hl)		;65d8
	ld l,c			;65d9
	ex af,af'		;65da
	ld l,c			;65db
	rst 18h			;65dc
	dec e			;65dd
	inc hl			;65de
	cp 0dfh			;65df
	and h			;65e1
	inc de			;65e2
	rst 18h			;65e3
	ld (hl),e		;65e4
	call 021a8h		;65e5
	ld c,h			;65e8
	ld l,l			;65e9
	jp c,0024eh		;65ea
	ld c,062h		;65ed
	ld d,04ch		;65ef
l65f1h:
	call 08082h		;65f1
	inc h			;65f4
	ld l,(hl)		;65f5
	dec bc			;65f6
	ld e,c			;65f7
	dec c			;65f8
	ld c,06dh		;65f9
	ld d,051h		;65fb
	dec bc			;65fd
	ld b,b			;65fe
	ld l,a			;65ff
	dec bc			;6600
	and a			;6601
	ld c,0bbh		;6602
	ld d,04fh		;6604
	call nc,sub_700bh	;6606
	dec bc			;6609
	or d			;660a
	jr c,l661bh		;660b
	add a,017h		;660d
	sbc a,l			;660f
	ret z			;6610
	inc de			;6611
	cp b			;6612
	ret c			;6613
	cp c			;6614
	add a,0a0h		;6615
	cp d			;6617
	ret c			;6618
	ld (hl),001h		;6619
l661bh:
	ret			;661b
	sub 0a3h		;661c
	call c,0cb05h		;661e
	sbc a,l			;6621
	add a,a			;6622
	push hl			;6623
	ld c,00fh		;6624
	inc b			;6626
	nop			;6627
	cp e			;6628
	ld c,03eh		;6629
	call 0aa1dh		;662b
	sub (hl)		;662e
	ex (sp),hl		;662f
	ld c,0d1h		;6630
	ld a,(0bb60h)		;6632
l6635h:
	dec sp			;6635
	and h			;6636
	or e			;6637
	dec a			;6638
	xor b			;6639
	ld (hl),c		;663a
	ret nz			;663b
	and h			;663c
	dec d			;663d
	dec c			;663e
	jp nz,05ebah		;663f
	sbc a,0c2h		;6642
	ld h,l			;6644
	di			;6645
	ld (00081h),a		;6646
	ld a,b			;6649
	jp z,l5d00h		;664a
	cp 070h			;664d
	jp z,0941bh		;664f
	inc b			;6652
	ld l,b			;6653
	xor h			;6654
	cp h			;6655
	call z,0f858h		;6656
	ld l,04ah		;6659
	ld e,l			;665b
	add a,0f0h		;665c
l665eh:
	call sub_73c6h		;665e
	djnz l6635h		;6661
	inc l			;6663
	ret nz			;6664
	daa			;6665
	sbc a,c			;6666
	sub a			;6667
	ld (04304h),a		;6668
	jr nc,$-2		;666b
	pop bc			;666d
	or a			;666e
	dec c			;666f
	jp 033cbh		;6670
	pop bc			;6673
	daa			;6674
	ret			;6675
	or e			;6676
	cp b			;6677
	cp e			;6678
	djnz l665eh		;6679
	xor a			;667b
	and d			;667c
	ld h,a			;667d
	ex af,af'		;667e
	rst 8			;667f
	dec b			;6680
	rlc h			;6681
	pop bc			;6683
	ld bc,0c633h		;6684
	ld (bc),a		;6687
	pop af			;6688
	inc bc			;6689
	inc b			;668a
	call 0dccbh		;668b
	inc bc			;668e
	sbc a,0d8h		;668f
	sbc a,0dbh		;6691
	rst 18h			;6693
	ret po			;6694
	ld e,l			;6695
	inc b			;6696
	jp (ix)			;6697
	inc bc			;6699
	jp z,00103h		;669a
	sbc a,002h		;669d
	inc b			;669f
	ld a,h			;66a0
	ex af,af'		;66a1
	daa			;66a2
	nop			;66a3
	inc b			;66a4
	inc bc			;66a5
	dec hl			;66a6
	inc b			;66a7
	ld bc,07902h		;66a8
l66abh:
	inc b			;66ab
	ret p			;66ac
	ex af,af'		;66ad
	sbc a,h			;66ae
	nop			;66af
	dec b			;66b0
l66b1h:
	inc bc			;66b1
	xor l			;66b2
	dec b			;66b3
l66b4h:
	ld bc,0e702h		;66b4
	inc b			;66b7
	ex af,af'		;66b8
	jp nz,01200h		;66b9
	rst 38h			;66bc
	ld a,(0ab62h)		;66bd
	xor d			;66c0
	ld h,e			;66c1
	rst 8			;66c2
	ret z			;66c3
	inc bc			;66c4
	ld d,000h		;66c5
	nop			;66c7
	ld e,a			;66c8
	ld hl,l5d3eh		;66c9
	add hl,de		;66cc
	ld a,(hl)		;66cd
	cp 0ffh			;66ce
	add hl,bc		;66d0
	jp nz,l5e17h		;66d1
	xor a			;66d4
	sub (hl)		;66d5
	ld e,a			;66d6
	pop hl			;66d7
	ld c,c			;66d8
	sbc a,d			;66d9
	nop			;66da
	jr c,l673bh		;66db
	ld b,096h		;66dd
	ld c,099h		;66df
	ld c,b			;66e1
	ld de,03ef8h		;66e2
	inc e			;66e5
	sbc a,c			;66e6
	outi			;66e7
	ld bc,0d380h		;66e9
	sbc a,b			;66ec
	add hl,de		;66ed
	djnz $-11		;66ee
	ret			;66f0
	ei			;66f1
	nop			;66f2
	ld d,0ebh		;66f3
	ld (0328eh),a		;66f5
	ld (0fc5ah),a		;66f8
	inc (hl)		;66fb
	ld (007eeh),a		;66fc
	and l			;66ff
	call m,03370h		;6700
	rlca			;6703
	push bc			;6704
	ld a,(de)		;6705
	call m,0f22ah		;6706
	rlca			;6709
	cp d			;670a
	ld a,(de)		;670b
	defb 0fdh,01eh,0f5h ;illegal sequence	;670c
	rlca			;670f
	or l			;6710
	inc e			;6711
	ld l,(iy-007h)		;6712
	rrca			;6715
	sbc a,d			;6716
	ld a,0fdh		;6717
	rlca			;6719
l671ah:
	xor d			;671a
	jr c,l671ah		;671b
	ccf			;671d
	rlca			;671e
	ld c,05ch		;671f
	cp 066h			;6721
	nop			;6723
	rla			;6724
	rlca			;6725
	cp 050h			;6726
	inc b			;6728
	rrca			;6729
	daa			;672a
	ld hl,(00f07h)		;672b
	dec (hl)		;672e
	sub b			;672f
	ld (hl),b		;6730
	ld b,a			;6731
	rst 38h			;6732
	inc (hl)		;6733
	ld a,(bc)		;6734
	rrca			;6735
	rlca			;6736
	call z,sub_70ffh	;6737
	dec bc			;673a
l673bh:
	rlca			;673b
	and l			;673c
	ld a,(de)		;673d
	rst 38h			;673e
	dec h			;673f
	inc de			;6740
	rlca			;6741
	jp z,0ff1ch		;6742
	ld (l7716h),a		;6745
	ld c,0ffh		;6748
	ld c,e			;674a
	ld a,(de)		;674b
	ld e,a			;674c
	ld b,0ffh		;674d
	ld h,h			;674f
	dec e			;6750
	rlca			;6751
	add a,a			;6752
	cp h			;6753
	cp 048h			;6754
	ld hl,0030fh		;6756
	cp 028h			;6759
	dec h			;675b
	rra			;675c
	adc a,e			;675d
	and b			;675e
	inc e			;675f
	jr z,l67a9h		;6760
	ld h,b			;6762
	jp c,0d02ch		;6763
	rlca			;6766
	ld d,l			;6767
	cp 00bh			;6768
	inc l			;676a
	ret po			;676b
	ccf			;676c
	ld b,(iy+068h)		;676d
	jr nc,l6779h		;6770
	ld e,e			;6772
l6773h:
	defb 0fdh,016h,047h ;illegal sequence	;6773
	inc sp			;6776
	sub a			;6777
	daa			;6778
l6779h:
	ld h,(hl)		;6779
	scf			;677a
	scf			;677b
	ld de,023c7h		;677c
	ld a,(092cfh)		;677f
	ld c,b			;6782
sub_6783h:
	ld a,0c7h		;6783
	add hl,sp		;6785
	ld (hl),b		;6786
	ld c,c			;6787
	rlca			;6788
	xor h			;6789
	inc e			;678a
	ei			;678b
	ld e,h			;678c
	ld b,e			;678d
l678eh:
	cpl			;678e
	ld c,h			;678f
	cp l			;6790
	ld a,(0e101h)		;6791
	di			;6794
	and 020h		;6795
	jp z,l5f31h		;6797
	call m,025f8h		;679a
	inc d			;679d
	ld e,a			;679e
	ld a,(093f1h)		;679f
	add a,b			;67a2
	and 00fh		;67a3
	rra			;67a5
	ld (09126h),a		;67a6
l67a9h:
	or (hl)			;67a9
	dec (hl)		;67aa
	and e			;67ab
	ld (0a3b4h),hl		;67ac
	ld b,b			;67af
l67b0h:
	ld a,(0c39ch)		;67b0
	or a			;67b3
	ld (de),a		;67b4
	jr nz,l67beh		;67b5
	ld a,(000b4h)		;67b7
	add a,(hl)		;67ba
	jp m,l5f54h		;67bb
l67beh:
	xor a			;67be
	inc hl			;67bf
	add a,(hl)		;67c0
	adc a,b			;67c1
	ld a,b			;67c2
	jp nc,02b5dh		;67c3
	ld l,a			;67c6
	ld (hl),a		;67c7
	ld b,b			;67c8
l67c9h:
	ld a,(08621h)		;67c9
	ld e,a			;67cc
	inc hl			;67cd
	ld d,(hl)		;67ce
	inc hl			;67cf
	ld b,b			;67d0
	ld a,(0b234h)		;67d1
	add a,028h		;67d4
	ld d,a			;67d6
	ld a,d			;67d7
	ld (hl),007h		;67d8
	rlca			;67da
	and e			;67db
	ld (bc),a		;67dc
	ld (hl),a		;67dd
	di			;67de
	out (099h),a		;67df
l67e1h:
	ld a,08eh		;67e1
	inc bc			;67e3
	ld bc,059edh		;67e4
	ld a,d			;67e7
	and 03fh		;67e8
	ld d,a			;67ea
	out (03bh),a		;67eb
	jr z,l67e1h		;67ed
	and 003h		;67ef
	jr z,l67fah		;67f1
	in a,(098h)		;67f3
	cp 099h			;67f5
	di			;67f7
	and (hl)		;67f8
	ld e,a			;67f9
l67fah:
	ld sp,hl		;67fa
	ret nz			;67fb
	ei			;67fc
	add a,b			;67fd
	ld b,a			;67fe
	xor a			;67ff
	ld (hl),a		;6800
	inc l			;6801
	inc hl			;6802
	inc hl			;6803
	ld (bc),a		;6804
	inc b			;6805
l6806h:
	inc b			;6806
	djnz l67b0h		;6807
	ret			;6809
	set 6,d			;680a
	or 0aah			;680c
	ld (hl),e		;680e
	ld (bc),a		;680f
	ld c,b			;6810
	ld (hl),d		;6811
	ld (bc),a		;6812
	dec c			;6813
	ld (bc),a		;6814
	ei			;6815
	inc c			;6816
	ld hl,(09310h)		;6817
	sbc a,b			;681a
	ld d,(hl)		;681b
	ld b,l			;681c
	sbc a,b			;681d
	sub l			;681e
	ccf			;681f
	ld h,b			;6820
	and 05bh		;6821
	inc bc			;6823
	xor 08ch		;6824
	ld h,b			;6826
	ld b,000h		;6827
	ld hl,l6041h		;6829
	ld de,06071h		;682c
	ld b,030h		;682f
	nop			;6831
l6832h:
	call sub_6014h		;6832
	inc hl			;6835
	inc de			;6836
	djnz l6832h		;6837
	ld hl,l7148h		;6839
	ld c,0a1h		;683c
	ld c,010h		;683e
	ld a,(hl)		;6840
	ld h,h			;6841
	add a,a			;6842
	nop			;6843
	ld b,a			;6844
	ld c,(hl)		;6845
	djnz l67c9h		;6846
	dec hl			;6848
	ld c,(hl)		;6849
	dec b			;684a
	ld (de),a		;684b
	inc de			;684c
	ld a,c			;684d
l684eh:
	ld b,h			;684e
	ld (de),a		;684f
	dec de			;6850
	call pe,01821h		;6851
	call 0e905h		;6854
	ld (bc),a		;6857
	ld a,(0c398h)		;6858
	ld a,003h		;685b
	ld e,b			;685d
	add a,l			;685e
	ld a,(bc)		;685f
	rlc l			;6860
	adc a,d			;6862
	ld c,b			;6863
	ld d,d			;6864
	ld b,050h		;6865
	call nz,0af35h		;6867
	ld (hl),e		;686a
	defb 0fdh,001h,0c9h ;illegal sequence	;686b
	ld a,(de)		;686e
	cp (hl)			;686f
	ret z			;6870
	inc a			;6871
	ld (de),a		;6872
	ret			;6873
	ld h,b			;6874
	defb 0edh ;next byte illegal after ed	;6875
	dec de			;6876
l6877h:
	inc d			;6877
	ld a,(hl)		;6878
	dec a			;6879
	sbc a,a			;687a
	ld de,00120h		;687b
	sbc a,h			;687e
	add a,a			;687f
	djnz l6877h		;6880
	ei			;6882
	ld c,05fh		;6883
	jr c,$+23		;6885
	ret			;6887
	sbc a,(hl)		;6888
	ld e,d			;6889
	ei			;688a
	ld hl,(09105h)		;688b
	ld d,h			;688e
	inc b			;688f
	or e			;6890
	inc bc			;6891
	xor c			;6892
	push de			;6893
	ld (bc),a		;6894
	ld (bc),a		;6895
	ld b,l			;6896
	pop hl			;6897
	push de			;6898
	ret m			;6899
	dec b			;689a
	ld d,007h		;689b
	ld (bc),a		;689d
	rlca			;689e
	sub d			;689f
	jp nc,01001h		;68a0
	xor e			;68a3
	nop			;68a4
	xor c			;68a5
	ld l,b			;68a6
	or 0a7h			;68a7
	rlca			;68a9
	dec e			;68aa
	nop			;68ab
	nop			;68ac
	jp p,02124h		;68ad
	ret p			;68b0
	ex de,hl		;68b1
	ld b,b			;68b2
	xor b			;68b3
	ld c,a			;68b4
	ld bc,0000ch		;68b5
	inc sp			;68b8
	ldir			;68b9
	adc a,(hl)		;68bb
	ld a,(bc)		;68bc
	add a,c			;68bd
	ld d,c			;68be
	or a			;68bf
	sbc a,(hl)		;68c0
	call m,00f10h		;68c1
	ret			;68c4
	inc e			;68c5
	ld (hl),0c9h		;68c6
	inc e			;68c8
	jp po,l5c95h		;68c9
	rlc (hl)		;68cc
	inc a			;68ce
	ld (0f538h),a		;68cf
	cpl			;68d2
	inc a			;68d3
	jp nz,020d3h		;68d4
	inc c			;68d7
	jp 04fb4h		;68d8
	ld de,0060bh		;68db
	nop			;68de
	add hl,de		;68df
	ld e,(hl)		;68e0
	add a,e			;68e1
	ld (bc),a		;68e2
	push hl			;68e3
	ld hl,l6116h		;68e4
	rlca			;68e7
	sbc a,b			;68e8
	xor l			;68e9
	pop hl			;68ea
sub_68ebh:
	push de			;68eb
	nop			;68ec
l68edh:
	ret			;68ed
	ld b,h			;68ee
	ld h,c			;68ef
	out (061h),a		;68f0
	and c			;68f2
	ld h,d			;68f3
	cp c			;68f4
	nop			;68f5
	ld h,d			;68f6
	pop af			;68f7
	ld h,d			;68f8
	ld bc,02763h		;68f9
	ld h,e			;68fc
	ld b,000h		;68fd
	ld a,a			;68ff
	jp 0612bh		;6900
	ld b,03fh		;6903
	push hl			;6905
	ld a,(hl)		;6906
	nop			;6907
	add a,002h		;6908
	and b			;690a
l690bh:
	ld (hl),a		;690b
	ld h,000h		;690c
	ld l,a			;690e
	add hl,de		;690f
	inc b			;6910
	ld b,(hl)		;6911
	inc hl			;6912
	ld a,(hl)		;6913
	pop hl			;6914
l6915h:
	dec hl			;6915
l6916h:
	nop			;6916
sub_6917h:
	add a,(hl)		;6917
	ld (bc),a		;6918
	ld (hl),a		;6919
	dec hl			;691a
	ld a,(hl)		;691b
	add a,b			;691c
	ld (hl),a		;691d
	ret			;691e
	ld d,e			;691f
	daa			;6920
	ld de,05f05h		;6921
	ld d,d			;6924
	add a,c			;6925
	ld l,b			;6926
	jp z,l6157h		;6927
	djnz $+56		;692a
	nop			;692c
	dec hl			;692d
	ld (bc),a		;692e
	ret			;692f
	dec hl			;6930
	push hl			;6931
l6932h:
	ld c,0cdh		;6932
	ld h,l			;6934
	ld h,c			;6935
	pop hl			;6936
	bit 2,c			;6937
	jp nz,l6201h		;6939
	jp z,0d221h		;693c
	ld h,c			;693f
	and 064h		;6940
	inc bc			;6942
	and 000h		;6943
	nop			;6945
	ret nz			;6946
	ld hl,l4326h		;6947
	ld c,(hl)		;694a
	ld d,008h		;694b
	ld l,h			;694d
	ld b,0cdh		;694e
	cp e			;6950
	jr l69b4h		;6951
	ld hl,00a36h		;6953
	add a,b			;6956
	dec (hl)		;6957
	ld b,008h		;6958
	ld a,(bc)		;695a
	ld h,(hl)		;695b
	ld a,(bc)		;695c
	jp po,0e376h		;695d
	ld a,(bc)		;6960
	jr nz,l69dah		;6961
	dec a			;6963
	and l			;6964
	ld (hl),006h		;6965
	sub 0ebh		;6967
	ld e,d			;6969
	ld (bc),a		;696a
	ex de,hl		;696b
	out (01bh),a		;696c
	ex de,hl		;696e
	ld e,c			;696f
	nop			;6970
	ret			;6971
	ld a,c			;6972
l6973h:
	and d			;6973
	jp z,l61c5h		;6974
l6977h:
	rr d			;6977
	ld (bc),a		;6979
	djnz l6973h		;697a
	ret			;697c
	pop af			;697d
	ld a,(hl)		;697e
	or d			;697f
	sub l			;6980
	ld l,(hl)		;6981
	inc bc			;6982
	or d			;6983
	and e			;6984
	adc a,a			;6985
	adc a,(hl)		;6986
	inc h			;6987
	and 08eh		;6988
	ld a,b			;698a
	ld bc,02321h		;698b
	ld a,e			;698e
	call 00145h		;698f
	ld a,(hl)		;6992
	add a,b			;6993
	ld b,053h		;6994
	ld c,098h		;6996
	defb 0edh ;next byte illegal after ed	;6998
	inc hl			;6999
	or e			;699a
	ei			;699b
	sbc a,e			;699c
	rst 0			;699d
	jp pe,01cb4h		;699e
l69a1h:
	ld h,d			;69a1
	ccf			;69a2
	ld a,(09f65h)		;69a3
	ld hl,(080d1h)		;69a6
	dec b			;69a9
	dec a			;69aa
	jp z,06217h		;69ab
	dec a			;69ae
	ret nz			;69af
	djnz l6a30h		;69b0
	xor 01eh		;69b2
l69b4h:
	ld c,c			;69b4
	ld a,(hl)		;69b5
	and 0e1h		;69b6
	add a,e			;69b8
	inc b			;69b9
	ld bc,002ffh		;69ba
	rst 38h			;69bd
	inc bc			;69be
	add hl,de		;69bf
	nop			;69c0
	cp b			;69c1
	call c,0d9e4h		;69c2
	djnz l6977h		;69c5
	pop hl			;69c7
	inc bc			;69c8
	cp 007h			;69c9
	adc a,l			;69cb
	cp 01ah			;69cc
	cp h			;69ce
	ld bc,0e5bch		;69cf
	nop			;69d2
	cp 001h			;69d3
	inc hl			;69d5
	nop			;69d6
	ld bc,001fdh		;69d7
l69dah:
	ld bc,0fe97h		;69da
	ld bc,02418h		;69dd
	inc bc			;69e0
	in a,(030h)		;69e1
	ld (hl),03fh		;69e3
	sbc a,e			;69e5
	ld b,03bh		;69e6
	nop			;69e8
	rst 38h			;69e9
	inc b			;69ea
	cp 004h			;69eb
l69edh:
	defb 0fdh,003h,0b2h ;illegal sequence	;69ed
	jr $+5			;69f0
	ld e,05bh		;69f2
	ld bc,03a32h		;69f4
	ld (bc),a		;69f7
	adc a,d			;69f8
	defb 0fdh,001h,03dh ;illegal sequence	;69f9
	inc e			;69fc
	nop			;69fd
	call m,00101h		;69fe
	ld (l4302h),a		;6a01
	inc bc			;6a04
	and e			;6a05
	ld e,0cdh		;6a06
	sub a			;6a08
	ld a,(hl)		;6a09
	sub a			;6a0a
	adc a,c			;6a0b
	ld (hl),a		;6a0c
	call c,02b80h		;6a0d
	jp nc,l62c4h		;6a10
	inc e			;6a13
	add hl,de		;6a14
	inc d			;6a15
	ld (hl),006h		;6a16
	xor a			;6a18
	djnz l69edh		;6a19
	ld b,b			;6a1b
	dec hl			;6a1c
	ld de,l6221h		;6a1d
	call 02979h		;6a20
	call p,05512h		;6a23
	jp c,012f8h		;6a26
	inc a			;6a29
l6a2ah:
	ret c			;6a2a
	ret nc			;6a2b
	dec hl			;6a2c
	jp nz,0db17h		;6a2d
l6a30h:
	ld h,d			;6a30
	ld a,(hl)		;6a31
	sbc a,c			;6a32
	nop			;6a33
	cp 08bh			;6a34
	jp nz,l62dah		;6a36
	ld a,073h		;6a39
	ld b,c			;6a3b
	ld (hl),a		;6a3c
	ld hl,l5fedh		;6a3d
	and 007h		;6a40
	cp a			;6a42
	ld d,a			;6a43
	rst 20h			;6a44
	add a,b			;6a45
	cp (hl)			;6a46
	ld b,0ffh		;6a47
	jp c,055edh		;6a49
	ld h,d			;6a4c
	sub a			;6a4d
	xor l			;6a4e
	ld a,(0ab2bh)		;6a4f
	add a,019h		;6a52
	jr z,l6a56h		;6a54
l6a56h:
	call p,0ff89h		;6a56
	ld h,d			;6a59
	sbc a,h			;6a5a
l6a5bh:
	ld c,c			;6a5b
	rrca			;6a5c
	ld b,(hl)		;6a5d
	sbc a,e			;6a5e
	ld h,l			;6a5f
	inc de			;6a60
	ld a,000h		;6a61
	rrca			;6a63
	ld (hl),a		;6a64
	jp nz,l6311h		;6a65
	inc hl			;6a68
	dec (hl)		;6a69
	jp nz,l7e19h		;6a6a
	add a,c			;6a6d
	rst 10h			;6a6e
	ld a,b			;6a6f
	cp c			;6a70
	cp e			;6a71
	ld h,e			;6a72
	dec d			;6a73
	ld h,l			;6a74
	sub a			;6a75
	dec b			;6a76
	ld (de),a		;6a77
	ret nz			;6a78
	inc (hl)		;6a79
	out (0b5h),a		;6a7a
	cp d			;6a7c
	ld d,d			;6a7d
	ld (hl),h		;6a7e
	cpl			;6a7f
	inc hl			;6a80
	xor a			;6a81
	ld b,a			;6a82
l6a83h:
	ld d,a			;6a83
	add a,001h		;6a84
	ld bc,l5ed2h		;6a86
	ld h,e			;6a89
	ex af,af'		;6a8a
	jp 00802h		;6a8b
	or a			;6a8e
	inc bc			;6a8f
	ex af,af'		;6a90
	ld l,(hl)		;6a91
	inc b			;6a92
	ex af,af'		;6a93
	jp c,00805h		;6a94
	ld a,(hl)		;6a97
	jr z,l6acch		;6a98
	ret z			;6a9a
	cp d			;6a9b
	add a,h			;6a9c
	inc b			;6a9d
	rst 0			;6a9e
	jp 0c223h		;6a9f
	jp po,0b2c9h		;6aa2
	ld h,b			;6aa5
	dec d			;6aa6
	ld h,h			;6aa7
	ld h,h			;6aa8
	ld h,e			;6aa9
	ld d,(hl)		;6aaa
	inc h			;6aab
	or e			;6aac
	dec hl			;6aad
	rst 38h			;6aae
	cp e			;6aaf
	xor b			;6ab0
	rrca			;6ab1
	ld (hl),h		;6ab2
	ld l,e			;6ab3
	rst 0			;6ab4
	rrca			;6ab5
	ld (bc),a		;6ab6
	rrca			;6ab7
	adc a,c			;6ab8
	ld d,b			;6ab9
	ld (hl),e		;6aba
	ret po			;6abb
	ld b,a			;6abc
	jp pe,0f859h		;6abd
	ld a,b			;6ac0
	rrca			;6ac1
	inc bc			;6ac2
	adc a,e			;6ac3
	jr z,l6ac6h		;6ac4
l6ac6h:
	ld a,(bc)		;6ac6
	ex af,af'		;6ac7
	rrca			;6ac8
	call nz,0936dh		;6ac9
l6acch:
	ld c,b			;6acc
	ld hl,(00ac8h)		;6acd
	pop af			;6ad0
	rrca			;6ad1
	ld hl,(00064h)		;6ad2
	in a,(0bch)		;6ad5
	ld (bc),a		;6ad7
	rrca			;6ad8
	adc a,a			;6ad9
	inc b			;6ada
	dec c			;6adb
	rrca			;6adc
	cpl			;6add
	nop			;6ade
	rst 38h			;6adf
	ret m			;6ae0
	jp (hl)			;6ae1
	dec e			;6ae2
	nop			;6ae3
	nop			;6ae4
	nop			;6ae5
	ld hl,0f3e9h		;6ae6
	ld (hl),00fh		;6ae9
	inc hl			;6aeb
	ld (hl),000h		;6aec
	ret nz			;6aee
	ld (bc),a		;6aef
	call 005cfh		;6af0
	call 08300h		;6af3
	ld b,c			;6af6
l6af7h:
	ld a,(0ffe7h)		;6af7
	and 0dfh		;6afa
	ld (00480h),a		;6afc
	xor a			;6aff
	di			;6b00
	out (099h),a		;6b01
	ld a,097h		;6b03
	ld h,b			;6b05
	ei			;6b06
	inc b			;6b07
	rlca			;6b08
	ld (0000ch),a		;6b09
	ld b,c			;6b0c
	ld a,01fh		;6b0d
	ld (l40fbh),a		;6b0f
	ld a,004h		;6b12
	ex af,af'		;6b14
	ld (0c029h),a		;6b15
	ld a,024h		;6b18
	rrca			;6b1a
	dec b			;6b1b
	or b			;6b1c
	add hl,bc		;6b1d
	inc b			;6b1e
	call 000a5h		;6b1f
	dec b			;6b22
	ld hl,l410dh		;6b23
	call 00103h		;6b26
	ld hl,01c70h		;6b29
	dec b			;6b2c
	dec hl			;6b2d
	pop de			;6b2e
	dec b			;6b2f
	call 004efh		;6b30
	ld b,c			;6b33
	add a,(hl)		;6b34
	or 002h			;6b35
	scf			;6b37
	ld (00388h),hl		;6b38
	call 0134fh		;6b3b
	nop			;6b3e
	sbc a,b			;6b3f
	ld b,b			;6b40
	ld a,(040bch)		;6b41
	or a			;6b44
	jp z,06761h		;6b45
	ld b,b			;6b48
	ld e,h			;6b49
	inc hl			;6b4a
	ld c,c			;6b4b
	jp 0a538h		;6b4c
	ex af,af'		;6b4f
	ld b,0e9h		;6b50
	ld (bc),a		;6b52
	ld a,009h		;6b53
	ld h,033h		;6b55
	adc a,h			;6b57
	inc bc			;6b58
	rlca			;6b59
	ld d,e			;6b5a
	add a,a			;6b5b
	inc bc			;6b5c
	di			;6b5d
	ld e,h			;6b5e
	add a,b			;6b5f
	ei			;6b60
	halt			;6b61
	jp 08868h		;6b62
	add a,(hl)		;6b65
	cp l			;6b66
	ld b,b			;6b67
	ex af,af'		;6b68
	dec a			;6b69
	jp z,l42e2h		;6b6a
	inc bc			;6b6d
	ld a,e			;6b6e
	ld b,l			;6b6f
	adc a,b			;6b70
	inc bc			;6b71
	or b			;6b72
	ld c,d			;6b73
	inc bc			;6b74
	rst 28h			;6b75
l6b76h:
	ld c,l			;6b76
	adc a,b			;6b77
	inc bc			;6b78
	ld c,a			;6b79
	ld d,e			;6b7a
	inc bc			;6b7b
	ld a,(bc)		;6b7c
	ld d,(hl)		;6b7d
	adc a,b			;6b7e
	inc bc			;6b7f
	sub (hl)		;6b80
	ld e,b			;6b81
	inc bc			;6b82
	ret nz			;6b83
	ld e,d			;6b84
	nop			;6b85
	ret			;6b86
	nop			;6b87
	ld bc,0d5c5h		;6b88
	push hl			;6b8b
	exx			;6b8c
	ex af,af'		;6b8d
	ld h,c			;6b8e
	push af			;6b8f
	dec b			;6b90
	call 0390ch		;6b91
	inc d			;6b94
	call m,07c40h		;6b95
	ld (bc),a		;6b98
	inc de			;6b99
	nop			;6b9a
	inc bc			;6b9b
	ld a,(0c39ah)		;6b9c
	and 010h		;6b9f
	jp z,088e0h		;6ba1
	xor (hl)		;6ba4
	ld bc,l6832h		;6ba5
	cp h			;6ba8
	inc b			;6ba9
	ld d,(hl)		;6baa
	pop bc			;6bab
	pop hl			;6bac
	ld b,0d1h		;6bad
	pop bc			;6baf
	pop af			;6bb0
	ex af,af'		;6bb1
	exx			;6bb2
	dec b			;6bb3
	ld de,03ac9h		;6bb4
	push bc			;6bb7
	ld b,(hl)		;6bb8
	rst 10h			;6bb9
	and e			;6bba
	add a,d			;6bbb
	rst 10h			;6bbc
	inc h			;6bbd
	ld a,03ah		;6bbe
	rst 10h			;6bc0
	ld b,c			;6bc1
	add a,008h		;6bc2
l6bc4h:
	and 00fh		;6bc4
	djnz l6b76h		;6bc6
	sub d			;6bc8
	djnz l6c04h		;6bc9
	nop			;6bcb
	ld (001d4h),hl		;6bcc
	ld e,b			;6bcf
	ld (bc),a		;6bd0
	nop			;6bd1
	inc bc			;6bd2
	ld h,l			;6bd3
	ret nz			;6bd4
	dec bc			;6bd5
	ld a,(bc)		;6bd6
	nop			;6bd7
	ld h,002h		;6bd8
	dec b			;6bda
	sub 006h		;6bdb
	ld a,(01ed0h)		;6bdd
	sub 014h		;6be0
	ld (bc),a		;6be2
	dec e			;6be3
	inc b			;6be4
	ld hl,l4140h		;6be5
l6be8h:
	jp 05ecbh		;6be8
	inc d			;6beb
	ld c,h			;6bec
	ld bc,00014h		;6bed
	di			;6bf0
	ld hl,00038h		;6bf1
	ld de,04180h		;6bf4
	ld bc,00300h		;6bf7
	nop			;6bfa
	ldir			;6bfb
	ld hl,l4176h		;6bfd
	ld (03904h),hl		;6c00
sub_6c03h:
	nop			;6c03
l6c04h:
	ld a,0c3h		;6c04
sub_6c06h:
	ld (0fb12h),a		;6c06
	inc h			;6c09
	ret			;6c0a
	ld hl,01114h		;6c0b
	rlca			;6c0e
	di			;6c0f
	jp po,00d18h		;6c10
	nop			;6c13
	push af			;6c14
	in a,(099h)		;6c15
	rlca			;6c17
	call c,sub_40beh	;6c18
	pop af			;6c1b
	ld l,b			;6c1c
	ei			;6c1d
	ld (hl),e		;6c1e
	ld a,(0f3e0h)		;6c1f
	inc d			;6c22
	and 0bfh		;6c23
	ld (08704h),a		;6c25
	ld l,d			;6c28
	add a,c			;6c29
	add a,a			;6c2a
	scf			;6c2b
	djnz $+17		;6c2c
	or 042h			;6c2e
	djnz l6c69h		;6c30
	nop			;6c32
	nop			;6c33
	rst 20h			;6c34
	nop			;6c35
	ld a,(0c145h)		;6c36
	or a			;6c39
	ret nz			;6c3a
	ld a,(09160h)		;6c3b
	cp l			;6c3e
	ld (l4a03h),a		;6c3f
	rlca			;6c42
	ld h,c			;6c43
	ld c,e			;6c44
	ld b,000h		;6c45
l6c47h:
	ld hl,l4262h		;6c47
	ld de,04292h		;6c4a
	ld b,030h		;6c4d
	nop			;6c4f
l6c50h:
	call sub_4235h		;6c50
	inc hl			;6c53
	inc de			;6c54
	djnz l6c50h		;6c55
	ld hl,09248h		;6c57
	ld c,0c2h		;6c5a
	ld c,010h		;6c5c
	ld a,(hl)		;6c5e
	ld h,b			;6c5f
	add a,a			;6c60
	nop			;6c61
	inc hl			;6c62
	inc hl			;6c63
	ld c,(hl)		;6c64
	djnz l6be8h		;6c65
	dec hl			;6c67
	ld c,(hl)		;6c68
l6c69h:
	dec b			;6c69
	ld (de),a		;6c6a
	inc de			;6c6b
	ld a,c			;6c6c
	ld b,l			;6c6d
	ld (de),a		;6c6e
	dec de			;6c6f
	call pe,01821h		;6c70
	sbc a,e			;6c73
	jr c,l6cb0h		;6c74
	ld hl,(0c398h)		;6c76
	ld a,003h		;6c79
	rst 28h			;6c7b
	ld h,(hl)		;6c7c
	ld a,(bc)		;6c7d
	dec b			;6c7e
	ld c,d			;6c7f
	push bc			;6c80
	ld b,(hl)		;6c81
sub_6c82h:
	ld d,d			;6c82
	ld b,050h		;6c83
	dec (hl)		;6c85
	nop			;6c86
	xor a			;6c87
l6c88h:
	inc hl			;6c88
	djnz l6c88h		;6c89
	ret			;6c8b
	ld a,(de)		;6c8c
	cp (hl)			;6c8d
	rrca			;6c8e
	ret z			;6c8f
	inc a			;6c90
	ld (de),a		;6c91
	ret			;6c92
	ld h,b			;6c93
	ld l,b			;6c94
	dec de			;6c95
	ld a,(hl)		;6c96
	dec a			;6c97
	ld (bc),a		;6c98
	cp 0ffh			;6c99
	jr nz,l6c9eh		;6c9b
	xor a			;6c9d
l6c9eh:
	ld (hl),a		;6c9e
	ld (0f50eh),hl		;6c9f
	call 041f7h		;6ca2
	jr c,l6cabh		;6ca5
	ret			;6ca7
	ld a,(bc)		;6ca8
	ld a,(bc)		;6ca9
	xor l			;6caa
l6cabh:
	ld a,(hl)		;6cab
	ld (bc),a		;6cac
	rlca			;6cad
	nop			;6cae
	ld a,a			;6caf
l6cb0h:
	nop			;6cb0
	nop			;6cb1
	inc (hl)		;6cb2
	xor a			;6cb3
	ld d,b			;6cb4
	ld hl,0be80h		;6cb5
	ld bc,0e6cah		;6cb8
	ld b,d			;6cbb
	ld (hl),a		;6cbc
	ld a,(0448fh)		;6cbd
l6cc0h:
	or (hl)			;6cc0
	ld b,c			;6cc1
	dec de			;6cc2
	ld b,e			;6cc3
	inc bc			;6cc4
	ld sp,0034dh		;6cc5
	ld e,(hl)		;6cc8
	inc bc			;6cc9
	adc a,h			;6cca
	adc a,l			;6ccb
	inc bc			;6ccc
	ld h,e			;6ccd
	sbc a,(hl)		;6cce
	inc bc			;6ccf
	jp z,01803h		;6cd0
	jp pe,01903h		;6cd3
	add a,01fh		;6cd6
	ld hl,(03003h)		;6cd8
	ld h,c			;6cdb
	inc bc			;6cdc
	ld (hl),d		;6cdd
	ld b,h			;6cde
	nop			;6cdf
	ret			;6ce0
	ld a,05ah		;6ce1
	ld hl,044ffh		;6ce3
	call 02330h		;6ce6
	call nz,0fbafh		;6ce9
	inc hl			;6cec
	call z,02180h		;6ced
	sbc a,a			;6cf0
	ld b,h			;6cf1
	ld de,0c690h		;6cf2
	ld bc,09c30h		;6cf5
	jp nz,0a8aah		;6cf8
	jp p,03231h		;6cfb
	ret m			;6cfe
	djnz l6d3fh		;6cff
	ld (bc),a		;6d01
l6d02h:
	ld (l558ah),a		;6d02
	ld hl,026cfh		;6d05
	or b			;6d08
	ld b,d			;6d09
	jp 0d294h		;6d0a
	and l			;6d0d
	push de			;6d0e
	or a			;6d0f
	ld c,c			;6d10
	add a,l			;6d11
	inc a			;6d12
	ld (04803h),a		;6d13
	or (hl)			;6d16
	inc bc			;6d17
	call nz,0c918h		;6d18
	rst 28h			;6d1b
	and b			;6d1c
sub_6d1dh:
	dec sp			;6d1d
	ld b,d			;6d1e
	ld a,(08665h)		;6d1f
	ld (de),a		;6d22
	inc bc			;6d23
	ld (de),a		;6d24
	jr nc,l6d2bh		;6d25
	ld (de),a		;6d27
	call sub_613ah		;6d28
l6d2bh:
	ld b,c			;6d2b
	ld d,a			;6d2c
	inc c			;6d2d
	ld b,l			;6d2e
	ld d,a			;6d2f
	add a,c			;6d30
	ld a,06ah		;6d31
	ld hl,00719h		;6d33
	cp (hl)			;6d36
	ld e,a			;6d37
	dec c			;6d38
	ret			;6d39
	ccf			;6d3a
	ld h,l			;6d3b
	add a,a			;6d3c
	inc l			;6d3d
	inc bc			;6d3e
l6d3fh:
	and 069h		;6d3f
	ccf			;6d41
	jp po,0ca88h		;6d42
	ld (de),a		;6d45
	inc bc			;6d46
	ld (de),a		;6d47
	ld (hl),e		;6d48
	ld b,03fh		;6d49
	cpl			;6d4b
	pop hl			;6d4c
	sub l			;6d4d
	add hl,sp		;6d4e
	add a,h			;6d4f
	inc e			;6d50
	ld a,(bc)		;6d51
	ld hl,l4490h		;6d52
	adc a,c			;6d55
	call z,0003ch		;6d56
	ld bc,0029ah		;6d59
	ld hl,l43e8h		;6d5c
	ld a,(08689h)		;6d5f
	cpl			;6d62
	call z,002deh		;6d63
	ld b,0a9h		;6d66
	ld (03603h),a		;6d68
	rlca			;6d6b
	ld c,c			;6d6c
	and a			;6d6d
	ld (hl),a		;6d6e
	rlca			;6d6f
	ld c,e			;6d70
	inc l			;6d71
	adc a,d			;6d72
	inc d			;6d73
	and h			;6d74
	inc bc			;6d75
	inc d			;6d76
	ex af,af'		;6d77
	adc a,e			;6d78
	ld a,b			;6d79
	inc hl			;6d7a
	ld hl,(0888bh)		;6d7b
	rst 8			;6d7e
	jp pe,03d8bh		;6d7f
	ld e,c			;6d82
	adc a,e			;6d83
	inc l			;6d84
	inc bc			;6d85
	ld c,b			;6d86
	inc l			;6d87
	add hl,bc		;6d88
	adc a,e			;6d89
	pop af			;6d8a
	ld h,l			;6d8b
	adc a,h			;6d8c
	ld (de),a		;6d8d
	inc bc			;6d8e
	sub l			;6d8f
	ld c,e			;6d90
	ccf			;6d91
	in a,(040h)		;6d92
	ccf			;6d94
	add a,c			;6d95
	ld h,h			;6d96
	ld hl,00753h		;6d97
	ret nz			;6d9a
	ld l,(hl)		;6d9b
	ld hl,08f69h		;6d9c
	out (085h),a		;6d9f
	adc a,l			;6da1
	inc (hl)		;6da2
	sub h			;6da3
	inc bc			;6da4
	inc (hl)		;6da5
	dec bc			;6da6
	pop af			;6da7
	ld b,a			;6da8
	ld h,l			;6da9
	adc a,(hl)		;6daa
	ld (de),a		;6dab
	inc bc			;6dac
	ld (de),a		;6dad
	ld c,c			;6dae
	cp a			;6daf
	ret pe			;6db0
	ld (hl),b		;6db1
	ret			;6db2
	and b			;6db3
	ld (0b428h),a		;6db4
	ld (08ba8h),a		;6db7
	dec b			;6dba
	ret z			;6dbb
	ld h,h			;6dbc
	rst 28h			;6dbd
	ld h,b			;6dbe
	ld d,b			;6dbf
	nop			;6dc0
	dec b			;6dc1
l6dc2h:
	inc a			;6dc2
	nop			;6dc3
	ld e,h			;6dc4
	nop			;6dc5
	ld d,(hl)		;6dc6
	di			;6dc7
	or l			;6dc8
	ex (sp),hl		;6dc9
	ld l,b			;6dca
	ld b,0a4h		;6dcb
	and h			;6dcd
	ld d,(hl)		;6dce
	nop			;6dcf
	dec b			;6dd0
	cp e			;6dd1
	ld b,b			;6dd2
	ld a,(bc)		;6dd3
	inc b			;6dd4
	inc b			;6dd5
	inc bc			;6dd6
	ld b,004h		;6dd7
	ld d,(hl)		;6dd9
	ld (bc),a		;6dda
	nop			;6ddb
sub_6ddch:
	ld a,(bc)		;6ddc
	ld b,00ah		;6ddd
	dec b			;6ddf
	inc bc			;6de0
	ld (bc),a		;6de1
	cp h			;6de2
	ld a,l			;6de3
	ret po			;6de4
	ld d,e			;6de5
	ld d,h			;6de6
	ld b,c			;6de7
	ld d,d			;6de8
	nop			;6de9
	ld b,h			;6dea
	ld b,c			;6deb
	ld d,h			;6dec
	ld b,l			;6ded
	ld e,e			;6dee
	ld e,l			;6def
l6df0h:
	ld h,h			;6df0
	ld h,l			;6df1
	nop			;6df2
	nop			;6df3
	ld c,e			;6df4
	ld c,h			;6df5
	ld c,c			;6df6
	ld b,l			;6df7
	ld d,(hl)		;6df8
	ld b,l			;6df9
	ld d,d			;6dfa
	djnz l6e58h		;6dfb
	ld c,d			;6dfd
	ld d,l			;6dfe
	ld d,000h		;6dff
	ld b,h			;6e01
	ld b,l			;6e02
	add a,b			;6e03
	inc b			;6e04
	ld d,d			;6e05
	ld c,a			;6e06
	ld e,c			;6e07
	ld b,l			;6e08
	ld b,h			;6e09
	ld e,e			;6e0a
	nop			;6e0b
	ld c,l			;6e0c
	ld b,c			;6e0d
	ld c,(hl)		;6e0e
	ld b,d			;6e0f
	ld c,a			;6e10
	ld d,a			;6e11
	nop			;6e12
	ld b,c			;6e13
	ld (bc),a		;6e14
	ld e,e			;6e15
	ld d,e			;6e16
	ld d,l			;6e17
	ld c,(hl)		;6e18
	ld e,e			;6e19
	ld c,c			;6e1a
	ld (bc),a		;6e1b
	djnz l6e6dh		;6e1c
	ld d,d			;6e1e
	ld b,a			;6e1f
	ld de,04349h		;6e20
	ld e,e			;6e23
	ld c,c			;6e24
	ld b,(hl)		;6e25
	ex af,af'		;6e26
	ld c,l			;6e27
	ld b,b			;6e28
	ld d,l			;6e29
	ld b,d			;6e2a
	sub h			;6e2b
	inc d			;6e2c
	ld bc,01047h		;6e2d
	ld e,e			;6e30
	ld d,h			;6e31
	ld c,b			;6e32
	cpl			;6e33
	ld d,l			;6e34
	ld b,a			;6e35
	ld c,b			;6e36
	ld d,000h		;6e37
	ld b,(hl)		;6e39
	ld b,l			;6e3a
	inc (hl)		;6e3b
	rrca			;6e3c
	xor d			;6e3d
	ld c,a			;6e3e
	ld hl,(l5912h)		;6e3f
	jr nz,l6e89h		;6e42
	ld c,(hl)		;6e44
	ld d,d			;6e45
	ld b,a			;6e46
	ld e,c			;6e47
	nop			;6e48
	ld d,a			;6e49
	ld e,b			;6e4a
	ld c,c			;6e4b
	inc c			;6e4c
	inc a			;6e4d
	ld b,l			;6e4e
	ld h,h			;6e4f
	ld b,e			;6e50
	call nz,sub_4559h	;6e51
	ld d,e			;6e54
	ld (hl),b		;6e55
	ld c,l			;6e56
	ld d,e			;6e57
l6e58h:
	sbc a,b			;6e58
	ld (hl),h		;6e59
	ld a,a			;6e5a
	ld d,h			;6e5b
	ld b,l			;6e5c
	sbc a,b			;6e5d
	call nc,sub_4950h	;6e5e
	ret p			;6e61
	sub b			;6e62
	call z,013e7h		;6e63
	cp d			;6e66
	ld b,l			;6e67
	ret			;6e68
	rst 18h			;6e69
	and 021h		;6e6a
	add hl,hl		;6e6c
l6e6dh:
	ld c,d			;6e6d
	ld c,d			;6e6e
	rst 28h			;6e6f
	jp po,02c85h		;6e70
	call 04a02h		;6e73
	call pe,0cd32h		;6e76
	ld c,b			;6e79
	xor a			;6e7a
	dec bc			;6e7b
	adc a,l			;6e7c
	ld (bc),a		;6e7d
	add a,048h		;6e7e
	ld bc,0ddcdh		;6e80
	ld b,l			;6e83
	ld a,000h		;6e84
	ld (019d7h),a		;6e86
l6e89h:
	and d			;6e89
	call sub_4965h		;6e8a
	sub a			;6e8d
	sub e			;6e8e
	ld a,(bc)		;6e8f
	adc a,e			;6e90
	and c			;6e91
	add a,b			;6e92
	exx			;6e93
	ld c,c			;6e94
	or a			;6e95
	ret z			;6e96
	ld a,(0c2feh)		;6e97
	ld e,c			;6e9a
	ld bc,00348h		;6e9b
	ld (l476ch),hl		;6e9e
	inc bc			;6ea1
	adc a,e			;6ea2
	ld b,(hl)		;6ea3
	inc bc			;6ea4
	ld h,e			;6ea5
	ld a,l			;6ea6
	inc bc			;6ea7
	jr l6eadh		;6ea8
	ld bc,l4605h		;6eaa
l6eadh:
	ret			;6ead
	ld bc,084ffh		;6eae
	ld hl,(09ec8h)		;6eb1
	sub d			;6eb4
	ld d,d			;6eb5
	inc b			;6eb6
	inc de			;6eb7
	ld (0ad03h),a		;6eb8
	cp c			;6ebb
	sbc a,h			;6ebc
	sub d			;6ebd
	ex af,af'		;6ebe
	ld a,(l4a3fh)		;6ebf
	sub 073h		;6ec2
	ld (hl),c		;6ec4
	ld b,(hl)		;6ec5
	adc a,d			;6ec6
	adc a,(hl)		;6ec7
	rlca			;6ec8
	and b			;6ec9
	rst 30h			;6eca
	ld (hl),e		;6ecb
	ld b,(hl)		;6ecc
	dec de			;6ecd
	ld hl,l466dh		;6ece
	ex (sp),hl		;6ed1
	or c			;6ed2
	sub c			;6ed3
	adc a,b			;6ed4
	sub d			;6ed5
	sub c			;6ed6
	call po,l4d21h		;6ed7
	ld l,(hl)		;6eda
	ld b,(hl)		;6edb
	pop bc			;6edc
	and e			;6edd
	djnz $-103		;6ede
	xor d			;6ee0
	inc hl			;6ee1
	ld h,(hl)		;6ee2
	call z,000a7h		;6ee3
	jr nc,l6ee9h		;6ee6
	ld h,b			;6ee8
l6ee9h:
	nop			;6ee9
	ld (hl),b		;6eea
	nop			;6eeb
	ld h,b			;6eec
	inc bc			;6eed
	ld c,b			;6eee
	inc d			;6eef
	add a,l			;6ef0
	inc bc			;6ef1
	ld d,h			;6ef2
	ld b,d			;6ef3
	adc a,h			;6ef4
	nop			;6ef5
	ld a,(bc)		;6ef6
	ld h,d			;6ef7
	inc b			;6ef8
	ld d,d			;6ef9
	inc bc			;6efa
	jp m,l7600h		;6efb
	rlca			;6efe
	ld (hl),l		;6eff
l6f00h:
	ld b,044h		;6f00
	inc b			;6f02
	add a,b			;6f03
	dec e			;6f04
	ld (sub_5a00h),a	;6f05
l6f08h:
	ld (bc),a		;6f08
	and b			;6f09
	nop			;6f0a
l6f0bh:
	sub c			;6f0b
	in a,(036h)		;6f0c
	ld bc,00090h		;6f0e
	sub b			;6f11
	rrca			;6f12
	ld a,(l7c65h)		;6f13
	ld (hl),d		;6f16
	inc bc			;6f17
	call pe,03d5bh		;6f18
	add a,b			;6f1b
	ld a,(04603h)		;6f1c
	inc a			;6f1f
	and 0ach		;6f20
	ld a,h			;6f22
	dec b			;6f23
	pop de			;6f24
	ld (de),a		;6f25
	ld (bc),a		;6f26
	add hl,bc		;6f27
	ld (00103h),a		;6f28
	dec a			;6f2b
	ld hl,l4710h		;6f2c
	jp z,l4728h		;6f2f
	ld b,039h		;6f32
l6f34h:
	ld d,006h		;6f34
	ld (hl),d		;6f36
	inc e			;6f37
	ld b,022h		;6f38
	pop de			;6f3a
	ld b,021h		;6f3b
	jp po,08f47h		;6f3d
	add hl,de		;6f40
	jp nc,03869h		;6f41
	ld c,e			;6f44
	xor a			;6f45
	adc a,c			;6f46
	ret po			;6f47
	ld b,(hl)		;6f48
	xor a			;6f49
	ld l,008h		;6f4a
	ld (bc),a		;6f4c
	sub a			;6f4d
	call po,007c9h		;6f4e
	call m,0e000h		;6f51
	ld (de),a		;6f54
	ld c,048h		;6f55
	xor d			;6f57
	nop			;6f58
	ex af,af'		;6f59
	ld b,011h		;6f5a
	add hl,bc		;6f5c
	ld e,b			;6f5d
	sbc a,h			;6f5e
	ld c,00ch		;6f5f
	inc b			;6f61
	ld c,00ah		;6f62
	ld c,b			;6f64
	sbc a,h			;6f65
	djnz l6f6ch		;6f66
	rlca			;6f68
	nop			;6f69
	jr nc,l6f08h		;6f6a
l6f6ch:
	jr l6f82h		;6f6c
	ld a,(047e6h)		;6f6e
	add a,(hl)		;6f71
	add a,c			;6f72
	ld d,d			;6f73
	ld b,a			;6f74
	ld a,(l47e8h)		;6f75
	inc hl			;6f78
	rlca			;6f79
	ld hl,00462h		;6f7a
	ld a,(hl)		;6f7d
	ld (0045ch),a		;6f7e
	xor l			;6f81
l6f82h:
	ld e,(hl)		;6f82
	inc b			;6f83
	ld l,d			;6f84
	ld h,h			;6f85
	inc b			;6f86
	ld h,(hl)		;6f87
	dec de			;6f88
	adc a,b			;6f89
	or c			;6f8a
	cp 005h			;6f8b
	adc a,h			;6f8d
	sub a			;6f8e
	ld c,d			;6f8f
	call nc,sub_57a7h	;6f90
	inc e			;6f93
	sub c			;6f94
	sub d			;6f95
	call c,0ff19h		;6f96
	ld (bc),a		;6f99
	inc bc			;6f9a
	ld bc,000c4h		;6f9b
	sbc a,b			;6f9e
	ld (de),a		;6f9f
	ld h,h			;6fa0
	call 023b9h		;6fa1
	ld l,e			;6fa4
	ret nz			;6fa5
	inc h			;6fa6
	ld (0fe03h),a		;6fa7
	djnz l6ffch		;6faa
	jp z,004b3h		;6fac
	ld a,(bc)		;6faf
	jp z,083a7h		;6fb0
	inc b			;6fb3
	ld b,(hl)		;6fb4
	jp c,l4786h		;6fb5
	sbc a,l			;6fb8
l6fb9h:
	add a,h			;6fb9
	sbc a,b			;6fba
	call 03a68h		;6fbb
	sbc a,h			;6fbe
	ld b,a			;6fbf
	ld (bc),a		;6fc0
	add a,004h		;6fc1
	cp 086h			;6fc3
	ret nc			;6fc5
	ld (0de07h),a		;6fc6
	jp p,sub_5a00h+2	;6fc9
	nop			;6fcc
	ld a,h			;6fcd
	nop			;6fce
	or l			;6fcf
	ld b,a			;6fd0
	ld (de),a		;6fd1
	adc a,d			;6fd2
	ld l,h			;6fd3
	xor 074h		;6fd4
	inc bc			;6fd6
	sub l			;6fd7
	and a			;6fd8
	inc (hl)		;6fd9
	ld hl,l5cd3h		;6fda
	ld a,(02601h)		;6fdd
	ld b,(hl)		;6fe0
	xor 0e7h		;6fe1
	add a,(hl)		;6fe3
	inc b			;6fe4
	ld hl,l47f1h		;6fe5
	ret nz			;6fe8
	ld d,d			;6fe9
	adc a,(hl)		;6fea
	rla			;6feb
	ld sp,hl		;6fec
	ld b,a			;6fed
	call m,0082eh		;6fee
	jp pe,0cd5dh		;6ff1
	rst 30h			;6ff4
	ld a,(0b687h)		;6ff5
	ld (bc),a		;6ff8
	jp pe,08a00h		;6ff9
l6ffch:
	nop			;6ffc
	jr z,l6fffh		;6ffd
l6fffh:
	inc e			;6fff
	sbc a,076h		;7000
	sub b			;7002
	ld h,e			;7003
	ld c,01bh		;7004
	ld h,00eh		;7006
	ld c,c			;7008
	ld c,l			;7009
	adc a,l			;700a
sub_700bh:
	ld bc,09dcch		;700b
	rst 30h			;700e
	ld a,(de)		;700f
	ld c,e			;7010
	push af			;7011
	inc d			;7012
	dec b			;7013
	push af			;7014
	add a,h			;7015
	rst 38h			;7016
	ld b,l			;7017
	push af			;7018
	sub b			;7019
	inc bc			;701a
	cp 00dh			;701b
	jp nz,02225h		;701d
	ld c,b			;7020
	cp a			;7021
	inc l			;7022
	ld l,c			;7023
	djnz $+4		;7024
	jp 0482ch		;7026
	cp 00bh			;7029
	jp nz,0a404h		;702b
	jp nc,0c400h		;702e
	ld c,b			;7031
	add a,a			;7032
	ld b,a			;7033
	add a,a			;7034
	add a,b			;7035
	ld d,000h		;7036
	ld (bc),a		;7038
	ld e,a			;7039
	ld hl,04870h		;703a
	add hl,de		;703d
	ld a,(hl)		;703e
	in a,(044h)		;703f
	ld c,b			;7041
	call p,sub_6363h	;7042
	inc b			;7045
	ld e,d			;7046
	ld l,c			;7047
	inc b			;7048
	ld l,e			;7049
	xor c			;704a
	inc b			;704b
	or d			;704c
	inc h			;704d
	sbc a,d			;704e
	ld h,e			;704f
	ld h,l			;7050
	rlca			;7051
	ld b,c			;7052
	rlca			;7053
	dec b			;7054
	ld h,a			;7055
	ld c,b			;7056
	ld hl,0b221h		;7057
	jr $-53			;705a
	sub (hl)		;705c
	add a,h			;705d
	exx			;705e
	dec b			;705f
	ld bc,0188dh		;7060
	ld h,e			;7063
	ld bc,00567h		;7064
	ld (de),a		;7067
	inc l			;7068
	rlca			;7069
	ld d,a			;706a
	add a,(hl)		;706b
	pop hl			;706c
	ld hl,02620h		;706d
	and c			;7070
	sub d			;7071
	dec de			;7072
	out (0e0h),a		;7073
	add hl,hl		;7075
	dec a			;7076
	ld e,d			;7077
	dec bc			;7078
	inc c			;7079
	dec d			;707a
	ld b,0fah		;707b
	ld (00005h),a		;707d
	ei			;7080
	jp m,05a52h		;7081
	dec b			;7084
	dec b			;7085
	dec de			;7086
	jp m,l5904h		;7087
	ld h,d			;708a
	inc c			;708b
	inc b			;708c
	ld (l4080h),hl		;708d
	ld l,a			;7090
	add hl,bc		;7091
	rla			;7092
	ei			;7093
	rrca			;7094
	nop			;7095
	ld sp,01d90h		;7096
	ld a,(bc)		;7099
	or 026h			;709a
	jr nc,$-109		;709c
	dec c			;709e
	ld c,006h		;709f
	ret pe			;70a1
	inc l			;70a2
	dec b			;70a3
	inc (hl)		;70a4
l70a5h:
	in a,(031h)		;70a5
	dec b			;70a7
	adc a,036h		;70a8
	ret pe			;70aa
l70abh:
	dec b			;70ab
	sub h			;70ac
	add hl,bc		;70ad
l70aeh:
	ld de,0b504h		;70ae
	ld b,h			;70b1
	rst 18h			;70b2
	sub c			;70b3
	sbc a,h			;70b4
	ld (bc),a		;70b5
	or a			;70b6
	ld hl,l4943h		;70b7
	call z,05196h		;70ba
	push bc			;70bd
	add hl,bc		;70be
	adc a,l			;70bf
	ld d,(hl)		;70c0
	add hl,bc		;70c1
	inc l			;70c2
	call 08319h		;70c3
	inc h			;70c6
	pop hl			;70c7
	ld c,b			;70c8
	xor l			;70c9
	ld a,(04952h)		;70ca
	sub a			;70cd
	ld de,0c277h		;70ce
	push af			;70d1
	and h			;70d2
	adc a,e			;70d3
	dec hl			;70d4
	jp (hl)			;70d5
	ex af,af'		;70d6
	ld e,h			;70d7
	ld c,c			;70d8
	jp po,003aeh		;70d9
	jp pe,012b1h		;70dc
	ret nz			;70df
	djnz l70a5h		;70e0
	ld e,d			;70e2
	djnz $+34		;70e3
	inc bc			;70e5
	cp 0bch			;70e6
	ret c			;70e8
	ld a,(l5e5dh)		;70e9
	add a,h			;70ec
	adc a,035h		;70ed
	add hl,bc		;70ef
	and c			;70f0
	inc h			;70f1
	ex de,hl		;70f2
	ld h,l			;70f3
	ld b,h			;70f4
	scf			;70f5
	jr c,l7137h		;70f6
	scf			;70f8
	ld e,d			;70f9
	dec l			;70fa
	inc l			;70fb
l70fch:
	ld h,049h		;70fc
	rst 0			;70fe
sub_70ffh:
	ld h,049h		;70ff
	scf			;7101
	sbc a,e			;7102
	ld b,a			;7103
	djnz l7126h		;7104
	inc bc			;7106
	ret			;7107
	ld (de),a		;7108
	ld (de),a		;7109
	jr nz,l7156h		;710a
	jr nz,$-15		;710c
	adc a,c			;710e
	ld hl,(l6f00h)		;710f
	rst 28h			;7112
	ld l,b			;7113
	ret nc			;7114
	ld h,d			;7115
	djnz l717ah		;7116
	dec c			;7118
	dec c			;7119
	ld a,(bc)		;711a
	jp nz,0a202h		;711b
	add hl,bc		;711e
	nop			;711f
	adc a,h			;7120
	nop			;7121
	ld c,0bdh		;7122
	ret c			;7124
	ld (de),a		;7125
l7126h:
	ld a,(082d8h)		;7126
	dec l			;7129
	and 00fh		;712a
	ld (05dd8h),a		;712c
	rla			;712f
	ex af,af'		;7130
	jp z,09287h		;7131
	ld b,b			;7134
	ld h,c			;7135
	ret po			;7136
l7137h:
	ld (l4a35h),a		;7137
	ld hl,0db06h		;713a
	ld c,c			;713d
	ld b,014h		;713e
	ld de,041c8h		;7140
l7143h:
	inc (hl)		;7143
	add hl,de		;7144
	djnz l7143h		;7145
	ex de,hl		;7147
l7148h:
	jp 0110eh		;7148
	inc l			;714b
sub_714ch:
	add a,c			;714c
	ld h,c			;714d
	sub 027h		;714e
	rra			;7150
	ld (l4c05h),a		;7151
	adc a,e			;7154
	dec a			;7155
l7156h:
	ld bc,0fe4ah		;7156
	ld e,d			;7159
l715ah:
	ld a,088h		;715a
	ld b,007h		;715c
	and d			;715e
	ld b,e			;715f
	ld c,c			;7160
	ex (sp),hl		;7161
	ld b,l			;7162
	ld b,013h		;7163
	rrca			;7165
	ld a,(bc)		;7166
	ld a,b			;7167
	ld (06f92h),a		;7168
	pop de			;716b
	or 08ch			;716c
	add a,d			;716e
l716fh:
	dec sp			;716f
	ld c,d			;7170
	xor l			;7171
	sub l			;7172
	push de			;7173
	or b			;7174
	ld d,054h		;7175
	ld d,h			;7177
	dec b			;7178
	inc l			;7179
l717ah:
	ret m			;717a
	sub c			;717b
	cp d			;717c
	inc h			;717d
	ccf			;717e
	jr nc,$-122		;717f
	cp d			;7181
	ld l,l			;7182
	jr nz,l715ah		;7183
	halt			;7185
	jp c,08371h		;7186
	djnz $+44		;7189
	inc a			;718b
	inc l			;718c
	dec bc			;718d
	ld e,02eh		;718e
	ld b,(hl)		;7190
	jr nc,$-100		;7191
	nop			;7193
	ld c,034h		;7194
	ld b,b			;7196
	ld (hl),02ah		;7197
	jr c,$+90		;7199
	ld c,l			;719b
	ret po			;719c
	inc a			;719d
	ld e,h			;719e
	inc sp			;719f
	or b			;71a0
	ld b,b			;71a1
	nop			;71a2
	jr c,$+68		;71a3
	ld c,c			;71a5
	ld b,h			;71a6
	dec de			;71a7
	ld b,(hl)		;71a8
	dec h			;71a9
	ld c,b			;71aa
	nop			;71ab
	ld (0074ah),a		;71ac
	ld c,h			;71af
	rra			;71b0
	ld c,(hl)		;71b1
	inc l			;71b2
	ld hl,0da46h		;71b3
	add a,a			;71b6
	ld (0d456h),hl		;71b7
	xor b			;71ba
	sub e			;71bb
	jp c,07c11h		;71bc
	ld c,d			;71bf
	cp h			;71c0
	add a,000h		;71c1
	dec d			;71c3
	ld e,a			;71c4
	inc hl			;71c5
	push de			;71c6
	call sub_4a96h		;71c7
	pop de			;71ca
	ld e,0dbh		;71cb
	sbc a,b			;71cd
	or a			;71ce
	adc a,l			;71cf
	ld c,l			;71d0
	ld d,h			;71d1
	ret po			;71d2
	inc b			;71d3
	djnz l71e4h		;71d4
	jp nz,l7238h		;71d6
	ld a,d			;71d9
	ld c,d			;71da
	ld a,(0d6c2h)		;71db
	inc de			;71de
	ld (l4a36h),hl		;71df
	cp (hl)			;71e2
	ld a,(bc)		;71e3
l71e4h:
	out (098h),a		;71e4
	djnz $-49		;71e6
	rst 20h			;71e8
	ld c,e			;71e9
	call 0efe6h		;71ea
	push bc			;71ed
	ld l,0cdh		;71ee
	xor 0aah		;71f0
	cp 01ch			;71f2
	nop			;71f4
	ld b,08bh		;71f5
	ld bc,00405h		;71f7
	nop			;71fa
	sub a			;71fb
	call p,002cbh		;71fc
	ld l,d			;71ff
	rla			;7200
	ld (bc),a		;7201
	ld a,(00401h)		;7202
	di			;7205
	out (099h),a		;7206
	ld a,08eh		;7208
	inc bc			;720a
	ld a,e			;720b
	add a,d			;720c
	ld (bc),a		;720d
	ld a,d			;720e
	or 040h			;720f
l7211h:
	ei			;7211
	dec b			;7212
	ld a,h			;7213
	ret			;7214
	dec de			;7215
	cp h			;7216
	add hl,de		;7217
	ld l,e			;7218
	or h			;7219
	inc b			;721a
	or h			;721b
	ld c,d			;721c
	add a,c			;721d
	add a,064h		;721e
	ld c,l			;7220
	jp nz,0d944h		;7221
	ld c,d			;7224
	inc bc			;7225
	ld c,04ch		;7226
	ld c,e			;7228
	inc bc			;7229
	rra			;722a
	inc bc			;722b
	ld h,e			;722c
	ld b,(hl)		;722d
	inc bc			;722e
	ld d,a			;722f
	inc bc			;7230
	jr l729dh		;7231
	inc bc			;7233
	and d			;7234
	dec sp			;7235
l7236h:
	ld c,e			;7236
	ret			;7237
l7238h:
	sbc a,h			;7238
	sub e			;7239
l723ah:
	push bc			;723a
	ld c,l			;723b
	ret nz			;723c
	defb 0fdh,00dh,065h ;illegal sequence	;723d
	ld c,l			;7240
	ret nc			;7241
	ld a,b			;7242
	and c			;7243
	ld c,b			;7244
	ld hl,l4d95h		;7245
	ret nz			;7248
	cp 029h			;7249
	ld h,b			;724b
	ld d,a			;724c
	ld (06a03h),a		;724d
	add a,(hl)		;7250
	defb 0ddh,018h,0ach ;illegal sequence	;7251
	out (061h),a		;7254
	ld (de),a		;7256
	cpl			;7257
	inc bc			;7258
	ret nz			;7259
	in a,(012h)		;725a
	ld d,a			;725c
	sub e			;725d
	jp c,0e44dh		;725e
	cp (hl)			;7261
	ld b,062h		;7262
	inc h			;7264
	ld e,c			;7265
	inc bc			;7266
	res 7,(hl)		;7267
	scf			;7269
	inc c			;726a
	ld h,e			;726b
	ld (de),a		;726c
	cp a			;726d
	inc bc			;726e
	cp b			;726f
	ld (hl),e		;7270
	ld (de),a		;7271
	exx			;7272
	ld a,l			;7273
	inc hl			;7274
	adc a,b			;7275
	ret			;7276
	rlca			;7277
	call nz,017fdh		;7278
	ld d,c			;727b
	ld c,l			;727c
	pop hl			;727d
	cp e			;727e
	cp d			;727f
	or h			;7280
	adc a,h			;7281
	add a,0bfh		;7282
	and 01ah		;7284
l7286h:
	ld l,(hl)		;7286
	scf			;7287
	rst 20h			;7288
	ret po			;7289
	defb 0ddh,04bh,0cdh ;illegal sequence	;728a
	ld b,c			;728d
	ld d,01eh		;728e
	ld hl,(0cd4ch)		;7290
	or h			;7293
	ret c			;7294
	ld d,0aeh		;7295
	jp 0b23ah		;7297
	ld c,e			;729a
	sub 070h		;729b
l729dh:
	or e			;729d
	ld c,e			;729e
	and c			;729f
	ld e,h			;72a0
	inc bc			;72a1
	jp nz,04bc9h		;72a2
	sub (hl)		;72a5
	add hl,de		;72a6
	or b			;72a7
	cp c			;72a8
	ld (hl),c		;72a9
	ret nz			;72aa
	ld a,r			;72ab
	and 050h		;72ad
	rlca			;72af
	adc a,(hl)		;72b0
	ld d,a			;72b1
	ld d,l			;72b2
	ld c,l			;72b3
	sbc a,e			;72b4
	inc bc			;72b5
	ld c,(hl)		;72b6
	sbc a,a			;72b7
	ld a,(bc)		;72b8
	ld a,(l4bdbh)		;72b9
	rst 8			;72bc
	add hl,hl		;72bd
	ld d,c			;72be
	dec b			;72bf
	ret nz			;72c0
	ld e,l			;72c1
	ret z			;72c2
	ld a,(l4bdch)		;72c3
	and l			;72c6
	rst 18h			;72c7
	xor a			;72c8
	dec b			;72c9
	push bc			;72ca
	ld b,(hl)		;72cb
	dec b			;72cc
	ld c,h			;72cd
	add hl,de		;72ce
	add hl,hl		;72cf
	add hl,sp		;72d0
	add a,(hl)		;72d1
	add hl,hl		;72d2
	ld (hl),c		;72d3
	ld bc,00701h		;72d4
	cp h			;72d7
	ld b,066h		;72d8
	or b			;72da
	and 0b3h		;72db
	call p,02803h		;72dd
	push hl			;72e0
	and a			;72e1
	ld (de),a		;72e2
	ld a,(l4c26h)		;72e3
	ret c			;72e6
	jr nc,l7286h		;72e7
	inc bc			;72e9
	ld (hl),04ch		;72ea
	xor b			;72ec
	add a,(hl)		;72ed
	jr z,l733ch		;72ee
	and d			;72f0
	ld c,b			;72f1
	sbc a,l			;72f2
	and d			;72f3
	dec b			;72f4
	ld l,h			;72f5
	add hl,hl		;72f6
	ld c,h			;72f7
	ld l,h			;72f8
	or (hl)			;72f9
	inc bc			;72fa
	sub l			;72fb
	inc c			;72fc
	add hl,bc		;72fd
	ld c,l			;72fe
	jp z,00695h		;72ff
	jr c,$-1		;7302
	ld c,h			;7304
l7305h:
	ld b,072h		;7305
	pop af			;7307
	ld b,0e5h		;7308
	push hl			;730a
	ld b,0d9h		;730b
	ld b,0b2h		;730d
	call po,0bb9ch		;730f
	ret po			;7312
	ld a,d			;7313
	sub d			;7314
	ld a,(bc)		;7315
	and a			;7316
	ld a,(bc)		;7317
	dec de			;7318
	cp 035h			;7319
	inc d			;731b
	add a,a			;731c
	dec a			;731d
	ld c,c			;731e
	xor 05fh		;731f
	ld b,(hl)		;7321
	defb 0fdh,044h ;ld b,iyh	;7322
	jp c,03221h		;7324
	call 0ca4ch		;7327
	ld c,h			;732a
	inc c			;732b
	ld a,(bc)		;732c
	jp 089cah		;732d
	ld a,(03c27h)		;7330
	ld (01303h),a		;7333
	jp nz,019adh		;7336
	ld (bc),a		;7339
	ld e,026h		;733a
l733ch:
	halt			;733c
	dec h			;733d
	ld a,(hl)		;733e
	dec b			;733f
	cp b			;7340
	ld c,h			;7341
	ld (00a25h),a		;7342
	jp (hl)			;7345
	jr l734bh		;7346
	push de			;7348
	ld l,h			;7349
	push bc			;734a
l734bh:
	ld d,a			;734b
	ld a,c			;734c
	ld (hl),a		;734d
	cpl			;734e
	exx			;734f
	cp 065h			;7350
	jr nz,l7355h		;7352
	sbc a,b			;7354
l7355h:
	ret z			;7355
	djnz $-49		;7356
	ret pe			;7358
	ld b,b			;7359
	inc bc			;735a
	ld a,(00240h)		;735b
	sbc a,c			;735e
	jr z,l7371h		;735f
	ld bc,0130fh		;7361
	ld d,b			;7364
	inc b			;7365
	ld (hl),c		;7366
	ld d,b			;7367
	dec c			;7368
	add hl,bc		;7369
	ld a,(0a730h)		;736a
	add hl,sp		;736d
	dec b			;736e
	ld h,c			;736f
	dec c			;7370
l7371h:
	cp d			;7371
	ld hl,00cb5h		;7372
	ld b,072h		;7375
	dec b			;7377
	ld h,b			;7378
	dec c			;7379
	inc b			;737a
	ld b,c			;737b
	ld bc,00151h		;737c
	jr z,$-29		;737f
	xor h			;7381
	jp c,0154ah		;7382
	pop hl			;7385
	ld b,c			;7386
	ld h,04dh		;7387
	ld (l6806h),a		;7389
	ld l,l			;738c
	rra			;738d
	ld hl,08949h		;738e
	pop hl			;7391
	ld b,c			;7392
	ld de,0211ch		;7393
	ld c,e			;7396
	ld b,0b4h		;7397
	ld c,l			;7399
	ld b,021h		;739a
	ld c,a			;739c
	call nz,0027bh		;739d
l73a0h:
	xor a			;73a0
	ret c			;73a1
	ld a,e			;73a2
	inc sp			;73a3
	ld (hl),h		;73a4
	inc bc			;73a5
	pop hl			;73a6
	ld d,l			;73a7
	ex af,af'		;73a8
	dec b			;73a9
	ld h,(hl)		;73aa
	ld b,05ch		;73ab
	ld l,(hl)		;73ad
	ld (bc),a		;73ae
	ld h,a			;73af
	add a,d			;73b0
	ld h,l			;73b1
	nop			;73b2
	inc h			;73b3
	nop			;73b4
	dec a			;73b5
	sub l			;73b6
	call nc,032a0h		;73b7
	and e			;73ba
	ld bc,l6a83h		;73bb
	or 08bh			;73be
	ld (bc),a		;73c0
	dec b			;73c1
	ld (bc),a		;73c2
	adc a,b			;73c3
	inc (hl)		;73c4
	add a,l			;73c5
sub_73c6h:
	ld e,b			;73c6
	inc bc			;73c7
	sbc a,b			;73c8
	ld bc,00125h		;73c9
	dec b			;73cc
	ld (bc),a		;73cd
	rlca			;73ce
	dec bc			;73cf
	adc a,(hl)		;73d0
	ld h,l			;73d1
	or h			;73d2
	xor (hl)		;73d3
	inc e			;73d4
	ld h,d			;73d5
	nop			;73d6
	inc bc			;73d7
	nop			;73d8
	or h			;73d9
	sub a			;73da
	ld c,a			;73db
	ld b,000h		;73dc
	nop			;73de
	nop			;73df
l73e0h:
	pop de			;73e0
	nop			;73e1
	ld d,e			;73e2
	ld b,l			;73e3
	ld d,(hl)		;73e4
	ld b,l			;73e5
	ld d,d			;73e6
	ld b,c			;73e7
	ld c,h			;73e8
	ld e,e			;73e9
	nop			;73ea
	ld c,l			;73eb
	ld c,a			;73ec
	ld c,(hl)		;73ed
	ld d,h			;73ee
	ld c,b			;73ef
	ld d,e			;73f0
	ld e,e			;73f1
	ld c,h			;73f2
	jr nz,$+67		;73f3
	ld d,h			;73f5
	ld c,000h		;73f6
	ld c,e			;73f8
	ld c,h			;73f9
	ld c,c			;73fa
	ret nc			;73fb
	ld d,05bh		;73fc
	ld d,d			;73fe
	ld b,l			;73ff
	ld d,h			;7400
	ld (de),a		;7401
	ld d,l			;7402
	ld d,d			;7403
	ld c,(hl)		;7404
	dec d			;7405
	ld c,b			;7406
	xor e			;7407
	ld (00045h),hl		;7408
	cp (hl)			;740b
	exx			;740c
	inc l			;740d
	di			;740e
	ld c,l			;740f
	cp (hl)			;7410
	ld (l529eh),hl		;7411
	call c,0042dh		;7414
	ld c,(hl)		;7417
	xor (hl)		;7418
	dec d			;7419
	ld c,(hl)		;741a
	sbc a,c			;741b
	jp pe,l57efh		;741c
	ld d,d			;741f
	sbc a,c			;7420
	add a,d			;7421
	rrca			;7422
	and d			;7423
	call c,02c20h		;7424
	ld hl,05217h		;7427
	call 0d7ech		;742a
	ld (hl),b		;742d
	ld h,005h		;742e
	dec (hl)		;7430
	pop hl			;7431
	dec b			;7432
	ld b,h			;7433
	dec b			;7434
	jp 00553h		;7435
	add a,a			;7438
	ld h,d			;7439
	dec b			;743a
	ld c,071h		;743b
	dec b			;743d
	ld a,(de)		;743e
	add a,b			;743f
	dec b			;7440
	call 09f4eh		;7441
	ld (00e8fh),a		;7444
	dec bc			;7447
	rra			;7448
	ld d,e			;7449
	in a,(070h)		;744a
	nop			;744c
	call sub_5109h		;744d
	call 050bdh		;7450
	call 08a51h		;7453
	ld (bc),a		;7456
	inc d			;7457
	ld c,a			;7458
	call p,02016h		;7459
	xor d			;745c
	sub l			;745d
	cp b			;745e
	add a,h			;745f
	ld a,(0857bh)		;7460
	ld h,b			;7463
	ld a,h			;7464
	ld c,(hl)		;7465
	ld (0068ah),a		;7466
	cp 009h			;7469
	call nz,0dc96h		;746b
	or (hl)			;746e
	add a,l			;746f
	ld a,d			;7470
	ld c,(hl)		;7471
	jp nc,l7a0bh		;7472
	dec c			;7475
	and b			;7476
	and b			;7477
	and 04eh		;7478
	jp z,0a6e2h		;747a
	rlca			;747d
	rst 20h			;747e
	ld (hl),c		;747f
	jp (hl)			;7480
	rlca			;7481
	in a,(0e3h)		;7482
	call pe,08407h		;7484
	ld b,0a3h		;7487
	ld e,h			;7489
	rlca			;748a
	ld c,009h		;748b
	ld hl,007f2h		;748d
	rlca			;7490
	ld a,(bc)		;7491
	ld hl,007f5h		;7492
	inc bc			;7495
	dec bc			;7496
	ld hl,007f8h		;7497
	add a,c			;749a
	dec c			;749b
	ld hl,007fbh		;749c
	ret nz			;749f
	ld c,0c0h		;74a0
	xor a			;74a2
	pop bc			;74a3
	ld b,(hl)		;74a4
	ret			;74a5
	ld (hl),001h		;74a6
	rst 18h			;74a8
	ld e,b			;74a9
	out (000h),a		;74aa
	ld (hl),d		;74ac
	nop			;74ad
	ld e,(ix+000h)		;74ae
	rst 20h			;74b1
	ld a,h			;74b2
	ld bc,008c2h		;74b3
	jp po,0dc54h		;74b6
	ld h,086h		;74b9
	ld de,0d780h		;74bb
	ld c,d			;74be
	nop			;74bf
	sbc a,091h		;74c0
	nop			;74c2
	jp c,00588h		;74c3
	call pe,00e40h		;74c6
	ld l,(hl)		;74c9
	nop			;74ca
	ld b,b			;74cb
	pop hl			;74cc
	ex af,af'		;74cd
	jp (hl)			;74ce
	ld b,(hl)		;74cf
	nop			;74d0
	call nc,00b8ch		;74d1
	inc b			;74d4
	ld a,(l4ee5h)		;74d5
	rst 18h			;74d8
	ld b,d			;74d9
	inc de			;74da
	ld c,a			;74db
	jp po,005b6h		;74dc
	ex af,af'		;74df
l74e0h:
	ret nz			;74e0
	call sub_4e82h		;74e1
	adc a,c			;74e4
	pop bc			;74e5
l74e6h:
	call sub_4f81h		;74e6
	add a,a			;74e9
	add hl,de		;74ea
	dec b			;74eb
	xor (hl)		;74ec
	call pe,01c05h		;74ed
	rst 28h			;74f0
	dec b			;74f1
	jr c,l74e6h		;74f2
	dec b			;74f4
	or (hl)			;74f5
	ld a,a			;74f6
	dec b			;74f7
	ld a,l			;74f8
	in a,(005h)		;74f9
	ld a,e			;74fb
	dec b			;74fc
	ld e,h			;74fd
	cp 005h			;74fe
	ld a,(de)		;7500
	ld bc,0054fh		;7501
	inc b			;7504
	pop hl			;7505
	dec b			;7506
	rlca			;7507
	dec b			;7508
	jp 0050ah		;7509
	add a,a			;750c
	dec c			;750d
	dec b			;750e
	dec c			;750f
l7510h:
	djnz l7517h		;7510
	inc h			;7512
	ret			;7513
	ld a,(hl)		;7514
	ld l,d			;7515
	inc (hl)		;7516
l7517h:
	rst 38h			;7517
	ld b,h			;7518
	sbc a,d			;7519
	ld c,a			;751a
	inc bc			;751b
	xor e			;751c
	add a,003h		;751d
	ret nz			;751f
	inc bc			;7520
	ld sp,003d5h		;7521
	jp pe,l7a18h		;7524
	call nc,00918h		;7527
	ld d,b			;752a
	inc b			;752b
	dec bc			;752c
	ld e,h			;752d
	ld d,b			;752e
	xor d			;752f
	ld d,b			;7530
	push af			;7531
	ret			;7532
	sub (hl)		;7533
	dec bc			;7534
	sub 0a4h		;7535
	inc e			;7537
	jr $+82			;7538
	ld b,027h		;753a
	ld a,(de)		;753c
	inc d			;753d
	inc d			;753e
	inc d			;753f
	ld (hl),d		;7540
	push bc			;7541
	ld (hl),027h		;7542
	inc d			;7544
	ld b,04fh		;7545
	add hl,hl		;7547
	inc d			;7548
	inc hl			;7549
	inc d			;754a
	rla			;754b
	ld (hl),014h		;754c
	add hl,hl		;754e
	jr c,l7565h		;754f
	ld (0e214h),a		;7551
	ld b,l			;7554
	inc e			;7555
	ld d,b			;7556
	ld (01741h),a		;7557
	and l			;755a
	ld b,e			;755b
	add hl,bc		;755c
	ld b,a			;755d
	ld a,(de)		;755e
	inc c			;755f
	ld l,b			;7560
	ld a,(de)		;7561
	scf			;7562
	nop			;7563
	or h			;7564
l7565h:
	ld (de),a		;7565
	ld (bc),a		;7566
	call nc,09000h		;7567
	ld d,h			;756a
	sub c			;756b
	inc b			;756c
	defb 0fdh,0a3h,098h ;illegal sequence	;756d
	call m,002b8h		;7570
	ld h,b			;7573
	ret pe			;7574
	ld c,00bh		;7575
	nop			;7577
	ld a,(bc)		;7578
	exx			;7579
	ld c,01dh		;757a
	add a,00eh		;757c
	jp 0ce0fh		;757e
	or e			;7581
	ld c,007h		;7582
	ld d,e			;7584
	nop			;7585
	xor h			;7586
l7587h:
	ld c,09fh		;7587
	in a,(0e3h)		;7589
	ld bc,0f7dfh		;758b
	ld c,096h		;758e
	sub b			;7590
	and (hl)		;7591
	inc b			;7592
	ld d,b			;7593
	ld d,b			;7594
	pop de			;7595
	ld b,(hl)		;7596
	ld hl,l578dh		;7597
	sbc a,d			;759a
	ld hl,0059ch		;759b
	ld a,(09124h)		;759e
	ld d,b			;75a1
	ccf			;75a2
	ld (03a04h),a		;75a3
	ld l,h			;75a6
	and b			;75a7
	rlca			;75a8
	inc b			;75a9
	cp 026h			;75aa
	sub 0d8h		;75ac
	sub a			;75ae
	xor a			;75af
	inc h			;75b0
	ex de,hl		;75b1
	inc h			;75b2
	and 0cch		;75b3
	inc b			;75b5
	call m,0abe5h		;75b6
	add a,a			;75b9
	inc e			;75ba
	ld d,(hl)		;75bb
	res 6,c			;75bc
	ld (0025ah),a		;75be
	add a,a			;75c1
	jr $-84			;75c2
	ei			;75c4
	adc a,b			;75c5
	ld c,096h		;75c6
	ld (hl),e		;75c8
	ld c,048h		;75c9
	ld bc,00ebbh		;75cb
	ret z			;75ce
	nop			;75cf
	ld (00064h),a		;75d0
	inc bc			;75d3
	sbc a,l			;75d4
	xor 0dah		;75d5
	rst 8			;75d7
	call nc,00242h		;75d8
	inc a			;75db
	ld l,e			;75dc
	ld d,a			;75dd
	cp h			;75de
	ld l,e			;75df
	and (hl)		;75e0
	inc de			;75e1
	cp d			;75e2
	ld d,b			;75e3
	xor b			;75e4
	or h			;75e5
	dec b			;75e6
	add hl,bc		;75e7
	cp e			;75e8
	ld c,b			;75e9
	ld d,b			;75ea
	cp c			;75eb
	rst 10h			;75ec
	adc a,d			;75ed
	rst 10h			;75ee
	ld b,0a1h		;75ef
	call nc,00afah		;75f1
	dec b			;75f4
	cp 0b2h			;75f5
	jp z,00cf1h		;75f7
	ex af,af'		;75fa
	ld a,(bc)		;75fb
	ld a,(l5102h)		;75fc
	rst 8			;75ff
l7600h:
	dec h			;7600
	inc bc			;7601
	ld hl,l6309h		;7602
	cp c			;7605
	ld (hl),d		;7606
	dec (hl)		;7607
	ld h,c			;7608
	ld a,a			;7609
	ret			;760a
	jp c,l79a8h		;760b
	or d			;760e
	inc d			;760f
	call 09d57h		;7610
	inc hl			;7613
	ld b,b			;7614
	cp b			;7615
	ld b,b			;7616
	ld a,(l51fdh)		;7617
	ld (l5208h),a		;761a
	inc b			;761d
	ld (l520ch),a		;761e
	ld a,(008ffh)		;7621
	ld a,(bc)		;7624
	sub l			;7625
	ex af,af'		;7626
	ld c,0bfh		;7627
	ld d,l			;7629
	ld c,0c8h		;762a
	xor b			;762c
	inc l			;762d
	add hl,sp		;762e
	ld sp,hl		;762f
	ld d,c			;7630
	adc a,(hl)		;7631
	sbc a,l			;7632
	rlca			;7633
	ld a,(l512bh)		;7634
	add a,0edh		;7637
	dec b			;7639
	jp po,l51a8h		;763a
	adc a,h			;763d
	res 6,l			;763e
	inc b			;7640
	rst 0			;7641
	ld b,b			;7642
	ld e,b			;7643
	ld d,c			;7644
	add hl,de		;7645
	ld b,(hl)		;7646
	inc hl			;7647
	ld c,(hl)		;7648
	jp nz,0813eh		;7649
	ld (0c203h),a		;764c
	inc a			;764f
	add a,b			;7650
	ld (03503h),a		;7651
	ret			;7654
	cp 0d1h			;7655
	xor a			;7657
	ld bc,00191h		;7658
	inc de			;765b
	or 07bh			;765c
	add hl,bc		;765e
	cp l			;765f
	ld bc,09f09h		;7660
	ld bc,07309h		;7663
	ld bc,0f009h		;7666
	inc (hl)		;7669
	nop			;766a
	rst 38h			;766b
	ld b,e			;766c
l766dh:
	inc c			;766d
	nop			;766e
	or d			;766f
	ld (bc),a		;7670
	ld a,b			;7671
	and l			;7672
	add a,008h		;7673
	ld bc,0c64fh		;7675
	sub a			;7678
	ld c,024h		;7679
	sub b			;767b
	in a,(09ch)		;767c
	and e			;767e
	jp nc,0071dh		;767f
	dec h			;7682
	nop			;7683
	sub l			;7684
	in a,(0f4h)		;7685
	nop			;7687
	add a,h			;7688
	ld c,0abh		;7689
	nop			;768b
	dec d			;768c
	call po,001e8h		;768d
	add a,b			;7690
	ld b,(hl)		;7691
	sbc a,a			;7692
	cpl			;7693
	ld (bc),a		;7694
	di			;7695
	ld b,d			;7696
	dec a			;7697
	ld l,d			;7698
	nop			;7699
	inc a			;769a
	adc a,c			;769b
	ld (hl),a		;769c
	dec e			;769d
	ld (hl),h		;769e
	ld c,01dh		;769f
	nop			;76a1
	ld (hl),d		;76a2
	ld (0ba1dh),hl		;76a3
	inc (hl)		;76a6
	ld (bc),a		;76a7
	ld a,(hl)		;76a8
	rst 8			;76a9
	call nc,sub_68ebh	;76aa
	ld a,(de)		;76ad
	ld e,c			;76ae
	or e			;76af
	nop			;76b0
	and d			;76b1
	daa			;76b2
	ld (bc),a		;76b3
	ld l,(hl)		;76b4
	or d			;76b5
	inc de			;76b6
	ld c,l			;76b7
	res 3,b			;76b8
	inc l			;76ba
	sub a			;76bb
	and h			;76bc
	call c,0ba66h		;76bd
	ld e,c			;76c0
	call m,01ccdh		;76c1
	dec e			;76c4
	sub e			;76c5
	jr z,l766dh		;76c6
	add a,l			;76c8
	sub b			;76c9
	ld c,034h		;76ca
	nop			;76cc
	ld sp,l68edh		;76cd
	nop			;76d0
	adc a,(hl)		;76d1
	sbc a,00ah		;76d2
	ret nc			;76d4
	jp nz,0b300h		;76d5
	ld d,d			;76d8
	ld b,014h		;76d9
	ld d,(hl)		;76db
l76dch:
	inc hl			;76dc
	ld c,b			;76dd
	ld e,(hl)		;76de
l76dfh:
	ret po			;76df
	inc hl			;76e0
	nop			;76e1
	call 04a7ah		;76e2
	ld a,c			;76e5
	out (098h),a		;76e6
	djnz l76dch		;76e8
	nop			;76ea
	ret			;76eb
	inc d			;76ec
	jr c,$+24		;76ed
	rla			;76ef
	jr z,$+39		;76f0
	dec de			;76f2
	nop			;76f3
	inc hl			;76f4
	inc (hl)		;76f5
	rra			;76f6
	ld e,a			;76f7
	dec h			;76f8
	ld (0f012h),hl		;76f9
	nop			;76fc
	dec h			;76fd
	ld c,0d6h		;76fe
	jr z,l7724h		;7700
	ld d,02ch		;7702
	ld hl,(02500h)		;7704
	jr nc,l7756h		;7707
	ld h,b			;7709
	inc (hl)		;770a
	add hl,bc		;770b
	ret p			;770c
	jr c,$-126		;770d
	dec e			;770f
	inc a			;7710
	ld d,h			;7711
	dec h			;7712
	ld b,b			;7713
	ld e,d			;7714
	inc (hl)		;7715
l7716h:
	ld bc,02044h		;7716
	dec h			;7719
	ld c,b			;771a
	ld h,h			;771b
	ret p			;771c
	ld c,h			;771d
	dec e			;771e
	nop			;771f
	ld d,b			;7720
	ld d,h			;7721
	ld d,055h		;7722
l7724h:
	ld sp,l5725h		;7724
	ld b,06bh		;7727
	ld h,b			;7729
	ld e,d			;772a
	inc de			;772b
	ret p			;772c
	rst 28h			;772d
	xor e			;772e
	ld (bc),a		;772f
	defb 0fdh,049h,003h ;illegal sequence	;7730
	dec b			;7733
	pop hl			;7734
	ld b,c			;7735
	ld b,005h		;7736
	ret m			;7738
	and (hl)		;7739
	ei			;773a
	and (hl)		;773b
	sub b			;773c
	and 083h		;773d
	jp pe,00404h		;773f
	ld l,a			;7742
	ld b,089h		;7743
	inc sp			;7745
	ld a,(bc)		;7746
	rlca			;7747
	adc a,b			;7748
	ld l,d			;7749
	dec de			;774a
	ld (00a9bh),hl		;774b
	inc b			;774e
	adc a,c			;774f
	ld sp,hl		;7750
	jp m,0c9dfh		;7751
	ld d,e			;7754
	ld d,e			;7755
l7756h:
	rst 18h			;7756
	and c			;7757
	xor c			;7758
	ld d,l			;7759
	adc a,e			;775a
	ld d,c			;775b
	ld h,h			;775c
	ld d,e			;775d
	inc bc			;775e
	ld a,(de)		;775f
	and b			;7760
	ld d,h			;7761
	rst 18h			;7762
	cp l			;7763
	and 000h		;7764
	ld hl,055aah		;7766
	call 0c430h		;7769
	ld a,01bh		;776c
	inc e			;776e
	ld hl,007c7h		;776f
	rst 28h			;7772
	xor (hl)		;7773
	ld h,0dah		;7774
	ld d,l			;7776
	rst 28h			;7777
	cp b			;7778
	ld d,c			;7779
	pop de			;777a
	rst 28h			;777b
l777ch:
	xor l			;777c
	and h			;777d
	xor c			;777e
	inc hl			;777f
	ld e,c			;7780
	ld (bc),a		;7781
	rst 20h			;7782
	ld a,(bc)		;7783
	ld d,e			;7784
	ld hl,l5455h		;7785
	add a,d			;7788
	call nc,00501h		;7789
	ld c,01ah		;778c
	ld d,h			;778e
	ld hl,00b73h		;778f
	ld hl,0826bh		;7792
	dec b			;7795
	ld a,0c4h		;7796
	ret po			;7798
	ei			;7799
	ld b,b			;779a
	ld hl,032cfh		;779b
	ld d,e			;779e
	ld de,03d97h		;779f
	ld bc,0d018h		;77a2
	ld c,l			;77a5
	and l			;77a6
	ld b,c			;77a7
	call po,0e366h		;77a8
	ld c,e			;77ab
l77ach:
	cp l			;77ac
	add hl,de		;77ad
	ld a,0e8h		;77ae
l77b0h:
	inc de			;77b0
	cpl			;77b1
	ld a,h			;77b2
	sbc a,c			;77b3
	inc c			;77b4
	ld l,b			;77b5
	ld bc,0e81eh		;77b6
	add a,c			;77b9
	ld hl,00068h		;77ba
	jr l7819h		;77bd
	cp b			;77bf
	ld d,e			;77c0
	ld c,d			;77c1
	ld l,e			;77c2
	ex af,af'		;77c3
l77c4h:
	inc l			;77c4
	ld d,h			;77c5
	ret p			;77c6
	add a,(hl)		;77c7
	exx			;77c8
	ld hl,03e28h		;77c9
	sub c			;77cc
	exx			;77cd
	ld a,(0c60ch)		;77ce
	jr nc,l77e4h		;77d1
	add a,b			;77d3
	djnz l77c4h		;77d4
	ret			;77d6
	ld hl,0e137h		;77d7
	ld d,(hl)		;77da
	ld b,(hl)		;77db
	dec b			;77dc
	or (hl)			;77dd
	sbc a,h			;77de
	add hl,bc		;77df
	ld b,a			;77e0
	ld (02668h),a		;77e1
l77e4h:
	inc bc			;77e4
	ld h,039h		;77e5
	ld h,h			;77e7
	ld h,04ch		;77e8
	ld l,b			;77ea
	ld h,049h		;77eb
	ld de,026c5h		;77ed
	add a,b			;77f0
	sub b			;77f1
	inc hl			;77f2
	ld a,(bc)		;77f3
l77f4h:
	sub 0b1h		;77f4
	jr nc,l777ch		;77f6
	ld a,c			;77f8
	or (hl)			;77f9
	jr c,l77ach		;77fa
	ld a,b			;77fc
	nop			;77fd
	or l			;77fe
	sub (hl)		;77ff
	add hl,bc		;7800
	nop			;7801
	adc a,h			;7802
	nop			;7803
	add hl,hl		;7804
	push hl			;7805
	adc a,00eh		;7806
	rlca			;7808
	ld h,b			;7809
	ld (bc),a		;780a
	cp a			;780b
	ld c,08dh		;780c
	sub a			;780e
	inc c			;780f
	ld l,d			;7810
	inc l			;7811
	cp h			;7812
	ld c,081h		;7813
	ld l,b			;7815
	inc l			;7816
	ld c,0a7h		;7817
l7819h:
	nop			;7819
	add a,a			;781a
	inc bc			;781b
	ld (bc),a		;781c
	ld b,a			;781d
	nop			;781e
	xor b			;781f
	nop			;7820
	ld c,c			;7821
	sub b			;7822
	or 00eh			;7823
	sub l			;7825
	and a			;7826
	add hl,bc		;7827
	jp m,0a400h		;7828
	nop			;782b
	xor 014h		;782c
	inc d			;782e
	xor (hl)		;782f
	or e			;7830
	jp p,00aedh		;7831
	rst 0			;7834
	djnz $+121		;7835
	ld c,0b5h		;7837
	ld hl,(08ce0h)		;7839
	inc h			;783c
	ret nc			;783d
	ld (bc),a		;783e
	xor a			;783f
	sub c			;7840
	ret z			;7841
	exx			;7842
	ret			;7843
	djnz l77f4h		;7844
	ld d,h			;7846
	xor 0bah		;7847
	ret nz			;7849
	inc b			;784a
	cp b			;784b
	add a,c			;784c
	xor l			;784d
	ld d,h			;784e
	jr nz,$+63		;784f
	ld (0ca03h),a		;7851
	jp z,0fe54h		;7854
	jr c,l7881h		;7857
	ret nc			;7859
	or (hl)			;785a
	inc h			;785b
	jp 0b63bh		;785c
	ld (hl),e		;785f
	ld b,0cdh		;7860
	ld b,0dfh		;7862
	ld d,h			;7864
	cp 000h			;7865
	call 04f19h		;7867
	ld a,0ffh		;786a
	call po,0bbd0h		;786c
	or d			;786f
	defb 0fdh,00dh,00fh ;illegal sequence	;7870
	ld (hl),03ah		;7873
	sbc a,035h		;7875
	inc b			;7877
	inc h			;7878
	jp nz,0c5fch		;7879
	inc hl			;787c
	dec e			;787d
	ld d,l			;787e
	xor 046h		;787f
l7881h:
	inc l			;7881
	ld d,l			;7882
	jp 03805h		;7883
	ld c,00bh		;7886
	ld (hl),b		;7888
	dec sp			;7889
	dec b			;788a
	ld c,d			;788b
	defb 0ddh,011h,077h ;illegal sequence	;788c
	adc a,b			;788f
	or d			;7890
	ld b,d			;7891
	nop			;7892
	ld h,d			;7893
	add hl,bc		;7894
	jp po,09ac4h		;7895
	ld (hl),d		;7898
	adc a,h			;7899
	push hl			;789a
	ld h,d			;789b
	ld l,00ah		;789c
	dec b			;789e
	rst 0			;789f
	ld c,d			;78a0
	sbc a,h			;78a1
	sub 077h		;78a2
	ld c,04ch		;78a4
	dec e			;78a6
	ld c,c			;78a7
	dec e			;78a8
	ex (sp),hl		;78a9
	ld c,098h		;78aa
	ld hl,0024ch		;78ac
	cpl			;78af
	inc l			;78b0
	adc a,b			;78b1
	inc bc			;78b2
	sub 0e1h		;78b3
	sub b			;78b5
	ld a,(bc)		;78b6
	inc de			;78b7
	ld a,(00300h)		;78b8
	ld d,d			;78bb
	ld c,026h		;78bc
	sub c			;78be
	pop bc			;78bf
	ld c,021h		;78c0
	ld l,l			;78c2
	ld d,l			;78c3
	cp c			;78c4
	ld e,a			;78c5
	ld (hl),d		;78c6
	dec h			;78c7
	and l			;78c8
	xor d			;78c9
	cp c			;78ca
	jp p,03b00h		;78cb
	ld h,b			;78ce
	dec d			;78cf
	ld (hl),h		;78d0
	ld d,01ch		;78d1
	ld a,(bc)		;78d3
	dec h			;78d4
	nop			;78d5
	jr l7923h		;78d6
	inc (hl)		;78d8
	jr nz,l7911h		;78d9
	dec h			;78db
	inc hl			;78dc
	ld c,h			;78dd
	nop			;78de
	inc (hl)		;78df
	ld h,020h		;78e0
	sub 029h		;78e2
	dec d			;78e4
	ld d,02dh		;78e5
	nop			;78e7
	dec a			;78e8
	dec h			;78e9
	ld sp,l6064h		;78ea
	dec (hl)		;78ed
	dec l			;78ee
	dec h			;78ef
	ld bc,l4101h		;78f0
	ld e,e			;78f3
l78f4h:
	ld b,h			;78f4
	ld c,c			;78f5
	ld d,e			;78f6
	ld d,h			;78f7
	call sub_53f3h		;78f8
	jp z,l53e0h		;78fb
	ld c,c			;78fe
	ld b,a			;78ff
	ld c,(hl)		;7900
	call m,0a7eeh		;7901
	ld c,009h		;7904
l7906h:
	ld b,l			;7906
	pop af			;7907
	jp z,00067h		;7908
	sub h			;790b
	daa			;790c
	ld d,h			;790d
	rst 20h			;790e
	ret po			;790f
l7910h:
	ld b,c			;7910
l7911h:
	ld b,e			;7911
	ld c,b			;7912
	cp (hl)			;7913
	dec e			;7914
	rst 20h			;7915
	jp nc,sub_4f16h		;7916
	ld c,(hl)		;7919
	jp z,0e936h		;791a
	xor d			;791d
	defb 0edh ;next byte illegal after ed	;791e
	ret c			;791f
	ld (bc),a		;7920
	ld (bc),a		;7921
	inc b			;7922
l7923h:
	adc a,d			;7923
	sub h			;7924
l7925h:
	ret p			;7925
	cp c			;7926
	ld b,l			;7927
	ld (bc),a		;7928
	nop			;7929
	ld b,006h		;792a
	rlca			;792c
	nop			;792d
	ld h,c			;792e
	add a,c			;792f
	jp pe,0035ah		;7930
	sub l			;7933
	nop			;7934
	inc b			;7935
	nop			;7936
	rst 20h			;7937
	ld h,(hl)		;7938
	dec bc			;7939
	ld d,a			;793a
	cp d			;793b
	dec h			;793c
	ld c,056h		;793d
	cp d			;793f
	ld b,l			;7940
	defb 0ddh,057h,0b6h ;illegal sequence	;7941
	ld b,h			;7944
	rra			;7945
	ld d,(hl)		;7946
	inc bc			;7947
	xor l			;7948
	ld d,a			;7949
	ld d,(hl)		;794a
	cp d			;794b
	ld bc,0210ch		;794c
	ld l,058h		;794f
	cp d			;7951
	ld e,e			;7952
	jp nz,l4c53h		;7953
	rlca			;7956
	adc a,d			;7957
	sbc a,(hl)		;7958
	xor d			;7959
	jr nz,$-63		;795a
	pop af			;795c
	dec hl			;795d
	ld h,(hl)		;795e
	ld e,b			;795f
	cp a			;7960
	pop bc			;7961
	inc bc			;7962
	call z,012bdh		;7963
	ld d,(hl)		;7966
	ld d,a			;7967
	ret nc			;7968
	xor (hl)		;7969
	ld h,l			;796a
	dec b			;796b
	inc e			;796c
	ld (hl),h		;796d
	dec b			;796e
	jr c,l78f4h		;796f
	dec b			;7971
	ld (hl),b		;7972
	sub d			;7973
	dec b			;7974
	and c			;7975
	pop hl			;7976
	dec b			;7977
	or b			;7978
	dec b			;7979
	jp 005bfh		;797a
	ld b,c			;797d
	call 057deh		;797e
	ld hl,00e0bh		;7981
	jp 0051ah		;7984
	add a,a			;7987
	add hl,hl		;7988
	dec b			;7989
	ld c,0ceh		;798a
	dec b			;798c
	inc e			;798d
	jr c,l7995h		;798e
	ld d,a			;7990
	ld (ix-074h),h		;7991
	and c			;7994
l7995h:
	in a,(056h)		;7995
	call 097b9h		;7997
	ld (de),a		;799a
	cp e			;799b
	call pe,0b842h		;799c
	ld d,(hl)		;799f
	out (072h),a		;79a0
	inc b			;79a2
	and b			;79a3
	adc a,c			;79a4
	or a			;79a5
	ld d,(hl)		;79a6
	and d			;79a7
l79a8h:
	adc a,c			;79a8
	inc bc			;79a9
	dec b			;79aa
	jp z,l56d4h		;79ab
	cp 03ch			;79ae
	adc a,c			;79b0
	inc (hl)		;79b1
	rlca			;79b2
	and l			;79b3
	adc a,c			;79b4
	add a,b			;79b5
	ld hl,l5726h		;79b6
	cp 0aah			;79b9
	ld a,0bbh		;79bb
	ld (bc),a		;79bd
	jp z,056e7h		;79be
	ld a,0aah		;79c1
	ld (0f30bh),a		;79c3
	ld e,l			;79c6
	dec de			;79c7
	ld a,(056dah)		;79c8
	ret			;79cb
	ld b,l			;79cc
	xor (hl)		;79cd
	dec b			;79ce
	ld (bc),a		;79cf
	ld hl,05747h		;79d0
	jp z,01a08h		;79d3
	and a			;79d6
	ld h,(hl)		;79d7
	call m,0b31ch		;79d8
	sub b			;79db
	out (028h),a		;79dc
	sub b			;79de
	sbc a,b			;79df
	ld (hl),a		;79e0
	sbc a,b			;79e1
	adc a,h			;79e2
	ld l,(hl)		;79e3
	ld a,d			;79e4
	adc a,h			;79e5
	push af			;79e6
	ld (hl),a		;79e7
	ld a,d			;79e8
	adc a,h			;79e9
	jr nz,$+61		;79ea
	nop			;79ec
	or b			;79ed
	ld (bc),a		;79ee
	xor d			;79ef
	dec (hl)		;79f0
	nop			;79f1
	ld l,a			;79f2
	cp (hl)			;79f3
	or (hl)			;79f4
	ld c,e			;79f5
	call 00ea7h		;79f6
	sub (hl)		;79f9
	cp (hl)			;79fa
	cp a			;79fb
	add a,h			;79fc
	ld a,(de)		;79fd
	jp p,0be57h		;79fe
	call m,sub_4b60h	;7a01
	ld c,h			;7a04
	ld c,c			;7a05
	nop			;7a06
	ld b,l			;7a07
	ld d,(hl)		;7a08
	ld b,l			;7a09
	ld d,d			;7a0a
l7a0bh:
	ld e,e			;7a0b
	ld b,d			;7a0c
	ld d,d			;7a0d
	ld b,c			;7a0e
	add a,b			;7a0f
	ld b,04ch		;7a10
	ld e,c			;7a12
	ld e,e			;7a13
	ld b,a			;7a14
	ld c,c			;7a15
	ld d,(hl)		;7a16
	and a			;7a17
l7a18h:
	pop af			;7a18
	jr nz,$+86		;7a19
	ld c,c			;7a1b
	ld c,l			;7a1c
	ld b,l			;7a1d
	inc bc			;7a1e
	ld e,e			;7a1f
	ld d,h			;7a20
	ld c,a			;7a21
	ld e,e			;7a22
	ld c,h			;7a23
	ld b,l			;7a24
	dec e			;7a25
	ld hl,(08c08h)		;7a26
	and c			;7a29
	dec d			;7a2a
	ld d,l			;7a2b
	ld d,d			;7a2c
	ld b,(hl)		;7a2d
	sub l			;7a2e
	ld d,c			;7a2f
	ld b,l			;7a30
	nop			;7a31
	or 0afh			;7a32
	sbc a,a			;7a34
	adc a,e			;7a35
	ld e,h			;7a36
	sub l			;7a37
	sbc a,d			;7a38
	ld e,b			;7a39
	adc a,e			;7a3a
	dec d			;7a3b
	add a,c			;7a3c
	ld e,d			;7a3d
	add a,a			;7a3e
	ld de,058abh		;7a3f
	inc bc			;7a42
	cp (hl)			;7a43
	ld e,b			;7a44
	add a,0adh		;7a45
	dec d			;7a47
	add a,d			;7a48
	ld e,d			;7a49
	add a,e			;7a4a
	call z,0c318h		;7a4b
	add hl,hl		;7a4e
	ld (hl),a		;7a4f
	ld d,e			;7a50
	sub b			;7a51
	ld b,d			;7a52
	ld a,e			;7a53
	ld e,c			;7a54
	call 01ccah		;7a55
	add a,l			;7a58
	ld b,e			;7a59
	ld a,(l58c7h+1)		;7a5a
	jp (hl)			;7a5d
	pop hl			;7a5e
	ret			;7a5f
	ld e,b			;7a60
	ret c			;7a61
	dec sp			;7a62
	dec b			;7a63
	ld hl,(0acc0h)		;7a64
	and a			;7a67
	rla			;7a68
	ret pe			;7a69
	ld a,(bc)		;7a6a
	ld h,c			;7a6b
	ld e,c			;7a6c
	sbc a,h			;7a6d
	ld (03203h),hl		;7a6e
	ld c,(hl)		;7a71
	ld (bc),a		;7a72
	dec c			;7a73
	ld d,d			;7a74
	ld e,c			;7a75
	ld hl,0125bh		;7a76
	ld a,(06a21h)		;7a79
	jr $+11			;7a7c
	cp 056h			;7a7e
	jp c,0041ah		;7a80
	ld l,d			;7a83
	or d			;7a84
	ld b,d			;7a85
	jp c,081b2h		;7a86
	jp z,l590dh		;7a89
	jp z,l5952h		;7a8c
	cp b			;7a8f
	sub b			;7a90
	or e			;7a91
	ld b,d			;7a92
	xor c			;7a93
	jp c,0c5b4h		;7a94
	ld d,c			;7a97
	or l			;7a98
	ld b,d			;7a99
	adc a,e			;7a9a
	and d			;7a9b
	ex af,af'		;7a9c
	push bc			;7a9d
	sub h			;7a9e
	djnz l7adbh		;7a9f
	ld a,(de)		;7aa1
	jr nz,l7afdh		;7aa2
	ld b,a			;7aa4
	cp a			;7aa5
	ld a,059h		;7aa6
	push de			;7aa8
	cp (hl)			;7aa9
	inc bc			;7aaa
	call nc,0cc26h		;7aab
	ld b,c			;7aae
	inc b			;7aaf
	ld (hl),b		;7ab0
	inc b			;7ab1
	jr nz,$+35		;7ab2
	inc c			;7ab4
	ld bc,0029ah		;7ab5
	ld a,00ch		;7ab8
	dec bc			;7aba
	jp 002deh		;7abb
	rra			;7abe
	inc d			;7abf
	neg			;7ac0
	ld (08104h),a		;7ac2
	ld h,b			;7ac5
	or l			;7ac6
	nop			;7ac7
	and a			;7ac8
	ld h,(hl)		;7ac9
	ld bc,0d603h		;7aca
	ld h,d			;7acd
	inc de			;7ace
	adc a,h			;7acf
	ld (hl),l		;7ad0
	ld e,(hl)		;7ad1
	xor (hl)		;7ad2
l7ad3h:
	adc a,c			;7ad3
	ld c,0e2h		;7ad4
	sbc a,b			;7ad6
	ld l,d			;7ad7
	call z,sub_5a85h	;7ad8
l7adbh:
	ld c,085h		;7adb
	dec (hl)		;7add
	inc d			;7ade
	add a,l			;7adf
	sub h			;7ae0
	ld b,(hl)		;7ae1
	or b			;7ae2
	ld b,d			;7ae3
	ld a,d			;7ae4
	ld e,c			;7ae5
	or a			;7ae6
	cp l			;7ae7
	and d			;7ae8
	ld a,c			;7ae9
	ld e,c			;7aea
	call c,08b24h		;7aeb
	sbc a,l			;7aee
	ld d,h			;7aef
	ld b,0dfh		;7af0
	ld b,e			;7af2
	ret pe			;7af3
	ld e,c			;7af4
	ld a,(l60d5h)		;7af5
	cp 01fh			;7af8
	ld b,03fh		;7afa
	nop			;7afc
l7afdh:
	ld a,001h		;7afd
	jp z,l599eh		;7aff
	ld b,01fh		;7b02
	ld a,001h		;7b04
	nop			;7b06
	push bc			;7b07
	ld (l542fh),a		;7b08
	ld (0023eh),a		;7b0b
	inc h			;7b0e
	ld c,l			;7b0f
	ld (bc),a		;7b10
	ld l,e			;7b11
	ld (bc),a		;7b12
	ld e,h			;7b13
	adc a,(hl)		;7b14
	ld (bc),a		;7b15
	ld a,d			;7b16
	ld d,h			;7b17
	sub l			;7b18
	ld (hl),b		;7b19
	dec (hl)		;7b1a
	ld a,(0813bh)		;7b1b
	jr z,l7b23h		;7b1e
	sbc a,e			;7b20
	adc a,b			;7b21
l7b22h:
	ld d,h			;7b22
l7b23h:
	inc a			;7b23
	sbc a,e			;7b24
	or h			;7b25
	add a,l			;7b26
	ld a,(bc)		;7b27
	set 0,d			;7b28
	push de			;7b2a
	ld e,c			;7b2b
	scf			;7b2c
	jr nz,l7ad3h		;7b2d
	ld c,d			;7b2f
	add a,a			;7b30
	rst 20h			;7b31
	or b			;7b32
	inc sp			;7b33
	pop bc			;7b34
	ld a,b			;7b35
	xor d			;7b36
	sub d			;7b37
	adc a,h			;7b38
	pop de			;7b39
	rst 20h			;7b3a
	ld l,h			;7b3b
	and b			;7b3c
	cpl			;7b3d
	ld e,d			;7b3e
	sub 011h		;7b3f
	ld (00485h),a		;7b41
	ld a,(l5a30h)		;7b44
	ld a,(00503h)		;7b47
	jp z,l5a0ah		;7b4a
	ld hl,0c80ch		;7b4d
	dec e			;7b50
	call po,0233ch		;7b51
	ld hl,02039h		;7b54
	ld e,d			;7b57
	sbc a,065h		;7b58
	ld a,(bc)		;7b5a
	daa			;7b5b
	ld a,(de)		;7b5c
	ld a,(bc)		;7b5d
	ld l,e			;7b5e
	sub c			;7b5f
	add a,d			;7b60
	inc d			;7b61
	or a			;7b62
	ld (0b4bah),a		;7b63
	ret nz			;7b66
	ld (hl),a		;7b67
	inc c			;7b68
	rlca			;7b69
	ld hl,l5a45h		;7b6a
	rst 10h			;7b6d
	cp 034h			;7b6e
	ld c,d			;7b70
	ld d,d			;7b71
	ld d,b			;7b72
	ld h,a			;7b73
	xor e			;7b74
	ld b,c			;7b75
	ld d,d			;7b76
	ld c,e			;7b77
	rst 0			;7b78
	ld (de),a		;7b79
	ld c,a			;7b7a
	ld b,(hl)		;7b7b
	sub h			;7b7c
	ld h,a			;7b7d
	or l			;7b7e
	jp pe,0c494h		;7b7f
	ld e,d			;7b82
	xor c			;7b83
	ld (de),a		;7b84
	ret pe			;7b85
	ld e,l			;7b86
	ret z			;7b87
	add hl,hl		;7b88
	push de			;7b89
	xor l			;7b8a
	ld a,(bc)		;7b8b
	inc c			;7b8c
	ld e,e			;7b8d
	xor c			;7b8e
	ld h,c			;7b8f
	rlca			;7b90
	call z,010eeh		;7b91
	jr $+35			;7b94
	call p,0f65ah		;7b96
	xor c			;7b99
	call nz,037c3h		;7b9a
	ld d,(hl)		;7b9d
	adc a,h			;7b9e
	add a,c			;7b9f
l7ba0h:
	rst 10h			;7ba0
	ld c,d			;7ba1
	nop			;7ba2
	defb 0ddh,09dh ;sbc a,ixl	;7ba3
	inc sp			;7ba5
	rst 20h			;7ba6
	and h			;7ba7
	push bc			;7ba8
	out (0deh),a		;7ba9
	ret c			;7bab
	ex af,af'		;7bac
	defb 0edh ;next byte illegal after ed	;7bad
	ld bc,00086h		;7bae
	ret c			;7bb1
	ld l,(hl)		;7bb2
	ld bc,l70abh		;7bb3
	call 0264ah		;7bb6
	ld (bc),a		;7bb9
	ld e,l			;7bba
	call sub_5cc8h		;7bbb
	call 00546h		;7bbe
	ld b,c			;7bc1
	inc bc			;7bc2
l7bc3h:
	dec b			;7bc3
	dec a			;7bc4
	ld e,e			;7bc5
	call 04c23h		;7bc6
	dec b			;7bc9
	ld d,d			;7bca
	ld a,(l5c02h)		;7bcb
	ret c			;7bce
	inc d			;7bcf
	and l			;7bd0
	jr z,l7ba0h		;7bd1
	and l			;7bd3
	ld (de),a		;7bd4
	ld a,(l5b22h)		;7bd5
	or a			;7bd8
	ld c,c			;7bd9
	inc bc			;7bda
	ret nz			;7bdb
	sbc a,a			;7bdc
	ld b,h			;7bdd
	cp h			;7bde
	out (0a2h),a		;7bdf
	inc a			;7be1
	add a,d			;7be2
	ld h,l			;7be3
	ld e,e			;7be4
	jp p,03c22h		;7be5
	inc d			;7be8
	dec bc			;7be9
	jp z,l5b4dh		;7bea
	ld (0cb06h),a		;7bed
sub_7bf0h:
	push bc			;7bf0
	jp 0cf31h		;7bf1
	sbc a,b			;7bf4
	ld (hl),d		;7bf5
	nop			;7bf6
	ld e,e			;7bf7
	ld a,(l5bc2h)		;7bf8
	cp 08eh			;7bfb
	ld hl,002d2h		;7bfd
	ld e,e			;7c00
	jp c,l5b6ch		;7c01
	ld hl,00ae1h		;7c04
	ld l,e			;7c07
	sub h			;7c08
	rlca			;7c09
	ret p			;7c0a
	dec de			;7c0b
	ld b,b			;7c0c
l7c0dh:
	ret			;7c0d
	inc bc			;7c0e
	rrca			;7c0f
	ld a,(05b71h)		;7c10
	xor b			;7c13
	and d			;7c14
	rrca			;7c15
	ld (00589h),a		;7c16
	jp nz,02785h		;7c19
	pop bc			;7c1c
	ld d,b			;7c1d
	adc a,c			;7c1e
	pop bc			;7c1f
	ld b,070h		;7c20
	ld (de),a		;7c22
	sub l			;7c23
	or l			;7c24
	inc l			;7c25
	ld (hl),b		;7c26
	ld e,c			;7c27
	jr c,l7bc3h		;7c28
l7c2ah:
	call 017c2h		;7c2a
	and h			;7c2d
	ld (002d6h),a		;7c2e
	push hl			;7c31
	sbc a,d			;7c32
	ld (bc),a		;7c33
	call p,0324bh		;7c34
	ld c,c			;7c37
	ret c			;7c38
	ld (bc),a		;7c39
	rst 20h			;7c3a
	ld (bc),a		;7c3b
	or 017h			;7c3c
	jp nz,002c3h		;7c3e
	ld (hl),b		;7c41
	rst 0			;7c42
	inc d			;7c43
	push bc			;7c44
	sub c			;7c45
	ld (bc),a		;7c46
	ret			;7c47
	ld (hl),e		;7c48
	and 085h		;7c49
	or c			;7c4b
	defb 0edh ;next byte illegal after ed	;7c4c
	ret m			;7c4d
	pop af			;7c4e
	rrca			;7c4f
	and l			;7c50
	or 0d8h			;7c51
	adc a,d			;7c53
	xor a			;7c54
l7c55h:
	ld (bc),a		;7c55
	dec hl			;7c56
	call c,01500h		;7c57
	ret nc			;7c5a
	inc d			;7c5b
	add hl,bc		;7c5c
	rst 20h			;7c5d
	xor d			;7c5e
	daa			;7c5f
	sub (hl)		;7c60
	cp b			;7c61
	ld c,09bh		;7c62
	inc c			;7c64
l7c65h:
	dec c			;7c65
	ld c,0b7h		;7c66
	sub e			;7c68
	or a			;7c69
	ld c,08eh		;7c6a
	inc l			;7c6c
	ld (hl),e		;7c6d
	call po,08d1dh		;7c6e
	or (hl)			;7c71
	adc a,b			;7c72
	ld e,h			;7c73
l7c74h:
	push bc			;7c74
	jp nz,05c01h		;7c75
	adc a,c			;7c78
	jr z,l7c7eh		;7c79
	jp z,00d26h		;7c7b
l7c7eh:
	ld e,h			;7c7e
	ld a,(l5bffh)		;7c7f
	ret c			;7c82
	ld c,b			;7c83
	inc b			;7c84
	ld hl,08da3h		;7c85
	dec c			;7c88
	inc hl			;7c89
	ld e,h			;7c8a
	cp d			;7c8b
	adc a,l			;7c8c
	ld e,h			;7c8d
	jp 02cfbh		;7c8e
	sub e			;7c91
	and h			;7c92
	inc hl			;7c93
	ret pe			;7c94
	ld l,a			;7c95
	ld e,h			;7c96
	sub 01ch		;7c97
	dec b			;7c99
	inc (hl)		;7c9a
	ld (hl),h		;7c9b
	dec b			;7c9c
	ld b,00fh		;7c9d
	ld c,b			;7c9f
	ld hl,011d5h		;7ca0
	sbc a,b			;7ca3
	and h			;7ca4
	ld (hl),001h		;7ca5
	ld (de),a		;7ca7
	add hl,de		;7ca8
	djnz $-3		;7ca9
	sub e			;7cab
	sub d			;7cac
	and a			;7cad
	inc l			;7cae
	di			;7caf
	or h			;7cb0
	inc b			;7cb1
	call 0050fh		;7cb2
	ei			;7cb5
	ret			;7cb6
	adc a,(hl)		;7cb7
	ld l,e			;7cb8
	rst 10h			;7cb9
	sub (hl)		;7cba
	ld h,001h		;7cbb
	jp 0964fh		;7cbd
	jp po,0d2edh		;7cc0
	adc a,l			;7cc3
	ld h,l			;7cc4
	jr nc,l7c74h		;7cc5
	jp (hl)			;7cc7
	call nz,0d248h		;7cc8
	call 09d19h		;7ccb
	ld d,(hl)		;7cce
	ld h,01dh		;7ccf
	and 0ffh		;7cd1
	ret nc			;7cd3
	push de			;7cd4
	ld d,d			;7cd5
	ld d,e			;7cd6
	inc bc			;7cd7
	inc bc			;7cd8
	ld bc,00970h		;7cd9
	add hl,hl		;7cdc
	ld c,(hl)		;7cdd
	jp p,003c3h		;7cde
	rlca			;7ce1
	add hl,bc		;7ce2
	ld h,0dfh		;7ce3
	ld h,b			;7ce5
	ld b,l			;7ce6
	adc a,a			;7ce7
	ld (bc),a		;7ce8
	ld h,d			;7ce9
	ld (hl),h		;7cea
	xor h			;7ceb
	djnz l7d1fh		;7cec
	ld (bc),a		;7cee
	rra			;7cef
	ld d,b			;7cf0
	inc b			;7cf1
	ld h,b			;7cf2
	ld b,a			;7cf3
	dec b			;7cf4
	rra			;7cf5
	ld (hl),e		;7cf6
	dec b			;7cf7
	rra			;7cf8
	rst 0			;7cf9
	sbc a,(hl)		;7cfa
	xor b			;7cfb
	ld a,(0c346h)		;7cfc
	call nz,0a9ceh		;7cff
	ld c,0cah		;7d02
	exx			;7d04
	ld e,h			;7d05
	adc a,b			;7d06
	call nz,0c6deh		;7d07
	ld b,h			;7d0a
l7d0bh:
	call nz,0d35ch		;7d0b
	sub h			;7d0e
	add a,h			;7d0f
	ld b,c			;7d10
	dec b			;7d11
	ret nz			;7d12
	call sub_5d05h		;7d13
	sub 030h		;7d16
	ld c,a			;7d18
	ld a,(08cc6h)		;7d19
	ret po			;7d1c
	add a,c			;7d1d
	inc bc			;7d1e
l7d1fh:
	jp z,l5cffh		;7d1f
	cp 00ah			;7d22
	ret nz			;7d24
	dec sp			;7d25
	ret nc			;7d26
	dec d			;7d27
	cp h			;7d28
	sub d			;7d29
	cp l			;7d2a
	ld h,b			;7d2b
	ex af,af'		;7d2c
	rst 0			;7d2d
	ld e,h			;7d2e
	ret			;7d2f
	ld d,(hl)		;7d30
	ld a,(09c03h)		;7d31
	adc a,d			;7d34
	push bc			;7d35
	jr nc,l7d0bh		;7d36
	ld b,h			;7d38
	ld e,h			;7d39
	call nc,0d151h		;7d3a
	sub c			;7d3d
	rst 10h			;7d3e
	sub e			;7d3f
l7d40h:
	out (011h),a		;7d40
	jp po,0d64eh		;7d42
	jr l7d40h		;7d45
	xor a			;7d47
	ld (de),a		;7d48
	ret			;7d49
	inc c			;7d4a
	rlca			;7d4b
	ld a,(l5d45h)		;7d4c
	ld e,l			;7d4f
	ld l,c			;7d50
	jp 02525h		;7d51
	ld e,l			;7d54
	xor d			;7d55
	dec sp			;7d56
	dec b			;7d57
	ld d,b			;7d58
	ld d,(hl)		;7d59
	ld d,e			;7d5a
	ld a,0ffh		;7d5b
	ld (l7b22h),a		;7d5d
	ld c,(hl)		;7d60
	call pe,0c873h		;7d61
	jp pe,l5281h		;7d64
	ld e,l			;7d67
	jp pe,00ecfh		;7d68
	ld a,(0ca0ah)		;7d6b
	sbc a,a			;7d6e
	ld e,l			;7d6f
	cp d			;7d70
	nop			;7d71
	ld d,a			;7d72
	add a,002h		;7d73
	cp 0a6h			;7d75
	jp nc,l7910h		;7d77
	ld e,l			;7d7a
	ld (03209h),a		;7d7b
	ld sp,0a357h		;7d7e
	ld (hl),e		;7d81
	xor e			;7d82
	ld e,h			;7d83
	adc a,a			;7d84
	rla			;7d85
	rlca			;7d86
	ld bc,0c4feh		;7d87
	ret nc			;7d8a
	dec d			;7d8b
	ld d,c			;7d8c
	adc a,a			;7d8d
	sub b			;7d8e
	ld h,l			;7d8f
	ld a,0e2h		;7d90
	ld (0fc2fh),a		;7d92
	ld c,(hl)		;7d95
	push af			;7d96
	add hl,bc		;7d97
	ld c,(iy+025h)		;7d98
	ld b,e			;7d9b
	ld l,(hl)		;7d9c
	call nz,02105h		;7d9d
	ex af,af'		;7da0
	exx			;7da1
	ld e,l			;7da2
	jp z,005b1h		;7da3
	jp z,0d55dh		;7da6
	ld d,d			;7da9
	ld b,h			;7daa
	jp pe,0324ah		;7dab
	inc bc			;7dae
	push bc			;7daf
	dec (hl)		;7db0
	ld b,l			;7db1
	ld (hl),b		;7db2
	ld a,(03a6eh)		;7db3
	rst 28h			;7db6
	sub c			;7db7
	or l			;7db8
	ld bc,0ff00h		;7db9
	rst 38h			;7dbc
	nop			;7dbd
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
l7e03h:
	rst 38h			;7e03
	rst 38h			;7e04
	rst 38h			;7e05
l7e06h:
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
l7e10h:
	rst 38h			;7e10
	rst 38h			;7e11
	rst 38h			;7e12
	rst 38h			;7e13
	rst 38h			;7e14
	rst 38h			;7e15
	rst 38h			;7e16
	rst 38h			;7e17
	rst 38h			;7e18
l7e19h:
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
l7e65h:
	rst 38h			;7e65
	rst 38h			;7e66
	rst 38h			;7e67
l7e68h:
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
sub_7e80h:
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
