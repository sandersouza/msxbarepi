; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank21.asm /tmp/smanbow2_bank_21.bin

	org 04000h

	ld l,e			;4000
	ld bc,0016bh		;4001
	ld h,c			;4004
	nop			;4005
sub_4006h:
	nop			;4006
	nop			;4007
	dec b			;4008
	rrca			;4009
	jr l4018h		;400a
	ld h,003h		;400c
	ld h,003h		;400e
	ld (00105h),a		;4010
	nop			;4013
	nop			;4014
	nop			;4015
	ld h,c			;4016
	nop			;4017
l4018h:
	ld l,e			;4018
	ld bc,0016bh		;4019
	ld h,c			;401c
	nop			;401d
	nop			;401e
	nop			;401f
	nop			;4020
	nop			;4021
	jr l4030h		;4022
	nop			;4024
	nop			;4025
	nop			;4026
	nop			;4027
	ld (00305h),a		;4028
	nop			;402b
	nop			;402c
	nop			;402d
	ld h,c			;402e
	nop			;402f
l4030h:
	nop			;4030
	nop			;4031
	nop			;4032
	nop			;4033
	ld h,c			;4034
	nop			;4035
	nop			;4036
	nop			;4037
	nop			;4038
	nop			;4039
	ld a,(de)		;403a
	inc c			;403b
	inc h			;403c
	inc bc			;403d
	inc h			;403e
	inc bc			;403f
l4040h:
	ld (00305h),a		;4040
	nop			;4043
	nop			;4044
	nop			;4045
	ld h,c			;4046
	nop			;4047
	nop			;4048
	nop			;4049
	nop			;404a
	nop			;404b
	ld h,c			;404c
	nop			;404d
	ld bc,00900h		;404e
	rrca			;4051
	nop			;4052
	nop			;4053
	ld h,003h		;4054
	ld h,003h		;4056
	ld (00205h),a		;4058
	nop			;405b
	nop			;405c
	nop			;405d
	nop			;405e
	nop			;405f
	nop			;4060
	nop			;4061
	nop			;4062
	nop			;4063
	ld h,c			;4064
	nop			;4065
	nop			;4066
	nop			;4067
	nop			;4068
	nop			;4069
	jr l4078h		;406a
	nop			;406c
	nop			;406d
	nop			;406e
	nop			;406f
	ld (00305h),a		;4070
	nop			;4073
	nop			;4074
	nop			;4075
	ld h,c			;4076
	nop			;4077
l4078h:
	ld l,e			;4078
	ld bc,0016bh		;4079
	ld h,c			;407c
	nop			;407d
	nop			;407e
	nop			;407f
	ld (bc),a		;4080
	rrca			;4081
	jr l4090h		;4082
	nop			;4084
	nop			;4085
	nop			;4086
	nop			;4087
	ld (00106h),a		;4088
	nop			;408b
	nop			;408c
	nop			;408d
	ld h,c			;408e
	nop			;408f
l4090h:
	nop			;4090
	nop			;4091
	nop			;4092
	nop			;4093
	ld h,c			;4094
	nop			;4095
	nop			;4096
	nop			;4097
	nop			;4098
	nop			;4099
	ld a,(de)		;409a
	inc c			;409b
	ld h,003h		;409c
	ld h,003h		;409e
	ld (00006h),a		;40a0
	nop			;40a3
	nop			;40a4
	nop			;40a5
	ld h,c			;40a6
	nop			;40a7
	nop			;40a8
	nop			;40a9
	nop			;40aa
	nop			;40ab
	ld h,c			;40ac
	nop			;40ad
	ld bc,00000h		;40ae
	nop			;40b1
	nop			;40b2
	nop			;40b3
	jr nc,$+5		;40b4
	jr nc,l40bbh		;40b6
	ld (00206h),a		;40b8
l40bbh:
	nop			;40bb
	nop			;40bc
	nop			;40bd
	nop			;40be
	nop			;40bf
	nop			;40c0
	nop			;40c1
	nop			;40c2
	nop			;40c3
	ld h,c			;40c4
	nop			;40c5
	nop			;40c6
	nop			;40c7
	dec b			;40c8
	rrca			;40c9
	jr l40d8h		;40ca
	nop			;40cc
	nop			;40cd
	nop			;40ce
	nop			;40cf
	ld (00106h),a		;40d0
	nop			;40d3
	nop			;40d4
	nop			;40d5
	ld h,c			;40d6
	nop			;40d7
l40d8h:
	ld l,e			;40d8
	ld bc,0016bh		;40d9
	ld h,c			;40dc
	nop			;40dd
	nop			;40de
	nop			;40df
	nop			;40e0
	nop			;40e1
	jr l40f0h		;40e2
	nop			;40e4
	nop			;40e5
	nop			;40e6
	nop			;40e7
	ld (00306h),a		;40e8
	nop			;40eb
	nop			;40ec
	nop			;40ed
	ld h,c			;40ee
	nop			;40ef
l40f0h:
	nop			;40f0
	nop			;40f1
	nop			;40f2
	nop			;40f3
	ld h,c			;40f4
	nop			;40f5
	nop			;40f6
	nop			;40f7
	nop			;40f8
	nop			;40f9
	ld a,(de)		;40fa
	inc c			;40fb
	dec hl			;40fc
	inc bc			;40fd
	dec hl			;40fe
	inc bc			;40ff
	ld (00306h),a		;4100
	nop			;4103
	nop			;4104
	nop			;4105
	ld h,c			;4106
	nop			;4107
	nop			;4108
	nop			;4109
	nop			;410a
	nop			;410b
	ld h,c			;410c
	nop			;410d
	ld bc,00900h		;410e
	rrca			;4111
	nop			;4112
	nop			;4113
	nop			;4114
	nop			;4115
	nop			;4116
	nop			;4117
	ld (00206h),a		;4118
	nop			;411b
	nop			;411c
	nop			;411d
	nop			;411e
	nop			;411f
	nop			;4120
	nop			;4121
	nop			;4122
	nop			;4123
	ld h,c			;4124
	nop			;4125
	nop			;4126
	nop			;4127
	nop			;4128
	nop			;4129
	jr l4138h		;412a
	ld l,e			;412c
	ld bc,0016bh		;412d
	ld (00306h),a		;4130
	nop			;4133
	nop			;4134
	nop			;4135
	ld h,c			;4136
	nop			;4137
l4138h:
	nop			;4138
	nop			;4139
	nop			;413a
	nop			;413b
	ld h,c			;413c
	nop			;413d
	nop			;413e
	nop			;413f
	inc b			;4140
	rrca			;4141
	inc e			;4142
	inc c			;4143
	jr z,$+5		;4144
	jr z,l414bh		;4146
	ld (00107h),a		;4148
l414bh:
	nop			;414b
	nop			;414c
	nop			;414d
	ld h,c			;414e
	nop			;414f
	ld l,e			;4150
	ld bc,0016bh		;4151
	ld h,c			;4154
	nop			;4155
	nop			;4156
	nop			;4157
	nop			;4158
	nop			;4159
	inc e			;415a
	inc c			;415b
	ld h,a			;415c
	ld (bc),a		;415d
	ld h,a			;415e
	ld (bc),a		;415f
	ld (00007h),a		;4160
	nop			;4163
	nop			;4164
	nop			;4165
	ld h,c			;4166
	nop			;4167
	nop			;4168
	nop			;4169
	nop			;416a
	nop			;416b
	ld h,c			;416c
	nop			;416d
	ld bc,00000h		;416e
	nop			;4171
	nop			;4172
	nop			;4173
	nop			;4174
	nop			;4175
	nop			;4176
	nop			;4177
	ld (00207h),a		;4178
	nop			;417b
	nop			;417c
	nop			;417d
	nop			;417e
	nop			;417f
	ld l,h			;4180
	ld bc,0016ch		;4181
	ld h,c			;4184
	nop			;4185
	nop			;4186
	nop			;4187
	dec b			;4188
	rrca			;4189
	dec e			;418a
	inc c			;418b
	ld l,h			;418c
	ld bc,0016ch		;418d
	ld (00107h),a		;4190
	nop			;4193
	nop			;4194
	nop			;4195
	ld h,c			;4196
	nop			;4197
	nop			;4198
	nop			;4199
	nop			;419a
	nop			;419b
	ld h,c			;419c
	nop			;419d
	nop			;419e
	nop			;419f
	nop			;41a0
	nop			;41a1
	dec e			;41a2
	inc c			;41a3
	ld hl,02103h		;41a4
l41a7h:
	inc bc			;41a7
	ld (00307h),a		;41a8
	nop			;41ab
	nop			;41ac
	nop			;41ad
	ld h,c			;41ae
	nop			;41af
	nop			;41b0
	nop			;41b1
	nop			;41b2
	nop			;41b3
	ld h,c			;41b4
	nop			;41b5
	nop			;41b6
	nop			;41b7
	nop			;41b8
	nop			;41b9
	dec e			;41ba
	inc c			;41bb
	nop			;41bc
	nop			;41bd
	nop			;41be
	nop			;41bf
	ld (00307h),a		;41c0
	nop			;41c3
	nop			;41c4
	nop			;41c5
	ld h,c			;41c6
	nop			;41c7
	nop			;41c8
	nop			;41c9
	nop			;41ca
	nop			;41cb
	ld h,c			;41cc
	nop			;41cd
	ld bc,00400h		;41ce
	rrca			;41d1
	nop			;41d2
	nop			;41d3
	nop			;41d4
	nop			;41d5
	nop			;41d6
	nop			;41d7
	ld (00207h),a		;41d8
	nop			;41db
	nop			;41dc
	nop			;41dd
	nop			;41de
	nop			;41df
	ld l,e			;41e0
	ld bc,0016bh		;41e1
	ld h,c			;41e4
	nop			;41e5
	nop			;41e6
	nop			;41e7
	nop			;41e8
	nop			;41e9
	inc e			;41ea
	inc c			;41eb
	nop			;41ec
	nop			;41ed
	nop			;41ee
	nop			;41ef
	ld (00307h),a		;41f0
	nop			;41f3
	nop			;41f4
	nop			;41f5
	ld h,c			;41f6
	nop			;41f7
	ld l,e			;41f8
	ld bc,0016bh		;41f9
	ld h,c			;41fc
	nop			;41fd
	nop			;41fe
	nop			;41ff
	add hl,bc		;4200
	inc bc			;4201
	add hl,bc		;4202
	nop			;4203
	nop			;4204
	nop			;4205
	nop			;4206
	ld (bc),a		;4207
	nop			;4208
	nop			;4209
	nop			;420a
	nop			;420b
	nop			;420c
	nop			;420d
	nop			;420e
	nop			;420f
	nop			;4210
	nop			;4211
	nop			;4212
	nop			;4213
	nop			;4214
	inc bc			;4215
	add hl,bc		;4216
	inc bc			;4217
	add hl,bc		;4218
	inc bc			;4219
	add hl,bc		;421a
	nop			;421b
	nop			;421c
	nop			;421d
	nop			;421e
	inc bc			;421f
	nop			;4220
	ld h,c			;4221
	nop			;4222
	ld h,c			;4223
	nop			;4224
	ld h,c			;4225
	nop			;4226
	nop			;4227
	nop			;4228
	nop			;4229
	nop			;422a
	inc bc			;422b
	nop			;422c
	inc bc			;422d
	add hl,bc		;422e
	inc bc			;422f
	add hl,bc		;4230
	inc bc			;4231
	add hl,bc		;4232
	nop			;4233
	nop			;4234
	nop			;4235
	nop			;4236
	ld (bc),a		;4237
	jr l423ah		;4238
l423ah:
	nop			;423a
	nop			;423b
	nop			;423c
	nop			;423d
	nop			;423e
	nop			;423f
	nop			;4240
	nop			;4241
	nop			;4242
	inc bc			;4243
	rla			;4244
	inc bc			;4245
	add hl,bc		;4246
	inc bc			;4247
	add hl,bc		;4248
	inc bc			;4249
	add hl,bc		;424a
	nop			;424b
	nop			;424c
	nop			;424d
	nop			;424e
	inc bc			;424f
	nop			;4250
	ld h,c			;4251
	nop			;4252
	ld h,c			;4253
	nop			;4254
	ld h,c			;4255
	nop			;4256
	nop			;4257
	nop			;4258
	nop			;4259
	nop			;425a
	nop			;425b
	ld a,(de)		;425c
	nop			;425d
	nop			;425e
	nop			;425f
	nop			;4260
	nop			;4261
	nop			;4262
	nop			;4263
	nop			;4264
	nop			;4265
l4266h:
	nop			;4266
	nop			;4267
	nop			;4268
	nop			;4269
	nop			;426a
	nop			;426b
	nop			;426c
	nop			;426d
	nop			;426e
	nop			;426f
	nop			;4270
	nop			;4271
	nop			;4272
	nop			;4273
	nop			;4274
	ld b,b			;4275
	sub d			;4276
	inc bc			;4277
	add hl,bc		;4278
	inc bc			;4279
	add hl,bc		;427a
	inc bc			;427b
	add hl,bc		;427c
	nop			;427d
	nop			;427e
	nop			;427f
	nop			;4280
	ld bc,00017h		;4281
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
	nop			;4290
	nop			;4291
	nop			;4292
	nop			;4293
	nop			;4294
	nop			;4295
	nop			;4296
	nop			;4297
	nop			;4298
	inc bc			;4299
	jr l4305h		;429a
	ld b,b			;429c
	ld l,c			;429d
	ld b,d			;429e
	ld l,c			;429f
	ld b,h			;42a0
	nop			;42a1
	nop			;42a2
	nop			;42a3
	nop			;42a4
	inc bc			;42a5
	rla			;42a6
	inc bc			;42a7
	add hl,bc		;42a8
	inc bc			;42a9
	add hl,bc		;42aa
	inc bc			;42ab
	add hl,bc		;42ac
	nop			;42ad
	nop			;42ae
	nop			;42af
	nop			;42b0
	ld (bc),a		;42b1
	nop			;42b2
	ld h,c			;42b3
	nop			;42b4
	ld h,c			;42b5
	nop			;42b6
	ld h,c			;42b7
	nop			;42b8
	nop			;42b9
	nop			;42ba
	nop			;42bb
	nop			;42bc
	nop			;42bd
	nop			;42be
	inc bc			;42bf
	nop			;42c0
	nop			;42c1
	nop			;42c2
	nop			;42c3
	nop			;42c4
	nop			;42c5
	nop			;42c6
	nop			;42c7
	nop			;42c8
	nop			;42c9
	ld (bc),a		;42ca
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
	nop			;42d8
	nop			;42d9
	nop			;42da
	nop			;42db
	nop			;42dc
	nop			;42dd
	nop			;42de
	nop			;42df
	nop			;42e0
	nop			;42e1
	ld (bc),a		;42e2
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
	ld (bc),a		;42fa
	nop			;42fb
	nop			;42fc
	nop			;42fd
	ld l,d			;42fe
	inc bc			;42ff
	nop			;4300
	nop			;4301
	nop			;4302
	nop			;4303
	ld l,c			;4304
l4305h:
	ld b,000h		;4305
	ld a,(de)		;4307
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
l436ah:
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
	ld (bc),a		;4380
	rrca			;4381
	ld a,(de)		;4382
	rrca			;4383
	ld (02603h),a		;4384
	inc bc			;4387
	ld (00108h),a		;4388
	nop			;438b
	nop			;438c
	nop			;438d
	ld h,c			;438e
	nop			;438f
	ld h,a			;4390
	ld bc,00167h		;4391
	ld h,c			;4394
	nop			;4395
	nop			;4396
	nop			;4397
	nop			;4398
	nop			;4399
	ld a,(de)		;439a
	rrca			;439b
	ld l,e			;439c
	ld bc,0016bh		;439d
	ld (00008h),a		;43a0
	nop			;43a3
	nop			;43a4
	nop			;43a5
	ld h,c			;43a6
	nop			;43a7
	nop			;43a8
	nop			;43a9
	nop			;43aa
	nop			;43ab
	ld h,c			;43ac
	nop			;43ad
	ld bc,00000h		;43ae
	nop			;43b1
	nop			;43b2
	nop			;43b3
	nop			;43b4
	nop			;43b5
	nop			;43b6
	nop			;43b7
	ld (00208h),a		;43b8
	nop			;43bb
	nop			;43bc
	nop			;43bd
	nop			;43be
	nop			;43bf
	nop			;43c0
	nop			;43c1
	nop			;43c2
	nop			;43c3
	ld h,c			;43c4
	nop			;43c5
	nop			;43c6
	nop			;43c7
	nop			;43c8
	nop			;43c9
	ld a,(de)		;43ca
	rrca			;43cb
	nop			;43cc
	nop			;43cd
	nop			;43ce
	nop			;43cf
	ld (00108h),a		;43d0
	ld d,000h		;43d3
	nop			;43d5
	ld h,c			;43d6
	nop			;43d7
	nop			;43d8
	nop			;43d9
	nop			;43da
	nop			;43db
	ld h,c			;43dc
	nop			;43dd
	nop			;43de
	dec d			;43df
	nop			;43e0
	nop			;43e1
	ld a,(de)		;43e2
	rrca			;43e3
	ld l,e			;43e4
	ld bc,0016bh		;43e5
	ld (00808h),a		;43e8
	inc d			;43eb
	nop			;43ec
	nop			;43ed
	ld h,c			;43ee
	nop			;43ef
	ld h,a			;43f0
	ld (bc),a		;43f1
	ld h,a			;43f2
	ld (bc),a		;43f3
	ld h,c			;43f4
	nop			;43f5
	nop			;43f6
	inc de			;43f7
	nop			;43f8
	nop			;43f9
	ld a,(de)		;43fa
	rrca			;43fb
	nop			;43fc
	nop			;43fd
	nop			;43fe
	nop			;43ff
	ld (00808h),a		;4400
	ld (de),a		;4403
	nop			;4404
	nop			;4405
sub_4406h:
	ld h,c			;4406
l4407h:
	nop			;4407
	nop			;4408
	nop			;4409
	nop			;440a
	nop			;440b
	ld h,c			;440c
	nop			;440d
	nop			;440e
	ld de,00000h		;440f
	ld a,(de)		;4412
	dec bc			;4413
	nop			;4414
	nop			;4415
	nop			;4416
	nop			;4417
	ld (00808h),a		;4418
	djnz l441dh		;441b
l441dh:
	nop			;441d
	ld h,c			;441e
	nop			;441f
	ld l,h			;4420
	ld bc,00000h		;4421
	ld h,c			;4424
	nop			;4425
	nop			;4426
	dec c			;4427
	ld l,h			;4428
	ld bc,0051ah		;4429
	ld l,h			;442c
	ld bc,0016ch		;442d
	ld (00208h),a		;4430
	dec bc			;4433
	ld h,d			;4434
	nop			;4435
	ld h,d			;4436
	nop			;4437
	ld h,d			;4438
	nop			;4439
	ld h,d			;443a
	ld b,061h		;443b
	nop			;443d
	nop			;443e
	add hl,bc		;443f
l4440h:
	nop			;4440
	ld e,h			;4441
	inc (hl)		;4442
	nop			;4443
	nop			;4444
	ld (bc),a		;4445
	jr c,$+36		;4446
	ld h,e			;4448
	defb 0edh ;next byte illegal after ed	;4449
	rst 20h			;444a
	jp po,00e02h		;444b
	inc bc			;444e
	ld (bc),a		;444f
	inc bc			;4450
	ld (01205h),hl		;4451
	ld bc,00307h		;4454
	ex af,af'		;4457
	call po,00107h		;4458
	in h,(c)		;445b
	add a,a			;445d
	rlca			;445e
	ld bc,00664h		;445f
	inc a			;4462
	rlca			;4463
	ld b,012h		;4464
	ld c,(hl)		;4466
l4467h:
	ld h,a			;4467
	ld (bc),a		;4468
	ld de,l6750h		;4469
	ld a,(bc)		;446c
	inc b			;446d
	ld bc,l6c24h		;446e
	ld b,00eh		;4471
	jr nc,l447bh		;4473
	ld e,h			;4475
	inc b			;4476
	ld c,00dh		;4477
	ld h,h			;4479
	dec bc			;447a
l447bh:
	ex af,af'		;447b
	ld b,(hl)		;447c
	ld (bc),a		;447d
	dec b			;447e
	inc b			;447f
	ld b,005h		;4480
	and l			;4482
	and (hl)		;4483
	rra			;4484
	jp z,0140eh		;4485
	inc e			;4488
	di			;4489
	dec de			;448a
	inc hl			;448b
	add a,0a5h		;448c
	ld d,007h		;448e
	inc bc			;4490
	ld hl,02618h		;4491
	inc hl			;4494
	dec b			;4495
	add a,e			;4496
	ld d,a			;4497
	ld b,(hl)		;4498
	inc b			;4499
	dec b			;449a
	ld b,h			;449b
	ld c,h			;449c
	ld h,l			;449d
	ld hl,022edh		;449e
	jr l4467h		;44a1
	ld d,025h		;44a3
	ld b,(hl)		;44a5
	ld b,00bh		;44a6
	rlca			;44a8
	ld h,017h		;44a9
	or e			;44ab
	daa			;44ac
	scf			;44ad
	ld a,d			;44ae
	djnz l44d4h		;44af
	ld a,b			;44b1
	ld (bc),a		;44b2
	defb 0edh ;next byte illegal after ed	;44b3
	dec b			;44b4
	xor b			;44b5
	ld h,h			;44b6
	ld c,004h		;44b7
	inc bc			;44b9
	rlca			;44ba
	xor h			;44bb
	ld (de),a		;44bc
	rlca			;44bd
	dec c			;44be
	ex (sp),hl		;44bf
	ld e,00fh		;44c0
	sub l			;44c2
	defb 0edh ;next byte illegal after ed	;44c3
	ex af,af'		;44c4
	ld (hl),048h		;44c5
	ex af,af'		;44c7
	and h			;44c8
	sub (hl)		;44c9
	push bc			;44ca
	rlca			;44cb
	ld l,(hl)		;44cc
	ld b,l			;44cd
	ld l,(hl)		;44ce
	dec de			;44cf
	dec b			;44d0
	scf			;44d1
	and h			;44d2
	inc c			;44d3
l44d4h:
	ld bc,02311h		;44d4
	xor e			;44d7
	or h			;44d8
	ld c,077h		;44d9
	dec b			;44db
	adc a,b			;44dc
	ld (hl),h		;44dd
	dec b			;44de
	rlca			;44df
	add hl,hl		;44e0
	ld (bc),a		;44e1
	daa			;44e2
	defb 0edh ;next byte illegal after ed	;44e3
	ld c,024h		;44e4
	inc bc			;44e6
	and c			;44e7
	defb 0edh ;next byte illegal after ed	;44e8
	rlca			;44e9
	ld b,l			;44ea
	ld b,006h		;44eb
	ld de,02506h		;44ed
	inc bc			;44f0
	ld h,0edh		;44f1
	inc b			;44f3
	ld hl,(00ba6h)		;44f4
	inc h			;44f7
	inc c			;44f8
	and (hl)		;44f9
	add hl,bc		;44fa
	dec c			;44fb
	dec h			;44fc
	inc bc			;44fd
	ex (sp),hl		;44fe
	ex af,af'		;44ff
	and 011h		;4500
	ld b,b			;4502
	dec b			;4503
	neg			;4504
	and a			;4506
	inc bc			;4507
l4508h:
	nop			;4508
	and e			;4509
	ld h,a			;450a
	rlca			;450b
	add a,024h		;450c
	dec c			;450e
	inc h			;450f
	ld b,b			;4510
	rst 20h			;4511
	jr c,l4516h		;4512
	add a,c			;4514
	rrca			;4515
l4516h:
	inc h			;4516
	ld bc,000e7h		;4517
	defb 0edh ;next byte illegal after ed	;451a
	dec b			;451b
	ld l,e			;451c
	add hl,bc		;451d
	rst 20h			;451e
	rrca			;451f
	ld b,(hl)		;4520
	inc bc			;4521
	dec b			;4522
	inc bc			;4523
	ld de,00292h		;4524
	inc h			;4527
	ld b,000h		;4528
	ld h,a			;452a
	ld c,c			;452b
l452ch:
	inc b			;452c
	dec a			;452d
	and (hl)		;452e
	dec l			;452f
	add a,(hl)		;4530
l4531h:
	inc sp			;4531
	ld d,(hl)		;4532
	ld c,02eh		;4533
	ld de,0ed29h		;4535
	rra			;4538
	ld h,002h		;4539
	inc h			;453b
	adc a,b			;453c
	call sub_6776h		;453d
	ld h,004h		;4540
	inc bc			;4542
	add hl,bc		;4543
	call pe,00847h		;4544
	sbc a,(hl)		;4547
	ld d,c			;4548
	and c			;4549
	nop			;454a
	rlca			;454b
	ex af,af'		;454c
	ex af,af'		;454d
l454eh:
	add hl,bc		;454e
	ld l,c			;454f
	jp pe,020ech		;4550
	ex af,af'		;4553
	ld b,055h		;4554
	inc b			;4556
	jp pe,0ec05h		;4557
	sub c			;455a
	djnz l45a5h		;455b
	sub a			;455d
	ld (bc),a		;455e
	jp pe,0ec01h		;455f
	jr nz,l4567h		;4562
	sbc a,b			;4564
	ld c,d			;4565
	dec d			;4566
l4567h:
	inc d			;4567
	jr nc,l456bh		;4568
	ld (bc),a		;456a
l456bh:
	ld a,a			;456b
	jp pe,02007h		;456c
	call pe,02b28h		;456f
	dec h			;4572
	inc b			;4573
	ld c,d			;4574
	ld b,008h		;4575
	call pe,02807h		;4577
	ld c,e			;457a
	add hl,bc		;457b
	ld a,(bc)		;457c
	dec b			;457d
	ld (bc),a		;457e
	add hl,bc		;457f
	inc b			;4580
	ex af,af'		;4581
	nop			;4582
	ld h,0ech		;4583
	sub c			;4585
	jr z,$+68		;4586
	add hl,bc		;4588
	ex af,af'		;4589
	jr z,l45f6h		;458a
	ld c,c			;458c
	ld b,c			;458d
	add hl,hl		;458e
	ld c,b			;458f
	inc b			;4590
	ld (bc),a		;4591
	ld (bc),a		;4592
	ld h,009h		;4593
	ld a,(bc)		;4595
	ex af,af'		;4596
	ld l,e			;4597
	inc bc			;4598
	djnz $-18		;4599
	add hl,hl		;459b
	ld a,(bc)		;459c
	djnz l45a4h		;459d
	jr z,l45a4h		;459f
	jp nz,0270eh		;45a1
l45a4h:
	ld c,e			;45a4
l45a5h:
	jr c,l4531h		;45a5
	inc b			;45a7
	add hl,bc		;45a8
	ld l,b			;45a9
	ld c,l			;45aa
	jr nz,l45efh		;45ab
	add hl,hl		;45ad
	ld d,04ah		;45ae
	add hl,bc		;45b0
	jr z,l45cbh		;45b1
	inc h			;45b3
	ex af,af'		;45b4
	ld (bc),a		;45b5
	jr nz,l45d8h		;45b6
	ld hl,0808bh		;45b8
	ld b,e			;45bb
	ld c,b			;45bc
	inc c			;45bd
	ld hl,(0ab04h)		;45be
	rlca			;45c1
	nop			;45c2
	add hl,hl		;45c3
	ld bc,02a06h		;45c4
	daa			;45c7
	ld l,e			;45c8
	jr z,$-18		;45c9
l45cbh:
	sub (hl)		;45cb
	ld c,b			;45cc
	ld hl,(00c79h)		;45cd
	ld de,00428h		;45d0
	adc a,h			;45d3
	ld (bc),a		;45d4
	add hl,hl		;45d5
	add hl,bc		;45d6
	ld l,d			;45d7
l45d8h:
	ld a,(bc)		;45d8
l45d9h:
	add hl,hl		;45d9
	dec b			;45da
	and c			;45db
	ld l,(hl)		;45dc
	ld h,b			;45dd
	inc bc			;45de
	daa			;45df
	ld b,0a2h		;45e0
	inc d			;45e2
	ld (hl),04ah		;45e3
	add a,b			;45e5
	dec l			;45e6
	call pe,04949h		;45e7
	ld a,(bc)		;45ea
	ld c,b			;45eb
	ld l,d			;45ec
	and h			;45ed
	ld l,d			;45ee
l45efh:
	ld e,h			;45ef
	rlca			;45f0
	ld a,049h		;45f1
	ld b,d			;45f3
	rlca			;45f4
	add hl,de		;45f5
l45f6h:
	ex af,af'		;45f6
	ld b,a			;45f7
	adc a,c			;45f8
	inc c			;45f9
	sub b			;45fa
	call nc,0882ah		;45fb
	inc b			;45fe
	dec bc			;45ff
	ld c,d			;4600
	call pe,02927h		;4601
	add a,e			;4604
l4605h:
	jp z,03a00h		;4605
	ld h,l			;4608
	adc a,d			;4609
sub_460ah:
	xor d			;460a
	sub b			;460b
	ld hl,(02d3dh)		;460c
	and e			;460f
	ld (hl),h		;4610
	xor e			;4611
	nop			;4612
	ld l,c			;4613
	add hl,bc		;4614
	adc a,d			;4615
	ex af,af'		;4616
	call z,04546h		;4617
	add hl,bc		;461a
	inc h			;461b
	daa			;461c
	daa			;461d
	inc bc			;461e
	sub b			;461f
	inc (hl)		;4620
	or h			;4621
	ret nc			;4622
	ld c,h			;4623
	ld b,(hl)		;4624
	rlca			;4625
	ld (bc),a		;4626
	sub b			;4627
	jp z,02120h		;4628
	ld b,h			;462b
	defb 0edh ;next byte illegal after ed	;462c
	sub 001h		;462d
	sbc a,b			;462f
	rst 20h			;4630
	ld c,b			;4631
	daa			;4632
	sub h			;4633
	inc bc			;4634
	ex af,af'		;4635
	pop bc			;4636
	sub c			;4637
	ei			;4638
	ld (0e803h),hl		;4639
	ld c,(hl)		;463c
	dec b			;463d
	and d			;463e
	out (020h),a		;463f
	ret nc			;4641
	ld b,l			;4642
	call nc,014eah		;4643
	jp z,0f693h		;4646
	inc d			;4649
	inc b			;464a
	ld hl,08addh		;464b
	dec b			;464e
	ld d,h			;464f
	ret z			;4650
	ld hl,(0cd03h)		;4651
	inc h			;4654
	nop			;4655
	ret z			;4656
	call nc,0f137h		;4657
	ld d,e			;465a
	and l			;465b
	daa			;465c
	ld h,a			;465d
	or c			;465e
	jr z,$-123		;465f
	ld b,l			;4661
	dec h			;4662
sub_4663h:
	xor h			;4663
	ret po			;4664
	ld c,b			;4665
	dec h			;4666
	xor d			;4667
	cpl			;4668
	ld (hl),e		;4669
	inc c			;466a
	ld d,a			;466b
	ld c,l			;466c
	ld h,0e9h		;466d
	sbc a,c			;466f
	ld a,(0a402h)		;4670
	inc h			;4673
	scf			;4674
	ld (bc),a		;4675
	call nc,00e96h		;4676
	ld c,l			;4679
	ld sp,00407h		;467a
	defb 0edh ;next byte illegal after ed	;467d
	ld l,h			;467e
	ld a,(bc)		;467f
	ld hl,00004h		;4680
	ld c,h			;4683
	ld a,(de)		;4684
	add hl,bc		;4685
	daa			;4686
	dec h			;4687
	ld c,b			;4688
	ld h,h			;4689
l468ah:
	xor 0a9h		;468a
	xor d			;468c
	ld (de),a		;468d
	dec b			;468e
	jr c,l46d8h		;468f
	jp p,02591h		;4691
	cp 028h			;4694
	ex af,af'		;4696
	ld d,l			;4697
	ld h,a			;4698
	add hl,hl		;4699
	ld (hl),a		;469a
	ret nc			;469b
	dec h			;469c
l469dh:
	ret			;469d
	ld h,h			;469e
	sbc a,l			;469f
	ld c,d			;46a0
	ld b,a			;46a1
	adc a,c			;46a2
	ld b,l			;46a3
	inc b			;46a4
	or a			;46a5
	inc h			;46a6
	adc a,a			;46a7
	ld h,l			;46a8
	inc d			;46a9
	sub 035h		;46aa
	inc d			;46ac
	or (hl)			;46ad
	inc (hl)		;46ae
	call po,0ed88h		;46af
	add hl,sp		;46b2
	ld b,a			;46b3
	dec h			;46b4
	or c			;46b5
	ld (hl),l		;46b6
	ld d,l			;46b7
	ld bc,l520bh		;46b8
	jp nz,l48b2h		;46bb
	ld e,b			;46be
	ret po			;46bf
	adc a,h			;46c0
	ld (hl),l		;46c1
	ld d,l			;46c2
	ld b,01dh		;46c3
	jr z,$+77		;46c5
	inc bc			;46c7
	ld h,l			;46c8
	ld h,a			;46c9
	ld e,l			;46ca
	scf			;46cb
	sub d			;46cc
	dec b			;46cd
	rlca			;46ce
	ld (bc),a		;46cf
	dec b			;46d0
	ld h,b			;46d1
	ld (bc),a		;46d2
	ld b,b			;46d3
	dec b			;46d4
	inc hl			;46d5
	ld (hl),l		;46d6
	sub b			;46d7
l46d8h:
	ld (de),a		;46d8
	jr z,l4730h		;46d9
	ld c,l			;46db
	daa			;46dc
	call nz,015d2h		;46dd
	dec bc			;46e0
	ld (hl),b		;46e1
	ld b,l			;46e2
	add a,c			;46e3
	and l			;46e4
	ld d,c			;46e5
	nop			;46e6
sub_46e7h:
	ld c,b			;46e7
	or c			;46e8
	ld d,h			;46e9
	inc c			;46ea
	add hl,bc		;46eb
	and d			;46ec
	ld (hl),e		;46ed
	xor l			;46ee
	xor d			;46ef
	ld c,d			;46f0
	inc (hl)		;46f1
	dec a			;46f2
	xor a			;46f3
	ld l,c			;46f4
	sub d			;46f5
	ld b,h			;46f6
	daa			;46f7
	ld d,c			;46f8
	ld h,0dbh		;46f9
	dec bc			;46fb
	sub h			;46fc
	ld c,d			;46fd
	dec c			;46fe
	cp b			;46ff
	ld hl,(0322fh)		;4700
	ld h,h			;4703
	ld b,a			;4704
	ld b,a			;4705
	sub 0a4h		;4706
	xor e			;4708
	ld h,c			;4709
	ld (bc),a		;470a
	dec h			;470b
	cp c			;470c
	ld (de),a		;470d
	ld l,b			;470e
	sbc a,b			;470f
	ld hl,(0a2a9h)		;4710
	add a,h			;4713
	ld d,l			;4714
	ex af,af'		;4715
	jp (hl)			;4716
	ld c,a			;4717
	ld d,l			;4718
	ld (bc),a		;4719
	ret p			;471a
	ld d,l			;471b
	dec b			;471c
	ld b,(hl)		;471d
	ld c,041h		;471e
	ld l,c			;4720
	ld a,b			;4721
	ld b,045h		;4722
	dec c			;4724
	ld b,l			;4725
	sub b			;4726
	cp a			;4727
	dec de			;4728
	sbc a,a			;4729
	inc h			;472a
	or b			;472b
	ld d,h			;472c
	inc bc			;472d
	xor l			;472e
	ld d,c			;472f
l4730h:
	xor b			;4730
	ld c,d			;4731
	dec hl			;4732
	ex af,af'		;4733
	call nc,0035ah		;4734
	and (hl)		;4737
	dec hl			;4738
	sbc a,l			;4739
l473ah:
	call z,09279h		;473a
	or l			;473d
	call c,0aa2bh		;473e
	ld c,b			;4741
	rst 30h			;4742
	sub h			;4743
	ld h,(hl)		;4744
	ld de,0a4c2h		;4745
	and l			;4748
	ld h,d			;4749
	inc hl			;474a
	adc a,b			;474b
	xor c			;474c
	jr nc,l47b5h		;474d
	cp 012h			;474f
	defb 0edh ;next byte illegal after ed	;4751
	call nc,0e989h		;4752
	ld b,d			;4755
	jr nz,l4798h		;4756
	sbc a,a			;4758
	ld d,d			;4759
	xor h			;475a
	jp nc,092e7h		;475b
	sub b			;475e
	or (hl)			;475f
	ret z			;4760
	add hl,hl		;4761
	ret m			;4762
	ld c,c			;4763
	or (hl)			;4764
	ld d,d			;4765
	nop			;4766
	ld b,l			;4767
	adc a,e			;4768
	jp (hl)			;4769
	sbc a,(hl)		;476a
	jp nz,0ed28h		;476b
	cp c			;476e
	ld d,d			;476f
	add a,a			;4770
	ld (05927h),a		;4771
	nop			;4774
	ex af,af'		;4775
	rla			;4776
	adc a,b			;4777
	ld e,c			;4778
	ld e,(hl)		;4779
	xor e			;477a
	daa			;477b
	ld a,h			;477c
	ld e,d			;477d
	inc h			;477e
	and e			;477f
	sbc a,d			;4780
	push bc			;4781
	ret c			;4782
	dec h			;4783
	ld b,a			;4784
	ld l,e			;4785
	call nz,01456h		;4786
	ld d,(hl)		;4789
	ld a,c			;478a
	dec de			;478b
	ld b,l			;478c
	ld d,d			;478d
	ld b,b			;478e
	ld (de),a		;478f
	inc bc			;4790
	xor (hl)		;4791
	exx			;4792
	adc a,d			;4793
	cp d			;4794
	out (0d9h),a		;4795
	ld c,(hl)		;4797
l4798h:
	inc bc			;4798
	push de			;4799
	ld b,l			;479a
	xor e			;479b
	rst 28h			;479c
	jr z,l47c6h		;479d
	dec h			;479f
	adc a,c			;47a0
	ld c,b			;47a1
	inc d			;47a2
	jr z,l473ah		;47a3
	sbc a,c			;47a5
	ld b,h			;47a6
	exx			;47a7
	jr z,l47eeh		;47a8
	cp d			;47aa
	defb 0ddh,03eh,018h ;illegal sequence	;47ab
	add a,b			;47ae
	ld h,b			;47af
	ld (09c04h),bc		;47b0
	ret			;47b4
l47b5h:
	adc a,h			;47b5
	call p,0d7b2h		;47b6
	or l			;47b9
	inc l			;47ba
	add a,e			;47bb
	ld b,h			;47bc
	dec b			;47bd
	add a,d			;47be
	ld b,c			;47bf
	inc h			;47c0
	inc hl			;47c1
	add a,0edh		;47c2
	xor e			;47c4
	dec de			;47c5
l47c6h:
	sub l			;47c6
	adc a,c			;47c7
	jr z,l47dbh		;47c8
	ld (0df24h),hl		;47ca
	adc a,b			;47cd
	ld b,(hl)		;47ce
	adc a,098h		;47cf
	dec h			;47d1
	dec bc			;47d2
	ld b,(hl)		;47d3
	inc d			;47d4
	ld h,045h		;47d5
	ld (bc),a		;47d7
	cpl			;47d8
	add a,l			;47d9
	add a,d			;47da
l47dbh:
	ld h,a			;47db
	defb 0edh ;next byte illegal after ed	;47dc
	inc hl			;47dd
	add a,029h		;47de
	ret			;47e0
	and (hl)		;47e1
	defb 0ddh,044h ;ld b,ixh	;47e2
	ld b,03fh		;47e4
	dec h			;47e6
