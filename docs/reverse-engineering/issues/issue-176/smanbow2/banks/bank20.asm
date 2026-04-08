; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank20.asm /tmp/smanbow2_bank_20.bin

	org 04000h

	nop			;4000
	nop			;4001
	inc (hl)		;4002
	inc b			;4003
	nop			;4004
	nop			;4005
	inc bc			;4006
	nop			;4007
	inc b			;4008
	dec bc			;4009
	daa			;400a
	dec b			;400b
	ld (hl),005h		;400c
	inc sp			;400e
	rrca			;400f
	nop			;4010
	nop			;4011
	ld (bc),a		;4012
	nop			;4013
	nop			;4014
	nop			;4015
	nop			;4016
	nop			;4017
	nop			;4018
	nop			;4019
	ld h,a			;401a
	ld (bc),a		;401b
	inc (hl)		;401c
	inc b			;401d
	inc bc			;401e
	nop			;401f
	add hl,bc		;4020
	dec bc			;4021
	cpl			;4022
l4023h:
	dec b			;4023
	inc (hl)		;4024
	dec b			;4025
	nop			;4026
	nop			;4027
	inc sp			;4028
	dec bc			;4029
	inc bc			;402a
	nop			;402b
	nop			;402c
	nop			;402d
	ld h,a			;402e
	inc bc			;402f
	ld h,a			;4030
	inc bc			;4031
	nop			;4032
	nop			;4033
	ld h,a			;4034
	ld (bc),a		;4035
	inc bc			;4036
	nop			;4037
	nop			;4038
	nop			;4039
	nop			;403a
	nop			;403b
	nop			;403c
	nop			;403d
	nop			;403e
	nop			;403f
	nop			;4040
	nop			;4041
	ld bc,00000h		;4042
	nop			;4045
	nop			;4046
	nop			;4047
	nop			;4048
	nop			;4049
	nop			;404a
	nop			;404b
	nop			;404c
	nop			;404d
	inc bc			;404e
	ld a,(de)		;404f
	nop			;4050
	nop			;4051
	nop			;4052
	nop			;4053
	nop			;4054
	nop			;4055
	nop			;4056
	nop			;4057
	nop			;4058
	nop			;4059
	nop			;405a
	nop			;405b
	nop			;405c
	nop			;405d
	nop			;405e
	nop			;405f
	nop			;4060
	nop			;4061
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
	ld bc,0310bh		;4080
	dec b			;4083
	inc (hl)		;4084
	dec b			;4085
	jr z,l4097h		;4086
	nop			;4088
	nop			;4089
	ld bc,00000h		;408a
	nop			;408d
	nop			;408e
	nop			;408f
	nop			;4090
	nop			;4091
	daa			;4092
	rrca			;4093
	nop			;4094
	nop			;4095
	inc bc			;4096
l4097h:
	nop			;4097
	nop			;4098
	nop			;4099
	inc sp			;409a
	dec b			;409b
	ld (hl),005h		;409c
	dec h			;409e
	rrca			;409f
	jr z,l40adh		;40a0
	ld bc,00000h		;40a2
	nop			;40a5
	nop			;40a6
	nop			;40a7
	nop			;40a8
	nop			;40a9
	inc hl			;40aa
	rrca			;40ab
	daa			;40ac
l40adh:
	dec bc			;40ad
	inc bc			;40ae
	nop			;40af
	nop			;40b0
	nop			;40b1
	inc (hl)		;40b2
	dec b			;40b3
	jr c,l40bbh		;40b4
	dec h			;40b6
	rrca			;40b7
	dec h			;40b8
	dec bc			;40b9
	inc bc			;40ba
l40bbh:
	nop			;40bb
	nop			;40bc
	nop			;40bd
	nop			;40be
	nop			;40bf
	nop			;40c0
	nop			;40c1
	ld h,a			;40c2
	ex af,af'		;40c3
	inc hl			;40c4
	dec bc			;40c5
	inc bc			;40c6
	nop			;40c7
	ld bc,03d0bh		;40c8
	dec b			;40cb
	ld b,b			;40cc
	dec b			;40cd
	ld sp,0250fh		;40ce
	dec bc			;40d1
	ld (bc),a		;40d2
	nop			;40d3
	nop			;40d4
	nop			;40d5
	ld h,a			;40d6
	ld (bc),a		;40d7
	ld h,a			;40d8
	ld (bc),a		;40d9
	ld h,a			;40da
	inc bc			;40db
	ld h,a			;40dc
	ex af,af'		;40dd
	inc bc			;40de
	nop			;40df
	dec bc			;40e0
	dec bc			;40e1
	nop			;40e2
	nop			;40e3
	nop			;40e4
	nop			;40e5
	nop			;40e6
	nop			;40e7
	ld sp,0030bh		;40e8
	nop			;40eb
	nop			;40ec
	nop			;40ed
	nop			;40ee
	nop			;40ef
	nop			;40f0
	nop			;40f1
	nop			;40f2
	nop			;40f3
	ld h,a			;40f4
	inc bc			;40f5
	inc bc			;40f6
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
	ld bc,00000h		;4102
	nop			;4105
	nop			;4106
	nop			;4107
	nop			;4108
	nop			;4109
	nop			;410a
	nop			;410b
	nop			;410c
	nop			;410d
	inc bc			;410e
	ld a,(de)		;410f
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
	add hl,bc		;4140
	dec bc			;4141
	ld sp,03405h		;4142
	dec b			;4145
	dec l			;4146
	rrca			;4147
	nop			;4148
	nop			;4149
	ld bc,00000h		;414a
	nop			;414d
	nop			;414e
	nop			;414f
	nop			;4150
	nop			;4151
	dec l			;4152
	rrca			;4153
	nop			;4154
	nop			;4155
	inc bc			;4156
	nop			;4157
	nop			;4158
	nop			;4159
	nop			;415a
	nop			;415b
	nop			;415c
	nop			;415d
	dec l			;415e
	rrca			;415f
	dec l			;4160
	dec bc			;4161
	ld bc,l6700h		;4162
	jr nc,l4167h		;4165
l4167h:
	nop			;4167
	nop			;4168
	nop			;4169
	ld h,a			;416a
	inc b			;416b
	dec l			;416c
	dec bc			;416d
	inc bc			;416e
	nop			;416f
	ld l,h			;4170
	ld bc,00000h		;4171
	nop			;4174
	nop			;4175
	ld l,h			;4176
	ld (bc),a		;4177
	dec l			;4178
	dec bc			;4179
	inc bc			;417a
	nop			;417b
	ld l,h			;417c
	ld bc,00000h		;417d
	nop			;4180
	nop			;4181
	ld l,h			;4182
	ld (bc),a		;4183
	ld h,a			;4184
	inc b			;4185
	inc bc			;4186
	nop			;4187
	add hl,bc		;4188
	dec bc			;4189
	ld sp,03405h		;418a
	dec b			;418d
	dec l			;418e
	rrca			;418f
	ld l,h			;4190
	ld (bc),a		;4191
	ld (bc),a		;4192
	nop			;4193
	nop			;4194
	nop			;4195
	nop			;4196
	nop			;4197
	nop			;4198
	nop			;4199
	nop			;419a
	nop			;419b
	ld l,h			;419c
	ld (bc),a		;419d
	inc bc			;419e
	nop			;419f
	nop			;41a0
	nop			;41a1
	cpl			;41a2
	dec b			;41a3
	inc sp			;41a4
	dec b			;41a5
	inc l			;41a6
	rrca			;41a7
	dec l			;41a8
	dec bc			;41a9
	inc bc			;41aa
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
	inc bc			;41b6
	nop			;41b7
	nop			;41b8
	nop			;41b9
	dec l			;41ba
	dec b			;41bb
	ld sp,02a05h		;41bc
	rrca			;41bf
	inc l			;41c0
	dec bc			;41c1
	ld bc,00000h		;41c2
	nop			;41c5
	nop			;41c6
	nop			;41c7
	nop			;41c8
	nop			;41c9
	nop			;41ca
	nop			;41cb
	nop			;41cc
	nop			;41cd
	inc bc			;41ce
	ld a,(de)		;41cf
	nop			;41d0
	nop			;41d1
	nop			;41d2
	nop			;41d3
	nop			;41d4
	nop			;41d5
	nop			;41d6
	nop			;41d7
	nop			;41d8
	nop			;41d9
	nop			;41da
	nop			;41db
	nop			;41dc
	nop			;41dd
	nop			;41de
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
	nop			;41f4
	nop			;41f5
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
	ld b,00fh		;4200
	inc (hl)		;4202
	inc b			;4203
	jr c,$+6		;4204
	dec h			;4206
	rrca			;4207
	ld hl,(0020bh)		;4208
	nop			;420b
	ld b,00fh		;420c
	ld h,a			;420e
	ld (bc),a		;420f
	ld h,a			;4210
	ld (bc),a		;4211
	ld h,a			;4212
	inc bc			;4213
	nop			;4214
	nop			;4215
	ld (bc),a		;4216
	nop			;4217
	ld b,00fh		;4218
	ld l,h			;421a
	ld (bc),a		;421b
	ld l,h			;421c
	ld (bc),a		;421d
	ld l,h			;421e
	ld (bc),a		;421f
	dec h			;4220
	dec bc			;4221
	ld (bc),a		;4222
	nop			;4223
	ld h,c			;4224
	nop			;4225
	ld l,h			;4226
	ld bc,0016ch		;4227
	ld l,h			;422a
	ld (bc),a		;422b
	ld h,a			;422c
	inc bc			;422d
	nop			;422e
	nop			;422f
	nop			;4230
	nop			;4231
	ld l,h			;4232
	ld bc,0016ch		;4233
	ld l,h			;4236
	ld (bc),a		;4237
	ld l,h			;4238
	ld (bc),a		;4239
	nop			;423a
	nop			;423b
	ld (de),a		;423c
	rrca			;423d
	nop			;423e
	nop			;423f
	nop			;4240
	nop			;4241
	nop			;4242
	nop			;4243
	ld l,h			;4244
	ld (bc),a		;4245
	nop			;4246
	nop			;4247
	ex af,af'		;4248
	rrca			;4249
	ld (hl),004h		;424a
	add hl,sp		;424c
	inc b			;424d
	daa			;424e
	rrca			;424f
	ld l,h			;4250
	ld (bc),a		;4251
	ld (bc),a		;4252
	nop			;4253
	ex af,af'		;4254
	rrca			;4255
	ld h,a			;4256
	ld (bc),a		;4257
	ld h,a			;4258
	ld (bc),a		;4259
	ld h,a			;425a
	inc bc			;425b
	nop			;425c
	nop			;425d
	ld (bc),a		;425e
	nop			;425f
	ex af,af'		;4260
	rrca			;4261
	ld l,h			;4262
	ld (bc),a		;4263
	ld l,h			;4264
	ld (bc),a		;4265
	ld l,h			;4266
	ld (bc),a		;4267
	daa			;4268
	dec bc			;4269
	rlca			;426a
	nop			;426b
	ld h,c			;426c
	nop			;426d
	ld l,h			;426e
	ld bc,0016ch		;426f
	ld l,h			;4272
	ld (bc),a		;4273
	ld h,a			;4274
	inc bc			;4275
	nop			;4276
	nop			;4277
	nop			;4278
	nop			;4279
	ld l,h			;427a
	ld bc,0016ch		;427b
	ld l,h			;427e
	ld (bc),a		;427f
	ld l,h			;4280
	ld (bc),a		;4281
	nop			;4282
	nop			;4283
	dec bc			;4284
	rrca			;4285
	nop			;4286
	nop			;4287
	nop			;4288
	nop			;4289
	nop			;428a
	nop			;428b
	ld l,h			;428c
	ld (bc),a		;428d
	ld (bc),a		;428e
	ld a,(de)		;428f
	nop			;4290
	nop			;4291
	nop			;4292
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
	nop			;42a8
	nop			;42a9
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
	nop			;42c0
	nop			;42c1
	nop			;42c2
	nop			;42c3
	nop			;42c4
	nop			;42c5
	nop			;42c6
	nop			;42c7
	nop			;42c8
	ld (bc),a		;42c9
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
	ld bc,00600h		;42d5
	dec bc			;42d8
	nop			;42d9
	nop			;42da
	ld l,h			;42db
	ld bc,00367h		;42dc
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
	ld l,h			;42eb
	ld bc,00001h		;42ec
	nop			;42ef
	nop			;42f0
	nop			;42f1
	nop			;42f2
	nop			;42f3
	nop			;42f4
	nop			;42f5
	nop			;42f6
	nop			;42f7
	nop			;42f8
	nop			;42f9
	nop			;42fa
	nop			;42fb
	nop			;42fc
	ld h,a			;42fd
	inc bc			;42fe
	nop			;42ff
	nop			;4300
	nop			;4301
	nop			;4302
	nop			;4303
	nop			;4304
	inc bc			;4305
	ld a,(de)		;4306
	nop			;4307
	nop			;4308
	nop			;4309
	nop			;430a
	nop			;430b
	nop			;430c
	nop			;430d
	nop			;430e
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
	nop			;4324
	nop			;4325
	nop			;4326
	nop			;4327
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
	sub b			;4338
	rlca			;4339
	rrca			;433a
	nop			;433b
	nop			;433c
	nop			;433d
	nop			;433e
	ld h,a			;433f
	inc b			;4340
	nop			;4341
	nop			;4342
	ld bc,l6100h		;4343
	nop			;4346
	nop			;4347
	nop			;4348
	nop			;4349
	nop			;434a
	nop			;434b
	nop			;434c
	ld l,h			;434d
	ld bc,00000h		;434e
	rlca			;4351
	dec bc			;4352
	nop			;4353
	nop			;4354
	nop			;4355
	nop			;4356
	ld h,a			;4357
	rlca			;4358
	nop			;4359
	nop			;435a
	inc bc			;435b
	nop			;435c
	ld h,c			;435d
	nop			;435e
	ld h,a			;435f
	inc b			;4360
	nop			;4361
	nop			;4362
	nop			;4363
	nop			;4364
	nop			;4365
	nop			;4366
	ld bc,01300h		;4367
	dec bc			;436a
	nop			;436b
	nop			;436c
	ld l,h			;436d
	ld bc,00f2bh		;436e
	cpl			;4371
	ld b,003h		;4372
	nop			;4374
	nop			;4375
	nop			;4376
	ld h,a			;4377
	rlca			;4378
	nop			;4379
	nop			;437a
	nop			;437b
	nop			;437c
	nop			;437d
	nop			;437e
	nop			;437f
	ld bc,00d0bh		;4380
	dec c			;4383
	ld l,h			;4384
	inc bc			;4385
	ld h,c			;4386
	nop			;4387
	ld h,c			;4388
	nop			;4389
	ld bc,l6115h		;438a
	nop			;438d
	ld h,c			;438e
	nop			;438f
	dec h			;4390
	ld a,(bc)		;4391
	ld h,d			;4392
	add hl,de		;4393
	nop			;4394
	nop			;4395
	nop			;4396
	nop			;4397
	ld bc,00d0bh		;4398
	dec c			;439b
	ld hl,(0000ah)		;439c
	nop			;439f
	nop			;43a0
	nop			;43a1
	inc bc			;43a2
	nop			;43a3
	nop			;43a4
	nop			;43a5
	ld h,c			;43a6
	nop			;43a7
	inc l			;43a8
	ld a,(bc)		;43a9
	dec h			;43aa
	rlca			;43ab
	nop			;43ac
	nop			;43ad
	ld bc,00d00h		;43ae
	dec bc			;43b1
	ld bc,0000dh		;43b2
	nop			;43b5
	ld hl,(00007h)		;43b6
	nop			;43b9
	inc bc			;43ba
	nop			;43bb
	nop			;43bc
	nop			;43bd
	ld h,c			;43be
	nop			;43bf
	ld h,a			;43c0
	ld bc,0072ch		;43c1
	dec h			;43c4
	dec b			;43c5
	nop			;43c6
	nop			;43c7
	nop			;43c8
	nop			;43c9
	ld bc,0000dh		;43ca
	nop			;43cd
	nop			;43ce
	nop			;43cf
	ld hl,(00205h)		;43d0
	nop			;43d3
	nop			;43d4
	nop			;43d5
	ld h,c			;43d6
	nop			;43d7
	nop			;43d8
	nop			;43d9
	ld h,a			;43da
	ld bc,0052ch		;43db
	ld bc,00100h		;43de
	dec bc			;43e1
	dec c			;43e2
	dec c			;43e3
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
	ld h,c			;43ee
	nop			;43ef
	ld h,c			;43f0
	nop			;43f1
	nop			;43f2
	nop			;43f3
	ld h,a			;43f4
	ld bc,00001h		;43f5
	nop			;43f8
	nop			;43f9
	nop			;43fa
	nop			;43fb
	inc l			;43fc
	ld a,(bc)		;43fd
	nop			;43fe
	nop			;43ff
	nop			;4400
	nop			;4401
	nop			;4402
	nop			;4403
	nop			;4404
	nop			;4405
	nop			;4406
	nop			;4407
	nop			;4408
	nop			;4409
	ld h,c			;440a
	nop			;440b
	nop			;440c
	nop			;440d
	inc bc			;440e
	ld a,(de)		;440f
	nop			;4410
	nop			;4411
	nop			;4412
	nop			;4413
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
	nop			;4426
	nop			;4427
	nop			;4428
	nop			;4429
	nop			;442a
	nop			;442b
	nop			;442c
	nop			;442d
	nop			;442e
	nop			;442f
	nop			;4430
	nop			;4431
	nop			;4432
	nop			;4433
	nop			;4434
	nop			;4435
	nop			;4436
	nop			;4437
	nop			;4438
	nop			;4439
	nop			;443a
	nop			;443b
	nop			;443c
	nop			;443d
	nop			;443e
	nop			;443f
	ld bc,00d0bh		;4440
	dec c			;4443
	inc l			;4444
	ld a,(bc)		;4445
	inc l			;4446
	rlca			;4447
	nop			;4448
	nop			;4449
	ld bc,00000h		;444a
	nop			;444d
	ld h,c			;444e
	nop			;444f
	ld hl,(0000ah)		;4450
	nop			;4453
	ld h,c			;4454
	nop			;4455
	inc bc			;4456
	nop			;4457
	nop			;4458
	nop			;4459
	dec c			;445a
	dec c			;445b
	inc l			;445c
	ld a,(bc)		;445d
	inc l			;445e
	rlca			;445f
	inc l			;4460
	dec b			;4461
	ld bc,00000h		;4462
	nop			;4465
	ld h,c			;4466
	nop			;4467
	ld sp,02a0ah		;4468
	rlca			;446b
	nop			;446c
	nop			;446d
	inc bc			;446e
	nop			;446f
	dec c			;4470
	dec bc			;4471
	dec c			;4472
	dec c			;4473
	inc l			;4474
	ld a,(bc)		;4475
	inc l			;4476
	rlca			;4477
	inc l			;4478
	dec b			;4479
	ld (bc),a		;447a
	nop			;447b
	ld h,c			;447c
	nop			;447d
	ld h,c			;447e
	nop			;447f
	nop			;4480
	nop			;4481
	ld sp,02a07h		;4482
	dec b			;4485
	ld bc,00000h		;4486
	nop			;4489
	dec c			;448a
	dec c			;448b
	ld h,a			;448c
	ld bc,0072ch		;448d
	inc l			;4490
	dec b			;4491
	nop			;4492
	nop			;4493
	ld bc,l610bh		;4494
	nop			;4497
	nop			;4498
	nop			;4499
	nop			;449a
	nop			;449b
	ld sp,00105h		;449c
	nop			;449f
	nop			;44a0
	nop			;44a1
	nop			;44a2
	nop			;44a3
	ld h,a			;44a4
	ld (bc),a		;44a5
	ld h,a			;44a6
	ld bc,0052ch		;44a7
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
	inc bc			;44b6
	nop			;44b7
	nop			;44b8
	nop			;44b9
	nop			;44ba
	nop			;44bb
	nop			;44bc
	nop			;44bd
	ld h,a			;44be
	ld (bc),a		;44bf
	ld h,a			;44c0
	ld bc,00000h		;44c1
	nop			;44c4
	nop			;44c5
	nop			;44c6
	nop			;44c7
	nop			;44c8
	nop			;44c9
	nop			;44ca
	nop			;44cb
	nop			;44cc
	nop			;44cd
	inc bc			;44ce
	ld a,(de)		;44cf
	nop			;44d0
	nop			;44d1
	nop			;44d2
	nop			;44d3
	nop			;44d4
	nop			;44d5
	nop			;44d6
	nop			;44d7
	nop			;44d8
	nop			;44d9
	nop			;44da
	nop			;44db
	nop			;44dc
	nop			;44dd
	nop			;44de
	nop			;44df
	nop			;44e0
	nop			;44e1
	nop			;44e2
	nop			;44e3
	nop			;44e4
	nop			;44e5
	nop			;44e6
	nop			;44e7
	nop			;44e8
	nop			;44e9
	nop			;44ea
	nop			;44eb
	nop			;44ec
	nop			;44ed
	nop			;44ee
	nop			;44ef
	nop			;44f0
	nop			;44f1
	nop			;44f2
	nop			;44f3
	nop			;44f4
	nop			;44f5
	nop			;44f6
	nop			;44f7
	nop			;44f8
	nop			;44f9
	nop			;44fa
	nop			;44fb
	nop			;44fc
	nop			;44fd
	nop			;44fe
	nop			;44ff
	ld b,00bh		;4500
	dec c			;4502
l4503h:
	dec c			;4503
	ld hl,(l6c0ah)		;4504
	ld (bc),a		;4507
l4508h:
	ld h,a			;4508
	ld (bc),a		;4509
	ld bc,l6100h		;450a
	nop			;450d
	ld h,c			;450e
	nop			;450f
	jr z,$+12		;4510
	nop			;4512
	nop			;4513
	ld l,h			;4514
	ld (bc),a		;4515
	nop			;4516
	nop			;4517
	nop			;4518
	nop			;4519
	ld bc,0270dh		;451a
	ld a,(bc)		;451d
	ld hl,(00007h)		;451e
	nop			;4521
	inc bc			;4522
	nop			;4523
	nop			;4524
	nop			;4525
	ld h,c			;4526
	nop			;4527
	inc hl			;4528
	ld a,(bc)		;4529
	jr z,l4533h		;452a
	nop			;452c
	nop			;452d
	ld bc,00600h		;452e
	dec bc			;4531
	dec c			;4532
l4533h:
	dec c			;4533
	ld h,a			;4534
	ld (bc),a		;4535
	daa			;4536
	rlca			;4537
	ld hl,(00305h)		;4538
	nop			;453b
	ld (de),a		;453c
	dec bc			;453d
	ld h,c			;453e
	nop			;453f
	nop			;4540
	nop			;4541
	inc hl			;4542
	rlca			;4543
	jr z,$+7		;4544
l4546h:
	inc bc			;4546
	nop			;4547
	nop			;4548
	nop			;4549
	ld bc,0000dh		;454a
	nop			;454d
	ld h,a			;454e
	ld (bc),a		;454f
	daa			;4550
	dec b			;4551
	ld (bc),a		;4552
	nop			;4553
	nop			;4554
	nop			;4555
	ld h,c			;4556
	nop			;4557
	nop			;4558
	nop			;4559
	nop			;455a
	nop			;455b
	inc hl			;455c
	dec b			;455d
	ld bc,00600h		;455e
	dec bc			;4561
	ld bc,l6c0dh		;4562
	ld bc,00000h		;4565
	ld h,a			;4568
	ld (bc),a		;4569
	nop			;456a
	nop			;456b
	nop			;456c
	nop			;456d
	ld h,c			;456e
	nop			;456f
	ld l,h			;4570
	ld bc,00000h		;4571
	nop			;4574
	nop			;4575
	ld bc,00000h		;4576
	nop			;4579
	nop			;457a
	nop			;457b
	ld l,h			;457c
	ld bc,0016ch		;457d
	nop			;4580
	nop			;4581
	inc bc			;4582
	nop			;4583
	nop			;4584
	nop			;4585
	nop			;4586
	nop			;4587
	inc hl			;4588
	ld a,(bc)		;4589
	ld l,h			;458a
	ld bc,00000h		;458b
	inc bc			;458e
	ld a,(de)		;458f
	nop			;4590
	nop			;4591
	nop			;4592
	nop			;4593
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
	nop			;45a6
	nop			;45a7
	nop			;45a8
	nop			;45a9
	nop			;45aa
	nop			;45ab
	nop			;45ac
	nop			;45ad
	nop			;45ae
	nop			;45af
	nop			;45b0
	nop			;45b1
	nop			;45b2
	nop			;45b3
	nop			;45b4
	nop			;45b5
	nop			;45b6
	nop			;45b7
	nop			;45b8
	nop			;45b9
	nop			;45ba
	nop			;45bb
	nop			;45bc
	nop			;45bd
	nop			;45be
	nop			;45bf
	ld bc,0000bh		;45c0
	nop			;45c3
	ld hl,(l6c0ah)		;45c4
	ld bc,0016ch		;45c7
	ld bc,00000h		;45ca
	nop			;45cd
	nop			;45ce
	nop			;45cf
	jr z,l45dch		;45d0
	inc hl			;45d2
	rlca			;45d3
	ld l,h			;45d4
	ld bc,0001bh		;45d5
	dec c			;45d8
	dec bc			;45d9
	nop			;45da
	nop			;45db
l45dch:
	daa			;45dc
	ld a,(bc)		;45dd
	ld hl,(l6c07h)		;45de
	ld bc,00000h		;45e1
	nop			;45e4
	nop			;45e5
	nop			;45e6
	nop			;45e7
	inc hl			;45e8
	ld a,(bc)		;45e9
	jr z,l45f3h		;45ea
	inc hl			;45ec
	dec b			;45ed
	ld bc,00100h		;45ee
	dec bc			;45f1
	dec h			;45f2
l45f3h:
	rlca			;45f3
	dec h			;45f4
	ld a,(bc)		;45f5
	daa			;45f6
	rlca			;45f7
	ld hl,(00205h)		;45f8
	nop			;45fb
	nop			;45fc
	nop			;45fd
	daa			;45fe
	rlca			;45ff
	ld h,a			;4600
	ld (bc),a		;4601
	inc hl			;4602
l4603h:
	rlca			;4603
l4604h:
	jr z,$+7		;4604
	ld bc,00100h		;4606
	dec bc			;4609
	jr z,l4613h		;460a
	nop			;460c
	nop			;460d
	dec h			;460e
	rlca			;460f
	daa			;4610
	dec b			;4611
	inc bc			;4612
l4613h:
	nop			;4613
	nop			;4614
	nop			;4615
	ld hl,(00007h)		;4616
	nop			;4619
	ld h,a			;461a
	ld (bc),a		;461b
	inc hl			;461c
	dec b			;461d
	inc bc			;461e
	nop			;461f
l4620h:
	dec c			;4620
	dec bc			;4621
	daa			;4622
	rlca			;4623
	nop			;4624
	nop			;4625
	nop			;4626
	nop			;4627
	dec h			;4628
	dec b			;4629
	ld bc,00000h		;462a
	nop			;462d
	ld h,a			;462e
	ld b,000h		;462f
	nop			;4631
	nop			;4632
	nop			;4633
	ld h,a			;4634
	ld (bc),a		;4635
	nop			;4636
	nop			;4637
	ld bc,0000bh		;4638
	nop			;463b
	nop			;463c
	nop			;463d
	nop			;463e
	nop			;463f
	nop			;4640
	nop			;4641
	ld (bc),a		;4642
	nop			;4643
	nop			;4644
	nop			;4645
	nop			;4646
	nop			;4647
	nop			;4648
	nop			;4649
	nop			;464a
	nop			;464b
	nop			;464c
	nop			;464d
	ld (bc),a		;464e
	ld a,(de)		;464f
	nop			;4650
	nop			;4651
	nop			;4652
	nop			;4653
	nop			;4654
	nop			;4655
	nop			;4656
	nop			;4657
	nop			;4658
	nop			;4659
	nop			;465a
	nop			;465b
	nop			;465c
	nop			;465d
	nop			;465e
	nop			;465f
	nop			;4660
	nop			;4661
	nop			;4662
	nop			;4663
	nop			;4664
	nop			;4665
	nop			;4666
	nop			;4667
	nop			;4668
	nop			;4669
	nop			;466a
	nop			;466b
	nop			;466c
	nop			;466d
	nop			;466e
	nop			;466f
	nop			;4670
	nop			;4671
	nop			;4672
	nop			;4673
	nop			;4674
	nop			;4675
	nop			;4676
	nop			;4677
	nop			;4678
	nop			;4679
	nop			;467a
	nop			;467b
	nop			;467c
	nop			;467d
	nop			;467e
	nop			;467f
	rlca			;4680
	dec bc			;4681
	nop			;4682
	nop			;4683
	inc l			;4684
	nop			;4685
	nop			;4686
	nop			;4687
	ld l,e			;4688
	ld bc,00001h		;4689
	ld h,c			;468c
	nop			;468d
	nop			;468e
	nop			;468f
	ld h,a			;4690
	inc b			;4691
	nop			;4692
	nop			;4693
	nop			;4694
	nop			;4695
	nop			;4696
	nop			;4697
	rlca			;4698
	dec bc			;4699
	inc l			;469a
	nop			;469b
	ld l,e			;469c
	ld bc,00000h		;469d
	ld l,e			;46a0
	ld bc,00001h		;46a1
	ld h,c			;46a4
	nop			;46a5
	ld h,a			;46a6
	inc b			;46a7
	ld l,e			;46a8
	ld (bc),a		;46a9
	nop			;46aa
	nop			;46ab
	nop			;46ac
	nop			;46ad
	nop			;46ae
	nop			;46af
	inc de			;46b0
	dec bc			;46b1
	ld l,e			;46b2
	ld bc,00000h		;46b3
	nop			;46b6
	nop			;46b7
	nop			;46b8
	nop			;46b9
	ld (bc),a		;46ba
	nop			;46bb
	nop			;46bc
	nop			;46bd
	ld l,e			;46be
	ld (bc),a		;46bf
	ld l,e			;46c0
	ld bc,00000h		;46c1
	nop			;46c4
	nop			;46c5
	ld bc,00000h		;46c6
	nop			;46c9
	nop			;46ca
	nop			;46cb
	nop			;46cc
	nop			;46cd
	ld h,e			;46ce
	ld (bc),a		;46cf
	ld h,e			;46d0
	ld (bc),a		;46d1
	inc bc			;46d2
	nop			;46d3
	nop			;46d4
	nop			;46d5
	ld l,e			;46d6
	ld bc,0016bh		;46d7
	nop			;46da
	nop			;46db
	nop			;46dc
	nop			;46dd
	nop			;46de
	nop			;46df
	rlca			;46e0
	dec bc			;46e1
	nop			;46e2
	nop			;46e3
	ld l,e			;46e4
	ld bc,00f2ah		;46e5
	ld sp,00106h		;46e8
	nop			;46eb
	nop			;46ec
l46edh:
	nop			;46ed
	ld l,e			;46ee
	ld bc,l5066h		;46ef
	nop			;46f2
	nop			;46f3
	nop			;46f4
	nop			;46f5
	nop			;46f6
	nop			;46f7
	nop			;46f8
	nop			;46f9
	ld l,e			;46fa
	ld bc,00000h		;46fb
	jr z,l470fh		;46fe
	cpl			;4700
	ld b,002h		;4701
	nop			;4703
	nop			;4704
	nop			;4705
	ld h,d			;4706
	ld b,062h		;4707
	dec d			;4709
	nop			;470a
	nop			;470b
	nop			;470c
	nop			;470d
	ld (bc),a		;470e
l470fh:
	ld a,(de)		;470f
	nop			;4710
	nop			;4711
	nop			;4712
	nop			;4713
	nop			;4714
	nop			;4715
	nop			;4716
	nop			;4717
	nop			;4718
	nop			;4719
	nop			;471a
	nop			;471b
	nop			;471c
	nop			;471d
	nop			;471e
	nop			;471f
	nop			;4720
	nop			;4721
	nop			;4722
	nop			;4723
	nop			;4724
	nop			;4725
	nop			;4726
	nop			;4727
	nop			;4728
	nop			;4729
	nop			;472a
	nop			;472b
	nop			;472c
	nop			;472d
	nop			;472e
	nop			;472f
	nop			;4730
	nop			;4731
	nop			;4732
	nop			;4733
	nop			;4734
	nop			;4735
	nop			;4736
	nop			;4737
	nop			;4738
	nop			;4739
	nop			;473a
	nop			;473b
	nop			;473c
	nop			;473d
	nop			;473e
	nop			;473f
	ld bc,0280bh		;4740
	dec b			;4743
	inc l			;4744
	dec b			;4745
	dec h			;4746
	rrca			;4747
	ld l,h			;4748
	ld (bc),a		;4749
	ld (bc),a		;474a
	nop			;474b
	nop			;474c
	nop			;474d
	nop			;474e
	nop			;474f
	nop			;4750
	nop			;4751
	ld h,a			;4752
	ld (bc),a		;4753
	nop			;4754
	nop			;4755
	ld bc,00d00h		;4756
	dec bc			;4759
	ld h,a			;475a
	ld (bc),a		;475b
	ld h,a			;475c
	ld (bc),a		;475d
	nop			;475e
	nop			;475f
	dec h			;4760
	dec bc			;4761
l4762h:
	inc bc			;4762
	nop			;4763
	nop			;4764
	nop			;4765
	nop			;4766
	nop			;4767
	nop			;4768
	nop			;4769
	nop			;476a
	nop			;476b
	ld h,a			;476c
	ld (bc),a		;476d
	ld bc,00100h		;476e
	dec bc			;4771
	nop			;4772
	nop			;4773
	nop			;4774
	nop			;4775
	nop			;4776
	nop			;4777
	nop			;4778
	nop			;4779
	inc bc			;477a
	nop			;477b
	nop			;477c
	nop			;477d
	nop			;477e
	nop			;477f
	nop			;4780
	nop			;4781
	nop			;4782
	nop			;4783
	nop			;4784
	nop			;4785
	inc bc			;4786
	nop			;4787
	ld bc,0000bh		;4788
	nop			;478b
	nop			;478c
	nop			;478d
	nop			;478e
	nop			;478f
	nop			;4790
	nop			;4791
	ld bc,00000h		;4792
	nop			;4795
	nop			;4796
	nop			;4797
	nop			;4798
	nop			;4799
	nop			;479a
	nop			;479b
	nop			;479c
	nop			;479d
	inc bc			;479e
	nop			;479f
	dec c			;47a0
	dec bc			;47a1
	nop			;47a2
	nop			;47a3
	nop			;47a4
	nop			;47a5
	nop			;47a6
	nop			;47a7
	nop			;47a8
	nop			;47a9
	ld (bc),a		;47aa
	nop			;47ab
	nop			;47ac
	nop			;47ad
	nop			;47ae
	nop			;47af
	nop			;47b0
	nop			;47b1
	nop			;47b2
	nop			;47b3
	nop			;47b4
	nop			;47b5
	ld bc,00100h		;47b6
	dec bc			;47b9
	ld h,c			;47ba
	nop			;47bb
	ld h,c			;47bc
	nop			;47bd
	nop			;47be
	nop			;47bf
	nop			;47c0
	nop			;47c1
	inc bc			;47c2
	nop			;47c3
	nop			;47c4
	nop			;47c5
	nop			;47c6
	nop			;47c7
	nop			;47c8
	nop			;47c9
	nop			;47ca
	nop			;47cb
	nop			;47cc
	nop			;47cd
	ld bc,0001ah		;47ce
	nop			;47d1
	nop			;47d2
	nop			;47d3
	nop			;47d4
	nop			;47d5
	nop			;47d6
	nop			;47d7
	nop			;47d8
	nop			;47d9
	nop			;47da
	nop			;47db
	nop			;47dc
	nop			;47dd
	nop			;47de
	nop			;47df
	nop			;47e0
	nop			;47e1
	nop			;47e2
	nop			;47e3
	nop			;47e4
	nop			;47e5
	nop			;47e6
	nop			;47e7
	nop			;47e8
	nop			;47e9
	nop			;47ea
	nop			;47eb
	nop			;47ec
	nop			;47ed
	nop			;47ee
	nop			;47ef
	nop			;47f0
	nop			;47f1
	nop			;47f2
	nop			;47f3
	nop			;47f4
	nop			;47f5
	nop			;47f6
	nop			;47f7
	nop			;47f8
	nop			;47f9
	nop			;47fa
	nop			;47fb
	nop			;47fc
	nop			;47fd
	nop			;47fe
	nop			;47ff
	nop			;4800
	dec b			;4801
	inc hl			;4802
	ld b,001h		;4803
	xor l			;4805
	nop			;4806
	dec b			;4807
	ld (bc),a		;4808
	inc b			;4809
	inc b			;480a
	rlca			;480b
	rlca			;480c
	ld h,006h		;480d
	rlca			;480f
	ex af,af'		;4810
	ld c,h			;4811
	ld b,(hl)		;4812
	ld l,c			;4813
	defb 0edh ;next byte illegal after ed	;4814
	dec b			;4815
	rlca			;4816
	rlca			;4817
	ex af,af'		;4818
	ld (bc),a		;4819
	rlca			;481a
	inc b			;481b
	ex af,af'		;481c
	ld b,007h		;481d
	rlca			;481f
	ld b,002h		;4820
	ld (bc),a		;4822
	nop			;4823
	defb 0edh ;next byte illegal after ed	;4824
	inc b			;4825
	dec b			;4826
	ld b,027h		;4827
	inc h			;4829
	inc bc			;482a
	nop			;482b
	nop			;482c
	inc b			;482d
	inc b			;482e
	nop			;482f
	ex af,af'		;4830
	ld bc,0ed07h		;4831
	nop			;4834
	ld b,005h		;4835
	inc bc			;4837
	nop			;4838
	ld b,003h		;4839
	daa			;483b
	dec b			;483c
	ex af,af'		;483d
	inc b			;483e
	daa			;483f
	dec b			;4840
	ld bc,005edh		;4841
	ld h,002h		;4844
	nop			;4846
	ex af,af'		;4847
	ld b,006h		;4848
	rlca			;484a
	ld c,b			;484b
	ld b,005h		;484c
	ld (bc),a		;484e
	dec b			;484f
	defb 0edh ;next byte illegal after ed	;4850
	inc b			;4851
	nop			;4852
	nop			;4853
	inc b			;4854
	ld (bc),a		;4855
	ld bc,00705h		;4856
	ld h,026h		;4859
	nop			;485b
	ld b,b			;485c
	inc bc			;485d
	defb 0edh ;next byte illegal after ed	;485e
	nop			;485f
	rlca			;4860
	daa			;4861
	ld b,008h		;4862
	dec b			;4864
	ld b,006h		;4865
	dec b			;4867
	dec b			;4868
	daa			;4869
	ld b,007h		;486a
	defb 0edh ;next byte illegal after ed	;486c
	ld bc,00305h		;486d
	nop			;4870
	daa			;4871
	ld h,(hl)		;4872
	ld b,000h		;4873
	ld bc,00408h		;4875
	rlca			;4878
	defb 0edh ;next byte illegal after ed	;4879
	ld b,003h		;487a
	inc bc			;487c
	nop			;487d
	jr nz,l4885h		;487e
	daa			;4880
	dec b			;4881
	ld b,005h		;4882
	dec b			;4884
