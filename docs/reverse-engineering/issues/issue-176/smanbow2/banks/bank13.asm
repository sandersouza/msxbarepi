; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank13.asm /tmp/smanbow2_bank_13.bin

	org 04000h

	ld c,l			;4000
	ld h,c			;4001
	ld l,(hl)		;4002
l4003h:
	ld h,d			;4003
	ld l,a			;4004
	ld (hl),a		;4005
	jr nz,l403ah		;4006
	jr nz,$+47		;4008
	jr nz,$+71		;400a
	ld a,b			;400c
	ld (hl),b		;400d
	ld l,h			;400e
	ld l,a			;400f
	ld (hl),e		;4010
l4011h:
	ld l,c			;4011
	ld l,a			;4012
	ld l,(hl)		;4013
	jr nz,l4036h		;4014
	jr nz,l4038h		;4016
	jr nz,l403ah		;4018
	jr nz,l403ch		;401a
	jr nz,l403eh		;401c
	jr nz,l4040h		;401e
	jr nz,l4042h		;4020
	jr nz,l4044h		;4022
	jr nz,l4046h		;4024
	jr nz,l4048h		;4026
	jr nz,l404ah		;4028
	jr nz,l404ch		;402a
	jr nz,l404eh		;402c
	jr nz,$+34		;402e
	jr nz,l4052h		;4030
	jr nz,l4054h		;4032
	jr nz,l4056h		;4034
l4036h:
	jr nz,l4058h		;4036
l4038h:
	jr nz,l405ah		;4038
l403ah:
	jr nz,l405ch		;403a
l403ch:
	jr nz,l405eh		;403c
l403eh:
	jr nz,l4060h		;403e
l4040h:
	jr nz,l4062h		;4040
l4042h:
	jr nz,l4091h		;4042
l4044h:
	ld d,l			;4044
	ld d,e			;4045
l4046h:
	ld c,c			;4046
	ld c,(hl)		;4047
l4048h:
	ld d,e			;4048
	ld d,h			;4049
l404ah:
	ld d,d			;404a
	ld d,e			;404b
l404ch:
	ld b,d			;404c
	ld c,e			;404d
l404eh:
	nop			;404e
	ld bc,00000h		;404f
l4052h:
	nop			;4052
	nop			;4053
l4054h:
	nop			;4054
	nop			;4055
l4056h:
	nop			;4056
	nop			;4057
l4058h:
	nop			;4058
	nop			;4059
l405ah:
	nop			;405a
	nop			;405b
l405ch:
	nop			;405c
	nop			;405d
l405eh:
	nop			;405e
	nop			;405f
l4060h:
	nop			;4060
	nop			;4061
l4062h:
	nop			;4062
	nop			;4063
	nop			;4064
	nop			;4065
	nop			;4066
	nop			;4067
	nop			;4068
	nop			;4069
	nop			;406a
	nop			;406b
	nop			;406c
	nop			;406d
	nop			;406e
	nop			;406f
	nop			;4070
	nop			;4071
	nop			;4072
	nop			;4073
	nop			;4074
	nop			;4075
	nop			;4076
	nop			;4077
	nop			;4078
	nop			;4079
	nop			;407a
	nop			;407b
	nop			;407c
	nop			;407d
	nop			;407e
	nop			;407f
	nop			;4080
	nop			;4081
	nop			;4082
	nop			;4083
	nop			;4084
	nop			;4085
	nop			;4086
	nop			;4087
	nop			;4088
	nop			;4089
	nop			;408a
	nop			;408b
	nop			;408c
	nop			;408d
	nop			;408e
	nop			;408f
	nop			;4090
l4091h:
	nop			;4091
	nop			;4092
	nop			;4093
	nop			;4094
	nop			;4095
	nop			;4096
	nop			;4097
	nop			;4098
	nop			;4099
	nop			;409a
	nop			;409b
	nop			;409c
	nop			;409d
	nop			;409e
	nop			;409f
	nop			;40a0
	nop			;40a1
	nop			;40a2
	nop			;40a3
	nop			;40a4
	nop			;40a5
	nop			;40a6
	nop			;40a7
	nop			;40a8
	nop			;40a9
	nop			;40aa
	nop			;40ab
	nop			;40ac
	nop			;40ad
	nop			;40ae
	nop			;40af
	nop			;40b0
	nop			;40b1
	nop			;40b2
	nop			;40b3
	nop			;40b4
l40b5h:
	nop			;40b5
	nop			;40b6
	nop			;40b7
	nop			;40b8
	nop			;40b9
	nop			;40ba
	nop			;40bb
	nop			;40bc
	nop			;40bd
	nop			;40be
	nop			;40bf
	nop			;40c0
	nop			;40c1
	nop			;40c2
	nop			;40c3
	nop			;40c4
	nop			;40c5
	nop			;40c6
	nop			;40c7
	nop			;40c8
	nop			;40c9
	nop			;40ca
	nop			;40cb
	nop			;40cc
	nop			;40cd
	nop			;40ce
	nop			;40cf
	nop			;40d0
	nop			;40d1
	nop			;40d2
	nop			;40d3
	nop			;40d4
	nop			;40d5
	nop			;40d6
	nop			;40d7
	nop			;40d8
	nop			;40d9
	nop			;40da
	nop			;40db
	nop			;40dc
	nop			;40dd
	nop			;40de
	nop			;40df
	nop			;40e0
	nop			;40e1
	nop			;40e2
	nop			;40e3
	nop			;40e4
	nop			;40e5
	nop			;40e6
	nop			;40e7
	nop			;40e8
	nop			;40e9
	nop			;40ea
	nop			;40eb
	nop			;40ec
	nop			;40ed
	nop			;40ee
	nop			;40ef
	nop			;40f0
	nop			;40f1
	nop			;40f2
	nop			;40f3
	nop			;40f4
	nop			;40f5
	nop			;40f6
	nop			;40f7
	nop			;40f8
	nop			;40f9
	nop			;40fa
	nop			;40fb
	nop			;40fc
	nop			;40fd
	nop			;40fe
	nop			;40ff
	nop			;4100
	nop			;4101
l4102h:
	nop			;4102
	nop			;4103
	nop			;4104
	nop			;4105
	nop			;4106
	nop			;4107
	nop			;4108
	nop			;4109
	nop			;410a
	nop			;410b
	nop			;410c
	nop			;410d
	nop			;410e
sub_410fh:
	nop			;410f
	nop			;4110
	nop			;4111
	nop			;4112
	nop			;4113
	nop			;4114
	nop			;4115
	nop			;4116
	nop			;4117
	nop			;4118
	nop			;4119
	nop			;411a
	nop			;411b
	nop			;411c
	nop			;411d
	nop			;411e
	nop			;411f
	nop			;4120
	nop			;4121
	nop			;4122
	nop			;4123
	nop			;4124
	nop			;4125
	nop			;4126
	nop			;4127
	nop			;4128
	nop			;4129
	nop			;412a
	nop			;412b
	nop			;412c
	nop			;412d
	nop			;412e
	nop			;412f
	nop			;4130
	nop			;4131
	nop			;4132
	nop			;4133
	nop			;4134
	nop			;4135
	nop			;4136
	nop			;4137
	nop			;4138
	nop			;4139
	nop			;413a
	nop			;413b
	nop			;413c
	nop			;413d
	nop			;413e
	nop			;413f
	nop			;4140
	nop			;4141
	nop			;4142
	nop			;4143
	nop			;4144
	nop			;4145
	nop			;4146
	nop			;4147
	nop			;4148
	nop			;4149
	nop			;414a
	nop			;414b
	nop			;414c
	nop			;414d
	nop			;414e
	nop			;414f
	nop			;4150
	ld d,00fh		;4151
	rrca			;4153
	rrca			;4154
	rrca			;4155
	rrca			;4156
	ld (03232h),a		;4157
	ld (08180h),a		;415a
	add a,b			;415d
	add a,b			;415e
	add a,c			;415f
l4160h:
	ld c,00eh		;4160
	ld c,010h		;4162
	djnz l4166h		;4164
l4166h:
	nop			;4166
	nop			;4167
	nop			;4168
	nop			;4169
	nop			;416a
	nop			;416b
	nop			;416c
	nop			;416d
	nop			;416e
	nop			;416f
	nop			;4170
	nop			;4171
	nop			;4172
	nop			;4173
	nop			;4174
	nop			;4175
	nop			;4176
	nop			;4177
	nop			;4178
	nop			;4179
	nop			;417a
	nop			;417b
	nop			;417c
	nop			;417d
	nop			;417e
	nop			;417f
	nop			;4180
	nop			;4181
	nop			;4182
	nop			;4183
	nop			;4184
	nop			;4185
	nop			;4186
	nop			;4187
	nop			;4188
	nop			;4189
	nop			;418a
	nop			;418b
	nop			;418c
	nop			;418d
	nop			;418e
	nop			;418f
	nop			;4190
	nop			;4191
	nop			;4192
	nop			;4193
	nop			;4194
	nop			;4195
	nop			;4196
	nop			;4197
	nop			;4198
	nop			;4199
	nop			;419a
	nop			;419b
	nop			;419c
	nop			;419d
	nop			;419e
	nop			;419f
	nop			;41a0
	nop			;41a1
	nop			;41a2
	nop			;41a3
	nop			;41a4
	nop			;41a5
	nop			;41a6
	nop			;41a7
	nop			;41a8
	nop			;41a9
	nop			;41aa
	nop			;41ab
	nop			;41ac
	nop			;41ad
	nop			;41ae
	nop			;41af
	nop			;41b0
	nop			;41b1
	nop			;41b2
	nop			;41b3
	nop			;41b4
	nop			;41b5
	nop			;41b6
	nop			;41b7
	nop			;41b8
	nop			;41b9
	nop			;41ba
	nop			;41bb
	nop			;41bc
	nop			;41bd
	nop			;41be
	nop			;41bf
l41c0h:
	nop			;41c0
	nop			;41c1
	nop			;41c2
	nop			;41c3
	nop			;41c4
	nop			;41c5
	nop			;41c6
	nop			;41c7
	nop			;41c8
	nop			;41c9
	dec c			;41ca
	add hl,de		;41cb
	dec de			;41cc
	rrca			;41cd
	ld de,01c0bh		;41ce
	dec bc			;41d1
	inc l			;41d2
	rrca			;41d3
	jr nz,l41e5h		;41d4
	ld bc,01c00h		;41d6
	rrca			;41d9
	ld e,00fh		;41da
	dec e			;41dc
	rrca			;41dd
	add hl,hl		;41de
	add hl,bc		;41df
	ld de,0000eh		;41e0
	nop			;41e3
	ld h,e			;41e4
l41e5h:
	ld bc,00664h		;41e5
	ld h,h			;41e8
	ld b,064h		;41e9
	rlca			;41eb
	ld h,h			;41ec
	ex af,af'		;41ed
	dec c			;41ee
	nop			;41ef
	nop			;41f0
	nop			;41f1
	nop			;41f2
	nop			;41f3
	nop			;41f4
	nop			;41f5
	ld l,h			;41f6
	ld bc,0016ch		;41f7
	nop			;41fa
	ld bc,00000h		;41fb
	ld l,h			;41fe
	ld bc,0016ch		;41ff
	ld l,h			;4202
	ld bc,0016ch		;4203
	nop			;4206
	nop			;4207
	ld l,h			;4208
	ld bc,0016ch		;4209
	ld l,h			;420c
	ld bc,0016ch		;420d
	ld l,h			;4210
	ld bc,00000h		;4211
	ld l,h			;4214
	ld bc,0016ch		;4215
	ld l,h			;4218
	ld bc,0016ch		;4219
	ld l,h			;421c
	ld bc,00000h		;421d
	ld l,h			;4220
	ld bc,0016ch		;4221
	ld l,h			;4224
	ld bc,0016ch		;4225
	ld l,h			;4228
	ld bc,00000h		;4229
	ld l,h			;422c
	ld bc,0016ch		;422d
	ld l,h			;4230
	ld bc,0016ch		;4231
	ld l,h			;4234
	ld bc,00000h		;4235
	ld l,h			;4238
	ld bc,0016ch		;4239
l423ch:
	ld l,h			;423c
	ld bc,0016ch		;423d
l4240h:
	ld l,h			;4240
	ld bc,00000h		;4241
	ld l,h			;4244
	ld bc,0016ch		;4245
	ld l,h			;4248
	ld bc,0016ch		;4249
	ld l,h			;424c
	ld bc,00000h		;424d
	ld l,h			;4250
	ld bc,0016ch		;4251
	ld l,h			;4254
	ld bc,0016ch		;4255
	ld l,h			;4258
	ld bc,00000h		;4259
	ld l,h			;425c
	ld bc,0016ch		;425d
	ld l,h			;4260
	ld bc,0016ch		;4261
	ld l,h			;4264
	ld bc,00000h		;4265
	ld l,h			;4268
	ld bc,0016ch		;4269
	ld l,h			;426c
	ld bc,0016ch		;426d
	ld l,h			;4270
	ld bc,00000h		;4271
	ld l,h			;4274
	ld bc,0016ch		;4275
	ld l,h			;4278
	ld bc,0016ch		;4279
	ld l,h			;427c
	ld bc,00000h		;427d
	rst 38h			;4280
	xor h			;4281
	ld c,(hl)		;4282
	nop			;4283
	nop			;4284
	nop			;4285
	jp l4cb3h		;4286
	inc b			;4289
	ex af,af'		;428a
	ex af,af'		;428b
	inc b			;428c
	inc b			;428d
	ld bc,00303h		;428e
	rlca			;4291
	nop			;4292
	jp m,00001h		;4293
	nop			;4296
	inc c			;4297
	ex af,af'		;4298
	inc c			;4299
	nop			;429a
	nop			;429b
	ld (bc),a		;429c
	ret nz			;429d
	ret nz			;429e
	ret z			;429f
	jp nz,03cf8h		;42a0
	rlca			;42a3
	jr nc,$+98		;42a4
	nop			;42a6
	inc bc			;42a7
	ld h,b			;42a8
	jr l42cbh		;42a9
	inc e			;42ab
	ld c,015h		;42ac
	ld e,020h		;42ae
	rra			;42b0
	rla			;42b1
	ld b,003h		;42b2
	rrca			;42b4
	ld c,01ch		;42b5
	jr l42d8h		;42b7
	ret nz			;42b9
	nop			;42ba
	ret po			;42bb
	ret p			;42bc
	call p,00fdeh		;42bd
	scf			;42c0
	rst 38h			;42c1
	ret m			;42c2
	ld a,(bc)		;42c3
	ld b,b			;42c4
	sub b			;42c5
	dec b			;42c6
	nop			;42c7
	defb 0fdh,001h,04eh ;illegal sequence	;42c8
l42cbh:
	rlca			;42cb
	inc c			;42cc
	djnz l42eeh		;42cd
	ld h,b			;42cf
	ccf			;42d0
	jp p,03ffch		;42d1
	cp 01eh			;42d4
	cp (hl)			;42d6
	ret nz			;42d7
l42d8h:
	nop			;42d8
	ld b,b			;42d9
	ld (bc),a		;42da
	djnz l431ch		;42db
	rra			;42dd
	ld e,h			;42de
	rlca			;42df
	ld bc,0381ch		;42e0
	jr nc,l42e5h		;42e3
l42e5h:
	nop			;42e5
	ld (0f6d8h),hl		;42e6
	ld (iy+078h),e		;42e9
	inc b			;42ec
	ccf			;42ed
l42eeh:
	ld b,c			;42ee
	dec sp			;42ef
	ld bc,000f2h		;42f0
	ld (bc),a		;42f3
	rrca			;42f4
	halt			;42f5
	ccf			;42f6
	call pe,0e251h		;42f7
	ld h,c			;42fa
	add a,b			;42fb
	ld (hl),d		;42fc
	ccf			;42fd
	ld (hl),b		;42fe
	ret nc			;42ff
	ccf			;4300
	jr $+65			;4301
	jr c,l4319h		;4303
	ld e,00fh		;4305
l4307h:
	rlca			;4307
	inc c			;4308
	ccf			;4309
	ld bc,l7c40h		;430a
	ld a,(hl)		;430d
	rra			;430e
	add a,b			;430f
	ld d,008h		;4310
	ld a,0ffh		;4312
	nop			;4314
l4315h:
	call po,05a00h		;4315
	rra			;4318
l4319h:
	nop			;4319
	rst 38h			;431a
	inc bc			;431b
l431ch:
	add hl,bc		;431c
	ld a,h			;431d
	add hl,bc		;431e
	inc bc			;431f
	rst 38h			;4320
	rra			;4321
	or b			;4322
	ld h,h			;4323
	jr nc,l4376h		;4324
	cp b			;4326
	nop			;4327
	call nc,0d8dah		;4328
	djnz l4315h		;432b
l432dh:
	djnz l4307h		;432d
	jp c,0d41ch		;432f
	cp b			;4332
	ld d,b			;4333
	ld c,e			;4334
	daa			;4335
	inc bc			;4336
	jr nz,l4375h		;4337
	dec e			;4339
	ld a,d			;433a
	nop			;433b
	ret nc			;433c
	nop			;433d
	ret pe			;433e
	ld d,0e8h		;433f
	jr l432dh		;4341
	call nc,0d0e8h		;4343
	jp pe,0000fh		;4346
	inc bc			;4349
	rlca			;434a
	ld a,a			;434b
	rst 38h			;434c
	ld a,a			;434d
	rrca			;434e
	inc bc			;434f
	ld c,0c0h		;4350
	and b			;4352
	xor b			;4353
	daa			;4354
	call nc,01ed6h		;4355
	ret po			;4358
	ld c,07ch		;4359
	ld h,c			;435b
	inc sp			;435c
	inc a			;435d
	ld b,b			;435e
	rrca			;435f
	and (hl)		;4360
	ld d,b			;4361
	ld e,033h		;4362
	jr l43a9h		;4364
	ld e,l			;4366
	sbc a,(hl)		;4367
	nop			;4368
	add hl,de		;4369
	inc a			;436a
	nop			;436b
	dec c			;436c
	ex (sp),hl		;436d
	rrca			;436e
	ret pe			;436f
	ld bc,000e3h		;4370
	rlca			;4373
	push bc			;4374
l4375h:
	add a,b			;4375
l4376h:
	nop			;4376
	rst 0			;4377
	rlca			;4378
	adc a,a			;4379
	ccf			;437a
	rst 18h			;437b
	nop			;437c
	ret m			;437d
	jr nz,l43b0h		;437e
	inc e			;4380
	dec b			;4381
	dec d			;4382
	dec (hl)		;4383
	ld (de),a		;4384
	dec d			;4385
	dec b			;4386
	inc e			;4387
	cp e			;4388
	call c,0a0dfh		;4389
	ret p			;438c
	call m,sub_7bf0h	;438d
	ret nz			;4390
	dec h			;4391
	nop			;4392
	ld (bc),a		;4393
	ld e,c			;4394
	sub e			;4395
	or (hl)			;4396
	rst 8			;4397
	ld h,c			;4398
	ex af,af'		;4399
	pop af			;439a
	djnz l43abh		;439b
	ld b,b			;439d
	ld a,(0ec57h)		;439e
	ld a,a			;43a1
	jp 0f060h		;43a2
	ret p			;43a5
	ld h,b			;43a6
	ld e,(hl)		;43a7
	rst 20h			;43a8
l43a9h:
	and d			;43a9
	sub (hl)		;43aa
l43abh:
	sub l			;43ab
	add a,(hl)		;43ac
	jr nc,l43afh		;43ad
l43afh:
	ld c,l			;43af
l43b0h:
	and (hl)		;43b0
	and d			;43b1
	inc l			;43b2
	jp 0385ch		;43b3
	jr l43c4h		;43b6
	nop			;43b8
	ld c,018h		;43b9
	jr c,l4420h		;43bb
	ld b,b			;43bd
	inc bc			;43be
	inc c			;43bf
	inc de			;43c0
	rla			;43c1
	ld l,02ch		;43c2
l43c4h:
	rlca			;43c4
	inc l			;43c5
	ld l,017h		;43c6
	inc de			;43c8
	inc c			;43c9
	rra			;43ca
	jr nz,$+50		;43cb
	ret z			;43cd
	ret pe			;43ce
	ld (hl),h		;43cf
	inc (hl)		;43d0
	ld b,034h		;43d1
	ld (hl),h		;43d3
	ret pe			;43d4
	ret z			;43d5
	jr nc,$+33		;43d6
	ret			;43d8
	ld a,01eh		;43d9
	push de			;43db
	sub h			;43dc
	ld (hl),b		;43dd
	and l			;43de
	ld b,070h		;43df
	jr nc,l441bh		;43e1
	ld e,040h		;43e3
	ret nz			;43e5
	ld a,078h		;43e6
	inc e			;43e8
	inc c			;43e9
	ld c,006h		;43ea
	ld c,h			;43ec
	ld b,0f3h		;43ed
	inc e			;43ef
	ld l,h			;43f0
	ld a,b			;43f1
	ld b,b			;43f2
	ld a,011h		;43f3
l43f5h:
	nop			;43f5
	ld h,028h		;43f6
	ld c,b			;43f8
	ld d,b			;43f9
	ld d,b			;43fa
	ld c,b			;43fb
	jr z,$+40		;43fc
	ld l,h			;43fe
	ld de,03e40h		;43ff
l4402h:
	adc a,b			;4402
	nop			;4403
	ld h,h			;4404
	inc d			;4405
	ld (de),a		;4406
	ld a,(bc)		;4407
	ld a,(bc)		;4408
	ld (de),a		;4409
	inc d			;440a
l440bh:
	ld h,h			;440b
l440ch:
	ld h,l			;440c
	adc a,b			;440d
	ld b,b			;440e
	push bc			;440f
	dec d			;4410
	sbc a,h			;4411
	inc c			;4412
	jr nz,l4475h		;4413
	ret nz			;4415
	nop			;4416
	nop			;4417
	ld h,b			;4418
	jr nz,l441bh		;4419
l441bh:
	inc c			;441b
	rlca			;441c
	inc bc			;441d
	ret nz			;441e
	ret po			;441f
l4420h:
	ld d,b			;4420
	jr nc,l43f5h		;4421
	ld b,061h		;4423
	inc bc			;4425
	nop			;4426
	ld b,004h		;4427
	ld sp,hl		;4429
	djnz l440ch		;442a
	ret nz			;442c
	inc bc			;442d
	ld b,(hl)		;442e
	inc b			;442f
	jp z,0cacah		;4430
	xor c			;4433
	ld b,b			;4434
	call pe,01f6ah		;4435
	dec h			;4438
	ex de,hl		;4439
	ld (l55eah),a		;443a
	ld (bc),a		;443d
	ex af,af'		;443e
l443fh:
	add a,d			;443f
	jr nz,l4402h		;4440
	inc c			;4442
	daa			;4443
	nop			;4444
	ld a,a			;4445
	cpl			;4446
	inc b			;4447
l4448h:
	xor d			;4448
	ld a,d			;4449
	ld a,d			;444a
	xor d			;444b
	inc b			;444c
	dec b			;444d
	cpl			;444e
	ld a,a			;444f
	inc c			;4450
	jr nc,l4472h		;4451
	add a,b			;4453
	ld h,b			;4454
	cp 014h			;4455
	ld a,(bc)		;4457
	ld bc,0feb7h		;4458
	cp 0b7h			;445b
	ld a,(bc)		;445d
	inc d			;445e
	cp 050h			;445f
	inc h			;4461
	ret m			;4462
	ld a,(hl)		;4463
	add hl,de		;4464
	ret nc			;4465
	ret nz			;4466
	ei			;4467
	ld d,l			;4468
	dec b			;4469
	dec b			;446a
	ld d,l			;446b
	ld c,h			;446c
	ei			;446d
	rst 8			;446e
	inc sp			;446f
	ld d,h			;4470
	rrca			;4471
l4472h:
	ld sp,hl		;4472
	ret m			;4473
	inc b			;4474
l4475h:
	call m,0ea00h		;4475
	push af			;4478
	ld c,b			;4479
l447ah:
	dec h			;447a
	ld c,b			;447b
	ld (de),a		;447c
	push af			;447d
	jp pe,0c500h		;447e
	ld h,l			;4481
	ld c,e			;4482
	or a			;4483
	ld a,(bc)		;4484
	xor b			;4485
	ret m			;4486
	call nz,0030dh		;4487
	xor b			;448a
	sbc a,d			;448b
	cp l			;448c
	ld bc,l7c04h		;448d
	ld bc,0dcfdh		;4490
	nop			;4493
	or a			;4494
	ex (sp),hl		;4495
	jp c,00303h		;4496
	defb 0ddh,001h,0fch ;illegal sequence	;4499
	ld a,h			;449c
	ld (de),a		;449d
	ld de,00050h		;449e
	dec c			;44a1
	dec c			;44a2
	jr nz,l450ah		;44a3
	ld b,0a1h		;44a5
	ld (03e80h),hl		;44a7
	jp nz,05a00h		;44aa
	ret c			;44ad
	ld (bc),a		;44ae
	call 00b06h		;44af
	nop			;44b2
l44b3h:
	ld b,000h		;44b3
	ld d,(hl)		;44b5
	xor c			;44b6
	ld a,a			;44b7
	add hl,de		;44b8
	inc d			;44b9
	add hl,bc		;44ba
	inc c			;44bb
	add hl,de		;44bc
	ld a,a			;44bd
	ld d,d			;44be
	xor l			;44bf
	inc c			;44c0
	nop			;44c1
	rra			;44c2
	and b			;44c3
	ld e,0a0h		;44c4
	ld d,h			;44c6
	rst 38h			;44c7
	ld a,(de)		;44c8
	push bc			;44c9
	nop			;44ca
	ld a,(bc)		;44cb
	ld a,(de)		;44cc
	rst 38h			;44cd
	or h			;44ce
	ld b,b			;44cf
	ld a,0a0h		;44d0
	rra			;44d2
	add a,h			;44d3
	ccf			;44d4
	ld d,0a8h		;44d5
	ld d,(hl)		;44d7
	rla			;44d8
	ld (bc),a		;44d9
	ld b,d			;44da
	ld d,01ah		;44db
	xor l			;44dd
	ld d,b			;44de
	dec l			;44df
	ld c,h			;44e0
	ex af,af'		;44e1
	and b			;44e2
	ld e,a			;44e3
	and b			;44e4
l44e5h:
	nop			;44e5
	ld l,a			;44e6
	push hl			;44e7
	jr nc,l450ch		;44e8
	push af			;44ea
	push hl			;44eb
	add a,c			;44ec
	adc a,e			;44ed
	rst 10h			;44ee
	inc c			;44ef
	ld sp,05217h		;44f0
	ccf			;44f3
	ret			;44f4
	xor c			;44f5
	ld d,(hl)		;44f6
	ccf			;44f7
	ret nz			;44f8
	ld a,040h		;44f9
	or h			;44fb
	push hl			;44fc
	ccf			;44fd
	ld d,h			;44fe
	ld c,d			;44ff
l4500h:
	sbc a,b			;4500
	ccf			;4501
	dec l			;4502
	add hl,sp		;4503
	ld d,b			;4504
	xor l			;4505
	ccf			;4506
	ld a,(de)		;4507
	ld d,(hl)		;4508
	xor b			;4509
l450ah:
	ld d,03fh		;450a
l450ch:
	ld b,b			;450c
	adc a,038h		;450d
	ccf			;450f
	dec l			;4510
	ld b,(hl)		;4511
	ld c,h			;4512
	inc h			;4513
	djnz l451bh		;4514
	and c			;4516
	ld (bc),a		;4517
	dec d			;4518
	and b			;4519
	inc h			;451a
l451bh:
	ld hl,015a0h		;451b
	sbc a,l			;451e
	ld b,d			;451f
	dec b			;4520
	djnz l44b3h		;4521
	ld sp,00224h		;4523
	jr l457ch		;4526
	ld (bc),a		;4528
	nop			;4529
	ld d,h			;452a
	jp po,03f0ah		;452b
	ld hl,00818h		;452e
	rra			;4531
	dec d			;4532
	ld d,l			;4533
	ld d,l			;4534
	inc bc			;4535
	ld e,h			;4536
	ret nz			;4537
	jr l459bh		;4538
	ld bc,09213h		;453a
	sub d			;453d
	rra			;453e
	dec h			;453f
	ld d,h			;4540
	rrca			;4541
	ld d,h			;4542
	rra			;4543
	add hl,bc		;4544
	ld l,c			;4545
	jr nz,$+7		;4546
	ld bc,0d93fh		;4548
	ld bc,0eb05h		;454b
l454eh:
	ld hl,(02918h)		;454e
	jr nz,l4559h		;4551
	ccf			;4553
l4554h:
	cp 021h			;4554
	ccf			;4556
	ld b,020h		;4557
l4559h:
	jr l454eh		;4559
	add hl,hl		;455b
	rst 18h			;455c
	ld a,c			;455d
	ccf			;455e
	pop hl			;455f
	jp (hl)			;4560
	ld (hl),h		;4561
	rst 38h			;4562
	jp (hl)			;4563
	sub h			;4564
	ld bc,0c93fh		;4565
	ld bc,0ff94h		;4568
	ld a,(0141eh)		;456b
l456eh:
	inc a			;456e
	ld a,037h		;456f
	and 0c0h		;4571
	add a,b			;4573
	scf			;4574
	ld a,030h		;4575
	inc a			;4577
	ld e,006h		;4578
	ld (hl),d		;457a
	cp e			;457b
l457ch:
	nop			;457c
	add a,b			;457d
	ld a,b			;457e
	ld (hl),b		;457f
	defb 0ddh,0fdh,070h ;illegal sequence	;4580
	ld a,b			;4583
	add a,b			;4584
	jr $-19			;4585
	or d			;4587
	add a,b			;4588
	rra			;4589
	ld (l481ah),hl		;458a
	sub h			;458d
	add a,c			;458e
	rra			;458f
	add a,c			;4590
	ld a,(de)		;4591
	sub h			;4592
	ld c,b			;4593
	ld (0b21fh),hl		;4594
	nop			;4597
	ret			;4598
	inc b			;4599
	and b			;459a
l459bh:
	ld (0fcbdh),hl		;459b
	ld (01ca0h),hl		;459e
	inc b			;45a1
	sbc a,c			;45a2
	ld (hl),d		;45a3
	jr c,l45cah		;45a4
	ld b,0dch		;45a6
	and d			;45a8
l45a9h:
	pop bc			;45a9
	cp l			;45aa
	adc a,c			;45ab
	pop hl			;45ac
	ld (0d1e2h),hl		;45ad
	ld a,a			;45b0
	ret p			;45b1
	ld a,(03f83h)		;45b2
	ret z			;45b5
	add a,e			;45b6
	ld l,d			;45b7
	or b			;45b8
	ld (hl),b		;45b9
	ld b,b			;45ba
	rra			;45bb
	ld a,(bc)		;45bc
	ld bc,0081fh		;45bd
	djnz l45d2h		;45c0
	ex af,af'		;45c2
	rra			;45c3
	ld a,(bc)		;45c4
	rra			;45c5
l45c6h:
	ret z			;45c6
	jr nc,$+76		;45c7
	add a,l			;45c9
l45cah:
	ld l,b			;45ca
	jr nz,l460ch		;45cb
	jr nz,l4554h		;45cd
	ld a,(de)		;45cf
	ld d,a			;45d0
	ret p			;45d1
l45d2h:
	ret m			;45d2
	ld b,019h		;45d3
	djnz $+1		;45d5
	nop			;45d7
	rla			;45d8
	djnz l45dch		;45d9
	inc b			;45db
l45dch:
	djnz $+84		;45dc
	add hl,de		;45de
	sub d			;45df
	ret nz			;45e0
	ld h,b			;45e1
	jr nc,l45f8h		;45e2
	nop			;45e4
	ret m			;45e5
	jr c,l464ch		;45e6
	jr c,l45c6h		;45e8
	inc d			;45ea
	ld (hl),c		;45eb
	jr nc,l464ch		;45ec
	xor b			;45ee
	ld b,c			;45ef
	add hl,bc		;45f0
	ld bc,l5439h		;45f1
	sub b			;45f4
	ld bc,00931h		;45f5
l45f8h:
	ld (bc),a		;45f8
	and c			;45f9
	sub b			;45fa
	add a,b			;45fb
	jr nz,l4644h		;45fc
	nop			;45fe
	ld b,h			;45ff
	call nz,046c9h		;4600
	ld l,l			;4603
	jr nz,$+32		;4604
	rst 18h			;4606
	inc bc			;4607
	inc sp			;4608
	add hl,hl		;4609
	jr l464bh		;460a
l460ch:
	sub c			;460c
	jr $+43			;460d
	inc sp			;460f
l4610h:
	rst 18h			;4610
	ld b,l			;4611
	and 003h		;4612
	sbc a,b			;4614
	ld hl,(03f37h)		;4615
	sub c			;4618
	scf			;4619
	ld hl,(0f898h)		;461a
	ld b,(hl)		;461d
	jr nz,$+94		;461e
	ld a,(de)		;4620
	ccf			;4621
	xor d			;4622
	ld bc,0bf67h		;4623
	jp z,0e420h		;4626
	ld b,(hl)		;4629
	ld b,a			;462a
	ccf			;462b
	call z,01004h		;462c
	ld e,0feh		;462f
	nop			;4631
	ld (bc),a		;4632
	sbc a,(hl)		;4633
	jr z,$-104		;4634
	jp z,0f05bh		;4636
	ld c,(hl)		;4639
	add hl,bc		;463a
	ld h,(hl)		;463b
	ld e,a			;463c
	ret nz			;463d
	ld d,l			;463e
	ld e,c			;463f
	adc a,l			;4640
	cp 049h			;4641
	add hl,bc		;4643
l4644h:
	push bc			;4644
	add a,(hl)		;4645
	and l			;4646
	adc a,(hl)		;4647
	and (hl)		;4648
	ld h,075h		;4649
l464bh:
	add hl,bc		;464b
l464ch:
	and (hl)		;464c
	ld h,d			;464d
	and b			;464e
	xor (hl)		;464f
	jp nc,09c1bh		;4650
	add a,a			;4653
	call po,00009h		;4654
	jr l466fh		;4657
	inc l			;4659
	inc h			;465a
	jr $+63			;465b
	call m,00077h		;465d
	call 0ef3ah		;4660
	ld (hl),b		;4663
	inc c			;4664
	ld d,012h		;4665
	ld h,d			;4667
	inc c			;4668
	jp pe,l6683h		;4669
	ld c,d			;466c
	ld b,d			;466d
	ld h,(hl)		;466e
l466fh:
	inc a			;466f
	ld e,0d7h		;4670
	jr nz,l4674h		;4672
l4674h:
	ld h,b			;4674
	ld e,033h		;4675
	dec h			;4677
	ld hl,l6333h		;4678
	ld e,0e2h		;467b
	ld h,e			;467d
	ld c,e			;467e
	ld e,e			;467f
	inc sp			;4680
	ld e,0cch		;4681
	call z,03cd2h		;4683
	sub 00ch		;4686
	ld c,080h		;4688
	ld a,b			;468a
	call z,09784h		;468b
	call z,0f178h		;468e
	rrca			;4691
	adc a,a			;4692
	dec sp			;4693
	pop hl			;4694
	dec h			;4695
	dec sp			;4696
	ex af,af'		;4697
l4698h:
	push bc			;4698
	and 081h		;4699
	ld hl,02418h		;469b
	inc l			;469e
	defb 0fdh,0bch ;cp iyh	;469f
	ld b,00ch		;46a1
	ld (de),a		;46a3
l46a4h:
	ld d,00ch		;46a4
	rst 28h			;46a6
	ld de,l47c0h		;46a7
	and 0b4h		;46aa
	add a,a			;46ac
	ld b,h			;46ad
	ld b,d			;46ae
	ld c,d			;46af
	add a,a			;46b0
	ld e,d			;46b1
	dec sp			;46b2
	ld hl,03bc7h		;46b3
	ld h,b			;46b6
	ld e,080h		;46b7
	ld b,009h		;46b9
	add hl,bc		;46bb
	ld c,(hl)		;46bc
	rrca			;46bd
	ret c			;46be
	rlca			;46bf
	jr c,l470eh		;46c0
	ld c,h			;46c2
	jr c,l46d7h		;46c3
	ld h,c			;46c5
	inc e			;46c6
	ld (01c32h),a		;46c7
	or e			;46ca
	sbc a,d			;46cb
l46cch:
	sub b			;46cc
	ld (hl),090h		;46cd
	ld h,b			;46cf
	jr nz,l46f3h		;46d0
	add a,01fh		;46d2
	ex af,af'		;46d4
	pop af			;46d5
	add hl,de		;46d6
l46d7h:
	in a,(0e0h)		;46d7
	djnz l46a4h		;46d9
	adc a,l			;46db
	djnz l46fdh		;46dc
	sub (hl)		;46de
	dec e			;46df
	out (071h),a		;46e0
	ld (hl),a		;46e2
	dec c			;46e3
	inc h			;46e4
	inc a			;46e5
	jr l471dh		;46e6
	inc sp			;46e8
	ld h,026h		;46e9
	dec (hl)		;46eb
	ld c,c			;46ec
	ld b,064h		;46ed
	ld h,h			;46ef
	jr c,l4708h		;46f0
	xor (hl)		;46f2
l46f3h:
	inc a			;46f3
	rla			;46f4
	adc a,l			;46f5
	push hl			;46f6
	jr l471ah		;46f7
	ld l,b			;46f9
	ex af,af'		;46fa
l46fbh:
	inc b			;46fb
	ld a,(de)		;46fc
l46fdh:
	ld a,(de)		;46fd
	xor 0b0h		;46fe
	inc bc			;4700
	jr nz,l475bh		;4701
	ld e,b			;4703
	jr nz,l473ch		;4704
	adc a,d			;4706
	rla			;4707
l4708h:
	cp c			;4708
	ld a,(00102h)		;4709
	jr nc,l4756h		;470c
l470eh:
	ld c,b			;470e
	ld a,b			;470f
	jr nc,l46fbh		;4710
	ld (hl),d		;4712
	rst 18h			;4713
	ld (hl),a		;4714
	ret po			;4715
	inc c			;4716
	call nc,0c322h		;4717
l471ah:
	inc h			;471a
	ld e,012h		;471b
l471dh:
	cp h			;471d
	ld c,(hl)		;471e
	add a,b			;471f
	add a,l			;4720
	ld c,a			;4721
	sbc a,a			;4722
	ld c,e			;4723
	jr nc,l4747h		;4724
	defb 0fdh,052h,0a3h ;illegal sequence	;4726
	ld (hl),e		;4729
	defb 0ddh,0d8h,08dh ;illegal sequence	;472a
	ex (sp),hl		;472d
	jp nc,0899fh		;472e
	sub d			;4731
	rst 38h			;4732
	ld a,a			;4733
	add a,e			;4734
	defb 0fdh,000h,0e0h ;illegal sequence	;4735
	jr nz,$+47		;4738
	dec hl			;473a
	dec hl			;473b
l473ch:
	dec bc			;473c
	dec l			;473d
	dec l			;473e
	inc l			;473f
	cpl			;4740
	inc bc			;4741
	ld b,05ah		;4742
	jr nz,l4746h		;4744
l4746h:
	dec hl			;4746
l4747h:
	call c,0150eh		;4747
	rst 20h			;474a
	dec c			;474b
	nop			;474c
	dec de			;474d
	cpl			;474e
	ld a,(de)		;474f
	inc de			;4750
	halt			;4751
	ld c,02bh		;4752
	pop bc			;4754
	inc c			;4755
l4756h:
	dec l			;4756
	cpl			;4757
	inc l			;4758
	inc de			;4759
	ld (hl),c		;475a
l475bh:
	dec c			;475b
	ccf			;475c
	sra d			;475d
	ccf			;475f
	sub 00eh		;4760
	di			;4762
	ccf			;4763
	ld (hl),b		;4764
	ld hl,(02a3fh)		;4765
	call p,0773fh		;4768
	ld hl,(01c3fh)		;476b
	ld h,(hl)		;476e
	nop			;476f
	inc b			;4770
	ld (hl),e		;4771
	rlca			;4772
	exx			;4773
	ld hl,(0e32bh)		;4774
	xor l			;4777
	ld c,h			;4778
	jr c,$-78		;4779
	ld b,a			;477b
l477ch:
	dec hl			;477c
	and e			;477d
	ld h,(hl)		;477e
	ld l,02eh		;477f
	rrca			;4781
	pop de			;4782
	ld d,0b5h		;4783
	jp po,0c10fh		;4785
	jp z,0090fh		;4788
	adc a,046h		;478b
	ld h,c			;478d
	nop			;478e
	add hl,bc		;478f
	dec hl			;4790
	ld bc,06e51h		;4791
	and c			;4794
	ld d,h			;4795
	inc (hl)		;4796
	dec (hl)		;4797
	nop			;4798
	dec bc			;4799
	djnz l47a7h		;479a
	ld a,(bc)		;479c
	ld c,d			;479d
	ld bc,00b0ch		;479e
	dec l			;47a1
	rrc e			;47a2
	ld (de),a		;47a4
	rra			;47a5
	ld c,b			;47a6
l47a7h:
	dec hl			;47a7
	add hl,hl		;47a8
	and l			;47a9
	defb 0ddh,01fh,037h ;illegal sequence	;47aa
	jr nz,$+48		;47ad
	rra			;47af
	jr nz,l482ah		;47b0
	ret po			;47b2
	ld a,d			;47b3
	inc l			;47b4
	rra			;47b5
	cpl			;47b6
	dec hl			;47b7
	add hl,bc		;47b8
	rra			;47b9
	ld b,d			;47ba
	ld a,(bc)		;47bb
	inc c			;47bc
	ld de,00bbah		;47bd
l47c0h:
	ld l,a			;47c0
	ld a,(00b0eh)		;47c1
	ld l,a			;47c4
	di			;47c5
	nop			;47c6
	inc a			;47c7
	dec bc			;47c8
	ld c,005h		;47c9
	ld a,(hl)		;47cb
	nop			;47cc
	dec a			;47cd
	add hl,de		;47ce
	ld a,e			;47cf
	ld l,000h		;47d0
	dec a			;47d2
	ld l,e			;47d3
	nop			;47d4
	and a			;47d5
	rst 38h			;47d6
	ei			;47d7
	rst 30h			;47d8
	add hl,hl		;47d9
	nop			;47da
	call c,0fb20h		;47db
	nop			;47de
	sub d			;47df
	add hl,bc		;47e0
	xor e			;47e1
	ld l,(hl)		;47e2
	ld (bc),a		;47e3
	nop			;47e4
	ld l,h			;47e5
	ex af,af'		;47e6
	dec b			;47e7
	ld c,(hl)		;47e8
	add a,b			;47e9
	nop			;47ea
	nop			;47eb
	ld c,l			;47ec
	ld c,l			;47ed
	ld c,h			;47ee
	ld c,e			;47ef
	ld c,(hl)		;47f0
	ld c,h			;47f1
	ld c,h			;47f2
	dec b			;47f3
	rst 38h			;47f4
	dec bc			;47f5
	rst 30h			;47f6
	rra			;47f7
	ld e,(hl)		;47f8
	ld c,a			;47f9
	nop			;47fa
	rra			;47fb
	add hl,sp		;47fc
	dec bc			;47fd
	sbc a,(hl)		;47fe
	ld h,h			;47ff
	ld bc,0fe0ah		;4800
	adc a,a			;4803
	ld (hl),h		;4804
	ld b,002h		;4805
	ld b,d			;4807
	inc c			;4808
	ld c,e			;4809
	nop			;480a
	ld c,d			;480b
	ld c,e			;480c
	pop af			;480d
	ld b,04bh		;480e
	ld b,d			;4810
	ld b,d			;4811
	ld b,052h		;4812
	dec bc			;4814
	jp 00c1bh		;4815
	ld a,(bc)		;4818
	dec a			;4819
l481ah:
	ld b,c			;481a
	jp z,0d30ah		;481b
	ld h,h			;481e
	ld c,l			;481f
	nop			;4820
	ld c,a			;4821
	add hl,de		;4822
	ld c,l			;4823
	nop			;4824
	ld c,h			;4825
	ld b,d			;4826
	ld b,(hl)		;4827
	ld d,h			;4828
	ex af,af'		;4829
l482ah:
	nop			;482a
	push bc			;482b
	ld (hl),e		;482c
	and c			;482d
	ld d,c			;482e
	ld l,02fh		;482f
	call p,0942dh		;4831
	dec bc			;4834
	dec c			;4835
	inc sp			;4836
	xor a			;4837
	call nz,00f0eh		;4838
	dec hl			;483b
	dec c			;483c
	sbc a,d			;483d
	dec bc			;483e
	nop			;483f
	ld l,h			;4840
	ld c,h			;4841
	adc a,(hl)		;4842
	ld l,04bh		;4843
	ld c,e			;4845
	ld b,027h		;4846
	ld l,003h		;4848
	nop			;484a
	or e			;484b
	ld c,d			;484c
	nop			;484d
	in a,(013h)		;484e
	ld b,h			;4850
	nop			;4851
	ld c,00dh		;4852
	jr c,l4863h		;4854
	sbc a,e			;4856
	cp h			;4857
	dec bc			;4858
	add a,a			;4859
	ld c,a			;485a
	nop			;485b
	rlca			;485c
	ld b,b			;485d
	ld c,a			;485e
	nop			;485f
	inc a			;4860
	xor (hl)		;4861
	sbc a,b			;4862
l4863h:
	nop			;4863
	dec c			;4864
	ld b,(hl)		;4865
	inc bc			;4866
	ld e,a			;4867
	inc bc			;4868
	dec c			;4869
	add hl,bc		;486a
	call z,sub_410fh	;486b
	nop			;486e
	inc hl			;486f
	ld b,d			;4870
	ld c,a			;4871
	ld e,a			;4872
l4873h:
	ld c,a			;4873
	ld b,d			;4874
	add hl,bc		;4875
	ld (hl),c		;4876
	defb 0edh ;next byte illegal after ed	;4877
	dec a			;4878
	nop			;4879
	ld e,(hl)		;487a
	ld b,l			;487b
	nop			;487c
	rst 8			;487d
	dec c			;487e
	nop			;487f
	ld h,a			;4880
l4881h:
	ld c,e			;4881
	nop			;4882
	or h			;4883
	jp 0fb71h		;4884
	ld b,(hl)		;4887
	nop			;4888
	ret p			;4889
	ld a,(bc)		;488a
	ld b,b			;488b
	ret c			;488c
	nop			;488d
	cp c			;488e
	and e			;488f
	cp (hl)			;4890
	ld a,b			;4891
	ld a,(bc)		;4892
	adc a,h			;4893
	out (0c6h),a		;4894
	nop			;4896
	nop			;4897
	ld bc,0c162h		;4898
	ld h,d			;489b
	inc h			;489c
	ld b,b			;489d
	rst 18h			;489e
	ld (0b301h),a		;489f
	dec b			;48a2
	rlca			;48a3
	inc bc			;48a4
	dec l			;48a5
	rra			;48a6
	scf			;48a7
	cp b			;48a8
	add hl,de		;48a9
	jr nz,l4881h		;48aa
	nop			;48ac
	dec c			;48ad
	ld de,0de1ah		;48ae
l48b1h:
	ld h,066h		;48b1
	rlca			;48b3
	inc sp			;48b4
	in a,(01eh)		;48b5
	ld bc,06e00h		;48b7
	and d			;48ba
	rst 20h			;48bb
	rra			;48bc
	ld b,c			;48bd
	inc e			;48be
	ld bc,l5f66h		;48bf
	add a,b			;48c2
	xor 01ah		;48c3
	xor 001h		;48c5
	ld c,e			;48c7
	rst 20h			;48c8
	ld (de),a		;48c9
	ld e,083h		;48ca
	ld c,l			;48cc
	jr nz,l48f4h		;48cd
	ex (sp),hl		;48cf
	add a,0dch		;48d0
	ld d,(hl)		;48d2
	sbc a,a			;48d3
	ld a,(05fdeh)		;48d4
	dec e			;48d7
	ld (hl),01fh		;48d8
	cp e			;48da
	ld d,a			;48db
	jr nz,l4881h		;48dc
	inc c			;48de
	dec c			;48df
	rra			;48e0
	ld e,(hl)		;48e1
	ld c,h			;48e2
	jr nz,$+31		;48e3
	ccf			;48e5
	defb 0fdh,000h,04fh ;illegal sequence	;48e6
	dec bc			;48e9
	nop			;48ea
	ld l,c			;48eb
	sbc a,a			;48ec
	ld (hl),a		;48ed
	nop			;48ee
	jp nc,l4cbbh		;48ef
	ld a,001h		;48f2
l48f4h:
	ld (0c308h),a		;48f4
	ld (bc),a		;48f7
	ld a,(0ffe8h)		;48f8
	or 002h			;48fb
	and 003h		;48fd
	jr nz,l4881h		;48ff
	ld (0f308h),a		;4901
	out (099h),a		;4904
	ld a,020h		;4906
	adc a,c			;4908
	ei			;4909
	inc b			;490a
	ld a,(0ffe7h)		;490b
	and 020h		;490e
	rst 18h			;4910
	ld (0af04h),a		;4911
	ld (0c10eh),a		;4914
	ld bc,l7c2ah		;4917
	dec b			;491a
	ld (hl),01ah		;491b
	ld hl,(0047fh)		;491d
	ex af,af'		;4920
	ret nc			;4921
	ld hl,(00482h)		;4922
	jp nz,06a2ah		;4925
	add a,l			;4928
	inc b			;4929
	adc a,b			;492a
	inc b			;492b
	djnz l493eh		;492c
	ld hl,(0048bh)		;492e
	call nc,08e2ah		;4931
	sub 009h		;4934
	sub c			;4936
	add hl,bc		;4937
	or l			;4938
	sub h			;4939
	add hl,bc		;493a
	sub a			;493b
	add hl,bc		;493c
	xor b			;493d
l493eh:
	sbc a,d			;493e
	inc b			;493f
	ret z			;4940
	ld hl,(09d40h)		;4941
	inc b			;4944
	jp nc,099cdh		;4945
	ld c,(hl)		;4948
	call 03940h		;4949
	ld (bc),a		;494c
	ld h,e			;494d
	dec b			;494e
	call 08028h		;494f
	inc h			;4952
	call 0059fh		;4953
	and d			;4956
	ld (bc),a		;4957
	and l			;4958
	add a,b			;4959
	ld (bc),a		;495a
	add a,04dh		;495b
	call 07f58h		;495d
	call 0f109h		;4960
	ld e,(hl)		;4963
	call 00baeh		;4964
	add hl,sp		;4967
sub_4968h:
	ld (bc),a		;4968
	jr nz,$-86		;4969
	ld (bc),a		;496b
	ld a,d			;496c
	ld h,e			;496d
	call 08aabh		;496e
	dec b			;4971
	ld c,c			;4972
	ld h,b			;4973
	dec bc			;4974
	inc l			;4975
	nop			;4976
	ld (hl),e		;4977
	ld e,e			;4978
	ld a,(0c13dh)		;4979
	or a			;497c
	jp z,0224ah		;497d
	ld c,l			;4980
	ld a,011h		;4981
	rrca			;4983
	dec b			;4984
	and d			;4985
	jr nc,l498eh		;4986
	pop bc			;4988
	ld (0fe3eh),hl		;4989
	and a			;498c
	rlca			;498d
l498eh:
	pop bc			;498e
	ld (0c3a3h),a		;498f
	ld a,08fh		;4992
	ld c,b			;4994
	rlca			;4995
	rlca			;4996
l4997h:
	and d			;4997
	jp 0cd21h		;4998
	inc bc			;499b
	ld a,(de)		;499c
	ld b,005h		;499d
	halt			;499f
	ld e,l			;49a0
	sub c			;49a1
	and b			;49a2
	ld b,d			;49a3
	dec hl			;49a4
	ld a,(0c395h)		;49a5
	ld l,026h		;49a8
	adc a,e			;49aa
	ld c,l			;49ab
	jr c,$+80		;49ac
	add hl,bc		;49ae
	and h			;49af
	ret			;49b0
	ld (de),a		;49b1
	ld d,023h		;49b2
	ccf			;49b4
	sub d			;49b5
	ld (bc),a		;49b6
	ld d,d			;49b7
	ld (bc),a		;49b8
	ld c,a			;49b9
	ld (bc),a		;49ba
	ld c,b			;49bb
	ld b,e			;49bc
	ld (bc),a		;49bd
	ld b,b			;49be
	ccf			;49bf
	ld (bc),a		;49c0
	ld (l4240h),a		;49c1
	ld h,03eh		;49c4
	pop bc			;49c6
	cp 01eh			;49c7
	jp c,0af08h		;49c9
	ld c,l			;49cc
	dec a			;49cd
	ld (03a08h),a		;49ce
	pop de			;49d1
	djnz l4997h		;49d2
	inc a			;49d4
	ld (03a03h),a		;49d5
	inc de			;49d8
	pop bc			;49d9
	and c			;49da
	dec c			;49db
	inc bc			;49dc
	inc a			;49dd
	jp nz,03d1dh		;49de
	and b			;49e1
	xor a			;49e2
	ret			;49e3
	ld hl,l4dfah		;49e4
	nop			;49e7
	ld (04df6h),hl		;49e8
	ld hl,l4e1ah		;49eb
	ld (020f8h),hl		;49ee
	ld c,l			;49f1
	ld hl,(l5e08h)		;49f2
	inc hl			;49f5
	ld d,(hl)		;49f6
	inc hl			;49f7
	ld a,(bc)		;49f8
	ld a,d			;49f9
	or e			;49fa
	jp z,00e38h		;49fb
	dec bc			;49fe
	dec b			;49ff
	ex de,hl		;4a00
	ld c,(hl)		;4a01
	inc hl			;4a02
l4a03h:
	ld b,(hl)		;4a03
	ld hl,(01215h)		;4a04
	cp b			;4a07
l4a08h:
	inc e			;4a08
	ex de,hl		;4a09
	dec b			;4a0a
	ld (hl),c		;4a0b
	inc hl			;4a0c
	ld (hl),b		;4a0d
	jp 0b2d2h		;4a0e
	or b			;4a11
	rlca			;4a12
	nop			;4a13
	dec b			;4a14
	ld d,005h		;4a15
	rra			;4a17
	dec b			;4a18
	ld (02e05h),hl		;4a19
	nop			;4a1c
	dec b			;4a1d
	add hl,de		;4a1e
	dec b			;4a1f
	ld sp,05b05h		;4a20
	dec b			;4a23
	ld e,(hl)		;4a24
	nop			;4a25
	dec b			;4a26
	ld h,c			;4a27
	dec b			;4a28
	ld h,a			;4a29
	dec b			;4a2a
	ld l,d			;4a2b
	dec b			;4a2c
	ld (hl),b		;4a2d
	ld (l7305h),hl		;4a2e
	and c			;4a31
	ld b,b			;4a32
	dec b			;4a33
	rra			;4a34
	cp h			;4a35
	ld e,e			;4a36
	sub h			;4a37
	ld e,e			;4a38
	ccf			;4a39
	nop			;4a3a
	ld e,e			;4a3b
	ld h,d			;4a3c
	ld e,e			;4a3d
	xor c			;4a3e
	ld e,e			;4a3f
	sub a			;4a40
	ld e,e			;4a41
	and e			;4a42
	nop			;4a43
	ld e,e			;4a44
	cp e			;4a45
	ld h,b			;4a46
	dec hl			;4a47
	ld e,e			;4a48
	ld l,05bh		;4a49
	sbc a,d			;4a4b
	nop			;4a4c
	ld e,e			;4a4d
	and b			;4a4e
	ld e,e			;4a4f
	and (hl)		;4a50
	ld e,e			;4a51
	sbc a,l			;4a52
	ld e,e			;4a53
	ld b,d			;4a54
	rrca			;4a55
	ld e,e			;4a56
	ret			;4a57
	di			;4a58
l4a59h:
	ld hl,002a2h		;4a59
	ld de,l4e96h		;4a5c
	ld bc,0c09eh		;4a5f
l4a62h:
	ldir			;4a62
	ld hl,081b8h		;4a64
	ld l,c			;4a67
	add hl,sp		;4a68
	nop			;4a69
	ld a,0c3h		;4a6a
	ld (00212h),a		;4a6c
	ld a,013h		;4a6f
	ld (0fff1h),a		;4a71
	adc a,h			;4a74
	ld (hl),c		;4a75
	sub e			;4a76
	adc a,e			;4a77
	jr c,l4a59h		;4a78
	dec bc			;4a7a
	di			;4a7b
	or 010h			;4a7c
	ld (00d04h),a		;4a7e
	jr l4a03h		;4a81
	inc bc			;4a83
	ld (bc),a		;4a84
	call nz,08f03h		;4a85
	and d			;4a88
	call po,sub_52ach	;4a89
	dec (hl)		;4a8c
	ld de,07128h		;4a8d
	di			;4a90
	add hl,sp		;4a91
	inc hl			;4a92
	add a,a			;4a93
	and 0efh		;4a94
	inc hl			;4a96
	add a,e			;4a97
	xor a			;4a98
	ld (00362h),hl		;4a99
	ei			;4a9c
	ret			;4a9d
	sbc a,(hl)		;4a9e
	ld (0465fh),a		;4a9f
	or a			;4aa2
	ld d,h			;4aa3
	push bc			;4aa4
	ld c,(hl)		;4aa5
	dec b			;4aa6
	sub h			;4aa7
	push de			;4aa8
	ld c,(hl)		;4aa9
	ld de,l4b0eh		;4aaa
	ld l,d			;4aad
	ld e,d			;4aae
	ld c,0e1h		;4aaf
	dec b			;4ab1
	jp nc,0c90eh		;4ab2
	push af			;4ab5
	rst 18h			;4ab6
	ld c,(hl)		;4ab7
l4ab8h:
	inc l			;4ab8
	ld b,d			;4ab9
	in a,(099h)		;4aba
	rrca			;4abc
	call c,sub_761ah	;4abd
	xor a			;4ac0
	inc c			;4ac1
	ld (0a00bh),a		;4ac2
	pop bc			;4ac5
	rlca			;4ac6
	call c,sub_6d24h	;4ac7
	sbc a,c			;4aca
	inc bc			;4acb
	pop af			;4acc
	ld hl,(0f878h)		;4acd
	ld (hl),004h		;4ad0
	ld b,(hl)		;4ad2
	jr c,$+68		;4ad3
	inc a			;4ad5
	inc a			;4ad6
	rlca			;4ad7
	djnz $+78		;4ad8
	jr c,l4ae3h		;4ada
	jr nc,l4ae6h		;4adc
	dec sp			;4ade
	ld (hl),044h		;4adf
	rrca			;4ae1
	add hl,hl		;4ae2
l4ae3h:
	ld b,(hl)		;4ae3
	inc e			;4ae4
	dec b			;4ae5
l4ae6h:
	ex af,af'		;4ae6
	ld (01a07h),a		;4ae7
	ld b,h			;4aea
	ld b,b			;4aeb
	rla			;4aec
	ld a,(020d0h)		;4aed
	jr nc,$+64		;4af0
	ld l,038h		;4af2
	sub c			;4af4
	jr nc,l4b2bh		;4af5
	rrca			;4af7
	ld (0273ah),a		;4af8
	ld d,h			;4afb
	rra			;4afc
	ld d,008h		;4afd
	ld b,(hl)		;4aff
	sbc a,b			;4b00
	rla			;4b01
	ld b,b			;4b02
	jr c,l4b41h		;4b03
	call 01f30h		;4b05
	sbc a,c			;4b08
	rla			;4b09
	ld l,018h		;4b0a
	ld d,(hl)		;4b0c
	xor d			;4b0d
l4b0eh:
	jr c,$+41		;4b0e
	rla			;4b10
	ld l,(hl)		;4b11
	djnz l4b1bh		;4b12
	ld d,b			;4b14
	ld b,(hl)		;4b15
	ld a,046h		;4b16
	ld l,00eh		;4b18
	ld b,l			;4b1a
l4b1bh:
	ld l,044h		;4b1b
	ld b,(hl)		;4b1d
	dec a			;4b1e
	ld e,04dh		;4b1f
	rra			;4b21
	jr c,l4b73h		;4b22
	call c,05f5eh		;4b24
	ld h,h			;4b27
	inc e			;4b28
	ld a,047h		;4b29
l4b2bh:
	ld a,(05fdch)		;4b2b
	ld b,(hl)		;4b2e
	call z,02137h		;4b2f
	cp c			;4b32
	djnz l4b8ch		;4b33
	call 03151h		;4b35
	ld h,(hl)		;4b38
	inc a			;4b39
	ld a,b			;4b3a
	ld (hl),b		;4b3b
	adc a,l			;4b3c
	ld a,038h		;4b3d
	ld b,h			;4b3f
	daa			;4b40
l4b41h:
	push bc			;4b41
	ld h,034h		;4b42
	ld h,d			;4b44
	ld e,a			;4b45
	xor c			;4b46
	inc e			;4b47
	ld e,d			;4b48
	ld l,09fh		;4b49
	dec d			;4b4b
l4b4ch:
	ld c,a			;4b4c
	inc de			;4b4d
	ld h,a			;4b4e
	ld (de),a		;4b4f
	ld d,a			;4b50
	ld de,l4698h		;4b51
	xor a			;4b54
	ld b,(hl)		;4b55
	or (hl)			;4b56
	ld l,(hl)		;4b57
	ld b,a			;4b58
	ld h,b			;4b59
	ld d,a			;4b5a
	ld a,022h		;4b5b
	scf			;4b5d
	ex af,af'		;4b5e
	ld l,0dfh		;4b5f
	in a,(017h)		;4b61
	ld h,(hl)		;4b63
	sbc a,b			;4b64
	sbc a,b			;4b65
	defb 0ddh,017h,0cdh ;illegal sequence	;4b66
	jr nc,$+112		;4b69
	adc a,l			;4b6b
	adc a,b			;4b6c
	pop hl			;4b6d
	ld d,03ch		;4b6e
	ld l,(hl)		;4b70
	ld d,c			;4b71
	ld c,(hl)		;4b72
l4b73h:
	sbc a,a			;4b73
	sub l			;4b74
	cpl			;4b75
	jr nc,l4bbfh		;4b76
	sub b			;4b78
	ld d,h			;4b79
	jr l4baah		;4b7a
	ld a,(00c23h)		;4b7c
	ld b,d			;4b7f
	adc a,l			;4b80
	adc a,e			;4b81
	djnz l4bach		;4b82
	ld d,c			;4b84
	ld (0b1c7h),a		;4b85
	ret m			;4b88
	or (hl)			;4b89
	ld a,c			;4b8a
	dec b			;4b8b
l4b8ch:
	ld b,(hl)		;4b8c
	ret			;4b8d
	pop af			;4b8e
	scf			;4b8f
	adc a,c			;4b90
	inc e			;4b91
	ld (hl),b		;4b92
l4b93h:
	djnz $+18		;4b93
	ld l,(hl)		;4b95
	ld b,d			;4b96
	ld b,(hl)		;4b97
	rla			;4b98
	ld h,a			;4b99
	rra			;4b9a
l4b9bh:
	rla			;4b9b
	dec c			;4b9c
	ld b,d			;4b9d
	dec h			;4b9e
	or e			;4b9f
	rlca			;4ba0
	rrca			;4ba1
	ld e,a			;4ba2
	adc a,b			;4ba3
	sub 0d8h		;4ba4
	adc a,0e6h		;4ba6
	rst 10h			;4ba8
	ld c,h			;4ba9
l4baah:
	dec l			;4baa
	add hl,hl		;4bab
l4bach:
	ld a,(l5134h)		;4bac
	sbc a,a			;4baf
	ld e,h			;4bb0
	dec a			;4bb1
	add a,041h		;4bb2
	inc a			;4bb4
	ld c,l			;4bb5
	call 03c31h		;4bb6
	ld b,l			;4bb9
	adc a,041h		;4bba
	rrca			;4bbc
	scf			;4bbd
	ld e,c			;4bbe
l4bbfh:
	ld l,l			;4bbf
	ld (hl),a		;4bc0
	ld l,c			;4bc1
	daa			;4bc2
	sbc a,l			;4bc3
	inc de			;4bc4
	ex (sp),hl		;4bc5
	dec bc			;4bc6
	ld (hl),l		;4bc7
	sbc a,(hl)		;4bc8
	dec hl			;4bc9
	dec sp			;4bca
	ld b,e			;4bcb
	call c,02b3bh		;4bcc
	sbc a,017h		;4bcf
	inc de			;4bd1
	pop de			;4bd2
	ld (hl),0eeh		;4bd3
	cp e			;4bd5
	inc hl			;4bd6
	call z,03828h		;4bd7
	ret c			;4bda
	ld c,e			;4bdb
	rrca			;4bdc
	jr c,l4c0dh		;4bdd
	adc a,l			;4bdf
	out (08dh),a		;4be0
	adc a,h			;4be2
	adc a,(hl)		;4be3
	call z,01013h		;4be4
	add a,d			;4be7
	ld b,a			;4be8
	ei			;4be9
	ld d,c			;4bea
	xor h			;4beb
	or d			;4bec
	cp h			;4bed
	call nz,sub_66fbh	;4bee
	ld h,c			;4bf1
	ld c,d			;4bf2
	di			;4bf3
	jr c,l4c32h		;4bf4
	rra			;4bf6
	sbc a,l			;4bf7
	cp h			;4bf8
	jp nz,0180fh		;4bf9
	ld b,d			;4bfc
l4bfdh:
	sub d			;4bfd
	ld a,b			;4bfe
	xor 016h		;4bff
	call z,03e4dh		;4c01
	ret c			;4c04
	ld d,0f1h		;4c05
	push de			;4c07
	ld a,025h		;4c08
	ld a,c			;4c0a
	sub c			;4c0b
	sub e			;4c0c
l4c0dh:
	adc a,l			;4c0d
	ld l,03eh		;4c0e
	ret			;4c10
	ld e,0e2h		;4c11
	and 0d2h		;4c13
	sub (hl)		;4c15
	adc a,d			;4c16
	sub (hl)		;4c17
	jp p,01f53h		;4c18
	add hl,sp		;4c1b
	rla			;4c1c
	call c,02e4dh		;4c1d
	ld a,b			;4c20
	inc c			;4c21
	and b			;4c22
	ld (0819dh),hl		;4c23
	add hl,hl		;4c26
	ld e,040h		;4c27
	ret nz			;4c29
l4c2ah:
	sbc a,c			;4c2a
	pop hl			;4c2b
	daa			;4c2c
	xor c			;4c2d
	ld d,l			;4c2e
	jr $+33			;4c2f
	dec d			;4c31
l4c32h:
	ld d,026h		;4c32
	ld l,016h		;4c34
	jr nz,$+47		;4c36
	sbc a,c			;4c38
	jr z,$+32		;4c39
	inc h			;4c3b
	ld b,l			;4c3c
	cp c			;4c3d
	rlca			;4c3e
	ex af,af'		;4c3f
	ld hl,(03d3ch)		;4c40
	rlca			;4c43
	ex af,af'		;4c44
	rl a			;4c45
	ld h,h			;4c47
	rra			;4c48
	add a,h			;4c49
	ld (l52cbh),a		;4c4a
	ld h,l			;4c4d
	ld (03685h),hl		;4c4e
	rrca			;4c51
	dec hl			;4c52
	inc l			;4c53
	ld (08cb9h),hl		;4c54
	rlca			;4c57
	call nz,03a47h		;4c58
	jr nz,l4c87h		;4c5b
	sub 02fh		;4c5d
	jr c,$+17		;4c5f
	ld d,(hl)		;4c61
	ret nz			;4c62
	and e			;4c63
	ld l,057h		;4c64
	inc e			;4c66
	ld b,b			;4c67
	rrca			;4c68
	adc a,d			;4c69
	adc a,d			;4c6a
	ex (sp),hl		;4c6b
	halt			;4c6c
	dec l			;4c6d
	ld h,a			;4c6e
	ld (hl),0ach		;4c6f
	or b			;4c71
	and (hl)		;4c72
	ret m			;4c73
	ld hl,(01f2eh)		;4c74
	cp a			;4c77
	halt			;4c78
	exx			;4c79
	sub d			;4c7a
	push hl			;4c7b
	ld (l56c1h),a		;4c7c
	call po,08556h		;4c7f
	halt			;4c82
	ret z			;4c83
	ld d,a			;4c84
	inc c			;4c85
	ld h,a			;4c86
l4c87h:
	jp nz,0e969h		;4c87
	add a,h			;4c8a
	inc e			;4c8b
	sub a			;4c8c
	ld l,a			;4c8d
	rla			;4c8e
l4c8fh:
	inc de			;4c8f
	xor l			;4c90
	call nz,0afe4h		;4c91
	rrca			;4c94
	ld (0b5b3h),a		;4c95
	rrca			;4c98
	ld a,(bc)		;4c99
	sub c			;4c9a
	ld e,e			;4c9b
	inc l			;4c9c
	ld d,l			;4c9d
	ld h,d			;4c9e
	and c			;4c9f
	cp b			;4ca0
	scf			;4ca1
	ld l,0e2h		;4ca2
	ld b,a			;4ca4
	xor d			;4ca5
	ld hl,(l5982h)		;4ca6
	and c			;4ca9
	jp c,0db90h		;4caa
	xor l			;4cad
	ld e,c			;4cae
	add a,h			;4caf
	ld c,d			;4cb0
	sbc a,036h		;4cb1
l4cb3h:
	ld c,h			;4cb3
	xor 096h		;4cb4
	rst 8			;4cb6
	sub (hl)		;4cb7
	sub e			;4cb8
	ld (hl),0e5h		;4cb9
l4cbbh:
	sub d			;4cbb
	inc e			;4cbc
	adc a,l			;4cbd
	sub e			;4cbe
	adc a,l			;4cbf
	sbc a,e			;4cc0
	adc a,(hl)		;4cc1
	sub e			;4cc2
	push hl			;4cc3
	pop bc			;4cc4
	adc a,d			;4cc5
	ld d,0b7h		;4cc6
	ld (hl),d		;4cc8
	jp nc,0e496h		;4cc9
	jp nc,0388ah		;4ccc
	ex (sp),hl		;4ccf
	ld d,03ch		;4cd0
	ld l,b			;4cd2
	ld c,0a1h		;4cd3
	jp c,0a5abh		;4cd5
	rst 28h			;4cd8
	sbc a,e			;4cd9
l4cdah:
	jp z,0c825h		;4cda
	ld (hl),016h		;4cdd
	defb 0edh ;next byte illegal after ed	;4cdf
	ld (hl),a		;4ce0
	inc a			;4ce1
	ld e,e			;4ce2
	ld b,h			;4ce3
	dec (hl)		;4ce4
	pop bc			;4ce5
	ld a,b			;4ce6
	ld l,0e6h		;4ce7
	ld b,h			;4ce9
	rlca			;4cea
	or (hl)			;4ceb
	ret pe			;4cec
	cpl			;4ced
	pop bc			;4cee
	ld (hl),c		;4cef
	dec l			;4cf0
	jr $-94			;4cf1
	ld a,h			;4cf3
	ld c,c			;4cf4
	xor (hl)		;4cf5
	rst 30h			;4cf6
	ld h,035h		;4cf7
l4cf9h:
	call 0f8bch		;4cf9
	ld a,e			;4cfc
	rst 28h			;4cfd
	ld a,h			;4cfe
	ld l,l			;4cff
	ld l,e			;4d00
	or a			;4d01
	and l			;4d02
	rst 0			;4d03
	di			;4d04
	cp h			;4d05
	dec h			;4d06
	rst 0			;4d07
	xor (hl)		;4d08
	ld (hl),d		;4d09
	scf			;4d0a
	ld l,04ch		;4d0b
	ld e,e			;4d0d
	ld l,c			;4d0e
	ld c,h			;4d0f
	or e			;4d10
	and 0d4h		;4d11
	dec (hl)		;4d13
	ld (hl),0eah		;4d14
	dec a			;4d16
	ld c,(hl)		;4d17
l4d18h:
	adc a,e			;4d18
	ld d,d			;4d19
	sub d			;4d1a
	adc a,0dah		;4d1b
	ld (hl),a		;4d1d
	ld a,d			;4d1e
	rst 0			;4d1f
	dec de			;4d20
	xor b			;4d21
	ld c,d			;4d22
	ld b,h			;4d23
	ex (sp),hl		;4d24
	ld a,d			;4d25
	ld d,096h		;4d26
	ld (hl),025h		;4d28
	ld d,d			;4d2a
	ret pe			;4d2b
l4d2ch:
	add a,082h		;4d2c
	add hl,hl		;4d2e
	jr l4cf9h		;4d2f
	ld h,e			;4d31
l4d32h:
	add a,d			;4d32
	inc de			;4d33
	ld e,0d2h		;4d34
	and h			;4d36
	ld (de),a		;4d37
	inc d			;4d38
	add a,e			;4d39
	ld d,e			;4d3a
	adc a,d			;4d3b
	call nz,sub_6592h	;4d3c
	and l			;4d3f
	xor (hl)		;4d40
	call nz,sub_5725h	;4d41
	ret nz			;4d44
	ld e,e			;4d45
	ld (hl),e		;4d46
	ld b,a			;4d47
	cp d			;4d48
	jr l4d91h		;4d49
	ld b,(hl)		;4d4b
	sbc a,(hl)		;4d4c
	sub d			;4d4d
	inc sp			;4d4e
	ld a,h			;4d4f
	ld d,(hl)		;4d50
	adc a,h			;4d51
	adc a,e			;4d52
	ld c,b			;4d53
	sub h			;4d54
	and 0b3h		;4d55
	add hl,sp		;4d57
	adc a,h			;4d58
	cp e			;4d59
	sub 057h		;4d5a
	inc a			;4d5c
	rra			;4d5d
	call pe,09d57h		;4d5e
	ld h,h			;4d61
	sub b			;4d62
	or e			;4d63
	xor a			;4d64
	dec hl			;4d65
	ld h,a			;4d66
	or c			;4d67
	adc a,(hl)		;4d68
	push bc			;4d69
	and b			;4d6a
	ld (hl),b		;4d6b
	ld b,h			;4d6c
	jp pe,08227h		;4d6d
	ld e,b			;4d70
	cp d			;4d71
	rrca			;4d72
	ld b,a			;4d73
	or a			;4d74
	ld l,017h		;4d75
	rrca			;4d77
	jr l4dbah		;4d78
	exx			;4d7a
	jp z,0cd38h		;4d7b
	exx			;4d7e
	xor l			;4d7f
	rlca			;4d80
	defb 0fdh,08ch ;adc a,iyh	;4d81
	call p,09dcbh		;4d83
	in a,(095h)		;4d86
	ret c			;4d88
	sbc a,l			;4d89
	rst 10h			;4d8a
	ld b,d			;4d8b
	ld h,b			;4d8c
	inc d			;4d8d
	ex af,af'		;4d8e
	and b			;4d8f
	ld (hl),c		;4d90
l4d91h:
	add hl,hl		;4d91
	sub c			;4d92
	rst 30h			;4d93
	adc a,e			;4d94
	ld (04739h),a		;4d95
	ld l,b			;4d98
	ld (bc),a		;4d99
	ret z			;4d9a
	xor l			;4d9b
	add a,c			;4d9c
	ld b,l			;4d9d
	inc a			;4d9e
	ld (de),a		;4d9f
	ld b,h			;4da0
	jr nz,l4d2ch		;4da1
	inc a			;4da3
	dec h			;4da4
	ld a,(0a986h)		;4da5
	sub a			;4da8
	ld c,h			;4da9
	ld e,d			;4daa
	adc a,0fch		;4dab
	dec d			;4dad
	inc e			;4dae
	cp d			;4daf
	add a,095h		;4db0
	ld (hl),c		;4db2
	scf			;4db3
	sub e			;4db4
	rst 20h			;4db5
	sub (hl)		;4db6
	jp nz,046a8h		;4db7
l4dbah:
	ret m			;4dba
	in a,(09ah)		;4dbb
	ld e,d			;4dbd
	call nc,028ddh		;4dbe
	sub d			;4dc1
	or c			;4dc2
	rst 8			;4dc3
	ld d,d			;4dc4
	sub a			;4dc5
	ld b,h			;4dc6
	ld b,h			;4dc7
	cp b			;4dc8
	ld (hl),c		;4dc9
	dec iy			;4dca
	add hl,sp		;4dcc
	ld d,d			;4dcd
	rra			;4dce
	rrca			;4dcf
	jr nz,l4e32h		;4dd0
	sub h			;4dd2
	rst 30h			;4dd3
	ld (02012h),a		;4dd4
	rlca			;4dd7
	cp h			;4dd8
	halt			;4dd9
	cp b			;4dda
l4ddbh:
	ld d,d			;4ddb
	rst 30h			;4ddc
	ld d,(hl)		;4ddd
	rrca			;4dde
	sub 0cch		;4ddf
	ld (de),a		;4de1
	jr nc,l4ddbh		;4de2
	call c,0e596h		;4de4
	cp e			;4de7
	or c			;4de8
	add a,e			;4de9
	ld l,h			;4dea
	ld l,l			;4deb
	ex af,af'		;4dec
	ex de,hl		;4ded
	ld h,l			;4dee
	cp h			;4def
	xor l			;4df0
	cp e			;4df1
	or e			;4df2
	ret p			;4df3
	dec h			;4df4
	res 6,e			;4df5
	add a,d			;4df7
	ld a,h			;4df8
	exx			;4df9
l4dfah:
	djnz l4e1bh		;4dfa
	ret nc			;4dfc
	inc h			;4dfd
	adc a,b			;4dfe
	di			;4dff
	and b			;4e00
	dec de			;4e01
	or d			;4e02
	ld c,h			;4e03
	ld c,(hl)		;4e04
	or b			;4e05
	set 5,b			;4e06
	ld de,0b19fh		;4e08
	rst 18h			;4e0b
	cp h			;4e0c
	and l			;4e0d
	jp nc,08f38h		;4e0e
	add hl,sp		;4e11
	and h			;4e12
	or h			;4e13
	and 01fh		;4e14
	ld a,a			;4e16
	jp c,l7f37h		;4e17
l4e1ah:
	cp a			;4e1a
l4e1bh:
	ld sp,0ac1ch		;4e1b
	call z,0d746h		;4e1e
	in a,(0ebh)		;4e21
	ld (hl),0a3h		;4e23
	call nz,0edc7h		;4e25
l4e28h:
	and d			;4e28
	pop af			;4e29
	defb 0ddh,0cbh,080h,03bh ;srl (ix-080h) & ld e,(ix-080h)	;4e2a
	ret m			;4e2e
	dec l			;4e2f
	ld h,h			;4e30
	cpl			;4e31
l4e32h:
	adc a,b			;4e32
	push af			;4e33
l4e34h:
	jp c,0af25h		;4e34
	ld sp,03599h		;4e37
	adc a,031h		;4e3a
	defb 0edh ;next byte illegal after ed	;4e3c
	dec hl			;4e3d
	jp 0e79dh		;4e3e
	rst 8			;4e41
	add hl,sp		;4e42
	rlca			;4e43
	rst 38h			;4e44
	sbc a,(hl)		;4e45
	dec de			;4e46
	ld c,d			;4e47
	di			;4e48
	sbc a,h			;4e49
	jp c,00f04h		;4e4a
l4e4dh:
	ld b,h			;4e4d
	sub h			;4e4e
	or d			;4e4f
	call 0ddebh		;4e50
	ld d,e			;4e53
	rla			;4e54
	xor 099h		;4e55
	ld (hl),c		;4e57
	ld c,l			;4e58
	ld b,d			;4e59
	jp pe,09cabh		;4e5a
	ld e,e			;4e5d
	xor d			;4e5e
	call c,0f2ebh		;4e5f
	ld de,0c4d6h		;4e62
	cp l			;4e65
	ld (hl),c		;4e66
	and (hl)		;4e67
	inc l			;4e68
	ld h,e			;4e69
	ld sp,hl		;4e6a
	inc sp			;4e6b
	add a,a			;4e6c
	ld d,a			;4e6d
	di			;4e6e
	dec sp			;4e6f
	jr l4e28h		;4e70
	ld e,h			;4e72
	ret p			;4e73
	rrca			;4e74
	jr c,l4e4dh		;4e75
	sub b			;4e77
	ld h,e			;4e78
	and (hl)		;4e79
	ld h,e			;4e7a
	cp (hl)			;4e7b
	cp d			;4e7c
	defb 0edh ;next byte illegal after ed	;4e7d
	jp pe,03ad6h		;4e7e
	or (hl)			;4e81
	exx			;4e82
	ld h,d			;4e83
	adc a,095h		;4e84
	call nz,02fc7h		;4e86
	ld e,037h		;4e89
	ld (hl),h		;4e8b
	rst 30h			;4e8c
	call nz,0a4deh		;4e8d
	and l			;4e90
	call pe,sub_6b90h	;4e91
	inc d			;4e94
	ld sp,hl		;4e95
l4e96h:
	jr c,l4e34h		;4e96
	sbc a,a			;4e98
	ld (hl),e		;4e99
	ld a,(0fc5fh)		;4e9a
	ret			;4e9d
	jp nc,04f9dh		;4e9e
	add a,(hl)		;4ea1
	dec d			;4ea2
	sub a			;4ea3
	call nc,02e57h		;4ea4
	sub (hl)		;4ea7
	sub (hl)		;4ea8
	ld h,l			;4ea9
	and (hl)		;4eaa
l4eabh:
	adc a,e			;4eab
	or (hl)			;4eac
	ld h,d			;4ead
	adc a,a			;4eae
	ld (hl),036h		;4eaf
	sub e			;4eb1
	sbc a,03fh		;4eb2
	ld l,e			;4eb4
	sbc a,a			;4eb5
	ld (0cf7fh),a		;4eb6
	cp b			;4eb9
	adc a,(hl)		;4eba
	adc a,a			;4ebb
	ld (hl),e		;4ebc
	xor d			;4ebd
	jp 02cc7h		;4ebe
	add a,d			;4ec1
	rst 20h			;4ec2
	and d			;4ec3
	jr c,l4eabh		;4ec4
	xor h			;4ec6
	add a,0e5h		;4ec7
	dec h			;4ec9
	or b			;4eca
	ld (hl),a		;4ecb
	rrca			;4ecc
	jp z,08d39h		;4ecd
	rst 30h			;4ed0
	adc a,0c2h		;4ed1
	ld a,c			;4ed3
	call z,03778h		;4ed4
	adc a,0aah		;4ed7
	add hl,de		;4ed9
	inc a			;4eda
	xor d			;4edb
	rst 10h			;4edc
	adc a,h			;4edd
	ld l,(hl)		;4ede
	rlca			;4edf
	ld e,d			;4ee0
	add a,b			;4ee1
	ld l,d			;4ee2
	inc l			;4ee3
	ld (l77efh),a		;4ee4
	ret po			;4ee7
	sbc a,b			;4ee8
	xor 08ch		;4ee9
	and d			;4eeb
	ex (sp),hl		;4eec
l4eedh:
	call z,0ae95h		;4eed
	jp m,0bc38h		;4ef0
	adc a,l			;4ef3
	xor h			;4ef4
	sub c			;4ef5
	call p,09b30h		;4ef6
	ld a,h			;4ef9
	rst 8			;4efa
	ld a,e			;4efb
	ld l,0e8h		;4efc
	ld e,h			;4efe
	rlca			;4eff
	xor d			;4f00
	add a,c			;4f01
	di			;4f02
	ret c			;4f03
	sub l			;4f04
	exx			;4f05
	and (hl)		;4f06
	sub 033h		;4f07
	cp (hl)			;4f09
	add hl,sp		;4f0a
	rlca			;4f0b
	ld d,e			;4f0c
	djnz l4eedh		;4f0d
	ld (094f7h),a		;4f0f
	defb 0ddh,0c7h,080h ;illegal sequence	;4f12
	ld h,0f2h		;4f15
	or c			;4f17
	sub 04bh		;4f18
	xor (hl)		;4f1a
	ld c,e			;4f1b
	adc a,a			;4f1c
	ld l,e			;4f1d
	add a,a			;4f1e
	add a,(hl)		;4f1f
	rrca			;4f20
	inc sp			;4f21
	ld (l75dfh),a		;4f22
	sub h			;4f25
	ld l,e			;4f26
	xor (hl)		;4f27
	adc a,b			;4f28
	rst 30h			;4f29
	ex (sp),hl		;4f2a
	and d			;4f2b
	ld a,(l447ah)		;4f2c
	and e			;4f2f
	out (0c6h),a		;4f30
	ld d,a			;4f32
	rst 0			;4f33
	call c,0f78fh		;4f34
	ret nc			;4f37
	res 4,(hl)		;4f38
	ld e,l			;4f3a
	ld d,d			;4f3b
	xor 0c6h		;4f3c
	rst 10h			;4f3e
	or e			;4f3f
	jr $-113		;4f40
	adc a,c			;4f42
	rst 10h			;4f43
	call c,0e5cbh		;4f44
	ld b,h			;4f47
	ld (0a89eh),hl		;4f48
	call 01483h		;4f4b
	call nc,0c0c7h		;4f4e
	or a			;4f51
	cp a			;4f52
	ld a,(de)		;4f53
	ld b,b			;4f54
	or 0c0h			;4f55
	ld l,c			;4f57
	adc a,d			;4f58
	ld (hl),09fh		;4f59
	pop hl			;4f5b
	ld b,e			;4f5c
	inc (hl)		;4f5d
	jp z,08b75h		;4f5e
	dec hl			;4f61
	ld b,d			;4f62
	or (hl)			;4f63
sub_4f64h:
	ret m			;4f64
	call p,0fe9ah		;4f65
	adc a,06fh		;4f68
	jp pe,07371h		;4f6a
	ld (09c9ah),a		;4f6d
	in a,(0a3h)		;4f70
	inc (hl)		;4f72
	cp h			;4f73
	sub a			;4f74
	sbc a,e			;4f75
	sub h			;4f76
	ld h,h			;4f77
	add a,h			;4f78
	pop af			;4f79
	ld (hl),h		;4f7a
	sbc a,e			;4f7b
	sub h			;4f7c
	defb 0ddh,09ch ;sbc a,ixh	;4f7d
	jr nc,$+72		;4f7f
	adc a,d			;4f81
	sub l			;4f82
	call z,0ed7ch		;4f83
	out (09ah),a		;4f86
	sbc a,h			;4f88
	ld h,e			;4f89
	adc a,e			;4f8a
	ld d,a			;4f8b
	ld l,b			;4f8c
	ld l,e			;4f8d
	sub l			;4f8e
	adc a,h			;4f8f
	cp e			;4f90
	dec hl			;4f91
	jp m,0378dh		;4f92
	inc sp			;4f95
	jr $+66			;4f96
	call p,0ec8bh		;4f98
	ld c,h			;4f9b
	call pe,000e3h		;4f9c
	ccf			;4f9f
	adc a,h			;4fa0
	ld l,(hl)		;4fa1
	rrca			;4fa2
l4fa3h:
	add a,e			;4fa3
	ld h,e			;4fa4
	jp p,03455h		;4fa5
	add a,h			;4fa8
	dec hl			;4fa9
	xor 029h		;4faa
	ld a,a			;4fac
	jp 09528h		;4fad
	or (hl)			;4fb0
	call z,0f457h		;4fb1
	ret c			;4fb4
	sub h			;4fb5
	call pe,sub_75d9h	;4fb6
	call po,00f5eh		;4fb9
	ld e,(hl)		;4fbc
l4fbdh:
	djnz l4fa3h		;4fbd
	call nz,06ee4h		;4fbf
	dec l			;4fc2
	rst 28h			;4fc3
	rrca			;4fc4
	jp nc,0c3eeh		;4fc5
	ld sp,09608h		;4fc8
	sub l			;4fcb
	jp l6f44h		;4fcc
	inc sp			;4fcf
	jp 0db76h		;4fd0
	cp h			;4fd3
	ei			;4fd4
	ld e,(hl)		;4fd5
	ld (de),a		;4fd6
	jp 0d3e7h		;4fd7
	ld (de),a		;4fda
	push de			;4fdb
	call z,06697h		;4fdc
	and h			;4fdf
	ld (hl),c		;4fe0
	cp a			;4fe1
	dec de			;4fe2
	ret nc			;4fe3
	dec de			;4fe4
	call p,02e5ah		;4fe5
	sub (hl)		;4fe8
	xor b			;4fe9
	daa			;4fea
	or l			;4feb
	sbc a,b			;4fec
	sbc a,a			;4fed
	sbc a,092h		;4fee
l4ff0h:
	ld e,d			;4ff0
	ld (hl),a		;4ff1
	defb 0fdh,051h,0ffh ;illegal sequence	;4ff2
	jp m,000b9h		;4ff5
	sub d			;4ff8
	dec d			;4ff9
	ld b,b			;4ffa
l4ffbh:
	or d			;4ffb
	jp nc,0a506h		;4ffc
	inc c			;4fff
	adc a,h			;5000
	inc h			;5001
	call p,091a3h		;5002
	ex de,hl		;5005
	sub a			;5006
	xor l			;5007
	jr l4fbdh		;5008
	inc sp			;500a
	push de			;500b
	ld h,(hl)		;500c
	ld c,014h		;500d
	ld a,c			;500f
	ld e,d			;5010
	defb 0edh ;next byte illegal after ed	;5011
	ld h,020h		;5012
	dec de			;5014
	ld (02c23h),hl		;5015
	ld (de),a		;5018
	inc c			;5019
	or d			;501a
	ret z			;501b
	push hl			;501c
	call nc,0e220h		;501d
	sbc a,0a4h		;5020
	xor c			;5022
	ld (de),a		;5023
l5024h:
	inc c			;5024
	jr z,l4ff0h		;5025
	ld l,e			;5027
	ld sp,02299h		;5028
	ld b,059h		;502b
	ld (hl),c		;502d
	ld b,053h		;502e
	ld c,l			;5030
	jr c,l5051h		;5031
	inc de			;5033
	ld d,l			;5034
	jr l503fh		;5035
	ld b,021h		;5037
	ld d,h			;5039
	sub d			;503a
	adc a,(hl)		;503b
	push bc			;503c
	ld d,e			;503d
	ld b,l			;503e
l503fh:
	add a,l			;503f
l5040h:
	jr z,l5070h		;5040
	ld c,031h		;5042
	dec h			;5044
	jr nz,l4ffbh		;5045
	add hl,hl		;5047
	ld sp,0a38ch		;5048
	sub e			;504b
	ld (hl),d		;504c
	ld hl,(0f42fh)		;504d
	adc a,d			;5050
l5051h:
	adc a,l			;5051
l5052h:
	sub d			;5052
	call nc,0e4ffh		;5053
	or 00dh			;5056
	djnz l5090h		;5058
	djnz l506ch		;505a
	sub (hl)		;505c
	jp po,l7c00h		;505d
	ld c,(hl)		;5060
	nop			;5061
	inc bc			;5062
	ld b,008h		;5063
	ld a,(bc)		;5065
	rlca			;5066
	add a,c			;5067
	ld c,b			;5068
	ld c,d			;5069
	ld c,h			;506a
	rlca			;506b
l506ch:
	ret nz			;506c
	nop			;506d
	ld (bc),a		;506e
	inc b			;506f
l5070h:
	ret m			;5070
	inc h			;5071
	ld a,a			;5072
	nop			;5073
	add a,b			;5074
	ld (bc),a		;5075
l5076h:
	ld a,(0f3dfh)		;5076
	and 0efh		;5079
	ld (00804h),a		;507b
	out (099h),a		;507e
	ld a,080h		;5080
	inc bc			;5082
	ld a,(086e0h)		;5083
	dec c			;5086
	cp a			;5087
	ld (00de0h),a		;5088
	or c			;508b
	add a,c			;508c
	inc bc			;508d
	ld (bc),a		;508e
	inc bc			;508f
l5090h:
	adc a,b			;5090
	adc a,a			;5091
	inc bc			;5092
	in a,(099h)		;5093
	ld b,0e6h		;5095
	jr nz,$-60		;5097
	ld l,a			;5099
	ld e,d			;509a
	ld b,080h		;509b
	jp z,l5a76h		;509d
	ld a,(l732dh)		;50a0
	or a			;50a3
	inc bc			;50a4
	call nz,06049h		;50a5
	ld a,(0c1fch)		;50a8
	dec e			;50ab
	djnz l5040h		;50ac
	inc bc			;50ae
	push bc			;50af
	ld a,(03154h)		;50b0
	pop bc			;50b3
	ld b,a			;50b4
	ld a,(bc)		;50b5
	sub a			;50b6
	ld a,083h		;50b7
	pop af			;50b9
	rst 38h			;50ba
	add a,b			;50bb
	add hl,bc		;50bc
	jr l5052h		;50bd
	add hl,bc		;50bf
	rst 20h			;50c0
	jr $+1			;50c1
	and 0fdh		;50c3
	ld a,(bc)		;50c5
	adc a,b			;50c6
	add a,00ah		;50c7
	pop hl			;50c9
	ld c,(hl)		;50ca
	cp b			;50cb
	add a,d			;50cc
	ld e,h			;50cd
	inc a			;50ce
	or 042h			;50cf
	ld e,h			;50d1
	nop			;50d2
	push de			;50d3
	push hl			;50d4
	exx			;50d5
	ex af,af'		;50d6
	push af			;50d7
	push bc			;50d8
	add a,b			;50d9
	dec b			;50da
	ld a,(0c1f3h)		;50db
	cp 002h			;50de
	call z,0b100h		;50e0
	ld a,l			;50e3
	call sub_60a2h		;50e4
	pop hl			;50e7
	pop de			;50e8
	pop bc			;50e9
	jr $-13			;50ea
	ex af,af'		;50ec
	exx			;50ed
	dec b			;50ee
	ret			;50ef
	jp 0f63eh		;50f0
	ld (bc),a		;50f3
	ld a,097h		;50f4
	xor a			;50f6
	ld e,d			;50f7
	add a,a			;50f8
	ld e,c			;50f9
	ld d,c			;50fa
	xor e			;50fb
	inc d			;50fc
	or 010h			;50fd
	ld b,0b2h		;50ff
	ld h,e			;5101
	ld a,06bh		;5102
	ld e,h			;5104
	ld e,a			;5105
	ld e,e			;5106
	rst 0			;5107
	xor d			;5108
	ld l,a			;5109
	push bc			;510a
	ld d,(hl)		;510b
	nop			;510c
	sbc a,h			;510d
	jp 0c2b7h		;510e
	nop			;5111
	jr nc,l516fh		;5112
	call 0055dh		;5114
	call 00560h		;5117
	ex af,af'		;511a
	ld a,(l6faah)		;511b
	sub 063h		;511e
	dec c			;5120
	ld a,c			;5121
	adc a,b			;5122
	ld b,h			;5123
	pop bc			;5124
	ld (089b6h),a		;5125
	call 0131eh		;5128
	ld (hl),l		;512b
	ld (bc),a		;512c
	ld b,h			;512d
	jp nz,08eafh		;512e
	ret nz			;5131
	ld a,b			;5132
	dec e			;5133
l5134h:
	ld bc,0f3cdh		;5134
	halt			;5137
	ld a,(0fff6h)		;5138
	ld (010cah),a		;513b
	ld a,(0c39fh)		;513e
	nop			;5141
	and 040h		;5142
	call nz,00521h		;5144
	ld a,001h		;5147
	ld (l5623h),a		;5149
l514ch:
	pop bc			;514c
	sub c			;514d
	call nz,021afh		;514e
	add a,b			;5151
	dec c			;5152
	cp (hl)			;5153
	jp z,l5b77h		;5154
	ld (hl),a		;5157
	call 01334h		;5158
	inc bc			;515b
	ld e,e			;515c
	jr nz,$+49		;515d
	nop			;515f
	call l672eh+2		;5160
	call sub_5e8ah		;5163
	call 0007dh		;5166
	ld e,h			;5169
	call sub_5bebh		;516a
	jr nz,l517bh		;516d
l516fh:
	call 09215h		;516f
	ld d,c			;5172
	jr l5177h		;5173
	ld h,(hl)		;5175
	ld (bc),a		;5176
l5177h:
	ld c,c			;5177
	ld (hl),d		;5178
	ld (bc),a		;5179
	ld l,c			;517a
l517bh:
	ld (bc),a		;517b
	jr nc,l5180h		;517c
	inc h			;517e
	ld l,a			;517f
l5180h:
	ld (bc),a		;5180
	dec l			;5181
	ld (bc),a		;5182
	ld a,(de)		;5183
	ld de,0cd7fh		;5184
	jp c,00286h		;5187
	cp a			;518a
	ld e,e			;518b
	ei			;518c
	call 00c0ch		;518d
	ld b,h			;5190
	inc bc			;5191
	ld (bc),a		;5192
	ld b,005h		;5193
	defb 0ddh,040h,0e9h ;illegal sequence	;5195
	ei			;5198
	and 010h		;5199
	jp nz,0d501h		;519b
	ld e,e			;519e
	ld a,(l5bd4h)		;519f
	or a			;51a2
	ret nz			;51a3
	ld h,a			;51a4
	sub b			;51a5
	ld b,0c3h		;51a6
	ld d,c			;51a8
	dec b			;51a9
	ld (0af00h),a		;51aa
	rlca			;51ad
	ld a,(de)		;51ae
	ld c,b			;51af
	jp pe,0011ah		;51b0
	inc de			;51b3
	jr nz,l51e8h		;51b4
	ld (bc),a		;51b6
	ld b,e			;51b7
	pop bc			;51b8
sub_51b9h:
	ld a,0e0h		;51b9
	ld (089a4h),a		;51bb
	ld d,c			;51be
	rst 8			;51bf
	ld l,e			;51c0
	ld bc,03ac8h		;51c1
	ret pe			;51c4
	ei			;51c5
	bit 6,a			;51c6
	add hl,bc		;51c8
	add a,d			;51c9
	jp nz,l5c00h		;51ca
	dec h			;51cd
	add a,b			;51ce
	ld b,0c9h		;51cf
	ld (0c202h),a		;51d1
	add a,004h		;51d4
	inc b			;51d6
	ld (0c206h),a		;51d7
	ld a,(0e4d0h)		;51da
	ld h,c			;51dd
	add hl,de		;51de
	ld e,h			;51df
	ld b,d			;51e0
	adc a,d			;51e1
	add hl,bc		;51e2
	ld l,05ah		;51e3
	inc d			;51e5
	rrca			;51e6
	dec b			;51e7
l51e8h:
	xor a			;51e8
	inc d			;51e9
	ret nz			;51ea
	ld b,h			;51eb
	inc b			;51ec
	pop bc			;51ed
	jp m,03284h		;51ee
	inc b			;51f1
	djnz l51fah		;51f2
	ld b,032h		;51f4
	ex af,af'		;51f6
	jp nz,00c32h		;51f7
l51fah:
	inc h			;51fa
	add a,(hl)		;51fb
	and 007h		;51fc
	jr nz,$+16		;51fe
	ld a,000h		;5200
	add a,008h		;5202
	cp 060h			;5204
	jr nz,l520ah		;5206
	ld a,060h		;5208
l520ah:
	ld c,b			;520a
	ld b,d			;520b
	ld a,(0c200h)		;520c
	and h			;520f
	ld (0011ah),hl		;5210
	dec b			;5213
	dec b			;5214
	nop			;5215
	jp nz,00d21h		;5216
	pop bc			;5219
	ld b,(hl)		;521a
	ld (hl),016h		;521b
	xor a			;521d
	add hl,de		;521e
	call sub_5e1ch		;521f
	ld hl,(l74d6h)		;5222
	inc bc			;5225
	cp 001h			;5226
	and h			;5228
	ld b,030h		;5229
	call nc,sub_7f80h	;522b
	ld a,(08709h)		;522e
	jp nc,l57c0h		;5231
	jr $+99			;5234
	dec a			;5236
	sub b			;5237
	or a			;5238
	ld e,b			;5239
	ld a,a			;523a
	adc a,c			;523b
	rlca			;523c
	and a			;523d
	ret			;523e
	ld h,e			;523f
	ld h,b			;5240
	ld e,e			;5241
	xor c			;5242
	jr c,l527fh		;5243
	inc a			;5245
	ld a,(08002h)		;5246
	jp nz,l4011h		;5249
	jp nz,0a0c7h		;524c
	ld (0c15fh),a		;524f
	ld b,000h		;5252
	rlca			;5254
	push de			;5255
	ld a,(hl)		;5256
	and 01fh		;5257
	cp 015h			;5259
	jp z,l4500h		;525b
	ld e,l			;525e
	inc hl			;525f
	or a			;5260
	jp z,05cd5h		;5261
	cp 000h			;5264
	inc b			;5266
	jr z,l52aeh		;5267
	dec a			;5269
	call z,sub_5e3fh	;526a
	call nz,sub_7903h	;526d
	ld e,l			;5270
	pop de			;5271
	push hl			;5272
	ldi			;5273
	ld bc,0e196h		;5275
	inc b			;5278
	xor h			;5279
	ld a,(hl)		;527a
	adc a,(hl)		;527b
	ld bc,01313h		;527c
l527fh:
	ld bc,0000dh		;527f
	add hl,bc		;5282
	ld a,(01835h)		;5283
	add a,002h		;5286
	ld a,(000feh)		;5288
	ld e,0c2h		;528b
	sub (hl)		;528d
	ld e,h			;528e
l528fh:
	ret			;528f
	pop de			;5290
	ld bc,0850fh		;5291
	ld (de),a		;5294
	ex de,hl		;5295
	ld c,008h		;5296
	inc bc			;5298
	rla			;5299
	jp pe,0002bh		;529a
	ld a,(hl)		;529d
	cp 024h			;529e
	jr z,l52dfh		;52a0
	inc hl			;52a2
	push hl			;52a3
	inc hl			;52a4
	and c			;52a5
	nop			;52a6
	add hl,bc		;52a7
	ld d,028h		;52a8
	add hl,bc		;52aa
	xor d			;52ab
sub_52ach:
	djnz l528fh		;52ac
l52aeh:
	call 00412h		;52ae
	ld e,(hl)		;52b1
	jp l5cafh		;52b2
	inc hl			;52b5
	ld c,b			;52b6
l52b7h:
	ld (hl),a		;52b7
	nop			;52b8
	cp 00ch			;52b9
	jr z,l52cfh		;52bb
	and 003h		;52bd
l52bfh:
	jr z,l52c5h		;52bf
	ld h,d			;52c1
	pop hl			;52c2
	rrca			;52c3
	dec hl			;52c4
l52c5h:
	add hl,hl		;52c5
	adc a,c			;52c6
	pop hl			;52c7
	ld (hl),a		;52c8
	add hl,bc		;52c9
	pop bc			;52ca
l52cbh:
	ld (hl),022h		;52cb
	inc hl			;52cd
	and h			;52ce
l52cfh:
	ld (hl),006h		;52cf
	ex af,af'		;52d1
	nop			;52d2
	ld h,c			;52d3
	inc hl			;52d4
	rrca			;52d5
	ld (hl),004h		;52d6
	ld a,0a2h		;52d8
	ld (hl),04bh		;52da
	inc hl			;52dc
	rla			;52dd
	ld e,l			;52de
l52dfh:
	inc hl			;52df
	ld de,0093eh		;52e0
	ld (hl),001h		;52e3
	inc hl			;52e5
	pop af			;52e6
	ret nz			;52e7
	ld b,a			;52e8
	ld a,(hl)		;52e9
	sub b			;52ea
	ld (hl),a		;52eb
	sub 00fh		;52ec
	push de			;52ee
	ld a,000h		;52ef
	dec hl			;52f1
	djnz $+51		;52f2
	pop hl			;52f4
	ld a,(0c235h)		;52f5
	inc c			;52f8
	cp d			;52f9
	ret c			;52fa
	cp e			;52fb
	ret nc			;52fc
	ret pe			;52fd
	add a,b			;52fe
	jp nz,0d8b9h		;52ff
	sub 010h		;5302
	cp c			;5304
	ld a,(bc)		;5305
	ret nc			;5306
	ld a,0f0h		;5307
	ld (08311h),a		;5309
	ld b,l			;530c
	ld (0ea0fh),a		;530d
	jr nz,l536fh		;5310
	ret			;5312
	ld a,(hl)		;5313
	ld (de),a		;5314
	sub 008h		;5315
	ld c,a			;5317
	ld c,c			;5318
	ld a,(hl)		;5319
	jr l531dh		;531a
	ld d,a			;531c
l531dh:
	add a,01eh		;531d
	ld e,a			;531f
	ld hl,0c229h		;5320
	call p,07e10h		;5323
	dec hl			;5326
	cp d			;5327
	inc b			;5328
	jp c,l5d55h		;5329
	cp e			;532c
	jp nc,l7e03h		;532d
	ld h,(hl)		;5330
	cp c			;5331
	ex af,af'		;5332
	ld (00a60h),a		;5333
	ld a,(0c151h)		;5336
	sub b			;5339
	add a,d			;533a
	or c			;533b
	ld e,l			;533c
	ld c,b			;533d
	ld a,b			;533e
	add a,e			;533f
	jp nc,00599h		;5340
	pop hl			;5343
	jr c,l538bh		;5344
	ld de,02377h		;5346
	sbc a,c			;5349
	ld d,03ah		;534a
	ld a,0a8h		;534c
	ld b,011h		;534e
	rlca			;5350
	nop			;5351
	add hl,de		;5352
	ld (hl),d		;5353
	ex af,af'		;5354
	jp c,05dd7h		;5355
	cp (hl)			;5358
	pop bc			;5359
	ld (0c107h),a		;535a
	exx			;535d
	add hl,hl		;535e
	or d			;535f
	inc (hl)		;5360
	xor b			;5361
	ret nz			;5362
	pop bc			;5363
	dec hl			;5364
	sbc hl,de		;5365
	ret			;5367
	cp h			;5368
	ld de,09610h		;5369
	inc hl			;536c
	ld e,c			;536d
	inc de			;536e
l536fh:
	add hl,bc		;536f
	ld (hl),024h		;5370
	inc hl			;5372
	cp 081h			;5373
	inc a			;5375
	jr z,$+27		;5376
	ld a,(l514ch)		;5378
	ld hl,(02fc0h)		;537b
	dec b			;537e
	or d			;537f
	jr nc,$-120		;5380
	ld (l4a62h),a		;5382
	dec e			;5385
	sub 080h		;5386
	add a,h			;5388
	ld c,e			;5389
	dec (hl)		;538a
l538bh:
	ret			;538b
	jp 02008h		;538c
	ld (hl),a		;538f
	ld b,024h		;5390
	nop			;5392
	ld b,(hl)		;5393
	ret nz			;5394
	ld h,h			;5395
	cp c			;5396
	and b			;5397
	push hl			;5398
	ld h,000h		;5399
	jr nc,$+106		;539b
	add hl,hl		;539d
	nop			;539e
	ld de,00b03h		;539f
	ld c,b			;53a2
	add hl,de		;53a3
	push hl			;53a4
	ld l,a			;53a5
	inc c			;53a6
	dec bc			;53a7
	add a,b			;53a8
	nop			;53a9
	ld (hl),h		;53aa
	add hl,de		;53ab
	call l4500h		;53ac
	ld bc,00ee1h		;53af
	sbc a,b			;53b2
l53b3h:
	call 005b4h		;53b3
	ld (bc),a		;53b6
	pop hl			;53b7
	ret			;53b8
	call 0806ah		;53b9
	ld b,(hl)		;53bc
	bit 2,b			;53bd
	inc bc			;53bf
	jp c,07b04h		;53c0
	ld e,(hl)		;53c3
	cp 0e3h			;53c4
	jp nc,02b04h		;53c6
	ld (bc),a		;53c9
	cp 012h			;53ca
	ld c,001h		;53cc
	jr c,l53d5h		;53ce
	call pe,00e60h		;53d0
	pop hl			;53d3
	ret c			;53d4
l53d5h:
	ld a,(0dc99h)		;53d5
	inc a			;53d8
	add hl,de		;53d9
	daa			;53da
	ret z			;53db
l53dch:
	ex (sp),hl		;53dc
	ld bc,0ca3dh		;53dd
	ld (hl),d		;53e0
	ld e,(hl)		;53e1
	ld a,c			;53e2
	or 031h			;53e3
	jp nz,0e778h		;53e5
	jr c,l53b3h		;53e8
	sbc a,b			;53ea
	ex af,af'		;53eb
	add hl,sp		;53ec
	ex af,af'		;53ed
	jr c,$-77		;53ee
	ex af,af'		;53f0
	ld h,c			;53f1
	add a,a			;53f2
	nop			;53f3
	ld d,d			;53f4
	ld (hl),c		;53f5
	in a,(0cch)		;53f6
	ld c,049h		;53f8
	sub b			;53fa
	daa			;53fb
	ld (0c003h),a		;53fc
	ld a,(00247h)		;53ff
	pop bc			;5402
	ld h,a			;5403
	ld a,(0c148h)		;5404
	ld l,a			;5407
	pop bc			;5408
	jr z,$+14		;5409
	inc hl			;540b
	ld e,(hl)		;540c
	inc b			;540d
	inc hl			;540e
	ld c,(hl)		;540f
	inc hl			;5410
	ld a,l			;5411
	ld (l7c0dh),a		;5412
	ld b,b			;5415
	ld (01615h),a		;5416
	nop			;5419
	ld hl,08823h		;541a
	ld (bc),a		;541d
	add hl,de		;541e
	ld (hl),c		;541f
	dec hl			;5420
	ex de,hl		;5421
	ld bc,00910h		;5422
	and b			;5425
	xor l			;5426
	ld a,(hl)		;5427
	or a			;5428
	jr $+42			;5429
	dec e			;542b
	add hl,bc		;542c
	inc b			;542d
	jr $-40			;542e
	inc b			;5430
	inc de			;5431
	inc b			;5432
	or l			;5433
	ld c,004h		;5434
l5436h:
	add hl,bc		;5436
	inc b			;5437
	xor h			;5438
l5439h:
	inc b			;5439
	inc b			;543a
	ld bc,0ebc0h		;543b
	ldir			;543e
	ret			;5440
	push hl			;5441
	ld de,0c42bh		;5442
	call c,014a4h		;5445
	inc bc			;5448
	ld de,01019h		;5449
	ld sp,hl		;544c
	or c			;544d
	nop			;544e
	ld hl,l60aah		;544f
	ld (l609dh),hl		;5452
	ld a,022h		;5455
	add hl,bc		;5457
	ld (0a1fdh),a		;5458
	cp 0f9h			;545b
	sbc a,(hl)		;545d
	ld (002f8h),hl		;545e
	ld c,c			;5461
	push af			;5462
	xor c			;5463
	and e			;5464
	ld b,d			;5465
	di			;5466
	rlca			;5467
	nop			;5468
	call p,021c1h		;5469
	rra			;546c
	ld h,e			;546d
	call 0048bh		;546e
	ld (0133ah),hl		;5471
	sbc a,b			;5474
	nop			;5475
	ld b,a			;5476
	add a,a			;5477
	add a,b			;5478
	add a,012h		;5479
	ld (l632eh),a		;547b
	inc (hl)		;547e
	ld hl,0112eh		;547f
	call sub_5a1bh		;5482
	dec b			;5485
	ret z			;5486
	djnz l54f7h		;5487
	ld h,e			;5489
	ld sp,l6370h		;548a
	ld (06a40h),a		;548d
	ld (bc),a		;5490
	ld l,h			;5491
	ld h,e			;5492
	ld a,(0c308h)		;5493
	ld b,c			;5496
	dec a			;5497
	ld e,e			;5498
	ld (bc),a		;5499
	jp z,l5f71h		;549a
	ld b,01ah		;549d
	ld d,b			;549f
	inc bc			;54a0
	ld b,006h		;54a1
	inc bc			;54a3
	ld b,b			;54a4
	ld de,004d8h		;54a5
	jp z,0085bh		;54a8
	ld bc,01190h		;54ab
	adc a,b			;54ae
	add hl,bc		;54af
	jp l4a08h		;54b0
	rst 18h			;54b3
	jr nc,l5436h		;54b4
	ld h,l			;54b6
	ld a,(0c9f2h)		;54b7
	ld b,003h		;54ba
	di			;54bc
	call m,0fb8ah		;54bd
	jp nz,03204h		;54c0
	ld (0caaah),a		;54c3
	sub e			;54c6
	res 5,h			;54c7
	dec bc			;54c9
	sub 00ah		;54ca
	ex de,hl		;54cc
	jr z,$+6		;54cd
	add hl,bc		;54cf
	dec c			;54d0
	jp nz,l7a05h		;54d1
	ld (0c1f7h),a		;54d4
	ld a,e			;54d7
	ld hl,(0097eh)		;54d8
	jp po,0194ch		;54db
	defb 0edh ;next byte illegal after ed	;54de
	add a,c			;54df
	di			;54e0
	ld e,a			;54e1
	ld b,006h		;54e2
	push bc			;54e4
	or d			;54e5
	or d			;54e6
	push bc			;54e7
	rst 28h			;54e8
	jr nz,$+96		;54e9
	push hl			;54eb
	ld hl,l4d32h		;54ec
	ld h,d			;54ef
	ex (sp),hl		;54f0
	ld (hl),c		;54f1
	sub d			;54f2
	ex (sp),hl		;54f3
	nop			;54f4
	bit 0,a			;54f5
l54f7h:
	jp z,l5fbdh		;54f7
	and 0feh		;54fa
	ld (020c6h),a		;54fc
	ld a,h			;54ff
	xor (hl)		;5500
	jr nc,l5570h		;5501
	ld h,e			;5503
	ld a,(de)		;5504
	jp 05fc5h		;5505
	ld a,(bc)		;5508
	inc bc			;5509
	push bc			;550a
	ld a,(bc)		;550b
	ld hl,0b620h		;550c
	dec de			;550f
	sbc a,e			;5510
	ld d,01dh		;5511
	ld b,e			;5513
	inc b			;5514
	pop hl			;5515
	inc hl			;5516
	pop bc			;5517
	sub d			;5518
	add hl,bc		;5519
	defb 0ddh,09bh,06eh ;illegal sequence	;551a
	dec c			;551d
	inc b			;551e
	ex af,af'		;551f
	djnz $-74		;5520
	ld hl,(01158h)		;5522
	jr nc,$-93		;5525
	xor d			;5527
	ld (00b06h),hl		;5528
	call sub_61d1h		;552b
	add a,a			;552e
	xor b			;552f
	call pe,01204h		;5530
	ld h,d			;5533
	ld de,l6222h		;5534
	call nz,09fa4h		;5537
	add a,c			;553a
	ld a,007h		;553b
	ld (0fcf1h),a		;553d
	ld (de),a		;5540
	rst 38h			;5541
	sbc a,(hl)		;5542
	dec h			;5543
	pop bc			;5544
	sub a			;5545
	ld h,c			;5546
	nop			;5547
	jp l68fdh		;5548
	inc d			;554b
	sub (hl)		;554c
	ld d,c			;554d
	ret po			;554e
	xor a			;554f
	ld (09e63h),hl		;5550
	sub b			;5553
	ld (bc),a		;5554
	ld c,h			;5555
	ld a,(bc)		;5556
	ret nc			;5557
	ld (08c50h),a		;5558
	di			;555b
	ld c,b			;555c
	ccf			;555d
	dec bc			;555e
	ld b,e			;555f
	ld (bc),a		;5560
	ld b,h			;5561
	ld h,e			;5562
	sub (hl)		;5563
	xor (hl)		;5564
	ld b,b			;5565
	call sub_6164h		;5566
	ld a,03fh		;5569
	ld (089dbh),a		;556b
	adc a,d			;556e
	ld a,b			;556f
l5570h:
	adc a,h			;5570
	ret nc			;5571
	jr l5595h		;5572
	jp p,l7c62h		;5574
	ret			;5577
	ret c			;5578
	jp nc,0da1fh		;5579
	jp nc,0de87h		;557c
	ld b,h			;557f
	ld l,a			;5580
	ld l,h			;5581
	inc bc			;5582
	ld c,d			;5583
	nop			;5584
	rst 28h			;5585
	adc a,c			;5586
	call nz,06061h		;5587
	ret p			;558a
	dec bc			;558b
	ret m			;558c
	ret			;558d
	jp pe,03d42h		;558e
	ld (hl),a		;5591
	adc a,082h		;5592
	ret nz			;5594
l5595h:
	ld (hl),a		;5595
	ret po			;5596
	ld l,h			;5597
	ex de,hl		;5598
	ret			;5599
l559ah:
	defb 0ddh,097h,0f7h ;illegal sequence	;559a
	adc a,e			;559d
	dec c			;559e
	nop			;559f
	jp z,0f389h		;55a0
	or c			;55a3
	rlca			;55a4
	ld bc,09507h		;55a5
	and e			;55a8
	add a,e			;55a9
	ld c,0c1h		;55aa
	jp l6cb0h		;55ac
	adc a,e			;55af
	ld c,d			;55b0
	rlca			;55b1
	xor c			;55b2
	ld sp,0a623h		;55b3
	add hl,de		;55b6
	add hl,hl		;55b7
	add hl,hl		;55b8
	di			;55b9
	adc a,d			;55ba
	inc h			;55bb
	inc bc			;55bc
	jp nz,089c3h		;55bd
	jp 0baadh		;55c0
	inc c			;55c3
	and (hl)		;55c4
	add hl,sp		;55c5
	sbc a,(hl)		;55c6
	call nz,03a06h		;55c7
	xor h			;55ca
	exx			;55cb
	ld b,h			;55cc
	ld c,c			;55cd
	and (hl)		;55ce
	call 0ce5ah		;55cf
	add hl,bc		;55d2
	call po,0f21dh		;55d3
	call po,0ab46h		;55d6
	ld de,099c0h		;55d9
	ex de,hl		;55dc
	add a,h			;55dd
	call 00e50h		;55de
	pop af			;55e1
	call nz,00f0eh		;55e2
	call nc,0fe61h		;55e5
	ex af,af'		;55e8
	dec h			;55e9
l55eah:
	ld b,h			;55ea
	and e			;55eb
	xor 092h		;55ec
	add a,c			;55ee
	inc b			;55ef
	and d			;55f0
	ld c,(hl)		;55f1
	exx			;55f2
	or d			;55f3
	dec e			;55f4
	ret p			;55f5
	ld (bc),a		;55f6
	ld h,c			;55f7
	call sub_617fh		;55f8
	ld hl,0a910h		;55fb
	ld e,b			;55fe
	adc a,e			;55ff
	push hl			;5600
	inc (hl)		;5601
	ld de,0edf6h		;5602
	cp c			;5605
	dec de			;5606
	and e			;5607
	ld d,c			;5608
	jp nz,0181dh		;5609
	jr c,$+3		;560c
	jr l559ah		;560e
	or 09ah			;5610
	ld h,b			;5612
	cp 0f0h			;5613
	jp nz,04a1ah		;5615
	ld h,c			;5618
	add a,l			;5619
l561ah:
	ld (hl),005h		;561a
	inc e			;561c
	or h			;561d
	and h			;561e
	ld c,d			;561f
	dec de			;5620
	ld c,h			;5621
	pop hl			;5622
l5623h:
	dec de			;5623
	ld d,b			;5624
	dec de			;5625
l5626h:
	and d			;5626
	ret po			;5627
	jp nz,01b36h		;5628
	sub l			;562b
	sub (hl)		;562c
	or e			;562d
	add a,02ah		;562e
l5630h:
	sub (hl)		;5630
	ld b,l			;5631
	ld hl,(0aacah)		;5632
	ld e,c			;5635
	jp 01c2ch		;5636
	ld hl,0283dh		;5639
	ld c,c			;563c
	xor a			;563d
	cp h			;563e
	add a,h			;563f
	or h			;5640
	or e			;5641
	sbc a,l			;5642
l5643h:
	jr l5643h		;5643
	ld b,l			;5645
	rra			;5646
	adc a,b			;5647
	cp d			;5648
	jr z,l568bh		;5649
	sub d			;564b
	ld (bc),a		;564c
	ld c,a			;564d
	ld (bc),a		;564e
	rla			;564f
	ld (bc),a		;5650
	add hl,bc		;5651
	ld h,d			;5652
	ld h,e			;5653
	xor 001h		;5654
	bit 2,h			;5656
	ld d,e			;5658
	ld (bc),a		;5659
	ex af,af'		;565a
l565bh:
	ld c,c			;565b
	ld h,e			;565c
	xor (hl)		;565d
	adc a,b			;565e
	inc (hl)		;565f
	sbc a,0c8h		;5660
	ld e,e			;5662
	adc a,l			;5663
	xor (hl)		;5664
	out (09dh),a		;5665
	ret po			;5667
	daa			;5668
	sbc a,(hl)		;5669
	ld h,c			;566a
	ret po			;566b
	add a,h			;566c
	ld e,l			;566d
	ret po			;566e
	jp pe,0e05eh		;566f
	ld h,e			;5672
	and (hl)		;5673
l5674h:
	ld h,c			;5674
	ld a,(bc)		;5675
	ld e,b			;5676
	inc bc			;5677
	ld a,(bc)		;5678
	inc hl			;5679
	dec de			;567a
	ex de,hl		;567b
	ld hl,l5a5bh		;567c
	rst 8			;567f
	sub d			;5680
	ld h,c			;5681
	push de			;5682
	halt			;5683
	inc b			;5684
	dec h			;5685
	jp nz,01b82h		;5686
	ld h,c			;5689
	ld e,(hl)		;568a
l568bh:
	xor b			;568b
	inc (hl)		;568c
	sbc hl,hl		;568d
	or 0b0h			;568f
	ld (hl),l		;5691
	ld a,(l4448h)		;5692
	pop de			;5695
l5696h:
	jp z,0df9ah		;5696
	rst 0			;5699
	ld d,d			;569a
	and d			;569b
	ld (hl),b		;569c
	push hl			;569d
	ld h,c			;569e
	inc h			;569f
	ld a,(0b5f9h)		;56a0
	jp c,0b1abh		;56a3
	ld (hl),e		;56a6
	sbc a,h			;56a7
	adc a,d			;56a8
	inc de			;56a9
	rst 10h			;56aa
	sub b			;56ab
	ld de,(0d792h)		;56ac
	ret			;56b0
	adc a,d			;56b1
	adc a,045h		;56b2
	ld e,a			;56b4
	sub 017h		;56b5
	call z,07662h		;56b7
	ld a,(l5626h)		;56ba
	ld e,a			;56bd
	add a,(hl)		;56be
l56bfh:
	jr nz,$-6		;56bf
l56c1h:
	dec d			;56c1
	ex de,hl		;56c2
	pop hl			;56c3
	ld bc,0a402h		;56c4
	adc a,e			;56c7
	sub (hl)		;56c8
	call m,020cfh		;56c9
	nop			;56cc
	ld bc,l40b5h		;56cd
	ld bc,02010h		;56d0
	ld b,b			;56d3
	nop			;56d4
	ld h,b			;56d5
	ld b,b			;56d6
	add a,b			;56d7
sub_56d8h:
	ld c,040h		;56d8
	and b			;56da
	ld h,b			;56db
	nop			;56dc
	add a,l			;56dd
	inc d			;56de
	ld h,b			;56df
sub_56e0h:
	ld a,(bc)		;56e0
	nop			;56e1
	add a,b			;56e2
	ld (bc),a		;56e3
	ld h,b			;56e4
	and b			;56e5
	add a,b			;56e6
	nop			;56e7
	add a,b			;56e8
	jr nz,l56fdh		;56e9
	ld d,b			;56eb
	add a,b			;56ec
l56edh:
	ld a,(bc)		;56ed
	nop			;56ee
	and b			;56ef
	and b			;56f0
	nop			;56f1
	add hl,de		;56f2
	and b			;56f3
	jr nz,l5696h		;56f4
	ld e,014h		;56f6
	ld b,b			;56f8
	ld a,(bc)		;56f9
	ret nz			;56fa
	nop			;56fb
	ret nz			;56fc
l56fdh:
	jr nz,l56bfh		;56fd
	nop			;56ff
	ld b,b			;5700
	ret nz			;5701
	ld h,b			;5702
	ret nz			;5703
	add a,b			;5704
	ret nz			;5705
	and b			;5706
	ret po			;5707
	nop			;5708
	nop			;5709
	ret po			;570a
	jr nz,l56edh		;570b
	ld b,b			;570d
	ret po			;570e
	ld h,b			;570f
	ret po			;5710
	ld hl,(0e080h)		;5711
	jr nz,l5761h		;5714
	nop			;5716
	xor d			;5717
	ld c,d			;5718
	ld b,b			;5719
	ld (hl),02eh		;571a
	or (hl)			;571c
	nop			;571d
	ld e,b			;571e
	ld c,(hl)		;571f
l5720h:
	and b			;5720
	ld b,h			;5721
	ld (hl),001h		;5722
	ld b,b			;5724
sub_5725h:
	ld hl,00040h		;5725
	ld b,c			;5728
	ld b,b			;5729
	ld h,c			;572a
	ld b,b			;572b
	add a,c			;572c
	ld b,b			;572d
	and c			;572e
	ld h,b			;572f
	ld (bc),a		;5730
	ld bc,02160h		;5731
	ld h,b			;5734
	ld b,c			;5735
	ld h,b			;5736
	ret			;5737
	add a,b			;5738
	add a,c			;5739
	ld h,b			;573a
	and c			;573b
	add a,b			;573c
	ld l,001h		;573d
	add a,b			;573f
	ret			;5740
	nop			;5741
	ld b,c			;5742
	add a,b			;5743
	ld h,c			;5744
l5745h:
	add a,b			;5745
	add a,c			;5746
	add a,b			;5747
	and c			;5748
	and b			;5749
	nop			;574a
	ld bc,021a0h		;574b
	and b			;574e
	ld b,c			;574f
	and b			;5750
	ld h,c			;5751
	and b			;5752
	add hl,bc		;5753
	add a,c			;5754
	and b			;5755
	and c			;5756
	ret nz			;5757
	ret m			;5758
	add a,b			;5759
	ld hl,l41c0h		;575a
	ret nz			;575d
	ld h,c			;575e
	ret nz			;575f
	nop			;5760
l5761h:
	add a,c			;5761
	ret nz			;5762
	and c			;5763
	ret po			;5764
	ld bc,021e0h		;5765
	ret po			;5768
	nop			;5769
	ld b,c			;576a
	ret po			;576b
	ld h,c			;576c
	ret po			;576d
	add a,c			;576e
	ret po			;576f
	and c			;5770
	jr nz,l5773h		;5771
l5773h:
	ld bc,02120h		;5773
	jr nz,l57b9h		;5776
	jr nz,$+99		;5778
	jr nz,$+8		;577a
	add a,c			;577c
	jr nz,l5720h		;577d
	nop			;577f
	ld bc,00585h		;5780
	nop			;5783
	ld b,c			;5784
	add a,c			;5785
	ld (bc),a		;5786
	nop			;5787
	add a,c			;5788
	nop			;5789
	dec bc			;578a
	and 000h		;578b
	ld de,001d3h		;578d
	nop			;5790
	ret nc			;5791
	dec bc			;5792
	ld h,d			;5793
	sub (hl)		;5794
	sbc a,b			;5795
	nop			;5796
	ld (bc),a		;5797
	ld (de),a		;5798
	sbc a,c			;5799
	sbc a,(hl)		;579a
	ld c,d			;579b
	nop			;579c
	ld e,012h		;579d
	ld (bc),a		;579f
l57a0h:
	add hl,bc		;57a0
	ld (hl),c		;57a1
	ld a,b			;57a2
	nop			;57a3
	rrca			;57a4
	cp b			;57a5
	ld (bc),a		;57a6
	dec e			;57a7
	dec d			;57a8
	pop hl			;57a9
	inc bc			;57aa
	add hl,hl		;57ab
	defb 0ddh,006h,002h ;illegal sequence	;57ac
	ld b,000h		;57af
	dec b			;57b1
	inc de			;57b2
	jr l5745h		;57b3
	jr nz,l57bbh		;57b5
	djnz $-54		;57b7
l57b9h:
	dec de			;57b9
	rla			;57ba
l57bbh:
	ex af,af'		;57bb
	nop			;57bc
	add a,04ah		;57bd
	ret po			;57bf
l57c0h:
	inc b			;57c0
	push af			;57c1
	ld c,d			;57c2
	add hl,bc		;57c3
	rlc e			;57c4
	ld (de),a		;57c6
	ld l,l			;57c7
	dec bc			;57c8
	daa			;57c9
	ld l,(hl)		;57ca
	sub b			;57cb
	ld c,049h		;57cc
	jp z,0e8c3h		;57ce
	dec e			;57d1
	call sub_649dh		;57d2
	inc c			;57d5
	call 005bdh		;57d6
	ld hl,0b1d7h		;57d9
	jp z,00142h		;57dc
	ld (de),a		;57df
	adc a,c			;57e0
	ld d,08eh		;57e1
	jp nz,l63aah		;57e3
	ex af,af'		;57e6
	halt			;57e7
	xor (hl)		;57e8
	ex af,af'		;57e9
	and c			;57ea
	ld (hl),h		;57eb
	adc a,d			;57ec
	ex af,af'		;57ed
	rst 38h			;57ee
	ld (hl),b		;57ef
	adc a,h			;57f0
	ex af,af'		;57f1
	ld (hl),b		;57f2
	ld a,(de)		;57f3
	inc hl			;57f4
	ld (hl),c		;57f5
	ld a,d			;57f6
	sub d			;57f7
	sub e			;57f8
l57f9h:
	rst 18h			;57f9
	jr z,l5875h		;57fa
	cp c			;57fc
	ex af,af'		;57fd
	ld a,a			;57fe
	ld l,d			;57ff
	ld (00280h),a		;5800
	sub 069h		;5803
	nop			;5805
	ld (l64e5h),a		;5806
	ld (l6faah),a		;5809
	ld (092a9h),a		;580c
	ld (bc),a		;580f
	and a			;5810
	ld (bc),a		;5811
	xor b			;5812
	ld (bc),a		;5813
	dec c			;5814
	sbc a,e			;5815
	ld (hl),b		;5816
	ld (0dbd5h),a		;5817
	rrca			;581a
	call m,09075h		;581b
	sbc a,a			;581e
	halt			;581f
	xor (hl)		;5820
	ld c,b			;5821
	ld (bc),a		;5822
	inc d			;5823
	ld (bc),a		;5824
	sbc a,(hl)		;5825
	ld (hl),c		;5826
	inc b			;5827
	ld (l732dh+2),a		;5828
	ld (0391fh),a		;582b
	add hl,de		;582e
	ld a,(de)		;582f
	add a,e			;5830
	ld (0c9aeh),a		;5831
	add hl,de		;5834
	or b			;5835
	ld a,l			;5836
	rst 0			;5837
	add a,b			;5838
	dec e			;5839
	ld a,d			;583a
	ld a,05ah		;583b
	ld (01e40h),a		;583d
	inc b			;5840
	xor d			;5841
	ld (l719ch),a		;5842
	ld a,095h		;5845
	ld b,e			;5847
	sbc a,l			;5848
	inc b			;5849
	or c			;584a
	add a,e			;584b
	ld d,06ch		;584c
	ld a,08eh		;584e
	inc hl			;5850
	ld c,l			;5851
	ld l,c			;5852
	adc a,e			;5853
sub_5854h:
	djnz l5880h		;5854
	ld e,c			;5856
	ld a,(bc)		;5857
	ld a,014h		;5858
	ld (00e90h),a		;585a
	and l			;585d
	and e			;585e
	in a,(075h)		;585f
	inc b			;5861
	ld (de),a		;5862
	rst 10h			;5863
	ld c,a			;5864
	call c,04943h		;5865
	sbc a,a			;5868
	ld (bc),a		;5869
	jr nz,$+72		;586a
	inc hl			;586c
sub_586dh:
	ld (bc),a		;586d
	ld (00226h),hl		;586e
	add hl,hl		;5871
	ld (hl),e		;5872
	add a,e			;5873
	inc h			;5874
l5875h:
	ld l,006h		;5875
	ld (00292h),hl		;5877
	dec h			;587a
	ld (bc),a		;587b
	jr z,l5880h		;587c
	ld c,b			;587e
	dec hl			;587f
l5880h:
	ld (bc),a		;5880
	inc l			;5881
	ld (bc),a		;5882
	dec l			;5883
	ld (hl),e		;5884
	xor h			;5885
	xor c			;5886
	rrca			;5887
	and l			;5888
	ld a,a			;5889
	ld (0d9a6h),a		;588a
	add a,h			;588d
	add hl,de		;588e
	ld (00f24h),a		;588f
	daa			;5892
	sub h			;5893
	rrca			;5894
	dec l			;5895
	ld c,e			;5896
	rlca			;5897
	ld hl,l7301h		;5898
	ld hl,l648ah+1		;589b
	ld de,l7b15h		;589e
	pop hl			;58a1
	dec d			;58a2
	ex (sp),hl		;58a3
	ld hl,08821h		;58a4
	ld a,(bc)		;58a7
	ld b,08eh		;58a8
	ld bc,00401h		;58aa
	jp m,0a029h		;58ad
	ld de,0f6a4h		;58b0
	push hl			;58b3
	ld b,c			;58b4
	ld hl,06c1eh		;58b5
	ld (hl),a		;58b8
	and (hl)		;58b9
	add a,b			;58ba
	call m,0d6c9h		;58bb
	pop bc			;58be
	pop bc			;58bf
	nop			;58c0
	add a,c			;58c1
	ld c,b			;58c2
	djnz $-103		;58c3
	ld bc,08a01h		;58c5
	nop			;58c8
	ld sp,l4102h		;58c9
	inc bc			;58cc
	ld h,c			;58cd
	inc b			;58ce
	ld h,e			;58cf
	cp b			;58d0
	rst 18h			;58d1
	add a,005h		;58d2
	adc a,h			;58d4
	add a,c			;58d5
	ld bc,0c3cch		;58d6
	ld (0c3cbh),a		;58d9
	ld a,(0a7d1h)		;58dc
	ld a,c			;58df
	ld l,003h		;58e0
	jp c,064bch		;58e2
sub_58e5h:
	cp 005h			;58e5
	sbc a,(hl)		;58e7
	ld c,h			;58e8
	ld b,011h		;58e9
	jp l64c0h		;58eb
	sbc a,c			;58ee
	inc h			;58ef
	ld d,a			;58f0
	cp h			;58f1
	cp h			;58f2
	ld (bc),a		;58f3
	sbc a,d			;58f4
	adc a,b			;58f5
	cp d			;58f6
	jp c,l46cch		;58f7
	ld h,h			;58fa
	cp d			;58fb
	ld a,(de)		;58fc
	cp d			;58fd
	adc a,b			;58fe
	xor d			;58ff
	ld b,(hl)		;5900
	ld (bc),a		;5901
	ld c,d			;5902
	adc a,b			;5903
	inc d			;5904
	xor h			;5905
	inc bc			;5906
	jp 0da2ah		;5907
	pop hl			;590a
	inc d			;590b
	ld a,014h		;590c
	pop bc			;590e
	ld e,c			;590f
	ld a,(0c396h)		;5910
	call m,03ad0h		;5913
	sub a			;5916
	jp 0f7eah		;5917
	inc bc			;591a
	inc bc			;591b
	jp z,l6502h		;591c
	cp 0b4h			;591f
	ret c			;5921
	xor a			;5922
	djnz l592bh		;5923
	jr nc,$+14		;5925
	call sub_7f80h		;5927
	ret			;592a
l592bh:
	ld (03d60h),hl		;592b
	exx			;592e
	sub l			;592f
	ld h,(hl)		;5930
	jp 00025h		;5931
	jr nz,$+16		;5934
	ld (bc),a		;5936
	jp z,0ff03h		;5937
	nop			;593a
	sbc a,c			;593b
	ld bc,00114h		;593c
	nop			;593f
	daa			;5940
	sbc a,b			;5941
	sub (iy+00fh)		;5942
	dec bc			;5945
	sbc a,b			;5946
	call pe,0040fh		;5947
	pop af			;594a
	ld h,c			;594b
	call pe,01404h		;594c
	pop af			;594f
	inc b			;5950
	add a,(hl)		;5951
	ld e,01eh		;5952
	inc b			;5954
	jr $-8			;5955
	inc hl			;5957
	inc b			;5958
	jp po,01961h		;5959
	inc b			;595c
	defb 0ddh,0fbh,009h ;illegal sequence	;595d
	xor h			;5960
	jp po,03104h		;5961
	dec b			;5964
	defb 0ddh,004h,023h ;illegal sequence	;5965
	add hl,bc		;5968
	and a			;5969
	ld e,005h		;596a
	ld (0007fh),hl		;596c
	ld (de),a		;596f
	ld a,(l48b1h)		;5970
	sub d			;5973
	jp l650bh		;5974
l5977h:
	sbc a,h			;5977
	jp nz,l6693h		;5978
	inc bc			;597b
	ld h,b			;597c
	ld d,b			;597d
	inc bc			;597e
	sub c			;597f
	ld h,l			;5980
	ret			;5981
l5982h:
	nop			;5982
	ld (hl),c		;5983
	dec b			;5984
	ld bc,0029ah		;5985
	ld hl,0658fh		;5988
	ld (hl),b		;598b
	ld a,0f2h		;598c
	sbc a,06bh		;598e
	ld (bc),a		;5990
	or b			;5991
	ld (l650dh),hl		;5992
	inc a			;5995
	ret z			;5996
	jp p,02f05h		;5997
	jp nz,015bch		;599a
	ret nc			;599d
	out (03eh),a		;599e
	cp 0d2h			;59a0
	ret p			;59a2
	ld a,008h		;59a3
l59a5h:
	call m,02edfh		;59a5
	ld a,(03c10h)		;59a8
	and a			;59ab
	cp d			;59ac
	xor b			;59ad
	cp c			;59ae
	pop de			;59af
	ld e,a			;59b0
	sbc a,c			;59b1
	jp po,0dd65h		;59b2
	ret po			;59b5
	cp 0a0h			;59b6
	jp nz,0c5d7h		;59b8
	add hl,sp		;59bb
	ld (0f153h),a		;59bc
	ld (hl),c		;59bf
	jr nz,$+103		;59c0
	dec d			;59c2
	ld h,b			;59c3
	rra			;59c4
	ld b,a			;59c5
	call 003e7h		;59c6
	ld h,l			;59c9
l59cah:
	inc hl			;59ca
	djnz $-4		;59cb
	ret			;59cd
	ld a,(hl)		;59ce
	sub 080h		;59cf
l59d1h:
	ld c,h			;59d1
	ld h,(hl)		;59d2
	ld a,(0be0eh)		;59d3
	dec bc			;59d6
	pop af			;59d7
	dec c			;59d8
	dec d			;59d9
	ld h,l			;59da
	ld a,(0070fh)		;59db
	ld d,b			;59de
	rla			;59df
	inc b			;59e0
l59e1h:
	ld sp,0c278h		;59e1
	dec b			;59e4
	ld c,h			;59e5
	ld h,(hl)		;59e6
	xor 0feh		;59e7
	djnz l5977h		;59e9
	jp nz,0060ch		;59eb
	nop			;59ee
	ld (08011h),a		;59ef
	ld (de),a		;59f2
	cp 014h			;59f3
	jp nz,l6619h		;59f5
	inc hl			;59f8
	ex af,af'		;59f9
	ld (hl),001h		;59fa
	dec hl			;59fc
	ld a,(hl)		;59fd
	ld (hl),l		;59fe
	ld bc,0d577h		;59ff
	jp 0e60ah		;5a02
	jr nz,l59d1h		;5a05
	add hl,hl		;5a07
	inc e			;5a08
	ld a,c			;5a09
	ex af,af'		;5a0a
	jr l5a72h		;5a0b
	exx			;5a0d
	ld a,(0fe33h)		;5a0e
	call pe,0214ch		;5a11
	dec h			;5a14
	call c,09089h		;5a15
	exx			;5a18
	jr nz,l59e1h		;5a19
sub_5a1bh:
	inc d			;5a1b
	ld (hl),a		;5a1c
	ret nz			;5a1d
	ld (hl),c		;5a1e
	ld c,d			;5a1f
	ld h,(hl)		;5a20
	ld e,003h		;5a21
	jr $-17			;5a23
	ld d,d			;5a25
	ld (hl),0d4h		;5a26
	ld a,h			;5a28
	pop bc			;5a29
	ld e,025h		;5a2a
	inc b			;5a2c
	add hl,de		;5a2d
	call 0ea64h		;5a2e
	sub 0f9h		;5a31
	ex (sp),hl		;5a33
	adc a,e			;5a34
	ld (08c82h),hl		;5a35
	adc a,d			;5a38
	ld b,a			;5a39
	ld c,08ah		;5a3a
	inc c			;5a3c
	xor a			;5a3d
	call po,000a4h		;5a3e
	ld (hl),c		;5a41
	ld (bc),a		;5a42
	djnz l5aa9h		;5a43
	rst 30h			;5a45
	inc h			;5a46
	inc d			;5a47
	ld a,(0fca1h)		;5a48
	add a,0fch		;5a4b
	cp c			;5a4d
	rlca			;5a4e
	ld a,b			;5a4f
	and d			;5a50
	ld b,a			;5a51
	ld d,l			;5a52
	ld a,(0a383h)		;5a53
	call po,05495h		;5a56
	pop bc			;5a59
	sub c			;5a5a
l5a5bh:
	cp e			;5a5b
	add a,d			;5a5c
	ld a,(l650ch)		;5a5d
	and (hl)		;5a60
	ld l,d			;5a61
	inc bc			;5a62
	and 022h		;5a63
	jp nz,l77a5h		;5a65
	ld l,b			;5a68
	ld (bc),a		;5a69
	ld de,0fecdh		;5a6a
	ld h,(hl)		;5a6d
	inc h			;5a6e
	ld a,r			;5a6f
	add a,h			;5a71
l5a72h:
	ld (de),a		;5a72
	jp nz,l66beh		;5a73
l5a76h:
	add a,c			;5a76
	defb 0edh ;next byte illegal after ed	;5a77
	dec d			;5a78
	adc a,b			;5a79
	ccf			;5a7a
	inc a			;5a7b
	jp m,0a966h		;5a7c
	inc a			;5a7f
	inc bc			;5a80
	add hl,bc		;5a81
	ld c,a			;5a82
	ld b,(hl)		;5a83
	add a,h			;5a84
	sub 028h		;5a85
	dec bc			;5a87
	call m,06664h		;5a88
	ld e,e			;5a8b
	ex af,af'		;5a8c
	add a,c			;5a8d
	rra			;5a8e
	ld (l66fdh),a		;5a8f
	ei			;5a92
	sbc a,a			;5a93
	and l			;5a94
	ld (hl),a		;5a95
	adc a,(hl)		;5a96
	inc bc			;5a97
	jp z,l66f0h		;5a98
	adc a,(hl)		;5a9b
	or a			;5a9c
	ret z			;5a9d
	ld b,b			;5a9e
	ei			;5a9f
	ld h,(hl)		;5aa0
	ld bc,0a403h		;5aa1
	rst 38h			;5aa4
	sbc a,b			;5aa5
	xor 024h		;5aa6
	ld h,h			;5aa8
l5aa9h:
	ld b,a			;5aa9
	ld h,h			;5aaa
	sbc a,010h		;5aab
	ld d,e			;5aad
	jp z,l670ah		;5aae
	adc a,h			;5ab1
	defb 0fdh,000h,028h ;illegal sequence	;5ab2
	ld h,a			;5ab5
	ld a,(l6727h)		;5ab6
	cp 0f8h			;5ab9
	ld hl,02123h		;5abb
	ld h,a			;5abe
	rst 18h			;5abf
	inc sp			;5ac0
	ld a,(bc)		;5ac1
	call nz,00472h		;5ac2
	ld h,e			;5ac5
	ret			;5ac6
	add a,c			;5ac7
	adc a,l			;5ac8
	ex (sp),hl		;5ac9
	adc a,099h		;5aca
	ex (sp),hl		;5acc
	ld b,d			;5acd
	ld a,d			;5ace
	ld h,l			;5acf
	jp nc,03748h		;5ad0
	and 064h		;5ad3
	sbc a,l			;5ad5
	sub h			;5ad6
	and d			;5ad7
	dec b			;5ad8
	cp 0a2h			;5ad9
	add hl,sp		;5adb
	sub d			;5adc
	ld (hl),h		;5add
	call p,054c1h		;5ade
	adc a,d			;5ae1
	add hl,sp		;5ae2
	inc b			;5ae3
	jp nz,0af04h		;5ae4
	ld (05c0ch),a		;5ae7
	ld a,(0b795h)		;5aea
	ld bc,081c2h		;5aed
	ld (hl),b		;5af0
	call sub_6c94h		;5af1
	ld a,(l74abh)		;5af4
	add hl,bc		;5af7
	dec a			;5af8
	halt			;5af9
	ld l,b			;5afa
	call pe,00385h		;5afb
	jp z,l680fh		;5afe
	cp d			;5b01
	ld b,h			;5b02
	jp z,0041dh		;5b03
	ld b,021h		;5b06
	jp z,02c8ch		;5b08
	ex af,af'		;5b0b
	jp z,004c3h		;5b0c
	ex af,af'		;5b0f
	add hl,bc		;5b10
	jp z,00e34h		;5b11
	ld a,(bc)		;5b14
	jp z,02b42h		;5b15
	inc b			;5b18
	inc c			;5b19
	jp z,l6ae9h		;5b1a
	sub d			;5b1d
	adc a,c			;5b1e
	ld h,064h		;5b1f
	or b			;5b21
	call z,05bb1h		;5b22
	ld h,a			;5b25
	xor (hl)		;5b26
	ld h,(hl)		;5b27
	jp l5da0h		;5b28
	sbc a,0e3h		;5b2b
	ccf			;5b2d
	ld de,l6d9fh		;5b2e
	call c,0a58bh		;5b31
	ld l,b			;5b34
	ld (00002h),hl		;5b35
	inc sp			;5b38
	ld (bc),a		;5b39
	inc (hl)		;5b3a
	inc bc			;5b3b
	ld b,h			;5b3c
	inc bc			;5b3d
	ld d,(hl)		;5b3e
	inc b			;5b3f
	dec (hl)		;5b40
	ld (hl),a		;5b41
	ld b,036h		;5b42
l5b44h:
	ld (hl),b		;5b44
	ld (hl),03ch		;5b45
	rst 10h			;5b47
	ld (hl),0f6h		;5b48
	dec h			;5b4a
	or c			;5b4b
	inc h			;5b4c
	ld de,00201h		;5b4d
	ld b,b			;5b50
	ld (00301h),hl		;5b51
	inc sp			;5b54
	inc b			;5b55
	ld d,l			;5b56
	dec b			;5b57
	call nc,03025h		;5b58
	dec h			;5b5b
	defb 0fdh,0f8h,025h ;illegal sequence	;5b5c
	inc sp			;5b5f
	jp c,09164h		;5b60
	cp b			;5b63
	sub e			;5b64
	ld (bc),a		;5b65
	dec b			;5b66
	ld a,(de)		;5b67
	inc bc			;5b68
	dec h			;5b69
	inc b			;5b6a
	dec h			;5b6b
	add a,b			;5b6c
	ld (l59cah),hl		;5b6d
	sub b			;5b70
	ex af,af'		;5b71
	ret nz			;5b72
	jp z,06871h		;5b73
	sub b			;5b76
l5b77h:
	ret po			;5b77
	djnz l5b44h		;5b78
	inc bc			;5b7a
	add hl,bc		;5b7b
	ld l,c			;5b7c
	cp 050h			;5b7d
	jp z,00da7h		;5b7f
	or a			;5b82
	ret c			;5b83
	ex af,af'		;5b84
	ld sp,01c1fh		;5b85
	ld l,c			;5b88
	ex af,af'		;5b89
	ld b,l			;5b8a
	sbc a,0b5h		;5b8b
	ld d,c			;5b8d
	ld sp,00369h		;5b8e
	ld sp,0034eh		;5b91
	sbc a,(hl)		;5b94
	inc bc			;5b95
	adc a,h			;5b96
l5b97h:
	cp e			;5b97
	inc bc			;5b98
	ld hl,06a81h		;5b99
	inc bc			;5b9c
	ei			;5b9d
	ld l,e			;5b9e
	ret			;5b9f
	adc a,c			;5ba0
	add hl,hl		;5ba1
	rst 10h			;5ba2
	sub e			;5ba3
	ld a,0e2h		;5ba4
	jp l6c91h		;5ba6
	jp nc,0e533h		;5ba9
	inc sp			;5bac
	jp l7024h		;5bad
	call m,072e3h		;5bb0
	adc a,h			;5bb3
	ret p			;5bb4
	jp nz,008feh		;5bb5
	ld h,h			;5bb8
	jp nc,l6884h		;5bb9
	ret c			;5bbc
	ret z			;5bbd
	dec a			;5bbe
	ld a,018h		;5bbf
	ret			;5bc1
	rra			;5bc2
	ld hl,(00a04h)		;5bc3
	add a,e			;5bc6
	ld bc,08c66h		;5bc7
	dec h			;5bca
	ld e,h			;5bcb
	inc d			;5bcc
	dec h			;5bcd
	inc c			;5bce
	ld de,00898h		;5bcf
	or c			;5bd2
	and h			;5bd3
l5bd4h:
	or h			;5bd4
	inc hl			;5bd5
	ld a,e			;5bd6
	ld (03e69h),a		;5bd7
	inc c			;5bda
	ld (03579h),hl		;5bdb
	ld c,l			;5bde
	cp d			;5bdf
	dec (hl)		;5be0
	ld (bc),a		;5be1
	dec (hl)		;5be2
	ld (hl),b		;5be3
	ld a,(bc)		;5be4
	dec (hl)		;5be5
	inc bc			;5be6
	out (035h),a		;5be7
	pop bc			;5be9
	adc a,e			;5bea
sub_5bebh:
	dec (hl)		;5beb
	ret z			;5bec
	jr l5bf6h		;5bed
	rst 28h			;5bef
	dec (hl)		;5bf0
	jr nc,l5b97h		;5bf1
	and 030h		;5bf3
	dec b			;5bf5
l5bf6h:
	ret			;5bf6
	dec h			;5bf7
	dec hl			;5bf8
	ld b,02bh		;5bf9
	and h			;5bfb
	inc b			;5bfc
	adc a,(hl)		;5bfd
	add a,a			;5bfe
	ld a,b			;5bff
l5c00h:
	adc a,a			;5c00
	ld de,00ae8h		;5c01
	ld h,c			;5c04
	rlca			;5c05
	ex af,af'		;5c06
	ld c,(hl)		;5c07
	ld d,c			;5c08
	xor a			;5c09
	ld l,d			;5c0a
	call p,0226ah		;5c0b
	dec d			;5c0e
	xor d			;5c0f
	add hl,sp		;5c10
	adc a,h			;5c11
	sub a			;5c12
	call nz,0ff12h		;5c13
	sub a			;5c16
	ld a,c			;5c17
	ld (bc),a		;5c18
	ret			;5c19
	inc d			;5c1a
	dec c			;5c1b
	ld a,(0e32fh)		;5c1c
	dec h			;5c1f
	ld (09903h),a		;5c20
	ld h,c			;5c23
	jr nc,l5c8fh		;5c24
	ld b,095h		;5c26
	cp h			;5c28
	sub h			;5c29
	dec c			;5c2a
	inc bc			;5c2b
	cp 002h			;5c2c
l5c2eh:
	ld c,d			;5c2e
	ret nz			;5c2f
	jp l7b27h		;5c30
	inc d			;5c33
	and 0a6h		;5c34
	ld c,h			;5c36
	inc e			;5c37
	ld d,(hl)		;5c38
	inc bc			;5c39
	inc e			;5c3a
	ret			;5c3b
	sbc a,c			;5c3c
	ld b,01ch		;5c3d
	call nc,0e8fdh		;5c3f
	dec b			;5c42
	jp nz,0d093h		;5c43
	ld c,0feh		;5c46
	jp m,l79cah		;5c48
	ld e,b			;5c4b
	ld l,c			;5c4c
	or h			;5c4d
	jp z,08a4ah		;5c4e
	cp e			;5c51
	ld c,b			;5c52
	ld (09bd6h),hl		;5c53
	sub (hl)		;5c56
	ld c,l			;5c57
	dec d			;5c58
	jp pe,0d688h		;5c59
	call nc,004adh		;5c5c
	djnz l5c92h		;5c5f
	add a,003h		;5c61
	djnz l5c2eh		;5c63
	daa			;5c65
	xor (hl)		;5c66
	xor c			;5c67
	ld c,a			;5c68
	ld h,06ch		;5c69
	sbc a,h			;5c6b
	ld c,a			;5c6c
	ld d,d			;5c6d
	inc bc			;5c6e
	ld c,a			;5c6f
	sbc a,l			;5c70
	ld c,a			;5c71
	ld l,e			;5c72
	sbc a,h			;5c73
	ld b,b			;5c74
	inc a			;5c75
	ld l,h			;5c76
	ld c,d			;5c77
	ret z			;5c78
	call z,0891bh		;5c79
	dec (hl)		;5c7c
l5c7dh:
	cp c			;5c7d
	inc e			;5c7e
	sub h			;5c7f
	inc bc			;5c80
	inc e			;5c81
	cp d			;5c82
	xor (hl)		;5c83
	inc e			;5c84
	ld b,01ch		;5c85
	in a,(099h)		;5c87
l5c89h:
	inc e			;5c89
	out (037h),a		;5c8a
	nop			;5c8c
	ld c,a			;5c8d
	ld (bc),a		;5c8e
l5c8fh:
	dec b			;5c8f
	cpl			;5c90
	add hl,bc		;5c91
l5c92h:
	rrca			;5c92
	inc d			;5c93
	ld h,002h		;5c94
	ld (bc),a		;5c96
	ei			;5c97
	inc b			;5c98
	ld (hl),c		;5c99
	rlca			;5c9a
	ld bc,0eff0h		;5c9b
	inc b			;5c9e
	ld (bc),a		;5c9f
	rlc (hl)		;5ca0
	rst 18h			;5ca2
	dec bc			;5ca3
	ld b,a			;5ca4
	ld bc,0983ah		;5ca5
	ld d,c			;5ca8
	adc a,d			;5ca9
	ld c,h			;5caa
	inc bc			;5cab
	ld e,a			;5cac
	add a,c			;5cad
	sub (hl)		;5cae
l5cafh:
	ld hl,09605h		;5caf
	ld b,l			;5cb2
	ld (091f3h),a		;5cb3
	adc a,d			;5cb6
	ld a,h			;5cb7
	sub h			;5cb8
	inc d			;5cb9
	ld (0aa03h),a		;5cba
	ld b,(hl)		;5cbd
	ld a,(hl)		;5cbe
	ld l,d			;5cbf
	ld b,04bh		;5cc0
	sub a			;5cc2
	ld d,c			;5cc3
	jp nz,0033dh		;5cc4
	or (hl)			;5cc7
	dec hl			;5cc8
	call p,0c280h		;5cc9
	adc a,h			;5ccc
	ld l,d			;5ccd
l5cceh:
	call 08eabh		;5cce
	ld a,(bc)		;5cd1
	ld b,b			;5cd2
	ld e,b			;5cd3
	jp z,l6a54h		;5cd4
	cp 060h			;5cd7
	sub c			;5cd9
	jr z,l5cceh		;5cda
	ld a,(bc)		;5cdc
	nop			;5cdd
	ret nz			;5cde
	and e			;5cdf
	ld c,b			;5ce0
	push af			;5ce1
	pop af			;5ce2
	dec sp			;5ce3
	ld a,c			;5ce4
	ld a,l			;5ce5
	dec sp			;5ce6
	ld h,h			;5ce7
	adc a,c			;5ce8
	ld l,h			;5ce9
	ld d,b			;5cea
	xor 01ch		;5ceb
	inc b			;5ced
	jp z,l6bbch		;5cee
	ld (hl),l		;5cf1
	ld a,(08bbah)		;5cf2
	ld (hl),a		;5cf5
	ret nz			;5cf6
	ld l,b			;5cf7
	jp nz,06b14h		;5cf8
	ld bc,0e0cdh		;5cfb
	ld l,e			;5cfe
	ld (l6c1ah),a		;5cff
	ld a,b			;5d02
	xor e			;5d03
	sub e			;5d04
	ld l,h			;5d05
	add hl,bc		;5d06
	ld e,b			;5d07
	jr c,$+11		;5d08
	ld (hl),0e1h		;5d0a
	add hl,bc		;5d0c
	ld b,a			;5d0d
	add hl,bc		;5d0e
	adc a,(hl)		;5d0f
	ld b,l			;5d10
	add hl,bc		;5d11
	jr l5d6ah		;5d12
	add hl,bc		;5d14
	ld d,h			;5d15
	pop hl			;5d16
	add hl,bc		;5d17
	ld h,l			;5d18
	add hl,bc		;5d19
	adc a,(hl)		;5d1a
	ld h,e			;5d1b
	add hl,bc		;5d1c
	jr l5d93h		;5d1d
	add hl,bc		;5d1f
	ld (hl),d		;5d20
	pop hl			;5d21
	add hl,bc		;5d22
	add a,e			;5d23
	add hl,bc		;5d24
	add a,e			;5d25
	add a,c			;5d26
	ld l,h			;5d27
	ld hl,0313eh		;5d28
	add a,c			;5d2b
	inc de			;5d2c
	ld e,098h		;5d2d
	or c			;5d2f
	inc b			;5d30
	ld a,(0071ah)		;5d31
	xor c			;5d34
	ld a,(de)		;5d35
	dec d			;5d36
	daa			;5d37
	dec d			;5d38
	jp 00d2dh		;5d39
	ld d,e			;5d3c
	dec l			;5d3d
	dec c			;5d3e
	ld (hl),00dh		;5d3f
	add a,(hl)		;5d41
	inc a			;5d42
	dec c			;5d43
	add a,004h		;5d44
	ld a,(00738h)		;5d46
	and a			;5d49
	jr c,l5d61h		;5d4a
	ld b,l			;5d4c
	dec d			;5d4d
	dec c			;5d4e
	ld c,e			;5d4f
	dec c			;5d50
	ld c,l			;5d51
	ld c,e			;5d52
	dec d			;5d53
	ld b,a			;5d54
l5d55h:
	rlca			;5d55
	ld e,c			;5d56
	ld b,a			;5d57
	dec d			;5d58
	ld (hl),b		;5d59
	dec d			;5d5a
	adc a,l			;5d5b
	ld e,d			;5d5c
	dec c			;5d5d
	ld c,l			;5d5e
	ld e,d			;5d5f
	dec d			;5d60
l5d61h:
	ld d,(hl)		;5d61
	rlca			;5d62
	adc a,(hl)		;5d63
	inc b			;5d64
	ld hl,01563h		;5d65
	ld a,(de)		;5d68
	ld l,c			;5d69
l5d6ah:
	dec c			;5d6a
	ld l,c			;5d6b
	and d			;5d6c
	dec d			;5d6d
	adc a,(hl)		;5d6e
	call nz,06507h		;5d6f
	dec d			;5d72
	ld (hl),d		;5d73
l5d74h:
	pop hl			;5d74
	dec d			;5d75
	ld a,b			;5d76
	dec c			;5d77
	or c			;5d78
	inc b			;5d79
	ld a,(00774h)		;5d7a
	xor c			;5d7d
	ld (hl),h		;5d7e
	dec d			;5d7f
	add a,c			;5d80
	dec d			;5d81
	jp 00d87h		;5d82
	ld d,e			;5d85
	add a,a			;5d86
	dec d			;5d87
	add a,e			;5d88
	rlca			;5d89
	ld d,c			;5d8a
	add a,e			;5d8b
	rlca			;5d8c
	ld a,a			;5d8d
	ld l,d			;5d8e
	rst 20h			;5d8f
	inc h			;5d90
	inc bc			;5d91
	ret nz			;5d92
l5d93h:
	and (hl)		;5d93
	jp nz,03acch		;5d94
	add a,b			;5d97
	rrca			;5d98
	or b			;5d99
	inc bc			;5d9a
	jp pe,0c025h		;5d9b
	xor a			;5d9e
	or a			;5d9f
l5da0h:
	dec bc			;5da0
	ld a,068h		;5da1
	add a,a			;5da3
	ld h,e			;5da4
	adc a,0eah		;5da5
	inc de			;5da7
	inc bc			;5da8
	push hl			;5da9
	and d			;5daa
	nop			;5dab
	dec hl			;5dac
	ld e,c			;5dad
	add hl,de		;5dae
	ld e,(hl)		;5daf
	ld hl,l6232h		;5db0
	add hl,de		;5db3
	ld (hl),046h		;5db4
	inc hl			;5db6
	cp d			;5db7
	ld c,b			;5db8
	ld e,0fch		;5db9
	ld a,(bc)		;5dbb
	ld (de),a		;5dbc
	ld a,(l6bf9h)		;5dbd
	jp z,00351h		;5dc0
	ld a,0fah		;5dc3
	ld l,e			;5dc5
	ld b,094h		;5dc6
	cp a			;5dc8
	jp c,0bf49h		;5dc9
	sbc a,b			;5dcc
	dec c			;5dcd
	nop			;5dce
	ld (hl),b		;5dcf
	nop			;5dd0
	and b			;5dd1
	and l			;5dd2
	inc hl			;5dd3
	inc bc			;5dd4
	nop			;5dd5
	jr nz,l5d74h		;5dd6
	inc c			;5dd8
	and d			;5dd9
	ld b,(hl)		;5dda
	ret nc			;5ddb
	add a,d			;5ddc
	or e			;5ddd
	ld c,033h		;5dde
	djnz l5df0h		;5de0
	add a,l			;5de2
	ld d,c			;5de3
	ld h,b			;5de4
	dec e			;5de5
	adc a,a			;5de6
	jr nz,$+31		;5de7
	dec e			;5de9
	ld c,07ah		;5dea
	ld b,b			;5dec
	ld c,0bdh		;5ded
	ld h,b			;5def
l5df0h:
	ld c,05eh		;5df0
	add a,b			;5df2
	ld c,0afh		;5df3
	and b			;5df5
	ld c,057h		;5df6
	ret nz			;5df8
	ld c,08ah		;5df9
	ld bc,0cac4h		;5dfb
	cp a			;5dfe
	rra			;5dff
	ret nc			;5e00
	ex de,hl		;5e01
	inc bc			;5e02
	and h			;5e03
	ret nc			;5e04
	ld a,(08319h)		;5e05
l5e08h:
	cp e			;5e08
	ld b,d			;5e09
	jp (hl)			;5e0a
	ld l,h			;5e0b
	call c,08a3bh		;5e0c
	and (hl)		;5e0f
	and h			;5e10
	call pe,0f206h		;5e11
	sbc a,(hl)		;5e14
	or a			;5e15
	inc h			;5e16
	sub d			;5e17
	ret p			;5e18
	jp c,008c4h		;5e19
sub_5e1ch:
	jp nz,l6cbdh		;5e1c
	push hl			;5e1f
	and c			;5e20
	add hl,bc		;5e21
	jp z,l6cd1h		;5e22
	xor 083h		;5e25
	exx			;5e27
	ld (00838h),hl		;5e28
	ld a,(l6ce1h)		;5e2b
	ld sp,hl		;5e2e
	ld l,093h		;5e2f
	ld l,a			;5e31
	or a			;5e32
	inc a			;5e33
	jp 0c4deh		;5e34
	ld (hl),h		;5e37
	adc a,c			;5e38
	rlca			;5e39
	sbc a,l			;5e3a
	and 007h		;5e3b
	add a,06ch		;5e3d
sub_5e3fh:
	ld c,(hl)		;5e3f
	ld (bc),a		;5e40
	call p,0c36ch		;5e41
	xor 06dh		;5e44
	ret			;5e46
	call c,0db93h		;5e47
	xor a			;5e4a
	jp m,01b08h		;5e4b
	add a,e			;5e4e
	cp 0a1h			;5e4f
	inc bc			;5e51
	jp nz,l6dbah		;5e52
	ld b,a			;5e55
	ld b,(hl)		;5e56
	dec de			;5e57
	ld a,009h		;5e58
	dec bc			;5e5a
	ld (hl),d		;5e5b
	adc a,03ah		;5e5c
	ld bc,0e093h		;5e5e
	ret nc			;5e61
	sub e			;5e62
	ld l,h			;5e63
	ld l,h			;5e64
	add a,b			;5e65
	call 0e00eh		;5e66
	sub (hl)		;5e69
	daa			;5e6a
	ld l,l			;5e6b
	cp c			;5e6c
	cp b			;5e6d
	ld c,059h		;5e6e
	ld b,d			;5e70
	ld b,04fh		;5e71
	ld a,c			;5e73
	ld (08813h),a		;5e74
	ld e,(hl)		;5e77
	adc a,l			;5e78
	ld l,l			;5e79
	inc bc			;5e7a
	ld h,b			;5e7b
	ld l,l			;5e7c
	nop			;5e7d
	ld hl,l6f0fh		;5e7e
	ld de,l6e8fh		;5e81
l5e84h:
	ld bc,0d420h		;5e84
	jp 02100h		;5e87
sub_5e8ah:
	ld (hl),a		;5e8a
	ld l,(hl)		;5e8b
	ld de,07fd7h		;5e8c
	ld bc,0d515h		;5e8f
	ld a,(bc)		;5e92
	ld l,e			;5e93
	dec d			;5e94
	ld (hl),d		;5e95
	dec e			;5e96
	ld bc,0151eh		;5e97
	daa			;5e9a
	and a			;5e9b
	dec d			;5e9c
	jr l5e84h		;5e9d
	add hl,hl		;5e9f
	ld hl,00befh		;5ea0
	halt			;5ea3
	inc l			;5ea4
	ld e,a			;5ea5
	pop af			;5ea6
	inc l			;5ea7
	ld a,b			;5ea8
	ld c,l			;5ea9
	inc l			;5eaa
	cp h			;5eab
	ld e,a			;5eac
	inc l			;5ead
	sbc a,(hl)		;5eae
	rst 8			;5eaf
	inc l			;5eb0
	cpl			;5eb1
	ld b,a			;5eb2
	inc l			;5eb3
	rla			;5eb4
	cpl			;5eb5
	inc l			;5eb6
	adc a,e			;5eb7
	ld b,a			;5eb8
	inc l			;5eb9
	ret z			;5eba
	xor a			;5ebb
	ld l,(hl)		;5ebc
	ld (0e9cdh),hl		;5ebd
l5ec0h:
	sbc a,080h		;5ec0
	dec b			;5ec2
	ld b,010h		;5ec3
	ld a,(hl)		;5ec5
	and 0f0h		;5ec6
	ld c,a			;5ec8
	add a,a			;5ec9
	inc bc			;5eca
	rrca			;5ecb
	ld d,a			;5ecc
	ld a,c			;5ecd
	add a,a			;5ece
	nop			;5ecf
	jp z,l6dd5h		;5ed0
	add a,010h		;5ed3
	nop			;5ed5
	ld c,a			;5ed6
	ld a,d			;5ed7
	cp 007h			;5ed8
	jp z,l6dddh		;5eda
	inc a			;5edd
	rrca			;5ede
	ld d,a			;5edf
	ld a,d			;5ee0
	or c			;5ee1
	ld (hl),a		;5ee2
	call po,00bc9h		;5ee3
	jp pe,l440bh		;5ee6
	ex af,af'		;5ee9
	djnz $-38		;5eea
	ld sp,hl		;5eec
	ld a,e			;5eed
	ld de,06e02h		;5eee
l5ef1h:
	ld sp,hl		;5ef1
	ld c,c			;5ef2
	call po,0e147h		;5ef3
	ld a,d			;5ef6
	sub c			;5ef7
	ld c,d			;5ef8
	push bc			;5ef9
	ld a,(de)		;5efa
	ld c,e			;5efb
	jr nc,l5f45h		;5efc
	ld c,a			;5efe
	cp b			;5eff
	jp z,0240ch		;5f00
	ld l,(hl)		;5f03
	sub 010h		;5f04
	add hl,bc		;5f06
	dec bc			;5f07
	rrca			;5f08
	or b			;5f09
	ld (hl),a		;5f0a
	ld a,(de)		;5f0b
	inc b			;5f0c
	ex af,af'		;5f0d
	ld h,c			;5f0e
	ld (de),a		;5f0f
	ld (hl),06eh		;5f10
	dec a			;5f12
	dec de			;5f13
	xor b			;5f14
	or b			;5f15
	ld c,e			;5f16
	inc de			;5f17
	ld a,(de)		;5f18
	and l			;5f19
	ex af,af'		;5f1a
	rrca			;5f1b
	ld b,c			;5f1c
	rrca			;5f1d
	ld a,(bc)		;5f1e
	adc a,(hl)		;5f1f
	pop bc			;5f20
	sub h			;5f21
	rrca			;5f22
	ret			;5f23
	inc bc			;5f24
	jp po,00702h		;5f25
	dec b			;5f28
	nop			;5f29
	rlca			;5f2a
	or d			;5f2b
	add a,a			;5f2c
	dec b			;5f2d
	call 0c813h		;5f2e
	ld c,h			;5f31
	ret			;5f32
	inc b			;5f33
	ld l,l			;5f34
	inc b			;5f35
	dec b			;5f36
	nop			;5f37
	rla			;5f38
sub_5f39h:
	add a,l			;5f39
	ld b,005h		;5f3a
	nop			;5f3c
	ld c,031h		;5f3d
	inc bc			;5f3f
	sbc a,a			;5f40
	ld d,a			;5f41
	nop			;5f42
	ld b,016h		;5f43
l5f45h:
	ld a,(00517h)		;5f45
	sub a			;5f48
	ld (de),a		;5f49
	inc b			;5f4a
	inc c			;5f4b
	ret m			;5f4c
	add hl,de		;5f4d
	ld de,05b05h		;5f4e
	nop			;5f51
	ld e,000h		;5f52
	and b			;5f54
	ld (hl),b		;5f55
	dec b			;5f56
	ld (hl),b		;5f57
	inc bc			;5f58
sub_5f59h:
	ld d,b			;5f59
	call nz,0bac8h		;5f5a
	ld (00010h),a		;5f5d
	nop			;5f60
	rla			;5f61
	ld bc,00777h		;5f62
	inc sp			;5f65
l5f66h:
	inc bc			;5f66
	ld b,l			;5f67
	dec d			;5f68
	inc b			;5f69
	ld (hl),b		;5f6a
	rlca			;5f6b
	sub h			;5f6c
	ld a,(hl)		;5f6d
	nop			;5f6e
	rrca			;5f6f
	ccf			;5f70
l5f71h:
	sbc a,065h		;5f71
	ld (hl),005h		;5f73
	ld d,h			;5f75
	sub 00ah		;5f76
	ld (bc),a		;5f78
	jr nz,l5f7dh		;5f79
	ld b,b			;5f7b
	ret nz			;5f7c
l5f7dh:
	cp (hl)			;5f7d
	rra			;5f7e
	ld b,b			;5f7f
	ld d,d			;5f80
	inc bc			;5f81
	ld b,d			;5f82
	ld (bc),a		;5f83
	dec a			;5f84
	jr nc,l5f88h		;5f85
	rst 18h			;5f87
l5f88h:
	rrca			;5f88
	inc bc			;5f89
	ld (08b1fh),hl		;5f8a
	ld d,a			;5f8d
	ld (hl),a		;5f8e
	inc de			;5f8f
	ld e,a			;5f90
	sbc a,(hl)		;5f91
	ld h,c			;5f92
	ld (hl),a		;5f93
	dec b			;5f94
	ld l,l			;5f95
	sbc a,l			;5f96
l5f97h:
	ld d,l			;5f97
	sbc a,011h		;5f98
	ld e,l			;5f9a
	ld a,c			;5f9b
	ld e,a			;5f9c
	sbc a,005h		;5f9d
	ld l,e			;5f9f
	ld (hl),a		;5fa0
	ld d,e			;5fa1
	ld de,05b79h		;5fa2
	rst 20h			;5fa5
	ld e,l			;5fa6
	dec b			;5fa7
	ld a,c			;5fa8
	ld l,c			;5fa9
	ei			;5faa
	ld e,c			;5fab
	ld (hl),h		;5fac
	nop			;5fad
	rst 38h			;5fae
	ret nz			;5faf
	ret nc			;5fb0
	rst 8			;5fb1
	push hl			;5fb2
	adc a,b			;5fb3
	xor h			;5fb4
	and e			;5fb5
	sbc a,h			;5fb6
	in a,(026h)		;5fb7
	ld l,a			;5fb9
	dec a			;5fba
	out (0c6h),a		;5fbb
l5fbdh:
	inc bc			;5fbd
	rst 30h			;5fbe
	inc bc			;5fbf
	ld b,l			;5fc0
	sub a			;5fc1
	inc bc			;5fc2
	ld sp,00311h		;5fc3
	ld e,003h		;5fc6
	add a,b			;5fc8
	dec hl			;5fc9
	ld (hl),b		;5fca
	ld b,04eh		;5fcb
	ld c,000h		;5fcd
	ld hl,(02216h)		;5fcf
	ld e,0d5h		;5fd2
	ld a,093h		;5fd4
	jp 03540h		;5fd6
l5fd9h:
	inc c			;5fd9
	inc h			;5fda
	ld c,024h		;5fdb
	ld d,00fh		;5fdd
	dec c			;5fdf
	ld e,034h		;5fe0
	ld a,083h		;5fe2
	inc c			;5fe4
	nop			;5fe5
	ld e,00eh		;5fe6
	jr nc,l6000h		;5fe8
	ld sp,hl		;5fea
	ld e,036h		;5feb
	ld a,072h		;5fed
	ld a,e			;5fef
	add hl,de		;5ff0
	inc a			;5ff1
	inc bc			;5ff2
	ld d,0e0h		;5ff3
	ld e,032h		;5ff5
	ld a,08bh		;5ff7
	add hl,de		;5ff9
	sbc a,l			;5ffa
	inc sp			;5ffb
	ld (hl),d		;5ffc
	dec hl			;5ffd
	ld h,048h		;5ffe
l6000h:
	ret			;6000
	inc c			;6001
	inc sp			;6002
l6003h:
	call z,0cd40h		;6003
	ld c,l			;6006
	inc sp			;6007
	and e			;6008
	jp z,l733eh		;6009
	add hl,de		;600c
	sbc a,l			;600d
	inc sp			;600e
	inc de			;600f
	adc a,03eh		;6010
	sbc a,e			;6012
	call p,0233dh		;6013
	adc a,(hl)		;6016
	ld sp,01db1h		;6017
	ld b,a			;601a
	sbc a,b			;601b
	ld bc,08071h		;601c
	add a,e			;601f
	ld (06fadh),a		;6020
	xor b			;6023
	ret nc			;6024
	ld (hl),c		;6025
	add a,d			;6026
	ld (0e407h),a		;6027
	adc a,b			;602a
	ld bc,l6fabh		;602b
	xor h			;602e
	and (hl)		;602f
	dec de			;6030
	ld l,(hl)		;6031
	cp c			;6032
	ld bc,0c149h		;6033
	ld hl,0c280h		;6036
	ld de,084b0h		;6039
	jp (hl)			;603c
	ret nz			;603d
	ld a,(hl)		;603e
	or a			;603f
	jp z,l706dh		;6040
	ld bc,01019h		;6043
	ret m			;6046
	ret			;6047
	call sub_5e8ah		;6048
	jr l5fd9h		;604b
	ld b,09ah		;604d
	cp l			;604f
	ex de,hl		;6050
	jr nz,l6057h		;6051
	djnz l6087h		;6053
	rlca			;6055
	pop bc			;6056
l6057h:
	ret nz			;6057
	jp (hl)			;6058
	ld a,0ffh		;6059
	ret nz			;605b
	add hl,hl		;605c
	ld a,0c9h		;605d
	ld (0b88eh),a		;605f
	or 0aah			;6062
	ld l,a			;6064
	adc a,b			;6065
	jr z,l6088h		;6066
	ld a,d			;6068
	push bc			;6069
	adc a,b			;606a
	rst 18h			;606b
	ld a,c			;606c
	inc bc			;606d
	and b			;606e
	ld (hl),c		;606f
	ld b,(hl)		;6070
	ret			;6071
	pop af			;6072
	ld l,l			;6073
	ld bc,0fb00h		;6074
	dec de			;6077
	dec b			;6078
	sub 013h		;6079
	ld sp,hl		;607b
	ld b,0f7h		;607c
	jr l6087h		;607e
	rst 0			;6080
	ld l,097h		;6081
	add hl,bc		;6083
	ccf			;6084
l6085h:
	cp e			;6085
	ld l,(hl)		;6086
l6087h:
	daa			;6087
l6088h:
	dec bc			;6088
	pop af			;6089
	add hl,bc		;608a
	rlca			;608b
	rst 8			;608c
	rrca			;608d
	inc a			;608e
	ld b,c			;608f
	ld (hl),e		;6090
	dec c			;6091
	dec bc			;6092
	sbc a,h			;6093
	add hl,bc		;6094
	ld l,l			;6095
	inc de			;6096
	inc bc			;6097
	dec b			;6098
	rst 18h			;6099
	ld bc,00085h		;609a
l609dh:
	rra			;609d
	cp l			;609e
	dec b			;609f
	ld (hl),c		;60a0
	dec h			;60a1
sub_60a2h:
	ld b,0e5h		;60a2
	jr l6085h		;60a4
	rlca			;60a6
	ld e,02eh		;60a7
	ld e,h			;60a9
l60aah:
	add hl,bc		;60aa
	di			;60ab
	ld c,(hl)		;60ac
	dec bc			;60ad
	cp l			;60ae
	ld d,d			;60af
	di			;60b0
	ld l,h			;60b1
	ld l,(hl)		;60b2
	push hl			;60b3
	add a,h			;60b4
	ld e,051h		;60b5
	sub b			;60b7
	rst 8			;60b8
	dec b			;60b9
	ld (hl),c		;60ba
	cp d			;60bb
	ret z			;60bc
	nop			;60bd
	call 00ed8h		;60be
	ld a,b			;60c1
	call 071ddh		;60c2
	push af			;60c5
	inc b			;60c6
	ld (hl),e		;60c7
	or a			;60c8
	ret nz			;60c9
	ex (sp),hl		;60ca
	and c			;60cb
	sub 024h		;60cc
	pop af			;60ce
	jr nz,$+3		;60cf
	jp nz,l4ab8h		;60d1
	ret c			;60d4
	or 013h			;60d5
	sub 028h		;60d7
	ld a,(bc)		;60d9
	nop			;60da
	ld a,(bc)		;60db
	sub a			;60dc
	add a,00ah		;60dd
	ld a,(010b1h)		;60df
	rst 8			;60e2
	jp 03e25h		;60e3
	ld c,b			;60e6
	ld (00694h),a		;60e7
	ret			;60ea
	or c			;60eb
	ret z			;60ec
	ld a,(l71dbh)		;60ed
	sub b			;60f0
	pop de			;60f1
	di			;60f2
	ld (hl),c		;60f3
	cp d			;60f4
	call pe,0d007h		;60f5
	or a			;60f8
	ld (de),a		;60f9
	ld hl,01506h		;60fa
	ld a,e			;60fd
	ld a,000h		;60fe
l6100h:
	jp z,0a389h		;6100
	call c,02011h		;6103
	inc bc			;6106
	jp nz,l720eh		;6107
	ld a,(02c23h)		;610a
	ld (hl),e		;610d
	rra			;610e
	ld h,a			;610f
	ld (hl),h		;6110
	or 037h			;6111
	dec c			;6113
	ld bc,008c3h		;6114
	ld (hl),h		;6117
	ld a,(01020h)		;6118
	inc de			;611b
	call nz,017ech		;611c
	inc hl			;611f
	ld b,013h		;6120
	or (hl)			;6122
	ld b,026h		;6123
	ld b,013h		;6125
	add a,b			;6127
	ld b,029h		;6128
	ld b,00ch		;612a
	dec hl			;612c
	ld (hl),d		;612d
	cp h			;612e
	ld (de),a		;612f
	dec hl			;6130
	rlca			;6131
	ret z			;6132
	add a,h			;6133
	inc (hl)		;6134
	jr l6169h		;6135
	ld b,l			;6137
	rst 10h			;6138
	sub c			;6139
	add a,c			;613a
	jr l6145h		;613b
	ld (bc),a		;613d
	ld (l71d8h),a		;613e
	call 073bah		;6141
	ld (hl),a		;6144
l6145h:
	jr z,l6171h		;6145
	ld (hl),e		;6147
	ld d,b			;6148
	inc bc			;6149
	jp nz,l615eh		;614a
	ld (hl),d		;614d
	rst 8			;614e
	dec hl			;614f
	ld c,021h		;6150
	adc a,d			;6152
	ld (hl),e		;6153
	xor e			;6154
	jp 09921h		;6155
	dec b			;6158
	ld c,h			;6159
	ld a,002h		;615a
l615ch:
	ld a,d			;615c
	sbc a,(hl)		;615d
l615eh:
	jp p,00453h		;615e
	jp p,007a9h		;6161
sub_6164h:
	jp p,0cdc1h		;6164
	ld l,h			;6167
	dec b			;6168
l6169h:
	adc a,h			;6169
	ld a,(de)		;616a
	xor b			;616b
	ld b,l			;616c
	ld (hl),e		;616d
	adc a,h			;616e
	sub (hl)		;616f
	cp d			;6170
l6171h:
	jr z,l615ch		;6171
	ld d,h			;6173
	djnz $+86		;6174
	ret			;6176
	add a,00ch		;6177
	ld d,h			;6179
	in a,(027h)		;617a
	ld d,h			;617c
	inc e			;617d
	daa			;617e
sub_617fh:
	ld d,h			;617f
sub_6180h:
	and a			;6180
	ld h,054h		;6181
	ld l,h			;6183
	ld d,h			;6184
	dec c			;6185
	ld a,e			;6186
	dec b			;6187
	ld b,a			;6188
	jp 03a12h		;6189
	dec h			;618c
	dec (hl)		;618d
	xor c			;618e
	sub 01ch		;618f
	dec (hl)		;6191
	in a,(024h)		;6192
	dec (hl)		;6194
	inc e			;6195
	inc h			;6196
l6197h:
	dec (hl)		;6197
	and a			;6198
	inc hl			;6199
	dec (hl)		;619a
	ld c,(hl)		;619b
	dec (hl)		;619c
	ld c,05dh		;619d
	dec (hl)		;619f
	call c,03522h		;61a0
	rst 0			;61a3
	cp (hl)			;61a4
	cp e			;61a5
	ld hl,01c33h		;61a6
	ld hl,0a733h		;61a9
	jr nz,$+53		;61ac
	jr nc,l61e3h		;61ae
	ld c,03fh		;61b0
	inc sp			;61b2
	or c			;61b3
	sbc a,0dch		;61b4
	ld a,b			;61b6
	nop			;61b7
	ld bc,003a8h		;61b8
	cp b			;61bb
	nop			;61bc
	adc a,h			;61bd
	nop			;61be
	ex af,af'		;61bf
	ld bc,0ae9dh		;61c0
	sbc a,d			;61c3
	ld c,0c8h		;61c4
	sbc a,l			;61c6
	ld c,001h		;61c7
	ld c,030h		;61c9
	ld l,b			;61cb
	ld c,0a4h		;61cc
	nop			;61ce
	ld (hl),a		;61cf
	ld a,h			;61d0
sub_61d1h:
	dec e			;61d1
	ld c,0abh		;61d2
	or h			;61d4
	ld c,01dh		;61d5
	or a			;61d7
	ld (hl),b		;61d8
	dec e			;61d9
	ld c,09ch		;61da
	dec e			;61dc
	push af			;61dd
	ld c,0b4h		;61de
	ld c,076h		;61e0
	dec e			;61e2
l61e3h:
	ld h,b			;61e3
	rst 0			;61e4
	ld c,0a1h		;61e5
	ld e,c			;61e7
	adc a,(hl)		;61e8
	ld c,0bch		;61e9
	or c			;61eb
	ld e,c			;61ec
	ld (hl),c		;61ed
	call nz,00002h		;61ee
	ld h,(hl)		;61f1
	ld b,076h		;61f2
	ld bc,0073ah		;61f4
	ld (hl),a		;61f7
	ld bc,0212ch		;61f8
	ld de,0d0ddh		;61fb
	jp p,00806h		;61fe
	ld b,h			;6201
sub_6202h:
	ld a,(0becdh)		;6202
	dec de			;6205
	jp nc,073f8h		;6206
	push af			;6209
	djnz $-64		;620a
	jp c,02b05h		;620c
	ld a,(0c4d8h)		;620f
	dec c			;6212
	ld sp,hl		;6213
	dec c			;6214
	ld c,0a0h		;6215
	dec c			;6217
	dec b			;6218
	ld a,b			;6219
	dec a			;621a
	jp nz,003f1h		;621b
	ld (hl),e		;621e
	ld a,(0c142h)		;621f
l6222h:
	cp 002h			;6222
	rlca			;6224
	daa			;6225
	add a,(hl)		;6226
	nop			;6227
	ld b,h			;6228
	pop bc			;6229
	scf			;622a
	ret			;622b
	ld (hl),000h		;622c
	ld de,03623h		;622e
	push af			;6231
l6232h:
	ld b,02bh		;6232
	ld a,b			;6234
	inc d			;6235
	add a,b			;6236
	inc b			;6237
	ld (hl),h		;6238
	ld hl,0c235h		;6239
	xor (hl)		;623c
	scf			;623d
	sbc a,d			;623e
	ld (0c9bbh),hl		;623f
	jp m,08ba2h		;6242
	or 074h			;6245
	jp z,08923h		;6247
	inc de			;624a
	bit 6,h			;624b
	add a,c			;624d
	ld d,(hl)		;624e
	jp c,0d205h		;624f
	ld d,0e9h		;6252
	ld c,(hl)		;6254
	rst 38h			;6255
	sub e			;6256
	jp z,0163ah		;6257
	jp (hl)			;625a
	ld d,087h		;625b
	ret m			;625d
	ld d,034h		;625e
	adc a,e			;6260
	ld d,d			;6261
	sbc a,l			;6262
	sub c			;6263
	jp z,01651h		;6264
	rlca			;6267
	ld (hl),l		;6268
	ld d,0adh		;6269
	ld d,005h		;626b
	and (hl)		;626d
	ld d,0cdh		;626e
	and l			;6270
	jp nz,0c81ch		;6271
	ld hl,01425h		;6274
	add hl,sp		;6277
	inc (hl)		;6278
	inc d			;6279
	sub c			;627a
	or 0c9h			;627b
	ld a,h			;627d
	sbc a,l			;627e
	ld e,a			;627f
	daa			;6280
	add a,h			;6281
	ld sp,01c43h		;6282
	dec c			;6285
	ld d,d			;6286
	dec b			;6287
	adc a,017h		;6288
	ld h,b			;628a
	sub e			;628b
	sbc a,h			;628c
	rla			;628d
	ld h,c			;628e
	rla			;628f
	add a,a			;6290
	ld (hl),b		;6291
	rla			;6292
	ld e,l			;6293
	ld h,c			;6294
	daa			;6295
	or h			;6296
	rla			;6297
	ld a,a			;6298
	rla			;6299
	ld c,08eh		;629a
	rla			;629c
	cp e			;629d
	ld h,d			;629e
	ld (hl),b		;629f
	sbc a,l			;62a0
	dec d			;62a1
	xor h			;62a2
	ex de,hl		;62a3
	dec d			;62a4
	ld h,e			;62a5
	inc b			;62a6
	dec h			;62a7
	nop			;62a8
	inc e			;62a9
	call m,0ecb9h		;62aa
	ld c,0fch		;62ad
	cp c			;62af
	ld a,b			;62b0
	call nc,0972ch		;62b1
	sbc a,03dh		;62b4
	ld c,097h		;62b6
	sbc a,029h		;62b8
	inc l			;62ba
	inc a			;62bb
	sbc a,d			;62bc
	ld a,07bh		;62bd
	ld c,09ah		;62bf
	ld a,04ch		;62c1
	jr c,l62f1h		;62c3
	sbc a,a			;62c5
	call p,00e2dh		;62c6
	sbc a,a			;62c9
	call p,0a044h		;62ca
	call p,0bcfah		;62cd
	and b			;62d0
	ld (hl),a		;62d1
	and 0c7h		;62d2
	ld c,a			;62d4
	and b			;62d5
	sub 0abh		;62d6
	and b			;62d8
	ld (hl),a		;62d9
	call 03b70h		;62da
	push bc			;62dd
	sub d			;62de
	add hl,sp		;62df
	ld l,a			;62e0
	dec sp			;62e1
	ld (hl),a		;62e2
	add a,e			;62e3
	ld a,b			;62e4
	ld c,029h		;62e5
	call pe,0a0d1h		;62e7
	ld (hl),a		;62ea
	rst 20h			;62eb
	ld (ix+075h),b		;62ec
	ld b,03fh		;62ef
l62f1h:
	pop de			;62f1
	xor c			;62f2
	call z,03805h		;62f3
	rra			;62f6
	dec b			;62f7
	inc b			;62f8
	ld bc,03278h		;62f9
	call nc,08a78h		;62fc
	and c			;62ff
	push de			;6300
	ld a,b			;6301
	call 00439h		;6302
	adc a,l			;6305
	nop			;6306
	jr nz,$+75		;6307
	ld b,(hl)		;6309
	ld a,(de)		;630a
	defb 0edh ;next byte illegal after ed	;630b
	dec b			;630c
	jr z,$+7		;630d
	jp nz,02014h		;630f
	ld sp,l76e2h		;6312
	jr nz,$-96		;6315
	in a,(0a3h)		;6317
	xor a			;6319
	inc b			;631a
	ld a,l			;631b
	jp z,074efh		;631c
	rst 38h			;631f
	nop			;6320
	nop			;6321
	push hl			;6322
	dec b			;6323
	cp 0beh			;6324
	xor h			;6326
	ld (hl),e		;6327
	dec b			;6328
	inc bc			;6329
	sbc a,h			;632a
	ld bc,0ff9dh		;632b
l632eh:
	ret nc			;632e
	sub h			;632f
	ld h,0fch		;6330
	ld e,d			;6332
l6333h:
	inc bc			;6333
	ex (sp),hl		;6334
	ret po			;6335
	ld d,h			;6336
	halt			;6337
	ld de,0978ah		;6338
	res 0,l			;633b
	push af			;633d
	jp po,0010dh		;633e
	push hl			;6341
	jp p,0155eh		;6342
	jp p,0ed5ah		;6345
	inc bc			;6348
	cp 064h			;6349
	jp c,07693h		;634b
	ret pe			;634e
	djnz l6354h		;634f
	jp z,08122h		;6351
l6354h:
	halt			;6354
	adc a,h			;6355
	ld c,08ah		;6356
	halt			;6358
	ld c,000h		;6359
	jp z,0c352h		;635b
	or (hl)			;635e
	ex af,af'		;635f
	ld b,006h		;6360
	ld d,0d4h		;6362
	ld e,0d8h		;6364
	ex af,af'		;6366
	add a,e			;6367
	inc c			;6368
	ld d,0c8h		;6369
	ld e,0ech		;636b
	ex af,af'		;636d
	jr c,l6395h		;636e
l6370h:
	ld h,d			;6370
	and a			;6371
	dec h			;6372
	or b			;6373
	inc de			;6374
	halt			;6375
	ld e,0a4h		;6376
	ex de,hl		;6378
	inc e			;6379
	jr l63a1h		;637a
	ld a,(de)		;637c
	jr z,l6387h		;637d
	ld (de),a		;637f
	rst 0			;6380
	dec h			;6381
	inc d			;6382
	call m,00038h		;6383
	add a,e			;6386
l6387h:
	inc hl			;6387
	ld (hl),a		;6388
	add a,b			;6389
	ld (l7642h),a		;638a
	push hl			;638d
	cp 08eh			;638e
	add hl,bc		;6390
	ld (080f4h),a		;6391
	adc a,(hl)		;6394
l6395h:
	ld b,b			;6395
	halt			;6396
	add a,b			;6397
	jp p,0efe4h		;6398
	ld l,d			;639b
	ret			;639c
	add a,(hl)		;639d
	or l			;639e
	sbc a,(hl)		;639f
	add a,(hl)		;63a0
l63a1h:
	inc c			;63a1
	call c,0e675h		;63a2
	rst 18h			;63a5
	or c			;63a6
	add hl,de		;63a7
	ld (hl),l		;63a8
	rst 0			;63a9
l63aah:
	ld a,(de)		;63aa
	sbc a,h			;63ab
	jp 089cch		;63ac
	ex (sp),hl		;63af
	ld h,b			;63b0
	ld (01603h),a		;63b1
	call z,0d2e4h		;63b4
	add hl,hl		;63b7
	nop			;63b8
	rst 8			;63b9
	ld b,d			;63ba
	jp nz,0770ch		;63bb
	inc b			;63be
	sbc a,a			;63bf
	or h			;63c0
	jp nz,0c614h		;63c1
	rlca			;63c4
	ld h,007h		;63c5
	ld sp,0071ch		;63c7
	add hl,hl		;63ca
	rlca			;63cb
	adc a,d			;63cc
	inc h			;63cd
	rlca			;63ce
	or (hl)			;63cf
	ld b,d			;63d0
	ld l,073h		;63d1
	xor l			;63d3
	ret nz			;63d4
	jp z,07799h		;63d5
	cp 012h			;63d8
	inc b			;63da
	jp z,0046ch		;63db
	inc bc			;63de
	inc a			;63df
	ld h,l			;63e0
	cpl			;63e1
	jr l63f2h		;63e2
	rst 18h			;63e4
	jr z,l6423h		;63e5
	ret			;63e7
	rst 18h			;63e8
	ld (hl),l		;63e9
	cp a			;63ea
	adc a,b			;63eb
	add a,062h		;63ec
	inc d			;63ee
	ret nz			;63ef
	ld h,d			;63f0
	ei			;63f1
l63f2h:
	ld h,l			;63f2
	rlca			;63f3
	inc b			;63f4
	adc a,(hl)		;63f5
	xor c			;63f6
	rlca			;63f7
	sub (hl)		;63f8
	inc b			;63f9
	pop bc			;63fa
	ld h,(hl)		;63fb
	rlca			;63fc
	dec l			;63fd
	daa			;63fe
	ret m			;63ff
	ld h,l			;6400
	cpl			;6401
	jp l782eh		;6402
	jr nc,l6434h		;6405
	ld (hl),096h		;6407
	ld (hl),a		;6409
	nop			;640a
	call 00500h		;640b
	ld a,005h		;640e
	call 0050fh		;6410
	sub (hl)		;6413
l6414h:
	and h			;6414
	ld d,d			;6415
	cp 0a4h			;6416
	xor c			;6418
	ex af,af'		;6419
	and h			;641a
	ld c,h			;641b
	ld c,084h		;641c
	rra			;641e
	ld (l650bh),a		;641f
	sbc a,d			;6422
l6423h:
	pop bc			;6423
	inc c			;6424
	ld h,l			;6425
	jp l5cafh+1		;6426
	ld b,(hl)		;6429
	or h			;642a
	call po,0b106h		;642b
	pop de			;642e
	rst 20h			;642f
	ld bc,l76e1h		;6430
	inc a			;6433
l6434h:
	cp b			;6434
	jp nz,038b0h		;6435
	dec d			;6438
	ld b,e			;6439
	halt			;643a
	inc e			;643b
	dec bc			;643c
	rst 28h			;643d
	inc l			;643e
	dec c			;643f
	push bc			;6440
	push hl			;6441
	ld a,(hl)		;6442
	sub h			;6443
	add a,d			;6444
	ret z			;6445
	ld (hl),a		;6446
	pop hl			;6447
	pop bc			;6448
	di			;6449
	ld e,b			;644a
	ex af,af'		;644b
	pop af			;644c
	ret			;644d
	ld de,00604h		;644e
	ld a,(hl)		;6451
	ld (0ba13h),a		;6452
	ld a,b			;6455
	inc hl			;6456
	inc b			;6457
	cp c			;6458
	inc b			;6459
	ld b,b			;645a
	or a			;645b
	ld a,b			;645c
	exx			;645d
	ld hl,l78b3h		;645e
	or h			;6461
	sbc a,e			;6462
	ld sp,0afd9h		;6463
	and l			;6466
	nop			;6467
	sbc hl,de		;6468
	ld d,000h		;646a
	ld e,(hl)		;646c
	push hl			;646d
	nop			;646e
	ld hl,l761ch		;646f
	add hl,de		;6472
	ex de,hl		;6473
	pop hl			;6474
	push hl			;6475
	push de			;6476
	jr nc,l648ah		;6477
	ld b,02bh		;6479
	add a,002h		;647b
	inc d			;647d
	cp 006h			;647e
	jp nz,000b2h		;6480
	xor a			;6483
	ld (hl),a		;6484
	ld e,a			;6485
	pop hl			;6486
	add hl,de		;6487
	ld b,(hl)		;6488
	inc hl			;6489
l648ah:
	ld (0e14eh),hl		;648a
	inc sp			;648d
	add a,b			;648e
	ld (hl),a		;648f
	inc bc			;6490
	jr nz,l6414h		;6491
	ld (hl),a		;6493
	ld l,h			;6494
	di			;6495
	and 020h		;6496
	jp z,01b52h		;6498
	ret z			;649b
	and h			;649c
sub_649dh:
	xor e			;649d
	ld c,b			;649e
	ld (hl),a		;649f
	rst 20h			;64a0
	xor b			;64a1
	dec hl			;64a2
	dec hl			;64a3
	push hl			;64a4
	sub c			;64a5
	inc e			;64a6
	and 0a8h		;64a7
	add hl,bc		;64a9
	xor d			;64aa
	ld a,b			;64ab
	ld c,0feh		;64ac
	add a,(hl)		;64ae
	djnz $-36		;64af
	ld a,(001bah)		;64b1
	and 0dah		;64b4
	ld b,d			;64b6
	ld a,b			;64b7
	dec d			;64b8
	ld h,d			;64b9
	jp z,0230bh		;64ba
	ld c,001h		;64bd
	inc bc			;64bf
l64c0h:
	dec h			;64c0
	nop			;64c1
	pop af			;64c2
	pop bc			;64c3
	add a,008h		;64c4
	and 00fh		;64c6
	ld l,(hl)		;64c8
	ld b,a			;64c9
	ld b,l			;64ca
	jr z,l64eeh		;64cb
	xor b			;64cd
	ld hl,0d214h		;64ce
	ld h,(hl)		;64d1
	ld hl,0229ch		;64d2
	ld (hl),h		;64d5
	inc hl			;64d6
	ld a,c			;64d7
	sub h			;64d8
	call p,0e6e0h		;64d9
	add a,012h		;64dc
	ret z			;64de
	sbc a,b			;64df
	sbc a,l			;64e0
	ld a,b			;64e1
	ld (00ed6h),a		;64e2
l64e5h:
	and h			;64e5
	ld d,e			;64e6
	sbc a,l			;64e7
	rra			;64e8
	call nz,0b9c7h		;64e9
	ld b,e			;64ec
	add a,b			;64ed
l64eeh:
	add a,00ah		;64ee
	inc d			;64f0
	rst 0			;64f1
	call nz,0c2b5h		;64f2
	ld b,077h		;64f5
	add a,004h		;64f7
	ld hl,0c1a4h		;64f9
	ld l,d			;64fc
	ret			;64fd
	or e			;64fe
	ret nz			;64ff
	or b			;6500
	inc bc			;6501
l6502h:
	ld h,h			;6502
	nop			;6503
	sbc a,c			;6504
	ld bc,0010ch		;6505
	nop			;6508
	dec hl			;6509
	sbc a,b			;650a
l650bh:
	sbc a,d			;650b
l650ch:
	ld a,e			;650c
l650dh:
	ld c,02ah		;650d
	sbc a,c			;650f
	ld bc,0ea54h		;6510
	and h			;6513
	xor b			;6514
	ld c,(hl)		;6515
	cp e			;6516
	defb 0ddh,06ch ;ld ixl,ixh	;6517
	sub 078h		;6519
	sbc a,h			;651b
	ret po			;651c
	ld c,l			;651d
	sub 0e0h		;651e
	jp m,l53dch		;6520
	inc c			;6523
	rst 18h			;6524
	ld b,l			;6525
	inc bc			;6526
	call z,050c2h		;6527
	push af			;652a
	ld hl,(0acffh)		;652b
	ld b,09bh		;652e
	sub c			;6530
	ld l,e			;6531
	sub 014h		;6532
	and b			;6534
	ld (06e04h),a		;6535
	ld c,035h		;6538
	nop			;653a
	call nz,sub_6faeh	;653b
	ld a,(l7080h)		;653e
	inc a			;6541
	inc b			;6542
	cp 00ah			;6543
	jp nz,l7909h		;6545
	ret c			;6548
	sub l			;6549
	add hl,bc		;654a
	sbc a,c			;654b
	dec (hl)		;654c
	ex de,hl		;654d
	call pe,09b0eh		;654e
	ld (hl),b		;6551
	add a,0bbh		;6552
	and e			;6554
	inc b			;6555
	jp nz,01932h		;6556
	cpl			;6559
	ld b,0a1h		;655a
	ld h,b			;655c
	cpl			;655d
	ld a,c			;655e
	ld b,03eh		;655f
	rst 38h			;6561
	ld (l719fh),a		;6562
	ld a,(de)		;6565
	dec d			;6566
	ld e,a			;6567
	ld d,0f4h		;6568
	ld (de),a		;656a
	sbc a,h			;656b
	ld (hl),b		;656c
	or (hl)			;656d
	ld hl,(00d3ah)		;656e
	and l			;6571
	add a,c			;6572
	ld c,b			;6573
	ld a,c			;6574
	ld a,b			;6575
	neg			;6576
	ld e,d			;6578
	ld b,h			;6579
	jp z,05590h		;657a
	ld (09203h),a		;657d
	sub l			;6580
	adc a,a			;6581
	ld d,d			;6582
	inc bc			;6583
	add a,(hl)		;6584
	ld (089feh),hl		;6585
	ld bc,l7963h		;6588
	cp 0ffh			;658b
	jp z,079a1h		;658d
	ld d,l			;6590
	sbc a,(hl)		;6591
sub_6592h:
	rst 28h			;6592
	sub h			;6593
	inc bc			;6594
	and e			;6595
	and d			;6596
	inc a			;6597
	and d			;6598
	ld b,h			;6599
	ld (0fe05h),a		;659a
	ld (de),a		;659d
	ex af,af'		;659e
	jp z,01a92h		;659f
	rlca			;65a2
	ld h,e			;65a3
	sub l			;65a4
	jp (hl)			;65a5
	and a			;65a6
	dec b			;65a7
	djnz l65e7h		;65a8
	ld d,019h		;65aa
	ld h,0cdh		;65ac
	ld b,l			;65ae
	inc bc			;65af
	ld l,06bh		;65b0
	ld d,0c8h		;65b2
	dec b			;65b4
	add hl,bc		;65b5
	xor 020h		;65b6
	call pe,0f38eh		;65b8
	ret			;65bb
	ld d,0bch		;65bc
	ld h,022h		;65be
	jr c,$-52		;65c0
	ret nc			;65c2
	dec a			;65c3
	ld a,(0c008h)		;65c4
	ld h,0efh		;65c7
	ld d,h			;65c9
	ld h,h			;65ca
	and a			;65cb
	ret			;65cc
	ld d,h			;65cd
	ld e,(hl)		;65ce
	dec a			;65cf
	dec bc			;65d0
	or 030h			;65d1
	ld c,008h		;65d3
	jp p,0d2c1h		;65d5
	and a			;65d8
	ret nc			;65d9
	ld (de),a		;65da
	push af			;65db
	ld h,057h		;65dc
	add hl,bc		;65de
	dec d			;65df
	jp z,079fdh		;65e0
	cp c			;65e3
	rst 10h			;65e4
	sbc a,(hl)		;65e5
	ret po			;65e6
l65e7h:
	xor d			;65e7
	ld l,a			;65e8
	ld de,02c05h		;65e9
	ld a,e			;65ec
	ld hl,l7b00h		;65ed
l65f0h:
	pop de			;65f0
	nop			;65f1
	call 00536h		;65f2
	ld hl,0d8e0h		;65f5
	call c,00145h		;65f8
	xor b			;65fb
	ret			;65fc
	ld c,h			;65fd
	ld bc,09804h		;65fe
	jr nz,l65f0h		;6601
	or e			;6603
	ei			;6604
	ret z			;6605
	add a,b			;6606
	ld e,d			;6607
	nop			;6608
	ld de,00cf8h		;6609
	inc b			;660c
	ld a,d			;660d
	ld (0c1f7h),a		;660e
	ld a,e			;6611
	in a,(051h)		;6612
	dec sp			;6614
	ld e,07ah		;6615
	defb 0edh ;next byte illegal after ed	;6617
	ld (de),a		;6618
l6619h:
	ld (hl),00dh		;6619
	add a,b			;661b
	ld b,0c9h		;661c
	ld b,01bh		;661e
	call sub_7f80h		;6620
	dec c			;6623
	ld a,(07fd9h)		;6624
	or a			;6627
	ld e,d			;6628
	jp nz,00591h		;6629
	and h			;662c
	ld e,c			;662d
	ex (sp),hl		;662e
	add hl,sp		;662f
	ld e,d			;6630
	ld a,d			;6631
	ld h,d			;6632
	sub b			;6633
	add a,l			;6634
l6635h:
	and 0f0h		;6635
	ld (bc),a		;6637
	ld (07ae8h),a		;6638
	ld hl,l7ae2h		;663b
	cp h			;663e
	ld (hl),b		;663f
	ld a,(027e9h)		;6640
	ld a,d			;6643
	xor 015h		;6644
	jp (hl)			;6646
	dec c			;6647
	ld (hl),l		;6648
	ld d,0a7h		;6649
	jr l6668h		;664b
	ld a,(01f2ah)		;664d
	ld a,d			;6650
	ld a,a			;6651
	inc bc			;6652
	sbc a,d			;6653
	ld sp,0de3eh		;6654
	ld (hl),h		;6657
	cpl			;6658
	xor a			;6659
	call z,03b36h		;665a
	adc a,b			;665d
	adc a,e			;665e
	ld bc,0009ah		;665f
	ld (de),a		;6662
	ld hl,l7b15h		;6663
	ld a,000h		;6666
l6668h:
	jp 025deh		;6668
	ld (bc),a		;666b
	ret			;666c
	call pe,0900eh		;666d
	ld l,h			;6670
	ld d,c			;6671
	inc hl			;6672
	add a,e			;6673
	rst 8			;6674
	ld e,h			;6675
	xor (hl)		;6676
	ret nc			;6677
	ld e,(hl)		;6678
	ld d,h			;6679
	rst 18h			;667a
	xor a			;667b
	ld e,(hl)		;667c
	ld d,b			;667d
	jp l7af1h		;667e
	and l			;6681
	adc a,l			;6682
l6683h:
	ld l,d			;6683
	djnz l6635h		;6684
	jp pe,l52b7h		;6686
	xor (hl)		;6689
	ld a,c			;668a
	ld c,h			;668b
	ld a,l			;668c
l668dh:
	ld a,e			;668d
	ld e,0ech		;668e
	xor d			;6690
	djnz l6694h		;6691
l6693h:
	adc a,c			;6693
l6694h:
	ld b,b			;6694
	ld bc,00231h		;6695
	ld b,c			;6698
	inc b			;6699
	inc bc			;669a
	ld h,c			;669b
	inc b			;669c
	ld h,e			;669d
	dec b			;669e
	dec h			;669f
	ld a,c			;66a0
	ld l,e			;66a1
	ld h,e			;66a2
	xor a			;66a3
	jr z,l66e6h		;66a4
	ld d,h			;66a6
	ret nz			;66a7
	jr nz,l6668h		;66a8
	ld e,000h		;66aa
	add a,b			;66ac
	inc c			;66ad
	ld c,026h		;66ae
	ld h,0cbh		;66b0
	jp z,0c810h		;66b2
	cp h			;66b5
	cp a			;66b6
	dec (hl)		;66b7
	cp a			;66b8
	cp h			;66b9
	call po,003eah		;66ba
	ld (bc),a		;66bd
l66beh:
	inc b			;66be
	inc bc			;66bf
	inc bc			;66c0
	inc b			;66c1
	ld (bc),a		;66c2
	djnz l668dh		;66c3
	dec a			;66c5
	defb 0fdh,03ch,0fdh ;illegal sequence	;66c6
	dec a			;66c9
	ld c,080h		;66ca
	jr nc,l673eh		;66cc
	ld h,h			;66ce
	ld h,h			;66cf
	ld (hl),b		;66d0
	jr nc,$-29		;66d1
	ld a,(bc)		;66d3
	ld bc,0e014h		;66d4
	ld b,0b8h		;66d7
	defb 0edh ;next byte illegal after ed	;66d9
	ld (bc),a		;66da
	dec b			;66db
	jr c,l66dfh		;66dc
	add a,b			;66de
l66dfh:
	nop			;66df
	ld l,h			;66e0
	nop			;66e1
	ld bc,l6197h		;66e2
	and b			;66e5
l66e6h:
	add a,b			;66e6
	jr nz,l673ch		;66e7
	ld c,d			;66e9
	nop			;66ea
	nop			;66eb
	ld bc,0010eh		;66ec
	ld (bc),a		;66ef
l66f0h:
	inc l			;66f0
	ld e,b			;66f1
	ld b,b			;66f2
	nop			;66f3
	nop			;66f4
	push bc			;66f5
	ld bc,0c2e0h		;66f6
	adc a,h			;66f9
l66fah:
	add a,b			;66fa
sub_66fbh:
	ccf			;66fb
	ld b,a			;66fc
l66fdh:
	dec b			;66fd
	ld d,004h		;66fe
	ld b,044h		;6700
	add a,h			;6702
	ccf			;6703
	and b			;6704
	adc a,l			;6705
	rst 0			;6706
	ex (sp),hl		;6707
	ld b,b			;6708
	ld c,c			;6709
l670ah:
	sbc a,h			;670a
	inc (hl)		;670b
	ld e,e			;670c
	ld (bc),a		;670d
	ld b,e			;670e
	ld b,b			;670f
	nop			;6710
l6711h:
	sbc a,e			;6711
	ld b,b			;6712
	ld (de),a		;6713
	inc e			;6714
	ld h,b			;6715
	ret po			;6716
	ld b,b			;6717
	ld l,h			;6718
	ld b,a			;6719
	nop			;671a
	jr nz,l672eh		;671b
	jr $+18			;671d
	inc bc			;671f
l6720h:
	xor a			;6720
	ld b,a			;6721
	add a,a			;6722
	sub a			;6723
	ld h,e			;6724
	nop			;6725
	add a,b			;6726
l6727h:
	jr nc,$+34		;6727
	djnz l6733h		;6729
	ld b,a			;672b
	jr l66fah		;672c
l672eh:
	ld hl,0040bh		;672e
	dec e			;6731
	ld a,(bc)		;6732
l6733h:
	ld e,0ebh		;6733
	ld b,e			;6735
	ld c,b			;6736
	xor l			;6737
	ret c			;6738
	ld de,0346ch		;6739
l673ch:
	inc b			;673c
	ret p			;673d
l673eh:
	jp po,00e01h		;673e
	inc c			;6741
	inc b			;6742
	ex af,af'		;6743
	djnz l6775h		;6744
	ld a,(bc)		;6746
	inc b			;6747
	jr l6711h		;6748
	and h			;674a
	rst 8			;674b
	adc a,(hl)		;674c
	cp (hl)			;674d
	inc a			;674e
	nop			;674f
	ld d,d			;6750
	ld bc,0078dh		;6751
	dec de			;6754
	ld (hl),02ch		;6755
	jr nz,l67b4h		;6757
	ccf			;6759
	and a			;675a
	ld e,0b8h		;675b
	ld d,b			;675d
	ld e,0b1h		;675e
	and h			;6760
	or d			;6761
	ld hl,l4003h		;6762
	pop hl			;6765
	ld hl,04918h		;6766
	rlca			;6769
	jr nz,$+50		;676a
	add a,b			;676c
l676dh:
	ld b,b			;676d
	jr nz,l6720h		;676e
	ld a,(bc)		;6770
	dec e			;6771
	inc b			;6772
	ld c,e			;6773
	dec bc			;6774
l6775h:
	jp nc,00421h		;6775
	inc (hl)		;6778
	ld l,h			;6779
	ret c			;677a
	ld h,c			;677b
	ld a,b			;677c
	ld b,c			;677d
	and d			;677e
	jr $-85			;677f
	ld (de),a		;6781
	inc b			;6782
	inc c			;6783
	ld bc,0e7eeh		;6784
	call po,0a11bh		;6787
	ld (de),a		;678a
	ret nz			;678b
	ret nz			;678c
	jr z,$-93		;678d
	ret po			;678f
	jr nz,$+46		;6790
	ld (01b36h),hl		;6792
	pop hl			;6795
	adc a,a			;6796
	pop bc			;6797
	ld (hl),b		;6798
	ld d,b			;6799
	cp b			;679a
	jr nz,l676dh		;679b
	xor 063h		;679d
	ld h,019h		;679f
	inc c			;67a1
	inc c			;67a2
	dec c			;67a3
	dec b			;67a4
	nop			;67a5
	pop hl			;67a6
	adc a,(hl)		;67a7
	ld b,h			;67a8
	add a,e			;67a9
	ld d,c			;67aa
	and d			;67ab
	call po,09208h		;67ac
	inc a			;67af
	ld (de),a		;67b0
	and c			;67b1
	rst 20h			;67b2
	xor h			;67b3
l67b4h:
	ld b,l			;67b4
	ld d,h			;67b5
	and b			;67b6
	rla			;67b7
	jr nz,$-115		;67b8
	inc l			;67ba
	ld b,b			;67bb
	ld c,d			;67bc
	ld de,0a120h		;67bd
	dec de			;67c0
	add a,b			;67c1
	inc l			;67c2
	ld d,l			;67c3
	ld c,b			;67c4
	ld a,0c8h		;67c5
	ld b,b			;67c7
	ld (de),a		;67c8
	ret nz			;67c9
	xor (hl)		;67ca
	and d			;67cb
	ld (00210h),a		;67cc
	ld h,d			;67cf
	add hl,bc		;67d0
	ld b,b			;67d1
	inc c			;67d2
	inc bc			;67d3
	and a			;67d4
	jp nz,02005h		;67d5
	sbc a,l			;67d8
	push bc			;67d9
	inc h			;67da
	call z,01df4h		;67db
	ld c,083h		;67de
	ld a,(l7daeh)		;67e0
	or a			;67e3
	ret z			;67e4
	xor b			;67e5
	add hl,sp		;67e6
	nop			;67e7
	xor h			;67e8
	ld a,l			;67e9
	cp 0c8h			;67ea
	jp nc,07eaeh		;67ec
	ld a,(0b044h)		;67ef
l67f2h:
	ld de,08bc2h		;67f2
	ld b,0afh		;67f5
	ld d,l			;67f7
	ld a,l			;67f8
	call p,sub_7603h	;67f9
	xor b			;67fc
	cpl			;67fd
	ret p			;67fe
	inc b			;67ff
	ret nz			;6800
	ld c,053h		;6801
	ld a,(hl)		;6803
	xor l			;6804
	call nz,00460h		;6805
	rlca			;6808
	call c,0f109h		;6809
	djnz $+111		;680c
	inc b			;680e
l680fh:
	add hl,bc		;680f
	jp z,0347ah		;6810
	ld a,(hl)		;6813
	ret			;6814
	inc (hl)		;6815
	jr nc,l67f2h		;6816
	ret z			;6818
	inc (hl)		;6819
	rlca			;681a
	ld (0b745h),a		;681b
	dec b			;681e
	add a,b			;681f
	ld c,l			;6820
	xor l			;6821
	ld a,l			;6822
	add a,b			;6823
	cp (hl)			;6824
	xor d			;6825
	ld (bc),a		;6826
	ld b,h			;6827
	ld a,(hl)		;6828
	ld hl,0c280h		;6829
	ld de,02385h		;682c
	ld b,007h		;682f
	jp z,01ef0h		;6831
	ld a,(hl)		;6834
	ret po			;6835
	out (0f8h),a		;6836
	jp 02581h		;6838
	ex de,hl		;683b
	ld hl,l7e43h		;683c
	ld bc,01d13h		;683f
	ldir			;6842
	xor e			;6844
	rlc d			;6845
	xor e			;6847
	or l			;6848
	djnz $-83		;6849
	in a,(0e4h)		;684b
	sub b			;684d
	ei			;684e
	ld a,(hl)		;684f
	ld a,0c0h		;6850
	pop hl			;6852
	ld a,(iy+00ah)		;6853
	jp 07eb3h		;6856
	dec d			;6859
	and b			;685a
	add a,h			;685b
	in a,(037h)		;685c
	inc bc			;685e
	or b			;685f
	ld c,b			;6860
	ld a,(bc)		;6861
	jp nz,000e4h		;6862
	ld a,06bh		;6865
	and b			;6867
	inc e			;6868
	nop			;6869
	inc e			;686a
	sbc a,(hl)		;686b
	inc c			;686c
	ld a,d			;686d
	add hl,hl		;686e
	call p,0b236h		;686f
	jp nc,02ec9h		;6872
	djnz l68d5h		;6875
	nop			;6877
	djnz l68a2h		;6878
	ld (0b9cbh),a		;687a
	ld l,d			;687d
	ld a,e			;687e
	inc bc			;687f
	sub (hl)		;6880
	add a,e			;6881
	ld h,b			;6882
	inc sp			;6883
l6884h:
	exx			;6884
	ret			;6885
	call pe,0c6cdh		;6886
	jp nz,08031h		;6889
	adc a,h			;688c
	ld de,0c5ffh		;688d
	ret po			;6890
	and 00eh		;6891
	ret po			;6893
	ld (l7f01h),a		;6894
	cp a			;6897
	push hl			;6898
	in a,(032h)		;6899
	ld b,d			;689b
	ld b,(hl)		;689c
	ld (bc),a		;689d
	ld a,a			;689e
	ld hl,0c53ah		;689f
l68a2h:
	sub (hl)		;68a2
	sbc a,d			;68a3
	ex af,af'		;68a4
	xor 00dh		;68a5
	ld a,(02a8ch)		;68a7
	sub 010h		;68aa
	cpl			;68ac
	call po,0c915h		;68ad
	and b			;68b0
	sub c			;68b1
	jp c,0e003h		;68b2
	inc l			;68b5
	ld h,(hl)		;68b6
	ld bc,0209eh		;68b7
	ld a,00ah		;68ba
	di			;68bc
	dec bc			;68bd
	out (099h),a		;68be
	ld a,090h		;68c0
	inc bc			;68c2
	adc a,b			;68c3
	ld b,00ch		;68c4
	call m,03a69h		;68c6
	ld b,l			;68c9
	or h			;68ca
	xor b			;68cb
	ld a,(0a534h)		;68cc
	ld a,a			;68cf
	sub 0a3h		;68d0
	inc bc			;68d2
	rlca			;68d3
	and (hl)		;68d4
l68d5h:
	ld a,a			;68d5
	ld b,000h		;68d6
	ld hl,l7fa7h		;68d8
	ld de,07fd7h		;68db
	nop			;68de
	ld b,030h		;68df
	call 07f7ah		;68e1
	inc hl			;68e4
	inc de			;68e5
	djnz $+18		;68e6
	ld sp,hl		;68e8
	ld hl,00ed7h		;68e9
	rlca			;68ec
	add a,b			;68ed
	ld b,018h		;68ee
	djnz $+128		;68f0
	add a,a			;68f2
l68f3h:
	nop			;68f3
	inc hl			;68f4
	ret p			;68f5
	jp 02b81h		;68f6
	ld b,c			;68f9
	ld c,(hl)		;68fa
	dec b			;68fb
	ld (de),a		;68fc
l68fdh:
	inc de			;68fd
	ld a,c			;68fe
	ld (de),a		;68ff
	dec de			;6900
	djnz $-18		;6901
	ld hl,0cd18h		;6903
	jp (hl)			;6906
	ld (bc),a		;6907
	inc d			;6908
	ld a,(0c398h)		;6909
	ld a,003h		;690c
	ret nz			;690e
	or d			;690f
	ld e,e			;6910
	dec b			;6911
	sub c			;6912
	ld (03052h),a		;6913
	ld b,050h		;6916
	dec (hl)		;6918
	xor a			;6919
	inc hl			;691a
l691bh:
	nop			;691b
	djnz l691bh		;691c
	ret			;691e
	ld a,(de)		;691f
	cp (hl)			;6920
	ret z			;6921
	inc a			;6922
	ld (de),a		;6923
	ld a,e			;6924
	ret			;6925
	ld h,b			;6926
	ld b,a			;6927
	dec de			;6928
	ld a,(hl)		;6929
	dec a			;692a
	or l			;692b
	rlca			;692c
	jr nz,l6930h		;692d
	sub (hl)		;692f
l6930h:
	ret nc			;6930
	ld (0cdf5h),hl		;6931
	inc a			;6934
	ld (hl),b		;6935
	ld a,a			;6936
	jr c,$-53		;6937
	cp h			;6939
	adc a,l			;693a
	sbc a,c			;693b
	sub (hl)		;693c
	rlca			;693d
	add a,0f2h		;693e
	rlca			;6940
	xor a			;6941
	dec hl			;6942
	push af			;6943
	xor l			;6944
	pop bc			;6945
	cpl			;6946
	add a,031h		;6947
	add a,b			;6949
	dec hl			;694a
	push bc			;694b
	adc a,(hl)		;694c
	dec b			;694d
	ld a,(bc)		;694e
	ld bc,01d01h		;694f
	nop			;6952
	ret			;6953
	dec h			;6954
	ld d,005h		;6955
	rlca			;6957
	ld e,b			;6958
	ld h,0eeh		;6959
	push af			;695b
	ld a,(hl)		;695c
	nop			;695d
	cp b			;695e
	ld hl,08056h		;695f
	rla			;6962
	ld de,l5c7dh		;6963
	cp d			;6966
	ld d,d			;6967
	adc a,e			;6968
	call m,sub_56e0h	;6969
	rrca			;696c
	ld e,(hl)		;696d
	ret			;696e
	ld hl,01062h		;696f
	rlca			;6972
	ret			;6973
	inc e			;6974
	sbc a,e			;6975
	ret			;6976
	inc e			;6977
	ld h,(hl)		;6978
	and a			;6979
	ld c,h			;697a
	ld h,b			;697b
	cp b			;697c
	ld b,03ch		;697d
	ld (0be38h),a		;697f
	add hl,hl		;6982
	inc a			;6983
	jp nz,020b5h		;6984
	inc c			;6987
	jp l5c89h		;6988
	ld de,0f9c0h		;698b
	add hl,de		;698e
	ld e,(hl)		;698f
	ret p			;6990
	cp b			;6991
	push hl			;6992
	ld hl,07c20h		;6993
	add a,b			;6996
	rlca			;6997
l6998h:
	inc hl			;6998
	ld d,(hl)		;6999
	pop hl			;699a
	push de			;699b
	nop			;699c
	ret			;699d
	ld d,d			;699e
	add a,c			;699f
	call nc,01c81h		;69a0
	add a,d			;69a3
	ld h,c			;69a4
	nop			;69a5
	add a,d			;69a6
	dec e			;69a7
	add a,e			;69a8
	res 0,e			;69a9
	ld hl,l7184h		;69ab
	nop			;69ae
	add a,h			;69af
	push bc			;69b0
	add a,h			;69b1
	and 084h		;69b2
	dec l			;69b4
	add a,l			;69b5
	inc bc			;69b6
	nop			;69b7
	add a,(hl)		;69b8
	ld c,d			;69b9
	add a,a			;69ba
	ld l,h			;69bb
	add a,a			;69bc
	ld a,e			;69bd
	add a,a			;69be
	ld de,00352h		;69bf
	cpl			;69c2
	adc a,h			;69c3
	nop			;69c4
	jp nz,080afh		;69c5
	ld a,(0c148h)		;69c8
l69cbh:
	and 042h		;69cb
	inc bc			;69cd
	ld b,l			;69ce
	jp z,080aeh		;69cf
	sub l			;69d2
	ld b,c			;69d3
	sbc hl,de		;69d4
	ret			;69d6
	call m,sub_7fc0h	;69d7
	jp 090bah		;69da
	push af			;69dd
	ccf			;69de
	push hl			;69df
	ld a,h			;69e0
	ld a,(hl)		;69e1
	and c			;69e2
l69e3h:
	and b			;69e3
	rrca			;69e4
	ld (hl),a		;69e5
	ld h,000h		;69e6
	ld l,a			;69e8
	add a,a			;69e9
	cp h			;69ea
	xor 020h		;69eb
	pop hl			;69ed
	dec hl			;69ee
	nop			;69ef
	add a,(hl)		;69f0
	ld (hl),a		;69f1
	dec hl			;69f2
	ld a,(hl)		;69f3
	ld (hl),080h		;69f4
	ld (hl),a		;69f6
	and l			;69f7
	ld a,(000ffh)		;69f8
	sub c			;69fb
	ld a,h			;69fc
	defb 0fdh,001h,0d5h ;illegal sequence	;69fd
	add hl,de		;6a00
	dec e			;6a01
	jr nz,l69cbh		;6a02
	ld bc,01ccbh		;6a04
	sbc a,e			;6a07
	ld e,0e3h		;6a08
	adc a,e			;6a0a
	ld bc,0f1f2h		;6a0b
	dec e			;6a0e
	and l			;6a0f
	xor c			;6a10
	ld bc,l68f3h		;6a11
	jr nz,l69e3h		;6a14
	sbc a,d			;6a16
	add a,b			;6a17
	adc a,h			;6a18
	adc a,h			;6a19
	or b			;6a1a
	xor 028h		;6a1b
	jp nz,l7300h		;6a1d
	add a,c			;6a20
	ld a,r			;6a21
	and 001h		;6a23
	ld b,024h		;6a25
	ld (bc),a		;6a27
	jp z,08169h		;6a28
	ld b,026h		;6a2b
	ld (hl),b		;6a2d
	inc de			;6a2e
	ld (bc),a		;6a2f
	call 08800h		;6a30
	dec hl			;6a33
	jp 0fb12h		;6a34
	inc l			;6a37
	dec d			;6a38
	nop			;6a39
	rra			;6a3a
	jp nz,08181h		;6a3b
	ld a,(hl)		;6a3e
	and 060h		;6a3f
	jp z,0880ah		;6a41
	add a,c			;6a44
	ld de,0a8d2h		;6a45
	ld b,0b3h		;6a48
	add a,b			;6a4a
	ret			;6a4b
	inc de			;6a4c
	dec e			;6a4d
	ld h,b			;6a4e
	ld (hl),a		;6a4f
	dec bc			;6a50
	ld h,e			;6a51
	ld h,h			;6a52
	rst 38h			;6a53
l6a54h:
	inc bc			;6a54
l6a55h:
	ld (hl),e		;6a55
	dec b			;6a56
	inc bc			;6a57
	adc a,a			;6a58
	dec b			;6a59
	ld l,019h		;6a5a
	cp c			;6a5c
	ld de,015efh		;6a5d
	rrca			;6a60
	rlc h			;6a61
	adc a,b			;6a63
	add a,c			;6a64
	exx			;6a65
	cp c			;6a66
	ld bc,007e6h		;6a67
	ld (hl),a		;6a6a
	jp nz,l5ef1h		;6a6b
	ld c,c			;6a6e
	push bc			;6a6f
	or e			;6a70
	jr nz,l6af1h		;6a71
	xor 008h		;6a73
	inc c			;6a75
	ld (hl),a		;6a76
	add hl,de		;6a77
	and 008h		;6a78
	ld c,000h		;6a7a
	ld (hl),002h		;6a7c
	dec hl			;6a7e
	ld de,08194h		;6a7f
	call 046b8h		;6a82
	add a,b			;6a85
	add a,h			;6a86
	ld de,0ccb7h		;6a87
	adc a,a			;6a8a
	nop			;6a8b
	ld a,(0c201h)		;6a8c
	add a,01eh		;6a8f
	cp (hl)			;6a91
	jp nc,00f11h		;6a92
	add a,d			;6a95
	ld a,(hl)		;6a96
	xor b			;6a97
	ld (005cah),hl		;6a98
	dec (hl)		;6a9b
	dec hl			;6a9c
	or c			;6a9d
	inc (hl)		;6a9e
	ret z			;6a9f
	inc (hl)		;6aa0
	inc d			;6aa1
	ld a,(0c152h)		;6aa2
	push af			;6aa5
	jr c,l6aadh		;6aa6
	ld b,a			;6aa8
	ld h,h			;6aa9
	inc a			;6aaa
	ld b,a			;6aab
	rst 8			;6aac
l6aadh:
	ld h,c			;6aad
	jp nz,02236h		;6aae
	ld e,b			;6ab1
	push af			;6ab2
	cp 002h			;6ab3
	in a,(0c2h)		;6ab5
	dec (hl)		;6ab7
	add a,d			;6ab8
	ld a,0bbh		;6ab9
	ret pe			;6abb
	ld d,b			;6abc
	sub 003h		;6abd
	rra			;6abf
	ld (hl),a		;6ac0
	ld a,(0fa57h)		;6ac1
	ld d,h			;6ac4
	sub a			;6ac5
	jr z,$+3		;6ac6
	jp c,0824fh		;6ac8
	cp 005h			;6acb
	ld b,014h		;6acd
	ld b,083h		;6acf
	ld b,0f6h		;6ad1
	dec (hl)		;6ad3
	ld c,a			;6ad4
	nop			;6ad5
	add a,b			;6ad6
	cp (hl)			;6ad7
	jp c,0825fh		;6ad8
	ld de,0054ch		;6adb
	cp h			;6ade
	ld (hl),046h		;6adf
	ld b,079h		;6ae1
	dec hl			;6ae3
	ret			;6ae4
	ld b,c			;6ae5
	sra e			;6ae6
	ld b,a			;6ae8
l6ae9h:
	sbc a,d			;6ae9
	inc hl			;6aea
	sub d			;6aeb
	ld (00290h),hl		;6aec
	halt			;6aef
	add a,d			;6af0
l6af1h:
	ld (hl),00ah		;6af1
	inc hl			;6af3
	inc (hl)		;6af4
	ld c,(hl)		;6af5
	ld h,h			;6af6
	ld a,b			;6af7
	or c			;6af8
	add a,a			;6af9
	jp (hl)			;6afa
	ld d,b			;6afb
	add a,(hl)		;6afc
	ld d,b			;6afd
	call nz,0ac93h		;6afe
	adc a,a			;6b01
	ld h,c			;6b02
	ld a,(hl)		;6b03
	add a,c			;6b04
	ld a,(bc)		;6b05
	dec de			;6b06
	ld a,(07c4fh)		;6b07
	adc a,e			;6b0a
	inc a			;6b0b
	pop af			;6b0c
	dec b			;6b0d
	inc bc			;6b0e
	ex (sp),hl		;6b0f
	dec b			;6b10
	rst 18h			;6b11
	ld bc,0febbh		;6b12
	inc bc			;6b15
	jp nz,l7dcdh		;6b16
	ld (hl),a		;6b19
	inc bc			;6b1a
	dec b			;6b1b
	cp a			;6b1c
	ld b,c			;6b1d
	ccf			;6b1e
	ld e,c			;6b1f
	ccf			;6b20
	rst 10h			;6b21
	ld l,l			;6b22
	ld bc,0e503h		;6b23
	nop			;6b26
	push de			;6b27
	rst 10h			;6b28
	rla			;6b29
	adc a,e			;6b2a
	ex af,af'		;6b2b
	jp z,08384h		;6b2c
	sbc a,e			;6b2f
	ret nz			;6b30
	rrca			;6b31
	jp nz,08364h		;6b32
	inc c			;6b35
	ld a,(08319h)		;6b36
	or a			;6b39
	ld b,0bch		;6b3a
	add a,088h		;6b3c
	ex af,af'		;6b3e
	ld (00e1ah),a		;6b3f
	inc e			;6b42
	add a,e			;6b43
	dec b			;6b44
	add a,00fh		;6b45
	ld (0831bh),a		;6b47
	ret nc			;6b4a
	ld b,b			;6b4b
	adc a,a			;6b4c
	ld l,(hl)		;6b4d
	ld de,l6eafh		;6b4e
	ld h,c			;6b51
	ld bc,0fdc4h		;6b52
	ld d,e			;6b55
	pop hl			;6b56
	cp h			;6b57
	inc a			;6b58
	ld c,e			;6b59
	ld (0f0a3h),a		;6b5a
	sbc a,c			;6b5d
	add hl,de		;6b5e
	cp a			;6b5f
	add a,e			;6b60
	ld (0c3a2h),a		;6b61
	ccf			;6b64
	ld d,b			;6b65
	ld (0362dh),a		;6b66
	rst 38h			;6b69
	dec hl			;6b6a
	jp 03600h		;6b6b
	ld c,c			;6b6e
	dec b			;6b6f
	add a,(hl)		;6b70
	ld hl,00814h		;6b71
	rlca			;6b74
	jp nz,01482h		;6b75
	inc h			;6b78
	inc hl			;6b79
	sub d			;6b7a
	and d			;6b7b
	or d			;6b7c
	sbc a,e			;6b7d
	inc e			;6b7e
	ld c,c			;6b7f
	jp nz,l6ca2h		;6b80
	and a			;6b83
	and d			;6b84
	rla			;6b85
	dec l			;6b86
	ld h,036h		;6b87
	dec e			;6b89
	rst 10h			;6b8a
	ld (bc),a		;6b8b
	ld de,08299h		;6b8c
	sub (hl)		;6b8f
sub_6b90h:
	sub b			;6b90
	ld a,c			;6b91
	cp 000h			;6b92
	ld a,(bc)		;6b94
	jp z,083b6h		;6b95
	cp 05eh			;6b98
	jp z,058c4h		;6b9a
	add a,e			;6b9d
	inc de			;6b9e
	dec h			;6b9f
	inc bc			;6ba0
	sub h			;6ba1
	xor (hl)		;6ba2
	dec d			;6ba3
	inc hl			;6ba4
	ld (hl),08bh		;6ba5
	inc h			;6ba7
	dec c			;6ba8
	ld b,033h		;6ba9
	add a,e			;6bab
	ld b,042h		;6bac
	ld d,e			;6bae
	dec a			;6baf
	cp l			;6bb0
	ld c,b			;6bb1
	ret nz			;6bb2
	jp nz,0fa27h		;6bb3
	add a,e			;6bb6
	pop af			;6bb7
	ld h,l			;6bb8
	out (059h),a		;6bb9
	ccf			;6bbb
l6bbch:
	inc h			;6bbc
	call nc,03a30h		;6bbd
	ld a,(bc)		;6bc0
	jp nz,08ea8h		;6bc1
	ret c			;6bc4
	ld a,(00042h)		;6bc5
	dec b			;6bc8
	ld d,b			;6bc9
	jp c,042f8h		;6bca
	ld b,078h		;6bcd
	ret c			;6bcf
	inc (hl)		;6bd0
	ret			;6bd1
	dec (hl)		;6bd2
	ld l,052h		;6bd3
	add a,d			;6bd5
	ld h,c			;6bd6
	rst 30h			;6bd7
	call p,004b5h		;6bd8
	jp nz,08210h		;6bdb
	adc a,b			;6bde
	ld de,008b7h		;6bdf
	jp (hl)			;6be2
	add a,e			;6be3
	pop hl			;6be4
	ld b,(hl)		;6be5
	adc a,053h		;6be6
	sub (hl)		;6be8
	ld h,d			;6be9
	add a,c			;6bea
	jp nz,021fch		;6beb
	ld (0c282h),a		;6bee
	ld d,l			;6bf1
	adc a,c			;6bf2
	ld b,(hl)		;6bf3
	cp d			;6bf4
	jp po,094cdh		;6bf5
	ld c,l			;6bf8
l6bf9h:
	add a,h			;6bf9
	inc de			;6bfa
	inc hl			;6bfb
	dec (hl)		;6bfc
	inc hl			;6bfd
	exx			;6bfe
	sub e			;6bff
	sub 064h		;6c00
	ld c,d			;6c02
	push hl			;6c03
	ret nz			;6c04
	ld b,l			;6c05
	add a,h			;6c06
	add hl,de		;6c07
	inc (hl)		;6c08
	dec e			;6c09
	adc a,c			;6c0a
	dec bc			;6c0b
	jp 00762h		;6c0c
	dec (hl)		;6c0f
	rlca			;6c10
	call z,sub_4968h	;6c11
	cp d			;6c14
	xor d			;6c15
	add a,c			;6c16
	add a,d			;6c17
	ld h,c			;6c18
	add a,h			;6c19
l6c1ah:
	exx			;6c1a
	ld (hl),h		;6c1b
l6c1ch:
	di			;6c1c
	jp nz,0600ah		;6c1d
	add a,h			;6c20
	ld a,0dbh		;6c21
	xor d			;6c23
	ld b,l			;6c24
	add a,c			;6c25
	sub a			;6c26
	ret p			;6c27
	cp 022h			;6c28
	rst 30h			;6c2a
	ret c			;6c2b
	and (hl)		;6c2c
	ld d,c			;6c2d
	nop			;6c2e
	ld c,a			;6c2f
	ex de,hl		;6c30
	adc a,(hl)		;6c31
	xor a			;6c32
	ld b,e			;6c33
	inc hl			;6c34
	sbc a,l			;6c35
	xor b			;6c36
	push af			;6c37
	add a,d			;6c38
	or h			;6c39
	jp z,0848bh		;6c3a
	sbc a,d			;6c3d
	adc a,b			;6c3e
	add hl,de		;6c3f
	ld e,003h		;6c40
	adc a,d			;6c42
	ret z			;6c43
	or (hl)			;6c44
	ret nc			;6c45
	jp z,0afb8h		;6c46
	ld b,a			;6c49
	call z,0fe58h		;6c4a
	cp l			;6c4d
	ld (l59a5h),hl		;6c4e
	ld (hl),001h		;6c51
	jp p,0fef0h		;6c53
	and b			;6c56
	ld de,0b2cah		;6c57
	add a,h			;6c5a
	xor l			;6c5b
	or l			;6c5c
	ld a,a			;6c5d
	ld h,012h		;6c5e
	ld (012ffh),a		;6c60
	and a			;6c63
	or h			;6c64
	jp nz,098c1h		;6c65
	ld h,b			;6c68
	rst 38h			;6c69
	sub d			;6c6a
	or d			;6c6b
	cp a			;6c6c
	jp nc,0e83dh		;6c6d
l6c70h:
	sub d			;6c70
	call m,0d822h		;6c71
	add a,h			;6c74
	call m,0a63bh		;6c75
	ret nc			;6c78
	inc c			;6c79
	sub 002h		;6c7a
	ld e,d			;6c7c
	xor (hl)		;6c7d
	add a,054h		;6c7e
	ld b,a			;6c80
	ld b,0c0h		;6c81
	jp nz,08506h		;6c83
	inc a			;6c86
	rst 8			;6c87
	or a			;6c88
	ld a,l			;6c89
	ld c,b			;6c8a
	add a,046h		;6c8b
	add hl,bc		;6c8d
	ld (hl),004h		;6c8e
	xor d			;6c90
l6c91h:
	ld (hl),h		;6c91
	nop			;6c92
	sub b			;6c93
sub_6c94h:
	ret po			;6c94
	jr l6c1ch		;6c95
	and d			;6c97
	inc l			;6c98
	or (hl)			;6c99
	inc bc			;6c9a
	or e			;6c9b
	jp nz,08517h		;6c9c
	ld a,0d3h		;6c9f
	ccf			;6ca1
l6ca2h:
	add a,(hl)		;6ca2
	ld a,a			;6ca3
	ccf			;6ca4
	ld e,b			;6ca5
	ld (l44e5h),a		;6ca6
	adc a,d			;6ca9
	call nc,0bb8ch		;6caa
	ld l,h			;6cad
	ld (bc),a		;6cae
	ld b,(hl)		;6caf
l6cb0h:
	dec h			;6cb0
	ld b,(hl)		;6cb1
	jp nz,0113fh		;6cb2
	inc b			;6cb5
	cp a			;6cb6
	ld a,(0c638h)		;6cb7
	adc a,h			;6cba
	ld b,c			;6cbb
	ld e,a			;6cbc
l6cbdh:
	add hl,de		;6cbd
	rst 28h			;6cbe
	dec h			;6cbf
	ld h,b			;6cc0
	add a,l			;6cc1
	rst 28h			;6cc2
	call p,sub_5f59h	;6cc3
	add a,l			;6cc6
	rst 28h			;6cc7
	rla			;6cc8
	call pe,0d3c5h		;6cc9
	di			;6ccc
	jr $-86			;6ccd
	ret nz			;6ccf
	add a,h			;6cd0
l6cd1h:
	or b			;6cd1
	ld c,c			;6cd2
	jp c,00279h		;6cd3
	add a,l			;6cd6
	cp 0e4h			;6cd7
	jp c,0858ch		;6cd9
	add a,b			;6cdc
	jp m,03782h		;6cdd
	add a,d			;6ce0
l6ce1h:
	jp c,08589h		;6ce1
	sub 031h		;6ce4
	inc (hl)		;6ce6
	rst 0			;6ce7
	add hl,sp		;6ce8
	ld h,e			;6ce9
	and (hl)		;6cea
	dec b			;6ceb
l6cech:
	inc b			;6cec
	ld bc,000f4h		;6ced
	inc bc			;6cf0
	sbc a,001h		;6cf1
	nop			;6cf3
	sbc a,e			;6cf4
	ld (bc),a		;6cf5
	ld bc,0d300h		;6cf6
	ld bc,07a01h		;6cf9
	nop			;6cfc
	adc a,097h		;6cfd
	xor e			;6cff
	jp nc,0919ch		;6d00
	ld (hl),b		;6d03
	add hl,sp		;6d04
	rst 38h			;6d05
	cp 001h			;6d06
	pop hl			;6d08
	nop			;6d09
	defb 0fdh,001h,0cfh ;illegal sequence	;6d0a
	nop			;6d0d
	dec l			;6d0e
	call m,0e901h		;6d0f
	nop			;6d12
	ei			;6d13
	ld bc,02baah		;6d14
	add a,e			;6d17
	ld de,0d770h		;6d18
	ld de,08631h		;6d1b
	push de			;6d1e
	call nz,0e4edh		;6d1f
	adc a,057h		;6d22
sub_6d24h:
	push bc			;6d24
	adc a,l			;6d25
	cp b			;6d26
	cp (hl)			;6d27
	add a,c			;6d28
	jp c,08620h		;6d29
	neg			;6d2c
	call nc,0eca9h		;6d2e
	jr c,l6cech		;6d31
	rst 0			;6d33
	dec c			;6d34
	ld l,00dh		;6d35
	ld b,023h		;6d37
	push hl			;6d39
	jp nz,l5ec0h		;6d3a
	ld hl,08591h		;6d3d
	add hl,de		;6d40
	ld l,d			;6d41
	ex de,hl		;6d42
	jp p,0d54ah		;6d43
	add a,e			;6d46
	cp 006h			;6d47
	jp nz,08647h		;6d49
	sbc a,b			;6d4c
	ld h,b			;6d4d
	jp z,08650h		;6d4e
	inc de			;6d51
	ret c			;6d52
	xor h			;6d53
	ld c,e			;6d54
	add a,(hl)		;6d55
	rrca			;6d56
	ld a,(de)		;6d57
	ld b,a			;6d58
	push hl			;6d59
	inc hl			;6d5a
	ld hl,0ae09h		;6d5b
	dec c			;6d5e
	jp z,01667h		;6d5f
	ld c,c			;6d62
	ld h,d			;6d63
	ld d,04fh		;6d64
	jp po,l4b4ch		;6d66
	ld c,(hl)		;6d69
	ld a,c			;6d6a
	rst 10h			;6d6b
	jr z,l6d78h		;6d6c
sub_6d6eh:
	cp c			;6d6e
	ld l,h			;6d6f
	add a,a			;6d70
	ld (hl),d		;6d71
	call 023c0h		;6d72
	ld a,b			;6d75
	add a,005h		;6d76
l6d78h:
	ld b,a			;6d78
	ld b,c			;6d79
	ld a,c			;6d7a
	inc bc			;6d7b
	ld d,a			;6d7c
	sla a			;6d7d
	ld e,a			;6d7f
	ld (bc),a		;6d80
	ld b,b			;6d81
	ld bc,08283h		;6d82
	add a,b			;6d85
	cp 03ch			;6d86
	ld (de),a		;6d88
	jp z,086c9h		;6d89
	ld b,b			;6d8c
	ld e,a			;6d8d
	sub d			;6d8e
	and c			;6d8f
	call z,01986h		;6d90
	sub 0b4h		;6d93
	ld l,a			;6d95
	ld b,003h		;6d96
	ld b,c			;6d98
	cp 092h			;6d99
	jp nc,086bfh		;6d9b
	rst 28h			;6d9e
l6d9fh:
	ld l,c			;6d9f
	xor b			;6da0
	scf			;6da1
	ld b,09dh		;6da2
	jp 0ca7bh		;6da4
	ld b,006h		;6da7
	dec sp			;6da9
	cp 073h			;6daa
	ld b,0a5h		;6dac
	add hl,sp		;6dae
	call po,03a01h		;6daf
	ld e,a			;6db2
	pop bc			;6db3
	call 0f21ch		;6db4
	push bc			;6db7
	add a,b			;6db8
	and b			;6db9
l6dbah:
	sbc a,e			;6dba
	sbc a,e			;6dbb
	ld (hl),e		;6dbc
	call po,09300h		;6dbd
	sub e			;6dc0
	cp c			;6dc1
	ld a,(bc)		;6dc2
	inc c			;6dc3
	ld c,(hl)		;6dc4
	sub e			;6dc5
	nop			;6dc6
	ld l,e			;6dc7
	ld a,(bc)		;6dc8
	ld (hl),b		;6dc9
	add hl,bc		;6dca
	ld h,e			;6dcb
	ld l,e			;6dcc
	ex (sp),hl		;6dcd
	dec bc			;6dce
	add hl,bc		;6dcf
	ld (hl),c		;6dd0
	ld a,(bc)		;6dd1
	ld l,e			;6dd2
	ld a,(bc)		;6dd3
	push bc			;6dd4
l6dd5h:
	add hl,bc		;6dd5
	ld a,(bc)		;6dd6
	cp c			;6dd7
	nop			;6dd8
	ex af,af'		;6dd9
	sbc a,h			;6dda
	ld a,(bc)		;6ddb
	inc bc			;6ddc
l6dddh:
	adc a,e			;6ddd
	adc a,e			;6dde
	ld a,e			;6ddf
	add a,e			;6de0
	add a,e			;6de1
	ld a,(bc)		;6de2
	adc a,e			;6de3
	add hl,bc		;6de4
	ld a,(bc)		;6de5
	ld (hl),e		;6de6
	dec bc			;6de7
	add hl,bc		;6de8
	adc a,h			;6de9
	nop			;6dea
	adc a,00ch		;6deb
	add hl,bc		;6ded
	cp c			;6dee
	ld a,(bc)		;6def
	ex (sp),hl		;6df0
	add hl,bc		;6df1
	dec bc			;6df2
	ld l,c			;6df3
	sbc a,h			;6df4
	xor c			;6df5
	sbc a,0c0h		;6df6
	inc b			;6df8
	ld b,0a3h		;6df9
	jp c,l6003h		;6dfb
	add a,a			;6dfe
	cp 008h			;6dff
	ld b,0abh		;6e01
	ld b,054h		;6e03
	inc c			;6e05
	dec c			;6e06
	and b			;6e07
	ld h,l			;6e08
	adc a,c			;6e09
	inc hl			;6e0a
	ret nz			;6e0b
	ld hl,03682h		;6e0c
	inc e			;6e0f
	jp c,032d0h		;6e10
	call po,0873dh		;6e13
	xor a			;6e16
	adc a,d			;6e17
l6e18h:
	dec hl			;6e18
	or l			;6e19
	dec d			;6e1a
	inc hl			;6e1b
	cp h			;6e1c
	ld (bc),a		;6e1d
	cp (hl)			;6e1e
	jp z,0879ch		;6e1f
	ld (hl),a		;6e22
	pop af			;6e23
	ret m			;6e24
	or c			;6e25
	rlca			;6e26
	cp d			;6e27
	nop			;6e28
	xor (hl)		;6e29
	ld a,l			;6e2a
	ld (07db0h),a		;6e2b
	ld de,00816h		;6e2e
	nop			;6e31
	xor a			;6e32
	dec e			;6e33
	sub a			;6e34
	ld sp,06ca8h		;6e35
	call c,0ac87h		;6e38
	dec b			;6e3b
	ld a,l			;6e3c
	ld a,(0c1f3h)		;6e3d
	dec a			;6e40
	xor b			;6e41
	jp nc,01bb6h		;6e42
	jp p,0a7c1h		;6e45
	sub l			;6e48
	rlca			;6e49
	xor a			;6e4a
	djnz $+22		;6e4b
	xor l			;6e4d
	ld a,l			;6e4e
	call 0d151h		;6e4f
	djnz l6ea4h		;6e52
	ld b,a			;6e54
	ld a,(01251h)		;6e55
	sub b			;6e58
	ret z			;6e59
	rst 10h			;6e5a
	ld (hl),d		;6e5b
	ld e,e			;6e5c
	ret			;6e5d
	ld d,d			;6e5e
	ld a,(0d944h)		;6e5f
	ld d,(hl)		;6e62
	call m,0c0b9h		;6e63
	ld d,b			;6e66
	jr c,l6e18h		;6e67
	ld a,l			;6e69
	rst 8			;6e6a
	defb 0ddh,0a9h,006h ;illegal sequence	;6e6b
	ld bc,012d2h		;6e6e
	adc a,b			;6e71
	ret			;6e72
	ex af,af'		;6e73
	cp e			;6e74
	ld (bc),a		;6e75
	ex af,af'		;6e76
	halt			;6e77
	inc bc			;6e78
	ex af,af'		;6e79
	inc b			;6e7a
	defb 0edh ;next byte illegal after ed	;6e7b
	ex af,af'		;6e7c
	dec b			;6e7d
	ex af,af'		;6e7e
	or c			;6e7f
	ld e,c			;6e80
	ret z			;6e81
	jp 0835eh		;6e82
	rst 0			;6e85
	jp 04023h		;6e86
	dec de			;6e89
	ret			;6e8a
	adc a,c			;6e8b
	ld (bc),a		;6e8c
	dec d			;6e8d
	nop			;6e8e
l6e8fh:
	call c,02863h		;6e8f
	defb 0ddh,095h ;sub ixl	;6e92
	ld a,(bc)		;6e94
	and 04ch		;6e95
	ex (sp),hl		;6e97
	rrca			;6e98
	ld l,e			;6e99
	rrca			;6e9a
	rrca			;6e9b
	ld c,00ah		;6e9c
	rrca			;6e9e
	ld (de),a		;6e9f
	sub e			;6ea0
	inc sp			;6ea1
	ld b,079h		;6ea2
l6ea4h:
	djnz l6eb5h		;6ea4
	djnz $-118		;6ea6
	dec l			;6ea8
	ld b,008h		;6ea9
	rst 38h			;6eab
	ld de,00ff0h		;6eac
l6eafh:
	ld hl,02fbbh		;6eaf
	ld b,004h		;6eb2
	ld a,(bc)		;6eb4
l6eb5h:
	inc c			;6eb5
	rrca			;6eb6
	ret po			;6eb7
	xor e			;6eb8
	ld c,a			;6eb9
	ld sp,00206h		;6eba
	rrca			;6ebd
	inc hl			;6ebe
	in a,(037h)		;6ebf
	and l			;6ec1
	and e			;6ec2
	inc c			;6ec3
	ld a,(bc)		;6ec4
	defb 0fdh,00eh,00fh ;illegal sequence	;6ec5
	add a,(hl)		;6ec8
	rst 10h			;6ec9
	ld (hl),e		;6eca
	ld hl,(03c6dh)		;6ecb
	rst 38h			;6ece
	ld c,a			;6ecf
	ld e,0d6h		;6ed0
	rrca			;6ed2
	call sub_4f64h		;6ed3
	ld c,a			;6ed6
	ld (de),a		;6ed7
	ccf			;6ed8
	nop			;6ed9
	ld l,a			;6eda
	ld d,a			;6edb
	dec c			;6edc
	rrca			;6edd
	add a,h			;6ede
	xor a			;6edf
l6ee0h:
	ld l,d			;6ee0
	inc d			;6ee1
	ld sp,00fe8h		;6ee2
	ld h,h			;6ee5
	call c,08304h		;6ee6
	dec sp			;6ee9
	inc h			;6eea
	inc h			;6eeb
	ld d,0b1h		;6eec
	ld c,(hl)		;6eee
	ld bc,0c90fh		;6eef
	and e			;6ef2
	ld b,l			;6ef3
	ld b,018h		;6ef4
	or c			;6ef6
	rla			;6ef7
	rrca			;6ef8
	ld b,e			;6ef9
	ld (hl),l		;6efa
	call c,00f38h		;6efb
	ld c,01ah		;6efe
	rst 38h			;6f00
	ld c,a			;6f01
	add a,b			;6f02
	dec a			;6f03
	nop			;6f04
	add a,d			;6f05
	ld b,a			;6f06
	nop			;6f07
	ld l,(hl)		;6f08
	sub b			;6f09
	ld (bc),a		;6f0a
	adc a,h			;6f0b
	ld (bc),a		;6f0c
	ld a,b			;6f0d
	inc bc			;6f0e
l6f0fh:
	ld (hl),b		;6f0f
	nop			;6f10
	ld a,l			;6f11
	ld bc,l6c70h		;6f12
	jp m,08e80h		;6f15
	ld (l5024h),a		;6f18
	add a,d			;6f1b
	ld (bc),a		;6f1c
	ld d,b			;6f1d
	ld (bc),a		;6f1e
	ld l,(hl)		;6f1f
	sbc a,h			;6f20
	ld (bc),a		;6f21
	inc a			;6f22
	dec b			;6f23
	inc h			;6f24
	ld e,d			;6f25
	ld (bc),a		;6f26
	ld h,h			;6f27
	djnz l6fa2h		;6f28
	inc bc			;6f2a
	inc d			;6f2b
	ld d,b			;6f2c
	adc a,h			;6f2d
	sub (hl)		;6f2e
	ld d,b			;6f2f
	sub (hl)		;6f30
	ld (l4610h),a		;6f31
	cpl			;6f34
	and c			;6f35
	nop			;6f36
	sub (hl)		;6f37
	ld (de),a		;6f38
	ld (08c30h),a		;6f39
	ld (bc),a		;6f3c
	ld b,b			;6f3d
	ld (bc),a		;6f3e
	rst 0			;6f3f
	ex af,af'		;6f40
	ld (0040bh),a		;6f41
l6f44h:
	inc a			;6f44
	ld e,d			;6f45
	dec bc			;6f46
	sub (hl)		;6f47
	dec b			;6f48
	jr nc,l6fafh		;6f49
	ld (l7440h),a		;6f4b
	ld (bc),a		;6f4e
	dec b			;6f4f
	adc a,c			;6f50
	add a,h			;6f51
	ld (bc),a		;6f52
	ld a,b			;6f53
	dec bc			;6f54
	in a,(078h)		;6f55
	dec b			;6f57
	inc h			;6f58
	ld e,a			;6f59
	ld h,h			;6f5a
	ld e,a			;6f5b
	ld d,e			;6f5c
	inc b			;6f5d
	jr z,l6ee0h		;6f5e
	ld (hl),l		;6f60
	sub (hl)		;6f61
	ld b,b			;6f62
	add a,a			;6f63
	ld b,h			;6f64
	jr nc,l6fcfh		;6f65
l6f67h:
	cpl			;6f67
	ld a,b			;6f68
	nop			;6f69
	inc a			;6f6a
	jr nc,l6fd6h		;6f6b
	ld e,030h		;6f6d
	add a,h			;6f6f
	ld d,b			;6f70
	jr nc,l6fa2h		;6f71
	ld l,(hl)		;6f73
	adc a,h			;6f74
	dec bc			;6f75
	ld de,0be85h		;6f76
	ld h,028h		;6f79
	ld bc,01453h		;6f7b
	xor d			;6f7e
l6f7fh:
	inc a			;6f7f
	sub d			;6f80
	dec b			;6f81
	ld e,005h		;6f82
	ld d,b			;6f84
	dec b			;6f85
	ld d,d			;6f86
	adc a,h			;6f87
	dec b			;6f88
	ld b,a			;6f89
	ld l,002h		;6f8a
	pop de			;6f8c
	dec b			;6f8d
	inc d			;6f8e
	ld b,b			;6f8f
	ld a,005h		;6f90
	inc de			;6f92
	or h			;6f93
	ld e,005h		;6f94
	jr z,l6fa3h		;6f96
	ld e,b			;6f98
	cp (hl)			;6f99
	dec b			;6f9a
	ld a,(bc)		;6f9b
	sub b			;6f9c
	dec bc			;6f9d
	ld b,(hl)		;6f9e
	dec b			;6f9f
	inc b			;6fa0
	ld b,b			;6fa1
l6fa2h:
	inc a			;6fa2
l6fa3h:
	inc bc			;6fa3
	ex af,af'		;6fa4
	ld b,b			;6fa5
	dec l			;6fa6
	ld h,h			;6fa7
	ld b,b			;6fa8
	ld c,e			;6fa9
l6faah:
	cpl			;6faa
l6fabh:
	inc b			;6fab
	jr z,$+50		;6fac
sub_6faeh:
	ld b,c			;6fae
l6fafh:
	ld a,046h		;6faf
	inc d			;6fb1
	ld b,(hl)		;6fb2
	jr nc,l7000h		;6fb3
	jr c,l6f7fh		;6fb5
	ld h,d			;6fb7
	dec l			;6fb8
	ld (bc),a		;6fb9
	ld c,b			;6fba
	jr z,l6fbfh		;6fbb
	ld e,002h		;6fbd
l6fbfh:
	inc d			;6fbf
	ld a,(bc)		;6fc0
	ld (02450h),hl		;6fc1
	rlc b			;6fc4
	djnz l6fd8h		;6fc6
	ld d,b			;6fc8
	nop			;6fc9
	add hl,bc		;6fca
	ld d,b			;6fcb
	ld a,(de)		;6fcc
	ld d,b			;6fcd
	and h			;6fce
l6fcfh:
	ex af,af'		;6fcf
	dec bc			;6fd0
	ld a,(bc)		;6fd1
	ld (bc),a		;6fd2
	call m,0146ah		;6fd3
l6fd6h:
	ex af,af'		;6fd6
	nop			;6fd7
l6fd8h:
	ld (bc),a		;6fd8
	ld h,h			;6fd9
	ret p			;6fda
	dec b			;6fdb
	inc hl			;6fdc
	djnz l6f67h		;6fdd
	ld (bc),a		;6fdf
	jr nz,l701ah		;6fe0
	dec b			;6fe2
	jr $-30			;6fe3
	jr z,l6fcfh		;6fe5
	ld a,b			;6fe7
	dec e			;6fe8
	cp c			;6fe9
	sub c			;6fea
	call pe,003b9h		;6feb
	in a,(096h)		;6fee
	add a,b			;6ff0
	sub (iy+034h)		;6ff1
	add hl,hl		;6ff4
	ld (bc),a		;6ff5
	ld c,0d3h		;6ff6
	ld c,004h		;6ff8
	jp nz,080c8h		;6ffa
	call po,0be62h		;6ffd
l7000h:
	add a,b			;7000
	ld h,d			;7001
l7002h:
	xor a			;7002
	ld bc,0a8e0h		;7003
	ld sp,002a0h		;7006
	and b			;7009
	ld b,(hl)		;700a
	and b			;700b
	sbc a,e			;700c
	inc a			;700d
	and b			;700e
	adc a,d			;700f
	ld b,d			;7010
	and b			;7011
	adc a,h			;7012
	ld l,(hl)		;7013
	ld c,c			;7014
	ld a,l			;7015
	ld (hl),h		;7016
	sub c			;7017
	ld a,(de)		;7018
	add a,h			;7019
l701ah:
	ld a,(de)		;701a
	ld (0b68fh),hl		;701b
	add hl,hl		;701e
	add a,b			;701f
	ld h,h			;7020
	dec b			;7021
	or c			;7022
	add hl,hl		;7023
l7024h:
	dec e			;7024
	xor (hl)		;7025
	add hl,sp		;7026
	dec b			;7027
	ld c,c			;7028
l7029h:
	ld (01b05h),a		;7029
	cp l			;702c
	inc d			;702d
	ld hl,00832h		;702e
	xor d			;7031
	ld c,d			;7032
	ld b,d			;7033
	rst 20h			;7034
	sub d			;7035
	xor d			;7036
	jr c,l703eh		;7037
	jr z,l7040h		;7039
	ld c,b			;703b
	ld l,0deh		;703c
l703eh:
	ld e,015h		;703e
l7040h:
	ld d,b			;7040
	jp nc,00542h		;7041
	ld de,034a1h		;7044
	dec b			;7047
	jr z,l7002h		;7048
	dec b			;704a
	ld de,0dc38h		;704b
	inc h			;704e
	dec b			;704f
	ld e,h			;7050
	ld a,(de)		;7051
	inc hl			;7052
	dec bc			;7053
	ld (de),a		;7054
	ld l,(hl)		;7055
	inc d			;7056
	dec b			;7057
	djnz l705fh		;7058
l705ah:
	ld c,c			;705a
	ld a,(bc)		;705b
	add hl,hl		;705c
	djnz l7076h		;705d
l705fh:
	ld a,(bc)		;705f
	dec bc			;7060
	cp b			;7061
	dec b			;7062
	and 0c4h		;7063
	dec b			;7065
	ld h,h			;7066
	dec b			;7067
	inc h			;7068
	inc bc			;7069
	jr nz,l70dah		;706a
	dec a			;706c
l706dh:
	jr nz,l70e9h		;706d
	inc a			;706f
	rst 0			;7070
	jr z,l70f0h		;7071
	and 039h		;7073
	inc h			;7075
l7076h:
	jr nc,l705ah		;7076
	dec b			;7078
	call pe,sub_7811h	;7079
	sbc a,c			;707c
	ld de,01184h		;707d
l7080h:
	ex af,af'		;7080
	jp z,00520h		;7081
	ld e,b			;7084
	jr nz,l7092h		;7085
	dec b			;7087
	djnz l7024h		;7088
	dec b			;708a
	djnz l7092h		;708b
	add a,b			;708d
	in a,(005h)		;708e
	dec sp			;7090
	ld d,b			;7091
l7092h:
	ld sp,l7e05h		;7092
	dec b			;7095
	ld b,b			;7096
	ld h,05ah		;7097
	rra			;7099
	jr nz,$+94		;709a
	ld (02004h),a		;709c
	ld c,d			;709f
	ld h,h			;70a0
	nop			;70a1
	jr z,l70a6h		;70a2
	inc d			;70a4
	ld d,b			;70a5
l70a6h:
	ld e,d			;70a6
	call nc,0230bh		;70a7
	ret po			;70aa
	add a,008h		;70ab
	or 064h			;70ad
	defb 0edh ;next byte illegal after ed	;70af
	ret po			;70b0
	ld h,l			;70b1
	nop			;70b2
	ret c			;70b3
	ld e,062h		;70b4
	jr nz,l70bah		;70b6
	rst 20h			;70b8
	ld (bc),a		;70b9
l70bah:
	ld (hl),b		;70ba
	call pe,0ba05h		;70bb
	pop hl			;70be
	ld c,0bfh		;70bf
	ld (bc),a		;70c1
	ld (00bddh),a		;70c2
	ld b,a			;70c5
	ld bc,00ed3h		;70c6
	ret po			;70c9
	adc a,b			;70ca
	or h			;70cb
	jr nz,$-78		;70cc
	sbc a,c			;70ce
	ld (0999ch),hl		;70cf
	ld b,b			;70d2
	adc a,e			;70d3
	inc d			;70d4
	add a,b			;70d5
	xor l			;70d6
	sub h			;70d7
	dec (hl)		;70d8
	add a,d			;70d9
l70dah:
	ld (bc),a		;70da
	sub l			;70db
	ld d,h			;70dc
	jp c,00241h		;70dd
	ld h,h			;70e0
	sub (hl)		;70e1
	nop			;70e2
	ld e,d			;70e3
	adc a,d			;70e4
	inc h			;70e5
	rst 30h			;70e6
	sub e			;70e7
	add a,d			;70e8
l70e9h:
	ld c,c			;70e9
	adc a,d			;70ea
	add a,044h		;70eb
l70edh:
	adc a,(hl)		;70ed
	out (002h),a		;70ee
l70f0h:
	ld (08005h),a		;70f0
	ld a,(bc)		;70f3
	inc e			;70f4
	jr nc,l70f7h		;70f5
l70f7h:
	ld de,0e034h		;70f7
	rst 20h			;70fa
	and a			;70fb
	ld e,b			;70fc
	defb 0cbh,030h ;sli b	;70fd
	ld bc,02205h		;70ff
	ld b,b			;7102
	dec b			;7103
	ld h,040h		;7104
	ld a,(bc)		;7106
	dec b			;7107
	daa			;7108
	nop			;7109
	dec b			;710a
	inc d			;710b
	dec b			;710c
	jr l711ah		;710d
	inc d			;710f
	adc a,e			;7110
	dec b			;7111
	rlca			;7112
	ld (01108h),hl		;7113
	sub l			;7116
	rst 38h			;7117
	ex af,af'		;7118
	ld (bc),a		;7119
l711ah:
	sub c			;711a
	rst 28h			;711b
	pop bc			;711c
	jp nc,0054ch		;711d
	ld b,h			;7120
	xor d			;7121
	ld l,h			;7122
	ld (de),a		;7123
	inc bc			;7124
	jr nz,l71a3h		;7125
	call po,0d202h		;7127
	ld a,(bc)		;712a
	jr nz,l719dh		;712b
	inc a			;712d
	call pe,0f329h		;712e
	ld (de),a		;7131
	ret c			;7132
	ld e,a			;7133
	or 005h			;7134
	dec sp			;7136
	and 03ch		;7137
	dec b			;7139
	xor c			;713a
	add a,a			;713b
	jp m,02008h		;713c
	ld e,008h		;713f
	inc h			;7141
	or h			;7142
	jr nc,l7179h		;7143
	and (hl)		;7145
	and c			;7146
	ld (de),a		;7147
	inc d			;7148
	dec b			;7149
	jr c,l70edh		;714a
	add a,d			;714c
	jr nz,$+72		;714d
	ld b,h			;714f
	inc d			;7150
	ld h,h			;7151
	djnz $+72		;7152
	cp c			;7154
	inc h			;7155
	ld d,b			;7156
	ld c,028h		;7157
l7159h:
	ld (bc),a		;7159
	ld b,d			;715a
	ld d,d			;715b
	jr z,l716fh		;715c
	dec bc			;715e
	ld b,(hl)		;715f
	or (hl)			;7160
	inc h			;7161
	ld d,b			;7162
	or (hl)			;7163
	ld b,c			;7164
	ccf			;7165
	call c,sub_6180h	;7166
	ex af,af'		;7169
	dec h			;716a
	ld b,(hl)		;716b
	ex af,af'		;716c
	dec (hl)		;716d
	add a,d			;716e
l716fh:
	add a,c			;716f
	ld d,a			;7170
	ret z			;7171
	jr nc,$-58		;7172
	ld a,020h		;7174
	ld a,(bc)		;7176
l7177h:
	ld a,0ech		;7177
l7179h:
	ld a,b			;7179
	jr nc,l7177h		;717a
	call z,00b05h		;717c
	ld l,d			;717f
	jp m,01c08h		;7180
	ex af,af'		;7183
l7184h:
	adc a,d			;7184
	cpl			;7185
	jr nc,l71b7h		;7186
	ex af,af'		;7188
	ld b,a			;7189
	sub b			;718a
	dec b			;718b
	jp m,01c05h		;718c
l718fh:
	ld b,b			;718f
	inc e			;7190
	ld c,c			;7191
	jr $+94			;7192
	ld h,005h		;7194
	ld c,005h		;7196
	inc h			;7198
	ld (01905h),hl		;7199
l719ch:
	dec b			;719c
l719dh:
	rst 38h			;719d
	xor e			;719e
l719fh:
	dec b			;719f
	and d			;71a0
	ret pe			;71a1
	dec hl			;71a2
l71a3h:
	jr nc,l7159h		;71a3
	call z,0382ah		;71a5
	and d			;71a8
	inc l			;71a9
	ld (bc),a		;71aa
l71abh:
	ex af,af'		;71ab
	ld l,d			;71ac
	ld d,b			;71ad
	ex af,af'		;71ae
	xor d			;71af
	out (064h),a		;71b0
	or h			;71b2
	ld (bc),a		;71b3
	ret z			;71b4
	sub d			;71b5
	ld (bc),a		;71b6
l71b7h:
	cp (hl)			;71b7
	rst 38h			;71b8
	ld h,d			;71b9
	dec e			;71ba
	ret z			;71bb
	dec e			;71bc
	ld (0a0dch),hl		;71bd
	call nc,01e51h		;71c0
	ex (sp),hl		;71c3
	ld (bc),a		;71c4
	call 00b17h		;71c5
	call nc,0d5e3h		;71c8
	xor (hl)		;71cb
	or d			;71cc
	ld (bc),a		;71cd
	inc d			;71ce
	ld de,08494h		;71cf
	ld c,h			;71d2
	ret z			;71d3
	ld (bc),a		;71d4
	jp nc,0c405h		;71d5
l71d8h:
	dec e			;71d8
	ld l,005h		;71d9
l71dbh:
	ld h,b			;71db
	ld sp,0cd50h		;71dc
	ex af,af'		;71df
	or (hl)			;71e0
	ld de,028a9h		;71e1
	ex af,af'		;71e4
	inc a			;71e5
	dec b			;71e6
	ld d,032h		;71e7
	cp 008h			;71e9
	jr nz,l7232h		;71eb
	dec bc			;71ed
	call c,0a1ech		;71ee
	cpl			;71f1
	inc d			;71f2
	ld d,d			;71f3
	dec bc			;71f4
	jr z,l718fh		;71f5
	jr c,l71abh		;71f7
	adc a,b			;71f9
	ret m			;71fa
	jr z,$-102		;71fb
	pop hl			;71fd
	ld (01198h),a		;71fe
	ld h,028h		;7201
	ei			;7203
	ld (de),a		;7204
	call c,0c908h		;7205
	ld c,002h		;7208
	jp z,09111h		;720a
	ld (bc),a		;720d
l720eh:
	and 01eh		;720e
	dec e			;7210
	ld c,h			;7211
	ld (bc),a		;7212
	call nc,0e117h		;7213
	ld de,01128h		;7216
	jp nz,00234h		;7219
	ld h,l			;721c
	jp z,0d311h		;721d
	add a,h			;7220
	call c,09e32h		;7221
	ld c,b			;7224
	ld b,(hl)		;7225
	sbc a,(hl)		;7226
l7227h:
	adc a,b			;7227
	inc d			;7228
	and b			;7229
	inc d			;722a
	and b			;722b
	call c,0eda8h		;722c
	jp nc,0a0fah		;722f
l7232h:
	ex af,af'		;7232
	ld (bc),a		;7233
	ld l,(hl)		;7234
	jr z,$-110		;7235
	ld d,b			;7237
	sub d			;7238
	ld (bc),a		;7239
	ld b,h			;723a
	ld (bc),a		;723b
	jr c,l7240h		;723c
	ld c,b			;723e
	inc l			;723f
l7240h:
	ld (bc),a		;7240
	jr nz,l7245h		;7241
	inc d			;7243
	inc d			;7244
l7245h:
	inc h			;7245
	sub b			;7246
	ex af,af'		;7247
	ld (bc),a		;7248
	call nz,0fc08h		;7249
	sub d			;724c
	ld (bc),a		;724d
	ret p			;724e
	ld (bc),a		;724f
	call po,sub_6202h	;7250
	ret c			;7253
	dec b			;7254
	ld bc,01205h		;7255
	ld h,h			;7258
	or b			;7259
	ld h,h			;725a
	ld (bc),a		;725b
	ld b,(hl)		;725c
	ld (bc),a		;725d
	ld d,d			;725e
	jr z,l7263h		;725f
	rst 8			;7261
	dec bc			;7262
l7263h:
	or b			;7263
	call pe,0383ch		;7264
	ld (bc),a		;7267
	inc e			;7268
	ld b,c			;7269
	ld (bc),a		;726a
	jr c,$+52		;726b
	ld (bc),a		;726d
	ld e,b			;726e
	scf			;726f
	ld b,a			;7270
	ld (bc),a		;7271
	ld bc,026b1h		;7272
	ld c,l			;7275
	ld bc,l7029h		;7276
	dec b			;7279
	jr z,l72c6h		;727a
	inc hl			;727c
	ld d,(hl)		;727d
l727eh:
	ld e,056h		;727e
l7280h:
	ex af,af'		;7280
	and d			;7281
	ret m			;7282
	ld e,c			;7283
	call nz,01905h		;7284
	dec b			;7287
	add hl,de		;7288
	ex de,hl		;7289
	ld h,d			;728a
	ld (bc),a		;728b
	ld d,h			;728c
	ld d,l			;728d
	ld (bc),a		;728e
	or l			;728f
	ret nc			;7290
	rla			;7291
	ld (hl),b		;7292
	inc bc			;7293
	push af			;7294
	inc hl			;7295
	add a,b			;7296
	dec h			;7297
	push af			;7298
	add a,d			;7299
	ret z			;729a
	jr c,l7227h		;729b
	ld d,l			;729d
	call c,08908h		;729e
	ld l,008h		;72a1
	ld (hl),008h		;72a3
	dec l			;72a5
	cp 09ah			;72a6
	inc h			;72a8
	or h			;72a9
	adc a,d			;72aa
	dec bc			;72ab
	nop			;72ac
	ld (hl),005h		;72ad
	dec bc			;72af
	ld b,a			;72b0
	rrca			;72b1
	rst 10h			;72b2
	ld l,b			;72b3
	jp nc,0f2d7h		;72b4
	ld c,d			;72b7
	cp (hl)			;72b8
	ld sp,hl		;72b9
	ld h,d			;72ba
	xor b			;72bb
	dec hl			;72bc
	ld d,b			;72bd
	sub (hl)		;72be
	ld e,c			;72bf
	ld b,(hl)		;72c0
	pop bc			;72c1
	and l			;72c2
	jr nc,l731fh		;72c3
	dec bc			;72c5
l72c6h:
	xor d			;72c6
	inc d			;72c7
	ld (bc),a		;72c8
	sbc a,h			;72c9
	sub l			;72ca
	ld (bc),a		;72cb
	ld (hl),0d8h		;72cc
	ld hl,(0ff01h)		;72ce
	ld e,b			;72d1
	inc hl			;72d2
	xor h			;72d3
	ld e,0a0h		;72d4
	rst 28h			;72d6
	ld l,020h		;72d7
	inc b			;72d9
	sbc a,(hl)		;72da
	rla			;72db
	jr nz,l7280h		;72dc
	inc h			;72de
	dec b			;72df
	ccf			;72e0
	inc h			;72e1
	jr nz,l727eh		;72e2
	ld (bc),a		;72e4
	and h			;72e5
	ex af,af'		;72e6
	adc a,d			;72e7
	adc a,d			;72e8
	ld (bc),a		;72e9
	sub h			;72ea
	dec c			;72eb
	ex af,af'		;72ec
	add a,b			;72ed
	inc h			;72ee
	adc a,h			;72ef
	add a,b			;72f0
	ld c,h			;72f1
	ld a,e			;72f2
	sub b			;72f3
	ld de,00e9dh		;72f4
	add a,b			;72f7
	ld de,02c1ah		;72f8
	ld l,0b5h		;72fb
	di			;72fd
	dec e			;72fe
	sub c			;72ff
l7300h:
	ld c,l			;7300
l7301h:
	add a,d			;7301
	ld c,l			;7302
	adc a,h			;7303
	ld h,h			;7304
l7305h:
	ld (bc),a		;7305
	or a			;7306
	rst 28h			;7307
	ld e,h			;7308
	dec b			;7309
	dec bc			;730a
	djnz l7385h		;730b
	ret z			;730d
	dec b			;730e
	add hl,de		;730f
	ld d,b			;7310
	ld (hl),e		;7311
	ret po			;7312
	ld (bc),a		;7313
	ld l,c			;7314
	ld e,a			;7315
	ld (de),a		;7316
	ld d,b			;7317
	ld a,l			;7318
	add hl,de		;7319
	ld (bc),a		;731a
	ld b,c			;731b
	dec bc			;731c
	pop hl			;731d
	add hl,hl		;731e
l731fh:
	and b			;731f
	dec e			;7320
	rla			;7321
	xor d			;7322
	jp m,00002h		;7323
	rst 38h			;7326
	call m,03470h		;7327
	nop			;732a
	nop			;732b
	nop			;732c
l732dh:
	jp l4b93h		;732d
	inc b			;7330
	ex af,af'		;7331
	ex af,af'		;7332
	inc b			;7333
	inc b			;7334
	ld bc,00303h		;7335
	rlca			;7338
	nop			;7339
	jp m,00001h		;733a
	nop			;733d
l733eh:
	inc c			;733e
	ex af,af'		;733f
	inc c			;7340
	nop			;7341
	nop			;7342
	ld (bc),a		;7343
	ret nz			;7344
	ret nz			;7345
	ret z			;7346
	jp nz,03cf8h		;7347
	rlca			;734a
	jr nc,$+98		;734b
	nop			;734d
	inc bc			;734e
	ld h,b			;734f
	jr l7372h		;7350
	inc e			;7352
	ld c,015h		;7353
	ld e,020h		;7355
	rra			;7357
	rla			;7358
	ld b,003h		;7359
	rrca			;735b
	ld c,01ch		;735c
	jr l737fh		;735e
	ret nz			;7360
	nop			;7361
	ret po			;7362
	ret p			;7363
	call p,00fdeh		;7364
	scf			;7367
	rst 38h			;7368
	ret m			;7369
	ld a,(bc)		;736a
	ld b,b			;736b
	sub b			;736c
	dec b			;736d
	nop			;736e
	defb 0fdh,001h,04eh ;illegal sequence	;736f
l7372h:
	rlca			;7372
	inc c			;7373
	djnz l7395h		;7374
	ld h,b			;7376
	ccf			;7377
	jp p,03ffch		;7378
	cp 01eh			;737b
	cp (hl)			;737d
	ret nz			;737e
l737fh:
	nop			;737f
	ld b,b			;7380
	ld (bc),a		;7381
	djnz l73c3h		;7382
	rra			;7384
l7385h:
	ld e,h			;7385
	rlca			;7386
	ld bc,0381ch		;7387
	jr nc,l738ch		;738a
l738ch:
	nop			;738c
	ld (0f6d8h),hl		;738d
	ld (iy+078h),e		;7390
	inc b			;7393
	ccf			;7394
l7395h:
	ld b,c			;7395
	dec sp			;7396
	ld bc,000f2h		;7397
	ld (bc),a		;739a
	rrca			;739b
	halt			;739c
	ccf			;739d
	call pe,0e251h		;739e
	ld h,c			;73a1
	add a,b			;73a2
	ld (hl),d		;73a3
	ccf			;73a4
	ld (hl),b		;73a5
	ret nc			;73a6
	ccf			;73a7
	jr $+65			;73a8
	jr c,l73c0h		;73aa
	ld e,00fh		;73ac
l73aeh:
	rlca			;73ae
	inc c			;73af
	ccf			;73b0
	ld bc,l7c40h		;73b1
	ld a,(hl)		;73b4
	rra			;73b5
	add a,b			;73b6
	ld d,008h		;73b7
	ld a,0ffh		;73b9
	nop			;73bb
l73bch:
	call po,05a00h		;73bc
	rra			;73bf
l73c0h:
	nop			;73c0
	rst 38h			;73c1
	inc bc			;73c2
l73c3h:
	add hl,bc		;73c3
	ld a,h			;73c4
	add hl,bc		;73c5
	inc bc			;73c6
	rst 38h			;73c7
	rra			;73c8
	or b			;73c9
	ld h,h			;73ca
	jr nc,l741dh		;73cb
	cp b			;73cd
	nop			;73ce
	call nc,0d8dah		;73cf
	djnz l73bch		;73d2
l73d4h:
	djnz l73aeh		;73d4
	jp c,0d41ch		;73d6
	cp b			;73d9
	ld d,b			;73da
	ld c,e			;73db
	daa			;73dc
	inc bc			;73dd
	jr nz,l741ch		;73de
	dec e			;73e0
	ld a,d			;73e1
	nop			;73e2
	ret nc			;73e3
	nop			;73e4
	ret pe			;73e5
	ld d,0e8h		;73e6
	jr l73d4h		;73e8
	call nc,0d0e8h		;73ea
	jp pe,0000fh		;73ed
	inc bc			;73f0
	rlca			;73f1
	ld a,a			;73f2
	rst 38h			;73f3
	ld a,a			;73f4
	rrca			;73f5
	inc bc			;73f6
	ld c,0c0h		;73f7
	and b			;73f9
	xor b			;73fa
	daa			;73fb
	call nc,01ed6h		;73fc
	ret po			;73ff
	ld c,07ch		;7400
	ld h,c			;7402
	inc sp			;7403
	inc a			;7404
	ld b,b			;7405
	rrca			;7406
	and (hl)		;7407
	ld d,b			;7408
	ld e,033h		;7409
	jr l7450h		;740b
	ld e,l			;740d
	sbc a,(hl)		;740e
	nop			;740f
	add hl,de		;7410
	inc a			;7411
	nop			;7412
	dec c			;7413
	ex (sp),hl		;7414
	rrca			;7415
	ret pe			;7416
	ld bc,000e3h		;7417
	rlca			;741a
	push bc			;741b
l741ch:
	add a,b			;741c
l741dh:
	nop			;741d
	rst 0			;741e
	rlca			;741f
	adc a,a			;7420
	ccf			;7421
	rst 18h			;7422
	nop			;7423
	ret m			;7424
	jr nz,l7457h		;7425
	inc e			;7427
	dec b			;7428
	dec d			;7429
	dec (hl)		;742a
	ld (de),a		;742b
	dec d			;742c
	dec b			;742d
	inc e			;742e
	cp e			;742f
	call c,0a0dfh		;7430
	ret p			;7433
	call m,sub_7bf0h	;7434
	ret nz			;7437
	dec h			;7438
	nop			;7439
	ld (bc),a		;743a
	ld e,c			;743b
	sub e			;743c
	or (hl)			;743d
	rst 8			;743e
	ld h,c			;743f
l7440h:
	ex af,af'		;7440
	pop af			;7441
	djnz l7452h		;7442
	ld b,b			;7444
	ld a,(0ec57h)		;7445
	ld a,a			;7448
	jp 0f060h		;7449
	ret p			;744c
	ld h,b			;744d
	ld e,(hl)		;744e
	rst 20h			;744f
l7450h:
	and d			;7450
	sub (hl)		;7451
l7452h:
	sub l			;7452
	add a,(hl)		;7453
	jr nc,l7456h		;7454
l7456h:
	ld c,l			;7456
l7457h:
	and (hl)		;7457
	and d			;7458
	inc l			;7459
	jp 0385ch		;745a
	jr l746bh		;745d
	nop			;745f
	ld c,018h		;7460
	jr c,l74c7h		;7462
	ld b,b			;7464
	inc bc			;7465
	inc c			;7466
	inc de			;7467
	rla			;7468
	ld l,02ch		;7469
l746bh:
	rlca			;746b
	inc l			;746c
	ld l,017h		;746d
	inc de			;746f
	inc c			;7470
	rra			;7471
	jr nz,$+50		;7472
	ret z			;7474
	ret pe			;7475
	ld (hl),h		;7476
	inc (hl)		;7477
	ld b,034h		;7478
	ld (hl),h		;747a
	ret pe			;747b
	ret z			;747c
	jr nc,$+33		;747d
	ret			;747f
	ld a,01eh		;7480
	push de			;7482
	sub h			;7483
	ld (hl),b		;7484
	and l			;7485
	ld b,070h		;7486
	jr nc,l74c2h		;7488
	ld e,040h		;748a
	ret nz			;748c
	ld a,078h		;748d
	inc e			;748f
	inc c			;7490
	ld c,006h		;7491
	ld c,h			;7493
	ld b,0f3h		;7494
	inc e			;7496
	ld l,h			;7497
	ld a,b			;7498
	ld b,b			;7499
	ld a,011h		;749a
l749ch:
	nop			;749c
	ld h,028h		;749d
	ld c,b			;749f
	ld d,b			;74a0
	ld d,b			;74a1
	ld c,b			;74a2
	jr z,$+40		;74a3
	ld l,h			;74a5
	ld de,03e40h		;74a6
l74a9h:
	adc a,b			;74a9
	nop			;74aa
l74abh:
	ld h,h			;74ab
	inc d			;74ac
	ld (de),a		;74ad
	ld a,(bc)		;74ae
	ld a,(bc)		;74af
	ld (de),a		;74b0
	inc d			;74b1
	ld h,h			;74b2
l74b3h:
	ld h,l			;74b3
	adc a,b			;74b4
	ld b,b			;74b5
	push bc			;74b6
	dec d			;74b7
	sbc a,h			;74b8
	inc c			;74b9
	jr nz,l751ch		;74ba
	ret nz			;74bc
	nop			;74bd
	nop			;74be
	ld h,b			;74bf
	jr nz,l74c2h		;74c0
l74c2h:
	inc c			;74c2
	rlca			;74c3
	inc bc			;74c4
	ret nz			;74c5
	ret po			;74c6
l74c7h:
	ld d,b			;74c7
	jr nc,l749ch		;74c8
	ld b,061h		;74ca
	inc bc			;74cc
	nop			;74cd
	ld b,004h		;74ce
	ld sp,hl		;74d0
	djnz l74b3h		;74d1
	ret nz			;74d3
	inc bc			;74d4
	ld b,(hl)		;74d5
l74d6h:
	inc b			;74d6
	jp z,0cacah		;74d7
	xor c			;74da
	ld b,b			;74db
	call pe,01f6ah		;74dc
	dec h			;74df
	ex de,hl		;74e0
	ld (l55eah),a		;74e1
	ld (bc),a		;74e4
	ex af,af'		;74e5
	add a,b			;74e6
	jr nz,l74a9h		;74e7
	rst 38h			;74e9
	ld a,b			;74ea
	ld a,a			;74eb
	nop			;74ec
	ld bc,l477ch		;74ed
	ld b,c			;74f0
	inc e			;74f1
	rst 38h			;74f2
	cp e			;74f3
	push af			;74f4
	jr nc,l7544h		;74f5
	ex af,af'		;74f7
	ld e,(hl)		;74f8
	ld b,0ffh		;74f9
	nop			;74fb
	ld sp,hl		;74fc
	rst 38h			;74fd
	ld (hl),079h		;74fe
	ccf			;7500
	or b			;7501
	ld e,a			;7502
	ld d,(hl)		;7503
	inc b			;7504
	cpl			;7505
	ld h,010h		;7506
	sbc a,h			;7508
	ld (hl),b		;7509
	djnz $+129		;750a
	and h			;750c
	ld bc,l6100h		;750d
	inc l			;7510
	ld b,h			;7511
	jr z,l7592h		;7512
	ld a,03dh		;7514
	ld c,0f9h		;7516
	ret p			;7518
	nop			;7519
	nop			;751a
	jp (hl)			;751b
l751ch:
	add a,080h		;751c
	ret nz			;751e
	rst 8			;751f
	ld l,a			;7520
	ld l,a			;7521
	dec bc			;7522
	ld (hl),b		;7523
	ld a,b			;7524
	cp 0fch			;7525
	rra			;7527
	ccf			;7528
	and b			;7529
	ld (bc),a		;752a
	ld a,039h		;752b
	push af			;752d
	rra			;752e
	sub (hl)		;752f
	and h			;7530
	ld sp,l443fh		;7531
	rst 10h			;7534
	sub c			;7535
	ret nc			;7536
	rrca			;7537
	ld a,(hl)		;7538
	ld a,d			;7539
	ld bc,0863fh		;753a
	ret po			;753d
	jr nc,l7548h		;753e
	ld c,l			;7540
	nop			;7541
	push af			;7542
	cp e			;7543
l7544h:
	rst 38h			;7544
	inc e			;7545
	ld b,c			;7546
	ld b,a			;7547
l7548h:
	ld a,h			;7548
	ld bc,l7f2ah		;7549
	ld a,b			;754c
	xor a			;754d
	nop			;754e
	ld (hl),b		;754f
	sbc a,h			;7550
	djnz l7579h		;7551
	cpl			;7553
	ld d,(hl)		;7554
	ld e,a			;7555
	or b			;7556
	jr $+65			;7557
	ld a,c			;7559
	ld (hl),04ah		;755a
	ld b,0c0h		;755c
	rra			;755e
	inc b			;755f
	ld a,07eh		;7560
	ld b,h			;7562
	adc a,c			;7563
	or d			;7564
	ld h,c			;7565
	ld b,(hl)		;7566
	sbc a,c			;7567
	ld c,h			;7568
	rra			;7569
	inc b			;756a
	call m,sub_78feh	;756b
	ld (hl),b		;756e
	dec a			;756f
	rst 8			;7570
	ld bc,080c0h		;7571
	add a,0e9h		;7574
	nop			;7576
	ret p			;7577
	ld sp,hl		;7578
l7579h:
	djnz l757bh		;7579
l757bh:
	ld sp,096a4h		;757b
	push af			;757e
	add hl,sp		;757f
	ld a,002h		;7580
	jp m,0043fh		;7582
	ld bc,07e7ah		;7585
	adc a,096h		;7588
	call m,03f7dh		;758a
	rla			;758d
	cp e			;758e
	nop			;758f
	ld a,(bc)		;7590
	dec d			;7591
l7592h:
	ld hl,(l6a55h)		;7592
	ld d,l			;7595
	ld l,a			;7596
	call nc,07f3fh		;7597
	ld (de),a		;759a
	cp h			;759b
	rrca			;759c
	ld d,b			;759d
	and (hl)		;759e
	ld l,a			;759f
	sub 03fh		;75a0
	jr z,$+34		;75a2
	ld bc,0b808h		;75a4
	add a,c			;75a7
	rlca			;75a8
	ld (03038h),hl		;75a9
	inc bc			;75ac
	ccf			;75ad
	add a,b			;75ae
	nop			;75af
	adc a,(hl)		;75b0
	ret c			;75b1
	ret nc			;75b2
	cpl			;75b3
	cpl			;75b4
	ld c,a			;75b5
	call m,0993fh		;75b6
	push af			;75b9
	ld (0233dh),hl		;75ba
	ld sp,08e94h		;75bd
	ccf			;75c0
	add a,b			;75c1
	ret nz			;75c2
	xor 058h		;75c3
	djnz l75f6h		;75c5
	xor a			;75c7
	ret m			;75c8
	ccf			;75c9
	rra			;75ca
	dec b			;75cb
	ccf			;75cc
	ld b,d			;75cd
	ld (bc),a		;75ce
	push de			;75cf
	ld h,d			;75d0
	ld de,08138h		;75d1
	daa			;75d4
	nop			;75d5
	ccf			;75d6
	ld b,b			;75d7
	ld h,b			;75d8
sub_75d9h:
	ld l,018h		;75d9
	sub b			;75db
	xor a			;75dc
	ret p			;75dd
	ccf			;75de
l75dfh:
	cp a			;75df
	rst 38h			;75e0
	ret nz			;75e1
	or l			;75e2
	add a,b			;75e3
	dec b			;75e4
	jr l7624h		;75e5
	defb 0edh ;next byte illegal after ed	;75e7
	defb 0edh ;next byte illegal after ed	;75e8
	dec a			;75e9
	and h			;75ea
	ld d,l			;75eb
	or e			;75ec
	jp po,01678h		;75ed
	ld a,(hl)		;75f0
	ld a,(hl)		;75f1
	ld a,b			;75f2
	sbc a,h			;75f3
	ret nc			;75f4
	rlca			;75f5
l75f6h:
	jr l7579h		;75f6
	nop			;75f8
	rra			;75f9
	pop af			;75fa
	sbc a,(hl)		;75fb
	inc a			;75fc
	jr l7600h		;75fd
	rrca			;75ff
l7600h:
	rst 18h			;7600
	add hl,de		;7601
	sub h			;7602
sub_7603h:
	jr c,l760dh		;7603
	add a,c			;7605
	ld d,b			;7606
	and (hl)		;7607
l7608h:
	ld d,h			;7608
	nop			;7609
	call m,01efch		;760a
l760dh:
	ld a,0edh		;760d
	jp m,034a4h		;760f
	ld d,h			;7612
	add a,09bh		;7613
	dec bc			;7615
	ld (bc),a		;7616
	rrca			;7617
	jr c,l7681h		;7618
sub_761ah:
	ld a,(hl)		;761a
	ret po			;761b
l761ch:
	adc a,(hl)		;761c
	call z,086a8h		;761d
	ret nz			;7620
	ld c,(hl)		;7621
	ld l,a			;7622
	inc d			;7623
l7624h:
	jr l762bh		;7624
	djnz l7608h		;7626
l7628h:
	or b			;7628
	ret m			;7629
	xor b			;762a
l762bh:
	rst 38h			;762b
	and b			;762c
	ld h,b			;762d
	ld (00904h),a		;762e
	ret c			;7631
	ret c			;7632
	inc c			;7633
	inc b			;7634
	jp m,0109ch		;7635
	ccf			;7638
	jr z,$-95		;7639
	ccf			;763b
	ret z			;763c
	pop bc			;763d
	dec c			;763e
	ld (de),a		;763f
	nop			;7640
	ccf			;7641
l7642h:
	ret z			;7642
	defb 0fdh,0deh,0bdh ;illegal sequence	;7643
	ld (bc),a		;7646
	ld a,l			;7647
	ld e,(hl)		;7648
	cp (hl)			;7649
	ld a,c			;764a
	rst 10h			;764b
	ex de,hl		;764c
	rrca			;764d
	pop af			;764e
	ccf			;764f
	add a,041h		;7650
	dec c			;7652
	cp c			;7653
	and (hl)		;7654
	ccf			;7655
	ret nc			;7656
	xor l			;7657
	ld h,e			;7658
	ld (bc),a		;7659
	ld (bc),a		;765a
	dec h			;765b
	ld c,l			;765c
	sbc a,(hl)		;765d
	add hl,hl		;765e
	or 082h			;765f
	jr c,l7663h		;7661
l7663h:
	ld h,c			;7663
	ret p			;7664
	add hl,sp		;7665
	ld hl,(02a35h)		;7666
	ld hl,(0b639h)		;7669
	jp po,l7c04h		;766c
	call nc,02bach		;766f
	ld d,b			;7672
	inc c			;7673
	and b			;7674
	ld d,(hl)		;7675
	xor d			;7676
	and b			;7677
	cp (hl)			;7678
	inc bc			;7679
	jr l7628h		;767a
	call nc,0a17ch		;767c
	inc d			;767f
	ld b,c			;7680
l7681h:
	ld h,b			;7681
	inc bc			;7682
	ld bc,0151fh		;7683
	ld bc,l4160h		;7686
	and b			;7689
	ld (hl),0d5h		;768a
	jp nz,0f870h		;768c
	jp nz,l5880h		;768f
	call m,sub_5854h	;7692
	adc a,b			;7695
	call m,l70f7h+1		;7696
	sub b			;7699
	call nc,00507h		;769a
	dec sp			;769d
	ld b,063h		;769e
	ccf			;76a0
	dec bc			;76a1
	ld h,e			;76a2
	ld b,005h		;76a3
	rlca			;76a5
	add a,(hl)		;76a6
	ld e,0a0h		;76a7
	ccf			;76a9
	dec h			;76aa
	and b			;76ab
	ld h,b			;76ac
	rst 38h			;76ad
	ld d,e			;76ae
	cp l			;76af
	ld a,b			;76b0
	ccf			;76b1
	xor h			;76b2
	ld bc,0d70dh		;76b3
	inc l			;76b6
	ret po			;76b7
	defb 0edh ;next byte illegal after ed	;76b8
	ccf			;76b9
	ret p			;76ba
	jp 09424h		;76bb
	ld h,b			;76be
	rrca			;76bf
	ld e,e			;76c0
	ld h,l			;76c1
	djnz l76deh		;76c2
	ld hl,(03fd5h)		;76c4
	ld a,(de)		;76c7
	ld h,l			;76c8
	ld e,e			;76c9
	ld e,d			;76ca
	rrca			;76cb
	sub e			;76cc
	nop			;76cd
	adc a,b			;76ce
	sub b			;76cf
	ld c,071h		;76d0
	inc e			;76d2
	xor b			;76d3
	ld d,a			;76d4
	ld bc,0a8a8h		;76d5
	inc e			;76d8
	ld (hl),c		;76d9
	ld c,090h		;76da
	adc a,b			;76dc
	ld (hl),c		;76dd
l76deh:
	add a,b			;76de
	add a,d			;76df
	dec c			;76e0
l76e1h:
	ld a,(de)		;76e1
l76e2h:
	dec e			;76e2
	ld d,l			;76e3
	add a,c			;76e4
	jr nz,l773ch		;76e5
	dec e			;76e7
	ld a,(de)		;76e8
	dec c			;76e9
	add a,d			;76ea
	ld c,084h		;76eb
	ld (hl),b		;76ed
	call po,08034h		;76ee
	ld c,h			;76f1
	ld d,h			;76f2
	jr nz,l7749h		;76f3
	ld b,026h		;76f5
	call po,0db70h		;76f7
	nop			;76fa
	ld e,064h		;76fb
	adc a,055h		;76fd
	add a,l			;76ff
	dec b			;7700
	dec bc			;7701
	dec bc			;7702
	ld bc,08505h		;7703
	ld d,l			;7706
	adc a,064h		;7707
	ld e,004h		;7709
	cp 040h			;770b
	ld a,(de)		;770d
	ld (hl),e		;770e
	adc a,l			;770f
	nop			;7710
	sub b			;7711
	sbc a,(hl)		;7712
	set 1,e			;7713
	sbc a,(hl)		;7715
	sub b			;7716
	adc a,l			;7717
	ld (hl),e		;7718
	ld e,c			;7719
	ld a,(de)		;771a
	add a,b			;771b
	ld (hl),b		;771c
	inc bc			;771d
	ld a,(de)		;771e
	ld a,l			;771f
	ld a,(bc)		;7720
	adc a,d			;7721
	ld (bc),a		;7722
	jp po,00260h		;7723
	adc a,d			;7726
	ld a,(bc)		;7727
	ld a,l			;7728
	ld c,b			;7729
	ld a,(de)		;772a
	and e			;772b
	add a,b			;772c
	add a,b			;772d
	ccf			;772e
	adc a,(hl)		;772f
sub_7730h:
	ld (hl),d		;7730
	ld l,b			;7731
	ld l,b			;7732
	or (hl)			;7733
	ld (hl),089h		;7734
	inc bc			;7736
	ld (hl),b		;7737
	adc a,(hl)		;7738
	ccf			;7739
	add a,b			;773a
	cp a			;773b
l773ch:
	ld (hl),h		;773c
	defb 0ddh,0d1h,09ah ;illegal sequence	;773d
	ex af,af'		;7740
	di			;7741
	di			;7742
	ret m			;7743
	defb 0fdh,0cdh,00bh ;illegal sequence	;7744
	cp d			;7747
	cp a			;7748
l7749h:
	or e			;7749
	ex de,hl		;774a
	xor e			;774b
	dec de			;774c
	rrca			;774d
	call c,00f0dh		;774e
	ld b,080h		;7751
	dec bc			;7753
	adc a,h			;7754
	or d			;7755
	cp h			;7756
	xor e			;7757
	ex af,af'		;7758
	ld h,e			;7759
	rst 30h			;775a
	cp 063h			;775b
	or (iy+00bh)		;775d
	inc d			;7760
	adc a,h			;7761
	or h			;7762
	sbc a,b			;7763
	jp m,l6f7fh		;7764
	or d			;7767
	call nz,0d000h		;7768
	dec bc			;776b
	rra			;776c
	ccf			;776d
	ccf			;776e
	ld e,019h		;776f
	ld (bc),a		;7771
	inc bc			;7772
	ld h,e			;7773
	pop de			;7774
	ld b,0f8h		;7775
	ret m			;7777
	ld a,b			;7778
	ld sp,0a8bfh		;7779
	adc a,h			;777c
	ld e,01fh		;777d
	xor e			;777f
	inc de			;7780
	dec a			;7781
	call p,07893h		;7782
	rst 0			;7785
	ld c,d			;7786
	xor d			;7787
	ld a,(bc)		;7788
	ld c,01fh		;7789
	ld c,01eh		;778b
	ld e,c			;778d
	dec bc			;778e
	ld h,07fh		;778f
	ld (hl),c		;7791
	ld (hl),b		;7792
	jp m,08edah		;7793
	ret po			;7796
	adc a,(hl)		;7797
	cp 062h			;7798
	ld h,h			;779a
	or d			;779b
	inc h			;779c
	ld b,b			;779d
	ret			;779e
	or h			;779f
	rst 38h			;77a0
	ld e,b			;77a1
	inc e			;77a2
	defb 0ddh,07ch ;ld a,ixh	;77a3
l77a5h:
	inc d			;77a5
	ld a,h			;77a6
	scf			;77a7
	inc bc			;77a8
	adc a,b			;77a9
	ld d,a			;77aa
	ld b,0e1h		;77ab
l77adh:
	ld h,01ch		;77ad
	rrca			;77af
	jr c,$+8		;77b0
	dec a			;77b2
	ld a,(hl)		;77b3
	add a,(hl)		;77b4
	inc c			;77b5
	inc l			;77b6
	ld a,018h		;77b7
	ld c,d			;77b9
	jr c,l77adh		;77ba
	adc a,b			;77bc
	inc a			;77bd
	jr c,$+23		;77be
	sbc a,b			;77c0
	sbc a,h			;77c1
	ld b,0a5h		;77c2
	daa			;77c4
	inc a			;77c5
	call po,00f74h		;77c6
	inc e			;77c9
	ret pe			;77ca
	sub b			;77cb
	push hl			;77cc
	ld h,b			;77cd
	ret po			;77ce
	sub e			;77cf
	and b			;77d0
	rrca			;77d1
	add a,c			;77d2
	ld bc,l7831h		;77d3
	ld a,c			;77d6
	add hl,bc		;77d7
	rst 38h			;77d8
	di			;77d9
	ld h,b			;77da
	ret z			;77db
	ld de,0891eh		;77dc
	ld b,l			;77df
	or (hl)			;77e0
	sub h			;77e1
	inc (hl)		;77e2
	ld (hl),l		;77e3
	ld a,b			;77e4
	ld b,(hl)		;77e5
	ld b,b			;77e6
	pop bc			;77e7
	ld b,e			;77e8
	dec bc			;77e9
	rra			;77ea
	ld e,08ch		;77eb
	cp a			;77ed
	ld e,b			;77ee
l77efh:
	ld b,020h		;77ef
	ld (hl),b		;77f1
	ld (hl),c		;77f2
	ld a,a			;77f3
	daa			;77f4
	sub d			;77f5
	ld h,d			;77f6
	ld (bc),a		;77f7
	adc a,d			;77f8
	ld (l52bfh),a		;77f9
	ld (hl),h		;77fc
	ld h,(hl)		;77fd
	ld b,b			;77fe
	xor h			;77ff
	ld b,064h		;7800
	cp 08eh			;7802
	ld c,09ah		;7804
	ld l,c			;7806
	ld a,(de)		;7807
	ld (de),a		;7808
	nop			;7809
	ld b,06dh		;780a
	ld b,b			;780c
	ld (hl),0b0h		;780d
	ret p			;780f
	ld b,b			;7810
sub_7811h:
	ret p			;7811
	dec c			;7812
	ld h,d			;7813
	dec l			;7814
	dec c			;7815
	sbc a,09eh		;7816
	ld h,e			;7818
	ld bc,0db1bh		;7819
	inc b			;781c
	ex af,af'		;781d
	inc c			;781e
	ret p			;781f
	ccf			;7820
	dec b			;7821
	dec l			;7822
	add hl,bc		;7823
	dec l			;7824
	ld l,l			;7825
	nop			;7826
	or b			;7827
	ld c,a			;7828
	or b			;7829
	cp l			;782a
	ld e,c			;782b
	dec e			;782c
	and h			;782d
l782eh:
	add a,b			;782e
	ret po			;782f
	jp (hl)			;7830
l7831h:
	ld e,h			;7831
	ld (004d1h),hl		;7832
	call c,0007fh		;7835
	ld (bc),a		;7838
	jr nz,l784ch		;7839
	dec l			;783b
	dec hl			;783c
	dec hl			;783d
	ld h,d			;783e
	inc l			;783f
	cpl			;7840
	inc bc			;7841
	ld l,e			;7842
	ld b,020h		;7843
	nop			;7845
	ld e,e			;7846
	dec hl			;7847
	ld c,015h		;7848
	sbc a,h			;784a
	dec c			;784b
l784ch:
	ex (sp),hl		;784c
	nop			;784d
	cpl			;784e
	ld a,(de)		;784f
	ld l,(hl)		;7850
	inc de			;7851
	ld c,0d8h		;7852
	dec hl			;7854
	inc c			;7855
	dec l			;7856
	ld l,02fh		;7857
	inc l			;7859
	inc de			;785a
	dec c			;785b
	add hl,sp		;785c
	ccf			;785d
	ld a,d			;785e
	ld hl,(0bd3fh)		;785f
	ld hl,(01c3fh)		;7862
	ld hl,(03d3fh)		;7865
	ld hl,(01d3fh)		;7868
	ld hl,(0d93fh)		;786b
	inc e			;786e
	nop			;786f
	inc b			;7870
	sbc a,h			;7871
	rlca			;7872
	adc a,0a2h		;7873
	cp b			;7875
	dec hl			;7876
	xor l			;7877
	adc a,04ch		;7878
	or b			;787a
	ld de,0a32bh		;787b
	exx			;787e
	ld l,02eh		;787f
	rrca			;7881
	or h			;7882
	ld d,0b5h		;7883
	ld a,b			;7885
	add a,a			;7886
	rrca			;7887
	ex af,af'		;7888
	ex af,af'		;7889
	rrca			;788a
	add hl,bc		;788b
	add hl,sp		;788c
	ld b,(hl)		;788d
	nop			;788e
	add a,l			;788f
	add hl,bc		;7890
	dec hl			;7891
	ld bc,l456eh		;7892
	and c			;7895
	inc (hl)		;7896
	ld d,l			;7897
	dec (hl)		;7898
	nop			;7899
	adc a,h			;789a
	ld b,h			;789b
	ld a,(bc)		;789c
	ld c,d			;789d
	ld bc,0320ch		;789e
	dec bc			;78a1
	dec l			;78a2
	dec bc			;78a3
	ld (de),a		;78a4
	jp nc,02b1fh		;78a5
	add hl,hl		;78a8
	and l			;78a9
	scf			;78aa
	rra			;78ab
	ld c,l			;78ac
	jr nz,l78ddh		;78ad
	rra			;78af
	sbc a,020h		;78b0
	ret po			;78b2
l78b3h:
	ld e,02ch		;78b3
	rra			;78b5
	adc a,e			;78b6
	dec hl			;78b7
	add hl,bc		;78b8
	rra			;78b9
	ret nc			;78ba
	ld a,(bc)		;78bb
	inc c			;78bc
	xor (hl)		;78bd
	ld de,l650bh		;78be
	ld d,d			;78c1
	cpl			;78c2
	dec d			;78c3
	cpl			;78c4
	cp e			;78c5
	ld e,(hl)		;78c6
	inc d			;78c7
	dec bc			;78c8
	adc a,0e7h		;78c9
	dec b			;78cb
	ld a,a			;78cc
	nop			;78cd
	ld e,019h		;78ce
	cp l			;78d0
	ld l,000h		;78d1
	sbc a,(hl)		;78d3
	ld l,e			;78d4
	nop			;78d5
	out (0c2h),a		;78d6
	call m,00017h		;78d8
	xor 03eh		;78db
l78ddh:
	add hl,hl		;78dd
	nop			;78de
	rst 20h			;78df
	jr nz,l78e2h		;78e0
l78e2h:
	call c,0d902h		;78e2
	nop			;78e5
	or b			;78e6
	ld b,e			;78e7
	ld c,00fh		;78e8
	add hl,bc		;78ea
	add a,b			;78eb
	dec c			;78ec
	inc hl			;78ed
	inc hl			;78ee
	dec hl			;78ef
	ld (de),a		;78f0
	inc hl			;78f1
	jr z,l7917h		;78f2
	push bc			;78f4
	ld d,l			;78f5
	ld b,01bh		;78f6
	ld b,000h		;78f8
	dec h			;78fa
	ld bc,0011ah		;78fb
sub_78feh:
	ld bc,0e200h		;78fe
	ld b,0d7h		;7901
sub_7903h:
	nop			;7903
	ld b,d			;7904
	nop			;7905
	adc a,a			;7906
	rra			;7907
	cp e			;7908
l7909h:
	inc c			;7909
	nop			;790a
	ld e,(hl)		;790b
	ld b,(hl)		;790c
	nop			;790d
	ld a,(0031fh)		;790e
	jp p,0e11fh		;7911
	ld h,l			;7914
	ld c,h			;7915
	nop			;7916
l7917h:
	ex (sp),hl		;7917
	sbc a,a			;7918
	dec a			;7919
	ld d,c			;791a
	sbc a,h			;791b
	sbc a,a			;791c
	dec a			;791d
	ld a,(hl)		;791e
	ret m			;791f
	ld a,b			;7920
	inc l			;7921
	jp po,0490ch		;7922
	nop			;7925
	ld b,e			;7926
	ld b,d			;7927
	dec h			;7928
	ld (bc),a		;7929
	ld b,d			;792a
	dec bc			;792b
	inc (hl)		;792c
	jr l7971h		;792d
	inc c			;792f
	nop			;7930
	push hl			;7931
	ld b,l			;7932
	add hl,bc		;7933
	adc a,l			;7934
	ld (hl),a		;7935
	rlca			;7936
	ld (de),a		;7937
	jr nc,$+69		;7938
	add a,l			;793a
	inc (hl)		;793b
	ld c,c			;793c
	ld c,e			;793d
	call z,00026h		;793e
	add hl,sp		;7941
	ld b,e			;7942
	nop			;7943
	scf			;7944
	ld h,a			;7945
	add hl,bc		;7946
	nop			;7947
	ld b,a			;7948
	add hl,sp		;7949
	inc de			;794a
	ld e,09ah		;794b
	ld l,c			;794d
	ld c,c			;794e
	pop hl			;794f
	ld a,(bc)		;7950
	ld (bc),a		;7951
	nop			;7952
	call pe,0f641h		;7953
	nop			;7956
	ld a,e			;7957
	inc c			;7958
	nop			;7959
	ld a,e			;795a
	rra			;795b
	rst 0			;795c
	jp z,l5f97h		;795d
	ld e,(hl)		;7960
	nop			;7961
	and b			;7962
l7963h:
	jp nc,l4b9bh		;7963
l7966h:
	ld a,000h		;7966
	nop			;7968
	ld (0c308h),a		;7969
	ld a,(0ffe8h)		;796c
	or 002h			;796f
l7971h:
	inc b			;7971
	and 0ffh		;7972
	and 07fh		;7974
	ld (0f308h),a		;7976
	inc b			;7979
	out (099h),a		;797a
	ld a,089h		;797c
	ei			;797e
	inc b			;797f
	ld a,(0e744h)		;7980
	rrca			;7983
	rst 18h			;7984
	ld (0af04h),a		;7985
	ld bc,00e32h		;7988
	pop bc			;798b
	ld hl,(0057ch)		;798c
	ld (hl),0b6h		;798f
	or d			;7991
	ld a,a			;7992
	inc b			;7993
	djnz l7966h		;7994
	ld hl,(00482h)		;7996
	xor (hl)		;7999
	ld hl,(0d485h)		;799a
	inc b			;799d
	adc a,b			;799e
	inc b			;799f
	djnz l79c3h		;79a0
	ld hl,(0048bh)		;79a2
	call nc,08e2ah		;79a5
	add hl,bc		;79a8
	xor l			;79a9
	sub c			;79aa
	add hl,bc		;79ab
	ld l,e			;79ac
	sub h			;79ad
	add hl,bc		;79ae
	sub a			;79af
	add hl,bc		;79b0
	ld d,b			;79b1
	sbc a,d			;79b2
	inc b			;79b3
	ret z			;79b4
	ld hl,(0809dh)		;79b5
	inc b			;79b8
	jp nc,l79cdh		;79b9
	ld c,l			;79bc
	call 08019h		;79bd
	ld (bc),a		;79c0
	ld h,e			;79c1
	dec b			;79c2
l79c3h:
	call sub_6d6eh		;79c3
	call 09f49h		;79c6
	dec b			;79c9
l79cah:
	and d			;79ca
	ld (bc),a		;79cb
	and l			;79cc
l79cdh:
	ld (bc),a		;79cd
	nop			;79ce
	and (hl)		;79cf
	ld c,h			;79d0
	call 06c9eh		;79d1
	call 0124dh		;79d4
	ld e,c			;79d7
	call 00baeh		;79d8
	add hl,sp		;79db
	ld (bc),a		;79dc
	ld b,c			;79dd
	xor b			;79de
	ld (bc),a		;79df
	rst 20h			;79e0
	ld h,a			;79e1
	call 005abh		;79e2
	inc b			;79e5
	ld h,(hl)		;79e6
	ld e,d			;79e7
	call 02c88h		;79e8
	and b			;79eb
	nop			;79ec
	ld d,l			;79ed
	ld a,(0c13dh)		;79ee
	or a			;79f1
	jp z,l4c2ah		;79f2
	ld b,b			;79f5
	ld a,011h		;79f6
	rrca			;79f8
	dec b			;79f9
	ld a,001h		;79fa
	ld (00608h),a		;79fc
	pop bc			;79ff
	ld a,0feh		;7a00
	and a			;7a02
	add a,e			;7a03
	pop bc			;7a04
l7a05h:
	ld (0c3a3h),a		;7a05
	or l			;7a08
	ld b,d			;7a09
	ld (00707h),a		;7a0a
	dec bc			;7a0d
	and d			;7a0e
	jp 003cdh		;7a0f
	ld a,(de)		;7a12
	add a,c			;7a13
	and (hl)		;7a14
	halt			;7a15
	ld e,l			;7a16
	ld b,l			;7a17
	and b			;7a18
	dec hl			;7a19
	add hl,bc		;7a1a
	ld a,(0c395h)		;7a1b
	ld l,06bh		;7a1e
	ld d,e			;7a20
	ld a,(de)		;7a21
	ld d,e			;7a22
	ld c,l			;7a23
	add hl,bc		;7a24
	ret			;7a25
	sub d			;7a26
	ld (de),a		;7a27
	ld d,023h		;7a28
	ccf			;7a2a
	ld (bc),a		;7a2b
	ld c,c			;7a2c
	ld d,d			;7a2d
	ld (bc),a		;7a2e
	ld c,a			;7a2f
	ld (bc),a		;7a30
	ld b,e			;7a31
	ld (bc),a		;7a32
	ld hl,03f40h		;7a33
	ld (bc),a		;7a36
	ld (02642h),a		;7a37
	nop			;7a3a
	ld a,0c1h		;7a3b
	cp 01eh			;7a3d
	jp c,l4c8fh		;7a3f
	djnz l7a81h		;7a42
	ld (00b3eh),a		;7a44
	pop de			;7a47
	jp l423ch		;7a48
	ld (03a03h),a		;7a4b
	inc de			;7a4e
	pop bc			;7a4f
	dec c			;7a50
	add a,e			;7a51
	inc bc			;7a52
	inc a			;7a53
	jp nz,l4bfdh		;7a54
	dec a			;7a57
	nop			;7a58
	xor a			;7a59
	ret			;7a5a
	ld hl,l4cdah		;7a5b
	ld (0d608h),hl		;7a5e
	ld c,h			;7a61
	ld hl,005fah		;7a62
	ret c			;7a65
	ld c,h			;7a66
	ld b,b			;7a67
	ld hl,(l5e08h)		;7a68
	inc hl			;7a6b
	ld d,(hl)		;7a6c
	inc hl			;7a6d
	ld a,d			;7a6e
	inc c			;7a6f
	or e			;7a70
	jp z,l4d18h		;7a71
	inc d			;7a74
	dec b			;7a75
	ex de,hl		;7a76
	ld c,(hl)		;7a77
	inc hl			;7a78
	ld b,(hl)		;7a79
	ld hl,(01215h)		;7a7a
	cp b			;7a7d
	inc e			;7a7e
	ex de,hl		;7a7f
	dec b			;7a80
l7a81h:
	ld (hl),c		;7a81
	inc hl			;7a82
	ld (hl),b		;7a83
	jp 092b2h		;7a84
	ld sp,0e096h		;7a87
	ld d,005h		;7a8a
	rra			;7a8c
	nop			;7a8d
	dec b			;7a8e
	ld (02e05h),hl		;7a8f
	dec b			;7a92
	add hl,de		;7a93
	dec b			;7a94
	ld sp,00500h		;7a95
	ld e,e			;7a98
	dec b			;7a99
	ld e,(hl)		;7a9a
	dec b			;7a9b
	ld h,c			;7a9c
	dec b			;7a9d
	ld h,a			;7a9e
	ld (bc),a		;7a9f
	dec b			;7aa0
	ld l,d			;7aa1
	dec b			;7aa2
	ld (hl),b		;7aa3
	dec b			;7aa4
	ld (hl),e		;7aa5
	and c			;7aa6
	inc h			;7aa7
	dec b			;7aa8
	rra			;7aa9
	jp (hl)			;7aaa
	nop			;7aab
	ld d,l			;7aac
	pop bc			;7aad
	ld d,l			;7aae
	sbc a,(hl)		;7aaf
	ld d,l			;7ab0
	add a,d			;7ab1
	ld d,l			;7ab2
	sub 000h		;7ab3
	ld d,l			;7ab5
	call nz,0d055h		;7ab6
	ld d,l			;7ab9
	ld l,(hl)		;7aba
	ld e,d			;7abb
	ld h,(hl)		;7abc
	nop			;7abd
	ld d,l			;7abe
	ld l,c			;7abf
	ld d,l			;7ac0
	rst 0			;7ac1
	ld d,l			;7ac2
	call 0d355h		;7ac3
	nop			;7ac6
	ld d,l			;7ac7
	defb 0edh ;next byte illegal after ed	;7ac8
	ld d,l			;7ac9
	ld a,d			;7aca
	ld d,l			;7acb
	ret			;7acc
	di			;7acd
	ld hl,0f9d8h		;7ace
	ld de,l5076h		;7ad1
	ld c,l			;7ad4
	adc a,b			;7ad5
	nop			;7ad6
	ex af,af'		;7ad7
	ldir			;7ad8
	ld hl,l6998h		;7ada
	add hl,sp		;7add
	nop			;7ade
	ex af,af'		;7adf
	ld a,0c3h		;7ae0
l7ae2h:
	ld (00438h),a		;7ae2
	inc de			;7ae5
	ld (0f127h),a		;7ae6
	rst 38h			;7ae9
	adc a,h			;7aea
	inc de			;7aeb
	sub e			;7aec
	adc a,e			;7aed
	add a,b			;7aee
	rst 18h			;7aef
	di			;7af0
l7af1h:
	or 010h			;7af1
	ld (004b1h),a		;7af3
	dec c			;7af6
	add a,b			;7af7
	inc bc			;7af8
	adc a,h			;7af9
	ld (bc),a		;7afa
	inc bc			;7afb
	ld c,(hl)		;7afc
	adc a,a			;7afd
	and d			;7afe
	ld b,l			;7aff
l7b00h:
	xor h			;7b00
	dec (hl)		;7b01
	daa			;7b02
	ld de,0f328h		;7b03
	add hl,sp		;7b06
	jr l7b2ch		;7b07
	and 078h		;7b09
	rst 28h			;7b0b
	inc hl			;7b0c
	ld (hl),0afh		;7b0d
	ld (02303h),hl		;7b0f
	ei			;7b12
	ret			;7b13
	sbc a,(hl)		;7b14
l7b15h:
	inc h			;7b15
	ld e,a			;7b16
	sub a			;7b17
	ld d,h			;7b18
	and l			;7b19
	ld l,c			;7b1a
	ld c,l			;7b1b
	dec b			;7b1c
	or l			;7b1d
	ld c,l			;7b1e
	ld de,00e46h		;7b1f
	adc a,e			;7b22
	ld d,h			;7b23
	ld c,09ch		;7b24
	inc e			;7b26
l7b27h:
	ld d,l			;7b27
	ld c,012h		;7b28
	ret			;7b2a
	push af			;7b2b
l7b2ch:
	rst 18h			;7b2c
	ld (hl),d		;7b2d
	inc l			;7b2e
	in a,(013h)		;7b2f
	sbc a,c			;7b31
	rrca			;7b32
	call c,0af1ah		;7b33
	inc c			;7b36
	or b			;7b37
	ld (0c1a0h),a		;7b38
	rlca			;7b3b
	ld e,h			;7b3c
	call c,sub_6d24h	;7b3d
	ret			;7b40
	inc bc			;7b41
	pop af			;7b42
l7b43h:
	ld hl,(0f018h)		;7b43
	ld d,b			;7b46
	inc a			;7b47
	ld b,00ch		;7b48
	ld bc,01898h		;7b4a
	rrca			;7b4d
	inc c			;7b4e
	inc a			;7b4f
	inc bc			;7b50
	rrca			;7b51
	ld b,003h		;7b52
	inc c			;7b54
	ld b,03ch		;7b55
	dec d			;7b57
	ld (de),a		;7b58
	dec c			;7b59
	inc e			;7b5a
	inc bc			;7b5b
	dec c			;7b5c
	cp c			;7b5d
	inc bc			;7b5e
	dec c			;7b5f
	ld c,(hl)		;7b60
	nop			;7b61
	dec c			;7b62
	dec d			;7b63
	dec de			;7b64
	ld e,00ch		;7b65
	dec c			;7b67
	dec hl			;7b68
	dec d			;7b69
	jr nc,l7b87h		;7b6a
	ld c,b			;7b6c
	dec d			;7b6d
	dec d			;7b6e
	dec c			;7b6f
	ld b,d			;7b70
	ld hl,(00784h)		;7b71
	jr nc,l7b94h		;7b74
	ld b,d			;7b76
	add hl,bc		;7b77
	ld b,d			;7b78
	ld a,(de)		;7b79
	ld e,036h		;7b7a
	dec l			;7b7c
	ld a,(bc)		;7b7d
	ld (hl),061h		;7b7e
l7b80h:
	ccf			;7b80
	ld a,(bc)		;7b81
	add hl,sp		;7b82
	ld hl,(0e10ah)		;7b83
	dec d			;7b86
l7b87h:
	xor l			;7b87
	ld (hl),009h		;7b88
	ld a,b			;7b8a
	inc bc			;7b8b
	inc de			;7b8c
	inc sp			;7b8d
	inc bc			;7b8e
	ld (de),a		;7b8f
	ld a,d			;7b90
	ld d,042h		;7b91
	ld (bc),a		;7b93
l7b94h:
	rlca			;7b94
	sbc a,c			;7b95
	inc sp			;7b96
	inc h			;7b97
	ld bc,08e61h		;7b98
	rrca			;7b9b
	ex af,af'		;7b9c
	adc a,(hl)		;7b9d
	inc bc			;7b9e
	ld (de),a		;7b9f
	ex af,af'		;7ba0
	exx			;7ba1
	ld b,d			;7ba2
	ld b,009h		;7ba3
	jp 00906h		;7ba5
	jp 0c613h		;7ba8
	cp e			;7bab
	ld a,(006eah)		;7bac
	adc a,(hl)		;7baf
	jr z,l7b43h		;7bb0
	and e			;7bb2
	sbc a,b			;7bb3
	ex af,af'		;7bb4
	ld (de),a		;7bb5
	dec d			;7bb6
	sbc a,b			;7bb7
	and 00dh		;7bb8
	di			;7bba
	sbc a,b			;7bbb
	dec c			;7bbc
	or b			;7bbd
	daa			;7bbe
	ld hl,(00c1eh)		;7bbf
	ld e,036h		;7bc2
	inc c			;7bc4
	add hl,bc		;7bc5
	rlca			;7bc6
	ld (hl),c		;7bc7
	sub b			;7bc8
	sbc a,(hl)		;7bc9
	djnz $-65		;7bca
	rlca			;7bcc
	and d			;7bcd
	ccf			;7bce
	rst 20h			;7bcf
	sbc a,b			;7bd0
	dec de			;7bd1
	jr l7bddh		;7bd2
	ld hl,(008efh)		;7bd4
	ld (de),a		;7bd7
	rst 0			;7bd8
	ld b,l			;7bd9
	rst 20h			;7bda
	inc h			;7bdb
	dec l			;7bdc
l7bddh:
	inc h			;7bdd
	adc a,l			;7bde
	jp po,01807h		;7bdf
	or l			;7be2
	ld l,(hl)		;7be3
	jr l7c0ah		;7be4
	jr nz,l7c2fh		;7be6
	ret nz			;7be8
	rra			;7be9
	or (hl)			;7bea
	ld b,l			;7beb
	sbc a,c			;7bec
	ld hl,0a423h		;7bed
sub_7bf0h:
	xor c			;7bf0
	in a,(006h)		;7bf1
	and (hl)		;7bf3
	add hl,bc		;7bf4
	and (hl)		;7bf5
	inc d			;7bf6
	jr z,l7b80h		;7bf7
	and l			;7bf9
	jr z,l7c04h		;7bfa
	rrca			;7bfc
	inc sp			;7bfd
	dec de			;7bfe
	inc sp			;7bff
l7c00h:
	ex af,af'		;7c00
	ld h,003h		;7c01
	rlca			;7c03
l7c04h:
	ld e,h			;7c04
	ld c,h			;7c05
	rlca			;7c06
	cp a			;7c07
	dec de			;7c08
	rlca			;7c09
l7c0ah:
	ld a,(bc)		;7c0a
	xor b			;7c0b
	ld l,c			;7c0c
l7c0dh:
	ld c,e			;7c0d
	ld (hl),006h		;7c0e
	rst 28h			;7c10
	add hl,de		;7c11
	dec l			;7c12
	inc a			;7c13
	ld c,e			;7c14
	ld bc,018f8h		;7c15
	halt			;7c18
	ld bc,l57f9h		;7c19
	rla			;7c1c
	rst 20h			;7c1d
	ld sp,hl		;7c1e
	ld hl,028fch		;7c1f
	sbc a,(hl)		;7c22
	inc a			;7c23
	ld e,c			;7c24
	ld c,a			;7c25
	sbc a,e			;7c26
	ld b,c			;7c27
	ld e,h			;7c28
	ld a,(de)		;7c29
l7c2ah:
	call p,0d70ah		;7c2a
	inc e			;7c2d
	inc a			;7c2e
l7c2fh:
	ld de,01cddh		;7c2f
	push af			;7c32
	cp h			;7c33
	dec de			;7c34
	ld a,(bc)		;7c35
	ld c,09bh		;7c36
	dec de			;7c38
	inc e			;7c39
	dec e			;7c3a
	sbc a,e			;7c3b
	inc hl			;7c3c
	cp 047h			;7c3d
	rra			;7c3f
l7c40h:
	ld hl,(094bch)		;7c40
	cp b			;7c43
	ld c,e			;7c44
	sbc a,a			;7c45
	jp 0a80dh		;7c46
	ld b,0ffh		;7c49
	or 0e1h			;7c4b
	add hl,bc		;7c4d
	ld (hl),009h		;7c4e
	pop af			;7c50
	dec a			;7c51
	inc sp			;7c52
	inc de			;7c53
	or 05fh			;7c54
	sbc a,a			;7c56
	ld a,(006ffh)		;7c57
	dec b			;7c5a
	ld (0034bh),a		;7c5b
	nop			;7c5e
	ld b,049h		;7c5f
	inc sp			;7c61
l7c62h:
	ex af,af'		;7c62
	ld b,d			;7c63
	rlca			;7c64
	ld c,(hl)		;7c65
	ex af,af'		;7c66
	cp h			;7c67
	ld a,(bc)		;7c68
	ld c,d			;7c69
	push bc			;7c6a
	ld c,e			;7c6b
	ret nc			;7c6c
	sub (hl)		;7c6d
	ex af,af'		;7c6e
	xor h			;7c6f
	ld b,l			;7c70
	jp nc,l4873h		;7c71
	add hl,bc		;7c74
	pop af			;7c75
	ld a,c			;7c76
	daa			;7c77
	push de			;7c78
	ld (de),a		;7c79
	ld sp,l45a9h		;7c7a
	ld c,b			;7c7d
	ccf			;7c7e
	inc h			;7c7f
	or c			;7c80
	ld d,b			;7c81
	ccf			;7c82
	ld c,(hl)		;7c83
	rlca			;7c84
	and a			;7c85
	ld b,d			;7c86
	ld b,03ah		;7c87
	ld d,009h		;7c89
	ld (009f3h),a		;7c8b
	ld (0089ch),a		;7c8e
	rst 28h			;7c91
	ld (03209h),a		;7c92
	exx			;7c95
	pop hl			;7c96
	daa			;7c97
	xor a			;7c98
	inc a			;7c99
	daa			;7c9a
	inc c			;7c9b
	cp a			;7c9c
	ld a,(0c326h)		;7c9d
	or d			;7ca0
	ld a,c			;7ca1
	or a			;7ca2
	inc a			;7ca3
	ld a,c			;7ca4
	pop de			;7ca5
	sub (hl)		;7ca6
	rra			;7ca7
	ld h,a			;7ca8
	inc e			;7ca9
	and h			;7caa
	in a,(06ah)		;7cab
	daa			;7cad
	cp d			;7cae
	sub 0d9h		;7caf
	daa			;7cb1
	and h			;7cb2
	rlca			;7cb3
	jr l7ccah		;7cb4
l7cb6h:
	and h			;7cb6
	cp h			;7cb7
	rst 38h			;7cb8
	adc a,h			;7cb9
	nop			;7cba
	ld hl,(09fa7h)		;7cbb
	adc a,006h		;7cbe
	jr nc,l7cb6h		;7cc0
	adc a,c			;7cc2
	rst 0			;7cc3
	ld (hl),087h		;7cc4
	sbc a,c			;7cc6
	add hl,bc		;7cc7
	ld h,(hl)		;7cc8
	and a			;7cc9
l7ccah:
	inc c			;7cca
l7ccbh:
	ld (de),a		;7ccb
l7ccch:
	ld c,b			;7ccc
	ld b,l			;7ccd
	ex af,af'		;7cce
	ld b,(hl)		;7ccf
	ld c,e			;7cd0
	ld b,04bh		;7cd1
	ld c,(hl)		;7cd3
	rlca			;7cd4
	jr nc,$+59		;7cd5
	and a			;7cd7
	ld d,d			;7cd8
	ld b,l			;7cd9
	djnz l7ce3h		;7cda
	ld b,l			;7cdc
	cp c			;7cdd
	push hl			;7cde
	ld c,(hl)		;7cdf
	djnz $+9		;7ce0
	ld c,e			;7ce2
l7ce3h:
	ld c,04eh		;7ce3
	call nc,032b2h		;7ce5
	ld b,038h		;7ce8
	ld b,l			;7cea
	ccf			;7ceb
	ld sp,01e99h		;7cec
	dec d			;7cef
	call 008b9h		;7cf0
	add hl,sp		;7cf3
	ld (hl),e		;7cf4
	djnz l7ccbh		;7cf5
	adc a,b			;7cf7
	ld e,06dh		;7cf8
	ld hl,(04329h)		;7cfa
	add hl,de		;7cfd
	ld h,l			;7cfe
	djnz l7d3ah		;7cff
	ld c,d			;7d01
	dec (hl)		;7d02
	ccf			;7d03
	ld de,01a3fh		;7d04
	ld (hl),048h		;7d07
	ld hl,0cc0dh		;7d09
	ld h,h			;7d0c
	rrca			;7d0d
	ld (hl),c		;7d0e
	ld hl,(00708h)		;7d0f
	dec de			;7d12
	dec l			;7d13
	ld (hl),008h		;7d14
	add hl,sp		;7d16
	adc a,h			;7d17
	ccf			;7d18
	jr z,l7ccch		;7d19
	ld c,l			;7d1b
	ld sp,0391eh		;7d1c
	dec sp			;7d1f
	ld c,b			;7d20
	add hl,bc		;7d21
	call z,0c7a2h		;7d22
	rlca			;7d25
	ld b,d			;7d26
	rlca			;7d27
	ld e,c			;7d28
	ex af,af'		;7d29
	ex (sp),hl		;7d2a
	inc de			;7d2b
	ld (de),a		;7d2c
	ex af,af'		;7d2d
	jr $+56			;7d2e
	rst 30h			;7d30
	ld b,l			;7d31
	add a,d			;7d32
	ld a,(bc)		;7d33
	ld l,e			;7d34
	add hl,bc		;7d35
	ld (hl),007h		;7d36
l7d38h:
	add hl,de		;7d38
	inc sp			;7d39
l7d3ah:
	ex af,af'		;7d3a
	and a			;7d3b
	ld d,098h		;7d3c
	sbc a,e			;7d3e
	rlca			;7d3f
	rra			;7d40
	jr c,l7d7fh		;7d41
	rlca			;7d43
	adc a,c			;7d44
	sbc a,c			;7d45
	ld c,e			;7d46
	rlca			;7d47
	jp nz,01912h		;7d48
	ret c			;7d4b
	rlca			;7d4c
	adc a,(hl)		;7d4d
	or c			;7d4e
	ld h,b			;7d4f
	inc sp			;7d50
	halt			;7d51
	cp e			;7d52
	ex af,af'		;7d53
	halt			;7d54
	add a,008h		;7d55
	ld l,l			;7d57
	rlca			;7d58
	scf			;7d59
	rlca			;7d5a
	xor b			;7d5b
	ld hl,(0ceebh)		;7d5c
	rrca			;7d5f
	ld a,c			;7d60
	rlca			;7d61
	call z,0ebd9h		;7d62
	djnz l7d6fh		;7d65
	cp (hl)			;7d67
	ld de,003d4h		;7d68
	jp nz,009a7h		;7d6b
	add a,e			;7d6e
l7d6fh:
	ld b,0e4h		;7d6f
	cp h			;7d71
	ld d,a			;7d72
	nop			;7d73
	ld e,a			;7d74
	rst 10h			;7d75
	dec bc			;7d76
	call nz,sub_51b9h	;7d77
	ld b,072h		;7d7a
	ld e,d			;7d7c
	ld b,05dh		;7d7d
l7d7fh:
	jp m,0fd2ch		;7d7f
	xor e			;7d82
	call nc,0e03ah		;7d83
	add a,(hl)		;7d86
	dec c			;7d87
	cp a			;7d88
	ld (00de0h),a		;7d89
	cp l			;7d8c
	add a,c			;7d8d
	defb 0ddh,0bfh,080h ;illegal sequence	;7d8e
	ld d,b			;7d91
	and 020h		;7d92
	jp nz,068afh		;7d94
	ld d,h			;7d97
	ld b,0cah		;7d98
	or (hl)			;7d9a
	ld d,h			;7d9b
	inc bc			;7d9c
	ld a,(0c1f1h)		;7d9d
	dec a			;7da0
	and 00fh		;7da1
	add hl,de		;7da3
	djnz l7d38h		;7da4
	inc bc			;7da6
	push bc			;7da7
	ld a,(031f6h)		;7da8
	rst 38h			;7dab
	ld b,a			;7dac
	ld a,(bc)		;7dad
l7daeh:
	sub a			;7dae
	ld a,(0a19fh)		;7daf
	ccf			;7db2
	add a,b			;7db3
	and d			;7db4
	and b			;7db5
	rst 20h			;7db6
	rst 38h			;7db7
	and 0fdh		;7db8
	add a,00ah		;7dba
	adc a,b			;7dbc
	ld a,(bc)		;7dbd
	dec (hl)		;7dbe
	pop hl			;7dbf
	ld c,d			;7dc0
	add a,d			;7dc1
	ld e,b			;7dc2
	pop bc			;7dc3
	or 042h			;7dc4
	ld e,b			;7dc6
	ret po			;7dc7
	push de			;7dc8
	inc b			;7dc9
	push hl			;7dca
	exx			;7dcb
	ex af,af'		;7dcc
l7dcdh:
	push af			;7dcd
	push bc			;7dce
	dec b			;7dcf
	ld a,(01600h)		;7dd0
	ld l,c			;7dd3
	or a			;7dd4
	call nz,05d29h		;7dd5
	call 00170h		;7dd8
	ld e,d			;7ddb
	pop hl			;7ddc
	pop de			;7ddd
	pop bc			;7dde
	pop af			;7ddf
	ex af,af'		;7de0
	exx			;7de1
	dec b			;7de2
	adc a,h			;7de3
	ret			;7de4
	dec a			;7de5
	add hl,sp		;7de6
	or 002h			;7de7
	dec a			;7de9
	ld a,b			;7dea
	xor a			;7deb
	ld e,c			;7dec
	ld a,a			;7ded
l7deeh:
	ei			;7dee
	sub l			;7def
	ld b,0adh		;7df0
	add hl,de		;7df2
	ei			;7df3
	call m,sub_5f39h	;7df4
	ld e,d			;7df7
	adc a,(hl)		;7df8
	and l			;7df9
	sbc a,0c5h		;7dfa
	ld d,l			;7dfc
	nop			;7dfd
	sbc a,h			;7dfe
	jp 0c2b7h		;7dff
	ld l,e			;7e02
l7e03h:
	nop			;7e03
	ld d,l			;7e04
l7e05h:
	call 0055dh		;7e05
	call 00560h		;7e08
	ld hl,00004h		;7e0b
	halt			;7e0e
	call 00145h		;7e0f
	or e			;7e12
	ld h,b			;7e13
	add a,007h		;7e14
	call 0c040h		;7e16
	djnz $+119		;7e19
	dec b			;7e1b
	ld a,(0c39fh)		;7e1c
	rlca			;7e1f
	and 040h		;7e20
	call nz,00521h		;7e22
	jp pe,032c0h		;7e25
	ld d,(hl)		;7e28
	pop bc			;7e29
	call 02366h		;7e2a
	ld e,d			;7e2d
	xor a			;7e2e
	ret			;7e2f
	sbc a,b			;7e30
	add a,b			;7e31
	pop af			;7e32
	inc b			;7e33
	call 0051eh		;7e34
	xor a			;7e37
	ld hl,0be1ah		;7e38
	ld bc,0a4cah		;7e3b
	ld d,l			;7e3e
	ld (hl),a		;7e3f
	call 00313h		;7e40
l7e43h:
	ld c,l			;7e43
	and b			;7e44
	jr nz,l7e76h		;7e45
	call 068c7h		;7e47
	nop			;7e4a
	call sub_58e5h		;7e4b
	call sub_56d8h		;7e4e
	call 00446h		;7e51
	ld d,(hl)		;7e54
	jr nz,l7e63h		;7e55
	call 04915h		;7e57
	jr l7deeh		;7e5a
	ld (bc),a		;7e5c
	ld h,(hl)		;7e5d
	ld (bc),a		;7e5e
	rst 28h			;7e5f
	ld h,(hl)		;7e60
	ld c,c			;7e61
	ld l,c			;7e62
l7e63h:
	dec b			;7e63
	jr nc,l7e68h		;7e64
	ld l,a			;7e66
	ld (bc),a		;7e67
l7e68h:
	jr nc,$+47		;7e68
	ld l,a			;7e6a
	ld l,h			;7e6b
	call 03540h		;7e6c
	ld (l561ah),hl		;7e6f
	ei			;7e72
	call 0910ch		;7e73
l7e76h:
	inc c			;7e76
	inc bc			;7e77
	ld (bc),a		;7e78
	ld b,005h		;7e79
	ld c,(hl)		;7e7b
	ld (de),a		;7e7c
	ld (hl),d		;7e7d
	dec b			;7e7e
	or c			;7e7f
	ret			;7e80
	add a,008h		;7e81
	inc bc			;7e83
	and d			;7e84
	ld (0c1fbh),a		;7e85
	sub h			;7e88
	ld d,d			;7e89
	ret z			;7e8a
	ld b,b			;7e8b
	rlca			;7e8c
	rlca			;7e8d
	ld (000fah),a		;7e8e
	pop bc			;7e91
	ld de,0c201h		;7e92
	call 0015eh		;7e95
	ret nc			;7e98
	jr nz,l7ed5h		;7e99
	rst 8			;7e9b
	ld h,d			;7e9c
	ret nz			;7e9d
	ld a,048h		;7e9e
	ld (006a2h),a		;7ea0
	defb 0fdh,000h,0e9h ;illegal sequence	;7ea3
	ei			;7ea6
	and 010h		;7ea7
	jp nz,l5630h		;7ea9
	ld a,(02f32h)		;7eac
	ld d,(hl)		;7eaf
	ld (de),a		;7eb0
	and d			;7eb1
	jr z,l7ebah		;7eb2
	jp 01951h		;7eb4
	dec b			;7eb7
	nop			;7eb8
	xor a			;7eb9
l7ebah:
	rlca			;7eba
	ld a,(de)		;7ebb
	inc h			;7ebc
	jp pe,0011ah		;7ebd
	inc de			;7ec0
	jr nz,$+3		;7ec1
	ld (0c143h),a		;7ec3
	ld a,0e0h		;7ec6
	ld (0a9a4h),a		;7ec8
	add hl,hl		;7ecb
	ld (hl),080h		;7ecc
	ret z			;7ece
	ld a,(0fbe8h)		;7ecf
	bit 4,b			;7ed2
	ld (hl),a		;7ed4
l7ed5h:
	add hl,bc		;7ed5
	jp nz,l565bh		;7ed6
	or b			;7ed9
	dec h			;7eda
	ld b,b			;7edb
	ld (00002h),a		;7edc
	jp nz,004c6h		;7edf
	ld (0c206h),a		;7ee2
	ld a,(094d0h)		;7ee5
	add a,h			;7ee8
	ld sp,l5674h		;7ee9
	ld b,d			;7eec
	add hl,bc		;7eed
	ld l,044h		;7eee
	adc a,b			;7ef0
	rrca			;7ef1
	adc a,d			;7ef2
	out (014h),a		;7ef3
	adc a,c			;7ef5
	ld a,c			;7ef6
	inc b			;7ef7
	pop bc			;7ef8
	sbc a,c			;7ef9
	adc a,b			;7efa
	ld (01004h),a		;7efb
	ld b,032h		;7efe
	dec c			;7f00
l7f01h:
	ex af,af'		;7f01
	jp nz,00c32h		;7f02
	inc h			;7f05
	inc c			;7f06
	and 007h		;7f07
	jr nz,$+16		;7f09
	ld a,088h		;7f0b
	sbc a,b			;7f0d
	cp 060h			;7f0e
	inc hl			;7f10
	jr nz,l7f15h		;7f11
	add a,e			;7f13
	add a,c			;7f14
l7f15h:
	ld a,(0c200h)		;7f15
	ld (01a48h),hl		;7f18
	ld bc,00505h		;7f1b
	jp nz,02100h		;7f1e
	dec c			;7f21
	pop bc			;7f22
	ld b,(hl)		;7f23
	ld (hl),016h		;7f24
	xor a			;7f26
	call sub_7730h		;7f27
l7f2ah:
	ld e,b			;7f2a
	ld hl,(0323ch)		;7f2b
	add a,b			;7f2e
	inc bc			;7f2f
	cp 0a4h			;7f30
	ld b,030h		;7f32
	call nc,031c6h		;7f34
l7f37h:
	ld l,h			;7f37
	ld a,(0d209h)		;7f38
	adc a,e			;7f3b
	ld d,057h		;7f3c
	jp po,03d61h		;7f3e
	rst 0			;7f41
	ld b,d			;7f42
	sbc a,(hl)		;7f43
	ld l,h			;7f44
	rlca			;7f45
	ld h,0a7h		;7f46
	ret			;7f48
	ld h,e			;7f49
	ld h,b			;7f4a
	ld e,e			;7f4b
	and h			;7f4c
	jr c,l7f89h		;7f4d
	inc a			;7f4f
	ld a,(00080h)		;7f50
	jp nz,l4011h		;7f53
	jp nz,0103eh		;7f56
	ld (0005fh),a		;7f59
	pop bc			;7f5c
	ld b,007h		;7f5d
	push de			;7f5f
	ld a,(hl)		;7f60
	and 01fh		;7f61
	cp 000h			;7f63
	dec d			;7f65
	jp z,l57a0h		;7f66
	inc hl			;7f69
	or a			;7f6a
	jp z,00030h		;7f6b
	ld d,a			;7f6e
	cp 004h			;7f6f
	jr z,l7fb8h		;7f71
	dec a			;7f73
	call z,0009ah		;7f74
	ld e,b			;7f77
	call nz,057d4h		;7f78
	pop de			;7f7b
	push hl			;7f7c
	ldi			;7f7d
	push hl			;7f7f
sub_7f80h:
	ld bc,004e1h		;7f80
	xor e			;7f83
	ld a,(hl)		;7f84
	push bc			;7f85
	nop			;7f86
	inc de			;7f87
	inc de			;7f88
l7f89h:
	ld bc,0000dh		;7f89
	add hl,bc		;7f8c
	ld b,(hl)		;7f8d
	ld a,(0c635h)		;7f8e
	ld (bc),a		;7f91
	ld a,(0fe04h)		;7f92
	ld e,0c2h		;7f95
	pop af			;7f97
	jp m,0d142h		;7f98
	ld bc,0120fh		;7f9b
	rla			;7f9e
	ex de,hl		;7f9f
	ld c,008h		;7fa0
	inc bc			;7fa2
	rla			;7fa3
	xor b			;7fa4
	dec hl			;7fa5
	ld a,(hl)		;7fa6
l7fa7h:
	cp 002h			;7fa7
	inc h			;7fa9
	jr z,$+63		;7faa
	inc hl			;7fac
	push hl			;7fad
	inc hl			;7fae
	nop			;7faf
	add a,h			;7fb0
	add hl,bc		;7fb1
	ld d,028h		;7fb2
	add hl,bc		;7fb4
	xor d			;7fb5
	ld b,b			;7fb6
	pop hl			;7fb7
l7fb8h:
	call sub_586dh		;7fb8
	jp 00a50h		;7fbb
	ld h,(hl)		;7fbe
	ld c,b			;7fbf
sub_7fc0h:
	ld (hl),a		;7fc0
	cp 00ch			;7fc1
	ld bc,01228h		;7fc3
	and 003h		;7fc6
	jr z,l7fceh		;7fc8
	pop hl			;7fca
	rrca			;7fcb
	adc a,d			;7fcc
	dec hl			;7fcd
l7fceh:
	add hl,hl		;7fce
	pop hl			;7fcf
	daa			;7fd0
	ld (hl),a		;7fd1
	add hl,bc		;7fd2
	ld b,036h		;7fd3
	ld (09123h),hl		;7fd5
	ld (hl),006h		;7fd8
	ex af,af'		;7fda
	nop			;7fdb
	inc hl			;7fdc
	rrca			;7fdd
	add a,(hl)		;7fde
	ld (hl),004h		;7fdf
	ld a,0dch		;7fe1
	ret p			;7fe3
	inc hl			;7fe4
	sub a			;7fe5
	rla			;7fe6
	inc hl			;7fe7
	ld de,0423eh		;7fe8
	ld (hl),001h		;7feb
	inc hl			;7fed
	ret c			;7fee
	or h			;7fef
	ld a,(hl)		;7ff0
	sub b			;7ff1
	ld l,e			;7ff2
	ld (hl),a		;7ff3
	rrca			;7ff4
	jr nc,$+64		;7ff5
	nop			;7ff7
	dec hl			;7ff8
	djnz $+51		;7ff9
	pop hl			;7ffb
	ld a,(00935h)		;7ffc
	defb 0c2h		;7fff