l47e7h:
	ld (bc),a		;47e7
	push bc			;47e8
	ld e,b			;47e9
	add a,(hl)		;47ea
	adc a,d			;47eb
	dec b			;47ec
	ld a,d			;47ed
l47eeh:
	ld (hl),e		;47ee
	sub l			;47ef
	ld c,d			;47f0
	ld (08a5ch),hl		;47f1
	ld b,h			;47f4
	ld (0af27h),hl		;47f5
	and l			;47f8
	add hl,de		;47f9
	adc a,e			;47fa
	ld sp,00720h		;47fb
	jp m,0b05bh		;47fe
	ld e,c			;4801
	ei			;4802
	inc h			;4803
	dec b			;4804
	ex af,af'		;4805
	adc a,d			;4806
	and 0deh		;4807
	add hl,hl		;4809
	and e			;480a
	ld (0aacbh),hl		;480b
	exx			;480e
	add a,(hl)		;480f
	dec hl			;4810
	cp e			;4811
	ld de,0b409h		;4812
	inc d			;4815
	inc b			;4816
	add hl,hl		;4817
	sub b			;4818
	xor c			;4819
	adc a,h			;481a
	ret c			;481b
	ld c,b			;481c
	call pe,030a9h		;481d
	adc a,b			;4820
	dec h			;4821
	cp d			;4822
	ld l,d			;4823
	add a,c			;4824
	xor l			;4825
	ld bc,017a8h		;4826
l4829h:
	inc bc			;4829
	ret m			;482a
	sub b			;482b
	ld a,l			;482c
	add a,a			;482d
	daa			;482e
	ld l,b			;482f
	ld h,c			;4830
	jr z,l47e7h		;4831
	rst 20h			;4833
	ld c,c			;4834
	jr c,$+38		;4835
	ld b,l			;4837
	ld c,l			;4838
	inc b			;4839
	defb 0fdh,0adh ;xor iyl	;483a
	inc c			;483c
	add a,l			;483d
	and e			;483e
	ld b,l			;483f
	sub c			;4840
	ld b,h			;4841
	nop			;4842
	cp b			;4843
	ld h,l			;4844
	or 0c4h			;4845
	dec h			;4847
	inc hl			;4848
	and a			;4849
	ret z			;484a
	ld b,a			;484b
	sub b			;484c
	and (hl)		;484d
	di			;484e
	ld b,(hl)		;484f
	xor b			;4850
	ei			;4851
	ld hl,(02967h)		;4852
	jp m,08b59h		;4855
	ret			;4858
	dec l			;4859
	ld bc,05503h		;485a
	rlca			;485d
	xor b			;485e
	sub h			;485f
	xor e			;4860
	sub l			;4861
	or h			;4862
	ld l,d			;4863
	sbc a,b			;4864
	adc a,0edh		;4865
	sbc a,b			;4867
	ld h,068h		;4868
	ret po			;486a
	adc a,c			;486b
	rlca			;486c
	call nc,08233h		;486d
	ld l,c			;4870
	ld l,(hl)		;4871
	call 027c9h		;4872
	jr nz,l488fh		;4875
	ld c,(hl)		;4877
	or a			;4878
	adc a,c			;4879
	ld b,040h		;487a
	ld b,b			;487c
	add a,c			;487d
	ret nz			;487e
	call sub_4b09h		;487f
	ld a,(bc)		;4882
	ld de,00a2bh		;4883
	ld a,(bc)		;4886
	sbc a,c			;4887
	rla			;4888
	ld hl,(0b208h)		;4889
	ld b,l			;488c
	xor (hl)		;488d
	ld d,d			;488e
l488fh:
	ld d,h			;488f
	rst 38h			;4890
	rlca			;4891
	sbc a,h			;4892
	adc a,e			;4893
	xor b			;4894
	ld sp,0ac0eh		;4895
	and d			;4898
	cp h			;4899
	and (hl)		;489a
	ld d,h			;489b
	xor l			;489c
	ld d,c			;489d
	jr nz,l48fch		;489e
	and h			;48a0
	add hl,de		;48a1
	inc c			;48a2
	jr z,l48f3h		;48a3
	ei			;48a5
	ld a,c			;48a6
	adc a,d			;48a7
	ld (de),a		;48a8
	daa			;48a9
	dec b			;48aa
	call nz,0010ah		;48ab
	ccf			;48ae
	adc a,b			;48af
	sub h			;48b0
	rst 18h			;48b1
l48b2h:
	adc a,h			;48b2
	cp l			;48b3
	or h			;48b4
	adc a,(hl)		;48b5
	ret			;48b6
	ld (hl),c		;48b7
	ld d,a			;48b8
	ld bc,02335h		;48b9
	ld b,d			;48bc
	add a,e			;48bd
	dec h			;48be
	dec de			;48bf
	ld bc,0d943h		;48c0
	add hl,de		;48c3
	inc d			;48c4
	add a,d			;48c5
	dec b			;48c6
	nop			;48c7
	ld (l6614h),hl		;48c8
	ld hl,0ce87h		;48cb
	sub c			;48ce
	sub c			;48cf
	inc b			;48d0
	and a			;48d1
	sub c			;48d2
	ld (09c45h),a		;48d3
	inc h			;48d6
	and 045h		;48d7
	di			;48d9
	adc a,c			;48da
	xor a			;48db
	ld b,l			;48dc
	cp 0b8h			;48dd
	inc bc			;48df
	ld h,045h		;48e0
	ld b,c			;48e2
	ld b,a			;48e3
	nop			;48e4
	add hl,de		;48e5
	ld b,(hl)		;48e6
	xor l			;48e7
	ld e,c			;48e8
	ld a,0fch		;48e9
	ld c,h			;48eb
	call nz,sub_4406h	;48ec
	ld (021afh),hl		;48ef
	add hl,bc		;48f2
l48f3h:
	rlca			;48f3
	ld (0ed68h),hl		;48f4
	ld (hl),d		;48f7
	rlca			;48f8
	ret m			;48f9
	dec (hl)		;48fa
	add hl,de		;48fb
l48fch:
	cp d			;48fc
	halt			;48fd
sub_48feh:
	ret			;48fe
	ex af,af'		;48ff
	ld c,l			;4900
	adc a,l			;4901
	add a,l			;4902
	jp (hl)			;4903
	call pe,00b67h		;4904
	cp a			;4907
	ld b,d			;4908
	xor h			;4909
	sub a			;490a
	adc a,b			;490b
	add a,c			;490c
	add a,c			;490d
	add hl,bc		;490e
	dec hl			;490f
	ld hl,(00c8dh)		;4910
	or e			;4913
	inc d			;4914
	add a,c			;4915
	add a,c			;4916
	ld hl,(00b0ch)		;4917
	dec b			;491a
	ret po			;491b
	ld (0bc00h),hl		;491c
	jr nz,l492ah		;491f
	dec bc			;4921
	ex af,af'		;4922
	adc a,d			;4923
	inc b			;4924
	ld a,(bc)		;4925
	ld b,02bh		;4926
	jr z,$+46		;4928
l492ah:
	sub a			;492a
	ld b,(hl)		;492b
	add hl,hl		;492c
	ld l,e			;492d
	cp e			;492e
	dec h			;492f
	ld c,e			;4930
	ld (hl),b		;4931
	ld hl,(0d74ch)		;4932
	or h			;4935
	cp c			;4936
	and h			;4937
	call po,0d9c4h		;4938
	ld h,d			;493b
	ex af,af'		;493c
	push hl			;493d
	ld c,c			;493e
	defb 0ddh,0aah,049h ;illegal sequence	;493f
	or d			;4942
	xor c			;4943
	ld l,l			;4944
	ld bc,02827h		;4945
	ld h,069h		;4948
	dec b			;494a
	ld b,a			;494b
	adc a,c			;494c
	ld d,h			;494d
	and b			;494e
	ld d,e			;494f
	or a			;4950
	ld b,(hl)		;4951
	and (hl)		;4952
	ld b,l			;4953
	ld d,a			;4954
	jr nz,$+34		;4955
	cp h			;4957
	and l			;4958
	rst 0			;4959
	and h			;495a
	and d			;495b
	jp z,0e001h		;495c
	inc l			;495f
	call z,sub_7aadh	;4960
	xor e			;4963
	ld (0a888h),hl		;4964
	add hl,sp		;4967
l4968h:
	jp pe,0b194h		;4968
	and h			;496b
	pop hl			;496c
	ld b,l			;496d
	daa			;496e
	sbc a,d			;496f
	add a,e			;4970
	inc (hl)		;4971
	cp l			;4972
	or c			;4973
	or e			;4974
	ld l,c			;4975
	call pe,0ac79h		;4976
	dec d			;4979
	xor (hl)		;497a
	call pe,0e49dh		;497b
	adc a,h			;497e
l497fh:
	ld d,c			;497f
l4980h:
	call 09962h		;4980
	ld d,c			;4983
	ld l,(hl)		;4984
	sub (hl)		;4985
	ld b,(hl)		;4986
	defb 0ddh,0c5h,0d4h ;illegal sequence	;4987
sub_498ah:
	ld c,(hl)		;498a
	inc d			;498b
	ld bc,l4266h		;498c
	in a,(055h)		;498f
	ret m			;4991
	dec l			;4992
	dec h			;4993
	defb 0cbh,031h ;sli c	;4994
	sub e			;4996
	ld c,c			;4997
	ld b,a			;4998
	inc bc			;4999
	sbc a,h			;499a
	ld c,c			;499b
	in a,(0b1h)		;499c
	pop bc			;499e
	ld (0aa3eh),a		;499f
	sub 0e9h		;49a2
	jp nc,028f5h		;49a4
	sbc a,a			;49a7
	and a			;49a8
	jp c,05528h		;49a9
	call m,09fa4h		;49ac
	pop bc			;49af
	sub e			;49b0
	ld c,d			;49b1
	sbc a,d			;49b2
	jr l49beh		;49b3
	and c			;49b5
	xor (hl)		;49b6
	dec l			;49b7
	and d			;49b8
	ld d,090h		;49b9
	and e			;49bb
	ex af,af'		;49bc
	sbc a,c			;49bd
l49beh:
	ld c,c			;49be
	inc b			;49bf
	ld c,c			;49c0
	ld d,c			;49c1
	ld h,l			;49c2
	rst 28h			;49c3
	push af			;49c4
	sub h			;49c5
	ex af,af'		;49c6
	ld l,b			;49c7
	cp e			;49c8
	rst 30h			;49c9
	ret			;49ca
	ld l,c			;49cb
	add a,h			;49cc
	ld b,a			;49cd
	inc c			;49ce
	add a,c			;49cf
	ld h,l			;49d0
	ccf			;49d1
	ld d,c			;49d2
	add hl,hl		;49d3
	jr z,l497fh		;49d4
	inc l			;49d6
	ld a,c			;49d7
	ld h,a			;49d8
	and h			;49d9
	and a			;49da
	res 3,c			;49db
	ld l,c			;49dd
	inc l			;49de
	adc a,e			;49df
	adc a,h			;49e0
	add a,(hl)		;49e1
	cp l			;49e2
	adc a,h			;49e3
	sbc a,h			;49e4
	exx			;49e5
	and e			;49e6
	ld h,0f2h		;49e7
	ld hl,(0a997h)		;49e9
	ld l,a			;49ec
	ld h,c			;49ed
	ret pe			;49ee
	call c,0ccaeh		;49ef
	inc b			;49f2
	xor l			;49f3
	rra			;49f4
	ret nz			;49f5
	ld (0a707h),a		;49f6
	or a			;49f9
	push de			;49fa
	inc c			;49fb
	dec l			;49fc
	ld h,(hl)		;49fd
	ex af,af'		;49fe
	ld c,c			;49ff
	add a,084h		;4a00
	ld bc,08247h		;4a02
	ld c,b			;4a05
	inc h			;4a06
	cp c			;4a07
	xor b			;4a08
	adc a,08dh		;4a09
	ret z			;4a0b
	and e			;4a0c
	ld b,(hl)		;4a0d
	rst 28h			;4a0e
	ld l,a			;4a0f
	in a,(032h)		;4a10
	sbc a,b			;4a12
	ld l,l			;4a13
	defb 0edh ;next byte illegal after ed	;4a14
	add hl,hl		;4a15
	call nc,sub_4663h	;4a16
	ld l,(hl)		;4a19
	adc a,c			;4a1a
	ld a,(0e107h)		;4a1b
	ld e,h			;4a1e
	ld (0e726h),hl		;4a1f
	adc a,h			;4a22
	call 0cc94h		;4a23
	rlc h			;4a26
	xor (hl)		;4a28
	jp z,03f6ch		;4a29
	push bc			;4a2c
	ld b,e			;4a2d
	jr nz,$-70		;4a2e
	ld h,h			;4a30
	or a			;4a31
	adc a,c			;4a32
	nop			;4a33
	sub l			;4a34
	ld e,d			;4a35
	ld (hl),h		;4a36
	dec a			;4a37
	xor h			;4a38
	add a,l			;4a39
	sbc a,c			;4a3a
	jr l4a62h		;4a3b
	call c,024b9h		;4a3d
	sub e			;4a40
	inc d			;4a41
	jp p,05f58h		;4a42
	dec b			;4a45
	ld a,d			;4a46
	ld hl,0a4c6h		;4a47
	dec h			;4a4a
	jp 0cfd5h		;4a4b
	ld c,c			;4a4e
	ld b,0f5h		;4a4f
	ld l,e			;4a51
	cpl			;4a52
	defb 0edh ;next byte illegal after ed	;4a53
	ret z			;4a54
	ld l,c			;4a55
sub_4a56h:
	call p,0a925h		;4a56
	inc l			;4a59
	inc h			;4a5a
	add hl,de		;4a5b
	call nz,0fddah		;4a5c
	add a,d			;4a5f
	or e			;4a60
	jp (hl)			;4a61
l4a62h:
	jp z,093d7h		;4a62
	out (0d0h),a		;4a65
	ld e,b			;4a67
	and c			;4a68
	add a,(hl)		;4a69
	inc hl			;4a6a
	jp 09c49h		;4a6b
	ld d,a			;4a6e
	ld bc,(00c20h)		;4a6f
	call z,09ed2h		;4a73
	or 0a2h			;4a76
	ld (02b9ah),a		;4a78
	dec h			;4a7b
	in a,(0b2h)		;4a7c
	dec h			;4a7e
	ld c,(hl)		;4a7f
	add a,(hl)		;4a80
	or h			;4a81
	jr $+36			;4a82
	ld b,a			;4a84
	rla			;4a85
	ld b,e			;4a86
	ld l,d			;4a87
	ld h,0a8h		;4a88
	ld d,d			;4a8a
	ld d,e			;4a8b
	ret nc			;4a8c
	ld e,l			;4a8d
	cp h			;4a8e
	or a			;4a8f
	call po,0cfa4h		;4a90
	ld hl,0cbb7h		;4a93
	daa			;4a96
	cp d			;4a97
	dec bc			;4a98
	ret			;4a99
	or e			;4a9a
	xor h			;4a9b
	ld l,d			;4a9c
	jp pe,099b1h		;4a9d
	inc hl			;4aa0
	add a,c			;4aa1
	jr z,l4aeah		;4aa2
	sub c			;4aa4
	jr c,$+40		;4aa5
	adc a,h			;4aa7
	ld l,c			;4aa8
l4aa9h:
	call m,019e2h		;4aa9
	call nz,00345h		;4aac
	sbc a,074h		;4aaf
	add a,c			;4ab1
	sub h			;4ab2
	ld (hl),08ah		;4ab3
	ld c,e			;4ab5
	ld h,(hl)		;4ab6
	add a,0a4h		;4ab7
	ex af,af'		;4ab9
	ld b,a			;4aba
	ld h,d			;4abb
	ld h,(hl)		;4abc
	call z,0c2abh		;4abd
	sbc a,b			;4ac0
	adc a,d			;4ac1
	add hl,hl		;4ac2
	cp b			;4ac3
	xor d			;4ac4
	and h			;4ac5
	cp a			;4ac6
	rra			;4ac7
	xor d			;4ac8
	ld d,h			;4ac9
	ld h,d			;4aca
	ld l,(hl)		;4acb
	jp nz,0e84ch		;4acc
	jp z,0db4ch		;4acf
	ld c,b			;4ad2
	inc bc			;4ad3
	jr z,$+75		;4ad4
	adc a,e			;4ad6
	or e			;4ad7
	cp b			;4ad8
	ld (hl),d		;4ad9
	add a,h			;4ada
	ld c,e			;4adb
	sbc a,b			;4adc
	ld c,b			;4add
	call m,0f5bch		;4ade
	push de			;4ae1
	jp m,0308ah		;4ae2
	add a,l			;4ae5
	rst 0			;4ae6
	add hl,hl		;4ae7
	ld h,0bch		;4ae8
l4aeah:
	ei			;4aea
	cp b			;4aeb
	dec a			;4aec
	exx			;4aed
	dec hl			;4aee
	ld bc,0cb22h		;4aef
	add hl,sp		;4af2
	and (hl)		;4af3
	jr $-17			;4af4
	ld sp,hl		;4af6
	ld c,l			;4af7
	xor l			;4af8
	cp c			;4af9
	add hl,de		;4afa
	ld e,e			;4afb
	inc b			;4afc
	inc bc			;4afd
	ld hl,0e700h		;4afe
	ex (sp),hl		;4b01
	ret c			;4b02
	ld l,b			;4b03
	rst 0			;4b04
	ld h,(hl)		;4b05
	ld h,052h		;4b06
	rst 10h			;4b08
sub_4b09h:
	inc c			;4b09
	ld b,c			;4b0a
	pop af			;4b0b
	ld hl,(l5f0fh)		;4b0c
	add a,(hl)		;4b0f
	ld sp,l7f27h		;4b10
	ld bc,06304h		;4b13
	add a,l			;4b16
	sbc hl,bc		;4b17
	and 0dfh		;4b19
	sbc a,c			;4b1b
	cp 011h			;4b1c
	and 0e6h		;4b1e
	adc a,c			;4b20
l4b21h:
	ld l,c			;4b21
	cp c			;4b22
	jr l4b6ah		;4b23
	ld b,d			;4b25
	push hl			;4b26
sub_4b27h:
	dec h			;4b27
sub_4b28h:
	ld h,d			;4b28
	inc bc			;4b29
	add a,l			;4b2a
	ld c,b			;4b2b
	ld h,c			;4b2c
	defb 0edh ;next byte illegal after ed	;4b2d
	dec c			;4b2e
	ld (l41a7h),hl		;4b2f
	jr z,l4b21h		;4b32
	inc l			;4b34
	add a,c			;4b35
	or l			;4b36
	sbc a,035h		;4b37
	ex af,af'		;4b39
	jr z,l4b98h		;4b3a
	add hl,hl		;4b3c
	rst 0			;4b3d
	inc a			;4b3e
	xor e			;4b3f
	and d			;4b40
	sbc a,020h		;4b41
	dec b			;4b43
	ld h,(hl)		;4b44
	inc sp			;4b45
	ld b,(hl)		;4b46
	add a,a			;4b47
	defb 0edh ;next byte illegal after ed	;4b48
	add a,l			;4b49
l4b4ah:
	jp z,l488fh		;4b4a
	add a,h			;4b4d
	inc (hl)		;4b4e
	ld b,b			;4b4f
	inc bc			;4b50
	pop hl			;4b51
	jr z,l4b75h		;4b52
	add a,h			;4b54
	ex af,af'		;4b55
	ld h,h			;4b56
	and d			;4b57
	add a,l			;4b58
	dec a			;4b59
	ld b,e			;4b5a
	ld b,l			;4b5b
	add a,(hl)		;4b5c
	add a,h			;4b5d
l4b5eh:
	ld h,e			;4b5e
	ld hl,02d02h		;4b5f
	push bc			;4b62
	defb 0edh ;next byte illegal after ed	;4b63
	rst 0			;4b64
	ld (hl),b		;4b65
	ld de,0e604h		;4b66
	ret			;4b69
l4b6ah:
	and d			;4b6a
	ld (bc),a		;4b6b
	ld h,c			;4b6c
	and (hl)		;4b6d
	ccf			;4b6e
	sub (hl)		;4b6f
	ld (l7a43h),hl		;4b70
	ret p			;4b73
	ld h,c			;4b74
l4b75h:
	jr nz,l4b5eh		;4b75
	xor 043h		;4b77
	ld b,e			;4b79
	rst 38h			;4b7a
	inc h			;4b7b
	rst 20h			;4b7c
	ld (hl),h		;4b7d
	inc b			;4b7e
	jp nz,0e779h		;4b7f
	ld h,09ch		;4b82
	ld (l4605h),a		;4b84
	inc b			;4b87
	xor (hl)		;4b88
	dec h			;4b89
	inc hl			;4b8a
	ld b,e			;4b8b
	rst 20h			;4b8c
	ld sp,hl		;4b8d
	ld c,l			;4b8e
	inc hl			;4b8f
	ld d,00ah		;4b90
	inc hl			;4b92
	daa			;4b93
	ld h,h			;4b94
	ret pe			;4b95
	add hl,hl		;4b96
	ld (hl),h		;4b97
l4b98h:
	ld d,c			;4b98
	nop			;4b99
	and (hl)		;4b9a
	exx			;4b9b
	ld d,l			;4b9c
	inc e			;4b9d
	or b			;4b9e
	add hl,de		;4b9f
	call c,0ff25h		;4ba0
	ld (02f05h),hl		;4ba3
	xor h			;4ba6
	ld e,08eh		;4ba7
	ld l,c			;4ba9
	ld b,(hl)		;4baa
	cp d			;4bab
	ret pe			;4bac
	add hl,hl		;4bad
	dec h			;4bae
	inc h			;4baf
	ld b,d			;4bb0
	sla (hl)		;4bb1
	and 001h		;4bb3
	and (hl)		;4bb5
	ld b,044h		;4bb6
	retn			;4bb8
	ld h,(hl)		;4bba
	add a,(hl)		;4bbb
	jr nz,l4c1dh		;4bbc
	jp pe,0031ch		;4bbe
	ld d,d			;4bc1
	or l			;4bc2
	out (027h),a		;4bc3
	jp z,00192h		;4bc5
	ld b,a			;4bc8
	add a,e			;4bc9
	sub c			;4bca
l4bcbh:
	ex af,af'		;4bcb
	ld a,h			;4bcc
	ld c,d			;4bcd
	rst 20h			;4bce
l4bcfh:
	dec l			;4bcf
	dec h			;4bd0
	ret z			;4bd1
	ld a,e			;4bd2
	xor b			;4bd3
	adc a,d			;4bd4
	and a			;4bd5
	rrc d			;4bd6
	rst 28h			;4bd8
	or (hl)			;4bd9
	sbc a,c			;4bda
	jp p,093e6h		;4bdb
	ld d,c			;4bde
	ld h,h			;4bdf
	sub 0b4h		;4be0
	rst 30h			;4be2
	call pe,0eafdh		;4be3
	add a,(hl)		;4be6
	sub (hl)		;4be7
	ld (08c92h),a		;4be8
	jr nz,l4bcfh		;4beb
	ret nc			;4bed
	ld b,0cah		;4bee
	dec e			;4bf0
	xor b			;4bf1
	ld c,e			;4bf2
	sbc a,h			;4bf3
	sbc a,09eh		;4bf4
	jp z,033cfh		;4bf6
	or b			;4bf9
	dec hl			;4bfa
	push af			;4bfb
	add a,l			;4bfc
	dec h			;4bfd
	ex de,hl		;4bfe
	dec de			;4bff
	or h			;4c00
	sbc a,(hl)		;4c01
	add a,c			;4c02
	sbc a,c			;4c03
	sbc a,e			;4c04
	ld c,(hl)		;4c05
	ret pe			;4c06
	ld d,d			;4c07
	pop bc			;4c08
	ld d,c			;4c09
	defb 0edh ;next byte illegal after ed	;4c0a
	adc a,b			;4c0b
	jp (hl)			;4c0c
	and b			;4c0d
	ex de,hl		;4c0e
	jp (hl)			;4c0f
	ld a,e			;4c10
	inc hl			;4c11
	ld h,d			;4c12
	rst 28h			;4c13
	ld d,h			;4c14
	ld a,04dh		;4c15
	cp l			;4c17
	ld d,l			;4c18
	inc de			;4c19
	ld c,c			;4c1a
	rst 18h			;4c1b
	dec d			;4c1c
l4c1dh:
	jp c,01295h		;4c1d
	and d			;4c20
	exx			;4c21
	ld (0e593h),hl		;4c22
	adc a,b			;4c25
	add hl,de		;4c26
	jr z,l4c1dh		;4c27
	ld c,c			;4c29
	rst 20h			;4c2a
	xor c			;4c2b
	pop de			;4c2c
	ret			;4c2d
	rst 28h			;4c2e
	jp pe,0ab08h		;4c2f
	jr nz,$-123		;4c32
	dec l			;4c34
	and a			;4c35
	ld (09214h),a		;4c36
	adc a,0cdh		;4c39
	ld c,d			;4c3b
	in a,(0cch)		;4c3c
	dec b			;4c3e
	ret			;4c3f
	ld (bc),a		;4c40
	ld a,a			;4c41
	ex af,af'		;4c42
	pop bc			;4c43
	ld l,e			;4c44
	adc a,019h		;4c45
	or a			;4c47
	add hl,de		;4c48
	sbc a,l			;4c49
sub_4c4ah:
	add hl,de		;4c4a
	cp a			;4c4b
	ei			;4c4c
	and d			;4c4d
	ret			;4c4e
	ld c,d			;4c4f
	xor l			;4c50
	inc bc			;4c51
	adc a,(hl)		;4c52
	ld c,h			;4c53
	ld (de),a		;4c54
	call nz,0a393h		;4c55
	and h			;4c58
	ld d,l			;4c59
	ld (00809h),a		;4c5a
	cp h			;4c5d
	and c			;4c5e
	or a			;4c5f
	ld a,029h		;4c60
l4c62h:
	sub h			;4c62
	jp p,036e4h		;4c63
	ld c,(hl)		;4c66
	call pe,0a4f2h		;4c67
	sbc a,b			;4c6a
	rst 20h			;4c6b
	ld a,d			;4c6c
	sbc a,a			;4c6d
	ret m			;4c6e
	or h			;4c6f
	call nc,0c78ch		;4c70
	adc a,c			;4c73
	sbc a,h			;4c74
	ex af,af'		;4c75
	pop bc			;4c76
	ld e,c			;4c77
	add hl,hl		;4c78
	ld e,(hl)		;4c79
	and b			;4c7a
	jp c,l5ae5h		;4c7b
	pop bc			;4c7e
	ld h,d			;4c7f
	xor (hl)		;4c80
	sbc a,098h		;4c81
	jp m,0e98ah		;4c83
	adc a,l			;4c86
	jp po,0c219h		;4c87
	xor e			;4c8a
	jp nz,0a4cbh		;4c8b
	sub (hl)		;4c8e
	ld hl,0a076h		;4c8f
	ld h,d			;4c92
	rrca			;4c93
	inc bc			;4c94
	ex de,hl		;4c95
	jr z,l4c62h		;4c96
	rst 18h			;4c98
	add a,l			;4c99
	call c,0b508h		;4c9a
	in a,(099h)		;4c9d
	ld c,(hl)		;4c9f
	nop			;4ca0
l4ca1h:
	add hl,sp		;4ca1
	jp nz,087b4h		;4ca2
	and (hl)		;4ca5
	call 00362h		;4ca6
	cp 0b6h			;4ca9
	inc h			;4cab
	or h			;4cac
	ret m			;4cad
	call pe,08dc0h		;4cae
	ret nc			;4cb1
	or e			;4cb2
	scf			;4cb3
	rrca			;4cb4
	ld e,a			;4cb5
	ld l,a			;4cb6
	jr nz,l4ca1h		;4cb7
	ld c,e			;4cb9
	and e			;4cba
	xor e			;4cbb
	or l			;4cbc
	inc h			;4cbd
	adc a,l			;4cbe
	ret z			;4cbf
l4cc0h:
	ld d,b			;4cc0
	rst 30h			;4cc1
	ret z			;4cc2
	sub c			;4cc3
	xor a			;4cc4
	rst 28h			;4cc5
	add hl,sp		;4cc6
	push de			;4cc7
	add hl,hl		;4cc8
	dec de			;4cc9
	ld hl,08705h		;4cca
	add hl,sp		;4ccd
	jp nc,0b249h		;4cce
	ex de,hl		;4cd1
	cp 029h			;4cd2
	jr z,l4d32h		;4cd4
	ld e,c			;4cd6
	jp po,01d93h		;4cd7
	ld h,0bah		;4cda
	xor l			;4cdc
	defb 0fdh,0a7h,0a1h ;illegal sequence	;4cdd
	ld h,085h		;4ce0
	push bc			;4ce2
	pop af			;4ce3
	sub h			;4ce4
	or e			;4ce5
	and h			;4ce6
	call nz,0a1bch		;4ce7
	ld d,(hl)		;4cea
	daa			;4ceb
	push bc			;4cec
	ld h,(hl)		;4ced
	ld e,a			;4cee
	ret z			;4cef
	daa			;4cf0
	or c			;4cf1
	ld l,(hl)		;4cf2
	ld d,c			;4cf3
	ld e,(hl)		;4cf4
	add a,a			;4cf5
	ld hl,(02f27h)		;4cf6
	ld (hl),l		;4cf9
	inc e			;4cfa
	cp h			;4cfb
	rst 18h			;4cfc
l4cfdh:
	rst 0			;4cfd
	inc c			;4cfe
	ld b,0fch		;4cff
	ld h,07fh		;4d01
	ld (hl),c		;4d03
	ld e,087h		;4d04
	ld l,c			;4d06
	cp c			;4d07
	jr $+73			;4d08
	ld (hl),e		;4d0a
	daa			;4d0b
	jr z,$+20		;4d0c
	jr nc,l4cfdh		;4d0e
	ex de,hl		;4d10
	sbc a,b			;4d11
	jr c,l4d34h		;4d12
	and (hl)		;4d14
	sub d			;4d15
	push hl			;4d16
	or d			;4d17
	jp pe,l468ah		;4d18
	push de			;4d1b
	ret			;4d1c
	dec b			;4d1d
	ld c,b			;4d1e
	sbc a,08ch		;4d1f
sub_4d21h:
	defb 0ddh,058h,029h ;illegal sequence	;4d21
	ld d,h			;4d24
	ret nc			;4d25
	ld b,0dch		;4d26
	ld a,d			;4d28
	or h			;4d29
	set 4,b			;4d2a
	xor d			;4d2c
	dec h			;4d2d
	ret nz			;4d2e
	ld b,(hl)		;4d2f
	ex af,af'		;4d30
	ld c,d			;4d31
l4d32h:
	or c			;4d32
	ld b,l			;4d33
l4d34h:
	sub (hl)		;4d34
	ld d,e			;4d35
	ld c,b			;4d36
	jr nz,l4cc0h		;4d37
	add a,(hl)		;4d39
	jp nc,02d81h		;4d3a
	adc a,(hl)		;4d3d
	dec (hl)		;4d3e
	cp l			;4d3f
	ld h,l			;4d40
	ld c,b			;4d41
	ld b,l			;4d42
	call p,0fe5ah		;4d43
	sbc a,d			;4d46
	jp nc,0e733h		;4d47
	call c,0e862h		;4d4a
	ld d,d			;4d4d
	rst 0			;4d4e
	and d			;4d4f
	ld de,0eda7h		;4d50
	xor d			;4d53
	adc a,d			;4d54
	and (hl)		;4d55
	rst 20h			;4d56
	jp nz,02702h		;4d57
	cp a			;4d5a
	add a,0a8h		;4d5b
	dec hl			;4d5d
	ld h,d			;4d5e
	add a,052h		;4d5f
	rst 18h			;4d61
	ld c,021h		;4d62
	ld h,d			;4d64
	ld b,l			;4d65
	xor b			;4d66
	jp nc,0a820h		;4d67
	jp p,0ef2ah		;4d6a
	adc a,0bdh		;4d6d
	ld c,c			;4d6f
	add a,03eh		;4d70
	xor e			;4d72
	ld e,b			;4d73
	inc hl			;4d74
	ret			;4d75
	ld hl,l4018h		;4d76
	ld (bc),a		;4d79
	inc h			;4d7a
	and d			;4d7b
	or b			;4d7c
	ld l,0c7h		;4d7d
	dec b			;4d7f
	add a,0b1h		;4d80
	dec b			;4d82
	or d			;4d83
	jr z,l4db5h		;4d84
	ld c,c			;4d86
	ld hl,0b460h		;4d87
	and a			;4d8a
	ret pe			;4d8b
	or b			;4d8c
	ld b,e			;4d8d
	inc b			;4d8e
	adc a,h			;4d8f
	xor h			;4d90
	cp d			;4d91
	ret pe			;4d92
	sub h			;4d93
	ret pe			;4d94
	adc a,c			;4d95
	call nc,00c21h		;4d96
	ret po			;4d99
	sub b			;4d9a
	and l			;4d9b
	and b			;4d9c
	defb 0edh ;next byte illegal after ed	;4d9d
	call p,08bf6h		;4d9e
	jr nz,$+40		;4da1
	inc hl			;4da3
	adc a,l			;4da4
	ld (l6517h),hl		;4da5
	ld b,h			;4da8
	sub c			;4da9
	ld l,c			;4daa
	ret nz			;4dab
	ld sp,l4040h		;4dac
	sub h			;4daf
	inc d			;4db0
	out (098h),a		;4db1
	ld l,e			;4db3
	ld b,h			;4db4
l4db5h:
	ld d,l			;4db5
l4db6h:
	call po,0bf0ch		;4db6
	ld a,044h		;4db9
	xor e			;4dbb
	ld b,h			;4dbc
	inc h			;4dbd
	xor (hl)		;4dbe
	ld hl,0e85eh		;4dbf
	sub b			;4dc2
	ld c,b			;4dc3
	adc a,h			;4dc4
	ld c,b			;4dc5
	sub c			;4dc6
l4dc7h:
	cp a			;4dc7
	jr nz,l4db6h		;4dc8
	ld e,b			;4dca
	inc bc			;4dcb
	ld h,082h		;4dcc
	push hl			;4dce
	ld c,044h		;4dcf
	jp (hl)			;4dd1
	ld h,l			;4dd2
	ld (hl),l		;4dd3
	rla			;4dd4
	ld e,b			;4dd5
	ret pe			;4dd6
	add a,h			;4dd7
	sub h			;4dd8
	inc b			;4dd9
	ld h,l			;4dda
	or b			;4ddb
	ld d,c			;4ddc
	inc b			;4ddd
	di			;4dde
	ld e,c			;4ddf
	ei			;4de0
	jp po,0afd6h		;4de1
	ld d,b			;4de4
	ld h,l			;4de5
	ld h,e			;4de6
	out (c),b		;4de7
	ld b,l			;4de9
	jp nz,l436ah		;4dea
	rst 0			;4ded
	out (09ch),a		;4dee
	ex (sp),hl		;4df0
	adc a,(hl)		;4df1
	ret pe			;4df2
	ld sp,hl		;4df3
	ld de,0a702h		;4df4
	ld d,c			;4df7
	inc h			;4df8
	inc sp			;4df9
	ret pe			;4dfa
	ld h,l			;4dfb
	rst 8			;4dfc
	jr l4dc7h		;4dfd
	xor h			;4dff
	ret nc			;4e00
	call nz,0ac89h		;4e01
	ld (hl),a		;4e04
	call z,0a69ah		;4e05
	cp (hl)			;4e08
	ld d,e			;4e09
	sub 0b2h		;4e0a
	adc a,l			;4e0c
	ld c,b			;4e0d
	ex de,hl		;4e0e
	and l			;4e0f
	add a,b			;4e10
	dec h			;4e11
	rst 10h			;4e12
	dec hl			;4e13
	ld (hl),c		;4e14
	sub a			;4e15
	call nc,08803h		;4e16
	ld l,l			;4e19
	dec h			;4e1a
	rr b			;4e1b
	nop			;4e1d
	and e			;4e1e
	rrca			;4e1f
	ret nc			;4e20
	inc l			;4e21
	ld e,004h		;4e22
	and a			;4e24
	rrca			;4e25
	or l			;4e26
	add hl,hl		;4e27
	dec c			;4e28
	xor (hl)		;4e29
	jp z,02597h		;4e2a
	xor b			;4e2d
	add hl,sp		;4e2e
	and l			;4e2f
	add hl,hl		;4e30
l4e31h:
	jp c,01432h		;4e31
	jp z,0a4d7h		;4e34
	cp c			;4e37
	ld h,l			;4e38
	ld b,0f8h		;4e39
	daa			;4e3b
	inc h			;4e3c
	ld (0b7e1h),hl		;4e3d
	dec c			;4e40
	ret			;4e41
	dec de			;4e42
	dec b			;4e43
	sbc a,d			;4e44
	sub h			;4e45
	sbc a,03fh		;4e46
	ex af,af'		;4e48
	jp z,09027h		;4e49
	inc de			;4e4c
	ld b,a			;4e4d
	ld a,(bc)		;4e4e
	add a,(hl)		;4e4f
	jp nc,083f2h		;4e50
	jp nc,0f222h		;4e53
	xor b			;4e56
	sub e			;4e57
	adc a,l			;4e58
	xor (hl)		;4e59
	exx			;4e5a
	add a,d			;4e5b
	add a,008h		;4e5c
	rla			;4e5e
	inc l			;4e5f
	ld b,l			;4e60
	dec d			;4e61
	adc a,c			;4e62
	or d			;4e63
	ld d,03ch		;4e64
	cp l			;4e66
	ex de,hl		;4e67
	ld e,(hl)		;4e68
	inc b			;4e69
	ret z			;4e6a
	xor e			;4e6b
	defb 0edh ;next byte illegal after ed	;4e6c
	xor 05ch		;4e6d
	inc bc			;4e6f
	ld d,a			;4e70
	ld d,d			;4e71
	di			;4e72
	ld d,(hl)		;4e73
	ret z			;4e74
	pop de			;4e75
	add a,l			;4e76
	jp po,00322h		;4e77
	xor b			;4e7a
	ret m			;4e7b
	adc a,e			;4e7c
	add a,b			;4e7d
	inc l			;4e7e
	dec sp			;4e7f
	and d			;4e80
	adc a,b			;4e81
	and d			;4e82
	ret z			;4e83
	adc a,(hl)		;4e84
	ret z			;4e85
	sbc a,b			;4e86
	jp z,026efh		;4e87
	add a,0cah		;4e8a
	ld a,(de)		;4e8c
	ret z			;4e8d
	ld c,d			;4e8e
	dec b			;4e8f
	xor b			;4e90
	jr z,l4e31h		;4e91
	jp z,0c89dh		;4e93
	or b			;4e96
	in a,(085h)		;4e97
	ld c,h			;4e99
	cpl			;4e9a
	call z,0ad02h		;4e9b
	call z,0ed3eh		;4e9e
	sub b			;4ea1
	xor h			;4ea2
	jp 015c9h		;4ea3
	rst 20h			;4ea6
	inc hl			;4ea7
	jp pe,0c931h		;4ea8
	dec sp			;4eab
	defb 0ddh,08ah,0d7h ;illegal sequence	;4eac
	inc hl			;4eaf
	defb 0fdh,03bh,0cah ;illegal sequence	;4eb0
	adc a,d			;4eb3
	ld a,d			;4eb4
	rst 8			;4eb5
	ld b,a			;4eb6
	ld h,0c2h		;4eb7
	and 0e3h		;4eb9
	cpl			;4ebb
	call 08d6ch		;4ebc
	ld h,(hl)		;4ebf
	inc bc			;4ec0
	ld b,(hl)		;4ec1
	and l			;4ec2
	ld e,(hl)		;4ec3
	xor h			;4ec4
	ld h,h			;4ec5
	inc bc			;4ec6
	xor b			;4ec7
	ld h,h			;4ec8
	or l			;4ec9
	ld c,a			;4eca
	ld h,a			;4ecb
	or c			;4ecc
	ld e,(hl)		;4ecd
	rst 20h			;4ece
	ld d,h			;4ecf
	ld (bc),a		;4ed0
	push bc			;4ed1
	ld d,d			;4ed2
	or (hl)			;4ed3
	sub (hl)		;4ed4
	call m,0f691h		;4ed5
	ld b,l			;4ed8
	ret pe			;4ed9
	add hl,bc		;4eda
	ld a,023h		;4edb
	adc a,h			;4edd
	sub l			;4ede
	halt			;4edf
	inc bc			;4ee0
	dec h			;4ee1
	dec b			;4ee2
	sbc a,a			;4ee3
	sbc a,c			;4ee4
	rst 20h			;4ee5
	ld d,(hl)		;4ee6
	cp c			;4ee7
	ld (hl),c		;4ee8
	call p,0cda4h		;4ee9
	ld h,l			;4eec
	inc bc			;4eed
	rst 10h			;4eee
	ld a,(de)		;4eef
	inc h			;4ef0
	xor h			;4ef1
	add a,a			;4ef2
	call p,08adeh		;4ef3
	and d			;4ef6
	cp c			;4ef7
	or d			;4ef8
	add a,l			;4ef9
	ld (0b2fbh),a		;4efa
	in a,(0b2h)		;4efd
	push bc			;4eff
	ld hl,(0d8dch)		;4f00
	sbc a,l			;4f03
	and d			;4f04
	cp h			;4f05
	sbc a,l			;4f06
	xor 028h		;4f07
	ld (bc),a		;4f09
	ld (0e28fh),hl		;4f0a
	call z,025cfh		;4f0d
	jr nz,$+14		;4f10
	ret			;4f12
	ld b,l			;4f13
	sbc a,(hl)		;4f14
	and l			;4f15
	call z,0f7a4h		;4f16
	call nc,094eeh		;4f19
	jp po,0839ch		;4f1c
	sbc a,c			;4f1f
	sbc a,l			;4f20
	sub h			;4f21
	dec de			;4f22
	sub b			;4f23
	rst 10h			;4f24
	xor d			;4f25
	sub e			;4f26
	cp b			;4f27
	ld h,(hl)		;4f28
	add a,(hl)		;4f29
	ld (hl),d		;4f2a
	or (hl)			;4f2b
	ld e,e			;4f2c
	add hl,bc		;4f2d
	ex af,af'		;4f2e
	or e			;4f2f
	ld c,c			;4f30