l4885h:
	ld bc,00502h		;4885
	defb 0edh ;next byte illegal after ed	;4888
	nop			;4889
	rlca			;488a
	dec b			;488b
	ex af,af'		;488c
	inc b			;488d
	add hl,hl		;488e
	inc bc			;488f
	ld b,006h		;4890
	rlca			;4892
	inc bc			;4893
	ld (bc),a		;4894
	ld h,000h		;4895
	defb 0edh ;next byte illegal after ed	;4897
	ld bc,00207h		;4898
	jr z,l48c0h		;489b
	rlca			;489d
	inc b			;489e
	inc b			;489f
	inc bc			;48a0
	nop			;48a1
	ld (bc),a		;48a2
	ld bc,00601h		;48a3
	defb 0edh ;next byte illegal after ed	;48a6
	rlca			;48a7
	inc bc			;48a8
	ex af,af'		;48a9
	ld h,006h		;48aa
	inc b			;48ac
	dec b			;48ad
	dec b			;48ae
	ld b,003h		;48af
	ex af,af'		;48b1
	ex af,af'		;48b2
	ld b,007h		;48b3
	rlca			;48b5
	defb 0edh ;next byte illegal after ed	;48b6
	inc b			;48b7
	inc b			;48b8
	nop			;48b9
	rlca			;48ba
	dec b			;48bb
	ld h,008h		;48bc
	dec b			;48be
	dec b			;48bf
l48c0h:
	ld bc,l4503h		;48c0
	ld h,0edh		;48c3
	ld bc,00203h		;48c5
	ld b,006h		;48c8
	inc h			;48ca
	ex af,af'		;48cb
	inc b			;48cc
	nop			;48cd
	dec b			;48ce
	ld (bc),a		;48cf
	ld (bc),a		;48d0
	dec b			;48d1
	rlca			;48d2
	defb 0edh ;next byte illegal after ed	;48d3
	rlca			;48d4
	dec b			;48d5
	ld h,006h		;48d6
	nop			;48d8
	daa			;48d9
	ld b,005h		;48da
	ex af,af'		;48dc
	rlca			;48dd
	daa			;48de
	ld (bc),a		;48df
	ld b,b			;48e0
	in b,(c)		;48e1
	dec h			;48e3
	dec b			;48e4
	ld h,007h		;48e5
	ld b,004h		;48e7
	rlca			;48e9
	ld bc,0ed05h		;48ea
	dec h			;48ed
	daa			;48ee
	ex af,af'		;48ef
	ex af,af'		;48f0
	inc b			;48f1
	rlca			;48f2
	dec b			;48f3
	ld bc,00002h		;48f4
	ld b,024h		;48f7
	daa			;48f9
	defb 0edh ;next byte illegal after ed	;48fa
	ld bc,00600h		;48fb
	inc b			;48fe
	rlca			;48ff
	ld b,l			;4900
	ex af,af'		;4901
	nop			;4902
	inc b			;4903
	inc h			;4904
	rlca			;4905
	inc bc			;4906
	defb 0edh ;next byte illegal after ed	;4907
	ld bc,00600h		;4908
	rlca			;490b
	daa			;490c
	dec b			;490d
	inc b			;490e
	ld b,007h		;490f
	add hl,bc		;4911
	inc b			;4912
	rlca			;4913
	dec b			;4914
	ld b,000h		;4915
	defb 0edh ;next byte illegal after ed	;4917
	jr z,l493dh		;4918
	dec b			;491a
	ld h,000h		;491b
	inc b			;491d
	ex af,af'		;491e
	ld b,007h		;491f
	rlca			;4921
	inc b			;4922
	ld b,001h		;4923
	defb 0edh ;next byte illegal after ed	;4925
	rlca			;4926
	inc b			;4927
	ex af,af'		;4928
	ld b,009h		;4929
	dec h			;492b
	ex af,af'		;492c
	rlca			;492d
l492eh:
	ld (bc),a		;492e
	ld b,024h		;492f
	rlca			;4931
	ld c,b			;4932
	dec b			;4933
	defb 0edh ;next byte illegal after ed	;4934
	ld b,024h		;4935
	ld h,020h		;4937
	rlca			;4939
	ex af,af'		;493a
	dec b			;493b
	rlca			;493c
l493dh:
	inc bc			;493d
	dec b			;493e
	jr nz,l492eh		;493f
	ld bc,00506h		;4941
	rlca			;4944
	ld b,a			;4945
	dec b			;4946
	nop			;4947
	dec b			;4948
	ex af,af'		;4949
	rlca			;494a
	rlca			;494b
	ld b,005h		;494c
	defb 0edh ;next byte illegal after ed	;494e
	ld (bc),a		;494f
	jr z,l4957h		;4950
	inc bc			;4952
	dec b			;4953
	ld b,024h		;4954
	ex af,af'		;4956
l4957h:
	inc h			;4957
	nop			;4958
	rlca			;4959
	dec b			;495a
	ld (000edh),hl		;495b
	inc bc			;495e
	rlca			;495f
	rlca			;4960
	dec b			;4961
	ld b,000h		;4962
	dec b			;4964
	ex af,af'		;4965
	daa			;4966
	rlca			;4967
	inc b			;4968
	dec h			;4969
	nop			;496a
	defb 0edh ;next byte illegal after ed	;496b
	ld h,006h		;496c
	dec b			;496e
	inc bc			;496f
	jr nz,l4972h		;4970
l4972h:
	ld b,002h		;4972
	rlca			;4974
	ld b,006h		;4975
	ld (bc),a		;4977
	dec b			;4978
	defb 0edh ;next byte illegal after ed	;4979
	nop			;497a
	inc b			;497b
	ld (bc),a		;497c
	ld b,006h		;497d
	daa			;497f
	daa			;4980
	dec b			;4981
	ld h,001h		;4982
	nop			;4984
	rlca			;4985
	ld (bc),a		;4986
	defb 0edh ;next byte illegal after ed	;4987
	jr z,$+103		;4988
	dec b			;498a
	ld bc,00800h		;498b
	inc b			;498e
	rlca			;498f
	ld bc,00205h		;4990
	ld (bc),a		;4993
	defb 0edh ;next byte illegal after ed	;4994
	ld b,007h		;4995
	rlca			;4997
	inc b			;4998
	ld b,(hl)		;4999
	inc bc			;499a
	daa			;499b
	ld (bc),a		;499c
	nop			;499d
	ld h,006h		;499e
	inc b			;49a0
	defb 0edh ;next byte illegal after ed	;49a1
	ld bc,00702h		;49a2
	dec b			;49a5
	ld b,000h		;49a6
	inc b			;49a8
	daa			;49a9
	ld b,023h		;49aa
	ld b,008h		;49ac
	ld b,007h		;49ae
	defb 0edh ;next byte illegal after ed	;49b0
	ld bc,00505h		;49b1
	inc b			;49b4
	ex af,af'		;49b5
	ld bc,00007h		;49b6
	nop			;49b9
	dec b			;49ba
	ld h,003h		;49bb
	ld bc,00005h		;49bd
	defb 0edh ;next byte illegal after ed	;49c0
	nop			;49c1
	dec b			;49c2
	dec b			;49c3
	rlca			;49c4
	inc b			;49c5
	ex af,af'		;49c6
	inc bc			;49c7
	rlca			;49c8
	nop			;49c9
	ld b,004h		;49ca
	rlca			;49cc
	dec b			;49cd
	jr z,l49d6h		;49ce
	defb 0edh ;next byte illegal after ed	;49d0
	inc b			;49d1
	rlca			;49d2
	ld bc,00206h		;49d3
l49d6h:
	dec b			;49d6
	dec b			;49d7
	daa			;49d8
	ld h,005h		;49d9
	inc b			;49db
	nop			;49dc
	ld (bc),a		;49dd
	inc b			;49de
	defb 0edh ;next byte illegal after ed	;49df
	dec h			;49e0
	daa			;49e1
	inc hl			;49e2
	inc b			;49e3
	ld b,006h		;49e4
	rlca			;49e6
	dec b			;49e7
	dec b			;49e8
	ld bc,00501h		;49e9
	ld b,0edh		;49ec
	ld b,024h		;49ee
	nop			;49f0
	dec b			;49f1
	rlca			;49f2
	rlca			;49f3
	inc b			;49f4
	dec b			;49f5
	ld h,008h		;49f6
	ld b,004h		;49f8
	rlca			;49fa
	rlca			;49fb
	defb 0edh ;next byte illegal after ed	;49fc
	ex af,af'		;49fd
	ld (bc),a		;49fe
	rlca			;49ff
	nop			;4a00
	ex af,af'		;4a01
	dec b			;4a02
	ld b,003h		;4a03
	nop			;4a05
	ld b,004h		;4a06
	rlca			;4a08
	inc bc			;4a09
	inc b			;4a0a
	nop			;4a0b
	ld (bc),a		;4a0c
	defb 0edh ;next byte illegal after ed	;4a0d
	dec b			;4a0e
	dec h			;4a0f
	rlca			;4a10
	ld b,001h		;4a11
	rlca			;4a13
	inc bc			;4a14
	jr z,l4a1dh		;4a15
	inc b			;4a17
	ld b,000h		;4a18
	inc b			;4a1a
	dec b			;4a1b
	defb 0edh ;next byte illegal after ed	;4a1c
l4a1dh:
	nop			;4a1d
	daa			;4a1e
	ld bc,00400h		;4a1f
	ld bc,00402h		;4a22
	ld b,l			;4a25
	ex af,af'		;4a26
	add hl,bc		;4a27
	ex af,af'		;4a28
	ld bc,l46edh		;4a29
	inc b			;4a2c
	rlca			;4a2d
	ld b,021h		;4a2e
	ld (bc),a		;4a30
	rlca			;4a31
	dec b			;4a32
	ex af,af'		;4a33
	nop			;4a34
	rlca			;4a35
	ld bc,0ed09h		;4a36
	inc b			;4a39
	ld c,b			;4a3a
	nop			;4a3b
	ld b,005h		;4a3c
	ld b,026h		;4a3e
	rlca			;4a40
	ld bc,00704h		;4a41
	dec b			;4a44
	ld bc,000edh		;4a45
	ld b,006h		;4a48
	nop			;4a4a
	inc b			;4a4b
	ld b,007h		;4a4c
	ld bc,00504h		;4a4e
	rlca			;4a51
	ld b,003h		;4a52
	inc b			;4a54
	ld b,007h		;4a55
	defb 0edh ;next byte illegal after ed	;4a57
	dec b			;4a58
	dec b			;4a59
	nop			;4a5a
	ld h,006h		;4a5b
	inc b			;4a5d
	ld bc,00305h		;4a5e
	rlca			;4a61
	inc b			;4a62
	dec b			;4a63
	jr nz,l4a6ah		;4a64
	defb 0edh ;next byte illegal after ed	;4a66
	ld b,006h		;4a67
	rlca			;4a69
l4a6ah:
	dec b			;4a6a
	ld b,004h		;4a6b
	jr nz,l4a77h		;4a6d
	add hl,bc		;4a6f
	ld bc,00008h		;4a70
	dec b			;4a73
	ld bc,0ed01h		;4a74
l4a77h:
	ld b,004h		;4a77
	jr z,$+5		;4a79
	nop			;4a7b
	rlca			;4a7c
	ld bc,02728h		;4a7d
	dec b			;4a80
	ld b,003h		;4a81
	rlca			;4a83
	defb 0edh ;next byte illegal after ed	;4a84
	rlca			;4a85
	ld b,004h		;4a86
	ld (bc),a		;4a88
	ld b,006h		;4a89
	rlca			;4a8b
	inc b			;4a8c
	ld b,046h		;4a8d
	ex af,af'		;4a8f
	ld b,008h		;4a90
	rlca			;4a92
	defb 0edh ;next byte illegal after ed	;4a93
	ld b,005h		;4a94
	ex af,af'		;4a96
	ld b,006h		;4a97
	inc bc			;4a99
	ex af,af'		;4a9a
	dec b			;4a9b
	dec b			;4a9c
	inc b			;4a9d
	rlca			;4a9e
	nop			;4a9f
	dec b			;4aa0
	dec b			;4aa1
	inc b			;4aa2
	ld (bc),a		;4aa3
	defb 0edh ;next byte illegal after ed	;4aa4
	inc bc			;4aa5
	ld b,001h		;4aa6
	dec b			;4aa8
	dec b			;4aa9
	rlca			;4aaa
	inc bc			;4aab
	ld b,006h		;4aac
	ex af,af'		;4aae
	inc bc			;4aaf
	dec b			;4ab0
	ld (bc),a		;4ab1
	rlca			;4ab2
	ld b,005h		;4ab3
	defb 0edh ;next byte illegal after ed	;4ab5
	ld bc,00502h		;4ab6
	rlca			;4ab9
	rlca			;4aba
	dec b			;4abb
	ld b,003h		;4abc
	dec b			;4abe
	rlca			;4abf
	ld b,006h		;4ac0
	inc b			;4ac2
	jr nz,l4acah		;4ac3
	defb 0edh ;next byte illegal after ed	;4ac5
	ld b,006h		;4ac6
	inc bc			;4ac8
	rlca			;4ac9
l4acah:
	nop			;4aca
	dec b			;4acb
	inc bc			;4acc
	rlca			;4acd
	daa			;4ace
	ex af,af'		;4acf
	rlca			;4ad0
	ld (bc),a		;4ad1
	dec b			;4ad2
	nop			;4ad3
	ld h,0edh		;4ad4
	ld h,000h		;4ad6
	ld (bc),a		;4ad8
	inc bc			;4ad9
	ld b,005h		;4ada
	rlca			;4adc
	nop			;4add
	inc b			;4ade
	rlca			;4adf
	dec b			;4ae0
	ld c,b			;4ae1
	nop			;4ae2
	defb 0edh ;next byte illegal after ed	;4ae3
	ld b,003h		;4ae4
	daa			;4ae6
	dec b			;4ae7
	nop			;4ae8
	ld h,004h		;4ae9
	nop			;4aeb
	nop			;4aec
	rlca			;4aed
	inc b			;4aee
	nop			;4aef
	ld h,0edh		;4af0
	rlca			;4af2
	dec b			;4af3
	rlca			;4af4
	daa			;4af5
	inc bc			;4af6
	dec h			;4af7
	inc b			;4af8
	ld b,003h		;4af9
	inc b			;4afb
	ld b,007h		;4afc
	dec b			;4afe
	defb 0edh ;next byte illegal after ed	;4aff
	inc b			;4b00
	rlca			;4b01
	rlca			;4b02
	ld b,004h		;4b03
	ld bc,00606h		;4b05
	dec b			;4b08
	ld (bc),a		;4b09
	nop			;4b0a
	dec b			;4b0b
	ld b,007h		;4b0c
	inc b			;4b0e
	ld b,0edh		;4b0f
	inc bc			;4b11
	daa			;4b12
	ld b,004h		;4b13
	dec b			;4b15
	nop			;4b16
	ld h,005h		;4b17
	inc b			;4b19
	ld (bc),a		;4b1a
	ld (bc),a		;4b1b
	inc bc			;4b1c
	dec b			;4b1d
	daa			;4b1e
	defb 0edh ;next byte illegal after ed	;4b1f
	ld b,004h		;4b20
	ld b,002h		;4b22
	rlca			;4b24
	ld b,008h		;4b25
	inc b			;4b27
	daa			;4b28
	nop			;4b29
	ld hl,l4508h		;4b2a
	defb 0edh ;next byte illegal after ed	;4b2d
	nop			;4b2e
	ld b,005h		;4b2f
	nop			;4b31
	daa			;4b32
	ld b,001h		;4b33
	ld b,006h		;4b35
	rlca			;4b37
	nop			;4b38
	dec b			;4b39
	ld b,0edh		;4b3a
	ld (00805h),hl		;4b3c
	nop			;4b3f
	rlca			;4b40
	rlca			;4b41
	inc b			;4b42
	ld b,006h		;4b43
	inc h			;4b45
	dec b			;4b46
	inc b			;4b47
	jr nz,$+10		;4b48
	defb 0edh ;next byte illegal after ed	;4b4a
	ld b,026h		;4b4b
	rlca			;4b4d
	dec b			;4b4e
	ex af,af'		;4b4f
	nop			;4b50
	ld h,024h		;4b51
	nop			;4b53
	inc hl			;4b54
	rlca			;4b55
	defb 0edh ;next byte illegal after ed	;4b56
	dec h			;4b57
	ld (bc),a		;4b58
	rlca			;4b59
	ld h,005h		;4b5a
	ld h,007h		;4b5c
	inc h			;4b5e
	dec b			;4b5f
	rlca			;4b60
	dec b			;4b61
	dec b			;4b62
	defb 0edh ;next byte illegal after ed	;4b63
	nop			;4b64
	inc bc			;4b65
	inc b			;4b66
	dec h			;4b67
	ld b,004h		;4b68
	inc bc			;4b6a
	ld b,026h		;4b6b
	ex af,af'		;4b6d
	rlca			;4b6e
	ld bc,00606h		;4b6f
	defb 0edh ;next byte illegal after ed	;4b72
	rlca			;4b73
	dec b			;4b74
	inc bc			;4b75
	nop			;4b76
	rlca			;4b77
	inc b			;4b78
	ld b,000h		;4b79
	inc b			;4b7b
	ex af,af'		;4b7c
	dec h			;4b7d
	ld b,007h		;4b7e
	inc b			;4b80
	inc bc			;4b81
	defb 0edh ;next byte illegal after ed	;4b82
	ld b,005h		;4b83
	nop			;4b85
	ld b,047h		;4b86
	nop			;4b88
	ld b,001h		;4b89
	ex af,af'		;4b8b
	nop			;4b8c
	dec b			;4b8d
	daa			;4b8e
	nop			;4b8f
	defb 0edh ;next byte illegal after ed	;4b90
	inc bc			;4b91
	ld b,047h		;4b92
	inc b			;4b94
	ld b,005h		;4b95
	jr z,l4b99h		;4b97
l4b99h:
	ld (bc),a		;4b99
	ld b,005h		;4b9a
	rlca			;4b9c
	nop			;4b9d
	defb 0edh ;next byte illegal after ed	;4b9e
	ld (bc),a		;4b9f
	rlca			;4ba0
	nop			;4ba1
	dec b			;4ba2
	inc h			;4ba3
	rlca			;4ba4
	inc bc			;4ba5
	ld b,(hl)		;4ba6
	rlca			;4ba7
	inc b			;4ba8
	rlca			;4ba9
	rlca			;4baa
	inc b			;4bab
	defb 0edh ;next byte illegal after ed	;4bac
	inc b			;4bad
	dec b			;4bae
	ld b,006h		;4baf
	ld (bc),a		;4bb1
	nop			;4bb2
	dec b			;4bb3
	dec b			;4bb4
	rlca			;4bb5
	inc bc			;4bb6
	ld b,004h		;4bb7
	rlca			;4bb9
	rlca			;4bba
	ld h,023h		;4bbb
	defb 0edh ;next byte illegal after ed	;4bbd
	rlca			;4bbe
	ld bc,00006h		;4bbf
	ex af,af'		;4bc2
	dec b			;4bc3
	daa			;4bc4
	ld (bc),a		;4bc5
	ld b,002h		;4bc6
	dec b			;4bc8
	dec b			;4bc9
	ex af,af'		;4bca
	defb 0edh ;next byte illegal after ed	;4bcb
	ld bc,00607h		;4bcc
	ex af,af'		;4bcf
	nop			;4bd0
	rlca			;4bd1
	dec b			;4bd2
	ld b,003h		;4bd3
	ld b,a			;4bd5
	inc h			;4bd6
	rlca			;4bd7
	dec b			;4bd8
	defb 0edh ;next byte illegal after ed	;4bd9
	inc b			;4bda
	ex af,af'		;4bdb
	nop			;4bdc
	rlca			;4bdd
	dec b			;4bde
	nop			;4bdf
	ld h,(hl)		;4be0
	ld (bc),a		;4be1
	inc bc			;4be2
	dec b			;4be3
	rlca			;4be4
	inc bc			;4be5
	ex af,af'		;4be6
	defb 0edh ;next byte illegal after ed	;4be7
	dec b			;4be8
	ld b,007h		;4be9
	inc bc			;4beb
	ld b,007h		;4bec
	nop			;4bee
	ld b,006h		;4bef
	dec b			;4bf1
	inc bc			;4bf2
	rlca			;4bf3
	ex af,af'		;4bf4
	inc b			;4bf5
	rlca			;4bf6
	rlca			;4bf7
	defb 0edh ;next byte illegal after ed	;4bf8
	ex af,af'		;4bf9
	ld bc,00527h		;4bfa
	nop			;4bfd
	ld b,006h		;4bfe
	ex af,af'		;4c00
	inc bc			;4c01
	rlca			;4c02
	dec b			;4c03
	ex af,af'		;4c04
	ld b,005h		;4c05
	ld bc,006edh		;4c07
	inc b			;4c0a
	ex af,af'		;4c0b
	ld bc,00427h		;4c0c
	rlca			;4c0f
	dec b			;4c10
	ld bc,00500h		;4c11
	ld b,007h		;4c14
	ld bc,0ed06h		;4c16
	inc b			;4c19
	rlca			;4c1a
	nop			;4c1b
	ld bc,00624h		;4c1c
	nop			;4c1f
	ld b,007h		;4c20
	inc b			;4c22
	ld h,007h		;4c23
	inc bc			;4c25
	rlca			;4c26
	defb 0edh ;next byte illegal after ed	;4c27
	ld bc,02605h		;4c28
	ld (bc),a		;4c2b
	ld b,002h		;4c2c
	ex af,af'		;4c2e
	inc b			;4c2f
	rlca			;4c30
	ld c,b			;4c31
	ld bc,0ed20h		;4c32
	rlca			;4c35
	ld (bc),a		;4c36
	dec b			;4c37
	ld b,020h		;4c38
	jr z,$+5		;4c3a
	rlca			;4c3c
	rlca			;4c3d
	ld bc,00706h		;4c3e
	nop			;4c41
	ld b,0edh		;4c42
	daa			;4c44
	nop			;4c45
	ld b,006h		;4c46
	dec b			;4c48
	ex af,af'		;4c49
	nop			;4c4a
	dec b			;4c4b
	inc h			;4c4c
	ld b,025h		;4c4d
	ex af,af'		;4c4f
	dec b			;4c50
	defb 0edh ;next byte illegal after ed	;4c51
	ld h,006h		;4c52
	inc bc			;4c54
	dec b			;4c55
	rlca			;4c56
	rlca			;4c57
	dec b			;4c58
	ld bc,00306h		;4c59
	dec b			;4c5c
	inc b			;4c5d
	inc bc			;4c5e
	rlca			;4c5f
	ld b,0edh		;4c60
	ld b,005h		;4c62
	dec b			;4c64
	ld b,024h		;4c65
	ld bc,00506h		;4c67
	dec b			;4c6a
	inc bc			;4c6b
	ex af,af'		;4c6c
	daa			;4c6d
	ld (bc),a		;4c6e
	ld h,0edh		;4c6f
	inc b			;4c71
	ld b,001h		;4c72
	daa			;4c74
	ld (bc),a		;4c75
	jr nz,l4ca0h		;4c76
	ld (bc),a		;4c78
	rlca			;4c79
	ld h,004h		;4c7a
	defb 0edh ;next byte illegal after ed	;4c7c
	jr nz,l4c86h		;4c7d
	ld b,001h		;4c7f
	rlca			;4c81
	nop			;4c82
	jr z,$+4		;4c83
	dec b			;4c85
l4c86h:
	ld b,006h		;4c86
	jr nz,l4cb1h		;4c88
	defb 0edh ;next byte illegal after ed	;4c8a
	inc bc			;4c8b
	ld b,007h		;4c8c
	nop			;4c8e
	ld b,006h		;4c8f
	nop			;4c91
	rlca			;4c92
	ld h,026h		;4c93
	inc b			;4c95
	rlca			;4c96
	nop			;4c97
	defb 0edh ;next byte illegal after ed	;4c98
	ld h,006h		;4c99
	inc b			;4c9b
	rlca			;4c9c
	ld b,000h		;4c9d
	inc bc			;4c9f
l4ca0h:
	dec b			;4ca0
	ld h,000h		;4ca1
	inc b			;4ca3
	ex af,af'		;4ca4
	ld bc,0ed06h		;4ca5
	inc b			;4ca8
	rlca			;4ca9
	ld bc,00303h		;4caa
	rlca			;4cad
	ld bc,00006h		;4cae
l4cb1h:
	ex af,af'		;4cb1
	inc b			;4cb2
	ld b,023h		;4cb3
	ex af,af'		;4cb5
	inc b			;4cb6
	defb 0edh ;next byte illegal after ed	;4cb7
	ld b,026h		;4cb8
	ld bc,00525h		;4cba
	ld b,004h		;4cbd
	ld b,a			;4cbf
	ld bc,l4620h		;4cc0
	defb 0edh ;next byte illegal after ed	;4cc3
	inc b			;4cc4
	ld b,047h		;4cc5
	inc b			;4cc7
	ld hl,00408h		;4cc8
	rlca			;4ccb
	ld h,001h		;4ccc
	defb 0edh ;next byte illegal after ed	;4cce
	inc b			;4ccf
	inc b			;4cd0
	rlca			;4cd1
	ld (bc),a		;4cd2
	dec b			;4cd3
	ld b,l			;4cd4
	inc b			;4cd5
	ld h,006h		;4cd6
	ld (bc),a		;4cd8
	daa			;4cd9
	jr nz,$-17		;4cda
	ex af,af'		;4cdc
	ld (bc),a		;4cdd
	ld b,007h		;4cde
	nop			;4ce0
	ld b,006h		;4ce1
	nop			;4ce3
	ex af,af'		;4ce4
	ld (bc),a		;4ce5
	daa			;4ce6
	ld b,021h		;4ce7
	ex af,af'		;4ce9
	defb 0edh ;next byte illegal after ed	;4cea
	dec b			;4ceb
	ld b,023h		;4cec
	dec b			;4cee
	ld b,046h		;4cef
	inc b			;4cf1
	ex af,af'		;4cf2
	ld b,003h		;4cf3
	ex af,af'		;4cf5
	inc b			;4cf6
	defb 0edh ;next byte illegal after ed	;4cf7
	dec b			;4cf8
	inc bc			;4cf9
	rlca			;4cfa
	inc b			;4cfb
	dec b			;4cfc
	rlca			;4cfd
	daa			;4cfe
	inc b			;4cff
	dec b			;4d00
	nop			;4d01
	rlca			;4d02
	ld bc,02706h		;4d03
	inc b			;4d06
	defb 0edh ;next byte illegal after ed	;4d07
	dec b			;4d08
	inc bc			;4d09
	rlca			;4d0a
	nop			;4d0b
	jr z,l4d11h		;4d0c
	ld bc,00307h		;4d0e
l4d11h:
	dec b			;4d11
	ld b,006h		;4d12
	ld b,a			;4d14
	ld bc,000edh		;4d15
	dec h			;4d18
	ld b,(hl)		;4d19
	inc h			;4d1a
	rlca			;4d1b
	dec b			;4d1c
	ex af,af'		;4d1d
	nop			;4d1e
	rlca			;4d1f
	ld (bc),a		;4d20
	defb 0edh ;next byte illegal after ed	;4d21
	dec b			;4d22
	ld b,023h		;4d23
	jr z,l4d2ch		;4d25
	ld h,006h		;4d27
	jr nz,$+10		;4d29
	rlca			;4d2b
l4d2ch:
	jr z,l4d2eh		;4d2c
l4d2eh:
	defb 0edh ;next byte illegal after ed	;4d2e
	ld (bc),a		;4d2f
	rlca			;4d30
	inc h			;4d31
	ld b,005h		;4d32
	jr nz,l4d3eh		;4d34
	ld b,a			;4d36
	ld b,001h		;4d37
	dec b			;4d39
	defb 0edh ;next byte illegal after ed	;4d3a
	nop			;4d3b
	ld b,006h		;4d3c
l4d3eh:
	dec h			;4d3e
	dec b			;4d3f
	rlca			;4d40
	nop			;4d41
	inc b			;4d42
	ld b,005h		;4d43
	dec b			;4d45
	inc b			;4d46
	ex af,af'		;4d47
	nop			;4d48
	ld b,0edh		;4d49
	ld b,025h		;4d4b
	rlca			;4d4d
	dec b			;4d4e
	inc b			;4d4f
	inc b			;4d50
	ld b,a			;4d51
	dec b			;4d52
	ld bc,00606h		;4d53
	rlca			;4d56
	inc b			;4d57
	defb 0edh ;next byte illegal after ed	;4d58
	ld b,000h		;4d59
	daa			;4d5b
	inc bc			;4d5c
	inc b			;4d5d
	ld b,003h		;4d5e
	inc bc			;4d60
	inc b			;4d61
	ld h,l			;4d62
	ld b,007h		;4d63
	inc b			;4d65
	defb 0edh ;next byte illegal after ed	;4d66
	dec b			;4d67
	inc h			;4d68
	ld b,007h		;4d69
	inc bc			;4d6b
	ex af,af'		;4d6c
	ld (bc),a		;4d6d
	rlca			;4d6e
	dec b			;4d6f
	inc b			;4d70
	inc bc			;4d71
	ld bc,00325h		;4d72
	defb 0edh ;next byte illegal after ed	;4d75
	ld b,004h		;4d76
	daa			;4d78
	inc hl			;4d79
	dec b			;4d7a
	ld b,001h		;4d7b
	daa			;4d7d
	dec h			;4d7e
	dec b			;4d7f
	ld h,0edh		;4d80
	ld bc,00506h		;4d82
	ex af,af'		;4d85
	nop			;4d86
	dec b			;4d87
	dec h			;4d88
	ld b,007h		;4d89
	inc b			;4d8b
	inc bc			;4d8c
	nop			;4d8d
	ex af,af'		;4d8e
	dec b			;4d8f
	defb 0edh ;next byte illegal after ed	;4d90
	ld b,002h		;4d91
	rlca			;4d93
	dec b			;4d94
	inc b			;4d95
	ex af,af'		;4d96
	nop			;4d97
	rlca			;4d98
	inc bc			;4d99
	dec h			;4d9a
	ld h,a			;4d9b
	ld bc,0ed00h		;4d9c
	inc b			;4d9f
	ex af,af'		;4da0
	ld (bc),a		;4da1
	rlca			;4da2
	ld hl,06706h		;4da3
	inc b			;4da6
	ld b,005h		;4da7
	ld bc,006edh		;4da9
	dec b			;4dac
	rlca			;4dad
	inc hl			;4dae
	ex af,af'		;4daf
	rlca			;4db0
	ld b,046h		;4db1
	inc b			;4db3
	jr nz,$-119		;4db4
	inc bc			;4db6
	defb 0edh ;next byte illegal after ed	;4db7
	inc b			;4db8
	jr nz,l4dddh		;4db9
	ex af,af'		;4dbb
	rlca			;4dbc
	inc b			;4dbd
	dec h			;4dbe
	ld b,027h		;4dbf
	defb 0edh ;next byte illegal after ed	;4dc1
	inc b			;4dc2
	jr nz,l4dedh		;4dc3
	inc bc			;4dc5
	dec b			;4dc6
	ld b,006h		;4dc7
	inc bc			;4dc9
	rlca			;4dca
	inc b			;4dcb
	ld (bc),a		;4dcc
	ex af,af'		;4dcd
	nop			;4dce
	defb 0edh ;next byte illegal after ed	;4dcf
	ld h,003h		;4dd0
	ld bc,00008h		;4dd2
	inc bc			;4dd5
	daa			;4dd6
	ld (bc),a		;4dd7
	daa			;4dd8
	inc b			;4dd9
	nop			;4dda
	ld h,003h		;4ddb
l4dddh:
	defb 0edh ;next byte illegal after ed	;4ddd
	dec b			;4dde
	daa			;4ddf
	ld (bc),a		;4de0
	nop			;4de1
	dec b			;4de2
	ld b,002h		;4de3
	daa			;4de5
	inc b			;4de6
	ld b,026h		;4de7
	dec b			;4de9
	defb 0edh ;next byte illegal after ed	;4dea
	ld h,001h		;4deb
l4dedh:
	dec b			;4ded
	dec b			;4dee
	ld b,026h		;4def
	inc b			;4df1
	ld (bc),a		;4df2
	inc b			;4df3
	ld bc,04506h		;4df4
	rlca			;4df7
	defb 0edh ;next byte illegal after ed	;4df8
	ld b,005h		;4df9
	ld b,026h		;4dfb
	rlca			;4dfd
	ld b,004h		;4dfe
	inc b			;4e00
	daa			;4e01
	dec b			;4e02
	inc b			;4e03
	dec h			;4e04
	ld b,0edh		;4e05
	ld b,a			;4e07
	nop			;4e08
	inc b			;4e09
	inc hl			;4e0a
	ld b,007h		;4e0b
	ld h,025h		;4e0d
	ld h,a			;4e0f
	inc bc			;4e10
	defb 0edh ;next byte illegal after ed	;4e11
	nop			;4e12
	ld (bc),a		;4e13
	dec b			;4e14
	ld (bc),a		;4e15
	ld b,003h		;4e16
	inc b			;4e18
	rlca			;4e19
	ld b,004h		;4e1a
	rlca			;4e1c
	dec b			;4e1d
	inc h			;4e1e
	defb 0edh ;next byte illegal after ed	;4e1f
	rlca			;4e20
	ex af,af'		;4e21
	ld (bc),a		;4e22
	ld b,025h		;4e23
	dec b			;4e25
	nop			;4e26
	daa			;4e27
	ld (bc),a		;4e28
	dec b			;4e29
	dec b			;4e2a
	ld b,003h		;4e2b
	defb 0edh ;next byte illegal after ed	;4e2d
	dec b			;4e2e
	dec b			;4e2f
	ld b,026h		;4e30
	rlca			;4e32
	ld b,005h		;4e33
	inc b			;4e35
	ld b,006h		;4e36
	dec b			;4e38
	rlca			;4e39
	inc bc			;4e3a
	inc b			;4e3b
	ld b,0edh		;4e3c
	dec b			;4e3e
	rlca			;4e3f
	inc b			;4e40
	ld b,005h		;4e41
	dec b			;4e43
	ld h,a			;4e44
	nop			;4e45
	ld bc,00602h		;4e46
	ld b,025h		;4e49
	ld i,a			;4e4b
	ld bc,00605h		;4e4d
	inc bc			;4e50
	dec b			;4e51
	daa			;4e52
	inc b			;4e53
	inc bc			;4e54
	dec h			;4e55
	daa			;4e56
	defb 0edh ;next byte illegal after ed	;4e57
	inc h			;4e58
	ld b,007h		;4e59
	ld b,004h		;4e5b
	daa			;4e5d
	nop			;4e5e
	ld bc,00508h		;4e5f
	ld b,006h		;4e62
	ld (bc),a		;4e64
	defb 0edh ;next byte illegal after ed	;4e65
	rlca			;4e66
	inc bc			;4e67
	ld h,046h		;4e68
	dec b			;4e6a
	nop			;4e6b
	rlca			;4e6c
	inc b			;4e6d
	ld b,007h		;4e6e
	inc b			;4e70
	ld b,061h		;4e71
	defb 0edh ;next byte illegal after ed	;4e73
	rlca			;4e74
	ex af,af'		;4e75
	rlca			;4e76
	dec b			;4e77
	ld h,026h		;4e78
	inc bc			;4e7a
	ld b,a			;4e7b
	ld b,002h		;4e7c
	defb 0edh ;next byte illegal after ed	;4e7e
	dec h			;4e7f
	ld b,024h		;4e80
	rlca			;4e82
	dec h			;4e83
	ld h,001h		;4e84
	rlca			;4e86
	inc b			;4e87
	ld b,003h		;4e88
	defb 0edh ;next byte illegal after ed	;4e8a
	rlca			;4e8b
	dec b			;4e8c
	ld bc,00606h		;4e8d
	dec b			;4e90
	ld b,a			;4e91
	ld bc,00405h		;4e92
	ld h,003h		;4e95
	ld b,0edh		;4e97
	dec h			;4e99
	dec b			;4e9a
	inc bc			;4e9b
	rlca			;4e9c
	jr nz,l4ea7h		;4e9d
	ld b,004h		;4e9f
	dec b			;4ea1
	dec h			;4ea2
	daa			;4ea3
	inc b			;4ea4
	defb 0edh ;next byte illegal after ed	;4ea5
	inc bc			;4ea6
l4ea7h:
	ld b,020h		;4ea7
	jr z,l4eb0h		;4ea9
	inc bc			;4eab
	rlca			;4eac
	ld (bc),a		;4ead
	ld b,027h		;4eae
l4eb0h:
	nop			;4eb0
	ld (bc),a		;4eb1
	ld b,0edh		;4eb2
	ld b,a			;4eb4
	inc bc			;4eb5
	nop			;4eb6
	inc bc			;4eb7
	dec b			;4eb8
	dec b			;4eb9
	inc b			;4eba
	ld b,a			;4ebb
	nop			;4ebc
	ld (bc),a		;4ebd
	inc bc			;4ebe
	ld b,0edh		;4ebf
	dec b			;4ec1
	dec b			;4ec2
	inc b			;4ec3
	daa			;4ec4
	nop			;4ec5
	ld bc,00326h		;4ec6
	ld h,001h		;4ec9
	ld b,003h		;4ecb
	ld b,a			;4ecd
	defb 0edh ;next byte illegal after ed	;4ece
	nop			;4ecf
	dec b			;4ed0
	nop			;4ed1
	ld b,003h		;4ed2
	rlca			;4ed4
	ld b,004h		;4ed5
	dec b			;4ed7
	dec b			;4ed8
	inc b			;4ed9
	ld b,027h		;4eda
	ld bc,002edh		;4edc
	inc b			;4edf
	ld b,(hl)		;4ee0
	dec b			;4ee1
	inc h			;4ee2
	ld (bc),a		;4ee3
	rlca			;4ee4
	nop			;4ee5
	ex af,af'		;4ee6
	ld (bc),a		;4ee7
	daa			;4ee8
	inc b			;4ee9
	defb 0edh ;next byte illegal after ed	;4eea
	ld bc,02008h		;4eeb
	rlca			;4eee
	dec h			;4eef
	ld b,007h		;4ef0
	ld bc,00506h		;4ef2
	rlca			;4ef5
	ld b,026h		;4ef6
	defb 0edh ;next byte illegal after ed	;4ef8
	dec b			;4ef9
	rlca			;4efa
	inc b			;4efb
	dec h			;4efc
	rlca			;4efd
	ld b,006h		;4efe
	dec b			;4f00
	daa			;4f01
	inc bc			;4f02
	dec b			;4f03
	inc b			;4f04
	rlca			;4f05
	defb 0edh ;next byte illegal after ed	;4f06
	ld bc,02606h		;4f07
	dec b			;4f0a
	ld (bc),a		;4f0b
	rlca			;4f0c
	ld h,005h		;4f0d
	ld h,a			;4f0f
	dec b			;4f10
	ld bc,0ed03h		;4f11
	ld (bc),a		;4f14
	dec b			;4f15
	ld b,006h		;4f16
	ld b,a			;4f18
	ld (bc),a		;4f19
	nop			;4f1a
	dec b			;4f1b
	ld b,004h		;4f1c
	inc b			;4f1e
	inc bc			;4f1f
	dec b			;4f20
	defb 0edh ;next byte illegal after ed	;4f21
	dec b			;4f22
	rlca			;4f23
	ld b,026h		;4f24
	inc h			;4f26
	daa			;4f27
	inc bc			;4f28
	jr nz,l4f31h		;4f29
	rlca			;4f2b
	dec b			;4f2c
	dec b			;4f2d
	defb 0edh ;next byte illegal after ed	;4f2e
	ld b,004h		;4f2f
