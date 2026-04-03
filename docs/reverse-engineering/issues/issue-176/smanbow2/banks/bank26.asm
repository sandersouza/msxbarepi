; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank26.asm /tmp/smanbow2_bank_26.bin

	org 04000h

	ld c,l			;4000
	ld h,c			;4001
	ld l,(hl)		;4002
	ld h,d			;4003
	ld l,a			;4004
	ld (hl),a		;4005
	jr nz,l403ah		;4006
	jr nz,$+47		;4008
	jr nz,l4055h		;400a
	ld l,(hl)		;400c
	ld (hl),h		;400d
	ld (hl),d		;400e
	ld l,a			;400f
	jr nz,l4056h		;4010
	ld h,l			;4012
	ld l,l			;4013
	ld l,a			;4014
	jr nz,$+82		;4015
	ld h,c			;4017
	ld (hl),d		;4018
	ld (hl),h		;4019
	jr nz,l404dh		;401a
	jr nz,l403eh		;401c
	jr nz,l4040h		;401e
	jr nz,l4042h		;4020
	jr nz,l4044h		;4022
	jr nz,l4046h		;4024
	jr nz,l4048h		;4026
	jr nz,l404ah		;4028
	jr nz,l404ch		;402a
	jr nz,l404eh		;402c
	jr nz,l4050h		;402e
	jr nz,l4052h		;4030
	jr nz,$+34		;4032
	jr nz,l4056h		;4034
	jr nz,$+34		;4036
	jr nz,l405ah		;4038
l403ah:
	jr nz,l405ch		;403a
	jr nz,l405eh		;403c
l403eh:
	jr nz,$+34		;403e
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
l404dh:
	ld c,e			;404d
l404eh:
	inc hl			;404e
	nop			;404f
l4050h:
	ld b,000h		;4050
l4052h:
	ld bc,00302h		;4052
l4055h:
	inc b			;4055
l4056h:
	dec b			;4056
	ld b,007h		;4057
	ex af,af'		;4059
l405ah:
	add hl,bc		;405a
	ld a,(bc)		;405b
l405ch:
	dec bc			;405c
	inc c			;405d
l405eh:
	dec c			;405e
	ld c,00fh		;405f
	dec bc			;4061
l4062h:
	inc c			;4062
	dec c			;4063
	ld c,00fh		;4064
	djnz l4079h		;4066
	ld (de),a		;4068
	inc de			;4069
	inc d			;406a
	dec d			;406b
	ld d,017h		;406c
	jr l4089h		;406e
	ld a,(de)		;4070
	dec de			;4071
	inc e			;4072
	dec e			;4073
	ld e,000h		;4074
	nop			;4076
	nop			;4077
	nop			;4078
l4079h:
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
l4089h:
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
	nop			;4102
	nop			;4103
	nop			;4104
	nop			;4105
	nop			;4106
	nop			;4107
	nop			;4108
l4109h:
	nop			;4109
	nop			;410a
	nop			;410b
	nop			;410c
	nop			;410d
	nop			;410e
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
	jr nc,l4189h		;4157
	jr nc,l418bh		;4159
	add a,b			;415b
	add a,b			;415c
	add a,b			;415d
	add a,b			;415e
	add a,b			;415f
	djnz l4172h		;4160
	djnz l4174h		;4162
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
l4172h:
	nop			;4172
	nop			;4173
l4174h:
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
l4189h:
	nop			;4189
	nop			;418a
l418bh:
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
	inc b			;41c0
	ld (bc),a		;41c1
	inc bc			;41c2
	ld bc,00116h		;41c3
	daa			;41c6
	ld bc,0010ah		;41c7
	nop			;41ca
	djnz l41cdh		;41cb
l41cdh:
	nop			;41cd
	nop			;41ce
	nop			;41cf
	nop			;41d0
	nop			;41d1
	ld h,a			;41d2
	ld bc,00000h		;41d3
	nop			;41d6
	nop			;41d7
	nop			;41d8
	nop			;41d9
	nop			;41da
	nop			;41db
	ld h,d			;41dc
	jr nc,l41dfh		;41dd
l41dfh:
	nop			;41df
	nop			;41e0
	nop			;41e1
	nop			;41e2
	nop			;41e3
	nop			;41e4
	nop			;41e5
	nop			;41e6
	nop			;41e7
	nop			;41e8
	nop			;41e9
	nop			;41ea
	nop			;41eb
	nop			;41ec
	nop			;41ed
	nop			;41ee
	nop			;41ef
	nop			;41f0
	nop			;41f1
	nop			;41f2
	nop			;41f3
	ld h,d			;41f4
	cpl			;41f5
	nop			;41f6
	nop			;41f7
	nop			;41f8
	nop			;41f9
	nop			;41fa
	nop			;41fb
	nop			;41fc
	nop			;41fd
	nop			;41fe
	nop			;41ff
	nop			;4200
	nop			;4201
	nop			;4202
	nop			;4203
	nop			;4204
	nop			;4205
	nop			;4206
	nop			;4207
	nop			;4208
	nop			;4209
	nop			;420a
	nop			;420b
	ld h,d			;420c
	ld l,067h		;420d
	ld (bc),a		;420f
	nop			;4210
	nop			;4211
	nop			;4212
	nop			;4213
	nop			;4214
	nop			;4215
	nop			;4216
	nop			;4217
	nop			;4218
	nop			;4219
	nop			;421a
	nop			;421b
	nop			;421c
	nop			;421d
	nop			;421e
	nop			;421f
	nop			;4220
	nop			;4221
	nop			;4222
	nop			;4223
	ld h,d			;4224
	dec l			;4225
	nop			;4226
	nop			;4227
	nop			;4228
	nop			;4229
	nop			;422a
	nop			;422b
	nop			;422c
	nop			;422d
	nop			;422e
	nop			;422f
	nop			;4230
	nop			;4231
	nop			;4232
	nop			;4233
	nop			;4234
	nop			;4235
	nop			;4236
	nop			;4237
	nop			;4238
	nop			;4239
	nop			;423a
	nop			;423b
	ld h,d			;423c
	inc l			;423d
	nop			;423e
	nop			;423f
	nop			;4240
	nop			;4241
	nop			;4242
	nop			;4243
	nop			;4244
	nop			;4245
	nop			;4246
	nop			;4247
	nop			;4248
	nop			;4249
	nop			;424a
	nop			;424b
	nop			;424c
	nop			;424d
	nop			;424e
	nop			;424f
	nop			;4250
	nop			;4251
	nop			;4252
	nop			;4253
	ld h,d			;4254
	dec hl			;4255
	nop			;4256
	nop			;4257
	nop			;4258
	nop			;4259
	nop			;425a
	nop			;425b
	nop			;425c
	nop			;425d
	nop			;425e
	nop			;425f
	nop			;4260
	nop			;4261
	nop			;4262
	nop			;4263
	nop			;4264
	nop			;4265
	nop			;4266
	nop			;4267
	nop			;4268
	nop			;4269
	nop			;426a
	nop			;426b
	ld h,d			;426c
	ld hl,(00367h)		;426d
	nop			;4270
	nop			;4271
	nop			;4272
	nop			;4273
	nop			;4274
	nop			;4275
	nop			;4276
	nop			;4277
	nop			;4278
	nop			;4279
	nop			;427a
	nop			;427b
	nop			;427c
	nop			;427d
	nop			;427e
	nop			;427f
	nop			;4280
	nop			;4281
	nop			;4282
	nop			;4283
	nop			;4284
	nop			;4285
	nop			;4286
	nop			;4287
	nop			;4288
	nop			;4289
	nop			;428a
	nop			;428b
	nop			;428c
	nop			;428d
	nop			;428e
	nop			;428f
	ld h,d			;4290
	jr z,l4293h		;4291
l4293h:
	nop			;4293
	nop			;4294
	nop			;4295
	nop			;4296
	nop			;4297
	nop			;4298
	nop			;4299
	nop			;429a
	nop			;429b
	nop			;429c
	nop			;429d
	nop			;429e
	nop			;429f
	nop			;42a0
	nop			;42a1
	nop			;42a2
	nop			;42a3
	nop			;42a4
	nop			;42a5
	nop			;42a6
	nop			;42a7
	ld h,d			;42a8
	daa			;42a9
	nop			;42aa
	nop			;42ab
	nop			;42ac
	nop			;42ad
	nop			;42ae
	nop			;42af
	nop			;42b0
	nop			;42b1
	nop			;42b2
	nop			;42b3
	nop			;42b4
	nop			;42b5
	nop			;42b6
	nop			;42b7
	nop			;42b8
	nop			;42b9
	nop			;42ba
	nop			;42bb
	nop			;42bc
	nop			;42bd
	nop			;42be
	nop			;42bf
	ld h,d			;42c0
	jr z,l42c3h		;42c1
l42c3h:
	nop			;42c3
	nop			;42c4
	nop			;42c5
	nop			;42c6
	nop			;42c7
	nop			;42c8
	nop			;42c9
	nop			;42ca
	nop			;42cb
	nop			;42cc
	nop			;42cd
	nop			;42ce
	nop			;42cf
	nop			;42d0
	nop			;42d1
	nop			;42d2
	nop			;42d3
	nop			;42d4
	nop			;42d5
	nop			;42d6
	nop			;42d7
	ld h,d			;42d8
	add hl,hl		;42d9
	nop			;42da
	nop			;42db
	nop			;42dc
	nop			;42dd
	nop			;42de
	nop			;42df
	nop			;42e0
	nop			;42e1
	nop			;42e2
	nop			;42e3
	nop			;42e4
	nop			;42e5
	nop			;42e6
	nop			;42e7
	nop			;42e8
	nop			;42e9
	nop			;42ea
	nop			;42eb
	nop			;42ec
	nop			;42ed
	nop			;42ee
	nop			;42ef
	ld h,d			;42f0
	ld hl,(00000h)		;42f1
	nop			;42f4
	nop			;42f5
	nop			;42f6
	nop			;42f7
	nop			;42f8
	nop			;42f9
	nop			;42fa
	nop			;42fb
	ld h,d			;42fc
	dec hl			;42fd
	nop			;42fe
	nop			;42ff
	nop			;4300
	nop			;4301
	nop			;4302
	nop			;4303
	nop			;4304
	nop			;4305
	nop			;4306
	nop			;4307
	ld h,d			;4308
	inc l			;4309
	ld h,a			;430a
	inc b			;430b
	nop			;430c
	nop			;430d
	nop			;430e
	nop			;430f
	nop			;4310
	nop			;4311
	nop			;4312
	nop			;4313
	ld h,d			;4314
	dec l			;4315
	nop			;4316
	nop			;4317
	nop			;4318
	nop			;4319
	nop			;431a
	nop			;431b
	nop			;431c
	nop			;431d
	nop			;431e
	nop			;431f
	ld h,d			;4320
	ld l,000h		;4321
	nop			;4323
	nop			;4324
	nop			;4325
	nop			;4326
	nop			;4327
	nop			;4328
	nop			;4329
	nop			;432a
	nop			;432b
	ld h,d			;432c
	cpl			;432d
	nop			;432e
	nop			;432f
	nop			;4330
	nop			;4331
	nop			;4332
	nop			;4333
	nop			;4334
	nop			;4335
	nop			;4336
	nop			;4337
	ld h,d			;4338
	jr nc,l433bh		;4339
l433bh:
	nop			;433b
	nop			;433c
	nop			;433d
	nop			;433e
	nop			;433f
	inc b			;4340
	ld (bc),a		;4341
	inc sp			;4342
	ld bc,00116h		;4343
	daa			;4346
	ld bc,0012eh		;4347
	nop			;434a
	ld de,00000h		;434b
	ld h,d			;434e
	jr nc,l4351h		;434f
l4351h:
	nop			;4351
	ld h,d			;4352
	jr nc,l4355h		;4353
l4355h:
	nop			;4355
	nop			;4356
	nop			;4357
	nop			;4358
	nop			;4359
	ld h,d			;435a
	cpl			;435b
	ld h,d			;435c
	jr nc,l43c1h		;435d
	cpl			;435f
	nop			;4360
	nop			;4361
	nop			;4362
	nop			;4363
	nop			;4364
	nop			;4365
	ld h,d			;4366
	ld l,000h		;4367
	nop			;4369
	ld h,d			;436a
	ld l,000h		;436b
	nop			;436d
	nop			;436e
	nop			;436f
	nop			;4370
	nop			;4371
	ld h,d			;4372
	dec l			;4373
	ld h,d			;4374
	cpl			;4375
	ld h,d			;4376
	dec l			;4377
	nop			;4378
	nop			;4379
	nop			;437a
	nop			;437b
	nop			;437c
	nop			;437d
	ld h,d			;437e
	inc l			;437f
	nop			;4380
	nop			;4381
	ld h,d			;4382
	inc l			;4383
	nop			;4384
	nop			;4385
	nop			;4386
	nop			;4387
	nop			;4388
	nop			;4389
	ld h,d			;438a
	dec hl			;438b
	ld h,d			;438c
	ld l,062h		;438d
	dec hl			;438f
	nop			;4390
	nop			;4391
	nop			;4392
	nop			;4393
	nop			;4394
	nop			;4395
	ld h,d			;4396
	ld hl,(00000h)		;4397
	ld h,d			;439a
	ld hl,(00000h)		;439b
	nop			;439e
	nop			;439f
	nop			;43a0
	nop			;43a1
	ld h,d			;43a2
	add hl,hl		;43a3
	ld h,d			;43a4
	dec l			;43a5
	ld h,d			;43a6
	add hl,hl		;43a7
	nop			;43a8
	nop			;43a9
	nop			;43aa
	nop			;43ab
	nop			;43ac
	nop			;43ad
	ld h,d			;43ae
	jr z,l43b1h		;43af
l43b1h:
	nop			;43b1
	nop			;43b2
	nop			;43b3
	nop			;43b4
	nop			;43b5
	nop			;43b6
	add hl,de		;43b7
	ld h,d			;43b8
	rra			;43b9
	ld h,d			;43ba
	rra			;43bb
	ld h,d			;43bc
	inc l			;43bd
	ld h,d			;43be
	daa			;43bf
	nop			;43c0
l43c1h:
	nop			;43c1
	add hl,bc		;43c2
	inc c			;43c3
	ld l,h			;43c4
	ld (bc),a		;43c5
	ld h,d			;43c6
	daa			;43c7
	nop			;43c8
	nop			;43c9
	nop			;43ca
	nop			;43cb
	nop			;43cc
	nop			;43cd
	nop			;43ce
	ex af,af'		;43cf
	ld h,d			;43d0
	jr nc,l4435h		;43d1
	jr z,l4437h		;43d3
	dec hl			;43d5
	ld h,d			;43d6
	jr z,l43d9h		;43d7
l43d9h:
	nop			;43d9
	nop			;43da
	ld de,0026bh		;43db
	nop			;43de
	nop			;43df
	nop			;43e0
	nop			;43e1
	nop			;43e2
	nop			;43e3
	nop			;43e4
	nop			;43e5
	nop			;43e6
	nop			;43e7
	nop			;43e8
	nop			;43e9
	ld h,d			;43ea
	add hl,hl		;43eb
	ld h,d			;43ec
	ld hl,(02962h)		;43ed
	nop			;43f0
	nop			;43f1
	nop			;43f2
	ld (bc),a		;43f3
	nop			;43f4
	nop			;43f5
	nop			;43f6
	nop			;43f7
	nop			;43f8
	nop			;43f9
	nop			;43fa
	nop			;43fb
	nop			;43fc
	nop			;43fd
	nop			;43fe
	ld de,00000h		;43ff
	nop			;4402
	nop			;4403
	nop			;4404
	nop			;4405
	nop			;4406
	nop			;4407
	nop			;4408
	nop			;4409
	nop			;440a
	nop			;440b
	nop			;440c
	nop			;440d
	ld h,d			;440e
	add hl,hl		;440f
	ld h,d			;4410
	jr z,l4475h		;4411
	add hl,hl		;4413
	nop			;4414
	nop			;4415
	nop			;4416
	nop			;4417
	nop			;4418
	nop			;4419
	nop			;441a
	nop			;441b
	nop			;441c
	nop			;441d
	nop			;441e
	nop			;441f
	nop			;4420
	nop			;4421
	nop			;4422
	nop			;4423
	nop			;4424
	nop			;4425
	ld h,d			;4426
	ld hl,(02762h)		;4427
	ld h,d			;442a
	ld hl,(00000h)		;442b
	nop			;442e
	nop			;442f
	nop			;4430
	nop			;4431
	nop			;4432
	nop			;4433
	nop			;4434
l4435h:
	nop			;4435
	nop			;4436
l4437h:
	nop			;4437
	nop			;4438
	nop			;4439
	nop			;443a
	nop			;443b
	nop			;443c
	nop			;443d
	ld h,d			;443e
	dec hl			;443f
	ld h,d			;4440
	jr z,l44a5h		;4441
	dec hl			;4443
	nop			;4444
	nop			;4445
	nop			;4446
	nop			;4447
	nop			;4448
	nop			;4449
	nop			;444a
	nop			;444b
	nop			;444c
	nop			;444d
	nop			;444e
	nop			;444f
	nop			;4450
	nop			;4451
	nop			;4452
	nop			;4453
	nop			;4454
	nop			;4455
	ld h,d			;4456
	inc l			;4457
	ld h,d			;4458
	add hl,hl		;4459
	ld h,d			;445a
	inc l			;445b
	nop			;445c
	nop			;445d
	nop			;445e
	nop			;445f
	nop			;4460
	nop			;4461
	nop			;4462
	nop			;4463
	nop			;4464
	nop			;4465
	nop			;4466
	nop			;4467
	nop			;4468
	nop			;4469
	nop			;446a
	nop			;446b
	nop			;446c
	nop			;446d
	ld h,d			;446e
	dec l			;446f
	ld h,d			;4470
	ld hl,(02d62h)		;4471
	nop			;4474
l4475h:
	nop			;4475
	nop			;4476
	nop			;4477
	nop			;4478
	nop			;4479
	nop			;447a
	nop			;447b
	ld h,d			;447c
	dec hl			;447d
	nop			;447e
	nop			;447f
	nop			;4480
	nop			;4481
	nop			;4482
	nop			;4483
	nop			;4484
	nop			;4485
	ld h,d			;4486
	ld l,062h		;4487
	inc l			;4489
	ld h,d			;448a
	ld l,000h		;448b
	nop			;448d
	nop			;448e
	nop			;448f
	nop			;4490
	nop			;4491
	nop			;4492
	nop			;4493
	ld h,d			;4494
	dec l			;4495
	nop			;4496
	nop			;4497
	nop			;4498
	nop			;4499
	nop			;449a
	nop			;449b
	nop			;449c
	nop			;449d
	ld h,d			;449e
	cpl			;449f
	ld h,d			;44a0
	ld l,062h		;44a1
	cpl			;44a3
	nop			;44a4
l44a5h:
	nop			;44a5
	nop			;44a6
	nop			;44a7
	nop			;44a8
	nop			;44a9
	nop			;44aa
	nop			;44ab
	ld h,d			;44ac
	cpl			;44ad
	nop			;44ae
	nop			;44af
	nop			;44b0
	nop			;44b1
	nop			;44b2
	nop			;44b3
	nop			;44b4
	nop			;44b5
	ld h,d			;44b6
	jr nc,l451bh		;44b7
	jr nc,$+100		;44b9
	jr nc,l44bdh		;44bb
l44bdh:
	nop			;44bd
	nop			;44be
	nop			;44bf
	nop			;44c0
	nop			;44c1
	inc sp			;44c2
	ld bc,00116h		;44c3
	daa			;44c6
	ld bc,0012eh		;44c7
	nop			;44ca
	ld de,00000h		;44cb
	ld h,d			;44ce
	jr nc,l44d1h		;44cf
l44d1h:
	nop			;44d1
	ld h,d			;44d2
	jr nc,l44d5h		;44d3
l44d5h:
	nop			;44d5
	nop			;44d6
	nop			;44d7
	nop			;44d8
	nop			;44d9
	ld h,d			;44da
	cpl			;44db
	ld h,d			;44dc
	jr nc,l4541h		;44dd
	cpl			;44df
	nop			;44e0
	nop			;44e1
	nop			;44e2
	nop			;44e3
	nop			;44e4
	nop			;44e5
	ld h,d			;44e6
	ld l,000h		;44e7
	nop			;44e9
	ld h,d			;44ea
	ld l,000h		;44eb
	nop			;44ed
	nop			;44ee
	nop			;44ef
	nop			;44f0
	nop			;44f1
	ld h,d			;44f2
	dec l			;44f3
	ld h,d			;44f4
	cpl			;44f5
	ld h,d			;44f6
	dec l			;44f7
	nop			;44f8
	nop			;44f9
	nop			;44fa
	nop			;44fb
	nop			;44fc
	nop			;44fd
	ld h,d			;44fe
	inc l			;44ff
	nop			;4500
	nop			;4501
	ld h,d			;4502
	inc l			;4503
	nop			;4504
	nop			;4505
	nop			;4506
	nop			;4507
	nop			;4508
	nop			;4509
	ld h,d			;450a
	dec hl			;450b
	ld h,d			;450c
	ld l,062h		;450d
	dec hl			;450f
	nop			;4510
	nop			;4511
	nop			;4512
	nop			;4513
	nop			;4514
	nop			;4515
	ld h,d			;4516
	ld hl,(00000h)		;4517
	ld h,d			;451a
l451bh:
	ld hl,(00000h)		;451b
	nop			;451e
	nop			;451f
	nop			;4520
	nop			;4521
	ld h,d			;4522
	add hl,hl		;4523
	ld h,d			;4524
	dec l			;4525
	ld h,d			;4526
	add hl,hl		;4527
	nop			;4528
	nop			;4529
	nop			;452a
	nop			;452b
	nop			;452c
	nop			;452d
	ld h,d			;452e
	jr z,l4531h		;452f
l4531h:
	nop			;4531
	ld h,d			;4532
	jr z,l4535h		;4533
l4535h:
	nop			;4535
	nop			;4536
	nop			;4537
	nop			;4538
	nop			;4539
	ld h,d			;453a
	daa			;453b
	ld h,d			;453c
	inc l			;453d
	ld h,d			;453e
	daa			;453f
	nop			;4540
l4541h:
	nop			;4541
	nop			;4542
	nop			;4543
	nop			;4544
	nop			;4545
	nop			;4546
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
	ld h,d			;4552
	jr z,l45b7h		;4553
	dec hl			;4555
	ld h,d			;4556
	jr z,l4559h		;4557
l4559h:
	nop			;4559
	nop			;455a
	nop			;455b
	nop			;455c
	nop			;455d
	nop			;455e
	nop			;455f
	nop			;4560
	nop			;4561
	nop			;4562
	nop			;4563
	nop			;4564
	nop			;4565
	nop			;4566
	nop			;4567
	nop			;4568
	nop			;4569
	ld h,d			;456a
	add hl,hl		;456b
	ld h,d			;456c
	ld hl,(02962h)		;456d
	nop			;4570
	nop			;4571
	nop			;4572
	nop			;4573
	nop			;4574
	nop			;4575
	nop			;4576
	nop			;4577
	nop			;4578
	nop			;4579
	nop			;457a
	nop			;457b
	nop			;457c
	nop			;457d
	nop			;457e
	nop			;457f
	nop			;4580
	nop			;4581
	nop			;4582
	nop			;4583
	nop			;4584
	nop			;4585
	nop			;4586
	nop			;4587
	nop			;4588
	nop			;4589
	nop			;458a
	nop			;458b
	nop			;458c
	nop			;458d
	ld h,d			;458e
	add hl,hl		;458f
	ld h,d			;4590
	add hl,hl		;4591
	ld h,d			;4592
	add hl,hl		;4593
	nop			;4594
	nop			;4595
	nop			;4596
	nop			;4597
	nop			;4598
	nop			;4599
	nop			;459a
	nop			;459b
	nop			;459c
	nop			;459d
	nop			;459e
	nop			;459f
	nop			;45a0
	nop			;45a1
	nop			;45a2
	nop			;45a3
	nop			;45a4
	nop			;45a5
	ld h,d			;45a6
	ld hl,(02a62h)		;45a7
	ld h,d			;45aa
	ld hl,(00000h)		;45ab
	nop			;45ae
	nop			;45af
	nop			;45b0
	nop			;45b1
	nop			;45b2
	nop			;45b3
	nop			;45b4
	nop			;45b5
	nop			;45b6
l45b7h:
	nop			;45b7
	nop			;45b8
	nop			;45b9
	nop			;45ba
	nop			;45bb
	nop			;45bc
	nop			;45bd
	ld h,d			;45be
	dec hl			;45bf
	ld h,d			;45c0
	dec hl			;45c1
	ld h,d			;45c2
	dec hl			;45c3
	nop			;45c4
	nop			;45c5
	nop			;45c6
	nop			;45c7
	nop			;45c8
	nop			;45c9
	nop			;45ca
	nop			;45cb
	nop			;45cc
	nop			;45cd
	nop			;45ce
	nop			;45cf
	nop			;45d0
	nop			;45d1
	nop			;45d2
	nop			;45d3
	nop			;45d4
	nop			;45d5
	ld h,d			;45d6
	inc l			;45d7
	ld h,d			;45d8
	inc l			;45d9
	ld h,d			;45da
	inc l			;45db
	nop			;45dc
	nop			;45dd
	nop			;45de
	nop			;45df
	nop			;45e0
	nop			;45e1
	nop			;45e2
	nop			;45e3
	nop			;45e4
	nop			;45e5
	nop			;45e6
	nop			;45e7
	nop			;45e8
	nop			;45e9
	nop			;45ea
	nop			;45eb
	nop			;45ec
	nop			;45ed
	ld h,d			;45ee
	dec l			;45ef
	ld h,d			;45f0
	dec l			;45f1
	ld h,d			;45f2
	dec l			;45f3
	nop			;45f4
	nop			;45f5
	nop			;45f6
	djnz l45f9h		;45f7
l45f9h:
	nop			;45f9
	nop			;45fa
	nop			;45fb
	nop			;45fc
	nop			;45fd
	nop			;45fe
	nop			;45ff
	nop			;4600
	nop			;4601
	nop			;4602
	nop			;4603
	nop			;4604
	nop			;4605
	ld h,d			;4606
	ld l,062h		;4607
	ld l,062h		;4609
	ld l,000h		;460b
	nop			;460d
	nop			;460e
	nop			;460f
	nop			;4610
	nop			;4611
	nop			;4612
	nop			;4613
	ld l,h			;4614
	ld bc,0016ch		;4615
	nop			;4618
	nop			;4619
	nop			;461a
	nop			;461b
	nop			;461c
	nop			;461d
	ld h,d			;461e
	cpl			;461f
	ld h,d			;4620
	cpl			;4621
	ld h,d			;4622
	cpl			;4623
	nop			;4624
	nop			;4625
	nop			;4626
	ld a,(bc)		;4627
	ld h,c			;4628
	nop			;4629
	ld h,c			;462a
	nop			;462b
	ld h,c			;462c
	nop			;462d
	ld h,c			;462e
	nop			;462f
	nop			;4630
	nop			;4631
	nop			;4632
	add hl,de		;4633
	ld h,d			;4634
	nop			;4635
	ld h,d			;4636
	nop			;4637
	ld h,d			;4638
	nop			;4639
	ld h,d			;463a
	inc de			;463b
	nop			;463c
	nop			;463d
	nop			;463e
	nop			;463f
	rrca			;4640
	rrca			;4641
	ld h,c			;4642
	nop			;4643
	inc bc			;4644
	rrca			;4645
	ld l,004h		;4646
	inc sp			;4648
	inc b			;4649
	rlca			;464a
	dec d			;464b
	ld h,c			;464c
	nop			;464d
	rrca			;464e
	rrca			;464f
	inc bc			;4650
	rrca			;4651
	ld h,a			;4652
	ld (bc),a		;4653
	ld h,a			;4654
	ld (bc),a		;4655
	rlca			;4656
	nop			;4657
	rrca			;4658
	rrca			;4659
	ld h,c			;465a
	nop			;465b
	inc bc			;465c
	rrca			;465d
	nop			;465e
	nop			;465f
	nop			;4660
	nop			;4661
	rlca			;4662
	nop			;4663
	ld h,c			;4664
	nop			;4665
	rrca			;4666
	rrca			;4667
	inc bc			;4668
	rrca			;4669
	nop			;466a
	nop			;466b
	nop			;466c
	nop			;466d
	rlca			;466e
	ld (de),a		;466f
	nop			;4670
	nop			;4671
	ld l,h			;4672
	inc c			;4673
	ld l,h			;4674
	inc c			;4675
	ld l,h			;4676
	ld bc,0016ch		;4677
	nop			;467a
	nop			;467b
	rrca			;467c
	rrca			;467d
	ld h,c			;467e
	nop			;467f
	inc bc			;4680
	ld a,(bc)		;4681
	ld l,e			;4682
	ld bc,0016bh		;4683
	rlca			;4686
	ld (de),a		;4687
	ld h,c			;4688
	nop			;4689
	rrca			;468a
	rrca			;468b
	inc bc			;468c
	ld a,(bc)		;468d
	nop			;468e
	nop			;468f
	nop			;4690
	nop			;4691
	rlca			;4692
	nop			;4693
	rrca			;4694
	rrca			;4695
	ld h,c			;4696
	nop			;4697
	inc bc			;4698
	ld a,(bc)		;4699
	nop			;469a
	nop			;469b
	nop			;469c
	nop			;469d
	ld (bc),a		;469e
	dec d			;469f
	ld h,c			;46a0
	nop			;46a1
	rrca			;46a2
	rrca			;46a3
	inc bc			;46a4
	ld a,(bc)		;46a5
	nop			;46a6
	nop			;46a7
	nop			;46a8
	nop			;46a9
	ld (bc),a		;46aa
	nop			;46ab
	rrca			;46ac
	rrca			;46ad
	ld h,c			;46ae
	nop			;46af
	inc bc			;46b0
	ld a,(bc)		;46b1
	nop			;46b2
	nop			;46b3
	nop			;46b4
	nop			;46b5
	ld (bc),a		;46b6
	nop			;46b7
	ld h,c			;46b8
	nop			;46b9
	rrca			;46ba
	rrca			;46bb
	inc bc			;46bc
	ld a,(bc)		;46bd
	nop			;46be
	nop			;46bf
	nop			;46c0
	nop			;46c1
	ld (bc),a		;46c2
	nop			;46c3
	rrca			;46c4
	rrca			;46c5
	ld h,c			;46c6
	nop			;46c7
	inc bc			;46c8
	ld a,(bc)		;46c9
	nop			;46ca
	nop			;46cb
	nop			;46cc
	nop			;46cd
	ld (bc),a		;46ce
	nop			;46cf
	ld h,c			;46d0
	nop			;46d1
	rrca			;46d2
	rrca			;46d3
	inc bc			;46d4
	ld a,(bc)		;46d5
	nop			;46d6
	nop			;46d7
	nop			;46d8
	nop			;46d9
	ld (bc),a		;46da
	nop			;46db
	rrca			;46dc
	rrca			;46dd
	ld h,c			;46de
	nop			;46df
	inc bc			;46e0
	ld a,(bc)		;46e1
	nop			;46e2
	nop			;46e3
	nop			;46e4
	nop			;46e5
	ld (bc),a		;46e6
	ld (de),a		;46e7
	ld l,h			;46e8
	inc c			;46e9
	nop			;46ea
	nop			;46eb
	ld l,h			;46ec
	inc c			;46ed
	ld l,h			;46ee
	ld bc,0016ch		;46ef
	nop			;46f2
	nop			;46f3
	rrca			;46f4
	rrca			;46f5
	nop			;46f6
	nop			;46f7
	inc bc			;46f8
	ld a,(bc)		;46f9
	ld l,e			;46fa
	ld bc,0016bh		;46fb
	ld (bc),a		;46fe
	dec d			;46ff
	ld h,c			;4700
	nop			;4701
	rrca			;4702
	rrca			;4703
	inc bc			;4704
	ld a,(bc)		;4705
	nop			;4706
	nop			;4707
	nop			;4708
	nop			;4709
	ld (bc),a		;470a
	nop			;470b
	rrca			;470c
	rrca			;470d
	ld h,c			;470e
	nop			;470f
	inc bc			;4710
	ld a,(bc)		;4711
	nop			;4712
	nop			;4713
	nop			;4714
	nop			;4715
	ld (bc),a		;4716
	nop			;4717
	ld h,c			;4718
	nop			;4719
	rrca			;471a
	rrca			;471b
	inc bc			;471c
	ld a,(bc)		;471d
	nop			;471e
	nop			;471f
	nop			;4720
	nop			;4721
	ld (bc),a		;4722
	ld (de),a		;4723
	rrca			;4724
	rrca			;4725
	ld h,c			;4726
	nop			;4727
	inc bc			;4728
	ld a,(bc)		;4729
	nop			;472a
	nop			;472b
	nop			;472c
	nop			;472d
	ld (bc),a		;472e
	nop			;472f
	rrca			;4730
	rrca			;4731
	ld h,c			;4732
	nop			;4733
	inc bc			;4734
	ld a,(bc)		;4735
	nop			;4736
	nop			;4737
	nop			;4738
	nop			;4739
	ld (bc),a		;473a
	dec d			;473b
	ld h,c			;473c
	nop			;473d
	rrca			;473e
	rrca			;473f
	inc bc			;4740
	ld a,(bc)		;4741
	nop			;4742
	nop			;4743
	nop			;4744
	nop			;4745
	ld (bc),a		;4746
	nop			;4747
	rrca			;4748
	rrca			;4749
	ld h,c			;474a
	nop			;474b
	inc bc			;474c
	ld a,(bc)		;474d
	nop			;474e
	nop			;474f
	nop			;4750
	nop			;4751
	ld (bc),a		;4752
	nop			;4753
	ld h,c			;4754
	nop			;4755
	rrca			;4756
	rrca			;4757
	inc bc			;4758
	ld a,(bc)		;4759
	nop			;475a
	nop			;475b
	nop			;475c
	nop			;475d
	ld (bc),a		;475e
	ld (de),a		;475f
	ld h,c			;4760
	nop			;4761
	ld l,h			;4762
	inc c			;4763
	ld l,h			;4764
	inc c			;4765
	ld l,h			;4766
	ld bc,0016ch		;4767
	nop			;476a
	nop			;476b
	rrca			;476c
	rrca			;476d
	ld h,c			;476e
	nop			;476f
	inc bc			;4770
	ld a,(bc)		;4771
	ld l,e			;4772
	ld bc,0016bh		;4773
	ld (bc),a		;4776
	ld (de),a		;4777
	ld h,c			;4778
	nop			;4779
	rrca			;477a
	rrca			;477b
	inc bc			;477c
	ld a,(bc)		;477d
	nop			;477e
	nop			;477f
	nop			;4780
	nop			;4781
	ld (bc),a		;4782
	nop			;4783
	rrca			;4784
	rrca			;4785
	ld h,c			;4786
	nop			;4787
	inc bc			;4788
	ld a,(bc)		;4789
	nop			;478a
	nop			;478b
	nop			;478c
	nop			;478d
	ld (bc),a		;478e
	dec d			;478f
	ld h,c			;4790
	nop			;4791
	rrca			;4792
	rrca			;4793
	inc bc			;4794
	ld a,(bc)		;4795
	nop			;4796
	nop			;4797
	nop			;4798
	nop			;4799
	ld (bc),a		;479a
	nop			;479b
	rrca			;479c
	rrca			;479d
	ld h,c			;479e
	nop			;479f
	inc bc			;47a0
	ld a,(bc)		;47a1
	nop			;47a2
	nop			;47a3
	nop			;47a4
	nop			;47a5
	ld (bc),a		;47a6
	nop			;47a7
	ld h,c			;47a8
	nop			;47a9
	rrca			;47aa
	rrca			;47ab
	inc bc			;47ac
	ld a,(bc)		;47ad
	nop			;47ae
	nop			;47af
	nop			;47b0
	nop			;47b1
	ld (bc),a		;47b2
	nop			;47b3
	rrca			;47b4
	rrca			;47b5
	ld h,c			;47b6
	nop			;47b7
	inc bc			;47b8
	ld a,(bc)		;47b9
	nop			;47ba
	nop			;47bb
	nop			;47bc
	nop			;47bd
	ld (bc),a		;47be
	nop			;47bf
	ld h,c			;47c0
	nop			;47c1
	rrca			;47c2
	rrca			;47c3
	inc bc			;47c4
	ld a,(bc)		;47c5
	nop			;47c6
	nop			;47c7
	nop			;47c8
	nop			;47c9
	ld (bc),a		;47ca
	nop			;47cb
	rrca			;47cc
	rrca			;47cd
	ld h,c			;47ce
	nop			;47cf
	inc bc			;47d0
	ld a,(bc)		;47d1
	nop			;47d2
	nop			;47d3
	nop			;47d4
	nop			;47d5
	ld (bc),a		;47d6
	ld (de),a		;47d7
	ld l,h			;47d8
	inc c			;47d9
	nop			;47da
	nop			;47db
	ld l,h			;47dc
	inc c			;47dd
	ld l,h			;47de
	ld bc,0016ch		;47df
	nop			;47e2
	nop			;47e3
	rrca			;47e4
	rrca			;47e5
	nop			;47e6
	nop			;47e7
	inc bc			;47e8
	ld a,(bc)		;47e9
	ld l,e			;47ea
	ld bc,0016bh		;47eb
	ld (bc),a		;47ee
	dec d			;47ef
	ld h,c			;47f0
	nop			;47f1
	djnz l4803h		;47f2
	inc b			;47f4
	ld a,(bc)		;47f5
	cpl			;47f6
	inc b			;47f7
	inc (hl)		;47f8
	inc b			;47f9
	ld (bc),a		;47fa
	nop			;47fb
	djnz l480dh		;47fc
	ld h,c			;47fe
	nop			;47ff
	inc b			;4800
	ld a,(bc)		;4801
	ld h,a			;4802
l4803h:
	ld (bc),a		;4803
	ld h,a			;4804
	ld (bc),a		;4805
	ld (bc),a		;4806
	nop			;4807
	ld h,c			;4808
	nop			;4809
	djnz l481bh		;480a
	inc b			;480c
l480dh:
	ld a,(bc)		;480d
	nop			;480e
	nop			;480f
	nop			;4810
	nop			;4811
	ld (bc),a		;4812
	ld (de),a		;4813
	djnz l4825h		;4814
	ld h,c			;4816
	nop			;4817
	inc b			;4818
	ld a,(bc)		;4819
	nop			;481a
l481bh:
	nop			;481b
	nop			;481c
	nop			;481d
	ld (bc),a		;481e
	nop			;481f
	rrca			;4820
	rrca			;4821
	ld h,c			;4822
	nop			;4823
	inc bc			;4824
l4825h:
	ld a,(bc)		;4825
	ld l,004h		;4826
	inc sp			;4828
	inc b			;4829
	ld (bc),a		;482a
	dec d			;482b
	ld h,c			;482c
	nop			;482d
	rrca			;482e
	rrca			;482f
	inc bc			;4830
	ld a,(bc)		;4831
	ld h,a			;4832
	ld (bc),a		;4833
	ld h,a			;4834
	ld (bc),a		;4835
	ld (bc),a		;4836
	nop			;4837
	rrca			;4838
	rrca			;4839
	ld h,c			;483a
	nop			;483b
	inc bc			;483c
	ld a,(bc)		;483d
	nop			;483e
	nop			;483f
	nop			;4840
	nop			;4841
	ld (bc),a		;4842
	nop			;4843
	ld h,c			;4844
	nop			;4845
	rrca			;4846
	rrca			;4847
	inc bc			;4848
	ld a,(bc)		;4849
	nop			;484a
	nop			;484b
	nop			;484c
	nop			;484d
	ld (bc),a		;484e
	ld (de),a		;484f
	ld h,c			;4850
	nop			;4851
	ld l,h			;4852
	inc c			;4853
	ld l,h			;4854
	inc c			;4855
	ld l,h			;4856
	ld bc,0016ch		;4857
	nop			;485a
	nop			;485b
	rrca			;485c
	rrca			;485d
	ld h,c			;485e
	nop			;485f
	inc bc			;4860
	ld a,(bc)		;4861
	ld l,e			;4862
	ld bc,0016bh		;4863
	ld (bc),a		;4866
	ld (de),a		;4867
	ld h,c			;4868
	nop			;4869
	rrca			;486a
	rrca			;486b
	inc bc			;486c
	ld a,(bc)		;486d
	nop			;486e
	nop			;486f
	nop			;4870
	nop			;4871
	ld (bc),a		;4872
	nop			;4873
	rrca			;4874
	rrca			;4875
	ld h,c			;4876
	nop			;4877
	inc bc			;4878
	ld a,(bc)		;4879
	nop			;487a
	nop			;487b
	nop			;487c
	nop			;487d
	ld (bc),a		;487e
	dec d			;487f
	ld h,c			;4880
	nop			;4881
	rrca			;4882
	rrca			;4883
	inc bc			;4884
	ld a,(bc)		;4885
	nop			;4886
	nop			;4887
	nop			;4888
	nop			;4889
	ld (bc),a		;488a
	nop			;488b
	rrca			;488c
	rrca			;488d
	ld h,c			;488e
	nop			;488f
	inc bc			;4890
	ld a,(bc)		;4891
	nop			;4892
	nop			;4893
	nop			;4894
	nop			;4895
	ld (bc),a		;4896
	nop			;4897
	ld h,c			;4898
	nop			;4899
	rrca			;489a
	rrca			;489b
	inc bc			;489c
	ld a,(bc)		;489d
	nop			;489e
	nop			;489f
	nop			;48a0
	nop			;48a1
	ld (bc),a		;48a2
	nop			;48a3
	rrca			;48a4
	rrca			;48a5
	ld h,c			;48a6
	nop			;48a7
	inc bc			;48a8
	ld a,(bc)		;48a9
	nop			;48aa
	nop			;48ab
	nop			;48ac
	nop			;48ad
	ld (bc),a		;48ae
	nop			;48af
	ld h,c			;48b0
	nop			;48b1
	rrca			;48b2
	rrca			;48b3
	inc bc			;48b4
	ld a,(bc)		;48b5
	nop			;48b6
	nop			;48b7
	nop			;48b8
	nop			;48b9
	ld (bc),a		;48ba
	nop			;48bb
	rrca			;48bc
	rrca			;48bd
	ld h,c			;48be
	nop			;48bf
	inc bc			;48c0
	ld a,(bc)		;48c1
	nop			;48c2
	nop			;48c3
	nop			;48c4
	nop			;48c5
	ld (bc),a		;48c6
	ld (de),a		;48c7
	ld l,h			;48c8
	inc c			;48c9
	nop			;48ca
	nop			;48cb
	ld l,h			;48cc
	inc c			;48cd
	ld l,h			;48ce
	ld bc,0016ch		;48cf
	nop			;48d2
	nop			;48d3
	rrca			;48d4
	rrca			;48d5
	nop			;48d6
	nop			;48d7
	inc bc			;48d8
	ld a,(bc)		;48d9
	ld l,e			;48da
	ld bc,0016bh		;48db
	ld (bc),a		;48de
	dec d			;48df
	ld h,c			;48e0
	nop			;48e1
	rrca			;48e2
	rrca			;48e3
	inc bc			;48e4
	ld a,(bc)		;48e5
	nop			;48e6
	nop			;48e7
	nop			;48e8
	nop			;48e9
	ld (bc),a		;48ea
	nop			;48eb
	rrca			;48ec
	rrca			;48ed
	ld h,c			;48ee
	nop			;48ef
	inc bc			;48f0
	ld a,(bc)		;48f1
	nop			;48f2
	nop			;48f3
	nop			;48f4
	nop			;48f5
	ld (bc),a		;48f6
	nop			;48f7
	ld h,c			;48f8
	nop			;48f9
	rrca			;48fa
	rrca			;48fb
	inc bc			;48fc
	ld a,(bc)		;48fd
	nop			;48fe
	nop			;48ff
	nop			;4900
	nop			;4901
	ld (bc),a		;4902
	ld (de),a		;4903
	rrca			;4904
	rrca			;4905
	ld h,c			;4906
	nop			;4907
	inc bc			;4908
	ld a,(bc)		;4909
	nop			;490a
	nop			;490b
	nop			;490c
	nop			;490d
	ld (bc),a		;490e
	nop			;490f
	rrca			;4910
	rrca			;4911
	ld h,c			;4912
	nop			;4913
	inc bc			;4914
	ld a,(bc)		;4915
	nop			;4916
	nop			;4917
	nop			;4918
	nop			;4919
	ld (bc),a		;491a
	dec d			;491b
	ld h,c			;491c
	nop			;491d
	rrca			;491e
	rrca			;491f
	inc bc			;4920
	ld a,(bc)		;4921
	nop			;4922
	nop			;4923
	nop			;4924
	nop			;4925
	ld (bc),a		;4926
	nop			;4927
	rrca			;4928
	rrca			;4929
	ld h,c			;492a
	nop			;492b
	inc bc			;492c
	ld a,(bc)		;492d
	nop			;492e
	nop			;492f
	nop			;4930
	nop			;4931
	ld (bc),a		;4932
	nop			;4933
	ld h,c			;4934
	nop			;4935
	rrca			;4936
	rrca			;4937
	inc bc			;4938
	ld a,(bc)		;4939
	nop			;493a
	nop			;493b
	nop			;493c
	nop			;493d
	ld (bc),a		;493e
	ld (de),a		;493f
	ld h,c			;4940
	nop			;4941
	ld l,h			;4942
	inc c			;4943
	ld l,h			;4944
	inc c			;4945
	ld l,h			;4946
	ld bc,0016ch		;4947
	nop			;494a
	nop			;494b
	rrca			;494c
	rrca			;494d
	ld h,c			;494e
	nop			;494f
	inc bc			;4950
	ld a,(bc)		;4951
	ld l,e			;4952
	ld bc,0016bh		;4953
	ld (bc),a		;4956
	ld (de),a		;4957
	ld h,c			;4958
	nop			;4959
	rrca			;495a
	rrca			;495b
	inc bc			;495c
	ld a,(bc)		;495d
	nop			;495e
	nop			;495f
	nop			;4960
	nop			;4961
	ld (bc),a		;4962
	nop			;4963
	rrca			;4964
	rrca			;4965
	ld h,c			;4966
	nop			;4967
	inc bc			;4968
	ld a,(bc)		;4969
	nop			;496a
	nop			;496b
	nop			;496c
	nop			;496d
	ld (bc),a		;496e
	dec d			;496f
	ld h,c			;4970
	nop			;4971
	rrca			;4972
	rrca			;4973
	inc bc			;4974
	ld a,(bc)		;4975
	nop			;4976
	nop			;4977
	nop			;4978
	nop			;4979
	ld (bc),a		;497a
	nop			;497b
	rrca			;497c
	rrca			;497d
	ld h,c			;497e
	nop			;497f
	inc bc			;4980
	ld a,(bc)		;4981
	nop			;4982
	nop			;4983
	nop			;4984
	nop			;4985
	ld (bc),a		;4986
	nop			;4987
	ld h,c			;4988
	nop			;4989
	rrca			;498a
	rrca			;498b
	inc bc			;498c
	ld a,(bc)		;498d
	nop			;498e
	nop			;498f
	nop			;4990
	nop			;4991
	ld (bc),a		;4992
	nop			;4993
	rrca			;4994
	rrca			;4995
	ld h,c			;4996
	nop			;4997
	inc bc			;4998
	ld a,(bc)		;4999
	nop			;499a
	nop			;499b
	nop			;499c
	nop			;499d
	ld (bc),a		;499e
	nop			;499f
	ld h,c			;49a0
	nop			;49a1
	rrca			;49a2
	rrca			;49a3
	inc bc			;49a4
	ld a,(bc)		;49a5
	nop			;49a6
	nop			;49a7
	nop			;49a8
	nop			;49a9
	ld (bc),a		;49aa
	nop			;49ab
	rrca			;49ac
	rrca			;49ad
	ld h,c			;49ae
	nop			;49af
	inc bc			;49b0
	ld a,(bc)		;49b1
	nop			;49b2
	nop			;49b3
	nop			;49b4
	nop			;49b5
	ld (bc),a		;49b6
	ld (de),a		;49b7
	ld l,h			;49b8
	inc c			;49b9
	nop			;49ba
	nop			;49bb
	ld l,h			;49bc
	inc c			;49bd
	ld l,h			;49be
	ld bc,0016ch		;49bf
	nop			;49c2
	nop			;49c3
	rrca			;49c4
	rrca			;49c5
	nop			;49c6
	nop			;49c7
	inc bc			;49c8
	ld a,(bc)		;49c9
	ld l,e			;49ca
	ld bc,0016bh		;49cb
	ld (bc),a		;49ce
	dec d			;49cf
	ld h,c			;49d0
	nop			;49d1
	djnz l49e3h		;49d2
	inc b			;49d4
	ld a,(bc)		;49d5
	cpl			;49d6
	inc b			;49d7
	inc (hl)		;49d8
	inc b			;49d9
	ld (bc),a		;49da
	nop			;49db
	djnz l49edh		;49dc
	ld h,c			;49de
	nop			;49df
	inc b			;49e0
	ld a,(bc)		;49e1
	ld h,a			;49e2
l49e3h:
	ld (bc),a		;49e3
	ld h,a			;49e4
	ld (bc),a		;49e5
	ld (bc),a		;49e6
	nop			;49e7
	ld h,c			;49e8
	nop			;49e9
	djnz l49fbh		;49ea
	inc b			;49ec
l49edh:
	ld a,(bc)		;49ed
	nop			;49ee
	nop			;49ef
	nop			;49f0
	nop			;49f1
	ld (bc),a		;49f2
	ld (de),a		;49f3
	dec c			;49f4
	rrca			;49f5
	ld h,c			;49f6
	nop			;49f7
	ld bc,0620ah		;49f8
l49fbh:
	ld sp,00631h		;49fb
	ld (bc),a		;49fe
	nop			;49ff
	rrca			;4a00
	rrca			;4a01
	ld h,c			;4a02
	nop			;4a03
	inc bc			;4a04
	inc c			;4a05
	ld hl,(0270ah)		;4a06
	rrca			;4a09
	ld (bc),a		;4a0a
	dec d			;4a0b
	ld h,c			;4a0c
	nop			;4a0d
	rrca			;4a0e
	rrca			;4a0f
	inc bc			;4a10
	inc c			;4a11
	add hl,hl		;4a12
	ld a,(bc)		;4a13
	dec h			;4a14
	rrca			;4a15
	ld (bc),a		;4a16
	nop			;4a17
	rrca			;4a18
	rrca			;4a19
	ld h,c			;4a1a
	nop			;4a1b
	inc bc			;4a1c
	inc c			;4a1d
	ld hl,(0270ah)		;4a1e
	rrca			;4a21
	ld (bc),a		;4a22
	nop			;4a23
	ld h,c			;4a24
	nop			;4a25
	rrca			;4a26
	rrca			;4a27
	inc bc			;4a28
	inc c			;4a29
	ld sp,02c0ah		;4a2a
	rrca			;4a2d
	ld (bc),a		;4a2e
	ld (de),a		;4a2f
	ld h,c			;4a30
	nop			;4a31
	ld l,h			;4a32
	inc c			;4a33
	ld l,h			;4a34
	inc c			;4a35
	inc sp			;4a36
	ld a,(bc)		;4a37
	ld l,00fh		;4a38
	nop			;4a3a
	nop			;4a3b
	rrca			;4a3c
	rrca			;4a3d
	ld h,c			;4a3e
	nop			;4a3f
	inc bc			;4a40
	inc c			;4a41
	add hl,hl		;4a42
	ld a,(bc)		;4a43
	ld sp,0020fh		;4a44
	nop			;4a47
	ld h,c			;4a48
	nop			;4a49
	rrca			;4a4a
	rrca			;4a4b
	inc bc			;4a4c
	inc c			;4a4d
	ld (hl),00ah		;4a4e
	inc sp			;4a50
	rrca			;4a51
	ld (bc),a		;4a52
	nop			;4a53
	rrca			;4a54
	rrca			;4a55
	ld h,c			;4a56
	nop			;4a57
	inc bc			;4a58
	inc c			;4a59
	ld hl,(0270ah)		;4a5a
	rrca			;4a5d
	ld (bc),a		;4a5e
	dec d			;4a5f
	ld h,c			;4a60
	nop			;4a61
	rrca			;4a62
	rrca			;4a63
	inc bc			;4a64
	inc c			;4a65
	nop			;4a66
	nop			;4a67
	nop			;4a68
	nop			;4a69
	ld (bc),a		;4a6a
	nop			;4a6b
	rrca			;4a6c
	rrca			;4a6d
	ld h,c			;4a6e
	nop			;4a6f
	inc bc			;4a70
	inc c			;4a71
	ld h,a			;4a72
	ld (bc),a		;4a73
	ld h,a			;4a74
	ld (bc),a		;4a75
	ld (bc),a		;4a76
	nop			;4a77
	ld h,c			;4a78
	nop			;4a79
	rrca			;4a7a
	rrca			;4a7b
	inc bc			;4a7c
	inc c			;4a7d
	nop			;4a7e
	nop			;4a7f
	nop			;4a80
	nop			;4a81
	ld (bc),a		;4a82
	nop			;4a83
	rrca			;4a84
	rrca			;4a85
	ld h,c			;4a86
	nop			;4a87
	inc bc			;4a88
	inc c			;4a89
	nop			;4a8a
	nop			;4a8b
	nop			;4a8c
	nop			;4a8d
	ld (bc),a		;4a8e
	nop			;4a8f
	ld h,c			;4a90
	nop			;4a91
	rrca			;4a92
	rrca			;4a93
	inc bc			;4a94
	inc c			;4a95
	nop			;4a96
	nop			;4a97
	nop			;4a98
	nop			;4a99
	ld (bc),a		;4a9a
	nop			;4a9b
	rrca			;4a9c
	rrca			;4a9d
	ld h,c			;4a9e
	nop			;4a9f
	inc bc			;4aa0
	inc c			;4aa1
	nop			;4aa2
	nop			;4aa3
	nop			;4aa4
	nop			;4aa5
	ld (bc),a		;4aa6
	ld (de),a		;4aa7
	ld l,h			;4aa8
	inc c			;4aa9
	nop			;4aaa
	nop			;4aab
	ld l,h			;4aac
	inc c			;4aad
	nop			;4aae
	nop			;4aaf
	ld l,h			;4ab0
	inc c			;4ab1
	nop			;4ab2
	nop			;4ab3
	rrca			;4ab4
	rrca			;4ab5
	nop			;4ab6
	nop			;4ab7
	inc bc			;4ab8
	inc c			;4ab9
	inc l			;4aba
	ld a,(bc)		;4abb
	jr z,l4acdh		;4abc
	ld (bc),a		;4abe
	dec d			;4abf
	ld h,c			;4ac0
	nop			;4ac1
	rrca			;4ac2
	rrca			;4ac3
	inc bc			;4ac4
	inc c			;4ac5
	ld hl,(0270ah)		;4ac6
	rrca			;4ac9
	ld (bc),a		;4aca
	nop			;4acb
	rrca			;4acc
l4acdh:
	rrca			;4acd
	ld h,c			;4ace
	nop			;4acf
	inc bc			;4ad0
	inc c			;4ad1
	inc l			;4ad2
	ld a,(bc)		;4ad3
	jr z,l4ae5h		;4ad4
	ld (bc),a		;4ad6
	nop			;4ad7
	ld h,c			;4ad8
	nop			;4ad9
	rrca			;4ada
	rrca			;4adb
	inc bc			;4adc
	inc c			;4add
	ld sp,02c0ah		;4ade
	rrca			;4ae1
	ld (bc),a		;4ae2
	ld (de),a		;4ae3
	rrca			;4ae4
l4ae5h:
	rrca			;4ae5
	ld h,c			;4ae6
	nop			;4ae7
	inc bc			;4ae8
	inc c			;4ae9
	jr z,l4af6h		;4aea
	cpl			;4aec
	rrca			;4aed
	ld (bc),a		;4aee
	nop			;4aef
	rrca			;4af0
	rrca			;4af1
	ld h,c			;4af2
	nop			;4af3
	inc bc			;4af4
	inc c			;4af5
l4af6h:
	jr c,l4b02h		;4af6
	inc (hl)		;4af8
	rrca			;4af9
	ld (bc),a		;4afa
	dec d			;4afb
	ld h,c			;4afc
	nop			;4afd
	rrca			;4afe
	rrca			;4aff
	inc bc			;4b00
	inc c			;4b01
l4b02h:
	nop			;4b02
	nop			;4b03
	nop			;4b04
	nop			;4b05
	ld (bc),a		;4b06
	nop			;4b07
	rrca			;4b08
	rrca			;4b09
	ld h,c			;4b0a
	nop			;4b0b
	inc bc			;4b0c
	inc c			;4b0d
	ld l,h			;4b0e
	ld bc,00000h		;4b0f
	ld (bc),a		;4b12
	nop			;4b13
	ld h,c			;4b14
	nop			;4b15
	rrca			;4b16
	rrca			;4b17
	inc bc			;4b18
	inc c			;4b19
	ld l,h			;4b1a
	ld bc,00000h		;4b1b
	ld (bc),a		;4b1e
	ld (de),a		;4b1f
	ld h,c			;4b20
	nop			;4b21
	ld l,h			;4b22
	inc c			;4b23
	ld l,h			;4b24
	inc c			;4b25
	ld l,h			;4b26
	ld bc,00c6ch		;4b27
	nop			;4b2a
	nop			;4b2b
	rrca			;4b2c
	rrca			;4b2d
	ld h,c			;4b2e
	nop			;4b2f
	inc bc			;4b30
	inc c			;4b31
	ld sp,l6b0ah		;4b32
	inc c			;4b35
	ld (bc),a		;4b36
	ld (de),a		;4b37
	ld h,c			;4b38
	nop			;4b39
	rrca			;4b3a
	rrca			;4b3b
	inc bc			;4b3c
	inc c			;4b3d
	ld sp,0380ah		;4b3e
	rrca			;4b41
	ld (bc),a		;4b42
	nop			;4b43
	rrca			;4b44
	rrca			;4b45
	ld h,c			;4b46
	nop			;4b47
	inc bc			;4b48
	inc c			;4b49
	jr c,l4b5bh		;4b4a
	ld h,c			;4b4c
	nop			;4b4d
	ld (bc),a		;4b4e
	dec d			;4b4f
	ld h,c			;4b50
	nop			;4b51
	rrca			;4b52
	rrca			;4b53
	inc bc			;4b54
	inc c			;4b55
	jr c,l4b62h		;4b56
	inc (hl)		;4b58
	rrca			;4b59
	ld (bc),a		;4b5a
l4b5bh:
	nop			;4b5b
	rrca			;4b5c
	rrca			;4b5d
	ld h,c			;4b5e
	nop			;4b5f
	inc bc			;4b60
	inc c			;4b61
l4b62h:
	inc (hl)		;4b62
	rrca			;4b63
	jr c,$+12		;4b64
	ld (bc),a		;4b66
	nop			;4b67
	ld h,c			;4b68
	nop			;4b69
	rrca			;4b6a
	rrca			;4b6b
	inc bc			;4b6c
	inc c			;4b6d
	ld hl,(0330ah)		;4b6e
	rrca			;4b71
	ld (bc),a		;4b72
	nop			;4b73
	rrca			;4b74
	rrca			;4b75
	ld h,c			;4b76
	nop			;4b77
	inc bc			;4b78
	inc c			;4b79
	add hl,hl		;4b7a
	ld a,(bc)		;4b7b
	ld sp,0020fh		;4b7c
	nop			;4b7f
	ld h,c			;4b80
	nop			;4b81
	rrca			;4b82
	rrca			;4b83
	inc bc			;4b84
	inc c			;4b85
	jr c,l4b92h		;4b86
	inc (hl)		;4b88
	rrca			;4b89
	ld (bc),a		;4b8a
	nop			;4b8b
	rrca			;4b8c
	rrca			;4b8d
	ld h,c			;4b8e
	nop			;4b8f
	inc bc			;4b90
	inc c			;4b91
l4b92h:
	ld (hl),00ah		;4b92
	inc sp			;4b94
	rrca			;4b95
	ld (bc),a		;4b96
	ld (de),a		;4b97
	ld l,h			;4b98
	inc c			;4b99
	nop			;4b9a
	nop			;4b9b
	ld l,h			;4b9c
	inc c			;4b9d
	ld h,a			;4b9e
	ld (bc),a		;4b9f
	ld h,a			;4ba0
	ld (bc),a		;4ba1
	nop			;4ba2
	nop			;4ba3
	rrca			;4ba4
	rrca			;4ba5
	nop			;4ba6
	nop			;4ba7
	inc bc			;4ba8
	inc c			;4ba9
	ld l,h			;4baa
	ld bc,0016ch		;4bab
	ld (bc),a		;4bae
	dec d			;4baf
	ld h,c			;4bb0
	nop			;4bb1
	rrca			;4bb2
	rrca			;4bb3
	inc bc			;4bb4
	inc c			;4bb5
	nop			;4bb6
	nop			;4bb7
	nop			;4bb8
	nop			;4bb9
	ld (bc),a		;4bba
	nop			;4bbb
	rrca			;4bbc
	rrca			;4bbd
	ld h,c			;4bbe
	nop			;4bbf
	inc bc			;4bc0
	inc c			;4bc1
	ld l,h			;4bc2
	ld bc,0016ch		;4bc3
	ld (bc),a		;4bc6
	nop			;4bc7
	ld h,c			;4bc8
	nop			;4bc9
	rrca			;4bca
	rrca			;4bcb
	inc bc			;4bcc
	inc c			;4bcd
	nop			;4bce
	nop			;4bcf
	nop			;4bd0
	nop			;4bd1
	ld (bc),a		;4bd2
	ld (de),a		;4bd3
	rrca			;4bd4
	rrca			;4bd5
	ld h,c			;4bd6
	nop			;4bd7
	inc bc			;4bd8
	inc c			;4bd9
	ld l,h			;4bda
	ld bc,0016ch		;4bdb
	ld (bc),a		;4bde
	nop			;4bdf
	rrca			;4be0
	rrca			;4be1
	ld h,c			;4be2
	nop			;4be3
	inc bc			;4be4
	inc c			;4be5
	ld (0270ch),hl		;4be6
	dec c			;4be9
	ld (bc),a		;4bea
	dec d			;4beb
	ld h,c			;4bec
	nop			;4bed
	rrca			;4bee
	rrca			;4bef
	inc bc			;4bf0
	inc c			;4bf1
	ld h,a			;4bf2
	ld (bc),a		;4bf3
	ld h,a			;4bf4
	ld (bc),a		;4bf5
	ld (bc),a		;4bf6
	nop			;4bf7
	rrca			;4bf8
	rrca			;4bf9
	ld h,c			;4bfa
	nop			;4bfb
	inc bc			;4bfc
	inc c			;4bfd
	nop			;4bfe
	nop			;4bff
	nop			;4c00
	nop			;4c01
	ld (bc),a		;4c02
	nop			;4c03
	ld h,c			;4c04
	nop			;4c05
	rrca			;4c06
	rrca			;4c07
	inc bc			;4c08
	inc c			;4c09
	nop			;4c0a
	nop			;4c0b
	nop			;4c0c
	nop			;4c0d
	ld (bc),a		;4c0e
	ld (de),a		;4c0f
	ld h,c			;4c10
	nop			;4c11
	ld l,h			;4c12
	inc c			;4c13
	ld l,h			;4c14
	inc c			;4c15
	ld l,h			;4c16
	inc b			;4c17
	ld l,h			;4c18
	inc b			;4c19
	nop			;4c1a
	nop			;4c1b
	rrca			;4c1c
	rrca			;4c1d
	ld h,c			;4c1e
	nop			;4c1f
	inc bc			;4c20
	inc c			;4c21
	ld l,e			;4c22
	inc b			;4c23
	ld l,e			;4c24
	inc b			;4c25
	ld (bc),a		;4c26
	ld (de),a		;4c27
	ld h,c			;4c28
	nop			;4c29
	rrca			;4c2a
	rrca			;4c2b
	inc bc			;4c2c
	inc c			;4c2d
	nop			;4c2e
	nop			;4c2f
	nop			;4c30
	nop			;4c31
	ld (bc),a		;4c32
	nop			;4c33
	rrca			;4c34
	rrca			;4c35
	ld h,c			;4c36
	nop			;4c37
	inc bc			;4c38
	inc c			;4c39
	nop			;4c3a
	nop			;4c3b
	nop			;4c3c
	nop			;4c3d
	ld (bc),a		;4c3e
	dec d			;4c3f
	ld h,c			;4c40
	nop			;4c41
	rrca			;4c42
	rrca			;4c43
	inc bc			;4c44
	inc c			;4c45
	nop			;4c46
	nop			;4c47
	nop			;4c48
	nop			;4c49
	ld (bc),a		;4c4a
	nop			;4c4b
	rrca			;4c4c
	rrca			;4c4d
	ld h,c			;4c4e
	nop			;4c4f
	inc bc			;4c50
	inc c			;4c51
	nop			;4c52
	nop			;4c53
	nop			;4c54
	nop			;4c55
	ld (bc),a		;4c56
	nop			;4c57
	ld h,c			;4c58
	nop			;4c59
	rrca			;4c5a
	rrca			;4c5b
	inc bc			;4c5c
	inc c			;4c5d
	nop			;4c5e
	nop			;4c5f
	nop			;4c60
	nop			;4c61
	ld (bc),a		;4c62
	nop			;4c63
	rrca			;4c64
	rrca			;4c65
	ld h,c			;4c66
	nop			;4c67
	inc bc			;4c68
	inc c			;4c69
	nop			;4c6a
	nop			;4c6b
	nop			;4c6c
	nop			;4c6d
	ld (bc),a		;4c6e
	nop			;4c6f
	ld h,c			;4c70
	nop			;4c71
	rrca			;4c72
	rrca			;4c73
	inc bc			;4c74
	inc c			;4c75
	nop			;4c76
	nop			;4c77
	nop			;4c78
	nop			;4c79
	ld (bc),a		;4c7a
	nop			;4c7b
	rrca			;4c7c
	rrca			;4c7d
	ld h,c			;4c7e
	nop			;4c7f
	inc bc			;4c80
	inc c			;4c81
	nop			;4c82
	nop			;4c83
	nop			;4c84
	nop			;4c85
	ld (bc),a		;4c86
	ld (de),a		;4c87
	ld l,h			;4c88
	inc c			;4c89
	nop			;4c8a
	nop			;4c8b
	ld l,h			;4c8c
	inc c			;4c8d
	ld l,h			;4c8e
	inc c			;4c8f
	ld l,h			;4c90
	inc c			;4c91
	nop			;4c92
	nop			;4c93
	rrca			;4c94
	rrca			;4c95
	nop			;4c96
	nop			;4c97
	inc bc			;4c98
	inc c			;4c99
	ld (0270ch),hl		;4c9a
	dec c			;4c9d
	ld (bc),a		;4c9e
	dec d			;4c9f
	ld h,c			;4ca0
	nop			;4ca1
	rrca			;4ca2
	rrca			;4ca3
	inc bc			;4ca4
	inc c			;4ca5
	nop			;4ca6
	nop			;4ca7
	nop			;4ca8
	nop			;4ca9
	ld (bc),a		;4caa
	nop			;4cab
	rrca			;4cac
	rrca			;4cad
	ld h,c			;4cae
	nop			;4caf
	inc bc			;4cb0
	inc c			;4cb1
	nop			;4cb2
	nop			;4cb3
	nop			;4cb4
	nop			;4cb5
	ld (bc),a		;4cb6
	nop			;4cb7
	ld h,c			;4cb8
	nop			;4cb9
	rrca			;4cba
	rrca			;4cbb
	inc bc			;4cbc
	inc c			;4cbd
	nop			;4cbe
	nop			;4cbf
	nop			;4cc0
	nop			;4cc1
	ld (bc),a		;4cc2
	ld (de),a		;4cc3
	rrca			;4cc4
	rrca			;4cc5
	ld h,c			;4cc6
	nop			;4cc7
	inc bc			;4cc8
	inc c			;4cc9
	ld l,h			;4cca
	inc b			;4ccb
	ld l,h			;4ccc
	ld b,002h		;4ccd
	nop			;4ccf
	rrca			;4cd0
	rrca			;4cd1
	ld h,c			;4cd2
	nop			;4cd3
	inc bc			;4cd4
	inc c			;4cd5
	ld (0270ch),hl		;4cd6
	dec c			;4cd9
	ld (bc),a		;4cda
	dec d			;4cdb
	ld h,c			;4cdc
	nop			;4cdd
	rrca			;4cde
	rrca			;4cdf
	inc bc			;4ce0
	inc c			;4ce1
	nop			;4ce2
	nop			;4ce3
	nop			;4ce4
	nop			;4ce5
	ld (bc),a		;4ce6
	nop			;4ce7
	rrca			;4ce8
	rrca			;4ce9
	ld h,c			;4cea
	nop			;4ceb
	inc bc			;4cec
	inc c			;4ced
	nop			;4cee
	nop			;4cef
	nop			;4cf0
	nop			;4cf1
	ld (bc),a		;4cf2
	nop			;4cf3
	ld h,c			;4cf4
	nop			;4cf5
	rrca			;4cf6
	rrca			;4cf7
	inc bc			;4cf8
	inc c			;4cf9
	nop			;4cfa
	nop			;4cfb
	nop			;4cfc
	nop			;4cfd
	ld (bc),a		;4cfe
	ld (de),a		;4cff
	ld h,c			;4d00
	nop			;4d01
	ld l,h			;4d02
	inc c			;4d03
	ld l,h			;4d04
	inc c			;4d05
	ld l,h			;4d06
	inc c			;4d07
	ld l,h			;4d08
	inc c			;4d09
	nop			;4d0a
	nop			;4d0b
	rrca			;4d0c
	rrca			;4d0d
	ld h,c			;4d0e
	nop			;4d0f
	inc bc			;4d10
	inc c			;4d11
	ld l,e			;4d12
	inc c			;4d13
	ld l,e			;4d14
	inc c			;4d15
	ld (bc),a		;4d16
	ld (de),a		;4d17
	ld h,c			;4d18
	nop			;4d19
	rrca			;4d1a
	rrca			;4d1b
	inc bc			;4d1c
	inc c			;4d1d
	nop			;4d1e
	nop			;4d1f
	nop			;4d20
	nop			;4d21
	ld (bc),a		;4d22
	nop			;4d23
	rrca			;4d24
	rrca			;4d25
	ld h,c			;4d26
	nop			;4d27
	inc bc			;4d28
	inc c			;4d29
	nop			;4d2a
	nop			;4d2b
	nop			;4d2c
	nop			;4d2d
	ld (bc),a		;4d2e
	dec d			;4d2f
	ld h,c			;4d30
	nop			;4d31
	rrca			;4d32
	rrca			;4d33
	inc bc			;4d34
	inc c			;4d35
	nop			;4d36
	nop			;4d37
	nop			;4d38
	nop			;4d39
	ld (bc),a		;4d3a
	nop			;4d3b
	rrca			;4d3c
	rrca			;4d3d
	ld h,c			;4d3e
	nop			;4d3f
	inc bc			;4d40
	inc c			;4d41
	nop			;4d42
	nop			;4d43
	nop			;4d44
	nop			;4d45
	ld (bc),a		;4d46
	nop			;4d47
	ld h,c			;4d48
	nop			;4d49
	rrca			;4d4a
	rrca			;4d4b
	inc bc			;4d4c
	inc c			;4d4d
	nop			;4d4e
	nop			;4d4f
	nop			;4d50
	nop			;4d51
	ld (bc),a		;4d52
	nop			;4d53
	rrca			;4d54
	rrca			;4d55
	ld h,c			;4d56
	nop			;4d57
	inc bc			;4d58
	inc c			;4d59
	nop			;4d5a
	nop			;4d5b
	nop			;4d5c
	nop			;4d5d
	ld (bc),a		;4d5e
	nop			;4d5f
	ld h,c			;4d60
	nop			;4d61
	rrca			;4d62
	rrca			;4d63
	inc bc			;4d64
	inc c			;4d65
	nop			;4d66
	nop			;4d67
	nop			;4d68
	nop			;4d69
	ld (bc),a		;4d6a
	nop			;4d6b
	rrca			;4d6c
	rrca			;4d6d
	ld h,c			;4d6e
	nop			;4d6f
	inc bc			;4d70
	inc c			;4d71
	nop			;4d72
	nop			;4d73
	nop			;4d74
	nop			;4d75
	ld (bc),a		;4d76
	ld (de),a		;4d77
	ld l,h			;4d78
	inc c			;4d79
	nop			;4d7a
	nop			;4d7b
	ld l,h			;4d7c
	inc c			;4d7d
	ld l,h			;4d7e
	inc c			;4d7f
	ld l,h			;4d80
	inc c			;4d81
	nop			;4d82
	nop			;4d83
	rrca			;4d84
	rrca			;4d85
	nop			;4d86
	nop			;4d87
	inc bc			;4d88
	inc c			;4d89
	ld (0270ch),hl		;4d8a
	dec c			;4d8d
	ld (bc),a		;4d8e
	dec d			;4d8f
	ld h,c			;4d90
	nop			;4d91
	rrca			;4d92
	rrca			;4d93
	inc bc			;4d94
	inc c			;4d95
	nop			;4d96
	nop			;4d97
	nop			;4d98
	nop			;4d99
	ld (bc),a		;4d9a
	nop			;4d9b
	rrca			;4d9c
	rrca			;4d9d
	ld h,c			;4d9e
	nop			;4d9f
	inc bc			;4da0
	inc c			;4da1
	nop			;4da2
	nop			;4da3
	nop			;4da4
	nop			;4da5
	ld (bc),a		;4da6
	nop			;4da7
	ld h,c			;4da8
	nop			;4da9
	rrca			;4daa
	rrca			;4dab
	inc bc			;4dac
	inc c			;4dad
	nop			;4dae
	nop			;4daf
	nop			;4db0
	nop			;4db1
	ld (bc),a		;4db2
	ld (de),a		;4db3
	rrca			;4db4
	rrca			;4db5
	ld h,c			;4db6
	nop			;4db7
	inc bc			;4db8
	inc c			;4db9
	nop			;4dba
	nop			;4dbb
	nop			;4dbc
	nop			;4dbd
	ld (bc),a		;4dbe
	nop			;4dbf
	ld h,d			;4dc0
	jr nc,l4e25h		;4dc1
	jr nc,$+5		;4dc3
	inc c			;4dc5
	ld h,d			;4dc6
	ld (00f27h),a		;4dc7
	ex af,af'		;4dca
	dec d			;4dcb
	daa			;4dcc
	dec b			;4dcd
	dec de			;4dce
	ld a,(bc)		;4dcf
	inc bc			;4dd0
	inc c			;4dd1
	add hl,hl		;4dd2
	ld a,(bc)		;4dd3
	dec h			;4dd4
	rrca			;4dd5
	ex af,af'		;4dd6
	nop			;4dd7
	ld h,d			;4dd8
	jr nc,l4e3dh		;4dd9
	jr nc,$+5		;4ddb
	inc c			;4ddd
	ld hl,(0270ah)		;4dde
	rrca			;4de1
	ex af,af'		;4de2
	nop			;4de3
	nop			;4de4
	nop			;4de5
	nop			;4de6
	nop			;4de7
	inc bc			;4de8
	inc c			;4de9
	ld sp,02c0ah		;4dea
	rrca			;4ded
	ex af,af'		;4dee
	ld (de),a		;4def
	ld h,d			;4df0
	cpl			;4df1
	ld h,d			;4df2
	cpl			;4df3
	ld l,h			;4df4
	inc c			;4df5
	inc sp			;4df6
	ld a,(bc)		;4df7
	ld l,00fh		;4df8
	nop			;4dfa
	nop			;4dfb
	nop			;4dfc
	nop			;4dfd
	nop			;4dfe
	nop			;4dff
	inc bc			;4e00
	inc c			;4e01
	add hl,hl		;4e02
	ld a,(bc)		;4e03
	ld sp,0080fh		;4e04
	ld (de),a		;4e07
	ld h,d			;4e08
	ld l,062h		;4e09
	ld l,003h		;4e0b
	inc c			;4e0d
	ld (hl),00ah		;4e0e
	inc sp			;4e10
	rrca			;4e11
	ex af,af'		;4e12
	nop			;4e13
	nop			;4e14
	nop			;4e15
	nop			;4e16
	nop			;4e17
	inc bc			;4e18
	inc c			;4e19
	ld hl,(0270ah)		;4e1a
	rrca			;4e1d
	ex af,af'		;4e1e
	dec d			;4e1f
	ld h,d			;4e20
	dec l			;4e21
	ld h,d			;4e22
	dec l			;4e23
	inc bc			;4e24
l4e25h:
	inc c			;4e25
	nop			;4e26
	nop			;4e27
	nop			;4e28
	nop			;4e29
	ex af,af'		;4e2a
	nop			;4e2b
	nop			;4e2c
	nop			;4e2d
	nop			;4e2e
	nop			;4e2f
	inc bc			;4e30
	inc c			;4e31
	ld h,a			;4e32
	ld (bc),a		;4e33
	ld h,a			;4e34
	ld (bc),a		;4e35
	ex af,af'		;4e36
	nop			;4e37
	ld h,d			;4e38
	inc l			;4e39
	ld h,d			;4e3a
	inc l			;4e3b
	inc bc			;4e3c
l4e3dh:
	inc c			;4e3d
	nop			;4e3e
	nop			;4e3f
	nop			;4e40
	nop			;4e41
	ex af,af'		;4e42
	nop			;4e43
	nop			;4e44
	nop			;4e45
	nop			;4e46
	nop			;4e47
	inc bc			;4e48
	inc c			;4e49
	nop			;4e4a
	nop			;4e4b
	nop			;4e4c
	nop			;4e4d
	ex af,af'		;4e4e
	nop			;4e4f
	ld h,d			;4e50
	dec hl			;4e51
	ld h,d			;4e52
	dec hl			;4e53
	inc bc			;4e54
	inc c			;4e55
	nop			;4e56
	nop			;4e57
	nop			;4e58
	nop			;4e59
	ex af,af'		;4e5a
	nop			;4e5b
	nop			;4e5c
	nop			;4e5d
	nop			;4e5e
	nop			;4e5f
	inc bc			;4e60
	inc c			;4e61
	nop			;4e62
	nop			;4e63
	nop			;4e64
	nop			;4e65
	ex af,af'		;4e66
	ld (de),a		;4e67
	ld h,d			;4e68
	ld hl,(02a62h)		;4e69
	ld l,h			;4e6c
	inc c			;4e6d
	ld l,h			;4e6e
	rlca			;4e6f
	ld l,h			;4e70
	rlca			;4e71
	nop			;4e72
	nop			;4e73
	nop			;4e74
	nop			;4e75
	nop			;4e76
	nop			;4e77
	inc bc			;4e78
	inc c			;4e79
	ld hl,(0270ah)		;4e7a
	rrca			;4e7d
	ex af,af'		;4e7e
	dec d			;4e7f
	nop			;4e80
	nop			;4e81
	nop			;4e82
	nop			;4e83
	inc bc			;4e84
	inc c			;4e85
	add hl,hl		;4e86
	ld a,(bc)		;4e87
	dec h			;4e88
	rrca			;4e89
	ex af,af'		;4e8a
	nop			;4e8b
	ld h,d			;4e8c
	jr z,$+100		;4e8d
	jr z,$+5		;4e8f
	inc c			;4e91
	ld hl,(0270ah)		;4e92
	rrca			;4e95
	ex af,af'		;4e96
	nop			;4e97
	nop			;4e98
	nop			;4e99
	nop			;4e9a
	nop			;4e9b
	inc bc			;4e9c
	inc c			;4e9d
	ld sp,02c0ah		;4e9e
	rrca			;4ea1
	ex af,af'		;4ea2
	ld (de),a		;4ea3
	ld h,d			;4ea4
	daa			;4ea5
	ld h,d			;4ea6
	daa			;4ea7
	inc bc			;4ea8
	inc c			;4ea9
	inc sp			;4eaa
	ld a,(bc)		;4eab
	ld l,00fh		;4eac
	ex af,af'		;4eae
	nop			;4eaf
	dec h			;4eb0
	dec b			;4eb1
	add hl,de		;4eb2
	ld a,(bc)		;4eb3
	ld bc,0380ch		;4eb4
	ld a,(bc)		;4eb7
	ld sp,0080fh		;4eb8
	dec d			;4ebb
	ld h,d			;4ebc
	jr z,l4f21h		;4ebd
	jr z,l4ec2h		;4ebf
	inc c			;4ec1
l4ec2h:
	ld h,a			;4ec2
	ld (bc),a		;4ec3
	ld h,a			;4ec4
	ld (bc),a		;4ec5
	ex af,af'		;4ec6
	nop			;4ec7
	nop			;4ec8
	nop			;4ec9
	nop			;4eca
	nop			;4ecb
	ld bc,0000ch		;4ecc
	nop			;4ecf
	nop			;4ed0
	nop			;4ed1
	ex af,af'		;4ed2
	nop			;4ed3
	ld h,d			;4ed4
	add hl,hl		;4ed5
	ld h,d			;4ed6
	add hl,hl		;4ed7
	ld bc,0000ch		;4ed8
	nop			;4edb
	nop			;4edc
	nop			;4edd
	ex af,af'		;4ede
	ld (de),a		;4edf
	nop			;4ee0
	nop			;4ee1
	nop			;4ee2
	nop			;4ee3
	ld l,h			;4ee4
	inc c			;4ee5
	nop			;4ee6
	nop			;4ee7
	nop			;4ee8
	nop			;4ee9
	nop			;4eea
	nop			;4eeb
	ld h,d			;4eec
	ld hl,(02a62h)		;4eed
	ld bc,0000ch		;4ef0
	nop			;4ef3
	nop			;4ef4
	nop			;4ef5
	ex af,af'		;4ef6
	ld (de),a		;4ef7
	ld h,d			;4ef8
	dec hl			;4ef9
	ld h,d			;4efa
	dec hl			;4efb
	ld bc,0000ch		;4efc
	nop			;4eff
	nop			;4f00
	nop			;4f01
	ex af,af'		;4f02
	nop			;4f03
	ld h,d			;4f04
	inc l			;4f05
	ld h,d			;4f06
	inc l			;4f07
	ld bc,0280ch		;4f08
	ld a,(bc)		;4f0b
	cpl			;4f0c
	rrca			;4f0d
	ex af,af'		;4f0e
	dec d			;4f0f
	ld h,d			;4f10
	dec l			;4f11
	ld h,d			;4f12
	dec l			;4f13
	ld bc,0670ch		;4f14
	ld (bc),a		;4f17
	ld h,a			;4f18
	ld (bc),a		;4f19
	ex af,af'		;4f1a
	nop			;4f1b
	ld h,d			;4f1c
	ld l,062h		;4f1d
	ld l,001h		;4f1f
l4f21h:
	inc c			;4f21
	nop			;4f22
	nop			;4f23
	nop			;4f24
	nop			;4f25
	ex af,af'		;4f26
	nop			;4f27
	ld h,d			;4f28
	cpl			;4f29
	ld h,d			;4f2a
	cpl			;4f2b
	ld bc,0270ch		;4f2c
	ld a,(bc)		;4f2f
	ld l,00fh		;4f30
	ex af,af'		;4f32
	nop			;4f33
	ld h,d			;4f34
	jr nc,$+100		;4f35
	jr nc,l4f3ah		;4f37
	inc c			;4f39
l4f3ah:
	ld h,a			;4f3a
	ld (bc),a		;4f3b
	ld h,a			;4f3c
	ld (bc),a		;4f3d
	ex af,af'		;4f3e
	nop			;4f3f
	ld h,d			;4f40
	jr nc,l4fa5h		;4f41
	jr nc,l4f46h		;4f43
	inc c			;4f45
l4f46h:
	nop			;4f46
	nop			;4f47
	nop			;4f48
	nop			;4f49
	ex af,af'		;4f4a
	nop			;4f4b
	nop			;4f4c
	nop			;4f4d
	nop			;4f4e
	nop			;4f4f
	ld bc,0380ch		;4f50
	ld a,(bc)		;4f53
	inc (hl)		;4f54
	rrca			;4f55
	ex af,af'		;4f56
	ld (de),a		;4f57
	ld h,d			;4f58
	jr nc,l4fbdh		;4f59
	jr nc,l4fc9h		;4f5b
	inc c			;4f5d
	ld h,a			;4f5e
	ld (bc),a		;4f5f
	ld h,a			;4f60
	ld (bc),a		;4f61
	nop			;4f62
	nop			;4f63
	nop			;4f64
	nop			;4f65
	nop			;4f66
	nop			;4f67
	ld bc,0360ch		;4f68
	ld a,(bc)		;4f6b
	inc sp			;4f6c
	rrca			;4f6d
	ex af,af'		;4f6e
	dec d			;4f6f
	ld h,d			;4f70
	cpl			;4f71
	ld h,d			;4f72
	cpl			;4f73
	ld bc,0670ch		;4f74
	ld (bc),a		;4f77
	ld h,a			;4f78
	ld (bc),a		;4f79
	ex af,af'		;4f7a
	nop			;4f7b
	nop			;4f7c
	nop			;4f7d
	nop			;4f7e
	nop			;4f7f
	ld bc,0000ch		;4f80
	nop			;4f83
	nop			;4f84
	nop			;4f85
	ex af,af'		;4f86
	nop			;4f87
	ld h,d			;4f88
	ld l,062h		;4f89
	ld l,001h		;4f8b
	inc c			;4f8d
	inc (hl)		;4f8e
	ld a,(bc)		;4f8f
	ld sp,0080fh		;4f90
	ld (de),a		;4f93
	nop			;4f94
	nop			;4f95
	nop			;4f96
	nop			;4f97
	ld bc,0670ch		;4f98
	ld (bc),a		;4f9b
	ld h,a			;4f9c
	ld (bc),a		;4f9d
	ex af,af'		;4f9e
	nop			;4f9f
	inc e			;4fa0
	dec b			;4fa1
	djnz l4faeh		;4fa2
	inc b			;4fa4
l4fa5h:
	inc c			;4fa5
	jr c,l4fb2h		;4fa6
	inc (hl)		;4fa8
	rrca			;4fa9
	ex af,af'		;4faa
	dec d			;4fab
	nop			;4fac
	nop			;4fad
l4faeh:
	nop			;4fae
	nop			;4faf
	inc b			;4fb0
	inc c			;4fb1
l4fb2h:
	ld h,a			;4fb2
	ld (bc),a		;4fb3
	ld h,a			;4fb4
	ld (bc),a		;4fb5
	ex af,af'		;4fb6
	nop			;4fb7
	ld h,d			;4fb8
	inc l			;4fb9
	ld h,d			;4fba
	inc l			;4fbb
	inc b			;4fbc
l4fbdh:
	inc c			;4fbd
	nop			;4fbe
	nop			;4fbf
	nop			;4fc0
	nop			;4fc1
	ex af,af'		;4fc2
	nop			;4fc3
	nop			;4fc4
	nop			;4fc5
	nop			;4fc6
	nop			;4fc7
	inc b			;4fc8
l4fc9h:
	inc c			;4fc9
	nop			;4fca
	nop			;4fcb
	nop			;4fcc
	nop			;4fcd
	ex af,af'		;4fce
	ld (de),a		;4fcf
	ld h,d			;4fd0
	dec hl			;4fd1
	ld h,d			;4fd2
	dec hl			;4fd3
	ld l,h			;4fd4
	inc c			;4fd5
	nop			;4fd6
	nop			;4fd7
	nop			;4fd8
	nop			;4fd9
	nop			;4fda
	nop			;4fdb
	nop			;4fdc
	nop			;4fdd
	nop			;4fde
	nop			;4fdf
	inc b			;4fe0
	inc c			;4fe1
	nop			;4fe2
	nop			;4fe3
	nop			;4fe4
	nop			;4fe5
	ex af,af'		;4fe6
	ld (de),a		;4fe7
	ld h,d			;4fe8
	ld hl,(02a62h)		;4fe9
	inc b			;4fec
	inc c			;4fed
	nop			;4fee
	nop			;4fef
	nop			;4ff0
	nop			;4ff1
	ex af,af'		;4ff2
	nop			;4ff3
	nop			;4ff4
	nop			;4ff5
	nop			;4ff6
	nop			;4ff7
	inc b			;4ff8
	inc c			;4ff9
	nop			;4ffa
	nop			;4ffb
	nop			;4ffc
	nop			;4ffd
	ex af,af'		;4ffe
	dec d			;4fff
	nop			;5000
	nop			;5001
	nop			;5002
	nop			;5003
	inc b			;5004
	inc c			;5005
	nop			;5006
	nop			;5007
	nop			;5008
	nop			;5009
	ex af,af'		;500a
	nop			;500b
	ld h,d			;500c
	jr z,l5071h		;500d
	jr z,l5015h		;500f
	inc c			;5011
	nop			;5012
	nop			;5013
	nop			;5014
l5015h:
	nop			;5015
	ex af,af'		;5016
	nop			;5017
	nop			;5018
	nop			;5019
	nop			;501a
	nop			;501b
	inc b			;501c
	inc c			;501d
	nop			;501e
	nop			;501f
	nop			;5020
	nop			;5021
	ex af,af'		;5022
	nop			;5023
	ld h,d			;5024
	daa			;5025
	ld h,d			;5026
	daa			;5027
	inc b			;5028
	inc c			;5029
	nop			;502a
	nop			;502b
	nop			;502c
	nop			;502d
	ex af,af'		;502e
	nop			;502f
	nop			;5030
	nop			;5031
	nop			;5032
	nop			;5033
	inc b			;5034
	inc c			;5035
	nop			;5036
	nop			;5037
	nop			;5038
	nop			;5039
	ex af,af'		;503a
	nop			;503b
	ld h,d			;503c
	jr z,l50a1h		;503d
	jr z,l5045h		;503f
	inc c			;5041
	nop			;5042
	nop			;5043
	nop			;5044
l5045h:
	nop			;5045
	ex af,af'		;5046
	ld (de),a		;5047
	nop			;5048
	nop			;5049
	nop			;504a
	nop			;504b
	ld l,h			;504c
	inc c			;504d
	ld l,h			;504e
	inc c			;504f
	ld l,h			;5050
	inc c			;5051
	nop			;5052
	nop			;5053
	ld h,d			;5054
	add hl,hl		;5055
	ld h,d			;5056
	add hl,hl		;5057
	inc b			;5058
	inc c			;5059
	inc hl			;505a
	inc c			;505b
	jr z,l506dh		;505c
	ex af,af'		;505e
	dec d			;505f
	nop			;5060
	nop			;5061
	nop			;5062
	nop			;5063
	inc b			;5064
	inc c			;5065
	jr z,l5074h		;5066
	dec h			;5068
	rrca			;5069
	ex af,af'		;506a
	nop			;506b
	ld h,d			;506c
l506dh:
	ld hl,(02a62h)		;506d
	inc b			;5070
l5071h:
	inc c			;5071
	inc hl			;5072
	inc c			;5073
l5074h:
	inc hl			;5074
	rrca			;5075
	ex af,af'		;5076
	nop			;5077
	ld h,d			;5078
	dec hl			;5079
	ld h,d			;507a
	dec hl			;507b
	inc b			;507c
	inc c			;507d
	ld (0220ch),hl		;507e
	rrca			;5081
	ex af,af'		;5082
	ld (de),a		;5083
	ld h,d			;5084
	inc l			;5085
	ld h,d			;5086
	inc l			;5087
	inc b			;5088
	inc c			;5089
	ld l,h			;508a
	inc b			;508b
	jr nz,l509dh		;508c
	ex af,af'		;508e
	nop			;508f
	ld e,005h		;5090
	ld (de),a		;5092
	ld a,(bc)		;5093
	ld b,00ch		;5094
	ld (02a0ch),hl		;5096
	rrca			;5099
	ex af,af'		;509a
	dec d			;509b
	ld h,d			;509c
l509dh:
	ld l,062h		;509d
	ld l,006h		;509f
l50a1h:
	inc c			;50a1
	nop			;50a2
	nop			;50a3
	nop			;50a4
	nop			;50a5
	ex af,af'		;50a6
	nop			;50a7
	ld h,d			;50a8
	cpl			;50a9
	ld h,d			;50aa
	cpl			;50ab
	ld b,00ch		;50ac
	nop			;50ae
	nop			;50af
	nop			;50b0
	nop			;50b1
	ex af,af'		;50b2
	nop			;50b3
	ld h,d			;50b4
	jr nc,$+100		;50b5
	jr nc,l50bfh		;50b7
	inc c			;50b9
	nop			;50ba
	nop			;50bb
	nop			;50bc
	nop			;50bd
	ex af,af'		;50be
l50bfh:
	ld (de),a		;50bf
	ld h,d			;50c0
	jr nc,$+100		;50c1
	jr nc,$+110		;50c3
	inc c			;50c5
	ld l,h			;50c6
	inc c			;50c7
	ld l,h			;50c8
	inc c			;50c9
	nop			;50ca
	nop			;50cb
	nop			;50cc
	nop			;50cd
	nop			;50ce
	nop			;50cf
	ld b,00ch		;50d0
	ld l,e			;50d2
	inc c			;50d3
	ld l,e			;50d4
	inc c			;50d5
	ex af,af'		;50d6
	ld (de),a		;50d7
	ld h,d			;50d8
	jr nc,l513dh		;50d9
	jr nc,l50e3h		;50db
	inc c			;50dd
	nop			;50de
	nop			;50df
	nop			;50e0
	nop			;50e1
	ex af,af'		;50e2
l50e3h:
	nop			;50e3
	nop			;50e4
	nop			;50e5
	nop			;50e6
	nop			;50e7
	ld b,00ch		;50e8
	nop			;50ea
	nop			;50eb
	nop			;50ec
	nop			;50ed
	ex af,af'		;50ee
	dec d			;50ef
	ld h,d			;50f0
	cpl			;50f1
	ld h,d			;50f2
	cpl			;50f3
	ld b,00ch		;50f4
	nop			;50f6
	nop			;50f7
	nop			;50f8
	nop			;50f9
	ex af,af'		;50fa
	nop			;50fb
	nop			;50fc
	nop			;50fd
	nop			;50fe
	nop			;50ff
	ld b,00ch		;5100
	nop			;5102
	nop			;5103
	nop			;5104
	nop			;5105
	ex af,af'		;5106
	nop			;5107
	ld h,d			;5108
	ld l,062h		;5109
	ld l,006h		;510b
	inc c			;510d
	nop			;510e
	nop			;510f
	nop			;5110
	nop			;5111
	ex af,af'		;5112
	nop			;5113
	nop			;5114
	nop			;5115
	nop			;5116
	nop			;5117
	ld b,00ch		;5118
	nop			;511a
	nop			;511b
	nop			;511c
	nop			;511d
	ex af,af'		;511e
	nop			;511f
	ld h,d			;5120
	dec l			;5121
	ld h,d			;5122
	dec l			;5123
	ld b,00ch		;5124
	nop			;5126
	nop			;5127
	nop			;5128
	nop			;5129
	ex af,af'		;512a
	nop			;512b
	nop			;512c
	nop			;512d
	nop			;512e
	nop			;512f
	ld b,00ch		;5130
	nop			;5132
	nop			;5133
	nop			;5134
	nop			;5135
	ex af,af'		;5136
	ld (de),a		;5137
	ld h,d			;5138
	inc l			;5139
	ld h,d			;513a
	inc l			;513b
	ld l,h			;513c
l513dh:
	inc c			;513d
	ld l,h			;513e
	inc c			;513f
	ld l,h			;5140
	inc c			;5141
	nop			;5142
	nop			;5143
	nop			;5144
	nop			;5145
	nop			;5146
	nop			;5147
	ld b,00ch		;5148
	ld (0270ch),hl		;514a
	dec c			;514d
	ex af,af'		;514e
	dec d			;514f
	ld h,d			;5150
	dec hl			;5151
	ld h,d			;5152
	dec hl			;5153
	ld b,00ch		;5154
	nop			;5156
	nop			;5157
	nop			;5158
	nop			;5159
	ex af,af'		;515a
	nop			;515b
	nop			;515c
	nop			;515d
	nop			;515e
	nop			;515f
	ld b,00ch		;5160
	nop			;5162
	nop			;5163
	nop			;5164
	nop			;5165
	ex af,af'		;5166
	nop			;5167
	ld h,d			;5168
	ld hl,(02a62h)		;5169
	ld b,00ch		;516c
	nop			;516e
	nop			;516f
	nop			;5170
	nop			;5171
	ex af,af'		;5172
	ld (de),a		;5173
	nop			;5174
	nop			;5175
	nop			;5176
	nop			;5177
	ld b,00ch		;5178
	nop			;517a
	nop			;517b
	nop			;517c
	nop			;517d
	ex af,af'		;517e
	nop			;517f
	ld h,d			;5180
	nop			;5181
	ld h,d			;5182
	jr nc,l518dh		;5183
	inc c			;5185
	inc (hl)		;5186
	dec c			;5187
	inc l			;5188
	rrca			;5189
	ld (bc),a		;518a
	dec d			;518b
	ex af,af'		;518c
l518dh:
	inc c			;518d
	jr nz,l519ah		;518e
	ex af,af'		;5190
	inc c			;5191
	inc sp			;5192
	dec c			;5193
	ld hl,(0080fh)		;5194
	nop			;5197
	ex af,af'		;5198
	inc c			;5199
l519ah:
	ld h,d			;519a
	jr nc,l51a5h		;519b
	inc c			;519d
	inc (hl)		;519e
	dec c			;519f
	inc l			;51a0
	rrca			;51a1
	ex af,af'		;51a2
	nop			;51a3
	ex af,af'		;51a4
l51a5h:
	inc c			;51a5
	nop			;51a6
	nop			;51a7
	ex af,af'		;51a8
	inc c			;51a9
	ld (hl),00dh		;51aa
	cpl			;51ac
	rrca			;51ad
	ld (bc),a		;51ae
	ld (de),a		;51af
	ld l,h			;51b0
	inc c			;51b1
	ld h,d			;51b2
	cpl			;51b3
	ld l,h			;51b4
	inc c			;51b5
	jr c,$+15		;51b6
	ld sp,0000fh		;51b8
	nop			;51bb
	ex af,af'		;51bc
	inc c			;51bd
	nop			;51be
	nop			;51bf
	ex af,af'		;51c0
	inc c			;51c1
	dec sp			;51c2
	dec c			;51c3
	ld (hl),00fh		;51c4
	ld (bc),a		;51c6
	ld (de),a		;51c7
	ex af,af'		;51c8
	inc c			;51c9
	ld h,d			;51ca
	ld l,008h		;51cb
	inc c			;51cd
	dec a			;51ce
	dec c			;51cf
	jr c,l51e1h		;51d0
	ex af,af'		;51d2
	nop			;51d3
	ex af,af'		;51d4
	inc c			;51d5
	nop			;51d6
	nop			;51d7
	ex af,af'		;51d8
	inc c			;51d9
	nop			;51da
	nop			;51db
	nop			;51dc
	nop			;51dd
	ld (bc),a		;51de
	dec d			;51df
	ex af,af'		;51e0
l51e1h:
	inc c			;51e1
	ld h,d			;51e2
	dec l			;51e3
	ex af,af'		;51e4
	inc c			;51e5
	ld h,a			;51e6
	ld (bc),a		;51e7
	ld h,a			;51e8
	ld (bc),a		;51e9
	ex af,af'		;51ea
	nop			;51eb
	ex af,af'		;51ec
	inc c			;51ed
	nop			;51ee
	nop			;51ef
	ex af,af'		;51f0
	inc c			;51f1
	nop			;51f2
	nop			;51f3
	nop			;51f4
	nop			;51f5
	ex af,af'		;51f6
	nop			;51f7
	ex af,af'		;51f8
	inc c			;51f9
	ld h,d			;51fa
	inc l			;51fb
	ex af,af'		;51fc
	inc c			;51fd
	nop			;51fe
	nop			;51ff
	nop			;5200
	nop			;5201
	ld (bc),a		;5202
	nop			;5203
	ex af,af'		;5204
	inc c			;5205
	nop			;5206
	nop			;5207
	ex af,af'		;5208
	inc c			;5209
	nop			;520a
	nop			;520b
	nop			;520c
	nop			;520d
	ex af,af'		;520e
	nop			;520f
	ex af,af'		;5210
	inc c			;5211
	ld h,d			;5212
	dec hl			;5213
	ex af,af'		;5214
	inc c			;5215
	nop			;5216
	nop			;5217
	nop			;5218
	nop			;5219
	ex af,af'		;521a
	nop			;521b
	ex af,af'		;521c
	inc c			;521d
	nop			;521e
	nop			;521f
	ex af,af'		;5220
	inc c			;5221
	nop			;5222
	nop			;5223
	nop			;5224
	nop			;5225
	ld (bc),a		;5226
	ld (de),a		;5227
	ld l,h			;5228
	inc c			;5229
	ld h,d			;522a
	ld hl,(00c6ch)		;522b
	nop			;522e
	nop			;522f
	ld l,h			;5230
	inc c			;5231
	nop			;5232
	nop			;5233
	ex af,af'		;5234
	inc c			;5235
	nop			;5236
	nop			;5237
	ex af,af'		;5238
	inc c			;5239
	inc l			;523a
	dec c			;523b
	jr c,l524dh		;523c
	ld (bc),a		;523e
	dec d			;523f
	ex af,af'		;5240
	inc c			;5241
	nop			;5242
	nop			;5243
	ex af,af'		;5244
	inc c			;5245
	ld h,a			;5246
	ld bc,00167h		;5247
	ex af,af'		;524a
	nop			;524b
	ex af,af'		;524c
l524dh:
	inc c			;524d
	ld h,d			;524e
	jr z,l5259h		;524f
	inc c			;5251
	nop			;5252
	nop			;5253
	nop			;5254
	nop			;5255
	ex af,af'		;5256
	nop			;5257
	ex af,af'		;5258
l5259h:
	inc c			;5259
	nop			;525a
	nop			;525b
	ex af,af'		;525c
	inc c			;525d
	nop			;525e
	nop			;525f
	nop			;5260
	nop			;5261
	ld (bc),a		;5262
	ld (de),a		;5263
	ex af,af'		;5264
	inc c			;5265
	ld h,d			;5266
	daa			;5267
	ex af,af'		;5268
	inc c			;5269
	nop			;526a
	nop			;526b
	nop			;526c
	nop			;526d
	ex af,af'		;526e
	nop			;526f
	ld a,(bc)		;5270
	dec c			;5271
	ld (00a0dh),hl		;5272
	dec c			;5275
	ld a,(0340fh)		;5276
	ld a,(bc)		;5279
	ld (bc),a		;527a
	dec d			;527b
	ld a,(bc)		;527c
	dec c			;527d
	ld h,d			;527e
	jr z,l528bh		;527f
	dec c			;5281
	nop			;5282
	nop			;5283
	nop			;5284
	nop			;5285
	ex af,af'		;5286
	nop			;5287
	ld a,(bc)		;5288
	dec c			;5289
	nop			;528a
l528bh:
	nop			;528b
	ld a,(bc)		;528c
	dec c			;528d
	nop			;528e
	nop			;528f
	nop			;5290
	nop			;5291
	ex af,af'		;5292
	nop			;5293
	ld a,(bc)		;5294
	dec c			;5295
	ld h,d			;5296
	add hl,hl		;5297
	ld a,(bc)		;5298
	dec c			;5299
	nop			;529a
	nop			;529b
	nop			;529c
	nop			;529d
	ld (bc),a		;529e
	ld (de),a		;529f
	ld l,h			;52a0
	inc c			;52a1
	nop			;52a2
	nop			;52a3
	ld l,h			;52a4
	inc c			;52a5
	nop			;52a6
	nop			;52a7
	nop			;52a8
	nop			;52a9
	nop			;52aa
	nop			;52ab
	ld a,(bc)		;52ac
	dec c			;52ad
	ld h,d			;52ae
	ld hl,(00d0ah)		;52af
	ld h,a			;52b2
	ld (bc),a		;52b3
	ld h,a			;52b4
	ld (bc),a		;52b5
	ld (bc),a		;52b6
	ld (de),a		;52b7
	ld a,(bc)		;52b8
	dec c			;52b9
	ld h,d			;52ba
	dec hl			;52bb
	ld a,(bc)		;52bc
	dec c			;52bd
	nop			;52be
	nop			;52bf
	nop			;52c0
	nop			;52c1
	ld (bc),a		;52c2
	nop			;52c3
	ld a,(bc)		;52c4
	dec c			;52c5
	ld h,d			;52c6
	inc l			;52c7
	ld a,(bc)		;52c8
	dec c			;52c9
	nop			;52ca
	nop			;52cb
	nop			;52cc
	nop			;52cd
	ld (bc),a		;52ce
	dec d			;52cf
	ld a,(bc)		;52d0
	dec c			;52d1
	ld h,d			;52d2
	dec l			;52d3
	ld a,(bc)		;52d4
	dec c			;52d5
	nop			;52d6
	nop			;52d7
	nop			;52d8
	nop			;52d9
	ld (bc),a		;52da
	nop			;52db
	ld a,(bc)		;52dc
	dec c			;52dd
	ld h,d			;52de
	ld l,00ah		;52df
	dec c			;52e1
	nop			;52e2
	nop			;52e3
	nop			;52e4
	nop			;52e5
	ld (bc),a		;52e6
	nop			;52e7
	ld a,(bc)		;52e8
	dec c			;52e9
	ld h,d			;52ea
	cpl			;52eb
	ld a,(bc)		;52ec
	dec c			;52ed
	nop			;52ee
	nop			;52ef
	nop			;52f0
	nop			;52f1
	ld (bc),a		;52f2
	nop			;52f3
	ld a,(bc)		;52f4
	dec c			;52f5
	ld h,d			;52f6
	jr nc,l5303h		;52f7
	dec c			;52f9
	nop			;52fa
	nop			;52fb
	nop			;52fc
	nop			;52fd
	ld (bc),a		;52fe
	nop			;52ff
	ld a,(bc)		;5300
	dec c			;5301
	ld h,d			;5302
l5303h:
	jr nc,l530fh		;5303
	dec c			;5305
	nop			;5306
	nop			;5307
	nop			;5308
	nop			;5309
	ld (bc),a		;530a
	nop			;530b
	ld a,(bc)		;530c
	dec c			;530d
	nop			;530e
l530fh:
	nop			;530f
	ld a,(bc)		;5310
	dec c			;5311
	nop			;5312
	nop			;5313
	nop			;5314
	nop			;5315
	ld (bc),a		;5316
	ld (de),a		;5317
	ld l,h			;5318
	inc c			;5319
	ld h,d			;531a
	jr nc,l5389h		;531b
	inc c			;531d
	nop			;531e
	nop			;531f
	nop			;5320
	nop			;5321
	nop			;5322
	nop			;5323
	ld a,(bc)		;5324
	dec c			;5325
	nop			;5326
	nop			;5327
	ld a,(bc)		;5328
	dec c			;5329
	nop			;532a
	nop			;532b
	nop			;532c
	nop			;532d
	ld (bc),a		;532e
	dec d			;532f
	ld a,(bc)		;5330
	dec c			;5331
	ld h,d			;5332
	cpl			;5333
	ld a,(bc)		;5334
	dec c			;5335
	nop			;5336
	nop			;5337
	nop			;5338
	nop			;5339
	ld (bc),a		;533a
	nop			;533b
	ld a,(bc)		;533c
	dec c			;533d
	nop			;533e
	nop			;533f
	ld a,(bc)		;5340
	dec c			;5341
	nop			;5342
	nop			;5343
	nop			;5344
	nop			;5345
	ld (bc),a		;5346
	nop			;5347
	ld a,(bc)		;5348
	dec c			;5349
	ld h,d			;534a
	ld l,00ah		;534b
	dec c			;534d
	nop			;534e
	nop			;534f
	nop			;5350
	nop			;5351
	ld (bc),a		;5352
	ld (de),a		;5353
	ld a,(bc)		;5354
	dec c			;5355
	nop			;5356
	nop			;5357
	ld a,(bc)		;5358
	dec c			;5359
	nop			;535a
	nop			;535b
	nop			;535c
	nop			;535d
	ld (bc),a		;535e
	nop			;535f
	dec bc			;5360
	dec c			;5361
	rla			;5362
	dec c			;5363
	dec bc			;5364
	dec c			;5365
	dec sp			;5366
	rrca			;5367
	ld (hl),00fh		;5368
	rlca			;536a
	dec d			;536b
	dec bc			;536c
	dec c			;536d
	nop			;536e
	nop			;536f
	dec bc			;5370
	dec c			;5371
	ld h,a			;5372
	ld (bc),a		;5373
	ld h,a			;5374
	ld (bc),a		;5375
	ld (bc),a		;5376
	nop			;5377
	dec bc			;5378
	dec c			;5379
	ld h,d			;537a
	inc l			;537b
	dec bc			;537c
	dec c			;537d
	nop			;537e
	nop			;537f
	nop			;5380
	nop			;5381
	ld (bc),a		;5382
	nop			;5383
	dec bc			;5384
	dec c			;5385
	nop			;5386
	nop			;5387
	dec bc			;5388
l5389h:
	dec c			;5389
	nop			;538a
	nop			;538b
	nop			;538c
	nop			;538d
	rlca			;538e
	ld (de),a		;538f
	ld l,h			;5390
	inc c			;5391
	ld h,d			;5392
	dec hl			;5393
	ld l,h			;5394
	inc c			;5395
	nop			;5396
	nop			;5397
	nop			;5398
	nop			;5399
	nop			;539a
	nop			;539b
	dec bc			;539c
	dec c			;539d
	nop			;539e
	nop			;539f
	dec bc			;53a0
	dec c			;53a1
	nop			;53a2
	nop			;53a3
	nop			;53a4
	nop			;53a5
	rlca			;53a6
	ld (de),a		;53a7
	dec bc			;53a8
	dec c			;53a9
	ld h,d			;53aa
	ld hl,(00d0bh)		;53ab
	nop			;53ae
	nop			;53af
	nop			;53b0
	nop			;53b1
	ld (bc),a		;53b2
	nop			;53b3
	dec bc			;53b4
	dec c			;53b5
	nop			;53b6
	nop			;53b7
	dec bc			;53b8
	dec c			;53b9
	nop			;53ba
	nop			;53bb
	nop			;53bc
	nop			;53bd
	rlca			;53be
	dec d			;53bf
	dec bc			;53c0
	dec c			;53c1
	nop			;53c2
	nop			;53c3
	dec bc			;53c4
	dec c			;53c5
	nop			;53c6
	nop			;53c7
	nop			;53c8
	nop			;53c9
	ld (bc),a		;53ca
	nop			;53cb
	dec bc			;53cc
	dec c			;53cd
	ld h,d			;53ce
	jr z,l53dch		;53cf
	dec c			;53d1
	nop			;53d2
	nop			;53d3
	nop			;53d4
	nop			;53d5
	ld (bc),a		;53d6
	nop			;53d7
	dec bc			;53d8
	dec c			;53d9
	nop			;53da
	nop			;53db
l53dch:
	dec bc			;53dc
	dec c			;53dd
	nop			;53de
	nop			;53df
	nop			;53e0
	nop			;53e1
	rlca			;53e2
	nop			;53e3
	dec bc			;53e4
	dec c			;53e5
	ld h,d			;53e6
	daa			;53e7
	dec bc			;53e8
	dec c			;53e9
	nop			;53ea
	nop			;53eb
	nop			;53ec
	nop			;53ed
	ld (bc),a		;53ee
	nop			;53ef
	dec bc			;53f0
	dec c			;53f1
	nop			;53f2
	nop			;53f3
	dec bc			;53f4
	dec c			;53f5
	nop			;53f6
	nop			;53f7
	nop			;53f8
	nop			;53f9
	ld (bc),a		;53fa
	nop			;53fb
	dec bc			;53fc
	dec c			;53fd
	ld h,d			;53fe
	jr z,l540ch		;53ff
	dec c			;5401
	nop			;5402
	nop			;5403
	nop			;5404
	nop			;5405
	rlca			;5406
	ld (de),a		;5407
	ld l,h			;5408
	inc c			;5409
	nop			;540a
	nop			;540b
l540ch:
	ld l,h			;540c
	inc c			;540d
	nop			;540e
	nop			;540f
	nop			;5410
	nop			;5411
	nop			;5412
	nop			;5413
	dec bc			;5414
	dec c			;5415
	ld h,d			;5416
	add hl,hl		;5417
	dec bc			;5418
	dec c			;5419
	nop			;541a
	nop			;541b
	nop			;541c
	nop			;541d
	rlca			;541e
	dec d			;541f
	dec bc			;5420
	dec c			;5421
	nop			;5422
	nop			;5423
	dec bc			;5424
	dec c			;5425
	nop			;5426
	nop			;5427
	nop			;5428
	nop			;5429
	ld (bc),a		;542a
	nop			;542b
	dec bc			;542c
	dec c			;542d
	ld h,d			;542e
	ld hl,(00d0bh)		;542f
	nop			;5432
	nop			;5433
	nop			;5434
	nop			;5435
	ld (bc),a		;5436
	nop			;5437
	dec bc			;5438
	dec c			;5439
	ld h,d			;543a
	dec hl			;543b
	dec bc			;543c
	dec c			;543d
	nop			;543e
	nop			;543f
	nop			;5440
	nop			;5441
	rlca			;5442
	ld (de),a		;5443
	dec bc			;5444
	dec c			;5445
	ld h,d			;5446
	inc l			;5447
	dec bc			;5448
	dec c			;5449
	ld l,h			;544a
	dec b			;544b
	nop			;544c
	nop			;544d
	ld (bc),a		;544e
	nop			;544f
	dec c			;5450
	rrca			;5451
	add hl,de		;5452
	rrca			;5453
	dec c			;5454
	rrca			;5455
	ld h,d			;5456
	ld sp,00f3dh		;5457
	rlca			;545a
	dec d			;545b
	dec c			;545c
	rrca			;545d
	ld h,d			;545e
	ld l,00dh		;545f
	rrca			;5461
	add hl,de		;5462
	rrca			;5463
	ld sp,0070dh		;5464
	nop			;5467
	dec c			;5468
	rrca			;5469
	ld h,d			;546a
	cpl			;546b
	dec c			;546c
	rrca			;546d
	dec h			;546e
	rrca			;546f
	dec h			;5470
	dec c			;5471
	rlca			;5472
	nop			;5473
	dec c			;5474
	rrca			;5475
	ld h,d			;5476
	jr nc,l5486h		;5477
	rrca			;5479
	add hl,de		;547a
	rrca			;547b
	ld sp,0070dh		;547c
	ld (de),a		;547f
	ld l,h			;5480
	inc c			;5481
	ld h,d			;5482
	jr nc,l54f1h		;5483
	inc c			;5485
l5486h:
	ld l,h			;5486
	inc c			;5487
	ld l,h			;5488
	inc c			;5489
	nop			;548a
	nop			;548b
	dec c			;548c
	dec c			;548d
	nop			;548e
	nop			;548f
	dec c			;5490
	dec c			;5491
	ld l,e			;5492
	inc c			;5493
	ld l,e			;5494
	inc c			;5495
	rlca			;5496
	ld (de),a		;5497
	dec c			;5498
	dec c			;5499
	ld h,d			;549a
	jr nc,l54aah		;549b
	dec c			;549d
	dec h			;549e
	rrca			;549f
	dec h			;54a0
	dec c			;54a1
	rlca			;54a2
	nop			;54a3
	dec c			;54a4
	dec c			;54a5
	nop			;54a6
	nop			;54a7
	dec c			;54a8
	dec c			;54a9
l54aah:
	add hl,de		;54aa
	rrca			;54ab
	ld sp,0070dh		;54ac
	dec d			;54af
	dec c			;54b0
	dec c			;54b1
	ld h,d			;54b2
	cpl			;54b3
	dec c			;54b4
	dec c			;54b5
	dec h			;54b6
	rrca			;54b7
	dec h			;54b8
	dec c			;54b9
	ld (bc),a		;54ba
	nop			;54bb
	dec c			;54bc
	dec c			;54bd
	nop			;54be
	nop			;54bf
	dec c			;54c0
	dec c			;54c1
	add hl,de		;54c2
	rrca			;54c3
	ld sp,0020fh		;54c4
	nop			;54c7
	dec c			;54c8
	dec c			;54c9
	ld h,d			;54ca
	ld l,00dh		;54cb
	dec c			;54cd
	dec h			;54ce
	rrca			;54cf
	dec a			;54d0
	rrca			;54d1
	rlca			;54d2
	nop			;54d3
	dec c			;54d4
	dec c			;54d5
	nop			;54d6
	nop			;54d7
	dec c			;54d8
	dec c			;54d9
	add hl,de		;54da
	rrca			;54db
	ld sp,0070dh		;54dc
	nop			;54df
	dec c			;54e0
	dec c			;54e1
	ld h,d			;54e2
	dec l			;54e3
	dec c			;54e4
	dec c			;54e5
	dec h			;54e6
	rrca			;54e7
	dec h			;54e8
	dec c			;54e9
	rlca			;54ea
	nop			;54eb
	dec c			;54ec
	dec c			;54ed
	ld h,c			;54ee
	nop			;54ef
	dec c			;54f0
l54f1h:
	dec c			;54f1
	add hl,de		;54f2
	rrca			;54f3
	ld sp,0070dh		;54f4
	ld (de),a		;54f7
	ld l,h			;54f8
	inc c			;54f9
	ld h,d			;54fa
	nop			;54fb
	ld l,h			;54fc
	inc c			;54fd
	ld l,h			;54fe
	inc c			;54ff
	ld l,h			;5500
	inc c			;5501
	nop			;5502
	nop			;5503
	dec c			;5504
	rrca			;5505
	ld h,c			;5506
	nop			;5507
	add hl,de		;5508
	rrca			;5509
	ld d,00fh		;550a
	daa			;550c
	rrca			;550d
	rlca			;550e
	dec d			;550f
	ld h,c			;5510
	nop			;5511
	dec c			;5512
	rrca			;5513
	dec c			;5514
	rrca			;5515
	nop			;5516
	nop			;5517
	nop			;5518
	nop			;5519
	rlca			;551a
	nop			;551b
	dec c			;551c
	rrca			;551d
	ld h,c			;551e
	nop			;551f
	add hl,de		;5520
	rrca			;5521
	nop			;5522
	nop			;5523
	nop			;5524
	nop			;5525
	rlca			;5526
	nop			;5527
	ld h,c			;5528
	nop			;5529
	dec c			;552a
	rrca			;552b
	dec c			;552c
	rrca			;552d
	nop			;552e
	nop			;552f
	nop			;5530
	nop			;5531
	rlca			;5532
	ld (de),a		;5533
	dec c			;5534
	ld c,061h		;5535
	nop			;5537
	add hl,de		;5538
	rrca			;5539
	nop			;553a
	nop			;553b
	nop			;553c
	nop			;553d
	rlca			;553e
	nop			;553f
	rrca			;5540
	rrca			;5541
	ld h,c			;5542
	nop			;5543
	inc bc			;5544
	rrca			;5545
	ld l,005h		;5546
	inc sp			;5548
	dec b			;5549
	rlca			;554a
	dec d			;554b
	ld h,c			;554c
	nop			;554d
	rrca			;554e
	rrca			;554f
	inc bc			;5550
	rrca			;5551
	ld h,a			;5552
	inc b			;5553
	ld h,a			;5554
	inc b			;5555
	rlca			;5556
	nop			;5557
	rrca			;5558
	rrca			;5559
	ld h,c			;555a
	nop			;555b
	inc bc			;555c
	rrca			;555d
	nop			;555e
	nop			;555f
	nop			;5560
	nop			;5561
	rlca			;5562
	nop			;5563
	ld h,c			;5564
	nop			;5565
	rrca			;5566
	rrca			;5567
	inc bc			;5568
	rrca			;5569
	nop			;556a
	nop			;556b
	nop			;556c
	nop			;556d
	rlca			;556e
	ld (de),a		;556f
	nop			;5570
	nop			;5571
	ld l,h			;5572
	inc c			;5573
	ld l,h			;5574
	inc c			;5575
	ld l,h			;5576
	ld bc,0016ch		;5577
	nop			;557a
	nop			;557b
	rrca			;557c
	rrca			;557d
	ld h,c			;557e
	nop			;557f
	inc bc			;5580
	rrca			;5581
	ld l,e			;5582
	ld bc,0016bh		;5583
	rlca			;5586
	ld (de),a		;5587
	ld h,c			;5588
	nop			;5589
	rrca			;558a
	rrca			;558b
	inc bc			;558c
	rrca			;558d
	nop			;558e
	nop			;558f
	nop			;5590
	nop			;5591
	rlca			;5592
	nop			;5593
	rrca			;5594
	rrca			;5595
	ld h,c			;5596
	nop			;5597
	inc bc			;5598
	rrca			;5599
	nop			;559a
	nop			;559b
	nop			;559c
	nop			;559d
	rlca			;559e
	dec d			;559f
	ld h,c			;55a0
	nop			;55a1
	rrca			;55a2
	rrca			;55a3
	inc bc			;55a4
	rrca			;55a5
	nop			;55a6
	nop			;55a7
	nop			;55a8
	nop			;55a9
	rlca			;55aa
	nop			;55ab
	rrca			;55ac
	rrca			;55ad
	ld h,c			;55ae
	nop			;55af
	inc bc			;55b0
	rrca			;55b1
	nop			;55b2
	nop			;55b3
	nop			;55b4
	nop			;55b5
	rlca			;55b6
	nop			;55b7
	ld h,c			;55b8
	nop			;55b9
	rrca			;55ba
	rrca			;55bb
	inc bc			;55bc
	rrca			;55bd
	nop			;55be
	nop			;55bf
	nop			;55c0
	nop			;55c1
	rlca			;55c2
	nop			;55c3
	rrca			;55c4
	rrca			;55c5
	ld h,c			;55c6
	nop			;55c7
	inc bc			;55c8
	rrca			;55c9
	nop			;55ca
	nop			;55cb
	nop			;55cc
	nop			;55cd
	rlca			;55ce
	nop			;55cf
	ld h,c			;55d0
	nop			;55d1
	rrca			;55d2
	rrca			;55d3
	inc bc			;55d4
	rrca			;55d5
	nop			;55d6
	nop			;55d7
	nop			;55d8
	nop			;55d9
	rlca			;55da
	nop			;55db
	rrca			;55dc
	rrca			;55dd
	ld h,c			;55de
	nop			;55df
	inc bc			;55e0
	rrca			;55e1
	nop			;55e2
	nop			;55e3
	nop			;55e4
	nop			;55e5
	rlca			;55e6
	ld (de),a		;55e7
	ld l,h			;55e8
	inc c			;55e9
	nop			;55ea
	nop			;55eb
	ld l,h			;55ec
	inc c			;55ed
	ld l,h			;55ee
	ld bc,0016ch		;55ef
	nop			;55f2
	nop			;55f3
	rrca			;55f4
	rrca			;55f5
	nop			;55f6
	nop			;55f7
	inc bc			;55f8
	rrca			;55f9
	ld l,e			;55fa
	ld bc,0016bh		;55fb
	rlca			;55fe
	dec d			;55ff
	ld h,c			;5600
	nop			;5601
	rrca			;5602
	rrca			;5603
	inc bc			;5604
	rrca			;5605
	nop			;5606
	nop			;5607
	nop			;5608
	nop			;5609
	rlca			;560a
	nop			;560b
	rrca			;560c
	rrca			;560d
	ld h,c			;560e
	nop			;560f
	inc bc			;5610
	rrca			;5611
	nop			;5612
	nop			;5613
	nop			;5614
	nop			;5615
	rlca			;5616
	nop			;5617
	ld h,c			;5618
	nop			;5619
	rrca			;561a
	rrca			;561b
	inc bc			;561c
	rrca			;561d
	nop			;561e
	nop			;561f
	nop			;5620
	nop			;5621
	rlca			;5622
	ld (de),a		;5623
	rrca			;5624
	rrca			;5625
	ld h,c			;5626
	nop			;5627
	inc bc			;5628
	rrca			;5629
	nop			;562a
	nop			;562b
	nop			;562c
	nop			;562d
	rlca			;562e
	nop			;562f
	rrca			;5630
	rrca			;5631
	ld h,c			;5632
	nop			;5633
	inc bc			;5634
	rrca			;5635
	nop			;5636
	nop			;5637
	nop			;5638
	nop			;5639
	rlca			;563a
	dec d			;563b
	ld h,c			;563c
	nop			;563d
	rrca			;563e
	rrca			;563f
	inc bc			;5640
	rrca			;5641
	nop			;5642
	nop			;5643
	nop			;5644
	nop			;5645
	rlca			;5646
	nop			;5647
	rrca			;5648
	rrca			;5649
	ld h,c			;564a
	nop			;564b
	inc bc			;564c
	rrca			;564d
	nop			;564e
	nop			;564f
	nop			;5650
	nop			;5651
	rlca			;5652
	nop			;5653
	ld h,c			;5654
	nop			;5655
	rrca			;5656
	rrca			;5657
	inc bc			;5658
	rrca			;5659
	nop			;565a
	nop			;565b
	nop			;565c
	nop			;565d
	rlca			;565e
	ld (de),a		;565f
	ld h,c			;5660
	nop			;5661
	ld l,h			;5662
	inc c			;5663
	ld l,h			;5664
	inc c			;5665
	ld l,h			;5666
	ld bc,0016ch		;5667
	nop			;566a
	nop			;566b
	rrca			;566c
	rrca			;566d
	ld h,c			;566e
	nop			;566f
	inc bc			;5670
	rrca			;5671
	ld l,e			;5672
	ld bc,0016bh		;5673
	rlca			;5676
	ld (de),a		;5677
	ld h,c			;5678
	nop			;5679
	rrca			;567a
	rrca			;567b
	inc bc			;567c
	rrca			;567d
	nop			;567e
	nop			;567f
	nop			;5680
	nop			;5681
	rlca			;5682
	nop			;5683
	rrca			;5684
	rrca			;5685
	ld h,c			;5686
	nop			;5687
	inc bc			;5688
	rrca			;5689
	nop			;568a
	nop			;568b
	nop			;568c
	nop			;568d
	rlca			;568e
	dec d			;568f
	ld h,c			;5690
	nop			;5691
	rrca			;5692
	rrca			;5693
	inc bc			;5694
	rrca			;5695
	nop			;5696
	nop			;5697
	nop			;5698
	nop			;5699
	rlca			;569a
	nop			;569b
	rrca			;569c
	rrca			;569d
	ld h,c			;569e
	nop			;569f
	inc bc			;56a0
	rrca			;56a1
	nop			;56a2
	nop			;56a3
	nop			;56a4
	nop			;56a5
	rlca			;56a6
	nop			;56a7
	ld h,c			;56a8
	nop			;56a9
	rrca			;56aa
	rrca			;56ab
	inc bc			;56ac
	rrca			;56ad
	nop			;56ae
	nop			;56af
	nop			;56b0
	nop			;56b1
	rlca			;56b2
	nop			;56b3
	rrca			;56b4
	rrca			;56b5
	ld h,c			;56b6
	nop			;56b7
	inc bc			;56b8
	rrca			;56b9
	nop			;56ba
	nop			;56bb
	nop			;56bc
	nop			;56bd
	rlca			;56be
	nop			;56bf
	ld h,c			;56c0
	nop			;56c1
	rrca			;56c2
	rrca			;56c3
	inc bc			;56c4
	rrca			;56c5
	nop			;56c6
	nop			;56c7
	nop			;56c8
	nop			;56c9
	rlca			;56ca
	nop			;56cb
	rrca			;56cc
	rrca			;56cd
	ld h,c			;56ce
	nop			;56cf
	inc bc			;56d0
	rrca			;56d1
	nop			;56d2
	nop			;56d3
	nop			;56d4
	nop			;56d5
	rlca			;56d6
	ld (de),a		;56d7
	ld l,h			;56d8
	inc c			;56d9
	nop			;56da
	nop			;56db
	ld l,h			;56dc
	inc c			;56dd
	ld l,h			;56de
	ld bc,0016ch		;56df
	nop			;56e2
	nop			;56e3
	rrca			;56e4
	rrca			;56e5
	nop			;56e6
	nop			;56e7
	inc bc			;56e8
	rrca			;56e9
	dec a			;56ea
	dec b			;56eb
	ld a,(00705h)		;56ec
	dec d			;56ef
	ld h,c			;56f0
	nop			;56f1
	djnz l5703h		;56f2
	inc b			;56f4
	rrca			;56f5
	nop			;56f6
	nop			;56f7
	nop			;56f8
	nop			;56f9
	rlca			;56fa
	nop			;56fb
	djnz l570dh		;56fc
	ld h,c			;56fe
	nop			;56ff
	inc b			;5700
	rrca			;5701
	ld h,a			;5702
l5703h:
	ld (bc),a		;5703
	ld h,a			;5704
	ld (bc),a		;5705
	rlca			;5706
	nop			;5707
	ld h,c			;5708
	nop			;5709
	djnz l571bh		;570a
	inc b			;570c
l570dh:
	rrca			;570d
	nop			;570e
	nop			;570f
	nop			;5710
	nop			;5711
	rlca			;5712
	ld (de),a		;5713
	djnz l5725h		;5714
	ld h,c			;5716
	nop			;5717
	inc b			;5718
	rrca			;5719
	nop			;571a
l571bh:
	nop			;571b
	nop			;571c
	nop			;571d
	rlca			;571e
	nop			;571f
	rrca			;5720
	rrca			;5721
	ld h,c			;5722
	nop			;5723
	inc bc			;5724
l5725h:
	rrca			;5725
	add hl,sp		;5726
	dec b			;5727
	dec a			;5728
	dec b			;5729
	rlca			;572a
	dec d			;572b
	ld h,c			;572c
	nop			;572d
	rrca			;572e
	rrca			;572f
	inc bc			;5730
	rrca			;5731
	ld h,a			;5732
	ld (bc),a		;5733
	ld h,a			;5734
	ld (bc),a		;5735
	rlca			;5736
	nop			;5737
	rrca			;5738
	rrca			;5739
	ld h,c			;573a
	nop			;573b
	inc bc			;573c
	rrca			;573d
	nop			;573e
	nop			;573f
	nop			;5740
	nop			;5741
	rlca			;5742
	nop			;5743
	ld h,c			;5744
	nop			;5745
	rrca			;5746
	rrca			;5747
	inc bc			;5748
	rrca			;5749
	nop			;574a
	nop			;574b
	nop			;574c
	nop			;574d
	rlca			;574e
	ld (de),a		;574f
	ld h,c			;5750
	nop			;5751
	ld l,h			;5752
	inc c			;5753
	ld l,h			;5754
	inc c			;5755
	ld l,h			;5756
	ld bc,0016ch		;5757
	nop			;575a
	nop			;575b
	rrca			;575c
	rrca			;575d
	ld h,c			;575e
	nop			;575f
	inc bc			;5760
	rrca			;5761
	ld l,e			;5762
	ld bc,0016bh		;5763
	rlca			;5766
	ld (de),a		;5767
	ld h,c			;5768
	nop			;5769
	rrca			;576a
	rrca			;576b
	inc bc			;576c
	rrca			;576d
	nop			;576e
	nop			;576f
	nop			;5770
	nop			;5771
	rlca			;5772
	nop			;5773
	rrca			;5774
	rrca			;5775
	ld h,c			;5776
	nop			;5777
	inc bc			;5778
	rrca			;5779
	nop			;577a
	nop			;577b
	nop			;577c
	nop			;577d
	rlca			;577e
	dec d			;577f
	ld h,c			;5780
	nop			;5781
	rrca			;5782
	rrca			;5783
	inc bc			;5784
	rrca			;5785
	nop			;5786
	nop			;5787
	nop			;5788
	nop			;5789
	rlca			;578a
	nop			;578b
	rrca			;578c
	rrca			;578d
	ld h,c			;578e
	nop			;578f
	inc bc			;5790
	rrca			;5791
	nop			;5792
	nop			;5793
	nop			;5794
	nop			;5795
	rlca			;5796
	nop			;5797
	ld h,c			;5798
	nop			;5799
	rrca			;579a
	rrca			;579b
	inc bc			;579c
	rrca			;579d
	nop			;579e
	nop			;579f
	nop			;57a0
	nop			;57a1
	rlca			;57a2
	nop			;57a3
	rrca			;57a4
	rrca			;57a5
	ld h,c			;57a6
	nop			;57a7
	inc bc			;57a8
	rrca			;57a9
	nop			;57aa
	nop			;57ab
	nop			;57ac
	nop			;57ad
	rlca			;57ae
	nop			;57af
	ld h,c			;57b0
	nop			;57b1
	rrca			;57b2
	rrca			;57b3
	inc bc			;57b4
	rrca			;57b5
	nop			;57b6
	nop			;57b7
	nop			;57b8
	nop			;57b9
	rlca			;57ba
	nop			;57bb
	rrca			;57bc
	rrca			;57bd
	ld h,c			;57be
	nop			;57bf
	inc bc			;57c0
	rrca			;57c1
	nop			;57c2
	nop			;57c3
	nop			;57c4
	nop			;57c5
	rlca			;57c6
	ld (de),a		;57c7
	ld l,h			;57c8
	inc c			;57c9
	nop			;57ca
	nop			;57cb
	ld l,h			;57cc
	inc c			;57cd
	ld l,h			;57ce
	ld bc,0016ch		;57cf
	nop			;57d2
	nop			;57d3
	rrca			;57d4
	rrca			;57d5
	nop			;57d6
	nop			;57d7
	inc bc			;57d8
	rrca			;57d9
	ld l,e			;57da
	ld bc,0016bh		;57db
	rlca			;57de
	dec d			;57df
	ld h,c			;57e0
	nop			;57e1
	rrca			;57e2
	rrca			;57e3
	inc bc			;57e4
	rrca			;57e5
	nop			;57e6
	nop			;57e7
	nop			;57e8
	nop			;57e9
	rlca			;57ea
	nop			;57eb
	rrca			;57ec
	rrca			;57ed
	ld h,c			;57ee
	nop			;57ef
	inc bc			;57f0
	rrca			;57f1
	nop			;57f2
	nop			;57f3
	nop			;57f4
	nop			;57f5
	rlca			;57f6
	nop			;57f7
	ld h,c			;57f8
	nop			;57f9
	rrca			;57fa
	rrca			;57fb
	inc bc			;57fc
	rrca			;57fd
	nop			;57fe
	nop			;57ff
	nop			;5800
	nop			;5801
	rlca			;5802
	ld (de),a		;5803
	rrca			;5804
	rrca			;5805
	ld h,c			;5806
	nop			;5807
	inc bc			;5808
	rrca			;5809
	nop			;580a
	nop			;580b
	nop			;580c
	nop			;580d
	rlca			;580e
	nop			;580f
	rrca			;5810
	rrca			;5811
	ld h,c			;5812
	nop			;5813
	inc bc			;5814
	rrca			;5815
	nop			;5816
	nop			;5817
	nop			;5818
	nop			;5819
	rlca			;581a
	dec d			;581b
	ld h,c			;581c
	nop			;581d
	rrca			;581e
	rrca			;581f
	inc bc			;5820
	rrca			;5821
	nop			;5822
	nop			;5823
	nop			;5824
	nop			;5825
	rlca			;5826
	nop			;5827
	rrca			;5828
	rrca			;5829
	ld h,c			;582a
	nop			;582b
	inc bc			;582c
	rrca			;582d
	nop			;582e
	nop			;582f
	nop			;5830
	nop			;5831
	rlca			;5832
	nop			;5833
	ld h,c			;5834
	nop			;5835
	rrca			;5836
	rrca			;5837
	inc bc			;5838
	rrca			;5839
	nop			;583a
	nop			;583b
	nop			;583c
	nop			;583d
	rlca			;583e
	ld (de),a		;583f
	ld h,c			;5840
	nop			;5841
	ld l,h			;5842
	inc c			;5843
	ld l,h			;5844
	inc c			;5845
	ld l,h			;5846
	ld bc,0016ch		;5847
	nop			;584a
	nop			;584b
	rrca			;584c
	rrca			;584d
	ld h,c			;584e
	nop			;584f
	inc bc			;5850
	rrca			;5851
	ld l,e			;5852
	ld bc,0016bh		;5853
	rlca			;5856
	ld (de),a		;5857
	ld h,c			;5858
	nop			;5859
	rrca			;585a
	rrca			;585b
	inc bc			;585c
	rrca			;585d
	nop			;585e
	nop			;585f
	nop			;5860
	nop			;5861
	rlca			;5862
	nop			;5863
	rrca			;5864
	rrca			;5865
	ld h,c			;5866
	nop			;5867
	inc bc			;5868
	rrca			;5869
	nop			;586a
	nop			;586b
	nop			;586c
	nop			;586d
	rlca			;586e
	dec d			;586f
	ld h,c			;5870
	nop			;5871
	rrca			;5872
	rrca			;5873
	inc bc			;5874
	rrca			;5875
	nop			;5876
	nop			;5877
	nop			;5878
	nop			;5879
	rlca			;587a
	nop			;587b
	rrca			;587c
	rrca			;587d
	ld h,c			;587e
	nop			;587f
	inc bc			;5880
	rrca			;5881
	nop			;5882
	nop			;5883
	nop			;5884
	nop			;5885
	rlca			;5886
	nop			;5887
	ld h,c			;5888
	nop			;5889
	rrca			;588a
	rrca			;588b
	inc bc			;588c
	rrca			;588d
	nop			;588e
	nop			;588f
	nop			;5890
	nop			;5891
	rlca			;5892
	nop			;5893
	rrca			;5894
	rrca			;5895
	ld h,c			;5896
	nop			;5897
	inc bc			;5898
	rrca			;5899
	nop			;589a
	nop			;589b
	nop			;589c
	nop			;589d
	rlca			;589e
	nop			;589f
	ld h,c			;58a0
	nop			;58a1
	rrca			;58a2
	rrca			;58a3
	inc bc			;58a4
	rrca			;58a5
	nop			;58a6
	nop			;58a7
	nop			;58a8
	nop			;58a9
	rlca			;58aa
	nop			;58ab
	rrca			;58ac
	rrca			;58ad
	ld h,c			;58ae
	nop			;58af
	inc bc			;58b0
	rrca			;58b1
	nop			;58b2
	nop			;58b3
	nop			;58b4
	nop			;58b5
	rlca			;58b6
	ld (de),a		;58b7
	ld l,h			;58b8
	inc c			;58b9
	nop			;58ba
	nop			;58bb
	ld l,h			;58bc
	inc c			;58bd
	ld l,h			;58be
	ld bc,0016ch		;58bf
	nop			;58c2
	nop			;58c3
	rrca			;58c4
	rrca			;58c5
	nop			;58c6
	nop			;58c7
	inc bc			;58c8
	rrca			;58c9
	cpl			;58ca
	dec b			;58cb
	inc (hl)		;58cc
	dec b			;58cd
	rlca			;58ce
	dec d			;58cf
	ld h,c			;58d0
	nop			;58d1
	djnz l58e3h		;58d2
	inc b			;58d4
	rrca			;58d5
	nop			;58d6
	nop			;58d7
	nop			;58d8
	nop			;58d9
	rlca			;58da
	nop			;58db
	djnz l58edh		;58dc
	ld h,c			;58de
	nop			;58df
	inc b			;58e0
	rrca			;58e1
	ld h,a			;58e2
l58e3h:
	ld (bc),a		;58e3
	ld h,a			;58e4
	ld (bc),a		;58e5
	rlca			;58e6
	nop			;58e7
	ld h,c			;58e8
	nop			;58e9
	djnz l58fbh		;58ea
	inc b			;58ec
l58edh:
	rrca			;58ed
	nop			;58ee
	nop			;58ef
	nop			;58f0
	nop			;58f1
	rlca			;58f2
	ld (de),a		;58f3
	dec c			;58f4
	rrca			;58f5
	ld h,c			;58f6
	nop			;58f7
	ld bc,l620fh		;58f8
l58fbh:
	ld sp,00531h		;58fb
	rlca			;58fe
	nop			;58ff
	nop			;5900
	rst 38h			;5901
	rst 38h			;5902
	rst 38h			;5903
	rst 38h			;5904
	rst 38h			;5905
	rst 38h			;5906
	rst 38h			;5907
	rst 38h			;5908
	rst 38h			;5909
	rst 38h			;590a
	rst 38h			;590b
	rst 38h			;590c
	rst 38h			;590d
	rst 38h			;590e
	rst 38h			;590f
	rst 38h			;5910
	rst 38h			;5911
	rst 38h			;5912
	rst 38h			;5913
	rst 38h			;5914
	rst 38h			;5915
	rst 38h			;5916
	rst 38h			;5917
	rst 38h			;5918
	rst 38h			;5919
	rst 38h			;591a
	rst 38h			;591b
	rst 38h			;591c
	rst 38h			;591d
	rst 38h			;591e
	rst 38h			;591f
	rst 38h			;5920
	rst 38h			;5921
	rst 38h			;5922
	rst 38h			;5923
	rst 38h			;5924
	rst 38h			;5925
	rst 38h			;5926
	rst 38h			;5927
	rst 38h			;5928
	rst 38h			;5929
	rst 38h			;592a
	rst 38h			;592b
	rst 38h			;592c
	rst 38h			;592d
	rst 38h			;592e
	rst 38h			;592f
	rst 38h			;5930
	rst 38h			;5931
	rst 38h			;5932
	rst 38h			;5933
	rst 38h			;5934
	rst 38h			;5935
	rst 38h			;5936
	rst 38h			;5937
	rst 38h			;5938
	rst 38h			;5939
	rst 38h			;593a
	rst 38h			;593b
	rst 38h			;593c
	rst 38h			;593d
	rst 38h			;593e
	rst 38h			;593f
	rst 38h			;5940
	rst 38h			;5941
	rst 38h			;5942
	rst 38h			;5943
	rst 38h			;5944
	rst 38h			;5945
	rst 38h			;5946
	rst 38h			;5947
	rst 38h			;5948
	rst 38h			;5949
	rst 38h			;594a
	rst 38h			;594b
	rst 38h			;594c
	rst 38h			;594d
	rst 38h			;594e
	rst 38h			;594f
	rst 38h			;5950
	rst 38h			;5951
	rst 38h			;5952
	rst 38h			;5953
	rst 38h			;5954
	rst 38h			;5955
	rst 38h			;5956
	rst 38h			;5957
	rst 38h			;5958
	rst 38h			;5959
	rst 38h			;595a
	rst 38h			;595b
	rst 38h			;595c
	rst 38h			;595d
	rst 38h			;595e
	rst 38h			;595f
	rst 38h			;5960
	rst 38h			;5961
	rst 38h			;5962
	rst 38h			;5963
	rst 38h			;5964
	rst 38h			;5965
	rst 38h			;5966
	rst 38h			;5967
	rst 38h			;5968
	rst 38h			;5969
	rst 38h			;596a
	rst 38h			;596b
	rst 38h			;596c
	rst 38h			;596d
	rst 38h			;596e
	rst 38h			;596f
	rst 38h			;5970
	rst 38h			;5971
	rst 38h			;5972
	rst 38h			;5973
	rst 38h			;5974
	rst 38h			;5975
	rst 38h			;5976
	rst 38h			;5977
	rst 38h			;5978
	rst 38h			;5979
	rst 38h			;597a
	rst 38h			;597b
	rst 38h			;597c
	rst 38h			;597d
	rst 38h			;597e
	rst 38h			;597f
	rst 38h			;5980
	rst 38h			;5981
	rst 38h			;5982
	rst 38h			;5983
	rst 38h			;5984
	rst 38h			;5985
	rst 38h			;5986
	rst 38h			;5987
	rst 38h			;5988
	rst 38h			;5989
	rst 38h			;598a
	rst 38h			;598b
	rst 38h			;598c
	rst 38h			;598d
	rst 38h			;598e
	rst 38h			;598f
	rst 38h			;5990
	rst 38h			;5991
	rst 38h			;5992
	rst 38h			;5993
	rst 38h			;5994
	rst 38h			;5995
	rst 38h			;5996
	rst 38h			;5997
	rst 38h			;5998
	rst 38h			;5999
	rst 38h			;599a
	rst 38h			;599b
	rst 38h			;599c
	rst 38h			;599d
	rst 38h			;599e
	rst 38h			;599f
	rst 38h			;59a0
	rst 38h			;59a1
	rst 38h			;59a2
	rst 38h			;59a3
	rst 38h			;59a4
	rst 38h			;59a5
	rst 38h			;59a6
	rst 38h			;59a7
	rst 38h			;59a8
	rst 38h			;59a9
	rst 38h			;59aa
	rst 38h			;59ab
	rst 38h			;59ac
	rst 38h			;59ad
	rst 38h			;59ae
	rst 38h			;59af
	rst 38h			;59b0
	rst 38h			;59b1
	rst 38h			;59b2
	rst 38h			;59b3
	rst 38h			;59b4
	rst 38h			;59b5
	rst 38h			;59b6
	rst 38h			;59b7
	rst 38h			;59b8
	rst 38h			;59b9
	rst 38h			;59ba
	rst 38h			;59bb
	rst 38h			;59bc
	rst 38h			;59bd
	rst 38h			;59be
	rst 38h			;59bf
	rst 38h			;59c0
	rst 38h			;59c1
	rst 38h			;59c2
	rst 38h			;59c3
	rst 38h			;59c4
	rst 38h			;59c5
	rst 38h			;59c6
	rst 38h			;59c7
	rst 38h			;59c8
	rst 38h			;59c9
	rst 38h			;59ca
	rst 38h			;59cb
	rst 38h			;59cc
	rst 38h			;59cd
	rst 38h			;59ce
	rst 38h			;59cf
	rst 38h			;59d0
	rst 38h			;59d1
	rst 38h			;59d2
	rst 38h			;59d3
	rst 38h			;59d4
	rst 38h			;59d5
	rst 38h			;59d6
	rst 38h			;59d7
	rst 38h			;59d8
	rst 38h			;59d9
	rst 38h			;59da
	rst 38h			;59db
	rst 38h			;59dc
	rst 38h			;59dd
	rst 38h			;59de
	rst 38h			;59df
	rst 38h			;59e0
	rst 38h			;59e1
	rst 38h			;59e2
	rst 38h			;59e3
	rst 38h			;59e4
	rst 38h			;59e5
	rst 38h			;59e6
	rst 38h			;59e7
	rst 38h			;59e8
	rst 38h			;59e9
	rst 38h			;59ea
	rst 38h			;59eb
	rst 38h			;59ec
	rst 38h			;59ed
	rst 38h			;59ee
	rst 38h			;59ef
	rst 38h			;59f0
	rst 38h			;59f1
	rst 38h			;59f2
	rst 38h			;59f3
	rst 38h			;59f4
	rst 38h			;59f5
	rst 38h			;59f6
	rst 38h			;59f7
	rst 38h			;59f8
	rst 38h			;59f9
	rst 38h			;59fa
	rst 38h			;59fb
	rst 38h			;59fc
	rst 38h			;59fd
	rst 38h			;59fe
	rst 38h			;59ff
	rst 38h			;5a00
	rst 38h			;5a01
	rst 38h			;5a02
	rst 38h			;5a03
	rst 38h			;5a04
	rst 38h			;5a05
	rst 38h			;5a06
	rst 38h			;5a07
	rst 38h			;5a08
	rst 38h			;5a09
	rst 38h			;5a0a
	rst 38h			;5a0b
	rst 38h			;5a0c
	rst 38h			;5a0d
	rst 38h			;5a0e
	rst 38h			;5a0f
	rst 38h			;5a10
	rst 38h			;5a11
	rst 38h			;5a12
	rst 38h			;5a13
	rst 38h			;5a14
	rst 38h			;5a15
	rst 38h			;5a16
	rst 38h			;5a17
	rst 38h			;5a18
	rst 38h			;5a19
	rst 38h			;5a1a
	rst 38h			;5a1b
	rst 38h			;5a1c
	rst 38h			;5a1d
	rst 38h			;5a1e
	rst 38h			;5a1f
	rst 38h			;5a20
	rst 38h			;5a21
	rst 38h			;5a22
	rst 38h			;5a23
	rst 38h			;5a24
	rst 38h			;5a25
	rst 38h			;5a26
	rst 38h			;5a27
	rst 38h			;5a28
	rst 38h			;5a29
	rst 38h			;5a2a
	rst 38h			;5a2b
	rst 38h			;5a2c
	rst 38h			;5a2d
	rst 38h			;5a2e
	rst 38h			;5a2f
	rst 38h			;5a30
	rst 38h			;5a31
	rst 38h			;5a32
	rst 38h			;5a33
	rst 38h			;5a34
	rst 38h			;5a35
	rst 38h			;5a36
	rst 38h			;5a37
	rst 38h			;5a38
	rst 38h			;5a39
	rst 38h			;5a3a
	rst 38h			;5a3b
	rst 38h			;5a3c
	rst 38h			;5a3d
	rst 38h			;5a3e
	rst 38h			;5a3f
	rst 38h			;5a40
	rst 38h			;5a41
	rst 38h			;5a42
	rst 38h			;5a43
	rst 38h			;5a44
	rst 38h			;5a45
	rst 38h			;5a46
	rst 38h			;5a47
	rst 38h			;5a48
	rst 38h			;5a49
	rst 38h			;5a4a
	rst 38h			;5a4b
	rst 38h			;5a4c
	rst 38h			;5a4d
	rst 38h			;5a4e
	rst 38h			;5a4f
	rst 38h			;5a50
	rst 38h			;5a51
	rst 38h			;5a52
	rst 38h			;5a53
	rst 38h			;5a54
	rst 38h			;5a55
	rst 38h			;5a56
	rst 38h			;5a57
	rst 38h			;5a58
	rst 38h			;5a59
	rst 38h			;5a5a
	rst 38h			;5a5b
	rst 38h			;5a5c
	rst 38h			;5a5d
	rst 38h			;5a5e
	rst 38h			;5a5f
	rst 38h			;5a60
	rst 38h			;5a61
	rst 38h			;5a62
	rst 38h			;5a63
	rst 38h			;5a64
	rst 38h			;5a65
	rst 38h			;5a66
	rst 38h			;5a67
	rst 38h			;5a68
	rst 38h			;5a69
	rst 38h			;5a6a
	rst 38h			;5a6b
	rst 38h			;5a6c
	rst 38h			;5a6d
	rst 38h			;5a6e
	rst 38h			;5a6f
	rst 38h			;5a70
	rst 38h			;5a71
	rst 38h			;5a72
	rst 38h			;5a73
	rst 38h			;5a74
	rst 38h			;5a75
	rst 38h			;5a76
	rst 38h			;5a77
	rst 38h			;5a78
	rst 38h			;5a79
	rst 38h			;5a7a
	rst 38h			;5a7b
	rst 38h			;5a7c
	rst 38h			;5a7d
	rst 38h			;5a7e
	rst 38h			;5a7f
	rst 38h			;5a80
	rst 38h			;5a81
	rst 38h			;5a82
	rst 38h			;5a83
	rst 38h			;5a84
	rst 38h			;5a85
	rst 38h			;5a86
	rst 38h			;5a87
	rst 38h			;5a88
	rst 38h			;5a89
	rst 38h			;5a8a
	rst 38h			;5a8b
	rst 38h			;5a8c
	rst 38h			;5a8d
	rst 38h			;5a8e
	rst 38h			;5a8f
	rst 38h			;5a90
	rst 38h			;5a91
	rst 38h			;5a92
	rst 38h			;5a93
	rst 38h			;5a94
	rst 38h			;5a95
	rst 38h			;5a96
	rst 38h			;5a97
	rst 38h			;5a98
	rst 38h			;5a99
	rst 38h			;5a9a
	rst 38h			;5a9b
	rst 38h			;5a9c
	rst 38h			;5a9d
	rst 38h			;5a9e
	rst 38h			;5a9f
	rst 38h			;5aa0
	rst 38h			;5aa1
	rst 38h			;5aa2
	rst 38h			;5aa3
	rst 38h			;5aa4
	rst 38h			;5aa5
	rst 38h			;5aa6
	rst 38h			;5aa7
	rst 38h			;5aa8
	rst 38h			;5aa9
	rst 38h			;5aaa
	rst 38h			;5aab
	rst 38h			;5aac
	rst 38h			;5aad
	rst 38h			;5aae
	rst 38h			;5aaf
	rst 38h			;5ab0
	rst 38h			;5ab1
	rst 38h			;5ab2
	rst 38h			;5ab3
	rst 38h			;5ab4
	rst 38h			;5ab5
	rst 38h			;5ab6
	rst 38h			;5ab7
	rst 38h			;5ab8
	rst 38h			;5ab9
	rst 38h			;5aba
	rst 38h			;5abb
	rst 38h			;5abc
	rst 38h			;5abd
	rst 38h			;5abe
	rst 38h			;5abf
	rst 38h			;5ac0
	rst 38h			;5ac1
	rst 38h			;5ac2
	rst 38h			;5ac3
	rst 38h			;5ac4
	rst 38h			;5ac5
	rst 38h			;5ac6
	rst 38h			;5ac7
	rst 38h			;5ac8
	rst 38h			;5ac9
	rst 38h			;5aca
	rst 38h			;5acb
	rst 38h			;5acc
	rst 38h			;5acd
	rst 38h			;5ace
	rst 38h			;5acf
	rst 38h			;5ad0
	rst 38h			;5ad1
	rst 38h			;5ad2
	rst 38h			;5ad3
	rst 38h			;5ad4
	rst 38h			;5ad5
	rst 38h			;5ad6
	rst 38h			;5ad7
	rst 38h			;5ad8
	rst 38h			;5ad9
	rst 38h			;5ada
	rst 38h			;5adb
	rst 38h			;5adc
	rst 38h			;5add
	rst 38h			;5ade
	rst 38h			;5adf
	rst 38h			;5ae0
	rst 38h			;5ae1
	rst 38h			;5ae2
	rst 38h			;5ae3
	rst 38h			;5ae4
	rst 38h			;5ae5
	rst 38h			;5ae6
	rst 38h			;5ae7
	rst 38h			;5ae8
	rst 38h			;5ae9
	rst 38h			;5aea
	rst 38h			;5aeb
	rst 38h			;5aec
	rst 38h			;5aed
	rst 38h			;5aee
	rst 38h			;5aef
	rst 38h			;5af0
	rst 38h			;5af1
	rst 38h			;5af2
	rst 38h			;5af3
	rst 38h			;5af4
	rst 38h			;5af5
	rst 38h			;5af6
	rst 38h			;5af7
	rst 38h			;5af8
	rst 38h			;5af9
	rst 38h			;5afa
	rst 38h			;5afb
	rst 38h			;5afc
	rst 38h			;5afd
	rst 38h			;5afe
	rst 38h			;5aff
	rst 38h			;5b00
	rst 38h			;5b01
	rst 38h			;5b02
	rst 38h			;5b03
	rst 38h			;5b04
	rst 38h			;5b05
	rst 38h			;5b06
	rst 38h			;5b07
	rst 38h			;5b08
	rst 38h			;5b09
	rst 38h			;5b0a
	rst 38h			;5b0b
	rst 38h			;5b0c
	rst 38h			;5b0d
	rst 38h			;5b0e
	rst 38h			;5b0f
	rst 38h			;5b10
	rst 38h			;5b11
	rst 38h			;5b12
	rst 38h			;5b13
	rst 38h			;5b14
	rst 38h			;5b15
	rst 38h			;5b16
	rst 38h			;5b17
	rst 38h			;5b18
	rst 38h			;5b19
	rst 38h			;5b1a
	rst 38h			;5b1b
	rst 38h			;5b1c
	rst 38h			;5b1d
	rst 38h			;5b1e
	rst 38h			;5b1f
	rst 38h			;5b20
	rst 38h			;5b21
	rst 38h			;5b22
	rst 38h			;5b23
	rst 38h			;5b24
	rst 38h			;5b25
	rst 38h			;5b26
	rst 38h			;5b27
	rst 38h			;5b28
	rst 38h			;5b29
	rst 38h			;5b2a
	rst 38h			;5b2b
	rst 38h			;5b2c
	rst 38h			;5b2d
	rst 38h			;5b2e
	rst 38h			;5b2f
	rst 38h			;5b30
	rst 38h			;5b31
	rst 38h			;5b32
	rst 38h			;5b33
	rst 38h			;5b34
	rst 38h			;5b35
	rst 38h			;5b36
	rst 38h			;5b37
	rst 38h			;5b38
	rst 38h			;5b39
	rst 38h			;5b3a
	rst 38h			;5b3b
	rst 38h			;5b3c
	rst 38h			;5b3d
	rst 38h			;5b3e
	rst 38h			;5b3f
	rst 38h			;5b40
	rst 38h			;5b41
	rst 38h			;5b42
	rst 38h			;5b43
	rst 38h			;5b44
	rst 38h			;5b45
	rst 38h			;5b46
	rst 38h			;5b47
	rst 38h			;5b48
	rst 38h			;5b49
	rst 38h			;5b4a
	rst 38h			;5b4b
	rst 38h			;5b4c
	rst 38h			;5b4d
	rst 38h			;5b4e
	rst 38h			;5b4f
	rst 38h			;5b50
	rst 38h			;5b51
	rst 38h			;5b52
	rst 38h			;5b53
	rst 38h			;5b54
	rst 38h			;5b55
	rst 38h			;5b56
	rst 38h			;5b57
	rst 38h			;5b58
	rst 38h			;5b59
	rst 38h			;5b5a
	rst 38h			;5b5b
	rst 38h			;5b5c
	rst 38h			;5b5d
	rst 38h			;5b5e
	rst 38h			;5b5f
	rst 38h			;5b60
	rst 38h			;5b61
	rst 38h			;5b62
	rst 38h			;5b63
	rst 38h			;5b64
	rst 38h			;5b65
	rst 38h			;5b66
	rst 38h			;5b67
	rst 38h			;5b68
	rst 38h			;5b69
	rst 38h			;5b6a
	rst 38h			;5b6b
	rst 38h			;5b6c
	rst 38h			;5b6d
	rst 38h			;5b6e
	rst 38h			;5b6f
	rst 38h			;5b70
	rst 38h			;5b71
	rst 38h			;5b72
	rst 38h			;5b73
	rst 38h			;5b74
	rst 38h			;5b75
	rst 38h			;5b76
	rst 38h			;5b77
	rst 38h			;5b78
	rst 38h			;5b79
	rst 38h			;5b7a
	rst 38h			;5b7b
	rst 38h			;5b7c
	rst 38h			;5b7d
	rst 38h			;5b7e
	rst 38h			;5b7f
	rst 38h			;5b80
	rst 38h			;5b81
	rst 38h			;5b82
	rst 38h			;5b83
	rst 38h			;5b84
	rst 38h			;5b85
	rst 38h			;5b86
	rst 38h			;5b87
	rst 38h			;5b88
	rst 38h			;5b89
	rst 38h			;5b8a
	rst 38h			;5b8b
	rst 38h			;5b8c
	rst 38h			;5b8d
	rst 38h			;5b8e
	rst 38h			;5b8f
	rst 38h			;5b90
	rst 38h			;5b91
	rst 38h			;5b92
	rst 38h			;5b93
	rst 38h			;5b94
	rst 38h			;5b95
	rst 38h			;5b96
	rst 38h			;5b97
	rst 38h			;5b98
	rst 38h			;5b99
	rst 38h			;5b9a
	rst 38h			;5b9b
	rst 38h			;5b9c
	rst 38h			;5b9d
	rst 38h			;5b9e
	rst 38h			;5b9f
	rst 38h			;5ba0
	rst 38h			;5ba1
	rst 38h			;5ba2
	rst 38h			;5ba3
	rst 38h			;5ba4
	rst 38h			;5ba5
	rst 38h			;5ba6
	rst 38h			;5ba7
	rst 38h			;5ba8
	rst 38h			;5ba9
	rst 38h			;5baa
	rst 38h			;5bab
	rst 38h			;5bac
	rst 38h			;5bad
	rst 38h			;5bae
	rst 38h			;5baf
	rst 38h			;5bb0
	rst 38h			;5bb1
	rst 38h			;5bb2
	rst 38h			;5bb3
	rst 38h			;5bb4
	rst 38h			;5bb5
	rst 38h			;5bb6
	rst 38h			;5bb7
	rst 38h			;5bb8
	rst 38h			;5bb9
	rst 38h			;5bba
	rst 38h			;5bbb
	rst 38h			;5bbc
	rst 38h			;5bbd
	rst 38h			;5bbe
	rst 38h			;5bbf
	rst 38h			;5bc0
	rst 38h			;5bc1
	rst 38h			;5bc2
	rst 38h			;5bc3
	rst 38h			;5bc4
	rst 38h			;5bc5
	rst 38h			;5bc6
	rst 38h			;5bc7
	rst 38h			;5bc8
	rst 38h			;5bc9
	rst 38h			;5bca
	rst 38h			;5bcb
	rst 38h			;5bcc
	rst 38h			;5bcd
	rst 38h			;5bce
	rst 38h			;5bcf
	rst 38h			;5bd0
	rst 38h			;5bd1
	rst 38h			;5bd2
	rst 38h			;5bd3
	rst 38h			;5bd4
	rst 38h			;5bd5
	rst 38h			;5bd6
	rst 38h			;5bd7
	rst 38h			;5bd8
	rst 38h			;5bd9
	rst 38h			;5bda
	rst 38h			;5bdb
	rst 38h			;5bdc
	rst 38h			;5bdd
	rst 38h			;5bde
	rst 38h			;5bdf
	rst 38h			;5be0
	rst 38h			;5be1
	rst 38h			;5be2
	rst 38h			;5be3
	rst 38h			;5be4
	rst 38h			;5be5
	rst 38h			;5be6
	rst 38h			;5be7
	rst 38h			;5be8
	rst 38h			;5be9
	rst 38h			;5bea
	rst 38h			;5beb
	rst 38h			;5bec
	rst 38h			;5bed
	rst 38h			;5bee
	rst 38h			;5bef
	rst 38h			;5bf0
	rst 38h			;5bf1
	rst 38h			;5bf2
	rst 38h			;5bf3
	rst 38h			;5bf4
	rst 38h			;5bf5
	rst 38h			;5bf6
	rst 38h			;5bf7
	rst 38h			;5bf8
	rst 38h			;5bf9
	rst 38h			;5bfa
	rst 38h			;5bfb
	rst 38h			;5bfc
	rst 38h			;5bfd
	rst 38h			;5bfe
	rst 38h			;5bff
	rst 38h			;5c00
	rst 38h			;5c01
	rst 38h			;5c02
	rst 38h			;5c03
	rst 38h			;5c04
	rst 38h			;5c05
	rst 38h			;5c06
	rst 38h			;5c07
	rst 38h			;5c08
	rst 38h			;5c09
	rst 38h			;5c0a
	rst 38h			;5c0b
	rst 38h			;5c0c
	rst 38h			;5c0d
	rst 38h			;5c0e
	rst 38h			;5c0f
	rst 38h			;5c10
	rst 38h			;5c11
	rst 38h			;5c12
	rst 38h			;5c13
	rst 38h			;5c14
	rst 38h			;5c15
	rst 38h			;5c16
	rst 38h			;5c17
	rst 38h			;5c18
	rst 38h			;5c19
	rst 38h			;5c1a
	rst 38h			;5c1b
	rst 38h			;5c1c
	rst 38h			;5c1d
	rst 38h			;5c1e
	rst 38h			;5c1f
	rst 38h			;5c20
	rst 38h			;5c21
	rst 38h			;5c22
	rst 38h			;5c23
	rst 38h			;5c24
	rst 38h			;5c25
	rst 38h			;5c26
	rst 38h			;5c27
	rst 38h			;5c28
	rst 38h			;5c29
	rst 38h			;5c2a
	rst 38h			;5c2b
	rst 38h			;5c2c
	rst 38h			;5c2d
	rst 38h			;5c2e
	rst 38h			;5c2f
	rst 38h			;5c30
	rst 38h			;5c31
	rst 38h			;5c32
	rst 38h			;5c33
	rst 38h			;5c34
	rst 38h			;5c35
	rst 38h			;5c36
	rst 38h			;5c37
	rst 38h			;5c38
	rst 38h			;5c39
	rst 38h			;5c3a
	rst 38h			;5c3b
	rst 38h			;5c3c
	rst 38h			;5c3d
	rst 38h			;5c3e
	rst 38h			;5c3f
	rst 38h			;5c40
	rst 38h			;5c41
	rst 38h			;5c42
	rst 38h			;5c43
	rst 38h			;5c44
	rst 38h			;5c45
	rst 38h			;5c46
	rst 38h			;5c47
	rst 38h			;5c48
	rst 38h			;5c49
	rst 38h			;5c4a
	rst 38h			;5c4b
	rst 38h			;5c4c
	rst 38h			;5c4d
	rst 38h			;5c4e
	rst 38h			;5c4f
	rst 38h			;5c50
	rst 38h			;5c51
	rst 38h			;5c52
	rst 38h			;5c53
	rst 38h			;5c54
	rst 38h			;5c55
	rst 38h			;5c56
	rst 38h			;5c57
	rst 38h			;5c58
	rst 38h			;5c59
	rst 38h			;5c5a
	rst 38h			;5c5b
	rst 38h			;5c5c
	rst 38h			;5c5d
	rst 38h			;5c5e
	rst 38h			;5c5f
	rst 38h			;5c60
	rst 38h			;5c61
	rst 38h			;5c62
	rst 38h			;5c63
	rst 38h			;5c64
	rst 38h			;5c65
	rst 38h			;5c66
	rst 38h			;5c67
	rst 38h			;5c68
	rst 38h			;5c69
	rst 38h			;5c6a
	rst 38h			;5c6b
	rst 38h			;5c6c
	rst 38h			;5c6d
	rst 38h			;5c6e
	rst 38h			;5c6f
	rst 38h			;5c70
	rst 38h			;5c71
	rst 38h			;5c72
	rst 38h			;5c73
	rst 38h			;5c74
	rst 38h			;5c75
	rst 38h			;5c76
	rst 38h			;5c77
	rst 38h			;5c78
	rst 38h			;5c79
	rst 38h			;5c7a
	rst 38h			;5c7b
	rst 38h			;5c7c
	rst 38h			;5c7d
	rst 38h			;5c7e
	rst 38h			;5c7f
	rst 38h			;5c80
	rst 38h			;5c81
	rst 38h			;5c82
	rst 38h			;5c83
	rst 38h			;5c84
	rst 38h			;5c85
	rst 38h			;5c86
	rst 38h			;5c87
	rst 38h			;5c88
	rst 38h			;5c89
	rst 38h			;5c8a
	rst 38h			;5c8b
	rst 38h			;5c8c
	rst 38h			;5c8d
	rst 38h			;5c8e
	rst 38h			;5c8f
	rst 38h			;5c90
	rst 38h			;5c91
	rst 38h			;5c92
	rst 38h			;5c93
	rst 38h			;5c94
	rst 38h			;5c95
	rst 38h			;5c96
	rst 38h			;5c97
	rst 38h			;5c98
	rst 38h			;5c99
	rst 38h			;5c9a
	rst 38h			;5c9b
	rst 38h			;5c9c
	rst 38h			;5c9d
	rst 38h			;5c9e
	rst 38h			;5c9f
	rst 38h			;5ca0
	rst 38h			;5ca1
	rst 38h			;5ca2
	rst 38h			;5ca3
	rst 38h			;5ca4
	rst 38h			;5ca5
	rst 38h			;5ca6
	rst 38h			;5ca7
	rst 38h			;5ca8
	rst 38h			;5ca9
	rst 38h			;5caa
	rst 38h			;5cab
	rst 38h			;5cac
	rst 38h			;5cad
	rst 38h			;5cae
	rst 38h			;5caf
	rst 38h			;5cb0
	rst 38h			;5cb1
	rst 38h			;5cb2
	rst 38h			;5cb3
	rst 38h			;5cb4
	rst 38h			;5cb5
	rst 38h			;5cb6
	rst 38h			;5cb7
	rst 38h			;5cb8
	rst 38h			;5cb9
	rst 38h			;5cba
	rst 38h			;5cbb
	rst 38h			;5cbc
	rst 38h			;5cbd
	rst 38h			;5cbe
	rst 38h			;5cbf
	rst 38h			;5cc0
	rst 38h			;5cc1
	rst 38h			;5cc2
	rst 38h			;5cc3
	rst 38h			;5cc4
	rst 38h			;5cc5
	rst 38h			;5cc6
	rst 38h			;5cc7
	rst 38h			;5cc8
	rst 38h			;5cc9
	rst 38h			;5cca
	rst 38h			;5ccb
	rst 38h			;5ccc
	rst 38h			;5ccd
	rst 38h			;5cce
	rst 38h			;5ccf
	rst 38h			;5cd0
	rst 38h			;5cd1
	rst 38h			;5cd2
	rst 38h			;5cd3
	rst 38h			;5cd4
	rst 38h			;5cd5
	rst 38h			;5cd6
	rst 38h			;5cd7
	rst 38h			;5cd8
	rst 38h			;5cd9
	rst 38h			;5cda
	rst 38h			;5cdb
	rst 38h			;5cdc
	rst 38h			;5cdd
	rst 38h			;5cde
	rst 38h			;5cdf
	rst 38h			;5ce0
	rst 38h			;5ce1
	rst 38h			;5ce2
	rst 38h			;5ce3
	rst 38h			;5ce4
	rst 38h			;5ce5
	rst 38h			;5ce6
	rst 38h			;5ce7
	rst 38h			;5ce8
	rst 38h			;5ce9
	rst 38h			;5cea
	rst 38h			;5ceb
	rst 38h			;5cec
	rst 38h			;5ced
	rst 38h			;5cee
	rst 38h			;5cef
	rst 38h			;5cf0
	rst 38h			;5cf1
	rst 38h			;5cf2
	rst 38h			;5cf3
	rst 38h			;5cf4
	rst 38h			;5cf5
	rst 38h			;5cf6
	rst 38h			;5cf7
	rst 38h			;5cf8
	rst 38h			;5cf9
	rst 38h			;5cfa
	rst 38h			;5cfb
	rst 38h			;5cfc
	rst 38h			;5cfd
	rst 38h			;5cfe
	rst 38h			;5cff
	rst 38h			;5d00
	rst 38h			;5d01
	rst 38h			;5d02
	rst 38h			;5d03
	rst 38h			;5d04
	rst 38h			;5d05
	rst 38h			;5d06
	rst 38h			;5d07
	rst 38h			;5d08
	rst 38h			;5d09
	rst 38h			;5d0a
	rst 38h			;5d0b
	rst 38h			;5d0c
	rst 38h			;5d0d
	rst 38h			;5d0e
	rst 38h			;5d0f
	rst 38h			;5d10
	rst 38h			;5d11
	rst 38h			;5d12
	rst 38h			;5d13
	rst 38h			;5d14
	rst 38h			;5d15
	rst 38h			;5d16
	rst 38h			;5d17
	rst 38h			;5d18
	rst 38h			;5d19
	rst 38h			;5d1a
	rst 38h			;5d1b
	rst 38h			;5d1c
	rst 38h			;5d1d
	rst 38h			;5d1e
	rst 38h			;5d1f
	rst 38h			;5d20
	rst 38h			;5d21
	rst 38h			;5d22
	rst 38h			;5d23
	rst 38h			;5d24
	rst 38h			;5d25
	rst 38h			;5d26
	rst 38h			;5d27
	rst 38h			;5d28
	rst 38h			;5d29
	rst 38h			;5d2a
	rst 38h			;5d2b
	rst 38h			;5d2c
	rst 38h			;5d2d
	rst 38h			;5d2e
	rst 38h			;5d2f
	rst 38h			;5d30
	rst 38h			;5d31
	rst 38h			;5d32
	rst 38h			;5d33
	rst 38h			;5d34
	rst 38h			;5d35
	rst 38h			;5d36
	rst 38h			;5d37
	rst 38h			;5d38
	rst 38h			;5d39
	rst 38h			;5d3a
	rst 38h			;5d3b
	rst 38h			;5d3c
	rst 38h			;5d3d
	rst 38h			;5d3e
	rst 38h			;5d3f
	rst 38h			;5d40
	rst 38h			;5d41
	rst 38h			;5d42
	rst 38h			;5d43
	rst 38h			;5d44
	rst 38h			;5d45
	rst 38h			;5d46
	rst 38h			;5d47
	rst 38h			;5d48
	rst 38h			;5d49
	rst 38h			;5d4a
	rst 38h			;5d4b
	rst 38h			;5d4c
	rst 38h			;5d4d
	rst 38h			;5d4e
	rst 38h			;5d4f
	rst 38h			;5d50
	rst 38h			;5d51
	rst 38h			;5d52
	rst 38h			;5d53
	rst 38h			;5d54
	rst 38h			;5d55
	rst 38h			;5d56
	rst 38h			;5d57
	rst 38h			;5d58
	rst 38h			;5d59
	rst 38h			;5d5a
	rst 38h			;5d5b
	rst 38h			;5d5c
	rst 38h			;5d5d
	rst 38h			;5d5e
	rst 38h			;5d5f
	rst 38h			;5d60
	rst 38h			;5d61
	rst 38h			;5d62
	rst 38h			;5d63
	rst 38h			;5d64
	rst 38h			;5d65
	rst 38h			;5d66
	rst 38h			;5d67
	rst 38h			;5d68
	rst 38h			;5d69
	rst 38h			;5d6a
	rst 38h			;5d6b
	rst 38h			;5d6c
	rst 38h			;5d6d
	rst 38h			;5d6e
	rst 38h			;5d6f
	rst 38h			;5d70
	rst 38h			;5d71
	rst 38h			;5d72
	rst 38h			;5d73
	rst 38h			;5d74
	rst 38h			;5d75
	rst 38h			;5d76
	rst 38h			;5d77
	rst 38h			;5d78
	rst 38h			;5d79
	rst 38h			;5d7a
	rst 38h			;5d7b
	rst 38h			;5d7c
	rst 38h			;5d7d
	rst 38h			;5d7e
	rst 38h			;5d7f
	rst 38h			;5d80
	rst 38h			;5d81
	rst 38h			;5d82
	rst 38h			;5d83
	rst 38h			;5d84
	rst 38h			;5d85
	rst 38h			;5d86
	rst 38h			;5d87
	rst 38h			;5d88
	rst 38h			;5d89
	rst 38h			;5d8a
	rst 38h			;5d8b
	rst 38h			;5d8c
	rst 38h			;5d8d
	rst 38h			;5d8e
	rst 38h			;5d8f
	rst 38h			;5d90
	rst 38h			;5d91
	rst 38h			;5d92
	rst 38h			;5d93
	rst 38h			;5d94
	rst 38h			;5d95
	rst 38h			;5d96
	rst 38h			;5d97
	rst 38h			;5d98
	rst 38h			;5d99
	rst 38h			;5d9a
	rst 38h			;5d9b
	rst 38h			;5d9c
	rst 38h			;5d9d
	rst 38h			;5d9e
	rst 38h			;5d9f
	rst 38h			;5da0
	rst 38h			;5da1
	rst 38h			;5da2
	rst 38h			;5da3
	rst 38h			;5da4
	rst 38h			;5da5
	rst 38h			;5da6
	rst 38h			;5da7
	rst 38h			;5da8
	rst 38h			;5da9
	rst 38h			;5daa
	rst 38h			;5dab
	rst 38h			;5dac
	rst 38h			;5dad
	rst 38h			;5dae
	rst 38h			;5daf
	rst 38h			;5db0
	rst 38h			;5db1
	rst 38h			;5db2
	rst 38h			;5db3
	rst 38h			;5db4
	rst 38h			;5db5
	rst 38h			;5db6
	rst 38h			;5db7
	rst 38h			;5db8
	rst 38h			;5db9
	rst 38h			;5dba
	rst 38h			;5dbb
	rst 38h			;5dbc
	rst 38h			;5dbd
	rst 38h			;5dbe
	rst 38h			;5dbf
	rst 38h			;5dc0
	rst 38h			;5dc1
	rst 38h			;5dc2
	rst 38h			;5dc3
	rst 38h			;5dc4
	rst 38h			;5dc5
	rst 38h			;5dc6
	rst 38h			;5dc7
	rst 38h			;5dc8
	rst 38h			;5dc9
	rst 38h			;5dca
	rst 38h			;5dcb
	rst 38h			;5dcc
	rst 38h			;5dcd
	rst 38h			;5dce
	rst 38h			;5dcf
	rst 38h			;5dd0
	rst 38h			;5dd1
	rst 38h			;5dd2
	rst 38h			;5dd3
	rst 38h			;5dd4
	rst 38h			;5dd5
	rst 38h			;5dd6
	rst 38h			;5dd7
	rst 38h			;5dd8
	rst 38h			;5dd9
	rst 38h			;5dda
	rst 38h			;5ddb
	rst 38h			;5ddc
	rst 38h			;5ddd
	rst 38h			;5dde
	rst 38h			;5ddf
	rst 38h			;5de0
	rst 38h			;5de1
	rst 38h			;5de2
	rst 38h			;5de3
	rst 38h			;5de4
	rst 38h			;5de5
	rst 38h			;5de6
	rst 38h			;5de7
	rst 38h			;5de8
	rst 38h			;5de9
	rst 38h			;5dea
	rst 38h			;5deb
	rst 38h			;5dec
	rst 38h			;5ded
	rst 38h			;5dee
	rst 38h			;5def
	rst 38h			;5df0
	rst 38h			;5df1
	rst 38h			;5df2
	rst 38h			;5df3
	rst 38h			;5df4
	rst 38h			;5df5
	rst 38h			;5df6
	rst 38h			;5df7
	rst 38h			;5df8
	rst 38h			;5df9
	rst 38h			;5dfa
	rst 38h			;5dfb
	rst 38h			;5dfc
	rst 38h			;5dfd
	rst 38h			;5dfe
	rst 38h			;5dff
	rst 38h			;5e00
	rst 38h			;5e01
	rst 38h			;5e02
	rst 38h			;5e03
	rst 38h			;5e04
	rst 38h			;5e05
	rst 38h			;5e06
	rst 38h			;5e07
	rst 38h			;5e08
	rst 38h			;5e09
	rst 38h			;5e0a
	rst 38h			;5e0b
	rst 38h			;5e0c
	rst 38h			;5e0d
	rst 38h			;5e0e
	rst 38h			;5e0f
	rst 38h			;5e10
	rst 38h			;5e11
	rst 38h			;5e12
	rst 38h			;5e13
	rst 38h			;5e14
	rst 38h			;5e15
	rst 38h			;5e16
	rst 38h			;5e17
	rst 38h			;5e18
	rst 38h			;5e19
	rst 38h			;5e1a
	rst 38h			;5e1b
	rst 38h			;5e1c
	rst 38h			;5e1d
	rst 38h			;5e1e
	rst 38h			;5e1f
	rst 38h			;5e20
	rst 38h			;5e21
	rst 38h			;5e22
	rst 38h			;5e23
	rst 38h			;5e24
	rst 38h			;5e25
	rst 38h			;5e26
	rst 38h			;5e27
	rst 38h			;5e28
	rst 38h			;5e29
	rst 38h			;5e2a
	rst 38h			;5e2b
	rst 38h			;5e2c
	rst 38h			;5e2d
	rst 38h			;5e2e
	rst 38h			;5e2f
	rst 38h			;5e30
	rst 38h			;5e31
	rst 38h			;5e32
	rst 38h			;5e33
	rst 38h			;5e34
	rst 38h			;5e35
	rst 38h			;5e36
	rst 38h			;5e37
	rst 38h			;5e38
	rst 38h			;5e39
	rst 38h			;5e3a
	rst 38h			;5e3b
	rst 38h			;5e3c
	rst 38h			;5e3d
	rst 38h			;5e3e
	rst 38h			;5e3f
	rst 38h			;5e40
	rst 38h			;5e41
	rst 38h			;5e42
	rst 38h			;5e43
	rst 38h			;5e44
	rst 38h			;5e45
	rst 38h			;5e46
	rst 38h			;5e47
	rst 38h			;5e48
	rst 38h			;5e49
	rst 38h			;5e4a
	rst 38h			;5e4b
	rst 38h			;5e4c
	rst 38h			;5e4d
	rst 38h			;5e4e
	rst 38h			;5e4f
	rst 38h			;5e50
	rst 38h			;5e51
	rst 38h			;5e52
	rst 38h			;5e53
	rst 38h			;5e54
	rst 38h			;5e55
	rst 38h			;5e56
	rst 38h			;5e57
	rst 38h			;5e58
	rst 38h			;5e59
	rst 38h			;5e5a
	rst 38h			;5e5b
	rst 38h			;5e5c
	rst 38h			;5e5d
	rst 38h			;5e5e
	rst 38h			;5e5f
	rst 38h			;5e60
	rst 38h			;5e61
	rst 38h			;5e62
	rst 38h			;5e63
	rst 38h			;5e64
	rst 38h			;5e65
	rst 38h			;5e66
	rst 38h			;5e67
	rst 38h			;5e68
	rst 38h			;5e69
	rst 38h			;5e6a
	rst 38h			;5e6b
	rst 38h			;5e6c
	rst 38h			;5e6d
	rst 38h			;5e6e
	rst 38h			;5e6f
	rst 38h			;5e70
	rst 38h			;5e71
	rst 38h			;5e72
	rst 38h			;5e73
	rst 38h			;5e74
	rst 38h			;5e75
	rst 38h			;5e76
	rst 38h			;5e77
	rst 38h			;5e78
	rst 38h			;5e79
	rst 38h			;5e7a
	rst 38h			;5e7b
	rst 38h			;5e7c
	rst 38h			;5e7d
	rst 38h			;5e7e
	rst 38h			;5e7f
	rst 38h			;5e80
	rst 38h			;5e81
	rst 38h			;5e82
	rst 38h			;5e83
	rst 38h			;5e84
	rst 38h			;5e85
	rst 38h			;5e86
	rst 38h			;5e87
	rst 38h			;5e88
	rst 38h			;5e89
	rst 38h			;5e8a
	rst 38h			;5e8b
	rst 38h			;5e8c
	rst 38h			;5e8d
	rst 38h			;5e8e
	rst 38h			;5e8f
	rst 38h			;5e90
	rst 38h			;5e91
	rst 38h			;5e92
	rst 38h			;5e93
	rst 38h			;5e94
	rst 38h			;5e95
	rst 38h			;5e96
	rst 38h			;5e97
	rst 38h			;5e98
	rst 38h			;5e99
	rst 38h			;5e9a
	rst 38h			;5e9b
	rst 38h			;5e9c
	rst 38h			;5e9d
	rst 38h			;5e9e
	rst 38h			;5e9f
	rst 38h			;5ea0
	rst 38h			;5ea1
	rst 38h			;5ea2
	rst 38h			;5ea3
	rst 38h			;5ea4
	rst 38h			;5ea5
	rst 38h			;5ea6
	rst 38h			;5ea7
	rst 38h			;5ea8
	rst 38h			;5ea9
	rst 38h			;5eaa
	rst 38h			;5eab
	rst 38h			;5eac
	rst 38h			;5ead
	rst 38h			;5eae
	rst 38h			;5eaf
	rst 38h			;5eb0
	rst 38h			;5eb1
	rst 38h			;5eb2
	rst 38h			;5eb3
	rst 38h			;5eb4
	rst 38h			;5eb5
	rst 38h			;5eb6
	rst 38h			;5eb7
	rst 38h			;5eb8
	rst 38h			;5eb9
	rst 38h			;5eba
	rst 38h			;5ebb
	rst 38h			;5ebc
	rst 38h			;5ebd
	rst 38h			;5ebe
	rst 38h			;5ebf
	rst 38h			;5ec0
	rst 38h			;5ec1
	rst 38h			;5ec2
	rst 38h			;5ec3
	rst 38h			;5ec4
	rst 38h			;5ec5
	rst 38h			;5ec6
	rst 38h			;5ec7
	rst 38h			;5ec8
	rst 38h			;5ec9
	rst 38h			;5eca
	rst 38h			;5ecb
	rst 38h			;5ecc
	rst 38h			;5ecd
	rst 38h			;5ece
	rst 38h			;5ecf
	rst 38h			;5ed0
	rst 38h			;5ed1
	rst 38h			;5ed2
	rst 38h			;5ed3
	rst 38h			;5ed4
	rst 38h			;5ed5
	rst 38h			;5ed6
	rst 38h			;5ed7
	rst 38h			;5ed8
	rst 38h			;5ed9
	rst 38h			;5eda
	rst 38h			;5edb
	rst 38h			;5edc
	rst 38h			;5edd
	rst 38h			;5ede
	rst 38h			;5edf
	rst 38h			;5ee0
	rst 38h			;5ee1
	rst 38h			;5ee2
	rst 38h			;5ee3
	rst 38h			;5ee4
	rst 38h			;5ee5
	rst 38h			;5ee6
	rst 38h			;5ee7
	rst 38h			;5ee8
	rst 38h			;5ee9
	rst 38h			;5eea
	rst 38h			;5eeb
	rst 38h			;5eec
	rst 38h			;5eed
	rst 38h			;5eee
	rst 38h			;5eef
	rst 38h			;5ef0
	rst 38h			;5ef1
	rst 38h			;5ef2
	rst 38h			;5ef3
	rst 38h			;5ef4
	rst 38h			;5ef5
	rst 38h			;5ef6
	rst 38h			;5ef7
	rst 38h			;5ef8
	rst 38h			;5ef9
	rst 38h			;5efa
	rst 38h			;5efb
	rst 38h			;5efc
	rst 38h			;5efd
	rst 38h			;5efe
	rst 38h			;5eff
	rst 38h			;5f00
	rst 38h			;5f01
	rst 38h			;5f02
	rst 38h			;5f03
	rst 38h			;5f04
	rst 38h			;5f05
	rst 38h			;5f06
	rst 38h			;5f07
	rst 38h			;5f08
	rst 38h			;5f09
	rst 38h			;5f0a
	rst 38h			;5f0b
	rst 38h			;5f0c
	rst 38h			;5f0d
	rst 38h			;5f0e
	rst 38h			;5f0f
	rst 38h			;5f10
	rst 38h			;5f11
	rst 38h			;5f12
	rst 38h			;5f13
	rst 38h			;5f14
	rst 38h			;5f15
	rst 38h			;5f16
	rst 38h			;5f17
	rst 38h			;5f18
	rst 38h			;5f19
	rst 38h			;5f1a
	rst 38h			;5f1b
	rst 38h			;5f1c
	rst 38h			;5f1d
	rst 38h			;5f1e
	rst 38h			;5f1f
	rst 38h			;5f20
	rst 38h			;5f21
	rst 38h			;5f22
	rst 38h			;5f23
	rst 38h			;5f24
	rst 38h			;5f25
	rst 38h			;5f26
	rst 38h			;5f27
	rst 38h			;5f28
	rst 38h			;5f29
	rst 38h			;5f2a
	rst 38h			;5f2b
	rst 38h			;5f2c
	rst 38h			;5f2d
	rst 38h			;5f2e
	rst 38h			;5f2f
	rst 38h			;5f30
	rst 38h			;5f31
	rst 38h			;5f32
	rst 38h			;5f33
	rst 38h			;5f34
	rst 38h			;5f35
	rst 38h			;5f36
	rst 38h			;5f37
	rst 38h			;5f38
	rst 38h			;5f39
	rst 38h			;5f3a
	rst 38h			;5f3b
	rst 38h			;5f3c
	rst 38h			;5f3d
	rst 38h			;5f3e
	rst 38h			;5f3f
	rst 38h			;5f40
	rst 38h			;5f41
	rst 38h			;5f42
	rst 38h			;5f43
	rst 38h			;5f44
	rst 38h			;5f45
	rst 38h			;5f46
	rst 38h			;5f47
	rst 38h			;5f48
	rst 38h			;5f49
	rst 38h			;5f4a
	rst 38h			;5f4b
	rst 38h			;5f4c
	rst 38h			;5f4d
	rst 38h			;5f4e
	rst 38h			;5f4f
	rst 38h			;5f50
	rst 38h			;5f51
	rst 38h			;5f52
	rst 38h			;5f53
	rst 38h			;5f54
	rst 38h			;5f55
	rst 38h			;5f56
	rst 38h			;5f57
	rst 38h			;5f58
	rst 38h			;5f59
	rst 38h			;5f5a
	rst 38h			;5f5b
	rst 38h			;5f5c
	rst 38h			;5f5d
	rst 38h			;5f5e
	rst 38h			;5f5f
	rst 38h			;5f60
	rst 38h			;5f61
	rst 38h			;5f62
	rst 38h			;5f63
	rst 38h			;5f64
	rst 38h			;5f65
	rst 38h			;5f66
	rst 38h			;5f67
	rst 38h			;5f68
	rst 38h			;5f69
	rst 38h			;5f6a
	rst 38h			;5f6b
	rst 38h			;5f6c
	rst 38h			;5f6d
	rst 38h			;5f6e
	rst 38h			;5f6f
	rst 38h			;5f70
	rst 38h			;5f71
	rst 38h			;5f72
	rst 38h			;5f73
	rst 38h			;5f74
	rst 38h			;5f75
	rst 38h			;5f76
	rst 38h			;5f77
	rst 38h			;5f78
	rst 38h			;5f79
	rst 38h			;5f7a
	rst 38h			;5f7b
	rst 38h			;5f7c
	rst 38h			;5f7d
	rst 38h			;5f7e
	rst 38h			;5f7f
	rst 38h			;5f80
	rst 38h			;5f81
	rst 38h			;5f82
	rst 38h			;5f83
	rst 38h			;5f84
	rst 38h			;5f85
	rst 38h			;5f86
	rst 38h			;5f87
	rst 38h			;5f88
	rst 38h			;5f89
	rst 38h			;5f8a
	rst 38h			;5f8b
	rst 38h			;5f8c
	rst 38h			;5f8d
	rst 38h			;5f8e
	rst 38h			;5f8f
	rst 38h			;5f90
	rst 38h			;5f91
	rst 38h			;5f92
	rst 38h			;5f93
	rst 38h			;5f94
	rst 38h			;5f95
	rst 38h			;5f96
	rst 38h			;5f97
	rst 38h			;5f98
	rst 38h			;5f99
	rst 38h			;5f9a
	rst 38h			;5f9b
	rst 38h			;5f9c
	rst 38h			;5f9d
	rst 38h			;5f9e
	rst 38h			;5f9f
	rst 38h			;5fa0
	rst 38h			;5fa1
	rst 38h			;5fa2
	rst 38h			;5fa3
	rst 38h			;5fa4
	rst 38h			;5fa5
	rst 38h			;5fa6
	rst 38h			;5fa7
	rst 38h			;5fa8
	rst 38h			;5fa9
	rst 38h			;5faa
	rst 38h			;5fab
	rst 38h			;5fac
	rst 38h			;5fad
	rst 38h			;5fae
	rst 38h			;5faf
	rst 38h			;5fb0
	rst 38h			;5fb1
	rst 38h			;5fb2
	rst 38h			;5fb3
	rst 38h			;5fb4
	rst 38h			;5fb5
	rst 38h			;5fb6
	rst 38h			;5fb7
	rst 38h			;5fb8
	rst 38h			;5fb9
	rst 38h			;5fba
	rst 38h			;5fbb
	rst 38h			;5fbc
	rst 38h			;5fbd
	rst 38h			;5fbe
	rst 38h			;5fbf
	rst 38h			;5fc0
	rst 38h			;5fc1
	rst 38h			;5fc2
	rst 38h			;5fc3
	rst 38h			;5fc4
	rst 38h			;5fc5
	rst 38h			;5fc6
	rst 38h			;5fc7
	rst 38h			;5fc8
	rst 38h			;5fc9
	rst 38h			;5fca
	rst 38h			;5fcb
	rst 38h			;5fcc
	rst 38h			;5fcd
	rst 38h			;5fce
	rst 38h			;5fcf
	rst 38h			;5fd0
	rst 38h			;5fd1
	rst 38h			;5fd2
	rst 38h			;5fd3
	rst 38h			;5fd4
	rst 38h			;5fd5
	rst 38h			;5fd6
	rst 38h			;5fd7
	rst 38h			;5fd8
	rst 38h			;5fd9
	rst 38h			;5fda
	rst 38h			;5fdb
	rst 38h			;5fdc
	rst 38h			;5fdd
	rst 38h			;5fde
	rst 38h			;5fdf
	rst 38h			;5fe0
	rst 38h			;5fe1
	rst 38h			;5fe2
	rst 38h			;5fe3
	rst 38h			;5fe4
	rst 38h			;5fe5
	rst 38h			;5fe6
	rst 38h			;5fe7
	rst 38h			;5fe8
	rst 38h			;5fe9
	rst 38h			;5fea
	rst 38h			;5feb
	rst 38h			;5fec
	rst 38h			;5fed
	rst 38h			;5fee
	rst 38h			;5fef
	rst 38h			;5ff0
	rst 38h			;5ff1
	rst 38h			;5ff2
	rst 38h			;5ff3
	rst 38h			;5ff4
	rst 38h			;5ff5
	rst 38h			;5ff6
	rst 38h			;5ff7
	rst 38h			;5ff8
	rst 38h			;5ff9
	rst 38h			;5ffa
	rst 38h			;5ffb
	rst 38h			;5ffc
	rst 38h			;5ffd
	rst 38h			;5ffe
	rst 38h			;5fff
	ld c,l			;6000
	ld h,c			;6001
	ld l,(hl)		;6002
	ld h,d			;6003
	ld l,a			;6004
	ld (hl),a		;6005
	jr nz,$+52		;6006
	jr nz,l6037h		;6008
	jr nz,$+78		;600a
	ld h,l			;600c
	halt			;600d
	ld h,l			;600e
	ld l,h			;600f
	jr nz,l604bh		;6010
	jr nz,l6041h		;6012
	jr nz,l605fh		;6014
	ld l,(hl)		;6016
	ld (hl),e		;6017
	ld l,c			;6018
	ld h,h			;6019
	ld h,l			;601a
	jr nz,l606ah		;601b
	ld h,c			;601d
	ld l,(hl)		;601e
	ld h,d			;601f
	ld l,a			;6020
	ld (hl),a		;6021
	jr nz,l6051h		;6022
	jr nz,l606ch		;6024
	ld l,c			;6026
	ld l,(hl)		;6027
	ld h,c			;6028
	ld l,h			;6029
	jr nz,l606eh		;602a
	ld h,c			;602c
	ld (hl),h		;602d
	ld (hl),h		;602e
	ld l,h			;602f
	ld h,l			;6030
	jr nz,$+34		;6031
	jr nz,l6055h		;6033
	jr nz,l6057h		;6035
l6037h:
	jr nz,l6059h		;6037
	jr nz,l605bh		;6039
	jr nz,l605dh		;603b
	jr nz,l605fh		;603d
	jr nz,l6061h		;603f
l6041h:
	jr nz,l6063h		;6041
	ld c,l			;6043
	ld d,l			;6044
	ld d,e			;6045
	ld c,c			;6046
	ld c,(hl)		;6047
	ld d,e			;6048
	ld d,h			;6049
	ld d,d			;604a
l604bh:
	ld d,e			;604b
	ld b,d			;604c
	ld c,e			;604d
	ld a,(de)		;604e
	nop			;604f
	inc bc			;6050
l6051h:
	nop			;6051
	ld bc,00302h		;6052
l6055h:
	inc b			;6055
	dec b			;6056
l6057h:
	ld b,007h		;6057
l6059h:
	ex af,af'		;6059
	inc bc			;605a
l605bh:
	inc b			;605b
	dec b			;605c
l605dh:
	ld b,007h		;605d
l605fh:
	add hl,bc		;605f
	ld a,(bc)		;6060
l6061h:
	dec bc			;6061
	inc c			;6062
l6063h:
	dec c			;6063
	ld c,00fh		;6064
	djnz l6079h		;6066
	ld (de),a		;6068
	inc de			;6069
l606ah:
	inc d			;606a
	dec d			;606b
l606ch:
	nop			;606c
	nop			;606d
l606eh:
	nop			;606e
	nop			;606f
	nop			;6070
	nop			;6071
	nop			;6072
	nop			;6073
	nop			;6074
	nop			;6075
	nop			;6076
	nop			;6077
	nop			;6078
l6079h:
	nop			;6079
	nop			;607a
	nop			;607b
	nop			;607c
	nop			;607d
	nop			;607e
	nop			;607f
	nop			;6080
	nop			;6081
	nop			;6082
	nop			;6083
	nop			;6084
	nop			;6085
	nop			;6086
	nop			;6087
	nop			;6088
	nop			;6089
	nop			;608a
	nop			;608b
	nop			;608c
	nop			;608d
	nop			;608e
	nop			;608f
	nop			;6090
	nop			;6091
	nop			;6092
	nop			;6093
	nop			;6094
	nop			;6095
	nop			;6096
	nop			;6097
	nop			;6098
	nop			;6099
	nop			;609a
	nop			;609b
	nop			;609c
	nop			;609d
	nop			;609e
	nop			;609f
	nop			;60a0
	nop			;60a1
	nop			;60a2
	nop			;60a3
	nop			;60a4
	nop			;60a5
	nop			;60a6
	nop			;60a7
	nop			;60a8
	nop			;60a9
	nop			;60aa
	nop			;60ab
	nop			;60ac
	nop			;60ad
	nop			;60ae
	nop			;60af
	nop			;60b0
	nop			;60b1
	nop			;60b2
	nop			;60b3
	nop			;60b4
	nop			;60b5
	nop			;60b6
	nop			;60b7
	nop			;60b8
	nop			;60b9
	nop			;60ba
	nop			;60bb
	nop			;60bc
	nop			;60bd
	nop			;60be
	nop			;60bf
	nop			;60c0
	nop			;60c1
	nop			;60c2
	nop			;60c3
	nop			;60c4
	nop			;60c5
	nop			;60c6
	nop			;60c7
	nop			;60c8
	nop			;60c9
	nop			;60ca
	nop			;60cb
	nop			;60cc
	nop			;60cd
	nop			;60ce
	nop			;60cf
	nop			;60d0
	nop			;60d1
	nop			;60d2
	nop			;60d3
	nop			;60d4
	nop			;60d5
	nop			;60d6
	nop			;60d7
	nop			;60d8
	nop			;60d9
	nop			;60da
	nop			;60db
	nop			;60dc
	nop			;60dd
	nop			;60de
	nop			;60df
	nop			;60e0
	nop			;60e1
	nop			;60e2
	nop			;60e3
	nop			;60e4
	nop			;60e5
	nop			;60e6
	nop			;60e7
	nop			;60e8
	nop			;60e9
	nop			;60ea
	nop			;60eb
	nop			;60ec
	nop			;60ed
	nop			;60ee
	nop			;60ef
	nop			;60f0
	nop			;60f1
	nop			;60f2
	nop			;60f3
	nop			;60f4
	nop			;60f5
	nop			;60f6
	nop			;60f7
	nop			;60f8
	nop			;60f9
	nop			;60fa
	nop			;60fb
	nop			;60fc
	nop			;60fd
	nop			;60fe
	nop			;60ff
	nop			;6100
	nop			;6101
	nop			;6102
	nop			;6103
	nop			;6104
	nop			;6105
	nop			;6106
	nop			;6107
	nop			;6108
	nop			;6109
	nop			;610a
	nop			;610b
	nop			;610c
l610dh:
	nop			;610d
	nop			;610e
	nop			;610f
	nop			;6110
	nop			;6111
	nop			;6112
	nop			;6113
	nop			;6114
	nop			;6115
	nop			;6116
	nop			;6117
	nop			;6118
	nop			;6119
	nop			;611a
	nop			;611b
	nop			;611c
	nop			;611d
	nop			;611e
	nop			;611f
	nop			;6120
	nop			;6121
	nop			;6122
	nop			;6123
	nop			;6124
	nop			;6125
	nop			;6126
	nop			;6127
	nop			;6128
	nop			;6129
	nop			;612a
	nop			;612b
	nop			;612c
	nop			;612d
	nop			;612e
	nop			;612f
	nop			;6130
	nop			;6131
	nop			;6132
	nop			;6133
	nop			;6134
	nop			;6135
	nop			;6136
	nop			;6137
	nop			;6138
	nop			;6139
	nop			;613a
	nop			;613b
	nop			;613c
	nop			;613d
	nop			;613e
	nop			;613f
	nop			;6140
	nop			;6141
	nop			;6142
	nop			;6143
	nop			;6144
	nop			;6145
	nop			;6146
	nop			;6147
	nop			;6148
	nop			;6149
	nop			;614a
	nop			;614b
	nop			;614c
	nop			;614d
	nop			;614e
	nop			;614f
	nop			;6150
	ld d,00fh		;6151
	rrca			;6153
	rrca			;6154
	rrca			;6155
	rrca			;6156
	dec b			;6157
	inc b			;6158
	ld d,004h		;6159
	add a,b			;615b
	add a,b			;615c
	add a,b			;615d
	add a,b			;615e
	add a,b			;615f
	djnz l6172h		;6160
	djnz l6174h		;6162
	djnz l6166h		;6164
l6166h:
	nop			;6166
	nop			;6167
	nop			;6168
	nop			;6169
	nop			;616a
	nop			;616b
	nop			;616c
	nop			;616d
	nop			;616e
	nop			;616f
	nop			;6170
	nop			;6171
l6172h:
	nop			;6172
	nop			;6173
l6174h:
	nop			;6174
	nop			;6175
	nop			;6176
	nop			;6177
	nop			;6178
	nop			;6179
	nop			;617a
	nop			;617b
	nop			;617c
	nop			;617d
	nop			;617e
	nop			;617f
	nop			;6180
	nop			;6181
	nop			;6182
	nop			;6183
	nop			;6184
	nop			;6185
	nop			;6186
	nop			;6187
	nop			;6188
	nop			;6189
	nop			;618a
	nop			;618b
	nop			;618c
	nop			;618d
	nop			;618e
	nop			;618f
	nop			;6190
	nop			;6191
	nop			;6192
	nop			;6193
	nop			;6194
	nop			;6195
	nop			;6196
	nop			;6197
	nop			;6198
	nop			;6199
	nop			;619a
	nop			;619b
	nop			;619c
	nop			;619d
	nop			;619e
	nop			;619f
	nop			;61a0
	nop			;61a1
	nop			;61a2
	nop			;61a3
	nop			;61a4
	nop			;61a5
	nop			;61a6
	nop			;61a7
	nop			;61a8
	nop			;61a9
	nop			;61aa
	nop			;61ab
	nop			;61ac
	nop			;61ad
	nop			;61ae
	nop			;61af
	nop			;61b0
	nop			;61b1
	nop			;61b2
	nop			;61b3
	nop			;61b4
	nop			;61b5
	nop			;61b6
	nop			;61b7
	nop			;61b8
	nop			;61b9
	nop			;61ba
	nop			;61bb
	nop			;61bc
	nop			;61bd
	nop			;61be
	nop			;61bf
	dec c			;61c0
	rrca			;61c1
	add hl,de		;61c2
	inc b			;61c3
	ld bc,03107h		;61c4
	rlca			;61c7
	dec h			;61c8
	rlca			;61c9
	ld bc,00017h		;61ca
	nop			;61cd
	nop			;61ce
	nop			;61cf
	nop			;61d0
	nop			;61d1
	ld l,h			;61d2
	add hl,bc		;61d3
	ld l,h			;61d4
	add hl,bc		;61d5
	nop			;61d6
	add hl,de		;61d7
	nop			;61d8
	nop			;61d9
	nop			;61da
	nop			;61db
	ld l,e			;61dc
	ld (bc),a		;61dd
	dec a			;61de
	rlca			;61df
	ld sp,00807h		;61e0
	rla			;61e3
	nop			;61e4
	nop			;61e5
	nop			;61e6
	nop			;61e7
	nop			;61e8
	nop			;61e9
	ld l,h			;61ea
	add hl,bc		;61eb
	ld l,h			;61ec
	add hl,bc		;61ed
	nop			;61ee
	add hl,de		;61ef
	nop			;61f0
	nop			;61f1
	nop			;61f2
	nop			;61f3
	ld l,e			;61f4
	ld (bc),a		;61f5
	ld sp,02507h		;61f6
	rlca			;61f9
	add hl,bc		;61fa
	rla			;61fb
	nop			;61fc
	nop			;61fd
	nop			;61fe
	nop			;61ff
	nop			;6200
	nop			;6201
	ld l,h			;6202
	add hl,bc		;6203
	ld l,h			;6204
	add hl,bc		;6205
	nop			;6206
	add hl,de		;6207
	ld h,a			;6208
	djnz l620bh		;6209
l620bh:
	nop			;620b
	ld l,e			;620c
	ld (bc),a		;620d
	inc (hl)		;620e
l620fh:
	rlca			;620f
	jr z,l6219h		;6210
	ld bc,00017h		;6212
	nop			;6215
	nop			;6216
	nop			;6217
	nop			;6218
l6219h:
	nop			;6219
	ld l,h			;621a
	add hl,bc		;621b
	ld l,h			;621c
	add hl,bc		;621d
	nop			;621e
	add hl,de		;621f
	nop			;6220
	nop			;6221
	nop			;6222
	nop			;6223
	ld l,h			;6224
	ld bc,00740h		;6225
	inc (hl)		;6228
	rlca			;6229
	add hl,bc		;622a
	rla			;622b
	nop			;622c
	nop			;622d
	nop			;622e
	nop			;622f
	nop			;6230
	nop			;6231
	ld l,h			;6232
	add hl,bc		;6233
	ld l,h			;6234
	add hl,bc		;6235
	nop			;6236
	add hl,de		;6237
	nop			;6238
	nop			;6239
	nop			;623a
	nop			;623b
	ld l,h			;623c
	ld bc,00734h		;623d
	jr z,l6249h		;6240
	ex af,af'		;6242
	rla			;6243
	nop			;6244
	nop			;6245
	nop			;6246
	nop			;6247
	nop			;6248
l6249h:
	nop			;6249
	ld l,h			;624a
	add hl,bc		;624b
	ld l,h			;624c
	add hl,bc		;624d
	nop			;624e
	add hl,de		;624f
	nop			;6250
	nop			;6251
	jr z,l6258h		;6252
	ld l,h			;6254
	ld bc,00733h		;6255
l6258h:
	daa			;6258
	rlca			;6259
	ld (bc),a		;625a
	rla			;625b
	ld h,a			;625c
	dec d			;625d
	nop			;625e
	nop			;625f
	nop			;6260
	nop			;6261
	ld l,h			;6262
	add hl,bc		;6263
	ld l,h			;6264
	add hl,bc		;6265
	nop			;6266
	add hl,de		;6267
	nop			;6268
	nop			;6269
	nop			;626a
	nop			;626b
	ld l,h			;626c
	ld bc,0073fh		;626d
	inc sp			;6270
	rlca			;6271
	ex af,af'		;6272
	rla			;6273
	nop			;6274
	nop			;6275
	nop			;6276
	nop			;6277
	nop			;6278
	nop			;6279
	ld l,h			;627a
	add hl,bc		;627b
	ld l,h			;627c
	add hl,bc		;627d
	nop			;627e
	add hl,de		;627f
	nop			;6280
	nop			;6281
	nop			;6282
	nop			;6283
	ld l,h			;6284
	ld bc,00a33h		;6285
	daa			;6288
	ld a,(bc)		;6289
	add hl,bc		;628a
	rla			;628b
	nop			;628c
	nop			;628d
	nop			;628e
	nop			;628f
	nop			;6290
	nop			;6291
	ld l,h			;6292
	add hl,bc		;6293
	ld l,h			;6294
	add hl,bc		;6295
	nop			;6296
	add hl,de		;6297
	nop			;6298
	nop			;6299
	nop			;629a
	nop			;629b
	ld l,h			;629c
	ld bc,00a32h		;629d
	ld h,00ah		;62a0
	ld bc,00017h		;62a2
	nop			;62a5
	nop			;62a6
	nop			;62a7
	nop			;62a8
	nop			;62a9
	ld l,h			;62aa
	add hl,bc		;62ab
	ld l,h			;62ac
	add hl,bc		;62ad
	nop			;62ae
	add hl,de		;62af
	nop			;62b0
	nop			;62b1
	nop			;62b2
	nop			;62b3
	ld l,h			;62b4
	ld bc,00a3eh		;62b5
	ld (0090ah),a		;62b8
	rla			;62bb
	nop			;62bc
	nop			;62bd
	nop			;62be
	nop			;62bf
	nop			;62c0
	nop			;62c1
	ld l,h			;62c2
	add hl,bc		;62c3
	ld l,h			;62c4
	add hl,bc		;62c5
	nop			;62c6
	add hl,de		;62c7
	nop			;62c8
	nop			;62c9
	nop			;62ca
	nop			;62cb
	ld l,h			;62cc
	ld bc,00a32h		;62cd
	ld h,00ah		;62d0
	ex af,af'		;62d2
	rla			;62d3
	nop			;62d4
	nop			;62d5
	nop			;62d6
	nop			;62d7
	nop			;62d8
	nop			;62d9
	ld l,h			;62da
	add hl,bc		;62db
	ld l,h			;62dc
	add hl,bc		;62dd
	nop			;62de
	add hl,de		;62df
	nop			;62e0
	nop			;62e1
	nop			;62e2
	nop			;62e3
	ld bc,0310ah		;62e4
	ld a,(bc)		;62e7
	dec h			;62e8
	ld a,(bc)		;62e9
	ex af,af'		;62ea
	rla			;62eb
	nop			;62ec
	nop			;62ed
	ld sp,06c04h		;62ee
	add hl,bc		;62f1
	ld l,h			;62f2
	add hl,bc		;62f3
	ld l,h			;62f4
	add hl,bc		;62f5
	nop			;62f6
	add hl,de		;62f7
	nop			;62f8
	nop			;62f9
	ld l,h			;62fa
	rlca			;62fb
	dec c			;62fc
	ld a,(bc)		;62fd
	dec a			;62fe
	ld a,(bc)		;62ff
	ld sp,0090ah		;6300
	rla			;6303
	ld l,h			;6304
	add hl,bc		;6305
	jr nc,l630dh		;6306
	ld l,h			;6308
	add hl,bc		;6309
	ld l,h			;630a
	add hl,bc		;630b
	ld l,h			;630c
l630dh:
	add hl,bc		;630d
	nop			;630e
	add hl,de		;630f
	dec c			;6310
	inc c			;6311
	ld l,h			;6312
	rlca			;6313
	ld bc,0310ah		;6314
	ld a,(bc)		;6317
	dec h			;6318
	ld a,(bc)		;6319
	ex af,af'		;631a
	rla			;631b
	ld l,h			;631c
	add hl,bc		;631d
	cpl			;631e
	ld b,06ch		;631f
	add hl,bc		;6321
	ld l,h			;6322
	add hl,bc		;6323
	ld l,h			;6324
	add hl,bc		;6325
	nop			;6326
	add hl,de		;6327
	djnz l6336h		;6328
	ld l,h			;632a
	rlca			;632b
	inc b			;632c
	ld a,(bc)		;632d
	inc (hl)		;632e
	ld a,(bc)		;632f
	jr z,l633ch		;6330
	add hl,bc		;6332
	rla			;6333
	ld l,h			;6334
	add hl,bc		;6335
l6336h:
	ld sp,l6c06h		;6336
	add hl,bc		;6339
	ld l,h			;633a
	add hl,bc		;633b
l633ch:
	ld l,h			;633c
	add hl,bc		;633d
	nop			;633e
	add hl,de		;633f
	inc e			;6340
	ld a,(bc)		;6341
	cpl			;6342
	ld a,(bc)		;6343
	inc b			;6344
	ld a,(bc)		;6345
	inc (hl)		;6346
	ld a,(bc)		;6347
	jr z,l6354h		;6348
	ex af,af'		;634a
	rla			;634b
	ld l,h			;634c
	dec bc			;634d
	ld l,h			;634e
	add hl,bc		;634f
	ld l,h			;6350
	dec bc			;6351
	ld l,h			;6352
	add hl,bc		;6353
l6354h:
	ld l,h			;6354
	add hl,bc		;6355
	nop			;6356
	add hl,de		;6357
	djnz l6364h		;6358
	jr nc,l6366h		;635a
	inc b			;635c
	ld a,(bc)		;635d
	inc (hl)		;635e
	ld a,(bc)		;635f
	jr z,l636ch		;6360
	ex af,af'		;6362
	rla			;6363
l6364h:
	ld l,h			;6364
	dec bc			;6365
l6366h:
	ld l,h			;6366
	add hl,bc		;6367
	ld l,h			;6368
	dec bc			;6369
	ld l,h			;636a
	add hl,bc		;636b
l636ch:
	ld l,h			;636c
	add hl,bc		;636d
	nop			;636e
	add hl,de		;636f
	rrca			;6370
	ld a,(bc)		;6371
	ld sp,0030ah		;6372
	ld a,(bc)		;6375
	inc sp			;6376
	ld a,(bc)		;6377
	daa			;6378
	ld a,(bc)		;6379
	ex af,af'		;637a
	rla			;637b
	ld l,h			;637c
	dec bc			;637d
	ld l,h			;637e
	add hl,bc		;637f
	ld l,h			;6380
	dec bc			;6381
	ld l,h			;6382
	add hl,bc		;6383
	ld l,h			;6384
	add hl,bc		;6385
	nop			;6386
	add hl,de		;6387
	dec de			;6388
	ld a,(bc)		;6389
	jr nc,l6396h		;638a
	inc bc			;638c
	ld a,(bc)		;638d
	inc sp			;638e
	ld a,(bc)		;638f
	daa			;6390
	ld a,(bc)		;6391
	ex af,af'		;6392
	rla			;6393
	ld l,h			;6394
	dec bc			;6395
l6396h:
	ld l,h			;6396
	add hl,bc		;6397
	ld l,h			;6398
	dec bc			;6399
	ld l,h			;639a
	add hl,bc		;639b
	ld l,h			;639c
	add hl,bc		;639d
	nop			;639e
	add hl,de		;639f
	rrca			;63a0
	ld a,(bc)		;63a1
	cpl			;63a2
	ld a,(bc)		;63a3
	inc bc			;63a4
	ld a,(bc)		;63a5
	daa			;63a6
	ld a,(bc)		;63a7
	daa			;63a8
	ld a,(bc)		;63a9
	ex af,af'		;63aa
	rla			;63ab
	ld l,h			;63ac
	dec bc			;63ad
	ld l,h			;63ae
	add hl,bc		;63af
	ld l,h			;63b0
	dec bc			;63b1
	ld l,h			;63b2
	add hl,bc		;63b3
	ld l,h			;63b4
	add hl,bc		;63b5
	nop			;63b6
	add hl,de		;63b7
	ld c,00ah		;63b8
	ld sp,0020ah		;63ba
	ld a,(bc)		;63bd
	ld h,00ah		;63be
	ld h,00ah		;63c0
	ld (bc),a		;63c2
	rla			;63c3
	ld l,h			;63c4
	dec bc			;63c5
	ld l,h			;63c6
	add hl,bc		;63c7
	ld l,h			;63c8
	dec bc			;63c9
	ld l,h			;63ca
	add hl,bc		;63cb
	ld l,h			;63cc
	add hl,bc		;63cd
	nop			;63ce
	add hl,de		;63cf
	ld a,(de)		;63d0
	ld a,(bc)		;63d1
	cpl			;63d2
	ld a,(bc)		;63d3
	ld c,00ah		;63d4
	ld (0320ah),a		;63d6
	ld a,(bc)		;63d9
	ld (bc),a		;63da
	rla			;63db
	ld l,h			;63dc
	dec bc			;63dd
	ld l,h			;63de
	add hl,bc		;63df
	ld l,h			;63e0
	dec bc			;63e1
	ld l,h			;63e2
	add hl,bc		;63e3
	ld l,h			;63e4
	add hl,bc		;63e5
	nop			;63e6
	add hl,de		;63e7
	ld c,00ah		;63e8
	jr nc,l63f6h		;63ea
	ld (bc),a		;63ec
	ld a,(bc)		;63ed
	ld h,00ah		;63ee
	ld h,00ah		;63f0
	rlca			;63f2
	rla			;63f3
	ld l,h			;63f4
	dec bc			;63f5
l63f6h:
	ld l,h			;63f6
	add hl,bc		;63f7
	ld l,h			;63f8
	dec bc			;63f9
	ld l,h			;63fa
	add hl,bc		;63fb
	ld l,h			;63fc
	add hl,bc		;63fd
	nop			;63fe
	add hl,de		;63ff
	dec c			;6400
	rrca			;6401
	dec h			;6402
	ld a,(bc)		;6403
	ld bc,0360dh		;6404
	add hl,bc		;6407
	dec a			;6408
	add hl,bc		;6409
	ld bc,l6c17h		;640a
	add hl,bc		;640d
	ld l,h			;640e
	rlca			;640f
	ld l,h			;6410
	add hl,bc		;6411
	nop			;6412
	nop			;6413
	ld l,d			;6414
	ld bc,01900h		;6415
	add hl,de		;6418
	rlca			;6419
	inc h			;641a
	ld a,(bc)		;641b
	dec c			;641c
	dec c			;641d
	inc (hl)		;641e
	add hl,bc		;641f
	dec sp			;6420
	add hl,bc		;6421
	inc bc			;6422
	rla			;6423
	ld l,h			;6424
	add hl,bc		;6425
	ld l,h			;6426
	rlca			;6427
	ld l,h			;6428
	add hl,bc		;6429
	nop			;642a
	nop			;642b
	nop			;642c
	nop			;642d
	nop			;642e
	add hl,de		;642f
	dec c			;6430
	rrca			;6431
	inc hl			;6432
	ld a,(bc)		;6433
	ld bc,0360dh		;6434
	add hl,bc		;6437
	dec a			;6438
	add hl,bc		;6439
	ld bc,l6c17h		;643a
	add hl,bc		;643d
	ld l,h			;643e
	rlca			;643f
	ld l,h			;6440
	add hl,bc		;6441
	nop			;6442
	nop			;6443
	nop			;6444
	nop			;6445
	nop			;6446
	add hl,de		;6447
	djnz l6459h		;6448
	dec h			;644a
	ld a,(bc)		;644b
	inc b			;644c
	dec c			;644d
	add hl,sp		;644e
	add hl,bc		;644f
	ld b,b			;6450
	add hl,bc		;6451
	ld (bc),a		;6452
	rla			;6453
	ld l,h			;6454
	add hl,bc		;6455
	ld l,h			;6456
	rlca			;6457
	ld l,h			;6458
l6459h:
	add hl,bc		;6459
	nop			;645a
	nop			;645b
	nop			;645c
	nop			;645d
	nop			;645e
	add hl,de		;645f
	inc e			;6460
	rrca			;6461
	inc hl			;6462
	ld a,(bc)		;6463
	djnz l6473h		;6464
	jr c,l6471h		;6466
	ccf			;6468
	add hl,bc		;6469
	ld bc,l6c17h		;646a
	add hl,bc		;646d
	ld l,h			;646e
	rlca			;646f
	ld l,h			;6470
l6471h:
	add hl,bc		;6471
	nop			;6472
l6473h:
	nop			;6473
	nop			;6474
	nop			;6475
	nop			;6476
	add hl,de		;6477
	djnz l6489h		;6478
	inc h			;647a
	ld a,(bc)		;647b
	inc b			;647c
	dec c			;647d
	inc (hl)		;647e
	add hl,bc		;647f
	dec sp			;6480
	add hl,bc		;6481
	inc bc			;6482
	rla			;6483
	ld l,h			;6484
	add hl,bc		;6485
	ld l,h			;6486
	rlca			;6487
	ld l,h			;6488
l6489h:
	add hl,bc		;6489
	nop			;648a
	nop			;648b
	nop			;648c
	nop			;648d
	nop			;648e
	add hl,de		;648f
	rrca			;6490
	rrca			;6491
	dec h			;6492
	ld a,(bc)		;6493
	inc bc			;6494
	dec c			;6495
	ld (hl),009h		;6496
	dec a			;6498
	add hl,bc		;6499
	ld bc,l6c17h		;649a
	add hl,bc		;649d
	ld l,h			;649e
	rlca			;649f
	ld l,h			;64a0
	add hl,bc		;64a1
	nop			;64a2
	nop			;64a3
	nop			;64a4
	nop			;64a5
	nop			;64a6
	add hl,de		;64a7
	dec de			;64a8
	rrca			;64a9
	inc h			;64aa
	ld a,(bc)		;64ab
	rrca			;64ac
	dec c			;64ad
	nop			;64ae
	nop			;64af
	nop			;64b0
	nop			;64b1
	nop			;64b2
	rla			;64b3
	ld l,h			;64b4
	add hl,bc		;64b5
	ld l,h			;64b6
	rlca			;64b7
	ld l,h			;64b8
	add hl,bc		;64b9
	nop			;64ba
	nop			;64bb
	nop			;64bc
	nop			;64bd
	nop			;64be
	add hl,de		;64bf
	rrca			;64c0
	rrca			;64c1
	inc hl			;64c2
	ld a,(bc)		;64c3
	inc bc			;64c4
	dec c			;64c5
	nop			;64c6
	nop			;64c7
	nop			;64c8
	nop			;64c9
	ld bc,l6c17h		;64ca
	add hl,bc		;64cd
	ld l,h			;64ce
	rlca			;64cf
	ld l,h			;64d0
	add hl,bc		;64d1
	nop			;64d2
	nop			;64d3
	nop			;64d4
	nop			;64d5
	nop			;64d6
	add hl,de		;64d7
	ld c,00fh		;64d8
	dec h			;64da
	ld a,(bc)		;64db
	ld (bc),a		;64dc
	dec c			;64dd
	add hl,sp		;64de
	add hl,bc		;64df
	ld b,b			;64e0
	add hl,bc		;64e1
	ld (bc),a		;64e2
	rla			;64e3
	ld l,h			;64e4
	add hl,bc		;64e5
	ld l,h			;64e6
	rlca			;64e7
	ld l,h			;64e8
	add hl,bc		;64e9
	nop			;64ea
	nop			;64eb
	nop			;64ec
	nop			;64ed
	nop			;64ee
	add hl,de		;64ef
	ld a,(de)		;64f0
	rrca			;64f1
	inc hl			;64f2
	ld a,(bc)		;64f3
	ld c,00dh		;64f4
	dec a			;64f6
	add hl,bc		;64f7
	ld b,h			;64f8
	add hl,bc		;64f9
	ld bc,l6c17h		;64fa
	add hl,bc		;64fd
	ld l,h			;64fe
	rlca			;64ff
	ld l,h			;6500
	add hl,bc		;6501
	nop			;6502
	nop			;6503
	nop			;6504
	nop			;6505
	nop			;6506
	add hl,de		;6507
	ld c,00fh		;6508
	inc h			;650a
	ld a,(bc)		;650b
	ld (bc),a		;650c
	dec c			;650d
	ld sp,03809h		;650e
	dec bc			;6511
	inc bc			;6512
	rla			;6513
	ld l,h			;6514
	add hl,bc		;6515
	ld l,h			;6516
	rlca			;6517
	ld l,h			;6518
	add hl,bc		;6519
	nop			;651a
	nop			;651b
	nop			;651c
	nop			;651d
	nop			;651e
	add hl,de		;651f
	dec c			;6520
	rrca			;6521
	dec h			;6522
	ld a,(bc)		;6523
	ld bc,l610dh		;6524
	nop			;6527
	ld h,c			;6528
	nop			;6529
	ld bc,l6c17h		;652a
	add hl,bc		;652d
	ld l,h			;652e
	rlca			;652f
	ld l,h			;6530
	add hl,bc		;6531
	nop			;6532
	nop			;6533
	nop			;6534
	nop			;6535
	nop			;6536
	add hl,de		;6537
	add hl,de		;6538
	rrca			;6539
	inc h			;653a
	ld a,(bc)		;653b
	dec c			;653c
	dec c			;653d
	nop			;653e
	nop			;653f
	nop			;6540
	nop			;6541
	inc bc			;6542
	rla			;6543
	ld l,h			;6544
	add hl,bc		;6545
	ld l,h			;6546
	rlca			;6547
	ld l,h			;6548
	add hl,bc		;6549
	nop			;654a
	nop			;654b
	nop			;654c
	nop			;654d
	nop			;654e
	add hl,de		;654f
	dec c			;6550
	rrca			;6551
	inc hl			;6552
	ld a,(bc)		;6553
	ld bc,0000dh		;6554
	nop			;6557
	nop			;6558
	nop			;6559
	ld bc,l6c17h		;655a
	add hl,bc		;655d
	ld l,h			;655e
	rlca			;655f
	ld l,h			;6560
	add hl,bc		;6561
	nop			;6562
	nop			;6563
	nop			;6564
	nop			;6565
	nop			;6566
	add hl,de		;6567
	djnz l6579h		;6568
	dec h			;656a
	ld a,(bc)		;656b
	inc b			;656c
	dec c			;656d
	nop			;656e
	nop			;656f
	nop			;6570
	nop			;6571
	ld (bc),a		;6572
	rla			;6573
	ld l,h			;6574
	add hl,bc		;6575
	ld l,h			;6576
	rlca			;6577
	ld l,h			;6578
l6579h:
	add hl,bc		;6579
	nop			;657a
	nop			;657b
	nop			;657c
	nop			;657d
	nop			;657e
	add hl,de		;657f
	inc e			;6580
	rrca			;6581
	dec h			;6582
	add hl,bc		;6583
	inc b			;6584
	rrca			;6585
	nop			;6586
	nop			;6587
	nop			;6588
	nop			;6589
	ld bc,l6c17h		;658a
	add hl,bc		;658d
	ld l,h			;658e
	rlca			;658f
	ld l,h			;6590
	add hl,bc		;6591
	nop			;6592
	nop			;6593
	nop			;6594
	nop			;6595
	nop			;6596
	add hl,de		;6597
	djnz l65a9h		;6598
	ld hl,(00409h)		;659a
	dec c			;659d
	nop			;659e
	nop			;659f
	nop			;65a0
	nop			;65a1
	nop			;65a2
	rla			;65a3
	ld l,h			;65a4
	add hl,bc		;65a5
	ld l,h			;65a6
	rlca			;65a7
	ld l,h			;65a8
l65a9h:
	add hl,bc		;65a9
	nop			;65aa
	nop			;65ab
	nop			;65ac
	nop			;65ad
	nop			;65ae
	add hl,de		;65af
	rrca			;65b0
	rrca			;65b1
	inc l			;65b2
	add hl,bc		;65b3
	inc bc			;65b4
	dec c			;65b5
	nop			;65b6
	nop			;65b7
	nop			;65b8
	nop			;65b9
	ld bc,l6c17h		;65ba
	add hl,bc		;65bd
	ld l,h			;65be
	rlca			;65bf
	ld l,h			;65c0
	add hl,bc		;65c1
	nop			;65c2
	nop			;65c3
	nop			;65c4
	nop			;65c5
	nop			;65c6
	add hl,de		;65c7
	dec de			;65c8
	rrca			;65c9
	cpl			;65ca
	add hl,bc		;65cb
	inc bc			;65cc
	rrca			;65cd
	nop			;65ce
	nop			;65cf
	nop			;65d0
	nop			;65d1
	inc bc			;65d2
	rla			;65d3
	ld l,h			;65d4
	add hl,bc		;65d5
	ld l,h			;65d6
	rlca			;65d7
	ld l,h			;65d8
	add hl,bc		;65d9
	nop			;65da
	nop			;65db
	nop			;65dc
	nop			;65dd
	nop			;65de
	add hl,de		;65df
	rrca			;65e0
	rrca			;65e1
	inc l			;65e2
	add hl,bc		;65e3
	inc bc			;65e4
	dec c			;65e5
	nop			;65e6
	nop			;65e7
	nop			;65e8
	nop			;65e9
	ld bc,l6c17h		;65ea
	add hl,bc		;65ed
	ld l,h			;65ee
	rlca			;65ef
	ld l,h			;65f0
	add hl,bc		;65f1
	nop			;65f2
	nop			;65f3
	nop			;65f4
	nop			;65f5
	nop			;65f6
	add hl,de		;65f7
	ld c,00fh		;65f8
	dec h			;65fa
	ld a,(bc)		;65fb
	ld (bc),a		;65fc
	dec c			;65fd
	ld sp,03609h		;65fe
	add hl,bc		;6601
	ld (bc),a		;6602
	rla			;6603
	ld l,h			;6604
	add hl,bc		;6605
	ld l,h			;6606
	rlca			;6607
	ld l,h			;6608
	add hl,bc		;6609
	nop			;660a
	nop			;660b
	nop			;660c
	nop			;660d
	nop			;660e
	add hl,de		;660f
	ld a,(de)		;6610
	rrca			;6611
	inc hl			;6612
	ld a,(bc)		;6613
	ld c,00dh		;6614
	ld (03709h),a		;6616
	add hl,bc		;6619
	ld bc,l6c17h		;661a
	add hl,bc		;661d
	ld l,h			;661e
	rlca			;661f
	ld l,h			;6620
	add hl,bc		;6621
	nop			;6622
	nop			;6623
	nop			;6624
	nop			;6625
	nop			;6626
	add hl,de		;6627
	ld c,00fh		;6628
	inc h			;662a
	ld a,(bc)		;662b
	ld (bc),a		;662c
	dec c			;662d
	inc sp			;662e
	add hl,bc		;662f
	jr c,l663bh		;6630
	inc bc			;6632
	rla			;6633
	ld l,h			;6634
	add hl,bc		;6635
	ld l,h			;6636
	rlca			;6637
	ld l,h			;6638
	add hl,bc		;6639
	nop			;663a
l663bh:
	nop			;663b
	nop			;663c
	nop			;663d
	nop			;663e
	add hl,de		;663f
	dec c			;6640
	rrca			;6641
	dec h			;6642
	ld a,(bc)		;6643
	ld bc,0330dh		;6644
	add hl,bc		;6647
	dec sp			;6648
	add hl,bc		;6649
	ld bc,l6c17h		;664a
	add hl,bc		;664d
	ld l,h			;664e
	rlca			;664f
	ld l,h			;6650
	add hl,bc		;6651
	nop			;6652
	nop			;6653
	nop			;6654
	nop			;6655
	nop			;6656
	add hl,de		;6657
	add hl,de		;6658
	rrca			;6659
	inc h			;665a
	ld a,(bc)		;665b
	dec c			;665c
	dec c			;665d
	ld (hl),009h		;665e
	dec a			;6660
	add hl,bc		;6661
	nop			;6662
	rla			;6663
	ld l,h			;6664
	add hl,bc		;6665
	ld l,h			;6666
	rlca			;6667
	ld l,h			;6668
	add hl,bc		;6669
	nop			;666a
	nop			;666b
	nop			;666c
	nop			;666d
	nop			;666e
	add hl,de		;666f
	dec c			;6670
	rrca			;6671
	inc hl			;6672
	ld a,(bc)		;6673
	ld bc,0340dh		;6674
	add hl,bc		;6677
	add hl,sp		;6678
	add hl,bc		;6679
	ld bc,l6c17h		;667a
	add hl,bc		;667d
	ld l,h			;667e
	rlca			;667f
	ld l,h			;6680
	add hl,bc		;6681
	nop			;6682
	nop			;6683
	nop			;6684
	nop			;6685
	nop			;6686
	add hl,de		;6687
	djnz l6699h		;6688
	dec h			;668a
	ld a,(bc)		;668b
	inc b			;668c
	dec c			;668d
	ld (hl),009h		;668e
	dec a			;6690
	add hl,bc		;6691
	ld (bc),a		;6692
	rla			;6693
	ld l,h			;6694
	add hl,bc		;6695
	ld l,h			;6696
	rlca			;6697
	ld l,h			;6698
l6699h:
	add hl,bc		;6699
	nop			;669a
	nop			;669b
	nop			;669c
	nop			;669d
	nop			;669e
	add hl,de		;669f
	inc e			;66a0
	rrca			;66a1
	inc hl			;66a2
	ld a,(bc)		;66a3
	djnz l66b3h		;66a4
	inc sp			;66a6
	add hl,bc		;66a7
	jr c,l66b3h		;66a8
	ld bc,l6c17h		;66aa
	add hl,bc		;66ad
	ld l,h			;66ae
	rlca			;66af
	ld l,h			;66b0
	add hl,bc		;66b1
	nop			;66b2
l66b3h:
	nop			;66b3
	nop			;66b4
	nop			;66b5
	nop			;66b6
	add hl,de		;66b7
	djnz l66c9h		;66b8
	inc h			;66ba
	ld a,(bc)		;66bb
	inc b			;66bc
	dec c			;66bd
	ld (hl),009h		;66be
	dec a			;66c0
	add hl,bc		;66c1
	inc bc			;66c2
	rla			;66c3
	ld l,h			;66c4
	add hl,bc		;66c5
	ld l,h			;66c6
	rlca			;66c7
	ld l,h			;66c8
l66c9h:
	add hl,bc		;66c9
	nop			;66ca
	nop			;66cb
	nop			;66cc
	nop			;66cd
	nop			;66ce
	add hl,de		;66cf
	rrca			;66d0
	rrca			;66d1
	dec h			;66d2
	ld a,(bc)		;66d3
	inc bc			;66d4
	dec c			;66d5
	ld sp,03609h		;66d6
	add hl,bc		;66d9
	ld bc,l6c17h		;66da
	add hl,bc		;66dd
	ld l,h			;66de
	rlca			;66df
	ld l,h			;66e0
	add hl,bc		;66e1
	nop			;66e2
	nop			;66e3
	nop			;66e4
	nop			;66e5
	nop			;66e6
	add hl,de		;66e7
	dec de			;66e8
	rrca			;66e9
	inc h			;66ea
	ld a,(bc)		;66eb
	rrca			;66ec
	dec c			;66ed
	ld (hl),009h		;66ee
	dec a			;66f0
	add hl,bc		;66f1
	inc bc			;66f2
	rla			;66f3
	ld l,h			;66f4
	add hl,bc		;66f5
	ld l,h			;66f6
	rlca			;66f7
	ld l,h			;66f8
	add hl,bc		;66f9
	nop			;66fa
	nop			;66fb
	nop			;66fc
	nop			;66fd
	nop			;66fe
	add hl,de		;66ff
	rrca			;6700
	rrca			;6701
	inc hl			;6702
	ld a,(bc)		;6703
	inc bc			;6704
	dec c			;6705
	add hl,sp		;6706
	add hl,bc		;6707
	inc (hl)		;6708
	add hl,bc		;6709
	ld bc,l6c17h		;670a
	add hl,bc		;670d
	ld l,h			;670e
	rlca			;670f
	ld l,h			;6710
	add hl,bc		;6711
	nop			;6712
	nop			;6713
	nop			;6714
	nop			;6715
	nop			;6716
	add hl,de		;6717
	ld c,00fh		;6718
	dec h			;671a
	ld a,(bc)		;671b
	ld (bc),a		;671c
	dec c			;671d
	ld (hl),009h		;671e
	dec a			;6720
	add hl,bc		;6721
	ld (bc),a		;6722
	rla			;6723
	ld l,h			;6724
	add hl,bc		;6725
	ld l,h			;6726
	rlca			;6727
	ld l,h			;6728
	add hl,bc		;6729
	nop			;672a
	nop			;672b
	nop			;672c
	nop			;672d
	nop			;672e
	add hl,de		;672f
	ld a,(de)		;6730
	rrca			;6731
	inc hl			;6732
	ld a,(bc)		;6733
	ld c,00dh		;6734
	ld (hl),009h		;6736
	ld sp,00109h		;6738
	rla			;673b
	ld l,h			;673c
	add hl,bc		;673d
	ld l,h			;673e
	rlca			;673f
	ld l,h			;6740
	add hl,bc		;6741
	nop			;6742
	nop			;6743
	nop			;6744
	nop			;6745
	nop			;6746
	add hl,de		;6747
	ld c,00fh		;6748
	inc h			;674a
	ld a,(bc)		;674b
	ld (bc),a		;674c
	dec c			;674d
	ld sp,03609h		;674e
	add hl,bc		;6751
	nop			;6752
	rla			;6753
	ld l,h			;6754
	add hl,bc		;6755
	ld l,h			;6756
	rlca			;6757
	ld l,h			;6758
	add hl,bc		;6759
	nop			;675a
	nop			;675b
	nop			;675c
	nop			;675d
	nop			;675e
	add hl,de		;675f
	dec c			;6760
	rrca			;6761
	dec h			;6762
	ld a,(bc)		;6763
	ld bc,0330dh		;6764
	add hl,bc		;6767
	jr c,l6773h		;6768
	ld bc,l6c17h		;676a
	add hl,bc		;676d
	ld l,h			;676e
	rlca			;676f
	ld l,h			;6770
	add hl,bc		;6771
	nop			;6772
l6773h:
	nop			;6773
	nop			;6774
	nop			;6775
	nop			;6776
	add hl,de		;6777
	add hl,de		;6778
	rrca			;6779
	inc h			;677a
	ld a,(bc)		;677b
	dec c			;677c
	dec c			;677d
	nop			;677e
	nop			;677f
	nop			;6780
	nop			;6781
	inc bc			;6782
	rla			;6783
	ld l,h			;6784
	add hl,bc		;6785
	ld l,h			;6786
	rlca			;6787
	ld l,h			;6788
	add hl,bc		;6789
	nop			;678a
	nop			;678b
	nop			;678c
	nop			;678d
	nop			;678e
	add hl,de		;678f
	dec c			;6790
	rrca			;6791
	inc hl			;6792
	ld a,(bc)		;6793
	ld bc,0000dh		;6794
	nop			;6797
	nop			;6798
	nop			;6799
	ld bc,l6c17h		;679a
	add hl,bc		;679d
	ld l,h			;679e
	rlca			;679f
	ld l,h			;67a0
	add hl,bc		;67a1
	ld h,a			;67a2
	ld bc,00167h		;67a3
	nop			;67a6
	add hl,de		;67a7
	djnz l67b9h		;67a8
	dec h			;67aa
	ld a,(bc)		;67ab
	inc b			;67ac
	dec c			;67ad
	nop			;67ae
	nop			;67af
	nop			;67b0
	nop			;67b1
	ld (bc),a		;67b2
	rla			;67b3
	ld l,h			;67b4
	add hl,bc		;67b5
	ld l,h			;67b6
	rlca			;67b7
	ld l,h			;67b8
l67b9h:
	add hl,bc		;67b9
	nop			;67ba
	nop			;67bb
	nop			;67bc
	nop			;67bd
	nop			;67be
	add hl,de		;67bf
	inc e			;67c0
	rrca			;67c1
	inc hl			;67c2
	ld a,(bc)		;67c3
	djnz l67d3h		;67c4
	nop			;67c6
	nop			;67c7
	nop			;67c8
	nop			;67c9
	ld bc,l6c17h		;67ca
	add hl,bc		;67cd
	ld l,h			;67ce
	rlca			;67cf
	ld l,h			;67d0
	add hl,bc		;67d1
	nop			;67d2
l67d3h:
	nop			;67d3
	nop			;67d4
	nop			;67d5
	nop			;67d6
	add hl,de		;67d7
	djnz l67e9h		;67d8
	inc h			;67da
	ld a,(bc)		;67db
	inc b			;67dc
	dec c			;67dd
	nop			;67de
	nop			;67df
	nop			;67e0
	nop			;67e1
	inc bc			;67e2
	rla			;67e3
	ld l,h			;67e4
	add hl,bc		;67e5
	ld l,h			;67e6
	rlca			;67e7
	ld l,h			;67e8
l67e9h:
	add hl,bc		;67e9
	nop			;67ea
	nop			;67eb
	nop			;67ec
	nop			;67ed
	nop			;67ee
	add hl,de		;67ef
	rrca			;67f0
	rrca			;67f1
	dec h			;67f2
	ld a,(bc)		;67f3
	inc bc			;67f4
	dec c			;67f5
	inc (hl)		;67f6
	add hl,bc		;67f7
	dec a			;67f8
	add hl,bc		;67f9
	ld bc,l6c17h		;67fa
	add hl,bc		;67fd
	ld l,h			;67fe
	rlca			;67ff
	ld l,h			;6800
	add hl,bc		;6801
	nop			;6802
	nop			;6803
	nop			;6804
	nop			;6805
	nop			;6806
	add hl,de		;6807
	dec de			;6808
	rrca			;6809
	inc h			;680a
	ld a,(bc)		;680b
	rrca			;680c
	dec c			;680d
	nop			;680e
	nop			;680f
	nop			;6810
	nop			;6811
	nop			;6812
	rla			;6813
	ld l,h			;6814
	add hl,bc		;6815
	ld l,h			;6816
	rlca			;6817
	ld l,h			;6818
	add hl,bc		;6819
	ld h,a			;681a
	ld bc,00167h		;681b
	nop			;681e
	add hl,de		;681f
	rrca			;6820
	rrca			;6821
	inc hl			;6822
	ld a,(bc)		;6823
	inc bc			;6824
	dec c			;6825
	nop			;6826
	nop			;6827
	nop			;6828
	nop			;6829
	ld bc,l6c17h		;682a
	add hl,bc		;682d
	ld l,h			;682e
	rlca			;682f
	ld l,h			;6830
	add hl,bc		;6831
	nop			;6832
	nop			;6833
	nop			;6834
	nop			;6835
	nop			;6836
	add hl,de		;6837
	ld c,00fh		;6838
	dec h			;683a
	ld a,(bc)		;683b
	ld (bc),a		;683c
	dec c			;683d
	nop			;683e
	nop			;683f
	nop			;6840
	nop			;6841
	ld (bc),a		;6842
	rla			;6843
	ld l,h			;6844
	add hl,bc		;6845
	ld l,h			;6846
	rlca			;6847
	ld l,h			;6848
	add hl,bc		;6849
	nop			;684a
	nop			;684b
	nop			;684c
	nop			;684d
	nop			;684e
	add hl,de		;684f
	ld a,(de)		;6850
	rrca			;6851
	inc hl			;6852
	ld a,(bc)		;6853
	ld c,00dh		;6854
	nop			;6856
	nop			;6857
	nop			;6858
	nop			;6859
	ld bc,l6c17h		;685a
	add hl,bc		;685d
	ld l,h			;685e
	rlca			;685f
	ld l,h			;6860
	add hl,bc		;6861
	ld h,a			;6862
	ld (bc),a		;6863
	ld h,a			;6864
	ld (bc),a		;6865
	nop			;6866
	add hl,de		;6867
	ld c,00fh		;6868
	inc h			;686a
	ld a,(bc)		;686b
	ld (bc),a		;686c
	dec c			;686d
	nop			;686e
	nop			;686f
	nop			;6870
	nop			;6871
	inc bc			;6872
	rla			;6873
	ld l,h			;6874
	add hl,bc		;6875
	ld l,h			;6876
	rlca			;6877
	ld l,h			;6878
	add hl,bc		;6879
	nop			;687a
	nop			;687b
	nop			;687c
	nop			;687d
	nop			;687e
	add hl,de		;687f
	inc e			;6880
	rrca			;6881
	inc hl			;6882
	ld a,(bc)		;6883
	djnz l6893h		;6884
	nop			;6886
	nop			;6887
	nop			;6888
	nop			;6889
	ld bc,l6c17h		;688a
	add hl,bc		;688d
	ld l,h			;688e
	rlca			;688f
	ld l,h			;6890
	add hl,bc		;6891
	nop			;6892
l6893h:
	nop			;6893
	nop			;6894
	nop			;6895
	nop			;6896
	add hl,de		;6897
	djnz l68a9h		;6898
	inc h			;689a
	ld a,(bc)		;689b
	inc b			;689c
	dec c			;689d
	nop			;689e
	nop			;689f
	nop			;68a0
	nop			;68a1
	nop			;68a2
	rla			;68a3
	ld l,h			;68a4
	add hl,bc		;68a5
	ld l,h			;68a6
	rlca			;68a7
	ld l,h			;68a8
l68a9h:
	add hl,bc		;68a9
	nop			;68aa
	nop			;68ab
	nop			;68ac
	nop			;68ad
	nop			;68ae
	add hl,de		;68af
	rrca			;68b0
	rrca			;68b1
	dec h			;68b2
	ld a,(bc)		;68b3
	inc bc			;68b4
	dec c			;68b5
	inc (hl)		;68b6
	add hl,bc		;68b7
	dec sp			;68b8
	add hl,bc		;68b9
	ld (bc),a		;68ba
	rla			;68bb
	ld l,h			;68bc
	add hl,bc		;68bd
	ld l,h			;68be
	rlca			;68bf
	ld l,h			;68c0
	add hl,bc		;68c1
	nop			;68c2
	nop			;68c3
	nop			;68c4
	nop			;68c5
	nop			;68c6
	add hl,de		;68c7
	dec de			;68c8
	rrca			;68c9
	inc h			;68ca
	ld a,(bc)		;68cb
	rrca			;68cc
	dec c			;68cd
	nop			;68ce
	nop			;68cf
	nop			;68d0
	nop			;68d1
	ld (bc),a		;68d2
	rla			;68d3
	ld l,h			;68d4
	add hl,bc		;68d5
	ld l,h			;68d6
	rlca			;68d7
	ld l,h			;68d8
	add hl,bc		;68d9
	nop			;68da
	nop			;68db
	nop			;68dc
	nop			;68dd
	nop			;68de
	add hl,de		;68df
	rrca			;68e0
	rrca			;68e1
	inc hl			;68e2
	ld a,(bc)		;68e3
	inc bc			;68e4
	dec c			;68e5
	nop			;68e6
	nop			;68e7
	nop			;68e8
	nop			;68e9
	ld (bc),a		;68ea
	rla			;68eb
	ld l,h			;68ec
	add hl,bc		;68ed
	ld l,h			;68ee
	rlca			;68ef
	ld l,h			;68f0
	add hl,bc		;68f1
	nop			;68f2
	nop			;68f3
	nop			;68f4
	nop			;68f5
	nop			;68f6
	add hl,de		;68f7
	ld c,00fh		;68f8
	dec h			;68fa
	ld a,(bc)		;68fb
	ld (bc),a		;68fc
	dec c			;68fd
	nop			;68fe
	nop			;68ff
	nop			;6900
	nop			;6901
	ld (bc),a		;6902
	rla			;6903
	ld l,h			;6904
	add hl,bc		;6905
	ld l,h			;6906
	rlca			;6907
	ld l,h			;6908
	add hl,bc		;6909
	nop			;690a
	nop			;690b
	nop			;690c
	nop			;690d
	nop			;690e
	add hl,de		;690f
	ld a,(de)		;6910
	rrca			;6911
	inc hl			;6912
	ld a,(bc)		;6913
	ld c,00dh		;6914
	ld l,h			;6916
	ld bc,00000h		;6917
	ld (bc),a		;691a
	rla			;691b
	ld l,h			;691c
	add hl,bc		;691d
	ld l,h			;691e
	rlca			;691f
	ld l,h			;6920
	add hl,bc		;6921
	nop			;6922
	nop			;6923
	nop			;6924
	nop			;6925
	nop			;6926
	add hl,de		;6927
	ld c,00fh		;6928
	inc h			;692a
	ld a,(bc)		;692b
	ld (bc),a		;692c
	dec c			;692d
	nop			;692e
	nop			;692f
	nop			;6930
	nop			;6931
	ld (bc),a		;6932
	rla			;6933
	ld l,h			;6934
	add hl,bc		;6935
	ld l,h			;6936
	rlca			;6937
	ld l,h			;6938
	add hl,bc		;6939
	ld l,h			;693a
	ld bc,0016ch		;693b
	nop			;693e
	add hl,de		;693f
	inc bc			;6940
	rrca			;6941
	jr nz,l694eh		;6942
	inc bc			;6944
	inc c			;6945
	ld hl,(0330ah)		;6946
	ld a,(bc)		;6949
	inc bc			;694a
	rla			;694b
	ld l,h			;694c
	dec bc			;694d
l694eh:
	ld l,h			;694e
	add hl,bc		;694f
	ld l,h			;6950
	dec bc			;6951
	nop			;6952
	nop			;6953
	nop			;6954
	nop			;6955
	nop			;6956
	add hl,de		;6957
	rrca			;6958
	rrca			;6959
	jr nz,l6966h		;695a
	rrca			;695c
	inc c			;695d
	nop			;695e
	nop			;695f
	nop			;6960
	nop			;6961
	ld bc,l6c17h		;6962
	dec bc			;6965
l6966h:
	ld l,h			;6966
	add hl,bc		;6967
	ld l,h			;6968
	dec bc			;6969
	nop			;696a
	nop			;696b
	nop			;696c
	nop			;696d
	nop			;696e
	add hl,de		;696f
	inc bc			;6970
	rrca			;6971
	jr nz,l697eh		;6972
	inc bc			;6974
	inc c			;6975
	nop			;6976
	nop			;6977
	nop			;6978
	nop			;6979
	inc bc			;697a
	rla			;697b
	ld l,h			;697c
	dec bc			;697d
l697eh:
	ld l,h			;697e
	add hl,bc		;697f
	ld l,h			;6980
	dec bc			;6981
	nop			;6982
	nop			;6983
	nop			;6984
	nop			;6985
	nop			;6986
	add hl,de		;6987
	rrca			;6988
	rrca			;6989
	jr nz,l6996h		;698a
	rrca			;698c
	inc c			;698d
	ld h,a			;698e
	ld bc,00167h		;698f
	ld bc,l6c17h		;6992
	dec bc			;6995
l6996h:
	ld l,h			;6996
	add hl,bc		;6997
	ld l,h			;6998
	dec bc			;6999
	nop			;699a
	nop			;699b
	nop			;699c
	nop			;699d
	nop			;699e
	add hl,de		;699f
	inc bc			;69a0
	rrca			;69a1
	jr nz,l69aeh		;69a2
	inc bc			;69a4
	inc c			;69a5
	nop			;69a6
	nop			;69a7
	nop			;69a8
	nop			;69a9
	nop			;69aa
	rla			;69ab
	ld l,h			;69ac
	dec bc			;69ad
l69aeh:
	ld l,h			;69ae
	add hl,bc		;69af
	ld l,h			;69b0
	dec bc			;69b1
	nop			;69b2
	nop			;69b3
	nop			;69b4
	nop			;69b5
	nop			;69b6
	add hl,de		;69b7
	rrca			;69b8
	rrca			;69b9
	jr nz,l69c6h		;69ba
	rrca			;69bc
	inc c			;69bd
	nop			;69be
	nop			;69bf
	nop			;69c0
	nop			;69c1
	ld bc,l6c17h		;69c2
	dec bc			;69c5
l69c6h:
	ld l,h			;69c6
	add hl,bc		;69c7
	ld l,h			;69c8
	dec bc			;69c9
	nop			;69ca
	nop			;69cb
	nop			;69cc
	nop			;69cd
	nop			;69ce
	add hl,de		;69cf
	inc bc			;69d0
	rrca			;69d1
	jr nz,l69deh		;69d2
	inc bc			;69d4
	inc c			;69d5
	nop			;69d6
	nop			;69d7
	nop			;69d8
	nop			;69d9
	ld (bc),a		;69da
	rla			;69db
	ld l,h			;69dc
	dec bc			;69dd
l69deh:
	ld l,h			;69de
	add hl,bc		;69df
	ld l,h			;69e0
	dec bc			;69e1
	nop			;69e2
	nop			;69e3
	nop			;69e4
	nop			;69e5
	nop			;69e6
	add hl,de		;69e7
	rrca			;69e8
	rrca			;69e9
	jr nz,l69f6h		;69ea
	rrca			;69ec
	inc c			;69ed
	nop			;69ee
	nop			;69ef
	nop			;69f0
	nop			;69f1
	ld bc,l6c17h		;69f2
	dec bc			;69f5
l69f6h:
	ld l,h			;69f6
	add hl,bc		;69f7
	ld l,h			;69f8
	dec bc			;69f9
	nop			;69fa
	nop			;69fb
	nop			;69fc
	nop			;69fd
	nop			;69fe
	add hl,de		;69ff
	inc bc			;6a00
	rrca			;6a01
	jr nz,l6a0eh		;6a02
	inc bc			;6a04
	inc c			;6a05
	nop			;6a06
	nop			;6a07
	nop			;6a08
	nop			;6a09
	inc bc			;6a0a
	rla			;6a0b
	ld l,h			;6a0c
	dec bc			;6a0d
l6a0eh:
	ld l,h			;6a0e
	add hl,bc		;6a0f
	ld l,h			;6a10
	dec bc			;6a11
	ld l,h			;6a12
	ld bc,0016ch		;6a13
	nop			;6a16
	add hl,de		;6a17
	rrca			;6a18
	rrca			;6a19
	jr nz,l6a26h		;6a1a
	rrca			;6a1c
	inc c			;6a1d
	nop			;6a1e
	nop			;6a1f
	nop			;6a20
	nop			;6a21
	ld bc,l6c17h		;6a22
	dec bc			;6a25
l6a26h:
	ld l,h			;6a26
	add hl,bc		;6a27
	ld l,h			;6a28
	dec bc			;6a29
	nop			;6a2a
	nop			;6a2b
	nop			;6a2c
	nop			;6a2d
	nop			;6a2e
	add hl,de		;6a2f
	inc bc			;6a30
	rrca			;6a31
	jr nz,l6a3eh		;6a32
	inc bc			;6a34
	inc c			;6a35
	ld h,a			;6a36
	ld (bc),a		;6a37
	ld h,a			;6a38
	ld (bc),a		;6a39
	inc bc			;6a3a
	rla			;6a3b
	ld l,h			;6a3c
	dec bc			;6a3d
l6a3eh:
	ld l,h			;6a3e
	add hl,bc		;6a3f
	ld l,h			;6a40
	dec bc			;6a41
	nop			;6a42
	nop			;6a43
	nop			;6a44
	nop			;6a45
	nop			;6a46
	add hl,de		;6a47
	rrca			;6a48
	rrca			;6a49
	jr nz,l6a56h		;6a4a
	rrca			;6a4c
	inc c			;6a4d
	nop			;6a4e
	nop			;6a4f
	nop			;6a50
	nop			;6a51
	ld bc,l6c17h		;6a52
	dec bc			;6a55
l6a56h:
	ld l,h			;6a56
	add hl,bc		;6a57
	ld l,h			;6a58
	dec bc			;6a59
	nop			;6a5a
	nop			;6a5b
	nop			;6a5c
	nop			;6a5d
	nop			;6a5e
	add hl,de		;6a5f
	inc bc			;6a60
	rrca			;6a61
	inc hl			;6a62
	ld a,(bc)		;6a63
	inc bc			;6a64
	inc c			;6a65
	cpl			;6a66
	add hl,bc		;6a67
	ld (hl),009h		;6a68
	nop			;6a6a
	rla			;6a6b
	ld l,h			;6a6c
	dec bc			;6a6d
	ld l,h			;6a6e
	add hl,bc		;6a6f
	ld l,h			;6a70
	dec bc			;6a71
	nop			;6a72
	nop			;6a73
	nop			;6a74
	nop			;6a75
	nop			;6a76
	add hl,de		;6a77
	rrca			;6a78
	rrca			;6a79
	inc hl			;6a7a
	ld a,(bc)		;6a7b
	rrca			;6a7c
	inc c			;6a7d
	nop			;6a7e
	nop			;6a7f
	nop			;6a80
	nop			;6a81
	ld bc,l6c17h		;6a82
	dec bc			;6a85
	ld l,h			;6a86
	add hl,bc		;6a87
	ld l,h			;6a88
	dec bc			;6a89
	nop			;6a8a
	nop			;6a8b
	nop			;6a8c
	nop			;6a8d
	nop			;6a8e
	add hl,de		;6a8f
	inc bc			;6a90
	rrca			;6a91
	inc hl			;6a92
	ld a,(bc)		;6a93
	inc bc			;6a94
	inc c			;6a95
	nop			;6a96
	nop			;6a97
	nop			;6a98
	nop			;6a99
	inc bc			;6a9a
	rla			;6a9b
	ld l,h			;6a9c
	dec bc			;6a9d
	ld l,h			;6a9e
	add hl,bc		;6a9f
	ld l,h			;6aa0
	dec bc			;6aa1
	nop			;6aa2
	nop			;6aa3
	nop			;6aa4
	nop			;6aa5
	nop			;6aa6
	add hl,de		;6aa7
	rrca			;6aa8
	rrca			;6aa9
	inc hl			;6aaa
	ld a,(bc)		;6aab
	rrca			;6aac
	inc c			;6aad
	ld h,a			;6aae
	ld bc,00167h		;6aaf
	ld bc,l6c17h		;6ab2
	dec bc			;6ab5
	ld l,h			;6ab6
	add hl,bc		;6ab7
	ld l,h			;6ab8
	dec bc			;6ab9
	nop			;6aba
	nop			;6abb
	nop			;6abc
	nop			;6abd
	nop			;6abe
	add hl,de		;6abf
	inc bc			;6ac0
	rrca			;6ac1
	inc hl			;6ac2
	ld a,(bc)		;6ac3
	inc bc			;6ac4
	inc c			;6ac5
	nop			;6ac6
	nop			;6ac7
	nop			;6ac8
	nop			;6ac9
	inc bc			;6aca
	rla			;6acb
	ld l,h			;6acc
	dec bc			;6acd
	ld l,h			;6ace
	add hl,bc		;6acf
	ld l,h			;6ad0
	dec bc			;6ad1
	nop			;6ad2
	nop			;6ad3
	nop			;6ad4
	nop			;6ad5
	nop			;6ad6
	add hl,de		;6ad7
	rrca			;6ad8
	rrca			;6ad9
	inc hl			;6ada
	ld a,(bc)		;6adb
	rrca			;6adc
	inc c			;6add
	nop			;6ade
	nop			;6adf
	nop			;6ae0
	nop			;6ae1
	ld bc,l6c17h		;6ae2
	dec bc			;6ae5
	ld l,h			;6ae6
	add hl,bc		;6ae7
	ld l,h			;6ae8
	dec bc			;6ae9
	nop			;6aea
	nop			;6aeb
	nop			;6aec
	nop			;6aed
	nop			;6aee
	add hl,de		;6aef
	rla			;6af0
	rrca			;6af1
	dec h			;6af2
	ld a,(bc)		;6af3
	rla			;6af4
	inc c			;6af5
	nop			;6af6
	nop			;6af7
	nop			;6af8
	nop			;6af9
	ld (bc),a		;6afa
	rla			;6afb
	ld l,h			;6afc
	dec bc			;6afd
	ld l,h			;6afe
	add hl,bc		;6aff
	ld l,h			;6b00
	dec bc			;6b01
	nop			;6b02
	nop			;6b03
	nop			;6b04
	nop			;6b05
	nop			;6b06
	add hl,de		;6b07
	dec bc			;6b08
	rrca			;6b09
l6b0ah:
	ld hl,(00b0ah)		;6b0a
	inc c			;6b0d
	nop			;6b0e
	nop			;6b0f
	nop			;6b10
	nop			;6b11
	ld (bc),a		;6b12
	rla			;6b13
	ld l,h			;6b14
	dec bc			;6b15
	ld l,h			;6b16
	add hl,bc		;6b17
	ld l,h			;6b18
	dec bc			;6b19
	nop			;6b1a
	nop			;6b1b
	nop			;6b1c
	nop			;6b1d
	nop			;6b1e
	add hl,de		;6b1f
	rla			;6b20
	rrca			;6b21
	inc l			;6b22
	ld a,(bc)		;6b23
	rla			;6b24
	inc c			;6b25
	nop			;6b26
	nop			;6b27
	nop			;6b28
	nop			;6b29
	ld (bc),a		;6b2a
	rla			;6b2b
	ld l,h			;6b2c
	dec bc			;6b2d
	ld l,h			;6b2e
	add hl,bc		;6b2f
	ld l,h			;6b30
	dec bc			;6b31
	nop			;6b32
	nop			;6b33
	nop			;6b34
	nop			;6b35
	nop			;6b36
	add hl,de		;6b37
	dec d			;6b38
	rrca			;6b39
	ld sp,0150ah		;6b3a
	inc c			;6b3d
	nop			;6b3e
	nop			;6b3f
	nop			;6b40
	nop			;6b41
	ld (bc),a		;6b42
	rla			;6b43
	ld l,h			;6b44
	dec bc			;6b45
	ld l,h			;6b46
	add hl,bc		;6b47
	ld l,h			;6b48
	dec bc			;6b49
	nop			;6b4a
	nop			;6b4b
	nop			;6b4c
	nop			;6b4d
	nop			;6b4e
	add hl,de		;6b4f
	add hl,bc		;6b50
	rrca			;6b51
	ld (hl),00ah		;6b52
	add hl,bc		;6b54
	inc c			;6b55
	ld h,a			;6b56
	ld (bc),a		;6b57
	ld h,a			;6b58
	ld (bc),a		;6b59
	ld (bc),a		;6b5a
	rla			;6b5b
	ld l,h			;6b5c
	dec bc			;6b5d
	ld l,h			;6b5e
	add hl,bc		;6b5f
	ld l,h			;6b60
	dec bc			;6b61
	nop			;6b62
	nop			;6b63
	nop			;6b64
	nop			;6b65
	nop			;6b66
	add hl,de		;6b67
	dec d			;6b68
	rrca			;6b69
	jr c,l6b76h		;6b6a
	dec d			;6b6c
	inc c			;6b6d
	nop			;6b6e
	nop			;6b6f
	nop			;6b70
	nop			;6b71
	ld bc,l6c17h		;6b72
	dec bc			;6b75
l6b76h:
	ld l,h			;6b76
	add hl,bc		;6b77
	ld l,h			;6b78
	dec bc			;6b79
	nop			;6b7a
	nop			;6b7b
	nop			;6b7c
	nop			;6b7d
	nop			;6b7e
	add hl,de		;6b7f
	ex af,af'		;6b80
	rrca			;6b81
	dec h			;6b82
	ld a,(bc)		;6b83
	ex af,af'		;6b84
	inc c			;6b85
	ld sp,03809h		;6b86
	add hl,bc		;6b89
	inc bc			;6b8a
	rla			;6b8b
	ld l,h			;6b8c
	dec bc			;6b8d
	ld l,h			;6b8e
	add hl,bc		;6b8f
	ld l,h			;6b90
	dec bc			;6b91
	nop			;6b92
	nop			;6b93
	nop			;6b94
	nop			;6b95
	nop			;6b96
	add hl,de		;6b97
	inc d			;6b98
	rrca			;6b99
	ld sp,0140ah		;6b9a
	inc c			;6b9d
	nop			;6b9e
	nop			;6b9f
	nop			;6ba0
	nop			;6ba1
	ld bc,l6c17h		;6ba2
	dec bc			;6ba5
	ld l,h			;6ba6
	add hl,bc		;6ba7
	ld l,h			;6ba8
	dec bc			;6ba9
	nop			;6baa
	nop			;6bab
	nop			;6bac
	nop			;6bad
	nop			;6bae
	add hl,de		;6baf
	ex af,af'		;6bb0
	rrca			;6bb1
	dec h			;6bb2
	ld a,(bc)		;6bb3
	ex af,af'		;6bb4
	inc c			;6bb5
	nop			;6bb6
	nop			;6bb7
	nop			;6bb8
	nop			;6bb9
	inc bc			;6bba
	rla			;6bbb
	ld l,h			;6bbc
	dec bc			;6bbd
	ld l,h			;6bbe
	add hl,bc		;6bbf
	ld l,h			;6bc0
	dec bc			;6bc1
	nop			;6bc2
	nop			;6bc3
	nop			;6bc4
	nop			;6bc5
	nop			;6bc6
	add hl,de		;6bc7
	inc d			;6bc8
	rrca			;6bc9
	ld sp,0140ah		;6bca
	inc c			;6bcd
	ld h,a			;6bce
	ld bc,00167h		;6bcf
	ld bc,l6c17h		;6bd2
	dec bc			;6bd5
	ld l,h			;6bd6
	add hl,bc		;6bd7
	ld l,h			;6bd8
	dec bc			;6bd9
	nop			;6bda
	nop			;6bdb
	nop			;6bdc
	nop			;6bdd
	nop			;6bde
	add hl,de		;6bdf
	ex af,af'		;6be0
	rrca			;6be1
	dec h			;6be2
	ld a,(bc)		;6be3
	ex af,af'		;6be4
	inc c			;6be5
	nop			;6be6
	nop			;6be7
	nop			;6be8
	nop			;6be9
	nop			;6bea
	rla			;6beb
	ld l,h			;6bec
	dec bc			;6bed
	ld l,h			;6bee
	add hl,bc		;6bef
	ld l,h			;6bf0
	dec bc			;6bf1
	nop			;6bf2
	nop			;6bf3
	nop			;6bf4
	nop			;6bf5
	nop			;6bf6
	add hl,de		;6bf7
	inc d			;6bf8
	rrca			;6bf9
	ld sp,0140ah		;6bfa
	inc c			;6bfd
	nop			;6bfe
	nop			;6bff
	nop			;6c00
	nop			;6c01
	ld bc,l6c17h		;6c02
	dec bc			;6c05
l6c06h:
	ld l,h			;6c06
	add hl,bc		;6c07
	ld l,h			;6c08
	dec bc			;6c09
	nop			;6c0a
	nop			;6c0b
	nop			;6c0c
	nop			;6c0d
	nop			;6c0e
	add hl,de		;6c0f
	ex af,af'		;6c10
	rrca			;6c11
	dec h			;6c12
	ld a,(bc)		;6c13
	ex af,af'		;6c14
	inc c			;6c15
	nop			;6c16
l6c17h:
	nop			;6c17
	nop			;6c18
	nop			;6c19
	ld (bc),a		;6c1a
	rla			;6c1b
	ld l,h			;6c1c
	dec bc			;6c1d
	ld l,h			;6c1e
	add hl,bc		;6c1f
	ld l,h			;6c20
	dec bc			;6c21
	nop			;6c22
	nop			;6c23
	nop			;6c24
	nop			;6c25
	nop			;6c26
	add hl,de		;6c27
	inc d			;6c28
	rrca			;6c29
	ld sp,0140ah		;6c2a
	inc c			;6c2d
	nop			;6c2e
	nop			;6c2f
	nop			;6c30
	nop			;6c31
	ld bc,l6c17h		;6c32
	dec bc			;6c35
	ld l,h			;6c36
	add hl,bc		;6c37
	ld l,h			;6c38
	dec bc			;6c39
	nop			;6c3a
	nop			;6c3b
	nop			;6c3c
	nop			;6c3d
	nop			;6c3e
	add hl,de		;6c3f
	ex af,af'		;6c40
	rrca			;6c41
	dec h			;6c42
	ld a,(bc)		;6c43
	ex af,af'		;6c44
	inc c			;6c45
	nop			;6c46
	nop			;6c47
	nop			;6c48
	nop			;6c49
	inc bc			;6c4a
	rla			;6c4b
	ld l,h			;6c4c
	dec bc			;6c4d
	ld l,h			;6c4e
	add hl,bc		;6c4f
	ld l,h			;6c50
	dec bc			;6c51
	nop			;6c52
	nop			;6c53
	nop			;6c54
	nop			;6c55
	nop			;6c56
	add hl,de		;6c57
	inc d			;6c58
	rrca			;6c59
	ld sp,0140ah		;6c5a
	inc c			;6c5d
	nop			;6c5e
	nop			;6c5f
	nop			;6c60
	nop			;6c61
	ld bc,l6c17h		;6c62
	dec bc			;6c65
	ld l,h			;6c66
	add hl,bc		;6c67
	ld l,h			;6c68
	dec bc			;6c69
	nop			;6c6a
	nop			;6c6b
	nop			;6c6c
	nop			;6c6d
	nop			;6c6e
	add hl,de		;6c6f
	ex af,af'		;6c70
	rrca			;6c71
	dec h			;6c72
	ld a,(bc)		;6c73
	ex af,af'		;6c74
	inc c			;6c75
	ld h,a			;6c76
	ld (bc),a		;6c77
	ld h,a			;6c78
	ld (bc),a		;6c79
	inc bc			;6c7a
	rla			;6c7b
	ld l,h			;6c7c
	dec bc			;6c7d
	ld l,h			;6c7e
	add hl,bc		;6c7f
	ld l,h			;6c80
	dec bc			;6c81
	nop			;6c82
	nop			;6c83
	nop			;6c84
	nop			;6c85
	nop			;6c86
	add hl,de		;6c87
	inc d			;6c88
	rrca			;6c89
	ld sp,0140ah		;6c8a
	inc c			;6c8d
	nop			;6c8e
	nop			;6c8f
	nop			;6c90
	nop			;6c91
	ld bc,l6c17h		;6c92
	dec bc			;6c95
	ld l,h			;6c96
	add hl,bc		;6c97
	ld l,h			;6c98
	dec bc			;6c99
	ld l,h			;6c9a
	inc b			;6c9b
	ld l,h			;6c9c
	inc b			;6c9d
	nop			;6c9e
	add hl,de		;6c9f
	ex af,af'		;6ca0
	rrca			;6ca1
	dec h			;6ca2
	ld a,(bc)		;6ca3
	ex af,af'		;6ca4
	inc c			;6ca5
	ld (hl),009h		;6ca6
	dec a			;6ca8
	add hl,bc		;6ca9
	nop			;6caa
	rla			;6cab
	ld l,h			;6cac
	dec bc			;6cad
	ld l,h			;6cae
	add hl,bc		;6caf
	ld l,h			;6cb0
	dec bc			;6cb1
	nop			;6cb2
	nop			;6cb3
	nop			;6cb4
	nop			;6cb5
	nop			;6cb6
	add hl,de		;6cb7
	inc d			;6cb8
	rrca			;6cb9
	ld sp,0140ah		;6cba
	inc c			;6cbd
	nop			;6cbe
	nop			;6cbf
	nop			;6cc0
	nop			;6cc1
	ld bc,l6c17h		;6cc2
	dec bc			;6cc5
	ld l,h			;6cc6
	add hl,bc		;6cc7
	ld l,h			;6cc8
	dec bc			;6cc9
	nop			;6cca
	nop			;6ccb
	nop			;6ccc
	nop			;6ccd
	nop			;6cce
	add hl,de		;6ccf
	ex af,af'		;6cd0
	rrca			;6cd1
	dec h			;6cd2
	ld a,(bc)		;6cd3
	ex af,af'		;6cd4
	inc c			;6cd5
	nop			;6cd6
	nop			;6cd7
	nop			;6cd8
	nop			;6cd9
	inc bc			;6cda
	rla			;6cdb
	ld l,h			;6cdc
	dec bc			;6cdd
	ld l,h			;6cde
	add hl,bc		;6cdf
	ld l,h			;6ce0
	dec bc			;6ce1
	nop			;6ce2
	nop			;6ce3
	nop			;6ce4
	nop			;6ce5
	nop			;6ce6
	add hl,de		;6ce7
	inc d			;6ce8
	rrca			;6ce9
	ld sp,0140ah		;6cea
	inc c			;6ced
	nop			;6cee
	nop			;6cef
	nop			;6cf0
	nop			;6cf1
	ld bc,l6c17h		;6cf2
	dec bc			;6cf5
	ld l,h			;6cf6
	add hl,bc		;6cf7
	ld l,h			;6cf8
	dec bc			;6cf9
	nop			;6cfa
	nop			;6cfb
	nop			;6cfc
	nop			;6cfd
	nop			;6cfe
	add hl,de		;6cff
	ex af,af'		;6d00
	rrca			;6d01
	dec h			;6d02
	ld a,(bc)		;6d03
	ex af,af'		;6d04
	inc c			;6d05
	ld h,a			;6d06
	ld bc,00167h		;6d07
	inc bc			;6d0a
	rla			;6d0b
	ld l,h			;6d0c
	dec bc			;6d0d
	ld l,h			;6d0e
	add hl,bc		;6d0f
	ld l,h			;6d10
	dec bc			;6d11
	nop			;6d12
	nop			;6d13
	nop			;6d14
	nop			;6d15
	nop			;6d16
	add hl,de		;6d17
	inc d			;6d18
	rrca			;6d19
	ld sp,0140ah		;6d1a
	inc c			;6d1d
	nop			;6d1e
	nop			;6d1f
	nop			;6d20
	nop			;6d21
	ld bc,l6c17h		;6d22
	dec bc			;6d25
	ld l,h			;6d26
	add hl,bc		;6d27
	ld l,h			;6d28
	dec bc			;6d29
	nop			;6d2a
	nop			;6d2b
	nop			;6d2c
	nop			;6d2d
	nop			;6d2e
	add hl,de		;6d2f
	rla			;6d30
	rrca			;6d31
	dec h			;6d32
	ld a,(bc)		;6d33
	rla			;6d34
	inc c			;6d35
	jr c,l6d41h		;6d36
	ccf			;6d38
	add hl,bc		;6d39
	ld (bc),a		;6d3a
	rla			;6d3b
	ld l,h			;6d3c
	dec bc			;6d3d
	ld l,h			;6d3e
	add hl,bc		;6d3f
	ld l,h			;6d40
l6d41h:
	dec bc			;6d41
	nop			;6d42
	nop			;6d43
	nop			;6d44
	nop			;6d45
	nop			;6d46
	add hl,de		;6d47
	dec bc			;6d48
	rrca			;6d49
	ld sp,00b0ah		;6d4a
	inc c			;6d4d
	nop			;6d4e
	nop			;6d4f
	nop			;6d50
	nop			;6d51
	inc bc			;6d52
	rla			;6d53
	ld l,h			;6d54
	dec bc			;6d55
	ld l,h			;6d56
	add hl,bc		;6d57
	ld l,h			;6d58
	dec bc			;6d59
	nop			;6d5a
	nop			;6d5b
	nop			;6d5c
	nop			;6d5d
	nop			;6d5e
	add hl,de		;6d5f
	rla			;6d60
	rrca			;6d61
	dec h			;6d62
	ld a,(bc)		;6d63
	rla			;6d64
	inc c			;6d65
	nop			;6d66
	nop			;6d67
	nop			;6d68
	nop			;6d69
	ld (bc),a		;6d6a
	rla			;6d6b
	ld l,h			;6d6c
	dec bc			;6d6d
	ld l,h			;6d6e
	add hl,bc		;6d6f
	ld l,h			;6d70
	dec bc			;6d71
	nop			;6d72
	nop			;6d73
	nop			;6d74
	nop			;6d75
	nop			;6d76
	add hl,de		;6d77
	dec d			;6d78
	rrca			;6d79
	ld sp,0150ah		;6d7a
	inc c			;6d7d
	ld h,a			;6d7e
	ld (bc),a		;6d7f
	ld h,a			;6d80
	ld (bc),a		;6d81
	nop			;6d82
	rla			;6d83
	ld l,h			;6d84
	dec bc			;6d85
	ld l,h			;6d86
	add hl,bc		;6d87
	ld l,h			;6d88
	dec bc			;6d89
	nop			;6d8a
	nop			;6d8b
	nop			;6d8c
	nop			;6d8d
	nop			;6d8e
	add hl,de		;6d8f
	add hl,bc		;6d90
	rrca			;6d91
	dec h			;6d92
	ld a,(bc)		;6d93
	add hl,bc		;6d94
	inc c			;6d95
	nop			;6d96
	nop			;6d97
	nop			;6d98
	nop			;6d99
	ld (bc),a		;6d9a
	rla			;6d9b
	ld l,h			;6d9c
	dec bc			;6d9d
	ld l,h			;6d9e
	add hl,bc		;6d9f
	ld l,h			;6da0
	dec bc			;6da1
	nop			;6da2
	nop			;6da3
	nop			;6da4
	nop			;6da5
	nop			;6da6
	add hl,de		;6da7
	dec d			;6da8
	rrca			;6da9
	ld sp,0150ah		;6daa
	inc c			;6dad
	nop			;6dae
	nop			;6daf
	nop			;6db0
	nop			;6db1
	ld bc,l6c17h		;6db2
	dec bc			;6db5
	ld l,h			;6db6
	add hl,bc		;6db7
	ld l,h			;6db8
	dec bc			;6db9
	nop			;6dba
	nop			;6dbb
	nop			;6dbc
	nop			;6dbd
	nop			;6dbe
	add hl,de		;6dbf
	inc bc			;6dc0
	rrca			;6dc1
	jr nz,l6dceh		;6dc2
	inc bc			;6dc4
	inc c			;6dc5
	add hl,sp		;6dc6
	add hl,bc		;6dc7
	ld b,b			;6dc8
	add hl,bc		;6dc9
	inc bc			;6dca
	rla			;6dcb
	ld l,h			;6dcc
	dec bc			;6dcd
l6dceh:
	ld l,h			;6dce
	add hl,bc		;6dcf
	ld l,h			;6dd0
	dec bc			;6dd1
	nop			;6dd2
	nop			;6dd3
	nop			;6dd4
	nop			;6dd5
	nop			;6dd6
	add hl,de		;6dd7
	rrca			;6dd8
	rrca			;6dd9
	jr nz,l6de6h		;6dda
	rrca			;6ddc
	inc c			;6ddd
	nop			;6dde
	nop			;6ddf
	nop			;6de0
	nop			;6de1
	ld bc,l6c17h		;6de2
	dec bc			;6de5
l6de6h:
	ld l,h			;6de6
	add hl,bc		;6de7
	ld l,h			;6de8
	dec bc			;6de9
	nop			;6dea
	nop			;6deb
	nop			;6dec
	nop			;6ded
	nop			;6dee
	add hl,de		;6def
	inc bc			;6df0
	rrca			;6df1
	jr nz,l6dfeh		;6df2
	inc bc			;6df4
	inc c			;6df5
	nop			;6df6
	nop			;6df7
	nop			;6df8
	nop			;6df9
	inc bc			;6dfa
	rla			;6dfb
	ld l,h			;6dfc
	dec bc			;6dfd
l6dfeh:
	ld l,h			;6dfe
	add hl,bc		;6dff
	ld l,h			;6e00
	dec bc			;6e01
	nop			;6e02
	nop			;6e03
	nop			;6e04
	nop			;6e05
	nop			;6e06
	add hl,de		;6e07
	rrca			;6e08
	rrca			;6e09
	jr nz,l6e16h		;6e0a
	rrca			;6e0c
	inc c			;6e0d
	ld h,a			;6e0e
	ld bc,00167h		;6e0f
	ld bc,l6c17h		;6e12
	dec bc			;6e15
l6e16h:
	ld l,h			;6e16
	add hl,bc		;6e17
	ld l,h			;6e18
	dec bc			;6e19
	nop			;6e1a
	nop			;6e1b
	nop			;6e1c
	nop			;6e1d
	nop			;6e1e
	add hl,de		;6e1f
	inc bc			;6e20
	rrca			;6e21
	jr nz,l6e2eh		;6e22
	inc bc			;6e24
	inc c			;6e25
	nop			;6e26
	nop			;6e27
	nop			;6e28
	nop			;6e29
	nop			;6e2a
	rla			;6e2b
	ld l,h			;6e2c
	dec bc			;6e2d
l6e2eh:
	ld l,h			;6e2e
	add hl,bc		;6e2f
	ld l,h			;6e30
	dec bc			;6e31
	nop			;6e32
	nop			;6e33
	nop			;6e34
	nop			;6e35
	nop			;6e36
	add hl,de		;6e37
	rrca			;6e38
	rrca			;6e39
	jr nz,l6e46h		;6e3a
	rrca			;6e3c
	inc c			;6e3d
	nop			;6e3e
	nop			;6e3f
	nop			;6e40
	nop			;6e41
	ld bc,l6c17h		;6e42
	dec bc			;6e45
l6e46h:
	ld l,h			;6e46
	add hl,bc		;6e47
	ld l,h			;6e48
	dec bc			;6e49
	nop			;6e4a
	nop			;6e4b
	nop			;6e4c
	nop			;6e4d
	nop			;6e4e
	add hl,de		;6e4f
	inc bc			;6e50
	rrca			;6e51
	jr nz,l6e5eh		;6e52
	inc bc			;6e54
	inc c			;6e55
	nop			;6e56
	nop			;6e57
	nop			;6e58
	nop			;6e59
	ld (bc),a		;6e5a
	rla			;6e5b
	ld l,h			;6e5c
	dec bc			;6e5d
l6e5eh:
	ld l,h			;6e5e
	add hl,bc		;6e5f
	ld l,h			;6e60
	dec bc			;6e61
	nop			;6e62
	nop			;6e63
	nop			;6e64
	nop			;6e65
	nop			;6e66
	add hl,de		;6e67
	rrca			;6e68
	rrca			;6e69
	jr nz,l6e76h		;6e6a
	rrca			;6e6c
	inc c			;6e6d
	nop			;6e6e
	nop			;6e6f
	nop			;6e70
	nop			;6e71
	ld bc,l6c17h		;6e72
	dec bc			;6e75
l6e76h:
	ld l,h			;6e76
	add hl,bc		;6e77
	ld l,h			;6e78
	dec bc			;6e79
	nop			;6e7a
	nop			;6e7b
	nop			;6e7c
	nop			;6e7d
	nop			;6e7e
	add hl,de		;6e7f
	inc bc			;6e80
	rrca			;6e81
	jr nz,l6e8eh		;6e82
	inc bc			;6e84
	inc c			;6e85
	nop			;6e86
	nop			;6e87
	nop			;6e88
	nop			;6e89
	inc bc			;6e8a
	rla			;6e8b
	ld l,h			;6e8c
	dec bc			;6e8d
l6e8eh:
	ld l,h			;6e8e
	add hl,bc		;6e8f
	ld l,h			;6e90
	dec bc			;6e91
	nop			;6e92
	nop			;6e93
	nop			;6e94
	nop			;6e95
	nop			;6e96
	add hl,de		;6e97
	rrca			;6e98
	rrca			;6e99
	jr nz,l6ea6h		;6e9a
	rrca			;6e9c
	inc c			;6e9d
	nop			;6e9e
	nop			;6e9f
	nop			;6ea0
	nop			;6ea1
	ld bc,l6c17h		;6ea2
	dec bc			;6ea5
l6ea6h:
	ld l,h			;6ea6
	add hl,bc		;6ea7
	ld l,h			;6ea8
	dec bc			;6ea9
	nop			;6eaa
	nop			;6eab
	nop			;6eac
	nop			;6ead
	nop			;6eae
	add hl,de		;6eaf
	inc bc			;6eb0
	rrca			;6eb1
	jr nz,l6ebeh		;6eb2
	inc bc			;6eb4
	inc c			;6eb5
	nop			;6eb6
	nop			;6eb7
	nop			;6eb8
	nop			;6eb9
	inc bc			;6eba
	rla			;6ebb
	ld l,h			;6ebc
	dec bc			;6ebd
l6ebeh:
	ld l,h			;6ebe
	add hl,bc		;6ebf
	ld l,h			;6ec0
	dec bc			;6ec1
	nop			;6ec2
	nop			;6ec3
	nop			;6ec4
	nop			;6ec5
	nop			;6ec6
	add hl,de		;6ec7
	rrca			;6ec8
	rrca			;6ec9
	jr nz,l6ed6h		;6eca
	rrca			;6ecc
	inc c			;6ecd
	nop			;6ece
	nop			;6ecf
	nop			;6ed0
	nop			;6ed1
	ld bc,l6c17h		;6ed2
	dec bc			;6ed5
l6ed6h:
	ld l,h			;6ed6
	add hl,bc		;6ed7
	ld l,h			;6ed8
	dec bc			;6ed9
	nop			;6eda
	nop			;6edb
	nop			;6edc
	nop			;6edd
	nop			;6ede
	add hl,de		;6edf
	inc bc			;6ee0
	rrca			;6ee1
	inc hl			;6ee2
	ld a,(bc)		;6ee3
	inc bc			;6ee4
	inc c			;6ee5
	ld a,(l4109h)		;6ee6
	add hl,bc		;6ee9
	nop			;6eea
	rla			;6eeb
	ld l,h			;6eec
	dec bc			;6eed
	ld l,h			;6eee
	add hl,bc		;6eef
	ld l,h			;6ef0
	dec bc			;6ef1
	nop			;6ef2
	nop			;6ef3
	nop			;6ef4
	nop			;6ef5
	nop			;6ef6
	add hl,de		;6ef7
	rrca			;6ef8
	rrca			;6ef9
	inc hl			;6efa
	ld a,(bc)		;6efb
	rrca			;6efc
	inc c			;6efd
	nop			;6efe
	nop			;6eff
	nop			;6f00
	nop			;6f01
	ld bc,l6c17h		;6f02
	dec bc			;6f05
	ld l,h			;6f06
	add hl,bc		;6f07
	ld l,h			;6f08
	dec bc			;6f09
	nop			;6f0a
	nop			;6f0b
	nop			;6f0c
	nop			;6f0d
	nop			;6f0e
	add hl,de		;6f0f
	inc bc			;6f10
	rrca			;6f11
	inc hl			;6f12
	ld a,(bc)		;6f13
	inc bc			;6f14
	inc c			;6f15
	nop			;6f16
	nop			;6f17
	nop			;6f18
	nop			;6f19
	inc bc			;6f1a
	rla			;6f1b
	ld l,h			;6f1c
	dec bc			;6f1d
	ld l,h			;6f1e
	add hl,bc		;6f1f
	ld l,h			;6f20
	dec bc			;6f21
	nop			;6f22
	nop			;6f23
	nop			;6f24
	nop			;6f25
	nop			;6f26
	add hl,de		;6f27
	rrca			;6f28
	rrca			;6f29
	inc hl			;6f2a
	ld a,(bc)		;6f2b
	rrca			;6f2c
	inc c			;6f2d
	ld h,a			;6f2e
	ld bc,00167h		;6f2f
	ld bc,l6c17h		;6f32
	dec bc			;6f35
	ld l,h			;6f36
	add hl,bc		;6f37
	ld l,h			;6f38
	dec bc			;6f39
	nop			;6f3a
	nop			;6f3b
	nop			;6f3c
	nop			;6f3d
	nop			;6f3e
	add hl,de		;6f3f
	inc bc			;6f40
	rrca			;6f41
	inc hl			;6f42
	ld a,(bc)		;6f43
	inc bc			;6f44
	inc c			;6f45
	nop			;6f46
	nop			;6f47
	nop			;6f48
	nop			;6f49
	inc bc			;6f4a
	rla			;6f4b
	ld l,h			;6f4c
	dec bc			;6f4d
	ld l,h			;6f4e
	add hl,bc		;6f4f
	ld l,h			;6f50
	dec bc			;6f51
	nop			;6f52
	nop			;6f53
	nop			;6f54
	nop			;6f55
	nop			;6f56
	add hl,de		;6f57
	rrca			;6f58
	rrca			;6f59
	inc hl			;6f5a
	ld a,(bc)		;6f5b
	rrca			;6f5c
	inc c			;6f5d
	nop			;6f5e
	nop			;6f5f
	nop			;6f60
	nop			;6f61
	ld bc,l6c17h		;6f62
	dec bc			;6f65
	ld l,h			;6f66
	add hl,bc		;6f67
	ld l,h			;6f68
	dec bc			;6f69
	nop			;6f6a
	nop			;6f6b
	nop			;6f6c
	nop			;6f6d
	nop			;6f6e
	add hl,de		;6f6f
	rla			;6f70
	rrca			;6f71
	dec h			;6f72
	ld a,(bc)		;6f73
	rla			;6f74
	inc c			;6f75
	nop			;6f76
	nop			;6f77
	nop			;6f78
	nop			;6f79
	ld (bc),a		;6f7a
	rla			;6f7b
	ld l,h			;6f7c
	dec bc			;6f7d
	ld l,h			;6f7e
	add hl,bc		;6f7f
	ld l,h			;6f80
	dec bc			;6f81
	nop			;6f82
	nop			;6f83
	nop			;6f84
	nop			;6f85
	nop			;6f86
	add hl,de		;6f87
	dec bc			;6f88
	rrca			;6f89
	ld hl,(00b0ah)		;6f8a
	inc c			;6f8d
	nop			;6f8e
	nop			;6f8f
	nop			;6f90
	nop			;6f91
	ld (bc),a		;6f92
	rla			;6f93
	ld l,h			;6f94
	dec bc			;6f95
	ld l,h			;6f96
	add hl,bc		;6f97
	ld l,h			;6f98
	dec bc			;6f99
	nop			;6f9a
	nop			;6f9b
	nop			;6f9c
	nop			;6f9d
	nop			;6f9e
	add hl,de		;6f9f
	rla			;6fa0
	rrca			;6fa1
	inc l			;6fa2
	ld a,(bc)		;6fa3
	rla			;6fa4
	inc c			;6fa5
	nop			;6fa6
	nop			;6fa7
	nop			;6fa8
	nop			;6fa9
	ld (bc),a		;6faa
	rla			;6fab
	ld l,h			;6fac
	dec bc			;6fad
	ld l,h			;6fae
	add hl,bc		;6faf
	ld l,h			;6fb0
	dec bc			;6fb1
	nop			;6fb2
	nop			;6fb3
	nop			;6fb4
	nop			;6fb5
	nop			;6fb6
	add hl,de		;6fb7
	dec d			;6fb8
	rrca			;6fb9
	ld sp,0150ah		;6fba
	inc c			;6fbd
	nop			;6fbe
	nop			;6fbf
	nop			;6fc0
	nop			;6fc1
	ld (bc),a		;6fc2
	rla			;6fc3
	ld l,h			;6fc4
	dec bc			;6fc5
	ld l,h			;6fc6
	add hl,bc		;6fc7
	ld l,h			;6fc8
	dec bc			;6fc9
	nop			;6fca
	nop			;6fcb
	nop			;6fcc
	nop			;6fcd
	nop			;6fce
	add hl,de		;6fcf
	add hl,bc		;6fd0
	rrca			;6fd1
	ld (hl),00ah		;6fd2
	add hl,bc		;6fd4
	inc c			;6fd5
	nop			;6fd6
	nop			;6fd7
	nop			;6fd8
	nop			;6fd9
	ld (bc),a		;6fda
	rla			;6fdb
	ld l,h			;6fdc
	dec bc			;6fdd
	ld l,h			;6fde
	add hl,bc		;6fdf
	ld l,h			;6fe0
	dec bc			;6fe1
	nop			;6fe2
	nop			;6fe3
	nop			;6fe4
	nop			;6fe5
	nop			;6fe6
	add hl,de		;6fe7
	dec d			;6fe8
	rrca			;6fe9
	jr c,l6ff6h		;6fea
	dec d			;6fec
	inc c			;6fed
	nop			;6fee
	nop			;6fef
	nop			;6ff0
	nop			;6ff1
	ld bc,l6c17h		;6ff2
	dec bc			;6ff5
l6ff6h:
	ld l,h			;6ff6
	add hl,bc		;6ff7
	ld l,h			;6ff8
	dec bc			;6ff9
	nop			;6ffa
	nop			;6ffb
	nop			;6ffc
	nop			;6ffd
	nop			;6ffe
	add hl,de		;6fff
	ex af,af'		;7000
	rrca			;7001
	dec h			;7002
	ld a,(bc)		;7003
	ex af,af'		;7004
	inc c			;7005
	dec sp			;7006
	add hl,bc		;7007
	ld b,d			;7008
	add hl,bc		;7009
	inc bc			;700a
	rla			;700b
	ld l,h			;700c
	dec bc			;700d
	ld l,h			;700e
	add hl,bc		;700f
	ld l,h			;7010
	dec bc			;7011
	nop			;7012
	add hl,bc		;7013
	nop			;7014
	nop			;7015
	nop			;7016
	add hl,de		;7017
	inc d			;7018
	rrca			;7019
	ld sp,0140ah		;701a
	inc c			;701d
	nop			;701e
	add hl,bc		;701f
	nop			;7020
	nop			;7021
	ld bc,l6c17h		;7022
	dec bc			;7025
	ld l,h			;7026
	add hl,bc		;7027
	ld l,h			;7028
	dec bc			;7029
	nop			;702a
	add hl,bc		;702b
	nop			;702c
	nop			;702d
	nop			;702e
	add hl,de		;702f
	ex af,af'		;7030
	rrca			;7031
	dec h			;7032
	ld a,(bc)		;7033
	ex af,af'		;7034
	inc c			;7035
	nop			;7036
	add hl,bc		;7037
	nop			;7038
	nop			;7039
	inc bc			;703a
	rla			;703b
	ld l,h			;703c
	dec bc			;703d
	ld l,h			;703e
	add hl,bc		;703f
	ld l,h			;7040
	dec bc			;7041
	nop			;7042
	add hl,bc		;7043
	nop			;7044
	nop			;7045
	nop			;7046
	add hl,de		;7047
	inc d			;7048
	rrca			;7049
	ld sp,0140ah		;704a
	inc c			;704d
	ld h,a			;704e
	ld bc,00167h		;704f
	ld bc,l6c17h		;7052
	dec bc			;7055
	ld l,h			;7056
	add hl,bc		;7057
	ld l,h			;7058
	dec bc			;7059
	nop			;705a
	add hl,bc		;705b
	nop			;705c
	nop			;705d
	nop			;705e
	add hl,de		;705f
	ex af,af'		;7060
	rrca			;7061
	dec h			;7062
	ld a,(bc)		;7063
	ex af,af'		;7064
	inc c			;7065
	nop			;7066
	add hl,bc		;7067
	nop			;7068
	nop			;7069
	nop			;706a
	rla			;706b
	ld l,h			;706c
	dec bc			;706d
	ld l,h			;706e
	add hl,bc		;706f
	ld l,h			;7070
	dec bc			;7071
	nop			;7072
	add hl,bc		;7073
	nop			;7074
	nop			;7075
	nop			;7076
	add hl,de		;7077
	inc d			;7078
	rrca			;7079
	ld sp,0140ah		;707a
	inc c			;707d
	nop			;707e
	add hl,bc		;707f
	nop			;7080
	nop			;7081
	ld bc,l6c17h		;7082
	dec bc			;7085
	ld l,h			;7086
	add hl,bc		;7087
	ld l,h			;7088
	dec bc			;7089
	nop			;708a
	add hl,bc		;708b
	nop			;708c
	nop			;708d
	nop			;708e
	add hl,de		;708f
	ex af,af'		;7090
	rrca			;7091
	dec h			;7092
	ld a,(bc)		;7093
	ex af,af'		;7094
	inc c			;7095
	nop			;7096
	add hl,bc		;7097
	nop			;7098
	nop			;7099
	ld (bc),a		;709a
	rla			;709b
	ld l,h			;709c
	dec bc			;709d
	ld l,h			;709e
	add hl,bc		;709f
	ld l,h			;70a0
	dec bc			;70a1
	nop			;70a2
	add hl,bc		;70a3
	nop			;70a4
	nop			;70a5
	nop			;70a6
	add hl,de		;70a7
	inc d			;70a8
	rrca			;70a9
	ld sp,0140ah		;70aa
	inc c			;70ad
	nop			;70ae
	add hl,bc		;70af
	nop			;70b0
	nop			;70b1
	ld bc,l6c17h		;70b2
	dec bc			;70b5
	ld l,h			;70b6
	add hl,bc		;70b7
	ld l,h			;70b8
	dec bc			;70b9
	nop			;70ba
	add hl,bc		;70bb
	nop			;70bc
	nop			;70bd
	nop			;70be
	add hl,de		;70bf
	ex af,af'		;70c0
	rrca			;70c1
	dec h			;70c2
	ld a,(bc)		;70c3
	ex af,af'		;70c4
	inc c			;70c5
	nop			;70c6
	nop			;70c7
	nop			;70c8
	nop			;70c9
	inc bc			;70ca
	rla			;70cb
	ld l,h			;70cc
	dec bc			;70cd
	ld l,h			;70ce
	add hl,bc		;70cf
	ld l,h			;70d0
	dec bc			;70d1
	nop			;70d2
	nop			;70d3
	nop			;70d4
	nop			;70d5
	nop			;70d6
	add hl,de		;70d7
	inc d			;70d8
	rrca			;70d9
	ld sp,0140ah		;70da
	inc c			;70dd
	nop			;70de
	nop			;70df
	nop			;70e0
	nop			;70e1
	ld bc,l6c17h		;70e2
	dec bc			;70e5
	ld l,h			;70e6
	add hl,bc		;70e7
	ld l,h			;70e8
	dec bc			;70e9
	nop			;70ea
	nop			;70eb
	nop			;70ec
	nop			;70ed
	nop			;70ee
	add hl,de		;70ef
	ex af,af'		;70f0
	rrca			;70f1
	dec h			;70f2
	ld a,(bc)		;70f3
	ex af,af'		;70f4
	inc c			;70f5
	nop			;70f6
	nop			;70f7
	nop			;70f8
	nop			;70f9
	nop			;70fa
	rla			;70fb
	ld l,h			;70fc
	dec bc			;70fd
	ld l,h			;70fe
	add hl,bc		;70ff
	ld l,h			;7100
	dec bc			;7101
	nop			;7102
	nop			;7103
	nop			;7104
	nop			;7105
	nop			;7106
	add hl,de		;7107
	inc d			;7108
	rrca			;7109
	ld sp,0140ah		;710a
	inc c			;710d
	nop			;710e
	nop			;710f
	nop			;7110
	nop			;7111
	ld bc,l6c17h		;7112
	dec bc			;7115
	ld l,h			;7116
	add hl,bc		;7117
	ld l,h			;7118
	dec bc			;7119
	nop			;711a
	nop			;711b
	nop			;711c
	nop			;711d
	nop			;711e
	add hl,de		;711f
	ex af,af'		;7120
	rrca			;7121
	dec h			;7122
	ld a,(bc)		;7123
	ex af,af'		;7124
	inc c			;7125
	inc sp			;7126
	rlca			;7127
	dec sp			;7128
	dec bc			;7129
	ld (bc),a		;712a
	rla			;712b
	ld l,h			;712c
	dec bc			;712d
	ld l,h			;712e
	add hl,bc		;712f
	ld l,h			;7130
	dec bc			;7131
	nop			;7132
	nop			;7133
	nop			;7134
	nop			;7135
	nop			;7136
	add hl,de		;7137
	inc d			;7138
	rrca			;7139
	ld sp,0140ah		;713a
	inc c			;713d
	ld (hl),007h		;713e
	dec a			;7140
	dec bc			;7141
	ld (bc),a		;7142
	rla			;7143
	ld l,h			;7144
	dec bc			;7145
	ld l,h			;7146
	add hl,bc		;7147
	ld l,h			;7148
	dec bc			;7149
	nop			;714a
	nop			;714b
	nop			;714c
	nop			;714d
	nop			;714e
	add hl,de		;714f
	ex af,af'		;7150
	rrca			;7151
	dec h			;7152
	ld a,(bc)		;7153
	ex af,af'		;7154
	inc c			;7155
	inc (hl)		;7156
	rlca			;7157
	add hl,sp		;7158
	dec bc			;7159
	ld (bc),a		;715a
	rla			;715b
	ld l,h			;715c
	dec bc			;715d
	ld l,h			;715e
	add hl,bc		;715f
	ld l,h			;7160
	dec bc			;7161
	nop			;7162
	nop			;7163
	nop			;7164
	nop			;7165
	nop			;7166
	add hl,de		;7167
	inc d			;7168
	rrca			;7169
	ld sp,0140ah		;716a
	inc c			;716d
	ld (hl),007h		;716e
	dec a			;7170
	dec bc			;7171
	ld (bc),a		;7172
	rla			;7173
	ld l,h			;7174
	dec bc			;7175
	ld l,h			;7176
	add hl,bc		;7177
	ld l,h			;7178
	dec bc			;7179
	nop			;717a
	nop			;717b
	nop			;717c
	nop			;717d
	nop			;717e
	add hl,de		;717f
	ex af,af'		;7180
	rrca			;7181
	dec h			;7182
	ld a,(bc)		;7183
	ex af,af'		;7184
	inc c			;7185
	inc sp			;7186
	rlca			;7187
	jr c,l7195h		;7188
	ld (bc),a		;718a
	rla			;718b
	ld l,h			;718c
	dec bc			;718d
	ld l,h			;718e
	add hl,bc		;718f
	ld l,h			;7190
	dec bc			;7191
	nop			;7192
	nop			;7193
	nop			;7194
l7195h:
	nop			;7195
	nop			;7196
	add hl,de		;7197
	inc d			;7198
	rrca			;7199
	ld sp,0140ah		;719a
	inc c			;719d
	ld (hl),007h		;719e
	dec a			;71a0
	dec bc			;71a1
	ld (bc),a		;71a2
	rla			;71a3
	ld l,h			;71a4
	dec bc			;71a5
	ld l,h			;71a6
	add hl,bc		;71a7
	ld l,h			;71a8
	dec bc			;71a9
	nop			;71aa
	nop			;71ab
	nop			;71ac
	nop			;71ad
	nop			;71ae
	add hl,de		;71af
	ex af,af'		;71b0
	rrca			;71b1
	add hl,hl		;71b2
	ld a,(bc)		;71b3
	ex af,af'		;71b4
	inc c			;71b5
	ld sp,03607h		;71b6
	dec bc			;71b9
	ld (bc),a		;71ba
	rla			;71bb
	ld l,h			;71bc
	dec bc			;71bd
	ld l,h			;71be
	add hl,bc		;71bf
	ld l,h			;71c0
	dec bc			;71c1
	nop			;71c2
	nop			;71c3
	nop			;71c4
	nop			;71c5
	nop			;71c6
	add hl,de		;71c7
	dec c			;71c8
	rrca			;71c9
	jr z,l71d6h		;71ca
	dec c			;71cc
	inc c			;71cd
	ld (hl),007h		;71ce
	dec a			;71d0
	dec bc			;71d1
	ld (bc),a		;71d2
	rla			;71d3
	ld l,h			;71d4
	dec bc			;71d5
l71d6h:
	ld l,h			;71d6
	add hl,bc		;71d7
	ld l,h			;71d8
	dec bc			;71d9
	nop			;71da
	nop			;71db
	nop			;71dc
	nop			;71dd
	nop			;71de
	add hl,de		;71df
	rrca			;71e0
	rrca			;71e1
	daa			;71e2
	ld a,(bc)		;71e3
	rrca			;71e4
	inc c			;71e5
	dec a			;71e6
	rlca			;71e7
	inc (hl)		;71e8
	dec bc			;71e9
	ld (bc),a		;71ea
	rla			;71eb
	ld l,h			;71ec
	dec bc			;71ed
	ld l,h			;71ee
	add hl,bc		;71ef
	ld l,h			;71f0
	dec bc			;71f1
	nop			;71f2
	nop			;71f3
	nop			;71f4
	nop			;71f5
	nop			;71f6
	add hl,de		;71f7
	ld (de),a		;71f8
	rrca			;71f9
	ld h,00ah		;71fa
	ld (de),a		;71fc
	inc c			;71fd
	ld (hl),007h		;71fe
	dec a			;7200
	dec bc			;7201
	ld (bc),a		;7202
	rla			;7203
	ld l,h			;7204
	dec bc			;7205
	ld l,h			;7206
	add hl,bc		;7207
	ld l,h			;7208
	dec bc			;7209
	nop			;720a
	nop			;720b
	nop			;720c
	nop			;720d
	nop			;720e
	add hl,de		;720f
	inc d			;7210
	rrca			;7211
	dec h			;7212
	ld a,(bc)		;7213
	inc d			;7214
	inc c			;7215
	jr c,l721fh		;7216
	inc sp			;7218
	dec bc			;7219
	ld (bc),a		;721a
	rla			;721b
	ld l,h			;721c
	dec bc			;721d
	ld l,h			;721e
l721fh:
	add hl,bc		;721f
	ld l,h			;7220
	dec bc			;7221
	nop			;7222
	nop			;7223
	nop			;7224
	nop			;7225
	nop			;7226
	add hl,de		;7227
	rla			;7228
	rrca			;7229
	inc h			;722a
	ld a,(bc)		;722b
	rla			;722c
	inc c			;722d
	ld (hl),007h		;722e
	dec a			;7230
	dec bc			;7231
	ld (bc),a		;7232
	rla			;7233
	ld l,h			;7234
	dec bc			;7235
	ld l,h			;7236
	add hl,bc		;7237
	ld l,h			;7238
	dec bc			;7239
	nop			;723a
	nop			;723b
	nop			;723c
	nop			;723d
	nop			;723e
	add hl,de		;723f
	rst 38h			;7240
	rst 38h			;7241
	rst 38h			;7242
	rst 38h			;7243
	rst 38h			;7244
	rst 38h			;7245
	rst 38h			;7246
	rst 38h			;7247
	rst 38h			;7248
	rst 38h			;7249
	rst 38h			;724a
	rst 38h			;724b
	rst 38h			;724c
	rst 38h			;724d
	rst 38h			;724e
	rst 38h			;724f
	rst 38h			;7250
	rst 38h			;7251
	rst 38h			;7252
	rst 38h			;7253
	rst 38h			;7254
	rst 38h			;7255
	rst 38h			;7256
	rst 38h			;7257
	rst 38h			;7258
	rst 38h			;7259
	rst 38h			;725a
	rst 38h			;725b
	rst 38h			;725c
	rst 38h			;725d
	rst 38h			;725e
	rst 38h			;725f
	rst 38h			;7260
	rst 38h			;7261
	rst 38h			;7262
	rst 38h			;7263
	rst 38h			;7264
	rst 38h			;7265
	rst 38h			;7266
	rst 38h			;7267
	rst 38h			;7268
	rst 38h			;7269
	rst 38h			;726a
	rst 38h			;726b
	rst 38h			;726c
	rst 38h			;726d
	rst 38h			;726e
	rst 38h			;726f
	rst 38h			;7270
	rst 38h			;7271
	rst 38h			;7272
	rst 38h			;7273
	rst 38h			;7274
	rst 38h			;7275
	rst 38h			;7276
	rst 38h			;7277
	rst 38h			;7278
	rst 38h			;7279
	rst 38h			;727a
	rst 38h			;727b
	rst 38h			;727c
	rst 38h			;727d
	rst 38h			;727e
	rst 38h			;727f
	rst 38h			;7280
	rst 38h			;7281
	rst 38h			;7282
	rst 38h			;7283
	rst 38h			;7284
	rst 38h			;7285
	rst 38h			;7286
	rst 38h			;7287
	rst 38h			;7288
	rst 38h			;7289
	rst 38h			;728a
	rst 38h			;728b
	rst 38h			;728c
	rst 38h			;728d
	rst 38h			;728e
	rst 38h			;728f
	rst 38h			;7290
	rst 38h			;7291
	rst 38h			;7292
	rst 38h			;7293
	rst 38h			;7294
	rst 38h			;7295
	rst 38h			;7296
	rst 38h			;7297
	rst 38h			;7298
	rst 38h			;7299
	rst 38h			;729a
	rst 38h			;729b
	rst 38h			;729c
	rst 38h			;729d
	rst 38h			;729e
	rst 38h			;729f
	rst 38h			;72a0
	rst 38h			;72a1
	rst 38h			;72a2
	rst 38h			;72a3
	rst 38h			;72a4
	rst 38h			;72a5
	rst 38h			;72a6
	rst 38h			;72a7
	rst 38h			;72a8
	rst 38h			;72a9
	rst 38h			;72aa
	rst 38h			;72ab
	rst 38h			;72ac
	rst 38h			;72ad
	rst 38h			;72ae
	rst 38h			;72af
	rst 38h			;72b0
	rst 38h			;72b1
	rst 38h			;72b2
	rst 38h			;72b3
	rst 38h			;72b4
	rst 38h			;72b5
	rst 38h			;72b6
	rst 38h			;72b7
	rst 38h			;72b8
	rst 38h			;72b9
	rst 38h			;72ba
	rst 38h			;72bb
	rst 38h			;72bc
	rst 38h			;72bd
	rst 38h			;72be
	rst 38h			;72bf
	rst 38h			;72c0
	rst 38h			;72c1
	rst 38h			;72c2
	rst 38h			;72c3
	rst 38h			;72c4
	rst 38h			;72c5
	rst 38h			;72c6
	rst 38h			;72c7
	rst 38h			;72c8
	rst 38h			;72c9
	rst 38h			;72ca
	rst 38h			;72cb
	rst 38h			;72cc
	rst 38h			;72cd
	rst 38h			;72ce
	rst 38h			;72cf
	rst 38h			;72d0
	rst 38h			;72d1
	rst 38h			;72d2
	rst 38h			;72d3
	rst 38h			;72d4
	rst 38h			;72d5
	rst 38h			;72d6
	rst 38h			;72d7
	rst 38h			;72d8
	rst 38h			;72d9
	rst 38h			;72da
	rst 38h			;72db
	rst 38h			;72dc
	rst 38h			;72dd
	rst 38h			;72de
	rst 38h			;72df
	rst 38h			;72e0
	rst 38h			;72e1
	rst 38h			;72e2
	rst 38h			;72e3
	rst 38h			;72e4
	rst 38h			;72e5
	rst 38h			;72e6
	rst 38h			;72e7
	rst 38h			;72e8
	rst 38h			;72e9
	rst 38h			;72ea
	rst 38h			;72eb
	rst 38h			;72ec
	rst 38h			;72ed
	rst 38h			;72ee
	rst 38h			;72ef
	rst 38h			;72f0
	rst 38h			;72f1
	rst 38h			;72f2
	rst 38h			;72f3
	rst 38h			;72f4
	rst 38h			;72f5
	rst 38h			;72f6
	rst 38h			;72f7
	rst 38h			;72f8
	rst 38h			;72f9
	rst 38h			;72fa
	rst 38h			;72fb
	rst 38h			;72fc
	rst 38h			;72fd
	rst 38h			;72fe
	rst 38h			;72ff
	rst 38h			;7300
	rst 38h			;7301
	rst 38h			;7302
	rst 38h			;7303
	rst 38h			;7304
	rst 38h			;7305
	rst 38h			;7306
	rst 38h			;7307
	rst 38h			;7308
	rst 38h			;7309
	rst 38h			;730a
	rst 38h			;730b
	rst 38h			;730c
	rst 38h			;730d
	rst 38h			;730e
	rst 38h			;730f
	rst 38h			;7310
	rst 38h			;7311
	rst 38h			;7312
	rst 38h			;7313
	rst 38h			;7314
	rst 38h			;7315
	rst 38h			;7316
	rst 38h			;7317
	rst 38h			;7318
	rst 38h			;7319
	rst 38h			;731a
	rst 38h			;731b
	rst 38h			;731c
	rst 38h			;731d
	rst 38h			;731e
	rst 38h			;731f
	rst 38h			;7320
	rst 38h			;7321
	rst 38h			;7322
	rst 38h			;7323
	rst 38h			;7324
	rst 38h			;7325
	rst 38h			;7326
	rst 38h			;7327
	rst 38h			;7328
	rst 38h			;7329
	rst 38h			;732a
	rst 38h			;732b
	rst 38h			;732c
	rst 38h			;732d
	rst 38h			;732e
	rst 38h			;732f
	rst 38h			;7330
	rst 38h			;7331
	rst 38h			;7332
	rst 38h			;7333
	rst 38h			;7334
	rst 38h			;7335
	rst 38h			;7336
	rst 38h			;7337
	rst 38h			;7338
	rst 38h			;7339
	rst 38h			;733a
	rst 38h			;733b
	rst 38h			;733c
	rst 38h			;733d
	rst 38h			;733e
	rst 38h			;733f
	rst 38h			;7340
	rst 38h			;7341
	rst 38h			;7342
	rst 38h			;7343
	rst 38h			;7344
	rst 38h			;7345
	rst 38h			;7346
	rst 38h			;7347
	rst 38h			;7348
	rst 38h			;7349
	rst 38h			;734a
	rst 38h			;734b
	rst 38h			;734c
	rst 38h			;734d
	rst 38h			;734e
	rst 38h			;734f
	rst 38h			;7350
	rst 38h			;7351
	rst 38h			;7352
	rst 38h			;7353
	rst 38h			;7354
	rst 38h			;7355
	rst 38h			;7356
	rst 38h			;7357
	rst 38h			;7358
	rst 38h			;7359
	rst 38h			;735a
	rst 38h			;735b
	rst 38h			;735c
	rst 38h			;735d
	rst 38h			;735e
	rst 38h			;735f
	rst 38h			;7360
	rst 38h			;7361
	rst 38h			;7362
	rst 38h			;7363
	rst 38h			;7364
	rst 38h			;7365
	rst 38h			;7366
	rst 38h			;7367
	rst 38h			;7368
	rst 38h			;7369
	rst 38h			;736a
	rst 38h			;736b
	rst 38h			;736c
	rst 38h			;736d
	rst 38h			;736e
	rst 38h			;736f
	rst 38h			;7370
	rst 38h			;7371
	rst 38h			;7372
	rst 38h			;7373
	rst 38h			;7374
	rst 38h			;7375
	rst 38h			;7376
	rst 38h			;7377
	rst 38h			;7378
	rst 38h			;7379
	rst 38h			;737a
	rst 38h			;737b
	rst 38h			;737c
	rst 38h			;737d
	rst 38h			;737e
	rst 38h			;737f
	rst 38h			;7380
	rst 38h			;7381
	rst 38h			;7382
	rst 38h			;7383
	rst 38h			;7384
	rst 38h			;7385
	rst 38h			;7386
	rst 38h			;7387
	rst 38h			;7388
	rst 38h			;7389
	rst 38h			;738a
	rst 38h			;738b
	rst 38h			;738c
	rst 38h			;738d
	rst 38h			;738e
	rst 38h			;738f
	rst 38h			;7390
	rst 38h			;7391
	rst 38h			;7392
	rst 38h			;7393
	rst 38h			;7394
	rst 38h			;7395
	rst 38h			;7396
	rst 38h			;7397
	rst 38h			;7398
	rst 38h			;7399
	rst 38h			;739a
	rst 38h			;739b
	rst 38h			;739c
	rst 38h			;739d
	rst 38h			;739e
	rst 38h			;739f
	rst 38h			;73a0
	rst 38h			;73a1
	rst 38h			;73a2
	rst 38h			;73a3
	rst 38h			;73a4
	rst 38h			;73a5
	rst 38h			;73a6
	rst 38h			;73a7
	rst 38h			;73a8
	rst 38h			;73a9
	rst 38h			;73aa
	rst 38h			;73ab
	rst 38h			;73ac
	rst 38h			;73ad
	rst 38h			;73ae
	rst 38h			;73af
	rst 38h			;73b0
	rst 38h			;73b1
	rst 38h			;73b2
	rst 38h			;73b3
	rst 38h			;73b4
	rst 38h			;73b5
	rst 38h			;73b6
	rst 38h			;73b7
	rst 38h			;73b8
	rst 38h			;73b9
	rst 38h			;73ba
	rst 38h			;73bb
	rst 38h			;73bc
	rst 38h			;73bd
	rst 38h			;73be
	rst 38h			;73bf
	rst 38h			;73c0
	rst 38h			;73c1
	rst 38h			;73c2
	rst 38h			;73c3
	rst 38h			;73c4
	rst 38h			;73c5
	rst 38h			;73c6
	rst 38h			;73c7
	rst 38h			;73c8
	rst 38h			;73c9
	rst 38h			;73ca
	rst 38h			;73cb
	rst 38h			;73cc
	rst 38h			;73cd
	rst 38h			;73ce
	rst 38h			;73cf
	rst 38h			;73d0
	rst 38h			;73d1
	rst 38h			;73d2
	rst 38h			;73d3
	rst 38h			;73d4
	rst 38h			;73d5
	rst 38h			;73d6
	rst 38h			;73d7
	rst 38h			;73d8
	rst 38h			;73d9
	rst 38h			;73da
	rst 38h			;73db
	rst 38h			;73dc
	rst 38h			;73dd
	rst 38h			;73de
	rst 38h			;73df
	rst 38h			;73e0
	rst 38h			;73e1
	rst 38h			;73e2
	rst 38h			;73e3
	rst 38h			;73e4
	rst 38h			;73e5
	rst 38h			;73e6
	rst 38h			;73e7
	rst 38h			;73e8
	rst 38h			;73e9
	rst 38h			;73ea
	rst 38h			;73eb
	rst 38h			;73ec
	rst 38h			;73ed
	rst 38h			;73ee
	rst 38h			;73ef
	rst 38h			;73f0
	rst 38h			;73f1
	rst 38h			;73f2
	rst 38h			;73f3
	rst 38h			;73f4
	rst 38h			;73f5
	rst 38h			;73f6
	rst 38h			;73f7
	rst 38h			;73f8
	rst 38h			;73f9
	rst 38h			;73fa
	rst 38h			;73fb
	rst 38h			;73fc
	rst 38h			;73fd
	rst 38h			;73fe
	rst 38h			;73ff
	rst 38h			;7400
	rst 38h			;7401
	rst 38h			;7402
	rst 38h			;7403
	rst 38h			;7404
	rst 38h			;7405
	rst 38h			;7406
	rst 38h			;7407
	rst 38h			;7408
	rst 38h			;7409
	rst 38h			;740a
	rst 38h			;740b
	rst 38h			;740c
	rst 38h			;740d
	rst 38h			;740e
	rst 38h			;740f
	rst 38h			;7410
	rst 38h			;7411
	rst 38h			;7412
	rst 38h			;7413
	rst 38h			;7414
	rst 38h			;7415
	rst 38h			;7416
	rst 38h			;7417
	rst 38h			;7418
	rst 38h			;7419
	rst 38h			;741a
	rst 38h			;741b
	rst 38h			;741c
	rst 38h			;741d
	rst 38h			;741e
	rst 38h			;741f
	rst 38h			;7420
	rst 38h			;7421
	rst 38h			;7422
	rst 38h			;7423
	rst 38h			;7424
	rst 38h			;7425
	rst 38h			;7426
	rst 38h			;7427
	rst 38h			;7428
	rst 38h			;7429
	rst 38h			;742a
	rst 38h			;742b
	rst 38h			;742c
	rst 38h			;742d
	rst 38h			;742e
	rst 38h			;742f
	rst 38h			;7430
	rst 38h			;7431
	rst 38h			;7432
	rst 38h			;7433
	rst 38h			;7434
	rst 38h			;7435
	rst 38h			;7436
	rst 38h			;7437
	rst 38h			;7438
	rst 38h			;7439
	rst 38h			;743a
	rst 38h			;743b
	rst 38h			;743c
	rst 38h			;743d
	rst 38h			;743e
	rst 38h			;743f
	rst 38h			;7440
	rst 38h			;7441
	rst 38h			;7442
	rst 38h			;7443
	rst 38h			;7444
	rst 38h			;7445
	rst 38h			;7446
	rst 38h			;7447
	rst 38h			;7448
	rst 38h			;7449
	rst 38h			;744a
	rst 38h			;744b
	rst 38h			;744c
	rst 38h			;744d
	rst 38h			;744e
	rst 38h			;744f
	rst 38h			;7450
	rst 38h			;7451
	rst 38h			;7452
	rst 38h			;7453
	rst 38h			;7454
	rst 38h			;7455
	rst 38h			;7456
	rst 38h			;7457
	rst 38h			;7458
	rst 38h			;7459
	rst 38h			;745a
	rst 38h			;745b
	rst 38h			;745c
	rst 38h			;745d
	rst 38h			;745e
	rst 38h			;745f
	rst 38h			;7460
	rst 38h			;7461
	rst 38h			;7462
	rst 38h			;7463
	rst 38h			;7464
	rst 38h			;7465
	rst 38h			;7466
	rst 38h			;7467
	rst 38h			;7468
	rst 38h			;7469
	rst 38h			;746a
	rst 38h			;746b
	rst 38h			;746c
	rst 38h			;746d
	rst 38h			;746e
	rst 38h			;746f
	rst 38h			;7470
	rst 38h			;7471
	rst 38h			;7472
	rst 38h			;7473
	rst 38h			;7474
	rst 38h			;7475
	rst 38h			;7476
	rst 38h			;7477
	rst 38h			;7478
	rst 38h			;7479
	rst 38h			;747a
	rst 38h			;747b
	rst 38h			;747c
	rst 38h			;747d
	rst 38h			;747e
	rst 38h			;747f
	rst 38h			;7480
	rst 38h			;7481
	rst 38h			;7482
	rst 38h			;7483
	rst 38h			;7484
	rst 38h			;7485
	rst 38h			;7486
	rst 38h			;7487
	rst 38h			;7488
	rst 38h			;7489
	rst 38h			;748a
	rst 38h			;748b
	rst 38h			;748c
	rst 38h			;748d
	rst 38h			;748e
	rst 38h			;748f
	rst 38h			;7490
	rst 38h			;7491
	rst 38h			;7492
	rst 38h			;7493
	rst 38h			;7494
	rst 38h			;7495
	rst 38h			;7496
	rst 38h			;7497
	rst 38h			;7498
	rst 38h			;7499
	rst 38h			;749a
	rst 38h			;749b
	rst 38h			;749c
	rst 38h			;749d
	rst 38h			;749e
	rst 38h			;749f
	rst 38h			;74a0
	rst 38h			;74a1
	rst 38h			;74a2
	rst 38h			;74a3
	rst 38h			;74a4
	rst 38h			;74a5
	rst 38h			;74a6
	rst 38h			;74a7
	rst 38h			;74a8
	rst 38h			;74a9
	rst 38h			;74aa
	rst 38h			;74ab
	rst 38h			;74ac
	rst 38h			;74ad
	rst 38h			;74ae
	rst 38h			;74af
	rst 38h			;74b0
	rst 38h			;74b1
	rst 38h			;74b2
	rst 38h			;74b3
	rst 38h			;74b4
	rst 38h			;74b5
	rst 38h			;74b6
	rst 38h			;74b7
	rst 38h			;74b8
	rst 38h			;74b9
	rst 38h			;74ba
	rst 38h			;74bb
	rst 38h			;74bc
	rst 38h			;74bd
	rst 38h			;74be
	rst 38h			;74bf
	rst 38h			;74c0
	rst 38h			;74c1
	rst 38h			;74c2
	rst 38h			;74c3
	rst 38h			;74c4
	rst 38h			;74c5
	rst 38h			;74c6
	rst 38h			;74c7
	rst 38h			;74c8
	rst 38h			;74c9
	rst 38h			;74ca
	rst 38h			;74cb
	rst 38h			;74cc
	rst 38h			;74cd
	rst 38h			;74ce
	rst 38h			;74cf
	rst 38h			;74d0
	rst 38h			;74d1
	rst 38h			;74d2
	rst 38h			;74d3
	rst 38h			;74d4
	rst 38h			;74d5
	rst 38h			;74d6
	rst 38h			;74d7
	rst 38h			;74d8
	rst 38h			;74d9
	rst 38h			;74da
	rst 38h			;74db
	rst 38h			;74dc
	rst 38h			;74dd
	rst 38h			;74de
	rst 38h			;74df
	rst 38h			;74e0
	rst 38h			;74e1
	rst 38h			;74e2
	rst 38h			;74e3
	rst 38h			;74e4
	rst 38h			;74e5
	rst 38h			;74e6
	rst 38h			;74e7
	rst 38h			;74e8
	rst 38h			;74e9
	rst 38h			;74ea
	rst 38h			;74eb
	rst 38h			;74ec
	rst 38h			;74ed
	rst 38h			;74ee
	rst 38h			;74ef
	rst 38h			;74f0
	rst 38h			;74f1
	rst 38h			;74f2
	rst 38h			;74f3
	rst 38h			;74f4
	rst 38h			;74f5
	rst 38h			;74f6
	rst 38h			;74f7
	rst 38h			;74f8
	rst 38h			;74f9
	rst 38h			;74fa
	rst 38h			;74fb
	rst 38h			;74fc
	rst 38h			;74fd
	rst 38h			;74fe
	rst 38h			;74ff
	rst 38h			;7500
	rst 38h			;7501
	rst 38h			;7502
	rst 38h			;7503
	rst 38h			;7504
	rst 38h			;7505
	rst 38h			;7506
	rst 38h			;7507
	rst 38h			;7508
	rst 38h			;7509
	rst 38h			;750a
	rst 38h			;750b
	rst 38h			;750c
	rst 38h			;750d
	rst 38h			;750e
	rst 38h			;750f
	rst 38h			;7510
	rst 38h			;7511
	rst 38h			;7512
	rst 38h			;7513
	rst 38h			;7514
	rst 38h			;7515
	rst 38h			;7516
	rst 38h			;7517
	rst 38h			;7518
	rst 38h			;7519
	rst 38h			;751a
	rst 38h			;751b
	rst 38h			;751c
	rst 38h			;751d
	rst 38h			;751e
	rst 38h			;751f
	rst 38h			;7520
	rst 38h			;7521
	rst 38h			;7522
	rst 38h			;7523
	rst 38h			;7524
	rst 38h			;7525
	rst 38h			;7526
	rst 38h			;7527
	rst 38h			;7528
	rst 38h			;7529
	rst 38h			;752a
	rst 38h			;752b
	rst 38h			;752c
	rst 38h			;752d
	rst 38h			;752e
	rst 38h			;752f
	rst 38h			;7530
	rst 38h			;7531
	rst 38h			;7532
	rst 38h			;7533
	rst 38h			;7534
	rst 38h			;7535
	rst 38h			;7536
	rst 38h			;7537
	rst 38h			;7538
	rst 38h			;7539
	rst 38h			;753a
	rst 38h			;753b
	rst 38h			;753c
	rst 38h			;753d
	rst 38h			;753e
	rst 38h			;753f
	rst 38h			;7540
	rst 38h			;7541
	rst 38h			;7542
	rst 38h			;7543
	rst 38h			;7544
	rst 38h			;7545
	rst 38h			;7546
	rst 38h			;7547
	rst 38h			;7548
	rst 38h			;7549
	rst 38h			;754a
	rst 38h			;754b
	rst 38h			;754c
	rst 38h			;754d
	rst 38h			;754e
	rst 38h			;754f
	rst 38h			;7550
	rst 38h			;7551
	rst 38h			;7552
	rst 38h			;7553
	rst 38h			;7554
	rst 38h			;7555
	rst 38h			;7556
	rst 38h			;7557
	rst 38h			;7558
	rst 38h			;7559
	rst 38h			;755a
	rst 38h			;755b
	rst 38h			;755c
	rst 38h			;755d
	rst 38h			;755e
	rst 38h			;755f
	rst 38h			;7560
	rst 38h			;7561
	rst 38h			;7562
	rst 38h			;7563
	rst 38h			;7564
	rst 38h			;7565
	rst 38h			;7566
	rst 38h			;7567
	rst 38h			;7568
	rst 38h			;7569
	rst 38h			;756a
	rst 38h			;756b
	rst 38h			;756c
	rst 38h			;756d
	rst 38h			;756e
	rst 38h			;756f
	rst 38h			;7570
	rst 38h			;7571
	rst 38h			;7572
	rst 38h			;7573
	rst 38h			;7574
	rst 38h			;7575
	rst 38h			;7576
	rst 38h			;7577
	rst 38h			;7578
	rst 38h			;7579
	rst 38h			;757a
	rst 38h			;757b
	rst 38h			;757c
	rst 38h			;757d
	rst 38h			;757e
	rst 38h			;757f
	rst 38h			;7580
	rst 38h			;7581
	rst 38h			;7582
	rst 38h			;7583
	rst 38h			;7584
	rst 38h			;7585
	rst 38h			;7586
	rst 38h			;7587
	rst 38h			;7588
	rst 38h			;7589
	rst 38h			;758a
	rst 38h			;758b
	rst 38h			;758c
	rst 38h			;758d
	rst 38h			;758e
	rst 38h			;758f
	rst 38h			;7590
	rst 38h			;7591
	rst 38h			;7592
	rst 38h			;7593
	rst 38h			;7594
	rst 38h			;7595
	rst 38h			;7596
	rst 38h			;7597
	rst 38h			;7598
	rst 38h			;7599
	rst 38h			;759a
	rst 38h			;759b
	rst 38h			;759c
	rst 38h			;759d
	rst 38h			;759e
	rst 38h			;759f
	rst 38h			;75a0
	rst 38h			;75a1
	rst 38h			;75a2
	rst 38h			;75a3
	rst 38h			;75a4
	rst 38h			;75a5
	rst 38h			;75a6
	rst 38h			;75a7
	rst 38h			;75a8
	rst 38h			;75a9
	rst 38h			;75aa
	rst 38h			;75ab
	rst 38h			;75ac
	rst 38h			;75ad
	rst 38h			;75ae
	rst 38h			;75af
	rst 38h			;75b0
	rst 38h			;75b1
	rst 38h			;75b2
	rst 38h			;75b3
	rst 38h			;75b4
	rst 38h			;75b5
	rst 38h			;75b6
	rst 38h			;75b7
	rst 38h			;75b8
	rst 38h			;75b9
	rst 38h			;75ba
	rst 38h			;75bb
	rst 38h			;75bc
	rst 38h			;75bd
	rst 38h			;75be
	rst 38h			;75bf
	rst 38h			;75c0
	rst 38h			;75c1
	rst 38h			;75c2
	rst 38h			;75c3
	rst 38h			;75c4
	rst 38h			;75c5
	rst 38h			;75c6
	rst 38h			;75c7
	rst 38h			;75c8
	rst 38h			;75c9
	rst 38h			;75ca
	rst 38h			;75cb
	rst 38h			;75cc
	rst 38h			;75cd
	rst 38h			;75ce
	rst 38h			;75cf
	rst 38h			;75d0
	rst 38h			;75d1
	rst 38h			;75d2
	rst 38h			;75d3
	rst 38h			;75d4
	rst 38h			;75d5
	rst 38h			;75d6
	rst 38h			;75d7
	rst 38h			;75d8
	rst 38h			;75d9
	rst 38h			;75da
	rst 38h			;75db
	rst 38h			;75dc
	rst 38h			;75dd
	rst 38h			;75de
	rst 38h			;75df
	rst 38h			;75e0
	rst 38h			;75e1
	rst 38h			;75e2
	rst 38h			;75e3
	rst 38h			;75e4
	rst 38h			;75e5
	rst 38h			;75e6
	rst 38h			;75e7
	rst 38h			;75e8
	rst 38h			;75e9
	rst 38h			;75ea
	rst 38h			;75eb
	rst 38h			;75ec
	rst 38h			;75ed
	rst 38h			;75ee
	rst 38h			;75ef
	rst 38h			;75f0
	rst 38h			;75f1
	rst 38h			;75f2
	rst 38h			;75f3
	rst 38h			;75f4
	rst 38h			;75f5
	rst 38h			;75f6
	rst 38h			;75f7
	rst 38h			;75f8
	rst 38h			;75f9
	rst 38h			;75fa
	rst 38h			;75fb
	rst 38h			;75fc
	rst 38h			;75fd
	rst 38h			;75fe
	rst 38h			;75ff
	rst 38h			;7600
	rst 38h			;7601
	rst 38h			;7602
	rst 38h			;7603
	rst 38h			;7604
	rst 38h			;7605
	rst 38h			;7606
	rst 38h			;7607
	rst 38h			;7608
	rst 38h			;7609
	rst 38h			;760a
	rst 38h			;760b
	rst 38h			;760c
	rst 38h			;760d
	rst 38h			;760e
	rst 38h			;760f
	rst 38h			;7610
	rst 38h			;7611
	rst 38h			;7612
	rst 38h			;7613
	rst 38h			;7614
	rst 38h			;7615
	rst 38h			;7616
	rst 38h			;7617
	rst 38h			;7618
	rst 38h			;7619
	rst 38h			;761a
	rst 38h			;761b
	rst 38h			;761c
	rst 38h			;761d
	rst 38h			;761e
	rst 38h			;761f
	rst 38h			;7620
	rst 38h			;7621
	rst 38h			;7622
	rst 38h			;7623
	rst 38h			;7624
	rst 38h			;7625
	rst 38h			;7626
	rst 38h			;7627
	rst 38h			;7628
	rst 38h			;7629
	rst 38h			;762a
	rst 38h			;762b
	rst 38h			;762c
	rst 38h			;762d
	rst 38h			;762e
	rst 38h			;762f
	rst 38h			;7630
	rst 38h			;7631
	rst 38h			;7632
	rst 38h			;7633
	rst 38h			;7634
	rst 38h			;7635
	rst 38h			;7636
	rst 38h			;7637
	rst 38h			;7638
	rst 38h			;7639
	rst 38h			;763a
	rst 38h			;763b
	rst 38h			;763c
	rst 38h			;763d
	rst 38h			;763e
	rst 38h			;763f
	rst 38h			;7640
	rst 38h			;7641
	rst 38h			;7642
	rst 38h			;7643
	rst 38h			;7644
	rst 38h			;7645
	rst 38h			;7646
	rst 38h			;7647
	rst 38h			;7648
	rst 38h			;7649
	rst 38h			;764a
	rst 38h			;764b
	rst 38h			;764c
	rst 38h			;764d
	rst 38h			;764e
	rst 38h			;764f
	rst 38h			;7650
	rst 38h			;7651
	rst 38h			;7652
	rst 38h			;7653
	rst 38h			;7654
	rst 38h			;7655
	rst 38h			;7656
	rst 38h			;7657
	rst 38h			;7658
	rst 38h			;7659
	rst 38h			;765a
	rst 38h			;765b
	rst 38h			;765c
	rst 38h			;765d
	rst 38h			;765e
	rst 38h			;765f
	rst 38h			;7660
	rst 38h			;7661
	rst 38h			;7662
	rst 38h			;7663
	rst 38h			;7664
	rst 38h			;7665
	rst 38h			;7666
	rst 38h			;7667
	rst 38h			;7668
	rst 38h			;7669
	rst 38h			;766a
	rst 38h			;766b
	rst 38h			;766c
	rst 38h			;766d
	rst 38h			;766e
	rst 38h			;766f
	rst 38h			;7670
	rst 38h			;7671
	rst 38h			;7672
	rst 38h			;7673
	rst 38h			;7674
	rst 38h			;7675
	rst 38h			;7676
	rst 38h			;7677
	rst 38h			;7678
	rst 38h			;7679
	rst 38h			;767a
	rst 38h			;767b
	rst 38h			;767c
	rst 38h			;767d
	rst 38h			;767e
	rst 38h			;767f
	rst 38h			;7680
	rst 38h			;7681
	rst 38h			;7682
	rst 38h			;7683
	rst 38h			;7684
	rst 38h			;7685
	rst 38h			;7686
	rst 38h			;7687
	rst 38h			;7688
	rst 38h			;7689
	rst 38h			;768a
	rst 38h			;768b
	rst 38h			;768c
	rst 38h			;768d
	rst 38h			;768e
	rst 38h			;768f
	rst 38h			;7690
	rst 38h			;7691
	rst 38h			;7692
	rst 38h			;7693
	rst 38h			;7694
	rst 38h			;7695
	rst 38h			;7696
	rst 38h			;7697
	rst 38h			;7698
	rst 38h			;7699
	rst 38h			;769a
	rst 38h			;769b
	rst 38h			;769c
	rst 38h			;769d
	rst 38h			;769e
	rst 38h			;769f
	rst 38h			;76a0
	rst 38h			;76a1
	rst 38h			;76a2
	rst 38h			;76a3
	rst 38h			;76a4
	rst 38h			;76a5
	rst 38h			;76a6
	rst 38h			;76a7
	rst 38h			;76a8
	rst 38h			;76a9
	rst 38h			;76aa
	rst 38h			;76ab
	rst 38h			;76ac
	rst 38h			;76ad
	rst 38h			;76ae
	rst 38h			;76af
	rst 38h			;76b0
	rst 38h			;76b1
	rst 38h			;76b2
	rst 38h			;76b3
	rst 38h			;76b4
	rst 38h			;76b5
	rst 38h			;76b6
	rst 38h			;76b7
	rst 38h			;76b8
	rst 38h			;76b9
	rst 38h			;76ba
	rst 38h			;76bb
	rst 38h			;76bc
	rst 38h			;76bd
	rst 38h			;76be
	rst 38h			;76bf
	rst 38h			;76c0
	rst 38h			;76c1
	rst 38h			;76c2
	rst 38h			;76c3
	rst 38h			;76c4
	rst 38h			;76c5
	rst 38h			;76c6
	rst 38h			;76c7
	rst 38h			;76c8
	rst 38h			;76c9
	rst 38h			;76ca
	rst 38h			;76cb
	rst 38h			;76cc
	rst 38h			;76cd
	rst 38h			;76ce
	rst 38h			;76cf
	rst 38h			;76d0
	rst 38h			;76d1
	rst 38h			;76d2
	rst 38h			;76d3
	rst 38h			;76d4
	rst 38h			;76d5
	rst 38h			;76d6
	rst 38h			;76d7
	rst 38h			;76d8
	rst 38h			;76d9
	rst 38h			;76da
	rst 38h			;76db
	rst 38h			;76dc
	rst 38h			;76dd
	rst 38h			;76de
	rst 38h			;76df
	rst 38h			;76e0
	rst 38h			;76e1
	rst 38h			;76e2
	rst 38h			;76e3
	rst 38h			;76e4
	rst 38h			;76e5
	rst 38h			;76e6
	rst 38h			;76e7
	rst 38h			;76e8
	rst 38h			;76e9
	rst 38h			;76ea
	rst 38h			;76eb
	rst 38h			;76ec
	rst 38h			;76ed
	rst 38h			;76ee
	rst 38h			;76ef
	rst 38h			;76f0
	rst 38h			;76f1
	rst 38h			;76f2
	rst 38h			;76f3
	rst 38h			;76f4
	rst 38h			;76f5
	rst 38h			;76f6
	rst 38h			;76f7
	rst 38h			;76f8
	rst 38h			;76f9
	rst 38h			;76fa
	rst 38h			;76fb
	rst 38h			;76fc
	rst 38h			;76fd
	rst 38h			;76fe
	rst 38h			;76ff
	rst 38h			;7700
	rst 38h			;7701
	rst 38h			;7702
	rst 38h			;7703
	rst 38h			;7704
	rst 38h			;7705
	rst 38h			;7706
	rst 38h			;7707
	rst 38h			;7708
	rst 38h			;7709
	rst 38h			;770a
	rst 38h			;770b
	rst 38h			;770c
	rst 38h			;770d
	rst 38h			;770e
	rst 38h			;770f
	rst 38h			;7710
	rst 38h			;7711
	rst 38h			;7712
	rst 38h			;7713
	rst 38h			;7714
	rst 38h			;7715
	rst 38h			;7716
	rst 38h			;7717
	rst 38h			;7718
	rst 38h			;7719
	rst 38h			;771a
	rst 38h			;771b
	rst 38h			;771c
	rst 38h			;771d
	rst 38h			;771e
	rst 38h			;771f
	rst 38h			;7720
	rst 38h			;7721
	rst 38h			;7722
	rst 38h			;7723
	rst 38h			;7724
	rst 38h			;7725
	rst 38h			;7726
	rst 38h			;7727
	rst 38h			;7728
	rst 38h			;7729
	rst 38h			;772a
	rst 38h			;772b
	rst 38h			;772c
	rst 38h			;772d
	rst 38h			;772e
	rst 38h			;772f
	rst 38h			;7730
	rst 38h			;7731
	rst 38h			;7732
	rst 38h			;7733
	rst 38h			;7734
	rst 38h			;7735
	rst 38h			;7736
	rst 38h			;7737
	rst 38h			;7738
	rst 38h			;7739
	rst 38h			;773a
	rst 38h			;773b
	rst 38h			;773c
	rst 38h			;773d
	rst 38h			;773e
	rst 38h			;773f
	rst 38h			;7740
	rst 38h			;7741
	rst 38h			;7742
	rst 38h			;7743
	rst 38h			;7744
	rst 38h			;7745
	rst 38h			;7746
	rst 38h			;7747
	rst 38h			;7748
	rst 38h			;7749
	rst 38h			;774a
	rst 38h			;774b
	rst 38h			;774c
	rst 38h			;774d
	rst 38h			;774e
	rst 38h			;774f
	rst 38h			;7750
	rst 38h			;7751
	rst 38h			;7752
	rst 38h			;7753
	rst 38h			;7754
	rst 38h			;7755
	rst 38h			;7756
	rst 38h			;7757
	rst 38h			;7758
	rst 38h			;7759
	rst 38h			;775a
	rst 38h			;775b
	rst 38h			;775c
	rst 38h			;775d
	rst 38h			;775e
	rst 38h			;775f
	rst 38h			;7760
	rst 38h			;7761
	rst 38h			;7762
	rst 38h			;7763
	rst 38h			;7764
	rst 38h			;7765
	rst 38h			;7766
	rst 38h			;7767
	rst 38h			;7768
	rst 38h			;7769
	rst 38h			;776a
	rst 38h			;776b
	rst 38h			;776c
	rst 38h			;776d
	rst 38h			;776e
	rst 38h			;776f
	rst 38h			;7770
	rst 38h			;7771
	rst 38h			;7772
	rst 38h			;7773
	rst 38h			;7774
	rst 38h			;7775
	rst 38h			;7776
	rst 38h			;7777
	rst 38h			;7778
	rst 38h			;7779
	rst 38h			;777a
	rst 38h			;777b
	rst 38h			;777c
	rst 38h			;777d
	rst 38h			;777e
	rst 38h			;777f
	rst 38h			;7780
	rst 38h			;7781
	rst 38h			;7782
	rst 38h			;7783
	rst 38h			;7784
	rst 38h			;7785
	rst 38h			;7786
	rst 38h			;7787
	rst 38h			;7788
	rst 38h			;7789
	rst 38h			;778a
	rst 38h			;778b
	rst 38h			;778c
	rst 38h			;778d
	rst 38h			;778e
	rst 38h			;778f
	rst 38h			;7790
	rst 38h			;7791
	rst 38h			;7792
	rst 38h			;7793
	rst 38h			;7794
	rst 38h			;7795
	rst 38h			;7796
	rst 38h			;7797
	rst 38h			;7798
	rst 38h			;7799
	rst 38h			;779a
	rst 38h			;779b
	rst 38h			;779c
	rst 38h			;779d
	rst 38h			;779e
	rst 38h			;779f
	rst 38h			;77a0
	rst 38h			;77a1
	rst 38h			;77a2
	rst 38h			;77a3
	rst 38h			;77a4
	rst 38h			;77a5
	rst 38h			;77a6
	rst 38h			;77a7
	rst 38h			;77a8
	rst 38h			;77a9
	rst 38h			;77aa
	rst 38h			;77ab
	rst 38h			;77ac
	rst 38h			;77ad
	rst 38h			;77ae
	rst 38h			;77af
	rst 38h			;77b0
	rst 38h			;77b1
	rst 38h			;77b2
	rst 38h			;77b3
	rst 38h			;77b4
	rst 38h			;77b5
	rst 38h			;77b6
	rst 38h			;77b7
	rst 38h			;77b8
	rst 38h			;77b9
	rst 38h			;77ba
	rst 38h			;77bb
	rst 38h			;77bc
	rst 38h			;77bd
	rst 38h			;77be
	rst 38h			;77bf
	rst 38h			;77c0
	rst 38h			;77c1
	rst 38h			;77c2
	rst 38h			;77c3
	rst 38h			;77c4
	rst 38h			;77c5
	rst 38h			;77c6
	rst 38h			;77c7
	rst 38h			;77c8
	rst 38h			;77c9
	rst 38h			;77ca
	rst 38h			;77cb
	rst 38h			;77cc
	rst 38h			;77cd
	rst 38h			;77ce
	rst 38h			;77cf
	rst 38h			;77d0
	rst 38h			;77d1
	rst 38h			;77d2
	rst 38h			;77d3
	rst 38h			;77d4
	rst 38h			;77d5
	rst 38h			;77d6
	rst 38h			;77d7
	rst 38h			;77d8
	rst 38h			;77d9
	rst 38h			;77da
	rst 38h			;77db
	rst 38h			;77dc
	rst 38h			;77dd
	rst 38h			;77de
	rst 38h			;77df
	rst 38h			;77e0
	rst 38h			;77e1
	rst 38h			;77e2
	rst 38h			;77e3
	rst 38h			;77e4
	rst 38h			;77e5
	rst 38h			;77e6
	rst 38h			;77e7
	rst 38h			;77e8
	rst 38h			;77e9
	rst 38h			;77ea
	rst 38h			;77eb
	rst 38h			;77ec
	rst 38h			;77ed
	rst 38h			;77ee
	rst 38h			;77ef
	rst 38h			;77f0
	rst 38h			;77f1
	rst 38h			;77f2
	rst 38h			;77f3
	rst 38h			;77f4
	rst 38h			;77f5
	rst 38h			;77f6
	rst 38h			;77f7
	rst 38h			;77f8
	rst 38h			;77f9
	rst 38h			;77fa
	rst 38h			;77fb
	rst 38h			;77fc
	rst 38h			;77fd
	rst 38h			;77fe
	rst 38h			;77ff
	rst 38h			;7800
	rst 38h			;7801
	rst 38h			;7802
	rst 38h			;7803
	rst 38h			;7804
	rst 38h			;7805
	rst 38h			;7806
	rst 38h			;7807
	rst 38h			;7808
	rst 38h			;7809
	rst 38h			;780a
	rst 38h			;780b
	rst 38h			;780c
	rst 38h			;780d
	rst 38h			;780e
	rst 38h			;780f
	rst 38h			;7810
	rst 38h			;7811
	rst 38h			;7812
	rst 38h			;7813
	rst 38h			;7814
	rst 38h			;7815
	rst 38h			;7816
	rst 38h			;7817
	rst 38h			;7818
	rst 38h			;7819
	rst 38h			;781a
	rst 38h			;781b
	rst 38h			;781c
	rst 38h			;781d
	rst 38h			;781e
	rst 38h			;781f
	rst 38h			;7820
	rst 38h			;7821
	rst 38h			;7822
	rst 38h			;7823
	rst 38h			;7824
	rst 38h			;7825
	rst 38h			;7826
	rst 38h			;7827
	rst 38h			;7828
	rst 38h			;7829
	rst 38h			;782a
	rst 38h			;782b
	rst 38h			;782c
	rst 38h			;782d
	rst 38h			;782e
	rst 38h			;782f
	rst 38h			;7830
	rst 38h			;7831
	rst 38h			;7832
	rst 38h			;7833
	rst 38h			;7834
	rst 38h			;7835
	rst 38h			;7836
	rst 38h			;7837
	rst 38h			;7838
	rst 38h			;7839
	rst 38h			;783a
	rst 38h			;783b
	rst 38h			;783c
	rst 38h			;783d
	rst 38h			;783e
	rst 38h			;783f
	rst 38h			;7840
	rst 38h			;7841
	rst 38h			;7842
	rst 38h			;7843
	rst 38h			;7844
	rst 38h			;7845
	rst 38h			;7846
	rst 38h			;7847
	rst 38h			;7848
	rst 38h			;7849
	rst 38h			;784a
	rst 38h			;784b
	rst 38h			;784c
	rst 38h			;784d
	rst 38h			;784e
	rst 38h			;784f
	rst 38h			;7850
	rst 38h			;7851
	rst 38h			;7852
	rst 38h			;7853
	rst 38h			;7854
	rst 38h			;7855
	rst 38h			;7856
	rst 38h			;7857
	rst 38h			;7858
	rst 38h			;7859
	rst 38h			;785a
	rst 38h			;785b
	rst 38h			;785c
	rst 38h			;785d
	rst 38h			;785e
	rst 38h			;785f
	rst 38h			;7860
	rst 38h			;7861
	rst 38h			;7862
	rst 38h			;7863
	rst 38h			;7864
	rst 38h			;7865
	rst 38h			;7866
	rst 38h			;7867
	rst 38h			;7868
	rst 38h			;7869
	rst 38h			;786a
	rst 38h			;786b
	rst 38h			;786c
	rst 38h			;786d
	rst 38h			;786e
	rst 38h			;786f
	rst 38h			;7870
	rst 38h			;7871
	rst 38h			;7872
	rst 38h			;7873
	rst 38h			;7874
	rst 38h			;7875
	rst 38h			;7876
	rst 38h			;7877
	rst 38h			;7878
	rst 38h			;7879
	rst 38h			;787a
	rst 38h			;787b
	rst 38h			;787c
	rst 38h			;787d
	rst 38h			;787e
	rst 38h			;787f
	rst 38h			;7880
	rst 38h			;7881
	rst 38h			;7882
	rst 38h			;7883
	rst 38h			;7884
	rst 38h			;7885
	rst 38h			;7886
	rst 38h			;7887
	rst 38h			;7888
	rst 38h			;7889
	rst 38h			;788a
	rst 38h			;788b
	rst 38h			;788c
	rst 38h			;788d
	rst 38h			;788e
	rst 38h			;788f
	rst 38h			;7890
	rst 38h			;7891
	rst 38h			;7892
	rst 38h			;7893
	rst 38h			;7894
	rst 38h			;7895
	rst 38h			;7896
	rst 38h			;7897
	rst 38h			;7898
	rst 38h			;7899
	rst 38h			;789a
	rst 38h			;789b
	rst 38h			;789c
	rst 38h			;789d
	rst 38h			;789e
	rst 38h			;789f
	rst 38h			;78a0
	rst 38h			;78a1
	rst 38h			;78a2
	rst 38h			;78a3
	rst 38h			;78a4
	rst 38h			;78a5
	rst 38h			;78a6
	rst 38h			;78a7
	rst 38h			;78a8
	rst 38h			;78a9
	rst 38h			;78aa
	rst 38h			;78ab
	rst 38h			;78ac
	rst 38h			;78ad
	rst 38h			;78ae
	rst 38h			;78af
	rst 38h			;78b0
	rst 38h			;78b1
	rst 38h			;78b2
	rst 38h			;78b3
	rst 38h			;78b4
	rst 38h			;78b5
	rst 38h			;78b6
	rst 38h			;78b7
	rst 38h			;78b8
	rst 38h			;78b9
	rst 38h			;78ba
	rst 38h			;78bb
	rst 38h			;78bc
	rst 38h			;78bd
	rst 38h			;78be
	rst 38h			;78bf
	rst 38h			;78c0
	rst 38h			;78c1
	rst 38h			;78c2
	rst 38h			;78c3
	rst 38h			;78c4
	rst 38h			;78c5
	rst 38h			;78c6
	rst 38h			;78c7
	rst 38h			;78c8
	rst 38h			;78c9
	rst 38h			;78ca
	rst 38h			;78cb
	rst 38h			;78cc
	rst 38h			;78cd
	rst 38h			;78ce
	rst 38h			;78cf
	rst 38h			;78d0
	rst 38h			;78d1
	rst 38h			;78d2
	rst 38h			;78d3
	rst 38h			;78d4
	rst 38h			;78d5
	rst 38h			;78d6
	rst 38h			;78d7
	rst 38h			;78d8
	rst 38h			;78d9
	rst 38h			;78da
	rst 38h			;78db
	rst 38h			;78dc
	rst 38h			;78dd
	rst 38h			;78de
	rst 38h			;78df
	rst 38h			;78e0
	rst 38h			;78e1
	rst 38h			;78e2
	rst 38h			;78e3
	rst 38h			;78e4
	rst 38h			;78e5
	rst 38h			;78e6
	rst 38h			;78e7
	rst 38h			;78e8
	rst 38h			;78e9
	rst 38h			;78ea
	rst 38h			;78eb
	rst 38h			;78ec
	rst 38h			;78ed
	rst 38h			;78ee
	rst 38h			;78ef
	rst 38h			;78f0
	rst 38h			;78f1
	rst 38h			;78f2
	rst 38h			;78f3
	rst 38h			;78f4
	rst 38h			;78f5
	rst 38h			;78f6
	rst 38h			;78f7
	rst 38h			;78f8
	rst 38h			;78f9
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
	rst 38h			;7a4f
	rst 38h			;7a50
	rst 38h			;7a51
	rst 38h			;7a52
	rst 38h			;7a53
	rst 38h			;7a54
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