sub_4f31h:
	add a,e			;4f31
	ld b,h			;4f32
	xor d			;4f33
	call po,0a4b1h		;4f34
	sbc a,(hl)		;4f37
	push hl			;4f38
	ld hl,(0259dh)		;4f39
	rla			;4f3c
	dec h			;4f3d
	and l			;4f3e
	ld b,c			;4f3f
	inc bc			;4f40
	ld a,e			;4f41
	and h			;4f42
	ld a,h			;4f43
	ld (l6c23h),a		;4f44
	or b			;4f47
	adc a,c			;4f48
	push bc			;4f49
	xor c			;4f4a
	cp (hl)			;4f4b
	dec e			;4f4c
	ld hl,095b0h		;4f4d
	ld d,h			;4f50
	ld b,l			;4f51
	xor a			;4f52
l4f53h:
	add hl,hl		;4f53
	adc a,a			;4f54
	ld (0fc44h),hl		;4f55
	adc a,0cdh		;4f58
	jp po,0a278h		;4f5a
	or h			;4f5d
	cp e			;4f5e
	add a,004h		;4f5f
	ex (sp),hl		;4f61
	ld h,b			;4f62
	ld h,l			;4f63
	jr z,l4f53h		;4f64
	dec sp			;4f66
	ld h,a			;4f67
	inc hl			;4f68
	and b			;4f69
	scf			;4f6a
	jp nz,02211h		;4f6b
	and (hl)		;4f6e
	cpl			;4f6f
	ret pe			;4f70
	or a			;4f71
	scf			;4f72
	and a			;4f73
	inc l			;4f74
	xor a			;4f75
	pop bc			;4f76
	rlca			;4f77
	and (hl)		;4f78
	daa			;4f79
	ret pe			;4f7a
	sub d			;4f7b
	ld c,c			;4f7c
	call nc,0e878h		;4f7d
	xor a			;4f80
	rrca			;4f81
	call 0f328h		;4f82
	cp h			;4f85
	rst 20h			;4f86
	sub h			;4f87
	sub a			;4f88
	sub l			;4f89
	dec a			;4f8a
	ret pe			;4f8b
	xor e			;4f8c
	ld a,d			;4f8d
	sbc a,d			;4f8e
	inc d			;4f8f
	ld h,(hl)		;4f90
	ret pe			;4f91
	or c			;4f92
	or c			;4f93
	or c			;4f94
	sub a			;4f95
	dec h			;4f96
	add a,d			;4f97
	and h			;4f98
	rla			;4f99
	adc a,b			;4f9a
	sub h			;4f9b
	jp m,00015h		;4f9c
	ld (0f3e7h),hl		;4f9f
	add a,h			;4fa2
	inc h			;4fa3
	ld h,l			;4fa4
	xor a			;4fa5
	add a,(hl)		;4fa6
	call po,01d26h		;4fa7
	sub d			;4faa
	ld (00d44h),hl		;4fab
	dec h			;4fae
	or d			;4faf
	and e			;4fb0
	ld h,(hl)		;4fb1
	xor l			;4fb2
	xor h			;4fb3
	ld d,d			;4fb4
	add a,046h		;4fb5
	ex af,af'		;4fb7
	and 044h		;4fb8
	call pe,00503h		;4fba
	add hl,bc		;4fbd
	ld d,d			;4fbe
	add hl,bc		;4fbf
	xor e			;4fc0
	ld c,b			;4fc1
	ld (bc),a		;4fc2
	ld hl,(02963h)		;4fc3
	call pe,013cbh		;4fc6
	rla			;4fc9
	sub h			;4fca
	ret z			;4fcb
	ld d,h			;4fcc
	jp pe,l7907h		;4fcd
	call pe,0f1f4h		;4fd0
	djnz l4fdeh		;4fd3
	inc bc			;4fd5
	ld c,h			;4fd6
	call m,090deh		;4fd7
	inc d			;4fda
	dec bc			;4fdb
	inc bc			;4fdc
	inc l			;4fdd
l4fdeh:
	dec bc			;4fde
	ld a,(bc)		;4fdf
	ld (de),a		;4fe0
	add hl,bc		;4fe1
	inc b			;4fe2
	ld a,(bc)		;4fe3
	cp b			;4fe4
	ld h,(hl)		;4fe5
	ld b,00ah		;4fe6
	ld b,h			;4fe8
	or 06bh			;4fe9
	add a,l			;4feb
	jr z,l5017h		;4fec
	add hl,hl		;4fee
	inc c			;4fef
	jr l505fh		;4ff0
	nop			;4ff2
	ld a,(bc)		;4ff3
	dec bc			;4ff4
	dec hl			;4ff5
	inc l			;4ff6
	inc c			;4ff7
	ld hl,(02906h)		;4ff8
	ld a,(bc)		;4ffb
	rlca			;4ffc
	ld c,d			;4ffd
	ld a,(bc)		;4ffe
	inc c			;4fff
	dec de			;5000
	ld c,h			;5001
	inc de			;5002
	ld b,032h		;5003
	ld b,b			;5005
	dec hl			;5006
	ld b,04ah		;5007
	nop			;5009
	ld a,(bc)		;500a
	ex af,af'		;500b
	dec bc			;500c
	ld (bc),a		;500d
	ld (bc),a		;500e
	ld a,(bc)		;500f
	adc a,e			;5010
	dec b			;5011
	dec bc			;5012
	ld b,034h		;5013
	inc b			;5015
	dec bc			;5016
l5017h:
	ex af,af'		;5017
	ld hl,(00a0ah)		;5018
	dec d			;501b
	inc c			;501c
	ld c,d			;501d
	ld a,(bc)		;501e
	ld a,(bc)		;501f
	inc c			;5020
	dec bc			;5021
	dec h			;5022
	call nc,0063bh		;5023
	ld b,l			;5026
	inc c			;5027
	and b			;5028
	ld l,055h		;5029
	nop			;502b
	inc c			;502c
	ex af,af'		;502d
	ld a,(bc)		;502e
	sub b			;502f
	ld e,d			;5030
	inc c			;5031
	dec b			;5032
	ld c,e			;5033
	add hl,bc		;5034
	nop			;5035
	ld h,h			;5036
	dec hl			;5037
	ld b,l			;5038
	nop			;5039
	inc l			;503a
	sub e			;503b
	inc c			;503c
	add hl,bc		;503d
	cp h			;503e
	sbc a,c			;503f
	ld c,(hl)		;5040
	dec c			;5041
	or h			;5042
	cpl			;5043
	ld d,c			;5044
	add hl,hl		;5045
	jr z,l5052h		;5046
	dec hl			;5048
	ld a,(bc)		;5049
	xor b			;504a
	sub d			;504b
	add hl,bc		;504c
	ld b,l			;504d
	ld c,e			;504e
	adc a,l			;504f
	jr nc,$+77		;5050
l5052h:
	inc c			;5052
	ld d,c			;5053
	inc l			;5054
	inc c			;5055
	call nz,sub_4a56h	;5056
	ld l,03ah		;5059
	dec d			;505b
	ld hl,(02c02h)		;505c
l505fh:
	ld (l452ch),a		;505f
	jp z,l5170h		;5062
	ld h,080h		;5065
	adc a,c			;5067
	rlca			;5068
	inc e			;5069
	adc a,d			;506a
	ld e,c			;506b
	adc a,d			;506c
	ld b,03eh		;506d
	dec bc			;506f
	adc a,e			;5070
	ld c,d			;5071
	dec bc			;5072
	ld hl,(0497dh)		;5073
	dec hl			;5076
	ld h,a			;5077
	nop			;5078
	ld a,d			;5079
	ld de,01d8bh		;507a
	adc a,e			;507d
	ex af,af'		;507e
	ld a,(hl)		;507f
	ld (de),a		;5080
	ld c,d			;5081
	ex af,af'		;5082
	ld l,04bh		;5083
	ret c			;5085
	jr nz,l508dh		;5086
	add hl,bc		;5088
l5089h:
	jr z,l50b5h		;5089
	ld d,d			;508b
	inc l			;508c
l508dh:
	scf			;508d
	ld d,04ah		;508e
	cp c			;5090
	ld (08a2fh),a		;5091
	add hl,hl		;5094
	dec hl			;5095
	ld l,b			;5096
	ld d,h			;5097
	daa			;5098
	inc sp			;5099
	nop			;509a
	dec c			;509b
	ld a,(l45d9h)		;509c
	ld l,h			;509f
	ld a,(bc)		;50a0
	ret c			;50a1
	ld (de),a		;50a2
	add hl,hl		;50a3
	add hl,bc		;50a4
	adc a,d			;50a5
	adc a,008h		;50a6
	ld d,l			;50a8
	jr z,$+7		;50a9
	inc b			;50ab
	jr nc,$-25		;50ac
	ld (de),a		;50ae
	call z,0953ch		;50af
	ld d,l			;50b2
	inc bc			;50b3
	dec l			;50b4
l50b5h:
	dec hl			;50b5
	ex af,af'		;50b6
	ld b,(hl)		;50b7
	pop af			;50b8
	ld d,e			;50b9
	ex af,af'		;50ba
	nop			;50bb
	ex af,af'		;50bc
	ld e,(hl)		;50bd
	inc c			;50be
	add hl,hl		;50bf
	ld hl,(l557ch)		;50c0
	xor h			;50c3
	ld h,05eh		;50c4
	ld l,b			;50c6
	out (029h),a		;50c7
	ld hl,(0b391h)		;50c9
	ld b,e			;50cc
	jr nc,l50dch		;50cd
	dec bc			;50cf
	jr z,l5128h		;50d0
	inc b			;50d2
	ld l,e			;50d3
	add hl,hl		;50d4
	dec hl			;50d5
	cp 06ch			;50d6
	jp c,02651h		;50d8
	ld c,d			;50db
l50dch:
	ld a,(bc)		;50dc
	ld h,d			;50dd
	ld d,d			;50de
	ld a,e			;50df
	dec bc			;50e0
	ld l,e			;50e1
	jr c,l5089h		;50e2
	ld de,028a3h		;50e4
	daa			;50e7
	xor b			;50e8
	ret			;50e9
	di			;50ea
	ld (hl),053h		;50eb
	ex af,af'		;50ed
	sub c			;50ee
	ld b,a			;50ef
	add hl,hl		;50f0
	and d			;50f1
	ld b,(hl)		;50f2
	and a			;50f3
	ld l,h			;50f4
	ld c,(hl)		;50f5
	ld b,e			;50f6
	ld c,e			;50f7
	push de			;50f8
	ld (0be29h),hl		;50f9
	inc b			;50fc
	inc c			;50fd
	dec c			;50fe
	and 052h		;50ff
	sbc a,b			;5101
	ld b,h			;5102
	dec c			;5103
	inc l			;5104
	ld hl,(l528ch)		;5105
	add a,b			;5108
	ld b,l			;5109
	ret po			;510a
l510bh:
	or e			;510b
	ld d,06fh		;510c
	ld h,l			;510e
	or d			;510f
	rst 20h			;5110
	ld d,l			;5111
	jr l518fh		;5112
	adc a,c			;5114
	nop			;5115
	dec bc			;5116
	add hl,hl		;5117
	ld c,l			;5118
	ld d,c			;5119
	ld d,h			;511a
	ccf			;511b
	ld hl,(0c707h)		;511c
	dec d			;511f
	ld hl,(l553ah)		;5120
	ld sp,hl		;5123
	ld b,h			;5124
	ld d,d			;5125
	nop			;5126
	add a,a			;5127
l5128h:
	ld c,(hl)		;5128
	add a,e			;5129
	inc l			;512a
	inc c			;512b
	xor 093h		;512c
	ei			;512e
	ld (de),a		;512f
	ld h,074h		;5130
	ld b,007h		;5132
	jp nc,0222fh		;5134
	dec b			;5137
	jp (hl)			;5138
	ld (02ca3h),a		;5139
	ld a,e			;513c
	sbc a,h			;513d
	xor a			;513e
	and e			;513f
	ld a,(hl)		;5140
	in a,(025h)		;5141
	inc (hl)		;5143
	dec hl			;5144
	ld a,0bch		;5145
	jr z,l5154h		;5147
	call nc,sub_4b28h	;5149
	ld l,c			;514c
	adc a,e			;514d
	sbc a,h			;514e
	and d			;514f
	adc a,l			;5150
	push de			;5151
	and e			;5152
	dec bc			;5153
l5154h:
	defb 0ddh,062h ;ld ixh,d	;5154
	sbc a,c			;5156
	rst 0			;5157
	ld d,009h		;5158
	push hl			;515a
	inc h			;515b
	jp nz,0f6a4h		;515c
	pop de			;515f
	and c			;5160
	ld d,d			;5161
	adc a,b			;5162
	ld c,(hl)		;5163
	add a,a			;5164
	ld e,c			;5165
	inc c			;5166
	jr nc,l510bh		;5167
	exx			;5169
	ret nc			;516a
	add hl,hl		;516b
	ld l,(hl)		;516c
	sbc a,c			;516d
	inc e			;516e
	inc hl			;516f
l5170h:
	ld c,(hl)		;5170
	and a			;5171
	sub 00dh		;5172
	call p,00152h		;5174
	ld b,00dh		;5177
	add a,h			;5179
	scf			;517a
	dec e			;517b
	ld (de),a		;517c
	ld c,h			;517d
	rst 38h			;517e
	adc a,d			;517f
	ld hl,(0e25eh)		;5180
	and l			;5183
	inc l			;5184
	ld (de),a		;5185
	rst 0			;5186
	inc d			;5187
	or a			;5188
	ld d,h			;5189
	rla			;518a
	ld sp,hl		;518b
	ld d,c			;518c
	sub c			;518d
	ld c,c			;518e
l518fh:
	sub e			;518f
	or h			;5190
	ld h,h			;5191
	cp l			;5192
	ld d,c			;5193
	dec b			;5194
	dec h			;5195
	dec hl			;5196
	sub 034h		;5197
	sbc a,(hl)		;5199
	ret z			;519a
	ld l,d			;519b
	ld d,l			;519c
	dec bc			;519d
	inc bc			;519e
	and d			;519f
	inc bc			;51a0
	xor a			;51a1
	ld h,d			;51a2
	inc bc			;51a3
	ld l,a			;51a4
	ld b,01ah		;51a5
	sbc a,c			;51a7
	ld b,(hl)		;51a8
	inc bc			;51a9
	ld (hl),b		;51aa
	ld h,b			;51ab
	call nz,0010fh		;51ac
	sub d			;51af
	di			;51b0
	ld c,d			;51b1
	and a			;51b2
	ccf			;51b3
	call po,00d24h		;51b4
	inc b			;51b7
	sub h			;51b8
	ld h,d			;51b9
	ld l,h			;51ba
	ret c			;51bb
	ld d,l			;51bc
	dec hl			;51bd
	sbc a,e			;51be
	daa			;51bf
	cp c			;51c0
	sub l			;51c1
l51c2h:
	add a,h			;51c2
	sbc a,b			;51c3
	dec d			;51c4
	ld b,04eh		;51c5
	ld l,e			;51c7
	sub l			;51c8
	ld h,l			;51c9
	ld (hl),003h		;51ca
	rst 18h			;51cc
	add hl,sp		;51cd
	call nc,sub_7049h	;51ce
	ld h,h			;51d1
	dec bc			;51d2
	adc a,(hl)		;51d3
	sub c			;51d4
	adc a,093h		;51d5
	sbc a,a			;51d7
	cp c			;51d8
	inc l			;51d9
	ei			;51da
	inc e			;51db
	add hl,hl		;51dc
	ld hl,(l6301h)		;51dd
	ld a,(bc)		;51e0
	call z,0fe4bh		;51e1
	inc d			;51e4
	add a,(hl)		;51e5
	call pe,0a4a5h		;51e6
	jp nz,013a4h		;51e9
	ex af,af'		;51ec
	xor e			;51ed
	ld (hl),h		;51ee
	rst 8			;51ef
	ld d,l			;51f0
	ex af,af'		;51f1
	jp nz,094b3h		;51f2
	ld d,h			;51f5
	rla			;51f6
	defb 0edh ;next byte illegal after ed	;51f7
	or h			;51f8
	and c			;51f9
	sub h			;51fa
	adc a,(hl)		;51fb
	adc a,h			;51fc
	ld l,e			;51fd
	call pe,099a5h		;51fe
	ld h,h			;5201
	or h			;5202
	and d			;5203
	ld sp,094b9h		;5204
	sbc a,b			;5207
	and e			;5208
	jr nz,l51c2h		;5209
l520bh:
	ld (0bf1ch),a		;520b
	add hl,hl		;520e
	adc a,0c6h		;520f
	xor e			;5211
	ld (hl),a		;5212
	ld h,(hl)		;5213
	ld e,d			;5214
	add a,b			;5215
	ld d,l			;5216
	cp e			;5217
	sub c			;5218
	cp a			;5219
	ld c,d			;521a
	and h			;521b
	ld (08929h),hl		;521c
	xor h			;521f
	sbc a,h			;5220
	ex de,hl		;5221
	ret po			;5222
	ld h,d			;5223
	inc hl			;5224
	ret c			;5225
	ld (de),a		;5226
	ld bc,091e6h		;5227
	rst 30h			;522a
	sub h			;522b
	or e			;522c
	ld d,h			;522d
	ld l,0e0h		;522e
	ld b,(hl)		;5230
	cp a			;5231
	ld a,d			;5232
	jp pe,03b52h		;5233
	sbc a,h			;5236
	call nz,0d9a4h		;5237
	ld a,e			;523a
	rlca			;523b
	ld c,l			;523c
	and a			;523d
	jp (hl)			;523e
	inc d			;523f
	cp h			;5240
	sub d			;5241
	xor 0b2h		;5242
	sub 08ch		;5244
	ld (bc),a		;5246
	ld b,l			;5247
	exx			;5248
	dec l			;5249
	ld l,b			;524a
	inc bc			;524b
	ld a,b			;524c
	xor e			;524d
	inc l			;524e
	and c			;524f
	ld c,e			;5250
	sbc a,b			;5251
	ld c,d			;5252
	and b			;5253
	ld c,h			;5254
	ld d,08ah		;5255
	xor l			;5257
	call pe,0abd1h		;5258
	sub h			;525b
	add hl,hl		;525c
	or d			;525d
	add hl,sp		;525e
	ld e,c			;525f
	ld e,(hl)		;5260
	or e			;5261
	ld b,(hl)		;5262
	call 0844ah		;5263
	ld d,(hl)		;5266
	ld h,050h		;5267
	dec hl			;5269
	xor h			;526a
	dec hl			;526b
	ld c,0d6h		;526c
	ret			;526e
	rst 18h			;526f
	ld hl,(02811h)		;5270
	nop			;5273
	sub h			;5274
	jp p,091c2h		;5275
	ret c			;5278
	or d			;5279
	sbc a,a			;527a
	adc a,c			;527b
	djnz l528bh		;527c
	add a,e			;527e
	ld h,09bh		;527f
	sub h			;5281
	ld c,d			;5282
	ld c,b			;5283
	ld c,e			;5284
	sub h			;5285
	and h			;5286
	xor e			;5287
	ret nz			;5288
	ld a,02bh		;5289
l528bh:
	cp e			;528b
l528ch:
	jr nz,l529ch		;528c
	jr z,l529ch		;528e
	ld l,d			;5290
	dec hl			;5291
	cp c			;5292
	cp c			;5293
	ld hl,(090dbh)		;5294
	ld c,e			;5297
l5298h:
	ld c,e			;5298
	ld bc,l4bcbh		;5299
l529ch:
	ret			;529c
	ld c,c			;529d
	call sub_4c4ah		;529e
	sbc a,b			;52a1
	ld (0f2c7h),a		;52a2
	call c,0a28ah		;52a5
	xor h			;52a8
	push de			;52a9
	or h			;52aa
	sub d			;52ab
l52ach:
	sub l			;52ac
	call z,00d4ah		;52ad
	xor (hl)		;52b0
	inc h			;52b1
	jr nz,l5298h		;52b2
	adc a,d			;52b4
	xor l			;52b5
	ld e,(hl)		;52b6
	and d			;52b7
	ld a,(bc)		;52b8
	pop bc			;52b9
	jp nz,02c6eh		;52ba
	dec l			;52bd
	ld (de),a		;52be
	dec hl			;52bf
	jr z,l52ebh		;52c0
	ld (de),a		;52c2
	ex de,hl		;52c3
	push bc			;52c4
	add hl,bc		;52c5
	ld (hl),l		;52c6
l52c7h:
	call po,009b1h		;52c7
	dec l			;52ca
	adc a,e			;52cb
	add hl,de		;52cc
	sbc a,c			;52cd
	dec d			;52ce
	ld a,(de)		;52cf
	ret nz			;52d0
	inc (hl)		;52d1
	ret			;52d2
	sub c			;52d3
	defb 0fdh,095h ;sub iyl	;52d4
	ld h,a			;52d6
	ld c,l			;52d7
	adc a,c			;52d8
	add hl,sp		;52d9
	adc a,b			;52da
	ld c,c			;52db
	ld b,a			;52dc
	ld b,(hl)		;52dd
	ex de,hl		;52de
	jp c,l469dh		;52df
l52e2h:
	adc a,b			;52e2
	ld d,(hl)		;52e3
	jp p,0bc45h		;52e4
	ld d,(hl)		;52e7
	ld d,c			;52e8
	add hl,bc		;52e9
	ret nc			;52ea
l52ebh:
	cp c			;52eb
	rrca			;52ec
	jp m,00515h		;52ed
	sbc a,d			;52f0
	ld e,c			;52f1
	xor e			;52f2
	ld h,h			;52f3
	ret z			;52f4
	ld (hl),c		;52f5
	dec e			;52f6
	ld b,l			;52f7
	and l			;52f8
	or 049h			;52f9
	and c			;52fb
	ld a,c			;52fc
	ret			;52fd
	ld l,b			;52fe
	ld b,09bh		;52ff
	pop de			;5301
	inc (hl)		;5302
	ld hl,(0087fh)		;5303
	dec b			;5306
	ld de,0250dh		;5307
	inc l			;530a
	ei			;530b
	adc a,e			;530c
	dec c			;530d
	xor a			;530e
	ld c,c			;530f
	sub h			;5310
	ld (de),a		;5311
	dec l			;5312
	adc a,a			;5313
	add a,e			;5314
	jr z,l5343h		;5315
	ld (bc),a		;5317
	ret p			;5318
	ld l,d			;5319
	adc a,d			;531a
	ret			;531b
	cp 0b1h			;531c
	push af			;531e
	jr l52ach		;531f
	and d			;5321
	sub a			;5322
	adc a,c			;5323
	adc a,c			;5324
	ld (bc),a		;5325
	cp b			;5326
	ret			;5327
	xor (hl)		;5328
	ld e,b			;5329
	defb 0fdh,0c9h,08ch ;illegal sequence	;532a
	ld c,b			;532d
	res 6,b			;532e
	rst 20h			;5330
	adc a,d			;5331
	jp m,02210h		;5332
	rlca			;5335
	ld l,h			;5336
	push bc			;5337
	inc de			;5338
	nop			;5339
	dec h			;533a
	dec bc			;533b
	sbc a,c			;533c
	sub d			;533d
	add hl,de		;533e
	ld h,01eh		;533f
	adc a,h			;5341
	sub c			;5342
l5343h:
	ld b,(hl)		;5343
	jr nz,l52e2h		;5344
	add a,0e2h		;5346
	xor e			;5348
	ex af,af'		;5349
	ld h,c			;534a
	ex af,af'		;534b
	in a,(029h)		;534c
	ei			;534e
	ld sp,022fdh		;534f
	rla			;5352
	daa			;5353
	ld l,e			;5354
	ld b,0a3h		;5355
	adc a,h			;5357
	cp l			;5358
	add hl,hl		;5359
	add hl,de		;535a
	ld b,04fh		;535b
	inc h			;535d
	nop			;535e
	xor (hl)		;535f
	inc hl			;5360
	ld c,h			;5361
	add hl,bc		;5362
l5363h:
	adc a,(hl)		;5363
	ld h,l			;5364
	jp p,0ec12h		;5365
	rra			;5368
	inc bc			;5369
	jp pe,05472h		;536a
	cp h			;536d
	xor c			;536e
	ld (bc),a		;536f
	ld a,(bc)		;5370
	ld c,c			;5371
	add hl,bc		;5372
	ld l,h			;5373
	rlca			;5374
	ld l,c			;5375
	ld d,c			;5376
	and h			;5377
	push de			;5378
	sbc a,d			;5379
	pop af			;537a
	ret nz			;537b
	ld (08a00h),a		;537c
	adc a,d			;537f
	adc a,(hl)		;5380
	ld (hl),e		;5381
	adc a,d			;5382
	add hl,bc		;5383
	ccf			;5384
	dec hl			;5385
	call nc,009d8h		;5386
	xor d			;5389
	inc (hl)		;538a
	cp l			;538b
	and e			;538c
	add hl,bc		;538d
	rst 28h			;538e
	ld (0acf3h),hl		;538f
	ld b,c			;5392
	or a			;5393
	cp h			;5394
	dec b			;5395
	push bc			;5396
	and a			;5397
	ld c,d			;5398
	and h			;5399
	ld (hl),e		;539a
	ret p			;539b
	inc c			;539c
	ld bc,0e94bh		;539d
	daa			;53a0
	xor d			;53a1
	ld l,e			;53a2
	and l			;53a3
	dec d			;53a4
	call pe,0b389h		;53a5
	dec bc			;53a8
	rlca			;53a9
	push bc			;53aa
	ld h,d			;53ab
	jr z,l53d6h		;53ac
	and h			;53ae
	ld h,d			;53af
	xor h			;53b0
	ld bc,0cd23h		;53b1
	ld (hl),0f3h		;53b4
	ld (0e625h),a		;53b6
	ld hl,(0c5fbh)		;53b9
	dec hl			;53bc
	cp (hl)			;53bd
	sub (hl)		;53be
	push de			;53bf
	dec hl			;53c0
	ld c,h			;53c1
	or h			;53c2
	inc (hl)		;53c3
	jp pe,0f5adh		;53c4
	ld (l4b4ah),hl		;53c7
	rst 8			;53ca
	ld e,b			;53cb
	ld c,b			;53cc
	ld (hl),a		;53cd
	dec sp			;53ce
	ld a,(bc)		;53cf
	inc l			;53d0
	ld (bc),a		;53d1
	jr nz,l5363h		;53d2
	ld e,l			;53d4
	adc a,h			;53d5
l53d6h:
	dec c			;53d6
	ret pe			;53d7
	adc a,d			;53d8
	ex af,af'		;53d9
	pop af			;53da
	ld d,l			;53db
	defb 0edh ;next byte illegal after ed	;53dc
	and a			;53dd
	dec h			;53de
	res 2,a			;53df
	ld a,(bc)		;53e1
	jp nc,01125h		;53e2
	out (043h),a		;53e5
	ld c,b			;53e7
	cp 06ah			;53e8
	ld c,047h		;53ea
	and b			;53ec
	rst 30h			;53ed
	dec h			;53ee
	rlca			;53ef
	adc a,d			;53f0
	adc a,064h		;53f1
	xor h			;53f3
	add a,09bh		;53f4
	sbc a,l			;53f6
	cp 00ah			;53f7
	ld d,h			;53f9
	adc a,h			;53fa
	or d			;53fb
	defb 0ddh,0b3h,0c1h ;illegal sequence	;53fc
	ld l,b			;53ff
	ld c,(hl)		;5400
	adc a,d			;5401
	rlca			;5402
	jp (hl)			;5403
	and c			;5404
	ld b,a			;5405
	ex (sp),hl		;5406
	and l			;5407
	sbc a,c			;5408
	sub e			;5409
	defb 0edh ;next byte illegal after ed	;540a
	ld (de),a		;540b
	ld c,c			;540c
	res 4,b			;540d
	inc h			;540f
	ld hl,(0d4a4h)		;5410
	rst 0			;5413
	call z,0d298h		;5414
	cp (hl)			;5417
	inc hl			;5418
	ld h,007h		;5419
	add hl,hl		;541b
	defb 0edh ;next byte illegal after ed	;541c
	ld d,l			;541d
	ld l,e			;541e
	jr nc,$+80		;541f
	pop bc			;5421
	ld d,b			;5422
	dec c			;5423
	ld l,e			;5424
	ld l,e			;5425
	ld (bc),a		;5426
	sub h			;5427
	exx			;5428
	or l			;5429
	ex de,hl		;542a
	call nc,08cc7h		;542b
	ret pe			;542e
	call p,093dch		;542f
	ld b,a			;5432
	inc bc			;5433
	jp nc,02928h		;5434
	sub l			;5437
	ld d,c			;5438
	ex de,hl		;5439
	rra			;543a
	ret p			;543b
	jr l5488h		;543c
	daa			;543e
	neg			;543f
	adc a,a			;5441
	adc a,h			;5442
	inc hl			;5443
	ld c,d			;5444
	ld c,d			;5445
	ret			;5446
	ld l,d			;5447
	dec (hl)		;5448
	ret p			;5449
	and e			;544a
	sub 085h		;544b
	dec hl			;544d
	xor a			;544e
	and l			;544f
	dec (hl)		;5450
	adc a,b			;5451
	inc de			;5452
	ld l,b			;5453
	and 0a9h		;5454
	or 025h			;5456
	sbc a,l			;5458
	inc d			;5459
	xor d			;545a
	dec a			;545b
	ld e,(hl)		;545c
	ld c,c			;545d
	sbc a,h			;545e
	adc a,(hl)		;545f
	bit 0,d			;5460
	jp m,08fc9h		;5462
	ld c,h			;5465
	call po,0b54ah		;5466
	dec h			;5469
	cp (hl)			;546a
	dec l			;546b
	inc a			;546c
	cp l			;546d
	out (009h),a		;546e
	call z,02c0ah		;5470
	ld b,c			;5473
	call pe,08bc9h		;5474
	ld (0a185h),hl		;5477
	call nc,sub_5e6ch	;547a
	sub l			;547d
	ld b,d			;547e
	adc a,091h		;547f
	or h			;5481
	ld d,c			;5482
	ld l,(hl)		;5483
	or a			;5484
	add a,d			;5485
	dec h			;5486
	ld l,e			;5487
l5488h:
	adc a,h			;5488
	rlca			;5489
	ld h,028h		;548a
	call z,092b9h		;548c
	ld d,c			;548f
	inc l			;5490
	sbc a,l			;5491
	ld a,(bc)		;5492
	dec c			;5493
	ld c,c			;5494
	ld c,h			;5495
	ld c,(hl)		;5496
	dec bc			;5497
	ld (hl),l		;5498
	ld c,e			;5499
	add a,b			;549a
	adc a,049h		;549b
	rst 18h			;549d
	add hl,sp		;549e
	or b			;549f
	exx			;54a0
	jp p,0e369h		;54a1
	sbc a,b			;54a4
	ex af,af'		;54a5
	ld c,c			;54a6
	ld c,b			;54a7
	sub b			;54a8
	defb 0ddh,07ah,004h ;illegal sequence	;54a9
	daa			;54ac
l54adh:
	ld l,d			;54ad
	jr z,$+86		;54ae
	call pe,0969bh		;54b0
	ld h,l			;54b3
	cp (hl)			;54b4
	ld c,b			;54b5
	ex af,af'		;54b6
	ld bc,02aech		;54b7
	jp pe,08c8fh		;54ba
	ld hl,(l5f5bh)		;54bd
	ld c,e			;54c0
	daa			;54c1
	dec bc			;54c2
	add hl,hl		;54c3
	pop bc			;54c4
	ld c,l			;54c5
	ex af,af'		;54c6
	halt			;54c7
	add hl,bc		;54c8
	ret pe			;54c9
	sub l			;54ca
	call pe,sub_4d21h	;54cb
	rst 30h			;54ce
	call po,0070fh		;54cf
	sub d			;54d2
	xor c			;54d3
	ex af,af'		;54d4
	ld (de),a		;54d5
	ld l,h			;54d6
	ld c,b			;54d7
	ld l,d			;54d8
	sub d			;54d9
	ld c,d			;54da
	ld b,002h		;54db
	jr l54adh		;54dd
	adc a,c			;54df
	sub b			;54e0
	dec hl			;54e1
	call nc,02b09h		;54e2
	ld c,c			;54e5
	cp b			;54e6
	daa			;54e7
	defb 0ddh,06fh ;ld ixl,a	;54e8
	add a,a			;54ea
	ld d,d			;54eb
	inc l			;54ec
	add a,d			;54ed
	adc a,l			;54ee
	adc a,e			;54ef
	xor l			;54f0
	and a			;54f1
	ret nc			;54f2
	ld d,04ah		;54f3
	dec de			;54f5
	add a,(hl)		;54f6
	daa			;54f7
	or d			;54f8
	ld l,h			;54f9
	ld a,(de)		;54fa
	ld c,d			;54fb
	sub d			;54fc
	and 0c1h		;54fd
	ld (092b6h),a		;54ff
	ld sp,0ec9ah		;5502
l5505h:
	push hl			;5505
	sub d			;5506
	ret c			;5507
	adc a,e			;5508
	dec sp			;5509
	rst 8			;550a
	jp z,0c886h		;550b
	ld d,l			;550e
	call pe,sub_460ah	;550f
	adc a,b			;5512
	rst 28h			;5513
	ld (09007h),a		;5514
	ret p			;5517
	cp (hl)			;5518
	add hl,bc		;5519
	xor h			;551a
	sub c			;551b
	inc h			;551c
	ld l,e			;551d
	jp z,03899h		;551e
	inc h			;5521
	ld c,(hl)		;5522
	cp a			;5523
	ld c,d			;5524
	bit 3,d			;5525
	sbc a,049h		;5527
	ld c,h			;5529
	ex af,af'		;552a
	xor h			;552b
	adc a,a			;552c
	ld hl,0e928h		;552d
	inc b			;5530
	xor d			;5531
	ld b,067h		;5532
	ld h,l			;5534
	dec b			;5535
	ld h,l			;5536
	xor h			;5537
	daa			;5538
	ld b,(hl)		;5539
l553ah:
	push hl			;553a
	xor c			;553b
	ld c,h			;553c
	ld h,002h		;553d
	sbc a,l			;553f
	and h			;5540
	dec (hl)		;5541
	ld (de),a		;5542
	ld c,c			;5543
	add a,h			;5544
	ld l,l			;5545
	or d			;5546
	daa			;5547
	add a,062h		;5548
	jr z,l5505h		;554a
	ld e,b			;554c
	or l			;554d
	ld h,e			;554e
	pop hl			;554f
	add a,c			;5550
	add hl,bc		;5551
	ld c,l			;5552
	inc l			;5553
	ret c			;5554
	ld c,b			;5555
	inc h			;5556
	ld h,d			;5557
	adc a,h			;5558
	dec bc			;5559
	ld c,e			;555a
	adc a,l			;555b
	ld (hl),c		;555c
	dec hl			;555d
	inc bc			;555e
	ld e,d			;555f
	cp h			;5560
	add hl,hl		;5561
	inc bc			;5562
	ld e,b			;5563
	ld b,006h		;5564
	and 046h		;5566
	daa			;5568
	ld e,d			;5569
	pop hl			;556a
	adc a,b			;556b
	ld b,a			;556c
	nop			;556d
	ld h,0e0h		;556e
	and d			;5570
	exx			;5571
	ld d,c			;5572
	xor d			;5573
	ld b,c			;5574
	adc a,b			;5575
	rla			;5576
	ld l,c			;5577
	ld c,c			;5578
	call 0a9c5h		;5579
l557ch:
	ld b,0ech		;557c
	inc b			;557e
	ex (sp),hl		;557f
	pop hl			;5580
l5581h:
	add hl,bc		;5581
	ld l,b			;5582
	inc h			;5583
	ld (0d806h),hl		;5584
	ld d,c			;5587
	call pe,00704h		;5588
l558bh:
	ld l,c			;558b
	inc b			;558c
	cp h			;558d
	ld h,d			;558e
	ld (bc),a		;558f
	sbc a,b			;5590
	xor b			;5591
	add a,d			;5592
	xor d			;5593
	call m,02752h		;5594
	sbc a,h			;5597
	ld c,h			;5598
	inc bc			;5599
	inc bc			;559a
	sbc a,(hl)		;559b
	ex af,af'		;559c
	ld (bc),a		;559d
	set 6,h			;559e
	rst 8			;55a0
	add a,a			;55a1
	add hl,sp		;55a2
	rst 38h			;55a3
	dec l			;55a4
	add a,024h		;55a5
	and l			;55a7
	jp nc,0c5e1h		;55a8
	add hl,hl		;55ab
	and c			;55ac
	ld c,(hl)		;55ad
	or b			;55ae
	ld c,e			;55af
	ret z			;55b0
	ld b,a			;55b1
	ld c,e			;55b2
	ret c			;55b3
	ld h,d			;55b4
	inc bc			;55b5
	res 6,e			;55b6
	ret p			;55b8
	ld d,d			;55b9
	defb 0edh ;next byte illegal after ed	;55ba
	jp pe,0a5e2h		;55bb
	dec b			;55be
	ld c,h			;55bf
	jp po,0f666h		;55c0
	or b			;55c3
	ld hl,(l4c62h)		;55c4
	defb 0edh ;next byte illegal after ed	;55c7
	sub c			;55c8
	dec hl			;55c9
	ld hl,(0b0d9h)		;55ca
	ld h,h			;55cd
	add hl,hl		;55ce
	ld h,001h		;55cf
	ld h,d			;55d1
	inc b			;55d2