l4f31h:
	rlca			;4f31
	dec b			;4f32
	inc bc			;4f33
	ld h,a			;4f34
	inc b			;4f35
	jr nz,l4f3bh		;4f36
	ld b,006h		;4f38
	nop			;4f3a
l4f3bh:
	defb 0edh ;next byte illegal after ed	;4f3b
	ex af,af'		;4f3c
	ld bc,00487h		;4f3d
	inc bc			;4f40
	nop			;4f41
	inc bc			;4f42
	nop			;4f43
	ex af,af'		;4f44
	ld bc,00706h		;4f45
	defb 0edh ;next byte illegal after ed	;4f48
	inc bc			;4f49
	ld h,025h		;4f4a
	dec h			;4f4c
	rlca			;4f4d
	ld h,086h		;4f4e
	dec b			;4f50
	ld b,0edh		;4f51
	ld (bc),a		;4f53
	ld b,004h		;4f54
	rlca			;4f56
	ld (bc),a		;4f57
	dec b			;4f58
	dec h			;4f59
	ld h,003h		;4f5a
	dec b			;4f5c
	inc b			;4f5d
	daa			;4f5e
	inc hl			;4f5f
	defb 0edh ;next byte illegal after ed	;4f60
	inc bc			;4f61
	ld h,005h		;4f62
	ld b,002h		;4f64
	daa			;4f66
	dec b			;4f67
	ld (bc),a		;4f68
	ld b,006h		;4f69
	rlca			;4f6b
	inc b			;4f6c
	defb 0edh ;next byte illegal after ed	;4f6d
	dec b			;4f6e
	ld b,a			;4f6f
	inc hl			;4f70
	dec b			;4f71
	ld b,027h		;4f72
	inc bc			;4f74
	inc b			;4f75
	dec b			;4f76
	rlca			;4f77
	inc b			;4f78
	dec b			;4f79
	defb 0edh ;next byte illegal after ed	;4f7a
	rlca			;4f7b
	jr nz,l4f86h		;4f7c
	rlca			;4f7e
	ld b,004h		;4f7f
	daa			;4f81
	ld (bc),a		;4f82
	nop			;4f83
	ex af,af'		;4f84
	ld (bc),a		;4f85
l4f86h:
	ld b,006h		;4f86
	ld (bc),a		;4f88
	defb 0edh ;next byte illegal after ed	;4f89
	daa			;4f8a
	inc bc			;4f8b
	ld (bc),a		;4f8c
	ld b,027h		;4f8d
	inc b			;4f8f
	ld hl,08708h		;4f90
	nop			;4f93
	inc bc			;4f94
	defb 0edh ;next byte illegal after ed	;4f95
	nop			;4f96
	inc b			;4f97
	dec h			;4f98
	dec h			;4f99
	daa			;4f9a
	inc bc			;4f9b
	ld (bc),a		;4f9c
	ld h,006h		;4f9d
	dec b			;4f9f
	defb 0edh ;next byte illegal after ed	;4fa0
	inc h			;4fa1
	ld b,067h		;4fa2
	ld bc,00203h		;4fa4
	inc b			;4fa7
	ld b,007h		;4fa8
	inc bc			;4faa
	ld b,026h		;4fab
	defb 0edh ;next byte illegal after ed	;4fad
	inc b			;4fae
	ld b,004h		;4faf
	rlca			;4fb1
	dec b			;4fb2
	ld h,026h		;4fb3
	dec b			;4fb5
	ld b,a			;4fb6
	inc bc			;4fb7
	ld (bc),a		;4fb8
	defb 0edh ;next byte illegal after ed	;4fb9
	inc b			;4fba
	ld b,006h		;4fbb
	dec b			;4fbd
	dec b			;4fbe
	ld b,a			;4fbf
	ld bc,00605h		;4fc0
	inc b			;4fc3
	ex af,af'		;4fc4
	ld h,c			;4fc5
	rlca			;4fc6
	defb 0edh ;next byte illegal after ed	;4fc7
	ex af,af'		;4fc8
	rlca			;4fc9
	ex af,af'		;4fca
	nop			;4fcb
	daa			;4fcc
	ld bc,00526h		;4fcd
	nop			;4fd0
	rlca			;4fd1
	dec b			;4fd2
	ld b,0edh		;4fd3
	ld b,000h		;4fd5
	ld b,a			;4fd7
	dec b			;4fd8
	ld (bc),a		;4fd9
	inc bc			;4fda
	ld b,006h		;4fdb
	inc bc			;4fdd
	add a,a			;4fde
	inc b			;4fdf
	nop			;4fe0
	defb 0edh ;next byte illegal after ed	;4fe1
	ld (bc),a		;4fe2
	inc h			;4fe3
	ld h,006h		;4fe4
	inc b			;4fe6
	daa			;4fe7
	ld bc,00603h		;4fe8
	inc b			;4feb
	ld b,a			;4fec
	defb 0edh ;next byte illegal after ed	;4fed
	inc bc			;4fee
	ld (bc),a		;4fef
	nop			;4ff0
	ex af,af'		;4ff1
	ld bc,00407h		;4ff2
	ld b,006h		;4ff5
	inc bc			;4ff7
	daa			;4ff8
	ld bc,0ed03h		;4ff9
	ld b,004h		;4ffc
	jr z,l5000h		;4ffe
l5000h:
	ld bc,00307h		;5000
	ld b,006h		;5003
	inc bc			;5005
	rlca			;5006
	dec h			;5007
	ld b,047h		;5008
	defb 0edh ;next byte illegal after ed	;500a
	ld hl,l6625h		;500b
	ld b,003h		;500e
	inc b			;5010
	rlca			;5011
	inc bc			;5012
	ld h,0edh		;5013
	dec b			;5015
	rlca			;5016
	inc h			;5017
	ld b,027h		;5018
	nop			;501a
	inc b			;501b
	dec b			;501c
	ld b,004h		;501d
	daa			;501f
	ld bc,026edh		;5020
	inc b			;5023
	dec b			;5024
	inc bc			;5025
	rlca			;5026
	dec b			;5027
	inc b			;5028
	ld b,a			;5029
	ld bc,00103h		;502a
	ld b,005h		;502d
	defb 0edh ;next byte illegal after ed	;502f
	inc b			;5030
	ld b,006h		;5031
	ld bc,00207h		;5033
	ld b,005h		;5036
	inc b			;5038
	ld b,005h		;5039
	dec h			;503b
	ld b,005h		;503c
	daa			;503e
	defb 0edh ;next byte illegal after ed	;503f
	nop			;5040
	ld b,005h		;5041
	dec b			;5043
	rlca			;5044
	inc bc			;5045
	ld h,005h		;5046
	ld bc,00507h		;5048
	ld h,(hl)		;504b
	ld (bc),a		;504c
	defb 0edh ;next byte illegal after ed	;504d
	dec b			;504e
	inc h			;504f
	ld b,a			;5050
	ld bc,00504h		;5051
	inc bc			;5054
	ld b,006h		;5055
	dec h			;5057
	inc b			;5058
	defb 0edh ;next byte illegal after ed	;5059
	daa			;505a
	ld bc,00603h		;505b
	ld h,005h		;505e
	ld hl,00047h		;5060
	inc bc			;5063
	defb 0edh ;next byte illegal after ed	;5064
	inc b			;5065
l5066h:
	ld h,a			;5066
	nop			;5067
	ld bc,02402h		;5068
	ld b,027h		;506b
	nop			;506d
	ld (bc),a		;506e
	ld b,0edh		;506f
	dec b			;5071
	daa			;5072
	ld (bc),a		;5073
	ld b,004h		;5074
	daa			;5076
	nop			;5077
	inc bc			;5078
	dec b			;5079
	ld b,(hl)		;507a
	ld (bc),a		;507b
	inc h			;507c
	defb 0edh ;next byte illegal after ed	;507d
	daa			;507e
	ld bc,02645h		;507f
	dec b			;5082
	inc hl			;5083
	rlca			;5084
	ld b,002h		;5085
	rlca			;5087
	defb 0edh ;next byte illegal after ed	;5088
	inc h			;5089
	ld b,007h		;508a
	ld b,004h		;508c
	dec b			;508e
	daa			;508f
	inc b			;5090
	ld b,005h		;5091
	dec b			;5093
	rlca			;5094
	inc b			;5095
	ld b,0edh		;5096
	rlca			;5098
	ld b,b			;5099
	jr z,l50a3h		;509a
	dec b			;509c
	ld b,006h		;509d
	dec h			;509f
	rlca			;50a0
	ld b,004h		;50a1
l50a3h:
	ld b,a			;50a3
	defb 0edh ;next byte illegal after ed	;50a4
	inc bc			;50a5
	ld (bc),a		;50a6
	dec b			;50a7
	ld b,006h		;50a8
	inc bc			;50aa
	rlca			;50ab
	dec b			;50ac
	ld h,006h		;50ad
	dec b			;50af
	rlca			;50b0
	inc b			;50b1
	defb 0edh ;next byte illegal after ed	;50b2
	dec b			;50b3
	ld b,022h		;50b4
	rlca			;50b6
	ld b,026h		;50b7
	dec b			;50b9
	ld b,004h		;50ba
	rlca			;50bc
	ld h,005h		;50bd
	inc bc			;50bf
	defb 0edh ;next byte illegal after ed	;50c0
	daa			;50c1
	ld bc,00506h		;50c2
	dec b			;50c5
	ex af,af'		;50c6
	nop			;50c7
	rlca			;50c8
	ld b,006h		;50c9
	inc h			;50cb
	ld h,a			;50cc
	ld (bc),a		;50cd
	defb 0edh ;next byte illegal after ed	;50ce
	ld bc,l4603h		;50cf
	inc b			;50d2
	dec b			;50d3
	ld b,005h		;50d4
	dec b			;50d6
	ld b,004h		;50d7
	daa			;50d9
	nop			;50da
	defb 0edh ;next byte illegal after ed	;50db
	inc bc			;50dc
	ld h,046h		;50dd
	inc b			;50df
	ld (bc),a		;50e0
l50e1h:
	daa			;50e1
	nop			;50e2
	dec b			;50e3
	ld b,006h		;50e4
	ld h,h			;50e6
	defb 0edh ;next byte illegal after ed	;50e7
	daa			;50e8
	ld b,005h		;50e9
	ld b,003h		;50eb
	daa			;50ed
	ld bc,00505h		;50ee
	ld b,a			;50f1
	jr nz,l50e1h		;50f2
	inc bc			;50f4
	ld h,004h		;50f5
	inc bc			;50f7
	ld h,a			;50f8
	ld bc,00102h		;50f9
	inc b			;50fc
	defb 0edh ;next byte illegal after ed	;50fd
	ld (02607h),hl		;50fe
	dec b			;5101
	ld b,004h		;5102
	rlca			;5104
	dec b			;5105
	inc b			;5106
	daa			;5107
	inc bc			;5108
	dec b			;5109
	ld b,0edh		;510a
	ld b,003h		;510c
	daa			;510e
	nop			;510f
	inc b			;5110
	dec b			;5111
	daa			;5112
	ld (bc),a		;5113
	inc b			;5114
	ld b,006h		;5115
	dec b			;5117
	dec b			;5118
	ld b,0edh		;5119
	inc hl			;511b
	daa			;511c
	dec b			;511d
	ld b,006h		;511e
	inc b			;5120
	and a			;5121
	ld (bc),a		;5122
	inc h			;5123
	inc bc			;5124
	defb 0edh ;next byte illegal after ed	;5125
	ld bc,00305h		;5126
	daa			;5129
	ld bc,00604h		;512a
	ld b,004h		;512d
	ld h,a			;512f
	inc bc			;5130
	nop			;5131
	defb 0edh ;next byte illegal after ed	;5132
	dec b			;5133
	ld bc,00008h		;5134
	rlca			;5137
	dec b			;5138
	ld b,004h		;5139
	rlca			;513b
	inc bc			;513c
	ld h,h			;513d
	rlca			;513e
	ld b,0edh		;513f
	rlca			;5141
	ld b,026h		;5142
	dec b			;5144
	ld b,003h		;5145
	daa			;5147
	ld bc,00505h		;5148
	daa			;514b
	ld bc,003edh		;514c
	ld b,026h		;514f
	dec b			;5151
	ld bc,00387h		;5152
	ld (0ed03h),hl		;5155
	jr nz,l5162h		;5158
	rlca			;515a
	dec b			;515b
	ld b,046h		;515c
	dec b			;515e
	ld b,005h		;515f
	ld h,a			;5161
l5162h:
	ld (bc),a		;5162
	inc b			;5163
	defb 0edh ;next byte illegal after ed	;5164
	ld bc,08504h		;5165
	ld h,025h		;5168
	ld h,004h		;516a
	defb 0edh ;next byte illegal after ed	;516c
	ld b,003h		;516d
	rlca			;516f
	dec b			;5170
	dec b			;5171
	ld h,024h		;5172
	daa			;5174
	nop			;5175
	dec b			;5176
	inc bc			;5177
	rlca			;5178
	ld (bc),a		;5179
	defb 0edh ;next byte illegal after ed	;517a
	ld b,046h		;517b
	dec h			;517d
	inc bc			;517e
	daa			;517f
	ld bc,00505h		;5180
	daa			;5183
	nop			;5184
	inc b			;5185
	defb 0edh ;next byte illegal after ed	;5186
	ld b,006h		;5187
	inc b			;5189
	daa			;518a
	ld (bc),a		;518b
	inc b			;518c
	ld b,006h		;518d
	inc bc			;518f
	daa			;5190
	ld bc,00603h		;5191
	ld h,0edh		;5194
	dec h			;5196
	ld h,l			;5197
	ld h,(hl)		;5198
	ld b,(hl)		;5199
	dec h			;519a
	defb 0edh ;next byte illegal after ed	;519b
	ld b,005h		;519c
	daa			;519e
	ld (bc),a		;519f
	inc b			;51a0
	ld b,005h		;51a1
	dec b			;51a3
	ld b,004h		;51a4
	rlca			;51a6
	ld b,020h		;51a7
	ex af,af'		;51a9
	defb 0edh ;next byte illegal after ed	;51aa
	rlca			;51ab
	dec b			;51ac
	inc b			;51ad
	ld b,a			;51ae
	inc bc			;51af
	ld bc,02603h		;51b0
	dec b			;51b3
	inc b			;51b4
	and a			;51b5
	inc bc			;51b6
	defb 0edh ;next byte illegal after ed	;51b7
	nop			;51b8
	inc bc			;51b9
	ld (bc),a		;51ba
	nop			;51bb
	inc b			;51bc
	ld h,005h		;51bd
	ld b,004h		;51bf
	ld b,a			;51c1
	inc bc			;51c2
	defb 0edh ;next byte illegal after ed	;51c3
	ld bc,00602h		;51c4
	inc h			;51c7
	rlca			;51c8
	ld h,005h		;51c9
	ld b,024h		;51cb
	rlca			;51cd
	ld b,(hl)		;51ce
	defb 0edh ;next byte illegal after ed	;51cf
	dec h			;51d0
	inc b			;51d1
	rlca			;51d2
	dec h			;51d3
	ld h,024h		;51d4
	ld h,a			;51d6
	inc bc			;51d7
	defb 0edh ;next byte illegal after ed	;51d8
	ld (bc),a		;51d9
	inc bc			;51da
	ld b,006h		;51db
	inc b			;51dd
	rlca			;51de
	inc bc			;51df
	ld b,006h		;51e0
	inc b			;51e2
	and a			;51e3
	inc bc			;51e4
	ld (bc),a		;51e5
	defb 0edh ;next byte illegal after ed	;51e6
	ld bc,l4023h		;51e7
	jr z,$+9		;51ea
	dec b			;51ec
	ld b,l			;51ed
	ld b,(hl)		;51ee
	defb 0edh ;next byte illegal after ed	;51ef
	inc bc			;51f0
	rlca			;51f1
	jr nz,$+10		;51f2
	ld b,006h		;51f4
	ld hl,020a7h		;51f6
	defb 0edh ;next byte illegal after ed	;51f9
	ld (bc),a		;51fa
	ld bc,l6602h		;51fb
	ld b,l			;51fe
	inc hl			;51ff
	ld b,a			;5200
	defb 0edh ;next byte illegal after ed	;5201
	inc h			;5202
	ld b,006h		;5203
	dec b			;5205
	dec b			;5206
	daa			;5207
	ld (bc),a		;5208
	dec h			;5209
	ld h,0edh		;520a
	and a			;520c
	ld (bc),a		;520d
	ld bc,00002h		;520e
	inc bc			;5211
	inc b			;5212
	ld b,006h		;5213
	ld (0ed27h),hl		;5215
	ld b,004h		;5218
	and a			;521a
	ld (bc),a		;521b
	inc b			;521c
	ld hl,00403h		;521d
	defb 0edh ;next byte illegal after ed	;5220
	ld b,006h		;5221
	inc b			;5223
	rlca			;5224
	ld h,b			;5225
	ld c,b			;5226
	rlca			;5227
	inc b			;5228
	add a,003h		;5229
	defb 0edh ;next byte illegal after ed	;522b
	inc b			;522c
	dec h			;522d
	inc h			;522e
	daa			;522f
	ld (bc),a		;5230
	ld bc,04566h		;5231
	defb 0edh ;next byte illegal after ed	;5234
	ld h,(hl)		;5235
	inc b			;5236
	ld b,l			;5237
	dec b			;5238
	daa			;5239
	nop			;523a
	defb 0edh ;next byte illegal after ed	;523b
	inc bc			;523c
	ld h,(hl)		;523d
	dec h			;523e
	inc b			;523f
	dec b			;5240
	inc b			;5241
	daa			;5242
	ld bc,00604h		;5243
	defb 0edh ;next byte illegal after ed	;5246
	ld h,005h		;5247
	ld b,004h		;5249
	add a,a			;524b
	ld (bc),a		;524c
	inc hl			;524d
	ld bc,00605h		;524e
	defb 0edh ;next byte illegal after ed	;5251
	inc b			;5252
	rlca			;5253
	inc bc			;5254
	ld b,(hl)		;5255
	dec h			;5256
	inc b			;5257
	daa			;5258
	inc bc			;5259
	inc b			;525a
	ld b,006h		;525b
	inc b			;525d
	defb 0edh ;next byte illegal after ed	;525e
	dec b			;525f
	rlca			;5260
	jr nz,$+10		;5261
	rlca			;5263
	inc b			;5264
	ld b,006h		;5265
	inc b			;5267
	daa			;5268
	ld bc,00820h		;5269
	ld i,a			;526c
	ld bc,00103h		;526e
	ld b,006h		;5271
	inc bc			;5273
	rlca			;5274
	inc b			;5275
	ld h,005h		;5276
	ld b,004h		;5278
	ld i,a			;527a
	nop			;527c
	inc bc			;527d
	ld b,l			;527e
	ld b,(hl)		;527f
	inc b			;5280
	and a			;5281
	ld (bc),a		;5282
	nop			;5283
	defb 0edh ;next byte illegal after ed	;5284
	ld bc,00102h		;5285
	inc bc			;5288
	ld b,006h		;5289
	inc b			;528b
	rst 20h			;528c
	add a,c			;528d
	defb 0edh ;next byte illegal after ed	;528e
	ld (00820h),hl		;528f
	rlca			;5292
	inc bc			;5293
	ld b,0edh		;5294
	ld bc,00407h		;5296
	ex af,af'		;5299
	dec b			;529a
	rlca			;529b
	ld b,(hl)		;529c
	ld hl,02805h		;529d
	inc b			;52a0
	nop			;52a1
	defb 0edh ;next byte illegal after ed	;52a2
	ld h,001h		;52a3
	inc b			;52a5
	ld b,l			;52a6
	ex af,af'		;52a7
	add hl,bc		;52a8
	rlca			;52a9
	jr nz,l52cch		;52aa
	inc bc			;52ac
	ld h,0edh		;52ad
	ld b,021h		;52af
	dec b			;52b1
	ld b,(hl)		;52b2
	rlca			;52b3
	ld b,005h		;52b4
	inc b			;52b6
	inc h			;52b7
	dec b			;52b8
	ld b,0edh		;52b9
	ld b,025h		;52bb
	rlca			;52bd
	ld b,046h		;52be
	inc b			;52c0
	ld h,007h		;52c1
	inc b			;52c3
	jr z,l52c6h		;52c4
l52c6h:
	defb 0edh ;next byte illegal after ed	;52c6
	inc h			;52c7
	rst 20h			;52c8
	ld bc,02300h		;52c9
l52cch:
	dec b			;52cc
	inc b			;52cd
	defb 0edh ;next byte illegal after ed	;52ce
	inc bc			;52cf
	ld b,(hl)		;52d0
	inc b			;52d1
	dec b			;52d2
	ld b,005h		;52d3
	inc b			;52d5
	ld b,025h		;52d6
	dec b			;52d8
	rlca			;52d9
	inc bc			;52da
	ld b,0edh		;52db
	ld hl,00507h		;52dd
	rlca			;52e0
	ld bc,00008h		;52e1
	ld b,a			;52e4
	ld b,e			;52e5
	ld b,006h		;52e6
	defb 0edh ;next byte illegal after ed	;52e8
	inc hl			;52e9
	rlca			;52ea
	ld b,005h		;52eb
	daa			;52ed
	ld bc,00504h		;52ee
	ld b,006h		;52f1
	inc b			;52f3
	ld b,a			;52f4
	ld (bc),a		;52f5
	defb 0edh ;next byte illegal after ed	;52f6
	inc b			;52f7
	dec h			;52f8
	ld b,(hl)		;52f9
	inc h			;52fa
	rlca			;52fb
	dec b			;52fc
	ld h,004h		;52fd
	ld (bc),a		;52ff
	ex af,af'		;5300
	defb 0edh ;next byte illegal after ed	;5301
	inc bc			;5302
	rlca			;5303
	dec h			;5304
	ld h,006h		;5305
	inc h			;5307
	rlca			;5308
	dec h			;5309
	ld b,007h		;530a
	ld h,004h		;530c
	defb 0edh ;next byte illegal after ed	;530e
	dec h			;530f
	daa			;5310
	ld b,003h		;5311
	rlca			;5313
	ld bc,00508h		;5314
	ld h,004h		;5317
	inc bc			;5319
	rlca			;531a
	defb 0edh ;next byte illegal after ed	;531b
	dec b			;531c
	dec h			;531d
	inc b			;531e
	rlca			;531f
	ld b,b			;5320
	jr z,$+40		;5321
	inc b			;5323
	ld b,0a7h		;5324
	inc b			;5326
	defb 0edh ;next byte illegal after ed	;5327
	nop			;5328
	ld (bc),a		;5329
	inc bc			;532a
	ld bc,02602h		;532b
	ld b,h			;532e
	rlca			;532f
	defb 0edh ;next byte illegal after ed	;5330
	ex af,af'		;5331
	nop			;5332
	ld b,a			;5333
	ld hl,00803h		;5334
	ld b,006h		;5337
	nop			;5339
	dec h			;533a
	ld b,027h		;533b
	defb 0edh ;next byte illegal after ed	;533d
	rlca			;533e
	ld (bc),a		;533f
	ld (bc),a		;5340
	inc hl			;5341
	daa			;5342
	ld b,008h		;5343
	inc b			;5345
	dec b			;5346
	inc bc			;5347
	ld b,005h		;5348
	daa			;534a
	defb 0edh ;next byte illegal after ed	;534b
	ld hl,00446h		;534c
	dec h			;534f
	inc b			;5350
	inc bc			;5351
	ld b,a			;5352
	inc b			;5353
	ld bc,003edh		;5354
	ld b,005h		;5357
	dec b			;5359
	rlca			;535a
	inc b			;535b
	dec b			;535c
	inc bc			;535d
	inc bc			;535e
	ld b,007h		;535f
	dec b			;5361
	dec b			;5362
	inc bc			;5363
	inc b			;5364
	daa			;5365
	defb 0edh ;next byte illegal after ed	;5366
	rlca			;5367
	ld b,001h		;5368
	inc b			;536a
	dec b			;536b
	ld b,027h		;536c
	dec b			;536e
	nop			;536f
	inc bc			;5370
	inc b			;5371
	ld b,007h		;5372
	rlca			;5374
	defb 0edh ;next byte illegal after ed	;5375
	inc b			;5376
	nop			;5377
	nop			;5378
	ld b,007h		;5379
	ex af,af'		;537b
	inc b			;537c
	inc b			;537d
	nop			;537e
	rlca			;537f
	ld b,000h		;5380
	daa			;5382
	rlca			;5383
	nop			;5384
	defb 0edh ;next byte illegal after ed	;5385
	ld bc,00506h		;5386
	dec b			;5389
	ld b,001h		;538a
	rlca			;538c
	inc bc			;538d
	jr z,$+6		;538e
	nop			;5390
	daa			;5391
	inc bc			;5392
	ld b,0edh		;5393
	dec b			;5395
	inc bc			;5396
	inc b			;5397
	ld b,040h		;5398
	ex af,af'		;539a
	rlca			;539b
	ld b,005h		;539c
	inc bc			;539e
	ld h,007h		;539f
	dec b			;53a1
	defb 0edh ;next byte illegal after ed	;53a2
	dec b			;53a3
	daa			;53a4
	inc b			;53a5
	nop			;53a6
	ld b,001h		;53a7
	ex af,af'		;53a9
	dec h			;53aa
	rlca			;53ab
	nop			;53ac
	nop			;53ad
	ld (bc),a		;53ae
	dec b			;53af
	daa			;53b0
	defb 0edh ;next byte illegal after ed	;53b1
	ld b,025h		;53b2
	ld b,004h		;53b4
	rlca			;53b6
	rlca			;53b7
	inc b			;53b8
	ld b,002h		;53b9
	dec b			;53bb
	dec b			;53bc
	ld b,002h		;53bd
	nop			;53bf
	defb 0edh ;next byte illegal after ed	;53c0
	ld b,007h		;53c1
	inc h			;53c3
	ld b,007h		;53c4
	ld b,026h		;53c6
	dec b			;53c8
	rlca			;53c9
	dec b			;53ca
	ld b,003h		;53cb
	daa			;53cd
	ld b,0edh		;53ce
	ld (bc),a		;53d0
	ld h,025h		;53d1
	rlca			;53d3
	nop			;53d4
	ex af,af'		;53d5
	rlca			;53d6
	daa			;53d7
	inc bc			;53d8
	ld b,006h		;53d9
	inc b			;53db
	defb 0edh ;next byte illegal after ed	;53dc
	dec b			;53dd
	ld b,007h		;53de
	dec b			;53e0
	ld b,022h		;53e1
	inc b			;53e3
	rlca			;53e4
	inc bc			;53e5
	ld b,002h		;53e6
	rlca			;53e8
	inc bc			;53e9
	ld h,000h		;53ea
	defb 0edh ;next byte illegal after ed	;53ec
	ld b,022h		;53ed
	nop			;53ef
	ex af,af'		;53f0
	ld b,006h		;53f1
	nop			;53f3
	inc b			;53f4
	ld h,006h		;53f5
	ex af,af'		;53f7
	dec b			;53f8
	ld b,0edh		;53f9
	inc b			;53fb
	inc h			;53fc
	rlca			;53fd
	ex af,af'		;53fe
	jr nz,l5408h		;53ff
	dec b			;5401
	jr z,l540bh		;5402
	nop			;5404
	rlca			;5405
	ld b,005h		;5406
l5408h:
	defb 0edh ;next byte illegal after ed	;5408
	dec b			;5409
	inc b			;540a
l540bh:
	add hl,bc		;540b
	ld b,007h		;540c
	ld bc,00502h		;540e
	rlca			;5411
	inc b			;5412
	ex af,af'		;5413
	dec b			;5414
	rlca			;5415
	ld bc,00000h		;5416
	defb 0edh ;next byte illegal after ed	;5419
	dec b			;541a
	rlca			;541b
	ex af,af'		;541c
	ld b,007h		;541d
	inc bc			;541f
	inc b			;5420
	ld b,007h		;5421
	rlca			;5423
	inc b			;5424
	ld h,003h		;5425
	nop			;5427
	inc bc			;5428
	defb 0edh ;next byte illegal after ed	;5429
	ld bc,00200h		;542a
	inc b			;542d
	inc b			;542e
	nop			;542f
	ld b,002h		;5430
	ld (bc),a		;5432
	inc b			;5433
	ld h,006h		;5434
	dec b			;5436
	ld (bc),a		;5437
	inc b			;5438
	defb 0edh ;next byte illegal after ed	;5439
	dec h			;543a
	daa			;543b
	nop			;543c
	ex af,af'		;543d
	ld bc,00206h		;543e
	add hl,bc		;5441
	ld bc,00008h		;5442
	add hl,hl		;5445
	inc bc			;5446
	defb 0edh ;next byte illegal after ed	;5447
	nop			;5448
	jr z,l546eh		;5449
	daa			;544b
	dec b			;544c
	ld (bc),a		;544d
	dec b			;544e
	ld bc,00506h		;544f
	daa			;5452
	inc b			;5453
	defb 0edh ;next byte illegal after ed	;5454
	ld b,004h		;5455
	rlca			;5457
	jr nz,$+10		;5458
	rlca			;545a
	inc b			;545b
	ld b,005h		;545c
	ld (bc),a		;545e
	ld h,023h		;545f
	ld bc,005edh		;5461
	dec b			;5464
	ld (bc),a		;5465
	ld (bc),a		;5466
	nop			;5467
	ld b,004h		;5468
	rlca			;546a
	inc hl			;546b
	ex af,af'		;546c
	dec b			;546d
l546eh:
	nop			;546e
	ex af,af'		;546f
	dec h			;5470
	rlca			;5471
	defb 0edh ;next byte illegal after ed	;5472
	dec b			;5473
	inc bc			;5474
	nop			;5475
	ld (bc),a		;5476
	daa			;5477
	rlca			;5478
	ld (bc),a		;5479
	ld b,006h		;547a
	daa			;547c
	dec b			;547d
	ex af,af'		;547e
	ld b,0edh		;547f
	daa			;5481
	ld bc,00806h		;5482
	dec b			;5485
	nop			;5486
	inc bc			;5487
	dec b			;5488
	dec h			;5489
	ld b,(hl)		;548a
	ld bc,0ed27h		;548b
	ex af,af'		;548e
	ld b,005h		;548f
	dec b			;5491
	nop			;5492
	inc bc			;5493
	daa			;5494
	ex af,af'		;5495
	inc b			;5496
	inc bc			;5497
	ld bc,00304h		;5498
	dec b			;549b
	defb 0edh ;next byte illegal after ed	;549c
	rlca			;549d
	rlca			;549e
	dec b			;549f
	inc bc			;54a0
	nop			;54a1
	ld h,004h		;54a2
	rlca			;54a4
	rlca			;54a5
	ld b,004h		;54a6
	ld (bc),a		;54a8
	ex af,af'		;54a9
	nop			;54aa
	ld b,0edh		;54ab
	dec b			;54ad
	inc b			;54ae
	rlca			;54af
	dec b			;54b0
	ld b,l			;54b1
	rlca			;54b2
	ld b,004h		;54b3
	ex af,af'		;54b5
	rlca			;54b6
	rlca			;54b7
	ld (bc),a		;54b8
	dec b			;54b9
	ld b,0edh		;54ba
	inc b			;54bc
	rlca			;54bd
	jr nz,l54c8h		;54be
	rlca			;54c0
	ld b,004h		;54c1
	rlca			;54c3
	dec b			;54c4
	ld b,001h		;54c5
	dec b			;54c7
l54c8h:
	inc b			;54c8
	rlca			;54c9
	dec b			;54ca
	defb 0edh ;next byte illegal after ed	;54cb
	ex af,af'		;54cc
	inc hl			;54cd
	ld h,005h		;54ce
	dec b			;54d0
	ld b,006h		;54d1
	ld bc,00303h		;54d3
	ld b,007h		;54d6
	rlca			;54d8
	ld b,(hl)		;54d9
	defb 0edh ;next byte illegal after ed	;54da
	inc b			;54db
	rlca			;54dc
	dec b			;54dd
	rlca			;54de
	rlca			;54df
	ld b,005h		;54e0
	rlca			;54e2
	inc bc			;54e3
	dec b			;54e4
	nop			;54e5
	rlca			;54e6
	inc h			;54e7
	inc b			;54e8
	defb 0edh ;next byte illegal after ed	;54e9
	ld (bc),a		;54ea
	ld bc,00504h		;54eb
	ld b,006h		;54ee
	daa			;54f0
	ld (bc),a		;54f1
	inc h			;54f2
	dec b			;54f3
	inc b			;54f4
	ld b,005h		;54f5
	defb 0edh ;next byte illegal after ed	;54f7
	inc b			;54f8
	inc bc			;54f9
	ld bc,02407h		;54fa
	ex af,af'		;54fd
	ld b,a			;54fe
	nop			;54ff
	ld bc,00806h		;5500
	rlca			;5503
	rlca			;5504
	defb 0edh ;next byte illegal after ed	;5505
	ld (bc),a		;5506
	jr z,l550ah		;5507
	inc b			;5509
l550ah:
	inc b			;550a
	ld bc,00503h		;550b
	nop			;550e
	rlca			;550f
	ld bc,00408h		;5510
	rlca			;5513
	nop			;5514
	defb 0edh ;next byte illegal after ed	;5515
	ld b,005h		;5516
	daa			;5518
	ld (bc),a		;5519
	inc hl			;551a
	ld h,004h		;551b
	rlca			;551d
	nop			;551e
	dec b			;551f
	ld bc,00327h		;5520
	defb 0edh ;next byte illegal after ed	;5523
	dec b			;5524
	ld b,064h		;5525
	dec b			;5527
	ld c,b			;5528
	inc hl			;5529
	ld b,003h		;552a
	ld b,0edh		;552c
	ld b,024h		;552e
	inc hl			;5530
	ld b,005h		;5531
	daa			;5533
	rlca			;5534
	ld bc,00205h		;5535
	ex af,af'		;5538
	rlca			;5539
	dec b			;553a
	defb 0edh ;next byte illegal after ed	;553b
	inc bc			;553c
	nop			;553d
	ld b,004h		;553e
	dec b			;5540
	daa			;5541
	ld b,004h		;5542
	inc b			;5544
	dec b			;5545
	inc bc			;5546
	rlca			;5547
	nop			;5548
	jr z,l5551h		;5549
	defb 0edh ;next byte illegal after ed	;554b
	dec b			;554c
	ld b,001h		;554d
	inc b			;554f
	ld b,l			;5550
l5551h:
	dec b			;5551
	rlca			;5552
	dec b			;5553
	nop			;5554
	nop			;5555
	dec b			;5556
	ld b,008h		;5557
	defb 0edh ;next byte illegal after ed	;5559
	rlca			;555a
	rlca			;555b
	ld bc,00306h		;555c
	rlca			;555f
	inc b			;5560
	ex af,af'		;5561
	ld (bc),a		;5562
	rlca			;5563
	ld bc,00502h		;5564
	ld b,007h		;5567
	dec b			;5569
	defb 0edh ;next byte illegal after ed	;556a
	dec h			;556b
	inc bc			;556c
	ld b,003h		;556d
	ex af,af'		;556f
	daa			;5570
	ld b,005h		;5571
	ld b,002h		;5573
	ld b,a			;5575
	nop			;5576
	ld h,0edh		;5577
	dec b			;5579
	ld (bc),a		;557a
	inc b			;557b
	inc b			;557c
	ld b,007h		;557d
	rlca			;557f
	ld b,004h		;5580
	dec b			;5582
	nop			;5583
	ld h,006h		;5584
	defb 0edh ;next byte illegal after ed	;5586
	rlca			;5587
	nop			;5588
	dec b			;5589
	inc bc			;558a
	ld b,005h		;558b
	dec b			;558d
	inc b			;558e
	inc b			;558f
	dec b			;5590
	ld b,006h		;5591
	rlca			;5593
	dec b			;5594
	ld bc,0ed06h		;5595
	nop			;5598
	jr z,l559eh		;5599
	inc b			;559b
	ld b,003h		;559c
