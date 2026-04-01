; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank06.asm /tmp/smanbow2_bank_06.bin

	org 04000h

	ex af,af'		;4000
	sub b			;4001
l4002h:
	ret			;4002
	ret nc			;4003
	ld h,a			;4004
	ld a,a			;4005
	adc a,(hl)		;4006
	add a,(hl)		;4007
	ld c,c			;4008
	nop			;4009
	inc de			;400a
	sub l			;400b
	ld h,h			;400c
	add a,h			;400d
	sbc a,a			;400e
	add a,d			;400f
	ld a,d			;4010
	add a,d			;4011
	ld e,a			;4012
	rst 10h			;4013
	dec hl			;4014
	rst 38h			;4015
	jp pe,08ff6h		;4016
	rst 38h			;4019
	and b			;401a
	ld d,l			;401b
	ld b,h			;401c
	ret p			;401d
	ld a,a			;401e
	xor l			;401f
	ld a,b			;4020
	rst 38h			;4021
	ld (08210h),a		;4022
	ld d,a			;4025
	djnz $-55		;4026
	ld l,(hl)		;4028
	inc hl			;4029
	xor 066h		;402a
	ret pe			;402c
	ld a,b			;402d
	sub d			;402e
	ld a,a			;402f
	ld d,(hl)		;4030
	ret			;4031
	rst 20h			;4032
	ld d,0e6h		;4033
	dec (hl)		;4035
	add a,a			;4036
	in a,(09fh)		;4037
	ld e,c			;4039
	add a,b			;403a
	ld d,l			;403b
	inc bc			;403c
	add a,d			;403d
	di			;403e
	add hl,sp		;403f
	ld (hl),a		;4040
	call nz,09f0fh		;4041
	ld a,0f9h		;4044
	sub b			;4046
	ld a,a			;4047
	dec de			;4048
	rst 38h			;4049
	ld (hl),l		;404a
	push hl			;404b
	ld a,a			;404c
	ld d,h			;404d
	ld l,h			;404e
	bit 2,h			;404f
	ld a,a			;4051
	and h			;4052
	ld b,l			;4053
	add a,c			;4054
	or b			;4055
	ld b,l			;4056
	rst 28h			;4057
	ret z			;4058
	ld a,(bc)		;4059
	ei			;405a
	ld e,b			;405b
	inc b			;405c
	add hl,de		;405d
	sub e			;405e
	ld c,e			;405f
	add hl,hl		;4060
	call m,00035h		;4061
	jp z,022e2h		;4064
	adc a,h			;4067
	inc a			;4068
	ld sp,07bfdh		;4069
	ld a,a			;406c
	jr c,$+35		;406d
	inc bc			;406f
	ld a,a			;4070
	jr l4002h		;4071
	rst 38h			;4073
	rst 38h			;4074
	ld a,d			;4075
	ex af,af'		;4076
	call nc,0080ah		;4077
	add a,e			;407a
	ld (hl),l		;407b
	inc l			;407c
	ret nc			;407d
	cp e			;407e
	or c			;407f
	or c			;4080
	ld bc,0b0bbh		;4081
	or c			;4084
	or b			;4085
	ld (de),a		;4086
	or d			;4087
	djnz l408eh		;4088
	ld sp,00a0bh		;408a
	cp (hl)			;408d
l408eh:
	ld a,a			;408e
	call nz,0f9a1h		;408f
	call pe,08f7fh		;4092
	ld (hl),c		;4095
	ld d,072h		;4096
	add a,h			;4098
	xor 0ffh		;4099
	jp c,096f9h		;409b
	inc de			;409e
	ld hl,05bc4h		;409f
	dec b			;40a2
	jp (hl)			;40a3
	xor (hl)		;40a4
	inc sp			;40a5
	nop			;40a6
	ld l,(hl)		;40a7
	ld l,e			;40a8
	jr nc,$-70		;40a9
	ld e,a			;40ab
	push af			;40ac
	add a,h			;40ad
	ret			;40ae
	ld a,a			;40af
	add a,b			;40b0
	ld c,b			;40b1
	ld (hl),h		;40b2
	rrca			;40b3
	rst 38h			;40b4
	ld (de),a		;40b5
	xor 0ffh		;40b6
	cp 0ffh			;40b8
	ld d,c			;40ba
	ld (bc),a		;40bb
	cp 0e5h			;40bc
	ld a,a			;40be
	di			;40bf
	cp b			;40c0
	or b			;40c1
	ld a,a			;40c2
	ex (sp),hl		;40c3
	ld l,c			;40c4
	ld l,h			;40c5
	ld c,a			;40c6
	ld e,c			;40c7
	ld e,c			;40c8
	ld a,a			;40c9
	ld a,(bc)		;40ca
	add a,(hl)		;40cb
	cpl			;40cc
	add a,l			;40cd
	adc a,e			;40ce
	rst 38h			;40cf
	ld b,h			;40d0
	add hl,hl		;40d1
	defb 0edh ;next byte illegal after ed	;40d2
	jp pe,07c32h		;40d3
	ld e,c			;40d6
	sub e			;40d7
	inc b			;40d8
	ld a,h			;40d9
	ret			;40da
	adc a,l			;40db
	ld c,d			;40dc
	add hl,bc		;40dd
	ld (0eb8eh),hl		;40de
	adc a,d			;40e1
	jp p,0f3a0h		;40e2
	ld a,e			;40e5
	ld (hl),d		;40e6
	inc bc			;40e7
	add a,b			;40e8
	ld b,d			;40e9
	sbc a,c			;40ea
	ex af,af'		;40eb
	ld a,h			;40ec
	ld b,b			;40ed
	cp a			;40ee
	ld a,e			;40ef
	rst 38h			;40f0
	sbc a,a			;40f1
	xor 0efh		;40f2
	rst 28h			;40f4
l40f5h:
	ld de,09ff9h		;40f5
	ret pe			;40f8
	add a,e			;40f9
	rst 18h			;40fa
	ld a,a			;40fb
	xor (hl)		;40fc
	djnz l4178h		;40fd
	ld a,a			;40ff
	rst 10h			;4100
	rst 28h			;4101
	ld d,l			;4102
	call pe,sub_7f71h+2	;4103
	add a,b			;4106
	ld c,e			;4107
	add a,e			;4108
	ld d,085h		;4109
	inc sp			;410b
	rst 38h			;410c
	ld a,h			;410d
	inc l			;410e
	add hl,bc		;410f
	ld a,e			;4110
	rst 28h			;4111
	call z,0e65ch		;4112
	ld a,e			;4115
	add a,b			;4116
	add hl,sp		;4117
	call nc,0a682h		;4118
	add a,b			;411b
	or a			;411c
	add a,(hl)		;411d
	inc a			;411e
	ld a,a			;411f
	adc a,b			;4120
	cp 0feh			;4121
	ld a,c			;4123
	rst 38h			;4124
	jp (hl)			;4125
	ld de,0fe9fh		;4126
	cp (hl)			;4129
	add a,d			;412a
	ld b,d			;412b
	inc b			;412c
	rst 28h			;412d
	sbc a,c			;412e
	rrca			;412f
	ld (bc),a		;4130
	jp p,0167fh		;4131
	inc sp			;4134
	ld sp,0a331h		;4135
	ld de,03031h		;4138
	rst 38h			;413b
	sub e			;413c
	inc b			;413d
	inc bc			;413e
	ld a,(bc)		;413f
	inc e			;4140
	jr nc,l41c2h		;4141
	ld h,e			;4143
	rst 28h			;4144
	ld d,a			;4145
	ld l,h			;4146
	ld a,a			;4147
	ld e,c			;4148
	ld a,(hl)		;4149
	dec c			;414a
	sub d			;414b
	rst 38h			;414c
	ret po			;414d
	ld hl,0fb8ch		;414e
	adc a,l			;4151
	pop af			;4152
	exx			;4153
	rst 30h			;4154
	inc sp			;4155
	add a,b			;4156
	ld e,079h		;4157
	ld d,080h		;4159
	ld c,h			;415b
	jp nc,l56f7h		;415c
	rst 38h			;415f
	ld d,c			;4160
	and l			;4161
	add a,b			;4162
	ld h,h			;4163
	nop			;4164
	add hl,de		;4165
	ld c,c			;4166
	add hl,sp		;4167
	defb 0fdh,079h,022h ;illegal sequence	;4168
	xor 07bh		;416b
	ex de,hl		;416d
	xor 0feh		;416e
	jr z,l40f5h		;4170
	ret nz			;4172
	ld sp,hl		;4173
	ei			;4174
	xor 08fh		;4175
	ld c,d			;4177
l4178h:
	ld sp,hl		;4178
	add a,h			;4179
	ld d,a			;417a
	cp c			;417b
	ld a,a			;417c
	and a			;417d
	ld h,e			;417e
	ld (bc),a		;417f
	jr nz,l4201h		;4180
	ld h,004h		;4182
	ld (bc),a		;4184
	ld a,(bc)		;4185
	jp m,0917fh		;4186
	adc a,c			;4189
	adc a,c			;418a
	rst 38h			;418b
	adc a,07eh		;418c
	xor c			;418e
	ld d,h			;418f
	sub h			;4190
	ret			;4191
	add hl,hl		;4192
	ld sp,hl		;4193
sub_4194h:
	add hl,hl		;4194
	ret m			;4195
	add hl,hl		;4196
	rst 30h			;4197
	xor c			;4198
	add a,b			;4199
	ld e,053h		;419a
	add a,b			;419c
	defb 0ddh,080h,0a5h ;illegal sequence	;419d
	ld a,a			;41a0
	add hl,de		;41a1
	sbc a,h			;41a2
sub_41a3h:
	ld a,a			;41a3
	ld (l7f29h),hl		;41a4
	cp e			;41a7
	cp (hl)			;41a8
	ret m			;41a9
	ld d,e			;41aa
	ld a,d			;41ab
	inc b			;41ac
	sbc a,c			;41ad
	rst 38h			;41ae
	ex de,hl		;41af
	ei			;41b0
	ld c,b			;41b1
	sbc a,a			;41b2
	inc c			;41b3
	rst 28h			;41b4
	sbc a,b			;41b5
	cp h			;41b6
	adc a,h			;41b7
	adc a,a			;41b8
	rst 38h			;41b9
	ld e,c			;41ba
	sub b			;41bb
	ld c,b			;41bc
	rst 38h			;41bd
	di			;41be
	sub a			;41bf
	rst 38h			;41c0
	ld a,b			;41c1
l41c2h:
	adc a,l			;41c2
	and 0ffh		;41c3
	inc a			;41c5
	ld h,0f7h		;41c6
	jp z,0f9ddh		;41c8
	add hl,sp		;41cb
	cp e			;41cc
	ret po			;41cd
	ld a,e			;41ce
	or l			;41cf
	ld hl,l66f5h		;41d0
	sub c			;41d3
	push af			;41d4
	jp m,0032ah		;41d5
	call pe,0997fh		;41d8
	add hl,sp		;41db
	ld de,0bbfeh		;41dc
	rst 28h			;41df
	cp 0dch			;41e0
	rlca			;41e2
	ld sp,hl		;41e3
	ld e,d			;41e4
	rst 38h			;41e5
	adc a,d			;41e6
	ld h,d			;41e7
	adc a,e			;41e8
	rst 0			;41e9
	rst 38h			;41ea
	exx			;41eb
	rst 38h			;41ec
	ld c,a			;41ed
	dec c			;41ee
	adc a,d			;41ef
	jp po,0ff85h		;41f0
	ld a,e			;41f3
	push bc			;41f4
	ld a,a			;41f5
	inc sp			;41f6
	ld l,h			;41f7
	halt			;41f8
	jp z,08010h		;41f9
	ld e,d			;41fc
	xor l			;41fd
	ld a,(hl)		;41fe
	or 03ch			;41ff
l4201h:
	ld a,a			;4201
	add hl,de		;4202
	ld hl,08ef8h		;4203
	inc bc			;4206
	ld a,a			;4207
	push bc			;4208
l4209h:
	adc a,(hl)		;4209
	cp e			;420a
	rst 38h			;420b
	ld a,d			;420c
	add a,c			;420d
	add hl,sp		;420e
	ld (hl),l		;420f
	dec l			;4210
	rrca			;4211
	add a,c			;4212
l4213h:
	ld d,l			;4213
	rrca			;4214
	add a,c			;4215
	call 0f8ffh		;4216
	inc d			;4219
	jr nc,l424eh		;421a
	and a			;421c
	ld c,(hl)		;421d
	rst 38h			;421e
	jr nz,l4233h		;421f
	ld b,001h		;4221
	inc hl			;4223
l4224h:
	or e			;4224
	djnz $+93		;4225
	djnz $+1		;4227
	ret z			;4229
	ld b,h			;422a
	or 07fh			;422b
	ld h,l			;422d
	ld hl,0ded7h		;422e
	sub a			;4231
	ld (hl),a		;4232
l4233h:
	ld l,002h		;4233
	ld a,(hl)		;4235
	or l			;4236
	sub d			;4237
	dec a			;4238
sub_4239h:
	sub b			;4239
	cp (hl)			;423a
	ld a,a			;423b
	ld (hl),e		;423c
	dec iy			;423d
	add a,h			;423f
	add hl,bc		;4240
	add hl,hl		;4241
	sub e			;4242
	ld (hl),l		;4243
	xor 0fah		;4244
	ld d,07ah		;4246
	ld e,h			;4248
	ld a,(hl)		;4249
	ld a,b			;424a
	ld d,a			;424b
	rst 38h			;424c
	or e			;424d
l424eh:
	nop			;424e
	nop			;424f
	exx			;4250
	ld c,0ffh		;4251
	sbc a,(hl)		;4253
	ld l,h			;4254
	ld b,h			;4255
	rst 38h			;4256
l4257h:
	ld l,d			;4257
	defb 0fdh,098h,05fh ;illegal sequence	;4258
	ld d,l			;425b
	rst 38h			;425c
	adc a,(hl)		;425d
	rst 28h			;425e
	ld a,(bc)		;425f
	ld de,0a3aeh		;4260
	rst 30h			;4263
	xor d			;4264
	add a,c			;4265
	ld h,l			;4266
	ld de,0bd3bh		;4267
	ld a,a			;426a
	and e			;426b
	ld (098ffh),hl		;426c
	sub e			;426f
	adc a,h			;4270
	inc bc			;4271
	ld bc,0db95h		;4272
	rst 38h			;4275
	ret z			;4276
	rst 30h			;4277
	jp po,l66feh		;4278
	sbc a,c			;427b
	rst 38h			;427c
	cp h			;427d
	ld h,h			;427e
	dec a			;427f
	ld (041a6h),a		;4280
	inc sp			;4283
	inc hl			;4284
	out (020h),a		;4285
	rst 38h			;4287
	ld (de),a		;4288
	ld (0ce05h),hl		;4289
	rst 38h			;428c
	cp b			;428d
	ld l,a			;428e
	ld h,a			;428f
	ld d,h			;4290
	rst 38h			;4291
	adc a,h			;4292
	rst 38h			;4293
	ld (hl),e		;4294
	defb 0edh ;next byte illegal after ed	;4295
	xor (hl)		;4296
	add hl,bc		;4297
	inc sp			;4298
	ret m			;4299
	jp c,0c9e5h		;429a
	add a,b			;429d
	jp po,032f6h		;429e
	rst 28h			;42a1
	sub 070h		;42a2
	ret p			;42a4
	ld a,a			;42a5
	ld c,a			;42a6
	ld (bc),a		;42a7
	rst 38h			;42a8
	inc c			;42a9
	ld (bc),a		;42aa
	ld a,a			;42ab
	sub e			;42ac
	rst 10h			;42ad
	ld a,a			;42ae
	ld (hl),l		;42af
	nop			;42b0
	adc a,a			;42b1
	jp (hl)			;42b2
	ld e,0f1h		;42b3
	rst 38h			;42b5
	di			;42b6
	ld (hl),e		;42b7
	ld a,a			;42b8
	cp 05dh			;42b9
	ld a,b			;42bb
	ld a,a			;42bc
	ld b,a			;42bd
	adc a,d			;42be
	dec c			;42bf
	add a,h			;42c0
	rlca			;42c1
	push bc			;42c2
	djnz l4257h		;42c3
	jp m,0eb2dh		;42c5
	adc a,(hl)		;42c8
	ld de,l7a00h		;42c9
	ld b,(hl)		;42cc
	call m,0c4ebh		;42cd
	or 0e0h			;42d0
	ld a,a			;42d2
	sub c			;42d3
	nop			;42d4
	sub l			;42d5
	add a,b			;42d6
	ld d,e			;42d7
	nop			;42d8
	inc bc			;42d9
	call z,sub_7f71h	;42da
	rst 38h			;42dd
	rst 18h			;42de
	ld (hl),h		;42df
	rst 38h			;42e0
	ld a,h			;42e1
	ld l,d			;42e2
	ld d,l			;42e3
	di			;42e4
	and 0ffh		;42e5
	ld e,h			;42e7
	inc hl			;42e8
	adc a,(hl)		;42e9
	xor (hl)		;42ea
	djnz $+86		;42eb
	inc hl			;42ed
	defb 0edh ;next byte illegal after ed	;42ee
	rst 0			;42ef
	ld b,c			;42f0
	add a,e			;42f1
	sub d			;42f2
	ld (iy-004h),d		;42f3
	inc sp			;42f6
	ld (bc),a		;42f7
	ld a,(0517fh)		;42f8
	sub d			;42fb
	ret z			;42fc
	ld a,a			;42fd
	adc a,d			;42fe
	ld (bc),a		;42ff
	cp 04ch			;4300
	sbc a,(hl)		;4302
	rra			;4303
	ld bc,l7c7fh		;4304
	rst 38h			;4307
	ld a,h			;4308
	out (0fbh),a		;4309
	rst 0			;430b
	ld a,a			;430c
	adc a,l			;430d
	rst 38h			;430e
	di			;430f
	add a,a			;4310
	dec sp			;4311
	djnz l4323h		;4312
	sub d			;4314
	ld sp,l7d11h		;4315
	inc l			;4318
l4319h:
	adc a,b			;4319
	sbc a,b			;431a
	ld (0c7fbh),a		;431b
	dec sp			;431e
	dec e			;431f
	ld a,a			;4320
	ld d,c			;4321
	adc a,h			;4322
l4323h:
	ld a,c			;4323
	ld (hl),e		;4324
	add a,e			;4325
	ld (de),a		;4326
	sub h			;4327
	inc hl			;4328
	ld bc,0f5ffh		;4329
	ld h,(hl)		;432c
	ld l,a			;432d
	ld c,b			;432e
	ld (hl),e		;432f
	jr c,l4386h		;4330
	ld a,a			;4332
	ld a,b			;4333
	adc a,b			;4334
l4335h:
	nop			;4335
	dec hl			;4336
	add a,l			;4337
sub_4338h:
	sub b			;4338
	sub a			;4339
	sbc a,c			;433a
	ld a,h			;433b
	sub (hl)		;433c
	cp 0f8h			;433d
	ld sp,0f033h		;433f
	inc h			;4342
	add a,c			;4343
	sub (hl)		;4344
	sub b			;4345
	ld h,h			;4346
	ret m			;4347
	adc a,(hl)		;4348
	jp z,08762h		;4349
l434ch:
	sub d			;434c
	sub h			;434d
l434eh:
	rst 38h			;434e
	ccf			;434f
	ld d,a			;4350
	ret p			;4351
	ld a,b			;4352
	cp l			;4353
	ld l,e			;4354
	ld l,(hl)		;4355
	adc a,a			;4356
	add a,l			;4357
	ld b,l			;4358
	djnz l43b9h		;4359
	ld a,h			;435b
	ld d,h			;435c
	ld hl,0bf85h		;435d
	add a,d			;4360
	cp a			;4361
	sub l			;4362
	cp h			;4363
	ld a,a			;4364
	ld l,032h		;4365
	ex af,af'		;4367
	ld a,(hl)		;4368
	ld hl,(l7e9ah)		;4369
	inc bc			;436c
	ld a,a			;436d
	add hl,bc		;436e
	ld (bc),a		;436f
	dec a			;4370
	jp m,033f8h		;4371
	ld b,(hl)		;4374
	jr nz,l4335h		;4375
	jr z,l4389h		;4377
	call nz,0d377h		;4379
	ld a,a			;437c
	nop			;437d
	push bc			;437e
	xor 033h		;437f
	rst 38h			;4381
	ld e,05ch		;4382
	djnz l434ch		;4384
l4386h:
	or 023h			;4386
	add hl,sp		;4388
l4389h:
	jp m,0f78ch		;4389
	ld l,a			;438c
	nop			;438d
	ld a,c			;438e
	jp pe,0fe6bh		;438f
	xor d			;4392
	ld a,a			;4393
	adc a,c			;4394
	inc sp			;4395
	adc a,l			;4396
	rla			;4397
	ld a,a			;4398
	pop af			;4399
	inc hl			;439a
	rst 38h			;439b
	push hl			;439c
	cp (hl)			;439d
	call m,06e78h		;439e
	or (hl)			;43a1
	adc a,e			;43a2
	xor c			;43a3
	rst 38h			;43a4
	adc a,(hl)		;43a5
	ld a,a			;43a6
	sbc a,(hl)		;43a7
	sbc a,c			;43a8
	or 0d3h			;43a9
	ld de,0db00h		;43ab
	ld a,a			;43ae
	sbc a,l			;43af
	sbc a,c			;43b0
	ld e,b			;43b1
	res 4,l			;43b2
l43b4h:
	add a,h			;43b4
l43b5h:
	ld (0a9d7h),a		;43b5
	add a,b			;43b8
l43b9h:
	ld (bc),a		;43b9
	ld a,a			;43ba
	rst 30h			;43bb
	ld (0000ch),a		;43bc
	rst 38h			;43bf
	jr c,l4426h		;43c0
	ret nz			;43c2
	nop			;43c3
	rst 38h			;43c4
	ld a,b			;43c5
	inc hl			;43c6
	ld d,h			;43c7
	cp 08bh			;43c8
	rst 38h			;43ca
	jp p,010f3h		;43cb
	and 0e2h		;43ce
	ld a,000h		;43d0
	ld b,a			;43d2
	sbc a,c			;43d3
	ld a,a			;43d4
	sbc a,e			;43d5
	ld hl,l53feh		;43d6
	ld a,a			;43d9
	ret p			;43da
	ld e,c			;43db
	ld bc,0f700h		;43dc
	inc e			;43df
	inc sp			;43e0
	djnz l43e3h		;43e1
l43e3h:
	sub a			;43e3
	jr l43b5h		;43e4
	rst 38h			;43e6
	ld hl,(l4882h)		;43e7
	ld hl,05594h		;43ea
	rst 20h			;43ed
	ld a,l			;43ee
	djnz l43b4h		;43ef
	nop			;43f1
	cp a			;43f2
	ld a,(hl)		;43f3
	sbc a,e			;43f4
	ld a,a			;43f5
	sbc a,l			;43f6
	defb 0fdh,0b7h,07fh ;illegal sequence	;43f7
	and a			;43fa
	ld l,b			;43fb
	rst 38h			;43fc
	defb 0fdh,026h,045h ;ld iyh,045h	;43fd
	rst 38h			;4400
	cp b			;4401
	pop de			;4402
	inc c			;4403
	rst 38h			;4404
	or h			;4405
	or 09eh			;4406
	djnz l4488h		;4408
	nop			;440a
	xor a			;440b
	sub c			;440c
l440dh:
	ld a,(hl)		;440d
	ld (hl),l		;440e
	sbc a,c			;440f
	sub a			;4410
	dec l			;4411
	jp z,l7f1fh		;4412
	adc a,l			;4415
	rst 38h			;4416
	ccf			;4417
	dec c			;4418
	ld h,h			;4419
	ld a,a			;441a
	in a,(049h)		;441b
	inc bc			;441d
	ld l,h			;441e
	ld a,a			;441f
	dec b			;4420
	ld a,c			;4421
l4422h:
	sub h			;4422
	djnz l4422h		;4423
	nop			;4425
l4426h:
	call nc,099feh		;4426
	cp 0ceh			;4429
	ld a,a			;442b
	xor e			;442c
	nop			;442d
	xor c			;442e
	dec hl			;442f
	rst 38h			;4430
	di			;4431
	or c			;4432
	ld a,a			;4433
	adc a,b			;4434
	ld a,a			;4435
	ei			;4436
sub_4437h:
	ld a,(hl)		;4437
	sbc a,b			;4438
	xor h			;4439
	djnz l448ah		;443a
	and h			;443c
	cp 0c4h			;443d
	ex af,af'		;443f
	add hl,sp		;4440
	rst 38h			;4441
	ld a,(hl)		;4442
	ld a,l			;4443
	ret pe			;4444
	ld l,a			;4445
	ret pe			;4446
	or c			;4447
	jp pe,0eee9h		;4448
	call pe,0107ch		;444b
	rra			;444e
	nop			;444f
	ld l,b			;4450
	djnz $+37		;4451
	ld (0feedh),a		;4453
	call m,l7c7fh		;4456
	rst 38h			;4459
	ret m			;445a
	ld h,e			;445b
	xor 0deh		;445c
	rst 38h			;445e
	ccf			;445f
	jr c,l4482h		;4460
	ld de,l7fa8h		;4462
	sbc a,(iy+07fh)		;4465
	ld (0bffdh),hl		;4468
	ld a,a			;446b
	and l			;446c
	ld e,a			;446d
	xor 0e9h		;446e
	sub a			;4470
	rst 28h			;4471
	cp (hl)			;4472
	push af			;4473
	cp e			;4474
	call nz,sub_7393h	;4475
	add hl,hl		;4478
	call m,0ff15h		;4479
	cpl			;447c
	djnz l4489h		;447d
	defb 0fdh,0e6h,0ffh ;illegal sequence	;447f
l4482h:
	ld e,a			;4482
	ld c,b			;4483
	ld b,h			;4484
	adc a,c			;4485
	jr c,l440dh		;4486
l4488h:
	ld d,l			;4488
l4489h:
	defb 0edh ;next byte illegal after ed	;4489
l448ah:
	xor l			;448a
	inc b			;448b
	call pe,09508h		;448c
	sbc a,b			;448f
	xor 0d2h		;4490
	ld c,b			;4492
	add a,l			;4493
	sub b			;4494
	add a,095h		;4495
	call m,sub_5542h	;4497
	adc a,b			;449a
	ld e,b			;449b
	ei			;449c
	ld b,l			;449d
	ld c,b			;449e
	dec b			;449f
	rst 38h			;44a0
	rra			;44a1
	dec hl			;44a2
	sub e			;44a3
	add a,l			;44a4
	sbc a,c			;44a5
	ld c,l			;44a6
	ld hl,0f9fdh		;44a7
	sub e			;44aa
	ld (de),a		;44ab
	rst 38h			;44ac
	ld l,h			;44ad
	rst 30h			;44ae
	cp (hl)			;44af
	defb 0fdh,0ech,0fch ;illegal sequence	;44b0
	sub c			;44b3
	rrca			;44b4
l44b5h:
	sub e			;44b5
	or (hl)			;44b6
	rst 30h			;44b7
	rst 0			;44b8
	rst 38h			;44b9
	ret nz			;44ba
	add a,h			;44bb
	ret p			;44bc
	ld a,a			;44bd
	ld d,e			;44be
	ld c,b			;44bf
	ld a,a			;44c0
	xor 0bfh		;44c1
	or 07ah			;44c3
	nop			;44c5
	ld a,089h		;44c6
	ld b,(hl)		;44c8
	ld c,b			;44c9
	and 0cdh		;44ca
sub_44cch:
	ret p			;44cc
	ld e,e			;44cd
	ld c,c			;44ce
	push af			;44cf
	pop af			;44d0
	ld bc,0bbfdh		;44d1
	cp 039h			;44d4
	ld a,a			;44d6
	sub d			;44d7
	or (hl)			;44d8
	ret m			;44d9
	cpl			;44da
	ld (bc),a		;44db
	ld a,a			;44dc
	and (hl)		;44dd
	push af			;44de
	dec l			;44df
	add a,a			;44e0
	ld c,054h		;44e1
	ld c,c			;44e3
	ld a,a			;44e4
	ccf			;44e5
	adc a,d			;44e6
	ld h,h			;44e7
	adc a,a			;44e8
	xor l			;44e9
	add a,d			;44ea
	ld sp,hl		;44eb
	ld a,a			;44ec
	or (hl)			;44ed
	nop			;44ee
	dec sp			;44ef
	sbc a,c			;44f0
	or 021h			;44f1
	ei			;44f3
	ld e,d			;44f4
	djnz l44b5h		;44f5
	defb 0fdh,01eh,000h ;illegal sequence	;44f7
	call m,03ff8h		;44fa
	ld a,a			;44fd
	ld (hl),d		;44fe
	sbc a,b			;44ff
	rst 38h			;4500
	ld l,07fh		;4501
	ex de,hl		;4503
	add a,h			;4504
	ld a,c			;4505
	add a,d			;4506
	adc a,a			;4507
	ld a,a			;4508
	and c			;4509
	sub e			;450a
	call p,00059h		;450b
	inc de			;450e
	ld sp,08012h		;450f
l4512h:
	sbc a,a			;4512
	ret m			;4513
	ld c,d			;4514
	adc a,d			;4515
l4516h:
	ex de,hl		;4516
	ei			;4517
	ret po			;4518
	set 7,a			;4519
	ret z			;451b
	sbc a,c			;451c
	adc a,a			;451d
	rst 38h			;451e
	dec sp			;451f
	ld l,a			;4520
	ld (0883dh),hl		;4521
	adc a,l			;4524
	ld a,a			;4525
	ld l,d			;4526
	ld b,l			;4527
	adc a,c			;4528
	ld a,(iy-07ch)		;4529
	inc sp			;452c
	ld de,0ef80h		;452d
	ei			;4530
	ld h,h			;4531
	add a,h			;4532
	ex (sp),hl		;4533
	jr nz,l45b5h		;4534
	pop af			;4536
	inc hl			;4537
	rst 38h			;4538
	jp (hl)			;4539
	ld c,e			;453a
	ld c,b			;453b
	rst 38h			;453c
	adc a,e			;453d
	ld b,l			;453e
	defb 0fdh,09ah,027h ;illegal sequence	;453f
	ld d,h			;4542
	ld b,l			;4543
	rst 38h			;4544
	call 0f192h		;4545
	ld e,c			;4548
	nop			;4549
	cp d			;454a
	or 0dch			;454b
	cp 06bh			;454d
	ld de,0d795h		;454f
	rst 0			;4552
	sub h			;4553
	jr nc,$+20		;4554
	dec h			;4556
	jr nz,l4592h		;4557
l4559h:
	cp 0f0h			;4559
	and a			;455b
	rst 38h			;455c
	pop af			;455d
	ld l,a			;455e
	ld (bc),a		;455f
	dec sp			;4560
	sub e			;4561
	push af			;4562
	ret m			;4563
	or h			;4564
l4565h:
	nop			;4565
	ld a,b			;4566
	ld hl,07119h		;4567
	sub e			;456a
l456bh:
	ld a,(hl)		;456b
	djnz l4516h		;456c
	ld hl,0c4feh		;456e
	inc bc			;4571
	ld a,a			;4572
	inc bc			;4573
	or a			;4574
	jp m,0ffbeh		;4575
	sbc a,047h		;4578
	ld c,07fh		;457a
	pop bc			;457c
	rst 38h			;457d
	jp z,03954h		;457e
	sbc a,b			;4581
	adc a,b			;4582
l4583h:
	nop			;4583
	and a			;4584
	rlca			;4585
	rst 38h			;4586
	out (0fch),a		;4587
	sub d			;4589
	ret m			;458a
	exx			;458b
	pop af			;458c
	defb 0edh ;next byte illegal after ed	;458d
	sub c			;458e
	call m,00d29h		;458f
l4592h:
	cp c			;4592
	ld a,l			;4593
	nop			;4594
	ld hl,l7f01h		;4595
	ld (09203h),hl		;4598
	ld a,a			;459b
	ret m			;459c
	ld (hl),c		;459d
	jp m,0b31ah		;459e
	ld (l6ea8h),hl		;45a1
	ei			;45a4
	ld hl,00301h		;45a5
	ld (0b323h),a		;45a8
	rst 38h			;45ab
	sbc a,c			;45ac
	ld h,b			;45ad
	call z,0f7ffh		;45ae
	ld a,a			;45b1
	xor e			;45b2
	ld d,h			;45b3
	ld a,a			;45b4
l45b5h:
	add a,b			;45b5
	ld a,d			;45b6
	call c,sub_4b88h	;45b7
	ld e,c			;45ba
	add a,h			;45bb
	jp z,0db10h		;45bc
	halt			;45bf
	ld sp,hl		;45c0
	cp l			;45c1
	adc a,c			;45c2
	sub l			;45c3
	nop			;45c4
	ei			;45c5
	and a			;45c6
	jp m,0994fh		;45c7
	ld a,a			;45ca
	jp z,0111eh		;45cb
	or d			;45ce
	ld de,0147fh		;45cf
	rst 38h			;45d2
	jp (hl)			;45d3
	rst 38h			;45d4
	add hl,hl		;45d5
	ei			;45d6
	ld l,c			;45d7
	ld a,a			;45d8
	push af			;45d9
	ld b,a			;45da
	add a,c			;45db
	dec sp			;45dc
	call pe,0fc91h		;45dd
	sub h			;45e0
	jp m,0fb94h		;45e1
	sub e			;45e4
	ld a,(hl)		;45e5
	ld bc,026f6h		;45e6
	add hl,de		;45e9
	sub d			;45ea
	inc l			;45eb
	rst 38h			;45ec
	ld a,(hl)		;45ed
	sbc a,l			;45ee
	rst 38h			;45ef
	cp h			;45f0
	inc de			;45f1
	add a,e			;45f2
	ld a,l			;45f3
	ld a,a			;45f4
	ret c			;45f5
	jp m,0f0cdh		;45f6
	ld d,d			;45f9
	jp m,0028ch		;45fa
	ld (bc),a		;45fd
	ld b,h			;45fe
	jr nz,l4583h		;45ff
	sbc a,c			;4601
l4602h:
	rst 8			;4602
	or 0c0h			;4603
	adc a,a			;4605
	rst 38h			;4606
	jp nz,04546h		;4607
	rst 38h			;460a
	cp b			;460b
	ld b,h			;460c
	ld a,a			;460d
	cp e			;460e
	rrca			;460f
	add a,b			;4610
	xor (hl)		;4611
	adc a,b			;4612
	call 079ffh		;4613
	add hl,de		;4616
	sub c			;4617
	jp p,084b1h		;4618
	sub l			;461b
	call m,01985h		;461c
	sub b			;461f
	rlca			;4620
	ld a,l			;4621
	ld sp,hl		;4622
	inc de			;4623
	rst 38h			;4624
	jp p,l7f74h		;4625
	ld d,l			;4628
	sbc a,(hl)		;4629
	rst 38h			;462a
	jp (hl)			;462b
	ld a,a			;462c
	adc a,c			;462d
	inc hl			;462e
	rst 38h			;462f
sub_4630h:
	defb 0edh ;next byte illegal after ed	;4630
	cp l			;4631
	adc a,h			;4632
	call z,0b8f7h		;4633
	ld a,a			;4636
	jp m,088b4h		;4637
	adc a,h			;463a
	add a,e			;463b
	ld b,a			;463c
	sbc a,c			;463d
	rst 38h			;463e
	ret p			;463f
	scf			;4640
	inc bc			;4641
	ld a,a			;4642
	ld (hl),d		;4643
	ld a,(iy+07fh)		;4644
	rla			;4647
	push af			;4648
	in a,(0f8h)		;4649
	sbc a,e			;464b
	ld a,a			;464c
	ld a,(bc)		;464d
	ld c,b			;464e
	add hl,bc		;464f
	add hl,de		;4650
	rst 38h			;4651
	cp 00bh			;4652
	ex de,hl		;4654
	add hl,bc		;4655
	rst 38h			;4656
	exx			;4657
	xor 04ah		;4658
	rst 38h			;465a
	ld c,a			;465b
	ld a,a			;465c
	pop bc			;465d
	ld h,d			;465e
	sub d			;465f
	add a,d			;4660
	ld e,c			;4661
	push af			;4662
	ld b,05eh		;4663
	ld a,e			;4665
	adc a,e			;4666
	cp a			;4667
	ld a,a			;4668
	sub l			;4669
	rst 38h			;466a
	rst 28h			;466b
l466ch:
	ld (bc),a		;466c
	add a,l			;466d
	rst 38h			;466e
	ld e,(hl)		;466f
	ld c,e			;4670
	rst 38h			;4671
	ld sp,hl		;4672
	and e			;4673
	cp 0c9h			;4674
	ld (083fch),hl		;4676
	add hl,bc		;4679
	ld a,a			;467a
	sub h			;467b
	sbc a,c			;467c
	call 0ff91h		;467d
	ld sp,hl		;4680
	ld l,d			;4681
	cp e			;4682
	ld a,(l4cb6h)		;4683
	ld bc,007c4h		;4686
	dec sp			;4689
	rst 38h			;468a
	ld h,d			;468b
	ld d,l			;468c
	rst 38h			;468d
	ld e,l			;468e
	sub 084h		;468f
	adc a,c			;4691
l4692h:
	cp a			;4692
	ld b,l			;4693
	ld (hl),l		;4694
	ld (hl),a		;4695
	ld sp,hl		;4696
	ld c,c			;4697
	or 039h			;4698
	rlca			;469a
	ld b,(hl)		;469b
	jp m,084c7h		;469c
	ld de,0faffh		;469f
	or 0ffh			;46a2
	rst 18h			;46a4
	di			;46a5
	dec e			;46a6
	ld a,a			;46a7
	adc a,089h		;46a8
	or 080h			;46aa
	cp a			;46ac
	ld b,l			;46ad
	add a,d			;46ae
	ld (hl),e		;46af
	sbc a,(hl)		;46b0
	xor a			;46b1
	nop			;46b2
	ld h,(hl)		;46b3
	inc sp			;46b4
	rst 30h			;46b5
	ld (hl),b		;46b6
	sbc a,c			;46b7
	ex de,hl		;46b8
	ld a,a			;46b9
	adc a,e			;46ba
	xor b			;46bb
	rst 38h			;46bc
	defb 0fdh,0a9h,0ffh ;illegal sequence	;46bd
	defb 0edh ;next byte illegal after ed	;46c0
	ld d,l			;46c1
	rst 38h			;46c2
	inc a			;46c3
	ld a,d			;46c4
	ld a,a			;46c5
	cp (hl)			;46c6
	ld b,l			;46c7
	ld a,a			;46c8
	ld h,e			;46c9
	sub e			;46ca
	ld (05e7eh),a		;46cb
	add hl,de		;46ce
	ld a,a			;46cf
	jr z,l46ebh		;46d0
	rst 38h			;46d2
	defb 0fdh,09ch ;sbc a,iyh	;46d3
	rst 38h			;46d5
	ret m			;46d6
	sbc a,h			;46d7
	ld d,l			;46d8
	ld a,a			;46d9
	jp po,l5f87h		;46da
	nop			;46dd
	ld a,a			;46de
	rra			;46df
	ld a,(hl)		;46e0
	inc sp			;46e1
	add a,a			;46e2
	rst 8			;46e3
	ld a,a			;46e4
	dec d			;46e5
	add a,b			;46e6
	ld sp,hl		;46e7
	ld d,c			;46e8
	rst 38h			;46e9
	pop af			;46ea
l46ebh:
	ld l,a			;46eb
	rst 38h			;46ec
	or d			;46ed
	add a,h			;46ee
	inc b			;46ef
	rst 18h			;46f0
	ld a,a			;46f1
	ei			;46f2
	ld e,e			;46f3
	adc a,c			;46f4
	inc hl			;46f5
	rst 38h			;46f6
	ex (sp),hl		;46f7
	ex (sp),hl		;46f8
	ld a,(hl)		;46f9
	ld (hl),c		;46fa
	sub e			;46fb
	sub d			;46fc
	ld sp,08406h		;46fd
	ld (l7effh),a		;4700
	jp (ix)			;4703
	or l			;4705
	rst 38h			;4706
	ld e,0f2h		;4707
	sub e			;4709
	ld h,(hl)		;470a
	rst 38h			;470b
	rst 0			;470c
	rst 38h			;470d
	push bc			;470e
	ld a,(hl)		;470f
	push bc			;4710
	add a,(hl)		;4711
	or (hl)			;4712
l4713h:
	ld hl,l7ffch		;4713
	ret m			;4716
	rst 38h			;4717
	ret m			;4718
	ld h,l			;4719
	jp (hl)			;471a
	ld (hl),a		;471b
	inc b			;471c
	rst 38h			;471d
	ld a,h			;471e
	inc hl			;471f
	rst 38h			;4720
l4721h:
	adc a,b			;4721
	cp 0b9h			;4722
	add a,(hl)		;4724
	ld (hl),c		;4725
	ld a,a			;4726
	ld e,c			;4727
	jp m,0f94eh		;4728
	ld a,(hl)		;472b
	ld l,(hl)		;472c
	ret po			;472d
	inc hl			;472e
	push hl			;472f
	add hl,bc		;4730
	ld sp,l5fffh		;4731
	or l			;4734
	ld a,a			;4735
	ret po			;4736
	ld b,l			;4737
	inc sp			;4738
	ld c,b			;4739
	sub l			;473a
	halt			;473b
	ld a,a			;473c
	xor c			;473d
	ld sp,hl		;473e
	ld c,(hl)		;473f
	nop			;4740
	cp l			;4741
	ld a,a			;4742
	ld c,l			;4743
	sub e			;4744
	inc sp			;4745
	jp p,086dbh		;4746
	pop af			;4749
	ld a,(hl)		;474a
	sbc a,c			;474b
	ld a,a			;474c
	ld a,h			;474d
	rst 38h			;474e
	ld a,h			;474f
	adc a,a			;4750
	ld b,h			;4751
	ld a,a			;4752
	ld d,h			;4753
	ld b,h			;4754
	rst 38h			;4755
	ld h,h			;4756
	cp 099h			;4757
	add a,c			;4759
	out (089h),a		;475a
	ld a,l			;475c
	jp nc,l5cfbh		;475d
	or l			;4760
l4761h:
	rrca			;4761
	add hl,hl		;4762
	rlca			;4763
	jp z,0ff39h		;4764
	ccf			;4767
	ld l,b			;4768
	sbc a,c			;4769
	sub h			;476a
	cp (hl)			;476b
	jp pe,0006dh		;476c
	ld a,a			;476f
	adc a,l			;4770
	defb 0edh ;next byte illegal after ed	;4771
	ret c			;4772
	ld a,a			;4773
	ret m			;4774
	rst 8			;4775
	ld a,(02281h)		;4776
	ld a,l			;4779
	ld a,d			;477a
	ret m			;477b
	ld c,a			;477c
	jp pe,0329bh		;477d
	rlca			;4780
	and h			;4781
	add hl,hl		;4782
	rst 38h			;4783
	ld a,(hl)		;4784
	rst 30h			;4785
	otir			;4786
	rst 38h			;4788
	add hl,sp		;4789
	rst 38h			;478a
	dec de			;478b
	rst 38h			;478c
	ld (hl),a		;478d
	ld a,a			;478e
	dec a			;478f
	nop			;4790
	ccf			;4791
	adc a,c			;4792
	or 0ceh			;4793
	adc a,c			;4795
	cp l			;4796
	cp l			;4797
	rlca			;4798
	and a			;4799
	rst 38h			;479a
	or 039h			;479b
	ld a,a			;479d
	adc a,l			;479e
	rst 38h			;479f
	ld a,b			;47a0
	ld b,h			;47a1
	ld a,a			;47a2
	ld c,e			;47a3
	sub e			;47a4
	inc l			;47a5
	ld b,h			;47a6
	rst 38h			;47a7
	ld sp,hl		;47a8
	ld a,a			;47a9
	nop			;47aa
	ld h,a			;47ab
	jp m,03ba0h		;47ac
	ld (01220h),hl		;47af
	ld h,a			;47b2
	jr nc,$+122		;47b3
	rst 38h			;47b5
	ld c,(hl)		;47b6
	ld (0deffh),hl		;47b7
	push hl			;47ba
	and 073h		;47bb
	ld l,a			;47bd
	ld d,l			;47be
	rst 38h			;47bf
	dec c			;47c0
	ld d,l			;47c1
	rst 38h			;47c2
	jp pe,09895h		;47c3
	ex (sp),hl		;47c6
	nop			;47c7
	ld a,a			;47c8
	ld sp,hl		;47c9
l47cah:
	ld d,e			;47ca
	ld (bc),a		;47cb
	or d			;47cc
	ld a,a			;47cd
	cp b			;47ce
	rst 38h			;47cf
	xor 0eah		;47d0
	sub d			;47d2
	ld a,a			;47d3
l47d4h:
	xor (hl)		;47d4
	inc bc			;47d5
	ld a,a			;47d6
	or 0e2h			;47d7
	adc a,l			;47d9
	jr nc,l4761h		;47da
	add a,l			;47dc
	dec hl			;47dd
	ld e,b			;47de
	ld e,c			;47df
	add a,l			;47e0
	inc hl			;47e1
	rst 38h			;47e2
	ld sp,hl		;47e3
	ei			;47e4
	ld (hl),b		;47e5
	nop			;47e6
	jp m,0fec9h		;47e7
	rst 30h			;47ea
	daa			;47eb
	ld c,094h		;47ec
	call m,0009eh		;47ee
	rst 8			;47f1
	ld c,c			;47f2
	jp (hl)			;47f3
	ld a,a			;47f4
	rst 20h			;47f5
	ld l,d			;47f6
	jp 01001h		;47f7
	ld bc,01110h		;47fa
	nop			;47fd
	ld de,00601h		;47fe
	ld d,c			;4801
	ld a,(bc)		;4802
	ld b,010h		;4803
	nop			;4805
	jp po,099c2h		;4806
	cp 06fh			;4809
	nop			;480b
	inc d			;480c
	ld d,h			;480d
	and c			;480e
	sbc a,b			;480f
	rst 10h			;4810
	add a,(hl)		;4811
	sub c			;4812
	ld (0b8dch),hl		;4813
	ld a,e			;4816
	in a,(0dch)		;4817
	inc sp			;4819
	inc d			;481a
	djnz $+4		;481b
	ld hl,0c746h		;481d
	ld d,(hl)		;4820
	sbc a,e			;4821
	rst 28h			;4822
	cpl			;4823
	call p,03300h		;4824
	ld sp,03113h		;4827
	inc sp			;482a
	ld de,l5533h		;482b
	inc de			;482e
l482fh:
	ld b,00ah		;482f
	ld b,088h		;4831
	jr nc,l47cah		;4833
	sub l			;4835
	add a,l			;4836
	di			;4837
	ld a,a			;4838
	ld b,h			;4839
	ld e,c			;483a
	ld a,a			;483b
	sbc a,e			;483c
	ld hl,0237fh		;483d
	jr l47d4h		;4840
	dec hl			;4842
	add hl,hl		;4843
l4844h:
	ld a,a			;4844
	ld (de),a		;4845
	inc a			;4846
	or d			;4847
	add hl,de		;4848
	ld a,a			;4849
	call z,02212h		;484a
	nop			;484d
	rst 30h			;484e
	call pe,sub_4239h	;484f
	nop			;4852
	rst 0			;4853
	add hl,de		;4854
	ld a,h			;4855
	adc a,a			;4856
	ld de,0c77fh		;4857
	nop			;485a
	cp e			;485b
	cp e			;485c
	or c			;485d
	dec de			;485e
	or c			;485f
	cp e			;4860
	ld de,l54bbh		;4861
	dec de			;4864
	ld b,00ah		;4865
	ld b,0b0h		;4867
	jr z,l486bh		;4869
l486bh:
	ld e,b			;486b
	ret pe			;486c
	and h			;486d
	or 0f0h			;486e
	nop			;4870
	ld b,a			;4871
	add a,l			;4872
	rst 38h			;4873
	jr z,l4899h		;4874
	rst 38h			;4876
	ret p			;4877
	ld a,c			;4878
	add hl,hl		;4879
	ld a,(hl)		;487a
	call z,0336fh		;487b
	add a,h			;487e
	rst 18h			;487f
	ld a,(hl)		;4880
	dec hl			;4881
l4882h:
	inc c			;4882
	ld a,a			;4883
	ld de,09800h		;4884
	cp a			;4887
	ld a,a			;4888
	sub l			;4889
	xor l			;488a
	add hl,de		;488b
	ld a,a			;488c
	call z,sub_67ffh	;488d
	ld a,a			;4890
	jp 01effh		;4891
	ld a,(hl)		;4894
	add hl,sp		;4895
	ld c,d			;4896
	sub c			;4897
	xor (hl)		;4898
l4899h:
	xor e			;4899
	ld l,a			;489a
	ld h,(hl)		;489b
	inc b			;489c
	ld (hl),l		;489d
	add a,h			;489e
	xor l			;489f
	ld a,(hl)		;48a0
	cp b			;48a1
	dec bc			;48a2
	nop			;48a3
	ld b,l			;48a4
	ld (de),a		;48a5
	add a,c			;48a6
	rst 38h			;48a7
	cpl			;48a8
	sub c			;48a9
	dec l			;48aa
	ld b,(hl)		;48ab
	push bc			;48ac
	ld d,d			;48ad
	inc b			;48ae
	rst 38h			;48af
	or (hl)			;48b0
	adc a,d			;48b1
	ld c,d			;48b2
	rst 38h			;48b3
	dec h			;48b4
	sbc a,c			;48b5
	rst 38h			;48b6
	jp c,03cffh		;48b7
	ex de,hl		;48ba
	sbc a,h			;48bb
	inc a			;48bc
	ld a,(hl)		;48bd
	scf			;48be
	ld a,l			;48bf
	nop			;48c0
	add a,a			;48c1
	inc sp			;48c2
	add a,h			;48c3
	inc sp			;48c4
	ld a,(hl)		;48c5
	jp nz,0fe22h		;48c6
	dec (hl)		;48c9
	nop			;48ca
	add a,c			;48cb
	dec de			;48cc
	ld a,a			;48cd
	ret m			;48ce
	or e			;48cf
	ret nz			;48d0
	xor (hl)		;48d1
	ld (de),a		;48d2
	inc b			;48d3
	push af			;48d4
	ld a,a			;48d5
	ld b,l			;48d6
	ex (sp),hl		;48d7
	ld (hl),a		;48d8
	nop			;48d9
	and h			;48da
	rst 38h			;48db
	ld a,c			;48dc
	dec l			;48dd
	add hl,hl		;48de
	sub c			;48df
	adc a,a			;48e0
	ld a,(hl)		;48e1
	rlca			;48e2
	ld (08100h),hl		;48e3
	inc hl			;48e6
	ld (l763ah),a		;48e7
	adc a,h			;48ea
	ld sp,l7e30h		;48eb
	ld (06dc7h),hl		;48ee
	ld c,a			;48f1
	rst 38h			;48f2
	ex (sp),hl		;48f3
	res 5,h			;48f4
	add hl,de		;48f6
	inc bc			;48f7
	pop bc			;48f8
	ld d,000h		;48f9
	call m,0917fh		;48fb
	rst 38h			;48fe
	exx			;48ff
	add hl,hl		;4900
	ld c,c			;4901
	ld a,a			;4902
	ex (sp),hl		;4903
	ld a,(hl)		;4904
	jp (hl)			;4905
	nop			;4906
	sub c			;4907
	add a,b			;4908
l4909h:
	add a,c			;4909
	nop			;490a
	inc sp			;490b
	ld bc,0c712h		;490c
	add hl,de		;490f
	ret z			;4910
	sbc a,037h		;4911
	rst 38h			;4913
	ld sp,hl		;4914
	inc c			;4915
	ld (bc),a		;4916
	inc bc			;4917
	ld (hl),a		;4918
l4919h:
	jr nz,l4951h		;4919
	rst 38h			;491b
	ld a,(hl)		;491c
	pop af			;491d
	rst 38h			;491e
	jp po,0f294h		;491f
	ld a,a			;4922
	ld a,c			;4923
sub_4924h:
	ld (de),a		;4924
	ld a,(hl)		;4925
	push bc			;4926
	cp e			;4927
	dec b			;4928
	or l			;4929
	or 098h			;492a
	ld a,(bc)		;492c
	djnz l4919h		;492d
	ld b,(hl)		;492f
	out (0e9h),a		;4930
l4932h:
	rst 38h			;4932
	ld a,h			;4933
	xor h			;4934
	cpl			;4935
	sub (hl)		;4936
	rst 38h			;4937
	ld l,a			;4938
	rst 38h			;4939
	ld a,07fh		;493a
	jr $+1			;493c
	ex de,hl		;493e
	rla			;493f
	cp b			;4940
	cp 0e1h			;4941
	inc hl			;4943
	xor h			;4944
	dec hl			;4945
l4946h:
	nop			;4946
	call nc,0b1b8h		;4947
	add a,b			;494a
	dec e			;494b
	ld (de),a		;494c
	djnz $+5		;494d
	cp 0d1h			;494f
l4951h:
	djnz l4965h		;4951
	rst 38h			;4953
	sbc a,a			;4954
	sub l			;4955
	or (hl)			;4956
	ld a,032h		;4957
	or (hl)			;4959
	pop af			;495a
	rra			;495b
	ld (de),a		;495c
	dec hl			;495d
	sbc a,h			;495e
	ld d,(hl)		;495f
	ex de,hl		;4960
	inc hl			;4961
sub_4962h:
	add hl,hl		;4962
	sub c			;4963
	cp (hl)			;4964
l4965h:
	inc de			;4965
	add hl,de		;4966
	ld sp,0ee29h		;4967
	dec hl			;496a
	halt			;496b
	or c			;496c
	jp p,081b1h		;496d
	call nz,sub_6180h	;4970
	inc bc			;4973
	inc sp			;4974
	ld b,h			;4975
	jp nz,08701h		;4976
	ld c,d			;4979
	rst 38h			;497a
	call m,0be69h		;497b
	ld h,d			;497e
	rst 38h			;497f
	or (hl)			;4980
	rst 38h			;4981
	dec sp			;4982
	sbc a,(hl)		;4983
	or 089h			;4984
	ld b,l			;4986
l4987h:
	ld d,h			;4987
	rst 38h			;4988
	ret p			;4989
l498ah:
	push hl			;498a
	ld a,a			;498b
	sub h			;498c
	ei			;498d
sub_498eh:
	jp (hl)			;498e
	add a,d			;498f
	call m,0fe46h		;4990
	add a,d			;4993
	inc de			;4994
	djnz $+10		;4995
	adc a,b			;4997
	add a,b			;4998
	ld h,l			;4999
	sub (hl)		;499a
	call m,00771h		;499b
	ld (01c81h),a		;499e
	sub 0fah		;49a1
l49a3h:
	rst 0			;49a3
	ret nc			;49a4
	inc sp			;49a5
	add hl,bc		;49a6
	ld (l7fffh),a		;49a7
	ld d,l			;49aa
	nop			;49ab
	rst 30h			;49ac
	ld a,l			;49ad
	ld h,c			;49ae
	add a,l			;49af
	ex af,af'		;49b0
	rst 10h			;49b1
	ld a,a			;49b2
	ld c,d			;49b3
	add hl,hl		;49b4
	or h			;49b5
	call p,0e5a1h		;49b6
	ex af,af'		;49b9
	add hl,de		;49ba
	ld h,a			;49bb
	ld (hl),e		;49bc
	ld a,(hl)		;49bd
	ld d,005h		;49be
	add a,l			;49c0
	ld l,(hl)		;49c1
	dec c			;49c2
	dec h			;49c3
	ld (de),a		;49c4
	halt			;49c5
	ld (bc),a		;49c6
	rst 0			;49c7
l49c8h:
	jr nc,l49cdh		;49c8
	and h			;49ca
	add a,(hl)		;49cb
	ld e,a			;49cc
l49cdh:
	ld sp,0ebffh		;49cd
	ld b,a			;49d0
	rst 38h			;49d1
	call 09e93h		;49d2
	ld sp,08afeh		;49d5
l49d8h:
	ld (de),a		;49d8
	push hl			;49d9
	ld h,e			;49da
	or b			;49db
	sub e			;49dc
	nop			;49dd
	jr z,l49c8h		;49de
	sub e			;49e0
	sbc a,e			;49e1
	add a,l			;49e2
	jr c,$+102		;49e3
	ld hl,0ff10h		;49e5
	push de			;49e8
	rst 38h			;49e9
	add a,092h		;49ea
	sub e			;49ec
	inc bc			;49ed
	jr nc,$+1		;49ee
	ccf			;49f0
	ld e,d			;49f1
	rst 38h			;49f2
	ld a,(hl)		;49f3
	ld d,l			;49f4
	add hl,hl		;49f5
	sub l			;49f6
	ld a,b			;49f7
	bit 7,(hl)		;49f8
	sub b			;49fa
	ld h,(hl)		;49fb
	xor (hl)		;49fc
	xor (hl)		;49fd
	ld a,(hl)		;49fe
	or h			;49ff
l4a00h:
	xor 0bfh		;4a00
	add a,d			;4a02
	inc b			;4a03
	djnz l498ah		;4a04
	ex de,hl		;4a06
	ld (bc),a		;4a07
	ld b,051h		;4a08
	ld sp,0bb9fh		;4a0a
	rst 38h			;4a0d
	jp m,0ffd5h		;4a0e
	call pe,0eb94h		;4a11
	ld a,a			;4a14
	sub l			;4a15
	inc e			;4a16
	ld (hl),e		;4a17
	ld a,a			;4a18
	or e			;4a19
	out (0aeh),a		;4a1a
	add hl,de		;4a1c
	ld d,(hl)		;4a1d
	ld de,l67e7h		;4a1e
	add a,h			;4a21
	add a,h			;4a22
	inc d			;4a23
	inc hl			;4a24
	ld b,h			;4a25
	nop			;4a26
	ld a,a			;4a27
	ld (bc),a		;4a28
	ld de,08ffeh		;4a29
	ld de,0c97fh		;4a2c
	adc a,c			;4a2f
	ld a,030h		;4a30
	ld (03043h),a		;4a32
	ret c			;4a35
	jp nc,00612h		;4a36
	add a,(hl)		;4a39
	ccf			;4a3a
	or e			;4a3b
	djnz l4a4ch		;4a3c
	rst 38h			;4a3e
	dec sp			;4a3f
	add hl,sp		;4a40
	ld b,l			;4a41
	ld a,a			;4a42
	inc a			;4a43
	sbc a,c			;4a44
	ld d,l			;4a45
	ld a,a			;4a46
l4a47h:
	and h			;4a47
	jp p,0fd8ch		;4a48
	or (hl)			;4a4b
l4a4ch:
	ei			;4a4c
	cp e			;4a4d
	rlca			;4a4e
	add a,0fah		;4a4f
	inc h			;4a51
	ld b,e			;4a52
	nop			;4a53
	add a,d			;4a54
	ld c,b			;4a55
	nop			;4a56
	add a,d			;4a57
	rst 18h			;4a58
	ld a,a			;4a59
	rst 8			;4a5a
	add a,035h		;4a5b
	ld (033bah),a		;4a5d
	rst 38h			;4a60
	or a			;4a61
	ld a,a			;4a62
	and a			;4a63
	adc a,l			;4a64
	add hl,bc		;4a65
	inc de			;4a66
	inc h			;4a67
	sub e			;4a68
	call m,sub_637ch	;4a69
	cp 032h			;4a6c
	rst 38h			;4a6e
	sub d			;4a6f
	ret m			;4a70
	jp z,0fc21h		;4a71
	cp b			;4a74
	sub h			;4a75
	adc a,b			;4a76
	add a,082h		;4a77
	ld a,b			;4a79
	ld a,a			;4a7a
	cp l			;4a7b
	ret z			;4a7c
	ld h,a			;4a7d
	inc bc			;4a7e
	add a,h			;4a7f
	ld d,c			;4a80
	rst 38h			;4a81
	jp m,0ffbdh		;4a82
	sbc a,l			;4a85
	push iy			;4a86
	add a,a			;4a88
	ld l,c			;4a89
	ld a,a			;4a8a
	rla			;4a8b
	sbc a,e			;4a8c
	ld (0117fh),hl		;4a8d
	sub l			;4a90
	cp 067h			;4a91
	xor 064h		;4a93
	add a,h			;4a95
	ld l,(hl)		;4a96
	ld a,(hl)		;4a97
	ld h,l			;4a98
	push hl			;4a99
	add a,h			;4a9a
	ld e,h			;4a9b
sub_4a9ch:
	jp nc,0d2fbh		;4a9c
	halt			;4a9f
	adc a,h			;4aa0
	or c			;4aa1
	ret z			;4aa2
	ld l,e			;4aa3
	add a,e			;4aa4
	ld e,a			;4aa5
	ld a,a			;4aa6
	call nz,0ff46h		;4aa7
	sub a			;4aaa
	ld b,h			;4aab
	ld b,l			;4aac
	call m,0f99dh		;4aad
	rst 18h			;4ab0
	ld b,05bh		;4ab1
	ld a,b			;4ab3
	adc a,c			;4ab4
	jr l4a47h		;4ab5
	and h			;4ab7
	push af			;4ab8
	ld (hl),d		;4ab9
	nop			;4aba
	ei			;4abb
	ld a,(l7f12h)		;4abc
	or a			;4abf
	ld c,0ffh		;4ac0
	di			;4ac2
	call po,096b7h		;4ac3
	rst 38h			;4ac6
	ld a,b			;4ac7
	ld a,a			;4ac8
	ld c,e			;4ac9
	sbc a,c			;4aca
	rst 38h			;4acb
	pop bc			;4acc
	rst 38h			;4acd
	dec de			;4ace
	ld a,a			;4acf
	sbc a,b			;4ad0
	cp 04bh			;4ad1
	rst 38h			;4ad3
	ld b,a			;4ad4
	sub e			;4ad5
	ld hl,01c7ch		;4ad6
	inc b			;4ad9
	ld (hl),c		;4ada
	ld a,a			;4adb
l4adch:
	ret p			;4adc
	ld a,c			;4add
	cp 065h			;4ade
	sub c			;4ae0
	ld l,l			;4ae1
	ld c,b			;4ae2
	inc b			;4ae3
	sbc a,a			;4ae4
	ld (hl),a		;4ae5
	adc a,e			;4ae6
	rst 38h			;4ae7
	ld e,0a6h		;4ae8
	dec sp			;4aea
	ld sp,0f17bh		;4aeb
	ld a,a			;4aee
	ld (hl),c		;4aef
	ld d,e			;4af0
	rst 38h			;4af1
	or h			;4af2
	rst 38h			;4af3
	ld (hl),c		;4af4
	nop			;4af5
	jp po,0ec95h		;4af6
	ei			;4af9
	adc a,l			;4afa
	inc de			;4afb
	ld (l6832h),a		;4afc
	rst 0			;4aff
	inc bc			;4b00
	sub d			;4b01
	push af			;4b02
	push hl			;4b03
	ld a,d			;4b04
	ld (hl),046h		;4b05
	pop bc			;4b07
	ld l,a			;4b08
	or 019h			;4b09
	jp m,0193fh		;4b0b
	ld a,l			;4b0e
	add hl,hl		;4b0f
	inc sp			;4b10
	rst 38h			;4b11
	sbc a,(hl)		;4b12
	sbc a,h			;4b13
	ld a,a			;4b14
	ld a,088h		;4b15
	ld a,a			;4b17
	ex af,af'		;4b18
	rst 38h			;4b19
	adc a,0fah		;4b1a
	adc a,(hl)		;4b1c
	ld e,c			;4b1d
	ld d,h			;4b1e
	ld (bc),a		;4b1f
	ld b,059h		;4b20
	adc a,b			;4b22
	add a,l			;4b23
	halt			;4b24
	ld d,e			;4b25
	ret p			;4b26
	ld b,019h		;4b27
	sub d			;4b29
	ld l,c			;4b2a
	or d			;4b2b
	ld (de),a		;4b2c
	or d			;4b2d
	call nc,0c6ebh		;4b2e
	ld (hl),a		;4b31
	inc sp			;4b32
	jp m,021b6h		;4b33
	call m,09a7dh		;4b36
	ld a,(hl)		;4b39
	cp (hl)			;4b3a
	sub h			;4b3b
	call sub_70ddh		;4b3c
	cp e			;4b3f
	nop			;4b40
	add ix,ix		;4b41
	defb 0ddh,0c1h,0c9h ;illegal sequence	;4b43
	cpl			;4b46
	rst 38h			;4b47
	pop hl			;4b48
	call pe,0f1ffh		;4b49
	ld a,a			;4b4c
	ld b,l			;4b4d
	ld b,h			;4b4e
	sub b			;4b4f
	inc (hl)		;4b50
	cp d			;4b51
	ld a,d			;4b52
	ld hl,004d8h		;4b53
	adc a,e			;4b56
	xor c			;4b57
	ld (hl),c		;4b58
	ld a,h			;4b59
	ld (0198dh),a		;4b5a
	add a,d			;4b5d
	and l			;4b5e
	rst 30h			;4b5f
	cpl			;4b60
	sub a			;4b61
	call po,0be80h		;4b62
	dec bc			;4b65
	sub c			;4b66
	inc h			;4b67
	adc a,c			;4b68
	cp c			;4b69
	ld b,(hl)		;4b6a
	ld de,0fcffh		;4b6b
	ccf			;4b6e
	ld a,a			;4b6f
	ld b,000h		;4b70
	ret m			;4b72
	ld a,a			;4b73
	sbc a,l			;4b74
	ld d,l			;4b75
	ld d,h			;4b76
	ld b,h			;4b77
	and e			;4b78
	sub d			;4b79
	ret pe			;4b7a
	adc a,c			;4b7b
	ld a,a			;4b7c
	ld (bc),a		;4b7d
	ret m			;4b7e
	ld l,c			;4b7f
	di			;4b80
	ld h,l			;4b81
	ld c,c			;4b82
	ld b,086h		;4b83
	ld bc,l7f13h		;4b85
sub_4b88h:
	and a			;4b88
	ld hl,0f0f3h		;4b89
	ld a,e			;4b8c
	ld a,(hl)		;4b8d
	ld b,a			;4b8e
	ld (0c3ffh),hl		;4b8f
	dec l			;4b92
	ret p			;4b93
	rst 0			;4b94
	rst 38h			;4b95
	rlca			;4b96
	adc a,c			;4b97
	add a,h			;4b98
	ld (bc),a		;4b99
	rrca			;4b9a
	adc a,c			;4b9b
	ld a,a			;4b9c
	inc d			;4b9d
	ld (l71e7h),a		;4b9e
	pop af			;4ba1
	xor c			;4ba2
	sbc a,(hl)		;4ba3
	sub h			;4ba4
	add a,b			;4ba5
	and d			;4ba6
	ld hl,04d80h		;4ba7
	sub h			;4baa
	ld c,d			;4bab
l4bach:
	call z,08922h		;4bac
	sub a			;4baf
	add a,b			;4bb0
	cp (hl)			;4bb1
	call m,0a132h		;4bb2
	scf			;4bb5
	ld a,(hl)		;4bb6
	add a,h			;4bb7
	ld (l7effh),hl		;4bb8
	inc d			;4bbb
	rst 38h			;4bbc
	jp m,0fffbh		;4bbd
	ld de,0c7feh		;4bc0
	ld h,l			;4bc3
	add hl,hl		;4bc4
	sub c			;4bc5
	or (iy-007h)		;4bc6
	sub (hl)		;4bc9
	add a,b			;4bca
	ld e,d			;4bcb
	sbc a,c			;4bcc
	add a,h			;4bcd
	sbc a,c			;4bce
	cp 06ah			;4bcf
	adc a,l			;4bd1
	rst 0			;4bd2
	call m,0bfddh		;4bd3
	ld l,d			;4bd6
	sub e			;4bd7
	cp h			;4bd8
	or c			;4bd9
	ret c			;4bda
	add hl,hl		;4bdb
	rst 38h			;4bdc
	call m,0ff1ah		;4bdd
	ret c			;4be0
	sub e			;4be1
	xor (hl)		;4be2
	ld a,h			;4be3
	ld (bc),a		;4be4
	jr z,$+1		;4be5
	ld a,e			;4be7
	add a,h			;4be8
	rra			;4be9
	adc a,0f9h		;4bea
	ld c,e			;4bec
	add a,b			;4bed
	dec d			;4bee
	sub a			;4bef
	rst 0			;4bf0
	adc a,d			;4bf1
	jp c,0217fh		;4bf2
	adc a,a			;4bf5
l4bf6h:
	call m,sub_7eafh	;4bf6
	add a,l			;4bf9
	djnz l4bach		;4bfa
	call po,sub_7189h	;4bfc
	rst 38h			;4bff
	rra			;4c00
	rlca			;4c01
	rst 38h			;4c02
	cp h			;4c03
	ld de,0c4ffh		;4c04
	adc a,d			;4c07
	xor e			;4c08
	ld b,l			;4c09
	add a,c			;4c0a
	add hl,de		;4c0b
	ret m			;4c0c
	ld d,h			;4c0d
	ld h,l			;4c0e
	add a,b			;4c0f
	ld (hl),d		;4c10
	push af			;4c11
	ld h,d			;4c12
	add hl,de		;4c13
	adc a,a			;4c14
	rst 30h			;4c15
	adc a,e			;4c16
	ld c,a			;4c17
	add hl,hl		;4c18
	ld a,(hl)		;4c19
	and c			;4c1a
	inc hl			;4c1b
	sbc a,(hl)		;4c1c
	add hl,sp		;4c1d
	daa			;4c1e
	adc a,b			;4c1f
	inc bc			;4c20
	cp 0e3h			;4c21
	or c			;4c23
	cpl			;4c24
	ld a,a			;4c25
	add a,a			;4c26
	rst 30h			;4c27
	dec sp			;4c28
	ld l,e			;4c29
	add a,l			;4c2a
	xor 071h		;4c2b
	rst 38h			;4c2d
	call nz,0fdd1h		;4c2e
	sub d			;4c31
l4c32h:
	add a,b			;4c32
	xor h			;4c33
	inc bc			;4c34
	ld d,(hl)		;4c35
	adc a,l			;4c36
	add a,b			;4c37
sub_4c38h:
	or 08eh			;4c38
	xor c			;4c3a
	add a,d			;4c3b
	push hl			;4c3c
	sbc a,l			;4c3d
	ld a,(hl)		;4c3e
	inc sp			;4c3f
	or d			;4c40
	xor h			;4c41
	djnz $-78		;4c42
	sbc a,0b8h		;4c44
	ld e,d			;4c46
	dec (hl)		;4c47
	adc a,(hl)		;4c48
	ld (hl),e		;4c49
	ei			;4c4a
	dec bc			;4c4b
	rst 38h			;4c4c
	call p,0ff8fh		;4c4d
	sub e			;4c50
	rst 38h			;4c51
	jr c,l4c32h		;4c52
	sbc a,b			;4c54
	cp (hl)			;4c55
	ld d,a			;4c56
	cpl			;4c57
	ei			;4c58
	jp c,09157h		;4c59
	sub e			;4c5c
	sbc a,c			;4c5d
	cp c			;4c5e
	sbc a,a			;4c5f
	add a,c			;4c60
	sbc a,(hl)		;4c61
	defb 0fdh,038h,0dch ;illegal sequence	;4c62
	sbc a,l			;4c65
	or e			;4c66
	or c			;4c67
	and d			;4c68
	ld a,c			;4c69
	sub h			;4c6a
	add a,l			;4c6b
	sub 0ffh		;4c6c
	or e			;4c6e
	rst 38h			;4c6f
	jp z,l7effh		;4c70
	ld c,e			;4c73
	add a,b			;4c74
	or l			;4c75
	rst 38h			;4c76
	jp z,l5e80h		;4c77
	add hl,hl		;4c7a
	add a,b			;4c7b
	jp z,04480h		;4c7c
	ld hl,0ae80h		;4c7f
	ld d,a			;4c82
	cp c			;4c83
	ld de,0278ch		;4c84
	ei			;4c87
	push hl			;4c88
	adc a,079h		;4c89
	and h			;4c8b
	ld (de),a		;4c8c
	ld (0b184h),a		;4c8d
	and l			;4c90
	sbc a,h			;4c91
	and h			;4c92
	or c			;4c93
	rst 38h			;4c94
	ret p			;4c95
	dec a			;4c96
	ld c,c			;4c97
	dec (hl)		;4c98
	add a,h			;4c99
	jp (hl)			;4c9a
	ld (de),a		;4c9b
	dec hl			;4c9c
	or l			;4c9d
	ld d,d			;4c9e
	jp c,l7f62h		;4c9f
	ld b,l			;4ca2
	sub b			;4ca3
	ld e,d			;4ca4
	sbc a,a			;4ca5
	add a,b			;4ca6
	adc a,(hl)		;4ca7
l4ca8h:
	add a,b			;4ca8
	sbc a,b			;4ca9
	sub (hl)		;4caa
	add a,b			;4cab
	jr z,$-38		;4cac
	ld l,h			;4cae
	inc sp			;4caf
	ld c,d			;4cb0
	add a,b			;4cb1
	ld a,h			;4cb2
	ld (0cdfch),a		;4cb3
l4cb6h:
	call p,021a6h		;4cb6
	ld b,l			;4cb9
	add a,c			;4cba
	call pe,0c316h		;4cbb
	out (00eh),a		;4cbe
	jr nz,l4d41h		;4cc0
	sbc a,(hl)		;4cc2
	rst 38h			;4cc3
	rlca			;4cc4
	ld (020b2h),hl		;4cc5
	rst 38h			;4cc8
l4cc9h:
	dec (hl)		;4cc9
	push hl			;4cca
	dec de			;4ccb
	add a,d			;4ccc
	ld a,l			;4ccd
	ld a,(hl)		;4cce
	ret p			;4ccf
	push bc			;4cd0
	adc a,(hl)		;4cd1
	ld a,a			;4cd2
	jp nz,0ff29h		;4cd3
	sub a			;4cd6
	ld a,a			;4cd7
	ret pe			;4cd8
	rst 10h			;4cd9
	call nc,0005dh		;4cda
	call po,0f98eh		;4cdd
	ld a,(hl)		;4ce0
	rst 20h			;4ce1
	add a,e			;4ce2
	ld (de),a		;4ce3
	inc hl			;4ce4
l4ce5h:
	jr nz,l4d08h		;4ce5
	ld (hl),h		;4ce7
	and a			;4ce8
	inc b			;4ce9
	and (hl)		;4cea
	daa			;4ceb
l4cech:
	rst 38h			;4cec
	call po,sub_69eah	;4ced
	add a,d			;4cf0
	sub l			;4cf1
	ld e,c			;4cf2
	ld a,a			;4cf3
	sub 095h		;4cf4
	jr c,$-1		;4cf6
l4cf8h:
	ld a,a			;4cf8
	ei			;4cf9
	add a,h			;4cfa
	cp d			;4cfb
	nop			;4cfc
	add hl,sp		;4cfd
	ret m			;4cfe
	ld a,(hl)		;4cff
	ld a,a			;4d00
	and c			;4d01
	sbc a,(hl)		;4d02
	nop			;4d03
	inc hl			;4d04
	defb 0edh ;next byte illegal after ed	;4d05
	ld h,l			;4d06
	add a,a			;4d07
l4d08h:
	daa			;4d08
	rst 38h			;4d09
	pop hl			;4d0a
	sbc a,(hl)		;4d0b
	push hl			;4d0c
	cp e			;4d0d
	nop			;4d0e
	adc a,(hl)		;4d0f
	rst 38h			;4d10
	sbc a,b			;4d11
	ld (0987fh),hl		;4d12
l4d15h:
	and a			;4d15
	rst 38h			;4d16
	and c			;4d17
	sbc a,c			;4d18
	add a,b			;4d19
	ld l,h			;4d1a
	and l			;4d1b
	sbc a,c			;4d1c
	di			;4d1d
	ld e,a			;4d1e
	jr nc,l4ca8h		;4d1f
	cp d			;4d21
	nop			;4d22
	add hl,bc		;4d23
	rst 0			;4d24
	or 059h			;4d25
	di			;4d27
	ld c,l			;4d28
	and c			;4d29
	res 3,(hl)		;4d2a
	ld l,d			;4d2c
	add a,d			;4d2d
	ld d,e			;4d2e
	ld l,l			;4d2f
	inc hl			;4d30
	add a,l			;4d31
	inc hl			;4d32
	rst 38h			;4d33
	pop hl			;4d34
	ld sp,hl		;4d35
	ld a,a			;4d36
	and a			;4d37
	add a,b			;4d38
	inc hl			;4d39
	call p,08ceah		;4d3a
	adc a,0d5h		;4d3d
	add a,c			;4d3f
	push de			;4d40
l4d41h:
	sub e			;4d41
l4d42h:
	and l			;4d42
	defb 0fdh,0e6h,000h ;illegal sequence	;4d43
	cp 03dh			;4d46
	add hl,de		;4d48
	inc hl			;4d49
	ld a,(hl)		;4d4a
	push af			;4d4b
	ld c,c			;4d4c
	ld a,h			;4d4d
	call 0eca5h		;4d4e
	adc a,e			;4d51
	ld h,h			;4d52
	ld (de),a		;4d53
	inc hl			;4d54
	sbc a,a			;4d55
	rst 38h			;4d56
	add a,l			;4d57
	ld e,c			;4d58
	ld e,c			;4d59
	ex de,hl		;4d5a
	ld a,a			;4d5b
	jp c,08023h		;4d5c
	ld a,h			;4d5f
	ld sp,0e481h		;4d60
	ld b,h			;4d63
	inc sp			;4d64
	di			;4d65
	ld sp,l7fe5h		;4d66
	jr nz,l4cech		;4d69
	ld a,l			;4d6b
	ld h,e			;4d6c
	add a,e			;4d6d
	xor h			;4d6e
	cp 05bh			;4d6f
	ld de,0c9a1h		;4d71
	ld a,(de)		;4d74
	cp h			;4d75
	jr nz,l4dc3h		;4d76
	adc a,e			;4d78
	dec a			;4d79
	ld a,a			;4d7a
	add a,0fdh		;4d7b
	dec h			;4d7d
	ld (0ecffh),a		;4d7e
	ld a,(bc)		;4d81
	inc hl			;4d82
	add hl,hl		;4d83
	ld c,c			;4d84
	ld b,l			;4d85
	add a,c			;4d86
	rst 20h			;4d87
	ld (hl),e		;4d88
	jp 08364h		;4d89
	ld hl,0ed93h		;4d8c
	ld (hl),080h		;4d8f
	push af			;4d91
	ld sp,0936fh		;4d92
	add a,b			;4d95
	sub (hl)		;4d96
	push de			;4d97
	ld h,a			;4d98
	add a,e			;4d99
	rst 0			;4d9a
	cp 01ch			;4d9b
	ld l,(hl)		;4d9d
	and (hl)		;4d9e
	ld c,e			;4d9f
	sbc a,b			;4da0
	dec d			;4da1
	ld b,0fdh		;4da2
	and l			;4da4
	adc a,e			;4da5
	inc sp			;4da6
	ld a,a			;4da7
	or h			;4da8
	ld a,b			;4da9
	rst 38h			;4daa
	ld (hl),e		;4dab
	scf			;4dac
	ld c,l			;4dad
	ld a,a			;4dae
	ld hl,0ab7fh		;4daf
	ld h,e			;4db2
	defb 0edh ;next byte illegal after ed	;4db3
	and a			;4db4
	ld e,c			;4db5
	rst 38h			;4db6
	ld (hl),a		;4db7
	cp (hl)			;4db8
	dec h			;4db9
	inc b			;4dba
	rst 38h			;4dbb
	ld e,(hl)		;4dbc
	cp b			;4dbd
	ld a,b			;4dbe
	inc hl			;4dbf
	and l			;4dc0
	push hl			;4dc1
	sbc a,e			;4dc2
l4dc3h:
	inc a			;4dc3
	ld (0cff2h),a		;4dc4
	set 4,a			;4dc7
	ld a,a			;4dc9
	dec b			;4dca
	ld (0e302h),a		;4dcb
	ld (hl),021h		;4dce
	sub a			;4dd0
	cp 03eh			;4dd1
	djnz l4dedh		;4dd3
	djnz $-9		;4dd5
	call nz,09aaah		;4dd7
	call m,0128eh		;4dda
	ld a,a			;4ddd
	or l			;4dde
	cp 0ddh			;4ddf
	ld c,07fh		;4de1
	or d			;4de3
	add a,e			;4de4
	xor l			;4de5
	ld d,l			;4de6
	ld a,a			;4de7
	ld de,l5585h		;4de8
	adc a,c			;4deb
	ld a,a			;4dec
l4dedh:
	sbc a,e			;4ded
	ld hl,0857fh		;4dee
	sub d			;4df1
	dec hl			;4df2
	add a,d			;4df3
	sbc a,c			;4df4
	ld de,02317h		;4df5
	ld d,h			;4df8
	ei			;4df9
	sub d			;4dfa
	inc hl			;4dfb
	ld sp,0e278h		;4dfc
	ld d,h			;4dff
	ld b,0beh		;4e00
	ret nc			;4e02
	ld a,b			;4e03
	ld l,(hl)		;4e04
	pop de			;4e05
	ld a,a			;4e06
	jr nz,l4e29h		;4e07
	ld (de),a		;4e09
	ld a,a			;4e0a
	ret p			;4e0b
	ld c,l			;4e0c
	sbc a,a			;4e0d
	ld a,a			;4e0e
	ex (sp),hl		;4e0f
	call m,0fdabh		;4e10
	xor d			;4e13
	ld de,0f692h		;4e14
	and e			;4e17
	sub d			;4e18
	rst 38h			;4e19
	inc a			;4e1a
	adc a,b			;4e1b
	djnz l4e40h		;4e1c
	rst 38h			;4e1e
	and 0e7h		;4e1f
	ld a,(006c4h)		;4e21
	ld c,c			;4e24
	rst 38h			;4e25
	ld a,c			;4e26
	xor a			;4e27
	sbc a,c			;4e28
l4e29h:
	add a,e			;4e29
	xor (hl)		;4e2a
	ld a,(hl)		;4e2b
	inc sp			;4e2c
	ld (hl),b		;4e2d
	cp l			;4e2e
	ld c,b			;4e2f
	call nc,0f1e7h		;4e30
	or 0d1h			;4e33
	or 011h			;4e35
	call 09380h		;4e37
	jp (hl)			;4e3a
	ld a,a			;4e3b
	jp nz,l7c80h		;4e3c
	sub d			;4e3f
l4e40h:
	ld (de),a		;4e40
	cp 0c6h			;4e41
	and h			;4e43
	ld h,(hl)		;4e44
	sbc a,h			;4e45
	ld h,l			;4e46
	ld a,d			;4e47
	add a,(hl)		;4e48
	inc de			;4e49
	jr nc,$+1		;4e4a
	ld e,c			;4e4c
	call nc,0eaedh		;4e4d
	ld a,a			;4e50
	rst 38h			;4e51
	ld a,b			;4e52
	jp (hl)			;4e53
	ld a,a			;4e54
	ld c,b			;4e55
	and 06ch		;4e56
	ld de,05484h		;4e58
	add a,c			;4e5b
	inc hl			;4e5c
	ld c,c			;4e5d
	rst 38h			;4e5e
	pop de			;4e5f
	inc hl			;4e60
	add a,b			;4e61
	inc e			;4e62
	jp z,0b9fch		;4e63
	inc sp			;4e66
	ld a,b			;4e67
	sbc a,(hl)		;4e68
	call nc,00578h		;4e69
	adc a,l			;4e6c
	add a,d			;4e6d
	jp po,l7f70h		;4e6e
sub_4e71h:
	sbc a,a			;4e71
	add a,b			;4e72
	inc b			;4e73
	add hl,de		;4e74
	cp 0fbh			;4e75
	ld d,d			;4e77
	jp p,09ed5h		;4e78
	ld l,b			;4e7b
	ld h,(hl)		;4e7c
	ld (hl),a		;4e7d
	and l			;4e7e
	ld l,000h		;4e7f
	rst 0			;4e81
	rst 38h			;4e82
	call nz,0b548h		;4e83
	ld (hl),d		;4e86
	nop			;4e87
	sbc a,b			;4e88
	rst 38h			;4e89
	dec d			;4e8a
	call m,0ff24h		;4e8b
	ld a,c			;4e8e
	jp (hl)			;4e8f
	call po,02b03h		;4e90
	sub h			;4e93
	rst 38h			;4e94
	sbc a,l			;4e95
	rst 20h			;4e96
	cp h			;4e97
	ld a,b			;4e98
	ld a,e			;4e99
	ld a,a			;4e9a
	call m,095fbh		;4e9b
	pop af			;4e9e
	ld d,e			;4e9f
	ld (0c580h),hl		;4ea0
	cp 03ch			;4ea3
	rst 20h			;4ea5
	defb 0fdh,01dh,0a7h ;illegal sequence	;4ea6
	ld d,c			;4ea9
	ld a,h			;4eaa
	add a,b			;4eab
	adc a,b			;4eac
	ld (bc),a		;4ead
	xor l			;4eae
	sbc a,c			;4eaf
	djnz $-86		;4eb0
	or c			;4eb2
	rst 38h			;4eb3
	pop af			;4eb4
	add hl,bc		;4eb5
	ld b,l			;4eb6
	adc a,c			;4eb7
	add a,l			;4eb8
	ei			;4eb9
	and 0fch		;4eba
	or d			;4ebc
	rst 38h			;4ebd
	dec a			;4ebe
	ld (hl),l		;4ebf
	xor l			;4ec0
	inc e			;4ec1
	sub h			;4ec2
	sbc a,(hl)		;4ec3
	defb 0ddh,0c6h,06dh ;illegal sequence	;4ec4
	ret pe			;4ec7
	ld (hl),e		;4ec8
	add a,b			;4ec9
	inc a			;4eca
	rst 20h			;4ecb
	call nc,0192dh		;4ecc
	ld a,a			;4ecf
	ld b,l			;4ed0
	inc bc			;4ed1
	ex (sp),hl		;4ed2
	ld a,a			;4ed3
	defb 0edh ;next byte illegal after ed	;4ed4
	cp 03ch			;4ed5
	pop af			;4ed7
	ld a,a			;4ed8
	ei			;4ed9
	call nc,00362h		;4eda
	call z,00609h		;4edd
	ex (sp),hl		;4ee0
	add a,c			;4ee1
	ld a,a			;4ee2
	jp nz,0a3c3h		;4ee3
	or e			;4ee6
	ld (0b97fh),a		;4ee7
	ld (hl),d		;4eea
	ld d,h			;4eeb
	ret m			;4eec
	ld l,h			;4eed
	inc h			;4eee
	add a,h			;4eef
	inc bc			;4ef0
	adc a,c			;4ef1
	rst 38h			;4ef2
	ld a,h			;4ef3
	inc d			;4ef4
	add a,l			;4ef5
	sub (hl)		;4ef6
	push de			;4ef7
	push hl			;4ef8
	add a,b			;4ef9
	inc e			;4efa
	res 0,b			;4efb
l4efdh:
	adc a,(hl)		;4efd
	ld (hl),c		;4efe
	add a,0ffh		;4eff
	ld (l6720h),a		;4f01
	add a,b			;4f04
l4f05h:
	ld a,l			;4f05
	ld (de),a		;4f06
	sub d			;4f07
	cp 0ceh			;4f08
	ld a,a			;4f0a
	ld (0f811h),hl		;4f0b
	sub l			;4f0e
	add a,b			;4f0f
	ld c,b			;4f10
	ld hl,01080h		;4f11
	cp h			;4f14
	add a,e			;4f15
	dec sp			;4f16
	jr nc,l4f1ch		;4f17
	ld a,a			;4f19
	sub c			;4f1a
	ld a,c			;4f1b
l4f1ch:
	ld (0e2ffh),hl		;4f1c
	ld d,h			;4f1f
	add a,07ah		;4f20
	add a,h			;4f22
	ld a,a			;4f23
	rst 0			;4f24
	rst 38h			;4f25
	jp nz,077b2h		;4f26
	add hl,de		;4f29
	rst 10h			;4f2a
	and h			;4f2b
	add a,a			;4f2c
	rst 8			;4f2d
	ld (de),a		;4f2e
	ld a,a			;4f2f
	ld b,(hl)		;4f30
	ld (0457fh),hl		;4f31
	jp po,02681h		;4f34
	ld l,b			;4f37
	ld a,c			;4f38
	ld a,a			;4f39
	out (0feh),a		;4f3a
	ld (092b1h),a		;4f3c
	cpl			;4f3f
	nop			;4f40
	ld h,a			;4f41
	sub (hl)		;4f42
	add a,b			;4f43
	ld (hl),c		;4f44
	and (hl)		;4f45
	ld c,a			;4f46
	inc hl			;4f47
	nop			;4f48
	ld a,a			;4f49
	sub (hl)		;4f4a
	rst 38h			;4f4b
	dec sp			;4f4c
	sbc a,a			;4f4d
	rst 38h			;4f4e
	inc d			;4f4f
	ld (l78ffh),hl		;4f50
	ld a,e			;4f53
	rst 10h			;4f54
	or (hl)			;4f55
	ld l,b			;4f56
	ld a,c			;4f57
	ld a,a			;4f58
	call c,sub_7f71h	;4f59
	cpl			;4f5c
	inc sp			;4f5d
	and 067h		;4f5e
	ld e,d			;4f60
	ld hl,0389eh		;4f61
	ld h,a			;4f64
	push af			;4f65
	ld sp,0848fh		;4f66
	djnz l4efdh		;4f69
	add a,b			;4f6b
	or e			;4f6c
	jr nz,$-106		;4f6d
	or c			;4f6f
	cp h			;4f70
	rst 38h			;4f71
	rst 10h			;4f72
	ld a,a			;4f73
	inc a			;4f74
	dec bc			;4f75
	ld a,d			;4f76
	ld a,a			;4f77
	ld b,(hl)		;4f78
	rst 38h			;4f79
	defb 0fdh,000h,0f7h ;illegal sequence	;4f7a
	jp 08753h		;4f7d
	ld e,e			;4f80
	ld b,061h		;4f81
	ld e,e			;4f83
	inc b			;4f84
	ld a,a			;4f85
	rst 20h			;4f86
	ld l,c			;4f87
	ret pe			;4f88
	ld l,b			;4f89
	ld (de),a		;4f8a
	and a			;4f8b
	cp 018h			;4f8c
	sub b			;4f8e
	call nc,08f21h		;4f8f
	or c			;4f92
	add a,b			;4f93
	ld hl,(0c402h)		;4f94
	adc a,d			;4f97
	ld c,d			;4f98
	sub c			;4f99
	and e			;4f9a
	call nz,0232eh		;4f9b
	cp e			;4f9e
	rst 38h			;4f9f
	ret m			;4fa0
	and l			;4fa1
	dec sp			;4fa2
	rst 38h			;4fa3
	sbc a,0ffh		;4fa4
	ld a,(0c195h)		;4fa6
	call nc,01939h		;4fa9
	call m,0ffe4h		;4fac
	ld a,e			;4faf
	ld c,e			;4fb0
	add a,h			;4fb1
l4fb2h:
	ld a,c			;4fb2
	ld a,(hl)		;4fb3
	dec b			;4fb4
	cp b			;4fb5
	ret nc			;4fb6
	sub (hl)		;4fb7
	rst 38h			;4fb8
	ld h,l			;4fb9
	add a,d			;4fba
	add a,b			;4fbb
	call m,03022h		;4fbc
	add a,c			;4fbf
	ld c,a			;4fc0
	add hl,de		;4fc1
	cp 071h			;4fc2
	adc a,l			;4fc4
	cp c			;4fc5
	ld (0c70dh),hl		;4fc6
	xor h			;4fc9
	or c			;4fca
	cp 034h			;4fcb
	cp h			;4fcd
	call po,sub_64a0h	;4fce
	rst 38h			;4fd1
	ld (hl),e		;4fd2
	rst 38h			;4fd3
	ld e,h			;4fd4
	rst 0			;4fd5
	rst 38h			;4fd6
	inc (hl)		;4fd7
	rst 38h			;4fd8
	rst 20h			;4fd9
	rst 38h			;4fda
	inc a			;4fdb
	inc c			;4fdc
	sub c			;4fdd
	dec hl			;4fde
	ld hl,0157fh		;4fdf
	sub d			;4fe2
	or d			;4fe3
	add hl,hl		;4fe4
	sbc a,00fh		;4fe5
	add hl,hl		;4fe7
	ld (de),a		;4fe8
	cp c			;4fe9
	ld a,a			;4fea
	adc a,(hl)		;4feb
	adc a,c			;4fec
	or a			;4fed
	push de			;4fee
	ld (hl),l		;4fef
	ld (de),a		;4ff0
	ld a,a			;4ff1
	call nz,08cd5h		;4ff2
	jr nz,l5046h		;4ff5
	adc a,(hl)		;4ff7
	add a,c			;4ff8
	dec e			;4ff9
	add hl,bc		;4ffa
	ld a,a			;4ffb
	ld h,d			;4ffc
	call pe,08eceh		;4ffd
	ld a,e			;5000
	sub d			;5001
	ld (0b6e9h),a		;5002
	jr z,l4fb2h		;5005
	ld h,a			;5007
	and e			;5008
	xor h			;5009
	rst 38h			;500a
	ld (hl),e		;500b
	rst 38h			;500c
	ld a,l			;500d
	ld b,a			;500e
	rst 38h			;500f
	ld d,(hl)		;5010
	rst 38h			;5011
	ex (sp),hl		;5012
	dec a			;5013
	call nz,l78ffh		;5014
	inc hl			;5017
	ld (0e7ffh),a		;5018
	sub l			;501b
	ex (sp),hl		;501c
	adc a,l			;501d
	cp l			;501e
	sub d			;501f
	pop hl			;5020
	ld d,b			;5021
l5022h:
	sbc a,b			;5022
l5023h:
	dec b			;5023
	inc hl			;5024
	ld a,a			;5025
	ld de,0e0a4h		;5026
	sbc a,l			;5029
l502ah:
	add a,l			;502a
	and (hl)		;502b
	cp 046h			;502c
	ld hl,08808h		;502e
	ld a,a			;5031
	rst 38h			;5032
	sub d			;5033
	ld e,l			;5034
	xor h			;5035
	or (hl)			;5036
	ld (bc),a		;5037
	ld c,b			;5038
	ld c,d			;5039
	add a,b			;503a
	ld b,a			;503b
	rst 38h			;503c
	push bc			;503d
	rst 38h			;503e
	adc a,(hl)		;503f
	ld l,l			;5040
	add a,l			;5041
	add a,d			;5042
	and 0ffh		;5043
	ccf			;5045
l5046h:
	ld b,000h		;5046
	dec (hl)		;5048
	sub b			;5049
	inc bc			;504a
	jp c,l5070h		;504b
	ld bc,0d132h		;504e
	add a,d			;5051
	ld bc,0dce6h		;5052
	sub h			;5055
	nop			;5056
	add hl,bc		;5057
	cp 0cbh			;5058
	djnz l502ah		;505a
	ld c,c			;505c
	cp 04fh			;505d
	ld a,a			;505f
	ld a,(bc)		;5060
	ret z			;5061
	xor c			;5062
	add a,b			;5063
	scf			;5064
	xor h			;5065
	ld h,e			;5066
	rst 38h			;5067
	call po,0ffd7h		;5068
	ld e,d			;506b
l506ch:
	ld a,a			;506c
	add a,(hl)		;506d
	ld e,b			;506e
	adc a,a			;506f
l5070h:
	rst 38h			;5070
	ret nz			;5071
	and l			;5072
	nop			;5073
l5074h:
	xor 038h		;5074
	ld a,a			;5076
	rst 0			;5077
	ld l,b			;5078
	ld (0157fh),a		;5079
	ret p			;507c
	call z,0acf0h		;507d
	ld a,a			;5080
	add a,b			;5081
	ld c,d			;5082
	ld bc,0dffeh		;5083
	adc a,a			;5086
	ld d,h			;5087
	add a,b			;5088
	jp l4919h		;5089
	ld d,c			;508c
	sub c			;508d
	rst 38h			;508e
	pop af			;508f
	ld (hl),e		;5090
	rst 38h			;5091
	sbc a,a			;5092
	ld a,a			;5093
	jr c,l5096h		;5094
l5096h:
	sub d			;5096
	adc a,a			;5097
	rst 38h			;5098
	ret nz			;5099
	dec hl			;509a
	sbc a,c			;509b
	sub e			;509c
	jp p,0195eh		;509d
	ld a,a			;50a0
	jr c,l5023h		;50a1
	ex (sp),hl		;50a3
	ld l,(hl)		;50a4
	ld (01508h),a		;50a5
	and b			;50a8
	or e			;50a9
	add hl,hl		;50aa
	xor d			;50ab
	add a,b			;50ac
	ld b,l			;50ad
	inc bc			;50ae
	xor c			;50af
	daa			;50b0
	xor l			;50b1
	ld l,l			;50b2
	rst 38h			;50b3
	ld a,h			;50b4
	ld e,(hl)		;50b5
	rst 38h			;50b6
	ex de,hl		;50b7
	ld a,a			;50b8
	pop de			;50b9
	sub h			;50ba
	sub d			;50bb
	rst 38h			;50bc
	rra			;50bd
	ld a,d			;50be
	sub b			;50bf
	jp nz,00035h		;50c0
	rlca			;50c3
	ld e,a			;50c4
	rst 10h			;50c5
	ld d,0fah		;50c6
	sbc a,d			;50c8
	add a,b			;50c9
	call po,0ad21h		;50ca
	sbc a,d			;50cd
	adc a,a			;50ce
	defb 0fdh,00dh,08eh ;illegal sequence	;50cf
	jp c,01d9dh		;50d2
	ld sp,l5f7fh		;50d5
	rst 38h			;50d8
	jp 0b87ah		;50d9
	ld (hl),c		;50dc
	ld b,l			;50dd
	push af			;50de
	ld a,a			;50df
	ld b,a			;50e0
	ld c,c			;50e1
	rst 38h			;50e2
	defb 0ddh,0edh,069h ;illegal sequence	;50e3
	ret p			;50e6
	ld b,l			;50e7
	ret po			;50e8
	ld l,l			;50e9
	ld l,d			;50ea
	adc a,e			;50eb
	ld a,c			;50ec
	defb 0edh ;next byte illegal after ed	;50ed
	dec sp			;50ee
	add a,b			;50ef
	adc a,036h		;50f0
	ld a,a			;50f2
	rrca			;50f3
	ld h,e			;50f4
	ld a,(hl)		;50f5
	sub c			;50f6
	adc a,(hl)		;50f7
	ld a,h			;50f8
	ld d,021h		;50f9
	ld a,a			;50fb
	ld a,h			;50fc
	ld l,e			;50fd
	ld e,012h		;50fe
	add a,h			;5100
	ld l,h			;5101
	rst 38h			;5102
	or 078h			;5103
	ld b,h			;5105
	nop			;5106
	set 7,a			;5107
	adc a,l			;5109
	add a,h			;510a
	ld sp,01fffh		;510b
	ld d,e			;510e
	inc sp			;510f
	cp 0d2h			;5110
	inc bc			;5112
	pop af			;5113
	ld a,a			;5114
	ld a,c			;5115
	ld (de),a		;5116
	ld a,a			;5117
	and (hl)		;5118
	sub d			;5119
	ld a,a			;511a
	djnz l519bh		;511b
	dec e			;511d
	add hl,de		;511e
	ld de,0f22dh		;511f
	call m,00b6fh		;5122
	ld a,a			;5125
	ret z			;5126
	ld e,c			;5127
	push af			;5128
	ld e,b			;5129
	ret p			;512a
	ld a,a			;512b
	and h			;512c
	add a,d			;512d
	sub d			;512e
	adc a,024h		;512f
	ld a,h			;5131
	or d			;5132
	ld a,a			;5133
	sbc a,l			;5134
	rst 18h			;5135
	call z,0f1e1h		;5136
	rst 38h			;5139
	ld e,c			;513a
	ex af,af'		;513b
	dec a			;513c
	djnz l51beh		;513d
	xor l			;513f
	sbc a,c			;5140
	ld hl,(l6bech)		;5141
	add hl,de		;5144
	adc a,(hl)		;5145
	ld d,c			;5146
	sub b			;5147
	call nz,0acfbh		;5148
	rst 38h			;514b
	ld a,(hl)		;514c
	inc b			;514d
	or 071h			;514e
	dec b			;5150
	cp b			;5151
	sub h			;5152
	ld h,a			;5153
	add hl,bc		;5154
	ld a,a			;5155
	out (0f9h),a		;5156
	dec de			;5158
	rst 18h			;5159
	ld e,e			;515a
	ld a,a			;515b
	rst 0			;515c
	defb 0ddh,027h,07fh ;illegal sequence	;515d
	ld (hl),e		;5160
	pop af			;5161
	out (092h),a		;5162
	ret m			;5164
	or d			;5165
l5166h:
	call pe,03df2h		;5166
	ret p			;5169
	ld a,a			;516a
	and l			;516b
	ld a,(de)		;516c
	ret			;516d
	add hl,hl		;516e
	rst 38h			;516f
	sbc a,a			;5170
	ld a,a			;5171
	ret nz			;5172
	ld a,b			;5173
	sbc a,c			;5174
	dec (hl)		;5175
	call m,0db7fh		;5176
	ld a,(hl)		;5179
	rst 28h			;517a
	ld l,(hl)		;517b
	rrca			;517c
	nop			;517d
	call nc,07f3dh		;517e
	jp (hl)			;5181
	ei			;5182
	adc a,d			;5183
	inc b			;5184
	cp a			;5185
	ld l,c			;5186
	call m,00066h		;5187
	sbc a,l			;518a
	xor e			;518b
	adc a,(hl)		;518c
	adc a,h			;518d
	cp (hl)			;518e
	ld a,a			;518f
	dec bc			;5190
	jp m,0006bh		;5191
	ld d,l			;5194
	ld d,h			;5195
	add a,d			;5196
	and a			;5197
	sbc a,c			;5198
	adc a,b			;5199
	nop			;519a
l519bh:
	ld l,a			;519b
	adc a,c			;519c
	ld a,a			;519d
	sbc a,e			;519e
	ld a,(hl)		;519f
	add a,0d4h		;51a0
	ld (hl),a		;51a2
	add a,(hl)		;51a3
	ld sp,07f32h		;51a4
	defb 0edh ;next byte illegal after ed	;51a7
	rst 20h			;51a8
	sbc a,d			;51a9
	sub c			;51aa
	ld c,b			;51ab
	ld (0310ch),a		;51ac
	ret m			;51af
	defb 0ddh,09dh ;sbc a,ixl	;51b0
	cp c			;51b2
	nop			;51b3
	sub h			;51b4
	call 09947h		;51b5
	rst 38h			;51b8
	adc a,094h		;51b9
	adc a,(hl)		;51bb
	ei			;51bc
	and l			;51bd
l51beh:
	rst 38h			;51be
l51bfh:
	jp 0970eh		;51bf
	sub d			;51c2
	ld a,a			;51c3
	ret			;51c4
	ld a,(hl)		;51c5
	ex de,hl		;51c6
	ld a,a			;51c7
	xor d			;51c8
	ld (de),a		;51c9
	ret p			;51ca
	ret			;51cb
	cp 0f3h			;51cc
	ld c,(hl)		;51ce
	sub b			;51cf
	defb 0edh ;next byte illegal after ed	;51d0
	jr nc,l5166h		;51d1
	inc c			;51d3
	add hl,sp		;51d4
	sub e			;51d5
l51d6h:
	rst 18h			;51d6
	ld a,h			;51d7
	xor c			;51d8
	jp pe,02780h		;51d9
	ld hl,0957fh		;51dc
	rst 38h			;51df
	di			;51e0
	ld a,a			;51e1
	xor a			;51e2
	ld c,c			;51e3
	ld e,a			;51e4
	ld a,c			;51e5
	adc a,e			;51e6
	ld h,(hl)		;51e7
	adc a,(hl)		;51e8
	ld d,a			;51e9
	ld a,a			;51ea
	call po,0fc97h		;51eb
	ld c,b			;51ee
	rst 38h			;51ef
	ex de,hl		;51f0
	jp m,03043h		;51f1
	ld (de),a		;51f4
	ld a,a			;51f5
	add a,0ffh		;51f6
	jp nc,0d6bbh		;51f8
	ret m			;51fb
	ld d,c			;51fc
	djnz $-10		;51fd
l51ffh:
	rla			;51ff
	nop			;5200
	adc a,l			;5201
	jr c,$+1		;5202
	ld a,(hl)		;5204
	ld e,000h		;5205
	ld c,c			;5207
	ld c,0deh		;5208
	ld a,b			;520a
	ld e,055h		;520b
	nop			;520d
	rrca			;520e
	sbc a,c			;520f
	ld a,a			;5210
	adc a,e			;5211
	ld a,(hl)		;5212
	rst 0			;5213
	djnz l51bfh		;5214
	rst 38h			;5216
	cp e			;5217
	call c,01007h		;5218
	inc sp			;521b
	ld bc,0957fh		;521c
	rst 38h			;521f
	add hl,de		;5220
l5221h:
	ld a,a			;5221
	ret m			;5222
	ld hl,(l4721h)		;5223
	inc bc			;5226
	add a,b			;5227
	sbc a,h			;5228
	and (hl)		;5229
	ld d,c			;522a
	rst 38h			;522b
	cp b			;522c
	rst 38h			;522d
	adc a,004h		;522e
	ld b,h			;5230
	sbc a,l			;5231
	jr nz,l51d6h		;5232
	inc b			;5234
	rst 38h			;5235
	ret m			;5236
	ld a,a			;5237
	add hl,de		;5238
	ld b,h			;5239
	add a,b			;523a
	call z,0f08bh		;523b
	add hl,sp		;523e
	sbc a,a			;523f
	ld c,031h		;5240
	ld a,(hl)		;5242
	cpl			;5243
	ld de,01083h		;5244
	in a,(088h)		;5247
	ld a,a			;5249
	ld bc,09503h		;524a
	add a,b			;524d
	ld d,a			;524e
	ld hl,08cbah		;524f
	ld sp,hl		;5252
	xor (hl)		;5253
	ld (hl),d		;5254
	ld l,d			;5255
	rst 30h			;5256
	ld a,c			;5257
	nop			;5258
	ld e,e			;5259
	rst 38h			;525a
	rrca			;525b
	ld bc,0b1ddh		;525c
	ld a,a			;525f
	ld (bc),a		;5260
	rst 38h			;5261
	jp z,03e20h		;5262
	ld (de),a		;5265
	or b			;5266
	ld a,a			;5267
	daa			;5268
	adc a,b			;5269
	nop			;526a
	adc a,h			;526b
	ld a,a			;526c
	ld (0b93eh),hl		;526d
l5270h:
	ld sp,03f7eh		;5270
	ld (de),a		;5273
	cpl			;5274
	in a,(0c6h)		;5275
	ld hl,013edh		;5277
	add a,l			;527a
	ld h,(hl)		;527b
	add a,(hl)		;527c
	di			;527d
	sbc a,d			;527e
	add a,d			;527f
	jr nz,l5270h		;5280
	ld (hl),e		;5282
	ld (hl),c		;5283
	adc a,c			;5284
	add a,c			;5285
	pop af			;5286
	cp h			;5287
	or b			;5288
	push de			;5289
	add a,e			;528a
	adc a,a			;528b
	rst 38h			;528c
	inc d			;528d
	ld (l7cffh),a		;528e
	jp nc,0d685h		;5291
	add a,d			;5294
	dec d			;5295
	sbc a,c			;5296
	ld b,a			;5297
	rst 38h			;5298
	cp a			;5299
	ld a,(hl)		;529a
	ld e,d			;529b
	push de			;529c
	defb 0ddh,0d4h,064h ;illegal sequence	;529d
	ret nc			;52a0
	push af			;52a1
	rst 38h			;52a2
	ld (hl),08fh		;52a3
	jp z,0fe12h		;52a5
	rst 28h			;52a8
	nop			;52a9
	call pe,0ff8fh		;52aa
	pop bc			;52ad
	sub (hl)		;52ae
	rst 38h			;52af
	ld (hl),d		;52b0
	add a,b			;52b1
	jp po,0ff7fh		;52b2
	inc a			;52b5
	call c,sub_7e93h	;52b6
	ld (hl),a		;52b9
	ld h,h			;52ba
	ret c			;52bb
	dec e			;52bc
	dec (hl)		;52bd
	add hl,de		;52be
	ld a,(hl)		;52bf
	ld bc,l54ffh		;52c0
	add a,b			;52c3
	adc a,a			;52c4
	ld (bc),a		;52c5
	ld a,a			;52c6
	ld a,(0b62bh)		;52c7
	ld a,l			;52ca
	ld h,e			;52cb
	ret z			;52cc
	ld a,(08f7fh)		;52cd
	rst 38h			;52d0
	ret nz			;52d1
	rst 18h			;52d2
	sub b			;52d3
	jr c,$+1		;52d4
	jp p,0c3c1h		;52d6
	ld (0e57dh),a		;52d9
	ld h,b			;52dc
	ld e,a			;52dd
	and 019h		;52de
	rst 38h			;52e0
	add a,0ech		;52e1
	and l			;52e3
	ld bc,05a81h		;52e4
	add hl,de		;52e7
	rst 38h			;52e8
	sbc a,e			;52e9
	add hl,sp		;52ea
	and e			;52eb
	di			;52ec
	sub e			;52ed
	sbc a,h			;52ee
	rst 38h			;52ef
	ld e,b			;52f0
	adc a,a			;52f1
	rst 38h			;52f2
	push bc			;52f3
	inc bc			;52f4
	ld e,b			;52f5
	adc a,b			;52f6
	sub l			;52f7
	sub l			;52f8
	sub h			;52f9
	ld b,l			;52fa
	ld (bc),a		;52fb
	add a,h			;52fc
	ld c,c			;52fd
	rst 38h			;52fe
	ld a,c			;52ff
	ld l,h			;5300
	ld l,l			;5301
	ret po			;5302
	cp e			;5303
	ld l,d			;5304
	ret nc			;5305
	ld b,h			;5306
l5307h:
	ret c			;5307
	djnz l5307h		;5308
	ei			;530a
	jp z,08103h		;530b
	ret z			;530e
	sbc a,h			;530f
	pop af			;5310
	call nz,0f593h		;5311
	add a,b			;5314
	pop af			;5315
	ld a,(hl)		;5316
	xor 0aah		;5317
	inc hl			;5319
	rst 38h			;531a
	pop af			;531b
	ld h,h			;531c
	or 0f1h			;531d
	ld a,a			;531f
	rst 28h			;5320
	rst 38h			;5321
	and e			;5322
	nop			;5323
	rst 0			;5324
	add a,l			;5325
	or 07fh			;5326
	ld c,d			;5328
	ld (de),a		;5329
	add a,b			;532a
	or 070h			;532b
	sub e			;532d
	sub h			;532e
	ld (hl),b		;532f
	ld de,0bdfch		;5330
	rrca			;5333
	ld d,c			;5334
	and (hl)		;5335
	sbc a,(hl)		;5336
	call pe,01123h		;5337
	rst 38h			;533a
	pop af			;533b
	or (hl)			;533c
	adc a,h			;533d
	pop af			;533e
	ld a,a			;533f
	sub a			;5340
	jp nz,0d029h		;5341
	push af			;5344
	di			;5345
	ld a,a			;5346
	cp h			;5347
	cp 0c9h			;5348
	ld l,(hl)		;534a
	add a,b			;534b
	ld c,(hl)		;534c
	ld a,a			;534d
	di			;534e
	ld (hl),b		;534f
	adc a,(hl)		;5350
	call c,08da3h		;5351
	scf			;5354
	sbc a,l			;5355
	jp z,03fffh		;5356
	ld b,07fh		;5359
	ld c,098h		;535b
	sbc a,b			;535d
l535eh:
	sub h			;535e
	ld c,b			;535f
	ld (bc),a		;5360
	inc hl			;5361
	rst 38h			;5362
	jp 0e37dh		;5363
	jp pe,l4713h		;5366
	call 0607fh		;5369
	sub d			;536c
	add a,b			;536d
	cp 03ch			;536e
	ld a,c			;5370
	ld (hl),b		;5371
	or (hl)			;5372
	xor c			;5373
	ld h,e			;5374
	adc a,l			;5375
	pop bc			;5376
	ld de,0dcffh		;5377
	ld a,(de)		;537a
	inc hl			;537b
	dec hl			;537c
	rst 38h			;537d
	and d			;537e
	ld (de),a		;537f
l5380h:
	or d			;5380
sub_5381h:
	ld (0cd30h),a		;5381
	defb 0ddh,0afh,0ffh ;illegal sequence	;5384
	adc a,(hl)		;5387
	rst 38h			;5388
	ld a,(hl)		;5389
	ld a,(bc)		;538a
	ld b,d			;538b
	adc a,087h		;538c
	ld de,0c07eh		;538e
	nop			;5391
	push af			;5392
	ld a,a			;5393
	sbc a,a			;5394
	xor b			;5395
	add hl,bc		;5396
	rst 28h			;5397
	ld l,d			;5398
	ld d,08bh		;5399
	sbc a,0feh		;539b
	ld (hl),d		;539d
	adc a,h			;539e
	ld a,d			;539f
	call nz,0928ah		;53a0
	xor c			;53a3
	dec c			;53a4
	ld a,(hl)		;53a5
	add hl,sp		;53a6
	ld a,a			;53a7
	ld a,(bc)		;53a8
	ld c,b			;53a9
	rst 38h			;53aa
	sub d			;53ab
	call m,002ceh		;53ac
	dec d			;53af
	ld c,c			;53b0
	rst 38h			;53b1
	adc a,07eh		;53b2
	ei			;53b4
	cp a			;53b5
	ld (hl),h		;53b6
	nop			;53b7
	push hl			;53b8
	or e			;53b9
	inc de			;53ba
	cp h			;53bb
	ld a,a			;53bc
	cp (hl)			;53bd
	ld (bc),a		;53be
	ld a,a			;53bf
	ld c,070h		;53c0
	ld l,h			;53c2
	ld a,(hl)		;53c3
l53c4h:
	ld a,l			;53c4
	jp c,08d9ch		;53c5
	ld a,(l7eb2h)		;53c8
	ld a,l			;53cb
	inc sp			;53cc
	ld b,a			;53cd
	add hl,bc		;53ce
	rst 38h			;53cf
	pop hl			;53d0
	sbc a,0fdh		;53d1
	jp m,0a396h		;53d3
	ld b,h			;53d6
	rst 38h			;53d7
	sbc a,(hl)		;53d8
	ld a,(hl)		;53d9
	ld h,e			;53da
	add a,b			;53db
	jp nz,0b8c9h		;53dc
	jp po,0ff13h		;53df
	sbc a,h			;53e2
	dec h			;53e3
	ret po			;53e4
	adc a,d			;53e5
	xor 0f1h		;53e6
	sub 070h		;53e8
	ld hl,0d57eh		;53ea
	ld a,l			;53ed
	dec h			;53ee
l53efh:
	sub (hl)		;53ef
	ld a,(de)		;53f0
	inc a			;53f1
	ld de,l7edbh		;53f2
	xor c			;53f5
	rst 0			;53f6
	add hl,de		;53f7
	ld a,a			;53f8
	ret po			;53f9
	ld sp,hl		;53fa
	nop			;53fb
	ld b,a			;53fc
	rst 38h			;53fd
l53feh:
	ld sp,0dccfh		;53fe
	add a,c			;5401
	push af			;5402
	rst 28h			;5403
	add hl,hl		;5404
	pop hl			;5405
	ld e,l			;5406
	ld (hl),b		;5407
	ld c,030h		;5408
	jp pe,0a77fh		;540a
	call c,01a64h		;540d
	ld (de),a		;5410
l5411h:
	defb 0edh ;next byte illegal after ed	;5411
	xor (hl)		;5412
	ld a,(hl)		;5413
	ld e,(hl)		;5414
	sub (hl)		;5415
	ld d,h			;5416
	ld h,l			;5417
	inc b			;5418
	adc a,e			;5419
	xor (hl)		;541a
	ld a,(hl)		;541b
	and a			;541c
	ld de,02918h		;541d
	ld a,a			;5420
	ret po			;5421
	rst 28h			;5422
	jp m,0852ch		;5423
	rst 38h			;5426
	pop af			;5427
	adc a,(hl)		;5428
	rst 8			;5429
	push hl			;542a
	rst 8			;542b
	ld h,e			;542c
	sub b			;542d
	add hl,hl		;542e
	dec (hl)		;542f
	jp c,0135dh		;5430
	push hl			;5433
	ld l,l			;5434
	ld (bc),a		;5435
	ld l,e			;5436
	ld d,d			;5437
	rst 28h			;5438
	cp h			;5439
	add hl,de		;543a
	ld a,a			;543b
	xor b			;543c
	ld h,a			;543d
	xor 0dch		;543e
	ld a,(hl)		;5440
	ret c			;5441
	jr c,l53c4h		;5442
	add a,021h		;5444
l5446h:
	ld a,(l7ee5h)		;5446
	dec c			;5449
	ld a,a			;544a
	ret m			;544b
	ld e,d			;544c
	rst 38h			;544d
	ex (sp),hl		;544e
	rst 38h			;544f
	ld b,(ix-016h)		;5450
	rst 0			;5453
	rst 8			;5454
	dec d			;5455
	ret po			;5456
	call z,0f3dbh		;5457
	inc de			;545a
	cp h			;545b
	ld l,l			;545c
	rst 38h			;545d
	dec iy			;545e
	ld hl,0f291h		;5460
	sub l			;5463
	push af			;5464
	pop hl			;5465
	ld a,(hl)		;5466
	ld (l4cf8h),hl		;5467
	defb 0edh ;next byte illegal after ed	;546a
	sbc a,(hl)		;546b
	ld a,(hl)		;546c
	push bc			;546d
	add a,(hl)		;546e
	cpl			;546f
	ld a,a			;5470
	pop hl			;5471
	ld a,a			;5472
	ei			;5473
	inc l			;5474
	ld d,h			;5475
	ld a,a			;5476
	and e			;5477
	jp pe,l5221h		;5478
	sbc a,c			;547b
	push bc			;547c
	add a,050h		;547d
	or l			;547f
	nop			;5480
	add a,c			;5481
	adc a,d			;5482
	call c,0136bh		;5483
	add hl,sp		;5486
	ld l,l			;5487
	adc a,00bh		;5488
	ei			;548a
	ld (hl),l		;548b
	ret z			;548c
	jr nz,l5411h		;548d
sub_548fh:
	rst 0			;548f
	inc bc			;5490
	ld (hl),b		;5491
	add hl,hl		;5492
	ld (0e28bh),hl		;5493
	nop			;5496
	adc a,(hl)		;5497
	adc a,l			;5498
	sub a			;5499
	add hl,hl		;549a
	rst 38h			;549b
	rst 20h			;549c
	sbc a,(hl)		;549d
	ld c,b			;549e
	ld sp,l7ffah		;549f
	ld l,l			;54a2
	nop			;54a3
	rst 18h			;54a4
	jr c,l5526h		;54a5
	adc a,a			;54a7
	rst 8			;54a8
	dec de			;54a9
	ld c,e			;54aa
	ld (hl),b		;54ab
	ld d,h			;54ac
	ld de,0c6d0h		;54ad
	inc de			;54b0
	ld (hl),c		;54b1
	ld l,0feh		;54b2
	add hl,sp		;54b4
	ld a,a			;54b5
	sbc a,d			;54b6
	and l			;54b7
	and 001h		;54b8
	halt			;54ba
l54bbh:
	inc de			;54bb
	sbc a,e			;54bc
	ld h,c			;54bd
	in a,(0fdh)		;54be
	inc l			;54c0
	ld e,b			;54c1
	nop			;54c2
	ld (hl),a		;54c3
	ld hl,0e98bh		;54c4
	ld b,d			;54c7
	ld a,(0287fh)		;54c8
	ld (bc),a		;54cb
	dec hl			;54cc
	inc c			;54cd
	ld a,a			;54ce
	ld bc,060b2h		;54cf
	djnz l5553h		;54d2
	ld (031b0h),hl		;54d4
	sub a			;54d7
	rst 38h			;54d8
	sbc a,(hl)		;54d9
	defb 0fdh,0b7h,07fh ;illegal sequence	;54da
	xor b			;54dd
	rst 8			;54de
l54dfh:
	di			;54df
	and l			;54e0
	rst 38h			;54e1
	and 04bh		;54e2
	adc a,a			;54e4
	sub d			;54e5
	adc a,(hl)		;54e6
	ld a,c			;54e7
	xor h			;54e8
	jp c,0fadfh		;54e9
	jr z,$-94		;54ec
	call nc,0ac12h		;54ee
	ld d,a			;54f1
	ld (hl),e		;54f2
l54f3h:
	sub a			;54f3
	ld l,(hl)		;54f4
	ld (hl),c		;54f5
	or b			;54f6
	djnz $+57		;54f7
	ld hl,l4602h		;54f9
	djnz l54f3h		;54fc
	rst 0			;54fe
l54ffh:
	rst 38h			;54ff
l5500h:
	jp po,0ffd3h		;5500
	inc l			;5503
	adc a,c			;5504
	ld a,a			;5505
	ld c,e			;5506
	ld (l51ffh),hl		;5507
l550ah:
	rst 8			;550a
	push hl			;550b
	jp m,l466ch		;550c
	add a,c			;550f
	jp p,025dfh		;5510
sub_5513h:
	ld (bc),a		;5513
	defb 0edh ;next byte illegal after ed	;5514
	sbc a,d			;5515
	jr l5597h		;5516
	rst 20h			;5518
	and h			;5519
	ld c,c			;551a
	rst 28h			;551b
	cp h			;551c
	xor e			;551d
	xor l			;551e
	inc hl			;551f
	sub h			;5520
	cpl			;5521
	or (hl)			;5522
	adc a,b			;5523
	adc a,b			;5524
	rst 8			;5525
l5526h:
	sbc a,l			;5526
	ld b,h			;5527
	ld hl,0caf3h		;5528
	jr nz,l54dfh		;552b
	ret c			;552d
	rst 38h			;552e
	call m,08629h		;552f
	ld (hl),b		;5532
l5533h:
	ld (hl),l		;5533
	sub d			;5534
	ld a,a			;5535
	rst 8			;5536
	ld e,068h		;5537
	add hl,hl		;5539
	ret p			;553a
	call z,sub_645dh	;553b
	ld hl,0ff53h		;553e
	rst 30h			;5541
sub_5542h:
	adc a,d			;5542
	ld d,0f9h		;5543
	ret m			;5545
	rst 30h			;5546
	ld a,a			;5547
	jr z,l559ch		;5548
	sbc a,023h		;554a
	ld (bc),a		;554c
	add a,b			;554d
	add a,h			;554e
	ld sp,0303eh		;554f
	xor e			;5552
l5553h:
	add a,b			;5553
	ccf			;5554
	ld de,08022h		;5555
	or c			;5558
	rst 38h			;5559
	ret m			;555a
	ld d,d			;555b
	cp 0e0h			;555c
	ld (l7feah),a		;555e
	rst 8			;5561
	dec a			;5562
	dec hl			;5563
	rst 38h			;5564
	sbc a,d			;5565
	dec sp			;5566
	add a,h			;5567
	halt			;5568
	rst 38h			;5569
	ld a,c			;556a
	xor a			;556b
	rla			;556c
	ld a,a			;556d
	ld b,b			;556e
	ld c,(hl)		;556f
	rst 18h			;5570
	ret c			;5571
	and h			;5572
	call z,sub_4e71h	;5573
l5576h:
	ld (0e1a9h),hl		;5576
	ld a,020h		;5579
	ld (bc),a		;557b
	ccf			;557c
	ld b,(hl)		;557d
	adc a,(hl)		;557e
	ld b,l			;557f
l5580h:
	add a,b			;5580
	cp a			;5581
	ld d,h			;5582
	rst 38h			;5583
	ld a,(hl)		;5584
l5585h:
	dec c			;5585
	defb 0fdh,032h,054h ;illegal sequence	;5586
	inc a			;5589
	sub h			;558a
	sub d			;558b
	ld a,a			;558c
	and e			;558d
	rst 8			;558e
	push bc			;558f
	add hl,hl		;5590
	ld a,a			;5591
	jp 01323h		;5592
sub_5595h:
	dec (hl)		;5595
	rst 38h			;5596
l5597h:
	and (hl)		;5597
	inc sp			;5598
	ld a,a			;5599
	dec a			;559a
	add hl,sp		;559b
l559ch:
	ld a,a			;559c
	ex (sp),hl		;559d
	and e			;559e
	sub l			;559f
	inc bc			;55a0
	cp b			;55a1
	ld l,07fh		;55a2
	ld (hl),c		;55a4
	ld sp,l4d15h		;55a5
	ld b,d			;55a8
	jr nz,$+1		;55a9
	dec e			;55ab
	ld de,0f8ffh		;55ac
	dec d			;55af
	rst 38h			;55b0
l55b1h:
	jp (ix)			;55b1
	inc hl			;55b3
	add hl,de		;55b4
	rst 38h			;55b5
	cp b			;55b6
	adc a,a			;55b7
	rst 8			;55b8
	ccf			;55b9
	ret z			;55ba
	ex (sp),hl		;55bb
	push de			;55bc
	rla			;55bd
	ld b,e			;55be
	ld a,c			;55bf
	ld a,a			;55c0
	adc a,d			;55c1
	sub (hl)		;55c2
	adc a,b			;55c3
	exx			;55c4
	pop af			;55c5
	ld a,a			;55c6
	jp pe,sub_7f71h		;55c7
	ret			;55ca
	ld (hl),c		;55cb
	cp c			;55cc
	sub c			;55cd
	ld de,0cc8eh		;55ce
	jp (hl)			;55d1
	ld d,h			;55d2
	ld a,(bc)		;55d3
	xor c			;55d4
	ld h,e			;55d5
	nop			;55d6
	nop			;55d7
	exx			;55d8
	ld c,0ffh		;55d9
	rst 28h			;55db
	inc c			;55dc
	jp m,l7f99h		;55dd
	call m,0b251h		;55e0
	add hl,hl		;55e3
	ld a,a			;55e4
	add a,d			;55e5
	ld (de),a		;55e6
	cp c			;55e7
	ld hl,03dcfh		;55e8
	ld sp,0338bh		;55eb
	nop			;55ee
	ld a,a			;55ef
	adc a,h			;55f0
	rst 38h			;55f1
	call pe,01212h		;55f2
	ld sp,hl		;55f5
	ld a,a			;55f6
	ld l,c			;55f7
	inc hl			;55f8
	push af			;55f9
	ld c,e			;55fa
	ld (hl),c		;55fb
	ld a,a			;55fc
	cp c			;55fd
	add a,a			;55fe
	ld (08ac2h),hl		;55ff
	adc a,(hl)		;5602
	xor c			;5603
	ld e,l			;5604
	ld l,c			;5605
	ret m			;5606
	and 0b6h		;5607
	ei			;5609
	ld de,0ff99h		;560a
	ex (sp),hl		;560d
	rst 8			;560e
	ld e,058h		;560f
	djnz l5623h		;5611
	and l			;5613
	ei			;5614
	ex (sp),hl		;5615
	inc de			;5616
	ld l,087h		;5617
	sub c			;5619
sub_561ah:
	ret p			;561a
	rst 20h			;561b
	ld b,b			;561c
	xor e			;561d
	ld de,03771h		;561e
	add a,d			;5621
	inc hl			;5622
l5623h:
	and e			;5623
	add hl,hl		;5624
	or (hl)			;5625
	inc d			;5626
	jr nz,$+11		;5627
	ld hl,(08d21h)		;5629
	or d			;562c
	call 03fc2h		;562d
	ld (l7f09h),hl		;5630
	ld d,07eh		;5633
	ld b,a			;5635
	ld (094ffh),a		;5636
	rst 8			;5639
	ld a,c			;563a
	pop af			;563b
	ld sp,hl		;563c
	ld d,l			;563d
	ld (hl),d		;563e
	ret po			;563f
	ld a,b			;5640
	ld a,a			;5641
	call m,03900h		;5642
	xor a			;5645
	or a			;5646
	push af			;5647
	ret			;5648
	ld (l7f23h),a		;5649
	dec l			;564c
	nop			;564d
	rst 38h			;564e
	ld l,l			;564f
	xor (hl)		;5650
	adc a,d			;5651
	push bc			;5652
	ccf			;5653
	ld a,a			;5654
l5655h:
	add hl,de		;5655
	ld c,c			;5656
	inc b			;5657
	ld c,l			;5658
	defb 0ddh,0ffh,01eh ;illegal sequence	;5659
	ld sp,0eacfh		;565c
	inc sp			;565f
	adc a,h			;5660
	add a,09dh		;5661
	add a,l			;5663
	rst 8			;5664
	inc de			;5665
	ld a,a			;5666
	and a			;5667
	nop			;5668
	ld a,b			;5669
	push af			;566a
	xor h			;566b
	or a			;566c
	cp d			;566d
	ld bc,0b30dh		;566e
	ei			;5671
	push af			;5672
	ld (hl),d		;5673
	jp l506ch		;5674
	call m,00200h		;5677
	sub h			;567a
	ld c,c			;567b
	ld (hl),e		;567c
	ld b,a			;567d
	ld (de),a		;567e
	rst 38h			;567f
	sub h			;5680
	rst 8			;5681
	ld a,d			;5682
	xor e			;5683
	djnz l5690h		;5684
	or a			;5686
	adc a,013h		;5687
	ld a,03fh		;5689
	ld h,(hl)		;568b
l568ch:
	inc sp			;568c
	call pe,0ae6eh		;568d
l5690h:
	call pe,0a8b6h		;5690
	ld (03133h),a		;5693
	push de			;5696
	cp h			;5697
	call po,0a7feh		;5698
	ld a,a			;569b
	jp l7f3fh		;569c
	ld a,(bc)		;569f
	ld sp,hl		;56a0
	halt			;56a1
	rst 38h			;56a2
sub_56a3h:
	dec a			;56a3
	inc hl			;56a4
	rst 8			;56a5
	rst 10h			;56a6
	call z,05c32h		;56a7
	rst 20h			;56aa
	ld de,0e640h		;56ab
	call z,sub_4a9ch	;56ae
	inc de			;56b1
	xor d			;56b2
	ld b,(hl)		;56b3
	di			;56b4
	and 071h		;56b5
	add a,b			;56b7
	jp pe,l7f30h		;56b8
l56bbh:
	adc a,h			;56bb
	or e			;56bc
	push de			;56bd
	adc a,l			;56be
	and a			;56bf
	rst 38h			;56c0
	jp nz,01211h		;56c1
	sub c			;56c4
	dec hl			;56c5
	rst 38h			;56c6
	ex de,hl		;56c7
	rst 8			;56c8
	ld e,0a6h		;56c9
	jr nz,l56ffh		;56cb
	call nz,09207h		;56cd
	inc hl			;56d0
	inc de			;56d1
	rra			;56d2
	ld b,b			;56d3
	ld (0ec10h),a		;56d4
	ld (hl),d		;56d7
	ld (hl),c		;56d8
	ld (hl),e		;56d9
	jr nc,l575bh		;56da
	or l			;56dc
	jr c,l56f0h		;56dd
	jp p,0b1f3h		;56df
	jr c,l56bbh		;56e2
	ld a,a			;56e4
	add hl,hl		;56e5
	ld a,a			;56e6
	pop hl			;56e7
	ld b,a			;56e8
	rst 38h			;56e9
	add a,d			;56ea
	ld (0fbffh),hl		;56eb
	adc a,a			;56ee
	rst 8			;56ef
l56f0h:
	ld c,e			;56f0
	pop de			;56f1
	ld c,e			;56f2
	add hl,de		;56f3
	inc de			;56f4
	adc a,a			;56f5
	ld b,b			;56f6
l56f7h:
	sbc a,e			;56f7
	nop			;56f8
	rst 38h			;56f9
	cp 000h			;56fa
	ld h,b			;56fc
	nop			;56fd
	nop			;56fe
l56ffh:
	ld a,a			;56ff
	sbc a,c			;5700
	nop			;5701
	inc l			;5702
	inc sp			;5703
	ex de,hl		;5704
	nop			;5705
	ld a,(bc)		;5706
	rrca			;5707
	sbc a,b			;5708
	adc a,b			;5709
	nop			;570a
	add a,b			;570b
	cp e			;570c
	call nc,03204h		;570d
	ld (01122h),hl		;5710
	ld (03300h),hl		;5713
	cp 07fh			;5716
	ld e,l			;5718
	ld b,h			;5719
	nop			;571a
	rst 10h			;571b
	ld a,a			;571c
	jp z,l66ddh		;571d
	call nz,0007fh		;5720
	rrca			;5723
	inc hl			;5724
	inc (hl)		;5725
	sbc a,c			;5726
	nop			;5727
	ret pe			;5728
	ld a,l			;5729
	ld a,e			;572a
	add a,c			;572b
	adc a,c			;572c
	ret			;572d
	adc a,c			;572e
	sub e			;572f
	call z,0d17fh		;5730
	inc (hl)		;5733
	ld b,h			;5734
	rst 38h			;5735
	rra			;5736
	pop de			;5737
	ld a,e			;5738
	ld a,a			;5739
	ld bc,0c38ch		;573a
	add a,h			;573d
	ret z			;573e
	sbc a,h			;573f
	add a,h			;5740
	ld a,a			;5741
	ret nz			;5742
	inc hl			;5743
	ld b,h			;5744
	ld b,e			;5745
	cp 07fh			;5746
	call nz,0d38dh		;5748
	ld c,093h		;574b
	inc a			;574d
	call z,sub_7f43h	;574e
	dec b			;5751
	inc sp			;5752
	ld b,h			;5753
	ld b,d			;5754
	rst 38h			;5755
	ccf			;5756
	ld b,e			;5757
	cp 03eh			;5758
	ret po			;575a
l575bh:
	adc a,e			;575b
	cp l			;575c
	sbc a,l			;575d
	exx			;575e
	call nc,sub_4338h	;575f
	inc sp			;5762
	ld a,(hl)		;5763
	inc hl			;5764
	ld b,e			;5765
	ld (0faffh),hl		;5766
	rra			;5769
	ld a,a			;576a
	ld (hl),b		;576b
	adc a,l			;576c
	call c,0cc9ch		;576d
	adc a,c			;5770
	ld a,b			;5771
	inc sp			;5772
	ld (l5afdh),a		;5773
	inc b			;5776
	cp 09fh			;5777
	and c			;5779
	rst 30h			;577a
	ld a,a			;577b
	inc b			;577c
	adc a,h			;577d
	call z,0c484h		;577e
	ld b,h			;5781
	sbc a,c			;5782
	and l			;5783
	ei			;5784
	inc de			;5785
	dec b			;5786
	ld (0f97fh),hl		;5787
	add a,h			;578a
	sub h			;578b
	rst 38h			;578c
	ld a,l			;578d
	dec d			;578e
	rst 38h			;578f
	sbc a,c			;5790
	ld a,c			;5791
	ei			;5792
	inc h			;5793
	add a,e			;5794
	or b			;5795
	ld hl,l7ffeh		;5796
	ld e,l			;5799
	sub e			;579a
	rst 38h			;579b
	ld a,017h		;579c
	defb 0fdh,0f0h,0b7h ;illegal sequence	;579e
	ld b,h			;57a1
	ld a,e			;57a2
	inc bc			;57a3
	ld h,d			;57a4
	cp 07fh			;57a5
	add hl,de		;57a7
sub_57a8h:
	ld a,a			;57a8
	ld l,l			;57a9
	nop			;57aa
	cp c			;57ab
	ld a,(hl)		;57ac
	cp 01fh			;57ad
	call z,sub_7f7dh	;57af
	ld l,e			;57b2
	add a,h			;57b3
	push af			;57b4
	ld sp,08cfch		;57b5
	nop			;57b8
	ccf			;57b9
	add hl,de		;57ba
	sub h			;57bb
	ld a,a			;57bc
	sub a			;57bd
	ld (hl),l		;57be
	sub d			;57bf
	ld h,c			;57c0
	ld a,a			;57c1
	pop af			;57c2
	ld b,h			;57c3
	ld sp,hl		;57c4
	ld hl,01174h		;57c5
	nop			;57c8
	sub h			;57c9
	ld b,a			;57ca
	ld b,e			;57cb
	rst 38h			;57cc
	or 02ah			;57cd
	add a,h			;57cf
	or 011h			;57d0
	ld (de),a		;57d2
	sbc a,d			;57d3
	jp 02521h		;57d4
	dec hl			;57d7
	rst 38h			;57d8
	jp m,l7f2fh		;57d9
	ld a,d			;57dc
	or 012h			;57dd
	ld hl,0d4fch		;57df
	and l			;57e2
	xor a			;57e3
	cp 03fh			;57e4
	ld h,c			;57e6
	cp 01eh			;57e7
	jr z,l5824h		;57e9
	cp 0c8h			;57eb
	rst 38h			;57ed
	cp 0c6h			;57ee
	or 0a8h			;57f0
	cp 0e8h			;57f2
	inc de			;57f4
	sbc a,c			;57f5
	defb 0ddh,083h,0dfh ;illegal sequence	;57f6
	rst 38h			;57f9
	ret pe			;57fa
	ld h,e			;57fb
	cp 0d9h			;57fc
	ld b,e			;57fe
	defb 0fdh,03eh,011h ;illegal sequence	;57ff
	defb 0fdh,09fh,07fh ;illegal sequence	;5802
	call z,022abh		;5805
	rst 38h			;5808
	and 09fh		;5809
	defb 0fdh,013h,093h ;illegal sequence	;580b
	ld (0f97fh),a		;580e
	cp e			;5811
	pop hl			;5812
	ld l,a			;5813
	ld a,a			;5814
	jp c,0bcfch		;5815
	and e			;5818
	cp 088h			;5819
	rst 38h			;581b
	cp 0bdh			;581c
	inc sp			;581e
	cp 01eh			;581f
	rst 18h			;5821
	ld a,a			;5822
	rst 10h			;5823
l5824h:
	ld c,a			;5824
	defb 0fdh,008h,033h ;illegal sequence	;5825
	cp 0e3h			;5828
	ld a,(hl)		;582a
	sbc a,a			;582b
	ld a,a			;582c
	ex de,hl		;582d
	xor e			;582e
	call m,0235dh		;582f
	or 091h			;5832
	cp 09eh			;5834
	rra			;5836
	inc de			;5837
	rst 38h			;5838
	defb 0fdh,054h ;ld d,iyh	;5839
	defb 0fdh,0f0h,033h ;illegal sequence	;583b
	or 0f6h			;583e
	dec h			;5840
	add a,h			;5841
	ld h,e			;5842
	rst 38h			;5843
	jp m,09855h		;5844
	call m,0a37ah		;5847
	inc hl			;584a
	ld a,a			;584b
	inc hl			;584c
	ld b,c			;584d
	rst 30h			;584e
	add a,a			;584f
	inc hl			;5850
	ld a,a			;5851
	di			;5852
	rst 10h			;5853
	rst 38h			;5854
	jp po,08f98h		;5855
	cp 072h			;5858
	ld (01449h),hl		;585a
	defb 0fdh,0fbh,0feh ;illegal sequence	;585d
	ld a,a			;5860
	ld (hl),e		;5861
	rst 38h			;5862
	inc a			;5863
	ld d,e			;5864
	sbc a,b			;5865
	defb 0fdh,0edh,07fh ;illegal sequence	;5866
	defb 0fdh,02fh,000h ;illegal sequence	;5869
	adc a,d			;586c
	sbc a,b			;586d
	call m,064bdh		;586e
	add a,e			;5871
	dec h			;5872
	ld b,h			;5873
	sub h			;5874
	sbc a,(hl)		;5875
	ld h,e			;5876
	rst 38h			;5877
	jp m,09984h		;5878
	defb 0fdh,0fbh,029h ;illegal sequence	;587b
	inc h			;587e
	ld a,h			;587f
	add a,b			;5880
	dec hl			;5881
	dec bc			;5882
	rst 38h			;5883
	ld a,(hl)		;5884
	ld a,c			;5885
	sub e			;5886
	rst 38h			;5887
	ld a,009h		;5888
	sbc a,c			;588a
	defb 0fdh,0f3h,04ch ;illegal sequence	;588b
l588eh:
	inc (hl)		;588e
	inc b			;588f
	ld c,c			;5890
	dec d			;5891
	ld c,a			;5892
	add hl,sp		;5893
	ld a,a			;5894
	inc sp			;5895
	ld a,a			;5896
	rst 20h			;5897
	ld d,d			;5898
	sub d			;5899
	rst 18h			;589a
	ex (sp),hl		;589b
	cp 01eh			;589c
	ld h,c			;589e
	ld b,h			;589f
	ld b,d			;58a0
	inc h			;58a1
	sub e			;58a2
	add a,d			;58a3
	jr z,l58efh		;58a4
	adc a,l			;58a6
	sbc a,d			;58a7
	cp 07fh			;58a8
	ld (hl),c		;58aa
	sub c			;58ab
	rst 38h			;58ac
	ld a,(hl)		;58ad
	inc d			;58ae
	add a,b			;58af
	call c,0f1fdh		;58b0
	ld a,a			;58b3
	rst 20h			;58b4
	sbc a,a			;58b5
	dec l			;58b6
	rst 0			;58b7
	rst 38h			;58b8
	di			;58b9
	jp pe,0fc98h		;58ba
	pop af			;58bd
	and c			;58be
	adc a,a			;58bf
	inc (hl)		;58c0
	ld a,d			;58c1
	sub e			;58c2
	add a,d			;58c3
	ccf			;58c4
	sub e			;58c5
	ld a,a			;58c6
	xor e			;58c7
	sbc a,(hl)		;58c8
	add a,b			;58c9
	sub e			;58ca
	ld b,d			;58cb
	defb 0fdh,081h,044h ;illegal sequence	;58cc
	ld b,e			;58cf
	ld c,c			;58d0
	sub h			;58d1
	cp 019h			;58d2
	ld a,(hl)		;58d4
	jp po,0a733h		;58d5
	rst 38h			;58d8
	ret pe			;58d9
	cp d			;58da
	ld a,a			;58db
	ld b,a			;58dc
	add a,d			;58dd
	cp 016h			;58de
	sub a			;58e0
	sub l			;58e1
	cp 03fh			;58e2
	ld b,e			;58e4
	ld a,a			;58e5
	and c			;58e6
	or a			;58e7
	rst 38h			;58e8
	ld hl,(0f080h)		;58e9
	ld h,h			;58ec
	inc (hl)		;58ed
	ld a,d			;58ee
l58efh:
	ld de,0bb43h		;58ef
	rst 38h			;58f2
	inc b			;58f3
	ccf			;58f4
	ld a,a			;58f5
	sbc a,a			;58f6
	rst 8			;58f7
	add a,c			;58f8
	adc a,e			;58f9
	ld a,a			;58fa
	jp m,0fec8h		;58fb
	jp (hl)			;58fe
	ld b,h			;58ff
	ld a,a			;5900
	call po,0e584h		;5901
	ld a,d			;5904
	inc (hl)		;5905
	dec de			;5906
	pop hl			;5907
	add a,l			;5908
	dec de			;5909
	rst 38h			;590a
	rst 8			;590b
	ret nc			;590c
	ex de,hl		;590d
	add a,c			;590e
	sub h			;590f
	adc a,l			;5910
	ld e,c			;5911
	ld (hl),e		;5912
	add a,d			;5913
	add hl,hl		;5914
	nop			;5915
	push hl			;5916
	rst 38h			;5917
	rst 28h			;5918
	ret nc			;5919
	di			;591a
l591bh:
	add a,d			;591b
	sbc a,(hl)		;591c
	ld a,(hl)		;591d
	ld d,(hl)		;591e
	add a,c			;591f
	rst 38h			;5920
	ld a,a			;5921
	ld b,l			;5922
	rst 18h			;5923
	ld a,0a8h		;5924
	adc a,b			;5926
	add a,b			;5927
	pop af			;5928
	ccf			;5929
	ld c,b			;592a
	ld b,h			;592b
	ld a,a			;592c
	and h			;592d
	push af			;592e
	ld e,a			;592f
	rst 30h			;5930
	add a,e			;5931
	rra			;5932
	ld a,a			;5933
	jp (hl)			;5934
	defb 0fdh,000h,09eh ;illegal sequence	;5935
	adc a,b			;5938
	nop			;5939
	ld sp,0fdffh		;593a
	sbc a,a			;593d
	ld a,a			;593e
	sbc a,h			;593f
	add a,e			;5940
	and a			;5941
	ld a,a			;5942
	di			;5943
	adc a,000h		;5944
	nop			;5946
	call m,0515fh		;5947
	sbc a,b			;594a
	add a,b			;594b
	jp p,l482fh		;594c
	dec bc			;594f
	ld a,a			;5950
	and 044h		;5951
	inc b			;5953
	ld b,h			;5954
	ld b,b			;5955
	rst 18h			;5956
	ld a,c			;5957
	ld a,088h		;5958
	nop			;595a
	ld l,a			;595b
	ld a,a			;595c
	jp (hl)			;595d
	rst 18h			;595e
	sbc a,b			;595f
	ld a,a			;5960
	rst 10h			;5961
	rst 18h			;5962
	jp pe,08155h		;5963
	pop af			;5966
	rst 38h			;5967
	ld a,a			;5968
	ld b,a			;5969
	jp pe,0f39dh		;596a
	add a,h			;596d
	cp a			;596e
	ld a,a			;596f
	call p,004adh		;5970
	jp pe,0bff0h		;5973
	add a,d			;5976
	sub e			;5977
	ld a,a			;5978
	jp m,0ea0eh		;5979
	pop af			;597c
	rst 0			;597d
	rst 18h			;597e
	jp (hl)			;597f
	cp a			;5980
	ld a,a			;5981
	jp 00244h		;5982
	ld (0fc23h),hl		;5985
	and h			;5988
	add a,b			;5989
	call po,sub_5f84h	;598a
	ld a,a			;598d
	jp c,04205h		;598e
	ld (de),a		;5991
	ld (0fd34h),hl		;5992
	inc hl			;5995
	sub h			;5996
	cp 087h			;5997
l5999h:
	inc h			;5999
	add hl,sp		;599a
	and 0dfh		;599b
	and l			;599d
	rst 8			;599e
	nop			;599f
	xor d			;59a0
	adc a,c			;59a1
	pop bc			;59a2
	ld a,b			;59a3
	ld (hl),a		;59a4
	jp z,0d2d7h		;59a5
	ld e,h			;59a8
	ld (l4bf6h),hl		;59a9
	ld hl,00980h		;59ac
	ld c,c			;59af
	ld a,a			;59b0
	ld (0fc7eh),a		;59b1
	ld b,h			;59b4
	add a,b			;59b5
	ld h,a			;59b6
	dec e			;59b7
	exx			;59b8
	jp nc,l535eh		;59b9
	cp 024h			;59bc
	ld (00780h),a		;59be
	inc sp			;59c1
	ld b,h			;59c2
	ld b,d			;59c3
	inc h			;59c4
	sub e			;59c5
	rst 38h			;59c6
	or a			;59c7
	ld a,(hl)		;59c8
	call m,0001fh		;59c9
	call po,sub_7f64h	;59cc
	add a,b			;59cf
	or c			;59d0
	ld a,a			;59d1
	ld sp,hl		;59d2
	rst 38h			;59d3
	ld a,(hl)		;59d4
	and e			;59d5
	rst 28h			;59d6
	inc l			;59d7
	rst 0			;59d8
	ld l,l			;59d9
	inc (hl)		;59da
	inc (hl)		;59db
	add hl,bc		;59dc
	inc h			;59dd
	inc (hl)		;59de
	inc sp			;59df
l59e0h:
	rst 38h			;59e0
	or c			;59e1
	cp 074h			;59e2
	rst 30h			;59e4
	sub h			;59e5
	add a,c			;59e6
	sub h			;59e7
	inc b			;59e8
	add a,b			;59e9
	rst 20h			;59ea
	ld a,(hl)		;59eb
	di			;59ec
	ld l,e			;59ed
	add a,e			;59ee
	ld e,(hl)		;59ef
	nop			;59f0
	ld d,c			;59f1
	ld (039ebh),a		;59f2
	inc hl			;59f5
	add hl,bc		;59f6
	ld (hl),023h		;59f7
	ld (0ff08h),hl		;59f9
	sub 080h		;59fc
	ld d,(hl)		;59fe
	defb 0fdh,095h ;sub iyl	;59ff
	inc sp			;5a01
	ld a,(hl)		;5a02
	call m,08c93h		;5a03
	ex af,af'		;5a06
	or h			;5a07
	call z,0bcffh		;5a08
	jp p,l5380h		;5a0b
	add a,c			;5a0e
	ld de,l5f99h		;5a0f
	rst 38h			;5a12
	push hl			;5a13
	ld a,(hl)		;5a14
	ld a,h			;5a15
	jr c,l59e0h		;5a16
	adc a,b			;5a18
	ld c,h			;5a19
	ld (hl),c		;5a1a
	jr z,l5a22h		;5a1b
	inc b			;5a1d
	add hl,sp		;5a1e
	ld (00e00h),hl		;5a1f
l5a22h:
	ld hl,01211h		;5a22
	ld (de),a		;5a25
	add hl,bc		;5a26
	ld c,l			;5a27
	ld (de),a		;5a28
	ld de,l7608h		;5a29
	sbc a,c			;5a2c
	call m,080cbh		;5a2d
	inc h			;5a30
	ld (0fe49h),hl		;5a31
	ld a,a			;5a34
	inc e			;5a35
	inc sp			;5a36
	inc de			;5a37
	call z,sub_44cch	;5a38
	ld a,a			;5a3b
	jp l4f05h		;5a3c
	adc a,b			;5a3f
	add a,d			;5a40
	ld a,a			;5a41
	or d			;5a42
	add a,b			;5a43
	ld e,b			;5a44
	call m,0897fh		;5a45
	defb 0fdh,07ch ;ld a,iyh	;5a48
	add a,d			;5a4a
	defb 0ddh,0dch,055h ;illegal sequence	;5a4b
	inc h			;5a4e
	call z,005c9h		;5a4f
	inc a			;5a52
	inc b			;5a53
	inc hl			;5a54
	ld c,a			;5a55
	jp nz,029f5h		;5a56
	jp nz,0f8ffh		;5a59
	ld l,c			;5a5c
	add a,c			;5a5d
	pop bc			;5a5e
	inc hl			;5a5f
	defb 0fdh,02fh,0c6h ;illegal sequence	;5a60
	ret nz			;5a63
	nop			;5a64
	cp e			;5a65
	cp l			;5a66
	adc a,l			;5a67
	defb 0ddh,088h,045h ;illegal sequence	;5a68
	exx			;5a6b
	dec b			;5a6c
	sbc a,l			;5a6d
	defb 0ddh,07fh,06ch ;illegal sequence	;5a6e
	xor d			;5a71
	ld b,h			;5a72
	rst 38h			;5a73
	ld a,c			;5a74
	dec h			;5a75
	add a,b			;5a76
	jp 01fffh		;5a77
	add hl,de		;5a7a
	sbc a,b			;5a7b
	out (09fh),a		;5a7c
	cpl			;5a7e
	ld a,a			;5a7f
	jp c,013c3h		;5a80
	jp 0c2c2h		;5a83
	adc a,b			;5a86
	sub (hl)		;5a87
	rst 38h			;5a88
	pop af			;5a89
	ld l,(hl)		;5a8a
	nop			;5a8b
	add a,h			;5a8c
	or c			;5a8d
	add a,c			;5a8e
	ld e,c			;5a8f
	adc a,(hl)		;5a90
	ld (de),a		;5a91
	sub h			;5a92
	ld hl,l4213h		;5a93
	ld (00011h),hl		;5a96
	inc d			;5a99
	add hl,hl		;5a9a
	daa			;5a9b
	sbc a,(hl)		;5a9c
	inc b			;5a9d
	add hl,hl		;5a9e
	sbc a,c			;5a9f
	add hl,de		;5aa0
	ld bc,0c192h		;5aa1
	ex af,af'		;5aa4
	inc hl			;5aa5
	inc (hl)		;5aa6
	ld b,c			;5aa7
	inc d			;5aa8
	ld b,a			;5aa9
	cp 0a8h			;5aaa
	add a,h			;5aac
	ld b,h			;5aad
	ld c,b			;5aae
	rst 10h			;5aaf
	jp z,l4844h		;5ab0
	rst 38h			;5ab3
	cp h			;5ab4
	ld b,h			;5ab5
	adc a,h			;5ab6
	call z,0a8ffh		;5ab7
	sbc a,h			;5aba
	call z,0aac8h		;5abb
	ld a,a			;5abe
	nop			;5abf
l5ac0h:
	rst 38h			;5ac0
	ld sp,hl		;5ac1
	and a			;5ac2
	add a,c			;5ac3
	adc a,c			;5ac4
	add a,b			;5ac5
	ld d,h			;5ac6
	ld (02205h),hl		;5ac7
	inc d			;5aca
	add hl,de		;5acb
	sub h			;5acc
	inc (hl)		;5acd
	and e			;5ace
	sub l			;5acf
	nop			;5ad0
	ld a,(hl)		;5ad1
	dec bc			;5ad2
	ld h,e			;5ad3
	ld b,019h		;5ad4
	ld a,a			;5ad6
	ld e,b			;5ad7
	sub c			;5ad8
	ex af,af'		;5ad9
	ld (de),a		;5ada
	ld a,(03123h)		;5adb
	ld a,a			;5ade
	ld a,h			;5adf
	sbc a,b			;5ae0
	ld a,a			;5ae1
	jp p,0f081h		;5ae2
	ld d,d			;5ae5
	rst 38h			;5ae6
	add hl,hl		;5ae7
	add a,h			;5ae8
	rst 38h			;5ae9
	add a,l			;5aea
	sub h			;5aeb
	rst 38h			;5aec
	ld h,d			;5aed
	call z,0fa00h		;5aee
	ld a,a			;5af1
	sub d			;5af2
	inc sp			;5af3
	add a,b			;5af4
	sub d			;5af5
	nop			;5af6
	ld (0a37ah),a		;5af7
	ld e,a			;5afa
	cp 099h			;5afb
l5afdh:
	adc a,h			;5afd
	dec b			;5afe
	ld hl,0bb1bh		;5aff
	nop			;5b02
	ld a,l			;5b03
	ld h,0b9h		;5b04
	ld bc,00991h		;5b06
	ld b,l			;5b09
	add a,b			;5b0a
	sub l			;5b0b
	add hl,de		;5b0c
	cp 01eh			;5b0d
	sub d			;5b0f
	res 3,(hl)		;5b10
	or l			;5b12
	or c			;5b13
	add a,c			;5b14
	ret p			;5b15
	ld b,a			;5b16
	add a,a			;5b17
	adc a,a			;5b18
	ld a,a			;5b19
	sub d			;5b1a
	ld c,b			;5b1b
	add a,d			;5b1c
	ld h,d			;5b1d
	out (033h),a		;5b1e
sub_5b20h:
	ret nc			;5b20
	ld d,a			;5b21
	ld b,l			;5b22
	add hl,de		;5b23
l5b24h:
	add a,c			;5b24
	ld bc,0e100h		;5b25
	ld a,a			;5b28
	push de			;5b29
	add a,c			;5b2a
	ld sp,09100h		;5b2b
	cp 01ah			;5b2e
	ld b,e			;5b30
	sub d			;5b31
	ld d,043h		;5b32
	ld e,e			;5b34
	ld (0077eh),hl		;5b35
	ld a,a			;5b38
	call z,079ffh		;5b39
	rst 0			;5b3c
	cp 07dh			;5b3d
	cp c			;5b3f
	sbc a,(hl)		;5b40
	or l			;5b41
	sbc a,l			;5b42
	rst 8			;5b43
	ret p			;5b44
	dec h			;5b45
	ld c,b			;5b46
	sub (hl)		;5b47
	rla			;5b48
	ld b,h			;5b49
	rst 38h			;5b4a
	push hl			;5b4b
	rst 38h			;5b4c
	add a,d			;5b4d
	ret z			;5b4e
	ld de,0d8b2h		;5b4f
	adc a,d			;5b52
	ld l,c			;5b53
	jp m,000dch		;5b54
	bit 4,e			;5b57
	adc a,d			;5b59
	or h			;5b5a
	adc a,e			;5b5b
	cp (hl)			;5b5c
	adc a,l			;5b5d
	and d			;5b5e
	pop af			;5b5f
	jp pe,0827fh		;5b60
	ret c			;5b63
	ld b,(hl)		;5b64
	ld (l78feh),hl		;5b65
	ld a,a			;5b68
	rra			;5b69
	ld de,l7fb1h		;5b6a
	inc l			;5b6d
	ei			;5b6e
	or (hl)			;5b6f
	ld b,e			;5b70
	jp z,0c3aeh		;5b71
	sub d			;5b74
	add a,h			;5b75
	ld (03e80h),a		;5b76
	ld a,(bc)		;5b79
	adc a,e			;5b7a
	ld a,b			;5b7b
	call c,07e89h		;5b7c
	ret			;5b7f
	ret po			;5b80
	ld a,a			;5b81
	di			;5b82
	jp pe,02384h		;5b83
	ld de,022feh		;5b86
	ld e,a			;5b89
	ld e,a			;5b8a
	ld b,h			;5b8b
	cp 056h			;5b8c
	defb 0fdh,052h,08fh ;illegal sequence	;5b8e
	ld e,b			;5b91
	and a			;5b92
	rst 38h			;5b93
	add a,d			;5b94
	cp 03ah			;5b95
	sub d			;5b97
	jp m,0a8abh		;5b98
	call m,084c8h		;5b9b
	jp po,038d7h		;5b9e
	jp po,08300h		;5ba1
	ld a,d			;5ba4
	and a			;5ba5
	adc a,h			;5ba6
	add a,a			;5ba7
	ld a,(hl)		;5ba8
	scf			;5ba9
	call m,sub_7f9fh	;5baa
	and d			;5bad
	add a,c			;5bae
	ld (hl),e		;5baf
	sub c			;5bb0
	add hl,hl		;5bb1
	defb 0fdh,0c0h,095h ;illegal sequence	;5bb2
	rst 38h			;5bb5
	sub h			;5bb6
	inc sp			;5bb7
	jr z,l5bcbh		;5bb8
	inc de			;5bba
	dec bc			;5bbb
	cp 0afh			;5bbc
	and (hl)		;5bbe
	add a,(hl)		;5bbf
	add hl,sp		;5bc0
	ld a,a			;5bc1
	jp m,l5999h		;5bc2
	or l			;5bc5
	sub (hl)		;5bc6
	ld c,e			;5bc7
	defb 0fdh,03eh,03fh ;illegal sequence	;5bc8
l5bcbh:
	ld a,a			;5bcb
	sbc a,l			;5bcc
	rrca			;5bcd
	sbc a,a			;5bce
	ld a,a			;5bcf
	add a,a			;5bd0
	cp 01ah			;5bd1
	ld sp,hl		;5bd3
	sbc a,b			;5bd4
	xor h			;5bd5
	sub c			;5bd6
	inc de			;5bd7
	adc a,l			;5bd8
	cp 0beh			;5bd9
	and (hl)		;5bdb
	dec h			;5bdc
	inc c			;5bdd
	add hl,hl		;5bde
	ld bc,l4ce5h		;5bdf
	ld l,a			;5be2
	dec l			;5be3
	ld a,a			;5be4
	add a,l			;5be5
	ld b,d			;5be6
	or c			;5be7
	jp p,0fd44h		;5be8
l5bebh:
	sub (hl)		;5beb
	add a,h			;5bec
	cpl			;5bed
	ld a,l			;5bee
	jr $-124		;5bef
	jp pe,09881h		;5bf1
	sbc a,a			;5bf4
	add a,d			;5bf5
	ld e,a			;5bf6
	rst 30h			;5bf7
	ld e,(hl)		;5bf8
sub_5bf9h:
	ld c,(hl)		;5bf9
	jr c,l5c00h		;5bfa
	adc a,e			;5bfc
	add a,l			;5bfd
	ld c,l			;5bfe
	sbc a,a			;5bff
l5c00h:
	ld a,a			;5c00
	ld b,h			;5c01
	ld b,h			;5c02
	rst 38h			;5c03
	call pe,sub_71feh	;5c04
	inc bc			;5c07
	ex af,af'		;5c08
	ld sp,hl		;5c09
	inc hl			;5c0a
	ld (0c7feh),a		;5c0b
	ld b,h			;5c0e
	ld a,a			;5c0f
	and a			;5c10
	dec l			;5c11
	ld (de),a		;5c12
	cp 0e0h			;5c13
	ld b,d			;5c15
	call m,0a4b1h		;5c16
	defb 0fdh,07ah,094h ;illegal sequence	;5c19
	or l			;5c1c
	dec a			;5c1d
	sub e			;5c1e
	ld a,a			;5c1f
	ld (hl),e		;5c20
	ld h,c			;5c21
	sub (hl)		;5c22
	inc a			;5c23
	inc sp			;5c24
	and l			;5c25
	pop hl			;5c26
	ret p			;5c27
	ld a,a			;5c28
	dec a			;5c29
	ld b,h			;5c2a
	ld b,d			;5c2b
	ld a,a			;5c2c
	ld a,l			;5c2d
	add a,e			;5c2e
	add a,h			;5c2f
	ld (l6dfeh),hl		;5c30
	ld a,a			;5c33
	inc bc			;5c34
	ld d,l			;5c35
	ld a,a			;5c36
	call m,sub_7f7dh	;5c37
	ld a,c			;5c3a
	xor (hl)		;5c3b
	add a,04dh		;5c3c
	dec h			;5c3e
	ld c,c			;5c3f
	jp nc,l4909h		;5c40
	sub e			;5c43
	exx			;5c44
	ld l,d			;5c45
	add a,c			;5c46
	ld e,h			;5c47
	ld h,l			;5c48
	add a,b			;5c49
	daa			;5c4a
	adc a,h			;5c4b
	xor l			;5c4c
	dec hl			;5c4d
	sub (hl)		;5c4e
	adc a,l			;5c4f
	ld h,a			;5c50
	and l			;5c51
	sbc a,c			;5c52
	out (0e1h),a		;5c53
	inc h			;5c55
	add a,(hl)		;5c56
	inc e			;5c57
	jp p,09900h		;5c58
	xor a			;5c5b
	cp 032h			;5c5c
	ld b,e			;5c5e
	add hl,sp		;5c5f
	cp 024h			;5c60
	ld c,c			;5c62
	add a,d			;5c63
	adc a,b			;5c64
	sbc a,c			;5c65
	rst 38h			;5c66
	ret z			;5c67
	rst 18h			;5c68
	adc a,07fh		;5c69
	ld d,d			;5c6b
	add hl,sp		;5c6c
	ld bc,0ba94h		;5c6d
	in a,(09fh)		;5c70
	cp 01ch			;5c72
	xor (hl)		;5c74
	ret c			;5c75
	jp 0fca3h		;5c76
	ld c,a			;5c79
	inc h			;5c7a
	ld c,c			;5c7b
	ld e,b			;5c7c
	dec c			;5c7d
	call c,081d9h		;5c7e
	ld e,c			;5c81
	add a,c			;5c82
	ret			;5c83
	adc a,e			;5c84
	ld l,a			;5c85
	ld a,h			;5c86
	xor h			;5c87
	dec bc			;5c88
	ld e,a			;5c89
	ld b,c			;5c8a
	jp p,0da86h		;5c8b
	sub d			;5c8e
	xor a			;5c8f
	call po,0bf99h		;5c90
	cp 039h			;5c93
	ccf			;5c95
	add hl,sp		;5c96
	ld (hl),b		;5c97
	ld b,h			;5c98
	cp 092h			;5c99
	or d			;5c9b
	ex de,hl		;5c9c
	ld e,l			;5c9d
	sub (hl)		;5c9e
	and b			;5c9f
	ld e,e			;5ca0
	add hl,hl		;5ca1
	ld a,a			;5ca2
	jp po,0f92dh		;5ca3
	ld a,a			;5ca6
	ld c,e			;5ca7
	add a,b			;5ca8
	ld e,07fh		;5ca9
	daa			;5cab
	ld (07f33h),a		;5cac
	ld d,c			;5caf
	add a,b			;5cb0
	sbc a,a			;5cb1
	ld a,a			;5cb2
	and a			;5cb3
	cp 09ch			;5cb4
	call pe,0fe00h		;5cb6
	ld l,c			;5cb9
	ld hl,l4512h		;5cba
	ld c,c			;5cbd
	ret p			;5cbe
	sbc a,(hl)		;5cbf
	call m,sub_7f51h	;5cc0
	sub b			;5cc3
	ld c,h			;5cc4
	and 044h		;5cc5
	ex de,hl		;5cc7
	ld sp,01cfch		;5cc8
	ld de,0af84h		;5ccb
	xor c			;5cce
	inc (hl)		;5ccf
	call m,0a24bh		;5cd0
	ld d,h			;5cd3
	ld b,e			;5cd4
	cp 071h			;5cd5
	inc a			;5cd7
	cp e			;5cd8
	inc b			;5cd9
	ld a,(0f692h)		;5cda
	sub l			;5cdd
	sub l			;5cde
	rst 8			;5cdf
	ld a,e			;5ce0
	ld d,c			;5ce1
	cp d			;5ce2
	xor b			;5ce3
	inc hl			;5ce4
	rst 0			;5ce5
	cp e			;5ce6
	nop			;5ce7
	adc a,c			;5ce8
	or h			;5ce9
	inc hl			;5cea
	ld a,a			;5ceb
	defb 0edh ;next byte illegal after ed	;5cec
	defb 0fdh,03ch,070h ;illegal sequence	;5ced
	ld b,c			;5cf0
	ld hl,02916h		;5cf1
	sbc a,a			;5cf4
	ld sp,hl		;5cf5
	ret pe			;5cf6
	sbc a,c			;5cf7
	ld a,d			;5cf8
	inc b			;5cf9
	or (hl)			;5cfa
l5cfbh:
	rst 38h			;5cfb
	cp h			;5cfc
	ld a,a			;5cfd
	di			;5cfe
	ld c,b			;5cff
	ei			;5d00
	cp (hl)			;5d01
	ccf			;5d02
	or c			;5d03
	pop de			;5d04
	inc h			;5d05
	sbc a,c			;5d06
	add a,b			;5d07
	ld h,c			;5d08
	sbc a,c			;5d09
	ld b,e			;5d0a
	cp 01bh			;5d0b
	exx			;5d0d
	xor h			;5d0e
	inc hl			;5d0f
	inc hl			;5d10
	add a,b			;5d11
	sub h			;5d12
	inc sp			;5d13
	add a,b			;5d14
	xor l			;5d15
	sub c			;5d16
	jr nc,l5d4dh		;5d17
	adc a,0f3h		;5d19
	defb 0fdh,0ebh,089h ;illegal sequence	;5d1b
	and (hl)		;5d1e
	ex de,hl		;5d1f
	dec h			;5d20
	adc a,(hl)		;5d21
	nop			;5d22
	ret m			;5d23
	ld a,a			;5d24
	xor 0feh		;5d25
	sbc a,b			;5d27
	ld (02975h),hl		;5d28
	adc a,c			;5d2b
	sbc a,a			;5d2c
	ld (02da7h),hl		;5d2d
	ld l,a			;5d30
	inc sp			;5d31
	ld a,a			;5d32
	or e			;5d33
	adc a,b			;5d34
	ei			;5d35
	sbc a,h			;5d36
	rra			;5d37
	ld b,e			;5d38
	or c			;5d39
	call 0d6ffh		;5d3a
	cpl			;5d3d
	ld d,c			;5d3e
	or (hl)			;5d3f
	ld (0b70ch),a		;5d40
	ld c,(hl)		;5d43
	ld b,e			;5d44
	daa			;5d45
	add a,d			;5d46
	dec (hl)		;5d47
	add a,h			;5d48
	cpl			;5d49
	ex de,hl		;5d4a
	adc a,e			;5d4b
	di			;5d4c
l5d4dh:
	ret p			;5d4d
	cp b			;5d4e
	inc d			;5d4f
	rlca			;5d50
	ld (hl),d		;5d51
	ld (de),a		;5d52
	inc b			;5d53
	ld de,l7ff5h		;5d54
	sbc a,(hl)		;5d57
	defb 0fdh,038h,029h ;illegal sequence	;5d58
	ld l,d			;5d5b
	ld hl,03af0h		;5d5c
l5d5fh:
	sub d			;5d5f
	ld a,(hl)		;5d60
	sbc a,l			;5d61
	add a,h			;5d62
	xor e			;5d63
	adc a,l			;5d64
	ld a,a			;5d65
	jp z,0b1ach		;5d66
	adc a,b			;5d69
	add a,b			;5d6a
	ld e,032h		;5d6b
	add a,b			;5d6d
	jp z,01e22h		;5d6e
	adc a,h			;5d71
	rst 38h			;5d72
	jp z,08d5ch		;5d73
	ld a,(de)		;5d76
	ld b,e			;5d77
	pop bc			;5d78
	cp l			;5d79
	ld (hl),l		;5d7a
	dec hl			;5d7b
	inc (hl)		;5d7c
	rst 28h			;5d7d
	inc a			;5d7e
	ld h,e			;5d7f
	ld a,b			;5d80
	ld c,l			;5d81
	push af			;5d82
	call nc,058eah		;5d83
	ret po			;5d86
	dec sp			;5d87
	and 0ffh		;5d88
	push hl			;5d8a
	call z,023a3h		;5d8b
l5d8eh:
	ld b,c			;5d8e
	jr l5d5fh		;5d8f
	ld c,e			;5d91
	ld e,(hl)		;5d92
	inc sp			;5d93
	ld l,a			;5d94
l5d95h:
	nop			;5d95
	ccf			;5d96
	ld a,a			;5d97
	inc c			;5d98
	or e			;5d99
	ld (hl),c		;5d9a
	ld a,a			;5d9b
	call pe,08e12h		;5d9c
	in a,(c)		;5d9f
	ld a,a			;5da1
	adc a,(hl)		;5da2
	ret m			;5da3
	cp a			;5da4
	call sub_7f8fh		;5da5
	or c			;5da8
	inc b			;5da9
	ld c,d			;5daa
	pop hl			;5dab
	jr l5d95h		;5dac
	pop af			;5dae
	cp c			;5daf
	ld a,a			;5db0
	rst 20h			;5db1
	jp m,0b4feh		;5db2
	add a,c			;5db5
	ex (sp),hl		;5db6
	or h			;5db7
	rla			;5db8
	or d			;5db9
	sub l			;5dba
	rlca			;5dbb
	ld h,l			;5dbc
	inc l			;5dbd
	inc b			;5dbe
	ld h,(hl)		;5dbf
	ld h,h			;5dc0
	ld b,e			;5dc1
	ld hl,0b5d8h		;5dc2
	add a,e			;5dc5
	ld e,e			;5dc6
	sbc a,l			;5dc7
	ld d,h			;5dc8
	ei			;5dc9
	ld a,b			;5dca
	ld (hl),e		;5dcb
	ld (hl),h		;5dcc
	rst 38h			;5dcd
	ld l,07eh		;5dce
	ld a,a			;5dd0
	adc a,c			;5dd1
	ld b,h			;5dd2
	jp z,08f70h		;5dd3
	and e			;5dd6
	inc e			;5dd7
	ld c,b			;5dd8
	and h			;5dd9
	cp e			;5dda
	rst 28h			;5ddb
	rst 10h			;5ddc
	add hl,sp		;5ddd
	add a,h			;5dde
	rst 18h			;5ddf
	ld a,a			;5de0
	inc (hl)		;5de1
	add a,h			;5de2
	or h			;5de3
	rst 30h			;5de4
	or h			;5de5
	push bc			;5de6
	ld b,b			;5de7
	ccf			;5de8
	ld bc,l6643h		;5de9
	ld (hl),a		;5dec
	halt			;5ded
	ld h,h			;5dee
	ld sp,03dd8h		;5def
	push bc			;5df2
	cp e			;5df3
	rla			;5df4
	ld c,d			;5df5
	add a,b			;5df6
	rst 0			;5df7
	call p,0fa95h		;5df8
	dec (hl)		;5dfb
	adc a,(hl)		;5dfc
	ld e,h			;5dfd
	ld a,d			;5dfe
	ld a,a			;5dff
	add hl,hl		;5e00
	inc b			;5e01
sub_5e02h:
	jp z,02ec7h		;5e02
	rst 0			;5e05
	ld b,d			;5e06
	ld a,(hl)		;5e07
	ld a,a			;5e08
	push de			;5e09
	adc a,b			;5e0a
	or h			;5e0b
	ld a,b			;5e0c
	ld d,c			;5e0d
	or d			;5e0e
	ld d,d			;5e0f
	ld bc,03624h		;5e10
	ld (hl),a		;5e13
	ld h,(hl)		;5e14
	ld h,a			;5e15
	ld h,(hl)		;5e16
	ld a,a			;5e17
	pop hl			;5e18
	cp (hl)			;5e19
	adc a,e			;5e1a
	sub d			;5e1b
	rla			;5e1c
	ld l,b			;5e1d
	sbc a,c			;5e1e
	ld (de),a		;5e1f
	add hl,hl		;5e20
	push bc			;5e21
	ld l,00fh		;5e22
	sub d			;5e24
	ld a,a			;5e25
	ld e,e			;5e26
	jp z,0f072h		;5e27
	ld a,a			;5e2a
	ld (hl),b		;5e2b
	ld (de),a		;5e2c
	ld b,c			;5e2d
	inc h			;5e2e
	rst 18h			;5e2f
	rst 10h			;5e30
	dec sp			;5e31
	ret			;5e32
	ld e,a			;5e33
	ld a,a			;5e34
	ld c,l			;5e35
	add a,h			;5e36
	ld h,(hl)		;5e37
	ret po			;5e38
	halt			;5e39
	add a,c			;5e3a
	adc a,h			;5e3b
	ld a,a			;5e3c
	rrca			;5e3d
	ld h,(hl)		;5e3e
	ld l,c			;5e3f
	ld h,a			;5e40
	halt			;5e41
	jp nz,081d9h		;5e42
	xor 0c0h		;5e45
	ld d,d			;5e47
	sbc a,e			;5e48
	add hl,hl		;5e49
	rst 8			;5e4a
	ld (hl),d		;5e4b
	sbc a,a			;5e4c
	rst 38h			;5e4d
	sbc a,l			;5e4e
	inc b			;5e4f
	jp z,l5d8eh		;5e50
	inc h			;5e53
	set 0,c			;5e54
	dec de			;5e56
	adc a,(hl)		;5e57
	sub a			;5e58
	xor b			;5e59
	push hl			;5e5a
	cp a			;5e5b
	ld l,h			;5e5c
	ld a,d			;5e5d
	ld a,a			;5e5e
	rst 20h			;5e5f
	or h			;5e60
	ld a,(hl)		;5e61
	ld a,a			;5e62
	xor c			;5e63
	ld hl,0e6ebh		;5e64
	cp (hl)			;5e67
	ld (hl),09bh		;5e68
	ld (hl),e		;5e6a
	ld a,a			;5e6b
	ret p			;5e6c
	ld (hl),l		;5e6d
	jp z,0b0ceh		;5e6e
	ld a,c			;5e71
	sub (hl)		;5e72
	ret nz			;5e73
	out (024h),a		;5e74
	xor c			;5e76
	rst 20h			;5e77
	add hl,de		;5e78
	rst 0			;5e79
	ld a,a			;5e7a
	xor l			;5e7b
	add a,c			;5e7c
	ld sp,0c62bh		;5e7d
l5e80h:
	ld a,a			;5e80
	add hl,bc		;5e81
	ld b,(hl)		;5e82
	ld (hl),a		;5e83
	or (hl)			;5e84
	rst 38h			;5e85
	ld h,d			;5e86
	cp (hl)			;5e87
	ld a,h			;5e88
	ld h,e			;5e89
	cp a			;5e8a
	ld sp,0cae7h		;5e8b
	rst 38h			;5e8e
	call m,01398h		;5e8f
	rst 38h			;5e92
	jp (hl)			;5e93
	jp z,07eceh		;5e94
	ld l,04ah		;5e97
	ld b,h			;5e99
	ld d,d			;5e9a
	ret nz			;5e9b
	sub c			;5e9c
	ld hl,03ebfh		;5e9d
	cp (hl)			;5ea0
	ld a,a			;5ea1
	or (hl)			;5ea2
	add a,d			;5ea3
	rst 0			;5ea4
	ld a,a			;5ea5
	dec h			;5ea6
	ld hl,0ff13h		;5ea7
	ld (bc),a		;5eaa
	ld a,(hl)		;5eab
	halt			;5eac
	ld h,e			;5ead
	ld l,04fh		;5eae
	ld hl,0d9bfh		;5eb0
	rst 38h			;5eb3
	defb 0ddh,0efh,0ffh ;illegal sequence	;5eb4
	sbc a,a			;5eb7
	jp z,0f8b9h		;5eb8
	ld a,a			;5ebb
	cp a			;5ebc
	inc sp			;5ebd
	ld a,a			;5ebe
	dec c			;5ebf
	add a,h			;5ec0
	pop af			;5ec1
l5ec2h:
	adc a,e			;5ec2
	xor 07ch		;5ec3
	ld h,l			;5ec5
	jp m,031c1h		;5ec6
	ld h,(hl)		;5ec9
	ld h,e			;5eca
	rst 38h			;5ecb
	ld a,c			;5ecc
	ex (sp),hl		;5ecd
	ld l,035h		;5ece
	cp a			;5ed0
	pop af			;5ed1
	ei			;5ed2
	ret m			;5ed3
	inc l			;5ed4
	inc (hl)		;5ed5
	sbc a,e			;5ed6
	di			;5ed7
	daa			;5ed8
	sbc a,c			;5ed9
	ld b,d			;5eda
	defb 0fdh,02ch ;inc iyl	;5edb
	djnz l5ec2h		;5edd
	and e			;5edf
	sub a			;5ee0
	ld de,0fe93h		;5ee1
	ex (sp),hl		;5ee4
	ld c,(hl)		;5ee5
	ld b,l			;5ee6
	call nc,04cdbh		;5ee7
	ld e,e			;5eea
	cp a			;5eeb
	and a			;5eec
	ld a,(hl)		;5eed
	xor h			;5eee
	add a,c			;5eef
	call pe,0b1d1h		;5ef0
	ld a,a			;5ef3
	sub d			;5ef4
	call nc,09f6eh		;5ef5
	ld e,(hl)		;5ef8
	cp 05bh			;5ef9
	ret nz			;5efb
	sub e			;5efc
	inc sp			;5efd
	cp a			;5efe
l5effh:
	ld e,01ah		;5eff
	nop			;5f01
	add a,l			;5f02
	ld (hl),003h		;5f03
	and a			;5f05
	ld l,b			;5f06
	rst 38h			;5f07
	push bc			;5f08
	ld (bc),a		;5f09
	cp 01ch			;5f0a
	halt			;5f0c
	jp po,l49a3h		;5f0d
	sub (hl)		;5f10
	jp 019bfh		;5f11
	adc a,0c0h		;5f14
	ld (hl),c		;5f16
	cp a			;5f17
	rst 8			;5f18
	ld a,a			;5f19
	out (c),a		;5f1a
	ld (0ca7fh),a		;5f1c
	add a,b			;5f1f
	cp 07fh			;5f20
	dec h			;5f22
	rst 38h			;5f23
	sub l			;5f24
	daa			;5f25
	ld a,d			;5f26
	xor a			;5f27
	xor c			;5f28
	rla			;5f29
	sbc a,(hl)		;5f2a
	ld a,(hl)		;5f2b
	ld a,(de)		;5f2c
	cp a			;5f2d
	rst 20h			;5f2e
	cp a			;5f2f
l5f30h:
	cp (hl)			;5f30
	ld e,(hl)		;5f31
l5f32h:
	ld a,a			;5f32
	call p,0dc81h		;5f33
	jp pe,l7b94h		;5f36
	xor e			;5f39
	xor d			;5f3a
	ld (de),a		;5f3b
	ret p			;5f3c
	call m,0bff7h		;5f3d
	rst 10h			;5f40
	ret			;5f41
	ld a,l			;5f42
	jr z,l5f30h		;5f43
	sbc a,a			;5f45
	jp c,l7f0fh		;5f46
	adc a,e			;5f49
	cp a			;5f4a
	cp c			;5f4b
	ld (hl),a		;5f4c
	inc sp			;5f4d
	cp a			;5f4e
	push bc			;5f4f
	ld a,a			;5f50
	ret p			;5f51
	add hl,sp		;5f52
	add a,h			;5f53
	jr nz,l5f32h		;5f54
	call m,0a58eh		;5f56
	inc hl			;5f59
	add a,e			;5f5a
	inc h			;5f5b
	halt			;5f5c
	sub d			;5f5d
	add a,c			;5f5e
	ret m			;5f5f
	rst 30h			;5f60
	cp a			;5f61
	sbc a,d			;5f62
	ld c,c			;5f63
	add a,h			;5f64
	ld e,l			;5f65
	dec e			;5f66
	ld b,e			;5f67
	defb 0edh ;next byte illegal after ed	;5f68
	adc a,0ffh		;5f69
	ld (hl),c		;5f6b
	ld a,d			;5f6c
	call nz,091efh		;5f6d
	sbc a,b			;5f70
	sbc a,l			;5f71
	ld a,(hl)		;5f72
	ld c,a			;5f73
	ld a,a			;5f74
	adc a,b			;5f75
	ld a,a			;5f76
	sub (hl)		;5f77
	rst 38h			;5f78
	sbc a,l			;5f79
	ld b,e			;5f7a
	adc a,c			;5f7b
	ret			;5f7c
	adc a,b			;5f7d
	ret z			;5f7e
l5f7fh:
	ld e,c			;5f7f
	ld (hl),d		;5f80
	add hl,de		;5f81
	pop bc			;5f82
	sub d			;5f83
sub_5f84h:
	pop hl			;5f84
	or e			;5f85
	ld d,d			;5f86
l5f87h:
	ld c,d			;5f87
	add hl,hl		;5f88
	xor a			;5f89
	ld b,l			;5f8a
	xor l			;5f8b
	ld a,b			;5f8c
	rst 10h			;5f8d
	inc bc			;5f8e
	inc hl			;5f8f
	cp a			;5f90
	jp m,0c47bh		;5f91
	ld a,h			;5f94
	nop			;5f95
	dec hl			;5f96
	sub e			;5f97
	rst 38h			;5f98
l5f99h:
	cp (hl)			;5f99
	rst 38h			;5f9a
	add a,044h		;5f9b
	ld a,d			;5f9d
	ld d,l			;5f9e
	add a,c			;5f9f
	ld a,(de)		;5fa0
	sbc a,h			;5fa1
	ld a,h			;5fa2
	ld h,d			;5fa3
	nop			;5fa4
	ld c,b			;5fa5
	ret c			;5fa6
	scf			;5fa7
	rst 0			;5fa8
	ret c			;5fa9
	or (hl)			;5faa
	or l			;5fab
	inc hl			;5fac
	sub l			;5fad
	xor h			;5fae
	rst 38h			;5faf
	rst 30h			;5fb0
	ld b,03ch		;5fb1
	jp 0c984h		;5fb3
	ret			;5fb6
	ld d,c			;5fb7
	and a			;5fb8
	ld b,d			;5fb9
	or c			;5fba
	add a,d			;5fbb
	ld b,e			;5fbc
	sub h			;5fbd
	cp a			;5fbe
	sub h			;5fbf
	ld c,c			;5fc0
	ld c,a			;5fc1
	ld l,l			;5fc2
	ld e,c			;5fc3
	add a,0bah		;5fc4
	jp m,0a622h		;5fc6
	or d			;5fc9
	rra			;5fca
	add hl,hl		;5fcb
	ld a,a			;5fcc
	inc c			;5fcd
	adc a,c			;5fce
	or c			;5fcf
	ld (de),a		;5fd0
	call nz,sub_6edch	;5fd1
	ld a,a			;5fd4
l5fd5h:
	or d			;5fd5
	nop			;5fd6
	ld a,(hl)		;5fd7
	add a,c			;5fd8
	or (hl)			;5fd9
	sub a			;5fda
	jp m,007a7h		;5fdb
	ret c			;5fde
	ld a,c			;5fdf
	add hl,bc		;5fe0
	xor 014h		;5fe1
	ld h,c			;5fe3
	ld e,e			;5fe4
	add hl,sp		;5fe5
	rst 38h			;5fe6
	ret nz			;5fe7
	adc a,l			;5fe8
	inc e			;5fe9
	out (093h),a		;5fea
	inc a			;5fec
	ld a,a			;5fed
	ld c,d			;5fee
	or a			;5fef
	cp c			;5ff0
	inc h			;5ff1
	ld a,a			;5ff2
	and b			;5ff3
	call p,0f59fh		;5ff4
	defb 0edh ;next byte illegal after ed	;5ff7
	ld a,a			;5ff8
	ld de,0f97fh		;5ff9
	ld de,08f80h		;5ffc
l5fffh:
	ld b,b			;5fff
	ld l,d			;6000
	ex af,af'		;6001
	ret			;6002
	and e			;6003
	cp 08eh			;6004
	add hl,bc		;6006
	ld sp,08900h		;6007
	jr l5fd5h		;600a
	inc (hl)		;600c
	ld b,c			;600d
	rst 38h			;600e
	sbc a,a			;600f
	nop			;6010
	adc a,e			;6011
	cp l			;6012
	sbc a,l			;6013
	ld (de),a		;6014
	exx			;6015
	exx			;6016
	call nc,0ce80h		;6017
	nop			;601a
	call m,03288h		;601b
	jp c,l6d8ah		;601e
	ld b,0ffh		;6021
	ld e,c			;6023
	sub d			;6024
	inc hl			;6025
	ld sp,02efeh		;6026
	nop			;6029
	jp z,0397fh		;602a
	ld bc,l5bebh		;602d
	adc a,a			;6030
	jp nc,08308h		;6031
	ex (sp),hl		;6034
	dec b			;6035
	inc hl			;6036
	push hl			;6037
	add hl,sp		;6038
	ld a,a			;6039
	ld a,c			;603a
	inc b			;603b
	ld a,a			;603c
	ld b,(hl)		;603d
	cp 0bah			;603e
	ld b,h			;6040
	add hl,hl		;6041
	xor 0e8h		;6042
	ld a,b			;6044
	nop			;6045
	rst 20h			;6046
	rst 38h			;6047
	add a,h			;6048
	adc a,l			;6049
	call c,09c27h		;604a
	call z,05180h		;604d
	inc (hl)		;6050
	add a,b			;6051
	ret nc			;6052
	ld hl,l4319h		;6053
	ld (0f539h),hl		;6056
	exx			;6059
	sub h			;605a
	add a,b			;605b
	ld h,(hl)		;605c
	inc hl			;605d
	sub a			;605e
	ld a,(l6734h)		;605f
	rst 0			;6062
	ld a,a			;6063
	sub h			;6064
	inc a			;6065
l6066h:
	ld de,0ef82h		;6066
	add a,a			;6069
	ld e,h			;606a
	di			;606b
	ld a,a			;606c
	add a,d			;606d
	inc l			;606e
	ld (hl),a		;606f
	ld a,a			;6070
	cp 019h			;6071
	ld a,a			;6073
	jp nc,0e548h		;6074
	cp d			;6077
	defb 0edh ;next byte illegal after ed	;6078
	ld a,a			;6079
	sbc a,c			;607a
	rst 38h			;607b
	ld a,0a9h		;607c
	call z,0c5ffh		;607e
	ld c,b			;6081
	and d			;6082
	ld sp,01c81h		;6083
	add a,0fdh		;6086
	ld b,h			;6088
	call m,0c894h		;6089
	inc bc			;608c
	ld a,a			;608d
	dec de			;608e
	ld de,02374h		;608f
	ld a,a			;6092
	add hl,hl		;6093
l6094h:
	and l			;6094
	ld bc,l6dech		;6095
	jp c,082b8h		;6098
	di			;609b
	xor a			;609c
sub_609dh:
	inc e			;609d
	add hl,de		;609e
	ld a,a			;609f
	add hl,bc		;60a0
	add a,e			;60a1
	ld b,h			;60a2
	ld b,h			;60a3
	di			;60a4
	or e			;60a5
	pop af			;60a6
	dec e			;60a7
	xor l			;60a8
	ld b,h			;60a9
	and 0c6h		;60aa
	or d			;60ac
	dec sp			;60ad
	xor a			;60ae
	rst 38h			;60af
	ld l,d			;60b0
	ld bc,0ca82h		;60b1
	or a			;60b4
	and a			;60b5
	xor d			;60b6
	sub h			;60b7
	ld b,d			;60b8
	add a,c			;60b9
	jp pe,0fc99h		;60ba
	jr nc,l6103h		;60bd
	sbc a,a			;60bf
	ld h,0f1h		;60c0
	inc de			;60c2
	adc a,b			;60c3
	ld e,0bbh		;60c4
	ld (de),a		;60c6
	inc (hl)		;60c7
	ld a,a			;60c8
	adc a,l			;60c9
	ld b,h			;60ca
	jp c,09ff1h		;60cb
	in a,(01bh)		;60ce
	sub h			;60d0
	di			;60d1
	ret c			;60d2
l60d3h:
	nop			;60d3
	sbc a,c			;60d4
	pop hl			;60d5
	ld c,b			;60d6
	ld l,(hl)		;60d7
	call nc,sub_75fch	;60d8
	add a,d			;60db
	dec a			;60dc
	ld h,d			;60dd
	and l			;60de
	ld a,e			;60df
	ld a,a			;60e0
	jp p,09c00h		;60e1
	inc sp			;60e4
	call nz,0b033h		;60e5
	sbc a,e			;60e8
	defb 0fdh,059h,0fdh ;illegal sequence	;60e9
	exx			;60ec
sub_60edh:
	inc bc			;60ed
	sub c			;60ee
sub_60efh:
	ld a,a			;60ef
l60f0h:
	or 04bh			;60f0
	add a,l			;60f2
	ccf			;60f3
	ld a,a			;60f4
	inc h			;60f5
	push af			;60f6
	ld (hl),l		;60f7
	call m,0bf1eh		;60f8
	ex de,hl		;60fb
	call nc,0b1ffh		;60fc
	add a,b			;60ff
	sbc a,0d4h		;6100
	add a,l			;6102
l6103h:
	pop bc			;6103
	call nc,05143h		;6104
	add a,0b0h		;6107
	or c			;6109
	add a,d			;610a
	ld d,h			;610b
	add a,b			;610c
	sbc a,h			;610d
	ret			;610e
	dec a			;610f
	ld de,02ae1h		;6110
	xor h			;6113
	sub (hl)		;6114
	ex de,hl		;6115
	ld h,0fdh		;6116
	sub b			;6118
	sub e			;6119
	add hl,de		;611a
	sub e			;611b
	jp c,08f6fh		;611c
	and 081h		;611f
	ld a,00fh		;6121
	ld a,a			;6123
	add a,d			;6124
	cp 039h			;6125
	adc a,a			;6127
	call m,08239h		;6128
	ld l,e			;612b
	ld h,(hl)		;612c
	ld a,07fh		;612d
	dec sp			;612f
	add a,l			;6130
	dec (hl)		;6131
	ld a,b			;6132
	inc sp			;6133
	add a,b			;6134
	inc e			;6135
	jp z,0ad80h		;6136
	sub h			;6139
	xor b			;613a
	ld de,00a14h		;613b
	dec de			;613e
	ld (de),a		;613f
	rst 38h			;6140
	ld e,h			;6141
	ex (sp),hl		;6142
	ld a,a			;6143
	sub d			;6144
	pop de			;6145
	cp b			;6146
	rst 38h			;6147
sub_6148h:
	sbc a,d			;6148
	jr $-125		;6149
	di			;614b
	rst 30h			;614c
	ld a,a			;614d
	ret z			;614e
	ld a,b			;614f
	call m,03ef8h		;6150
	ld a,a			;6153
	res 0,l			;6154
	add hl,sp		;6156
	xor c			;6157
	adc a,b			;6158
	add a,b			;6159
	jp po,l5580h		;615a
	sub h			;615d
	rst 38h			;615e
	xor h			;615f
	ld h,e			;6160
	ld a,(bc)		;6161
	or c			;6162
	rlca			;6163
	ld h,h			;6164
	ld a,l			;6165
	cp c			;6166
	ld bc,0f691h		;6167
	cp a			;616a
	inc e			;616b
	ld sp,0e59ah		;616c
	add a,c			;616f
	ld e,03eh		;6170
	ld a,a			;6172
	call p,0c5ech		;6173
	call po,0c739h		;6176
	add a,d			;6179
	sbc a,l			;617a
	ld hl,03efch		;617b
	push hl			;617e
	sbc a,b			;617f
sub_6180h:
	sbc a,c			;6180
	add a,l			;6181
	and (hl)		;6182
	xor d			;6183
	push af			;6184
	ld c,h			;6185
	dec l			;6186
	ld (l6482h),a		;6187
	ret pe			;618a
	sub l			;618b
	add a,b			;618c
	ld d,b			;618d
	inc sp			;618e
	add a,d			;618f
	dec de			;6190
	ld e,h			;6191
	cp e			;6192
	nop			;6193
	ld a,a			;6194
	rst 20h			;6195
	add hl,bc		;6196
	ret nz			;6197
	ld (hl),e		;6198
	ld a,c			;6199
	rst 0			;619a
	ex af,af'		;619b
	add a,(hl)		;619c
	rst 38h			;619d
	or c			;619e
	ld a,a			;619f
	ex de,hl		;61a0
	ex de,hl		;61a1
	ld c,h			;61a2
	ld a,c			;61a3
	ld h,c			;61a4
	push af			;61a5
	ld (hl),c		;61a6
	add hl,de		;61a7
	rst 8			;61a8
	ld a,a			;61a9
	ret nz			;61aa
	call z,0380eh		;61ab
	ld c,h			;61ae
	adc a,c			;61af
	ret z			;61b0
	xor d			;61b1
	ld h,a			;61b2
	rst 28h			;61b3
	rst 30h			;61b4
	ld a,a			;61b5
	jp p,09c75h		;61b6
	add a,a			;61b9
	ld (0c17fh),hl		;61ba
	defb 0ddh,02fh,001h ;illegal sequence	;61bd
	adc a,c			;61c0
	sbc a,c			;61c1
	add a,b			;61c2
	ld a,(hl)		;61c3
	ld c,a			;61c4
	inc sp			;61c5
	ld a,a			;61c6
	add a,b			;61c7
	add ix,sp		;61c8
	dec de			;61ca
	inc sp			;61cb
	call z,07fc4h		;61cc
	rst 30h			;61cf
	exx			;61d0
	add a,b			;61d1
	add hl,de		;61d2
	add a,b			;61d3
	inc a			;61d4
	ccf			;61d5
	inc (hl)		;61d6
	add a,h			;61d7
	adc a,d			;61d8
	adc a,l			;61d9
	ld e,c			;61da
	rst 38h			;61db
	ld h,e			;61dc
	ld bc,0ff25h		;61dd
	push bc			;61e0
	add hl,de		;61e1
	ld h,l			;61e2
	cp e			;61e3
	ld c,081h		;61e4
	dec e			;61e6
	dec a			;61e7
	inc hl			;61e8
	ld a,a			;61e9
	ld h,a			;61ea
	pop ix			;61eb
	xor 013h		;61ed
	ld h,e			;61ef
	call sub_5381h		;61f0
	sbc a,c			;61f3
	add a,b			;61f4
	cp b			;61f5
	cp e			;61f6
	exx			;61f7
	defb 0ddh,07bh,09dh ;illegal sequence	;61f8
	add a,c			;61fb
	ld de,0bbdah		;61fc
	call p,0338ah		;61ff
	and 03dh		;6202
	call 0e023h		;6204
	adc a,h			;6207
	ld l,0a7h		;6208
	rst 38h			;620a
	add a,h			;620b
	add hl,de		;620c
	sub l			;620d
	ld e,l			;620e
	ld d,l			;620f
	nop			;6210
	ld a,a			;6211
l6212h:
	rst 0			;6212
	add a,b			;6213
	rra			;6214
	ld a,a			;6215
	cp d			;6216
	ld b,(ix-037h)		;6217
	cp 066h			;621a
	call m,0efffh		;621c
	dec (hl)		;621f
	ld a,h			;6220
	add a,l			;6221
	ld l,0fah		;6222
	call c,05d5dh		;6224
	push af			;6227
	rst 38h			;6228
	ld l,h			;6229
	ld e,(hl)		;622a
	rst 38h			;622b
	ld e,e			;622c
	rst 38h			;622d
	jr z,$+19		;622e
	rst 38h			;6230
	rst 30h			;6231
	adc a,(hl)		;6232
	add a,b			;6233
	ld a,07fh		;6234
	rst 10h			;6236
	adc a,c			;6237
	inc de			;6238
	add a,d			;6239
	add a,h			;623a
	ret nc			;623b
	ld d,a			;623c
	ld (083dch),hl		;623d
l6240h:
	call z,0c824h		;6240
	ld c,h			;6243
	ld a,h			;6244
	inc d			;6245
	rst 30h			;6246
	call pe,0a980h		;6247
	inc h			;624a
	inc sp			;624b
	add a,h			;624c
	sbc a,e			;624d
	push de			;624e
	ld l,c			;624f
	pop hl			;6250
	inc a			;6251
	or c			;6252
	inc d			;6253
	rst 38h			;6254
	out (013h),a		;6255
	adc a,b			;6257
	rst 38h			;6258
	push af			;6259
	and l			;625a
	adc a,(hl)		;625b
	ei			;625c
	ld a,a			;625d
	ld a,l			;625e
	di			;625f
	rst 0			;6260
	xor (hl)		;6261
	sbc a,b			;6262
	ret m			;6263
	ld (0ff2ah),hl		;6264
	ld l,h			;6267
	sub h			;6268
	ld a,a			;6269
	jp (hl)			;626a
	sbc a,e			;626b
	ld e,l			;626c
	ld a,a			;626d
	out (024h),a		;626e
	ex de,hl		;6270
	inc sp			;6271
	ld e,a			;6272
	xor a			;6273
	ld a,a			;6274
	rst 18h			;6275
	adc a,h			;6276
	cp 097h			;6277
	pop af			;6279
	inc c			;627a
	xor h			;627b
	ex de,hl		;627c
	sub (hl)		;627d
	ld e,00ch		;627e
	ld l,l			;6280
	xor c			;6281
	ld a,a			;6282
	ex de,hl		;6283
	adc a,d			;6284
	ld a,c			;6285
	jp m,03362h		;6286
	inc h			;6289
	adc a,e			;628a
	ld l,c			;628b
	adc a,a			;628c
	rst 0			;628d
	ld hl,l7d60h		;628e
	rst 38h			;6291
	sub 024h		;6292
	dec h			;6294
	ld hl,0e2ffh		;6295
	ei			;6298
	ld a,a			;6299
	or 013h			;629a
	pop af			;629c
	ld a,h			;629d
	ld l,e			;629e
	rst 38h			;629f
	ld (hl),e		;62a0
	add a,c			;62a1
	ret po			;62a2
	sub (hl)		;62a3
	ex (sp),hl		;62a4
	jr z,l6240h		;62a5
l62a7h:
	ld h,l			;62a7
	ld (0e25eh),a		;62a8
	ld de,l434eh		;62ab
	ld de,02304h		;62ae
	inc hl			;62b1
	add a,b			;62b2
	ret			;62b3
	add hl,sp		;62b4
	rst 38h			;62b5
	xor 00bh		;62b6
	ld (l76ffh),a		;62b8
	sbc a,(hl)		;62bb
	rst 38h			;62bc
	ld l,e			;62bd
	rst 38h			;62be
	call pe,0897eh		;62bf
	ld a,a			;62c2
	rrca			;62c3
	defb 0fdh,0f0h,044h ;illegal sequence	;62c4
	exx			;62c7
	jp p,l4932h		;62c8
	scf			;62cb
	ld hl,045e2h		;62cc
	inc hl			;62cf
	ld hl,00513h		;62d0
	ld (de),a		;62d3
	adc a,a			;62d4
	ld (0087fh),hl		;62d5
	sbc a,l			;62d8
	cp c			;62d9
	call po,0ff9dh		;62da
	pop hl			;62dd
	ld de,0e900h		;62de
	or d			;62e1
	ld l,c			;62e2
	rst 38h			;62e3
	ld e,0bfh		;62e4
	nop			;62e6
	add a,l			;62e7
	ld a,a			;62e8
	ex de,hl		;62e9
	sub a			;62ea
	adc a,h			;62eb
	jr z,l6330h		;62ec
	dec d			;62ee
	rst 18h			;62ef
	xor h			;62f0
	call m,076b6h		;62f1
	ld h,d			;62f4
	and 029h		;62f5
	add a,b			;62f7
	ld (hl),h		;62f8
	jp po,0ff7fh		;62f9
	ld a,b			;62fc
	or 0f5h			;62fd
	inc hl			;62ff
	ei			;6300
	jp z,034feh		;6301
	inc hl			;6304
	ld (0117fh),a		;6305
	ld a,a			;6308
	ld l,022h		;6309
	adc a,(hl)		;630b
	pop hl			;630c
	ld a,l			;630d
	ld a,a			;630e
	push hl			;630f
	add a,d			;6310
	adc a,0adh		;6311
	ld d,e			;6313
	ld a,a			;6314
	call p,0a367h		;6315
	rst 10h			;6318
	sub (hl)		;6319
	ld e,b			;631a
	defb 0fdh,099h,0f0h ;illegal sequence	;631b
	ld a,a			;631e
	adc a,c			;631f
	ret m			;6320
	ld b,e			;6321
	rst 20h			;6322
	xor 04fh		;6323
	add hl,hl		;6325
	ld a,a			;6326
	ld d,039h		;6327
	inc a			;6329
	rst 0			;632a
	add a,d			;632b
	ld a,000h		;632c
	inc de			;632e
	or e			;632f
l6330h:
	ld a,a			;6330
	ld a,a			;6331
	ld b,033h		;6332
	defb 0edh ;next byte illegal after ed	;6334
	ld a,a			;6335
	ld b,h			;6336
	call m,0e669h		;6337
	add a,a			;633a
	ld a,a			;633b
	sbc a,l			;633c
	sbc a,e			;633d
	ld h,a			;633e
	ld a,a			;633f
	ld l,e			;6340
	inc (hl)		;6341
	ret nz			;6342
	ld l,d			;6343
	adc a,c			;6344
	or e			;6345
	dec e			;6346
	cp b			;6347
	cp 0bfh			;6348
	ld a,a			;634a
	ld c,e			;634b
	add a,d			;634c
	cp 02ah			;634d
	nop			;634f
	add a,b			;6350
	jp nc,l6901h		;6351
	inc de			;6354
	ld h,d			;6355
	ld sp,0f513h		;6356
	sbc a,h			;6359
	ld h,e			;635a
	nop			;635b
	sub e			;635c
	rst 18h			;635d
	or 0fbh			;635e
	sbc a,b			;6360
	adc a,(hl)		;6361
	rst 38h			;6362
	ld a,b			;6363
	dec b			;6364
	adc a,l			;6365
	add a,d			;6366
	push de			;6367
	adc a,(hl)		;6368
	rst 20h			;6369
	nop			;636a
	ld a,a			;636b
	ret m			;636c
	adc a,d			;636d
	ld d,d			;636e
	add a,b			;636f
	rst 10h			;6370
	ld a,d			;6371
	ld c,d			;6372
	ld de,0ee13h		;6373
	rst 20h			;6376
	halt			;6377
	cp b			;6378
	jp m,0ebf0h		;6379
sub_637ch:
	sbc a,h			;637c
	sbc a,e			;637d
	ld (hl),a		;637e
l637fh:
	nop			;637f
	ld h,a			;6380
	jr nz,$-107		;6381
	ld a,a			;6383
	ret p			;6384
	call 04383h		;6385
	sbc a,l			;6388
	and 0e5h		;6389
	ld a,a			;638b
	ld de,03f0dh		;638c
	ld sp,0ac7fh		;638f
	sbc a,047h		;6392
	ld a,a			;6394
	scf			;6395
	ld l,d			;6396
	pop hl			;6397
	add hl,de		;6398
	and c			;6399
	add a,a			;639a
	ld b,c			;639b
	sbc a,05dh		;639c
	ld l,(hl)		;639e
	sub (hl)		;639f
	ld (hl),h		;63a0
	nop			;63a1
	inc hl			;63a2
	defb 0ddh,004h,09ch ;illegal sequence	;63a3
	add hl,sp		;63a6
	inc c			;63a7
	adc a,(hl)		;63a8
	add a,c			;63a9
	ld h,e			;63aa
	sbc a,e			;63ab
	xor a			;63ac
	ld a,a			;63ad
	jp nc,080afh		;63ae
	dec h			;63b1
	add a,h			;63b2
	defb 0fdh,076h,039h ;illegal sequence	;63b3
	adc a,(hl)		;63b6
	xor 03bh		;63b7
	and b			;63b9
	add hl,sp		;63ba
	defb 0fdh,069h ;ld iyl,c	;63bb
	defb 0ddh,0bfh,0ffh ;illegal sequence	;63bd
	ld h,e			;63c0
	nop			;63c1
	adc a,h			;63c2
	push af			;63c3
	pop hl			;63c4
	inc de			;63c5
	dec e			;63c6
	or c			;63c7
	add a,c			;63c8
	call nz,0ad85h		;63c9
	sub e			;63cc
	ld (hl),e		;63cd
	and (hl)		;63ce
	ld (hl),a		;63cf
	ld a,a			;63d0
	ret p			;63d1
	dec l			;63d2
	inc sp			;63d3
	ld a,a			;63d4
	ld (hl),a		;63d5
	add a,c			;63d6
	xor 03ah		;63d7
	ld e,e			;63d9
	ld b,d			;63da
	rst 28h			;63db
	ld (hl),l		;63dc
	sub e			;63dd
	sbc a,b			;63de
	ld a,b			;63df
	add hl,de		;63e0
	ld (hl),02bh		;63e1
	sub e			;63e3
	or 0a9h			;63e4
	add a,e			;63e6
	ld l,c			;63e7
	ld c,b			;63e8
	ld b,b			;63e9
	sla d			;63ea
	ld a,a			;63ec
	or 0edh			;63ed
	defb 0fdh,0c1h,038h ;illegal sequence	;63ef
	di			;63f2
	ld l,h			;63f3
l63f4h:
	ld b,a			;63f4
	ret c			;63f5
	inc e			;63f6
	ld h,l			;63f7
	ld a,d			;63f8
	add a,d			;63f9
	ld l,a			;63fa
	add hl,bc		;63fb
	ld a,a			;63fc
	and e			;63fd
	sub d			;63fe
	and d			;63ff
	cp b			;6400
	adc a,(hl)		;6401
	add a,c			;6402
	or d			;6403
	ld e,0c0h		;6404
	ld a,(l7ffdh)		;6406
	cp (hl)			;6409
	and a			;640a
	ld (hl),c		;640b
	ld a,b			;640c
	ld b,d			;640d
	ld a,a			;640e
	ld a,b			;640f
	ld a,(hl)		;6410
	ld a,h			;6411
	ld a,a			;6412
	ld a,(de)		;6413
	jp m,08ac4h		;6414
	call pe,0b980h		;6417
l641ah:
	ld a,(hl)		;641a
	ld a,a			;641b
	sbc a,d			;641c
	sbc a,b			;641d
	rst 38h			;641e
	ld e,l			;641f
	ld h,a			;6420
	rst 0			;6421
	sbc a,h			;6422
	adc a,062h		;6423
	adc a,h			;6425
	cp c			;6426
	xor 013h		;6427
	rst 38h			;6429
	ld a,l			;642a
	adc a,a			;642b
	ld (de),a		;642c
	ld hl,l6ef2h		;642d
	adc a,(hl)		;6430
	or a			;6431
	ld a,a			;6432
	xor a			;6433
	jp po,07f67h		;6434
	push af			;6437
	defb 0edh ;next byte illegal after ed	;6438
	cp 06dh			;6439
	ret z			;643b
	xor h			;643c
	pop af			;643d
	pop af			;643e
	sbc a,090h		;643f
	jp p,0ff62h		;6441
	cp l			;6444
	add hl,sp		;6445
	jp m,l7fbfh		;6446
	ld d,a			;6449
	ld e,b			;644a
	ld e,d			;644b
	and h			;644c
	xor (hl)		;644d
	add a,h			;644e
	sub l			;644f
	ld d,l			;6450
	nop			;6451
	sub c			;6452
	rst 30h			;6453
	and b			;6454
	ld hl,(0ff00h)		;6455
	ccf			;6458
	ld de,l7d43h		;6459
	ret p			;645c
sub_645dh:
	ld d,a			;645d
	rst 20h			;645e
	ccf			;645f
	ld a,a			;6460
	inc c			;6461
	rst 38h			;6462
	ld (hl),e		;6463
	rst 38h			;6464
	dec a			;6465
	ld b,a			;6466
	rst 38h			;6467
	cp h			;6468
	xor (hl)		;6469
	di			;646a
	ld a,a			;646b
	ld sp,hl		;646c
	rrca			;646d
	adc a,b			;646e
	ld (de),a		;646f
	inc b			;6470
	add a,h			;6471
	add a,b			;6472
	or e			;6473
	ld a,l			;6474
	defb 0ddh,0eah,0b5h ;illegal sequence	;6475
	sbc a,e			;6478
	sbc a,03eh		;6479
	ld a,a			;647b
	dec a			;647c
	ld a,(hl)		;647d
	cp (hl)			;647e
	ld c,b			;647f
	ld a,a			;6480
	ld c,c			;6481
l6482h:
	xor c			;6482
	ex (sp),hl		;6483
	and e			;6484
	call m,00d77h		;6485
	ld a,a			;6488
	ex de,hl		;6489
	adc a,a			;648a
	rst 38h			;648b
	inc bc			;648c
	ld c,b			;648d
	ld b,d			;648e
	ld a,a			;648f
	cp c			;6490
	adc a,l			;6491
	ret p			;6492
	ld a,h			;6493
	inc hl			;6494
	ld a,a			;6495
	adc a,a			;6496
	ld (de),a		;6497
	ld a,a			;6498
	or a			;6499
	nop			;649a
	push de			;649b
	ld (0f97fh),hl		;649c
	dec d			;649f
sub_64a0h:
	rst 30h			;64a0
	rst 0			;64a1
	call po,sub_5bf9h	;64a2
	and 082h		;64a5
	ld b,d			;64a7
	rst 38h			;64a8
	sbc a,h			;64a9
	ld d,c			;64aa
	ld (0dbfdh),hl		;64ab
	inc (hl)		;64ae
	ld a,(hl)		;64af
	ret			;64b0
	ld e,b			;64b1
	ld a,a			;64b2
	push af			;64b3
	ccf			;64b4
	ld (de),a		;64b5
	ld a,a			;64b6
	ld bc,00033h		;64b7
	pop af			;64ba
	dec h			;64bb
	ld (09ac1h),a		;64bc
	and 06bh		;64bf
	adc a,h			;64c1
	ld a,e			;64c2
	or e			;64c3
	nop			;64c4
sub_64c5h:
	rst 38h			;64c5
	adc a,l			;64c6
	inc de			;64c7
	ld c,a			;64c8
	inc (hl)		;64c9
	call m,0ff8ch		;64ca
	ld a,l			;64cd
	sub c			;64ce
	add a,0d4h		;64cf
	rst 38h			;64d1
	ld a,(hl)		;64d2
	inc (hl)		;64d3
l64d4h:
	call m,sub_7e77h	;64d4
	sub 03eh		;64d7
	ex de,hl		;64d9
	ld l,e			;64da
	ld c,c			;64db
	rst 38h			;64dc
	dec a			;64dd
	scf			;64de
	rst 38h			;64df
	cp h			;64e0
	cp e			;64e1
	ld (hl),d		;64e2
	ld sp,hl		;64e3
	ld a,a			;64e4
	jp nc,0c522h		;64e5
	defb 0ddh,0ffh,03eh ;illegal sequence	;64e8
	ld e,094h		;64eb
	ld (hl),c		;64ed
	add a,b			;64ee
	inc e			;64ef
	call pe,0bd33h		;64f0
	or l			;64f3
	ld a,a			;64f4
	ex de,hl		;64f5
	sbc a,(hl)		;64f6
	jp 0fa33h		;64f7
	ld e,h			;64fa
	sbc a,a			;64fb
	inc sp			;64fc
	ld a,a			;64fd
	ld h,l			;64fe
	call 04af8h		;64ff
	xor a			;6502
	ld a,l			;6503
	ld a,a			;6504
	ld a,(hl)		;6505
	pop hl			;6506
	pop hl			;6507
	rst 8			;6508
l6509h:
	push bc			;6509
	adc a,l			;650a
	ret p			;650b
	ld b,e			;650c
	adc a,a			;650d
	rst 38h			;650e
	xor e			;650f
	ld a,a			;6510
	add a,0b9h		;6511
	ld a,b			;6513
	ld sp,hl		;6514
	ld a,a			;6515
	inc a			;6516
	ld (hl),a		;6517
	inc a			;6518
	ld a,l			;6519
	ld a,07fh		;651a
	rst 18h			;651c
	rst 0			;651d
	rst 28h			;651e
	add a,c			;651f
	or e			;6520
	adc a,(hl)		;6521
	ld a,(de)		;6522
	sub (hl)		;6523
	add a,c			;6524
	ld h,a			;6525
	rst 38h			;6526
	pop bc			;6527
	inc (hl)		;6528
	adc a,h			;6529
	adc a,(hl)		;652a
	inc e			;652b
	ld a,(bc)		;652c
	in a,(0abh)		;652d
	inc d			;652f
	or a			;6530
	rst 0			;6531
	ld a,a			;6532
	jp p,08353h		;6533
	or (hl)			;6536
	add a,b			;6537
	push hl			;6538
	ld a,a			;6539
	rst 0			;653a
	adc a,l			;653b
	cp b			;653c
	ld (hl),c		;653d
	sub h			;653e
	ld a,a			;653f
	ld c,e			;6540
	xor c			;6541
	ld a,(de)		;6542
	or (hl)			;6543
	sub d			;6544
	and e			;6545
	xor a			;6546
	jr c,l65c8h		;6547
	ret nz			;6549
l654ah:
	sub (hl)		;654a
	xor (hl)		;654b
	cp a			;654c
	ld a,a			;654d
	dec h			;654e
	jr z,l64d4h		;654f
	dec hl			;6551
	rst 38h			;6552
	adc a,(hl)		;6553
	inc d			;6554
	call pe,0ffcdh		;6555
	ld a,b			;6558
	or l			;6559
	jr l6509h		;655a
	sbc a,(hl)		;655c
	cp e			;655d
	rst 30h			;655e
	ld sp,hl		;655f
	ld a,a			;6560
	ld a,d			;6561
	ld d,l			;6562
	rst 18h			;6563
	jr nc,l65e5h		;6564
	xor l			;6566
	sub d			;6567
	jr nc,l654ah		;6568
	add hl,hl		;656a
	ld e,l			;656b
	ld e,b			;656c
	jp z,02d82h		;656d
	ld c,e			;6570
	jp p,03f8eh		;6571
	ld a,e			;6574
	ld a,a			;6575
	ld a,a			;6576
	push af			;6577
	dec sp			;6578
	ld hl,0f27fh		;6579
	ld c,e			;657c
	cp c			;657d
	dec sp			;657e
	cp (hl)			;657f
	ex (sp),hl		;6580
	ld a,a			;6581
	rst 30h			;6582
	rst 0			;6583
	rst 38h			;6584
	sub a			;6585
l6586h:
	ld a,a			;6586
	add a,h			;6587
	add a,e			;6588
	push af			;6589
	ld a,a			;658a
	push hl			;658b
	ex af,af'		;658c
	adc a,(hl)		;658d
	ld sp,09f7fh		;658e
	adc a,b			;6591
	ld a,a			;6592
	ld (hl),l		;6593
	xor l			;6594
	jr c,$-39		;6595
	sub 05dh		;6597
	rst 38h			;6599
	or 057h			;659a
	rst 38h			;659c
	xor (hl)		;659d
	sub l			;659e
	add hl,sp		;659f
	cp e			;65a0
	ld b,e			;65a1
	ld b,e			;65a2
	adc a,07fh		;65a3
	rra			;65a5
	dec l			;65a6
	rlca			;65a7
	ld a,a			;65a8
	ld h,a			;65a9
	ld c,b			;65aa
	or e			;65ab
	inc de			;65ac
	rst 38h			;65ad
	jp 0c148h		;65ae
	cp d			;65b1
	defb 0fdh,07fh,0cfh ;illegal sequence	;65b2
	dec d			;65b5
	jr z,$+1		;65b6
	ret p			;65b8
	dec a			;65b9
	add a,c			;65ba
	ld de,0c898h		;65bb
	ld c,b			;65be
	add a,d			;65bf
	ld (hl),h		;65c0
	ld (l4209h),hl		;65c1
	ld e,a			;65c4
	jr z,l65dbh		;65c5
	or d			;65c7
l65c8h:
	jp nc,09484h		;65c8
	or a			;65cb
	ld a,a			;65cc
	adc a,c			;65cd
	sbc a,077h		;65ce
	ld a,c			;65d0
	ld b,e			;65d1
	ld a,h			;65d2
	jp nc,0ff7bh		;65d3
	ret m			;65d6
	ld de,0e3ffh		;65d7
	exx			;65da
l65dbh:
	inc l			;65db
	adc a,h			;65dc
	ld e,b			;65dd
	ld d,l			;65de
	add a,l			;65df
	ld h,c			;65e0
	ld d,(hl)		;65e1
	adc a,b			;65e2
	in a,(0dbh)		;65e3
l65e5h:
	jp (hl)			;65e5
	ld b,a			;65e6
	add a,d			;65e7
	inc h			;65e8
	jr nz,l665dh		;65e9
	ld a,a			;65eb
	ld c,b			;65ec
	jp m,027bah		;65ed
	ccf			;65f0
	pop af			;65f1
	sub h			;65f2
	dec e			;65f3
	ret m			;65f4
	inc hl			;65f5
	ld a,d			;65f6
	ld e,d			;65f7
	ld a,044h		;65f8
	nop			;65fa
	dec l			;65fb
	rst 38h			;65fc
	call m,03955h		;65fd
	out (079h),a		;6600
	cp h			;6602
	ld (l550ah),hl		;6603
	add a,h			;6606
	adc a,l			;6607
	ret po			;6608
	ld c,b			;6609
	inc hl			;660a
	add a,h			;660b
	adc a,b			;660c
	rst 38h			;660d
	xor c			;660e
	and a			;660f
	ret p			;6610
	rst 18h			;6611
	dec de			;6612
	ld a,a			;6613
	sub a			;6614
	rst 8			;6615
	sbc a,h			;6616
	cp (hl)			;6617
	ld a,a			;6618
	or l			;6619
	ld (0f8ddh),hl		;661a
	rst 38h			;661d
	ld a,a			;661e
	inc d			;661f
	inc (hl)		;6620
	rst 8			;6621
	jr l667dh		;6622
	rra			;6624
	ld a,a			;6625
	xor a			;6626
	xor (hl)		;6627
	sbc a,h			;6628
	ld b,d			;6629
	inc d			;662a
	adc a,b			;662b
	add a,l			;662c
	add a,l			;662d
	rst 38h			;662e
	ld e,c			;662f
	jp (hl)			;6630
	nop			;6631
	ld d,l			;6632
	ld b,0c9h		;6633
	ld b,e			;6635
	ld (0db47h),a		;6636
	jr c,l66b9h		;6639
	add a,d			;663b
	ld (hl),066h		;663c
	nop			;663e
	ld c,a			;663f
	inc (hl)		;6640
	rst 38h			;6641
	inc l			;6642
l6643h:
	add a,h			;6643
	and (hl)		;6644
	ld h,e			;6645
	ld a,a			;6646
	push hl			;6647
	ld a,(hl)		;6648
	ld (02e7fh),a		;6649
	xor d			;664c
	cp c			;664d
	ld a,b			;664e
	inc d			;664f
	rst 0			;6650
	add a,h			;6651
	dec a			;6652
	ld a,a			;6653
	ld de,02132h		;6654
	and c			;6657
	exx			;6658
	inc hl			;6659
	jr c,$+129		;665a
	and l			;665c
l665dh:
	dec a			;665d
	defb 0ddh,000h,0ffh ;illegal sequence	;665e
	dec a			;6661
	add hl,sp		;6662
	add a,e			;6663
	and a			;6664
	adc a,d			;6665
	rst 38h			;6666
sub_6667h:
	ret m			;6667
	sub a			;6668
	inc h			;6669
	ld a,a			;666a
	jp 00035h		;666b
	cp a			;666e
	ld a,a			;666f
	adc a,a			;6670
	rst 38h			;6671
	dec de			;6672
	nop			;6673
	ret p			;6674
	jp nz,01b46h		;6675
	ld de,000bbh		;6678
	inc a			;667b
	or c			;667c
l667dh:
	cp e			;667d
	adc a,a			;667e
	push de			;667f
	sbc a,(hl)		;6680
	ld sp,02b82h		;6681
	inc c			;6684
	cpl			;6685
	ld a,a			;6686
	ret			;6687
	add a,d			;6688
	ld de,l591bh		;6689
	ld d,0ffh		;668c
	ex de,hl		;668e
	or h			;668f
	and 000h		;6690
	dec (hl)		;6692
	inc de			;6693
	jp nz,l7fbfh		;6694
	pop hl			;6697
	dec sp			;6698
	nop			;6699
	ret m			;669a
	ld a,a			;669b
	ex (sp),hl		;669c
	sbc a,b			;669d
	dec a			;669e
	rst 38h			;669f
	jp po,0126bh		;66a0
	add a,h			;66a3
	ld a,l			;66a4
	ret			;66a5
	call nz,0feffh		;66a6
	ccf			;66a9
	nop			;66aa
	set 7,a			;66ab
	rra			;66ad
	sbc a,e			;66ae
	nop			;66af
	jp z,0b492h		;66b0
	ld (hl),083h		;66b3
	ld a,(08692h)		;66b5
	rst 38h			;66b8
l66b9h:
	cp a			;66b9
	ld e,0ffh		;66ba
	inc a			;66bc
	daa			;66bd
	rst 38h			;66be
	or 0bch			;66bf
	ld a,a			;66c1
	and e			;66c2
	add a,c			;66c3
	ld a,a			;66c4
	ld a,a			;66c5
	ld (bc),a		;66c6
	rst 38h			;66c7
	defb 0fdh,0ebh,0ffh ;illegal sequence	;66c8
	rst 30h			;66cb
	rst 18h			;66cc
	inc sp			;66cd
	pop af			;66ce
	push bc			;66cf
	ei			;66d0
	jr c,l6752h		;66d1
	call nz,0ff19h		;66d3
	ret m			;66d6
	sbc a,018h		;66d7
	ld l,a			;66d9
	ld (02b21h),hl		;66da
l66ddh:
	rst 38h			;66dd
	call m,0ffcah		;66de
	ld h,l			;66e1
	ld (de),a		;66e2
	or e			;66e3
	ld l,01bh		;66e4
	ld c,0ffh		;66e6
	cp a			;66e8
	adc a,l			;66e9
	rst 38h			;66ea
	xor (hl)		;66eb
	cp 0edh			;66ec
	call nz,0a6cbh		;66ee
	rst 38h			;66f1
	cp (hl)			;66f2
	ld h,a			;66f3
	ld (hl),l		;66f4
l66f5h:
	ld e,(hl)		;66f5
	ld a,a			;66f6
	rla			;66f7
	rst 38h			;66f8
	rst 30h			;66f9
	rst 30h			;66fa
	rst 38h			;66fb
	sub b			;66fc
	adc a,c			;66fd
l66feh:
	sub l			;66fe
l66ffh:
	add a,l			;66ff
	jp p,l777fh		;6700
	add a,h			;6703
	cp l			;6704
	ld a,a			;6705
	ld a,a			;6706
	sbc a,e			;6707
	rst 38h			;6708
	ld e,0b8h		;6709
	rst 38h			;670b
	ret m			;670c
	add hl,hl		;670d
	sub e			;670e
	rst 38h			;670f
	pop af			;6710
	ld (hl),a		;6711
	adc a,c			;6712
	ld d,0ffh		;6713
	exx			;6715
	sub l			;6716
	ld a,027h		;6717
	ld c,c			;6719
	sub d			;671a
	rst 38h			;671b
	ld a,(hl)		;671c
	ld h,a			;671d
	ld a,a			;671e
	and (hl)		;671f
l6720h:
	rst 38h			;6720
	ld a,(hl)		;6721
	dec d			;6722
	ld e,l			;6723
	nop			;6724
	jp c,0ff29h		;6725
l6728h:
	jr c,l6728h		;6728
	out (0a7h),a		;672a
	nop			;672c
	ld b,e			;672d
	add a,0b6h		;672e
	ld b,c			;6730
	cp b			;6731
	ld b,a			;6732
	ld a,(hl)		;6733
l6734h:
	sbc a,c			;6734
	ld b,018h		;6735
	rla			;6737
	ld (hl),h		;6738
	or h			;6739
	rla			;673a
	add a,h			;673b
	or b			;673c
	ld c,b			;673d
sub_673eh:
	jp pe,0ff2bh		;673e
	sbc a,(hl)		;6741
	ld d,(hl)		;6742
	ld (de),a		;6743
	push de			;6744
	dec (hl)		;6745
	rst 38h			;6746
	rst 8			;6747
	ld (hl),d		;6748
	sub c			;6749
	rst 38h			;674a
	call m,0191eh		;674b
	ld a,a			;674e
	ld c,084h		;674f
	cp h			;6751
l6752h:
	jp p,07fe1h		;6752
	ld de,08e08h		;6755
	ld sp,l637fh		;6758
	add a,b			;675b
	adc a,(hl)		;675c
	sub e			;675d
	and 0c2h		;675e
	sbc a,(hl)		;6760
	dec hl			;6761
	rst 38h			;6762
	ld (hl),b		;6763
	ret p			;6764
	ld a,e			;6765
	rst 28h			;6766
	rst 38h			;6767
	cp (hl)			;6768
	rst 38h			;6769
	inc a			;676a
	ret m			;676b
	ld d,09eh		;676c
	rst 30h			;676e
	dec (hl)		;676f
	cp h			;6770
	sbc a,h			;6771
	pop bc			;6772
	ex (sp),hl		;6773
	ld a,a			;6774
	adc a,(hl)		;6775
	nop			;6776
	ld a,b			;6777
	ld a,a			;6778
	adc a,(hl)		;6779
	add a,b			;677a
	ld a,h			;677b
	nop			;677c
	jp (hl)			;677d
	rst 38h			;677e
	jp po,01347h		;677f
	ret nz			;6782
	adc a,h			;6783
	jp nz,07fa7h		;6784
	ex (sp),hl		;6787
	ld e,e			;6788
	pop de			;6789
	ccf			;678a
	cp h			;678b
	call nc,078c0h		;678c
	ld a,h			;678f
	ld a,a			;6790
	rrca			;6791
l6792h:
	ld b,h			;6792
	ld a,a			;6793
	or d			;6794
	rst 38h			;6795
	ld e,c			;6796
	ld (hl),a		;6797
	inc hl			;6798
	ld a,d			;6799
	ret c			;679a
	ld a,l			;679b
	out (0ffh),a		;679c
	pop hl			;679e
	sub 0f9h		;679f
	ld (hl),c		;67a1
	ld h,b			;67a2
	in a,(02bh)		;67a3
	cp h			;67a5
	ld a,038h		;67a6
	jp pe,0a1c6h		;67a8
	or l			;67ab
	add hl,de		;67ac
	ld b,a			;67ad
	add a,b			;67ae
	ld d,e			;67af
	rst 38h			;67b0
	jp 07f38h		;67b1
	pop af			;67b4
	sub (hl)		;67b5
	ld c,b			;67b6
	rst 38h			;67b7
	ret m			;67b8
	pop de			;67b9
	defb 0fdh,0d7h,0b5h ;illegal sequence	;67ba
	scf			;67bd
	cp l			;67be
	ld e,e			;67bf
	ld b,h			;67c0
	cp b			;67c1
	cp 0e1h			;67c2
	ld a,(bc)		;67c4
	call z,0f582h		;67c5
	rst 38h			;67c8
	ccf			;67c9
	dec sp			;67ca
	ld b,h			;67cb
	ld (hl),h		;67cc
	add a,a			;67cd
	inc (hl)		;67ce
	ld d,l			;67cf
	add a,h			;67d0
	jp 02c56h		;67d1
	rst 38h			;67d4
	ld a,02ch		;67d5
	ei			;67d7
	ret p			;67d8
	ld b,e			;67d9
	or 0b7h			;67da
	xor l			;67dc
	cp a			;67dd
	adc a,(hl)		;67de
	ld a,a			;67df
	ld e,(hl)		;67e0
	ld c,c			;67e1
	ld hl,0891ah		;67e2
	push de			;67e5
	add a,e			;67e6
l67e7h:
	dec (hl)		;67e7
	ld a,a			;67e8
	rst 30h			;67e9
	res 0,b			;67ea
	add hl,de		;67ec
	ld d,e			;67ed
	ld a,a			;67ee
	or 0dfh			;67ef
	ret pe			;67f1
	adc a,h			;67f2
	jp m,0b7b7h		;67f3
	cp 02fh			;67f6
	ld (de),a		;67f8
	ld a,a			;67f9
	ld h,(hl)		;67fa
	sub e			;67fb
	add hl,de		;67fc
	ld b,a			;67fd
	add a,b			;67fe
sub_67ffh:
	sub a			;67ff
	ld a,a			;6800
l6801h:
	ret			;6801
	cp 01eh			;6802
	adc a,e			;6804
	ld b,e			;6805
	dec a			;6806
	jr z,l6882h		;6807
	rst 38h			;6809
	pop af			;680a
	ld a,h			;680b
	nop			;680c
	inc hl			;680d
	rst 38h			;680e
	push bc			;680f
	inc hl			;6810
	ld a,a			;6811
	ret p			;6812
	and a			;6813
	ld (0aa82h),hl		;6814
	rst 38h			;6817
	ld a,d			;6818
	ld sp,l53efh		;6819
	ld (029d5h),hl		;681c
	ld b,d			;681f
	xor a			;6820
	add a,h			;6821
	inc h			;6822
	ld a,0dfh		;6823
	dec a			;6825
	ret m			;6826
	adc a,a			;6827
	rst 38h			;6828
	pop af			;6829
	ld de,0b333h		;682a
	call nc,sub_7880h	;682d
	rst 10h			;6830
	rst 38h			;6831
l6832h:
	ret nz			;6832
	inc de			;6833
	cp (hl)			;6834
	sub h			;6835
	ex (sp),hl		;6836
	rst 18h			;6837
	ld a,(hl)		;6838
	ld a,a			;6839
	jp pe,0e7bfh		;683a
	ld a,a			;683d
	scf			;683e
	xor c			;683f
	inc hl			;6840
	rst 38h			;6841
	pop af			;6842
	inc h			;6843
	xor h			;6844
	adc a,l			;6845
	or c			;6846
	xor a			;6847
	cp 048h			;6848
	ex de,hl		;684a
	push hl			;684b
	ld b,d			;684c
	ret nc			;684d
	xor h			;684e
	ld (hl),e		;684f
	inc b			;6850
	ret nc			;6851
	ld i,a			;6852
	add a,b			;6854
	inc de			;6855
	add a,d			;6856
	in a,(058h)		;6857
	ld e,d			;6859
	pop de			;685a
	ld b,e			;685b
	ld sp,hl		;685c
	sbc a,c			;685d
	ld a,a			;685e
	cpl			;685f
	sub e			;6860
	cp a			;6861
	and h			;6862
	ld (01529h),hl		;6863
	daa			;6866
	ld d,l			;6867
	ld d,l			;6868
	rst 38h			;6869
	pop af			;686a
	ccf			;686b
	and 0aah		;686c
	add a,h			;686e
	ld (hl),e		;686f
	sub (hl)		;6870
	jp pe,00e78h		;6871
	rst 38h			;6874
	push de			;6875
	jr l6801h		;6876
	rst 10h			;6878
	inc hl			;6879
	jr l6895h		;687a
	rst 38h			;687c
	di			;687d
	ld e,d			;687e
	pop de			;687f
	rla			;6880
	ld (de),a		;6881
l6882h:
	sub h			;6882
	cp a			;6883
	sub 07fh		;6884
	sub l			;6886
	cp e			;6887
	cp e			;6888
	rst 38h			;6889
	ret m			;688a
	ld l,(hl)		;688b
	sub h			;688c
	ld a,(hl)		;688d
	ld h,e			;688e
	add a,b			;688f
	adc a,(hl)		;6890
	ld (hl),d		;6891
	ld l,a			;6892
	pop bc			;6893
	xor (hl)		;6894
l6895h:
	ex af,af'		;6895
	ld a,h			;6896
	ld a,a			;6897
	ld h,e			;6898
	add a,c			;6899
	adc a,b			;689a
	add a,b			;689b
	pop hl			;689c
	ld c,b			;689d
	rst 38h			;689e
	ld e,a			;689f
	dec (hl)		;68a0
	or b			;68a1
	dec h			;68a2
	xor c			;68a3
	inc e			;68a4
	ld h,0e2h		;68a5
	ld a,a			;68a7
	ld b,l			;68a8
	rst 38h			;68a9
	ld a,0c4h		;68aa
	add a,h			;68ac
	cp 07bh			;68ad
	ld a,(hl)		;68af
	ld a,a			;68b0
	ld e,098h		;68b1
	inc sp			;68b3
	ld a,a			;68b4
	di			;68b5
	ld (hl),033h		;68b6
	dec a			;68b8
	add a,d			;68b9
	ld (hl),0b7h		;68ba
	ld l,(hl)		;68bc
	add a,e			;68bd
	exx			;68be
	ld b,c			;68bf
	ld b,c			;68c0
	rst 38h			;68c1
	ccf			;68c2
	ld h,d			;68c3
	add a,e			;68c4
	push af			;68c5
	cp l			;68c6
	inc hl			;68c7
	add a,c			;68c8
	rst 18h			;68c9
	ld a,l			;68ca
	cp a			;68cb
	ld a,a			;68cc
	adc a,a			;68cd
	inc e			;68ce
	daa			;68cf
	rst 38h			;68d0
	ex (sp),hl		;68d1
	sbc a,h			;68d2
	ret m			;68d3
	ld a,d			;68d4
	inc sp			;68d5
	ld a,a			;68d6
	jr z,l68fah		;68d7
	ld l,0ffh		;68d9
	call m,sub_4437h	;68db
	ld a,a			;68de
	adc a,h			;68df
	add a,c			;68e0
	ld (hl),e		;68e1
	add a,l			;68e2
	inc e			;68e3
	rst 30h			;68e4
	ld de,0fed5h		;68e5
	ld (hl),d		;68e8
	rst 38h			;68e9
	rst 8			;68ea
	ld a,a			;68eb
	add a,l			;68ec
	rst 38h			;68ed
	ld a,h			;68ee
	ld a,(bc)		;68ef
	ld (0e69fh),a		;68f0
	add a,e			;68f3
	dec (hl)		;68f4
	inc sp			;68f5
	inc c			;68f6
	ld d,c			;68f7
	rst 38h			;68f8
	rst 38h			;68f9
l68fah:
	ld e,a			;68fa
	ld h,a			;68fb
	nop			;68fc
l68fdh:
	add a,(hl)		;68fd
	and 0f8h		;68fe
	rst 28h			;6900
l6901h:
	jp pe,09311h		;6901
	rst 10h			;6904
	sub a			;6905
	rst 28h			;6906
	push de			;6907
	cp c			;6908
	ld b,a			;6909
	call m,09935h		;690a
	defb 0ddh,0c0h,075h ;illegal sequence	;690d
	ld e,d			;6910
	jp (hl)			;6911
	ret m			;6912
	jr c,$+52		;6913
	sub (hl)		;6915
	adc a,038h		;6916
	ld hl,00fa3h		;6918
	or d			;691b
	daa			;691c
	rst 38h			;691d
	ex de,hl		;691e
	cp (hl)			;691f
	jp p,033cbh		;6920
	jr c,$-24		;6923
	pop af			;6925
	xor (hl)		;6926
	jp po,00038h		;6927
	or 07fh			;692a
	add a,0ffh		;692c
	ld a,(de)		;692e
	ld (0eb83h),hl		;692f
	ret nz			;6932
	ld (0fe24h),hl		;6933
	cp l			;6936
	jp nc,09f42h		;6937
	or (hl)			;693a
	ld a,a			;693b
	ld h,026h		;693c
	inc (hl)		;693e
	ld c,0f2h		;693f
	res 4,a			;6941
	ld a,a			;6943
	di			;6944
	xor (hl)		;6945
	ld (0f6ffh),hl		;6946
	call nc,0e4b0h		;6949
	xor b			;694c
	ld c,l			;694d
	ld hl,025adh		;694e
	jp nz,080cfh		;6951
	ld (l7effh),a		;6954
	cp 07fh			;6957
	cpl			;6959
	sub b			;695a
	call nz,sub_4194h	;695b
	xor 07fh		;695e
	rst 38h			;6960
	ld a,l			;6961
	or e			;6962
	rst 38h			;6963
	adc a,a			;6964
	exx			;6965
	ld (hl),b		;6966
	ld a,e			;6967
	ld c,c			;6968
	cp d			;6969
	daa			;696a
	ld b,d			;696b
	ld de,0d87fh		;696c
	adc a,l			;696f
	dec l			;6970
	ret z			;6971
	adc a,b			;6972
	rst 38h			;6973
	ret p			;6974
	dec de			;6975
	ld b,e			;6976
	ld a,a			;6977
	adc a,c			;6978
	ld e,(hl)		;6979
	inc (hl)		;697a
	ld e,c			;697b
	adc a,b			;697c
	or (hl)			;697d
	inc d			;697e
	xor a			;697f
	rst 38h			;6980
	ld e,l			;6981
	rst 8			;6982
	or l			;6983
	xor d			;6984
	xor d			;6985
	defb 0ddh,063h ;ld ixh,e	;6986
	cp c			;6988
	jp m,0e099h		;6989
	sbc a,c			;698c
	nop			;698d
	jp m,0ff14h		;698e
	call po,0b683h		;6991
	jp m,0288eh		;6994
	add a,e			;6997
	add a,c			;6998
	jp p,0f2e7h		;6999
	ld c,063h		;699c
	cp e			;699e
	pop de			;699f
	and d			;69a0
	inc (hl)		;69a1
	ld b,e			;69a2
	ld sp,hl		;69a3
	add hl,sp		;69a4
	push de			;69a5
	ld a,l			;69a6
	sub e			;69a7
	or (hl)			;69a8
	rst 30h			;69a9
	ld a,a			;69aa
	ei			;69ab
	sbc a,000h		;69ac
	dec d			;69ae
	ld e,e			;69af
	add a,c			;69b0
	rst 30h			;69b1
	ex de,hl		;69b2
	inc e			;69b3
	daa			;69b4
	add hl,sp		;69b5
	ret p			;69b6
	adc a,l			;69b7
	ld l,(hl)		;69b8
	ld b,a			;69b9
	ld c,c			;69ba
	adc a,b			;69bb
	add a,d			;69bc
	add hl,sp		;69bd
	adc a,(hl)		;69be
	ld a,(018d7h)		;69bf
	inc sp			;69c2
	ld a,a			;69c3
	ret p			;69c4
	jp (hl)			;69c5
	add a,h			;69c6
	add a,b			;69c7
	jp pe,l7cebh		;69c8
	ld a,a			;69cb
	ld a,a			;69cc
	xor l			;69cd
	adc a,(hl)		;69ce
	add a,b			;69cf
	dec (hl)		;69d0
	add a,b			;69d1
	xor (hl)		;69d2
	ld (ix-031h),c		;69d3
	adc a,e			;69d6
	dec hl			;69d7
	ld a,a			;69d8
	ld bc,l7938h		;69d9
	sub (hl)		;69dc
	ei			;69dd
	add hl,hl		;69de
l69dfh:
	ex (sp),hl		;69df
	ld (hl),l		;69e0
	xor h			;69e1
	push bc			;69e2
	inc hl			;69e3
	ld a,a			;69e4
	ei			;69e5
	pop hl			;69e6
l69e7h:
	sbc a,h			;69e7
	sbc a,b			;69e8
	adc a,h			;69e9
sub_69eah:
	add a,h			;69ea
	add a,b			;69eb
	inc l			;69ec
	call 02153h		;69ed
	in a,(070h)		;69f0
	rst 8			;69f2
	adc a,c			;69f3
	inc h			;69f4
	inc hl			;69f5
	adc a,c			;69f6
	sbc a,l			;69f7
	ld a,a			;69f8
	res 2,e			;69f9
	ld e,01dh		;69fb
	or a			;69fd
	inc l			;69fe
	ld a,a			;69ff
	xor 083h		;6a00
	add a,e			;6a02
	call z,sub_4c38h	;6a03
	sbc a,h			;6a06
	ld e,h			;6a07
	jr c,l6a5fh		;6a08
	sbc a,0dbh		;6a0a
	ld d,c			;6a0c
	inc hl			;6a0d
	sbc a,0cch		;6a0e
	add a,d			;6a10
	and l			;6a11
	add a,h			;6a12
	or e			;6a13
	ld a,a			;6a14
	ex (sp),hl		;6a15
	ret p			;6a16
	inc l			;6a17
	ld h,(hl)		;6a18
	ld a,(de)		;6a19
	xor c			;6a1a
	jr c,l69e7h		;6a1b
	add a,b			;6a1d
	rst 0			;6a1e
	rst 38h			;6a1f
	xor 086h		;6a20
	add ix,sp		;6a22
	inc sp			;6a24
	call z,0235ch		;6a25
	ld b,e			;6a28
	cp 0aeh			;6a29
	ld a,a			;6a2b
	ld a,c			;6a2c
	add a,d			;6a2d
	adc a,(hl)		;6a2e
	rld			;6a2f
	ld a,a			;6a31
	adc a,(hl)		;6a32
	ld (hl),037h		;6a33
	and d			;6a35
	adc a,a			;6a36
	ld a,h			;6a37
	inc e			;6a38
	xor d			;6a39
	rst 20h			;6a3a
	ld a,a			;6a3b
	call p,0fde7h		;6a3c
	ret z			;6a3f
	cp e			;6a40
	exx			;6a41
	inc e			;6a42
	defb 0ddh,09dh ;sbc a,ixl	;6a43
	sbc a,l			;6a45
	ld a,a			;6a46
	rst 20h			;6a47
	jp m,0fe51h		;6a48
	add a,0ffh		;6a4b
	out (06ch),a		;6a4d
	ld de,0f07fh		;6a4f
	sbc a,a			;6a52
	ld de,09fe3h		;6a53
	ld a,a			;6a56
	cp b			;6a57
	defb 0ddh,013h,0c9h ;illegal sequence	;6a58
	call z,080cch		;6a5b
	sub l			;6a5e
l6a5fh:
	defb 0fdh,091h,0feh ;illegal sequence	;6a5f
	and 023h		;6a62
	adc a,a			;6a64
	cp 01ah			;6a65
	rst 38h			;6a67
	ld b,l			;6a68
	add hl,sp		;6a69
	ld bc,0b521h		;6a6a
	ex de,hl		;6a6d
	cp e			;6a6e
	sbc a,h			;6a6f
	rst 10h			;6a70
	dec de			;6a71
	ld e,h			;6a72
	ld c,03fh		;6a73
	inc sp			;6a75
	ld a,a			;6a76
	ld l,(hl)		;6a77
	rst 38h			;6a78
	ld h,h			;6a79
	ret z			;6a7a
	rst 38h			;6a7b
	ex (sp),hl		;6a7c
	add a,h			;6a7d
	jp pe,05cb7h		;6a7e
	and h			;6a81
	ld b,h			;6a82
	cp 06ah			;6a83
	ld b,h			;6a85
	cp 03bh			;6a86
	out (081h),a		;6a88
	ld a,a			;6a8a
	cp b			;6a8b
	sub c			;6a8c
	rst 28h			;6a8d
	adc a,(hl)		;6a8e
	sbc a,b			;6a8f
	ld (hl),e		;6a90
	sub c			;6a91
	xor e			;6a92
	sbc a,h			;6a93
	cp 07eh			;6a94
	defb 0ddh,0ffh,062h ;illegal sequence	;6a96
	sbc a,h			;6a99
	ld (bc),a		;6a9a
	ld d,l			;6a9b
	add a,h			;6a9c
	ld e,(hl)		;6a9d
	defb 0fdh,0dch,0f9h ;illegal sequence	;6a9e
	ld d,c			;6aa1
	cp 08eh			;6aa2
	inc h			;6aa4
	ld l,h			;6aa5
	di			;6aa6
l6aa7h:
	ld a,(hl)		;6aa7
	ld a,a			;6aa8
	dec d			;6aa9
	add hl,hl		;6aaa
	ld bc,031ffh		;6aab
	ld a,a			;6aae
	ret			;6aaf
	sub l			;6ab0
	ld d,l			;6ab1
	nop			;6ab2
	ld a,b			;6ab3
	ld a,a			;6ab4
	rst 20h			;6ab5
	ld (0ee7fh),a		;6ab6
	ld (hl),b		;6ab9
	nop			;6aba
	adc a,c			;6abb
	ld (hl),e		;6abc
	call z,0cc7fh		;6abd
	jr l6af6h		;6ac0
	ret			;6ac2
	add hl,bc		;6ac3
	ld a,(hl)		;6ac4
	inc sp			;6ac5
	cp 01ch			;6ac6
	rst 28h			;6ac8
	rst 38h			;6ac9
	dec c			;6aca
	add hl,sp		;6acb
	ld a,a			;6acc
	ld (hl),d		;6acd
	sub e			;6ace
	call p,sub_41a3h	;6acf
	rst 38h			;6ad2
	jp po,l7ffeh		;6ad3
	ld (de),a		;6ad6
	add a,l			;6ad7
	adc a,(hl)		;6ad8
	ld a,a			;6ad9
	ld h,e			;6ada
	cp 024h			;6adb
	ld a,a			;6add
	inc (hl)		;6ade
	add a,e			;6adf
	ld h,l			;6ae0
	adc a,l			;6ae1
	ld (l7f14h),a		;6ae2
	sub h			;6ae5
	ld a,a			;6ae6
	inc hl			;6ae7
	nop			;6ae8
	rst 38h			;6ae9
	rst 38h			;6aea
	nop			;6aeb
	nop			;6aec
	ld h,b			;6aed
	nop			;6aee
	nop			;6aef
	ld a,(hl)		;6af0
	nop			;6af1
	nop			;6af2
	di			;6af3
	sbc a,c			;6af4
	nop			;6af5
l6af6h:
	rst 20h			;6af6
	ld (hl),e		;6af7
	add hl,bc		;6af8
	ld b,025h		;6af9
	sla d			;6afb
	nop			;6afd
	ld a,02fh		;6afe
	ld e,a			;6b00
	ld a,a			;6b01
	and 05eh		;6b02
	nop			;6b04
	ld e,a			;6b05
	inc h			;6b06
	ld (bc),a		;6b07
	add hl,hl		;6b08
	ex af,af'		;6b09
	dec hl			;6b0a
	ld a,a			;6b0b
	or d			;6b0c
	ld a,a			;6b0d
	ld e,e			;6b0e
	add hl,de		;6b0f
	rst 10h			;6b10
	ld a,(hl)		;6b11
	ld (hl),c		;6b12
	rst 38h			;6b13
	inc e			;6b14
	cp e			;6b15
	jr nz,l6b47h		;6b16
	inc a			;6b18
	add hl,bc		;6b19
	inc h			;6b1a
	rst 18h			;6b1b
	sub b			;6b1c
	ld a,a			;6b1d
	call z,0901ch		;6b1e
	nop			;6b21
	ld l,b			;6b22
	xor 023h		;6b23
	ld a,(hl)		;6b25
	ld b,(hl)		;6b26
	add a,b			;6b27
	ld c,e			;6b28
	add a,b			;6b29
	ld a,07fh		;6b2a
	rst 8			;6b2c
	sub b			;6b2d
	ld a,a			;6b2e
	push hl			;6b2f
	rst 28h			;6b30
	add hl,de		;6b31
	ld a,a			;6b32
	nop			;6b33
	ld (bc),a		;6b34
	sbc a,c			;6b35
	sub a			;6b36
	ld (hl),a		;6b37
	adc a,l			;6b38
	add a,b			;6b39
	sub (hl)		;6b3a
	add a,b			;6b3b
	dec a			;6b3c
	dec h			;6b3d
	cp a			;6b3e
	ld a,a			;6b3f
	sub a			;6b40
	ret			;6b41
	ld d,a			;6b42
	rst 38h			;6b43
	ld (hl),b		;6b44
	adc a,b			;6b45
	adc a,b			;6b46
l6b47h:
	ld a,e			;6b47
	cp e			;6b48
	ld c,c			;6b49
	ld a,c			;6b4a
	add hl,bc		;6b4b
	sub d			;6b4c
	add a,b			;6b4d
	ld h,d			;6b4e
	sbc a,b			;6b4f
	cp h			;6b50
	jr c,l6b78h		;6b51
	cp a			;6b53
	dec bc			;6b54
	ld a,a			;6b55
	sub l			;6b56
	ret p			;6b57
	ld a,(hl)		;6b58
	ret nc			;6b59
	ld e,a			;6b5a
	add hl,hl		;6b5b
	sub a			;6b5c
	cp e			;6b5d
	cp e			;6b5e
	ld h,e			;6b5f
	or a			;6b60
	ld a,(bc)		;6b61
	daa			;6b62
	ld a,a			;6b63
	sbc a,c			;6b64
	and h			;6b65
	ld (hl),l		;6b66
	cp 07fh			;6b67
	ld e,b			;6b69
	add hl,bc		;6b6a
	sub b			;6b6b
	ret p			;6b6c
	ld h,d			;6b6d
	sub h			;6b6e
	cp 0e4h			;6b6f
	ld a,a			;6b71
	sub d			;6b72
	ld a,e			;6b73
	sbc a,h			;6b74
	add a,b			;6b75
	cp a			;6b76
	sbc a,c			;6b77
l6b78h:
	dec e			;6b78
	dec h			;6b79
	sub a			;6b7a
	rst 38h			;6b7b
	push hl			;6b7c
	jp (hl)			;6b7d
	ld d,0feh		;6b7e
	jp pe,09887h		;6b80
	jp pe,0827fh		;6b83
	xor 07fh		;6b86
	ld a,h			;6b88
	inc sp			;6b89
	ld de,0ff90h		;6b8a
	call m,0febch		;6b8d
	ld h,h			;6b90
	call po,08777h		;6b91
	ld e,h			;6b94
	ld c,a			;6b95
	rst 38h			;6b96
	ld (de),a		;6b97
	add a,b			;6b98
	adc a,a			;6b99
	ld (hl),b		;6b9a
	cpl			;6b9b
	ld c,h			;6b9c
	ld a,h			;6b9d
	sbc a,a			;6b9e
	rst 38h			;6b9f
	push hl			;6ba0
	and l			;6ba1
	ret c			;6ba2
	daa			;6ba3
	jp po,004c7h		;6ba4
	dec hl			;6ba7
	rst 38h			;6ba8
	adc a,h			;6ba9
	ld a,a			;6baa
	adc a,(hl)		;6bab
	rst 38h			;6bac
	ld a,h			;6bad
	add hl,de		;6bae
	rra			;6baf
	sub b			;6bb0
	ld a,a			;6bb1
	set 2,e			;6bb2
	ld d,a			;6bb4
	ex (sp),hl		;6bb5
	pop hl			;6bb6
	cp 039h			;6bb7
	nop			;6bb9
	pop hl			;6bba
	ld a,a			;6bbb
	jp (hl)			;6bbc
	ei			;6bbd
	ld hl,(0cf90h)		;6bbe
	rst 38h			;6bc1
	add a,03fh		;6bc2
	ld b,h			;6bc4
	ld b,b			;6bc5
	ld a,a			;6bc6
	ccf			;6bc7
	ld a,(bc)		;6bc8
	ex (sp),hl		;6bc9
	cp e			;6bca
	nop			;6bcb
	ld a,a			;6bcc
	call 03a13h		;6bcd
	rst 18h			;6bd0
	dec c			;6bd1
	ld a,(hl)		;6bd2
	jp 0041fh		;6bd3
	ld b,(hl)		;6bd6
	ld h,(hl)		;6bd7
	ld a,a			;6bd8
	sbc a,l			;6bd9
	ld a,(bc)		;6bda
	push hl			;6bdb
	call m,02291h		;6bdc
	add hl,hl		;6bdf
	inc c			;6be0
	rst 18h			;6be1
	add a,e			;6be2
	ld h,l			;6be3
	jp m,03fbah		;6be4
	add hl,bc		;6be7
	ld a,a			;6be8
	inc d			;6be9
	ld b,(hl)		;6bea
	ld h,a			;6beb
l6bech:
	ld (060bbh),hl		;6bec
	dec b			;6bef
	ld b,l			;6bf0
	ld d,(hl)		;6bf1
	add a,l			;6bf2
	ld a,03bh		;6bf3
	ld sp,iy		;6bf5
	ld a,l			;6bf7
	ld a,a			;6bf8
	ld h,a			;6bf9
	add a,b			;6bfa
	rst 0			;6bfb
	ld a,a			;6bfc
	res 3,c			;6bfd
	jr c,l6c7fh		;6bff
	nop			;6c01
	ld a,a			;6c02
	ld a,(08370h)		;6c03
	ld h,d			;6c06
	ld d,(hl)		;6c07
	ld d,a			;6c08
	add a,l			;6c09
	scf			;6c0a
	ld a,a			;6c0b
	pop af			;6c0c
	ld e,a			;6c0d
	add hl,bc		;6c0e
	ld a,a			;6c0f
	ld a,l			;6c10
	rst 30h			;6c11
	di			;6c12
	rst 38h			;6c13
	rra			;6c14
	adc a,c			;6c15
	call m,0fe34h		;6c16
	add a,h			;6c19
	ld (hl),a		;6c1a
	ld h,h			;6c1b
	cp 048h			;6c1c
	ld h,(hl)		;6c1e
	add a,l			;6c1f
	sbc a,a			;6c20
	or (hl)			;6c21
	ld a,a			;6c22
	adc a,e			;6c23
	ei			;6c24
	cp l			;6c25
	rst 8			;6c26
	jp pe,09227h		;6c27
	add hl,hl		;6c2a
	ld a,a			;6c2b
	push bc			;6c2c
	ret m			;6c2d
	adc a,e			;6c2e
	adc a,b			;6c2f
	sbc a,h			;6c30
	ld a,(hl)		;6c31
	ld a,(hl)		;6c32
	ex af,af'		;6c33
	ld d,(hl)		;6c34
	ld h,h			;6c35
	sub h			;6c36
	add hl,bc		;6c37
	ld h,(hl)		;6c38
	ld h,(hl)		;6c39
	ld b,(hl)		;6c3a
	ld h,h			;6c3b
	ld (l7e85h),iy		;6c3c
	halt			;6c40
	ld a,a			;6c41
	ld h,05ah		;6c42
	inc hl			;6c44
	sub b			;6c45
	add a,b			;6c46
	jp nz,0adfeh		;6c47
	ld a,a			;6c4a
	ld a,h			;6c4b
	add hl,hl		;6c4c
	ld a,a			;6c4d
	add hl,de		;6c4e
	jr nz,l6c74h		;6c4f
	push bc			;6c51
	ei			;6c52
	ld a,000h		;6c53
	ld d,(hl)		;6c55
	ld h,a			;6c56
	or (hl)			;6c57
	ld b,c			;6c58
	ld b,h			;6c59
	nop			;6c5a
	ld h,(hl)		;6c5b
	ld e,c			;6c5c
	ld b,h			;6c5d
	ld d,l			;6c5e
	add a,b			;6c5f
	ld de,l6066h		;6c60
	ld a,a			;6c63
	ret m			;6c64
	ld a,0d2h		;6c65
	rst 0			;6c67
	ld c,08dh		;6c68
	cp 0b2h			;6c6a
	add hl,hl		;6c6c
	rst 20h			;6c6d
	sub (hl)		;6c6e
	ld h,l			;6c6f
	sub b			;6c70
	and b			;6c71
	ret m			;6c72
	ld a,(hl)		;6c73
l6c74h:
	ld a,a			;6c74
	add hl,bc		;6c75
	ld (hl),a		;6c76
	ld d,l			;6c77
	add a,b			;6c78
	ld hl,l5655h		;6c79
	ld a,(hl)		;6c7c
	rra			;6c7d
	ld h,l			;6c7e
l6c7fh:
	ld d,l			;6c7f
	ld a,a			;6c80
	sub b			;6c81
	sbc a,c			;6c82
	rst 30h			;6c83
	ld a,a			;6c84
	ld b,h			;6c85
	ld (022fah),hl		;6c86
	rst 8			;6c89
	adc a,l			;6c8a
	dec c			;6c8b
	ret m			;6c8c
	ld h,a			;6c8d
	ld a,a			;6c8e
	pop af			;6c8f
	xor d			;6c90
	push af			;6c91
	ld b,b			;6c92
	ld h,l			;6c93
	ld a,h			;6c94
	ld b,(hl)		;6c95
	ld a,e			;6c96
	ld d,h			;6c97
	ld b,l			;6c98
	ld b,(hl)		;6c99
	rlca			;6c9a
	cp e			;6c9b
	ld d,h			;6c9c
	ld d,l			;6c9d
	ld b,(hl)		;6c9e
	ld h,l			;6c9f
	ld a,a			;6ca0
	rst 18h			;6ca1
	ld sp,hl		;6ca2
	ld hl,(0f890h)		;6ca3
	ld a,a			;6ca6
	ld c,e			;6ca7
	ld hl,(00022h)		;6ca8
	ld a,a			;6cab
	defb 0cbh,037h ;sli a	;6cac
	jp z,l7ef5h		;6cae
	ld (hl),a		;6cb1
	ld d,b			;6cb2
	ld a,a			;6cb3
	adc a,c			;6cb4
	ld h,(hl)		;6cb5
	ld d,l			;6cb6
	add a,e			;6cb7
	ld (08169h),a		;6cb8
	add a,d			;6cbb
	ld (hl),a		;6cbc
	ld b,l			;6cbd
	add a,l			;6cbe
	inc sp			;6cbf
	ld a,a			;6cc0
	defb 0edh ;next byte illegal after ed	;6cc1
l6cc2h:
	call nc,08bf7h		;6cc2
	add a,b			;6cc5
	call nc,00927h		;6cc6
	ld a,a			;6cc9
	ret nz			;6cca
	sub d			;6ccb
	ld sp,0a2aah		;6ccc
	add a,l			;6ccf
	adc a,a			;6cd0
	ld a,a			;6cd1
	rlca			;6cd2
	sbc a,c			;6cd3
	ld a,a			;6cd4
	call z,0c305h		;6cd5
	inc bc			;6cd8
	ld d,l			;6cd9
	ld d,b			;6cda
	cp (hl)			;6cdb
	adc a,d			;6cdc
	ld (hl),l		;6cdd
	call m,0a858h		;6cde
	ei			;6ce1
	inc b			;6ce2
	ld d,l			;6ce3
	ld c,(hl)		;6ce4
	ld d,h			;6ce5
	cp 094h			;6ce6
	sub h			;6ce8
	ld h,l			;6ce9
	rst 38h			;6cea
	ld b,l			;6ceb
	add a,l			;6cec
	ld a,(bc)		;6ced
	rra			;6cee
	ld b,l			;6cef
	ld d,b			;6cf0
	ld a,a			;6cf1
	ccf			;6cf2
	jp p,0fcb5h		;6cf3
	ld e,09eh		;6cf6
	ld a,a			;6cf8
	ld (08f80h),a		;6cf9
	and d			;6cfc
	ld a,a			;6cfd
	dec hl			;6cfe
	sbc a,a			;6cff
	jp p,0ed9fh		;6d00
	ld d,h			;6d03
	ld b,l			;6d04
	ld a,h			;6d05
	dec b			;6d06
	ld d,b			;6d07
	ld h,(hl)		;6d08
	call pe,0a295h		;6d09
	inc bc			;6d0c
	add a,b			;6d0d
	and h			;6d0e
	dec de			;6d0f
	dec c			;6d10
	ld d,h			;6d11
	call p,l4488h		;6d12
	ld (hl),a		;6d15
	ld (hl),l		;6d16
	ld c,c			;6d17
	ld c,l			;6d18
	sbc a,c			;6d19
	rst 38h			;6d1a
	rlca			;6d1b
	inc hl			;6d1c
	ld h,(hl)		;6d1d
	inc c			;6d1e
	ld d,(hl)		;6d1f
	ld d,h			;6d20
	adc a,d			;6d21
	ld a,l			;6d22
	xor l			;6d23
	rst 20h			;6d24
	jp nz,l7300h		;6d25
	sub b			;6d28
	ld e,d			;6d29
	add a,c			;6d2a
	ld e,0bbh		;6d2b
	cp 0d4h			;6d2d
	ld a,l			;6d2f
	xor d			;6d30
	adc a,a			;6d31
	rst 38h			;6d32
	inc e			;6d33
	sbc a,a			;6d34
	ld (hl),h		;6d35
	sub a			;6d36
	call p,sub_4630h	;6d37
	ld b,l			;6d3a
	ld h,a			;6d3b
	ld h,(hl)		;6d3c
	dec hl			;6d3d
	ld d,b			;6d3e
	ld d,(hl)		;6d3f
	rst 20h			;6d40
	ld d,045h		;6d41
	ex de,hl		;6d43
	adc a,d			;6d44
	ld d,(hl)		;6d45
	ld (hl),h		;6d46
	ld l,(hl)		;6d47
	adc a,e			;6d48
	add a,(hl)		;6d49
	halt			;6d4a
	dec b			;6d4b
	ld h,a			;6d4c
	ld a,e			;6d4d
	ld h,l			;6d4e
	add a,c			;6d4f
	ld d,c			;6d50
	add a,h			;6d51
	ld a,(de)		;6d52
	sub h			;6d53
	ld b,h			;6d54
	ld d,054h		;6d55
	dec a			;6d57
	ld h,h			;6d58
	ld b,h			;6d59
	ld a,a			;6d5a
	call c,sub_7400h	;6d5b
	ld b,a			;6d5e
	cp 072h			;6d5f
	add a,b			;6d61
	ex de,hl		;6d62
	cp 0cdh			;6d63
	rst 0			;6d65
	cp 01fh			;6d66
	ld a,a			;6d68
	ld l,d			;6d69
	ld b,h			;6d6a
	call pe,sub_5b20h	;6d6b
	ld (hl),a		;6d6e
	ld h,(hl)		;6d6f
	ld h,h			;6d70
	add a,b			;6d71
	ld a,l			;6d72
	ld l,e			;6d73
	or a			;6d74
	ld d,h			;6d75
	ld h,a			;6d76
	ld (hl),a		;6d77
	cp e			;6d78
	sub c			;6d79
	ld (hl),a		;6d7a
	sbc a,c			;6d7b
	adc a,d			;6d7c
	xor e			;6d7d
	ld d,h			;6d7e
	ret m			;6d7f
	ex (sp),hl		;6d80
	defb 0fdh,010h,0b7h ;illegal sequence	;6d81
	ld c,c			;6d84
	ld b,(hl)		;6d85
	sub l			;6d86
	adc a,d			;6d87
	inc b			;6d88
	ld (hl),a		;6d89
l6d8ah:
	or l			;6d8a
	ld b,l			;6d8b
	ld b,l			;6d8c
	add a,b			;6d8d
	ld a,c			;6d8e
	pop af			;6d8f
	ld (hl),d		;6d90
	di			;6d91
	ld (hl),0c9h		;6d92
	xor (hl)		;6d94
	ld d,h			;6d95
	rst 0			;6d96
	add a,h			;6d97
	ld e,07fh		;6d98
	call 09922h		;6d9a
	rst 30h			;6d9d
	and h			;6d9e
	and d			;6d9f
	ret m			;6da0
	ld a,a			;6da1
	ret p			;6da2
	ex (sp),hl		;6da3
	inc h			;6da4
	ld h,h			;6da5
	cp e			;6da6
	ld a,a			;6da7
	ld h,l			;6da8
	xor 063h		;6da9
	or a			;6dab
	defb 0edh ;next byte illegal after ed	;6dac
	ex af,af'		;6dad
	ld a,a			;6dae
	ld h,l			;6daf
	ld h,h			;6db0
	ld l,l			;6db1
	ld e,c			;6db2
	ld a,a			;6db3
	ret m			;6db4
	push hl			;6db5
	ld b,0fdh		;6db6
	adc a,d			;6db8
	ld h,a			;6db9
	ld (l4559h),a		;6dba
	ld c,017h		;6dbd
	ld e,(hl)		;6dbf
	ld b,(hl)		;6dc0
	daa			;6dc1
	ld a,a			;6dc2
	adc a,a			;6dc3
	add hl,bc		;6dc4
	rst 0			;6dc5
	jp po,0c752h		;6dc6
	di			;6dc9
	rra			;6dca
	ld a,a			;6dcb
	ld e,e			;6dcc
	ld sp,hl		;6dcd
	inc sp			;6dce
	add a,b			;6dcf
	rst 0			;6dd0
	ld a,a			;6dd1
	and a			;6dd2
	nop			;6dd3
	ld a,a			;6dd4
	ret z			;6dd5
	ld b,a			;6dd6
	ld (l4565h),hl		;6dd7
	ret pe			;6dda
	call nz,l777fh		;6ddb
	nop			;6dde
	ld h,h			;6ddf
	ld b,l			;6de0
	ld b,(hl)		;6de1
	ret pe			;6de2
	add a,h			;6de3
	inc sp			;6de4
	ld d,h			;6de5
	jp p,l7d17h		;6de6
	rla			;6de9
	ld d,l			;6dea
	ei			;6deb
l6dech:
	ld c,e			;6dec
	adc a,c			;6ded
	ex af,af'		;6dee
	sub h			;6def
	add a,l			;6df0
	call nc,09077h		;6df1
	adc a,a			;6df4
	ld (hl),h		;6df5
	ld a,a			;6df6
	dec (hl)		;6df7
	sub b			;6df8
	call z,0c8efh		;6df9
	rst 28h			;6dfc
	ld d,b			;6dfd
l6dfeh:
	add a,a			;6dfe
	ld a,a			;6dff
	pop bc			;6e00
	add a,b			;6e01
	dec hl			;6e02
	add a,h			;6e03
	inc l			;6e04
	push af			;6e05
	ld a,c			;6e06
	ld a,a			;6e07
	ret p			;6e08
	xor l			;6e09
	inc b			;6e0a
	ld h,e			;6e0b
	and 0c6h		;6e0c
	ld b,l			;6e0e
	ld l,a			;6e0f
	pop af			;6e10
	ld a,a			;6e11
	ld a,c			;6e12
	and (hl)		;6e13
	ld h,a			;6e14
	ld d,l			;6e15
	rrca			;6e16
	ld h,h			;6e17
	ld a,c			;6e18
	sub c			;6e19
	ld e,b			;6e1a
	add a,d			;6e1b
	ld h,h			;6e1c
	rrca			;6e1d
	dec c			;6e1e
	ld h,l			;6e1f
	ret c			;6e20
	rra			;6e21
	add a,(hl)		;6e22
	and h			;6e23
	adc a,l			;6e24
	ld h,a			;6e25
	ld d,h			;6e26
	dec l			;6e27
	ld a,a			;6e28
	ld l,c			;6e29
	add hl,bc		;6e2a
	add a,d			;6e2b
	in a,(0f2h)		;6e2c
	ld c,b			;6e2e
	defb 0fdh,0eah,087h ;illegal sequence	;6e2f
	ld a,d			;6e32
	rst 18h			;6e33
	rst 38h			;6e34
	ld (de),a		;6e35
	add hl,hl		;6e36
	sub d			;6e37
	jp m,0e3d9h		;6e38
	inc bc			;6e3b
	ld a,a			;6e3c
	rst 20h			;6e3d
	ld d,d			;6e3e
	dec b			;6e3f
	ret c			;6e40
	exx			;6e41
	ex (sp),hl		;6e42
	ex (sp),hl		;6e43
	xor c			;6e44
	rst 28h			;6e45
	ld c,d			;6e46
	ld (hl),a		;6e47
	sub c			;6e48
	inc c			;6e49
	ld h,l			;6e4a
	add a,b			;6e4b
	xor c			;6e4c
	ld (hl),l		;6e4d
	ei			;6e4e
	jp z,0fa07h		;6e4f
	ld (hl),b		;6e52
	halt			;6e53
	halt			;6e54
	or c			;6e55
	adc a,b			;6e56
	ld c,c			;6e57
	adc a,c			;6e58
	add a,(hl)		;6e59
	add a,c			;6e5a
	ld (de),a		;6e5b
	add a,b			;6e5c
	sub (hl)		;6e5d
	add a,a			;6e5e
	sub c			;6e5f
	adc a,c			;6e60
	ld c,c			;6e61
	add a,l			;6e62
	adc a,c			;6e63
	sbc a,l			;6e64
	push af			;6e65
	ld c,e			;6e66
	ld (hl),e		;6e67
	in a,(090h)		;6e68
	sub b			;6e6a
	ld a,00dh		;6e6b
	ld a,a			;6e6d
	sbc a,082h		;6e6e
	and h			;6e70
	adc a,c			;6e71
	ld sp,hl		;6e72
	ld a,a			;6e73
	out (056h),a		;6e74
	jp p,05149h		;6e76
	ld c,c			;6e79
	ld l,e			;6e7a
	ld d,l			;6e7b
	ld e,l			;6e7c
	ld h,l			;6e7d
	ex (sp),hl		;6e7e
	add a,c			;6e7f
	ld hl,(0dd66h)		;6e80
	xor 0a4h		;6e83
	push af			;6e85
	ld a,c			;6e86
	ld c,c			;6e87
	rrca			;6e88
	add a,08ah		;6e89
	ld d,d			;6e8b
	inc hl			;6e8c
	rlca			;6e8d
	ld d,(hl)		;6e8e
	sbc a,l			;6e8f
	sub b			;6e90
	ld a,e			;6e91
	or (hl)			;6e92
	add a,088h		;6e93
	xor c			;6e95
	ret p			;6e96
	ret po			;6e97
	rst 30h			;6e98
	ld a,a			;6e99
	xor (hl)		;6e9a
	ld a,h			;6e9b
	ei			;6e9c
	push bc			;6e9d
	add a,c			;6e9e
	sbc a,l			;6e9f
	add a,e			;6ea0
	ld b,a			;6ea1
	xor c			;6ea2
	sbc a,(hl)		;6ea3
	ld l,a			;6ea4
	add hl,bc		;6ea5
	ld a,a			;6ea6
	adc a,d			;6ea7
l6ea8h:
	rst 28h			;6ea8
	jp nz,0b746h		;6ea9
	call c,09544h		;6eac
	add a,d			;6eaf
	ld h,h			;6eb0
	push hl			;6eb1
	ld h,l			;6eb2
	call po,0eb91h		;6eb3
	sub d			;6eb6
	rst 28h			;6eb7
	ld e,(hl)		;6eb8
	inc c			;6eb9
	rrca			;6eba
	jp p,l7b7eh		;6ebb
	sbc a,l			;6ebe
	rst 30h			;6ebf
	ld a,a			;6ec0
	jp p,09243h		;6ec1
	defb 0ddh,0c9h,0a9h ;illegal sequence	;6ec4
	defb 0fdh,0bah,009h ;illegal sequence	;6ec7
	ld hl,(000a9h)		;6eca
	ret nc			;6ecd
	and (hl)		;6ece
	ld (hl),a		;6ecf
	jp pe,0e17fh		;6ed0
	inc sp			;6ed3
	jp c,09604h		;6ed4
	inc b			;6ed7
	ld d,h			;6ed8
	sbc a,h			;6ed9
	push hl			;6eda
	and l			;6edb
sub_6edch:
	ld (hl),b		;6edc
	push hl			;6edd
	add hl,hl		;6ede
	rlca			;6edf
	adc a,e			;6ee0
	call nz,0f554h		;6ee1
	ld e,h			;6ee4
	rrca			;6ee5
	or c			;6ee6
	ld h,l			;6ee7
	rlca			;6ee8
	ld d,a			;6ee9
	rrca			;6eea
	pop bc			;6eeb
	ld h,l			;6eec
	ld b,(hl)		;6eed
	and d			;6eee
	add a,l			;6eef
	rrca			;6ef0
	sbc a,l			;6ef1
l6ef2h:
	ld e,c			;6ef2
	add a,a			;6ef3
	sbc a,(hl)		;6ef4
	rst 18h			;6ef5
	nop			;6ef6
	ld b,c			;6ef7
	dec c			;6ef8
	defb 0ddh,080h,016h ;illegal sequence	;6ef9
	ld a,h			;6efc
	and d			;6efd
	add hl,hl		;6efe
	cp 009h			;6eff
	ld hl,(00c29h)		;6f01
	ld (hl),b		;6f04
	and a			;6f05
	rst 30h			;6f06
	or (hl)			;6f07
	jp m,l6792h		;6f08
	ld e,h			;6f0b
	ld d,a			;6f0c
	ei			;6f0d
	ld hl,(l4adch)		;6f0e
	rst 28h			;6f11
	inc de			;6f12
	ld h,a			;6f13
	adc a,b			;6f14
	ld b,l			;6f15
	call pe,sub_6667h	;6f16
	ex de,hl		;6f19
	ld l,(hl)		;6f1a
	ld a,b			;6f1b
	rrca			;6f1c
	inc a			;6f1d
	ld d,l			;6f1e
	rrca			;6f1f
	xor d			;6f20
	rlca			;6f21
	adc a,b			;6f22
	rst 10h			;6f23
	ld (hl),l		;6f24
	adc a,d			;6f25
	call m,0009fh		;6f26
	inc l			;6f29
	jp pe,0cd86h		;6f2a
	ld a,h			;6f2d
	add a,d			;6f2e
	ld (hl),l		;6f2f
	add a,d			;6f30
	and c			;6f31
	dec c			;6f32
	ld (hl),b		;6f33
	halt			;6f34
	ex (sp),hl		;6f35
	rst 38h			;6f36
	ld c,(hl)		;6f37
	or l			;6f38
	ld d,l			;6f39
	rst 18h			;6f3a
	call nc,08ad9h		;6f3b
	ld d,(hl)		;6f3e
	jp po,044d5h		;6f3f
	adc a,c			;6f42
	sbc a,b			;6f43
	ld l,h			;6f44
	ld d,a			;6f45
	xor l			;6f46
	adc a,c			;6f47
	sub e			;6f48
	jp p,02e70h		;6f49
	sub (hl)		;6f4c
	pop af			;6f4d
	rrca			;6f4e
	cp h			;6f4f
	adc a,e			;6f50
	ld hl,(09544h)		;6f51
	adc a,(hl)		;6f54
	sbc a,a			;6f55
	inc d			;6f56
	ld d,b			;6f57
	ld a,a			;6f58
	sub b			;6f59
	sbc a,h			;6f5a
	ld c,d			;6f5b
	rst 10h			;6f5c
	add a,b			;6f5d
	jp nc,l68fdh		;6f5e
	add a,d			;6f61
	rst 0			;6f62
	sub (hl)		;6f63
	rst 38h			;6f64
	and l			;6f65
	add a,b			;6f66
l6f67h:
	rst 0			;6f67
	ret m			;6f68
	add hl,sp		;6f69
	ld l,c			;6f6a
	inc b			;6f6b
	ld h,b			;6f6c
	ld b,l			;6f6d
	sbc a,c			;6f6e
	ld d,(hl)		;6f6f
	adc a,b			;6f70
	ld b,(hl)		;6f71
	ld (bc),a		;6f72
	sub (hl)		;6f73
	ld b,h			;6f74
	and (hl)		;6f75
	ld l,a			;6f76
	adc a,l			;6f77
	or e			;6f78
	dec bc			;6f79
	ld sp,hl		;6f7a
	ld e,b			;6f7b
	ld h,l			;6f7c
	rrca			;6f7d
	sub l			;6f7e
	ld a,b			;6f7f
	ld l,e			;6f80
	rrca			;6f81
	rst 18h			;6f82
	and b			;6f83
	ld (bc),a		;6f84
	ld d,h			;6f85
	ld d,a			;6f86
	ld h,l			;6f87
	add a,l			;6f88
	ld h,040h		;6f89
	add a,(hl)		;6f8b
	cp d			;6f8c
	ld a,l			;6f8d
	ld a,a			;6f8e
	ld h,d			;6f8f
	sbc a,c			;6f90
	defb 0ddh,0b9h,0feh ;illegal sequence	;6f91
	ld a,c			;6f94
	ld e,0a2h		;6f95
	sub d			;6f97
	rst 10h			;6f98
	ld a,a			;6f99
	inc de			;6f9a
	rst 38h			;6f9b
	call po,0bc06h		;6f9c
	jp pe,l60d3h		;6f9f
	ld l,c			;6fa2
	sbc a,c			;6fa3
	ret po			;6fa4
	ld c,e			;6fa5
	xor 0cah		;6fa6
	jp pe,l641ah		;6fa8
	jp (hl)			;6fab
	and (hl)		;6fac
	ld h,l			;6fad
	ld l,e			;6fae
	jp (hl)			;6faf
	sub (hl)		;6fb0
	ld c,073h		;6fb1
	ld h,l			;6fb3
	adc a,e			;6fb4
	sub l			;6fb5
	sbc a,c			;6fb6
	adc a,c			;6fb7
	add hl,de		;6fb8
	sub e			;6fb9
	ld c,c			;6fba
	rrca			;6fbb
	or h			;6fbc
	ld hl,08b84h		;6fbd
	sub l			;6fc0
	cpl			;6fc1
	adc a,h			;6fc2
	ld b,h			;6fc3
	ld d,(hl)		;6fc4
	add a,d			;6fc5
	cp 02ah			;6fc6
	inc c			;6fc8
	ld h,e			;6fc9
	dec h			;6fca
	call 0fedbh		;6fcb
	adc a,c			;6fce
	cp 08bh			;6fcf
	sbc a,h			;6fd1
	ld a,l			;6fd2
	ld sp,hl		;6fd3
	ld (hl),c		;6fd4
	add a,0afh		;6fd5
	ret p			;6fd7
	jp m,0d592h		;6fd8
	rst 10h			;6fdb
	jr c,l6f67h		;6fdc
	ld h,b			;6fde
	sbc a,c			;6fdf
	sub (hl)		;6fe0
	rst 20h			;6fe1
	and e			;6fe2
	ld d,l			;6fe3
	ld b,l			;6fe4
	ld e,c			;6fe5
	add a,(hl)		;6fe6
	xor b			;6fe7
	adc a,c			;6fe8
	ret nc			;6fe9
	ld h,a			;6fea
	ld (hl),h		;6feb
	ld d,a			;6fec
	or l			;6fed
	call 0c2fdh		;6fee
	defb 0edh ;next byte illegal after ed	;6ff1
	sub c			;6ff2
	ld (hl),d		;6ff3
	inc bc			;6ff4
	adc a,d			;6ff5
	jp p,05a78h		;6ff6
	ld d,l			;6ff9
	sbc a,a			;6ffa
	jr nz,l7051h		;6ffb
	ld l,0b6h		;6ffd
	ld e,c			;6fff
	ld e,c			;7000
	ld d,l			;7001
	call nc,0af8bh		;7002
l7005h:
	add a,e			;7005
	push bc			;7006
	pop bc			;7007
	ld a,a			;7008
	sbc a,l			;7009
	rst 10h			;700a
	exx			;700b
	rst 38h			;700c
	dec de			;700d
	cp 033h			;700e
	dec l			;7010
	ld a,a			;7011
	jp z,03cffh		;7012
	dec d			;7015
	ld b,h			;7016
	call z,sub_609dh	;7017
	inc e			;701a
	sbc a,c			;701b
	ld d,h			;701c
	jp p,0948bh		;701d
	add a,a			;7020
	or d			;7021
	cp 0b3h			;7022
	rlca			;7024
	rst 30h			;7025
	ld c,b			;7026
	ld (hl),l		;7027
	ld a,e			;7028
	rst 38h			;7029
	ret			;702a
	ex de,hl		;702b
	ld c,d			;702c
	sub b			;702d
	ld c,h			;702e
	rrca			;702f
	rl b			;7030
	rrca			;7032
	sub e			;7033
	ld d,c			;7034
	ld h,h			;7035
	scf			;7036
	xor h			;7037
	ld b,l			;7038
	and l			;7039
	exx			;703a
	add a,c			;703b
	call m,02b48h		;703c
	sbc a,h			;703f
	defb 0ddh,06ch ;ld ixl,ixh	;7040
	or d			;7042
	ld a,a			;7043
	cp 093h			;7044
	cp 078h			;7046
	ld a,a			;7048
	rst 18h			;7049
	cp b			;704a
	ld d,l			;704b
	ei			;704c
	sub a			;704d
	ret nc			;704e
	halt			;704f
	ld h,b			;7050
l7051h:
	ld l,c			;7051
	xor d			;7052
	add a,d			;7053
	add a,e			;7054
	rst 8			;7055
	or 012h			;7056
	sub h			;7058
	ld h,a			;7059
	ld e,c			;705a
	rlca			;705b
	daa			;705c
	ld d,h			;705d
	ld b,l			;705e
	rla			;705f
	ld (hl),a		;7060
	add a,d			;7061
	inc hl			;7062
	halt			;7063
	call m,09657h		;7064
	sub a			;7067
	inc bc			;7068
	ld a,h			;7069
	and d			;706a
	cp d			;706b
	jr l7005h		;706c
	call 0a537h		;706e
	ld d,e			;7071
	or a			;7072
	ld h,l			;7073
	ld a,a			;7074
	pop af			;7075
	ld l,b			;7076
	add a,b			;7077
	ld h,b			;7078
	ld a,l			;7079
	inc b			;707a
	sbc a,l			;707b
	ld (l7ccdh),hl		;707c
	rst 10h			;707f
	ld a,a			;7080
	ld b,b			;7081
	inc b			;7082
	cp e			;7083
	or a			;7084
	ld (hl),h		;7085
	sub l			;7086
	rst 28h			;7087
l7088h:
	ld h,b			;7088
	ld e,(hl)		;7089
	ld d,d			;708a
	ld h,l			;708b
	inc d			;708c
	ld b,(hl)		;708d
	inc b			;708e
	ld d,c			;708f
	sub (hl)		;7090
	ld c,08ch		;7091
	ld e,c			;7093
	rst 28h			;7094
	ld a,a			;7095
	xor c			;7096
	ld h,h			;7097
	ex de,hl		;7098
	ld (08591h),hl		;7099
	ld (de),a		;709c
	ld (hl),a		;709d
	ld h,a			;709e
	ld h,h			;709f
	sbc a,a			;70a0
	jp po,09959h		;70a1
	ld l,l			;70a4
	ld a,a			;70a5
	add a,005h		;70a6
	ld h,a			;70a8
	add a,h			;70a9
	ld c,a			;70aa
	cp e			;70ab
	ld a,a			;70ac
	jp 0c953h		;70ad
	add a,b			;70b0
	ld l,b			;70b1
	inc l			;70b2
	add a,(hl)		;70b3
	sbc a,a			;70b4
	sub h			;70b5
	ld a,a			;70b6
	dec bc			;70b7
	ld b,0f9h		;70b8
	ld hl,l4946h		;70ba
	sub (hl)		;70bd
	ld h,b			;70be
	sub 0deh		;70bf
	sub c			;70c1
	ld a,a			;70c2
	or (hl)			;70c3
	ld c,c			;70c4
	ld e,l			;70c5
	jr nc,l710eh		;70c6
	ld a,a			;70c8
	ld a,e			;70c9
	ld (hl),h		;70ca
	xor a			;70cb
	rlca			;70cc
	push af			;70cd
	inc hl			;70ce
	sbc a,c			;70cf
	add hl,hl		;70d0
	rlca			;70d1
	sub (hl)		;70d2
	ld (08c1eh),a		;70d3
	sub d			;70d6
	rrca			;70d7
	ld h,049h		;70d8
	sub h			;70da
	xor c			;70db
	ld c,l			;70dc
sub_70ddh:
	ld c,e			;70dd
	xor l			;70de
	sbc a,h			;70df
	sbc a,c			;70e0
	ld de,l7b87h		;70e1
	ld h,b			;70e4
	ld a,a			;70e5
	jp po,09cadh		;70e6
	add a,c			;70e9
	add a,b			;70ea
	call 0dd7bh		;70eb
	ld b,b			;70ee
	ret m			;70ef
	ld a,a			;70f0
	ld d,l			;70f1
	ld b,a			;70f2
	call c,0d095h		;70f3
	add hl,sp		;70f6
	sbc a,c			;70f7
	ld h,b			;70f8
	sub d			;70f9
	jp m,l49d8h		;70fa
	push de			;70fd
	xor b			;70fe
	add a,(hl)		;70ff
	xor c			;7100
	add hl,bc		;7101
	ld a,a			;7102
	defb 0fdh,0aah,014h ;illegal sequence	;7103
	djnz l7088h		;7106
	or c			;7108
	ld b,h			;7109
	cp 088h			;710a
	ld b,h			;710c
	rst 8			;710d
l710eh:
	rrca			;710e
	add a,a			;710f
	ld e,c			;7110
	ld a,a			;7111
	sbc a,c			;7112
	xor e			;7113
	add hl,sp		;7114
	adc a,(hl)		;7115
	ei			;7116
	and c			;7117
	call pe,sub_7417h	;7118
	ld d,b			;711b
	add a,b			;711c
	ret m			;711d
	sub d			;711e
	ld a,d			;711f
	ld a,c			;7120
	rst 38h			;7121
	ld (hl),b		;7122
	defb 0ddh,0b7h,03eh ;illegal sequence	;7123
	call c,sub_7f00h	;7126
	dec b			;7129
	inc b			;712a
	ei			;712b
	ld (hl),e		;712c
	ex (sp),hl		;712d
	sub a			;712e
	ld h,b			;712f
	ld (de),a		;7130
	ld a,d			;7131
	sub l			;7132
	ld d,a			;7133
	sub d			;7134
	sbc a,0f4h		;7135
	sub d			;7137
	sub b			;7138
	ld c,d			;7139
	nop			;713a
	ex af,af'		;713b
	di			;713c
	sub e			;713d
	pop af			;713e
	ld (hl),d		;713f
	adc a,a			;7140
	xor (hl)		;7141
	push af			;7142
	sbc a,07fh		;7143
	ld (hl),0a3h		;7145
	ret nc			;7147
	adc a,e			;7148
	sub h			;7149
	ld b,l			;714a
	ld h,b			;714b
	ld b,(hl)		;714c
	ld a,a			;714d
	ld a,e			;714e
	ld a,c			;714f
	ld d,h			;7150
	rl (hl)			;7151
	add a,c			;7153
	ld (hl),c		;7154
	ld (hl),c		;7155
	inc c			;7156
	ret pe			;7157
	nop			;7158
	ld e,e			;7159
l715ah:
	add a,b			;715a
	rst 8			;715b
	ei			;715c
	inc (hl)		;715d
	add a,b			;715e
	call po,089feh		;715f
	cp l			;7162
	cp 0adh			;7163
	rst 38h			;7165
	ret po			;7166
	call nz,08cf9h		;7167
	jp po,l60f0h		;716a
	sbc a,c			;716d
	di			;716e
	ld h,l			;716f
	rst 38h			;7170
	ld h,h			;7171
	adc a,e			;7172
	sbc a,h			;7173
	sbc a,02fh		;7174
	sub h			;7176
	inc c			;7177
	pop af			;7178
	jr z,l71e7h		;7179
	defb 0edh ;next byte illegal after ed	;717b
	and h			;717c
	jp p,08a8ch		;717d
	ld (hl),06bh		;7180
	or a			;7182
	sbc a,b			;7183
	call po,092feh		;7184
	sub a			;7187
	sbc a,a			;7188
sub_7189h:
	adc a,e			;7189
	and h			;718a
	ld c,e			;718b
	sub l			;718c
	exx			;718d
	sbc a,l			;718e
	ld c,b			;718f
	sbc a,e			;7190
	rst 8			;7191
	ld a,a			;7192
	ld (de),a		;7193
	ld (bc),a		;7194
	dec h			;7195
	xor c			;7196
	ld sp,08020h		;7197
	ld e,a			;719a
	ld a,082h		;719b
	sub e			;719d
	inc bc			;719e
	dec l			;719f
	adc a,b			;71a0
	add a,a			;71a1
	ret nz			;71a2
	ld a,a			;71a3
	jp nz,0b254h		;71a4
	ex de,hl		;71a7
l71a8h:
	call z,sub_60efh	;71a8
	inc b			;71ab
	cp e			;71ac
	call nc,0bb45h		;71ad
	ld (hl),a		;71b0
	rst 38h			;71b1
	ld l,d			;71b2
	or a			;71b3
	add a,a			;71b4
	ld c,d			;71b5
	ld l,b			;71b6
	or 051h			;71b7
	sub h			;71b9
	rrca			;71ba
	add hl,sp		;71bb
	ld d,l			;71bc
	xor 028h		;71bd
	rrca			;71bf
	sbc a,c			;71c0
	and d			;71c1
	ei			;71c2
	sbc a,d			;71c3
	add a,a			;71c4
	sub h			;71c5
	pop de			;71c6
	cp e			;71c7
	sbc a,l			;71c8
	ld hl,(09544h)		;71c9
	sbc a,l			;71cc
	ld e,b			;71cd
	sub h			;71ce
	inc hl			;71cf
	xor c			;71d0
	halt			;71d1
	ld h,h			;71d2
	dec h			;71d3
	ld b,h			;71d4
	ld de,l5500h		;71d5
	djnz l715ah		;71d8
	call m,0c9adh		;71da
	add a,d			;71dd
	ld h,c			;71de
	call 03e7fh		;71df
	nop			;71e2
	ld a,a			;71e3
	ld a,(de)		;71e4
	rst 0			;71e5
	xor d			;71e6
l71e7h:
	ld d,l			;71e7
	rst 18h			;71e8
	cp e			;71e9
	ld h,b			;71ea
	ld c,l			;71eb
	ld (hl),a		;71ec
	call c,sub_5e02h	;71ed
	add a,e			;71f0
	add hl,hl		;71f1
	ld h,a			;71f2
	add a,h			;71f3
	inc hl			;71f4
	ld a,e			;71f5
	ld h,a			;71f6
	or l			;71f7
	ld h,c			;71f8
	dec d			;71f9
	ld (hl),a		;71fa
	ld e,0eah		;71fb
	and l			;71fd
sub_71feh:
	ret m			;71fe
	sub l			;71ff
	rrca			;7200
	sbc a,h			;7201
	and a			;7202
	adc a,e			;7203
	and d			;7204
	ld (hl),a		;7205
	sbc a,l			;7206
	ld d,(hl)		;7207
	sub l			;7208
	ld c,h			;7209
	and (hl)		;720a
	sub c			;720b
	ld b,l			;720c
	and a			;720d
	ld d,a			;720e
	dec l			;720f
	add a,c			;7210
	ret c			;7211
	ld (l7751h),hl		;7212
	adc a,a			;7215
	ld a,a			;7216
	dec d			;7217
	ld d,c			;7218
	ld a,a			;7219
	sub a			;721a
	jp m,l7ca8h		;721b
	cp c			;721e
	sub d			;721f
	sbc a,a			;7220
	ld a,(hl)		;7221
	ret nc			;7222
	ld a,a			;7223
	ld (de),a		;7224
	ld b,(hl)		;7225
	ld d,c			;7226
	ld h,a			;7227
	ld c,c			;7228
	ld h,h			;7229
	ld h,b			;722a
	ld d,c			;722b
	call nc,0d44ch		;722c
	ld d,a			;722f
	ld c,l			;7230
	ld (hl),h		;7231
	ret po			;7232
	ex (sp),hl		;7233
	ld (hl),d		;7234
	ld h,h			;7235
	ex (sp),hl		;7236
	jp nc,045e3h		;7237
	ld d,l			;723a
	ld a,(de)		;723b
	ld sp,hl		;723c
	cp e			;723d
	sbc a,l			;723e
	ret m			;723f
	ld b,h			;7240
	ex (sp),hl		;7241
	defb 0fdh,0f4h,04ah ;illegal sequence	;7242
	cp 024h			;7245
	and d			;7247
	ld c,d			;7248
	ld l,c			;7249
	sbc a,l			;724a
	jp pe,l6aa7h		;724b
	and l			;724e
	ld b,h			;724f
	ld a,a			;7250
	ld d,l			;7251
	ld h,h			;7252
	ex (sp),hl		;7253
	call p,0a325h		;7254
	ld (01fffh),hl		;7257
	ld d,l			;725a
	ld a,a			;725b
	ld hl,(08041h)		;725c
	ld (hl),c		;725f
	ld a,c			;7260
	ld a,a			;7261
	ld d,c			;7262
	xor (iy+069h)		;7263
	ld a,a			;7266
	ret p			;7267
	defb 0edh ;next byte illegal after ed	;7268
	call pe,027f4h		;7269
	ld h,b			;726c
	ld h,h			;726d
	ld b,h			;726e
	ld e,c			;726f
	add a,(hl)		;7270
	ld b,(hl)		;7271
	or a			;7272
	halt			;7273
	ld e,b			;7274
	inc d			;7275
	ld b,(hl)		;7276
	ld l,c			;7277
	ld a,(de)		;7278
	ei			;7279
	sub e			;727a
	jp (hl)			;727b
	sub e			;727c
	rrca			;727d
	ld b,l			;727e
	rst 30h			;727f
	or d			;7280
	rst 30h			;7281
	pop de			;7282
	ld b,l			;7283
	sub h			;7284
	ld hl,0b6bbh		;7285
	sbc a,h			;7288
	ld h,d			;7289
	sub l			;728a
	ld l,096h		;728b
	sbc a,l			;728d
	jp po,l76a2h		;728e
	sub h			;7291
	ld a,a			;7292
	nop			;7293
	ld b,(hl)		;7294
	ld d,a			;7295
	cp 0c7h			;7296
	rst 38h			;7298
	jp z,0aa44h		;7299
	cp a			;729c
	add a,b			;729d
	ld d,b			;729e
	res 3,h			;729f
	adc a,a			;72a1
	ld a,a			;72a2
	dec hl			;72a3
	or (hl)			;72a4
	ld a,a			;72a5
	ld l,000h		;72a6
	xor c			;72a8
	ld h,e			;72a9
	add a,d			;72aa
	and d			;72ab
	add a,0edh		;72ac
	ld h,b			;72ae
	ld (hl),l		;72af
	ei			;72b0
	daa			;72b1
	call m,sub_4962h	;72b2
	sub a			;72b5
	sub l			;72b6
	ld d,l			;72b7
	rst 38h			;72b8
	inc d			;72b9
	sub c			;72ba
	call nc,09292h		;72bb
	ld a,l			;72be
	ld h,h			;72bf
	defb 0edh ;next byte illegal after ed	;72c0
	dec h			;72c1
	ld d,l			;72c2
	inc b			;72c3
	jp p,0f049h		;72c4
	and h			;72c7
	rst 38h			;72c8
	ld d,c			;72c9
	and c			;72ca
	dec h			;72cb
	sub l			;72cc
	sbc a,l			;72cd
	cp h			;72ce
	inc b			;72cf
	ld (hl),h		;72d0
	ld b,l			;72d1
	ld a,a			;72d2
	ld (bc),a		;72d3
	dec d			;72d4
	rla			;72d5
	ld (hl),c		;72d6
	ld (01f80h),hl		;72d7
	ld de,l7e52h		;72da
	inc e			;72dd
	ld a,(l6094h)		;72de
	ld l,c			;72e1
	ld a,a			;72e2
	sub d			;72e3
	call z,0bccch		;72e4
	ccf			;72e7
	ld a,a			;72e8
	ld a,e			;72e9
	ex af,af'		;72ea
	or h			;72eb
	pop de			;72ec
	and h			;72ed
	call nc,sub_60edh	;72ee
	ld c,c			;72f1
	sbc a,087h		;72f2
	ret p			;72f4
	dec h			;72f5
	exx			;72f6
	dec d			;72f7
	ld e,b			;72f8
	adc a,b			;72f9
	sub c			;72fa
	add a,b			;72fb
	sub e			;72fc
	jp (hl)			;72fd
	or d			;72fe
	sub l			;72ff
l7300h:
	ld e,d			;7300
	inc bc			;7301
	adc a,b			;7302
	sbc a,c			;7303
	rrca			;7304
	and a			;7305
	ld a,h			;7306
	ld b,h			;7307
	ld a,(de)		;7308
	ld c,c			;7309
	ld d,h			;730a
	or 0e4h			;730b
	sbc a,l			;730d
	xor (hl)		;730e
	xor l			;730f
	ld (0ff45h),hl		;7310
	ld a,d			;7313
	dec e			;7314
	dec b			;7315
	ld (hl),a		;7316
	ld (de),a		;7317
	ret po			;7318
	add a,a			;7319
	ld d,c			;731a
	ld (de),a		;731b
	ld a,(hl)		;731c
	jp nz,0d604h		;731d
	ccf			;7320
	ld c,c			;7321
	ld a,a			;7322
	ld a,(bc)		;7323
	ret			;7324
	sbc a,h			;7325
	call z,0803fh		;7326
	ld l,e			;7329
	defb 0fdh,0eeh,0feh ;illegal sequence	;732a
	ld e,d			;732d
	and l			;732e
	rst 38h			;732f
	set 2,l			;7330
	ld h,b			;7332
	or h			;7333
	ld h,a			;7334
	adc a,h			;7335
	sub a			;7336
	ld a,a			;7337
	pop hl			;7338
	ld de,0bcdch		;7339
	push af			;733c
	adc a,c			;733d
	ld e,c			;733e
	jp (hl)			;733f
	in a,(01dh)		;7340
	push af			;7342
	xor b			;7343
	ret nz			;7344
	and d			;7345
	sbc a,(hl)		;7346
	xor h			;7347
	dec e			;7348
	ld de,l62a7h		;7349
	rst 30h			;734c
	adc a,d			;734d
	inc c			;734e
	adc a,b			;734f
	ret pe			;7350
	sbc a,h			;7351
	push bc			;7352
	ld d,h			;7353
	rst 38h			;7354
	add hl,sp		;7355
	ld l,001h		;7356
	adc a,l			;7358
	jp m,0327fh		;7359
	ccf			;735c
	add a,c			;735d
	push af			;735e
	or l			;735f
	ccf			;7360
	cp (hl)			;7361
	ld a,a			;7362
	ld (0df87h),a		;7363
	adc a,064h		;7366
	ld e,c			;7368
	ld d,h			;7369
	jp pe,0aa60h		;736a
	cpl			;736d
	sub 0cah		;736e
	ld e,b			;7370
	xor (hl)		;7371
	inc l			;7372
	sub c			;7373
	ld h,e			;7374
	call po,0e952h		;7375
	ld l,e			;7378
	rrca			;7379
	sub a			;737a
	jp nc,l4987h		;737b
	and d			;737e
	ld l,088h		;737f
l7381h:
	xor c			;7381
	rrca			;7382
	ld l,(hl)		;7383
	adc a,a			;7384
	adc a,e			;7385
	ld l,e			;7386
	ld d,l			;7387
	xor e			;7388
	and l			;7389
	sbc a,l			;738a
	adc a,b			;738b
	and l			;738c
	exx			;738d
	cp d			;738e
	add hl,sp		;738f
	ld h,l			;7390
	ld e,007h		;7391
sub_7393h:
	cp c			;7393
	add hl,hl		;7394
	or (hl)			;7395
	ld a,025h		;7396
	ld a,a			;7398
	ld a,03fh		;7399
	jr l73e6h		;739b
	ld a,a			;739d
	or (hl)			;739e
	pop hl			;739f
	ccf			;73a0
	nop			;73a1
	ld a,(hl)		;73a2
	jp nc,0ff00h		;73a3
	ld a,h			;73a6
	ld sp,08ef6h		;73a7
	ld h,b			;73aa
	cp b			;73ab
	jp nc,06448h		;73ac
	cpl			;73af
	ld (hl),l		;73b0
	adc a,d			;73b1
	xor c			;73b2
	ret c			;73b3
	inc h			;73b4
	exx			;73b5
	adc a,c			;73b6
	jp (hl)			;73b7
	ld a,e			;73b8
	jp (hl)			;73b9
	add hl,sp		;73ba
	jp pe,01e95h		;73bb
	ld b,b			;73be
	dec bc			;73bf
	ld h,a			;73c0
	ld l,c			;73c1
	ld h,(hl)		;73c2
	adc a,b			;73c3
	call z,sub_4924h	;73c4
	ld h,h			;73c7
	ld b,054h		;73c8
	sub h			;73ca
	ld (de),a		;73cb
	ld b,(hl)		;73cc
	sbc a,l			;73cd
	cp h			;73ce
	ld a,a			;73cf
	ld a,(sub_7f64h)	;73d0
	inc c			;73d3
	or d			;73d4
	ld (de),a		;73d5
	sub h			;73d6
	ld d,d			;73d7
	add a,d			;73d8
	cpl			;73d9
	rst 38h			;73da
	jp po,l456bh		;73db
	ccf			;73de
	ld e,c			;73df
	ld a,a			;73e0
	inc e			;73e1
	add a,03fh		;73e2
	ld (hl),h		;73e4
	ld (hl),a		;73e5
l73e6h:
	nop			;73e6
	ld a,b			;73e7
	sub b			;73e8
	ld a,a			;73e9
	or l			;73ea
	halt			;73eb
	rst 10h			;73ec
	ld a,c			;73ed
	ld h,b			;73ee
	xor d			;73ef
	ld c,a			;73f0
	jp m,l6cc2h		;73f1
	or l			;73f4
	ld d,h			;73f5
	sbc a,072h		;73f6
	defb 0fdh,042h,096h ;illegal sequence	;73f8
	ld h,a			;73fb
	jp (hl)			;73fc
	ld (hl),d		;73fd
	ret pe			;73fe
	inc h			;73ff
sub_7400h:
	ld d,h			;7400
	sbc a,l			;7401
	ex de,hl		;7402
	sub h			;7403
	jp p,01852h		;7404
	ld e,(hl)		;7407
	ld d,h			;7408
	and d			;7409
	ret z			;740a
	and l			;740b
	halt			;740c
	ld c,e			;740d
	sub (hl)		;740e
	sbc a,l			;740f
	inc e			;7410
	sbc a,e			;7411
	ld a,(hl)		;7412
	or c			;7413
	ld h,e			;7414
	ld h,d			;7415
	ld d,l			;7416
sub_7417h:
	add a,h			;7417
	adc a,c			;7418
	ld a,a			;7419
	or a			;741a
	ld a,a			;741b
	add hl,bc		;741c
	ld h,l			;741d
	ld de,0f520h		;741e
	ld (hl),b		;7421
	sbc a,l			;7422
	ld (00940h),a		;7423
	ld (hl),c		;7426
	ccf			;7427
	or b			;7428
	ex de,hl		;7429
	ccf			;742a
	call nz,0e4dbh		;742b
	add a,b			;742e
	ld a,b			;742f
	ld b,a			;7430
	add a,e			;7431
	rrca			;7432
	ld h,(hl)		;7433
	rst 18h			;7434
	ld e,(hl)		;7435
	ld h,b			;7436
	and l			;7437
	call m,sub_5513h	;7438
	rst 28h			;743b
	ld d,d			;743c
	ld h,081h		;743d
	ld b,l			;743f
	or b			;7440
	inc de			;7441
	dec a			;7442
	ld h,h			;7443
	defb 0fdh,06ch ;ld iyl,iyh	;7444
	rrca			;7446
l7447h:
	ld de,010b9h		;7447
	push af			;744a
	inc sp			;744b
	rlca			;744c
	rrca			;744d
	ld h,a			;744e
	xor h			;744f
	rla			;7450
	ld b,h			;7451
	add a,d			;7452
	sub d			;7453
	sbc a,l			;7454
	adc a,c			;7455
	halt			;7456
	add a,h			;7457
	or d			;7458
	dec sp			;7459
	ld a,h			;745a
	ld b,(hl)		;745b
	dec b			;745c
	adc a,h			;745d
	ld bc,0b101h		;745e
	dec hl			;7461
	ld h,h			;7462
	sub c			;7463
	ld d,a			;7464
	ld a,a			;7465
	add a,088h		;7466
	call po,sub_548fh	;7468
	inc de			;746b
	and (hl)		;746c
	add a,l			;746d
	ld b,b			;746e
	inc b			;746f
	and (hl)		;7470
	ld de,03d84h		;7471
	ld d,h			;7474
	ccf			;7475
	ld d,d			;7476
	ld d,(hl)		;7477
	cp 0d5h			;7478
	cp 02fh			;747a
	ld a,a			;747c
	ld d,0edh		;747d
	ld e,d			;747f
	xor 039h		;7480
	sub a			;7482
	jr nz,l74fdh		;7483
	sub h			;7485
	defb 0fdh,095h ;sub iyl	;7486
	sub e			;7488
	ret po			;7489
	sbc a,0b3h		;748a
	jp p,08dd2h		;748c
	ld b,e			;748f
	ld a,c			;7490
	sub h			;7491
	rst 28h			;7492
	ld d,c			;7493
	ld a,e			;7494
	sbc a,(hl)		;7495
	ld e,c			;7496
	cp 0a8h			;7497
	ld h,l			;7499
	xor (hl)		;749a
	ld a,(de)		;749b
	ld b,h			;749c
	rrca			;749d
	dec de			;749e
	ld d,h			;749f
	xor l			;74a0
	ld d,d			;74a1
	sbc a,(hl)		;74a2
	call nz,09685h		;74a3
	outi			;74a6
	ld a,b			;74a8
	ld h,a			;74a9
	cp h			;74aa
	ld d,b			;74ab
	and l			;74ac
	xor e			;74ad
	nop			;74ae
	ld (bc),a		;74af
	ld a,e			;74b0
	ld (de),a		;74b1
	halt			;74b2
	ld d,c			;74b3
	ld (hl),c		;74b4
	ld de,l4a00h		;74b5
	jr nz,l7447h		;74b8
	dec b			;74ba
	ld d,c			;74bb
	rla			;74bc
	ld (hl),a		;74bd
	jr nz,l7539h		;74be
	ret c			;74c0
	ld c,c			;74c1
	add a,e			;74c2
	ld (de),a		;74c3
	or (hl)			;74c4
	sbc a,h			;74c5
	daa			;74c6
	ld h,l			;74c7
	ccf			;74c8
	xor d			;74c9
	ld (hl),a		;74ca
	call m,0be38h		;74cb
	add a,(hl)		;74ce
	ld d,c			;74cf
	add hl,bc		;74d0
	rst 38h			;74d1
	rst 0			;74d2
	rst 18h			;74d3
	or c			;74d4
	jr nz,$-107		;74d5
	sbc a,e			;74d7
	ld d,c			;74d8
	rst 30h			;74d9
	xor b			;74da
	ld b,l			;74db
	dec c			;74dc
	call nc,055c8h		;74dd
	sbc a,d			;74e0
	pop hl			;74e1
	adc a,d			;74e2
	sub c			;74e3
	cp e			;74e4
	and 014h		;74e5
	adc a,e			;74e7
	and h			;74e8
	or e			;74e9
	ld e,e			;74ea
	ld e,a			;74eb
	or 044h			;74ec
	ld b,h			;74ee
	or a			;74ef
	ld l,(hl)		;74f0
	ld e,c			;74f1
	rrca			;74f2
	ld (hl),h		;74f3
	ld a,l			;74f4
	xor l			;74f5
	ld de,0b696h		;74f6
	add a,059h		;74f9
	ld b,(hl)		;74fb
l74fch:
	xor h			;74fc
l74fdh:
	ld (hl),d		;74fd
	cp h			;74fe
	nop			;74ff
	nop			;7500
	ld d,c			;7501
	or d			;7502
	cp e			;7503
	dec d			;7504
	ld (hl),c		;7505
	ld (de),a		;7506
	call p,00081h		;7507
	dec b			;750a
	ld b,l			;750b
	ld de,0bb17h		;750c
	ld (hl),d		;750f
	sub (hl)		;7510
	ld h,h			;7511
	jp c,0ce7fh		;7512
	ld c,b			;7515
	di			;7516
	call z,063b8h		;7517
	ccf			;751a
	ld (hl),d		;751b
	ld c,a			;751c
	dec b			;751d
	adc a,(hl)		;751e
	defb 0fdh,033h,086h ;illegal sequence	;751f
	ret			;7522
	ld h,(hl)		;7523
	rst 18h			;7524
	out (c),e		;7525
	sub 0dbh		;7527
	sub h			;7529
	in a,(0d8h)		;752a
	ld a,a			;752c
	ld d,(hl)		;752d
	ld b,(hl)		;752e
	ld a,e			;752f
	add a,c			;7530
	ld c,d			;7531
	ld h,(hl)		;7532
	ld d,(hl)		;7533
	ld a,a			;7534
	adc a,(hl)		;7535
	ld l,b			;7536
	sbc a,h			;7537
	ret			;7538
l7539h:
	sub h			;7539
	rst 10h			;753a
	ld h,l			;753b
	and d			;753c
	or c			;753d
	inc de			;753e
	ld (hl),c		;753f
	rrca			;7540
	ld a,a			;7541
	ld c,c			;7542
	di			;7543
	ld d,c			;7544
	adc a,b			;7545
	ld a,c			;7546
	ret nc			;7547
	jp c,0be0eh		;7548
	ld b,a			;754b
	ld h,l			;754c
	sbc a,l			;754d
	ld l,b			;754e
	ld h,b			;754f
	dec h			;7550
	dec d			;7551
	ld hl,l55b1h		;7552
	ld a,a			;7555
	sub d			;7556
	ld (08420h),hl		;7557
	ld d,e			;755a
	ld d,0c6h		;755b
	inc sp			;755d
	ld a,a			;755e
	jr nc,l74fch		;755f
	jp z,03b26h		;7561
	rst 10h			;7564
	rst 30h			;7565
	jp nc,03f13h		;7566
	ld (hl),d		;7569
	ld c,a			;756a
	nop			;756b
	pop hl			;756c
	ld a,a			;756d
	sub b			;756e
	ld a,a			;756f
	ex (sp),hl		;7570
	adc a,039h		;7571
	rst 18h			;7573
	call pe,sub_56a3h	;7574
	xor l			;7577
	jr z,$-17		;7578
	adc a,d			;757a
	adc a,d			;757b
	ld d,a			;757c
	sbc a,l			;757d
	call po,0888ch		;757e
	adc a,d			;7581
	cp c			;7582
	ld e,a			;7583
	adc a,h			;7584
	call c,01fa3h		;7585
	adc a,a			;7588
	ld (de),a		;7589
	ld (hl),l		;758a
	add a,h			;758b
	or c			;758c
	jp z,00f9ch		;758d
	ld (hl),d		;7590
	cpl			;7591
	ld h,a			;7592
	xor e			;7593
	ld h,(hl)		;7594
	inc d			;7595
	cp l			;7596
	ld h,e			;7597
	cp h			;7598
	sub b			;7599
	ld d,b			;759a
	ld (bc),a		;759b
	inc bc			;759c
	ld d,a			;759d
	ld hl,06177h		;759e
	add hl,hl		;75a1
	ld (0017fh),hl		;75a2
	ld d,c			;75a5
	ld d,061h		;75a6
	ld (hl),a		;75a8
	ld (hl),c		;75a9
	ld a,a			;75aa
	ld c,c			;75ab
	ret p			;75ac
	xor h			;75ad
	adc a,c			;75ae
	xor a			;75af
	inc h			;75b0
	exx			;75b1
	ld h,h			;75b2
	jp nc,0dcadh		;75b3
	daa			;75b6
	ld c,a			;75b7
	inc e			;75b8
	ld a,a			;75b9
	ld h,e			;75ba
	cp 007h			;75bb
	add hl,bc		;75bd
l75beh:
	nop			;75be
	ld a,a			;75bf
	ld d,d			;75c0
	call m,0df7bh		;75c1
l75c4h:
	ld sp,00ef0h		;75c4
	ld a,e			;75c7
	or l			;75c8
	ld h,h			;75c9
	adc a,c			;75ca
	inc hl			;75cb
	xor c			;75cc
	ld (hl),02ch		;75cd
	in a,(0d2h)		;75cf
	xor l			;75d1
	jr z,l75c4h		;75d2
	ret z			;75d4
	cp c			;75d5
	sub h			;75d6
	ld c,c			;75d7
	jr nz,l75beh		;75d8
	jp nc,06d93h		;75da
	ld a,a			;75dd
	and (hl)		;75de
	exx			;75df
	inc bc			;75e0
	cpl			;75e1
	jp po,059bbh		;75e2
	ld h,l			;75e5
	cpl			;75e6
	ld e,a			;75e7
	sbc a,l			;75e8
	jp c,l4d42h		;75e9
	nop			;75ec
	rlca			;75ed
	or (hl)			;75ee
	ld a,a			;75ef
	ld d,c			;75f0
	sbc a,c			;75f1
	ld (bc),a		;75f2
	add a,c			;75f3
	ld (hl),b		;75f4
	adc a,d			;75f5
	inc h			;75f6
	ret			;75f7
	ld a,(hl)		;75f8
	xor h			;75f9
	ld c,d			;75fa
	ei			;75fb
sub_75fch:
	or (hl)			;75fc
	ld c,h			;75fd
	adc a,092h		;75fe
	jp nz,0e232h		;7600
	ld d,e			;7603
	ld c,a			;7604
	ld (hl),l		;7605
	cp 0c2h			;7606
l7608h:
	add a,e			;7608
	ld e,d			;7609
	sbc a,(hl)		;760a
	ld d,e			;760b
	ld h,l			;760c
	rst 18h			;760d
	jp z,l5446h		;760e
	ld d,(hl)		;7611
	or (hl)			;7612
	ld hl,l6586h		;7613
	ld (hl),a		;7616
	push de			;7617
	ld c,076h		;7618
l761ah:
	adc a,a			;761a
	ld c,e			;761b
	djnz l761ah		;761c
	ld (de),a		;761e
	ret pe			;761f
	or d			;7620
	ret z			;7621
	ld c,d			;7622
	ex af,af'		;7623
	ex de,hl		;7624
	ld c,h			;7625
	ld l,c			;7626
	or a			;7627
	nop			;7628
	ld a,a			;7629
	cpl			;762a
	push bc			;762b
	ld (hl),a		;762c
	ld c,a			;762d
	ld h,d			;762e
	sbc a,l			;762f
	ld (hl),a		;7630
	sbc a,l			;7631
	nop			;7632
	ld b,h			;7633
	dec h			;7634
	ld d,d			;7635
	rla			;7636
	halt			;7637
	jr nc,l764fh		;7638
l763ah:
	sub d			;763a
	ld c,a			;763b
	sub d			;763c
	ld b,d			;763d
	adc a,b			;763e
	add a,b			;763f
	ld d,015h		;7640
	ld a,d			;7642
	add hl,hl		;7643
	jp nz,09c4eh		;7644
	cpl			;7647
	ld h,a			;7648
	ei			;7649
	add hl,sp		;764a
	ld c,a			;764b
	ld (hl),d		;764c
	ld d,l			;764d
	rst 18h			;764e
l764fh:
	ld (hl),056h		;764f
	ld c,a			;7651
	jp m,l575bh		;7652
	add hl,bc		;7655
	cp 016h			;7656
	inc bc			;7658
	jp nz,0dfa7h		;7659
	or d			;765c
	ld d,l			;765d
	and (hl)		;765e
	and l			;765f
	ld e,049h		;7660
	rrca			;7662
	ld d,e			;7663
	cp (hl)			;7664
	sbc a,b			;7665
	rrca			;7666
	ld b,h			;7667
	in a,(009h)		;7668
	ld c,b			;766a
	rrca			;766b
	and a			;766c
l766dh:
	ld b,h			;766d
	cpl			;766e
	cp e			;766f
	ld d,h			;7670
	cp h			;7671
	sbc a,b			;7672
	sub e			;7673
	ld l,h			;7674
	ld hl,l6212h		;7675
	ld a,a			;7678
	add a,e			;7679
	ld (08744h),hl		;767a
	ld h,d			;767d
	ld d,d			;767e
	sub l			;767f
	sub h			;7680
	ld (l4cc9h),a		;7681
	ld (hl),a		;7684
	jp z,0ff7fh		;7685
	ld e,b			;7688
	cp a			;7689
	and d			;768a
	or l			;768b
	ld e,b			;768c
	ld b,l			;768d
	inc b			;768e
	ld hl,(0c790h)		;768f
	ld sp,hl		;7692
	add hl,bc		;7693
	add a,a			;7694
	call po,sub_5595h	;7695
	cp l			;7698
	sbc a,b			;7699
	xor h			;769a
	adc a,08dh		;769b
	ex de,hl		;769d
	rst 8			;769e
	rra			;769f
	rrca			;76a0
	sbc a,c			;76a1
l76a2h:
	ld d,h			;76a2
	rra			;76a3
	di			;76a4
	rst 8			;76a5
	sbc a,b			;76a6
	add hl,de		;76a7
	add a,a			;76a8
	add a,c			;76a9
	ld d,l			;76aa
	halt			;76ab
	ld h,c			;76ac
	ld h,d			;76ad
	ld d,d			;76ae
	add a,07fh		;76af
	ld a,c			;76b1
	xor 06bh		;76b2
	ld e,(hl)		;76b4
	sub 024h		;76b5
	sub l			;76b7
	and c			;76b8
	call z,0d8dbh		;76b9
	jr nz,l766dh		;76bc
	and d			;76be
	adc a,b			;76bf
	xor h			;76c0
	ret po			;76c1
	ld b,(hl)		;76c2
	ld h,h			;76c3
	and a			;76c4
	ld a,d			;76c5
	ld a,a			;76c6
	out (000h),a		;76c7
	sub l			;76c9
	sub h			;76ca
	ld d,b			;76cb
	sbc a,h			;76cc
	push hl			;76cd
	rlca			;76ce
	add a,h			;76cf
	ei			;76d0
	ex de,hl		;76d1
	ld c,c			;76d2
	ld e,a			;76d3
sub_76d4h:
	sub d			;76d4
	and 099h		;76d5
	ld e,(hl)		;76d7
	dec c			;76d8
	ld c,l			;76d9
	jp (hl)			;76da
	or d			;76db
	ld d,l			;76dc
	adc a,l			;76dd
	call po,0a581h		;76de
	inc bc			;76e1
	ld l,d			;76e2
	sub e			;76e3
	ei			;76e4
	sbc a,c			;76e5
	rrca			;76e6
	cpl			;76e7
	ret po			;76e8
	ld d,h			;76e9
	or b			;76ea
	ld d,d			;76eb
	cpl			;76ec
	ld d,a			;76ed
	halt			;76ee
	sub h			;76ef
l76f0h:
	sbc a,l			;76f0
	add a,e			;76f1
	ld h,(hl)		;76f2
	sub d			;76f3
	ld e,e			;76f4
	ld h,(hl)		;76f5
	ld d,c			;76f6
	push hl			;76f7
	pop af			;76f8
	add hl,hl		;76f9
	add a,b			;76fa
	dec hl			;76fb
	adc a,d			;76fc
	add a,0bch		;76fd
l76ffh:
	ex af,af'		;76ff
	or a			;7700
	ld (hl),c		;7701
	ld h,h			;7702
	sub l			;7703
	ld h,h			;7704
	ld h,l			;7705
	ld a,a			;7706
	add a,h			;7707
	and l			;7708
	adc a,b			;7709
	defb 0edh ;next byte illegal after ed	;770a
	add a,a			;770b
	ld h,0c9h		;770c
	xor 0d8h		;770e
	daa			;7710
	nop			;7711
	or (hl)			;7712
	jr nz,l7772h		;7713
	add a,b			;7715
	ld e,l			;7716
	sub h			;7717
	ld l,l			;7718
	push bc			;7719
	sbc a,c			;771a
	ld e,b			;771b
	ei			;771c
	ld c,e			;771d
	rst 30h			;771e
	ret			;771f
	ld e,d			;7720
	sub c			;7721
	pop bc			;7722
	ld (hl),h		;7723
	and 045h		;7724
	ld l,e			;7726
	ld c,c			;7727
	rrca			;7728
	ld d,l			;7729
	nop			;772a
	sbc a,e			;772b
	add hl,bc		;772c
	rrca			;772d
	dec hl			;772e
	ret			;772f
	inc a			;7730
	cpl			;7731
	dec e			;7732
	ld d,h			;7733
	cpl			;7734
	jr nc,l779eh		;7735
	ld h,d			;7737
	ld b,h			;7738
	ld a,e			;7739
	inc e			;773a
	ld h,c			;773b
	ld de,l5022h		;773c
	dec h			;773f
	sub d			;7740
	ld a,(hl)		;7741
	ld d,l			;7742
	sbc a,d			;7743
	sub l			;7744
	nop			;7745
	ld (hl),d		;7746
	and c			;7747
	ld b,l			;7748
	ld (hl),a		;7749
	jp nz,080dbh		;774a
	dec de			;774d
	jp m,08fa5h		;774e
l7751h:
	ld h,l			;7751
	xor d			;7752
	rst 20h			;7753
	ld a,a			;7754
	pop bc			;7755
	sbc a,e			;7756
	ld l,c			;7757
	rst 18h			;7758
	jr l76f0h		;7759
	jp c,0d9d8h		;775b
	ld d,d			;775e
	ld c,(hl)		;775f
	xor d			;7760
	add a,d			;7761
	call z,0a936h		;7762
	ld d,e			;7765
	ld l,(hl)		;7766
	ld l,05ah		;7767
	add a,e			;7769
	call z,0ad03h		;776a
	cp l			;776d
	push de			;776e
	inc d			;776f
	ld d,a			;7770
	rst 30h			;7771
l7772h:
	push hl			;7772
	ld c,a			;7773
	halt			;7774
	sub h			;7775
	ld e,a			;7776
	adc a,h			;7777
	ld l,h			;7778
	add a,l			;7779
	ld d,a			;777a
	exx			;777b
	sbc a,h			;777c
	add a,e			;777d
	ld c,d			;777e
l777fh:
	ld e,042h		;777f
	xor b			;7781
	ret nz			;7782
	ld h,d			;7783
	ld b,a			;7784
	halt			;7785
	ld de,01232h		;7786
	add hl,hl		;7789
	ld c,l			;778a
	add a,e			;778b
	scf			;778c
	pop bc			;778d
l778eh:
	sub c			;778e
	cp e			;778f
	nop			;7790
	sub d			;7791
	halt			;7792
	ld h,a			;7793
	pop bc			;7794
	or e			;7795
	ld c,a			;7796
	ld e,c			;7797
	inc h			;7798
	ld a,d			;7799
	ld c,a			;779a
	cp a			;779b
	ld a,a			;779c
	add hl,bc		;779d
l779eh:
	xor c			;779e
	sbc a,c			;779f
	ret nz			;77a0
	ld l,d			;77a1
	ld h,h			;77a2
	ld hl,(05459h)		;77a3
	adc a,08ch		;77a6
	add a,(hl)		;77a8
	or d			;77a9
	di			;77aa
	rst 10h			;77ab
	call z,0e1ech		;77ac
	ld b,l			;77af
	defb 0ddh,049h,031h ;illegal sequence	;77b0
	cp e			;77b3
	push hl			;77b4
	sub e			;77b5
	adc a,e			;77b6
	sub a			;77b7
	jp po,0bbc5h		;77b8
	and (hl)		;77bb
	ret			;77bc
	ld l,h			;77bd
	or 05dh			;77be
	ret m			;77c0
	sub d			;77c1
	sub d			;77c2
	or a			;77c3
	ex af,af'		;77c4
	cp e			;77c5
	push hl			;77c6
	dec h			;77c7
	sub b			;77c8
	scf			;77c9
	push de			;77ca
	and l			;77cb
	ld sp,hl		;77cc
	ld (bc),a		;77cd
	inc h			;77ce
	ld b,a			;77cf
	ld h,(hl)		;77d0
	cp 028h			;77d1
	ld a,a			;77d3
	sub d			;77d4
	ld d,c			;77d5
	ld b,(hl)		;77d6
	ld (hl),a		;77d7
	inc b			;77d8
	sub l			;77d9
	ld b,l			;77da
	ld b,(hl)		;77db
	ld a,(hl)		;77dc
	bit 5,(hl)		;77dd
	exx			;77df
	ld h,(hl)		;77e0
	defb 0edh ;next byte illegal after ed	;77e1
	xor 0a7h		;77e2
	ld c,(hl)		;77e4
	xor e			;77e5
	ld (hl),e		;77e6
	ld c,a			;77e7
	rst 38h			;77e8
	cpl			;77e9
	inc d			;77ea
	sub (hl)		;77eb
	ld h,h			;77ec
	jr z,l7838h		;77ed
	cp e			;77ef
	or 0fah			;77f0
	jp (hl)			;77f2
	ld d,b			;77f3
	ld b,h			;77f4
	xor h			;77f5
	add hl,sp		;77f6
	rst 28h			;77f7
	dec hl			;77f8
	adc a,c			;77f9
	inc d			;77fa
	jp pe,01765h		;77fb
	ld l,d			;77fe
	add hl,hl		;77ff
	ld h,l			;7800
	jr l778eh		;7801
	dec h			;7803
	pop hl			;7804
	adc a,h			;7805
	ld a,0a4h		;7806
	defb 0edh ;next byte illegal after ed	;7808
	exx			;7809
	ld a,b			;780a
	inc l			;780b
	sub (hl)		;780c
	ld b,(hl)		;780d
	sub d			;780e
	xor h			;780f
	sub a			;7810
	sbc a,b			;7811
	ld b,(hl)		;7812
	jp nc,l4692h		;7813
	ld b,d			;7816
	sub b			;7817
	ex af,af'		;7818
	ld h,d			;7819
	ld (0e44bh),hl		;781a
	sub c			;781d
	ld d,0fah		;781e
	and c			;7820
	dec h			;7821
	ld (hl),a		;7822
	ld d,d			;7823
	sbc a,c			;7824
	sub h			;7825
	ld b,l			;7826
	ld a,d			;7827
	sbc a,h			;7828
	ei			;7829
	inc sp			;782a
	add hl,hl		;782b
	ld a,c			;782c
	adc a,h			;782d
	inc h			;782e
	dec d			;782f
	sub (hl)		;7830
	inc sp			;7831
	inc h			;7832
	ex de,hl		;7833
	ld c,a			;7834
	ccf			;7835
	dec a			;7836
	ld a,a			;7837
l7838h:
	out (095h),a		;7838
	sbc a,b			;783a
	ld l,d			;783b
	ld a,a			;783c
	ld d,l			;783d
	ret pe			;783e
	ret m			;783f
	call nc,sub_57a8h	;7840
	ld b,h			;7843
	add a,b			;7844
	ld (de),a		;7845
	xor 097h		;7846
	rla			;7848
	ei			;7849
	pop de			;784a
	sbc a,099h		;784b
	inc de			;784d
	nop			;784e
	adc a,b			;784f
	halt			;7850
	call m,sub_64c5h	;7851
	inc h			;7854
	rst 28h			;7855
	add hl,de		;7856
	and e			;7857
	ld d,030h		;7858
	call pe,l5585h		;785a
	di			;785d
	and e			;785e
	xor (hl)		;785f
	call p,06750h		;7860
	ld (hl),h		;7863
	ld h,h			;7864
	rst 28h			;7865
	sub d			;7866
	ld (l5b24h),hl		;7867
	cp 061h			;786a
	ld d,d			;786c
	ld a,a			;786d
	sub d			;786e
	sub d			;786f
	jp m,0bd69h		;7870
	dec d			;7873
	ret pe			;7874
	sub (hl)		;7875
	add a,(hl)		;7876
	adc a,e			;7877
	sbc a,c			;7878
	xor 091h		;7879
	sbc a,c			;787b
	and c			;787c
	ld bc,05511h		;787d
sub_7880h:
	ld b,d			;7880
	add hl,hl		;7881
	ld d,l			;7882
	ld d,d			;7883
	ld c,a			;7884
	adc a,07fh		;7885
	add a,098h		;7887
	ld a,e			;7889
	ld a,a			;788a
	ld c,(hl)		;788b
	and c			;788c
	ld d,l			;788d
	ld a,a			;788e
	ld a,d			;788f
	call pe,00355h		;7890
	ex de,hl		;7893
	rst 20h			;7894
	or (hl)			;7895
	ret c			;7896
	inc bc			;7897
	sub h			;7898
	xor l			;7899
	ld a,(02880h)		;789a
	ld a,a			;789d
	add a,d			;789e
	rst 8			;789f
	jp 0b437h		;78a0
	ld h,l			;78a3
	sub e			;78a4
	ld c,e			;78a5
	ld d,(hl)		;78a6
	ld d,b			;78a7
	sub c			;78a8
	ld c,d			;78a9
	xor h			;78aa
	ld e,b			;78ab
	sbc a,0c4h		;78ac
	ld (hl),a		;78ae
	adc a,e			;78af
	xor 07fh		;78b0
	and b			;78b2
	ld d,h			;78b3
	ld a,a			;78b4
	ld h,l			;78b5
	ld b,d			;78b6
	ld e,c			;78b7
	dec h			;78b8
	jp pe,l7ff1h		;78b9
	dec l			;78bc
	ld h,d			;78bd
	add hl,hl		;78be
	call m,0006eh		;78bf
	push hl			;78c2
	push de			;78c3
	ld e,c			;78c4
	add a,l			;78c5
	xor b			;78c6
	sub l			;78c7
	ld c,c			;78c8
	ld (08e9bh),hl		;78c9
	call nc,07124h		;78cc
	sub c			;78cf
	ld c,(hl)		;78d0
	inc h			;78d1
	ld c,a			;78d2
	ld e,d			;78d3
	ld b,h			;78d4
	adc a,l			;78d5
	sub d			;78d6
	rst 38h			;78d7
	ret p			;78d8
	ld (de),a		;78d9
	ld d,h			;78da
	dec b			;78db
	sbc a,099h		;78dc
	sbc a,e			;78de
	sbc a,c			;78df
	ret nc			;78e0
	ld c,d			;78e1
	adc a,c			;78e2
	ld l,c			;78e3
	call pe,0f2b0h		;78e4
	inc b			;78e7
	add a,a			;78e8
	ld h,(hl)		;78e9
	sub h			;78ea
	jp nc,0176dh		;78eb
	adc a,l			;78ee
	cp e			;78ef
	adc a,0e4h		;78f0
	cp 0eeh			;78f2
	ld l,b			;78f4
	ld e,b			;78f5
	call z,0ec00h		;78f6
	sla e			;78f9
	ld b,h			;78fb
	ld d,b			;78fc
	sbc a,h			;78fd
l78feh:
	add hl,de		;78fe
l78ffh:
	ld a,e			;78ff
	ld a,a			;7900
	adc a,(hl)		;7901
	add hl,sp		;7902
	adc a,(hl)		;7903
	push hl			;7904
	ld d,0e9h		;7905
	push af			;7907
	add hl,bc		;7908
	call p,0e719h		;7909
	ld h,l			;790c
	ld h,(iy+07fh)		;790d
	add a,d			;7910
	ld d,c			;7911
	or c			;7912
	add hl,hl		;7913
	ld b,d			;7914
	ld b,h			;7915
	and a			;7916
	ld c,b			;7917
	adc a,b			;7918
	call nz,00f55h		;7919
	sub d			;791c
	adc a,b			;791d
	sub a			;791e
	ld (hl),c		;791f
	ld d,034h		;7920
	ld d,0b7h		;7922
	adc a,h			;7924
	ld (hl),e		;7925
	add hl,hl		;7926
	ld c,a			;7927
	ld a,a			;7928
	ld c,a			;7929
	ld c,a			;792a
	ld d,b			;792b
	ld a,a			;792c
	ld a,a			;792d
	and c			;792e
	or c			;792f
	rst 0			;7930
	ld h,d			;7931
	inc bc			;7932
	ld a,e			;7933
	ld (hl),h		;7934
	scf			;7935
	ld d,07bh		;7936
l7938h:
	cp e			;7938
	ld b,(hl)		;7939
	ld a,a			;793a
	and l			;793b
	push hl			;793c
	inc iy			;793d
	ld d,h			;793f
	rla			;7940
	ld (098b2h),hl		;7941
	pop af			;7944
	ld b,b			;7945
	inc b			;7946
	call nz,0ac80h		;7947
	cp l			;794a
	ld c,b			;794b
	ld b,b			;794c
	and b			;794d
	inc b			;794e
	cp h			;794f
	rst 38h			;7950
	sub h			;7951
	sbc a,(hl)		;7952
	cpl			;7953
	ld l,c			;7954
	cp e			;7955
	in a,(031h)		;7956
	jp m,0ff67h		;7958
	ld (hl),c		;795b
	ld a,a			;795c
	ld d,l			;795d
	ld l,e			;795e
	jr c,l7978h		;795f
	adc a,c			;7961
	pop hl			;7962
	call p,0fd22h		;7963
	ld a,(de)		;7966
	ld d,c			;7967
	or d			;7968
	add a,h			;7969
	inc hl			;796a
	ld c,(hl)		;796b
	ld h,l			;796c
	adc a,b			;796d
	inc h			;796e
	ld hl,02175h		;796f
	sub a			;7972
	ld c,a			;7973
	rla			;7974
	adc a,h			;7975
	dec b			;7976
	ld h,(hl)		;7977
l7978h:
	cp e			;7978
	ld (hl),c		;7979
	add hl,de		;797a
	ld c,a			;797b
	call z,0a1cbh		;797c
	ld d,h			;797f
	nop			;7980
	ld a,a			;7981
	rst 28h			;7982
	ld h,b			;7983
	sub c			;7984
	push de			;7985
	ld a,(hl)		;7986
	ret nc			;7987
	xor d			;7988
	ld (hl),l		;7989
	add a,0e8h		;798a
	add a,c			;798c
	ld h,h			;798d
	ld h,b			;798e
	jp m,l5ac0h		;798f
	sub c			;7992
	adc a,(hl)		;7993
	ld d,l			;7994
	ld a,b			;7995
	and d			;7996
	ld b,h			;7997
	dec b			;7998
	ld b,h			;7999
	ld b,098h		;799a
	rrca			;799c
l799dh:
	ld d,l			;799d
	cp 0b2h			;799e
	sub (hl)		;79a0
	ld d,e			;79a1
	djnz l799dh		;79a2
	ld b,d			;79a4
	ld b,c			;79a5
	ld b,b			;79a6
	ld b,096h		;79a7
	ld a,(hl)		;79a9
	jp z,0872dh		;79aa
	ld hl,(0ff00h)		;79ad
	jp z,03d1eh		;79b0
	sub (hl)		;79b3
	ld b,077h		;79b4
	call m,sub_561ah	;79b6
	ld (de),a		;79b9
	ld a,a			;79ba
	ld de,0ea9ah		;79bb
	ld a,a			;79be
	dec e			;79bf
	ld b,l			;79c0
	ld l,c			;79c1
	sbc a,c			;79c2
	adc a,b			;79c3
	ld (hl),h		;79c4
	add a,e			;79c5
	sub d			;79c6
	jp (hl)			;79c7
	add a,h			;79c8
	ld d,(hl)		;79c9
	sub l			;79ca
	ld sp,01115h		;79cb
	xor l			;79ce
	ld (hl),021h		;79cf
	ld (hl),b		;79d1
	ld c,a			;79d2
	inc b			;79d3
	rst 18h			;79d4
	ld c,a			;79d5
	ld a,a			;79d6
	ld (hl),d		;79d7
	nop			;79d8
	nop			;79d9
	ld c,b			;79da
	adc a,d			;79db
	ret			;79dc
	call po,09cd8h		;79dd
	adc a,b			;79e0
	ld hl,(l5074h)		;79e1
	ld l,a			;79e4
	rst 20h			;79e5
	ld b,l			;79e6
	sub h			;79e7
	inc de			;79e8
	rla			;79e9
	sub h			;79ea
	ld a,(bc)		;79eb
	ld c,e			;79ec
	inc b			;79ed
	sub 01fh		;79ee
	ld b,h			;79f0
	ld a,(hl)		;79f1
	xor b			;79f2
	ld b,b			;79f3
	add a,c			;79f4
	sub h			;79f5
	sbc a,h			;79f6
	sub d			;79f7
	add a,0e9h		;79f8
	jp pe,l588eh		;79fa
	call m,0e5cah		;79fd
l7a00h:
	ld a,(de)		;7a00
	ld c,c			;7a01
	dec h			;7a02
l7a03h:
	ld c,c			;7a03
	ld (bc),a		;7a04
	inc h			;7a05
	ld d,a			;7a06
	ld (hl),c		;7a07
	ld h,l			;7a08
	ld de,0fe61h		;7a09
	ld d,(hl)		;7a0c
	ld (hl),l		;7a0d
	sbc a,l			;7a0e
	cp 031h			;7a0f
	ld d,(hl)		;7a11
	ld c,c			;7a12
	ld a,a			;7a13
	ld d,l			;7a14
	ld a,a			;7a15
	adc a,a			;7a16
	sub h			;7a17
	adc a,d			;7a18
	and (hl)		;7a19
	rst 28h			;7a1a
	adc a,b			;7a1b
	sbc a,c			;7a1c
	rla			;7a1d
	ld (hl),l		;7a1e
	ld a,b			;7a1f
	ld b,d			;7a20
	ld c,a			;7a21
	cp (hl)			;7a22
	nop			;7a23
	ld a,a			;7a24
	dec d			;7a25
	inc b			;7a26
	defb 0edh ;next byte illegal after ed	;7a27
	adc a,c			;7a28
	sbc a,c			;7a29
	and b			;7a2a
	push de			;7a2b
	ld d,l			;7a2c
	jp (hl)			;7a2d
	ld l,h			;7a2e
	ld h,d			;7a2f
	ld b,0a5h		;7a30
	rst 20h			;7a32
	jp z,0172eh		;7a33
	ld bc,089a3h		;7a36
	rlca			;7a39
	ld h,h			;7a3a
	call p,005cah		;7a3b
	inc bc			;7a3e
	jr nz,l7a03h		;7a3f
	ld b,e			;7a41
	ld d,b			;7a42
	inc b			;7a43
	xor d			;7a44
	ld (hl),0f4h		;7a45
	inc hl			;7a47
	ld e,c			;7a48
	sub (hl)		;7a49
	add a,h			;7a4a
	jp p,08c92h		;7a4b
	ld de,0e59ah		;7a4e
	call m,l5690h+1		;7a51
	cp 031h			;7a54
	ld h,044h		;7a56
	defb 0edh ;next byte illegal after ed	;7a58
	ld l,e			;7a59
	call m,0e594h		;7a5a
	jp c,09582h		;7a5d
	add a,a			;7a60
	add a,e			;7a61
	sub d			;7a62
	ld (de),a		;7a63
	sub l			;7a64
	add a,a			;7a65
	jp (hl)			;7a66
	add a,(hl)		;7a67
	ld (09280h),hl		;7a68
	sub 094h		;7a6b
	ld d,e			;7a6d
	ld c,a			;7a6e
	jp nz,l5effh		;7a6f
	ex af,af'		;7a72
	ld (hl),b		;7a73
	cp e			;7a74
	ld (hl),h		;7a75
	or d			;7a76
	add a,l			;7a77
	dec (hl)		;7a78
	ld (hl),e		;7a79
	ld d,h			;7a7a
	call z,0ef12h		;7a7b
	sub h			;7a7e
	rst 20h			;7a7f
	sub d			;7a80
	ld h,(ix+06fh)		;7a81
	ld e,h			;7a84
	pop af			;7a85
	rlca			;7a86
	cp e			;7a87
	inc e			;7a88
	ld d,a			;7a89
	nop			;7a8a
	jr nz,l7ad0h		;7a8b
	dec de			;7a8d
	adc a,(hl)		;7a8e
	xor b			;7a8f
	ld d,h			;7a90
	push af			;7a91
	cp e			;7a92
	push de			;7a93
	ld d,l			;7a94
	halt			;7a95
	xor l			;7a96
	sub c			;7a97
	ex de,hl		;7a98
	ld a,(bc)		;7a99
	ld d,a			;7a9a
	ld (hl),a		;7a9b
	ld h,c			;7a9c
	ld h,e			;7a9d
	defb 0fdh,0cbh,09fh,0b7h ;res 6,(iy-061h) & ld a,(iy-061h)	;7a9e
	ei			;7aa2
	ld (hl),b		;7aa3
	jp 0a3e3h		;7aa4
	ld a,a			;7aa7
	ld d,h			;7aa8
	ld hl,08a7fh		;7aa9
	ld d,(hl)		;7aac
	ld a,a			;7aad
	add hl,de		;7aae
	ld d,b			;7aaf
	add a,d			;7ab0
	ld (hl),a		;7ab1
	ld e,075h		;7ab2
	sub d			;7ab4
	nop			;7ab5
	ld c,a			;7ab6
	ld e,07fh		;7ab7
	di			;7ab9
	ld de,l7f47h		;7aba
	inc sp			;7abd
	bit 4,d			;7abe
	cp c			;7ac0
	or b			;7ac1
	ld e,b			;7ac2
	xor 0a9h		;7ac3
	ld d,c			;7ac5
	rst 20h			;7ac6
	inc h			;7ac7
	ret c			;7ac8
	ld l,(hl)		;7ac9
	inc b			;7aca
	ld (hl),c		;7acb
	ld l,(hl)		;7acc
	ld (hl),e		;7acd
	nop			;7ace
	rlca			;7acf
l7ad0h:
	sub e			;7ad0
	add a,b			;7ad1
	ld b,a			;7ad2
	add a,h			;7ad3
	ld d,09dh		;7ad4
	dec sp			;7ad6
	ld h,h			;7ad7
	adc a,h			;7ad8
	ld l,h			;7ad9
	or c			;7ada
	or c			;7adb
	inc l			;7adc
	xor h			;7add
	ld h,0adh		;7ade
	adc a,c			;7ae0
	call p,0be24h		;7ae1
	ld (hl),d		;7ae4
	ld h,c			;7ae5
	rst 20h			;7ae6
	ld b,a			;7ae7
	ld (0d7f5h),hl		;7ae8
	push bc			;7aeb
	ld b,h			;7aec
	ld b,l			;7aed
	sub h			;7aee
	sbc a,c			;7aef
	dec de			;7af0
	ld e,c			;7af1
	defb 0edh ;next byte illegal after ed	;7af2
	add a,(hl)		;7af3
	sbc a,h			;7af4
	adc a,(hl)		;7af5
	and d			;7af6
	ld a,a			;7af7
	defb 0fdh,089h,0a4h ;illegal sequence	;7af8
	ld d,01ch		;7afb
	ld h,b			;7afd
	cp l			;7afe
	ld b,d			;7aff
	ld (hl),a		;7b00
	nop			;7b01
	ld c,a			;7b02
	xor a			;7b03
	inc d			;7b04
	rst 38h			;7b05
	ld a,h			;7b06
	ld h,077h		;7b07
	ld l,c			;7b09
	and b			;7b0a
	sub d			;7b0b
	add a,c			;7b0c
	sub e			;7b0d
	add hl,sp		;7b0e
	ld d,h			;7b0f
	call c,024f3h		;7b10
	add hl,hl		;7b13
	rst 20h			;7b14
	ld (hl),e		;7b15
	ld l,(hl)		;7b16
	ld (hl),h		;7b17
	ld a,b			;7b18
	dec (hl)		;7b19
	sub d			;7b1a
	di			;7b1b
	cp h			;7b1c
	ld (hl),085h		;7b1d
	ld l,l			;7b1f
	ld b,0bdh		;7b20
	inc e			;7b22
	ld sp,hl		;7b23
	add a,h			;7b24
	ld h,h			;7b25
	cp b			;7b26
	ld h,(hl)		;7b27
	add a,e			;7b28
	and 024h		;7b29
	ld a,c			;7b2b
	defb 0edh ;next byte illegal after ed	;7b2c
	call m,sub_6148h	;7b2d
	ld c,d			;7b30
	dec d			;7b31
	ret p			;7b32
	ld c,d			;7b33
	add a,b			;7b34
	cp e			;7b35
	ld b,(hl)		;7b36
	sbc a,d			;7b37
	inc hl			;7b38
	add a,(hl)		;7b39
	ld sp,sub_71feh		;7b3a
	nop			;7b3d
	ld b,d			;7b3e
	sbc a,d			;7b3f
	sub c			;7b40
	ld d,011h		;7b41
	sbc a,e			;7b43
	dec d			;7b44
	add a,d			;7b45
	ld e,a			;7b46
	sub e			;7b47
	ld (hl),l		;7b48
	ld c,a			;7b49
	ld b,e			;7b4a
	ld c,a			;7b4b
	rst 38h			;7b4c
	pop bc			;7b4d
	ld (de),a		;7b4e
	ld e,l			;7b4f
	jp nc,054fah		;7b50
	jp nc,0a795h		;7b53
	ld d,e			;7b56
	ld e,c			;7b57
	ld d,e			;7b58
	ld h,h			;7b59
	ld l,b			;7b5a
	add hl,hl		;7b5b
	rst 20h			;7b5c
	ld h,l			;7b5d
	or b			;7b5e
	inc hl			;7b5f
	call m,0b565h		;7b60
	add a,h			;7b63
	ld h,b			;7b64
	add a,h			;7b65
	or d			;7b66
	ld b,b			;7b67
	jp po,09c05h		;7b68
	xor d			;7b6b
	adc a,a			;7b6c
	exx			;7b6d
	ld h,e			;7b6e
	sub h			;7b6f
	add a,e			;7b70
	dec d			;7b71
	sbc a,l			;7b72
	jp pe,0fe00h		;7b73
	ld l,c			;7b76
	defb 0fdh,0c4h,015h ;illegal sequence	;7b77
	cp 089h			;7b7a
	sub d			;7b7c
	add a,b			;7b7d
l7b7eh:
	ld e,h			;7b7e
	inc d			;7b7f
	ld (hl),c		;7b80
	sub h			;7b81
	ld a,a			;7b82
	adc a,e			;7b83
	adc a,e			;7b84
	adc a,l			;7b85
	add hl,hl		;7b86
l7b87h:
	sbc a,h			;7b87
	djnz l7bcfh		;7b88
	dec h			;7b8a
	ld d,c			;7b8b
	ld c,(hl)		;7b8c
	ld h,l			;7b8d
	sbc a,l			;7b8e
	inc a			;7b8f
	jr nz,l7be1h		;7b90
	ld a,07fh		;7b92
l7b94h:
	ex af,af'		;7b94
	jp po,0c0ceh		;7b95
	xor (hl)		;7b98
	ret nz			;7b99
	ei			;7b9a
	or d			;7b9b
	ei			;7b9c
	xor e			;7b9d
	ccf			;7b9e
	ld a,a			;7b9f
	ld l,c			;7ba0
	rst 20h			;7ba1
	inc de			;7ba2
	inc b			;7ba3
	push af			;7ba4
	rst 8			;7ba5
	nop			;7ba6
	ld d,c			;7ba7
	or 0bch			;7ba8
	ld a,h			;7baa
	sbc a,c			;7bab
	ld b,l			;7bac
	ld (hl),l		;7bad
	ld a,a			;7bae
	dec h			;7baf
	ex af,af'		;7bb0
	ld b,(hl)		;7bb1
	ld l,c			;7bb2
	sub h			;7bb3
	jp (hl)			;7bb4
	sbc a,a			;7bb5
	cp e			;7bb6
	ret po			;7bb7
	ld l,l			;7bb8
	ld a,(de)		;7bb9
	jp (hl)			;7bba
	jp nc,l69dfh		;7bbb
	ex (sp),hl		;7bbe
	xor 048h		;7bbf
	sub d			;7bc1
	sub h			;7bc2
	add a,b			;7bc3
	call m,0bc8fh		;7bc4
	ld b,d			;7bc7
	ld e,h			;7bc8
	add a,h			;7bc9
	ld (l4224h),hl		;7bca
	ld (bc),a		;7bcd
	ld d,l			;7bce
l7bcfh:
	sbc a,b			;7bcf
	sbc a,a			;7bd0
	ld (de),a		;7bd1
	jr nz,$-21		;7bd2
	ld c,a			;7bd4
	dec b			;7bd5
	rst 38h			;7bd6
	ld e,a			;7bd7
	rla			;7bd8
	ld a,a			;7bd9
	ld c,075h		;7bda
	xor a			;7bdc
	or d			;7bdd
	ld a,a			;7bde
	add a,l			;7bdf
	adc a,l			;7be0
l7be1h:
	ld a,a			;7be1
	sub (hl)		;7be2
	xor d			;7be3
	daa			;7be4
	ret m			;7be5
	jp 0ce00h		;7be6
	add a,(hl)		;7be9
	ld sp,0f746h		;7bea
	exx			;7bed
	and l			;7bee
	call nc,08e81h		;7bef
	ld b,a			;7bf2
	ld a,a			;7bf3
	ld (de),a		;7bf4
	nop			;7bf5
	ld a,a			;7bf6
	daa			;7bf7
	rst 38h			;7bf8
	dec l			;7bf9
	ld a,a			;7bfa
	and h			;7bfb
	call m,08092h		;7bfc
	cp a			;7bff
	adc a,l			;7c00
	ld a,a			;7c01
	ld c,e			;7c02
	sub d			;7c03
	rst 38h			;7c04
	ld (hl),h		;7c05
	add a,a			;7c06
	cp c			;7c07
	ld a,a			;7c08
	rst 38h			;7c09
	ld de,02072h		;7c0a
	ld b,d			;7c0d
	pop hl			;7c0e
	ld a,a			;7c0f
	pop af			;7c10
	ld sp,0f940h		;7c11
	dec bc			;7c14
	ld h,h			;7c15
	dec b			;7c16
	inc b			;7c17
	or a			;7c18
	add hl,hl		;7c19
	cp h			;7c1a
	dec l			;7c1b
	jp nc,l7f7ch		;7c1c
	cp (hl)			;7c1f
	nop			;7c20
	ld a,(de)		;7c21
	sbc a,h			;7c22
	ld a,(l66ffh)		;7c23
	ld a,e			;7c26
	add a,c			;7c27
	ld c,c			;7c28
	xor a			;7c29
	sbc a,h			;7c2a
	ret			;7c2b
	rrca			;7c2c
	add a,d			;7c2d
	ld b,d			;7c2e
	ld h,016h		;7c2f
	call m,05462h		;7c31
	ld (0f8feh),hl		;7c34
	call c,099a6h		;7c37
	sub e			;7c3a
	ld d,h			;7c3b
	ld a,l			;7c3c
	cp d			;7c3d
	ei			;7c3e
	ld c,a			;7c3f
	add a,c			;7c40
	inc (hl)		;7c41
	sub (hl)		;7c42
	adc a,h			;7c43
	ld b,l			;7c44
	sub l			;7c45
	rra			;7c46
	ld h,c			;7c47
	sbc a,a			;7c48
	ld c,e			;7c49
	cp a			;7c4a
	ld (0f1ffh),a		;7c4b
	jp z,0deddh		;7c4e
	rst 30h			;7c51
	xor b			;7c52
	ld d,h			;7c53
	add a,(hl)		;7c54
	sbc a,d			;7c55
	xor a			;7c56
	rst 38h			;7c57
	sub d			;7c58
	jp pe,0f85ah		;7c59
	nop			;7c5c
	and e			;7c5d
	sub l			;7c5e
	adc a,c			;7c5f
	call po,04646h		;7c60
	rst 38h			;7c63
	and l			;7c64
	ld a,h			;7c65
	inc sp			;7c66
	cp b			;7c67
	nop			;7c68
	ld (bc),a		;7c69
	sub c			;7c6a
	rst 38h			;7c6b
	ld d,d			;7c6c
	ex (sp),hl		;7c6d
	inc d			;7c6e
	ret pe			;7c6f
	pop de			;7c70
	ex de,hl		;7c71
	or h			;7c72
	xor 053h		;7c73
	nop			;7c75
	cp 0c4h			;7c76
	adc a,(hl)		;7c78
	rst 20h			;7c79
	ld a,a			;7c7a
	inc c			;7c7b
	sub d			;7c7c
	add hl,de		;7c7d
	sub c			;7c7e
l7c7fh:
	sbc a,e			;7c7f
l7c80h:
	dec h			;7c80
	rst 38h			;7c81
	add hl,hl		;7c82
	dec hl			;7c83
	ld (hl),l		;7c84
	ld d,(hl)		;7c85
	ld (hl),h		;7c86
	jp l7f9ah		;7c87
	add a,0dbh		;7c8a
	cp c			;7c8c
	ld c,l			;7c8d
	ld b,h			;7c8e
	jp c,039b7h		;7c8f
	ret nc			;7c92
	in a,(0e7h)		;7c93
	ld c,l			;7c95
	call m,0fb00h		;7c96
	inc hl			;7c99
	rst 38h			;7c9a
	sbc a,c			;7c9b
	inc bc			;7c9c
	ld h,(hl)		;7c9d
	jp nc,l7ff6h		;7c9e
	ld (0eaebh),hl		;7ca1
	ld l,(hl)		;7ca4
	sbc a,d			;7ca5
	sbc a,h			;7ca6
	xor l			;7ca7
l7ca8h:
	ld sp,hl		;7ca8
	ld d,d			;7ca9
	ld (0ab8eh),hl		;7caa
	sub d			;7cad
	add a,(hl)		;7cae
	ld h,h			;7caf
	sub h			;7cb0
	ld (07fe2h),hl		;7cb1
	sub 03ch		;7cb4
	daa			;7cb6
	rst 38h			;7cb7
	ex (sp),hl		;7cb8
	and l			;7cb9
	sbc a,b			;7cba
	call z,sub_76d4h	;7cbb
	ld e,c			;7cbe
	ex de,hl		;7cbf
	ld c,a			;7cc0
	out (01fh),a		;7cc1
	nop			;7cc3
	ld e,h			;7cc4
	and (hl)		;7cc5
	push de			;7cc6
	ld a,h			;7cc7
	ld hl,(l7381h)		;7cc8
	ld d,b			;7ccb
	rrca			;7ccc
l7ccdh:
	xor e			;7ccd
	ld a,a			;7cce
	ld sp,hl		;7ccf
	di			;7cd0
	nop			;7cd1
	ld a,(0d44eh)		;7cd2
	add a,d			;7cd5
	and l			;7cd6
	adc a,d			;7cd7
	adc a,l			;7cd8
	add a,h			;7cd9
	adc a,h			;7cda
	add a,c			;7cdb
	adc a,(hl)		;7cdc
	adc a,d			;7cdd
	dec h			;7cde
	ld a,a			;7cdf
	ld de,02bffh		;7ce0
	nop			;7ce3
	ld a,a			;7ce4
	call pe,050a6h		;7ce5
	ld bc,l7f55h		;7ce8
l7cebh:
	ld e,e			;7ceb
	ex de,hl		;7cec
	ld d,e			;7ced
	rst 38h			;7cee
	push af			;7cef
	dec (hl)		;7cf0
	ld h,(hl)		;7cf1
	daa			;7cf2
	ld h,l			;7cf3
	ld bc,l7f74h+2		;7cf4
	dec h			;7cf7
	inc a			;7cf8
	dec d			;7cf9
	ld d,h			;7cfa
	ld a,a			;7cfb
	halt			;7cfc
	ld a,(hl)		;7cfd
	ei			;7cfe
l7cffh:
	ld l,l			;7cff
	ld (bc),a		;7d00
	ex (sp),hl		;7d01
	ld a,a			;7d02
	jr l7d6eh		;7d03
	add a,c			;7d05
	rrca			;7d06
	ld d,c			;7d07
	ld d,d			;7d08
	ld a,a			;7d09
	ret nz			;7d0a
	ld a,d			;7d0b
	inc b			;7d0c
	rst 30h			;7d0d
	ld (hl),c		;7d0e
	pop hl			;7d0f
	xor c			;7d10
l7d11h:
	sub h			;7d11
	rst 38h			;7d12
	ld a,(hl)		;7d13
	ld a,(bc)		;7d14
	ld (hl),a		;7d15
	ld sp,hl		;7d16
l7d17h:
	ld c,h			;7d17
	and c			;7d18
	ret			;7d19
	and l			;7d1a
	ret p			;7d1b
	adc a,d			;7d1c
	ld a,a			;7d1d
	ld d,d			;7d1e
	dec h			;7d1f
	cp 0e2h			;7d20
	rst 28h			;7d22
	sbc a,e			;7d23
	rst 8			;7d24
	nop			;7d25
	add a,l			;7d26
	ld (0817dh),a		;7d27
	halt			;7d2a
	adc a,(hl)		;7d2b
	ld (hl),082h		;7d2c
	adc a,e			;7d2e
	jr nz,l7db0h		;7d2f
	ret p			;7d31
	ld h,e			;7d32
	add a,c			;7d33
	dec d			;7d34
	ld d,b			;7d35
	add a,a			;7d36
	sub (hl)		;7d37
	exx			;7d38
	ld a,l			;7d39
	ld a,a			;7d3a
	call p,09cfbh		;7d3b
	and e			;7d3e
	sub h			;7d3f
	and e			;7d40
	push hl			;7d41
	ld l,l			;7d42
l7d43h:
	ld d,(hl)		;7d43
	cp 0f9h			;7d44
	ld a,(hl)		;7d46
	add a,080h		;7d47
	cpl			;7d49
	add hl,hl		;7d4a
	add a,e			;7d4b
	adc a,c			;7d4c
	cp 065h			;7d4d
	ld b,l			;7d4f
	ld hl,0008fh		;7d50
	ld a,a			;7d53
	pop bc			;7d54
	push de			;7d55
	defb 0edh ;next byte illegal after ed	;7d56
	call pe,0fbd3h		;7d57
	ld a,a			;7d5a
	jp nc,l7fb7h		;7d5b
	ld b,h			;7d5e
	and c			;7d5f
l7d60h:
	cp l			;7d60
	ld h,d			;7d61
	defb 0ddh,0a9h,0e4h ;illegal sequence	;7d62
	add hl,hl		;7d65
	jp p,sub_4a9ch+1	;7d66
	call p,0f14fh		;7d69
	ex af,af'		;7d6c
	ld d,d			;7d6d
l7d6eh:
	ld a,(bc)		;7d6e
	dec h			;7d6f
	ld (de),a		;7d70
	sbc a,(hl)		;7d71
	sub c			;7d72
	ld l,h			;7d73
	add a,b			;7d74
	sbc a,a			;7d75
	dec c			;7d76
	nop			;7d77
	ld a,a			;7d78
	adc a,c			;7d79
	call c,088b9h		;7d7a
	add a,a			;7d7d
	ld a,a			;7d7e
	rst 18h			;7d7f
	ld a,(hl)		;7d80
	dec l			;7d81
	ld h,l			;7d82
	and b			;7d83
	ret c			;7d84
	ld (bc),a		;7d85
	ld d,d			;7d86
	xor l			;7d87
	ld a,r			;7d88
	add hl,hl		;7d8a
	ret p			;7d8b
	inc a			;7d8c
	ld a,(hl)		;7d8d
	and c			;7d8e
	ld (0927bh),hl		;7d8f
	ld d,c			;7d92
	ld (hl),a		;7d93
	sub d			;7d94
	adc a,e			;7d95
	ld de,025a7h		;7d96
	jr nz,l7e1ah		;7d99
	ex (sp),hl		;7d9b
	ld e,d			;7d9c
	call c,sub_673eh	;7d9d
	ld a,a			;7da0
	ei			;7da1
	and d			;7da2
	ex (sp),hl		;7da3
	nop			;7da4
	sub 06eh		;7da5
	or (hl)			;7da7
	ret p			;7da8
	daa			;7da9
	add a,c			;7daa
	ret nz			;7dab
	dec h			;7dac
	ld hl,01523h		;7dad
l7db0h:
	dec d			;7db0
	sub c			;7db1
	add hl,bc		;7db2
	ld d,a			;7db3
	ld (de),a		;7db4
	sub b			;7db5
	jp pe,03cfeh		;7db6
	pop af			;7db9
	ld a,a			;7dba
	xor c			;7dbb
	ld a,a			;7dbc
	call p,080cah		;7dbd
	ld a,(hl)		;7dc0
	ld a,a			;7dc1
	inc b			;7dc2
	cp 07bh			;7dc3
	jp z,0f881h		;7dc5
	ld a,(hl)		;7dc8
	ld b,a			;7dc9
	cp 016h			;7dca
	ret p			;7dcc
	adc a,d			;7dcd
	ld d,d			;7dce
	call m,09542h		;7dcf
	ld d,d			;7dd2
	adc a,a			;7dd3
	jp c,l63f4h		;7dd4
	adc a,a			;7dd7
	rst 38h			;7dd8
	or c			;7dd9
	inc b			;7dda
	jp c,07fe7h		;7ddb
	sbc a,065h		;7dde
	ld h,a			;7de0
	ld d,h			;7de1
	sbc a,a			;7de2
	rst 0			;7de3
l7de4h:
	ret po			;7de4
	ld b,h			;7de5
	cp 075h			;7de6
	add a,l			;7de8
	ret			;7de9
	defb 0fdh,069h ;ld iyl,c	;7dea
	ret p			;7dec
	ld b,h			;7ded
	cp 092h			;7dee
	add a,d			;7df0
	ld b,(hl)		;7df1
	sub h			;7df2
	xor e			;7df3
	sub d			;7df4
	sbc a,c			;7df5
	ld e,a			;7df6
	sub b			;7df7
	ld a,a			;7df8
	adc a,a			;7df9
	ret p			;7dfa
	defb 0fdh,07dh ;ld a,iyl	;7dfb
	nop			;7dfd
	ld l,l			;7dfe
	ld d,h			;7dff
	sbc a,(hl)		;7e00
	ld a,d			;7e01
	ld e,h			;7e02
	add hl,bc		;7e03
	ld a,a			;7e04
	or a			;7e05
	ld d,d			;7e06
	adc a,b			;7e07
	inc h			;7e08
	halt			;7e09
	ld de,09b83h		;7e0a
	add a,e			;7e0d
	out (029h),a		;7e0e
	ld a,a			;7e10
	jp p,0f9b9h		;7e11
	ex de,hl		;7e14
	rst 38h			;7e15
	adc a,h			;7e16
	rrca			;7e17
	nop			;7e18
	and (hl)		;7e19
l7e1ah:
	xor 036h		;7e1a
	push af			;7e1c
	jr nc,l7e44h		;7e1d
	dec h			;7e1f
	ld c,h			;7e20
	add hl,hl		;7e21
	add a,d			;7e22
	ld (hl),a		;7e23
	ld e,a			;7e24
	ld (de),a		;7e25
	sub h			;7e26
	inc de			;7e27
	add a,b			;7e28
	cp a			;7e29
	ld a,a			;7e2a
	ld e,h			;7e2b
	adc a,a			;7e2c
	ld a,l			;7e2d
	rst 18h			;7e2e
	ld h,d			;7e2f
l7e30h:
	rrca			;7e30
	cpl			;7e31
	exx			;7e32
	ret p			;7e33
	inc l			;7e34
	ld h,e			;7e35
	add a,b			;7e36
	nop			;7e37
	ld d,c			;7e38
	rla			;7e39
	ld (hl),a		;7e3a
	ld e,c			;7e3b
	add hl,hl		;7e3c
	ret m			;7e3d
	inc hl			;7e3e
	cp a			;7e3f
	ld a,a			;7e40
	add a,b			;7e41
	ld a,l			;7e42
	add hl,bc		;7e43
l7e44h:
	cpl			;7e44
	ld l,l			;7e45
	add hl,bc		;7e46
	ld a,a			;7e47
	sbc a,d			;7e48
	ld (bc),a		;7e49
	ld d,d			;7e4a
	add a,c			;7e4b
	ld (hl),b		;7e4c
	sub (hl)		;7e4d
	ld (hl),c		;7e4e
	ld a,a			;7e4f
	dec d			;7e50
	ld a,a			;7e51
l7e52h:
	jr z,l7de4h		;7e52
	ei			;7e54
	ld a,a			;7e55
	cp a			;7e56
	add a,a			;7e57
	ld d,l			;7e58
	ld h,l			;7e59
	add a,b			;7e5a
	ld e,l			;7e5b
	ld a,a			;7e5c
	sub a			;7e5d
	sub a			;7e5e
	sbc a,c			;7e5f
	sub h			;7e60
	add a,c			;7e61
	cp a			;7e62
	ld a,a			;7e63
	add a,04bh		;7e64
	add a,b			;7e66
	or l			;7e67
	add a,c			;7e68
	inc a			;7e69
	inc de			;7e6a
	jp p,l568ch		;7e6b
	ld a,a			;7e6e
	ld b,l			;7e6f
	ld d,a			;7e70
	cp 08bh			;7e71
	ld a,h			;7e73
	ld h,(hl)		;7e74
	ld c,089h		;7e75
sub_7e77h:
	ld d,h			;7e77
	adc a,e			;7e78
	ld a,l			;7e79
	ld a,a			;7e7a
	ld c,a			;7e7b
	add hl,bc		;7e7c
	ld a,a			;7e7d
	adc a,097h		;7e7e
	add a,b			;7e80
	ld e,a			;7e81
	ld a,a			;7e82
	add a,(hl)		;7e83
	add a,c			;7e84
l7e85h:
	add a,066h		;7e85
	jp p,0cc9fh		;7e87
	ld b,(hl)		;7e8a
	cp 052h			;7e8b
	adc a,c			;7e8d
	and b			;7e8e
	ld c,c			;7e8f
	ld c,017h		;7e90
	ld a,e			;7e92
sub_7e93h:
	cp e			;7e93
	or a			;7e94
	rst 38h			;7e95
	add a,c			;7e96
	ex af,af'		;7e97
	pop af			;7e98
	ret m			;7e99
l7e9ah:
	and e			;7e9a
	add a,b			;7e9b
	add a,l			;7e9c
	nop			;7e9d
	and h			;7e9e
	ld l,a			;7e9f
	ld a,a			;7ea0
	jp po,0003eh		;7ea1
	ld a,a			;7ea4
	call nc,0fe92h		;7ea5
	ld b,l			;7ea8
	ld h,h			;7ea9
	ld d,l			;7eaa
	defb 0fdh,024h ;inc iyh	;7eab
	ei			;7ead
	or c			;7eae
sub_7eafh:
	inc c			;7eaf
	dec d			;7eb0
	ld h,h			;7eb1
l7eb2h:
	sub d			;7eb2
	adc a,l			;7eb3
	sub c			;7eb4
	add a,c			;7eb5
	dec sp			;7eb6
	ld (hl),c		;7eb7
	add a,d			;7eb8
	cp h			;7eb9
	cp 0f6h			;7eba
	defb 0edh ;next byte illegal after ed	;7ebc
	nop			;7ebd
	sub b			;7ebe
	and (hl)		;7ebf
	adc a,h			;7ec0
	ret			;7ec1
	adc a,h			;7ec2
	ld a,a			;7ec3
	ret m			;7ec4
	ld c,a			;7ec5
	add hl,bc		;7ec6
	ld a,a			;7ec7
	or (hl)			;7ec8
	cp 020h			;7ec9
	ld b,l			;7ecb
	ld b,l			;7ecc
	ld de,02717h		;7ecd
	cp e			;7ed0
	ld (hl),d		;7ed1
	ei			;7ed2
	add a,b			;7ed3
	ld (l5576h),hl		;7ed4
	ld d,l			;7ed7
	ld d,b			;7ed8
	ld c,c			;7ed9
	add a,a			;7eda
l7edbh:
	rla			;7edb
	sub a			;7edc
	add a,b			;7edd
	add hl,bc		;7ede
	or 0f9h			;7edf
	sbc a,c			;7ee1
	add hl,bc		;7ee2
	and l			;7ee3
	rst 10h			;7ee4
l7ee5h:
	ld a,a			;7ee5
	pop hl			;7ee6
	ld e,a			;7ee7
	daa			;7ee8
	ld a,a			;7ee9
	ld e,h			;7eea
	add a,b			;7eeb
	ld b,l			;7eec
	ld h,(hl)		;7eed
	ld h,h			;7eee
	call m,016c1h		;7eef
	ld h,a			;7ef2
	cp e			;7ef3
	ld (hl),l		;7ef4
l7ef5h:
	ld e,0c0h		;7ef5
	sub l			;7ef7
	ld d,h			;7ef8
	ld b,h			;7ef9
	inc d			;7efa
	ld d,l			;7efb
	ld d,(hl)		;7efc
	ld b,d			;7efd
	add a,d			;7efe
l7effh:
	ld c,c			;7eff
sub_7f00h:
	add a,b			;7f00
l7f01h:
	ld a,a			;7f01
	or 047h			;7f02
	cp 012h			;7f04
	call m,033f8h		;7f06
l7f09h:
	and d			;7f09
	out (009h),a		;7f0a
	ld a,a			;7f0c
	ex de,hl		;7f0d
	adc a,b			;7f0e
l7f0fh:
	cp 049h			;7f0f
	dec h			;7f11
l7f12h:
	rlca			;7f12
l7f13h:
	ld d,c			;7f13
l7f14h:
	ld d,061h		;7f14
	ld (hl),a		;7f16
	ld (hl),c		;7f17
	jr nz,l7f6ch		;7f18
	add a,l			;7f1a
	inc de			;7f1b
	ld b,l			;7f1c
	ld l,c			;7f1d
	add a,c			;7f1e
l7f1fh:
	add a,l			;7f1f
	ld (hl),a		;7f20
	ld d,d			;7f21
	rst 38h			;7f22
l7f23h:
	ld a,l			;7f23
	call nc,0d7d6h		;7f24
	ld a,a			;7f27
	pop hl			;7f28
l7f29h:
	ld de,00990h		;7f29
	add a,b			;7f2c
	push hl			;7f2d
	add a,e			;7f2e
l7f2fh:
	cp a			;7f2f
l7f30h:
	dec b			;7f30
	call m,sub_498eh	;7f31
	add a,c			;7f34
	push bc			;7f35
	ld d,c			;7f36
	cp 09dh			;7f37
	sub c			;7f39
	push de			;7f3a
	adc a,a			;7f3b
	add a,094h		;7f3c
	ld d,l			;7f3e
l7f3fh:
	rrca			;7f3f
	ld e,e			;7f40
	add a,d			;7f41
	ld a,a			;7f42
sub_7f43h:
	ld a,c			;7f43
	ld e,04eh		;7f44
	rst 30h			;7f46
l7f47h:
	ld d,e			;7f47
	rst 38h			;7f48
	sbc a,a			;7f49
	add a,(hl)		;7f4a
	nop			;7f4b
	ei			;7f4c
	ld a,a			;7f4d
	sub d			;7f4e
	sub d			;7f4f
	ret p			;7f50
sub_7f51h:
	ld c,025h		;7f51
	ld d,012h		;7f53
l7f55h:
	ld a,a			;7f55
	or c			;7f56
	inc bc			;7f57
	ld b,h			;7f58
	add a,d			;7f59
	ld e,e			;7f5a
	add a,b			;7f5b
	ld c,l			;7f5c
	ld c,a			;7f5d
	call m,084cdh		;7f5e
	ld l,l			;7f61
l7f62h:
	ld d,e			;7f62
	rst 38h			;7f63
sub_7f64h:
	pop hl			;7f64
	call m,09f7fh		;7f65
	add a,d			;7f68
	add a,a			;7f69
	jr nz,l7f79h		;7f6a
l7f6ch:
	add hl,bc		;7f6c
	ld (bc),a		;7f6d
	ld d,l			;7f6e
	ld d,h			;7f6f
l7f70h:
	ld h,(hl)		;7f70
sub_7f71h:
	jp p,l71a8h		;7f71
l7f74h:
	ld hl,01d29h		;7f74
	sub h			;7f77
	sbc a,c			;7f78
l7f79h:
	ld h,l			;7f79
	inc hl			;7f7a
	ld l,a			;7f7b
l7f7ch:
	ld a,a			;7f7c
sub_7f7dh:
	adc a,a			;7f7d
	sbc a,a			;7f7e
	ld a,a			;7f7f
	ld c,l			;7f80
	out (038h),a		;7f81
	ld d,(hl)		;7f83
	defb 0ddh,0efh,0ffh ;illegal sequence	;7f84
	pop hl			;7f87
	call m,0057fh		;7f88
	ld (0e624h),hl		;7f8b
	ld d,d			;7f8e
sub_7f8fh:
	push hl			;7f8f
	ld (hl),d		;7f90
	ld a,a			;7f91
	ld b,(hl)		;7f92
	ld c,l			;7f93
	ld h,(hl)		;7f94
	rst 28h			;7f95
	ld (hl),c		;7f96
	sub b			;7f97
	ld a,a			;7f98
l7f99h:
	sub h			;7f99
l7f9ah:
	ld h,a			;7f9a
	ld e,c			;7f9b
	ret z			;7f9c
	jr nz,$-120		;7f9d
sub_7f9fh:
	rst 0			;7f9f
	sub h			;7fa0
	sub d			;7fa1
	ld h,l			;7fa2
	ld a,a			;7fa3
	ld e,0cdh		;7fa4
	cp 07dh			;7fa6
l7fa8h:
	jr $+1			;7fa8
	push af			;7faa
	adc a,a			;7fab
	ld b,l			;7fac
	ld h,(hl)		;7fad
	ld h,l			;7fae
	ld a,a			;7faf
	scf			;7fb0
l7fb1h:
	sub b			;7fb1
	ld a,a			;7fb2
	cp d			;7fb3
	ld (bc),a		;7fb4
	ld a,a			;7fb5
	sbc a,h			;7fb6
l7fb7h:
	ret p			;7fb7
	adc a,(hl)		;7fb8
	pop hl			;7fb9
	ld d,c			;7fba
	ld b,l			;7fbb
	ld a,a			;7fbc
	ld c,c			;7fbd
	sub h			;7fbe
l7fbfh:
	ret m			;7fbf
	sbc a,e			;7fc0
	ld a,b			;7fc1
	ld de,06947h		;7fc2
	call m,086b1h		;7fc5
	sbc a,h			;7fc8
	sub e			;7fc9
	adc a,a			;7fca
	ld d,l			;7fcb
	ld a,a			;7fcc
	or d			;7fcd
	add a,b			;7fce
	inc a			;7fcf
	ld a,e			;7fd0
	ld h,a			;7fd1
	rra			;7fd2
	ld (bc),a		;7fd3
	dec h			;7fd4
	djnz $-106		;7fd5
	jp po,01f56h		;7fd7
	ld h,(hl)		;7fda
	halt			;7fdb
	ld d,b			;7fdc
	ld a,a			;7fdd
	ld e,l			;7fde
	rst 18h			;7fdf
	ld (0f266h),hl		;7fe0
	pop hl			;7fe3
	ld (hl),c		;7fe4
l7fe5h:
	ld d,d			;7fe5
	jr nz,$+129		;7fe6
	or e			;7fe8
	add a,b			;7fe9
l7feah:
	rla			;7fea
	sbc a,c			;7feb
	ld (de),a		;7fec
	ei			;7fed
	jp nz,0fc94h		;7fee
l7ff1h:
	ld e,c			;7ff1
	adc a,h			;7ff2
	add a,(hl)		;7ff3
	ld e,d			;7ff4
l7ff5h:
	ld b,d			;7ff5
l7ff6h:
	sub (hl)		;7ff6
	ld c,c			;7ff7
	sbc a,(hl)		;7ff8
	ld b,l			;7ff9
l7ffah:
	ld a,h			;7ffa
	ld a,a			;7ffb
l7ffch:
	di			;7ffc
l7ffdh:
	rst 8			;7ffd
l7ffeh:
	pop af			;7ffe
l7fffh:
	defb 030h		;7fff