l55d3h:
	sub e			;55d3
	jr nc,l5581h		;55d4
	rst 18h			;55d6
	adc a,d			;55d7
	adc a,d			;55d8
	ret p			;55d9
	ld c,l			;55da
	adc a,04ch		;55db
	out (0c9h),a		;55dd
	out (0afh),a		;55df
	rst 8			;55e1
	ex af,af'		;55e2
	ld l,e			;55e3
	xor e			;55e4
	add a,0c5h		;55e5
	ld c,c			;55e7
	call po,0ec63h		;55e8
	djnz l55f7h		;55eb
	rlca			;55ed
	ld bc,0c2afh		;55ee
	inc hl			;55f1
	ld b,0c1h		;55f2
	ld hl,(099a0h)		;55f4
l55f7h:
	ex af,af'		;55f7
l55f8h:
	jr z,l558bh		;55f8
	add hl,sp		;55fa
	ld a,(bc)		;55fb
	ld d,c			;55fc
	ld e,d			;55fd
	and l			;55fe
	ld b,l			;55ff
	call z,0f9eeh		;5600
	adc a,l			;5603
	ld h,06ah		;5604
	ld b,004h		;5606
	ld c,d			;5608
	call pe,0ea06h		;5609
	ld h,0c3h		;560c
	ld hl,(0d401h)		;560e
	jp nc,02aa1h		;5611
	pop af			;5614
	jr z,l55f8h		;5615
	or h			;5617
	rst 18h			;5618
	jp p,0f9cdh		;5619
	add hl,hl		;561c
	cp l			;561d
	inc l			;561e
	cp h			;561f
	adc a,c			;5620
	dec b			;5621
	inc bc			;5622
	ld b,0e8h		;5623
	sub e			;5625
	ld c,e			;5626
	adc a,h			;5627
	ld d,b			;5628
	ld a,(de)		;5629
	ld h,l			;562a
	ex af,af'		;562b
	adc a,h			;562c
	add a,a			;562d
	ld hl,(l4829h)		;562e
	or l			;5631
	and h			;5632
	inc (hl)		;5633
	add a,a			;5634
	jp nc,0dcbch		;5635
	jr z,l55d3h		;5638
	add a,b			;563a
	ld l,d			;563b
	ld c,c			;563c
	call pe,0eb28h		;563d
	rlca			;5640
	adc a,b			;5641
	ret z			;5642
	xor h			;5643
	add hl,hl		;5644
l5645h:
	ld b,c			;5645
	ld l,e			;5646
	ld l,e			;5647
	inc h			;5648
	ex de,hl		;5649
	ld a,(bc)		;564a
	ld b,l			;564b
	ld a,(bc)		;564c
	dec l			;564d
	jr z,l5645h		;564e
	ld (de),a		;5650
	inc h			;5651
	or c			;5652
	ld d,d			;5653
	or c			;5654
	ld h,d			;5655
	add a,00dh		;5656
	ld c,c			;5658
	ex af,af'		;5659
	defb 0edh ;next byte illegal after ed	;565a
	sbc a,a			;565b
	set 7,e			;565c
	inc de			;565e
	inc bc			;565f
	ei			;5660
	ld (de),a		;5661
	ld l,c			;5662
	jr z,$+12		;5663
	jr z,l5671h		;5665
	adc a,b			;5667
	add a,b			;5668
	dec h			;5669
	inc bc			;566a
	ld a,(de)		;566b
	jr nz,l568eh		;566c
	otdr			;566e
	sub h			;5670
l5671h:
	rla			;5671
	cp a			;5672
	adc a,h			;5673
	inc b			;5674
	cp (hl)			;5675
	ld e,c			;5676
	jr $+74			;5677
	ld sp,hl		;5679
	ld b,d			;567a
	add hl,bc		;567b
	dec c			;567c
	ret z			;567d
	ld (092e4h),a		;567e
	xor l			;5681
	ret z			;5682
l5683h:
	ld c,(hl)		;5683
	or e			;5684
	inc c			;5685
	inc b			;5686
	inc bc			;5687
	inc bc			;5688
	dec c			;5689
	ld e,d			;568a
	call pe,sub_6aebh	;568b
l568eh:
	add a,a			;568e
	ld h,l			;568f
	rrca			;5690
	djnz l569ah		;5691
	ld b,l			;5693
	inc a			;5694
	call z,01520h		;5695
	sub a			;5698
	ld h,h			;5699
l569ah:
	sbc a,(hl)		;569a
	ld d,d			;569b
	ret nc			;569c
	add a,h			;569d
	ld b,0edh		;569e
	and 0cah		;56a0
	ld b,a			;56a2
	ret m			;56a3
	ld c,d			;56a4
	adc a,c			;56a5
	jp z,00af9h		;56a6
	ld c,l			;56a9
	ld a,(bc)		;56aa
	call nc,0e1c8h		;56ab
	and (hl)		;56ae
	inc e			;56af
	jr nz,l5683h		;56b0
	pop bc			;56b2
	dec h			;56b3
	ld hl,02200h		;56b4
	dec l			;56b7
	ld d,b			;56b8
	add hl,sp		;56b9
	ld e,a			;56ba
	ld bc,00040h		;56bb
	pop de			;56be
	xor c			;56bf
	ld bc,09855h		;56c0
	push de			;56c3
	adc a,(hl)		;56c4
	ld hl,(0dc8fh)		;56c5
	ld a,h			;56c8
	ld h,h			;56c9
	jr z,l5709h		;56ca
	or c			;56cc
	ld d,a			;56cd
	cp e			;56ce
	ld de,l6926h		;56cf
	ld d,027h		;56d2
	call pe,04472h		;56d4
	or 048h			;56d7
	call z,sub_48feh	;56d9
	ld b,b			;56dc
	xor e			;56dd
	ld l,e			;56de
	sub e			;56df
	and e			;56e0
	and 053h		;56e1
	add a,e			;56e3
	ld (081ech),a		;56e4
	call pe,sub_4b27h	;56e7
	rst 20h			;56ea
	ld l,c			;56eb
	ret po			;56ec
	inc h			;56ed
	inc c			;56ee
	ld b,a			;56ef
	jr nc,l56f6h		;56f0
	ex de,hl		;56f2
	xor (hl)		;56f3
	adc a,d			;56f4
l56f5h:
	cp d			;56f5
l56f6h:
	ld c,(hl)		;56f6
	or b			;56f7
	inc l			;56f8
	cp d			;56f9
	inc (hl)		;56fa
	ld c,b			;56fb
	ld b,a			;56fc
	call z,017c7h		;56fd
	add hl,bc		;5700
	sbc a,c			;5701
	push bc			;5702
	ld hl,(08ccch)		;5703
	and l			;5706
	ld sp,hl		;5707
	sub h			;5708
l5709h:
	inc b			;5709
	adc a,d			;570a
	call nz,02bedh		;570b
	cp b			;570e
	push de			;570f
	rst 20h			;5710
	or h			;5711
	inc a			;5712
	call po,04884h		;5713
	ld l,l			;5716
	xor (hl)		;5717
	ld d,h			;5718
	call po,0ae9ah		;5719
	ld (0bc06h),hl		;571c
	call p,026e4h		;571f
	ld c,d			;5722
	inc h			;5723
	inc bc			;5724
	ex af,af'		;5725
	xor (hl)		;5726
	ld e,c			;5727
	ret nz			;5728
	dec h			;5729
	xor h			;572a
	ret pe			;572b
	add hl,hl		;572c
	ld a,b			;572d
	ld e,a			;572e
	defb 0edh ;next byte illegal after ed	;572f
	ld a,(hl)		;5730
	ld h,d			;5731
	push de			;5732
	ld l,(hl)		;5733
	xor (hl)		;5734
	jp nz,l4407h		;5735
	ld h,a			;5738
	xor l			;5739
	ld d,e			;573a
	ld (l4968h),hl		;573b
	add a,c			;573e
	adc a,b			;573f
	rst 10h			;5740
	jr nz,l5764h		;5741
	ld b,(hl)		;5743
	rlca			;5744
	and d			;5745
	ld c,h			;5746
	xor a			;5747
	ld l,h			;5748
	sub e			;5749
	and h			;574a
	ld (iy-073h),b		;574b
	dec b			;574e
	dec (hl)		;574f
	ld c,l			;5750
	add hl,hl		;5751
	and b			;5752
	dec bc			;5753
	ld c,e			;5754
	adc a,h			;5755
	ld b,h			;5756
	sub l			;5757
	ld d,b			;5758
	ld c,d			;5759
	dec bc			;575a
	defb 0ddh,09ch ;sbc a,ixh	;575b
	or h			;575d
	cp d			;575e
	inc h			;575f
	daa			;5760
	inc b			;5761
	sub c			;5762
	sub d			;5763
l5764h:
	or b			;5764
	add a,e			;5765
	ld c,e			;5766
	adc a,c			;5767
	ld c,h			;5768
	add a,b			;5769
	ld h,086h		;576a
	sub d			;576c
	ld h,(hl)		;576d
	ld (bc),a		;576e
	dec b			;576f
	jr nz,l5775h		;5770
	cp a			;5772
	jr nc,l56f5h		;5773
l5775h:
	ld d,a			;5775
	defb 0edh ;next byte illegal after ed	;5776
	defb 0fdh,09ah,0bfh ;illegal sequence	;5777
	adc a,d			;577a
	jr z,l578ch		;577b
	sub e			;577d
	ret nc			;577e
	ld l,d			;577f
	ld l,l			;5780
	ld l,(hl)		;5781
	ld c,e			;5782
	and b			;5783
	ld d,c			;5784
	ld (hl),a		;5785
	adc a,b			;5786
	ld h,d			;5787
	add a,c			;5788
	inc de			;5789
	adc a,e			;578a
	ld l,c			;578b
l578ch:
	sub (hl)		;578c
	ld d,d			;578d
	add hl,de		;578e
	jp (hl)			;578f
	adc a,b			;5790
	inc bc			;5791
	adc a,e			;5792
	adc a,c			;5793
	ld bc,0ed02h		;5794
	ld c,c			;5797
	in a,(0cah)		;5798
	jr z,$-77		;579a
	ex de,hl		;579c
	out (03ah),a		;579d
	call nz,02a92h		;579f
	inc hl			;57a2
	jp nz,0ee45h		;57a3
	xor c			;57a6
	inc h			;57a7
	ld b,h			;57a8
	ld c,h			;57a9
	ret z			;57aa
	ex af,af'		;57ab
	jp nc,001d5h		;57ac
	ld (hl),l		;57af
	inc sp			;57b0
	ld l,(hl)		;57b1
	xor e			;57b2
	ld hl,(08b2ah)		;57b3
	call po,0c189h		;57b6
	cp d			;57b9
	dec b			;57ba
	dec b			;57bb
	dec sp			;57bc
	adc a,e			;57bd
	call nc,02b13h		;57be
	djnz l57e9h		;57c1
	adc a,c			;57c3
	pop bc			;57c4
	add hl,bc		;57c5
	xor l			;57c6
	ld l,d			;57c7
	add a,b			;57c8
	adc a,b			;57c9
	adc a,h			;57ca
	ld a,d			;57cb
	dec b			;57cc
	jp c,0a85ah		;57cd
	sbc a,091h		;57d0
	ld c,h			;57d2
	sbc a,e			;57d3
	adc a,d			;57d4
	ld h,b			;57d5
	ld (bc),a		;57d6
	call m,0d325h		;57d7
	and a			;57da
	jp nz,0e948h		;57db
	xor (hl)		;57de
	ld b,e			;57df
	sbc a,(hl)		;57e0
	ld c,d			;57e1
	pop bc			;57e2
	ld d,02bh		;57e3
	inc c			;57e5
	cp a			;57e6
l57e7h:
	inc d			;57e7
	inc hl			;57e8
l57e9h:
	dec (hl)		;57e9
	ld l,l			;57ea
	xor d			;57eb
	inc h			;57ec
	or b			;57ed
	ld (de),a		;57ee
	ld b,06ch		;57ef
	ld bc,02889h		;57f1
	ld a,(bc)		;57f4
	inc bc			;57f5
	and l			;57f6
	add a,(hl)		;57f7
	ld c,l			;57f8
	ld c,c			;57f9
	ld c,l			;57fa
	adc a,c			;57fb
	sub c			;57fc
	sub a			;57fd
	dec l			;57fe
	jr nz,l57e7h		;57ff
	ld a,0b1h		;5801
	or h			;5803
	push hl			;5804
	call c,08adfh		;5805
	and d			;5808
	ld c,c			;5809
l580ah:
	adc a,c			;580a
	sub d			;580b
	ld c,c			;580c
	cpl			;580d
	ld h,d			;580e
	ld d,d			;580f
	ld c,c			;5810
	sub l			;5811
	jr c,$-34		;5812
	and l			;5814
	and d			;5815
	ld l,l			;5816
	add a,(hl)		;5817
	jp c,00694h		;5818
	call c,023e6h		;581b
	call pe,0952ch		;581e
	ld h,a			;5821
	defb 0edh ;next byte illegal after ed	;5822
	dec hl			;5823
	xor h			;5824
	inc c			;5825
l5826h:
	dec hl			;5826
	call pe,0d41ch		;5827
	ei			;582a
	and d			;582b
	cp d			;582c
	adc a,a			;582d
	ld l,e			;582e
	jp z,0beaah		;582f
	ld de,02468h		;5832
	rlca			;5835
	rst 18h			;5836
	ld c,h			;5837
	ld e,04dh		;5838
	rst 30h			;583a
	ld h,0b4h		;583b
	sbc a,e			;583d
	sbc a,(hl)		;583e
	or c			;583f
	ld b,h			;5840
	ld (bc),a		;5841
	pop de			;5842
	ld d,h			;5843
	dec l			;5844
	cp c			;5845
	ld h,h			;5846
	and b			;5847
	and b			;5848
	jr nz,l5871h		;5849
	nop			;584b
	xor d			;584c
	call p,027f0h		;584d
	jr z,l5826h		;5850
	and b			;5852
sub_5853h:
	inc hl			;5853
	ld c,c			;5854
	adc a,e			;5855
	ld e,c			;5856
	ld h,097h		;5857
	ld (09645h),a		;5859
	call po,088a5h		;585c
	ld e,b			;585f
	ret			;5860
	inc sp			;5861
	dec hl			;5862
	add a,(hl)		;5863
	ld (hl),a		;5864
	call z,sub_7a65h	;5865
	adc a,l			;5868
	call z,sub_498ah	;5869
	jp pe,00a91h		;586c
	or h			;586f
	sbc a,d			;5870
l5871h:
	add a,c			;5871
	ld h,(hl)		;5872
	and (hl)		;5873
	ld (hl),d		;5874
	rst 18h			;5875
	add a,0d4h		;5876
	ld b,(hl)		;5878
	add a,b			;5879
	ld c,b			;587a
	ex de,hl		;587b
	jr nz,l580ah		;587c
	jp nz,01293h		;587e
	add hl,bc		;5881
	xor e			;5882
	or h			;5883
	inc d			;5884
	dec b			;5885
l5886h:
	ld c,b			;5886
	cp l			;5887
	rst 10h			;5888
	and e			;5889
	adc a,(hl)		;588a
	ld e,h			;588b
	inc l			;588c
	sub d			;588d
	jr z,l58f9h		;588e
	dec bc			;5890
	cp h			;5891
	ld d,l			;5892
	xor e			;5893
	add a,d			;5894
	ld b,c			;5895
	ld h,l			;5896
	cp h			;5897
	sub a			;5898
	jr c,l5886h		;5899
	xor h			;589b
	ret c			;589c
	adc a,d			;589d
	adc a,(hl)		;589e
	or b			;589f
	ld h,028h		;58a0
	sub h			;58a2
	pop hl			;58a3
	inc hl			;58a4
	dec bc			;58a5
	sub h			;58a6
	ld b,(hl)		;58a7
	adc a,(hl)		;58a8
	ld d,(hl)		;58a9
	pop af			;58aa
	sub e			;58ab
	xor d			;58ac
	ld d,h			;58ad
	inc b			;58ae
	inc l			;58af
	ld sp,hl		;58b0
	ld c,c			;58b1
	ld c,d			;58b2
	and b			;58b3
	ld e,d			;58b4
	ld e,(hl)		;58b5
	add a,e			;58b6
	sub d			;58b7
	adc a,d			;58b8
	xor e			;58b9
	add a,(hl)		;58ba
	ex af,af'		;58bb
	daa			;58bc
	ld l,d			;58bd
	call po,0dbc9h		;58be
	ld (l454eh),a		;58c1
	jp (hl)			;58c4
	adc a,b			;58c5
	add hl,bc		;58c6
	pop de			;58c7
	add hl,de		;58c8
	sbc a,(hl)		;58c9
	add hl,hl		;58ca
	jp 082bbh		;58cb
	dec d			;58ce
	ex af,af'		;58cf
	call m,0dea7h		;58d0
	and c			;58d3
	inc c			;58d4
	ld l,l			;58d5
	ret m			;58d6
	scf			;58d7
	xor b			;58d8
	inc d			;58d9
	ld b,e			;58da
	jp z,0bc9dh		;58db
	ld h,b			;58de
	and e			;58df
	dec hl			;58e0
	adc a,l			;58e1
	sub c			;58e2
	xor l			;58e3
	or d			;58e4
	ld hl,(026ebh)		;58e5
	xor e			;58e8
	sbc a,d			;58e9
	cp b			;58ea
	or l			;58eb
	or d			;58ec
	ld d,a			;58ed
	ld (de),a		;58ee
	ld c,d			;58ef
	xor e			;58f0
	ld b,0a7h		;58f1
	ld (hl),c		;58f3
	jp nc,l4440h		;58f4
	cp b			;58f7
	ld l,h			;58f8
l58f9h:
	xor h			;58f9
	cp d			;58fa
	jp 0e1c3h		;58fb
	ld b,h			;58fe
	ld b,a			;58ff
	rst 38h			;5900
	ld d,d			;5901
	xor (hl)		;5902
	ld e,c			;5903
	jp c,016b4h		;5904
	pop hl			;5907
	ld hl,003cch		;5908
	jp p,00da6h		;590b
	ld d,e			;590e
	ld l,l			;590f
	and h			;5910
	add hl,hl		;5911
	defb 0edh ;next byte illegal after ed	;5912
	call po,0da63h		;5913
	inc h			;5916
	sbc a,c			;5917
	xor d			;5918
	cp (hl)			;5919
	add a,a			;591a
	call nz,0c94dh		;591b
	ld h,(hl)		;591e
	inc c			;591f
	inc l			;5920
	inc c			;5921
	sbc a,l			;5922
	sbc a,l			;5923
	adc a,e			;5924
	dec l			;5925
	ld b,0cbh		;5926
	ld b,h			;5928
	push de			;5929
	call z,0cad6h		;592a
	pop bc			;592d
	ld b,a			;592e
	ld hl,(09180h)		;592f
	pop de			;5932
	jr c,l593ah		;5933
	cp (hl)			;5935
	call z,05cbdh		;5936
	ld c,c			;5939
l593ah:
	ld (hl),c		;593a
	or l			;593b
	ld b,(hl)		;593c
	sub c			;593d
	push de			;593e
	halt			;593f
	or d			;5940
	ld d,c			;5941
	scf			;5942
	and c			;5943
	rla			;5944
	ld c,c			;5945
	inc l			;5946
	call p,0ac46h		;5947
	ld hl,(0c869h)		;594a
	adc a,e			;594d
	jp 053c9h		;594e
	add a,b			;5951
	inc l			;5952
	ret p			;5953
	adc a,e			;5954
	ld c,b			;5955
	ld c,d			;5956
	push bc			;5957
	sbc a,e			;5958
	add hl,bc		;5959
	inc h			;595a
	xor h			;595b
	ld c,c			;595c
	jp nz,02852h		;595d
	ld d,e			;5960
	jp nz,004bbh		;5961
	adc a,d			;5964
	and h			;5965
	in a,(0b0h)		;5966
	daa			;5968
	ld bc,00354h		;5969
	call z,09900h		;596c
	rlca			;596f
	adc a,d			;5970
	ld (hl),c		;5971
	jp nc,0ad54h		;5972
	ret c			;5975
	jp po,0df94h		;5976
	ld b,(hl)		;5979
	rst 8			;597a
	inc l			;597b
	dec b			;597c
	rst 10h			;597d
	call pe,0cc9ch		;597e
	ld a,a			;5981
	and h			;5982
	inc (hl)		;5983
	xor l			;5984
	xor h			;5985
	inc d			;5986
	pop de			;5987
	or l			;5988
	ld (02be7h),hl		;5989
	inc c			;598c
	jp nc,02798h		;598d
	cp a			;5990
	sbc a,c			;5991
	add hl,de		;5992
	ret p			;5993
	sub c			;5994
	ld l,c			;5995
	dec hl			;5996
	adc a,a			;5997
	ld sp,hl		;5998
	sub l			;5999
	cp c			;599a
	rst 10h			;599b
	ld h,d			;599c
	call pe,096d5h		;599d
	jp (hl)			;59a0
	inc sp			;59a1
	sbc a,h			;59a2
	ld d,b			;59a3
	ex de,hl		;59a4
	inc b			;59a5
	ld e,h			;59a6
	ld l,h			;59a7
	defb 0ddh,00bh,091h ;illegal sequence	;59a8
	ex af,af'		;59ab
	nop			;59ac
	rst 8			;59ad
	ld b,l			;59ae
	push af			;59af
	xor e			;59b0
	sbc a,e			;59b1
	ld b,e			;59b2
	cp c			;59b3
	jp pe,0c94dh		;59b4
	xor d			;59b7
	add hl,hl		;59b8
	ld d,d			;59b9
	ld c,l			;59ba
	rst 38h			;59bb
	jp p,0a025h		;59bc
	ld l,l			;59bf
	sbc a,a			;59c0
	ld h,(hl)		;59c1
	in a,(0c9h)		;59c2
	jp z,00266h		;59c4
	ld (hl),e		;59c7
	add hl,hl		;59c8
	adc a,c			;59c9
	inc d			;59ca
	pop hl			;59cb
	ld c,c			;59cc
	ld d,d			;59cd
	ld h,l			;59ce
	or (hl)			;59cf
	djnz l5a1ch		;59d0
	ld b,a			;59d2
	ind			;59d3
	or l			;59d5
	ld a,(de)		;59d6
	call z,091ddh		;59d7
	defb 0fdh,06dh ;ld iyl,iyl	;59da
	ld c,d			;59dc
	ld b,l			;59dd
	xor h			;59de
	sbc a,(hl)		;59df
	ld sp,hl		;59e0
	xor l			;59e1
	halt			;59e2
	call po,0f5a7h		;59e3
	and 0d9h		;59e6
	inc h			;59e8
	or l			;59e9
	ld c,e			;59ea
	ld l,d			;59eb
	and 00ch		;59ec
	ld (0c00bh),hl		;59ee
	sbc a,a			;59f1
	adc a,e			;59f2
	sbc a,c			;59f3
	sub c			;59f4
	cp a			;59f5
	ld c,(hl)		;59f6
	adc a,d			;59f7
sub_59f8h:
	ret			;59f8
	out (057h),a		;59f9
	ld (01107h),hl		;59fb
	inc l			;59fe
	call pe,sub_77e4h	;59ff
	sbc a,d			;5a02
	dec d			;5a03
	add hl,bc		;5a04
	ld sp,09a48h		;5a05
	ld l,d			;5a08
	or e			;5a09
	ld e,h			;5a0a
	ld (l72bah),a		;5a0b
	ld (0cf92h),hl		;5a0e
	call po,025f5h		;5a11
	ld (bc),a		;5a14
	ld c,(hl)		;5a15
	ld h,b			;5a16
	call pe,sub_59f8h	;5a17
	sbc a,d			;5a1a
	ret			;5a1b
l5a1ch:
	ld l,l			;5a1c
	inc b			;5a1d
	adc a,b			;5a1e
	ld b,c			;5a1f
	ld l,b			;5a20
	ld h,00eh		;5a21
	add a,05ah		;5a23
	ld e,c			;5a25
	ld e,b			;5a26
	sbc a,b			;5a27
	ld e,b			;5a28
	res 1,c			;5a29
	inc d			;5a2b
	dec b			;5a2c
	ld h,a			;5a2d
	ex af,af'		;5a2e
	add a,c			;5a2f
	adc a,c			;5a30
	and a			;5a31
	dec d			;5a32
	add hl,hl		;5a33
	ret p			;5a34
	push af			;5a35
	rst 8			;5a36
	ld c,(hl)		;5a37
	call pe,0cfc9h		;5a38
	and (hl)		;5a3b
	ld c,b			;5a3c
	sub 0c4h		;5a3d
	inc c			;5a3f
	ret			;5a40
	call po,0d889h		;5a41
	cp 08ah			;5a44
	ld h,a			;5a46
	inc bc			;5a47
	push de			;5a48
	halt			;5a49
	or d			;5a4a
	dec hl			;5a4b
	add a,b			;5a4c
	add a,006h		;5a4d
	cp a			;5a4f
	add a,06bh		;5a50
	ld h,a			;5a52
	call 0250ch		;5a53
	sbc a,a			;5a56
	xor e			;5a57
	ret po			;5a58
	inc hl			;5a59
	ret po			;5a5a
	ld h,(hl)		;5a5b
	ret nz			;5a5c
	ld b,(hl)		;5a5d
	jp pe,02bd0h		;5a5e
	add hl,bc		;5a61
	add a,l			;5a62
	ld (0d623h),a		;5a63
	add hl,hl		;5a66
	push bc			;5a67
	ld b,a			;5a68
	inc bc			;5a69
	rst 0			;5a6a
	daa			;5a6b
	rst 28h			;5a6c
	call po,098d2h		;5a6d
	adc a,(hl)		;5a70
	ld (hl),d		;5a71
	call 005a4h		;5a72
	adc a,(hl)		;5a75
	ld d,h			;5a76
	ld b,a			;5a77
	pop af			;5a78
	ld bc,02849h		;5a79
	inc c			;5a7c
	dec b			;5a7d
	call nz,009abh		;5a7e
	and e			;5a81
	ld (0cccah),hl		;5a82
	jp (hl)			;5a85
	jp po,0989ch		;5a86
	ld l,b			;5a89
	ld d,b			;5a8a
	call pe,0a149h		;5a8b
	adc a,b			;5a8e
	adc a,d			;5a8f
	dec bc			;5a90
	dec a			;5a91
	inc bc			;5a92
	jp p,0eb15h		;5a93
	ld a,d			;5a96
	ld b,a			;5a97
	or h			;5a98
	cp c			;5a99
	rst 8			;5a9a
	ld l,e			;5a9b
	ld e,l			;5a9c
	ld d,l			;5a9d
	jr z,l5ad9h		;5a9e
	cpl			;5aa0
	rl l			;5aa1
	ld d,b			;5aa3
	jp (hl)			;5aa4
	add a,(hl)		;5aa5
	cp d			;5aa6
	pop de			;5aa7
	ld b,e			;5aa8
	ld l,c			;5aa9
	ld c,b			;5aaa
	ld h,d			;5aab
	ld l,d			;5aac
	adc a,e			;5aad
	push de			;5aae
	add a,0fch		;5aaf
	xor e			;5ab1
	ld a,e			;5ab2
	ld b,l			;5ab3
	rst 20h			;5ab4
	rra			;5ab5
	ld e,c			;5ab6
	add a,l			;5ab7
	adc a,a			;5ab8
	dec d			;5ab9
	ld b,c			;5aba
	adc a,b			;5abb
	jp m,0aa29h		;5abc
	ret p			;5abf
	rst 8			;5ac0
	ld l,d			;5ac1
	ld a,d			;5ac2
	in a,(08ch)		;5ac3
	ld (hl),a		;5ac5
	or h			;5ac6
	adc a,h			;5ac7
	or h			;5ac8
	sbc a,e			;5ac9
	adc a,e			;5aca
	sub c			;5acb
	xor b			;5acc
	add hl,hl		;5acd
	dec bc			;5ace
	ld h,0c6h		;5acf
	ld h,0b0h		;5ad1
	and b			;5ad3
	ld c,b			;5ad4
	add hl,hl		;5ad5
	jp pe,0d4a5h		;5ad6
l5ad9h:
	ld sp,001ech		;5ad9
	ld a,(0fe69h)		;5adc
	ld c,c			;5adf
	rst 10h			;5ae0
	sbc a,b			;5ae1
	add a,a			;5ae2
	xor (hl)		;5ae3
	ld l,h			;5ae4
l5ae5h:
	cp d			;5ae5
	sub e			;5ae6
	xor (hl)		;5ae7
	ei			;5ae8
	ld l,d			;5ae9
	cp c			;5aea
	ld c,h			;5aeb
	dec hl			;5aec
	sbc a,l			;5aed
	ld (hl),c		;5aee
	ld b,b			;5aef
	ld sp,hl		;5af0
	ld hl,(02328h)		;5af1
	ld b,c			;5af4
	ld (l7198h),hl		;5af5
	ld b,043h		;5af8
	ret z			;5afa
	ld h,009h		;5afb
	ld l,d			;5afd
	ld (hl),b		;5afe
	xor b			;5aff
	jr nc,l5b4bh		;5b00
	adc a,a			;5b02
	ld a,e			;5b03
	ld c,l			;5b04
	or h			;5b05
	rst 8			;5b06
	cp b			;5b07
	adc a,c			;5b08
	ret p			;5b09
	xor a			;5b0a
	xor b			;5b0b
	ld l,b			;5b0c
	and l			;5b0d
	and b			;5b0e
	ld b,l			;5b0f
	add hl,bc		;5b10
	ld d,b			;5b11
	ld b,023h		;5b12
	inc a			;5b14
	cp (hl)			;5b15
	exx			;5b16
	ret			;5b17
	sub 020h		;5b18
	ld d,b			;5b1a
	dec l			;5b1b
	inc (hl)		;5b1c
	call pe,02925h		;5b1d
	xor e			;5b20
	jp (hl)			;5b21
	and a			;5b22
	jp p,0f2a6h		;5b23
	jp c,0b62fh		;5b26
	add a,(hl)		;5b29
	rlca			;5b2a
	ld b,(hl)		;5b2b
	ld (0deb0h),hl		;5b2c
	pop de			;5b2f
	ld (de),a		;5b30
	ld h,(hl)		;5b31
	ex de,hl		;5b32
	ret po			;5b33
	dec hl			;5b34
	jr z,l5b6ch		;5b35
	pop af			;5b37
	inc (hl)		;5b38
	jp po,l61a7h		;5b39
	rst 20h			;5b3c
	jr z,l5ad9h		;5b3d
	daa			;5b3f
	jp pe,l6220h		;5b40
	ld (bc),a		;5b43
	adc a,a			;5b44
	dec d			;5b45
	pop de			;5b46
	sub e			;5b47
	cp (hl)			;5b48
	ld d,d			;5b49
	ld b,h			;5b4a
l5b4bh:
	inc d			;5b4b
	ld b,(hl)		;5b4c
	xor b			;5b4d
	xor l			;5b4e
	xor b			;5b4f
	and d			;5b50
	sub c			;5b51
	jp nc,032e5h		;5b52
	ld h,h			;5b55
	ld l,b			;5b56
	sub h			;5b57
	inc b			;5b58
	or d			;5b59
	ld c,b			;5b5a
	add hl,bc		;5b5b
	rst 0			;5b5c
	rst 20h			;5b5d
	inc b			;5b5e
	defb 0edh ;next byte illegal after ed	;5b5f
	ld h,(hl)		;5b60
	ld b,0e0h		;5b61
	cp b			;5b63
	nop			;5b64
	and l			;5b65
	ld (bc),a		;5b66
	djnz $+34		;5b67
	defb 0ddh,027h,083h ;illegal sequence	;5b69
l5b6ch:
	dec l			;5b6c
	ld b,b			;5b6d
	rst 38h			;5b6e
	ld b,b			;5b6f
	defb 0edh ;next byte illegal after ed	;5b70
	ld h,026h		;5b71
	xor d			;5b73
	or h			;5b74
	adc a,e			;5b75
	xor 0e1h		;5b76
	ld b,b			;5b78
	inc bc			;5b79
	ld bc,0ed24h		;5b7a
	ld b,l			;5b7d
	ld (bc),a		;5b7e
	call nc,045a2h		;5b7f
	ld e,h			;5b82
	or b			;5b83
	inc e			;5b84
	ld b,h			;5b85
	dec a			;5b86
	defb 0edh ;next byte illegal after ed	;5b87
	ld bc,08a9dh		;5b88
	adc a,b			;5b8b
	jr nc,l5badh		;5b8c
	or d			;5b8e
	defb 0fdh,00bh,093h ;illegal sequence	;5b8f
	call m,0a2efh		;5b92
	ld b,(hl)		;5b95
	dec b			;5b96
	add a,e			;5b97
	ld h,h			;5b98
	adc a,b			;5b99
	ld a,(03402h)		;5b9a
	defb 0edh ;next byte illegal after ed	;5b9d
	nop			;5b9e
	call po,sub_4006h	;5b9f
l5ba2h:
	ex af,af'		;5ba2
	jp (hl)			;5ba3
	ld (bc),a		;5ba4
	ld h,0cch		;5ba5
	out (0eah),a		;5ba7
	inc h			;5ba9
	add hl,hl		;5baa
	inc h			;5bab
	inc h			;5bac
l5badh:
	ld de,l4980h		;5bad
	add a,b			;5bb0
	ret z			;5bb1
	sub 025h		;5bb2
	ld e,h			;5bb4
	ld a,092h		;5bb5
	ld (hl),l		;5bb7
	dec b			;5bb8
	add hl,hl		;5bb9
	and h			;5bba
	and h			;5bbb
	ld b,l			;5bbc
	dec b			;5bbd
	inc (hl)		;5bbe
	inc hl			;5bbf
	jr nz,l5bcfh		;5bc0
	jp (hl)			;5bc2
	sub 0b4h		;5bc3
	push hl			;5bc5
	inc de			;5bc6
	xor d			;5bc7
	call nc,058ddh		;5bc8
	rst 8			;5bcb
	sub e			;5bcc
	ld e,c			;5bcd
	dec h			;5bce
l5bcfh:
	ld l,l			;5bcf
	ld (hl),085h		;5bd0
	sub (hl)		;5bd2
	ld c,a			;5bd3
	dec b			;5bd4
	dec b			;5bd5
	sub c			;5bd6
	ld d,c			;5bd7
	add a,b			;5bd8
	ld d,c			;5bd9
	rlca			;5bda
	ret p			;5bdb
	push bc			;5bdc
	rrca			;5bdd
	and c			;5bde
	ld (de),a		;5bdf
	ld (bc),a		;5be0
	xor a			;5be1
	ld c,b			;5be2
	and l			;5be3
	and l			;5be4
	rrca			;5be5
	ld b,l			;5be6
	ld (hl),b		;5be7
	ld b,(hl)		;5be8
	inc (hl)		;5be9
	nop			;5bea
	ret nc			;5beb
	ret nz			;5bec
	ld c,d			;5bed
	inc bc			;5bee
	ld (bc),a		;5bef
	ret po			;5bf0
	ret po			;5bf1
	ld h,(hl)		;5bf2
	cpdr			;5bf3
	inc h			;5bf5
	inc b			;5bf6
	dec a			;5bf7
	add a,a			;5bf8
	sub b			;5bf9
	ld e,b			;5bfa
	jr c,l5c21h		;5bfb
	ld (0ed21h),a		;5bfd
	jr l5c2bh		;5c00
	ld d,c			;5c02
	ld c,b			;5c03
	ld l,e			;5c04
	pop af			;5c05
	ld e,020h		;5c06
	ld c,b			;5c08
	ret nz			;5c09
	sub c			;5c0a
	xor b			;5c0b
	add hl,hl		;5c0c
	adc a,b			;5c0d
	rlc h			;5c0e
	ld c,c			;5c10
	defb 0edh ;next byte illegal after ed	;5c11
	daa			;5c12
	and h			;5c13
	ld e,b			;5c14
	inc a			;5c15
	inc b			;5c16
	adc a,d			;5c17
	add a,a			;5c18
	rst 18h			;5c19
	ld hl,(l7a1ah)		;5c1a
	or d			;5c1d
	ret c			;5c1e
	or c			;5c1f
	ld c,e			;5c20
l5c21h:
	ld b,l			;5c21
	jp 0bdd8h		;5c22
	ld d,(hl)		;5c25
	jp pe,08422h		;5c26
	xor d			;5c29
	rla			;5c2a
l5c2bh:
	xor d			;5c2b
	ld d,d			;5c2c
	ld b,085h		;5c2d
	adc a,0adh		;5c2f
	inc h			;5c31
	jr nz,l5c62h		;5c32
	inc h			;5c34
	ld (hl),h		;5c35
	dec b			;5c36
	sbc a,d			;5c37
	call 0f31eh		;5c38
	defb 0fdh,07ah,03fh ;illegal sequence	;5c3b
	add a,a			;5c3e
	ld hl,(01f20h)		;5c3f
	ld d,h			;5c42
	ld h,(hl)		;5c43
	daa			;5c44
	ld h,0cfh		;5c45
	ld h,l			;5c47
	jp 08bach		;5c48
	ld d,d			;5c4b
	jp z,08e48h		;5c4c
	defb 0edh ;next byte illegal after ed	;5c4f
	adc a,d			;5c50
	ld a,e			;5c51
	ld h,b			;5c52
	ld b,b			;5c53
	ld b,d			;5c54
	or (hl)			;5c55
	pop af			;5c56
	dec b			;5c57
	adc a,(hl)		;5c58
	jr z,l5c7bh		;5c59
	adc a,h			;5c5b
	jp po,08892h		;5c5c
	adc a,c			;5c5f
	ld c,(hl)		;5c60
	cp b			;5c61
l5c62h:
	and h			;5c62
	or a			;5c63
	and h			;5c64
	ld a,(bc)		;5c65
	add a,l			;5c66
	sub h			;5c67
	sub d			;5c68
	adc a,h			;5c69
	sbc a,h			;5c6a
	sub c			;5c6b
	add a,l			;5c6c
	ld b,0e4h		;5c6d
	djnz l5c71h		;5c6f
l5c71h:
	ld b,d			;5c71
	ld b,0b8h		;5c72
	rla			;5c74
	add a,(hl)		;5c75
	ld sp,hl		;5c76
	call nz,0dc27h		;5c77
	xor c			;5c7a
l5c7bh:
	out (016h),a		;5c7b
	ld sp,hl		;5c7d
	sub d			;5c7e
	rra			;5c7f
	rlca			;5c80
	ld c,e			;5c81
	ret			;5c82
	ld b,c			;5c83
	add a,d			;5c84
	ld (de),a		;5c85
	dec b			;5c86
	ld a,(bc)		;5c87
	ld h,(hl)		;5c88
	adc a,(hl)		;5c89
	ret z			;5c8a
	xor e			;5c8b
	or h			;5c8c
	sbc a,(hl)		;5c8d
	exx			;5c8e
	sub h			;5c8f
	ld l,b			;5c90
	sbc a,c			;5c91
	inc d			;5c92
	dec d			;5c93
	ld h,08bh		;5c94
	and c			;5c96
	ld b,h			;5c97
	inc h			;5c98
	call pe,0c6aah		;5c99
	add hl,de		;5c9c
	cp a			;5c9d
	ld a,l			;5c9e
	sbc a,(hl)		;5c9f
	ld a,(bc)		;5ca0
	ld (0e224h),hl		;5ca1
	set 1,d			;5ca4
	ld e,b			;5ca6
	adc a,h			;5ca7
	ret nz			;5ca8
	dec b			;5ca9
	add a,b			;5caa
	ld h,b			;5cab
	ld h,0a2h		;5cac
	ld (de),a		;5cae
	jp c,l5ba2h		;5caf
	sub h			;5cb2
	ld h,(hl)		;5cb3
	dec b			;5cb4
	or 0d4h			;5cb5
	ld a,008h		;5cb7
	inc a			;5cb9
	xor b			;5cba