l559eh:
	dec b			;559e
	dec b			;559f
	ex af,af'		;55a0
	inc b			;55a1
	rlca			;55a2
	ld (bc),a		;55a3
	ld b,045h		;55a4
	rlca			;55a6
	defb 0edh ;next byte illegal after ed	;55a7
	ld h,004h		;55a8
	rlca			;55aa
	dec h			;55ab
	ex af,af'		;55ac
	ld h,003h		;55ad
	rlca			;55af
	dec h			;55b0
	inc b			;55b1
	defb 0edh ;next byte illegal after ed	;55b2
	nop			;55b3
	rlca			;55b4
	inc bc			;55b5
	ld b,006h		;55b6
	rlca			;55b8
	dec h			;55b9
	nop			;55ba
	ld b,006h		;55bb
	rlca			;55bd
	dec b			;55be
	ld b,024h		;55bf
	dec b			;55c1
	defb 0edh ;next byte illegal after ed	;55c2
	rlca			;55c3
	ld b,023h		;55c4
	inc b			;55c6
	dec h			;55c7
	dec b			;55c8
	daa			;55c9
	ld b,004h		;55ca
	inc b			;55cc
	inc bc			;55cd
	ld b,0edh		;55ce
	rlca			;55d0
	rlca			;55d1
	ld b,006h		;55d2
	inc bc			;55d4
	inc b			;55d5
	ld (bc),a		;55d6
	daa			;55d7
	dec b			;55d8
	inc bc			;55d9
	ld b,000h		;55da
	rlca			;55dc
	ld bc,0ed08h		;55dd
	dec b			;55e0
	rlca			;55e1
	ld b,003h		;55e2
	rlca			;55e4
	dec b			;55e5
	ex af,af'		;55e6
	inc bc			;55e7
	rlca			;55e8
	nop			;55e9
	dec h			;55ea
	inc bc			;55eb
	ld b,007h		;55ec
	dec b			;55ee
	defb 0edh ;next byte illegal after ed	;55ef
	ld b,000h		;55f0
	inc bc			;55f2
	inc bc			;55f3
	rlca			;55f4
	ld bc,00308h		;55f5
	rlca			;55f8
	dec b			;55f9
	ld (bc),a		;55fa
	ld b,004h		;55fb
	rlca			;55fd
	ld b,004h		;55fe
	defb 0edh ;next byte illegal after ed	;5600
	rlca			;5601
	ld (bc),a		;5602
	ex af,af'		;5603
	ld bc,00007h		;5604
	ld h,003h		;5607
	dec b			;5609
	daa			;560a
	ld b,003h		;560b
	dec h			;560d
	inc b			;560e
	rrd			;560f
	inc b			;5611
	inc bc			;5612
	ld hl,02206h		;5613
	rst 0			;5616
	dec b			;5617
	defb 0edh ;next byte illegal after ed	;5618
	ld b,003h		;5619
	ld (bc),a		;561b
	dec h			;561c
	ld b,003h		;561d
	dec b			;561f
	ld bc,00506h		;5620
	rlca			;5623
	defb 0edh ;next byte illegal after ed	;5624
	ld h,005h		;5625
	inc b			;5627
	add a,a			;5628
	ld bc,00200h		;5629
	inc b			;562c
	dec b			;562d
	ld b,003h		;562e
	defb 0edh ;next byte illegal after ed	;5630
	ld bc,00405h		;5631
	rlca			;5634
	ld b,l			;5635
	ld b,000h		;5636
	inc b			;5638
	daa			;5639
	ld h,005h		;563a
	dec b			;563c
	defb 0edh ;next byte illegal after ed	;563d
	inc b			;563e
	ld b,027h		;563f
	dec b			;5641
	ld bc,00505h		;5642
	ld h,006h		;5645
	inc bc			;5647
	dec b			;5648
	ld bc,00606h		;5649
	defb 0edh ;next byte illegal after ed	;564c
	rlca			;564d
	ex af,af'		;564e
	ld b,025h		;564f
	inc bc			;5651
	inc b			;5652
	ld b,006h		;5653
	rlca			;5655
	rlca			;5656
	inc h			;5657
	inc hl			;5658
	ld b,0edh		;5659
	inc b			;565b
	ex af,af'		;565c
	dec b			;565d
	rlca			;565e
	inc bc			;565f
	ld b,l			;5660
	inc b			;5661
	ld b,005h		;5662
	inc h			;5664
	ld b,(hl)		;5665
	dec b			;5666
	defb 0edh ;next byte illegal after ed	;5667
	ld bc,00605h		;5668
	ld h,007h		;566b
	ld b,l			;566d
	dec b			;566e
	ld b,008h		;566f
	ld bc,00307h		;5671
	defb 0edh ;next byte illegal after ed	;5674
	ld b,006h		;5675
	dec b			;5677
	daa			;5678
	inc bc			;5679
	nop			;567a
	ex af,af'		;567b
	ld bc,00307h		;567c
	ld b,005h		;567f
	dec b			;5681
	ld b,006h		;5682
	defb 0edh ;next byte illegal after ed	;5684
	inc b			;5685
	rlca			;5686
	nop			;5687
	ld b,(hl)		;5688
	inc bc			;5689
	dec b			;568a
	inc bc			;568b
	ld b,a			;568c
	nop			;568d
	ld (bc),a		;568e
	inc b			;568f
	ld b,0edh		;5690
	inc bc			;5692
	dec b			;5693
	dec b			;5694
	ld h,026h		;5695
	inc hl			;5697
	inc b			;5698
	ld b,007h		;5699
	rlca			;569b
	ld b,006h		;569c
	dec h			;569e
	defb 0edh ;next byte illegal after ed	;569f
	dec h			;56a0
	rlca			;56a1
	daa			;56a2
	ld b,003h		;56a3
	ld b,004h		;56a5
	dec h			;56a7
	ld b,007h		;56a8
	ld b,026h		;56aa
	defb 0edh ;next byte illegal after ed	;56ac
	ld (02507h),hl		;56ad
	ld h,(hl)		;56b0
	ld b,h			;56b1
	dec b			;56b2
	nop			;56b3
	daa			;56b4
	defb 0edh ;next byte illegal after ed	;56b5
	inc bc			;56b6
	dec b			;56b7
	ld b,001h		;56b8
	ld b,l			;56ba
	inc b			;56bb
	ld h,a			;56bc
	ld (bc),a		;56bd
	inc b			;56be
	dec b			;56bf
	defb 0edh ;next byte illegal after ed	;56c0
	ld b,027h		;56c1
	dec h			;56c3
	ld h,(hl)		;56c4
	ld b,004h		;56c5
	dec b			;56c7
	ld b,005h		;56c8
	rlca			;56ca
	ld (bc),a		;56cb
	defb 0edh ;next byte illegal after ed	;56cc
	ex af,af'		;56cd
	inc hl			;56ce
	ld h,a			;56cf
	nop			;56d0
	inc b			;56d1
	inc bc			;56d2
	ld b,024h		;56d3
	dec b			;56d5
	and (hl)		;56d6
	dec b			;56d7
	neg			;56d8
	dec b			;56da
	ld b,044h		;56db
	daa			;56dd
	add a,(hl)		;56de
	defb 0edh ;next byte illegal after ed	;56df
	ld h,l			;56e0
	ld b,005h		;56e1
	daa			;56e3
	inc b			;56e4
	inc bc			;56e5
	ld b,005h		;56e6
	defb 0edh ;next byte illegal after ed	;56e8
	daa			;56e9
	inc h			;56ea
	ld h,(hl)		;56eb
	ld b,l			;56ec
	inc bc			;56ed
	daa			;56ee
	ld bc,0ed03h		;56ef
	ld h,026h		;56f2
	dec b			;56f4
	daa			;56f5
	nop			;56f6
	inc bc			;56f7
	dec b			;56f8
	ld h,004h		;56f9
	ld h,(hl)		;56fb
	dec h			;56fc
	defb 0edh ;next byte illegal after ed	;56fd
	ld b,024h		;56fe
	rlca			;5700
	ld b,026h		;5701
	add a,l			;5703
	ld b,l			;5704
	defb 0edh ;next byte illegal after ed	;5705
	ld b,002h		;5706
	rlca			;5708
	jr nz,$+10		;5709
	rlca			;570b
	ld h,l			;570c
	add a,(hl)		;570d
	defb 0edh ;next byte illegal after ed	;570e
	inc b			;570f
	dec b			;5710
	dec b			;5711
	ld h,044h		;5712
	daa			;5714
	dec h			;5715
	ld h,0edh		;5716
	inc b			;5718
	daa			;5719
	ld (04506h),hl		;571a
	ld h,l			;571d
	and 006h		;571e
	defb 0edh ;next byte illegal after ed	;5720
	inc b			;5721
	dec b			;5722
	ld b,005h		;5723
	ld (bc),a		;5725
	inc b			;5726
	ld b,(hl)		;5727
	dec b			;5728
	inc b			;5729
	defb 0edh ;next byte illegal after ed	;572a
	inc bc			;572b
	rlca			;572c
	inc b			;572d
	ld h,(hl)		;572e
	dec h			;572f
	inc b			;5730
	dec b			;5731
	inc b			;5732
	ld b,(hl)		;5733
	inc bc			;5734
	defb 0edh ;next byte illegal after ed	;5735
	dec b			;5736
	ld b,005h		;5737
	dec b			;5739
	daa			;573a
	inc bc			;573b
	ld b,005h		;573c
	ld b,a			;573e
	ld bc,0ed23h		;573f
	ld h,044h		;5742
	ld b,a			;5744
	ld (02406h),hl		;5745
	rst 20h			;5748
	ld b,e			;5749
	defb 0edh ;next byte illegal after ed	;574a
	inc b			;574b
	inc bc			;574c
	ld (bc),a		;574d
	ld hl,003e7h		;574e
	defb 0edh ;next byte illegal after ed	;5751
	inc b			;5752
	ld (bc),a		;5753
	inc bc			;5754
	inc b			;5755
	inc bc			;5756
	ld (00187h),hl		;5757
	defb 0edh ;next byte illegal after ed	;575a
	jr nz,l5760h		;575b
	ld b,005h		;575d
	dec b			;575f
l5760h:
	ld b,004h		;5760
	daa			;5762
	inc bc			;5763
	ld b,044h		;5764
	defb 0edh ;next byte illegal after ed	;5766
	daa			;5767
	ld h,005h		;5768
	ld b,005h		;576a
	ld b,a			;576c
	inc h			;576d
	dec b			;576e
	ld b,0edh		;576f
	ld h,(hl)		;5771
	dec h			;5772
	ld b,(hl)		;5773
	dec b			;5774
	inc bc			;5775
	daa			;5776
	ld bc,08602h		;5777
	defb 0edh ;next byte illegal after ed	;577a
	inc b			;577b
	dec h			;577c
	inc b			;577d
	dec b			;577e
	dec h			;577f
	ld b,005h		;5780
	add a,(hl)		;5782
	inc b			;5783
	defb 0edh ;next byte illegal after ed	;5784
	dec h			;5785
	inc b			;5786
	ld h,l			;5787
	dec b			;5788
	ld b,(hl)		;5789
	add a,(hl)		;578a
	ld b,l			;578b
	defb 0edh ;next byte illegal after ed	;578c
	ld h,003h		;578d
	ld b,a			;578f
	ld bc,00503h		;5790
	ld h,(hl)		;5793
	neg			;5794
	ld b,003h		;5796
	rst 20h			;5798
	ld (bc),a		;5799
	inc bc			;579a
	nop			;579b
	ld bc,022edh		;579c
	ld hl,00407h		;579f
	add a,045h		;57a2
	defb 0edh ;next byte illegal after ed	;57a4
	inc h			;57a5
	dec b			;57a6
	inc hl			;57a7
	rlca			;57a8
	ld b,(hl)		;57a9
	ld b,l			;57aa
	defb 0edh ;next byte illegal after ed	;57ab
	dec b			;57ac
	ld b,002h		;57ad
	ld h,a			;57af
	ld bc,00422h		;57b0
	ld b,046h		;57b3
	ld b,l			;57b5
	defb 0edh ;next byte illegal after ed	;57b6
	daa			;57b7
	ld (l4546h),hl		;57b8
	dec b			;57bb
	ld b,004h		;57bc
	rst 20h			;57be
	defb 0edh ;next byte illegal after ed	;57bf
	inc hl			;57c0
	ld bc,00203h		;57c1
	ld hl,00624h		;57c4
	defb 0edh ;next byte illegal after ed	;57c7
	rlca			;57c8
	inc bc			;57c9
	ld b,026h		;57ca
	dec b			;57cc
	inc b			;57cd
	rst 20h			;57ce
	ld bc,0ed42h		;57cf
	inc bc			;57d2
	ld (bc),a		;57d3
	inc bc			;57d4
	inc b			;57d5
	rst 20h			;57d6
	inc hl			;57d7
	inc b			;57d8
	ld (bc),a		;57d9
	defb 0edh ;next byte illegal after ed	;57da
	inc hl			;57db
	ld bc,0e703h		;57dc
	ld (bc),a		;57df
	inc hl			;57e0
	ld (bc),a		;57e1
	defb 0edh ;next byte illegal after ed	;57e2
	ld bc,l4762h		;57e3
	ld bc,08604h		;57e6
	add a,l			;57e9
	defb 0edh ;next byte illegal after ed	;57ea
	dec b			;57eb
	ld b,004h		;57ec
	daa			;57ee
	inc bc			;57ef
	inc b			;57f0
	ld b,0edh		;57f1
	ld h,005h		;57f3
	ld h,005h		;57f5
	add a,(hl)		;57f7
	add a,l			;57f8
	defb 0edh ;next byte illegal after ed	;57f9
	dec b			;57fa
	ld b,004h		;57fb
	rst 20h			;57fd
	ld h,d			;57fe
	ld bc,0ed22h		;57ff
	inc bc			;5802
	daa			;5803
	ld (bc),a		;5804
	inc b			;5805
	ld h,(hl)		;5806
	ld h,l			;5807
	and l			;5808
	defb 0edh ;next byte illegal after ed	;5809
	add a,(hl)		;580a
	rst 20h			;580b
	inc hl			;580c
	ld (bc),a		;580d
	defb 0edh ;next byte illegal after ed	;580e
	inc bc			;580f
	add a,d			;5810
	rst 20h			;5811
	ld b,e			;5812
	sbc hl,hl		;5813
	ld h,a			;5815
	ld b,c			;5816
	defb 0edh ;next byte illegal after ed	;5817
	inc h			;5818
	ld b,027h		;5819
	ld (bc),a		;581b
	inc b			;581c
	ld h,005h		;581d
	inc b			;581f
	rst 20h			;5820
	ld bc,0ed03h		;5821
	and d			;5824
	rst 20h			;5825
	inc bc			;5826
	ld (bc),a		;5827
	defb 0edh ;next byte illegal after ed	;5828
	ld bc,00102h		;5829
	inc bc			;582c
	ld (bc),a		;582d
	inc bc			;582e
	rst 20h			;582f
	ld (bc),a		;5830
	inc bc			;5831
	defb 0edh ;next byte illegal after ed	;5832
	add a,d			;5833
	inc hl			;5834
	rlca			;5835
	ld b,046h		;5836
	defb 0edh ;next byte illegal after ed	;5838
	dec h			;5839
	inc bc			;583a
	ld b,a			;583b
	ld bc,00402h		;583c
	ld h,(hl)		;583f
	ld b,l			;5840
	defb 0edh ;next byte illegal after ed	;5841
	ld b,004h		;5842
	and a			;5844
	ld (bc),a		;5845
	inc bc			;5846
	ld b,d			;5847
	inc bc			;5848
	defb 0edh ;next byte illegal after ed	;5849
	ld b,006h		;584a
	add a,e			;584c
	rst 20h			;584d
	ld (001edh),hl		;584e
	add a,d			;5851
	rst 20h			;5852
	inc bc			;5853
	ld b,d			;5854
	defb 0edh ;next byte illegal after ed	;5855
	rst 20h			;5856
	ld bc,00103h		;5857
	inc bc			;585a
	ld (bc),a		;585b
	inc hl			;585c
	defb 0edh ;next byte illegal after ed	;585d
	ld (bc),a		;585e
	and a			;585f
	inc bc			;5860
	ld h,d			;5861
	inc b			;5862
	ld h,0edh		;5863
	dec b			;5865
	inc b			;5866
	ld b,a			;5867
	ld (02604h),hl		;5868
	dec b			;586b
	inc b			;586c
	ld h,a			;586d
	inc hl			;586e
	defb 0edh ;next byte illegal after ed	;586f
	ld (bc),a		;5870
	inc b			;5871
	ld h,(hl)		;5872
	ld b,l			;5873
	and 0e5h		;5874
	defb 0edh ;next byte illegal after ed	;5876
	and 0e5h		;5877
	defb 0edh ;next byte illegal after ed	;5879
	ld h,(hl)		;587a
	ld h,l			;587b
	defb 0edh ;next byte illegal after ed	;587c
	push hl			;587d
	and 0edh		;587e
	dec b			;5880
	ld b,004h		;5881
	daa			;5883
	ld bc,l4604h		;5884
	dec h			;5887
	defb 0edh ;next byte illegal after ed	;5888
	inc h			;5889
	rlca			;588a
	ld h,005h		;588b
	inc h			;588d
	rlca			;588e
	ld b,066h		;588f
	ld b,l			;5891
	defb 0edh ;next byte illegal after ed	;5892
	inc b			;5893
	rst 20h			;5894
	ld bc,00342h		;5895
	add a,d			;5898
	rrd			;5899
	inc bc			;589b
	inc b			;589c
	ld h,(hl)		;589d
	ld b,l			;589e
	defb 0edh ;next byte illegal after ed	;589f
	inc b			;58a0
	rst 20h			;58a1
	ld (l6203h),hl		;58a2
	defb 0edh ;next byte illegal after ed	;58a5
	inc bc			;58a6
	rst 0			;58a7
	and d			;58a8
	inc b			;58a9
	defb 0edh ;next byte illegal after ed	;58aa
	and 0e5h		;58ab
	defb 0edh ;next byte illegal after ed	;58ad
	ld h,(hl)		;58ae
	ld h,l			;58af
	add a,l			;58b0
	add a,(hl)		;58b1
	defb 0edh ;next byte illegal after ed	;58b2
	inc b			;58b3
	add a,a			;58b4
	ld h,d			;58b5
	inc b			;58b6
	ld b,(hl)		;58b7
	dec h			;58b8
	defb 0edh ;next byte illegal after ed	;58b9
	inc bc			;58ba
	rst 20h			;58bb
	ld (bc),a		;58bc
	inc hl			;58bd
	ld (bc),a		;58be
	inc bc			;58bf
	jp po,0e7edh		;58c0
	and d			;58c3
	defb 0edh ;next byte illegal after ed	;58c4
	rst 20h			;58c5
	inc bc			;58c6
	add a,d			;58c7
	defb 0edh ;next byte illegal after ed	;58c8
	and a			;58c9
	inc bc			;58ca
	ld b,d			;58cb
	inc b			;58cc
	and 0edh		;58cd
	push hl			;58cf
	and 0edh		;58d0
	push hl			;58d2
	and 0edh		;58d3
	push hl			;58d5
	and 0edh		;58d6
	push hl			;58d8
	ld h,(hl)		;58d9
	retn			;58da
	ld b,(hl)		;58dc
	dec h			;58dd
	inc b			;58de
	daa			;58df
	ld (bc),a		;58e0
	inc b			;58e1
	defb 0edh ;next byte illegal after ed	;58e2
	and 0e5h		;58e3
	im 0			;58e5
	ld b,l			;58e7
	push hl			;58e8
	and 0edh		;58e9
	push hl			;58eb
	and 0edh		;58ec
	ld b,l			;58ee
	ld b,(hl)		;58ef
	and 0e5h		;58f0
	defb 0edh ;next byte illegal after ed	;58f2
	ld h,025h		;58f3
	defb 0edh ;next byte illegal after ed	;58f5
	push hl			;58f6
	and 0edh		;58f7
	push hl			;58f9
	and 0edh		;58fa
	push hl			;58fc
	and 0edh		;58fd
	push hl			;58ff
	and 0edh		;5900
	push hl			;5902
	and 0edh		;5903
	push hl			;5905
	and 0edh		;5906
	push hl			;5908
	and 0edh		;5909
	push hl			;590b
	and 0edh		;590c
	push hl			;590e
	and 0edh		;590f
	push hl			;5911
	and 0edh		;5912
	push hl			;5914
	and 0edh		;5915
	push hl			;5917
	and 0edh		;5918
	push hl			;591a
	and 0edh		;591b
	push hl			;591d
	and 0edh		;591e
	push hl			;5920
	and 0edh		;5921
	push hl			;5923
	and 0edh		;5924
	push hl			;5926
	and 0edh		;5927
	push hl			;5929
	and 0edh		;592a
	push hl			;592c
	and 0edh		;592d
	push hl			;592f
	and 0edh		;5930
	push hl			;5932
	and 0edh		;5933
	push hl			;5935
	and 0edh		;5936
	push hl			;5938
	and 0edh		;5939
	push hl			;593b
	and 0edh		;593c
	push hl			;593e
	and 0edh		;593f
	push hl			;5941
	and 0edh		;5942
	push hl			;5944
	and 0edh		;5945
	push hl			;5947
	and 0edh		;5948
	push hl			;594a
	and 0edh		;594b
	push hl			;594d
	and 06dh		;594e
	ld h,l			;5950
	ld b,(hl)		;5951
	ld b,00dh		;5952
	dec b			;5954
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
	jr nz,l603ah		;6006
	jr nz,$+47		;6008
	jr nz,$+78		;600a
	ld h,l			;600c
	halt			;600d
	ld h,l			;600e
	ld l,h			;600f
	jr nz,l6044h		;6010
	jr nz,$+45		;6012
	jr nz,l604eh		;6014
	jr nz,l6045h		;6016
	jr nz,l605fh		;6018
	ld l,(hl)		;601a
	ld h,e			;601b
	ld l,a			;601c
	ld (hl),l		;601d
	ld l,(hl)		;601e
	ld (hl),h		;601f
	ld h,l			;6020
	ld (hl),d		;6021
	ld l,c			;6022
	ld l,(hl)		;6023
	ld h,a			;6024
	jr nz,l6074h		;6025
	ld h,c			;6027
	ld l,(hl)		;6028
	ld h,d			;6029
	ld l,a			;602a
	ld (hl),a		;602b
	jr nz,l604eh		;602c
	jr nz,l6050h		;602e
	jr nz,l6052h		;6030
	jr nz,$+34		;6032
	jr nz,l6056h		;6034
	jr nz,$+34		;6036
	jr nz,l605ah		;6038
l603ah:
	jr nz,l605ch		;603a
	jr nz,l605eh		;603c
	jr nz,$+34		;603e
	jr nz,l6062h		;6040
	jr nz,l6097h		;6042
l6044h:
	ld d,b			;6044
l6045h:
	ld b,d			;6045
	ld c,a			;6046
	ld d,a			;6047
	ld c,e			;6048
	ld c,c			;6049
	ld d,h			;604a
	ld d,e			;604b
	ld b,d			;604c
	ld c,e			;604d
l604eh:
	jr z,l6050h		;604e
l6050h:
	nop			;6050
	nop			;6051
l6052h:
	ld bc,00302h		;6052
	inc b			;6055
l6056h:
	dec b			;6056
	ld b,007h		;6057
	ex af,af'		;6059
l605ah:
	add hl,bc		;605a
	ld a,(bc)		;605b
l605ch:
	dec bc			;605c
	inc c			;605d
l605eh:
	dec c			;605e
l605fh:
	ld c,00fh		;605f
	inc d			;6061
l6062h:
	dec d			;6062
	ld d,017h		;6063
	jr l6080h		;6065
	ld a,(de)		;6067
	dec de			;6068
	inc l			;6069
	inc e			;606a
	dec e			;606b
	ld e,01fh		;606c
	jr nz,l6091h		;606e
	ld (02423h),hl		;6070
	dec h			;6073
l6074h:
	ld h,027h		;6074
	jr z,l60a1h		;6076
	ld hl,(0002dh)		;6078
	nop			;607b
	nop			;607c
	nop			;607d
	nop			;607e
	nop			;607f
l6080h:
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
l6091h:
	nop			;6091
	nop			;6092
	nop			;6093
	nop			;6094
	nop			;6095
	nop			;6096
l6097h:
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
l60a1h:
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
l6100h:
	nop			;6100
	nop			;6101
	nop			;6102
	nop			;6103
	nop			;6104
l6105h:
	nop			;6105
	nop			;6106
	nop			;6107
	nop			;6108
	nop			;6109
	nop			;610a
l610bh:
	nop			;610b
	nop			;610c
	nop			;610d
	nop			;610e
	nop			;610f
	nop			;6110
	nop			;6111
	nop			;6112
	nop			;6113
	nop			;6114
l6115h:
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
	jr l6162h		;6151
	rrca			;6153
	rrca			;6154
	rrca			;6155
	rrca			;6156
	nop			;6157
	nop			;6158
	nop			;6159
	ld b,080h		;615a
	add a,b			;615c
	add a,b			;615d
	add a,b			;615e
	add a,b			;615f
	djnz l6172h		;6160
l6162h:
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
	ld bc,0010fh		;61c0
	rrca			;61c3
	ld sp,0350fh		;61c4
	rrca			;61c7
	ld l,00fh		;61c8
	ld bc,00017h		;61ca
	nop			;61cd
	nop			;61ce
	nop			;61cf
	ld h,a			;61d0
	inc bc			;61d1
	ld h,a			;61d2
	ld b,b			;61d3
	ld h,a			;61d4
	ld b,b			;61d5
	nop			;61d6
	nop			;61d7
	nop			;61d8
	nop			;61d9
	nop			;61da
	nop			;61db
	nop			;61dc
	nop			;61dd
	ld h,h			;61de
	ld b,b			;61df
	ld l,d			;61e0
	inc bc			;61e1
	inc bc			;61e2
	jr $+107		;61e3
	nop			;61e5
	ld l,c			;61e6
	ld (bc),a		;61e7
	ld l,c			;61e8
	inc b			;61e9
	nop			;61ea
	nop			;61eb
	ld h,h			;61ec
	ld b,b			;61ed
	inc bc			;61ee
	rla			;61ef
	ld bc,00109h		;61f0
	add hl,bc		;61f3
	ld bc,00009h		;61f4
	nop			;61f7
	nop			;61f8
	nop			;61f9
	inc bc			;61fa
	nop			;61fb
	ld h,c			;61fc
	nop			;61fd
	ld h,c			;61fe
	nop			;61ff
	ld h,c			;6200
	nop			;6201
	nop			;6202
l6203h:
	nop			;6203
	nop			;6204
	nop			;6205
	nop			;6206
	nop			;6207
	ld bc,00109h		;6208
	add hl,bc		;620b
	ld bc,l6709h		;620c
	jr nc,l6211h		;620f
l6211h:
	nop			;6211
	inc bc			;6212
	nop			;6213
	nop			;6214
	nop			;6215
	nop			;6216
	nop			;6217
	nop			;6218
	nop			;6219
	nop			;621a
	nop			;621b
	ld h,a			;621c
	jr nc,$+5		;621d
	nop			;621f
	ld bc,00109h		;6220
	add hl,bc		;6223
	ld bc,00009h		;6224
	nop			;6227
	nop			;6228
	nop			;6229
	inc bc			;622a
	nop			;622b
	ld h,c			;622c
	nop			;622d
	ld h,c			;622e
	nop			;622f
	ld h,c			;6230
	nop			;6231
	nop			;6232
	nop			;6233
	nop			;6234
	nop			;6235
	nop			;6236
	nop			;6237
	ld bc,00109h		;6238
	add hl,bc		;623b
	ld bc,l6309h		;623c
	jr nz,l6241h		;623f
l6241h:
	nop			;6241
	ld (bc),a		;6242
	jr l6245h		;6243
l6245h:
	nop			;6245
	nop			;6246
	nop			;6247
	nop			;6248
	nop			;6249
	nop			;624a
	nop			;624b
	ld h,e			;624c
	jr nz,$+5		;624d
	rla			;624f
	ld bc,00109h		;6250
	add hl,bc		;6253
	ld bc,00009h		;6254
	nop			;6257
	nop			;6258
	nop			;6259
	inc bc			;625a
	nop			;625b
	ld h,c			;625c
	nop			;625d
	ld h,c			;625e
	nop			;625f
	ld h,c			;6260
	nop			;6261
	nop			;6262
	nop			;6263
	nop			;6264
	nop			;6265
	nop			;6266
	ld a,(de)		;6267
	nop			;6268
	nop			;6269
	nop			;626a
	nop			;626b
	nop			;626c
	nop			;626d
	nop			;626e
	nop			;626f
	nop			;6270
	nop			;6271
	nop			;6272
	nop			;6273
	nop			;6274
	nop			;6275
	nop			;6276
	nop			;6277
	nop			;6278
	nop			;6279
	nop			;627a
	nop			;627b
	nop			;627c
	nop			;627d
	nop			;627e
	nop			;627f
	ld bc,00109h		;6280
	add hl,bc		;6283
	ld bc,00009h		;6284
	nop			;6287
	nop			;6288
	nop			;6289
	ld bc,00017h		;628a
	nop			;628d
	nop			;628e
	nop			;628f
	nop			;6290
	nop			;6291
	nop			;6292
	nop			;6293
	nop			;6294
	nop			;6295
	nop			;6296
	nop			;6297
	nop			;6298
	nop			;6299
	nop			;629a
	nop			;629b
	nop			;629c
	nop			;629d
	ld l,(hl)		;629e
	ld bc,00000h		;629f
	inc bc			;62a2
	jr l630eh		;62a3
	jr nz,l6310h		;62a5
	ld (02469h),hl		;62a7
	ld h,h			;62aa
	jr nc,l631bh		;62ab
	ld bc,01703h		;62ad
	ld bc,00109h		;62b0
	add hl,bc		;62b3
	ld bc,l6d09h		;62b4
	ld bc,03064h		;62b7
	ld (bc),a		;62ba
	nop			;62bb
	ld h,c			;62bc
	nop			;62bd
	ld h,c			;62be
	nop			;62bf
	ld h,c			;62c0
	nop			;62c1
	nop			;62c2
	nop			;62c3
	ld l,l			;62c4
	ld bc,00000h		;62c5
	ld bc,00109h		;62c8
	add hl,bc		;62cb
	ld bc,00009h		;62cc
	nop			;62cf
	nop			;62d0
	nop			;62d1
	inc bc			;62d2
	nop			;62d3
	nop			;62d4
	nop			;62d5
	nop			;62d6
	nop			;62d7
	nop			;62d8
	nop			;62d9
	nop			;62da
	nop			;62db
	nop			;62dc
	nop			;62dd
	inc bc			;62de
	nop			;62df
	ld bc,00109h		;62e0
	add hl,bc		;62e3
	ld bc,00009h		;62e4
	nop			;62e7
	nop			;62e8
	nop			;62e9
	inc bc			;62ea
	nop			;62eb
	ld h,c			;62ec
	nop			;62ed
	ld h,c			;62ee
	nop			;62ef
	ld h,c			;62f0
	nop			;62f1
	nop			;62f2
	nop			;62f3
	nop			;62f4
	nop			;62f5
	nop			;62f6
	nop			;62f7
	ld bc,00109h		;62f8
	add hl,bc		;62fb
	ld bc,00009h		;62fc
	nop			;62ff
	nop			;6300
	nop			;6301
	inc bc			;6302
	jr l6305h		;6303
l6305h:
	nop			;6305
	nop			;6306
	nop			;6307
	nop			;6308
l6309h:
	nop			;6309
	nop			;630a
	nop			;630b
	nop			;630c
	nop			;630d
l630eh:
	inc bc			;630e
	rla			;630f
l6310h:
	ld bc,00109h		;6310
	add hl,bc		;6313
	ld bc,00009h		;6314
	nop			;6317
	nop			;6318
	nop			;6319
	inc bc			;631a
l631bh:
	nop			;631b
	ld h,c			;631c
	nop			;631d
	ld h,c			;631e
	nop			;631f
	ld h,c			;6320
	nop			;6321
	nop			;6322
	nop			;6323
	nop			;6324
	nop			;6325
	nop			;6326
	ld a,(de)		;6327
	nop			;6328
	nop			;6329
	nop			;632a
	nop			;632b
	nop			;632c
	nop			;632d
	nop			;632e
	nop			;632f
	nop			;6330
	nop			;6331
	nop			;6332
	nop			;6333
	nop			;6334
	nop			;6335
	nop			;6336
	nop			;6337
	nop			;6338
	nop			;6339
	nop			;633a
	nop			;633b
	nop			;633c
	nop			;633d
	nop			;633e
	nop			;633f
	ld bc,00109h		;6340
	add hl,bc		;6343
	ld bc,00009h		;6344
	nop			;6347
	nop			;6348
	nop			;6349
	ld bc,00017h		;634a
	nop			;634d
	nop			;634e
	nop			;634f
	nop			;6350
	nop			;6351
	nop			;6352
	nop			;6353
	nop			;6354
	nop			;6355
	nop			;6356
	nop			;6357
	nop			;6358
	nop			;6359
	nop			;635a
	nop			;635b
	nop			;635c
	nop			;635d
	nop			;635e
	nop			;635f
	nop			;6360
	nop			;6361
	inc bc			;6362
	jr l63ceh		;6363
	ld b,b			;6365
	ld l,c			;6366
	ld b,d			;6367
	ld l,c			;6368
	ld b,h			;6369
	nop			;636a
	nop			;636b
	nop			;636c
	nop			;636d
	inc bc			;636e
	rla			;636f
	ld bc,00109h		;6370
	add hl,bc		;6373
	ld bc,00009h		;6374
	nop			;6377
	nop			;6378
	nop			;6379
	ld (bc),a		;637a
	nop			;637b
	ld h,c			;637c
	nop			;637d
	ld h,c			;637e
	nop			;637f
	ld h,c			;6380
	nop			;6381
	nop			;6382
	nop			;6383
	nop			;6384
	nop			;6385
	nop			;6386
	nop			;6387
	ld bc,00109h		;6388
	add hl,bc		;638b
	ld bc,l6309h		;638c
	djnz l6391h		;638f
l6391h:
	nop			;6391
	inc bc			;6392
	nop			;6393
	nop			;6394
	nop			;6395
	nop			;6396
	nop			;6397
	nop			;6398
	nop			;6399
	nop			;639a
	nop			;639b
	ld h,e			;639c
	djnz $+5		;639d
	nop			;639f
	ld bc,00109h		;63a0
	add hl,bc		;63a3
	ld bc,00009h		;63a4
	nop			;63a7
	nop			;63a8
	nop			;63a9
	inc bc			;63aa
	nop			;63ab
	ld h,c			;63ac
	nop			;63ad
	ld h,c			;63ae
	nop			;63af
	ld h,c			;63b0
	nop			;63b1
	nop			;63b2
	nop			;63b3
	nop			;63b4
	nop			;63b5
	nop			;63b6
	nop			;63b7
	ld bc,00109h		;63b8
	add hl,bc		;63bb
	ld bc,00009h		;63bc
	nop			;63bf
	nop			;63c0
	nop			;63c1
	inc bc			;63c2
	jr l63c5h		;63c3
l63c5h:
	nop			;63c5
	nop			;63c6
	nop			;63c7
	nop			;63c8
	nop			;63c9
	nop			;63ca
	nop			;63cb
	nop			;63cc
	nop			;63cd
l63ceh:
	inc bc			;63ce
	rla			;63cf
	ld bc,00109h		;63d0
	add hl,bc		;63d3
	ld bc,00009h		;63d4
	nop			;63d7
	nop			;63d8
	nop			;63d9
	inc bc			;63da
	nop			;63db
	ld h,c			;63dc
	nop			;63dd
	ld h,c			;63de
	nop			;63df
	ld h,c			;63e0
	nop			;63e1
	nop			;63e2
	nop			;63e3
	nop			;63e4
	nop			;63e5
	nop			;63e6
	ld a,(de)		;63e7
	nop			;63e8
	nop			;63e9
	nop			;63ea
	nop			;63eb
	nop			;63ec
	nop			;63ed
	nop			;63ee
	nop			;63ef
	nop			;63f0
	nop			;63f1
	nop			;63f2
	nop			;63f3
	nop			;63f4
	nop			;63f5
	nop			;63f6
	nop			;63f7
	nop			;63f8
	nop			;63f9
	nop			;63fa
	nop			;63fb
	nop			;63fc
	nop			;63fd
	nop			;63fe
	nop			;63ff
	ld bc,00109h		;6400
	add hl,bc		;6403
	ld bc,00009h		;6404
	nop			;6407
	nop			;6408
l6409h:
	nop			;6409
	ld (bc),a		;640a
	rla			;640b
	nop			;640c
	nop			;640d
	nop			;640e
	nop			;640f
	nop			;6410
	nop			;6411
	nop			;6412
	nop			;6413
	nop			;6414
	nop			;6415
	nop			;6416
	nop			;6417
	nop			;6418
	nop			;6419
	nop			;641a
	nop			;641b
	nop			;641c
	nop			;641d
	nop			;641e
	nop			;641f
	nop			;6420
	nop			;6421
	inc bc			;6422
	jr l648eh		;6423
	ld h,b			;6425
	ld l,c			;6426
	ld h,d			;6427
	ld l,c			;6428
	ld h,h			;6429
	nop			;642a
	nop			;642b
	nop			;642c
	nop			;642d
	inc bc			;642e
	rla			;642f
	ld bc,00109h		;6430
	add hl,bc		;6433
	ld bc,00009h		;6434
	nop			;6437
	nop			;6438
	nop			;6439
	inc bc			;643a
	nop			;643b
	ld h,c			;643c
	nop			;643d
	ld h,c			;643e
	nop			;643f
	ld h,c			;6440
	nop			;6441
	nop			;6442
	nop			;6443
	nop			;6444
	nop			;6445
	nop			;6446
	nop			;6447
	ld bc,00109h		;6448
	add hl,bc		;644b
	ld bc,00009h		;644c
	nop			;644f
	nop			;6450
	nop			;6451
	inc bc			;6452
	nop			;6453
	nop			;6454
	nop			;6455
	nop			;6456
	nop			;6457
	nop			;6458
	nop			;6459
	nop			;645a
	nop			;645b
	nop			;645c
	nop			;645d
	inc bc			;645e
	nop			;645f
	ld bc,00109h		;6460
	add hl,bc		;6463
	ld bc,00009h		;6464
	nop			;6467
	nop			;6468
	nop			;6469
	inc bc			;646a
	nop			;646b
	ld h,c			;646c
	nop			;646d
	ld h,c			;646e
	nop			;646f
	ld h,c			;6470
	nop			;6471
	nop			;6472
	nop			;6473
	nop			;6474
	nop			;6475
	nop			;6476
	nop			;6477
	ld bc,00109h		;6478
	add hl,bc		;647b
	ld bc,00009h		;647c
	nop			;647f
	nop			;6480
	nop			;6481
	ld (bc),a		;6482
	jr l6485h		;6483
l6485h:
	nop			;6485
	nop			;6486
	nop			;6487
	nop			;6488
	nop			;6489
	nop			;648a
	nop			;648b
	nop			;648c
	nop			;648d
l648eh:
	inc bc			;648e
	rla			;648f
	ld bc,00109h		;6490
	add hl,bc		;6493
	ld bc,00009h		;6494
	nop			;6497
	nop			;6498
	nop			;6499
	ld (bc),a		;649a
	nop			;649b
	ld h,c			;649c
	nop			;649d
	ld h,c			;649e
	nop			;649f
	ld h,c			;64a0
	nop			;64a1
	nop			;64a2
	nop			;64a3
	nop			;64a4
	nop			;64a5
	nop			;64a6
	ld a,(de)		;64a7
	nop			;64a8
	nop			;64a9
	nop			;64aa
	nop			;64ab
	nop			;64ac
	nop			;64ad
	nop			;64ae
	nop			;64af
	nop			;64b0
	nop			;64b1
	nop			;64b2
	nop			;64b3
	nop			;64b4
	nop			;64b5
	nop			;64b6
	nop			;64b7
	nop			;64b8
	nop			;64b9
	nop			;64ba
	nop			;64bb
	nop			;64bc
	nop			;64bd
	nop			;64be
	nop			;64bf
	ld bc,00109h		;64c0
	add hl,bc		;64c3
	ld bc,00009h		;64c4
	nop			;64c7
	nop			;64c8
	nop			;64c9
	ld bc,00017h		;64ca
	nop			;64cd
	nop			;64ce
	nop			;64cf
	nop			;64d0
	nop			;64d1
	nop			;64d2
	nop			;64d3
	nop			;64d4
	nop			;64d5
	nop			;64d6
	nop			;64d7
	nop			;64d8
	nop			;64d9
	nop			;64da
	nop			;64db
	nop			;64dc
	nop			;64dd
	nop			;64de
	nop			;64df
	nop			;64e0
	nop			;64e1
	inc bc			;64e2
	jr l654eh		;64e3
	add a,b			;64e5
	ld l,c			;64e6
	add a,d			;64e7
	ld l,c			;64e8
	add a,h			;64e9
	nop			;64ea
	nop			;64eb
	nop			;64ec
	nop			;64ed
	inc bc			;64ee
	rla			;64ef
	ld bc,00109h		;64f0
	add hl,bc		;64f3
	ld bc,00009h		;64f4
	nop			;64f7
	nop			;64f8
	nop			;64f9
	inc bc			;64fa
	nop			;64fb
	ld h,c			;64fc
	nop			;64fd
	ld h,c			;64fe
	nop			;64ff
	ld h,c			;6500
	nop			;6501
	nop			;6502
	nop			;6503
	nop			;6504
	nop			;6505
	nop			;6506
	nop			;6507
	ld bc,00109h		;6508
	add hl,bc		;650b
	ld bc,00009h		;650c
	nop			;650f
	nop			;6510
	nop			;6511
	inc bc			;6512
	nop			;6513
	nop			;6514
	nop			;6515
	nop			;6516
	nop			;6517
	nop			;6518
	nop			;6519
	nop			;651a
	nop			;651b
	nop			;651c
	nop			;651d
	inc bc			;651e
	nop			;651f
	ld bc,00109h		;6520
	add hl,bc		;6523
	ld bc,00009h		;6524
	nop			;6527
	nop			;6528
	nop			;6529
	ld (bc),a		;652a
	nop			;652b
	ld h,c			;652c
	nop			;652d
	ld h,c			;652e
	nop			;652f
	ld h,c			;6530
	nop			;6531
	nop			;6532
	nop			;6533
	nop			;6534
	nop			;6535
	nop			;6536
	nop			;6537
	ld bc,00109h		;6538
	add hl,bc		;653b
	ld bc,00009h		;653c
	nop			;653f
	nop			;6540
	nop			;6541
	inc bc			;6542
	jr l6545h		;6543
