; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank05.asm /tmp/smanbow2_bank_05.bin

	org 04000h

	ld (0aa04h),hl		;4000
	ld a,(hl)		;4003
	adc a,c			;4004
	ld a,a			;4005
	defb 0fdh,049h,0d6h ;illegal sequence	;4006
	ld e,c			;4009
	ld d,a			;400a
	dec sp			;400b
	nop			;400c
	rlca			;400d
	cp l			;400e
	di			;400f
	ld a,d			;4010
	rrca			;4011
	ld a,a			;4012
	dec h			;4013
	and h			;4014
	add a,b			;4015
	dec (hl)		;4016
	add a,d			;4017
	ld e,c			;4018
	rrca			;4019
	or 0cch			;401a
	adc a,b			;401c
	xor e			;401d
	ret p			;401e
	call m,0fe36h		;401f
	ld sp,l7f4ah		;4022
	push de			;4025
	ei			;4026
	ld a,h			;4027
	sbc a,a			;4028
	ld a,a			;4029
	adc a,h			;402a
	ld (bc),a		;402b
	add a,0f1h		;402c
	cp c			;402e
	rlca			;402f
	pop hl			;4030
	dec bc			;4031
	ccf			;4032
	ld a,a			;4033
	and 0a8h		;4034
	sub e			;4036
	add a,b			;4037
	rst 20h			;4038
	ld (de),a		;4039
	defb 0edh ;next byte illegal after ed	;403a
	sub e			;403b
	or 05ah			;403c
	adc a,0f9h		;403e
	inc sp			;4040
	ld (bc),a		;4041
	sub a			;4042
	ld (027feh),a		;4043
	adc a,d			;4046
	ld a,a			;4047
	inc (hl)		;4048
	add a,c			;4049
	cp a			;404a
	nop			;404b
	inc bc			;404c
	ld c,b			;404d
	ld a,a			;404e
	pop af			;404f
	ld d,e			;4050
	ld (0a9f0h),hl		;4051
	jp p,l49fdh		;4054
	defb 0fdh,0f0h,07ah ;illegal sequence	;4057
	ld (08c7fh),hl		;405a
	ld c,d			;405d
	and h			;405e
	ld (02580h),a		;405f
	add a,b			;4062
	add hl,hl		;4063
	add a,h			;4064
	adc a,l			;4065
	ret m			;4066
	push hl			;4067
l4068h:
	jr nc,l4068h		;4068
	add hl,de		;406a
	inc e			;406b
	ld l,023h		;406c
	add hl,de		;406e
	ld a,a			;406f
	inc e			;4070
	sbc a,c			;4071
	rst 38h			;4072
	sbc a,a			;4073
	nop			;4074
	dec bc			;4075
	ld c,b			;4076
	ld a,a			;4077
	pop af			;4078
	xor b			;4079
	call 0f28ch		;407a
	adc a,e			;407d
	add a,b			;407e
	rlca			;407f
	sbc a,(hl)		;4080
	nop			;4081
	dec e			;4082
	jp p,0ce7fh		;4083
	adc a,e			;4086
	jp l447eh+1		;4087
	xor d			;408a
	sbc a,c			;408b
	add a,d			;408c
	adc a,l			;408d
	ld (hl),h		;408e
	defb 0ddh,080h,0dah ;illegal sequence	;408f
	nop			;4092
	rlca			;4093
	adc a,d			;4094
	scf			;4095
	call m,09961h		;4096
	xor d			;4099
	ld b,h			;409a
	ld a,a			;409b
	res 3,c			;409c
	ld a,a			;409e
	rst 30h			;409f
	inc e			;40a0
	jr nz,l40f5h		;40a1
	ld (hl),e		;40a3
	rlca			;40a4
	adc a,c			;40a5
	adc a,h			;40a6
	daa			;40a7
	jp p,0a7ffh		;40a8
	inc bc			;40ab
	ld a,a			;40ac
	ld c,d			;40ad
	ld c,d			;40ae
	add a,c			;40af
	ld c,d			;40b0
	ret p			;40b1
	ld e,l			;40b2
	add a,l			;40b3
	exx			;40b4
	cp 05ah			;40b5
	cp 02bh			;40b7
	adc a,(hl)		;40b9
	ld c,e			;40ba
	inc hl			;40bb
	add hl,hl		;40bc
	rla			;40bd
	ld a,a			;40be
	scf			;40bf
	push hl			;40c0
	dec a			;40c1
	rst 38h			;40c2
	adc a,a			;40c3
	nop			;40c4
	add a,e			;40c5
	ld a,a			;40c6
	adc a,a			;40c7
l40c8h:
	add a,b			;40c8
	ret m			;40c9
	ld a,a			;40ca
	ld a,a			;40cb
	ld c,0ffh		;40cc
	add hl,sp		;40ce
	and 00dh		;40cf
	ld a,a			;40d1
	xor c			;40d2
	ld e,a			;40d3
	add a,c			;40d4
	dec l			;40d5
	add a,d			;40d6
	adc a,c			;40d7
	add a,b			;40d8
	rst 20h			;40d9
	adc a,h			;40da
	ld (de),a		;40db
	ei			;40dc
	ret m			;40dd
	ld b,h			;40de
	sub h			;40df
	cp 094h			;40e0
	rst 0			;40e2
	ld a,a			;40e3
	sbc a,c			;40e4
	ld a,a			;40e5
	inc (hl)		;40e6
	push af			;40e7
	pop hl			;40e8
	rlca			;40e9
	rst 18h			;40ea
l40ebh:
	ld a,a			;40eb
	ld de,0f196h		;40ec
	cp 07fh			;40ef
	add a,d			;40f1
	sub h			;40f2
	add a,b			;40f3
	ld d,a			;40f4
l40f5h:
	add a,e			;40f5
	ld d,081h		;40f6
	cp b			;40f8
	push de			;40f9
	adc a,h			;40fa
	cp l			;40fb
	ei			;40fc
	adc a,h			;40fd
	cp 0a3h			;40fe
	add hl,de		;4100
	rst 38h			;4101
	adc a,c			;4102
	rst 38h			;4103
	ld d,l			;4104
	sub h			;4105
	add a,d			;4106
	ld (hl),h		;4107
	add a,h			;4108
	adc a,e			;4109
	adc a,e			;410a
	rlca			;410b
	sub h			;410c
	ld c,c			;410d
	rst 38h			;410e
	ld a,(hl)		;410f
	call nc,0baffh		;4110
	jp nc,04adfh		;4113
	add a,b			;4116
	pop af			;4117
	sub c			;4118
	add a,l			;4119
	ret			;411a
	rst 38h			;411b
	cp e			;411c
	ld sp,hl		;411d
	cp c			;411e
	sbc a,h			;411f
	call nz,sub_71feh	;4120
	call m,0ff95h		;4123
	jr c,l4153h		;4126
	sub h			;4128
	push af			;4129
	cp h			;412a
	rst 38h			;412b
	and 000h		;412c
	ld d,e			;412e
	ld c,c			;412f
	rst 38h			;4130
	jp pe,084c6h		;4131
	add hl,hl		;4134
	ld (bc),a		;4135
	rst 38h			;4136
	jp c,09442h		;4137
	add a,b			;413a
	ld c,d			;413b
	sbc a,c			;413c
	ld (hl),b		;413d
	ld (08115h),hl		;413e
	or (hl)			;4141
	inc bc			;4142
	cp d			;4143
	jr nz,l40c8h		;4144
	inc hl			;4146
	inc hl			;4147
	add hl,bc		;4148
	cp 03ah			;4149
	ld a,a			;414b
	or h			;414c
	rst 38h			;414d
	adc a,07fh		;414e
	ld e,l			;4150
	inc a			;4151
	pop af			;4152
l4153h:
	sbc a,e			;4153
	ld a,a			;4154
	adc a,c			;4155
	ex af,af'		;4156
	ld a,a			;4157
	ld sp,hl		;4158
	ld (hl),0ffh		;4159
	jp pe,0f3f2h		;415b
	ld a,a			;415e
	or (hl)			;415f
	rst 38h			;4160
	ld (hl),c		;4161
	ld b,d			;4162
	ld b,h			;4163
	add a,h			;4164
	xor c			;4165
	ld (hl),e		;4166
	ld d,l			;4167
	jr l40ebh		;4168
	sub h			;416a
	defb 0fdh,093h,080h ;illegal sequence	;416b
	sub d			;416e
	add a,b			;416f
	ld b,(hl)		;4170
	cp 0ffh			;4171
	ld a,a			;4173
	add hl,bc		;4174
	rst 38h			;4175
	adc a,(hl)		;4176
	cp a			;4177
	ld a,a			;4178
	inc l			;4179
	add a,b			;417a
	and e			;417b
	sub b			;417c
	or 0f6h			;417d
	ld a,d			;417f
	ld c,l			;4180
	inc hl			;4181
	ei			;4182
	ret m			;4183
	jp c,08e33h		;4184
	cp 03fh			;4187
	ld a,a			;4189
	add a,h			;418a
	rst 10h			;418b
	rst 38h			;418c
	ld c,h			;418d
	rst 10h			;418e
	ld e,c			;418f
	rst 38h			;4190
	ret c			;4191
	adc a,c			;4192
	rst 8			;4193
	ld a,a			;4194
	dec (hl)		;4195
	sbc a,c			;4196
	ret pe			;4197
	adc a,h			;4198
	ld b,h			;4199
	ld hl,02228h		;419a
	ret p			;419d
	dec de			;419e
	add a,e			;419f
	sub h			;41a0
	rrca			;41a1
	ld a,(de)		;41a2
	dec bc			;41a3
	ld b,h			;41a4
	cp c			;41a5
	sub (hl)		;41a6
	sbc a,c			;41a7
	ld a,a			;41a8
	xor 098h		;41a9
	sbc a,(hl)		;41ab
	rst 38h			;41ac
	rst 18h			;41ad
	adc a,c			;41ae
	ld a,a			;41af
	sub l			;41b0
	call p,053eeh		;41b1
	ret po			;41b4
	ld h,h			;41b5
	ld a,e			;41b6
	rst 38h			;41b7
	ld (hl),e		;41b8
	ld a,a			;41b9
	rst 28h			;41ba
	ld (hl),01bh		;41bb
	xor b			;41bd
	ld b,b			;41be
	ret p			;41bf
	adc a,d			;41c0
	ld (0daa8h),a		;41c1
	dec b			;41c4
	ld a,a			;41c5
	dec de			;41c6
	inc b			;41c7
	adc a,d			;41c8
	add a,h			;41c9
	dec d			;41ca
	rst 38h			;41cb
	ld e,h			;41cc
	or 07fh			;41cd
	adc a,d			;41cf
	ld c,h			;41d0
	xor d			;41d1
	nop			;41d2
	and h			;41d3
	xor l			;41d4
	daa			;41d5
	inc b			;41d6
	xor b			;41d7
	ld a,a			;41d8
	add a,l			;41d9
	rst 38h			;41da
	ld a,(hl)		;41db
	ld c,0f5h		;41dc
	cp b			;41de
	ld c,(hl)		;41df
	call m,0f0bah		;41e0
	ld a,a			;41e3
	ld c,a			;41e4
	inc hl			;41e5
	ld a,(hl)		;41e6
	inc hl			;41e7
	ld a,a			;41e8
	ld (hl),h		;41e9
	ld c,c			;41ea
	sbc a,h			;41eb
	sub l			;41ec
	sub b			;41ed
	ld (de),a		;41ee
	jr nz,$+4		;41ef
	ld bc,00733h		;41f1
	ei			;41f4
	sub l			;41f5
	ld a,a			;41f6
	push bc			;41f7
	sbc a,c			;41f8
	ld a,a			;41f9
	add ix,ix		;41fa
	rst 38h			;41fc
	dec e			;41fd
	rst 20h			;41fe
	dec d			;41ff
	ld a,a			;4200
	ld d,a			;4201
	rst 38h			;4202
	ret m			;4203
	ld sp,0e7ffh		;4204
	rst 30h			;4207
	rst 30h			;4208
	ld a,a			;4209
	add hl,hl		;420a
	inc sp			;420b
	adc a,(hl)		;420c
	ret			;420d
	sub e			;420e
	adc a,0ffh		;420f
	jp (hl)			;4211
	add a,h			;4212
	ld a,a			;4213
	jp nc,l7790h		;4214
	ex (sp),hl		;4217
	jp p,072f6h		;4218
	defb 0fdh,08ah,0fch ;illegal sequence	;421b
	cp d			;421e
	ld a,a			;421f
	inc hl			;4220
	ld c,b			;4221
	xor d			;4222
	rst 38h			;4223
	res 5,c			;4224
	ld d,c			;4226
	sbc a,c			;4227
	sub e			;4228
	ld e,e			;4229
	adc a,a			;422a
	sub a			;422b
	ld a,a			;422c
	adc a,l			;422d
	rst 38h			;422e
	cp 017h			;422f
	nop			;4231
	sub e			;4232
	cpl			;4233
	ld a,a			;4234
	and a			;4235
	inc bc			;4236
	ld a,a			;4237
	sub h			;4238
	push de			;4239
	sbc a,b			;423a
	add a,b			;423b
	xor e			;423c
	ld b,h			;423d
	ld l,c			;423e
	pop de			;423f
	inc bc			;4240
	jr nz,l4266h		;4241
	ld a,h			;4243
	inc hl			;4244
	add a,d			;4245
	ld b,032h		;4246
	ld (bc),a		;4248
	inc b			;4249
	ld c,066h		;424a
	jp po,08545h		;424c
	jp (hl)			;424f
	inc h			;4250
	rst 38h			;4251
	ret m			;4252
	defb 0ddh,07fh,063h ;illegal sequence	;4253
	ret m			;4256
	ld a,a			;4257
	out (0ffh),a		;4258
	pop hl			;425a
	ld a,h			;425b
	ld a,a			;425c
	ld c,c			;425d
	rrca			;425e
	rst 38h			;425f
	ld (hl),d		;4260
	ld l,d			;4261
	sub h			;4262
	ld l,d			;4263
	ld c,b			;4264
	ld (bc),a		;4265
l4266h:
	adc a,h			;4266
	add a,(hl)		;4267
	call po,0e385h		;4268
	call p,0b28ah		;426b
	add a,h			;426e
	inc l			;426f
	ld a,b			;4270
	ret c			;4271
	inc de			;4272
	sub h			;4273
	rst 18h			;4274
	ld a,a			;4275
	adc a,d			;4276
	sub l			;4277
	halt			;4278
	rst 38h			;4279
	sbc a,a			;427a
	ld c,e			;427b
	ld a,a			;427c
	ld d,h			;427d
	ld (0f0ffh),a		;427e
	ld (l7999h),a		;4281
	ret nc			;4284
	ld l,e			;4285
	ld l,b			;4286
	ld l,e			;4287
	inc e			;4288
	sub e			;4289
	add a,l			;428a
	sub c			;428b
	rst 38h			;428c
	ld l,(hl)		;428d
	ld sp,hl		;428e
	dec de			;428f
	add hl,sp		;4290
	ld c,b			;4291
	rrca			;4292
	ld d,092h		;4293
	pop af			;4295
	sbc a,(hl)		;4296
	ld a,a			;4297
	dec d			;4298
	nop			;4299
	xor c			;429a
	inc sp			;429b
	ld a,a			;429c
	cp c			;429d
	rst 38h			;429e
	ld sp,hl		;429f
	ld d,e			;42a0
	ex de,hl		;42a1
	ld (hl),h		;42a2
	nop			;42a3
	ld (02079h),a		;42a4
	ld a,a			;42a7
	ld d,c			;42a8
	jp (hl)			;42a9
	ld a,a			;42aa
	sbc a,059h		;42ab
	ld d,(hl)		;42ad
	sub 045h		;42ae
	add a,b			;42b0
	ld l,h			;42b1
	ld c,l			;42b2
	pop af			;42b3
	ld a,c			;42b4
	ld (0ff30h),hl		;42b5
	ld b,l			;42b8
	inc bc			;42b9
	add a,l			;42ba
	adc a,l			;42bb
	ld c,b			;42bc
	adc a,b			;42bd
	or d			;42be
	ld a,(hl)		;42bf
	ld d,065h		;42c0
	ld l,e			;42c2
	ld b,h			;42c3
	rst 38h			;42c4
	sub a			;42c5
	ld a,a			;42c6
	cp l			;42c7
	inc bc			;42c8
	rst 38h			;42c9
	rra			;42ca
	adc a,e			;42cb
	jp (hl)			;42cc
	call z,sub_7ffah	;42cd
	ld l,e			;42d0
	rst 38h			;42d1
	adc a,h			;42d2
	ld b,c			;42d3
	ld b,h			;42d4
	ret z			;42d5
	ld a,h			;42d6
	ind			;42d7
	ld l,a			;42d9
	pop af			;42da
	ld c,c			;42db
	add a,b			;42dc
	ld c,b			;42dd
	cp 0cch			;42de
	ld b,h			;42e0
	or h			;42e1
	jp pe,08446h		;42e2
	add a,d			;42e5
	ld h,(hl)		;42e6
	ld a,l			;42e7
	ld a,a			;42e8
	di			;42e9
	rst 38h			;42ea
	ld c,(hl)		;42eb
	ld c,b			;42ec
	ld h,e			;42ed
	call c,0ff84h		;42ee
	rst 8			;42f1
	ld a,a			;42f2
	jp po,l6265h		;42f3
	ld d,h			;42f6
	ei			;42f7
	sub c			;42f8
	ld (bc),a		;42f9
	jr nc,l437bh		;42fa
	call nz,0f5ffh		;42fc
	rst 38h			;42ff
	adc a,075h		;4300
	jp 0cd7ah		;4302
	ld l,(hl)		;4305
	inc bc			;4306
	ld c,d			;4307
	ld a,d			;4308
	add a,(hl)		;4309
	push af			;430a
	ret m			;430b
	pop hl			;430c
	add hl,de		;430d
	ld c,0bah		;430e
	inc bc			;4310
	ld c,c			;4311
	xor l			;4312
	rst 38h			;4313
	or 0ffh			;4314
	inc sp			;4316
	dec e			;4317
	ld l,e			;4318
l4319h:
	jp nz,0b1f5h		;4319
	sub h			;431c
	ld l,b			;431d
	ld hl,(01049h)		;431e
	rst 38h			;4321
	call m,03326h		;4322
	rst 10h			;4325
	sbc a,e			;4326
	ld a,a			;4327
	ld e,b			;4328
	ld b,a			;4329
	rst 38h			;432a
	pop bc			;432b
	sub e			;432c
	ld e,h			;432d
	push bc			;432e
	call z,0e73dh		;432f
	add a,d			;4332
	ld b,h			;4333
	call m,sub_4ddeh	;4334
	sbc a,c			;4337
	inc bc			;4338
	ld a,a			;4339
	push af			;433a
	rst 18h			;433b
	rst 38h			;433c
	ret po			;433d
	ret nz			;433e
	ld de,02339h		;433f
	sub e			;4342
	add hl,hl		;4343
	sub d			;4344
	sub c			;4345
	ld d,(hl)		;4346
	ld (l6cd7h),a		;4347
	ld a,a			;434a
	call po,sub_7f66h	;434b
	ld e,l			;434e
	dec bc			;434f
	ld h,a			;4350
	jp po,0dacch		;4351
	pop de			;4354
	ld d,l			;4355
	in a,(007h)		;4356
	rst 10h			;4358
	rrca			;4359
	cp a			;435a
	halt			;435b
	ld (de),a		;435c
	rst 38h			;435d
	defb 0edh ;next byte illegal after ed	;435e
	ld a,a			;435f
	ei			;4360
	xor 09fh		;4361
	ld a,a			;4363
l4364h:
	ld b,033h		;4364
	sub e			;4366
	inc sp			;4367
	cpl			;4368
	ld c,l			;4369
	ret pe			;436a
	ld l,a			;436b
	ret pe			;436c
	xor d			;436d
	rst 30h			;436e
	rrca			;436f
	sub h			;4370
	rst 38h			;4371
	and a			;4372
	rst 38h			;4373
sub_4374h:
	add hl,bc		;4374
	rst 38h			;4375
	ld a,l			;4376
	ccf			;4377
	ld a,a			;4378
	ld e,d			;4379
	ld a,e			;437a
l437bh:
	rst 38h			;437b
	inc a			;437c
	ld l,c			;437d
	rst 38h			;437e
	scf			;437f
	ld a,a			;4380
	ld d,l			;4381
	adc a,(hl)		;4382
	ld l,a			;4383
	defb 0edh ;next byte illegal after ed	;4384
	adc a,e			;4385
	dec a			;4386
	rrca			;4387
	xor l			;4388
	rst 38h			;4389
	jp po,0ffa7h		;438a
	call z,0d39ch		;438d
	ld c,e			;4390
	sub e			;4391
	rst 38h			;4392
	bit 7,a			;4393
	cpl			;4395
	sbc a,c			;4396
	ld bc,l6bceh		;4397
	ld l,a			;439a
	cp (hl)			;439b
	jp po,00fcfh		;439c
	ld l,h			;439f
	rst 38h			;43a0
	ld (hl),e		;43a1
	or a			;43a2
	rst 38h			;43a3
	out (0a5h),a		;43a4
	call nc,sub_7ffah	;43a6
	ld sp,hl		;43a9
	ld (hl),h		;43aa
	ld h,a			;43ab
	xor d			;43ac
	ld l,a			;43ad
	ld a,d			;43ae
	ld c,a			;43af
	sbc a,c			;43b0
	ld a,a			;43b1
	ld (hl),099h		;43b2
	rst 38h			;43b4
	cp h			;43b5
	ld a,b			;43b6
	rst 38h			;43b7
	ld sp,hl		;43b8
	sub c			;43b9
	rst 38h			;43ba
	ex (sp),hl		;43bb
	rst 38h			;43bc
	jp (hl)			;43bd
	ld a,a			;43be
	ld (005ffh),a		;43bf
	rst 38h			;43c2
	ld (hl),e		;43c3
	sub l			;43c4
	inc de			;43c5
	ld a,a			;43c6
	ret nz			;43c7
	sbc a,b			;43c8
	adc a,d			;43c9
	sub h			;43ca
	call p,sub_5eb5h	;43cb
	dec b			;43ce
	adc a,c			;43cf
	ld a,a			;43d0
	ret m			;43d1
	jp c,0f9ffh		;43d2
	ld d,e			;43d5
	rst 38h			;43d6
	ret po			;43d7
	inc sp			;43d8
	out (07fh),a		;43d9
	sub d			;43db
	cpl			;43dc
	add a,(hl)		;43dd
	pop af			;43de
	ld (0acffh),hl		;43df
	ld a,b			;43e2
	ld a,a			;43e3
sub_43e4h:
	ld h,d			;43e4
	cp 046h			;43e5
	jp m,085cbh		;43e7
	ccf			;43ea
	ld a,a			;43eb
	ld h,a			;43ec
	ld l,h			;43ed
	ld a,a			;43ee
	ld a,a			;43ef
	xor e			;43f0
	nop			;43f1
	add a,a			;43f2
	cpl			;43f3
	sbc a,c			;43f4
	adc a,c			;43f5
	jr nc,l4437h		;43f6
	push hl			;43f8
	rst 38h			;43f9
	pop af			;43fa
	ld a,a			;43fb
	cp l			;43fc
	ld e,d			;43fd
	rst 10h			;43fe
	ld (hl),c		;43ff
	ld (bc),a		;4400
	adc a,b			;4401
	pop hl			;4402
	ld e,039h		;4403
	ld a,a			;4405
	sbc a,b			;4406
	adc a,l			;4407
sub_4408h:
	ld a,e			;4408
	rst 38h			;4409
	rst 28h			;440a
	ld a,b			;440b
	ld a,a			;440c
	ld l,093h		;440d
	ret p			;440f
	or (hl)			;4410
	ret p			;4411
	ld sp,03300h		;4412
	rlca			;4415
	sub a			;4416
	ld (bc),a		;4417
	ld a,a			;4418
l4419h:
	add a,d			;4419
	adc a,c			;441a
	jp m,00033h		;441b
	ld l,a			;441e
	rlca			;441f
	ld a,a			;4420
	adc a,l			;4421
	sbc a,c			;4422
	ld a,a			;4423
	ex (sp),hl		;4424
l4425h:
	inc h			;4425
	or l			;4426
	ld a,c			;4427
	nop			;4428
	ld a,a			;4429
	jp po,0fc99h		;442a
	ld a,a			;442d
	ret m			;442e
	cp 0d3h			;442f
	add hl,hl		;4431
	sub e			;4432
	ld a,a			;4433
	jp c,0f7f5h		;4434
l4437h:
	nop			;4437
	ex af,af'		;4438
	xor b			;4439
	sbc a,b			;443a
	rst 38h			;443b
sub_443ch:
	ei			;443c
	ld sp,0819ch		;443d
	and h			;4440
	ld b,h			;4441
	ld c,d			;4442
	and d			;4443
	ld a,h			;4444
sub_4445h:
	ld b,a			;4445
	rst 38h			;4446
	and 054h		;4447
	jp p,09e22h		;4449
	rst 38h			;444c
	inc de			;444d
	inc hl			;444e
	rst 38h			;444f
	jp nc,0ff9fh		;4450
	ld e,l			;4453
	ld d,l			;4454
	add a,h			;4455
	rst 8			;4456
	or a			;4457
	rst 18h			;4458
	xor (hl)		;4459
	ld c,b			;445a
	ld a,a			;445b
	or h			;445c
	ret p			;445d
	ex (sp),hl		;445e
	ld a,a			;445f
l4460h:
	sub c			;4460
	sub (hl)		;4461
	rst 38h			;4462
	ld a,h			;4463
	xor c			;4464
	and c			;4465
	ld h,e			;4466
	rst 38h			;4467
	sbc a,d			;4468
l4469h:
	sbc a,c			;4469
	ld c,d			;446a
	rst 38h			;446b
	call m,sub_7fcch	;446c
	ld d,a			;446f
	sub d			;4470
	rst 38h			;4471
	ld d,h			;4472
	rst 38h			;4473
	ret p			;4474
	ld d,d			;4475
	push af			;4476
	ld d,(hl)		;4477
	ld a,a			;4478
	ld l,d			;4479
	nop			;447a
	ld e,(hl)		;447b
	ld a,l			;447c
	add a,l			;447d
l447eh:
	ld a,(00088h)		;447e
	defb 0ddh,087h,0e7h ;illegal sequence	;4481
	add hl,bc		;4484
	ld a,a			;4485
	jp z,0378dh		;4486
	ld a,a			;4489
	dec hl			;448a
	sub a			;448b
	adc a,a			;448c
	ld a,a			;448d
	jp z,0808bh		;448e
	jr l4419h		;4491
	ld (l56eeh),a		;4493
	rst 38h			;4496
	defb 0ddh,07fh,00bh ;illegal sequence	;4497
	ld (hl),a		;449a
	ld a,a			;449b
	push af			;449c
	ld l,e			;449d
	rst 8			;449e
	add hl,sp		;449f
	push de			;44a0
	ld b,h			;44a1
	rst 18h			;44a2
	push hl			;44a3
	adc a,c			;44a4
	rst 28h			;44a5
	nop			;44a6
	cp a			;44a7
	ld a,a			;44a8
	ret p			;44a9
	ld l,093h		;44aa
	ld a,a			;44ac
	or c			;44ad
	rst 38h			;44ae
	pop hl			;44af
	xor l			;44b0
	adc a,(hl)		;44b1
	sub l			;44b2
	jp nc,l7fc2h		;44b3
	ld c,b			;44b6
	add a,h			;44b7
	rst 18h			;44b8
	push af			;44b9
	adc a,b			;44ba
	rst 38h			;44bb
	rra			;44bc
	ret			;44bd
	rst 8			;44be
	rst 38h			;44bf
	dec c			;44c0
	sub d			;44c1
	rst 38h			;44c2
	di			;44c3
	rst 20h			;44c4
	rst 38h			;44c5
	ld a,(0e781h)		;44c6
	sbc a,0adh		;44c9
	ret nc			;44cb
	xor c			;44cc
	defb 0fdh,0c3h,000h ;illegal sequence	;44cd
	rla			;44d0
	sbc a,d			;44d1
	rst 38h			;44d2
	ret p			;44d3
	rst 8			;44d4
	and e			;44d5
	jr z,l4460h		;44d6
	and e			;44d8
	rst 28h			;44d9
	ld a,a			;44da
	di			;44db
	cp l			;44dc
	rst 38h			;44dd
	ret pe			;44de
	push hl			;44df
	ld a,a			;44e0
	ld c,b			;44e1
	pop de			;44e2
	ret			;44e3
	ld a,a			;44e4
	and 04ah		;44e5
	ret p			;44e7
	ld a,a			;44e8
	xor (hl)		;44e9
	rst 38h			;44ea
	call c,sub_7648h	;44eb
	push bc			;44ee
	add a,l			;44ef
	ex af,af'		;44f0
	rst 8			;44f1
	rst 38h			;44f2
	dec l			;44f3
	rst 38h			;44f4
	cp 06fh			;44f5
	ld a,a			;44f7
	call 02cffh		;44f8
	rst 0			;44fb
	rst 38h			;44fc
	ld d,d			;44fd
	rst 38h			;44fe
	pop af			;44ff
	ld e,a			;4500
	rst 38h			;4501
	ld d,(hl)		;4502
	sub e			;4503
	sbc a,h			;4504
	nop			;4505
	cp e			;4506
	sbc a,c			;4507
	rlca			;4508
	cp a			;4509
	rst 38h			;450a
	rst 8			;450b
	jp p,0977fh		;450c
	rst 38h			;450f
	ld a,(06affh)		;4510
	rst 38h			;4513
	ld a,b			;4514
	and a			;4515
	rst 38h			;4516
	adc a,(hl)		;4517
	rst 38h			;4518
	ld a,(l68f8h)		;4519
	ex (sp),hl		;451c
	rst 38h			;451d
	call p,09294h		;451e
	rst 38h			;4521
	ret p			;4522
	ld h,d			;4523
	ld a,a			;4524
	add a,h			;4525
	rst 38h			;4526
	or (hl)			;4527
	ld h,c			;4528
	sub l			;4529
	ld a,a			;452a
	ld c,b			;452b
	rst 38h			;452c
	call p,000fch		;452d
	dec a			;4530
	rst 38h			;4531
	jp m,0ff1eh		;4532
	jp p,0ffdfh		;4535
	jp po,088bch		;4538
	nop			;453b
	ccf			;453c
	ld a,a			;453d
	ld b,l			;453e
	sbc a,c			;453f
	ld a,a			;4540
	or 06bh			;4541
	rst 38h			;4543
	add hl,de		;4544
	rst 38h			;4545
	push de			;4546
	add a,c			;4547
	ld (hl),h		;4548
	sub h			;4549
l454ah:
	adc a,0ffh		;454a
	push de			;454c
	ld b,h			;454d
	rst 38h			;454e
	call c,079f6h		;454f
	ld b,a			;4552
	adc a,c			;4553
	adc a,h			;4554
	rst 38h			;4555
	ld a,(hl)		;4556
	ld a,(hl)		;4557
	rst 38h			;4558
	ld (hl),c		;4559
	rst 38h			;455a
	adc a,h			;455b
	dec a			;455c
	sbc a,a			;455d
	rst 38h			;455e
	rst 10h			;455f
	rst 38h			;4560
	ld a,(hl)		;4561
	adc a,07fh		;4562
	dec (hl)		;4564
	ld sp,hl		;4565
	dec hl			;4566
	sbc a,e			;4567
	cp b			;4568
	adc a,c			;4569
	pop af			;456a
	ld a,e			;456b
	sbc a,c			;456c
	rst 38h			;456d
	rst 20h			;456e
	ld l,e			;456f
	ld a,a			;4570
	sub d			;4571
	rst 38h			;4572
	ld e,(hl)		;4573
	ld c,0ffh		;4574
	ei			;4576
	ret m			;4577
	ld a,a			;4578
	sbc a,h			;4579
	and (hl)		;457a
	rlc c			;457b
	xor (hl)		;457d
	ld h,d			;457e
	pop af			;457f
	sbc a,c			;4580
	ei			;4581
	add a,e			;4582
	rlca			;4583
	ld a,a			;4584
l4585h:
	ld a,a			;4585
	scf			;4586
	nop			;4587
	dec e			;4588
	cpl			;4589
	rst 38h			;458a
	push bc			;458b
	ld a,a			;458c
	rst 38h			;458d
	adc a,0bch		;458e
	ld e,c			;4590
	rst 28h			;4591
	ld e,h			;4592
	ld a,a			;4593
	di			;4594
	ld a,(hl)		;4595
	rst 38h			;4596
	rst 8			;4597
	nop			;4598
	rrca			;4599
	inc sp			;459a
	rst 38h			;459b
	ld (hl),l		;459c
	ld h,(hl)		;459d
	xor d			;459e
	adc a,0d5h		;459f
	ld h,a			;45a1
	adc a,c			;45a2
	sbc a,(hl)		;45a3
	ld a,a			;45a4
	ld d,a			;45a5
	ld (bc),a		;45a6
	ld a,a			;45a7
	add a,h			;45a8
	di			;45a9
	defb 0edh ;next byte illegal after ed	;45aa
	sub e			;45ab
	dec h			;45ac
	adc a,(hl)		;45ad
	ld (hl),e		;45ae
	add a,a			;45af
	inc a			;45b0
	pop de			;45b1
	sub c			;45b2
	rlca			;45b3
	cp a			;45b4
	ld a,a			;45b5
	and l			;45b6
	cp 01ah			;45b7
	add hl,hl		;45b9
	ld a,d			;45ba
	sub e			;45bb
	ld a,a			;45bc
	ld e,(hl)		;45bd
	push af			;45be
	or b			;45bf
	xor b			;45c0
	cp 0b1h			;45c1
	ld a,l			;45c3
	adc a,c			;45c4
	dec (hl)		;45c5
	sub c			;45c6
	ret nz			;45c7
	xor b			;45c8
	ld c,c			;45c9
	rst 10h			;45ca
	rst 38h			;45cb
	inc e			;45cc
	ld a,e			;45cd
	xor l			;45ce
	adc a,c			;45cf
	sbc a,(hl)		;45d0
	call p,085b3h		;45d1
	xor l			;45d4
	rlca			;45d5
	ld l,e			;45d6
	ld c,c			;45d7
	rst 38h			;45d8
	push hl			;45d9
	and l			;45da
	inc sp			;45db
	di			;45dc
	daa			;45dd
	rst 38h			;45de
	and h			;45df
	sbc a,a			;45e0
	rst 38h			;45e1
	cp d			;45e2
	inc hl			;45e3
	sbc a,c			;45e4
	ld sp,hl		;45e5
	ld (hl),l		;45e6
	add a,h			;45e7
	ccf			;45e8
	rst 10h			;45e9
	adc a,a			;45ea
	ld a,a			;45eb
	dec c			;45ec
	rst 38h			;45ed
	jp p,0fbc7h		;45ee
	add a,a			;45f1
	nop			;45f2
	cp (hl)			;45f3
	rst 38h			;45f4
	call m,0ff7eh		;45f5
	ld h,d			;45f8
	rst 38h			;45f9
	cp b			;45fa
	and a			;45fb
	rst 38h			;45fc
	add a,e			;45fd
	ld (hl),h		;45fe
	sbc a,(hl)		;45ff
	ld l,a			;4600
	ex (sp),hl		;4601
	adc a,d			;4602
	dec a			;4603
	rrca			;4604
	and a			;4605
	ld a,a			;4606
	ld b,h			;4607
	nop			;4608
	push de			;4609
	ld a,a			;460a
	pop af			;460b
	and e			;460c
	adc a,d			;460d
	ld a,a			;460e
	xor d			;460f
	ld (hl),a		;4610
	ld a,a			;4611
	add a,c			;4612
	ld (hl),a		;4613
	ld (hl),a		;4614
	halt			;4615
	rst 38h			;4616
	ld a,h			;4617
	ld a,e			;4618
	rst 38h			;4619
	add hl,sp		;461a
	xor 05bh		;461b
	rst 38h			;461d
	ld (hl),l		;461e
	ld a,a			;461f
	dec bc			;4620
	ld a,a			;4621
	call c,0b3f4h		;4622
	ld l,a			;4625
	call c,0f784h		;4626
	rrca			;4629
	ex (sp),hl		;462a
	sub a			;462b
	ld c,c			;462c
	ex af,af'		;462d
	inc a			;462e
	adc a,b			;462f
	inc bc			;4630
	ld l,a			;4631
	adc a,d			;4632
	ld a,h			;4633
	inc bc			;4634
	ld a,(hl)		;4635
	ld a,a			;4636
	ld l,e			;4637
	ld a,b			;4638
	ld a,e			;4639
	dec h			;463a
	ld a,a			;463b
	ld h,(hl)		;463c
	nop			;463d
	rst 38h			;463e
	inc e			;463f
	pop af			;4640
	ld a,a			;4641
	rst 38h			;4642
	adc a,a			;4643
	dec c			;4644
	adc a,(hl)		;4645
	ld l,(hl)		;4646
	rst 20h			;4647
	ld e,(hl)		;4648
	ld l,a			;4649
	ld a,c			;464a
	rst 30h			;464b
	cp (hl)			;464c
	rrca			;464d
	xor c			;464e
	sub h			;464f
	push hl			;4650
	ld c,a			;4651
	inc bc			;4652
	inc a			;4653
	ld (hl),b		;4654
	ld a,c			;4655
	ld c,c			;4656
	inc bc			;4657
	rst 8			;4658
	sub d			;4659
	pop bc			;465a
	pop de			;465b
sub_465ch:
	add hl,hl		;465c
	cp 011h			;465d
	ld a,d			;465f
	sub a			;4660
	ld a,d			;4661
	ld a,(l7f77h)		;4662
	sbc a,(hl)		;4665
l4666h:
	rst 38h			;4666
	dec de			;4667
	sub d			;4668
	rst 38h			;4669
	rst 20h			;466a
	rst 38h			;466b
	adc a,07dh		;466c
	ld h,a			;466e
	defb 0fdh,007h,014h ;illegal sequence	;466f
	and 09eh		;4672
	inc bc			;4674
	ld l,d			;4675
	sub h			;4676
	call m,0034fh		;4677
	ccf			;467a
	nop			;467b
	adc a,l			;467c
	sbc a,d			;467d
	or (hl)			;467e
sub_467fh:
	exx			;467f
	rst 38h			;4680
	inc d			;4681
	add a,c			;4682
	jp nc,08affh		;4683
	sbc a,c			;4686
	rst 38h			;4687
	ld (hl),b		;4688
	rst 30h			;4689
	rst 38h			;468a
	sbc a,e			;468b
	ld a,a			;468c
	ret p			;468d
	ld a,000h		;468e
	rst 28h			;4690
	nop			;4691
	rst 38h			;4692
	ret m			;4693
	nop			;4694
	dec (hl)		;4695
	nop			;4696
	nop			;4697
	ld h,c			;4698
	ld (hl),a		;4699
	nop			;469a
	xor c			;469b
	sbc a,c			;469c
	nop			;469d
	and 088h		;469e
	rlca			;46a0
	xor d			;46a1
	ld l,e			;46a2
	or (hl)			;46a3
	xor d			;46a4
	adc a,b			;46a5
	ld (de),a		;46a6
	and e			;46a7
	sbc a,d			;46a8
	dec h			;46a9
	ld a,e			;46aa
	inc c			;46ab
	defb 0fdh,031h,01fh ;illegal sequence	;46ac
	nop			;46af
	xor l			;46b0
	xor d			;46b1
	nop			;46b2
	ld b,b			;46b3
	ld c,l			;46b4
	sbc a,b			;46b5
	adc a,b			;46b6
	adc a,b			;46b7
	call nz,07c88h		;46b8
	adc a,c			;46bb
	ld c,l			;46bc
	ld (hl),c		;46bd
	add hl,de		;46be
	ld c,h			;46bf
	adc a,b			;46c0
	add hl,de		;46c1
	ld e,c			;46c2
	ld c,l			;46c3
	ld h,031h		;46c4
	rst 28h			;46c6
	nop			;46c7
	sbc a,a			;46c8
	ld sp,0181fh		;46c9
	ld e,031h		;46cc
	cp a			;46ce
	nop			;46cf
	ld e,h			;46d0
	ret			;46d1
	ld b,c			;46d2
	sbc a,d			;46d3
	and a			;46d4
	xor c			;46d5
	adc a,b			;46d6
	dec hl			;46d7
	ld bc,0c44ch		;46d8
	xor b			;46db
	sbc a,c			;46dc
	sub h			;46dd
	ld b,h			;46de
	nop			;46df
	sbc a,l			;46e0
	ld c,l			;46e1
l46e2h:
	ret pe			;46e2
	dec bc			;46e3
	ld c,c			;46e4
	sbc a,c			;46e5
	adc a,d			;46e6
	sub c			;46e7
	rla			;46e8
	xor d			;46e9
	inc c			;46ea
	sbc a,d			;46eb
	ld a,d			;46ec
	ld h,09eh		;46ed
	ld sp,000f1h		;46ef
	xor b			;46f2
	adc a,c			;46f3
	ld sp,09bf0h		;46f4
	sbc a,b			;46f7
	adc a,d			;46f8
	add hl,de		;46f9
	ld sp,l7febh		;46fa
	or 0ach			;46fd
	sbc a,c			;46ff
	ld c,l			;4700
	inc sp			;4701
	inc b			;4702
	and h			;4703
	inc c			;4704
	ld c,d			;4705
	adc a,c			;4706
	ld b,h			;4707
	cp c			;4708
	ld h,c			;4709
	add a,h			;470a
	ld c,c			;470b
	ld c,l			;470c
	ret			;470d
	sub h			;470e
	ld c,b			;470f
	inc c			;4710
	add a,b			;4711
	ld b,h			;4712
	sbc a,b			;4713
	and h			;4714
l4715h:
	ret nz			;4715
	ld c,d			;4716
	jp z,l4d67h		;4717
	pop de			;471a
	ld d,e			;471b
sub_471ch:
	ld sp,000dfh		;471c
	ld a,031h		;471f
	ld a,018h		;4721
	dec a			;4723
	ld sp,0007eh		;4724
	call pe,0434dh		;4727
	xor b			;472a
	add hl,sp		;472b
	ld b,b			;472c
	jp z,04089h		;472d
	ld e,l			;4730
	adc a,b			;4731
	ld c,l			;4732
	ret pe			;4733
	dec bc			;4734
	add a,h			;4735
	sbc a,b			;4736
	xor h			;4737
	ld d,(hl)		;4738
	inc b			;4739
	dec b			;473a
	dec e			;473b
	ld c,l			;473c
	call m,03731h		;473d
	jr z,l4773h		;4740
	rst 0			;4742
	ex af,af'		;4743
	ld a,h			;4744
	ld sp,l7f7eh+1		;4745
	ld a,h			;4748
	dec b			;4749
	sbc a,h			;474a
	ld c,c			;474b
	or h			;474c
	ld c,l			;474d
	add a,h			;474e
	ret nz			;474f
	inc a			;4750
	ld c,l			;4751
	ld h,h			;4752
	dec bc			;4753
	ld c,b			;4754
	ld c,l			;4755
	ld c,e			;4756
	ld e,a			;4757
	ret			;4758
	add hl,de		;4759
	ld a,a			;475a
	dec l			;475b
	sbc a,e			;475c
	inc hl			;475d
	adc a,d			;475e
	ld sp,09be3h		;475f
	sub h			;4762
	ld sp,0fbe3h		;4763
	ld a,a			;4766
	sbc a,b			;4767
	adc a,b			;4768
	ld a,a			;4769
	ld e,h			;476a
	ld c,c			;476b
	ld c,c			;476c
	dec a			;476d
	sbc a,c			;476e
	call nz,sub_4d3bh	;476f
	ld c,l			;4772
l4773h:
	add a,h			;4773
	call m,0180fh		;4774
	sub h			;4777
	push bc			;4778
	ld a,a			;4779
	adc a,b			;477a
	ret m			;477b
	ld a,a			;477c
l477dh:
	jp (hl)			;477d
	xor 077h		;477e
	ld a,a			;4780
	ld sp,l7fdeh		;4781
	xor l			;4784
	add a,e			;4785
	call m,0fa7fh		;4786
	ei			;4789
	call nc,03dc4h		;478a
sub_478dh:
	ld b,h			;478d
	cp h			;478e
	dec b			;478f
	ld c,l			;4790
	ld h,h			;4791
	dec bc			;4792
	ld b,h			;4793
	inc bc			;4794
	ld c,h			;4795
	or l			;4796
	add a,e			;4797
	ret m			;4798
	ld a,a			;4799
	call c,sub_7f89h	;479a
	call m,01c31h		;479d
	ld a,a			;47a0
	ld a,h			;47a1
	ld sp,07f3fh		;47a2
	add a,d			;47a5
	sub h			;47a6
	cpl			;47a7
	ld c,c			;47a8
	sbc a,h			;47a9
	ld c,c			;47aa
	ld c,l			;47ab
	ld e,d			;47ac
	inc bc			;47ad
	defb 0fdh,027h,049h ;illegal sequence	;47ae
	ld a,a			;47b1
	in a,(031h)		;47b2
	ret p			;47b4
	ld a,(hl)		;47b5
	ld a,a			;47b6
	ret nz			;47b7
	sbc a,c			;47b8
	dec (hl)		;47b9
	cp h			;47ba
	jp 0944dh		;47bb
	ld c,h			;47be
	ld c,l			;47bf
	or e			;47c0
	call nz,sub_4d49h	;47c1
	rlca			;47c4
	bit 2,e			;47c5
	sbc a,c			;47c7
	ld a,a			;47c8
	push af			;47c9
	ld (bc),a		;47ca
sub_47cbh:
	jr nc,l477dh		;47cb
	ret z			;47cd
	ld c,l			;47ce
	cp e			;47cf
	xor 04dh		;47d0
	cp d			;47d2
	add hl,bc		;47d3
	ld c,l			;47d4
	rra			;47d5
	adc a,h			;47d6
	dec bc			;47d7
	inc bc			;47d8
	ld a,a			;47d9
	call nc,09c91h		;47da
	ld d,l			;47dd
	ld a,e			;47de
	sub h			;47df
	ret nz			;47e0
	ld c,l			;47e1
	jp po,0870ch		;47e2
	dec c			;47e5
	ld c,h			;47e6
	ld d,l			;47e7
	ret			;47e8
	ld a,a			;47e9
	push af			;47ea
	inc h			;47eb
	add a,e			;47ec
	dec bc			;47ed
	ld (hl),c		;47ee
	ld c,h			;47ef
	ld d,c			;47f0
	inc b			;47f1
	pop de			;47f2
	ld c,l			;47f3
	call 004c9h		;47f4
	ld b,b			;47f7
	call nz,sub_478dh	;47f8
	or b			;47fb
	jr c,l487dh		;47fc
	pop hl			;47fe
	ld a,b			;47ff
	ld sp,l7f7eh		;4800
	ret p			;4803
	ret nz			;4804
	call z,0ba49h		;4805
	xor 04ch		;4808
	ld l,d			;480a
	inc sp			;480b
	ld c,l			;480c
	inc sp			;480d
	ld c,(hl)		;480e
	ret nz			;480f
	sub b			;4810
	sub h			;4811
	call z,00c7eh		;4812
	ld a,a			;4815
	rla			;4816
	ld sp,l7f8fh		;4817
	xor 098h		;481a
l481ch:
	adc a,c			;481c
	inc a			;481d
	cp a			;481e
	ld e,l			;481f
	xor 0cdh		;4820
	ld de,0a6cch		;4822
	ld c,l			;4825
	ld de,0cc6ah		;4826
	call 09061h		;4829
	rrca			;482c
	ld de,098c3h		;482d
	rst 38h			;4830
	ret m			;4831
	ld a,l			;4832
	ld sp,0ffc7h		;4833
	rst 28h			;4836
	daa			;4837
	call z,09c00h		;4838
	ret nc			;483b
	ld b,00ch		;483c
	jp z,09c4dh		;483e
	xor h			;4841
	ret nz			;4842
	jp z,0c932h		;4843
	djnz $+1		;4846
	ld a,0d2h		;4848
	adc a,h			;484a
l484bh:
	ret			;484b
	sbc a,a			;484c
sub_484dh:
	adc a,a			;484d
	ld sp,07f3fh		;484e
	call c,0840ah		;4851
	ret nz			;4854
	dec b			;4855
	inc c			;4856
	pop af			;4857
	ld (002f2h),hl		;4858
	adc a,b			;485b
	call z,sub_6666h	;485c
	call z,08c88h		;485f
	ld c,d			;4862
	adc a,l			;4863
	add a,e			;4864
	ret nz			;4865
	ld d,b			;4866
	inc c			;4867
	ld c,b			;4868
	ld a,a			;4869
	call pe,0c00fh		;486a
	sbc a,c			;486d
	inc c			;486e
	sbc a,c			;486f
	ld sp,0b54ah		;4870
	rst 8			;4873
	ld a,a			;4874
	jp c,00044h		;4875
l4878h:
	adc a,0c0h		;4878
	ld c,0c4h		;487a
	ld c,d			;487c
l487dh:
	adc a,h			;487d
	inc bc			;487e
	cp a			;487f
	add a,b			;4880
	jr nc,l484bh		;4881
	and h			;4883
	ld c,h			;4884
	inc c			;4885
	sbc a,h			;4886
	ld a,09ch		;4887
	nop			;4889
	ld a,a			;488a
	rst 38h			;488b
	ld sp,00981h		;488c
	ld a,a			;488f
	ei			;4890
	jr nz,l481ch		;4891
	ld c,h			;4893
	nop			;4894
	add hl,bc		;4895
	dec bc			;4896
	rlca			;4897
	ld d,b			;4898
	sbc a,h			;4899
	ld b,d			;489a
	push bc			;489b
	ret z			;489c
	ret nz			;489d
	ld b,b			;489e
	adc a,h			;489f
	ld e,h			;48a0
	inc h			;48a1
	ret			;48a2
	dec b			;48a3
	add hl,bc		;48a4
	or b			;48a5
	sub b			;48a6
	nop			;48a7
	call nz,0fbffh		;48a8
	ld a,(hl)		;48ab
	ld sp,0ff3dh		;48ac
	ld a,l			;48af
	add a,l			;48b0
	ld b,h			;48b1
	xor 048h		;48b2
	ret nz			;48b4
	ret nc			;48b5
	ret nz			;48b6
	ld c,a			;48b7
	ret nz			;48b8
l48b9h:
	jp nz,008ach		;48b9
	jp z,00c2ch		;48bc
	call p,0c5fch		;48bf
	inc c			;48c2
	sub b			;48c3
	adc a,l			;48c4
	ld b,h			;48c5
	rst 38h			;48c6
	ld a,d			;48c7
	cp a			;48c8
	ld sp,l7f2fh		;48c9
	ret p			;48cc
	ld c,h			;48cd
sub_48ceh:
	ld b,e			;48ce
	inc hl			;48cf
	defb 0fdh,0c1h,0c0h ;illegal sequence	;48d0
	inc c			;48d3
	ret			;48d4
	call 03e52h		;48d5
	dec b			;48d8
	inc l			;48d9
	ex (sp),hl		;48da
	call z,0b5feh		;48db
	dec b			;48de
	add a,c			;48df
	rrca			;48e0
	ld (l7f34h),a		;48e1
	and a			;48e4
	ld sp,0fff2h		;48e5
	ld a,a			;48e8
	ld (bc),a		;48e9
	scf			;48ea
	ld e,e			;48eb
	call z,0f439h		;48ec
	add a,b			;48ef
	call z,03399h		;48f0
	cpl			;48f3
	dec b			;48f4
	rlca			;48f5
	ld d,b			;48f6
	jp p,09933h		;48f7
	call z,0248ah		;48fa
	ld h,c			;48fd
	call z,02c3eh		;48fe
	add hl,sp		;4901
	ld a,a			;4902
	ld a,a			;4903
	ld sp,0fccch		;4904
	ld a,a			;4907
	djnz $-50		;4908
	ret p			;490a
	ret p			;490b
	inc bc			;490c
	sub d			;490d
	cp h			;490e
	call nz,0f1afh		;490f
l4912h:
	inc bc			;4912
	ld (0cffch),a		;4913
	inc hl			;4916
	adc a,l			;4917
	jp pe,0a4d6h		;4918
	sbc a,007h		;491b
	jr nc,l491fh		;491d
l491fh:
	nop			;491f
	call z,l7f2fh		;4920
	pop de			;4923
	ld sp,l7ff9h		;4924
	ld a,a			;4927
	add a,b			;4928
	inc a			;4929
	add a,b			;492a
	jr c,l492eh		;492b
	nop			;492d
l492eh:
	inc bc			;492e
	ld c,a			;492f
	ld (de),a		;4930
	inc (hl)		;4931
	sub b			;4932
	call 03cc3h		;4933
	and h			;4936
	ld bc,089cdh		;4937
	ret			;493a
	inc (hl)		;493b
	ld c,h			;493c
l493dh:
	ld h,0f0h		;493d
	jp nc,0fe3eh		;493f
	ld sp,hl		;4942
	ld a,a			;4943
	ld l,a			;4944
	ld sp,0fbcch		;4945
	ld a,a			;4948
	or 0eah			;4949
	sub b			;494b
	add hl,sp		;494c
	ld bc,0ce50h		;494d
	or c			;4950
	inc hl			;4951
	ld b,h			;4952
	jp 0214eh		;4953
	ld (de),a		;4956
	ld c,h			;4957
	inc a			;4958
	ld (bc),a		;4959
	inc sp			;495a
	jr nc,l496ch		;495b
	nop			;495d
	ld (bc),a		;495e
	jp po,03e4dh		;495f
	ld hl,07ff4h		;4962
	ld e,a			;4965
	ld sp,03281h		;4966
	ld sp,0fdf5h		;4969
l496ch:
	ld a,a			;496c
	add a,083h		;496d
	inc a			;496f
	add hl,sp		;4970
	add a,l			;4971
	ret po			;4972
	ld d,b			;4973
	ld bc,03eefh		;4974
	rst 0			;4977
	ld de,0effeh		;4978
	out (012h),a		;497b
	pop bc			;497d
	ret z			;497e
sub_497fh:
	inc h			;497f
	pop hl			;4980
	rst 18h			;4981
	ld c,c			;4982
	jr nz,l49e5h		;4983
	rst 8			;4985
	rst 38h			;4986
	cpl			;4987
	cpl			;4988
	ld sp,l7de7h		;4989
	ld a,a			;498c
	add a,08fh		;498d
	inc l			;498f
	add hl,sp		;4990
	inc b			;4991
	ld d,l			;4992
	ld d,l			;4993
	dec d			;4994
	ret p			;4995
	call nc,sub_4e52h	;4996
	inc (hl)		;4999
	call 04341h		;499a
	ret nz			;499d
	ld c,008h		;499e
l49a0h:
	ld b,d			;49a0
	ld (de),a		;49a1
	ld c,055h		;49a2
	ld d,b			;49a4
	rst 8			;49a5
	ld (hl),e		;49a6
	ld a,a			;49a7
	call po,031fch		;49a8
	rst 28h			;49ab
	ld a,a			;49ac
	cp b			;49ad
	cp 0fch			;49ae
	ret nz			;49b0
	add hl,sp		;49b1
l49b2h:
	cp e			;49b2
l49b3h:
	nop			;49b3
	dec b			;49b4
sub_49b5h:
	dec d			;49b5
	add hl,hl		;49b6
	ld d,l			;49b7
	dec b			;49b8
	ccf			;49b9
	ld c,e			;49ba
	inc sp			;49bb
	call c,00715h		;49bc
	ld c,c			;49bf
sub_49c0h:
	ld b,050h		;49c0
	push hl			;49c2
	ld e,e			;49c3
	ld d,l			;49c4
	ld e,l			;49c5
	ld a,0c3h		;49c6
l49c8h:
	ld a,a			;49c8
	ccf			;49c9
	ld sp,0fbceh		;49ca
	ld a,a			;49cd
	sub c			;49ce
	pop af			;49cf
	call 03940h		;49d0
	or b			;49d3
	cpl			;49d4
	dec h			;49d5
	ld e,e			;49d6
	or d			;49d7
	inc hl			;49d8
	jp p,0ce55h		;49d9
	ld h,d			;49dc
	call nc,05b80h		;49dd
	cp e			;49e0
	or l			;49e1
	ld (bc),a		;49e2
	jr nz,l49a0h		;49e3
l49e5h:
	or b			;49e5
	ld e,a			;49e6
	push af			;49e7
	ld c,(hl)		;49e8
	ld a,a			;49e9
	daa			;49ea
	ld sp,l7de7h		;49eb
	ld a,a			;49ee
	call nz,0cc9fh		;49ef
	cp (hl)			;49f2
	ld b,b			;49f3
	ld e,e			;49f4
	ld (bc),a		;49f5
	cp (hl)			;49f6
	jp p,027b0h		;49f7
	dec hl			;49fa
	rra			;49fb
	ret nz			;49fc
l49fdh:
	dec d			;49fd
	call nz,08cdah		;49fe
	dec bc			;4a01
	ld c,l			;4a02
	add hl,bc		;4a03
	ld hl,l5bb2h		;4a04
	cp a			;4a07
	sbc a,0b2h		;4a08
	ret po			;4a0a
	ret m			;4a0b
	ld a,a			;4a0c
	rst 38h			;4a0d
	ld sp,l7f3bh		;4a0e
	xor 0dah		;4a11
	ret z			;4a13
	ld c,l			;4a14
	djnz l49c8h		;4a15
	ld (bc),a		;4a17
	ld de,0214dh		;4a18
	rst 28h			;4a1b
	jr nz,l49b2h		;4a1c
	adc a,094h		;4a1e
	call z,00028h		;4a20
	ld (0cd4fh),hl		;4a23
	ret nz			;4a26
	or d			;4a27
	ld (de),a		;4a28
	nop			;4a29
	rrca			;4a2a
	ld a,00ch		;4a2b
	sbc a,b			;4a2d
	ld a,a			;4a2e
	cpl			;4a2f
	ld sp,0fbceh		;4a30
	ld a,a			;4a33
	ld c,b			;4a34
	add a,h			;4a35
	ld c,h			;4a36
	inc sp			;4a37
	ld d,l			;4a38
	dec de			;4a39
	ld de,02f50h		;4a3a
	jr nz,$+66		;4a3d
	jp p,l4d05h		;4a3f
	ret z			;4a42
	ld d,d			;4a43
	dec de			;4a44
	dec hl			;4a45
	sub c			;4a46
	jp z,00205h		;4a47
	inc hl			;4a4a
	ld l,067h		;4a4b
l4a4dh:
	inc e			;4a4d
	ld c,b			;4a4e
	ld c,l			;4a4f
	adc a,(hl)		;4a50
	ex (sp),hl		;4a51
	ld a,(de)		;4a52
	adc a,c			;4a53
	exx			;4a54
	sub a			;4a55
	dec b			;4a56
	ld sp,0fee4h		;4a57
	ld a,a			;4a5a
	ld c,h			;4a5b
	cp l			;4a5c
	pop bc			;4a5d
	cp 0f0h			;4a5e
	push af			;4a60
	or l			;4a61
	jp nz,0eb22h		;4a62
	ld b,b			;4a65
	ld a,h			;4a66
	or l			;4a67
	call p,00192h		;4a68
	inc hl			;4a6b
	ret nz			;4a6c
	dec b			;4a6d
	ld e,a			;4a6e
	ld e,0fbh		;4a6f
	cp e			;4a71
	ld c,e			;4a72
	ld d,c			;4a73
	call sub_48ceh		;4a74
	call pe,sub_4de7h	;4a77
	ex (sp),hl		;4a7a
	rst 0			;4a7b
	xor b			;4a7c
	jp p,00565h		;4a7d
	ld sp,03ff9h		;4a80
	ld a,a			;4a83
	sub (hl)		;4a84
	ld hl,02012h		;4a85
	ld (bc),a		;4a88
	ld d,b			;4a89
	ret nc			;4a8a
	ld c,(hl)		;4a8b
	jp nz,04d40h		;4a8c
	add hl,bc		;4a8f
	ld sp,090f3h		;4a90
	dec b			;4a93
	dec d			;4a94
	ld d,l			;4a95
	rst 38h			;4a96
	cp e			;4a97
	nop			;4a98
	ld de,0a74dh		;4a99
	inc c			;4a9c
	ld c,c			;4a9d
	ld a,a			;4a9e
	ld b,e			;4a9f
	xor d			;4aa0
	adc a,c			;4aa1
	sbc a,b			;4aa2
	inc b			;4aa3
	ld a,031h		;4aa4
	scf			;4aa6
	inc sp			;4aa7
	ld sp,l7fc9h		;4aa8
	ld sp,hl		;4aab
	inc l			;4aac
	adc a,0cch		;4aad
	ld (bc),a		;4aaf
l4ab0h:
	dec b			;4ab0
	jr nz,l4abfh		;4ab1
	ret nz			;4ab3
	jp nc,sub_4d49h+1	;4ab4
	ld a,01eh		;4ab7
	ret			;4ab9
	ld e,012h		;4aba
	jp z,l550ah		;4abc
l4abfh:
	ld e,e			;4abf
	cp e			;4ac0
	rst 10h			;4ac1
	ret z			;4ac2
	push de			;4ac3
	xor h			;4ac4
	out (075h),a		;4ac5
	ret po			;4ac7
	ld c,l			;4ac8
	ld sp,hl		;4ac9
	ld h,07fh		;4aca
	set 7,a			;4acc
	ld a,(hl)		;4ace
	ld sp,03fa7h		;4acf
	ld (0c731h),a		;4ad2
	ld a,a			;4ad5
	ld sp,hl		;4ad6
	dec b			;4ad7
	adc a,h			;4ad8
	inc e			;4ad9
	call z,0c492h		;4ada
	ld e,l			;4add
	jp 0883ch		;4ade
	ld d,l			;4ae1
	rlca			;4ae2
	sub e			;4ae3
	pop af			;4ae4
	add hl,sp		;4ae5
	jp p,00939h		;4ae6
	dec hl			;4ae9
	jp 00733h		;4aea
	jp po,0030eh		;4aed
	call nz,sub_484dh	;4af0
	call nz,l7f4ah		;4af3
	and h			;4af6
	ld c,h			;4af7
	ld sp,hl		;4af8
	ld sp,0ff0fh		;4af9
	ld (de),a		;4afc
l4afdh:
	ld sp,07f93h		;4afd
	pop af			;4b00
	jp nc,0cd83h		;4b01
	ld hl,l4c10h		;4b04
	sub e			;4b07
	sub e			;4b08
	sbc a,c			;4b09
	call z,0cc99h		;4b0a
	djnz l4b42h		;4b0d
	ld (0452fh),hl		;4b0f
	rra			;4b12
	adc a,0c5h		;4b13
	jr z,l4ab0h		;4b15
	ld (bc),a		;4b17
	add hl,sp		;4b18
	add hl,sp		;4b19
	inc sp			;4b1a
	jp nz,0f2b1h		;4b1b
	defb 0ddh,0eeh,04dh ;illegal sequence	;4b1e
	ld c,d			;4b21
	ld c,h			;4b22
	call nz,0037fh		;4b23
	ld sp,hl		;4b26
	ld sp,02307h		;4b27
	rst 38h			;4b2a
	ccf			;4b2b
	ld sp,l7fc7h		;4b2c
	ld sp,hl		;4b2f
	ld bc,000f1h		;4b30
	ld d,b			;4b33
	jp 014cch		;4b34
	ld b,(hl)		;4b37
	sbc a,h			;4b38
	add a,b			;4b39
	ld c,(hl)		;4b3a
	call z,02393h		;4b3b
	ld (0e121h),hl		;4b3e
	ld e,h			;4b41
l4b42h:
	add hl,sp		;4b42
	sbc a,00ch		;4b43
	ld (hl),c		;4b45
	ret			;4b46
	pop de			;4b47
	inc d			;4b48
	rlca			;4b49
	ld (0f21eh),a		;4b4a
	inc bc			;4b4d
	ld c,l			;4b4e
l4b4fh:
	ld c,c			;4b4f
	sub h			;4b50
	sub 038h		;4b51
	call p,0497ah		;4b53
	ld sp,033b9h		;4b56
	ld sp,0399fh		;4b59
	di			;4b5c
	ld sp,0ff1dh		;4b5d
	ld a,048h		;4b60
	ret po			;4b62
	ld (bc),a		;4b63
	ret			;4b64
	nop			;4b65
	ret			;4b66
	call z,02232h		;4b67
	add hl,sp		;4b6a
	sbc a,h			;4b6b
	call z,08899h		;4b6c
	cp 0f1h			;4b6f
	rst 38h			;4b71
	nop			;4b72
	rra			;4b73
	ld (0cc99h),hl		;4b74
	ret			;4b77
	sub e			;4b78
	ld (00423h),hl		;4b79
	call z,0909ch		;4b7c
	rst 8			;4b7f
	jr nz,l4b4fh		;4b80
	or 094h			;4b82
	rlca			;4b84
	ld b,b			;4b85
	call z,004cch		;4b86
	ld c,c			;4b89
	ld sp,00aa5h		;4b8a
	ld sp,l7dc4h		;4b8d
	pop af			;4b90
	inc (hl)		;4b91
	inc sp			;4b92
	sbc a,c			;4b93
	ld sp,0f321h		;4b94
	call p,0af31h		;4b97
	rst 38h			;4b9a
	jp z,00c0ah		;4b9b
	inc a			;4b9e
	inc a			;4b9f
	ret			;4ba0
	ld a,a			;4ba1
	add a,b			;4ba2
	inc h			;4ba3
	sub e			;4ba4
	cp a			;4ba5
	ld b,c			;4ba6
	cpl			;4ba7
	ld e,01fh		;4ba8
	rra			;4baa
	ld a,d			;4bab
	ld d,h			;4bac
	add hl,bc		;4bad
	dec c			;4bae
	adc a,a			;4baf
	add a,(hl)		;4bb0
	jp 01ac3h		;4bb1
	halt			;4bb4
	ld c,l			;4bb5
	inc a			;4bb6
	ld e,0bch		;4bb7
	set 0,e			;4bb9
	ld sp,00ab3h		;4bbb
	sub e			;4bbe
	ld sp,02151h		;4bbf
	or d			;4bc2
	inc l			;4bc3
	di			;4bc4
	ld b,031h		;4bc5
	ld a,e			;4bc7
	ld (l6731h),a		;4bc8
	rst 38h			;4bcb
	ex (sp),hl		;4bcc
	jp z,02abbh		;4bcd
	sbc a,h			;4bd0
	add hl,sp		;4bd1
	ld (hl),b		;4bd2
	ld sp,hl		;4bd3
	ld (hl),b		;4bd4
	ld (0861fh),hl		;4bd5
	ld c,h			;4bd8
	pop af			;4bd9
	pop hl			;4bda
	jp p,l640ah		;4bdb
	ld c,061h		;4bde
	ret			;4be0
	halt			;4be1
l4be2h:
	ret nz			;4be2
	adc a,076h		;4be3
	ld a,a			;4be5
	ld e,c			;4be6
	dec a			;4be7
	sub l			;4be8
	jp 03631h		;4be9
	dec bc			;4bec
	or h			;4bed
	jr nz,l4be2h		;4bee
	di			;4bf0
	inc sp			;4bf1
	rra			;4bf2
	ld c,c			;4bf3
	ccf			;4bf4
	rlca			;4bf5
	cpl			;4bf6
	ld sp,08123h		;4bf7
	rla			;4bfa
	ld sp,l7fafh		;4bfb
	ex (sp),hl		;4bfe
	xor b			;4bff
	ld b,b			;4c00
	jp 0c324h		;4c01
	call z,0113ch		;4c04
	ld sp,hl		;4c07
	jp z,l7bb1h		;4c08
	cp 0a1h			;4c0b
	ld e,0beh		;4c0d
	ld (de),a		;4c0f
l4c10h:
	ld a,e			;4c10
	ld d,(hl)		;4c11
	ld b,087h		;4c12
	add a,l			;4c14
	call z,0d73ch		;4c15
	rrca			;4c18
	inc b			;4c19
	ld c,l			;4c1a
	inc bc			;4c1b
	sub l			;4c1c
	ld e,c			;4c1d
	ld sp,00cd7h		;4c1e
	add a,d			;4c21
	ld (080f1h),a		;4c22
	ld b,h			;4c25
	di			;4c26
	dec b			;4c27
	inc sp			;4c28
	ld de,0f231h		;4c29
	rst 38h			;4c2c
	ld b,039h		;4c2d
	sbc a,c			;4c2f
	ld sp,000ebh		;4c30
	ret m			;4c33
	inc bc			;4c34
	xor c			;4c35
	sbc a,c			;4c36
	sbc a,d			;4c37
	ld c,l			;4c38
	inc b			;4c39
	adc a,h			;4c3a
	ret nz			;4c3b
	jp 0e1feh		;4c3c
	ld hl,0f8eeh		;4c3f
	ld (081efh),hl		;4c42
	dec hl			;4c45
	cp 0a2h			;4c46
	add a,e			;4c48
	ld l,l			;4c49
	rst 38h			;4c4a
	exx			;4c4b
	ld b,054h		;4c4c
	ld bc,08780h		;4c4e
	inc a			;4c51
	inc c			;4c52
	call 0262eh		;4c53
	ld a,h			;4c56
	ld sp,00e5ah		;4c57
	inc sp			;4c5a
	inc d			;4c5b
	cpl			;4c5c
	inc de			;4c5d
	inc hl			;4c5e
l4c5fh:
	jp p,0b451h		;4c5f
	dec b			;4c62
	ld de,0ff12h		;4c63
	xor a			;4c66
	ld e,c			;4c67
	sub d			;4c68
	ld sp,l7df1h		;4c69
	nop			;4c6c
	ld a,c			;4c6d
	ret nc			;4c6e
	adc a,c			;4c6f
	ld (hl),a		;4c70
	ld c,l			;4c71
	and h			;4c72
	ld c,d			;4c73
	ld d,d			;4c74
	cp 0aah			;4c75
	ld de,08af8h		;4c77
	add a,c			;4c7a
	ld a,l			;4c7b
	ld d,c			;4c7c
	rst 38h			;4c7d
	rst 38h			;4c7e
	adc a,d			;4c7f
	jr l4c9dh		;4c80
	sbc a,c			;4c82
	ex af,af'		;4c83
	jp p,0d07fh		;4c84
	ld (de),a		;4c87
	ld c,c			;4c88
	ld c,l			;4c89
	ld h,a			;4c8a
	ld (hl),a		;4c8b
	rst 30h			;4c8c
	ld a,031h		;4c8d
	call m,0290fh		;4c8f
	inc sp			;4c92
	ld a,e			;4c93
	add a,d			;4c94
	ld (bc),a		;4c95
	jp po,02311h		;4c96
	inc de			;4c99
	ld l,0a2h		;4c9a
	cp (hl)			;4c9c
l4c9dh:
	add a,l			;4c9d
	or e			;4c9e
	ld sp,0fae1h		;4c9f
	nop			;4ca2
	out (077h),a		;4ca3
	nop			;4ca5
	ld a,d			;4ca6
	ld c,l			;4ca7
	rla			;4ca8
	ld b,b			;4ca9
	jp 0c927h		;4caa
	pop bc			;4cad
	ld c,e			;4cae
	rra			;4caf
	pop af			;4cb0
	cp l			;4cb1
	and h			;4cb2
	ld sp,hl		;4cb3
	ld c,c			;4cb4
	rst 28h			;4cb5
	ex af,af'		;4cb6
	ld de,l4afdh		;4cb7
	add a,b			;4cba
	in a,(0e0h)		;4cbb
	add hl,bc		;4cbd
	inc b			;4cbe
	ld c,d			;4cbf
	ld c,l			;4cc0
	and a			;4cc1
	ld h,09fh		;4cc2
	ld sp,03913h		;4cc4
	ld a,l			;4cc7
	ld l,d			;4cc8
	add a,d			;4cc9
	ld bc,0f311h		;4cca
l4ccdh:
	cpl			;4ccd
	pop af			;4cce
	cp (hl)			;4ccf
	rra			;4cd0
	ld sp,0a584h		;4cd1
	add a,h			;4cd4
	and e			;4cd5
	sbc a,c			;4cd6
l4cd7h:
	ld sp,0fce2h		;4cd7
	ld a,a			;4cda
	ld bc,04488h		;4cdb
	jr nc,$-1		;4cde
	ld sp,032c3h		;4ce0
	ret m			;4ce3
	djnz l4cd7h		;4ce4
	rra			;4ce6
	cpl			;4ce7
	ld b,d			;4ce8
	rst 28h			;4ce9
	ld (hl),l		;4cea
	ld e,0b1h		;4ceb
	ld (0b88ah),hl		;4ced
	xor h			;4cf0
	adc a,h			;4cf1
	ld d,b			;4cf2
	inc a			;4cf3
	add a,c			;4cf4
	inc bc			;4cf5
	ld l,b			;4cf6
	ld b,h			;4cf7
	jp p,0f797h		;4cf8
	ld a,a			;4cfb
	and 031h		;4cfc
	cp 078h			;4cfe
	xor b			;4d00
	ld (hl),h		;4d01
	cp 090h			;4d02
	add a,c			;4d04
l4d05h:
	ld sp,03633h		;4d05
	ccf			;4d08
	rst 38h			;4d09
	ld a,(hl)		;4d0a
	ld a,a			;4d0b
	ret m			;4d0c
	ld sp,0ff65h		;4d0d
	xor 090h		;4d10
	and a			;4d12
	adc a,c			;4d13
	ld c,h			;4d14
	ld (0c905h),hl		;4d15
	call z,0f7b2h		;4d18
	pop af			;4d1b
	ld d,c			;4d1c
	ld e,0f5h		;4d1d
	add hl,de		;4d1f
	call 02228h		;4d20
	jp z,08a05h		;4d23
	jp nz,09322h		;4d26
	call po,sub_50a1h	;4d29
	call nz,02598h		;4d2c
	rst 8			;4d2f
	ld sp,l7ac3h		;4d30
	sbc a,b			;4d33
	ld a,a			;4d34
	di			;4d35
	ld b,h			;4d36
	or e			;4d37
	jp m,08913h		;4d38
sub_4d3bh:
	cp h			;4d3b
	inc de			;4d3c
	add a,b			;4d3d
	ld a,c			;4d3e
	ld e,09fh		;4d3f
	ld sp,00017h		;4d41
	ret po			;4d44
	ld h,h			;4d45
	sub 055h		;4d46
	or h			;4d48
sub_4d49h:
	call 0ddc1h		;4d49
	rst 38h			;4d4c
	ld sp,hl		;4d4d
	ld (hl),d		;4d4e
	dec de			;4d4f
	ld sp,hl		;4d50
	ld d,d			;4d51
	call 02f55h		;4d52
	adc a,c			;4d55
	jr z,$+49		;4d56
	xor l			;4d58
	ld de,02bcdh		;4d59
	ld a,(de)		;4d5c
	call 031beh		;4d5d
	add a,l			;4d60
	ld (00af0h),hl		;4d61
	ld (de),a		;4d64
	xor e			;4d65
	ld b,d			;4d66
l4d67h:
	ld hl,0acb3h		;4d67
	and e			;4d6a
	ld hl,0b33fh		;4d6b
	ex af,af'		;4d6e
	cp (iy+031h)		;4d6f
	adc a,a			;4d72
	nop			;4d73
	xor (hl)		;4d74
	call z,sub_5022h	;4d75
	ld d,b			;4d78
	add hl,sp		;4d79
	cp c			;4d7a
	pop de			;4d7b
	rst 8			;4d7c
	di			;4d7d
	ld l,c			;4d7e
	ld c,l			;4d7f
	sub c			;4d80
	ei			;4d81
	ld c,(hl)		;4d82
	defb 0fdh,02ch ;inc iyl	;4d83
	pop hl			;4d85
	adc a,05eh		;4d86
	inc e			;4d88
	ret			;4d89
	rla			;4d8a
	ret			;4d8b
	dec b			;4d8c
	dec de			;4d8d
l4d8eh:
	call 0311fh		;4d8e
	ld c,l			;4d91
	ld sp,hl		;4d92
	and c			;4d93
	rst 38h			;4d94
	inc de			;4d95
	or e			;4d96
	add a,d			;4d97
	inc sp			;4d98
	jr nc,$-108		;4d99
	add a,d			;4d9b
	xor (hl)		;4d9c
	and a			;4d9d
	sbc a,h			;4d9e
	ld sp,0ffd3h		;4d9f
	cpl			;4da2
	ld e,c			;4da3
l4da4h:
	jr nc,l4dfbh		;4da4
	inc sp			;4da6
	ld h,d			;4da7
	or (hl)			;4da8
	ld d,h			;4da9
	ld c,(hl)		;4daa
	call p,02e82h		;4dab
	cp e			;4dae
	pop hl			;4daf
	call m,08297h		;4db0
	ld (hl),b		;4db3
	ld hl,062c0h		;4db4
	ld e,a			;4db7
	call po,sub_6742h	;4db8
	ld d,l			;4dbb
	inc bc			;4dbc
	ld c,d			;4dbd
	rst 38h			;4dbe
	ld e,(hl)		;4dbf
	rrca			;4dc0
	ld sp,01f02h		;4dc1
	add hl,sp		;4dc4
	ld sp,hl		;4dc5
	ld h,b			;4dc6
	ex (sp),hl		;4dc7
	ld sp,0f2e3h		;4dc8
	ld d,c			;4dcb
	inc sp			;4dcc
	add a,c			;4dcd
	or (hl)			;4dce
	ld h,e			;4dcf
l4dd0h:
	inc hl			;4dd0
	ld sp,0a7e5h		;4dd1
	rst 38h			;4dd4
	cp (hl)			;4dd5
	set 0,a			;4dd6
	dec b			;4dd8
	or a			;4dd9
	rlc e			;4dda
	ld c,l			;4ddc
	cp a			;4ddd
sub_4ddeh:
	push bc			;4dde
	jp nz,00982h		;4ddf
	ld de,l4ccdh		;4de2
	cp 029h			;4de5
sub_4de7h:
	rlca			;4de7
	add a,b			;4de8
	ret nz			;4de9
	dec b			;4dea
	cp 0f0h			;4deb
	inc c			;4ded
	ld c,e			;4dee
	jr nc,l4e0ah		;4def
	ld d,b			;4df1
	rst 8			;4df2
	dec hl			;4df3
	rst 38h			;4df4
	rst 18h			;4df5
	ld sp,0cfc4h		;4df6
	inc hl			;4df9
	inc (hl)		;4dfa
l4dfbh:
	inc hl			;4dfb
	ld sp,02bafh		;4dfc
	add hl,de		;4dff
	ld (00782h),a		;4e00
	cpl			;4e03
	ccf			;4e04
	jp p,0cb31h		;4e05
	ld a,a			;4e08
	rst 30h			;4e09
l4e0ah:
	djnz l4e83h		;4e0a
	ld b,e			;4e0c
	jr nc,l4da4h		;4e0d
	ld e,h			;4e0f
	add hl,bc		;4e10
	add a,h			;4e11
	ld c,l			;4e12
	cp e			;4e13
	or b			;4e14
	ld (bc),a		;4e15
	rst 38h			;4e16
	ld b,h			;4e17
	rra			;4e18
	ld de,096fdh		;4e19
	call m,08ab8h		;4e1c
	ld c,0f0h		;4e1f
	dec bc			;4e21
	ld hl,004c9h		;4e22
	sub b			;4e25
	push bc			;4e26
	ld e,c			;4e27
	ld l,d			;4e28
	inc (hl)		;4e29
	xor a			;4e2a
	rst 38h			;4e2b
	ld l,a			;4e2c
	ld sp,00f23h		;4e2d
	ld (0c6fah),hl		;4e30
	ccf			;4e33
	or h			;4e34
	inc bc			;4e35
	sbc a,a			;4e36
	ld e,013h		;4e37
	add a,l			;4e39
	or c			;4e3a
	jr nz,$+51		;4e3b
	jp p,0ffcbh		;4e3d
	call c,sub_4374h	;4e40
	ld c,h			;4e43
	cpl			;4e44
	ld d,l			;4e45
	ld d,l			;4e46
	jp 0044dh		;4e47
	or l			;4e4a
	nop			;4e4b
	cpl			;4e4c
	ld a,c			;4e4d
	xor 091h		;4e4e
	add a,c			;4e50
	ld (de),a		;4e51
sub_4e52h:
	defb 0fdh,068h ;ld iyl,b	;4e52
	cpl			;4e54
	ld c,0b1h		;4e55
	nop			;4e57
	ld e,e			;4e58
	ld (bc),a		;4e59
	call po,0194ah		;4e5a
	ld l,e			;4e5d
	dec h			;4e5e
	call nz,0ff47h		;4e5f
	rst 10h			;4e62
	ld sp,0f4cfh		;4e63
	inc l			;4e66
	add a,d			;4e67
	ld (hl),0b2h		;4e68
	ld hl,(0fb99h)		;4e6a
	call m,0b193h		;4e6d
	ld sp,0d7e6h		;4e70
	rst 38h			;4e73
	cp b			;4e74
	and h			;4e75
	jr nc,l4ea1h		;4e76
	add hl,bc		;4e78
	ret			;4e79
	inc sp			;4e7a
	call 004c8h		;4e7b
	ld d,b			;4e7e
	rrca			;4e7f
	ld b,l			;4e80
	ld e,0ffh		;4e81
l4e83h:
	defb 0fdh,054h ;ld d,iyh	;4e83
	call m,0fd9bh		;4e85
	add a,l			;4e88
	inc e			;4e89
	dec b			;4e8a
	rrca			;4e8b
	call 00439h		;4e8c
	ld a,b			;4e8f
	pop de			;4e90
	inc bc			;4e91
	ld l,e			;4e92
	ld c,c			;4e93
	rst 38h			;4e94
	xor a			;4e95
	ld sp,03fa0h		;4e96
	ld sp,005f3h		;4e99
	sbc a,a			;4e9c
	inc de			;4e9d
	add hl,sp		;4e9e
	rra			;4e9f
	inc hl			;4ea0
l4ea1h:
	cp 00fh			;4ea1
	call m,09b31h		;4ea3
	ld a,a			;4ea6
	defb 0edh ;next byte illegal after ed	;4ea7
	ld (bc),a		;4ea8
	sbc a,c			;4ea9
	and h			;4eaa
	ret nz			;4eab
	ld e,h			;4eac
	dec b			;4ead
	ld e,e			;4eae
	or d			;4eaf
	add a,(hl)		;4eb0
	call z,00a4dh		;4eb1
	ld d,l			;4eb4
	ld bc,0fdebh		;4eb5
	ld (0fc81h),hl		;4eb8
	add a,c			;4ebb
	sbc a,c			;4ebc
	ld bc,00ef0h		;4ebd
	call 0e855h		;4ec0
	ld (bc),a		;4ec3
	or l			;4ec4
	ld d,b			;4ec5
	push bc			;4ec6
	rst 8			;4ec7
	ret			;4ec8
	dec h			;4ec9
	sbc a,d			;4eca
	ld sp,006f3h		;4ecb
	inc bc			;4ece
	pop af			;4ecf
	cpl			;4ed0
	ld (de),a		;4ed1
	jp m,08818h		;4ed2
	ld c,a			;4ed5
	ld b,0ffh		;4ed6
	ld sp,0009fh		;4ed8
	xor 022h		;4edb
	ld b,e			;4edd
	nop			;4ede
	or d			;4edf
	sub b			;4ee0
	ret z			;4ee1
	ld e,h			;4ee2
	inc l			;4ee3
	sub a			;4ee4
	ld c,l			;4ee5
	or b			;4ee6
	cp c			;4ee7
	ld d,e			;4ee8
	ld (hl),a		;4ee9
	ret m			;4eea
l4eebh:
	ld d,c			;4eeb
	rst 8			;4eec
	add a,l			;4eed
	ld de,01f1bh		;4eee
	add a,075h		;4ef1
	ld h,d			;4ef3
	call po,0c5d0h		;4ef4
	ld e,e			;4ef7
	cp e			;4ef8
	adc a,b			;4ef9
	ret pe			;4efa
	nop			;4efb
	inc (hl)		;4efc
	jp m,0ae31h		;4efd
	or 0aah			;4f00
	ei			;4f02
	ld sp,hl		;4f03
	rst 20h			;4f04
	ld (l4fb1h),a		;4f05
	rst 38h			;4f08
	ld sp,0fcabh		;4f09
	ld e,0b0h		;4f0c
	inc a			;4f0e
	dec b			;4f0f
	sbc a,h			;4f10
	dec b			;4f11
	nop			;4f12
	cp e			;4f13
	cp e			;4f14
	ld d,b			;4f15
	inc a			;4f16
	ret nz			;4f17
	ld e,e			;4f18
	cpl			;4f19
	dec h			;4f1a
	ld l,d			;4f1b
	inc c			;4f1c
	push af			;4f1d
	sub c			;4f1e
	dec de			;4f1f
	rst 28h			;4f20
	add a,l			;4f21
	ld c,c			;4f22
	rst 38h			;4f23
	ld c,l			;4f24
	add a,e			;4f25
	or l			;4f26
	inc c			;4f27
	jp l4319h		;4f28
	ret			;4f2b
	ld d,b			;4f2c
	jp 03149h		;4f2d
	jp (hl)			;4f30
	or d			;4f31
	push af			;4f32
	call m,00228h		;4f33
	ld (03e3fh),a		;4f36
	sbc a,a			;4f39
	ld (09f31h),a		;4f3a
	nop			;4f3d
	xor l			;4f3e
	sub e			;4f3f
	or b			;4f40
	ld (04859h),hl		;4f41
	xor b			;4f44
	inc (hl)		;4f45
	adc a,070h		;4f46
	ld (bc),a		;4f48
	ei			;4f49
	nop			;4f4a
	ld c,c			;4f4b
	pop bc			;4f4c
	rst 38h			;4f4d
	add a,e			;4f4e
	or c			;4f4f
	jp po,0fff1h		;4f50
	ld (hl),h		;4f53
	call c,04765h		;4f54
	call z,01745h		;4f57
	ld d,d			;4f5a
	inc h			;4f5b
	sub l			;4f5c
	call po,0397dh		;4f5d
	ld sp,08137h		;4f60
	ld e,d			;4f63
	djnz l4eebh		;4f64
	ld h,a			;4f66
	inc b			;4f67
	ld sp,l7ed5h		;4f68
	push af			;4f6b
	sub h			;4f6c
	inc sp			;4f6d
	push bc			;4f6e
	or (hl)			;4f6f
	ld b,(hl)		;4f70
	adc a,033h		;4f71
	or l			;4f73
	ld c,l			;4f74
	call m,0d06ch		;4f75
	ld b,(hl)		;4f78
	ld hl,097feh		;4f79
	call z,0ff5dh		;4f7c
	call c,0cc44h		;4f7f
	ld e,c			;4f82
	ld c,l			;4f83
	ld h,(hl)		;4f84
	ld b,l			;4f85
	call z,sub_43e4h	;4f86
	ld e,h			;4f89
	in a,(06fh)		;4f8a
	ld sp,0f6a7h		;4f8c
	ld d,d			;4f8f
	call m,001a9h		;4f90
	ld (0f431h),a		;4f93
	ld a,(iy+061h)		;4f96
	ld (0003ch),a		;4f99
	ld d,b			;4f9c
	ld c,l			;4f9d
	xor h			;4f9e
	ld d,l			;4f9f
	cp b			;4fa0
	ld bc,02f50h		;4fa1
	jr nz,l4ff6h		;4fa4
	nop			;4fa6
	add a,d			;4fa7
	sbc a,c			;4fa8
	call m,0fccah		;4fa9
	ld d,b			;4fac
	nop			;4fad
	pop hl			;4fae
	or l			;4faf
	inc h			;4fb0
l4fb1h:
	dec b			;4fb1
	inc bc			;4fb2
	jp nc,l4dd0h		;4fb3
	dec b			;4fb6
	nop			;4fb7
	jp 0fa23h		;4fb8
	ld sp,0f7bbh		;4fbb
	ld a,d			;4fbe
	adc a,e			;4fbf
	ld a,l			;4fc0
	inc l			;4fc1
	ld sp,0001fh		;4fc2
	ld e,e			;4fc5
	inc sp			;4fc6
	jp po,0cacdh		;4fc7
	ld b,h			;4fca
	ld e,h			;4fcb
	adc a,091h		;4fcc
	cp c			;4fce
	sub d			;4fcf
	inc (hl)		;4fd0
	ld e,e			;4fd1
	cp a			;4fd2
	pop de			;4fd3
	dec de			;4fd4
	jp m,l7f99h		;4fd5
l4fd8h:
	dec h			;4fd8
	ret nz			;4fd9
	call z,sub_6628h	;4fda
	pop hl			;4fdd
	sub d			;4fde
	dec b			;4fdf
	call z,0c535h		;4fe0
	ret nc			;4fe3
	rlca			;4fe4
	jp 03922h		;4fe5
	ld sp,l69d3h		;4fe8
	jp 03132h		;4feb
	jp (hl)			;4fee
	jp m,0db00h		;4fef
	ld (l49b3h),a		;4ff2
	xor h			;4ff5
l4ff6h:
	ld c,c			;4ff6
	ld h,l			;4ff7
	inc b			;4ff8
	ld c,l			;4ff9
	ld b,b			;4ffa
	sub l			;4ffb
	ld c,l			;4ffc
	add a,c			;4ffd
	inc de			;4ffe
	ld a,h			;4fff
	pop hl			;5000
	jp m,0078bh		;5001
	inc c			;5004
	ld (hl),d		;5005
	ld c,l			;5006
	push hl			;5007
	dec hl			;5008
	inc bc			;5009
	inc b			;500a
	cpl			;500b
	daa			;500c
	ld sp,0c3a5h		;500d
	sub l			;5010
	ld hl,(0fa3ch)		;5011
	ld sp,l7f7eh		;5014
	sbc a,0c5h		;5017
	jp z,00435h		;5019
	cp c			;501c
	cp b			;501d
	inc sp			;501e
	ld (hl),052h		;501f
	cp e			;5021
sub_5022h:
	ld e,h			;5022
	dec c			;5023
	rst 0			;5024
	ld d,c			;5025
	add a,e			;5026
	srl c			;5027
	add a,058h		;5029
	inc c			;502b
	set 3,d			;502c
	rla			;502e
	ld l,059h		;502f
	push de			;5031
	rst 8			;5032
	ld a,a			;5033
	ccf			;5034
	ld sp,l7f83h		;5035
	ld a,(hl)		;5038
	ld sp,000afh		;5039
	xor l			;503c
	inc hl			;503d
	pop bc			;503e
	rst 30h			;503f
	nop			;5040
	ld (hl),e		;5041
	rst 10h			;5042
	adc a,d			;5043
	ld e,e			;5044
	pop bc			;5045
	ld d,h			;5046
	adc a,0feh		;5047
	adc a,d			;5049
	inc l			;504a
	ld e,b			;504b
	add hl,bc		;504c
	ld h,0b0h		;504d
	ret p			;504f
	jp 01cf0h		;5050
	sub a			;5053
	call 0311fh		;5054
l5057h:
	adc a,e			;5057
	dec d			;5058
	rra			;5059
	sbc a,h			;505a
	ld sp,07f57h		;505b
	ret c			;505e
	ld (02278h),a		;505f
	nop			;5062
	cpl			;5063
	sub e			;5064
	ret nz			;5065
	inc d			;5066
	cp e			;5067
	rst 8			;5068
	ld (de),a		;5069
	set 4,c			;506a
	ld a,a			;506c
	nop			;506d
	sbc a,0b0h		;506e
	ld d,d			;5070
	jp po,03978h		;5071
	dec de			;5074
	push bc			;5075
	call z,0c29bh		;5076
	nop			;5079
	nop			;507a
	ld sp,hl		;507b
	ld sp,0c959h		;507c
	ld a,a			;507f
	ld sp,l53f1h		;5080
	rst 38h			;5083
	jp po,00079h		;5084
	daa			;5087
	add hl,sp		;5088
	cp e			;5089
	ld a,(de)		;508a
	cp e			;508b
	pop bc			;508c
	sbc a,c			;508d
	add a,d			;508e
	daa			;508f
	call z,sub_47cbh	;5090
	ld d,b			;5093
	inc l			;5094
	sub e			;5095
	dec e			;5096
	sbc a,b			;5097
	ld (bc),a		;5098
	ld de,03e20h		;5099
	ld (03100h),hl		;509c
	ld h,e			;509f
	add hl,de		;50a0
sub_50a1h:
	sub e			;50a1
	ld sp,0fce3h		;50a2
	ld a,a			;50a5
	jr c,l5057h		;50a6
	pop af			;50a8
	adc a,h			;50a9
	or c			;50aa
	adc a,e			;50ab
	call nz,08f4dh		;50ac
	ei			;50af
	inc d			;50b0
	call z,0cccbh		;50b1
	ret po			;50b4
	sbc a,(hl)		;50b5
	dec e			;50b6
	ld b,a			;50b7
	ld hl,098eeh		;50b8
	rrca			;50bb
	ret p			;50bc
	ld sp,0f398h		;50bd
	ld sp,031f8h		;50c0
	rst 30h			;50c3
	add a,d			;50c4
	jp p,00039h		;50c5
	inc d			;50c8
	sub d			;50c9
	ld (0cf32h),hl		;50ca
	sub e			;50cd
	adc a,03ch		;50ce
	jp nz,09dfch		;50d0
	call z,0d699h		;50d3
	ld (03c6bh),hl		;50d6
	add hl,hl		;50d9
	ld e,062h		;50da
	rst 38h			;50dc
	ld sp,hl		;50dd
	sbc a,d			;50de
	rra			;50df
sub_50e0h:
	ld sp,09ff9h		;50e0
	ld a,a			;50e3
	and b			;50e4
	sub d			;50e5
	dec l			;50e6
	inc a			;50e7
	call z,028b8h		;50e8
	cp c			;50eb
	ld e,d			;50ec
	inc hl			;50ed
	ret c			;50ee
	ld de,0cc5ch		;50ef
	bit 7,d			;50f2
	ld c,l			;50f4
	inc bc			;50f5
	nop			;50f6
	ld (0be9fh),hl		;50f7
	ret p			;50fa
	ld sp,025f3h		;50fb
	rst 38h			;50fe
	di			;50ff
	jp pe,0d54dh		;5100
	push hl			;5103
	add hl,hl		;5104
	rlca			;5105
	ret			;5106
	inc sp			;5107
	add hl,hl		;5108
	dec e			;5109
	ret pe			;510a
	nop			;510b
	ld h,a			;510c
	add hl,hl		;510d
	inc bc			;510e
	ld sp,07ee6h		;510f
	ld a,a			;5112
	dec de			;5113
	rst 38h			;5114
	nop			;5115
	ret			;5116
	di			;5117
	dec a			;5118
	rst 10h			;5119
	ld h,e			;511a
	ld (hl),a		;511b
	ld c,a			;511c
	ret c			;511d
	sbc a,000h		;511e
	jr nz,l5131h		;5120
	rra			;5122
	sbc a,a			;5123
	rst 28h			;5124
	nop			;5125
	call m,0c831h		;5126
	rst 38h			;5129
	defb 0fdh,005h,099h ;illegal sequence	;512a
	push de			;512d
	ld (hl),l		;512e
	rlca			;512f
	rst 10h			;5130
l5131h:
	dec e			;5131
	xor l			;5132
	rst 38h			;5133
	dec b			;5134
	cp 0ebh			;5135
	rst 38h			;5137
	dec sp			;5138
	defb 0fdh,031h,0bdh ;illegal sequence	;5139
	cp 0f8h			;513c
	or (hl)			;513e
	ld a,(03d05h)		;513f
	add hl,sp		;5142
	rlca			;5143
	ld (hl),e		;5144
	inc b			;5145
	jp nc,017b3h		;5146
	push de			;5149
	rrca			;514a
	sub a			;514b
	pop de			;514c
	ld (de),a		;514d
	nop			;514e
	ld sp,091f9h		;514f
	rst 38h			;5152
	ret m			;5153
	di			;5154
	or l			;5155
	ld d,c			;5156
	ret z			;5157
	rlca			;5158
	ret m			;5159
	jr nz,l515ch		;515a
l515ch:
	jr nz,l5160h		;515c
	ret p			;515e
	nop			;515f
l5160h:
	call m,0cc31h		;5160
	rst 38h			;5163
	ld a,h			;5164
	ld b,c			;5165
	sub e			;5166
	sub e			;5167
	sbc a,c			;5168
	xor h			;5169
	or h			;516a
	nop			;516b
	ret			;516c
	xor e			;516d
	jp 0a6f6h		;516e
	sbc a,h			;5171
	ex af,af'		;5172
	inc a			;5173
	inc c			;5174
	jp z,0cbf3h		;5175
	dec d			;5178
	ret z			;5179
	ld hl,0f823h		;517a
	dec d			;517d
	rst 38h			;517e
	dec hl			;517f
	ld (bc),a		;5180
	rst 38h			;5181
	cp a			;5182
	inc e			;5183
	inc sp			;5184
	inc a			;5185
	ld e,h			;5186
	inc sp			;5187
	inc (hl)		;5188
	xor l			;5189
	add a,h			;518a
	sub e			;518b
	inc hl			;518c
	dec a			;518d
	pop hl			;518e
	ld (hl),d		;518f
	add hl,sp		;5190
	exx			;5191
	inc c			;5192
	ret			;5193
	ld (0c533h),a		;5194
	inc a			;5197
	dec d			;5198
	adc a,a			;5199
	ld e,012h		;519a
	dec d			;519c
	adc a,a			;519d
	dec hl			;519e
	ret p			;519f
	ccf			;51a0
	ld a,a			;51a1
	dec e			;51a2
	ret			;51a3
	and a			;51a4
	rst 10h			;51a5
	xor b			;51a6
	rlca			;51a7
	sbc a,h			;51a8
	call z,0e3d5h		;51a9
	pop af			;51ac
	or 0a9h			;51ad
	or c			;51af
	inc bc			;51b0
	call z,093c9h		;51b1
	ld (0a7dfh),hl		;51b4
	sbc a,h			;51b7
	dec d			;51b8
	sub c			;51b9
	dec de			;51ba
	ld (de),a		;51bb
	dec d			;51bc
	pop af			;51bd
	cp 02bh			;51be
	rlca			;51c0
	ld a,a			;51c1
	ex (sp),hl		;51c2
	and d			;51c3
	inc a			;51c4
	xor l			;51c5
	sbc a,d			;51c6
	xor b			;51c7
	xor e			;51c8
	sub b			;51c9
	ld (0152fh),a		;51ca
	ld e,01fh		;51cd
	rra			;51cf
	jr c,$+11		;51d0
	call nc,0c3aah		;51d2
	jp p,01f15h		;51d5
	pop af			;51d8
	ld hl,015f2h		;51d9
	rla			;51dc
	dec hl			;51dd
	ret po			;51de
	ld a,(hl)		;51df
	ld a,a			;51e0
	dec a			;51e1
	add hl,hl		;51e2
	xor b			;51e3
	ld c,b			;51e4
	cpl			;51e5
	and b			;51e6
	ld c,l			;51e7
	ld bc,0f1f1h		;51e8
	pop hl			;51eb
	jp p,00acch		;51ec
	ld c,0b0h		;51ef
	ld d,c			;51f1
	dec d			;51f2
	ld de,0ad22h		;51f3
	ld de,0f317h		;51f6
	dec (hl)		;51f9
	call p,0d129h		;51fa
	ld e,h			;51fd
	ld de,0fe15h		;51fe
	dec hl			;5201
	ld b,a			;5202
	ld a,a			;5203
	ex (sp),hl		;5204
	call 02eb6h		;5205
	add a,h			;5208
	ld hl,l4fb1h		;5209
	pop af			;520c
	inc c			;520d
	jp p,0be1eh		;520e
	ld (de),a		;5211
	ld b,a			;5212
	ld d,e			;5213
	jp p,0c401h		;5214
	ld d,a			;5217
	dec d			;5218
	sbc hl,bc		;5219
	inc c			;521b
	ld e,011h		;521c
	pop hl			;521e
	ld (de),a		;521f
	rla			;5220
	ld e,0bbh		;5221
	pop hl			;5223
	call m,0dac4h		;5224
l5227h:
	rst 20h			;5227
	dec hl			;5228
	ld d,(hl)		;5229
	rlca			;522a
	dec hl			;522b
	rrca			;522c
l522dh:
	cp h			;522d
	call z,02bc2h		;522e
	ld e,e			;5231
	rlca			;5232
	dec hl			;5233
	scf			;5234
	dec d			;5235
	dec hl			;5236
	sbc a,a			;5237
	ld a,a			;5238
	ret z			;5239
	halt			;523a
	ld (015d7h),a		;523b
l523eh:
	rra			;523e
	rst 28h			;523f
	ld d,l			;5240
	cp e			;5241
	ld de,00a83h		;5242
	rst 38h			;5245
	ld de,006f2h		;5246
	ld bc,0be9bh		;5249
	dec d			;524c
	jr z,l529ch		;524d
	rst 8			;524f
	and e			;5250
	out (02ah),a		;5251
	ld h,h			;5253
	ld e,05dh		;5254
	adc a,c			;5256
	exx			;5257
	cp (hl)			;5258
	dec d			;5259
	adc a,02bh		;525a
	adc a,d			;525c
	ret nz			;525d
	inc c			;525e
	adc a,02bh		;525f
	rst 20h			;5261
	add a,a			;5262
	pop bc			;5263
	dec hl			;5264
	xor h			;5265
	dec d			;5266
	pop bc			;5267
	and a			;5268
	ld h,015h		;5269
	jp nz,l5f2bh		;526b
	ld a,a			;526e
	sub e			;526f
	out (015h),a		;5270
	call z,05554h		;5272
	ld d,c			;5275
	rst 38h			;5276
	and e			;5277
	out (05eh),a		;5278
	jr z,l523eh		;527a
	adc a,e			;527c
	out (053h),a		;527d
	ld (hl),b		;527f
	dec d			;5280
	cp (hl)			;5281
	rra			;5282
	sub h			;5283
	call 015a4h		;5284
	ld e,d			;5287
	pop hl			;5288
	rst 28h			;5289
	call po,sub_5d88h	;528a
	dec d			;528d
	ld a,(bc)		;528e
	pop hl			;528f
	inc e			;5290
	nop			;5291
	ex de,hl		;5292
	add a,c			;5293
	rst 38h			;5294
	call m,0f0c5h		;5295
	inc c			;5298
	dec hl			;5299
	jp (hl)			;529a
	dec d			;529b
l529ch:
	pop hl			;529c
	dec hl			;529d
	push de			;529e
	rst 38h			;529f
	ld a,(hl)		;52a0
	ld b,l			;52a1
	or (hl)			;52a2
	inc de			;52a3
	jp nc,0f182h		;52a4
	or c			;52a7
	jp p,025b7h		;52a8
	rst 28h			;52ab
	ex af,af'		;52ac
	rst 38h			;52ad
	dec d			;52ae
	ld d,c			;52af
	cp (hl)			;52b0
	ld c,e			;52b1
	dec d			;52b2
	ld d,c			;52b3
	ret			;52b4
	ld d,l			;52b5
	ld h,(hl)		;52b6
	dec d			;52b7
l52b8h:
	ld c,l			;52b8
	ld d,c			;52b9
	dec d			;52ba
	rst 38h			;52bb
	adc a,(hl)		;52bc
	rra			;52bd
	dec d			;52be
	ld (hl),l		;52bf
	dec hl			;52c0
	call z,sub_78e1h	;52c1
	pop af			;52c4
	ld de,00fech		;52c5
	rst 28h			;52c8
	jp pe,02b79h		;52c9
	jp (hl)			;52cc
	dec d			;52cd
	ld e,01ch		;52ce
	dec d			;52d0
	rst 0			;52d1
	dec hl			;52d2
	rra			;52d3
	ld a,a			;52d4
	adc a,(hl)		;52d5
	jp 03245h		;52d6
	ret m			;52d9
	ld sp,02f29h		;52da
	ld a,e			;52dd
	pop bc			;52de
	sub h			;52df
	or c			;52e0
	cp e			;52e1
	or l			;52e2
	ld e,a			;52e3
	ret po			;52e4
	ld (0153ch),hl		;52e5
	cp b			;52e8
	ld (hl),a		;52e9
	dec d			;52ea
	dec de			;52eb
	ld hl,0e1ebh		;52ec
	dec d			;52ef
	xor 048h		;52f0
	ld (de),a		;52f2
	call c,02b15h		;52f3
	inc (hl)		;52f6
	inc e			;52f7
	ret nz			;52f8
	ld l,c			;52f9
	cp h			;52fa
	ld (bc),a		;52fb
l52fch:
	ld b,l			;52fc
	ld (de),a		;52fd
	rst 28h			;52fe
	dec hl			;52ff
	push hl			;5300
	dec d			;5301
	pop bc			;5302
	ex de,hl		;5303
	call pe,0bc15h		;5304
	dec hl			;5307
	cp 07fh			;5308
	add hl,sp		;530a
	add hl,sp		;530b
	cpl			;530c
	ret m			;530d
	add hl,sp		;530e
	ret			;530f
	inc sp			;5310
	jp p,00d63h		;5311
	jp po,l6911h		;5314
	xor h			;5317
	adc a,d			;5318
	ld l,l			;5319
	ld (l78bch),hl		;531a
	dec d			;531d
	rst 38h			;531e
	ld e,047h		;531f
	dec d			;5321
	rst 38h			;5322
	jr l5346h		;5323
	pop af			;5325
	dec d			;5326
	call nc,0fc2bh		;5327
	ld l,c			;532a
	or l			;532b
	ld c,h			;532c
	ld d,b			;532d
	in d,(c)		;532e
	ld c,d			;5330
	jr nz,l52b8h		;5331
	ld a,b			;5333
	dec hl			;5334
	or l			;5335
	call pe,01e15h		;5336
	dec d			;5339
	push hl			;533a
	rst 38h			;533b
	ld l,a			;533c
	sub c			;533d
	cp a			;533e
	dec (hl)		;533f
	dec a			;5340
	ret			;5341
	inc (hl)		;5342
	ld sp,hl		;5343
	and d			;5344
	cpl			;5345
l5346h:
	or a			;5346
	adc a,b			;5347
	rst 8			;5348
	ret z			;5349
	di			;534a
	sub e			;534b
	cpl			;534c
	ld de,015c9h		;534d
l5350h:
	ld (0b4f9h),hl		;5350
	adc a,(hl)		;5353
	ld c,l			;5354
	pop af			;5355
	rst 38h			;5356
	push hl			;5357
	ld c,c			;5358
	rst 20h			;5359
	ld a,(de)		;535a
	ld hl,015c6h		;535b
	sub d			;535e
	rst 30h			;535f
	ld (0e81eh),hl		;5360
	ld h,b			;5363
	dec b			;5364
	cp e			;5365
	ld d,b			;5366
	rst 8			;5367
	ld d,0c0h		;5368
	ld d,l			;536a
	or l			;536b
	ld l,c			;536c
	dec hl			;536d
	ld l,01fh		;536e
	ld sp,hl		;5370
	sub e			;5371
	dec d			;5372
	ld de,0bc2bh		;5373
	dec d			;5376
	jp z,l542bh		;5377
	or c			;537a
	dec d			;537b
	rst 38h			;537c
	ld sp,hl		;537d
	ld (de),a		;537e
	jr nc,l5350h		;537f
	rst 0			;5381
	pop de			;5382
	ld hl,l7bb9h		;5383
	add iy,sp		;5386
	di			;5388
	ld (de),a		;5389
	rst 38h			;538a
	jp z,l6b52h		;538b
	ret z			;538e
	dec d			;538f
	rst 38h			;5390
	call z,sub_62e7h	;5391
	push hl			;5394
	add a,h			;5395
	ld hl,l5ccfh		;5396
	dec d			;5399
	ld d,c			;539a
	ld a,(hl)		;539b
	and c			;539c
	ld b,h			;539d
	rst 38h			;539e
	nop			;539f
	ld b,d			;53a0
	ld d,l			;53a1
	ld l,c			;53a2
	jp nz,05bc0h		;53a3
	xor 025h		;53a6
	inc c			;53a8
	dec hl			;53a9
	dec e			;53aa
	ld d,l			;53ab
	jp pe,0516fh		;53ac
	dec d			;53af
	rst 38h			;53b0
	ld l,l			;53b1
	dec d			;53b2
	ld a,a			;53b3
	dec d			;53b4
	or l			;53b5
	dec hl			;53b6
	or b			;53b7
	and e			;53b8
	inc hl			;53b9
	ld a,a			;53ba
	pop af			;53bb
	rst 20h			;53bc
	or a			;53bd
	ld l,c			;53be
	call p,02e17h		;53bf
	push hl			;53c2
	ld d,d			;53c3
	call m,sub_50e0h	;53c4
	ld hl,l5fc0h		;53c7
	or l			;53ca
	ld de,0f115h		;53cb
	call m,07a6bh		;53ce
	ld e,c			;53d1
	adc a,01dh		;53d2
	ld (hl),h		;53d4
	dec d			;53d5
	ccf			;53d6
	xor b			;53d7
	ld de,0c4eah		;53d8
	ld a,a			;53db
	ld d,l			;53dc
	jp (hl)			;53dd
	ld (hl),c		;53de
	ld l,c			;53df
	sub h			;53e0
	dec e			;53e1
	ld bc,03133h		;53e2
	ld sp,027e1h		;53e5
	inc e			;53e8
	dec d			;53e9
	xor (hl)		;53ea
	pop bc			;53eb
	dec d			;53ec
	jp po,l7e92h		;53ed
	inc sp			;53f0
l53f1h:
	ld a,a			;53f1
	ld c,h			;53f2
	scf			;53f3
	jp nz,01e5dh		;53f4
	cp a			;53f7
	rst 38h			;53f8
	dec d			;53f9
	push bc			;53fa
	call po,0b0eah		;53fb
l53feh:
	dec b			;53fe
	ld e,c			;53ff
	cp 0c4h			;5400
	dec d			;5402
	add a,0d6h		;5403
	dec l			;5405
	rrca			;5406
	add a,d			;5407
	dec h			;5408
	add a,d			;5409
	and a			;540a
	dec d			;540b
	inc sp			;540c
	adc a,(hl)		;540d
	add a,c			;540e
	cp 012h			;540f
	call z,06905h		;5411
	call 0a200h		;5414
	dec h			;5417
	cp b			;5418
	xor c			;5419
	inc sp			;541a
	rst 38h			;541b
	di			;541c
	sbc a,e			;541d
	dec d			;541e
	jp 015cfh		;541f
	pop bc			;5422
l5423h:
	pop hl			;5423
	ld a,a			;5424
	ld sp,hl		;5425
	ld b,d			;5426
	cp e			;5427
	or b			;5428
	ld (bc),a		;5429
	pop hl			;542a
l542bh:
	ld sp,0fd11h		;542b
	dec h			;542e
	call m,0bbach		;542f
	ld b,b			;5432
	ret p			;5433
	dec bc			;5434
	ld hl,00c20h		;5435
	call nc,00115h		;5438
	defb 0edh ;next byte illegal after ed	;543b
	and (hl)		;543c
	dec d			;543d
	ld b,a			;543e
	inc de			;543f
	ei			;5440
	rra			;5441
	dec d			;5442
	ld d,d			;5443
	rst 28h			;5444
	add hl,hl		;5445
	ld hl,09a0dh		;5446
	ld b,a			;5449
	dec b			;544a
	ld a,a			;544b
	inc c			;544c
	ld d,b			;544d
	add a,c			;544e
	ret			;544f
	and e			;5450
	inc h			;5451
	rst 38h			;5452
	adc a,c			;5453
	sbc a,e			;5454
	ld hl,07a36h		;5455
	dec d			;5458
	ld (0922fh),hl		;5459
	ld a,(hl)		;545c
	inc hl			;545d
	ld a,a			;545e
	ld d,l			;545f
	or e			;5460
	ex af,af'		;5461
	cpl			;5462
	ld c,b			;5463
	xor 011h		;5464
	adc a,h			;5466
	defb 0edh ;next byte illegal after ed	;5467
	adc a,b			;5468
	xor 02fh		;5469
	or c			;546b
	ld (de),a		;546c
	nop			;546d
	ld e,e			;546e
	ld (bc),a		;546f
	rst 38h			;5470
	cp c			;5471
	dec d			;5472
	defb 0edh ;next byte illegal after ed	;5473
	add hl,hl		;5474
	dec d			;5475
	push bc			;5476
	sbc a,051h		;5477
l5479h:
	sbc a,(hl)		;5479
	ld (hl),b		;547a
	dec d			;547b
	or c			;547c
	ld c,b			;547d
	ld (de),a		;547e
	adc a,d			;547f
	jp p,00512h		;5480
	nop			;5483
	ld e,a			;5484
	ld l,c			;5485
	xor 069h		;5486
	dec bc			;5488
	ld e,e			;5489
	ld d,b			;548a
l548bh:
	ld d,l			;548b
l548ch:
	ld bc,l56a3h		;548c
	inc hl			;548f
	and h			;5490
	ld a,(de)		;5491
	add a,a			;5492
	sbc a,(hl)		;5493
	dec d			;5494
	ld c,c			;5495
	rrca			;5496
	and (hl)		;5497
	rrca			;5498
	ld (de),a		;5499
	jp p,0ca7fh		;549a
	adc a,h			;549d
	or e			;549e
	ld h,(hl)		;549f
	rrca			;54a0
	or e			;54a1
	ld l,d			;54a2
	or l			;54a3
	scf			;54a4
	cpl			;54a5
	pop de			;54a6
	ld (de),a		;54a7
	inc e			;54a8
	ret z			;54a9
	sbc a,e			;54aa
	ld a,a			;54ab
	dec d			;54ac
	sub d			;54ad
	sub (hl)		;54ae
	sbc a,h			;54af
	dec d			;54b0
	ld d,(hl)		;54b1
	add a,l			;54b2
	jr c,l54e1h		;54b3
	dec d			;54b5
	and (hl)		;54b6
	dec bc			;54b7
	add a,b			;54b8
	sbc a,b			;54b9
	ret pe			;54ba
	ld bc,l551fh		;54bb
	dec h			;54be
	add hl,bc		;54bf
	ld h,0eah		;54c0
	inc d			;54c2
	and d			;54c3
	sub (hl)		;54c4
	and e			;54c5
	ld b,h			;54c6
	jp (hl)			;54c7
	rst 38h			;54c8
	call m,079f6h		;54c9
	inc l			;54cc
	dec d			;54cd
	add a,095h		;54ce
	ccf			;54d0
	rst 38h			;54d1
	ld a,a			;54d2
	ld hl,l69cch		;54d3
	sub c			;54d6
	ret z			;54d7
	ld h,c			;54d8
	push hl			;54d9
	jp pe,l67b9h		;54da
sub_54ddh:
	sub e			;54dd
	ld bc,00ef0h		;54de
l54e1h:
	dec hl			;54e1
	rst 38h			;54e2
	ld (hl),d		;54e3
	ld b,095h		;54e4
	inc sp			;54e6
	add a,b			;54e7
	sbc a,b			;54e8
	and h			;54e9
	ld h,l			;54ea
	cp 0e2h			;54eb
	dec d			;54ed
	ld a,l			;54ee
	xor d			;54ef
	in a,(089h)		;54f0
	ld (02f0fh),hl		;54f2
	adc a,c			;54f5
	ld h,c			;54f6
	ld de,0d02ch		;54f7
	ld l,c			;54fa
	ld c,l			;54fb
	jp pe,0452fh		;54fc
	rst 38h			;54ff
	or 0f5h			;5500
	sub (hl)		;5502
	daa			;5503
	dec d			;5504
	xor e			;5505
	dec de			;5506
	dec d			;5507
	ccf			;5508
	ld a,a			;5509
l550ah:
	dec e			;550a
	inc l			;550b
	ld l,c			;550c
	inc h			;550d
	or b			;550e
	ld (0e21eh),a		;550f
	and 067h		;5512
	sub d			;5514
	dec de			;5515
	rra			;5516
	jp nz,l6993h		;5517
	ret			;551a
	dec d			;551b
	sbc a,d			;551c
	adc a,(hl)		;551d
	ld e,h			;551e
l551fh:
	sbc a,e			;551f
	ret z			;5520
	sub l			;5521
	adc a,015h		;5522
	ld e,e			;5524
	cpl			;5525
	and b			;5526
	adc a,c			;5527
	call m,013e9h		;5528
	ld (l46e2h),hl		;552b
	dec hl			;552e
	ret nz			;552f
	dec b			;5530
	ld l,c			;5531
	ld d,a			;5532
	dec e			;5533
	rst 38h			;5534
	sub e			;5535
	or l			;5536
	sub c			;5537
	sub l			;5538
	sbc a,h			;5539
	dec d			;553a
	inc a			;553b
	jp p,07f15h		;553c
	ld a,a			;553f
	dec e			;5540
	inc a			;5541
	or e			;5542
	ld (hl),d		;5543
	cpl			;5544
	cp c			;5545
	ld c,h			;5546
	pop hl			;5547
	ld d,e			;5548
	dec de			;5549
	rst 28h			;554a
	rst 0			;554b
	ld d,d			;554c
	ld b,c			;554d
	add a,a			;554e
l554fh:
	ld l,c			;554f
	or l			;5550
	inc c			;5551
	jp 02b15h		;5552
	ld hl,l4d8eh		;5555
	sbc a,l			;5558
	ld e,h			;5559
	ld l,l			;555a
	pop hl			;555b
	dec d			;555c
	inc sp			;555d
	add a,b			;555e
	adc a,c			;555f
	sbc a,a			;5560
	inc a			;5561
	ld l,0cfh		;5562
	dec hl			;5564
	ld l,c			;5565
	add hl,hl		;5566
	dec (hl)		;5567
	ret pe			;5568
	sbc a,b			;5569
	inc sp			;556a
	dec d			;556b
	pop hl			;556c
	ld (hl),c		;556d
	call m,02b15h		;556e
	ld a,b			;5571
	dec d			;5572
	rst 28h			;5573
	rst 38h			;5574
	call po,0c014h		;5575
	ld (bc),a		;5578
	ret nz			;5579
	ld b,l			;557a
	cp d			;557b
	rst 38h			;557c
	inc h			;557d
	rst 20h			;557e
	ld c,d			;557f
	jp po,0c867h		;5580
	inc l			;5583
	rst 0			;5584
	ld d,e			;5585
	inc c			;5586
sub_5587h:
	inc a			;5587
	dec d			;5588
	sub h			;5589
	set 0,a			;558a
	sub 092h		;558c
	sbc a,d			;558e
	sub a			;558f
	ld h,c			;5590
	call m,0d215h		;5591
	ld (0aaa6h),a		;5594
	ld a,a			;5597
	sbc a,c			;5598
	or c			;5599
	jp nz,0322bh		;559a
	ret nc			;559d
	rlca			;559e
	sub b			;559f
	jp (hl)			;55a0
	nop			;55a1
	inc sp			;55a2
	rst 38h			;55a3
	cp d			;55a4
	cp (hl)			;55a5
	and 015h		;55a6
	dec hl			;55a8
	pop af			;55a9
	dec d			;55aa
	call m,0ad7fh		;55ab
	call m,0b3a8h		;55ae
	sub d			;55b1
	rst 38h			;55b2
	ld h,(hl)		;55b3
	ld d,d			;55b4
	rra			;55b5
l55b6h:
	ret z			;55b6
	ld d,c			;55b7
	ret m			;55b8
	jp nz,03c9ah		;55b9
	defb 0edh ;next byte illegal after ed	;55bc
	dec d			;55bd
	ld e,0dbh		;55be
	ld a,e			;55c0
	dec d			;55c1
	ex (sp),hl		;55c2
	rst 38h			;55c3
	jr z,l55b6h		;55c4
	and d			;55c6
	ld h,c			;55c7
	jp (hl)			;55c8
	ld c,l			;55c9
	rrca			;55ca
	dec hl			;55cb
	nop			;55cc
	ld (hl),c		;55cd
	ld (0f222h),a		;55ce
	ret pe			;55d1
	ret z			;55d2
	dec d			;55d3
	rst 38h			;55d4
	cp c			;55d5
	dec d			;55d6
	sub l			;55d7
	ld hl,(08000h)		;55d8
	or e			;55db
	adc a,(hl)		;55dc
	ld h,a			;55dd
	dec d			;55de
	ld a,a			;55df
	ex (sp),hl		;55e0
	adc a,d			;55e1
	inc c			;55e2
	jr nc,$+82		;55e3
	cp c			;55e5
	ld l,0b4h		;55e6
	call z,0e582h		;55e8
	and 068h		;55eb
	call m,00540h		;55ed
	inc bc			;55f0
	ret nz			;55f1
	jp (hl)			;55f2
	dec d			;55f3
	pop bc			;55f4
	defb 0fdh,0dch,078h ;illegal sequence	;55f5
	dec d			;55f8
	ret			;55f9
	jp pe,0268ah		;55fa
	ld h,c			;55fd
sub_55feh:
	xor c			;55fe
	jp nz,0e914h		;55ff
	ld h,e			;5602
	cp 071h			;5603
	inc sp			;5605
	dec d			;5606
	adc a,(hl)		;5607
	cpl			;5608
	dec d			;5609
	ld e,e			;560a
	pop bc			;560b
	dec d			;560c
	add a,a			;560d
	inc de			;560e
	inc c			;560f
	call nz,01572h		;5610
	call m,0827fh		;5613
	inc a			;5616
	dec b			;5617
	call c,0db2bh		;5618
	ld c,l			;561b
	push hl			;561c
	or d			;561d
	ld c,h			;561e
	rst 20h			;561f
	ld l,c			;5620
	ret pe			;5621
	ld b,d			;5622
	nop			;5623
	ld d,b			;5624
	defb 0fdh,02eh,015h ;ld iyl,015h	;5625
	ex de,hl		;5628
	sub a			;5629
	dec (hl)		;562a
	add a,e			;562b
	inc a			;562c
	dec d			;562d
	daa			;562e
	jp pe,0ec14h		;562f
	ld l,c			;5632
	adc a,d			;5633
	sbc a,0f9h		;5634
	inc d			;5636
	inc e			;5637
	call z,06906h		;5638
	ld hl,l69ddh		;563b
	dec d			;563e
	ld (hl),b		;563f
	cp h			;5640
	dec d			;5641
	ld hl,015e5h		;5642
	ld e,0a7h		;5645
	ld (hl),a		;5647
	ld a,a			;5648
	push hl			;5649
	call po,0ca5ch		;564a
	ld d,c			;564d
	cp h			;564e
	sub c			;564f
	or (hl)			;5650
	ld c,(hl)		;5651
	rst 20h			;5652
	ld h,l			;5653
	ld b,a			;5654
	dec bc			;5655
	ld a,a			;5656
	cp c			;5657
	dec d			;5658
	res 3,b			;5659
	rst 8			;565b
	and d			;565c
	sub l			;565d
	ld h,d			;565e
	ld a,b			;565f
	inc l			;5660
	dec d			;5661
	ld d,d			;5662
	ld l,c			;5663
	ld a,b			;5664
	dec b			;5665
	adc a,d			;5666
	halt			;5667
	add a,(hl)		;5668
	ld hl,(0a391h)		;5669
	jp (hl)			;566c
	ld b,a			;566d
	or c			;566e
	di			;566f
	inc sp			;5670
	dec d			;5671
l5672h:
	sub e			;5672
	ld e,015h		;5673
	and (hl)		;5675
	pop hl			;5676
	dec d			;5677
	ld e,a			;5678
	rst 38h			;5679
	call po,02a52h		;567a
	or e			;567d
	ld h,(hl)		;567e
	ld e,l			;567f
	or l			;5680
	ld a,(de)		;5681
	or h			;5682
	ld l,d			;5683
	push bc			;5684
	ld d,h			;5685
	ccf			;5686
	ret pe			;5687
	sub l			;5688
	jp nc,01578h		;5689
	inc de			;568c
	jp p,0811bh		;568d
	ld a,c			;5690
	dec d			;5691
	ld c,d			;5692
	pop hl			;5693
	out (c),l		;5694
	sub c			;5696
	ld (hl),c		;5697
	and b			;5698
	add a,e			;5699
	rrca			;569a
	defb 0fdh,04fh,015h ;illegal sequence	;569b
	inc sp			;569e
	dec de			;569f
	call pe,09615h		;56a0
l56a3h:
	rst 38h			;56a3
	dec d			;56a4
	ld a,(hl)		;56a5
	ld a,a			;56a6
	add hl,sp		;56a7
	inc sp			;56a8
	ld (013eah),a		;56a9
	ld e,e			;56ac
	inc a			;56ad
	ld c,h			;56ae
	adc a,01fh		;56af
	push bc			;56b1
	inc (hl)		;56b2
	ld b,(hl)		;56b3
	or b			;56b4
	ret p			;56b5
	ld h,(hl)		;56b6
	jp 0153eh		;56b7
	or c			;56ba
	cp e			;56bb
	dec d			;56bc
	pop bc			;56bd
	rst 38h			;56be
	daa			;56bf
	dec d			;56c0
	sbc a,d			;56c1
	ld (l77e1h),a		;56c2
l56c5h:
	jp po,09033h		;56c5
	ld c,d			;56c8
	rst 38h			;56c9
	ld d,d			;56ca
	ld l,02fh		;56cb
	cp 06fh			;56cd
	dec d			;56cf
	add hl,sp		;56d0
	rst 38h			;56d1
	inc a			;56d2
	dec d			;56d3
	ld a,a			;56d4
	ld a,a			;56d5
	ld e,0bbh		;56d6
	dec h			;56d8
	sub e			;56d9
	call c,0dee4h		;56da
	ld d,(hl)		;56dd
l56deh:
	call pe,sub_7f96h	;56de
	ld a,098h		;56e1
	ld d,d			;56e3
	jp po,09ed1h		;56e4
	dec d			;56e7
	rlca			;56e8
	adc a,012h		;56e9
	dec d			;56eb
	xor h			;56ec
	adc a,e			;56ed
l56eeh:
	xor 089h		;56ee
	and d			;56f0
	pop hl			;56f1
	sub h			;56f2
	inc (hl)		;56f3
	ld d,l			;56f4
	ld (bc),a		;56f5
	dec a			;56f6
	call z,01522h		;56f7
	ld e,012h		;56fa
	dec d			;56fc
	ld d,c			;56fd
	rst 38h			;56fe
	ld sp,hl		;56ff
	dec b			;5700
	inc sp			;5701
	add hl,sp		;5702
	inc (hl)		;5703
	or l			;5704
	add hl,hl		;5705
	dec a			;5706
	ld h,b			;5707
	or (hl)			;5708
	call z,0f49eh		;5709
	dec bc			;570c
	inc l			;570d
	sub e			;570e
	inc de			;570f
	dec d			;5710
	push bc			;5711
	jp p,0ea15h		;5712
	inc l			;5715
	ret c			;5716
	inc c			;5717
	rst 38h			;5718
	call c,0fd1eh		;5719
l571ch:
	ex de,hl		;571c
	call p,sub_7915h	;571d
	jp p,l4715h		;5720
	rst 38h			;5723
	call po,0239ch		;5724
	sbc a,h			;5727
	dec a			;5728
	ld b,a			;5729
	ld l,c			;572a
	ld hl,008cch		;572b
	add hl,de		;572e
	and 049h		;572f
	rst 8			;5731
	dec d			;5732
	ex (sp),hl		;5733
	defb 0fdh,0d7h,015h ;illegal sequence	;5734
	and d			;5737
	sub d			;5738
	pop hl			;5739
	rst 10h			;573a
	dec hl			;573b
	ld e,c			;573c
	call sub_7169h		;573d
	ld c,c			;5740
	rst 20h			;5741
	dec d			;5742
	and 022h		;5743
	jp p,07e15h		;5745
	sbc a,c			;5748
	nop			;5749
	jr c,l56deh		;574a
	ld (09d32h),hl		;574c
	cp l			;574f
	ld e,h			;5750
	ld d,b			;5751
	out (02fh),a		;5752
	and (hl)		;5754
	push bc			;5755
	ld h,e			;5756
	ld a,(02922h)		;5757
	dec d			;575a
	out (c),h		;575b
	nop			;575d
	dec d			;575e
	call z,015d5h		;575f
	rst 30h			;5762
	ld a,(hl)		;5763
	nop			;5764
	scf			;5765
	nop			;5766
	rst 38h			;5767
	call m,sub_6000h	;5768
	nop			;576b
	nop			;576c
	ld a,h			;576d
	sbc a,c			;576e
	nop			;576f
	jr nz,l57b7h		;5770
	ld d,(hl)		;5772
	ld (hl),a		;5773
	ld (hl),l		;5774
	ld b,e			;5775
	ret m			;5776
	rla			;5777
	cp l			;5778
	nop			;5779
	rst 0			;577a
	sub a			;577b
	ld h,(hl)		;577c
	ld h,a			;577d
	rrca			;577e
	pop hl			;577f
	ex af,af'		;5780
	ld sp,09923h		;5781
	ld bc,03932h		;5784
	jr z,l571ch		;5787
	ld hl,00605h		;5789
	ld (de),a		;578c
	add hl,sp		;578d
	ret m			;578e
	rrca			;578f
	ld a,07fh		;5790
	jr nc,$+105		;5792
	ld h,l			;5794
	ld b,e			;5795
	add hl,hl		;5796
	ret po			;5797
	add hl,bc		;5798
	ld h,(hl)		;5799
	ld c,c			;579a
	ret m			;579b
	ld a,b			;579c
	adc a,09dh		;579d
	defb 0ddh,000h,047h ;illegal sequence	;579f
	ld b,h			;57a2
	ld b,(hl)		;57a3
	ld a,c			;57a4
	rrca			;57a5
	ret po			;57a6
	cp 07fh			;57a7
	adc a,e			;57a9
	ld (0c200h),hl		;57aa
	adc a,b			;57ad
	inc h			;57ae
	halt			;57af
	add a,b			;57b0
	ld a,h			;57b1
	ld b,e			;57b2
	sbc a,l			;57b3
	call c,006c9h		;57b4
l57b7h:
	ld b,c			;57b7
	sbc a,h			;57b8
	call sub_54ddh		;57b9
	ld h,a			;57bc
	rrca			;57bd
	ret m			;57be
	ccf			;57bf
	ld a,a			;57c0
	inc de			;57c1
	inc sp			;57c2
	ld a,a			;57c3
	ex de,hl		;57c4
	ld (hl),h		;57c5
	sub d			;57c6
	ld a,e			;57c7
	inc h			;57c8
	inc hl			;57c9
	ld (08042h),hl		;57ca
	rrca			;57cd
	halt			;57ce
	ld d,h			;57cf
	ld a,(hl)		;57d0
	adc a,h			;57d1
	sbc a,h			;57d2
	call z,006b0h		;57d3
	dec b			;57d6
	call sub_76d4h		;57d7
	ld h,a			;57da
	rrca			;57db
	ret			;57dc
	inc a			;57dd
	sbc a,l			;57de
	call z,0d90fh		;57df
	ret			;57e2
	ld b,00fh		;57e3
	rst 10h			;57e5
	ld l,a			;57e6
	or d			;57e7
	sub a			;57e8
	rrca			;57e9
	ld e,b			;57ea
	sub e			;57eb
	dec b			;57ec
	rrca			;57ed
	inc sp			;57ee
	ld a,h			;57ef
	inc sp			;57f0
	ld a,a			;57f1
	sub h			;57f2
	ld a,(hl)		;57f3
	halt			;57f4
	inc hl			;57f5
	and b			;57f6
	dec de			;57f7
	nop			;57f8
	dec (hl)		;57f9
	ld (03253h),hl		;57fa
	adc a,c			;57fd
	add a,b			;57fe
	dec h			;57ff
	ld a,a			;5800
	ret p			;5801
	sub (hl)		;5802
	defb 0ddh,0d9h,06eh ;illegal sequence	;5803
	ld a,a			;5806
	pop hl			;5807
	ld (hl),b		;5808
	defb 0ddh,067h ;ld ixh,a	;5809
	rrca			;580b
	sbc a,07fh		;580c
	ld a,c			;580e
	rrca			;580f
	adc a,b			;5810
	ret			;5811
	sbc a,a			;5812
	ld sp,hl		;5813
	sub b			;5814
	defb 0ddh,00fh,0f6h ;illegal sequence	;5815
	ld l,a			;5818
	ld b,a			;5819
	halt			;581a
	adc a,a			;581b
	ld b,(hl)		;581c
	ld (l7b11h),a		;581d
	ld a,h			;5820
	ld a,a			;5821
	ld b,e			;5822
l5823h:
	ld (02552h),hl		;5823
	ld a,a			;5826
	jp nz,09404h		;5827
	add a,(hl)		;582a
	adc a,a			;582b
	cp 084h			;582c
	sbc a,l			;582e
	call sub_7fe6h		;582f
	ld h,b			;5832
	dec sp			;5833
	call 00fd7h		;5834
	cp b			;5837
	ld a,a			;5838
	rrca			;5839
	ld (hl),l		;583a
	exx			;583b
	rrca			;583c
	rst 38h			;583d
	dec de			;583e
	rrca			;583f
	rst 10h			;5840
	ld a,a			;5841
	ld e,l			;5842
	ld l,a			;5843
l5844h:
	and e			;5844
	ld h,h			;5845
	rst 38h			;5846
	xor 0c1h		;5847
	ld a,a			;5849
	inc sp			;584a
	inc (hl)		;584b
	ld b,h			;584c
	nop			;584d
	add a,c			;584e
	ld b,(hl)		;584f
	ld (l4364h),hl		;5850
	inc hl			;5853
	ld c,b			;5854
	add a,d			;5855
	add hl,hl		;5856
	rst 30h			;5857
	ld a,a			;5858
	inc sp			;5859
	ret			;585a
	call c,sub_7f6ah	;585b
	add a,d			;585e
	call z,sub_5f9ch	;585f
	ld h,e			;5862
	sbc a,b			;5863
sub_5864h:
	rrca			;5864
	defb 0ddh,07fh,05ch ;illegal sequence	;5865
	call 0350fh		;5868
	ld a,c			;586b
	rrca			;586c
	call c,01cffh		;586d
	pop af			;5870
	rrca			;5871
	rst 38h			;5872
	ld e,0eeh		;5873
	ld c,c			;5875
	rrca			;5876
	rst 20h			;5877
	rst 38h			;5878
	and 01ch		;5879
	inc hl			;587b
l587ch:
	ld (hl),022h		;587c
	ld a,(hl)		;587e
	ld l,l			;587f
	ld a,a			;5880
	inc b			;5881
	add a,b			;5882
	dec de			;5883
	add a,c			;5884
	ld e,(hl)		;5885
	pop de			;5886
	xor 0c7h		;5887
	ld a,a			;5889
	ld d,c			;588a
	ret po			;588b
	ld h,h			;588c
	rlca			;588d
	and 0c8h		;588e
	call c,0ebffh		;5890
	rrca			;5893
	sbc a,c			;5894
	adc a,(hl)		;5895
	ld h,d			;5896
	rst 38h			;5897
	jr c,l587ch		;5898
	rrca			;589a
	rst 28h			;589b
	ld e,c			;589c
	ld (bc),a		;589d
	ld (0211fh),a		;589e
	cpl			;58a1
	ld (de),a		;58a2
	sbc a,c			;58a3
	ld c,(hl)		;58a4
	ld a,039h		;58a5
	sub l			;58a7
	ld a,a			;58a8
	call po,sub_7f33h	;58a9
	ld b,h			;58ac
	jr nc,l58f4h		;58ad
	ld d,l			;58af
	nop			;58b0
	ld d,a			;58b1
	ld (l7522h),hl		;58b2
	ld d,h			;58b5
	add a,b			;58b6
	sub c			;58b7
	add a,d			;58b8
	dec (hl)		;58b9
	add a,b			;58ba
	ld e,0d3h		;58bb
	ld l,a			;58bd
	call c,0da7fh		;58be
	cp 032h			;58c1
	rst 38h			;58c3
	ld a,(00fe6h)		;58c4
	sbc a,(hl)		;58c7
	ld e,b			;58c8
	sbc a,(hl)		;58c9
	and b			;58ca
	xor e			;58cb
	rst 38h			;58cc
	add a,0ffh		;58cd
	ld (01573h),a		;58cf
	ld de,l5823h		;58d2
	rst 38h			;58d5
	rst 30h			;58d6
	ld b,h			;58d7
	call m,01862h		;58d8
	ld (hl),l		;58db
	ld d,(hl)		;58dc
	ld h,(hl)		;58dd
	nop			;58de
	ld l,b			;58df
	ex af,af'		;58e0
	ld (l6586h),hl		;58e1
	ld d,l			;58e4
	add a,b			;58e5
	push bc			;58e6
	ld (hl),08fh		;58e7
	ld hl,l5944h		;58e9
	cp 02eh			;58ec
	ld e,e			;58ee
	ld l,b			;58ef
	ld a,a			;58f0
	call nc,0a5e0h		;58f1
l58f4h:
	rrca			;58f4
	rlca			;58f5
	or c			;58f6
	rst 38h			;58f7
	rst 10h			;58f8
	rrca			;58f9
	ld de,0ccfeh		;58fa
	add a,b			;58fd
	or e			;58fe
	and b			;58ff
	add hl,sp		;5900
	ld a,a			;5901
	call nc,0eeffh		;5902
	ld a,a			;5905
	and e			;5906
sub_5907h:
	adc a,c			;5907
	rst 38h			;5908
	xor 099h		;5909
	ld (hl),c		;590b
	ld (hl),d		;590c
	ld (hl),a		;590d
	rst 38h			;590e
	inc e			;590f
	call nz,sub_5587h	;5910
	ld c,c			;5913
	ld d,h			;5914
	ld c,026h		;5915
	add a,d			;5917
	sbc a,(hl)		;5918
	dec (hl)		;5919
	ld a,a			;591a
	ld a,h			;591b
	ld l,(hl)		;591c
	ld (hl),e		;591d
	ld e,(hl)		;591e
	ld a,a			;591f
	and 0cch		;5920
	jp p,0960fh		;5922
	xor c			;5925
	cp h			;5926
	ld a,a			;5927
	ex (sp),hl		;5928
	rst 38h			;5929
	or (hl)			;592a
	adc a,c			;592b
	rlca			;592c
	ld b,a			;592d
	rst 38h			;592e
	rst 10h			;592f
	ei			;5930
	jr nz,l598bh		;5931
	daa			;5933
	ld d,h			;5934
	sbc a,(hl)		;5935
	rst 38h			;5936
	and b			;5937
	dec bc			;5938
	ld h,(hl)		;5939
	ld h,l			;593a
	ld d,(hl)		;593b
	ld (hl),d		;593c
	inc h			;593d
	ld d,(hl)		;593e
	inc sp			;593f
	add a,b			;5940
	ld a,b			;5941
	ld l,b			;5942
	rra			;5943
l5944h:
	ld de,09c9ch		;5944
	cp 0cch			;5947
	add a,b			;5949
	call p,0e7c9h		;594a
	rrca			;594d
	ld a,a			;594e
	cp (hl)			;594f
	rrca			;5950
	ld d,c			;5951
	ret			;5952
	xor d			;5953
	sub 00fh		;5954
	ex (sp),hl		;5956
	rst 38h			;5957
	sbc a,(hl)		;5958
	ld a,a			;5959
	sub (hl)		;595a
	add a,e			;595b
	ld hl,0ff73h		;595c
	ld a,l			;595f
	ld (hl),b		;5960
	ld (hl),d		;5961
	ld h,a			;5962
	ld h,043h		;5963
	or (hl)			;5965
	rst 38h			;5966
	and (hl)		;5967
	adc a,e			;5968
	ld (bc),a		;5969
	ld d,l			;596a
	ld d,(hl)		;596b
	ld l,b			;596c
	ld b,d			;596d
	ld (hl),h		;596e
	ld b,e			;596f
	add a,b			;5970
	ld b,e			;5971
	daa			;5972
	ld l,c			;5973
	ld a,a			;5974
	jp nc,05cdfh		;5975
sub_5978h:
	dec sp			;5978
	ld a,a			;5979
	ld e,c			;597a
l597bh:
	sbc a,c			;597b
	ld a,a			;597c
	add a,h			;597d
	sbc a,l			;597e
	rrca			;597f
	out (0aah),a		;5980
	add a,a			;5982
sub_5983h:
	ld a,a			;5983
	push bc			;5984
	add a,e			;5985
	ld e,c			;5986
	adc a,a			;5987
	xor (hl)		;5988
	dec (hl)		;5989
	adc a,a			;598a
l598bh:
	sbc a,(hl)		;598b
	ld a,a			;598c
l598dh:
	ret pe			;598d
	ld h,(hl)		;598e
	ld (hl),d		;598f
sub_5990h:
	dec h			;5990
	ld b,e			;5991
	or (hl)			;5992
l5993h:
	call p,09357h		;5993
	adc a,b			;5996
	add a,b			;5997
	ld b,l			;5998
	ld e,b			;5999
	ld h,084h		;599a
	ld b,h			;599c
	sub b			;599d
	add a,b			;599e
	ld h,065h		;599f
	pop af			;59a1
	ld a,a			;59a2
	ld de,088c8h		;59a3
	adc a,h			;59a6
	ld b,0aah		;59a7
	xor d			;59a9
	inc bc			;59aa
	ld a,c			;59ab
	ld a,a			;59ac
	inc hl			;59ad
	sbc a,h			;59ae
	rst 38h			;59af
	ld a,(0e77fh)		;59b0
	ld h,01fh		;59b3
	ld (hl),a		;59b5
	nop			;59b6
	ld a,a			;59b7
	out (06fh),a		;59b8
	ld d,c			;59ba
	sub e			;59bb
	rst 38h			;59bc
	push hl			;59bd
	adc a,a			;59be
	inc e			;59bf
	ld b,a			;59c0
	rst 38h			;59c1
	cp l			;59c2
	di			;59c3
	jr l5a43h		;59c4
	sub (hl)		;59c6
	xor l			;59c7
	add a,c			;59c8
	ld b,(hl)		;59c9
	ld l,c			;59ca
	add a,c			;59cb
	ld d,h			;59cc
	adc a,l			;59cd
	daa			;59ce
	dec h			;59cf
	ld h,l			;59d0
	ld b,h			;59d1
	add a,b			;59d2
	dec (hl)		;59d3
	add a,(hl)		;59d4
	jp nz,l4c5fh		;59d5
	adc a,b			;59d8
	and c			;59d9
	adc a,c			;59da
	dec bc			;59db
	sbc a,d			;59dc
	call z,0a9aah		;59dd
	jp m,0deb7h		;59e0
l59e3h:
	dec h			;59e3
	rst 38h			;59e4
	cp b			;59e5
	adc a,l			;59e6
	ex (sp),hl		;59e7
	ld a,a			;59e8
	call nz,0ee9ah		;59e9
	rst 8			;59ec
	rra			;59ed
	ld a,a			;59ee
	add a,(hl)		;59ef
	rst 28h			;59f0
	ld d,(hl)		;59f1
	rst 38h			;59f2
	inc a			;59f3
	cp (hl)			;59f4
	ld a,a			;59f5
	ld c,b			;59f6
	inir			;59f7
	ld a,l			;59f9
	xor 058h		;59fa
	jr z,l5993h		;59fc
	ld d,l			;59fe
	or 098h			;59ff
	add a,l			;5a01
	ld h,(hl)		;5a02
	ld d,(hl)		;5a03
	call 08612h		;5a04
	ld (hl),c		;5a07
	sub d			;5a08
	ld e,a			;5a09
	add a,l			;5a0a
	sub h			;5a0b
	ld b,d			;5a0c
	ld a,a			;5a0d
	ret			;5a0e
	sbc a,d			;5a0f
	xor c			;5a10
	ex af,af'		;5a11
	ld de,l7746h		;5a12
	sbc a,c			;5a15
	rst 28h			;5a16
	rst 18h			;5a17
	ld b,058h		;5a18
	rrca			;5a1a
	sbc a,a			;5a1b
	ld l,c			;5a1c
	sbc a,a			;5a1d
	ld a,a			;5a1e
	jp (hl)			;5a1f
	sbc a,d			;5a20
	ld a,a			;5a21
	and d			;5a22
	ld sp,hl		;5a23
	ld sp,hl		;5a24
	ret			;5a25
	rst 28h			;5a26
	ld e,l			;5a27
	ld (0ff7fh),a		;5a28
	ld a,0fch		;5a2b
	ld a,(hl)		;5a2d
	jp po,l7c7dh		;5a2e
	ret z			;5a31
	ld a,l			;5a32
	inc b			;5a33
	sbc a,c			;5a34
	inc h			;5a35
	ld a,h			;5a36
	ld d,h			;5a37
	add a,h			;5a38
	ld d,h			;5a39
	sub h			;5a3a
	add a,b			;5a3b
	ret p			;5a3c
	ld a,a			;5a3d
	adc a,h			;5a3e
	push af			;5a3f
	cpl			;5a40
	ld h,h			;5a41
	ld e,b			;5a42
l5a43h:
	ld e,l			;5a43
	ld a,a			;5a44
	ld h,a			;5a45
	sbc a,c			;5a46
	ld a,a			;5a47
	or e			;5a48
	xor c			;5a49
	ld a,a			;5a4a
	cp a			;5a4b
	ld l,a			;5a4c
	jr c,$+1		;5a4d
	rst 30h			;5a4f
	sbc a,a			;5a50
	rst 38h			;5a51
	adc a,a			;5a52
	ld a,(hl)		;5a53
	jr c,l5a5dh		;5a54
	add hl,bc		;5a56
	sbc a,b			;5a57
	adc a,b			;5a58
	adc a,b			;5a59
	adc a,c			;5a5a
	adc a,(hl)		;5a5b
	ld e,d			;5a5c
l5a5dh:
	djnz l59e3h		;5a5d
	xor c			;5a5f
	add a,c			;5a60
	cp e			;5a61
	adc a,c			;5a62
	dec sp			;5a63
	ld a,a			;5a64
	add hl,bc		;5a65
	adc a,b			;5a66
	ld d,h			;5a67
	ld a,a			;5a68
	ld (hl),h		;5a69
	ld a,a			;5a6a
	xor d			;5a6b
	rst 38h			;5a6c
	ld l,03fh		;5a6d
	jp pe,0f6c7h		;5a6f
	ld hl,0dcddh		;5a72
	rst 38h			;5a75
	ld l,049h		;5a76
	xor d			;5a78
	rst 38h			;5a79
	ld (hl),b		;5a7a
	pop hl			;5a7b
	ld l,a			;5a7c
	inc sp			;5a7d
	rst 38h			;5a7e
	xor 095h		;5a7f
	rst 38h			;5a81
	push af			;5a82
	push af			;5a83
	ld a,(hl)		;5a84
	ld a,a			;5a85
	call c,sub_7080h	;5a86
	ld d,(hl)		;5a89
	sub e			;5a8a
	add a,b			;5a8b
	add a,h			;5a8c
	ld e,h			;5a8d
	ex af,af'		;5a8e
	sbc a,h			;5a8f
	add a,a			;5a90
	rst 38h			;5a91
	jp c,l63dfh		;5a92
	halt			;5a95
	ld d,0c8h		;5a96
	rst 38h			;5a98
	ret p			;5a99
	out (0ffh),a		;5a9a
	or l			;5a9c
	rst 28h			;5a9d
	or c			;5a9e
	ld l,h			;5a9f
	sbc a,a			;5aa0
	ld a,a			;5aa1
	sub c			;5aa2
	ret m			;5aa3
	ld e,h			;5aa4
	ld bc,l6636h		;5aa5
	sub a			;5aa8
	ld (hl),a		;5aa9
	ld (hl),a		;5aaa
	ld a,c			;5aab
	add a,(hl)		;5aac
	ld c,h			;5aad
	sub c			;5aae
	ld e,c			;5aaf
	sub e			;5ab0
	add a,b			;5ab1
	adc a,l			;5ab2
	ld h,d			;5ab3
	add a,l			;5ab4
	ld a,(0c27fh)		;5ab5
	sub d			;5ab8
	rst 38h			;5ab9
	ld (hl),d		;5aba
	rst 38h			;5abb
	in a,(057h)		;5abc
	push bc			;5abe
	rst 38h			;5abf
	jp 0298fh		;5ac0
	xor c			;5ac3
	cp 009h			;5ac4
	defb 0ddh,00fh,089h ;illegal sequence	;5ac6
	rst 38h			;5ac9
	rra			;5aca
	sbc a,a			;5acb
	ld a,(hl)		;5acc
	sub l			;5acd
	ld a,l			;5ace
	xor 0f5h		;5acf
	adc a,b			;5ad1
	ld d,l			;5ad2
	adc a,c			;5ad3
	jr z,$+91		;5ad4
	inc (hl)		;5ad6
	ld b,l			;5ad7
	inc b			;5ad8
	ld h,a			;5ad9
	ld (02262h),hl		;5ada
	inc sp			;5add
	add a,d			;5ade
	or b			;5adf
	halt			;5ae0
	inc c			;5ae1
	ld b,h			;5ae2
	ld a,b			;5ae3
	ld d,l			;5ae4
	adc a,b			;5ae5
	rst 38h			;5ae6
	ld (hl),b		;5ae7
	dec bc			;5ae8
	call nz,sub_7cc8h	;5ae9
	sbc a,c			;5aec
	rst 38h			;5aed
	call p,00fe3h		;5aee
l5af1h:
	rst 38h			;5af1
	inc e			;5af2
	adc a,l			;5af3
	ret z			;5af4
	adc a,c			;5af5
	ld l,a			;5af6
	adc a,a			;5af7
	rst 38h			;5af8
	call 03647h		;5af9
	ld a,l			;5afc
	sub h			;5afd
	ld b,h			;5afe
	nop			;5aff
	inc d			;5b00
	ld (hl),c		;5b01
	add a,b			;5b02
	ld (hl),c		;5b03
	add a,b			;5b04
	ld hl,02752h		;5b05
	add a,d			;5b08
	ld h,d			;5b09
	dec h			;5b0a
	sbc a,c			;5b0b
	ld a,b			;5b0c
	pop de			;5b0d
	sub h			;5b0e
	adc a,h			;5b0f
	rst 38h			;5b10
	xor (hl)		;5b11
	ld h,(hl)		;5b12
	ld b,l			;5b13
	ld l,h			;5b14
	rst 38h			;5b15
	cp d			;5b16
	di			;5b17
	rrca			;5b18
	rst 38h			;5b19
	xor (hl)		;5b1a
	jr c,$-63		;5b1b
	ld a,(hl)		;5b1d
	ld a,a			;5b1e
	ld (hl),d		;5b1f
	ld a,c			;5b20
	xor e			;5b21
	ld b,l			;5b22
	ld l,c			;5b23
	or 0e7h			;5b24
	add a,e			;5b26
	or e			;5b27
	adc a,b			;5b28
	or h			;5b29
	add a,b			;5b2a
	ld (hl),c		;5b2b
	add a,b			;5b2c
	ld hl,08462h		;5b2d
	add a,d			;5b30
	ld h,b			;5b31
	dec h			;5b32
	ld h,a			;5b33
	ld l,c			;5b34
	or l			;5b35
	sbc a,a			;5b36
	add hl,sp		;5b37
	ld e,b			;5b38
l5b39h:
	sbc a,h			;5b39
	rst 38h			;5b3a
	call z,sub_4445h	;5b3b
	adc a,(hl)		;5b3e
	rst 30h			;5b3f
	inc a			;5b40
	ld a,a			;5b41
	ld a,b			;5b42
	rrca			;5b43
	rst 20h			;5b44
	rst 38h			;5b45
	rla			;5b46
	ld b,l			;5b47
	rst 28h			;5b48
	and h			;5b49
	rst 38h			;5b4a
	cp (hl)			;5b4b
	ld h,b			;5b4c
	add a,a			;5b4d
	sub e			;5b4e
	ld b,(hl)		;5b4f
	ld h,(hl)		;5b50
	sub e			;5b51
	or 067h			;5b52
	ld a,h			;5b54
	add a,l			;5b55
	and a			;5b56
	add a,b			;5b57
	and h			;5b58
	add a,b			;5b59
	ld l,c			;5b5a
	ld (hl),l		;5b5b
	sub l			;5b5c
	rst 38h			;5b5d
	sub (hl)		;5b5e
	add a,e			;5b5f
	ld hl,08367h		;5b60
	adc a,a			;5b63
	ld e,d			;5b64
	adc a,h			;5b65
	jp p,0277fh		;5b66
	add a,0c6h		;5b69
	jr z,l5b39h		;5b6b
	ld a,a			;5b6d
	sub e			;5b6e
	ret			;5b6f
	rrca			;5b70
	cp a			;5b71
	rst 38h			;5b72
	ld l,(hl)		;5b73
	rrca			;5b74
	ld a,e			;5b75
	ld c,c			;5b76
	ld l,a			;5b77
	defb 0fdh,07fh,0c2h ;illegal sequence	;5b78
	adc a,b			;5b7b
	ld (hl),l		;5b7c
	ld c,c			;5b7d
	call m,sub_7d4eh	;5b7e
	ld l,d			;5b81
	add a,c			;5b82
	inc hl			;5b83
	halt			;5b84
	ld h,(hl)		;5b85
	add a,b			;5b86
	ld bc,09869h		;5b87
	add a,a			;5b8a
	ld e,c			;5b8b
	inc h			;5b8c
	add a,d			;5b8d
	ld l,e			;5b8e
	add a,h			;5b8f
	cp h			;5b90
	ld hl,(0e088h)		;5b91
	pop af			;5b94
	ld a,a			;5b95
	dec de			;5b96
	ld d,h			;5b97
	call nz,08c58h		;5b98
	sbc a,(hl)		;5b9b
	ld a,a			;5b9c
	ld l,099h		;5b9d
	rrca			;5b9f
	rst 20h			;5ba0
	sbc a,a			;5ba1
	xor h			;5ba2
	rrca			;5ba3
	ld a,(hl)		;5ba4
	ld h,h			;5ba5
	ld a,a			;5ba6
	add a,e			;5ba7
	sub e			;5ba8
	add a,e			;5ba9
	di			;5baa
	add a,l			;5bab
	xor (hl)		;5bac
	add a,(hl)		;5bad
	sbc a,e			;5bae
	ld (hl),a		;5baf
	nop			;5bb0
	add a,b			;5bb1
l5bb2h:
	ld a,(de)		;5bb2
	ld a,b			;5bb3
	add a,h			;5bb4
	inc de			;5bb5
	sub h			;5bb6
	ld b,l			;5bb7
	ld h,l			;5bb8
	add a,b			;5bb9
	exx			;5bba
	adc a,d			;5bbb
	ld l,l			;5bbc
	dec l			;5bbd
	jp pe,0e051h		;5bbe
	adc a,07fh		;5bc1
	rlca			;5bc3
	rst 0			;5bc4
	ld e,c			;5bc5
	ld d,l			;5bc6
	adc a,c			;5bc7
	rrca			;5bc8
	ld e,h			;5bc9
	ld a,a			;5bca
	ld e,l			;5bcb
	add hl,bc		;5bcc
	rrca			;5bcd
	di			;5bce
	ld a,a			;5bcf
	rrca			;5bd0
	xor a			;5bd1
	halt			;5bd2
	ld a,a			;5bd3
	sub c			;5bd4
	inc sp			;5bd5
	rst 38h			;5bd6
	cpl			;5bd7
	ld c,c			;5bd8
	ld e,c			;5bd9
	dec (hl)		;5bda
	call m,094c8h		;5bdb
	ld d,(hl)		;5bde
	ld d,(hl)		;5bdf
	ld a,(hl)		;5be0
	halt			;5be1
	nop			;5be2
	ld b,(hl)		;5be3
	add a,b			;5be4
	ld bc,09799h		;5be5
	adc a,b			;5be8
	add a,a			;5be9
	ld d,e			;5bea
	ld b,l			;5beb
	add a,e			;5bec
	sbc a,d			;5bed
	ld b,e			;5bee
	jp po,l7b21h		;5bef
	ret pe			;5bf2
	ld a,a			;5bf3
	call nz,sub_7846h	;5bf4
	sub l			;5bf7
	rrca			;5bf8
	ld l,h			;5bf9
	ld a,a			;5bfa
	ld (hl),h		;5bfb
	push bc			;5bfc
	call pe,0c90fh		;5bfd
	sbc a,a			;5c00
	add hl,sp		;5c01
	ld sp,hl		;5c02
	sbc a,l			;5c03
	rrca			;5c04
	ld a,h			;5c05
	sub a			;5c06
	ld a,a			;5c07
	ld (hl),l		;5c08
	adc a,a			;5c09
	rst 20h			;5c0a
	nop			;5c0b
	defb 0edh ;next byte illegal after ed	;5c0c
	cp 017h			;5c0d
	rst 38h			;5c0f
	ld c,d			;5c10
	ld d,h			;5c11
	ret m			;5c12
	xor h			;5c13
	pop af			;5c14
	jp po,0807eh		;5c15
	inc (hl)		;5c18
	ld b,l			;5c19
	add hl,sp		;5c1a
	adc a,c			;5c1b
	ld a,(bc)		;5c1c
	ld a,c			;5c1d
	inc (hl)		;5c1e
	add a,b			;5c1f
	sub 032h		;5c20
	add a,c			;5c22
	ld (0b9c9h),a		;5c23
	ld (bc),a		;5c26
	rst 28h			;5c27
	ld h,h			;5c28
	in a,(03ch)		;5c29
	ld e,c			;5c2b
	sub a			;5c2c
	rrca			;5c2d
	inc sp			;5c2e
	ld a,a			;5c2f
	ld b,01dh		;5c30
	rst 0			;5c32
	rrca			;5c33
	cp c			;5c34
	ret			;5c35
	ld b,0dfh		;5c36
	rrca			;5c38
	ld a,a			;5c39
	adc a,088h		;5c3a
	cp 065h			;5c3c
	ld d,h			;5c3e
	or c			;5c3f
	or 059h			;5c40
	ld l,a			;5c42
	ld (hl),l		;5c43
	ld a,a			;5c44
	add a,b			;5c45
	ld de,l6355h		;5c46
	add a,b			;5c49
	inc hl			;5c4a
	sbc a,c			;5c4b
	ld a,a			;5c4c
	adc a,a			;5c4d
	sub l			;5c4e
	ex (sp),hl		;5c4f
	ld a,c			;5c50
	dec hl			;5c51
	sbc a,080h		;5c52
	sub a			;5c54
	ld h,h			;5c55
	adc a,c			;5c56
	sub h			;5c57
	ld a,c			;5c58
	ld h,a			;5c59
	rrca			;5c5a
	ld h,e			;5c5b
	ld (hl),c		;5c5c
	call nz,0c60fh		;5c5d
	rst 38h			;5c60
	ld l,00fh		;5c61
	rst 38h			;5c63
	ld a,a			;5c64
	ld a,(020feh)		;5c65
	ld d,d			;5c68
	ld b,h			;5c69
	sub h			;5c6a
	ld c,c			;5c6b
	rst 30h			;5c6c
	xor 00bh		;5c6d
	call m,08781h		;5c6f
	ld d,(hl)		;5c72
	ld (hl),l		;5c73
	add hl,sp		;5c74
	ld a,c			;5c75
	add a,d			;5c76
	add a,h			;5c77
	add a,b			;5c78
	rst 28h			;5c79
	ld a,a			;5c7a
	ld e,h			;5c7b
	ld (hl),b		;5c7c
	xor d			;5c7d
	sub a			;5c7e
	sub a			;5c7f
	call c,08fffh		;5c80
	add a,b			;5c83
	inc hl			;5c84
	sbc a,h			;5c85
	ret z			;5c86
	rrca			;5c87
	call po,sub_6fc7h	;5c88
	inc sp			;5c8b
	ld a,a			;5c8c
	push hl			;5c8d
	ld b,h			;5c8e
	cp 025h			;5c8f
	add hl,hl		;5c91
	ld c,c			;5c92
	ld h,(hl)		;5c93
	jp (hl)			;5c94
	inc de			;5c95
	inc hl			;5c96
	add a,c			;5c97
	ld b,h			;5c98
	ei			;5c99
	add a,a			;5c9a
	and c			;5c9b
	push af			;5c9c
	dec h			;5c9d
	ld a,a			;5c9e
	add hl,bc		;5c9f
	add a,(hl)		;5ca0
	ld d,e			;5ca1
	sub (hl)		;5ca2
	sub (hl)		;5ca3
	ld d,a			;5ca4
	ld b,h			;5ca5
	add a,h			;5ca6
	cp c			;5ca7
	dec l			;5ca8
	call z,046fch		;5ca9
	ld b,h			;5cac
	ld b,(hl)		;5cad
	ld a,c			;5cae
	and d			;5caf
	and a			;5cb0
	rrca			;5cb1
	defb 0ddh,06fh ;ld ixl,a	;5cb2
	adc a,d			;5cb4
	sub e			;5cb5
	ld h,l			;5cb6
	rst 38h			;5cb7
	sbc a,a			;5cb8
	inc h			;5cb9
	scf			;5cba
	ld d,d			;5cbb
	add hl,bc		;5cbc
	ld d,h			;5cbd
	sbc a,b			;5cbe
	ld (hl),h		;5cbf
	ld h,h			;5cc0
	add a,d			;5cc1
	cp h			;5cc2
	ld a,a			;5cc3
	xor h			;5cc4
	dec b			;5cc5
	ld a,a			;5cc6
	sbc a,l			;5cc7
	add a,b			;5cc8
	ld a,d			;5cc9
	ld d,d			;5cca
	add hl,hl		;5ccb
	inc l			;5ccc
	sub a			;5ccd
	and d			;5cce
l5ccfh:
	call m,0380fh		;5ccf
	rst 38h			;5cd2
	ret m			;5cd3
	defb 0edh ;next byte illegal after ed	;5cd4
	rst 38h			;5cd5
	jp pe,09244h		;5cd6
	cp 067h			;5cd9
	set 5,b			;5cdb
	ld a,a			;5cdd
	call nc,05976h		;5cde
	ld c,l			;5ce1
	ld l,c			;5ce2
	add a,b			;5ce3
	ld a,a			;5ce4
	inc hl			;5ce5
	ld (hl),l		;5ce6
	rst 38h			;5ce7
	jp nz,03f80h		;5ce8
	ld l,0ffh		;5ceb
	ld a,04eh		;5ced
	rrca			;5cef
	cp d			;5cf0
	sbc a,e			;5cf1
	ret m			;5cf2
	ld a,a			;5cf3
	nop			;5cf4
	add hl,hl		;5cf5
	sub h			;5cf6
	sub h			;5cf7
	ld h,h			;5cf8
	ld a,b			;5cf9
	dec h			;5cfa
	ld a,d			;5cfb
	add a,h			;5cfc
	ld a,a			;5cfd
	sub h			;5cfe
	ld d,e			;5cff
	sbc a,c			;5d00
	add a,b			;5d01
	add a,l			;5d02
	ld a,b			;5d03
	ld (0ee99h),hl		;5d04
	exx			;5d07
	or c			;5d08
	jp p,l52fch		;5d09
	nop			;5d0c
	ret po			;5d0d
	rst 8			;5d0e
	rrca			;5d0f
	defb 0ddh,0ffh,01fh ;illegal sequence	;5d10
	ld d,h			;5d13
	inc bc			;5d14
	ld de,0237bh		;5d15
	ld a,a			;5d18
	and e			;5d19
	ld d,e			;5d1a
	ld a,a			;5d1b
	ld h,062h		;5d1c
	call m,0ee2fh		;5d1e
	xor 081h		;5d21
	or h			;5d23
	ld l,b			;5d24
	halt			;5d25
	ld e,d			;5d26
	ld h,l			;5d27
	sub a			;5d28
	rlca			;5d29
	ld d,(hl)		;5d2a
	ld (l5227h),hl		;5d2b
	ld a,a			;5d2e
	dec h			;5d2f
	sbc a,l			;5d30
	call c,032dfh		;5d31
	call 0dd53h		;5d34
	ret p			;5d37
	ccf			;5d38
	rrca			;5d39
	ld l,h			;5d3a
	rst 38h			;5d3b
	ld a,l			;5d3c
	ld e,a			;5d3d
	ld a,a			;5d3e
	add hl,de		;5d3f
	ld h,h			;5d40
	sub h			;5d41
	cp 090h			;5d42
	sub l			;5d44
	ld h,a			;5d45
	ld h,l			;5d46
	add hl,sp		;5d47
	ld e,c			;5d48
	ld b,h			;5d49
	nop			;5d4a
	push bc			;5d4b
	jp p,l454ah		;5d4c
	ld a,a			;5d4f
	ld (hl),07fh		;5d50
	ld a,(hl)		;5d52
	ld c,084h		;5d53
	ld (03423h),a		;5d55
	ld e,(hl)		;5d58
	ld l,a			;5d59
	rst 28h			;5d5a
	sbc a,b			;5d5b
	ld h,b			;5d5c
	call nc,0ef67h		;5d5d
	rrca			;5d60
	adc a,a			;5d61
	inc sp			;5d62
	rrca			;5d63
	jp z,0baa5h		;5d64
	ex (sp),hl		;5d67
	rrca			;5d68
	ld a,a			;5d69
	rst 20h			;5d6a
	sub e			;5d6b
	ei			;5d6c
	ld a,a			;5d6d
	call po,07437h		;5d6e
	sub l			;5d71
	ei			;5d72
	rlca			;5d73
	halt			;5d74
	ld d,h			;5d75
	sub h			;5d76
	rst 38h			;5d77
	ld (hl),c		;5d78
	nop			;5d79
	adc a,a			;5d7a
	ld c,c			;5d7b
	add a,h			;5d7c
	ld (bc),a		;5d7d
	sub e			;5d7e
	ld d,a			;5d7f
	ld h,(hl)		;5d80
	ld d,(hl)		;5d81
	ld a,a			;5d82
	jr l5daah		;5d83
	ld h,l			;5d85
	ld h,l			;5d86
	add a,c			;5d87
sub_5d88h:
	dec h			;5d88
	ld d,(hl)		;5d89
	sub a			;5d8a
	ex af,af'		;5d8b
	defb 0ddh,0d9h,06eh ;illegal sequence	;5d8c
	exx			;5d8f
	exx			;5d90
	sub 0deh		;5d91
	dec de			;5d93
	defb 0ddh,06fh ;ld ixl,a	;5d94
	rrca			;5d96
	and c			;5d97
	call z,0a99ah		;5d98
	call c,0e40fh		;5d9b
	exx			;5d9e
	cp l			;5d9f
	rst 38h			;5da0
	ld (hl),e		;5da1
	sbc a,h			;5da2
	rrca			;5da3
	ld a,a			;5da4
	di			;5da5
	rla			;5da6
	ld (00b11h),a		;5da7
l5daah:
	ld a,a			;5daa
	add a,065h		;5dab
	ld d,e			;5dad
	sub e			;5dae
	ld (hl),e		;5daf
	or 065h			;5db0
	rst 38h			;5db2
	add a,c			;5db3
	ret			;5db4
	nop			;5db5
	pop bc			;5db6
	ld h,h			;5db7
	sub a			;5db8
	defb 0fdh,044h ;ld b,iyh	;5db9
	add a,b			;5dbb
	sub (hl)		;5dbc
	ld a,a			;5dbd
	add a,c			;5dbe
	dec l			;5dbf
	ld a,a			;5dc0
	add a,d			;5dc1
	ld sp,hl		;5dc2
	sbc a,011h		;5dc3
	sbc a,l			;5dc5
	call sub_467fh		;5dc6
	push hl			;5dc9
	bit 6,b			;5dca
	call 00f07h		;5dcc
	sbc a,(hl)		;5dcf
	adc a,a			;5dd0
	ld h,a			;5dd1
	rrca			;5dd2
	xor e			;5dd3
	rst 38h			;5dd4
	sub a			;5dd5
	exx			;5dd6
	add a,h			;5dd7
	rst 8			;5dd8
	rrca			;5dd9
	ld de,093e7h		;5dda
	rst 38h			;5ddd
	jp p,0ff47h		;5dde
	call z,08a77h		;5de1
	xor 019h		;5de4
	sbc a,l			;5de6
	ld (hl),c		;5de7
	ld d,(hl)		;5de8
	adc a,(iy-078h)		;5de9
	ld a,a			;5dec
	ld b,e			;5ded
	ld h,(hl)		;5dee
	ld d,h			;5def
	sub l			;5df0
	ld a,c			;5df1
	add a,h			;5df2
	adc a,07fh		;5df3
	ld b,b			;5df5
	ld b,a			;5df6
	ld (hl),l		;5df7
	sbc a,b			;5df8
	sbc a,l			;5df9
	ret			;5dfa
	call c,0dd16h		;5dfb
	call z,sub_66cdh	;5dfe
	and 027h		;5e01
	jp pe,0d986h		;5e03
	ld a,c			;5e06
	rrca			;5e07
	and e			;5e08
	call c,09effh		;5e09
	rrca			;5e0c
	push hl			;5e0d
	sbc a,(hl)		;5e0e
	inc hl			;5e0f
	rst 38h			;5e10
	add a,e			;5e11
	call c,00fcdh		;5e12
	inc hl			;5e15
	ld h,e			;5e16
	ld (de),a		;5e17
l5e18h:
	scf			;5e18
	ld a,b			;5e19
	inc hl			;5e1a
	rst 38h			;5e1b
	call po,sub_7957h	;5e1c
	rst 38h			;5e1f
	call nz,0a585h		;5e20
	ld sp,hl		;5e23
	sub c			;5e24
	ld h,(iy-001h)		;5e25
	ret z			;5e28
	halt			;5e29
	sub l			;5e2a
	rst 38h			;5e2b
	ld a,b			;5e2c
	ld b,d			;5e2d
	add a,b			;5e2e
	ld (l7f9dh),hl		;5e2f
	ld h,(hl)		;5e32
	ld a,a			;5e33
	ld de,l6436h		;5e34
	rst 20h			;5e37
	ld c,l			;5e38
	sub 06ah		;5e39
	adc a,l			;5e3b
	exx			;5e3c
	ld a,(hl)		;5e3d
	adc a,h			;5e3e
	ret po			;5e3f
	adc a,h			;5e40
	rst 30h			;5e41
	adc a,l			;5e42
	cp 0feh			;5e43
	adc a,a			;5e45
	cp b			;5e46
	rrca			;5e47
	sbc a,h			;5e48
	jr l5e18h		;5e49
	ld c,d			;5e4b
	adc a,c			;5e4c
	defb 0ddh,0dch,0d9h ;illegal sequence	;5e4d
	add hl,bc		;5e50
	sub a			;5e51
	ld h,e			;5e52
	ld e,d			;5e53
	add a,l			;5e54
	ld b,a			;5e55
	rst 38h			;5e56
	rlc b			;5e57
	di			;5e59
	ld e,029h		;5e5a
	sub e			;5e5c
	rst 38h			;5e5d
	sub c			;5e5e
	cp 079h			;5e5f
	adc a,c			;5e61
	dec c			;5e62
	jp 0f622h		;5e63
	ld l,c			;5e66
	ld a,a			;5e67
	ld (hl),a		;5e68
	add a,c			;5e69
	sbc a,h			;5e6a
	adc a,h			;5e6b
	ld (l4425h),a		;5e6c
	ld a,a			;5e6f
	ld a,(de)		;5e70
	defb 0ddh,0c9h,0c9h ;illegal sequence	;5e71
	pop hl			;5e74
	sub l			;5e75
	add a,b			;5e76
	sbc a,h			;5e77
	ld l,a			;5e78
	push bc			;5e79
	rst 20h			;5e7a
	ld a,a			;5e7b
	rst 28h			;5e7c
	cp 02ch			;5e7d
	ld d,a			;5e7f
	adc a,b			;5e80
	ld (de),a		;5e81
	rrca			;5e82
	ld (hl),e		;5e83
	rst 38h			;5e84
	inc hl			;5e85
	inc (hl)		;5e86
	ld h,a			;5e87
	ld a,a			;5e88
	pop hl			;5e89
	rlca			;5e8a
	ld (0211fh),a		;5e8b
	cpl			;5e8e
	ld (de),a		;5e8f
	ld a,h			;5e90
	add a,033h		;5e91
	jp z,l7f00h		;5e93
	cp 051h			;5e96
	ld a,b			;5e98
	adc a,c			;5e99
	ex (sp),hl		;5e9a
	inc sp			;5e9b
	nop			;5e9c
	xor c			;5e9d
	ld a,e			;5e9e
	ld h,(hl)		;5e9f
	ld a,a			;5ea0
	pop de			;5ea1
	inc h			;5ea2
	ld b,e			;5ea3
	sbc a,026h		;5ea4
	ld h,(hl)		;5ea6
	ld d,l			;5ea7
	ld a,l			;5ea8
	ld bc,0806fh		;5ea9
	inc a			;5eac
	ld d,c			;5ead
	rrca			;5eae
	cp 0bdh			;5eaf
	ld a,a			;5eb1
	ld (hl),c		;5eb2
	rrca			;5eb3
	sbc a,a			;5eb4
sub_5eb5h:
	daa			;5eb5
	ld c,e			;5eb6
	ld l,h			;5eb7
	defb 0ddh,00fh,049h ;illegal sequence	;5eb8
	halt			;5ebb
	ld a,084h		;5ebc
	ld a,a			;5ebe
	inc sp			;5ebf
	rst 38h			;5ec0
	rra			;5ec1
	sub b			;5ec2
	ld h,l			;5ec3
	ld (hl),h		;5ec4
	ld d,l			;5ec5
	rst 38h			;5ec6
	add hl,hl		;5ec7
	sbc a,c			;5ec8
	cp 067h			;5ec9
	cp 018h			;5ecb
	ld b,(hl)		;5ecd
	ld e,d			;5ece
	ld d,l			;5ecf
	adc a,d			;5ed0
	ld h,c			;5ed1
	inc bc			;5ed2
	ld b,h			;5ed3
	ld b,d			;5ed4
	sub 0bbh		;5ed5
	ld a,a			;5ed7
	pop bc			;5ed8
	inc hl			;5ed9
	add hl,sp		;5eda
	ld e,a			;5edb
	dec de			;5edc
	defb 0ddh,09ch ;sbc a,ixh	;5edd
	ld a,a			;5edf
	rst 28h			;5ee0
	ex de,hl		;5ee1
	inc bc			;5ee2
	ld l,(hl)		;5ee3
	ld l,a			;5ee4
	ld (hl),a		;5ee5
	jp c,l5af1h		;5ee6
	sub b			;5ee9
	ld (hl),l		;5eea
	ld a,a			;5eeb
	cp 01dh			;5eec
	ld c,d			;5eee
	add a,b			;5eef
	ret po			;5ef0
	ld a,a			;5ef1
	ld e,b			;5ef2
	rst 38h			;5ef3
	add a,l			;5ef4
	jp z,084cah		;5ef5
	jp nc,l7effh		;5ef8
	rla			;5efb
	scf			;5efc
	ld a,a			;5efd
	add a,043h		;5efe
	inc l			;5f00
	add hl,hl		;5f01
	ld e,b			;5f02
	di			;5f03
	sub 07fh		;5f04
	add a,l			;5f06
	add a,a			;5f07
	adc a,b			;5f08
	ld (09578h),a		;5f09
	add a,(hl)		;5f0c
l5f0dh:
	adc a,h			;5f0d
	add a,b			;5f0e
	xor c			;5f0f
	sub d			;5f10
	add hl,sp		;5f11
l5f12h:
	ld a,a			;5f12
	adc a,h			;5f13
	inc h			;5f14
	ld a,a			;5f15
	ld d,b			;5f16
	ld (09cd5h),hl		;5f17
	cp b			;5f1a
	ld (bc),a		;5f1b
	ld e,e			;5f1c
	adc a,h			;5f1d
	jp p,06baah		;5f1e
	nop			;5f21
	rrca			;5f22
	cp 039h			;5f23
	sbc a,(hl)		;5f25
	add a,b			;5f26
	xor (hl)		;5f27
	rrca			;5f28
	ld b,(hl)		;5f29
	ld c,(hl)		;5f2a
l5f2bh:
	rst 38h			;5f2b
	rst 38h			;5f2c
	rlca			;5f2d
	ld b,b			;5f2e
	ret			;5f2f
	halt			;5f30
	ld b,l			;5f31
	adc a,b			;5f32
	ld d,h			;5f33
	ld d,a			;5f34
	ld h,h			;5f35
	sub (hl)		;5f36
	ld a,a			;5f37
	rst 28h			;5f38
	ld l,a			;5f39
	rst 38h			;5f3a
	jr c,l5f12h		;5f3b
	ei			;5f3d
	rrca			;5f3e
	ld e,c			;5f3f
	bit 3,(hl)		;5f40
	ld a,h			;5f42
	ld a,a			;5f43
	ld (bc),a		;5f44
	ld d,d			;5f45
	ld d,e			;5f46
	ld d,d			;5f47
	add a,b			;5f48
	ld b,h			;5f49
	sub l			;5f4a
	cp 0a9h			;5f4b
	sub h			;5f4d
	ld h,l			;5f4e
	add a,(hl)		;5f4f
	ld b,b			;5f50
	dec h			;5f51
	ld d,d			;5f52
	ld e,b			;5f53
	or c			;5f54
	add a,d			;5f55
	ld h,l			;5f56
	sub b			;5f57
	inc de			;5f58
	ld d,e			;5f59
	ld hl,(l7f35h)		;5f5a
	add hl,hl		;5f5d
	ld a,a			;5f5e
	adc a,(hl)		;5f5f
	exx			;5f60
	ld h,d			;5f61
	and a			;5f62
	jp pe,0d95ch		;5f63
	ld a,a			;5f66
	and e			;5f67
	ret			;5f68
	sub c			;5f69
	sbc a,a			;5f6a
	ld a,a			;5f6b
	djnz l5f0dh		;5f6c
	xor 0eeh		;5f6e
	ld sp,hl		;5f70
	call po,0977fh		;5f71
	ld h,h			;5f74
	ld a,(bc)		;5f75
	ld d,l			;5f76
	ld b,l			;5f77
	ld a,c			;5f78
	sub h			;5f79
	ld (hl),h		;5f7a
	rst 28h			;5f7b
	or a			;5f7c
	rst 38h			;5f7d
	call c,0c9b5h		;5f7e
	ld (de),a		;5f81
	adc a,c			;5f82
	rst 38h			;5f83
	jp p,09501h		;5f84
	ld h,e			;5f87
	ld h,l			;5f88
	adc a,b			;5f89
	halt			;5f8a
	ld c,c			;5f8b
	ld a,a			;5f8c
	adc a,c			;5f8d
	ld (hl),h		;5f8e
	call p,sub_6440h	;5f8f
	ld b,(hl)		;5f92
	ld h,h			;5f93
	sub l			;5f94
	ld c,b			;5f95
	adc a,b			;5f96
	nop			;5f97
	ld (hl),a		;5f98
	dec b			;5f99
	add hl,sp		;5f9a
	ld a,b			;5f9b
sub_5f9ch:
	ld (hl),a		;5f9c
	add a,l			;5f9d
	ld a,a			;5f9e
	sbc a,03ch		;5f9f
	or d			;5fa1
	xor d			;5fa2
	ld (hl),b		;5fa3
	add a,b			;5fa4
	ld d,a			;5fa5
	ld a,a			;5fa6
	adc a,h			;5fa7
	ld c,0cfh		;5fa8
	rrca			;5faa
	ld a,a			;5fab
l5fach:
	jr nz,l5fach		;5fac
	cp e			;5fae
	cp e			;5faf
	cp a			;5fb0
	call po,0997fh		;5fb1
	halt			;5fb4
	ex af,af'		;5fb5
	ld b,h			;5fb6
	ld h,a			;5fb7
	ld e,c			;5fb8
	ld d,h			;5fb9
	rst 38h			;5fba
	or 0c0h			;5fbb
	ld a,a			;5fbd
	sub a			;5fbe
	sbc a,c			;5fbf
l5fc0h:
	ld d,l			;5fc0
	ld l,c			;5fc1
	ret m			;5fc2
	ld a,a			;5fc3
	ret nz			;5fc4
	ld b,(hl)		;5fc5
	ld (hl),h		;5fc6
	halt			;5fc7
	add a,a			;5fc8
	ld h,(hl)		;5fc9
	ld e,c			;5fca
	exx			;5fcb
	ld a,a			;5fcc
	rst 38h			;5fcd
	nop			;5fce
	ld h,a			;5fcf
	ld (hl),h		;5fd0
	ld (hl),a		;5fd1
	halt			;5fd2
	sub l			;5fd3
	add a,a			;5fd4
	or d			;5fd5
	adc a,c			;5fd6
	add a,c			;5fd7
	ld b,d			;5fd8
	sub l			;5fd9
	ld b,d			;5fda
	ld a,a			;5fdb
	inc (hl)		;5fdc
	dec h			;5fdd
	ld l,b			;5fde
	sub (hl)		;5fdf
	defb 0ddh,07fh,06eh ;illegal sequence	;5fe0
	inc c			;5fe3
	sbc a,d			;5fe4
	rst 28h			;5fe5
	sbc a,c			;5fe6
	xor c			;5fe7
	add a,c			;5fe8
	ld b,a			;5fe9
	sbc a,l			;5fea
	ld l,a			;5feb
	ld h,c			;5fec
	sbc a,d			;5fed
	call z,0a9aah		;5fee
	ld l,a			;5ff1
	rst 8			;5ff2
	rrca			;5ff3
	nop			;5ff4
	sbc a,a			;5ff5
	ex de,hl		;5ff6
	cp c			;5ff7
	sbc a,e			;5ff8
	cp (hl)			;5ff9
	ld (hl),d		;5ffa
	ld sp,hl		;5ffb
	ld a,a			;5ffc
	sub a			;5ffd
	add a,d			;5ffe
	ld c,d			;5fff
sub_6000h:
	adc a,b			;6000
	ld d,l			;6001
	ld sp,0ef22h		;6002
	cp b			;6005
	pop af			;6006
	ld a,a			;6007
	rlca			;6008
	add hl,sp		;6009
	sub a			;600a
	sbc a,b			;600b
	ld d,h			;600c
	ld h,(hl)		;600d
	ld a,a			;600e
	add a,047h		;600f
	inc a			;6011
	add a,(hl)		;6012
	add a,a			;6013
	ld a,a			;6014
	rrca			;6015
	ld a,b			;6016
	add a,(hl)		;6017
	add a,c			;6018
	inc a			;6019
	ld a,a			;601a
	ld e,c			;601b
	ld (l7f00h),hl		;601c
	sbc a,h			;601f
	ld l,a			;6020
	rst 30h			;6021
	ld l,06fh		;6022
	ld a,(de)		;6024
	sbc a,d			;6025
	sbc a,d			;6026
	rrca			;6027
	ret			;6028
	ld l,c			;6029
	sbc a,d			;602a
	ld a,a			;602b
	xor c			;602c
	xor c			;602d
	rrca			;602e
	dec de			;602f
	sbc a,a			;6030
	sbc a,a			;6031
	ld a,a			;6032
	inc bc			;6033
	ld l,c			;6034
	ld a,a			;6035
	ld sp,hl		;6036
	ld sp,hl		;6037
	adc a,d			;6038
	call z,098a3h		;6039
	rst 38h			;603c
	ret po			;603d
	jr nc,l6079h		;603e
	ld h,a			;6040
	jp (hl)			;6041
	ld a,(hl)		;6042
	ld b,(hl)		;6043
	ld a,a			;6044
	ex (sp),hl		;6045
	xor c			;6046
	ld a,a			;6047
	pop de			;6048
	xor c			;6049
	ld a,a			;604a
	or 05ah			;604b
	rst 38h			;604d
	ld c,a			;604e
	rst 38h			;604f
	and h			;6050
	rrca			;6051
	ld (hl),066h		;6052
	ld (hl),h		;6054
	jp (hl)			;6055
	dec h			;6056
	ld a,c			;6057
	rst 38h			;6058
	push af			;6059
	ccf			;605a
	ret c			;605b
	dec sp			;605c
	ld a,l			;605d
	ld c,e			;605e
	defb 0ddh,0ffh,082h ;illegal sequence	;605f
	xor d			;6062
	rst 38h			;6063
	ld e,(hl)		;6064
	sbc a,(hl)		;6065
	rla			;6066
	dec bc			;6067
	sub a			;6068
	ld h,e			;6069
	rst 38h			;606a
	ld (hl),h		;606b
	inc (hl)		;606c
	sub (hl)		;606d
	ld h,a			;606e
	sub h			;606f
	sbc a,b			;6070
	add a,b			;6071
	ld b,(hl)		;6072
	adc a,b			;6073
	ld d,e			;6074
	adc a,c			;6075
	rst 38h			;6076
	jp (hl)			;6077
	ld d,e			;6078
l6079h:
	rst 28h			;6079
	ld a,(0d92bh)		;607a
	ret			;607d
	ret po			;607e
	ret			;607f
	adc a,a			;6080
	dec e			;6081
	ld d,d			;6082
	rst 38h			;6083
	push hl			;6084
	ex af,af'		;6085
	rst 38h			;6086
	add hl,sp		;6087
	ld d,c			;6088
	and c			;6089
	ld a,a			;608a
	rst 8			;608b
	nop			;608c
	inc de			;608d
	ld d,d			;608e
	ld b,e			;608f
	ld a,a			;6090
	call z,06776h		;6091
	and a			;6094
	ld e,l			;6095
	add a,b			;6096
	ld (bc),a		;6097
	ld c,b			;6098
	ld d,l			;6099
	ld e,b			;609a
	adc a,c			;609b
	rst 38h			;609c
	sbc a,0e5h		;609d
	ld e,c			;609f
	rst 38h			;60a0
	cp h			;60a1
	ld (hl),0eeh		;60a2
	sub 05bh		;60a4
	pop af			;60a6
	ld a,a			;60a7
	rst 38h			;60a8
	ld l,a			;60a9
	ld l,h			;60aa
	defb 0fdh,0ech,001h ;illegal sequence	;60ab
	ld e,c			;60ae
	inc a			;60af
	halt			;60b0
	ld d,e			;60b1
	ld a,a			;60b2
	pop bc			;60b3
	ld h,(hl)		;60b4
	ld (hl),h		;60b5
	ld c,c			;60b6
	ld b,h			;60b7
	ld (hl),a		;60b8
	ex de,hl		;60b9
	ret z			;60ba
	ld b,h			;60bb
	ld sp,08945h		;60bc
	rst 38h			;60bf
	ex de,hl		;60c0
	ld h,e			;60c1
	add hl,hl		;60c2
	rst 38h			;60c3
	call nz,0b47ch		;60c4
	and 0ceh		;60c7
	sbc a,0f9h		;60c9
	add a,b			;60cb
l60cch:
	dec de			;60cc
	ret z			;60cd
	rrca			;60ce
	rst 38h			;60cf
	adc a,(hl)		;60d0
	ld e,c			;60d1
	rrca			;60d2
	rst 38h			;60d3
	adc a,(hl)		;60d4
	adc a,d			;60d5
	ret z			;60d6
	rst 38h			;60d7
	ld h,a			;60d8
	ld a,a			;60d9
	exx			;60da
	ld d,h			;60db
	jp c,l4912h		;60dc
	rst 38h			;60df
	add hl,hl		;60e0
	add a,b			;60e1
	add a,(hl)		;60e2
	ld h,a			;60e3
	ld h,h			;60e4
	ld e,b			;60e5
	rst 38h			;60e6
	cp (hl)			;60e7
	ld a,e			;60e8
	ld l,h			;60e9
	rst 28h			;60ea
	ld d,d			;60eb
	rst 28h			;60ec
	ld d,e			;60ed
	ld (hl),b		;60ee
	and c			;60ef
	sbc a,h			;60f0
	ld b,l			;60f1
	ld l,h			;60f2
	rst 38h			;60f3
	xor (hl)		;60f4
	cp c			;60f5
	rrca			;60f6
	rst 38h			;60f7
	xor (hl)		;60f8
	inc sp			;60f9
	adc a,a			;60fa
	ld e,h			;60fb
	rrca			;60fc
	add hl,bc		;60fd
	and l			;60fe
	ld c,c			;60ff
	rst 38h			;6100
	sub 0fah		;6101
	xor c			;6103
	rla			;6104
	ld h,a			;6105
	add a,c			;6106
	ld a,b			;6107
	ld a,a			;6108
	add hl,sp		;6109
	ld (hl),h		;610a
	ld e,b			;610b
	rst 38h			;610c
	di			;610d
	rst 18h			;610e
	ld b,h			;610f
	sbc a,08fh		;6110
	ret			;6112
	ld a,a			;6113
	dec l			;6114
	rrca			;6115
	rst 20h			;6116
	rst 38h			;6117
	dec l			;6118
	rrca			;6119
	ld l,a			;611a
	call 086feh		;611b
	rrca			;611e
	ld a,a			;611f
	call nc,0962ah		;6120
	rst 38h			;6123
	ld (hl),h		;6124
	ld (bc),a		;6125
	inc sp			;6126
	ret m			;6127
	ld d,(hl)		;6128
	adc a,c			;6129
	ld d,h			;612a
	ld c,c			;612b
	add a,e			;612c
	xor b			;612d
	rst 38h			;612e
	ret m			;612f
	defb 0fdh,0ffh,0efh ;illegal sequence	;6130
	ld d,c			;6133
	ld d,l			;6134
	ld d,e			;6135
	ld a,a			;6136
	exx			;6137
	exx			;6138
	call m,sub_465ch	;6139
l613ch:
	ex af,af'		;613c
	add a,045h		;613d
	rrca			;613f
	ei			;6140
	rst 38h			;6141
	adc a,a			;6142
	rrca			;6143
	ld l,0d9h		;6144
	cp 0efh			;6146
	rrca			;6148
	dec h			;6149
	cp 084h			;614a
	sub h			;614c
	ld a,073h		;614d
	pop af			;614f
	ld a,a			;6150
	ex af,af'		;6151
	sub e			;6152
	ld (de),a		;6153
	jr c,l61ach		;6154
	ei			;6156
	sub e			;6157
	sbc a,c			;6158
	add a,c			;6159
	daa			;615a
	ld (hl),l		;615b
	rst 38h			;615c
	jp po,095bbh		;615d
	inc b			;6160
	ld (bc),a		;6161
	sub h			;6162
	ld b,l			;6163
	ld h,(hl)		;6164
	ld h,a			;6165
	add a,b			;6166
	ld b,e			;6167
	halt			;6168
	ld d,l			;6169
	nop			;616a
	ld (de),a		;616b
	ld b,d			;616c
	cp 020h			;616d
	ld (l667fh),hl		;616f
	ld l,c			;6172
	sub l			;6173
	sub e			;6174
	nop			;6175
	ld b,l			;6176
	ld h,l			;6177
	ld b,e			;6178
	ld (l6436h),hl		;6179
	adc a,b			;617c
	adc a,h			;617d
	sbc a,c			;617e
l617fh:
	ret p			;617f
	call 03f01h		;6180
	ret			;6183
	ret pe			;6184
	add a,c			;6185
	sbc a,c			;6186
	call nz,00f58h		;6187
	cp (hl)			;618a
	ld a,a			;618b
	dec e			;618c
	rrca			;618d
	inc hl			;618e
	call 098feh		;618f
	adc a,a			;6192
	jp z,0fc0fh		;6193
	or (hl)			;6196
	ret nc			;6197
	add a,a			;6198
	ld h,a			;6199
	rst 28h			;619a
	cpl			;619b
	ld a,a			;619c
	adc a,c			;619d
	dec (hl)		;619e
	ld c,c			;619f
	inc d			;61a0
	ld (bc),a		;61a1
	sub l			;61a2
	ld c,c			;61a3
	ld c,c			;61a4
	sbc a,b			;61a5
	ld d,l			;61a6
	cp 03eh			;61a7
	inc de			;61a9
	ld (hl),a		;61aa
	ld d,h			;61ab
l61ach:
	add hl,hl		;61ac
	inc d			;61ad
	ld e,c			;61ae
	add a,b			;61af
	ld c,d			;61b0
	add a,b			;61b1
	jr l613ch		;61b2
	ld h,(hl)		;61b4
	nop			;61b5
	ld h,h			;61b6
	inc l			;61b7
	sub a			;61b8
	ld h,(hl)		;61b9
	adc a,(hl)		;61ba
	jp l7fa8h		;61bb
	and d			;61be
	ld b,a			;61bf
	ld (hl),l		;61c0
	add a,b			;61c1
	ret			;61c2
	ret p			;61c3
	ld h,e			;61c4
	rst 38h			;61c5
	add a,0ddh		;61c6
	inc b			;61c8
	ld c,09ch		;61c9
	ld d,l			;61cb
	adc a,c			;61cc
	rrca			;61cd
	cp b			;61ce
	ld a,a			;61cf
	ret p			;61d0
	rrca			;61d1
	sub (hl)		;61d2
	add a,b			;61d3
	inc sp			;61d4
	ld d,00fh		;61d5
	ld e,b			;61d7
	sbc a,c			;61d8
	ld h,l			;61d9
	ld h,(hl)		;61da
	or b			;61db
	ld b,b			;61dc
	rst 38h			;61dd
	ld d,(hl)		;61de
	ld de,l597bh		;61df
	inc bc			;61e2
	add a,07fh		;61e3
	inc (hl)		;61e5
	ld l,c			;61e6
	ld d,011h		;61e7
	add a,l			;61e9
	sub l			;61ea
	sub (hl)		;61eb
	sbc a,a			;61ec
	nop			;61ed
	ld bc,09365h		;61ee
	di			;61f1
	djnz $-119		;61f2
	ld h,l			;61f4
	ld c,c			;61f5
	sub e			;61f6
	rst 0			;61f7
	ld a,h			;61f8
	ld a,b			;61f9
	ld a,a			;61fa
	ld b,h			;61fb
	halt			;61fc
	adc a,l			;61fd
	halt			;61fe
	add hl,sp		;61ff
	ld d,(hl)		;6200
	sbc a,c			;6201
	ld a,a			;6202
	ld h,l			;6203
	ld h,a			;6204
	jr c,l6272h		;6205
	ld a,a			;6207
	push bc			;6208
	call p,0c52bh		;6209
	ld sp,00f78h		;620c
	ret			;620f
	cp 0dch			;6210
	rrca			;6212
	push hl			;6213
	ld a,a			;6214
	inc l			;6215
	sbc a,a			;6216
	cp 09ch			;6217
	and a			;6219
	jp po,0e50fh		;621a
	pop de			;621d
	adc a,b			;621e
	dec b			;621f
	ld b,(hl)		;6220
	rst 38h			;6221
	ret pe			;6222
l6223h:
	or 011h			;6223
	call nc,091fah		;6225
	defb 0fdh,033h,08fh ;illegal sequence	;6228
	add hl,de		;622b
sub_622ch:
	sub a			;622c
	ld hl,(09f59h)		;622d
	call m,sub_7488h	;6230
	sub l			;6233
	xor h			;6234
	call p,0e8c9h		;6235
	sub h			;6238
	add a,b			;6239
	rla			;623a
	nop			;623b
	dec hl			;623c
	ld c,c			;623d
	defb 0fdh,042h,057h ;illegal sequence	;623e
	ld h,(hl)		;6241
	ld a,a			;6242
	jr l629eh		;6243
	dec h			;6245
	ld h,l			;6246
	ld a,a			;6247
	ld d,(hl)		;6248
	sbc a,h			;6249
	sbc a,l			;624a
	adc a,e			;624b
	ret po			;624c
	ld e,d			;624d
	ld l,h			;624e
	ld a,a			;624f
	ld b,047h		;6250
	rst 0			;6252
	rst 20h			;6253
	dec de			;6254
	rrca			;6255
	halt			;6256
	sbc a,(hl)		;6257
	rrca			;6258
	ld (hl),081h		;6259
	adc a,007h		;625b
	ld l,l			;625d
	rrca			;625e
	push hl			;625f
	cp c			;6260
	ld l,h			;6261
	ld a,a			;6262
	rst 38h			;6263
	ld h,c			;6264
l6265h:
	ld d,l			;6265
	ld d,a			;6266
	call m,09695h		;6267
	ld sp,0a6ech		;626a
	add a,c			;626d
	call m,sub_6420h	;626e
	sub h			;6271
l6272h:
	sbc a,c			;6272
	ld b,h			;6273
	sub l			;6274
	ld c,067h		;6275
	ld h,l			;6277
	ld e,c			;6278
	ld b,h			;6279
	nop			;627a
	ld e,c			;627b
	ld b,e			;627c
	ld (de),a		;627d
	cp 011h			;627e
	ld h,l			;6280
	ld (hl),07fh		;6281
	dec bc			;6283
	ld (08427h),hl		;6284
	cp 011h			;6287
	inc (hl)		;6289
	ret po			;628a
	push bc			;628b
	rst 38h			;628c
	ld (hl),h		;628d
	sbc a,h			;628e
	ld c,e			;628f
	call nz,03bbfh		;6290
	rrca			;6293
	cp 0bbh			;6294
	rrca			;6296
	rst 20h			;6297
	rst 38h			;6298
	add hl,de		;6299
	rrca			;629a
	push de			;629b
	push hl			;629c
	cp c			;629d
l629eh:
	ld b,a			;629e
	rst 38h			;629f
	ld c,a			;62a0
	inc (hl)		;62a1
	sub c			;62a2
	xor c			;62a3
	ex de,hl		;62a4
	xor a			;62a5
	ld a,a			;62a6
	adc a,b			;62a7
	ld d,e			;62a8
	sub h			;62a9
	inc de			;62aa
	sub h			;62ab
	ld h,062h		;62ac
	defb 0fdh,037h,049h ;illegal sequence	;62ae
	sub c			;62b1
	ret			;62b2
	ld l,b			;62b3
	ld a,a			;62b4
	inc h			;62b5
	sbc a,c			;62b6
	ld a,a			;62b7
	ld d,(hl)		;62b8
	add a,b			;62b9
	ld c,h			;62ba
	ld h,d			;62bb
	cp 0bch			;62bc
	ld h,b			;62be
	ld sp,0c85eh		;62bf
	exx			;62c2
	rla			;62c3
	rrca			;62c4
	pop hl			;62c5
	rst 0			;62c6
	rst 38h			;62c7
	inc l			;62c8
	ld e,c			;62c9
	jp nz,08344h		;62ca
	rst 38h			;62cd
	ld (hl),d		;62ce
	ld h,a			;62cf
	sub (hl)		;62d0
	cp 018h			;62d1
l62d3h:
	adc a,c			;62d3
	ld a,a			;62d4
	sub a			;62d5
	or a			;62d6
	call m,sub_7f8ah	;62d7
	ret pe			;62da
	rst 30h			;62db
	dec h			;62dc
	add a,h			;62dd
	rlca			;62de
	ld c,c			;62df
	inc hl			;62e0
	ld b,l			;62e1
	ld h,a			;62e2
	adc a,b			;62e3
	defb 0fdh,052h,0f2h ;illegal sequence	;62e4
sub_62e7h:
	ld b,025h		;62e7
	add a,a			;62e9
	ld d,(hl)		;62ea
	add a,a			;62eb
	cp h			;62ec
	ld d,e			;62ed
	cp 0a3h			;62ee
	ld a,b			;62f0
	ld (l7f35h),hl		;62f1
	inc d			;62f4
	sub (hl)		;62f5
	jp c,000d4h		;62f6
	add a,046h		;62f9
	ld b,h			;62fb
sub_62fch:
	cp (hl)			;62fc
	defb 0fdh,00fh,0f1h ;illegal sequence	;62fd
	cp a			;6300
	sub (hl)		;6301
	push hl			;6302
	exx			;6303
	sbc a,b			;6304
	ld d,e			;6305
	rst 38h			;6306
	inc e			;6307
	sub c			;6308
	scf			;6309
	sub a			;630a
	or 0cch			;630b
	sbc a,c			;630d
	adc a,d			;630e
	ld b,h			;630f
	add a,b			;6310
	ret m			;6311
	ld c,d			;6312
	sub d			;6313
	dec h			;6314
	sub l			;6315
	xor b			;6316
	push hl			;6317
	jp l7f9dh		;6318
	pop de			;631b
	ld e,c			;631c
	cp 058h			;631d
	ld d,(hl)		;631f
	and c			;6320
	sub l			;6321
	ld (0e929h),hl		;6322
	sbc a,b			;6325
	ld h,e			;6326
	ld h,a			;6327
	rrca			;6328
	pop af			;6329
	dec l			;632a
	push hl			;632b
	ret nz			;632c
	sbc a,b			;632d
	ld c,c			;632e
	xor (hl)		;632f
	rst 38h			;6330
	ld a,e			;6331
	jr nz,l62d3h		;6332
	rrca			;6334
	sub (hl)		;6335
	ld a,a			;6336
	ex af,af'		;6337
	scf			;6338
	ld d,d			;6339
	ld d,h			;633a
	ld e,098h		;633b
	ld (hl),h		;633d
	ld h,h			;633e
	ld a,a			;633f
	xor h			;6340
	ld h,l			;6341
	defb 0fdh,064h ;ld iyh,iyh	;6342
	ld b,l			;6344
	ld h,d			;6345
	call c,0bf20h		;6346
	in a,(0cdh)		;6349
	dec d			;634b
	add hl,sp		;634c
	rst 8			;634d
	sub e			;634e
	cp (hl)			;634f
	ld e,(hl)		;6350
	rst 8			;6351
	sbc a,046h		;6352
	push bc			;6354
l6355h:
	jp (ix)			;6355
	ld h,0cah		;6357
	ld a,(046adh)		;6359
	xor (hl)		;635c
	ld l,a			;635d
	call nc,sub_7986h	;635e
	add a,d			;6361
	and 00fh		;6362
	ld l,h			;6364
	ld a,a			;6365
l6366h:
	sub d			;6366
	or c			;6367
	or b			;6368
	rra			;6369
	daa			;636a
	nop			;636b
	inc bc			;636c
	dec (hl)		;636d
	ld h,l			;636e
	dec h			;636f
	defb 0fdh,0c1h,024h ;illegal sequence	;6370
	ld d,h			;6373
	add hl,sp		;6374
	ld a,a			;6375
	call po,06486h		;6376
	ld d,e			;6379
	ld a,a			;637a
	rla			;637b
	ld b,h			;637c
	call po,0e1fdh		;637d
	ld a,a			;6380
	sub e			;6381
	ld (hl),l		;6382
	ld d,a			;6383
	ld a,a			;6384
	rst 8			;6385
	ld h,a			;6386
	ld a,e			;6387
	ld a,a			;6388
	ex af,af'		;6389
	add a,l			;638a
	rst 18h			;638b
	ret p			;638c
	and (hl)		;638d
	rst 8			;638e
	inc sp			;638f
	ld (hl),d		;6390
	sbc a,e			;6391
	ld c,000h		;6392
	dec de			;6394
	adc a,c			;6395
	ex (sp),hl		;6396
	ld c,e			;6397
	ret pe			;6398
	dec a			;6399
	ld l,b			;639a
	dec hl			;639b
	adc a,c			;639c
	rst 38h			;639d
	adc a,a			;639e
	nop			;639f
	ld (de),a		;63a0
	halt			;63a1
	ld b,h			;63a2
	rst 38h			;63a3
	sbc a,(hl)		;63a4
	add hl,hl		;63a5
	rst 20h			;63a6
	ld bc,04452h		;63a7
	sub h			;63aa
	ld c,c			;63ab
	ld d,h			;63ac
	ld c,(iy+030h)		;63ad
	ld a,a			;63b0
	ld (hl),l		;63b1
	add hl,sp		;63b2
	ld a,c			;63b3
	cp l			;63b4
	defb 0fdh,0a9h,07fh ;illegal sequence	;63b5
	cp 089h			;63b8
	cp a			;63ba
	ld c,h			;63bb
	ld bc,0ff8dh		;63bc
	adc a,d			;63bf
	xor 0cfh		;63c0
	ld (hl),0f5h		;63c2
	ld (l4666h),hl		;63c4
	ld l,c			;63c7
	ld b,(hl)		;63c8
	ld c,c			;63c9
	rst 28h			;63ca
	sbc a,e			;63cb
	ld d,h			;63cc
	ld b,(hl)		;63cd
	rst 30h			;63ce
	jp nc,08ec9h		;63cf
	ld e,l			;63d2
	ld a,c			;63d3
	ld l,b			;63d4
	cp b			;63d5
	rrca			;63d6
	add a,e			;63d7
	and (hl)		;63d8
	rst 38h			;63d9
	daa			;63da
	sbc a,a			;63db
	cp d			;63dc
	sub (hl)		;63dd
	sub d			;63de
l63dfh:
	ld d,h			;63df
	add a,b			;63e0
	ret p			;63e1
	add a,0e8h		;63e2
	ld c,c			;63e4
	call m,02aeeh		;63e5
	ld a,b			;63e8
	ld (hl),d		;63e9
	adc a,b			;63ea
	nop			;63eb
l63ech:
	ld (hl),a		;63ec
	jr l6444h		;63ed
	ld h,e			;63ef
	sub a			;63f0
	cp a			;63f1
	ld c,d			;63f2
	cp 05dh			;63f3
	defb 0fdh,07fh,0b4h ;illegal sequence	;63f5
	cp a			;63f8
	adc a,e			;63f9
	inc sp			;63fa
	ld bc,l60cch		;63fb
	add hl,de		;63fe
l63ffh:
	ld hl,01229h		;63ff
	jp po,0f44fh		;6402
	dec h			;6405
	ld (hl),a		;6406
	rst 18h			;6407
	di			;6408
	ld l,a			;6409
l640ah:
	sbc a,07eh		;640a
	dec (hl)		;640c
	sbc a,h			;640d
	adc a,a			;640e
	ld l,e			;640f
	cp 01eh			;6410
	exx			;6412
	ld l,b			;6413
	ld a,h			;6414
	ld a,a			;6415
	ex (sp),hl		;6416
	ccf			;6417
	add hl,sp		;6418
	ld a,a			;6419
	or e			;641a
	adc a,a			;641b
	add a,h			;641c
	ld a,a			;641d
	pop hl			;641e
	ld c,b			;641f
sub_6420h:
	ld (hl),l		;6420
	add a,b			;6421
	dec h			;6422
	ld a,l			;6423
	ld d,h			;6424
	sbc a,l			;6425
	inc iy			;6426
	ld a,b			;6428
	ld a,(hl)		;6429
	and c			;642a
	ld h,(hl)		;642b
	ld b,l			;642c
	add hl,sp		;642d
	ld a,(bc)		;642e
	jr c,l64aah		;642f
	ld a,a			;6431
	ld b,a			;6432
	ld (l63ffh),a		;6433
l6436h:
	adc a,a			;6436
	inc sp			;6437
	scf			;6438
	rst 8			;6439
	dec sp			;643a
	ld b,a			;643b
	sbc a,c			;643c
	ld b,e			;643d
	rst 38h			;643e
	halt			;643f
sub_6440h:
	ld a,a			;6440
	ld e,h			;6441
	or 0d1h			;6442
l6444h:
	exx			;6444
	sbc a,h			;6445
	adc a,a			;6446
	cp h			;6447
	daa			;6448
	ld e,c			;6449
	ld h,c			;644a
	defb 0ddh,068h ;ld ixl,b	;644b
	sbc a,e			;644d
	ld e,c			;644e
	rst 38h			;644f
	dec de			;6450
	and l			;6451
	sub b			;6452
	jr z,l63ech		;6453
	ld (hl),a		;6455
	nop			;6456
l6457h:
	rst 38h			;6457
	ld sp,hl		;6458
	ld a,(0b5f5h)		;6459
	push hl			;645c
	add hl,sp		;645d
	sub h			;645e
	ld d,(hl)		;645f
	rst 38h			;6460
	add hl,sp		;6461
	ld a,(hl)		;6462
	ld d,h			;6463
	ld d,l			;6464
	ccf			;6465
	add a,a			;6466
	dec h			;6467
	ld d,e			;6468
	cp 048h			;6469
	ld (0ff43h),hl		;646b
	defb 0edh ;next byte illegal after ed	;646e
	jr c,l64a9h		;646f
	ld c,(hl)		;6471
	rst 38h			;6472
	ld a,(0d336h)		;6473
	pop af			;6476
	ld a,a			;6477
	ld a,d			;6478
	adc a,c			;6479
	call po,sub_7923h	;647a
	cp 093h			;647d
	sbc a,l			;647f
	call sub_497fh		;6480
l6483h:
	ret c			;6483
	ld d,h			;6484
	call p,0cd0ch		;6485
	exx			;6488
	ld c,d			;6489
	adc a,(hl)		;648a
	rst 38h			;648b
	ld h,e			;648c
	xor a			;648d
	inc e			;648e
	ld b,(hl)		;648f
	cpl			;6490
	ld d,(hl)		;6491
	cp a			;6492
	ld b,(hl)		;6493
	ld de,09676h		;6494
	jp c,0ffe4h		;6497
	call m,08889h		;649a
	add a,b			;649d
	inc (hl)		;649e
	add a,b			;649f
	call p,0f4ffh		;64a0
	add a,b			;64a3
	ret c			;64a4
	nop			;64a5
	ld a,(hl)		;64a6
	ld b,h			;64a7
	sbc a,c			;64a8
l64a9h:
	ld c,l			;64a9
l64aah:
	ld a,b			;64aa
	inc de			;64ab
	sub h			;64ac
	call m,032c5h		;64ad
	sub l			;64b0
	ld h,h			;64b1
	rst 38h			;64b2
	ld (hl),c		;64b3
	cp a			;64b4
	ret			;64b5
	jr c,l6519h		;64b6
	ld c,a			;64b8
	ld h,a			;64b9
	ld (hl),e		;64ba
	rst 38h			;64bb
	ld l,066h		;64bc
	sbc a,b			;64be
	ld e,c			;64bf
	ld c,l			;64c0
	ld d,b			;64c1
	ld l,h			;64c2
	ld a,a			;64c3
	ret			;64c4
	call c,0e4dch		;64c5
	ld a,a			;64c8
	ld h,a			;64c9
	ld a,h			;64ca
	sbc a,088h		;64cb
	ld h,a			;64cd
	rst 38h			;64ce
	adc a,(hl)		;64cf
	rst 38h			;64d0
	ld b,d			;64d1
	scf			;64d2
	ld a,c			;64d3
	xor a			;64d4
	sub a			;64d5
	ld a,a			;64d6
	ld h,(hl)		;64d7
	ld d,(hl)		;64d8
	sub h			;64d9
	in a,(0a2h)		;64da
	ld b,a			;64dc
	rst 38h			;64dd
	cp (hl)			;64de
	add hl,sp		;64df
	ld l,e			;64e0
	ld c,c			;64e1
	dec de			;64e2
	ld l,(hl)		;64e3
	rst 30h			;64e4
	ld l,c			;64e5
	add a,d			;64e6
	add a,c			;64e7
	ret pe			;64e8
	halt			;64e9
	jp nc,l697eh		;64ea
	sbc a,b			;64ed
	sub e			;64ee
	ld b,h			;64ef
	inc h			;64f0
	cp 0a9h			;64f1
	ld h,065h		;64f3
	and d			;64f5
	ld e,l			;64f6
	ld b,l			;64f7
	ld sp,hl		;64f8
	jr c,l6483h		;64f9
	adc a,c			;64fb
	ret m			;64fc
	and l			;64fd
	rst 8			;64fe
	adc a,c			;64ff
	or 018h			;6500
	ld h,h			;6502
	rst 18h			;6503
	ret			;6504
	add a,h			;6505
	ld l,c			;6506
	call sub_471ch		;6507
	cp 012h			;650a
	rst 38h			;650c
	cp c			;650d
	defb 0ddh,068h ;ld ixl,b	;650e
	add a,a			;6510
	call 0d396h		;6511
	ld (hl),d		;6514
	ld l,b			;6515
	xor a			;6516
	scf			;6517
	rst 38h			;6518
l6519h:
	jp c,0fe8ch		;6519
	ld sp,l5944h		;651c
	ld h,d			;651f
	sub h			;6520
	add a,(hl)		;6521
	call c,0ffcbh		;6522
	or b			;6525
	sub e			;6526
	ld b,(hl)		;6527
	sub e			;6528
	ld h,l			;6529
	inc (hl)		;652a
	or c			;652b
	add a,c			;652c
	inc e			;652d
	or c			;652e
	ld h,l			;652f
	ld a,(hl)		;6530
	ld h,(hl)		;6531
	sub e			;6532
	ld c,b			;6533
	sub l			;6534
	adc a,(hl)		;6535
	ld a,d			;6536
	ld b,h			;6537
	inc sp			;6538
	call m,0839dh		;6539
	inc hl			;653c
	dec h			;653d
	inc sp			;653e
	or a			;653f
	ld l,e			;6540
	and l			;6541
	dec a			;6542
	rst 8			;6543
	adc a,c			;6544
	add a,b			;6545
	ld de,0fe45h		;6546
	ld b,l			;6549
	xor d			;654a
	add a,a			;654b
	ld (de),a		;654c
	ld d,(hl)		;654d
	inc bc			;654e
	ret po			;654f
	ld a,a			;6550
	sbc a,h			;6551
	call c,sub_7fe4h	;6552
l6555h:
	adc a,c			;6555
	ld c,h			;6556
	xor 07fh		;6557
	sub a			;6559
	or 0abh			;655a
	jr z,l6555h		;655c
	adc a,07fh		;655e
	and h			;6560
	or b			;6561
	jr $+87			;6562
	ld e,c			;6564
	adc a,b			;6565
	or l			;6566
	ld c,l			;6567
	and b			;6568
	ld sp,l493dh		;6569
	ld a,a			;656c
	jp nc,l5479h		;656d
	ld l,c			;6570
	xor e			;6571
	inc h			;6572
	ld b,h			;6573
	add a,c			;6574
	ld (hl),c		;6575
	jp m,l7ed7h		;6576
	ld d,08dh		;6579
sub_657bh:
	add a,h			;657b
	ld h,d			;657c
	add a,h			;657d
	cp 08ch			;657e
	dec h			;6580
	call 0e86eh		;6581
	or h			;6584
	ld a,c			;6585
l6586h:
	sbc a,b			;6586
	ld e,a			;6587
	add a,(hl)		;6588
	call c,05d51h		;6589
	ld e,b			;658c
	adc a,c			;658d
	ret po			;658e
	ld (hl),h		;658f
	jp z,l6457h		;6590
	ld e,00bh		;6593
	sbc a,l			;6595
	ld (hl),e		;6596
	call m,01b56h		;6597
	and c			;659a
	rst 38h			;659b
	ld h,a			;659c
	ld b,04fh		;659d
	add a,b			;659f
	ld d,098h		;65a0
	add a,07fh		;65a2
	ld a,(l7f79h)		;65a4
	ld (09697h),hl		;65a7
	or c			;65aa
	ld l,(hl)		;65ab
	adc a,b			;65ac
	ld d,(hl)		;65ad
	jp (hl)			;65ae
	adc a,a			;65af
	sbc a,c			;65b0
	nop			;65b1
	adc a,l			;65b2
	ld (hl),048h		;65b3
	dec sp			;65b5
	sub h			;65b6
	defb 0fdh,097h,049h ;illegal sequence	;65b7
	ld a,(hl)		;65ba
	rla			;65bb
	call m,sub_4408h	;65bc
	ld d,d			;65bf
	daa			;65c0
	cp 09bh			;65c1
	dec h			;65c3
	dec bc			;65c4
	rst 8			;65c5
	ld c,e			;65c6
	ld c,a			;65c7
	push bc			;65c8
sub_65c9h:
	ld l,(hl)		;65c9
	cp h			;65ca
	call 0cce6h		;65cb
	inc d			;65ce
	halt			;65cf
	ld b,l			;65d0
	ld (de),a		;65d1
	cp 0ebh			;65d2
	sub l			;65d4
	ld a,a			;65d5
	ld (hl),a		;65d6
	ld a,(hl)		;65d7
	ld sp,hl		;65d8
	or e			;65d9
	dec h			;65da
	inc a			;65db
	ld a,a			;65dc
	pop de			;65dd
	add a,e			;65de
	rst 38h			;65df
	jp po,03797h		;65e0
	ld l,c			;65e3
	ld b,l			;65e4
	ld a,(hl)		;65e5
	sub a			;65e6
	ld l,l			;65e7
	cp 0f8h			;65e8
	and a			;65ea
	rst 18h			;65eb
	add a,d			;65ec
	ld (hl),066h		;65ed
	jp (hl)			;65ef
	ld a,(09671h)		;65f0
	ld a,(hl)		;65f3
	cp 015h			;65f4
	adc a,l			;65f6
	ret nz			;65f7
	ld (02262h),hl		;65f8
	inc sp			;65fb
	ld c,c			;65fc
	xor 070h		;65fd
	or a			;65ff
	ld (hl),053h		;6600
	sbc a,(hl)		;6602
	cp h			;6603
	push de			;6604
	adc a,c			;6605
	ret po			;6606
	or c			;6607
	adc a,(hl)		;6608
	ld (08f54h),hl		;6609
	rst 10h			;660c
	ld de,0fb9ch		;660d
	ld sp,059fbh		;6610
	ld (hl),l		;6613
	inc hl			;6614
	ld l,h			;6615
	rlca			;6616
	ret			;6617
	ret			;6618
	cpl			;6619
	or a			;661a
	ld d,e			;661b
	ld a,a			;661c
	sub b			;661d
	inc sp			;661e
	sub l			;661f
	adc a,c			;6620
	sub 0aeh		;6621
	inc a			;6623
	ld b,e			;6624
	ld h,e			;6625
	add a,b			;6626
	exx			;6627
sub_6628h:
	inc sp			;6628
	add a,c			;6629
	dec d			;662a
	and b			;662b
	jp po,08679h		;662c
	add hl,sp		;662f
l6630h:
	ld b,l			;6630
	ld e,c			;6631
	cp 0fdh			;6632
	ld b,c			;6634
	ld h,d			;6635
l6636h:
	dec h			;6636
	call m,051ceh		;6637
	jp (hl)			;663a
	sub h			;663b
	ld e,l			;663c
	cp 072h			;663d
	ld c,c			;663f
	adc a,h			;6640
	add a,081h		;6641
	ld a,a			;6643
	ld h,l			;6644
	adc a,a			;6645
	ret m			;6646
	ld b,(hl)		;6647
	sub h			;6648
	call z,0f01ch		;6649
	ld a,a			;664c
	ret z			;664d
	ld b,(hl)		;664e
	add a,l			;664f
	xor e			;6650
	dec e			;6651
	adc a,l			;6652
	call z,sub_717fh	;6653
	cpl			;6656
	ld a,a			;6657
l6658h:
	push hl			;6658
	cp a			;6659
	cp c			;665a
	or b			;665b
	ld e,h			;665c
	ld d,b			;665d
	add a,b			;665e
	sub (hl)		;665f
	ret m			;6660
	ld a,a			;6661
	and l			;6662
	push hl			;6663
	sbc a,(hl)		;6664
	push de			;6665
sub_6666h:
	ld c,(hl)		;6666
	sub 066h		;6667
	ld e,l			;6669
	and d			;666a
	adc a,h			;666b
	call m,sub_49b5h	;666c
	rst 10h			;666f
	adc a,079h		;6670
	ld e,074h		;6672
	ld a,e			;6674
	jp pe,0a532h		;6675
	cp d			;6678
	ld a,a			;6679
	ld d,l			;667a
	inc a			;667b
	ld c,c			;667c
	ld a,c			;667d
	ld a,a			;667e
l667fh:
	ld b,d			;667f
	adc a,a			;6680
	ld sp,hl		;6681
	xor d			;6682
	xor d			;6683
	add hl,sp		;6684
	adc a,(hl)		;6685
	rst 38h			;6686
	dec e			;6687
	sbc a,b			;6688
	cpl			;6689
	inc a			;668a
	sub e			;668b
	ld a,a			;668c
	sub 035h		;668d
	jp pe,l7fcfh		;668f
	rst 0			;6692
	sbc a,l			;6693
	sub e			;6694
	ld h,(hl)		;6695
	ld a,a			;6696
	rst 8			;6697
	ld a,(hl)		;6698
	ld e,b			;6699
	ld d,l			;669a
	ei			;669b
	xor a			;669c
	ld (0297fh),hl		;669d
	ld (hl),c		;66a0
	ld a,c			;66a1
	rst 38h			;66a2
	inc l			;66a3
	and a			;66a4
	sub l			;66a5
	add a,084h		;66a6
	sub (hl)		;66a8
	rst 38h			;66a9
	xor h			;66aa
l66abh:
	rrca			;66ab
	ld l,c			;66ac
	ld (hl),c		;66ad
	ld (hl),a		;66ae
	ld a,a			;66af
	adc a,l			;66b0
	ld c,d			;66b1
	adc a,a			;66b2
	ld b,09ah		;66b3
	call z,0a9aah		;66b5
	ld d,h			;66b8
	ld c,b			;66b9
	cp e			;66ba
	ret			;66bb
	cpl			;66bc
	adc a,a			;66bd
	rst 38h			;66be
	ld b,e			;66bf
	jr c,$-117		;66c0
	ld a,a			;66c2
	sub h			;66c3
	ld l,c			;66c4
	cp 07ch			;66c5
	jr z,$+70		;66c7
	add a,b			;66c9
	call 02c16h		;66ca
sub_66cdh:
	sub l			;66cd
	ld d,l			;66ce
	and e			;66cf
	jp 09904h		;66d0
	inc h			;66d3
	or 0c4h			;66d4
	ld h,(hl)		;66d6
	cp 05dh			;66d7
	jp m,0b7cfh		;66d9
	or 084h			;66dc
	and e			;66de
	ei			;66df
	push af			;66e0
	sub c			;66e1
	sub a			;66e2
	cp h			;66e3
	ld e,034h		;66e4
	ld (hl),c		;66e6
	cp 06eh			;66e7
	or b			;66e9
	dec e			;66ea
	ld a,a			;66eb
	ld bc,l5844h		;66ec
	sbc a,d			;66ef
	ret			;66f0
	sbc a,d			;66f1
	xor c			;66f2
	or 01bh			;66f3
	ld a,a			;66f5
	add a,02fh		;66f6
	ld e,033h		;66f8
	jr c,l66abh		;66fa
	pop hl			;66fc
	cp a			;66fd
	jp m,09558h		;66fe
	ret nz			;6701
	defb 0ddh,099h,0f8h ;illegal sequence	;6702
	ld a,a			;6705
	ld d,c			;6706
	ld d,l			;6707
	add a,b			;6708
	adc a,c			;6709
	sub (hl)		;670a
	ret m			;670b
	and 07dh		;670c
	ld a,h			;670e
	ld e,c			;670f
	adc a,(hl)		;6710
	ld (l6630h),hl		;6711
	ld d,(hl)		;6714
	ld (de),a		;6715
	ld (0f124h),hl		;6716
	ld a,l			;6719
	adc a,h			;671a
	ret nc			;671b
	rlca			;671c
	ld c,c			;671d
	ld l,c			;671e
	ld a,b			;671f
	add a,h			;6720
	ld c,c			;6721
	defb 0ddh,0dfh,0e6h ;illegal sequence	;6722
	pop hl			;6725
	add a,b			;6726
	inc h			;6727
	jp z,0aea5h		;6728
	add a,a			;672b
	sub (hl)		;672c
	ld h,a			;672d
	ld a,a			;672e
	ld (de),a		;672f
	dec c			;6730
l6731h:
	ld b,l			;6731
	ld a,l			;6732
	ret			;6733
	ld a,a			;6734
sub_6735h:
	sub c			;6735
	exx			;6736
	rst 38h			;6737
	jp po,09809h		;6738
	ld (hl),h		;673b
	add a,e			;673c
l673dh:
	rst 38h			;673d
	call po,0fe23h		;673e
	or b			;6741
sub_6742h:
	ld (hl),l		;6742
	cp c			;6743
	ld a,07fh		;6744
	dec hl			;6746
	ld l,l			;6747
	rst 20h			;6748
	or e			;6749
	sbc a,(hl)		;674a
	halt			;674b
	add a,h			;674c
	inc sp			;674d
	adc a,b			;674e
	djnz $+100		;674f
	daa			;6751
	sub d			;6752
	defb 0fdh,0feh,033h ;illegal sequence	;6753
	sub b			;6756
	call m,09863h		;6757
	ld h,d			;675a
	call m,sub_794ah	;675b
	ld d,e			;675e
	ld c,c			;675f
	cp l			;6760
	xor 091h		;6761
	or 0e1h			;6763
	ld d,c			;6765
	ld d,l			;6766
	or (hl)			;6767
	rst 30h			;6768
	ld a,a			;6769
	ld (00980h),a		;676a
	ld h,h			;676d
	sbc a,d			;676e
	xor d			;676f
	rst 38h			;6770
	inc h			;6771
	inc d			;6772
	ld b,(hl)		;6773
	jp nz,l7fd9h		;6774
	ld b,(hl)		;6777
	ld b,b			;6778
	cpl			;6779
	ld sp,01f22h		;677a
	ld hl,l782fh		;677d
	ld (de),a		;6780
	ld a,a			;6781
	ld e,d			;6782
	cp 0d6h			;6783
	rst 38h			;6785
	add hl,hl		;6786
	ld b,(hl)		;6787
	cp 0e3h			;6788
	ld (hl),l		;678a
	ld d,l			;678b
	rst 38h			;678c
	jp (hl)			;678d
	call pe,sub_7de6h	;678e
	adc a,b			;6791
	and b			;6792
	ld e,b			;6793
	ld h,084h		;6794
	adc a,h			;6796
	cp 0d6h			;6797
	jp m,0f1edh		;6799
	xor d			;679c
	ld l,c			;679d
	sbc a,h			;679e
	ld d,b			;679f
	ld b,h			;67a0
	sub h			;67a1
	ld d,e			;67a2
	ld l,c			;67a3
	and d			;67a4
	rla			;67a5
	sbc a,082h		;67a6
	sub l			;67a8
	add a,l			;67a9
	ld b,a			;67aa
	adc a,073h		;67ab
	xor h			;67ad
	ld d,d			;67ae
	ld d,b			;67af
	and c			;67b0
	rst 38h			;67b1
	defb 0ddh,000h,012h ;illegal sequence	;67b2
	halt			;67b5
	ld l,c			;67b6
	ld a,a			;67b7
	sub a			;67b8
l67b9h:
	rst 18h			;67b9
	inc hl			;67ba
	ld c,b			;67bb
	ld d,l			;67bc
	sbc a,d			;67bd
	ld l,02fh		;67be
	ld h,a			;67c0
	call p,0f73bh		;67c1
	ld a,e			;67c4
	ld a,a			;67c5
	sbc a,(hl)		;67c6
	cp 078h			;67c7
	call po,0d9e2h		;67c9
	rst 38h			;67cc
	ld a,01dh		;67cd
	xor e			;67cf
	adc a,d			;67d0
	ld h,043h		;67d1
	dec hl			;67d3
	nop			;67d4
	sub c			;67d5
	ld sp,hl		;67d6
	ld d,e			;67d7
	ld a,(hl)		;67d8
	ld b,h			;67d9
	adc a,h			;67da
	ld l,b			;67db
	inc hl			;67dc
	ld b,d			;67dd
	ld (hl),h		;67de
	cp 014h			;67df
	daa			;67e1
	xor c			;67e2
	jp (hl)			;67e3
	dec (hl)		;67e4
	ret nz			;67e5
	adc a,b			;67e6
	sub l			;67e7
	sub h			;67e8
	ld (hl),l		;67e9
	ld l,b			;67ea
	ld e,a			;67eb
	add a,d			;67ec
	ld d,0fbh		;67ed
	ld (hl),c		;67ef
	rst 20h			;67f0
	ld b,c			;67f1
	sbc a,c			;67f2
	ld h,a			;67f3
	rst 38h			;67f4
	ld e,h			;67f5
	sub d			;67f6
	add a,074h		;67f7
	sub h			;67f9
	inc b			;67fa
	ld (hl),a		;67fb
	sbc a,l			;67fc
	call z,0be85h		;67fd
	ld e,h			;6800
	ld l,c			;6801
	call po,0ff74h		;6802
	ld sp,hl		;6805
	sub 089h		;6806
	ld e,a			;6808
	cp 023h			;6809
	add a,l			;680b
	ld d,l			;680c
	adc a,c			;680d
	ld a,a			;680e
	defb 0ddh,045h ;ld b,ixl	;680f
	ld d,e			;6811
	inc (hl)		;6812
	daa			;6813
	or 0c1h			;6814
	nop			;6816
	ld b,(hl)		;6817
	ld (00b64h),hl		;6818
	ld (hl),b		;681b
	add a,c			;681c
	ld d,h			;681d
	ld (l5672h),hl		;681e
	cp 023h			;6821
	inc hl			;6823
	ld l,b			;6824
	ei			;6825
	add a,0a4h		;6826
	jr c,$-105		;6828
	cp c			;682a
	cp c			;682b
	ccf			;682c
	ld e,a			;682d
	pop hl			;682e
	add a,033h		;682f
	ret			;6831
	inc l			;6832
	sub e			;6833
	sbc a,b			;6834
	sbc a,b			;6835
	sub a			;6836
	add a,(hl)		;6837
	adc a,h			;6838
	sbc a,c			;6839
	rst 38h			;683a
	inc l			;683b
	or e			;683c
	out (08bh),a		;683d
	dec d			;683f
	call c,060c8h		;6840
	sbc a,b			;6843
	sbc a,h			;6844
	cpl			;6845
	rst 0			;6846
	rst 38h			;6847
	or a			;6848
	ld a,a			;6849
	ld (de),a		;684a
	ld b,h			;684b
	ld a,b			;684c
	ld l,b			;684d
	ld d,a			;684e
	ld e,b			;684f
	rst 38h			;6850
	ret nz			;6851
	ld b,h			;6852
	dec de			;6853
	ld (hl),d		;6854
	add a,(hl)		;6855
	ld h,l			;6856
	ei			;6857
	and e			;6858
	ld d,a			;6859
	ld (08175h),hl		;685a
	xor (hl)		;685d
	add a,c			;685e
	ld b,d			;685f
	ld (hl),d		;6860
	ld h,0feh		;6861
	inc hl			;6863
	dec (hl)		;6864
	ld e,c			;6865
	rra			;6866
	pop bc			;6867
	ld e,b			;6868
	ld a,a			;6869
	pop hl			;686a
	ld l,(hl)		;686b
	sbc a,c			;686c
	ld e,a			;686d
	add a,d			;686e
	ld a,c			;686f
	adc a,a			;6870
	ld sp,hl		;6871
	ret z			;6872
	ld e,h			;6873
	call nc,0f252h		;6874
	dec (hl)		;6877
	ld e,h			;6878
	rst 38h			;6879
	add a,b			;687a
	add a,045h		;687b
	sbc a,c			;687d
	ld l,l			;687e
	ret z			;687f
	add a,l			;6880
	ld d,h			;6881
	ld a,a			;6882
	dec (hl)		;6883
	ld (hl),h		;6884
	ld e,b			;6885
	cpl			;6886
	inc sp			;6887
	ld a,a			;6888
	cp h			;6889
	rst 38h			;688a
	push hl			;688b
	ld a,a			;688c
	cp (hl)			;688d
	adc a,a			;688e
	or c			;688f
	or (hl)			;6890
	ld e,c			;6891
	cp b			;6892
	ld a,a			;6893
	xor 034h		;6894
	and e			;6896
	pop af			;6897
	ld (hl),a		;6898
	jr nc,l689bh		;6899
l689bh:
	ld l,b			;689b
	ld (08676h),hl		;689c
	cp 050h			;689f
	ei			;68a1
	ld (hl),0c8h		;68a2
	ld sp,hl		;68a4
	inc hl			;68a5
	ld b,h			;68a6
	pop af			;68a7
	ld a,a			;68a8
	push de			;68a9
	cp d			;68aa
	ld e,e			;68ab
	adc a,b			;68ac
	ld c,07fh		;68ad
	cp a			;68af
	halt			;68b0
	ld e,a			;68b1
	ld a,l			;68b2
	or 07fh			;68b3
l68b5h:
	cp (hl)			;68b5
	rst 18h			;68b6
	add a,01eh		;68b7
	ret nc			;68b9
sub_68bah:
	adc a,d			;68ba
	ret			;68bb
	sbc a,080h		;68bc
	ld (0f1dbh),a		;68be
	add a,l			;68c1
	rst 0			;68c2
	sbc a,a			;68c3
	inc e			;68c4
	ld e,c			;68c5
	cpl			;68c6
	rst 28h			;68c7
	sbc a,(hl)		;68c8
	and a			;68c9
	ld a,d			;68ca
	ld a,a			;68cb
	out (00fh),a		;68cc
	adc a,a			;68ce
	adc a,d			;68cf
	scf			;68d0
	or l			;68d1
	rra			;68d2
	rst 30h			;68d3
	ld a,a			;68d4
	ld b,0fah		;68d5
	adc a,(hl)		;68d7
	ld (0e6fbh),hl		;68d8
	rst 38h			;68db
	ld sp,l7e54h		;68dc
	sub h			;68df
	add a,a			;68e0
	adc a,a			;68e1
	add hl,hl		;68e2
	rra			;68e3
	ld (04849h),a		;68e4
	ld d,b			;68e7
	and l			;68e8
	rst 38h			;68e9
	add a,0bfh		;68ea
	inc sp			;68ec
	ld e,a			;68ed
	add a,e			;68ee
	pop af			;68ef
	add a,e			;68f0
	ld c,c			;68f1
	ld h,h			;68f2
	ld e,d			;68f3
	rst 18h			;68f4
	defb 0edh ;next byte illegal after ed	;68f5
	dec bc			;68f6
	add hl,bc		;68f7
l68f8h:
	dec de			;68f8
	call z,07f8ch		;68f9
	sbc a,e			;68fc
	daa			;68fd
	add a,l			;68fe
	jp po,09f75h		;68ff
	ld (hl),e		;6902
	cpl			;6903
	ld sp,0327fh		;6904
	ld a,a			;6907
	ex de,hl		;6908
	ld de,02323h		;6909
	rst 38h			;690c
	rst 20h			;690d
	ld d,d			;690e
	inc hl			;690f
	ld a,a			;6910
l6911h:
	add a,d			;6911
	ld c,a			;6912
	rst 38h			;6913
	ld d,h			;6914
	inc b			;6915
	inc h			;6916
	ld (l7ef5h),a		;6917
	jr z,l68b5h		;691a
	ld h,h			;691c
	or d			;691d
	scf			;691e
	adc a,c			;691f
	add a,l			;6920
	ex de,hl		;6921
	ld (de),a		;6922
	ld e,c			;6923
	adc a,e			;6924
	cp b			;6925
	ld e,a			;6926
	ld (hl),e		;6927
	ld b,(hl)		;6928
	ld hl,l7addh		;6929
	rst 18h			;692c
	add a,0ffh		;692d
	ld b,b			;692f
	ld h,e			;6930
	ld de,l5423h		;6931
	ld e,h			;6934
	adc a,c			;6935
	ret c			;6936
	ld a,a			;6937
	sbc a,h			;6938
	or c			;6939
	ld a,a			;693a
	ret z			;693b
	bit 0,l			;693c
	cpl			;693e
	sbc a,a			;693f
	dec de			;6940
	ld a,a			;6941
	pop af			;6942
	ld b,(hl)		;6943
	rst 38h			;6944
	adc a,0ddh		;6945
	ld c,a			;6947
	rst 38h			;6948
	ret nz			;6949
	ld (l522dh),hl		;694a
	dec h			;694d
	or 039h			;694e
	ld a,a			;6950
	ld a,h			;6951
	ld b,e			;6952
	ld a,(hl)		;6953
	add hl,sp		;6954
	call c,sub_5983h	;6955
	adc a,c			;6958
l6959h:
	ld d,l			;6959
	jp m,0b31ah		;695a
	pop bc			;695d
	ld a,032h		;695e
	ld (hl),a		;6960
	rst 8			;6961
	ld d,b			;6962
	ld (01a19h),a		;6963
	ld hl,01229h		;6966
	ld a,a			;6969
	ld c,c			;696a
	ld a,(de)		;696b
	ld c,h			;696c
	ret z			;696d
	ld a,h			;696e
	ld a,a			;696f
	sbc a,c			;6970
	add a,07fh		;6971
	ret			;6973
	ld h,047h		;6974
	sbc a,a			;6976
	rrca			;6977
	sbc a,c			;6978
	ld a,a			;6979
	dec l			;697a
	cpl			;697b
	adc a,(hl)		;697c
	rst 38h			;697d
l697eh:
	ld (hl),d		;697e
	xor b			;697f
	xor a			;6980
	inc bc			;6981
	rrca			;6982
	ld a,a			;6983
	add a,(hl)		;6984
	rst 28h			;6985
	ld l,e			;6986
	rst 38h			;6987
	ld l,d			;6988
	inc b			;6989
	exx			;698a
	or 024h			;698b
	rra			;698d
	defb 0edh ;next byte illegal after ed	;698e
	call c,sub_5990h	;698f
	ld e,c			;6992
l6993h:
	ld d,h			;6993
	cp 0fbh			;6994
	sbc a,l			;6996
	add a,l			;6997
	ld e,a			;6998
	ld l,023h		;6999
	inc b			;699b
	ld c,a			;699c
	inc (hl)		;699d
	ld a,a			;699e
	ld b,(hl)		;699f
	ld h,h			;69a0
	ld a,(088cch)		;69a1
	ld a,a			;69a4
	add hl,de		;69a5
	ret z			;69a6
	ld e,c			;69a7
	ret			;69a8
	cpl			;69a9
	sbc a,a			;69aa
	inc e			;69ab
	ld a,b			;69ac
	ld a,a			;69ad
	or (hl)			;69ae
	sub e			;69af
	cpl			;69b0
	rst 38h			;69b1
	ld (hl),e		;69b2
	rrca			;69b3
	ld (hl),a		;69b4
	cpl			;69b5
	ld a,a			;69b6
	call c,02292h		;69b7
	ld a,b			;69ba
	ld b,d			;69bb
	ld a,a			;69bc
	ld (hl),d		;69bd
	push af			;69be
	add hl,de		;69bf
	dec h			;69c0
	ld d,h			;69c1
	and b			;69c2
	ret p			;69c3
	dec (hl)		;69c4
	ld c,c			;69c5
	ld sp,hl		;69c6
	jp 0d6d8h		;69c7
	rst 8			;69ca
	add hl,sp		;69cb
l69cch:
	and a			;69cc
	ld c,h			;69cd
	rst 38h			;69ce
	ld (hl),h		;69cf
	ld c,a			;69d0
	ld (hl),a		;69d1
	ld h,(hl)		;69d2
l69d3h:
	inc c			;69d3
	ld c,h			;69d4
	push bc			;69d5
	ld d,a			;69d6
	ld c,h			;69d7
	ld a,a			;69d8
	ld (hl),h		;69d9
	call z,09cfah		;69da
l69ddh:
	ld e,h			;69dd
	add a,01fh		;69de
	ld l,a			;69e0
	rst 0			;69e1
	rst 38h			;69e2
	or a			;69e3
	rrca			;69e4
	ld e,a			;69e5
	ld a,a			;69e6
	inc e			;69e7
	add a,b			;69e8
	ld h,a			;69e9
	nop			;69ea
	jr z,l6a11h		;69eb
	adc a,b			;69ed
	pop bc			;69ee
	ld (l7656h),hl		;69ef
	ld a,a			;69f2
	ret p			;69f3
	ld c,077h		;69f4
	ld l,c			;69f6
	ld l,c			;69f7
	jp m,08831h		;69f8
	sbc a,e			;69fb
	or 0deh			;69fc
	ld e,a			;69fe
	ld de,0ff93h		;69ff
	ex (sp),hl		;6a02
	rra			;6a03
	ex af,af'		;6a04
	ld h,(hl)		;6a05
	call z,09fc4h		;6a06
	call po,0c59ch		;6a09
	adc a,(hl)		;6a0c
	sbc a,a			;6a0d
	ex (sp),hl		;6a0e
	rst 38h			;6a0f
	ret po			;6a10
l6a11h:
	pop hl			;6a11
l6a12h:
	rrca			;6a12
	sbc a,a			;6a13
	ld a,a			;6a14
	jp p,0824eh		;6a15
	ld a,b			;6a18
	nop			;6a19
	rlca			;6a1a
	ld d,(hl)		;6a1b
	ld h,a			;6a1c
	halt			;6a1d
	ld c,c			;6a1e
	dec e			;6a1f
	cp a			;6a20
	or 04eh			;6a21
	ld (hl),a		;6a23
	ld sp,hl		;6a24
	defb 0edh ;next byte illegal after ed	;6a25
	add a,l			;6a26
	add a,a			;6a27
	dec de			;6a28
	rst 38h			;6a29
	dec e			;6a2a
	ld l,d			;6a2b
	ld e,a			;6a2c
	sbc a,b			;6a2d
	rst 8			;6a2e
	ld (hl),h		;6a2f
	sub a			;6a30
	ld (hl),a		;6a31
	ld b,l			;6a32
	ld h,a			;6a33
	jp m,0c37eh		;6a34
	ret			;6a37
	rra			;6a38
	ld h,e			;6a39
	rst 38h			;6a3a
	ex de,hl		;6a3b
	ret			;6a3c
	dec bc			;6a3d
	rst 38h			;6a3e
	ret m			;6a3f
	dec (hl)		;6a40
	add a,d			;6a41
	ld h,d			;6a42
	halt			;6a43
	ld h,l			;6a44
	ld b,e			;6a45
	or 098h			;6a46
	di			;6a48
	jp m,0e07eh		;6a49
	rst 38h			;6a4c
	add a,a			;6a4d
	ld a,(0a3beh)		;6a4e
	ret pe			;6a51
	cpl			;6a52
	rst 8			;6a53
	xor a			;6a54
	ld e,a			;6a55
	ex af,af'		;6a56
	and c			;6a57
	push bc			;6a58
	sub a			;6a59
	add a,c			;6a5a
	ld l,h			;6a5b
	rst 38h			;6a5c
	and a			;6a5d
	rra			;6a5e
	ld de,0f1ffh		;6a5f
	ld d,a			;6a62
	adc a,a			;6a63
	and a			;6a64
	ld a,a			;6a65
	add a,077h		;6a66
	ld a,075h		;6a68
	ld b,e			;6a6a
	ld (hl),a		;6a6b
	xor a			;6a6c
	ld a,a			;6a6d
	inc bc			;6a6e
	ld c,c			;6a6f
	sub (hl)		;6a70
	ld a,a			;6a71
	cp (hl)			;6a72
	ld c,a			;6a73
	ld e,(hl)		;6a74
	sbc a,b			;6a75
	ld c,a			;6a76
	cp a			;6a77
	rra			;6a78
	inc b			;6a79
	rst 38h			;6a7a
	ld (hl),l		;6a7b
	adc a,a			;6a7c
	adc a,l			;6a7d
	pop af			;6a7e
	jp (hl)			;6a7f
	ld a,a			;6a80
	jp p,000fdh		;6a81
	adc a,(hl)		;6a84
	nop			;6a85
	jp z,09344h		;6a86
	rst 28h			;6a89
	or d			;6a8a
	dec hl			;6a8b
	rst 0			;6a8c
	ld c,a			;6a8d
	jr nc,l6ac0h		;6a8e
	ret po			;6a90
	ld h,h			;6a91
	ld a,a			;6a92
	rst 28h			;6a93
	ld (hl),c		;6a94
	rst 38h			;6a95
	cp l			;6a96
	ret m			;6a97
	nop			;6a98
	xor d			;6a99
	add a,l			;6a9a
	rst 0			;6a9b
	rst 28h			;6a9c
	sub 04fh		;6a9d
	ld a,a			;6a9f
	ret			;6aa0
	ld c,e			;6aa1
	add hl,hl		;6aa2
	rst 28h			;6aa3
	inc e			;6aa4
	ld a,a			;6aa5
	dec hl			;6aa6
	nop			;6aa7
	nop			;6aa8
	and (hl)		;6aa9
	defb 0ddh,000h,032h ;illegal sequence	;6aaa
	ld hl,00c10h		;6aad
	sub c			;6ab0
	sbc a,b			;6ab1
	and (hl)		;6ab2
	cp (hl)			;6ab3
	sbc a,h			;6ab4
	add hl,hl		;6ab5
	ld a,a			;6ab6
	rst 0			;6ab7
	rst 28h			;6ab8
	dec e			;6ab9
	rst 38h			;6aba
	pop hl			;6abb
	add a,0feh		;6abc
	ld e,e			;6abe
	xor l			;6abf
l6ac0h:
	ccf			;6ac0
	ld a,c			;6ac1
	ld a,a			;6ac2
	ld d,h			;6ac3
	ld hl,07899h		;6ac4
	sbc a,e			;6ac7
	ld a,a			;6ac8
	defb 0edh ;next byte illegal after ed	;6ac9
	ld l,(hl)		;6aca
	ret z			;6acb
	ld e,c			;6acc
	nop			;6acd
	add a,b			;6ace
	inc e			;6acf
	ld (hl),e		;6ad0
	ld a,(hl)		;6ad1
	rrca			;6ad2
	ret nz			;6ad3
	ld (de),a		;6ad4
	ld (0ae19h),hl		;6ad5
	sbc a,a			;6ad8
	ld (hl),d		;6ad9
	ld bc,039ffh		;6ada
	and a			;6add
	rst 28h			;6ade
	ld c,(hl)		;6adf
	cp (hl)			;6ae0
	rst 8			;6ae1
	ld a,e			;6ae2
	adc a,01dh		;6ae3
	dec (hl)		;6ae5
	ld b,h			;6ae6
	ld (0187fh),a		;6ae7
	sbc a,h			;6aea
	in a,(04fh)		;6aeb
	sbc a,e			;6aed
	pop hl			;6aee
	ld a,a			;6aef
	inc bc			;6af0
	and e			;6af1
	xor b			;6af2
	ld (de),a		;6af3
	exx			;6af4
	ld l,(hl)		;6af5
	ld l,a			;6af6
	ld hl,01980h		;6af7
	adc a,b			;6afa
	cp c			;6afb
	rrca			;6afc
	call c,02100h		;6afd
	ld d,(hl)		;6b00
	add hl,de		;6b01
	rst 38h			;6b02
	xor b			;6b03
	inc sp			;6b04
	ld bc,082ach		;6b05
	rra			;6b08
	ld hl,0122fh		;6b09
	rst 28h			;6b0c
	ret c			;6b0d
	ld a,(hl)		;6b0e
	sub (hl)		;6b0f
	ld a,a			;6b10
	rst 0			;6b11
	ret pe			;6b12
	ret z			;6b13
	ld d,h			;6b14
	cp (hl)			;6b15
	cp d			;6b16
	ld a,a			;6b17
	dec hl			;6b18
	exx			;6b19
	ld (034c7h),a		;6b1a
	ld a,a			;6b1d
	inc bc			;6b1e
	inc bc			;6b1f
	ld a,b			;6b20
	ld (0226fh),a		;6b21
	ld (bc),a		;6b24
	add a,c			;6b25
	ld d,c			;6b26
	nop			;6b27
	sbc a,e			;6b28
	rrca			;6b29
	jp z,09191h		;6b2a
	ld e,c			;6b2d
	adc a,a			;6b2e
	rst 38h			;6b2f
	ld c,e			;6b30
	rst 28h			;6b31
	ret p			;6b32
	ld l,d			;6b33
	sub l			;6b34
	inc b			;6b35
	ld e,c			;6b36
	xor b			;6b37
	rst 8			;6b38
	ld a,a			;6b39
	call sub_5864h		;6b3a
	adc a,h			;6b3d
	add hl,hl		;6b3e
	ld b,a			;6b3f
	ld (0bfffh),hl		;6b40
	ld a,a			;6b43
	and h			;6b44
	ld bc,0e810h		;6b45
	ld a,a			;6b48
	sub c			;6b49
	ld hl,0914ah		;6b4a
	sub c			;6b4d
	sub c			;6b4e
	ld (de),a		;6b4f
	add hl,de		;6b50
	rst 38h			;6b51
l6b52h:
	call nz,0a4f5h		;6b52
	rst 38h			;6b55
	pop hl			;6b56
	ld (hl),073h		;6b57
	rst 28h			;6b59
	adc a,(hl)		;6b5a
	ld l,l			;6b5b
	sbc a,b			;6b5c
	push bc			;6b5d
	and a			;6b5e
	defb 0fdh,0f3h,046h ;illegal sequence	;6b5f
	sub l			;6b62
	ld h,a			;6b63
	ld (hl),l		;6b64
	sub c			;6b65
	and h			;6b66
	rst 38h			;6b67
	ld a,l			;6b68
	ld l,d			;6b69
	nop			;6b6a
	rst 38h			;6b6b
	ld h,a			;6b6c
	nop			;6b6d
	ld c,c			;6b6e
	add hl,sp		;6b6f
	add hl,de		;6b70
	jp (hl)			;6b71
	xor 0a7h		;6b72
	ld h,063h		;6b74
	ld a,a			;6b76
	add a,0afh		;6b77
	inc sp			;6b79
	sub a			;6b7a
	rst 28h			;6b7b
	jp nc,l53feh		;6b7c
	ld a,a			;6b7f
	di			;6b80
	ld (hl),d		;6b81
	adc a,h			;6b82
	ld d,(hl)		;6b83
	ld d,e			;6b84
	out (047h),a		;6b85
	rst 38h			;6b87
	sub 010h		;6b88
	ld c,0cdh		;6b8a
	defb 0ddh,0c0h,033h ;illegal sequence	;6b8c
	nop			;6b8f
	ld c,(hl)		;6b90
	inc hl			;6b91
	di			;6b92
	call nz,07463h		;6b93
	ld a,0b0h		;6b96
	ld l,b			;6b98
	ld b,e			;6b99
	ld a,a			;6b9a
	halt			;6b9b
	ld h,(hl)		;6b9c
	halt			;6b9d
	ld l,e			;6b9e
	ld h,a			;6b9f
	rst 28h			;6ba0
	xor d			;6ba1
	add a,l			;6ba2
	cp 05fh			;6ba3
	jr c,l6bdbh		;6ba5
	ld d,h			;6ba7
	jp nz,0337eh		;6ba8
	inc bc			;6bab
	rst 8			;6bac
	di			;6bad
	nop			;6bae
	jp 0e27fh		;6baf
	ld e,e			;6bb2
	ld (005f9h),a		;6bb3
	inc hl			;6bb6
	inc de			;6bb7
	ld bc,0c808h		;6bb8
	halt			;6bbb
	ld b,l			;6bbc
	adc a,b			;6bbd
	dec a			;6bbe
	ld d,h			;6bbf
	inc sp			;6bc0
	or (hl)			;6bc1
	ld d,c			;6bc2
	ld b,h			;6bc3
	xor 095h		;6bc4
	rst 38h			;6bc6
	exx			;6bc7
	ld (hl),a		;6bc8
	ld (hl),a		;6bc9
	cp 06bh			;6bca
	in a,(0a8h)		;6bcc
l6bceh:
	adc a,c			;6bce
	call m,0bc7fh		;6bcf
sub_6bd2h:
	ld e,d			;6bd2
	sub c			;6bd3
	ld b,b			;6bd4
	inc bc			;6bd5
	rst 38h			;6bd6
	sbc a,003h		;6bd7
	ld a,h			;6bd9
	ld a,a			;6bda
l6bdbh:
	ld l,(hl)		;6bdb
	ld sp,01909h		;6bdc
	inc de			;6bdf
	nop			;6be0
	ex af,af'		;6be1
	ret z			;6be2
	halt			;6be3
	ld e,b			;6be4
	rst 38h			;6be5
	ld d,(hl)		;6be6
	add a,h			;6be7
	rst 20h			;6be8
	ld b,l			;6be9
	add a,(hl)		;6bea
	xor h			;6beb
	jp c,09e94h		;6bec
	jp p,09746h		;6bef
	ld h,(hl)		;6bf2
	ld h,(hl)		;6bf3
	rlca			;6bf4
	dec hl			;6bf5
	ld e,c			;6bf6
	cp 0f3h			;6bf7
	sbc a,d			;6bf9
	ld (l447eh),hl		;6bfa
	ei			;6bfd
	ld a,a			;6bfe
	daa			;6bff
	rst 38h			;6c00
l6c01h:
	inc hl			;6c01
	rst 38h			;6c02
	ret po			;6c03
	add a,h			;6c04
	ld a,a			;6c05
	add a,l			;6c06
	ld b,l			;6c07
	ld h,a			;6c08
	ld a,a			;6c09
	ld c,b			;6c0a
	ld b,h			;6c0b
	ret m			;6c0c
	ld a,e			;6c0d
	sbc a,b			;6c0e
	ld e,c			;6c0f
	ret m			;6c10
	pop af			;6c11
	inc c			;6c12
	add hl,sp		;6c13
	ld b,h			;6c14
	sbc a,b			;6c15
	dec l			;6c16
	cp 0f4h			;6c17
l6c19h:
	jr c,l6c99h		;6c19
	ei			;6c1b
	ld a,a			;6c1c
	dec hl			;6c1d
	rst 28h			;6c1e
	inc de			;6c1f
	nop			;6c20
	rst 38h			;6c21
	rst 28h			;6c22
	rst 38h			;6c23
	ld hl,(0e157h)		;6c24
	add a,a			;6c27
	sub (hl)		;6c28
	rst 38h			;6c29
	ld a,(de)		;6c2a
	sbc a,b			;6c2b
	sub l			;6c2c
	add a,e			;6c2d
	sbc a,l			;6c2e
	adc a,e			;6c2f
	ld d,(hl)		;6c30
	ld b,l			;6c31
	ei			;6c32
	ld e,d			;6c33
	ld a,a			;6c34
	call m,0a8f9h		;6c35
	sub d			;6c38
	res 6,c			;6c39
	ld a,(hl)		;6c3b
	ld d,l			;6c3c
	ld a,a			;6c3d
	rst 30h			;6c3e
	rst 10h			;6c3f
	rst 38h			;6c40
	cp l			;6c41
	rst 38h			;6c42
	jr nz,l6c8ah		;6c43
	ld a,c			;6c45
	sub h			;6c46
	daa			;6c47
	ld l,c			;6c48
	ld a,c			;6c49
	rst 38h			;6c4a
	scf			;6c4b
	ld c,004h		;6c4c
	ld h,h			;6c4e
	ld (de),a		;6c4f
	ld e,b			;6c50
	adc a,b			;6c51
	ld l,h			;6c52
	ei			;6c53
	cp 05eh			;6c54
	ld a,a			;6c56
	or l			;6c57
	ld d,e			;6c58
	ld a,(hl)		;6c59
	ld d,(hl)		;6c5a
	ld a,a			;6c5b
	rst 30h			;6c5c
	rst 18h			;6c5d
	rst 38h			;6c5e
	or h			;6c5f
	ld sp,hl		;6c60
	call po,sub_5978h	;6c61
	dec d			;6c64
	ld d,h			;6c65
	sub h			;6c66
	ld h,a			;6c67
	rst 38h			;6c68
	ld d,d			;6c69
	ld (hl),c		;6c6a
	rst 38h			;6c6b
	ld c,e			;6c6c
	di			;6c6d
	ld (de),a		;6c6e
	sub d			;6c6f
	jr l6c01h		;6c70
	ret m			;6c72
	ex af,af'		;6c73
	ld d,l			;6c74
	adc a,b			;6c75
	rst 38h			;6c76
	ld h,(hl)		;6c77
	sbc a,c			;6c78
	ld b,a			;6c79
	ld c,c			;6c7a
	cp 0e4h			;6c7b
	sbc a,b			;6c7d
	ld h,034h		;6c7e
	ld a,(hl)		;6c80
	ld h,l			;6c81
	xor a			;6c82
	rst 38h			;6c83
	ld (hl),a		;6c84
	nop			;6c85
	nop			;6c86
	or (hl)			;6c87
	rst 38h			;6c88
	ld a,d			;6c89
l6c8ah:
	ld l,b			;6c8a
	ld a,a			;6c8b
	sub a			;6c8c
	ld (hl),a		;6c8d
	ld a,b			;6c8e
	jr l6c19h		;6c8f
	ld d,l			;6c91
	sub h			;6c92
	ld b,096h		;6c93
	sbc a,h			;6c95
	ld a,a			;6c96
	ld e,b			;6c97
	dec (hl)		;6c98
l6c99h:
	ld (hl),e		;6c99
	ld a,a			;6c9a
	rst 38h			;6c9b
	dec h			;6c9c
	ld a,l			;6c9d
	nop			;6c9e
	ld sp,hl		;6c9f
	nop			;6ca0
	ld d,h			;6ca1
	ld b,e			;6ca2
	ld (02225h),hl		;6ca3
	sbc a,b			;6ca6
	or (hl)			;6ca7
	ld d,l			;6ca8
	ld h,l			;6ca9
	sub l			;6caa
	rst 38h			;6cab
	ld (hl),d		;6cac
	sub d			;6cad
	rst 18h			;6cae
	ld (hl),e		;6caf
	ret po			;6cb0
	dec c			;6cb1
	inc de			;6cb2
	ld a,a			;6cb3
	daa			;6cb4
	call 0010ch		;6cb5
	in a,(001h)		;6cb8
	inc hl			;6cba
	dec c			;6cbb
	or b			;6cbc
	defb 0ddh,07fh,0c2h ;illegal sequence	;6cbd
	adc a,a			;6cc0
	ld e,d			;6cc1
	add a,0ebh		;6cc2
	sbc a,b			;6cc4
	ld e,c			;6cc5
	ld a,a			;6cc6
	ld a,c			;6cc7
	sbc a,h			;6cc8
	rst 28h			;6cc9
	ld b,a			;6cca
	ld d,l			;6ccb
	rst 38h			;6ccc
	add hl,bc		;6ccd
	ld b,h			;6cce
	rst 38h			;6ccf
	daa			;6cd0
	adc a,l			;6cd1
	ld h,083h		;6cd2
	call m,0827eh		;6cd4
l6cd7h:
	sub (hl)		;6cd7
	ld d,l			;6cd8
	ld d,e			;6cd9
	ld bc,l6223h		;6cda
	ld h,055h		;6cdd
	ld h,(hl)		;6cdf
	ld d,l			;6ce0
	ld d,h			;6ce1
	ld a,a			;6ce2
	jp m,09769h		;6ce3
	ex de,hl		;6ce6
	ret			;6ce7
	rst 38h			;6ce8
	ld de,08667h		;6ce9
	adc a,d			;6cec
	sub (hl)		;6ced
	rst 38h			;6cee
	ld (hl),b		;6cef
	ld c,h			;6cf0
	ld (hl),h		;6cf1
l6cf2h:
	ld a,a			;6cf2
	ld c,c			;6cf3
	rst 38h			;6cf4
	call m,sub_7682h	;6cf5
	ld h,l			;6cf8
	ld a,(hl)		;6cf9
	ld a,(bc)		;6cfa
	inc (hl)		;6cfb
	ld b,(hl)		;6cfc
	ld (l7e76h),hl		;6cfd
	rst 38h			;6d00
	and d			;6d01
	inc c			;6d02
	ret			;6d03
	rst 38h			;6d04
	ccf			;6d05
	ld b,(hl)		;6d06
	add a,(hl)		;6d07
	cp b			;6d08
	and h			;6d09
	jp p,09556h		;6d0a
	rst 38h			;6d0d
	and c			;6d0e
	ld a,c			;6d0f
	ld c,(hl)		;6d10
	ld h,h			;6d11
	ld b,(hl)		;6d12
	ld h,a			;6d13
	add a,b			;6d14
	ld l,d			;6d15
	ld b,(hl)		;6d16
	ld d,a			;6d17
	adc a,b			;6d18
	add a,e			;6d19
	jp po,0988ch		;6d1a
	ld h,(hl)		;6d1d
	ld h,e			;6d1e
	ld a,a			;6d1f
	djnz l6d67h		;6d20
	ld (hl),d		;6d22
	jr z,l6da3h		;6d23
	ld b,e			;6d25
	inc bc			;6d26
	nop			;6d27
	and e			;6d28
	ret p			;6d29
	ld a,a			;6d2a
	adc hl,sp		;6d2b
	sub e			;6d2d
	inc a			;6d2e
	in a,(0e5h)		;6d2f
	dec bc			;6d31
	adc a,b			;6d32
	add a,(hl)		;6d33
	exx			;6d34
	jp p,05596h		;6d35
	ld (hl),a		;6d38
	cp 071h			;6d39
	adc a,d			;6d3b
	or h			;6d3c
	cp 053h			;6d3d
	add a,b			;6d3f
	add a,c			;6d40
	ld c,b			;6d41
	ld d,l			;6d42
	ld e,b			;6d43
	adc a,c			;6d44
	rst 30h			;6d45
	rst 28h			;6d46
	add a,(hl)		;6d47
	ld d,(hl)		;6d48
	ld l,l			;6d49
	ld h,h			;6d4a
	ld a,(hl)		;6d4b
	ei			;6d4c
	ld bc,02562h		;6d4d
	add hl,sp		;6d50
	sub (hl)		;6d51
	rst 28h			;6d52
	ld e,h			;6d53
	ld a,l			;6d54
	ld a,a			;6d55
	ld d,c			;6d56
	dec e			;6d57
	ld (00033h),a		;6d58
	rst 20h			;6d5b
	rst 38h			;6d5c
	dec a			;6d5d
	ld l,e			;6d5e
	add a,(hl)		;6d5f
	dec d			;6d60
	ld a,a			;6d61
	add a,h			;6d62
	pop af			;6d63
	cp 098h			;6d64
	ld (hl),h		;6d66
l6d67h:
	scf			;6d67
	ld c,c			;6d68
	ld b,h			;6d69
	add a,d			;6d6a
	jr z,l6cf2h		;6d6b
	ld a,(hl)		;6d6d
	ld b,l			;6d6e
	ld a,a			;6d6f
	ld hl,04255h		;6d70
	ld a,a			;6d73
	xor e			;6d74
	ld h,(hl)		;6d75
	ret z			;6d76
	xor h			;6d77
	add a,e			;6d78
	ld a,l			;6d79
	ld l,c			;6d7a
	ld a,a			;6d7b
	ex de,hl		;6d7c
	ld sp,08200h		;6d7d
	ld e,c			;6d80
	push hl			;6d81
	nop			;6d82
	inc hl			;6d83
	ld a,a			;6d84
	ex (sp),hl		;6d85
	add a,(hl)		;6d86
	and (hl)		;6d87
	ld a,a			;6d88
	ret po			;6d89
	ld (hl),b		;6d8a
	halt			;6d8b
	inc sp			;6d8c
	ld d,h			;6d8d
	ld a,(de)		;6d8e
	ld h,l			;6d8f
	ld b,h			;6d90
	ld c,c			;6d91
	add a,c			;6d92
	add a,089h		;6d93
	rra			;6d95
	ld a,a			;6d96
	add a,h			;6d97
	sub e			;6d98
	ld d,a			;6d99
	ld b,h			;6d9a
	ld d,c			;6d9b
	ei			;6d9c
	ld b,h			;6d9d
	cp 054h			;6d9e
	adc a,a			;6da0
	inc (hl)		;6da1
	ld h,d			;6da2
l6da3h:
	ld b,l			;6da3
	ld a,a			;6da4
	add a,e			;6da5
	nop			;6da6
	exx			;6da7
	ld sp,09300h		;6da8
	defb 0fdh,0d7h,022h ;illegal sequence	;6dab
	inc e			;6dae
	ret pe			;6daf
	or d			;6db0
	ld (bc),a		;6db1
	ld c,c			;6db2
	rst 38h			;6db3
	ld d,l			;6db4
	ld e,c			;6db5
	add a,(hl)		;6db6
	ld l,b			;6db7
	ld h,a			;6db8
	rst 8			;6db9
	ld (hl),b		;6dba
	adc a,a			;6dbb
	add a,h			;6dbc
	dec (hl)		;6dbd
	ld b,(hl)		;6dbe
	ld b,l			;6dbf
	add hl,bc		;6dc0
	sub a			;6dc1
	adc a,a			;6dc2
	ld a,a			;6dc3
	ld a,a			;6dc4
	ld (hl),h		;6dc5
	ld a,a			;6dc6
	jp 09223h		;6dc7
	inc sp			;6dca
	cp 024h			;6dcb
	ld a,a			;6dcd
	ld d,l			;6dce
	call m,096c3h		;6dcf
	inc h			;6dd2
	ld e,b			;6dd3
	ld a,a			;6dd4
	rst 18h			;6dd5
	rst 38h			;6dd6
	dec e			;6dd7
	add hl,sp		;6dd8
	add a,d			;6dd9
	dec h			;6dda
	rst 38h			;6ddb
	call po,08535h		;6ddc
	sub (hl)		;6ddf
	add a,(hl)		;6de0
	adc a,d			;6de1
	rst 38h			;6de2
	inc d			;6de3
	ld b,h			;6de4
	ld (bc),a		;6de5
	adc a,l			;6de6
	ld e,a			;6de7
	adc a,a			;6de8
	inc b			;6de9
	jr c,$+88		;6dea
	adc a,c			;6dec
	ld d,e			;6ded
	ld a,(de)		;6dee
	ld h,a			;6def
	adc a,a			;6df0
	rst 38h			;6df1
	add a,0dch		;6df2
	ld sp,hl		;6df4
	sub h			;6df5
	cp 08ch			;6df6
	cp 022h			;6df8
	add hl,sp		;6dfa
	ld h,d			;6dfb
	push bc			;6dfc
	and e			;6dfd
	rst 38h			;6dfe
	ld a,a			;6dff
	set 4,(hl)		;6e00
	ld l,d			;6e02
	adc a,l			;6e03
	cp l			;6e04
	ld a,a			;6e05
	xor c			;6e06
	rst 38h			;6e07
	ret po			;6e08
	sub l			;6e09
	cp 035h			;6e0a
	sub h			;6e0c
	sub (hl)		;6e0d
	add a,(hl)		;6e0e
	ld d,d			;6e0f
	sub (hl)		;6e10
	rst 38h			;6e11
	sub l			;6e12
	adc a,l			;6e13
	ld e,d			;6e14
	ld (hl),a		;6e15
	ld a,a			;6e16
	sbc a,b			;6e17
	ld e,b			;6e18
	ld (0379ch),a		;6e19
	ld a,a			;6e1c
	ld (hl),l		;6e1d
	adc a,a			;6e1e
	ld a,h			;6e1f
	ld sp,hl		;6e20
	ret m			;6e21
	inc l			;6e22
	ld b,h			;6e23
	jp m,0fe23h		;6e24
	add a,l			;6e27
	adc a,b			;6e28
	ld e,l			;6e29
	ld a,a			;6e2a
	ret pe			;6e2b
	sbc a,c			;6e2c
	rst 30h			;6e2d
	ld a,a			;6e2e
	ret m			;6e2f
	ld a,0b2h		;6e30
	cp 09ch			;6e32
	call pe,0ffc4h		;6e34
	ld c,(hl)		;6e37
	ld b,h			;6e38
	rst 38h			;6e39
	add a,c			;6e3a
	ld d,e			;6e3b
	ld hl,03412h		;6e3c
	inc sp			;6e3f
	sub l			;6e40
	or 0a2h			;6e41
	add a,e			;6e43
	ld a,e			;6e44
	daa			;6e45
	ld c,c			;6e46
	sub e			;6e47
	ld b,l			;6e48
	inc hl			;6e49
	ld a,a			;6e4a
	jp po,0fe4ah		;6e4b
	pop bc			;6e4e
	ld a,a			;6e4f
	add hl,sp		;6e50
	ld l,c			;6e51
	dec h			;6e52
	adc a,b			;6e53
	ld a,a			;6e54
	dec h			;6e55
	sub e			;6e56
	rst 38h			;6e57
	pop de			;6e58
	add hl,sp		;6e59
	ld a,a			;6e5a
	xor 033h		;6e5b
	or 000h			;6e5d
	adc a,h			;6e5f
	defb 0fdh,0b3h,0e5h ;illegal sequence	;6e60
	xor 0f6h		;6e63
	nop			;6e65
	dec l			;6e66
	sub l			;6e67
	ld c,b			;6e68
	rst 38h			;6e69
	ld (de),a		;6e6a
	ld c,c			;6e6b
	ld (de),a		;6e6c
	ld a,c			;6e6d
	ld (hl),h		;6e6e
	inc bc			;6e6f
	inc sp			;6e70
	ld (0211fh),a		;6e71
	cpl			;6e74
	ld (de),a		;6e75
	ld a,a			;6e76
	pop af			;6e77
	push de			;6e78
	inc h			;6e79
	defb 0fdh,0bbh,082h ;illegal sequence	;6e7a
	ld h,096h		;6e7d
	add hl,bc		;6e7f
	ld a,b			;6e80
	ld a,a			;6e81
	ld l,a			;6e82
	ld d,l			;6e83
l6e84h:
	push hl			;6e84
	push af			;6e85
	ld a,a			;6e86
	call pe,0a410h		;6e87
	rst 38h			;6e8a
	xor a			;6e8b
	call m,0ff3ah		;6e8c
	and 0e5h		;6e8f
	pop de			;6e91
	adc a,b			;6e92
	ld b,a			;6e93
	bit 3,b			;6e94
	ld a,a			;6e96
	add hl,bc		;6e97
	ld b,e			;6e98
	ld hl,02333h		;6e99
	ld a,b			;6e9c
sub_6e9dh:
	ld d,c			;6e9d
	ld (bc),a		;6e9e
	sbc a,d			;6e9f
	sbc a,a			;6ea0
	ld a,a			;6ea1
	adc a,l			;6ea2
	rst 28h			;6ea3
	sub h			;6ea4
	or a			;6ea5
	sbc a,b			;6ea6
	ld a,a			;6ea7
	ld (l7fc4h),a		;6ea8
	sub a			;6eab
	rst 38h			;6eac
	and a			;6ead
	rst 18h			;6eae
	or e			;6eaf
	sbc a,b			;6eb0
	ld l,h			;6eb1
	ld c,e			;6eb2
	rst 38h			;6eb3
	or b			;6eb4
	djnz l6e84h		;6eb5
	defb 0ddh,057h,0c0h ;illegal sequence	;6eb7
	call m,0ff9dh		;6eba
	ld (hl),c		;6ebd
	push hl			;6ebe
	ld l,(hl)		;6ebf
	add hl,de		;6ec0
	ld a,0ffh		;6ec1
	ld e,b			;6ec3
	ld (hl),a		;6ec4
	call l7f77h		;6ec5
	sbc a,h			;6ec8
	rst 38h			;6ec9
	ld a,(hl)		;6eca
	add hl,sp		;6ecb
	ld a,a			;6ecc
	ld (0c623h),a		;6ecd
	inc h			;6ed0
	ld h,a			;6ed1
	cp 086h			;6ed2
	ld d,e			;6ed4
	add hl,hl		;6ed5
	ret			;6ed6
	ld h,e			;6ed7
	sub d			;6ed8
	or l			;6ed9
	ld (bc),a		;6eda
	call 0019ch		;6edb
	ld (hl),h		;6ede
	in a,(001h)		;6edf
	call 0bd3dh		;6ee1
	ret			;6ee4
	ld a,a			;6ee5
	ex (sp),hl		;6ee6
l6ee7h:
	rst 38h			;6ee7
	jp nc,02aebh		;6ee8
	ld e,a			;6eeb
	push hl			;6eec
	call c,089d5h		;6eed
sub_6ef0h:
	rst 38h			;6ef0
	inc hl			;6ef1
	sub e			;6ef2
	rst 38h			;6ef3
	call p,02249h		;6ef4
	inc h			;6ef7
	ld c,c			;6ef8
	adc a,b			;6ef9
	add a,e			;6efa
	sub e			;6efb
	sub (hl)		;6efc
	ret p			;6efd
	call nc,09c45h		;6efe
	ei			;6f01
	ld a,a			;6f02
	and a			;6f03
	call m,sub_6bd2h	;6f04
	and e			;6f07
	ld h,h			;6f08
	rst 38h			;6f09
	and l			;6f0a
	adc a,c			;6f0b
	add a,(hl)		;6f0c
	ex de,hl		;6f0d
	ld e,c			;6f0e
	push af			;6f0f
	ld d,d			;6f10
	rst 38h			;6f11
	ld a,(002cah)		;6f12
	djnz $+1		;6f15
	cp a			;6f17
	ld d,0c4h		;6f18
	ld h,e			;6f1a
	ld d,l			;6f1b
	ld (086fbh),hl		;6f1c
	ld c,c			;6f1f
	ret z			;6f20
	jp (hl)			;6f21
	ld (hl),039h		;6f22
	ld a,a			;6f24
	push af			;6f25
	jp po,0e7ffh		;6f26
	cp b			;6f29
	and h			;6f2a
	ex de,hl		;6f2b
	ld h,(hl)		;6f2c
	push hl			;6f2d
	cp c			;6f2e
	ld b,l			;6f2f
	adc a,c			;6f30
	cp 057h			;6f31
	adc a,d			;6f33
	sbc a,(hl)		;6f34
	cp a			;6f35
	add hl,hl		;6f36
	sub a			;6f37
	rst 38h			;6f38
	inc e			;6f39
	add hl,sp		;6f3a
	ld a,a			;6f3b
	ld d,d			;6f3c
	cp a			;6f3d
	ld a,(hl)		;6f3e
	ld a,l			;6f3f
	inc bc			;6f40
	inc sp			;6f41
	call m,sub_6735h	;6f42
	add a,b			;6f45
	ld de,l6959h		;6f46
	ld d,b			;6f49
	add a,c			;6f4a
	ld h,h			;6f4b
	sbc a,c			;6f4c
	sbc a,h			;6f4d
	ret			;6f4e
	inc e			;6f4f
	and 0b9h		;6f50
	sbc a,a			;6f52
	rst 38h			;6f53
	ld b,e			;6f54
	dec c			;6f55
	cp e			;6f56
	add a,c			;6f57
	ld l,(hl)		;6f58
	rst 38h			;6f59
	di			;6f5a
	cp (hl)			;6f5b
	defb 0fdh,0aah,0ffh ;illegal sequence	;6f5c
	ret pe			;6f5f
	ex af,af'		;6f60
	ld c,c			;6f61
	sub (hl)		;6f62
	call c,0a2feh		;6f63
	ld a,a			;6f66
	rst 38h			;6f67
	cp a			;6f68
	ld a,b			;6f69
	ld a,a			;6f6a
	ld hl,0fc95h		;6f6b
	cp c			;6f6e
	call m,087a8h		;6f6f
	jp c,0fefah		;6f72
	inc (hl)		;6f75
	ld c,c			;6f76
	ld (01ff7h),hl		;6f77
	jp m,0d37fh		;6f7a
	sub d			;6f7d
	ld bc,02419h		;6f7e
	adc a,e			;6f81
	ei			;6f82
	xor c			;6f83
	ei			;6f84
	ld d,l			;6f85
	add a,l			;6f86
	defb 0fdh,07bh,08ch ;illegal sequence	;6f87
	rra			;6f8a
	sub e			;6f8b
	ret po			;6f8c
	ld h,(hl)		;6f8d
	ld c,e			;6f8e
	ld h,a			;6f8f
	call m,09be0h		;6f90
	ld b,(hl)		;6f93
	ld h,l			;6f94
	call m,sub_65c9h	;6f95
	ld (hl),07fh		;6f98
	jp nz,0fd34h		;6f9a
	ld d,b			;6f9d
l6f9eh:
	defb 0ddh,09dh ;sbc a,ixl	;6f9e
	ld c,l			;6fa0
	cp e			;6fa1
	nop			;6fa2
	sbc a,e			;6fa3
	inc bc			;6fa4
	ld c,e			;6fa5
	cp l			;6fa6
	rst 38h			;6fa7
	jp 01fffh		;6fa8
	rrca			;6fab
	ld l,b			;6fac
	add a,d			;6fad
	adc a,c			;6fae
	defb 0fdh,06ch ;ld iyl,iyh	;6faf
	add a,a			;6fb1
	ld h,e			;6fb2
	nop			;6fb3
	cp l			;6fb4
	sub d			;6fb5
	rrca			;6fb6
	ld b,(hl)		;6fb7
	ld a,c			;6fb8
	ld a,a			;6fb9
	ret nz			;6fba
	dec sp			;6fbb
	ld h,a			;6fbc
	ld h,l			;6fbd
	ei			;6fbe
	sub d			;6fbf
	ld b,e			;6fc0
	sbc a,c			;6fc1
	cp 054h			;6fc2
	sub e			;6fc4
	ld b,l			;6fc5
	pop hl			;6fc6
sub_6fc7h:
	ld a,a			;6fc7
	defb 0ddh,000h,070h ;illegal sequence	;6fc8
	inc bc			;6fcb
	call z,0ffa7h		;6fcc
	add a,a			;6fcf
	ld a,a			;6fd0
	call 00919h		;6fd1
	inc a			;6fd4
	add hl,sp		;6fd5
	ld l,b			;6fd6
	ld l,e			;6fd7
	adc a,b			;6fd8
	dec a			;6fd9
	ld e,c			;6fda
	dec d			;6fdb
	sub a			;6fdc
	sub (hl)		;6fdd
	dec h			;6fde
	ld d,h			;6fdf
	add a,b			;6fe0
	ret p			;6fe1
	ld e,a			;6fe2
	add a,a			;6fe3
	ei			;6fe4
	rst 0			;6fe5
	ld a,a			;6fe6
	add a,e			;6fe7
	ld d,(hl)		;6fe8
	ld a,a			;6fe9
	call p,sub_68bah	;6fea
	ret p			;6fed
	ld a,a			;6fee
	halt			;6fef
	sub h			;6ff0
	ld a,a			;6ff1
	adc a,a			;6ff2
	ld a,(hl)		;6ff3
	add a,h			;6ff4
	ld a,a			;6ff5
	dec bc			;6ff6
	ld (hl),a		;6ff7
	ld a,a			;6ff8
	sub (hl)		;6ff9
	ld d,h			;6ffa
	call m,0fe92h		;6ffb
	xor b			;6ffe
	dec (hl)		;6fff
	jr nc,l6f9eh		;7000
	sbc a,c			;7002
	ld c,0cch		;7003
	sbc a,h			;7005
	call z,003cch		;7006
	cp a			;7009
	ld a,a			;700a
	dec b			;700b
	sub h			;700c
	ld l,b			;700d
	ret po			;700e
	ld e,c			;700f
	cp h			;7010
	ex af,af'		;7011
	ld d,l			;7012
	ld a,b			;7013
	adc a,(hl)		;7014
	and e			;7015
	nop			;7016
	rst 38h			;7017
	pop af			;7018
	rrca			;7019
	ld h,(hl)		;701a
	ld d,d			;701b
	ei			;701c
	rst 20h			;701d
	ld a,a			;701e
	cp a			;701f
	rst 20h			;7020
	defb 0edh ;next byte illegal after ed	;7021
	sub b			;7022
	rlca			;7023
	sub 0ffh		;7024
	cp e			;7026
	or 07fh			;7027
	ld hl,l7fd9h		;7029
	ret pe			;702c
	ld (hl),e		;702d
	adc a,d			;702e
	cp 0edh			;702f
	ld a,h			;7031
	ld b,d			;7032
	sub a			;7033
	halt			;7034
	sub (hl)		;7035
	ld h,(hl)		;7036
	nop			;7037
	sbc a,a			;7038
	rst 38h			;7039
	call nz,sub_443ch	;703a
	ld (0277fh),a		;703d
	cp 049h			;7040
	ld h,a			;7042
	ld (bc),a		;7043
	ld e,h			;7044
	ld hl,0ca6dh		;7045
	inc bc			;7048
	sbc a,b			;7049
	ld b,c			;704a
	ld (bc),a		;704b
	ld (de),a		;704c
	jr nc,$+1		;704d
	adc a,085h		;704f
	ld (de),a		;7051
	ld (de),a		;7052
	rst 38h			;7053
	or 039h			;7054
	add hl,hl		;7056
	add hl,de		;7057
	add hl,sp		;7058
	ret pe			;7059
	jp c,l53feh		;705a
	ld l,l			;705d
	ld d,c			;705e
	sbc a,b			;705f
	cp 0c0h			;7060
	ld h,(hl)		;7062
	sub h			;7063
	ld b,h			;7064
	sub l			;7065
	nop			;7066
	ld b,a			;7067
	sub (hl)		;7068
	adc a,e			;7069
	ld a,c			;706a
	cp 0fch			;706b
	rrca			;706d
	call m,0fd5dh		;706e
	ld b,h			;7071
	sub (hl)		;7072
	cp 0f2h			;7073
	ld h,a			;7075
	dec c			;7076
	inc bc			;7077
	inc sp			;7078
	inc l			;7079
	jp nz,l4fd8h		;707a
	ld a,a			;707d
	and e			;707e
	ld sp,hl		;707f
sub_7080h:
	ld a,(0231dh)		;7080
	di			;7083
	inc hl			;7084
	rst 38h			;7085
	defb 0ddh,0c3h,025h ;illegal sequence	;7086
	rst 38h			;7089
	ld l,d			;708a
	adc a,c			;708b
	call pe,0517ch		;708c
	sub a			;708f
	sub b			;7090
	inc de			;7091
	ld e,c			;7092
	ld d,l			;7093
	nop			;7094
	sub h			;7095
	sub (hl)		;7096
	exx			;7097
	rst 18h			;7098
	call m,0febeh		;7099
	sbc a,c			;709c
	ex (sp),hl		;709d
	ld a,a			;709e
	adc a,(hl)		;709f
	ld de,0e003h		;70a0
	adc a,01fh		;70a3
sub_70a5h:
	ld a,a			;70a5
	cpl			;70a6
	sbc a,c			;70a7
	or h			;70a8
	inc de			;70a9
	cp e			;70aa
	ld bc,0bdffh		;70ab
	add a,c			;70ae
	ld c,c			;70af
	rst 20h			;70b0
	ld d,d			;70b1
	ld d,h			;70b2
	ld c,c			;70b3
	out (09ch),a		;70b4
	adc a,a			;70b6
	ld d,l			;70b7
	ld e,c			;70b8
	ret			;70b9
	sub e			;70ba
	adc a,c			;70bb
	sub b			;70bc
	ld (hl),c		;70bd
	call 0affch		;70be
	add a,e			;70c1
	ld a,a			;70c2
	ex (sp),hl		;70c3
	defb 0fdh,078h,056h ;illegal sequence	;70c4
	inc (hl)		;70c7
	ld e,c			;70c8
	inc bc			;70c9
	ld h,b			;70ca
	add hl,hl		;70cb
	ld hl,0215fh		;70cc
	defb 0edh ;next byte illegal after ed	;70cf
	rra			;70d0
	ld a,a			;70d1
	inc de			;70d2
	ld sp,0b9f6h		;70d3
	adc a,000h		;70d6
	rst 38h			;70d8
	jp pe,0baf8h		;70d9
	cpl			;70dc
	sbc a,b			;70dd
	add a,(hl)		;70de
	call m,097c0h		;70df
	sub (hl)		;70e2
	ccf			;70e3
	ld b,l			;70e4
	ld e,b			;70e5
	sub c			;70e6
	ld b,a			;70e7
	ld e,c			;70e8
	ld c,c			;70e9
	ld h,a			;70ea
	call m,01fbeh		;70eb
	ld a,a			;70ee
	sbc a,h			;70ef
	or e			;70f0
	sbc a,h			;70f1
	ld a,a			;70f2
	add hl,hl		;70f3
	ld (0a482h),hl		;70f4
	ld (l7effh),hl		;70f7
	daa			;70fa
	ld a,a			;70fb
	ld (de),a		;70fc
	add a,e			;70fd
	dec h			;70fe
l70ffh:
	sub a			;70ff
	cp 0c0h			;7100
	ld l,c			;7102
	ld b,l			;7103
	ld a,(ix-069h)		;7104
	or (hl)			;7107
	sub 0e7h		;7108
	defb 0fdh,0c4h,0f1h ;illegal sequence	;710a
	ld a,a			;710d
	call nc,0fb8eh		;710e
	ld a,a			;7111
	rst 20h			;7112
	rst 38h			;7113
	ret po			;7114
	ld c,l			;7115
	adc a,c			;7116
	or e			;7117
	rst 20h			;7118
	dec de			;7119
	defb 0fdh,04ch ;ld c,iyh	;711a
	in a,(08fh)		;711c
	ld b,(hl)		;711e
	sub l			;711f
	adc a,c			;7120
	ld a,a			;7121
	cp h			;7122
	add a,l			;7123
	inc de			;7124
	cp (hl)			;7125
	ld a,a			;7126
	ex de,hl		;7127
	cp 062h			;7128
	nop			;712a
	dec l			;712b
	ld b,l			;712c
	ld e,c			;712d
	ld a,a			;712e
	ld d,h			;712f
	or c			;7130
	add a,d			;7131
	ld hl,0f37fh		;7132
	rst 10h			;7135
	rst 38h			;7136
	rst 0			;7137
	defb 0fdh,05ch ;ld e,iyh	;7138
	add hl,sp		;713a
	sub a			;713b
	call z,0fe67h		;713c
l713fh:
	xor a			;713f
	adc a,l			;7140
	jp po,03f04h		;7141
	ld d,h			;7144
	sub (hl)		;7145
	ld a,a			;7146
	inc h			;7147
	ld h,e			;7148
	ld b,(hl)		;7149
	ld a,l			;714a
	adc a,b			;714b
	add a,d			;714c
	ret m			;714d
	scf			;714e
	rst 28h			;714f
	dec de			;7150
	ld d,a			;7151
	ld a,a			;7152
	push af			;7153
	ld e,a			;7154
	rst 38h			;7155
	scf			;7156
	ld sp,hl		;7157
	ld e,h			;7158
	add hl,hl		;7159
	rrca			;715a
	ld d,e			;715b
	cp 036h			;715c
	or 0abh			;715e
	sub a			;7160
	adc a,(hl)		;7161
	pop af			;7162
	and e			;7163
	cp 007h			;7164
	add a,a			;7166
	adc a,b			;7167
	ld a,a			;7168
sub_7169h:
	jp po,02416h		;7169
	ld b,l			;716c
	call p,0880eh		;716d
	ld (hl),a		;7170
	ld e,c			;7171
	ld a,a			;7172
	ex af,af'		;7173
	dec (hl)		;7174
	ld c,c			;7175
	rst 38h			;7176
	call nz,08123h		;7177
	rst 20h			;717a
	ld a,a			;717b
	adc a,e			;717c
	nop			;717d
	nop			;717e
sub_717fh:
	in a,(041h)		;717f
	jp po,08532h		;7181
	sbc a,c			;7184
	ld h,a			;7185
	ex de,hl		;7186
	ld e,h			;7187
	add a,e			;7188
	halt			;7189
	sub h			;718a
	ld e,b			;718b
	adc a,c			;718c
	ld a,a			;718d
	sub h			;718e
	ld l,c			;718f
	rst 38h			;7190
	cp 01fh			;7191
	nop			;7193
	rrca			;7194
	add hl,hl		;7195
	ld a,a			;7196
	and b			;7197
	call 09c0ch		;7198
	ld bc,001dbh		;719b
	ret m			;719e
	defb 0fdh,0ddh,0efh ;illegal sequence	;719f
	rst 38h			;71a2
	ld c,b			;71a3
	rst 38h			;71a4
	ret pe			;71a5
	sbc a,b			;71a6
	add a,h			;71a7
	and d			;71a8
	ei			;71a9
	rst 38h			;71aa
	ld b,c			;71ab
	ld h,(hl)		;71ac
	sub a			;71ad
	ld a,c			;71ae
	adc a,(hl)		;71af
	sbc a,(hl)		;71b0
	ld a,(bc)		;71b1
	ld e,b			;71b2
	add a,l			;71b3
	ld e,(hl)		;71b4
	inc bc			;71b5
	cp a			;71b6
	ld a,a			;71b7
	ld a,(025e1h)		;71b8
	jr nc,l713fh		;71bb
	ld sp,0f97fh		;71bd
	ld d,d			;71c0
	add a,b			;71c1
	inc b			;71c2
	ld c,c			;71c3
	ld l,c			;71c4
	ld a,b			;71c5
	add a,h			;71c6
	ld a,(0b767h)		;71c7
	cp 01eh			;71ca
	ld d,06fh		;71cc
	rst 38h			;71ce
	ret p			;71cf
	push hl			;71d0
	rst 38h			;71d1
	add ix,bc		;71d2
	ld e,0edh		;71d4
	ld a,a			;71d6
	ret m			;71d7
	ld h,(hl)		;71d8
	sub l			;71d9
	ld d,h			;71da
	jp (hl)			;71db
	ld d,c			;71dc
	add a,e			;71dd
	daa			;71de
	ld c,c			;71df
	add a,c			;71e0
	and l			;71e1
	ld (hl),a		;71e2
	cp 0b3h			;71e3
	rst 38h			;71e5
	ld e,c			;71e6
	cp 0bfh			;71e7
	add a,l			;71e9
	rst 38h			;71ea
	ld c,a			;71eb
	ld c,05fh		;71ec
	set 7,a			;71ee
	adc a,a			;71f0
	ld a,a			;71f1
	push bc			;71f2
l71f3h:
	dec a			;71f3
	ret pe			;71f4
	add hl,sp		;71f5
	sub l			;71f6
	call po,08911h		;71f7
	sub h			;71fa
	ld c,c			;71fb
	add a,e			;71fc
	ld e,h			;71fd
sub_71feh:
	defb 0edh ;next byte illegal after ed	;71fe
	sub h			;71ff
	ld h,l			;7200
	ld l,c			;7201
	di			;7202
	call m,0feabh		;7203
	ld l,h			;7206
	call z,sub_55feh	;7207
	ld d,066h		;720a
	ld a,b			;720c
	adc a,b			;720d
	rst 38h			;720e
	jp m,07f3fh		;720f
	ld (hl),l		;7212
	dec e			;7213
	add a,c			;7214
	adc a,l			;7215
	ld h,e			;7216
	add a,a			;7217
	ld e,h			;7218
	ld l,c			;7219
	ld (hl),b		;721a
	inc b			;721b
	sub l			;721c
	inc d			;721d
	sub h			;721e
	ld l,b			;721f
	ld d,l			;7220
	ret m			;7221
	inc e			;7222
	sub a			;7223
	sub a			;7224
	ei			;7225
	ld (hl),c		;7226
	ld d,a			;7227
	cp 07ah			;7228
	add a,l			;722a
	ld sp,08955h		;722b
	rst 38h			;722e
	call p,07f3eh		;722f
	pop hl			;7232
	ld sp,03231h		;7233
	or c			;7236
	ld c,h			;7237
	ex de,hl		;7238
l7239h:
	add a,a			;7239
	ld e,h			;723a
	ld h,b			;723b
	dec h			;723c
	ld d,l			;723d
	jp (hl)			;723e
	ld h,b			;723f
	ld l,a			;7240
	add a,l			;7241
	ld b,h			;7242
	ld b,l			;7243
	adc a,c			;7244
	sbc a,b			;7245
	jp p,l4469h		;7246
	adc a,e			;7249
	add a,l			;724a
	ld c,c			;724b
	ld de,01498h		;724c
	ld a,b			;724f
	ld d,h			;7250
	adc a,c			;7251
	ld e,h			;7252
	ld l,e			;7253
	rst 38h			;7254
	and 0f9h		;7255
	ld a,a			;7257
	ld a,(hl)		;7258
	rst 18h			;7259
	in a,(0ffh)		;725a
	cp l			;725c
	ld a,a			;725d
	and b			;725e
	sbc a,01ch		;725f
	add a,a			;7261
	jp l7f58h		;7262
	pop bc			;7265
	sbc a,b			;7266
	add a,a			;7267
	cp b			;7268
	ld h,h			;7269
	ld hl,(l6658h)		;726a
	ld a,(hl)		;726d
	cp 067h			;726e
	dec c			;7270
	jr z,l71f3h		;7271
	add hl,sp		;7273
	halt			;7274
	ld b,l			;7275
	rst 38h			;7276
	call p,sub_7f3ch	;7277
	and 009h		;727a
	add hl,sp		;727c
	rst 38h			;727d
	ld a,(00049h)		;727e
	djnz $+1		;7281
	ld (hl),a		;7283
	sbc a,l			;7284
	ex de,hl		;7285
	dec de			;7286
	adc a,b			;7287
	ld e,c			;7288
	sbc a,c			;7289
	ld a,a			;728a
	rst 28h			;728b
	ld (hl),b		;728c
	ld a,a			;728d
	ld (hl),h		;728e
	ld e,b			;728f
	ld (de),a		;7290
	ld b,h			;7291
	ld c,c			;7292
	sub l			;7293
	call p,098c9h		;7294
	sub h			;7297
	ld a,a			;7298
	rrca			;7299
	ld b,a			;729a
	rst 30h			;729b
	ld b,l			;729c
	rst 38h			;729d
	ld a,l			;729e
	rrca			;729f
	ld a,a			;72a0
	cp d			;72a1
	rst 38h			;72a2
	sbc a,l			;72a3
	jp z,04849h		;72a4
	ld l,l			;72a7
	rst 38h			;72a8
	sub a			;72a9
	rst 28h			;72aa
	jr l7239h		;72ab
	rst 38h			;72ad
	jp m,087f6h		;72ae
	add hl,hl		;72b1
	call p,0ffe6h		;72b2
	ccf			;72b5
	dec d			;72b6
	inc sp			;72b7
	ld l,h			;72b8
	inc bc			;72b9
	inc sp			;72ba
	ld b,h			;72bb
	ld d,(hl)		;72bc
	ld h,l			;72bd
	ld d,e			;72be
	ld a,a			;72bf
	add a,l			;72c0
	sub e			;72c1
	adc a,d			;72c2
	rst 18h			;72c3
	ld a,a			;72c4
	ld a,a			;72c5
	ccf			;72c6
	cp d			;72c7
	ld h,h			;72c8
	defb 0edh ;next byte illegal after ed	;72c9
	ld (08589h),hl		;72ca
	jp pe,0872bh		;72cd
	and 0ffh		;72d0
	ld (hl),c		;72d2
	adc a,b			;72d3
	jp p,0845dh		;72d4
	sbc a,b			;72d7
	ld d,(hl)		;72d8
	ld (hl),a		;72d9
	ld d,l			;72da
	rst 38h			;72db
	cp 012h			;72dc
	ld b,h			;72de
	ld e,l			;72df
	in a,(07fh)		;72e0
	add a,b			;72e2
	ld e,h			;72e3
	ld a,a			;72e4
	ld a,d			;72e5
	ld b,l			;72e6
	ld a,a			;72e7
	ld l,a			;72e8
	rra			;72e9
	ld a,a			;72ea
	cp e			;72eb
	inc sp			;72ec
	nop			;72ed
	in a,(0ech)		;72ee
	ld hl,08959h		;72f0
	ld d,l			;72f3
	jp m,l598dh		;72f4
	pop af			;72f7
	ld l,(hl)		;72f8
	call po,0b098h		;72f9
	adc a,b			;72fc
	ld h,a			;72fd
	ld d,l			;72fe
	xor a			;72ff
	rst 38h			;7300
	pop bc			;7301
	inc a			;7302
	ld h,(hl)		;7303
	ld d,d			;7304
	ld a,a			;7305
	add hl,hl		;7306
	add a,b			;7307
	ld e,035h		;7308
	ld a,a			;730a
	adc a,c			;730b
	sub d			;730c
	ld bc,07f19h		;730d
	and 010h		;7310
	and h			;7312
	rst 38h			;7313
	xor a			;7314
	defb 0fdh,03bh,080h ;illegal sequence	;7315
	ld e,a			;7318
	call pe,sub_5907h	;7319
	ld e,c			;731c
	ld d,h			;731d
	ei			;731e
	call p,08b85h		;731f
	add a,(hl)		;7322
	pop af			;7323
	ld a,h			;7324
	and d			;7325
	sbc a,c			;7326
	cpl			;7327
	ld b,(hl)		;7328
	ld (hl),l		;7329
	cp 0f0h			;732a
	ld a,h			;732c
	xor h			;732d
	rst 0			;732e
	add a,b			;732f
	rra			;7330
	ld a,a			;7331
	jr $-126		;7332
	xor l			;7334
	ld e,(iy-06eh)		;7335
	add a,a			;7338
	dec a			;7339
	sbc a,c			;733a
	ld a,a			;733b
	dec b			;733c
	call 0c0ddh		;733d
	defb 0fdh,079h,0dah ;illegal sequence	;7340
	add a,b			;7343
	call nz,sub_49c0h	;7344
	rst 10h			;7347
	ld sp,hl		;7348
	ld b,099h		;7349
	ret p			;734b
	ld a,c			;734c
	xor b			;734d
	sub a			;734e
	adc a,e			;734f
	and e			;7350
	add a,c			;7351
	ld a,a			;7352
	ret p			;7353
	ld c,d			;7354
	add a,a			;7355
	ld h,h			;7356
	add a,b			;7357
	ex de,hl		;7358
	dec bc			;7359
	add hl,hl		;735a
	add a,b			;735b
	ld b,h			;735c
	add hl,bc		;735d
	sub e			;735e
	inc sp			;735f
	jp po,l4878h		;7360
	add a,l			;7363
	add hl,de		;7364
	ret m			;7365
	ld a,a			;7366
	inc hl			;7367
	rst 38h			;7368
	ret nc			;7369
	ld hl,l6a12h		;736a
	inc hl			;736d
	xor 038h		;736e
	ld l,c			;7370
	jp m,088f6h		;7371
	cp l			;7374
	ld a,a			;7375
	ld c,a			;7376
	adc a,a			;7377
	add a,h			;7378
	ld a,a			;7379
	jp nz,l673dh		;737a
	ld h,l			;737d
	ld a,a			;737e
	dec de			;737f
	ld b,l			;7380
	rst 38h			;7381
	ld c,l			;7382
	out (05eh),a		;7383
	pop hl			;7385
	add a,b			;7386
	adc a,c			;7387
	ld a,a			;7388
	rst 28h			;7389
	call m,0923eh		;738a
	ld a,a			;738d
	inc sp			;738e
	ld h,a			;738f
	dec sp			;7390
	ld a,c			;7391
	ld (hl),a		;7392
	ld sp,hl		;7393
	or a			;7394
	add a,l			;7395
	rst 28h			;7396
	ld a,c			;7397
	rst 0			;7398
	rst 38h			;7399
	ex (sp),hl		;739a
	dec d			;739b
	ld b,(hl)		;739c
	ld h,l			;739d
	add a,b			;739e
	ret z			;739f
	ld h,l			;73a0
	ld (hl),099h		;73a1
	add a,081h		;73a3
	add hl,sp		;73a5
	rst 38h			;73a6
	inc hl			;73a7
	add a,b			;73a8
	cp l			;73a9
	ld a,(hl)		;73aa
	call p,0c57fh		;73ab
	rst 38h			;73ae
	di			;73af
	dec sp			;73b0
	ld e,e			;73b1
	sub e			;73b2
	ld a,a			;73b3
	rst 38h			;73b4
	sub h			;73b5
	pop af			;73b6
	ex (sp),hl		;73b7
	xor 054h		;73b8
	ld (hl),b		;73ba
	sub (hl)		;73bb
	and 00ah		;73bc
	rst 38h			;73be
	ld a,c			;73bf
	rst 20h			;73c0
	rst 38h			;73c1
	jp nz,0adc1h		;73c2
	ld b,d			;73c5
	ld a,a			;73c6
	and e			;73c7
	add a,a			;73c8
	ld (07f26h),hl		;73c9
	add a,a			;73cc
	ld (0bf1fh),hl		;73cd
	ld a,a			;73d0
	sbc a,d			;73d1
	ld (bc),a		;73d2
l73d3h:
	ld bc,01077h		;73d3
	rst 38h			;73d6
	sbc a,a			;73d7
	ld hl,(098b0h)		;73d8
	ld c,c			;73db
	sub (hl)		;73dc
	adc a,a			;73dd
	ret p			;73de
	ld a,(0ceffh)		;73df
	cp 0fch			;73e2
	jr z,l73d3h		;73e4
	and e			;73e6
	rst 38h			;73e7
	ld d,c			;73e8
	ld h,a			;73e9
	defb 0edh ;next byte illegal after ed	;73ea
	add hl,de		;73eb
	ld e,c			;73ec
	ld l,c			;73ed
	add a,c			;73ee
	add a,0c9h		;73ef
	ld c,056h		;73f1
	ret			;73f3
	or c			;73f4
	cp h			;73f5
	rla			;73f6
	add hl,hl		;73f7
	rlca			;73f8
	adc a,a			;73f9
	sbc a,c			;73fa
	ld h,d			;73fb
	ld l,a			;73fc
	and 016h		;73fd
	adc a,(hl)		;73ff
	rst 8			;7400
	cpl			;7401
	pop hl			;7402
	jp nz,l7beeh		;7403
	jp z,0fffdh		;7406
	dec sp			;7409
	ld b,a			;740a
	ld l,c			;740b
	ret p			;740c
	adc a,e			;740d
	sub (hl)		;740e
	rra			;740f
	ld d,(hl)		;7410
	ld h,a			;7411
	adc a,(hl)		;7412
	push hl			;7413
	add a,c			;7414
	rst 18h			;7415
	ld e,d			;7416
	ld d,l			;7417
	ld a,(hl)		;7418
	or l			;7419
	ld l,h			;741a
	dec hl			;741b
	ld (hl),0cfh		;741c
	jr nz,l7439h		;741e
	sbc a,b			;7420
	add a,a			;7421
	add a,b			;7422
	ld (hl),a		;7423
	add hl,de		;7424
	ld d,h			;7425
	sub c			;7426
	add hl,de		;7427
	dec h			;7428
	ld h,(hl)		;7429
	rrca			;742a
	sub c			;742b
	ei			;742c
	cp a			;742d
	add hl,de		;742e
	ld a,a			;742f
	ld (03213h),a		;7430
	rst 28h			;7433
	ld d,c			;7434
	sbc a,b			;7435
	call nc,0097eh		;7436
l7439h:
	adc a,b			;7439
	rst 18h			;743a
	or 0f7h			;743b
	rrca			;743d
	sub e			;743e
	ld h,067h		;743f
	add a,b			;7441
	ret m			;7442
	ld e,b			;7443
	ld a,a			;7444
	inc h			;7445
l7446h:
	sub e			;7446
	ld a,(hl)		;7447
	adc a,b			;7448
	add a,(hl)		;7449
	ld c,(hl)		;744a
	cp c			;744b
	add a,b			;744c
	ld (09145h),a		;744d
	pop af			;7450
	sbc a,b			;7451
	halt			;7452
	sub c			;7453
	ld h,b			;7454
	rst 38h			;7455
	ld a,a			;7456
	ei			;7457
	sub d			;7458
	ld e,b			;7459
	inc bc			;745a
	rra			;745b
	cp a			;745c
	rst 38h			;745d
	pop af			;745e
	sub e			;745f
	add a,e			;7460
	ld a,a			;7461
	jp c,022d5h		;7462
	ld h,h			;7465
	ld l,b			;7466
	jr z,l7446h		;7467
	rst 28h			;7469
	sub d			;746a
	and a			;746b
	sbc a,03dh		;746c
	ld a,00fh		;746e
	ld a,(bc)		;7470
	cp 07ch			;7471
	ld a,082h		;7473
	ld h,h			;7475
	ld (0dc67h),hl		;7476
	add a,c			;7479
	ld h,b			;747a
	add hl,hl		;747b
	dec a			;747c
	sub d			;747d
	ld (hl),a		;747e
	sbc a,a			;747f
	ld b,h			;7480
	ei			;7481
	ld a,a			;7482
	rra			;7483
	ei			;7484
	rst 38h			;7485
	sub c			;7486
	add a,e			;7487
sub_7488h:
	nop			;7488
	cp c			;7489
	sub l			;748a
	dec de			;748b
	rst 38h			;748c
	rst 38h			;748d
	ld de,l7a93h		;748e
	ld d,e			;7491
	ld a,a			;7492
	ex (sp),hl		;7493
	ld d,l			;7494
	halt			;7495
	push hl			;7496
	ld c,e			;7497
	in a,(c)		;7498
	jr c,l750bh		;749a
	ccf			;749c
	sub (hl)		;749d
	ld a,c			;749e
	ld a,a			;749f
	ld d,e			;74a0
	add a,d			;74a1
	ret pe			;74a2
	cp c			;74a3
	or e			;74a4
	add a,c			;74a5
	ld a,(bc)		;74a6
	ld (0b396h),a		;74a7
	ld b,a			;74aa
	adc a,b			;74ab
	ld a,a			;74ac
	nop			;74ad
	cp c			;74ae
	dec h			;74af
	add a,h			;74b0
	ld c,c			;74b1
	rra			;74b2
	ld (hl),d		;74b3
	pop af			;74b4
	ld a,a			;74b5
	ld b,e			;74b6
	or 07fh			;74b7
	ld c,046h		;74b9
	ld a,a			;74bb
	rst 30h			;74bc
	ld h,l			;74bd
	ld a,a			;74be
	ld d,d			;74bf
	ld c,c			;74c0
	jp pe,l6ee7h		;74c1
	ld (hl),c		;74c4
	add a,l			;74c5
	cp 033h			;74c6
	ld b,a			;74c8
	ld d,(hl)		;74c9
	jp z,08b96h		;74ca
	adc a,(hl)		;74cd
	di			;74ce
	jp m,0da00h		;74cf
	inc h			;74d2
	add a,c			;74d3
	rst 0			;74d4
	add a,d			;74d5
	xor c			;74d6
	ld a,b			;74d7
	adc a,b			;74d8
	rst 38h			;74d9
	dec hl			;74da
	or 0a2h			;74db
	ld d,(hl)		;74dd
	ld c,009h		;74de
	sub c			;74e0
	ld de,01f95h		;74e1
	cp 03eh			;74e4
	ld a,a			;74e6
	sub c			;74e7
	sbc a,b			;74e8
	ld e,c			;74e9
	ld h,a			;74ea
	and 05ch		;74eb
	sub d			;74ed
	ld (hl),a		;74ee
	ld a,c			;74ef
	defb 0fdh,0c8h,085h ;illegal sequence	;74f0
	sub (hl)		;74f3
	ld (hl),a		;74f4
	ld h,d			;74f5
	sub l			;74f6
	ld a,a			;74f7
	sbc a,b			;74f8
	cp 03ch			;74f9
	dec h			;74fb
	sbc a,a			;74fc
	rra			;74fd
	ld e,c			;74fe
	ld a,a			;74ff
	adc a,c			;7500
	add a,c			;7501
	sbc a,c			;7502
	add a,c			;7503
	adc a,b			;7504
	ld b,h			;7505
	exx			;7506
	add a,d			;7507
	sub l			;7508
	in a,(059h)		;7509
l750bh:
	rst 38h			;750b
	ld c,c			;750c
	sub h			;750d
	halt			;750e
	sub l			;750f
	ld b,l			;7510
	inc h			;7511
	ld c,c			;7512
	dec b			;7513
	adc a,e			;7514
	dec d			;7515
	adc a,b			;7516
	ld d,d			;7517
	rst 38h			;7518
	call p,0f477h		;7519
	ld l,e			;751c
	halt			;751d
	and 064h		;751e
	sub a			;7520
	ld (hl),l		;7521
l7522h:
	ld b,l			;7522
	sub h			;7523
	xor 092h		;7524
	ld a,078h		;7526
	jr z,l75a3h		;7528
	adc a,a			;752a
	rst 38h			;752b
	add a,0fdh		;752c
	add a,d			;752e
	ld d,d			;752f
	ld d,l			;7530
	ld a,a			;7531
	add a,b			;7532
	dec bc			;7533
	inc h			;7534
	ld e,b			;7535
	adc a,b			;7536
	rst 38h			;7537
	ld d,l			;7538
	ld d,l			;7539
	jp m,l548bh		;753a
	add a,h			;753d
	push bc			;753e
	sub l			;753f
	rst 38h			;7540
	or c			;7541
	rst 38h			;7542
	ld c,a			;7543
	rrca			;7544
	call nc,098b2h		;7545
	and 0f4h		;7548
	ld (hl),d		;754a
	and 0ebh		;754b
	defb 0fdh,067h ;ld iyh,a	;754d
	ld h,d			;754f
	add a,(hl)		;7550
	ld b,h			;7551
	halt			;7552
	add a,a			;7553
	sub h			;7554
	and a			;7555
	sub d			;7556
	dec a			;7557
	adc a,l			;7558
	ld (hl),h		;7559
	ei			;755a
	ld a,a			;755b
	and a			;755c
	add a,b			;755d
	inc a			;755e
	add a,d			;755f
	sub b			;7560
	add a,b			;7561
	ld h,d			;7562
	ld b,l			;7563
	add a,(hl)		;7564
	ld a,a			;7565
	sub h			;7566
	ld e,b			;7567
	ld h,l			;7568
	ld a,e			;7569
	adc a,h			;756a
	add hl,hl		;756b
	ld c,c			;756c
	ld d,(hl)		;756d
	ret nz			;756e
	add a,l			;756f
	add hl,hl		;7570
	sub h			;7571
	ld b,h			;7572
	rst 38h			;7573
	cp h			;7574
	dec hl			;7575
	ld d,h			;7576
	rst 38h			;7577
	dec h			;7578
	di			;7579
	ld d,c			;757a
	add a,l			;757b
	sbc a,0cch		;757c
	adc a,h			;757e
	sub (hl)		;757f
	or 0c4h			;7580
	add a,(hl)		;7582
	ld c,b			;7583
	ld b,h			;7584
	xor 0f2h		;7585
	add hl,hl		;7587
	ld (hl),a		;7588
	ld (hl),a		;7589
	sub e			;758a
	ld l,c			;758b
	sbc a,a			;758c
	jp z,09effh		;758d
	call nc,08033h		;7590
	pop af			;7593
	ld (hl),l		;7594
	ld c,d			;7595
	add a,b			;7596
	sub e			;7597
	sbc a,c			;7598
	ld b,d			;7599
	add a,h			;759a
	ld c,d			;759b
	ei			;759c
	sub a			;759d
	sub h			;759e
	add hl,hl		;759f
	rst 38h			;75a0
	ld b,l			;75a1
	inc bc			;75a2
l75a3h:
	ld b,d			;75a3
	sbc a,c			;75a4
	rst 38h			;75a5
	call m,08849h		;75a6
	di			;75a9
	ld e,b			;75aa
	add a,(hl)		;75ab
	sub d			;75ac
	ld h,(hl)		;75ad
	cp 0c9h			;75ae
	ld e,b			;75b0
	rst 38h			;75b1
	and 0cbh		;75b2
	add a,(hl)		;75b4
	inc d			;75b5
	ei			;75b6
	xor h			;75b7
	rst 38h			;75b8
	ld (hl),l		;75b9
	ld sp,hl		;75ba
	sub e			;75bb
	ld h,(hl)		;75bc
	rlca			;75bd
	add hl,hl		;75be
	sbc a,a			;75bf
	xor a			;75c0
	nop			;75c1
	pop bc			;75c2
	add hl,sp		;75c3
	sub e			;75c4
	ld b,h			;75c5
	add a,d			;75c6
	sbc a,c			;75c7
	add a,b			;75c8
	ld (de),a		;75c9
	ld c,c			;75ca
	add a,b			;75cb
	ld b,d			;75cc
	ld (hl),e		;75cd
	sub l			;75ce
	add a,a			;75cf
	ld d,h			;75d0
	or 029h			;75d1
	ld a,a			;75d3
	sbc a,c			;75d4
	rst 38h			;75d5
	ld (hl),d		;75d6
	ld b,d			;75d7
	inc c			;75d8
	rrca			;75d9
	sub h			;75da
	sub e			;75db
	sbc a,c			;75dc
	ld d,e			;75dd
	ld a,a			;75de
	ld e,d			;75df
	rst 10h			;75e0
	exx			;75e1
	di			;75e2
	ld c,c			;75e3
	xor 0a7h		;75e4
	ld e,(hl)		;75e6
	sbc a,b			;75e7
	ld a,a			;75e8
	ld (l4585h),hl		;75e9
	ld h,a			;75ec
	ld b,02ah		;75ed
	ld c,b			;75ef
	ret m			;75f0
	ld a,e			;75f1
	sub d			;75f2
	cp a			;75f3
	ld sp,hl		;75f4
	cp (hl)			;75f5
	adc a,b			;75f6
	ld c,e			;75f7
	cp 057h			;75f8
	sbc a,b			;75fa
	ld a,a			;75fb
	jp po,09439h		;75fc
sub_75ffh:
	add a,d			;75ff
	dec a			;7600
	add a,e			;7601
	add a,a			;7602
	ld b,l			;7603
	add a,h			;7604
	add hl,bc		;7605
	ld l,c			;7606
	ld (hl),a		;7607
	dec h			;7608
	rst 38h			;7609
	sub c			;760a
	ld b,d			;760b
	sub d			;760c
	add a,a			;760d
	add hl,de		;760e
	add a,e			;760f
	dec h			;7610
	ld a,a			;7611
	adc a,l			;7612
	jr nz,$-107		;7613
	sub d			;7615
	add hl,sp		;7616
	ld b,a			;7617
	sub d			;7618
	rst 38h			;7619
	xor h			;761a
	di			;761b
	or d			;761c
	ld h,l			;761d
	ld c,e			;761e
	ld c,c			;761f
	xor 03ah		;7620
	dec bc			;7622
	ld d,a			;7623
	exx			;7624
	rst 30h			;7625
	sub (hl)		;7626
	rst 38h			;7627
	ld a,(de)		;7628
	sbc a,b			;7629
	and (hl)		;762a
	rst 38h			;762b
	ld h,d			;762c
	sbc a,(hl)		;762d
	ld d,(hl)		;762e
	ld b,l			;762f
	ei			;7630
	ld l,(hl)		;7631
	adc a,l			;7632
	ld b,a			;7633
	rst 38h			;7634
	ex (sp),hl		;7635
	dec c			;7636
	sub h			;7637
	ld d,(hl)		;7638
	ld h,h			;7639
	ld a,a			;763a
	sub b			;763b
	add a,b			;763c
	ld h,d			;763d
	dec h			;763e
	scf			;763f
	add hl,sp		;7640
	sub (hl)		;7641
	ld a,a			;7642
	ld a,e			;7643
	ld h,e			;7644
	add a,e			;7645
	ld a,b			;7646
	ld a,a			;7647
sub_7648h:
	dec a			;7648
	add a,c			;7649
	inc hl			;764a
	ld a,a			;764b
	ld c,c			;764c
	add a,l			;764d
	ld e,c			;764e
	di			;764f
	ld h,c			;7650
	ld l,c			;7651
	jp pe,l4a4dh		;7652
	adc a,e			;7655
l7656h:
	rla			;7656
	ld b,l			;7657
	ld a,c			;7658
	ld sp,hl		;7659
	sub e			;765a
	rst 38h			;765b
	sbc a,a			;765c
	adc a,0c7h		;765d
	ld sp,hl		;765f
	or e			;7660
	adc a,b			;7661
	ld a,(de)		;7662
	adc a,c			;7663
	and a			;7664
	cp 0c7h			;7665
	adc a,b			;7667
	jp nc,l6366h		;7668
	adc a,l			;766b
	add a,b			;766c
	inc d			;766d
	ld (hl),d		;766e
	jr z,l76c5h		;766f
	add a,d			;7671
	ld c,d			;7672
	rst 38h			;7673
	jp z,0cefbh		;7674
	add a,e			;7677
	set 7,a			;7678
	ld (bc),a		;767a
	ld sp,l6223h		;767b
	rst 38h			;767e
	ld e,l			;767f
	ld c,c			;7680
	sbc a,c			;7681
sub_7682h:
	ld l,c			;7682
	di			;7683
	ld d,l			;7684
	ld d,h			;7685
	defb 0ddh,076h,076h ;illegal sequence	;7686
	sub l			;7689
	ld a,b			;768a
	ld e,c			;768b
	inc l			;768c
	sub h			;768d
	out (0f2h),a		;768e
	sub d			;7690
	rst 38h			;7691
	ld c,d			;7692
	di			;7693
	dec h			;7694
	ld e,c			;7695
	sub d			;7696
	inc c			;7697
	adc a,a			;7698
	ret m			;7699
	ex af,af'		;769a
	ld b,a			;769b
	ld d,l			;769c
	rst 38h			;769d
	ex (sp),hl		;769e
	ex (sp),hl		;769f
	ld b,e			;76a0
	ld h,l			;76a1
	ld a,a			;76a2
	dec e			;76a3
	ld b,(hl)		;76a4
	add a,e			;76a5
	ld (08055h),hl		;76a6
	and l			;76a9
	rst 38h			;76aa
	and l			;76ab
	ei			;76ac
	xor (hl)		;76ad
	add a,e			;76ae
	ld l,c			;76af
	rst 38h			;76b0
	ld hl,(06f7fh)		;76b1
	ex (sp),hl		;76b4
	ld c,c			;76b5
	ret p			;76b6
	adc a,d			;76b7
	halt			;76b8
	sub a			;76b9
	ld h,b			;76ba
	rst 38h			;76bb
	add hl,sp		;76bc
	pop af			;76bd
	rrca			;76be
	add a,0ffh		;76bf
	ld d,e			;76c1
	ld a,b			;76c2
	dec c			;76c3
	sub h			;76c4
l76c5h:
	ld b,015h		;76c5
	sub (hl)		;76c7
	ld a,a			;76c8
	sbc a,b			;76c9
	pop af			;76ca
	ld a,a			;76cb
	push de			;76cc
	and b			;76cd
	ld (hl),a		;76ce
	nop			;76cf
	ret m			;76d0
	ld h,l			;76d1
	sub (hl)		;76d2
	ld d,l			;76d3
sub_76d4h:
	ex (sp),hl		;76d4
	ld de,008e6h		;76d5
	ld h,055h		;76d8
	ld h,(hl)		;76da
	add a,b			;76db
	xor l			;76dc
	rst 38h			;76dd
	ld l,l			;76de
	ei			;76df
	ld l,a			;76e0
	add a,e			;76e1
	ld d,(hl)		;76e2
	sub h			;76e3
	rst 38h			;76e4
	or b			;76e5
	ld a,a			;76e6
	ld (02193h),a		;76e7
	add hl,hl		;76ea
	ld d,e			;76eb
	ld hl,00103h		;76ec
	ld a,c			;76ef
	rst 38h			;76f0
	inc e			;76f1
	jp z,0c6f3h		;76f2
	cp 04dh			;76f5
	call p,sub_6ef0h	;76f7
	inc d			;76fa
	ret m			;76fb
	sub a			;76fc
	sub d			;76fd
	sub c			;76fe
	rst 28h			;76ff
	add a,h			;7700
	ld d,l			;7701
	ld h,a			;7702
	sub c			;7703
	or c			;7704
	rst 38h			;7705
	inc h			;7706
	adc a,l			;7707
	call po,0cf83h		;7708
	sbc a,c			;770b
	nop			;770c
	ret z			;770d
	ret nc			;770e
	call m,02522h		;770f
	ld d,b			;7712
	ld (l55b6h),hl		;7713
	cp b			;7716
	jp m,00000h		;7717
	or d			;771a
	cp h			;771b
	inc bc			;771c
	or a			;771d
	sbc a,h			;771e
	inc l			;771f
	ld a,a			;7720
	ld b,073h		;7721
	ld hl,02143h		;7723
	ld h,e			;7726
	inc bc			;7727
	cpl			;7728
	ld h,(hl)		;7729
	rst 38h			;772a
	sbc a,c			;772b
	jp (hl)			;772c
	ld (016e1h),hl		;772d
	ld c,c			;7730
	ld h,a			;7731
	sub h			;7732
	xor l			;7733
	ld e,d			;7734
	push hl			;7735
	rst 28h			;7736
	rst 38h			;7737
	ld a,d			;7738
	add a,(hl)		;7739
	or c			;773a
	add a,(hl)		;773b
	add hl,hl		;773c
	sub (hl)		;773d
	rst 38h			;773e
	pop bc			;773f
	ld (hl),h		;7740
	sbc a,a			;7741
	ret			;7742
	rst 38h			;7743
	sbc a,a			;7744
	adc a,a			;7745
l7746h:
	add a,h			;7746
	call c,0269ah		;7747
	inc (hl)		;774a
	add a,h			;774b
	ld d,h			;774c
	add a,e			;774d
	nop			;774e
	rrca			;774f
	ld h,a			;7750
	ld (hl),a		;7751
	ld h,(hl)		;7752
	ld h,l			;7753
	ld a,a			;7754
	ld h,(hl)		;7755
	sub e			;7756
	ld a,e			;7757
	ld c,d			;7758
	add a,e			;7759
	and e			;775a
	sub (hl)		;775b
	rst 38h			;775c
	sub (hl)		;775d
	ld c,c			;775e
	ld e,d			;775f
	ld b,e			;7760
	ld l,h			;7761
	sub l			;7762
	ld e,c			;7763
	ld b,h			;7764
	rst 28h			;7765
	cp h			;7766
	or l			;7767
	add a,(hl)		;7768
	sub e			;7769
	sub l			;776a
	ld b,(hl)		;776b
	sub e			;776c
	add hl,sp		;776d
	ld d,064h		;776e
	ld b,(hl)		;7770
	ld h,a			;7771
	add a,b			;7772
	and d			;7773
	ld b,(hl)		;7774
	adc a,b			;7775
	adc a,c			;7776
	add a,b			;7777
	ccf			;7778
	add hl,hl		;7779
	ld d,e			;777a
	add a,e			;777b
	add a,h			;777c
	add a,b			;777d
	ld h,b			;777e
	ld b,08bh		;777f
	add a,a			;7781
	and c			;7782
	adc a,l			;7783
	ld d,b			;7784
	rst 38h			;7785
	ld e,0f2h		;7786
	rst 38h			;7788
	and e			;7789
	add a,e			;778a
	ld hl,l7f49h		;778b
	ld d,l			;778e
	ld l,c			;778f
l7790h:
	in a,(095h)		;7790
	sbc a,l			;7792
	dec sp			;7793
	ld a,c			;7794
	rst 28h			;7795
	ld h,0abh		;7796
	xor l			;7798
	add a,e			;7799
l779ah:
	ld l,e			;779a
	sub h			;779b
	dec h			;779c
	adc a,b			;779d
	add a,(hl)		;779e
	ld e,b			;779f
	jp z,l779ah		;77a0
	adc a,0feh		;77a3
	ld (hl),08ah		;77a5
	adc a,d			;77a7
	cp 080h			;77a8
	ld (hl),b		;77aa
	ld c,b			;77ab
	ld d,l			;77ac
	dec h			;77ad
	ld e,b			;77ae
	adc a,c			;77af
	add a,b			;77b0
	jp p,02391h		;77b1
	add a,b			;77b4
	and e			;77b5
	rlca			;77b6
	cp e			;77b7
	cp b			;77b8
	ld a,a			;77b9
	ret po			;77ba
	sub e			;77bb
	ld a,e			;77bc
	ld h,e			;77bd
	rst 38h			;77be
	push bc			;77bf
	rst 38h			;77c0
	ld sp,0a400h		;77c1
	add a,h			;77c4
	ld h,(hl)		;77c5
	call p,080f3h		;77c6
	inc l			;77c9
	or e			;77ca
	sub (hl)		;77cb
	ld a,(bc)		;77cc
	add a,(hl)		;77cd
	ld e,b			;77ce
	xor a			;77cf
	ld a,a			;77d0
	add a,h			;77d1
	adc a,h			;77d2
	cp 0c1h			;77d3
	ld (hl),h		;77d5
	ld c,c			;77d6
	ld b,h			;77d7
	add a,d			;77d8
	cp c			;77d9
	add a,l			;77da
	ld b,a			;77db
	xor c			;77dc
	ld (hl),c		;77dd
	add a,l			;77de
	rst 18h			;77df
	sub d			;77e0
l77e1h:
	inc sp			;77e1
	call z,08cb8h		;77e2
	rst 38h			;77e5
	xor e			;77e6
	add a,(hl)		;77e7
	ld a,a			;77e8
	push hl			;77e9
	ld (hl),c		;77ea
	add a,l			;77eb
	ld a,a			;77ec
	ex (sp),hl		;77ed
	ld d,0dah		;77ee
	ld l,h			;77f0
	call p,089ech		;77f1
	sbc a,d			;77f4
	jp po,l7fd7h		;77f5
	ld a,(de)		;77f8
	add a,(hl)		;77f9
	ld l,d			;77fa
	ld a,a			;77fb
	adc a,c			;77fc
	rst 38h			;77fd
	or a			;77fe
	sbc a,l			;77ff
	ld hl,(0359ch)		;7800
	add a,c			;7803
	adc a,h			;7804
	adc a,c			;7805
	ccf			;7806
	ld a,a			;7807
	ld l,080h		;7808
	inc (hl)		;780a
	ld h,a			;780b
	ld a,b			;780c
	ld a,d			;780d
	ld (hl),a		;780e
	ld a,a			;780f
	inc l			;7810
	ld e,c			;7811
	ld a,a			;7812
	adc a,h			;7813
	ret			;7814
	ret pe			;7815
	rst 20h			;7816
	ld a,a			;7817
	ld (hl),l		;7818
	jp po,00f7ch		;7819
	ld sp,0c184h		;781c
	ld c,c			;781f
	rst 38h			;7820
	ld hl,(09459h)		;7821
	sub c			;7824
	ld h,(hl)		;7825
	ld h,a			;7826
	ld (hl),b		;7827
	cp 02ah			;7828
	ld b,l			;782a
	add hl,bc		;782b
	ld b,a			;782c
	sub a			;782d
	ld a,a			;782e
l782fh:
	ld a,a			;782f
	ld (hl),h		;7830
	ld a,a			;7831
	push hl			;7832
	ld de,03234h		;7833
	add a,b			;7836
	and l			;7837
	ld h,(hl)		;7838
	ld (hl),a		;7839
	rst 38h			;783a
	daa			;783b
	ld a,a			;783c
	sub d			;783d
	add a,l			;783e
	ld a,a			;783f
	ld a,a			;7840
	ld d,l			;7841
	sub 086h		;7842
	ld a,a			;7844
	dec l			;7845
sub_7846h:
	add a,l			;7846
	call po,0e63fh		;7847
	push bc			;784a
	sub (hl)		;784b
	adc a,b			;784c
	dec e			;784d
	dec (hl)		;784e
	sub (hl)		;784f
	add a,(hl)		;7850
	adc a,b			;7851
	sbc a,b			;7852
	xor a			;7853
	or h			;7854
	inc h			;7855
	add a,b			;7856
	cp h			;7857
	cp 028h			;7858
	ld d,(hl)		;785a
	adc a,c			;785b
	sbc a,h			;785c
	cp d			;785d
	sbc a,a			;785e
	rst 38h			;785f
	ccf			;7860
	inc (hl)		;7861
	inc (hl)		;7862
	ld d,h			;7863
	sub l			;7864
	add a,c			;7865
	ld h,a			;7866
	ld h,(hl)		;7867
	nop			;7868
	ld a,a			;7869
	sbc a,d			;786a
	sbc a,c			;786b
	ld a,a			;786c
	ld d,b			;786d
	ld d,h			;786e
	defb 0edh ;next byte illegal after ed	;786f
	inc sp			;7870
	sub e			;7871
	rst 30h			;7872
	ld (bc),a		;7873
	ld (de),a		;7874
	sbc a,b			;7875
	rst 38h			;7876
	and (hl)		;7877
	ld c,c			;7878
	adc a,b			;7879
	rrca			;787a
	ld c,e			;787b
	or 072h			;787c
	adc a,b			;787e
	ret z			;787f
	sbc a,b			;7880
	sub h			;7881
	sub (hl)		;7882
	push de			;7883
	add a,(hl)		;7884
	ld c,d			;7885
	sub (hl)		;7886
	rst 38h			;7887
	ld h,b			;7888
	add a,e			;7889
	ld c,b			;788a
	ld l,h			;788b
	adc a,c			;788c
	ld a,a			;788d
	ei			;788e
	ld d,c			;788f
	jr z,l78f9h		;7890
	ld (hl),l		;7892
	rst 38h			;7893
	ccf			;7894
	sbc a,c			;7895
	add a,b			;7896
	jp nc,08053h		;7897
	ld sp,07f06h		;789a
	add a,(hl)		;789d
	ld d,l			;789e
	ld d,b			;789f
	sbc a,c			;78a0
	add hl,sp		;78a1
	ld h,c			;78a2
	ld a,a			;78a3
	ld b,(hl)		;78a4
	ld (hl),e		;78a5
	sbc a,e			;78a6
	ld d,h			;78a7
	defb 0fdh,0cdh,023h ;illegal sequence	;78a8
	ld a,a			;78ab
	ld c,037h		;78ac
	ld d,h			;78ae
	adc a,b			;78af
	sub l			;78b0
	call c,sub_7f4eh	;78b1
	xor c			;78b4
	rst 28h			;78b5
	sbc a,h			;78b6
	cp 0a7h			;78b7
	call pe,0ff31h		;78b9
l78bch:
	ld a,(de)		;78bc
	ld b,h			;78bd
	rrca			;78be
	ld d,h			;78bf
	dec h			;78c0
	ld d,l			;78c1
	adc a,c			;78c2
	rst 38h			;78c3
	inc d			;78c4
	ld c,c			;78c5
	inc d			;78c6
	and h			;78c7
	jp z,00f49h		;78c8
	cp 03fh			;78cb
	ld hl,(l48b9h)		;78cd
	xor a			;78d0
	sub e			;78d1
	ld b,d			;78d2
	ld a,a			;78d3
	dec b			;78d4
	add a,h			;78d5
	ld d,e			;78d6
	ld a,a			;78d7
	call sub_7f48h		;78d8
	ld c,044h		;78db
l78ddh:
	ld a,c			;78dd
	sub e			;78de
	ld a,a			;78df
	ld h,l			;78e0
sub_78e1h:
	rst 38h			;78e1
	ld d,d			;78e2
	ld c,b			;78e3
	rst 20h			;78e4
	ld e,e			;78e5
	rrca			;78e6
	dec l			;78e7
	rst 30h			;78e8
	inc l			;78e9
	inc sp			;78ea
	ld c,c			;78eb
	di			;78ec
	inc sp			;78ed
	ld h,l			;78ee
	adc a,b			;78ef
	add hl,sp		;78f0
	ld d,l			;78f1
	sub l			;78f2
	dec de			;78f3
	sub b			;78f4
	ld (0fc49h),a		;78f5
	and d			;78f8
l78f9h:
	adc a,e			;78f9
	add a,(hl)		;78fa
	ld d,d			;78fb
	sbc a,a			;78fc
	jp p,02a81h		;78fd
	sbc a,(hl)		;7900
	ex de,hl		;7901
	nop			;7902
	pop af			;7903
	and b			;7904
	jr c,l795bh		;7905
	add hl,hl		;7907
	ld (0a400h),hl		;7908
	ld a,l			;790b
	nop			;790c
	nop			;790d
	sub l			;790e
	cp c			;790f
	ld d,(hl)		;7910
	ld a,a			;7911
	ld b,(hl)		;7912
	ld a,h			;7913
	ld (hl),h		;7914
sub_7915h:
	ld a,a			;7915
	scf			;7916
	ld c,l			;7917
	ld b,l			;7918
	call nc,0e256h		;7919
	add a,l			;791c
	jp po,0e5f7h		;791d
	ret c			;7920
	ld (hl),l		;7921
	adc a,b			;7922
sub_7923h:
	ld b,b			;7923
	ld a,a			;7924
	adc a,d			;7925
	ld b,(hl)		;7926
	adc a,b			;7927
	ex af,af'		;7928
	adc a,b			;7929
	ld h,(hl)		;792a
	adc a,a			;792b
	push hl			;792c
	adc a,b			;792d
	xor e			;792e
	ld e,e			;792f
	nop			;7930
	ld sp,hl		;7931
	ld b,d			;7932
	sub h			;7933
	ld h,(hl)		;7934
	ld d,h			;7935
	sbc a,06dh		;7936
	ei			;7938
	inc sp			;7939
	ld a,(hl)		;793a
	ld a,a			;793b
	jp z,l70ffh		;793c
	ld h,a			;793f
	inc sp			;7940
	pop af			;7941
	ld a,a			;7942
	adc a,b			;7943
	jr nz,l78ddh		;7944
	ld h,a			;7946
	push de			;7947
	pop af			;7948
	sub (hl)		;7949
sub_794ah:
	ld a,a			;794a
	ld l,c			;794b
	push hl			;794c
	jp (hl)			;794d
	rst 38h			;794e
	ld e,c			;794f
	cp l			;7950
	ld d,(hl)		;7951
	push bc			;7952
	ret			;7953
	ld d,a			;7954
	and b			;7955
	push hl			;7956
sub_7957h:
	sbc a,b			;7957
	xor d			;7958
	ld (hl),d		;7959
	ld a,c			;795a
l795bh:
	add a,b			;795b
	ccf			;795c
	jr nc,$+55		;795d
	ld b,h			;795f
	ld a,h			;7960
	ld (02814h),a		;7961
	ld sp,0127ah		;7964
	inc sp			;7967
	and 07fh		;7968
	rst 38h			;796a
	sbc a,b			;796b
	rst 38h			;796c
	or a			;796d
	inc a			;796e
	add a,a			;796f
	or l			;7970
	add a,a			;7971
	dec l			;7972
	push hl			;7973
	ret z			;7974
	adc a,c			;7975
	ld b,h			;7976
	call z,sub_62fch	;7977
	ld h,(hl)		;797a
	call nz,09172h		;797b
	sub (hl)		;797e
	sbc a,c			;797f
	ld a,c			;7980
	and a			;7981
	ex (sp),hl		;7982
	nop			;7983
	ei			;7984
	ld e,(hl)		;7985
sub_7986h:
	ld a,a			;7986
	ld e,b			;7987
	rst 38h			;7988
	rst 8			;7989
	add a,b			;798a
	inc l			;798b
	cp 074h			;798c
	ld d,h			;798e
	xor (hl)		;798f
	and c			;7990
	inc hl			;7991
	rst 38h			;7992
	jp 0e59ah		;7993
	sbc a,c			;7996
	adc a,b			;7997
	ld l,e			;7998
l7999h:
	ld h,a			;7999
	sub a			;799a
	cp e			;799b
	ld h,e			;799c
	add a,l			;799d
	sbc a,(hl)		;799e
	ld a,a			;799f
	ld a,a			;79a0
	cp h			;79a1
	ld de,07fe9h		;79a2
	sub l			;79a5
	rst 38h			;79a6
	ld e,0d7h		;79a7
	xor 038h		;79a9
	ld h,a			;79ab
	dec b			;79ac
	or h			;79ad
	push hl			;79ae
	push hl			;79af
	add a,l			;79b0
	sub d			;79b1
	adc a,c			;79b2
	rrca			;79b3
	out (071h),a		;79b4
	sub a			;79b6
	sub a			;79b7
	ld a,a			;79b8
	sbc a,l			;79b9
	rrca			;79ba
	cp 07fh			;79bb
	ld c,0fah		;79bd
	jp (hl)			;79bf
	ret m			;79c0
	sub c			;79c1
	add hl,sp		;79c2
	rst 38h			;79c3
l79c4h:
	rst 20h			;79c4
	cp 03eh			;79c5
	dec c			;79c7
	ld b,(hl)		;79c8
	ld l,(hl)		;79c9
	or a			;79ca
	push hl			;79cb
	ld b,098h		;79cc
	jp p,09e24h		;79ce
	jp m,00f6fh		;79d1
	nop			;79d4
	rst 38h			;79d5
	call m,sub_6000h	;79d6
	nop			;79d9
	nop			;79da
	ld a,h			;79db
	sbc a,c			;79dc
	nop			;79dd
	nop			;79de
	inc hl			;79df
	ld (00310h),hl		;79e0
	ld (01918h),hl		;79e3
	sbc a,c			;79e6
	ld hl,0110ah		;79e7
	push af			;79ea
	nop			;79eb
	dec a			;79ec
	djnz $+16		;79ed
	dec hl			;79ef
	rst 0			;79f0
	jp (hl)			;79f1
	ld c,c			;79f2
	sbc a,c			;79f3
	nop			;79f4
	call po,0938fh		;79f5
	inc sp			;79f8
	add hl,sp		;79f9
	ld h,0c3h		;79fa
	jr nc,l7a20h		;79fc
	ld (0117fh),a		;79fe
	sbc a,c			;7a01
	ld hl,01992h		;7a02
	ld a,(bc)		;7a05
	cp e			;7a06
	or c			;7a07
	or c			;7a08
	ld (bc),a		;7a09
	call po,002bbh		;7a0a
	or b			;7a0d
	nop			;7a0e
	ld e,b			;7a0f
	ld e,b			;7a10
	sbc a,b			;7a11
	ld d,l			;7a12
	nop			;7a13
	inc bc			;7a14
	ld d,h			;7a15
	adc a,c			;7a16
l7a17h:
	add a,l			;7a17
	ld d,l			;7a18
	ld b,l			;7a19
	ld d,l			;7a1a
	inc b			;7a1b
	daa			;7a1c
	ld a,l			;7a1d
	ld b,h			;7a1e
	nop			;7a1f
l7a20h:
	add a,b			;7a20
	sbc a,b			;7a21
	sbc a,b			;7a22
	sub h			;7a23
	sbc a,a			;7a24
	inc b			;7a25
	ld c,c			;7a26
	ld a,l			;7a27
	ret nz			;7a28
	jr nz,l79c4h		;7a29
	ld a,b			;7a2b
	inc sp			;7a2c
	ld de,03100h		;7a2d
	call po,0227fh		;7a30
	jr nz,l7aaeh		;7a33
	jr nz,$+4		;7a35
	ld e,a			;7a37
	ld bc,00b7fh		;7a38
	ld d,l			;7a3b
	nop			;7a3c
	pop bc			;7a3d
	sub l			;7a3e
	nop			;7a3f
	ld c,a			;7a40
	inc b			;7a41
	ld e,c			;7a42
	ld d,b			;7a43
	adc a,h			;7a44
	ld (de),a		;7a45
	ld (02168h),hl		;7a46
	ld a,(hl)		;7a49
	jr nc,$+3		;7a4a
	ld de,052cfh		;7a4c
	ld a,a			;7a4f
	jp nz,0322ch		;7a50
	ld hl,0297fh		;7a53
	ret			;7a56
	inc (hl)		;7a57
	pop af			;7a58
	ld e,010h		;7a59
	ld (bc),a		;7a5b
	ld d,a			;7a5c
	ld bc,0e97fh		;7a5d
	sbc a,l			;7a60
	sub c			;7a61
	ld (0c47eh),hl		;7a62
	add a,a			;7a65
	add hl,hl		;7a66
	ld c,a			;7a67
	sbc a,c			;7a68
	add a,b			;7a69
	jp po,l7f51h		;7a6a
	cp 070h			;7a6d
	ld a,a			;7a6f
	or b			;7a70
	rst 0			;7a71
	nop			;7a72
	cp e			;7a73
	nop			;7a74
	dec l			;7a75
	or b			;7a76
	nop			;7a77
	defb 0fdh,07fh,02ah ;illegal sequence	;7a78
	ld (hl),h		;7a7b
	res 2,e			;7a7c
	ld a,(hl)		;7a7e
	xor c			;7a7f
	nop			;7a80
	add hl,hl		;7a81
	add a,b			;7a82
	cpl			;7a83
	adc a,b			;7a84
	djnz l7ac0h		;7a85
	ld bc,07f19h		;7a87
	ld h,b			;7a8a
	djnz l7a8dh		;7a8b
l7a8dh:
	inc sp			;7a8d
	inc sp			;7a8e
	dec sp			;7a8f
	ld b,h			;7a90
	inc sp			;7a91
	nop			;7a92
l7a93h:
	or e			;7a93
	jr nc,l7a17h		;7a94
	rst 10h			;7a96
	nop			;7a97
	ld a,a			;7a98
	jp nz,0f088h		;7a99
	nop			;7a9c
	ld d,d			;7a9d
	sbc a,b			;7a9e
l7a9fh:
	nop			;7a9f
	inc b			;7aa0
	adc a,c			;7aa1
	call m,01d3eh		;7aa2
	ld a,(hl)		;7aa5
	ld e,h			;7aa6
	add hl,de		;7aa7
	ld b,b			;7aa8
	ld a,(hl)		;7aa9
	daa			;7aaa
	ld hl,0f181h		;7aab
l7aaeh:
	ld de,0a792h		;7aae
	call nz,0ebffh		;7ab1
	nop			;7ab4
	nop			;7ab5
	ld h,00ch		;7ab6
	dec hl			;7ab8
	add hl,sp		;7ab9
	dec de			;7aba
	or d			;7abb
	jr nz,l7ac9h		;7abc
	ld a,a			;7abe
	ret p			;7abf
l7ac0h:
	ret m			;7ac0
	nop			;7ac1
	push bc			;7ac2
l7ac3h:
	cp 0f9h			;7ac3
	ccf			;7ac5
	rra			;7ac6
	ld a,(hl)		;7ac7
	inc b			;7ac8
l7ac9h:
	ld de,0fe03h		;7ac9
	ld c,h			;7acc
	ld de,09c0ah		;7acd
	ret nz			;7ad0
	xor c			;7ad1
	add hl,bc		;7ad2
	nop			;7ad3
	call m,sub_657bh	;7ad4
	nop			;7ad7
	inc hl			;7ad8
	ld (07004h),hl		;7ad9
	inc c			;7adc
l7addh:
	inc sp			;7add
	add a,000h		;7ade
	ld (07311h),a		;7ae0
	inc d			;7ae3
	ld a,(bc)		;7ae4
	ld b,a			;7ae5
	rst 38h			;7ae6
	jp z,08e98h		;7ae7
	rst 38h			;7aea
	jr z,l7b6ch		;7aeb
	rst 38h			;7aed
	ret m			;7aee
	ld hl,(03c7eh)		;7aef
	push bc			;7af2
	ld c,e			;7af3
	or a			;7af4
	ret z			;7af5
	cp 0e5h			;7af6
	ld de,0b67dh		;7af8
	add a,h			;7afb
	push af			;7afc
	or e			;7afd
	sub d			;7afe
	ld h,a			;7aff
	ld (hl),d		;7b00
	ld a,b			;7b01
	ld (hl),l		;7b02
	ld e,a			;7b03
	add hl,de		;7b04
	rst 38h			;7b05
	ld d,h			;7b06
	ret m			;7b07
	cp h			;7b08
	inc b			;7b09
	sbc a,0ffh		;7b0a
	ld c,a			;7b0c
	rst 38h			;7b0d
	ret z			;7b0e
	sub l			;7b0f
	sbc a,a			;7b10
l7b11h:
	rst 38h			;7b11
	sbc a,b			;7b12
	ld (de),a		;7b13
	inc hl			;7b14
	jp z,0377eh		;7b15
	or (hl)			;7b18
	ld d,d			;7b19
	cp 030h			;7b1a
	ld de,0a312h		;7b1c
	push de			;7b1f
	ld d,a			;7b20
l7b21h:
	ld d,000h		;7b21
	add a,h			;7b23
	cpl			;7b24
	ld de,0e8a1h		;7b25
	ret c			;7b28
	ld a,h			;7b29
	defb 0edh ;next byte illegal after ed	;7b2a
	and 009h		;7b2b
	or e			;7b2d
	add a,h			;7b2e
	ld b,c			;7b2f
	ld c,e			;7b30
	ld (0f43bh),a		;7b31
	ld bc,03012h		;7b34
	ld (de),a		;7b37
	or d			;7b38
	djnz $-107		;7b39
	add a,h			;7b3b
	add a,c			;7b3c
	adc a,c			;7b3d
	or e			;7b3e
	rst 38h			;7b3f
	pop af			;7b40
	ex (sp),hl		;7b41
	cpl			;7b42
	ld a,a			;7b43
	xor 08eh		;7b44
	defb 0fdh,013h,010h ;illegal sequence	;7b46
	ret nz			;7b49
	sbc a,d			;7b4a
	inc b			;7b4b
	nop			;7b4c
	sbc a,e			;7b4d
	ld a,b			;7b4e
	djnz l7bcfh		;7b4f
	ld a,l			;7b51
	ld d,a			;7b52
	add a,e			;7b53
	rst 8			;7b54
	ld (hl),e		;7b55
	ld c,a			;7b56
	ld h,h			;7b57
	ld (01800h),hl		;7b58
	adc a,b			;7b5b
	and a			;7b5c
	rst 38h			;7b5d
	xor h			;7b5e
	nop			;7b5f
	adc a,07fh		;7b60
	add hl,bc		;7b62
	and e			;7b63
	rst 38h			;7b64
	jp p,0efa9h		;7b65
	adc a,d			;7b68
	scf			;7b69
	add a,h			;7b6a
	ld c,l			;7b6b
l7b6ch:
	ld b,054h		;7b6c
	ld de,0c00dh		;7b6e
	cp b			;7b71
	add a,d			;7b72
	sub (hl)		;7b73
	add a,e			;7b74
	di			;7b75
	ld c,d			;7b76
	ret m			;7b77
	sub c			;7b78
	ld hl,08003h		;7b79
	and 032h		;7b7c
	sub h			;7b7e
	and a			;7b7f
	cp (hl)			;7b80
	ld sp,hl		;7b81
	halt			;7b82
	ld a,h			;7b83
	inc b			;7b84
	ld e,a			;7b85
	ld bc,0c9ffh		;7b86
	ld sp,hl		;7b89
	sbc a,d			;7b8a
	sub h			;7b8b
	adc a,0ffh		;7b8c
	inc l			;7b8e
	ld a,(hl)		;7b8f
	rst 38h			;7b90
	call p,0fc96h		;7b91
	ld h,(hl)		;7b94
	or 0a5h			;7b95
	or a			;7b97
	cp l			;7b98
	ret nc			;7b99
	sub l			;7b9a
	ret c			;7b9b
	sbc a,a			;7b9c
	ld b,(hl)		;7b9d
	ld de,0367fh		;7b9e
	ld a,l			;7ba1
	ld h,(hl)		;7ba2
	rra			;7ba3
	rst 30h			;7ba4
	and a			;7ba5
	nop			;7ba6
	sub e			;7ba7
	ld hl,03bffh		;7ba8
	ld b,(hl)		;7bab
	jr nz,$+1		;7bac
	ld c,h			;7bae
	inc b			;7baf
	ld (bc),a		;7bb0
l7bb1h:
	rst 38h			;7bb1
	jp c,0ff12h		;7bb2
	ld a,08bh		;7bb5
	cp 023h			;7bb7
l7bb9h:
	rst 38h			;7bb9
	rst 8			;7bba
	ld a,(hl)		;7bbb
	cp c			;7bbc
	add a,e			;7bbd
	call z,0515bh		;7bbe
	ld (08709h),a		;7bc1
	ld d,c			;7bc4
	add hl,bc		;7bc5
	ret z			;7bc6
	or d			;7bc7
	sub (hl)		;7bc8
	sbc a,a			;7bc9
	ld a,(hl)		;7bca
	dec de			;7bcb
	ld (08971h),a		;7bcc
l7bcfh:
	add a,c			;7bcf
	pop af			;7bd0
	sub h			;7bd1
	or b			;7bd2
	call nc,0f883h		;7bd3
	ld a,a			;7bd6
	dec h			;7bd7
	rst 38h			;7bd8
	pop af			;7bd9
	or 07eh			;7bda
	rst 28h			;7bdc
	or d			;7bdd
	add a,e			;7bde
	halt			;7bdf
	cp h			;7be0
	ret c			;7be1
	ld d,d			;7be2
	ld hl,0870ah		;7be3
	sub c			;7be6
	ld e,a			;7be7
	ld (de),a		;7be8
	jr nz,$-121		;7be9
	xor a			;7beb
	ld a,(de)		;7bec
	sub e			;7bed
l7beeh:
	inc l			;7bee
	and 078h		;7bef
	add a,c			;7bf1
	ld l,(hl)		;7bf2
	ld a,(hl)		;7bf3
	ex de,hl		;7bf4
	xor a			;7bf5
	ld h,c			;7bf6
	ld a,a			;7bf7
	inc sp			;7bf8
	ld sp,0ba31h		;7bf9
	ld d,c			;7bfc
	ld sp,0b630h		;7bfd
	add hl,de		;7c00
	inc b			;7c01
	inc sp			;7c02
	inc bc			;7c03
	ld a,(bc)		;7c04
	ld a,a			;7c05
	pop af			;7c06
	ret			;7c07
	sub c			;7c08
	inc hl			;7c09
	adc a,061h		;7c0a
	ld bc,02ecbh		;7c0c
	ld a,(bc)		;7c0f
	ld sp,l617fh		;7c10
	and c			;7c13
	adc a,c			;7c14
	ld hl,l548ch		;7c15
	add a,b			;7c18
	ld l,(hl)		;7c19
	rst 28h			;7c1a
	ld a,h			;7c1b
	ld de,039feh		;7c1c
	inc hl			;7c1f
l7c20h:
	daa			;7c20
	xor e			;7c21
	push hl			;7c22
	ld a,(hl)		;7c23
	sub l			;7c24
	djnz $-87		;7c25
	xor d			;7c27
	ld de,03fffh		;7c28
	ld a,(bc)		;7c2b
	rst 38h			;7c2c
	call m,sub_7ffch	;7c2d
	ld h,d			;7c30
	call pe,0cd96h		;7c31
	inc hl			;7c34
	cp 09ch			;7c35
	call p,08ba3h		;7c37
	adc a,h			;7c3a
	ld h,c			;7c3b
	sbc a,h			;7c3c
	add a,a			;7c3d
	ld b,(hl)		;7c3e
	ld (bc),a		;7c3f
	add a,b			;7c40
	ld d,e			;7c41
	add a,d			;7c42
	or b			;7c43
	sub d			;7c44
	inc hl			;7c45
	ld sp,0a0cah		;7c46
	xor c			;7c49
	ld e,d			;7c4a
	and (hl)		;7c4b
	add a,c			;7c4c
	ld l,l			;7c4d
	or b			;7c4e
	adc a,e			;7c4f
	xor b			;7c50
	sbc a,0ffh		;7c51
	ld (hl),a		;7c53
	ld h,a			;7c54
	ld c,0ffh		;7c55
	push de			;7c57
	rst 38h			;7c58
	ld a,049h		;7c59
	sub c			;7c5b
	defb 0fdh,05ah,0f4h ;illegal sequence	;7c5c
	ld e,c			;7c5f
	push bc			;7c60
	call z,0d97eh		;7c61
	dec b			;7c64
	adc a,e			;7c65
	ld h,(hl)		;7c66
	add a,a			;7c67
	ld (hl),d		;7c68
	add hl,de		;7c69
	ld h,e			;7c6a
	jr nz,l7c7dh		;7c6b
	add hl,hl		;7c6d
	ld a,(hl)		;7c6e
	adc a,0a9h		;7c6f
	sub (hl)		;7c71
	add a,d			;7c72
	jr z,l7c20h		;7c73
	push hl			;7c75
	ld bc,08bf2h		;7c76
	xor b			;7c79
	sbc a,e			;7c7a
	ld a,a			;7c7b
	push bc			;7c7c
l7c7dh:
	or h			;7c7d
	push hl			;7c7e
	ld (bc),a		;7c7f
	ret m			;7c80
	ld l,h			;7c81
	ld h,(hl)		;7c82
	dec b			;7c83
	ret z			;7c84
	dec l			;7c85
	rst 38h			;7c86
	ld a,(03d6eh)		;7c87
	pop af			;7c8a
	ld e,e			;7c8b
	rst 38h			;7c8c
	call c,079ffh		;7c8d
	ld sp,0c592h		;7c90
	adc a,e			;7c93
	ld l,e			;7c94
	ld c,h			;7c95
	xor c			;7c96
	add hl,sp		;7c97
	ld (de),a		;7c98
	adc a,e			;7c99
	ld c,l			;7c9a
	or d			;7c9b
	ld sp,0a783h		;7c9c
	rst 38h			;7c9f
	ld a,b			;7ca0
	xor e			;7ca1
	ret po			;7ca2
	ld de,0e391h		;7ca3
	ld hl,(09a9eh)		;7ca6
	ld h,(hl)		;7ca9
	sub b			;7caa
	xor c			;7cab
	ld c,l			;7cac
	ex de,hl		;7cad
	rst 38h			;7cae
	dec hl			;7caf
	call p,00228h		;7cb0
	or e			;7cb3
	inc bc			;7cb4
	inc b			;7cb5
	add hl,bc		;7cb6
	add a,h			;7cb7
	ld (0bbffh),hl		;7cb8
	push bc			;7cbb
	add a,d			;7cbc
	pop af			;7cbd
	ld h,l			;7cbe
	call m,0ffb1h		;7cbf
	ld l,h			;7cc2
	ld a,b			;7cc3
	ld a,a			;7cc4
	ld c,(hl)		;7cc5
	ex de,hl		;7cc6
	ld l,h			;7cc7
sub_7cc8h:
	ld d,e			;7cc8
	or a			;7cc9
	ld (hl),c		;7cca
	or h			;7ccb
	inc h			;7ccc
	bit 2,a			;7ccd
	push af			;7ccf
	sub l			;7cd0
	adc a,e			;7cd1
	jp c,09910h		;7cd2
	sub c			;7cd5
	add hl,hl		;7cd6
	add a,e			;7cd7
	adc a,06ah		;7cd8
	sub d			;7cda
	xor b			;7cdb
	sbc a,096h		;7cdc
	jp p,0e8deh		;7cde
	inc hl			;7ce1
	rst 38h			;7ce2
	ld (hl),h		;7ce3
	ld a,a			;7ce4
	inc sp			;7ce5
	inc bc			;7ce6
	ld d,e			;7ce7
	jr nc,l7cf4h		;7ce8
	inc bc			;7cea
	jr nc,l7cfch		;7ceb
	adc a,c			;7ced
	inc c			;7cee
	inc sp			;7cef
	rst 38h			;7cf0
	rra			;7cf1
	dec c			;7cf2
l7cf3h:
	ld (hl),c		;7cf3
l7cf4h:
	rst 38h			;7cf4
	rst 28h			;7cf5
	inc d			;7cf6
	jp nc,l7f71h		;7cf7
	adc a,0fch		;7cfa
l7cfch:
	xor (hl)		;7cfc
	defb 0fdh,0aah,011h ;illegal sequence	;7cfd
	add a,b			;7d00
	ld l,c			;7d01
	adc a,b			;7d02
	ret			;7d03
	ret po			;7d04
	in a,(0e9h)		;7d05
	adc a,084h		;7d07
	call nc,0fe39h		;7d09
	ld (hl),a		;7d0c
	push af			;7d0d
	ld e,01ch		;7d0e
	pop af			;7d10
	call z,sub_70a5h	;7d11
	jr nc,$-112		;7d14
	cp d			;7d16
	ld b,d			;7d17
	sbc a,c			;7d18
	cp e			;7d19
	dec bc			;7d1a
	or b			;7d1b
	ld (bc),a		;7d1c
	or e			;7d1d
	inc bc			;7d1e
	inc b			;7d1f
	add hl,bc		;7d20
	add a,h			;7d21
	cp e			;7d22
	rst 38h			;7d23
	ld a,h			;7d24
	ld a,07fh		;7d25
	inc sp			;7d27
	rst 38h			;7d28
	jp po,0ae91h		;7d29
	call z,0ba66h		;7d2c
	adc a,d			;7d2f
	jp z,l56c5h		;7d30
	cp h			;7d33
	daa			;7d34
	nop			;7d35
	ld c,(hl)		;7d36
	add hl,sp		;7d37
	ld (bc),a		;7d38
	rst 38h			;7d39
	add hl,de		;7d3a
	exx			;7d3b
	xor c			;7d3c
	call z,00338h		;7d3d
	rst 28h			;7d40
	adc a,b			;7d41
	adc a,a			;7d42
	cp 07ch			;7d43
	ld de,0f123h		;7d45
	add a,d			;7d48
	inc hl			;7d49
	nop			;7d4a
	add hl,bc		;7d4b
	rst 38h			;7d4c
	ccf			;7d4d
sub_7d4eh:
	ld e,d			;7d4e
	cp 079h			;7d4f
	and (hl)		;7d51
	jp p,00111h		;7d52
	rst 28h			;7d55
	ld b,l			;7d56
	or 03dh			;7d57
	ld b,a			;7d59
	rst 8			;7d5a
	ld de,0ab83h		;7d5b
	ld (de),a		;7d5e
	sub e			;7d5f
	cpl			;7d60
	ex de,hl		;7d61
	ld (de),a		;7d62
	jr nz,l7cf3h		;7d63
	sub (hl)		;7d65
	ld c,(hl)		;7d66
	add a,h			;7d67
	dec sp			;7d68
	di			;7d69
	ld a,h			;7d6a
	add a,l			;7d6b
	ld c,e			;7d6c
	xor d			;7d6d
	ld (hl),0adh		;7d6e
	ld h,h			;7d70
	scf			;7d71
	add hl,de		;7d72
	sbc a,a			;7d73
	rst 38h			;7d74
	jp nz,0ffa7h		;7d75
	adc a,(hl)		;7d78
	cp 079h			;7d79
	call 0bafdh		;7d7b
	or h			;7d7e
	add a,h			;7d7f
	xor b			;7d80
	add a,b			;7d81
	ret c			;7d82
	di			;7d83
	xor b			;7d84
	ret m			;7d85
	adc a,l			;7d86
	di			;7d87
	sub d			;7d88
	adc a,l			;7d89
	sub e			;7d8a
	or 082h			;7d8b
	ld c,d			;7d8d
	add hl,de		;7d8e
	inc d			;7d8f
	ld c,e			;7d90
	inc bc			;7d91
	add a,b			;7d92
	add a,h			;7d93
	adc a,c			;7d94
	ld l,a			;7d95
	rst 20h			;7d96
	call p,0eb11h		;7d97
	nop			;7d9a
	ld a,(bc)		;7d9b
	adc a,l			;7d9c
	rst 38h			;7d9d
	rst 0			;7d9e
	nop			;7d9f
	nop			;7da0
	sbc a,h			;7da1
	pop bc			;7da2
	and h			;7da3
	rst 38h			;7da4
	ld a,h			;7da5
	ld e,000h		;7da6
	ld a,07fh		;7da8
	cpl			;7daa
	inc hl			;7dab
	ld a,a			;7dac
	add hl,de		;7dad
l7daeh:
	add a,l			;7dae
	ret c			;7daf
	ret			;7db0
	xor a			;7db1
	push af			;7db2
	ld d,010h		;7db3
l7db5h:
	ld a,d			;7db5
	pop bc			;7db6
	ld d,e			;7db7
	adc a,(hl)		;7db8
	sub a			;7db9
	ld b,0dah		;7dba
	ld l,083h		;7dbc
	ld l,0f4h		;7dbe
	dec d			;7dc0
	add a,d			;7dc1
	pop hl			;7dc2
	rst 30h			;7dc3
l7dc4h:
	inc l			;7dc4
	jp nc,l7a9fh		;7dc5
	nop			;7dc8
	ret po			;7dc9
	ld a,a			;7dca
	ld de,0c1cdh		;7dcb
	adc a,b			;7dce
	or c			;7dcf
	ld sp,017cch		;7dd0
	call c,032c1h		;7dd3
	defb 0fdh,004h,01ch ;illegal sequence	;7dd6
	call c,00e11h		;7dd9
	rst 38h			;7ddc
	ld a,h			;7ddd
	ld a,000h		;7dde
	inc de			;7de0
	rst 38h			;7de1
	ld h,(hl)		;7de2
	add a,a			;7de3
	ld b,a			;7de4
	sub e			;7de5
sub_7de6h:
	inc c			;7de6
l7de7h:
	inc hl			;7de7
	jp 0fbeah		;7de8
	or d			;7deb
	ld l,d			;7dec
	sub h			;7ded
	add a,b			;7dee
	xor h			;7def
	adc a,c			;7df0
l7df1h:
	call nz,0da8bh		;7df1
	sub d			;7df4
	jp p,00047h		;7df5
	ld a,a			;7df8
	inc l			;7df9
	inc hl			;7dfa
	jp nc,086cch		;7dfb
	ld de,0ba03h		;7dfe
	ret po			;7e01
	sub c			;7e02
	rst 30h			;7e03
	ld a,c			;7e04
	cp (hl)			;7e05
	adc a,e			;7e06
	defb 0fdh,07fh,0e7h ;illegal sequence	;7e07
	rst 38h			;7e0a
	jp po,l554fh		;7e0b
	rst 38h			;7e0e
	pop bc			;7e0f
	cp 04ch			;7e10
	add a,0cdh		;7e12
	ld (07f09h),hl		;7e14
	ld (bc),a		;7e17
	inc hl			;7e18
	add a,b			;7e19
	ld e,c			;7e1a
	and l			;7e1b
	jp m,0d5ach		;7e1c
	ld h,d			;7e1f
	ld (bc),a		;7e20
	sub 04fh		;7e21
	add a,b			;7e23
	add hl,bc		;7e24
	ld (bc),a		;7e25
	add a,b			;7e26
	ld c,a			;7e27
	ld a,a			;7e28
	jr l7daeh		;7e29
	ld sp,hl		;7e2b
	dec l			;7e2c
	sub h			;7e2d
	ld h,l			;7e2e
	or 084h			;7e2f
	djnz l7db5h		;7e31
	ld sp,hl		;7e33
	ld l,a			;7e34
	rst 38h			;7e35
	ret			;7e36
	ld a,a			;7e37
	call c,sub_75ffh	;7e38
	pop de			;7e3b
	ld a,e			;7e3c
	call z,sub_622ch	;7e3d
	ld d,h			;7e40
	add hl,bc		;7e41
	add a,b			;7e42
	ld e,c			;7e43
	ld (hl),d		;7e44
	djnz $+120		;7e45
	ld (0199bh),a		;7e47
	jr nc,l7e54h		;7e4a
	inc d			;7e4c
	ld d,c			;7e4d
	ld a,a			;7e4e
	ld b,000h		;7e4f
	add hl,sp		;7e51
	adc a,b			;7e52
	rst 38h			;7e53
l7e54h:
	rla			;7e54
	ld a,(hl)		;7e55
l7e56h:
	and h			;7e56
	rst 38h			;7e57
	ld a,h			;7e58
	jr c,l7edah		;7e59
	ld e,b			;7e5b
	ld a,055h		;7e5c
	ld e,b			;7e5e
	ld a,a			;7e5f
	ld l,b			;7e60
	rst 38h			;7e61
	jp pe,091feh		;7e62
	jr nz,l7e56h		;7e65
	jr l7e7bh		;7e67
	ld l,e			;7e69
	ld de,039ddh		;7e6a
	ld a,h			;7e6d
	add a,b			;7e6e
	add hl,sp		;7e6f
	adc a,e			;7e70
	ld h,085h		;7e71
	xor 093h		;7e73
	and e			;7e75
l7e76h:
	nop			;7e76
	ld a,a			;7e77
	add a,h			;7e78
	nop			;7e79
	add a,b			;7e7a
l7e7bh:
	rst 28h			;7e7b
	ld a,a			;7e7c
	rst 0			;7e7d
	nop			;7e7e
	jp pe,0f700h		;7e7f
	nop			;7e82
	jp (hl)			;7e83
	ld a,a			;7e84
	adc a,b			;7e85
	rst 38h			;7e86
	adc a,093h		;7e87
	rst 38h			;7e89
	defb 0edh,071h ;out (c),0	;7e8a
	ld e,d			;7e8c
	ld a,(hl)		;7e8d
	jp p,0c2c4h		;7e8e
	ld (hl),c		;7e91
l7e92h:
	add a,b			;7e92
	dec hl			;7e93
	ld (bc),a		;7e94
	adc a,b			;7e95
	add hl,de		;7e96
	exx			;7e97
	jp c,0da93h		;7e98
	add a,b			;7e9b
	ld l,a			;7e9c
	ld b,03fh		;7e9d
	ld a,(hl)		;7e9f
	ld (bc),a		;7ea0
	rst 38h			;7ea1
	ld a,082h		;7ea2
	ld b,h			;7ea4
	ld b,l			;7ea5
	rst 38h			;7ea6
	ld a,0aah		;7ea7
	ld e,h			;7ea9
	xor d			;7eaa
	push de			;7eab
	ld (0d47fh),hl		;7eac
	add a,b			;7eaf
	sub e			;7eb0
	ld a,h			;7eb1
	ld (bc),a		;7eb2
	jp z,021e4h		;7eb3
	ret po			;7eb6
	di			;7eb7
	call nz,01ac9h		;7eb8
	or e			;7ebb
	ld (08632h),hl		;7ebc
	cp 018h			;7ebf
	rst 38h			;7ec1
	call m,sub_6e9dh	;7ec2
	jp m,0127fh		;7ec5
	sub c			;7ec8
	ret p			;7ec9
	add hl,de		;7eca
	adc a,b			;7ecb
	add a,b			;7ecc
	ld h,h			;7ecd
	cp a			;7ece
	adc a,e			;7ecf
	adc a,l			;7ed0
	ld l,h			;7ed1
	jp m,012d4h		;7ed2
l7ed5h:
	add hl,de		;7ed5
	sub d			;7ed6
l7ed7h:
	add a,b			;7ed7
	push bc			;7ed8
	sub d			;7ed9
l7edah:
	and (hl)		;7eda
	sub c			;7edb
	xor (hl)		;7edc
	ld a,a			;7edd
	add hl,hl		;7ede
	ld (01191h),hl		;7edf
	add hl,hl		;7ee2
	rst 38h			;7ee3
	jp m,l7fffh		;7ee4
	ld h,b			;7ee7
	sub d			;7ee8
	ld sp,0a508h		;7ee9
	ld a,a			;7eec
	cp 03bh			;7eed
	ld a,a			;7eef
	sbc a,d			;7ef0
	add a,b			;7ef1
	add a,b			;7ef2
	sub l			;7ef3
	sbc a,c			;7ef4
l7ef5h:
	add a,b			;7ef5
	inc l			;7ef6
	ld h,l			;7ef7
	ld a,a			;7ef8
	ld a,b			;7ef9
	adc a,e			;7efa
	ld e,d			;7efb
	jr nz,$-116		;7efc
	add a,c			;7efe
l7effh:
	adc a,c			;7eff
l7f00h:
	or e			;7f00
	ld a,b			;7f01
	jp (hl)			;7f02
	xor e			;7f03
	jp 03290h		;7f04
	jp z,0a993h		;7f07
	dec h			;7f0a
	ld (bc),a		;7f0b
	ld a,a			;7f0c
	ret m			;7f0d
	dec de			;7f0e
	ld b,043h		;7f0f
	inc sp			;7f11
	djnz l7f35h		;7f12
	ld c,027h		;7f14
	jp (ix)			;7f16
	ld a,(029f1h)		;7f18
	ld hl,0e47fh		;7f1b
	jp c,0deffh		;7f1e
	ld c,d			;7f21
	ld l,c			;7f22
	add a,b			;7f23
	ld l,e			;7f24
	ld b,0ceh		;7f25
	push de			;7f27
	sub b			;7f28
	inc d			;7f29
	add a,l			;7f2a
	add a,h			;7f2b
	add a,c			;7f2c
	sbc a,h			;7f2d
	ld a,a			;7f2e
l7f2fh:
	ld (08033h),hl		;7f2f
	sub a			;7f32
sub_7f33h:
	add a,b			;7f33
l7f34h:
	and c			;7f34
l7f35h:
	ld (0cc86h),a		;7f35
	ex (sp),hl		;7f38
	ld a,a			;7f39
	dec bc			;7f3a
l7f3bh:
	ld a,a			;7f3b
sub_7f3ch:
	ld b,(hl)		;7f3c
	ld (020b2h),hl		;7f3d
	ld a,a			;7f40
	and a			;7f41
	or b			;7f42
	ld c,b			;7f43
	ld d,h			;7f44
	rst 20h			;7f45
	add a,a			;7f46
	ld e,b			;7f47
sub_7f48h:
	sub h			;7f48
l7f49h:
	rst 28h			;7f49
l7f4ah:
	or e			;7f4a
	ret m			;7f4b
	ex de,hl		;7f4c
	rst 38h			;7f4d
sub_7f4eh:
	inc de			;7f4e
	ld d,h			;7f4f
	dec b			;7f50
l7f51h:
	dec a			;7f51
	djnz l7f85h		;7f52
	ld a,a			;7f54
	nop			;7f55
	cp 023h			;7f56
l7f58h:
	ld (de),a		;7f58
	out (0dch),a		;7f59
	ld l,c			;7f5b
	add a,b			;7f5c
	ld l,c			;7f5d
	ld a,a			;7f5e
	inc c			;7f5f
	ld hl,02cd0h		;7f60
	or a			;7f63
	inc hl			;7f64
	add a,l			;7f65
sub_7f66h:
	ld a,b			;7f66
	ld a,a			;7f67
	adc a,c			;7f68
	add a,b			;7f69
sub_7f6ah:
	ld (bc),a		;7f6a
	ld a,(hl)		;7f6b
l7f6ch:
	di			;7f6c
	ld sp,08e93h		;7f6d
	sub a			;7f70
l7f71h:
	sbc a,c			;7f71
	ld a,a			;7f72
	ld (hl),c		;7f73
	rst 38h			;7f74
	sub 07fh		;7f75
l7f77h:
	ld c,d			;7f77
	rst 20h			;7f78
l7f79h:
	ld h,e			;7f79
	add a,c			;7f7a
	add hl,de		;7f7b
	nop			;7f7c
	ret m			;7f7d
l7f7eh:
	set 5,(hl)		;7f7e
	inc h			;7f80
	ld sp,hl		;7f81
	or c			;7f82
l7f83h:
	djnz l7f6ch		;7f83
l7f85h:
	ld l,a			;7f85
	ld l,(hl)		;7f86
	or h			;7f87
	ld a,(hl)		;7f88
sub_7f89h:
	rst 28h			;7f89
sub_7f8ah:
	ld b,a			;7f8a
	defb 0fdh,054h ;ld d,iyh	;7f8b
	add a,b			;7f8d
	xor d			;7f8e
l7f8fh:
	ld sp,01e80h		;7f8f
	ld de,0127fh		;7f92
	rst 38h			;7f95
sub_7f96h:
	ld b,(hl)		;7f96
	ret m			;7f97
	ld c,a			;7f98
l7f99h:
	inc b			;7f99
	inc hl			;7f9a
	add a,h			;7f9b
	push de			;7f9c
l7f9dh:
	jr nc,$-125		;7f9d
	dec a			;7f9f
	ld d,d			;7fa0
	xor a			;7fa1
	adc a,b			;7fa2
	inc sp			;7fa3
	rst 38h			;7fa4
	ld sp,hl		;7fa5
	ld d,c			;7fa6
	sbc a,b			;7fa7
l7fa8h:
	rst 38h			;7fa8
	rst 30h			;7fa9
	ld d,(hl)		;7faa
	call po,0de72h		;7fab
	ld e,a			;7fae
l7fafh:
	ex af,af'		;7faf
	push de			;7fb0
	defb 0ddh,080h,06eh ;illegal sequence	;7fb1
	ld c,04eh		;7fb4
	add a,b			;7fb6
	add a,0d6h		;7fb7
	jr c,l7fddh		;7fb9
	add a,(hl)		;7fbb
	add a,07fh		;7fbc
	ld (bc),a		;7fbe
	adc a,e			;7fbf
	ld e,(hl)		;7fc0
	ret nc			;7fc1
l7fc2h:
	add a,l			;7fc2
	inc sp			;7fc3
l7fc4h:
	ld (bc),a		;7fc4
	rst 38h			;7fc5
	dec a			;7fc6
l7fc7h:
	rst 18h			;7fc7
	ld a,a			;7fc8
l7fc9h:
	and a			;7fc9
	ret pe			;7fca
	dec d			;7fcb
sub_7fcch:
	ld a,a			;7fcc
	and 044h		;7fcd
l7fcfh:
	ld l,c			;7fcf
	sub c			;7fd0
	defb 0edh ;next byte illegal after ed	;7fd1
	ld a,a			;7fd2
	sub d			;7fd3
	adc a,c			;7fd4
	ret m			;7fd5
	add hl,de		;7fd6
l7fd7h:
	jp (hl)			;7fd7
	ld a,a			;7fd8
l7fd9h:
	sbc a,c			;7fd9
	add a,(hl)		;7fda
	set 1,(hl)		;7fdb
l7fddh:
	dec hl			;7fdd
l7fdeh:
	defb 0ddh,047h,0cdh ;illegal sequence	;7fde
	ld h,h			;7fe1
	add a,b			;7fe2
	cp l			;7fe3
sub_7fe4h:
	sbc a,(hl)		;7fe4
	ld a,a			;7fe5
sub_7fe6h:
	ld d,d			;7fe6
	rst 38h			;7fe7
	jp po,0ab94h		;7fe8
l7febh:
	rst 30h			;7feb
	ld a,a			;7fec
	cp b			;7fed
	nop			;7fee
	ld d,h			;7fef
	ld d,l			;7ff0
	or e			;7ff1
	ld hl,00e10h		;7ff2
	cp (hl)			;7ff5
	djnz $+119		;7ff6
	ld a,a			;7ff8
l7ff9h:
	nop			;7ff9
sub_7ffah:
	xor 024h		;7ffa
sub_7ffch:
	ret pe			;7ffc
	ld c,a			;7ffd
	sub c			;7ffe
l7fffh:
	ld e,e			;7fff