l5cbbh:
	sbc a,h			;5cbb
	call nz,0d98ah		;5cbc
	ret c			;5cbf
	ld (hl),03fh		;5cc0
	or h			;5cc2
	push af			;5cc3
	cp e			;5cc4
	jp z,01118h		;5cc5
	ld b,b			;5cc8
	rst 0			;5cc9
	ld d,l			;5cca
	djnz $-48		;5ccb
	ld l,b			;5ccd
	adc a,l			;5cce
	ld b,b			;5ccf
	ld d,(hl)		;5cd0
	ld b,b			;5cd1
	dec c			;5cd2
	inc hl			;5cd3
	ld b,e			;5cd4
	ld b,(hl)		;5cd5
	adc a,(hl)		;5cd6
	ld h,d			;5cd7
	ld e,c			;5cd8
	inc hl			;5cd9
	ld d,(hl)		;5cda
	call z,sub_4f31h	;5cdb
	cp d			;5cde
	jp nc,09241h		;5cdf
	ld h,l			;5ce2
	inc h			;5ce3
	inc h			;5ce4
	nop			;5ce5
	ld (hl),l		;5ce6
	ld d,h			;5ce7
	inc b			;5ce8
	djnz $-9		;5ce9
	sbc a,d			;5ceb
	pop bc			;5cec
	adc a,b			;5ced
	ld c,b			;5cee
	or b			;5cef
	and h			;5cf0
	or 0ach			;5cf1
	push af			;5cf3
	call p,0b3beh		;5cf4
	exx			;5cf7
	ld a,(de)		;5cf8
	inc c			;5cf9
	inc hl			;5cfa
	defb 0edh ;next byte illegal after ed	;5cfb
	inc a			;5cfc
	sub d			;5cfd
	ld c,0a8h		;5cfe
	dec a			;5d00
	ld hl,0c935h		;5d01
	jr nz,l5cbbh		;5d04
	ld h,0d8h		;5d06
	ld h,l			;5d08
	jr nz,$+117		;5d09
	rla			;5d0b
	and d			;5d0c
	inc h			;5d0d
	pop de			;5d0e
	sub c			;5d0f
	and l			;5d10
	ld b,l			;5d11
	jp p,02954h		;5d12
	ld (bc),a		;5d15
	and b			;5d16
	ld (de),a		;5d17
	ldir			;5d18
	sub (hl)		;5d1a
	ld bc,044c1h		;5d1b
	dec b			;5d1e
	ld (02433h),hl		;5d1f
	and h			;5d22
	or a			;5d23
	ld (02548h),a		;5d24
	ld e,a			;5d27
	ld e,b			;5d28
	and l			;5d29
	inc sp			;5d2a
	ret nc			;5d2b
	daa			;5d2c
	cp l			;5d2d
	ld d,l			;5d2e
	ld bc,0a91ah		;5d2f
	call po,04a92h		;5d32
	inc b			;5d35
	jp z,02a4ah		;5d36
	ccf			;5d39
	sub h			;5d3a
	ld (hl),b		;5d3b
	jr nz,$+88		;5d3c
	ld e,e			;5d3e
	jr z,l5d85h		;5d3f
	inc h			;5d41
	xor b			;5d42
	ld (bc),a		;5d43
	adc a,c			;5d44
	sub d			;5d45
	nop			;5d46
	ld b,b			;5d47
	dec h			;5d48
	ld h,(hl)		;5d49
	call c,0aa28h		;5d4a
	adc a,c			;5d4d
	sbc a,d			;5d4e
	ld b,b			;5d4f
	call c,0cc34h		;5d50
	sub (hl)		;5d53
	ret m			;5d54
	or b			;5d55
	ld hl,00440h		;5d56
	ld b,b			;5d59
	adc a,d			;5d5a
	or b			;5d5b
	or h			;5d5c
	ld c,d			;5d5d
	jr nc,l5dd5h		;5d5e
	sbc a,d			;5d60
	or b			;5d61
	ld b,b			;5d62
	or h			;5d63
	sub l			;5d64
	ld d,h			;5d65
	xor c			;5d66
	ld a,(de)		;5d67
	ld hl,(091bch)		;5d68
	and h			;5d6b
	ld d,(hl)		;5d6c
	ret po			;5d6d
	ld c,d			;5d6e
	ret c			;5d6f
	ld b,h			;5d70
	ld a,a			;5d71
	nop			;5d72
	ld b,l			;5d73
	xor l			;5d74
	ld b,l			;5d75
	inc bc			;5d76
	dec h			;5d77
	sbc a,d			;5d78
	dec d			;5d79
	ret z			;5d7a
	sub c			;5d7b
	call 0488ah		;5d7c
	add a,e			;5d7f
	ld c,d			;5d80
	call p,0d624h		;5d81
	sbc a,h			;5d84
l5d85h:
	push hl			;5d85
	adc a,l			;5d86
	adc a,(hl)		;5d87
	adc a,d			;5d88
	sbc a,e			;5d89
	jp m,03d2ah		;5d8a
l5d8dh:
	sbc a,h			;5d8d
	ld l,d			;5d8e
	jp nc,09849h		;5d8f
	jp po,0b6f9h		;5d92
	xor e			;5d95
	ld (0b2d2h),a		;5d96
	sbc hl,de		;5d99
	halt			;5d9b
	and d			;5d9c
	ld b,c			;5d9d
	call p,0da9ch		;5d9e
	sub d			;5da1
	add a,d			;5da2
	jp nc,l4968h+2		;5da3
	ld sp,0c28ah		;5da6
	ld (de),a		;5da9
	ld d,h			;5daa
	daa			;5dab
	ld a,e			;5dac
	ld c,e			;5dad
	or 053h			;5dae
	ld a,(de)		;5db0
	ld b,(hl)		;5db1
	adc a,e			;5db2
	call sub_46e7h		;5db3
	ld h,0a8h		;5db6
	ld h,d			;5db8
	ld (bc),a		;5db9
	xor h			;5dba
	ld l,d			;5dbb
	sub b			;5dbc
	push bc			;5dbd
	rlca			;5dbe
	or l			;5dbf
	inc de			;5dc0
	jp (hl)			;5dc1
	ld (09422h),hl		;5dc2
	sbc a,h			;5dc5
	sub d			;5dc6
	call nz,09485h		;5dc7
	sbc a,b			;5dca
	and h			;5dcb
	sbc a,l			;5dcc
	adc a,d			;5dcd
	and c			;5dce
	sub d			;5dcf
	or d			;5dd0
	ld d,d			;5dd1
	call nc,0a9b1h		;5dd2
l5dd5h:
	ex af,af'		;5dd5
	ld e,l			;5dd6
	and (hl)		;5dd7
	add hl,hl		;5dd8
	ld c,b			;5dd9
	jp p,02155h		;5dda
	ld c,e			;5ddd
	exx			;5dde
	add hl,de		;5ddf
	jp 0cb75h		;5de0
	dec b			;5de3
	defb 0edh ;next byte illegal after ed	;5de4
	inc h			;5de5
	ld sp,hl		;5de6
	inc c			;5de7
	ld h,09fh		;5de8
	ret c			;5dea
	sub c			;5deb
	sub d			;5dec
	ld b,(hl)		;5ded
	sbc a,(hl)		;5dee
	inc h			;5def
	ld h,a			;5df0
	rra			;5df1
	jr nz,l5d8dh		;5df2
	call po,09990h		;5df4
	add a,d			;5df7
	ld e,d			;5df8
	xor b			;5df9
	ld h,(hl)		;5dfa
	xor b			;5dfb
	call nc,sub_5853h	;5dfc
	xor a			;5dff
	push hl			;5e00
	ld l,h			;5e01
	jp 00459h		;5e02
	sbc a,e			;5e05
	and c			;5e06
	sub a			;5e07
	sub b			;5e08
	sub c			;5e09
	ret nz			;5e0a
	ld b,(hl)		;5e0b
	in a,(023h)		;5e0c
	ld h,0d9h		;5e0e
	add hl,de		;5e10
	jr z,l5e77h		;5e11
	xor l			;5e13
	add hl,hl		;5e14
	xor h			;5e15
	add hl,sp		;5e16
	dec d			;5e17
	add hl,hl		;5e18
	ld b,(hl)		;5e19
	adc a,l			;5e1a
	daa			;5e1b
	sub c			;5e1c
	add hl,hl		;5e1d
	ld b,h			;5e1e
	add hl,de		;5e1f
	ld h,0ach		;5e20
	dec d			;5e22
	sbc a,h			;5e23
	exx			;5e24
	jp nz,03799h		;5e25
	ld h,(hl)		;5e28
	or (hl)			;5e29
	rst 0			;5e2a
	adc a,d			;5e2b
	ld (bc),a		;5e2c
	jp nz,l4aa9h		;5e2d
	ld l,h			;5e30
	ld c,b			;5e31
	dec hl			;5e32
	ld l,l			;5e33
	or a			;5e34
	jp c,l78a5h		;5e35
	ld a,(de)		;5e38
	ld d,l			;5e39
	add hl,sp		;5e3a
	adc a,h			;5e3b
	sub e			;5e3c
	and h			;5e3d
	ld d,l			;5e3e
	jr nz,$+35		;5e3f
	ld b,d			;5e41
	and b			;5e42
	dec sp			;5e43
	ret nc			;5e44
	add hl,sp		;5e45
	cp (hl)			;5e46
	ld e,c			;5e47
	or b			;5e48
	ld c,c			;5e49
	add a,a			;5e4a
	ld c,c			;5e4b
	add a,l			;5e4c
	dec d			;5e4d
	adc a,b			;5e4e
	and l			;5e4f
	or (hl)			;5e50
	dec h			;5e51
	rlca			;5e52
	sbc a,l			;5e53
	add a,l			;5e54
	ld l,(hl)		;5e55
	ld (hl),a		;5e56
	ld d,d			;5e57
	dec bc			;5e58
	ld e,e			;5e59
	nop			;5e5a
	dec hl			;5e5b
	and (hl)		;5e5c
	add hl,hl		;5e5d
	and a			;5e5e
	pop hl			;5e5f
	ld sp,hl		;5e60
	ld bc,(0a976h)		;5e61
	add a,082h		;5e65
	add hl,hl		;5e67
	ld l,b			;5e68
	and e			;5e69
	ld l,h			;5e6a
	ld a,c			;5e6b
sub_5e6ch:
	ld a,(09194h)		;5e6c
	ld d,e			;5e6f
	jr z,l5eb8h		;5e70
	jp z,0c84dh		;5e72
	and c			;5e75
	dec d			;5e76
l5e77h:
	sub h			;5e77
	dec h			;5e78
	rst 18h			;5e79
	sub h			;5e7a
	xor e			;5e7b
	sub h			;5e7c
	sub h			;5e7d
	sub d			;5e7e
	rst 8			;5e7f
	adc a,d			;5e80
	inc bc			;5e81
	dec b			;5e82
	and b			;5e83
	ld (hl),d		;5e84
	add a,e			;5e85
	ld c,c			;5e86
	sbc a,(hl)		;5e87
	ld b,(hl)		;5e88
	ld b,b			;5e89
	add a,025h		;5e8a
	defb 0edh ;next byte illegal after ed	;5e8c
	and h			;5e8d
	jp c,02063h		;5e8e
	ld (hl),d		;5e91
	dec h			;5e92
	sub (hl)		;5e93
	dec h			;5e94
	sbc a,h			;5e95
	daa			;5e96
	push de			;5e97
	inc e			;5e98
	ld h,09ah		;5e99
	ld d,c			;5e9b
	adc a,e			;5e9c
	dec c			;5e9d
	ld e,b			;5e9e
	ld b,a			;5e9f
	xor b			;5ea0
	sub l			;5ea1
	ret c			;5ea2
	ld b,(hl)		;5ea3
	add a,h			;5ea4
	ld c,(hl)		;5ea5
	or l			;5ea6
	ld de,l4508h		;5ea7
	ei			;5eaa
	ld d,h			;5eab
	dec a			;5eac
	ld d,a			;5ead
	and 0abh		;5eae
	defb 0edh ;next byte illegal after ed	;5eb0
	in a,(017h)		;5eb1
	jr l5ee7h		;5eb3
	rra			;5eb5
	sbc a,e			;5eb6
	inc h			;5eb7
l5eb8h:
	ld l,b			;5eb8
	call c,0f7eeh		;5eb9
	ld (0e004h),hl		;5ebc
	ld d,c			;5ebf
	add a,b			;5ec0
	ld b,058h		;5ec1
	ld h,e			;5ec3
	ld e,d			;5ec4
	inc hl			;5ec5
	adc a,d			;5ec6
	add a,e			;5ec7
	sub d			;5ec8
	add hl,hl		;5ec9
	and e			;5eca
	xor b			;5ecb
	ld (hl),b		;5ecc
	ret nc			;5ecd
	cp e			;5ece
	rl d			;5ecf
	nop			;5ed1
	or d			;5ed2
	ld d,l			;5ed3
	ld h,c			;5ed4
	call p,08e93h		;5ed5
	sbc a,c			;5ed8
	jr nc,$+124		;5ed9
	cpl			;5edb
	ld b,b			;5edc
	call nc,00055h		;5edd
	di			;5ee0
	or a			;5ee1
	or 095h			;5ee2
	ld h,l			;5ee4
	ld l,09bh		;5ee5
l5ee7h:
	ld a,e			;5ee7
	rst 0			;5ee8
	ld d,h			;5ee9
	jp po,09d93h		;5eea
	ld c,b			;5eed
	ld c,b			;5eee
	nop			;5eef
	jp nc,0bbcch		;5ef0
	ld e,l			;5ef3
	adc a,0a4h		;5ef4
	sub a			;5ef6
	or c			;5ef7
	inc bc			;5ef8
	sub (hl)		;5ef9
	inc hl			;5efa
	ld l,(hl)		;5efb
	inc bc			;5efc
	add hl,hl		;5efd
	sbc a,l			;5efe
	jr nc,l5f49h		;5eff
	ld (bc),a		;5f01
	and h			;5f02
	rst 38h			;5f03
	ret z			;5f04
	ld l,(hl)		;5f05
	pop bc			;5f06
	ret			;5f07
	ret po			;5f08
	ld c,b			;5f09
	pop bc			;5f0a
	xor c			;5f0b
	add a,h			;5f0c
	dec l			;5f0d
	adc a,c			;5f0e
l5f0fh:
	inc h			;5f0f
	add a,l			;5f10
	and l			;5f11
	ld b,0b9h		;5f12
	ld sp,l69a6h		;5f14
	ld h,(hl)		;5f17
	ret pe			;5f18
	and h			;5f19
	ld e,a			;5f1a
	ld h,09dh		;5f1b
	and (hl)		;5f1d
	ld d,c			;5f1e
	ld b,l			;5f1f
	xor e			;5f20
	ld a,a			;5f21
	ld l,d			;5f22
	and c			;5f23
	call 08581h		;5f24
	ld l,c			;5f27
	sub d			;5f28
	ld (0ce47h),hl		;5f29
	adc a,e			;5f2c
	and (hl)		;5f2d
	and h			;5f2e
	defb 0ddh,0a2h,0f3h ;illegal sequence	;5f2f
	ld (hl),h		;5f32
	adc a,e			;5f33
	cp a			;5f34
	or e			;5f35
	ld (l52c7h),a		;5f36
	defb 0fdh,0e8h,0f4h ;illegal sequence	;5f39
	ret			;5f3c
	add a,d			;5f3d
	ld c,c			;5f3e
	and c			;5f3f
	xor c			;5f40
	add hl,bc		;5f41
	and e			;5f42
	ld (0bca2h),hl		;5f43
	defb 0ddh,08ah,0a0h ;illegal sequence	;5f46
l5f49h:
	and l			;5f49
	ld d,(hl)		;5f4a
	ld e,a			;5f4b
	ld d,e			;5f4c
	ld b,01ch		;5f4d
	defb 0fdh,092h,0cdh ;illegal sequence	;5f4f
	ld l,b			;5f52
	adc a,d			;5f53
	ld hl,0d38bh		;5f54
	call nz,08852h		;5f57
	ld d,d			;5f5a
l5f5bh:
	dec hl			;5f5b
	adc a,e			;5f5c
	adc a,(hl)		;5f5d
	ld e,036h		;5f5e
	ld a,(hl)		;5f60
	sub d			;5f61
	ld c,e			;5f62
	dec b			;5f63
	xor a			;5f64
	dec hl			;5f65
	and a			;5f66
	inc hl			;5f67
	or 029h			;5f68
	ld d,d			;5f6a
	sbc a,(hl)		;5f6b
	xor b			;5f6c
	cp h			;5f6d
	xor l			;5f6e
	or c			;5f6f
	or h			;5f70
	cp 094h			;5f71
	add a,d			;5f73
	adc a,d			;5f74
	ex (sp),hl		;5f75
	and b			;5f76
	pop af			;5f77
	ld b,(hl)		;5f78
	sub (hl)		;5f79
	ld d,0f9h		;5f7a
	ld h,d			;5f7c
	ld l,b			;5f7d
	adc a,e			;5f7e
	jp nc,0d42eh		;5f7f
	or l			;5f82
	jp m,0f2a9h		;5f83
	adc a,0ech		;5f86
	ld e,c			;5f88
	xor d			;5f89
	jp z,0cf74h		;5f8a
	inc sp			;5f8d
	ld c,b			;5f8e
	inc sp			;5f8f
	adc a,(hl)		;5f90
	inc h			;5f91
	inc e			;5f92
	inc h			;5f93
	jp (hl)			;5f94
	ld d,e			;5f95
	push bc			;5f96
	adc a,h			;5f97
	ld h,l			;5f98
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
	jr nz,l6058h		;600a
	ld h,l			;600c
	halt			;600d
	ld h,l			;600e
	ld l,h			;600f
	jr nz,l6045h		;6010
	jr nz,$+47		;6012
	jr nz,l606ah		;6014
	ld l,b			;6016
	ld h,l			;6017
	jr nz,l605eh		;6018
	ld h,l			;601a
	ld (hl),e		;601b
	ld h,e			;601c
	ld h,l			;601d
	ld l,(hl)		;601e
	ld h,h			;601f
	jr nz,l6042h		;6020
	jr nz,l6044h		;6022
	jr nz,l6046h		;6024
	jr nz,l6048h		;6026
	jr nz,l604ah		;6028
	jr nz,l604ch		;602a
	jr nz,l604eh		;602c
	jr nz,l6050h		;602e
	jr nz,$+34		;6030
	jr nz,l6054h		;6032
	jr nz,l6056h		;6034
	jr nz,l6058h		;6036
	jr nz,$+34		;6038
l603ah:
	jr nz,l605ch		;603a
	jr nz,l605eh		;603c
	jr nz,l6060h		;603e
	jr nz,l6062h		;6040
l6042h:
	jr nz,l6091h		;6042
l6044h:
	ld d,l			;6044
l6045h:
	ld d,e			;6045
l6046h:
	ld c,c			;6046
	ld c,(hl)		;6047
l6048h:
	ld d,e			;6048
	ld d,h			;6049
l604ah:
	ld d,d			;604a
	ld d,e			;604b
l604ch:
	ld b,d			;604c
	ld c,e			;604d
l604eh:
	cpl			;604e
	nop			;604f
l6050h:
	nop			;6050
	ld bc,00302h		;6051
l6054h:
	inc b			;6054
	dec b			;6055
l6056h:
	ld b,007h		;6056
l6058h:
	ex af,af'		;6058
	ld bc,00302h		;6059
l605ch:
	inc b			;605c
	dec b			;605d
l605eh:
	ld b,007h		;605e
l6060h:
	ex af,af'		;6060
	add hl,bc		;6061
l6062h:
	ld a,(bc)		;6062
	dec bc			;6063
	inc c			;6064
	dec c			;6065
	ld c,00fh		;6066
	djnz l6073h		;6068
l606ah:
	ld a,(bc)		;606a
	dec bc			;606b
	inc c			;606c
	dec c			;606d
	ld c,00fh		;606e
	djnz l6083h		;6070
	ld (de),a		;6072
l6073h:
	inc de			;6073
	inc d			;6074
	dec d			;6075
	ld d,017h		;6076
	jr l6093h		;6078
	ld a,(de)		;607a
	dec de			;607b
	inc e			;607c
	dec e			;607d
	ld e,01fh		;607e
	jr nz,l6082h		;6080
l6082h:
	nop			;6082
l6083h:
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
l6093h:
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
	inc d			;6151
	rrca			;6152
	rrca			;6153
	rrca			;6154
	rrca			;6155
	rrca			;6156
	dec de			;6157
	ld sp,0171ch		;6158
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
l61a7h:
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
	rst 38h			;61c0
	rst 38h			;61c1
	rst 38h			;61c2
	rst 38h			;61c3
	rst 38h			;61c4
	rst 38h			;61c5
	rst 38h			;61c6
	rst 38h			;61c7
	rst 38h			;61c8
	rst 38h			;61c9
	rst 38h			;61ca
	rst 38h			;61cb
	rst 38h			;61cc
	rst 38h			;61cd
	rst 38h			;61ce
	rst 38h			;61cf
	rst 38h			;61d0
	rst 38h			;61d1
	rst 38h			;61d2
	rst 38h			;61d3
	rst 38h			;61d4
	rst 38h			;61d5
	rst 38h			;61d6
	rst 38h			;61d7
	rst 38h			;61d8
	rst 38h			;61d9
	rst 38h			;61da
	rst 38h			;61db
	rst 38h			;61dc
	rst 38h			;61dd
	rst 38h			;61de
	rst 38h			;61df
	rst 38h			;61e0
	rst 38h			;61e1
	rst 38h			;61e2
	rst 38h			;61e3
	rst 38h			;61e4
	rst 38h			;61e5
	rst 38h			;61e6
	rst 38h			;61e7
	rst 38h			;61e8
	rst 38h			;61e9
	rst 38h			;61ea
	rst 38h			;61eb
	rst 38h			;61ec
	rst 38h			;61ed
	rst 38h			;61ee
	rst 38h			;61ef
	rst 38h			;61f0
	rst 38h			;61f1
	rst 38h			;61f2
	rst 38h			;61f3
	rst 38h			;61f4
	rst 38h			;61f5
	rst 38h			;61f6
	rst 38h			;61f7
	rst 38h			;61f8
	rst 38h			;61f9
	rst 38h			;61fa
	rst 38h			;61fb
	rst 38h			;61fc
	rst 38h			;61fd
	rst 38h			;61fe
	rst 38h			;61ff
	rst 38h			;6200
	rst 38h			;6201
	rst 38h			;6202
	rst 38h			;6203
	rst 38h			;6204
	rst 38h			;6205
	rst 38h			;6206
	rst 38h			;6207
	rst 38h			;6208
	rst 38h			;6209
	rst 38h			;620a
	rst 38h			;620b
	rst 38h			;620c
	rst 38h			;620d
	rst 38h			;620e
	rst 38h			;620f
	rst 38h			;6210
	rst 38h			;6211
	rst 38h			;6212
	rst 38h			;6213
	rst 38h			;6214
	rst 38h			;6215
	rst 38h			;6216
	rst 38h			;6217
	rst 38h			;6218
	rst 38h			;6219
	rst 38h			;621a
	rst 38h			;621b
	rst 38h			;621c
	rst 38h			;621d
	rst 38h			;621e
	rst 38h			;621f
l6220h:
	rst 38h			;6220
	rst 38h			;6221
	rst 38h			;6222
	rst 38h			;6223
	rst 38h			;6224
	rst 38h			;6225
	rst 38h			;6226
	rst 38h			;6227
	rst 38h			;6228
	rst 38h			;6229
	rst 38h			;622a
	rst 38h			;622b
	rst 38h			;622c
	rst 38h			;622d
	rst 38h			;622e
	rst 38h			;622f
	rst 38h			;6230
	rst 38h			;6231
	rst 38h			;6232
	rst 38h			;6233
	rst 38h			;6234
	rst 38h			;6235
	rst 38h			;6236
	rst 38h			;6237
	rst 38h			;6238
	rst 38h			;6239
	rst 38h			;623a
	rst 38h			;623b
	rst 38h			;623c
	rst 38h			;623d
	rst 38h			;623e
	rst 38h			;623f
	rst 38h			;6240
	rst 38h			;6241
	rst 38h			;6242
	rst 38h			;6243
	rst 38h			;6244
	rst 38h			;6245
	rst 38h			;6246
	rst 38h			;6247
	rst 38h			;6248
	rst 38h			;6249
	rst 38h			;624a
	rst 38h			;624b
	rst 38h			;624c
	rst 38h			;624d
	rst 38h			;624e
	rst 38h			;624f
	rst 38h			;6250
	rst 38h			;6251
	rst 38h			;6252
	rst 38h			;6253
	rst 38h			;6254
	rst 38h			;6255
	rst 38h			;6256
	rst 38h			;6257
	rst 38h			;6258
	rst 38h			;6259
	rst 38h			;625a
	rst 38h			;625b
	rst 38h			;625c
	rst 38h			;625d
	rst 38h			;625e
	rst 38h			;625f
	rst 38h			;6260
	rst 38h			;6261
	rst 38h			;6262
	rst 38h			;6263
	rst 38h			;6264
	rst 38h			;6265
	rst 38h			;6266
	rst 38h			;6267
	rst 38h			;6268
	rst 38h			;6269
	rst 38h			;626a
	rst 38h			;626b
	rst 38h			;626c
	rst 38h			;626d
	rst 38h			;626e
	rst 38h			;626f
	rst 38h			;6270
	rst 38h			;6271
	rst 38h			;6272
	rst 38h			;6273
	rst 38h			;6274
	rst 38h			;6275
	rst 38h			;6276
	rst 38h			;6277
	rst 38h			;6278
	rst 38h			;6279
	rst 38h			;627a
	rst 38h			;627b
	rst 38h			;627c
	rst 38h			;627d
	rst 38h			;627e
	rst 38h			;627f
	ld (de),a		;6280
	rrca			;6281
	ld (hl),004h		;6282
	nop			;6284
	nop			;6285
	inc l			;6286
	ld a,(bc)		;6287
	dec h			;6288
	rlca			;6289
	dec b			;628a
	ld d,06ch		;628b
	rlca			;628d
	ld l,h			;628e
	rlca			;628f
	nop			;6290
	nop			;6291
	ld h,e			;6292
	djnz $+105		;6293
	ld (bc),a		;6295
	nop			;6296
	add hl,de		;6297
	dec c			;6298
	rrca			;6299
	ld sp,00004h		;629a
	nop			;629d
	ld sp,02a0ah		;629e
	rlca			;62a1
	inc bc			;62a2
	ld d,06ch		;62a3
	rlca			;62a5
	ld l,h			;62a6
	rlca			;62a7
	nop			;62a8
	nop			;62a9
	nop			;62aa
	nop			;62ab
	ld l,d			;62ac
	ld bc,01900h		;62ad
	inc d			;62b0
	rrca			;62b1
	jr c,l62b8h		;62b2
	nop			;62b4
	nop			;62b5
	nop			;62b6
	nop			;62b7
l62b8h:
	nop			;62b8
	nop			;62b9
	inc bc			;62ba
	ld d,06ch		;62bb
	rlca			;62bd
	ld l,h			;62be
	rlca			;62bf
	nop			;62c0
	nop			;62c1
	nop			;62c2
	nop			;62c3
	nop			;62c4
	nop			;62c5
	nop			;62c6
	add hl,de		;62c7
	dec c			;62c8
	rrca			;62c9
	ld sp,00004h		;62ca
	nop			;62cd
	ld h,a			;62ce
	ld (bc),a		;62cf
	ld h,a			;62d0
	ld (bc),a		;62d1
	dec b			;62d2
	ld d,06ch		;62d3
	rlca			;62d5
	ld l,h			;62d6
	rlca			;62d7
	nop			;62d8
	nop			;62d9
	nop			;62da
	nop			;62db
	nop			;62dc
	nop			;62dd
	nop			;62de
	add hl,de		;62df
	add hl,de		;62e0
	rrca			;62e1
	dec a			;62e2
	inc b			;62e3
	nop			;62e4
	nop			;62e5
	cpl			;62e6
	ld a,(bc)		;62e7
	dec h			;62e8
	rlca			;62e9
	inc bc			;62ea
	rla			;62eb
	ld l,h			;62ec
	rlca			;62ed
	ld l,h			;62ee
	rlca			;62ef
	nop			;62f0
	nop			;62f1
	nop			;62f2
	nop			;62f3
	nop			;62f4
	nop			;62f5
	inc bc			;62f6
	rla			;62f7
	dec c			;62f8
	rrca			;62f9
	ld sp,00004h		;62fa
	nop			;62fd
	ld l,00ah		;62fe
	inc l			;6300
l6301h:
	rlca			;6301
	inc bc			;6302
	ld d,06ch		;6303
	rlca			;6305
	ld l,h			;6306
	rlca			;6307
	nop			;6308
	nop			;6309
	nop			;630a
	nop			;630b
	nop			;630c
	nop			;630d
	nop			;630e
	add hl,de		;630f
	inc d			;6310
	rrca			;6311
	jr c,l6318h		;6312
	nop			;6314
	nop			;6315
	ld h,a			;6316
	ld (bc),a		;6317
l6318h:
	ld h,a			;6318
	ld (bc),a		;6319
	inc bc			;631a
	ld d,06ch		;631b
	rlca			;631d
	ld l,h			;631e
	rlca			;631f
	nop			;6320
	nop			;6321
	nop			;6322
	nop			;6323
	nop			;6324
	nop			;6325
	nop			;6326
	add hl,de		;6327
	dec c			;6328
	rrca			;6329
	ld sp,00004h		;632a
	nop			;632d
	nop			;632e
	nop			;632f
	nop			;6330
	nop			;6331
	dec b			;6332
	ld d,06ch		;6333
	rlca			;6335
	ld l,h			;6336
	rlca			;6337
	nop			;6338
	nop			;6339
	nop			;633a
	nop			;633b
	nop			;633c
	nop			;633d
	nop			;633e
	add hl,de		;633f
	rla			;6340
	rrca			;6341
	dec sp			;6342
	inc b			;6343
	nop			;6344
	nop			;6345
	ld sp,0250ah		;6346
	rlca			;6349
	ld (bc),a		;634a
	ld d,06ch		;634b
	rlca			;634d
	ld l,h			;634e
	rlca			;634f
	nop			;6350
	nop			;6351
	ld h,e			;6352
	djnz l63b8h		;6353
	djnz l6357h		;6355
l6357h:
	add hl,de		;6357
	dec c			;6358
	rrca			;6359
	ld sp,00004h		;635a
	nop			;635d
	ld (hl),00ah		;635e
	ld sp,00307h		;6360
	ld d,06ch		;6363
	rlca			;6365
	ld l,h			;6366
	rlca			;6367
	nop			;6368
	nop			;6369
	nop			;636a
	nop			;636b
	nop			;636c
	nop			;636d
	nop			;636e
	add hl,de		;636f
	ld d,00fh		;6370
	ld a,(00004h)		;6372
	nop			;6375
	ld h,a			;6376
	ld bc,00167h		;6377
	inc bc			;637a
	ld d,06ch		;637b
	rlca			;637d
	ld l,h			;637e
	rlca			;637f
	nop			;6380
	nop			;6381
	nop			;6382
	nop			;6383
	nop			;6384
	nop			;6385
	nop			;6386
	add hl,de		;6387
	dec c			;6388
	rrca			;6389
	ld sp,00004h		;638a
	nop			;638d
	nop			;638e
	nop			;638f
	nop			;6390
	nop			;6391
	nop			;6392
	ld d,06ch		;6393
	rlca			;6395
	ld l,h			;6396
	rlca			;6397
	nop			;6398
	nop			;6399
	nop			;639a
	nop			;639b
	nop			;639c
	nop			;639d
	nop			;639e
	add hl,de		;639f
	inc d			;63a0
	rrca			;63a1
	jr c,l63a8h		;63a2
	nop			;63a4
	nop			;63a5
	jr c,l63b2h		;63a6
l63a8h:
	ld sp,00307h		;63a8
	rla			;63ab
	ld l,h			;63ac
	rlca			;63ad
	ld l,h			;63ae
	rlca			;63af
	nop			;63b0
	nop			;63b1
l63b2h:
	nop			;63b2
	nop			;63b3
	nop			;63b4
	nop			;63b5
	inc bc			;63b6
	rla			;63b7
l63b8h:
	dec c			;63b8
	rrca			;63b9
	ld sp,00004h		;63ba
	nop			;63bd
	ld a,(0360ah)		;63be
	rlca			;63c1
	inc bc			;63c2
	ld d,06ch		;63c3
	rlca			;63c5
	ld l,h			;63c6
	rlca			;63c7
	nop			;63c8
	nop			;63c9
	nop			;63ca
	nop			;63cb
	nop			;63cc
	nop			;63cd
	nop			;63ce
	add hl,de		;63cf
	ld (de),a		;63d0
	rrca			;63d1
	ld (hl),004h		;63d2
	nop			;63d4
	nop			;63d5
	dec sp			;63d6
	ld a,(bc)		;63d7
	jr c,l63e1h		;63d8
	dec b			;63da
	ld d,06ch		;63db
	rlca			;63dd
	ld l,h			;63de
	rlca			;63df
	nop			;63e0
l63e1h:
	nop			;63e1
	nop			;63e2
	nop			;63e3
	nop			;63e4
	nop			;63e5
	nop			;63e6
	add hl,de		;63e7
	dec c			;63e8
	rrca			;63e9
	ld sp,00004h		;63ea
	nop			;63ed
	nop			;63ee
	nop			;63ef
	nop			;63f0
	nop			;63f1
	dec b			;63f2
	ld d,06ch		;63f3
	rlca			;63f5
	ld l,h			;63f6
	rlca			;63f7
	nop			;63f8
	nop			;63f9
	nop			;63fa
	nop			;63fb
	nop			;63fc
	nop			;63fd
	nop			;63fe
	add hl,de		;63ff
	inc d			;6400
	rrca			;6401
	jr c,l6408h		;6402
	nop			;6404
	nop			;6405
	nop			;6406
	nop			;6407
l6408h:
	nop			;6408
	nop			;6409
	inc bc			;640a
	ld d,06ch		;640b
	rlca			;640d
	ld l,h			;640e
	rlca			;640f
	nop			;6410
	nop			;6411
	nop			;6412
	nop			;6413
	nop			;6414
	nop			;6415
	nop			;6416
	add hl,de		;6417
	dec c			;6418
	rrca			;6419
	ld sp,00004h		;641a
	nop			;641d
	ld h,a			;641e
	ld (bc),a		;641f
	ld h,a			;6420
	ld (bc),a		;6421
	nop			;6422
	ld d,06ch		;6423
	rlca			;6425
	ld l,h			;6426
	rlca			;6427
	nop			;6428
	nop			;6429
	nop			;642a
	nop			;642b
	nop			;642c
	nop			;642d
	nop			;642e
	add hl,de		;642f
	dec c			;6430
	rrca			;6431
	ld sp,00004h		;6432
	nop			;6435
	nop			;6436
	nop			;6437
	nop			;6438
	nop			;6439
	inc bc			;643a
	ld d,06ch		;643b
	rlca			;643d
	ld l,h			;643e
	rlca			;643f
	nop			;6440
	nop			;6441
	nop			;6442
	nop			;6443
	nop			;6444
	nop			;6445
	nop			;6446
	add hl,de		;6447
	dec c			;6448
	rrca			;6449
	ld sp,00004h		;644a
	nop			;644d
	nop			;644e
	nop			;644f
	nop			;6450
	nop			;6451
	dec b			;6452
	ld d,06ch		;6453
	rlca			;6455
	ld l,h			;6456
	rlca			;6457
	nop			;6458
	nop			;6459
	nop			;645a
	nop			;645b
	nop			;645c
	nop			;645d
	nop			;645e
	add hl,de		;645f
	djnz l6471h		;6460
	inc (hl)		;6462
	inc b			;6463
	nop			;6464
	nop			;6465
	nop			;6466
	nop			;6467
	nop			;6468
	nop			;6469
	inc bc			;646a
	rla			;646b
	ld l,h			;646c
	rlca			;646d
	ld l,h			;646e
	rlca			;646f
	nop			;6470
l6471h:
	nop			;6471
	nop			;6472
	nop			;6473
	nop			;6474
	nop			;6475
	inc bc			;6476
	rla			;6477
	dec c			;6478
	rrca			;6479
	ld sp,00004h		;647a
	nop			;647d
	dec a			;647e
	ld a,(bc)		;647f
	inc (hl)		;6480
	rlca			;6481
	inc bc			;6482
	ld d,06ch		;6483
	rlca			;6485
	ld l,h			;6486
	rlca			;6487
	nop			;6488
	nop			;6489
	nop			;648a
	nop			;648b
	nop			;648c
	nop			;648d
	nop			;648e
	add hl,de		;648f
	ld (de),a		;6490
	rrca			;6491
	ld (hl),004h		;6492
	nop			;6494
	nop			;6495
	dec sp			;6496
	ld a,(bc)		;6497
	inc sp			;6498
	rlca			;6499
	ld (bc),a		;649a
	ld d,06ch		;649b
	rlca			;649d
	ld l,h			;649e
	rlca			;649f
	nop			;64a0
	nop			;64a1
	nop			;64a2
	nop			;64a3
	nop			;64a4
	nop			;64a5
	nop			;64a6
	add hl,de		;64a7
	dec c			;64a8
	rrca			;64a9
	ld sp,00004h		;64aa
	nop			;64ad
	ld a,(0310ah)		;64ae
	rlca			;64b1
	inc bc			;64b2
	ld d,06ch		;64b3
	rlca			;64b5
	ld l,h			;64b6
	rlca			;64b7
	nop			;64b8
	nop			;64b9
	nop			;64ba
	nop			;64bb
	nop			;64bc
	nop			;64bd
	nop			;64be
	add hl,de		;64bf
	rrca			;64c0
	rrca			;64c1
	inc sp			;64c2
	inc b			;64c3
	nop			;64c4
	nop			;64c5
	dec sp			;64c6
	ld a,(bc)		;64c7
	inc sp			;64c8
	rlca			;64c9
	inc bc			;64ca
	rla			;64cb
	ld l,h			;64cc
	rlca			;64cd
	ld l,h			;64ce
	rlca			;64cf
	nop			;64d0
	nop			;64d1
	nop			;64d2
	nop			;64d3
	nop			;64d4
	nop			;64d5
	inc bc			;64d6
	rla			;64d7
	djnz l64e9h		;64d8
	inc (hl)		;64da
	inc b			;64db
	nop			;64dc
	nop			;64dd
	ld a,(0340ah)		;64de
	rlca			;64e1
	inc bc			;64e2
	ld d,06ch		;64e3
	rlca			;64e5
	ld l,h			;64e6
	rlca			;64e7
	nop			;64e8