l6545h:
	nop			;6545
	nop			;6546
	nop			;6547
	nop			;6548
	nop			;6549
	nop			;654a
	nop			;654b
	nop			;654c
	nop			;654d
l654eh:
	inc bc			;654e
	rla			;654f
	ld bc,00109h		;6550
	add hl,bc		;6553
	ld bc,00009h		;6554
	nop			;6557
	nop			;6558
	nop			;6559
	inc bc			;655a
	nop			;655b
	ld h,c			;655c
	nop			;655d
	ld h,c			;655e
	nop			;655f
	ld h,c			;6560
	nop			;6561
	nop			;6562
	nop			;6563
	nop			;6564
	nop			;6565
	nop			;6566
	ld a,(de)		;6567
	nop			;6568
	nop			;6569
	nop			;656a
	nop			;656b
	nop			;656c
	nop			;656d
	nop			;656e
	nop			;656f
	nop			;6570
	nop			;6571
	nop			;6572
	nop			;6573
	nop			;6574
	nop			;6575
	nop			;6576
	nop			;6577
	nop			;6578
	nop			;6579
	nop			;657a
	nop			;657b
	nop			;657c
	nop			;657d
	nop			;657e
	nop			;657f
	ld bc,00109h		;6580
	add hl,bc		;6583
	ld bc,00009h		;6584
	nop			;6587
	nop			;6588
	nop			;6589
	ld (bc),a		;658a
	rla			;658b
	nop			;658c
	nop			;658d
	nop			;658e
	nop			;658f
	nop			;6590
	nop			;6591
	nop			;6592
	nop			;6593
	nop			;6594
	nop			;6595
	nop			;6596
	nop			;6597
	nop			;6598
	nop			;6599
	nop			;659a
	nop			;659b
	nop			;659c
	nop			;659d
	nop			;659e
	nop			;659f
	nop			;65a0
	nop			;65a1
	ld bc,l6918h		;65a2
	and b			;65a5
	ld l,c			;65a6
	and d			;65a7
	ld l,c			;65a8
	and h			;65a9
	nop			;65aa
	nop			;65ab
	nop			;65ac
	nop			;65ad
	inc bc			;65ae
	rla			;65af
	ld bc,00109h		;65b0
	add hl,bc		;65b3
	ld bc,00009h		;65b4
	nop			;65b7
	nop			;65b8
	nop			;65b9
	ld (bc),a		;65ba
	nop			;65bb
	ld h,c			;65bc
	nop			;65bd
	ld h,c			;65be
	nop			;65bf
	ld h,c			;65c0
	nop			;65c1
	nop			;65c2
	nop			;65c3
	nop			;65c4
	nop			;65c5
	nop			;65c6
	nop			;65c7
	ld bc,00109h		;65c8
	add hl,bc		;65cb
	ld bc,l6309h		;65cc
	nop			;65cf
	nop			;65d0
	nop			;65d1
	ld bc,00000h		;65d2
	nop			;65d5
	nop			;65d6
	nop			;65d7
	nop			;65d8
	nop			;65d9
	ld h,a			;65da
	add a,b			;65db
	ld h,e			;65dc
	nop			;65dd
	inc bc			;65de
	nop			;65df
	ld bc,00109h		;65e0
	add hl,bc		;65e3
	ld bc,00009h		;65e4
	nop			;65e7
	ld h,a			;65e8
	add a,b			;65e9
	ld bc,l6100h		;65ea
	nop			;65ed
	ld h,c			;65ee
	nop			;65ef
	ld h,c			;65f0
	nop			;65f1
	nop			;65f2
	nop			;65f3
	nop			;65f4
	nop			;65f5
	nop			;65f6
	nop			;65f7
	ld bc,00109h		;65f8
	add hl,bc		;65fb
	ld bc,00009h		;65fc
	nop			;65ff
	nop			;6600
	nop			;6601
l6602h:
	inc bc			;6602
	jr l6605h		;6603
l6605h:
	nop			;6605
	nop			;6606
	nop			;6607
	nop			;6608
	nop			;6609
	nop			;660a
	nop			;660b
	nop			;660c
	nop			;660d
	inc bc			;660e
	rla			;660f
	ld bc,00109h		;6610
	add hl,bc		;6613
	ld bc,00009h		;6614
	nop			;6617
	nop			;6618
	nop			;6619
	inc bc			;661a
	nop			;661b
	ld h,c			;661c
	nop			;661d
	ld h,c			;661e
	nop			;661f
	ld h,c			;6620
	nop			;6621
	nop			;6622
	nop			;6623
	nop			;6624
l6625h:
	nop			;6625
	nop			;6626
	ld a,(de)		;6627
	nop			;6628
	nop			;6629
	nop			;662a
	nop			;662b
	nop			;662c
	nop			;662d
	nop			;662e
	nop			;662f
	nop			;6630
	nop			;6631
	nop			;6632
	nop			;6633
	nop			;6634
	nop			;6635
	nop			;6636
	nop			;6637
	nop			;6638
	nop			;6639
	nop			;663a
	nop			;663b
	nop			;663c
	nop			;663d
	nop			;663e
	nop			;663f
	ld bc,00109h		;6640
	add hl,bc		;6643
	ld bc,00009h		;6644
	nop			;6647
	nop			;6648
	nop			;6649
	ld bc,00017h		;664a
	nop			;664d
	nop			;664e
	nop			;664f
	nop			;6650
	nop			;6651
	nop			;6652
	nop			;6653
	nop			;6654
	nop			;6655
	nop			;6656
	nop			;6657
	nop			;6658
	nop			;6659
	nop			;665a
	nop			;665b
	nop			;665c
	nop			;665d
	nop			;665e
	nop			;665f
	nop			;6660
	nop			;6661
	inc bc			;6662
	jr l66ceh		;6663
	ret nz			;6665
	ld l,c			;6666
	jp nz,0c469h		;6667
	nop			;666a
	nop			;666b
	nop			;666c
	nop			;666d
	inc bc			;666e
	rla			;666f
	ld bc,00109h		;6670
	add hl,bc		;6673
	ld bc,00009h		;6674
	nop			;6677
	nop			;6678
	nop			;6679
	inc bc			;667a
	nop			;667b
	ld h,c			;667c
	nop			;667d
	ld h,c			;667e
	nop			;667f
	ld h,c			;6680
	nop			;6681
	ld h,h			;6682
	inc bc			;6683
	nop			;6684
	nop			;6685
	nop			;6686
	nop			;6687
	ld bc,00109h		;6688
	add hl,bc		;668b
	ld bc,00009h		;668c
	nop			;668f
	ld h,h			;6690
	inc bc			;6691
	inc bc			;6692
	nop			;6693
	nop			;6694
	nop			;6695
	nop			;6696
	nop			;6697
	nop			;6698
	nop			;6699
	nop			;669a
	nop			;669b
	nop			;669c
	nop			;669d
	inc bc			;669e
	nop			;669f
	ld bc,00109h		;66a0
	add hl,bc		;66a3
	ld bc,00009h		;66a4
	nop			;66a7
	nop			;66a8
	nop			;66a9
	inc bc			;66aa
	nop			;66ab
	ld h,c			;66ac
	nop			;66ad
	ld h,c			;66ae
	nop			;66af
	ld h,c			;66b0
	nop			;66b1
	nop			;66b2
	nop			;66b3
	nop			;66b4
	nop			;66b5
	nop			;66b6
	nop			;66b7
	ld bc,00109h		;66b8
	add hl,bc		;66bb
	ld bc,00009h		;66bc
	nop			;66bf
	nop			;66c0
	nop			;66c1
	inc bc			;66c2
	jr l66c5h		;66c3
l66c5h:
	nop			;66c5
	nop			;66c6
	nop			;66c7
	nop			;66c8
	nop			;66c9
	nop			;66ca
	nop			;66cb
	nop			;66cc
	nop			;66cd
l66ceh:
	inc bc			;66ce
	rla			;66cf
	ld bc,00109h		;66d0
	add hl,bc		;66d3
	ld bc,00009h		;66d4
	nop			;66d7
	nop			;66d8
	nop			;66d9
	inc bc			;66da
	nop			;66db
	ld h,c			;66dc
	nop			;66dd
	ld h,c			;66de
	nop			;66df
	ld h,c			;66e0
	nop			;66e1
	nop			;66e2
	nop			;66e3
	nop			;66e4
	nop			;66e5
	nop			;66e6
	ld a,(de)		;66e7
	nop			;66e8
	nop			;66e9
	nop			;66ea
	nop			;66eb
	nop			;66ec
	nop			;66ed
	nop			;66ee
	nop			;66ef
	nop			;66f0
	nop			;66f1
	nop			;66f2
	nop			;66f3
	nop			;66f4
	nop			;66f5
	nop			;66f6
	nop			;66f7
	nop			;66f8
	nop			;66f9
	nop			;66fa
	nop			;66fb
	nop			;66fc
	nop			;66fd
	nop			;66fe
	nop			;66ff
l6700h:
	ld bc,00109h		;6700
	add hl,bc		;6703
	ld bc,00009h		;6704
	nop			;6707
	nop			;6708
l6709h:
	nop			;6709
	ld (bc),a		;670a
	rla			;670b
	nop			;670c
	nop			;670d
	nop			;670e
	nop			;670f
	nop			;6710
	nop			;6711
	nop			;6712
	nop			;6713
	nop			;6714
	nop			;6715
	nop			;6716
	nop			;6717
	nop			;6718
	nop			;6719
	nop			;671a
	nop			;671b
	nop			;671c
	nop			;671d
	nop			;671e
	nop			;671f
	nop			;6720
	nop			;6721
	inc bc			;6722
	jr $+107		;6723
	ret po			;6725
	ld l,c			;6726
	jp po,0e469h		;6727
	nop			;672a
	nop			;672b
	nop			;672c
	nop			;672d
	inc bc			;672e
	rla			;672f
	ld bc,00109h		;6730
	add hl,bc		;6733
	ld bc,00009h		;6734
	nop			;6737
	nop			;6738
	nop			;6739
	inc bc			;673a
	nop			;673b
	ld h,c			;673c
	nop			;673d
	ld h,c			;673e
	nop			;673f
	ld h,c			;6740
	nop			;6741
	ld h,h			;6742
	jr nz,l6745h		;6743
l6745h:
	nop			;6745
	nop			;6746
	nop			;6747
	ld bc,00109h		;6748
	add hl,bc		;674b
	ld bc,00009h		;674c
	nop			;674f
	ld h,h			;6750
	jr nz,l6756h		;6751
	nop			;6753
	nop			;6754
	nop			;6755
l6756h:
	nop			;6756
	nop			;6757
	nop			;6758
	nop			;6759
	nop			;675a
	nop			;675b
	nop			;675c
	nop			;675d
	inc bc			;675e
	nop			;675f
	ld bc,00109h		;6760
	add hl,bc		;6763
	ld bc,00009h		;6764
	nop			;6767
	nop			;6768
	nop			;6769
	inc bc			;676a
	nop			;676b
	ld h,c			;676c
	nop			;676d
	ld h,c			;676e
	nop			;676f
	ld h,c			;6770
	nop			;6771
	nop			;6772
	nop			;6773
	nop			;6774
	nop			;6775
	nop			;6776
	nop			;6777
	ld bc,00109h		;6778
	add hl,bc		;677b
	ld bc,00009h		;677c
	nop			;677f
	ld h,a			;6780
	rst 38h			;6781
	inc bc			;6782
	jr l6785h		;6783
l6785h:
	nop			;6785
	nop			;6786
	nop			;6787
	nop			;6788
	nop			;6789
	ld h,a			;678a
	rst 38h			;678b
	ld l,l			;678c
	ld bc,01703h		;678d
	ld bc,00109h		;6790
	add hl,bc		;6793
	ld bc,l6d09h		;6794
	ld (bc),a		;6797
	nop			;6798
	nop			;6799
	inc bc			;679a
	nop			;679b
	ld h,c			;679c
	nop			;679d
	ld h,c			;679e
	nop			;679f
	ld l,c			;67a0
	inc bc			;67a1
	nop			;67a2
	nop			;67a3
	nop			;67a4
	nop			;67a5
	nop			;67a6
	ld a,(de)		;67a7
	nop			;67a8
	nop			;67a9
	nop			;67aa
	nop			;67ab
	nop			;67ac
	nop			;67ad
	nop			;67ae
	nop			;67af
	nop			;67b0
	nop			;67b1
	nop			;67b2
	nop			;67b3
	nop			;67b4
	nop			;67b5
	nop			;67b6
	nop			;67b7
	nop			;67b8
	nop			;67b9
	nop			;67ba
	nop			;67bb
	nop			;67bc
	nop			;67bd
	nop			;67be
	nop			;67bf
	ld bc,0010ch		;67c0
	inc c			;67c3
	ld sp,0360ch		;67c4
	inc c			;67c7
	inc a			;67c8
	inc c			;67c9
	ld bc,00017h		;67ca
	nop			;67cd
	nop			;67ce
	nop			;67cf
	ld h,a			;67d0
	inc bc			;67d1
	ld h,a			;67d2
	ld b,b			;67d3
	ld h,a			;67d4
	ld b,b			;67d5
	nop			;67d6
	nop			;67d7
	nop			;67d8
	nop			;67d9
	nop			;67da
	nop			;67db
	nop			;67dc
	nop			;67dd
	nop			;67de
	nop			;67df
	ld l,d			;67e0
	inc bc			;67e1
	inc bc			;67e2
	jr l684eh		;67e3
	nop			;67e5
	ld l,c			;67e6
	ld (bc),a		;67e7
	ld l,c			;67e8
	inc b			;67e9
	ld h,h			;67ea
	jr nc,$+102		;67eb
	ld b,b			;67ed
	inc bc			;67ee
	rla			;67ef
	ld bc,00109h		;67f0
	add hl,bc		;67f3
	ld bc,00009h		;67f4
	nop			;67f7
	nop			;67f8
	nop			;67f9
	inc bc			;67fa
	nop			;67fb
	ld h,c			;67fc
	nop			;67fd
	ld h,c			;67fe
	nop			;67ff
	ld h,c			;6800
	nop			;6801
	nop			;6802
	nop			;6803
	nop			;6804
	nop			;6805
	nop			;6806
	nop			;6807
	ld bc,00109h		;6808
	add hl,bc		;680b
	ld bc,l6709h		;680c
	jr nc,l6811h		;680f
l6811h:
	nop			;6811
	inc bc			;6812
	nop			;6813
	nop			;6814
	nop			;6815
	nop			;6816
	nop			;6817
	nop			;6818
	nop			;6819
	nop			;681a
	nop			;681b
	ld h,a			;681c
	jr nc,$+5		;681d
	nop			;681f
	ld bc,00109h		;6820
	add hl,bc		;6823
	ld bc,00009h		;6824
	nop			;6827
	nop			;6828
	nop			;6829
	inc bc			;682a
	nop			;682b
	ld h,c			;682c
	nop			;682d
	ld h,c			;682e
	nop			;682f
	ld h,c			;6830
	nop			;6831
	nop			;6832
	nop			;6833
	nop			;6834
	nop			;6835
	nop			;6836
	nop			;6837
	ld bc,00109h		;6838
	add hl,bc		;683b
	ld bc,l6309h		;683c
	inc bc			;683f
	nop			;6840
	nop			;6841
	ld (bc),a		;6842
	jr l6845h		;6843
l6845h:
	nop			;6845
	nop			;6846
	nop			;6847
	nop			;6848
	nop			;6849
	nop			;684a
	nop			;684b
	ld h,e			;684c
	ld (bc),a		;684d
l684eh:
	inc bc			;684e
	rla			;684f
	ld bc,00109h		;6850
	add hl,bc		;6853
	ld bc,00009h		;6854
	nop			;6857
	nop			;6858
	nop			;6859
	inc bc			;685a
	nop			;685b
	ld h,c			;685c
	nop			;685d
	ld h,c			;685e
	nop			;685f
	ld h,c			;6860
	nop			;6861
	nop			;6862
	nop			;6863
	nop			;6864
	nop			;6865
	nop			;6866
	ld a,(de)		;6867
	nop			;6868
	nop			;6869
	nop			;686a
	nop			;686b
	nop			;686c
	nop			;686d
	nop			;686e
	nop			;686f
	nop			;6870
	nop			;6871
	nop			;6872
	nop			;6873
	nop			;6874
	nop			;6875
	nop			;6876
	nop			;6877
	nop			;6878
	nop			;6879
	nop			;687a
	nop			;687b
	nop			;687c
	nop			;687d
	nop			;687e
	nop			;687f
	ld bc,00109h		;6880
	add hl,bc		;6883
	ld bc,00009h		;6884
	nop			;6887
	nop			;6888
	nop			;6889
	ld bc,00017h		;688a
	nop			;688d
	nop			;688e
	nop			;688f
	nop			;6890
	nop			;6891
	nop			;6892
	nop			;6893
	nop			;6894
	nop			;6895
	nop			;6896
	nop			;6897
	nop			;6898
	nop			;6899
	nop			;689a
	nop			;689b
	nop			;689c
	nop			;689d
	nop			;689e
	nop			;689f
	nop			;68a0
	nop			;68a1
	inc bc			;68a2
	jr l690eh		;68a3
	jr nz,l6910h		;68a5
	ld (02469h),hl		;68a7
	nop			;68aa
	nop			;68ab
	nop			;68ac
	nop			;68ad
	inc bc			;68ae
	rla			;68af
	ld bc,00109h		;68b0
	add hl,bc		;68b3
	ld bc,l6709h		;68b4
	djnz l6920h		;68b7
	djnz l68bdh		;68b9
	nop			;68bb
	ld h,c			;68bc
l68bdh:
	nop			;68bd
	ld h,c			;68be
	nop			;68bf
	ld h,c			;68c0
	nop			;68c1
	nop			;68c2
	nop			;68c3
	nop			;68c4
	nop			;68c5
	nop			;68c6
	nop			;68c7
	ld bc,00109h		;68c8
	add hl,bc		;68cb
	ld bc,00009h		;68cc
	nop			;68cf
	nop			;68d0
	nop			;68d1
	inc bc			;68d2
	nop			;68d3
	nop			;68d4
	nop			;68d5
	nop			;68d6
	nop			;68d7
	nop			;68d8
	nop			;68d9
	ld h,a			;68da
	jr nz,l68ddh		;68db
l68ddh:
	nop			;68dd
	inc bc			;68de
	nop			;68df
	ld bc,00109h		;68e0
	add hl,bc		;68e3
	ld bc,00009h		;68e4
	nop			;68e7
	ld h,a			;68e8
	jr nz,l68eeh		;68e9
	nop			;68eb
	ld h,c			;68ec
	nop			;68ed
l68eeh:
	ld h,c			;68ee
	nop			;68ef
	ld h,c			;68f0
	nop			;68f1
	nop			;68f2
	nop			;68f3
	nop			;68f4
	nop			;68f5
	nop			;68f6
	nop			;68f7
	ld bc,00109h		;68f8
	add hl,bc		;68fb
	ld bc,l6709h		;68fc
	jr nc,l6901h		;68ff
l6901h:
	nop			;6901
	inc bc			;6902
	jr l6905h		;6903
l6905h:
	nop			;6905
	nop			;6906
	nop			;6907
	nop			;6908
	nop			;6909
	nop			;690a
	nop			;690b
	nop			;690c
	nop			;690d
l690eh:
	inc bc			;690e
	rla			;690f
l6910h:
	ld bc,00109h		;6910
	add hl,bc		;6913
	ld bc,00009h		;6914
	nop			;6917
l6918h:
	ld h,a			;6918
	ld b,b			;6919
	inc bc			;691a
	nop			;691b
	ld h,c			;691c
	nop			;691d
	ld h,c			;691e
	nop			;691f
l6920h:
	ld h,c			;6920
	nop			;6921
	nop			;6922
	nop			;6923
	nop			;6924
	nop			;6925
	nop			;6926
	ld a,(de)		;6927
	nop			;6928
	nop			;6929
	nop			;692a
	nop			;692b
	nop			;692c
	nop			;692d
	nop			;692e
	nop			;692f
	nop			;6930
	nop			;6931
	nop			;6932
	nop			;6933
	nop			;6934
	nop			;6935
	nop			;6936
	nop			;6937
	nop			;6938
	nop			;6939
	nop			;693a
	nop			;693b
	nop			;693c
	nop			;693d
	nop			;693e
	nop			;693f
	ld bc,00109h		;6940
	add hl,bc		;6943
	ld bc,l6709h		;6944
	jr nc,l69b0h		;6947
	jr nc,l694ch		;6949
	rla			;694b
l694ch:
	nop			;694c
	nop			;694d
	nop			;694e
	nop			;694f
	nop			;6950
	nop			;6951
	ld h,e			;6952
	inc bc			;6953
	ld h,e			;6954
	inc b			;6955
	nop			;6956
	nop			;6957
	nop			;6958
	nop			;6959
	nop			;695a
	nop			;695b
	nop			;695c
	nop			;695d
	nop			;695e
	nop			;695f
	nop			;6960
	nop			;6961
	inc bc			;6962
	jr l69ceh		;6963
	ld b,b			;6965
	ld l,c			;6966
	ld b,d			;6967
	ld l,c			;6968
	ld b,h			;6969
	nop			;696a
	nop			;696b
	nop			;696c
	nop			;696d
	inc bc			;696e
	rla			;696f
	ld bc,00109h		;6970
	add hl,bc		;6973
	ld bc,00009h		;6974
	nop			;6977
	nop			;6978
	nop			;6979
	ld (bc),a		;697a
	nop			;697b
	ld h,c			;697c
	nop			;697d
	ld h,c			;697e
	nop			;697f
	ld h,c			;6980
	nop			;6981
	nop			;6982
	nop			;6983
	nop			;6984
	nop			;6985
	nop			;6986
	nop			;6987
	ld bc,00109h		;6988
	add hl,bc		;698b
	ld bc,00009h		;698c
	nop			;698f
	nop			;6990
	nop			;6991
	inc bc			;6992
	nop			;6993
	nop			;6994
	nop			;6995
	nop			;6996
	nop			;6997
	nop			;6998
	nop			;6999
	nop			;699a
	nop			;699b
	nop			;699c
	nop			;699d
	inc bc			;699e
	nop			;699f
	ld bc,00109h		;69a0
	add hl,bc		;69a3
	ld bc,00009h		;69a4
	nop			;69a7
	nop			;69a8
	nop			;69a9
	inc bc			;69aa
	nop			;69ab
	ld h,c			;69ac
	nop			;69ad
	ld h,c			;69ae
	nop			;69af
l69b0h:
	ld h,c			;69b0
	nop			;69b1
	ld h,c			;69b2
	nop			;69b3
	nop			;69b4
	nop			;69b5
	nop			;69b6
	nop			;69b7
	ld bc,00109h		;69b8
	add hl,bc		;69bb
	ld bc,01d09h		;69bc
	rrca			;69bf
	nop			;69c0
	nop			;69c1
	inc bc			;69c2
	jr l69c5h		;69c3
l69c5h:
	nop			;69c5
	nop			;69c6
	nop			;69c7
	nop			;69c8
	nop			;69c9
	ld h,c			;69ca
	nop			;69cb
	nop			;69cc
	nop			;69cd
l69ceh:
	inc bc			;69ce
	rla			;69cf
	ld bc,00109h		;69d0
	add hl,bc		;69d3
	ld bc,01d09h		;69d4
	rrca			;69d7
	nop			;69d8
	nop			;69d9
	inc bc			;69da
	nop			;69db
	ld h,c			;69dc
	nop			;69dd
	ld h,c			;69de
	nop			;69df
	ld h,c			;69e0
	nop			;69e1
	ld h,c			;69e2
	nop			;69e3
	ld h,c			;69e4
	nop			;69e5
	nop			;69e6
	ld a,(de)		;69e7
	nop			;69e8
	nop			;69e9
	nop			;69ea
	nop			;69eb
	nop			;69ec
	nop			;69ed
	nop			;69ee
	nop			;69ef
	nop			;69f0
	nop			;69f1
	nop			;69f2
	nop			;69f3
	nop			;69f4
	nop			;69f5
	nop			;69f6
	nop			;69f7
	nop			;69f8
	nop			;69f9
	nop			;69fa
	nop			;69fb
	nop			;69fc
	nop			;69fd
	nop			;69fe
	nop			;69ff
	ld bc,00109h		;6a00
	add hl,bc		;6a03
	ld bc,01d09h		;6a04
	dec bc			;6a07
	dec e			;6a08
	ld a,(bc)		;6a09
	ld (bc),a		;6a0a
	rla			;6a0b
	nop			;6a0c
	nop			;6a0d
	nop			;6a0e
	nop			;6a0f
	nop			;6a10
	nop			;6a11
	ld h,e			;6a12
	djnz l6a78h		;6a13
	ld (bc),a		;6a15
	nop			;6a16
	nop			;6a17
	nop			;6a18
	nop			;6a19
	nop			;6a1a
	nop			;6a1b
	nop			;6a1c
	nop			;6a1d
	nop			;6a1e
	nop			;6a1f
	nop			;6a20
	nop			;6a21
	inc bc			;6a22
	jr $+107		;6a23
	ld h,b			;6a25
	ld l,c			;6a26
	ld h,d			;6a27
	ld l,c			;6a28
	ld h,h			;6a29
	ld h,a			;6a2a
	jr nz,l6a94h		;6a2b
	jr nz,$+5		;6a2d
	rla			;6a2f
	ld bc,00109h		;6a30
	add hl,bc		;6a33
	ld bc,00009h		;6a34
	nop			;6a37
	nop			;6a38
	nop			;6a39
	inc bc			;6a3a
	nop			;6a3b
	ld h,c			;6a3c
	nop			;6a3d
	ld h,c			;6a3e
	nop			;6a3f
	ld h,c			;6a40
	nop			;6a41
	ld h,h			;6a42
	ld h,b			;6a43
	ld h,h			;6a44
	ld h,b			;6a45
	nop			;6a46
	nop			;6a47
	ld bc,00109h		;6a48
	add hl,bc		;6a4b
	ld bc,00009h		;6a4c
	nop			;6a4f
	nop			;6a50
	nop			;6a51
	inc bc			;6a52
	nop			;6a53
	nop			;6a54
	nop			;6a55
	nop			;6a56
	nop			;6a57
	nop			;6a58
	nop			;6a59
	ld h,e			;6a5a
	add a,b			;6a5b
	ld h,e			;6a5c
	add a,b			;6a5d
	inc bc			;6a5e
	nop			;6a5f
	ld bc,00109h		;6a60
	add hl,bc		;6a63
	ld bc,00009h		;6a64
	nop			;6a67
	nop			;6a68
	nop			;6a69
	inc bc			;6a6a
	nop			;6a6b
	ld h,c			;6a6c
	nop			;6a6d
	ld h,c			;6a6e
	nop			;6a6f
	ld h,c			;6a70
	nop			;6a71
	ld h,h			;6a72
	ld h,b			;6a73
	ld h,h			;6a74
	ld h,b			;6a75
	nop			;6a76
	nop			;6a77
l6a78h:
	ld bc,00109h		;6a78
	add hl,bc		;6a7b
	ld bc,00009h		;6a7c
	nop			;6a7f
	nop			;6a80
	nop			;6a81
	ld (bc),a		;6a82
	jr l6a85h		;6a83
l6a85h:
	nop			;6a85
	nop			;6a86
	nop			;6a87
	nop			;6a88
	nop			;6a89
	ld h,h			;6a8a
	jr nz,$+102		;6a8b
	jr nz,$+5		;6a8d
	rla			;6a8f
	ld bc,00109h		;6a90
	add hl,bc		;6a93
l6a94h:
	ld bc,00009h		;6a94
	nop			;6a97
	nop			;6a98
	nop			;6a99
	ld (bc),a		;6a9a
	nop			;6a9b
	ld h,c			;6a9c
	nop			;6a9d
	ld h,c			;6a9e
	nop			;6a9f
	ld h,c			;6aa0
	nop			;6aa1
	ld h,h			;6aa2
	jr nz,$+102		;6aa3
	jr nz,l6aa7h		;6aa5
l6aa7h:
	ld a,(de)		;6aa7
	nop			;6aa8
	nop			;6aa9
	nop			;6aaa
	nop			;6aab
	nop			;6aac
	nop			;6aad
	nop			;6aae
	nop			;6aaf
	nop			;6ab0
	nop			;6ab1
	nop			;6ab2
	nop			;6ab3
	nop			;6ab4
	nop			;6ab5
	nop			;6ab6
	nop			;6ab7
	nop			;6ab8
	nop			;6ab9
	nop			;6aba
	nop			;6abb
	nop			;6abc
	nop			;6abd
	nop			;6abe
	nop			;6abf
	ld bc,00109h		;6ac0
	add hl,bc		;6ac3
	ld bc,00009h		;6ac4
	nop			;6ac7
	nop			;6ac8
	nop			;6ac9
	ld bc,00017h		;6aca
	nop			;6acd
	nop			;6ace
	nop			;6acf
	nop			;6ad0
	nop			;6ad1
	ld h,e			;6ad2
	add a,b			;6ad3
	ld h,e			;6ad4
	add a,b			;6ad5
	nop			;6ad6
	nop			;6ad7
	nop			;6ad8
	nop			;6ad9
	nop			;6ada
	nop			;6adb
	nop			;6adc
	nop			;6add
	nop			;6ade
	nop			;6adf
	nop			;6ae0
	nop			;6ae1
	inc bc			;6ae2
	jr l6b4eh		;6ae3
	add a,b			;6ae5
	ld l,c			;6ae6
	add a,d			;6ae7
	ld l,c			;6ae8
	add a,h			;6ae9
	ld h,h			;6aea
	ld h,b			;6aeb
	ld h,h			;6aec
	ld h,b			;6aed
	inc bc			;6aee
	rla			;6aef
	ld bc,00109h		;6af0
	add hl,bc		;6af3
	ld bc,00009h		;6af4
	nop			;6af7
	nop			;6af8
	nop			;6af9
	inc bc			;6afa
	nop			;6afb
	ld h,c			;6afc
	nop			;6afd
	ld h,c			;6afe
	nop			;6aff
	ld h,c			;6b00
	nop			;6b01
	ld h,e			;6b02
	add a,b			;6b03
	ld h,e			;6b04
	add a,b			;6b05
	nop			;6b06
	nop			;6b07
	ld bc,00109h		;6b08
	add hl,bc		;6b0b
	ld bc,00009h		;6b0c
	nop			;6b0f
	nop			;6b10
	nop			;6b11
	inc bc			;6b12
	nop			;6b13
	nop			;6b14
	nop			;6b15
	nop			;6b16
	nop			;6b17
	nop			;6b18
	nop			;6b19
	ld h,h			;6b1a
	ld h,b			;6b1b
	ld h,h			;6b1c
	ld h,b			;6b1d
	inc bc			;6b1e
	nop			;6b1f
	ld bc,00109h		;6b20
	add hl,bc		;6b23
	ld bc,00009h		;6b24
	nop			;6b27
	nop			;6b28
	nop			;6b29
	ld (bc),a		;6b2a
	nop			;6b2b
	ld h,c			;6b2c
	nop			;6b2d
	ld h,c			;6b2e
	nop			;6b2f
	ld h,c			;6b30
	nop			;6b31
	ld h,e			;6b32
	ld d,b			;6b33
	ld h,e			;6b34
	ld d,b			;6b35
	nop			;6b36
	nop			;6b37
	ld bc,00109h		;6b38
	add hl,bc		;6b3b
	ld bc,00009h		;6b3c
	nop			;6b3f
	ld h,a			;6b40
	jr nz,l6b46h		;6b41
	jr l6b45h		;6b43
l6b45h:
	nop			;6b45
l6b46h:
	nop			;6b46
	nop			;6b47
	nop			;6b48
	nop			;6b49
	ld h,h			;6b4a
	ld h,b			;6b4b
	ld h,h			;6b4c
	ld h,b			;6b4d
l6b4eh:
	inc bc			;6b4e
	rla			;6b4f
	ld bc,00109h		;6b50
	add hl,bc		;6b53
	ld bc,00009h		;6b54
	nop			;6b57
	nop			;6b58
	nop			;6b59
	inc bc			;6b5a
	nop			;6b5b
	ld h,c			;6b5c
	nop			;6b5d
	ld h,c			;6b5e
	nop			;6b5f
	ld h,c			;6b60
	nop			;6b61
	ld h,e			;6b62
	ld d,b			;6b63
	ld h,e			;6b64
	ld d,b			;6b65
	nop			;6b66
	ld a,(de)		;6b67
	nop			;6b68
	nop			;6b69
	nop			;6b6a
	nop			;6b6b
	nop			;6b6c
	nop			;6b6d
	nop			;6b6e
	nop			;6b6f
	nop			;6b70
	nop			;6b71
	nop			;6b72
	nop			;6b73
	nop			;6b74
	nop			;6b75
	nop			;6b76
	nop			;6b77
	nop			;6b78
	nop			;6b79
	nop			;6b7a
	nop			;6b7b
	nop			;6b7c
	nop			;6b7d
	nop			;6b7e
	nop			;6b7f
	ld bc,00109h		;6b80
	add hl,bc		;6b83
	ld bc,l6709h		;6b84
	ld d,b			;6b87
	ld h,a			;6b88
	ld b,b			;6b89
	ld (bc),a		;6b8a
	rla			;6b8b
	nop			;6b8c
	nop			;6b8d
	nop			;6b8e
	nop			;6b8f
	nop			;6b90
	nop			;6b91
	nop			;6b92
	nop			;6b93
	nop			;6b94
	nop			;6b95
	nop			;6b96
	nop			;6b97
	nop			;6b98
	nop			;6b99
	nop			;6b9a
	nop			;6b9b
	nop			;6b9c
	nop			;6b9d
	nop			;6b9e
	nop			;6b9f
	nop			;6ba0
	nop			;6ba1
	ld bc,l6918h		;6ba2
	and b			;6ba5
	ld l,c			;6ba6
	and d			;6ba7
	ld l,c			;6ba8
	and h			;6ba9
	nop			;6baa
	nop			;6bab
	nop			;6bac
	nop			;6bad
	inc bc			;6bae
	rla			;6baf
	ld bc,00109h		;6bb0
	add hl,bc		;6bb3
	ld bc,l6309h		;6bb4
	djnz l6c1ch		;6bb7
	dec b			;6bb9
	ld (bc),a		;6bba
	nop			;6bbb
	ld h,c			;6bbc
	nop			;6bbd
	ld h,c			;6bbe
	nop			;6bbf
	ld h,c			;6bc0
	nop			;6bc1
	dec c			;6bc2
	rrca			;6bc3
	nop			;6bc4
	nop			;6bc5
	nop			;6bc6
	nop			;6bc7
	ld bc,00109h		;6bc8
	add hl,bc		;6bcb
	ld bc,l6309h		;6bcc
	nop			;6bcf
	dec c			;6bd0
	rrca			;6bd1
	ld bc,00000h		;6bd2
	nop			;6bd5
	nop			;6bd6
	nop			;6bd7
	nop			;6bd8
	nop			;6bd9
	ld h,a			;6bda
	add a,b			;6bdb
	ld h,e			;6bdc
	nop			;6bdd
	inc bc			;6bde
	nop			;6bdf
	ld bc,00109h		;6be0
	add hl,bc		;6be3
	ld bc,l6309h		;6be4
	add a,b			;6be7
	ld h,e			;6be8
	add a,b			;6be9
	ld bc,l6100h		;6bea
	nop			;6bed
	ld h,c			;6bee
	nop			;6bef
	ld h,c			;6bf0
	nop			;6bf1
	nop			;6bf2
	nop			;6bf3
	nop			;6bf4
	nop			;6bf5
	nop			;6bf6
	nop			;6bf7
	ld bc,00109h		;6bf8
	add hl,bc		;6bfb
	ld bc,l6409h		;6bfc
	ld h,b			;6bff
	ld h,h			;6c00
	ld h,b			;6c01
	inc bc			;6c02
	jr l6c05h		;6c03
l6c05h:
	nop			;6c05
	nop			;6c06
l6c07h:
	nop			;6c07
	nop			;6c08
l6c09h:
	nop			;6c09
l6c0ah:
	nop			;6c0a
	nop			;6c0b
	nop			;6c0c
l6c0dh:
	nop			;6c0d
	inc bc			;6c0e
	rla			;6c0f
	ld bc,00109h		;6c10
	add hl,bc		;6c13
	ld bc,l6309h		;6c14
	jr nz,l6c7ch		;6c17
	jr nc,l6c1eh		;6c19
	nop			;6c1b
l6c1ch:
	ld h,c			;6c1c
	nop			;6c1d
l6c1eh:
	ld h,c			;6c1e
	nop			;6c1f
	ld h,c			;6c20
	nop			;6c21
	nop			;6c22
	nop			;6c23
	nop			;6c24
	nop			;6c25
	nop			;6c26
	ld a,(de)		;6c27
	nop			;6c28
	nop			;6c29
	nop			;6c2a
	nop			;6c2b
	nop			;6c2c
	nop			;6c2d
	nop			;6c2e
	nop			;6c2f
	nop			;6c30
	nop			;6c31
	nop			;6c32
	nop			;6c33
	nop			;6c34
	nop			;6c35
	nop			;6c36
	nop			;6c37
	nop			;6c38
	nop			;6c39
	nop			;6c3a
	nop			;6c3b
	nop			;6c3c
	nop			;6c3d
	nop			;6c3e
	nop			;6c3f
	ld bc,00109h		;6c40
	add hl,bc		;6c43
	ld bc,l6309h		;6c44
	ld d,b			;6c47
	ld h,e			;6c48
	ld d,b			;6c49
	ld bc,00017h		;6c4a
	nop			;6c4d
	nop			;6c4e
	nop			;6c4f
	nop			;6c50
	nop			;6c51
	nop			;6c52
	nop			;6c53
	ld h,a			;6c54
	jr nz,l6c57h		;6c55
