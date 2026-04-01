; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank10.asm /tmp/smanbow2_bank_10.bin

	org 04000h

	ld c,l			;4000
	ld h,c			;4001
	ld l,(hl)		;4002
	ld h,d			;4003
	ld l,a			;4004
l4005h:
	ld (hl),a		;4005
	jr nz,l403ah		;4006
	jr nz,$+47		;4008
	jr nz,$+73		;400a
	ld h,c			;400c
	ld l,l			;400d
	ld h,l			;400e
	jr nz,l4060h		;400f
	halt			;4011
	ld h,l			;4012
	ld (hl),d		;4013
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
	jr nz,$+34		;4032
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
	ld (bc),a		;404e
	ld bc,00000h		;404f
l4052h:
	ld bc,00002h		;4052
l4055h:
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
l406ah:
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
l40dch:
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
sub_414dh:
	nop			;414d
	nop			;414e
	nop			;414f
	nop			;4150
	ld d,00fh		;4151
	rrca			;4153
	rrca			;4154
	rrca			;4155
	rrca			;4156
	ld de,03402h		;4157
	djnz l40dch		;415a
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
l4179h:
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
l4199h:
	nop			;4199
	nop			;419a
	nop			;419b
	nop			;419c
	nop			;419d
	nop			;419e
l419fh:
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
	inc d			;41c0
	rrca			;41c1
	inc hl			;41c2
	ld a,(bc)		;41c3
	jr nz,l41d5h		;41c4
	inc hl			;41c6
	ld b,000h		;41c7
	nop			;41c9
	dec b			;41ca
	inc d			;41cb
	ex af,af'		;41cc
	rrca			;41cd
	ld l,d			;41ce
	ld bc,00169h		;41cf
	ld (02305h),hl		;41d2
l41d5h:
	inc bc			;41d5
	nop			;41d6
	nop			;41d7
	inc d			;41d8
	rrca			;41d9
	ld (0230ah),hl		;41da
	rrca			;41dd
	inc hl			;41de
	ld b,022h		;41df
	inc bc			;41e1
	dec b			;41e2
	nop			;41e3
	ld l,c			;41e4
	ld bc,00a27h		;41e5
	daa			;41e8
	rrca			;41e9
	ld (02305h),hl		;41ea
	inc bc			;41ed
	dec b			;41ee
	nop			;41ef
	ex af,af'		;41f0
	rrca			;41f1
	jr nz,l41feh		;41f2
	inc hl			;41f4
	rrca			;41f5
	jr nz,l41feh		;41f6
	ld (00503h),hl		;41f8
	nop			;41fb
	nop			;41fc
	nop			;41fd
l41feh:
	nop			;41fe
	nop			;41ff
	nop			;4200
	nop			;4201
	ld e,005h		;4202
	jr nz,l4209h		;4204
	nop			;4206
	nop			;4207
	nop			;4208
l4209h:
	nop			;4209
	ld e,00ah		;420a
	inc hl			;420c
	rrca			;420d
	dec de			;420e
	ld b,01eh		;420f
	inc bc			;4211
	dec b			;4212
	nop			;4213
	nop			;4214
	nop			;4215
	dec h			;4216
	ld a,(bc)		;4217
	dec h			;4218
	rrca			;4219
	dec h			;421a
	dec b			;421b
	dec de			;421c
	inc bc			;421d
	nop			;421e
	nop			;421f
	ld b,00fh		;4220
	dec de			;4222
	ld a,(bc)		;4223
	jr nz,l4235h		;4224
	daa			;4226
	ld b,025h		;4227
	inc bc			;4229
	dec b			;422a
	nop			;422b
	nop			;422c
	nop			;422d
	nop			;422e
	nop			;422f
l4230h:
	nop			;4230
	nop			;4231
	dec h			;4232
	dec b			;4233
	daa			;4234
l4235h:
	inc bc			;4235
	nop			;4236
	nop			;4237
	inc b			;4238
	rrca			;4239
	dec h			;423a
	ld a,(bc)		;423b
	inc hl			;423c
	rrca			;423d
	daa			;423e
	ld b,025h		;423f
	inc bc			;4241
	dec b			;4242
	nop			;4243
	nop			;4244
	nop			;4245
	inc hl			;4246
	ld a,(bc)		;4247
	cpl			;4248
	ld a,(bc)		;4249
	dec h			;424a
	dec b			;424b
	daa			;424c
	inc bc			;424d
	nop			;424e
	nop			;424f
	inc bc			;4250
	rrca			;4251
	daa			;4252
	ld a,(bc)		;4253
	ld (0270fh),hl		;4254
	ld b,025h		;4257
	inc bc			;4259
	dec b			;425a
	nop			;425b
	nop			;425c
	nop			;425d
	nop			;425e
	nop			;425f
	nop			;4260
	nop			;4261
	ld hl,(02705h)		;4262
	inc bc			;4265
	nop			;4266
	nop			;4267
	dec c			;4268
	rrca			;4269
	nop			;426a
l426bh:
	nop			;426b
	nop			;426c
	nop			;426d
	daa			;426e
	ld b,02ah		;426f
	inc bc			;4271
l4272h:
	dec b			;4272
	nop			;4273
	nop			;4274
	nop			;4275
	nop			;4276
	nop			;4277
	nop			;4278
	nop			;4279
	dec h			;427a
	dec b			;427b
	daa			;427c
	inc bc			;427d
	dec b			;427e
	nop			;427f
	dec bc			;4280
	rrca			;4281
	ld hl,(01e0ah)		;4282
	rrca			;4285
	jr nz,l428eh		;4286
	dec h			;4288
l4289h:
	inc bc			;4289
	dec b			;428a
	nop			;428b
	nop			;428c
	nop			;428d
l428eh:
	nop			;428e
	nop			;428f
	nop			;4290
	nop			;4291
	ld (02005h),hl		;4292
	inc bc			;4295
	nop			;4296
	nop			;4297
	nop			;4298
	nop			;4299
	nop			;429a
	nop			;429b
	nop			;429c
	nop			;429d
	inc hl			;429e
	ld b,022h		;429f
	inc bc			;42a1
	dec b			;42a2
	nop			;42a3
	nop			;42a4
	nop			;42a5
	nop			;42a6
	nop			;42a7
	nop			;42a8
	nop			;42a9
	nop			;42aa
	nop			;42ab
	inc hl			;42ac
	inc bc			;42ad
	nop			;42ae
	nop			;42af
	ld b,00fh		;42b0
	nop			;42b2
	nop			;42b3
	dec de			;42b4
	rrca			;42b5
	daa			;42b6
	ld b,025h		;42b7
	inc bc			;42b9
	dec b			;42ba
	nop			;42bb
	nop			;42bc
	nop			;42bd
	nop			;42be
	nop			;42bf
	nop			;42c0
	nop			;42c1
	nop			;42c2
	nop			;42c3
	daa			;42c4
	inc bc			;42c5
	nop			;42c6
	nop			;42c7
	nop			;42c8
	nop			;42c9
	nop			;42ca
	nop			;42cb
	nop			;42cc
	nop			;42cd
	ld hl,(02a06h)		;42ce
	inc bc			;42d1
	dec b			;42d2
	nop			;42d3
	nop			;42d4
	nop			;42d5
	nop			;42d6
	nop			;42d7
	nop			;42d8
	nop			;42d9
	nop			;42da
	nop			;42db
	daa			;42dc
	inc bc			;42dd
	dec b			;42de
	nop			;42df
	ex af,af'		;42e0
	rrca			;42e1
	inc l			;42e2
	ld a,(bc)		;42e3
	jr nz,l42f5h		;42e4
	inc l			;42e6
	ld b,02ah		;42e7
	inc bc			;42e9
	nop			;42ea
	nop			;42eb
	ld h,a			;42ec
	ld bc,00167h		;42ed
sub_42f0h:
	ld h,a			;42f0
	ld bc,00167h		;42f1
	inc l			;42f4
l42f5h:
	inc bc			;42f5
	nop			;42f6
	ld bc,0016eh		;42f7
	ld l,(hl)		;42fa
	ld bc,0016eh		;42fb
	nop			;42fe
	nop			;42ff
	ld h,a			;4300
	ld bc,00000h		;4301
	nop			;4304
	nop			;4305
	nop			;4306
	nop			;4307
	nop			;4308
	nop			;4309
	ld l,(hl)		;430a
	ld bc,00000h		;430b
	nop			;430e
l430fh:
	nop			;430f
	nop			;4310
	nop			;4311
	nop			;4312
	nop			;4313
	nop			;4314
	nop			;4315
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
	nop			;4320
	nop			;4321
	nop			;4322
	nop			;4323
	ld l,(hl)		;4324
	ld bc,00000h		;4325
	nop			;4328
	nop			;4329
	nop			;432a
	nop			;432b
	nop			;432c
	nop			;432d
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
	nop			;4338
	nop			;4339
	nop			;433a
	nop			;433b
	nop			;433c
	nop			;433d
	nop			;433e
	nop			;433f
	nop			;4340
	nop			;4341
	nop			;4342
	nop			;4343
	nop			;4344
	nop			;4345
	nop			;4346
	nop			;4347
	nop			;4348
	nop			;4349
	nop			;434a
	nop			;434b
	nop			;434c
	nop			;434d
	nop			;434e
	nop			;434f
	nop			;4350
	nop			;4351
	nop			;4352
	nop			;4353
	nop			;4354
	nop			;4355
	nop			;4356
	nop			;4357
	nop			;4358
	nop			;4359
	nop			;435a
	nop			;435b
	nop			;435c
	nop			;435d
	nop			;435e
	nop			;435f
	nop			;4360
	nop			;4361
	nop			;4362
	nop			;4363
	nop			;4364
	nop			;4365
	nop			;4366
	nop			;4367
	nop			;4368
	nop			;4369
	nop			;436a
	nop			;436b
	nop			;436c
	nop			;436d
	nop			;436e
	nop			;436f
	nop			;4370
	nop			;4371
	nop			;4372
	nop			;4373
	nop			;4374
	nop			;4375
	nop			;4376
	nop			;4377
	nop			;4378
	nop			;4379
	nop			;437a
	nop			;437b
	nop			;437c
	nop			;437d
	nop			;437e
	nop			;437f
	nop			;4380
	nop			;4381
	nop			;4382
	nop			;4383
	nop			;4384
l4385h:
	nop			;4385
	nop			;4386
	nop			;4387
	nop			;4388
	nop			;4389
	nop			;438a
	nop			;438b
	nop			;438c
	nop			;438d
	nop			;438e
	nop			;438f
	nop			;4390
	nop			;4391
	nop			;4392
	nop			;4393
	nop			;4394
	nop			;4395
	nop			;4396
	nop			;4397
	nop			;4398
	nop			;4399
	nop			;439a
	nop			;439b
	nop			;439c
	nop			;439d
	nop			;439e
	nop			;439f
	nop			;43a0
	nop			;43a1
	nop			;43a2
	nop			;43a3
	nop			;43a4
	nop			;43a5
	nop			;43a6
	nop			;43a7
	nop			;43a8
	nop			;43a9
	nop			;43aa
	nop			;43ab
	nop			;43ac
	nop			;43ad
	nop			;43ae
	nop			;43af
	nop			;43b0
	nop			;43b1
	nop			;43b2
	nop			;43b3
	nop			;43b4
	nop			;43b5
	nop			;43b6
	nop			;43b7
	nop			;43b8
	nop			;43b9
	nop			;43ba
	nop			;43bb
	nop			;43bc
	nop			;43bd
	nop			;43be
	nop			;43bf
	nop			;43c0
	nop			;43c1
	nop			;43c2
	nop			;43c3
	nop			;43c4
	nop			;43c5
	nop			;43c6
	nop			;43c7
	nop			;43c8
	nop			;43c9
	nop			;43ca
	nop			;43cb
	nop			;43cc
	nop			;43cd
	nop			;43ce
	nop			;43cf
	nop			;43d0
	nop			;43d1
	nop			;43d2
	nop			;43d3
	nop			;43d4
	nop			;43d5
	nop			;43d6
	nop			;43d7
	nop			;43d8
	nop			;43d9
	nop			;43da
	nop			;43db
	nop			;43dc
	nop			;43dd
	nop			;43de
	nop			;43df
	nop			;43e0
	nop			;43e1
	nop			;43e2
	nop			;43e3
l43e4h:
	nop			;43e4
	nop			;43e5
	nop			;43e6
	nop			;43e7
	nop			;43e8
	nop			;43e9
	nop			;43ea
	nop			;43eb
	nop			;43ec
	nop			;43ed
	nop			;43ee
	nop			;43ef
	nop			;43f0
	nop			;43f1
	nop			;43f2
	nop			;43f3
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
	nop			;43ff
	rst 38h			;4400
	jp c,0e521h		;4401
	defb 0edh ;next byte illegal after ed	;4404
	and 0e5h		;4405
	defb 0edh ;next byte illegal after ed	;4407
	and 0e5h		;4408
	defb 0edh ;next byte illegal after ed	;440a
	and 0e5h		;440b
	defb 0edh ;next byte illegal after ed	;440d
	and 0e5h		;440e
	defb 0edh ;next byte illegal after ed	;4410
	and 0e5h		;4411
	defb 0edh ;next byte illegal after ed	;4413
	and 065h		;4414
	defb 0edh ;next byte illegal after ed	;4416
	ld h,(hl)		;4417
	inc b			;4418
	rst 20h			;4419
	inc bc			;441a
	ld b,d			;441b
	defb 0edh ;next byte illegal after ed	;441c
	inc bc			;441d
	ld hl,0e703h		;441e
	ld (bc),a		;4421
	ld bc,00402h		;4422
	defb 0edh ;next byte illegal after ed	;4425
	ld hl,06723h		;4426
	ld bc,04402h		;4429
	defb 0edh ;next byte illegal after ed	;442c
	add a,006h		;442d
	dec h			;442f
	inc b			;4430
	ld b,025h		;4431
l4433h:
	dec h			;4433
	defb 0edh ;next byte illegal after ed	;4434
	ld h,006h		;4435
	dec b			;4437
	dec b			;4438
	inc b			;4439
	ld b,005h		;443a
	rlca			;443c
	inc h			;443d
	ld b,(hl)		;443e
	dec b			;443f
	defb 0edh ;next byte illegal after ed	;4440
	ld b,025h		;4441
	dec b			;4443
	ld b,006h		;4444
	rlca			;4446
	dec h			;4447
	dec b			;4448
	ld b,004h		;4449
	daa			;444b
	dec b			;444c
	ld hl,026edh		;444d
	inc bc			;4450
	rlca			;4451
	ld b,006h		;4452
	dec b			;4454
	dec b			;4455
	ld b,006h		;4456
	dec b			;4458
	dec b			;4459
	rlca			;445a
	ld b,006h		;445b
	defb 0edh ;next byte illegal after ed	;445d
	ld bc,02505h		;445e
	ld h,(hl)		;4461
	inc b			;4462
	ld (bc),a		;4463
l4464h:
	ld b,007h		;4464
	inc h			;4466
	ld b,(hl)		;4467
	defb 0edh ;next byte illegal after ed	;4468
	dec b			;4469
	ld b,007h		;446a
	inc b			;446c
	ld b,002h		;446d
	daa			;446f
	inc h			;4470
	dec b			;4471
	ld (bc),a		;4472
	rlca			;4473
	inc b			;4474
	ld h,(hl)		;4475
	defb 0edh ;next byte illegal after ed	;4476
	ld bc,04625h		;4477
	dec h			;447a
	rlca			;447b
	rlca			;447c
	dec b			;447d
	inc bc			;447e
	inc bc			;447f
	ld i,a			;4480
	ld b,004h		;4482
	nop			;4484
	ld b,003h		;4485
	daa			;4487
	ld b,000h		;4488
	ld b,003h		;448a
	ex af,af'		;448c
	ld (bc),a		;448d
	rrd			;448e
	ld hl,00104h		;4490
	dec b			;4493
	inc b			;4494
	daa			;4495
	ld b,004h		;4496
	inc b			;4498
	nop			;4499
	im 0			;449a
	rlca			;449c
	dec b			;449d
	inc b			;449e
	nop			;449f
	nop			;44a0
	ld b,007h		;44a1
	ex af,af'		;44a3
	ld b,004h		;44a4
	nop			;44a6
	dec b			;44a7
	dec b			;44a8
	defb 0edh ;next byte illegal after ed	;44a9
	rlca			;44aa
	ex af,af'		;44ab
	ex af,af'		;44ac
	inc b			;44ad
	nop			;44ae
	ld b,007h		;44af
	dec h			;44b1
	nop			;44b2
	rlca			;44b3
	rlca			;44b4
	dec b			;44b5
	ld b,004h		;44b6
	dec b			;44b8
	ld c,l			;44b9
	dec b			;44ba
	ld b,000h		;44bb
	add hl,hl		;44bd
	ex af,af'		;44be
	call pe,00805h		;44bf
	ex af,af'		;44c2
	ld hl,(00607h)		;44c3
	add hl,bc		;44c6
	nop			;44c7
	ld hl,(00927h)		;44c8
	ex af,af'		;44cb
	ld a,(bc)		;44cc
	call pe,00927h		;44cd
	adc a,d			;44d0
	ex af,af'		;44d1
	inc b			;44d2
	rlca			;44d3
	dec b			;44d4
	ld h,00bh		;44d5
	ld hl,(0044ch)		;44d7
	daa			;44da
	dec bc			;44db
	ld a,(bc)		;44dc
	ld c,e			;44dd
	ld b,08bh		;44de
	add hl,hl		;44e0
	ld hl,(00807h)		;44e1
	dec hl			;44e4
	add hl,bc		;44e5
	inc c			;44e6
	inc b			;44e7
	dec hl			;44e8
	ld a,(bc)		;44e9
	dec b			;44ea
	dec hl			;44eb
	ex af,af'		;44ec
l44edh:
	call pe,0ca20h		;44ed
	inc bc			;44f0
	ex af,af'		;44f1
	rlca			;44f2
	dec b			;44f3
	rlca			;44f4
	dec b			;44f5
	call pe,00809h		;44f6
	ld a,(bc)		;44f9
	ld b,a			;44fa
	adc a,c			;44fb
	jr z,l4527h		;44fc
	ld hl,(0074bh)		;44fe
	dec hl			;4501
	ld a,(bc)		;4502
	jr z,l450fh		;4503
	ld a,(bc)		;4505
	ld l,e			;4506
	ld c,e			;4507
	add hl,bc		;4508
	ex af,af'		;4509
	rlca			;450a
	ld a,(bc)		;450b
	inc b			;450c
	inc l			;450d
	dec hl			;450e
l450fh:
	ex af,af'		;450f
	ld (bc),a		;4510
	dec bc			;4511
	xor d			;4512
	inc b			;4513
	ld c,h			;4514
	ex af,af'		;4515
	add hl,bc		;4516
	dec b			;4517
	dec bc			;4518
	daa			;4519
	call z,00609h		;451a
	ld a,(bc)		;451d
l451eh:
	rlca			;451e
	ex af,af'		;451f
	inc b			;4520
	ld hl,(00b28h)		;4521
	inc b			;4524
	dec bc			;4525
	ld c,d			;4526
l4527h:
	ld b,04ch		;4527
	rlca			;4529
	ld a,(bc)		;452a
	add hl,hl		;452b
	inc bc			;452c
	dec bc			;452d
	ex af,af'		;452e
	inc l			;452f
	dec bc			;4530
l4531h:
	add hl,bc		;4531
	ld a,(bc)		;4532
	jr z,l4540h		;4533
	add hl,hl		;4535
	inc l			;4536
	add hl,bc		;4537
	dec bc			;4538
	ld a,(bc)		;4539
	dec bc			;453a
	add hl,bc		;453b
	ex af,af'		;453c
	ld a,(bc)		;453d
	ld a,(bc)		;453e
	ld c,d			;453f
l4540h:
	dec hl			;4540
	dec bc			;4541
	ld c,d			;4542
	ld hl,(00b09h)		;4543
	dec bc			;4546
	add hl,hl		;4547
	ld a,(bc)		;4548
	ld hl,(0084bh)		;4549
	ld c,e			;454c
	add hl,bc		;454d
	ld c,b			;454e
	ld a,(bc)		;454f
	dec hl			;4550
	inc c			;4551
	ld c,e			;4552
	add hl,bc		;4553
	ld a,(bc)		;4554
	ex af,af'		;4555
	add hl,bc		;4556
	ld hl,(00c0ah)		;4557
	add hl,hl		;455a
	adc a,e			;455b
	add hl,bc		;455c
	jp pe,0082ah		;455d
	add hl,bc		;4560
	adc a,h			;4561
	ex af,af'		;4562
	daa			;4563
	ex af,af'		;4564
	ld a,(bc)		;4565
	daa			;4566
	dec bc			;4567
	add hl,bc		;4568
	inc l			;4569
	ld c,d			;456a
	ex af,af'		;456b
	ld h,02bh		;456c
	dec hl			;456e
	rlca			;456f
	inc l			;4570
	add hl,bc		;4571
l4572h:
	ld a,(bc)		;4572
	ex af,af'		;4573
	dec hl			;4574
	add hl,bc		;4575
	rlca			;4576
	dec hl			;4577
	ld hl,(02b0ch)		;4578
	ex af,af'		;457b
	ex af,af'		;457c
	ld c,c			;457d
	ld hl,(00b2ch)		;457e
	dec bc			;4581
	inc bc			;4582
	ex af,af'		;4583
	ld a,(bc)		;4584
	ld b,00ch		;4585
	inc c			;4587
	add hl,bc		;4588
	ld c,e			;4589
	dec bc			;458a
	rlca			;458b
l458ch:
	add hl,bc		;458c
	dec b			;458d
	ld c,d			;458e
	add hl,bc		;458f
	inc l			;4590
	ex af,af'		;4591
	inc b			;4592
	dec bc			;4593
	add hl,bc		;4594
	dec b			;4595
	inc l			;4596
	dec bc			;4597
	add hl,bc		;4598
	ld hl,(02b08h)		;4599
	nop			;459c
	ld l,e			;459d
	add hl,bc		;459e
	inc c			;459f
	ld h,06bh		;45a0
	dec b			;45a2
	inc c			;45a3
	add hl,bc		;45a4
	dec hl			;45a5
	rlca			;45a6
	ld a,(bc)		;45a7
	add hl,bc		;45a8
	dec bc			;45a9
	inc c			;45aa
	ex af,af'		;45ab
	ld a,(bc)		;45ac
	dec bc			;45ad
	dec b			;45ae
	ex af,af'		;45af
	inc l			;45b0
	dec bc			;45b1
	dec bc			;45b2
	ld b,001h		;45b3
	dec bc			;45b5
	add hl,bc		;45b6
	ld a,(bc)		;45b7
	xor h			;45b8
	ld hl,(00709h)		;45b9
	ex af,af'		;45bc
	ld h,009h		;45bd
	ld hl,(0080ah)		;45bf
	ld a,(bc)		;45c2
	ex af,af'		;45c3
	add hl,bc		;45c4
	inc l			;45c5
	ld a,(bc)		;45c6
	ld a,(bc)		;45c7
	add hl,bc		;45c8
	add hl,hl		;45c9
	dec bc			;45ca
	rlca			;45cb
	inc l			;45cc
l45cdh:
	ld c,c			;45cd
	ld a,(bc)		;45ce
	add hl,hl		;45cf
	dec hl			;45d0
	ld a,(bc)		;45d1
	ld a,(bc)		;45d2
	call pe,00809h		;45d3
	ex af,af'		;45d6
	ld c,c			;45d7
	add hl,bc		;45d8
	ex af,af'		;45d9
	rlca			;45da
	ld c,d			;45db
	inc b			;45dc
	ex af,af'		;45dd
	dec b			;45de
	add hl,bc		;45df
	xor h			;45e0
	rlca			;45e1
	ld hl,(02509h)		;45e2
	add hl,bc		;45e5
	ld a,(bc)		;45e6
	ld b,04bh		;45e7
	rlca			;45e9
	ld a,(bc)		;45ea
	nop			;45eb
	adc a,e			;45ec
	ex af,af'		;45ed
	inc c			;45ee
	dec b			;45ef
	dec hl			;45f0
	ld (bc),a		;45f1
	dec b			;45f2
	call pe,00a06h		;45f3
	inc bc			;45f6
	dec hl			;45f7
	ld b,003h		;45f8
	ld a,(bc)		;45fa
	ld b,009h		;45fb
	inc b			;45fd
	dec hl			;45fe
	ld b,005h		;45ff
	dec hl			;4601
	ld a,(bc)		;4602
	nop			;4603
	dec hl			;4604
	ld a,(bc)		;4605
	inc c			;4606
	ex af,af'		;4607
	dec hl			;4608
	ex af,af'		;4609
l460ah:
	nop			;460a
	ld a,(bc)		;460b
	add hl,bc		;460c
	inc l			;460d
	dec bc			;460e
	ld a,(bc)		;460f
	ld a,(bc)		;4610
	nop			;4611
	add hl,bc		;4612
	ex af,af'		;4613
	ex af,af'		;4614
	inc l			;4615
	inc c			;4616
	ld a,(bc)		;4617
	add hl,hl		;4618
	ld (bc),a		;4619
	dec bc			;461a
	ld a,(bc)		;461b
	ld c,h			;461c
	ex af,af'		;461d
	ex af,af'		;461e
	ld a,(bc)		;461f
	dec bc			;4620
	ex af,af'		;4621
	ld b,00bh		;4622
	ld b,009h		;4624
	xor h			;4626
	ld a,(bc)		;4627
	ld hl,(00407h)		;4628
	ex af,af'		;462b
	ld (bc),a		;462c
	ld a,(bc)		;462d
	add hl,bc		;462e
	dec bc			;462f
	ex af,af'		;4630
	ld l,d			;4631
	dec hl			;4632
	rlca			;4633
	add hl,bc		;4634
	inc c			;4635
	ld a,(bc)		;4636
	dec hl			;4637
	rlca			;4638
	add hl,bc		;4639
	add hl,bc		;463a
	ld a,(bc)		;463b
	inc c			;463c
	ld hl,(l6b08h)		;463d
	rlca			;4640
	ld l,e			;4641
	ld a,(bc)		;4642
	add hl,hl		;4643
	add hl,bc		;4644
	ex af,af'		;4645
	ld a,(bc)		;4646
	inc c			;4647
	ld a,(bc)		;4648
	dec bc			;4649
	dec bc			;464a
	add hl,bc		;464b
	ld hl,(0070ah)		;464c
	dec hl			;464f
	ld hl,(l4a0bh)		;4650
	ld a,(bc)		;4653
	ex af,af'		;4654
	dec bc			;4655
	add hl,bc		;4656
	inc c			;4657
	ld a,(bc)		;4658
	dec bc			;4659
	dec hl			;465a
	ld (bc),a		;465b
	ex af,af'		;465c
	add hl,bc		;465d
	dec bc			;465e
	ld c,h			;465f
	daa			;4660
	ld hl,(00904h)		;4661
	dec bc			;4664
	ld b,00ah		;4665
	dec c			;4667
	ld a,(bc)		;4668
	dec bc			;4669
	xor e			;466a
	ld bc,00909h		;466b
	ld c,e			;466e
	ex af,af'		;466f
	add hl,bc		;4670
	dec b			;4671
	add hl,bc		;4672
	ex af,af'		;4673
	dec hl			;4674
	inc l			;4675
	ld h,009h		;4676
	dec bc			;4678
	nop			;4679
	ex af,af'		;467a
	ld l,h			;467b
	ld a,(bc)		;467c
	ld a,(bc)		;467d
	ex af,af'		;467e
	rlca			;467f
	ld c,d			;4680
	ld a,(bc)		;4681
	ld h,00bh		;4682
	adc a,h			;4684
	dec bc			;4685
	ex af,af'		;4686
	add hl,bc		;4687
	dec b			;4688
	ld hl,(00807h)		;4689
	add hl,hl		;468c
	ld b,00bh		;468d
	ld a,(bc)		;468f
	dec c			;4690
	ld a,(bc)		;4691
	ld b,00ah		;4692
l4694h:
	add hl,bc		;4694
	add hl,hl		;4695
	ld l,h			;4696
	ld a,(bc)		;4697
	ex af,af'		;4698
	ex af,af'		;4699
	ld a,(bc)		;469a
	ld a,(bc)		;469b
	add hl,bc		;469c
	ex af,af'		;469d
	dec bc			;469e
	ex af,af'		;469f
l46a0h:
	add hl,bc		;46a0
	inc c			;46a1
	ld a,(bc)		;46a2
	ld a,(bc)		;46a3
	dec hl			;46a4
	dec b			;46a5
	dec b			;46a6
	ld hl,(00c09h)		;46a7
	ex af,af'		;46aa
	dec bc			;46ab
	ld b,009h		;46ac
	inc l			;46ae
	ex af,af'		;46af
	ld hl,(02b0ah)		;46b0
	ex af,af'		;46b3
	add hl,bc		;46b4
	ld c,d			;46b5
	ld hl,(0042ch)		;46b6
	dec bc			;46b9
	add hl,bc		;46ba
	rlca			;46bb
	inc l			;46bc
	dec hl			;46bd
	add hl,bc		;46be
	inc bc			;46bf
	dec bc			;46c0
	add hl,bc		;46c1
	dec b			;46c2
l46c3h:
	call z,0070ah		;46c3
	dec bc			;46c6
	ex af,af'		;46c7
	add hl,bc		;46c8
	nop			;46c9
	ld a,(bc)		;46ca
	jr z,l46d5h		;46cb
	ld a,(bc)		;46cd
	ld a,(bc)		;46ce
	add hl,bc		;46cf
	ld b,00bh		;46d0
	ld a,(bc)		;46d2
	add hl,bc		;46d3
	inc c			;46d4
l46d5h:
	dec bc			;46d5
	rlca			;46d6
	dec bc			;46d7
	add hl,bc		;46d8
	ld b,0ach		;46d9
	ld c,d			;46db
	ex af,af'		;46dc
	ld b,004h		;46dd
	add hl,bc		;46df
	dec b			;46e0
	ld hl,(02b29h)		;46e1
	add hl,bc		;46e4
	ex af,af'		;46e5
	ex af,af'		;46e6
	ld c,d			;46e7
	inc c			;46e8
	add hl,hl		;46e9
	ld l,e			;46ea
	ld a,(bc)		;46eb
	dec hl			;46ec
	add hl,hl		;46ed
	ld a,(bc)		;46ee
	ld a,(bc)		;46ef
	ld a,(bc)		;46f0
	dec bc			;46f1
	inc c			;46f2
	dec bc			;46f3
	ld hl,(00908h)		;46f4
	add hl,bc		;46f7
	ld hl,(00a0bh)		;46f8
	ld a,(bc)		;46fb
	rlca			;46fc
	dec bc			;46fd
	inc c			;46fe
	jr z,l470ah		;46ff
	dec bc			;4701
	dec bc			;4702
	inc c			;4703
	ld a,(bc)		;4704
	add hl,bc		;4705
l4706h:
	ld a,(bc)		;4706
	rlca			;4707
	ld a,(bc)		;4708
	inc c			;4709
l470ah:
	dec bc			;470a
	add hl,bc		;470b
	dec hl			;470c
	ld b,008h		;470d
	ld a,(bc)		;470f
	dec bc			;4710
	inc c			;4711
	ld (bc),a		;4712
	ex af,af'		;4713
	dec bc			;4714
	ld b,02bh		;4715
	xor h			;4717
	rlca			;4718
	inc b			;4719
	ld a,(bc)		;471a
	ex af,af'		;471b
	dec bc			;471c
	nop			;471d
	ld a,(bc)		;471e
	add hl,bc		;471f
	dec bc			;4720
	ld a,(bc)		;4721
	ld a,(bc)		;4722
	adc a,e			;4723
	dec b			;4724
	add hl,bc		;4725
	add hl,bc		;4726
	ld l,d			;4727
	ld a,(bc)		;4728
	ex af,af'		;4729
	add hl,bc		;472a
	add hl,bc		;472b
	ex af,af'		;472c
	dec bc			;472d
	dec hl			;472e
	ld a,(bc)		;472f
	inc c			;4730
	ld b,00bh		;4731
	add hl,bc		;4733
	ld bc,00b4ch		;4734
	ex af,af'		;4737
	ld a,(bc)		;4738
	dec b			;4739
l473ah:
	dec bc			;473a
	inc b			;473b
	dec bc			;473c
	add hl,bc		;473d
	jr z,l476ch		;473e
	ld a,(bc)		;4740
	dec bc			;4741
	rlca			;4742
	ld a,(bc)		;4743
	add hl,bc		;4744
	ld b,00bh		;4745
	dec hl			;4747
	ld a,(bc)		;4748
	inc c			;4749
	add hl,bc		;474a
	add hl,bc		;474b
	add hl,bc		;474c
	ld a,(bc)		;474d
	dec hl			;474e
	dec hl			;474f
	ld c,e			;4750
	ld a,(bc)		;4751
	ld hl,(00a09h)		;4752
	ld b,00bh		;4755
	inc c			;4757
	ld a,(bc)		;4758
	ld a,(bc)		;4759
	ld a,(bc)		;475a
	inc bc			;475b
	add hl,bc		;475c
	dec bc			;475d
	ex af,af'		;475e
	ld hl,(0052ch)		;475f
	add hl,bc		;4762
	add hl,bc		;4763
	dec bc			;4764
	rlca			;4765
	ld hl,(0090dh)		;4766
	inc l			;4769
	dec b			;476a
	add hl,bc		;476b
l476ch:
	add hl,bc		;476c
	rlca			;476d
	dec bc			;476e
	ex af,af'		;476f
	add hl,bc		;4770
	inc c			;4771
	ld a,(bc)		;4772
	ex af,af'		;4773
	dec bc			;4774
	rlca			;4775
	rlca			;4776
	inc c			;4777
	ld a,(bc)		;4778
	add hl,bc		;4779
	dec bc			;477a
	add hl,bc		;477b
	ld hl,(02a2ch)		;477c
	rlca			;477f
	dec bc			;4780
	ld c,e			;4781
	dec bc			;4782
	inc c			;4783
	rlca			;4784
	ld a,(bc)		;4785
	ld a,(bc)		;4786
	ld c,e			;4787
	ld a,(bc)		;4788
	rlca			;4789
	dec bc			;478a
	dec bc			;478b
	rlca			;478c
	nop			;478d
	add hl,bc		;478e
	ld a,(bc)		;478f
	ld a,(bc)		;4790
	dec hl			;4791
	dec bc			;4792
	dec bc			;4793
	add hl,bc		;4794
	add hl,hl		;4795
	add hl,bc		;4796
	rlca			;4797
	inc c			;4798
	dec hl			;4799
	ld a,(bc)		;479a
	dec bc			;479b
	add hl,hl		;479c
	add hl,bc		;479d
	ld hl,(02a0ah)		;479e
	dec bc			;47a1
	dec hl			;47a2
	ld a,(bc)		;47a3
	add hl,bc		;47a4
	ex af,af'		;47a5
	ld a,(bc)		;47a6
	ld a,(bc)		;47a7
	inc c			;47a8
	dec bc			;47a9
	dec bc			;47aa
	dec bc			;47ab
	ld hl,(00a09h)		;47ac
	ld a,(bc)		;47af
	dec hl			;47b0
	dec hl			;47b1
	dec bc			;47b2
	add hl,bc		;47b3
	add hl,bc		;47b4
	ex af,af'		;47b5
	ex af,af'		;47b6
	inc c			;47b7
	inc c			;47b8
	ld a,(bc)		;47b9
	dec bc			;47ba
	ld a,(bc)		;47bb
	dec b			;47bc
	ld a,(bc)		;47bd
	dec bc			;47be
	ld hl,(00909h)		;47bf
	ld hl,(00c0bh)		;47c2
	rlca			;47c5
	dec b			;47c6
	nop			;47c7
	ld a,(bc)		;47c8
	inc l			;47c9
	dec bc			;47ca
	dec bc			;47cb
	ex af,af'		;47cc
	ld b,02bh		;47cd
	ld a,(bc)		;47cf
	adc a,d			;47d0
	add hl,bc		;47d1
	inc c			;47d2
	dec bc			;47d3
	ld a,(bc)		;47d4
	ld a,(bc)		;47d5
	add hl,bc		;47d6
	add hl,bc		;47d7
	dec hl			;47d8
	dec bc			;47d9
	inc c			;47da
	jr z,l4807h		;47db
	ld a,(bc)		;47dd
	dec hl			;47de
	ld hl,(0292bh)		;47df
	dec b			;47e2
	add hl,bc		;47e3
	ld hl,(00b0ch)		;47e4
	dec bc			;47e7
	ld b,000h		;47e8
	ld a,(bc)		;47ea
	ld a,(bc)		;47eb
	dec hl			;47ec
	inc c			;47ed
	dec bc			;47ee
	dec hl			;47ef
	ex af,af'		;47f0
	add hl,bc		;47f1
	add hl,hl		;47f2
	ld a,(bc)		;47f3
	inc l			;47f4
	dec bc			;47f5
	ld a,(bc)		;47f6
	ld hl,(0070ah)		;47f7
	dec hl			;47fa
	dec bc			;47fb
	dec bc			;47fc
	ex af,af'		;47fd
	ex af,af'		;47fe
	ld a,(bc)		;47ff
	ld b,00ah		;4800
	ld c,e			;4802
	ld hl,(00a0bh)		;4803
	ex af,af'		;4806
l4807h:
	add hl,bc		;4807
	ld a,(bc)		;4808
	rlca			;4809
	ld a,(bc)		;480a
	inc l			;480b
	dec bc			;480c
	inc c			;480d
	jr z,l4816h		;480e
	ld a,(bc)		;4810
	ld a,(bc)		;4811
	inc c			;4812
	dec bc			;4813
	dec bc			;4814
l4815h:
	dec bc			;4815
l4816h:
	ld b,008h		;4816
	ld hl,(00a28h)		;4818
	dec bc			;481b
	inc c			;481c
	dec bc			;481d
	ld a,(bc)		;481e
	ld hl,(00407h)		;481f
	dec hl			;4822
	inc c			;4823
	inc c			;4824
	dec bc			;4825
	ld hl,(00707h)		;4826
	ld a,(bc)		;4829
	dec bc			;482a
	inc c			;482b
	inc c			;482c
	ld a,(bc)		;482d
	dec bc			;482e
	ld a,(bc)		;482f
	add hl,bc		;4830
	ld a,(bc)		;4831
	ex af,af'		;4832
	ex af,af'		;4833
	dec bc			;4834
	dec bc			;4835
	inc c			;4836
	inc c			;4837
	add hl,bc		;4838
	ex af,af'		;4839
	ex af,af'		;483a
	inc bc			;483b
	dec bc			;483c
	dec bc			;483d
	add hl,hl		;483e
	ld a,(bc)		;483f
	ld a,(bc)		;4840
	dec bc			;4841
	inc c			;4842
	ld a,(bc)		;4843
	rlca			;4844
	ld a,(bc)		;4845
	rlca			;4846
	ld hl,(00c0ch)		;4847
	add hl,bc		;484a
	nop			;484b
	ld b,00bh		;484c
	inc c			;484e
	ld a,(bc)		;484f
	add hl,bc		;4850
	dec hl			;4851
	add hl,hl		;4852
	ex af,af'		;4853
	add hl,bc		;4854
	adc a,h			;4855
	ld hl,(0090ah)		;4856
	add hl,bc		;4859
	dec b			;485a
	ld a,(bc)		;485b
	ex af,af'		;485c
	add hl,hl		;485d
	dec bc			;485e
	dec c			;485f
	nop			;4860
	ld a,(bc)		;4861
	rlca			;4862
	ld a,(bc)		;4863
	inc c			;4864
	dec bc			;4865
	dec bc			;4866
	dec hl			;4867
	add hl,hl		;4868
	ld a,(bc)		;4869
	ld c,c			;486a
	add hl,bc		;486b
	dec b			;486c
	inc c			;486d
	dec bc			;486e
	dec hl			;486f
	ex af,af'		;4870
	rlca			;4871
	add hl,bc		;4872
	add hl,hl		;4873
	ld c,h			;4874
	dec bc			;4875
	ex af,af'		;4876
	rlca			;4877
	dec bc			;4878
	ld a,(bc)		;4879
	dec bc			;487a
	ex af,af'		;487b
	rlca			;487c
	inc c			;487d
	inc c			;487e
	add hl,bc		;487f
	ld a,(bc)		;4880
	add hl,bc		;4881
sub_4882h:
	ex af,af'		;4882
	dec hl			;4883
	ld c,e			;4884
	add hl,bc		;4885
	dec b			;4886
	ld a,(bc)		;4887
	add hl,bc		;4888
	dec bc			;4889
	inc c			;488a
	daa			;488b
	adc a,d			;488c
	dec bc			;488d
	ld c,h			;488e
	jr z,l489ah		;488f
	dec bc			;4891
	ld b,00bh		;4892
	inc c			;4894
	add hl,bc		;4895
	ld a,(bc)		;4896
	ld a,(bc)		;4897
	inc b			;4898
	add hl,bc		;4899
l489ah:
	dec bc			;489a
	ld a,(bc)		;489b
	dec hl			;489c
	ld c,d			;489d
	rlca			;489e
	ld a,(bc)		;489f
	inc c			;48a0
	add hl,bc		;48a1
	dec bc			;48a2
	add hl,hl		;48a3
	ld hl,(02b0ch)		;48a4
	ex af,af'		;48a7
	add hl,bc		;48a8
	ld l,d			;48a9
	ld c,d			;48aa
	ld hl,(02b09h)		;48ab
	dec bc			;48ae
	dec bc			;48af
	ld a,(bc)		;48b0
	dec b			;48b1
	ld a,(bc)		;48b2
	dec bc			;48b3
	dec bc			;48b4
	inc c			;48b5
	ld a,(bc)		;48b6
	rlca			;48b7
	ld a,(bc)		;48b8
	add hl,bc		;48b9
	dec bc			;48ba
	inc c			;48bb
	dec bc			;48bc
	add hl,bc		;48bd
l48beh:
	ld a,(bc)		;48be
	ld a,(bc)		;48bf
	ld a,(bc)		;48c0
	dec bc			;48c1
	dec bc			;48c2
	ex af,af'		;48c3
	ld a,(bc)		;48c4
	ld a,(bc)		;48c5
	add hl,bc		;48c6
	inc c			;48c7
	inc c			;48c8
	dec bc			;48c9
	ld a,(bc)		;48ca
	ld b,000h		;48cb
	ex af,af'		;48cd
	ex af,af'		;48ce
	add hl,bc		;48cf
	dec bc			;48d0
	inc c			;48d1
	inc c			;48d2
l48d3h:
	ld a,(bc)		;48d3
	ld hl,(00608h)		;48d4
	dec hl			;48d7
	dec bc			;48d8
	inc c			;48d9
	ld a,(bc)		;48da
	ld l,e			;48db
	ld a,(bc)		;48dc
	add hl,bc		;48dd
l48deh:
	rlca			;48de
	ex af,af'		;48df
	dec hl			;48e0
	ld a,(bc)		;48e1
	add hl,bc		;48e2
	ld c,d			;48e3
	ld a,(bc)		;48e4
	ld b,00ch		;48e5
	ld a,(bc)		;48e7
	rrc c			;48e8
	dec bc			;48ea
	rlca			;48eb
	add hl,bc		;48ec
	ld a,(bc)		;48ed
	ld a,(bc)		;48ee
	add hl,bc		;48ef
	dec bc			;48f0
	dec b			;48f1
	ld a,(bc)		;48f2
	ld a,(bc)		;48f3
	inc c			;48f4
	add hl,bc		;48f5
	dec bc			;48f6
	add hl,bc		;48f7
	ld b,04ch		;48f8
	dec bc			;48fa
	ld a,(bc)		;48fb
	dec b			;48fc
	ld b,00bh		;48fd
	rlca			;48ff
	dec bc			;4900
	add hl,bc		;4901
	dec b			;4902
	inc c			;4903
	dec bc			;4904
	rlca			;4905
	dec bc			;4906
	ld hl,(00c09h)		;4907
	ex af,af'		;490a
	rrc c			;490b
	add hl,bc		;490d
	ld c,d			;490e
	rlca			;490f
	add hl,bc		;4910
	rlca			;4911
	dec bc			;4912
	add hl,bc		;4913
	ld a,(bc)		;4914
	ld b,04bh		;4915
	add hl,bc		;4917
	inc l			;4918
	daa			;4919
	ld a,(bc)		;491a
	ld a,(bc)		;491b
	ld hl,(00b0bh)		;491c
	ld a,(bc)		;491f
	ld a,(bc)		;4920
	add hl,bc		;4921
	dec bc			;4922
	dec bc			;4923
	ld (bc),a		;4924
	add hl,bc		;4925
	ld a,(bc)		;4926
	add hl,bc		;4927
l4928h:
	ld a,(bc)		;4928
	dec hl			;4929
	ld a,(bc)		;492a
l492bh:
	dec bc			;492b
	ex af,af'		;492c
	rlca			;492d
	ld a,(bc)		;492e
	add hl,bc		;492f
	dec hl			;4930
	dec c			;4931
	dec bc			;4932
	dec bc			;4933
	dec b			;4934
	ld b,06ch		;4935
	dec bc			;4937
	dec bc			;4938
	ld bc,0092ah		;4939
	ld bc,00b00h		;493c
	add hl,hl		;493f
	dec bc			;4940
	dec c			;4941
	dec b			;4942
	ld a,(bc)		;4943
	nop			;4944
	add hl,bc		;4945
	ld c,h			;4946
	add hl,bc		;4947
	ld a,(bc)		;4948
sub_4949h:
	ld a,(bc)		;4949
	dec bc			;494a
	ld b,003h		;494b
	ld a,(bc)		;494d
	rlca			;494e
	inc c			;494f
	dec c			;4950
	ex af,af'		;4951
	ex af,af'		;4952
	inc c			;4953
	add hl,bc		;4954
	add hl,hl		;4955
	dec bc			;4956
	inc bc			;4957
	inc c			;4958
	ex af,af'		;4959
	dec bc			;495a
	dec c			;495b
	dec bc			;495c
	ex af,af'		;495d
	add hl,bc		;495e
	ex af,af'		;495f
	add hl,bc		;4960
	dec bc			;4961
	ld hl,(00c2bh)		;4962
	dec bc			;4965
	ld b,001h		;4966
	ld a,(bc)		;4968
	add hl,bc		;4969
	dec bc			;496a
	inc c			;496b
	ld a,(bc)		;496c
	ld a,(bc)		;496d
	dec bc			;496e
	rlca			;496f
	dec bc			;4970
	inc c			;4971
	ld a,(bc)		;4972
	ex af,af'		;4973
	ex af,af'		;4974
	dec bc			;4975
	inc c			;4976
	dec bc			;4977
	add hl,bc		;4978
	add hl,bc		;4979
	ex af,af'		;497a
	ld a,(bc)		;497b
	ld a,(bc)		;497c
	dec bc			;497d
	dec bc			;497e
	dec hl			;497f
	add hl,bc		;4980
	add hl,bc		;4981
	dec bc			;4982
	ld a,(bc)		;4983
	ld a,(bc)		;4984
	add hl,bc		;4985
	add hl,bc		;4986
	dec bc			;4987
	inc c			;4988
	dec bc			;4989
	add hl,bc		;498a
	ld b,006h		;498b
	ld hl,(00b0bh)		;498d
	rlca			;4990
	ex af,af'		;4991
	dec bc			;4992
	dec bc			;4993
	dec bc			;4994
	ld a,(bc)		;4995
	ex af,af'		;4996
	add hl,bc		;4997
	add hl,bc		;4998
	ld a,(bc)		;4999
	dec bc			;499a
	inc c			;499b
	dec bc			;499c
	ld l,d			;499d
	dec hl			;499e
	ld a,(bc)		;499f
	ex af,af'		;49a0
	inc l			;49a1
	dec bc			;49a2
	add hl,bc		;49a3
	inc bc			;49a4
	ld a,(bc)		;49a5
	ld hl,(00c0ah)		;49a6
	ld bc,00509h		;49a9
	add hl,hl		;49ac
	inc c			;49ad
	dec bc			;49ae
	add hl,bc		;49af
	rlca			;49b0
	rlca			;49b1
	dec hl			;49b2
	inc c			;49b3
	dec bc			;49b4
	ex af,af'		;49b5
	rlca			;49b6
	add hl,bc		;49b7
	inc c			;49b8
	inc c			;49b9
	inc c			;49ba
	dec bc			;49bb
	add hl,hl		;49bc
	add hl,bc		;49bd
	ld a,(bc)		;49be
	dec hl			;49bf
	dec hl			;49c0
	dec bc			;49c1
	add hl,hl		;49c2
	dec b			;49c3
	add hl,bc		;49c4
	rlca			;49c5
	ld hl,(0080ah)		;49c6
	dec hl			;49c9
	ld a,(bc)		;49ca
	dec bc			;49cb
	add hl,bc		;49cc
	add hl,bc		;49cd
	rlca			;49ce
	nop			;49cf
	inc l			;49d0
	inc c			;49d1
	ld a,(bc)		;49d2
	dec hl			;49d3
	add hl,bc		;49d4
	ld a,(bc)		;49d5
	dec bc			;49d6
	dec bc			;49d7
	add hl,bc		;49d8
	add hl,bc		;49d9
	ld a,(bc)		;49da
	dec hl			;49db
	inc c			;49dc
	dec bc			;49dd
	ld a,(bc)		;49de
	ld bc,00908h		;49df
	dec b			;49e2
	ld a,(bc)		;49e3
	inc c			;49e4
	dec bc			;49e5
	dec bc			;49e6
	dec bc			;49e7
	inc bc			;49e8
	ld b,00ah		;49e9
	add hl,hl		;49eb
	dec bc			;49ec
	inc c			;49ed
	ld a,(bc)		;49ee
	ld a,(bc)		;49ef
	ld hl,(00c0ch)		;49f0
	dec b			;49f3
	inc bc			;49f4
	ex af,af'		;49f5
	dec bc			;49f6
	dec c			;49f7
	inc c			;49f8
	rlca			;49f9
	ex af,af'		;49fa
	add hl,bc		;49fb
	ex af,af'		;49fc
	inc c			;49fd
	dec c			;49fe
	ld a,(bc)		;49ff
l4a00h:
	rlca			;4a00
	ex af,af'		;4a01
	inc bc			;4a02
	add hl,bc		;4a03
	inc c			;4a04
	dec bc			;4a05
	inc c			;4a06
	ld a,(bc)		;4a07
	ld bc,00c07h		;4a08
l4a0bh:
	inc c			;4a0b
	ld a,(bc)		;4a0c
	ex af,af'		;4a0d
	nop			;4a0e
	ex af,af'		;4a0f
	inc l			;4a10
	dec bc			;4a11
	dec bc			;4a12
	ex af,af'		;4a13
	ld b,00bh		;4a14
	add hl,bc		;4a16
	ld a,(bc)		;4a17
	inc l			;4a18
	ld a,(bc)		;4a19
	dec bc			;4a1a
	dec b			;4a1b
	rlca			;4a1c
	dec bc			;4a1d
	ld a,(bc)		;4a1e
	ld a,(bc)		;4a1f
	ex af,af'		;4a20
	add hl,bc		;4a21
	inc c			;4a22
	inc c			;4a23
	dec bc			;4a24
	ld a,(bc)		;4a25
	inc bc			;4a26
	ld (bc),a		;4a27
	ex af,af'		;4a28
l4a29h:
	add hl,bc		;4a29
	dec bc			;4a2a
	inc l			;4a2b
	ld a,(bc)		;4a2c
	add hl,bc		;4a2d
	inc c			;4a2e
	dec bc			;4a2f
	dec bc			;4a30
	ex af,af'		;4a31
	ex af,af'		;4a32
	ld a,(bc)		;4a33
	ld c,e			;4a34
	ld c,e			;4a35
	dec bc			;4a36
	ld a,(bc)		;4a37
	dec bc			;4a38
	ex af,af'		;4a39
	ex af,af'		;4a3a
	ex af,af'		;4a3b
	ld a,(bc)		;4a3c
	dec bc			;4a3d
	inc c			;4a3e
	inc c			;4a3f
	ex af,af'		;4a40
	ld bc,00606h		;4a41
	ld a,(bc)		;4a44
	inc c			;4a45
sub_4a46h:
	dec bc			;4a46
	dec bc			;4a47
	ex af,af'		;4a48
l4a49h:
	nop			;4a49
	ld a,(bc)		;4a4a
	dec bc			;4a4b
	dec bc			;4a4c
	dec bc			;4a4d
	add hl,bc		;4a4e
	ex af,af'		;4a4f
	add hl,bc		;4a50
	dec bc			;4a51
	inc c			;4a52
	inc c			;4a53
	inc c			;4a54
	dec bc			;4a55
	add hl,hl		;4a56
	add hl,bc		;4a57
	add hl,bc		;4a58
	inc c			;4a59
	dec bc			;4a5a
	ld a,(bc)		;4a5b
	xor e			;4a5c
	ex af,af'		;4a5d
	rlca			;4a5e
	add hl,bc		;4a5f
	ex af,af'		;4a60
	ld c,d			;4a61
	ld a,(bc)		;4a62
	add hl,bc		;4a63
	rlca			;4a64
	dec bc			;4a65
	dec bc			;4a66
	inc c			;4a67
	ld hl,(l4b09h)		;4a68
	rlca			;4a6b
	dec bc			;4a6c
	ld a,(bc)		;4a6d
	ld hl,(00906h)		;4a6e
	ld hl,(00b6bh)		;4a71
	ld c,d			;4a74
	ex af,af'		;4a75
	ld a,(bc)		;4a76
	add hl,bc		;4a77
	ld a,(bc)		;4a78
	dec bc			;4a79
	dec bc			;4a7a
	dec bc			;4a7b
	add hl,bc		;4a7c
	ld (bc),a		;4a7d
	ex af,af'		;4a7e
	ld a,(bc)		;4a7f
	add hl,hl		;4a80
	dec bc			;4a81
	dec hl			;4a82
	ld hl,(00a0ah)		;4a83
	ex af,af'		;4a86
	add hl,bc		;4a87
	add hl,bc		;4a88
	ld a,(bc)		;4a89
	dec c			;4a8a
	inc l			;4a8b
	add hl,hl		;4a8c
	dec bc			;4a8d
	inc b			;4a8e
	ld hl,(00c0ch)		;4a8f
	nop			;4a92
	ex af,af'		;4a93
	dec bc			;4a94
	dec bc			;4a95
	add hl,bc		;4a96
	add hl,bc		;4a97
	nop			;4a98
	dec b			;4a99
	ld a,(bc)		;4a9a
	ex af,af'		;4a9b
	dec bc			;4a9c
	inc c			;4a9d
	dec bc			;4a9e
	ld a,(bc)		;4a9f
	add hl,bc		;4aa0
	nop			;4aa1
	add hl,bc		;4aa2
	ld c,h			;4aa3
	inc c			;4aa4
	inc c			;4aa5
	ld a,(bc)		;4aa6
	ld a,(bc)		;4aa7
	dec bc			;4aa8
	dec bc			;4aa9
	dec bc			;4aaa
	ex af,af'		;4aab
	inc b			;4aac
	ld hl,(0092ah)		;4aad
	rlca			;4ab0
	ex af,af'		;4ab1
	dec b			;4ab2
	dec b			;4ab3
	dec hl			;4ab4
	ld hl,(00a29h)		;4ab5
	dec hl			;4ab8
	inc c			;4ab9
	inc c			;4aba
	dec bc			;4abb
	add hl,bc		;4abc
	ex af,af'		;4abd
	inc c			;4abe
	inc c			;4abf
	add hl,bc		;4ac0
	ld hl,(00a0bh)		;4ac1
	add hl,bc		;4ac4
	ex af,af'		;4ac5
	inc c			;4ac6
	dec bc			;4ac7
	inc b			;4ac8
	ld bc,00806h		;4ac9
	inc c			;4acc
	inc c			;4acd
	dec bc			;4ace
	ld a,(bc)		;4acf
	add hl,bc		;4ad0
	ex af,af'		;4ad1
	ex af,af'		;4ad2
	ld hl,(00b0ch)		;4ad3
	dec bc			;4ad6
	ld hl,(00c0bh)		;4ad7
	ld hl,(0060ah)		;4ada
	dec bc			;4add
	add hl,bc		;4ade
	ld c,e			;4adf
	ld a,(bc)		;4ae0
	ld a,(bc)		;4ae1
	ld b,009h		;4ae2
	ld a,(bc)		;4ae4
	dec bc			;4ae5
	ld hl,(00a00h)		;4ae6
	ld a,(bc)		;4ae9
	inc c			;4aea
	dec bc			;4aeb
	add hl,hl		;4aec
	dec bc			;4aed
	ld a,(bc)		;4aee
	ld c,h			;4aef
	dec bc			;4af0
	ld a,(bc)		;4af1
	ld a,(bc)		;4af2
	add hl,hl		;4af3
	add hl,hl		;4af4
	dec bc			;4af5
	ld a,(bc)		;4af6
	inc c			;4af7
	ex af,af'		;4af8
	nop			;4af9
	dec bc			;4afa
	add hl,bc		;4afb
	ld a,(bc)		;4afc
	inc c			;4afd
	rlca			;4afe
	dec b			;4aff
	add hl,bc		;4b00
	nop			;4b01
	ld a,(bc)		;4b02
	dec c			;4b03
	dec bc			;4b04
	add hl,bc		;4b05
	add hl,bc		;4b06
	rlca			;4b07
	ex af,af'		;4b08
l4b09h:
	inc l			;4b09
	inc c			;4b0a
	dec bc			;4b0b
	ld hl,(00a00h)		;4b0c
	add hl,bc		;4b0f
	dec c			;4b10
	inc l			;4b11
	ld b,02bh		;4b12
	add hl,hl		;4b14
	ld c,e			;4b15
	ld a,(bc)		;4b16
	rlca			;4b17
	ex af,af'		;4b18
	add hl,bc		;4b19
	dec bc			;4b1a
	inc c			;4b1b
	ld a,(bc)		;4b1c
	add hl,bc		;4b1d
	add hl,bc		;4b1e
	nop			;4b1f
	rlca			;4b20
	dec bc			;4b21
	add hl,bc		;4b22
	add hl,bc		;4b23
	ld c,h			;4b24
	ld a,(bc)		;4b25
	ld hl,(00706h)		;4b26
	dec bc			;4b29
l4b2ah:
	dec c			;4b2a
	dec bc			;4b2b
	ex af,af'		;4b2c
	dec hl			;4b2d
	add hl,bc		;4b2e
	dec bc			;4b2f
	ld b,00ah		;4b30
	inc c			;4b32
	dec hl			;4b33
	dec hl			;4b34
	ld a,(bc)		;4b35
	ld b,001h		;4b36
	ld b,005h		;4b38
	ld a,(bc)		;4b3a
	inc c			;4b3b
	dec hl			;4b3c
	add hl,bc		;4b3d
	ld a,(bc)		;4b3e
	dec bc			;4b3f
	add hl,bc		;4b40
	ex af,af'		;4b41
	ex af,af'		;4b42
	ld a,(bc)		;4b43
	ld c,e			;4b44
	ld a,(bc)		;4b45
	dec bc			;4b46
	dec bc			;4b47
	inc c			;4b48
	rlca			;4b49
	rlca			;4b4a
l4b4bh:
	ex af,af'		;4b4b
	ld a,(bc)		;4b4c
	inc l			;4b4d
	dec bc			;4b4e
	dec bc			;4b4f
	add hl,bc		;4b50
	inc b			;4b51
	ld a,(bc)		;4b52
	ld a,(bc)		;4b53
	dec bc			;4b54
	inc c			;4b55
	add hl,bc		;4b56
	rlca			;4b57
	ld a,(bc)		;4b58
	dec bc			;4b59
	dec bc			;4b5a
	inc c			;4b5b
	inc c			;4b5c
	ld a,(bc)		;4b5d
	ld hl,(0060ah)		;4b5e
	dec hl			;4b61
	ld hl,(00a2bh)		;4b62
	dec b			;4b65
	add hl,hl		;4b66
	dec bc			;4b67
	ex af,af'		;4b68
	ld a,(bc)		;4b69
sub_4b6ah:
	rlca			;4b6a
	dec bc			;4b6b
	inc c			;4b6c
	dec bc			;4b6d
	ld a,(bc)		;4b6e
	dec bc			;4b6f
	add hl,bc		;4b70
	ld c,e			;4b71
	ld c,h			;4b72
	daa			;4b73
	add hl,bc		;4b74
	adc a,d			;4b75
	ld l,e			;4b76
	rlca			;4b77
	ld h,002h		;4b78
	inc c			;4b7a
	jr z,l4ba8h		;4b7b
	ld c,e			;4b7d
	add hl,hl		;4b7e
	ld a,(bc)		;4b7f
	dec bc			;4b80
	inc c			;4b81
	dec bc			;4b82
	inc c			;4b83
	ld a,(bc)		;4b84
	rlca			;4b85
	ld a,(bc)		;4b86
	dec bc			;4b87
	dec bc			;4b88
	ld c,e			;4b89
	ld a,(bc)		;4b8a
	ld a,(bc)		;4b8b
	ex af,af'		;4b8c
	add hl,bc		;4b8d
	dec bc			;4b8e
	dec bc			;4b8f
	ld a,(bc)		;4b90
	add hl,hl		;4b91
	ex af,af'		;4b92
	ld bc,00c0ch		;4b93
	ld a,(bc)		;4b96
	ld b,007h		;4b97
	ex af,af'		;4b99
	ld a,(bc)		;4b9a
	inc c			;4b9b
	dec bc			;4b9c
	dec b			;4b9d
	add hl,bc		;4b9e
	ld a,(bc)		;4b9f
	ld a,(bc)		;4ba0
	dec c			;4ba1
	inc c			;4ba2
	rlca			;4ba3
	rlca			;4ba4
	add hl,bc		;4ba5
	ld a,(bc)		;4ba6
	inc c			;4ba7
l4ba8h:
	ld c,e			;4ba8
	inc bc			;4ba9
	ld a,(bc)		;4baa
	inc c			;4bab
	inc c			;4bac
	add hl,bc		;4bad
	dec b			;4bae
	nop			;4baf
	nop			;4bb0
	dec hl			;4bb1
	dec bc			;4bb2
	inc c			;4bb3
	rlca			;4bb4
	ld a,(bc)		;4bb5
	inc c			;4bb6
	ld a,(bc)		;4bb7
	ld b,006h		;4bb8
	nop			;4bba
	ld a,(bc)		;4bbb
	dec c			;4bbc
	dec bc			;4bbd
	rlca			;4bbe
	ld a,(bc)		;4bbf
	ex af,af'		;4bc0
	dec hl			;4bc1
	inc c			;4bc2
	ld a,(bc)		;4bc3
	dec bc			;4bc4
	ex af,af'		;4bc5
	add hl,bc		;4bc6
	inc c			;4bc7
	ld hl,(08b08h)		;4bc8
	add hl,bc		;4bcb
	dec bc			;4bcc
	dec bc			;4bcd
	ld hl,(00b09h)		;4bce
	add hl,bc		;4bd1
	ld b,009h		;4bd2
	dec hl			;4bd4
	dec hl			;4bd5
	dec bc			;4bd6
	ld a,(bc)		;4bd7
	inc bc			;4bd8
	ld a,(bc)		;4bd9
	dec c			;4bda
	dec bc			;4bdb
	rlca			;4bdc
	ex af,af'		;4bdd
	add hl,bc		;4bde
	dec hl			;4bdf
	dec bc			;4be0
	ld a,(bc)		;4be1
	ld a,(bc)		;4be2
	ld b,00ah		;4be3
	dec bc			;4be5
	ld a,(bc)		;4be6
	dec bc			;4be7
	ex af,af'		;4be8
	ld bc,00a09h		;4be9
	ld a,(bc)		;4bec
	inc c			;4bed
	dec bc			;4bee
	nop			;4bef
	ex af,af'		;4bf0
	ld a,(bc)		;4bf1
	ld a,(bc)		;4bf2
	inc c			;4bf3
	inc c			;4bf4
	inc bc			;4bf5
	ex af,af'		;4bf6
	dec bc			;4bf7
	add hl,bc		;4bf8
	inc c			;4bf9
	inc c			;4bfa
	daa			;4bfb
	dec hl			;4bfc
	dec bc			;4bfd
	inc c			;4bfe
	dec b			;4bff
	ex af,af'		;4c00
	add hl,bc		;4c01
	rlca			;4c02
	dec bc			;4c03
	inc c			;4c04
	ld c,c			;4c05
	ld a,(bc)		;4c06
	dec bc			;4c07
	ld b,00ah		;4c08
	ld a,(bc)		;4c0a
l4c0bh:
	ld c,h			;4c0b
l4c0ch:
	ld hl,(00b09h)		;4c0c
	ex af,af'		;4c0f
l4c10h:
	ex af,af'		;4c10
	add hl,bc		;4c11
	ld bc,00c2bh		;4c12
	ld a,(bc)		;4c15
	ld c,d			;4c16
	ld b,00ah		;4c17
	ld a,(bc)		;4c19
	inc c			;4c1a
	add hl,hl		;4c1b
	dec hl			;4c1c
	ex af,af'		;4c1d
	dec bc			;4c1e
	dec bc			;4c1f
	ld a,(bc)		;4c20
	rlca			;4c21
	ld a,(bc)		;4c22
	dec hl			;4c23
	dec hl			;4c24
	dec bc			;4c25
	add hl,bc		;4c26
	ld b,008h		;4c27
	dec bc			;4c29
	dec hl			;4c2a
	dec bc			;4c2b
	inc c			;4c2c
	add hl,bc		;4c2d
	ld a,(bc)		;4c2e
	ex af,af'		;4c2f
	dec bc			;4c30
	inc c			;4c31
	add hl,bc		;4c32
	ld bc,00100h		;4c33
	ld b,00ch		;4c36
	dec c			;4c38
	ld a,(bc)		;4c39
	add hl,bc		;4c3a
	add hl,bc		;4c3b
	ex af,af'		;4c3c
	ld c,d			;4c3d
	inc c			;4c3e
	dec bc			;4c3f
	add hl,bc		;4c40
	ex af,af'		;4c41
	inc l			;4c42
	inc c			;4c43
	dec bc			;4c44
	add hl,bc		;4c45
	inc bc			;4c46
	add hl,bc		;4c47
	rlca			;4c48
	ld l,b			;4c49
	ld a,(bc)		;4c4a
	ld b,04ch		;4c4b
	ld a,(bc)		;4c4d
	add hl,bc		;4c4e
	dec bc			;4c4f
	add hl,bc		;4c50
	ld a,(bc)		;4c51
	ex af,af'		;4c52
	ld c,e			;4c53
	dec c			;4c54
	dec bc			;4c55
	dec bc			;4c56
	dec b			;4c57
	inc c			;4c58
	nop			;4c59
	ld a,(bc)		;4c5a
	dec bc			;4c5b
	ld a,(bc)		;4c5c
	inc c			;4c5d
	ld a,(bc)		;4c5e
	nop			;4c5f
	add hl,bc		;4c60
	rlca			;4c61
	ld a,(bc)		;4c62
	inc c			;4c63
	ld a,(bc)		;4c64
	add hl,bc		;4c65
	dec bc			;4c66
sub_4c67h:
	ex af,af'		;4c67
	ld a,(bc)		;4c68
	inc c			;4c69
	inc c			;4c6a
	jr z,l4c6dh		;4c6b
l4c6dh:
	nop			;4c6d
	inc c			;4c6e
	inc c			;4c6f
	add hl,bc		;4c70
	ld a,(bc)		;4c71
	dec bc			;4c72
	rlca			;4c73
	dec bc			;4c74
	inc c			;4c75
	ex af,af'		;4c76
	ld a,(bc)		;4c77
	ld a,(bc)		;4c78
	inc b			;4c79
	dec bc			;4c7a
	dec bc			;4c7b
	add hl,bc		;4c7c
	inc c			;4c7d
	inc c			;4c7e
	ld b,008h		;4c7f
	ex af,af'		;4c81
	ld a,(bc)		;4c82
	inc c			;4c83
	inc c			;4c84
	dec bc			;4c85
	rlca			;4c86
	nop			;4c87
	ld (bc),a		;4c88
	add hl,bc		;4c89
	inc c			;4c8a
	inc c			;4c8b
	dec bc			;4c8c
l4c8dh:
	ld c,e			;4c8d
	ld b,008h		;4c8e
	inc c			;4c90
	dec bc			;4c91
	ex af,af'		;4c92
	nop			;4c93
	ex af,af'		;4c94
	dec bc			;4c95
	dec bc			;4c96
	inc c			;4c97
	ld hl,(02a08h)		;4c98
	add hl,bc		;4c9b
	dec bc			;4c9c
	dec bc			;4c9d
	dec bc			;4c9e
	ex af,af'		;4c9f
	add hl,bc		;4ca0
	ld a,(bc)		;4ca1
	ld c,d			;4ca2
	ld l,e			;4ca3
	dec hl			;4ca4
	add hl,bc		;4ca5
	jr z,l4cb2h		;4ca6
	ld hl,(00a0bh)		;4ca8
l4cabh:
	add hl,bc		;4cab
sub_4cach:
	add hl,bc		;4cac
	dec bc			;4cad
	inc c			;4cae
	ld c,e			;4caf
	add hl,bc		;4cb0
	add hl,bc		;4cb1
l4cb2h:
	dec bc			;4cb2
	inc c			;4cb3
	ex af,af'		;4cb4
	add hl,bc		;4cb5
	ld a,(bc)		;4cb6
	ld c,d			;4cb7
	dec bc			;4cb8
	inc c			;4cb9
	add hl,bc		;4cba
	dec hl			;4cbb
	ld a,(bc)		;4cbc
	add hl,hl		;4cbd
	dec b			;4cbe
	ld a,(bc)		;4cbf
	ld a,(bc)		;4cc0
	inc c			;4cc1
	ld hl,(02b09h)		;4cc2
	dec bc			;4cc5
	ex af,af'		;4cc6
	dec b			;4cc7
	add hl,bc		;4cc8
	ld b,02bh		;4cc9
	dec c			;4ccb
	dec bc			;4ccc
	inc c			;4ccd
	ld a,(bc)		;4cce
	add hl,hl		;4ccf
	ld bc,02c00h		;4cd0
	inc c			;4cd3
	inc c			;4cd4
	dec bc			;4cd5
	dec bc			;4cd6
	add hl,bc		;4cd7
	ex af,af'		;4cd8
	add hl,bc		;4cd9
	ld b,00ah		;4cda
	inc c			;4cdc
	inc c			;4cdd
	dec bc			;4cde
	dec bc			;4cdf
	rlca			;4ce0
	inc b			;4ce1
	ld a,(bc)		;4ce2
	ld a,(bc)		;4ce3
	rlca			;4ce4
	ex af,af'		;4ce5
	rlca			;4ce6
	add hl,bc		;4ce7
	dec bc			;4ce8
	dec bc			;4ce9
	inc c			;4cea
	inc c			;4ceb
sub_4cech:
	ex af,af'		;4cec
	ex af,af'		;4ced
	ld a,(bc)		;4cee
	dec hl			;4cef
	dec bc			;4cf0
	inc c			;4cf1
	ld hl,(00909h)		;4cf2
	inc c			;4cf5
	dec bc			;4cf6
	dec bc			;4cf7
	dec hl			;4cf8
	add hl,bc		;4cf9
	ex af,af'		;4cfa
	ld a,(bc)		;4cfb
	inc b			;4cfc
	ex af,af'		;4cfd
	dec hl			;4cfe
	ld a,(bc)		;4cff
	dec bc			;4d00
	ex af,af'		;4d01
	ld a,(bc)		;4d02
	add hl,bc		;4d03
	add hl,bc		;4d04
	inc c			;4d05
	inc c			;4d06
	ex af,af'		;4d07
	ex af,af'		;4d08
	ld a,(bc)		;4d09
	add hl,bc		;4d0a
	dec bc			;4d0b
	dec c			;4d0c
	dec bc			;4d0d
	add hl,hl		;4d0e
	ld a,(bc)		;4d0f
	ld a,(bc)		;4d10
	inc c			;4d11
	inc c			;4d12
	ld a,(bc)		;4d13
	ld a,(bc)		;4d14
	inc b			;4d15
	rlca			;4d16
	dec bc			;4d17
	ld hl,(00d0ch)		;4d18
	nop			;4d1b
	nop			;4d1c
	nop			;4d1d
	ex af,af'		;4d1e
	dec c			;4d1f
	ld a,(bc)		;4d20
	dec b			;4d21
	inc c			;4d22
	rlca			;4d23
	add hl,bc		;4d24
	dec c			;4d25
	ld a,(bc)		;4d26
	ld a,(bc)		;4d27
	inc c			;4d28
	nop			;4d29
	dec b			;4d2a
	dec bc			;4d2b
	ex af,af'		;4d2c
	inc c			;4d2d
	dec c			;4d2e
	ld a,(bc)		;4d2f
	ld a,(bc)		;4d30
	ld c,e			;4d31
	ex af,af'		;4d32
	add hl,bc		;4d33
	ld a,(bc)		;4d34
	dec bc			;4d35
	ld l,c			;4d36
	ld a,(bc)		;4d37
	ld a,(bc)		;4d38
	dec bc			;4d39
	dec bc			;4d3a
	ex af,af'		;4d3b
	nop			;4d3c
	dec bc			;4d3d
	dec bc			;4d3e
	dec bc			;4d3f
	inc l			;4d40
	add hl,hl		;4d41
	add hl,bc		;4d42
	ld bc,00a0bh		;4d43
	ld hl,(00b0dh)		;4d46
	dec bc			;4d49
	nop			;4d4a
	ld bc,00a4ch		;4d4b
	ld a,(bc)		;4d4e
	rlca			;4d4f
	ld b,009h		;4d50
	ld a,(bc)		;4d52
	dec c			;4d53
	rlca			;4d54
	ld bc,0050ah		;4d55
	ld hl,(00b0dh)		;4d58
	dec bc			;4d5b
	ex af,af'		;4d5c
	add hl,bc		;4d5d
	inc c			;4d5e
	ld a,(bc)		;4d5f
	ex af,af'		;4d60
	ld a,(bc)		;4d61
	ld b,009h		;4d62
	inc c			;4d64
	inc c			;4d65
	dec bc			;4d66
	dec bc			;4d67
	ld a,(bc)		;4d68
	ex af,af'		;4d69
	ld a,(bc)		;4d6a
	dec bc			;4d6b
	add hl,bc		;4d6c
	ex af,af'		;4d6d
	ld a,(bc)		;4d6e
	ld a,(bc)		;4d6f
	dec bc			;4d70
	dec c			;4d71
	inc c			;4d72
	ld a,(bc)		;4d73
	add hl,bc		;4d74
	inc bc			;4d75
	ex af,af'		;4d76
	ld a,(bc)		;4d77
	add hl,bc		;4d78
	inc c			;4d79
	dec c			;4d7a
	dec bc			;4d7b
	add hl,bc		;4d7c
	add hl,bc		;4d7d
	ld b,008h		;4d7e
	ld a,(bc)		;4d80
	dec bc			;4d81
	inc c			;4d82
	inc c			;4d83
	inc bc			;4d84
	dec b			;4d85
	dec bc			;4d86
	dec bc			;4d87
	inc c			;4d88
	add hl,hl		;4d89
	nop			;4d8a
	inc bc			;4d8b
	dec bc			;4d8c
	inc c			;4d8d
	inc c			;4d8e
	ld a,(bc)		;4d8f
	nop			;4d90
	ld b,00bh		;4d91
	inc c			;4d93
	dec bc			;4d94
	ld a,(bc)		;4d95
	add hl,bc		;4d96
	inc b			;4d97
	ex af,af'		;4d98
	dec bc			;4d99
	inc c			;4d9a
	dec bc			;4d9b
	rlca			;4d9c
	add hl,bc		;4d9d
	add hl,bc		;4d9e
	ld a,(bc)		;4d9f
	inc c			;4da0
	dec bc			;4da1
	ex af,af'		;4da2
	nop			;4da3
	nop			;4da4
	dec bc			;4da5
	inc l			;4da6
	dec bc			;4da7
	inc c			;4da8
	add hl,bc		;4da9
	dec b			;4daa
	add hl,bc		;4dab
	ld hl,(00c0ch)		;4dac
	dec hl			;4daf
	ld hl,(00a08h)		;4db0
	inc c			;4db3
	inc c			;4db4
	add hl,hl		;4db5
	ld hl,(00b0ah)		;4db6
	ld a,(bc)		;4db9
	dec hl			;4dba
	ld a,(bc)		;4dbb
	dec b			;4dbc
	inc c			;4dbd
	add hl,bc		;4dbe
	ld hl,(00108h)		;4dbf
	dec bc			;4dc2
	dec bc			;4dc3
	inc c			;4dc4
	ld a,(bc)		;4dc5
	ld a,(bc)		;4dc6
	dec bc			;4dc7
	ld b,005h		;4dc8
	ex af,af'		;4dca
	add hl,bc		;4dcb
	dec bc			;4dcc
	inc c			;4dcd
	dec bc			;4dce
	ld a,(bc)		;4dcf
	ld a,(bc)		;4dd0
	ld a,(bc)		;4dd1
	dec bc			;4dd2
	inc c			;4dd3
	add hl,bc		;4dd4
	add hl,bc		;4dd5
	ld a,(bc)		;4dd6
	ex af,af'		;4dd7
	ld a,(bc)		;4dd8
	dec hl			;4dd9
	ld a,(bc)		;4dda
	dec bc			;4ddb
	ex af,af'		;4ddc
	add hl,bc		;4ddd
	ld hl,(02b0ah)		;4dde
	add hl,bc		;4de1
	dec bc			;4de2
	ld hl,(08a2ah)		;4de3
	dec bc			;4de6
	inc c			;4de7
	inc bc			;4de8
	add hl,bc		;4de9
	ld hl,(0092bh)		;4dea
	ex af,af'		;4ded
sub_4deeh:
	ld a,(bc)		;4dee
	ld a,(bc)		;4def
	ld c,d			;4df0
	ld l,e			;4df1
	dec hl			;4df2
	add hl,bc		;4df3
	ld b,00bh		;4df4
	add hl,bc		;4df6
	inc c			;4df7
	inc c			;4df8
	rlca			;4df9
	dec hl			;4dfa
	dec bc			;4dfb
	ld b,008h		;4dfc
	dec b			;4dfe
	inc l			;4dff
	dec bc			;4e00
	dec bc			;4e01
l4e02h:
	ld a,(bc)		;4e02
	add hl,bc		;4e03
	add hl,bc		;4e04
	ex af,af'		;4e05
	ld hl,(00a0bh)		;4e06
	ld hl,(02b29h)		;4e09
	dec bc			;4e0c
	ld a,(bc)		;4e0d
	ld hl,(0052ah)		;4e0e
	ld a,(bc)		;4e11
	inc c			;4e12
	dec bc			;4e13
	add hl,bc		;4e14
	ld a,(bc)		;4e15
	add hl,bc		;4e16
	ex af,af'		;4e17
	dec bc			;4e18
	inc c			;4e19
	dec bc			;4e1a
	ld a,(bc)		;4e1b
	dec bc			;4e1c
	ex af,af'		;4e1d
	add hl,bc		;4e1e
	inc c			;4e1f
	inc c			;4e20
	ld a,(bc)		;4e21
	ex af,af'		;4e22
	inc bc			;4e23
	inc b			;4e24
	add hl,bc		;4e25
	ld hl,(00b0bh)		;4e26
	daa			;4e29
	ld hl,(l4a29h)		;4e2a
	inc l			;4e2d
	ld a,(bc)		;4e2e
	dec bc			;4e2f
	dec bc			;4e30
	ex af,af'		;4e31
	ex af,af'		;4e32
	inc c			;4e33
	inc c			;4e34
	dec bc			;4e35
	dec bc			;4e36
	ld a,(bc)		;4e37
	ld b,007h		;4e38
	add hl,bc		;4e3a
	inc c			;4e3b
	inc c			;4e3c
	inc bc			;4e3d
	nop			;4e3e
	ex af,af'		;4e3f
	dec bc			;4e40
	inc c			;4e41
	dec bc			;4e42
	ex af,af'		;4e43
	rlca			;4e44
	ex af,af'		;4e45
	rlca			;4e46
	ld hl,(00b0ch)		;4e47
	dec bc			;4e4a
	ld a,(bc)		;4e4b
	dec bc			;4e4c
	inc c			;4e4d
	dec bc			;4e4e
	ld hl,(00008h)		;4e4f
	inc c			;4e52
	dec c			;4e53
	inc c			;4e54
	ld bc,00800h		;4e55
	ld hl,(00b0ch)		;4e58
	ld c,e			;4e5b
	rlca			;4e5c
	add hl,bc		;4e5d
	ld a,(bc)		;4e5e
	dec bc			;4e5f
	ex af,af'		;4e60
	add hl,bc		;4e61
	add hl,bc		;4e62
	dec bc			;4e63
	inc c			;4e64
	inc c			;4e65
	ld b,009h		;4e66
	add hl,bc		;4e68
	ex af,af'		;4e69
	dec bc			;4e6a
	ld a,(bc)		;4e6b
	add hl,bc		;4e6c
	inc c			;4e6d
	inc c			;4e6e
	ex af,af'		;4e6f
	add hl,bc		;4e70
	ld a,(bc)		;4e71
	add hl,bc		;4e72
	inc c			;4e73
l4e74h:
	inc c			;4e74
	rlca			;4e75
	ld hl,(00a0bh)		;4e76
sub_4e79h:
	ld hl,(00901h)		;4e79
	ex af,af'		;4e7c
	ld a,(bc)		;4e7d
	dec bc			;4e7e
	dec bc			;4e7f
	dec bc			;4e80
	add hl,bc		;4e81
	ld a,(bc)		;4e82
	ld a,(bc)		;4e83
	ld hl,(00909h)		;4e84
	inc c			;4e87
	inc c			;4e88
	inc c			;4e89
	dec bc			;4e8a
	inc b			;4e8b
	rlca			;4e8c
	ld hl,(02a2ah)		;4e8d
	rlca			;4e90
	dec bc			;4e91
	inc c			;4e92
	ex af,af'		;4e93
	ld b,005h		;4e94
	add hl,bc		;4e96
	inc c			;4e97
	dec hl			;4e98
	dec hl			;4e99
	dec bc			;4e9a
	ld a,(bc)		;4e9b
	ex af,af'		;4e9c
	ld hl,(02b2bh)		;4e9d
	dec bc			;4ea0
	ld a,(bc)		;4ea1
	add hl,bc		;4ea2
	ex af,af'		;4ea3
	dec bc			;4ea4
	dec bc			;4ea5
	ld a,(bc)		;4ea6
	add hl,bc		;4ea7
	ex af,af'		;4ea8
	ex af,af'		;4ea9
	ld a,(bc)		;4eaa
	ld c,c			;4eab
	ld a,(bc)		;4eac
	dec bc			;4ead
	ex af,af'		;4eae
	ld a,(bc)		;4eaf
	ld a,(bc)		;4eb0
	inc c			;4eb1
	ld a,(bc)		;4eb2
	ld b,009h		;4eb3
	nop			;4eb5
	dec bc			;4eb6
	dec c			;4eb7
	ld a,(bc)		;4eb8
	ex af,af'		;4eb9
	dec bc			;4eba
	nop			;4ebb
	add hl,bc		;4ebc
	dec c			;4ebd
	dec bc			;4ebe
	ld a,(bc)		;4ebf
	inc c			;4ec0
	add hl,bc		;4ec1
	add hl,bc		;4ec2
	ld a,(bc)		;4ec3
	ld b,00ah		;4ec4
	inc c			;4ec6
	ld a,(bc)		;4ec7
	add hl,bc		;4ec8
	dec bc			;4ec9
l4ecah:
	dec bc			;4eca
	dec bc			;4ecb
	ld a,(bc)		;4ecc
	ld c,c			;4ecd
	inc c			;4ece
	dec bc			;4ecf
	ld hl,(00b0ah)		;4ed0
	dec bc			;4ed3
	inc c			;4ed4
	inc c			;4ed5
	ld a,(bc)		;4ed6
	inc bc			;4ed7
	nop			;4ed8
	inc b			;4ed9
	dec bc			;4eda
	dec bc			;4edb
	inc c			;4edc
	inc c			;4edd
	ld bc,00900h		;4ede
	ld a,(bc)		;4ee1
	inc c			;4ee2
	dec bc			;4ee3
	add hl,bc		;4ee4
	nop			;4ee5
	nop			;4ee6
	ld a,(bc)		;4ee7
	inc c			;4ee8
	dec c			;4ee9
	inc c			;4eea
	inc b			;4eeb
	nop			;4eec
	nop			;4eed
	ex af,af'		;4eee
	dec c			;4eef
	inc c			;4ef0
	ld a,(bc)		;4ef1
	ld a,(bc)		;4ef2
	rlca			;4ef3
	ld b,00bh		;4ef4
	inc c			;4ef6
	dec c			;4ef7
	ld a,(bc)		;4ef8
	dec b			;4ef9
	nop			;4efa
	inc b			;4efb
	dec hl			;4efc
	inc c			;4efd
	inc c			;4efe
	ld a,(bc)		;4eff
	add hl,bc		;4f00
	ld a,(bc)		;4f01
	dec bc			;4f02
	ld c,e			;4f03
	add hl,bc		;4f04
	ex af,af'		;4f05
	dec bc			;4f06
	inc c			;4f07
	ld hl,(0094bh)		;4f08
	nop			;4f0b
	nop			;4f0c
	inc c			;4f0d
	inc c			;4f0e
	inc c			;4f0f
	dec bc			;4f10
	ld b,000h		;4f11
	nop			;4f13
	nop			;4f14
	ld a,(bc)		;4f15
	dec c			;4f16
	inc c			;4f17
	inc c			;4f18
	ld c,e			;4f19
	inc b			;4f1a
	add hl,bc		;4f1b
	add hl,bc		;4f1c
	ld a,(bc)		;4f1d
	nop			;4f1e
	ex af,af'		;4f1f
	inc l			;4f20
	dec bc			;4f21
	inc c			;4f22
	add hl,bc		;4f23
	ex af,af'		;4f24
	rlca			;4f25
	ld bc,00c0ah		;4f26
	inc c			;4f29
	inc c			;4f2a
	ld b,000h		;4f2b
	add hl,bc		;4f2d
	ld a,(bc)		;4f2e
	ld a,(bc)		;4f2f
	inc c			;4f30
	dec bc			;4f31
	jr z,l4f3eh		;4f32
	ex af,af'		;4f34
	inc c			;4f35
	inc c			;4f36
	ld a,(bc)		;4f37
	ld a,(bc)		;4f38
	ex af,af'		;4f39
	ex af,af'		;4f3a
	dec bc			;4f3b
	ld a,(bc)		;4f3c
	dec bc			;4f3d
l4f3eh:
	inc c			;4f3e
	inc c			;4f3f
	ld a,(bc)		;4f40
	ex af,af'		;4f41
	ld bc,l4b09h		;4f42
	add hl,bc		;4f45
	ld a,(bc)		;4f46
	ld b,009h		;4f47
	ld c,b			;4f49
	ld l,d			;4f4a
	inc c			;4f4b
	dec bc			;4f4c
	ld l,h			;4f4d
	rlca			;4f4e
	add hl,bc		;4f4f
	ld c,e			;4f50
	ld h,00bh		;4f51
	inc b			;4f53
	ld a,(bc)		;4f54
	ld a,(bc)		;4f55
	add hl,hl		;4f56
	dec bc			;4f57
	dec bc			;4f58
	inc c			;4f59
	inc c			;4f5a
	ld b,008h		;4f5b
	rlca			;4f5d
	ld c,b			;4f5e
	inc c			;4f5f
	dec c			;4f60
	ld bc,00906h		;4f61
	dec bc			;4f64
	dec c			;4f65
	inc c			;4f66
	ld h,000h		;4f67
	nop			;4f69
	inc c			;4f6a
	inc c			;4f6b
	add hl,bc		;4f6c
	add hl,bc		;4f6d
	ex af,af'		;4f6e
	ex af,af'		;4f6f
	inc l			;4f70
	dec bc			;4f71
	ld a,(bc)		;4f72
	add hl,bc		;4f73
	add hl,bc		;4f74
	dec bc			;4f75
	ld b,008h		;4f76
	dec c			;4f78
	inc c			;4f79
	dec bc			;4f7a
	add hl,bc		;4f7b
	ld b,009h		;4f7c
	dec hl			;4f7e
	ex af,af'		;4f7f
	ex af,af'		;4f80
	dec hl			;4f81
	dec bc			;4f82
	inc c			;4f83
	ld (bc),a		;4f84
	nop			;4f85
	add hl,bc		;4f86
	inc c			;4f87
	inc c			;4f88
	dec hl			;4f89
	rlca			;4f8a
	rlca			;4f8b
	inc c			;4f8c
	inc c			;4f8d
	inc c			;4f8e
	ex af,af'		;4f8f
	nop			;4f90
	ld bc,00903h		;4f91
	inc c			;4f94
	inc c			;4f95
	dec bc			;4f96
	ld a,(bc)		;4f97
	ex af,af'		;4f98
	ex af,af'		;4f99
	add hl,bc		;4f9a
	dec bc			;4f9b
	dec bc			;4f9c
	dec bc			;4f9d
	inc c			;4f9e
	ld b,008h		;4f9f
	dec bc			;4fa1
	dec hl			;4fa2
	inc c			;4fa3
	inc c			;4fa4
	ld a,(bc)		;4fa5
	add hl,bc		;4fa6
	dec b			;4fa7
	rlca			;4fa8
	dec bc			;4fa9
	inc c			;4faa
	inc c			;4fab
	ld a,(bc)		;4fac
	ex af,af'		;4fad
	add hl,bc		;4fae
	add hl,bc		;4faf
	ld hl,(02a6bh)		;4fb0
	rlca			;4fb3
	inc c			;4fb4
	dec bc			;4fb5
	dec hl			;4fb6
	nop			;4fb7
	nop			;4fb8
	ld a,(bc)		;4fb9
	dec c			;4fba
	dec c			;4fbb
	inc bc			;4fbc
	nop			;4fbd
	nop			;4fbe
	ld bc,00c2ch		;4fbf
	ld a,(bc)		;4fc2
	adc a,e			;4fc3
	nop			;4fc4
	ld a,(bc)		;4fc5
	ld a,(bc)		;4fc6
	dec bc			;4fc7
	rlca			;4fc8
	ld a,(bc)		;4fc9
	dec bc			;4fca
	inc c			;4fcb
	nop			;4fcc
	add hl,bc		;4fcd
	ld a,(bc)		;4fce
	ld a,(bc)		;4fcf
	inc c			;4fd0
	dec c			;4fd1
	ld b,000h		;4fd2
	add hl,bc		;4fd4
	ld a,(bc)		;4fd5
	dec bc			;4fd6
	inc c			;4fd7
	dec bc			;4fd8
	add hl,bc		;4fd9
	ld a,(bc)		;4fda
	add hl,bc		;4fdb
	dec bc			;4fdc
	dec c			;4fdd
	ld a,(bc)		;4fde
	nop			;4fdf
	dec b			;4fe0
	nop			;4fe1
	ld b,00dh		;4fe2
	dec c			;4fe4
	ld a,(bc)		;4fe5
	dec bc			;4fe6
	ld b,000h		;4fe7
	add hl,bc		;4fe9
	dec bc			;4fea
	dec bc			;4feb
	inc c			;4fec
	ld a,(bc)		;4fed
	ex af,af'		;4fee
	add hl,bc		;4fef
	dec hl			;4ff0
	dec bc			;4ff1
	inc c			;4ff2
	inc b			;4ff3
	add hl,bc		;4ff4
	inc c			;4ff5
	ld a,(bc)		;4ff6
	rlca			;4ff7
	ex af,af'		;4ff8
	add hl,bc		;4ff9
	inc c			;4ffa
	dec c			;4ffb
	dec bc			;4ffc
	nop			;4ffd
	ld (bc),a		;4ffe
	inc b			;4fff
	ex af,af'		;5000
	inc c			;5001
	dec bc			;5002
	ld l,d			;5003
	ld c,e			;5004
	ld hl,(00a09h)		;5005
	ld a,(bc)		;5008
	inc c			;5009
	dec hl			;500a
	rlca			;500b
	ld a,(bc)		;500c
	ld a,(bc)		;500d
	dec bc			;500e
	ld a,(bc)		;500f
	ld b,009h		;5010
	add hl,bc		;5012
	ld a,(bc)		;5013
	dec c			;5014
	inc c			;5015
	nop			;5016
	nop			;5017
	rlca			;5018
	ld b,00bh		;5019
	dec c			;501b
	ld a,(bc)		;501c
	add hl,bc		;501d
	dec bc			;501e
	dec b			;501f
	inc c			;5020
	dec c			;5021
	rlca			;5022
	inc b			;5023
	ld a,(bc)		;5024
	ld b,00ah		;5025
	inc l			;5027
	add hl,hl		;5028
	dec bc			;5029
	add hl,bc		;502a
	ld a,(bc)		;502b
	dec h			;502c
	dec bc			;502d
	inc l			;502e
	ld b,00bh		;502f
	ld a,(bc)		;5031
	dec bc			;5032
	nop			;5033
	ld b,00ch		;5034
	add hl,bc		;5036
	inc b			;5037
	dec bc			;5038
	dec bc			;5039
	dec bc			;503a
	dec c			;503b
	ld a,(bc)		;503c
	inc b			;503d
	nop			;503e
	nop			;503f
	rlca			;5040
	inc c			;5041
	dec c			;5042
	inc c			;5043
	dec bc			;5044
	add hl,bc		;5045
	nop			;5046
	dec b			;5047
	dec bc			;5048
	dec bc			;5049
	dec bc			;504a
	ld a,(bc)		;504b
	ex af,af'		;504c
	ld a,(bc)		;504d
	dec bc			;504e
	inc c			;504f
	dec bc			;5050
	ld hl,(00603h)		;5051
	ld a,(bc)		;5054
	dec hl			;5055
	dec bc			;5056
	dec bc			;5057
	ex af,af'		;5058
	rlca			;5059
	ld a,(bc)		;505a
	add hl,bc		;505b
	dec bc			;505c
	inc c			;505d
	dec bc			;505e
	ld hl,(00909h)		;505f
	dec bc			;5062
	dec bc			;5063
	dec bc			;5064
	ld a,(bc)		;5065
	rlca			;5066
	ex af,af'		;5067
	dec bc			;5068
	dec bc			;5069
	inc c			;506a
	ld hl,(00904h)		;506b
	add hl,bc		;506e
	inc c			;506f
	inc c			;5070
	ld b,009h		;5071
	add hl,bc		;5073
	rlca			;5074
	dec bc			;5075
	inc c			;5076
	ld a,(bc)		;5077
	inc c			;5078
	ld a,(bc)		;5079
	ld b,04bh		;507a
	ld c,e			;507c
	rlca			;507d
	ld (bc),a		;507e
	add hl,bc		;507f
	inc c			;5080
	ld hl,(02b06h)		;5081
	ld bc,0094bh		;5084
	inc c			;5087
	nop			;5088
	ld a,(bc)		;5089
	ld a,(bc)		;508a
	inc c			;508b
	inc c			;508c
	rlca			;508d
	add hl,bc		;508e
	ex af,af'		;508f
	inc b			;5090
	inc c			;5091
	dec c			;5092
	dec bc			;5093
	add hl,bc		;5094
	ex af,af'		;5095
	ld bc,00c07h		;5096
	inc c			;5099
	dec bc			;509a
	dec bc			;509b
	ex af,af'		;509c
	ld (bc),a		;509d
	add hl,bc		;509e
	dec hl			;509f
	dec bc			;50a0
	dec hl			;50a1
	ld a,(bc)		;50a2
	ld a,(bc)		;50a3
	add hl,bc		;50a4
	rlca			;50a5
	rlca			;50a6
	inc c			;50a7
	dec c			;50a8
	ld a,(bc)		;50a9
	ex af,af'		;50aa
	ex af,af'		;50ab
	ex af,af'		;50ac
	dec bc			;50ad
	inc c			;50ae
	dec bc			;50af
	ld a,(bc)		;50b0
	add hl,bc		;50b1
	ld bc,00b08h		;50b2
	dec bc			;50b5
	inc c			;50b6
	inc c			;50b7
	ex af,af'		;50b8
	nop			;50b9
	ex af,af'		;50ba
	add hl,bc		;50bb
	dec bc			;50bc
	inc c			;50bd
	ld a,(bc)		;50be
	ld hl,(0290bh)		;50bf
	inc c			;50c2
	add hl,bc		;50c3
	dec hl			;50c4
	ex af,af'		;50c5
	ld a,(bc)		;50c6
	ld a,(bc)		;50c7
	inc c			;50c8
	inc c			;50c9
	ex af,af'		;50ca
	inc b			;50cb
	add hl,bc		;50cc
	ld a,(bc)		;50cd
	dec bc			;50ce
	dec c			;50cf
	dec bc			;50d0
	ex af,af'		;50d1
	add hl,bc		;50d2
	ex af,af'		;50d3
	rlca			;50d4
	dec hl			;50d5
	inc c			;50d6
	inc c			;50d7
	ld b,005h		;50d8
	ld a,(bc)		;50da
	dec bc			;50db
	dec bc			;50dc
	dec bc			;50dd
	ld a,(bc)		;50de
	rlca			;50df
	ld a,(bc)		;50e0
	dec bc			;50e1
	dec bc			;50e2
	dec bc			;50e3
	ld hl,(00908h)		;50e4
	ld hl,(00b2bh)		;50e7
	inc c			;50ea
	dec bc			;50eb
	add hl,bc		;50ec
	ld a,(bc)		;50ed
	nop			;50ee
	inc bc			;50ef
	dec bc			;50f0
	ld a,(bc)		;50f1
	dec hl			;50f2
	inc c			;50f3
	dec bc			;50f4
	ld a,(bc)		;50f5
	ld b,00ah		;50f6
	dec bc			;50f8
	add hl,bc		;50f9
	ex af,af'		;50fa
	add hl,bc		;50fb
	ld a,(bc)		;50fc
	inc c			;50fd
	inc c			;50fe
	dec bc			;50ff
	ld a,(bc)		;5100
	ex af,af'		;5101
	rlca			;5102
	add hl,bc		;5103
	dec hl			;5104
	inc c			;5105
	dec bc			;5106
	dec bc			;5107
	jr z,l5112h		;5108
	rlca			;510a
	dec bc			;510b
	inc l			;510c
	ld hl,(00b2ah)		;510d
	ld (bc),a		;5110
	nop			;5111
l5112h:
	add hl,bc		;5112
	dec bc			;5113
	inc c			;5114
	dec c			;5115
	ld a,(bc)		;5116
	ex af,af'		;5117
	ld a,(bc)		;5118
	add hl,hl		;5119
	dec bc			;511a
	inc c			;511b
	rlca			;511c
	ld a,(bc)		;511d
	ld c,d			;511e
	dec bc			;511f
	inc c			;5120
	ex af,af'		;5121
	add hl,bc		;5122
l5123h:
	ld a,(bc)		;5123
	dec bc			;5124
	ld c,e			;5125
	add hl,bc		;5126
l5127h:
	ex af,af'		;5127
	ld a,(bc)		;5128
	dec bc			;5129
	inc bc			;512a
	ld a,(bc)		;512b
	inc c			;512c
	dec bc			;512d
	inc c			;512e
	dec bc			;512f
	ld (bc),a		;5130
	nop			;5131
	add hl,bc		;5132
	ld hl,(00d0ch)		;5133
	rlca			;5136
	ex af,af'		;5137
sub_5138h:
	ld (bc),a		;5138
	ld a,(bc)		;5139
	inc c			;513a
	add hl,bc		;513b
	dec b			;513c
l513dh:
	dec bc			;513d
	dec bc			;513e
	dec bc			;513f
	inc c			;5140
	ld b,000h		;5141
	dec hl			;5143
	add hl,bc		;5144
	ld a,(bc)		;5145
	ex af,af'		;5146
	dec hl			;5147
	dec c			;5148
	dec bc			;5149
	dec bc			;514a
	rlca			;514b
	ld bc,0090ah		;514c
	add hl,bc		;514f
	inc l			;5150
	dec bc			;5151
	dec bc			;5152
	add hl,hl		;5153
	rlca			;5154
	ld a,(bc)		;5155
	add hl,hl		;5156
	inc c			;5157
	dec bc			;5158
	dec hl			;5159
	ld a,(bc)		;515a
	ld a,(bc)		;515b
	add hl,bc		;515c
	ld b,00ah		;515d
	dec hl			;515f
	dec bc			;5160
	inc c			;5161
	add hl,bc		;5162
	ld hl,(00729h)		;5163
	ex af,af'		;5166
	dec bc			;5167
	dec hl			;5168
	ld a,(bc)		;5169
	inc c			;516a
	ld b,007h		;516b
	rlca			;516d
	add hl,bc		;516e
	inc c			;516f
	inc c			;5170
	dec hl			;5171
	ld a,(bc)		;5172
	add hl,hl		;5173
	dec bc			;5174
	add hl,bc		;5175
	ex af,af'		;5176
	ld hl,(00b0ch)		;5177
	dec bc			;517a
	rlca			;517b
	add hl,hl		;517c
	inc c			;517d
	ld a,(bc)		;517e
	ld a,(bc)		;517f
	dec b			;5180
	ld a,(bc)		;5181
	inc c			;5182
	dec bc			;5183
	dec bc			;5184
	dec bc			;5185
	dec b			;5186
	rlca			;5187
	ld a,(bc)		;5188
	ld a,(bc)		;5189
	dec bc			;518a
	inc c			;518b
	add hl,bc		;518c
	ld a,(bc)		;518d
	adc a,e			;518e
	ld b,04bh		;518f
	dec b			;5191
	ld b,009h		;5192
	inc c			;5194
	inc bc			;5195
	ld a,(bc)		;5196
	add hl,bc		;5197
	ex af,af'		;5198
	inc c			;5199
	dec bc			;519a
	dec b			;519b
	dec bc			;519c
	ld a,(bc)		;519d
	ex af,af'		;519e
	inc c			;519f
	dec bc			;51a0
	rlca			;51a1
	ld l,e			;51a2
	ld a,(bc)		;51a3
	ld b,02bh		;51a4
	jr z,l51d2h		;51a6
	daa			;51a8
	call z,00608h		;51a9
	add hl,bc		;51ac
	rlca			;51ad
	ld a,(bc)		;51ae
	ex af,af'		;51af
	add hl,bc		;51b0
	dec b			;51b1
	ld l,d			;51b2
	add hl,bc		;51b3
	dec b			;51b4
	dec hl			;51b5
	rlca			;51b6
	add hl,bc		;51b7
	inc c			;51b8
	dec bc			;51b9
	jr z,l51c7h		;51ba
	rlca			;51bc
	inc c			;51bd
	ld a,(bc)		;51be
	dec b			;51bf
	dec bc			;51c0
	add hl,bc		;51c1
	add hl,hl		;51c2
	inc c			;51c3
	dec bc			;51c4
	dec bc			;51c5
	add hl,hl		;51c6
l51c7h:
	rlca			;51c7
	ld c,h			;51c8
	ex af,af'		;51c9
	ld a,(bc)		;51ca
	add hl,hl		;51cb
	add hl,bc		;51cc
	dec bc			;51cd
	ld b,008h		;51ce
	inc l			;51d0
	ld a,(bc)		;51d1
l51d2h:
	dec bc			;51d2
	ld b,007h		;51d3
	dec bc			;51d5
	rlca			;51d6
	dec bc			;51d7
	adc a,h			;51d8
	ld b,08ah		;51d9
	nop			;51db
	inc bc			;51dc
	ld b,025h		;51dd
	dec c			;51df
	add hl,hl		;51e0
	inc l			;51e1
	ld (bc),a		;51e2
	ld b,l			;51e3
	ld a,(bc)		;51e4
	dec c			;51e5
	dec b			;51e6
	inc c			;51e7
	ld a,(bc)		;51e8
	defb 0edh ;next byte illegal after ed	;51e9
	nop			;51ea
	ld (bc),a		;51eb
	dec b			;51ec
	dec b			;51ed
	inc hl			;51ee
	ex af,af'		;51ef
	ld (bc),a		;51f0
	ld bc,00807h		;51f1
	inc b			;51f4
	inc bc			;51f5
	ld bc,00706h		;51f6
	defb 0edh ;next byte illegal after ed	;51f9
	rlca			;51fa
	nop			;51fb
	nop			;51fc
	inc bc			;51fd
	dec b			;51fe
	inc b			;51ff
	daa			;5200
	rlca			;5201
	ld bc,00504h		;5202
	daa			;5205
	rlca			;5206
	nop			;5207
	defb 0edh ;next byte illegal after ed	;5208
	ld h,005h		;5209
	nop			;520b
	rlca			;520c
	ld b,009h		;520d
	nop			;520f
	inc bc			;5210
	ld bc,00308h		;5211
l5214h:
	rlca			;5214
	ld (bc),a		;5215
	inc b			;5216
	nop			;5217
	defb 0edh ;next byte illegal after ed	;5218
	ld b,026h		;5219
	ex af,af'		;521b
	rlca			;521c
	ex af,af'		;521d
	inc bc			;521e
	nop			;521f
	nop			;5220
	daa			;5221
	rlca			;5222
	inc bc			;5223
	nop			;5224
	nop			;5225
	daa			;5226
	defb 0edh ;next byte illegal after ed	;5227
	daa			;5228
	ex af,af'		;5229
	inc b			;522a
	inc b			;522b
	ld (bc),a		;522c
	inc bc			;522d
	inc b			;522e
	rlca			;522f
	ld b,005h		;5230
	dec b			;5232
	daa			;5233
	ld b,0edh		;5234
	ex af,af'		;5236
	dec h			;5237
	inc b			;5238
	ex af,af'		;5239
	inc bc			;523a
	ld b,000h		;523b
	inc b			;523d
	inc b			;523e
	ex af,af'		;523f
	dec b			;5240
	rlca			;5241
	rlca			;5242
	ex af,af'		;5243
	ld b,0edh		;5244
	rlca			;5246
	dec h			;5247
	ld b,007h		;5248
	rlca			;524a
	ld b,001h		;524b
	ld bc,00704h		;524d
	rlca			;5250
	ex af,af'		;5251
	dec b			;5252
	daa			;5253
	inc b			;5254
	defb 0edh ;next byte illegal after ed	;5255
	rlca			;5256
	add hl,bc		;5257
	inc b			;5258
	nop			;5259
	nop			;525a
	inc bc			;525b
	rlca			;525c
	dec b			;525d
	ex af,af'		;525e
	ld b,006h		;525f
	nop			;5261
	nop			;5262
	inc b			;5263
	ex af,af'		;5264
	defb 0edh ;next byte illegal after ed	;5265
	ex af,af'		;5266
	rlca			;5267
	inc hl			;5268
	inc bc			;5269
	jr z,l5273h		;526a
	ld b,h			;526c
	ld b,027h		;526d
	ld b,005h		;526f
	defb 0edh ;next byte illegal after ed	;5271
	inc b			;5272
l5273h:
	ld h,(hl)		;5273
	dec b			;5274
	ld b,025h		;5275
	rlca			;5277
	rlca			;5278
	ex af,af'		;5279
	ld b,007h		;527a
	inc b			;527c
	ld b,0edh		;527d
	dec b			;527f
	rlca			;5280
	ld b,006h		;5281
	dec b			;5283
	dec b			;5284
	ld b,024h		;5285
	dec b			;5287
	rlca			;5288
	dec b			;5289
	dec b			;528a
	inc b			;528b
	daa			;528c
	dec b			;528d
	defb 0edh ;next byte illegal after ed	;528e
	inc b			;528f
	ld b,005h		;5290
	daa			;5292
	ld b,0a5h		;5293
	ex af,af'		;5295
	ld b,027h		;5296
	defb 0edh ;next byte illegal after ed	;5298
	ld b,007h		;5299
	inc b			;529b
	inc bc			;529c
	dec b			;529d
	dec b			;529e
	ld b,h			;529f
	ld b,002h		;52a0
	ld b,006h		;52a2
	inc b			;52a4
	dec b			;52a5
	defb 0edh ;next byte illegal after ed	;52a6
	ld h,047h		;52a7
	inc b			;52a9
	ld b,008h		;52aa
	inc b			;52ac
	rlca			;52ad
	inc bc			;52ae
	ex af,af'		;52af
	dec b			;52b0
	ld h,a			;52b1
	nop			;52b2
	defb 0edh ;next byte illegal after ed	;52b3
	inc b			;52b4
	inc hl			;52b5
	ld h,(hl)		;52b6
	dec b			;52b7
	inc bc			;52b8
	dec b			;52b9
l52bah:
	inc b			;52ba
	dec b			;52bb
	nop			;52bc
	ld b,0edh		;52bd
	dec b			;52bf
	rlca			;52c0
	inc hl			;52c1
	ld b,007h		;52c2
	ld (bc),a		;52c4
	ex af,af'		;52c5
	dec h			;52c6
	ld h,a			;52c7
	inc bc			;52c8
	rlca			;52c9
	defb 0edh ;next byte illegal after ed	;52ca
	dec b			;52cb
	ld h,003h		;52cc
	ld b,007h		;52ce
	dec b			;52d0
	dec h			;52d1
	inc b			;52d2
	ld (bc),a		;52d3
	ld b,(hl)		;52d4
	inc bc			;52d5
	inc b			;52d6
	defb 0edh ;next byte illegal after ed	;52d7
	ld bc,00403h		;52d8
	ld b,005h		;52db
	dec b			;52dd
	inc b			;52de
	ld (bc),a		;52df
	inc bc			;52e0
	inc b			;52e1
	dec b			;52e2
	dec b			;52e3
	ld b,004h		;52e4
	dec b			;52e6
	inc bc			;52e7
	defb 0edh ;next byte illegal after ed	;52e8
	ld b,0a5h		;52e9
	daa			;52eb
	ld b,0e7h		;52ec
	inc b			;52ee
	dec b			;52ef
sub_52f0h:
	defb 0edh ;next byte illegal after ed	;52f0
	inc b			;52f1
	inc hl			;52f2
	ld (bc),a		;52f3
	rlca			;52f4
	ld bc,00046h		;52f5
	inc bc			;52f8
	ld bc,085edh		;52f9
	ld b,d			;52fc
	inc hl			;52fd
	ld h,(hl)		;52fe
	inc b			;52ff
	ld (bc),a		;5300
	inc bc			;5301
	defb 0edh ;next byte illegal after ed	;5302
	ld (bc),a		;5303
	daa			;5304
	dec b			;5305
	ld bc,00306h		;5306
	rlca			;5309
	ld (bc),a		;530a
	ex af,af'		;530b
	inc bc			;530c
	ld b,a			;530d
	ld (bc),a		;530e
	dec b			;530f
	defb 0edh ;next byte illegal after ed	;5310
	add a,(hl)		;5311
	ld h,004h		;5312
	ld b,005h		;5314
	dec b			;5316
	inc bc			;5317
	ld b,004h		;5318
	ld b,l			;531a
	defb 0edh ;next byte illegal after ed	;531b
	inc bc			;531c
	inc b			;531d
	dec b			;531e
	inc bc			;531f
	ld b,h			;5320
	inc h			;5321
	dec h			;5322
	inc bc			;5323
	ld bc,0ed26h		;5324
	ld (bc),a		;5327
	inc bc			;5328
	dec b			;5329
	nop			;532a
	ld h,(hl)		;532b
	ld (bc),a		;532c
	inc h			;532d
	inc bc			;532e
	rlca			;532f
	dec b			;5330
	ld b,0edh		;5331
	inc b			;5333
	ld b,a			;5334
	inc bc			;5335
	dec h			;5336
	ld b,004h		;5337
	and a			;5339
	dec b			;533a
l533bh:
	inc bc			;533b
	inc b			;533c
	ld (00226h),bc		;533d
	ld b,h			;5341
	dec h			;5342
	inc b			;5343
	dec b			;5344
	ld b,e			;5345
	defb 0edh ;next byte illegal after ed	;5346
	inc b			;5347
	push hl			;5348
	and d			;5349
	defb 0edh ;next byte illegal after ed	;534a
	inc hl			;534b
	dec h			;534c
	ld (bc),a		;534d
	ld h,004h		;534e
	ld bc,020e7h		;5350
	ld hl,002edh		;5353
	inc bc			;5356
	ld h,h			;5357
	rst 20h			;5358
	inc bc			;5359
	defb 0edh ;next byte illegal after ed	;535a
	add a,h			;535b
	rst 20h			;535c
	dec h			;535d
	ld (bc),a		;535e
	defb 0edh ;next byte illegal after ed	;535f
	inc hl			;5360
	ld (bc),a		;5361
	ld h,c			;5362
	rst 20h			;5363
	nop			;5364
	defb 0edh ;next byte illegal after ed	;5365
	ld bc,0e7e0h		;5366
	defb 0edh ;next byte illegal after ed	;5369
	ret nz			;536a
	rst 20h			;536b
	defb 0edh ;next byte illegal after ed	;536c
	ld hl,00203h		;536d
	inc bc			;5370
	rst 20h			;5371
	ld (bc),a		;5372
	ld b,h			;5373
	defb 0edh ;next byte illegal after ed	;5374
	dec b			;5375
	inc b			;5376
	add a,l			;5377
	rst 20h			;5378
	defb 0edh ;next byte illegal after ed	;5379
	ld b,005h		;537a
	ld b,065h		;537c
	rst 20h			;537e
	ld b,0edh		;537f
	push hl			;5381
	rst 20h			;5382
	defb 0edh ;next byte illegal after ed	;5383
	dec b			;5384
	inc b			;5385
	dec b			;5386
	ld b,h			;5387
	rst 20h			;5388
	ld (bc),a		;5389
	inc hl			;538a
	defb 0edh ;next byte illegal after ed	;538b
	ld (00201h),hl		;538c
	ld h,a			;538f
	ld hl,0ed02h		;5390
	ld bc,004e6h		;5393
	inc bc			;5396
	inc b			;5397
	inc bc			;5398
	ld h,h			;5399
	defb 0edh ;next byte illegal after ed	;539a
	add a,003h		;539b
	inc h			;539d
	dec b			;539e
	inc h			;539f
	inc bc			;53a0
	defb 0edh ;next byte illegal after ed	;53a1
	rst 20h			;53a2
	and c			;53a3
	ld h,d			;53a4
	defb 0edh ;next byte illegal after ed	;53a5
	rst 20h			;53a6
	ld b,e			;53a7
	add a,h			;53a8
	defb 0edh ;next byte illegal after ed	;53a9
	rst 20h			;53aa
	dec b			;53ab
	inc b			;53ac
	dec h			;53ad
	inc b			;53ae
	dec b			;53af
	defb 0edh ;next byte illegal after ed	;53b0
	daa			;53b1
	inc b			;53b2
	ld h,(hl)		;53b3
	ld b,007h		;53b4
	ld b,007h		;53b6
	dec b			;53b8
	ld b,006h		;53b9
	rlca			;53bb
	dec b			;53bc
	defb 0edh ;next byte illegal after ed	;53bd
	ld b,006h		;53be
	ld h,a			;53c0
	inc b			;53c1
	ld b,004h		;53c2
	ld h,006h		;53c4
	rlca			;53c6
	dec b			;53c7
	ld b,(hl)		;53c8
	rlca			;53c9
	defb 0edh ;next byte illegal after ed	;53ca
	ld b,027h		;53cb
l53cdh:
	inc b			;53cd
	ld b,(hl)		;53ce
	ld b,007h		;53cf
	dec b			;53d1
	rlca			;53d2
	inc b			;53d3
	dec b			;53d4
	rlca			;53d5
	defb 0edh ;next byte illegal after ed	;53d6
	ld h,006h		;53d7
	rlca			;53d9
	ld (bc),a		;53da
	ld h,007h		;53db
	dec b			;53dd
	rlca			;53de
	ld b,004h		;53df
	dec b			;53e1
	rlca			;53e2
	inc b			;53e3
	ld b,0edh		;53e4
	ld b,007h		;53e6
	ld bc,00706h		;53e8
	dec b			;53eb
	inc b			;53ec
	ld b,007h		;53ed
	inc b			;53ef
	dec b			;53f0
	ld b,007h		;53f1
	ld bc,00605h		;53f3
	defb 0edh ;next byte illegal after ed	;53f6
	rlca			;53f7
	nop			;53f8
	ld b,006h		;53f9
	dec b			;53fb
	ld bc,00507h		;53fc
	inc b			;53ff
	inc h			;5400
	rlca			;5401
	ld bc,02606h		;5402
	ld bc,006edh		;5405
	dec b			;5408
	ld (bc),a		;5409
	rlca			;540a
	inc bc			;540b
	inc bc			;540c
l540dh:
	ld b,006h		;540d
	ld bc,00605h		;540f
	inc bc			;5412
	inc bc			;5413
	rlca			;5414
	inc b			;5415
	defb 0edh ;next byte illegal after ed	;5416
	ld (bc),a		;5417
	ld b,026h		;5418
	nop			;541a
	ld h,000h		;541b
	ld b,l			;541d
	inc b			;541e
	ld b,002h		;541f
	rlca			;5421
	inc bc			;5422
l5423h:
	defb 0edh ;next byte illegal after ed	;5423
	inc b			;5424
	dec b			;5425
	rlca			;5426
	nop			;5427
	inc b			;5428
	rlca			;5429
	dec b			;542a
	inc bc			;542b
	ld b,026h		;542c
	ld bc,00406h		;542e
	inc h			;5431
	rlca			;5432
	defb 0edh ;next byte illegal after ed	;5433
	inc bc			;5434
	ld b,026h		;5435
	ld bc,00307h		;5437
	inc bc			;543a
	rlca			;543b
	inc b			;543c
	inc bc			;543d
	rlca			;543e
	dec b			;543f
	inc b			;5440
	ld b,0edh		;5441
	daa			;5443
	nop			;5444
	dec b			;5445
	dec b			;5446
	inc b			;5447
	ex af,af'		;5448
	nop			;5449
	ld h,006h		;544a
	inc bc			;544c
	rlca			;544d
	ld b,001h		;544e
	rlca			;5450
	defb 0edh ;next byte illegal after ed	;5451
	ld b,005h		;5452
	dec b			;5454
l5455h:
	daa			;5455
	ld bc,00507h		;5456
	dec b			;5459
	rlca			;545a
	daa			;545b
	ld bc,00426h		;545c
	defb 0edh ;next byte illegal after ed	;545f
	rlca			;5460
	inc b			;5461
	ld b,008h		;5462
	inc b			;5464
	ld h,007h		;5465
	ld (bc),a		;5467
	rlca			;5468
	rlca			;5469
	inc b			;546a
	ld b,007h		;546b
	dec b			;546d
	dec h			;546e
	defb 0edh ;next byte illegal after ed	;546f
	ex af,af'		;5470
	dec b			;5471
	rlca			;5472
	ld b,005h		;5473
	rlca			;5475
	ld b,004h		;5476
	ex af,af'		;5478
	ld b,005h		;5479
	rlca			;547b
	daa			;547c
	dec b			;547d
	defb 0edh ;next byte illegal after ed	;547e
	rlca			;547f
	dec b			;5480
	dec b			;5481
	ex af,af'		;5482
	inc b			;5483
	ld b,007h		;5484
	rlca			;5486
	dec b			;5487
	ld b,008h		;5488
	dec b			;548a
	ld b,007h		;548b
	rlca			;548d
	ld (bc),a		;548e
	defb 0edh ;next byte illegal after ed	;548f
	ex af,af'		;5490
	ld h,006h		;5491
	ex af,af'		;5493
	inc bc			;5494
	ld h,007h		;5495
	inc b			;5497
	rlca			;5498
	rlca			;5499
	inc b			;549a
	ld b,007h		;549b
	dec b			;549d
	defb 0edh ;next byte illegal after ed	;549e
	ld b,027h		;549f
	inc b			;54a1
	add hl,bc		;54a2
	ex af,af'		;54a3
	nop			;54a4
	nop			;54a5
	dec b			;54a6
	inc bc			;54a7
	inc b			;54a8
	ex af,af'		;54a9
	ld b,027h		;54aa
	ex af,af'		;54ac
	inc c			;54ad
	rlca			;54ae
	ld b,(hl)		;54af
	defb 0edh ;next byte illegal after ed	;54b0
	add hl,bc		;54b1
	rlca			;54b2
	nop			;54b3
	ld (bc),a		;54b4
	rlca			;54b5
	daa			;54b6
	dec h			;54b7
	inc b			;54b8
	rlca			;54b9
	dec b			;54ba
	ld b,006h		;54bb
	defb 0edh ;next byte illegal after ed	;54bd
	rlca			;54be
	ld bc,00725h		;54bf
	ld h,007h		;54c2
	ld (bc),a		;54c4
	rlca			;54c5
	inc b			;54c6
	dec h			;54c7
	rlca			;54c8
	inc hl			;54c9
	rlca			;54ca
	defb 0edh ;next byte illegal after ed	;54cb
	dec b			;54cc
	ld b,027h		;54cd
	nop			;54cf
	rlca			;54d0
	dec b			;54d1
sub_54d2h:
	inc bc			;54d2
	rlca			;54d3
	ld b,004h		;54d4
	inc hl			;54d6
	rlca			;54d7
	ld b,0edh		;54d8
	inc b			;54da
	rlca			;54db
	ld bc,00526h		;54dc
	ld bc,00607h		;54df
	inc bc			;54e2
	inc bc			;54e3
	rlca			;54e4
	ld b,004h		;54e5
	ld (bc),a		;54e7
	ld b,0edh		;54e8
	rlca			;54ea
	ld (bc),a		;54eb
	ld (bc),a		;54ec
	dec h			;54ed
	rlca			;54ee
l54efh:
	ld bc,00504h		;54ef
	rlca			;54f2
	ld bc,00401h		;54f3
	rlca			;54f6
	ld b,003h		;54f7
	defb 0edh ;next byte illegal after ed	;54f9
	ld bc,00604h		;54fa
	dec b			;54fd
	ld (bc),a		;54fe
	nop			;54ff
	dec b			;5500
	rlca			;5501
	ld b,004h		;5502
	nop			;5504
	inc bc			;5505
	dec b			;5506
	ld b,002h		;5507
	inc bc			;5509
	defb 0edh ;next byte illegal after ed	;550a
	nop			;550b
	ld b,006h		;550c
	dec b			;550e
	dec b			;550f
	inc h			;5510
	ld b,020h		;5511
	nop			;5513
	ld b,007h		;5514
	inc b			;5516
	dec b			;5517
	ld bc,002edh		;5518
	dec h			;551b
	dec h			;551c
	ld bc,02502h		;551d
	ld b,000h		;5520
	nop			;5522
	ld bc,00606h		;5523
	dec b			;5526
	defb 0edh ;next byte illegal after ed	;5527
	inc bc			;5528
	ld h,d			;5529
	inc b			;552a
	dec b			;552b
	ld b,005h		;552c
	ld bc,00406h		;552e
	dec b			;5531
	ld (0ed24h),hl		;5532
	dec b			;5535
	ld b,004h		;5536
	inc bc			;5538
	inc hl			;5539
	ld (bc),a		;553a
	dec h			;553b
	ld b,004h		;553c
	ld bc,00303h		;553e
	dec b			;5541
	defb 0edh ;next byte illegal after ed	;5542
	dec b			;5543
	rlca			;5544
	inc b			;5545
	dec b			;5546
	jr nz,l554ah		;5547
	dec b			;5549
l554ah:
	ld h,006h		;554a
	inc bc			;554c
	inc bc			;554d
	nop			;554e
	ld (bc),a		;554f
	ld bc,006edh		;5550
	ld b,007h		;5553
	ld bc,00206h		;5555
	dec h			;5558
	nop			;5559
	dec b			;555a
	ld h,026h		;555b
	jr nz,l555fh		;555d
l555fh:
	defb 0edh ;next byte illegal after ed	;555f
	inc b			;5560
	add hl,bc		;5561
	dec b			;5562
	ld b,004h		;5563
	jr nz,l5567h		;5565
l5567h:
	inc b			;5567
	rlca			;5568
	ld b,006h		;5569
	inc b			;556b
	dec h			;556c
	dec b			;556d
	defb 0edh ;next byte illegal after ed	;556e
	inc b			;556f
	inc bc			;5570
	inc bc			;5571
	inc b			;5572
	inc b			;5573
	daa			;5574
	rlca			;5575
	inc b			;5576
	inc hl			;5577
	nop			;5578
	ld bc,00606h		;5579
	defb 0edh ;next byte illegal after ed	;557c
	rlca			;557d
	dec h			;557e
	ld h,023h		;557f
	inc b			;5581
	ld b,005h		;5582
	dec b			;5584
	daa			;5585
	rlca			;5586
	dec b			;5587
	nop			;5588
	defb 0edh ;next byte illegal after ed	;5589
	nop			;558a
	dec b			;558b
	ld b,007h		;558c
	inc bc			;558e
	ex af,af'		;558f
sub_5590h:
	rlca			;5590
	rlca			;5591
	dec b			;5592
	inc bc			;5593
	inc b			;5594
	inc b			;5595
	nop			;5596
	nop			;5597
	inc bc			;5598
	rlca			;5599
	defb 0edh ;next byte illegal after ed	;559a
	ex af,af'		;559b
	ld b,006h		;559c
	dec b			;559e
	rlca			;559f
	inc h			;55a0
	ld h,001h		;55a1
	dec b			;55a3
	dec b			;55a4
	daa			;55a5
	ld b,004h		;55a6
	defb 0edh ;next byte illegal after ed	;55a8
	ld h,000h		;55a9
	ld bc,00527h		;55ab
	rlca			;55ae
	ex af,af'		;55af
	ld b,027h		;55b0
	ld (00406h),hl		;55b2
	defb 0edh ;next byte illegal after ed	;55b5
	inc b			;55b6
	ld h,026h		;55b7
	ex af,af'		;55b9
	rlca			;55ba
	rlca			;55bb
	ld b,024h		;55bc
	inc bc			;55be
	dec b			;55bf
	ld b,008h		;55c0
	rlca			;55c2
	defb 0edh ;next byte illegal after ed	;55c3
	ld h,008h		;55c4
	ld h,005h		;55c6
	nop			;55c8
	and a			;55c9
	inc b			;55ca
	ld b,047h		;55cb
	defb 0edh ;next byte illegal after ed	;55cd
	ld b,004h		;55ce
	nop			;55d0
	dec h			;55d1
	ld b,005h		;55d2
	daa			;55d4
	ld b,005h		;55d5
	ex af,af'		;55d7
	rlca			;55d8
	ld b,0edh		;55d9
	nop			;55db
	inc b			;55dc
	ld b,006h		;55dd
	daa			;55df
	ex af,af'		;55e0
	ld b,a			;55e1
	ld b,005h		;55e2
	ld b,002h		;55e4
	nop			;55e6
	inc bc			;55e7
	defb 0edh ;next byte illegal after ed	;55e8
	ld b,006h		;55e9
	ex af,af'		;55eb
	rlca			;55ec
	rlca			;55ed
	ex af,af'		;55ee
	ex af,af'		;55ef
	ld b,007h		;55f0
	rlca			;55f2
	inc bc			;55f3
	ld bc,00305h		;55f4
	ex af,af'		;55f7
	rlca			;55f8
	defb 0edh ;next byte illegal after ed	;55f9
l55fah:
	ld bc,00606h		;55fa
	dec b			;55fd
	rlca			;55fe
	daa			;55ff
	ex af,af'		;5600
	ld h,000h		;5601
	daa			;5603
	ex af,af'		;5604
	dec b			;5605
	ld b,0edh		;5606
	daa			;5608
	inc b			;5609
	ld b,008h		;560a
	dec b			;560c
	nop			;560d
	nop			;560e
	inc b			;560f
	ex af,af'		;5610
	ld b,006h		;5611
	dec b			;5613
	inc b			;5614
l5615h:
	inc bc			;5615
l5616h:
	ex af,af'		;5616
	defb 0edh ;next byte illegal after ed	;5617
	ld b,027h		;5618
	ex af,af'		;561a
	ld b,028h		;561b
	inc b			;561d
	ld b,004h		;561e
	ld (bc),a		;5620
	jr nz,l5623h		;5621
l5623h:
	ex af,af'		;5623
	ex af,af'		;5624
	defb 0edh ;next byte illegal after ed	;5625
	daa			;5626
	ld bc,00102h		;5627
	rlca			;562a
	ld b,004h		;562b
	ex af,af'		;562d
	ld a,(bc)		;562e
	inc b			;562f
	nop			;5630
	ex af,af'		;5631
	ld a,(bc)		;5632
	ld b,a			;5633
	ld b,06ch		;5634
	add hl,bc		;5636
	ex af,af'		;5637
	ex af,af'		;5638
	ld a,(bc)		;5639
	rlca			;563a
	rlca			;563b
	dec bc			;563c
	add hl,bc		;563d
	add hl,bc		;563e
	call pe,00a2ah		;563f
	ld b,00bh		;5642
	add hl,hl		;5644
	ld a,(bc)		;5645
	dec bc			;5646
	ex af,af'		;5647
	ex af,af'		;5648
	dec b			;5649
	add hl,bc		;564a
	ex af,af'		;564b
	ld hl,(08c07h)		;564c
	inc b			;564f
	add hl,bc		;5650
	nop			;5651
	ld a,(bc)		;5652
	rlca			;5653
	ld l,e			;5654
	ld b,000h		;5655
	ld a,(bc)		;5657
	ex af,af'		;5658
	dec hl			;5659
	rlca			;565a
	ld c,h			;565b
	ex af,af'		;565c
	ld a,(bc)		;565d
	inc b			;565e
	add hl,hl		;565f
	dec b			;5660
	defb 0edh ;next byte illegal after ed	;5661
	ex af,af'		;5662
	daa			;5663
	ld h,004h		;5664
	ex af,af'		;5666
	ld b,002h		;5667
	nop			;5669
	inc b			;566a
	dec b			;566b
	dec b			;566c
	inc bc			;566d
	nop			;566e
	ld bc,006edh		;566f
	dec b			;5672
	inc b			;5673
	nop			;5674
	dec b			;5675
	dec b			;5676
	inc bc			;5677
	ld bc,00727h		;5678
	ex af,af'		;567b
	inc bc			;567c
	dec b			;567d
	inc b			;567e
	rlca			;567f
	defb 0edh ;next byte illegal after ed	;5680
	jr z,$+10		;5681
	ld b,000h		;5683
	nop			;5685
	ld b,007h		;5686
	rlca			;5688
	ex af,af'		;5689
	jr nz,l568ch		;568a
l568ch:
	ld b,023h		;568c
	ex af,af'		;568e
	adc a,l			;568f
	ld b,020h		;5690
	nop			;5692
	ld bc,00722h		;5693
	dec b			;5696
	xor h			;5697
	rlca			;5698
	add hl,hl		;5699
	ld c,b			;569a
	ex af,af'		;569b
	ld c,c			;569c
	rlca			;569d
	ld a,(bc)		;569e
	dec bc			;569f
	add hl,hl		;56a0
	ld a,(bc)		;56a1
	ld c,h			;56a2
	ld b,04ah		;56a3
	ld a,(bc)		;56a5
	add hl,bc		;56a6
	dec bc			;56a7
	ex af,af'		;56a8
	ld a,(bc)		;56a9
	add hl,bc		;56aa
	ld a,(bc)		;56ab
	inc c			;56ac
	ld a,(bc)		;56ad
	ld b,02bh		;56ae
	dec bc			;56b0
	add hl,bc		;56b1
	ld a,(bc)		;56b2
	inc b			;56b3
	inc c			;56b4
	dec hl			;56b5
	ld h,02bh		;56b6
	ld a,(bc)		;56b8
	rlca			;56b9
	inc l			;56ba
	add hl,bc		;56bb
	nop			;56bc
	ld a,(bc)		;56bd
	dec b			;56be
	dec bc			;56bf
	nop			;56c0
	nop			;56c1
	ld l,h			;56c2
	ld a,(bc)		;56c3
	rlca			;56c4
	ld c,c			;56c5
	ex af,af'		;56c6
	rlca			;56c7
	ld (bc),a		;56c8
	dec bc			;56c9
	ld a,(bc)		;56ca
	ld c,c			;56cb
	inc l			;56cc
	dec bc			;56cd
	ld a,(bc)		;56ce
	dec hl			;56cf
	ex af,af'		;56d0
	ld b,00ah		;56d1
	ld a,(bc)		;56d3
	inc c			;56d4
	dec bc			;56d5
	add hl,hl		;56d6
	ld c,e			;56d7
	ld a,(bc)		;56d8
	add hl,bc		;56d9
	ex af,af'		;56da
	ld a,(bc)		;56db
	ld hl,(0092ch)		;56dc
	ld a,(bc)		;56df
	ld b,009h		;56e0
	add hl,bc		;56e2
	ld a,(bc)		;56e3
	inc c			;56e4
	adc a,d			;56e5
	add hl,bc		;56e6
	adc a,e			;56e7
	jr z,l56f0h		;56e8
	add hl,bc		;56ea
	add hl,bc		;56eb
	inc b			;56ec
	ld a,(bc)		;56ed
	dec bc			;56ee
	add hl,bc		;56ef
l56f0h:
	dec hl			;56f0
	ld l,d			;56f1
	jr z,l571eh		;56f2
	ld a,(bc)		;56f4
	ex af,af'		;56f5
	dec bc			;56f6
l56f7h:
	inc c			;56f7
	add hl,bc		;56f8
	ld a,(bc)		;56f9
	dec hl			;56fa
	ld b,009h		;56fb
	ld c,b			;56fd
	dec bc			;56fe
	inc c			;56ff
	ld a,(bc)		;5700
	sra e			;5701
	ld a,(bc)		;5703
	rlca			;5704
	ld a,(bc)		;5705
	jr z,l5753h		;5706
	ld hl,(00a2ah)		;5708
	rlca			;570b
	inc l			;570c
	ld a,(bc)		;570d
	dec bc			;570e
	add hl,bc		;570f
	add hl,bc		;5710
	ld a,(bc)		;5711
	ld bc,0eb08h		;5712
	add hl,bc		;5715
	ld c,c			;5716
	ld a,(bc)		;5717
	add hl,bc		;5718
	rlca			;5719
	ld b,00ah		;571a
	ld a,(bc)		;571c
	add hl,hl		;571d
l571eh:
	add hl,hl		;571e
	ld hl,(l4b2ah)		;571f
	dec bc			;5722
	dec bc			;5723
	ld a,(bc)		;5724
	dec b			;5725
	ld a,(bc)		;5726
	dec bc			;5727
	rlca			;5728
	add hl,bc		;5729
	inc c			;572a
	add hl,bc		;572b
	ld hl,(0054bh)		;572c
	rlca			;572f
	add hl,bc		;5730
	ex af,af'		;5731
	dec bc			;5732
	inc l			;5733
	dec bc			;5734
	inc c			;5735
	add hl,bc		;5736
	add hl,bc		;5737
	dec bc			;5738
	ld a,(bc)		;5739
	ld a,(bc)		;573a
	inc c			;573b
	dec bc			;573c
	add hl,bc		;573d
	ld a,(bc)		;573e
	add hl,bc		;573f
	ld a,(bc)		;5740
	inc c			;5741
	ld a,(bc)		;5742
	rlca			;5743
	rlca			;5744
	nop			;5745
	add hl,bc		;5746
	dec hl			;5747
	dec bc			;5748
	inc c			;5749
	ld b,004h		;574a
	add hl,bc		;574c
	ex af,af'		;574d
	dec bc			;574e
	inc c			;574f
	dec bc			;5750
	ld a,(bc)		;5751
	ld a,(bc)		;5752
l5753h:
	dec b			;5753
	dec hl			;5754
	inc c			;5755
	dec bc			;5756
	ld a,(bc)		;5757
	add hl,bc		;5758
	ld a,(bc)		;5759
	dec hl			;575a
	dec bc			;575b
	dec bc			;575c
	ld a,(bc)		;575d
	ld b,008h		;575e
	dec hl			;5760
	ld a,(bc)		;5761
	ld hl,(02a0bh)		;5762
	ld a,(bc)		;5765
	add hl,bc		;5766
	dec hl			;5767
	ld a,(bc)		;5768
	dec hl			;5769
	dec bc			;576a
	add hl,bc		;576b
	dec b			;576c
	ld a,(bc)		;576d
	ld a,(bc)		;576e
	ld c,d			;576f
	dec bc			;5770
	dec bc			;5771
	add hl,bc		;5772
	add hl,bc		;5773
	dec hl			;5774
	dec bc			;5775
	add hl,bc		;5776
	ld a,(bc)		;5777
	ex af,af'		;5778
	ld a,(bc)		;5779
	dec hl			;577a
	add hl,bc		;577b
	dec bc			;577c
	daa			;577d
	ld a,(bc)		;577e
	add hl,bc		;577f
	inc c			;5780
	inc c			;5781
	add hl,bc		;5782
	dec hl			;5783
	ex af,af'		;5784
	nop			;5785
	dec bc			;5786
l5787h:
	add hl,bc		;5787
	inc c			;5788
	inc c			;5789
	nop			;578a
	dec bc			;578b
	dec bc			;578c
	rlca			;578d
	inc c			;578e
	inc c			;578f
	jr z,l579ch		;5790
	dec bc			;5792
	inc c			;5793
	inc c			;5794
	add hl,bc		;5795
	dec hl			;5796
	dec bc			;5797
	nop			;5798
	ld c,h			;5799
	ld a,(bc)		;579a
	inc c			;579b
l579ch:
	rlca			;579c
	dec hl			;579d
	ld (bc),a		;579e
	adc a,e			;579f
	ex af,af'		;57a0
	inc c			;57a1
	ld (bc),a		;57a2
	dec bc			;57a3
	add hl,bc		;57a4
	inc c			;57a5
	nop			;57a6
	dec bc			;57a7
	ex af,af'		;57a8
	inc c			;57a9
	inc c			;57aa
	add hl,bc		;57ab
	ld a,(bc)		;57ac
	ld a,(bc)		;57ad
	ex af,af'		;57ae
	dec hl			;57af
	dec hl			;57b0
	dec hl			;57b1
	ld a,(bc)		;57b2
	ld a,(bc)		;57b3
	ld a,(bc)		;57b4
	add hl,bc		;57b5
	dec bc			;57b6
	dec bc			;57b7
	ex af,af'		;57b8
	add hl,bc		;57b9
	ld a,(bc)		;57ba
	ld a,(bc)		;57bb
	dec bc			;57bc
	inc c			;57bd
	dec bc			;57be
	ex af,af'		;57bf
	ex af,af'		;57c0
	dec b			;57c1
	ld hl,(02b0ch)		;57c2
	dec bc			;57c5
	rlca			;57c6
	ld a,(bc)		;57c7
	ld a,(bc)		;57c8
	ld hl,(00b0bh)		;57c9
	rlca			;57cc
	add hl,bc		;57cd
	dec hl			;57ce
	dec hl			;57cf
	dec bc			;57d0
	ld hl,(00a08h)		;57d1
	dec bc			;57d4
	inc c			;57d5
	add hl,bc		;57d6
	ex af,af'		;57d7
	dec bc			;57d8
	ld a,(bc)		;57d9
	inc c			;57da
	inc c			;57db
	add hl,bc		;57dc
	add hl,bc		;57dd
	add hl,hl		;57de
	rlca			;57df
l57e0h:
	dec hl			;57e0
	ld (bc),a		;57e1
	adc a,d			;57e2
	rlca			;57e3
	ld a,(bc)		;57e4
	ld a,(bc)		;57e5
	inc c			;57e6
	add hl,hl		;57e7
	dec bc			;57e8
	ld a,(bc)		;57e9
	dec bc			;57ea
	inc c			;57eb
	inc c			;57ec
	inc c			;57ed
l57eeh:
	dec bc			;57ee
	dec bc			;57ef
	add hl,bc		;57f0
	ld a,(bc)		;57f1
	inc c			;57f2
	dec bc			;57f3
	add hl,bc		;57f4
	ld a,(bc)		;57f5
	ex af,af'		;57f6
	ld a,(bc)		;57f7
	dec bc			;57f8
	dec bc			;57f9
	dec bc			;57fa
	jr z,l57fdh		;57fb
l57fdh:
	inc b			;57fd
	ex af,af'		;57fe
	ld c,c			;57ff
	ld a,(bc)		;5800
	ld a,(bc)		;5801
	add hl,bc		;5802
	add hl,bc		;5803
	ld c,e			;5804
	dec bc			;5805
	dec bc			;5806
	ld a,(bc)		;5807
	add hl,bc		;5808
	dec bc			;5809
	inc c			;580a
	inc c			;580b
sub_580ch:
	ld c,d			;580c
	ld a,(bc)		;580d
	dec bc			;580e
	inc c			;580f
	inc c			;5810
	dec bc			;5811
	ld hl,(00a06h)		;5812
	ld hl,(00b0ch)		;5815
	dec hl			;5818
	rlca			;5819
	ld b,00ah		;581a
	dec bc			;581c
	inc c			;581d
	rlca			;581e
	ld a,(bc)		;581f
	dec bc			;5820
	add hl,bc		;5821
	dec hl			;5822
	ld l,h			;5823
	dec bc			;5824
	ex af,af'		;5825
	ld hl,(0292ah)		;5826
	dec bc			;5829
	add hl,hl		;582a
	inc c			;582b
	ld a,(bc)		;582c
	dec hl			;582d
	rlca			;582e
	ex af,af'		;582f
	add hl,bc		;5830
	ld c,d			;5831
	inc c			;5832
	ld a,(bc)		;5833
	dec bc			;5834
	ld b,02ch		;5835
	ex af,af'		;5837
	dec bc			;5838
	add hl,bc		;5839
	ld a,(bc)		;583a
	dec bc			;583b
	ex af,af'		;583c
	dec bc			;583d
	inc c			;583e
	add hl,bc		;583f
	ld a,(bc)		;5840
	ld a,(bc)		;5841
	jr z,l588fh		;5842
	dec bc			;5844
	ld a,(bc)		;5845
	add hl,bc		;5846
	dec hl			;5847
	rlca			;5848
	ld a,(bc)		;5849
	jr z,$+13		;584a
	inc c			;584c
	ld a,(bc)		;584d
	ld a,(bc)		;584e
	rlca			;584f
	ld c,e			;5850
	ld c,e			;5851
	jr z,l585dh		;5852
	inc c			;5854
	ld hl,(00a02h)		;5855
	rlca			;5858
	inc c			;5859
	inc c			;585a
	ld a,(bc)		;585b
	dec bc			;585c
l585dh:
	ld a,(bc)		;585d
	nop			;585e
	ld a,(bc)		;585f
	ld l,e			;5860
	ex af,af'		;5861
	dec bc			;5862
	dec b			;5863
	ld c,d			;5864
	ld c,b			;5865
	ld a,(bc)		;5866
	dec bc			;5867
	inc c			;5868
	add hl,bc		;5869
	add hl,bc		;586a
	add hl,bc		;586b
	daa			;586c
	ld a,(bc)		;586d
	ld a,(bc)		;586e
	dec hl			;586f
	dec hl			;5870
	jr z,l587ch		;5871
	add hl,bc		;5873
	inc b			;5874
	dec hl			;5875
	dec bc			;5876
	nop			;5877
	inc c			;5878
	add hl,bc		;5879
	inc c			;587a
	dec bc			;587b
l587ch:
	nop			;587c
sub_587dh:
	ex af,af'		;587d
	add hl,bc		;587e
	daa			;587f
	ld l,h			;5880
	inc c			;5881
	add hl,bc		;5882
sub_5883h:
	nop			;5883
	dec bc			;5884
	add hl,bc		;5885
	ld hl,(00b28h)		;5886
	inc c			;5889
	inc c			;588a
	rlca			;588b
	dec bc			;588c
	ld a,(bc)		;588d
	nop			;588e
l588fh:
	inc c			;588f
	inc c			;5890
	rlca			;5891
	ld c,e			;5892
	ld a,(bc)		;5893
	nop			;5894
	inc c			;5895
	ld a,(bc)		;5896
	dec hl			;5897
	add hl,bc		;5898
	add hl,bc		;5899
	rlca			;589a
	ld l,d			;589b
	inc c			;589c
	add hl,bc		;589d
	ld c,e			;589e
	jr z,l58a1h		;589f
l58a1h:
	ex af,af'		;58a1
	inc l			;58a2
	add hl,bc		;58a3
	ld a,(bc)		;58a4
	ex af,af'		;58a5
	add hl,bc		;58a6
	dec bc			;58a7
l58a8h:
	dec b			;58a8
l58a9h:
	ld a,(bc)		;58a9
	call pe,00b08h		;58aa
	ld bc,00609h		;58ad
	dec bc			;58b0
	dec b			;58b1
	ld hl,(00900h)		;58b2
	dec bc			;58b5
	ex af,af'		;58b6
	add hl,bc		;58b7
	add hl,bc		;58b8
	ld hl,(00b8ch)		;58b9
	ld c,d			;58bc
	add hl,bc		;58bd
	rlca			;58be
	add hl,hl		;58bf
	add hl,bc		;58c0
	dec c			;58c1
	ld a,(bc)		;58c2
	daa			;58c3
	inc l			;58c4
	rlca			;58c5
	add hl,bc		;58c6
	dec bc			;58c7
	dec c			;58c8
	ld a,(bc)		;58c9
	ld a,(bc)		;58ca
	dec bc			;58cb
	dec b			;58cc
	add hl,bc		;58cd
	ld l,h			;58ce
	ex af,af'		;58cf
	dec bc			;58d0
	rlca			;58d1
	ld hl,(00605h)		;58d2
	rlca			;58d5
	dec bc			;58d6
	jr z,l58e4h		;58d7
	adc a,h			;58d9
l58dah:
	ld hl,(00007h)		;58da
	dec hl			;58dd
	ld b,029h		;58de
	ld hl,(0cc0bh)		;58e0
	ex af,af'		;58e3
l58e4h:
	adc a,c			;58e4
	add hl,bc		;58e5
	jr z,l5911h		;58e6
	ld hl,(00b0ah)		;58e8
	rlca			;58eb
	add hl,bc		;58ec
	adc a,h			;58ed
	ld a,(bc)		;58ee
	ld a,(bc)		;58ef
	ex af,af'		;58f0
	add hl,hl		;58f1
	add hl,bc		;58f2
	inc b			;58f3
	nop			;58f4
	add hl,bc		;58f5
	ld a,(bc)		;58f6
	dec c			;58f7
	ld a,(bc)		;58f8
	ex af,af'		;58f9
	call pe,00728h		;58fa
	ex af,af'		;58fd
	add hl,bc		;58fe
	add hl,hl		;58ff
	ld a,(bc)		;5900
	jr z,l590ah		;5901
	add hl,bc		;5903
	daa			;5904
	ld a,(bc)		;5905
	add hl,bc		;5906
	call pe,00a06h		;5907
l590ah:
	daa			;590a
	add hl,hl		;590b
	ld b,00ah		;590c
	ex af,af'		;590e
	rlca			;590f
	ld h,a			;5910
l5911h:
	add hl,bc		;5911
	rlca			;5912
	ld b,0ech		;5913
	ex af,af'		;5915
	ld bc,00906h		;5916
	daa			;5919
	inc b			;591a
	ld b,029h		;591b
	ld b,a			;591d
	ld a,(bc)		;591e
	rlca			;591f
	dec bc			;5920
	jr z,l592dh		;5921
	call pe,00729h		;5923
	ld b,008h		;5926
	rlca			;5928
	rlca			;5929
	ex af,af'		;592a
	add hl,bc		;592b
	inc b			;592c
l592dh:
	ld b,006h		;592d
	ld c,b			;592f
	dec b			;5930
	inc l			;5931
	inc bc			;5932
	rlca			;5933
	add hl,hl		;5934
	dec bc			;5935
	inc b			;5936
	inc c			;5937
	rlca			;5938
	ld a,(bc)		;5939
	dec hl			;593a
	inc bc			;593b
	add hl,bc		;593c
	add hl,bc		;593d
	dec bc			;593e
	inc c			;593f
	rlca			;5940
	add hl,bc		;5941
	dec bc			;5942
	inc b			;5943
	ld hl,(00a0ch)		;5944
	dec hl			;5947
	rlca			;5948
	rlca			;5949
	dec b			;594a
	add hl,bc		;594b
	inc c			;594c
	add hl,bc		;594d
	ld c,d			;594e
	dec bc			;594f
	dec b			;5950
	ld c,h			;5951
	ex af,af'		;5952
	nop			;5953
	add hl,bc		;5954
	jr z,l5962h		;5955
	dec c			;5957
	add hl,bc		;5958
	inc c			;5959
	nop			;595a
	ld hl,(0280dh)		;595b
	ld c,h			;595e
	adc a,e			;595f
	add hl,bc		;5960
	ex af,af'		;5961
l5962h:
	xor e			;5962
	rlca			;5963
	ld b,007h		;5964
	inc c			;5966
	ld b,00bh		;5967
	dec b			;5969
	ld a,(bc)		;596a
	ex af,af'		;596b
	ld c,h			;596c
	xor l			;596d
	ld c,e			;596e
	ld c,e			;596f
	ld hl,(00a29h)		;5970
	inc l			;5973
	add hl,bc		;5974
	ex af,af'		;5975
	rlca			;5976
	ld c,d			;5977
	nop			;5978
	nop			;5979
	dec b			;597a
	rlca			;597b
	ld h,048h		;597c
	ld c,c			;597e
	nop			;597f
	dec b			;5980
	ld a,(bc)		;5981
	ld c,e			;5982
	add hl,bc		;5983
	ld c,e			;5984
	jr z,$+12		;5985
	rlca			;5987
	ld a,(bc)		;5988
	add hl,bc		;5989
	add hl,bc		;598a
	adc a,e			;598b
	ld c,e			;598c
	ld a,(bc)		;598d
	add hl,bc		;598e
	ld hl,(02b2ah)		;598f
	call pe,0098bh		;5992
	ld a,(bc)		;5995
	ld c,c			;5996
	inc c			;5997
	dec bc			;5998
	ld c,b			;5999
	ld l,d			;599a
	dec hl			;599b
	rlca			;599c
	ld a,(bc)		;599d
	ld h,029h		;599e
	ld c,c			;59a0
	ld bc,00347h		;59a1
	ld hl,(00400h)		;59a4
	ld h,02bh		;59a7
	inc bc			;59a9
	nop			;59aa
	rlca			;59ab
	call pe,00a27h		;59ac
	add hl,hl		;59af
	inc b			;59b0
	daa			;59b1
	ld c,d			;59b2
	ex af,af'		;59b3
	rlca			;59b4
	add hl,bc		;59b5
	ld c,b			;59b6
	ld a,(bc)		;59b7
	xor h			;59b8
	jr z,l59c2h		;59b9
	ld b,006h		;59bb
	rlca			;59bd
	ld b,a			;59be
	ex af,af'		;59bf
	ld c,c			;59c0
	defb 0edh ;next byte illegal after ed	;59c1
l59c2h:
	ld b,027h		;59c2
	ld c,d			;59c4
	inc bc			;59c5
	jr nz,l59d3h		;59c6
	inc c			;59c8
	ld c,c			;59c9
	ld c,l			;59ca
	dec l			;59cb
	inc c			;59cc
	rlca			;59cd
	ld c,h			;59ce
	ld c,d			;59cf
	inc b			;59d0
	jr z,l59deh		;59d1
l59d3h:
	ex af,af'		;59d3
	jr nz,l59deh		;59d4
	nop			;59d6
	dec b			;59d7
	ld bc,00801h		;59d8
	ex af,af'		;59db
	ex af,af'		;59dc
	add hl,bc		;59dd
l59deh:
	rlca			;59de
	inc b			;59df
	ld b,020h		;59e0
	nop			;59e2
	dec b			;59e3
	ld (bc),a		;59e4
	ex af,af'		;59e5
	add hl,bc		;59e6
	add hl,bc		;59e7
	ld hl,(04a0ah)		;59e8
	add hl,bc		;59eb
	add hl,bc		;59ec
	dec b			;59ed
	ex af,af'		;59ee
	ld b,00bh		;59ef
	ld a,(bc)		;59f1
	ex af,af'		;59f2
	inc l			;59f3
	ld l,e			;59f4
	add hl,bc		;59f5
	ld c,b			;59f6
	ld c,e			;59f7
	call pe,0ec0ah		;59f8
	add hl,hl		;59fb
	ld a,(bc)		;59fc
	dec bc			;59fd
	inc l			;59fe
	dec hl			;59ff
	inc c			;5a00
	inc c			;5a01
	dec bc			;5a02
	ld hl,(00a0bh)		;5a03
	ld a,(bc)		;5a06
	add hl,bc		;5a07
	add hl,bc		;5a08
	ex af,af'		;5a09
	rlca			;5a0a
	ld b,060h		;5a0b
	ld h,b			;5a0d
	ld b,b			;5a0e
	ld bc,00303h		;5a0f
	ld b,005h		;5a12
	dec b			;5a14
	ex af,af'		;5a15
	ex af,af'		;5a16
	jr z,l5a23h		;5a17
	add hl,bc		;5a19
	dec bc			;5a1a
	jr z,l5a66h		;5a1b
	call pe,sub_4a46h	;5a1d
	dec b			;5a20
	ld b,a			;5a21
	dec hl			;5a22
l5a23h:
	call pe,0094ch		;5a23
	daa			;5a26
	ld l,e			;5a27
	ld b,004h		;5a28
	ld bc,l4a00h		;5a2a
	ld bc,006cch		;5a2d
	rlca			;5a30
	ld c,e			;5a31
	ld b,007h		;5a32
	ex af,af'		;5a34
	inc c			;5a35
	ld hl,(02d4dh)		;5a36
	add hl,bc		;5a39
	ld a,(bc)		;5a3a
	inc c			;5a3b
	inc c			;5a3c
	ex af,af'		;5a3d
	dec bc			;5a3e
	dec hl			;5a3f
	rlca			;5a40
	ld hl,(00a08h)		;5a41
	rlca			;5a44
	add hl,bc		;5a45
	rlca			;5a46
	inc bc			;5a47
	dec b			;5a48
	inc h			;5a49
	inc b			;5a4a
	ld bc,00207h		;5a4b
	daa			;5a4e
	add hl,hl		;5a4f
	dec b			;5a50
	inc hl			;5a51
	ld b,00ah		;5a52
	ex af,af'		;5a54
	dec bc			;5a55
	ld b,a			;5a56
	add hl,bc		;5a57
	call pe,0222ah		;5a58
	adc a,c			;5a5b
	ld bc,00220h		;5a5c
	ld hl,(0270ch)		;5a5f
	defb 0edh ;next byte illegal after ed	;5a62
	dec bc			;5a63
	jr z,l5a72h		;5a64
l5a66h:
	call 00ca9h		;5a66
	dec bc			;5a69
	ex af,af'		;5a6a
	inc c			;5a6b
	ld a,(bc)		;5a6c
	rlca			;5a6d
	dec bc			;5a6e
	add hl,bc		;5a6f
	inc b			;5a70
	ld a,(bc)		;5a71
l5a72h:
	rlca			;5a72
	dec b			;5a73
	add hl,bc		;5a74
	dec b			;5a75
	ld bc,02128h		;5a76
	nop			;5a79
	inc bc			;5a7a
	add hl,bc		;5a7b
	ld b,026h		;5a7c
	ld a,(bc)		;5a7e
	ld h,a			;5a7f
	ex de,hl		;5a80
	ex af,af'		;5a81
	add hl,bc		;5a82
	ld a,(bc)		;5a83
	ex af,af'		;5a84
	add hl,bc		;5a85
	inc b			;5a86
	jr z,l5a89h		;5a87
l5a89h:
	ld bc,00209h		;5a89
	ld c,d			;5a8c
	dec hl			;5a8d
	ld b,007h		;5a8e
	inc c			;5a90
	ld c,b			;5a91
	dec bc			;5a92
	adc a,l			;5a93
	inc c			;5a94
	xor l			;5a95
	add hl,hl		;5a96
	ld hl,(00b0ch)		;5a97
	add hl,hl		;5a9a
	add hl,hl		;5a9b
	inc c			;5a9c
	ex af,af'		;5a9d
	rrc b			;5a9e
	and h			;5aa0
	ld b,007h		;5aa1
	ld b,007h		;5aa3
	ex af,af'		;5aa5
	ld c,c			;5aa6
	ld (bc),a		;5aa7
	call z,00500h		;5aa8
	ld a,(bc)		;5aab
	inc bc			;5aac
	dec hl			;5aad
	ld (bc),a		;5aae
	ld b,00ch		;5aaf
	jp (hl)			;5ab1
	ld c,l			;5ab2
	ld c,l			;5ab3
	inc c			;5ab4
	inc c			;5ab5
	ld c,e			;5ab6
	dec hl			;5ab7
	ld a,(bc)		;5ab8
	ld a,(bc)		;5ab9
	rlca			;5aba
	rlca			;5abb
	daa			;5abc
	jr nz,$+3		;5abd
	ld b,009h		;5abf
	ld b,(hl)		;5ac1
	ld l,b			;5ac2
	ld c,d			;5ac3
	ex af,af'		;5ac4
	dec bc			;5ac5
	ld c,c			;5ac6
	add hl,bc		;5ac7
	call pe,0090ah		;5ac8
	rlca			;5acb
	ex af,af'		;5acc
	inc b			;5acd
	daa			;5ace
	ld b,008h		;5acf
	jr z,l5afch		;5ad1
	add hl,bc		;5ad3
	ld c,h			;5ad4
	ld a,(bc)		;5ad5
	ld a,(bc)		;5ad6
	dec bc			;5ad7
	ld l,e			;5ad8
	xor h			;5ad9
	xor l			;5ada
	ld a,(bc)		;5adb
	ex af,af'		;5adc
	rlca			;5add
	dec bc			;5ade
	ex af,af'		;5adf
	inc c			;5ae0
	ld a,(bc)		;5ae1
	inc b			;5ae2
	dec bc			;5ae3
	ex af,af'		;5ae4
	jr nz,$+11		;5ae5
	ld h,068h		;5ae7
	inc bc			;5ae9
	rlca			;5aea
	ld bc,00408h		;5aeb
	add hl,hl		;5aee
	ld b,009h		;5aef
	ex af,af'		;5af1
	ld a,(bc)		;5af2
	ld c,d			;5af3
	add hl,hl		;5af4
	ld c,e			;5af5
	jr z,l5b01h		;5af6
	adc a,d			;5af8
	ex af,af'		;5af9
	ld b,l			;5afa
	rlca			;5afb
l5afch:
	dec b			;5afc
	nop			;5afd
	ld b,001h		;5afe
	rlca			;5b00
l5b01h:
	dec bc			;5b01
	nop			;5b02
	add hl,bc		;5b03
	inc c			;5b04
	inc b			;5b05
	dec bc			;5b06
	xor l			;5b07
	ex af,af'		;5b08
	xor h			;5b09
	ld a,(bc)		;5b0a
	ld l,e			;5b0b
	inc c			;5b0c
	ld a,(bc)		;5b0d
	dec bc			;5b0e
	dec bc			;5b0f
	add hl,bc		;5b10
	ld a,(bc)		;5b11
	ld a,(bc)		;5b12
	xor b			;5b13
	add hl,bc		;5b14
	add hl,bc		;5b15
	ex af,af'		;5b16
	ex af,af'		;5b17
	ld b,007h		;5b18
	inc bc			;5b1a
	ex af,af'		;5b1b
	dec b			;5b1c
	add hl,hl		;5b1d
	ld b,009h		;5b1e
	ld l,b			;5b20
	ld hl,(08baah)		;5b21
	add hl,bc		;5b24
	ld l,d			;5b25
l5b26h:
	dec bc			;5b26
	inc c			;5b27
	inc c			;5b28
	ld c,l			;5b29
	ld c,l			;5b2a
	add hl,hl		;5b2b
	ld b,00ch		;5b2c
	ld c,h			;5b2e
	inc b			;5b2f
	ld c,e			;5b30
	add hl,bc		;5b31
	ld a,(bc)		;5b32
	dec bc			;5b33
	ex af,af'		;5b34
	add hl,bc		;5b35
	ex af,af'		;5b36
	ld b,b			;5b37
	jr nz,l5b5ah		;5b38
	ld bc,00626h		;5b3a
	inc bc			;5b3d
	ld bc,00700h		;5b3e
	ld (bc),a		;5b41
	inc bc			;5b42
	add hl,bc		;5b43
	inc b			;5b44
	ld b,00bh		;5b45
	ex af,af'		;5b47
	add hl,bc		;5b48
	call pe,0aa09h		;5b49
	jr z,l5b57h		;5b4c
	ld a,(bc)		;5b4e
	adc a,e			;5b4f
	add hl,hl		;5b50
	call pe,00b0ah		;5b51
	adc a,h			;5b54
	inc l			;5b55
	ld l,e			;5b56
l5b57h:
	dec bc			;5b57
	inc c			;5b58
	ld a,(bc)		;5b59
l5b5ah:
	ld a,(bc)		;5b5a
	dec bc			;5b5b
	rlca			;5b5c
	rlca			;5b5d
	ld a,(bc)		;5b5e
	inc b			;5b5f
	dec b			;5b60
	ex af,af'		;5b61
	ld bc,00660h		;5b62
	ld (bc),a		;5b65
	ld bc,02020h		;5b66
	ld bc,00505h		;5b69
	ex af,af'		;5b6c
	ex af,af'		;5b6d
	ld b,00ah		;5b6e
	add hl,bc		;5b70
	rlca			;5b71
	dec hl			;5b72
	ld a,(bc)		;5b73
	ex af,af'		;5b74
	ex de,hl		;5b75
	rlca			;5b76
	call pe,00948h		;5b77
	ex af,af'		;5b7a
	add hl,hl		;5b7b
	dec bc			;5b7c
	ld hl,(0ac8ch)		;5b7d
	add hl,bc		;5b80
	ld c,d			;5b81
	dec bc			;5b82
	add hl,bc		;5b83
	ld a,(bc)		;5b84
	dec bc			;5b85
	ex af,af'		;5b86
	add hl,hl		;5b87
	ld a,(bc)		;5b88
	rlca			;5b89
	add hl,bc		;5b8a
	dec b			;5b8b
	ld c,b			;5b8c
	rlca			;5b8d
	ld h,b			;5b8e
	inc b			;5b8f
	ld b,029h		;5b90
	rlca			;5b92
	ex af,af'		;5b93
	ld b,02ah		;5b94
	add hl,bc		;5b96
	rlca			;5b97
	ld a,(bc)		;5b98
	jr z,l5b26h		;5b99
	dec hl			;5b9b
	daa			;5b9c
	ld c,h			;5b9d
	add hl,bc		;5b9e
	ld a,(bc)		;5b9f
	inc c			;5ba0
	ld l,l			;5ba1
	jp (hl)			;5ba2
	ld c,l			;5ba3
	inc c			;5ba4
	ld c,h			;5ba5
	ld c,e			;5ba6
	dec bc			;5ba7
	ld a,(bc)		;5ba8
	add hl,bc		;5ba9
	dec b			;5baa
	inc bc			;5bab
	nop			;5bac
	nop			;5bad
	nop			;5bae
	inc bc			;5baf
	inc bc			;5bb0
	ld h,048h		;5bb1
	inc b			;5bb3
	dec h			;5bb4
	dec b			;5bb5
	ld bc,00609h		;5bb6
	dec b			;5bb9
	dec bc			;5bba
	adc a,c			;5bbb
	rlca			;5bbc
	call pe,00948h		;5bbd
	ld a,(bc)		;5bc0
	ld a,(bc)		;5bc1
	adc a,e			;5bc2
	add hl,bc		;5bc3
	ld hl,(00bech)		;5bc4
	call z,02b4ch		;5bc7
	ld hl,(00b0bh)		;5bca
	ld a,(bc)		;5bcd
	ex af,af'		;5bce
	add hl,bc		;5bcf
	ex af,af'		;5bd0
	ld b,007h		;5bd1
	ld b,005h		;5bd3
	dec b			;5bd5
	dec b			;5bd6
	inc bc			;5bd7
	ld b,b			;5bd8
	ld b,b			;5bd9
	jr nz,l5be0h		;5bda
	ld b,007h		;5bdc
	ex af,af'		;5bde
	ex af,af'		;5bdf
l5be0h:
	ex af,af'		;5be0
	add hl,hl		;5be1
	add hl,bc		;5be2
	add hl,bc		;5be3
	ld a,(bc)		;5be4
	ld a,(bc)		;5be5
	ld c,d			;5be6
	dec bc			;5be7
	ex de,hl		;5be8
	call pe,00a09h		;5be9
	dec hl			;5bec
	ld c,d			;5bed
	inc l			;5bee
	xor h			;5bef
	dec hl			;5bf0
	ld l,e			;5bf1
	ld hl,(00a09h)		;5bf2
	jr z,l5c02h		;5bf5
	add hl,bc		;5bf7
	ld a,(bc)		;5bf8
	rlca			;5bf9
	rlca			;5bfa
	add hl,bc		;5bfb
	dec b			;5bfc
	ld b,008h		;5bfd
	jr nz,l5c04h		;5bff
	rlca			;5c01
l5c02h:
	ld b,028h		;5c02
l5c04h:
	dec b			;5c04
	daa			;5c05
	rlca			;5c06
	add hl,hl		;5c07
	ex af,af'		;5c08
	ex af,af'		;5c09
	add hl,bc		;5c0a
	add hl,bc		;5c0b
	ld l,d			;5c0c
	ld a,(bc)		;5c0d
	ld l,d			;5c0e
	ld l,e			;5c0f
	dec hl			;5c10
	dec hl			;5c11
	inc c			;5c12
	inc c			;5c13
	ld l,l			;5c14
	ld a,(bc)		;5c15
	ld c,l			;5c16
	adc a,c			;5c17
	inc c			;5c18
	ld c,h			;5c19
	ld c,e			;5c1a
	daa			;5c1b
	dec bc			;5c1c
	add hl,bc		;5c1d
	add hl,bc		;5c1e
	ld (bc),a		;5c1f
	ld (bc),a		;5c20
	ld bc,02020h		;5c21
	nop			;5c24
	inc bc			;5c25
	ld bc,00501h		;5c26
	nop			;5c29
	nop			;5c2a
	rlca			;5c2b
	ld bc,00901h		;5c2c
	ld b,005h		;5c2f
	dec bc			;5c31
	ex af,af'		;5c32
	ld b,a			;5c33
	ld c,h			;5c34
	add hl,bc		;5c35
	ld c,d			;5c36
	ld b,0edh		;5c37
	daa			;5c39
	ex de,hl		;5c3a
	jr z,l5c46h		;5c3b
	ld a,(bc)		;5c3d
	ld c,e			;5c3e
	adc a,l			;5c3f
	dec hl			;5c40
	ld l,d			;5c41
	ld a,(bc)		;5c42
	add hl,hl		;5c43
	inc c			;5c44
	add hl,bc		;5c45
l5c46h:
	dec bc			;5c46
	rlca			;5c47
	ld b,00ah		;5c48
	inc b			;5c4a
	inc bc			;5c4b
	ex af,af'		;5c4c
	ld h,b			;5c4d
	ld h,b			;5c4e
	ld bc,00520h		;5c4f
	ld hl,00906h		;5c52
	ex af,af'		;5c55
	ld a,(bc)		;5c56
	ld (bc),a		;5c57
	add hl,bc		;5c58
	dec bc			;5c59
	ld b,00ah		;5c5a
	inc c			;5c5c
	jr z,l5c6ah		;5c5d
	defb 0edh ;next byte illegal after ed	;5c5f
	call pe,00a49h		;5c60
	add hl,bc		;5c63
	rlca			;5c64
	ld bc,0402dh		;5c65
	xor h			;5c68
	inc c			;5c69
l5c6ah:
	dec bc			;5c6a
	dec b			;5c6b
	ld hl,(00406h)		;5c6c
	add hl,bc		;5c6f
	ld h,00bh		;5c70
	ex af,af'		;5c72
	ld a,(bc)		;5c73
	rlca			;5c74
	dec b			;5c75
	add hl,bc		;5c76
	inc b			;5c77
	ld hl,00528h		;5c78
	ld b,002h		;5c7b
	add hl,bc		;5c7d
	ex af,af'		;5c7e
	dec h			;5c7f
	ld hl,(02a09h)		;5c80
	ld (bc),a		;5c83
	dec hl			;5c84
	dec b			;5c85
	adc a,e			;5c86
	ld bc,004ach		;5c87
	dec b			;5c8a
	rlca			;5c8b
	ld h,00ch		;5c8c
	ld l,l			;5c8e
	dec b			;5c8f
	ld l,l			;5c90
	ld c,c			;5c91
	inc c			;5c92
	ld l,d			;5c93
	ld c,h			;5c94
	dec bc			;5c95
	ld hl,(0090bh)		;5c96
	ex af,af'		;5c99
	add hl,bc		;5c9a
	inc bc			;5c9b
	ld h,b			;5c9c
	ld bc,02080h		;5c9d
	ld (bc),a		;5ca0
	ld (bc),a		;5ca1
	dec b			;5ca2
	dec b			;5ca3
	ex af,af'		;5ca4
	dec b			;5ca5
	rlca			;5ca6
	ld a,(bc)		;5ca7
	ex af,af'		;5ca8
	add hl,hl		;5ca9
	dec bc			;5caa
	add hl,hl		;5cab
	call pe,00aeah		;5cac
	dec bc			;5caf
	call pe,00aech		;5cb0
	dec bc			;5cb3
	ld a,(bc)		;5cb4
	ld c,h			;5cb5
	add hl,bc		;5cb6
	ex af,af'		;5cb7
	rlca			;5cb8
	dec bc			;5cb9
	ex af,af'		;5cba
	ld a,(bc)		;5cbb
	rlca			;5cbc
	dec bc			;5cbd
	ex af,af'		;5cbe
	ld b,009h		;5cbf
	ld b,002h		;5cc1
	rlca			;5cc3
	ld h,b			;5cc4
	ld h,b			;5cc5
	ld h,b			;5cc6
	inc bc			;5cc7
	ld (bc),a		;5cc8
	ld b,008h		;5cc9
	dec b			;5ccb
	ex af,af'		;5ccc
	ld a,(bc)		;5ccd
	ld b,009h		;5cce
	dec bc			;5cd0
	ex af,af'		;5cd1
	ld a,(bc)		;5cd2
	inc c			;5cd3
	add hl,bc		;5cd4
	dec bc			;5cd5
	call 0cc0ah		;5cd6
	dec hl			;5cd9
	ld hl,(00809h)		;5cda
	inc l			;5cdd
	add hl,bc		;5cde
	ld c,e			;5cdf
	jr z,l5cedh		;5ce0
	jp pe,00a27h		;5ce2
	ld l,c			;5ce5
	ld h,005h		;5ce6
	inc b			;5ce8
	rlca			;5ce9
	ld bc,02006h		;5cea
l5cedh:
	dec h			;5ced
	ld hl,(02605h)		;5cee
	dec bc			;5cf1
	ld b,0ech		;5cf2
	dec b			;5cf4
	rlca			;5cf5
	daa			;5cf6
	ex af,af'		;5cf7
	add hl,bc		;5cf8
	ex af,af'		;5cf9
	adc a,d			;5cfa
	add hl,bc		;5cfb
	adc a,d			;5cfc
	inc l			;5cfd
	dec bc			;5cfe
	inc c			;5cff
	ld l,l			;5d00
	ld c,c			;5d01
	ld c,l			;5d02
	ld hl,(l4c0ch)		;5d03
	dec bc			;5d06
	add hl,bc		;5d07
	ld hl,(00b28h)		;5d08
	add hl,bc		;5d0b
	add hl,bc		;5d0c
	ld b,002h		;5d0d
	add a,b			;5d0f
	add a,b			;5d10
	ld h,b			;5d11
	ld b,005h		;5d12
	dec b			;5d14
	add hl,bc		;5d15
	ex af,af'		;5d16
	rlca			;5d17
	dec bc			;5d18
	add hl,bc		;5d19
	ex af,af'		;5d1a
	call z,0290ah		;5d1b
	dec bc			;5d1e
	call pe,0eb0ah		;5d1f
	xor e			;5d22
	xor h			;5d23
	ld a,(bc)		;5d24
	add hl,bc		;5d25
	ld hl,(02928h)		;5d26
	rlca			;5d29
	dec bc			;5d2a
	ld b,007h		;5d2b
	ld a,(bc)		;5d2d
	ld bc,00803h		;5d2e
	add a,b			;5d31
	ld h,b			;5d32
	ld (bc),a		;5d33
	ld b,b			;5d34
	inc bc			;5d35
	rlca			;5d36
	inc b			;5d37
	ex af,af'		;5d38
	add hl,bc		;5d39
	ld b,009h		;5d3a
	ld a,(bc)		;5d3c
	ex af,af'		;5d3d
	ld a,(bc)		;5d3e
	dec bc			;5d3f
	add hl,bc		;5d40
	dec bc			;5d41
	inc c			;5d42
	ld a,(bc)		;5d43
	inc c			;5d44
	adc a,l			;5d45
	ld l,c			;5d46
	adc a,l			;5d47
	ex af,af'		;5d48
	ld c,h			;5d49
	ld hl,(02b0ch)		;5d4a
	add hl,hl		;5d4d
	dec hl			;5d4e
	ld a,(bc)		;5d4f
	rlca			;5d50
	add hl,bc		;5d51
	ld a,(bc)		;5d52
	ld b,007h		;5d53
	jp (hl)			;5d55
	inc b			;5d56
	ld h,(hl)		;5d57
	ld bc,00504h		;5d58
	inc bc			;5d5b
	dec b			;5d5c
	ld bc,00026h		;5d5d
	ld h,e			;5d60
	rlca			;5d61
	ld a,(bc)		;5d62
	ex af,af'		;5d63
	dec bc			;5d64
	add hl,bc		;5d65
	call pe,0262ah		;5d66
	dec hl			;5d69
	ld b,a			;5d6a
	call z,00105h		;5d6b
	ld c,h			;5d6e
	nop			;5d6f
	ld b,009h		;5d70
	ld c,l			;5d72
	ex af,af'		;5d73
	ld c,l			;5d74
	add hl,bc		;5d75
	ld hl,(00c2ch)		;5d76
	ld c,c			;5d79
	dec hl			;5d7a
	dec bc			;5d7b
	ld hl,(0080ah)		;5d7c
	add hl,bc		;5d7f
	ex af,af'		;5d80
	inc bc			;5d81
	ld (bc),a		;5d82
	ld b,b			;5d83
	ld h,b			;5d84
	ld b,b			;5d85
	inc bc			;5d86
	ld bc,00308h		;5d87
	nop			;5d8a
	ld a,(bc)		;5d8b
	ld b,004h		;5d8c
	dec bc			;5d8e
	add hl,bc		;5d8f
	rlca			;5d90
	inc c			;5d91
	ld hl,(0ed08h)		;5d92
	add hl,hl		;5d95
	ld l,e			;5d96
	ld a,(bc)		;5d97
	rrc d			;5d98
	add hl,bc		;5d9a
	ex af,af'		;5d9b
	ld l,l			;5d9c
	daa			;5d9d
	ld b,08ah		;5d9e
	dec b			;5da0
	ld c,h			;5da1
	rlca			;5da2
	ld b,025h		;5da3
	dec bc			;5da5
	add hl,bc		;5da6
	ld a,(bc)		;5da7
	ld (bc),a		;5da8
	rlca			;5da9
	ex af,af'		;5daa
	ld h,b			;5dab
	inc b			;5dac
	dec b			;5dad
	ld b,b			;5dae
	ld b,b			;5daf
	ld bc,00705h		;5db0
	ld b,008h		;5db3
	add hl,bc		;5db5
	ex af,af'		;5db6
	ld hl,(0290ah)		;5db7
	dec bc			;5dba
	dec bc			;5dbb
	inc c			;5dbc
	ld a,(bc)		;5dbd
	inc c			;5dbe
	adc a,l			;5dbf
	xor c			;5dc0
	xor l			;5dc1
	inc c			;5dc2
	ld c,e			;5dc3
	ld a,(bc)		;5dc4
	inc c			;5dc5
	add hl,bc		;5dc6
	dec hl			;5dc7
	daa			;5dc8
	ld a,(bc)		;5dc9
	ld a,(bc)		;5dca
	add hl,bc		;5dcb
	ld b,009h		;5dcc
	rlca			;5dce
	inc b			;5dcf
	jr z,$+8		;5dd0
	nop			;5dd2
	rlca			;5dd3
	inc bc			;5dd4
	adc a,c			;5dd5
	ex af,af'		;5dd6
	ld b,089h		;5dd7
	ld b,a			;5dd9
	ex af,af'		;5dda
	ld hl,(l4a49h)		;5ddb
	dec bc			;5dde
	call pe,0ebcah		;5ddf
	ex af,af'		;5de2
	adc a,h			;5de3
	ld b,02bh		;5de4
	inc b			;5de6
	rlca			;5de7
	inc c			;5de8
	xor c			;5de9
	ld c,l			;5dea
	ld c,l			;5deb
	inc c			;5dec
	inc c			;5ded
	ld c,e			;5dee
	dec hl			;5def
	jr z,l5dfch		;5df0
	ld a,(bc)		;5df2
	rlca			;5df3
	ex af,af'		;5df4
	ex af,af'		;5df5
	ld h,b			;5df6
	ld b,b			;5df7
	ld b,b			;5df8
	ld bc,00501h		;5df9
l5dfch:
	rlca			;5dfc
	ld b,007h		;5dfd
	add hl,bc		;5dff
	ex af,af'		;5e00
	add hl,bc		;5e01
	ld a,(bc)		;5e02
	ld a,(bc)		;5e03
	ld a,(bc)		;5e04
	dec hl			;5e05
	dec bc			;5e06
	ld c,e			;5e07
	adc a,h			;5e08
	xor h			;5e09
	call pe,sub_6a0bh	;5e0a
	dec bc			;5e0d
	jp pe,00c29h		;5e0e
	adc a,e			;5e11
	jr z,l5e3dh		;5e12
	add hl,bc		;5e14
	rlca			;5e15
	ld a,(bc)		;5e16
	rlca			;5e17
	inc b			;5e18
	add hl,bc		;5e19
	inc hl			;5e1a
	nop			;5e1b
	ex af,af'		;5e1c
	inc bc			;5e1d
	rlca			;5e1e
	dec b			;5e1f
	dec b			;5e20
	inc b			;5e21
	ld b,006h		;5e22
	jr nz,l5e2eh		;5e24
	ex af,af'		;5e26
	ld a,(bc)		;5e27
	ld a,(bc)		;5e28
	dec b			;5e29
	dec bc			;5e2a
	dec hl			;5e2b
	ld b,04ch		;5e2c
l5e2eh:
	ld c,b			;5e2e
	inc c			;5e2f
	call 0896dh		;5e30
	inc c			;5e33
	dec hl			;5e34
	jr z,$+14		;5e35
	ld a,(bc)		;5e37
	dec bc			;5e38
	rlca			;5e39
	add hl,bc		;5e3a
	ld a,(bc)		;5e3b
	inc bc			;5e3c
l5e3dh:
	rlca			;5e3d
	add hl,bc		;5e3e
	ld b,b			;5e3f
	inc b			;5e40
	rlca			;5e41
	jr nz,$+40		;5e42
	inc bc			;5e44
	dec b			;5e45
	rlca			;5e46
	ld b,008h		;5e47
	ex af,af'		;5e49
	ex af,af'		;5e4a
	add hl,hl		;5e4b
	add hl,bc		;5e4c
	add hl,hl		;5e4d
	ld c,d			;5e4e
	adc a,d			;5e4f
	ld a,(bc)		;5e50
	dec hl			;5e51
	ld l,e			;5e52
	call z,00a8bh		;5e53
	ld l,c			;5e56
	ld hl,(008cbh)		;5e57
	ld l,c			;5e5a
	rlca			;5e5b
	ld h,008h		;5e5c
	ld a,(bc)		;5e5e
	ld a,(bc)		;5e5f
	dec bc			;5e60
	ld c,e			;5e61
	inc c			;5e62
	ld c,h			;5e63
	ld c,l			;5e64
	ld c,d			;5e65
	dec bc			;5e66
	inc c			;5e67
	ld hl,(0292bh)		;5e68
	add hl,bc		;5e6b
	ld a,(bc)		;5e6c
	ex af,af'		;5e6d
	rlca			;5e6e
	ex af,af'		;5e6f
	ld h,b			;5e70
	ld b,b			;5e71
	ld b,b			;5e72
	dec b			;5e73
	ld (00807h),hl		;5e74
	add hl,bc		;5e77
	ld a,(bc)		;5e78
	inc bc			;5e79
	ld a,(bc)		;5e7a
	dec bc			;5e7b
	rlca			;5e7c
	dec bc			;5e7d
	call pe,0ac08h		;5e7e
	ld a,(bc)		;5e81
	adc a,e			;5e82
	dec hl			;5e83
	adc a,d			;5e84
	ex de,hl		;5e85
	ld l,d			;5e86
	add hl,bc		;5e87
	add hl,hl		;5e88
	jr z,l5eb5h		;5e89
	add hl,hl		;5e8b
	dec bc			;5e8c
	add hl,bc		;5e8d
	ld a,(bc)		;5e8e
	rlca			;5e8f
	rlca			;5e90
	ex af,af'		;5e91
	ld (bc),a		;5e92
	inc bc			;5e93
	ld h,(hl)		;5e94
	nop			;5e95
	ld bc,02321h		;5e96
	jr nz,$+6		;5e99
	ex af,af'		;5e9b
	ex af,af'		;5e9c
	ld a,(bc)		;5e9d
	ld b,00ah		;5e9e
	dec bc			;5ea0
	add hl,bc		;5ea1
	dec bc			;5ea2
	inc l			;5ea3
	ex af,af'		;5ea4
	inc l			;5ea5
	add hl,bc		;5ea6
	ld l,l			;5ea7
	ex af,af'		;5ea8
	ld l,l			;5ea9
	add hl,hl		;5eaa
	ld hl,(04c4ch)		;5eab
	ex af,af'		;5eae
	ld b,00bh		;5eaf
	ex af,af'		;5eb1
	dec bc			;5eb2
	ld a,(bc)		;5eb3
	rlca			;5eb4
l5eb5h:
	ld a,(bc)		;5eb5
	ex af,af'		;5eb6
	dec b			;5eb7
	add hl,bc		;5eb8
	dec b			;5eb9
	inc bc			;5eba
	ex af,af'		;5ebb
	inc b			;5ebc
	ld bc,00127h		;5ebd
	jr nz,l5ec2h		;5ec0
l5ec2h:
	ex af,af'		;5ec2
	dec b			;5ec3
	inc bc			;5ec4
	add hl,bc		;5ec5
	ex af,af'		;5ec6
	ld b,00ah		;5ec7
	add hl,hl		;5ec9
	dec b			;5eca
	ld l,e			;5ecb
	ld b,00ah		;5ecc
	dec b			;5ece
	dec bc			;5ecf
	daa			;5ed0
	call pe,009ech		;5ed1
	adc a,d			;5ed4
	ex af,af'		;5ed5
	inc c			;5ed6
	daa			;5ed7
	inc c			;5ed8
	dec hl			;5ed9
	dec bc			;5eda
	dec h			;5edb
	ld a,(bc)		;5edc
	ld a,(bc)		;5edd
	ld l,c			;5ede
	add hl,bc		;5edf
	ld (bc),a		;5ee0
	ex af,af'		;5ee1
	dec b			;5ee2
	add hl,bc		;5ee3
	rlca			;5ee4
	ld a,(bc)		;5ee5
	jr z,l5ef2h		;5ee6
	dec hl			;5ee8
	dec hl			;5ee9
	ld a,(bc)		;5eea
	inc c			;5eeb
	dec bc			;5eec
	inc c			;5eed
	ld c,l			;5eee
	ld a,(bc)		;5eef
	ld c,l			;5ef0
	ld l,c			;5ef1
l5ef2h:
	inc c			;5ef2
	inc c			;5ef3
	dec hl			;5ef4
	dec hl			;5ef5
	daa			;5ef6
	ld a,(bc)		;5ef7
	ld a,(bc)		;5ef8
	ex af,af'		;5ef9
	inc b			;5efa
	dec b			;5efb
	ld b,b			;5efc
	ld b,b			;5efd
	ld b,b			;5efe
	rlca			;5eff
	ld b,004h		;5f00
	add hl,bc		;5f02
	ex af,af'		;5f03
	ld b,00ah		;5f04
	add hl,bc		;5f06
	ex af,af'		;5f07
	dec bc			;5f08
	ld a,(bc)		;5f09
	ld hl,(0cb0ch)		;5f0a
	defb 0edh ;next byte illegal after ed	;5f0d
	ld l,e			;5f0e
	ld a,(bc)		;5f0f
	ex af,af'		;5f10
	ld a,(bc)		;5f11
	dec b			;5f12
	add hl,hl		;5f13
	ld bc,002edh		;5f14
	ld hl,(00504h)		;5f17
	add hl,bc		;5f1a
	ld (bc),a		;5f1b
	ex af,af'		;5f1c
	ld bc,00607h		;5f1d
	ex af,af'		;5f20
	daa			;5f21
	rlca			;5f22
	inc c			;5f23
	ld b,006h		;5f24
	ld a,(bc)		;5f26
	inc bc			;5f27
	add a,b			;5f28
	ex af,af'		;5f29
	ld h,b			;5f2a
	rlca			;5f2b
	ex af,af'		;5f2c
	add hl,bc		;5f2d
	ld a,(bc)		;5f2e
	dec b			;5f2f
	ld b,00bh		;5f30
	ex af,af'		;5f32
	add hl,bc		;5f33
	inc c			;5f34
	xor c			;5f35
	ld a,(bc)		;5f36
	xor l			;5f37
	dec bc			;5f38
	inc c			;5f39
	ld l,l			;5f3a
	ld hl,(00c4ch)		;5f3b
	add hl,bc		;5f3e
	dec hl			;5f3f
	dec h			;5f40
	dec hl			;5f41
	ld a,(bc)		;5f42
	inc bc			;5f43
	add hl,bc		;5f44
	adc a,d			;5f45
	dec b			;5f46
	ex af,af'		;5f47
	inc h			;5f48
	rlca			;5f49
	dec b			;5f4a
	ld (bc),a		;5f4b
	ld b,005h		;5f4c
	rlca			;5f4e
	ex de,hl		;5f4f
	inc b			;5f50
	add hl,bc		;5f51
	rlca			;5f52
	ld hl,(l4928h)		;5f53
	rlca			;5f56
	ld h,04ah		;5f57
	ex af,af'		;5f59
	inc c			;5f5a
	add hl,hl		;5f5b
	call 02acbh		;5f5c
	ld c,e			;5f5f
	ld hl,(00a0ch)		;5f60
	dec bc			;5f63
	add hl,bc		;5f64
	add hl,bc		;5f65
	ld a,(bc)		;5f66
	ex af,af'		;5f67
	ex af,af'		;5f68
	ld l,c			;5f69
	rlca			;5f6a
	ld b,006h		;5f6b
	dec b			;5f6d
	dec b			;5f6e
	ld b,027h		;5f6f
	rlca			;5f71
	ld hl,(02808h)		;5f72
	add hl,bc		;5f75
	dec hl			;5f76
	ld a,(bc)		;5f77
	add hl,bc		;5f78
	dec bc			;5f79
	inc c			;5f7a
	jr z,l5f89h		;5f7b
	ld l,l			;5f7d
	ld l,l			;5f7e
	add hl,hl		;5f7f
	ld hl,(00c2ch)		;5f80
	add hl,hl		;5f83
	dec bc			;5f84
	dec bc			;5f85
	ld a,(bc)		;5f86
	ld a,(bc)		;5f87
	ex af,af'		;5f88
l5f89h:
	add hl,bc		;5f89
	add hl,bc		;5f8a
	ld b,007h		;5f8b
	inc b			;5f8d
	ld h,b			;5f8e
	ld h,b			;5f8f
	ld b,b			;5f90
	rlca			;5f91
	rlca			;5f92
	dec b			;5f93
	add hl,bc		;5f94
	add hl,bc		;5f95
	ex af,af'		;5f96
	ld a,(bc)		;5f97
	ld a,(bc)		;5f98
	add hl,bc		;5f99
	dec hl			;5f9a
	dec bc			;5f9b
	xor d			;5f9c
	call pe,029ach		;5f9d
	ex de,hl		;5fa0
	ex af,af'		;5fa1
	ld l,h			;5fa2
	rlca			;5fa3
	add hl,hl		;5fa4
	adc a,d			;5fa5
	dec bc			;5fa6
	ld a,(bc)		;5fa7
	add hl,bc		;5fa8
	dec bc			;5fa9
	jr z,$+12		;5faa
	add hl,bc		;5fac
	add hl,bc		;5fad
	inc b			;5fae
	rlca			;5faf
	dec b			;5fb0
	ld b,b			;5fb1
	ld b,b			;5fb2
	ld b,b			;5fb3
	ld bc,00503h		;5fb4
l5fb7h:
	ld b,007h		;5fb7
	ex af,af'		;5fb9
	ex af,af'		;5fba
	add hl,bc		;5fbb
	ld a,(bc)		;5fbc
	add hl,bc		;5fbd
	dec bc			;5fbe
	dec bc			;5fbf
	ld hl,(00c2ch)		;5fc0
	adc a,l			;5fc3
	adc a,c			;5fc4
	adc a,l			;5fc5
	inc c			;5fc6
	ld hl,(00b0ch)		;5fc7
l5fcah:
	ld c,e			;5fca
	ld a,(bc)		;5fcb
	add hl,bc		;5fcc
	add hl,bc		;5fcd
	rlca			;5fce
	jr z,l5fd6h		;5fcf
	jp pe,l6743h		;5fd1
	ld (bc),a		;5fd4
	inc bc			;5fd5
l5fd6h:
	ex af,af'		;5fd6
	ld b,009h		;5fd7
	ex af,af'		;5fd9
	adc a,d			;5fda
	rlca			;5fdb
	ld a,(bc)		;5fdc
	ld b,009h		;5fdd
	inc b			;5fdf
	ex af,af'		;5fe0
	inc bc			;5fe1
	add hl,bc		;5fe2
	ld h,00ah		;5fe3
	dec bc			;5fe5
	dec hl			;5fe6
	inc c			;5fe7
	jr z,l5fb7h		;5fe8
	adc a,h			;5fea
	ld a,(bc)		;5feb
	ld l,e			;5fec
	dec hl			;5fed
	ld a,(bc)		;5fee
	inc c			;5fef
	add hl,bc		;5ff0
	ld a,(bc)		;5ff1
	dec bc			;5ff2
	ex af,af'		;5ff3
	ex af,af'		;5ff4
	ld a,(bc)		;5ff5
	inc b			;5ff6
	ld b,009h		;5ff7
	jr nz,l5fffh		;5ff9
	jr z,l6002h		;5ffb
	inc bc			;5ffd
	rlca			;5ffe
l5fffh:
	add hl,bc		;5fff
	dec b			;6000
	ex af,af'		;6001
l6002h:
	ld a,(bc)		;6002
	ld b,(hl)		;6003
	add hl,bc		;6004
	dec hl			;6005
	ld hl,(l458ch)		;6006
	dec bc			;6009
	inc c			;600a
	xor l			;600b
	ex af,af'		;600c
	ld a,(bc)		;600d
	ld c,l			;600e
	ret			;600f
	inc c			;6010
	inc c			;6011
	dec bc			;6012
	dec bc			;6013
	ld a,(bc)		;6014
	ld a,(bc)		;6015
	add hl,bc		;6016
	add hl,bc		;6017
	ex af,af'		;6018
	ex af,af'		;6019
	rlca			;601a
	inc b			;601b
	ld bc,l4060h		;601c
	ld b,b			;601f
	ld b,006h		;6020
	inc bc			;6022
	add hl,bc		;6023
	rlca			;6024
	ld b,00ah		;6025
	add hl,bc		;6027
	ex af,af'		;6028
	dec bc			;6029
	ld a,(bc)		;602a
	add hl,bc		;602b
	inc c			;602c
	sra b			;602d
	defb 0edh ;next byte illegal after ed	;602f
	add hl,bc		;6030
	ld a,(bc)		;6031
	dec hl			;6032
	xor d			;6033
	ld a,(bc)		;6034
	ld c,c			;6035
	ld c,l			;6036
	ld b,00ch		;6037
	ld b,a			;6039
	ld l,c			;603a
	dec bc			;603b
	ld hl,(00906h)		;603c
	inc b			;603f
	rlca			;6040
	dec b			;6041
	ld b,b			;6042
	jr nz,l6065h		;6043
	ld bc,00206h		;6045
	dec b			;6048
	ex af,af'		;6049
	inc bc			;604a
	rlca			;604b
	add hl,bc		;604c
	inc b			;604d
	add hl,bc		;604e
	ld a,(bc)		;604f
	rlca			;6050
	dec bc			;6051
	dec bc			;6052
	ex af,af'		;6053
	inc c			;6054
	ld c,h			;6055
	rlca			;6056
	call 00a09h		;6057
	ld l,l			;605a
	adc a,c			;605b
	inc l			;605c
	inc l			;605d
	daa			;605e
	dec hl			;605f
l6060h:
	dec bc			;6060
	ld b,00ah		;6061
	ld a,(bc)		;6063
	inc b			;6064
l6065h:
	add hl,bc		;6065
	jr z,l6088h		;6066
	ex af,af'		;6068
	ld b,(hl)		;6069
	daa			;606a
	ld (bc),a		;606b
	inc b			;606c
	jr z,l6074h		;606d
	inc b			;606f
	rlca			;6070
	daa			;6071
	add hl,hl		;6072
	ex af,af'		;6073
l6074h:
	add hl,bc		;6074
	ex af,af'		;6075
	jr z,l60a2h		;6076
	add hl,hl		;6078
	rlca			;6079
	ld c,e			;607a
	ld a,(bc)		;607b
	add hl,bc		;607c
	dec bc			;607d
	ld hl,(0cccch)		;607e
	dec bc			;6081
	ld l,h			;6082
	dec hl			;6083
	dec hl			;6084
	dec bc			;6085
	ld a,(bc)		;6086
	ld a,(bc)		;6087
l6088h:
	ld a,(bc)		;6088
	ex af,af'		;6089
	add hl,bc		;608a
	ex af,af'		;608b
	rlca			;608c
	rlca			;608d
	ld b,003h		;608e
	dec b			;6090
	dec b			;6091
	ld (bc),a		;6092
	inc b			;6093
	ld b,005h		;6094
	ld b,008h		;6096
	rlca			;6098
	ex af,af'		;6099
	add hl,bc		;609a
	add hl,bc		;609b
	add hl,hl		;609c
	ld a,(bc)		;609d
	ld c,d			;609e
	ex de,hl		;609f
	ld a,(bc)		;60a0
	xor e			;60a1
l60a2h:
	dec hl			;60a2
	inc l			;60a3
	adc a,l			;60a4
	ld c,h			;60a5
	dec hl			;60a6
	ld c,d			;60a7
	dec bc			;60a8
	inc c			;60a9
	ld hl,(0280bh)		;60aa
	ld a,(bc)		;60ad
	add hl,bc		;60ae
	add hl,bc		;60af
	ex af,af'		;60b0
	ld b,007h		;60b1
	ld (bc),a		;60b3
	ld h,b			;60b4
	ld h,b			;60b5
	ld b,b			;60b6
	ld bc,00605h		;60b7
	rlca			;60ba
	rlca			;60bb
	ex af,af'		;60bc
	add hl,bc		;60bd
	add hl,bc		;60be
	ld a,(bc)		;60bf
	ld a,(bc)		;60c0
	ld a,(bc)		;60c1
	dec hl			;60c2
	dec bc			;60c3
	ld c,e			;60c4
	call z,sub_4cech	;60c5
	dec bc			;60c8
	ld c,d			;60c9
	dec bc			;60ca
	ld a,(bc)		;60cb
	ld c,h			;60cc
	add hl,bc		;60cd
	add hl,bc		;60ce
	ex af,af'		;60cf
	jr z,l60f9h		;60d0
	dec bc			;60d2
	ld b,a			;60d3
	ld a,(bc)		;60d4
	ld b,(hl)		;60d5
	add hl,bc		;60d6
	ex af,af'		;60d7
	ld b,007h		;60d8
	dec b			;60da
	dec b			;60db
	dec b			;60dc
	ld bc,00020h		;60dd
	nop			;60e0
	inc bc			;60e1
	ld bc,00601h		;60e2
	dec b			;60e5
	ld b,008h		;60e6
	rlca			;60e8
l60e9h:
	ex af,af'		;60e9
	ld a,(bc)		;60ea
	ex af,af'		;60eb
	ld a,(bc)		;60ec
	dec bc			;60ed
	add hl,hl		;60ee
	dec bc			;60ef
	inc c			;60f0
	inc c			;60f1
	call 0cd07h		;60f2
	adc a,c			;60f5
	ld b,a			;60f6
	inc c			;60f7
	inc c			;60f8
l60f9h:
	dec bc			;60f9
	dec bc			;60fa
	ld a,(bc)		;60fb
	inc bc			;60fc
	ld a,(bc)		;60fd
	ex af,af'		;60fe
	inc b			;60ff
	ex af,af'		;6100
	ld b,003h		;6101
l6103h:
	inc b			;6103
	ld b,b			;6104
	ld b,b			;6105
	ld b,b			;6106
	dec b			;6107
	ld bc,00804h		;6108
	dec b			;610b
	ld b,009h		;610c
	rlca			;610e
	ex af,af'		;610f
	ld a,(bc)		;6110
	jr z,l611ch		;6111
	dec hl			;6113
	jp z,0ec09h		;6114
	ex af,af'		;6117
	add hl,bc		;6118
	ld a,(bc)		;6119
	dec bc			;611a
	xor h			;611b
l611ch:
	ld c,e			;611c
	ld c,h			;611d
	ld hl,(0290bh)		;611e
	dec bc			;6121
	ld a,(bc)		;6122
	ld a,(bc)		;6123
	add hl,bc		;6124
	rlca			;6125
	add hl,bc		;6126
	rlca			;6127
l6128h:
	inc b			;6128
	ex af,af'		;6129
	dec b			;612a
	inc bc			;612b
	rlca			;612c
	inc bc			;612d
	ld bc,00006h		;612e
	dec b			;6131
	ex af,af'		;6132
	dec b			;6133
	jr z,$+11		;6134
	ld b,00ah		;6136
	ex af,af'		;6138
	add hl,hl		;6139
	dec bc			;613a
	daa			;613b
	ld c,h			;613c
	ld a,(bc)		;613d
	jr z,l616bh		;613e
	ld i,a			;6140
	call pe,00906h		;6142
	ld hl,(00c08h)		;6145
	ld (bc),a		;6148
	dec bc			;6149
	dec bc			;614a
	ld bc,00a0ah		;614b
	nop			;614e
	add hl,bc		;614f
	add hl,bc		;6150
	ld bc,00608h		;6151
	add a,b			;6154
	ld h,b			;6155
	ld b,b			;6156
	inc b			;6157
	inc b			;6158
	add hl,bc		;6159
	inc b			;615a
	ld b,00ah		;615b
	ld b,008h		;615d
	dec bc			;615f
	ex af,af'		;6160
	ld a,(bc)		;6161
	inc c			;6162
	ld l,c			;6163
	dec bc			;6164
	call 00acch		;6165
	dec hl			;6168
	add hl,bc		;6169
	ld l,h			;616a
l616bh:
	ld a,(bc)		;616b
	ld l,e			;616c
	add hl,hl		;616d
	jr z,$+13		;616e
	ld a,(bc)		;6170
	ld a,(bc)		;6171
	ld b,l			;6172
	add hl,bc		;6173
	ld c,c			;6174
	jr z,$+6		;6175
	rlca			;6177
	ex af,af'		;6178
	ld bc,00503h		;6179
	jr nz,l617eh		;617c
l617eh:
	inc bc			;617e
	ld b,007h		;617f
	inc b			;6181
	ex af,af'		;6182
	add hl,bc		;6183
	ld b,009h		;6184
	ld a,(bc)		;6186
	ld h,a			;6187
	ld a,(bc)		;6188
	dec bc			;6189
	dec bc			;618a
	inc c			;618b
	inc c			;618c
	call 089edh		;618d
	jr z,l619eh		;6190
	dec hl			;6192
	add hl,bc		;6193
	inc c			;6194
	ex af,af'		;6195
	dec bc			;6196
	ld a,(bc)		;6197
	rlca			;6198
	ld a,(bc)		;6199
	add hl,bc		;619a
	inc b			;619b
	add hl,hl		;619c
	rlca			;619d
l619eh:
	ld bc,l4005h		;619e
	ex af,af'		;61a1
	inc bc			;61a2
	rlca			;61a3
	nop			;61a4
	ld h,001h		;61a5
	inc bc			;61a7
	ld (bc),a		;61a8
	ld b,008h		;61a9
	dec b			;61ab
	rlca			;61ac
	add hl,bc		;61ad
	rlca			;61ae
	ex af,af'		;61af
	ld a,(bc)		;61b0
	ex af,af'		;61b1
	add hl,bc		;61b2
	dec hl			;61b3
	add hl,bc		;61b4
	ld hl,(0ac2ah)		;61b5
	ld l,e			;61b8
	dec hl			;61b9
	ld l,h			;61ba
	xor h			;61bb
	ld c,e			;61bc
	dec bc			;61bd
	ld c,d			;61be
	ld a,(bc)		;61bf
	add hl,hl		;61c0
	dec bc			;61c1
	add hl,hl		;61c2
	ld a,(bc)		;61c3
	ex af,af'		;61c4
	add hl,bc		;61c5
	ld b,028h		;61c6
	ex af,af'		;61c8
	ld hl,02907h		;61c9
	ld b,004h		;61cc
	rlca			;61ce
	ld b,00ah		;61cf
	ex af,af'		;61d1
	ld c,b			;61d2
	dec bc			;61d3
	add hl,bc		;61d4
	inc c			;61d5
	ex af,af'		;61d6
	defb 0edh ;next byte illegal after ed	;61d7
	ld b,009h		;61d8
	inc bc			;61da
	adc a,d			;61db
	inc b			;61dc
	rlca			;61dd
	ld b,007h		;61de
	jr z,l61edh		;61e0
	inc l			;61e2
	ld l,l			;61e3
	ld hl,(0094dh)		;61e4
	ld hl,(00c0ch)		;61e7
	dec bc			;61ea
	add hl,bc		;61eb
	dec bc			;61ec
l61edh:
	ld a,(bc)		;61ed
	ex af,af'		;61ee
	ld a,(bc)		;61ef
	ex af,af'		;61f0
	ld b,008h		;61f1
	ld b,004h		;61f3
	inc bc			;61f5
	ld h,b			;61f6
	ld h,b			;61f7
	ld b,b			;61f8
	ld bc,00507h		;61f9
	ex af,af'		;61fc
	add hl,bc		;61fd
	ex af,af'		;61fe
	ld a,(bc)		;61ff
	ld a,(bc)		;6200
	ld a,(bc)		;6201
	dec hl			;6202
	dec bc			;6203
	dec hl			;6204
	call pe,sub_4cach	;6205
	ld l,e			;6208
	dec bc			;6209
	xor d			;620a
	adc a,h			;620b
	ld a,(bc)		;620c
	add hl,hl		;620d
	ex af,af'		;620e
	ld b,a			;620f
	dec bc			;6210
	add hl,bc		;6211
	ld a,(bc)		;6212
	ex af,af'		;6213
	add hl,bc		;6214
	inc b			;6215
	rlca			;6216
	ex af,af'		;6217
	ld h,b			;6218
	ld b,006h		;6219
	inc b			;621b
	inc hl			;621c
	ld bc,00605h		;621d
	inc b			;6220
	ex af,af'		;6221
	ex af,af'		;6222
	rlca			;6223
	ld a,(bc)		;6224
	ld a,(bc)		;6225
	ex af,af'		;6226
	dec bc			;6227
	dec bc			;6228
	add hl,bc		;6229
	inc l			;622a
	inc c			;622b
	ld hl,(0cd8dh)		;622c
	ld l,c			;622f
	inc c			;6230
	ld a,(bc)		;6231
	dec bc			;6232
	add hl,hl		;6233
	ld c,d			;6234
	inc c			;6235
	ex af,af'		;6236
	ex de,hl		;6237
	ld b,009h		;6238
	inc bc			;623a
	ld l,b			;623b
	ld (bc),a		;623c
	ld bc,00400h		;623d
	rlca			;6240
	inc bc			;6241
	dec b			;6242
	nop			;6243
	dec bc			;6244
	ld b,b			;6245
	inc hl			;6246
	ld c,d			;6247
	ld b,005h		;6248
	jr z,l6257h		;624a
	jr z,l625ah		;624c
	add hl,bc		;624e
	call 00a09h		;624f
	ld hl,(0ac0bh)		;6252
	ld c,e			;6255
	ld a,(bc)		;6256
l6257h:
	inc c			;6257
	add hl,bc		;6258
	dec bc			;6259
l625ah:
	ex af,af'		;625a
	dec bc			;625b
	ld a,(bc)		;625c
	ld b,00ah		;625d
	add hl,bc		;625f
	inc bc			;6260
	add hl,bc		;6261
	ex af,af'		;6262
	dec b			;6263
	ret z			;6264
	rlca			;6265
	ld b,026h		;6266
	ex af,af'		;6268
	add hl,bc		;6269
	dec b			;626a
	ld hl,(00302h)		;626b
	dec bc			;626e
	dec b			;626f
	inc l			;6270
	add hl,hl		;6271
	daa			;6272
	defb 0edh ;next byte illegal after ed	;6273
	ex af,af'		;6274
	jr z,l62c0h		;6275
	rlca			;6277
	ld b,068h		;6278
	inc b			;627a
	inc bc			;627b
	nop			;627c
	dec b			;627d
	call 00709h		;627e
	ld a,(bc)		;6281
	add hl,bc		;6282
	dec bc			;6283
	ld a,(bc)		;6284
	ld c,h			;6285
	ld l,e			;6286
	dec bc			;6287
	inc c			;6288
	ld a,(bc)		;6289
	ld a,(bc)		;628a
	dec bc			;628b
	ex af,af'		;628c
	ex af,af'		;628d
	add hl,bc		;628e
	ld b,005h		;628f
	rlca			;6291
	ld bc,00180h		;6292
	ld h,b			;6295
	jr nz,$+4		;6296
	ex af,af'		;6298
	ld b,006h		;6299
	ld a,(bc)		;629b
	ex af,af'		;629c
	add hl,bc		;629d
	dec bc			;629e
	add hl,bc		;629f
	ld hl,(02a0ch)		;62a0
	outd			;62a3
	dec hl			;62a5
	ld a,(bc)		;62a6
	jr z,l62d0h		;62a7
	ld a,(bc)		;62a9
	add hl,bc		;62aa
	adc a,l			;62ab
	ld b,048h		;62ac
	dec b			;62ae
	ld b,005h		;62af
	daa			;62b1
	inc bc			;62b2
	inc c			;62b3
	dec h			;62b4
	ld b,00bh		;62b5
	inc hl			;62b7
	ld a,(bc)		;62b8
	ret nz			;62b9
	ex af,af'		;62ba
	ld b,b			;62bb
	ld bc,00420h		;62bc
	rlca			;62bf
l62c0h:
	ex af,af'		;62c0
	ld a,(bc)		;62c1
	ld a,(bc)		;62c2
	dec bc			;62c3
	ld h,00bh		;62c4
	inc c			;62c6
	inc c			;62c7
	adc a,l			;62c8
	dec b			;62c9
	adc a,l			;62ca
	ld l,c			;62cb
	ld c,h			;62cc
	ld hl,(00b0ch)		;62cd
l62d0h:
	add hl,bc		;62d0
	ld a,(bc)		;62d1
	dec hl			;62d2
	ex af,af'		;62d3
	add hl,hl		;62d4
	ld b,0eah		;62d5
	dec b			;62d7
	jr z,l62deh		;62d8
	ld h,007h		;62da
	ex af,af'		;62dc
	ld c,b			;62dd
l62deh:
	add hl,hl		;62de
	ex af,af'		;62df
	rlca			;62e0
	ld b,009h		;62e1
	dec b			;62e3
	ld bc,02028h		;62e4
	jr nz,l62f2h		;62e7
	ld (bc),a		;62e9
	dec b			;62ea
	ld a,(bc)		;62eb
	rlca			;62ec
	ex af,af'		;62ed
	dec bc			;62ee
	add hl,bc		;62ef
	ld a,(bc)		;62f0
	inc c			;62f1
l62f2h:
	ld a,(bc)		;62f2
	dec bc			;62f3
	xor l			;62f4
	add hl,bc		;62f5
	inc c			;62f6
	ld a,(bc)		;62f7
	adc a,l			;62f8
	ld c,c			;62f9
	daa			;62fa
	inc c			;62fb
	inc c			;62fc
	dec bc			;62fd
	add a,b			;62fe
	dec bc			;62ff
	ex af,af'		;6300
	add hl,bc		;6301
	ld b,006h		;6302
	nop			;6304
	nop			;6305
	dec b			;6306
	ld bc,00408h		;6307
	dec b			;630a
	ld a,(bc)		;630b
	rlca			;630c
	daa			;630d
	dec bc			;630e
	ex af,af'		;630f
	inc c			;6310
	ld b,004h		;6311
	defb 0edh ;next byte illegal after ed	;6313
	dec b			;6314
	ld h,003h		;6315
	ld b,007h		;6317
	rlca			;6319
	ld c,b			;631a
	dec b			;631b
	ld b,005h		;631c
	daa			;631e
	ld b,0edh		;631f
	daa			;6321
	jr z,$+10		;6322
	ld l,c			;6324
	daa			;6325
	ex af,af'		;6326
	rlca			;6327
	ld hl,(08d09h)		;6328
	ld hl,(l4c0bh)		;632b
	dec hl			;632e
	ld a,(bc)		;632f
	dec bc			;6330
	inc c			;6331
	add hl,bc		;6332
	ld a,(bc)		;6333
	ld a,(bc)		;6334
	ex af,af'		;6335
	ex af,af'		;6336
	ex af,af'		;6337
	dec b			;6338
	inc b			;6339
	inc bc			;633a
	ld h,b			;633b
	ld h,b			;633c
	ld h,b			;633d
	rlca			;633e
	inc bc			;633f
	rlca			;6340
	ld a,(bc)		;6341
	rlca			;6342
	add hl,bc		;6343
	dec bc			;6344
	add hl,bc		;6345
	ld a,(bc)		;6346
	adc a,h			;6347
	ld a,(bc)		;6348
	dec bc			;6349
	ex de,hl		;634a
	inc c			;634b
	defb 0edh ;next byte illegal after ed	;634c
	dec bc			;634d
	ld hl,(00a69h)		;634e
	add hl,bc		;6351
	ld c,l			;6352
	jr z,l635dh		;6353
	daa			;6355
	add hl,hl		;6356
	inc c			;6357
	dec bc			;6358
	ld b,007h		;6359
	ld a,(bc)		;635b
	ld (bc),a		;635c
l635dh:
	dec b			;635d
	add hl,bc		;635e
	ld h,b			;635f
	ld (bc),a		;6360
	ld b,040h		;6361
	inc b			;6363
	dec b			;6364
	ex af,af'		;6365
	ld (bc),a		;6366
	ld b,00ah		;6367
	ld b,009h		;6369
	dec bc			;636b
	ex af,af'		;636c
	ld a,(bc)		;636d
	inc c			;636e
	add hl,bc		;636f
	dec bc			;6370
	xor l			;6371
	ex af,af'		;6372
	inc c			;6373
	adc a,c			;6374
	adc a,l			;6375
	call pe,00c0ah		;6376
	add hl,bc		;6379
	dec bc			;637a
	ex af,af'		;637b
	ld a,(bc)		;637c
	rlca			;637d
	adc a,c			;637e
	ld h,004h		;637f
	nop			;6381
	dec hl			;6382
	ld b,028h		;6383
	dec b			;6385
	jp z,02724h		;6386
	ld (bc),a		;6389
	ld h,000h		;638a
	ld bc,02007h		;638c
	ex af,af'		;638f
	ld a,(bc)		;6390
	dec bc			;6391
	dec b			;6392
	dec bc			;6393
	inc c			;6394
	ld b,00ch		;6395
	xor l			;6397
	rlca			;6398
	xor l			;6399
	ld l,c			;639a
	rlca			;639b
	inc l			;639c
	ex af,af'		;639d
	inc c			;639e
	ld b,00bh		;639f
	dec bc			;63a1
	dec b			;63a2
	ld a,(bc)		;63a3
	ld a,(bc)		;63a4
	inc bc			;63a5
	ex af,af'		;63a6
	ex af,af'		;63a7
	inc b			;63a8
	ld b,004h		;63a9
	ld bc,02002h		;63ab
	dec b			;63ae
	inc bc			;63af
	ex af,af'		;63b0
	rlca			;63b1
	inc b			;63b2
	add hl,bc		;63b3
	add hl,bc		;63b4
	ld l,b			;63b5
	ld a,(bc)		;63b6
	ld hl,(0ebebh)		;63b7
	rlca			;63ba
	ld b,004h		;63bb
	dec b			;63bd
	ex af,af'		;63be
	add hl,hl		;63bf
	xor e			;63c0
	call pe,00928h		;63c1
	ld c,b			;63c4
	ld a,(bc)		;63c5
	ld c,c			;63c6
	ld (bc),a		;63c7
	rlca			;63c8
	call pe,00a06h		;63c9
	ld c,b			;63cc
	ld c,e			;63cd
	ld a,(bc)		;63ce
	ld c,h			;63cf
	dec bc			;63d0
	inc c			;63d1
	dec bc			;63d2
	dec bc			;63d3
	dec bc			;63d4
	ld a,(bc)		;63d5
	add hl,bc		;63d6
	add hl,bc		;63d7
	rlca			;63d8
	ld b,007h		;63d9
	inc b			;63db
	nop			;63dc
	nop			;63dd
	ld h,b			;63de
	ld (bc),a		;63df
	ld bc,02040h		;63e0
	ld bc,00607h		;63e3
	add hl,bc		;63e6
	ld a,(bc)		;63e7
	jr z,l6435h		;63e8
	dec hl			;63ea
	add hl,hl		;63eb
	ld l,h			;63ec
	inc c			;63ed
	ld a,(bc)		;63ee
	call 00a0bh		;63ef
	dec bc			;63f2
	ex af,af'		;63f3
	ld hl,(l4807h)		;63f4
	xor e			;63f7
	adc a,h			;63f8
	ld b,002h		;63f9
	dec b			;63fb
	ld b,00ah		;63fc
	inc bc			;63fe
	dec bc			;63ff
	rlca			;6400
	ld bc,0020ah		;6401
	jr nz,l642fh		;6404
	nop			;6406
	inc b			;6407
	ld (bc),a		;6408
	ex af,af'		;6409
	ld b,b			;640a
	ld bc,00407h		;640b
	ex af,af'		;640e
	ex af,af'		;640f
	ld a,(bc)		;6410
	rlca			;6411
	ld a,(bc)		;6412
	dec bc			;6413
	add hl,bc		;6414
	dec hl			;6415
	call z,sub_6c2ah	;6416
	dec bc			;6419
	call pe,02a0bh		;641a
	dec bc			;641d
	ld hl,(l69c9h)		;641e
	adc a,h			;6421
	ex af,af'		;6422
	ld b,(hl)		;6423
	ex af,af'		;6424
	dec bc			;6425
	rlca			;6426
	ld a,(bc)		;6427
	dec b			;6428
	dec b			;6429
	add hl,bc		;642a
	ld hl,02806h		;642b
	ex af,af'		;642e
l642fh:
	inc h			;642f
	add hl,hl		;6430
	add hl,bc		;6431
	ld a,(bc)		;6432
	dec b			;6433
	ld a,(bc)		;6434
l6435h:
	dec bc			;6435
	ld b,00bh		;6436
	inc c			;6438
	ex af,af'		;6439
	inc c			;643a
	adc a,l			;643b
	ld l,c			;643c
	adc a,l			;643d
	ex af,af'		;643e
	inc c			;643f
	add hl,bc		;6440
	inc c			;6441
	dec bc			;6442
	rlca			;6443
	dec bc			;6444
	ld a,(bc)		;6445
	ld b,00ah		;6446
	ld l,b			;6448
	inc b			;6449
	add hl,bc		;644a
	ld (bc),a		;644b
	ex af,af'		;644c
	dec b			;644d
	ld c,c			;644e
	nop			;644f
	add hl,hl		;6450
	inc h			;6451
	ld hl,(l460ah)		;6452
	ex de,hl		;6455
	ex de,hl		;6456
	rlca			;6457
	dec h			;6458
	inc b			;6459
	daa			;645a
	ld l,h			;645b
	dec b			;645c
	call pe,sub_6908h	;645d
	dec bc			;6460
	ld a,(bc)		;6461
	add hl,bc		;6462
	jr z,$+10		;6463
	rlca			;6465
	rlca			;6466
	inc c			;6467
	inc hl			;6468
	dec b			;6469
	dec hl			;646a
	ld bc,02300h		;646b
	ld a,(bc)		;646e
	dec b			;646f
	dec hl			;6470
	ex af,af'		;6471
	rlca			;6472
	add hl,bc		;6473
	add hl,bc		;6474
	inc l			;6475
	ld hl,(02b0ah)		;6476
	adc a,l			;6479
	add hl,bc		;647a
	ld hl,(00b6ch)		;647b
	ld a,(bc)		;647e
	inc c			;647f
	add hl,bc		;6480
	dec bc			;6481
	ld a,(bc)		;6482
	dec b			;6483
	ex af,af'		;6484
	ex af,af'		;6485
	add a,b			;6486
	inc bc			;6487
	ld h,b			;6488
	ld b,b			;6489
	ld bc,00606h		;648a
	ex af,af'		;648d
	add hl,bc		;648e
	ex af,af'		;648f
	add hl,bc		;6490
	dec bc			;6491
	add hl,hl		;6492
	ld c,b			;6493
	ld c,h			;6494
	ld a,(bc)		;6495
	ld c,e			;6496
	ld b,0edh		;6497
	rlca			;6499
	ex af,af'		;649a
	ld a,(bc)		;649b
	rlca			;649c
	add hl,hl		;649d
	dec b			;649e
	ex af,af'		;649f
	ld a,(bc)		;64a0
	ld hl,(l492bh)		;64a1
	ld l,l			;64a4
	ld c,d			;64a5
	jr z,l64b1h		;64a6
	inc c			;64a8
	ex af,af'		;64a9
	dec b			;64aa
	dec bc			;64ab
	dec b			;64ac
	ld h,b			;64ad
	ld a,(bc)		;64ae
	inc bc			;64af
	ld l,c			;64b0
l64b1h:
	dec b			;64b1
	inc h			;64b2
	inc b			;64b3
	ld b,006h		;64b4
	ld a,(bc)		;64b6
	ex af,af'		;64b7
	ex af,af'		;64b8
	dec bc			;64b9
	ld a,(bc)		;64ba
	add hl,bc		;64bb
	call pe,0080bh		;64bc
	call pe,00827h		;64bf
	add hl,hl		;64c2
	ex af,af'		;64c3
	rlca			;64c4
	call z,08c26h		;64c5
	ld b,a			;64c8
	ld b,02bh		;64c9
	rlca			;64cb
	dec bc			;64cc
	ld b,b			;64cd
	ld a,(bc)		;64ce
	ld a,(bc)		;64cf
	add hl,bc		;64d0
	ex af,af'		;64d1
	ld b,007h		;64d2
	ld bc,00602h		;64d4
	ld (bc),a		;64d7
	ld bc,00608h		;64d8
	inc b			;64db
	add hl,bc		;64dc
	ex af,af'		;64dd
	ex af,af'		;64de
	ld a,(bc)		;64df
	add hl,bc		;64e0
	add hl,bc		;64e1
	dec hl			;64e2
	ld a,(bc)		;64e3
	ld hl,(08c4bh)		;64e4
	dec bc			;64e7
	adc a,h			;64e8
	xor h			;64e9
	dec bc			;64ea
	ld a,(bc)		;64eb
	dec bc			;64ec
	add hl,bc		;64ed
	add hl,bc		;64ee
	ld b,a			;64ef
	ex de,hl		;64f0
	rlca			;64f1
	dec b			;64f2
	ld b,006h		;64f3
	rlca			;64f5
	daa			;64f6
	ld b,005h		;64f7
	dec b			;64f9
	ld bc,00000h		;64fa
	inc b			;64fd
	ex de,hl		;64fe
	ld bc,00005h		;64ff
	nop			;6502
	ld b,004h		;6503
	jr z,l650fh		;6505
	add hl,bc		;6507
	add hl,hl		;6508
	ld a,(bc)		;6509
	dec bc			;650a
	ld a,(bc)		;650b
	adc a,h			;650c
	ld l,e			;650d
	dec bc			;650e
l650fh:
	call pe,00b0ah		;650f
	ex af,af'		;6512
	ld a,(bc)		;6513
	dec b			;6514
	ex af,af'		;6515
	nop			;6516
	rlca			;6517
	ld (0ec25h),hl		;6518
	ld bc,00020h		;651b
	inc b			;651e
	ld bc,00505h		;651f
	ld b,027h		;6522
	add hl,bc		;6524
	ld a,(bc)		;6525
	add hl,bc		;6526
	dec bc			;6527
	call pe,0ec48h		;6528
	daa			;652b
	add hl,bc		;652c
	ld a,(bc)		;652d
	dec bc			;652e
	inc c			;652f
	ld a,(bc)		;6530
	inc c			;6531
	dec bc			;6532
	add hl,bc		;6533
	dec bc			;6534
	ld a,(bc)		;6535
	ex af,af'		;6536
	ld a,(bc)		;6537
	add hl,bc		;6538
	dec b			;6539
	ld c,c			;653a
	ex af,af'		;653b
	ld b,007h		;653c
	dec b			;653e
	inc b			;653f
	nop			;6540
	ld a,(bc)		;6541
	ld b,005h		;6542
	rlc a			;6544
	inc b			;6546
	add hl,bc		;6547
	rlca			;6548
	ld c,d			;6549
	ex af,af'		;654a
	add hl,bc		;654b
	ld a,(bc)		;654c
	dec bc			;654d
	ld c,e			;654e
l654fh:
	call z,02aech		;654f
	add hl,bc		;6552
	ld a,(bc)		;6553
	add hl,bc		;6554
	ld c,e			;6555
	ld a,(bc)		;6556
	ld c,c			;6557
	call pe,0082ah		;6558
	ex af,af'		;655b
	ld b,042h		;655c
	ld bc,02025h		;655e
	jr nz,l654fh		;6561
	ld bc,00601h		;6563
	inc b			;6566
	rlca			;6567
	rlca			;6568
	ex af,af'		;6569
	ld c,b			;656a
	add hl,bc		;656b
	ld hl,(0ec89h)		;656c
	ex de,hl		;656f
	jr z,l6579h		;6570
	ld b,04ch		;6572
	dec bc			;6574
	dec h			;6575
	ld a,(bc)		;6576
	ld c,c			;6577
	ex af,af'		;6578
l6579h:
	xor e			;6579
	rlca			;657a
	dec b			;657b
	ex af,af'		;657c
	ld bc,00006h		;657d
	dec b			;6580
	inc b			;6581
	daa			;6582
	ld (bc),a		;6583
	call pe,00826h		;6584
	add hl,bc		;6587
	rlca			;6588
	ld a,(bc)		;6589
	ld c,b			;658a
	ex de,hl		;658b
	ld c,c			;658c
	xor h			;658d
	ld a,(bc)		;658e
	adc a,e			;658f
	ld l,e			;6590
	dec bc			;6591
	ld hl,(00a0ah)		;6592
	add hl,bc		;6595
	add hl,bc		;6596
	add hl,bc		;6597
	rlca			;6598
	ex af,af'		;6599
	jr z,l65c2h		;659a
	ld b,005h		;659c
	add hl,bc		;659e
	daa			;659f
	inc b			;65a0
	ld hl,(00926h)		;65a1
	ld c,e			;65a4
	ld a,(bc)		;65a5
	rlca			;65a6
	dec bc			;65a7
	ex af,af'		;65a8
	call pe,0ec27h		;65a9
	dec b			;65ac
	rlca			;65ad
	ex af,af'		;65ae
	rlca			;65af
	ld l,b			;65b0
	ld l,h			;65b1
	ld l,h			;65b2
	daa			;65b3
	dec bc			;65b4
	ex af,af'		;65b5
	ex de,hl		;65b6
	ld hl,(00007h)		;65b7
	add hl,bc		;65ba
	inc hl			;65bb
	ex af,af'		;65bc
	ld b,004h		;65bd
	inc b			;65bf
	ld (bc),a		;65c0
	daa			;65c1
l65c2h:
	dec h			;65c2
	call pe,00628h		;65c3
	ex af,af'		;65c6
	add hl,hl		;65c7
	add hl,bc		;65c8
	xor d			;65c9
	ld l,d			;65ca
	adc a,h			;65cb
	dec bc			;65cc
	ld c,h			;65cd
	dec bc			;65ce
	inc c			;65cf
	dec bc			;65d0
	dec bc			;65d1
	ld a,(bc)		;65d2
	dec bc			;65d3
	ld a,(bc)		;65d4
	rlca			;65d5
	add hl,bc		;65d6
	add hl,bc		;65d7
	dec b			;65d8
	ex af,af'		;65d9
	ex af,af'		;65da
	ld (bc),a		;65db
	rlca			;65dc
	rlca			;65dd
	ld bc,00305h		;65de
	nop			;65e1
	jr nz,l65eah		;65e2
	dec b			;65e4
	ex af,af'		;65e5
	nop			;65e6
	inc bc			;65e7
	ld c,d			;65e8
	daa			;65e9
l65eah:
	ex af,af'		;65ea
	ld b,028h		;65eb
	daa			;65ed
	dec bc			;65ee
	inc c			;65ef
	add hl,bc		;65f0
	add hl,bc		;65f1
	defb 0edh ;next byte illegal after ed	;65f2
	ld a,(bc)		;65f3
	ld hl,(l4a0bh)		;65f4
	ex af,af'		;65f7
	rlca			;65f8
	dec b			;65f9
	xor e			;65fa
	jr z,l6606h		;65fb
	ld l,l			;65fd
	ld a,(bc)		;65fe
	ld c,e			;65ff
	ld a,(bc)		;6600
	inc c			;6601
	ld l,c			;6602
	ld a,(bc)		;6603
	dec bc			;6604
	add hl,bc		;6605
l6606h:
	ld c,d			;6606
	jr z,$+10		;6607
	ld b,008h		;6609
	ld b,002h		;660b
	rlca			;660d
	dec h			;660e
	inc bc			;660f
	ld b,005h		;6610
	rlca			;6612
	ld b,007h		;6613
	ex af,af'		;6615
	ex af,af'		;6616
	ex af,af'		;6617
	add hl,hl		;6618
	add hl,bc		;6619
	add hl,bc		;661a
	ld hl,(00a0ah)		;661b
	dec bc			;661e
	ld c,e			;661f
	add hl,hl		;6620
	call pe,0ca08h		;6621
	add hl,bc		;6624
	ld a,(bc)		;6625
	ex de,hl		;6626
	adc a,h			;6627
	add hl,bc		;6628
	rlca			;6629
	ld b,002h		;662a
	ld c,e			;662c
	dec bc			;662d
	inc bc			;662e
	ld a,(bc)		;662f
	inc b			;6630
	add hl,bc		;6631
	ld b,00ah		;6632
	ex af,af'		;6634
	dec b			;6635
	add hl,bc		;6636
	rlca			;6637
	inc b			;6638
	jr z,$+40		;6639
	inc bc			;663b
	nop			;663c
	add hl,bc		;663d
	add hl,bc		;663e
	inc bc			;663f
	ld l,d			;6640
	ld a,(bc)		;6641
	ld b,00bh		;6642
	rlca			;6644
	call pe,0eb26h		;6645
	dec b			;6648
	rlca			;6649
	ex af,af'		;664a
	add hl,bc		;664b
	ld a,(bc)		;664c
	ld c,e			;664d
	call pe,00acbh		;664e
	add hl,bc		;6651
	ex af,af'		;6652
	add hl,bc		;6653
	daa			;6654
	ld c,e			;6655
	ex af,af'		;6656
	ld a,(bc)		;6657
	ld b,009h		;6658
	ld bc,l6a08h		;665a
	ld (bc),a		;665d
l665eh:
	rlca			;665e
	inc b			;665f
	ld b,006h		;6660
	rlca			;6662
	jr z,l668dh		;6663
	ex de,hl		;6665
	ld c,c			;6666
	xor c			;6667
	ld a,(bc)		;6668
	dec bc			;6669
	call pe,sub_4b6ah	;666a
	ld a,(bc)		;666d
	add hl,hl		;666e
	xor c			;666f
	jr z,l665eh		;6670
	add hl,hl		;6672
	daa			;6673
	jr z,$+38		;6674
	rlca			;6676
	ld b,003h		;6677
	rlca			;6679
	call z,00826h		;667a
	add hl,bc		;667d
	ld h,a			;667e
	ld a,(bc)		;667f
	add hl,bc		;6680
	ld c,d			;6681
	ex af,af'		;6682
	xor l			;6683
	ld b,00bh		;6684
	rlca			;6686
	ld l,h			;6687
	ld a,(bc)		;6688
	dec hl			;6689
	ld hl,(00c0bh)		;668a
l668dh:
	ld a,(bc)		;668d
	dec bc			;668e
	ld l,b			;668f
	add hl,hl		;6690
	ld a,(bc)		;6691
	jr z,$+44		;6692
	rlca			;6694
	ld b,a			;6695
	ld c,e			;6696
	ld b,007h		;6697
	jr z,l66a1h		;6699
	call pe,00721h		;669b
	ex af,af'		;669e
	nop			;669f
	add hl,bc		;66a0
l66a1h:
	ld b,02ah		;66a1
	rlca			;66a3
	add hl,bc		;66a4
	jr z,l66afh		;66a5
	ld c,c			;66a7
	inc l			;66a8
	add hl,bc		;66a9
	ld a,(bc)		;66aa
	xor l			;66ab
	dec hl			;66ac
	xor d			;66ad
	ld c,h			;66ae
l66afh:
	dec bc			;66af
	inc c			;66b0
	ld a,(bc)		;66b1
	ld l,c			;66b2
	dec bc			;66b3
	ex af,af'		;66b4
	ld a,(bc)		;66b5
	rlca			;66b6
	add hl,bc		;66b7
	ld b,008h		;66b8
l66bah:
	daa			;66ba
	jr z,l66c4h		;66bb
	ld b,008h		;66bd
	add hl,bc		;66bf
	inc b			;66c0
	add hl,bc		;66c1
	ld a,(bc)		;66c2
	dec b			;66c3
l66c4h:
	ld a,(bc)		;66c4
	ex de,hl		;66c5
	ld b,0ebh		;66c6
	dec h			;66c8
	ex af,af'		;66c9
	add hl,hl		;66ca
	ex af,af'		;66cb
	ld b,06bh		;66cc
	rlca			;66ce
	dec bc			;66cf
	add hl,bc		;66d0
	xor h			;66d1
	dec bc			;66d2
	adc a,h			;66d3
	ld c,h			;66d4
	dec bc			;66d5
	dec hl			;66d6
	ld a,(bc)		;66d7
	dec bc			;66d8
	add hl,hl		;66d9
	ld a,(bc)		;66da
	jp z,00809h		;66db
	daa			;66de
	rlca			;66df
	ld b,(hl)		;66e0
	ld b,005h		;66e1
	ld h,005h		;66e3
	ex de,hl		;66e5
	inc bc			;66e6
	rlca			;66e7
	ld b,a			;66e8
	ex af,af'		;66e9
	adc a,c			;66ea
	ld h,007h		;66eb
	ld h,02ah		;66ed
	dec bc			;66ef
	call pe,00b05h		;66f0
	rlca			;66f3
	xor h			;66f4
	add hl,bc		;66f5
	ld c,d			;66f6
	ld c,c			;66f7
	dec bc			;66f8
	call pe,0080ah		;66f9
	ex af,af'		;66fc
	ld b,007h		;66fd
	inc bc			;66ff
	dec b			;6700
	ld (bc),a		;6701
	ld b,025h		;6702
	jr z,l670ch		;6704
	add hl,hl		;6706
	ld c,h			;6707
	ld b,a			;6708
	ex af,af'		;6709
	add hl,bc		;670a
	dec bc			;670b
l670ch:
	jr z,l6756h		;670c
	ld a,(bc)		;670e
	add hl,bc		;670f
	ld c,c			;6710
	jr z,l671ah		;6711
	ld c,c			;6713
	add hl,bc		;6714
	ld a,(bc)		;6715
	ld a,(bc)		;6716
	dec hl			;6717
	ld l,e			;6718
	ld a,(bc)		;6719
l671ah:
	call pe,00809h		;671a
	dec b			;671d
	ld a,(bc)		;671e
	nop			;671f
	add hl,hl		;6720
	ld hl,00708h		;6721
	add hl,bc		;6724
	ld b,008h		;6725
	call pe,00927h		;6727
	ex af,af'		;672a
l672bh:
	ex af,af'		;672b
	ld c,c			;672c
	rlca			;672d
	jr z,l66bah		;672e
	rlca			;6730
	ld l,b			;6731
	call pe,00909h		;6732
	ex af,af'		;6735
	ex af,af'		;6736
	add hl,hl		;6737
	rlca			;6738
	ld b,008h		;6739
	ld l,b			;673b
	rlca			;673c
	call pe,00908h		;673d
	jp z,00807h		;6740
l6743h:
	add hl,bc		;6743
	adc a,d			;6744
	call pe,00809h		;6745
	add hl,bc		;6748
	dec b			;6749
	ex af,af'		;674a
	inc bc			;674b
	dec b			;674c
	ld b,b			;674d
	rlca			;674e
	dec b			;674f
	call pe,00306h		;6750
	inc bc			;6753
	ld b,027h		;6754
l6756h:
	jr z,l6760h		;6756
	add hl,hl		;6758
	rlca			;6759
	dec h			;675a
	ld hl,(004ech)		;675b
	ex de,hl		;675e
	rlca			;675f
l6760h:
	ex af,af'		;6760
	add hl,bc		;6761
	ld l,d			;6762
	call pe,04b28h		;6763
	ld b,008h		;6766
	ld a,(bc)		;6768
	rlca			;6769
	ex af,af'		;676a
	ld b,004h		;676b
	nop			;676d
	jr nz,$+3		;676e
	call pe,00504h		;6770
	rlca			;6773
	inc b			;6774
	add hl,bc		;6775
	ld b,00ah		;6776
	dec h			;6778
	ex de,hl		;6779
	daa			;677a
	ld h,0ech		;677b
	rlca			;677d
	jr z,l672bh		;677e
	rlca			;6780
	inc b			;6781
	ld (bc),a		;6782
	dec b			;6783
	call pe,02806h		;6784
	ld a,(bc)		;6787
	add hl,bc		;6788
	rlca			;6789
	ex af,af'		;678a
	inc b			;678b
	rlca			;678c
	ld bc,00506h		;678d
	ld hl,0ec03h		;6790
	nop			;6793
	dec b			;6794
	ld b,008h		;6795
	daa			;6797
	ld l,d			;6798
	ld c,b			;6799
	ex de,hl		;679a
	ld h,0ech		;679b
	nop			;679d
	ld (bc),a		;679e
	ld bc,00305h		;679f
	nop			;67a2
	ld l,e			;67a3
	ld h,0ech		;67a4
	daa			;67a6
	ld a,(bc)		;67a7
	ld h,009h		;67a8
	rlca			;67aa
	inc bc			;67ab
	dec h			;67ac
	ld b,005h		;67ad
	call pe,02704h		;67af
	dec b			;67b2
	ld b,028h		;67b3
	rlca			;67b5
	ex af,af'		;67b6
	add hl,bc		;67b7
	rlca			;67b8
	ld l,d			;67b9
	ld c,c			;67ba
	call pe,00948h		;67bb
	jr z,l67c6h		;67be
	add hl,bc		;67c0
	dec b			;67c1
	ld a,(bc)		;67c2
	ld b,06bh		;67c3
	ex af,af'		;67c5
l67c6h:
	call pe,02809h		;67c6
	ld a,(bc)		;67c9
	rlca			;67ca
	add hl,bc		;67cb
	dec b			;67cc
	rlca			;67cd
	inc bc			;67ce
	inc b			;67cf
	nop			;67d0
	rlca			;67d1
	inc bc			;67d2
	add hl,bc		;67d3
	call pe,00a06h		;67d4
	dec b			;67d7
	rlc (hl)		;67d8
	daa			;67da
	inc bc			;67db
	nop			;67dc
	dec b			;67dd
	call pe,00a07h		;67de
	ex af,af'		;67e1
	add hl,hl		;67e2
	rlca			;67e3
	ex af,af'		;67e4
	ex af,af'		;67e5
	add hl,bc		;67e6
	ld b,048h		;67e7
	daa			;67e9
	ex af,af'		;67ea
	call pe,sub_4949h	;67eb
	ex af,af'		;67ee
	ex af,af'		;67ef
	add hl,hl		;67f0
	dec h			;67f1
	ld hl,(l4706h)		;67f2
	call pe,008ebh		;67f5
	ld b,007h		;67f8
	ld (bc),a		;67fa
	ld bc,0ec02h		;67fb
	xor e			;67fe
	ld b,005h		;67ff
l6801h:
	rlca			;6801
	ld b,007h		;6802
	ld b,00ah		;6804
	daa			;6806
	add hl,bc		;6807
	call pe,00828h		;6808
	add hl,hl		;680b
	ld c,c			;680c
	rlca			;680d
	ld (bc),a		;680e
	ex af,af'		;680f
	ld bc,00227h		;6810
	jr nz,l6801h		;6813
	ex af,af'		;6815
	add hl,hl		;6816
	ld b,008h		;6817
	jr z,l6824h		;6819
	jp pe,00809h		;681b
	rlca			;681e
	call pe,02948h		;681f
sub_6822h:
	ld l,c			;6822
	ex af,af'		;6823
l6824h:
	ld b,a			;6824
	call pe,00608h		;6825
	rlca			;6828
	dec b			;6829
	ex af,af'		;682a
	inc b			;682b
	add hl,bc		;682c
	ld b,b			;682d
	ex af,af'		;682e
	dec b			;682f
	nop			;6830
	inc bc			;6831
	dec b			;6832
	call pe,02805h		;6833
	rlca			;6836
	jr z,$+11		;6837
	ld hl,(0eb69h)		;6839
	call pe,00728h		;683c
	jr z,l684ah		;683f
	ld hl,(00608h)		;6841
	ld l,c			;6844
	call pe,00627h		;6845
	nop			;6848
	ex af,af'		;6849
l684ah:
	ld (bc),a		;684a
	daa			;684b
	ld h,026h		;684c
	inc b			;684e
	call pe,06705h		;684f
	ex af,af'		;6852
	add hl,bc		;6853
	ld a,(bc)		;6854
	sra b			;6855
	add hl,hl		;6857
	call pe,00a48h		;6858
	add hl,bc		;685b
	add hl,bc		;685c
	jp pe,00708h		;685d
	ld b,0ech		;6860
	rlca			;6862
	inc b			;6863
l6864h:
	ld bc,00605h		;6864
	jp pe,02004h		;6867
	call pe,00605h		;686a
	inc h			;686d
	ld b,0eah		;686e
	ex af,af'		;6870
	rlca			;6871
	ld b,0ech		;6872
	inc b			;6874
	inc bc			;6875
	rlca			;6876
	jr z,$-116		;6877
	rlca			;6879
	inc bc			;687a
	inc b			;687b
	call pe,00706h		;687c
	add hl,hl		;687f
	ex af,af'		;6880
	ld b,04ah		;6881
	rlca			;6883
	ld b,001h		;6884
	add hl,bc		;6886
	ld b,008h		;6887
	call pe,00704h		;6889
	nop			;688c
	ld b,001h		;688d
	rlca			;688f
	rlca			;6890
	ld h,008h		;6891
	add hl,hl		;6893
	ex af,af'		;6894
	add hl,bc		;6895
	ex af,af'		;6896
	ex af,af'		;6897
	defb 0edh ;next byte illegal after ed	;6898
	dec h			;6899
	add hl,hl		;689a
	nop			;689b
	ld l,d			;689c
	inc b			;689d
	inc bc			;689e
	dec b			;689f
	ld b,009h		;68a0
	inc b			;68a2
	jr z,$-17		;68a3
	inc hl			;68a5
	rlca			;68a6
	ld bc,00303h		;68a7
	ld bc,00505h		;68aa
	ld b,002h		;68ad
	inc bc			;68af
	nop			;68b0
	ld bc,0ed01h		;68b1
	inc b			;68b4
	inc b			;68b5
	inc bc			;68b6
	ld (bc),a		;68b7
	jr nz,l68bdh		;68b8
	ld b,001h		;68ba
	ex af,af'		;68bc
l68bdh:
	inc b			;68bd
	add hl,hl		;68be
	ld b,007h		;68bf
	ex af,af'		;68c1
	defb 0edh ;next byte illegal after ed	;68c2
	ex af,af'		;68c3
	rlca			;68c4
	xor c			;68c5
	ld h,003h		;68c6
	nop			;68c8
	ld bc,00805h		;68c9
	ld b,0edh		;68cc
	rlca			;68ce
	dec b			;68cf
	dec b			;68d0
	inc b			;68d1
	ld b,(hl)		;68d2
	dec b			;68d3
	nop			;68d4
	ld bc,00703h		;68d5
	ex af,af'		;68d8
	jr z,l6864h		;68d9
	ld c,l			;68db
	add hl,bc		;68dc
	jr z,$-82		;68dd
	rlca			;68df
	rlca			;68e0
	ld b,003h		;68e1
	nop			;68e3
	nop			;68e4
	ld (bc),a		;68e5
	ld b,004h		;68e6
	daa			;68e8
	ld bc,027edh		;68e9
	ex af,af'		;68ec
	add hl,bc		;68ed
	ex af,af'		;68ee
	ex af,af'		;68ef
	rlca			;68f0
	rlca			;68f1
	ld b,006h		;68f2
	ld bc,l6060h		;68f4
	defb 0edh ;next byte illegal after ed	;68f7
	dec b			;68f8
	ld b,026h		;68f9
	dec b			;68fb
	ld b,007h		;68fc
	ex af,af'		;68fe
	ld l,b			;68ff
	rlca			;6900
	dec b			;6901
	defb 0edh ;next byte illegal after ed	;6902
	ld b,007h		;6903
	rlca			;6905
	ld b,045h		;6906
sub_6908h:
	ld bc,02503h		;6908
	inc bc			;690b
	ld bc,0ed06h		;690c
	nop			;690f
	ld c,b			;6910
	inc b			;6911
	ld b,005h		;6912
	ld b,001h		;6914
	jr nz,l6918h		;6916
l6918h:
	ld hl,02001h		;6918
	defb 0edh ;next byte illegal after ed	;691b
	dec b			;691c
	rlca			;691d
	dec h			;691e
	ld l,c			;691f
	ld (bc),a		;6920
	inc b			;6921
	ld b,008h		;6922
	inc bc			;6924
	ld h,006h		;6925
	defb 0edh ;next byte illegal after ed	;6927
	rlca			;6928
	inc bc			;6929
	ld b,005h		;692a
	rlca			;692c
	ld b,006h		;692d
	inc b			;692f
	dec b			;6930
	rlca			;6931
	ld (bc),a		;6932
	inc b			;6933
	dec b			;6934
	inc hl			;6935
	ld b,06dh		;6936
	inc bc			;6938
	rlca			;6939
	ld bc,00206h		;693a
	rlca			;693d
	rlca			;693e
	call pe,00828h		;693f
	dec b			;6942
	rlca			;6943
	ld b,006h		;6944
	dec b			;6946
	ld bc,00508h		;6947
	add hl,hl		;694a
	rlca			;694b
	ld l,c			;694c
	ld l,d			;694d
	call pe,0c908h		;694e
	rlca			;6951
	ld b,020h		;6952
	call pe,02526h		;6954
	ld a,(bc)		;6957
	adc a,e			;6958
	ld b,024h		;6959
	dec b			;695b
	call pe,00a26h		;695c
	ld c,c			;695f
	ld (bc),a		;6960
l6961h:
	inc b			;6961
	ld b,02ah		;6962
	rlca			;6964
	ex af,af'		;6965
	ld l,e			;6966
	add hl,bc		;6967
	call pe,00608h		;6968
	dec b			;696b
	ld a,(bc)		;696c
	ld (bc),a		;696d
	add hl,hl		;696e
	inc h			;696f
	ex af,af'		;6970
	rlca			;6971
	add hl,hl		;6972
	jr z,l6961h		;6973
	adc a,d			;6975
	ld c,c			;6976
	jr z,l69a2h		;6977
	ld b,a			;6979
	ex af,af'		;697a
	call pe,00609h		;697b
	ex af,af'		;697e
	daa			;697f
	add hl,bc		;6980
	ex af,af'		;6981
	add hl,hl		;6982
	rlca			;6983
	ld h,00ah		;6984
	add hl,hl		;6986
	ex af,af'		;6987
	call pe,06809h		;6988
	ex af,af'		;698b
	ld c,c			;698c
	add hl,bc		;698d
l698eh:
	ex af,af'		;698e
	jp pe,00605h		;698f
	call pe,00407h		;6992
	rlca			;6995
	ld h,007h		;6996
	jp z,00709h		;6998
	call pe,00648h		;699b
	daa			;699e
	adc a,e			;699f
	jr z,l698eh		;69a0
l69a2h:
	add hl,bc		;69a2
	ex af,af'		;69a3
	ld hl,(00607h)		;69a4
	ex af,af'		;69a7
	inc b			;69a8
	ld b,a			;69a9
	ld b,004h		;69aa
	rlca			;69ac
	call pe,00828h		;69ad
	ld c,c			;69b0
	ld c,c			;69b1
	jr z,l69dch		;69b2
	ld b,007h		;69b4
	ld c,b			;69b6
	call pe,02806h		;69b7
	add hl,hl		;69ba
	add hl,bc		;69bb
	ld c,d			;69bc
	ld c,b			;69bd
	add hl,hl		;69be
	add hl,hl		;69bf
	call pe,02a27h		;69c0
	ex af,af'		;69c3
	add hl,bc		;69c4
	add hl,bc		;69c5
	jr z,l69d0h		;69c6
	rlca			;69c8
l69c9h:
	add hl,bc		;69c9
	ex af,af'		;69ca
	ex af,af'		;69cb
	call pe,00907h		;69cc
	adc a,b			;69cf
l69d0h:
	ld c,d			;69d0
	add hl,bc		;69d1
	rlca			;69d2
	ld b,a			;69d3
	inc bc			;69d4
	ld b,0ech		;69d5
	jr z,$+10		;69d7
	add hl,bc		;69d9
	add hl,hl		;69da
	ld a,(bc)		;69db
l69dch:
	ld l,e			;69dc
	ex af,af'		;69dd
	dec b			;69de
	inc b			;69df
	jr nz,$-18		;69e0
	ld a,(bc)		;69e2
	add hl,hl		;69e3
	ld b,007h		;69e4
	ex af,af'		;69e6
	ld l,c			;69e7
	add hl,hl		;69e8
	ld c,d			;69e9
	ld c,b			;69ea
	call pe,00629h		;69eb
	ex af,af'		;69ee
	rlca			;69ef
	daa			;69f0
	dec h			;69f1
	ld h,007h		;69f2
	inc hl			;69f4
	defb 0edh ;next byte illegal after ed	;69f5
	ld (bc),a		;69f6
	dec b			;69f7
	rlca			;69f8
	ld b,e			;69f9
	jr z,l6a02h		;69fa
	dec b			;69fc
	inc bc			;69fd
	inc bc			;69fe
	ld (bc),a		;69ff
	ld (bc),a		;6a00
	nop			;6a01
l6a02h:
	defb 0edh ;next byte illegal after ed	;6a02
	dec b			;6a03
	inc bc			;6a04
	ld b,006h		;6a05
	rlca			;6a07
l6a08h:
	rlca			;6a08
	ex af,af'		;6a09
	ret z			;6a0a
sub_6a0bh:
	ld b,005h		;6a0b
	nop			;6a0d
	dec b			;6a0e
	defb 0edh ;next byte illegal after ed	;6a0f
	inc b			;6a10
	rlca			;6a11
	ld h,007h		;6a12
	dec b			;6a14
	ld (bc),a		;6a15
	nop			;6a16
	ld bc,00324h		;6a17
	ld (bc),a		;6a1a
	dec b			;6a1b
	defb 0edh ;next byte illegal after ed	;6a1c
	ld b,007h		;6a1d
	rlca			;6a1f
	ld b,005h		;6a20
	dec h			;6a22
	inc b			;6a23
	inc bc			;6a24
	add a,b			;6a25
	ld h,b			;6a26
	defb 0edh ;next byte illegal after ed	;6a27
	dec b			;6a28
	inc b			;6a29
	ld b,003h		;6a2a
l6a2ch:
	rlca			;6a2c
	ld b,006h		;6a2d
	add a,a			;6a2f
	rlca			;6a30
	dec h			;6a31
	defb 0edh ;next byte illegal after ed	;6a32
	nop			;6a33
	inc bc			;6a34
	ld b,000h		;6a35
	rlca			;6a37
	ld (bc),a		;6a38
	ld h,006h		;6a39
	ld b,a			;6a3b
	rlca			;6a3c
	jr z,l6a2ch		;6a3d
	jr z,$+7		;6a3f
	ld b,004h		;6a41
	rlca			;6a43
	nop			;6a44
	ld b,005h		;6a45
	inc bc			;6a47
	rlca			;6a48
	ld bc,00028h		;6a49
	ld bc,005edh		;6a4c
	dec b			;6a4f
	ld bc,00400h		;6a50
	ld bc,00602h		;6a53
	ld b,004h		;6a56
	ex af,af'		;6a58
	ld (00406h),hl		;6a59
	nop			;6a5c
	defb 0edh ;next byte illegal after ed	;6a5d
	jr nz,l6a85h		;6a5e
	inc b			;6a60
	ex af,af'		;6a61
	ld b,027h		;6a62
	daa			;6a64
	ld (bc),a		;6a65
	ld h,004h		;6a66
	ld bc,000edh		;6a68
	ld h,a			;6a6b
	inc b			;6a6c
	dec b			;6a6d
	rlca			;6a6e
	ex af,af'		;6a6f
	ld b,027h		;6a70
	inc b			;6a72
	rlca			;6a73
	ld b,003h		;6a74
	defb 0edh ;next byte illegal after ed	;6a76
	inc bc			;6a77
	rlca			;6a78
	inc b			;6a79
	ld b,003h		;6a7a
	add a,a			;6a7c
	dec h			;6a7d
	ld b,005h		;6a7e
	rlca			;6a80
	ld b,0edh		;6a81
	dec b			;6a83
	rlca			;6a84
l6a85h:
	rlca			;6a85
	ld (bc),a		;6a86
	ld b,026h		;6a87
l6a89h:
	dec b			;6a89
	inc b			;6a8a
	dec b			;6a8b
	ld b,a			;6a8c
	inc bc			;6a8d
	ld b,027h		;6a8e
	defb 0edh ;next byte illegal after ed	;6a90
	inc bc			;6a91
	inc b			;6a92
	ld b,b			;6a93
	ld (bc),a		;6a94
	nop			;6a95
	ld bc,00605h		;6a96
	ld b,(hl)		;6a99
	jr z,l6a89h		;6a9a
	ld b,027h		;6a9c
	ld bc,08800h		;6a9e
	dec b			;6aa1
	rlca			;6aa2
	ld b,002h		;6aa3
	inc bc			;6aa5
	ld b,0edh		;6aa6
	inc b			;6aa8
	daa			;6aa9
	ld (bc),a		;6aaa
	rlca			;6aab
	ex af,af'		;6aac
	ld h,049h		;6aad
	ld (bc),a		;6aaf
	dec b			;6ab0
	ld h,000h		;6ab1
	defb 0edh ;next byte illegal after ed	;6ab3
	ld bc,00000h		;6ab4
	ld (00004h),hl		;6ab7
	rlca			;6aba
	inc b			;6abb
	ex af,af'		;6abc
	ld h,007h		;6abd
	ex af,af'		;6abf
	rlca			;6ac0
	rlca			;6ac1
	defb 0edh ;next byte illegal after ed	;6ac2
	nop			;6ac3
	ld b,004h		;6ac4
	ld (bc),a		;6ac6
	ld bc,02200h		;6ac7
	dec b			;6aca
	ld b,005h		;6acb
	ld c,b			;6acd
	ld h,0edh		;6ace
	dec b			;6ad0
	daa			;6ad1
	inc b			;6ad2
	nop			;6ad3
	ld b,004h		;6ad4
	rlca			;6ad6
	dec h			;6ad7
	ex af,af'		;6ad8
	rlca			;6ad9
	inc bc			;6ada
	inc bc			;6adb
	dec b			;6adc
	ld bc,020edh		;6add
	rlca			;6ae0
	ex af,af'		;6ae1
	inc b			;6ae2
	rlca			;6ae3
	ld bc,02004h		;6ae4
	ld (bc),a		;6ae7
	inc b			;6ae8
	dec b			;6ae9
	ld h,006h		;6aea
	defb 0edh ;next byte illegal after ed	;6aec
	inc b			;6aed
	inc b			;6aee
	inc hl			;6aef
	ld bc,00700h		;6af0
	inc bc			;6af3
	jr z,l6afah		;6af4
	dec b			;6af6
	ld b,006h		;6af7
	dec b			;6af9
l6afah:
	dec b			;6afa
	defb 0edh ;next byte illegal after ed	;6afb
	ld h,(hl)		;6afc
	inc b			;6afd
	ld b,067h		;6afe
	rlca			;6b00
	inc bc			;6b01
	inc b			;6b02
	ld (bc),a		;6b03
	inc bc			;6b04
	ld b,0edh		;6b05
	nop			;6b07
l6b08h:
	ld (bc),a		;6b08
	ld bc,00205h		;6b09
	daa			;6b0c
	inc b			;6b0d
	nop			;6b0e
	ex af,af'		;6b0f
	ld b,02ah		;6b10
	add hl,de		;6b12
	nop			;6b13
	nop			;6b14
	nop			;6b15
	ld hl,0f3e9h		;6b16
	ld (hl),00fh		;6b19
	inc hl			;6b1b
	ld (hl),000h		;6b1c
	ret nz			;6b1e
	ld (bc),a		;6b1f
	call 005cfh		;6b20
	ld a,(0e704h)		;6b23
	rst 38h			;6b26
	and 0dfh		;6b27
	ld (0af04h),a		;6b29
	inc bc			;6b2c
	di			;6b2d
	out (099h),a		;6b2e
	ld a,097h		;6b30
	ei			;6b32
	inc b			;6b33
	nop			;6b34
	rrca			;6b35
	ld (05524h),a		;6b36
	call 00414h		;6b39
	ld d,l			;6b3c
	ld a,01fh		;6b3d
	ld (00413h),a		;6b3f
	ld bc,03200h		;6b42
	ld c,e			;6b45
	ld c,e			;6b46
	ld a,005h		;6b47
	call 0050fh		;6b49
	jr nc,l6b8ch		;6b4c
	inc b			;6b4e
	inc b			;6b4f
	call 092a5h		;6b50
	ld (bc),a		;6b53
	dec h			;6b54
	inc e			;6b55
	ld l,e			;6b56
	ld (bc),a		;6b57
	ld b,b			;6b58
	rst 28h			;6b59
	ld c,0c7h		;6b5a
	ld d,a			;6b5c
	ld a,(l5616h)		;6b5d
	nop			;6b60
	or a			;6b61
	jp nz,l406ah		;6b62
	xor a			;6b65
	ld hl,0c156h		;6b66
	nop			;6b69
	cp (hl)			;6b6a
l6b6bh:
	jp z,l4055h		;6b6b
	ld (hl),a		;6b6e
	ld a,(04767h)		;6b6f
	jr l6bb1h		;6b72
	jp z,00358h		;6b74
	ld (hl),b		;6b77
	ld b,b			;6b78
	ld b,b			;6b79
	inc bc			;6b7a
	ld c,l			;6b7b
	ld c,e			;6b7c
	ret			;6b7d
	call 000c3h		;6b7e
	dec b			;6b81
	jp l57e0h		;6b82
	call l4091h		;6b85
	call sub_7b00h		;6b88
	ld b,b			;6b8b
l6b8ch:
	jp l404ah		;6b8c
	nop			;6b8f
	rst 38h			;6b90
	ld a,(l7900h)		;6b91
l6b94h:
	ld b,b			;6b94
	or a			;6b95
	ret z			;6b96
	call sub_5883h		;6b97
	ld a,(l7a48h)		;6b9a
	jr nz,$+52		;6b9d
	inc bc			;6b9f
	ret nz			;6ba0
	ld a,021h		;6ba1
	inc bc			;6ba3
	ld (0c932h),a		;6ba4
	ld a,(03237h)		;6ba7
	add a,h			;6baa
	sub l			;6bab
	ld b,l			;6bac
	inc bc			;6bad
	sbc a,l			;6bae
	ld b,b			;6baf
	ld b,b			;6bb0
l6bb1h:
	ld (l4531h),a		;6bb1
	call sub_42f0h		;6bb4
	ld (000cdh),hl		;6bb7
	ld (bc),a		;6bba
	xor d			;6bbb
	ld b,b			;6bbc
	jr l6bc7h		;6bbd
	cp 041h			;6bbf
	inc a			;6bc1
	and 081h		;6bc2
	and c			;6bc4
	dec b			;6bc5
	ret nz			;6bc6
l6bc7h:
	ld a,(009ffh)		;6bc7
	djnz l6b94h		;6bca
	ld (0fe04h),a		;6bcc
	ld h,h			;6bcf
	jp z,00642h		;6bd0
	inc b			;6bd3
	adc a,h			;6bd4
	jp z,00412h		;6bd5
	djnz l6b6bh		;6bd8
	jp z,0042ah		;6bda
	sub (hl)		;6bdd
	jp z,0840ch		;6bde
	inc b			;6be1
	sbc a,e			;6be2
	jp z,00431h		;6be3
	and b			;6be6
	ld hl,01ecah		;6be7
	inc b			;6bea
	and h			;6beb
	jp z,00438h		;6bec
	inc (hl)		;6bef
	xor d			;6bf0
	inc de			;6bf1
	xor h			;6bf2
	jp z,03f42h		;6bf3
	inc b			;6bf6
	or e			;6bf7
	jp z,00446h		;6bf8
	ld b,l			;6bfb
	cp c			;6bfc
	adc a,c			;6bfd
	inc b			;6bfe
	ld b,h			;6bff
	sbc a,(hl)		;6c00
	ld d,(hl)		;6c01
	add a,h			;6c02
	inc b			;6c03
	jp nz,l5fcah		;6c04
	inc b			;6c07
	cp d			;6c08
	and b			;6c09
	ld (hl),h		;6c0a
	ld d,c			;6c0b
	sbc hl,bc		;6c0c
	ret			;6c0e
	ld hl,0e001h		;6c0f
	ld b,c			;6c12
	jp 00103h		;6c13
	ld hl,005efh		;6c16
	ret nz			;6c19
	or e			;6c1a
	ld b,c			;6c1b
	call 005c7h		;6c1c
	and h			;6c1f
	dec bc			;6c20
	ld c,0d1h		;6c21
	dec bc			;6c23
	ld a,(de)		;6c24
	jp nz,03e0bh		;6c25
	nop			;6c28
	cp d			;6c29
sub_6c2ah:
	ld b,028h		;6c2a
	jp l4179h		;6c2c
	ld a,0bfh		;6c2f
	inc (hl)		;6c31
	ld b,025h		;6c32
	ld b,0c4h		;6c34
	ld b,06ch		;6c36
	ld (08106h),hl		;6c38
	ld c,l			;6c3b
	dec e			;6c3c
	ld b,01ah		;6c3d
	pop de			;6c3f
	ld b,017h		;6c40
	ld b,0cbh		;6c42
	ld (bc),a		;6c44
	ld b,02eh		;6c45
	ld c,002h		;6c47
	jp 00868h		;6c49
	ld b,0d0h		;6c4c
	ld b,02bh		;6c4e
	ld c,004h		;6c50
	ex af,af'		;6c52
	and e			;6c53
	sub 034h		;6c54
	ld c,006h		;6c56
	ex af,af'		;6c58
	nop			;6c59
	ld (l4199h),a		;6c5a
	ld a,b			;6c5d
	ld (0019bh),a		;6c5e
l6c61h:
	ld b,c			;6c61
	ld a,c			;6c62
	ld (l419fh),a		;6c63
	ld hl,04e95h		;6c66
	and (hl)		;6c69
	ld (0108ah),a		;6c6a
	ld h,08ch		;6c6d
	inc c			;6c6f
	add a,(hl)		;6c70
	inc c			;6c71
	or b			;6c72
	nop			;6c73
	nop			;6c74
	jp z,09a00h		;6c75
	add a,d			;6c78
	ex af,af'		;6c79
	rlca			;6c7a
	ld (bc),a		;6c7b
	nop			;6c7c
	ld (hl),a		;6c7d
	ld bc,00e80h		;6c7e
	or b			;6c81
	ld e,d			;6c82
	nop			;6c83
	or b			;6c84
	nop			;6c85
	ld (bc),a		;6c86
	cp d			;6c87
	nop			;6c88
	ld l,000h		;6c89
	ld a,(de)		;6c8b
	nop			;6c8c
	jr nz,$-62		;6c8d
	jr l6c61h		;6c8f
	ld d,d			;6c91
	nop			;6c92
	or (hl)			;6c93
	nop			;6c94
	ld (bc),a		;6c95
	or d			;6c96
	nop			;6c97
	inc (hl)		;6c98
	nop			;6c99
	ld b,000h		;6c9a
	inc d			;6c9c
	exx			;6c9d
	ld c,01dh		;6c9e
	xor (hl)		;6ca0
	dec e			;6ca1
	adc a,a			;6ca2
	jr nc,l6cc2h		;6ca3
	ld d,0b4h		;6ca5
	dec e			;6ca7
	dec sp			;6ca8
	ld (hl),01dh		;6ca9
	add a,b			;6cab
	ex af,af'		;6cac
	adc a,(hl)		;6cad
	ld (bc),a		;6cae
	sub (hl)		;6caf
	nop			;6cb0
	ld c,000h		;6cb1
	ld h,(hl)		;6cb3
	ld b,(hl)		;6cb4
	ld bc,0310eh		;6cb5
	ld d,b			;6cb8
	inc l			;6cb9
	or b			;6cba
	ld c,d			;6cbb
	adc a,h			;6cbc
	inc h			;6cbd
	ld bc,00ec4h		;6cbe
	nop			;6cc1
l6cc2h:
	ld h,00ah		;6cc2
	nop			;6cc4
	ld hl,l4289h		;6cc5
	push hl			;6cc8
	push bc			;6cc9
l6ccah:
	ld a,(hl)		;6cca
	or a			;6ccb
	call nz,01500h		;6ccc
	ld b,d			;6ccf
	pop bc			;6cd0
	pop hl			;6cd1
	ld de,0000ah		;6cd2
	add hl,de		;6cd5
	ld a,(bc)		;6cd6
	djnz l6ccah		;6cd7
	ret			;6cd9
	inc hl			;6cda
	ld c,0c0h		;6cdb
	ld b,c			;6cdd
	ld b,d			;6cde
	dec a			;6cdf
	ld (hl),a		;6ce0
	ex af,af'		;6ce1
	add a,b			;6ce2
	inc hl			;6ce3
	add a,(hl)		;6ce4
	ld (hl),a		;6ce5
	ld (00080h),a		;6ce6
	ld b,d			;6ce9
	cp 03eh			;6cea
	jp nc,l4230h		;6cec
	inc hl			;6cef
	inc hl			;6cf0
	inc e			;6cf1
	jp l4272h		;6cf2
	ld de,l7e84h		;6cf5
	ld b,d			;6cf8
	ld a,(0147eh)		;6cf9
	ld (hl),06ch		;6cfc
	jp c,0ba0fh		;6cfe
	jp c,l7c04h		;6d01
	sub 004h		;6d04
	add a,d			;6d06
	inc b			;6d07
	or h			;6d08
	add a,h			;6d09
	dec de			;6d0a
	ld b,a			;6d0b
	ld a,(00b80h)		;6d0c
	add a,b			;6d0f
	cp 0c4h			;6d10
	jp c,l426bh		;6d12
	dec (hl)		;6d15
	sub 0c2h		;6d16
	dec bc			;6d18
	sub b			;6d19
	dec de			;6d1a
	adc a,d			;6d1b
	ld hl,0cc28h		;6d1c
	ld d,b			;6d1f
	ret			;6d20
	ld de,00504h		;6d21
	nop			;6d24
	xor a			;6d25
	sbc hl,de		;6d26
	ld e,e			;6d28
	ld h,d			;6d29
	adc a,b			;6d2a
	xor a			;6d2b
	ld (bc),a		;6d2c
	ld (hl),d		;6d2d
	inc c			;6d2e
	nop			;6d2f
	ld l,b			;6d30
	nop			;6d31
	ld d,001h		;6d32
	adc a,h			;6d34
	adc a,d			;6d35
	ld b,b			;6d36
	ld bc,0847ah		;6d37
	call m,062beh		;6d3a
	ld (hl),001h		;6d3d
	inc c			;6d3f
	djnz $+3		;6d40
	jr z,$+1		;6d42
	ld h,d			;6d44
	add iy,bc		;6d45
	nop			;6d47
	ld b,h			;6d48
	ld c,012h		;6d49
	ld bc,0ff46h		;6d4b
	ld (hl),b		;6d4e
	ret nz			;6d4f
	inc de			;6d50
	jr nz,l6d69h		;6d51
	ld d,001h		;6d53
	ex af,af'		;6d55
	ld e,d			;6d56
	ld bc,0fb72h		;6d57
	add hl,bc		;6d5a
	ld d,h			;6d5b
	inc d			;6d5c
	ld (bc),a		;6d5d
	ld c,001h		;6d5e
	ld h,h			;6d60
	rst 38h			;6d61
	halt			;6d62
	cp 009h			;6d63
	dec b			;6d65
	ld h,d			;6d66
	inc c			;6d67
	ld a,(bc)		;6d68
l6d69h:
	ld bc,00b78h		;6d69
	daa			;6d6c
	add a,b			;6d6d
	ld l,d			;6d6e
	djnz l6d77h		;6d6f
	ld bc,03096h		;6d71
	rst 38h			;6d74
	ld a,b			;6d75
	add hl,bc		;6d76
l6d77h:
	ld l,(hl)		;6d77
	inc c			;6d78
	add a,(hl)		;6d79
	ld sp,000aah		;6d7a
	ld l,(hl)		;6d7d
	add hl,bc		;6d7e
	djnz l6d93h		;6d7f
	ld (de),a		;6d81
	daa			;6d82
	cp (hl)			;6d83
	rst 38h			;6d84
	sub b			;6d85
	ld (hl),d		;6d86
	cp 04fh			;6d87
	jp m,00030h		;6d89
	ld e,d			;6d8c
	add hl,bc		;6d8d
	ld h,h			;6d8e
	ex af,af'		;6d8f
	ld c,d			;6d90
	ld b,0d0h		;6d91
l6d93h:
	ld h,03ah		;6d93
	defb 0edh ;next byte illegal after ed	;6d95
	adc a,b			;6d96
	in a,(08dh)		;6d97
	ld b,h			;6d99
	ld (0ee3ah),hl		;6d9a
	sbc a,011h		;6d9d
	jp z,l430fh		;6d9f
	inc bc			;6da2
	ld c,b			;6da3
	ld b,e			;6da4
	rlca			;6da5
	jp po,00a66h		;6da6
	ld b,e			;6da9
	ret			;6daa
	ld a,r			;6dab
	jp po,0c600h		;6dad
	adc a,b			;6db0
	ld (l4464h),a		;6db1
	ld hl,l5127h		;6db4
	ld b,h			;6db7
	ld sp,hl		;6db8
	ld e,d			;6db9
	ld h,b			;6dba
	dec b			;6dbb
	ld a,(02622h)		;6dbc
	ld b,l			;6dbf
	cp (hl)			;6dc0
	sub d			;6dc1
	ld (00528h),a		;6dc2
	add a,h			;6dc5
	rla			;6dc6
	ld (hl),b		;6dc7
	ld a,(hl)		;6dc8
	ld de,l54efh		;6dc9
	ld b,d			;6dcc
	adc a,e			;6dcd
	rlca			;6dce
	ld c,h			;6dcf
	ld (0c005h),a		;6dd0
	ld c,b			;6dd3
	ld hl,(0323ch)		;6dd4
	inc bc			;6dd7
	pop bc			;6dd8
	inc e			;6dd9
	ld l,a			;6dda
	cpl			;6ddb
	ld a,b			;6ddc
	dec e			;6ddd
	cp h			;6dde
	inc bc			;6ddf
	dec e			;6de0
	pop de			;6de1
	ld a,(0323eh)		;6de2
	ld b,(hl)		;6de5
	ld b,c			;6de6
	inc h			;6de7
	add a,h			;6de8
	dec b			;6de9
	ld c,b			;6dea
	ld b,c			;6deb
	ld b,d			;6dec
	ret po			;6ded
	inc hl			;6dee
	scf			;6def
	ld b,h			;6df0
	nop			;6df1
	sub 004h		;6df2
	cp 034h			;6df4
	jp c,l4385h		;6df6
	ld (009aeh),a		;6df9
	ld e,d			;6dfc
	inc c			;6dfd
	nop			;6dfe
	jp nc,l43e4h		;6dff
	add a,002h		;6e02
	cp 065h			;6e04
	ld e,006h		;6e06
	sbc a,d			;6e08
	xor l			;6e09
	sbc a,d			;6e0a
	ld l,h			;6e0b
	ld b,03eh		;6e0c
	nop			;6e0e
	ld e,032h		;6e0f
	xor b			;6e11
l6e12h:
	ld e,b			;6e12
	ld (l58a9h),a		;6e13
	ld hl,0b402h		;6e16
	ld b,e			;6e19
	ld de,l58dah		;6e1a
	ld bc,061e6h		;6e1d
	ldir			;6e20
	ret			;6e22
	xor (hl)		;6e23
	jr z,l6e2ah		;6e24
	add hl,de		;6e26
	ld bc,00501h		;6e27
l6e2ah:
	ld (bc),a		;6e2a
	ld b,a			;6e2b
	ld b,b			;6e2c
l6e2dh:
	ld (bc),a		;6e2d
	ld (bc),a		;6e2e
	ld b,004h		;6e2f
	ld (bc),a		;6e31
	rlca			;6e32
	adc a,h			;6e33
	inc bc			;6e34
	rlca			;6e35
	rlca			;6e36
	ld (bc),a		;6e37
	ld hl,(00306h)		;6e38
	nop			;6e3b
	inc e			;6e3c
	rlca			;6e3d
	sub h			;6e3e
	nop			;6e3f
	dec b			;6e40
	nop			;6e41
	inc de			;6e42
	inc b			;6e43
	call z,02c0fh		;6e44
	inc hl			;6e47
	ld (l6128h),a		;6e48
	inc l			;6e4b
	ld b,h			;6e4c
	ld e,d			;6e4d
	inc b			;6e4e
	ld d,b			;6e4f
	jp nc,l6ef4h		;6e50
	inc l			;6e53
	sub h			;6e54
	inc c			;6e55
	inc h			;6e56
	ld l,(hl)		;6e57
	inc c			;6e58
	ld b,(hl)		;6e59
	ld (001dah),hl		;6e5a
	adc a,(hl)		;6e5d
	and e			;6e5e
	add hl,bc		;6e5f
	adc a,b			;6e60
	jr nz,$+123		;6e61
	ld hl,l4433h		;6e63
	call nc,0bd8ch		;6e66
	and e			;6e69
	dec c			;6e6a
	sbc a,c			;6e6b
	ld d,c			;6e6c
	add a,d			;6e6d
	adc a,h			;6e6e
	jp nz,0f2d8h		;6e6f
	ld (039ceh),a		;6e72
	ld (bc),a		;6e75
	ret			;6e76
	ld l,h			;6e77
	nop			;6e78
	add a,d			;6e79
	ld (bc),a		;6e7a
	sbc a,d			;6e7b
	rst 10h			;6e7c
	ld b,e			;6e7d
	nop			;6e7e
	inc c			;6e7f
	ld bc,0d229h		;6e80
	adc a,c			;6e83
	ld c,086h		;6e84
	ld c,094h		;6e86
	rst 18h			;6e88
	ld (hl),c		;6e89
	ld c,0ach		;6e8a
	ld e,e			;6e8c
l6e8dh:
	ld c,0aah		;6e8d
	jr nz,l6e12h		;6e8f
	ret			;6e91
	ret po			;6e92
	dec e			;6e93
	ret nz			;6e94
	ld c,0a9h		;6e95
	djnz l6e8dh		;6e97
	jr nc,l6ea9h		;6e99
	ld b,h			;6e9b
	nop			;6e9c
	add hl,bc		;6e9d
	halt			;6e9e
	ld (bc),a		;6e9f
	adc a,b			;6ea0
	nop			;6ea1
	rst 20h			;6ea2
	sub l			;6ea3
	ex af,af'		;6ea4
	sub b			;6ea5
	sbc a,h			;6ea6
	dec sp			;6ea7
	ld b,e			;6ea8
l6ea9h:
	ld c,087h		;6ea9
	nop			;6eab
	ld l,a			;6eac
	dec de			;6ead
	ld a,(l533bh)		;6eae
	cp b			;6eb1
	add a,e			;6eb2
	inc e			;6eb3
	dec sp			;6eb4
	ld (bc),a		;6eb5
	nop			;6eb6
	sbc a,b			;6eb7
	ld hl,04522h		;6eb8
	add a,b			;6ebb
	inc (hl)		;6ebc
	add a,044h		;6ebd
	ld b,l			;6ebf
	xor 0fah		;6ec0
	inc b			;6ec2
	ld b,0c8h		;6ec3
	ld a,(l451eh)		;6ec5
	pop de			;6ec8
	inc b			;6ec9
	rst 0			;6eca
	ld b,h			;6ecb
	add a,a			;6ecc
	and h			;6ecd
	ex af,af'		;6ece
	ld a,(01d28h)		;6ecf
	ld b,l			;6ed2
	and (hl)		;6ed3
	inc h			;6ed4
	ld e,a			;6ed5
	add a,0d5h		;6ed6
	add a,d			;6ed8
	rlca			;6ed9
	ld hl,l44edh		;6eda
	add hl,de		;6edd
	and 082h		;6ede
	ld hl,0eb45h		;6ee0
	sub c			;6ee3
	rra			;6ee4
	inc b			;6ee5
	and d			;6ee6
	jr nz,$+71		;6ee7
	ret			;6ee9
	sub 069h		;6eea
	ld c,03dh		;6eec
	ld (de),a		;6eee
	add a,c			;6eef
	jp nz,044d6h		;6ef0
	xor a			;6ef3
l6ef4h:
	inc l			;6ef4
	sub d			;6ef5
	rst 28h			;6ef6
	ld c,c			;6ef7
	jr l6f41h		;6ef8
	xor a			;6efa
	call nz,0f980h		;6efb
	ld d,l			;6efe
	jr c,l6f1fh		;6eff
	ld a,(bc)		;6f01
	ld sp,00a26h		;6f02
	ld h,016h		;6f05
	jr nc,l6f13h		;6f07
	call p,00c50h		;6f09
	add a,d			;6f0c
	add hl,bc		;6f0d
	add a,d			;6f0e
	ld l,c			;6f0f
	inc bc			;6f10
	rst 38h			;6f11
	rst 38h			;6f12
l6f13h:
	dec b			;6f13
	dec bc			;6f14
	dec bc			;6f15
	ld a,(bc)		;6f16
	rst 38h			;6f17
	nop			;6f18
	dec b			;6f19
	dec bc			;6f1a
	inc d			;6f1b
	ld sp,01805h		;6f1c
l6f1fh:
	rla			;6f1f
	ld b,b			;6f20
	dec b			;6f21
	ld bc,0ff19h		;6f22
l6f25h:
	ld bc,0f2ffh		;6f25
	dec bc			;6f28
	ld (hl),e		;6f29
	nop			;6f2a
	nop			;6f2b
	and e			;6f2c
	ld e,061h		;6f2d
	ret nc			;6f2f
	ld hl,l4572h		;6f30
	or e			;6f33
	ld h,d			;6f34
	ld a,0d3h		;6f35
	ld b,d			;6f37
	sub d			;6f38
	ld b,l			;6f39
	ld a,c			;6f3a
	ld l,b			;6f3b
	adc a,h			;6f3c
	ld a,(hl)		;6f3d
	adc a,d			;6f3e
	ld b,l			;6f3f
	exx			;6f40
l6f41h:
	cp b			;6f41
	call nz,0fe45h		;6f42
	ld de,0da3ch		;6f45
	ld d,d			;6f48
	inc b			;6f49
	cp (hl)			;6f4a
	call c,010beh		;6f4b
	exx			;6f4e
	ld a,0bbh		;6f4f
	out (01ch),a		;6f51
	add a,006h		;6f53
	add hl,de		;6f55
	dec e			;6f56
	ld (hl),a		;6f57
	ld a,(de)		;6f58
	ld a,(01a6dh)		;6f59
	nop			;6f5c
	inc hl			;6f5d
	djnz l6f25h		;6f5e
	ret			;6f60
	ld d,h			;6f61
	nop			;6f62
	ld e,c			;6f63
	ld c,e			;6f64
	nop			;6f65
	ld h,b			;6f66
	xor a			;6f67
	ld h,a			;6f68
	ld (0e16eh),a		;6f69
	ld (hl),a		;6f6c
	add hl,de		;6f6d
	nop			;6f6e
	ld a,a			;6f6f
	ld h,h			;6f70
	add a,(hl)		;6f71
	ld e,08dh		;6f72
	pop hl			;6f74
	sbc a,b			;6f75
	sub (hl)		;6f76
	ret c			;6f77
	ld h,l			;6f78
	ld d,e			;6f79
	ld h,h			;6f7a
	nop			;6f7b
	xor l			;6f7c
	and c			;6f7d
	ld c,b			;6f7e
	cp e			;6f7f
	or h			;6f80
	ld hl,03806h		;6f81
	ld b,a			;6f84
	call 002e9h		;6f85
	ld h,h			;6f88
	ld l,b			;6f89
	ei			;6f8a
	ld hl,01700h		;6f8b
	ld d,(hl)		;6f8e
	ld (0c19ah),hl		;6f8f
	ld de,02010h		;6f92
	nop			;6f95
	ld hl,l7400h		;6f96
	call 00533h		;6f99
	ld hl,0e547h		;6f9c
	ld c,008h		;6f9f
	ld c,0d3h		;6fa1
	ld d,a			;6fa3
	ld c,099h		;6fa4
	ex af,af'		;6fa6
	add a,b			;6fa7
	ld c,0c7h		;6fa8
	inc l			;6faa
	ld d,e			;6fab
	ex af,af'		;6fac
	ret nc			;6fad
	ld c,087h		;6fae
	ld h,a			;6fb0
	ld c,066h		;6fb1
	jr nz,l702ah		;6fb3
	ld c,0bbh		;6fb5
	ld (hl),a		;6fb7
	ld c,06ah		;6fb8
	ld (hl),b		;6fba
	ld c,006h		;6fbb
	ld d,d			;6fbd
	ld b,087h		;6fbe
	ld d,(hl)		;6fc0
	ld (hl),0e6h		;6fc1
	inc hl			;6fc3
	call m,097ech		;6fc4
	ld b,b			;6fc7
	or 006h			;6fc8
	ex af,af'		;6fca
	ld a,046h		;6fcb
	jr nc,l6fddh		;6fcd
	sbc a,e			;6fcf
	ld (de),a		;6fd0
	call 018a9h		;6fd1
	ld b,(hl)		;6fd4
	ld b,005h		;6fd5
	dec bc			;6fd7
	ccf			;6fd8
l6fd9h:
	ld a,(0a721h)		;6fd9
	dec bc			;6fdc
l6fddh:
	inc b			;6fdd
	ld c,e			;6fde
	ld c,036h		;6fdf
	ld hl,00bbbh		;6fe1
	or h			;6fe4
	call po,0380bh		;6fe5
	ld hl,0cf78h		;6fe8
	dec bc			;6feb
	dec c			;6fec
	add hl,sp		;6fed
	ld hl,00be3h		;6fee
	nop			;6ff1
	ld a,06ch		;6ff2
	ld (l56f7h),a		;6ff4
	ld a,016h		;6ff7
	ld (0f852h),a		;6ff9
	inc b			;6ffc
	add hl,bc		;6ffd
	ei			;6ffe
	inc b			;6fff
	ld bc,03226h		;7000
	call m,02156h		;7003
	cp a			;7006
	ld b,(hl)		;7007
	srl c			;7008
	and (hl)		;700a
	and b			;700b
	ld (l46c3h),a		;700c
	call po,0210ah		;700f
	adc a,0e0h		;7012
	djnz l6fd9h		;7014
	ld (0d24eh),a		;7016
	djnz $-48		;7019
	djnz $+30		;701b
	defb 0ddh,005h,038h ;illegal sequence	;701d
	call pe,07005h		;7020
l7023h:
	ei			;7023
	dec b			;7024
	ld a,(bc)		;7025
	ld l,e			;7026
	ld b,a			;7027
	dec b			;7028
	add hl,de		;7029
l702ah:
	dec b			;702a
	add a,(hl)		;702b
	jr z,l7033h		;702c
	add a,c			;702e
	halt			;702f
	call sub_580ch		;7030
l7033h:
	ld a,002h		;7033
	and d			;7035
	ld h,a			;7036
	sub a			;7037
	ld bc,02371h		;7038
	ld (hl),a		;703b
	inc hl			;703c
	nop			;703d
	ld de,010c6h		;703e
	xor c			;7041
	daa			;7042
	ret			;7043
	ex af,af'		;7044
	ld (hl),c		;7045
	ld a,(bc)		;7046
	ld (hl),d		;7047
	cp b			;7048
	cp c			;7049
	ret c			;704a
	dec (hl)		;704b
	ld d,b			;704c
	and a			;704d
	dec b			;704e
	ld c,h			;704f
	nop			;7050
	call z,032fch		;7051
	ld c,b			;7054
	add a,00eh		;7055
	ld bc,0350eh		;7057
	sbc a,c			;705a
	rst 0			;705b
	sbc a,b			;705c
	dec e			;705d
	ld c,(hl)		;705e
	nop			;705f
	ld c,e			;7060
	add a,b			;7061
	sub 03ch		;7062
	ld c,0b8h		;7064
	ld c,a			;7066
	ld c,072h		;7067
	sbc a,c			;7069
	ld c,0f0h		;706a
	jp z,0a903h		;706c
	sub l			;706f
	call nc,0dbb8h		;7070
	add a,008h		;7073
	ld e,03ah		;7075
	ld c,02ch		;7077
	adc a,b			;7079
	ex af,af'		;707a
	ld d,(hl)		;707b
	ld a,(bc)		;707c
	cp b			;707d
	di			;707e
	ld c,000h		;707f
	inc de			;7081
	ld h,h			;7082
	ld bc,00468h		;7083
	ld c,069h		;7086
	sbc a,d			;7088
	inc b			;7089
	ld b,c			;708a
	ld bc,00151h		;708b
	inc bc			;708e
	nop			;708f
	ld d,d			;7090
	inc bc			;7091
l7092h:
	ld h,d			;7092
	inc b			;7093
	ld (hl),h		;7094
	ld b,074h		;7095
	rlca			;7097
	ld b,076h		;7098
	rlca			;709a
	inc sp			;709b
	inc bc			;709c
	rlca			;709d
	xor h			;709e
	ret nz			;709f
	rlca			;70a0
	ld d,l			;70a1
	dec b			;70a2
	ld h,h			;70a3
	inc b			;70a4
	ld e,d			;70a5
	ld h,e			;70a6
	call p,0cd00h		;70a7
	dec e			;70aa
	ld e,b			;70ab
	call sub_4882h		;70ac
	call sub_6822h		;70af
	ld b,a			;70b2
	ret nz			;70b3
	halt			;70b4
	ld c,c			;70b5
	im 0			;70b6
	ld d,l			;70b8
	add a,b			;70b9
	ld c,b			;70ba
	ret po			;70bb
	ld (bc),a		;70bc
	ld (hl),e		;70bd
	ld b,a			;70be
	ld (0a906h),a		;70bf
	sbc a,h			;70c2
	inc d			;70c3
	ld a,(bc)		;70c4
l70c5h:
	ld de,098c2h		;70c5
	jr l70c5h		;70c8
	ld d,a			;70ca
	jp m,0e3a4h		;70cb
	ld l,h			;70ce
	rst 18h			;70cf
	ld h,a			;70d0
	rst 30h			;70d1
	ld h,(hl)		;70d2
	ld e,(hl)		;70d3
	add a,l			;70d4
l70d5h:
	jr l70d7h		;70d5
l70d7h:
	ld h,b			;70d7
	nop			;70d8
	adc a,e			;70d9
	dec c			;70da
	ld l,060h		;70db
	ld e,b			;70dd
	ld (0fc24h),a		;70de
	ld d,h			;70e1
	ccf			;70e2
	add a,l			;70e3
	dec bc			;70e4
	ld hl,l4815h		;70e5
	sub e			;70e8
	ld d,b			;70e9
	add hl,de		;70ea
	ld c,b			;70eb
	sub 008h		;70ec
	ld b,c			;70ee
	ld (03a04h),a		;70ef
	dec de			;70f2
	ld c,b			;70f3
	add a,02eh		;70f4
	ld d,a			;70f6
	inc b			;70f7
	xor d			;70f8
	ld (hl),b		;70f9
	dec d			;70fa
	jr z,l7092h		;70fb
	dec d			;70fd
	rlca			;70fe
	ex (sp),hl		;70ff
	ld c,d			;7100
	dec d			;7101
	ld hl,(01507h)		;7102
	xor (hl)		;7105
	inc b			;7106
	add a,0e1h		;7107
	dec d			;7109
	scf			;710a
	dec c			;710b
	ld d,c			;710c
	call m,01504h		;710d
	ld a,(02b39h)		;7110
	cp d			;7113
	sub (hl)		;7114
	inc b			;7115
	ret p			;7116
	inc e			;7117
	dec d			;7118
	ld h,046h		;7119
	dec d			;711b
	inc b			;711c
	add a,h			;711d
	ld d,d			;711e
	dec d			;711f
l7120h:
	ld c,b			;7120
	dec d			;7121
	and d			;7122
	rlca			;7123
	inc b			;7124
	ld a,(09013h)		;7125
	jr nc,l712eh		;7128
	ld c,b			;712a
	jp m,090d6h		;712b
l712eh:
	inc l			;712e
	ex de,hl		;712f
	cp b			;7130
	jr nz,l719dh		;7131
	ld d,l			;7133
	jr nz,l718bh		;7134
	ld c,036h		;7136
	ex af,af'		;7138
	jr l70d5h		;7139
	sub c			;713b
	ret nc			;713c
	ret z			;713d
	defb 0fdh,045h ;ld b,iyl	;713e
	and l			;7140
	or 062h			;7141
	sbc a,d			;7143
	ld b,002h		;7144
	jp 0b431h		;7146
	ld c,008h		;7149
	ld c,0c9h		;714b
	ld (de),a		;714d
	ld (bc),a		;714e
	inc c			;714f
	ld d,h			;7150
	xor h			;7151
	inc d			;7152
	call pe,01e1dh		;7153
	ld (bc),a		;7156
	ld b,(hl)		;7157
	call c,023b6h		;7158
	ld d,0beh		;715b
	jr c,l716dh		;715d
	ld h,l			;715f
	ld (hl),00eh		;7160
	dec e			;7162
	dec de			;7163
	cpl			;7164
	ld c,0e1h		;7165
	sub b			;7167
	jr nc,l716bh		;7168
	ld b,c			;716a
l716bh:
	ld (bc),a		;716b
	sub a			;716c
l716dh:
	and a			;716d
	adc a,(hl)		;716e
	call c,0b8dah		;716f
	cp d			;7172
	dec bc			;7173
	ld c,c			;7174
	ld l,l			;7175
	dec a			;7176
	sub c			;7177
	adc a,b			;7178
	dec d			;7179
	ld b,099h		;717a
	jr nz,l7188h		;717c
	ld c,c			;717e
	inc a			;717f
	ld a,0feh		;7180
	dec sp			;7182
	jp c,00682h		;7183
	cp 03ah			;7186
l7188h:
	jp nz,0b8b2h		;7188
l718bh:
	inc h			;718b
	and e			;718c
	sub a			;718d
	ld l,h			;718e
	sbc a,c			;718f
	or b			;7190
	ld hl,(0000eh)		;7191
	ld e,h			;7194
	nop			;7195
	ld (059a8h),hl		;7196
	sbc a,c			;7199
	nop			;719a
	cp 028h			;719b
l719dh:
	jp c,l48d3h		;719d
	jp nz,0cc44h		;71a0
	ret nz			;71a3
	rst 38h			;71a4
	adc a,b			;71a5
	ret z			;71a6
	jr nc,$+52		;71a7
	sub c			;71a9
	inc b			;71aa
	ld a,0b4h		;71ab
	dec b			;71ad
	ex af,af'		;71ae
	ld c,c			;71af
	ld a,022h		;71b0
	rst 30h			;71b2
	ld a,(de)		;71b3
	ld de,0c83dh		;71b4
	djnz $-37		;71b7
	add a,(hl)		;71b9
	ld d,l			;71ba
	cp 03fh			;71bb
	or h			;71bd
	inc bc			;71be
	jp z,l48deh		;71bf
	adc a,e			;71c2
	ld (bc),a		;71c3
	ld (bc),a		;71c4
	ld c,c			;71c5
	exx			;71c6
	adc a,b			;71c7
	call c,016e2h		;71c8
	adc a,h			;71cb
	call c,01bc1h		;71cc
	inc bc			;71cf
	ld c,c			;71d0
	add a,0dch		;71d1
	sub d			;71d3
	ld h,062h		;71d4
	ld d,e			;71d6
	inc bc			;71d7
	ld l,l			;71d8
	jp z,0ba23h		;71d9
	push hl			;71dc
	daa			;71dd
	ld d,a			;71de
	ld b,080h		;71df
	ld (hl),d		;71e1
	nop			;71e2
	ld c,b			;71e3
	ret z			;71e4
	or b			;71e5
	ld c,c			;71e6
	xor l			;71e7
	ccf			;71e8
	inc bc			;71e9
	ret m			;71ea
	jr nc,$-25		;71eb
	add a,h			;71ed
	dec b			;71ee
	ld a,(l4b4bh)		;71ef
	sub (hl)		;71f2
	ld c,b			;71f3
	ld a,(0c69ah)		;71f4
	sub a			;71f7
	inc bc			;71f8
	ld sp,003c0h		;71f9
	ret pe			;71fc
	inc bc			;71fd
	adc a,h			;71fe
	xor 003h		;71ff
	ld hl,l4a00h		;7201
	inc bc			;7204
	ld (de),a		;7205
	ld c,d			;7206
	ret			;7207
	ld d,d			;7208
	ld (0ac66h),hl		;7209
	ld a,(bc)		;720c
	and 03fh		;720d
	ld (02f66h),a		;720f
	rst 20h			;7212
	pop bc			;7213
	ld c,c			;7214
	ld de,09baah		;7215
	cp h			;7218
	ret nz			;7219
	ld (hl),c		;721a
	ld b,l			;721b
	pop bc			;721c
	ld a,00ah		;721d
	ld (0980dh),a		;721f
	jp 00e3eh		;7222
	or a			;7225
	and 0dch		;7226
	ld (hl),d		;7228
	ld c,b			;7229
	adc a,(hl)		;722a
	jp nz,0071ch		;722b
	nop			;722e
	ld l,(hl)		;722f
	or d			;7230
	ld h,(hl)		;7231
	dec b			;7232
	or d			;7233
	call m,000e9h		;7234
	sub h			;7237
	ld (hl),b		;7238
	cp b			;7239
	ld sp,hl		;723a
	dec a			;723b
	and 05eh		;723c
	rrca			;723e
	rst 38h			;723f
l7240h:
	inc b			;7240
	cp 00fh			;7241
	jp z,08db5h		;7243
	adc a,a			;7246
	ld (bc),a		;7247
	adc a,(hl)		;7248
	adc a,b			;7249
	ld c,d			;724a
	cp 0d1h			;724b
	sub b			;724d
	inc h			;724e
	inc b			;724f
	nop			;7250
	jp z,0942ah		;7251
	ld a,e			;7254
	ld a,076h		;7255
	ex (sp),hl		;7257
	ld d,c			;7258
	and l			;7259
	sbc a,c			;725a
	ld e,c			;725b
	jr z,l7240h		;725c
	ld c,021h		;725e
	jp z,01e30h		;7260
	dec c			;7263
	jp z,0043ch		;7264
	add hl,bc		;7267
	inc c			;7268
	jp z,00442h		;7269
	dec bc			;726c
	jp nc,004d4h		;726d
	ld a,(bc)		;7270
	ld hl,l4ecah		;7271
	inc b			;7274
	add hl,bc		;7275
	jp z,03254h		;7276
	adc a,l			;7279
	dec b			;727a
	dec l			;727b
	pop bc			;727c
	or l			;727d
	ld c,e			;727e
	jp c,00f6ah		;727f
l7282h:
	out (005h),a		;7282
	ld a,006h		;7284
	ld de,01e87h		;7286
	ld de,02d0eh		;7289
	ld de,0cb28h		;728c
	rst 10h			;728f
	ld de,00b3ch		;7290
	ld c,008h		;7293
	dec bc			;7295
	ld b,06ah		;7296
	ld c,d			;7298
	jp 0381dh		;7299
	ld a,c			;729c
	dec b			;729d
	ld (hl),b		;729e
	adc a,b			;729f
	dec b			;72a0
	sub a			;72a1
	ld l,e			;72a2
	ld c,d			;72a3
	cpl			;72a4
	and (hl)		;72a5
	dec bc			;72a6
	add a,a			;72a7
	or l			;72a8
	dec b			;72a9
	ld c,0c4h		;72aa
	dec b			;72ac
	inc e			;72ad
	out (005h),a		;72ae
	inc (hl)		;72b0
	jp po,03e05h		;72b1
	rra			;72b4
	adc a,l			;72b5
	sbc a,(hl)		;72b6
	adc a,0bdh		;72b7
	dec de			;72b9
	pop af			;72ba
	dec l			;72bb
	and c			;72bc
	add hl,sp		;72bd
	ld c,e			;72be
	adc a,d			;72bf
	inc (hl)		;72c0
	call nc,0e641h		;72c1
	nop			;72c4
	jr z,$-55		;72c5
	xor b			;72c7
	inc e			;72c8
	defb 0ddh,0ebh,0d9h ;illegal sequence	;72c9
	ld c,0fdh		;72cc
	dec e			;72ce
	and b			;72cf
	ld c,0b1h		;72d0
	nop			;72d2
	ld c,0dah		;72d3
	ret			;72d5
	ld b,d			;72d6
	nop			;72d7
	ld d,076h		;72d8
	ld l,01dh		;72da
	or 09eh			;72dc
	inc l			;72de
	ld bc,02b1dh		;72df
	nop			;72e2
	add a,d			;72e3
	push de			;72e4
	jr nc,l7282h		;72e5
	di			;72e7
	dec e			;72e8
	xor e			;72e9
	jp po,0cf8ch		;72ea
	dec sp			;72ed
	daa			;72ee
	sub 0e3h		;72ef
	adc a,001h		;72f1
	dec sp			;72f3
	sub d			;72f4
	ld (hl),015h		;72f5
	ld (bc),a		;72f7
	call 0f26bh		;72f8
	dec b			;72fb
	inc l			;72fc
	nop			;72fd
	ld e,b			;72fe
	add a,c			;72ff
	ld (hl),d		;7300
	ld l,05ch		;7301
	ld (bc),a		;7303
	rst 10h			;7304
	inc l			;7305
	ld c,(hl)		;7306
	ld bc,08616h		;7307
	add a,c			;730a
	and 01dh		;730b
l730dh:
	ld d,a			;730d
	call nz,0101dh		;730e
	dec e			;7311
	ld (hl),a		;7312
	nop			;7313
	ld c,08bh		;7314
	ret nz			;7316
	ld c,d			;7317
	sbc a,e			;7318
	ld a,(bc)		;7319
	ld c,d			;731a
	sub a			;731b
	ret nc			;731c
	ld c,0afh		;731d
	ld (hl),a		;731f
	ld (hl),c		;7320
	or e			;7321
	rst 10h			;7322
	dec sp			;7323
	ld e,00eh		;7324
	jr nc,$+61		;7326
	ld bc,l53cdh		;7328
	ld e,(hl)		;732b
	ld c,e			;732c
	ex de,hl		;732d
	inc d			;732e
	ld a,(0b94ch)		;732f
	adc a,h			;7332
	ld e,a			;7333
	inc bc			;7334
	inc h			;7335
	ld l,a			;7336
	ld c,h			;7337
	ret nz			;7338
	dec h			;7339
	ld a,055h		;733a
	add a,b			;733c
	dec (hl)		;733d
	jp pe,01186h		;733e
	cp b			;7341
	ld a,(de)		;7342
l7343h:
	defb 0edh ;next byte illegal after ed	;7343
	inc c			;7344
	add hl,de		;7345
	djnz l7343h		;7346
	ret c			;7348
	sub h			;7349
	ld c,h			;734a
	xor l			;734b
	ret p			;734c
	xor c			;734d
	inc c			;734e
	xor l			;734f
	and b			;7350
	nop			;7351
	ld hl,l513dh		;7352
	rlca			;7355
	call sub_4c67h		;7356
	ld hl,0054fh		;7359
	ld c,06ch		;735c
	dec b			;735e
	inc e			;735f
	adc a,l			;7360
	dec b			;7361
	jr c,l730dh		;7362
	dec b			;7364
	ld (hl),b		;7365
	rst 0			;7366
	dec b			;7367
	push hl			;7368
	pop hl			;7369
	dec b			;736a
	rst 38h			;736b
	dec b			;736c
	pop bc			;736d
	inc c			;736e
	ld d,d			;736f
	dec b			;7370
	xor (hl)		;7371
	jr z,l7379h		;7372
	inc e			;7374
	ld b,h			;7375
	dec b			;7376
	jr c,$+98		;7377
l7379h:
	dec b			;7379
	ld (hl),b		;737a
	ld a,l			;737b
	dec b			;737c
	sub (hl)		;737d
	pop hl			;737e
	dec b			;737f
	xor e			;7380
	dec b			;7381
	pop bc			;7382
	ld e,b			;7383
	ld c,h			;7384
	cp c			;7385
	dec sp			;7386
	sub b			;7387
	inc e			;7388
	ld d,(hl)		;7389
	sub l			;738a
	ld b,l			;738b
	and h			;738c
	xor 030h		;738d
	di			;738f
	out (099h),a		;7390
	add hl,de		;7392
	ld a,097h		;7393
	ei			;7395
	inc b			;7396
	or b			;7397
	dec sp			;7398
	inc c			;7399
	xor l			;739a
	add a,d			;739b
	inc c			;739c
	dec de			;739d
	dec b			;739e
	call 0db0fh		;739f
	ld (hl),032h		;73a2
	and (hl)		;73a4
	rra			;73a5
	jp 006fbh		;73a6
	xor l			;73a9
l73aah:
	inc de			;73aa
	djnz l73aah		;73ab
	cp l			;73ad
	ld h,d			;73ae
	rrca			;73af
	ret			;73b0
	adc a,c			;73b1
	ld d,h			;73b2
	ld (bc),a		;73b3
	inc bc			;73b4
	dec c			;73b5
	dec b			;73b6
	ld (bc),a		;73b7
	dec b			;73b8
	ld bc,00682h		;73b9
	ld b,006h		;73bc
	rlca			;73be
	dec bc			;73bf
	ld c,c			;73c0
	nop			;73c1
	inc b			;73c2
	nop			;73c3
	dec b			;73c4
	dec bc			;73c5
	ld d,a			;73c6
	ret nz			;73c7
	and h			;73c8
	inc b			;73c9
	inc bc			;73ca
	xor e			;73cb
	call nc,03b0eh		;73cc
	nop			;73cf
	adc a,c			;73d0
	ld a,(bc)		;73d1
	ld bc,0aa5ah		;73d2
	ld d,b			;73d5
	push af			;73d6
	call 0c430h		;73d7
	ld a,c			;73da
	pop af			;73db
	sub d			;73dc
	xor (hl)		;73dd
	ld d,b			;73de
	pop de			;73df
	ld d,h			;73e0
	or a			;73e1
	ld d,d			;73e2
	ret nz			;73e3
	adc a,a			;73e4
	ld b,e			;73e5
	ld b,0cdh		;73e6
	cp b			;73e8
	ld c,h			;73e9
	and e			;73ea
	ld d,h			;73eb
	rlca			;73ec
	ld c,a			;73ed
	nop			;73ee
	call sub_4e79h		;73ef
	call sub_4deeh		;73f2
	call 0928eh		;73f5
	xor h			;73f8
	or 0b0h			;73f9
	adc a,h			;73fb
	ld c,h			;73fc
	nop			;73fd
	or a			;73fe
	ret z			;73ff
l7400h:
	call sub_5883h		;7400
	ld a,(l4c8dh)		;7403
	ld hl,0323ch		;7406
	inc bc			;7409
	jp z,l4cabh		;740a
	cp h			;740d
	pop hl			;740e
	ret nz			;740f
	di			;7410
	adc a,e			;7411
	ld d,h			;7412
	add a,c			;7413
	ld h,c			;7414
	ei			;7415
	ret			;7416
	rlca			;7417
	dec (hl)		;7418
	dec b			;7419
	rlca			;741a
	ld a,0d3h		;741b
	sub b			;741d
	ld d,056h		;741e
	ret			;7420
	jp nc,0c029h		;7421
	ld a,(l48beh)		;7424
	ld l,0edh		;7427
	ld e,a			;7429
	xor b			;742a
	rst 38h			;742b
	ld hl,091e0h		;742c
	dec hl			;742f
	rst 8			;7430
	pop hl			;7431
	rlca			;7432
	ret c			;7433
	ld c,h			;7434
	ld bc,0c69ah		;7435
	ld d,e			;7438
	add a,(hl)		;7439
	nop			;743a
	sbc a,002h		;743b
	ret			;743d
	inc hl			;743e
	ld (bc),a		;743f
	ld d,l			;7440
	ld (bc),a		;7441
	ex af,af'		;7442
	ld (de),a		;7443
	ld bc,00667h		;7444
	inc bc			;7447
	ld b,h			;7448
	ld bc,0038bh		;7449
	ld d,(hl)		;744c
	dec b			;744d
	out (054h),a		;744e
	jp (hl)			;7450
	ld (02dc2h),a		;7451
	ld hl,03a4dh		;7454
	rlca			;7457
	inc c			;7458
	ld a,(de)		;7459
	ld c,l			;745a
	ld a,(06be8h)		;745b
	ld sp,0ea3ah		;745e
	ld l,b			;7461
	jp pe,03065h		;7462
	jr c,l747fh		;7465
	ld a,098h		;7467
	inc de			;7469
	ld (l540dh),a		;746a
	sub d			;746d
	ld e,c			;746e
	ld d,061h		;746f
	ld (0ba4ch),hl		;7471
	ld c,062h		;7474
	ld d,h			;7476
	defb 0fdh,08ah,03ah ;illegal sequence	;7477
	ld e,h			;747a
	ld c,l			;747b
	ld hl,0c003h		;747c
l747fh:
	and d			;747f
	ld e,a			;7480
	ld hl,00580h		;7481
	add hl,de		;7484
	ld b,(hl)		;7485
	ld a,b			;7486
	cp 080h			;7487
	jp nz,l473ah		;7489
	ld c,l			;748c
	dec h			;748d
	adc a,e			;748e
	add a,e			;748f
	dec e			;7490
	add hl,de		;7491
	dec a			;7492
	dec e			;7493
	dec h			;7494
	inc b			;7495
	inc bc			;7496
	ld d,h			;7497
	add a,b			;7498
	ld (03a03h),a		;7499
	ld h,l			;749c
	ld (de),a		;749d
	ld b,003h		;749e
	sbc a,d			;74a0
	inc sp			;74a1
	ld d,e			;74a2
	cp b			;74a3
	jr c,l7509h		;74a4
	ld (bc),a		;74a6
	nop			;74a7
	ld bc,0af03h		;74a8
	nop			;74ab
	ld e,h			;74ac
	ld de,0016bh		;74ad
	ld bc,00301h		;74b0
	add a,(hl)		;74b3
	nop			;74b4
	ld (bc),a		;74b5
	and 001h		;74b6
	nop			;74b8
	scf			;74b9
	rst 38h			;74ba
	ld bc,l4e02h		;74bb
	rst 38h			;74be
	cp 003h			;74bf
	inc sp			;74c1
	ld bc,l7902h		;74c2
	inc b			;74c5
	ex (sp),hl		;74c6
	ex af,af'		;74c7
	nop			;74c8
	or 083h			;74c9
	add a,b			;74cb
	ld a,(l4e74h)		;74cc
	xor l			;74cf
	ld (bc),a		;74d0
	ld a,a			;74d1
	ld (09005h),a		;74d2
	cp d			;74d5
	ld (hl),l		;74d6
	ld c,(hl)		;74d7
	adc a,d			;74d8
	sub 003h		;74d9
	ld (hl),b		;74db
	sub 0dfh		;74dc
	dec sp			;74de
	ld a,(de)		;74df
	ld d,c			;74e0
	jp z,00776h		;74e1
	ld c,l			;74e4
	push de			;74e5
	rlca			;74e6
	dec a			;74e7
	pop af			;74e8
	call c,0b906h		;74e9
	adc a,e			;74ec
	ld b,072h		;74ed
	and a			;74ef
	ld b,0c5h		;74f0
	push hl			;74f2
	ld b,0e3h		;74f3
	ld hl,(003c0h)		;74f5
	ld hl,0e4fdh		;74f8
	ld c,00ah		;74fb
	ld d,d			;74fd
	pop hl			;74fe
	ld b,026h		;74ff
	ld b,0cbh		;7501
	ld b,d			;7503
	ld b,097h		;7504
	ld e,(hl)		;7506
	ld b,02eh		;7507
l7509h:
	ld a,e			;7509
	ld b,05bh		;750a
	sub h			;750c
	ld b,0f9h		;750d
	and l			;750f
	cp l			;7510
	ld e,h			;7511
	ld c,025h		;7512
	ret nz			;7514
	or e			;7515
	inc de			;7516
	ret pe			;7517
	rst 20h			;7518
	xor c			;7519
	ld (hl),0d7h		;751a
	ld b,d			;751c
	inc b			;751d
	ld c,a			;751e
	cp c			;751f
	ld c,d			;7520
	inc bc			;7521
	adc a,b			;7522
	inc h			;7523
	dec b			;7524
	rlca			;7525
	and 0a8h		;7526
	ld d,005h		;7528
	add hl,bc		;752a
	ld b,04fh		;752b
	adc a,d			;752d
	sub d			;752e
	inc bc			;752f
	or c			;7530
	or a			;7531
	and a			;7532
	add hl,hl		;7533
	ld h,l			;7534
	call p,08c03h		;7535
	jp l6103h		;7538
	pop de			;753b
	inc bc			;753c
	rst 18h			;753d
	ld c,(hl)		;753e
	adc a,h			;753f
	jr nc,l759bh		;7540
	ld d,h			;7542
	ld d,000h		;7543
	add a,b			;7545
	ld a,0ffh		;7546
	ld b,08ch		;7548
	ld c,00eh		;754a
	jp 0ed09h		;754c
	ld c,(hl)		;754f
	ld hl,00d98h		;7550
	ld a,h			;7553
	dec c			;7554
	add a,e			;7555
	ld h,h			;7556
	ld c,03eh		;7557
	dec c			;7559
	ld e,l			;755a
	ld l,(hl)		;755b
	dec de			;755c
	or l			;755d
	ld (de),a		;755e
	dec c			;755f
	xor l			;7560
	dec c			;7561
	jr nc,l75dch		;7562
	dec c			;7564
	ld b,(hl)		;7565
	ld c,06ah		;7566
	ld c,b			;7568
	dec c			;7569
	add a,e			;756a
	dec c			;756b
	ld (hl),b		;756c
	sbc a,b			;756d
	dec c			;756e
	jr z,$-57		;756f
	dec c			;7571
	ld (hl),d		;7572
	add a,e			;7573
	ret po			;7574
	add hl,de		;7575
	ld (hl),a		;7576
	inc hl			;7577
	ld hl,l7023h		;7578
	ld (bc),a		;757b
	ld (hl),c		;757c
	ld de,00a05h		;757d
	ld h,c			;7580
	adc a,e			;7581
	ex af,af'		;7582
	ld b,(hl)		;7583
	adc a,d			;7584
	ld d,d			;7585
	sbc a,e			;7586
	jp p,039b3h		;7587
	rra			;758a
	or e			;758b
	inc c			;758c
	inc de			;758d
	ld c,a			;758e
	or a			;758f
	ret nz			;7590
	ret			;7591
	ld d,h			;7592
	ld (0929fh),a		;7593
l7596h:
	ld (bc),a		;7596
	or h			;7597
	ld (bc),a		;7598
	ld h,b			;7599
	ld (bc),a		;759a
l759bh:
	ld c,c			;759b
	ld (hl),l		;759c
	ld (bc),a		;759d
	adc a,d			;759e
	ld (bc),a		;759f
	inc h			;75a0
	ld (bc),a		;75a1
	inc h			;75a2
	inc sp			;75a3
	ld (bc),a		;75a4
	ld b,d			;75a5
	ld (bc),a		;75a6
	ld d,c			;75a7
	add a,c			;75a8
	ld (bc),a		;75a9
	cp e			;75aa
	ld d,d			;75ab
	ld (l5123h),a		;75ac
	and a			;75af
	inc d			;75b0
	ex af,af'		;75b1
	dec d			;75b2
	ld b,(hl)		;75b3
	ld d,h			;75b4
	add a,a			;75b5
	inc c			;75b6
	call 05352h		;75b7
	ld (hl),c		;75ba
	rst 10h			;75bb
	dec b			;75bc
	ld e,c			;75bd
	dec b			;75be
	ld c,06eh		;75bf
	dec b			;75c1
	inc l			;75c2
	ld (hl),l		;75c3
	dec b			;75c4
	ld hl,(0b9cdh)		;75c5
	in a,(04ah)		;75c8
	adc a,e			;75ca
	dec b			;75cb
	di			;75cc
	rst 20h			;75cd
l75ceh:
	adc a,l			;75ce
	ld l,050h		;75cf
	add hl,hl		;75d1
	scf			;75d2
	ei			;75d3
	ld d,d			;75d4
	add hl,hl		;75d5
	dec b			;75d6
	inc sp			;75d7
	add hl,hl		;75d8
	dec b			;75d9
	inc e			;75da
	ld l,(hl)		;75db
l75dch:
	dec b			;75dc
	inc (hl)		;75dd
	add a,e			;75de
	dec b			;75df
	call 0abebh		;75e0
	cp e			;75e3
	jr nz,l7602h		;75e4
	jp 03820h		;75e6
	jp l7120h		;75e9
	jp 00520h		;75ec
	adc a,l			;75ef
	add a,e			;75f0
	dec b			;75f1
	adc a,h			;75f2
	sbc a,(hl)		;75f3
	cpl			;75f4
	xor 020h		;75f5
	and e			;75f7
	dec bc			;75f8
	halt			;75f9
	halt			;75fa
	and l			;75fb
	defb 0edh ;next byte illegal after ed	;75fc
	ret			;75fd
	or a			;75fe
	jr c,l75ceh		;75ff
	ld c,(hl)		;7601
l7602h:
	inc d			;7602
	ld d,a			;7603
	ld c,l			;7604
	dec b			;7605
	inc e			;7606
	ld l,d			;7607
	dec b			;7608
	jr c,l7596h		;7609
	dec b			;760b
	ld (hl),b		;760c
	and a			;760d
l760eh:
	dec b			;760e
	push bc			;760f
	pop hl			;7610
	dec b			;7611
	ex (sp),hl		;7612
	dec b			;7613
l7614h:
	jp 005fdh		;7614
	adc a,c			;7617
	xor l			;7618
	or l			;7619
	dec b			;761a
	ld h,005h		;761b
	jp 00542h		;761d
	add a,a			;7620
	ld e,(hl)		;7621
	dec b			;7622
	ld c,07bh		;7623
	dec b			;7625
	inc e			;7626
	sub h			;7627
	dec b			;7628
	inc (hl)		;7629
	xor c			;762a
	dec b			;762b
	ret			;762c
	ld a,(hl)		;762d
	or b			;762e
	sub a			;762f
	inc hl			;7630
	ld a,(hl)		;7631
	inc b			;7632
	ld (l52bah),a		;7633
	dec hl			;7636
	dec hl			;7637
	dec b			;7638
	cp b			;7639
	inc b			;763a
	ld d,d			;763b
	add a,a			;763c
	cpl			;763d
	ld (086bch),a		;763e
	ld c,d			;7641
	or h			;7642
	add hl,de		;7643
	adc a,h			;7644
	call nc,sub_5138h	;7645
	ex de,hl		;7648
	di			;7649
	rst 30h			;764a
	adc a,b			;764b
	dec b			;764c
	jp nz,l4694h		;764d
	ld d,b			;7650
	add a,b			;7651
	sub c			;7652
	dec hl			;7653
	ld d,c			;7654
	add a,b			;7655
	cp b			;7656
	dec b			;7657
	ld l,d			;7658
	pop hl			;7659
	dec b			;765a
	adc a,e			;765b
	dec b			;765c
	jp 005a7h		;765d
	add a,a			;7660
	push bc			;7661
	dec b			;7662
	ld c,0e3h		;7663
	dec b			;7665
	inc e			;7666
	defb 0fdh,005h,046h ;illegal sequence	;7667
	add a,b			;766a
	ld h,e			;766b
	dec b			;766c
	ld h,005h		;766d
	add a,a			;766f
	ld b,d			;7670
	dec b			;7671
	ld c,05eh		;7672
	dec b			;7674
	inc e			;7675
	ld a,e			;7676
	dec b			;7677
	jr c,l760eh		;7678
	dec b			;767a
	ld (hl),c		;767b
	xor c			;767c
	dec b			;767d
	ld e,c			;767e
	adc a,b			;767f
	rst 28h			;7680
	jp c,005e3h		;7681
	inc e			;7684
	ld l,d			;7685
	dec b			;7686
	jr c,l7614h		;7687
	dec b			;7689
	ld (hl),b		;768a
	and a			;768b
	dec b			;768c
	push bc			;768d
	pop hl			;768e
	dec b			;768f
	ex (sp),hl		;7690
	dec b			;7691
	jp 005fdh		;7692
	adc a,h			;7695
	ld e,c			;7696
	rst 0			;7697
	dec b			;7698
	ld h,005h		;7699
	ld c,042h		;769b
	dec b			;769d
	inc e			;769e
	ld e,(hl)		;769f
	dec b			;76a0
	jr c,l771eh		;76a1
	dec b			;76a3
	ld (hl),b		;76a4
	sub h			;76a5
	dec b			;76a6
	xor c			;76a7
	ret c			;76a8
	dec b			;76a9
	jp c,022e8h		;76aa
	ld d,c			;76ad
	adc a,l			;76ae
	jp c,01c23h		;76af
	ld d,c			;76b2
	jp c,02400h		;76b3
	ld d,c			;76b6
	srl a			;76b7
	ld b,a			;76b9
	ld a,00ah		;76ba
	add a,b			;76bc
	sub b			;76bd
	ld (01320h),a		;76be
	ld (de),a		;76c1
	ld d,h			;76c2
	ld e,07bh		;76c3
	dec d			;76c5
	ret pe			;76c6
	ld l,e			;76c7
	inc hl			;76c8
	xor a			;76c9
	ld (09797h),a		;76ca
	jp z,0c53ah		;76cd
	cp (hl)			;76d0
	ld (hl),c		;76d1
	sbc a,b			;76d2
	dec sp			;76d3
	xor b			;76d4
	ld h,b			;76d5
	ld (hl),a		;76d6
	ret nz			;76d7
	dec hl			;76d8
	and e			;76d9
	or a			;76da
	dec de			;76db
	nop			;76dc
	ld c,d			;76dd
	nop			;76de
	call c,sub_414dh	;76df
	ld c,(hl)		;76e2
	nop			;76e3
	ld b,d			;76e4
	ld c,a			;76e5
	ld d,a			;76e6
	ld e,e			;76e7
	ld e,(hl)		;76e8
	ld e,e			;76e9
	ld d,h			;76ea
	ld b,l			;76eb
	inc b			;76ec
	ld b,c			;76ed
	ld c,l			;76ee
	nop			;76ef
	ld b,028h		;76f0
	ld de,00041h		;76f2
	ld c,h			;76f5
	ld b,d			;76f6
	ld b,l			;76f7
	ld d,d			;76f8
	ld d,h			;76f9
	ld e,e			;76fa
	ld h,(hl)		;76fb
	ld b,d			;76fc
	inc b			;76fd
	ld c,c			;76fe
	ld b,(hl)		;76ff
	ld c,c			;7700
	ld h,(hl)		;7701
	ld e,e			;7702
	dec bc			;7703
	ld b,l			;7704
	nop			;7705
	ld d,(hl)		;7706
	ld b,l			;7707
	ld c,(hl)		;7708
	ld b,h			;7709
	ld c,a			;770a
	ld d,d			;770b
	ld d,b			;770c
	nop			;770d
	jr nz,l771ch		;770e
	jr l772eh		;7710
	ld d,b			;7712
	ld b,c			;7713
	ld d,h			;7714
	ld d,d			;7715
	djnz l7761h		;7716
	ld b,l			;7718
	ld c,e			;7719
	dec e			;771a
	ld b,a			;771b
l771ch:
	ld d,l			;771c
	ld e,c			;771d
l771eh:
	ld b,d			;771e
	ld d,(hl)		;771f
	ld h,064h		;7720
	ld e,h			;7722
	ld e,h			;7723
	ld (l4c10h),hl		;7724
	ld b,l			;7727
	ld d,e			;7728
	ld d,052h		;7729
	ld d,d			;772b
	ld b,l			;772c
	add hl,de		;772d
l772eh:
	nop			;772e
	ld (de),a		;772f
	ld hl,(0363dh)		;7730
	ld b,b			;7733
	inc e			;7734
	ld c,(hl)		;7735
	ld c,a			;7736
	ld e,d			;7737
	ld b,l			;7738
	ld c,l			;7739
	sub l			;773a
	jr l7793h		;773b
	ld e,e			;773d
	ld d,(hl)		;773e
	ld d,l			;773f
	djnz $+71		;7740
	ld c,h			;7742
	ld b,b			;7743
	nop			;7744
	jr $+36			;7745
	ret c			;7747
	ld l,e			;7748
	ld d,a			;7749
	ld c,c			;774a
	ld c,(hl)		;774b
	and b			;774c
	ld e,007h		;774d
	ld b,(hl)		;774f
	ld b,e			;7750
	ld b,c			;7751
	ld d,e			;7752
	ld b,b			;7753
	ld b,l			;7754
	jr nz,$+77		;7755
	ld d,d			;7757
	ld c,a			;7758
	ld c,a			;7759
	ld d,e			;775a
	ld e,048h		;775b
	ld c,a			;775d
	ld b,(hl)		;775e
	or h			;775f
	inc h			;7760
l7761h:
	dec e			;7761
	dec e			;7762
	ld c,b			;7763
	dec l			;7764
	ld d,e			;7765
	and h			;7766
	dec de			;7767
	ld hl,(01a56h)		;7768
	ld b,c			;776b
	add a,06fh		;776c
	ld b,c			;776e
	ccf			;776f
	ld b,04fh		;7770
	ld c,(hl)		;7772
	ld b,e			;7773
	ld c,e			;7774
	dec sp			;7775
	ld (de),a		;7776
	inc h			;7777
	rra			;7778
	dec e			;7779
	ld d,h			;777a
	dec bc			;777b
	ret z			;777c
	ld e,b			;777d
	ld h,a			;777e
	ld d,l			;777f
	ld c,h			;7780
	sub c			;7781
	sbc a,l			;7782
	ld c,e			;7783
	ld a,(de)		;7784
	ld (0a547h),hl		;7785
	or (hl)			;7788
	ld a,(hl)		;7789
	sub (hl)		;778a
	inc sp			;778b
	ld hl,(0195ch)		;778c
	jr c,l779ch		;778f
	ld e,b			;7791
	ld e,e			;7792
l7793h:
	rra			;7793
	exx			;7794
	call nz,00c29h		;7795
	ld b,a			;7798
	add a,h			;7799
	ld c,l			;779a
	ld d,e			;779b
l779ch:
	ld d,h			;779c
	ld d,a			;779d
	and d			;779e
	ld d,c			;779f
	call 0b044h		;77a0
	ld e,e			;77a3
	sub b			;77a4
	ld h,050h		;77a5
	ld l,(hl)		;77a7
	ld b,a			;77a8
	ld d,b			;77a9
	ld c,a			;77aa
	xor (hl)		;77ab
	inc bc			;77ac
	xor l			;77ad
	adc a,h			;77ae
	ret c			;77af
	ld h,047h		;77b0
	ld d,d			;77b2
	dec a			;77b3
	ld d,a			;77b4
	inc d			;77b5
	ld d,l			;77b6
	dec b			;77b7
	halt			;77b8
	ld a,(bc)		;77b9
	ex af,af'		;77ba
	or c			;77bb
	adc a,(hl)		;77bc
	ld d,c			;77bd
	rlca			;77be
	dec de			;77bf
	inc a			;77c0
	dec l			;77c1
	dec de			;77c2
	ld (0d456h),hl		;77c3
	jr nc,$+76		;77c6
	ld c,a			;77c8
	djnz l780eh		;77c9
	ld c,b			;77cb
	ld b,(hl)		;77cc
	ld c,c			;77cd
	sub 050h		;77ce
	add hl,bc		;77d0
	inc e			;77d1
	ld b,l			;77d2
	ld b,h			;77d3
	ld d,a			;77d4
	ld c,h			;77d5
	ld c,c			;77d6
	ld a,d			;77d7
	ld b,d			;77d8
	scf			;77d9
	adc a,h			;77da
	ld b,b			;77db
	ld c,c			;77dc
	ld d,e			;77dd
	ld a,l			;77de
	ld h,h			;77df
	ld b,e			;77e0
	inc d			;77e1
	ld h,l			;77e2
	ld c,a			;77e3
	ld h,c			;77e4
	ld b,d			;77e5
	ld b,044h		;77e6
	ld h,(hl)		;77e8
	sub 010h		;77e9
	ld c,c			;77eb
	ld c,h			;77ec
	nop			;77ed
	dec h			;77ee
	ld c,b			;77ef
	ld (hl),0bfh		;77f0
	add a,h			;77f2
	ld d,l			;77f3
	ret po			;77f4
	ld e,d			;77f5
	ld l,d			;77f6
	ld c,a			;77f7
	adc a,e			;77f8
	xor d			;77f9
	ld b,004h		;77fa
	ld d,a			;77fc
	ld c,a			;77fd
	ld c,h			;77fe
	adc a,059h		;77ff
	sub a			;7801
	ld b,d			;7802
	jr l7853h		;7803
	ld e,c			;7805
	ld e,c			;7806
	add a,(hl)		;7807
	ld hl,l4b4bh		;7808
	ld c,c			;780b
	inc de			;780c
	adc a,c			;780d
l780eh:
	ld d,e			;780e
	adc a,a			;780f
	ld bc,l5455h		;7810
	nop			;7813
	ld d,h			;7814
	ld d,b			;7815
	defb 0edh ;next byte illegal after ed	;7816
	ld l,03ch		;7817
	call c,0b0e1h		;7819
	and e			;781c
	ex af,af'		;781d
	inc b			;781e
	dec b			;781f
	ret nz			;7820
	ld de,0c90fh		;7821
	out (09bh),a		;7824
	add a,b			;7826
	xor a			;7827
	sbc hl,de		;7828
	ld de,0c510h		;782a
	add hl,bc		;782d
	dec a			;782e
	ret po			;782f
	ret nz			;7830
	push hl			;7831
	call z,sub_52f0h	;7832
	pop hl			;7835
	ld h,d			;7836
	inc hl			;7837
	add hl,bc		;7838
	ret nz			;7839
	rst 18h			;783a
	call po,0d646h		;783b
	ret nz			;783e
	dec hl			;783f
	ld (hl),a		;7840
	ld de,0000ch		;7841
	ret nz			;7844
	ld e,07eh		;7845
	add a,b			;7847
	ld (hl),a		;7848
	ret			;7849
	ret p			;784a
	inc c			;784b
	inc a			;784c
	dec (hl)		;784d
	ret			;784e
	scf			;784f
	ld e,b			;7850
	push hl			;7851
	sub a			;7852
l7853h:
	and b			;7853
	ld a,(hl)		;7854
	cp 002h			;7855
	jp nz,01a34h		;7857
	ld d,e			;785a
	ld de,00909h		;785b
	inc b			;785e
	ld e,l			;785f
	jp z,0a509h		;7860
	ld c,(hl)		;7863
	add hl,hl		;7864
	dec b			;7865
	ld (hl),019h		;7866
	ld b,a			;7868
	ld e,006h		;7869
	dec l			;786b
	add a,(hl)		;786c
	ld c,006h		;786d
	rst 0			;786f
	ld b,h			;7870
	pop hl			;7871
	cpl			;7872
	ld hl,0cab7h		;7873
	ld c,d			;7876
	ld d,e			;7877
	sbc a,h			;7878
	sub b			;7879
	ld c,b			;787a
	ld d,e			;787b
	pop hl			;787c
	and l			;787d
	or b			;787e
	ld c,h			;787f
	pop hl			;7880
	ld c,(hl)		;7881
	dec bc			;7882
	ret nc			;7883
	ld d,a			;7884
	pop hl			;7885
	ld d,(hl)		;7886
	ld a,c			;7887
	ld c,03bh		;7888
	xor a			;788a
	add a,0e9h		;788b
	dec b			;788d
	add a,054h		;788e
	inc hl			;7890
	or a			;7891
	add hl,hl		;7892
	ld (007c8h),a		;7893
	cp (hl)			;7896
	add a,e			;7897
	inc e			;7898
	ld (007cah),a		;7899
	ld a,b			;789c
	add a,e			;789d
	call z,007cah		;789e
	adc a,h			;78a1
	add a,0cfh		;78a2
	add a,00eh		;78a4
	jp nz,l60e9h		;78a6
	ld hl,000d7h		;78a9
	ld d,e			;78ac
	ld b,008h		;78ad
	ld de,l5423h		;78af
	exx			;78b2
	ld hl,01d57h		;78b3
	inc bc			;78b6
	call p,00c43h		;78b7
	inc b			;78ba
	ld de,00c32h		;78bb
	dec e			;78be
	inc l			;78bf
	inc c			;78c0
	pop de			;78c1
	cp l			;78c2
	inc c			;78c3
	dec sp			;78c4
	dec sp			;78c5
	inc c			;78c6
	ld h,e			;78c7
	ld d,b			;78c8
	inc c			;78c9
	ld c,d			;78ca
	inc c			;78cb
	adc a,b			;78cc
l78cdh:
	jp nc,01290h		;78cd
	ld b,l			;78d0
	dec de			;78d1
	dec de			;78d2
	ld (de),a		;78d3
	ld b,013h		;78d4
	inc de			;78d6
	inc hl			;78d7
	exx			;78d8
	push hl			;78d9
	ld b,a			;78da
	nop			;78db
	pop hl			;78dc
	exx			;78dd
	djnz l78cdh		;78de
	ret			;78e0
	ld a,(bc)		;78e1
	inc a			;78e2
	nop			;78e3
	inc d			;78e4
	ret p			;78e5
	jr z,l78f2h		;78e6
	ld e,d			;78e8
	ret z			;78e9
	ld h,h			;78ea
	ld h,h			;78eb
	ld bc,l46a0h		;78ec
	xor d			;78ef
	cp (hl)			;78f0
	cp (hl)			;78f1
l78f2h:
	ld e,01eh		;78f2
	ld b,000h		;78f4
	jr z,$+112		;78f6
	ld c,e			;78f8
	or h			;78f9
	jp nc,l6e2dh		;78fa
	nop			;78fd
	ld e,d			;78fe
	inc b			;78ff
l7900h:
	xor d			;7900
	xor a			;7901
l7902h:
	ret z			;7902
	jp m,02d1eh		;7903
	nop			;7906
	ld c,e			;7907
	ld a,h			;7908
	add a,a			;7909
	ld d,l			;790a
	and e			;790b
	call c,000c4h		;790c
	jr z,l796fh		;790f
	ld (bc),a		;7911
	add a,(hl)		;7912
	inc b			;7913
	ld (hl),d		;7914
	nop			;7915
	ld b,b			;7916
	nop			;7917
	ld l,0cah		;7918
	add a,(hl)		;791a
	inc b			;791b
	ret nc			;791c
	ld c,03ch		;791d
	nop			;791f
	ld c,054h		;7920
	ret nz			;7922
	and e			;7923
	inc b			;7924
	ld a,d			;7925
	ld (bc),a		;7926
	ld h,h			;7927
	nop			;7928
	ld bc,0cf06h		;7929
	ld bc,0c9c4h		;792c
	add a,e			;792f
	sbc a,h			;7930
	ld a,h			;7931
	ld c,033h		;7932
	inc b			;7934
	ld bc,0260eh		;7935
	sub l			;7938
	ld a,c			;7939
	ld a,d			;793a
	ld c,08eh		;793b
	ld e,b			;793d
	nop			;793e
	ld a,(hl)		;793f
	ld c,019h		;7940
	ld (bc),a		;7942
	ld bc,0890eh		;7943
	add a,b			;7946
	ld b,h			;7947
	ld (bc),a		;7948
	rst 0			;7949
	ret nc			;794a
	adc a,h			;794b
	nop			;794c
	ld c,0aah		;794d
	exx			;794f
	cp h			;7950
	rst 10h			;7951
	adc a,e			;7952
	ret nc			;7953
l7954h:
	dec c			;7954
	dec c			;7955
	ld c,(hl)		;7956
	ld bc,l5214h		;7957
	inc d			;795a
	daa			;795b
	ld (de),a		;795c
	inc c			;795d
	inc d			;795e
	ld c,a			;795f
	ld hl,01dabh		;7960
	sbc a,b			;7963
	add hl,hl		;7964
	ld hl,(0c928h)		;7965
	pop af			;7968
	inc d			;7969
	ld e,b			;796a
	ld a,h			;796b
	djnz l7982h		;796c
	add a,d			;796e
l796fh:
	jr z,l7971h		;796f
l7971h:
	ld a,0a8h		;7971
	ret po			;7973
	inc d			;7974
	inc bc			;7975
	inc bc			;7976
	dec bc			;7977
	ld d,016h		;7978
	rst 38h			;797a
	ld a,b			;797b
	add hl,bc		;797c
	inc d			;797d
	jr l79dah		;797e
	ld (de),a		;7980
	ld b,b			;7981
l7982h:
	ret po			;7982
	inc d			;7983
	inc b			;7984
	inc b			;7985
	cp l			;7986
	inc d			;7987
	or l			;7988
	add a,a			;7989
	xor d			;798a
	add hl,hl		;798b
	ld (hl),h		;798c
	adc a,l			;798d
	nop			;798e
	nop			;798f
	push bc			;7990
	push de			;7991
	push hl			;7992
	exx			;7993
	ex af,af'		;7994
	push af			;7995
	pop bc			;7996
	dec b			;7997
	call 0050ch		;7998
	call sub_5590h		;799b
	call 08ec5h		;799e
	ld (bc),a		;79a1
	ld bc,0f855h		;79a2
	ld b,b			;79a5
	ld d,(hl)		;79a6
	pop bc			;79a7
	ld a,(04cd1h)		;79a8
	ld d,h			;79ab
	or e			;79ac
	rst 30h			;79ad
	ld (hl),c		;79ae
	ld d,h			;79af
	or 007h			;79b0
	ld bc,0d1e1h		;79b2
	pop bc			;79b5
	pop af			;79b6
	ex af,af'		;79b7
	exx			;79b8
	dec b			;79b9
	sbc a,c			;79ba
	jp nc,06703h		;79bb
	ld b,a			;79be
	cp 003h			;79bf
	ret z			;79c1
	ret po			;79c2
	ld d,e			;79c3
	exx			;79c4
	ld e,h			;79c5
	jr c,l7954h		;79c6
	inc bc			;79c8
	inc h			;79c9
	ld d,l			;79ca
	add a,008h		;79cb
	and 00fh		;79cd
	djnz $+94		;79cf
	sub d			;79d1
	djnz $+4		;79d2
	ld hl,l58dah		;79d4
	call 095e9h		;79d7
l79dah:
	dec h			;79da
	ld a,049h		;79db
	sbc a,026h		;79dd
	sub (hl)		;79df
	ld e,h			;79e0
	dec b			;79e1
	dec (hl)		;79e2
	ld e,h			;79e3
	dec b			;79e4
	ret			;79e5
	adc a,d			;79e6
	ld e,(hl)		;79e7
	ld c,h			;79e8
	ld (bc),a		;79e9
	ld a,e			;79ea
	xor h			;79eb
	ld a,h			;79ec
	ld b,003h		;79ed
	adc a,h			;79ef
	sbc a,l			;79f0
	ld c,d			;79f1
	call nc,0eb82h		;79f2
	ld c,0d0h		;79f5
	dec de			;79f7
	inc e			;79f8
	jr nc,$+16		;79f9
	add a,e			;79fb
	ld a,(0f3e0h)		;79fc
	or 002h			;79ff
	ld d,h			;7a01
	ld e,b			;7a02
	add a,c			;7a03
	ld d,h			;7a04
	ld a,00dh		;7a05
	rst 28h			;7a07
	ld (0f3e4h),a		;7a08
	inc c			;7a0b
	ld h,l			;7a0c
	add a,l			;7a0d
	inc bc			;7a0e
	sbc a,e			;7a0f
	ld b,0eah		;7a10
	rst 38h			;7a12
	ld b,033h		;7a13
	adc a,e			;7a15
	inc bc			;7a16
	sub c			;7a17
	ld h,0e5h		;7a18
	dec d			;7a1a
	or b			;7a1b
	add a,(hl)		;7a1c
	ld (02721h),hl		;7a1d
	nop			;7a20
	ld d,(hl)		;7a21
	ld (0c19ah),hl		;7a22
	ld de,01020h		;7a25
	ld hl,00001h		;7a28
	ld (hl),h		;7a2b
	call 00533h		;7a2c
	ld hl,00e17h		;7a2f
	pop bc			;7a32
	djnz l7a43h		;7a33
	ld c,0c8h		;7a35
	ld de,l5787h		;7a37
	sub h			;7a3a
	ex af,af'		;7a3b
	ld a,b			;7a3c
	or b			;7a3d
	inc b			;7a3e
	call 00536h		;7a3f
	ret			;7a42
l7a43h:
	ex af,af'		;7a43
	halt			;7a44
	ld de,l45cdh		;7a45
l7a48h:
	ld bc,080b6h		;7a48
l7a4bh:
	ld c,a			;7a4b
	ld hl,05687h		;7a4c
	ld de,00701h		;7a4f
	ld d,a			;7a52
	ld b,020h		;7a53
l7a55h:
	ld a,(l5615h)		;7a55
	xor b			;7a58
	cp e			;7a59
	dec b			;7a5a
	ld b,(hl)		;7a5b
	sbc a,000h		;7a5c
	dec a			;7a5e
	jp nz,l55fah		;7a5f
	ld a,b			;7a62
	cp 013h			;7a63
	ld e,c			;7a65
	jp nc,01505h		;7a66
	call po,0da52h		;7a69
	rlca			;7a6c
	dec b			;7a6d
	ld a,0fah		;7a6e
	jp l55fah+1		;7a70
	or (hl)			;7a73
	jr nz,l7a89h		;7a74
	ld a,(hl)		;7a76
	add a,c			;7a77
	jp c,00304h		;7a78
	inc b			;7a7b
	ex af,af'		;7a7c
	inc de			;7a7d
	djnz l7a55h		;7a7e
	ld hl,00138h		;7a80
	sbc a,b			;7a83
	ex af,af'		;7a84
	add a,b			;7a85
	otir			;7a86
	ei			;7a88
l7a89h:
	sub 0c7h		;7a89
	rrca			;7a8b
	nop			;7a8c
	or e			;7a8d
	inc c			;7a8e
	rrca			;7a8f
	exx			;7a90
	dec b			;7a91
	rrca			;7a92
	call pe,sub_7b09h	;7a93
	dec bc			;7a96
	ld hl,000f9h		;7a97
	adc a,a			;7a9a
	dec bc			;7a9b
	add hl,bc		;7a9c
	inc c			;7a9d
	nop			;7a9e
	ld h,a			;7a9f
	add hl,bc		;7aa0
	nop			;7aa1
	or c			;7aa2
	rst 38h			;7aa3
	ret p			;7aa4
	ld (hl),e		;7aa5
	sbc a,b			;7aa6
	inc bc			;7aa7
	rra			;7aa8
	add a,003h		;7aa9
	cpl			;7aab
	inc bc			;7aac
	ld sp,0033fh		;7aad
	ld c,a			;7ab0
	inc bc			;7ab1
	adc a,h			;7ab2
	ld e,a			;7ab3
	inc bc			;7ab4
	ld h,e			;7ab5
	ld l,a			;7ab6
	inc bc			;7ab7
	ld a,a			;7ab8
	inc bc			;7ab9
	jr l7a4bh		;7aba
	inc bc			;7abc
	sbc a,a			;7abd
	add a,003h		;7abe
	xor a			;7ac0
	inc bc			;7ac1
	ld sp,003b5h		;7ac2
	push bc			;7ac5
	inc bc			;7ac6
	add a,l			;7ac7
	ld a,(bc)		;7ac8
	ld h,h			;7ac9
	ei			;7aca
	inc b			;7acb
	inc d			;7acc
	inc a			;7acd
	inc bc			;7ace
	ld e,045h		;7acf
	ld a,b			;7ad1
	inc bc			;7ad2
	jr z,l7af3h		;7ad3
	inc bc			;7ad5
	xor d			;7ad6
	call nc,03c03h		;7ad7
	ld b,h			;7ada
	adc a,h			;7adb
	inc bc			;7adc
	ld b,(hl)		;7add
	add a,d			;7ade
	inc bc			;7adf
	ld d,h			;7ae0
	ld b,h			;7ae1
	ld b,(hl)		;7ae2
	inc bc			;7ae3
	ld h,h			;7ae4
	xor d			;7ae5
	inc bc			;7ae6
	ld (hl),h		;7ae7
	ld b,h			;7ae8
	jr z,l7aeeh		;7ae9
	ld a,h			;7aeb
	inc d			;7aec
	inc bc			;7aed
l7aeeh:
	adc a,d			;7aee
	ld c,h			;7aef
	ld d,b			;7af0
	inc bc			;7af1
	sub (hl)		;7af2
l7af3h:
	inc hl			;7af3
	ld hl,(096a0h)		;7af4
	inc bc			;7af7
	or b			;7af8
	ld (0b403h),hl		;7af9
	ld l,(hl)		;7afc
	inc bc			;7afd
	ld h,0beh		;7afe
sub_7b00h:
	ld e,d			;7b00
	inc bc			;7b01
l7b02h:
	ret z			;7b02
	inc hl			;7b03
	ld a,a			;7b04
	nop			;7b05
	ld a,(hl)		;7b06
	rst 38h			;7b07
	ei			;7b08
sub_7b09h:
	nop			;7b09
	sbc a,a			;7b0a
	ld bc,0703fh		;7b0b
	di			;7b0e
	ld hl,01338h		;7b0f
	nop			;7b12
	ld de,0bff8h		;7b13
	ld (0a103h),a		;7b16
	ld (bc),a		;7b19
	or b			;7b1a
	ld hl,l57eeh		;7b1b
	ld (08e39h),hl		;7b1e
	jp nz,032c3h		;7b21
	ld (de),a		;7b24
	ld d,c			;7b25
	ei			;7b26
	sbc a,d			;7b27
	inc d			;7b28
	rla			;7b29
	ld de,01e38h		;7b2a
	jr $+18			;7b2d
	dec c			;7b2f
	push af			;7b30
	in a,(099h)		;7b31
l7b33h:
	ld (bc),a		;7b33
	rlca			;7b34
	call c,sub_54d2h	;7b35
	pop af			;7b38
	ei			;7b39
	cp c			;7b3a
	or (hl)			;7b3b
	adc a,a			;7b3c
l7b3dh:
	or b			;7b3d
	and 0bfh		;7b3e
	ld d,l			;7b40
	ld (09204h),a		;7b41
	jp c,0a0c9h		;7b44
	or l			;7b47
	ld b,d			;7b48
	djnz l7b33h		;7b49
	ld b,l			;7b4b
	ld (bc),a		;7b4c
	pop bc			;7b4d
	or a			;7b4e
	ret nz			;7b4f
	ld a,(l58a8h)		;7b50
	or c			;7b53
	jp z,00703h		;7b54
	jr nc,l7b02h		;7b57
	ld e,b			;7b59
	ld b,021h		;7b5a
	xor d			;7b5c
	inc l			;7b5d
	ld e,b			;7b5e
	ld de,0028dh		;7b5f
	ld b,030h		;7b62
	call sub_587dh		;7b64
	inc hl			;7b67
	or e			;7b68
	add a,l			;7b69
	ld sp,hl		;7b6a
	sbc a,c			;7b6b
	and b			;7b6c
	ld de,l590ah		;7b6d
	inc c			;7b70
	ld b,010h		;7b71
	ld a,(hl)		;7b73
	add a,a			;7b74
	nop			;7b75
	and b			;7b76
	add a,04eh		;7b77
	add a,c			;7b79
	inc l			;7b7a
	dec hl			;7b7b
	ld c,(hl)		;7b7c
	dec b			;7b7d
	adc a,d			;7b7e
	adc a,b			;7b7f
	ld a,c			;7b80
	ld (de),a		;7b81
	dec de			;7b82
	call pe,0ad21h		;7b83
	jr l7b3dh		;7b86
	dec b			;7b88
	ld a,(0c398h)		;7b89
	ld a,003h		;7b8c
	inc c			;7b8e
	ret nz			;7b8f
	ld a,00ah		;7b90
	dec b			;7b92
	cp h			;7b93
	add a,(hl)		;7b94
	adc a,h			;7b95
	ld d,d			;7b96
	ld b,050h		;7b97
	dec (hl)		;7b99
	nop			;7b9a
	xor a			;7b9b
l7b9ch:
	inc hl			;7b9c
	djnz l7b9ch		;7b9d
	ret			;7b9f
	ld a,(de)		;7ba0
	cp (hl)			;7ba1
	ret z			;7ba2
	cpl			;7ba3
	inc a			;7ba4
	ld (de),a		;7ba5
	ld h,l			;7ba6
	ld h,b			;7ba7
	ld e,e			;7ba8
	dec de			;7ba9
	cp b			;7baa
	ld h,b			;7bab
	cp 0ffh			;7bac
	jr nz,$+3		;7bae
	jr nz,$-79		;7bb0
	ld (hl),a		;7bb2
	ld (0cdf5h),hl		;7bb3
	ccf			;7bb6
	ld e,b			;7bb7
	ex (sp),hl		;7bb8
	jr c,$-46		;7bb9
	daa			;7bbb
	ld a,(bc)		;7bbc
	adc a,l			;7bbd
	jp pe,0b601h		;7bbe
	ld h,c			;7bc1
	ld (bc),a		;7bc2
	ld bc,00605h		;7bc3
	ld b,h			;7bc6
	ld (bc),a		;7bc7
	ld (bc),a		;7bc8
	ld b,009h		;7bc9
	rlca			;7bcb
	adc a,h			;7bcc
	inc bc			;7bcd
	rlca			;7bce
	rlca			;7bcf
	ld (bc),a		;7bd0
	ld h,c			;7bd1
	ld b,09ch		;7bd2
	and a			;7bd4
	ld sp,hl		;7bd5
	rlca			;7bd6
	ld c,d			;7bd7
	nop			;7bd8
	dec b			;7bd9
	nop			;7bda
	and d			;7bdb
	ld a,a			;7bdc
	sbc a,b			;7bdd
	rst 38h			;7bde
	nop			;7bdf
	rst 38h			;7be0
	add a,b			;7be1
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
l7c04h:
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
l7e84h:
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