l64e9h:
	nop			;64e9
	ld h,a			;64ea
	ld (bc),a		;64eb
	ld l,h			;64ec
	add hl,bc		;64ed
	nop			;64ee
	add hl,de		;64ef
	dec bc			;64f0
	rrca			;64f1
	cpl			;64f2
	inc b			;64f3
	nop			;64f4
	nop			;64f5
	jr c,l6502h		;64f6
	inc (hl)		;64f8
	rlca			;64f9
	ld (bc),a		;64fa
	ld d,06ch		;64fb
	rlca			;64fd
	ld l,h			;64fe
	rlca			;64ff
	nop			;6500
	nop			;6501
l6502h:
	nop			;6502
	nop			;6503
	nop			;6504
	nop			;6505
	nop			;6506
	add hl,de		;6507
	inc b			;6508
	rrca			;6509
	jr z,l6510h		;650a
	nop			;650c
	nop			;650d
	nop			;650e
	nop			;650f
l6510h:
	nop			;6510
	nop			;6511
	inc bc			;6512
	ld d,06ch		;6513
	rlca			;6515
	ld l,h			;6516
l6517h:
	rlca			;6517
	nop			;6518
	nop			;6519
	nop			;651a
	nop			;651b
	nop			;651c
	nop			;651d
	nop			;651e
	add hl,de		;651f
	djnz l6531h		;6520
	inc (hl)		;6522
	inc b			;6523
	nop			;6524
	nop			;6525
	inc (hl)		;6526
	ld a,(bc)		;6527
	cpl			;6528
	rlca			;6529
	inc bc			;652a
	rla			;652b
	ld l,h			;652c
	rlca			;652d
	ld l,h			;652e
	rlca			;652f
	nop			;6530
l6531h:
	nop			;6531
	nop			;6532
	nop			;6533
	nop			;6534
	nop			;6535
	inc bc			;6536
	rla			;6537
	rrca			;6538
	rrca			;6539
	inc sp			;653a
	inc b			;653b
	nop			;653c
	nop			;653d
	nop			;653e
	nop			;653f
	nop			;6540
	nop			;6541
	inc bc			;6542
	ld d,06ch		;6543
	rlca			;6545
	ld l,h			;6546
	rlca			;6547
	nop			;6548
	nop			;6549
	nop			;654a
	nop			;654b
	nop			;654c
	nop			;654d
	nop			;654e
	add hl,de		;654f
	ld c,00fh		;6550
	ld (00004h),a		;6552
	nop			;6555
	ld h,a			;6556
	ld bc,00167h		;6557
	inc bc			;655a
	ld d,06ch		;655b
	rlca			;655d
	ld l,h			;655e
	rlca			;655f
	nop			;6560
	nop			;6561
	nop			;6562
	nop			;6563
	nop			;6564
	nop			;6565
	nop			;6566
	add hl,de		;6567
	dec bc			;6568
	rrca			;6569
	cpl			;656a
	inc b			;656b
	nop			;656c
	nop			;656d
	nop			;656e
	nop			;656f
	nop			;6570
	nop			;6571
	ld (bc),a		;6572
	ld d,06ch		;6573
	rlca			;6575
	ld l,h			;6576
	rlca			;6577
	nop			;6578
	nop			;6579
	nop			;657a
	nop			;657b
	nop			;657c
	nop			;657d
	nop			;657e
	add hl,de		;657f
	ld (de),a		;6580
	rrca			;6581
	ld (hl),004h		;6582
	nop			;6584
	nop			;6585
	jr c,l6592h		;6586
	ld sp,00507h		;6588
	ld d,06ch		;658b
	rlca			;658d
	ld l,h			;658e
	rlca			;658f
	nop			;6590
	nop			;6591
l6592h:
	ld l,h			;6592
	rlca			;6593
	ld l,h			;6594
	rlca			;6595
	nop			;6596
	add hl,de		;6597
	dec c			;6598
	rrca			;6599
	ld sp,00004h		;659a
	nop			;659d
	jr c,l65aah		;659e
	ld sp,00307h		;65a0
	ld d,06ch		;65a3
	rlca			;65a5
	ld l,h			;65a6
	rlca			;65a7
	nop			;65a8
	nop			;65a9
l65aah:
	nop			;65aa
	nop			;65ab
	nop			;65ac
	nop			;65ad
	nop			;65ae
	add hl,de		;65af
	inc d			;65b0
	rrca			;65b1
	jr c,l65b8h		;65b2
	nop			;65b4
	nop			;65b5
	nop			;65b6
	nop			;65b7
l65b8h:
	nop			;65b8
	nop			;65b9
	inc bc			;65ba
	ld d,06ch		;65bb
	rlca			;65bd
	ld l,h			;65be
	rlca			;65bf
	nop			;65c0
	nop			;65c1
	nop			;65c2
	nop			;65c3
	nop			;65c4
	nop			;65c5
	nop			;65c6
	add hl,de		;65c7
	dec c			;65c8
	rrca			;65c9
	ld sp,00004h		;65ca
	nop			;65cd
	ld h,a			;65ce
	ld (bc),a		;65cf
	ld h,a			;65d0
	ld (bc),a		;65d1
	dec b			;65d2
	ld d,06ch		;65d3
	rlca			;65d5
	ld l,h			;65d6
	rlca			;65d7
	nop			;65d8
	nop			;65d9
	nop			;65da
	nop			;65db
	nop			;65dc
	nop			;65dd
	nop			;65de
	add hl,de		;65df
	add hl,de		;65e0
	rrca			;65e1
	dec a			;65e2
	inc b			;65e3
	nop			;65e4
	nop			;65e5
	inc l			;65e6
	ld a,(bc)		;65e7
	cpl			;65e8
	rlca			;65e9
	inc bc			;65ea
	rla			;65eb
	ld l,h			;65ec
	rlca			;65ed
	ld l,h			;65ee
	rlca			;65ef
	nop			;65f0
	nop			;65f1
	nop			;65f2
	nop			;65f3
	nop			;65f4
	nop			;65f5
	inc bc			;65f6
	rla			;65f7
	dec c			;65f8
	rrca			;65f9
	ld sp,00004h		;65fa
	nop			;65fd
	jr c,l660ah		;65fe
	ld sp,00307h		;6600
	ld d,06ch		;6603
	rlca			;6605
	ld l,h			;6606
	rlca			;6607
	nop			;6608
	nop			;6609
l660ah:
	nop			;660a
	nop			;660b
	nop			;660c
	nop			;660d
	nop			;660e
	add hl,de		;660f
	inc d			;6610
	rrca			;6611
	jr c,l6618h		;6612
l6614h:
	nop			;6614
	nop			;6615
	ld h,a			;6616
	ld (bc),a		;6617
l6618h:
	ld h,a			;6618
	ld (bc),a		;6619
	inc bc			;661a
	ld d,06ch		;661b
	rlca			;661d
	ld l,h			;661e
	rlca			;661f
	nop			;6620
	nop			;6621
	nop			;6622
	nop			;6623
	nop			;6624
	nop			;6625
	nop			;6626
	add hl,de		;6627
	dec c			;6628
	rrca			;6629
	ld sp,00004h		;662a
	nop			;662d
	nop			;662e
	nop			;662f
	nop			;6630
	nop			;6631
	dec b			;6632
	ld d,06ch		;6633
	rlca			;6635
	ld l,h			;6636
	rlca			;6637
	nop			;6638
	nop			;6639
	nop			;663a
	nop			;663b
	nop			;663c
	nop			;663d
	nop			;663e
	add hl,de		;663f
	rla			;6640
	rrca			;6641
	dec sp			;6642
	inc b			;6643
	nop			;6644
	nop			;6645
	ld sp,0340ah		;6646
	rlca			;6649
	ld (bc),a		;664a
	ld d,06ch		;664b
	rlca			;664d
	ld l,h			;664e
	rlca			;664f
	nop			;6650
	nop			;6651
	ld h,e			;6652
	djnz l66b8h		;6653
	djnz l6657h		;6655
l6657h:
	add hl,de		;6657
	dec c			;6658
	rrca			;6659
	ld sp,00004h		;665a
	nop			;665d
	ld (hl),00ah		;665e
	dec sp			;6660
	rlca			;6661
	inc bc			;6662
	ld d,06ch		;6663
	rlca			;6665
	ld l,h			;6666
	rlca			;6667
	nop			;6668
	nop			;6669
	nop			;666a
	nop			;666b
	nop			;666c
	nop			;666d
	nop			;666e
	add hl,de		;666f
	ld d,00fh		;6670
	ld a,(00004h)		;6672
	nop			;6675
	ld h,a			;6676
	ld bc,00167h		;6677
	inc bc			;667a
	ld d,06ch		;667b
	rlca			;667d
	ld l,h			;667e
	rlca			;667f
	nop			;6680
	nop			;6681
	nop			;6682
	nop			;6683
	nop			;6684
	nop			;6685
	nop			;6686
	add hl,de		;6687
	dec c			;6688
	rrca			;6689
	ld sp,00004h		;668a
	nop			;668d
	nop			;668e
	nop			;668f
	nop			;6690
	nop			;6691
	nop			;6692
	ld d,06ch		;6693
	rlca			;6695
	ld l,h			;6696
	rlca			;6697
	nop			;6698
	nop			;6699
	nop			;669a
	nop			;669b
	nop			;669c
	nop			;669d
	nop			;669e
	add hl,de		;669f
	inc d			;66a0
	rrca			;66a1
	jr c,l66a8h		;66a2
	nop			;66a4
	nop			;66a5
	jr c,l66b2h		;66a6
l66a8h:
	inc sp			;66a8
	add hl,bc		;66a9
	inc bc			;66aa
	rla			;66ab
	ld l,h			;66ac
	rlca			;66ad
	ld l,h			;66ae
	rlca			;66af
	nop			;66b0
	nop			;66b1
l66b2h:
	ld l,h			;66b2
	rlca			;66b3
	ld l,h			;66b4
	rlca			;66b5
	inc bc			;66b6
	rla			;66b7
l66b8h:
	dec c			;66b8
	rrca			;66b9
	ld sp,00004h		;66ba
	nop			;66bd
	jr c,l66cah		;66be
	inc (hl)		;66c0
	add hl,bc		;66c1
	inc bc			;66c2
	ld d,06ch		;66c3
	rlca			;66c5
	ld l,h			;66c6
	rlca			;66c7
	nop			;66c8
	nop			;66c9
l66cah:
	nop			;66ca
	nop			;66cb
	nop			;66cc
	nop			;66cd
	nop			;66ce
	add hl,de		;66cf
	ld (de),a		;66d0
	rrca			;66d1
	ld (hl),004h		;66d2
	nop			;66d4
	nop			;66d5
	ccf			;66d6
	ld a,(bc)		;66d7
	ld (hl),009h		;66d8
	dec b			;66da
	ld d,06ch		;66db
	rlca			;66dd
	ld l,h			;66de
	rlca			;66df
	nop			;66e0
	nop			;66e1
	nop			;66e2
	nop			;66e3
	nop			;66e4
	nop			;66e5
	nop			;66e6
	add hl,de		;66e7
	dec c			;66e8
	rrca			;66e9
	ld sp,00004h		;66ea
	nop			;66ed
	ld h,a			;66ee
	ld bc,00167h		;66ef
	dec b			;66f2
	rla			;66f3
	ld l,h			;66f4
	rlca			;66f5
	ld l,h			;66f6
	rlca			;66f7
	nop			;66f8
	nop			;66f9
	nop			;66fa
	nop			;66fb
	nop			;66fc
	nop			;66fd
	nop			;66fe
	rla			;66ff
	inc d			;6700
	rrca			;6701
	jr c,l6708h		;6702
	nop			;6704
	nop			;6705
	nop			;6706
	nop			;6707
l6708h:
	nop			;6708
	nop			;6709
	inc bc			;670a
	ld d,06ch		;670b
	rlca			;670d
	ld l,h			;670e
	rlca			;670f
	nop			;6710
	nop			;6711
	nop			;6712
	nop			;6713
	nop			;6714
	nop			;6715
	nop			;6716
	add hl,de		;6717
	dec c			;6718
	rrca			;6719
	ld sp,00004h		;671a
	nop			;671d
	nop			;671e
	nop			;671f
	nop			;6720
	nop			;6721
	nop			;6722
	ld d,06ch		;6723
	rlca			;6725
	ld l,h			;6726
	rlca			;6727
	nop			;6728
	nop			;6729
	nop			;672a
	nop			;672b
	nop			;672c
	nop			;672d
	nop			;672e
	add hl,de		;672f
	dec c			;6730
	rrca			;6731
	ld sp,00004h		;6732
	nop			;6735
	nop			;6736
	nop			;6737
	nop			;6738
	nop			;6739
	inc bc			;673a
	ld d,06ch		;673b
	rlca			;673d
	ld l,h			;673e
	rlca			;673f
	nop			;6740
	nop			;6741
	nop			;6742
	nop			;6743
	nop			;6744
	nop			;6745
	nop			;6746
	add hl,de		;6747
	dec c			;6748
	rrca			;6749
	ld sp,00004h		;674a
	nop			;674d
	nop			;674e
	nop			;674f
l6750h:
	nop			;6750
	nop			;6751
	dec b			;6752
	ld d,06ch		;6753
	rlca			;6755
	ld l,h			;6756
	rlca			;6757
	nop			;6758
	nop			;6759
	nop			;675a
	nop			;675b
	nop			;675c
	nop			;675d
	nop			;675e
	add hl,de		;675f
	djnz l6771h		;6760
	inc (hl)		;6762
	inc b			;6763
	nop			;6764
	nop			;6765
	nop			;6766
	nop			;6767
	nop			;6768
	nop			;6769
	inc bc			;676a
	rla			;676b
	ld l,h			;676c
	rlca			;676d
	ld l,h			;676e
	rlca			;676f
	nop			;6770
l6771h:
	nop			;6771
	nop			;6772
	nop			;6773
	nop			;6774
	nop			;6775
sub_6776h:
	inc bc			;6776
	rla			;6777
	dec c			;6778
	rrca			;6779
	ld sp,00004h		;677a
	nop			;677d
	dec a			;677e
	ld a,(bc)		;677f
	jr c,l678bh		;6780
	inc bc			;6782
	ld d,06ch		;6783
	rlca			;6785
	ld l,h			;6786
	rlca			;6787
	nop			;6788
	nop			;6789
	nop			;678a
l678bh:
	nop			;678b
	nop			;678c
	nop			;678d
	nop			;678e
	add hl,de		;678f
	ld (de),a		;6790
	rrca			;6791
	ld (hl),004h		;6792
	nop			;6794
	nop			;6795
	dec sp			;6796
	ld a,(bc)		;6797
	ld (hl),009h		;6798
	ld (bc),a		;679a
	ld d,06ch		;679b
	rlca			;679d
	ld l,h			;679e
	rlca			;679f
	nop			;67a0
	nop			;67a1
	nop			;67a2
	nop			;67a3
	nop			;67a4
	nop			;67a5
	nop			;67a6
	add hl,de		;67a7
	dec c			;67a8
	rrca			;67a9
	ld sp,00004h		;67aa
	nop			;67ad
	ld a,(0310ah)		;67ae
	add hl,bc		;67b1
	inc bc			;67b2
	ld d,06ch		;67b3
	rlca			;67b5
	ld l,h			;67b6
	rlca			;67b7
	nop			;67b8
	nop			;67b9
	nop			;67ba
	nop			;67bb
	nop			;67bc
	nop			;67bd
	nop			;67be
	add hl,de		;67bf
	rrca			;67c0
	rrca			;67c1
	inc sp			;67c2
	inc b			;67c3
	nop			;67c4
	nop			;67c5
	dec a			;67c6
	ld a,(bc)		;67c7
	ld (hl),009h		;67c8
	inc bc			;67ca
	rla			;67cb
	ld l,h			;67cc
	rlca			;67cd
	ld l,h			;67ce
	rlca			;67cf
	nop			;67d0
	nop			;67d1
	ld h,e			;67d2
	ld (bc),a		;67d3
	ld h,e			;67d4
	ld (bc),a		;67d5
	inc bc			;67d6
	rla			;67d7
	djnz l67e9h		;67d8
	inc (hl)		;67da
	inc b			;67db
	nop			;67dc
	nop			;67dd
	dec sp			;67de
	ld a,(bc)		;67df
	inc (hl)		;67e0
	add hl,bc		;67e1
	inc bc			;67e2
	ld d,06ch		;67e3
	rlca			;67e5
	ld l,h			;67e6
	rlca			;67e7
	nop			;67e8
l67e9h:
	nop			;67e9
	nop			;67ea
	nop			;67eb
	nop			;67ec
	nop			;67ed
	nop			;67ee
	add hl,de		;67ef
	dec bc			;67f0
	rrca			;67f1
	cpl			;67f2
	inc b			;67f3
	nop			;67f4
	nop			;67f5
	ld a,(0330ah)		;67f6
	add hl,bc		;67f9
	ld (bc),a		;67fa
	ld d,06ch		;67fb
	rlca			;67fd
	ld l,h			;67fe
	rlca			;67ff
	nop			;6800
	nop			;6801
	nop			;6802
	nop			;6803
	nop			;6804
	nop			;6805
	nop			;6806
	add hl,de		;6807
	inc b			;6808
	rrca			;6809
	jr z,l6810h		;680a
	nop			;680c
	nop			;680d
	ld (hl),00ah		;680e
l6810h:
	cpl			;6810
	add hl,bc		;6811
	inc bc			;6812
	ld d,06ch		;6813
	rlca			;6815
	ld l,h			;6816
	rlca			;6817
	nop			;6818
	nop			;6819
	nop			;681a
	nop			;681b
	nop			;681c
	nop			;681d
	nop			;681e
	add hl,de		;681f
	djnz l6831h		;6820
	inc (hl)		;6822
	inc b			;6823
	nop			;6824
	nop			;6825
	inc (hl)		;6826
	ld a,(bc)		;6827
	inc l			;6828
	add hl,bc		;6829
	inc bc			;682a
	rla			;682b
	ld l,h			;682c
	rlca			;682d
	ld l,h			;682e
	rlca			;682f
	nop			;6830
l6831h:
	nop			;6831
	nop			;6832
	nop			;6833
	nop			;6834
	nop			;6835
	inc bc			;6836
	rla			;6837
	rrca			;6838
	rrca			;6839
	inc sp			;683a
	inc b			;683b
	nop			;683c
	nop			;683d
	ld h,a			;683e
	ld bc,00167h		;683f
	inc bc			;6842
	ld d,06ch		;6843
	rlca			;6845
	ld l,h			;6846
	rlca			;6847
	nop			;6848
	nop			;6849
	nop			;684a
	nop			;684b
	nop			;684c
	nop			;684d
	nop			;684e
	add hl,de		;684f
	ld c,00fh		;6850
	ld (00004h),a		;6852
	nop			;6855
	nop			;6856
	nop			;6857
	nop			;6858
	nop			;6859
	inc bc			;685a
	ld d,06ch		;685b
	rlca			;685d
	ld l,h			;685e
	rlca			;685f
	nop			;6860
	nop			;6861
	nop			;6862
	nop			;6863
	nop			;6864
	nop			;6865
	nop			;6866
	add hl,de		;6867
	dec bc			;6868
	rrca			;6869
	cpl			;686a
	inc b			;686b
	nop			;686c
	nop			;686d
	nop			;686e
	nop			;686f
	nop			;6870
	nop			;6871
	ld (bc),a		;6872
	ld d,06ch		;6873
	rlca			;6875
	ld l,h			;6876
	rlca			;6877
	nop			;6878
	nop			;6879
	nop			;687a
	nop			;687b
	ld h,e			;687c
	ld d,000h		;687d
	add hl,de		;687f
	dec c			;6880
	rrca			;6881
	dec h			;6882
	ex af,af'		;6883
	jr c,l6892h		;6884
	ld h,d			;6886
	dec (hl)		;6887
	ld h,e			;6888
	inc d			;6889
	ld bc,l6c16h		;688a
	rlca			;688d
	ld h,d			;688e
	jr nc,l68f2h		;688f
	nop			;6891
l6892h:
	nop			;6892
	nop			;6893
	ld h,e			;6894
	nop			;6895
	nop			;6896
	add hl,de		;6897
	dec c			;6898
	rrca			;6899
	inc hl			;689a
	ex af,af'		;689b
	jr c,l68a6h		;689c
	jr c,l68aah		;689e
	nop			;68a0
	nop			;68a1
	dec b			;68a2
	ld d,06ch		;68a3
	rlca			;68a5
l68a6h:
	ld h,d			;68a6
	cpl			;68a7
	ld h,c			;68a8
	nop			;68a9
l68aah:
	nop			;68aa
	nop			;68ab
	ld l,h			;68ac
	ld bc,01900h		;68ad
	dec c			;68b0
	rrca			;68b1
	ld (03808h),hl		;68b2
	ex af,af'		;68b5
	ld (hl),00ah		;68b6
	nop			;68b8
	nop			;68b9
	add hl,bc		;68ba
	ld d,06ch		;68bb
	rlca			;68bd
	ld h,d			;68be
	ld l,061h		;68bf
	nop			;68c1
	nop			;68c2
	nop			;68c3
	ld l,h			;68c4
	ld bc,01900h		;68c5
	dec c			;68c8
	rrca			;68c9
	ld (03808h),hl		;68ca
	ld b,038h		;68cd
	ld a,(bc)		;68cf
	nop			;68d0
	nop			;68d1
	ld bc,l6c16h		;68d2
	rlca			;68d5
	ld h,d			;68d6
	dec l			;68d7
	ld h,c			;68d8
	nop			;68d9
	nop			;68da
	nop			;68db
	ld l,h			;68dc
	ld bc,01900h		;68dd
	dec c			;68e0
	rrca			;68e1
	ld (03808h),hl		;68e2
	inc b			;68e5
	dec a			;68e6
	ld a,(bc)		;68e7
	nop			;68e8
	nop			;68e9
	ld (bc),a		;68ea
	ld d,06ch		;68eb
	rlca			;68ed
	ld h,d			;68ee
	inc l			;68ef
	ld h,c			;68f0
	nop			;68f1
l68f2h:
	nop			;68f2
	nop			;68f3
	ld l,h			;68f4
	ld bc,01900h		;68f5
	dec c			;68f8
	rrca			;68f9
	dec h			;68fa
	ex af,af'		;68fb
	jr c,l6900h		;68fc
	nop			;68fe
	nop			;68ff
l6900h:
	nop			;6900
	nop			;6901
	add hl,bc		;6902
	rla			;6903
	ld l,h			;6904
	rlca			;6905
	ld h,d			;6906
	dec hl			;6907
	ld h,c			;6908
	nop			;6909
	ld h,a			;690a
	ld bc,0016ch		;690b
	add hl,bc		;690e
	rla			;690f
	dec c			;6910
	rrca			;6911
	ld (00007h),hl		;6912
	nop			;6915
	nop			;6916
	nop			;6917
	nop			;6918
	nop			;6919
	inc bc			;691a
	ld d,06ch		;691b
	rlca			;691d
	ld h,d			;691e
	ld hl,(00000h)		;691f
	nop			;6922
	nop			;6923
	ld h,c			;6924
	nop			;6925
l6926h:
	nop			;6926
	add hl,de		;6927
	dec c			;6928
	rrca			;6929
	inc hl			;692a
	ld b,000h		;692b
	nop			;692d
	jr z,l6936h		;692e
	jr c,l693ch		;6930
	ld (bc),a		;6932
	ld d,06ch		;6933
	rlca			;6935
l6936h:
	ld h,d			;6936
	add hl,hl		;6937
	nop			;6938
	nop			;6939
	nop			;693a
	nop			;693b
l693ch:
	nop			;693c
	nop			;693d
	nop			;693e
	add hl,de		;693f
	ex af,af'		;6940
	rrca			;6941
	jr nz,l6949h		;6942
	nop			;6944
	nop			;6945
	daa			;6946
	ld b,036h		;6947
l6949h:
	ld a,(bc)		;6949
	ld bc,l6c16h		;694a
	rlca			;694d
	ld h,d			;694e
	jr z,l6951h		;694f
l6951h:
	nop			;6951
	nop			;6952
	nop			;6953
	nop			;6954
	nop			;6955
	nop			;6956
	add hl,de		;6957
	ex af,af'		;6958
	rrca			;6959
	inc hl			;695a
	dec b			;695b
	nop			;695c
	nop			;695d
	jr z,l6966h		;695e
	jr c,l696ch		;6960
	dec b			;6962
	ld d,06ch		;6963
	rlca			;6965
l6966h:
	ld h,d			;6966
	daa			;6967
	nop			;6968
	nop			;6969
	nop			;696a
	nop			;696b
l696ch:
	nop			;696c
	nop			;696d
	nop			;696e
	add hl,de		;696f
	ex af,af'		;6970
	rrca			;6971
	ld (02a04h),hl		;6972
	ld a,(bc)		;6975
	dec h			;6976
	ld b,03dh		;6977
	ld a,(bc)		;6979
	ld (bc),a		;697a
	ld d,06ch		;697b
	rlca			;697d
	ld h,d			;697e
	daa			;697f
	ld h,c			;6980
	nop			;6981
	nop			;6982
	nop			;6983
	nop			;6984
	nop			;6985
	nop			;6986
	add hl,de		;6987
	ex af,af'		;6988
	rrca			;6989
	ld (02c04h),hl		;698a
	ld a,(bc)		;698d
	nop			;698e
	nop			;698f
	nop			;6990
	nop			;6991
	add hl,bc		;6992
	rla			;6993
	ld l,h			;6994
	rlca			;6995
	ld h,d			;6996
	jr z,l69fah		;6997
	nop			;6999
	nop			;699a
	nop			;699b
	nop			;699c
	nop			;699d
	add hl,bc		;699e
	rla			;699f
	ex af,af'		;69a0
	rrca			;69a1
	dec de			;69a2
	dec b			;69a3
	cpl			;69a4
	ld a,(bc)		;69a5
l69a6h:
	ld h,a			;69a6
	ld bc,00167h		;69a7
	inc bc			;69aa
	ld d,06ch		;69ab
	rlca			;69ad
	ld h,d			;69ae
	add hl,hl		;69af
	ld h,c			;69b0
	nop			;69b1
	nop			;69b2
	nop			;69b3
	nop			;69b4
	nop			;69b5
	nop			;69b6
	add hl,de		;69b7
	ex af,af'		;69b8
	rrca			;69b9
	ld d,005h		;69ba
	ld l,00ah		;69bc
	nop			;69be
	nop			;69bf
	nop			;69c0
	nop			;69c1
	dec b			;69c2
	ld d,06ch		;69c3
	rlca			;69c5
	ld h,d			;69c6
	ld hl,(00061h)		;69c7
	nop			;69ca
	nop			;69cb
	nop			;69cc
	nop			;69cd
	nop			;69ce
	add hl,de		;69cf
	ex af,af'		;69d0
	rrca			;69d1
	add hl,de		;69d2
	ld b,02ch		;69d3
	ld a,(bc)		;69d5
	nop			;69d6
	nop			;69d7
	nop			;69d8
	nop			;69d9
	ld (bc),a		;69da
	ld d,06ch		;69db
	rlca			;69dd
	ld h,d			;69de
	dec hl			;69df
	ld h,c			;69e0
	nop			;69e1
	nop			;69e2
	nop			;69e3
	nop			;69e4
	nop			;69e5
	nop			;69e6
	add hl,de		;69e7
	ex af,af'		;69e8
	rrca			;69e9
	dec de			;69ea
	ld b,02ah		;69eb
	ld a,(bc)		;69ed
	nop			;69ee
	nop			;69ef
	nop			;69f0
	nop			;69f1
	ld bc,l6c16h		;69f2
	rlca			;69f5
	ld h,d			;69f6
	dec l			;69f7
	ld h,c			;69f8
	nop			;69f9
l69fah:
	nop			;69fa
	nop			;69fb
	nop			;69fc
	nop			;69fd
	nop			;69fe
	add hl,de		;69ff
	inc b			;6a00
	rrca			;6a01
	dec h			;6a02
	rlca			;6a03
	inc sp			;6a04
	inc c			;6a05
	ld sp,l6c0ah		;6a06
	ld bc,01601h		;6a09
	ld l,h			;6a0c
	rlca			;6a0d
	ld h,d			;6a0e
	dec l			;6a0f
	ld h,c			;6a10
	nop			;6a11
	nop			;6a12
	nop			;6a13
	nop			;6a14
	nop			;6a15
	nop			;6a16
	add hl,de		;6a17
	inc b			;6a18
	rrca			;6a19
	inc hl			;6a1a
	rlca			;6a1b
	inc sp			;6a1c
	ld a,(bc)		;6a1d
	inc sp			;6a1e
	ld a,(bc)		;6a1f
	nop			;6a20
	nop			;6a21
	dec b			;6a22
	ld d,06ch		;6a23
	rlca			;6a25
	ld h,d			;6a26
	ld l,061h		;6a27
	nop			;6a29
	nop			;6a2a
	nop			;6a2b
	nop			;6a2c
	nop			;6a2d
	nop			;6a2e
	add hl,de		;6a2f
	inc b			;6a30
	rrca			;6a31
	ld (03308h),hl		;6a32
	ex af,af'		;6a35
	nop			;6a36
	nop			;6a37
	nop			;6a38
	nop			;6a39
	add hl,bc		;6a3a
	ld d,06ch		;6a3b
	rlca			;6a3d
	ld h,d			;6a3e
	cpl			;6a3f
	ld h,c			;6a40
	nop			;6a41
	nop			;6a42
	nop			;6a43
	nop			;6a44
	nop			;6a45
	nop			;6a46
	add hl,de		;6a47
	inc b			;6a48
	rrca			;6a49
	ld (03308h),hl		;6a4a
	ld b,034h		;6a4d
	ld a,(bc)		;6a4f
	nop			;6a50
	nop			;6a51
	ld bc,l6c16h		;6a52
	rlca			;6a55
	ld h,d			;6a56
	jr nc,l6abah		;6a57
	nop			;6a59
	nop			;6a5a
	nop			;6a5b
	nop			;6a5c
	nop			;6a5d
	nop			;6a5e
	add hl,de		;6a5f
	inc b			;6a60
	rrca			;6a61
	dec h			;6a62
	ex af,af'		;6a63
	inc sp			;6a64
	inc b			;6a65
	nop			;6a66
	nop			;6a67
	nop			;6a68
	nop			;6a69
	ld (bc),a		;6a6a
	ld d,06ch		;6a6b
	rlca			;6a6d
	ld h,d			;6a6e
	cpl			;6a6f
	ld h,c			;6a70
	nop			;6a71
	nop			;6a72
	nop			;6a73
	nop			;6a74
	nop			;6a75
	nop			;6a76
	add hl,de		;6a77
	inc b			;6a78
	rrca			;6a79
	inc hl			;6a7a
	ex af,af'		;6a7b
	inc sp			;6a7c
	ld (bc),a		;6a7d
	jr c,l6a8ah		;6a7e
	nop			;6a80
	nop			;6a81
	add hl,bc		;6a82
	ld d,06ch		;6a83
	rlca			;6a85
	ld h,d			;6a86
	ld l,061h		;6a87
	nop			;6a89
l6a8ah:
	nop			;6a8a
	nop			;6a8b
	nop			;6a8c
	nop			;6a8d
	nop			;6a8e
	add hl,de		;6a8f
	inc b			;6a90
	rrca			;6a91
	ld (00008h),hl		;6a92
	nop			;6a95
	nop			;6a96
	nop			;6a97
	nop			;6a98
	nop			;6a99
	ld (bc),a		;6a9a
	ld d,06ch		;6a9b
	rlca			;6a9d
	ld h,d			;6a9e
	dec l			;6a9f
	nop			;6aa0
	nop			;6aa1
	nop			;6aa2
	nop			;6aa3
	nop			;6aa4
	nop			;6aa5
	nop			;6aa6
	add hl,de		;6aa7
	inc b			;6aa8
	rrca			;6aa9
	ld (00008h),hl		;6aaa
	nop			;6aad
	nop			;6aae
	nop			;6aaf
	nop			;6ab0
	nop			;6ab1
	ex af,af'		;6ab2
	rla			;6ab3
	ld l,h			;6ab4
	rlca			;6ab5
	ld h,d			;6ab6
	dec l			;6ab7
	nop			;6ab8
	nop			;6ab9
l6abah:
	nop			;6aba
	nop			;6abb
	nop			;6abc
	nop			;6abd
	ex af,af'		;6abe
	rla			;6abf
	inc b			;6ac0
	rrca			;6ac1
	dec h			;6ac2
	ex af,af'		;6ac3
	ld hl,(03f0bh)		;6ac4
	ld a,(bc)		;6ac7
	ld l,h			;6ac8
	ld bc,01602h		;6ac9
	ld l,h			;6acc
	rlca			;6acd
	ld h,d			;6ace
	add hl,hl		;6acf
	ld h,c			;6ad0
	nop			;6ad1
	nop			;6ad2
	nop			;6ad3
	nop			;6ad4
	nop			;6ad5
	nop			;6ad6
	add hl,de		;6ad7
	inc b			;6ad8
	rrca			;6ad9
	daa			;6ada
	ex af,af'		;6adb
	inc l			;6adc
	inc c			;6add
	nop			;6ade
	nop			;6adf
	nop			;6ae0
	nop			;6ae1
	ld (bc),a		;6ae2
	ld d,06ch		;6ae3
	rlca			;6ae5
	ld h,d			;6ae6
	dec hl			;6ae7
	ld h,c			;6ae8
	nop			;6ae9
	nop			;6aea
sub_6aebh:
	nop			;6aeb
	nop			;6aec
	nop			;6aed
	nop			;6aee
	add hl,de		;6aef
	inc b			;6af0
	rrca			;6af1
	inc hl			;6af2
	ex af,af'		;6af3
	inc l			;6af4
	ld a,(bc)		;6af5
	ld b,b			;6af6
	ld a,(bc)		;6af7
	nop			;6af8
	nop			;6af9
	add hl,bc		;6afa
	ld d,06ch		;6afb
	rlca			;6afd
	ld h,d			;6afe
	dec l			;6aff
	ld h,c			;6b00
	nop			;6b01
	nop			;6b02
	nop			;6b03
	nop			;6b04
	nop			;6b05
	nop			;6b06
	add hl,de		;6b07
	inc b			;6b08
	rrca			;6b09
	ld (02c08h),hl		;6b0a
	ex af,af'		;6b0d
	dec a			;6b0e
	ld a,(bc)		;6b0f
	nop			;6b10
	nop			;6b11
	ex af,af'		;6b12
	rla			;6b13
	ld l,h			;6b14
	rlca			;6b15
	ld h,d			;6b16
	cpl			;6b17
	ld h,c			;6b18
	nop			;6b19
	nop			;6b1a
	nop			;6b1b
	nop			;6b1c
	nop			;6b1d
	ex af,af'		;6b1e
	rla			;6b1f
	inc b			;6b20
	rrca			;6b21
	dec h			;6b22
	ex af,af'		;6b23
	inc l			;6b24
	ld b,000h		;6b25
	nop			;6b27
	nop			;6b28
	nop			;6b29
	ld (bc),a		;6b2a
	ld d,06ch		;6b2b
	rlca			;6b2d
	ld h,d			;6b2e
	jr nc,l6b92h		;6b2f
	nop			;6b31
	nop			;6b32
	nop			;6b33
	nop			;6b34
	nop			;6b35
	nop			;6b36
	add hl,de		;6b37
	inc b			;6b38
	rrca			;6b39
	inc hl			;6b3a
	ex af,af'		;6b3b
	inc l			;6b3c
	inc b			;6b3d
	ld h,a			;6b3e
	ld bc,00000h		;6b3f
	ld (bc),a		;6b42
	ld d,06ch		;6b43
	rlca			;6b45
	ld h,d			;6b46
	ld l,061h		;6b47
	nop			;6b49
	nop			;6b4a
	nop			;6b4b
	nop			;6b4c
	nop			;6b4d
	nop			;6b4e
	add hl,de		;6b4f
	inc b			;6b50
	rrca			;6b51
	ld (02c08h),hl		;6b52
	ld (bc),a		;6b55
	nop			;6b56
	nop			;6b57
	nop			;6b58
	nop			;6b59
	inc bc			;6b5a
	ld d,06ch		;6b5b
	rlca			;6b5d
	ld h,d			;6b5e
	inc l			;6b5f
	ld h,c			;6b60
	nop			;6b61
	nop			;6b62
	nop			;6b63
	nop			;6b64
	nop			;6b65
	nop			;6b66
	add hl,de		;6b67
	inc b			;6b68
	rrca			;6b69
	ld e,008h		;6b6a
	nop			;6b6c
	nop			;6b6d
	nop			;6b6e
	nop			;6b6f
	nop			;6b70
	nop			;6b71
	ex af,af'		;6b72
	rla			;6b73
	ld l,h			;6b74
	rlca			;6b75
	ld h,d			;6b76
	ld hl,(00000h)		;6b77
	nop			;6b7a
	nop			;6b7b
	nop			;6b7c
	nop			;6b7d
	ex af,af'		;6b7e
	nop			;6b7f
	dec c			;6b80
	rrca			;6b81
	dec h			;6b82
	ex af,af'		;6b83
	jr c,l6b92h		;6b84
	ld h,c			;6b86
	nop			;6b87
	ld h,c			;6b88
	nop			;6b89
	ld bc,l6c16h		;6b8a
	rlca			;6b8d
	ld h,d			;6b8e
	jr nc,l6bf2h		;6b8f
	nop			;6b91
l6b92h:
	nop			;6b92
	nop			;6b93
	nop			;6b94
	nop			;6b95
	nop			;6b96
	add hl,de		;6b97
	dec c			;6b98
	rrca			;6b99
	inc hl			;6b9a
	ex af,af'		;6b9b
	jr c,l6ba8h		;6b9c
	jr c,l6baah		;6b9e
	nop			;6ba0
	nop			;6ba1
	dec b			;6ba2
	ld d,06ch		;6ba3
	rlca			;6ba5
	ld h,d			;6ba6
	cpl			;6ba7
l6ba8h:
	ld h,c			;6ba8
	nop			;6ba9
l6baah:
	nop			;6baa
	nop			;6bab
	nop			;6bac
	nop			;6bad
	nop			;6bae
	add hl,de		;6baf
	dec c			;6bb0
	rrca			;6bb1
	ld (03808h),hl		;6bb2
	ex af,af'		;6bb5
	ld (hl),00ah		;6bb6
	nop			;6bb8
	nop			;6bb9
	add hl,bc		;6bba
	ld d,06ch		;6bbb
	rlca			;6bbd
	ld h,d			;6bbe
	ld l,061h		;6bbf
	nop			;6bc1
	nop			;6bc2
	nop			;6bc3
	nop			;6bc4
	nop			;6bc5
	add hl,bc		;6bc6
	add hl,de		;6bc7
	dec c			;6bc8
	rrca			;6bc9
	ld (03808h),hl		;6bca
	ld b,038h		;6bcd
	ld a,(bc)		;6bcf
	nop			;6bd0
	nop			;6bd1
	ld bc,l6c16h		;6bd2
	rlca			;6bd5
	ld h,d			;6bd6
	dec l			;6bd7
	ld h,c			;6bd8
	nop			;6bd9
	nop			;6bda
	nop			;6bdb
	nop			;6bdc
	nop			;6bdd
	nop			;6bde
	add hl,de		;6bdf
	dec c			;6be0
	rrca			;6be1
	ld (03808h),hl		;6be2
	inc b			;6be5
	dec a			;6be6
	ld a,(bc)		;6be7
	nop			;6be8
	nop			;6be9
	ld (bc),a		;6bea
	ld d,06ch		;6beb
	rlca			;6bed
	ld h,d			;6bee
	inc l			;6bef
	ld h,c			;6bf0
	nop			;6bf1