l6c57h:
	nop			;6c57
	nop			;6c58
	nop			;6c59
	nop			;6c5a
	nop			;6c5b
	nop			;6c5c
	nop			;6c5d
	ld h,h			;6c5e
	ld h,b			;6c5f
	ld h,h			;6c60
	ld h,b			;6c61
	inc bc			;6c62
	jr l6cceh		;6c63
	ret nz			;6c65
	ld l,c			;6c66
	jp nz,0c469h		;6c67
	nop			;6c6a
	nop			;6c6b
	nop			;6c6c
	nop			;6c6d
	inc bc			;6c6e
	rla			;6c6f
	ld bc,00109h		;6c70
	add hl,bc		;6c73
	ld bc,l6309h		;6c74
	ld d,b			;6c77
	ld h,e			;6c78
	ld d,b			;6c79
	inc bc			;6c7a
	nop			;6c7b
l6c7ch:
	ld h,c			;6c7c
	nop			;6c7d
	ld h,c			;6c7e
	nop			;6c7f
	ld h,c			;6c80
	nop			;6c81
	nop			;6c82
	nop			;6c83
	nop			;6c84
	nop			;6c85
	nop			;6c86
	nop			;6c87
	ld bc,00109h		;6c88
	add hl,bc		;6c8b
	ld bc,l6409h		;6c8c
	ld bc,00364h		;6c8f
	inc bc			;6c92
	nop			;6c93
	nop			;6c94
	nop			;6c95
	nop			;6c96
	nop			;6c97
	nop			;6c98
	nop			;6c99
	ld h,c			;6c9a
	nop			;6c9b
	ld h,c			;6c9c
	nop			;6c9d
	inc bc			;6c9e
	nop			;6c9f
	ld bc,00109h		;6ca0
	add hl,bc		;6ca3
	ld bc,02809h		;6ca4
	inc c			;6ca7
	daa			;6ca8
	inc c			;6ca9
	inc bc			;6caa
	nop			;6cab
	ld h,c			;6cac
	nop			;6cad
	ld h,c			;6cae
	nop			;6caf
	ld h,c			;6cb0
	nop			;6cb1
	ld h,c			;6cb2
	nop			;6cb3
	ld h,c			;6cb4
	nop			;6cb5
	nop			;6cb6
	nop			;6cb7
	ld bc,00109h		;6cb8
	add hl,bc		;6cbb
	ld bc,02809h		;6cbc
	inc c			;6cbf
	daa			;6cc0
	inc c			;6cc1
	inc bc			;6cc2
	jr l6cc5h		;6cc3
l6cc5h:
	nop			;6cc5
	nop			;6cc6
	nop			;6cc7
	nop			;6cc8
	nop			;6cc9
	ld h,c			;6cca
	nop			;6ccb
	ld h,c			;6ccc
	nop			;6ccd
l6cceh:
	inc bc			;6cce
	rla			;6ccf
	ld bc,00109h		;6cd0
	add hl,bc		;6cd3
	ld bc,02809h		;6cd4
	inc c			;6cd7
	daa			;6cd8
	inc c			;6cd9
	inc bc			;6cda
	nop			;6cdb
	ld h,c			;6cdc
	nop			;6cdd
	ld h,c			;6cde
	nop			;6cdf
	ld h,c			;6ce0
	nop			;6ce1
	ld h,h			;6ce2
	ld b,b			;6ce3
	ld h,h			;6ce4
	ld b,b			;6ce5
	nop			;6ce6
	ld a,(de)		;6ce7
	nop			;6ce8
	nop			;6ce9
	nop			;6cea
	nop			;6ceb
	nop			;6cec
	nop			;6ced
	nop			;6cee
	nop			;6cef
	nop			;6cf0
	nop			;6cf1
	nop			;6cf2
	nop			;6cf3
	nop			;6cf4
	nop			;6cf5
	nop			;6cf6
	nop			;6cf7
	nop			;6cf8
	nop			;6cf9
	nop			;6cfa
	nop			;6cfb
	nop			;6cfc
	nop			;6cfd
	nop			;6cfe
	nop			;6cff
	ld bc,00109h		;6d00
	add hl,bc		;6d03
	ld bc,00009h		;6d04
	nop			;6d07
	nop			;6d08
l6d09h:
	nop			;6d09
	ld (bc),a		;6d0a
	rla			;6d0b
	nop			;6d0c
	nop			;6d0d
	nop			;6d0e
	nop			;6d0f
	nop			;6d10
	nop			;6d11
	ld h,e			;6d12
	ld d,b			;6d13
	ld h,e			;6d14
	ld d,b			;6d15
	nop			;6d16
	nop			;6d17
	nop			;6d18
	nop			;6d19
	nop			;6d1a
	nop			;6d1b
	nop			;6d1c
	nop			;6d1d
	nop			;6d1e
	nop			;6d1f
	nop			;6d20
	nop			;6d21
	inc bc			;6d22
	jr $+107		;6d23
	ret po			;6d25
	ld l,c			;6d26
	jp po,0e469h		;6d27
	ld h,h			;6d2a
	jr nc,$+102		;6d2b
	jr nc,$+5		;6d2d
	rla			;6d2f
	ld bc,00109h		;6d30
	add hl,bc		;6d33
	ld bc,00009h		;6d34
	nop			;6d37
	nop			;6d38
	nop			;6d39
	inc bc			;6d3a
	nop			;6d3b
	ld h,c			;6d3c
	nop			;6d3d
	ld h,c			;6d3e
	nop			;6d3f
	ld h,c			;6d40
	nop			;6d41
	ld h,h			;6d42
	jr nz,l6d45h		;6d43
l6d45h:
	nop			;6d45
	nop			;6d46
	nop			;6d47
	ld bc,00109h		;6d48
	add hl,bc		;6d4b
	ld bc,00009h		;6d4c
	nop			;6d4f
	ld h,h			;6d50
	jr nz,l6d56h		;6d51
	nop			;6d53
	nop			;6d54
	nop			;6d55
l6d56h:
	nop			;6d56
	nop			;6d57
	nop			;6d58
	nop			;6d59
	nop			;6d5a
	nop			;6d5b
	nop			;6d5c
	nop			;6d5d
	inc bc			;6d5e
	nop			;6d5f
	ld bc,00109h		;6d60
	add hl,bc		;6d63
	ld bc,00009h		;6d64
	nop			;6d67
	nop			;6d68
	nop			;6d69
	inc bc			;6d6a
	nop			;6d6b
	ld h,c			;6d6c
	nop			;6d6d
	ld h,c			;6d6e
	nop			;6d6f
	ld h,c			;6d70
	nop			;6d71
	nop			;6d72
	nop			;6d73
	nop			;6d74
	nop			;6d75
	nop			;6d76
	nop			;6d77
	ld bc,00109h		;6d78
	add hl,bc		;6d7b
	ld bc,00009h		;6d7c
	nop			;6d7f
	ld h,a			;6d80
	rst 38h			;6d81
	inc bc			;6d82
	jr l6d85h		;6d83
l6d85h:
	nop			;6d85
	nop			;6d86
	nop			;6d87
	nop			;6d88
	nop			;6d89
	ld h,a			;6d8a
	rst 38h			;6d8b
	ld l,l			;6d8c
	ld bc,01703h		;6d8d
	ld bc,00109h		;6d90
	add hl,bc		;6d93
	ld bc,l6d09h		;6d94
	ld (bc),a		;6d97
	nop			;6d98
	nop			;6d99
	inc bc			;6d9a
	nop			;6d9b
	ld h,c			;6d9c
	nop			;6d9d
	ld h,c			;6d9e
	nop			;6d9f
	ld l,c			;6da0
	inc bc			;6da1
	nop			;6da2
	nop			;6da3
	nop			;6da4
	nop			;6da5
	nop			;6da6
	ld a,(de)		;6da7
	nop			;6da8
	nop			;6da9
	nop			;6daa
	nop			;6dab
	nop			;6dac
	nop			;6dad
	nop			;6dae
	nop			;6daf
	nop			;6db0
	nop			;6db1
	nop			;6db2
	nop			;6db3
	nop			;6db4
	nop			;6db5
	nop			;6db6
	nop			;6db7
	nop			;6db8
	nop			;6db9
	nop			;6dba
	nop			;6dbb
	nop			;6dbc
	nop			;6dbd
	nop			;6dbe
	nop			;6dbf
	rst 38h			;6dc0
	rst 38h			;6dc1
	rst 38h			;6dc2
	rst 38h			;6dc3
	rst 38h			;6dc4
	rst 38h			;6dc5
	rst 38h			;6dc6
	rst 38h			;6dc7
	rst 38h			;6dc8
	rst 38h			;6dc9
	rst 38h			;6dca
	rst 38h			;6dcb
	rst 38h			;6dcc
	rst 38h			;6dcd
	rst 38h			;6dce
	rst 38h			;6dcf
	rst 38h			;6dd0
	rst 38h			;6dd1
	rst 38h			;6dd2
	rst 38h			;6dd3
	rst 38h			;6dd4
	rst 38h			;6dd5
	rst 38h			;6dd6
	rst 38h			;6dd7
	rst 38h			;6dd8
	rst 38h			;6dd9
	rst 38h			;6dda
	rst 38h			;6ddb
	rst 38h			;6ddc
	rst 38h			;6ddd
	rst 38h			;6dde
	rst 38h			;6ddf
	rst 38h			;6de0
	rst 38h			;6de1
	rst 38h			;6de2
	rst 38h			;6de3
	rst 38h			;6de4
	rst 38h			;6de5
	rst 38h			;6de6
	rst 38h			;6de7
	rst 38h			;6de8
	rst 38h			;6de9
	rst 38h			;6dea
	rst 38h			;6deb
	rst 38h			;6dec
	rst 38h			;6ded
	rst 38h			;6dee
	rst 38h			;6def
	rst 38h			;6df0
	rst 38h			;6df1
	rst 38h			;6df2
	rst 38h			;6df3
	rst 38h			;6df4
	rst 38h			;6df5
	rst 38h			;6df6
	rst 38h			;6df7
	rst 38h			;6df8
	rst 38h			;6df9
	rst 38h			;6dfa
	rst 38h			;6dfb
	rst 38h			;6dfc
	rst 38h			;6dfd
	rst 38h			;6dfe
	rst 38h			;6dff
	rst 38h			;6e00
	rst 38h			;6e01
	rst 38h			;6e02
	rst 38h			;6e03
	rst 38h			;6e04
	rst 38h			;6e05
	rst 38h			;6e06
	rst 38h			;6e07
	rst 38h			;6e08
	rst 38h			;6e09
	rst 38h			;6e0a
	rst 38h			;6e0b
	rst 38h			;6e0c
	rst 38h			;6e0d
	rst 38h			;6e0e
	rst 38h			;6e0f
	rst 38h			;6e10
	rst 38h			;6e11
	rst 38h			;6e12
	rst 38h			;6e13
	rst 38h			;6e14
	rst 38h			;6e15
	rst 38h			;6e16
	rst 38h			;6e17
	rst 38h			;6e18
	rst 38h			;6e19
	rst 38h			;6e1a
	rst 38h			;6e1b
	rst 38h			;6e1c
	rst 38h			;6e1d
	rst 38h			;6e1e
	rst 38h			;6e1f
	rst 38h			;6e20
	rst 38h			;6e21
	rst 38h			;6e22
	rst 38h			;6e23
	rst 38h			;6e24
	rst 38h			;6e25
	rst 38h			;6e26
	rst 38h			;6e27
	rst 38h			;6e28
	rst 38h			;6e29
	rst 38h			;6e2a
	rst 38h			;6e2b
	rst 38h			;6e2c
	rst 38h			;6e2d
	rst 38h			;6e2e
	rst 38h			;6e2f
	rst 38h			;6e30
	rst 38h			;6e31
	rst 38h			;6e32
	rst 38h			;6e33
	rst 38h			;6e34
	rst 38h			;6e35
	rst 38h			;6e36
	rst 38h			;6e37
	rst 38h			;6e38
	rst 38h			;6e39
	rst 38h			;6e3a
	rst 38h			;6e3b
	rst 38h			;6e3c
	rst 38h			;6e3d
	rst 38h			;6e3e
	rst 38h			;6e3f
	rst 38h			;6e40
	rst 38h			;6e41
	rst 38h			;6e42
	rst 38h			;6e43
	rst 38h			;6e44
	rst 38h			;6e45
	rst 38h			;6e46
	rst 38h			;6e47
	rst 38h			;6e48
	rst 38h			;6e49
	rst 38h			;6e4a
	rst 38h			;6e4b
	rst 38h			;6e4c
	rst 38h			;6e4d
	rst 38h			;6e4e
	rst 38h			;6e4f
	rst 38h			;6e50
	rst 38h			;6e51
	rst 38h			;6e52
	rst 38h			;6e53
	rst 38h			;6e54
	rst 38h			;6e55
	rst 38h			;6e56
	rst 38h			;6e57
	rst 38h			;6e58
	rst 38h			;6e59
	rst 38h			;6e5a
	rst 38h			;6e5b
	rst 38h			;6e5c
	rst 38h			;6e5d
	rst 38h			;6e5e
	rst 38h			;6e5f
	rst 38h			;6e60
	rst 38h			;6e61
	rst 38h			;6e62
	rst 38h			;6e63
	rst 38h			;6e64
	rst 38h			;6e65
	rst 38h			;6e66
	rst 38h			;6e67
	rst 38h			;6e68
	rst 38h			;6e69
	rst 38h			;6e6a
	rst 38h			;6e6b
	rst 38h			;6e6c
	rst 38h			;6e6d
	rst 38h			;6e6e
	rst 38h			;6e6f
	rst 38h			;6e70
	rst 38h			;6e71
	rst 38h			;6e72
	rst 38h			;6e73
	rst 38h			;6e74
	rst 38h			;6e75
	rst 38h			;6e76
	rst 38h			;6e77
	rst 38h			;6e78
	rst 38h			;6e79
	rst 38h			;6e7a
	rst 38h			;6e7b
	rst 38h			;6e7c
	rst 38h			;6e7d
	rst 38h			;6e7e
	rst 38h			;6e7f
	rst 38h			;6e80
	rst 38h			;6e81
	rst 38h			;6e82
	rst 38h			;6e83
	rst 38h			;6e84
	rst 38h			;6e85
	rst 38h			;6e86
	rst 38h			;6e87
	rst 38h			;6e88
	rst 38h			;6e89
	rst 38h			;6e8a
	rst 38h			;6e8b
	rst 38h			;6e8c
	rst 38h			;6e8d
	rst 38h			;6e8e
	rst 38h			;6e8f
	rst 38h			;6e90
	rst 38h			;6e91
	rst 38h			;6e92
	rst 38h			;6e93
	rst 38h			;6e94
	rst 38h			;6e95
	rst 38h			;6e96
	rst 38h			;6e97
	rst 38h			;6e98
	rst 38h			;6e99
	rst 38h			;6e9a
	rst 38h			;6e9b
	rst 38h			;6e9c
	rst 38h			;6e9d
	rst 38h			;6e9e
	rst 38h			;6e9f
	rst 38h			;6ea0
	rst 38h			;6ea1
	rst 38h			;6ea2
	rst 38h			;6ea3
	rst 38h			;6ea4
	rst 38h			;6ea5
	rst 38h			;6ea6
	rst 38h			;6ea7
	rst 38h			;6ea8
	rst 38h			;6ea9
	rst 38h			;6eaa
	rst 38h			;6eab
	rst 38h			;6eac
	rst 38h			;6ead
	rst 38h			;6eae
	rst 38h			;6eaf
	rst 38h			;6eb0
	rst 38h			;6eb1
	rst 38h			;6eb2
	rst 38h			;6eb3
	rst 38h			;6eb4
	rst 38h			;6eb5
	rst 38h			;6eb6
	rst 38h			;6eb7
	rst 38h			;6eb8
	rst 38h			;6eb9
	rst 38h			;6eba
	rst 38h			;6ebb
	rst 38h			;6ebc
	rst 38h			;6ebd
	rst 38h			;6ebe
	rst 38h			;6ebf
	rst 38h			;6ec0
	rst 38h			;6ec1
	rst 38h			;6ec2
	rst 38h			;6ec3
	rst 38h			;6ec4
	rst 38h			;6ec5
	rst 38h			;6ec6
	rst 38h			;6ec7
	rst 38h			;6ec8
	rst 38h			;6ec9
	rst 38h			;6eca
	rst 38h			;6ecb
	rst 38h			;6ecc
	rst 38h			;6ecd
	rst 38h			;6ece
	rst 38h			;6ecf
	rst 38h			;6ed0
	rst 38h			;6ed1
	rst 38h			;6ed2
	rst 38h			;6ed3
	rst 38h			;6ed4
	rst 38h			;6ed5
	rst 38h			;6ed6
	rst 38h			;6ed7
	rst 38h			;6ed8
	rst 38h			;6ed9
	rst 38h			;6eda
	rst 38h			;6edb
	rst 38h			;6edc
	rst 38h			;6edd
	rst 38h			;6ede
	rst 38h			;6edf
	rst 38h			;6ee0
	rst 38h			;6ee1
	rst 38h			;6ee2
	rst 38h			;6ee3
	rst 38h			;6ee4
	rst 38h			;6ee5
	rst 38h			;6ee6
	rst 38h			;6ee7
	rst 38h			;6ee8
	rst 38h			;6ee9
	rst 38h			;6eea
	rst 38h			;6eeb
	rst 38h			;6eec
	rst 38h			;6eed
	rst 38h			;6eee
	rst 38h			;6eef
	rst 38h			;6ef0
	rst 38h			;6ef1
	rst 38h			;6ef2
	rst 38h			;6ef3
	rst 38h			;6ef4
	rst 38h			;6ef5
	rst 38h			;6ef6
	rst 38h			;6ef7
	rst 38h			;6ef8
	rst 38h			;6ef9
	rst 38h			;6efa
	rst 38h			;6efb
	rst 38h			;6efc
	rst 38h			;6efd
	rst 38h			;6efe
	rst 38h			;6eff
	rst 38h			;6f00
	rst 38h			;6f01
	rst 38h			;6f02
	rst 38h			;6f03
	rst 38h			;6f04
	rst 38h			;6f05
	rst 38h			;6f06
	rst 38h			;6f07
	rst 38h			;6f08
	rst 38h			;6f09
	rst 38h			;6f0a
	rst 38h			;6f0b
	rst 38h			;6f0c
	rst 38h			;6f0d
	rst 38h			;6f0e
	rst 38h			;6f0f
	rst 38h			;6f10
	rst 38h			;6f11
	rst 38h			;6f12
	rst 38h			;6f13
	rst 38h			;6f14
	rst 38h			;6f15
	rst 38h			;6f16
	rst 38h			;6f17
	rst 38h			;6f18
	rst 38h			;6f19
	rst 38h			;6f1a
	rst 38h			;6f1b
	rst 38h			;6f1c
	rst 38h			;6f1d
	rst 38h			;6f1e
	rst 38h			;6f1f
	rst 38h			;6f20
	rst 38h			;6f21
	rst 38h			;6f22
	rst 38h			;6f23
	rst 38h			;6f24
	rst 38h			;6f25
	rst 38h			;6f26
	rst 38h			;6f27
	rst 38h			;6f28
	rst 38h			;6f29
	rst 38h			;6f2a
	rst 38h			;6f2b
	rst 38h			;6f2c
	rst 38h			;6f2d
	rst 38h			;6f2e
	rst 38h			;6f2f
	rst 38h			;6f30
	rst 38h			;6f31
	rst 38h			;6f32
	rst 38h			;6f33
	rst 38h			;6f34
	rst 38h			;6f35
	rst 38h			;6f36
	rst 38h			;6f37
	rst 38h			;6f38
	rst 38h			;6f39
	rst 38h			;6f3a
	rst 38h			;6f3b
	rst 38h			;6f3c
	rst 38h			;6f3d
	rst 38h			;6f3e
	rst 38h			;6f3f
	rst 38h			;6f40
	rst 38h			;6f41
	rst 38h			;6f42
	rst 38h			;6f43
	rst 38h			;6f44
	rst 38h			;6f45
	rst 38h			;6f46
	rst 38h			;6f47
	rst 38h			;6f48
	rst 38h			;6f49
	rst 38h			;6f4a
	rst 38h			;6f4b
	rst 38h			;6f4c
	rst 38h			;6f4d
	rst 38h			;6f4e
	rst 38h			;6f4f
	rst 38h			;6f50
	rst 38h			;6f51
	rst 38h			;6f52
	rst 38h			;6f53
	rst 38h			;6f54
	rst 38h			;6f55
	rst 38h			;6f56
	rst 38h			;6f57
	rst 38h			;6f58
	rst 38h			;6f59
	rst 38h			;6f5a
	rst 38h			;6f5b
	rst 38h			;6f5c
	rst 38h			;6f5d
	rst 38h			;6f5e
	rst 38h			;6f5f
	rst 38h			;6f60
	rst 38h			;6f61
	rst 38h			;6f62
	rst 38h			;6f63
	rst 38h			;6f64
	rst 38h			;6f65
	rst 38h			;6f66
	rst 38h			;6f67
	rst 38h			;6f68
	rst 38h			;6f69
	rst 38h			;6f6a
	rst 38h			;6f6b
	rst 38h			;6f6c
	rst 38h			;6f6d
	rst 38h			;6f6e
	rst 38h			;6f6f
	rst 38h			;6f70
	rst 38h			;6f71
	rst 38h			;6f72
	rst 38h			;6f73
	rst 38h			;6f74
	rst 38h			;6f75
	rst 38h			;6f76
	rst 38h			;6f77
	rst 38h			;6f78
	rst 38h			;6f79
	rst 38h			;6f7a
	rst 38h			;6f7b
	rst 38h			;6f7c
	rst 38h			;6f7d
	rst 38h			;6f7e
	rst 38h			;6f7f
	rst 38h			;6f80
	rst 38h			;6f81
	rst 38h			;6f82
	rst 38h			;6f83
	rst 38h			;6f84
	rst 38h			;6f85
	rst 38h			;6f86
	rst 38h			;6f87
	rst 38h			;6f88
	rst 38h			;6f89
	rst 38h			;6f8a
	rst 38h			;6f8b
	rst 38h			;6f8c
	rst 38h			;6f8d
	rst 38h			;6f8e
	rst 38h			;6f8f
	rst 38h			;6f90
	rst 38h			;6f91
	rst 38h			;6f92
	rst 38h			;6f93
	rst 38h			;6f94
	rst 38h			;6f95
	rst 38h			;6f96
	rst 38h			;6f97
	rst 38h			;6f98
	rst 38h			;6f99
	rst 38h			;6f9a
	rst 38h			;6f9b
	rst 38h			;6f9c
	rst 38h			;6f9d
	rst 38h			;6f9e
	rst 38h			;6f9f
	rst 38h			;6fa0
	rst 38h			;6fa1
	rst 38h			;6fa2
	rst 38h			;6fa3
	rst 38h			;6fa4
	rst 38h			;6fa5
	rst 38h			;6fa6
	rst 38h			;6fa7
	rst 38h			;6fa8
	rst 38h			;6fa9
	rst 38h			;6faa
	rst 38h			;6fab
	rst 38h			;6fac
	rst 38h			;6fad
	rst 38h			;6fae
	rst 38h			;6faf
	rst 38h			;6fb0
	rst 38h			;6fb1
	rst 38h			;6fb2
	rst 38h			;6fb3
	rst 38h			;6fb4
	rst 38h			;6fb5
	rst 38h			;6fb6
	rst 38h			;6fb7
	rst 38h			;6fb8
	rst 38h			;6fb9
	rst 38h			;6fba
	rst 38h			;6fbb
	rst 38h			;6fbc
	rst 38h			;6fbd
	rst 38h			;6fbe
	rst 38h			;6fbf
	rst 38h			;6fc0
	rst 38h			;6fc1
	rst 38h			;6fc2
	rst 38h			;6fc3
	rst 38h			;6fc4
	rst 38h			;6fc5
	rst 38h			;6fc6
	rst 38h			;6fc7
	rst 38h			;6fc8
	rst 38h			;6fc9
	rst 38h			;6fca
	rst 38h			;6fcb
	rst 38h			;6fcc
	rst 38h			;6fcd
	rst 38h			;6fce
	rst 38h			;6fcf
	rst 38h			;6fd0
	rst 38h			;6fd1
	rst 38h			;6fd2
	rst 38h			;6fd3
	rst 38h			;6fd4
	rst 38h			;6fd5
	rst 38h			;6fd6
	rst 38h			;6fd7
	rst 38h			;6fd8
	rst 38h			;6fd9
	rst 38h			;6fda
	rst 38h			;6fdb
	rst 38h			;6fdc
	rst 38h			;6fdd
	rst 38h			;6fde
	rst 38h			;6fdf
	rst 38h			;6fe0
	rst 38h			;6fe1
	rst 38h			;6fe2
	rst 38h			;6fe3
	rst 38h			;6fe4
	rst 38h			;6fe5
	rst 38h			;6fe6
	rst 38h			;6fe7
	rst 38h			;6fe8
	rst 38h			;6fe9
	rst 38h			;6fea
	rst 38h			;6feb
	rst 38h			;6fec
	rst 38h			;6fed
	rst 38h			;6fee
	rst 38h			;6fef
	rst 38h			;6ff0
	rst 38h			;6ff1
	rst 38h			;6ff2
	rst 38h			;6ff3
	rst 38h			;6ff4
	rst 38h			;6ff5
	rst 38h			;6ff6
	rst 38h			;6ff7
	rst 38h			;6ff8
	rst 38h			;6ff9
	rst 38h			;6ffa
	rst 38h			;6ffb
	rst 38h			;6ffc
	rst 38h			;6ffd
	rst 38h			;6ffe
	rst 38h			;6fff
	rst 38h			;7000
	rst 38h			;7001
	rst 38h			;7002
	rst 38h			;7003
	rst 38h			;7004
	rst 38h			;7005
	rst 38h			;7006
	rst 38h			;7007
	rst 38h			;7008
	rst 38h			;7009
	rst 38h			;700a
	rst 38h			;700b
	rst 38h			;700c
	rst 38h			;700d
	rst 38h			;700e
	rst 38h			;700f
	rst 38h			;7010
	rst 38h			;7011
	rst 38h			;7012
	rst 38h			;7013
	rst 38h			;7014
	rst 38h			;7015
	rst 38h			;7016
	rst 38h			;7017
	rst 38h			;7018
	rst 38h			;7019
	rst 38h			;701a
	rst 38h			;701b
	rst 38h			;701c
	rst 38h			;701d
	rst 38h			;701e
	rst 38h			;701f
	rst 38h			;7020
	rst 38h			;7021
	rst 38h			;7022
	rst 38h			;7023
	rst 38h			;7024
	rst 38h			;7025
	rst 38h			;7026
	rst 38h			;7027
	rst 38h			;7028
	rst 38h			;7029
	rst 38h			;702a
	rst 38h			;702b
	rst 38h			;702c
	rst 38h			;702d
	rst 38h			;702e
	rst 38h			;702f
	rst 38h			;7030
	rst 38h			;7031
	rst 38h			;7032
	rst 38h			;7033
	rst 38h			;7034
	rst 38h			;7035
	rst 38h			;7036
	rst 38h			;7037
	rst 38h			;7038
	rst 38h			;7039
	rst 38h			;703a
	rst 38h			;703b
	rst 38h			;703c
	rst 38h			;703d
	rst 38h			;703e
	rst 38h			;703f
	rst 38h			;7040
	rst 38h			;7041
	rst 38h			;7042
	rst 38h			;7043
	rst 38h			;7044
	rst 38h			;7045
	rst 38h			;7046
	rst 38h			;7047
	rst 38h			;7048
	rst 38h			;7049
	rst 38h			;704a
	rst 38h			;704b
	rst 38h			;704c
	rst 38h			;704d
	rst 38h			;704e
	rst 38h			;704f
	rst 38h			;7050
	rst 38h			;7051
	rst 38h			;7052
	rst 38h			;7053
	rst 38h			;7054
	rst 38h			;7055
	rst 38h			;7056
	rst 38h			;7057
	rst 38h			;7058
	rst 38h			;7059
	rst 38h			;705a
	rst 38h			;705b
	rst 38h			;705c
	rst 38h			;705d
	rst 38h			;705e
	rst 38h			;705f
	rst 38h			;7060
	rst 38h			;7061
	rst 38h			;7062
	rst 38h			;7063
	rst 38h			;7064
	rst 38h			;7065
	rst 38h			;7066
	rst 38h			;7067
	rst 38h			;7068
	rst 38h			;7069
	rst 38h			;706a
	rst 38h			;706b
	rst 38h			;706c
	rst 38h			;706d
	rst 38h			;706e
	rst 38h			;706f
	rst 38h			;7070
	rst 38h			;7071
	rst 38h			;7072
	rst 38h			;7073
	rst 38h			;7074
	rst 38h			;7075
	rst 38h			;7076
	rst 38h			;7077
	rst 38h			;7078
	rst 38h			;7079
	rst 38h			;707a
	rst 38h			;707b
	rst 38h			;707c
	rst 38h			;707d
	rst 38h			;707e
	rst 38h			;707f
	rst 38h			;7080
	rst 38h			;7081
	rst 38h			;7082
	rst 38h			;7083
	rst 38h			;7084
	rst 38h			;7085
	rst 38h			;7086
	rst 38h			;7087
	rst 38h			;7088
	rst 38h			;7089
	rst 38h			;708a
	rst 38h			;708b
	rst 38h			;708c
	rst 38h			;708d
	rst 38h			;708e
	rst 38h			;708f
	rst 38h			;7090
	rst 38h			;7091
	rst 38h			;7092
	rst 38h			;7093
	rst 38h			;7094
	rst 38h			;7095
	rst 38h			;7096
	rst 38h			;7097
	rst 38h			;7098
	rst 38h			;7099
	rst 38h			;709a
	rst 38h			;709b
	rst 38h			;709c
	rst 38h			;709d
	rst 38h			;709e
	rst 38h			;709f
	rst 38h			;70a0
	rst 38h			;70a1
	rst 38h			;70a2
	rst 38h			;70a3
	rst 38h			;70a4
	rst 38h			;70a5
	rst 38h			;70a6
	rst 38h			;70a7
	rst 38h			;70a8
	rst 38h			;70a9
	rst 38h			;70aa
	rst 38h			;70ab
	rst 38h			;70ac
	rst 38h			;70ad
	rst 38h			;70ae
	rst 38h			;70af
	rst 38h			;70b0
	rst 38h			;70b1
	rst 38h			;70b2
	rst 38h			;70b3
	rst 38h			;70b4
	rst 38h			;70b5
	rst 38h			;70b6
	rst 38h			;70b7
	rst 38h			;70b8
	rst 38h			;70b9
	rst 38h			;70ba
	rst 38h			;70bb
	rst 38h			;70bc
	rst 38h			;70bd
	rst 38h			;70be
	rst 38h			;70bf
	inc bc			;70c0
	dec c			;70c1
	inc bc			;70c2
	dec c			;70c3
	inc sp			;70c4
	dec c			;70c5
	scf			;70c6
	dec c			;70c7
	cpl			;70c8
	dec c			;70c9
	ld bc,00017h		;70ca
	nop			;70cd
	nop			;70ce
	nop			;70cf
	ld h,a			;70d0
	inc bc			;70d1
	ld h,a			;70d2
	ld b,b			;70d3
	ld h,a			;70d4
	ld b,b			;70d5
	nop			;70d6
	nop			;70d7
	nop			;70d8
	nop			;70d9
	nop			;70da
	nop			;70db
	nop			;70dc
	nop			;70dd
	ld h,h			;70de
	ld b,b			;70df
	ld l,d			;70e0
	inc bc			;70e1
	inc bc			;70e2
	jr $+107		;70e3
	nop			;70e5
	ld l,c			;70e6
	ld (bc),a		;70e7
	ld l,c			;70e8
	inc b			;70e9
	nop			;70ea
	nop			;70eb
	ld h,h			;70ec
	ld b,b			;70ed
	inc bc			;70ee
	rla			;70ef
	inc bc			;70f0
	add hl,bc		;70f1
	inc bc			;70f2
	add hl,bc		;70f3
	inc bc			;70f4
	add hl,bc		;70f5
	nop			;70f6
	nop			;70f7
	nop			;70f8
	nop			;70f9
	ld (bc),a		;70fa
	nop			;70fb
	ld h,c			;70fc
	nop			;70fd
	ld h,c			;70fe
	nop			;70ff
	ld h,c			;7100
	nop			;7101
	nop			;7102
	nop			;7103
	nop			;7104
	nop			;7105
	nop			;7106
	nop			;7107
	inc bc			;7108
	add hl,bc		;7109
	inc bc			;710a
	add hl,bc		;710b
	inc bc			;710c
	add hl,bc		;710d
	ld h,a			;710e
	jr nc,l7111h		;710f
l7111h:
	nop			;7111
	inc bc			;7112
	nop			;7113
	nop			;7114
	nop			;7115
	nop			;7116
	nop			;7117
	nop			;7118
	nop			;7119
	nop			;711a
	nop			;711b
	ld h,a			;711c
	jr nc,l7122h		;711d
	nop			;711f
	inc bc			;7120
	add hl,bc		;7121
l7122h:
	inc bc			;7122
	add hl,bc		;7123
	inc bc			;7124
	add hl,bc		;7125
	nop			;7126
	nop			;7127
	nop			;7128
	nop			;7129
	ld bc,l6100h		;712a
	nop			;712d
	ld h,c			;712e
	nop			;712f
	ld h,c			;7130
	nop			;7131
	nop			;7132
	nop			;7133
	nop			;7134
	nop			;7135
	nop			;7136
	nop			;7137
	inc bc			;7138
	add hl,bc		;7139
	inc bc			;713a
	add hl,bc		;713b
	inc bc			;713c
	add hl,bc		;713d
	ld h,e			;713e
	jr nz,l7141h		;713f
l7141h:
	nop			;7141
	inc bc			;7142
	jr l7145h		;7143
l7145h:
	nop			;7145
	nop			;7146
	nop			;7147
	nop			;7148
	nop			;7149
	nop			;714a
	nop			;714b
	ld h,e			;714c
	jr nz,l7152h		;714d
	rla			;714f
	inc bc			;7150
	add hl,bc		;7151
l7152h:
	inc bc			;7152
	add hl,bc		;7153
	inc bc			;7154
	add hl,bc		;7155
	nop			;7156
	nop			;7157
	nop			;7158
	nop			;7159
	ld (bc),a		;715a
	nop			;715b
	ld h,c			;715c
	nop			;715d
	ld h,c			;715e
	nop			;715f
	ld h,c			;7160
	nop			;7161
	nop			;7162
	nop			;7163
	nop			;7164
	nop			;7165
	nop			;7166
	ld a,(de)		;7167
	nop			;7168
	nop			;7169
	nop			;716a
	nop			;716b
	nop			;716c
	nop			;716d
	nop			;716e
	nop			;716f
	nop			;7170
	nop			;7171
	nop			;7172
	nop			;7173
	nop			;7174
	nop			;7175
	nop			;7176
	nop			;7177
	nop			;7178
	nop			;7179
	nop			;717a
	nop			;717b
	nop			;717c
	nop			;717d
	nop			;717e
	nop			;717f
	inc bc			;7180
	add hl,bc		;7181
	inc bc			;7182
	add hl,bc		;7183
	inc bc			;7184
	add hl,bc		;7185
	nop			;7186
	nop			;7187
	nop			;7188
	nop			;7189
	inc bc			;718a
	rla			;718b
	nop			;718c
	nop			;718d
	nop			;718e
	nop			;718f
	nop			;7190
	nop			;7191
	nop			;7192
	nop			;7193
	nop			;7194
	nop			;7195
	inc bc			;7196
	nop			;7197
	nop			;7198
	nop			;7199
	nop			;719a
	nop			;719b
	nop			;719c
	nop			;719d
	ld l,(hl)		;719e
	ld bc,00000h		;719f
	ld bc,l6918h		;71a2
	jr nz,l7210h		;71a5
	ld (02469h),hl		;71a7
	ld h,h			;71aa
	jr nc,l721bh		;71ab
	ld bc,01700h		;71ad
	inc bc			;71b0
	add hl,bc		;71b1
	inc bc			;71b2
	add hl,bc		;71b3
	inc bc			;71b4
	add hl,bc		;71b5
	ld l,l			;71b6
	ld bc,03064h		;71b7
	inc bc			;71ba
	nop			;71bb
	ld h,c			;71bc
	nop			;71bd
	ld h,c			;71be
	nop			;71bf
	ld h,c			;71c0
	nop			;71c1
	nop			;71c2
	nop			;71c3
	ld l,l			;71c4
	ld bc,00003h		;71c5
	inc bc			;71c8
	add hl,bc		;71c9
	inc bc			;71ca
	add hl,bc		;71cb
	inc bc			;71cc
	add hl,bc		;71cd
	nop			;71ce
	nop			;71cf
	nop			;71d0
	nop			;71d1
	ld (bc),a		;71d2
	nop			;71d3
	nop			;71d4
	nop			;71d5
	nop			;71d6
	nop			;71d7
	nop			;71d8
	nop			;71d9
	nop			;71da
	nop			;71db
	nop			;71dc
	nop			;71dd
	nop			;71de
	nop			;71df
	inc bc			;71e0
	add hl,bc		;71e1
	inc bc			;71e2
	add hl,bc		;71e3
	inc bc			;71e4
	add hl,bc		;71e5
	nop			;71e6
	nop			;71e7
	nop			;71e8
	nop			;71e9
	inc bc			;71ea
	nop			;71eb
	ld h,c			;71ec
	nop			;71ed
	ld h,c			;71ee
	nop			;71ef
	ld h,c			;71f0
	nop			;71f1
	nop			;71f2
	nop			;71f3
	nop			;71f4
	nop			;71f5
	inc bc			;71f6
	nop			;71f7
	inc bc			;71f8
	add hl,bc		;71f9
	inc bc			;71fa
	add hl,bc		;71fb
	inc bc			;71fc
	add hl,bc		;71fd
	nop			;71fe
	nop			;71ff
	nop			;7200
	nop			;7201
	ld (bc),a		;7202
	jr l7205h		;7203
l7205h:
	nop			;7205
	nop			;7206
	nop			;7207
	nop			;7208
	nop			;7209
	nop			;720a
	nop			;720b
	nop			;720c
	nop			;720d
	inc bc			;720e
	rla			;720f
l7210h:
	inc bc			;7210
	add hl,bc		;7211
	inc bc			;7212
	add hl,bc		;7213
	inc bc			;7214
	add hl,bc		;7215
	nop			;7216
	nop			;7217
	nop			;7218
	nop			;7219
	inc bc			;721a
