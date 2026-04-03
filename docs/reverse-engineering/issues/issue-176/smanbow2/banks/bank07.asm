; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank07.asm /tmp/smanbow2_bank_07.bin

	org 04000h

	dec h			;4000
	pop bc			;4001
	adc a,a			;4002
	add a,b			;4003
	nop			;4004
	dec b			;4005
	ld d,(hl)		;4006
	ld (hl),a		;4007
	cp e			;4008
	ld b,(hl)		;4009
	ld h,h			;400a
	push hl			;400b
	call m,0d27fh		;400c
	jr l4066h		;400f
	pop af			;4011
	ret pe			;4012
	ld a,a			;4013
	ld (hl),a		;4014
	ld (hl),l		;4015
	ld b,(hl)		;4016
	dec l			;4017
	xor h			;4018
	ret z			;4019
	call p,01c16h		;401a
	ld l,c			;401d
	ld (de),a		;401e
	add hl,hl		;401f
	ld a,d			;4020
	ld de,09949h		;4021
	add a,(hl)		;4024
	call z,0e680h		;4025
	adc a,e			;4028
	ret po			;4029
	sub a			;402a
	cp e			;402b
	ld h,b			;402c
	rst 18h			;402d
	rst 38h			;402e
	cp l			;402f
	add hl,bc		;4030
	ld a,a			;4031
	ret c			;4032
	ld (01191h),hl		;4033
	cp d			;4036
	pop bc			;4037
	ld c,e			;4038
	ld (hl),d		;4039
	ld d,l			;403a
	ld a,a			;403b
	ld b,(hl)		;403c
	ld a,(bc)		;403d
	ld h,a			;403e
	ld a,e			;403f
	ld (hl),l		;4040
	ld d,b			;4041
	ld h,l			;4042
	jp nz,l7fb7h		;4043
	call po,sub_4548h	;4046
	defb 0fdh,076h,046h ;illegal sequence	;4049
	ld h,c			;404c
	add a,b			;404d
	ld (hl),050h		;404e
	inc l			;4050
	dec bc			;4051
	dec c			;4052
	ld h,(hl)		;4053
	ld h,c			;4054
	or c			;4055
	ld (de),a		;4056
	ld a,b			;4057
	ld d,e			;4058
	ld b,h			;4059
	cp 053h			;405a
	adc a,a			;405c
	ld b,(hl)		;405d
	adc a,b			;405e
	ld sp,l7f92h		;405f
	or (hl)			;4062
	rst 38h			;4063
	rst 18h			;4064
	adc a,(hl)		;4065
l4066h:
	ld (bc),a		;4066
	ld e,h			;4067
	add hl,hl		;4068
	ld a,a			;4069
	ret nz			;406a
	rlca			;406b
	ld (hl),l		;406c
	ld b,l			;406d
	ld a,e			;406e
	ld d,b			;406f
	ld a,a			;4070
	inc de			;4071
	rst 38h			;4072
	jr nc,$+121		;4073
	ld a,a			;4075
	ld hl,l75bbh		;4076
	ld (0453fh),hl		;4079
	push hl			;407c
	xor h			;407d
	inc e			;407e
l407fh:
	ld b,d			;407f
	ld a,a			;4080
	rla			;4081
	ld (hl),l		;4082
	ld h,l			;4083
	jp p,0e3abh		;4084
	jp po,028b3h		;4087
	add a,b			;408a
	jp l6177h		;408b
	ei			;408e
	ei			;408f
	adc a,(hl)		;4090
	add a,(hl)		;4091
	ld e,c			;4092
	ld c,c			;4093
	adc a,b			;4094
	and e			;4095
	sub (hl)		;4096
	ld (hl),a		;4097
	halt			;4098
	ld a,a			;4099
	and 0efh		;409a
	jp nc,0f029h		;409c
	push hl			;409f
	ld b,d			;40a0
	xor (hl)		;40a1
	dec d			;40a2
	adc a,001h		;40a3
	ld d,l			;40a5
	inc h			;40a6
	ld d,d			;40a7
	ld h,a			;40a8
	push af			;40a9
	add hl,de		;40aa
	ld c,082h		;40ab
	ld b,h			;40ad
	ld d,(hl)		;40ae
	ld h,a			;40af
	rst 38h			;40b0
	ld c,c			;40b1
	ld a,a			;40b2
	ld (hl),a		;40b3
	ld a,a			;40b4
	di			;40b5
	and d			;40b6
	ld d,(hl)		;40b7
	ei			;40b8
	jr z,l412dh		;40b9
	add hl,hl		;40bb
	ld (0b584h),a		;40bc
	dec c			;40bf
	sub l			;40c0
	adc a,c			;40c1
	ld h,h			;40c2
	add a,b			;40c3
	ld c,d			;40c4
	ld (hl),d		;40c5
	xor 03ch		;40c6
	ld e,a			;40c8
	and e			;40c9
	rst 38h			;40ca
	ld h,h			;40cb
	ld a,a			;40cc
	ld h,(hl)		;40cd
	nop			;40ce
	ld h,b			;40cf
	cp a			;40d0
	rst 38h			;40d1
	sub (hl)		;40d2
	rst 38h			;40d3
	ld a,l			;40d4
	call z,sub_7456h	;40d5
	jp nz,l52c3h		;40d8
	ld d,d			;40db
	halt			;40dc
	ld (de),a		;40dd
	ld d,b			;40de
	call p,002abh		;40df
	defb 0ddh,04ch ;ld c,ixh	;40e2
	jp nc,08922h		;40e4
	ld c,e			;40e7
	ld de,l5effh		;40e8
	jr nc,l4168h		;40eb
	ld l,0fdh		;40ed
	ld b,b			;40ef
	ld h,c			;40f0
	rla			;40f1
	ld d,d			;40f2
	ld l,(hl)		;40f3
	add hl,hl		;40f4
	call pe,sub_7133h	;40f5
	add a,d			;40f8
	sub h			;40f9
	sbc a,c			;40fa
	add a,d			;40fb
	xor d			;40fc
	ld e,c			;40fd
	add a,c			;40fe
	ld e,h			;40ff
	ld c,c			;4100
	ld b,l			;4101
	sbc a,c			;4102
	rst 38h			;4103
	ld d,e			;4104
	ld e,c			;4105
	ld d,l			;4106
	ld a,a			;4107
	adc a,(hl)		;4108
	rst 38h			;4109
	ret m			;410a
	ld a,a			;410b
	ret nc			;410c
	jp nc,0f9c3h		;410d
	call nz,011b9h		;4110
	ld (hl),a		;4113
	dec d			;4114
	ld h,a			;4115
	jr c,$+104		;4116
	ld d,b			;4118
	call p,sub_7e29h	;4119
	sub (hl)		;411c
	rst 8			;411d
	adc a,h			;411e
	inc h			;411f
	inc bc			;4120
	adc a,e			;4121
	adc a,c			;4122
	ld a,a			;4123
	sbc a,(hl)		;4124
	add a,d			;4125
	jp p,0abaeh		;4126
	ld (hl),0efh		;4129
	ld (de),a		;412b
	rla			;412c
l412dh:
	ld d,l			;412d
	add hl,hl		;412e
	and 01bh		;412f
	ld d,l			;4131
	or a			;4132
	dec c			;4133
	add a,(hl)		;4134
	ld b,d			;4135
	add hl,de		;4136
	adc a,c			;4137
	ld hl,l6b16h		;4138
	or l			;413b
	defb 0fdh,01eh,033h ;illegal sequence	;413c
	ld a,b			;413f
	sub d			;4140
	add a,a			;4141
	sub l			;4142
	ld d,h			;4143
	sbc a,d			;4144
	add a,l			;4145
	add a,0d3h		;4146
	pop af			;4148
	pop af			;4149
	ei			;414a
	ld a,a			;414b
	and (hl)		;414c
	ld (bc),a		;414d
	jp z,01226h		;414e
	add hl,de		;4151
	call z,0b288h		;4152
	ld a,e			;4155
	dec d			;4156
	ld c,d			;4157
	nop			;4158
	call p,sub_540ch	;4159
	ld b,l			;415c
	ld (l4300h),hl		;415d
	ld b,d			;4160
	ld (bc),a		;4161
	ld d,d			;4162
	ld (bc),a		;4163
	jr nz,l4191h		;4164
	xor a			;4166
	ld a,a			;4167
l4168h:
	add a,b			;4168
	ld h,c			;4169
	dec d			;416a
	add a,(hl)		;416b
	ld h,092h		;416c
	ld d,d			;416e
	ld (hl),a		;416f
	dec c			;4170
	ex af,af'		;4171
	ld d,a			;4172
	cp e			;4173
	cp e			;4174
	cp d			;4175
	adc a,d			;4176
	sbc a,c			;4177
	ld h,c			;4178
	cp (hl)			;4179
	and l			;417a
	add a,b			;417b
	call nz,sub_5744h	;417c
	jr c,$+107		;417f
	add hl,hl		;4181
	add a,a			;4182
	ld d,c			;4183
	sub a			;4184
	call 07c49h		;4185
	ld a,a			;4188
	daa			;4189
	sub b			;418a
	sub b			;418b
	rst 8			;418c
	ld a,e			;418d
	and l			;418e
	dec b			;418f
	jp (hl)			;4190
l4191h:
	ld c,011h		;4191
	add hl,hl		;4193
	cp c			;4194
	ld c,h			;4195
	add a,088h		;4196
	ld b,b			;4198
	nop			;4199
	ld a,(bc)		;419a
	daa			;419b
	or a			;419c
	sub h			;419d
	ld a,a			;419e
	ld de,l7e00h		;419f
	sub d			;41a2
	sub l			;41a3
	add a,c			;41a4
	rst 20h			;41a5
	or d			;41a6
	ld l,02fh		;41a7
	call po,0c89dh		;41a9
	call c,sub_5521h	;41ac
	inc c			;41af
	ld h,d			;41b0
	ld d,h			;41b1
	sub l			;41b2
	ld d,a			;41b3
	ld a,a			;41b4
	inc l			;41b5
	dec h			;41b6
l41b7h:
	dec de			;41b7
	ei			;41b8
	ld b,c			;41b9
	ld d,a			;41ba
	ld a,e			;41bb
	sub (hl)		;41bc
	ld d,c			;41bd
	ld h,a			;41be
	ld (hl),h		;41bf
	ld d,h			;41c0
	jp po,02246h		;41c1
	ld a,c			;41c4
	ld b,d			;41c5
	cp 04dh			;41c6
	sub (hl)		;41c8
	call 0f48ch		;41c9
	adc a,d			;41cc
	out (080h),a		;41cd
	call pe,0f500h		;41cf
	ld a,(hl)		;41d2
	ld h,d			;41d3
	sbc a,c			;41d4
	ld a,(hl)		;41d5
	ld d,a			;41d6
	ld a,a			;41d7
	cp c			;41d8
	call m,08012h		;41d9
	ld e,c			;41dc
	ld l,a			;41dd
	cp b			;41de
	rst 8			;41df
	ex af,af'		;41e0
	sub (hl)		;41e1
	ld a,e			;41e2
	ld d,d			;41e3
	ld a,l			;41e4
	dec de			;41e5
	or a			;41e6
	or b			;41e7
	ld a,l			;41e8
	jp nz,0d7c1h		;41e9
	ld d,b			;41ec
	or l			;41ed
	ld a,(hl)		;41ee
	jp po,05055h		;41ef
	dec b			;41f2
	sub 061h		;41f3
	ld d,c			;41f5
	add hl,de		;41f6
	ld d,(hl)		;41f7
	di			;41f8
	ld h,h			;41f9
	and 096h		;41fa
	halt			;41fc
	ei			;41fd
	nop			;41fe
	ld d,c			;41ff
	or c			;4200
	dec hl			;4201
	ld (de),a		;4202
	sub c			;4203
	or c			;4204
	xor l			;4205
l4206h:
	sub d			;4206
	sub c			;4207
	dec h			;4208
	dec l			;4209
	ld d,h			;420a
sub_420bh:
	ret po			;420b
	ld b,h			;420c
	ld (l4669h),hl		;420d
	rst 8			;4210
	ld d,e			;4211
	ld b,h			;4212
	inc hl			;4213
	add a,c			;4214
	dec l			;4215
	ld d,(hl)		;4216
	rst 38h			;4217
	rst 28h			;4218
sub_4219h:
	ld c,d			;4219
	ld (bc),a		;421a
	ex de,hl		;421b
	and e			;421c
	ld hl,l757fh		;421d
	sub c			;4220
	rst 8			;4221
	add hl,hl		;4222
	inc sp			;4223
	sub c			;4224
	ret p			;4225
	dec h			;4226
	ld e,(hl)		;4227
	cp d			;4228
	push af			;4229
	sbc a,041h		;422a
	ld a,e			;422c
	or a			;422d
	sbc a,c			;422e
	ld hl,0f9c4h		;422f
	adc a,h			;4232
	ld d,a			;4233
	cpl			;4234
	cp l			;4235
	and c			;4236
	inc d			;4237
	ld d,(hl)		;4238
	nop			;4239
	dec d			;423a
	sub c			;423b
	inc h			;423c
	halt			;423d
	cp 004h			;423e
	ld (hl),l		;4240
	sbc a,c			;4241
	ld d,(hl)		;4242
	ld b,h			;4243
l4244h:
	adc a,h			;4244
	adc a,c			;4245
l4246h:
	or a			;4246
	ex de,hl		;4247
	dec hl			;4248
	ld a,(0912dh)		;4249
	inc sp			;424c
	add a,d			;424d
	ld e,e			;424e
	xor h			;424f
	rst 38h			;4250
	ld d,b			;4251
	ld b,l			;4252
	pop de			;4253
l4254h:
	ld (hl),l		;4254
	cp d			;4255
	adc a,b			;4256
	rst 0			;4257
	jp p,0defch		;4258
	call z,08400h		;425b
	ld a,d			;425e
	ld (de),a		;425f
	ld de,03c19h		;4260
	ld (hl),a		;4263
	ld (02517h),hl		;4264
	rst 38h			;4267
	jr nz,l42bch		;4268
	sbc a,c			;426a
	inc c			;426b
l426ch:
	nop			;426c
	inc h			;426d
	ld d,(hl)		;426e
	ld h,l			;426f
	ld d,d			;4270
	ld b,d			;4271
	ld c,000h		;4272
	add hl,hl		;4274
	djnz l4206h		;4275
	ld b,07bh		;4277
sub_4279h:
	jr nz,l42b6h		;4279
	ld a,(hl)		;427b
	sbc a,c			;427c
	jr nz,l42fch		;427d
	ld l,e			;427f
	or a			;4280
	ld d,h			;4281
	ld h,a			;4282
	ret nc			;4283
	and c			;4284
	sub l			;4285
	ld h,a			;4286
	sub b			;4287
	push af			;4288
	ld h,(hl)		;4289
	ld h,h			;428a
	ld a,(hl)		;428b
	ld d,l			;428c
	ret p			;428d
	ld c,h			;428e
	ld b,h			;428f
	ld (hl),a		;4290
	ld b,d			;4291
	add hl,sp		;4292
	ld h,(hl)		;4293
	dec de			;4294
	cp 00dh			;4295
	sub h			;4297
	ld e,c			;4298
	add a,d			;4299
	ld h,h			;429a
	sub h			;429b
	halt			;429c
	ex af,af'		;429d
	sbc a,c			;429e
	sub a			;429f
	ld c,c			;42a0
	sub l			;42a1
	xor d			;42a2
	sub h			;42a3
	ld h,a			;42a4
	rst 38h			;42a5
	pop af			;42a6
	ld a,d			;42a7
	dec c			;42a8
	ld (bc),a		;42a9
	daa			;42aa
	ld (hl),a		;42ab
	ld de,02592h		;42ac
	rst 28h			;42af
	ld (hl),d		;42b0
	defb 0edh ;next byte illegal after ed	;42b1
	ld l,l			;42b2
	or c			;42b3
	pop bc			;42b4
	sub c			;42b5
l42b6h:
	ld a,e			;42b6
	ld (hl),c		;42b7
	adc a,a			;42b8
	jr nz,l426ch		;42b9
	ld d,l			;42bb
l42bch:
	ld d,d			;42bc
	jp z,0907fh		;42bd
	inc d			;42c0
	sub l			;42c1
	inc d			;42c2
	add a,(hl)		;42c3
	adc a,a			;42c4
	or d			;42c5
	ld a,h			;42c6
	dec a			;42c7
	xor l			;42c8
	ld e,h			;42c9
	ld a,a			;42ca
	ld c,b			;42cb
	ld h,a			;42cc
	sbc a,h			;42cd
	ld h,l			;42ce
	ld h,c			;42cf
	ld d,(hl)		;42d0
	ld a,a			;42d1
	ld e,c			;42d2
	sub l			;42d3
	adc a,c			;42d4
	jr z,l432bh		;42d5
	ld a,(de)		;42d7
	sub a			;42d8
	ld b,h			;42d9
	ld b,h			;42da
	ld a,a			;42db
	ld (01654h),hl		;42dc
	add a,d			;42df
	ld (hl),l		;42e0
	or h			;42e1
	jp m,0562fh		;42e2
	ld l,c			;42e5
	add a,e			;42e6
	and b			;42e7
	sub (hl)		;42e8
	sbc a,c			;42e9
	ld e,c			;42ea
	ld b,l			;42eb
	rst 8			;42ec
	rra			;42ed
	ld a,(hl)		;42ee
	add a,(hl)		;42ef
	rst 38h			;42f0
	dec a			;42f1
	ld c,c			;42f2
	rla			;42f3
	or a			;42f4
	ld a,d			;42f5
	add hl,hl		;42f6
	ex de,hl		;42f7
	ld (hl),0b0h		;42f8
	xor 080h		;42fa
l42fch:
	inc de			;42fc
	ret z			;42fd
	ld (hl),0b1h		;42fe
l4300h:
	jp c,08f9dh		;4300
	and (hl)		;4303
	ld a,d			;4304
	jp m,l7fc8h		;4305
	add a,a			;4308
	sub (hl)		;4309
	ld (hl),d		;430a
	xor c			;430b
	ex de,hl		;430c
	add a,d			;430d
	ld d,07fh		;430e
	ld c,d			;4310
	sbc a,h			;4311
	ld (de),a		;4312
	ld d,h			;4313
	ld b,(hl)		;4314
	add a,b			;4315
	dec l			;4316
	ld h,l			;4317
	ret po			;4318
	ld hl,0455fh		;4319
	sub l			;431c
	ld (hl),l		;431d
	rst 38h			;431e
	call nz,0192fh		;431f
	ld h,094h		;4322
	ld h,(hl)		;4324
	add a,b			;4325
	ld (01571h),hl		;4326
	rst 30h			;4329
	add hl,sp		;432a
l432bh:
	ld b,l			;432b
	halt			;432c
	dec l			;432d
	call nz,02781h		;432e
	ld d,h			;4331
	sub h			;4332
	xor d			;4333
	dec l			;4334
	defb 0fdh,0edh,0c2h ;illegal sequence	;4335
	ld a,a			;4338
	ld (hl),c		;4339
	ld de,l48f6h		;433a
	add a,b			;433d
	cp c			;433e
	xor (hl)		;433f
	scf			;4340
	ld (hl),a		;4341
	ld a,a			;4342
	add hl,bc		;4343
	ld b,h			;4344
	ld b,d			;4345
	ld b,022h		;4346
	rst 18h			;4348
	sbc a,h			;4349
	ld a,d			;434a
	jp po,08645h		;434b
	cp 01eh			;434e
	ld e,c			;4350
	ld a,(hl)		;4351
	inc a			;4352
	jr z,l43bbh		;4353
	ld (hl),e		;4355
	ld a,(hl)		;4356
	ld h,(hl)		;4357
	ld b,d			;4358
	rst 0			;4359
	ld a,c			;435a
	ld h,l			;435b
	ret m			;435c
	sub c			;435d
	ret po			;435e
	sbc a,h			;435f
	cp 018h			;4360
	ld d,a			;4362
	ld a,c			;4363
	add hl,hl		;4364
	dec d			;4365
	ld h,(hl)		;4366
	sub d			;4367
	add a,d			;4368
	ld d,d			;4369
	add a,(hl)		;436a
	inc a			;436b
	sbc a,c			;436c
	and (iy-07dh)		;436d
	sbc a,b			;4370
	ld l,c			;4371
	sub h			;4372
	rra			;4373
	ld h,l			;4374
	ld b,l			;4375
	ld a,a			;4376
	rla			;4377
	rrca			;4378
	or h			;4379
	jp pe,l4962h		;437a
	ret z			;437d
	rst 28h			;437e
	xor a			;437f
	ret z			;4380
	rst 30h			;4381
	sub h			;4382
	ld d,d			;4383
	ld bc,0d7ffh		;4384
	sub 05eh		;4387
	ret m			;4389
	ld e,l			;438a
	adc a,c			;438b
	ret nc			;438c
	ei			;438d
	add a,b			;438e
	ld c,c			;438f
	rst 10h			;4390
	call c,081c7h		;4391
	sub c			;4394
	add hl,bc		;4395
	ld h,l			;4396
	sub 058h		;4397
	ld h,l			;4399
	or d			;439a
	rst 10h			;439b
	xor h			;439c
	ld l,l			;439d
	ld a,a			;439e
	ld b,d			;439f
	ld d,h			;43a0
	dec bc			;43a1
	ld h,h			;43a2
	ld e,c			;43a3
	sub a			;43a4
	jr $-32			;43a5
	ld a,a			;43a7
	add a,l			;43a8
	pop bc			;43a9
	ld h,(hl)		;43aa
	sub c			;43ab
	add hl,de		;43ac
	ld a,a			;43ad
	inc a			;43ae
	ld b,(hl)		;43af
	cpl			;43b0
	ld l,d			;43b1
	ld a,a			;43b2
	rra			;43b3
	rst 38h			;43b4
	cp (hl)			;43b5
	call p,06392h		;43b6
	ld e,c			;43b9
	or e			;43ba
l43bbh:
	jp (hl)			;43bb
	ld l,e			;43bc
	ld h,l			;43bd
	add a,(hl)		;43be
	ld (08679h),a		;43bf
	adc a,e			;43c2
	rlca			;43c3
	call 021f5h		;43c4
	rrca			;43c7
	ld l,c			;43c8
	pop bc			;43c9
	sub a			;43ca
	inc a			;43cb
	ld c,e			;43cc
	cp l			;43cd
	xor b			;43ce
	ld d,h			;43cf
	ld d,h			;43d0
	ld h,l			;43d1
	adc a,d			;43d2
	xor d			;43d3
	ld d,(hl)		;43d4
	ld d,d			;43d5
	ld d,(hl)		;43d6
	inc b			;43d7
	ld a,h			;43d8
	ld h,l			;43d9
	ld bc,0858ah		;43da
	ret p			;43dd
	sub e			;43de
	add a,c			;43df
	adc a,d			;43e0
	ld a,a			;43e1
	call pe,0ffa9h		;43e2
	rra			;43e5
	ld h,l			;43e6
	add a,b			;43e7
	xor l			;43e8
	ld b,h			;43e9
	add a,(hl)		;43ea
	ld (hl),b		;43eb
	sub c			;43ec
	adc a,d			;43ed
	ld d,l			;43ee
	nop			;43ef
	ld (hl),h		;43f0
	inc c			;43f1
	xor c			;43f2
	rst 18h			;43f3
	add a,a			;43f4
	adc a,e			;43f5
	nop			;43f6
	sbc a,d			;43f7
	ret m			;43f8
	dec h			;43f9
	ld a,h			;43fa
	dec h			;43fb
	call pe,0eb65h		;43fc
	sbc a,b			;43ff
	ld (hl),l		;4400
	sub c			;4401
	rst 0			;4402
l4403h:
	rrca			;4403
	add hl,hl		;4404
	rrca			;4405
	ld (hl),c		;4406
	adc a,(hl)		;4407
sub_4408h:
	cp a			;4408
	ld l,002h		;4409
	ld d,(hl)		;440b
	push af			;440c
	ld l,000h		;440d
	ld d,(hl)		;440f
	ld b,h			;4410
	sbc a,0c3h		;4411
	ld h,(hl)		;4413
	jp po,0932ch		;4414
	ld c,l			;4417
	sub b			;4418
	inc b			;4419
	ld d,l			;441a
	sub h			;441b
	ld b,c			;441c
	add a,b			;441d
	adc a,e			;441e
	inc d			;441f
	sub b			;4420
	jr c,l4446h		;4421
l4423h:
	jp pe,084cdh		;4423
	exx			;4426
	ld (l6547h),hl		;4427
	and a			;442a
	rst 30h			;442b
	rst 28h			;442c
	sub a			;442d
	nop			;442e
	rst 0			;442f
	ld (de),a		;4430
	inc hl			;4431
	rst 38h			;4432
sub_4433h:
	add hl,hl		;4433
	ld l,d			;4434
	jp nz,0d136h		;4435
	xor 0c2h		;4438
	sbc a,l			;443a
	add hl,hl		;443b
	rrca			;443c
	push bc			;443d
	cp 0f3h			;443e
	inc l			;4440
	ld a,d			;4441
	nop			;4442
	cpl			;4443
	ld d,l			;4444
	add a,b			;4445
l4446h:
	ld d,h			;4446
	halt			;4447
	add a,d			;4448
	sub a			;4449
l444ah:
	ld sp,hl		;444a
	ld c,d			;444b
	defb 0ddh,024h ;inc ixh	;444c
	ld (hl),a		;444e
	jp po,00789h		;444f
	ld e,c			;4452
	ld d,c			;4453
	adc a,l			;4454
	xor (hl)		;4455
	add a,(hl)		;4456
l4457h:
	sub b			;4457
	or b			;4458
l4459h:
	ld h,c			;4459
	ld d,067h		;445a
	ld d,h			;445c
	cp 048h			;445d
	add hl,hl		;445f
	add a,b			;4460
	jp pe,0cea0h		;4461
	add a,b			;4464
	jr l4468h		;4465
	inc (hl)		;4467
l4468h:
	ld bc,002d6h		;4468
	djnz l446fh		;446b
	cp h			;446d
	ld a,(bc)		;446e
l446fh:
	ld c,e			;446f
	pop af			;4470
	ei			;4471
	ld (hl),a		;4472
	ld a,a			;4473
	cp a			;4474
	add hl,bc		;4475
	cp (hl)			;4476
	xor d			;4477
	rst 30h			;4478
	sbc a,e			;4479
	cp 07fh			;447a
	cp a			;447c
	rrca			;447d
	ld h,090h		;447e
	inc hl			;4480
	inc a			;4481
	jr nz,$+53		;4482
	exx			;4484
	ld b,l			;4485
	ld a,(hl)		;4486
	ld a,a			;4487
	ret nz			;4488
	ld h,l			;4489
	ld d,a			;448a
	ld b,h			;448b
	push de			;448c
	ld a,a			;448d
	ld h,h			;448e
	add a,c			;448f
	ld bc,09154h		;4490
	ld d,d			;4493
	ld d,l			;4494
	cp (hl)			;4495
	and d			;4496
	ld b,c			;4497
	add a,b			;4498
	call z,0af96h		;4499
	cp 09ch			;449c
	call m,0864dh		;449e
	ld h,h			;44a1
	ld b,l			;44a2
	ld h,a			;44a3
l44a4h:
	rst 10h			;44a4
	ld a,a			;44a5
	and b			;44a6
	ld a,h			;44a7
	ld (hl),h		;44a8
	ld (bc),a		;44a9
	jp z,l547ah		;44aa
	ld h,d			;44ad
	call p,0f092h		;44ae
	xor c			;44b1
	add hl,hl		;44b2
	ld b,b			;44b3
	sub d			;44b4
	rst 30h			;44b5
	ld (hl),085h		;44b6
	inc d			;44b8
	adc a,(hl)		;44b9
	cp c			;44ba
	ld (bc),a		;44bb
	add a,(hl)		;44bc
	xor c			;44bd
	rrca			;44be
	pop hl			;44bf
	dec e			;44c0
	ld l,a			;44c1
	inc h			;44c2
	inc (hl)		;44c3
	sub h			;44c4
	cp 0b3h			;44c5
	ld a,a			;44c7
	ld d,(hl)		;44c8
	in a,(04dh)		;44c9
	cp 084h			;44cb
	ld l,c			;44cd
	adc a,d			;44ce
	ld c,b			;44cf
	ld b,l			;44d0
	ld (hl),049h		;44d1
	ld (de),a		;44d3
	sub b			;44d4
	dec e			;44d5
	sub d			;44d6
	ld b,(hl)		;44d7
	ld de,08494h		;44d8
	ld b,l			;44db
	ld b,l			;44dc
	ret m			;44dd
	ld (hl),c		;44de
	sub c			;44df
	ld h,(hl)		;44e0
	add a,e			;44e1
	ld (hl),b		;44e2
	ld b,h			;44e3
	ld b,a			;44e4
	sub l			;44e5
	ld a,a			;44e6
	ld a,(bc)		;44e7
	and b			;44e8
	ld a,a			;44e9
	ld (hl),e		;44ea
	dec b			;44eb
	jr nz,l456dh		;44ec
	adc a,0e1h		;44ee
	ld d,e			;44f0
	ex (sp),hl		;44f1
	sub d			;44f2
	ld sp,hl		;44f3
	or c			;44f4
	ld hl,l5ce4h		;44f5
	ld b,(hl)		;44f8
	defb 0edh ;next byte illegal after ed	;44f9
	ld l,h			;44fa
	ld l,a			;44fb
	pop af			;44fc
	call po,0aff5h		;44fd
l4500h:
	rrca			;4500
	add a,l			;4501
	adc a,e			;4502
	dec d			;4503
	ld b,027h		;4504
	sbc a,c			;4506
	call nz,sub_78ffh	;4507
	or b			;450a
	ld d,(hl)		;450b
	ld (hl),l		;450c
	ld h,a			;450d
	ld h,a			;450e
	sub l			;450f
	ld a,b			;4510
	ld d,l			;4511
l4512h:
	add a,a			;4512
	sbc a,b			;4513
	cp 098h			;4514
	ld c,065h		;4516
	ld h,049h		;4518
	dec d			;451a
	ld sp,hl		;451b
	ld l,d			;451c
	sub h			;451d
	add a,b			;451e
	ld c,b			;451f
sub_4520h:
	sbc a,d			;4520
	ld b,(hl)		;4521
	cp (hl)			;4522
	call m,sub_499bh	;4523
	xor l			;4526
	exx			;4527
	ld h,l			;4528
	inc bc			;4529
	inc (hl)		;452a
	cp l			;452b
	ld a,a			;452c
	ld b,a			;452d
	rst 38h			;452e
	sub d			;452f
	ld (bc),a		;4530
	ret po			;4531
	add a,e			;4532
	ld a,e			;4533
	cp e			;4534
	call po,06332h		;4535
	call c,09ebch		;4538
	xor (hl)		;453b
	ld c,095h		;453c
	ld (0227bh),hl		;453e
	ld sp,hl		;4541
	cp h			;4542
	ld (hl),d		;4543
	rrca			;4544
	ld l,e			;4545
	sbc a,(hl)		;4546
	ld e,c			;4547
sub_4548h:
	ld de,02ceah		;4548
	or a			;454b
	adc a,h			;454c
	sbc a,(hl)		;454d
	add a,h			;454e
	rst 20h			;454f
	call p,08027h		;4550
	ld (hl),b		;4553
	ld a,b			;4554
	ld h,d			;4555
	ld b,(hl)		;4556
	adc a,h			;4557
	add a,b			;4558
	ld h,d			;4559
	ld d,h			;455a
	inc c			;455b
	ld h,h			;455c
	jp m,l44a4h		;455d
	xor a			;4560
	ld h,b			;4561
	ld d,069h		;4562
	ld b,c			;4564
	inc hl			;4565
	ld h,c			;4566
	ld d,(hl)		;4567
	or h			;4568
	sbc a,e			;4569
	add a,a			;456a
	ld e,c			;456b
	adc a,b			;456c
l456dh:
	jp po,0a79ah		;456d
	and c			;4570
	ld a,a			;4571
	and h			;4572
	cp 0f8h			;4573
	jr c,l457ch		;4575
	pop af			;4577
	call m,026b7h		;4578
	ld (hl),d		;457b
l457ch:
	ld h,d			;457c
	ld l,l			;457d
	ld hl,098e4h		;457e
	call po,0b2b3h		;4581
	ld e,d			;4584
	defb 0edh ;next byte illegal after ed	;4585
	push hl			;4586
	ld a,a			;4587
	ld b,b			;4588
	cp 049h			;4589
	ld (hl),a		;458b
	sbc a,c			;458c
	rrca			;458d
	sbc a,b			;458e
	dec (hl)		;458f
	adc a,h			;4590
	inc hl			;4591
	ld h,0a1h		;4592
	ld l,h			;4594
	ld hl,(l713bh)		;4595
	ld d,b			;4598
	ld a,a			;4599
	push de			;459a
	call nc,00099h		;459b
	ld d,l			;459e
	in a,(02ch)		;459f
sub_45a1h:
	ld d,h			;45a1
	sbc a,0d1h		;45a2
	add a,b			;45a4
	inc h			;45a5
	add a,(hl)		;45a6
	dec h			;45a7
	adc a,d			;45a8
	and d			;45a9
	inc d			;45aa
	ld l,a			;45ab
	ld d,042h		;45ac
	inc h			;45ae
	ld h,(hl)		;45af
	sbc a,e			;45b0
	ld d,l			;45b1
	ld a,a			;45b2
	or l			;45b3
	ld d,(hl)		;45b4
	call m,094b9h		;45b5
	ld a,a			;45b8
	jp p,013a1h		;45b9
	ld l,l			;45bc
	ld a,(bc)		;45bd
	ld (hl),d		;45be
	or 011h			;45bf
	ld sp,hl		;45c1
	rst 8			;45c2
	ld a,a			;45c3
	adc a,d			;45c4
	daa			;45c5
	ld d,d			;45c6
	ld c,c			;45c7
	or a			;45c8
	rst 10h			;45c9
	or a			;45ca
	ld d,h			;45cb
	ld h,c			;45cc
	ld hl,0859ch		;45cd
	adc a,b			;45d0
	call pe,06546h		;45d1
	exx			;45d4
	call 08849h		;45d5
	cp h			;45d8
	ld h,l			;45d9
	ld bc,01bfeh		;45da
	ex af,af'		;45dd
	rrca			;45de
	inc d			;45df
	add hl,hl		;45e0
	inc h			;45e1
	adc a,l			;45e2
l45e3h:
	sbc a,h			;45e3
	adc a,l			;45e4
	sub d			;45e5
	xor d			;45e6
	add a,l			;45e7
	cp e			;45e8
	ld (hl),d		;45e9
	rst 38h			;45ea
	ld a,b			;45eb
	ld (hl),b		;45ec
	nop			;45ed
	ld d,h			;45ee
	ld d,d			;45ef
	dec h			;45f0
	add a,b			;45f1
	ld hl,(02a69h)		;45f2
	ld a,a			;45f5
	adc a,d			;45f6
	push af			;45f7
	ld c,c			;45f8
	ld h,04dh		;45f9
	call pe,0a893h		;45fb
	dec d			;45fe
	jr c,l4658h		;45ff
	ld h,a			;4601
	pop bc			;4602
	ld l,e			;4603
	ld e,c			;4604
	cp 049h			;4605
	sub h			;4607
	add a,a			;4608
	ld b,c			;4609
	ld d,a			;460a
	ld l,c			;460b
	nop			;460c
	ld (hl),d		;460d
	adc a,07fh		;460e
	xor c			;4610
	and b			;4611
	dec b			;4612
sub_4613h:
	adc a,l			;4613
	ex (sp),hl		;4614
	ld a,a			;4615
	sbc a,l			;4616
	rst 30h			;4617
	ld c,h			;4618
	call pe,02c4ah		;4619
	rst 18h			;461c
	ld c,c			;461d
	rst 20h			;461e
	ld c,(hl)		;461f
	ret			;4620
	ld b,h			;4621
	ld e,c			;4622
	rst 28h			;4623
	ld d,d			;4624
	add a,b			;4625
	xor d			;4626
	add hl,hl		;4627
	ld (hl),b		;4628
	cp 092h			;4629
	or 093h			;462b
	dec bc			;462d
	dec h			;462e
	dec b			;462f
	inc h			;4630
	add hl,de		;4631
	dec h			;4632
	cp e			;4633
	adc a,(hl)		;4634
	ld a,b			;4635
	ld a,a			;4636
	ld b,(hl)		;4637
	out (027h),a		;4638
	ld d,(hl)		;463a
	call m,04111h		;463b
	ei			;463e
	ld (hl),h		;463f
	defb 0ddh,052h,093h ;illegal sequence	;4640
	xor c			;4643
	adc a,(hl)		;4644
	add hl,hl		;4645
	adc a,a			;4646
	call z,sub_4bf2h	;4647
	add hl,hl		;464a
	or (hl)			;464b
	ld c,d			;464c
	rst 38h			;464d
	ld c,e			;464e
	add a,d			;464f
	adc a,b			;4650
	ld d,0b7h		;4651
	cp h			;4653
	and e			;4654
	jp m,l4457h		;4655
l4658h:
	adc a,c			;4658
	ret			;4659
	ld a,c			;465a
	nop			;465b
l465ch:
	ld (hl),d		;465c
	inc hl			;465d
	jr nc,l45e3h		;465e
	inc hl			;4660
	ld sp,hl		;4661
	inc d			;4662
	and b			;4663
	ld a,a			;4664
	inc c			;4665
	ld bc,l46e9h		;4666
l4669h:
	ld hl,099efh		;4669
	xor 03ah		;466c
	dec h			;466e
	sbc a,07fh		;466f
	xor d			;4671
	ld b,b			;4672
	ld h,a			;4673
	cp e			;4674
	ld l,c			;4675
	ld d,(hl)		;4676
	call z,0126fh		;4677
	and d			;467a
	adc a,a			;467b
	ld a,l			;467c
	xor h			;467d
	sub h			;467e
l467fh:
	sub c			;467f
l4680h:
	ld b,l			;4680
	ld hl,0968fh		;4681
	ld a,a			;4684
	sub l			;4685
	and l			;4686
	dec c			;4687
	adc a,c			;4688
	cp e			;4689
	jr c,l465ch		;468a
	ld h,b			;468c
sub_468dh:
	dec b			;468d
	ld d,l			;468e
	cp d			;468f
	pop af			;4690
sub_4691h:
	ld (bc),a		;4691
	ld c,d			;4692
	or a			;4693
	jp p,l522fh		;4694
	or 014h			;4697
sub_4699h:
	dec d			;4699
	adc a,(hl)		;469a
	or a			;469b
	or 059h			;469c
	cpl			;469e
	xor h			;469f
	sub (hl)		;46a0
	add a,c			;46a1
	ld h,d			;46a2
	ld a,a			;46a3
	ld h,(hl)		;46a4
	ret c			;46a5
	dec h			;46a6
	ld (03681h),hl		;46a7
	ld c,c			;46aa
	adc a,h			;46ab
	ld b,069h		;46ac
	ld a,(bc)		;46ae
	ld a,a			;46af
	ld c,d			;46b0
	and b			;46b1
	add a,e			;46b2
	ld b,(hl)		;46b3
	add a,(hl)		;46b4
	ex (sp),hl		;46b5
	dec b			;46b6
	and b			;46b7
	ld b,(hl)		;46b8
	and a			;46b9
	sub l			;46ba
	call pe,sub_5bd4h	;46bb
	or l			;46be
	and 06bh		;46bf
	ex af,af'		;46c1
	daa			;46c2
	ld (de),a		;46c3
	or d			;46c4
	and a			;46c5
	and b			;46c6
	ld a,a			;46c7
	ld a,c			;46c8
	ld h,(hl)		;46c9
	add hl,hl		;46ca
	ld d,d			;46cb
	in a,(07fh)		;46cc
	rrca			;46ce
	adc a,c			;46cf
	ld (hl),d		;46d0
	sbc a,h			;46d1
	pop de			;46d2
	sub d			;46d3
	sbc a,h			;46d4
	ld d,(hl)		;46d5
	ld a,a			;46d6
	or e			;46d7
	dec h			;46d8
	ret nc			;46d9
	adc a,h			;46da
	ret po			;46db
	sbc a,l			;46dc
	ld e,c			;46dd
	jr c,l4730h		;46de
	add a,a			;46e0
	ld b,h			;46e1
	add a,c			;46e2
	nop			;46e3
	ld d,c			;46e4
	ld d,077h		;46e5
	ld a,c			;46e7
	ld c,c			;46e8
l46e9h:
	and d			;46e9
	adc a,c			;46ea
	sbc a,e			;46eb
	ld sp,04551h		;46ec
	add a,e			;46ef
	or a			;46f0
	add a,d			;46f1
	add hl,de		;46f2
	xor (hl)		;46f3
	sub a			;46f4
	add a,b			;46f5
	ld c,b			;46f6
	add a,c			;46f7
	ld d,048h		;46f8
	ld d,l			;46fa
	add a,c			;46fb
	ld de,l6779h		;46fc
	sbc a,h			;46ff
	defb 0edh ;next byte illegal after ed	;4700
	sbc a,(hl)		;4701
	inc (hl)		;4702
	adc a,b			;4703
	ld (hl),003h		;4704
	ld a,b			;4706
	or 051h			;4707
	ld a,(bc)		;4709
	ld b,024h		;470a
	and e			;470c
l470dh:
	add a,d			;470d
	ld (hl),h		;470e
	and e			;470f
	ld b,l			;4710
	add hl,bc		;4711
	sub h			;4712
	jp pe,04552h		;4713
	ld l,h			;4716
	or e			;4717
	add hl,sp		;4718
	ld (hl),d		;4719
	add a,c			;471a
	ld d,h			;471b
	ld de,l5db9h		;471c
	pop de			;471f
	ret z			;4720
	add a,h			;4721
	push bc			;4722
	and (hl)		;4723
	rst 38h			;4724
	sub e			;4725
	cp 092h			;4726
	ret nz			;4728
	sub (hl)		;4729
	ld e,d			;472a
l472bh:
	ld a,a			;472b
	ld (hl),d		;472c
	add a,a			;472d
	ld b,l			;472e
	and c			;472f
l4730h:
	dec bc			;4730
	ld h,e			;4731
	dec c			;4732
	ld d,h			;4733
	ld l,035h		;4734
	adc a,b			;4736
	and l			;4737
	ld b,b			;4738
	cp c			;4739
	jp po,0e821h		;473a
	ld d,d			;473d
	ld h,l			;473e
	xor c			;473f
	dec e			;4740
	ld a,a			;4741
	add a,00dh		;4742
	inc d			;4744
	ld d,l			;4745
	add a,c			;4746
	or l			;4747
	cp c			;4748
	jr nc,l477ah		;4749
	ld b,h			;474b
	ld (l6744h),hl		;474c
	adc a,e			;474f
	ld h,l			;4750
	dec c			;4751
	ld de,01756h		;4752
	ld (hl),l		;4755
	rst 38h			;4756
l4757h:
	ld h,(hl)		;4757
	add a,e			;4758
	sbc a,b			;4759
	ld (hl),h		;475a
	sub b			;475b
	ld a,a			;475c
	and b			;475d
	adc a,006h		;475e
	dec b			;4760
	inc sp			;4761
	rst 30h			;4762
	sbc a,c			;4763
	and d			;4764
	set 6,(hl)		;4765
	ld h,d			;4767
	di			;4768
	ld sp,hl		;4769
	dec l			;476a
	ld de,0c624h		;476b
	ld hl,(09281h)		;476e
	rst 28h			;4771
	di			;4772
	ld c,b			;4773
	add a,0b9h		;4774
	or c			;4776
	dec e			;4777
	sub d			;4778
	rst 38h			;4779
l477ah:
	and l			;477a
	sub d			;477b
	ld (de),a		;477c
	adc a,(hl)		;477d
	dec l			;477e
	sub e			;477f
	ld e,c			;4780
	ld c,090h		;4781
	ld d,a			;4783
	ret c			;4784
	and l			;4785
	rrca			;4786
	ld a,a			;4787
	jp z,03e04h		;4788
	inc h			;478b
	ld hl,08016h		;478c
	inc e			;478f
	ld h,a			;4790
	ld (hl),l		;4791
	ld (l62f6h),hl		;4792
	jp nz,0e94eh		;4795
	ld d,c			;4798
	ld sp,hl		;4799
	cpl			;479a
	xor d			;479b
	sub h			;479c
	add a,b			;479d
	ld c,h			;479e
	djnz l472bh		;479f
	add a,b			;47a1
	jp z,0d929h		;47a2
	call z,0e380h		;47a5
	ld a,a			;47a8
	ret po			;47a9
	sbc a,e			;47aa
	ld (bc),a		;47ab
	ld a,(bc)		;47ac
	ld a,(hl)		;47ad
	or l			;47ae
	inc d			;47af
	jr nz,l47d6h		;47b0
	ld c,(hl)		;47b2
	ld (hl),a		;47b3
	rst 30h			;47b4
	or a			;47b5
	ld b,d			;47b6
	ld e,(hl)		;47b7
	add a,b			;47b8
	ld sp,l4459h		;47b9
	ld e,c			;47bc
	add a,b			;47bd
	cp 05bh			;47be
	ld (hl),h		;47c0
	ld c,(hl)		;47c1
	cp 062h			;47c2
	ld a,a			;47c4
	ld hl,l6e7fh		;47c5
	add hl,hl		;47c8
	rrca			;47c9
	ld a,a			;47ca
	call 082e8h		;47cb
	add a,a			;47ce
	sbc a,d			;47cf
	ld h,l			;47d0
	add a,d			;47d1
	jr l4757h		;47d2
	push bc			;47d4
	ld a,a			;47d5
l47d6h:
	add a,b			;47d6
	dec h			;47d7
	ret pe			;47d8
	sub d			;47d9
	and 089h		;47da
	ld e,c			;47dc
	cp 0bch			;47dd
	xor 08dh		;47df
	sbc a,l			;47e1
	push de			;47e2
	ld hl,(07f21h)		;47e3
	rlca			;47e6
	ld d,065h		;47e7
	ld b,c			;47e9
	rla			;47ea
	add a,l			;47eb
	out (09bh),a		;47ec
	dec (hl)		;47ee
	ld (hl),l		;47ef
	push bc			;47f0
	scf			;47f1
	add a,c			;47f2
	and a			;47f3
	nop			;47f4
	ld a,a			;47f5
	ld e,b			;47f6
	ld a,h			;47f7
	nop			;47f8
	ld d,(hl)		;47f9
	and e			;47fa
	dec b			;47fb
	adc a,h			;47fc
	push bc			;47fd
	dec l			;47fe
	ld a,a			;47ff
	adc a,e			;4800
	sub d			;4801
	xor c			;4802
	and e			;4803
	ei			;4804
	adc a,c			;4805
	rst 38h			;4806
	ld h,d			;4807
	ld c,0e2h		;4808
	call nz,0e6efh		;480a
	sbc a,c			;480d
	ld a,a			;480e
	and (hl)		;480f
	sbc a,c			;4810
	jp pe,0f2a5h		;4811
	sub h			;4814
	and c			;4815
	adc a,h			;4816
	call nz,0d39bh		;4817
	add a,c			;481a
	ret m			;481b
	or d			;481c
	ld l,b			;481d
	ld hl,0b57fh		;481e
	ld h,a			;4821
	cp d			;4822
	or (hl)			;4823
	dec h			;4824
	ex de,hl		;4825
	pop hl			;4826
	ld h,a			;4827
	ld h,h			;4828
	add hl,hl		;4829
	ld l,(hl)		;482a
	add a,e			;482b
	ld c,d			;482c
	cp l			;482d
	ld b,l			;482e
	sbc a,b			;482f
	cpl			;4830
	pop bc			;4831
	ld b,d			;4832
	ld b,h			;4833
	add a,l			;4834
	inc d			;4835
	add a,08ah		;4836
	ld d,082h		;4838
	jp 04276h		;483a
	defb 0edh ;next byte illegal after ed	;483d
	cp h			;483e
	ld de,0f104h		;483f
	sbc a,b			;4842
	ld a,a			;4843
	and b			;4844
	ret c			;4845
	ld a,a			;4846
	add a,l			;4847
	call z,sub_588dh	;4848
	xor a			;484b
	add a,021h		;484c
	ld a,a			;484e
	jr z,$+83		;484f
	cp h			;4851
	sbc a,0efh		;4852
	ld d,(hl)		;4854
	ld (045dch),hl		;4855
	rst 0			;4858
	and a			;4859
	defb 0fdh,061h ;ld iyh,c	;485a
	ld a,a			;485c
	sub d			;485d
	dec d			;485e
	or 09ch			;485f
	ld (hl),l		;4861
	ld b,b			;4862
	add a,d			;4863
	add a,(hl)		;4864
	sbc a,h			;4865
	ld h,d			;4866
	ld (hl),l		;4867
	and 0a4h		;4868
	add hl,hl		;486a
	and l			;486b
	xor l			;486c
	add hl,sp		;486d
	rst 38h			;486e
	inc a			;486f
	ld h,l			;4870
	ld a,a			;4871
	ld a,(hl)		;4872
	add a,c			;4873
	jr nc,l48e8h		;4874
	ld (l4914h),hl		;4876
	ld d,(hl)		;4879
	ld l,d			;487a
	ld d,d			;487b
	call z,0bb0eh		;487c
	ld (de),a		;487f
	cpl			;4880
	sub c			;4881
	ld b,d			;4882
	xor b			;4883
	ld (0fe16h),hl		;4884
	sbc a,b			;4887
	add a,c			;4888
	ld h,a			;4889
	ld (0ffc6h),hl		;488a
	cp c			;488d
	ld a,a			;488e
	ld b,a			;488f
	and b			;4890
	rst 38h			;4891
	ld (hl),089h		;4892
	or e			;4894
	call m,022cah		;4895
	ld c,e			;4898
	or l			;4899
	out (06eh),a		;489a
	ld d,d			;489c
	inc hl			;489d
	add a,b			;489e
	xor l			;489f
	call c,sub_6cdch	;48a0
	or e			;48a3
	sub l			;48a4
	ld a,a			;48a5
	ld a,b			;48a6
	sbc a,a			;48a7
	ret nz			;48a8
	ld h,(hl)		;48a9
	dec de			;48aa
	and c			;48ab
	call nc,0fa27h		;48ac
	jr c,l48d8h		;48af
l48b1h:
	cp l			;48b1
	xor e			;48b2
	ld c,a			;48b3
	rla			;48b4
	ld a,(de)		;48b5
	sub d			;48b6
	adc a,d			;48b7
	ld h,l			;48b8
	ld (bc),a		;48b9
	ld b,d			;48ba
	ld c,c			;48bb
	ld h,a			;48bc
l48bdh:
	ld d,c			;48bd
	ld h,a			;48be
	ld hl,066fch		;48bf
	sbc a,d			;48c2
	adc a,l			;48c3
	ld h,d			;48c4
	sbc a,(hl)		;48c5
	srl (hl)		;48c6
	ret p			;48c8
	jp c,08191h		;48c9
	ld b,l			;48cc
	sub h			;48cd
	dec h			;48ce
	add a,c			;48cf
	dec h			;48d0
	add a,b			;48d1
	inc sp			;48d2
	defb 0edh ;next byte illegal after ed	;48d3
	call m,0f746h		;48d4
	ld (hl),h		;48d7
l48d8h:
	ld a,a			;48d8
	nop			;48d9
	jp pe,0e57fh		;48da
	ld d,c			;48dd
	ld hl,049fbh		;48de
	ld (l6fd4h),hl		;48e1
	ld hl,l41b7h		;48e4
	add a,b			;48e7
l48e8h:
	ld a,b			;48e8
	inc c			;48e9
	ld (hl),l		;48ea
	ld hl,00f7fh		;48eb
	call c,09bffh		;48ee
	ld hl,(01c89h)		;48f1
	ld d,h			;48f4
	inc h			;48f5
l48f6h:
	adc a,a			;48f6
	adc a,a			;48f7
	jr nz,l48b1h		;48f8
	rst 28h			;48fa
	add a,(hl)		;48fb
	sub c			;48fc
	ld de,03204h		;48fd
	ld b,(hl)		;4900
	xor 03ch		;4901
	ld (hl),d		;4903
	rla			;4904
	adc a,e			;4905
	and 0c0h		;4906
	ld a,b			;4908
	cpl			;4909
	ld l,d			;490a
	ld b,d			;490b
	sub c			;490c
	sbc a,(hl)		;490d
	ld h,c			;490e
	ld (de),a		;490f
	ld a,a			;4910
	inc sp			;4911
	pop af			;4912
	pop bc			;4913
l4914h:
	and e			;4914
	and b			;4915
	ld sp,hl		;4916
	inc a			;4917
sub_4918h:
	sub d			;4918
	jr nc,l48bdh		;4919
	cp h			;491b
	sub a			;491c
	ld (hl),b		;491d
	jp nc,l7165h		;491e
	and d			;4921
	call 0ba4eh		;4922
	ld c,(hl)		;4925
	rst 38h			;4926
	rst 30h			;4927
	ld a,a			;4928
l4929h:
	xor 03bh		;4929
	cp l			;492b
	ld c,e			;492c
	add a,(hl)		;492d
	dec l			;492e
	ret z			;492f
	ld c,(hl)		;4930
	rla			;4931
	sbc a,h			;4932
	rst 20h			;4933
	and (hl)		;4934
	ld (hl),l		;4935
	ld (de),a		;4936
	ld c,078h		;4937
	ld a,a			;4939
	ld e,d			;493a
	add a,c			;493b
	ld a,(bc)		;493c
	ld (de),a		;493d
	sub l			;493e
	ld b,l			;493f
	ex de,hl		;4940
	or b			;4941
	ld a,a			;4942
	ld (hl),c		;4943
l4944h:
	ld (de),a		;4944
	jp p,0c82fh		;4945
	ld a,a			;4948
	rst 38h			;4949
	sub (hl)		;494a
	ld (hl),d		;494b
	add a,b			;494c
	jp c,07f90h		;494d
	jr $+4			;4950
sub_4952h:
	nop			;4952
	jr nz,$+1		;4953
	sbc a,b			;4955
	ld a,a			;4956
	and b			;4957
	ret			;4958
	ld a,a			;4959
	inc c			;495a
	nop			;495b
	ld h,c			;495c
	ld h,l			;495d
	ld c,c			;495e
	rst 30h			;495f
	and l			;4960
	and e			;4961
l4962h:
	ld (hl),e		;4962
	ex (sp),hl		;4963
	ret			;4964
	ret nz			;4965
	ld e,c			;4966
	add a,05ch		;4967
	and 000h		;4969
	adc a,e			;496b
	call po,0f1fdh		;496c
	add a,a			;496f
	cp c			;4970
	sub b			;4971
	inc e			;4972
	jp nc,0804eh		;4973
	ld l,(hl)		;4976
	jr l499eh		;4977
	call nc,0041dh		;4979
	rst 38h			;497c
	jp nc,09982h		;497d
	dec d			;4980
	ei			;4981
	sub d			;4982
	ld d,0b6h		;4983
sub_4985h:
	add hl,hl		;4985
	rst 28h			;4986
	add hl,bc		;4987
	ld d,(hl)		;4988
	ld h,a			;4989
	rst 38h			;498a
	inc hl			;498b
	cp (hl)			;498c
	inc a			;498d
	cpl			;498e
	and d			;498f
	sbc a,c			;4990
	ret z			;4991
	adc a,e			;4992
	ld h,c			;4993
	ld h,d			;4994
	ld (l4929h),hl		;4995
	rst 18h			;4998
	dec sp			;4999
	sub (hl)		;499a
sub_499bh:
	ld e,c			;499b
	ld a,a			;499c
	push bc			;499d
l499eh:
	call m,00230h		;499e
	and b			;49a1
	jr c,l4944h		;49a2
	and d			;49a4
	exx			;49a5
	add a,b			;49a6
	ld (de),a		;49a7
	call po,0a62bh		;49a8
	call pe,000e2h		;49ab
	inc h			;49ae
	ex de,hl		;49af
	push af			;49b0
	ld (de),a		;49b1
	ld a,a			;49b2
	adc a,093h		;49b3
	and 089h		;49b5
	inc e			;49b7
	ld c,b			;49b8
	ld e,d			;49b9
	jp nc,09dc7h		;49ba
	ld de,04968h		;49bd
	sub h			;49c0
	and a			;49c1
	exx			;49c2
	ld h,d			;49c3
	cp b			;49c4
	rra			;49c5
	ld (de),a		;49c6
	and h			;49c7
	ld hl,02043h		;49c8
	ld bc,l4d02h		;49cb
	inc h			;49ce
	ret pe			;49cf
	add a,e			;49d0
	ld (hl),l		;49d1
	inc d			;49d2
	ex de,hl		;49d3
	jr l4a2bh		;49d4
	rst 0			;49d6
	dec (hl)		;49d7
	ld (hl),d		;49d8
	cpl			;49d9
	sbc a,(hl)		;49da
	adc a,h			;49db
	dec d			;49dc
	sbc a,l			;49dd
	ld c,e			;49de
	rst 38h			;49df
	inc bc			;49e0
	ld c,c			;49e1
	ld b,(hl)		;49e2
	ld (hl),l		;49e3
	ld a,a			;49e4
	ld d,d			;49e5
	ld (bc),a		;49e6
	jp p,02028h		;49e7
	inc b			;49ea
	call m,036dah		;49eb
	dec b			;49ee
	ld d,d			;49ef
	ld (bc),a		;49f0
	ld a,(bc)		;49f1
	jp m,02229h		;49f2
	ret			;49f5
sub_49f6h:
	ld h,e			;49f6
	defb 0fdh,099h,0d7h ;illegal sequence	;49f7
	jp z,0bf40h		;49fa
	adc a,c			;49fd
	call p,08659h		;49fe
	adc a,0e6h		;4a01
	dec hl			;4a03
	ld c,d			;4a04
	ret p			;4a05
	ld e,b			;4a06
	rst 28h			;4a07
	exx			;4a08
	sbc a,a			;4a09
	ld h,a			;4a0a
	ld h,009h		;4a0b
	add hl,hl		;4a0d
	ld c,e			;4a0e
	ret po			;4a0f
	sbc a,e			;4a10
	or a			;4a11
	and c			;4a12
	ld d,(hl)		;4a13
	or l			;4a14
	rst 20h			;4a15
	ld (0b1c7h),hl		;4a16
	jp nz,l6445h		;4a19
	ld a,a			;4a1c
	or l			;4a1d
	ld d,c			;4a1e
	ld b,003h		;4a1f
	adc a,a			;4a21
l4a22h:
	nop			;4a22
	cpl			;4a23
	inc a			;4a24
	add a,(hl)		;4a25
	ld c,(hl)		;4a26
	ld a,a			;4a27
	adc a,d			;4a28
	sub h			;4a29
	halt			;4a2a
l4a2bh:
	add a,b			;4a2b
	ld e,d			;4a2c
	xor h			;4a2d
	cp c			;4a2e
	ld a,a			;4a2f
	ret			;4a30
	ld b,0fch		;4a31
	ld c,c			;4a33
	add a,l			;4a34
	rla			;4a35
	ld hl,091aeh		;4a36
	ld bc,l7b21h		;4a39
	add a,b			;4a3c
	inc e			;4a3d
	ld e,c			;4a3e
	jp m,08d39h		;4a3f
	daa			;4a42
	ld a,a			;4a43
	adc a,e			;4a44
	adc a,c			;4a45
	ld a,(hl)		;4a46
	ld b,077h		;4a47
	ld a,e			;4a49
	add hl,de		;4a4a
	rrca			;4a4b
	ld h,a			;4a4c
	pop af			;4a4d
	ld de,09984h		;4a4e
	ld d,c			;4a51
	adc a,d			;4a52
	ld a,(de)		;4a53
	inc d			;4a54
	cp h			;4a55
	ld sp,hl		;4a56
	adc a,h			;4a57
	or e			;4a58
	ld b,(hl)		;4a59
	or a			;4a5a
	call m,03b6ch		;4a5b
	rst 38h			;4a5e
	push af			;4a5f
	nop			;4a60
	jr c,l4ab4h		;4a61
	defb 0edh ;next byte illegal after ed	;4a63
	xor (hl)		;4a64
	adc a,l			;4a65
	ld (hl),l		;4a66
	ret nc			;4a67
	xor (hl)		;4a68
	cpl			;4a69
	di			;4a6a
	ld a,a			;4a6b
	sub b			;4a6c
l4a6dh:
	rla			;4a6d
	cp 058h			;4a6e
	pop af			;4a70
	ld a,a			;4a71
	ld (hl),c		;4a72
	nop			;4a73
	ld a,a			;4a74
	ld (bc),a		;4a75
	sub e			;4a76
	ld b,e			;4a77
	ld (hl),c		;4a78
	ld a,a			;4a79
	ld c,b			;4a7a
	rla			;4a7b
	add hl,de		;4a7c
	di			;4a7d
sub_4a7eh:
	push hl			;4a7e
	ld (l598eh),hl		;4a7f
	cp 05ah			;4a82
	sub d			;4a84
	xor b			;4a85
	rla			;4a86
	ret z			;4a87
	ei			;4a88
	and 090h		;4a89
	ld (hl),a		;4a8b
	ei			;4a8c
	or 09fh			;4a8d
	ld d,e			;4a8f
	ld c,a			;4a90
	ld l,c			;4a91
	sub e			;4a92
	adc a,d			;4a93
	sub d			;4a94
	pop de			;4a95
	sub c			;4a96
	sub c			;4a97
	ld (hl),c		;4a98
	ld a,a			;4a99
	xor a			;4a9a
	rla			;4a9b
	ld a,a			;4a9c
	ld d,024h		;4a9d
	sub e			;4a9f
	ld c,055h		;4aa0
	ld a,l			;4aa2
	di			;4aa3
	ld d,a			;4aa4
	cpl			;4aa5
	adc a,09bh		;4aa6
	and a			;4aa8
	ld d,d			;4aa9
	add a,d			;4aaa
	call p,0e545h		;4aab
	ld a,a			;4aae
	ld a,(bc)		;4aaf
	ld a,h			;4ab0
	call c,sub_64b0h	;4ab1
l4ab4h:
	call z,sub_4952h	;4ab4
	sub d			;4ab7
	jp z,08496h		;4ab8
	sub d			;4abb
	jp nc,0e157h		;4abc
	ld (0b8f3h),a		;4abf
	cp h			;4ac2
	add a,l			;4ac3
	ld a,h			;4ac4
	ld (hl),a		;4ac5
	cp d			;4ac6
	sub d			;4ac7
	pop hl			;4ac8
	rrca			;4ac9
	ld d,l			;4aca
	add a,b			;4acb
	jp (hl)			;4acc
	or 0ebh			;4acd
	sub h			;4acf
	ld e,l			;4ad0
	ld c,c			;4ad1
	sbc a,d			;4ad2
	ld a,e			;4ad3
	ld d,(hl)		;4ad4
	or h			;4ad5
	or c			;4ad6
	add hl,hl		;4ad7
	ld a,a			;4ad8
	add hl,de		;4ad9
	add a,b			;4ada
	ld l,(hl)		;4adb
	add hl,de		;4adc
	dec h			;4add
	cp 01dh			;4ade
	and 092h		;4ae0
	cp h			;4ae2
	add hl,bc		;4ae3
	cpl			;4ae4
	dec hl			;4ae5
	sbc a,e			;4ae6
	rrca			;4ae7
	ld d,d			;4ae8
l4ae9h:
	jr nz,l4a6dh		;4ae9
	and 08ah		;4aeb
	ret pe			;4aed
	jp m,l7fdeh		;4aee
	sbc a,h			;4af1
	nop			;4af2
	ld a,a			;4af3
	ld l,e			;4af4
	defb 0edh ;next byte illegal after ed	;4af5
	inc de			;4af6
	call po,006d5h		;4af7
	add a,a			;4afa
	ld c,h			;4afb
	ld e,a			;4afc
	ret po			;4afd
	ld de,l5e91h		;4afe
	rst 0			;4b01
	pop af			;4b02
	rrca			;4b03
	add a,b			;4b04
	add hl,de		;4b05
	ex af,af'		;4b06
	ld e,e			;4b07
	add a,l			;4b08
	inc d			;4b09
	adc a,c			;4b0a
	add a,001h		;4b0b
	ld e,d			;4b0d
	xor (hl)		;4b0e
	or a			;4b0f
	add hl,hl		;4b10
	xor c			;4b11
	sbc a,(hl)		;4b12
	ld a,a			;4b13
	or (hl)			;4b14
	ld h,h			;4b15
	adc a,h			;4b16
	ld sp,hl		;4b17
	sub (hl)		;4b18
	add a,e			;4b19
	defb 0ddh,000h,02fh ;illegal sequence	;4b1a
	ld b,(hl)		;4b1d
	sbc a,c			;4b1e
	and 019h		;4b1f
	cp 0f2h			;4b21
	ld d,a			;4b23
	ld d,e			;4b24
	ld h,b			;4b25
	jp m,l7f1dh		;4b26
	ld e,030h		;4b29
	jr nz,l4ae9h		;4b2b
	or (hl)			;4b2d
	cp 0ach			;4b2e
	dec hl			;4b30
	ld a,c			;4b31
	ld d,(hl)		;4b32
	rla			;4b33
	call nc,sub_79edh	;4b34
	adc a,c			;4b37
	or e			;4b38
	add a,b			;4b39
	add hl,hl		;4b3a
	ret z			;4b3b
	ld l,e			;4b3c
	rrca			;4b3d
	or e			;4b3e
	pop bc			;4b3f
	scf			;4b40
	ld d,d			;4b41
	call p,0f72fh		;4b42
	adc a,(hl)		;4b45
	call c,02acch		;4b46
	cp h			;4b49
	sub (hl)		;4b4a
	or (hl)			;4b4b
	in a,(029h)		;4b4c
	add a,a			;4b4e
	inc sp			;4b4f
	ld l,e			;4b50
	ld b,l			;4b51
	dec l			;4b52
	add a,b			;4b53
	daa			;4b54
	ld h,h			;4b55
	ld (0a77eh),hl		;4b56
	call nc,0d2e5h		;4b59
	ld (hl),c		;4b5c
	jr nc,l4bbbh		;4b5d
l4b5fh:
	dec a			;4b5f
	inc de			;4b60
	ld e,(hl)		;4b61
	rst 38h			;4b62
	sbc a,(hl)		;4b63
	ld b,(hl)		;4b64
	ld (hl),b		;4b65
	ld a,a			;4b66
	rla			;4b67
	add a,e			;4b68
	ld b,a			;4b69
	rst 38h			;4b6a
	ld de,0c5d1h		;4b6b
	ld l,e			;4b6e
	ld c,b			;4b6f
	ld d,e			;4b70
	ld l,(hl)		;4b71
	adc a,b			;4b72
	sub h			;4b73
	xor b			;4b74
	ld c,d			;4b75
	cp 0a3h			;4b76
	add hl,hl		;4b78
	add a,b			;4b79
	and h			;4b7a
	add hl,de		;4b7b
	ld sp,hl		;4b7c
	pop af			;4b7d
	inc bc			;4b7e
	add hl,sp		;4b7f
	dec h			;4b80
	add a,(hl)		;4b81
	ld b,a			;4b82
	ld d,c			;4b83
	ld (hl),a		;4b84
	add hl,hl		;4b85
	sbc a,(hl)		;4b86
	ld (hl),l		;4b87
	ld l,035h		;4b88
	ld a,e			;4b8a
	sub (hl)		;4b8b
	daa			;4b8c
	add a,l			;4b8d
	dec h			;4b8e
	sbc a,065h		;4b8f
	call pe,sub_468dh	;4b91
	ld l,a			;4b94
	ld d,d			;4b95
	adc a,h			;4b96
	ld a,000h		;4b97
	ld l,(hl)		;4b99
sub_4b9ah:
	add hl,bc		;4b9a
	cpl			;4b9b
	ld (0eebdh),hl		;4b9c
	jr l4b5fh		;4b9f
	jr nc,l4c03h		;4ba1
	nop			;4ba3
	jp po,0fc7fh		;4ba4
	rst 30h			;4ba7
	ex af,af'		;4ba8
	add hl,sp		;4ba9
	ld a,a			;4baa
	or h			;4bab
	jp p,01b22h		;4bac
	or a			;4baf
	cp 0dch			;4bb0
	or a			;4bb2
l4bb3h:
	ld h,e			;4bb3
	daa			;4bb4
	in a,(02dh)		;4bb5
	ld hl,0b1f9h		;4bb7
	ret nz			;4bba
l4bbbh:
	dec h			;4bbb
	adc a,h			;4bbc
	ld l,c			;4bbd
	rst 28h			;4bbe
	sbc a,l			;4bbf
	ret c			;4bc0
	sub d			;4bc1
	dec d			;4bc2
	add a,a			;4bc3
	adc a,h			;4bc4
	ld d,a			;4bc5
	sub 0d8h		;4bc6
	call p,02ae2h		;4bc8
	ld c,h			;4bcb
	or c			;4bcc
	rrca			;4bcd
	ld hl,06684h		;4bce
	ret p			;4bd1
	dec sp			;4bd2
	ld b,a			;4bd3
	dec h			;4bd4
	cp 09ch			;4bd5
l4bd7h:
	add a,b			;4bd7
	ld a,b			;4bd8
	ld (hl),c		;4bd9
	ccf			;4bda
	sub a			;4bdb
	ld c,(hl)		;4bdc
	ld b,(hl)		;4bdd
	inc b			;4bde
	ld b,b			;4bdf
	ld a,l			;4be0
	ld e,a			;4be1
	call m,0a00eh		;4be2
	ld a,a			;4be5
	dec de			;4be6
	and c			;4be7
	ld a,a			;4be8
	nop			;4be9
	sub c			;4bea
	ld a,a			;4beb
	ld (de),a		;4bec
	ld d,c			;4bed
	ld a,a			;4bee
	sbc a,c			;4bef
	in a,(091h)		;4bf0
sub_4bf2h:
	rst 28h			;4bf2
	rst 0			;4bf3
	adc a,d			;4bf4
	ld h,(hl)		;4bf5
	sub c			;4bf6
	ld (hl),d		;4bf7
l4bf8h:
	sub d			;4bf8
	pop af			;4bf9
	rrca			;4bfa
	adc a,c			;4bfb
	sub e			;4bfc
	ld d,d			;4bfd
	sub l			;4bfe
	xor h			;4bff
	push de			;4c00
	and e			;4c01
	and c			;4c02
l4c03h:
	ld h,c			;4c03
	dec d			;4c04
	sbc a,c			;4c05
	or e			;4c06
	ret			;4c07
	or a			;4c08
	xor h			;4c09
	ld (hl),d		;4c0a
	ld a,l			;4c0b
	jr nz,l4bb3h		;4c0c
	add a,e			;4c0e
	ret m			;4c0f
	ld a,a			;4c10
	ld l,l			;4c11
	sbc a,c			;4c12
	adc a,c			;4c13
	sub (hl)		;4c14
	halt			;4c15
	dec de			;4c16
	ld bc,01000h		;4c17
	ld a,a			;4c1a
	inc c			;4c1b
	jp nc,0b802h		;4c1c
	dec hl			;4c1f
	sbc a,h			;4c20
	ld h,0bbh		;4c21
	ld b,a			;4c23
	ld hl,0157eh		;4c24
	rla			;4c27
	or (hl)			;4c28
	dec l			;4c29
	rst 30h			;4c2a
	ret c			;4c2b
	rrca			;4c2c
	sub d			;4c2d
	ld d,h			;4c2e
	ld d,l			;4c2f
	halt			;4c30
	rrca			;4c31
	call m,00fefh		;4c32
	res 0,d			;4c35
	dec h			;4c37
	ld (de),a		;4c38
	cpl			;4c39
	res 2,d			;4c3a
	ld (hl),h		;4c3c
	xor c			;4c3d
	jp m,02378h		;4c3e
l4c41h:
	add a,b			;4c41
	add a,0f9h		;4c42
	dec sp			;4c44
	jp p,0f17fh		;4c45
	ld b,0b1h		;4c48
	dec b			;4c4a
	ld a,a			;4c4b
	sbc a,c			;4c4c
	ld a,a			;4c4d
	ld h,(hl)		;4c4e
	defb 0edh ;next byte illegal after ed	;4c4f
	sub l			;4c50
	ld d,c			;4c51
	ld (de),a		;4c52
	ret m			;4c53
	rst 0			;4c54
	rrca			;4c55
	add a,c			;4c56
	ld d,d			;4c57
	sub d			;4c58
	rrca			;4c59
	or 0efh			;4c5a
	cpl			;4c5c
	add a,b			;4c5d
	or l			;4c5e
	nop			;4c5f
	ld sp,hl		;4c60
	ld c,h			;4c61
	ld bc,03578h		;4c62
	ld a,(bc)		;4c65
	ld bc,01009h		;4c66
	dec b			;4c69
	ld (008a0h),a		;4c6a
	push de			;4c6d
	jr nc,$+39		;4c6e
	dec d			;4c70
	sub h			;4c71
	jp po,l777bh		;4c72
	jp pe,00f5fh		;4c75
	dec de			;4c78
	ld de,0e71fh		;4c79
	ccf			;4c7c
	sub d			;4c7d
	nop			;4c7e
	ld a,a			;4c7f
	ld e,e			;4c80
	ld a,c			;4c81
	jr c,l4d03h		;4c82
	ld d,d			;4c84
	ld a,(bc)		;4c85
	add a,b			;4c86
	call po,052bah		;4c87
	ld b,a			;4c8a
	sub l			;4c8b
	ld c,a			;4c8c
	ld (hl),l		;4c8d
	ld d,d			;4c8e
	add a,e			;4c8f
	inc sp			;4c90
	rrca			;4c91
	pop hl			;4c92
	sub c			;4c93
	call pe,022beh		;4c94
	rrca			;4c97
	adc a,h			;4c98
	cpl			;4c99
	sub c			;4c9a
	defb 0ddh,099h,000h ;illegal sequence	;4c9b
	rld			;4c9e
	rst 28h			;4ca0
	rra			;4ca1
	rst 28h			;4ca2
	ld a,a			;4ca3
	ret pe			;4ca4
	nop			;4ca5
	cp d			;4ca6
	ld a,a			;4ca7
	cp e			;4ca8
	sbc a,0bah		;4ca9
	inc l			;4cab
	and h			;4cac
	ld e,h			;4cad
	rla			;4cae
	xor 059h		;4caf
	defb 0fdh,0ebh,0deh ;illegal sequence	;4cb1
	or b			;4cb4
	ld h,0f0h		;4cb5
	jp nc,0f4feh		;4cb7
	sub e			;4cba
	add a,a			;4cbb
	jp m,00fb7h		;4cbc
	rra			;4cbf
	rrca			;4cc0
	sub a			;4cc1
	sbc a,c			;4cc2
	cpl			;4cc3
	add a,d			;4cc4
	ld a,e			;4cc5
	cpl			;4cc6
	or e			;4cc7
	inc e			;4cc8
	ret c			;4cc9
	ld a,a			;4cca
	ld a,a			;4ccb
l4ccch:
	ld b,d			;4ccc
	or 072h			;4ccd
	rst 38h			;4ccf
	ld (hl),a		;4cd0
	ld (bc),a		;4cd1
	ld c,e			;4cd2
	ld a,(bc)		;4cd3
	ld b,d			;4cd4
l4cd5h:
	pop de			;4cd5
	ld e,d			;4cd6
	jp z,l70aah		;4cd7
	ld a,a			;4cda
	push de			;4cdb
	xor e			;4cdc
	push de			;4cdd
	adc a,06fh		;4cde
	ld (hl),c		;4ce0
	adc a,(hl)		;4ce1
	ld (0d363h),a		;4ce2
	jp p,073efh		;4ce5
	in a,(098h)		;4ce8
	push af			;4cea
	rst 10h			;4ceb
	and d			;4cec
	add a,b			;4ced
	adc a,0f8h		;4cee
	adc a,(hl)		;4cf0
	xor d			;4cf1
	scf			;4cf2
	cpl			;4cf3
	sbc a,(hl)		;4cf4
	ld h,c			;4cf5
	ld (02454h),hl		;4cf6
	ld a,a			;4cf9
	jp m,010ceh		;4cfa
	ld (bc),a		;4cfd
	ld l,e			;4cfe
	sub a			;4cff
	ld a,(bc)		;4d00
	inc h			;4d01
l4d02h:
	ld b,d			;4d02
l4d03h:
	ret			;4d03
	add a,l			;4d04
	cp e			;4d05
	ld (hl),c		;4d06
	ld e,c			;4d07
	sbc a,0c9h		;4d08
	ld (hl),a		;4d0a
	dec b			;4d0b
	ld hl,09c6fh		;4d0c
	ld a,a			;4d0f
	xor d			;4d10
	dec h			;4d11
	ld h,d			;4d12
	ld a,h			;4d13
	ei			;4d14
	rst 30h			;4d15
	jp nz,09c78h		;4d16
	defb 0edh ;next byte illegal after ed	;4d19
	jp nc,0eedfh		;4d1a
	scf			;4d1d
	pop de			;4d1e
	ld d,(hl)		;4d1f
	xor c			;4d20
	or 02fh			;4d21
	and d			;4d23
	jr z,l4cd5h		;4d24
	ld c,a			;4d26
	ld (l407fh),hl		;4d27
	ld a,a			;4d2a
	ret nc			;4d2b
	ld (hl),a		;4d2c
	and b			;4d2d
	ld a,a			;4d2e
	dec b			;4d2f
	jr $+34			;4d30
	djnz l4d38h		;4d32
	ld b,l			;4d34
	and e			;4d35
	ld e,c			;4d36
	ld a,a			;4d37
l4d38h:
	ld (hl),a		;4d38
	ld e,c			;4d39
	rst 38h			;4d3a
	inc d			;4d3b
	ld (hl),c		;4d3c
	daa			;4d3d
	or d			;4d3e
	rst 20h			;4d3f
	rst 28h			;4d40
	ld e,d			;4d41
	ld (l7125h),hl		;4d42
	call c,0cefdh		;4d45
	sbc a,0c2h		;4d48
	ld h,h			;4d4a
	add a,b			;4d4b
	dec l			;4d4c
	rla			;4d4d
	ld (de),a		;4d4e
	inc bc			;4d4f
	rst 30h			;4d50
l4d51h:
	jp po,l6b02h		;4d51
	ld (hl),d		;4d54
	ld a,a			;4d55
	ld d,d			;4d56
	add a,a			;4d57
	ld d,l			;4d58
	ld (023bch),hl		;4d59
	djnz l4dddh		;4d5c
	call p,0f268h		;4d5e
	xor 07fh		;4d61
	rst 38h			;4d63
	scf			;4d64
	add a,b			;4d65
	inc c			;4d66
	ld e,l			;4d67
	ld (0b17bh),hl		;4d68
	in a,(0e4h)		;4d6b
	rst 28h			;4d6d
	call pe,08eeeh		;4d6e
	rst 38h			;4d71
	and (hl)		;4d72
	ld e,e			;4d73
	ld d,l			;4d74
	rst 8			;4d75
	or b			;4d76
	ld (09beeh),hl		;4d77
	dec (hl)		;4d7a
	jp nz,l5108h		;4d7b
	ld (hl),d		;4d7e
	dec h			;4d7f
	ld d,d			;4d80
	ld hl,091eeh		;4d81
	dec sp			;4d84
	or 027h			;4d85
	xor c			;4d87
	adc a,l			;4d88
	cp b			;4d89
	jp po,l7fffh		;4d8a
	ld b,e			;4d8d
	pop af			;4d8e
	daa			;4d8f
	nop			;4d90
	ld a,a			;4d91
	sub e			;4d92
	ld a,(bc)		;4d93
	inc c			;4d94
	jr c,l4d51h		;4d95
	inc de			;4d97
	dec h			;4d98
	ld d,(hl)		;4d99
	ld h,l			;4d9a
	rst 0			;4d9b
	ld (hl),d		;4d9c
	rst 38h			;4d9d
	ld c,b			;4d9e
	add a,h			;4d9f
	ld (0b3feh),hl		;4da0
	ld h,d			;4da3
l4da4h:
	xor 067h		;4da4
	dec d			;4da6
	cp b			;4da7
	dec hl			;4da8
	ld (bc),a		;4da9
	sub d			;4daa
	ld l,a			;4dab
	defb 0fdh,08ah,002h ;illegal sequence	;4dac
	and d			;4daf
	ld d,a			;4db0
	add a,e			;4db1
	ld l,a			;4db2
	rst 38h			;4db3
	ld e,b			;4db4
	cp 0a3h			;4db5
	sub a			;4db7
	ld l,d			;4db8
	jr c,l4dceh		;4db9
	rst 38h			;4dbb
	cp a			;4dbc
	ld b,c			;4dbd
	nop			;4dbe
	ld (hl),d		;4dbf
	dec hl			;4dc0
	and b			;4dc1
	or 033h			;4dc2
	add a,e			;4dc4
	adc a,(hl)		;4dc5
	ld a,a			;4dc6
	ld c,d			;4dc7
	nop			;4dc8
	ld b,d			;4dc9
	rst 20h			;4dca
	ld b,d			;4dcb
	dec h			;4dcc
	ld l,c			;4dcd
l4dceh:
	call po,0df32h		;4dce
	ld (hl),a		;4dd1
	ld l,h			;4dd2
	ld (hl),d		;4dd3
	sub e			;4dd4
	adc a,d			;4dd5
	ret pe			;4dd6
	adc a,e			;4dd7
	ld d,e			;4dd8
	ld a,a			;4dd9
	ld e,009h		;4dda
	ld a,a			;4ddc
l4dddh:
	ld d,c			;4ddd
	call pe,sub_7f71h	;4dde
	inc h			;4de1
	adc a,d			;4de2
	ld d,d			;4de3
	defb 0fdh,02fh,088h ;illegal sequence	;4de4
	ld d,l			;4de7
	inc h			;4de8
	cp e			;4de9
	sbc a,a			;4dea
	ld a,a			;4deb
	xor e			;4dec
	ld a,c			;4ded
	sbc a,h			;4dee
	add a,(hl)		;4def
	pop bc			;4df0
	djnz l4df6h		;4df1
	sbc a,d			;4df3
	xor h			;4df4
	ld a,d			;4df5
l4df6h:
	cp e			;4df6
	jr l4e4fh		;4df7
l4df9h:
	ld l,c			;4df9
	ld h,h			;4dfa
	add hl,de		;4dfb
	ld (hl),d		;4dfc
	ld (0006ch),hl		;4dfd
	adc a,d			;4e00
	jp (hl)			;4e01
	cp 073h			;4e02
	ld a,a			;4e04
	ld a,l			;4e05
	adc a,c			;4e06
	sbc a,b			;4e07
	sbc a,d			;4e08
	ret z			;4e09
	and d			;4e0a
	res 0,c			;4e0b
	ld c,a			;4e0d
	and d			;4e0e
	ld c,h			;4e0f
	ld (hl),a		;4e10
	ld h,d			;4e11
l4e12h:
	sub c			;4e12
	ld a,(bc)		;4e13
	sbc a,c			;4e14
	call m,02470h		;4e15
	ld b,l			;4e18
	ld b,a			;4e19
	ld d,l			;4e1a
	rst 38h			;4e1b
	jp (hl)			;4e1c
	ld c,b			;4e1d
	ld (hl),d		;4e1e
	jr nc,l4da4h		;4e1f
	ret z			;4e21
	ld sp,hl		;4e22
	jp z,l5688h		;4e23
	inc bc			;4e26
	adc a,c			;4e27
	or c			;4e28
	ret			;4e29
	ld de,06756h		;4e2a
	ei			;4e2d
	ld a,c			;4e2e
	jp (hl)			;4e2f
	ld l,c			;4e30
	ret po			;4e31
	adc a,h			;4e32
	ret			;4e33
	or 0f0h			;4e34
	ld h,e			;4e36
	ld (de),a		;4e37
	cp b			;4e38
	sbc a,c			;4e39
	dec h			;4e3a
	sbc a,c			;4e3b
	add hl,hl		;4e3c
	sub d			;4e3d
	sbc a,h			;4e3e
	ld a,a			;4e3f
	dec sp			;4e40
	add hl,hl		;4e41
	daa			;4e42
	jp p,0833dh		;4e43
	adc a,h			;4e46
	ret m			;4e47
	ld d,l			;4e48
	ld d,l			;4e49
	call m,sub_4520h	;4e4a
	ld h,(hl)		;4e4d
	ld (hl),d		;4e4e
l4e4fh:
	defb 0fdh,07fh,006h ;illegal sequence	;4e4f
	ld a,(bc)		;4e52
	ld a,a			;4e53
	ld (hl),c		;4e54
	ld a,c			;4e55
	add a,(hl)		;4e56
	jr l4df9h		;4e57
	sub c			;4e59
	dec b			;4e5a
	and b			;4e5b
	rst 38h			;4e5c
	or d			;4e5d
	ld c,c			;4e5e
	ld h,080h		;4e5f
	set 5,b			;4e61
	xor c			;4e63
	jp p,0e137h		;4e64
	adc a,d			;4e67
	ret m			;4e68
	adc a,0f1h		;4e69
	adc a,0dah		;4e6b
	and 0f8h		;4e6d
	ld sp,08629h		;4e6f
	defb 0fdh,08ah,027h ;illegal sequence	;4e72
	ld (de),a		;4e75
	ld hl,0907fh		;4e76
	out (028h),a		;4e79
	ld l,c			;4e7b
l4e7ch:
	jr nz,l4e7ch		;4e7c
	out (067h),a		;4e7e
	ld (hl),l		;4e80
	ld a,a			;4e81
	call p,0031ah		;4e82
	ld a,b			;4e85
	and e			;4e86
	add a,h			;4e87
	rla			;4e88
	ld a,(bc)		;4e89
	ld a,(bc)		;4e8a
	jr nc,l4e92h		;4e8b
	and b			;4e8d
	ld a,e			;4e8e
	and e			;4e8f
	and h			;4e90
	ld b,l			;4e91
l4e92h:
	dec h			;4e92
	ld (hl),l		;4e93
	ld d,a			;4e94
	call p,08545h		;4e95
	call po,sub_5befh	;4e98
	ld a,a			;4e9b
	sub l			;4e9c
	call m,0da73h		;4e9d
	ld de,l6de7h		;4ea0
	rst 20h			;4ea3
	ld (de),a		;4ea4
	or (hl)			;4ea5
	jp m,092a7h		;4ea6
	ld (hl),c		;4ea9
	ei			;4eaa
	and h			;4eab
	call p,095cah		;4eac
	sbc a,h			;4eaf
	ld e,l			;4eb0
	add a,d			;4eb1
	call z,03f7fh		;4eb2
	ld d,a			;4eb5
	ld d,b			;4eb6
	ld a,a			;4eb7
	ld d,b			;4eb8
	and b			;4eb9
	inc bc			;4eba
	or e			;4ebb
	ld a,c			;4ebc
	ld b,005h		;4ebd
	adc a,l			;4ebf
	ld a,a			;4ec0
	ld d,d			;4ec1
	inc h			;4ec2
	ld d,a			;4ec3
	jp nc,l522ah		;4ec4
	push af			;4ec7
	and c			;4ec8
	ld d,a			;4ec9
	ld l,d			;4eca
	inc h			;4ecb
	ld c,c			;4ecc
	sub d			;4ecd
	ld sp,hl		;4ece
	dec de			;4ecf
	ld a,a			;4ed0
	in a,(025h)		;4ed1
sub_4ed3h:
	and 0e3h		;4ed3
	ld d,l			;4ed5
	ld d,h			;4ed6
	ld a,a			;4ed7
	add a,a			;4ed8
	sbc a,c			;4ed9
	jp p,012eah		;4eda
	sbc a,a			;4edd
	rst 8			;4ede
	ld sp,hl		;4edf
	dec l			;4ee0
	sbc a,h			;4ee1
	scf			;4ee2
	sub c			;4ee3
	ld d,d			;4ee4
	ld b,h			;4ee5
	or (hl)			;4ee6
	ld de,02015h		;4ee7
	rst 38h			;4eea
	jp m,l79b8h		;4eeb
	and e			;4eee
	adc a,d			;4eef
	rst 38h			;4ef0
	add a,d			;4ef1
	dec (hl)		;4ef2
	ld a,(bc)		;4ef3
	ld a,a			;4ef4
	or a			;4ef5
	ld c,c			;4ef6
	ret po			;4ef7
	ld d,e			;4ef8
	ld d,b			;4ef9
	ld d,d			;4efa
	di			;4efb
	ld c,d			;4efc
	ld a,a			;4efd
	ld e,a			;4efe
	ld c,d			;4eff
	ld c,c			;4f00
	im 2			;4f01
	ld sp,hl		;4f03
	ei			;4f04
	exx			;4f05
	inc a			;4f06
	ex de,hl		;4f07
	add a,l			;4f08
	dec h			;4f09
	ld h,l			;4f0a
	ld (de),a		;4f0b
	ld sp,hl		;4f0c
	xor h			;4f0d
	sbc a,c			;4f0e
	sub d			;4f0f
	ld (bc),a		;4f10
	add a,d			;4f11
	sub e			;4f12
	ld a,a			;4f13
	ld de,0128eh		;4f14
	sbc a,a			;4f17
	ld (hl),b		;4f18
	ld b,h			;4f19
	ld b,h			;4f1a
	rra			;4f1b
	ld hl,00012h		;4f1c
	ld a,a			;4f1f
	xor a			;4f20
	call m,00229h		;4f21
	or (hl)			;4f24
	rst 38h			;4f25
	pop bc			;4f26
	dec b			;4f27
	ld d,h			;4f28
	jp po,0d514h		;4f29
	ld h,d			;4f2c
	ld (hl),l		;4f2d
	add a,b			;4f2e
	ld b,a			;4f2f
	dec d			;4f30
	jp po,l68dbh		;4f31
	ld e,e			;4f34
	ld a,b			;4f35
	ld a,023h		;4f36
	ld (bc),a		;4f38
	ld sp,hl		;4f39
	inc e			;4f3a
	ld (hl),a		;4f3b
	ret m			;4f3c
	call 09775h		;4f3d
	inc a			;4f40
	ld c,l			;4f41
	and a			;4f42
	jp m,l5712h		;4f43
	sbc a,(hl)		;4f46
	push de			;4f47
	ld b,d			;4f48
	cp 053h			;4f49
	ld b,b			;4f4b
	ld a,a			;4f4c
	call p,00a9ah		;4f4d
	ld a,a			;4f50
	and b			;4f51
	adc a,h			;4f52
	call m,005dah		;4f53
	add a,l			;4f56
	dec (hl)		;4f57
	ld a,a			;4f58
	ld d,d			;4f59
	ld c,b			;4f5a
	ld c,d			;4f5b
	pop de			;4f5c
	ld c,h			;4f5d
	defb 0ddh,025h ;dec ixh	;4f5e
	and l			;4f60
	defb 0ddh,0c4h,07fh ;illegal sequence	;4f61
	ld d,c			;4f64
	call m,09b75h		;4f65
	ld c,l			;4f68
	ld d,c			;4f69
	push hl			;4f6a
	sub (hl)		;4f6b
	ld e,h			;4f6c
	or e			;4f6d
	dec d			;4f6e
	sub b			;4f6f
	ld h,h			;4f70
	and b			;4f71
	sbc a,e			;4f72
	xor e			;4f73
	xor d			;4f74
	ld (0b2aah),a		;4f75
	jr $+65			;4f78
	ld d,h			;4f7a
l4f7bh:
	nop			;4f7b
	ld a,a			;4f7c
	ld c,(hl)		;4f7d
	di			;4f7e
l4f7fh:
	or d			;4f7f
	call m,0b678h		;4f80
	add a,d			;4f83
	add hl,sp		;4f84
	ld h,h			;4f85
	sbc a,l			;4f86
	rst 28h			;4f87
	add hl,hl		;4f88
	ld d,l			;4f89
	rla			;4f8a
	ld d,b			;4f8b
	rst 38h			;4f8c
	ld b,d			;4f8d
	sub d			;4f8e
	sub h			;4f8f
	in c,(c)		;4f90
	rlca			;4f92
	ld (0ef40h),hl		;4f93
	ccf			;4f96
	ld a,a			;4f97
sub_4f98h:
	rlca			;4f98
l4f99h:
	ld h,(hl)		;4f99
	ld d,c			;4f9a
	inc d			;4f9b
	jp m,0ffe6h		;4f9c
	and l			;4f9f
	xor c			;4fa0
	sub d			;4fa1
	ld d,042h		;4fa2
	sbc a,l			;4fa4
	ld hl,(0937bh)		;4fa5
	adc a,h			;4fa8
	and h			;4fa9
	pop bc			;4faa
	ld (bc),a		;4fab
	ld hl,07f00h		;4fac
	jp m,0334ch		;4faf
	rst 30h			;4fb2
	ld c,e			;4fb3
	add a,e			;4fb4
	ret c			;4fb5
	add a,l			;4fb6
	rst 20h			;4fb7
	ld h,0c3h		;4fb8
	call p,0d856h		;4fba
	or 0d5h			;4fbd
	ld c,h			;4fbf
	add a,d			;4fc0
	call po,01224h		;4fc1
	sub a			;4fc4
	add a,b			;4fc5
	inc b			;4fc6
	dec h			;4fc7
	ld l,a			;4fc8
	dec d			;4fc9
	ld h,(hl)		;4fca
	ld b,d			;4fcb
	ex de,hl		;4fcc
	xor a			;4fcd
	jr nz,l4f7bh		;4fce
	sbc a,h			;4fd0
	and (hl)		;4fd1
	ld c,l			;4fd2
	sbc a,l			;4fd3
	call c,079dfh		;4fd4
	rst 28h			;4fd7
	rst 38h			;4fd8
	rst 28h			;4fd9
	pop de			;4fda
	inc d			;4fdb
	and e			;4fdc
	and b			;4fdd
	ld (09307h),a		;4fde
	adc a,c			;4fe1
	xor a			;4fe2
	ld hl,(04e7fh)		;4fe3
	defb 0ddh,044h ;ld b,ixh	;4fe6
	ld b,d			;4fe8
l4fe9h:
	ex de,hl		;4fe9
	xor l			;4fea
	add hl,bc		;4feb
	in a,(042h)		;4fec
	ld d,d			;4fee
	nop			;4fef
	sub 09ch		;4ff0
	ld l,e			;4ff2
	rst 20h			;4ff3
	ld l,0f1h		;4ff4
	cp l			;4ff6
	defb 0edh ;next byte illegal after ed	;4ff7
l4ff8h:
	jp po,0fe0eh		;4ff8
	ld b,a			;4ffb
	ld (0ee7fh),hl		;4ffc
l4fffh:
	cp h			;4fff
	djnz l4ff8h		;5000
	inc d			;5002
	and b			;5003
	ld hl,(0f901h)		;5004
	adc a,c			;5007
	xor d			;5008
	inc e			;5009
	jr nc,l5010h		;500a
	cp l			;500c
l500dh:
	ld a,a			;500d
	ld a,l			;500e
l500fh:
	add a,(hl)		;500f
l5010h:
	jp po,0807bh		;5010
	adc a,e			;5013
	add a,d			;5014
	ld l,b			;5015
	ld b,h			;5016
	sub h			;5017
	ret po			;5018
	inc hl			;5019
	daa			;501a
	ld (hl),l		;501b
	ret p			;501c
	add a,(hl)		;501d
	inc h			;501e
	ld a,c			;501f
	inc d			;5020
	ld b,l			;5021
	ld d,c			;5022
	and d			;5023
	ld h,(hl)		;5024
	ld a,(bc)		;5025
	ld (bc),a		;5026
	cp a			;5027
	ld c,c			;5028
	add a,l			;5029
	halt			;502a
	dec hl			;502b
	rst 38h			;502c
	ccf			;502d
	ld h,b			;502e
	ld (de),a		;502f
	ld (de),a		;5030
	push bc			;5031
	call m,03212h		;5032
	and b			;5035
	inc hl			;5036
	in a,(027h)		;5037
	xor l			;5039
	add a,e			;503a
	inc hl			;503b
	rst 38h			;503c
	jp 02a53h		;503d
	cp 0a1h			;5040
	ld a,e			;5042
	ld (bc),a		;5043
	sub h			;5044
	ld h,l			;5045
	sub b			;5046
	rrca			;5047
	xor d			;5048
	ld d,(hl)		;5049
	rst 30h			;504a
	or l			;504b
	add hl,de		;504c
	inc h			;504d
	adc a,h			;504e
	jr c,l5095h		;504f
	xor c			;5051
	ld (bc),a		;5052
	sub b			;5053
	ld de,00356h		;5054
	ld b,l			;5057
	nop			;5058
	xor c			;5059
	ld h,e			;505a
	jr nz,l4fe9h		;505b
	ld (hl),a		;505d
	ld a,a			;505e
	or 000h			;505f
	ld (bc),a		;5061
	and b			;5062
	ld sp,00120h		;5063
	ld (bc),a		;5066
	sbc a,d			;5067
	add a,c			;5068
	call m,03271h		;5069
	add a,e			;506c
	ld c,b			;506d
	xor d			;506e
	or a			;506f
	rst 20h			;5070
	cpl			;5071
	defb 0fdh,062h ;ld iyh,d	;5072
	ld e,a			;5074
	add hl,bc		;5075
	sub h			;5076
	ld b,h			;5077
	ld e,c			;5078
	sub b			;5079
	rst 20h			;507a
	pop de			;507b
	ld d,l			;507c
	ld h,(hl)		;507d
	ld d,d			;507e
	add a,l			;507f
	ld e,e			;5080
	ex af,af'		;5081
	ld d,l			;5082
	ld a,(hl)		;5083
	inc bc			;5084
	and a			;5085
	ret p			;5086
	ld b,h			;5087
	adc a,l			;5088
	nop			;5089
	ld b,b			;508a
	ld b,h			;508b
	ld a,a			;508c
	adc a,09dh		;508d
	rst 38h			;508f
	ld a,a			;5090
	ex af,af'		;5091
	djnz l50c7h		;5092
	inc a			;5094
l5095h:
	ld (00331h),hl		;5095
	call nz,01032h		;5098
	jr nc,$-2		;509b
	sub b			;509d
	ld c,(hl)		;509e
	and c			;509f
	ld sp,00f03h		;50a0
	inc hl			;50a3
	and c			;50a4
l50a5h:
	ld (de),a		;50a5
	ld (bc),a		;50a6
	adc a,c			;50a7
	xor e			;50a8
	add a,b			;50a9
	ret			;50aa
	ld (0bbe9h),hl		;50ab
	ld e,a			;50ae
	ld h,d			;50af
	ld b,h			;50b0
	sub b			;50b1
	rst 30h			;50b2
	ld (hl),l		;50b3
	dec h			;50b4
	add a,d			;50b5
	add hl,hl		;50b6
	add a,b			;50b7
	ld a,(0ce44h)		;50b8
	nop			;50bb
	dec h			;50bc
	jp nz,04047h		;50bd
	inc b			;50c0
	sub d			;50c1
	xor e			;50c2
	add hl,sp		;50c3
	ld a,(hl)		;50c4
	nop			;50c5
	ld a,a			;50c6
l50c7h:
	dec (hl)		;50c7
	ld h,h			;50c8
	ld (hl),h		;50c9
	ld a,c			;50ca
	inc bc			;50cb
	xor h			;50cc
	ld hl,0b4b5h		;50cd
	cp d			;50d0
	add a,c			;50d1
	ld b,e			;50d2
	ld a,(de)		;50d3
	ld de,02020h		;50d4
	and c			;50d7
	add a,d			;50d8
	inc sp			;50d9
	ld (0c87fh),a		;50da
	jr nz,l50e8h		;50dd
l50dfh:
	xor h			;50df
	ret m			;50e0
	sbc a,h			;50e1
	ld e,a			;50e2
	ld b,h			;50e3
	ld b,h			;50e4
	dec d			;50e5
	ld (bc),a		;50e6
	ld b,d			;50e7
l50e8h:
	rst 30h			;50e8
	ld e,c			;50e9
	ld sp,hl		;50ea
	ld c,h			;50eb
	call pe,sub_6b44h	;50ec
	inc b			;50ef
	sbc a,b			;50f0
	rrca			;50f1
	ld (bc),a		;50f2
	ld a,a			;50f3
	jp z,000f7h		;50f4
	ld (bc),a		;50f7
	inc bc			;50f8
	djnz l50a5h		;50f9
	ld a,(bc)		;50fb
	inc sp			;50fc
	ld hl,(0e383h)		;50fd
	ld hl,08002h		;5100
	ret m			;5103
	pop af			;5104
	nop			;5105
	sub l			;5106
	pop de			;5107
l5108h:
	cp 0fbh			;5108
l510ah:
	ld de,0fe29h		;510a
	cp c			;510d
	ld a,a			;510e
	sbc a,0e8h		;510f
	ld (hl),l		;5111
	adc a,(hl)		;5112
	rst 38h			;5113
	inc de			;5114
	ld d,h			;5115
	add a,(hl)		;5116
	sub d			;5117
	add a,l			;5118
	sub e			;5119
	xor b			;511a
	out (055h),a		;511b
	add a,l			;511d
	scf			;511e
l511fh:
	and b			;511f
	ld e,h			;5120
	ld a,(hl)		;5121
	ld a,a			;5122
	rst 30h			;5123
	ld (0a1b3h),hl		;5124
	inc sp			;5127
	inc sp			;5128
	dec b			;5129
	add a,h			;512a
	inc sp			;512b
	ld (0115ch),a		;512c
	add hl,sp		;512f
	inc de			;5130
	inc sp			;5131
	rrca			;5132
	dec e			;5133
	jr nz,l5146h		;5134
	ld sp,l7a0fh		;5136
	inc l			;5139
	ld c,c			;513a
	jp p,0935fh		;513b
	in a,(0cbh)		;513e
	ld (bc),a		;5140
	sbc a,0d9h		;5141
	jp 04600h		;5143
l5146h:
	ld h,h			;5146
	ld a,(hl)		;5147
	ld c,(hl)		;5148
	ld h,a			;5149
	ld d,b			;514a
	ld a,a			;514b
	ex de,hl		;514c
	sub l			;514d
	adc a,a			;514e
	ld a,a			;514f
	ret z			;5150
	call sub_7166h		;5151
	or c			;5154
	dec b			;5155
sub_5156h:
	ld l,e			;5156
	jr nc,l50dfh		;5157
	inc e			;5159
	pop hl			;515a
	rrca			;515b
	ld sp,0cba1h		;515c
	rst 30h			;515f
	rrca			;5160
	ld a,02fh		;5161
	ret m			;5163
	ld e,a			;5164
	ld (007e3h),hl		;5165
	sbc a,0d7h		;5168
	ld l,d			;516a
	add a,l			;516b
	dec b			;516c
	add a,l			;516d
	ld l,c			;516e
	ld b,l			;516f
	ld d,b			;5170
	ret nc			;5171
	ld e,00fh		;5172
	nop			;5174
	ld a,a			;5175
	call z,0eab1h		;5176
	and b			;5179
	ret p			;517a
	daa			;517b
	inc bc			;517c
	add a,l			;517d
	ld (bc),a		;517e
	pop af			;517f
l5180h:
	ld c,d			;5180
	jr nc,l511fh		;5181
	add a,e			;5183
	xor e			;5184
	jp m,02f04h		;5185
	inc bc			;5188
	ld c,l			;5189
	ld l,c			;518a
	rst 38h			;518b
	ld e,(hl)		;518c
	ld (de),a		;518d
	ld e,(hl)		;518e
	ld (bc),a		;518f
	sbc a,0cfh		;5190
	nop			;5192
	jp 0f97fh		;5193
	sbc a,000h		;5196
	ret m			;5198
	jp p,0023ch		;5199
	dec c			;519c
	xor a			;519d
	adc a,c			;519e
	dec a			;519f
	ld e,l			;51a0
	jp m,l7b5fh		;51a1
	ld (bc),a		;51a4
	sbc a,03fh		;51a5
	nop			;51a7
	add a,c			;51a8
	rst 38h			;51a9
	ccf			;51aa
	add a,c			;51ab
	ex (sp),hl		;51ac
	add hl,hl		;51ad
	call p,0ec24h		;51ae
	rst 28h			;51b1
	rlca			;51b2
	set 7,(hl)		;51b3
	ld l,0feh		;51b5
	ex af,af'		;51b7
	ld e,0deh		;51b8
	rst 8			;51ba
	ld a,a			;51bb
	ret p			;51bc
	ld (de),a		;51bd
	ld h,d			;51be
	ld (bc),a		;51bf
	rst 8			;51c0
	adc a,c			;51c1
	ld l,c			;51c2
	inc bc			;51c3
	call pe,00737h		;51c4
	ld d,l			;51c7
	add a,c			;51c8
	ld d,d			;51c9
	rst 30h			;51ca
	ld d,d			;51cb
	adc a,h			;51cc
	ld (hl),l		;51cd
	rlca			;51ce
	ld e,b			;51cf
	call p,0de7bh		;51d0
	ccf			;51d3
	ld a,a			;51d4
	ret nz			;51d5
	ld c,a			;51d6
	rst 38h			;51d7
	cp h			;51d8
	ret m			;51d9
	push hl			;51da
	rst 30h			;51db
	xor a			;51dc
	inc bc			;51dd
	add hl,sp		;51de
	nop			;51df
	ld e,b			;51e0
	call p,0de7bh		;51e1
	ccf			;51e4
	ld a,a			;51e5
	ret nz			;51e6
	halt			;51e7
	push hl			;51e8
	ld a,c			;51e9
	ld (hl),b		;51ea
	ld e,(hl)		;51eb
	ld a,h			;51ec
l51edh:
	ld (hl),b		;51ed
	ld a,b			;51ee
	ld c,000h		;51ef
	rst 38h			;51f1
	nop			;51f2
	rst 38h			;51f3
	add a,b			;51f4
	nop			;51f5
	ld d,h			;51f6
	nop			;51f7
	nop			;51f8
	ld a,a			;51f9
	sbc a,c			;51fa
	nop			;51fb
	ld e,090h		;51fc
	dec e			;51fe
	defb 0ddh,0c9h,039h ;illegal sequence	;51ff
	add hl,bc		;5202
	inc hl			;5203
	inc bc			;5204
	ex af,af'		;5205
	exx			;5206
	sbc a,c			;5207
	nop			;5208
	jp m,000f0h		;5209
	sub a			;520c
	ld (hl),e		;520d
	nop			;520e
	defb 0ddh,07ch ;ld a,ixh	;520f
	ld a,(bc)		;5211
	adc a,(hl)		;5212
	adc a,b			;5213
	cp a			;5214
	nop			;5215
	xor h			;5216
	dec de			;5217
	add hl,bc		;5218
	ld a,e			;5219
	or a			;521a
	ld a,a			;521b
	rlca			;521c
	ld b,(hl)		;521d
	add a,e			;521e
	ccf			;521f
	nop			;5220
	ld a,a			;5221
	or (hl)			;5222
	rst 0			;5223
	ld a,e			;5224
	sbc a,c			;5225
	inc bc			;5226
	ld a,a			;5227
	nop			;5228
	rst 8			;5229
l522ah:
	daa			;522a
	ld (0dcfeh),hl		;522b
	sbc a,c			;522e
l522fh:
	sub a			;522f
	ld b,(hl)		;5230
	ld (hl),b		;5231
	or 0c7h			;5232
	jp m,0e3f4h		;5234
	ld d,l			;5237
	ld b,d			;5238
	add hl,hl		;5239
	ld a,a			;523a
	exx			;523b
	sub b			;523c
	cp 01ah			;523d
	add hl,bc		;523f
	and 00bh		;5240
	add a,b			;5242
	ld e,a			;5243
	and c			;5244
	ld e,07bh		;5245
	ld (hl),c		;5247
	ld d,d			;5248
	ld a,a			;5249
	pop de			;524a
	jp m,090e0h		;524b
	adc a,a			;524e
	rst 38h			;524f
	ret pe			;5250
	jp 0b716h		;5251
	dec d			;5254
	add hl,hl		;5255
	ld a,a			;5256
	jp c,0d986h		;5257
	dec hl			;525a
	jr nc,$-107		;525b
	defb 0fdh,0fah,040h ;illegal sequence	;525d
	ld h,(hl)		;5260
	cp e			;5261
	ld (hl),c		;5262
	ld (l7ff7h+1),hl	;5263
	and l			;5266
	ld a,(hl)		;5267
	inc sp			;5268
	call m,0453fh		;5269
	nop			;526c
	add a,c			;526d
	ld de,l7767h		;526e
	ld d,h			;5271
	ld a,a			;5272
	ret p			;5273
	jr nc,l52a9h		;5274
	jp m,0809fh		;5276
	jp (hl)			;5279
	ret nz			;527a
	ld de,01756h		;527b
	ld (hl),l		;527e
	ld b,d			;527f
	sub h			;5280
	push af			;5281
	ld a,a			;5282
	sub b			;5283
	ld sp,hl		;5284
	jr nc,$+59		;5285
	or a			;5287
	add a,d			;5288
	jp (hl)			;5289
	ret nz			;528a
	ld h,l			;528b
	ld de,l7766h		;528c
	ld d,d			;528f
	add hl,hl		;5290
	di			;5291
	ld a,a			;5292
	daa			;5293
	sub e			;5294
	inc sp			;5295
	ret m			;5296
	adc a,h			;5297
	call m,0987eh		;5298
	ld h,(hl)		;529b
	ld de,0160fh		;529c
	ld (hl),a		;529f
	ld (hl),l		;52a0
	sub d			;52a1
	djnz l52cch		;52a2
	call m,sub_7eb8h	;52a4
	adc a,083h		;52a7
l52a9h:
	dec hl			;52a9
	rst 38h			;52aa
	jp m,06130h		;52ab
	ld d,066h		;52ae
	halt			;52b0
	ld a,c			;52b1
	ld b,d			;52b2
	djnz $+117		;52b3
	ld a,l			;52b5
	ld sp,hl		;52b6
	xor a			;52b7
	call nc,0fe44h		;52b8
	ld h,l			;52bb
	xor b			;52bc
	add a,d			;52bd
	ld (09749h),hl		;52be
	rst 38h			;52c1
	ld (de),a		;52c2
l52c3h:
	add hl,bc		;52c3
	add hl,bc		;52c4
	ld a,h			;52c5
	ld l,a			;52c6
	add hl,bc		;52c7
	xor 0f5h		;52c8
	dec h			;52ca
	dec h			;52cb
l52cch:
	ld d,c			;52cc
	add a,c			;52cd
	dec h			;52ce
	add a,b			;52cf
	add hl,sp		;52d0
	rst 38h			;52d1
	nop			;52d2
	ld e,h			;52d3
	ld (02407h),hl		;52d4
	ld d,l			;52d7
	ld h,(hl)		;52d8
	ld h,c			;52d9
	ld (de),a		;52da
	ld a,a			;52db
	rst 30h			;52dc
	sub c			;52dd
	rst 38h			;52de
	ld (de),a		;52df
	ld (hl),d		;52e0
	add hl,hl		;52e1
	rst 38h			;52e2
	defb 0fdh,0c0h,022h ;illegal sequence	;52e3
	ld b,l			;52e6
	ld (l510ah),hl		;52e7
	ld h,c			;52ea
	ld h,d			;52eb
	inc h			;52ec
	rst 38h			;52ed
	ld a,(hl)		;52ee
	ret po			;52ef
l52f0h:
	ld b,h			;52f0
	ld b,d			;52f1
	dec h			;52f2
	ld (0ff25h),hl		;52f3
	jp nc,0dfffh		;52f6
	xor (hl)		;52f9
	dec a			;52fa
	sub h			;52fb
	ld (l467fh),hl		;52fc
	sub b			;52ff
	sub a			;5300
	ld (hl),e		;5301
	rst 38h			;5302
	ccf			;5303
	ld e,c			;5304
	ld a,(hl)		;5305
	ld c,a			;5306
	ld a,a			;5307
	ld de,0337fh		;5308
	ld a,e			;530b
	or a			;530c
	rst 38h			;530d
	ld e,a			;530e
	xor h			;530f
	pop bc			;5310
	ld a,a			;5311
	ld b,l			;5312
	ld d,c			;5313
	ld d,d			;5314
	ld a,a			;5315
	ex de,hl		;5316
	rst 38h			;5317
	rst 8			;5318
	push de			;5319
	jp 0247eh		;531a
	ld d,d			;531d
	dec h			;531e
	ld a,a			;531f
	call z,sub_7997h	;5320
	rst 30h			;5323
	rst 38h			;5324
	ex de,hl		;5325
	inc hl			;5326
	cp 007h			;5327
	ld (02255h),hl		;5329
	rst 38h			;532c
	cp e			;532d
	ld b,a			;532e
	add a,b			;532f
	inc de			;5330
	add a,l			;5331
	ld a,a			;5332
	ld a,a			;5333
	ld b,(hl)		;5334
	sub d			;5335
	or d			;5336
	add a,b			;5337
	cp 027h			;5338
	sbc a,c			;533a
	ld a,a			;533b
	and d			;533c
	nop			;533d
	adc a,d			;533e
	dec a			;533f
	and e			;5340
	add a,b			;5341
	ld sp,hl		;5342
	jp pe,01effh		;5343
	add hl,hl		;5346
	ld a,a			;5347
	adc a,e			;5348
	sub b			;5349
	jp m,00957h		;534a
	dec bc			;534d
	ld hl,(0ff09h)		;534e
	ld a,(hl)		;5351
	adc a,(hl)		;5352
	cp 03ch			;5353
	ret m			;5355
	ld a,a			;5356
	ld d,a			;5357
	nop			;5358
	call m,0fcf4h		;5359
	ld a,a			;535c
	ld l,a			;535d
	ei			;535e
	or b			;535f
	add hl,bc		;5360
	sub b			;5361
	jr nc,$-56		;5362
	ei			;5364
	dec sp			;5365
	inc bc			;5366
	cp 07fh			;5367
	ld a,a			;5369
	djnz $-31		;536a
	ld a,a			;536c
	ld a,b			;536d
	rlca			;536e
	rst 8			;536f
	add a,d			;5370
	jp (hl)			;5371
	sub c			;5372
	sub d			;5373
	rst 38h			;5374
	ld (00335h),sp		;5375
	halt			;5379
	sub b			;537a
	ld a,(bc)		;537b
	or (hl)			;537c
l537dh:
	add a,c			;537d
	defb 0fdh,012h,022h ;illegal sequence	;537e
	add a,b			;5381
	ld a,l			;5382
	rst 0			;5383
	sub b			;5384
	defb 0ddh,0c9h,076h ;illegal sequence	;5385
	ld e,c			;5388
	add a,h			;5389
	ld c,a			;538a
	ex af,af'		;538b
	exx			;538c
	ld a,a			;538d
	rst 20h			;538e
	ret nz			;538f
	ld d,a			;5390
	halt			;5391
	ld h,(hl)		;5392
	ld h,(hl)		;5393
	ld h,a			;5394
	halt			;5395
	inc b			;5396
	ld h,l			;5397
	sub d			;5398
	ld e,e			;5399
	ld h,(hl)		;539a
	ld d,c			;539b
	add a,a			;539c
	ld h,d			;539d
	add hl,hl		;539e
	adc a,a			;539f
	call nc,sub_6456h	;53a0
	ld h,l			;53a3
	ld c,c			;53a4
	dec b			;53a5
	rrca			;53a6
	sbc a,d			;53a7
	add hl,sp		;53a8
	sbc a,e			;53a9
	ld l,0d2h		;53aa
	and h			;53ac
	ex (sp),hl		;53ad
	nop			;53ae
	sbc a,a			;53af
	ld a,a			;53b0
	jp nz,l56b2h		;53b1
	ld a,(hl)		;53b4
	ld a,a			;53b5
	ld (bc),a		;53b6
	ld h,(hl)		;53b7
	ld b,h			;53b8
	ld a,e			;53b9
	ld h,c			;53ba
	ld de,09022h		;53bb
	ld a,d			;53be
	dec e			;53bf
l53c0h:
	dec h			;53c0
	ld h,(hl)		;53c1
	ld e,c			;53c2
	sub (hl)		;53c3
	ld a,b			;53c4
	rrca			;53c5
	call m,04a00h		;53c6
	sub b			;53c9
	sbc a,h			;53ca
	ld b,e			;53cb
	dec bc			;53cc
	or b			;53cd
	ld a,a			;53ce
	ret m			;53cf
	ld b,b			;53d0
	ld h,l			;53d1
	ld h,(hl)		;53d2
	ld b,d			;53d3
	ld b,(hl)		;53d4
	add a,a			;53d5
	ld a,a			;53d6
	ld h,d			;53d7
	ld b,a			;53d8
	halt			;53d9
	add a,h			;53da
	ld (hl),c		;53db
	adc a,c			;53dc
	xor h			;53dd
	ld b,h			;53de
	jp m,l7969h		;53df
	sbc a,c			;53e2
	rrca			;53e3
	ex (sp),hl		;53e4
	nop			;53e5
	inc bc			;53e6
	ld a,(hl)		;53e7
	ret po			;53e8
	adc a,c			;53e9
	rst 38h			;53ea
	cp e			;53eb
	sbc a,l			;53ec
	ld l,a			;53ed
	jp nz,l4500h		;53ee
	ld d,h			;53f1
	ld d,l			;53f2
	ld b,(hl)		;53f3
	ld h,(hl)		;53f4
	ld h,d			;53f5
	inc h			;53f6
	ld (l6647h),hl		;53f7
	xor 086h		;53fa
	ld l,a			;53fc
	sub d			;53fd
	ld d,c			;53fe
	ld (hl),a		;53ff
	ld a,a			;5400
	sbc a,(hl)		;5401
	dec h			;5402
	ld e,c			;5403
	rrca			;5404
	sbc a,b			;5405
	nop			;5406
	jr nc,l53c0h		;5407
	and d			;5409
	ld e,c			;540a
	add a,d			;540b
sub_540ch:
	jp po,l5f80h		;540c
	add a,l			;540f
	ld bc,l4246h		;5410
	ld d,l			;5413
	ld d,h			;5414
	ld h,d			;5415
	ld (0814bh),hl		;5416
	ld b,d			;5419
	ld d,0eah		;541a
	dec (hl)		;541c
	dec h			;541d
	ld l,a			;541e
	jp 00f92h		;541f
	exx			;5422
	sbc a,c			;5423
	sub d			;5424
	halt			;5425
	and d			;5426
	ld a,d			;5427
	or (hl)			;5428
	sub a			;5429
	ld d,080h		;542a
	ld e,a			;542c
	add a,l			;542d
	ld bc,l6467h		;542e
	dec h			;5431
	ld d,l			;5432
	sub d			;5433
	inc h			;5434
	ld e,e			;5435
	xor 013h		;5436
	ld d,d			;5438
	ld l,a			;5439
	ld de,0f092h		;543a
	ld (hl),c		;543d
	inc d			;543e
	rrca			;543f
	rst 28h			;5440
	ld a,a			;5441
l5442h:
	ex de,hl		;5442
	nop			;5443
	inc c			;5444
	ld a,e			;5445
	cp e			;5446
	ld a,c			;5447
	inc d			;5448
	sub a			;5449
	add a,b			;544a
	pop hl			;544b
	nop			;544c
	ld h,a			;544d
	ld h,l			;544e
	ld b,d			;544f
	ld e,c			;5450
	dec h			;5451
	rla			;5452
	ld b,l			;5453
	ld (hl),a		;5454
	ld l,a			;5455
	ld h,d			;5456
	add hl,hl		;5457
	adc a,l			;5458
	pop af			;5459
	inc de			;545a
	cp (hl)			;545b
	rrca			;545c
	and h			;545d
	sbc a,e			;545e
	cp c			;545f
	cp 0c9h			;5460
	add hl,bc		;5462
	cp 074h			;5463
	inc c			;5465
	sub a			;5466
	cp e			;5467
	cp e			;5468
	or a			;5469
	rlca			;546a
	ld a,a			;546b
	rlca			;546c
	ld a,a			;546d
	ld b,066h		;546e
	or d			;5470
	jp m,l71e5h		;5471
	halt			;5474
	out (c),e		;5475
	ld l,a			;5477
	and h			;5478
	ld d,c			;5479
l547ah:
	or c			;547a
	cp 0afh			;547b
	rrca			;547d
	sbc a,b			;547e
	sbc a,e			;547f
	cp e			;5480
sub_5481h:
	or c			;5481
	sub a			;5482
	cp 087h			;5483
	ld a,a			;5485
	sub c			;5486
	sub b			;5487
	ld a,e			;5488
	add hl,bc		;5489
	ld a,a			;548a
	call m,05512h		;548b
	call po,01722h		;548e
	cp e			;5491
	sbc hl,hl		;5492
	ld h,c			;5494
	ld (034edh),hl		;5495
	ld d,c			;5498
	ld (de),a		;5499
	adc a,l			;549a
	call p,00ff3h		;549b
	add hl,de		;549e
	ld de,01911h		;549f
	add a,a			;54a2
	ld a,e			;54a3
	ld h,a			;54a4
	ld (hl),l		;54a5
	ld a,a			;54a6
	add a,d			;54a7
	ld (hl),a		;54a8
	ld a,a			;54a9
	ret p			;54aa
	ld d,h			;54ab
l54ach:
	defb 0fdh,058h,082h ;illegal sequence	;54ac
l54afh:
	ld (hl),a		;54af
	or b			;54b0
	call pe,01256h		;54b1
	out (06fh),a		;54b4
	ld de,08b55h		;54b6
	rst 10h			;54b9
	rrca			;54ba
	ret nc			;54bb
	ld (09321h),hl		;54bc
	add a,(iy+07eh)		;54bf
	add hl,bc		;54c2
	rst 38h			;54c3
	jp po,l5180h		;54c4
	ld a,c			;54c7
	ld a,a			;54c8
	call m,sub_4408h	;54c9
	ld c,c			;54cc
	inc h			;54cd
	inc b			;54ce
	ld d,a			;54cf
	ld (hl),c		;54d0
	ld h,l			;54d1
	ld de,0ee61h		;54d2
	xor h			;54d5
	xor 053h		;54d6
	rst 28h			;54d8
	cp (hl)			;54d9
	rrca			;54da
	or l			;54db
	rlca			;54dc
	call m,0ca3bh		;54dd
	add a,b			;54e0
	in a,(096h)		;54e1
	ld c,a			;54e3
	add hl,bc		;54e4
	ld a,a			;54e5
	ret po			;54e6
	or d			;54e7
	xor 0a4h		;54e8
	call pe,0564ch		;54ea
	xor 026h		;54ed
	ld e,d			;54ef
	ld b,h			;54f0
	rst 30h			;54f1
	ld e,(hl)		;54f2
	di			;54f3
	jp m,09f0fh		;54f4
	ld (085b9h),hl		;54f7
	call pe,0cf90h		;54fa
	add a,a			;54fd
	ld e,a			;54fe
	nop			;54ff
	ret po			;5500
	dec b			;5501
	add hl,hl		;5502
	ld d,a			;5503
	ld (hl),a		;5504
	call pe,sub_6606h	;5505
	ld d,d			;5508
	push af			;5509
	push hl			;550a
	ret m			;550b
	rst 28h			;550c
	sub c			;550d
	cpl			;550e
	rrca			;550f
	and c			;5510
	ld (03b19h),hl		;5511
	push af			;5514
l5515h:
	ld a,a			;5515
	ld a,a			;5516
	ld b,024h		;5517
	inc b			;5519
	ld h,a			;551a
	ld h,(hl)		;551b
	ld h,c			;551c
	ld d,065h		;551d
	jp (hl)			;551f
	ld e,e			;5520
sub_5521h:
	push af			;5521
	ld (hl),c		;5522
	push af			;5523
	or 0b7h			;5524
	rrca			;5526
	ret nz			;5527
	dec hl			;5528
	rst 30h			;5529
	ld a,a			;552a
	sbc a,(hl)		;552b
	ld (hl),e		;552c
l552dh:
	nop			;552d
	halt			;552e
	add hl,bc		;552f
	nop			;5530
	rst 38h			;5531
	ld a,(hl)		;5532
	add hl,bc		;5533
	ld (048ech),hl		;5534
	ld h,c			;5537
	ld c,(hl)		;5538
	dec d			;5539
	ret pe			;553a
	ld b,(hl)		;553b
	ret p			;553c
	xor a			;553d
	ld b,(hl)		;553e
	ld (hl),e		;553f
	rrca			;5540
	ld l,e			;5541
	sub b			;5542
	rst 18h			;5543
	ld a,a			;5544
	ld a,c			;5545
	adc a,e			;5546
	ret m			;5547
	rst 38h			;5548
	nop			;5549
	ld e,a			;554a
	inir			;554b
	ld l,a			;554d
	ld c,b			;554e
	dec d			;554f
	xor 092h		;5550
	adc a,l			;5552
	ret p			;5553
	cpl			;5554
	sub h			;5555
	ld h,(hl)		;5556
	ld (hl),e		;5557
	rrca			;5558
	ld h,e			;5559
	ld de,07f91h		;555a
	ld sp,hl		;555d
	ret po			;555e
	dec hl			;555f
	ld d,066h		;5560
	dec d			;5562
	ld b,l			;5563
	ld b,d			;5564
	defb 0edh ;next byte illegal after ed	;5565
	add a,l			;5566
	sub h			;5567
	ret p			;5568
	ld h,e			;5569
	ld b,h			;556a
	adc a,l			;556b
	ld sp,00f21h		;556c
	inc a			;556f
	ld d,l			;5570
	rrca			;5571
	adc a,a			;5572
	add hl,de		;5573
	sub c			;5574
	call m,0ff78h		;5575
	ld a,a			;5578
	adc a,d			;5579
	ld b,l			;557a
	daa			;557b
	rst 28h			;557c
	ld a,a			;557d
	or d			;557e
	adc a,c			;557f
	rst 0			;5580
	adc a,d			;5581
	adc a,l			;5582
	ld h,l			;5583
	rrca			;5584
	ld a,c			;5585
sub_5586h:
	ld d,l			;5586
	rrca			;5587
	ld e,029h		;5588
	ld hl,0dc7dh		;558a
	ld a,a			;558d
	ccf			;558e
	add hl,bc		;558f
	ld a,a			;5590
	adc a,b			;5591
	rra			;5592
	ld b,d			;5593
	ld b,a			;5594
	ld d,0e9h		;5595
	dec l			;5597
	ld d,h			;5598
	ret m			;5599
	ld a,a			;559a
	rst 30h			;559b
	nop			;559c
	ld h,(hl)		;559d
	ld d,h			;559e
	ld b,l			;559f
	sub d			;55a0
	ld h,016h		;55a1
	sbc a,e			;55a3
	call m,0c80fh		;55a4
	sbc a,c			;55a7
	ld hl,l658bh		;55a8
	inc sp			;55ab
l55ach:
	jr nc,l55ach		;55ac
	ld (hl),a		;55ae
	rst 38h			;55af
	jp m,023e1h		;55b0
	rst 38h			;55b3
	sbc a,b			;55b4
	ld a,a			;55b5
	ld d,c			;55b6
	ld b,d			;55b7
	ld h,c			;55b8
	inc h			;55b9
	add a,l			;55ba
	add a,a			;55bb
	ld (hl),a		;55bc
	rst 30h			;55bd
	jp po,00055h		;55be
	sub h			;55c1
	rst 38h			;55c2
	sbc a,d			;55c3
	call m,sub_780fh	;55c4
	ld (0970fh),hl		;55c7
	sbc a,c			;55ca
	inc sp			;55cb
	rst 20h			;55cc
	rst 20h			;55cd
	ld a,a			;55ce
	jp z,00700h		;55cf
	ld a,a			;55d2
	nop			;55d3
	ld a,a			;55d4
	rrca			;55d5
	cp 024h			;55d6
	ld i,a			;55d8
	ld c,c			;55da
	sub d			;55db
	rst 30h			;55dc
	jp p,l7155h		;55dd
	ld b,h			;55e0
	ld a,a			;55e1
	rrca			;55e2
	dec sp			;55e3
	ld (0980fh),hl		;55e4
	dec b			;55e7
	sub e			;55e8
	cp 0f1h			;55e9
	rla			;55eb
sub_55ech:
	inc bc			;55ec
	nop			;55ed
	nop			;55ee
	ld a,a			;55ef
	ret p			;55f0
	jp 0114bh		;55f1
	inc d			;55f4
	and 037h		;55f5
	ld c,0bbh		;55f7
	ld a,a			;55f9
	ld sp,hl		;55fa
	di			;55fb
	nop			;55fc
	dec sp			;55fd
	rrca			;55fe
	push af			;55ff
	add a,l			;5600
	ret m			;5601
	ld a,a			;5602
	ld h,a			;5603
	sub d			;5604
	ld sp,0c785h		;5605
	ld a,a			;5608
	ret m			;5609
	add hl,hl		;560a
	ex de,hl		;560b
	ld a,(l500dh)		;560c
	ld (015f5h),hl		;560f
	ld a,b			;5612
	ld d,h			;5613
	ld a,a			;5614
	jp 01b0fh		;5615
	cp e			;5618
	cp c			;5619
	and 05dh		;561a
	ld a,(0947fh)		;561c
	add a,b			;561f
	ld a,a			;5620
	jr nc,$+129		;5621
	ld a,(bc)		;5623
	ld (hl),c		;5624
	xor l			;5625
	xor 0edh		;5626
	ld a,a			;5628
	ld (0857fh),hl		;5629
	ld d,d			;562c
	dec h			;562d
	cp 071h			;562e
	rrca			;5630
	rst 10h			;5631
	rst 38h			;5632
	sub d			;5633
	call pe,03037h		;5634
	cp 0e1h			;5637
	sub c			;5639
	ld a,l			;563a
	inc sp			;563b
	rst 38h			;563c
	call m,0242ah		;563d
	ld a,a			;5640
	ld sp,l5442h		;5641
l5644h:
	defb 0edh ;next byte illegal after ed	;5644
l5645h:
	ld a,(08c6eh)		;5645
	adc a,c			;5648
	ld d,(hl)		;5649
	ld d,l			;564a
	cp 0f7h			;564b
	ld a,(hl)		;564d
	ld a,a			;564e
	ld b,a			;564f
	ld (hl),c		;5650
	jr nc,$+11		;5651
	cp 03ch			;5653
	ld d,c			;5655
	cp 0fch			;5656
	ld (hl),07fh		;5658
	ld h,l			;565a
	call pe,sub_59feh	;565b
	rst 28h			;565e
	ld e,e			;565f
	ld (hl),b		;5660
	cp b			;5661
	inc bc			;5662
	dec h			;5663
	call z,00c0fh		;5664
	ex de,hl		;5667
	rrca			;5668
	cp 07dh			;5669
	in a,(090h)		;566b
	push af			;566d
	call m,sub_7f27h	;566e
	xor l			;5671
	cp 009h			;5672
	sub d			;5674
	ld (bc),a		;5675
	add hl,hl		;5676
	adc a,(hl)		;5677
	inc a			;5678
	ex (sp),hl		;5679
	ld (bc),a		;567a
	ld d,d			;567b
	add a,l			;567c
	rst 30h			;567d
l567eh:
	rrca			;567e
	cp c			;567f
	ld a,a			;5680
l5681h:
	cp e			;5681
	rst 38h			;5682
	adc a,(hl)		;5683
	call p,0aff9h		;5684
	add hl,bc		;5687
l5688h:
	ld a,a			;5688
	jp po,0b102h		;5689
	dec d			;568c
	dec h			;568d
	ld b,h			;568e
	cp 0cch			;568f
	rst 28h			;5691
	ld e,c			;5692
	add a,b			;5693
	ld (hl),b		;5694
	and l			;5695
	rst 38h			;5696
	xor 00fh		;5697
	ld a,a			;5699
	dec a			;569a
	ld de,l7fb9h		;569b
	defb 0ddh,000h,0fah ;illegal sequence	;569e
	call m,sub_602fh	;56a1
	ld (hl),07fh		;56a4
	ld a,l			;56a6
	ld c,a			;56a7
	rst 38h			;56a8
	ld e,a			;56a9
	ret p			;56aa
	cp h			;56ab
	dec b			;56ac
	ld (hl),a		;56ad
	ld a,(hl)		;56ae
	add hl,bc		;56af
	ld l,h			;56b0
	rst 38h			;56b1
l56b2h:
	ld de,02973h		;56b2
	rst 38h			;56b5
	xor l			;56b6
	adc a,a			;56b7
l56b8h:
	ld d,0fah		;56b8
	rst 0			;56ba
	inc bc			;56bb
	ld (hl),c		;56bc
	rst 38h			;56bd
	call m,sub_420bh	;56be
	ld a,a			;56c1
l56c2h:
	add a,0f7h		;56c2
	cp h			;56c4
	inc a			;56c5
	rlca			;56c6
	ld (hl),09ch		;56c7
	rst 28h			;56c9
	dec bc			;56ca
	ld a,a			;56cb
	res 0,d			;56cc
	ld a,d			;56ce
	rst 10h			;56cf
	add a,e			;56d0
	ret po			;56d1
	pop de			;56d2
	add hl,hl		;56d3
	ld a,a			;56d4
	ld b,h			;56d5
	ld b,d			;56d6
	ex de,hl		;56d7
	xor c			;56d8
	ld (hl),a		;56d9
	jp pe,0f199h		;56da
	ld a,a			;56dd
	rst 8			;56de
	add a,b			;56df
	ld a,d			;56e0
	ld (hl),e		;56e1
	ei			;56e2
	ex de,hl		;56e3
	add a,a			;56e4
	ld l,b			;56e5
	nop			;56e6
	add hl,sp		;56e7
	sbc a,a			;56e8
	add a,b			;56e9
	ret po			;56ea
	sub c			;56eb
l56ech:
	ld (hl),c		;56ec
	rst 38h			;56ed
	ld l,(hl)		;56ee
	ld bc,(l52f0h)		;56ef
	add a,a			;56f3
	sbc a,09dh		;56f4
	jr c,l5716h		;56f6
	ld (0fe12h),hl		;56f8
	ret p			;56fb
	dec e			;56fc
	defb 0ddh,0c9h,076h ;illegal sequence	;56fd
	ld h,l			;5700
	add a,h			;5701
	ex af,af'		;5702
	ld a,0d9h		;5703
	ld c,a			;5705
	ld b,09bh		;5706
	rst 8			;5708
	ret c			;5709
	ld c,l			;570a
	sub b			;570b
	ret nz			;570c
	ld c,b			;570d
	sub e			;570e
	inc sp			;570f
	inc sp			;5710
	add hl,sp		;5711
l5712h:
	jp c,0cd51h		;5712
	ld b,b			;5715
l5716h:
	dec d			;5716
	add hl,hl		;5717
	ld d,c			;5718
	rla			;5719
	ld de,l5977h		;571a
	add hl,hl		;571d
	add a,d			;571e
	di			;571f
	inc sp			;5720
	sbc a,d			;5721
	sbc a,a			;5722
	ex de,hl		;5723
	cp (hl)			;5724
	add a,b			;5725
	inc h			;5726
	and h			;5727
	jr nz,l56c2h		;5728
	add a,e			;572a
	ld c,a			;572b
	adc a,b			;572c
	sub b			;572d
	jr c,l56b8h		;572e
	ld b,099h		;5730
	sbc a,l			;5732
	defb 0ddh,0ddh,0c0h ;illegal sequence	;5733
	ld a,h			;5736
	ret z			;5737
	rst 38h			;5738
	nop			;5739
	rrca			;573a
	inc bc			;573b
	add hl,bc		;573c
	sbc a,h			;573d
	ld a,c			;573e
	ld a,a			;573f
	adc a,(hl)		;5740
	ret nc			;5741
	ld l,c			;5742
	ret nc			;5743
sub_5744h:
	ld b,h			;5744
	ld (0007eh),hl		;5745
	call z,07f21h		;5748
	sub (hl)		;574b
	ld (bc),a		;574c
	ld d,c			;574d
	ex (sp),hl		;574e
	ld l,h			;574f
	sub 071h		;5750
	adc a,e			;5752
	add a,h			;5753
	sbc a,a			;5754
	ld e,a			;5755
	ld c,l			;5756
	ld d,d			;5757
	ld l,e			;5758
	add a,b			;5759
	ex af,af'		;575a
	adc a,e			;575b
	ld de,03959h		;575c
	and b			;575f
	push af			;5760
	jr c,l56ech		;5761
	ld b,b			;5763
	inc bc			;5764
	ld a,a			;5765
	sub b			;5766
	sub b			;5767
	call 0097ch		;5768
	sbc a,(hl)		;576b
	adc a,c			;576c
	ld (hl),h		;576d
l576eh:
	add a,d			;576e
	ld a,h			;576f
	sbc a,l			;5770
	ld a,a			;5771
	ld a,l			;5772
	or h			;5773
	ld l,d			;5774
	ret nc			;5775
	ld b,l			;5776
	add a,d			;5777
	sbc a,l			;5778
	ld c,e			;5779
	xor e			;577a
	ld b,e			;577b
	sub d			;577c
	rst 0			;577d
	call nc,05561h		;577e
	adc a,c			;5781
	add a,d			;5782
	ld de,0c7d7h		;5783
	ld a,a			;5786
	call z,sub_4b9ah	;5787
	xor c			;578a
	add a,b			;578b
	sub 025h		;578c
	ld e,(hl)		;578e
	sub d			;578f
	ret p			;5790
	ld c,(hl)		;5791
	ld a,a			;5792
	dec d			;5793
	jp p,09840h		;5794
	adc a,b			;5797
	add hl,bc		;5798
	ex af,af'		;5799
	sbc a,h			;579a
	ret m			;579b
	dec h			;579c
	inc c			;579d
	rst 10h			;579e
	add a,b			;579f
	ld l,c			;57a0
	inc (iy-07eh)		;57a1
	ld c,e			;57a4
	rst 0			;57a5
	rst 38h			;57a6
	jp 028abh		;57a7
	ld d,l			;57aa
	ld c,(hl)		;57ab
	ld (bc),a		;57ac
	ret nc			;57ad
	ei			;57ae
	jp nc,00306h		;57af
	sub d			;57b2
	ld b,c			;57b3
	ld d,d			;57b4
	inc a			;57b5
	ld a,a			;57b6
	ld d,a			;57b7
	cp 02bh			;57b8
	call nc,0006fh		;57ba
	defb 0ddh,0dah,0d3h ;illegal sequence	;57bd
	ld (08aa9h),hl		;57c0
	ld a,(hl)		;57c3
	sbc a,c			;57c4
	ret z			;57c5
	nop			;57c6
	nop			;57c7
	add a,e			;57c8
	inc sp			;57c9
	sbc a,b			;57ca
	or c			;57cb
	ld e,c			;57cc
	ld bc,08890h		;57cd
	add a,e			;57d0
	sbc a,b			;57d1
	nop			;57d2
	sub l			;57d3
	sbc a,b			;57d4
	add a,b			;57d5
	adc a,d			;57d6
	defb 0ddh,04fh,0b0h ;illegal sequence	;57d7
	cp 023h			;57da
	jr nc,l576eh		;57dc
	rst 10h			;57de
	ld a,a			;57df
	call po,sub_4433h	;57e0
	ld (bc),a		;57e3
	pop de			;57e4
	ld a,l			;57e5
	cp d			;57e6
	add a,d			;57e7
	inc bc			;57e8
	ld (bc),a		;57e9
	adc a,c			;57ea
	ld b,(hl)		;57eb
	ld d,c			;57ec
	pop hl			;57ed
	jp 05525h		;57ee
	ld d,l			;57f1
	sub 0d7h		;57f2
	ld a,(hl)		;57f4
	call po,sub_7cd7h	;57f5
	jp c,09f0ch		;57f8
	nop			;57fb
	adc a,d			;57fc
	ld e,(ix+074h)		;57fd
	inc sp			;5800
	sub b			;5801
	ex af,af'		;5802
	and b			;5803
	push bc			;5804
	add hl,sp		;5805
	pop hl			;5806
	ld bc,08059h		;5807
	jr c,l583ch		;580a
	add a,b			;580c
	sbc a,c			;580d
	sub c			;580e
	ld a,a			;580f
	ld (0789ch),hl		;5810
	call 080dbh		;5813
	halt			;5816
	cp 074h			;5817
	ld a,l			;5819
	ld c,c			;581a
	ret m			;581b
	ld a,a			;581c
	push de			;581d
	ld d,h			;581e
	ret nc			;581f
	ld e,a			;5820
	pop de			;5821
	ld (hl),h		;5822
	add a,b			;5823
	sub (hl)		;5824
	ld a,(hl)		;5825
	ret po			;5826
	or b			;5827
	ld d,l			;5828
	rst 38h			;5829
	push de			;582a
	cpl			;582b
	nop			;582c
	xor d			;582d
	ret nc			;582e
	inc a			;582f
	push bc			;5830
	sbc a,l			;5831
	cp e			;5832
	cp e			;5833
	xor 0a1h		;5834
	add hl,hl		;5836
	inc bc			;5837
	jp (hl)			;5838
	jr nz,$-107		;5839
	sub c			;583b
l583ch:
	ld e,c			;583c
	adc a,c			;583d
	call m,08608h		;583e
	dec d			;5841
	add a,d			;5842
	inc d			;5843
	ld a,a			;5844
	ld a,e			;5845
	dec c			;5846
	inc hl			;5847
	rst 10h			;5848
	ret nc			;5849
	rst 38h			;584a
	ld h,(hl)		;584b
	cp 07ch			;584c
	dec c			;584e
	ld a,a			;584f
	add a,d			;5850
	ld de,l4254h		;5851
	ld a,(hl)		;5854
	push de			;5855
	cp c			;5856
	call po,089c3h		;5857
	rst 38h			;585a
	dec h			;585b
	pop bc			;585c
	add a,e			;585d
	add hl,hl		;585e
	out (039h),a		;585f
	xor d			;5861
	nop			;5862
	add a,h			;5863
	ld c,a			;5864
	cp c			;5865
	call m,0aac0h		;5866
	and (hl)		;5869
	add a,e			;586a
	cp e			;586b
	ld (hl),e		;586c
	ld a,b			;586d
	defb 0ddh,01bh,0a6h ;illegal sequence	;586e
	xor e			;5871
	ld a,a			;5872
	exx			;5873
	ld h,a			;5874
	ld sp,06980h		;5875
	sub l			;5878
	rst 28h			;5879
	ld d,c			;587a
	adc a,b			;587b
	add a,b			;587c
	ret p			;587d
	inc hl			;587e
	add a,e			;587f
	ret m			;5880
	jr $+81			;5881
	inc c			;5883
	add a,b			;5884
	add hl,bc		;5885
	sub b			;5886
	cp 007h			;5887
	rst 0			;5889
	call nc,07f99h		;588a
sub_588dh:
	ret			;588d
	add a,b			;588e
	ld e,c			;588f
	pop af			;5890
	add hl,de		;5891
	jr z,$+38		;5892
	ld (0222ch),hl		;5894
	defb 0fdh,0a7h,0d9h ;illegal sequence	;5897
	jr c,$+86		;589a
	add a,e			;589c
	dec de			;589d
	adc a,a			;589e
	ret m			;589f
	and d			;58a0
	ld a,b			;58a1
	ld b,(hl)		;58a2
	in a,(09ch)		;58a3
	adc a,c			;58a5
	in a,(0bbh)		;58a6
	cp l			;58a8
	inc b			;58a9
	xor l			;58aa
	ld (de),a		;58ab
	ret			;58ac
	in a,(0bdh)		;58ad
	ld bc,l444ah		;58af
	sub b			;58b2
	ld (hl),a		;58b3
	rst 30h			;58b4
	add a,c			;58b5
	adc a,c			;58b6
	jr c,l583ch		;58b7
	call 03f61h		;58b9
	nop			;58bc
	add a,h			;58bd
	ld h,(hl)		;58be
	ld a,a			;58bf
	ret nc			;58c0
	add a,b			;58c1
	ld a,l			;58c2
	ld h,b			;58c3
l58c4h:
	add hl,bc		;58c4
	jr nc,l58c7h		;58c5
l58c7h:
	call 0f8d7h		;58c7
	ld a,a			;58ca
	jp z,01157h		;58cb
	add a,b			;58ce
	dec h			;58cf
	call pe,08025h		;58d0
	add a,d			;58d3
	sbc a,c			;58d4
	ld (de),a		;58d5
	cp 02fh			;58d6
	call z,0895ch		;58d8
	inc l			;58db
	ld (hl),03ah		;58dc
	exx			;58de
	rl c			;58df
	dec l			;58e1
	rst 28h			;58e2
	call 0f074h		;58e3
	ld (hl),l		;58e6
	ld a,b			;58e7
	sbc a,d			;58e8
	ld a,(bc)		;58e9
	sbc a,l			;58ea
	sub h			;58eb
	rlca			;58ec
	exx			;58ed
	add a,l			;58ee
	call c,0ad7dh		;58ef
	dec hl			;58f2
	cp e			;58f3
	jr nc,l5963h		;58f4
	push af			;58f6
	ld b,b			;58f7
	add hl,sp		;58f8
	adc a,c			;58f9
	rrca			;58fa
	jr c,l5903h		;58fb
	ccf			;58fd
	ccf			;58fe
	ret m			;58ff
	jr c,l593bh		;5900
	ld (hl),a		;5902
l5903h:
	add hl,hl		;5903
	ret			;5904
	add a,b			;5905
	or h			;5906
	inc c			;5907
	add a,(hl)		;5908
	ld c,a			;5909
	ld b,h			;590a
	ld a,a			;590b
	adc a,d			;590c
	add a,b			;590d
	ex de,hl		;590e
	add a,c			;590f
	jp po,l51edh		;5910
	add hl,de		;5913
	ld (hl),b		;5914
	rla			;5915
	ld hl,08b14h		;5916
	sub h			;5919
	ld a,(hl)		;591a
	ret nz			;591b
	pop de			;591c
	push bc			;591d
	add hl,sp		;591e
	add a,b			;591f
	or (hl)			;5920
	rra			;5921
	sub c			;5922
	ld a,a			;5923
	inc b			;5924
	ld l,(hl)		;5925
	cp e			;5926
	adc a,(hl)		;5927
	add a,b			;5928
	ld (de),a		;5929
	xor l			;592a
	ld a,(hl)		;592b
	exx			;592c
	call p,09f7ah		;592d
	and e			;5930
	ld (bc),a		;5931
	cp e			;5932
	jp c,02c9eh		;5933
	ld l,b			;5936
	nop			;5937
	ex af,af'		;5938
	inc bc			;5939
	add a,e			;593a
l593bh:
	ex af,af'		;593b
	add hl,bc		;593c
	inc bc			;593d
	ccf			;593e
	sbc a,c			;593f
	ld e,c			;5940
	jr c,l58c4h		;5941
	add a,b			;5943
	sub (hl)		;5944
	ld a,a			;5945
	rst 8			;5946
	add a,b			;5947
	ld b,c			;5948
	call 0dd7bh		;5949
	ld c,c			;594c
	ld a,a			;594d
	pop af			;594e
	jr $-106		;594f
	or c			;5951
	ld a,a			;5952
	ld b,h			;5953
	sbc a,(hl)		;5954
	xor 064h		;5955
	adc a,d			;5957
	push af			;5958
	jp z,07eb2h		;5959
	cp l			;595c
	or d			;595d
l595eh:
	cp (hl)			;595e
	add a,b			;595f
	inc l			;5960
	sub c			;5961
	ld c,d			;5962
l5963h:
	add a,c			;5963
	ret m			;5964
	ld d,e			;5965
sub_5966h:
	defb 0ddh,0e4h,0c4h ;illegal sequence	;5966
	or 05dh			;5969
	ld a,(hl)		;596b
	ld b,(hl)		;596c
	push af			;596d
	jp nc,0a38fh		;596e
	defb 0ddh,089h,079h ;illegal sequence	;5971
	ld (de),a		;5974
	ld e,l			;5975
	ex af,af'		;5976
l5977h:
	ret pe			;5977
	ei			;5978
	ld b,c			;5979
	di			;597a
	ld sp,hl		;597b
	cp (hl)			;597c
	ld de,08333h		;597d
	add a,c			;5980
	add a,(hl)		;5981
	ld sp,hl		;5982
	pop af			;5983
	add a,b			;5984
	inc hl			;5985
	ld (hl),b		;5986
	adc a,b			;5987
	ld (hl),h		;5988
	or a			;5989
	call c,0c99fh		;598a
	sub d			;598d
l598eh:
	add a,b			;598e
	halt			;598f
	add a,b			;5990
	ld e,b			;5991
	pop hl			;5992
	nop			;5993
	inc h			;5994
	adc a,d			;5995
	add hl,sp		;5996
	cp c			;5997
	sbc a,b			;5998
	ex af,af'		;5999
	ld b,(hl)		;599a
	adc a,b			;599b
	jp 0c751h		;599c
	add a,c			;599f
	ld l,a			;59a0
	inc d			;59a1
	add a,b			;59a2
	ld d,h			;59a3
	ld (hl),b		;59a4
	push af			;59a5
	xor l			;59a6
	add a,c			;59a7
	halt			;59a8
	xor l			;59a9
	ld h,e			;59aa
	cp l			;59ab
	adc a,b			;59ac
	ld b,(hl)		;59ad
	xor e			;59ae
	cp l			;59af
	ld (de),a		;59b0
	ld b,(hl)		;59b1
	rst 38h			;59b2
	ld c,c			;59b3
	cp b			;59b4
	ld a,d			;59b5
	inc (hl)		;59b6
	nop			;59b7
	ei			;59b8
	ld d,0bbh		;59b9
	nop			;59bb
	rrca			;59bc
	jp p,08056h		;59bd
	jr nc,l595eh		;59c0
	dec e			;59c2
	dec c			;59c3
	in a,(0adh)		;59c4
	add a,l			;59c6
	ld c,a			;59c7
	cp l			;59c8
	cp 0c5h			;59c9
	sub c			;59cb
	jr z,l5a29h		;59cc
	ld e,(hl)		;59ce
	ld (hl),c		;59cf
	add a,c			;59d0
	inc a			;59d1
	ld b,h			;59d2
	ld a,a			;59d3
sub_59d4h:
	and (hl)		;59d4
	add a,a			;59d5
	dec c			;59d6
	add a,e			;59d7
	add hl,sp		;59d8
	adc a,b			;59d9
	adc a,b			;59da
	cp l			;59db
	adc a,(ix+023h)		;59dc
	xor a			;59df
	jp po,l7b94h		;59e0
	defb 0ddh,0f5h,0a5h ;illegal sequence	;59e3
	sbc a,d			;59e6
	exx			;59e7
	push af			;59e8
	or a			;59e9
	add a,(hl)		;59ea
	inc e			;59eb
	and l			;59ec
	sbc a,d			;59ed
	adc a,b			;59ee
	adc a,c			;59ef
	or d			;59f0
	ld de,0b998h		;59f1
	nop			;59f4
	add a,b			;59f5
	jr nc,l5a28h		;59f6
	inc sp			;59f8
	sub e			;59f9
	or b			;59fa
	inc bc			;59fb
	ld a,e			;59fc
	sub e			;59fd
sub_59feh:
	ld sp,hl		;59fe
	add a,(hl)		;59ff
	add a,d			;5a00
	sub a			;5a01
	add a,l			;5a02
	sub h			;5a03
	xor (hl)		;5a04
	ld a,0c4h		;5a05
	ld c,h			;5a07
	inc d			;5a08
	ld d,h			;5a09
	ld (bc),a		;5a0a
	sub l			;5a0b
	ld c,(hl)		;5a0c
	or a			;5a0d
	add a,b			;5a0e
	dec h			;5a0f
	ld d,h			;5a10
	add a,b			;5a11
	and h			;5a12
	add hl,hl		;5a13
	and a			;5a14
	sub e			;5a15
	add a,a			;5a16
	ld c,h			;5a17
	ld b,l			;5a18
	sbc a,b			;5a19
	jp l7fb4h		;5a1a
	add a,e			;5a1d
	ld (0f9afh),a		;5a1e
	adc a,(hl)		;5a21
	add a,c			;5a22
	ld l,c			;5a23
	call m,09ae1h		;5a24
	sub c			;5a27
l5a28h:
	ld a,l			;5a28
l5a29h:
	add hl,hl		;5a29
	cp e			;5a2a
	adc a,b			;5a2b
	ret			;5a2c
	xor d			;5a2d
	rst 30h			;5a2e
	ld h,d			;5a2f
	sbc a,b			;5a30
	add hl,sp		;5a31
	xor d			;5a32
	cp l			;5a33
	ei			;5a34
	and d			;5a35
	sbc a,a			;5a36
	di			;5a37
	add a,d			;5a38
	inc h			;5a39
	add hl,bc		;5a3a
	adc a,c			;5a3b
	sub c			;5a3c
	sub d			;5a3d
	xor l			;5a3e
	ret			;5a3f
	add a,d			;5a40
	ld h,c			;5a41
	call 03e7fh		;5a42
	add hl,bc		;5a45
	ld c,h			;5a46
	ld d,052h		;5a47
	inc bc			;5a49
	ld a,(de)		;5a4a
	dec de			;5a4b
	ld (hl),c		;5a4c
	ret p			;5a4d
	ld c,a			;5a4e
	add a,c			;5a4f
	ld (0980bh),a		;5a50
	rst 30h			;5a53
	inc h			;5a54
	sub d			;5a55
	add a,b			;5a56
	and e			;5a57
	adc a,b			;5a58
	jp 0bd2eh		;5a59
	ld d,h			;5a5c
	adc a,b			;5a5d
	rst 38h			;5a5e
	ld a,h			;5a5f
	ld (hl),l		;5a60
	add a,e			;5a61
	cp d			;5a62
	add a,b			;5a63
	push bc			;5a64
	or 0b3h			;5a65
	rst 30h			;5a67
	ld (de),a		;5a68
	exx			;5a69
	sub a			;5a6a
	sbc a,h			;5a6b
	ld l,d			;5a6c
	cp d			;5a6d
	cp b			;5a6e
	ld b,c			;5a6f
	rst 20h			;5a70
	sub e			;5a71
	cp a			;5a72
	ret m			;5a73
	sub b			;5a74
	rst 38h			;5a75
	ld sp,hl		;5a76
	xor e			;5a77
	adc a,b			;5a78
	rst 30h			;5a79
	exx			;5a7a
	ld d,d			;5a7b
	add hl,bc		;5a7c
	add a,b			;5a7d
	inc de			;5a7e
	or b			;5a7f
	sub b			;5a80
	ld a,(hl)		;5a81
	ret nc			;5a82
	ld c,e			;5a83
	jp po,l552dh		;5a84
	add hl,hl		;5a87
	and 02bh		;5a88
	add a,c			;5a8a
	add a,h			;5a8b
	ld b,h			;5a8c
	ei			;5a8d
	ld l,l			;5a8e
	ld a,b			;5a8f
	ld bc,00024h		;5a90
	add a,b			;5a93
	and h			;5a94
	rst 38h			;5a95
	ld a,d			;5a96
	nop			;5a97
	cp (hl)			;5a98
	sbc a,a			;5a99
	add hl,sp		;5a9a
	add a,d			;5a9b
	ld sp,0ad08h		;5a9c
	xor c			;5a9f
	sbc a,l			;5aa0
	adc a,e			;5aa1
	cp 0f6h			;5aa2
	ld e,h			;5aa4
	ret p			;5aa5
	add a,a			;5aa6
	ld (hl),b		;5aa7
	jp c,0dd7eh		;5aa8
	sub l			;5aab
	sub b			;5aac
	ld e,a			;5aad
	sub e			;5aae
l5aafh:
	ld l,h			;5aaf
	and 04ah		;5ab0
	cp h			;5ab2
	add hl,de		;5ab3
	jr c,l5aafh		;5ab4
	ret p			;5ab6
	adc a,d			;5ab7
	adc a,c			;5ab8
	pop de			;5ab9
	or l			;5aba
	jr nz,l5afeh		;5abb
	add a,b			;5abd
	jr c,l5b30h		;5abe
	add a,a			;5ac0
	ld a,a			;5ac1
	call c,sub_6909h	;5ac2
	ld c,l			;5ac5
	jp nz,l4a22h		;5ac6
	ld d,h			;5ac9
	add a,b			;5aca
	call nc,sub_5481h	;5acb
	ld b,l			;5ace
	ld b,l			;5acf
	add a,b			;5ad0
	cp b			;5ad1
	ret pe			;5ad2
	adc a,c			;5ad3
	ld h,093h		;5ad4
	add hl,sp		;5ad6
	cp h			;5ad7
	sub h			;5ad8
	add a,b			;5ad9
	ld d,d			;5ada
	adc a,b			;5adb
	ei			;5adc
	ld e,d			;5add
	cp (hl)			;5ade
	rra			;5adf
	sbc a,b			;5ae0
	sbc a,e			;5ae1
	jr nc,$+8		;5ae2
	ld a,c			;5ae4
	xor 0e7h		;5ae5
	ld a,c			;5ae7
	ld a,a			;5ae8
	call nz,0ad8dh		;5ae9
	ld a,(ix-075h)		;5aec
	pop hl			;5aef
	inc bc			;5af0
	rst 38h			;5af1
	ld (0fd93h),hl		;5af2
	and b			;5af5
	sbc a,b			;5af6
	add a,b			;5af7
	ccf			;5af8
	ret p			;5af9
	and b			;5afa
	call m,092f3h		;5afb
l5afeh:
	push bc			;5afe
	cp a			;5aff
	ld (de),a		;5b00
	ld b,h			;5b01
	ld c,c			;5b02
	ld b,(hl)		;5b03
	rst 30h			;5b04
	adc a,d			;5b05
	set 7,(hl)		;5b06
	rlca			;5b08
	call c,0b60bh		;5b09
	xor a			;5b0c
	call m,0254dh		;5b0d
	add a,e			;5b10
	ld h,l			;5b11
	ld d,l			;5b12
	add a,d			;5b13
	ld d,l			;5b14
	adc a,d			;5b15
	ld d,l			;5b16
	call p,0f449h		;5b17
	add a,b			;5b1a
	inc (hl)		;5b1b
	cp a			;5b1c
	ld d,h			;5b1d
	add a,c			;5b1e
	sub l			;5b1f
	ld b,082h		;5b20
	ld c,c			;5b22
	adc a,c			;5b23
	rst 38h			;5b24
	ld de,0fdb1h		;5b25
	ret p			;5b28
	ld c,a			;5b29
	adc a,(hl)		;5b2a
	push bc			;5b2b
	adc a,b			;5b2c
	sub (hl)		;5b2d
	sub l			;5b2e
	scf			;5b2f
l5b30h:
	ld a,a			;5b30
	sub d			;5b31
	ld (bc),a		;5b32
	adc a,c			;5b33
	push bc			;5b34
	jr z,l5b39h		;5b35
	sub e			;5b37
	ret m			;5b38
l5b39h:
	ld e,h			;5b39
	inc sp			;5b3a
	ld bc,020cch		;5b3b
	ld (l567eh),hl		;5b3e
	ld h,h			;5b41
	sub h			;5b42
	ld l,c			;5b43
	ret nz			;5b44
	ld a,a			;5b45
	nop			;5b46
	call z,sub_77cch	;5b47
	ld d,a			;5b4a
	halt			;5b4b
	rst 38h			;5b4c
	call nz,0c592h		;5b4d
	sub e			;5b50
	jp z,08283h		;5b51
	jp nc,081a8h		;5b54
	sub b			;5b57
	add a,e			;5b58
	add a,b			;5b59
	call p,0b514h		;5b5a
	add a,e			;5b5d
	sub e			;5b5e
	ld (bc),a		;5b5f
	jr nz,$-71		;5b60
	xor h			;5b62
	jp 00727h		;5b63
	adc a,b			;5b66
	rst 0			;5b67
	defb 0ddh,081h,0f8h ;illegal sequence	;5b68
	dec sp			;5b6b
	or 0beh			;5b6c
l5b6eh:
	ld a,(hl)		;5b6e
	dec b			;5b6f
	sbc a,c			;5b70
	jr nc,l5bb8h		;5b71
	ei			;5b73
	ld h,c			;5b74
	sbc a,b			;5b75
	inc bc			;5b76
	add a,e			;5b77
	ld (hl),c		;5b78
	jr c,l5b6eh		;5b79
	inc b			;5b7b
	nop			;5b7c
	sbc a,c			;5b7d
	jr z,l5bb3h		;5b7e
	sub h			;5b80
	ld d,(hl)		;5b81
	ld h,a			;5b82
	or (hl)			;5b83
	adc a,h			;5b84
	exx			;5b85
	add a,c			;5b86
	ld a,a			;5b87
	ret nz			;5b88
	inc c			;5b89
	call z,sub_6666h	;5b8a
	add a,b			;5b8d
	ccf			;5b8e
	add hl,bc		;5b8f
	inc (hl)		;5b90
	ld c,c			;5b91
	push hl			;5b92
	call m,08152h		;5b93
	call 0f4afh		;5b96
	sbc a,c			;5b99
	cp d			;5b9a
	or l			;5b9b
	ret m			;5b9c
	dec h			;5b9d
	call m,0f911h		;5b9e
	ld d,(hl)		;5ba1
	ld (bc),a		;5ba2
	cp (hl)			;5ba3
	rra			;5ba4
	add a,e			;5ba5
	or c			;5ba6
	ld a,a			;5ba7
	add a,(hl)		;5ba8
	sbc a,e			;5ba9
	or h			;5baa
	adc a,(hl)		;5bab
	rst 28h			;5bac
	add a,l			;5bad
	ld a,(bc)		;5bae
	ex de,hl		;5baf
	ld c,d			;5bb0
	cp 0b1h			;5bb1
l5bb3h:
	add a,c			;5bb3
	ex af,af'		;5bb4
	sub e			;5bb5
	add a,e			;5bb6
	adc a,c			;5bb7
l5bb8h:
	xor c			;5bb8
	ld c,a			;5bb9
	adc a,l			;5bba
	ld hl,l777fh		;5bbb
	ld d,l			;5bbe
	ld h,h			;5bbf
	rla			;5bc0
	add a,c			;5bc1
	sbc a,h			;5bc2
	or l			;5bc3
	ld h,l			;5bc4
	ld d,l			;5bc5
	ld a,a			;5bc6
	pop af			;5bc7
	sbc a,b			;5bc8
	sub e			;5bc9
	inc (hl)		;5bca
	jp po,080c4h		;5bcb
	and c			;5bce
	ld e,c			;5bcf
	ex af,af'		;5bd0
	call p,0599dh		;5bd1
sub_5bd4h:
	dec b			;5bd4
	ld a,(hl)		;5bd5
	nop			;5bd6
	ld h,089h		;5bd7
	add a,b			;5bd9
	call c,0fc9ah		;5bda
	ld a,a			;5bdd
	ld l,093h		;5bde
	ld c,d			;5be0
	adc a,a			;5be1
	ld (hl),h		;5be2
	set 6,l			;5be3
	jp m,089e3h		;5be5
	nop			;5be8
	jp m,02966h		;5be9
	adc a,c			;5bec
	ld e,h			;5bed
	rst 38h			;5bee
sub_5befh:
	ld de,l5645h		;5bef
	ld (hl),a		;5bf2
	ld d,(hl)		;5bf3
	ld c,c			;5bf4
	ld a,a			;5bf5
	add a,b			;5bf6
	or (hl)			;5bf7
	cp e			;5bf8
sub_5bf9h:
	ld d,h			;5bf9
	ld d,l			;5bfa
	ld b,(hl)		;5bfb
	ld a,h			;5bfc
	ld h,l			;5bfd
	inc a			;5bfe
	inc h			;5bff
	inc bc			;5c00
	ld b,b			;5c01
	add a,b			;5c02
	or h			;5c03
	ld e,c			;5c04
	adc a,0f4h		;5c05
	push hl			;5c07
	cp a			;5c08
	jr nc,$+128		;5c09
	add a,e			;5c0b
	sub e			;5c0c
	ld h,a			;5c0d
	sbc a,b			;5c0e
	inc d			;5c0f
	ld a,a			;5c10
	jp po,0007ah		;5c11
	ld a,d			;5c14
	and 066h		;5c15
	dec a			;5c17
	add a,d			;5c18
	pop bc			;5c19
	ex af,af'		;5c1a
	ld (bc),a		;5c1b
	ld de,08629h		;5c1c
	ld d,e			;5c1f
	inc sp			;5c20
	ld a,a			;5c21
	ld b,066h		;5c22
	ld d,l			;5c24
	ld e,c			;5c25
	ld a,a			;5c26
	dec b			;5c27
	add a,077h		;5c28
	ld b,l			;5c2a
	ld a,e			;5c2b
	call po,02f5fh		;5c2c
	ex af,af'		;5c2f
	inc b			;5c30
	jr nc,l5c58h		;5c31
	sub (hl)		;5c33
	add a,b			;5c34
	ld c,h			;5c35
	add hl,de		;5c36
	sub e			;5c37
	call p,005eeh		;5c38
	sbc a,d			;5c3b
	add a,(hl)		;5c3c
	add a,b			;5c3d
	ld (hl),e		;5c3e
	ld a,(hl)		;5c3f
	rra			;5c40
	ld d,d			;5c41
	ld a,a			;5c42
	rra			;5c43
	xor a			;5c44
	cp e			;5c45
	dec l			;5c46
	ld c,c			;5c47
	push bc			;5c48
	ld e,(hl)		;5c49
	inc hl			;5c4a
	xor a			;5c4b
	pop hl			;5c4c
	add a,b			;5c4d
	ld a,c			;5c4e
	add a,063h		;5c4f
	ex af,af'		;5c51
	add a,e			;5c52
	ld b,003h		;5c53
	ld a,a			;5c55
	inc h			;5c56
	add a,b			;5c57
l5c58h:
	ret z			;5c58
	ld d,(hl)		;5c59
	sub h			;5c5a
	ret c			;5c5b
	ld e,d			;5c5c
	exx			;5c5d
	ld h,h			;5c5e
	call po,sub_5156h	;5c5f
	ld h,(hl)		;5c62
	adc a,c			;5c63
	ld a,(bc)		;5c64
	ld b,a			;5c65
	add a,b			;5c66
	ret nz			;5c67
	add hl,sp		;5c68
	add hl,bc		;5c69
	sub b			;5c6a
	ld b,e			;5c6b
	ld (bc),a		;5c6c
	ld c,c			;5c6d
	add a,b			;5c6e
	ld h,(hl)		;5c6f
	defb 0edh ;next byte illegal after ed	;5c70
	call z,0eaf4h		;5c71
	cp (hl)			;5c74
	jp z,0ff02h		;5c75
	ld d,e			;5c78
	ld a,(hl)		;5c79
	ld l,0c0h		;5c7a
	ret m			;5c7c
	ld a,a			;5c7d
	defb 0fdh,0afh,0d7h ;illegal sequence	;5c7e
	ret po			;5c81
	jr $+125		;5c82
	ld (082afh),hl		;5c84
	inc bc			;5c87
	ld c,0a2h		;5c88
	cp (hl)			;5c8a
	dec b			;5c8b
	adc a,b			;5c8c
	rst 38h			;5c8d
	ld (0c412h),hl		;5c8e
	adc a,c			;5c91
	add hl,hl		;5c92
	sbc a,b			;5c93
	ld d,h			;5c94
	dec hl			;5c95
	ld (hl),a		;5c96
	ld (hl),l		;5c97
	ld h,c			;5c98
	ld sp,00744h		;5c99
	ld h,(hl)		;5c9c
	inc c			;5c9d
	ld a,056h		;5c9e
	ld a,a			;5ca0
	add hl,de		;5ca1
	jr nc,l5cc5h		;5ca2
	add a,b			;5ca4
	inc l			;5ca5
	or e			;5ca6
	ld e,c			;5ca7
	call p,088b5h		;5ca8
	call m,0fcach		;5cab
	ex (sp),hl		;5cae
	ld d,d			;5caf
	rst 38h			;5cb0
	ld a,(hl)		;5cb1
	ld e,a			;5cb2
	xor a			;5cb3
	halt			;5cb4
	ld e,h			;5cb5
	sbc a,c			;5cb6
	ret pe			;5cb7
	inc bc			;5cb8
	call po,0f7f4h		;5cb9
	xor a			;5cbc
	sbc a,c			;5cbd
	ld h,l			;5cbe
	halt			;5cbf
	add a,d			;5cc0
	ld h,a			;5cc1
	ld a,e			;5cc2
	ld h,l			;5cc3
	add a,(hl)		;5cc4
l5cc5h:
	ld c,b			;5cc5
	add a,h			;5cc6
	sub c			;5cc7
	sub h			;5cc8
	defb 0fdh,01fh,066h ;illegal sequence	;5cc9
	ld (hl),a		;5ccc
	ld a,a			;5ccd
	dec b			;5cce
	or c			;5ccf
	and c			;5cd0
	ld hl,05652h		;5cd1
	pop bc			;5cd4
	dec d			;5cd5
	sub e			;5cd6
	call p,0d89ch		;5cd7
	ld a,d			;5cda
	call m,000a9h		;5cdb
	rrca			;5cde
	add hl,hl		;5cdf
	rst 38h			;5ce0
	sub e			;5ce1
	ld (bc),a		;5ce2
	xor a			;5ce3
l5ce4h:
	rst 18h			;5ce4
	inc bc			;5ce5
	or l			;5ce6
	ld c,c			;5ce7
	ex de,hl		;5ce8
	xor d			;5ce9
	cp b			;5cea
	sbc a,(hl)		;5ceb
	nop			;5cec
	ex af,af'		;5ced
	xor a			;5cee
	jp p,0f3c5h		;5cef
	ld a,a			;5cf2
	ld c,b			;5cf3
	ld (hl),l		;5cf4
	halt			;5cf5
	ld a,c			;5cf6
	ld h,a			;5cf7
l5cf8h:
	or a			;5cf8
l5cf9h:
	inc hl			;5cf9
	ld c,c			;5cfa
	sub l			;5cfb
	adc a,d			;5cfc
	add hl,hl		;5cfd
	cp 0e0h			;5cfe
	adc a,h			;5d00
	add a,c			;5d01
	cpl			;5d02
	sub d			;5d03
	add hl,hl		;5d04
	or h			;5d05
	inc hl			;5d06
	sub 01ah		;5d07
	add hl,de		;5d09
	ld (hl),a		;5d0a
	adc a,c			;5d0b
	and e			;5d0c
	cp (hl)			;5d0d
	call m,0cd52h		;5d0e
	inc h			;5d11
	add hl,bc		;5d12
	adc a,a			;5d13
	sub d			;5d14
	ret nc			;5d15
	ld a,090h		;5d16
	ld a,a			;5d18
	ccf			;5d19
	xor a			;5d1a
	ld (hl),l		;5d1b
	adc a,c			;5d1c
	adc a,b			;5d1d
	ld c,c			;5d1e
	dec l			;5d1f
	ld h,e			;5d20
	ld bc,0af33h		;5d21
	sbc a,052h		;5d24
	ld h,(hl)		;5d26
	ld e,c			;5d27
	ld sp,hl		;5d28
	ld c,c			;5d29
	halt			;5d2a
	ld h,h			;5d2b
	add a,h			;5d2c
	jr l5d96h		;5d2d
	ld b,l			;5d2f
	ld e,c			;5d30
	add a,h			;5d31
	nop			;5d32
	ld d,a			;5d33
	xor (hl)		;5d34
	ret nz			;5d35
	add hl,sp		;5d36
	call nz,0257fh		;5d37
	cp l			;5d3a
	ld b,l			;5d3b
	inc sp			;5d3c
	add hl,sp		;5d3d
	add a,d			;5d3e
	call po,0a1f7h		;5d3f
	adc a,c			;5d42
sub_5d43h:
	sub l			;5d43
	add a,(hl)		;5d44
	inc (hl)		;5d45
	add a,a			;5d46
	call po,03949h		;5d47
	daa			;5d4a
	ld d,l			;5d4b
	sbc a,b			;5d4c
	pop de			;5d4d
	dec (hl)		;5d4e
	rst 38h			;5d4f
	pop hl			;5d50
	rst 30h			;5d51
	xor a			;5d52
l5d53h:
	add a,b			;5d53
	ld b,d			;5d54
	inc h			;5d55
	or d			;5d56
	pop af			;5d57
	or e			;5d58
	jr nc,l5d64h		;5d59
	jr nc,l5d53h		;5d5b
	xor a			;5d5d
	ld l,0c4h		;5d5e
	ld a,d			;5d60
	add hl,bc		;5d61
	ld a,a			;5d62
	ret po			;5d63
l5d64h:
	ld a,l			;5d64
	ld d,l			;5d65
	ld d,l			;5d66
	ld h,l			;5d67
	ret			;5d68
	ld a,a			;5d69
	adc a,c			;5d6a
	jr nc,l5cf8h		;5d6b
	ret m			;5d6d
	ld a,a			;5d6e
	ld l,d			;5d6f
	or a			;5d70
l5d71h:
	inc (hl)		;5d71
	add hl,sp		;5d72
	sub e			;5d73
	rst 28h			;5d74
	jp z,0b7f8h		;5d75
	xor e			;5d78
	call pe,059c5h		;5d79
	rst 30h			;5d7c
	ld (bc),a		;5d7d
	sub l			;5d7e
	ld d,c			;5d7f
	add hl,de		;5d80
	call m,sub_49f6h	;5d81
	ld e,b			;5d84
	add hl,sp		;5d85
	add hl,de		;5d86
	ld b,08bh		;5d87
	or a			;5d89
	jp po,0af8fh		;5d8a
	call c,0aae4h		;5d8d
	sub c			;5d90
	di			;5d91
	ld c,c			;5d92
	jp p,0ee99h		;5d93
l5d96h:
	add a,e			;5d96
	sbc a,b			;5d97
	xor a			;5d98
	ret c			;5d99
	ld b,(hl)		;5d9a
	adc a,e			;5d9b
	cp h			;5d9c
	ld c,a			;5d9d
	rst 38h			;5d9e
	and l			;5d9f
	ld (hl),e		;5da0
l5da1h:
	add a,b			;5da1
	halt			;5da2
	add a,d			;5da3
	jr l5da1h		;5da4
	add a,d			;5da6
	ld d,l			;5da7
	ld b,l			;5da8
	ld h,l			;5da9
	add a,b			;5daa
	ld d,e			;5dab
	ld c,h			;5dac
	ret po			;5dad
	adc a,c			;5dae
	rst 38h			;5daf
	jr nc,$+67		;5db0
	ld c,c			;5db2
	add a,l			;5db3
	ld b,(hl)		;5db4
	ld h,039h		;5db5
	add a,b			;5db7
	ld d,l			;5db8
l5db9h:
	dec d			;5db9
	ld c,07eh		;5dba
	add a,d			;5dbc
	inc e			;5dbd
	add a,e			;5dbe
	dec hl			;5dbf
l5dc0h:
	jr nc,l5dc0h		;5dc0
	jr z,$-102		;5dc2
	call nz,sub_7c86h	;5dc4
	ld sp,l7e7fh		;5dc7
	xor a			;5dca
	call c,0eeech		;5dcb
	or c			;5dce
	dec b			;5dcf
	add a,b			;5dd0
	ld b,d			;5dd1
	add a,a			;5dd2
	sub c			;5dd3
	push af			;5dd4
	inc h			;5dd5
	adc a,b			;5dd6
	xor h			;5dd7
	sub e			;5dd8
	xor a			;5dd9
	xor a			;5dda
	jp nc,057bch		;5ddb
	rst 18h			;5dde
	defb 0ddh,013h,066h ;illegal sequence	;5ddf
	jp m,l7685h		;5de2
	halt			;5de5
	add a,l			;5de6
	call z,08949h		;5de7
	jr z,l5d71h		;5dea
	ld a,h			;5dec
	ld d,(hl)		;5ded
	ld a,a			;5dee
	ld hl,(0bc30h)		;5def
	jp z,0bb48h		;5df2
	adc a,d			;5df5
	ld l,l			;5df6
	cp l			;5df7
	jp p,022a7h		;5df8
	ld de,0b398h		;5dfb
	bit 2,h			;5dfe
	jp nz,0c42dh		;5e00
	dec h			;5e03
	ld d,008h		;5e04
	add a,e			;5e06
l5e07h:
	and 0e3h		;5e07
	inc a			;5e09
	sbc a,(hl)		;5e0a
	xor a			;5e0b
	jp c,0b599h		;5e0c
	ld l,0ech		;5e0f
	and h			;5e11
	ret p			;5e12
	dec h			;5e13
	ld hl,l743eh+2		;5e14
	inc sp			;5e17
	defb 0fdh,052h,0afh ;illegal sequence	;5e18
	ld a,d			;5e1b
	xor a			;5e1c
	ld e,038h		;5e1d
	add a,e			;5e1f
	ld a,a			;5e20
	call p,0b5ffh		;5e21
	call m,08158h		;5e24
	ld b,l			;5e27
	sub a			;5e28
	inc b			;5e29
	ld b,l			;5e2a
	ld e,a			;5e2b
l5e2ch:
	ld a,a			;5e2c
	jp 010fbh		;5e2d
	sub c			;5e30
	ld (0999bh),hl		;5e31
	cp e			;5e34
	add a,b			;5e35
	ld a,a			;5e36
	cp b			;5e37
	nop			;5e38
	sub e			;5e39
	or d			;5e3a
	ld b,a			;5e3b
	or l			;5e3c
	adc a,d			;5e3d
	adc a,h			;5e3e
	sub b			;5e3f
	ld (hl),c		;5e40
	sbc a,b			;5e41
	pop de			;5e42
	inc hl			;5e43
	sbc a,e			;5e44
	rst 38h			;5e45
	ld a,06fh		;5e46
	xor a			;5e48
	ld h,l			;5e49
	ld c,c			;5e4a
	xor a			;5e4b
	cp d			;5e4c
	ex af,af'		;5e4d
	sub b			;5e4e
	ld sp,hl		;5e4f
	ld (0ae14h),hl		;5e50
	ld a,c			;5e53
	rst 38h			;5e54
	xor c			;5e55
	cp h			;5e56
	jr c,l5e07h		;5e57
	ld (0c2b1h),a		;5e59
	or d			;5e5c
	rst 38h			;5e5d
	ld a,l			;5e5e
	sbc a,c			;5e5f
	ld h,(hl)		;5e60
	ld a,a			;5e61
	add a,b			;5e62
	ld h,h			;5e63
	add a,(hl)		;5e64
	sub c			;5e65
	call m,08556h		;5e66
	dec (hl)		;5e69
	ld d,(hl)		;5e6a
	rst 38h			;5e6b
	pop hl			;5e6c
	adc a,c			;5e6d
	jp m,0d192h		;5e6e
	ld (l70b9h),hl		;5e71
	adc a,c			;5e74
	or 011h			;5e75
	pop de			;5e77
	ld a,b			;5e78
	add hl,de		;5e79
	or h			;5e7a
	res 3,h			;5e7b
	adc a,h			;5e7d
	ld e,a			;5e7e
	jr c,l5e84h		;5e7f
l5e81h:
	adc a,e			;5e81
	adc a,(hl)		;5e82
	sbc a,e			;5e83
l5e84h:
	rst 38h			;5e84
	ld (hl),c		;5e85
	ld e,h			;5e86
	ld de,0f219h		;5e87
	rst 20h			;5e8a
	xor a			;5e8b
	call pe,0a65ah		;5e8c
	ld b,h			;5e8f
	add a,b			;5e90
l5e91h:
	ex af,af'		;5e91
	xor e			;5e92
	jp m,0c4e5h		;5e93
	ld b,b			;5e96
	halt			;5e97
	sbc a,b			;5e98
	jp pe,07ff1h		;5e99
	cp (hl)			;5e9c
	cpl			;5e9d
	ld l,a			;5e9e
	ld c,a			;5e9f
	add a,(hl)		;5ea0
	rst 8			;5ea1
l5ea2h:
	nop			;5ea2
	and e			;5ea3
	xor a			;5ea4
	ld c,e			;5ea5
	or h			;5ea6
	ret nc			;5ea7
	dec de			;5ea8
	cp c			;5ea9
	jr nc,l5e2ch		;5eaa
	jp nc,028cch		;5eac
	add a,h			;5eaf
	ld h,l			;5eb0
	add hl,sp		;5eb1
	inc bc			;5eb2
	adc a,c			;5eb3
	jp m,0d695h		;5eb4
	sbc a,d			;5eb7
	rst 8			;5eb8
	sbc a,b			;5eb9
	ld a,(hl)		;5eba
	ld (de),a		;5ebb
	xor 07eh		;5ebc
	cp c			;5ebe
	ld c,d			;5ebf
	sbc a,c			;5ec0
	inc sp			;5ec1
	add a,e			;5ec2
	jp c,0913ah		;5ec3
	ei			;5ec6
	add a,b			;5ec7
	ld a,l			;5ec8
	ld c,h			;5ec9
	cp c			;5eca
	nop			;5ecb
	pop bc			;5ecc
	add a,d			;5ecd
	sub b			;5ece
	rlca			;5ecf
	jr z,$-126		;5ed0
	adc a,c			;5ed2
	ld sp,hl		;5ed3
	xor (hl)		;5ed4
	ld de,02fefh		;5ed5
	jr nz,$+35		;5ed8
	ld (hl),a		;5eda
	add hl,hl		;5edb
	jp m,0f07fh		;5edc
	inc e			;5edf
	sub c			;5ee0
	dec de			;5ee1
	adc a,c			;5ee2
	call z,sub_4691h	;5ee3
	ld c,l			;5ee6
	jp z,l767fh		;5ee7
	jp m,021a2h		;5eea
	add a,b			;5eed
	ld a,c			;5eee
	dec de			;5eef
	push de			;5ef0
	cp 0ceh			;5ef1
	ld h,091h		;5ef3
	ld d,l			;5ef5
	cp d			;5ef6
	call po,sub_7980h	;5ef7
	jp m,0fdafh		;5efa
	xor a			;5efd
	and (hl)		;5efe
l5effh:
	adc a,c			;5eff
	call p,00898h		;5f00
	adc a,c			;5f03
	xor c			;5f04
	sbc a,b			;5f05
	ld a,h			;5f06
	adc a,e			;5f07
	ex af,af'		;5f08
	dec bc			;5f09
	jr nc,l5f35h		;5f0a
	rst 28h			;5f0c
	ex (sp),hl		;5f0d
	jr l5ea2h		;5f0e
	sub a			;5f10
	cp e			;5f11
	sub a			;5f12
	add a,a			;5f13
	ret m			;5f14
	add a,b			;5f15
	xor a			;5f16
	ld a,h			;5f17
	push de			;5f18
	ld (hl),a		;5f19
	ccf			;5f1a
	and d			;5f1b
	ld (de),a		;5f1c
	cp c			;5f1d
	ld h,h			;5f1e
	ld (0bb90h),hl		;5f1f
	add a,e			;5f22
	ld c,d			;5f23
	add hl,de		;5f24
	add a,0a7h		;5f25
	add a,d			;5f27
	ld b,a			;5f28
	ld (de),a		;5f29
	call z,09229h		;5f2a
	add hl,de		;5f2d
	or a			;5f2e
	dec e			;5f2f
	ld h,d			;5f30
	ret p			;5f31
	add a,080h		;5f32
l5f34h:
	ld (hl),e		;5f34
l5f35h:
	inc c			;5f35
	xor a			;5f36
	defb 0edh ;next byte illegal after ed	;5f37
	ld sp,09f54h		;5f38
	ld (0acaah),hl		;5f3b
	cp b			;5f3e
	xor l			;5f3f
	ld a,b			;5f40
	xor b			;5f41
	dec l			;5f42
	call m,0fe23h		;5f43
	ld d,(hl)		;5f46
	ld de,0f1efh		;5f47
	call nc,04946h		;5f4a
	push de			;5f4d
	ld h,c			;5f4e
	di			;5f4f
	ret m			;5f50
	add a,b			;5f51
	rra			;5f52
	dec h			;5f53
	ld a,a			;5f54
	rst 10h			;5f55
	inc d			;5f56
	ld a,092h		;5f57
	ld b,h			;5f59
	dec de			;5f5a
	xor 093h		;5f5b
	ld (003b0h),a		;5f5d
	ld a,a			;5f60
	cp a			;5f61
	add a,h			;5f62
	nop			;5f63
l5f64h:
	add a,(hl)		;5f64
	pop de			;5f65
	inc c			;5f66
	ld (de),a		;5f67
	sub b			;5f68
	add a,c			;5f69
	ld de,09192h		;5f6a
	cp 01dh			;5f6d
	call po,0d27dh		;5f6f
	ld c,c			;5f72
	sbc a,c			;5f73
	add a,b			;5f74
	ld h,a			;5f75
	xor a			;5f76
	jp c,0aedah		;5f77
	ei			;5f7a
	ld (hl),e		;5f7b
	call p,03835h		;5f7c
	xor l			;5f7f
l5f80h:
	ex de,hl		;5f80
	adc a,c			;5f81
	ld c,b			;5f82
	dec bc			;5f83
	xor b			;5f84
	ld (de),a		;5f85
	cp a			;5f86
	rst 0			;5f87
	rst 28h			;5f88
	sub b			;5f89
	rla			;5f8a
l5f8bh:
	cp e			;5f8b
	ld (de),a		;5f8c
	ld a,b			;5f8d
	ccf			;5f8e
	rst 38h			;5f8f
	and a			;5f90
	ld c,l			;5f91
	exx			;5f92
	ld a,a			;5f93
	pop af			;5f94
	and 073h		;5f95
	ret nz			;5f97
	ld b,a			;5f98
	jr c,l5f34h		;5f99
	call z,09f20h		;5f9b
	di			;5f9e
	inc sp			;5f9f
	adc a,d			;5fa0
	call p,l4dceh+1		;5fa1
	jp z,02109h		;5fa4
	dec de			;5fa7
	ei			;5fa8
	add a,029h		;5fa9
	sub (hl)		;5fab
	ret z			;5fac
	add hl,de		;5fad
	add a,c			;5fae
	cp c			;5faf
	ld a,a			;5fb0
	adc a,h			;5fb1
	cp 048h			;5fb2
	ld d,l			;5fb4
	ret p			;5fb5
	sub c			;5fb6
l5fb7h:
	adc a,(hl)		;5fb7
	adc a,(hl)		;5fb8
	ld a,l			;5fb9
	xor a			;5fba
	add a,(hl)		;5fbb
	sub h			;5fbc
	add a,h			;5fbd
	sub h			;5fbe
	cp 09ah			;5fbf
	call p,004c5h		;5fc1
	add a,h			;5fc4
	add a,l			;5fc5
	ld (bc),a		;5fc6
	add a,l			;5fc7
	ld b,h			;5fc8
	ld b,b			;5fc9
	ld d,d			;5fca
	sub e			;5fcb
	cp b			;5fcc
	rst 28h			;5fcd
	ld e,(hl)		;5fce
	jr nz,l5f64h		;5fcf
	or c			;5fd1
	daa			;5fd2
	ld (hl),a		;5fd3
	ld d,021h		;5fd4
	ld a,e			;5fd6
	dec de			;5fd7
	call nc,09f61h		;5fd8
	add a,b			;5fdb
	ccf			;5fdc
	inc h			;5fdd
	ei			;5fde
	exx			;5fdf
	inc hl			;5fe0
	add a,b			;5fe1
	inc h			;5fe2
	ld a,029h		;5fe3
	ld (0f9ffh),hl		;5fe5
	add a,l			;5fe8
	ret			;5fe9
	dec bc			;5fea
	inc b			;5feb
	or b			;5fec
	ld d,b			;5fed
	jr l5f8bh		;5fee
	ld (de),a		;5ff0
	ld a,a			;5ff1
	add hl,hl		;5ff2
	sub (hl)		;5ff3
	rst 38h			;5ff4
	ld d,e			;5ff5
	dec d			;5ff6
	defb 0fdh,0a1h,0b1h ;illegal sequence	;5ff7
	ld e,c			;5ffa
	dec d			;5ffb
	add hl,de		;5ffc
	add a,b			;5ffd
	inc l			;5ffe
	ei			;5fff
	xor a			;6000
	inc e			;6001
	add a,l			;6002
	rrca			;6003
l6004h:
	ld b,b			;6004
	ex af,af'		;6005
	jr nc,l5fb7h		;6006
	ld l,e			;6008
	cp 012h			;6009
	cp 02eh			;600b
	xor a			;600d
	sub l			;600e
	ld d,d			;600f
	add a,h			;6010
	add hl,sp		;6011
	ld (0e1efh),hl		;6012
	dec d			;6015
	ex af,af'		;6016
	jp p,0ffb1h		;6017
	inc l			;601a
	sub c			;601b
	jp c,0dc8ah		;601c
	add a,b			;601f
	ld b,h			;6020
	ld sp,hl		;6021
	add a,b			;6022
	ld a,h			;6023
	ld a,h			;6024
	jp (hl)			;6025
	ld sp,0bbb9h		;6026
	dec h			;6029
	add a,b			;602a
	dec hl			;602b
	rst 38h			;602c
	ld a,b			;602d
	nop			;602e
sub_602fh:
	ld e,l			;602f
	dec de			;6030
	adc a,l			;6031
	call nc,08014h		;6032
	adc a,e			;6035
	ld (l7f37h),hl		;6036
	call nz,01b55h		;6039
	dec e			;603c
	ld e,c			;603d
	ld d,h			;603e
	ld e,c			;603f
	ld a,a			;6040
	add hl,sp		;6041
	ld d,d			;6042
	add a,l			;6043
	add a,c			;6044
	inc d			;6045
	inc bc			;6046
	nop			;6047
	xor a			;6048
	ld bc,(0007fh)		;6049
	jp m,0fda2h		;604d
	inc a			;6050
	add hl,hl		;6051
	adc a,b			;6052
	xor a			;6053
	rst 30h			;6054
	rst 28h			;6055
	add a,b			;6056
	nop			;6057
	pop af			;6058
	ld hl,022b2h		;6059
	ld (hl),071h		;605c
	inc hl			;605e
	ccf			;605f
	and d			;6060
	ld (hl),h		;6061
	add a,b			;6062
	adc a,d			;6063
	ret p			;6064
	cp 0f8h			;6065
	ld l,e			;6067
l6068h:
	add a,b			;6068
	ld h,0fbh		;6069
	and e			;606b
	add a,h			;606c
	rst 38h			;606d
	or (hl)			;606e
	rst 38h			;606f
	rst 30h			;6070
	nop			;6071
	add a,(hl)		;6072
	ld (de),a		;6073
	add a,h			;6074
	sub c			;6075
	exx			;6076
	ld c,l			;6077
	pop hl			;6078
	ld a,(hl)		;6079
	add hl,hl		;607a
	ld (0c6feh),hl		;607b
	call nc,sub_5966h	;607e
	pop af			;6081
	dec d			;6082
	add a,c			;6083
	rst 8			;6084
	xor a			;6085
	and a			;6086
	add a,l			;6087
	ld sp,0ecafh		;6088
	call nz,08382h		;608b
	and d			;608e
	rlca			;608f
	ld a,a			;6090
	ld hl,06a15h		;6091
	add a,h			;6094
	ld b,002h		;6095
	ld d,h			;6097
	ld d,l			;6098
	add a,b			;6099
	ld d,h			;609a
	ld a,d			;609b
	and c			;609c
	call nc,0882fh		;609d
	ld h,l			;60a0
	inc c			;60a1
	rst 38h			;60a2
	ld (hl),b		;60a3
	ccf			;60a4
	ld sp,0041fh		;60a5
	ld (0bb7bh),a		;60a8
	or a			;60ab
	inc sp			;60ac
	defb 0fdh,048h,03fh ;illegal sequence	;60ad
	ld (bc),a		;60b0
	rrca			;60b1
	sbc a,c			;60b2
	rst 28h			;60b3
	rst 38h			;60b4
	add a,(hl)		;60b5
	ld (hl),056h		;60b6
	add hl,sp		;60b8
	call m,0882bh		;60b9
	ld l,(hl)		;60bc
	ld l,l			;60bd
	ld a,h			;60be
	adc a,l			;60bf
	ld b,022h		;60c0
	add hl,hl		;60c2
	sub b			;60c3
	exx			;60c4
	pop de			;60c5
	ei			;60c6
	add hl,de		;60c7
	ld a,(hl)		;60c8
	ret nc			;60c9
	sub c			;60ca
	ld d,c			;60cb
	dec de			;60cc
	inc de			;60cd
	or c			;60ce
	dec de			;60cf
	ld b,h			;60d0
	ld a,a			;60d1
	ld c,e			;60d2
	ld a,a			;60d3
	or a			;60d4
	inc d			;60d5
	or 029h			;60d6
	ld c,e			;60d8
	ld (hl),c		;60d9
	xor a			;60da
	call pe,050adh		;60db
	add a,h			;60de
	inc de			;60df
	sub b			;60e0
	cp 00ah			;60e1
	dec b			;60e3
	ld e,c			;60e4
	sbc a,b			;60e5
	cp d			;60e6
	ld b,h			;60e7
	dec bc			;60e8
	ret m			;60e9
	ld d,(hl)		;60ea
	xor d			;60eb
	or d			;60ec
	sbc a,(hl)		;60ed
	sbc a,b			;60ee
	ei			;60ef
	adc a,c			;60f0
	ld h,a			;60f1
	or (hl)			;60f2
	ld b,b			;60f3
	sub b			;60f4
	ret p			;60f5
	inc bc			;60f6
	rrca			;60f7
	ld e,h			;60f8
	nop			;60f9
	rst 38h			;60fa
	ld hl,0b244h		;60fb
	defb 0fdh,08fh,013h ;illegal sequence	;60fe
	di			;6101
	ret p			;6102
	add a,e			;6103
	add a,b			;6104
	call pe,0a490h		;6105
	cp 045h			;6108
	inc sp			;610a
	call nz,02480h		;610b
l610eh:
	add a,b			;610e
	ld d,l			;610f
	ret p			;6110
	ld c,l			;6111
	dec a			;6112
	ld hl,0a97eh		;6113
	adc a,e			;6116
l6117h:
	sub c			;6117
	add a,b			;6118
	ld (0d993h),hl		;6119
	ld (0a797h),a		;611c
	add hl,sp		;611f
	ld a,a			;6120
	ld c,(hl)		;6121
	ld e,e			;6122
	jp pe,0b1c7h		;6123
	di			;6126
	ld c,a			;6127
	sub h			;6128
	sbc a,e			;6129
	cp c			;612a
	djnz l6117h		;612b
	pop af			;612d
	jp m,0aa6bh		;612e
	sbc a,(hl)		;6131
	or c			;6132
	xor a			;6133
	jp po,0a908h		;6134
	add a,h			;6137
	ld bc,l64b9h		;6138
	rlca			;613b
	inc b			;613c
	ld e,l			;613d
	or c			;613e
	jp p,l64feh		;613f
	xor c			;6142
	ld d,b			;6143
	ld (0c69ch),hl		;6144
	ld (hl),a		;6147
	jr c,l618fh		;6148
	ld a,e			;614a
	and h			;614b
	sub b			;614c
	rst 18h			;614d
	jr nc,l6180h		;614e
	sub c			;6150
	sub l			;6151
	ld (hl),d		;6152
	or e			;6153
l6154h:
	jr c,l6166h		;6154
	pop bc			;6156
	ld a,a			;6157
	rst 38h			;6158
	jr c,l6154h		;6159
	call m,0e8aeh		;615b
l615eh:
	sbc a,c			;615e
	or h			;615f
	call z,0b21dh		;6160
	defb 0fdh,0f3h,02ah ;illegal sequence	;6163
l6166h:
	exx			;6166
	call z,sub_4a7eh	;6167
	sbc a,c			;616a
	jp m,0ee45h		;616b
	jp z,l7f39h		;616e
	sbc a,c			;6171
	ld e,07fh		;6172
	jp 0e9bah		;6174
l6177h:
	or 0e0h			;6177
	ld d,d			;6179
	add a,c			;617a
	ld l,035h		;617b
	ld l,h			;617d
	sub l			;617e
	xor (hl)		;617f
l6180h:
	ld d,e			;6180
	nop			;6181
	add a,l			;6182
	call sub_4f98h		;6183
	xor a			;6186
	ld d,d			;6187
	ex af,af'		;6188
	jr c,l610eh		;6189
	ld d,(hl)		;618b
	add a,h			;618c
	ret nc			;618d
	sub e			;618e
l618fh:
	ld de,l7fc9h		;618f
	call p,sub_4918h	;6192
	ld a,a			;6195
	or (hl)			;6196
	ld c,b			;6197
	cp e			;6198
	ld b,(iy+025h)		;6199
	ld h,l			;619c
	sbc a,c			;619d
	ld h,030h		;619e
	and l			;61a0
	ld d,c			;61a1
	defb 0ddh,062h ;ld ixh,d	;61a2
	call c,00021h		;61a4
	ld a,(hl)		;61a7
	rst 38h			;61a8
	rrca			;61a9
	adc a,a			;61aa
	ei			;61ab
	ld a,(hl)		;61ac
	pop de			;61ad
	add a,e			;61ae
	jp z,0fd93h		;61af
	sub 0f3h		;61b2
	ld c,c			;61b4
	ld b,d			;61b5
	ld hl,02505h		;61b6
	sub e			;61b9
	jp m,02109h		;61ba
	sbc a,e			;61bd
	add a,b			;61be
	inc l			;61bf
	ld c,l			;61c0
	or (hl)			;61c1
	jr z,l615eh		;61c2
	rst 20h			;61c4
	ld a,a			;61c5
	ld a,(hl)		;61c6
	ld h,e			;61c7
	add a,b			;61c8
	ld h,d			;61c9
	ret c			;61ca
	ld c,a			;61cb
	ld d,l			;61cc
	or d			;61cd
	ld d,07fh		;61ce
	push af			;61d0
	xor e			;61d1
	ld bc,0daafh		;61d2
	add hl,sp		;61d5
	ex af,af'		;61d6
	sub b			;61d7
	add a,l			;61d8
	ld d,l			;61d9
	add hl,sp		;61da
	jp 0c493h		;61db
	sub a			;61de
	di			;61df
	ld b,077h		;61e0
	ld d,l			;61e2
	ld h,h			;61e3
	sbc a,c			;61e4
	ld a,a			;61e5
	add hl,de		;61e6
	or l			;61e7
	ld h,l			;61e8
	add a,e			;61e9
	adc a,d			;61ea
	ld l,c			;61eb
	ld h,c			;61ec
	rst 30h			;61ed
	ld b,l			;61ee
	add hl,sp		;61ef
	or b			;61f0
	or d			;61f1
	inc bc			;61f2
	ld l,h			;61f3
	ex af,af'		;61f4
	jp c,0f0f3h		;61f5
	ld a,a			;61f8
	adc a,h			;61f9
	cp a			;61fa
	adc a,h			;61fb
	ei			;61fc
	jp pe,0027fh		;61fd
	and d			;6200
	jp pe,0aafch		;6201
	adc a,0a9h		;6204
	ld a,a			;6206
	dec b			;6207
	adc a,b			;6208
	call nc,08948h		;6209
	ld c,l			;620c
	ld de,0d5fbh		;620d
	sub h			;6210
	sbc a,l			;6211
	rst 20h			;6212
	ld a,a			;6213
	and l			;6214
	sub a			;6215
	inc e			;6216
	ld a,a			;6217
	sbc a,(hl)		;6218
	add hl,bc		;6219
	ld sp,0f4afh		;621a
	ld c,l			;621d
	sub d			;621e
	ld a,a			;621f
	dec d			;6220
	ld h,a			;6221
	or (hl)			;6222
	and a			;6223
	ld b,c			;6224
	inc h			;6225
	set 0,b			;6226
	inc c			;6228
	call z,0c47fh		;6229
	jp nz,0b6adh		;622c
	or d			;622f
	rrca			;6230
	and h			;6231
	jp pe,0f84fh		;6232
	ret m			;6235
	ld a,b			;6236
	ld c,(hl)		;6237
	jr nz,l6284h		;6238
	add hl,bc		;623a
	rst 18h			;623b
	ret			;623c
	sbc a,a			;623d
	add a,(hl)		;623e
	inc l			;623f
	ld b,h			;6240
	add a,b			;6241
	sub b			;6242
	adc a,e			;6243
	jp nc,00a7fh		;6244
	sbc a,b			;6247
	add hl,bc		;6248
	call nc,0dc5ah		;6249
	or l			;624c
	add a,a			;624d
	ld a,b			;624e
	sbc a,d			;624f
	sbc a,(hl)		;6250
	add a,b			;6251
	ld c,c			;6252
	sbc a,e			;6253
	ld (l6c80h),hl		;6254
	ld d,h			;6257
	dec h			;6258
	adc a,l			;6259
	cp d			;625a
	pop bc			;625b
	inc d			;625c
	or l			;625d
	sub b			;625e
l625fh:
	add a,e			;625f
	ld b,07bh		;6260
	xor a			;6262
	adc a,l			;6263
	ld sp,hl		;6264
	ld h,d			;6265
	ex af,af'		;6266
	adc a,e			;6267
	add a,e			;6268
	ld e,c			;6269
	cp e			;626a
l626bh:
	or b			;626b
	sub c			;626c
	ld b,h			;626d
	or 0d2h			;626e
	sub h			;6270
	halt			;6271
	add a,(hl)		;6272
	ld a,a			;6273
	nop			;6274
	call z,086cch		;6275
	ld de,094ach		;6278
	call pe,0f9e4h		;627b
	adc a,h			;627e
	call pe,00be9h		;627f
	ld (bc),a		;6282
	ld c,a			;6283
l6284h:
	xor h			;6284
l6285h:
	jr nz,$+30		;6285
	jp po,083c4h		;6287
	ret c			;628a
	adc a,017h		;628b
	adc a,041h		;628d
	sub d			;628f
	ld hl,00f29h		;6290
	sub c			;6293
	ld c,b			;6294
	add a,b			;6295
	add hl,bc		;6296
	call c,09042h		;6297
	ld a,e			;629a
	sub (hl)		;629b
	cp 0a9h			;629c
	rst 28h			;629e
	ld a,(0ab00h)		;629f
	in a,(08fh)		;62a2
	ld d,(hl)		;62a4
	ld h,08ch		;62a5
	sub d			;62a7
	dec a			;62a8
	or l			;62a9
	nop			;62aa
	xor a			;62ab
	pop bc			;62ac
	add a,b			;62ad
	ld h,050h		;62ae
	or l			;62b0
	dec b			;62b1
	and h			;62b2
	call p,sub_7ecbh	;62b3
	or c			;62b6
	ld c,b			;62b7
	defb 0fdh,08ch ;adc a,iyh	;62b8
	ld b,(hl)		;62ba
	add hl,bc		;62bb
	ld a,a			;62bc
	rlca			;62bd
	inc c			;62be
	defb 0ddh,0dch,00bh ;illegal sequence	;62bf
	or (hl)			;62c2
	ld a,a			;62c3
	and (hl)		;62c4
	dec bc			;62c5
	sub 0f0h		;62c6
	ld a,a			;62c8
	sub b			;62c9
	inc a			;62ca
	nop			;62cb
	inc hl			;62cc
	jr nz,l625fh		;62cd
	sbc a,(hl)		;62cf
	ld a,a			;62d0
	ld h,h			;62d1
	cp 09bh			;62d2
	add a,l			;62d4
	rst 30h			;62d5
	xor d			;62d6
	push bc			;62d7
	inc c			;62d8
	ex af,af'		;62d9
	sbc a,c			;62da
	add a,0b2h		;62db
	ld h,b			;62dd
	or e			;62de
	ld c,c			;62df
	add a,a			;62e0
	and e			;62e1
	jp (hl)			;62e2
	ld a,h			;62e3
	ld a,a			;62e4
	sbc a,090h		;62e5
	call p,sub_4699h	;62e7
	ld a,(de)		;62ea
	ld c,b			;62eb
	di			;62ec
	dec de			;62ed
	ld a,e			;62ee
	djnz $-79		;62ef
	sub d			;62f1
	add hl,bc		;62f2
	ld a,b			;62f3
	ld a,c			;62f4
	sub c			;62f5
l62f6h:
	xor (hl)		;62f6
	ld a,(hl)		;62f7
	sub d			;62f8
l62f9h:
	ret pe			;62f9
	jp z,00241h		;62fa
	ld de,l700ch		;62fd
	sub b			;6300
	ld a,a			;6301
	add hl,bc		;6302
	ld l,c			;6303
	call p,03aefh		;6304
	or d			;6307
	pop de			;6308
	ld a,e			;6309
	adc a,(hl)		;630a
	jp po,l7f32h		;630b
	ld (bc),a		;630e
	and c			;630f
	add hl,bc		;6310
	ld l,h			;6311
	sub d			;6312
	ld d,c			;6313
	add hl,hl		;6314
	ld e,d			;6315
	sbc a,b			;6316
	call m,0a294h		;6317
	call z,00907h		;631a
	sub a			;631d
	add a,b			;631e
	ld b,b			;631f
	add hl,hl		;6320
	add hl,bc		;6321
	sub l			;6322
	ld d,h			;6323
	and l			;6324
	adc a,(hl)		;6325
	sub d			;6326
	call po,sub_45a1h	;6327
	sub d			;632a
	sbc a,04fh		;632b
	ld b,c			;632d
	xor a			;632e
	ld (hl),b		;632f
	ld (hl),l		;6330
	ld bc,0e2afh		;6331
	ld d,(hl)		;6334
	ld a,l			;6335
	ld h,l			;6336
	ret pe			;6337
	sbc a,c			;6338
	sbc a,e			;6339
	ld b,c			;633a
	ld b,h			;633b
	ld (bc),a		;633c
	call sub_7fb0h		;633d
	ld (ix-030h),a		;6340
	ld l,(hl)		;6343
	xor 017h		;6344
	ld a,a			;6346
	or d			;6347
	ld (de),a		;6348
	ret nc			;6349
	ld a,e			;634a
	dec l			;634b
	ld d,e			;634c
	add hl,bc		;634d
	add a,(hl)		;634e
	xor c			;634f
	defb 0fdh,047h,099h ;illegal sequence	;6350
	ld a,a			;6353
	add hl,de		;6354
	dec bc			;6355
	in a,(059h)		;6356
	sbc a,l			;6358
	ld l,h			;6359
	and e			;635a
	add hl,bc		;635b
	add a,b			;635c
	jp nc,l6117h		;635d
	add hl,sp		;6360
	sub 07fh		;6361
	cp e			;6363
	adc a,c			;6364
	ld d,c			;6365
	cp 0f9h			;6366
	rla			;6368
	xor a			;6369
	and e			;636a
	or e			;636b
	xor a			;636c
	jp c,0fc89h		;636d
	ld d,l			;6370
	pop bc			;6371
	add a,l			;6372
	rlca			;6373
	or b			;6374
	and h			;6375
	or a			;6376
	ld (hl),d		;6377
	ret			;6378
	ld b,d			;6379
	sbc a,c			;637a
	ld a,h			;637b
	or b			;637c
	sbc a,c			;637d
	call 02e80h		;637e
	dec a			;6381
	ret p			;6382
	rst 38h			;6383
	sub h			;6384
	ld d,a			;6385
	sub e			;6386
	sub 07ch		;6387
	ld a,a			;6389
	dec d			;638a
	ret nc			;638b
	add hl,hl		;638c
	ld d,b			;638d
	rst 8			;638e
	adc a,c			;638f
	jp pe,l7ecdh		;6390
	sbc a,h			;6393
	adc a,057h		;6394
	inc hl			;6396
	ld a,d			;6397
	add a,(hl)		;6398
	sub (hl)		;6399
	add a,d			;639a
	ld b,(hl)		;639b
	add a,0ddh		;639c
	add a,a			;639e
	inc c			;639f
	ld a,c			;63a0
	inc sp			;63a1
	ld h,e			;63a2
	ld de,00e03h		;63a3
	adc a,c			;63a6
	and l			;63a7
	sub e			;63a8
	or l			;63a9
	ld a,(bc)		;63aa
	add a,b			;63ab
	xor d			;63ac
	sub e			;63ad
	and h			;63ae
	cpl			;63af
	xor a			;63b0
	ld h,(hl)		;63b1
	ld a,h			;63b2
	ld c,b			;63b3
	or l			;63b4
	sub b			;63b5
	ld e,e			;63b6
	ld c,a			;63b7
	or d			;63b8
	and 091h		;63b9
	inc c			;63bb
	rst 10h			;63bc
	inc b			;63bd
	inc h			;63be
	dec c			;63bf
	ld a,a			;63c0
	call nz,l74fdh+1	;63c1
	sub a			;63c4
	ld hl,(092bbh)		;63c5
	push de			;63c8
	inc a			;63c9
	adc a,a			;63ca
	jr c,l6419h		;63cb
	ld c,(hl)		;63cd
	dec de			;63ce
	and d			;63cf
	ld a,(hl)		;63d0
	add hl,de		;63d1
	ld e,c			;63d2
	ret nc			;63d3
	jr z,l641fh		;63d4
	ld a,0eeh		;63d6
	xor d			;63d8
	ld b,a			;63d9
	ld a,l			;63da
	jp nz,000a9h		;63db
	dec h			;63de
	add a,h			;63df
	sbc a,c			;63e0
	call p,08154h		;63e1
	sbc a,c			;63e4
	inc de			;63e5
	sub b			;63e6
l63e7h:
	add hl,hl		;63e7
	sub l			;63e8
	ld c,c			;63e9
	add a,d			;63ea
	ld b,a			;63eb
	xor b			;63ec
	ld a,d			;63ed
	ld b,l			;63ee
	add a,b			;63ef
	ld c,a			;63f0
	call z,sub_55ech	;63f1
	xor 02bh		;63f4
	add hl,bc		;63f6
	ei			;63f7
	cpl			;63f8
	ld (l54afh),hl		;63f9
	sub l			;63fc
	adc a,(iy+058h)		;63fd
	xor a			;6400
	and d			;6401
	add a,b			;6402
	ld e,d			;6403
	or c			;6404
	dec sp			;6405
	ld h,c			;6406
	sbc a,h			;6407
	jp nz,00d03h		;6408
	in a,(038h)		;640b
	xor b			;640d
	add a,b			;640e
	cp l			;640f
	call nc,02ee0h		;6410
	sbc a,a			;6413
	jp p,01948h		;6414
	sbc a,c			;6417
	ret m			;6418
l6419h:
	xor d			;6419
	push de			;641a
	ld h,c			;641b
	ret p			;641c
	ld c,c			;641d
	ld d,d			;641e
l641fh:
	dec d			;641f
	add a,b			;6420
l6421h:
	cpl			;6421
	dec hl			;6422
	adc a,017h		;6423
	ld c,c			;6425
	rst 8			;6426
	ld d,d			;6427
	ld (hl),l		;6428
	and 06ah		;6429
	add a,d			;642b
	jp po,0d891h		;642c
	ld a,a			;642f
	adc a,(hl)		;6430
	cp d			;6431
	ld h,h			;6432
	sub e			;6433
l6434h:
	or (hl)			;6434
	ld a,(hl)		;6435
	rlca			;6436
	add a,a			;6437
	ld a,c			;6438
	adc a,(hl)		;6439
	cp 0d4h			;643a
	jr nc,l63e7h		;643c
	or c			;643e
	rst 18h			;643f
	cp d			;6440
	xor (hl)		;6441
	ld l,(hl)		;6442
	rst 38h			;6443
	ld h,c			;6444
l6445h:
	ex de,hl		;6445
	dec l			;6446
	ld a,e			;6447
	xor a			;6448
	ld c,e			;6449
	cp c			;644a
	and (iy-06fh)		;644b
l644eh:
	add hl,sp		;644e
	ld d,c			;644f
	inc d			;6450
	ld h,b			;6451
	xor h			;6452
	jp po,0fe99h		;6453
sub_6456h:
	ld (hl),b		;6456
	inc b			;6457
	add a,d			;6458
	defb 0ddh,0b7h,0dch ;illegal sequence	;6459
	adc a,a			;645c
	ld a,c			;645d
	inc c			;645e
	add hl,bc		;645f
l6460h:
	rla			;6460
	cp e			;6461
	ld a,c			;6462
	and d			;6463
	add a,h			;6464
	nop			;6465
	ret p			;6466
l6467h:
	rrca			;6467
	call 01578h		;6468
	dec d			;646b
	ld de,01aach		;646c
	or h			;646f
	ld b,l			;6470
	adc a,00ch		;6471
	or h			;6473
	sub l			;6474
	add hl,de		;6475
	add a,a			;6476
	in a,(0a6h)		;6477
	ld l,d			;6479
	cp 06bh			;647a
	pop de			;647c
	cpl			;647d
	call p,003b5h		;647e
	ld b,(hl)		;6481
	rlca			;6482
	dec l			;6483
	add hl,sp		;6484
	cp (hl)			;6485
	jp nc,0989ah		;6486
	jp po,08106h		;6489
	ld (hl),e		;648c
	ex de,hl		;648d
	ld a,(bc)		;648e
	xor 0c7h		;648f
	ld (de),a		;6491
	xor a			;6492
	or h			;6493
	add hl,de		;6494
	call nz,01cc5h		;6495
	ex af,af'		;6498
	inc b			;6499
	inc d			;649a
	dec h			;649b
	and l			;649c
	ret			;649d
	cp 027h			;649e
	cp 021h			;64a0
	nop			;64a2
	call 0dd7bh		;64a3
	adc a,b			;64a6
	sbc a,b			;64a7
	sbc a,c			;64a8
	ret pe			;64a9
	add a,c			;64aa
	sub c			;64ab
	daa			;64ac
	ret po			;64ad
	rst 38h			;64ae
	ld a,e			;64af
sub_64b0h:
	dec de			;64b0
	jp p,0cdfdh		;64b1
	ld a,h			;64b4
	ld d,(hl)		;64b5
	sub c			;64b6
	ret z			;64b7
	ld a,(hl)		;64b8
l64b9h:
	pop de			;64b9
	ld c,d			;64ba
	ld a,a			;64bb
	ld b,h			;64bc
	ld a,a			;64bd
	jp c,0f13bh		;64be
	ld a,a			;64c1
	ld (hl),l		;64c2
	sub b			;64c3
	djnz l6460h		;64c4
	adc a,d			;64c6
	add hl,bc		;64c7
	rst 20h			;64c8
	xor l			;64c9
	ld a,e			;64ca
	sub a			;64cb
	ld h,(hl)		;64cc
	add a,c			;64cd
l64ceh:
	ld h,h			;64ce
	or l			;64cf
	xor 097h		;64d0
	ld b,d			;64d2
	ld a,h			;64d3
	ld d,048h		;64d4
	cp e			;64d6
	and 084h		;64d7
	inc de			;64d9
	sub b			;64da
	ld c,d			;64db
	sub e			;64dc
	ld (hl),e		;64dd
	ld a,a			;64de
	cp 014h			;64df
	cp 0a4h			;64e1
	add a,l			;64e3
	ld l,c			;64e4
	ld a,l			;64e5
	ld b,h			;64e6
	or 09ah			;64e7
	ld (bc),a		;64e9
	ld h,b			;64ea
	or c			;64eb
	defb 0edh ;next byte illegal after ed	;64ec
	sub c			;64ed
	xor e			;64ee
	ex de,hl		;64ef
	add a,a			;64f0
	or c			;64f1
	inc bc			;64f2
	ld a,a			;64f3
	and 055h		;64f4
	rlca			;64f6
	ld d,c			;64f7
	or l			;64f8
	sub l			;64f9
	ld b,l			;64fa
	sub c			;64fb
	ld e,c			;64fc
	add a,(hl)		;64fd
l64feh:
	nop			;64fe
	dec bc			;64ff
l6500h:
	ld h,061h		;6500
	add hl,de		;6502
	adc a,h			;6503
	jp po,03b90h		;6504
	ld a,a			;6507
	nop			;6508
	xor e			;6509
	cp (hl)			;650a
	cp a			;650b
	inc sp			;650c
	sub h			;650d
	ld c,b			;650e
	add hl,sp		;650f
	or e			;6510
	cp 0afh			;6511
	ret			;6513
	inc c			;6514
	ld b,c			;6515
	ld a,(hl)		;6516
	adc a,d			;6517
	sub h			;6518
	and h			;6519
	sub h			;651a
	add a,l			;651b
	dec bc			;651c
	cpl			;651d
	adc a,b			;651e
	xor h			;651f
	sbc a,(hl)		;6520
	add a,0ddh		;6521
	inc hl			;6523
	and h			;6524
	inc l			;6525
	ld a,b			;6526
	ld c,a			;6527
	ld b,09dh		;6528
	nop			;652a
	call 0d4d7h		;652b
	ld sp,0f126h		;652e
	ex de,hl		;6531
	add hl,bc		;6532
	djnz l64ceh		;6533
	ld (hl),c		;6535
	jr nz,l65b4h		;6536
	rrca			;6538
	ld bc,0393ch		;6539
	ld a,a			;653c
	rst 8			;653d
l653eh:
	dec de			;653e
	dec d			;653f
	ret c			;6540
	sub a			;6541
	sub c			;6542
	pop de			;6543
	call nz,l74fdh+1	;6544
l6547h:
	ld d,0b4h		;6547
	cp 0eah			;6549
	dec bc			;654b
	add a,l			;654c
	add hl,sp		;654d
	ret m			;654e
	nop			;654f
	ld h,e			;6550
	rst 38h			;6551
	adc a,c			;6552
	add a,d			;6553
	rst 18h			;6554
	and e			;6555
	ret			;6556
	ld l,c			;6557
	sub h			;6558
	or l			;6559
	call c,031bch		;655a
	xor a			;655d
	ld (hl),c		;655e
	inc d			;655f
	call c,08977h		;6560
	inc sp			;6563
l6564h:
	jp z,0fee6h		;6564
	ld e,c			;6567
	adc a,h			;6568
	ld c,b			;6569
	sub b			;656a
	rst 0			;656b
	ld a,a			;656c
	ld bc,0310fh		;656d
	djnz l65a4h		;6570
	ld a,e			;6572
	cp e			;6573
	or a			;6574
sub_6575h:
	djnz l653eh		;6575
	adc a,d			;6577
	ld h,l			;6578
	add a,b			;6579
	scf			;657a
	rst 38h			;657b
	jr z,l65cfh		;657c
	ld (hl),b		;657e
	ld d,l			;657f
	sbc a,b			;6580
	add hl,de		;6581
	inc de			;6582
	dec h			;6583
	ld h,l			;6584
	ld c,c			;6585
	cp 0d8h			;6586
	ld hl,01165h		;6588
l658bh:
	ret p			;658b
	ld a,a			;658c
	ret			;658d
	ld e,e			;658e
	sbc a,a			;658f
l6590h:
	or e			;6590
	cp h			;6591
	and 0f5h		;6592
	xor a			;6594
	adc a,h			;6595
	jp nz,l79a9h		;6596
	ld h,b			;6599
	add a,b			;659a
	inc (hl)		;659b
	add a,e			;659c
	ld (hl),c		;659d
	inc bc			;659e
	call m,08391h		;659f
	inc d			;65a2
	add a,d			;65a3
l65a4h:
	sub e			;65a4
	rst 8			;65a5
	cp c			;65a6
	ld e,d			;65a7
	sbc a,h			;65a8
	ld sp,hl		;65a9
	ld sp,0f9d7h		;65aa
	ld h,e			;65ad
	adc a,l			;65ae
	add hl,bc		;65af
	dec c			;65b0
	ld a,l			;65b1
	ld e,h			;65b2
	ccf			;65b3
l65b4h:
	sub l			;65b4
	jr c,l65d8h		;65b5
	sbc a,c			;65b7
	rst 38h			;65b8
	or d			;65b9
	add a,b			;65ba
	inc e			;65bb
l65bch:
	ret m			;65bc
	ld a,a			;65bd
	dec h			;65be
	ld d,h			;65bf
	add a,b			;65c0
	add hl,bc		;65c1
	ld d,l			;65c2
	ld c,c			;65c3
	cp 002h			;65c4
	ld b,d			;65c6
	ld d,(hl)		;65c7
	ld d,h			;65c8
	ld c,c			;65c9
	cp 05ah			;65ca
	or c			;65cc
	sub b			;65cd
	ld (de),a		;65ce
l65cfh:
	adc a,e			;65cf
	ld l,017h		;65d0
	nop			;65d2
	cp l			;65d3
	sbc a,(hl)		;65d4
	ret nz			;65d5
	ld b,a			;65d6
	add a,c			;65d7
l65d8h:
	res 5,a			;65d8
	ex de,hl		;65da
	adc a,b			;65db
	ld e,e			;65dc
	ld (hl),c		;65dd
	add a,(hl)		;65de
	ld b,c			;65df
	ld (de),a		;65e0
	adc a,b			;65e1
	ld a,(bc)		;65e2
	jr c,l65bch		;65e3
	inc (hl)		;65e5
	pop af			;65e6
	add hl,sp		;65e7
	or l			;65e8
	ld b,b			;65e9
	xor a			;65ea
	ld e,e			;65eb
	sbc a,c			;65ec
	ld a,a			;65ed
	cp 03dh			;65ee
	and l			;65f0
	nop			;65f1
	djnz l6590h		;65f2
	ld a,a			;65f4
	sub e			;65f5
	inc l			;65f6
	inc hl			;65f7
	ld (hl),d		;65f8
	call c,0e829h		;65f9
	ld l,c			;65fc
	add a,b			;65fd
	sub 081h		;65fe
	inc sp			;6600
	inc d			;6601
	ld c,025h		;6602
	ld h,(hl)		;6604
	ld a,a			;6605
sub_6606h:
	adc a,c			;6606
	sub d			;6607
	halt			;6608
	cp 05ah			;6609
	push hl			;660b
	ex (sp),hl		;660c
	ld a,(hl)		;660d
	add a,d			;660e
	ld h,(hl)		;660f
	ld d,(hl)		;6610
	add a,c			;6611
	ld (l5e81h),a		;6612
	ld e,h			;6615
	ld (09352h),hl		;6616
	or h			;6619
	ld h,d			;661a
	ld a,a			;661b
	add hl,de		;661c
	xor (hl)		;661d
	xor (hl)		;661e
	ret m			;661f
	sub d			;6620
	adc a,b			;6621
	xor h			;6622
	ld sp,00e9bh		;6623
	add hl,sp		;6626
	dec bc			;6627
	dec hl			;6628
	add hl,bc		;6629
	and c			;662a
	ld (hl),e		;662b
	call m,0ad73h		;662c
	adc a,c			;662f
	sbc a,a			;6630
	ex af,af'		;6631
	rst 10h			;6632
l6633h:
	exx			;6633
	adc a,0e1h		;6634
	cp c			;6636
	ld (hl),b		;6637
	sub h			;6638
	and 0c3h		;6639
	inc bc			;663b
	add a,c			;663c
	inc e			;663d
	ld l,c			;663e
	add a,c			;663f
	ld l,a			;6640
	xor 034h		;6641
	exx			;6643
	jp p,0f2afh		;6644
l6647h:
	add hl,sp		;6647
	dec h			;6648
	daa			;6649
	ld h,c			;664a
	cp 06bh			;664b
	adc a,e			;664d
	and e			;664e
	sub l			;664f
	ld b,(hl)		;6650
	ld a,(hl)		;6651
	inc a			;6652
	cp a			;6653
	add hl,hl		;6654
	halt			;6655
	ld e,c			;6656
	add a,h			;6657
	call po,097bdh		;6658
	sub h			;665b
	add a,d			;665c
	call po,09cfeh		;665d
	add a,h			;6660
	jp z,0a78ah		;6661
	cp b			;6664
	xor (hl)		;6665
sub_6666h:
	inc b			;6666
	add hl,bc		;6667
	call z,0fc63h		;6668
	ld sp,025c0h		;666b
	add a,00eh		;666e
	inc de			;6670
	rst 0			;6671
	exx			;6672
	jp c,021c3h		;6673
	ret nz			;6676
	ld e,h			;6677
	inc a			;6678
	ld b,e			;6679
	ld de,08091h		;667a
	ld (hl),c		;667d
	ld a,(hl)		;667e
	or 014h			;667f
	add a,b			;6681
	and h			;6682
	cp 073h			;6683
	cp 023h			;6685
	add hl,hl		;6687
	dec e			;6688
	or h			;6689
	sub l			;668a
	ei			;668b
	ld h,b			;668c
	ld h,h			;668d
	ld d,(hl)		;668e
	ld h,a			;668f
	rra			;6690
	ld (hl),a		;6691
	ld h,a			;6692
	ld h,l			;6693
	ld a,a			;6694
	inc (hl)		;6695
	cp 0aeh			;6696
	ld l,l			;6698
	ld e,e			;6699
	ld a,a			;669a
	cp l			;669b
	or e			;669c
	sub (hl)		;669d
	out (003h),a		;669e
	xor a			;66a0
	ret c			;66a1
	ld c,b			;66a2
	sub b			;66a3
	cp 07ch			;66a4
	cp (hl)			;66a6
	or l			;66a7
	ld h,a			;66a8
	sbc a,a			;66a9
	ld c,09dh		;66aa
	ld a,c			;66ac
	ld a,a			;66ad
	rla			;66ae
	add hl,de		;66af
	pop bc			;66b0
	pop hl			;66b1
	ld b,h			;66b2
	ex (sp),hl		;66b3
	ret nz			;66b4
	ld d,e			;66b5
l66b6h:
	ld de,0ba9bh		;66b6
	sub e			;66b9
	add a,b			;66ba
	pop hl			;66bb
	sbc a,b			;66bc
	dec sp			;66bd
	ld h,(hl)		;66be
	ld de,0c4a5h		;66bf
	ld b,l			;66c2
	ld h,a			;66c3
	sub b			;66c4
	cp 049h			;66c5
	sub l			;66c7
	sbc a,a			;66c8
	ld a,a			;66c9
	ld (hl),a		;66ca
	ld a,a			;66cb
	inc a			;66cc
	ld (bc),a		;66cd
	nop			;66ce
	push hl			;66cf
	or c			;66d0
	jp m,0f7afh		;66d1
	ld (02e88h),a		;66d4
	ld l,a			;66d7
	ld e,090h		;66d8
	xor a			;66da
	res 3,l			;66db
	or 067h			;66dd
	ret nz			;66df
	add a,h			;66e0
	or e			;66e1
	add a,b			;66e2
	ld c,e			;66e3
	ld a,a			;66e4
	ld e,e			;66e5
	cp (hl)			;66e6
	cp e			;66e7
	sub c			;66e8
	ld sp,hl		;66e9
	ld b,e			;66ea
	ld hl,(0facah)		;66eb
	or l			;66ee
	ld d,l			;66ef
	ld a,(bc)		;66f0
	and a			;66f1
	xor h			;66f2
	and d			;66f3
	ld a,(bc)		;66f4
	add a,a			;66f5
	dec d			;66f6
	sub c			;66f7
	ld (00ac2h),hl		;66f8
	xor 094h		;66fb
	jr z,l66b6h		;66fd
	dec d			;66ff
	ret			;6700
	xor c			;6701
	ret pe			;6702
	adc a,b			;6703
	sub 0aah		;6704
	ret			;6706
	ld c,e			;6707
	add hl,sp		;6708
	call 0d773h		;6709
	ld c,c			;670c
	rst 18h			;670d
	nop			;670e
	ret m			;670f
	and h			;6710
	sub b			;6711
	add a,e			;6712
	rst 30h			;6713
	ld a,b			;6714
	ld h,e			;6715
	ld (hl),h		;6716
	cp h			;6717
	ld (hl),l		;6718
	ld a,(de)		;6719
	ld de,02a5eh		;671a
	halt			;671d
	call z,0f188h		;671e
	ld a,(bc)		;6721
	dec d			;6722
	ld l,a			;6723
	dec bc			;6724
	ld a,(bc)		;6725
	inc hl			;6726
	inc l			;6727
	cp h			;6728
	ld (0db0ah),hl		;6729
	ld a,a			;672c
	ld (bc),a		;672d
	add hl,bc		;672e
	adc a,b			;672f
	add a,e			;6730
	sbc a,b			;6731
	sub (hl)		;6732
	xor b			;6733
	rst 28h			;6734
	ret			;6735
	rst 30h			;6736
	or c			;6737
	adc a,b			;6738
	or e			;6739
	scf			;673a
	sbc a,c			;673b
	nop			;673c
	pop af			;673d
	call z,08f98h		;673e
	call z,09bedh		;6741
l6744h:
	ld a,a			;6744
	call nc,sub_59d4h	;6745
	ld a,(bc)		;6748
	add hl,bc		;6749
	rst 0			;674a
	ld a,(bc)		;674b
	inc hl			;674c
	ld hl,(0cacbh)		;674d
	ld a,(bc)		;6750
	cp h			;6751
	dec bc			;6752
	ld a,e			;6753
	jp nz,0010ah		;6754
	nop			;6757
	ld c,e			;6758
	ld (hl),l		;6759
	inc b			;675a
	sbc a,b			;675b
	jr c,l67d2h		;675c
	dec a			;675e
l675fh:
	sub c			;675f
	add a,h			;6760
	rrca			;6761
	sub a			;6762
	ld (hl),a		;6763
	push hl			;6764
	ld l,d			;6765
	pop af			;6766
	ld c,a			;6767
	ld a,l			;6768
	add a,098h		;6769
	ex (sp),hl		;676b
	sbc a,b			;676c
	di			;676d
	ld (hl),a		;676e
	rst 38h			;676f
	inc c			;6770
	ld l,c			;6771
	jp nc,0db22h		;6772
	jp nc,07f7fh		;6775
	cp l			;6778
l6779h:
	adc a,b			;6779
	rrca			;677a
	ld d,l			;677b
	dec d			;677c
	ld e,(hl)		;677d
	dec bc			;677e
	cp h			;677f
	ld a,(bc)		;6780
	jp nz,09530h		;6781
	inc d			;6784
	ld b,b			;6785
	ret pe			;6786
	push hl			;6787
	inc bc			;6788
	di			;6789
	dec h			;678a
	ld (hl),a		;678b
	call 0d594h		;678c
	xor 0eah		;678f
l6791h:
	ld (hl),c		;6791
	sbc a,(hl)		;6792
	adc a,09fh		;6793
	nop			;6795
	jr c,l679bh		;6796
	ret p			;6798
	dec h			;6799
	inc e			;679a
l679bh:
	ld (hl),a		;679b
	jr z,l6791h		;679c
	sbc a,h			;679e
	adc a,07fh		;679f
	sbc a,h			;67a1
	xor l			;67a2
	cp h			;67a3
	ld (hl),h		;67a4
	inc (hl)		;67a5
	sub b			;67a6
	ld (hl),h		;67a7
	cp l			;67a8
	xor d			;67a9
	ret p			;67aa
	ld a,(bc)		;67ab
	dec sp			;67ac
	set 3,l			;67ad
	ld a,(bc)		;67af
	ld d,c			;67b0
	ld (09722h),hl		;67b1
	cp (hl)			;67b4
	ld a,(bc)		;67b5
	ld h,b			;67b6
	adc a,b			;67b7
	sub b			;67b8
	sub e			;67b9
	adc a,b			;67ba
	jr nc,l675fh		;67bb
	jp p,0a8bfh		;67bd
	inc d			;67c0
	sub a			;67c1
	cp e			;67c2
	push de			;67c3
l67c4h:
	call 0fa8eh		;67c4
	ld a,a			;67c7
	ld a,a			;67c8
	rrca			;67c9
	sbc a,c			;67ca
	ret po			;67cb
	ld a,(bc)		;67cc
	sub c			;67cd
	cp e			;67ce
	sbc a,d			;67cf
	dec e			;67d0
	di			;67d1
l67d2h:
	jr nc,l67c4h		;67d2
	rrca			;67d4
	dec c			;67d5
	sbc a,d			;67d6
	xor e			;67d7
	jp c,l6068h		;67d8
	add hl,hl		;67db
	dec sp			;67dc
	sub d			;67dd
	ld hl,(0dedbh)		;67de
	dec bc			;67e1
	ld a,(bc)		;67e2
	dec c			;67e3
	ld (l68cdh),hl		;67e4
	rst 20h			;67e7
	ld a,(bc)		;67e8
	ld (hl),h		;67e9
	adc a,a			;67ea
	ld a,(bc)		;67eb
	ld b,b			;67ec
	add a,e			;67ed
	ex af,af'		;67ee
	sub e			;67ef
	inc sp			;67f0
	rst 10h			;67f1
	nop			;67f2
	sub b			;67f3
	ld a,a			;67f4
	ld e,l			;67f5
	ld a,b			;67f6
	ld (hl),e		;67f7
	ret p			;67f8
	rra			;67f9
	ld a,a			;67fa
	ld a,b			;67fb
	ret m			;67fc
	ld (bc),a		;67fd
	ld e,c			;67fe
	ld (de),a		;67ff
	ld d,l			;6800
	sub d			;6801
	di			;6802
	add a,l			;6803
	ld (hl),a		;6804
	ld a,a			;6805
	ld (hl),e		;6806
	adc a,0aeh		;6807
	ld e,l			;6809
	dec bc			;680a
	jp p,0920ah		;680b
	xor (hl)		;680e
	ld l,b			;680f
	ld l,l			;6810
	ld a,(bc)		;6811
	or a			;6812
l6813h:
	ld (hl),h		;6813
	ld a,(bc)		;6814
	call nc,00083h		;6815
	xor d			;6818
	cp 083h			;6819
	add hl,hl		;681b
	add a,d			;681c
	ld de,0ff09h		;681d
	rst 18h			;6820
	ld a,a			;6821
	push hl			;6822
	ld b,080h		;6823
	add hl,bc		;6825
	and c			;6826
	cp e			;6827
	and a			;6828
	sbc a,d			;6829
	adc a,h			;682a
	ld a,c			;682b
	ld a,a			;682c
	rst 20h			;682d
	adc a,e			;682e
	ld (hl),c		;682f
	call c,00a9dh		;6830
	and 068h		;6833
	and c			;6835
	ld a,b			;6836
	ld c,a			;6837
	inc hl			;6838
	xor c			;6839
	ld a,(bc)		;683a
	ld e,c			;683b
	ei			;683c
	rrca			;683d
	add a,e			;683e
	adc a,c			;683f
	ld sp,hl		;6840
	ld b,e			;6841
	add hl,sp		;6842
	add a,b			;6843
	ld b,l			;6844
	daa			;6845
	rst 38h			;6846
	adc a,h			;6847
	ex de,hl		;6848
	ex (sp),hl		;6849
	ld a,a			;684a
l684bh:
	pop af			;684b
	ld b,d			;684c
	ret p			;684d
	ld (hl),l		;684e
	daa			;684f
	ld (hl),a		;6850
	add a,c			;6851
	adc a,e			;6852
	ld b,c			;6853
	ld a,a			;6854
	add a,0bah		;6855
	ld a,b			;6857
	exx			;6858
	dec sp			;6859
	ld (hl),e		;685a
	xor c			;685b
	ld a,(bc)		;685c
	exx			;685d
	sbc a,c			;685e
	xor d			;685f
	ld l,b			;6860
	sbc a,l			;6861
	ld a,(bc)		;6862
	ld (hl),c		;6863
	inc hl			;6864
	ld a,(bc)		;6865
	jp (hl)			;6866
	cp 013h			;6867
	ex af,af'		;6869
	jp (hl)			;686a
	inc (hl)		;686b
	nop			;686c
	sbc a,b			;686d
	jp z,0ff14h		;686e
	in a,(07eh)		;6871
	ex de,hl		;6873
	ret c			;6874
	call m,0317fh		;6875
	sub l			;6878
	ld (hl),d		;6879
	ld (hl),l		;687a
	push bc			;687b
	jr nz,l6813h		;687c
	ld (0a657h),hl		;687e
	xor e			;6881
	ld sp,hl		;6882
	ld (hl),e		;6883
	sbc a,0f3h		;6884
	ld a,b			;6886
	dec bc			;6887
	xor 0f1h		;6888
	xor e			;688a
	ld a,a			;688b
	ld l,b			;688c
	call m,0cfbbh		;688d
	ld (hl),h		;6890
	ld a,(bc)		;6891
	ld d,l			;6892
	inc sp			;6893
	jp m,09007h		;6894
l6897h:
	cp e			;6897
	jp pe,005a5h		;6898
	jp m,l788dh		;689b
	rst 28h			;689e
	jr nc,$-2		;689f
	ld a,a			;68a1
	ld (hl),e		;68a2
	ld d,d			;68a3
	ld (080c5h),hl		;68a4
	ld (hl),l		;68a7
	inc hl			;68a8
	dec h			;68a9
	add hl,bc		;68aa
	adc a,a			;68ab
	cp 04eh			;68ac
	and 0e3h		;68ae
	dec bc			;68b0
	and h			;68b1
	jr nc,l684bh		;68b2
	ld (hl),l		;68b4
	call z,03098h		;68b5
	adc a,a			;68b8
	and h			;68b9
	rra			;68ba
	ld a,(bc)		;68bb
	ld b,h			;68bc
	jr nc,l6930h		;68bd
	sub e			;68bf
	ld d,a			;68c0
	or b			;68c1
	ld (bc),a		;68c2
	ld (hl),l		;68c3
	ld a,a			;68c4
	ld e,d			;68c5
	adc a,e			;68c6
	ld e,e			;68c7
	rst 8			;68c8
	ld (de),a		;68c9
	rst 38h			;68ca
	ret m			;68cb
	add a,b			;68cc
l68cdh:
	rrca			;68cd
	ld a,(bc)		;68ce
	dec de			;68cf
	cp e			;68d0
	or c			;68d1
	sub h			;68d2
l68d3h:
	cp l			;68d3
	push af			;68d4
	ld a,a			;68d5
	defb 0edh ;next byte illegal after ed	;68d6
	and 0ebh		;68d7
	dec bc			;68d9
	pop af			;68da
l68dbh:
	cp b			;68db
	sub (hl)		;68dc
	adc a,e			;68dd
	ld e,(hl)		;68de
	inc bc			;68df
	dec h			;68e0
	dec a			;68e1
l68e2h:
	ld a,(bc)		;68e2
	rst 20h			;68e3
	rla			;68e4
	jp c,033e0h		;68e5
	jr c,l68f9h		;68e8
	ld c,0f3h		;68ea
	inc sp			;68ec
	ex af,af'		;68ed
	add hl,sp		;68ee
	ld a,a			;68ef
	and e			;68f0
	cp 013h			;68f1
	nop			;68f3
	rst 38h			;68f4
	ret m			;68f5
	rst 20h			;68f6
	sub e			;68f7
	add a,b			;68f8
l68f9h:
	ex (sp),hl		;68f9
	out (0ffh),a		;68fa
	ld e,a			;68fc
	or c			;68fd
	ld (hl),h		;68fe
	rst 8			;68ff
	rst 0			;6900
	ld a,(07f7dh)		;6901
	daa			;6904
	sub b			;6905
	sub a			;6906
	rst 0			;6907
	ld d,b			;6908
sub_6909h:
	jp nz,l470dh		;6909
	and b			;690c
	rst 38h			;690d
	adc a,h			;690e
	dec d			;690f
	add a,e			;6910
	inc bc			;6911
	jr c,l6897h		;6912
	sub b			;6914
	rst 38h			;6915
	ret p			;6916
	inc bc			;6917
	jr nz,l68d3h		;6918
	ld c,e			;691a
	sub b			;691b
	add a,h			;691c
	cp h			;691d
	ld a,(hl)		;691e
	ld a,a			;691f
	inc h			;6920
l6921h:
	ld (bc),a		;6921
	ld (hl),d		;6922
	and c			;6923
	or e			;6924
	add hl,hl		;6925
	ld e,d			;6926
	call c,0f3feh		;6927
	adc a,e			;692a
	ld c,(hl)		;692b
	sub d			;692c
	sbc a,b			;692d
	ex de,hl		;692e
	dec c			;692f
l6930h:
	rst 28h			;6930
	inc hl			;6931
	pop bc			;6932
	add a,b			;6933
	ex af,af'		;6934
	adc a,(hl)		;6935
	ld a,c			;6936
	jp p,02130h		;6937
	ld de,0c790h		;693a
	rst 30h			;693d
	ccf			;693e
	ld a,a			;693f
	add a,052h		;6940
	sub a			;6942
	add a,h			;6943
	ccf			;6944
	ld e,c			;6945
	ld a,a			;6946
	jr c,l68e2h		;6947
	xor e			;6949
	call p,0917fh		;694a
	xor 089h		;694d
	add a,d			;694f
	ld d,c			;6950
	jr c,l6986h		;6951
	ld a,a			;6953
	cp (hl)			;6954
	exx			;6955
	sbc a,a			;6956
	ld a,a			;6957
	sbc a,c			;6958
	inc hl			;6959
	ld sp,l7f52h		;695a
	sbc a,c			;695d
	ld a,a			;695e
	jp p,06478h		;695f
	ld a,h			;6962
	add hl,de		;6963
	ld e,00dh		;6964
	inc sp			;6966
	or b			;6967
	jp 0ed08h		;6968
	ret po			;696b
	inc sp			;696c
	ld (09829h),a		;696d
	ccf			;6970
	sub d			;6971
	inc d			;6972
	exx			;6973
	adc a,(hl)		;6974
	nop			;6975
	sbc a,009h		;6976
	jp m,09af8h		;6978
	ld a,h			;697b
	sbc a,c			;697c
	pop af			;697d
	ld a,a			;697e
	ld a,0bah		;697f
	sbc a,c			;6981
	ld a,a			;6982
	ld h,h			;6983
	sbc a,l			;6984
	add a,b			;6985
l6986h:
	cp d			;6986
	ld a,d			;6987
	ld a,a			;6988
	sub 0eeh		;6989
	ld bc,09233h		;698b
	ld (de),a		;698e
	add hl,hl		;698f
	nop			;6990
	ld b,e			;6991
	ld (hl),e		;6992
	sbc a,l			;6993
	push af			;6994
	ex (sp),hl		;6995
	rst 38h			;6996
	rst 8			;6997
	add a,h			;6998
	ld b,l			;6999
	ld b,056h		;699a
	ld h,l			;699c
	ld h,(hl)		;699d
	ld d,l			;699e
	ld e,c			;699f
	ex af,af'		;69a0
	ld bc,07746h		;69a1
	ld b,l			;69a4
	ld a,e			;69a5
	ld d,h			;69a6
	ld b,l			;69a7
	push hl			;69a8
	ld l,0b3h		;69a9
	jp p,0fbf3h		;69ab
	ld a,a			;69ae
	ld h,h			;69af
	ld d,0fbh		;69b0
	sub h			;69b2
	ret p			;69b3
	inc bc			;69b4
	ld b,d			;69b5
	ld de,08012h		;69b6
	nop			;69b9
	ld a,a			;69ba
	call p,sub_5586h	;69bb
	ld d,(hl)		;69be
	ld c,c			;69bf
	ld a,a			;69c0
	add a,e			;69c1
	cp e			;69c2
	ld d,h			;69c3
	ld d,l			;69c4
	ld b,(hl)		;69c5
	ld h,l			;69c6
	ld a,a			;69c7
	ex de,hl		;69c8
	sub a			;69c9
	rst 38h			;69ca
	ld d,a			;69cb
	sbc a,d			;69cc
	ld a,a			;69cd
	and e			;69ce
	adc a,b			;69cf
	ei			;69d0
	jp nz,00408h		;69d1
	ld a,a			;69d4
	ld (hl),c		;69d5
	sub b			;69d6
	ld a,a			;69d7
	ld (hl),l		;69d8
	in a,(090h)		;69d9
	ld a,a			;69db
	ret p			;69dc
	add a,c			;69dd
	sub h			;69de
	ld d,(hl)		;69df
	ld (hl),a		;69e0
	ld d,l			;69e1
	ld h,h			;69e2
	add a,(hl)		;69e3
	sbc a,h			;69e4
	ld b,h			;69e5
	add a,a			;69e6
	ld h,(hl)		;69e7
	dec a			;69e8
	ld h,(hl)		;69e9
	ld h,h			;69ea
	ld (hl),d		;69eb
	ld h,a			;69ec
	pop af			;69ed
	sbc a,080h		;69ee
	sbc a,09bh		;69f0
	ld a,b			;69f2
	ei			;69f3
	ld hl,01194h		;69f4
	add hl,hl		;69f7
	add a,l			;69f8
	ld h,h			;69f9
	exx			;69fa
	jp m,0ff4fh		;69fb
	pop hl			;69fe
	ld b,e			;69ff
	ld a,a			;6a00
	ld h,a			;6a01
	or (hl)			;6a02
	ld b,h			;6a03
	add hl,bc		;6a04
	add a,e			;6a05
	ld c,c			;6a06
	sub h			;6a07
	ld a,a			;6a08
	di			;6a09
	dec l			;6a0a
	add a,b			;6a0b
	in a,(000h)		;6a0c
	dec e			;6a0e
	ld (0eef2h),hl		;6a0f
	nop			;6a12
	xor a			;6a13
	cp 0c3h			;6a14
	ld de,l5644h		;6a16
	ld h,h			;6a19
	adc a,d			;6a1a
	ret c			;6a1b
	ld (hl),a		;6a1c
	halt			;6a1d
	ld c,c			;6a1e
	jp m,0897fh		;6a1f
	sbc a,d			;6a22
	defb 0ddh,0ffh,075h ;illegal sequence	;6a23
	ld a,e			;6a26
	in a,(07fh)		;6a27
	xor h			;6a29
	ld hl,0f53dh		;6a2a
	rst 20h			;6a2d
	ld a,a			;6a2e
	di			;6a2f
	ld (l7680h),hl		;6a30
	ld c,c			;6a33
	ld a,a			;6a34
	ld l,e			;6a35
	ld a,(hl)		;6a36
	or (hl)			;6a37
	ld a,a			;6a38
	ret po			;6a39
	sub d			;6a3a
	inc h			;6a3b
	sub b			;6a3c
	ld c,e			;6a3d
	add a,e			;6a3e
	pop af			;6a3f
	sbc a,h			;6a40
	cp 0feh			;6a41
	rra			;6a43
	nop			;6a44
	and d			;6a45
	ld b,(hl)		;6a46
	adc a,c			;6a47
	ld d,a			;6a48
	jp p,0951eh		;6a49
	xor l			;6a4c
	adc a,l			;6a4d
	cp h			;6a4e
	cp l			;6a4f
	ex af,af'		;6a50
	add a,a			;6a51
	sub b			;6a52
	add hl,sp		;6a53
	add hl,hl		;6a54
	sub e			;6a55
	add a,(hl)		;6a56
	ld e,a			;6a57
	ld a,a			;6a58
	or a			;6a59
	rst 10h			;6a5a
	ld e,(hl)		;6a5b
	or (hl)			;6a5c
	rst 38h			;6a5d
	pop af			;6a5e
	rra			;6a5f
	defb 0ddh,0a9h,07fh ;illegal sequence	;6a60
	ld d,a			;6a63
	adc a,a			;6a64
	ld h,l			;6a65
	add a,l			;6a66
	ld h,l			;6a67
	add a,b			;6a68
	add hl,sp		;6a69
	ld e,d			;6a6a
	adc a,e			;6a6b
	cp 000h			;6a6c
	inc (hl)		;6a6e
	xor d			;6a6f
	ld c,a			;6a70
	ret			;6a71
	ld a,a			;6a72
	adc a,(hl)		;6a73
	add a,b			;6a74
	ld a,l			;6a75
	ld e,a			;6a76
	sbc a,l			;6a77
	ld a,a			;6a78
	ld l,e			;6a79
	sub e			;6a7a
	ld l,l			;6a7b
	dec c			;6a7c
	inc bc			;6a7d
	inc bc			;6a7e
l6a7fh:
	call m,09ff2h		;6a7f
	cp 0c5h			;6a82
	sub 0a8h		;6a84
	adc a,b			;6a86
	sbc a,h			;6a87
	cp c			;6a88
	di			;6a89
	ret m			;6a8a
	ld sp,hl		;6a8b
	adc a,h			;6a8c
	exx			;6a8d
	exx			;6a8e
	rst 38h			;6a8f
	adc a,a			;6a90
	ld b,h			;6a91
	xor 06bh		;6a92
	jr nc,l6b09h		;6a94
	ld de,0d303h		;6a96
	rst 20h			;6a99
	adc a,h			;6a9a
	ld e,(hl)		;6a9b
	sbc a,e			;6a9c
	add a,d			;6a9d
	or 0e5h			;6a9e
	ld a,a			;6aa0
	xor l			;6aa1
	push af			;6aa2
	add a,b			;6aa3
	sbc a,(hl)		;6aa4
	jp nc,0f38ch		;6aa5
	in a,(0feh)		;6aa8
	adc a,h			;6aaa
	or b			;6aab
	or (hl)			;6aac
	add hl,bc		;6aad
	sbc a,h			;6aae
	add a,b			;6aaf
	ld l,d			;6ab0
	sbc a,b			;6ab1
	ld a,a			;6ab2
	sub b			;6ab3
	cp 05fh			;6ab4
	ld b,e			;6ab6
	jr z,l6abch		;6ab7
	set 0,b			;6ab9
	inc c			;6abb
l6abch:
	ret nz			;6abc
	di			;6abd
	cp (hl)			;6abe
	dec (hl)		;6abf
	exx			;6ac0
	adc a,l			;6ac1
	cp h			;6ac2
	pop af			;6ac3
	and (hl)		;6ac4
	ret po			;6ac5
	sbc a,l			;6ac6
	xor 016h		;6ac7
	add a,b			;6ac9
	xor c			;6aca
	pop af			;6acb
	inc hl			;6acc
	jp p,00984h		;6acd
	cp 072h			;6ad0
	sub b			;6ad2
	adc a,a			;6ad3
	cp 0c8h			;6ad4
	ld h,b			;6ad6
	ret			;6ad7
	ld a,a			;6ad8
	nop			;6ad9
	call z,09fcch		;6ada
	add a,b			;6add
	add a,a			;6ade
	adc a,l			;6adf
	ld a,(hl)		;6ae0
	sbc a,e			;6ae1
	cp 078h			;6ae2
	ld h,e			;6ae4
	pop af			;6ae5
	ld b,088h		;6ae6
	adc a,b			;6ae8
	ex af,af'		;6ae9
	rst 30h			;6aea
	ld a,b			;6aeb
	ld b,a			;6aec
	cp 0e5h			;6aed
	inc hl			;6aef
	inc c			;6af0
	rst 38h			;6af1
	ld b,h			;6af2
	inc c			;6af3
	defb 0ddh,0dch,080h ;illegal sequence	;6af4
	push af			;6af7
	rst 20h			;6af8
	ld a,(hl)		;6af9
	ld e,a			;6afa
	ld a,a			;6afb
	ld c,a			;6afc
	ld (hl),l		;6afd
	adc a,a			;6afe
	add hl,bc		;6aff
	ld l,a			;6b00
	nop			;6b01
l6b02h:
	defb 0edh ;next byte illegal after ed	;6b02
	cp (hl)			;6b03
	add a,l			;6b04
	inc hl			;6b05
	add a,e			;6b06
	sbc a,c			;6b07
	add a,b			;6b08
l6b09h:
	rlc b			;6b09
	pop af			;6b0b
	pop de			;6b0c
	ld bc,08782h		;6b0d
	ld (hl),b		;6b10
	sub b			;6b11
	ld a,a			;6b12
	ld (hl),d		;6b13
	rst 20h			;6b14
	jp (hl)			;6b15
l6b16h:
	add a,b			;6b16
	ld e,(hl)		;6b17
	rst 18h			;6b18
	jr l6b38h		;6b19
	rst 38h			;6b1b
	ret m			;6b1c
	ld (de),a		;6b1d
	sub e			;6b1e
	inc bc			;6b1f
	ld (hl),e		;6b20
	inc sp			;6b21
	adc a,c			;6b22
	ld e,d			;6b23
	push bc			;6b24
	nop			;6b25
	sbc a,c			;6b26
	call m,04cbeh		;6b27
	ld (bc),a		;6b2a
	call 0b047h		;6b2b
	ld a,a			;6b2e
	defb 0ddh,0d0h,066h ;illegal sequence	;6b2f
	pop bc			;6b32
	di			;6b33
	sbc a,(hl)		;6b34
	sub a			;6b35
	rst 38h			;6b36
	sub c			;6b37
l6b38h:
	adc a,e			;6b38
	pop af			;6b39
	ex (sp),hl		;6b3a
	sub (hl)		;6b3b
	ld l,h			;6b3c
	jr nc,l6b85h		;6b3d
	rra			;6b3f
	inc bc			;6b40
	add hl,sp		;6b41
	sbc a,c			;6b42
	nop			;6b43
sub_6b44h:
	ret nz			;6b44
	add a,0d0h		;6b45
	ld d,c			;6b47
	rst 0			;6b48
	ld c,h			;6b49
	sbc a,h			;6b4a
	ld a,(bc)		;6b4b
	cp d			;6b4c
	nop			;6b4d
	ld a,(bc)		;6b4e
	ex (sp),hl		;6b4f
	inc c			;6b50
	ld a,(bc)		;6b51
	cp e			;6b52
	rra			;6b53
	ld a,a			;6b54
	dec a			;6b55
	ld a,(bc)		;6b56
	xor a			;6b57
	rst 38h			;6b58
	ld h,e			;6b59
	push af			;6b5a
	jp p,000beh		;6b5b
	xor b			;6b5e
	ld d,b			;6b5f
	and d			;6b60
	ld (02059h),hl		;6b61
	adc a,072h		;6b64
	pop bc			;6b66
	jp nc,00a22h		;6b67
	call nc,00d68h		;6b6a
	cp e			;6b6d
	ld a,a			;6b6e
	ld a,(bc)		;6b6f
	inc sp			;6b70
	ld (bc),a		;6b71
	ld (00a74h),hl		;6b72
	or a			;6b75
	dec l			;6b76
	ld a,(bc)		;6b77
	ld a,(0b4edh)		;6b78
	add a,c			;6b7b
	ld a,a			;6b7c
	ld a,a			;6b7d
	ld b,00ah		;6b7e
	or (hl)			;6b80
	ld l,b			;6b81
	ld (hl),l		;6b82
	adc a,d			;6b83
	add hl,sp		;6b84
l6b85h:
	halt			;6b85
	ld (0020ah),hl		;6b86
	sbc a,l			;6b89
	dec bc			;6b8a
	jp nc,0910ah		;6b8b
	ld (08b2ah),hl		;6b8e
	cp h			;6b91
	ld a,(bc)		;6b92
	cp d			;6b93
	ld (0bc0ah),hl		;6b94
	cp 0b9h			;6b97
	rst 38h			;6b99
	inc sp			;6b9a
	ld a,(hl)		;6b9b
	call m,09210h		;6b9c
	ld hl,(094ach)		;6b9f
	add a,b			;6ba2
	cp b			;6ba3
	ld l,d			;6ba4
	ld a,(bc)		;6ba5
	dec e			;6ba6
	in a,(0c2h)		;6ba7
	ld (03c0ah),hl		;6ba9
	ld (06415h),hl		;6bac
	ld b,02ch		;6baf
	and d			;6bb1
	xor a			;6bb2
	ld a,(bc)		;6bb3
	xor d			;6bb4
	jr nc,l6b38h		;6bb5
	ld l,h			;6bb7
	rst 38h			;6bb8
	ld h,a			;6bb9
	nop			;6bba
	rst 30h			;6bbb
	pop de			;6bbc
	or d			;6bbd
	ld l,c			;6bbe
	set 1,d			;6bbf
	ld (hl),l		;6bc1
	sbc a,d			;6bc2
	ld a,(bc)		;6bc3
	ld hl,(009e1h)		;6bc4
	ld (0c915h),hl		;6bc7
	cp h			;6bca
	and d			;6bcb
	ld a,(bc)		;6bcc
	ret c			;6bcd
	ld (0ccabh),hl		;6bce
	ld a,e			;6bd1
	and d			;6bd2
	ld a,(bc)		;6bd3
	xor c			;6bd4
	add hl,bc		;6bd5
	add a,c			;6bd6
	ld (de),a		;6bd7
	sub e			;6bd8
	rst 38h			;6bd9
	call m,01219h		;6bda
	ld (0c375h),hl		;6bdd
	ld hl,0860ah		;6be0
	xor h			;6be3
	ld a,a			;6be4
	cp c			;6be5
	ld hl,l7815h		;6be6
	call z,sub_7115h	;6be9
	ld d,00ah		;6bec
	defb 0edh ;next byte illegal after ed	;6bee
	nop			;6bef
	ld d,(hl)		;6bf0
	call m,07f7fh		;6bf1
	inc c			;6bf4
	call z,sub_74c7h	;6bf5
	ld de,02f0ah		;6bf8
	jp z,0090ah		;6bfb
	ld l,c			;6bfe
	and d			;6bff
	ld a,(bc)		;6c00
	push af			;6c01
	ret nc			;6c02
	call m,0dc30h		;6c03
	add a,d			;6c06
	defb 0fdh,07ch ;ld a,iyh	;6c07
	rst 38h			;6c09
	nop			;6c0a
	rst 38h			;6c0b
	ret m			;6c0c
	nop			;6c0d
	ld l,d			;6c0e
	nop			;6c0f
	nop			;6c10
	ld a,e			;6c11
	nop			;6c12
	nop			;6c13
	sbc a,a			;6c14
	cp e			;6c15
	nop			;6c16
	nop			;6c17
	sbc a,b			;6c18
	call z,0cc3eh		;6c19
	ret nz			;6c1c
	dec e			;6c1d
	and e			;6c1e
	ld bc,01510h		;6c1f
	ex (sp),hl		;6c22
	ld h,b			;6c23
	ld de,03100h		;6c24
	ld de,00733h		;6c27
	ld c,a			;6c2a
	call p,03333h		;6c2b
	ld b,h			;6c2e
	ld a,(de)		;6c2f
	or b			;6c30
	dec bc			;6c31
	cp e			;6c32
	cp e			;6c33
	ld a,(hl)		;6c34
	ld h,(hl)		;6c35
	ld a,a			;6c36
	ld l,c			;6c37
	rst 0			;6c38
	ld (hl),b		;6c39
	dec b			;6c3a
	add a,e			;6c3b
	ld (hl),a		;6c3c
	ld (hl),a		;6c3d
	ld (hl),b		;6c3e
	dec e			;6c3f
	call po,0163eh		;6c40
	ld h,b			;6c43
	ld a,a			;6c44
	ld a,d			;6c45
	nop			;6c46
	ld a,a			;6c47
	ld (01343h),hl		;6c48
	add a,b			;6c4b
	adc a,a			;6c4c
	cp 080h			;6c4d
	or (hl)			;6c4f
	ld h,(hl)		;6c50
	ld a,h			;6c51
	ld h,(hl)		;6c52
	inc (hl)		;6c53
	sbc a,(hl)		;6c54
	nop			;6c55
	adc a,087h		;6c56
	rlca			;6c58
	sbc a,a			;6c59
	rst 0			;6c5a
	ld a,a			;6c5b
	ld hl,(0fe0ch)		;6c5c
	add hl,sp		;6c5f
	ld a,066h		;6c60
	dec bc			;6c62
	ld a,a			;6c63
	or e			;6c64
	di			;6c65
	inc sp			;6c66
	ld a,a			;6c67
	pop hl			;6c68
	ld h,h			;6c69
	dec bc			;6c6a
	ld a,a			;6c6b
	add a,c			;6c6c
	cp (hl)			;6c6d
	ld de,0b00ch		;6c6e
	rst 38h			;6c71
	rra			;6c72
	ld l,a			;6c73
	ld a,a			;6c74
	ld h,a			;6c75
	ld de,07f20h		;6c76
	ret z			;6c79
	inc de			;6c7a
	ld h,c			;6c7b
	ld de,l4403h		;6c7c
	ld b,e			;6c7f
l6c80h:
	ld a,(hl)		;6c80
	daa			;6c81
	inc (hl)		;6c82
	rst 38h			;6c83
	pop hl			;6c84
	adc a,b			;6c85
	ld a,(hl)		;6c86
	ld h,l			;6c87
	ld d,l			;6c88
	add a,c			;6c89
	call m,0cb07h		;6c8a
	ld a,a			;6c8d
	ld l,a			;6c8e
	ld a,h			;6c8f
	ld a,a			;6c90
	xor h			;6c91
	nop			;6c92
	ld b,097h		;6c93
	res 1,l			;6c95
	ld bc,01cffh		;6c97
	sub h			;6c9a
	inc d			;6c9b
	call p,08485h		;6c9c
	inc d			;6c9f
	nop			;6ca0
	add a,b			;6ca1
	cp h			;6ca2
	ld l,a			;6ca3
	ld d,(hl)		;6ca4
	ld a,a			;6ca5
	ret nz			;6ca6
	ld a,e			;6ca7
	in a,(07fh)		;6ca8
	rst 0			;6caa
	add a,b			;6cab
	xor c			;6cac
	rlca			;6cad
	inc c			;6cae
	ld a,(hl)		;6caf
	call z,0fcc9h		;6cb0
	sbc a,h			;6cb3
	ld a,a			;6cb4
	ret z			;6cb5
	ld a,d			;6cb6
	di			;6cb7
	inc b			;6cb8
	ld b,e			;6cb9
	rra			;6cba
	ld c,e			;6cbb
	nop			;6cbc
	add a,b			;6cbd
	rst 0			;6cbe
	add a,d			;6cbf
	ccf			;6cc0
	add a,b			;6cc1
	inc c			;6cc2
	ld (hl),a		;6cc3
	in a,(009h)		;6cc4
	ld a,a			;6cc6
	ld a,(00077h)		;6cc7
	ld a,c			;6cca
	ld (hl),b		;6ccb
	ld a,(hl)		;6ccc
	dec d			;6ccd
	ld (hl),a		;6cce
	ld a,h			;6ccf
	cp 0d1h			;6cd0
	ld de,0fe10h		;6cd2
	ccf			;6cd5
	jr c,l6cebh		;6cd6
	inc (hl)		;6cd8
	ld b,e			;6cd9
	sbc a,h			;6cda
	add a,d			;6cdb
sub_6cdch:
	ld a,h			;6cdc
	ld c,a			;6cdd
	ld e,02eh		;6cde
	dec bc			;6ce0
	ld a,a			;6ce1
	defb 0edh ;next byte illegal after ed	;6ce2
	adc a,e			;6ce3
	inc hl			;6ce4
	rst 38h			;6ce5
	jp (hl)			;6ce6
	rst 30h			;6ce7
	ld a,a			;6ce8
	cp (hl)			;6ce9
	ld a,l			;6cea
l6cebh:
	ld a,a			;6ceb
	add hl,hl		;6cec
	add a,b			;6ced
	add hl,bc		;6cee
	nop			;6cef
	ld (bc),a		;6cf0
	cp 0f9h			;6cf1
	sub b			;6cf3
	inc de			;6cf4
	ld a,e			;6cf5
	ld b,c			;6cf6
	inc de			;6cf7
	ld b,e			;6cf8
	ld a,034h		;6cf9
	ret p			;6cfb
	ld a,a			;6cfc
	ld a,(hl)		;6cfd
	nop			;6cfe
	ex af,af'		;6cff
	or (hl)			;6d00
	or b			;6d01
	rst 38h			;6d02
	ld sp,hl		;6d03
	ex de,hl		;6d04
	rst 10h			;6d05
	jp 0c27fh		;6d06
	rst 38h			;6d09
	ld e,h			;6d0a
	call m,0047fh		;6d0b
	ld d,066h		;6d0e
	ld h,d			;6d10
	cp 0bch			;6d11
	call nz,01433h		;6d13
	cp 041h			;6d16
	inc (hl)		;6d18
	ld c,a			;6d19
	rst 38h			;6d1a
	rst 38h			;6d1b
	inc e			;6d1c
	call pe,sub_7005h	;6d1d
	ld d,l			;6d20
	ld a,a			;6d21
	ld d,(hl)		;6d22
	ld d,d			;6d23
	ld d,l			;6d24
	add a,h			;6d25
	jp nc,08001h		;6d26
	di			;6d29
	sbc a,(hl)		;6d2a
	dec c			;6d2b
	bit 7,a			;6d2c
	rrca			;6d2e
	ld (hl),a		;6d2f
	nop			;6d30
	rrca			;6d31
	ld a,a			;6d32
	adc a,(hl)		;6d33
	add a,c			;6d34
	ld d,e			;6d35
	ld a,a			;6d36
	push hl			;6d37
	inc b			;6d38
	ld b,e			;6d39
	inc d			;6d3a
	ld b,h			;6d3b
	ld de,l7f44h		;6d3c
	cp a			;6d3f
	ld a,d			;6d40
	or b			;6d41
	ld a,l			;6d42
	cp c			;6d43
	ld d,l			;6d44
	ld a,a			;6d45
	ld (hl),b		;6d46
	ld d,l			;6d47
	nop			;6d48
	ld d,(hl)		;6d49
	sbc a,a			;6d4a
	ex af,af'		;6d4b
	or b			;6d4c
	ld a,a			;6d4d
	inc sp			;6d4e
	cp e			;6d4f
	ld a,a			;6d50
	jp po,08197h		;6d51
	inc b			;6d54
	ld (hl),b		;6d55
	ld a,a			;6d56
	call z,0eb97h		;6d57
	rrca			;6d5a
	ld a,a			;6d5b
	sub l			;6d5c
	inc de			;6d5d
	defb 0fdh,09bh,07fh ;illegal sequence	;6d5e
	ld de,0ffbfh		;6d61
	pop hl			;6d64
	jp (hl)			;6d65
	ld (hl),e		;6d66
	adc a,d			;6d67
	ld d,b			;6d68
	rst 38h			;6d69
	ld b,l			;6d6a
	ld h,l			;6d6b
	add a,c			;6d6c
	rst 20h			;6d6d
	nop			;6d6e
	inc b			;6d6f
	ld h,l			;6d70
	ld d,(hl)		;6d71
	add a,b			;6d72
	cp h			;6d73
	rst 8			;6d74
	call 08b7fh		;6d75
	ld a,(hl)		;6d78
	cp c			;6d79
	adc a,c			;6d7a
	ret			;6d7b
	ld a,a			;6d7c
	rst 0			;6d7d
	cp 03ch			;6d7e
	xor e			;6d80
	ld h,c			;6d81
	cp 0e4h			;6d82
	ld l,d			;6d84
	inc sp			;6d85
	ld a,a			;6d86
	ccf			;6d87
	call m,0f460h		;6d88
	ei			;6d8b
	rst 38h			;6d8c
	call p,0e4a7h		;6d8d
	inc d			;6d90
	dec b			;6d91
	rst 30h			;6d92
	ld (hl),b		;6d93
	ld d,b			;6d94
	or h			;6d95
	rst 38h			;6d96
	ret p			;6d97
	ld a,a			;6d98
	sbc a,b			;6d99
	add a,l			;6d9a
	ld l,e			;6d9b
	or b			;6d9c
	call m,0897fh		;6d9d
	add a,b			;6da0
	jp pe,0ca7bh		;6da1
	ld (bc),a		;6da4
	rst 38h			;6da5
	defb 0edh ;next byte illegal after ed	;6da6
	ld de,09581h		;6da7
	add a,d			;6daa
	call m,sub_7b19h	;6dab
	cp 039h			;6dae
	ld sp,hl		;6db0
	add a,h			;6db1
	defb 0fdh,0a0h,0fbh ;illegal sequence	;6db2
	call p,sub_5d43h	;6db5
	nop			;6db8
	ld a,a			;6db9
	ld h,d			;6dba
	ld c,d			;6dbb
	defb 0edh ;next byte illegal after ed	;6dbc
	ld h,l			;6dbd
	ld (hl),a		;6dbe
	cp 0adh			;6dbf
	halt			;6dc1
	rlca			;6dc2
	ld c,c			;6dc3
	add a,a			;6dc4
	add a,c			;6dc5
	inc a			;6dc6
	ld (de),a		;6dc7
	ld h,l			;6dc8
	cp e			;6dc9
	rst 38h			;6dca
	jp p,0bcbeh		;6dcb
	ld a,a			;6dce
	adc a,l			;6dcf
	dec b			;6dd0
	sbc a,a			;6dd1
	rst 38h			;6dd2
	ld a,(bc)		;6dd3
	add a,b			;6dd4
	rst 0			;6dd5
	ld l,e			;6dd6
	ld a,a			;6dd7
	pop bc			;6dd8
	ld a,(hl)		;6dd9
	sub h			;6dda
	jp m,0fc48h		;6ddb
	ld b,h			;6dde
	ld c,h			;6ddf
	rst 38h			;6de0
	defb 0fdh,044h ;ld b,iyh	;6de1
	ld c,c			;6de3
	inc sp			;6de4
	and e			;6de5
	add a,b			;6de6
l6de7h:
	dec e			;6de7
	ld d,d			;6de8
	pop af			;6de9
	ld b,(hl)		;6dea
	ret m			;6deb
	ld (hl),055h		;6dec
	add hl,bc		;6dee
	defb 0fdh,084h ;add a,iyh	;6def
	ld d,l			;6df1
	adc a,(hl)		;6df2
	or 055h			;6df3
	ld b,a			;6df5
	ld l,e			;6df6
	add a,b			;6df7
	ret z			;6df8
	in a,(070h)		;6df9
	cp l			;6dfb
	ld b,050h		;6dfc
	add a,0f9h		;6dfe
	inc hl			;6e00
	add a,b			;6e01
	pop de			;6e02
	ld (hl),b		;6e03
	ld a,a			;6e04
	bit 6,a			;6e05
	ld l,e			;6e07
	xor h			;6e08
	ret z			;6e09
	ld a,b			;6e0a
	ld c,(hl)		;6e0b
	ld bc,l7f13h		;6e0c
	inc hl			;6e0f
	cp 064h			;6e10
	defb 0fdh,09ah,083h ;illegal sequence	;6e12
	djnz $-85		;6e15
	call po,0f8bbh		;6e17
	ld c,e			;6e1a
	dec iy			;6e1b
	rst 28h			;6e1d
	scf			;6e1e
	ld a,a			;6e1f
	inc d			;6e20
	add a,l			;6e21
	or c			;6e22
	add a,b			;6e23
	defb 0ddh,082h,0bch ;illegal sequence	;6e24
l6e27h:
	add a,e			;6e27
	dec c			;6e28
	defb 0ddh,0bbh,0ddh ;illegal sequence	;6e29
	ld e,c			;6e2c
	push hl			;6e2d
	rst 38h			;6e2e
	ld a,d			;6e2f
	ld (hl),a		;6e30
	nop			;6e31
	daa			;6e32
	rlca			;6e33
l6e34h:
	rst 38h			;6e34
	ld l,l			;6e35
	adc a,h			;6e36
	pop bc			;6e37
	ld b,027h		;6e38
	ld d,a			;6e3a
	jp nz,07478h		;6e3b
	djnz l6e27h		;6e3e
	ld a,a			;6e40
	call m,0ab18h		;6e41
	ld a,a			;6e44
	ld a,(hl)		;6e45
	ld a,a			;6e46
	rst 38h			;6e47
	halt			;6e48
	ld b,l			;6e49
	xor 000h		;6e4a
	cp 02eh			;6e4c
	ld (hl),a		;6e4e
	ld a,e			;6e4f
	ld a,(hl)		;6e50
	adc a,l			;6e51
	add a,b			;6e52
	ld l,a			;6e53
	ld d,(hl)		;6e54
	pop bc			;6e55
	add a,00dh		;6e56
	add hl,hl		;6e58
	ret nz			;6e59
	in a,(0b0h)		;6e5a
	sbc a,e			;6e5c
	jr z,l6edeh		;6e5d
	sbc a,0fbh		;6e5f
	ld (097ffh),a		;6e61
	ld a,a			;6e64
	and c			;6e65
	ld bc,01116h		;6e66
	rst 38h			;6e69
	inc hl			;6e6a
	or d			;6e6b
	adc a,b			;6e6c
	ld e,b			;6e6d
	ret z			;6e6e
	adc a,c			;6e6f
	ld (l6921h),hl		;6e70
	djnz l6e87h		;6e73
	ld sp,0fe13h		;6e75
	ld c,e			;6e78
	ld a,a			;6e79
	adc a,b			;6e7a
	ld b,h			;6e7b
	cp 0b7h			;6e7c
	rst 38h			;6e7e
l6e7fh:
	adc a,(hl)		;6e7f
	ld a,h			;6e80
	ld h,(hl)		;6e81
	jp pe,001a5h		;6e82
	xor h			;6e85
	ret po			;6e86
l6e87h:
	sub h			;6e87
	sub a			;6e88
sub_6e89h:
	ret m			;6e89
	inc d			;6e8a
	ld l,l			;6e8b
	rst 38h			;6e8c
	and d			;6e8d
	dec b			;6e8e
	ld b,(hl)		;6e8f
	jp nz,l6564h		;6e90
	rst 38h			;6e93
	cp d			;6e94
	out (08bh),a		;6e95
	cp h			;6e97
	rst 38h			;6e98
	xor b			;6e99
	ld h,b			;6e9a
	ld b,012h		;6e9b
	ld d,(hl)		;6e9d
	ld (00187h),hl		;6e9e
	jr nz,$+7		;6ea1
	nop			;6ea3
	ld (02026h),hl		;6ea4
	cp 03ch			;6ea7
	ld d,e			;6ea9
	cp 02dh			;6eaa
	call p,02980h		;6eac
	nop			;6eaf
	rst 38h			;6eb0
	ld e,c			;6eb1
	add a,b			;6eb2
	ld b,(hl)		;6eb3
	ld h,l			;6eb4
	xor 032h		;6eb5
	ld h,l			;6eb7
	ret m			;6eb8
	ld l,b			;6eb9
	ld h,a			;6eba
	add a,c			;6ebb
	ld e,c			;6ebc
	ld h,b			;6ebd
	cp 0f0h			;6ebe
	sub e			;6ec0
	res 7,l			;6ec1
	ei			;6ec3
	inc bc			;6ec4
	ld d,h			;6ec5
	ld b,e			;6ec6
	ld b,h			;6ec7
	ld b,(hl)		;6ec8
	ld h,b			;6ec9
	ld a,a			;6eca
	call pe,sub_769ah	;6ecb
	ld h,0c5h		;6ece
	jp nz,0f962h		;6ed0
	jr nz,l6ef7h		;6ed3
	jr nz,$+109		;6ed5
	ld d,b			;6ed7
	inc hl			;6ed8
	ld (bc),a		;6ed9
	ld h,d			;6eda
	sub d			;6edb
	adc a,b			;6edc
	rst 38h			;6edd
l6edeh:
	and (hl)		;6ede
	ld bc,l7f34h		;6edf
	ld c,c			;6ee2
	add a,c			;6ee3
	add a,e			;6ee4
	ld d,l			;6ee5
	inc b			;6ee6
	ld (de),a		;6ee7
	cp b			;6ee8
	xor 0b6h		;6ee9
	di			;6eeb
	adc a,b			;6eec
	ld d,(hl)		;6eed
	ret pe			;6eee
	ret m			;6eef
	sub e			;6ef0
	dec b			;6ef1
	add a,c			;6ef2
	adc a,(hl)		;6ef3
	ld d,(hl)		;6ef4
	cp 078h			;6ef5
l6ef7h:
	sub c			;6ef7
	cp l			;6ef8
	add iy,bc		;6ef9
	ld b,e			;6efb
	ld b,d			;6efc
	inc (hl)		;6efd
	sbc a,d			;6efe
	ld c,a			;6eff
	ld a,a			;6f00
	xor c			;6f01
	ld bc,016f8h		;6f02
	push bc			;6f05
	di			;6f06
	ld (bc),a		;6f07
	ld de,06662h		;6f08
	rst 38h			;6f0b
	sub c			;6f0c
	cp 0c2h			;6f0d
	nop			;6f0f
	ld a,l			;6f10
	ld c,l			;6f11
	inc sp			;6f12
	ld a,b			;6f13
	ld b,e			;6f14
	defb 0fdh,0c9h,086h ;illegal sequence	;6f15
	ld (08e84h),hl		;6f18
	rst 38h			;6f1b
	dec hl			;6f1c
	ret pe			;6f1d
	sbc a,d			;6f1e
	di			;6f1f
	jp c,l4f99h		;6f20
	inc b			;6f23
	inc l			;6f24
	cp d			;6f25
	jp po,0f584h		;6f26
	ld h,b			;6f29
	rst 38h			;6f2a
	ld a,a			;6f2b
	ld a,(bc)		;6f2c
	push de			;6f2d
	cp d			;6f2e
	ld b,(hl)		;6f2f
	ld (08ec3h),hl		;6f30
	ld d,b			;6f33
	jr z,l6f36h		;6f34
l6f36h:
	rla			;6f36
	ld (hl),c		;6f37
	ld (hl),a		;6f38
	rla			;6f39
	rla			;6f3a
	ld (hl),a		;6f3b
	xor c			;6f3c
	inc bc			;6f3d
	add hl,bc		;6f3e
	inc b			;6f3f
	ld (hl),c		;6f40
	ld bc,00a66h		;6f41
	rlca			;6f44
	ld h,d			;6f45
	inc h			;6f46
	ld (de),a		;6f47
	defb 0fdh,032h,0fah ;illegal sequence	;6f48
	dec l			;6f4b
	nop			;6f4c
	sub l			;6f4d
	add a,(hl)		;6f4e
	ld b,h			;6f4f
	nop			;6f50
	cp 002h			;6f51
	adc a,0fdh		;6f53
	ld b,(hl)		;6f55
	inc (hl)		;6f56
	rst 38h			;6f57
	inc sp			;6f58
	defb 0fdh,00ah,0f4h ;illegal sequence	;6f59
	ld a,(hl)		;6f5c
	add a,b			;6f5d
	ld (hl),d		;6f5e
	jp nz,l7f4fh		;6f5f
	ld (hl),d		;6f62
	inc d			;6f63
	ld b,c			;6f64
	xor b			;6f65
	or l			;6f66
	ld bc,0e17fh		;6f67
	add a,b			;6f6a
	dec hl			;6f6b
	add a,c			;6f6c
	ld c,a			;6f6d
	ex af,af'		;6f6e
	ld h,l			;6f6f
	ld b,e			;6f70
	ld (02148h),a		;6f71
	out (046h),a		;6f74
	add a,009h		;6f76
	ld (hl),c		;6f78
	ld (hl),l		;6f79
	ld e,c			;6f7a
	inc bc			;6f7b
	ld (hl),h		;6f7c
	halt			;6f7d
	adc a,e			;6f7e
	ld (hl),c		;6f7f
	nop			;6f80
	in a,(055h)		;6f81
	rla			;6f83
	dec c			;6f84
	ld e,c			;6f85
	rlca			;6f86
	ld l,c			;6f87
	ld (hl),l		;6f88
	sub d			;6f89
	ret m			;6f8a
	ld l,a			;6f8b
	call pe,01209h		;6f8c
	call c,01612h		;6f8f
	ld c,020h		;6f92
	nop			;6f94
	call c,0fa7fh		;6f95
	ret nz			;6f98
	ld b,c			;6f99
	inc d			;6f9a
	rst 38h			;6f9b
	di			;6f9c
	ld l,l			;6f9d
	ld sp,000feh		;6f9e
	ld c,c			;6fa1
	adc a,d			;6fa2
	jp p,0f3fch		;6fa3
	ld a,a			;6fa6
	dec de			;6fa7
	jr z,l6fbah		;6fa8
	and h			;6faa
	or l			;6fab
	inc d			;6fac
	ld sp,00644h		;6fad
	rst 0			;6fb0
	sub d			;6fb1
	dec (hl)		;6fb2
	add a,d			;6fb3
	ld b,a			;6fb4
	ld a,a			;6fb5
	cp d			;6fb6
	bit 3,b			;6fb7
	adc a,h			;6fb9
l6fbah:
	nop			;6fba
	ld (de),a		;6fbb
	ld (hl),0cdh		;6fbc
	pop hl			;6fbe
	ld sp,0937eh		;6fbf
	ld (bc),a		;6fc2
	ld (hl),a		;6fc3
	push de			;6fc4
	ld a,b			;6fc5
	add hl,de		;6fc6
	scf			;6fc7
	ld (hl),c		;6fc8
	ld (hl),e		;6fc9
	ld a,(hl)		;6fca
	rrca			;6fcb
	add hl,sp		;6fcc
	ld de,0927fh		;6fcd
	and d			;6fd0
	pop af			;6fd1
	cp b			;6fd2
	add a,b			;6fd3
l6fd4h:
	inc h			;6fd4
	ld d,060h		;6fd5
	ld d,b			;6fd7
	ld h,c			;6fd8
	ld (de),a		;6fd9
	ld (bc),a		;6fda
	ld b,a			;6fdb
	or d			;6fdc
	rst 38h			;6fdd
	nop			;6fde
	inc (hl)		;6fdf
	ld b,c			;6fe0
	ld c,a			;6fe1
	ld b,e			;6fe2
	ccf			;6fe3
	ld (hl),d		;6fe4
	di			;6fe5
	add a,c			;6fe6
	call nz,013feh		;6fe7
	jp p,08d7fh		;6fea
	cp 039h			;6fed
	inc b			;6fef
	ld b,h			;6ff0
	ld a,a			;6ff1
	ld h,e			;6ff2
	inc d			;6ff3
	ld a,a			;6ff4
	ld b,c			;6ff5
	cp e			;6ff6
	sbc a,c			;6ff7
	ret m			;6ff8
	ld a,a			;6ff9
	jp nc,001ddh		;6ffa
	or c			;6ffd
	ld e,e			;6ffe
l6fffh:
	ld (l4512h),a		;6fff
	ld a,(bc)		;7002
	add a,02eh		;7003
sub_7005h:
	nop			;7005
	call pe,sub_73d6h	;7006
	inc sp			;7009
	ld b,08bh		;700a
l700ch:
	inc e			;700c
	ld c,d			;700d
	rst 38h			;700e
	call c,0ec22h		;700f
	ret nz			;7012
	dec de			;7013
	nop			;7014
	ld l,e			;7015
	ld (bc),a		;7016
	ld hl,00666h		;7017
	or (hl)			;701a
	ld hl,0fe00h		;701b
	cp b			;701e
	ld c,d			;701f
	inc de			;7020
	ld (hl),l		;7021
	rst 38h			;7022
	ld e,h			;7023
	ld (hl),052h		;7024
	inc (hl)		;7026
	ld a,a			;7027
	defb 0fdh,07dh ;ld a,iyl	;7028
	add a,c			;702a
	ld c,a			;702b
	rst 0			;702c
	rst 28h			;702d
	ld (hl),c		;702e
	dec hl			;702f
	or c			;7030
	ld a,(hl)		;7031
	ld hl,03542h		;7032
	ld b,(hl)		;7035
	defb 0fdh,0c7h,000h ;illegal sequence	;7036
	ld b,b			;7039
	ld de,01e46h		;703a
	adc a,b			;703d
	sub 0a5h		;703e
	ld l,l			;7040
	defb 0fdh,0b8h,088h ;illegal sequence	;7041
	call 0bbb0h		;7044
	ld a,(hl)		;7047
	inc de			;7048
	ld h,b			;7049
	jp po,0807fh		;704a
	ld c,h			;704d
	daa			;704e
	xor b			;704f
	inc bc			;7050
	ld a,h			;7051
	adc a,d			;7052
	ret pe			;7053
	ld b,c			;7054
	inc de			;7055
	ret c			;7056
	ld (de),a		;7057
	jp pe,06de2h		;7058
	adc a,c			;705b
	add a,e			;705c
	rrca			;705d
	cp 035h			;705e
	add a,(hl)		;7060
	ret po			;7061
	ld hl,l626bh		;7062
	ld h,a			;7065
	djnz $-120		;7066
	ld d,d			;7068
	call p,0ff38h		;7069
	ei			;706c
	jp z,l7c2fh		;706d
	ld a,a			;7070
	sub (hl)		;7071
	rst 38h			;7072
	or (hl)			;7073
	ld a,a			;7074
	res 1,c			;7075
	rst 30h			;7077
	jp nz,l4244h		;7078
	add a,d			;707b
	ld (036fdh),a		;707c
	inc de			;707f
	exx			;7080
	ld a,a			;7081
	cp d			;7082
	ld c,c			;7083
	add a,b			;7084
	rst 20h			;7085
	add a,l			;7086
	ld l,h			;7087
	nop			;7088
	xor a			;7089
	defb 0fdh,012h,0d0h ;illegal sequence	;708a
	cp e			;708d
	ld bc,01d9ah		;708e
	inc h			;7091
	inc c			;7092
	inc sp			;7093
	and e			;7094
	ld c,c			;7095
	add a,d			;7096
l7097h:
	ld l,003h		;7097
	ld a,h			;7099
	ld de,0ff33h		;709a
	adc a,004h		;709d
	adc hl,hl		;709f
	ld bc,04af9h		;70a1
	ld h,d			;70a4
	ld (hl),b		;70a5
	ld hl,l6285h		;70a6
	ld b,(hl)		;70a9
l70aah:
	ld de,l73feh		;70aa
	defb 0fdh,042h,044h ;illegal sequence	;70ad
	inc de			;70b0
	call p,0927fh		;70b1
	ld b,04fh		;70b4
	add a,l			;70b6
	xor h			;70b7
	inc sp			;70b8
l70b9h:
	rst 38h			;70b9
	ld e,l			;70ba
	add a,d			;70bb
	sbc a,07fh		;70bc
	ld e,c			;70be
	inc b			;70bf
	ld a,l			;70c0
	and c			;70c1
	dec de			;70c2
	nop			;70c3
	ld (08502h),hl		;70c4
	ld d,a			;70c7
	ld b,b			;70c8
	add a,c			;70c9
	dec sp			;70ca
	sbc a,d			;70cb
	cp e			;70cc
	ld a,l			;70cd
	add a,h			;70ce
	ld l,(hl)		;70cf
	ld b,a			;70d0
	dec bc			;70d1
	call z,001feh		;70d2
	in a,(0b1h)		;70d5
	ld de,0cf35h		;70d7
	inc e			;70da
	sbc a,0cfh		;70db
	ld b,(hl)		;70dd
	cp 0d3h			;70de
	ld c,e			;70e0
	add a,a			;70e1
	call nc,0b388h		;70e2
	di			;70e5
	sbc a,d			;70e6
	djnz l7097h		;70e7
	call m,02115h		;70e9
	call 00d94h		;70ec
	cp 075h			;70ef
	cpl			;70f1
	inc bc			;70f2
	inc d			;70f3
	di			;70f4
	inc d			;70f5
	call p,l7fffh		;70f6
sub_70f9h:
	ld c,d			;70f9
	call p,08444h		;70fa
	and (hl)		;70fd
	add a,h			;70fe
	jp (hl)			;70ff
	ld a,a			;7100
	or l			;7101
	ld a,a			;7102
l7103h:
	ret			;7103
	inc d			;7104
	ld b,d			;7105
	ld a,a			;7106
	ret			;7107
	inc d			;7108
	ld bc,00a36h		;7109
	ld b,b			;710c
	djnz l7111h		;710d
	cp (hl)			;710f
	ld e,c			;7110
l7111h:
	ld a,a			;7111
	ld e,e			;7112
	ld a,l			;7113
	sbc a,h			;7114
sub_7115h:
	rst 0			;7115
	and 0d0h		;7116
	rst 8			;7118
	rrca			;7119
	add a,b			;711a
	and a			;711b
	ld a,a			;711c
	jr nc,l719eh		;711d
	inc sp			;711f
	rst 30h			;7120
	sub h			;7121
	ld a,h			;7122
	add a,b			;7123
	ld l,h			;7124
l7125h:
	rst 30h			;7125
	ld l,(hl)		;7126
	rlca			;7127
	ld b,a			;7128
	add a,a			;7129
	jr c,l7145h		;712a
	ld bc,0d09ch		;712c
	jp 0161fh		;712f
	nop			;7132
sub_7133h:
	add a,h			;7133
	jp (hl)			;7134
	add a,a			;7135
	sbc a,l			;7136
	ld de,0ddfdh		;7137
	ret po			;713a
l713bh:
	sbc a,h			;713b
	jp m,0ff92h		;713c
	ld sp,08434h		;713f
	ld (09b82h),hl		;7142
l7145h:
	add a,d			;7145
	and (hl)		;7146
	sbc a,c			;7147
	sub e			;7148
	rst 18h			;7149
	ld a,a			;714a
	adc a,c			;714b
	ld a,b			;714c
	ld (01ba6h),hl		;714d
	rst 38h			;7150
	inc h			;7151
	dec sp			;7152
	ld (de),a		;7153
	and b			;7154
l7155h:
	xor h			;7155
	djnz l719ah		;7156
	xor h			;7158
l7159h:
	adc a,d			;7159
	sbc a,h			;715a
	rst 38h			;715b
	call c,0827eh		;715c
	ld (hl),e		;715f
	rrca			;7160
	dec bc			;7161
	xor d			;7162
	xor d			;7163
	xor e			;7164
l7165h:
	or e			;7165
sub_7166h:
	ld hl,(0e380h)		;7166
	ld a,a			;7169
	ld b,a			;716a
	daa			;716b
	jp p,l7f2ch		;716c
	ld a,l			;716f
	or d			;7170
	ld (hl),004h		;7171
	ld c,046h		;7173
	ld sp,0a38dh		;7175
	inc de			;7178
	cp 039h			;7179
	ld l,a			;717b
	or b			;717c
	ei			;717d
	ld h,c			;717e
	ld h,c			;717f
	sbc a,l			;7180
	inc b			;7181
	dec bc			;7182
	ld a,a			;7183
	dec a			;7184
	ld bc,08af9h		;7185
	add a,d			;7188
	add a,(hl)		;7189
	inc sp			;718a
	inc de			;718b
	ld b,e			;718c
	add a,h			;718d
	cpl			;718e
	rst 38h			;718f
	and a			;7190
	ret z			;7191
	ld (hl),e		;7192
	add a,b			;7193
	daa			;7194
	ld a,a			;7195
	ld e,h			;7196
	inc h			;7197
	ld b,h			;7198
	rst 38h			;7199
l719ah:
	ld b,b			;719a
	push bc			;719b
	ld b,010h		;719c
l719eh:
	add a,e			;719e
	xor l			;719f
	ld a,a			;71a0
	cp 016h			;71a1
	ret nz			;71a3
	ld h,a			;71a4
	ld a,a			;71a5
	sbc a,d			;71a6
	or b			;71a7
	ld a,a			;71a8
	or d			;71a9
	or c			;71aa
	ld bc,01336h		;71ab
	ld b,b			;71ae
	inc c			;71af
	xor b			;71b0
	rst 30h			;71b1
	push bc			;71b2
	add a,(hl)		;71b3
	ld de,0eed2h		;71b4
	ld d,(hl)		;71b7
	ld c,d			;71b8
	rst 10h			;71b9
	ld c,d			;71ba
l71bbh:
	cp 056h			;71bb
	add a,b			;71bd
	ld d,b			;71be
	ret nz			;71bf
	ld (bc),a		;71c0
	ld (hl),a		;71c1
	jr nz,l71bbh		;71c2
	ld a,b			;71c4
	inc bc			;71c5
	ld h,0a3h		;71c6
	ld a,a			;71c8
	adc a,(hl)		;71c9
	sbc a,(hl)		;71ca
	defb 0fdh,014h,04fh ;illegal sequence	;71cb
	daa			;71ce
	rst 30h			;71cf
	ld e,b			;71d0
	ld l,043h		;71d1
	cp e			;71d3
	jr z,l7159h		;71d4
	jr c,$+129		;71d6
	ld c,l			;71d8
	ld b,080h		;71d9
	add a,b			;71db
	add hl,hl		;71dc
	dec de			;71dd
	ld d,d			;71de
	rst 30h			;71df
	cp b			;71e0
	ld bc,0ad2fh		;71e1
	rst 38h			;71e4
l71e5h:
	or d			;71e5
	jr nc,$+129		;71e6
	ld a,(hl)		;71e8
	cp l			;71e9
	add hl,de		;71ea
	sbc a,b			;71eb
	ld a,c			;71ec
	ei			;71ed
	call z,09a09h		;71ee
	ld d,l			;71f1
	xor d			;71f2
	cp 080h			;71f3
	ld b,e			;71f5
	inc hl			;71f6
	and l			;71f7
l71f8h:
	ret c			;71f8
	or e			;71f9
	ld (hl),d		;71fa
	ret z			;71fb
	dec hl			;71fc
	halt			;71fd
	ld c,e			;71fe
	out (068h),a		;71ff
	rst 10h			;7201
	jp po,l6500h		;7202
	inc de			;7205
	inc bc			;7206
	dec bc			;7207
	rst 38h			;7208
l7209h:
	inc e			;7209
	cpl			;720a
	djnz l7209h		;720b
	add a,a			;720d
	ld h,(hl)		;720e
	add a,h			;720f
	adc a,d			;7210
	dec d			;7211
	dec b			;7212
	adc a,(hl)		;7213
	ld e,d			;7214
	sub e			;7215
	ret m			;7216
	rst 38h			;7217
	ld (032d7h),a		;7218
	ei			;721b
	or d			;721c
	and a			;721d
	inc l			;721e
	add a,(hl)		;721f
	and l			;7220
	rst 38h			;7221
	adc a,d			;7222
	ld e,l			;7223
	sbc a,0d1h		;7224
	ld h,l			;7226
	ld a,a			;7227
	xor b			;7228
	ld b,b			;7229
	ld a,(hl)		;722a
	ld b,d			;722b
	ld (01173h),a		;722c
	ld a,a			;722f
	ld b,032h		;7230
	inc h			;7232
	inc bc			;7233
	cp e			;7234
	call po,07db6h		;7235
	ld d,(hl)		;7238
	sub a			;7239
	cp 048h			;723a
	ld a,a			;723c
	xor e			;723d
	ret			;723e
	ld c,00bh		;723f
	cp l			;7241
	cp e			;7242
	ld (0320dh),a		;7243
	ld (hl),d		;7246
	add a,d			;7247
	or 0f5h			;7248
	ld d,e			;724a
	call 00db7h		;724b
	ld l,c			;724e
	add a,e			;724f
	inc hl			;7250
	adc a,d			;7251
	dec a			;7252
	jp m,l6004h		;7253
	ld de,08460h		;7256
	ld h,d			;7259
	ld bc,l5681h		;725a
	ld h,c			;725d
	ld a,(de)		;725e
	ld (0251bh),hl		;725f
	ld l,003h		;7262
	adc a,c			;7264
	sbc a,d			;7265
	ld sp,021f6h		;7266
	call p,024f3h		;7269
	ld c,b			;726c
	inc hl			;726d
	call p,0a4a7h		;726e
	adc a,c			;7271
	push hl			;7272
	ld a,a			;7273
	ld b,0e6h		;7274
	add hl,de		;7276
	ld a,a			;7277
	call nz,sub_4279h	;7278
	ld e,c			;727b
	inc hl			;727c
	xor c			;727d
	add a,b			;727e
	adc a,h			;727f
	jp pe,0648bh		;7280
	ld l,l			;7283
	ld (iy+005h),d		;7284
	and h			;7287
	sbc a,a			;7288
	defb 0edh ;next byte illegal after ed	;7289
	nop			;728a
l728bh:
	sbc a,c			;728b
	ld a,a			;728c
	inc bc			;728d
	add hl,bc		;728e
	dec bc			;728f
	cp e			;7290
	in a,(013h)		;7291
	inc c			;7293
	adc a,b			;7294
	call pe,0f6cbh		;7295
	ld d,e			;7298
	inc de			;7299
	inc de			;729a
	call 00057h		;729b
	ld l,l			;729e
	adc a,h			;729f
	scf			;72a0
	dec bc			;72a1
	ld a,a			;72a2
	ld b,b			;72a3
	ld l,e			;72a4
	or b			;72a5
	ld b,0b2h		;72a6
	ld d,(hl)		;72a8
	dec hl			;72a9
	xor h			;72aa
	defb 0ddh,044h ;ld b,ixh	;72ab
	jr nz,l728bh		;72ad
	ld d,(hl)		;72af
	and (hl)		;72b0
	exx			;72b1
	add hl,hl		;72b2
	ld e,c			;72b3
	and a			;72b4
	ld h,0adh		;72b5
	and h			;72b7
	rst 38h			;72b8
	xor h			;72b9
	dec hl			;72ba
	rst 38h			;72bb
	ld (de),a		;72bc
	rst 38h			;72bd
	call p,08043h		;72be
	ld l,(hl)		;72c1
	dec d			;72c2
	ld e,a			;72c3
	ld h,c			;72c4
	pop hl			;72c5
	pop de			;72c6
	ld b,l			;72c7
	rst 30h			;72c8
	ld h,002h		;72c9
	ld d,b			;72cb
	add a,d			;72cc
	ld sp,080a4h		;72cd
	adc a,080h		;72d0
	dec (hl)		;72d2
	ld a,a			;72d3
	cp e			;72d4
	sub (hl)		;72d5
	ret m			;72d6
	ld d,b			;72d7
	adc a,085h		;72d8
	inc a			;72da
	ld a,a			;72db
	ld b,h			;72dc
	xor d			;72dd
	xor c			;72de
	sbc a,c			;72df
	rst 38h			;72e0
	ld b,a			;72e1
	dec bc			;72e2
	dec bc			;72e3
	ld a,a			;72e4
	ld d,(hl)		;72e5
	cp 0b2h			;72e6
	pop af			;72e8
	or c			;72e9
	ei			;72ea
	ld d,d			;72eb
	add a,e			;72ec
	ld a,a			;72ed
	call c,0bd1ah		;72ee
	or c			;72f1
	rst 38h			;72f2
	jp pe,09c11h		;72f3
	ld h,b			;72f6
	ld e,07fh		;72f7
	ld c,a			;72f9
	sbc a,h			;72fa
	add hl,bc		;72fb
	ld sp,09a80h		;72fc
	di			;72ff
	defb 0fdh,091h,081h ;illegal sequence	;7300
	ld h,e			;7303
	ld a,a			;7304
	ld de,l6a7fh		;7305
	ld h,b			;7308
	ld h,h			;7309
	add a,b			;730a
	ld d,d			;730b
	rst 0			;730c
	xor b			;730d
	ret m			;730e
	push de			;730f
	ld b,d			;7310
	ld a,a			;7311
	push de			;7312
	ld c,e			;7313
	ld b,e			;7314
	or h			;7315
	inc e			;7316
	cp 064h			;7317
	call m,sub_7fb3h	;7319
	ret z			;731c
	ex af,af'		;731d
	defb 0ddh,0d0h,0b5h ;illegal sequence	;731e
	halt			;7321
	ld a,a			;7322
	sub b			;7323
	xor l			;7324
	inc d			;7325
	add a,d			;7326
	sbc a,c			;7327
	adc a,c			;7328
	dec de			;7329
	defb 0ddh,080h,071h ;illegal sequence	;732a
	cp 089h			;732d
	ld d,a			;732f
	ld c,a			;7330
	add a,a			;7331
	add hl,sp		;7332
	adc a,h			;7333
	or d			;7334
	add a,(hl)		;7335
	call nz,0faffh		;7336
	sub d			;7339
	ld de,0ff0bh		;733a
	sub 021h		;733d
	inc l			;733f
	inc d			;7340
	call m,0f42eh		;7341
	ld c,a			;7344
	add a,h			;7345
	ld c,c			;7346
	call p,0fd87h		;7347
	daa			;734a
	adc a,d			;734b
	inc e			;734c
	ld a,a			;734d
	ld e,b			;734e
	ld e,e			;734f
	call po,0b0a6h		;7350
	ld de,0b3f9h		;7353
	rst 38h			;7356
	inc hl			;7357
	inc b			;7358
	dec b			;7359
	dec de			;735a
	inc h			;735b
	add a,c			;735c
	or c			;735d
	cp 099h			;735e
	inc e			;7360
	ld a,a			;7361
	jp po,08807h		;7362
	ld (hl),h		;7365
	cp e			;7366
	add hl,bc		;7367
	ld a,a			;7368
	xor d			;7369
	sbc a,e			;736a
	ld sp,0bd90h		;736b
	add a,l			;736e
	ld h,l			;736f
	ld (0aa70h),a		;7370
	sub a			;7373
	ld a,e			;7374
	jp z,l4bd7h		;7375
	jp z,081e5h		;7378
	ld hl,0e646h		;737b
	dec b			;737e
	ld de,l6434h		;737f
	adc a,c			;7382
	adc a,d			;7383
	inc (hl)		;7384
	rst 38h			;7385
	ld sp,hl		;7386
	and e			;7387
	sbc a,a			;7388
	ld h,(hl)		;7389
	jp m,080cch		;738a
	sbc a,e			;738d
	add a,d			;738e
	adc a,b			;738f
	rst 30h			;7390
	adc a,b			;7391
	adc a,07fh		;7392
	and a			;7394
	add a,b			;7395
	dec h			;7396
	add a,b			;7397
	ld h,0f1h		;7398
	sub h			;739a
	cp d			;739b
	jp c,0f882h		;739c
	cp b			;739f
	sbc a,l			;73a0
	adc a,d			;73a1
	adc a,d			;73a2
	ex (sp),hl		;73a3
	call m,0fb92h		;73a4
	sbc a,c			;73a7
	and a			;73a8
	add a,b			;73a9
	dec b			;73aa
	call 066feh		;73ab
	ld a,a			;73ae
	add hl,bc		;73af
	cp e			;73b0
	cp l			;73b1
	defb 0ddh,000h,0d0h ;illegal sequence	;73b2
	xor c			;73b5
	add hl,hl		;73b6
	ld l,h			;73b7
	dec hl			;73b8
	ld b,e			;73b9
	ld (hl),d		;73ba
	ld (hl),l		;73bb
	ld a,h			;73bc
	inc de			;73bd
	ld h,(hl)		;73be
	add a,e			;73bf
	ld de,l644eh		;73c0
	add a,(hl)		;73c3
	ld c,(hl)		;73c4
	adc a,c			;73c5
	ld (08246h),hl		;73c6
	cp a			;73c9
	rst 38h			;73ca
	ld h,l			;73cb
	ld bc,0f5ffh		;73cc
	xor d			;73cf
	ld l,c			;73d0
	push af			;73d1
	ld c,c			;73d2
	jp m,0ff48h		;73d3
sub_73d6h:
	xor h			;73d6
	and a			;73d7
	out (083h),a		;73d8
	adc a,e			;73da
	ld c,h			;73db
	sbc a,b			;73dc
	defb 0ddh,07fh,054h ;illegal sequence	;73dd
	ld d,l			;73e0
	ld l,b			;73e1
	add a,c			;73e2
	sbc a,h			;73e3
	ld a,a			;73e4
	inc hl			;73e5
l73e6h:
	djnz l73e6h		;73e6
	scf			;73e8
	ld l,07fh		;73e9
	inc d			;73eb
	cp e			;73ec
	call m,0561dh		;73ed
	nop			;73f0
	ld a,a			;73f1
l73f2h:
	ld d,e			;73f2
	add a,b			;73f3
	ld a,d			;73f4
	ld a,a			;73f5
	xor e			;73f6
	adc a,h			;73f7
	rst 38h			;73f8
	dec l			;73f9
	call c,0ffc0h		;73fa
	adc a,h			;73fd
l73feh:
	rst 0			;73fe
	adc a,0c7h		;73ff
	ret			;7401
	ld (hl),c		;7402
	ld b,h			;7403
	add a,b			;7404
	ld e,d			;7405
	ld l,(hl)		;7406
	adc a,c			;7407
	ld b,036h		;7408
	ld h,(hl)		;740a
	cp e			;740b
	rst 20h			;740c
	rst 38h			;740d
	ld a,044h		;740e
	ld bc,0a59ah		;7410
	sbc a,(hl)		;7413
	rrca			;7414
	rst 38h			;7415
	ret m			;7416
	ld b,l			;7417
	call p,0ebb5h		;7418
	inc d			;741b
	add a,b			;741c
	ld b,l			;741d
	ld (bc),a		;741e
	sub a			;741f
	ld h,h			;7420
	ld a,a			;7421
	ld d,b			;7422
	sbc a,l			;7423
	add a,b			;7424
	sub h			;7425
	add a,b			;7426
	ld c,c			;7427
	ld (bc),a		;7428
	sub b			;7429
	cp 029h			;742a
	cp 01ch			;742c
	inc hl			;742e
	djnz l73f2h		;742f
	jr l743eh		;7431
	ld sp,hl		;7433
	sub l			;7434
	rst 30h			;7435
	rst 18h			;7436
	ld a,a			;7437
	adc a,e			;7438
	xor d			;7439
	ld a,a			;743a
	ld h,d			;743b
	xor e			;743c
	inc sp			;743d
l743eh:
	call z,0ff00h		;743e
	sbc a,b			;7441
	ex de,hl		;7442
	and h			;7443
	ld (hl),a		;7444
	ld b,(hl)		;7445
	or 061h			;7446
	ld h,(hl)		;7448
	ld b,e			;7449
	inc b			;744a
	dec hl			;744b
	and 085h		;744c
	ex af,af'		;744e
	ld b,h			;744f
	xor 08ch		;7450
	defb 0ddh,0ffh,0f9h ;illegal sequence	;7452
	ld l,c			;7455
sub_7456h:
	ld a,a			;7456
	cp 04eh			;7457
	add a,c			;7459
	add hl,hl		;745a
	jr nc,l7460h		;745b
	inc de			;745d
	xor h			;745e
	ld a,d			;745f
l7460h:
	ld c,a			;7460
	or h			;7461
	call po,01c9ch		;7462
	ld b,07fh		;7465
	jp z,08e80h		;7467
	inc h			;746a
	ld b,c			;746b
	ld (de),a		;746c
	add a,l			;746d
	ld sp,07bfbh		;746e
	call m,0fc8ah		;7471
	call z,sub_70f9h	;7474
	cpi			;7477
	ret p			;7479
	ld a,a			;747a
	ld b,h			;747b
	xor d			;747c
	rst 38h			;747d
	dec c			;747e
	call po,0630dh		;747f
	ld b,(hl)		;7482
	ld d,(hl)		;7483
	ld h,e			;7484
	ei			;7485
	ld c,c			;7486
	jp m,0944dh		;7487
	ld (hl),l		;748a
	cp 0deh			;748b
	call nc,sub_6e89h	;748d
	add a,b			;7490
	dec hl			;7491
	ex (sp),hl		;7492
	dec sp			;7493
	rst 38h			;7494
	and h			;7495
	ld hl,09dfch		;7496
	rst 38h			;7499
	and 001h		;749a
	ld c,(hl)		;749c
	ld b,e			;749d
	cp 0a7h			;749e
	ld b,c			;74a0
	jr nz,l74c2h		;74a1
	and l			;74a3
	exx			;74a4
	call m,0fe4ch		;74a5
	rra			;74a8
	cp d			;74a9
	rst 38h			;74aa
	sbc a,c			;74ab
	ld a,d			;74ac
	push iy			;74ad
	and l			;74af
	add a,c			;74b0
	sub (hl)		;74b1
	dec c			;74b2
	ld (0c1bdh),hl		;74b3
	ld (de),a		;74b6
	inc sp			;74b7
	add a,e			;74b8
	inc d			;74b9
	cp 061h			;74ba
	ld d,l			;74bc
	ld h,b			;74bd
	pop bc			;74be
	ld c,h			;74bf
	ret m			;74c0
	ld a,a			;74c1
l74c2h:
	cp c			;74c2
	inc c			;74c3
	ld a,a			;74c4
	add hl,sp		;74c5
	cp e			;74c6
sub_74c7h:
	call c,0a17fh		;74c7
	ld (hl),b		;74ca
	dec l			;74cb
	ld h,h			;74cc
	ld b,(hl)		;74cd
	ld b,(hl)		;74ce
	inc b			;74cf
	ld (00234h),a		;74d0
	cp 052h			;74d3
	adc a,c			;74d5
	add a,h			;74d6
	and 08ah		;74d7
	xor 07fh		;74d9
	call po,0f759h		;74db
	adc a,e			;74de
	ld hl,0d27fh		;74df
	or d			;74e2
	add a,b			;74e3
	ld h,h			;74e4
	ld l,e			;74e5
	add a,b			;74e6
	or b			;74e7
	inc bc			;74e8
	ld b,l			;74e9
	ld b,c			;74ea
	and (iy-037h)		;74eb
	ld a,a			;74ee
	ld d,(hl)		;74ef
	xor (hl)		;74f0
	ld e,b			;74f1
	cp 0bbh			;74f2
	call p,0f38ah		;74f4
	ld a,a			;74f7
	ld a,b			;74f8
	ld h,(hl)		;74f9
	ld a,a			;74fa
	adc a,d			;74fb
	inc d			;74fc
l74fdh:
	ld (0fc33h),hl		;74fd
	ex (sp),hl		;7500
	cp b			;7501
	dec c			;7502
	sub c			;7503
	defb 0ddh,03ah,0a1h ;illegal sequence	;7504
	add a,b			;7507
	nop			;7508
	ld a,a			;7509
	jp po,08abah		;750a
	rst 38h			;750d
	defb 0fdh,078h,0beh ;illegal sequence	;750e
	xor c			;7511
	ld l,c			;7512
	add a,e			;7513
	inc sp			;7514
	ld bc,01800h		;7515
	ld l,(hl)		;7518
	inc bc			;7519
	ld c,(hl)		;751a
	sub c			;751b
	add a,e			;751c
	ld c,(hl)		;751d
	add a,b			;751e
	ld e,c			;751f
	rst 38h			;7520
	dec de			;7521
	defb 0fdh,016h,03ch ;illegal sequence	;7522
	sbc a,d			;7525
	ld de,0c31bh		;7526
	add hl,bc		;7529
	ld hl,00612h		;752a
	add a,b			;752d
	ld c,e			;752e
	sub c			;752f
	ld d,003h		;7530
	sbc a,d			;7532
	or d			;7533
	dec hl			;7534
	call p,0b404h		;7535
	ld d,(iy-001h)		;7538
	nop			;753b
	adc a,c			;753c
	ld l,(hl)		;753d
	call pe,081c6h		;753e
	inc sp			;7541
	ld d,l			;7542
	nop			;7543
	ld l,l			;7544
	ld (hl),c		;7545
	xor d			;7546
	ld a,e			;7547
	ret z			;7548
	dec (hl)		;7549
	ld d,(hl)		;754a
	ld b,c			;754b
	cp 012h			;754c
	ld h,c			;754e
	call m,l44a4h		;754f
	jp 02262h		;7552
	add a,b			;7555
	jr c,l74fdh		;7556
	rra			;7558
	rst 38h			;7559
	call sub_7fb0h		;755a
	push hl			;755d
	nop			;755e
	and l			;755f
	ld h,(hl)		;7560
	inc sp			;7561
	rst 38h			;7562
	ld l,a			;7563
	add a,e			;7564
	ld l,086h		;7565
	push hl			;7567
	add a,b			;7568
	inc h			;7569
	or a			;756a
	ld l,d			;756b
	ld h,0fah		;756c
	ld c,h			;756e
	jr c,l75efh		;756f
	ld (bc),a		;7571
	jp nc,02092h		;7572
	ld d,b			;7575
	add a,b			;7576
	ld c,002h		;7577
	or d			;7579
	nop			;757a
	sbc a,l			;757b
	call 0caf9h		;757c
l757fh:
	ld (hl),l		;757f
	call m,0fc4ah		;7580
	ret			;7583
	ld a,l			;7584
	ei			;7585
	add a,e			;7586
	scf			;7587
	ld a,a			;7588
l7589h:
	adc a,d			;7589
	ld d,(hl)		;758a
	jp pe,l7ff7h		;758b
	ret			;758e
	ld b,b			;758f
	ei			;7590
	add a,d			;7591
	dec d			;7592
	call m,sub_7fach	;7593
	sub h			;7596
	adc a,d			;7597
	rst 30h			;7598
	ld a,a			;7599
	dec h			;759a
	xor c			;759b
	dec bc			;759c
	cp 0ach			;759d
	jr z,l75d3h		;759f
	ld b,(hl)		;75a1
	ld h,(hl)		;75a2
	ld (bc),a		;75a3
	call p,034b5h		;75a4
	dec b			;75a7
	ld b,(hl)		;75a8
	add a,d			;75a9
	ld l,h			;75aa
	dec bc			;75ab
	inc bc			;75ac
	ld h,h			;75ad
	pop hl			;75ae
	ld a,a			;75af
	ld h,(hl)		;75b0
	ei			;75b1
	dec h			;75b2
	add a,e			;75b3
	ld b,d			;75b4
	ld (de),a		;75b5
	ld h,c			;75b6
	ld h,0c0h		;75b7
	daa			;75b9
	dec h			;75ba
l75bbh:
	jp po,0b685h		;75bb
	jr nz,l75c0h		;75be
l75c0h:
	call p,0fe45h		;75c0
	ld e,b			;75c3
	jp m,08071h		;75c4
	xor h			;75c7
	dec d			;75c8
	call m,0f4e2h		;75c9
	ld a,a			;75cc
	jp 0e188h		;75cd
	ld (hl),e		;75d0
	ret z			;75d1
	dec d			;75d2
l75d3h:
	or (hl)			;75d3
	add a,b			;75d4
	dec hl			;75d5
	ld a,(hl)		;75d6
	sub l			;75d7
	adc a,a			;75d8
	sbc a,h			;75d9
	ld d,h			;75da
	dec l			;75db
	inc d			;75dc
	call m,0fc8ah		;75dd
	and l			;75e0
	cp (hl)			;75e1
	ld (0d4c0h),hl		;75e2
	sub a			;75e5
	sub h			;75e6
	rst 38h			;75e7
	xor a			;75e8
	adc a,d			;75e9
	dec b			;75ea
	sbc a,d			;75eb
	cp 054h			;75ec
	ld a,a			;75ee
l75efh:
	rst 38h			;75ef
	or a			;75f0
	jp m,l6633h		;75f1
	ld (hl),c		;75f4
	add a,(hl)		;75f5
	ld h,h			;75f6
	ld a,h			;75f7
	ld (hl),064h		;75f8
	ld a,b			;75fa
	adc a,(hl)		;75fb
	ld e,c			;75fc
	ld e,a			;75fd
	ld b,(hl)		;75fe
	jp m,08011h		;75ff
	adc a,(hl)		;7602
	ld (de),a		;7603
	ld bc,01c64h		;7604
	jr nz,l7589h		;7607
	and h			;7609
	sub 0c9h		;760a
	inc d			;760c
	ld sp,hl		;760d
	ld c,h			;760e
	ld a,a			;760f
	jp sub_7fb3h		;7610
	adc a,c			;7613
	add a,d			;7614
	call z,0d727h		;7615
	ld a,a			;7618
	ld h,(hl)		;7619
	ld a,(hl)		;761a
	inc e			;761b
	add a,c			;761c
	xor l			;761d
	inc h			;761e
	add hl,sp		;761f
	adc a,e			;7620
	sbc a,(hl)		;7621
	ld a,a			;7622
	sbc a,c			;7623
	cp c			;7624
	ld c,e			;7625
	add a,a			;7626
	ld c,c			;7627
	and c			;7628
	ld h,a			;7629
	ld a,a			;762a
	or d			;762b
	ret nz			;762c
	sbc a,d			;762d
	rst 38h			;762e
	dec (hl)		;762f
	call z,01dffh		;7630
	cp d			;7633
	ld h,(hl)		;7634
	ld (hl),b		;7635
	jp pe,08678h		;7636
	inc sp			;7639
	ld de,0942ch		;763a
	and (hl)		;763d
	rst 38h			;763e
	ld h,0b9h		;763f
	ld b,(hl)		;7641
	ld hl,02179h		;7642
	ld (05c06h),hl		;7645
	add a,(hl)		;7648
	inc c			;7649
	ld c,c			;764a
	ld (bc),a		;764b
	add a,b			;764c
	ld e,a			;764d
	ld a,(hl)		;764e
	and (hl)		;764f
	ld l,d			;7650
	rst 30h			;7651
	and e			;7652
	ld sp,l6fffh		;7653
	xor a			;7656
	jr c,l76d8h		;7657
	ld l,l			;7659
	ld (0de33h),hl		;765a
	ld (hl),c		;765d
	ld (hl),l		;765e
	add a,a			;765f
	inc h			;7660
	ld b,b			;7661
	or d			;7662
	dec l			;7663
	ld d,(hl)		;7664
	ld (hl),a		;7665
	sub a			;7666
	ld a,a			;7667
	pop bc			;7668
	dec e			;7669
	adc a,l			;766a
	ld b,(hl)		;766b
	add a,d			;766c
	call 0fe82h		;766d
	ld de,0b65bh		;7670
	rst 38h			;7673
	ld e,033h		;7674
	cp 02fh			;7676
	cp h			;7678
	sub (hl)		;7679
	or a			;767a
	ld h,(hl)		;767b
	push af			;767c
	xor h			;767d
	rst 30h			;767e
l767fh:
	di			;767f
l7680h:
	nop			;7680
	ret po			;7681
	ld h,(hl)		;7682
	ld c,l			;7683
	ld h,e			;7684
l7685h:
	adc a,d			;7685
	defb 0edh ;next byte illegal after ed	;7686
	ld l,h			;7687
	ld c,l			;7688
	or a			;7689
	add a,e			;768a
	inc (hl)		;768b
	ld a,e			;768c
	ld hl,085b4h		;768d
	sub c			;7690
	ld (bc),a		;7691
	sub b			;7692
	add a,d			;7693
	inc a			;7694
	ld h,d			;7695
	pop hl			;7696
	call c,0a1a4h		;7697
sub_769ah:
	add a,e			;769a
	ld c,a			;769b
	rst 38h			;769c
	inc l			;769d
	sub 0b6h		;769e
	dec a			;76a0
	ei			;76a1
	ld a,a			;76a2
	ld a,e			;76a3
	defb 0fdh,076h,0f4h ;illegal sequence	;76a4
	or l			;76a7
	rst 28h			;76a8
	push hl			;76a9
l76aah:
	ld a,a			;76aa
	nop			;76ab
	ld a,a			;76ac
	jp c,0fe12h		;76ad
	add hl,hl		;76b0
	and d			;76b1
	call z,0f180h		;76b2
l76b5h:
	or d			;76b5
	cp 0feh			;76b6
	ld e,d			;76b8
	and a			;76b9
	rst 38h			;76ba
	inc c			;76bb
	call m,088cbh		;76bc
	ld e,c			;76bf
	adc a,h			;76c0
	ld l,d			;76c1
	cp c			;76c2
	ld d,e			;76c3
	call m,0697ah		;76c4
	ld h,0fch		;76c7
	adc a,b			;76c9
	xor c			;76ca
	add a,d			;76cb
	sbc a,c			;76cc
	adc a,c			;76cd
	sbc a,b			;76ce
	ld de,02152h		;76cf
	ld a,a			;76d2
	ld sp,hl		;76d3
	ld d,d			;76d4
	ld a,a			;76d5
	rst 38h			;76d6
	sub d			;76d7
l76d8h:
	rlca			;76d8
	inc sp			;76d9
	ld a,a			;76da
	cp d			;76db
	rst 38h			;76dc
	add a,b			;76dd
	ld l,h			;76de
	and a			;76df
	ld h,d			;76e0
	add a,b			;76e1
	jr c,l76b5h		;76e2
	ld c,h			;76e4
	ld b,b			;76e5
	inc b			;76e6
	inc b			;76e7
	jp z,0a215h		;76e8
	rra			;76eb
	add a,d			;76ec
	scf			;76ed
	inc h			;76ee
	add a,d			;76ef
	ld l,(hl)		;76f0
	ei			;76f1
	push af			;76f2
	add a,e			;76f3
	call pe,0a2e0h		;76f4
	dec a			;76f7
	cp 094h			;76f8
	adc a,l			;76fa
	jp (hl)			;76fb
	ld (hl),d		;76fc
	ret			;76fd
	cp 029h			;76fe
	defb 0fdh,08dh ;adc a,iyl	;7700
	ld h,(hl)		;7702
	ld (0e5fdh),a		;7703
	ld (bc),a		;7706
	ld a,e			;7707
	cp l			;7708
	or 0c4h			;7709
	adc a,b			;770b
	xor a			;770c
	inc b			;770d
	inc e			;770e
	dec e			;770f
	pop hl			;7710
	add a,0ffh		;7711
	daa			;7713
	add a,l			;7714
	xor l			;7715
	inc bc			;7716
	push bc			;7717
	dec de			;7718
	adc a,(hl)		;7719
	dec h			;771a
	call p,03145h		;771b
	ld b,c			;771e
	add a,b			;771f
	sbc a,h			;7720
	ld a,a			;7721
	ld (hl),013h		;7722
	add a,l			;7724
	or c			;7725
	add a,h			;7726
	ccf			;7727
	ld a,a			;7728
	rlc b			;7729
	push hl			;772b
	ld l,(hl)		;772c
	ld a,a			;772d
	ld (hl),a		;772e
	ret nc			;772f
	adc a,(hl)		;7730
	adc a,09ch		;7731
	ld b,d			;7733
	ld a,a			;7734
	jp m,0f187h		;7735
	ld a,a			;7738
	inc b			;7739
	ld b,l			;773a
	cp 088h			;773b
	call 000e0h		;773d
	call z,0b0cch		;7740
	ld (hl),a		;7743
	defb 0ddh,00bh,07ah ;illegal sequence	;7744
	cp d			;7747
	ld a,b			;7748
	ld b,h			;7749
	cp 0f9h			;774a
	inc sp			;774c
	rlca			;774d
	add a,a			;774e
	di			;774f
	jp c,l7f53h		;7750
	and h			;7753
	ld b,0b8h		;7754
	adc a,a			;7756
	ld h,087h		;7757
	ld (hl),b		;7759
	or h			;775a
	push bc			;775b
	cp a			;775c
	ld (hl),h		;775d
	sbc a,l			;775e
	inc a			;775f
	defb 0fdh,0f4h,0fbh ;illegal sequence	;7760
	call nz,0f47fh		;7763
l7766h:
	cp b			;7766
l7767h:
	ld e,h			;7767
	ld a,a			;7768
	ld h,e			;7769
	dec de			;776a
	dec b			;776b
	rst 20h			;776c
	ld (hl),a		;776d
	xor (hl)		;776e
	sub a			;776f
	or l			;7770
	or c			;7771
	inc (hl)		;7772
	sbc a,d			;7773
	xor b			;7774
	ld (sub_7ecbh+1),a	;7775
	ld b,e			;7778
	adc a,d			;7779
	adc a,d			;777a
l777bh:
	cp 052h			;777b
	ld c,h			;777d
	sbc a,(hl)		;777e
l777fh:
	ld (iy-001h),l		;777f
	cp b			;7782
	nop			;7783
	dec c			;7784
	defb 0ddh,03bh,00dh ;illegal sequence	;7785
	in a,(00bh)		;7788
	cp a			;778a
	dec hl			;778b
	ret m			;778c
	ld a,a			;778d
	call p,0e163h		;778e
	adc a,b			;7791
	add a,c			;7792
	call 0ba0dh		;7793
	inc bc			;7796
	ld (hl),h		;7797
	sub c			;7798
	call p,00000h		;7799
	and 014h		;779c
	jp po,0ff7fh		;779e
	ld hl,(l6421h)		;77a1
	ld c,(hl)		;77a4
	ld c,a			;77a5
	rlca			;77a6
	di			;77a7
	ld a,a			;77a8
	rst 10h			;77a9
	ld b,0fbh		;77aa
	rst 0			;77ac
	xor (hl)		;77ad
	ld (hl),c		;77ae
	add a,b			;77af
	add hl,hl		;77b0
	ld (hl),d		;77b1
	ld e,l			;77b2
	and h			;77b3
	add a,h			;77b4
	add a,h			;77b5
	push bc			;77b6
	xor l			;77b7
	ret m			;77b8
	inc hl			;77b9
	inc de			;77ba
	ld a,a			;77bb
	dec b			;77bc
	dec b			;77bd
	ld d,b			;77be
	cp e			;77bf
	defb 0fdh,063h ;ld iyh,e	;77c0
	ld d,l			;77c2
	ld b,a			;77c3
	rst 0			;77c4
	ld a,a			;77c5
	add a,049h		;77c6
	ld a,h			;77c8
	ld de,09d00h		;77c9
sub_77cch:
	ld e,023h		;77cc
	ld (de),a		;77ce
	add a,b			;77cf
	rst 10h			;77d0
	ld sp,hl		;77d1
	dec bc			;77d2
	add a,b			;77d3
	cp b			;77d4
	jp m,0ff94h		;77d5
	ex de,hl		;77d8
	call m,012ffh		;77d9
	add a,c			;77dc
	add a,l			;77dd
	inc (hl)		;77de
	rst 38h			;77df
	defb 0edh ;next byte illegal after ed	;77e0
	add a,071h		;77e1
	ld a,a			;77e3
	rst 0			;77e4
	rst 30h			;77e5
	ld l,0ffh		;77e6
	and h			;77e8
	ret nz			;77e9
	sbc a,0d3h		;77ea
	sub l			;77ec
	sub 0c6h		;77ed
	ld a,a			;77ef
	ld d,(hl)		;77f0
	xor d			;77f1
	ld l,c			;77f2
	jp m,04cfch		;77f3
	ld a,c			;77f6
	ld a,a			;77f7
	dec hl			;77f8
	dec bc			;77f9
	rst 38h			;77fa
	jp 00d34h		;77fb
	ld b,(hl)		;77fe
	xor 0f2h		;77ff
	add hl,de		;7801
	ld b,c			;7802
	ld (hl),d		;7803
	cp 0a2h			;7804
	xor 0feh		;7806
	ld sp,hl		;7808
	exx			;7809
	inc c			;780a
	cp 0e6h			;780b
	cp c			;780d
	add a,e			;780e
sub_780fh:
	ld (07f20h),hl		;780f
	adc a,079h		;7812
	ld c,l			;7814
l7815h:
	inc (hl)		;7815
	di			;7816
	rst 38h			;7817
	dec sp			;7818
	jp po,01112h		;7819
	call m,033d1h		;781c
	add a,h			;781f
	ld d,l			;7820
	cp 0efh			;7821
	ld a,a			;7823
	ld l,a			;7824
	inc d			;7825
	rst 30h			;7826
	ld c,l			;7827
	rst 38h			;7828
	rst 20h			;7829
	ld a,(hl)		;782a
	scf			;782b
	ret nc			;782c
	ld a,c			;782d
	ld a,a			;782e
	ld (l5515h),a		;782f
	and d			;7832
	xor l			;7833
	rst 8			;7834
	adc a,a			;7835
	rst 38h			;7836
	ccf			;7837
	ld a,a			;7838
	nop			;7839
	inc d			;783a
	ld l,(hl)		;783b
	and 0eeh		;783c
	ex (sp),hl		;783e
	rst 38h			;783f
	halt			;7840
	ld h,d			;7841
	add a,(hl)		;7842
	adc a,087h		;7843
	dec l			;7845
	add a,c			;7846
	sub h			;7847
	ld b,c			;7848
	cp 0f2h			;7849
	ld h,c			;784b
	cp h			;784c
	inc bc			;784d
	ld a,a			;784e
	jp nc,0f101h		;784f
	ld c,h			;7852
	sbc a,(hl)		;7853
	ld c,a			;7854
	ld (hl),043h		;7855
	rra			;7857
	ld a,a			;7858
	add a,b			;7859
	call nz,08c4fh		;785a
	ld e,c			;785d
	ld a,a			;785e
	push hl			;785f
	and a			;7860
	ld e,e			;7861
	inc e			;7862
	ei			;7863
	sub e			;7864
	pop af			;7865
	sbc a,(hl)		;7866
	sbc a,c			;7867
	sub c			;7868
	add a,b			;7869
	ld b,(hl)		;786a
	ret m			;786b
	xor 0a9h		;786c
	ld d,(hl)		;786e
	sub 05eh		;786f
	add a,l			;7871
	ld h,h			;7872
	ld (bc),a		;7873
	defb 0fdh,054h ;ld d,iyh	;7874
	call m,0fb4eh		;7876
	call sub_4985h		;7879
	jp po,0efbbh		;787c
	ex af,af'		;787f
	pop af			;7880
	ld sp,0fd43h		;7881
	adc a,e			;7884
	ei			;7885
	inc de			;7886
	ld l,(hl)		;7887
	ld a,(hl)		;7888
	ld d,a			;7889
	and 0feh		;788a
	or c			;788c
l788dh:
	add a,e			;788d
	or d			;788e
	sbc a,(hl)		;788f
	pop hl			;7890
	ld a,a			;7891
	jp pe,09243h		;7892
	rst 30h			;7895
	push af			;7896
	ld hl,(00a85h)		;7897
	ld sp,0a231h		;789a
	ld c,h			;789d
	cp c			;789e
	ld c,b			;789f
	add a,e			;78a0
l78a1h:
	or e			;78a1
	push hl			;78a2
l78a3h:
	ld d,c			;78a3
	ld h,b			;78a4
	rst 38h			;78a5
	cp h			;78a6
	ld a,a			;78a7
	ld (hl),044h		;78a8
	ld a,a			;78aa
	ld sp,hl		;78ab
	ld (0997fh),a		;78ac
	ld b,014h		;78af
	rlca			;78b1
	ld a,a			;78b2
	xor e			;78b3
	dec d			;78b4
	jp m,0fa31h		;78b5
	sub h			;78b8
	dec b			;78b9
	add a,b			;78ba
	cp c			;78bb
	ld sp,0ffbdh		;78bc
	add a,0f9h		;78bf
	or d			;78c1
	and e			;78c2
	adc a,h			;78c3
	di			;78c4
	rst 18h			;78c5
	call m,06e43h		;78c6
	call po,0368bh		;78c9
	cp 0f2h			;78cc
	rst 38h			;78ce
	jp m,0feabh		;78cf
	di			;78d2
	ld c,a			;78d3
	ld a,a			;78d4
	jr nc,l78f6h		;78d5
	ld b,e			;78d7
	di			;78d8
	inc de			;78d9
	jp nz,0f9fch		;78da
	ld b,l			;78dd
	ld de,08266h		;78de
	add hl,hl		;78e1
	ld a,a			;78e2
	cp l			;78e3
	or 0afh			;78e4
	ld h,(hl)		;78e6
	ld a,a			;78e7
	jr z,l78a3h		;78e8
l78eah:
	ret			;78ea
	add a,b			;78eb
	call nz,0c130h		;78ec
	ex de,hl		;78ef
	inc de			;78f0
	out (016h),a		;78f1
	call m,sub_6575h	;78f3
l78f6h:
	jp m,l537dh		;78f6
	add a,b			;78f9
	sbc a,(hl)		;78fa
	rst 38h			;78fb
	jr c,l78a1h		;78fc
	inc sp			;78fe
sub_78ffh:
	srl l			;78ff
	defb 0fdh,089h,0afh ;illegal sequence	;7901
	dec c			;7904
	ld b,(hl)		;7905
	ld l,(hl)		;7906
	adc a,(hl)		;7907
	ld h,(hl)		;7908
	rst 38h			;7909
	inc a			;790a
	add hl,hl		;790b
	cp 0d8h			;790c
	ld bc,0ce34h		;790e
	ld e,0f6h		;7911
	xor a			;7913
	add a,l			;7914
	jr l795ah		;7915
	ld h,b			;7917
	inc (hl)		;7918
	sub h			;7919
	pop hl			;791a
	call po,0607fh		;791b
	ld b,0ddh		;791e
	ld a,a			;7920
	sbc a,l			;7921
	dec l			;7922
	call p,sub_4219h	;7923
	add a,e			;7926
	dec b			;7927
	ld (03424h),hl		;7928
	ld bc,0eeadh		;792b
	adc a,l			;792e
	and l			;792f
	adc a,e			;7930
	and h			;7931
	jr nz,l78eah		;7932
	cp (hl)			;7934
	jp m,005deh		;7935
	ld a,a			;7938
	ld c,h			;7939
	ret nc			;793a
	rst 38h			;793b
	ld (hl),c		;793c
	ld e,d			;793d
	ld de,031f2h		;793e
	inc de			;7941
	add a,b			;7942
	ld h,(hl)		;7943
	ld e,l			;7944
	ld h,(hl)		;7945
l7946h:
	adc a,h			;7946
	ld sp,0e27fh		;7947
	ld (bc),a		;794a
	adc a,a			;794b
	rst 38h			;794c
	ld l,e			;794d
	xor l			;794e
	ret z			;794f
	push af			;7950
	jp c,l4bf8h		;7951
	or a			;7954
	ld c,e			;7955
	add a,c			;7956
	daa			;7957
	dec sp			;7958
	ccf			;7959
l795ah:
	ret c			;795a
	jr nc,l79c3h		;795b
	ld c,e			;795d
	ld d,(hl)		;795e
	add a,h			;795f
	add hl,de		;7960
	ld (hl),e		;7961
	call pe,000fbh		;7962
	pop bc			;7965
	cp e			;7966
	or c			;7967
	adc a,b			;7968
l7969h:
	jr c,l799fh		;7969
	or l			;796b
	ld c,l			;796c
	ret m			;796d
	jr nc,$+28		;796e
	inc d			;7970
	ld b,c			;7971
	adc a,a			;7972
	rst 38h			;7973
	ld h,e			;7974
	nop			;7975
	or b			;7976
	ld a,a			;7977
	or d			;7978
	inc sp			;7979
	ld d,0f3h		;797a
	sub l			;797c
	ld b,c			;797d
	di			;797e
	ld a,c			;797f
sub_7980h:
	add a,d			;7980
	inc a			;7981
	ld l,d			;7982
	add a,(hl)		;7983
	ld h,l			;7984
	call c,0de7fh		;7985
	call 0ec04h		;7988
	jp nz,l7affh		;798b
	adc a,072h		;798e
	ld b,h			;7990
	ei			;7991
	ld c,h			;7992
	jp m,0fea7h		;7993
	daa			;7996
sub_7997h:
	in a,(02ah)		;7997
	adc a,l			;7999
	exx			;799a
	daa			;799b
	add a,c			;799c
	dec de			;799d
l799eh:
	ld h,l			;799e
l799fh:
	add a,b			;799f
	cp e			;79a0
	ld l,081h		;79a1
	ret			;79a3
	add iy,iy		;79a4
	cp a			;79a6
	ld l,e			;79a7
	di			;79a8
l79a9h:
	ld b,d			;79a9
	ld de,0e35bh		;79aa
	ld a,a			;79ad
	sbc a,d			;79ae
	di			;79af
	add a,a			;79b0
	ld (hl),a		;79b1
	jr z,l7a12h		;79b2
	ld h,b			;79b4
	ld c,d			;79b5
	ld l,080h		;79b6
l79b8h:
	ld a,a			;79b8
	rst 28h			;79b9
	ld sp,l62f9h		;79ba
	add hl,hl		;79bd
	sub h			;79be
	xor (hl)		;79bf
	and l			;79c0
	cp a			;79c1
	sub h			;79c2
l79c3h:
	adc a,(hl)		;79c3
	sub l			;79c4
	add a,b			;79c5
	xor (hl)		;79c6
	rst 38h			;79c7
	ld h,a			;79c8
	jr nc,l79cdh		;79c9
	ld a,a			;79cb
	or (hl)			;79cc
l79cdh:
	sbc a,0e4h		;79cd
	ei			;79cf
	adc a,b			;79d0
	ld c,a			;79d1
	add a,h			;79d2
	or a			;79d3
	ld a,a			;79d4
	adc a,l			;79d5
	add hl,bc		;79d6
	add a,d			;79d7
	add hl,hl		;79d8
	call nz,0009dh		;79d9
	ld l,l			;79dc
	cp e			;79dd
	jr nz,l799eh		;79de
	di			;79e0
	add a,d			;79e1
	ld b,h			;79e2
	add a,b			;79e3
	ld h,e			;79e4
	inc hl			;79e5
	adc a,(hl)		;79e6
	cp b			;79e7
	sub e			;79e8
	rst 38h			;79e9
	add a,l			;79ea
	rst 30h			;79eb
	ld c,a			;79ec
sub_79edh:
	sbc a,c			;79ed
	and l			;79ee
	sbc a,a			;79ef
	nop			;79f0
	nop			;79f1
	inc b			;79f2
	jp p,0f156h		;79f3
	rst 8			;79f6
	add a,(hl)		;79f7
	inc h			;79f8
	or 066h			;79f9
	adc a,e			;79fb
	xor (hl)		;79fc
	ld (bc),a		;79fd
	ld l,(hl)		;79fe
	add a,c			;79ff
	ld c,e			;7a00
	rst 38h			;7a01
	ld d,a			;7a02
	cp 0ebh			;7a03
	rst 38h			;7a05
	ld d,d			;7a06
	ld c,a			;7a07
	ld a,d			;7a08
	ld h,(hl)		;7a09
	inc de			;7a0a
	ld a,a			;7a0b
	add a,b			;7a0c
	sub c			;7a0d
	and (hl)		;7a0e
l7a0fh:
	sub a			;7a0f
	rst 28h			;7a10
	ld e,h			;7a11
l7a12h:
	ld b,07fh		;7a12
	adc a,h			;7a14
	ld d,(hl)		;7a15
	ld h,l			;7a16
	ld d,l			;7a17
	ld a,a			;7a18
	ld c,(hl)		;7a19
	or b			;7a1a
	add a,c			;7a1b
	inc hl			;7a1c
	ld b,c			;7a1d
l7a1eh:
	jp l7f89h		;7a1e
	ld hl,0367fh		;7a21
	inc sp			;7a24
	halt			;7a25
	ld a,a			;7a26
	ld l,(hl)		;7a27
	dec b			;7a28
	sbc a,c			;7a29
	ld h,d			;7a2a
	sbc a,b			;7a2b
	rst 0			;7a2c
	and (hl)		;7a2d
	rra			;7a2e
	ld a,a			;7a2f
	dec c			;7a30
	or e			;7a31
	ld (hl),e		;7a32
	call m,086cbh		;7a33
	in a,(0d6h)		;7a36
	add hl,sp		;7a38
	exx			;7a39
	dec hl			;7a3a
	adc a,l			;7a3b
	ld c,c			;7a3c
	ld l,a			;7a3d
	ret			;7a3e
	ld (l7fech),hl		;7a3f
	rst 28h			;7a42
	di			;7a43
	call nc,0d9cbh		;7a44
	add a,d			;7a47
	ld e,c			;7a48
	add a,l			;7a49
	add hl,hl		;7a4a
	dec (hl)		;7a4b
	inc (hl)		;7a4c
	ld a,a			;7a4d
	ccf			;7a4e
	jr l7a1eh		;7a4f
	add a,h			;7a51
	ld l,c			;7a52
	ld l,e			;7a53
	cp e			;7a54
	xor a			;7a55
	ld a,e			;7a56
	cp h			;7a57
	sbc a,h			;7a58
	jp m,l54ach		;7a59
	ld c,e			;7a5c
	dec b			;7a5d
	jp z,0f564h		;7a5e
	ex de,hl		;7a61
	ld de,0b78bh		;7a62
	ld a,a			;7a65
	rst 20h			;7a66
	ld (hl),e		;7a67
	ld h,h			;7a68
	cp 014h			;7a69
	ld (hl),l		;7a6b
	sub 0dch		;7a6c
	add a,c			;7a6e
	call nz,0f1d8h		;7a6f
	dec b			;7a72
	ld (hl),a		;7a73
	ld a,a			;7a74
	cp 08eh			;7a75
	sub (hl)		;7a77
	rst 38h			;7a78
	add a,a			;7a79
	ld b,h			;7a7a
	rst 38h			;7a7b
	jp m,03163h		;7a7c
	add a,b			;7a7f
	add hl,hl		;7a80
	xor l			;7a81
	or c			;7a82
	add a,c			;7a83
	ld h,a			;7a84
	inc c			;7a85
	inc d			;7a86
	ld a,a			;7a87
	adc a,h			;7a88
	add a,b			;7a89
	or e			;7a8a
	nop			;7a8b
	xor d			;7a8c
	ld sp,031f9h		;7a8d
	ld a,(hl)		;7a90
	ld (05c7fh),a		;7a91
	ld hl,(04978h)		;7a94
	sub l			;7a97
	ld b,0c2h		;7a98
	ld d,b			;7a9a
	rst 38h			;7a9b
	ld a,054h		;7a9c
	inc sp			;7a9e
	set 4,(hl)		;7a9f
	ld a,d			;7aa1
	di			;7aa2
	adc a,b			;7aa3
	sbc a,h			;7aa4
	sbc a,056h		;7aa5
	rst 38h			;7aa7
	rst 18h			;7aa8
	inc l			;7aa9
	and l			;7aaa
	pop hl			;7aab
	sbc a,h			;7aac
	call m,0f966h		;7aad
	ld b,l			;7ab0
	ret m			;7ab1
	add a,l			;7ab2
	jr l7af6h		;7ab3
	jp l4f7fh		;7ab5
	ld b,c			;7ab8
	ld a,a			;7ab9
	xor c			;7aba
	call po,0813fh		;7abb
	inc h			;7abe
	add a,b			;7abf
	adc a,0d5h		;7ac0
	rra			;7ac2
	inc b			;7ac3
	sub a			;7ac4
	adc a,b			;7ac5
	ld (bc),a		;7ac6
	jp nc,021c4h		;7ac7
	in a,(0adh)		;7aca
	ld e,c			;7acc
	add a,e			;7acd
	sbc a,d			;7ace
	ld b,b			;7acf
	defb 0ddh,0cfh,0f3h ;illegal sequence	;7ad0
	add a,e			;7ad3
	add a,d			;7ad4
	call m,02876h		;7ad5
	xor h			;7ad8
	and c			;7ad9
	ld a,(bc)		;7ada
	sbc a,a			;7adb
	sbc a,d			;7adc
	rst 38h			;7add
	jp (hl)			;7ade
	defb 0fdh,06ch ;ld iyl,iyh	;7adf
	halt			;7ae1
	ld sp,hl		;7ae2
	ld (hl),e		;7ae3
	cp 0a2h			;7ae4
	inc de			;7ae6
	xor c			;7ae7
	ld a,01eh		;7ae8
	ld a,a			;7aea
	inc d			;7aeb
	ld b,e			;7aec
	jp p,0a192h		;7aed
	sub e			;7af0
	add a,l			;7af1
	ld e,c			;7af2
	ld (0847fh),a		;7af3
l7af6h:
	add hl,de		;7af6
	ld a,a			;7af7
	jp nc,08255h		;7af8
	rst 10h			;7afb
	ld a,a			;7afc
	sbc a,h			;7afd
	ret m			;7afe
l7affh:
	call nz,0fa31h		;7aff
	and c			;7b02
	ld (l7f10h),a		;7b03
	jp nc,07f41h		;7b06
	push af			;7b09
	sub (hl)		;7b0a
	cp l			;7b0b
	adc a,b			;7b0c
	ld e,a			;7b0d
	ld d,b			;7b0e
	defb 0fdh,067h ;ld iyh,a	;7b0f
	xor 0b0h		;7b11
	ld a,a			;7b13
	ld b,08fh		;7b14
	adc a,d			;7b16
	ld a,a			;7b17
	ld b,(hl)		;7b18
sub_7b19h:
	rst 30h			;7b19
	ld c,d			;7b1a
	ld h,(iy-031h)		;7b1b
	ld (hl),a		;7b1e
l7b1fh:
	rst 38h			;7b1f
	rst 0			;7b20
l7b21h:
	nop			;7b21
	ret z			;7b22
	ld (hl),a		;7b23
	ld (hl),a		;7b24
	rla			;7b25
	ld b,h			;7b26
	ld de,l7103h		;7b27
	djnz l7babh		;7b2a
	di			;7b2c
	jp nc,0d0ffh		;7b2d
	ld (02af8h),a		;7b30
	add a,e			;7b33
	or (hl)			;7b34
	ld a,a			;7b35
	adc a,d			;7b36
	adc a,b			;7b37
	and a			;7b38
	rst 28h			;7b39
	add a,(hl)		;7b3a
	jr c,l7b1fh		;7b3b
	nop			;7b3d
	call pe,09cd2h		;7b3e
	ld c,(hl)		;7b41
	ccf			;7b42
	add hl,de		;7b43
	ld b,e			;7b44
	cp 0b9h			;7b45
	adc a,h			;7b47
	ld h,l			;7b48
	cpl			;7b49
	adc a,(hl)		;7b4a
	and h			;7b4b
	ld hl,0de5bh		;7b4c
	add a,l			;7b4f
	ld h,e			;7b50
	cp 086h			;7b51
	rst 38h			;7b53
	ld a,a			;7b54
	ld a,(07f70h)		;7b55
	sbc a,(hl)		;7b58
	or d			;7b59
	ld a,l			;7b5a
	rst 38h			;7b5b
	and 0e4h		;7b5c
	ld a,l			;7b5e
l7b5fh:
	ld a,h			;7b5f
	call z,01c03h		;7b60
	ld de,l4ccch		;7b63
	ld (hl),c		;7b66
	ret nc			;7b67
	rst 38h			;7b68
	dec c			;7b69
	rst 38h			;7b6a
	xor c			;7b6b
	call p,0f92dh		;7b6c
	ld l,c			;7b6f
	add a,(hl)		;7b70
	ld d,c			;7b71
	ld de,09e8bh		;7b72
	ld a,a			;7b75
	ld e,h			;7b76
	ld (bc),a		;7b77
	and a			;7b78
	ld h,l			;7b79
	rst 28h			;7b7a
	jr c,l7bfch		;7b7b
	ld l,d			;7b7d
	inc bc			;7b7e
	cp 0aah			;7b7f
	ld b,c			;7b81
	adc a,b			;7b82
	sub h			;7b83
	add a,b			;7b84
	ld h,e			;7b85
	ld hl,l500fh		;7b86
	add a,h			;7b89
	cp c			;7b8a
	adc a,(hl)		;7b8b
	cp 007h			;7b8c
	rst 38h			;7b8e
	sbc a,e			;7b8f
	nop			;7b90
	ld a,a			;7b91
	inc bc			;7b92
	rst 38h			;7b93
l7b94h:
	jp m,0fd00h		;7b94
	cp 05fh			;7b97
sub_7b99h:
	ld a,a			;7b99
	inc a			;7b9a
	ld a,l			;7b9b
	ld (bc),a		;7b9c
	call 01dddh		;7b9d
	ld de,l4dddh		;7ba0
	rst 38h			;7ba3
	dec l			;7ba4
	jp nc,0f3c7h		;7ba5
	ld a,a			;7ba8
	inc d			;7ba9
	add a,b			;7baa
l7babh:
	sub l			;7bab
	add a,b			;7bac
	ld b,(hl)		;7bad
	cp c			;7bae
	ld b,l			;7baf
	jp pe,0e17fh		;7bb0
	ld a,d			;7bb3
	ld l,e			;7bb4
	add a,a			;7bb5
	ld e,c			;7bb6
	push hl			;7bb7
	sbc a,d			;7bb8
	and c			;7bb9
	ld e,(hl)		;7bba
	add a,b			;7bbb
	dec hl			;7bbc
	inc d			;7bbd
	dec b			;7bbe
	adc a,l			;7bbf
	ld h,d			;7bc0
	call m,sub_4ed3h	;7bc1
	ld h,0fdh		;7bc4
	in a,(086h)		;7bc6
	ld d,c			;7bc8
	or (hl)			;7bc9
	cp a			;7bca
	ld a,a			;7bcb
	sbc a,a			;7bcc
	rlca			;7bcd
	rst 0			;7bce
	ld a,a			;7bcf
	adc a,d			;7bd0
	ld (hl),a		;7bd1
	dec l			;7bd2
	call z,sub_7ec7h	;7bd3
	ld a,a			;7bd6
	ld h,h			;7bd7
	ld l,l			;7bd8
	ld a,a			;7bd9
	exx			;7bda
	ld e,b			;7bdb
	ld a,a			;7bdc
	ld sp,07fd9h		;7bdd
	add a,a			;7be0
	or (hl)			;7be1
	ld a,a			;7be2
	or e			;7be3
	xor 025h		;7be4
	xor b			;7be6
	add a,b			;7be7
	and a			;7be8
	nop			;7be9
	ld a,h			;7bea
	ld h,l			;7beb
	ld a,a			;7bec
	ld h,l			;7bed
	ld b,e			;7bee
	inc h			;7bef
	ld (hl),e		;7bf0
	ld (hl),a		;7bf1
	daa			;7bf2
	ld b,e			;7bf3
	and b			;7bf4
	dec (hl)		;7bf5
	and (hl)		;7bf6
	halt			;7bf7
	ld c,(hl)		;7bf8
	ld (iy+055h),c		;7bf9
l7bfch:
	cp 01eh			;7bfc
	add hl,bc		;7bfe
	ld sp,hl		;7bff
	cp 043h			;7c00
	ld a,(bc)		;7c02
	jp z,0da7fh		;7c03
	sra a			;7c06
	ld a,a			;7c08
	adc a,(hl)		;7c09
	ld a,(hl)		;7c0a
	nop			;7c0b
	call z,0c970h		;7c0c
	sbc a,c			;7c0f
	adc a,b			;7c10
	jr l7c2ah		;7c11
	sbc a,b			;7c13
	ld de,l71f8h		;7c14
	add a,b			;7c17
	rst 38h			;7c18
	ld c,c			;7c19
	ret m			;7c1a
	jp m,0b019h		;7c1b
	ld c,c			;7c1e
	add a,b			;7c1f
	ld c,c			;7c20
	ei			;7c21
	ld (hl),07fh		;7c22
	ld a,a			;7c24
	and a			;7c25
	ld (hl),d		;7c26
	add a,b			;7c27
	cp h			;7c28
	nop			;7c29
l7c2ah:
	jp z,0cae4h		;7c2a
	ret m			;7c2d
	ld a,(hl)		;7c2e
l7c2fh:
	call m,0f466h		;7c2f
	dec sp			;7c32
	ld b,h			;7c33
	ld c,h			;7c34
	ld b,a			;7c35
	ld d,l			;7c36
	cp 088h			;7c37
	cp e			;7c39
	cp c			;7c3a
	sbc a,a			;7c3b
	pop hl			;7c3c
	ld a,a			;7c3d
	jp c,0ea7fh		;7c3e
	inc (hl)		;7c41
	inc hl			;7c42
	ld h,h			;7c43
	ld b,e			;7c44
	add a,b			;7c45
	rst 8			;7c46
	ld a,(hl)		;7c47
	call nz,000d7h		;7c48
	nop			;7c4b
	inc c			;7c4c
	adc a,b			;7c4d
	sbc a,b			;7c4e
	add hl,de		;7c4f
	rla			;7c50
	adc a,b			;7c51
	ld l,b			;7c52
	ld (hl),c		;7c53
	ld l,090h		;7c54
	nop			;7c56
	ld a,b			;7c57
	defb 0fdh,0a2h,0fah ;illegal sequence	;7c58
	ret c			;7c5b
	ld a,a			;7c5c
	ret c			;7c5d
	or l			;7c5e
	dec l			;7c5f
	inc de			;7c60
	ld a,a			;7c61
	ret p			;7c62
	xor 00ch		;7c63
	ld a,e			;7c65
	ld l,d			;7c66
	call 09c46h		;7c67
	ld a,(l4c41h)		;7c6a
	adc a,d			;7c6d
	sub l			;7c6e
	cp 03ch			;7c6f
	ld (bc),a		;7c71
	dec bc			;7c72
	xor d			;7c73
	xor c			;7c74
	sbc a,c			;7c75
	cp 077h			;7c76
	ld a,a			;7c78
	call nc,sub_4613h	;7c79
	sbc a,0fbh		;7c7c
	dec hl			;7c7e
	jp nc,0823fh		;7c7f
	inc a			;7c82
	ld a,a			;7c83
	ld d,e			;7c84
	rlca			;7c85
sub_7c86h:
	ei			;7c86
	inc e			;7c87
	defb 0ddh,091h,085h ;illegal sequence	;7c88
	inc h			;7c8b
	ret			;7c8c
	rst 38h			;7c8d
	inc d			;7c8e
	rla			;7c8f
	sbc a,c			;7c90
	ld l,c			;7c91
	rst 38h			;7c92
	ld l,e			;7c93
	ld a,a			;7c94
	ld b,e			;7c95
	ld a,a			;7c96
	sbc a,(hl)		;7c97
	and l			;7c98
	ret z			;7c99
	add a,b			;7c9a
	call 013b4h		;7c9b
	nop			;7c9e
	add a,b			;7c9f
	push hl			;7ca0
	adc a,b			;7ca1
	inc e			;7ca2
	and 03ah		;7ca3
	bit 3,b			;7ca5
	sbc a,b			;7ca7
	ld l,(hl)		;7ca8
	call 0fd4bh		;7ca9
	dec de			;7cac
	ld c,c			;7cad
	defb 0fdh,012h,0bbh ;illegal sequence	;7cae
	adc a,(iy+07eh)		;7cb1
	add a,l			;7cb4
	cp d			;7cb5
	jp m,l76aah		;7cb6
	rst 38h			;7cb9
	ld a,(de)		;7cba
	sbc a,d			;7cbb
	jp pe,0f77fh		;7cbc
	ld d,h			;7cbf
	inc (hl)		;7cc0
	ld b,(hl)		;7cc1
	ld l,a			;7cc2
	ld b,e			;7cc3
	add a,b			;7cc4
	ld hl,l6e34h		;7cc5
	cp 0e4h			;7cc8
	or l			;7cca
	ld a,c			;7ccb
	ld a,a			;7ccc
	jp c,07e77h		;7ccd
	sub b			;7cd0
	rst 30h			;7cd1
	ld d,040h		;7cd2
	ld h,l			;7cd4
	dec c			;7cd5
	ld a,a			;7cd6
sub_7cd7h:
	rst 38h			;7cd7
	dec h			;7cd8
	ld a,a			;7cd9
	push af			;7cda
	ld (hl),h		;7cdb
	ret m			;7cdc
	adc a,d			;7cdd
	ld c,a			;7cde
	add a,b			;7cdf
	ld c,b			;7ce0
	add a,(hl)		;7ce1
	xor (hl)		;7ce2
	ld a,a			;7ce3
	ld e,l			;7ce4
	inc a			;7ce5
	ld a,a			;7ce6
	sbc a,050h		;7ce7
	ld a,a			;7ce9
	ld d,h			;7cea
	adc a,(iy+043h)		;7ceb
	xor c			;7cee
	dec hl			;7cef
	ld hl,l5cf9h		;7cf0
	ld a,(de)		;7cf3
	and l			;7cf4
	ld a,(hl)		;7cf5
	cp 0bch			;7cf6
	ld a,(hl)		;7cf8
	ld c,0afh		;7cf9
	rst 38h			;7cfb
	rst 38h			;7cfc
	xor e			;7cfd
	ld a,a			;7cfe
	ld (de),a		;7cff
	ld a,d			;7d00
	ld a,a			;7d01
	ld (hl),b		;7d02
	and (hl)		;7d03
	sub l			;7d04
	ld sp,0f9d6h		;7d05
	call z,0d01bh		;7d08
	adc a,b			;7d0b
	ld l,(hl)		;7d0c
	dec sp			;7d0d
	rst 38h			;7d0e
	cp 08fh			;7d0f
	ld h,d			;7d11
	jp po,0fe8eh		;7d12
	ld h,c			;7d15
	ld (hl),l		;7d16
	exx			;7d17
	sbc a,b			;7d18
	adc a,l			;7d19
	halt			;7d1a
	ld c,(hl)		;7d1b
	ld b,01ch		;7d1c
	ld a,a			;7d1e
	ld c,d			;7d1f
	inc bc			;7d20
	ld sp,0a980h		;7d21
	ld a,a			;7d24
	add a,b			;7d25
	ld c,a			;7d26
	add a,c			;7d27
	ld b,e			;7d28
	inc d			;7d29
	pop af			;7d2a
	ld a,a			;7d2b
	dec (hl)		;7d2c
	and a			;7d2d
	xor c			;7d2e
	add a,b			;7d2f
	ex (sp),hl		;7d30
	inc sp			;7d31
	ld d,h			;7d32
	ld hl,0be04h		;7d33
	call p,08823h		;7d36
	ret c			;7d39
	ld (09501h),hl		;7d3a
	jp m,07dd9h		;7d3d
	defb 0fdh,012h,065h ;illegal sequence	;7d40
	defb 0fdh,0deh,07eh ;illegal sequence	;7d43
	ld b,l			;7d46
	add a,d			;7d47
	djnz l7d58h		;7d48
	or b			;7d4a
	ld a,(bc)		;7d4b
	adc a,d			;7d4c
	ld a,a			;7d4d
	add hl,hl		;7d4e
	and (hl)		;7d4f
	ld h,e			;7d50
	ld sp,hl		;7d51
	daa			;7d52
	jp m,01490h		;7d53
	ld h,(hl)		;7d56
	rst 28h			;7d57
l7d58h:
	rst 28h			;7d58
	ld a,e			;7d59
	and 08fh		;7d5a
	dec d			;7d5c
	rst 10h			;7d5d
	add a,d			;7d5e
	inc b			;7d5f
	ld b,b			;7d60
	nop			;7d61
	ccf			;7d62
	nop			;7d63
	ld a,l			;7d64
	sbc a,c			;7d65
	adc a,l			;7d66
	defb 0ddh,0d7h,001h ;illegal sequence	;7d67
	ld a,h			;7d6a
	exx			;7d6b
	ret pe			;7d6c
	ld a,a			;7d6d
	ld bc,08943h		;7d6e
	ld hl,(0f34fh)		;7d71
	add a,b			;7d74
	ld b,l			;7d75
	ccf			;7d76
	ld a,a			;7d77
	add a,a			;7d78
	jp (hl)			;7d79
	and a			;7d7a
	xor (hl)		;7d7b
	ld (hl),c		;7d7c
	push hl			;7d7d
	ld a,010h		;7d7e
	ld a,a			;7d80
	ld h,(hl)		;7d81
	ld e,e			;7d82
	ld a,(hl)		;7d83
	ld c,a			;7d84
	defb 0fdh,060h ;ld iyh,b	;7d85
	cp h			;7d87
	call z,0ffcfh		;7d88
	call m,0cc24h		;7d8b
	call m,06281h		;7d8e
	ei			;7d91
	ld a,a			;7d92
	ld a,h			;7d93
	ld a,(bc)		;7d94
	ld a,070h		;7d95
	ld b,h			;7d97
	add a,b			;7d98
	defb 0edh ;next byte illegal after ed	;7d99
	defb 0fdh,067h ;ld iyh,a	;7d9a
	ld de,00987h		;7d9c
	ld b,(hl)		;7d9f
	call m,0ffa4h		;7da0
	inc de			;7da3
	ld h,(hl)		;7da4
	ld h,h			;7da5
	ld b,(hl)		;7da6
	ld l,044h		;7da7
	xor l			;7da9
	or c			;7daa
	ld (hl),a		;7dab
	ld a,a			;7dac
	sub (hl)		;7dad
	halt			;7dae
	nop			;7daf
	rrca			;7db0
	ld a,c			;7db1
	adc a,c			;7db2
	sbc a,c			;7db3
	ld a,a			;7db4
	ld e,081h		;7db5
	and d			;7db7
	add a,c			;7db8
	sbc a,d			;7db9
	ld a,c			;7dba
	inc (hl)		;7dbb
	jp m,0b05bh		;7dbc
	ld a,07fh		;7dbf
	ld c,002h		;7dc1
	ld a,(bc)		;7dc3
	cpl			;7dc4
	rst 30h			;7dc5
	dec sp			;7dc6
	defb 0edh ;next byte illegal after ed	;7dc7
	add a,(hl)		;7dc8
	ld d,b			;7dc9
	add a,l			;7dca
	ld h,(hl)		;7dcb
	ld sp,hl		;7dcc
	inc e			;7dcd
	ld a,(hl)		;7dce
	ld c,d			;7dcf
	ei			;7dd0
	ld e,e			;7dd1
	jp m,0fa85h		;7dd2
	and 000h		;7dd5
	ld de,0cbfch		;7dd7
	rst 38h			;7dda
	or e			;7ddb
	ei			;7ddc
	ld (009ach),hl		;7ddd
	and b			;7de0
	ld b,h			;7de1
l7de2h:
	ret m			;7de2
	sub l			;7de3
	ld sp,03981h		;7de4
	inc b			;7de7
	ld b,(hl)		;7de8
	adc a,d			;7de9
	ld (00364h),hl		;7dea
	rst 28h			;7ded
	xor 07dh		;7dee
	ld hl,0e6feh		;7df0
	ld a,a			;7df3
	ld b,067h		;7df4
	pop bc			;7df6
	ld l,(hl)		;7df7
	inc h			;7df8
	call 08180h		;7df9
	ld a,(hl)		;7dfc
	exx			;7dfd
	adc a,b			;7dfe
	sbc a,c			;7dff
l7e00h:
	defb 0ddh,017h,07fh ;illegal sequence	;7e00
	jp nc,0f8f4h		;7e03
	dec l			;7e06
	ei			;7e07
	and h			;7e08
	add a,c			;7e09
	ld e,l			;7e0a
	ld de,08388h		;7e0b
	add hl,de		;7e0e
	ld a,a			;7e0f
	ret pe			;7e10
	ld (0eaeeh),hl		;7e11
	ld h,a			;7e14
	ret p			;7e15
	dec (hl)		;7e16
	ld a,a			;7e17
	ld d,l			;7e18
	ld a,a			;7e19
	rst 0			;7e1a
	rst 30h			;7e1b
	ld h,a			;7e1c
	ld a,(hl)		;7e1d
	ld e,07fh		;7e1e
	inc hl			;7e20
	dec bc			;7e21
	cp e			;7e22
	sbc a,c			;7e23
	nop			;7e24
	dec hl			;7e25
	rst 38h			;7e26
	adc a,b			;7e27
	ld a,a			;7e28
sub_7e29h:
	xor l			;7e29
	rst 38h			;7e2a
	ld d,d			;7e2b
	defb 0fdh,07fh,0ffh ;illegal sequence	;7e2c
	or a			;7e2f
	ret z			;7e30
	or (hl)			;7e31
	nop			;7e32
	cp e			;7e33
	dec h			;7e34
	ld a,(hl)		;7e35
	defb 0fdh,010h,06eh ;illegal sequence	;7e36
	xor 0efh		;7e39
	ld (hl),0feh		;7e3b
	xor 0aah		;7e3d
	ld bc,l7946h		;7e3f
	ret nc			;7e42
	rla			;7e43
	inc e			;7e44
	exx			;7e45
	pop af			;7e46
	add a,b			;7e47
	jr z,l7de2h		;7e48
	inc sp			;7e4a
	adc a,c			;7e4b
	sbc a,l			;7e4c
	ld a,a			;7e4d
	rst 38h			;7e4e
	ld d,(hl)		;7e4f
	ld a,a			;7e50
	ld de,l4fffh		;7e51
	inc (hl)		;7e54
	defb 0fdh,061h ;ld iyh,c	;7e55
	add a,h			;7e57
	ret m			;7e58
	add hl,sp		;7e59
	inc (hl)		;7e5a
	dec a			;7e5b
	inc de			;7e5c
	ld a,a			;7e5d
	ld c,011h		;7e5e
	djnz l7e67h		;7e60
	ld a,(bc)		;7e62
	ld (de),a		;7e63
	inc hl			;7e64
	sub a			;7e65
	cp l			;7e66
l7e67h:
	adc a,(hl)		;7e67
	add hl,sp		;7e68
	jp pe,08823h		;7e69
	ld (08e8ch),hl		;7e6c
	defb 0fdh,07ch ;ld a,iyh	;7e6f
	ld a,(hl)		;7e71
	cpl			;7e72
	cp 069h			;7e73
	nop			;7e75
	call m,sub_7f3dh	;7e76
	dec de			;7e79
	ld b,e			;7e7a
	ret z			;7e7b
	cp c			;7e7c
	ld a,c			;7e7d
	ld a,(hl)		;7e7e
l7e7fh:
	call z,0c483h		;7e7f
	rst 38h			;7e82
	xor 0ffh		;7e83
	xor b			;7e85
	ld b,a			;7e86
	call 0090dh		;7e87
	pop bc			;7e8a
	call 0899fh		;7e8b
	add a,b			;7e8e
	ld (08efeh),hl		;7e8f
	ld a,(hl)		;7e92
	call z,l7f10h+1		;7e93
	adc a,b			;7e96
	ld c,a			;7e97
	ld c,a			;7e98
	rst 38h			;7e99
	sbc a,e			;7e9a
	di			;7e9b
	ld a,a			;7e9c
	defb 0fdh,09bh,07fh ;illegal sequence	;7e9d
	jp (hl)			;7ea0
	add a,l			;7ea1
	dec e			;7ea2
	ex af,af'		;7ea3
	ld de,l4423h		;7ea4
	call p,sub_7fceh	;7ea7
	adc a,c			;7eaa
	ld b,d			;7eab
	ld de,0b7fbh		;7eac
	ld a,(hl)		;7eaf
	ld a,a			;7eb0
	adc a,084h		;7eb1
	ld a,b			;7eb3
	ld (hl),b		;7eb4
	or b			;7eb5
	ld a,a			;7eb6
	xor c			;7eb7
sub_7eb8h:
	out (088h),a		;7eb8
	ld a,a			;7eba
	adc a,b			;7ebb
	call m,0feeah		;7ebc
	ld c,h			;7ebf
	ex af,af'		;7ec0
	sub l			;7ec1
	ld a,(hl)		;7ec2
	xor 07eh		;7ec3
	add a,d			;7ec5
	ld h,l			;7ec6
sub_7ec7h:
	ei			;7ec7
	ld b,h			;7ec8
	djnz $-33		;7ec9
sub_7ecbh:
	cp 041h			;7ecb
l7ecdh:
	ret m			;7ecd
	adc a,c			;7ece
	sub c			;7ecf
	rla			;7ed0
	cp 012h			;7ed1
	defb 0ddh,0d1h,094h ;illegal sequence	;7ed3
	inc e			;7ed6
	inc a			;7ed7
	ret nc			;7ed8
	ld a,a			;7ed9
	ccf			;7eda
	ccf			;7edb
	call p,0f94fh		;7edc
	add a,d			;7edf
	call p,sub_5bf9h	;7ee0
	and a			;7ee3
	rst 28h			;7ee4
	ld d,0fah		;7ee5
	ld l,a			;7ee7
	call pe,08ceeh		;7ee8
	ld (l4e12h),a		;7eeb
	inc h			;7eee
	adc a,c			;7eef
	rst 0			;7ef0
	xor (iy-080h)		;7ef1
	push af			;7ef4
	ld a,a			;7ef5
	jp po,0e743h		;7ef6
	ld a,(hl)		;7ef9
	nop			;7efa
	adc a,e			;7efb
	add a,a			;7efc
	inc (hl)		;7efd
	ld a,(hl)		;7efe
	and 066h		;7eff
	rst 18h			;7f01
	dec bc			;7f02
	call pe,0fec8h		;7f03
	add a,h			;7f06
	sbc a,l			;7f07
	call c,sub_7b99h	;7f08
	ld a,c			;7f0b
	ld b,e			;7f0c
	sbc a,l			;7f0d
	inc bc			;7f0e
	ld a,h			;7f0f
l7f10h:
	call c,sub_7f71h	;7f10
l7f13h:
	add a,d			;7f13
	nop			;7f14
	ccf			;7f15
	rst 38h			;7f16
	pop de			;7f17
	cp a			;7f18
	xor c			;7f19
	ld b,a			;7f1a
l7f1bh:
	ei			;7f1b
	ld l,a			;7f1c
l7f1dh:
	ld a,a			;7f1d
	rst 8			;7f1e
	call pe,07ffbh		;7f1f
	ret			;7f22
	ld (08942h),hl		;7f23
	ld c,e			;7f26
sub_7f27h:
	ld a,a			;7f27
	ret p			;7f28
	adc a,(hl)		;7f29
	nop			;7f2a
	cp (hl)			;7f2b
l7f2ch:
	ex de,hl		;7f2c
	ld a,a			;7f2d
	ld b,0a8h		;7f2e
	rst 38h			;7f30
	ret m			;7f31
l7f32h:
	ld a,a			;7f32
	inc a			;7f33
l7f34h:
	inc sp			;7f34
	ld a,(hl)		;7f35
	inc de			;7f36
l7f37h:
	inc sp			;7f37
	add a,e			;7f38
l7f39h:
	sub d			;7f39
	ei			;7f3a
	or (hl)			;7f3b
	rst 38h			;7f3c
sub_7f3dh:
	jp z,0fe07h		;7f3d
	jr nz,l7f1bh		;7f40
	sbc a,l			;7f42
	ld a,h			;7f43
l7f44h:
	defb 0ddh,050h,0d1h ;illegal sequence	;7f44
	add a,c			;7f47
	call c,0028eh		;7f48
	defb 0fdh,0dch,07fh ;illegal sequence	;7f4b
	ld d,b			;7f4e
l7f4fh:
	rra			;7f4f
	ld a,a			;7f50
	ccf			;7f51
l7f52h:
	cp a			;7f52
l7f53h:
	ld b,c			;7f53
	jp pe,0b1d9h		;7f54
	or c			;7f57
	ld sp,0f17fh		;7f58
	xor 011h		;7f5b
	jp p,00032h		;7f5d
	adc a,l			;7f60
	add a,b			;7f61
	ld a,h			;7f62
	ld hl,0127ah		;7f63
	add a,b			;7f66
sub_7f67h:
	res 6,b			;7f67
	ld a,a			;7f69
	jp nz,036feh		;7f6a
	rst 30h			;7f6d
	ld (03385h),a		;7f6e
sub_7f71h:
	dec b			;7f71
	add hl,de		;7f72
	ld h,(hl)		;7f73
	nop			;7f74
	cp 08ch			;7f75
	ld e,c			;7f77
	sbc a,04ah		;7f78
	add a,b			;7f7a
	call 0d997h		;7f7b
	ld (iy+046h),a		;7f7e
	defb 0ddh,0fch,027h ;illegal sequence	;7f81
	call z,08d7fh		;7f84
	ld a,a			;7f87
	ld b,a			;7f88
l7f89h:
	inc d			;7f89
	inc sp			;7f8a
	add a,b			;7f8b
	ld b,l			;7f8c
	ei			;7f8d
	ld b,e			;7f8e
	call m,sub_7f67h	;7f8f
l7f92h:
	call z,0f321h		;7f92
	ld a,a			;7f95
	ld a,h			;7f96
	ld de,0fb7fh		;7f97
	nop			;7f9a
	ld a,a			;7f9b
	sbc a,d			;7f9c
	adc a,b			;7f9d
	add a,a			;7f9e
	and b			;7f9f
	inc sp			;7fa0
	xor d			;7fa1
	ld (hl),e		;7fa2
	ld d,d			;7fa3
	sub h			;7fa4
	call m,0ee8ch		;7fa5
	call m,0fd23h		;7fa8
l7fabh:
	adc a,c			;7fab
sub_7fach:
	rst 38h			;7fac
	ld e,e			;7fad
	ei			;7fae
	adc a,b			;7faf
sub_7fb0h:
	exx			;7fb0
	rst 30h			;7fb1
	ld a,h			;7fb2
sub_7fb3h:
	ld (hl),c		;7fb3
l7fb4h:
	ld a,l			;7fb4
	sub h			;7fb5
	add a,b			;7fb6
l7fb7h:
	ld a,c			;7fb7
	rst 0			;7fb8
l7fb9h:
	ld a,a			;7fb9
	ld h,031h		;7fba
	defb 0fdh,018h,0fbh ;illegal sequence	;7fbc
	call p,0fa33h		;7fbf
	sbc a,e			;7fc2
	call c,0ffceh		;7fc3
	jr c,l7fabh		;7fc6
l7fc8h:
	add a,l			;7fc8
l7fc9h:
	ld c,l			;7fc9
	ld hl,0f38dh		;7fca
	sub c			;7fcd
sub_7fceh:
	add a,b			;7fce
	djnz $+129		;7fcf
	ret m			;7fd1
	jr $+128		;7fd2
	ld b,e			;7fd4
	call 02681h		;7fd5
	ld (hl),066h		;7fd8
	jp m,0f7b4h		;7fda
	ld b,l			;7fdd
l7fdeh:
	ld b,(hl)		;7fde
	add a,l			;7fdf
	adc a,c			;7fe0
	ld a,(09043h)		;7fe1
	cp 071h			;7fe4
	rra			;7fe6
l7fe7h:
	dec b			;7fe7
	add a,a			;7fe8
	dec e			;7fe9
	rst 10h			;7fea
	ld (hl),c		;7feb
l7fech:
	dec e			;7fec
	ei			;7fed
	ld h,d			;7fee
	ld (hl),a		;7fef
	ld bc,0c74fh		;7ff0
	rst 38h			;7ff3
	ld d,c			;7ff4
	ld (hl),l		;7ff5
	ld c,a			;7ff6
l7ff7h:
	ld de,l4680h		;7ff7
	jp c,l7fe7h		;7ffa
	ld c,a			;7ffd
	inc sp			;7ffe
l7fffh:
	ld e,d			;7fff