l6bf2h:
	nop			;6bf2
	nop			;6bf3
	nop			;6bf4
	nop			;6bf5
	nop			;6bf6
	add hl,de		;6bf7
	dec c			;6bf8
	rrca			;6bf9
	dec h			;6bfa
	ex af,af'		;6bfb
	jr c,l6c00h		;6bfc
	nop			;6bfe
	nop			;6bff
l6c00h:
	nop			;6c00
	nop			;6c01
	add hl,bc		;6c02
	rla			;6c03
	ld l,h			;6c04
l6c05h:
	rlca			;6c05
	ld h,d			;6c06
	dec hl			;6c07
	ld h,c			;6c08
l6c09h:
	nop			;6c09
l6c0ah:
	ld h,a			;6c0a
	ld bc,00000h		;6c0b
	add hl,bc		;6c0e
	rla			;6c0f
	dec c			;6c10
	rrca			;6c11
	ld (00007h),hl		;6c12
	nop			;6c15
l6c16h:
	nop			;6c16
	nop			;6c17
	nop			;6c18
	nop			;6c19
	inc bc			;6c1a
	ld d,06ch		;6c1b
	rlca			;6c1d
	ld h,d			;6c1e
	ld hl,(00000h)		;6c1f
	nop			;6c22
l6c23h:
	nop			;6c23
l6c24h:
	nop			;6c24
	nop			;6c25
	nop			;6c26
	add hl,de		;6c27
	dec c			;6c28
	rrca			;6c29
	inc hl			;6c2a
	ld b,000h		;6c2b
	nop			;6c2d
	jr c,l6c33h		;6c2e
	nop			;6c30
	nop			;6c31
	ld (bc),a		;6c32
l6c33h:
	ld d,06ch		;6c33
	rlca			;6c35
	ld h,d			;6c36
	add hl,hl		;6c37
	nop			;6c38
	nop			;6c39
	nop			;6c3a
	nop			;6c3b
	nop			;6c3c
	nop			;6c3d
	nop			;6c3e
	add hl,de		;6c3f
	ex af,af'		;6c40
	rrca			;6c41
	jr nz,l6c49h		;6c42
	nop			;6c44
	nop			;6c45
	ld sp,03606h		;6c46
l6c49h:
	ld a,(bc)		;6c49
	ld bc,l6c16h		;6c4a
	rlca			;6c4d
	ld h,d			;6c4e
	jr z,l6c51h		;6c4f
l6c51h:
	nop			;6c51
	nop			;6c52
	nop			;6c53
	nop			;6c54
	nop			;6c55
	nop			;6c56
	add hl,de		;6c57
	ex af,af'		;6c58
	rrca			;6c59
	inc hl			;6c5a
	dec b			;6c5b
	nop			;6c5c
	nop			;6c5d
	cpl			;6c5e
	ld b,034h		;6c5f
	ld a,(bc)		;6c61
	dec b			;6c62
	ld d,06ch		;6c63
	rlca			;6c65
	ld h,d			;6c66
	daa			;6c67
	nop			;6c68
	nop			;6c69
	nop			;6c6a
	nop			;6c6b
	nop			;6c6c
	nop			;6c6d
	nop			;6c6e
	add hl,de		;6c6f
	ex af,af'		;6c70
	rrca			;6c71
	ld (02a04h),hl		;6c72
	ld a,(bc)		;6c75
	inc l			;6c76
	ld b,033h		;6c77
	ld a,(bc)		;6c79
	ld (bc),a		;6c7a
	ld d,06ch		;6c7b
	rlca			;6c7d
	ld h,d			;6c7e
	daa			;6c7f
	ld h,c			;6c80
	nop			;6c81
	nop			;6c82
	nop			;6c83
	nop			;6c84
	nop			;6c85
	nop			;6c86
	add hl,de		;6c87
	ex af,af'		;6c88
	rrca			;6c89
	ld (02c04h),hl		;6c8a
	ld a,(bc)		;6c8d
	cpl			;6c8e
	ld b,034h		;6c8f
	ld a,(bc)		;6c91
	add hl,bc		;6c92
	ld d,06ch		;6c93
	rlca			;6c95
	ld h,d			;6c96
	jr z,l6cfah		;6c97
	nop			;6c99
	ld h,e			;6c9a
	ld (bc),a		;6c9b
	nop			;6c9c
	nop			;6c9d
	nop			;6c9e
	add hl,de		;6c9f
	ex af,af'		;6ca0
	rrca			;6ca1
	dec de			;6ca2
	dec b			;6ca3
	cpl			;6ca4
	ld a,(bc)		;6ca5
	nop			;6ca6
	nop			;6ca7
	nop			;6ca8
	nop			;6ca9
	add hl,bc		;6caa
	ld d,06ch		;6cab
	rlca			;6cad
	ld h,d			;6cae
	add hl,hl		;6caf
	ld h,c			;6cb0
	nop			;6cb1
	nop			;6cb2
	nop			;6cb3
	nop			;6cb4
	nop			;6cb5
	nop			;6cb6
	add hl,de		;6cb7
	ex af,af'		;6cb8
	rrca			;6cb9
	ld d,005h		;6cba
	ld l,00ah		;6cbc
	jr c,l6cc6h		;6cbe
	inc sp			;6cc0
	ld a,(bc)		;6cc1
	dec b			;6cc2
	ld d,06ch		;6cc3
	rlca			;6cc5
l6cc6h:
	ld h,d			;6cc6
	ld hl,(00061h)		;6cc7
	nop			;6cca
	nop			;6ccb
	nop			;6ccc
	nop			;6ccd
	nop			;6cce
	add hl,de		;6ccf
	ex af,af'		;6cd0
	rrca			;6cd1
	add hl,de		;6cd2
	ld b,02ch		;6cd3
	ld a,(bc)		;6cd5
	ld h,a			;6cd6
	inc b			;6cd7
	nop			;6cd8
	nop			;6cd9
	ld (bc),a		;6cda
	ld d,06ch		;6cdb
	rlca			;6cdd
	ld h,d			;6cde
	dec hl			;6cdf
	ld h,c			;6ce0
	nop			;6ce1
	nop			;6ce2
	nop			;6ce3
	nop			;6ce4
	nop			;6ce5
	nop			;6ce6
	add hl,de		;6ce7
	ex af,af'		;6ce8
	rrca			;6ce9
	dec de			;6cea
	ld b,02ah		;6ceb
	ld a,(bc)		;6ced
	nop			;6cee
	nop			;6cef
	nop			;6cf0
	nop			;6cf1
	ld bc,l6c16h		;6cf2
	rlca			;6cf5
	ld h,d			;6cf6
	dec l			;6cf7
	ld h,c			;6cf8
	nop			;6cf9
l6cfah:
	nop			;6cfa
	nop			;6cfb
	nop			;6cfc
	nop			;6cfd
	nop			;6cfe
	add hl,de		;6cff
	inc b			;6d00
	rrca			;6d01
	dec h			;6d02
	rlca			;6d03
	inc sp			;6d04
	inc c			;6d05
	inc (hl)		;6d06
	ld a,(bc)		;6d07
	ld b,b			;6d08
	inc bc			;6d09
	ld bc,l6c16h		;6d0a
	rlca			;6d0d
	ld h,d			;6d0e
	dec l			;6d0f
	ld h,c			;6d10
	nop			;6d11
	nop			;6d12
	nop			;6d13
	nop			;6d14
	nop			;6d15
	nop			;6d16
	add hl,de		;6d17
	inc b			;6d18
	rrca			;6d19
	inc hl			;6d1a
	rlca			;6d1b
	inc sp			;6d1c
	ld a,(bc)		;6d1d
	nop			;6d1e
	nop			;6d1f
	nop			;6d20
	nop			;6d21
	ld bc,l6c16h		;6d22
	rlca			;6d25
	ld h,d			;6d26
	ld l,061h		;6d27
	nop			;6d29
	ld h,a			;6d2a
	ld bc,00167h		;6d2b
	nop			;6d2e
	add hl,de		;6d2f
	inc b			;6d30
	rrca			;6d31
	ld (03308h),hl		;6d32
	ex af,af'		;6d35
	nop			;6d36
	nop			;6d37
	nop			;6d38
	nop			;6d39
	inc bc			;6d3a
	ld d,06ch		;6d3b
	rlca			;6d3d
	ld h,d			;6d3e
	cpl			;6d3f
	ld h,c			;6d40
	nop			;6d41
	nop			;6d42
	nop			;6d43
	nop			;6d44
	nop			;6d45
	nop			;6d46
	add hl,de		;6d47
	inc b			;6d48
	rrca			;6d49
	ld (03308h),hl		;6d4a
	ld b,000h		;6d4d
	nop			;6d4f
	nop			;6d50
	nop			;6d51
	ld bc,l6c16h		;6d52
	rlca			;6d55
	ld h,d			;6d56
	jr nc,l6dbah		;6d57
	nop			;6d59
	nop			;6d5a
	nop			;6d5b
	nop			;6d5c
	nop			;6d5d
	nop			;6d5e
	add hl,de		;6d5f
	inc b			;6d60
	rrca			;6d61
	dec h			;6d62
	ex af,af'		;6d63
	inc sp			;6d64
	inc b			;6d65
	inc sp			;6d66
	ld a,(bc)		;6d67
	ccf			;6d68
	inc bc			;6d69
	ld (bc),a		;6d6a
	ld d,06ch		;6d6b
	rlca			;6d6d
	ld h,d			;6d6e
	cpl			;6d6f
	ld h,c			;6d70
	nop			;6d71
	nop			;6d72
	nop			;6d73
	nop			;6d74
	nop			;6d75
	nop			;6d76
	add hl,de		;6d77
	inc b			;6d78
	rrca			;6d79
	inc hl			;6d7a
	ex af,af'		;6d7b
	inc sp			;6d7c
	ld (bc),a		;6d7d
	nop			;6d7e
	nop			;6d7f
	nop			;6d80
	nop			;6d81
	add hl,bc		;6d82
	ld d,06ch		;6d83
	rlca			;6d85
	ld h,d			;6d86
	ld l,061h		;6d87
	nop			;6d89
	nop			;6d8a
	nop			;6d8b
	nop			;6d8c
	nop			;6d8d
	nop			;6d8e
	add hl,de		;6d8f
	inc b			;6d90
	rrca			;6d91
	ld (00008h),hl		;6d92
	nop			;6d95
	cpl			;6d96
	ld a,(bc)		;6d97
	dec sp			;6d98
	inc bc			;6d99
	ex af,af'		;6d9a
	ld d,06ch		;6d9b
	rlca			;6d9d
	ld h,d			;6d9e
	dec l			;6d9f
	nop			;6da0
	nop			;6da1
	ld h,a			;6da2
	ld bc,00167h		;6da3
	nop			;6da6
	add hl,de		;6da7
	inc b			;6da8
	rrca			;6da9
	ld (00008h),hl		;6daa
	nop			;6dad
	nop			;6dae
	nop			;6daf
	nop			;6db0
	nop			;6db1
	ld (bc),a		;6db2
	ld d,06ch		;6db3
	rlca			;6db5
	ld h,d			;6db6
	dec l			;6db7
	nop			;6db8
	nop			;6db9
l6dbah:
	nop			;6dba
	nop			;6dbb
	nop			;6dbc
	nop			;6dbd
	nop			;6dbe
	add hl,de		;6dbf
	inc b			;6dc0
	rrca			;6dc1
	dec h			;6dc2
	ex af,af'		;6dc3
	ld hl,(0000bh)		;6dc4
	nop			;6dc7
	nop			;6dc8
	nop			;6dc9
	ld (bc),a		;6dca
	ld d,06ch		;6dcb
	rlca			;6dcd
	ld h,d			;6dce
	add hl,hl		;6dcf
	ld h,c			;6dd0
	nop			;6dd1
	nop			;6dd2
	nop			;6dd3
	nop			;6dd4
	nop			;6dd5
	nop			;6dd6
	add hl,de		;6dd7
	inc b			;6dd8
	rrca			;6dd9
	daa			;6dda
	ex af,af'		;6ddb
	inc l			;6ddc
	inc c			;6ddd
	nop			;6dde
	nop			;6ddf
	nop			;6de0
	nop			;6de1
	ex af,af'		;6de2
	rla			;6de3
	ld l,h			;6de4
	rlca			;6de5
	ld h,d			;6de6
	dec hl			;6de7
	ld h,c			;6de8
	nop			;6de9
	nop			;6dea
	nop			;6deb
	nop			;6dec
	nop			;6ded
	ex af,af'		;6dee
	rla			;6def
	inc b			;6df0
	rrca			;6df1
	inc hl			;6df2
	ex af,af'		;6df3
	inc l			;6df4
	ld a,(bc)		;6df5
	ld h,a			;6df6
	ld (bc),a		;6df7
	ld h,a			;6df8
	ld (bc),a		;6df9
	ld (bc),a		;6dfa
	ld d,06ch		;6dfb
	rlca			;6dfd
	ld h,d			;6dfe
	dec l			;6dff
	ld h,c			;6e00
	nop			;6e01
	nop			;6e02
	nop			;6e03
	nop			;6e04
	nop			;6e05
	nop			;6e06
	add hl,de		;6e07
	inc b			;6e08
	rrca			;6e09
	ld (02c08h),hl		;6e0a
	ex af,af'		;6e0d
	nop			;6e0e
	nop			;6e0f
	nop			;6e10
	nop			;6e11
	dec b			;6e12
	ld d,06ch		;6e13
	rlca			;6e15
	ld h,d			;6e16
	cpl			;6e17
	ld h,c			;6e18
	nop			;6e19
	nop			;6e1a
	nop			;6e1b
	nop			;6e1c
	nop			;6e1d
	nop			;6e1e
	add hl,de		;6e1f
	inc b			;6e20
	rrca			;6e21
	dec h			;6e22
	ex af,af'		;6e23
	inc l			;6e24
	ld b,031h		;6e25
	ld a,(bc)		;6e27
	dec a			;6e28
	inc bc			;6e29
	ld (bc),a		;6e2a
	ld d,06ch		;6e2b
	rlca			;6e2d
	ld h,d			;6e2e
	jr nc,l6e92h		;6e2f
	nop			;6e31
	nop			;6e32
	nop			;6e33
	nop			;6e34
	nop			;6e35
	nop			;6e36
	add hl,de		;6e37
	inc b			;6e38
	rrca			;6e39
	inc hl			;6e3a
	ex af,af'		;6e3b
	inc l			;6e3c
	inc b			;6e3d
	inc sp			;6e3e
	ld a,(bc)		;6e3f
	ccf			;6e40
	inc bc			;6e41
	ld (bc),a		;6e42
	ld d,06ch		;6e43
	rlca			;6e45
	ld h,d			;6e46
	ld l,061h		;6e47
	nop			;6e49
	nop			;6e4a
	nop			;6e4b
	nop			;6e4c
	nop			;6e4d
	nop			;6e4e
	add hl,de		;6e4f
	inc b			;6e50
	rrca			;6e51
	ld (02c08h),hl		;6e52
	ld (bc),a		;6e55
	nop			;6e56
	nop			;6e57
	nop			;6e58
	nop			;6e59
	ex af,af'		;6e5a
	rla			;6e5b
	ld l,h			;6e5c
	rlca			;6e5d
	ld h,d			;6e5e
	inc l			;6e5f
	ld h,c			;6e60
	nop			;6e61
	ld l,h			;6e62
	ld (bc),a		;6e63
	nop			;6e64
	nop			;6e65
	ex af,af'		;6e66
	rla			;6e67
	inc b			;6e68
	rrca			;6e69
	ld e,008h		;6e6a
	nop			;6e6c
	nop			;6e6d
	ld h,d			;6e6e
	dec h			;6e6f
	nop			;6e70
	nop			;6e71
	ld (bc),a		;6e72
	ld d,06ch		;6e73
	rlca			;6e75
	ld h,d			;6e76
	ld hl,(00000h)		;6e77
	cpl			;6e7a
	rlca			;6e7b
	cpl			;6e7c
	dec bc			;6e7d
	nop			;6e7e
	add hl,de		;6e7f
	dec c			;6e80
	rrca			;6e81
	jr c,l6e89h		;6e82
	nop			;6e84
	nop			;6e85
	ld sp,l6c09h		;6e86
l6e89h:
	ld (bc),a		;6e89
	ld bc,l6c16h		;6e8a
	rlca			;6e8d
	nop			;6e8e
	nop			;6e8f
	nop			;6e90
	nop			;6e91
l6e92h:
	nop			;6e92
	nop			;6e93
	ld l,h			;6e94
	ld (bc),a		;6e95
	nop			;6e96
	add hl,de		;6e97
	dec c			;6e98
	rrca			;6e99
	nop			;6e9a
	nop			;6e9b
	nop			;6e9c
	nop			;6e9d
	nop			;6e9e
	nop			;6e9f
	ld h,c			;6ea0
	nop			;6ea1
	inc bc			;6ea2
	ld d,06ch		;6ea3
	rlca			;6ea5
	nop			;6ea6
	nop			;6ea7
	nop			;6ea8
	nop			;6ea9
	nop			;6eaa
	nop			;6eab
	dec h			;6eac
	dec b			;6ead
	nop			;6eae
	add hl,de		;6eaf
	nop			;6eb0
	nop			;6eb1
	nop			;6eb2
	nop			;6eb3
	nop			;6eb4
	nop			;6eb5
	nop			;6eb6
	nop			;6eb7
	ld sp,00505h		;6eb8
	ld d,000h		;6ebb
	nop			;6ebd
	nop			;6ebe
	nop			;6ebf
	nop			;6ec0
	nop			;6ec1
	nop			;6ec2
	nop			;6ec3
	nop			;6ec4
	nop			;6ec5
	nop			;6ec6
	add hl,de		;6ec7
	ld (de),a		;6ec8
	rrca			;6ec9
	nop			;6eca
	nop			;6ecb
	nop			;6ecc
	nop			;6ecd
	nop			;6ece
	nop			;6ecf
	nop			;6ed0
	nop			;6ed1
	dec b			;6ed2
	ld d,06ch		;6ed3
	rlca			;6ed5
	ld (hl),005h		;6ed6
	nop			;6ed8
	nop			;6ed9
	inc sp			;6eda
	add hl,bc		;6edb
	nop			;6edc
	nop			;6edd
	nop			;6ede
	add hl,de		;6edf
	dec c			;6ee0
	rrca			;6ee1
	jr c,l6ee9h		;6ee2
	nop			;6ee4
	nop			;6ee5
	inc (hl)		;6ee6
	add hl,bc		;6ee7
	nop			;6ee8
l6ee9h:
	nop			;6ee9
	ld (bc),a		;6eea
	ld d,06ch		;6eeb
	rlca			;6eed
	nop			;6eee
	nop			;6eef
	nop			;6ef0
	nop			;6ef1
	nop			;6ef2
	nop			;6ef3
	nop			;6ef4
	nop			;6ef5
	nop			;6ef6
	add hl,de		;6ef7
	nop			;6ef8
	nop			;6ef9
	nop			;6efa
	nop			;6efb
	nop			;6efc
	nop			;6efd
	nop			;6efe
	nop			;6eff
	nop			;6f00
	nop			;6f01
	add hl,bc		;6f02
	ld d,000h		;6f03
	nop			;6f05
	nop			;6f06
	nop			;6f07
	nop			;6f08
	nop			;6f09
	nop			;6f0a
	nop			;6f0b
	inc sp			;6f0c
	dec b			;6f0d
	nop			;6f0e
	add hl,de		;6f0f
	ld (de),a		;6f10
	rrca			;6f11
	nop			;6f12
	nop			;6f13
	nop			;6f14
	nop			;6f15
	nop			;6f16
	nop			;6f17
	inc (hl)		;6f18
	dec b			;6f19
	dec b			;6f1a
	ld d,06ch		;6f1b
	rlca			;6f1d
	ld sp,00005h		;6f1e
	nop			;6f21
	ld hl,(00009h)		;6f22
	nop			;6f25
	nop			;6f26
	add hl,de		;6f27
	inc d			;6f28
	rrca			;6f29
	inc sp			;6f2a
	dec b			;6f2b
	nop			;6f2c
	nop			;6f2d
	inc l			;6f2e
	add hl,bc		;6f2f
	nop			;6f30
	nop			;6f31
	dec b			;6f32
	ld d,06ch		;6f33
	rlca			;6f35
	nop			;6f36
	nop			;6f37
	nop			;6f38
	nop			;6f39
	nop			;6f3a
	nop			;6f3b
	nop			;6f3c
	nop			;6f3d
	nop			;6f3e
	add hl,de		;6f3f
	dec c			;6f40
	rrca			;6f41
	nop			;6f42
	nop			;6f43
	nop			;6f44
	nop			;6f45
	nop			;6f46
	nop			;6f47
	nop			;6f48
	nop			;6f49
	ld bc,l6c16h		;6f4a
	rlca			;6f4d
	nop			;6f4e
	nop			;6f4f
	nop			;6f50
	nop			;6f51
	nop			;6f52
	nop			;6f53
	ld hl,(00005h)		;6f54
	add hl,de		;6f57
	dec c			;6f58
	rrca			;6f59
	nop			;6f5a
	nop			;6f5b
	nop			;6f5c
	nop			;6f5d
	nop			;6f5e
	nop			;6f5f
	inc l			;6f60
	dec b			;6f61
	inc bc			;6f62
	ld d,06ch		;6f63
	rlca			;6f65
	nop			;6f66
	nop			;6f67
	nop			;6f68
	nop			;6f69
	nop			;6f6a
	nop			;6f6b
	nop			;6f6c
	nop			;6f6d
	nop			;6f6e
	add hl,de		;6f6f
	inc d			;6f70
	rrca			;6f71
	nop			;6f72
	nop			;6f73
	nop			;6f74
	nop			;6f75
	nop			;6f76
	nop			;6f77
	nop			;6f78
	nop			;6f79
	dec b			;6f7a
	ld d,06ch		;6f7b
	rlca			;6f7d
	nop			;6f7e
	nop			;6f7f
	nop			;6f80
	nop			;6f81
	nop			;6f82
	nop			;6f83
	nop			;6f84
	nop			;6f85
	nop			;6f86
	add hl,de		;6f87
	dec d			;6f88
	rrca			;6f89
	nop			;6f8a
	nop			;6f8b
	nop			;6f8c
	nop			;6f8d
	nop			;6f8e
	nop			;6f8f
	nop			;6f90
	nop			;6f91
	dec b			;6f92
	ld d,06ch		;6f93
	rlca			;6f95
	cpl			;6f96
	dec b			;6f97
	nop			;6f98
	nop			;6f99
	jr z,l6fa5h		;6f9a
	nop			;6f9c
	nop			;6f9d
	nop			;6f9e
	add hl,de		;6f9f
	dec c			;6fa0
	rrca			;6fa1
	dec h			;6fa2
	dec b			;6fa3
	nop			;6fa4
l6fa5h:
	nop			;6fa5
	ld hl,(00009h)		;6fa6
	nop			;6fa9
	ld (bc),a		;6faa
	ld d,06ch		;6fab
	rlca			;6fad
	nop			;6fae
	nop			;6faf
	nop			;6fb0
	nop			;6fb1
	nop			;6fb2
	nop			;6fb3
	nop			;6fb4
	nop			;6fb5
	nop			;6fb6
	add hl,de		;6fb7
	nop			;6fb8
	nop			;6fb9
	cpl			;6fba
	dec b			;6fbb
	nop			;6fbc
	nop			;6fbd
	jr z,l6fc9h		;6fbe
	nop			;6fc0
	nop			;6fc1
	add hl,bc		;6fc2
	ld d,000h		;6fc3
	nop			;6fc5
	nop			;6fc6
	nop			;6fc7
	nop			;6fc8
l6fc9h:
	nop			;6fc9
	nop			;6fca
	nop			;6fcb
	jr z,l6fd3h		;6fcc
	nop			;6fce
	add hl,de		;6fcf
	dec d			;6fd0
	rrca			;6fd1
	dec l			;6fd2
l6fd3h:
	dec b			;6fd3
	nop			;6fd4
	nop			;6fd5
	daa			;6fd6
	add hl,bc		;6fd7
	ld hl,(00105h)		;6fd8
	ld d,06ch		;6fdb
	rlca			;6fdd
	nop			;6fde
	nop			;6fdf
	nop			;6fe0
	nop			;6fe1
	nop			;6fe2
	nop			;6fe3
	nop			;6fe4
	nop			;6fe5
	nop			;6fe6
	add hl,de		;6fe7
	rla			;6fe8
	rrca			;6fe9
	inc l			;6fea
	dec b			;6feb
	nop			;6fec
	nop			;6fed
	dec h			;6fee
	add hl,bc		;6fef
	jr z,l6ff7h		;6ff0
	dec b			;6ff2
	ld d,06ch		;6ff3
	rlca			;6ff5
	nop			;6ff6
l6ff7h:
	nop			;6ff7
	nop			;6ff8
	nop			;6ff9
	nop			;6ffa
	nop			;6ffb
	nop			;6ffc
	nop			;6ffd
	nop			;6ffe
	add hl,de		;6fff
	dec c			;7000
	rrca			;7001
	ld l,h			;7002
	ld bc,00000h		;7003
	ld l,h			;7006
	ld bc,00527h		;7007
	ld bc,l6c16h		;700a
	rlca			;700d
	nop			;700e
	nop			;700f
	nop			;7010
	nop			;7011
	nop			;7012
	nop			;7013
	nop			;7014
	nop			;7015
	nop			;7016
	add hl,de		;7017
	dec c			;7018
	rrca			;7019
	nop			;701a
	nop			;701b
	nop			;701c
	nop			;701d
	ld l,h			;701e
	ld bc,00525h		;701f
	inc bc			;7022
	rla			;7023
	ld l,h			;7024
	rlca			;7025
	nop			;7026
	nop			;7027
	nop			;7028
	nop			;7029
	nop			;702a
	nop			;702b
	nop			;702c
	nop			;702d
	inc bc			;702e
	rla			;702f
	nop			;7030
	nop			;7031
	ld l,h			;7032
	ld bc,00938h		;7033
	ld l,h			;7036
	ld bc,0016ch		;7037
	dec b			;703a
	ld d,000h		;703b
	nop			;703d
	nop			;703e
	nop			;703f
	nop			;7040
	nop			;7041
	nop			;7042
	nop			;7043
	nop			;7044
	nop			;7045
	nop			;7046
	add hl,de		;7047
	ld (de),a		;7048
sub_7049h:
	rrca			;7049
	nop			;704a
	nop			;704b
	ld (hl),009h		;704c
	ld l,h			;704e
	ld bc,0016ch		;704f
	dec b			;7052
	ld d,06ch		;7053
	rlca			;7055
	nop			;7056
	nop			;7057
	nop			;7058
	nop			;7059
	nop			;705a
	nop			;705b
	nop			;705c
	nop			;705d
	nop			;705e
	add hl,de		;705f
	dec c			;7060
	rrca			;7061
	ld l,h			;7062
	ld bc,00938h		;7063
	ld l,h			;7066
	ld bc,00438h		;7067
	ld (bc),a		;706a
	ld d,06ch		;706b
	rlca			;706d
	nop			;706e
	nop			;706f
	nop			;7070
	nop			;7071
	nop			;7072
	nop			;7073
	nop			;7074
	nop			;7075
	nop			;7076
	add hl,de		;7077
	nop			;7078
	nop			;7079
	nop			;707a
	nop			;707b
	inc (hl)		;707c
	add hl,bc		;707d
	ld l,h			;707e
	ld bc,00436h		;707f
	dec b			;7082
	rla			;7083
	nop			;7084
	nop			;7085
	nop			;7086
	nop			;7087
	nop			;7088
	nop			;7089
	nop			;708a
	nop			;708b
	nop			;708c
	nop			;708d
	dec b			;708e
	rla			;708f
	ld (de),a		;7090
	rrca			;7091
	ld l,h			;7092
	ld bc,00938h		;7093
	ld l,h			;7096
	ld bc,00438h		;7097
	dec b			;709a
	ld d,06ch		;709b
	rlca			;709d
	nop			;709e
	nop			;709f
	nop			;70a0
	nop			;70a1
	nop			;70a2
	nop			;70a3
	nop			;70a4
	nop			;70a5
	nop			;70a6
	add hl,de		;70a7
	inc d			;70a8
	rrca			;70a9
	nop			;70aa
	nop			;70ab
	ld sp,l6c09h		;70ac
	ld bc,00434h		;70af
	dec b			;70b2
	ld d,06ch		;70b3
	rlca			;70b5
	nop			;70b6
	nop			;70b7
	nop			;70b8
	nop			;70b9
	nop			;70ba
	nop			;70bb
	nop			;70bc
	nop			;70bd
	nop			;70be
	add hl,de		;70bf
	dec c			;70c0
	rrca			;70c1
	ld h,c			;70c2
	nop			;70c3
	ld l,h			;70c4
	ld bc,00000h		;70c5
	jr c,l70ceh		;70c8
	ld bc,l6c16h		;70ca
	rlca			;70cd
l70ceh:
	nop			;70ce
	nop			;70cf
	nop			;70d0
	nop			;70d1
	nop			;70d2
	nop			;70d3
	nop			;70d4
	nop			;70d5
	nop			;70d6
	add hl,de		;70d7
	dec c			;70d8
	rrca			;70d9
	nop			;70da
	nop			;70db
	ld l,h			;70dc
	ld bc,00000h		;70dd
	ld sp,00904h		;70e0
	ld d,06ch		;70e3
	rlca			;70e5
	nop			;70e6
	nop			;70e7
	nop			;70e8
	nop			;70e9
	nop			;70ea
	nop			;70eb
	nop			;70ec
	nop			;70ed
	nop			;70ee
	add hl,de		;70ef
	inc d			;70f0
	rrca			;70f1
	inc l			;70f2
	dec b			;70f3
	ld l,h			;70f4
	ld bc,00934h		;70f5
	nop			;70f8
	nop			;70f9
	dec b			;70fa
	ld d,06ch		;70fb
	rlca			;70fd
	nop			;70fe
	nop			;70ff
	nop			;7100
	nop			;7101
	nop			;7102
	nop			;7103
	nop			;7104
	nop			;7105
	nop			;7106
	add hl,de		;7107
	dec d			;7108
	rrca			;7109
	ld hl,(l6c05h)		;710a
	ld bc,00933h		;710d
	nop			;7110
	nop			;7111
	dec b			;7112
	ld d,06ch		;7113
	rlca			;7115
	nop			;7116
	nop			;7117
	nop			;7118
	nop			;7119
	nop			;711a
	nop			;711b
	nop			;711c
	nop			;711d
	nop			;711e
	add hl,de		;711f
	dec c			;7120
	rrca			;7121
	inc l			;7122
	dec b			;7123
	ld l,h			;7124
	ld bc,00934h		;7125
	inc (hl)		;7128
	dec b			;7129
	ld (bc),a		;712a
	ld d,06ch		;712b
	rlca			;712d
	nop			;712e
	nop			;712f
	nop			;7130
	nop			;7131
	nop			;7132
	nop			;7133
	nop			;7134
	nop			;7135
	nop			;7136
	add hl,de		;7137
	dec c			;7138
	rrca			;7139
	ld hl,(l6c05h)		;713a
	ld bc,00933h		;713d
	inc sp			;7140
	dec b			;7141
	add hl,bc		;7142
	ld d,06ch		;7143
	rlca			;7145
	nop			;7146
	nop			;7147
	nop			;7148
	nop			;7149
	nop			;714a
	nop			;714b
	nop			;714c
	nop			;714d
	nop			;714e
	add hl,de		;714f
	rla			;7150
	rrca			;7151
	cpl			;7152
	dec b			;7153
	ld l,h			;7154
	ld bc,00938h		;7155
	inc (hl)		;7158
	dec b			;7159
	ld bc,l6c16h		;715a
	rlca			;715d
	ld h,a			;715e
	ld (bc),a		;715f
	nop			;7160
	nop			;7161
	nop			;7162
	nop			;7163
	nop			;7164
	nop			;7165
	nop			;7166
	add hl,de		;7167
	add hl,de		;7168
	rrca			;7169
	nop			;716a
	nop			;716b
	ld l,h			;716c
	ld bc,00931h		;716d
	inc sp			;7170
	dec b			;7171
	dec b			;7172
	ld d,06ch		;7173
	rlca			;7175
	nop			;7176
	nop			;7177
	nop			;7178
	nop			;7179
	nop			;717a
	nop			;717b
	nop			;717c
	nop			;717d
	nop			;717e
	add hl,de		;717f
	dec c			;7180
	rrca			;7181
	jr c,l7189h		;7182
	nop			;7184
	nop			;7185
	ld sp,l6c09h		;7186
l7189h:
	ld (bc),a		;7189
	ld bc,l6c16h		;718a
	rlca			;718d
	nop			;718e
	nop			;718f
	nop			;7190
	nop			;7191
	nop			;7192
	nop			;7193
	ld l,h			;7194
	ld (bc),a		;7195
	nop			;7196
	add hl,de		;7197
l7198h:
	dec c			;7198
	rrca			;7199
	nop			;719a
	nop			;719b
	nop			;719c
	nop			;719d
	nop			;719e
	nop			;719f
	ld h,c			;71a0
	nop			;71a1
	inc bc			;71a2
	ld d,06ch		;71a3
	rlca			;71a5
	nop			;71a6
	nop			;71a7
	nop			;71a8
	nop			;71a9
	nop			;71aa
	nop			;71ab
	dec h			;71ac
	dec b			;71ad
	nop			;71ae
	add hl,de		;71af
	nop			;71b0
	nop			;71b1
	nop			;71b2
	nop			;71b3
	nop			;71b4
	nop			;71b5
	nop			;71b6
	nop			;71b7
	ld sp,00505h		;71b8
	ld d,000h		;71bb
	nop			;71bd
	nop			;71be
	nop			;71bf
	nop			;71c0
	nop			;71c1
	nop			;71c2
	nop			;71c3
	nop			;71c4
	nop			;71c5
	nop			;71c6
	add hl,de		;71c7
	ld (de),a		;71c8
	rrca			;71c9
	nop			;71ca
	nop			;71cb
	nop			;71cc
	nop			;71cd
	nop			;71ce
	nop			;71cf
	nop			;71d0
	nop			;71d1
	dec b			;71d2
	ld d,06ch		;71d3
	rlca			;71d5
	ld (hl),005h		;71d6
	nop			;71d8
	nop			;71d9
	inc sp			;71da
	add hl,bc		;71db
	nop			;71dc
	nop			;71dd
	nop			;71de
	add hl,de		;71df
	dec c			;71e0
	rrca			;71e1
	jr c,l71e9h		;71e2
	nop			;71e4
	nop			;71e5
	inc (hl)		;71e6
	add hl,bc		;71e7
	nop			;71e8
l71e9h:
	nop			;71e9
	ld (bc),a		;71ea
	ld d,06ch		;71eb
	rlca			;71ed
	nop			;71ee
	nop			;71ef
	nop			;71f0
	nop			;71f1
	nop			;71f2
	nop			;71f3
	nop			;71f4
	nop			;71f5
	nop			;71f6
	add hl,de		;71f7
	nop			;71f8
	nop			;71f9
	nop			;71fa
	nop			;71fb
	nop			;71fc
	nop			;71fd
	nop			;71fe
	nop			;71ff
	nop			;7200
	nop			;7201
	add hl,bc		;7202
	ld d,000h		;7203
	nop			;7205
	nop			;7206
	nop			;7207
	nop			;7208
	nop			;7209
	nop			;720a
	nop			;720b
	inc sp			;720c
	dec b			;720d
	nop			;720e
	add hl,de		;720f
	ld (de),a		;7210
	rrca			;7211
	nop			;7212
	nop			;7213
	nop			;7214
	nop			;7215
	nop			;7216
	nop			;7217
	inc (hl)		;7218
	dec b			;7219
	dec b			;721a
	ld d,06ch		;721b
	rlca			;721d
	ld sp,00005h		;721e
	nop			;7221
	ld hl,(00009h)		;7222
	nop			;7225
	nop			;7226
	add hl,de		;7227
	inc d			;7228
	rrca			;7229
	inc sp			;722a
	dec b			;722b
	nop			;722c
	nop			;722d
	inc l			;722e
	add hl,bc		;722f
	nop			;7230
	nop			;7231
	dec b			;7232
	ld d,06ch		;7233
	rlca			;7235
	nop			;7236
	nop			;7237
	nop			;7238
	nop			;7239
	nop			;723a
	nop			;723b
	nop			;723c
	nop			;723d
	nop			;723e
	add hl,de		;723f
	dec c			;7240
	rrca			;7241
	ld l,h			;7242
	ld bc,00000h		;7243
	nop			;7246
	nop			;7247
	nop			;7248
	nop			;7249
	ld bc,l6c16h		;724a
	rlca			;724d
	nop			;724e
	nop			;724f
	nop			;7250
	nop			;7251
	nop			;7252
	nop			;7253
	ld hl,(00005h)		;7254
	add hl,de		;7257
	dec c			;7258
	rrca			;7259
	ld l,h			;725a
	ld bc,00000h		;725b
	nop			;725e
	nop			;725f
	inc l			;7260
	dec b			;7261
	inc bc			;7262
	ld d,06ch		;7263
	rlca			;7265
	nop			;7266
	nop			;7267
	nop			;7268
	nop			;7269
	nop			;726a
	nop			;726b
	nop			;726c
	nop			;726d
	nop			;726e
	add hl,de		;726f
	inc d			;7270
	rrca			;7271
	ld l,h			;7272
	ld bc,00000h		;7273
	nop			;7276
	nop			;7277
	nop			;7278
	nop			;7279
	dec b			;727a
	ld d,06ch		;727b
	rlca			;727d
	nop			;727e
	nop			;727f
	nop			;7280
	nop			;7281
	nop			;7282
	nop			;7283
	nop			;7284
	nop			;7285
	nop			;7286
	add hl,de		;7287
	dec d			;7288
	rrca			;7289
	ld l,h			;728a
	ld bc,00000h		;728b
	nop			;728e
	nop			;728f
	nop			;7290
	nop			;7291
	dec b			;7292
	ld d,06ch		;7293
	rlca			;7295
	cpl			;7296
	dec b			;7297
	nop			;7298
	nop			;7299
	jr z,l72a5h		;729a
	nop			;729c
	nop			;729d
	nop			;729e
	add hl,de		;729f
	dec c			;72a0
	rrca			;72a1
	dec h			;72a2
	dec b			;72a3
	nop			;72a4
l72a5h:
	nop			;72a5
	ld hl,(00009h)		;72a6
	nop			;72a9
	ld (bc),a		;72aa
	ld d,06ch		;72ab
	rlca			;72ad
	nop			;72ae
	nop			;72af
	nop			;72b0
	nop			;72b1
	nop			;72b2
	nop			;72b3
	nop			;72b4
	nop			;72b5
	nop			;72b6
	add hl,de		;72b7
	nop			;72b8
	nop			;72b9
l72bah:
	cpl			;72ba
	dec b			;72bb
	nop			;72bc
	nop			;72bd
	jr z,l72c9h		;72be
	nop			;72c0
	nop			;72c1
	add hl,bc		;72c2
	ld d,000h		;72c3
	nop			;72c5
	nop			;72c6
	nop			;72c7
	nop			;72c8
l72c9h:
	nop			;72c9
	nop			;72ca
	nop			;72cb
	jr z,l72d3h		;72cc
	nop			;72ce
	add hl,de		;72cf
	dec d			;72d0
	rrca			;72d1
	dec l			;72d2