l721bh:
	nop			;721b
	ld h,c			;721c
	nop			;721d
	ld h,c			;721e
	nop			;721f
	ld h,c			;7220
	nop			;7221
	nop			;7222
	nop			;7223
	nop			;7224
	nop			;7225
	nop			;7226
	ld a,(de)		;7227
	nop			;7228
	nop			;7229
	nop			;722a
	nop			;722b
	nop			;722c
	nop			;722d
	nop			;722e
	nop			;722f
	nop			;7230
	nop			;7231
	nop			;7232
	nop			;7233
	nop			;7234
	nop			;7235
	nop			;7236
	nop			;7237
	nop			;7238
	nop			;7239
	nop			;723a
	nop			;723b
	nop			;723c
	nop			;723d
	nop			;723e
	nop			;723f
	inc bc			;7240
	add hl,bc		;7241
	inc bc			;7242
	add hl,bc		;7243
	inc bc			;7244
	add hl,bc		;7245
	nop			;7246
	nop			;7247
	nop			;7248
	nop			;7249
	ld bc,00017h		;724a
	nop			;724d
	nop			;724e
	nop			;724f
	nop			;7250
	nop			;7251
	nop			;7252
	nop			;7253
	nop			;7254
	nop			;7255
	nop			;7256
	nop			;7257
	nop			;7258
	nop			;7259
	nop			;725a
	nop			;725b
	nop			;725c
	nop			;725d
	nop			;725e
	nop			;725f
	nop			;7260
	nop			;7261
	inc bc			;7262
	jr l72ceh		;7263
	ld b,b			;7265
	ld l,c			;7266
	ld b,d			;7267
	ld l,c			;7268
	ld b,h			;7269
	nop			;726a
	nop			;726b
	nop			;726c
	nop			;726d
	inc bc			;726e
	rla			;726f
	inc bc			;7270
	add hl,bc		;7271
	inc bc			;7272
	add hl,bc		;7273
	inc bc			;7274
	add hl,bc		;7275
	nop			;7276
	nop			;7277
	nop			;7278
	nop			;7279
	ld (bc),a		;727a
	nop			;727b
	ld h,c			;727c
	nop			;727d
	ld h,c			;727e
	nop			;727f
	ld h,c			;7280
	nop			;7281
	nop			;7282
	nop			;7283
	nop			;7284
	nop			;7285
	nop			;7286
	nop			;7287
	inc bc			;7288
	add hl,bc		;7289
	inc bc			;728a
	add hl,bc		;728b
	inc bc			;728c
	add hl,bc		;728d
	ld h,e			;728e
	djnz l7291h		;728f
l7291h:
	nop			;7291
	inc bc			;7292
	nop			;7293
	nop			;7294
	nop			;7295
	nop			;7296
	nop			;7297
	nop			;7298
	nop			;7299
	nop			;729a
	nop			;729b
	ld h,e			;729c
	djnz l72a2h		;729d
	nop			;729f
	inc bc			;72a0
	add hl,bc		;72a1
l72a2h:
	inc bc			;72a2
	add hl,bc		;72a3
	inc bc			;72a4
	add hl,bc		;72a5
	nop			;72a6
	nop			;72a7
	nop			;72a8
	nop			;72a9
	ld bc,l6100h		;72aa
	nop			;72ad
	ld h,c			;72ae
	nop			;72af
	ld h,c			;72b0
	nop			;72b1
	nop			;72b2
	nop			;72b3
	nop			;72b4
	nop			;72b5
	nop			;72b6
	nop			;72b7
	inc bc			;72b8
	add hl,bc		;72b9
	inc bc			;72ba
	add hl,bc		;72bb
	inc bc			;72bc
	add hl,bc		;72bd
	nop			;72be
	nop			;72bf
	nop			;72c0
	nop			;72c1
	ld (bc),a		;72c2
	jr l72c5h		;72c3
l72c5h:
	nop			;72c5
	nop			;72c6
	nop			;72c7
	nop			;72c8
	nop			;72c9
	nop			;72ca
	nop			;72cb
	nop			;72cc
	nop			;72cd
l72ceh:
	inc bc			;72ce
	rla			;72cf
	inc bc			;72d0
	add hl,bc		;72d1
	inc bc			;72d2
	add hl,bc		;72d3
	inc bc			;72d4
	add hl,bc		;72d5
	nop			;72d6
	nop			;72d7
	nop			;72d8
	nop			;72d9
	inc bc			;72da
	nop			;72db
	ld h,c			;72dc
	nop			;72dd
	ld h,c			;72de
	nop			;72df
	ld h,c			;72e0
	nop			;72e1
	nop			;72e2
	nop			;72e3
	nop			;72e4
	nop			;72e5
	nop			;72e6
	ld a,(de)		;72e7
	nop			;72e8
	nop			;72e9
	nop			;72ea
	nop			;72eb
	nop			;72ec
	nop			;72ed
	nop			;72ee
	nop			;72ef
	nop			;72f0
	nop			;72f1
	nop			;72f2
	nop			;72f3
	nop			;72f4
	nop			;72f5
	nop			;72f6
	nop			;72f7
	nop			;72f8
	nop			;72f9
	nop			;72fa
	nop			;72fb
	nop			;72fc
	nop			;72fd
	nop			;72fe
	nop			;72ff
	inc bc			;7300
	add hl,bc		;7301
	inc bc			;7302
	add hl,bc		;7303
	inc bc			;7304
	add hl,bc		;7305
	nop			;7306
	nop			;7307
	nop			;7308
	nop			;7309
	ld bc,00017h		;730a
	nop			;730d
	nop			;730e
	nop			;730f
	nop			;7310
	nop			;7311
	nop			;7312
	nop			;7313
	nop			;7314
	nop			;7315
	nop			;7316
	nop			;7317
	nop			;7318
	nop			;7319
	nop			;731a
	nop			;731b
	nop			;731c
	nop			;731d
	nop			;731e
	nop			;731f
	nop			;7320
	nop			;7321
	inc bc			;7322
	jr l738eh		;7323
	ld h,b			;7325
	ld l,c			;7326
	ld h,d			;7327
	ld l,c			;7328
	ld h,h			;7329
	nop			;732a
	nop			;732b
	nop			;732c
	nop			;732d
	inc bc			;732e
	rla			;732f
	inc bc			;7330
	add hl,bc		;7331
	inc bc			;7332
	add hl,bc		;7333
	inc bc			;7334
	add hl,bc		;7335
	nop			;7336
	nop			;7337
	nop			;7338
	nop			;7339
	inc bc			;733a
	nop			;733b
	ld h,c			;733c
	nop			;733d
	ld h,c			;733e
	nop			;733f
	ld h,c			;7340
	nop			;7341
	nop			;7342
	nop			;7343
	nop			;7344
	nop			;7345
	nop			;7346
	nop			;7347
	inc bc			;7348
	add hl,bc		;7349
	inc bc			;734a
	add hl,bc		;734b
	inc bc			;734c
	add hl,bc		;734d
	nop			;734e
	nop			;734f
	nop			;7350
	nop			;7351
	ld (bc),a		;7352
	nop			;7353
	nop			;7354
	nop			;7355
	nop			;7356
	nop			;7357
	nop			;7358
	nop			;7359
	nop			;735a
	nop			;735b
	nop			;735c
	nop			;735d
	inc bc			;735e
	nop			;735f
	inc bc			;7360
	add hl,bc		;7361
	inc bc			;7362
	add hl,bc		;7363
	inc bc			;7364
	add hl,bc		;7365
	nop			;7366
	nop			;7367
	nop			;7368
	nop			;7369
	ld bc,l6100h		;736a
	nop			;736d
	ld h,c			;736e
	nop			;736f
	ld h,c			;7370
	nop			;7371
	nop			;7372
	nop			;7373
	nop			;7374
	nop			;7375
	nop			;7376
	nop			;7377
	inc bc			;7378
	add hl,bc		;7379
	inc bc			;737a
	add hl,bc		;737b
	inc bc			;737c
	add hl,bc		;737d
	nop			;737e
	nop			;737f
	nop			;7380
	nop			;7381
	ld (bc),a		;7382
	jr l7385h		;7383
l7385h:
	nop			;7385
	nop			;7386
	nop			;7387
	nop			;7388
	nop			;7389
	nop			;738a
	nop			;738b
	nop			;738c
	nop			;738d
l738eh:
	inc bc			;738e
	rla			;738f
	inc bc			;7390
	add hl,bc		;7391
	inc bc			;7392
	add hl,bc		;7393
	inc bc			;7394
	add hl,bc		;7395
	nop			;7396
	nop			;7397
	nop			;7398
	nop			;7399
	inc bc			;739a
	nop			;739b
	ld h,c			;739c
	nop			;739d
	ld h,c			;739e
	nop			;739f
	ld h,c			;73a0
	nop			;73a1
	nop			;73a2
	nop			;73a3
	nop			;73a4
	nop			;73a5
	nop			;73a6
	ld a,(de)		;73a7
	nop			;73a8
	nop			;73a9
	nop			;73aa
	nop			;73ab
	nop			;73ac
	nop			;73ad
	nop			;73ae
	nop			;73af
	nop			;73b0
	nop			;73b1
	nop			;73b2
	nop			;73b3
	nop			;73b4
	nop			;73b5
	nop			;73b6
	nop			;73b7
	nop			;73b8
	nop			;73b9
	nop			;73ba
	nop			;73bb
	nop			;73bc
	nop			;73bd
	nop			;73be
	nop			;73bf
	inc bc			;73c0
	add hl,bc		;73c1
	inc bc			;73c2
	add hl,bc		;73c3
	inc bc			;73c4
	add hl,bc		;73c5
	nop			;73c6
	nop			;73c7
	nop			;73c8
	nop			;73c9
	ld bc,00017h		;73ca
	nop			;73cd
	nop			;73ce
	nop			;73cf
	nop			;73d0
	nop			;73d1
	nop			;73d2
	nop			;73d3
	nop			;73d4
	nop			;73d5
	nop			;73d6
	nop			;73d7
	nop			;73d8
	nop			;73d9
	nop			;73da
	nop			;73db
	nop			;73dc
	nop			;73dd
	nop			;73de
	nop			;73df
	nop			;73e0
	nop			;73e1
	inc bc			;73e2
	jr l744eh		;73e3
	add a,b			;73e5
	ld l,c			;73e6
	add a,d			;73e7
	ld l,c			;73e8
	add a,h			;73e9
	nop			;73ea
	nop			;73eb
	nop			;73ec
	nop			;73ed
	inc bc			;73ee
	rla			;73ef
	inc bc			;73f0
	add hl,bc		;73f1
	inc bc			;73f2
	add hl,bc		;73f3
	inc bc			;73f4
	add hl,bc		;73f5
	nop			;73f6
	nop			;73f7
	nop			;73f8
	nop			;73f9
	ld (bc),a		;73fa
	nop			;73fb
	ld h,c			;73fc
	nop			;73fd
	ld h,c			;73fe
	nop			;73ff
	ld h,c			;7400
	nop			;7401
	nop			;7402
	nop			;7403
	nop			;7404
	nop			;7405
	nop			;7406
	nop			;7407
	inc bc			;7408
	add hl,bc		;7409
	inc bc			;740a
	add hl,bc		;740b
	inc bc			;740c
	add hl,bc		;740d
	nop			;740e
	nop			;740f
	nop			;7410
	nop			;7411
	inc bc			;7412
	nop			;7413
	nop			;7414
	nop			;7415
	nop			;7416
	nop			;7417
	nop			;7418
	nop			;7419
	nop			;741a
	nop			;741b
	nop			;741c
	nop			;741d
	inc bc			;741e
	nop			;741f
	inc bc			;7420
	add hl,bc		;7421
	inc bc			;7422
	add hl,bc		;7423
	inc bc			;7424
	add hl,bc		;7425
	nop			;7426
	nop			;7427
	nop			;7428
	nop			;7429
	ld bc,l6100h		;742a
	nop			;742d
	ld h,c			;742e
	nop			;742f
	ld h,c			;7430
	nop			;7431
	nop			;7432
	nop			;7433
	nop			;7434
	nop			;7435
	nop			;7436
	nop			;7437
	inc bc			;7438
	add hl,bc		;7439
	inc bc			;743a
	add hl,bc		;743b
	inc bc			;743c
	add hl,bc		;743d
	nop			;743e
	nop			;743f
	nop			;7440
	nop			;7441
	inc bc			;7442
	jr l7445h		;7443
l7445h:
	nop			;7445
	nop			;7446
	nop			;7447
	nop			;7448
	nop			;7449
	nop			;744a
	nop			;744b
	nop			;744c
	nop			;744d
l744eh:
	inc bc			;744e
	rla			;744f
	inc bc			;7450
	add hl,bc		;7451
	inc bc			;7452
	add hl,bc		;7453
	inc bc			;7454
	add hl,bc		;7455
	nop			;7456
	nop			;7457
	nop			;7458
	nop			;7459
	ld (bc),a		;745a
	nop			;745b
	ld h,c			;745c
	nop			;745d
	ld h,c			;745e
	nop			;745f
	ld h,c			;7460
	nop			;7461
	nop			;7462
	nop			;7463
	nop			;7464
	nop			;7465
	nop			;7466
	ld a,(de)		;7467
	nop			;7468
	nop			;7469
	nop			;746a
	nop			;746b
	nop			;746c
	nop			;746d
	nop			;746e
	nop			;746f
	nop			;7470
	nop			;7471
	nop			;7472
	nop			;7473
	nop			;7474
	nop			;7475
	nop			;7476
	nop			;7477
	nop			;7478
	nop			;7479
	nop			;747a
	nop			;747b
	nop			;747c
	nop			;747d
	nop			;747e
	nop			;747f
	inc bc			;7480
	add hl,bc		;7481
	inc bc			;7482
	add hl,bc		;7483
	inc bc			;7484
	add hl,bc		;7485
	nop			;7486
	nop			;7487
	nop			;7488
	nop			;7489
	inc bc			;748a
	rla			;748b
	nop			;748c
	nop			;748d
	nop			;748e
	nop			;748f
	nop			;7490
	nop			;7491
	nop			;7492
	nop			;7493
	nop			;7494
	nop			;7495
	inc bc			;7496
	nop			;7497
	nop			;7498
	nop			;7499
	nop			;749a
	nop			;749b
	nop			;749c
	nop			;749d
	nop			;749e
	nop			;749f
	nop			;74a0
	nop			;74a1
	ld bc,l6918h		;74a2
	and b			;74a5
	ld l,c			;74a6
	and d			;74a7
	ld l,c			;74a8
	and h			;74a9
	nop			;74aa
	nop			;74ab
	nop			;74ac
	nop			;74ad
	nop			;74ae
	rla			;74af
	inc bc			;74b0
	add hl,bc		;74b1
	inc bc			;74b2
	add hl,bc		;74b3
	inc bc			;74b4
	add hl,bc		;74b5
	nop			;74b6
	nop			;74b7
	nop			;74b8
	nop			;74b9
	inc bc			;74ba
	nop			;74bb
	ld h,c			;74bc
	nop			;74bd
	ld h,c			;74be
	nop			;74bf
	ld h,c			;74c0
	nop			;74c1
	nop			;74c2
	nop			;74c3
	nop			;74c4
	nop			;74c5
	inc bc			;74c6
	nop			;74c7
	inc bc			;74c8
	add hl,bc		;74c9
	inc bc			;74ca
	add hl,bc		;74cb
	inc bc			;74cc
	add hl,bc		;74cd
	ld h,e			;74ce
	nop			;74cf
	nop			;74d0
	nop			;74d1
	ld (bc),a		;74d2
	nop			;74d3
	nop			;74d4
	nop			;74d5
	nop			;74d6
	nop			;74d7
	nop			;74d8
	nop			;74d9
	ld h,a			;74da
	add a,b			;74db
	ld h,e			;74dc
	nop			;74dd
	nop			;74de
	nop			;74df
	inc bc			;74e0
	add hl,bc		;74e1
	inc bc			;74e2
	add hl,bc		;74e3
	inc bc			;74e4
	add hl,bc		;74e5
	nop			;74e6
	nop			;74e7
	ld h,a			;74e8
	add a,b			;74e9
	inc bc			;74ea
	nop			;74eb
	ld h,c			;74ec
	nop			;74ed
	ld h,c			;74ee
	nop			;74ef
	ld h,c			;74f0
	nop			;74f1
	nop			;74f2
	nop			;74f3
	nop			;74f4
	nop			;74f5
	inc bc			;74f6
	nop			;74f7
	inc bc			;74f8
	add hl,bc		;74f9
	inc bc			;74fa
	add hl,bc		;74fb
	inc bc			;74fc
	add hl,bc		;74fd
	nop			;74fe
	nop			;74ff
	nop			;7500
	nop			;7501
	ld bc,00018h		;7502
	nop			;7505
	nop			;7506
	nop			;7507
	nop			;7508
	nop			;7509
	nop			;750a
	nop			;750b
	nop			;750c
	nop			;750d
	nop			;750e
	rla			;750f
	inc bc			;7510
	add hl,bc		;7511
	inc bc			;7512
	add hl,bc		;7513
	inc bc			;7514
	add hl,bc		;7515
	nop			;7516
	nop			;7517
	nop			;7518
	nop			;7519
	inc bc			;751a
	nop			;751b
	ld h,c			;751c
	nop			;751d
	ld h,c			;751e
	nop			;751f
	ld h,c			;7520
	nop			;7521
	nop			;7522
	nop			;7523
	nop			;7524
	nop			;7525
	inc bc			;7526
	ld a,(de)		;7527
	nop			;7528
	nop			;7529
	nop			;752a
	nop			;752b
	nop			;752c
	nop			;752d
	nop			;752e
	nop			;752f
	nop			;7530
	nop			;7531
	nop			;7532
	nop			;7533
	nop			;7534
	nop			;7535
	nop			;7536
	nop			;7537
	nop			;7538
	nop			;7539
	nop			;753a
	nop			;753b
	nop			;753c
	nop			;753d
	nop			;753e
	nop			;753f
	inc bc			;7540
	add hl,bc		;7541
	inc bc			;7542
	add hl,bc		;7543
	inc bc			;7544
	add hl,bc		;7545
	nop			;7546
	nop			;7547
	nop			;7548
	nop			;7549
	ld (bc),a		;754a
	rla			;754b
	nop			;754c
	nop			;754d
	nop			;754e
	nop			;754f
	nop			;7550
	nop			;7551
	nop			;7552
	nop			;7553
	nop			;7554
	nop			;7555
	nop			;7556
	nop			;7557
	nop			;7558
	nop			;7559
	nop			;755a
	nop			;755b
	nop			;755c
	nop			;755d
	nop			;755e
	nop			;755f
	nop			;7560
	nop			;7561
	inc bc			;7562
	jr l75ceh		;7563
	ret nz			;7565
	ld l,c			;7566
	jp nz,0c469h		;7567
	nop			;756a
	nop			;756b
	nop			;756c
	nop			;756d
	inc bc			;756e
	rla			;756f
	inc bc			;7570
	add hl,bc		;7571
	inc bc			;7572
	add hl,bc		;7573
	inc bc			;7574
	add hl,bc		;7575
	nop			;7576
	nop			;7577
	nop			;7578
	nop			;7579
	ld bc,l6100h		;757a
	nop			;757d
	ld h,c			;757e
	nop			;757f
	ld h,c			;7580
	nop			;7581
	ld h,h			;7582
	inc bc			;7583
	nop			;7584
	nop			;7585
	nop			;7586
	nop			;7587
	inc bc			;7588
	add hl,bc		;7589
	inc bc			;758a
	add hl,bc		;758b
	inc bc			;758c
	add hl,bc		;758d
	nop			;758e
	nop			;758f
	ld h,h			;7590
	inc bc			;7591
	inc bc			;7592
	nop			;7593
	nop			;7594
	nop			;7595
	nop			;7596
	nop			;7597
	nop			;7598
	nop			;7599
	nop			;759a
	nop			;759b
	nop			;759c
	nop			;759d
	inc bc			;759e
	nop			;759f
	inc bc			;75a0
	add hl,bc		;75a1
	inc bc			;75a2
	add hl,bc		;75a3
	inc bc			;75a4
	add hl,bc		;75a5
	nop			;75a6
	nop			;75a7
	nop			;75a8
	nop			;75a9
	ld (bc),a		;75aa
	nop			;75ab
	ld h,c			;75ac
	nop			;75ad
	ld h,c			;75ae
	nop			;75af
	ld h,c			;75b0
	nop			;75b1
	nop			;75b2
	nop			;75b3
	nop			;75b4
	nop			;75b5
	nop			;75b6
	nop			;75b7
	inc bc			;75b8
	add hl,bc		;75b9
	inc bc			;75ba
	add hl,bc		;75bb
	inc bc			;75bc
	add hl,bc		;75bd
	nop			;75be
	nop			;75bf
	nop			;75c0
	nop			;75c1
	inc bc			;75c2
	jr l75c5h		;75c3
l75c5h:
	nop			;75c5
	nop			;75c6
	nop			;75c7
	nop			;75c8
	nop			;75c9
	nop			;75ca
	nop			;75cb
	nop			;75cc
	nop			;75cd
l75ceh:
	inc bc			;75ce
	rla			;75cf
	inc bc			;75d0
	add hl,bc		;75d1
	inc bc			;75d2
	add hl,bc		;75d3
	inc bc			;75d4
	add hl,bc		;75d5
	nop			;75d6
	nop			;75d7
	nop			;75d8
	nop			;75d9
	ld (bc),a		;75da
	nop			;75db
	ld h,c			;75dc
	nop			;75dd
	ld h,c			;75de
	nop			;75df
	ld h,c			;75e0
	nop			;75e1
	nop			;75e2
	nop			;75e3
	nop			;75e4
	nop			;75e5
	nop			;75e6
	ld a,(de)		;75e7
	nop			;75e8
	nop			;75e9
	nop			;75ea
	nop			;75eb
	nop			;75ec
	nop			;75ed
	nop			;75ee
	nop			;75ef
	nop			;75f0
	nop			;75f1
	nop			;75f2
	nop			;75f3
	nop			;75f4
	nop			;75f5
	nop			;75f6
	nop			;75f7
	nop			;75f8
	nop			;75f9
	nop			;75fa
	nop			;75fb
	nop			;75fc
	nop			;75fd
	nop			;75fe
	nop			;75ff
	inc bc			;7600
	add hl,bc		;7601
	inc bc			;7602
	add hl,bc		;7603
	inc bc			;7604
	add hl,bc		;7605
	nop			;7606
	nop			;7607
	nop			;7608
	nop			;7609
	inc bc			;760a
	rla			;760b
	nop			;760c
	nop			;760d
	nop			;760e
	nop			;760f
	nop			;7610
	nop			;7611
	nop			;7612
	nop			;7613
	nop			;7614
	nop			;7615
	inc bc			;7616
	nop			;7617
	nop			;7618
	nop			;7619
	nop			;761a
	nop			;761b
	nop			;761c
	nop			;761d
	nop			;761e
	nop			;761f
	nop			;7620
	nop			;7621
	ld (bc),a		;7622
	jr l768eh		;7623
	ret po			;7625
	ld l,c			;7626
	jp po,0e469h		;7627
	nop			;762a
	nop			;762b
	nop			;762c
	nop			;762d
	nop			;762e
	rla			;762f
	inc bc			;7630
	add hl,bc		;7631
	inc bc			;7632
	add hl,bc		;7633
	inc bc			;7634
	add hl,bc		;7635
	nop			;7636
	nop			;7637
	nop			;7638
	nop			;7639
	inc bc			;763a
	nop			;763b
	ld h,c			;763c
	nop			;763d
	ld h,c			;763e
	nop			;763f
	ld h,c			;7640
	nop			;7641
	ld h,h			;7642
	jr nz,l7645h		;7643
l7645h:
	nop			;7645
	inc bc			;7646
	nop			;7647
	inc bc			;7648
	add hl,bc		;7649
	inc bc			;764a
	add hl,bc		;764b
	inc bc			;764c
	add hl,bc		;764d
	nop			;764e
	nop			;764f
	ld h,h			;7650
	jr nz,l7654h		;7651
	nop			;7653
l7654h:
	nop			;7654
	nop			;7655
	nop			;7656
	nop			;7657
	nop			;7658
	nop			;7659
	nop			;765a
	nop			;765b
	nop			;765c
	nop			;765d
	nop			;765e
	nop			;765f
	inc bc			;7660
	add hl,bc		;7661
	inc bc			;7662
	add hl,bc		;7663
	inc bc			;7664
	add hl,bc		;7665
	nop			;7666
	nop			;7667
	nop			;7668
	nop			;7669
	inc bc			;766a
	nop			;766b
	ld h,c			;766c
	nop			;766d
	ld h,c			;766e
	nop			;766f
	ld h,c			;7670
	nop			;7671
	nop			;7672
	nop			;7673
	nop			;7674
	nop			;7675
	inc bc			;7676
	nop			;7677
	inc bc			;7678
	add hl,bc		;7679
	inc bc			;767a
	add hl,bc		;767b
	inc bc			;767c
	add hl,bc		;767d
	ld l,h			;767e
	ld bc,00000h		;767f
	ld (bc),a		;7682
	jr l76e6h		;7683
	nop			;7685
	ld h,c			;7686
	nop			;7687
	ld h,c			;7688
	nop			;7689
	nop			;768a
	nop			;768b
	nop			;768c
	nop			;768d
l768eh:
	nop			;768e
	rla			;768f
	inc bc			;7690
	add hl,bc		;7691
	inc bc			;7692
	add hl,bc		;7693
	inc bc			;7694
	add hl,bc		;7695
	nop			;7696
	nop			;7697
	ld l,h			;7698
	ld bc,00002h		;7699
	ld l,d			;769c
	nop			;769d
	ld l,d			;769e
	nop			;769f
	ld l,d			;76a0
	nop			;76a1
	nop			;76a2
	nop			;76a3
	nop			;76a4
	nop			;76a5
	nop			;76a6
	nop			;76a7
	nop			;76a8
	nop			;76a9
	nop			;76aa
	nop			;76ab
	nop			;76ac
	nop			;76ad
	nop			;76ae
	nop			;76af
	nop			;76b0
	nop			;76b1
	ld (bc),a		;76b2
	nop			;76b3
	nop			;76b4
	nop			;76b5
	nop			;76b6
	nop			;76b7
	nop			;76b8
	nop			;76b9
	nop			;76ba
	nop			;76bb
	nop			;76bc
	nop			;76bd
	nop			;76be
	nop			;76bf
	ld (bc),a		;76c0
	rrca			;76c1
	jr l76ceh		;76c2
	ld h,007h		;76c4
	ld h,c			;76c6
	nop			;76c7
	jr l76d4h		;76c8
	ld bc,00017h		;76ca
	nop			;76cd
l76ceh:
	ld h,d			;76ce
	dec e			;76cf
	ld h,c			;76d0
	nop			;76d1
	ld h,d			;76d2
	inc bc			;76d3
l76d4h:
	ld h,c			;76d4
	nop			;76d5
	nop			;76d6
	nop			;76d7
	nop			;76d8
	nop			;76d9
	ld a,(de)		;76da
	ld a,(bc)		;76db
	ld h,006h		;76dc
	nop			;76de
	nop			;76df
	ld a,(de)		;76e0
	ld a,(bc)		;76e1
	nop			;76e2
	nop			;76e3
	nop			;76e4
	nop			;76e5
l76e6h:
	ld h,c			;76e6
	nop			;76e7
	ld h,c			;76e8
	nop			;76e9
	add hl,hl		;76ea
	rrca			;76eb
	ld h,c			;76ec
	nop			;76ed
	ld bc,00000h		;76ee
	nop			;76f1
	nop			;76f2
	nop			;76f3
	nop			;76f4
	nop			;76f5
	ld l,h			;76f6
	ld (bc),a		;76f7
	nop			;76f8
	nop			;76f9
	ld bc,00000h		;76fa
	nop			;76fd
	nop			;76fe
	nop			;76ff
	add hl,hl		;7700
	rlca			;7701
	ld l,h			;7702
	ld (bc),a		;7703
	nop			;7704
	nop			;7705
	nop			;7706
	nop			;7707
	dec b			;7708
	rrca			;7709
	jr l7716h		;770a
	ld de,l6c09h		;770c
	ld (bc),a		;770f
	jr l771ch		;7710
	ld bc,00000h		;7712
	nop			;7715
l7716h:
	ld h,c			;7716
	nop			;7717
	ld h,a			;7718
	jr nz,l7787h		;7719
	ld (bc),a		;771b
l771ch:
	ld h,c			;771c
	nop			;771d
	nop			;771e
	nop			;771f
	nop			;7720
	nop			;7721
	jr l772eh		;7722
	nop			;7724
	nop			;7725
	ld h,c			;7726
	nop			;7727
	jr $+12			;7728
	ld (bc),a		;772a
	nop			;772b
	nop			;772c
	nop			;772d
l772eh:
	ld h,c			;772e
	nop			;772f
	ld h,00ah		;7730
	ld (l6105h),a		;7732
	nop			;7735
	nop			;7736
	nop			;7737
	nop			;7738
	nop			;7739
	ld a,(de)		;773a
	ld a,(bc)		;773b
	ld h,c			;773c
	nop			;773d
	nop			;773e
	nop			;773f
	ld a,(de)		;7740
	ld a,(bc)		;7741
	ld bc,00000h		;7742
	nop			;7745
	ld h,c			;7746
	nop			;7747
	ld h,006h		;7748
	ld c,00fh		;774a
	ld h,c			;774c
	nop			;774d
	nop			;774e
	nop			;774f
	add hl,bc		;7750
	rrca			;7751
	nop			;7752
	nop			;7753
	nop			;7754
	nop			;7755
	ld h,a			;7756
	ld b,b			;7757
	nop			;7758
	nop			;7759
	nop			;775a
	nop			;775b
	nop			;775c
	nop			;775d
	nop			;775e
	nop			;775f
	nop			;7760
	nop			;7761
	nop			;7762
	nop			;7763
	nop			;7764
	nop			;7765
	nop			;7766
	nop			;7767
	nop			;7768
	nop			;7769
	ld c,00ah		;776a
	ld h,00fh		;776c
	nop			;776e
	nop			;776f
	ld c,00ah		;7770
	inc bc			;7772
	nop			;7773
	nop			;7774
	nop			;7775
	ld h,c			;7776
	nop			;7777
	ld h,c			;7778
	nop			;7779
	nop			;777a
	nop			;777b
	ld h,c			;777c
	nop			;777d
	nop			;777e
	nop			;777f
	nop			;7780
	nop			;7781
	jr l778eh		;7782
	nop			;7784
	nop			;7785
	ld l,h			;7786
l7787h:
	ld (bc),a		;7787
	jr l7794h		;7788
	ld bc,00000h		;778a
	nop			;778d
l778eh:
	ld h,c			;778e
	nop			;778f
	nop			;7790
	nop			;7791
	nop			;7792
	nop			;7793
l7794h:
	ld h,c			;7794
	nop			;7795
	nop			;7796
	nop			;7797
	nop			;7798
	nop			;7799
	ld a,(de)		;779a
	ld a,(bc)		;779b
	nop			;779c
	nop			;779d
	ld l,h			;779e
	ld (bc),a		;779f
	ld a,(de)		;77a0
	ld a,(bc)		;77a1
	ld bc,00000h		;77a2
	nop			;77a5
	ld h,c			;77a6
	nop			;77a7
	nop			;77a8
	nop			;77a9
	nop			;77aa
	nop			;77ab
	ld h,c			;77ac
	nop			;77ad
	nop			;77ae
	nop			;77af
	ld (bc),a		;77b0
	rrca			;77b1
	nop			;77b2
	nop			;77b3
	jr nc,l77b9h		;77b4
	jr nc,l77bbh		;77b6
	nop			;77b8
l77b9h:
	nop			;77b9
	nop			;77ba
l77bbh:
	nop			;77bb
	nop			;77bc
	nop			;77bd
	nop			;77be
	nop			;77bf
	nop			;77c0
	nop			;77c1
	nop			;77c2
	nop			;77c3
	nop			;77c4
	nop			;77c5
	nop			;77c6
	nop			;77c7
	dec b			;77c8
	rrca			;77c9
	jr l77d6h		;77ca
	ld l,b			;77cc
	inc bc			;77cd
	ld h,a			;77ce
	inc bc			;77cf
	jr l77dch		;77d0
	ld bc,00000h		;77d2
	nop			;77d5
l77d6h:
	ld h,c			;77d6
	nop			;77d7
	nop			;77d8
	nop			;77d9
	nop			;77da
	nop			;77db
l77dch:
	ld h,c			;77dc
	nop			;77dd
	nop			;77de
	nop			;77df
	nop			;77e0
	nop			;77e1
	jr l77eeh		;77e2
	nop			;77e4
	nop			;77e5
	nop			;77e6
	nop			;77e7
	jr l77f4h		;77e8
	ld (bc),a		;77ea
	nop			;77eb
	nop			;77ec
	nop			;77ed
l77eeh:
	ld h,c			;77ee
	nop			;77ef
	nop			;77f0
	nop			;77f1
	nop			;77f2
	nop			;77f3
l77f4h:
	ld h,c			;77f4
	nop			;77f5
	nop			;77f6
	nop			;77f7
	nop			;77f8
	nop			;77f9
	ld a,(de)		;77fa
	ld a,(bc)		;77fb
	nop			;77fc
	nop			;77fd
	nop			;77fe
	nop			;77ff
	ld a,(de)		;7800
	ld a,(bc)		;7801
	ld bc,00000h		;7802
	nop			;7805
	ld h,c			;7806
	nop			;7807
	nop			;7808
	nop			;7809
	nop			;780a
	nop			;780b
	ld h,c			;780c
	nop			;780d
	nop			;780e
	nop			;780f
	add hl,bc		;7810
	rrca			;7811
	nop			;7812
	nop			;7813
	nop			;7814
	nop			;7815
	nop			;7816
	nop			;7817
	nop			;7818
	nop			;7819
	ld bc,00000h		;781a
	nop			;781d
	nop			;781e
	nop			;781f
	nop			;7820
	nop			;7821
	nop			;7822
	nop			;7823
	nop			;7824
	nop			;7825
	nop			;7826
	nop			;7827
	nop			;7828
	nop			;7829
	jr l7836h		;782a
	ld l,e			;782c
	ld bc,0016bh		;782d
	jr l783ch		;7830
	inc bc			;7832
	nop			;7833
	nop			;7834
	nop			;7835
l7836h:
	ld h,c			;7836
	nop			;7837
	nop			;7838
	nop			;7839
	nop			;783a
	nop			;783b
l783ch:
	ld h,c			;783c
	nop			;783d
	nop			;783e
	nop			;783f
	rlca			;7840
	rrca			;7841
	jr l784eh		;7842
	ld h,00ah		;7844
	ld h,c			;7846
	nop			;7847
	jr l7854h		;7848
	ld bc,00000h		;784a
	nop			;784d
l784eh:
	ld h,c			;784e
	nop			;784f
	ld h,c			;7850
	nop			;7851
	nop			;7852
	nop			;7853
l7854h:
	ld h,c			;7854
	nop			;7855
	nop			;7856
	nop			;7857
	nop			;7858
	nop			;7859
	ld a,(de)		;785a
	ld a,(bc)		;785b
	ld h,006h		;785c
	nop			;785e
	nop			;785f
	ld a,(de)		;7860
	ld a,(bc)		;7861
	nop			;7862
	nop			;7863
	nop			;7864
	nop			;7865
	ld h,c			;7866
	nop			;7867
	nop			;7868
	nop			;7869
	add hl,hl		;786a
	rrca			;786b
	ld h,c			;786c
	nop			;786d
	ld bc,00000h		;786e
	nop			;7871
	nop			;7872
	nop			;7873
	nop			;7874
	nop			;7875
	ld l,h			;7876
	rlca			;7877
	nop			;7878
	nop			;7879
	ld bc,00000h		;787a
	nop			;787d
	nop			;787e
	nop			;787f
	ld h,00fh		;7880
	ld l,h			;7882
	rlca			;7883
	nop			;7884
	nop			;7885
	nop			;7886
	nop			;7887
	nop			;7888
	nop			;7889
	jr l7896h		;788a
	ld l,d			;788c
	add hl,bc		;788d
	ld a,(de)		;788e
	rrca			;788f
	jr l789ch		;7890
	ld bc,00000h		;7892
	nop			;7895
l7896h:
	ld h,c			;7896
	nop			;7897
	ld c,008h		;7898
	ld c,00fh		;789a
l789ch:
	ld h,c			;789c
	nop			;789d
	nop			;789e
	nop			;789f
	nop			;78a0
	nop			;78a1
	jr l78aeh		;78a2
	ld l,d			;78a4
	nop			;78a5
	nop			;78a6
	rrca			;78a7
	jr l78b4h		;78a8
	ld (bc),a		;78aa
	nop			;78ab
	nop			;78ac
	nop			;78ad
l78aeh:
	ld h,c			;78ae
	nop			;78af
	ld h,00ah		;78b0
	nop			;78b2
	rrca			;78b3
l78b4h:
	ld h,c			;78b4
	nop			;78b5
	nop			;78b6
	nop			;78b7
	nop			;78b8
	nop			;78b9
	ld a,(de)		;78ba
	ld a,(bc)		;78bb
	ld h,c			;78bc
	nop			;78bd
	ld h,c			;78be
	nop			;78bf
	ld a,(de)		;78c0
	ld a,(bc)		;78c1
	ld bc,00000h		;78c2
	nop			;78c5
	ld h,c			;78c6
	nop			;78c7
	ld h,006h		;78c8
	nop			;78ca
	nop			;78cb
	ld h,c			;78cc
	nop			;78cd
	nop			;78ce
	nop			;78cf
	nop			;78d0
	nop			;78d1
	nop			;78d2
	nop			;78d3
	nop			;78d4
	nop			;78d5
	nop			;78d6
	nop			;78d7
	nop			;78d8
	nop			;78d9
	nop			;78da
	nop			;78db
	nop			;78dc
	nop			;78dd
	nop			;78de
	nop			;78df
	nop			;78e0
	nop			;78e1
	nop			;78e2
	nop			;78e3
	nop			;78e4
	nop			;78e5
	nop			;78e6
	nop			;78e7
	nop			;78e8
	nop			;78e9
	ld c,00ah		;78ea
	ld h,00fh		;78ec
	nop			;78ee
	nop			;78ef
	ld c,00ah		;78f0
	inc bc			;78f2
	nop			;78f3
	nop			;78f4
	nop			;78f5
	ld h,c			;78f6
	nop			;78f7
	ld h,c			;78f8
	nop			;78f9
	nop			;78fa
	nop			;78fb
	ld h,c			;78fc
	nop			;78fd
	nop			;78fe
	nop			;78ff
	nop			;7900
	nop			;7901
	jr l790eh		;7902
	ld (03203h),a		;7904
	inc bc			;7907
	jr l7914h		;7908
	ld bc,00000h		;790a
	nop			;790d
l790eh:
	ld h,c			;790e
	nop			;790f
	ld h,a			;7910
	ld bc,00167h		;7911
l7914h:
	ld h,c			;7914
	nop			;7915
	nop			;7916
	nop			;7917
	nop			;7918
	nop			;7919
	ld a,(de)		;791a
	ld a,(bc)		;791b
	ld l,e			;791c
	ld bc,0016bh		;791d
	ld a,(de)		;7920
	ld a,(bc)		;7921
	ld bc,00000h		;7922
	nop			;7925
	ld h,c			;7926
	nop			;7927
	nop			;7928
	nop			;7929
	nop			;792a
	nop			;792b
	ld h,c			;792c
	nop			;792d
	nop			;792e
	nop			;792f
	nop			;7930
	nop			;7931
	nop			;7932
	nop			;7933
	nop			;7934
	nop			;7935
	nop			;7936
	nop			;7937
	nop			;7938
	nop			;7939
	nop			;793a
	nop			;793b
	nop			;793c
	nop			;793d
	nop			;793e
	nop			;793f
	nop			;7940
	nop			;7941
	nop			;7942
	nop			;7943
	nop			;7944
	nop			;7945
	nop			;7946
	nop			;7947
	dec b			;7948
	rrca			;7949
	jr l7956h		;794a
	inc (hl)		;794c
	inc bc			;794d
	inc (hl)		;794e
	inc bc			;794f
	jr l795ch		;7950
	ld bc,00000h		;7952
	nop			;7955