l72d3h:
	dec b			;72d3
	nop			;72d4
	nop			;72d5
	daa			;72d6
	add hl,bc		;72d7
	ld hl,(00105h)		;72d8
	ld d,06ch		;72db
	rlca			;72dd
	nop			;72de
	nop			;72df
	nop			;72e0
	nop			;72e1
	nop			;72e2
	nop			;72e3
	nop			;72e4
	nop			;72e5
	nop			;72e6
	add hl,de		;72e7
	rla			;72e8
	rrca			;72e9
	inc l			;72ea
	dec b			;72eb
	nop			;72ec
	nop			;72ed
	dec h			;72ee
	add hl,bc		;72ef
	jr z,l72f7h		;72f0
	dec b			;72f2
	ld d,06ch		;72f3
	rlca			;72f5
	nop			;72f6
l72f7h:
	nop			;72f7
	nop			;72f8
	nop			;72f9
	nop			;72fa
	nop			;72fb
	nop			;72fc
	nop			;72fd
	nop			;72fe
	add hl,de		;72ff
	dec c			;7300
	rrca			;7301
	ld l,h			;7302
	ld bc,00000h		;7303
	ld l,h			;7306
	ld bc,00527h		;7307
	ld bc,l6c16h		;730a
	rlca			;730d
	nop			;730e
	nop			;730f
	nop			;7310
	nop			;7311
	nop			;7312
	nop			;7313
	nop			;7314
	nop			;7315
	nop			;7316
	add hl,de		;7317
	dec c			;7318
	rrca			;7319
	nop			;731a
	nop			;731b
	nop			;731c
	nop			;731d
	ld l,h			;731e
	ld bc,00525h		;731f
	add hl,bc		;7322
	rla			;7323
	ld l,h			;7324
	rlca			;7325
	nop			;7326
	nop			;7327
	nop			;7328
	nop			;7329
	nop			;732a
	nop			;732b
	nop			;732c
	nop			;732d
	add hl,bc		;732e
	rla			;732f
	nop			;7330
	nop			;7331
	ld l,h			;7332
	ld bc,00938h		;7333
	ld l,h			;7336
	ld bc,0016ch		;7337
	dec b			;733a
	ld d,000h		;733b
	nop			;733d
	nop			;733e
	nop			;733f
	nop			;7340
	nop			;7341
	nop			;7342
	nop			;7343
	nop			;7344
	nop			;7345
	nop			;7346
	add hl,de		;7347
	ld (de),a		;7348
	rrca			;7349
	nop			;734a
	nop			;734b
	ld (hl),009h		;734c
	ld l,h			;734e
	ld bc,0016ch		;734f
	dec b			;7352
	ld d,06ch		;7353
	rlca			;7355
	nop			;7356
	nop			;7357
	nop			;7358
	nop			;7359
	nop			;735a
	nop			;735b
	nop			;735c
	nop			;735d
	nop			;735e
	add hl,de		;735f
	dec c			;7360
	rrca			;7361
	ld l,h			;7362
	ld bc,00938h		;7363
	ld l,h			;7366
	ld bc,00438h		;7367
	ld (bc),a		;736a
	ld d,06ch		;736b
	rlca			;736d
	nop			;736e
	nop			;736f
	nop			;7370
	nop			;7371
	nop			;7372
	nop			;7373
	nop			;7374
	nop			;7375
	nop			;7376
	add hl,de		;7377
	nop			;7378
	nop			;7379
	nop			;737a
	nop			;737b
	inc (hl)		;737c
	add hl,bc		;737d
	ld l,h			;737e
	ld bc,00436h		;737f
	add hl,bc		;7382
	rla			;7383
	nop			;7384
	nop			;7385
	nop			;7386
	nop			;7387
	nop			;7388
	nop			;7389
	nop			;738a
	nop			;738b
	nop			;738c
	nop			;738d
	add hl,bc		;738e
	rla			;738f
	ld (de),a		;7390
	rrca			;7391
	ld l,h			;7392
	ld bc,00938h		;7393
	ld l,h			;7396
	ld bc,00438h		;7397
	dec b			;739a
	ld d,06ch		;739b
	rlca			;739d
	nop			;739e
	nop			;739f
	nop			;73a0
	nop			;73a1
	nop			;73a2
	nop			;73a3
	nop			;73a4
	nop			;73a5
	nop			;73a6
	add hl,de		;73a7
	inc d			;73a8
	rrca			;73a9
	nop			;73aa
	nop			;73ab
	ld sp,l6c09h		;73ac
	ld bc,00434h		;73af
	dec b			;73b2
	ld d,06ch		;73b3
	rlca			;73b5
	nop			;73b6
	nop			;73b7
	nop			;73b8
	nop			;73b9
	nop			;73ba
	nop			;73bb
	nop			;73bc
	nop			;73bd
	nop			;73be
	add hl,de		;73bf
	dec c			;73c0
	rrca			;73c1
	ld h,c			;73c2
	nop			;73c3
	ld l,h			;73c4
	ld bc,00000h		;73c5
	jr c,l73ceh		;73c8
	ld bc,l6c16h		;73ca
	rlca			;73cd
l73ceh:
	nop			;73ce
	nop			;73cf
	nop			;73d0
	nop			;73d1
	nop			;73d2
	nop			;73d3
	nop			;73d4
	nop			;73d5
	nop			;73d6
	add hl,de		;73d7
	dec c			;73d8
	rrca			;73d9
	nop			;73da
	nop			;73db
	ld l,h			;73dc
	ld bc,00000h		;73dd
	ld sp,00904h		;73e0
	ld d,06ch		;73e3
	rlca			;73e5
	nop			;73e6
	nop			;73e7
	nop			;73e8
	nop			;73e9
	nop			;73ea
	nop			;73eb
	nop			;73ec
	nop			;73ed
	nop			;73ee
	add hl,de		;73ef
	inc d			;73f0
	rrca			;73f1
	inc l			;73f2
	dec b			;73f3
	ld l,h			;73f4
	ld bc,00934h		;73f5
	nop			;73f8
	nop			;73f9
	dec b			;73fa
	ld d,06ch		;73fb
	rlca			;73fd
	nop			;73fe
	nop			;73ff
	nop			;7400
	nop			;7401
	nop			;7402
	nop			;7403
	nop			;7404
	nop			;7405
	nop			;7406
	add hl,de		;7407
	dec d			;7408
	rrca			;7409
	ld hl,(l6c05h)		;740a
	ld bc,00933h		;740d
	nop			;7410
	nop			;7411
	dec b			;7412
	ld d,06ch		;7413
	rlca			;7415
	nop			;7416
	nop			;7417
	nop			;7418
	nop			;7419
	nop			;741a
	nop			;741b
	nop			;741c
	nop			;741d
	nop			;741e
	add hl,de		;741f
	dec c			;7420
	rrca			;7421
	inc l			;7422
	dec b			;7423
	ld l,h			;7424
	ld bc,00934h		;7425
	inc (hl)		;7428
	dec b			;7429
	ld (bc),a		;742a
	ld d,06ch		;742b
	rlca			;742d
	nop			;742e
	nop			;742f
	nop			;7430
	nop			;7431
	nop			;7432
	nop			;7433
	nop			;7434
	nop			;7435
	nop			;7436
	add hl,de		;7437
	dec c			;7438
	rrca			;7439
	ld hl,(l6c05h)		;743a
	ld bc,00933h		;743d
	inc sp			;7440
	dec b			;7441
	add hl,bc		;7442
	ld d,06ch		;7443
	rlca			;7445
	nop			;7446
	nop			;7447
	nop			;7448
	nop			;7449
	nop			;744a
	nop			;744b
	nop			;744c
	nop			;744d
	nop			;744e
	add hl,de		;744f
	rla			;7450
	rrca			;7451
	cpl			;7452
	dec b			;7453
	ld l,h			;7454
	ld bc,00938h		;7455
	inc (hl)		;7458
	dec b			;7459
	ld bc,l6c16h		;745a
	rlca			;745d
	ld h,a			;745e
	ld (bc),a		;745f
	nop			;7460
	nop			;7461
	nop			;7462
	nop			;7463
	nop			;7464
	nop			;7465
	nop			;7466
	add hl,de		;7467
	add hl,de		;7468
	rrca			;7469
	nop			;746a
	nop			;746b
	ld l,h			;746c
	ld bc,00931h		;746d
	inc sp			;7470
	dec b			;7471
	dec b			;7472
	ld d,06ch		;7473
	rlca			;7475
	nop			;7476
	nop			;7477
	nop			;7478
	nop			;7479
	nop			;747a
	nop			;747b
	nop			;747c
	nop			;747d
	nop			;747e
	add hl,de		;747f
	dec c			;7480
	rrca			;7481
	jr c,l7489h		;7482
	nop			;7484
	nop			;7485
	ld sp,l6c09h		;7486
l7489h:
	ld (bc),a		;7489
	ld bc,l6c16h		;748a
	rlca			;748d
	nop			;748e
	nop			;748f
	nop			;7490
	nop			;7491
	nop			;7492
	nop			;7493
	ld l,h			;7494
	ld (bc),a		;7495
	nop			;7496
	add hl,de		;7497
	dec c			;7498
	rrca			;7499
	nop			;749a
	nop			;749b
	nop			;749c
	nop			;749d
	nop			;749e
	nop			;749f
	ld h,c			;74a0
	nop			;74a1
	inc bc			;74a2
	ld d,06ch		;74a3
	rlca			;74a5
	nop			;74a6
	nop			;74a7
	nop			;74a8
	nop			;74a9
	nop			;74aa
	nop			;74ab
	dec h			;74ac
	dec b			;74ad
	nop			;74ae
	add hl,de		;74af
	nop			;74b0
	nop			;74b1
	nop			;74b2
	nop			;74b3
	nop			;74b4
	nop			;74b5
	nop			;74b6
	nop			;74b7
	ld sp,00505h		;74b8
	ld d,000h		;74bb
	nop			;74bd
	nop			;74be
	nop			;74bf
	nop			;74c0
	nop			;74c1
	nop			;74c2
	nop			;74c3
	nop			;74c4
	nop			;74c5
	nop			;74c6
	add hl,de		;74c7
	ld (de),a		;74c8
	rrca			;74c9
	nop			;74ca
	nop			;74cb
	nop			;74cc
	nop			;74cd
	nop			;74ce
	nop			;74cf
	nop			;74d0
	nop			;74d1
	dec b			;74d2
	ld d,06ch		;74d3
	rlca			;74d5
	ld (hl),005h		;74d6
	nop			;74d8
	nop			;74d9
	inc sp			;74da
	add hl,bc		;74db
	nop			;74dc
	nop			;74dd
	nop			;74de
	add hl,de		;74df
	dec c			;74e0
	rrca			;74e1
	jr c,l74e9h		;74e2
	nop			;74e4
	nop			;74e5
	inc (hl)		;74e6
	add hl,bc		;74e7
	nop			;74e8
l74e9h:
	nop			;74e9
	ld (bc),a		;74ea
	ld d,06ch		;74eb
	rlca			;74ed
	nop			;74ee
	nop			;74ef
	nop			;74f0
	nop			;74f1
	nop			;74f2
	nop			;74f3
	nop			;74f4
	nop			;74f5
	nop			;74f6
	add hl,de		;74f7
	nop			;74f8
	nop			;74f9
	nop			;74fa
	nop			;74fb
	nop			;74fc
	nop			;74fd
	nop			;74fe
	nop			;74ff
	nop			;7500
	nop			;7501
	add hl,bc		;7502
	ld d,000h		;7503
	nop			;7505
	nop			;7506
	nop			;7507
	nop			;7508
	nop			;7509
	nop			;750a
	nop			;750b
	inc sp			;750c
	dec b			;750d
	nop			;750e
	add hl,de		;750f
	ld (de),a		;7510
	rrca			;7511
	nop			;7512
	nop			;7513
	nop			;7514
	nop			;7515
	nop			;7516
	nop			;7517
	inc (hl)		;7518
	dec b			;7519
	dec b			;751a
	ld d,06ch		;751b
	rlca			;751d
	ld sp,00005h		;751e
	nop			;7521
	ld hl,(00009h)		;7522
	nop			;7525
	nop			;7526
	add hl,de		;7527
	inc d			;7528
	rrca			;7529
	inc sp			;752a
	dec b			;752b
	nop			;752c
	nop			;752d
	inc l			;752e
	add hl,bc		;752f
	nop			;7530
	nop			;7531
	dec b			;7532
	ld d,06ch		;7533
	rlca			;7535
	nop			;7536
	nop			;7537
	nop			;7538
	nop			;7539
	nop			;753a
	nop			;753b
	nop			;753c
	nop			;753d
	nop			;753e
	add hl,de		;753f
	dec c			;7540
	rrca			;7541
	nop			;7542
	nop			;7543
	nop			;7544
	nop			;7545
	nop			;7546
	nop			;7547
	nop			;7548
	nop			;7549
	ld bc,l6c16h		;754a
	rlca			;754d
	nop			;754e
	nop			;754f
	nop			;7550
	nop			;7551
	nop			;7552
	nop			;7553
	ld hl,(00005h)		;7554
	add hl,de		;7557
	dec c			;7558
	rrca			;7559
	nop			;755a
	nop			;755b
	nop			;755c
	nop			;755d
	nop			;755e
	nop			;755f
	inc l			;7560
	dec b			;7561
	inc bc			;7562
	ld d,06ch		;7563
	rlca			;7565
	nop			;7566
	nop			;7567
	nop			;7568
	nop			;7569
	nop			;756a
	nop			;756b
	nop			;756c
	nop			;756d
	nop			;756e
	add hl,de		;756f
	inc d			;7570
	rrca			;7571
	nop			;7572
	nop			;7573
	nop			;7574
	nop			;7575
	nop			;7576
	nop			;7577
	nop			;7578
	nop			;7579
	dec b			;757a
	ld d,06ch		;757b
	rlca			;757d
	nop			;757e
	nop			;757f
	nop			;7580
	nop			;7581
	nop			;7582
	nop			;7583
	nop			;7584
	nop			;7585
	nop			;7586
	add hl,de		;7587
	dec d			;7588
	rrca			;7589
	nop			;758a
	nop			;758b
	nop			;758c
	nop			;758d
	nop			;758e
	nop			;758f
	nop			;7590
	nop			;7591
	dec b			;7592
	ld d,06ch		;7593
	rlca			;7595
	cpl			;7596
	dec b			;7597
	nop			;7598
	nop			;7599
	jr z,l75a5h		;759a
	nop			;759c
	nop			;759d
	nop			;759e
	add hl,de		;759f
	dec c			;75a0
	rrca			;75a1
	dec h			;75a2
	dec b			;75a3
	nop			;75a4
l75a5h:
	nop			;75a5
	ld hl,(00009h)		;75a6
	nop			;75a9
	ld (bc),a		;75aa
	ld d,06ch		;75ab
	rlca			;75ad
	nop			;75ae
	nop			;75af
	nop			;75b0
	nop			;75b1
	nop			;75b2
	nop			;75b3
	nop			;75b4
	nop			;75b5
	nop			;75b6
	add hl,de		;75b7
	nop			;75b8
	nop			;75b9
	cpl			;75ba
	dec b			;75bb
	nop			;75bc
	nop			;75bd
	jr z,l75c9h		;75be
	nop			;75c0
	nop			;75c1
	add hl,bc		;75c2
	ld d,000h		;75c3
	nop			;75c5
	nop			;75c6
	nop			;75c7
	nop			;75c8
l75c9h:
	nop			;75c9
	nop			;75ca
	nop			;75cb
	jr z,l75d3h		;75cc
	nop			;75ce
	add hl,de		;75cf
	dec d			;75d0
	rrca			;75d1
	dec l			;75d2
l75d3h:
	dec b			;75d3
	nop			;75d4
	nop			;75d5
	daa			;75d6
	add hl,bc		;75d7
	ld hl,(00105h)		;75d8
	ld d,06ch		;75db
	rlca			;75dd
	nop			;75de
	nop			;75df
	nop			;75e0
	nop			;75e1
	nop			;75e2
	nop			;75e3
	nop			;75e4
	nop			;75e5
	nop			;75e6
	add hl,de		;75e7
	rla			;75e8
	rrca			;75e9
	inc l			;75ea
	dec b			;75eb
	nop			;75ec
	nop			;75ed
	dec h			;75ee
	add hl,bc		;75ef
	jr z,l75f7h		;75f0
	dec b			;75f2
	ld d,06ch		;75f3
	rlca			;75f5
	nop			;75f6
l75f7h:
	nop			;75f7
	nop			;75f8
	nop			;75f9
	nop			;75fa
	nop			;75fb
	nop			;75fc
	nop			;75fd
	nop			;75fe
	add hl,de		;75ff
	dec c			;7600
	rrca			;7601
	ld l,h			;7602
	ld bc,00000h		;7603
	ld l,h			;7606
	ld bc,00527h		;7607
	ld bc,l6c16h		;760a
	rlca			;760d
	nop			;760e
	nop			;760f
	nop			;7610
	nop			;7611
	nop			;7612
	nop			;7613
	nop			;7614
	nop			;7615
	nop			;7616
	add hl,de		;7617
	dec c			;7618
	rrca			;7619
	nop			;761a
	nop			;761b
	nop			;761c
	nop			;761d
	ld l,h			;761e
	ld bc,00525h		;761f
	dec b			;7622
	rla			;7623
	ld l,h			;7624
	rlca			;7625
	nop			;7626
	nop			;7627
	nop			;7628
	nop			;7629
	nop			;762a
	nop			;762b
	nop			;762c
	nop			;762d
	dec b			;762e
	rla			;762f
	nop			;7630
	nop			;7631
	ld l,h			;7632
	ld bc,00938h		;7633
	ld l,h			;7636
	ld bc,0016ch		;7637
	dec b			;763a
	ld d,000h		;763b
	nop			;763d
	nop			;763e
	nop			;763f
	nop			;7640
	nop			;7641
	nop			;7642
	nop			;7643
	nop			;7644
	nop			;7645
	nop			;7646
	add hl,de		;7647
	ld (de),a		;7648
	rrca			;7649
	nop			;764a
	nop			;764b
	ld (hl),009h		;764c
	ld l,h			;764e
	ld bc,0016ch		;764f
	dec b			;7652
	ld d,06ch		;7653
	rlca			;7655
	nop			;7656
	nop			;7657
	nop			;7658
	nop			;7659
	nop			;765a
	nop			;765b
	nop			;765c
	nop			;765d
	nop			;765e
	add hl,de		;765f
	dec c			;7660
	rrca			;7661
	ld l,h			;7662
	ld bc,00938h		;7663
	ld l,h			;7666
	ld bc,00438h		;7667
	ld (bc),a		;766a
	ld d,06ch		;766b
	rlca			;766d
	nop			;766e
	nop			;766f
	nop			;7670
	nop			;7671
	nop			;7672
	nop			;7673
	nop			;7674
	nop			;7675
	nop			;7676
	add hl,de		;7677
	nop			;7678
	nop			;7679
	nop			;767a
	nop			;767b
	inc (hl)		;767c
	add hl,bc		;767d
	ld l,h			;767e
	ld bc,00436h		;767f
	inc bc			;7682
	rla			;7683
	nop			;7684
	nop			;7685
	nop			;7686
	nop			;7687
	nop			;7688
	nop			;7689
	nop			;768a
	nop			;768b
	nop			;768c
	nop			;768d
	inc bc			;768e
	rla			;768f
	ld (de),a		;7690
	rrca			;7691
	ld l,h			;7692
	ld bc,00938h		;7693
	ld l,h			;7696
	ld bc,00438h		;7697
	dec b			;769a
	ld d,06ch		;769b
	rlca			;769d
	nop			;769e
	nop			;769f
	nop			;76a0
	nop			;76a1
	nop			;76a2
	nop			;76a3
	nop			;76a4
	nop			;76a5
	nop			;76a6
	add hl,de		;76a7
	inc d			;76a8
	rrca			;76a9
	nop			;76aa
	nop			;76ab
	ld sp,l6c09h		;76ac
	ld bc,00434h		;76af
	dec b			;76b2
	ld d,06ch		;76b3
	rlca			;76b5
	nop			;76b6
	nop			;76b7
	nop			;76b8
	nop			;76b9
	nop			;76ba
	nop			;76bb
	nop			;76bc
	nop			;76bd
	nop			;76be
	add hl,de		;76bf
	dec c			;76c0
	rrca			;76c1
	ld h,c			;76c2
	nop			;76c3
	ld l,h			;76c4
	ld bc,00000h		;76c5
	jr c,l76ceh		;76c8
	ld bc,l6c16h		;76ca
	rlca			;76cd
l76ceh:
	nop			;76ce
	nop			;76cf
	nop			;76d0
	nop			;76d1
	nop			;76d2
	nop			;76d3
	nop			;76d4
	nop			;76d5
	nop			;76d6
	add hl,de		;76d7
	dec c			;76d8
	rrca			;76d9
	nop			;76da
	nop			;76db
	ld l,h			;76dc
	ld bc,00000h		;76dd
	ld sp,00904h		;76e0
	ld d,06ch		;76e3
	rlca			;76e5
	nop			;76e6
	nop			;76e7
	nop			;76e8
	nop			;76e9
	nop			;76ea
	nop			;76eb
	nop			;76ec
	nop			;76ed
	nop			;76ee
	add hl,de		;76ef
	nop			;76f0
	nop			;76f1
	inc l			;76f2
	dec b			;76f3
	ld l,h			;76f4
	ld bc,00934h		;76f5
	nop			;76f8
	nop			;76f9
	dec b			;76fa
	ld d,000h		;76fb
	nop			;76fd
	nop			;76fe
	nop			;76ff
	nop			;7700
	nop			;7701
	nop			;7702
	nop			;7703
	nop			;7704
	nop			;7705
	nop			;7706
	add hl,de		;7707
	dec d			;7708
	rrca			;7709
	ld hl,(l6c05h)		;770a
	ld bc,00933h		;770d
	nop			;7710
	nop			;7711
	dec b			;7712
	ld d,06ch		;7713
	rlca			;7715
	nop			;7716
	nop			;7717
	nop			;7718
	nop			;7719
	nop			;771a
	nop			;771b
	nop			;771c
	nop			;771d
	nop			;771e
	add hl,de		;771f
	dec c			;7720
	rrca			;7721
	inc l			;7722
	dec b			;7723
	ld l,h			;7724
	ld bc,00934h		;7725
	inc (hl)		;7728
	dec b			;7729
	ld (bc),a		;772a
	ld d,06ch		;772b
	rlca			;772d
	nop			;772e
	nop			;772f
	nop			;7730
	nop			;7731
	nop			;7732
	nop			;7733
	nop			;7734
	nop			;7735
	nop			;7736
	add hl,de		;7737
	nop			;7738
	nop			;7739
	ld hl,(l6c05h)		;773a
	ld bc,00933h		;773d
	inc sp			;7740
	dec b			;7741
	add hl,bc		;7742
	ld d,000h		;7743
	nop			;7745
	nop			;7746
	nop			;7747
	nop			;7748
	nop			;7749
	nop			;774a
	nop			;774b
	nop			;774c
	nop			;774d
	nop			;774e
	add hl,de		;774f
	rla			;7750
	rrca			;7751
	cpl			;7752
	dec b			;7753
	ld l,h			;7754
	ld bc,00938h		;7755
	inc (hl)		;7758
	dec b			;7759
	ld bc,l6c16h		;775a
	rlca			;775d
	ld h,a			;775e
	ld (bc),a		;775f
	nop			;7760
	nop			;7761
	nop			;7762
	nop			;7763
	nop			;7764
	nop			;7765
	nop			;7766
	add hl,de		;7767
	add hl,de		;7768
	rrca			;7769
	nop			;776a
	nop			;776b
	ld l,h			;776c
	ld bc,00931h		;776d
	inc sp			;7770
	dec b			;7771
	dec b			;7772
	ld d,06ch		;7773
	rlca			;7775
	nop			;7776
	nop			;7777
	nop			;7778
	nop			;7779
	nop			;777a
	nop			;777b
	nop			;777c
	nop			;777d
	nop			;777e
	add hl,de		;777f
	dec c			;7780
	rrca			;7781
	jr c,$+7		;7782
	nop			;7784
	nop			;7785
	nop			;7786
	nop			;7787
	jr c,l778fh		;7788
	ld bc,l6c16h		;778a
	rlca			;778d
	nop			;778e
l778fh:
	nop			;778f
	nop			;7790
	nop			;7791
	nop			;7792
	nop			;7793
	nop			;7794
	nop			;7795
	nop			;7796
	add hl,de		;7797
	dec c			;7798
	rrca			;7799
	nop			;779a
	nop			;779b
	nop			;779c
	nop			;779d
	nop			;779e
	nop			;779f
	ld sp,00305h		;77a0
	ld d,06ch		;77a3
	rlca			;77a5
	nop			;77a6
	nop			;77a7
	nop			;77a8
	nop			;77a9
	nop			;77aa
	nop			;77ab
	nop			;77ac
	nop			;77ad
	nop			;77ae
	add hl,de		;77af
	nop			;77b0
	nop			;77b1
	nop			;77b2
	nop			;77b3
	nop			;77b4
	nop			;77b5
	nop			;77b6
	nop			;77b7
	nop			;77b8
	nop			;77b9
	dec b			;77ba
	ld d,000h		;77bb
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
	add hl,de		;77c7
	ld (de),a		;77c8
	rrca			;77c9
	nop			;77ca
	nop			;77cb
	nop			;77cc
	nop			;77cd
	nop			;77ce
	nop			;77cf
	nop			;77d0
	nop			;77d1
	dec b			;77d2
	ld d,06ch		;77d3
	rlca			;77d5
	ld (hl),005h		;77d6
	nop			;77d8
	nop			;77d9
	inc sp			;77da
	add hl,bc		;77db
	nop			;77dc
	nop			;77dd
	nop			;77de
	add hl,de		;77df
	dec c			;77e0
	rrca			;77e1
	jr c,l77e9h		;77e2
sub_77e4h:
	nop			;77e4
	nop			;77e5
	inc (hl)		;77e6
	add hl,bc		;77e7
	nop			;77e8
l77e9h:
	nop			;77e9
	ld (bc),a		;77ea
	ld d,06ch		;77eb
	rlca			;77ed
	nop			;77ee
	nop			;77ef
	nop			;77f0
	nop			;77f1
	nop			;77f2
	nop			;77f3
	nop			;77f4
	nop			;77f5
	nop			;77f6
	add hl,de		;77f7
	nop			;77f8
	nop			;77f9
	nop			;77fa
	nop			;77fb
	nop			;77fc
	nop			;77fd
	nop			;77fe
	nop			;77ff
	nop			;7800
	nop			;7801
	add hl,bc		;7802
	ld d,000h		;7803
	nop			;7805
	nop			;7806
	nop			;7807
	nop			;7808
	nop			;7809
	nop			;780a
	nop			;780b
	inc sp			;780c
	dec b			;780d
	nop			;780e
	add hl,de		;780f
	ld (de),a		;7810
	rrca			;7811
	nop			;7812
	nop			;7813
	nop			;7814
	nop			;7815
	nop			;7816
	nop			;7817
	inc (hl)		;7818
	dec b			;7819
	dec b			;781a
	ld d,06ch		;781b
	rlca			;781d
	ld sp,00005h		;781e
	nop			;7821
	ld hl,(00009h)		;7822
	nop			;7825
	nop			;7826
	add hl,de		;7827
	inc d			;7828
	rrca			;7829
	inc sp			;782a
	dec b			;782b
	nop			;782c
	nop			;782d
	inc l			;782e
	add hl,bc		;782f
	nop			;7830
	nop			;7831
	dec b			;7832
	ld d,06ch		;7833
	rlca			;7835
	nop			;7836
	nop			;7837
	nop			;7838
	nop			;7839
	nop			;783a
	nop			;783b
	nop			;783c
	nop			;783d
	nop			;783e
	add hl,de		;783f
	dec c			;7840
	rrca			;7841
	ld l,h			;7842
	ld bc,00000h		;7843
	nop			;7846
	nop			;7847
	nop			;7848
	nop			;7849
	ld bc,l6c16h		;784a
	rlca			;784d
	nop			;784e
	nop			;784f
	nop			;7850
	nop			;7851
	nop			;7852
	nop			;7853
	ld hl,(00005h)		;7854
	add hl,de		;7857
	dec c			;7858
	rrca			;7859
	ld l,h			;785a
	ld bc,00000h		;785b
	nop			;785e
	nop			;785f
	inc l			;7860
	dec b			;7861
	inc bc			;7862
	ld d,06ch		;7863
	rlca			;7865
	nop			;7866
	nop			;7867
	nop			;7868
	nop			;7869
	nop			;786a
	nop			;786b
	nop			;786c
	nop			;786d
	nop			;786e
	add hl,de		;786f
	inc d			;7870
	rrca			;7871
	ld l,h			;7872
	ld bc,00000h		;7873
	nop			;7876
	nop			;7877
	nop			;7878
	nop			;7879
	dec b			;787a
	ld d,06ch		;787b
	rlca			;787d
	nop			;787e
	nop			;787f
	nop			;7880
	nop			;7881
	nop			;7882
	nop			;7883
	nop			;7884
	nop			;7885
	nop			;7886
	add hl,de		;7887
	dec d			;7888
	rrca			;7889
	ld l,h			;788a
	ld bc,00000h		;788b
	nop			;788e
	nop			;788f
	nop			;7890
	nop			;7891
	dec b			;7892
	ld d,06ch		;7893
	rlca			;7895
	cpl			;7896
	dec b			;7897
	nop			;7898
	nop			;7899
	jr z,l78a5h		;789a
	nop			;789c
	nop			;789d
	nop			;789e
	add hl,de		;789f
	dec c			;78a0
	rrca			;78a1
	dec h			;78a2
	dec b			;78a3
	nop			;78a4
l78a5h:
	nop			;78a5
	ld hl,(00009h)		;78a6
	nop			;78a9
	ld (bc),a		;78aa
	ld d,06ch		;78ab
	rlca			;78ad
	nop			;78ae
	nop			;78af
	nop			;78b0
	nop			;78b1
	nop			;78b2
	nop			;78b3
	nop			;78b4
	nop			;78b5
	nop			;78b6
	add hl,de		;78b7
	dec c			;78b8
	rrca			;78b9
	cpl			;78ba
	dec b			;78bb
	nop			;78bc
	nop			;78bd
	jr z,l78c9h		;78be
	nop			;78c0
	nop			;78c1
	add hl,bc		;78c2
	ld d,06ch		;78c3
	rlca			;78c5
	nop			;78c6
	nop			;78c7
	nop			;78c8
l78c9h:
	nop			;78c9
	nop			;78ca
	nop			;78cb
	jr z,l78d3h		;78cc
	nop			;78ce
	add hl,de		;78cf
	dec d			;78d0
	rrca			;78d1
	dec l			;78d2
l78d3h:
	dec b			;78d3
	nop			;78d4
	nop			;78d5
	daa			;78d6
	add hl,bc		;78d7
	ld hl,(00105h)		;78d8
	ld d,06ch		;78db
	rlca			;78dd
	nop			;78de
	nop			;78df
	nop			;78e0
	nop			;78e1
	nop			;78e2
	nop			;78e3
	nop			;78e4
	nop			;78e5
	nop			;78e6
	add hl,de		;78e7
	rla			;78e8
	rrca			;78e9
	inc l			;78ea
	dec b			;78eb
	nop			;78ec
	nop			;78ed
	dec h			;78ee
	add hl,bc		;78ef
	jr z,l78f7h		;78f0
	dec b			;78f2
	ld d,06ch		;78f3
	rlca			;78f5
	nop			;78f6
l78f7h:
	nop			;78f7
	nop			;78f8
	nop			;78f9
	nop			;78fa
	nop			;78fb
	nop			;78fc
	nop			;78fd
	nop			;78fe
	add hl,de		;78ff
	dec c			;7900
	rrca			;7901
	ld l,h			;7902
	ld bc,00000h		;7903
	nop			;7906
l7907h:
	nop			;7907
	daa			;7908
	dec b			;7909
	ld (bc),a		;790a
	ld d,06ch		;790b
	rlca			;790d
	nop			;790e
	nop			;790f
	nop			;7910
	nop			;7911
	nop			;7912
	nop			;7913
	nop			;7914
	nop			;7915
	nop			;7916
	add hl,de		;7917
	dec c			;7918
	rrca			;7919
	nop			;791a
	nop			;791b
	nop			;791c
	nop			;791d
	nop			;791e
	nop			;791f
	dec h			;7920
	dec b			;7921
	nop			;7922
	ld d,06ch		;7923
	rlca			;7925
	nop			;7926
	nop			;7927
	nop			;7928
	nop			;7929
	nop			;792a
	nop			;792b
	nop			;792c
	nop			;792d
	nop			;792e
	add hl,de		;792f
	djnz l7941h		;7930
	ld l,h			;7932
	ld bc,00938h		;7933
	ld l,h			;7936
	ld bc,00000h		;7937
	ld (bc),a		;793a
	ld d,06ch		;793b
	rlca			;793d
	nop			;793e
	nop			;793f
	nop			;7940
l7941h:
	nop			;7941
	nop			;7942
	nop			;7943
	nop			;7944
	nop			;7945
	nop			;7946
	add hl,de		;7947
	ld (de),a		;7948
	rrca			;7949
	nop			;794a
	nop			;794b
	ld (hl),009h		;794c
	nop			;794e
	nop			;794f
	nop			;7950
	nop			;7951
	dec b			;7952
	ld d,06ch		;7953
	rlca			;7955
	nop			;7956
	nop			;7957
	nop			;7958
	nop			;7959
	nop			;795a
	nop			;795b
	nop			;795c
	nop			;795d
	nop			;795e
	add hl,de		;795f
	dec c			;7960
	rrca			;7961
	ld l,h			;7962
	ld bc,00938h		;7963
	ld l,h			;7966
	ld bc,0016ch		;7967
	dec b			;796a
	rla			;796b
	ld l,h			;796c
	rlca			;796d
	nop			;796e
	nop			;796f
	nop			;7970
	nop			;7971
	nop			;7972
	nop			;7973
	nop			;7974
	nop			;7975
	dec b			;7976
	rla			;7977
	dec c			;7978
	rrca			;7979
	nop			;797a
	nop			;797b
	inc (hl)		;797c
	add hl,bc		;797d
	nop			;797e
	nop			;797f
	nop			;7980
	nop			;7981
	ld (bc),a		;7982
	ld d,06ch		;7983
	rlca			;7985
	nop			;7986
	nop			;7987
	nop			;7988
	nop			;7989
	nop			;798a
	nop			;798b
	nop			;798c
	nop			;798d
	nop			;798e
	add hl,de		;798f
	ld (de),a		;7990
	rrca			;7991
	ld l,h			;7992
	ld bc,00938h		;7993
	ld l,h			;7996
	ld bc,0016ch		;7997
	ld (bc),a		;799a
	ld d,06ch		;799b
	rlca			;799d
	nop			;799e
	nop			;799f
	nop			;79a0
	nop			;79a1
	nop			;79a2
	nop			;79a3
	nop			;79a4
	nop			;79a5
	nop			;79a6
	add hl,de		;79a7
	inc d			;79a8
	rrca			;79a9
	nop			;79aa
	nop			;79ab
	ld sp,00009h		;79ac
	nop			;79af
	nop			;79b0
	nop			;79b1
	inc bc			;79b2
	ld d,06ch		;79b3
	rlca			;79b5
	nop			;79b6
	nop			;79b7
	nop			;79b8
	nop			;79b9
	nop			;79ba
	nop			;79bb
	nop			;79bc
	nop			;79bd
	nop			;79be
	add hl,de		;79bf
	dec c			;79c0
	rrca			;79c1
	nop			;79c2
	nop			;79c3
	nop			;79c4
	nop			;79c5
	nop			;79c6
	nop			;79c7
	ld l,h			;79c8
	ld bc,01601h		;79c9
	ld l,h			;79cc
	rlca			;79cd
	nop			;79ce
	nop			;79cf
	nop			;79d0
	nop			;79d1
	nop			;79d2
	nop			;79d3
	nop			;79d4
	nop			;79d5
	nop			;79d6
	add hl,de		;79d7
	dec c			;79d8
	rrca			;79d9
	nop			;79da
	nop			;79db
	ld h,a			;79dc
	ld bc,00000h		;79dd
	nop			;79e0
	nop			;79e1
	inc bc			;79e2
	ld d,06ch		;79e3
	rlca			;79e5
	nop			;79e6
	nop			;79e7
	nop			;79e8
	nop			;79e9
	nop			;79ea
	nop			;79eb
	nop			;79ec
	nop			;79ed
	nop			;79ee
	add hl,de		;79ef
	inc d			;79f0
	rrca			;79f1
	nop			;79f2
	nop			;79f3
	nop			;79f4
	nop			;79f5
	nop			;79f6
	nop			;79f7
	nop			;79f8
	nop			;79f9
	dec b			;79fa
	ld d,06ch		;79fb
	rlca			;79fd
	nop			;79fe
	nop			;79ff
	nop			;7a00
	nop			;7a01
	nop			;7a02
	nop			;7a03
	nop			;7a04
	nop			;7a05
	nop			;7a06
	add hl,de		;7a07
	dec d			;7a08
	rrca			;7a09
	nop			;7a0a
	nop			;7a0b
	ld l,h			;7a0c
	ld bc,00000h		;7a0d
	nop			;7a10
	nop			;7a11
	ld (bc),a		;7a12
	ld d,06ch		;7a13
	rlca			;7a15
	nop			;7a16
	nop			;7a17
	nop			;7a18
	nop			;7a19
l7a1ah:
	nop			;7a1a
	nop			;7a1b
	nop			;7a1c
	nop			;7a1d
	nop			;7a1e
	add hl,de		;7a1f
	dec c			;7a20
	rrca			;7a21
	nop			;7a22
	nop			;7a23
	ld l,h			;7a24
	ld bc,00000h		;7a25
	nop			;7a28
	nop			;7a29
	dec b			;7a2a
	rla			;7a2b
	ld l,h			;7a2c
	rlca			;7a2d
	nop			;7a2e
	nop			;7a2f
	nop			;7a30
	nop			;7a31
	nop			;7a32
	nop			;7a33
	nop			;7a34
	nop			;7a35
	dec b			;7a36
	rla			;7a37
	nop			;7a38
	nop			;7a39
	nop			;7a3a
	nop			;7a3b
	ld l,h			;7a3c
	ld bc,00000h		;7a3d
	nop			;7a40
	nop			;7a41
	dec b			;7a42
l7a43h:
	ld d,000h		;7a43
	nop			;7a45
	nop			;7a46
	nop			;7a47
	nop			;7a48
	nop			;7a49
	nop			;7a4a
	nop			;7a4b
	nop			;7a4c
	nop			;7a4d
	nop			;7a4e
	add hl,de		;7a4f
	rla			;7a50
	rrca			;7a51
	nop			;7a52
	nop			;7a53
	dec bc			;7a54
	add hl,bc		;7a55
	ld h,c			;7a56
	nop			;7a57
	nop			;7a58
	nop			;7a59
	rlca			;7a5a
	ld d,06ch		;7a5b
	rlca			;7a5d
	nop			;7a5e
	nop			;7a5f
	ld h,c			;7a60
	nop			;7a61
	nop			;7a62
	nop			;7a63
	nop			;7a64
sub_7a65h:
	nop			;7a65
	nop			;7a66
	add hl,de		;7a67
	ld l,h			;7a68
	add hl,bc		;7a69
	ld l,c			;7a6a
	ld (bc),a		;7a6b
	nop			;7a6c
	nop			;7a6d
	nop			;7a6e
	nop			;7a6f
	nop			;7a70
	nop			;7a71
	nop			;7a72
	ld d,061h		;7a73
	nop			;7a75
	ld h,d			;7a76
	ld sp,00000h		;7a77
	ld h,d			;7a7a
	rla			;7a7b
	nop			;7a7c
	nop			;7a7d
	nop			;7a7e
	add hl,de		;7a7f
	add hl,de		;7a80
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
sub_7aadh:
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
l7f27h:
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