l7956h:
	ld h,c			;7956
	nop			;7957
	nop			;7958
	nop			;7959
	nop			;795a
	nop			;795b
l795ch:
	ld h,c			;795c
	nop			;795d
	nop			;795e
	nop			;795f
	nop			;7960
	nop			;7961
	jr l796eh		;7962
	ld l,e			;7964
	ld bc,0016bh		;7965
	jr l7974h		;7968
	ld (bc),a		;796a
	nop			;796b
	nop			;796c
	nop			;796d
l796eh:
	ld h,c			;796e
	nop			;796f
	ld h,a			;7970
	ld (bc),a		;7971
	ld h,a			;7972
	ld (bc),a		;7973
l7974h:
	ld h,c			;7974
	nop			;7975
	nop			;7976
	nop			;7977
	nop			;7978
	nop			;7979
	ld a,(de)		;797a
	ld a,(bc)		;797b
	nop			;797c
	nop			;797d
	nop			;797e
	nop			;797f
	ld a,(de)		;7980
	ld a,(bc)		;7981
	ld bc,00000h		;7982
	nop			;7985
	ld h,c			;7986
	nop			;7987
	nop			;7988
	nop			;7989
	nop			;798a
	nop			;798b
	ld h,c			;798c
	nop			;798d
	nop			;798e
	nop			;798f
	nop			;7990
	nop			;7991
	nop			;7992
	nop			;7993
	nop			;7994
	nop			;7995
	nop			;7996
	nop			;7997
	nop			;7998
	nop			;7999
	ld bc,00000h		;799a
	nop			;799d
	nop			;799e
	nop			;799f
	nop			;79a0
	nop			;79a1
	nop			;79a2
	nop			;79a3
	nop			;79a4
	nop			;79a5
	nop			;79a6
	nop			;79a7
	nop			;79a8
	nop			;79a9
	jr l79b6h		;79aa
	nop			;79ac
	nop			;79ad
	nop			;79ae
	nop			;79af
	jr l79bch		;79b0
	inc bc			;79b2
	nop			;79b3
	nop			;79b4
	nop			;79b5
l79b6h:
	ld h,c			;79b6
	nop			;79b7
	nop			;79b8
	nop			;79b9
	ld h,c			;79ba
	nop			;79bb
l79bch:
	ld h,c			;79bc
	nop			;79bd
	nop			;79be
	nop			;79bf
	ld (bc),a		;79c0
	rrca			;79c1
	jr l79ceh		;79c2
	ld h,00ah		;79c4
	ld h,d			;79c6
	ld b,018h		;79c7
	ld a,(bc)		;79c9
	ld bc,00000h		;79ca
	nop			;79cd
l79ceh:
	ld h,c			;79ce
	nop			;79cf
	ld h,c			;79d0
	nop			;79d1
	nop			;79d2
	nop			;79d3
	ld h,c			;79d4
	nop			;79d5
	nop			;79d6
	nop			;79d7
	nop			;79d8
	nop			;79d9
	ld a,(de)		;79da
	ld a,(bc)		;79db
	ld h,006h		;79dc
	nop			;79de
	nop			;79df
	ld a,(de)		;79e0
	ld a,(bc)		;79e1
	ld bc,00000h		;79e2
	nop			;79e5
	ld h,c			;79e6
	nop			;79e7
	nop			;79e8
	nop			;79e9
	add hl,hl		;79ea
	rrca			;79eb
	ld h,c			;79ec
	nop			;79ed
	ld bc,00000h		;79ee
	nop			;79f1
	nop			;79f2
	nop			;79f3
	nop			;79f4
	nop			;79f5
	ld l,h			;79f6
	rlca			;79f7
	nop			;79f8
	nop			;79f9
	ld (bc),a		;79fa
	nop			;79fb
	nop			;79fc
	nop			;79fd
	nop			;79fe
	nop			;79ff
	ld h,00fh		;7a00
	ld l,h			;7a02
	rlca			;7a03
	nop			;7a04
	nop			;7a05
	nop			;7a06
	nop			;7a07
	dec b			;7a08
	rrca			;7a09
	jr l7a16h		;7a0a
	ld h,c			;7a0c
	nop			;7a0d
	ld h,c			;7a0e
	nop			;7a0f
	jr l7a1ch		;7a10
	ld bc,00000h		;7a12
	nop			;7a15
l7a16h:
	ld h,c			;7a16
	nop			;7a17
	nop			;7a18
	nop			;7a19
	nop			;7a1a
	nop			;7a1b
l7a1ch:
	ld h,c			;7a1c
	nop			;7a1d
	nop			;7a1e
	nop			;7a1f
	nop			;7a20
	nop			;7a21
	jr l7a2eh		;7a22
	nop			;7a24
	nop			;7a25
	nop			;7a26
	nop			;7a27
	jr l7a34h		;7a28
	ld (bc),a		;7a2a
	nop			;7a2b
	nop			;7a2c
	nop			;7a2d
l7a2eh:
	ld h,c			;7a2e
	nop			;7a2f
	ld h,00ah		;7a30
	nop			;7a32
	nop			;7a33
l7a34h:
	ld h,c			;7a34
	nop			;7a35
	nop			;7a36
	nop			;7a37
	nop			;7a38
	nop			;7a39
	ld a,(de)		;7a3a
	ld a,(bc)		;7a3b
	ld h,c			;7a3c
	nop			;7a3d
	nop			;7a3e
	nop			;7a3f
	ld a,(de)		;7a40
	ld a,(bc)		;7a41
	ld bc,00000h		;7a42
	nop			;7a45
	ld h,c			;7a46
	nop			;7a47
	ld h,006h		;7a48
	nop			;7a4a
	nop			;7a4b
	ld h,c			;7a4c
	nop			;7a4d
	nop			;7a4e
	nop			;7a4f
	add hl,bc		;7a50
	rrca			;7a51
	nop			;7a52
	nop			;7a53
	nop			;7a54
	nop			;7a55
	nop			;7a56
	nop			;7a57
	nop			;7a58
	nop			;7a59
	nop			;7a5a
	nop			;7a5b
	nop			;7a5c
	nop			;7a5d
	nop			;7a5e
	nop			;7a5f
	nop			;7a60
	nop			;7a61
	nop			;7a62
	nop			;7a63
	nop			;7a64
	nop			;7a65
	nop			;7a66
	nop			;7a67
	nop			;7a68
	nop			;7a69
	jr l7a76h		;7a6a
	ld h,00fh		;7a6c
	nop			;7a6e
	nop			;7a6f
	jr l7a7ch		;7a70
	inc bc			;7a72
	nop			;7a73
	nop			;7a74
	nop			;7a75
l7a76h:
	ld h,c			;7a76
	nop			;7a77
	ld h,c			;7a78
	nop			;7a79
	nop			;7a7a
	nop			;7a7b
l7a7ch:
	ld h,c			;7a7c
	nop			;7a7d
	nop			;7a7e
	nop			;7a7f
	ld (bc),a		;7a80
	rrca			;7a81
	jr l7a8eh		;7a82
	nop			;7a84
	nop			;7a85
	nop			;7a86
	nop			;7a87
	jr l7a94h		;7a88
	ld bc,00000h		;7a8a
	nop			;7a8d
l7a8eh:
	ld h,c			;7a8e
	nop			;7a8f
	nop			;7a90
	nop			;7a91
	nop			;7a92
	nop			;7a93
l7a94h:
	ld h,c			;7a94
	nop			;7a95
	nop			;7a96
	nop			;7a97
	nop			;7a98
	nop			;7a99
	ld a,(de)		;7a9a
	ld a,(bc)		;7a9b
	nop			;7a9c
	nop			;7a9d
	nop			;7a9e
	nop			;7a9f
	ld a,(de)		;7aa0
	ld a,(bc)		;7aa1
	ld bc,00000h		;7aa2
	nop			;7aa5
	ld h,c			;7aa6
	nop			;7aa7
	nop			;7aa8
	nop			;7aa9
	nop			;7aaa
	nop			;7aab
	ld h,c			;7aac
	nop			;7aad
	nop			;7aae
	nop			;7aaf
	nop			;7ab0
	nop			;7ab1
	nop			;7ab2
	nop			;7ab3
	jr nc,l7ab9h		;7ab4
	jr nc,l7abbh		;7ab6
	nop			;7ab8
l7ab9h:
	nop			;7ab9
	nop			;7aba
l7abbh:
	nop			;7abb
	nop			;7abc
	nop			;7abd
	nop			;7abe
	nop			;7abf
	nop			;7ac0
	nop			;7ac1
	nop			;7ac2
	nop			;7ac3
	nop			;7ac4
	nop			;7ac5
	nop			;7ac6
	nop			;7ac7
	dec b			;7ac8
	rrca			;7ac9
	jr l7ad6h		;7aca
	ld l,b			;7acc
	inc bc			;7acd
	ld h,a			;7ace
	inc bc			;7acf
	jr l7adch		;7ad0
	ld bc,00000h		;7ad2
	nop			;7ad5
l7ad6h:
	ld h,c			;7ad6
	nop			;7ad7
	nop			;7ad8
	nop			;7ad9
	nop			;7ada
	nop			;7adb
l7adch:
	ld h,c			;7adc
	nop			;7add
	nop			;7ade
	nop			;7adf
	nop			;7ae0
	nop			;7ae1
	jr l7aeeh		;7ae2
	nop			;7ae4
	nop			;7ae5
	nop			;7ae6
	nop			;7ae7
	jr l7af4h		;7ae8
	ld (bc),a		;7aea
	nop			;7aeb
	nop			;7aec
	nop			;7aed
l7aeeh:
	ld h,c			;7aee
	nop			;7aef
	nop			;7af0
	nop			;7af1
	nop			;7af2
	nop			;7af3
l7af4h:
	ld h,c			;7af4
	nop			;7af5
	nop			;7af6
	nop			;7af7
	nop			;7af8
	nop			;7af9
	ld a,(de)		;7afa
	ld a,(bc)		;7afb
	nop			;7afc
	nop			;7afd
	nop			;7afe
	nop			;7aff
	ld a,(de)		;7b00
	ld a,(bc)		;7b01
	ld bc,00000h		;7b02
	nop			;7b05
	ld h,c			;7b06
	nop			;7b07
	nop			;7b08
	nop			;7b09
	nop			;7b0a
	nop			;7b0b
	ld h,c			;7b0c
	nop			;7b0d
	nop			;7b0e
	nop			;7b0f
	add hl,bc		;7b10
	rrca			;7b11
	nop			;7b12
	nop			;7b13
	nop			;7b14
	nop			;7b15
	nop			;7b16
	nop			;7b17
	nop			;7b18
	nop			;7b19
	ld bc,00000h		;7b1a
	nop			;7b1d
	nop			;7b1e
	nop			;7b1f
	nop			;7b20
	nop			;7b21
	nop			;7b22
	nop			;7b23
	nop			;7b24
	nop			;7b25
	nop			;7b26
	nop			;7b27
	nop			;7b28
	nop			;7b29
	jr l7b36h		;7b2a
	ld l,e			;7b2c
	ld bc,0016bh		;7b2d
	jr l7b3ch		;7b30
	inc bc			;7b32
	nop			;7b33
	nop			;7b34
	nop			;7b35
l7b36h:
	ld h,c			;7b36
	nop			;7b37
	nop			;7b38
	nop			;7b39
	nop			;7b3a
	nop			;7b3b
l7b3ch:
	ld h,c			;7b3c
	nop			;7b3d
	nop			;7b3e
	nop			;7b3f
	inc b			;7b40
	rrca			;7b41
	inc e			;7b42
	ld a,(bc)		;7b43
	jr z,l7b50h		;7b44
	ld h,c			;7b46
	nop			;7b47
	inc e			;7b48
	ld a,(bc)		;7b49
	ld bc,00000h		;7b4a
	nop			;7b4d
	ld h,c			;7b4e
	nop			;7b4f
l7b50h:
	ld h,c			;7b50
	nop			;7b51
	nop			;7b52
	nop			;7b53
	ld h,c			;7b54
	nop			;7b55
	nop			;7b56
	nop			;7b57
	nop			;7b58
	nop			;7b59
	inc e			;7b5a
	ld a,(bc)		;7b5b
	dec l			;7b5c
	ld a,(bc)		;7b5d
	nop			;7b5e
	nop			;7b5f
	inc e			;7b60
	ld a,(bc)		;7b61
	ld bc,00000h		;7b62
	nop			;7b65
	ld h,c			;7b66
	nop			;7b67
	ld h,c			;7b68
	nop			;7b69
	add hl,hl		;7b6a
	rrca			;7b6b
	ld h,c			;7b6c
	nop			;7b6d
	nop			;7b6e
	nop			;7b6f
	nop			;7b70
	nop			;7b71
	nop			;7b72
	nop			;7b73
	nop			;7b74
	nop			;7b75
	ld l,h			;7b76
	ld bc,00000h		;7b77
	nop			;7b7a
	nop			;7b7b
	nop			;7b7c
	nop			;7b7d
	nop			;7b7e
	nop			;7b7f
	ld de,l6c0ah		;7b80
	ld bc,00000h		;7b83
	nop			;7b86
	nop			;7b87
	dec b			;7b88
	rrca			;7b89
	dec e			;7b8a
	ld a,(bc)		;7b8b
	ld h,a			;7b8c
	ld b,b			;7b8d
	ld l,h			;7b8e
	ld bc,00a1dh		;7b8f
	ld bc,00000h		;7b92
	nop			;7b95
	ld h,c			;7b96
	nop			;7b97
	nop			;7b98
	nop			;7b99
	ld l,h			;7b9a
	ld bc,00061h		;7b9b
	nop			;7b9e
	nop			;7b9f
	nop			;7ba0
	nop			;7ba1
	dec e			;7ba2
	ld a,(bc)		;7ba3
	nop			;7ba4
	nop			;7ba5
	ld l,h			;7ba6
	ld bc,00a1dh		;7ba7
	ld (bc),a		;7baa
	nop			;7bab
	nop			;7bac
	nop			;7bad
	ld h,c			;7bae
	nop			;7baf
	jr z,l7bbch		;7bb0
	ld h,c			;7bb2
	nop			;7bb3
	ld h,c			;7bb4
	nop			;7bb5
	nop			;7bb6
	nop			;7bb7
	nop			;7bb8
	nop			;7bb9
	dec e			;7bba
	ld a,(bc)		;7bbb
l7bbch:
	ld h,c			;7bbc
	nop			;7bbd
	nop			;7bbe
	nop			;7bbf
	dec e			;7bc0
	ld a,(bc)		;7bc1
	ld bc,00000h		;7bc2
	nop			;7bc5
	ld h,c			;7bc6
	nop			;7bc7
	jr z,l7bd0h		;7bc8
	nop			;7bca
	nop			;7bcb
	ld h,c			;7bcc
	nop			;7bcd
	nop			;7bce
	nop			;7bcf
l7bd0h:
	inc b			;7bd0
	rrca			;7bd1
	nop			;7bd2
	nop			;7bd3
	nop			;7bd4
	nop			;7bd5
	nop			;7bd6
	nop			;7bd7
	nop			;7bd8
	nop			;7bd9
	nop			;7bda
	nop			;7bdb
	nop			;7bdc
	nop			;7bdd
	nop			;7bde
	nop			;7bdf
	nop			;7be0
	nop			;7be1
	nop			;7be2
	nop			;7be3
	nop			;7be4
	nop			;7be5
	nop			;7be6
	nop			;7be7
	nop			;7be8
	nop			;7be9
	inc e			;7bea
	ld a,(bc)		;7beb
	jr z,l7bfdh		;7bec
	nop			;7bee
	nop			;7bef
	inc e			;7bf0
	ld a,(bc)		;7bf1
	inc bc			;7bf2
	nop			;7bf3
	nop			;7bf4
	nop			;7bf5
	ld h,c			;7bf6
	nop			;7bf7
	ld h,c			;7bf8
	nop			;7bf9
	nop			;7bfa
	nop			;7bfb
	ld h,c			;7bfc
l7bfdh:
	nop			;7bfd
	nop			;7bfe
	nop			;7bff
	ld (bc),a		;7c00
	rrca			;7c01
	ld a,(de)		;7c02
	ld a,(bc)		;7c03
	ld (03203h),a		;7c04
	inc bc			;7c07
	ld a,(de)		;7c08
	ld a,(bc)		;7c09
	ld bc,00000h		;7c0a
	nop			;7c0d
	ld h,c			;7c0e
	nop			;7c0f
	ld h,a			;7c10
	ld bc,00167h		;7c11
	ld h,c			;7c14
	nop			;7c15
	nop			;7c16
	nop			;7c17
	nop			;7c18
	nop			;7c19
	ld a,(de)		;7c1a
	ld a,(bc)		;7c1b
	ld l,e			;7c1c
	ld bc,0016bh		;7c1d
	ld a,(de)		;7c20
	ld a,(bc)		;7c21
	ld bc,00000h		;7c22
	nop			;7c25
	ld h,c			;7c26
	nop			;7c27
	nop			;7c28
	nop			;7c29
	nop			;7c2a
	nop			;7c2b
	ld h,c			;7c2c
	nop			;7c2d
	nop			;7c2e
	nop			;7c2f
	nop			;7c30
	nop			;7c31
	nop			;7c32
	nop			;7c33
	nop			;7c34
	nop			;7c35
	nop			;7c36
	nop			;7c37
	nop			;7c38
	nop			;7c39
	nop			;7c3a
	nop			;7c3b
	nop			;7c3c
	nop			;7c3d
	nop			;7c3e
	nop			;7c3f
	nop			;7c40
	nop			;7c41
	nop			;7c42
	nop			;7c43
	nop			;7c44
	nop			;7c45
	nop			;7c46
	nop			;7c47
	nop			;7c48
	nop			;7c49
	ld a,(de)		;7c4a
	ld a,(bc)		;7c4b
	inc (hl)		;7c4c
	inc bc			;7c4d
	inc (hl)		;7c4e
	inc bc			;7c4f
	ld a,(de)		;7c50
	ld a,(bc)		;7c51
	ld bc,00000h		;7c52
	nop			;7c55
	ld h,c			;7c56
	nop			;7c57
	nop			;7c58
	nop			;7c59
	nop			;7c5a
	nop			;7c5b
	ld h,c			;7c5c
	nop			;7c5d
	nop			;7c5e
	nop			;7c5f
	nop			;7c60
	nop			;7c61
	ld a,(de)		;7c62
	ld a,(bc)		;7c63
	ld l,e			;7c64
	ld bc,0016bh		;7c65
	ld a,(de)		;7c68
	ld a,(bc)		;7c69
	ld (bc),a		;7c6a
	nop			;7c6b
	nop			;7c6c
	nop			;7c6d
	ld h,c			;7c6e
	nop			;7c6f
	ld h,a			;7c70
	ld (bc),a		;7c71
	ld h,a			;7c72
	ld (bc),a		;7c73
	ld h,c			;7c74
	nop			;7c75
	nop			;7c76
	nop			;7c77
	nop			;7c78
	nop			;7c79
	ld a,(de)		;7c7a
	ld a,(bc)		;7c7b
	nop			;7c7c
	nop			;7c7d
	nop			;7c7e
	nop			;7c7f
	ld a,(de)		;7c80
	ld a,(bc)		;7c81
	ld bc,00000h		;7c82
	nop			;7c85
	ld h,c			;7c86
	nop			;7c87
	nop			;7c88
	nop			;7c89
	nop			;7c8a
	nop			;7c8b
	ld h,c			;7c8c
	nop			;7c8d
	nop			;7c8e
	nop			;7c8f
	nop			;7c90
	nop			;7c91
	nop			;7c92
	nop			;7c93
	nop			;7c94
	nop			;7c95
	nop			;7c96
	nop			;7c97
	nop			;7c98
	nop			;7c99
	ld bc,00000h		;7c9a
	nop			;7c9d
	ld l,c			;7c9e
	nop			;7c9f
	nop			;7ca0
	nop			;7ca1
	nop			;7ca2
	nop			;7ca3
	ld l,c			;7ca4
	nop			;7ca5
	nop			;7ca6
	nop			;7ca7
	nop			;7ca8
	nop			;7ca9
	dec e			;7caa
	ld a,(bc)		;7cab
	nop			;7cac
	nop			;7cad
	nop			;7cae
	nop			;7caf
	dec e			;7cb0
	ld a,(bc)		;7cb1
	ld (bc),a		;7cb2
	nop			;7cb3
	nop			;7cb4
	nop			;7cb5
	ld h,c			;7cb6
	nop			;7cb7
	nop			;7cb8
	nop			;7cb9
	nop			;7cba
	nop			;7cbb
	ld h,c			;7cbc
	nop			;7cbd
	nop			;7cbe
	nop			;7cbf
	ld (bc),a		;7cc0
	rrca			;7cc1
	jr l7cd0h		;7cc2
	ld h,003h		;7cc4
	ld h,003h		;7cc6
	ld (00101h),a		;7cc8
	nop			;7ccb
	nop			;7ccc
	nop			;7ccd
	ld h,c			;7cce
	nop			;7ccf
l7cd0h:
	ld h,d			;7cd0
	djnz l7d35h		;7cd1
	ld c,061h		;7cd3
	nop			;7cd5
	nop			;7cd6
	nop			;7cd7
	nop			;7cd8
	nop			;7cd9
	ld a,(de)		;7cda
	inc c			;7cdb
	ld l,c			;7cdc
	inc bc			;7cdd
	ld l,d			;7cde
	inc bc			;7cdf
	ld (00001h),a		;7ce0
	nop			;7ce3
	nop			;7ce4
	nop			;7ce5
	ld h,c			;7ce6
	nop			;7ce7
	nop			;7ce8
	nop			;7ce9
	nop			;7cea
	nop			;7ceb
	ld h,c			;7cec
	nop			;7ced
	ld bc,00000h		;7cee
	nop			;7cf1
	nop			;7cf2
	nop			;7cf3
	inc h			;7cf4
	inc bc			;7cf5
	inc h			;7cf6
	inc bc			;7cf7
	ld (00201h),a		;7cf8
	nop			;7cfb
	nop			;7cfc
	nop			;7cfd
	nop			;7cfe
	nop			;7cff
	ld l,e			;7d00
	ld bc,0016bh		;7d01
	ld h,c			;7d04
	nop			;7d05
	nop			;7d06
	nop			;7d07
	dec b			;7d08
	rrca			;7d09
	jr l7d18h		;7d0a
	ld h,003h		;7d0c
	ld h,003h		;7d0e
	ld (00101h),a		;7d10
	nop			;7d13
	nop			;7d14
	nop			;7d15
	ld h,c			;7d16
	nop			;7d17
l7d18h:
	ld l,e			;7d18
	ld bc,0016bh		;7d19
	ld h,c			;7d1c
	nop			;7d1d
	nop			;7d1e
	nop			;7d1f
	nop			;7d20
	nop			;7d21
	jr l7d30h		;7d22
	nop			;7d24
	nop			;7d25
	nop			;7d26
	nop			;7d27
	ld (00301h),a		;7d28
	nop			;7d2b
	nop			;7d2c
	nop			;7d2d
	ld h,c			;7d2e
	nop			;7d2f
l7d30h:
	nop			;7d30
	nop			;7d31
	nop			;7d32
	nop			;7d33
	ld h,c			;7d34
l7d35h:
	nop			;7d35
	nop			;7d36
	nop			;7d37
	nop			;7d38
	nop			;7d39
	ld a,(de)		;7d3a
	inc c			;7d3b
	inc h			;7d3c
	inc bc			;7d3d
	inc h			;7d3e
	inc bc			;7d3f
	ld (00301h),a		;7d40
	nop			;7d43
	nop			;7d44
	nop			;7d45
	ld h,c			;7d46
	nop			;7d47
	nop			;7d48
	nop			;7d49
	nop			;7d4a
	nop			;7d4b
	ld h,c			;7d4c
	nop			;7d4d
	ld bc,00900h		;7d4e
	rrca			;7d51
	nop			;7d52
	nop			;7d53
	ld h,003h		;7d54
	ld h,003h		;7d56
	ld (00201h),a		;7d58
	nop			;7d5b
	nop			;7d5c
	nop			;7d5d
	nop			;7d5e
	nop			;7d5f
	nop			;7d60
	nop			;7d61
	nop			;7d62
	nop			;7d63
	ld h,c			;7d64
	nop			;7d65
	nop			;7d66
	nop			;7d67
	nop			;7d68
	nop			;7d69
	ld c,00ch		;7d6a
	nop			;7d6c
	nop			;7d6d
	nop			;7d6e
	nop			;7d6f
	ld (00301h),a		;7d70
	nop			;7d73
	nop			;7d74
	nop			;7d75
	ld h,c			;7d76
	nop			;7d77
	ld l,e			;7d78
	ld bc,0016bh		;7d79
	ld h,c			;7d7c
	nop			;7d7d
	nop			;7d7e
	nop			;7d7f
	nop			;7d80
	nop			;7d81
	jr l7d90h		;7d82
	nop			;7d84
	nop			;7d85
	nop			;7d86
	nop			;7d87
	ld (00102h),a		;7d88
	nop			;7d8b
	nop			;7d8c
	nop			;7d8d
	ld h,c			;7d8e
	nop			;7d8f
l7d90h:
	nop			;7d90
	nop			;7d91
	nop			;7d92
	nop			;7d93
	ld h,c			;7d94
	nop			;7d95
	nop			;7d96
	nop			;7d97
	nop			;7d98
	nop			;7d99
	ld a,(de)		;7d9a
	inc c			;7d9b
	nop			;7d9c
	nop			;7d9d
	nop			;7d9e
	nop			;7d9f
	ld (00002h),a		;7da0
	nop			;7da3
	nop			;7da4
	nop			;7da5
	ld h,c			;7da6
	nop			;7da7
	nop			;7da8
	nop			;7da9
	nop			;7daa
	nop			;7dab
	ld h,c			;7dac
	nop			;7dad
	ld bc,00200h		;7dae
	rrca			;7db1
	nop			;7db2
	nop			;7db3
	jr nc,$+5		;7db4
	jr nc,l7dbbh		;7db6
	ld (00202h),a		;7db8
l7dbbh:
	nop			;7dbb
	nop			;7dbc
	nop			;7dbd
	nop			;7dbe
	nop			;7dbf
	nop			;7dc0
	nop			;7dc1
	nop			;7dc2
	nop			;7dc3
	ld h,c			;7dc4
	nop			;7dc5
	nop			;7dc6
	nop			;7dc7
	dec b			;7dc8
	rrca			;7dc9
	jr l7dd8h		;7dca
	ld l,b			;7dcc
	inc bc			;7dcd
	ld h,a			;7dce
	inc bc			;7dcf
	ld (00102h),a		;7dd0
	nop			;7dd3
	nop			;7dd4
	nop			;7dd5
	ld h,c			;7dd6
	nop			;7dd7
l7dd8h:
	nop			;7dd8
	nop			;7dd9
	nop			;7dda
	nop			;7ddb
	ld h,c			;7ddc
	nop			;7ddd
	nop			;7dde
	nop			;7ddf
	nop			;7de0
	nop			;7de1
	jr l7df0h		;7de2
	nop			;7de4
	nop			;7de5
	nop			;7de6
	nop			;7de7
	ld (00302h),a		;7de8
	nop			;7deb
	nop			;7dec
	nop			;7ded
	ld h,c			;7dee
	nop			;7def
l7df0h:
	nop			;7df0
	nop			;7df1
	nop			;7df2
	nop			;7df3
	ld h,c			;7df4
	nop			;7df5
	nop			;7df6
	nop			;7df7
	nop			;7df8
	nop			;7df9
	ld a,(de)		;7dfa
	inc c			;7dfb
	dec hl			;7dfc
	inc bc			;7dfd
	dec hl			;7dfe
	inc bc			;7dff
	ld (00302h),a		;7e00
	nop			;7e03
	nop			;7e04
	nop			;7e05
	ld h,c			;7e06
	nop			;7e07
	nop			;7e08
	nop			;7e09
	nop			;7e0a
	nop			;7e0b
	ld h,c			;7e0c
	nop			;7e0d
	ld bc,00900h		;7e0e
	rrca			;7e11
	nop			;7e12
	nop			;7e13
	nop			;7e14
	nop			;7e15
	nop			;7e16
	nop			;7e17
	ld (00202h),a		;7e18
	nop			;7e1b
	nop			;7e1c
	nop			;7e1d
	nop			;7e1e
	nop			;7e1f
	nop			;7e20
	nop			;7e21
	nop			;7e22
	nop			;7e23
	ld h,c			;7e24
	nop			;7e25
	nop			;7e26
	nop			;7e27
	nop			;7e28
	nop			;7e29
	jr l7e38h		;7e2a
	ld l,e			;7e2c
	ld bc,0016bh		;7e2d
	ld (00302h),a		;7e30
	nop			;7e33
	nop			;7e34
	nop			;7e35
	ld h,c			;7e36
	nop			;7e37
l7e38h:
	nop			;7e38
	nop			;7e39
	nop			;7e3a
	nop			;7e3b
	ld h,c			;7e3c
	nop			;7e3d
	nop			;7e3e
	nop			;7e3f
	rlca			;7e40
	rrca			;7e41
	jr l7e50h		;7e42
	ld h,003h		;7e44
	ld h,003h		;7e46
	ld (00103h),a		;7e48
	nop			;7e4b
	nop			;7e4c
	nop			;7e4d
	ld h,c			;7e4e
	nop			;7e4f
l7e50h:
	ld h,d			;7e50
	djnz l7e53h		;7e51
l7e53h:
	nop			;7e53
	ld h,c			;7e54
	nop			;7e55
	nop			;7e56
	nop			;7e57
	nop			;7e58
	nop			;7e59
	ld a,(de)		;7e5a
	inc c			;7e5b
	ld l,c			;7e5c
	inc bc			;7e5d
	ld l,d			;7e5e
	inc bc			;7e5f
	ld (00003h),a		;7e60
	nop			;7e63
	nop			;7e64
	nop			;7e65
	ld h,c			;7e66
	nop			;7e67
	nop			;7e68
	nop			;7e69
	nop			;7e6a
	nop			;7e6b
	ld h,c			;7e6c
	nop			;7e6d
	ld bc,00000h		;7e6e
	nop			;7e71
	nop			;7e72
	nop			;7e73
	inc h			;7e74
	inc bc			;7e75
	inc h			;7e76
	inc bc			;7e77
	ld (00203h),a		;7e78
	nop			;7e7b
	nop			;7e7c
	nop			;7e7d
	nop			;7e7e
	nop			;7e7f
	ld l,e			;7e80
	ld bc,0016bh		;7e81
	ld h,c			;7e84
	nop			;7e85
	nop			;7e86
	nop			;7e87
	inc b			;7e88
	rrca			;7e89
	jr l7e98h		;7e8a
	ld h,003h		;7e8c
	ld h,003h		;7e8e
	ld (00103h),a		;7e90
	nop			;7e93
	nop			;7e94
	nop			;7e95
	ld h,c			;7e96
	nop			;7e97
l7e98h:
	ld l,e			;7e98
	ld bc,0016bh		;7e99
	ld h,c			;7e9c
	nop			;7e9d
	nop			;7e9e
	nop			;7e9f
	nop			;7ea0
	nop			;7ea1
	jr l7eb0h		;7ea2
	nop			;7ea4
	nop			;7ea5
	nop			;7ea6
	nop			;7ea7
	ld (00303h),a		;7ea8
	nop			;7eab
	nop			;7eac
	nop			;7ead
	ld h,c			;7eae
	nop			;7eaf
l7eb0h:
	nop			;7eb0
	nop			;7eb1
	nop			;7eb2
	nop			;7eb3
	ld h,c			;7eb4
	nop			;7eb5
	nop			;7eb6
	nop			;7eb7
	nop			;7eb8
	nop			;7eb9
	ld a,(de)		;7eba
	inc c			;7ebb
	nop			;7ebc
	nop			;7ebd
	nop			;7ebe
	nop			;7ebf
	ld (00303h),a		;7ec0
	nop			;7ec3
	nop			;7ec4
	nop			;7ec5
	ld h,c			;7ec6
	nop			;7ec7
	nop			;7ec8
	nop			;7ec9
	nop			;7eca
	nop			;7ecb
	ld h,c			;7ecc
	nop			;7ecd
	ld bc,00000h		;7ece
	nop			;7ed1
	nop			;7ed2
	nop			;7ed3
	nop			;7ed4
	nop			;7ed5
	nop			;7ed6
	nop			;7ed7
	ld (00203h),a		;7ed8
	nop			;7edb
	nop			;7edc
	nop			;7edd
	nop			;7ede
	nop			;7edf
	ld l,e			;7ee0
	ld bc,0016bh		;7ee1
	ld h,c			;7ee4
	nop			;7ee5
	nop			;7ee6
	nop			;7ee7
	nop			;7ee8
	nop			;7ee9
	ld c,00ch		;7eea
	nop			;7eec
	nop			;7eed
	nop			;7eee
	nop			;7eef
	ld (00303h),a		;7ef0
	nop			;7ef3
	nop			;7ef4
	nop			;7ef5
	ld h,c			;7ef6
	nop			;7ef7
	ld l,e			;7ef8
	ld bc,0016bh		;7ef9
	ld h,c			;7efc
	nop			;7efd
	nop			;7efe
	nop			;7eff
	nop			;7f00
	nop			;7f01
	jr l7f10h		;7f02
	ld (03203h),a		;7f04
	inc bc			;7f07
	ld (00104h),a		;7f08
	nop			;7f0b
	nop			;7f0c
	nop			;7f0d
	ld h,c			;7f0e
	nop			;7f0f
l7f10h:
	ld h,a			;7f10
	ld bc,00167h		;7f11
	ld h,c			;7f14
	nop			;7f15
	nop			;7f16
	nop			;7f17
	nop			;7f18
	nop			;7f19
	ld a,(de)		;7f1a
	inc c			;7f1b
	ld l,e			;7f1c
	ld bc,0016bh		;7f1d
	ld (00004h),a		;7f20
	nop			;7f23
	nop			;7f24
	nop			;7f25
	ld h,c			;7f26
	nop			;7f27
	nop			;7f28
	nop			;7f29
	nop			;7f2a
	nop			;7f2b
	ld h,c			;7f2c
	nop			;7f2d
	ld bc,00000h		;7f2e
	nop			;7f31
	nop			;7f32
	nop			;7f33
	nop			;7f34
	nop			;7f35
	nop			;7f36
	nop			;7f37
	ld (00204h),a		;7f38
	nop			;7f3b
	nop			;7f3c
	nop			;7f3d
	nop			;7f3e
	nop			;7f3f
	nop			;7f40
	nop			;7f41
	nop			;7f42
	nop			;7f43
	ld h,c			;7f44
	nop			;7f45
	nop			;7f46
	nop			;7f47
	dec b			;7f48
	rrca			;7f49
	jr l7f58h		;7f4a
	inc (hl)		;7f4c
	inc bc			;7f4d
	inc (hl)		;7f4e
	inc bc			;7f4f
	ld (00104h),a		;7f50
	nop			;7f53
	nop			;7f54
	nop			;7f55
	ld h,c			;7f56
	nop			;7f57
l7f58h:
	nop			;7f58
	nop			;7f59
	nop			;7f5a
	nop			;7f5b
	ld h,c			;7f5c
	nop			;7f5d
	nop			;7f5e
	nop			;7f5f
	nop			;7f60
	nop			;7f61
	jr l7f70h		;7f62
	ld l,e			;7f64
	ld bc,0016bh		;7f65
	ld (00304h),a		;7f68
	nop			;7f6b
	nop			;7f6c
	nop			;7f6d
	ld h,c			;7f6e
	nop			;7f6f
l7f70h:
	ld h,a			;7f70
	ld (bc),a		;7f71
	ld h,a			;7f72
	ld (bc),a		;7f73
	ld h,c			;7f74
	nop			;7f75
	nop			;7f76
	nop			;7f77
	nop			;7f78
	nop			;7f79
	ld a,(de)		;7f7a
	inc c			;7f7b
	nop			;7f7c
	nop			;7f7d
	nop			;7f7e
	nop			;7f7f
	ld (00304h),a		;7f80
	nop			;7f83
	nop			;7f84
	nop			;7f85
	ld h,c			;7f86
	nop			;7f87
	nop			;7f88
	nop			;7f89
	nop			;7f8a
	nop			;7f8b
	ld h,c			;7f8c
	nop			;7f8d
	ld bc,00000h		;7f8e
	nop			;7f91
	nop			;7f92
	nop			;7f93
	nop			;7f94
	nop			;7f95
	ld l,h			;7f96
	ld (bc),a		;7f97
	ld (00204h),a		;7f98
	nop			;7f9b
	nop			;7f9c
	nop			;7f9d
	nop			;7f9e
	nop			;7f9f
	nop			;7fa0
	nop			;7fa1
	ld l,h			;7fa2
	ld (bc),a		;7fa3
	ld h,c			;7fa4
	nop			;7fa5
	nop			;7fa6
	nop			;7fa7
	nop			;7fa8
	nop			;7fa9
	jr l7fb8h		;7faa
	nop			;7fac
	nop			;7fad
	ld l,h			;7fae
	ex af,af'		;7faf
	ld (00304h),a		;7fb0
	nop			;7fb3
	nop			;7fb4
	nop			;7fb5
	ld h,c			;7fb6
	nop			;7fb7
l7fb8h:
	nop			;7fb8
	nop			;7fb9
	ld h,d			;7fba
	ld b,061h		;7fbb
	nop			;7fbd
	nop			;7fbe
	nop			;7fbf
	ld (bc),a		;7fc0
	rrca			;7fc1
	jr l7fd0h		;7fc2
	ld h,003h		;7fc4
	ld h,003h		;7fc6
	ld (00105h),a		;7fc8
	nop			;7fcb
	nop			;7fcc
	nop			;7fcd
	ld h,c			;7fce
	nop			;7fcf
l7fd0h:
	ld h,d			;7fd0
	djnz l7fd3h		;7fd1
l7fd3h:
	nop			;7fd3
	ld h,c			;7fd4
	nop			;7fd5
	nop			;7fd6
	nop			;7fd7
	nop			;7fd8
	nop			;7fd9
	ld a,(de)		;7fda
	inc c			;7fdb
	ld l,c			;7fdc
	inc bc			;7fdd
	ld l,d			;7fde
	inc bc			;7fdf
	ld (00005h),a		;7fe0
	nop			;7fe3
	nop			;7fe4
	nop			;7fe5
	ld h,c			;7fe6
	nop			;7fe7
	nop			;7fe8
	nop			;7fe9
	nop			;7fea
	nop			;7feb
	ld h,c			;7fec
	nop			;7fed
	ld bc,00000h		;7fee
	nop			;7ff1
	nop			;7ff2
	nop			;7ff3
	inc h			;7ff4
	inc bc			;7ff5
	inc h			;7ff6
	inc bc			;7ff7
	ld (00205h),a		;7ff8
	nop			;7ffb
	nop			;7ffc
	nop			;7ffd
	nop			;7ffe
	nop			;7fff
